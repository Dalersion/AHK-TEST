gkey(var, number)
{
	MsgBox, , , %number%
	if number=1
	{
		default := "Nastya"
		IniRead, %var%, keys.ini, key%number%, %default%
		return %var%
	}
	else
	{
		if number=2
		{	
			default := "52669"
			IniRead, %var%, keys.ini, key%number%, %default%
			return %var%
		}
		else
		{
			if number=3
			{	
				default := "autohotkeyonelove!"
				IniRead, %var%, keys.ini, key%number%, %default%
				return %var%
			}
			else
			{
				return false
			}
		}
	}
	;IniRead, %var%, keys.ini, key%number%, %default%
	;return %var%
}