;menu, tray, NoStandard
menu, tray, add, Run, podmenu
Menu, podmenu, Add, Assassin's Creed, tray_Handler
Menu, podmenu, Add, Grid Racing     , tray_Handler
Menu, podmenu, Add, Deadspace       , tray_Handler
Menu, podmenu, Add, Silent Hill     , tray_Handler

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