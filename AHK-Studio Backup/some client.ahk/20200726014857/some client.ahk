#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileCreateDir, %A_AppData%/Dalersion/Client/Temp
save(Value,file,section,key)
{
	name := %A_Index%
	ip := "localhost"
	URLDownloadToFile, http://%ip%/save?value=%value%&file=%file%.ini&section=%section%&key=%key%, %A_AppData%/Dalersion/Client/Temp/temp%name%.txt
	/*HTTP := ComObjCreate("WinHTTP.WinHTTPRequest.5.1")
		post_url = 127.0.0.1:52669/save?value=%value%&file=%file%.ini&section=%section%&key=%key%
		HTTP.Open("GET", post_url, true)
		HTTP.SetRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko)")
	;HTTP.SetRequestHeader("Pragma", "no-cache")
	;HTTP.SetRequestHeader("Cache-Control", "no-cache, no-store")
	;HTTP.SetRequestHeader("If-Modified-Since", "Sat, 1 Jan 2000 00:00:00 GMT")
		HTTP.Send()
		HTTP.WaitForResponse()
		ResponseText := HTTP.ResponseText
	*/
	MsgBox, , ,%ErrorLevel%
	1:
	Sleep, 200
	IfExist, %name%
	{
		FileReadLine, output1, %name%, 1
		return, output1
	}
	else
	{
		goto, 1
	}
	;return %ResponseText%
}

F1::
{
	out := save("chlen","text","jopencia","hui")
	MsgBox,,,%out%
}

F2::
{
	URLDownloadToFile, google.com, index.php
}