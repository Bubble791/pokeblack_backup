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
int ovy302_21ad6d0(int, u16*, int);
int ovy302_21ad764(int, u16*);
int ovy302_21acee0(int a1, int a2, void *a3, void *a4);
int ovy302_21acfc8(int a1, int a2, void *a3, void *a4);
int ovy302_21acff4(int a1, int a2, void *a3, void *a4);
void ovy302_21ad01c(PokeDexStartView*);
void ovy302_21ad030(PokeDexStartView*);
int sub_021AD044(PokeDexStartView *a1, int a2);
int sub_21AD04C(PokeDexStartView *a1);
int ovy302_21ad05c(PokeDexStartView *a1);
int ovy302_21ad0a8(PokeDexStartView *a1);
int ovy302_21ad0e8(PokeDexStartView *a1);
int ovy302_21ad72c(int);
int ovy302_21ad174(PokeDexStartView *a1);
int ovy302_21ad214(PokeDexStartView *a1);
int ovy302_21ad268(PokeDexStartView *a1);
int ovy302_21ad2d4(PokeDexStartView *a1);
int ovy302_21ad368(PokeDexStartView *a1);
int ovy302_21ad3f4(PokeDexStartView *a1);
int ovy302_21ad484(PokeDexStartView *a1);
int ovy302_21ad4fc(PokeDexStartView *a1);
int ovy302_21ad574(PokeDexStartView *a1);

int ovy302_21acee0(int a1, int a2, void *a3, void *a4)
{
    PokeDexStartView *v5; // r5
    void *v6;               // r0
    int v7;               // r4
    int v8;               // r0
    int v9;

    GFL_HeapCreateChild(1, 105, 0x10000);
    v5 = (PokeDexStartView *)GFL_ProcInitSubsystem(a1, sizeof(PokeDexStartView), 105);
    MI_CpuFill8(v5, 0, sizeof(PokeDexStartView));

    v5->inputParam = (PokeDexParamInput *)a3;
    v5->unk4 = CreateGameProcManager(105);
    v5->unk10 = ovy302_21ad624(v5->inputParam->dexSave, &v5->unkC, 105);
    v5->unk12 = 0;
    ovy302_21ad6d0(v5->inputParam->dexSave, v5->unkC.listData, v5->unk10);
    ovy302_21ad764(v5->inputParam->dexSave, &v5->unk1A);
    v6 = sub_02017934(v5->inputParam->gameData);
    v7 = sub_02010CB8(v6);
    v8 = sub_02034F6C();
    sub_02010D80(v7, v8);
    sub_02010D90(v7, 0);
    v9 = v5->inputParam->unkC;
    if (!v5->inputParam->unkC)
    {
        v5->unk24 = 1;
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
    sub_21AD04C, ovy302_21ad05c, ovy302_21ad0e8, ovy302_21ad214, ovy302_21ad2d4,
    ovy302_21ad268, ovy302_21ad368, ovy302_21ad3f4, ovy302_21ad484, ovy302_21ad4fc,
    ovy302_21ad574
};

extern int sub_0203A978(int);

int ovy302_21acfc8(int a1, int a2, void *a3, void *a4)
{
    int v6; // r0
    int v7; // r1
    PokeDexStartView *dexView = (PokeDexStartView *)a4;

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
    PokeDexStartView *dexView = (PokeDexStartView *)a4;

    ovy302_21ad01c(dexView);
    ovy302_21ad030(dexView);
    FreeGameProcManager(dexView->unk4);
    GFL_ProcReleaseSubsystem(a1);
    GFL_HeapDelete(105);
    return 1;
}

void ovy302_21ad01c(PokeDexStartView *a1)
{
    void *result; // r0

    result = a1->unkC.listData;
    if (result)
    {
        GFL_HeapFree(result);
        a1->unkC.listData = 0;
    }
}

void ovy302_21ad030(PokeDexStartView *a1)
{
    void *result; // r0

    result = a1->unk14;
    if (result)
    {
        GFL_HeapFree(result);
        a1->unk14 = 0;
    }
}

int sub_021AD044(PokeDexStartView *a1, int a2)
{
    a1->unk28 = a2;
    return 0;
}

int sub_21AD04C(PokeDexStartView *a1)
{
    if (a1->unk8 != 1)
        return a1->unk28;
    else
        return 0; 
}

const char data_021AE5A0[] = ("zukan_search_engine.c");

int ovy302_21ad05c(PokeDexStartView *a1)
{
    PokeDexSeacherEngine_TYPE1 *v2; // r0
    PokeDexParamInput *v3; // r1

    v2 = (PokeDexSeacherEngine_TYPE1*)GFL_HeapAllocate(105, sizeof(PokeDexSeacherEngine_TYPE1), 0, (char*)&data_021AE5A0, 362);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->unk4 = a1->inputParam->playerInfo;
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_301), 0x021A023C, a1->unk38);
    return sub_021AD044(a1, 2);
}

int ovy302_21ad0a8(PokeDexStartView *a1)
{
    int v1;
    PokeDexSeacherEngine_TYPE1 *seacher = (PokeDexSeacherEngine_TYPE1*)a1->unk38;

    switch (seacher->unk8)
    {
    case 0:
        a1->inputParam->unkE = 0;
        v1 = 13;
        break;
    case 1:

        a1->inputParam->unkE = 1;
        v1 = 13;
        break;
    case 2:
        if (sub_0200D1F8(a1->inputParam->dexSave) == 2)
            v1 = 11;
        else
            v1 = 3;
        break;
    }
    GFL_HeapFree(a1->unk38);
    return v1;
}

extern void sub_0200D1E4(int, int);

int ovy302_21ad0e8(PokeDexStartView *a1)
{
    PokeDexSeacherEngine_TYPE2 *v2;     // r4
    PokeDexParamInput *v3; // r0

    v2 = (PokeDexSeacherEngine_TYPE2*)GFL_HeapAllocate(105, sizeof(PokeDexSeacherEngine_TYPE2), 0, (char*)&data_021AE5A0, 430);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->unk4 = a1->inputParam->dexSave;
    if (sub_0200D1F8(v2->unk4) == 2)
        sub_0200D1E4(a1->inputParam->dexSave, 0);
    v2->unk8 = a1->unk12;
    if (!a1->unk12 && !ovy302_21ad72c(a1->inputParam->dexSave))
    {
        v2->unkC = (int)a1->unkC.listData + 2;
        v2->unkA = a1->unk10 - 1;
    }
    else
    {
        v2->unkC = (int)a1->unkC.listData;
        v2->unkA = a1->unk10;
    }
    
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_299), 0x021A25C8, a1->unk38);
    return sub_021AD044(a1, 4);
}

int ovy302_21ad174(PokeDexStartView *a1)
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

int ovy302_21ad214(PokeDexStartView *a1)
{
    PokeDexSeacherEngine_TYPE3 *v2;     // r0
    PokeDexParamInput *v3; // r1

    v2 = (PokeDexSeacherEngine_TYPE3*)GFL_HeapAllocate(105, 24, 0, (char*)&data_021AE5A0, 0x219);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->unk4 = a1->inputParam->dexSave;
    v2->unk8 = &a1->unk1A;
    v2->unk10 = 0;
    v2->unk14 = 0;
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_300), 0x021A4094, a1->unk38);
    return sub_021AD044(a1, 8);
}

int ovy302_21ad268(PokeDexStartView *a1)
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

int ovy302_21ad2d4(PokeDexStartView *a1)
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
    return sub_021AD044(a1, 6);
}

extern void sub_0200D200(int, u16);

int ovy302_21ad368(PokeDexStartView *a1)
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

int ovy302_21ad3f4(PokeDexStartView *a1)
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
    return sub_021AD044(a1, 10);
}

int ovy302_21ad80c(int, int, void*, int);
int ovy302_21ad484(PokeDexStartView *a1)
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

int ovy302_21ad4fc(PokeDexStartView *a1)
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
    return sub_021AD044(a1, 12);
}

int ovy302_21ad574(PokeDexStartView *a1)
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
extern int PokeDexSave_IsMonCaught(int, u16);
extern int sub_0200D7F4(int, u16);

int ovy302_21ad624(int a1, PokeDexListData *a2, int a3)
{
    int v6;
    u32 v7;
    u16 i;
    u16 *v11;

    if (sub_0200D1F8(a1) == 1)
        v6 = ovy302_21ae210(0, a3, &v11);
    else
        v6 = ovy302_21ae210(1, a3, &v11);
    v7 = 0;
    for (i = 0; v7 < v6; ++v7)
    {
        if (PokeDexSave_IsMonCaught(a1, v11[v7]) == 1 || sub_0200D7F4(a1, v11[v7]) == 1)
        {
            i = (v7 + 1);
        }
    }
    a2->listData = v11;
    return i;
}