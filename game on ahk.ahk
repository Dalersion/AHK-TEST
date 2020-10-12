F2::
	goto gui
return

gui:
	IniRead, money1, stats.ini, matbey, money, 100000
	IniRead, money2, stats.ini, Daniil, money, 100000
	Gui, Add, GroupBox, x2 y0 w230 h350 , Матвей
	Gui, Add, Text, x12 y20 w180 h30 , деняк:
	Gui, Add, Edit, x22 y60 w100 h30 , %money1%
	Gui, Add, Button, x172 y360 w110 h30 gpay, Button
	Gui, Add, Edit, x22 y100 w100 h30 vZP1 , ЗП
	Gui, Add, Edit, x22 y150 w100 h30 , время на 1 зп
	Gui, Add, GroupBox, x242 y0 w220 h350 , Даниил
	Gui, Add, Text, x262 y20 w170 h30 , деняк:
	Gui, Add, Edit, x262 y60 w120 h30 , %money2%
	Gui, Add, Edit, x262 y100 w120 h30 vZP2 , ЗП
	Gui, Add, Edit, x262 y150 w120 h30 , время на 1 зп
; Generated using SmartGUI Creator for SciTE
	Gui, Show, w479 h401, Untitled GUI
return

GuiClose:
	ExitApp
return

pay:
	GuiControlGet, zp1
	GuiControlGet, zp2
	money1 += zp1
	money2 += zp2
	IniWrite, %money1%, stats.ini, MATBEY, money
	IniWrite, %money2%, stats.ini, Daniil, money