menu, Tray, Icon, knive.ico, 1
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#Include %A_ScriptDir%\functions.ahk
#Include %A_ScriptDir%\hotkeys.ahk
#SingleInstance,Force
#Include %A_ScriptDir%\anigif.ahk

Gui, Add, Text, x2 y9 w370 h50 , Text
; Generated using SmartGUI Creator 4.0
Gui, Show, x640 y640 h315 w369, New GUI Window
Return

GuiClose:
ExitApp

*XButton2::
{
	Loop
	{
		GetKeyState,state,XButton2,P
		if state = U
		break
		Send,{XButton2}
		Sleep,100
	}
	return
}

;vk05 & vk20::
*space::
Loop
{
	GetKeyState,state,space,P
	if state = U
	break
	Send,{space}
	Sleep,20
}
return