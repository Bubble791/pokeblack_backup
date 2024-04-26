#include "global.h"
#include "main.h"
#include "pokedex.h"
#include "touchscreen.h"

FS_EXTERN_OVERLAY(OVY_298);
FS_EXTERN_OVERLAY(OVY_299);
FS_EXTERN_OVERLAY(OVY_300);
FS_EXTERN_OVERLAY(OVY_301);
FS_EXTERN_OVERLAY(OVY_303);
FS_EXTERN_OVERLAY(OVY_304);

int ovy302_21ad624(int, PokeDexListData*, int);
void ovy302_21ad6d0(int, u16*, u16);
void ovy302_21ad764(int, u8*);
int ovy302_21acee0(int a1, int a2, void *a3, void *a4);
int ovy302_21acfc8(int a1, int a2, void *a3, void *a4);
int ovy302_21acff4(int a1, int a2, void *a3, void *a4);
void ovy302_21ad01c(PokeDexMain*);
void ovy302_21ad030(PokeDexMain*);
int PokeDexMain_SetNextApp(PokeDexMain *a1, int a2);
int sub_21AD04C(PokeDexMain *a1);
int PokeDexMain_MakeOpenAnimData(PokeDexMain *a1);
int PokeDexMain_OpenAnimEnd(PokeDexMain *a1);
int ovy302_21ad0e8(PokeDexMain *a1);
int ovy302_21ad72c(int);
int ovy302_21ad174(PokeDexMain *a1);
int ovy302_21ad214(PokeDexMain *a1);
int ovy302_21ad268(PokeDexMain *a1);
int ovy302_21ad2d4(PokeDexMain *a1);
int ovy302_21ad368(PokeDexMain *a1);
int ovy302_21ad3f4(PokeDexMain *a1);
int ovy302_21ad484(PokeDexMain *a1);
int ovy302_21ad4fc(PokeDexMain *a1);
int ovy302_21ad574(PokeDexMain *a1);
void ovy302_21ad78c(u16 a1);
void ovy302_21ad7a8(u16 a1);
void ovy302_21ad7c8(int result, int a2, int *a3);

int ovy302_21acee0(int a1, int a2, void *a3, void *a4)
{
    PokeDexMain *v5; // r5
    void *v6;               // r0
    int v7;               // r4
    int v8;               // r0
    int v9;

    GFL_HeapCreateChild(1, 105, 0x10000);
    v5 = (PokeDexMain *)GFL_ProcInitSubsystem(a1, sizeof(PokeDexMain), 105);
    MI_CpuFill8(v5, 0, sizeof(PokeDexMain));

    v5->inputParam = (PokeDexParamInput *)a3;
    v5->unk4 = CreateGameProcManager(105);
    v5->unk10 = ovy302_21ad624(v5->inputParam->dexSave, &v5->unkC, 105);
    v5->unk12 = 0;
    ovy302_21ad6d0(v5->inputParam->dexSave, v5->unkC.listData, v5->unk10);
    ovy302_21ad764(v5->inputParam->dexSave, v5->unk1A);
    v6 = sub_02017934(v5->inputParam->gameData);
    v7 = sub_02010CB8(v6);
    v8 = sub_02034F6C();
    sub_02010D80(v7, v8);
    sub_02010D90(v7, 0);
    v9 = v5->inputParam->unkC;
    if (!v5->inputParam->unkC)
    {
        v5->unk24 = POKEDEX_FUNC_START_OPEN_DEX_ANIM;
    }
    else
    {
        if (v9 == 1)
        {
            if (sub_0200D1F8(v5->inputParam->dexSave) == 2)
            {
                v5->unk24 = 11;
            }
            else
            {
                v5->unk24 = 3;
            }
        }
        else if (v9 == 2)
        {
            v5->unk24 = 5;
            v5->unk2C = 1;
        }
        else if (v9 == 3)
        {
            v5->unk24 = 5;
            v5->unk2C = 2;
        }
        else if (v9 == 4)
        {
            v5->unk24 = 5;
            v5->unk2C = 3;
        }
        else
        {
            if (v9 == 5)
            {
                v5->unk24 = 5;
                v5->unk2C = 4;
            }
            else
            {
                if (v9 == 7)
                {
                    v5->unk24 = 11;
                }
                else
                {
                    if (v9 == 8)
                        v5->unk24 = 9;
                    else
                        v5->unk24 = 7;
                }
            }
        }
    }
    return 1;
}

const DexViewFunc off_21AE3E8[] = 
{
    [POKEDEX_FUNC_GET_CHILD_APP] = sub_21AD04C, 
    [POKEDEX_FUNC_START_OPEN_DEX_ANIM] = PokeDexMain_MakeOpenAnimData,
    [POKEDEX_FUNC_WAIT_OPEN_DEX_ANIM] = PokeDexMain_OpenAnimEnd,
    ovy302_21ad0e8, 
    ovy302_21ad214, ovy302_21ad2d4,
    ovy302_21ad268, ovy302_21ad368, ovy302_21ad3f4, ovy302_21ad484, ovy302_21ad4fc,
    ovy302_21ad574
};

extern int sub_0203A978(int);

int ovy302_21acfc8(int a1, int a2, void *a3, void *a4)
{
    int v6; // r0
    int v7; // r1
    PokeDexMain *dexView = (PokeDexMain *)a4;

    if (dexView->unk24 == 13)
        return 1;
    v6 = sub_0203A978(dexView->unk4);
    v7 = dexView->unk24;
    dexView->unk8 = v6;
    dexView->unk24 = off_21AE3E8[v7](dexView);
    return 0;
}

int ovy302_21acff4(int a1, int a2, void *a3, void *a4)
{
    PokeDexMain *dexView = (PokeDexMain *)a4;

    ovy302_21ad01c(dexView);
    ovy302_21ad030(dexView);
    FreeGameProcManager(dexView->unk4);
    GFL_ProcReleaseSubsystem(a1);
    GFL_HeapDelete(105);
    return 1;
}

void ovy302_21ad01c(PokeDexMain *a1)
{
    void *result; // r0

    result = a1->unkC.listData;
    if (result)
    {
        GFL_HeapFree(result);
        a1->unkC.listData = 0;
    }
}

void ovy302_21ad030(PokeDexMain *a1)
{
    void *result; // r0

    result = a1->unk14;
    if (result)
    {
        GFL_HeapFree(result);
        a1->unk14 = 0;
    }
}

int PokeDexMain_SetNextApp(PokeDexMain *a1, int a2)
{
    a1->nextApp = a2;
    return 0;
}

int sub_21AD04C(PokeDexMain *a1) // 等待程序运行结束
{
    if (a1->unk8 != 1)
        return a1->nextApp;
    else
        return 0; 
}

const char data_021AE5A0[] = ("zukan_search_engine.c");

int PokeDexMain_MakeOpenAnimData(PokeDexMain *a1)
{
    PokeDexOpenAnim *v2; // r0
    PokeDexParamInput *v3; // r1

    v2 = (PokeDexOpenAnim*)GFL_HeapAllocate(105, sizeof(PokeDexOpenAnim), 0, (char*)&data_021AE5A0, 362);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->unk4 = a1->inputParam->playerInfo;
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_301), 0x021A023C, a1->unk38);
    return PokeDexMain_SetNextApp(a1, POKEDEX_FUNC_WAIT_OPEN_DEX_ANIM);
}

int PokeDexMain_OpenAnimEnd(PokeDexMain *a1)
{
    int next;
    PokeDexOpenAnim *ret = (PokeDexOpenAnim*)a1->unk38;

    switch (ret->unk8)
    {
    case 0:
        a1->inputParam->unkE = 0;
        next = 13;
        break;
    case 1:
        a1->inputParam->unkE = 1;
        next = 13;
        break;
    case 2:
        if (sub_0200D1F8(a1->inputParam->dexSave) == 2)
            next = 11;
        else
            next = POKEDEX_FUNC_MAIN_MENU_UNOVA_MODE;
        break;
    }
    GFL_HeapFree(a1->unk38);
    return next;
}

extern void sub_0200D1E4(int, int);

int ovy302_21ad0e8(PokeDexMain *a1)
{
    PokeDexSeacherEngine_TYPE2 *v2;     // r4
    PokeDexParamInput *v3; // r0

    v2 = (PokeDexSeacherEngine_TYPE2*)GFL_HeapAllocate(105, sizeof(PokeDexSeacherEngine_TYPE2), 0, (char*)&data_021AE5A0, 430);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->dexSave = a1->inputParam->dexSave;
    if (sub_0200D1F8(v2->dexSave) == 2)
        sub_0200D1E4(a1->inputParam->dexSave, 0);
    v2->unk8 = a1->unk12;
    if (!a1->unk12 && !ovy302_21ad72c(a1->inputParam->dexSave))
    {
        v2->unkC.listData = &a1->unkC.listData[1];
        v2->unkA = a1->unk10 - 1;
    }
    else
    {
        v2->unkC.listData = a1->unkC.listData;
        v2->unkA = a1->unk10;
    }
    
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_299), 0x021A25C8, a1->unk38);
    return PokeDexMain_SetNextApp(a1, 4);
}

int ovy302_21ad174(PokeDexMain *a1)
{
    int r5;
    PokeDexSeacherEngine_TYPE2 *seacher = (PokeDexSeacherEngine_TYPE2*)a1->unk38;

    switch (seacher->unk10)
    {
    case 0:
        if (!a1->unk12)
        {
            a1->inputParam->unkE = 0;
            r5 = 0xd;
        }
        else
        {
            ovy302_21ad01c(a1);
            a1->unk10 = ovy302_21ad624(a1->inputParam->dexSave, &a1->unkC, 0x69);
            a1->unk12 = 0;
            r5 = 3;
        }
        break;
    case 1:
        a1->inputParam->unkE = 1;
        r5 = 0xd;
        break;
    case 2:
        ovy302_21ad01c(a1);
        a1->unk10 = ovy302_21ad624(a1->inputParam->dexSave, &a1->unkC, 0x69);
        r5 = 3;
        break;
    case 3:
        r5 = 5;
        a1->unk2C = 1;
        
        break;
    case 4:
        if (a1->unk12 == 1)
        {
            ovy302_21ad01c(a1);
            a1->unk10 = ovy302_21ad624(a1->inputParam->dexSave, &a1->unkC, 0x69);
        }
        r5 = 7;
        break;
    case 5:
        r5 = 0xb;
        break;
    default:
        a1->inputParam->unkE = 0;
        r5 = 0xd;
        break;
    }
    GFL_HeapFree(a1->unk38);
    return r5;
}

int ovy302_21ad214(PokeDexMain *a1)
{
    PokeDexSeacherEngine_TYPE3 *v2;     // r0
    PokeDexParamInput *v3; // r1

    v2 = (PokeDexSeacherEngine_TYPE3*)GFL_HeapAllocate(105, 24, 0, (char*)&data_021AE5A0, 0x219);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->unk4 = a1->inputParam->dexSave;
    v2->unk8 = a1->unk1A;
    v2->unk10 = 0;
    v2->unk14 = 0;
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_300), 0x021A4094, a1->unk38);
    return PokeDexMain_SetNextApp(a1, 8);
}

int ovy302_21ad268(PokeDexMain *a1)
{
    int v5; // r4

    PokeDexSeacherEngine_TYPE3 *seacher = (PokeDexSeacherEngine_TYPE3 *)a1->unk38;
    switch (seacher->unkC)
    {
    case 0:
        ovy302_21ad01c(a1);
        if (sub_0200D1F8(a1->inputParam->dexSave) == 2)
            sub_0200D1E4(a1->inputParam->dexSave, 0);
        a1->unkC.listData = (void*)seacher->unk10;
        a1->unk10 = seacher->unk14;
        a1->unk12 = 1;
        v5 = 3;
        break;
    case 1:
        if (sub_0200D1F8(a1->inputParam->dexSave) == 2)
            sub_0200D1E4(a1->inputParam->dexSave, 0);
        a1->unk12 = 0;
        v5 = 3;
        break;

    case 2:
    default:
        a1->inputParam->unkE = 1;
        v5 = 0xd;
        break;
    }
    GFL_HeapFree(a1->unk38);
    return v5;
}

extern int GameData_GetPokedex(void* gameData);
extern int sub_0200D214(int);

int ovy302_21ad2d4(PokeDexMain *a1)
{
    int v2;                         // r0
    int v3;                         // r6
    PokeDexSeacherEngine_TYPE4 *v4; // r4

    v2 = GameData_GetPokedex(a1->inputParam->gameData);
    v3 = sub_0200D214(v2);
    v4 = (PokeDexSeacherEngine_TYPE4 *)GFL_HeapAllocate(105, 28, 0, (char*)&data_021AE5A0, 0x26E);
    v4->gameData = a1->inputParam->gameData;
    v4->unk4 = a1->unk2C;
    v4->unkE = 0;
    v4->unk14 = a1->unk30;

    if (a1->unk30 == 1)
    {
        v4->unk8 = a1->unk14;
        v4->unkC = a1->unk18;
    }
    else
    {
        v4->unk8 = a1->unkC.listData;
        v4->unkC = a1->unk10;
    }
    for (u16 i = 0; i < v4->unkC; i++)
    {
        if (v3 == v4->unk8[i])
        {
            v4->unkE = i;
            break;
        }
    }

    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_298), 0x021ABF9C, v4);
    a1->unk38 = (void *)v4;
    return PokeDexMain_SetNextApp(a1, 6);
}

extern void sub_0200D200(int, u16);

int ovy302_21ad368(PokeDexMain *a1)
{
    PokeDexSeacherEngine_TYPE4 *v4; // r6
    int v1;                         // r4
    int v3;                         // r0

    v3 = GameData_GetPokedex(a1->inputParam->gameData);
    v4 = (PokeDexSeacherEngine_TYPE4 *)a1->unk38;
    if (!a1->unk30)
        a1->unk34 = 0;
    sub_0200D200(v3, v4->unk8[v4->unkE]);

    switch (v4->unk10)
    {
    case 1:

        a1->inputParam->unkE = 1;
        v1 = 13;
        break;

    case 0:
        v1 = 9;
        a1->unk34 = 1;
        break;

    case 2:
        if (!a1->unk30)
        {
            if (sub_0200D1F8(a1->inputParam->dexSave) == 2)
                sub_0200D1E4(a1->inputParam->dexSave, 0);
            a1->inputParam->unkE = 0;
            v1 = 3;
        }
        else
        {
            a1->inputParam->unkE = 0;
            v1 = 9;
        }

        break;
    }

    if (a1->unk30 == 1)
        ovy302_21ad030(a1);
    GFL_HeapFree(a1->unk38);
    return v1;
}

void ovy302_21ad8e0(int, PokeDexSeacherEngine_TYPE5*, int);

int ovy302_21ad3f4(PokeDexMain *a1)
{
    void *v2;     // r0
    int v3;     // r6
    PokeDexSeacherEngine_TYPE5 *v4; // r4

    v2 = sub_02017934(a1->inputParam->gameData);
    v3 = sub_02010CB8(v2);
    a1->unk38 = GFL_HeapAllocate(105, sizeof(PokeDexSeacherEngine_TYPE5), 0, (char*)&data_021AE5A0, 751);
    MI_CpuFill8(a1->unk38, 0, sizeof(PokeDexSeacherEngine_TYPE5));
    v4 = (PokeDexSeacherEngine_TYPE5*)a1->unk38;
    v4->gameData = a1->inputParam->gameData;

    if ((a1->unk34 == 1 && a1->unk30 == 0) ) 
    {
        ovy302_21ad8e0(v3, v4, 1);
    }
    else if (a1->unk34 == 1 && a1->unk30 == 1)
    {
        ovy302_21ad8e0(v3, v4, 1);
    }
    else
    {
        ovy302_21ad8e0(v3, v4, 0);
    }
    
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_303), 0x021A32D8, v4);
    return PokeDexMain_SetNextApp(a1, 10);
}

int ovy302_21ad80c(int, int, void*, int);
int ovy302_21ad484(PokeDexMain *a1)
{
    int v3;
    int v5; // r0

    PokeDexSeacherEngine_TYPE5 *seacher = (PokeDexSeacherEngine_TYPE5 *)a1->unk38;

    switch (seacher->unkC14C)
    {
    case 0:

        a1->inputParam->unkE = 1;
        v3 = 13;
        a1->unk30 = 0;
        break;
    case 1:
        if (a1->unk34 == 1)
        {
            a1->unk2C = 2;
            v3 = 5;
        }
        else
        {
            sub_0200D1E4(a1->inputParam->dexSave, 2);
            v3 = 11;
        }
        a1->unk30 = 0;
        break;

    case 2:
        v5 = sub_02010CB8(sub_02017934(a1->inputParam->gameData));
        a1->unk2C = 1;
        a1->unk30 = 1;
        v3 = 5;
        a1->unk18 = ovy302_21ad80c(a1->inputParam->dexSave, v5, &a1->unk14, 105);
        break;

    default:
        a1->inputParam->unkE = 1;
        v3 = 13;
        a1->unk30 = 0;
        break;
    }

    GFL_HeapFree(a1->unk38);
    return v3;
}

void ovy302_21adae8(int, PokeDexSeacherEngine_TYPE6*);

int ovy302_21ad4fc(PokeDexMain *a1)
{
    void *v2;     // r0
    int v3;     // r6
    PokeDexSeacherEngine_TYPE6 *v4; // r4

    v2 = sub_02017934(a1->inputParam->gameData);
    v3 = sub_02010CB8(v2);
    a1->unk38 = GFL_HeapAllocate(105, sizeof(PokeDexSeacherEngine_TYPE6), 0, (char*)&data_021AE5A0, 860);
    MI_CpuFill8(a1->unk38, 0, sizeof(PokeDexSeacherEngine_TYPE6));
    v4 = (PokeDexSeacherEngine_TYPE6*)a1->unk38;
    v4->gameData = a1->inputParam->gameData;
    ovy302_21ad01c(a1);
    ovy302_21ad030(a1);
    ovy302_21adae8(v3, v4);
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_304), 0x021A1DAC, v4);
    return PokeDexMain_SetNextApp(a1, 12);
}

int ovy302_21ad574(PokeDexMain *a1)
{
    int r5;
    PokeDexSeacherEngine_TYPE6 *seacher = (PokeDexSeacherEngine_TYPE6 *)a1->unk38;

    switch (seacher->unk9D4)
    {
    case 0:
        r5 = 0xD;
        a1->inputParam->unkE = 1;

        break;
    case 1:
        r5 = 0xD;
        a1->inputParam->unkE = 0;

        break;
    case 2:
        int v1 = sub_02010CB8(sub_02017934(a1->inputParam->gameData));
        sub_02010D80(v1, sub_02034F6C());
        sub_02010D90(v1, 0);
        sub_0200D1E4(a1->inputParam->dexSave, 2);
        r5 = 9;
        break;

    case 3:
        sub_0200D1F8(a1->inputParam->dexSave);
        sub_0200D1E4(a1->inputParam->dexSave, 1);
        ovy302_21ad01c(a1);
        a1->unk10 = ovy302_21ad624(a1->inputParam->dexSave, &a1->unkC, 0x69);
        r5 = 3;
        break;
    case 4:
        sub_0200D1F8(a1->inputParam->dexSave);
        sub_0200D1E4(a1->inputParam->dexSave, 0);
        ovy302_21ad01c(a1);
        a1->unk10 = ovy302_21ad624(a1->inputParam->dexSave, &a1->unkC, 0x69);
        r5 = 3;
        break;

    default:
        r5 = 0xD;
        a1->inputParam->unkE = 1;
        break;
    }
    GFL_HeapFree(a1->unk38);
    return r5;
}

int ovy302_21ae210(int, int, u16**);

int ovy302_21ad624(int a1, PokeDexListData *a2, int a3)
{
    int numDex;
    u32 v7;
    u16 i;
    u16 *v11;

    if (sub_0200D1F8(a1) == 1)
        numDex = ovy302_21ae210(0, a3, &v11);
    else
        numDex = ovy302_21ae210(1, a3, &v11);
    v7 = 0;
    for (i = 0; v7 < numDex; ++v7)
    {
        if (PokeDexSave_IsMonCaught(a1, v11[v7]) == 1 || sub_0200D7F4(a1, v11[v7]) == 1)
        {
            i = (v7 + 1);
        }
    }
    a2->listData = v11;
    return i;
}

int ovy302_21ad688(int a1, u8 *a2, int a3, int a4, int a5);

asm int ovy302_21ad688(int a1, u8 *a2, int a3, int a4, int a5)
{
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl PokeDexSave_IsMonCaught
	cmp r0, #1
	beq _021AD6A8
	ldrh r1, [r5]
	add r0, r7, #0
	bl sub_0200D7F4
	cmp r0, #1
	bne _021AD6CC
_021AD6A8:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021AD6C0
	lsl r0, r6, #1
	add r0, r6, r0
	add r0, r5, r0
	add r0, r0, r4
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _021AD6CC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AD6C0:
	add r0, r5, r4
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _021AD6CC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AD6CC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
}

void ovy302_21ad6d0(int dexSave, u16 *a2, u16 a3)
{
    u16 v4;         // r6
    u16 i; // r4

    int v9;         // [sp+8h] [bp-20h]

    v4 = 0xFFFF;
    v9 = sub_0200D214(dexSave);
    for (i = 0; i < a3; i++)
    {
        if (sub_0200D7F4(dexSave, a2[i]) == 1)
        {
            if (v9 == a2[i])
                return;
            if (v4 == 0xFFFF)
                v4 = a2[i];
        }
    }

    if (v4 != 0xFFFF)
        sub_0200D200(dexSave, v4);
}

int ovy302_21ad72c(int a1)
{
    if (sub_0200D1F8(a1) == 1)
        return 1;
    return PokeDexSave_IsMonCaught(a1, 494) == 1 || sub_0200D7F4(a1, 494) == 1;
}

void ovy302_21ad764(int a1, u8 *a2)
{
    if (sub_0200D1F8(a1) == 1)
        a2[0] = 0;
    else
        a2[0] = 1;
    a2[1] = 0;
    a2[2] = -1;
    a2[3] = -1;
    a2[4] = -1;
    a2[5] = -1;
    a2[6] = -1;
}

void ovy302_21ad78c(u16 a1)
{
    GFL_FadeScreenSet(0, 1, 1, 0, 6, 1, a1);
}

void ovy302_21ad7a8(u16 a1)
{
    GFL_FadeScreenSet(0, 0, 0, 0, 6, 1, a1);
}

void ovy302_21ad7c8(int result, int a2, int *a3)
{
    int v5; // r1

    v5 = *a3 + 1;
    *a3 = v5;
    if (v5 == 4)
    {
        GFL_BGSysMoveBGReq(result, 1, 1);
        GFL_BGSysMoveBGReq(a2, 1, 1);
        *a3 = 0;
    }
}
