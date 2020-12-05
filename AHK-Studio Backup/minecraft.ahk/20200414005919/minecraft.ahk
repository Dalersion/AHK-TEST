#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include console.ahk
ini_path = %A_AppData%/Dalersion/minecraft.ini


IfWinNotExist, %A_AppData%/Dalersion/minecraft.ini
{
	FileCreateDir, %A_AppData%/Dalersion
	IniWrite, 0,%ini_path%,main,gamemode
}


^+0::
{
	logg(A_ThisHotkey)
	SendInput, /
	Sleep, 200
	SendInput, fly
	return
}

^+E::
{
	logg(A_ThisHotkey)
	ExitApp, 0
	return
}
^+9::
{
	
}