/*
	This is simple hotkeys include by Dalersion
*/

F1::                            ;Отладка на функцию
{
	SetJopaVar(0, nothing, 14)
	MsgBox,0,jopa,%formsg%
	return
}

F2::                               ;отладка, показывающая историю нажатий
{
	
	KeyHistory
	return
}

/*
	F3::                            
	{
		
	}
*/

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

*Space::
{
	if(game = 1) ;Game = 1 это кс
	{
		Loop	
		{
			GetKeyState,state,Space,P
			if state = U
				break
			Send,{Space}
			Sleep,100
		}
		return
	}
	else
	{
		send,{Space}
		return
	}
	return
}

^+F11::
{
	run, H:\фоточки
	return
}

XButton2::
{
	if(game = 2) ;Game = 2 это самп
	{
		SendInput, {F6}/lock{enter}
		return
	}
	else 
	{
		send,{XButton2}
		return
	}
	return
}

