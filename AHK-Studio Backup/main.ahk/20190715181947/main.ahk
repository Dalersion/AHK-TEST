﻿menu, Tray, Icon, knive.ico, 1
SetTimer, TimedClose, 300000
SetTimer, TimedClose2, 1000
SetJopaVar(1, "nothing", 10)
bunnyhop = 0	
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#SingleInstance,Force
#Include %A_ScriptDir%\functions.ahk
#Include %A_ScriptDir%\hotkeys.ahk

MainGui:
{
	Gui, Add, Picture, x-8 y-1 w280 h460 , C:\Users\Dalersion\Desktop\for my project\menu.png
	Gui, Add, Picture, x52 y49 w160 h80  , C:\Users\Dalersion\Desktop\for my project\csgo0.jpg
	Gui, Add, Picture, x22 y139 w230 h90 , C:\Users\Dalersion\Desktop\for my project\HW0.jpg
	Gui, Add, Picture, x72 y239 w120 h70 , C:\Users\Dalersion\Desktop\for my project\samp0.jpg
	Gui, Add, Picture, x72 y319 w120 h80 , C:\Users\Dalersion\Desktop\for my project\debug0.jpg
	Gui, Show, w273 h438, Change Game
	return
}





SetJopaVar(Jopa:=0,Var:="notho",Numb:=0)
{
	formsg:=Функция вернула %Jopa%, %Var%, %Numb%
	return
}



TimedClose:
{
	Process, Close, SkypeApp.exe, ;High
	Process, Close, SkypeBackgroundHost.exe, ;High
	Process, Close, SkypeBridge.exe, ;High
	return
}



TimedClose2:
{
	Process, Close, powershell.exe, ;High
	return
}