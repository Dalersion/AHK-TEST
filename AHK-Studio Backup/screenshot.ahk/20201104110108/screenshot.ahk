#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



F12::
;�������� �� �������� ������
DetectHiddenWindows, On
;������ ������ ������
Send, {PRINTSCREEN} ; ������ ����� ������ (PrtSc)
;Send, !{PRINTSCREEN} ; ������ ��������� ���� (Alt + PrtSc)
;������ ������ ����
FileAppend,, C:\PrScr.bmp
;��������� ������ ���� � ������� ���� Paint
Run, mspaint C:\PrScr.bmp,, Hide
;��� ������� Paint
WinWait, PrScr.bmp - Paint
;������� ���� "������" - "��������"
PostMessage, 0x111, 57637, 0, , PrScr.bmp - Paint
;������� ���� "����" - "���������"
PostMessage, 0x111, 57603, 0, , PrScr.bmp - Paint
;������� ���� "����" - "�����"
PostMessage, 0x111, 57665, 0, , PrScr.bmp - Paint
;��� ���������� ������ Paint
WinWaitClose, PrScr.bmp - Paint