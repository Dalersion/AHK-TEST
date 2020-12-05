#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include AHKhttp.ahk
#Include AHKsock.ahk

;
;          127.0.0.1/get?value=hui&file=test.ini&section=jopa&key=pizdec
;          127.0.0.1/save?file=test.ini&section=jopa&key=pizdec
;

paths := {}
paths["/get"] := Func("get")
paths["/save"] := Func("save")
paths["404"] := Func("NotFound")

server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(80)
return

get(ByRef req, ByRef res)
{
	string2 := req.queries["file"]
	string3 := req.queries["section"]
	string4 := req.queries["key"]
	Iniread, responses, %string2%, %string3%, %string4%, 
	res.SetBodyText(responses)
	res.status := 200
	return
}

save(ByRef req, ByRef res)
{
	string1 := req.queries["value"]
	string2 := req.queries["file"]
	string3 := req.queries["section"]
	string4 := req.queries["key"]
	IniWrite, %string1%, %string2%, %string3%, %string4%
	responses := Succes
	res.SetBodyText(responses)
	res.status := 200
	return
}