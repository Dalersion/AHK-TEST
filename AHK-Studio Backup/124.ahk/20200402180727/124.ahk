﻿;menu, tray, NoStandard
menu, tray, add, Run, podmenu
IniRead,tray_number, settings.ini, numb
if(tray_number=10)
{
	Menu, podmenu, Add, %tray_name10%    , tray_Handler
	Menu, podmenu, Add, %tray_name9%     , tray_Handler
	Menu, podmenu, Add, %tray_name8%     , tray_Handler
	Menu, podmenu, Add, %tray_name7%     , tray_Handler
	Menu, podmenu, Add, %tray_name6%     , tray_Handler
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=9)
{
	Menu, podmenu, Add, %tray_name9%     , tray_Handler
	Menu, podmenu, Add, %tray_name8%     , tray_Handler
	Menu, podmenu, Add, %tray_name7%     , tray_Handler
	Menu, podmenu, Add, %tray_name6%     , tray_Handler
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=8)
{
	Menu, podmenu, Add, %tray_name8%     , tray_Handler
	Menu, podmenu, Add, %tray_name7%     , tray_Handler
	Menu, podmenu, Add, %tray_name6%     , tray_Handler
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=7)
{
	Menu, podmenu, Add, %tray_name7%     , tray_Handler
	Menu, podmenu, Add, %tray_name6%     , tray_Handler
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=6)
{
	Menu, podmenu, Add, %tray_name6%     , tray_Handler
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=5)
{
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=4)
{
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Else if(tray_number=3)
{
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	return
}
Else if(tray_number=2)
{
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	return
}
Else if(tray_number=1)
{
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	return
}
Menu, podmenu, Add, Add Shortcut    , tray_Handler


tray_Handler:
{
	IniRead,tray_name1, settings,name1, names
	IniRead,tray_name2, settings,name2, names
	IniRead,tray_name3, settings,name3, names
	IniRead,tray_name4, settings,name4, names
	IniRead,tray_name5, settings,name5, names
	IniRead,tray_name6, settings,name6, names
	IniRead,tray_name7, settings,name7, names
	IniRead,tray_name8, settings,name8, names
	IniRead,tray_name9, settings,name9, names
	IniRead,tray_name10, settings,name10, names
	If ( A_ThisMenuItem = %tray_name% )
	{
		Run, %tray_path%
	}
	
	
	
	Else If ( A_ThisMenuItem = "Add Shortcut" )
	{
		Gui, Add, Picture, x-38 y-1 w580 h310 , C:\Users\Dalersion\Downloads\oAdWoxpN2YY.jpg
		Gui, Add, Edit, x52 y69 w170 h30 vedit1, Edit
		Gui, Add, Edit, x52 y139 w170 h30 vedit2, Edit
		Gui, Add, Text, x52 y39 w170 h30 , Text
		Gui, Add, Text, x52 y99 w170 h40 , Text
		Gui, Add, CheckBox, x52 y169 w170 h30 , CheckBox
		Gui, Add, Button, x82 y199 w100 h30 gbutton1, Погнали сука
		Gui, Show, w278 h304, Add Shortcut
		return
	}
	
}

podmenu:
{
	If ( A_ThisMenuItem = "Run" )
	{
		menu, podmenu, show
	}
	return
}

Button1:
{
	Gui, Submit
	/*
		ini read and more
	*/
	return
}

^F9::
{
	ExitApp, 1
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