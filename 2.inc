keys(Key1, Key2 = 0, Key3 = 0)  ; Два последних ключа необязательны.
{
  Loop, 3
  {
    If not Key%A_Index%
		key2=nastya
		key3=52669
      Break
  }
  dest1:=key1
  dest2:=key2
  dest3:=key3
  Return Dest1, dest2, dest3
}