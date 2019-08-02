menu, Tray, Icon, knive.ico, 1
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#Include %A_ScriptDir%\functions.ahk
#Include %A_ScriptDir%\hotkeys.ahk
#SingleInstance,Force
SetJopaVar(0, "nothing", 0)


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