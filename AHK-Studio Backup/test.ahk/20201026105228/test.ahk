#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

	
	SetTimer, 1ms, 1
	SetTimer, 1ms, off
	;SetTimer, downloaded, 1000
	;Gui, Add, Progress, x39 y284 w300 h30 , 
	;Gui, Add, Slider, x34 y204 w310 h30 , 
	UrlDownloadToFile, https://i.imgur.com/ErVe7ct.jpg, 14.jpg
	Gui, Add, Picture, x-8 y-11 w400 h380 , %A_ScriptDir%\14.jpg
	;Gui, Add, Picture, x-8 y-1 w400 h370 , C:\Users\Dalersion\Downloads\1340774.jpg

	Gui, Add, Text, x452 y519 w360 h130 , Text
	Gui, Font, S15 CDefault Bold , Verdana
	Gui, Add, Text, x133 y9 w110 h30 , Загрузка
	Gui, Add, Progress, x42 y319 w300 h30 , 25
	;Gui, Add, GroupBox, x32 y29 w320 h280 , Тип жопа
	Gui, Font, S15 CDefault Bold, Verdana
	; Generated using SmartGUI Creator for SciTE
	Gui, Show, w381 h359, Подгрузка скрипта
	UrlDownloadToFile, https://i.imgur.com/5TIoABL.jpg, 0.jpg
	;UrlDownloadToFile, ssilka, file.rasshrenie
	;#Include 142.ahk
	;downloaded=1
	Gui, hide
	SetTimer, 1ms, on
	
downloaded:
gui,hide
Gui, Show, w479 h379, Untitled GUI

Loop, 13
{
sleep, 1000 
Gui, Add, Picture, x112 y-1 w250 h390 , %A_ScriptDir%\%A_Index%.jpg
}
return

1ms:
	SetTimer, 1ms, off
	SetTimer, downloaded, 1
	SetTimer, downloaded, off
	return

GuiClose:
ExitApp

1::
	o