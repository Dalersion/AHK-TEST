#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#SingleInstance,Force
#Include AHKhttp.ahk
#Include AHKSock.ahk
#Include Paths.txt
INI_Path = %A_ScriptDir% ;by Default %A_AppData%/Dalersion/Sites
INI_File := INI_Path . "\Sites.ini"
FileList = ; Очистить переменную.



Loop, %A_ScriptDir%/Sites/*.ahk
	FileList = %FileList%%A_LoopFileName%`n
Loop, parse, FileList, `n
{
	if A_LoopField = ; Игнорировать пустую строку в конце списка.
		continue
	IniWrite,%A_LoopField%, %INI_File%, Sites, %A_Index%
	IniWrite, %A_Index%, %INI_File%, Sites, kolvo
} 

FileDelete, Paths.txt
FileAppend, paths := {}`n, Paths.txt


IniRead, Site_Numb, %INI_File%, Sites, kolvo, 0

if(Site_Numb = 0){
	MsgBox,,ERROR!, 0 Site Pages Found,
}



loop, %Site_Numb%
{
	IniRead, name,%INI_File%, Sites,%A_index%,
	Text := "#Include %A_ScriptDir%\Sites\" . name
	FileAppend, %Text%, Paths.txt,
	FileAppend, `n, Paths.txt
}




loop, %Site_Numb%
{
	IniRead, name2,%INI_File%, Sites,%A_index%,
	loop,parse, name2, .
	{
		global Name
		if A_LoopField=ahk
			continue
		Name:= A_LoopField
	}
	Text = paths["/%name%"] := Func("%name%")`n
	FileAppend, %Text%, Paths.txt
}

ServerStart:

#Include Paths.txt
;#IncludeAgain Paths.txt
;paths := {}
;paths["/"] := Func("HelloWorld")




server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(80)
return