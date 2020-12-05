Gui, Add, CheckBox, x52 y169 w170 h30 vtext, CheckBox
Gui, Show, w278 h304, Add Shortcut
return

GuiClose:
{
	gui, Submit, NoHide
	MsgBox,1,1,%text%,0
}


IniWrite,