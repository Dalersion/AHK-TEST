#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, on

main()
{
	MsgBox,,,Нелли присоединилась к чату
	return
}



OnMessage(0x1002,"main")


F1::
;SendMessage,0x1001,,,,Danya
SendMessage, 0x1001,,,, ahk_id 0xFFFF
jop := log(1000)