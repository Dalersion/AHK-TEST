#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, on

main(wParam, lParam, msg, hwnd)
{
	MsgBox,,,Нелли присоединилась к чату %wParam% %lParam% %msg% %hwnd%
	return
}



OnMessage(0x1002,"main")


F1::
SendMessage,0x1001,235,236,,Danya
SendMessage, 0x1001,235,236,, ahk_id 0xFFFF