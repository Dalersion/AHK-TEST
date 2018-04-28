; Шифр инклуд юзаже: Cipher(переменная с текстом, Key1, Key2 = 0, Key3 = 0)
; =============== Функция шифровки/дешифровки ====================

Cipher(Src, Key1, Key2 = 0, Key3 = 0)  ; Два последних ключа необязательны.
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