;===========================INCLUDES===================================

#Include 1.inc			;Cipher(Text, Key1, Key2, Key3) -шифр      Cipher(Shifr, Key3, Key2, Key1)-дешифр
#Include 2.inc			;keys(key1, key2 , key3)
#Include 3.inc			;key("pizdec",key1337, key2337, key3337)
#Include 4.inc			;gkey(outvar, number)

;===========================INCLUDES END===============================


;==============================Var's====================================

Token := "e0fb4fb73d95d64d4cbfe46c387f728480c79454f1dc9030d6810538f57d6543da5c51276ed776a5aa00c"
key1 :=  key("pizdec",key1337, key2337, key3337)
key2 := key("CEDZIP",key1337, key2337, key3337)
key3 := key("decpiz",key1337, key2337, key3337)

;==============================Var's END================================


;==============================Keys===================================

	;key1=Nastya
;KEY2=52669
;key3=autohotkeyforever!
IniWrite, %key1%, keys.ini, shifri, key1
IniWrite, %key2%, keys.ini, shifri, key2
IniWrite, %key3%, keys.ini, shifri, key3

;==============================Keys END=================================


;================================GUI=====================================	

Gui, Font, S12 CDefault Bold Underline, Verdana
Gui, Add, Picture, x-18 y0 w270 h270 , C:\Users\Dalersion\Desktop\дизайн2.jpg
Gui, Add, Edit, x42 y40 w140 h70  VTEXT, Ваше сообшение
Gui, Add, Button, x57 y225 w120 h30 gBOK , Отправить
Gui, Show, w238 h268, Untitled GUI
;Gui, Add, Edit, x2 y0 w260 h160  vTEXT,  Ваше сообшение
;Gui, Add, Button, x62 y160 w120 h30 gBOK , Отправить
;Gui, Add, Picture, x-28 y-10 w270 h290 , C:\Users\Dalersion\Desktop\дизайн2.jpg
;Gui, Add, Edit, x2 y0 w270 h200 , Ваше сообшение
;Gui, Add, Button, x62 y230 w120 h30 , Отправить
; Generated using SmartGUI Creator for SciTE
return

;==============================gui end===================================



/*==============================GUI2=====================================

Gui, Add, Edit, x2 y0 w270 h200 , Ваше сообшение
Gui, Add, Button, x62 y230 w120 h30 , Отправить
Gui, Add, Picture, x-28 y-10 w270 h290 , C:\Users\Dalersion\Desktop\дизайн2.jpg
; Generated using SmartGUI Creator for SciTE
Gui, Show, w244 h274, Untitled GUI
return
*/

/*==============================GUI3=====================================
Gui, Add, Edit, x42 y40 w140 h70 , Ваше сообшение
Gui, Add, Button, x57 y225 w120 h30 , Отправить
Gui, Add, Picture, x-18 y0 w270 h270 , C:\Users\Dalersion\Desktop\дизайн2.jpg
; Generated using SmartGUI Creator for SciTE
Gui, Show, w238 h268, Untitled GUI
return

GuiClose:
ExitApp
*/

;=============================Functions=================================

GuiClose:
	ExitApp
return

BOK:
	GuiControlGet, TEXT
	;MsgBox, , ,%text%
	hash:= Cipher(Text, Key1, Key2, Key3)
	;MsgBox, , ,%hash%

	ComObjError(false)
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	whr.Open("POST", "https://api.vk.com/method/messages.send?chat_id=88&message=" hash "&v=5.37&access_token=" Token, true)
	
	whr.SetRequestHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36")
	whr.SetRequestHeader("Content-Type","application/x-www-form-urlencoded")
	whr.Send()
	whr.WaitForResponse(60)
	if (whr.Status != 200)
	{
		return
	}
	MsgBox, % whr.ResponseText
return