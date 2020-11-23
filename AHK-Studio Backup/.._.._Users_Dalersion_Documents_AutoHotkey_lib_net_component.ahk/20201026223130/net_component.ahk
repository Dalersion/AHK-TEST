save(Value,file,section,key)
{
	global ip
	name := %A_Index%
	file := file . ".ini"
	host = http://%ip%/save?value=%value%&file=%file%&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send()
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText
	return %ResponseText%
}
get(variable="somevar",file,section,key)
{
	global ip
	name := %A_Index%
	file := file . ".ini"
	host = http://%ip%/get?file=%file%&section=%section%&key=%key%
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1") 
	whr.Open("GET", host, true) 
	whr.Send()
	whr.WaitForResponse() 
	ResponseText := whr.ResponseText
	if(ResponseText != )
		%variable% := ResponseText
	else
		%variable% := 0
	return %ResponseText%
}