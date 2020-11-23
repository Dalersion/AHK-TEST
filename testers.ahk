#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



InputBox, var,title,prompt,,,,,,,,256


Loop, %var%
{
	Random,rand,0,9
	temp := temp . rand
}






F1::
{
	FileAppend, %temp%`n, %A_AppData%\Dalersion\keys.ini
}