#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_AppData%/Dalersion  ; Ensures a consistent starting directory.

IfNotExist, %A_AppData%/Dalersion
{
	FileCreateDir, %A_AppData%/Dalersion/
}

SoundGetWaveVolume, vol_level
IfnotExist,helper.ini
{
	IniWrite, %vol_level%, helper.ini, Volume, LastVolumeLevel
}
IfExist,helper.ini
{
	IniRead, vol_level, helper.ini,Volume,LastVolumeLevel, 69
}
if(vol_level != 0)
{
	vol_State = 1
}
else
{
	vol_State = 0
}

!ScrollLock::
{
	
	SoundGetWaveVolume, vol_level
	IniRead, vol_inilevel, helper.ini,Volume,LastVolumeLevel
	if(vol_level = vol_inilevel)
	{
		if(vol_State = 1)
		{
			global vol_level
			global vol_State
			SoundSetWaveVolume, 0
			vol_State = 0
			return
		}
		else
		{
			global vol_level
			global vol_State
			IniRead, vol_level, helper.ini,Volume,LastVolumeLevel, 69
			SoundSetWaveVolume, %vol_level%
			vol_State = 1
			return
		}
	}
}