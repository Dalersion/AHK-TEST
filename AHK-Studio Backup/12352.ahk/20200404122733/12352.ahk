#Include %A_ScriptDir%/console.ahk
global console = new BensConsole()
console.setLocation("%A_ScriptDir%/console.log")
console.log("Look, mom, I'm logging something to a console!")
logg("That's nice, dear.")