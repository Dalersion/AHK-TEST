#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



F3::
run, C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe /in ShortCuter.ahk /out ShortCuter.exe /icon ShortCuter.ico
return