SetTimer, timer1, On
Gui, Add, Slider, vSlider, x22 y19 w430 h30 , 25
Gui, Add, Progress, vProgress, x22 y89 w430 h30 , 25
; Generated using SmartGUI Creator 4.0
Gui, Show, x347 y237 h184 w476, New GUI Window
Return

timer1:
{
	GuiControl, ,Progress, %Slider%
}




GuiClose:
ExitApp