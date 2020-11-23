; Для коректной работты требуется Samp-UDF - http://cheat-master.ru/forum/149-619860-1
API_ERROR_NONE 								:= 0
API_ERROR_SNAPSHOT_FAILED 					:= 1
API_ERROR_SAMP_NOT_FOUND 					:= 2
API_ERROR_REMOTE_MEMORY_ALLOCATION_FAILED 	:= 3
API_ERROR_WRITEPROCESSMEMORY_FAILED 		:= 4
API_ERROR_GETPROCADDRESS_FAILED 			:= 5
API_ERROR_REMOTETHREAD_FAILED 				:= 6
API_ERROR_INVALID_GTA_HANDLE				:= 7
API_ERROR_PIPE_DOESNT_RESPOND 				:= 8
API_ERROR_STRING_TOO_LONG					:= 9

PLAYER_STATE_LEAVING_VEHICLE 				:= 0
PLAYER_STATE_NORMAL 						:= 1
PLAYER_STATE_DRIVING 						:= 50
PLAYER_STATE_DYING 							:= 54
PLAYER_STATE_DEAD 							:= 55

CALLBACK_HEAL								:= 0
CALLBACK_ARMOR								:= 1
CALLBACK_POSITION							:= 2
CALLBACK_ENTEREXIT							:= 3
CALLBACK_VEHICLE_ENTEREXIT					:= 4
CALLBACK_VEHICLE_HEALTH						:= 5
CALLBACK_VEHICLE_ENGINE						:= 6
CALLBACK_VEHICLE_LOCK						:= 7
CALLBACK_VEHICLE_SPEED						:= 8
CALLBACK_WEAPON_CLIP						:= 9
CALLBACK_WEAPON_TOTALCLIP					:= 10
CALLBACK_WEAPON_SWITCH						:= 11
CALLBACK_CHATLOG							:= 12

try {
    PATH_API := RelToAbs(A_ScriptDir, "API.dll")

    hModule := DllCall("LoadLibrary", Str, PATH_API)
    if(hModule == -1 || hModule == 0)
    {
        MsgBox, 48, API - Fehler, Die API.dll konnte nicht gefunden werden.`nDer Keybinder wird nun beendet.
        ExitApp
    }
} catch() 
{
}
RelToAbs(root, dir, s = "\") {
	pr := SubStr(root, 1, len := InStr(root, s, "", InStr(root, s . s) + 2) - 1)
		, root := SubStr(root, len + 1), sk := 0
	If InStr(root, s, "", 0) = StrLen(root)
		StringTrimRight, root, root, 1
	If InStr(dir, s, "", 0) = StrLen(dir)
		StringTrimRight, dir, dir, 1
	Loop, Parse, dir, %s%
	{
		If A_LoopField = ..
			StringLeft, root, root, InStr(root, s, "", 0) - 1
		Else If A_LoopField =
			root =
		Else If A_LoopField != .
			Continue
		StringReplace, dir, dir, %A_LoopField%%s%
	}
	Return, pr . root . s . dir
}

; //////////////////
; 	CPed.h
; //////////////////
GetPlayerCPed_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerCPed")
GetPlayerHealth_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerHealth")
GetPlayerArmor_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerArmor")
GetPlayerMoney_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerMoney")
GetPlayerWanteds_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWanteds")
GetPlayerPosition_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerPosition")
IsPlayerInRangeOfPoint_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInRangeOfPoint")
IsPlayerInRangeOfPoint2D_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInRangeOfPoint2D")
IsPlayerInAnyInterior_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInAnyInterior")
IsPlayerFrozen_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerFrozen")
GetPlayerWeaponSlot_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWeaponSlot")
GetPlayerWeaponId_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWeaponId")
GetPlayerWeaponName_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWeaponName")
GetPlayerWeaponClip_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWeaponClip")
GetPlayerWeaponTotalClip_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWeaponTotalClip")
GetPlayerWeaponState_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerWeaponState")
GetPlayerState_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerState")

; //////////////////
; 	Vehicle.h
; //////////////////
GetVehiclePointer_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehiclePointer")
GetVehicleModelId_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleModelId")
GetVehicleModelName_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleModelName")
GetVehicleModelNameById_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleModelNameById")
GetVehicleType_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleType")
GetVehicleHealth_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleHealth")
GetVehicleRadioStation_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleRadioStation")
GetVehicleRadioStationName_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleRadioStationName")
GetVehicleFreeSeats_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleFreeSeats")
GetVehicleSpeed_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSpeed")
GetVehicleFirstColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleFirstColor")
GetVehicleSecondColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleSecondColor")
GetVehicleColor_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleColor")
GetVehicleColorRGB_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleColorRGB")
GetVehicleColorARGB_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_GetVehicleColorARGB")


IsPlayerInAnyVehicle_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInAnyVehicle")
IsPlayerDriver_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerDriver")
IsPlayerPassenger_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerPassenger")
IsVehicleSeatUsed_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleSeatUsed")
IsVehicleLocked_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleLocked")
IsVehicleSirenEnabled_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleSirenEnabled")
IsVehicleHornEnabled_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleHornEnabled")
IsVehicleAlternateSirenEnabled_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleAlternateSirenEnabled")
IsVehicleEngineEnabled_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleEngineEnabled")
IsVehicleLightEnabled_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_IsVehicleLightEnabled")
IsPlayerInCar_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInCar")
IsPlayerInPlane_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInPlane")
IsPlayerInBoat_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInBoat")
IsPlayerInTrain_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInTrain")
IsPlayerInBike_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_IsPlayerInBike")
; //////////////////
; 	Draw
; //////////////////
TextCreate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextCreate")
TextDestroy_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextDestroy")
TextSetShadow_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetShadow")
TextSetShown_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetShown")
TextSetColor_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetColor")
TextSetPos_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetPos")
TextSetString_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextSetString")
TextUpdate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_TextUpdate")

BoxCreate_func 			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxCreate")
BoxDestroy_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxDestroy")
BoxSetShown_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetShown")
BoxSetBorder_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetBorder")
BoxSetBorderColor_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetBorderColor")
BoxSetColor_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetColor")
BoxSetHeight_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetHeight")
BoxSetPos_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetPos")
BoxSetWidth_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_BoxSetWidth")

LineCreate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineCreate")
LineDestroy_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineDestroy")
LineSetShown_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetShown")
LineSetColor_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetColor")
LineSetWidth_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetWidth")
LineSetPos_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_LineSetPos")

ImageCreate_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageCreate")
ImageDestroy_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageDestroy")
ImageSetShown_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetShown")
ImageSetAlign_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetAlign")
ImageSetPos_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetPos")
ImageSetRotation_func	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ImageSetRotation")

DestroyAllVisual_func	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_DestroyAllVisual")
ShowAllVisual_func		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_ShowAllVisual")
HideAllVisual_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_HideAllVisual")


; ////////////////
;     CALLBACK 
; ////////////////
SetCallbackPointer_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_SetCallbackPointer")
UnSetCallbackPointer_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_UnSetCallbackPointer")
SetListenCallback_func 		:= DllCall("GetProcAddress", UInt, hModule, Str, "API_SetListenCallback")
UnSetListenCallback_func 	:= DllCall("GetProcAddress", UInt, hModule, Str, "API_UnSetListenCallback")
UnSetListenCallbackAll_func := DllCall("GetProcAddress", UInt, hModule, Str, "API_UnSetListenCallbackAll")

; ////////////////
;     PlayerData.h
; ////////////////
UpdateServerData_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_UpdateServerData")
GetPlayerNameById_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerNameById")
GetPlayerIdByName_func			:= DllCall("GetProcAddress", UInt, hModule, Str, "API_GetPlayerIdByName")

; /////////////////////// CPED ////////////////////////////
; /////////////////////// CPED ////////////////////////////
; /////////////////////// CPED ////////////////////////////

GetPlayerCPed()
{
	global GetPlayerCPed_func 
	res :=DllCall(GetPlayerCPed_func)
	return res
}

GetPlayerHealthDLL()
{
	global GetPlayerHealth_func
	res := DllCall(GetPlayerHealth_func)
	return res
}

GetPlayerArmorDLL()
{
	global GetPlayerArmor_func
	res := DllCall(GetPlayerArmor_func)
	return res
}

GetPlayerMoneyDLL()
{
	global GetPlayerMoney_func
	res := DllCall(GetPlayerMoney_func)
	return res 
}

GetPlayerWantedsDLL()
{
	global GetPlayerWanteds_func
	res := DllCall(GetPlayerWanteds_func)
	return res 
}

GetPlayerPositionDLL(ByRef flo_posX, ByRef flo_posY, ByRef flo_posZ, ByRef flo_Rotation)
{
	global GetPlayerPosition_func
	res := DllCall(GetPlayerPosition_func, FloatP, flo_posX, FloatP, flo_posY, FloatP, flo_posZ,  FloatP, flo_Rotation)
	return res
}

IsPlayerInRangeOfPointDLL(flo_posX, flo_posY, flo_posZ, flo_posRadius)
{
	global IsPlayerInRangeOfPoint_func
	res := DllCall(IsPlayerInRangeOfPoint_func, Float, flo_posX, Float, flo_posY, Float, flo_posZ, Float, flo_posRadius)
	return res 
}

IsPlayerInRangeOfPoint2DDLL(flo_posX, flo_posY, flo_posRadius)
{
	global IsPlayerInRangeOfPoint2D_func
	res := DllCall(IsPlayerInRangeOfPoint2D_func, Float, flo_posX, Float, flo_posY, Float, flo_posRadius)
	return res 
}

IsPlayerInAnyInteriorDLL()
{
	global IsPlayerInAnyInterior_func
	res := DllCall(IsPlayerInAnyInterior_func)
	return res 
}

IsPlayerFrozenDLL()
{
	global IsPlayerFrozen_func
	res := DllCall(IsPlayerFrozen_func)
	return res 
}

GetPlayerWeaponSlotDLL()
{
	global GetPlayerWeaponSlot_func
	res := DllCall(GetPlayerWeaponSlot_func)
	return res 
}

GetPlayerWeaponIdDLL(int_WeaponSlot)
{
	global GetPlayerWeaponId_func
	res := DllCall(GetPlayerWeaponId_func, Int, int_WeaponSlot)
	return res 
}

GetPlayerWeaponNameDLL(int_WeaponSlot, ByRef str_WeapName)
{
	global GetPlayerWeaponName_func
	VarSetCapacity(str_WeapName, 32)
	res := DllCall(GetPlayerWeaponName_func, Int, int_WeaponSlot, StrP, str_WeapName)
	return res 
}

GetPlayerWeaponClipDLL(int_WeaponSlot)
{
	global GetPlayerWeaponClip_func
	res := DllCall(GetPlayerWeaponClip_func, Int, int_WeaponSlot)
	return res 
}

GetPlayerWeaponTotalClipDLL(int_WeaponSlot)
{
	global GetPlayerWeaponTotalClip_func
	res := DllCall(GetPlayerWeaponTotalClip_func, Int, int_WeaponSlot)
	return res 
}

GetPlayerWeaponStateDLL()
{
	global GetPlayerWeaponState_func
	res := DllCall(GetPlayerWeaponState_func)
	return res 
}

GetPlayerStateDLL()
{
	global GetPlayerState_func
	res := DllCall(GetPlayerState_func)
	return res 
}

; /////////////////////// VEHICLE ////////////////////////////
; /////////////////////// VEHICLE ////////////////////////////
; /////////////////////// VEHICLE ////////////////////////////

GetVehiclePointerDLL()
{
	global GetVehiclePointer_func
	res := DllCall(GetVehiclePointer_func)
	return res 
}

GetVehicleModelIdDLL()
{
	global GetVehicleModelId_func
	res := DllCall(GetVehicleModelId_func)
	return res 
}

GetVehicleModelNameDLL(ByRef str_VehicleName)
{
	global GetVehicleModelName_func
	VarSetCapacity(str_VehicleName, 32)
	res := DllCall(GetVehicleModelName_func, StrP, str_VehicleName)
	return res 
}

GetVehicleModelNameByIdDLL(int_VehicleId, ByRef str_VehicleName)
{
	global GetVehicleModelNameById_func
	VarSetCapacity(str_VehicleName, 32)
	res := DllCall(GetVehicleModelNameById_func, Int, int_VehicleId, StrP, str_VehicleName)
	return res 
}

GetVehicleTypeDLL()
{
	global GetVehicleType_func
	res := DllCall(GetVehicleType_func)
	return res 
}

GetVehicleHealthDLL()
{
	global GetVehicleHealth_func
	res := DllCall(GetVehicleHealth_func)
	return res 
}

GetVehicleRadioStationDLL()
{
	global GetVehicleRadioStation_func
	res := DllCall(GetVehicleRadioStation_func)
	return res 
}

GetVehicleRadioStationNameDLL(ByRef str_RadioName)
{
	global GetVehicleRadioStationName_func
	VarSetCapacity(str_RadioName, 32)
	res := DllCall(GetVehicleRadioStationName_func, StrP, str_RadioName)
	return res 
}

GetVehicleFreeSeatsDLL(ByRef int_SeatFL, ByRef int_SeatFR, ByRef int_SeatBL, ByRef int_SeatBR)
{
	global GetVehicleFreeSeats_func
	res := DllCall(GetVehicleFreeSeats_func, IntP, int_SeatFL, IntP, int_SeatFR, IntP, int_SeatBL, IntP, int_SeatBR)
	return res 
}

GetVehicleSpeedDLL(float_SpeedMult)
{
	global GetVehicleSpeed_func
	res := DllCall(GetVehicleSpeed_func, Float, float_SpeedMult)
	return res 
}

GetVehicleFirstColorDLL()
{
	global GetVehicleFirstColor_func
	res := DllCall(GetVehicleFirstColor_func)
	return res 
}

GetVehicleSecondColorDLL()
{
	global GetVehicleSecondColor_func
	res := DllCall(GetVehicleSecondColor_func)
	return res 
}

GetVehicleColorDLL(ByRef int_ColorFirst, ByRef int_ColorSecond)
{
	global GetVehicleColor_func
	res := DllCall(GetVehicleColor_func, IntP, int_ColorFirst, IntP, int_ColorSecond)
	return res 
}

GetVehicleColorRGBDLL(int_Color, ByRef uint_ColorRGB)
{
	global GetVehicleColorRGB_func
	res := DllCall(GetVehicleColorRGB_func, Int, int_Color, UIntP, uint_ColorRGB)
	return res 
}

GetVehicleColorARGBDLL(int_Color, ByRef uint_ColorARGB)
{
	global GetVehicleColorARGB_func
	res := DllCall(GetVehicleColorARGB_func, Int, int_Color, UIntP, uint_ColorARGB)
	return res 
}



IsPlayerInAnyVehicleDLL()
{
	global IsPlayerInAnyVehicle_func
	res := DllCall(IsPlayerInAnyVehicle_func)
	return res 
}

IsPlayerDriverDLL()
{
	global IsPlayerDriver_func
	res := DllCall(IsPlayerDriver_func)
	return res 
}

IsPlayerPassengerDLL()
{
	global IsPlayerPassenger_func
	res := DllCall(IsPlayerPassenger_func)
	return res 
}

IsVehicleSeatUsedDLL(int_SeatId)
{
	global IsVehicleSeatUsed_func
	res := DllCall(IsVehicleSeatUsed_func, int, int_SeatId)
	return res 
}

IsVehicleLockedDLL()
{
	global IsVehicleLocked_func
	res := DllCall(IsVehicleLocked_func)
	return res 
}

IsVehicleSirenEnabledDLL()
{
	global IsVehicleSirenEnabled_func
	res := DllCall(IsVehicleSirenEnabled_func)
	return res 
}

IsVehicleHornEnabledDLL()
{
	global IsVehicleHornEnabled_func
	res := DllCall(IsVehicleHornEnabled_func)
	return res 
}

IsVehicleAlternateSirenEnabledDLL()
{
	global IsVehicleAlternateSirenEnabled_func
	res := DllCall(IsVehicleAlternateSirenEnabled_func)
	return res 
}

IsVehicleEngineEnabledDLL()
{
	global IsVehicleEngineEnabled_func
	res := DllCall(IsVehicleEngineEnabled_func)
	return res 
}

IsVehicleLightEnabledDLL()
{
	global IsVehicleLightEnabled_func
	res := DllCall(IsVehicleLightEnabled_func)
	return res 
}

IsPlayerInCarDLL()
{
	global IsPlayerInCar_func
	res := DllCall(IsPlayerInCar_func)
	return res 
}

IsPlayerInPlaneDLL()
{
	global IsPlayerInPlane_func
	res := DllCall(IsPlayerInPlane_func)
	return res 
}

IsPlayerInBoatDLL()
{
	global IsPlayerInBoat_func
	res := DllCall(IsPlayerInBoat_func)
	return res 
}

IsPlayerInTrainDLL()
{
	global IsPlayerInTrain_func
	res := DllCall(IsPlayerInTrain_func)
	return res 
}

IsPlayerInBikeDLL()
{
	global IsPlayerInBike_func
	res := DllCall(IsPlayerInBike_func)
	return res 
}

;////////////////// DRAW ///////////////////
;////////////////// DRAW ///////////////////
;////////////////// DRAW ///////////////////

TextCreate(Font, fontsize, bold, italic, x, y, color, text, shadow, show)
{
	global TextCreate_func
	res := DllCall(TextCreate_func,Str,Font,Int,fontsize,UChar,bold,UChar,italic,Int,x,Int,y,UInt,color,Str,text,UChar,shadow,UChar,show)
	return res
}

TextDestroy(id)
{
	global TextDestroy_func
	res := DllCall(TextDestroy_func,Int,id)
	return res
}

TextSetShadow(id, shadow)
{
	global TextSetShadow_func
	res := DllCall(TextSetShadow_func,Int,id,UChar,shadow)
	return res
}

TextSetShown(id, show)
{
	global TextSetShown_func
	res := DllCall(TextSetShown_func,Int,id,UChar,show)
	return res
}

TextSetColor(id,color)
{
	global TextSetColor_func
	res := DllCall(TextSetColor_func,Int,id,UInt,color)
	return res
}

TextSetPos(id,x,y)
{
	global TextSetPos_func
	res := DllCall(TextSetPos_func,Int,id,Int,x,Int,y)
	return res
}

TextSetString(id,Text)
{
	global TextSetString_func
	res := DllCall(TextSetString_func,Int,id,Str,Text)
	return res
}

TextUpdate(id,Font,Fontsize,bold,italic)
{
	global TextUpdate_func
	res := DllCall(TextUpdate_func,Int,id,Str,Font,int,Fontsize,UChar,bold,UChar,italic)
	return res
}

BoxCreate(x,y,width,height,Color,show)
{
	global BoxCreate_func
	res := DllCall(BoxCreate_func,Int,x,Int,y,Int,width,Int,height,UInt,Color,UChar,show)
	return res
}

BoxDestroy(id)
{
	global BoxDestroy_func
	res := DllCall(BoxDestroy_func,Int,id)
	return res
}

BoxSetShown(id,Show)
{
	global BoxSetShown_func 
	res := DllCall(BoxSetShown_func,Int,id,UChar,Show)
	return res
}
	
BoxSetBorder(id,height,Show)
{
	global BoxSetBorder_func
	res := DllCall(BoxSetBorder_func,Int,id,Int,height,Int,Show)
	return res
}


BoxSetBorderColor(id,Color)
{
	global BoxSetBorderColor_func 
	res := DllCall(BoxSetBorderColor_func,Int,id,UInt,Color)
	return res
}

BoxSetColor(id,Color)
{
	global BoxSetColor_func
	res := DllCall(BoxSetColor_func,Int,id,UInt,Color)
	return res
}

BoxSetHeight(id,height)
{
	global BoxSetHeight_func
	res := DllCall(BoxSetHeight_func,Int,id,Int,height)
	return res
}

BoxSetPos(id,x,y)
{
	global BoxSetPos_func	
	res := DllCall(BoxSetPos_func,Int,id,Int,x,Int,y)
	return res
}

BoxSetWidth(id,width)
{
	global BoxSetWidth_func
	res := DllCall(BoxSetWidth_func,Int,id,Int,width)
	return res
}

LineCreate(x1,y1,x2,y2,width,color,show)
{
	global LineCreate_func
	res := DllCall(LineCreate_func,Int,x1,Int,y1,Int,x2,Int,y2,Int,Width,UInt,color,UChar,show)
	return res
}

LineDestroy(id)
{
	global LineDestroy_func
	res := DllCall(LineDestroy_func,Int,id)
	return res
}

LineSetShown(id,show)
{
	global LineSetShown_func
	res := DllCall(LineSetShown_func,Int,id,UChar,show)
	return res
}

LineSetColor(id,color)
{
	global LineSetColor_func
	res := DllCall(LineSetColor_func,Int,id,UInt,color)
	return res
}

LineSetWidth(id, width)
{
	global LineSetWidth_func
	res := DllCall(LineSetWidth_func,Int,id,Int,width)
	return res
}

LineSetPos(id,x1,y1,x2,y2)
{
	global LineSetPos_func
	res := DllCall(LineSetPos_func,Int,id,Int,x1,Int,y1,Int,x2,Int,y2)
	return res
}

ImageCreate(path, x, y, rotation, align, show)
{
	global ImageCreate_func
	res := DllCall(ImageCreate_func, Str, path, Int, x, Int, y, Int, rotation, Int, align, UChar, show)
	return res
}

ImageDestroy(id)
{
	global ImageDestroy_func
	res := DllCall(ImageDestroy_func,Int,id)
	return res
}

ImageSetShown(id,show)
{
	global ImageSetShown_func
	res := DllCall(ImageSetShown_func,Int,id,UChar,show)
	return res
}

ImageSetAlign(id,align)
{
	global ImageSetAlign_func
	res := DllCall(ImageSetAlign_func,Int,id,Int,align)
	return res
}

ImageSetPos(id, x, y)
{
	global ImageSetPos_func
	res := DllCall(ImageSetPos_func,Int,id,Int,x, Int, y)
	return res
}

ImageSetRotation(id, rotation)
{
	global ImageSetRotation_func
	res := DllCall(ImageSetRotation_func,Int,id,Int, rotation)
	return res
}

DestroyAllVisual()
{
	global DestroyAllVisual_func
	res := DllCall(DestroyAllVisual_func)
	return res 
}

ShowAllVisual()
{
	global ShowAllVisual_func
	res := DllCall(ShowAllVisual_func)
	return res
}

HideAllVisual()
{
	global HideAllVisual_func
	res := DllCall(HideAllVisual_func )
	return res
}



;////////////////// CALLBACK ///////////////////
;////////////////// CALLBACK ///////////////////
;////////////////// CALLBACK ///////////////////

SetListenCallback(int_Id)
{
	global SetListenCallback_func
	res := DllCall(SetListenCallback_func, Int, int_Id)
	return res
}

UnSetCallbackPointer()
{
	global UnSetCallbackPointer_func
	res := DllCall(UnSetCallbackPointer_func)
	return res
}

SetCallbackPointer(int_Id)
{
	global SetCallbackPointer_func
	res := DllCall(SetCallbackPointer_func, Int, int_Id)
	return res
}

UnSetListenCallback(int_Id)
{
	global UnSetListenCallback_func
	res := DllCall(UnSetListenCallback_func, Int, int_Id)
	return res
}
UnSetListenCallbackAll()
{
	global UnSetListenCallbackAll_func
	res := DllCall(UnSetListenCallbackAll_func)
	return res
}

GetCallbackHealParams(ptr_HealStruct, ByRef iOldHeal, ByRef iNewHeal)
{
		ioldHeal := NumGet(ptr_HealStruct+0, "int")
		inewHeal := NumGet(ptr_HealStruct+4, "int")
}

GetCallbackArmorParams(ptr_ArmorStruct, ByRef iOldArmor, ByRef iNewArmor)
{
		ioldArmor := NumGet(ptr_ArmorStruct+0, "int")
		inewArmor := NumGet(ptr_ArmorStruct+4, "int")
}

GetCallbackPositionParams(ptr_PositionStruct, ByRef fOldPosX, ByRef fOldPosY, ByRef fOldPosZ, ByRef fOldPosR, ByRef fNewPosX, ByRef fNewPosY, ByRef fNewPosZ, ByRef fNewPosR)
{
		fOldPosX := NumGet(ptr_PositionStruct+0, "float")
		fOldPosY := NumGet(ptr_PositionStruct+4, "float")
		fOldPosZ := NumGet(ptr_PositionStruct+8, "float")
		fOldPosR := NumGet(ptr_PositionStruct+12, "float")
		fNewPosX := NumGet(ptr_PositionStruct+16, "float")
		fNewPosY := NumGet(ptr_PositionStruct+20, "float")
		fNewPosZ := NumGet(ptr_PositionStruct+24, "float")
		fNewPosR := NumGet(ptr_PositionStruct+28, "float")
}

GetCallbackEnterExitParams(ptr_EnterExitStruct, ByRef iOldInteriorState, ByRef iNewInteriorState)
{
		iOldInteriorState := NumGet(ptr_EnterExitStruct+0, "int")
		iNewInteriorState := NumGet(ptr_EnterExitStruct+4, "int")
}

GetCallbackVehicleEnterExitParams(ptr_VehicleEnterExitStruct, ByRef iOldVehicleEnterExit, ByRef iNewVehicleEnterExit)
{
		iOldVehicleEnterExit := NumGet(ptr_VehicleEnterExitStruct+0, "int")
		iNewVehicleEnterExit := NumGet(ptr_VehicleEnterExitStruct+4, "int")
}

GetCallbackVehicleHealthParams(ptr_VehicleHealthStruct, ByRef iOldVehicleHealth, ByRef iNewVehicleHealth)
{
		iOldVehicleHealth := NumGet(ptr_VehicleHealthStruct+0, "int")
		iNewVehicleHealth := NumGet(ptr_VehicleHealthStruct+4, "int")
}

GetCallbackVehicleEngineParams(ptr_VehicleEngineStruct, ByRef iOldVehicleEngine, ByRef iNewVehicleEngine)
{
		iOldVehicleEngine := NumGet(ptr_VehicleEngineStruct+0, "int")
		iNewVehicleEngine := NumGet(ptr_VehicleEngineStruct+4, "int")
}

GetCallbackVehicleLockParams(ptr_VehicleLockStruct, ByRef iOldVehicleLock, ByRef iNewVehicleLock)
{
		iOldVehicleLock := NumGet(ptr_VehicleLockStruct+0, "int")
		iNewVehicleLock := NumGet(ptr_VehicleLockStruct+4, "int")
}

GetCallbackVehicleSpeedParams(ptr_VehicleSpeedStruct, ByRef iOldVehicleSpeed, ByRef iNewVehicleSpeed)
{
		iOldVehicleSpeed := NumGet(ptr_VehicleSpeedStruct+0, "int")
		iNewVehicleSpeed := NumGet(ptr_VehicleSpeedStruct+4, "int")
}

GetCallbackWeaponSwitchParams(ptr_WeaponSwitchStruct, ByRef iOldWeaponId, ByRef iNewWeaponId)
{
		iOldWeaponId := NumGet(ptr_WeaponSwitchStruct+0, "int")
		iNewWeaponId := NumGet(ptr_WeaponSwitchStruct+4, "int")
}

GetCallbackWeaponClipParams(ptr_WeaponClipStruct, ByRef iOldWeaponClip, ByRef iNewWeaponClip)
{
		iOldWeaponClip := NumGet(ptr_WeaponClipStruct+0, "int")
		iNewWeaponClip := NumGet(ptr_WeaponClipStruct+4, "int")
}

GetCallbackWeaponTotalClipParams(ptr_WeaponTotalClipStruct, ByRef iOldWeaponTotalClip, ByRef iNewWeaponTotalClip)
{
		iOldWeaponTotalClip := NumGet(ptr_WeaponTotalClipStruct+0, "int")
		iNewWeaponTotalClip := NumGet(ptr_WeaponTotalClipStruct+4, "int")
}

GetCallbackChatlogParams(ptr_ChatlogStruct, ByRef string)
{
		VarSetCapacity(string, 256, 0)
		string := StrGet(ptr_ChatlogStruct)
}

UpdateServerData()
{
	global UpdateServerData_func
	res := DllCall(UpdateServerData_func)
	return res
}


