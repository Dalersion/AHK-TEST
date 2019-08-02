/*
	This is simple hotkeys include by Dalersion
*/

F1::                            ;Отладка на функцию
{
	if (game = 4)
	{
		SetJopaVar(0, nothing, 14)
		MsgBox,0,jopa,%formsg%
		return
	}
}

F2::                               ;отладка, показывающая историю нажатий
{
	if (game = 4)
	{
		KeyHistory
		return
	}
}

F3::                            
{
	goto MainGui
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
			Sleep,1
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
	if(game = 3) ;Game = 3 это самп
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

^q::
{
	goto, tpr
}

^Q::
{
	goto, tpr
}