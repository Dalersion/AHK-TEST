﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Gui, Font, S18 CDefault Bold, Verdana
;Gui, Add, Progress, x44 y289 w300 h30 , 25
;Gui, Add, Text, x49 y79 w290 h50 , Загрузка
;Gui, Add, GroupBox, x22 y19 w340 h320 , GroupBox
;Gui, Font, S18 CDefault Bold, Verdana
;Gui, Font, S18 CDefault Bold Underline Strike, Verdana
;Gui, Add, Slider, x39 y209 w310 h30 , 25
;Gui, Add, Picture, x-8 y-1 w400 h370 , C:\Users\Dalersion\Downloads\1340774.jpg
; Generated using SmartGUI Creator for SciTE
;Gui, Show, w387 h365, Untitled GUI
;return
SetTimer, pizdec123, 1000
pizdec123:
;MsgBox, %pizdec123%
if pizdec123=3
{
	SetTimer, downloaded, 10000
	pizdec123=sjkdbg
	MsgBox, %pizdec123% ; test Var
	return
}else{
	pizdec=124
}


;Gui, Add, Progress, x39 y284 w300 h30 , 
;Gui, Add, Slider, x34 y204 w310 h30 , 
;Gui, Add, Picture, x-8 y-11 w400 h380 , C:\Users\Dalersion\Downloads\1340774.jpg

Gui, Add, Text, x452 y519 w360 h130 , Text
Gui, Font, S15 CDefault Bold , Verdana
Gui, Add, Text, x133 y9 w110 h30 , Загрузка
Gui, Add, Progress, x42 y319 w300 h30 , 25
;Gui, Add, GroupBox, x32 y29 w320 h280 , Тип жопа
Gui, Font, S15 CDefault Bold, Verdana
; Generated using SmartGUI Creator for SciTE
Gui, Show, w381 h359, Подгрузка скрипта
return

downloaded:
Gui, hide
Gui, Font, S10 CDefault Bold , Verdana
Gui, Add, Button, x202 y339 w250 h70 g1, Пока
Gui, Add, GroupBox, x2 y-1 w270 h230 , GroupBox
Gui, Add, Edit, x12 y19 w180 h40 , Edit
Gui, Add, Picture, x2 y-1 w600 h450 , F:\Фоточки\Фотографии на стене сообщества\134-DKdYMlnTn3s.jpg
Gui, Add, GroupBox, x2 y-1 w210 h300 , Пиздос
Gui, Add, Text, x282 y-1 w270 h40 , Huli na jopu smotrish'?
; Generated using SmartGUI Creator for SciTE
Gui, Show, w606 h451, MainGui
return

GuiClose:
ExitApp


1::
	ExitApp