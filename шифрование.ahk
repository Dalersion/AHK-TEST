#Include 1.inc
Text =
(
�� �����, �� ����, �� �����,
��� �������, ��� � ����� ������ ���.
�������� ������� ����������,
� �� ���� ������ �������.

�� ������ �� ��� �� ������ ������,
������, �������� ��������,
� ������ ���������� �����
�� ������� ������� �������.
)

Key1 = AutoHotkey forever!
Key2 = ���� ������, ��� ��� ��������.
Key3 = 1234567890
                           
Shifr := Cipher(Text, Key1, Key2, Key3)  ; �������.

MsgBox, % Shifr


Text := Cipher(Shifr, Key3, Key2, Key1) ; ���������, ����� � �������� �������.

MsgBox, % Text

Gui, Add, Edit, x12 y29 w360 h180 , %Shifr%
; Generated using SmartGUI Creator for SciTE
Gui, Show, w479 h379, Untitled GUI
return

GuiClose:
ExitApp

