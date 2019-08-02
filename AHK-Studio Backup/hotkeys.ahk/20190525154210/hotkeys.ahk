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
	Goto,TimedClose
	;Process, Close, RuntimeBrocker.exe, ;High
	return
}

^+F5::
{
	Process, Close, Browser.exe, ;High
	return
}

XButton1::
{
	send, {XButton1}
	if bunnyhop = 0
	{
		bunnyhop = 1
		;SoundPlay,
		return
	}
	else
	{
		bunnyhop = 0
		;SoundPlay,
		return
	}
	return
}