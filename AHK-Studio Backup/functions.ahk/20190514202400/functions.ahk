WriteProcessMemory(PID, pAddress, pLocalBuff, size)  {
	static PROCESS_VM_OPERATION := 0x8, PROCESS_VM_WRITE := 0x20
	
	if !hProc := DllCall("OpenProcess", UInt, PROCESS_VM_OPERATION|PROCESS_VM_WRITE, Int, 0, UInt, PID, Ptr)  {
		MsgBox, �� ������� ������� �������! ������ %A_LastError%
		return
	}
	if !DllCall("WriteProcessMemory", Ptr, hProc, Ptr, pAddress, Ptr, pLocalBuff, Ptr, size, PtrP, writtenBytes)
		MsgBox, �� ������� �������� ������! ������ %A_LastError%
	DllCall("CloseHandle", Ptr, hProc)
	Return writtenBytes
}