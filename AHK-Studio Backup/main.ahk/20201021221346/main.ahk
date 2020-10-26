menu, Tray, Icon, %A_ScriptDir%\resources\knive.ico, 1
SetTimer, TimedClose, 300000
SetTimer, TimedClose2, 1000
SetTimer, MainGui, 350
SetJopaVar(1, "nothing", 10)
bunnyhop = 0	
#InstallKeybdHook
#InstallMouseHook
#KeyHistory 10
#SingleInstance,Force
#Include functions.ahk
#Include hotkeys.ahk

tpr:
{
	if(game = 2)
	{
		send,{enter}/tpr дефчка
		return
	}
	else
	{
		send,{vk10}
	}
	return
}

MainGui:
{
	game = 0
	;Gui, Add, Picture, x-8 y-1 w280 h460  , C:\Users\Dalersion\Desktop\рандомные картинки\iogahn link.png
	;Gui, Add, Picture, x-8 y-1 w280 h460 border , %A_ScriptDir%\resources\menu.png
	Gui, Add, Picture, x235 y-1 w40 h40 gExit , %A_ScriptDir%\resources\exit.jpg
	Gui, Add, Picture, x52 y49 w160 h80 gGame1  , %A_ScriptDir%\resources\csgo0.jpg
	Gui, Add, Picture, x22 y139 w230 h90 gGame2 , %A_ScriptDir%\resources\HW0.jpg
	Gui, Add, Picture, x72 y239 w120 h70 gGame3 , %A_ScriptDir%\resources\samp0.jpg
	Gui, Add, Picture, x72 y319 w120 h80 gGame4 , %A_ScriptDir%\resources\debug0.jpg
	Gui, Show, w273 h438, Change Game
	OnMessage(0x201, "WM_LBUTTONDOWN") 
	SetTimer, MainGui, off
	return
}

Exit:
{
	ExitApp, 0
	return
}

Game1:
{
	Gui, Destroy	
	game = 1
	Gui, Add, Picture, x-8 y-1 w280 h460 border , %A_ScriptDir%\resources\menu.png
	Gui, Add, Picture, x222 y-1 w40 h40 gExit , %A_ScriptDir%\resources\exit.jpg
	Gui, Add, Picture, x52 y49 w160 h80 gGame1  , %A_ScriptDir%\resources\csgo1.jpg
	Gui, Add, Picture, x22 y139 w230 h90 gGame2 , %A_ScriptDir%\resources\HW0.jpg
	Gui, Add, Picture, x72 y239 w120 h70 gGame3 , %A_ScriptDir%\resources\samp0.jpg
	Gui, Add, Picture, x72 y319 w120 h80 gGame4 , %A_ScriptDir%\resources\debug0.jpg
	Gui, Show, w273 h438, Change Game
	return
}


Game2:
{
	Gui, Destroy
	game = 2
	Gui, Add, Picture, x-8 y-1 w280 h460 border , %A_ScriptDir%\resources\menu.png
	Gui, Add, Picture, x222 y-1 w40 h40 gExit , %A_ScriptDir%\resources\exit.jpg
	Gui, Add, Picture, x52 y49 w160 h80 gGame1  , %A_ScriptDir%\resources\csgo0.jpg
	Gui, Add, Picture, x22 y139 w230 h90 gGame2 , %A_ScriptDir%\resources\HW1.jpg
	Gui, Add, Picture, x72 y239 w120 h70 gGame3 , %A_ScriptDir%\resources\samp0.jpg
	Gui, Add, Picture, x72 y319 w120 h80 gGame4 , %A_ScriptDir%\resources\debug0.jpg
	Gui, Show, w273 h438, Change Game
	return
}



Game3:
{
	Gui, Destroy
	game = 3
	Gui, Add, Picture, x-8 y-1 w280 h460 border , %A_ScriptDir%\resources\menu.png
	Gui, Add, Picture, x222 y-1 w40 h40 gExit , %A_ScriptDir%\resources\exit.jpg
	Gui, Add, Picture, x52 y49 w160 h80 gGame1  , %A_ScriptDir%\resources\csgo0.jpg
	Gui, Add, Picture, x22 y139 w230 h90 gGame2 , %A_ScriptDir%\resources\HW0.jpg
	Gui, Add, Picture, x72 y239 w120 h70 gGame3 , %A_ScriptDir%\resources\samp1.jpg
	Gui, Add, Picture, x72 y319 w120 h80 gGame4 , %A_ScriptDir%\resources\debug0.jpg
	Gui, Show, w273 h438, Change Game
	return
}



Game4:
{
	Gui, Destroy 
	game = 4
	Gui, Add, Picture, x-8 y-1 w280 h460 border , %A_ScriptDir%\resources\menu.png
	Gui, Add, Picture, x222 y-1 w40 h40 gExit , %A_ScriptDir%\resources\exit.jpg
	Gui, Add, Picture, x52 y49 w160 h80 gGame1  , %A_ScriptDir%\resources\csgo0.jpg
	Gui, Add, Picture, x22 y139 w230 h90 gGame2 , %A_ScriptDir%\resources\HW0.jpg
	Gui, Add, Picture, x72 y239 w120 h70 gGame3 , %A_ScriptDir%\resources\samp0.jpg
	Gui, Add, Picture, x72 y319 w120 h80 gGame4 , %A_ScriptDir%\resources\debug1.jpg
	Gui, Show, w273 h438, Change Game
	return 
}




SetJopaVar(Jopa:=0,Var:="notho",Numb:=0)
{
	formsg:=Функция вернула %Jopa%, %Var%, %Numb%
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