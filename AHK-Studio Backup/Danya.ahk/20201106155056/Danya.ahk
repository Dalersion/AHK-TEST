#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, on



main(wParam, lParam, msg, hwnd)
{
	MsgBox,,,Даня присоединился к чату %wParam% %lParam% %msg% %hwnd%
	SendMessage, 0x1002235,236,235,, ahk_id 0xFFFF
	return
}

OnMessage(0x1001,"main")