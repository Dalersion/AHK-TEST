#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


NumpadDot::

Goto, Click
return

Click:
loop
{
	global clicks
	if clicks = 1
		Break
	SendInput, {LButton}
}
;SendRaw, LButton
;goto, Click
return

Numpad2::
Gosub, stop
return


stop:
clicks = 1
;TrayTip, lol,stop,3,
return