;Gui, Add, Text, x22 y509 w740 h110 , ���� ��� �������� ��� token
;Gui, Add, Edit, x22 y9 w420 h40 ,https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=3aa5c203959564955765a5c9cac5fe497c8b97856b32b3adb017d5edaca6c59b8f3bae91a45c20bb41cf5, 14.txt 
;Gui, Add, Button, x182 y299 w100 h30 , Button
;Gui, Add, Text, x32 y119 w100 h30 , ���� ��� �������� ��� token
; Generated using SmartGUI Creator for SciTE
;Gui, Show, w479 h379, Untitled GUI
;return

;GuiClose:
;ExitApp

;Gui, Add, Text, x17 y504 w740 h110 , ���� ��� �������� ��� token
Gui, Add, Edit, x17 y4 w420 h40 , https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=3aa5c203959564955765a5c9cac5fe497c8b97856b32b3adb017d5edaca6c59b8f3bae91a45c20bb41cf5`, 14.txt
Gui, Add, Button, x177 y294 w100 h30 , Button
;Gui, Add, Text, x27 y114 w100 h30 , ���� ��� �������� ��� token
Gui, Add, Text, x12 y69 w220 h30 , ���� ��� �������� ��� token
Gui, Add, Edit, x22 y159 w150 h30 , token ����
; Generated using SmartGUI Creator for SciTE
Gui, Show, w473 h373, Untitled GUI
return

GuiClose:
ExitApp 



;https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=3aa5c203959564955765a5c9cac5fe497c8b97856b32b3adb017d5edaca6c59b8f3bae91a45c20bb41cf5, 14.txt 
token :=3aa5c203959564955765a5c9cac5fe497c8b97856b32b3adb017d5edaca6c59b8f3bae91a45c20bb41cf5
1::
	URLDownloadToFile, https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=%token%, 14.txt
	goto search
    return
    
search:
IfNotExist, %A_ScriptDir%\14.txt
   {
      MsgBox,,, �������� ����� ���, 1
      ExitApp
   }
StringCaseSense, Locale
FindWords := "<user_id>267216581" ; ����������-������
Loop, Read, %A_ScriptDir%\14.txt
   {
      If !A_LoopReadLine
         {
            EmptyString := % A_Index
            CountEmptyStringNum .= ", "EmptyString
            CountEmptyString++
            ;MsgBox, 4,, % "������� ������: "A_Index
            ;          . "`n����������: ��� ������ ������`n`n����������?", 2
         }
      Else
        ; MsgBox, 4,, % "������� ������: "A_Index
         ;          . "`n����������: "A_LoopReadLine "`n`n����������?", 2
      IfMsgBox, No
         Return
   }
Loop, Parse, FindWords, `, ; ����� ����� �� ���� ���� � ����������-�������
   {
      FileRead, OutPutVar, %A_ScriptDir%\14.txt
      IfInString, OutPutVar, % A_LoopField
         {
            CurrentWord := % A_LoopField
            FoundWords .= ", "CurrentWord
            FoundWordsNum++
         }
   }
StringTrimLeft, FoundWords2, FoundWords, 1 ; ������� �������� �������
StringTrimLeft, CountEmptyStringNum2, CountEmptyStringNum, 1 ; ���� �����
;If !CurrentWord
;   MsgBox,,, ����� �� ����������-������� �� �������, 2
;Else
;   MsgBox,,, % "�� ����������-�������`n`n�������: "FoundWords2
;                                    . "`n����������: "FoundWordsNum, 3
;If !EmptyString
;   MsgBox,,, ������ ����� �� ����������, 2
;Else
;   MsgBox,,, % "������� ������ ������`n`n�����: "CountEmptyStringNum2
;                                    . "`n����������: "CountEmptyString, 3
;
if !CurrentWord
{
   MsgBox, , , �� ������
}
else
{
   MsgBox, , , ������ ; �������� ���, �� ���� �������, ����� ������� �����, ��� ��� ��������� �������
   
}
return
