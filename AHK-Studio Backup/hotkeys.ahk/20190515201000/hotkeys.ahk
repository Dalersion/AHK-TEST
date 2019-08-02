F1::
{
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

^+F4
{
	Process, Close, Skype.exe, H
}