URLDownloadToFile, https://i.imgur.com/AYYPGv4.png, 9.png
Gui, Font, S15 Cgreen Bold Underline, Verdana
Gui, Add, Picture, x-58 y-51 w1280 h1030 , %A_ScriptDir%\9.png
Gui, Add, Text, x62 y39 w350 h80 , Если вы действительно хотите скачать данные фалы`, нажмите на кнопку
Gui, Add, Button, x132 y309 w210 h50 gbutton, Кнопочка :)
; Generated using SmartGUI Creator for SciTE
Gui, Show, w479 h379,  Просто очко слона
return

button:
	URLDownloadToFile, https://i.imgur.com/pvNnGPQ.jpg, 1.png
	URLDownloadToFile, https://i.imgur.com/L06xmhM.jpg, 2.png
	URLDownloadToFile, https://i.imgur.com/fgRaw8c.jpg, 3.png
	URLDownloadToFile, https://i.imgur.com/XdZQtEc.jpg, 4.png
	URLDownloadToFile, https://i.imgur.com/59vpIaJ.jpg, 5.png
	URLDownloadToFile, https://i.imgur.com/cPp974k.jpg, 6.png
	URLDownloadToFile, https://i.imgur.com/lioAbwe.jpg, 7.png
	MsgBox, 64, Сomlete, Все скачано
return

GuiClose:
ExitApp
FileDelete, 9.png