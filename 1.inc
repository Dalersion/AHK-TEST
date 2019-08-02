; ���� ������ �����: Cipher(���������� � �������, Key1, Key2 , Key3)
; =============== ������� ��������/���������� ====================

Cipher(Src, Key1, Key2 = 0, Key3 = 0)  ; ��� ��������� ����� �������������.
{
  Loop, 3
  {
    If not Key%A_Index%
      Break
    StringSplit, Keys, Key%A_Index%  ; ��������� ����� �� ��������� �����.
    Dest =
    Loop, Parse, Src  ; ������� �������� ������.
    {
      Index := Mod(A_Index, Keys0) + 1  ; ����� Index �� ����� �� �������
                                        ; ����� �������� � �������� �����.
      Key := Asc(Keys%Index%)   ; ��������� ����.
      Code := Asc(A_LoopField)  ; ��� ���������� ������� ������.
      Dest .= Chr(Code = Key ? Code : Code ^ Key) ; ������� � ���������.
    }
    Src := Dest
  }
  Return Dest
}