#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
save(Value,file,section,key)
{
	name := %A_Index%
	1:
	URLDownloadToFile, 127.0.0.1/save?value=%value%&file=%file%.ini&section=%section%&key=%key%, %A_AppData%/Dalersion/Client/Temp/temp%name%.txt
	IfExist, %name%
	{
		FileReadLine, output1, %name%, 1
		return, output1
	}
	else
	{
		goto, 1
	}
}


F1::
{
	out := save(1,text,jopencia,hui)
	MsgBox,,,%out%
}