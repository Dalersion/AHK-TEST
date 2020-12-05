F8::
Process, Exist, ShortCuter
jopa = %ErrorLevel%
if(jopa !=0)
{
	global jopa
	Process, Close, %jopa%
}
FileDelete,D:\ahkstudio\Projects\ShortCuter.exe
FileDelete,C:\Users\Dalersion\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ShortCuter.exe
return