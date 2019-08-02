/*
	This is simple hotkeys include by Dalersion
*/

F1::
{
	SetJopaVar(0, nothing, 14)
	MsgBox,0,jopa,%formsg%
	return
}

F2::
{
	SendInput, {F6}/lock{enter}
	return
}

F3::
{
	KeyHistory
	return
}

^+E::
{
	ExitApp
}

^+F4::
{
	Process, Close, SkypeApp.exe, ;High
	Process, Close, SkypeBackgroundHost.exe, ;High
	Process, Close, SkypeBridge.exe, ;High
	;Process, Close, RuntimeBrocker.exe, ;High
	Process, Close, powershell.exe, ;High	
}

^+F5::
{
	Process, Close, Browser.exe, ;High
}

^+F3::
{
	;Process, Close, 
}