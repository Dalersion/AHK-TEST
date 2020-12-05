int global19 = 0;
int global47;
__size32 DecodePointer = 0x27e0;// 4 bytes
int global44;
unsigned int global30;
__size32 InterlockedCompareExchange = 0x2806;// 4 bytes
unsigned int global57 = 0;
__size32 global17;// 4 bytes
int global1 = 0xbb40e64e;
unsigned int global2 = 4294967295U;
__size32 global67 = 0x44bf19b1;// 4 bytes

void proc2(__size16 param1, __size16 param2, unsigned char param3, __size32 param4, unsigned int param5, __size32 param6, __size32 param7, __size32 param8);
void _start(int param1, int param2, unsigned int param3, __size32 param4, __size16 param5, __size16 param6, unsigned char param7, __size32 param10, int param9, __size32 param10);
void *proc3(int param1, __size32 param2, __size32 param3, __size32 param4);
__size32 proc4(int param1, __size16 param2, __size16 param3, unsigned char param4, __size32 param5, unsigned int param6);
__size32 proc5(__size32 param1, __size32 param2, __size32 param3);
void proc6();
void proc7(__size32 *param1);
int proc11(unsigned int param1, unsigned char param2, unsigned int param3, unsigned int param4);
unsigned int proc12(__size16 *param1, unsigned char param2, unsigned int param3);
__size32 proc13(__size32 param1, unsigned int param2, unsigned int param3);

// address: 0x10001eee
union { void * x285; int x286; } proc1(int param1, int param2, int param3) {
    __size32 eax; 		// r24
    int eax_1; 		// r24{55}
    unsigned int eax_2; 		// r24{82}
    __size32 ebx; 		// r27
    __size32 edi; 		// r31
    int esi; 		// r30
    union { void * x285; int x286; } esi_1; 		// r30
    union { void * x285; int x286; } esi_2; 		// r30
    int esi_4; 		// r30{84}
    int esp; 		// r28
    union { __size32 * x283; int x284; } esp_1; 		// r28
    union { void * x285; int x286; } local4; 		// esi_2{115}

    esp_1 = (esp - 28);
    local4 = param3;
    if (global1 == 0xbb40e64e || (global1 & 0xffff0000) == 0) {
        GetSystemTimeAsFileTime();
        GetCurrentProcessId();
        GetCurrentThreadId();
        GetTickCount();
        esi = 0 ^ eax ^ eax ^ eax_1;
        QueryPerformanceCounter();
        eax = param2 ^ param1;
        esi_4 = esi ^ eax;
        if ((esi ^ eax) != 0xbb40e64e) {
            if (((esi ^ eax) & 0xffff0000) == 0) {
                eax_2 = (esi ^ eax | 0x4711) * 0x10000;
                esi_4 = esi ^ eax | eax_2;
            }
        } else {
            esi_4 = 0xbb40e64f;
        }
        global1 = esi_4;
        global67 =  !esi_4;
        esi_1 = esp - 20;
        esp = (esp - 36);
        local4 = esi_1;
    } else {
        global67 =  !global1;
    }
    esi_2 = local4;
    edi = *esp;
    ebx = *(esp + 4);
    return esi_2; /* WARNING: Also returning: ebx := ebx, edi := edi */
}

// address: 0x100019aa
void proc2(__size16 param1, __size16 param2, unsigned char param3, __size32 param4, unsigned int param5, __size32 param6, __size32 param7, __size32 param8) {
    __size16 ax; 		// r0
    __size16 cx; 		// r1
    unsigned char dl; 		// r10
    __size32 eax; 		// r24
    unsigned int eax_1; 		// r24{50}
    int eax_2; 		// r24{157}
    __size32 *ebp; 		// r29
    __size32 *ebp_1; 		// r29{50}
    __size32 *ebp_2; 		// r29{8}
    int ebp_3; 		// r29{157}
    __size32 ebx; 		// r27
    __size32 ecx; 		// r25
    __size32 edi; 		// r31
    unsigned int edx; 		// r26
    __size32 esi; 		// r30
    void *esp_1; 		// r28{205}
    void *esp_10; 		// r28{50}
    void *esp_11; 		// r28{8}
    void *esp_2; 		// r28{190}
    void *esp_3; 		// r28{135}
    void *esp_4; 		// r28{220}
    void *esp_5; 		// r28{119}
    void *esp_6; 		// r28{105}
    void *esp_7; 		// r28{95}
    void *esp_8; 		// r28{78}
    void *esp_9; 		// r28{64}
    int local0; 		// m[esp - 4]
    unsigned int local1; 		// m[esp - 12]
    unsigned char local10; 		// param3{200}
    unsigned int local11; 		// param5{203}
    void *local12; 		// esp_1{205}
    __size16 local13; 		// ax{213}
    __size16 local14; 		// cx{214}
    unsigned char local15; 		// dl{215}
    void *local16; 		// esp_4{220}
    void *local17; 		// esp_2{242}
    __size32 *local18; 		// ebp_2{243}
    int local2; 		// m[esp - 8]
    __size32 local3; 		// m[esp - 4]{253}
    __size32 local4; 		// m[esp - 8]{254}
    unsigned int local5; 		// m[esp - 12]{255}
    void *local6; 		// esp_2{190}
    __size32 *local7; 		// ebp_1{191}
    __size16 local8; 		// param1{198}
    __size16 local9; 		// param2{199}

    esp_11 = proc3(16, param6, param7, param8); /* Warning: also results in ebp_2 */
    local6 = esp_11;
    local7 = ebp_2;
    local8 = param1;
    local9 = param2;
    local10 = param3;
    local11 = param5;
    local12 = esp_11;
    local17 = esp_11;
    local18 = ebp_2;
    edi = param4;
    esi = param5;
    ebx = *(ebp_2 + 8);
    *(__size32*)(ebp_2 - 28) = 1;
    ecx = 0;
    *(__size32*)(ebp_2 - 4) = 0;
    global2 = param5;
    *(__size32*)(ebp_2 - 4) = 1;
    if (param5 != 0 || *0x10003040 != 0) {
        if (param5 != 1 && param5 != 2) {
L15:
            param1 = local8;
            param2 = local9;
            param3 = local10;
            param5 = local11;
            esp_1 = local12;
            *(__size32*)(esp_1 - 4) = edi;
            *(unsigned int*)(esp_1 - 8) = esi;
            *(__size32*)(esp_1 - 12) = ebx;
            eax = proc5(*(esp_1 - 8), ecx, param5); /* Warning: also results in ecx, edx, esp_8, ebp */
            local13 = param1;
            local14 = param2;
            local15 = param3;
            local16 = esp_8;
            *(unsigned int*)(ebp - 28) = eax;
            if ( !(esi != 1 || eax != 0)) {
                *(__size32*)(esp_8 - 4) = edi;
                *(unsigned int*)(esp_8 - 8) = eax;
                *(__size32*)(esp_8 - 12) = ebx;
                ecx = proc5(*(esp_8 - 8), ecx, edx); /* Warning: also results in edx, esp_7 */
                *(__size32*)(esp_7 - 4) = edi;
                *(__size32*)(esp_7 - 8) = 0;
                *(__size32*)(esp_7 - 12) = ebx;
                esi = proc4(*(esp_7 - 8), param1, param2, param3, ecx, edx); /* Warning: also results in ax, cx, dl, ecx, edx, ebx, esp_6, ebp, edi */
                local13 = ax;
                local14 = cx;
                local15 = dl;
                local16 = esp_6;
                if (global57 != 0) {
                    *(__size32*)(esp_6 - 4) = edi;
                    *(__size32*)(esp_6 - 8) = 0;
                    *(__size32*)(esp_6 - 12) = ebx;
                    (*global57)(local5, local4, local3, ax, cx, dl, global57, ecx, edx, ebx, ebp, esi, edi, LOGICALFLAGS32(global57), LOGICALFLAGS32(global57), LOGICALFLAGS32(global57));
                    local13 = ax;
                    local13 = ax;
                    local14 = cx;
                    local14 = cx;
                    local15 = dl;
                    local15 = dl;
                    local16 = esp_5;
                    local16 = esp_5;
                }
            }
            ax = local13;
            cx = local14;
            dl = local15;
            esp_4 = local16;
            ebp_2 = ebp;
            local17 = esp_4;
            local18 = ebp_2;
            if ( !(esi != 0 && esi != 3)) {
                *(__size32*)(esp_4 - 4) = edi;
                *(unsigned int*)(esp_4 - 8) = esi;
                *(__size32*)(esp_4 - 12) = ebx;
                eax = proc4(*(esp_4 - 8), ax, cx, dl, ecx, edx); /* Warning: also results in ebp_2 */
                local17 = esp_3;
                local17 = esp_3;
                local18 = ebp_2;
                local18 = ebp_2;
                if (eax == 0) {
                    *(int*)(ebp_2 - 28) = *(ebp_2 - 28) & eax;
                }
                if ( !(*(ebp_2 - 28) == 0 || global57 == 0)) {
                    *(__size32*)(esp_3 - 4) = edi;
                    *(unsigned int*)(esp_3 - 8) = esi;
                    *(__size32*)(esp_3 - 12) = ebx;
                    (*global57)(local1, local2, local0, ax, cx, dl, global57, ecx, edx, ebx, ebp_2, esi, edi, LOGICALFLAGS32(global57), LOGICALFLAGS32(global57), LOGICALFLAGS32(global57));
                    local17 = esp_2;
                    local18 = ebp_3;
                    *(unsigned int*)(ebp_3 - 28) = eax_2;
                }
            }
        } else {
            if (global57 != 0) {
                *(__size32*)(esp_11 - 4) = param4;
                *(unsigned int*)(esp_11 - 8) = param5;
                *(__size32*)(esp_11 - 12) = ebx;
                (*global57)(pc, 0x10002378, 16, param1, param2, param3, global57, 0, param5, ebx, ebp_2, param5, param4, SUBFLAGS32(global57, 0, global57), global57 == 0, global57 < 0);
                local6 = esp_10;
                local7 = ebp_1;
                *(unsigned int*)(ebp_1 - 28) = eax_1;
            }
            esp_2 = local6;
            ebp_1 = local7;
            local17 = esp_2;
            local18 = ebp_1;
            if (*(ebp_1 - 28) != 0) {
                *(__size32*)(esp_2 - 4) = edi;
                *(unsigned int*)(esp_2 - 8) = esi;
                *(__size32*)(esp_2 - 12) = ebx;
                eax = proc4(*(esp_2 - 8), param1, param2, param3, ecx, param5); /* Warning: also results in esi, ax, cx, dl, ecx, edx, ebx, esp_9, ebp_2, edi */
                local8 = ax;
                local9 = cx;
                local10 = dl;
                local11 = edx;
                local12 = esp_9;
                local17 = esp_9;
                local18 = ebp_2;
                *(unsigned int*)(ebp_2 - 28) = eax;
                if (eax != 0) {
                    goto L15;
                }
            }
        }
    } else {
        *(__size32*)(ebp_2 - 28) = 0;
    }
    esp_2 = local17;
    ebp_2 = local18;
    *(__size32*)(ebp_2 - 4) = 0;
    *(__size32*)(ebp_2 - 4) = -2;
    proc6();
    proc7(ebp_2);
    return;
}

// address: 0x10001ac0
void _start(int param1, int param2, unsigned int param3, __size32 param4, __size16 param5, __size16 param6, unsigned char param7, __size32 param10, int param9, __size32 param10) {
    __size32 edi; 		// r31

    edi = param10;
    if (param3 == 1) {
        param9 = proc1(param1, param2, param9); /* Warning: also results in param10, edi */
    }
    proc2(param5, param6, param7, param4, param3, param10, param9, edi);
    return;
}

// address: 0x10001e70
void *proc3(int param1, __size32 param2, __size32 param3, __size32 param4) {
    __size32 *esp; 		// r28
    __size32 local0; 		// m[esp]

    *(__size32*)(esp - param1 - 12) = param2;
    *(__size32*)(esp - param1 - 16) = param3;
    *(__size32*)(esp - param1 - 20) = param4;
    *(int*)(esp - param1 - 24) = global1 ^ (esp + 8);
    *(__size32*)(esp - param1 - 28) = local0;
    *(union { __size32 * x291; int x292; }*)0 = (esp - 8);
    return (esp + 8);
}

// address: 0x100017a0
__size32 proc4(int param1, __size16 param2, __size16 param3, unsigned char param4, __size32 param5, unsigned int param6) {
    __size16 ax; 		// r0
    __size16 cx; 		// r1
    unsigned char dl; 		// r10
    __size32 eax; 		// r24
    unsigned int eax_1; 		// r24{399}
    __size32 *ebp; 		// r29
    unsigned int ebx; 		// r27
    __size32 *ebx_1; 		// r27
    unsigned int ebx_2; 		// r27{402}
    __size32 ecx; 		// r25
    __size32 edi; 		// r31
    unsigned int edx; 		// r26
    __size32 esi; 		// r30
    __size32 *esp; 		// r28
    union { __size32 * x129; int x130; } esp_1; 		// r28
    void *esp_10; 		// r28{235}
    __size32 *esp_11; 		// r28{209}
    __size32 *esp_12; 		// r28{422}
    __size32 *esp_13; 		// r28{174}
    __size32 *esp_14; 		// r28{164}
    __size32 *esp_15; 		// r28{65}
    __size32 *esp_16; 		// r28{138}
    __size32 *esp_17; 		// r28{98}
    __size32 *esp_18; 		// r28{258}
    union { __size32 * x353; int x354; } esp_2; 		// r28
    union { __size32 * x129; int x130; } esp_3; 		// r28
    __size32 *esp_4; 		// r28{384}
    __size32 *esp_5; 		// r28{369}
    __size32 *esp_6; 		// r28{403}
    __size32 *esp_7; 		// r28{437}
    void *esp_8; 		// r28{251}
    void *esp_9; 		// r28{245}
    __size32 local0; 		// m[esp - 28]
    __size32 local1; 		// m[esp - 24]
    int local10; 		// m[esp + 8]{468}
    int local11; 		// m[esp + 8]{258}
    __size32 local12; 		// m[esp - 4]{493}
    __size32 local13; 		// m[esp - 4]{485}
    __size32 local14; 		// m[esp - 4]{469}
    int local15; 		// m[esp - 4]{258}
    int local16; 		// m[esp - 8]{258}
    __size32 local17; 		// m[esp - 8]{470}
    int local18; 		// m[esp - 12]{258}
    __size32 local19; 		// m[esp - 12]{471}
    __size32 local2; 		// m[esp - 20]
    int local20; 		// m[esp - 16]{258}
    unsigned int local21; 		// m[esp - 16]{472}
    int local22; 		// m[esp - 20]{258}
    __size32 local23; 		// m[esp - 20]{473}
    __size32 local24; 		// m[esp - 24]{498}
    int local25; 		// m[esp - 24]{258}
    __size32 local26; 		// m[esp - 24]{474}
    int local27; 		// m[esp - 28]{499}
    int local28; 		// m[esp - 28]{491}
    __size32 local29; 		// m[esp - 28]{475}
    unsigned int local3; 		// m[esp - 16]
    int local30; 		// m[esp - 28]{258}
    int local31; 		// %flags{389}
    int local32; 		// %flags{29}
    int local33; 		// %flags{157}
    int local34; 		// %flags{251}
    int local35; 		// %flags{251}
    int local36; 		// %flags{245}
    int local37; 		// %flags{235}
    int local38; 		// %ZF{390}
    int local39; 		// %ZF{29}
    __size32 local4; 		// m[esp - 12]
    int local40; 		// %ZF{157}
    int local41; 		// %ZF{251}
    int local42; 		// %ZF{251}
    int local43; 		// %ZF{245}
    int local44; 		// %ZF{235}
    int local45; 		// %CF{391}
    int local46; 		// %CF{29}
    int local47; 		// %CF{157}
    int local48; 		// %CF{251}
    int local49; 		// %CF{251}
    __size32 local5; 		// m[esp - 8]
    int local50; 		// %CF{245}
    int local51; 		// %CF{235}
    __size16 local52; 		// param3{317}
    unsigned char local53; 		// param4{318}
    __size32 local54; 		// param5{320}
    unsigned int local55; 		// param6{321}
    __size32 *local56; 		// esp_7{323}
    __size16 local57; 		// param3{332}
    unsigned char local58; 		// param4{333}
    unsigned int local59; 		// param6{336}
    __size32 local6; 		// m[esp - 4]
    __size16 local60; 		// param2{362}
    __size32 *local61; 		// esp_5{369}
    __size16 local62; 		// param3{378}
    unsigned char local63; 		// param4{379}
    __size32 local64; 		// param5{381}
    unsigned int local65; 		// param6{382}
    __size32 *local66; 		// esp_4{384}
    int local67; 		// local31{389}
    int local68; 		// local38{390}
    int local69; 		// local45{391}
    int local7; 		// m[esp + 8]
    unsigned int local70; 		// eax_1{399}
    __size32 *local71; 		// esp_6{403}
    int local72; 		// local8{492}
    __size32 local73; 		// local12{493}
    __size32 local74; 		// local5{494}
    __size32 local75; 		// local4{495}
    unsigned int local76; 		// local3{496}
    __size32 local77; 		// local2{497}
    __size32 local78; 		// local24{498}
    int local79; 		// local27{499}
    int local8; 		// m[esp + 8]{492}
    __size32 *local80; 		// esp_12{422}
    __size16 local81; 		// param3{431}
    unsigned char local82; 		// param4{432}
    __size32 local83; 		// param5{434}
    unsigned int local84; 		// param6{435}
    __size32 *local85; 		// esp_7{437}
    int local9; 		// m[esp + 8]{484}

    ebp = esp - 4;
    eax = 0;
    esp_7 = esp - 24;
    local52 = param3;
    local53 = param4;
    local54 = param5;
    local55 = param6;
    local56 = esp_7;
    local57 = param3;
    local58 = param4;
    local59 = param6;
    local62 = param3;
    local63 = param4;
    local64 = param5;
    local65 = param6;
    local66 = esp_7;
    local81 = param3;
    local82 = param4;
    local83 = param5;
    local84 = param6;
    local85 = esp_7;
    if (param1 != 0) {
        tmp1 = param1 - 1;
        flags = SUBFLAGS32(param1, 1, tmp1);
        if (param1 != 1) {
L1:
            param3 = local81;
            param4 = local82;
            param5 = local83;
            param6 = local84;
            esp_7 = local85;
            eax = 1;
        } else {
            ecx = *24;
            ebx = *(ecx + 4);
            esi = InterlockedCompareExchange;
            esp_1 = esp - 28;
            edi = 0x10003378;
            for(;;) {
                param3 = local57;
                param4 = local58;
                param6 = local59;
                local6 = ebx;
                local5 = edi;
                (*esi)(local29, local26, local23, local21, local19, local17, local14, local10, param2, param3, param4, eax, ecx, param6, ebx, ebp, esi, edi, flags, ZF, CF);
                local52 = cx;
                local53 = dl;
                local57 = cx;
                local58 = dl;
                local60 = param2;
                if (eax == 0) {
                    goto L15;
                }
                flags = SUBFLAGS32(eax, ebx, eax - ebx);
                if (eax == ebx) {
                    break;
                }
                *(__size32*)(esp_15 - 4) = 1000;
                Sleep(*(esp_15 - 4));
                local59 = edx;
                *(__size32*)(esp_15 - 4) = 0;
                esp = esp_15 - 4;
            }
            *(__size32*)(ebp + 12) = 1;
L15:
            *(__size32*)(esp_15 - 4) = 2;
            esi = *(esp_15 - 4);
            if (global30 == 0) {
                *(__size32*)(esp_15 - 4) = 0x100020f0;
                *(__size32*)(esp_15 - 8) = 0x100020e8;
                global30 = 1;
                _initterm_e();
                local55 = edx;
                ecx = *(esp_15 - 4);
                esp_17 = esp_15;
                local54 = ecx;
                local56 = esp_17;
                if (eax != 0) {
L2:
                    param3 = local52;
                    param4 = local53;
                    param5 = local54;
                    param6 = local55;
                    esp_7 = local56;
                    eax = 0;
                } else {
                    *(__size32*)(esp_15 - 4) = 0x100020e4;
                    *(__size32*)(esp_15 - 8) = 0x100020e0;
                    _initterm();
                    global30 = esi;
L9:
                    ecx = *(esp_15 - 4);
                    if (*(ebp + 12) == 0) {
                        *(__size32*)(esp_15 - 4) = 0;
                        *(__size32*)(esp_15 - 8) = edi;
                        InterlockedExchange(*(esp_15 - 8), *(esp_15 - 4));
                    }
                    esp_5 = esp_15;
                    local61 = esp_5;
                    if (*0x10003384 != 0) {
                        *(__size32*)(esp_15 - 4) = 0x10003384;
                        eax = proc11(*(esp_15 - 4), dl, edx, 0); /* Warning: also results in ax, cx, dl, edx */
                        local60 = ax;
                        ecx = *(esp_15 - 4);
                        esp_16 = esp_15;
                        local61 = esp_16;
                        if (eax != 0) {
                            *(__size32*)(esp_15 - 4) = *(ebp + 16);
                            *(__size32*)(esp_15 - 8) = esi;
                            *(__size32*)(esp_15 - 12) = *(ebp + 8);
                            (*global17)(local0, local1, local2, local3, local4, local5, local6, local7, ax, cx, dl, eax, ecx, edx, 0, ebp, esi, edi, <all>, LOGICALFLAGS32(eax), LOGICALFLAGS32(eax), LOGICALFLAGS32(eax));
                            local60 = ax;
                            local61 = esp;
                        }
                    }
                    param2 = local60;
                    esp_5 = local61;
                    global19++;
                    local81 = cx;
                    local82 = dl;
                    local83 = ecx;
                    local84 = edx;
                    local85 = esp_5;
                    goto L1;
                }
            } else {
                *(__size32*)(esp_15 - 4) = 31;
                _amsg_exit();
                goto L9;
            }
        }
    } else {
        if (global19 <= 0) {
            goto L2;
        } else {
            eax = *24;
            global19 = global19 - 1;
            ebx = *(eax + 4);
            local32 = LOGICALFLAGS32(0);
            esi = InterlockedCompareExchange;
            edi = 0x10003378;
            local67 = local32;
            local68 = local39;
            local69 = local46;
            for(;;) {
                param3 = local62;
                param4 = local63;
                param5 = local64;
                param6 = local65;
                esp_4 = local66;
                local31 = local67;
                local38 = local68;
                local45 = local69;
                *(__size32*)(esp_4 - 4) = 0;
                *(unsigned int*)(esp_4 - 8) = ebx;
                *(__size32*)(esp_4 - 12) = edi;
                (*esi)(local28, local1, local2, local3, local4, local5, local13, local9, param2, param3, param4, eax, param5, param6, ebx, ebp, esi, edi, local31, local38, local45);
                local62 = cx;
                local63 = dl;
                local81 = cx;
                local82 = dl;
                if (eax == 0) {
                    goto L46;
                }
                local33 = SUBFLAGS32(eax, ebx, eax - ebx);
                local67 = local33;
                local68 = local40;
                local69 = local47;
                if (eax == ebx) {
                    break;
                }
                *(__size32*)(esp_13 - 4) = 1000;
                Sleep(*(esp_13 - 4));
                local64 = ecx;
                local65 = edx;
                local66 = esp_14;
            }
            *(__size32*)(ebp - 4) = 1;
L46:
            if (global30 == 2) {
                *(__size32*)(esp_13 - 4) = global44;
                (*DecodePointer)(local0, local1, local2, local3, local4, local5, local6, local7, param2, cx, dl, global30, ecx, edx, ebx, ebp, DecodePointer, edi, <all>, SUBFLAGS32(global30, 2, global30 - 2), global30 - 2 == 0, global30 < 2);
                local80 = esp_12;
                *(int*)(ebp + 12) = eax;
                if (eax != 0) {
                    *(__size32*)(esp_12 - 4) = global47;
                    (*esi)(local0, local1, local2, local3, local4, local5, local6, local7, ax, cx, dl, eax, ecx, edx, ebx, ebp, esi, edi, <all>, LOGICALFLAGS32(eax), LOGICALFLAGS32(eax), LOGICALFLAGS32(eax));
                    local71 = esp_11;
                    local72 = local8;
                    local73 = local12;
                    local74 = local5;
                    local75 = local4;
                    local76 = local3;
                    local77 = local2;
                    local78 = local24;
                    local79 = local27;
                    ebx = eax;
                    eax_1 = *(ebp + 12);
                    *(unsigned int*)(ebp + 16) = eax_1;
                    *(unsigned int*)(ebp + 8) = eax;
                    local70 = eax_1;
                    eax_1 = local70;
                    ebx_2 = ebx;
                    esp_6 = local71;
                    local8 = local72;
                    local12 = local73;
                    local5 = local74;
                    local4 = local75;
                    local3 = local76;
                    local2 = local77;
                    local24 = local78;
                    local27 = local79;
                    ebx = ebx_2 - 4;
                    local70 = eax_1;
                    local71 = esp_6;
                    local72 = local8;
                    local72 = local8;
                    local73 = local12;
                    local73 = local12;
                    local74 = local5;
                    local74 = local5;
                    local75 = local4;
                    local75 = local4;
                    local76 = local3;
                    local76 = local3;
                    local77 = local2;
                    local77 = local2;
                    local78 = local24;
                    local78 = local24;
                    local79 = local27;
                    local79 = local27;
                    while ((unsigned int)(ebx_2 - 4) >= *(ebp + 12)) {
                        if (*(ebx_2 - 4) == 0) {
                            continue;
                        }
                        _encoded_null();
                        local70 = eax;
                        local71 = esp;
                        tmp1 = *(ebx_2 - 4) - eax;
                        if (*(ebx_2 - 4) == eax) {
                            continue;
                        }
                        *(__size32*)(esp_6 - 4) = *(ebx_2 - 4);
                        (*esi)(local27, local24, local2, local3, local4, local5, local12, local8, ax, cx, dl, eax, ecx, edx, ebx_2 - 4, ebp, esi, edi, <all>, SUBFLAGS32(*(ebx_2 - 4), eax, tmp1), tmp1 == 0, *(ebx_2 - 4) < eax);
                        *(__size32*)(ebp - 8) = eax;
                        _encoded_null();
                        *(__size32*)ebx_1 = eax;
                        (**(ebp - 8))(local0, local1, local2, local3, local4, local5, local6, local7, ax, cx, dl, eax, ecx, edx, ebx_1, ebp, esi, edi, <all>, local37, local44, local51);
                        *(__size32*)(esp_9 - 4) = global44;
                        (*esi)(local0, local1, local2, local3, local4, local5, local6, local7, ax, cx, dl, eax, ecx, edx, ebx, ebp, esi, edi, <all>, local36, local43, local50);
                        *(__size32*)(esp_8 - 4) = global47;
                        *(__size32*)(ebp - 8) = eax;
                        (*esi)(local0, local1, local2, local3, local4, local5, local6, local7, ax, cx, dl, eax, ecx, edx, ebx, ebp, esi, edi, <all>, local34, local41, local48);
                        local70 = eax;
                        local70 = eax;
                        local71 = esp_18;
                        local71 = esp_18;
                        local72 = local11;
                        local72 = local11;
                        local73 = local15;
                        local73 = local15;
                        local74 = local16;
                        local74 = local16;
                        local75 = local18;
                        local75 = local18;
                        local76 = local20;
                        local76 = local20;
                        local77 = local22;
                        local77 = local22;
                        local78 = local25;
                        local78 = local25;
                        local79 = local30;
                        local79 = local30;
                        ecx = *(ebp - 8);
                        if (*(ebp + 16) == ecx && *(ebp + 8) == eax) {
                            continue;
                        }
                        *(__size32*)(ebp + 16) = ecx;
                        *(__size32*)(ebp + 12) = ecx;
                        *(unsigned int*)(ebp + 8) = eax;
                        ebx = eax;
                        eax_1 = local70;
                        ebx_2 = ebx;
                        esp_6 = local71;
                        local8 = local72;
                        local12 = local73;
                        local5 = local74;
                        local4 = local75;
                        local3 = local76;
                        local2 = local77;
                        local24 = local78;
                        local27 = local79;
                        ebx = ebx_2 - 4;
                        local70 = eax_1;
                        local71 = esp_6;
                        local72 = local8;
                        local72 = local8;
                        local73 = local12;
                        local73 = local12;
                        local74 = local5;
                        local74 = local5;
                        local75 = local4;
                        local75 = local4;
                        local76 = local3;
                        local76 = local3;
                        local77 = local2;
                        local77 = local2;
                        local78 = local24;
                        local78 = local24;
                        local79 = local27;
                        local79 = local27;
                    }
                    *(__size32*)(esp_6 - 4) = *(ebp + 12);
                    free(*(esp_6 - 4));
                    _encoded_null();
                    local80 = esp;
                    global47 = eax;
                    global44 = eax;
                }
                param2 = ax;
                esp_12 = local80;
                global30 = 0;
                local81 = cx;
                local81 = cx;
                local82 = dl;
                local82 = dl;
                local83 = ecx;
                local84 = edx;
                local85 = esp_12;
                if (*(ebp - 4) == 0) {
                    *(__size32*)(esp_12 - 4) = 0;
                    *(__size32*)(esp_12 - 8) = edi;
                    InterlockedExchange(*(esp_12 - 8), *(esp_12 - 4));
                    local83 = ecx;
                    local84 = edx;
                    local85 = esp;
                    goto L1;
                }
                goto L1;
            } else {
                *(__size32*)(esp_13 - 4) = 31;
                _amsg_exit();
                local84 = edx;
                ecx = *(esp_13 - 4);
                esp = esp_13;
                local83 = ecx;
                local85 = esp;
                goto L1;
            }
            goto L1;
        }
    }
    cx = param3;
    dl = param4;
    ecx = param5;
    edx = param6;
    esp = esp_7;
    edi = *esp;
    esi = *(esp + 4);
    ebx = *(esp + 8);
    ebp = *ebp;
    return eax; /* WARNING: Also returning: esi := esi, ax := param2, cx := cx, dl := dl, ecx := ecx, edx := edx, ebx := ebx, ebp := ebp, edi := edi */
}

// address: 0x100016d0
__size32 proc5(__size32 param1, __size32 param2, __size32 param3) {
    __size32 ebp; 		// r29
    __size32 ecx; 		// r25
    __size32 edx; 		// r26
    void *esp; 		// r28
    __size32 *esp_1; 		// r28{2}
    __size32 local1; 		// param2{30}
    __size32 local2; 		// param3{31}

    esp_1 = (esp - 4);
    local1 = param2;
    local2 = param3;
    if (param1 == 1) {
        CreateThread();
        local1 = ecx;
        local2 = edx;
    }
    param2 = local1;
    param3 = local2;
    ebp = *esp_1;
    return 1; /* WARNING: Also returning: ecx := param2, edx := param3, ebp := ebp */
}

// address: 0x10001ab5
void proc6() {
    global2 = -1;
    return;
}

// address: 0x10001eb5
void proc7(__size32 *param1) {
    __size32 ecx; 		// r25
    __size32 local0; 		// m[esp]

    ecx = *(param1 - 16);
    *(__size32*)0 = ecx;
    *(__size32*)param1 = local0;
    return;
}

// address: 0x10001d90
int proc11(unsigned int param1, unsigned char param2, unsigned int param3, unsigned int param4) {
    __size16 ax; 		// r0
    __size16 cx; 		// r1
    unsigned char dl; 		// r10
    __size32 eax; 		// r24
    __size32 eax_1; 		// r24{11}
    unsigned int edx; 		// r26
    int esp; 		// r28
    unsigned int local1; 		// m[esp - 48]

    eax_1 = *0;
    *(int*)0 = (esp - 20);
    eax = proc12(0x10000000, param2, param3); /* Warning: also results in ax, cx, dl, edx */
    if (eax == 0) {
L1:
        eax = 0;
        *(__size32*)0 = eax_1;
    } else {
        local1 = param1 - 0x10000000;
        eax = proc13(0x10000000, local1, param4); /* Warning: also results in edx */
        if (eax == 0) {
            goto L1;
        } else {
            eax = *(eax + 36);
            eax =  !(eax / 0x80000000) & 0x1;
            *(__size32*)0 = eax_1;
        }
    }
    return eax; /* WARNING: Also returning: ax := ax, cx := cx, dl := dl, edx := edx */
}

// address: 0x10001d00
unsigned int proc12(__size16 *param1, unsigned char param2, unsigned int param3) {
    short ax; 		// r0
    short cx; 		// r1
    unsigned int eax; 		// r24

    cx = (unsigned short) param1;
    if (*param1 == 0x5a4d) {
        eax = *(param1 + 60);
        if (*(eax + param1) != 0x4550) {
L1:
            eax = 0;
            ax = 0;
        } else {
            cx = 267;
            param2 =  (*(eax + param1 + 24) == 267) ? 1 : 0;
            param3 = 0 >> 8 & 0xffffff | (param2);
            eax = param3;
            ax = (unsigned short) param3;
        }
    } else {
        goto L1;
    }
    return eax; /* WARNING: Also returning: ax := ax, cx := cx, dl := param2, edx := param3 */
}

// address: 0x10001d40
__size32 proc13(__size32 param1, unsigned int param2, unsigned int param3) {
    unsigned int eax; 		// r24
    unsigned int ebx; 		// r27
    unsigned int ebx_1; 		// r27{31}
    __size32 ecx; 		// r25
    __size32 edx; 		// r26
    __size32 edx_1; 		// r26{82}
    unsigned int esi; 		// r30
    unsigned int local0; 		// param3{61}
    unsigned int local1; 		// ebx_1{66}
    __size32 local2; 		// edx_1{82}

    ecx = *(param1 + 60);
    eax = *(unsigned short*)(ecx + param1 + 20);
    esi = *(unsigned short*)(ecx + param1 + 6);
    edx = 0;
    eax = eax + ecx + param1 + 24;
    local0 = param3;
    if (esi == 0) {
L1:
        eax = 0;
        local2 = edx;
    } else {
        do {
            edx_1 = edx;
            param3 = local0;
            ecx = *(eax + 12);
            local1 = param3;
            local2 = edx_1;
            if (param2 >= ecx) {
                ebx = *(eax + 8);
                ebx_1 = ebx + ecx;
                local1 = ebx_1;
                if (param2 < ebx + ecx) {
                    goto L0;
                }
                goto L2;
            }
L2:
            ebx_1 = local1;
            edx = edx_1 + 1;
            eax += 40;
            local0 = ebx_1;
        } while (edx_1 + 1 < esi);
        goto L1;
    }
L0:
    edx_1 = local2;
    return eax; /* WARNING: Also returning: edx := edx_1 */
}

