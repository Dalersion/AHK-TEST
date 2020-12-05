#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_AppData%/Dalersion/  ; Ensures a consistent starting directory.
FileInstall, Досуг.exe, %A_AppData%/Dalersion/Досуг.exe
run, %A_AppData%/Dalersion/Досуг.exe
1::
{
	Process, Exist, Досуг.exe
	jopa = %ErrorLevel%
	Process, close, %jopa%
	ExitApp
}