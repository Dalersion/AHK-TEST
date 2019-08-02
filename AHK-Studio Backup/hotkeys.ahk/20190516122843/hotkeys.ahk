/*
	This is simple hotkeys include by Dalersion
*/

F1::                            ;Отладка на функцию
{
	SetJopaVar(0, nothing, 14)
	MsgBox,0,jopa,%formsg%
	return
}

F2::                            ;бинд для сампа
{
	SendInput, {F6}/lock{enter}
	return
}

F3::                               ;отладка, показывающая историю нажатий
{
	KeyHistory
	return
}

^+E::                          ;Выxод
{
	ExitApp
	return
}

^+F4::                                             ;закрытие скайпа и повершела
{
	Process, Close, SkypeApp.exe, ;High
	Process, Close, SkypeBackgroundHost.exe, ;High
	Process, Close, SkypeBridge.exe, ;High
	;Process, Close, RuntimeBrocker.exe, ;High
	Process, Close, powershell.exe, ;High	
	return
}

^+F5::
{
	Process, Close, Browser.exe, ;High
	return
}

^+F3::
{
	Process, Close, 904, ;High
	
	return
}