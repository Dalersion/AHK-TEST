#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
save(Value,file,section,key)
{
	name := %A_Index%
	ip := "localhost"
	host = http://%ip%/save?value=%value%&file=%file%.ini&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send()
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText
	return %ResponseText%
}