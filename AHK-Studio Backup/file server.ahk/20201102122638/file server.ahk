#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
#Include <AHKhttp>
#Include <AHKsock>
#Include <console>
#Include <AES crypt>

loggg(str)
{	
	global cons_Hidded
	logg(str)
	logg("\hide")
	cons_Hidded = 1
	return
}
IfNotExist, %A_AppData%/Dalersion
{
	FileCreateDir, %A_AppData%/Dalersion/
}
ini_nimber := 0

loop, G:\фоточки\*.mp4
	FileList = %FileList%%A_LoopFileName%`n
loop, G:\фоточки\*.3gp
	FileList = %FileList%%A_LoopFileName%`n
loop, G:\фоточки\*.wmv
	FileList = %FileList%%A_LoopFileName%`n
loop, G:\фоточки\*.avi
	FileList = %FileList%%A_LoopFileName%`n
IniRead, bit, %A_AppData%/Dalersion/porner.ini, Misc, bit
IniRead, aeskey, %A_AppData%/Dalersion/porner.ini, Misc, key
;Pause,On
Loop, parse, FileList, `n
{
	if A_LoopField =  ; Игнорировать пустую строку в конце списка.                   
		continue
		;FileList = %FileList%`n
	global ini_nimber
	global key
	global bit
	write:=AES.Encrypt(A_LoopField, aeskey, bit)
	IniWrite, %write%, %A_AppData%/Dalersion/porner.ini,List,%ini_nimber%
	ini_nimber:= ini_nimber + 1
	IniWrite, %ini_nimber%, %A_AppData%/Dalersion/porner.ini, Misc, 1
}

ini_nimber := ini_nimber - 1
IniWrite, %ini_nimber%, %A_AppData%/Dalersion/porner.ini, Misc, 1

paths := {}
paths["/rand"] := Func("porn")
paths["/porne"] := Func("porne")
paths["/porner"] := Func("porner")
paths["/pornere"] := Func("pornere")
paths["/ini.ini"] := Func("UploadIni")

server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(80)
loggg("Сервер Стартовал")
return 




porn(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global numb
	global aeskey
	global bit
	Random,numb,0,%ini_nimber%
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%  ;G:\фоточки\%Vname%
	Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	Vname = G:\фоточки\%Vname1%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


porne(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global aeskey
	global bit
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	Vname = G:\фоточки\%Vname1%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


porner(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global responsetext
	global aeskey
	global bit
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	Vname = G:\фоточки\%Vname1%
	responsetext = 
	(
	%Vname1%</pre>
	<video src="porne?numb=%numb%" width="480" height="270" controls=""></video>
	<pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname%
	)
	response.SetBodytext(responsetext)
	;response.headers["Content-Type"]:= "text"
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


pornere(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global aeskey
	global bit
	numb:= request.queries["numb"]
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	Vname = G:\фоточки\%Vname1%
	FileDelete, 1.html
	responsetext = 
	(
	<pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname1%</pre>
	<video src="porne?numb=%numb%" width="1280 " height="720" controls=""></video>
	<pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname%</pre>
	)
	FileAppend, %responsetext%, 1.html
	Vname = 1.html
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


UploadIni(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global Vname
	global server
	global mime
	Vname = %A_AppData%/Dalersion/porner.ini
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(Vname "    " mime)
}


sc29::
if(cons_Hidded = 1)
{
	global cons_Hidded
	logg("\show")
	cons_Hidded = 0
	return
}
else
{
	global cons_Hidded
	logg("\hide")
	cons_Hidded = 1
	return
}
return

OnExit, japan
japan:

return