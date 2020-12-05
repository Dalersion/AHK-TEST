#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
IfNotExist, %A_AppData%/Dalersion
{
	FileCreateDir, %A_AppData%/Dalersion/
}
ini_nimber := 0

loop, G:\фоточки\*.*
(	global ini_nimber
FileList = %FileList%%A_LoopFileName%`n
if A_LoopField =  ; Игнорировать пустую строку в конце списка.
	continue
IniWrite, %A_LoopFileFullPath%, %A_AppData%/Dalersion/porner.ini,List,%ini_nimber%
ini_nimber:= ini_nimber + 1
Loop, parse, FileList, `n
)
	MsgBox,,1,фсе,
