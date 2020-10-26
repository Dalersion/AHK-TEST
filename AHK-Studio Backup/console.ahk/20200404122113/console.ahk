;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Ben's Console, V 1.1.1             ;
; Contact: ahk@benjamin-philipp.com  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

class BensConsole
{
	; exposed in __NEW constructor
	consolecol := "000000"
	fontcol := "15bb10"
	textBackgroundCol := "000000"
	opacity := 180
	fontsize := 10
	titlebar := true
	topToBottom := true
	prependDate := true
	animate := false
	clearOnClose := true
	alwaysFlushToDisk := false
	enableCommands := true
	consoleMode := false
	logCommands := true
	nameInLog := false
	
	; User changable
	maxHeight := 1050
	minHeight := 150
	width := 500
	padding := 5
	posX := 0
	posY := 0
	
	; best don't touch
	consid := 0
	LogContsID := ""
	LogContents := ""
	consslid := true
	logloc := A_WorkingDir . "\AHK_LOG.log"
	conshide := false
	startpos := 0
	ctH := 0
	oH := 0
	maxTextHeight := 0
	minTextHeight := 0
	winHeightAdd := 0
	winAbsMinHeight := 0
	allset := false
	myName := ""
	myTitle := "AHK Console"
	myGUIName := "AHK_Console"
	ctit := ""
	; End of variable declarations
	
	setTitle(name)
	{
		this.myName := name
		this.ctit := this.myName != "" ? this.myName . ": " : ""
		this.myTitle := this.ctit . "AHK Console"
		varsafename := RegExReplace(this.myTitle, "i)([^\w]+)", "_")
		if inStr("0123456789", substr(varsafename, 1,1))
			varsafename := "v" . varsafename
		this.myGUIName := varsafename
	}
	
	setLocation(path)
	{
		this.logloc := path
	}

	__New(name = "", color = "000000", fontColor = "15bb10", textBackgroundCol = "000000", opacity = 180, fontsize = 10, titlebar = true, topToBottom = false, prependDate = true, animate = false, clearOnClose = true, alwaysFlushToDisk = false, enableCommands = true, consoleMode = false, logCommands = true, nameInLog = false)
	{
		if(isObject(name))
		{
			this.setTitle(name.name)
			this.consolecol := name.color
			this.fontcol := name.fontColor
			this.textBackgroundCol := name.textBackgroundCol
			this.opacity := name.opacity
			this.fontsize := name.fontsize
			this.topToBottom := name.topToBottom
			this.prependDate := name.prependDate
			this.animate := name.animate
			this.clearOnClose := name.clearOnClose
			this.titlebar := name.titlebar
			this.alwaysFlushToDisk := name.alwaysFlushToDisk
			this.enableCommands := name.enableCommands
			this.consoleMode := name.consoleMode
			this.logCommands := name.logCommands
			this.nameInLog := name.nameInLog
		}
		else
		{
			this.setTitle(name)
			this.consolecol := color
			this.fontcol := fontColor
			this.textBackgroundCol := textBackgroundCol
			this.opacity := opacity
			this.fontsize := fontsize
			this.topToBottom := topToBottom
			this.prependDate := prependDate
			this.animate := animate
			this.clearOnClose := clearOnClose
			this.titlebar := titlebar
			this.alwaysFlushToDisk := alwaysFlushToDisk
			this.enableCommands := enableCommands
			this.consoleMode := consoleMode
			this.logCommands := logCommands
			this.nameInLog := nameInLog
		}
	}
	

	log(msg)
	{
		tv := false
		if(this.enableCommands && ! this.logCommands)
		{
			tv := this.doEvals(msg)
		}
		if(tv != false)
			return
		
		omsg := msg
		
		if(this.nameInLog)
			msg := this.ctit . msg
		
		if(this.prependDate)
			msg := this.DateString() . ": " . msg
		if(this.alwaysFlushToDisk)
		{
			FileRead, lc, % this.logloc
			this.LogContents := lc
			FileDelete, % this.logloc
		}
		
		if(this.LogContents != "")
		{
			if(this.topToBottom)
			{
				this.LogContents := msg . "`r`n" . this.LogContents
				; msgbox, ttb
			}
			else
			{
				this.LogContents := this.LogContents . "`r`n" . msg
				; msgbox, btt
			}
		}
		else
		{
			; msgbox, no content yet...
			this.LogContents := msg
		}
		; msgbox, % "result: `n" this.LogContents
		
		if(this.alwaysFlushToDisk)
		{
			FileAppend, % this.LogContents, % this.logloc
		}
		
		if(this.consid == 0)
		{
			this.buildGui()
			; this.setTextHeight(20)
			; this.doSizePos()
		}
		else
		{
			if(this.conshide)
			{
				; WinShow, % "ahk_id " this.consid
				gui, % this.myGUIName ": show", % "x" this.posX " y" this.posY " NoActivate"
				this.conshide := false
			}
			this.applyContents()
		}
		
		
		if(this.enableCommands && this.logCommands)
			this.doEvals(omsg)
		
	} ; END log
	
	buildGui()
	{
		; +E0x20 ; <-- click through!
		GUI, % this.myGUIName ": New", +Lastfound +AlwaysOnTop +ToolWindow +E0x08000000, % this.myTitle ; 
		gui, % this.myGUIName ": color", % this.consolecol
		WinSet, Transparent, % this.opacity
		Gui, % this.myGUIName ": -Caption"
		Gui, % this.myGUIName ": Color",, % this.textBackgroundCol
		this.startpos := this.padding
		if(this.titlebar)
		{	
			Gui, % this.myGUIName ": Font", S8 bold
			tmw := this.width - 2* this.padding
			global titbar
			Gui, % this.myGUIName ": Add", Text, % "x" this.padding " y" this.padding " w" tmw " h15 c" this.fontcol " vtitbar", % this.myTitle
			this.startpos := 15 + 2* this.padding 
		}
		
		cbuy := this.startpos
		cbuwi := 17
		cbuhe := 14
		cbux := this.width - cbuwi - this.padding
		
		gui, % this.myGUIName ": Font", S7 norm center
		gui, % this.myGUIName ": Add", button, w%cbuwi% h%cbuhe% x%cbux% y%cbuy% hwndtbutt, _
		fn := this.minimize.Bind(this)
		GuiControl +g, %tbutt%, % fn
		cbuy += 18
		gui, % this.myGUIName ": Add", button, w%cbuwi% h%cbuhe% x%cbux% y%cbuy% hwndtbutt, <
		fn := this.slide.Bind(this)
		GuiControl +g, %tbutt%, % fn
		cbuy += 18
		gui, % this.myGUIName ": Add", button, w%cbuwi% h%cbuhe% x%cbux% y%cbuy% hwndtbutt, C
		fn := this.clear.Bind(this)
		GuiControl +g, %tbutt%, % fn
		cbuy += 18
		gui, % this.myGUIName ": Add", button, w%cbuwi% h%cbuhe% x%cbux% y%cbuy% hwndtbutt, S
		fn := this.save.Bind(this)
		GuiControl +g, %tbutt%, % fn
		cbuy += 18
		gui, % this.myGUIName ": Add", button, w%cbuwi% h%cbuhe% x%cbux% y%cbuy% hwndtbutt, O
		fn := this.open.Bind(this)
		GuiControl +g, %tbutt%, % fn
		cbuy += 18
		gui, % this.myGUIName ": Add", button, w%cbuwi% h%cbuhe% x%cbux% y%cbuy% hwndtbutt, X
		fn := this.close.Bind(this)
		GuiControl +g, %tbutt%, % fn
		
		absminh := cbuy + cbuhe - this.padding
		if this.minHeight < absminh
			this.minHeight := absminh
			
		this.tWmax := this.width - (2*this.padding) - 25
		Gui, % this.myGUIName ": Font", % "S" this.fontsize, Consolas
		Gui, % this.myGUIName ": Add", Edit, % "x" this.padding " y" this.startpos " w" this.tWmax " +Multi c" this.fontcol " -VScroll -E0x200 HwndtLogContsID", % this.LogContents
		this.LogContsID := tLogContsID
		gui, % this.myGUIName ": show", % "x" this.posX " y" this.posY " autosize NoActivate"
		gui, % this.myGUIName ": +LastFound"
		this.consid := WinExist()
		
		WinGetPos,,,,mbH, % "ahk_id " this.consid
		this.winAbsMinHeight := mbH
		this.setMaxTextHeight()
		
		clickdrag := ObjBindMethod(this, "drag")
		OnMessage(0x201, clickdrag) ; WM_LBUTTONDOWN
		
		moving := ObjBindMethod(this, "moving")
		OnMessage(0x03, moving) ; WM_MOVE
		; OnMessage(0x0047, moving) ; WINDOWPOSCHANGED
		
		; applyContents()
	}
	
	applyContents()
	{
		; controlRemove(this.Ghost)
		Gui, % this.myGUIName ": Font", % "S" this.fontsize, Consolas
		Gui, % this.myGUIName ": Add", Edit, % "x" this.padding " y" this.startpos " w" this.tWmax " +Hidden -VScroll -E0x200 HwndtGhost", % this.LogContents
		this.Ghost := tGhost
		ControlGetPos,,,, ctH,, % "ahk_id " this.Ghost
		SendMessage, 0x10,,,, % "ahk_id " this.Ghost
		
		GuiControl, Text, % this.LogContsID, % this.LogContents
		
		this.setTextHeight(ctH)
		
		if(this.topToBottom)
			postMessage,0x115,0x6,,,% "ahk_id " this.LogContsID ; WM_VSCROLL = 0x0115 ; controlsend,, ^{home}, % "ahk_id " this.LogContsID
		else
			postMessage,0x115,0x7,,,% "ahk_id " this.LogContsID ; WM_VSCROLL = 0x0115 ; controlsend,, ^{end}, % "ahk_id " this.LogContsID
		
		
	}
	
	setTextHeight(num)
	{
		; msgbox, % "in: " num
		this.ctH := num > this.maxTextHeight ? this.maxTextHeight : num
		; this.ctH := this.ctH < this.minTextHeight ? this.minTextHeight : this.ctH
		; msgbox, % "out: " this.ctH
		if(this.ctH != this.oH)
		{
			ControlMove,,,,,this.ctH, % "ahk_id " this.LogContsID
			this.oH := this.ctH
			if (this.ctH + this.winHeightAdd > this.winAbsMinHeight)
				winmove, % "ahk_id " this.consid,,,,,% this.ctH + this.winHeightAdd
			; this.allset := false
		}
	}
		
	setMaxTextHeight()
	{
		this.winHeightAdd := this.startpos + this.padding
		this.maxTextHeight := this.maxHeight-this.winHeightAdd
		; this.minTextHeight := this.minHeight-this.winHeightAdd
	}
	
	doSizePos(isUpdate = false)
	{
		; capTextHeight()
		
		; if(this.ctH != this.oH)
		; {
			; if this.ctH < this.minHeight
			; {
				; this.ctH := this.minHeight
			; }
			; this.oH := this.ctH
			; winmove, % "ahk_id " this.consid,,,,,% this.ctH + this.startpos + this.padding
		; }
		
	}
	
	position(x="",y="")
	{
		if(x!="")
			this.posX := x
		if(y!="")
			this.posY := y
		WinMove, % "ahk_id " this.consid,,% this.posX,% this.posY
	}
	
	setX(x)
	{
		this.position(x)
	}
	
	setY(y)
	{
		this.position(,y)
	}
	
	doEvals(msg)
	{
		cmd := this.explode(msg, ",")
		if(cmd.MaxIndex()<1 || subStr(msg, 1, 1) != "\")
			return false
			
		; why does AHK not support SWITCH statements yet? :(
		if(this.toLower(cmd[1]) == "\close")
			this.close()
		else if(this.toLower(cmd[1]) == "\hide")
			this.minimize()
		else if(this.toLower(cmd[1]) == "\show")
			this.restore()
		else if(this.toLower(cmd[1]) == "\save")
			this.save()
		else if(this.toLower(cmd[1]) == "\view")
			this.open()
		else if(this.toLower(cmd[1]) == "\setx")
			this.setX(cmd[2])
		else if(this.toLower(cmd[1]) == "\sety")
			this.setY(cmd[2])
		else if(this.toLower(cmd[1]) == "\setpos")
			this.position(cmd[2], cmd[3])
		else if(this.toLower(cmd[1]) == "\rep")
			msgbox, % this.posX ", " this.posY
		else
			return false
	}

	minimize(){
		WinHide, % "ahk_id " this.consid
		this.conshide := true
	}
	
	restore(){
		; WinShow, % "ahk_id " this.consid
		gui, % this.myGUIName ": show", % "x" this.posX " y" this.posY " NoActivate"
		this.conshide := false
	}

	close()
	{
		if(this.animate)
		{
			this.fadeWin(this.consid, 1, true)
		}
		else
		{
			gui, % this.myGUIName ": Destroy"
		}
		if(this.clearOnClose)
		{
			this.LogContents := ""
			FileDelete, % this.logloc
		}
		this.consid := 0
	}
	
	drag(w,l,m,h)
	{
		if(h == this.consid)
		{
			PostMessage, 0xA1, 2,,, % "Ahk_id " h
			return
		}
	}
	
	moving(w, l, m, h)
	{
		if(h == this.consid && ! this.sliding)
		{
			this.posX := this.GET_X_LPARAM(l)
			this.posY := this.GET_Y_LPARAM(l)
			this.consslid := true
		}
	}

	save(logsaveloc){
		GUI, % this.myGUIName ": +OwnDialogs"
		FileSelectFile, logsaveloc,S,% "Log " . this.DateString(true) . ".log",Save Log, Logs (*.log)
		if(logsaveloc)
		{
			filecopy, % this.logloc, %logsaveloc%
		}
	}

	open(){
		run, % this.logloc
	}
	sliding := false
	slide()
	{
		this.sliding := true
		if(this.consslid := ! this.consslid)
		{
			if(this.animate)
			{
				this.slideWin(this.consid, this.posX,this.posY,200)
			}
			else
			{
				WinMove, % "ahk_id " this.consid,,% this.posX,% this.posY
			}
		}
		else
		{
			if(this.animate)
			{
				this.slideWin(this.consid, 30 - this.width,this.posY, 200)
			}
			else
			{
				WinMove, % "ahk_id " this.consid,,% 30 - this.width,% this.posY
			}
		
		}
		this.sliding := false
	}

	clear(){
		this.LogContents := ""
		FileDelete, % this.logloc
		this.applyContents()
	}
	
	; ######### general functions ##########
	
	DateString(filesafe = false)
	{
		if(filesafe)
			FormatTime, mcurrentTime, %A_Now%, yyyy-MM-dd HH-mm-ss
		else
			FormatTime, mcurrentTime, %A_Now%, yyyy-MM-dd HH:mm:ss
		return mcurrentTime
	}

	explode(string, delim=",", trimvals = true)
	{
		parr := StrSplit(string, delim)
		if(trimvals)
		{
			for k, v in parr{
				parr[k] := trim(v)
			}
		}
		return, parr
	}
	
	toLower(string)
	{
		StringLower, string, string
		return % string
	}
	
	fadeWin(msid, ms = 10, closeOnFinish = false, trans = 256)
	{
		if(trans>=256)
		{
			WinGet, trans, Transparent, ahk_id %msid%
		}
		ntrans := trans-2
		WinSet, Transparent, %ntrans%, ahk_id %msid%
		if(ntrans>0)
		{
			sleep, ms
			this.fadeWin(msid, ms, closeOnFinish, ntrans)
		}
		else
			if(closeOnFinish)
				WinClose, ahk_id %msid%
	}

	slideWin(msid, tX = 0, tY = 0, T = 500, rightAlign = false, closeOnFinish = false, frst = true, dX = 0, dY = 0, step=0, maxStep=0)
	{
		anint := 100
		winGetPos, wX,wY,wW,wH,ahk_id %msid%
		woX := wX
		if(rightAlign)
		{
		wX += wW
		}
		
		if(frst)
		{
		maxStep := Round(T/(anint + 0))
		dX := Round((tX - wX) / maxStep)
		dY := Round((tY - wY) / maxStep)
		}
		
		if(step<maxStep)
		{
			newX := woX + dX
			newY := wY + dY
			winMove, ahk_id %msid%,,newX,newY
			; sleep, anint-19
			this.slideWin(msid, tX, tY, T, rightAlign, closeOnFinish, false, dX, dY, step+1, maxStep)
		}
		else
		{
			if(rightAlign)
			{
				winMove, ahk_id %msid%,, tX-wW,tY
			}
			else
			{
				winMove, ahk_id %msid%,, tX,tY
			}
			if(closeOnFinish)
			{
				WinClose, ahk_id %msid%
			}
		}
	}

	GET_X_LPARAM(lParam) {
	   NumPut(lParam, Buffer:="    ", "UInt")
	   Return NumGet(Buffer, 0, "Short")
	}
	GET_Y_LPARAM(lParam) {
	   NumPut(lParam, Buffer:="    ", "UInt")
	   Return NumGet(Buffer, 2, "Short")
	}
}

logg(str){
	global console
	if(console ==""){
		global console = new BensConsole()
	}
	console.log(str)
}