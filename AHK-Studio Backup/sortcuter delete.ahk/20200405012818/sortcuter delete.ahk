F8::
Process, Exist, ShortCuter
if(ErrorLevel !=0)
{
	global ErrorLevel
	Process, Close, ErrorLevel
}
FileDelete,D:\ahkstudio\Projects\ShortCuter.exe
FileDelete,C:\Users\Dalersion\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ShortCuter.exe
return