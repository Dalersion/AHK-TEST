#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include <AES crypt>
#Include <net_component>

ip:=localhost

Text := "жопный сифилис"
file := "messages"
mess_numb:=get(%file%, "misc", "number")
jopa:=save(%Text%, %file%, "messages", %key%)
mess_numb++
jopa:=save(%mess_numb%, %file%, "misc", %key%)