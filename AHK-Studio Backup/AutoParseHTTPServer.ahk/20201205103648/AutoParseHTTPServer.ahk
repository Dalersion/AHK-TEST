#NoEnv 
SendMode Input  
SetWorkingDir %A_ScriptDir%  
#Persistent
#SingleInstance,Force
INI_Path = %A_ScriptDir% ;by Default %A_AppData%/Dalersion/Sites
INI_File := INI_Path . "\Sites.ini"
FileList =
OnExit("exitt")

Loop, %A_ScriptDir%/Sites/*.ahk
	FileList = %FileList%%A_LoopFileName%`n
Loop, parse, FileList, `n
{
	if A_LoopField = 
		continue
	IniWrite,%A_LoopField%, %INI_File%, Sites, %A_Index%
	IniWrite, %A_Index%, %INI_File%, Sites, kolvo
} 

FileDelete, Paths.txt
FileAppend, paths := {}`n, Paths.txt

IniRead, Site_Numb, %INI_File%, Sites, kolvo, 0

if(Site_Numb = 0){
	MsgBox,,ERROR!, 0 Site Pages Found,
	ExitApp, 1
}

loop, %Site_Numb%
{
	IniRead, name,%INI_File%, Sites,%A_index%,
	Text = 
	(
	#Include %A_ScriptDir%\Sites\%name%
	)
	FileAppend, %Text%, Paths.txt,
	FileAppend, `n, Paths.txt
}

loop, %Site_Numb%
{
	IniRead, name2,%INI_File%, Sites,%A_index%,
	loop,parse, name2, .
	{
		global Name
		if A_LoopField=ahk
			continue
		Name:= A_LoopField
	}
	Text = paths["/%name%"] := Func("%name%")`n
	FileAppend, %Text%, Paths.txt
}

ServerStart:
run, HTTP.ahk,,,PID
if PID = 0
{
	Goto,ServerStart
}

if PID != 0
{
	VarSetCapacity(FileList,0,0)
	VarSetCapacity(INI_File,0,0)
	VarSetCapacity(INI_Path,0,0)
	VarSetCapacity(name,0,0)
	VarSetCapacity(name2,0,0)
	VarSetCapacity(Site_Numb,0,0)
	VarSetCapacity(text,0,0)
}

exitt(reason, code)
{
	global PID
	Process, Close, %PID%
	Exit
}