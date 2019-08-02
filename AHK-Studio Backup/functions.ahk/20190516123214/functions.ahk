WriteProcessMemory(PID, pAddress, pLocalBuff, size)  {
	static PROCESS_VM_OPERATION := 0x8, PROCESS_VM_WRITE := 0x20
	
	if !hProc := DllCall("OpenProcess", UInt, PROCESS_VM_OPERATION|PROCESS_VM_WRITE, Int, 0, UInt, PID, Ptr)  {
		MsgBox, Не удалось открыть процесс! Ошибка %A_LastError%
		return
	}
	if !DllCall("WriteProcessMemory", Ptr, hProc, Ptr, pAddress, Ptr, pLocalBuff, Ptr, size, PtrP, writtenBytes)
		MsgBox, Не удалось записать данные! Ошибка %A_LastError%
	DllCall("CloseHandle", Ptr, hProc)
	Return writtenBytes
}
;formsg:="0"
SetJopaVar(Jopa,Var,Numb)
{
	formsg=%Jopa%&&%Var%&&%Numb%
	return
}