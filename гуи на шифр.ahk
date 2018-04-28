Gui, Font, S12 CDefault Bold Underline, Verdana
Gui, Add, Button, x22 y319 w100 h30 gBOK, Отправить
Gui, Add, Edit, x22 y259 w240 h20 vKey, ключ шифрования 1
Gui, Add, Edit, x22 y289 w240 h20 vKey2, ключ шифрования 2
Gui, Add, Edit, x22 y9 w240 h140 vText, Ваше сообщение
;Gui, Add, DropDownList, x282 y19 w100 h20 , дефолтные ключи(вполне надежно
Gui, Add, CheckBox, x282 y59 w100 h30 vcheck, дефолтные ключи
; Generated using SmartGUI Creator for SciTE
Gui, Show, w473 h373, Untitled GUI
return

BOK:
MsgBox, , , %check%

GuiClose:
ExitApp
