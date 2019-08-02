#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#Include %A_ScriptDir%\functions.ahk
#Include %A_ScriptDir%\hotkeys.ahk
#SingleInstance,Force

*XButton2::
{
	Loop
	{
		GetKeyState,state,XButton2,P
		if state = U
		break
		Send,{XButton2}
		Sleep,20
	}
	return
}