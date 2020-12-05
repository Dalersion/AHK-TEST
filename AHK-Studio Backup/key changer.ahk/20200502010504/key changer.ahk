#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; GTA V type key 47FJN — 4NBUV — MCFUU — DVBJD — 5YDBD
IfNotExist, %A_AppData%/Dalersion/Clipboard.ini
{
	FileCreateDir, %A_AppData%/Dalersion/
	
	IniWrite, 0,Clipboard.ini,main,number
}

Numpad5::
{
	IniRead,inst_number, Clipboard.ini,main,number,0
	inst_number++
	IniWrite, %Clipboard%, Clipboard.ini,main,clipboard%inst_number%
	IniWrite, %inst_number%, Clipboard.ini,main,number
	Clipboard := "47FJN—4NBUV—MCFUU—DVBJD—5YDBD"
}

