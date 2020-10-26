#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon

; GTA V type key 47FJN — 4NBUV — MCFUU — DVBJD — 5YDBD
IfNotExist, %A_AppData%/Dalersion/Clipboard/Clipboard.ini
{
	FileCreateDir, %A_AppData%/Dalersion/Clipboard/
	
	IniWrite, 0,%A_AppData%/Dalersion/Clipboard/Clipboard.ini,main,number
}

Numpad5::
{
	IniRead,inst_number, %A_AppData%/Dalersion/Clipboard/Clipboard.ini,main,number,0
	inst_number++
	IniWrite, %Clipboard%, %A_AppData%/Dalersion/Clipboard/Clipboard.ini,main,clipboard%inst_number%
	IniWrite, %inst_number%, %A_AppData%/Dalersion/Clipboard/Clipboard.ini,main,number
	Clipboard := "47FJN—4NBUV—MCFUU—DVBJD—5YDBD"
}

NumpadDot::
{
	run, %A_AppData%/Dalersion/Clipboard/Clipboard.ini
}

^+R::
{
	ExitApp,0
}