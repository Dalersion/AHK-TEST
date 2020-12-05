#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include AHKhttp.ahk
#Include AHKsock.ahk

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
	responses := req.queries["jopa"] . " suka"
	res.SetBodyText(responses)
	res.status := 200
	return
}

save(ByRef req, ByRef res)
{
	
	res.SetBodyText(responses)
	res.status := 200
	return
}