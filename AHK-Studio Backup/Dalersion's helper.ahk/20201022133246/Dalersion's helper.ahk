#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_AppData%/Dalersion  ; Ensures a consistent starting directory.

IfNotExist, %A_AppData%/Dalersion
{
	FileCreateDir, %A_AppData%/Dalersion/
}

SoundGetWaveVolume, vol_level
IniWrite, %vol_level%, helper.ini, Volume, LastVolumeLevel
