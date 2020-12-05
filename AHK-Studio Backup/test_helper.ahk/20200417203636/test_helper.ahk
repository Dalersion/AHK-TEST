#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Gui, Add, Picture, x-38 y-1 w580 h310 , C:\Users\Dalersion\Downloads\oAdWoxpN2YY.jpg
Gui, Add, Edit, x52 y45 w170 h30 vedit1, Edit
Gui, Add, Text, x52 y15 w170 h30 , ответ
Gui, Add, Button, x82 y80 w100 h30 gbutton1, Accept
Gui, Show, w278 h110, Add Shortcut
return
numb0 = 0


button1:
{
	number := numb0+1
	Gui, Submit, NoHide
	IniWrite, %edit1%,test.ini,1,№%number%
}