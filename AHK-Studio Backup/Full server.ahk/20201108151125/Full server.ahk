#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Force
#Include <AHKhttp>
#Include <AHKsock>
#Include <console>
#Include <AES crypt>
start_time:=A_Now

OnExit, exitt

IfNotExist, %A_AppData%/Dalersion
{
	FileCreateDir, %A_AppData%\Dalersion
	FileCreateDir, %A_AppData%\Dalersion\logs
	FileCreateDir, %A_AppData%/Dalersion/ShortCuter
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,numb
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path1
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path2
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path3
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path4
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path5
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path6
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path7
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path8
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path9
	IniWrite, 0,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,path10
	IniWrite, 1,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name1
	IniWrite, 2,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name2
	IniWrite, 3,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name3
	IniWrite, 4,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name4
	IniWrite, 5,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name5
	IniWrite, 6,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name6
	IniWrite, 7,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name7
	IniWrite, 8,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name8
	IniWrite, 9,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name9
	IniWrite, 10,%A_AppData%/Dalersion/ShortCuter/settings.ini,1,name10
}
FileAppend, App starting`n, %A_AppData%\Dalersion\logs\log%start_time%.txt
FileInstall, icon2.ico, %A_AppData%/Dalersion/helper_ico.ico
menu, tray, icon, %A_AppData%/Dalersion/helper_ico.ico
IniRead,tray_number, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, numb
IniRead,tray_name1, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name1
IniRead,tray_name2, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name2
IniRead,tray_name3, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name3
IniRead,tray_name4, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name4
IniRead,tray_name5, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name5
IniRead,tray_name6, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name6
IniRead,tray_name7, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name7
IniRead,tray_name8, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name8
IniRead,tray_name9, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, name9
IniRead,tray_name10, %A_AppData%/Dalersion/ShortCuter/settings.ini,1,name10
IniRead,tray_path1, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path1
IniRead,tray_path2, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path2
IniRead,tray_path3, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path3
IniRead,tray_path4, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path4
IniRead,tray_path5, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path5
IniRead,tray_path6, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path6
IniRead,tray_path7, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path7
IniRead,tray_path8, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path8
IniRead,tray_path9, %A_AppData%/Dalersion/ShortCuter/settings.ini,1, path9
IniRead,tray_path10, %A_AppData%/Dalersion/ShortCuter/settings.ini, 1,path10
win_minimized = 0
SoundGetWaveVolume, vol_level
IfnotExist,%A_AppData%\Dalersion\full.ini
{
	IniWrite, %vol_level%, %A_AppData%\Dalersion\full.ini, Volume, LastVolumeLevel
}
IfExist,%A_AppData%\Dalersion\full.ini
{
	IniRead, vol_level, %A_AppData%\Dalersion\full.ini,Volume,LastVolumeLevel, 69
}
if(vol_level != 0)
{
	vol_State = 1
}
else
{
	vol_State = 0
}

if(%0% >= 1)
{
	if( %1% = 0)
	{
		crypt = 0
	}
	else
	{
		;crypt = 1
		InputBox,crypt, Загадка дыры, Шифровать ли название через AES алгоритм.`nПо стандарту не шифруется`n1 - шифровать`n0 - не шифровать,,,,,,,,0
	}
}
else
{
	IniRead, AutoExec, %A_AppData%\Dalersion\full.ini,Misc,AutoExec,0
	if(AutoExec == 1)
	{
		crypt = 1
	}
	else
	{	
		;crypt = 1
		InputBox,crypt, Загадка дыры, Шифровать ли название через AES алгоритм.`nПо стандарту не шифруется`n1 - шифровать`n0 - не шифровать,,,,,,,,0		
	}
	
}
loggg(str)
{	
	global cons_Hidded
	global start_time
	str := "[" . A_Hour . ":"  . A_Min . ":" . A_sec . "]" . str
	logg(str)
	logg("\hide")
	FileAppend, %str%`n, %A_AppData%\Dalersion\logs\log%start_time%.txt,
	cons_Hidded = 1
	return
}
ini_nimber := 0

loop, G:\фоточки\*.mp4
	FileList = %FileList%%A_LoopFileName%`n
loop, G:\фоточки\*.3gp
	FileList = %FileList%%A_LoopFileName%`n
loop, G:\фоточки\*.wmv
	FileList = %FileList%%A_LoopFileName%`n
loop, G:\фоточки\*.avi
	FileList = %FileList%%A_LoopFileName%`n
IniRead, bit, %A_AppData%/Dalersion/full.ini, Misc, bit
IniRead, aeskey, %A_AppData%/Dalersion/full.ini, Misc, key
;Pause,On
Loop, parse, FileList, `n
{
	if A_LoopField =  ; Игнорировать пустую строку в конце списка.                   
		continue
		;FileList = %FileList%`n
	global ini_nimber
	global key
	global bit
	if(crypt = 1)
	{
		write:=AES.Encrypt(A_LoopField, aeskey, bit)
		IniWrite, %write%, %A_AppData%/Dalersion/full.ini,List,%ini_nimber%
	}
	else
	{
		IniWrite, %A_LoopField%, %A_AppData%/Dalersion/full.ini,List,%ini_nimber%
	}
	ini_nimber:= ini_nimber + 1
	IniWrite, %ini_nimber%, %A_AppData%/Dalersion/full.ini, Misc, 1
}

ini_nimber := ini_nimber - 1
IniWrite, %ini_nimber%, %A_AppData%/Dalersion/full.ini, Misc, 1

paths := {}
paths["/"] := Func("hello")
paths["/screen.jpg"] := Func("Screen")
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
paths["/shutdown"] := Func("shutdown")
paths["/sleep"] := Func("sleep")
paths["/reload"] := Func("reload")
paths["/shortcuter"] := Func("shortcuter")
paths["404"] := Func("NotFound")

server := new HttpServer()
server.LoadMimes(A_ScriptDir . "/mime.types")
server.SetPaths(paths)
server.Serve(8090)
loggg("Сервер Стартовал")
return

Screen(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
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
	loggg(A_ThisFunc)
	path := "icon3.ico"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

fav2(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	path := "icon3.png"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

hello(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	path := "hello.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

volume(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	Gosub, volume
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

minimize(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	Gosub, minimize
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	return
}

redir(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
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
	global crypt
	Random,numb,0,%ini_nimber%
	IniRead, Vname1, %A_AppData%/Dalersion/full.ini, list, %numb%  ;G:\фоточки\%Vname%
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
	global crypt
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/full.ini, list, %numb%
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
	global crypt
	numb:= request.queries["numb"]  
	IniRead, Vname1, %A_AppData%/Dalersion/full.ini, list, %numb%
	if(crypt = 1)
	{
		Vname1:=aes.Decrypt(Vname1, aeskey,bit)
	}
	Vname = G:\фоточки\%Vname1%
	run, %Vname%
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
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
	global crypt
	numb:= request.queries["numb"]
	IniRead, Vname1, %A_AppData%/Dalersion/full.ini, list, %numb%
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
	Vname = %A_AppData%/Dalersion/full.ini
	mime:=server.GetMimeType(Vname)
	response.headers["Content-Type"]:=mime
	server.ServeFile(response, Vname)
	response.status := 200
	loggg(Vname "    " mime)
}

shutdown(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	sleep, 1000
	shutdown, 1
}

sleep(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	sleep, 1000
	DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 1)
}

reload(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	path := "sucess.html"
	server.ServeFile(res,path)
	mime:=server.GetMimeType(path)
	response.headers["Content-Type"]:=mime
	res.status := 200
	sleep, 1000
	reload
}

shortcuter(ByRef req, ByRef res,ByRef server)
{
	loggg(A_ThisFunc)
	number:= req.queries["Number"] 
	if(number = "")
	{
		server.ServeFile(res, "input.html")
	}
	else{
		sc(%number%)
		path := "sucess.html"
		server.ServeFile(res,path)
		mime:=server.GetMimeType(path)
		response.headers["Content-Type"]:=mime
		res.status := 200
		return
	}
	res.status := 200
	return
}

sc(numb)
{
	path:= "tray_path" . numb
	run, %path%
}


sc29::
{
	if(cons_Hidded = 1)
	{
		global cons_Hidded
		logg("\show")
		cons_Hidded = 0
		return
	}
	else
	{
		global cons_Hidded
		logg("\hide")
		cons_Hidded = 1
		return
	}
	return
}



volume:
{
	if(vol_State = 1)
	{
		global vol_level
		global vol_State
		IniRead, vol_inilevel, %A_AppData%\Dalersion\full.ini,Volume,LastVolumeLevel
		SoundGetWaveVolume, vol_level
		if(vol_level != vol_inilevel)
		{
			global vol_level
			IniWrite, %vol_level%, %A_AppData%\Dalersion\full.ini, Volume, LastVolumeLevel
		}
		SoundSetWaveVolume, 0
		vol_State = 0
		return
	}
	else
	{
		global vol_level
		global vol_State
		IniRead, vol_level, %A_AppData%\Dalersion\full.ini,Volume,LastVolumeLevel, 69
		SoundSetWaveVolume, %vol_level%
		vol_State = 1
		return
	}
	return
}

minimize:
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
	return
}



exitt: ;(reason, code)
{
	reason := A_ExitReason
	FileAppend, %A_ThisLabel%, %A_AppData%\Dalersion\logs\log%start_time%.txt
	if A_ExitReason not in Logoff,Shutdown ; Не ставьте пробелы до и после запятой.
	{
		global crypt
		IniWrite, %crypt%, %A_AppData%\Dalersion\full.ini, Misc, AutoExec 
		ExitApp
	}
	ExitApp
	/*
		reason := A_ExitReason
		FileAppend, %A_ThisLabel%, %A_AppData%\Dalersion\logs\log%start_time%.txt
		Pause, On
		if(reason = "Reload")
		{
			global crypt
			IniWrite, %crypt%, %A_AppData%\Dalersion\full.ini, Misc, AutoExec 
		}
		else 
		{
			if(reason = "Single")
			{
				IniWrite, %crypt%, %A_AppData%\Dalersion\full.ini, Misc, AutoExec 
			}
			else
			{
				ExitApp
			}
			ExitApp
		}
		ExitApp
	*/
}