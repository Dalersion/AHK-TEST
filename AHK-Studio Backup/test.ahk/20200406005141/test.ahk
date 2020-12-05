#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
if( A_IsDLL = 1 )
{
	Gui, Add, Picture, x-38 y-1 w580 h310 , C:\Users\Dalersion\Downloads\oAdWoxpN2YY.jpg
	Gui, Add, Edit, x52 y69 w170 h30 vedit1, Edit
	Gui, Add, Edit, x52 y139 w170 h30 vedit2, Edit
	Gui, Add, Text, x52 y39 w170 h30 , Name
	Gui, Add, Text, x52 y99 w170 h40 gdebug, Path
	Gui, Add, CheckBox, x52 y169 w170 h30 vcheck, Reset
	Gui, Add, Button, x82 y199 w100 h30 gbutton1, Accept
	Gui, Show, w278 h304, Add Shortcut
	return
	
	
	
	debug:
	{
	return
	}
	button1:
	{
		return
	}
}
else
{
	ExitApp, 2
}