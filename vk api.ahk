1::
	URLDownloadToFile, https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=adff36575732b9c05a9e20a2d40774d3fe144a9a5d667f54b4bf74b886f23ce4ed9d102d12aa313db3329, 14.txt
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
{}
else
{
   MsgBox, , , ������
}
return