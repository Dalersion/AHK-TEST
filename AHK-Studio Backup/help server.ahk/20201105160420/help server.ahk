#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include AHKhttp.ahk
#Include AHKsock.ahk

;
;          127.0.0.1/get?file=test.ini&section=jopa&key=pizdec
;          127.0.0.1/save?value=hui&file=test.ini&section=jopa&key=pizdec
;

paths := {}
paths["/"] := Func("hello")
paths["/screen"] := Func("Screen")
paths["/volume"] := Func("volume")
paths["/minimize"] := Func("minimize")
paths["/favicon.ico"] := Func("fav")
paths["404"] := Func("NotFound")

server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(8090)
return

Screen(ByRef req, ByRef res,ByRef server)
{
	DetectHiddenWindows, On
	Send, {PRINTSCREEN}
	path := A_AppData . "\Dalersion\temp\tempscreen.jpg"
	FileDelete, %path%
	FileAppend,, %path%
	Run, mspaint %path%,, Hide
	WinWait, tempscreen.jpg - Paint
	PostMessage, 0x111, 57637, 0, , tempscreen.jpg - Paint
	PostMessage, 0x111, 57603, 0, , tempscreen.jpg - Paint
	PostMessage, 0x111, 57665, 0, , tempscreen.jpg - Paint
	WinWaitClose, tempscreen.jpg - Paint
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

fav(ByRef req, ByRef res,ByRef server)
{
	path := "icon3.ico"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

hello(ByRef req, ByRef res,ByRef server)
{
	path := "hello.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

volume(ByRef req, ByRef res,ByRef server)
{