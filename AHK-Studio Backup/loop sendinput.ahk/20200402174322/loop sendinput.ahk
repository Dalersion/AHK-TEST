#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F2::
loop, 10
{	
	SendInput, {Enter}Menu{,} podmenu{,} Add{,} {%} tray{_}name%A_Index%{%}{,} tray{_}Handler
}
ExitApp