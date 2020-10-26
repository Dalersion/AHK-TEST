#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent

sigmoid(x)
{
	E:= exp(-x)
	E++
	ret:=(1)/(E)
	return, ret
}




go:

	input1=1
	input2=0
	output1=1
	ladder=3
	Random,weight1,0,10
	Random,weight2,0,10
	EnvMult, input1, weight1
	EnvMult, input2, weight2
	x:= input1+input2
	output:=sigmoid(x)
	output:=round(output)
	if (output != output1)
	{
		Gosub, go
	}
	else
	{
		Gosub,go1
	}



go1:

	input1=1
	input2=1
	output1=1
	ladder=3
	Random,weight1,0,10
	Random,weight2,0,10
	EnvMult, input1, weight1
	EnvMult, input2, weight2
	x:= input1+input2
	output:=sigmoid(x)
	output:=round(output)
	if (output != output1)
	{
		Gosub, go1
	}
	else
	{
		Gosub,go2
	}


go2:

	input1=0
	input2=1
	output1=1
	ladder=3
	Random,weight1,0,10
	Random,weight2,0,10
	EnvMult, input1, weight1
	EnvMult, input2, weight2
	x:= input1+input2
	output:=sigmoid(x)
	output:=round(output)
	if (output != output1)
	{
		Gosub, go2
	}
	else
	{
		Gosub,go3
	}


go3:

	input1=0
	input2=0
	output1=0
	ladder=3
	Random,weight1,0,10
	Random,weight2,0,10
	EnvMult, input1, weight1
	EnvMult, input2, weight2
	x:= input1+input2
	output:=sigmoid(x)
	output:=round(output)
	if (output != output1)
	{
		Gosub, go3
	}
	else
	{
		Gosub,ok
	}

	
ok:

	MsgBox,0,OK,Success
