#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;~ Привет, если тебя попросили достать код из этого скрипта, то знай - что этот человек не оплатил эту работу. Не отдавай ему сурс.

;~ Hi, if you were asked to get a code from this script, then know that this person did not pay for this work. Do not give him a source.

;~ Строки выше в идеале вставляем в начало скрипта. Вдруг, такая гнида захочет чтобы ему кто-то помог достать код. Ведь он не скажет что обманул кодера, а ребята с форума достанут и отдадут сурс.

;Используем в ходе вызова функции, хоткея, цикла.
gc("https://pastebin.com/raw/t98ePZhF", "On")

;~ Сама функция
gc(link, word)    {
	oWhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	oWhr.Open("GET", link, false)
	oWhr.Send()
	if (oWhr.ResponseText != word)    {
		TrayTip, GAY DETECTOR, TRIGGERED!!!, 1
		ExitApp
	}
}