;Gui, Add, Text, x22 y509 w740 h110 , надо крч получить тут token
;Gui, Add, Edit, x22 y9 w420 h40 ,https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=3aa5c203959564955765a5c9cac5fe497c8b97856b32b3adb017d5edaca6c59b8f3bae91a45c20bb41cf5, 14.txt 
;Gui, Add, Button, x182 y299 w100 h30 , Button
;Gui, Add, Text, x32 y119 w100 h30 , надо крч получить тут token
; Generated using SmartGUI Creator for SciTE
;Gui, Show, w479 h379, Untitled GUI
;return

;GuiClose:
;ExitApp

;Gui, Add, Text, x17 y504 w740 h110 , надо крч получить тут token
Gui, Add, Edit, x17 y4 w420 h40 , https://api.vk.com/method/friends.getOnline.xml?v=5.52&access_token=3aa5c203959564955765a5c9cac5fe497c8b97856b32b3adb017d5edaca6c59b8f3bae91a45c20bb41cf5`, 14.txt
Gui, Add, Button, x177 y294 w100 h30 , Button
;Gui, Add, Text, x27 y114 w100 h30 , надо крч получить тут token
Gui, Add, Text, x12 y69 w220 h30 , надо крч получить тут token
Gui, Add, Edit, x22 y159 w150 h30 , token суда
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
      MsgBox,,, Искомого файла нет, 1
      ExitApp
   }
StringCaseSense, Locale
FindWords := "<user_id>267216581" ; переменная-фильтр
Loop, Read, %A_ScriptDir%\14.txt
   {
      If !A_LoopReadLine
         {
            EmptyString := % A_Index
            CountEmptyStringNum .= ", "EmptyString
            CountEmptyString++
            ;MsgBox, 4,, % "Читение строки: "A_Index
            ;          . "`nСодержание: это пустая строка`n`nПродолжить?", 2
         }
      Else
        ; MsgBox, 4,, % "Читение строки: "A_Index
         ;          . "`nСодержание: "A_LoopReadLine "`n`nПродолжить?", 2
      IfMsgBox, No
         Return
   }
Loop, Parse, FindWords, `, ; поиск слова из чила слов в переменной-фильтре
   {
      FileRead, OutPutVar, %A_ScriptDir%\14.txt
      IfInString, OutPutVar, % A_LoopField
         {
            CurrentWord := % A_LoopField
            FoundWords .= ", "CurrentWord
            FoundWordsNum++
         }
   }
StringTrimLeft, FoundWords2, FoundWords, 1 ; обрезка ненужной запятой
StringTrimLeft, CountEmptyStringNum2, CountEmptyStringNum, 1 ; тоже самое
;If !CurrentWord
;   MsgBox,,, Слова из переменной-фильтра не найдены, 2
;Else
;   MsgBox,,, % "Из переменной-фильтра`n`nнайдено: "FoundWords2
;                                    . "`nколичество: "FoundWordsNum, 3
;If !EmptyString
;   MsgBox,,, Пустых строк не обнаружено, 2
;Else
;   MsgBox,,, % "Имеются пустые строки`n`nномер: "CountEmptyStringNum2
;                                    . "`nколичество: "CountEmptyString, 3
;
if !CurrentWord
{
   MsgBox, , , Не онлине
}
else
{
   MsgBox, , , Онлине ; Тестовый мсг, не хочу убирать, вдруг поможет потом, тут гуи правильно ставить
   
}
return
