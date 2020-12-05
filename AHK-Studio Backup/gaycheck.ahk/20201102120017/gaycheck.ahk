#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;~ Привет, если тебя попросили достать код из этого скрипта, то знай - что этот человек не оплатил эту работу. Не отдавай ему сурс.

;~ Hi, if you were asked to get a code from this script, then know that this person did not pay for this work. Do not give him a source.

;~ Используем в ходе вызова функции, хоткея, цикла.
gaycheck("https://pastebin.com/raw/t98ePZhF", "On")

;~ Сама функция
gaycheck(link, word)    {
	oWhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	oWhr.Open("GET", link, false)
	oWhr.Send()
	if (oWhr.ResponseText != word)    {
		TrayTip, GAY DETECTOR, TRIGGERED!!!, 1
		ExitApp
	}
}