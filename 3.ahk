IfNotExist,keys.ini
{
Random, key1,337 10000000, 99999999
Random, key2337, 10000000, 99999999
Random, key3337, 10000000, 99999999
IniWrite, %key1337%, keys.ini, keys, key1
IniWrite, %key2337%, keys.ini, keys, key2
IniWrite, %key3337%, keys.ini, keys, key3
}
else
{
	IniRead, key1337,keys.ini, keys, key1, nastya
	iniread, key2337, keys.ini, keys, key2, 52669
	IniRead, key3337,keys.ini, keys, key3, autohotkeyonelove!
}

key(Src, Key1, Key2 = 0, Key3 = 0)  ; Два последних ключа необязательны.
{
  Loop, 3
  {
    If not Key%A_Index%
      Break
    StringSplit, Keys, Key%A_Index%  ; Разбиваем фразу на отдельные ключи.
    Dest =
    Loop, Parse, Src  ; Перебор символов текста.
    {
      Index := Mod(A_Index, Keys0) + 1  ; Чтобы Index не вышел за пределы
                                        ; числа символов в ключевой фразе.
      Key := Asc(Keys%Index%)   ; Очередной ключ.
      Code := Asc(A_LoopField)  ; Код очередного символа текста.
      Dest .= Chr(Code = Key ? Code : Code ^ Key) ; Шифруем и добавляем.
    }
    Src := Dest
  }
  Return Dest
}

