﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include AHKhttp.ahk
#Include AHKsock.ahk


;global vol_level
;global vol_State


IfNotExist, %A_AppData%/Dalersion
{
	FileCreateDir, %A_AppData%/Dalersion/
}
FileInstall, icon2.ico, %A_AppData%/Dalersion/helper_ico.ico
menu, tray, icon, %A_AppData%/Dalersion/helper_ico.ico
win_minimized = 0
SoundGetWaveVolume, vol_level
IfnotExist,helper.ini
{
	IniWrite, %vol_level%, helper.ini, Volume, LastVolumeLevel
}
IfExist,helper.ini
{
	IniRead, vol_level, helper.ini,Volume,LastVolumeLevel, 69
}
if(vol_level != 0)
{
	vol_State = 1
}
else
{
	vol_State = 0
}

paths := {}
paths["/"] := Func("hello")
paths["/screen"] := Func("Screen")
paths["/volume"] := Func("volume")
paths["/minimize"] := Func("minimize")
paths["/favicon.ico"] := Func("fav")
paths["/favicon.png"] := Func("fav2")
paths["/redir"] := Func("redir")
paths["/rand"] := Func("porn")
paths["/porne"] := Func("porne")
paths["/porner"] := Func("porner")
paths["/pornere"] := Func("pornere")
paths["/ini.ini"] := Func("UploadIni")
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

fav2(ByRef req, ByRef res,ByRef server)
{
	path := "icon3.png"
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
	if(vol_State = 1)
	{
		IniRead, vol_inilevel, helper.ini,Volume,LastVolumeLevel
		SoundGetWaveVolume, vol_level
		if(vol_level != vol_inilevel)
		{
			IniWrite, %vol_level%, helper.ini, Volume, LastVolumeLevel
		}
		SoundSetWaveVolume, 0
		vol_State = 0
		return
	}
	else
	{
		IniRead, vol_level, helper.ini,Volume,LastVolumeLevel, 69
		SoundSetWaveVolume, %vol_level%
		vol_State = 1
		return
	}
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

minimize(ByRef req, ByRef res,ByRef server)
{
	if(win_minimized = 0)
	{
		WinMinimizeAll 
		win_minimized = 1
	}
	else
	{
		WinMinimizeAllUndo
		win_minimized = 0
	}
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

redir(ByRef req, ByRef res,ByRef server)
{
	FileDelete, redir.html
	numb:= req.queries["Number"] 
	if(numb = "")
	{
		server.ServeFile(res, "input.html")
	}
	else{
		responsetext = 
		(
		<html>
	<head>
	<title>Cum zone</title>
	<style>
		body {
			background-color:#333;
			color:red;
			display: block;
			margin:150;
			text-align: center;
		}
	</style>
	</head>
	<body>
		<a href="/porne?numb=%numb%" ><span style="color: #f61212;">redir</span></a>
	</body>
</html>
		)
		FileAppend, %responsetext%, redir.html
		path := "redir.html"
		server.ServeFile(res,path)
		mime:=server.GetMimeType(path)
		response.headers["Content-Type"]:=mime
		res.status := 200
		return
	}
	res.status := 200
	return
}

porn(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global numb
	global aeskey
	global bit
	Random,numb,0,%ini_nimber%
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%  ;G:\фоточки\%Vname%
	if(crypt = 1)
	{
		Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	}
	Vname = G:\фоточки\%Vname1%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


porne(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global aeskey
	global bit
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	if(crypt = 1)
	{
		Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	}
	Vname = G:\фоточки\%Vname1%
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


porner(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global responsetext
	global aeskey
	global bit
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	if(crypt = 1)
	{
		Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	}
	Vname = G:\фоточки\%Vname1%
	responsetext = 
	(
	%Vname1%</pre>
	<video src="porne?numb=%numb%" width="480" height="270" controls=""></video>
	<pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname%
	)
	response.SetBodytext(responsetext)
	;response.headers["Content-Type"]:= "text"
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


pornere(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global ini_nimber
	global Vname
	global server
	global mime
	global aeskey
	global bit
	numb:= request.queries["numb"]
	IniRead, Vname1, %A_AppData%/Dalersion/porner.ini, list, %numb%
	if(crypt = 1)
	{
		Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	}
	Vname = G:\фоточки\%Vname1%
	FileDelete, 1.html
	responsetext = 
	(
	<pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname1%</pre>
	<video src="porne?numb=%numb%" width="1280 " height="720" controls=""></video>
	<pre style="word-wrap: break-word; white-space: pre-wrap;">%Vname%</pre>
	)
	FileAppend, %responsetext%, 1.html
	Vname = 1.html
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(numb "    " Vname "    " mime)
}


UploadIni(ByRef request, ByRef response) 
{
	loggg(A_ThisFunc)
	global Vname
	global server
	global mime
	Vname = %A_AppData%/Dalersion/porner.ini
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(Vname "    " mime)
}