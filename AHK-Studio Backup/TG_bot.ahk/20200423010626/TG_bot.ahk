#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent


token = 476853906:AAE3RUk5JP0DKRI904wJ7nWWboPYBV1v4qQ


URLDownloadToFile, https://api.telegram.org/bot%token%/getUpdates, 1.txt