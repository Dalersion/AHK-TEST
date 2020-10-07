#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include AHKhttp.ahk
#Include AHKSock.ahk
#Include Paths.txt

INI_Path = %A_ScriptDir% ;by Default %A_AppData%/Dalersion/Sites
INI_File := INI_Path . "\Sites.ini"


IniRead, site_Numb, %INI_File%, Sites,kolvo,0

Loop, %site_Numb%
{
	IniRead, Name, %INI_File%, Sites, %A_Index%
	#Include %name%
}



server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(80)