#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



OnMessage(0x1001,"main")


main()
{
	MsgBox,,,Даня присоеденилась к чату
	SendMessage, 0x1002,,,,Nelli
}