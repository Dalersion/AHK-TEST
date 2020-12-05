#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
save(Value,file,section,key)
{
	name1 := %A_Index%
	name = %name1%
	URLDownloadToFile, 127.0.0.1:52669/save?value=%value%&file=%file%.ini&section=%section%&key=%key%, %A_AppData%/Dalersion/Client/Temp/temp%name%.txt
	1:
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
	out := save("chlen","text","jopencia","hui")
	MsgBox,,,%out%
}