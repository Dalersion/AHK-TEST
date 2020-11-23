#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
ip := "localhost"
time := A_Now
URLDownloadToFile, https://pastebin.com/raw/L6JRcLMh, %A_AppData%\Dalersion\temp%time%.txt
FileRead, ip, %A_AppData%\Dalersion\temp%time%.txt
;https://pastebin.com/raw/L6JRcLMh
;ip := "185.219.168.254"
#Include <net_component>


out := save("hui","jopa","pizda","suka")
MsgBox,,,%out%
out := get("jopa","pizda","suka")
MsgBox,,,%out%

