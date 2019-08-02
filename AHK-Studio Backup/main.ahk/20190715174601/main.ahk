menu, Tray, Icon, knive.ico, 1
SetTimer, TimedClose, 300000
SetTimer, TimedClose2, 1000
SetJopaVar(1, "nothing", 10)
bunnyhop = 0	
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#SingleInstance,Force
#Include %A_ScriptDir%\functions.ahk
#Include %A_ScriptDir%\hotkeys.ahk
SetJopaVar(Jopa:=0,Var:="notho",Numb:=0)
{
	formsg:=Функция вернула %Jopa%, %Var%, %Numb%
	return
}

;vk05 & vk20::
*space::
{
	if bunnyhop =1
	{
		Loop
		{
			GetKeyState,state,space,P
			if state = U
			break
			Send,{space}
			Sleep,20
		}
		return
	}
	else
	{
		SendInput,{Space, Down}
		return
	}
	return
}


TimedClose:
{
	Process, Close, SkypeApp.exe, ;High
	Process, Close, SkypeBackgroundHost.exe, ;High
	Process, Close, SkypeBridge.exe, ;High
	return
}



TimedClose2:
{
	Process, Close, powershell.exe, ;High
	return
}