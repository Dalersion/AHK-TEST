#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;ip := "localhost"
ip := "185.219.168.254"
#Include net_component.ahk
save(Value,file,section,key)
{
	global ip
	name := %A_Index%
	file := file . ".ini"
	host = http://%ip%/save?value=%value%&file=%file%&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	Pause,on
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
	file := file . ".ini"
	host = http://%ip%/get?file=%file%&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send()
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText
	return %ResponseText%
}



out := save("hui","jopa","pizda","suka")
MsgBox,,,%out%
out := get("jopa","pizda","suka")
MsgBox,,,%out%