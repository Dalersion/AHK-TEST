#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Random, logo, 0, 100
logo1:=logo
random,logo2,1,1235

Loop, 100
{
	logo:= logo+1
}


MsgBox, 0,%logo1% - %logo2%, %logo%, 0
ExitApp