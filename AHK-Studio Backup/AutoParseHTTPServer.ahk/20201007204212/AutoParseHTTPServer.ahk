﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
INI_Path = %A_ScriptDir% ;by Default %A_AppData%/Dalersion/Sites
INI_File :=INI_Path."/Sites.ini"
FileList = ; Очистить переменную.
Loop, %A_ScriptDir%/Sites/*.ahk
	FileList = %FileList%%A_LoopFileName%`n
Loop, parse, FileList, `n
{
    if A_LoopField = ; Игнорировать пустую строку в конце списка.
        continue
    Index := A_Index+1
	IniWrite,%A_LoopField%, %INI_File%, Sites, %Index%
	IniWrite, %Index%, %INI_File%, Sites, kolvo
} 

MsgBox,,,1,