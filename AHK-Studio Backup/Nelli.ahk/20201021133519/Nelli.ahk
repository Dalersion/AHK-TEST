﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, on

OnMessage(0x1002,"main")


main()
{
	MsgBox,,,Нелли присоединилась к чату
	return
}


F1::
SendMessage,0x1001,,,,Danya