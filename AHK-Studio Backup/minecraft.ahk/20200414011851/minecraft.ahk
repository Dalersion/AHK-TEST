#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include console.ahk
ini_path = %A_AppData%/Dalersion/minecraft.ini

write(value, key)
{
	global ini_path
	IniWrite, %value%,%ini_path%,main,%key%
}

Read(outputvar, key)
{
	global ini_path
	IniRead, %outputvar%, %ini_path%,main, %key%, error
}

IfNotExist, %ini_path%
{
	FileCreateDir, %A_AppData%/Dalersion
	write(0,"gamemode")
}


^+Numpad0::
{
	logg(A_ThisHotkey)
	SendInput, /
	Sleep, 200
	SendInput, fly
	return
}

^+R::
{
	logg(A_ThisHotkey)
	ExitApp, 0
	return
}
^+Numpad1::
{
	logg(A_ThisHotkey)
	Read("gamemode","gamemode")
	if(gamemode = 0)
	{
		SendInput, /
		Sleep, 200
		SendInput, gamemode creative
		write(1,"gamemode")
		return
	}
	else if(gamemode = 1)
	{
		SendInput, /
		Sleep, 200
		SendInput, gamemode survival
		write(0,"gamemode")
		return
	}
	else
	{
		logg(gamemode error)
	}
}
