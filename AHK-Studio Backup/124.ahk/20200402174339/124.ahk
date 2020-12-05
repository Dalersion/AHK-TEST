;menu, tray, NoStandard
menu, tray, add, Run, podmenu
IniRead,tray_number, settings.ini, numb
if(tray_number=10)
{
	Menu, podmenu, Add, %tray_name10%    , tray_Handler
}


tray_Handler:
{
	If ( A_ThisMenuItem = "Assassin's Creed" )
	{
		Run, c:\path\to\assassin's creed\game.exe
	}
	
	Else If ( A_ThisMenuItem = "Grid Racing" )
	{
		Run, c:\path\to\grid racing\game.exe
	}
	
	Else If ( A_ThisMenuItem = "Deadspace" )
	{
		Run, c:\path\to\deadspace\game.exe
	}
	
	Else If ( A_ThisMenuItem = "Silent Hill" )
	{
		Run, c:\path\to\slient hill\game.exe
	}
	
	Else If ( A_ThisMenuItem = "Add Shortcut" )
	{
		Gui, Add, Edit, x52 y69 w170 h30 vedit1, Edit
		Gui, Add, Edit, x52 y139 w170 h30 vedit2, Edit
		Gui, Add, Text, x52 y39 w170 h30 , Text
		Gui, Add, Text, x52 y99 w170 h40 , Text
		Gui, Add, CheckBox, x52 y169 w170 h30 , CheckBox
		Gui, Add, Button, x82 y199 w100 h30 gbutton1, Погнали сука
		Gui, Add, Picture, x-38 y-1 w580 h310 , C:\Users\Dalersion\Downloads\oAdWoxpN2YY.jpg
		Gui, Show, w278 h304, Add Shortcut
	}
	
}
^F9::
{
	ExitApp, 1
}

podmenu:
{
	If ( A_ThisMenuItem = "Run" )
	{
		menu, podmenu, show
	}
}





/*
	Gui, Add, Edit, x52 y69 w170 h30 , Edit
	Gui, Add, Edit, x52 y139 w170 h30 , Edit
	Gui, Add, Text, x52 y39 w170 h30 , Text
	Gui, Add, Text, x52 y99 w170 h40 , Text
	Gui, Add, CheckBox, x52 y169 w170 h30 , CheckBox
	Gui, Add, Button, x82 y199 w100 h30 , Button
	Gui, Add, Picture, x-38 y-1 w580 h310 , C:\Users\Dalersion\Downloads\oAdWoxpN2YY.jpg
; Generated using SmartGUI Creator for SciTE
	Gui, Show, w278 h304, Untitled GUI
	return
	
	GuiClose:
	ExitApp
	
	
	
	
	
	Menu, podmenu, Add, Assassin's Creed, tray_Handler
	Menu, podmenu, Add, Grid Racing     , tray_Handler
	Menu, podmenu, Add, Deadspace       , tray_Handler
	Menu, podmenu, Add, Silent Hill     , tray_Handler
	Menu, podmenu, Add, Add Shortcut    , tray_Handler