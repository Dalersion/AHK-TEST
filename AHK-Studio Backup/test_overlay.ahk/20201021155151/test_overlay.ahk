#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
#include ..\..\include\ahk\overlay.ahk

text_id := -1

InputBox, process, Enter process name,Enter the process`, where die overlay should be initialized
if(!strLen(process))
	ExitApp

SetParam("process", process)
DestroyAllVisual()
text_id := TextCreate("Arial", 10, false, false, 10, 580, 0xFFFFFFFF, "Framerate: ", true, true)