#Include 1.inc
Text =
(
Не жалею, не зову, не плачу,
Все пройдет, как с белых яблонь дым.
Увяданья золотом охваченный,
Я не буду больше молодым.

Ты теперь не так уж будешь биться,
Сердце, тронутое холодком,
И страна березового ситца
Не заманит шляться босиком.
)

Key1 = AutoHotkey forever!
Key2 = Хрен поймёшь, что тут написано.
Key3 = 1234567890
                           
Shifr := Cipher(Text, Key1, Key2, Key3)  ; Шифруем.

MsgBox, % Shifr


Text := Cipher(Shifr, Key3, Key2, Key1) ; Дешифруем, ключи в обратном порядке.

MsgBox, % Text

Gui, Add, Edit, x12 y29 w360 h180 , %Shifr%
; Generated using SmartGUI Creator for SciTE
Gui, Show, w479 h379, Untitled GUI
return

GuiClose:
ExitApp

