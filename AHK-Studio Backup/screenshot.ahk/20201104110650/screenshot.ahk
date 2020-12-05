﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



F12::
;работаем со скрытыми окнами
DetectHiddenWindows, On
;делаем снимок экрана
Send, {PRINTSCREEN} ; снимок всего экрана (PrtSc)
;Send, !{PRINTSCREEN} ; снимок активного окна (Alt + PrtSc)
;создаём пустой файл
time := A_Now
FileAppend,, %A_AppData%/Dalersion/temp/temp%time%.bmp
;открываем пустой файл в скрытом окне Paint
Run, mspaint %A_AppData%/Dalersion/temp/temp%time%.bmp,, Hide
;ждём запуска Paint
WinWait, temp%time%.bmp - Paint
;команда меню "Правка" - "Вставить"
PostMessage, 0x111, 57637, 0, , temp%time%.bmp - Paint
;команда меню "Файл" - "Сохранить"
PostMessage, 0x111, 57603, 0, , temp%time%.bmp - Paint
;команда меню "Файл" - "Выход"
PostMessage, 0x111, 57665, 0, , temp%time%.bmp - Paint
;ждём завершения работы Paint
WinWaitClose, temp%time%.bmp - Paint