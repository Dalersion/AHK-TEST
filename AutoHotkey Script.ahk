﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

	
	SetTimer, 1ms, 1
	SetTimer, 1ms, off
	;SetTimer, downloaded, 1000
	;Gui, Add, Progress, x39 y284 w300 h30 , 
	;Gui, Add, Slider, x34 y204 w310 h30 , 
	UrlDownloadToFile, https://i.imgur.com/ErVe7ct.jpg, 2.jpg
	Gui, Add, Picture, x-8 y-11 w400 h380 , %A_ScriptDir%\2.jpg
	;Gui, Add, Picture, x-8 y-1 w400 h370 , C:\Users\Dalersion\Downloads\1340774.jpg

	Gui, Add, Text, x452 y519 w360 h130 , Text
	Gui, Font, S15 CDefault Bold , Verdana
	Gui, Add, Text, x133 y9 w110 h30 , Загрузка
	Gui, Add, Progress, x42 y319 w300 h30 , 25
	;Gui, Add, GroupBox, x32 y29 w320 h280 , Тип жопа
	Gui, Font, S15 CDefault Bold, Verdana
	; Generated using SmartGUI Creator for SciTE
	Gui, Show, w381 h359, Подгрузка скрипта
	UrlDownloadToFile, https://i.imgur.com/kCq2ICl.jpg, 1.jpg
	;UrlDownloadToFile, ssilka, file.rasshrenie
	;#Include 142.ahk
	;downloaded=1
	Gui, hide
	SetTimer, 1ms, on
	
downloaded:
	Gui, hide
	Gui, Add, Picture, x2 y-1 w600 h450 , %A_ScriptDir%\1.jpg
	;Gui, Add, Picture, x2 y-1 w600 h450 , F:\Фоточки\Фотографии на стене сообщества\134-DKdYMlnTn3s.jpg
	Gui, Font, S10 CDefault Bold , Verdana
	Gui, Add, Button, x202 y339 w250 h70 g11, Пока
	Gui, Add, Button, x462 y279 w100 h30 g12, Показать что введено
	Gui, Add, Edit, x12 y19 w180 h40 vedit1, Edit
	Gui, Add, GroupBox, x2 y-1 w210 h300 , Пиздос
	Gui, Add, Text, x282 y-1 w270 h40 , Huli na jopu smotrish'?   %edit2%
	; Generated using SmartGUI Creator for SciTE
	Gui, Show, w606 h451, MainGui
	SetTimer, downloaded, off
	return

GuiClose:
ExitApp

1ms:
	SetTimer, 1ms, off
	SetTimer, downloaded, 1
	SetTimer, downloaded, off
	return

13:
	GuiControlGet, edit2
	SetTimer, 1ms, on
	SetTimer,1ms, off

12:
	GuiControlGet, edit1
	Gui, hide
	Gui, Add, Picture, x2 y-1 w600 h450 , %A_ScriptDir%\1.jpg
	;Gui, Add, Picture, x2 y-1 w600 h450 , F:\Фоточки\Фотографии на стене сообщества\134-DKdYMlnTn3s.jpg
	Gui, Font, S10 CDefault Bold , Verdana
	Gui, Add, Button, x202 y339 w250 h70 g13, Пока
	;Gui, Add, Button, x462 y279 w100 h30 g12, Показать что введено
	Gui, Add, Edit, x12 y19 w180 h40 vedit2, %edit1%
	Gui, Add, GroupBox, x2 y-1 w210 h300 , Пиздос
	Gui, Add, Text, x282 y-1 w270 h40 , Huli na jopu smotrish?'  Ты написал %edit1%?
	; Generated using SmartGUI Creator for SciTE
	Gui, Show, w606 h451, MainGui
	return
11:
	ExitApp
return

1::
	MsgBox, 48, Пиздец, Ты пидор
return