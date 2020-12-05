#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
ip := "localhost"
save(Value,file,section,key)
{
	global ip
	name := %A_Index%
	file := %file% . ".ini"
	host = http://%ip%/save?value=%value%&file=%file%&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send()
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText
	return %ResponseText%
}
get(file,section,key)
{
	global ip
	name := %A_Index%
	file := %file% . ".ini"
	Pause,Off
	host = http://%ip%/get?file=%file%.ini&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send()
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText
	return %ResponseText%
}

F1::
{
	out := save(suka,jopa,hui,pizdec)
	MsgBox, , ,%out%
	return
}

F2::
{
	out := get(jopa,hui,pizdec)
	MsgBox, , ,%out%
	return
}