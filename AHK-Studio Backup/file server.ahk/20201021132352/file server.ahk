#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
#Include AHKhttp.ahk
#Include AHKsock.ahk
#Include console.ahk

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

;Pause,On
Loop, parse, FileList, `n
{
	if A_LoopField =  ; Игнорировать пустую строку в конце списка.                   
		continue
		;FileList = %FileList%`n
	global ini_nimber
	IniWrite, %A_LoopField%, %A_AppData%/Dalersion/porner.ini,List,%ini_nimber%
	ini_nimber:= ini_nimber + 1
	IniWrite, %ini_nimber%, %A_AppData%/Dalersion/porner.ini, Number, 1
}

ini_nimber := ini_nimber - 1
IniWrite, %ini_nimber%, %A_AppData%/Dalersion/porner.ini, Number, 1

paths := {}
paths["/rand"] := Func("porn")
paths["/porne"] := Func("porne")
paths["/porner"] := Func("porner")
paths["/ini.ini"] := Func("UploadIni")

server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(8080)
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
	Random,numb,0,%ini_nimber%
	IniRead, Vname, %A_AppData%/Dalersion/porner.ini, list, %numb%  ;G:\фоточки\%Vname%
	Vname = G:\фоточки\%Vname%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


porne(ByRef request, ByRef response) 
{
	global ini_nimber
	global Vname
	global server
	global mime
	numb:= request.queries["numb"]  
	IniRead, Vname, %A_AppData%/Dalersion/porner.ini, list, %numb%
	Vname = G:\фоточки\%Vname%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
}


porner(ByRef request, ByRef response) 
{
	global ini_nimber
	global Vname
	global server
	global mime
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	Vname = G:\фоточки\%Vname1%
	responsetext = %Vname1%</pre><video src="porne?numb=%numb%" width="480" height="270" controls=""></video><pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname%
	response.SetBodytext(responsetext)
	;response.headers["Content-Type"]:= "text"
	response.status := 200
}



UploadIni(ByRef request, ByRef response) 
{
	global Vname
	global server
	global mime
	Vname = %A_AppData%/Dalersion/porner.ini
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
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