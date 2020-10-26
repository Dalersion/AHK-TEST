IniRead,old_instance, %A_AppData%/ShortCuter/settings.ini,2,old_instance
if(A_IsCompiled = 1)
{
	IfNotExist, %A_AppData%/ShortCuter/settings.ini
	{
		FileCreateDir, %A_AppData%/ShortCuter
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,numb
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path1
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path2
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path3
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path4
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path5
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path6
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path7
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path8
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path9
		IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path10
		IniWrite, 1,%A_AppData%/ShortCuter/settings.ini,1,name1
		IniWrite, 2,%A_AppData%/ShortCuter/settings.ini,1,name2
		IniWrite, 3,%A_AppData%/ShortCuter/settings.ini,1,name3
		IniWrite, 4,%A_AppData%/ShortCuter/settings.ini,1,name4
		IniWrite, 5,%A_AppData%/ShortCuter/settings.ini,1,name5
		IniWrite, 6,%A_AppData%/ShortCuter/settings.ini,1,name6
		IniWrite, 7,%A_AppData%/ShortCuter/settings.ini,1,name7
		IniWrite, 8,%A_AppData%/ShortCuter/settings.ini,1,name8
		IniWrite, 9,%A_AppData%/ShortCuter/settings.ini,1,name9
		IniWrite, 10,%A_AppData%/ShortCuter/settings.ini,1,name10
	}
	IfNotExist,%A_Startup%/ShortCuter.exe
	{
		FileCopy,%A_ScriptFullPath%, %A_Startup%,1
		FileCreateShortcut,%A_Startup%/ShortCuter.exe, %A_Desktop%\ShortCuter.lnk
		3:
		Run, %A_Startup%/ShortCuter.exe,,,PID
		IniWrite,%A_ScriptFullPath%,%A_AppData%/ShortCuter/settings.ini,2,old_instance
		Process, Exist, %PID%
		if(ErrorLevel !=0)
		{
			;IniWrite,%A_ScriptFullPath%,%A_AppData%/ShortCuter/settings.ini,2,old_instance 
			ExitApp
		}
		Else
		{
			goto, 3
		}
	}
	
	script_path = %A_Startup%/ShortCuter.exe
	IfExist, script_path
	{
		if(A_ScriptFullPath = script_path)
		{
			FileDelete, old_instance
			IniDelete, %A_AppData%/ShortCuter/settings.ini,2,old_instance
		}
		Else
		{
			4:
			Run, %A_Startup%/ShortCuter.exe,,,PID
			IniWrite,%A_ScriptFullPath%,%A_AppData%/ShortCuter/settings.ini,2,old_instance
			Process, Exist, %PID%
			if(ErrorLevel !=0)
			{
				;IniWrite,%A_ScriptFullPath%,%A_AppData%/ShortCuter/settings.ini,2,old_instance 
				ExitApp
			}
			Else
			{
				goto, 4
			}
		}
	}
	
	
	
	
	
	menu, tray, NoStandard
	menu, tray, add, Run, podmenu
	Menu,tray,Default, Run
	IniRead,tray_number, %A_AppData%/ShortCuter/settings.ini,1, numb
	IniRead,tray_name1, %A_AppData%/ShortCuter/settings.ini,1, name1
	IniRead,tray_name2, %A_AppData%/ShortCuter/settings.ini,1, name2
	IniRead,tray_name3, %A_AppData%/ShortCuter/settings.ini,1, name3
	IniRead,tray_name4, %A_AppData%/ShortCuter/settings.ini,1, name4
	IniRead,tray_name5, %A_AppData%/ShortCuter/settings.ini,1, name5
	IniRead,tray_name6, %A_AppData%/ShortCuter/settings.ini,1, name6
	IniRead,tray_name7, %A_AppData%/ShortCuter/settings.ini,1, name7
	IniRead,tray_name8, %A_AppData%/ShortCuter/settings.ini,1, name8
	IniRead,tray_name9, %A_AppData%/ShortCuter/settings.ini,1, name9
	IniRead,tray_name10, %A_AppData%/ShortCuter/settings.ini,1,name10
	IniRead,tray_path1, %A_AppData%/ShortCuter/settings.ini,1, path1
	IniRead,tray_path2, %A_AppData%/ShortCuter/settings.ini,1, path2
	IniRead,tray_path3, %A_AppData%/ShortCuter/settings.ini,1, path3
	IniRead,tray_path4, %A_AppData%/ShortCuter/settings.ini,1, path4
	IniRead,tray_path5, %A_AppData%/ShortCuter/settings.ini,1, path5
	IniRead,tray_path6, %A_AppData%/ShortCuter/settings.ini,1, path6
	IniRead,tray_path7, %A_AppData%/ShortCuter/settings.ini,1, path7
	IniRead,tray_path8, %A_AppData%/ShortCuter/settings.ini,1, path8
	IniRead,tray_path9, %A_AppData%/ShortCuter/settings.ini,1, path9
	IniRead,tray_path10, %A_AppData%/ShortCuter/settings.ini, 1,path10
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
	menu, tray, add, Exit, tray_Handler
	return
	
	
	tray_Handler:
	{
		If ( A_ThisMenuItem = tray_name1 )
		{
			Run, %tray_path1%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name2 )
		{
			Run, %tray_path2%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name3 )
		{
			Run, %tray_path3%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name4 )
		{
			Run, %tray_path4%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name5)
		{
			Run, %tray_path5%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name6 )
		{
			Run, %tray_path6%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name7 )
		{
			Run, %tray_path7%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name8 )
		{
			Run, %tray_path8%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name9 )
		{
			Run, %tray_path9%
			return
		}
		
		Else If ( A_ThisMenuItem = tray_name10 )
		{
			Run, %tray_path10%
			return
		}
		
		Else If ( A_ThisMenuItem = "Add Shortcut" )
		{
			Gui, Add, Picture, x-38 y-1 w580 h310 , C:\Users\Dalersion\Downloads\oAdWoxpN2YY.jpg
			Gui, Add, Edit, x52 y69 w170 h30 vedit1, Edit
			Gui, Add, Edit, x52 y139 w170 h30 vedit2, Edit
			Gui, Add, Text, x52 y39 w170 h30 , Name
			Gui, Add, Text, x52 y99 w170 h40 , Path
			Gui, Add, CheckBox, x52 y169 w170 h30 vcheck, Reset
			Gui, Add, Button, x82 y199 w100 h30 gbutton1, Accept
			Gui, Show, w278 h304, Add Shortcut
			return
		}
		Else If ( A_ThisMenuItem = "Exit" )
		{
			ExitApp, 1
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
		if (check = 0)
		{
			ini_numb := tray_number + 1
			IniWrite, %edit1%,%A_AppData%/ShortCuter/settings.ini,1,name%ini_numb%
			IniWrite, %edit2%,%A_AppData%/ShortCuter/settings.ini,1,path%ini_numb%
			IniWrite, %ini_numb%, %A_AppData%/ShortCuter/settings.ini,1,numb
			Reload
			return
		}
		Else
		{
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,numb
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path1
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path2
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path3
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path4
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path5
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path6
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path7
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path8
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path9
			IniWrite, 0,%A_AppData%/ShortCuter/settings.ini,1,path10
			IniWrite, 1,%A_AppData%/ShortCuter/settings.ini,1,name1
			IniWrite, 2,%A_AppData%/ShortCuter/settings.ini,1,name2
			IniWrite, 3,%A_AppData%/ShortCuter/settings.ini,1,name3
			IniWrite, 4,%A_AppData%/ShortCuter/settings.ini,1,name4
			IniWrite, 5,%A_AppData%/ShortCuter/settings.ini,1,name5
			IniWrite, 6,%A_AppData%/ShortCuter/settings.ini,1,name6
			IniWrite, 7,%A_AppData%/ShortCuter/settings.ini,1,name7
			IniWrite, 8,%A_AppData%/ShortCuter/settings.ini,1,name8
			IniWrite, 9,%A_AppData%/ShortCuter/settings.ini,1,name9
			IniWrite, 10,%A_AppData%/ShortCuter/settings.ini,1,name10
			Reload
		}
	}
	
	^F9::
	{
		ListVars
		;ExitApp, 1
		return
	}
}
Else
{
	ExitApp,2
}