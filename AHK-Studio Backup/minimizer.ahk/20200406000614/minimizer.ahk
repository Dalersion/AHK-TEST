#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



^F11::
{
	WinMinimize, Кино и ТВ
	WinMinimize, Яндекс
	PostMessage, 0x112, 0xF020,,,Яндекс , ; 0x112 = WM_SYSCOMMAND, 0xF020 = SC_MINIMIZE
}