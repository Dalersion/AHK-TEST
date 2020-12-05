#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileCreateDir, %A_AppData%/Dalersion/Client/Temp
save(Value,file,section,key)
{
	name := %A_Index%
	ip := "localhost"
	;URLDownloadToFile, http://%ip%/save?value=%value%&file=%file%.ini&section=%section%&key=%key%, %A_AppData%/Dalersion/Client/Temp/temp%name%.txt
	;/*
	host = http://%ip%/save?value=%value%&file=%file%.ini&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send() 
		; Использование 'true' выше и вызова ниже позволяет скрипту оставаться отзывчивым. 
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText 
	;*/
	;MsgBox, , ,%ErrorLevel%
	/*
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
	*/
	return %ResponseText%
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