﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
#Include AHKhttp.ahk
#Include AHKsock.ahk
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
return 




porn(ByRef request, ByRef response) 
{
	global ini_nimber
	global Vname
	global server
	global mime
	Random,rand,0,%ini_nimber%
	IniRead, Vname, %A_AppData%/Dalersion/porner.ini, list, %rand%  ;G:\фоточки\%Vname%
	Vname = G:\фоточки\%Vname%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
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
	IniRead, Vname, %A_AppData%/Dalersion/porner.ini, list, %numb%
	Vname = G:\фоточки\%Vname%
	response.SetBodyText(<video src="trailer_480p.mp4" width="480" height="270" poster="poster.gif" controls />)
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