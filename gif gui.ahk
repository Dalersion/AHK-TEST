#NoEnv
Path := "%A_Scriptdir/1.gif%" ; путь 
width := 222, height := 167 ; размеры
 
Gui, -DPIScale 
Gui, Margin, 0, 0
Gui, Add, ActiveX, w%width% h%height% Disabled voIE, Shell.Explorer
oIE.Navigate("about:blank")
oIE.Document.Write("<body style=""overflow: hidden; margin: 0px""><img src=" Path " width=" width "px; height=" height "></body>" ) 
oIE.Document.close
Gui, Show
Return 