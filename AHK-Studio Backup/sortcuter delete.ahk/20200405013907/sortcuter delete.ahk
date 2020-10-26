F8::
Process, Exist, ShortCuter.exe
jopa = %ErrorLevel%
if(jopa !=0)
{
	global jopa
	Process, Close, %jopa%
}
FileDelete,D:\ahkstudio\Projects\ShortCuter.exe
FileDelete,C:\Users\Dalersion\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ShortCuter.exe
return


F3::
run, C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe /in ShortCuter.ahk /out ShortCuter.exe /icon ShortCuter.ico
return