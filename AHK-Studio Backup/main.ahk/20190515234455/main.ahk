menu, Tray, Icon, knive.ico, 1
Gui, Add, Text, x2 y9 w370 h50 , Text
AniGIF_Add("xm w200 h200 Center BackGroundRed", "1.gif", "http://autohotkey.com")
gif2 := AniGIF_Add("xm", "test2.gif") ; Omit w and h to autosize the control
gif2.SetBkColor(0xff00ff)
gif2.LoadGifFromFile("another.gif")

; Generated using SmartGUI Creator 4.0
Gui, Show, x640 y640 h315 w369, New GUI Window
Return

GuiClose:
ExitApp
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#Include %A_ScriptDir%\functions.ahk
#Include %A_ScriptDir%\hotkeys.ahk
#SingleInstance,Force
#Include %A_ScriptDir%\anigif.ahk


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