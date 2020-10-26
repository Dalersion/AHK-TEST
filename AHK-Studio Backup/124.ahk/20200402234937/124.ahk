;menu, tray, NoStandard
menu, tray, add, Run, podmenu
IniRead,tray_number, settings.ini,1, numb
IniRead,tray_name1, settings.ini,1, name1
IniRead,tray_name2, settings.ini,1, name2
IniRead,tray_name3, settings.ini,1, name3
IniRead,tray_name4, settings.ini,1, name4
IniRead,tray_name5, settings.ini,1, name5
IniRead,tray_name6, settings.ini,1, name6
IniRead,tray_name7, settings.ini,1, name7
IniRead,tray_name8, settings.ini,1, name8
IniRead,tray_name9, settings.ini,1, name9
IniRead,tray_name10, settings.ini,1,name10
IniRead,tray_path1, settings.ini,1, path1
IniRead,tray_path2, settings.ini,1, path2
IniRead,tray_path3, settings.ini,1, path3
IniRead,tray_path4, settings.ini,1, path4
IniRead,tray_path5, settings.ini,1, path5
IniRead,tray_path6, settings.ini,1, path6
IniRead,tray_path7, settings.ini,1, path7
IniRead,tray_path8, settings.ini,1, path8
IniRead,tray_path9, settings.ini,1, path9
IniRead,tray_path10, settings.ini, 1,path10
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
}
Else if(tray_number=6)
{
	Menu, podmenu, Add, %tray_name6%     , tray_Handler
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
}
Else if(tray_number=5)
{
	Menu, podmenu, Add, %tray_name5%     , tray_Handler
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
}
Else if(tray_number=4)
{
	Menu, podmenu, Add, %tray_name4%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
}
Else if(tray_number=3)
{
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
	Menu, podmenu, Add, %tray_name3%     , tray_Handler
}
Else if(tray_number=2)
{
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
	Menu, podmenu, Add, %tray_name2%     , tray_Handler
}
Else if(tray_number=1)
{
	Menu, podmenu, Add, %tray_name1%     , tray_Handler
}
Menu, podmenu, Add, Add Shortcut    , tray_Handler
return


tray_Handler:
{
	If ( A_ThisMenuItem = tray_name1 )
	{
		Run %tray_path1%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name2% )
	{
		Run, %tray_path2%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name3% )
	{
		Run, %tray_path3%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name4% )
	{
		Run, %tray_path4%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name5% )
	{
		Run, %tray_path5%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name6% )
	{
		Run, %tray_path6%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name7% )
	{
		Run, %tray_path7%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name8% )
	{
		Run, %tray_path8%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name9% )
	{
		Run, %tray_path9%
		return
	}
	
	Else If ( A_ThisMenuItem = %tray_name10% )
	{
		Run, %tray_path10%
		return
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