#include "global.h"
#include "main.h"
#include "pokedex.h"
#include "touchscreen.h"

FS_EXTERN_OVERLAY(OVY_301);

int ovy302_21ad624(int, void*, int);
int ovy302_21ad6d0(int, void*, int);
int ovy302_21ad764(int, u16*);
int ovy302_21acee0(int a1, int a2, void *a3, void *a4);
int ovy302_21acfc8(int a1, int a2, void *a3, void *a4);
int ovy302_21acff4(int a1, int a2, void *a3, void *a4);
void ovy302_21ad01c(PokeDexStartView*);
void ovy302_21ad030(PokeDexStartView*);
int sub_021AD044(PokeDexStartView *a1, int a2);
int sub_21AD04C(PokeDexStartView *a1);
void ovy302_21ad05c(PokeDexStartView *a1);
int ovy302_21ad0a8(PokeDexStartView *a1);

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
    ovy302_21ad6d0(v5->inputParam->dexSave, v5->unkC, v5->unk10);
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

const DexViewFunc off_21AE3E8[1] = {};

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

    result = a1->unkC;
    if (result)
    {
        GFL_HeapFree(result);
        a1->unkC = 0;
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

void ovy302_21ad05c(PokeDexStartView *a1)
{
    PokeDexSeacherEngine *v2; // r0
    PokeDexParamInput *v3; // r1

    v2 = (PokeDexSeacherEngine*)GFL_HeapAllocate(105, 12, 0, (char*)&data_021AE5A0, 362);
    v3 = a1->inputParam;
    a1->unk38 = v2;
    v2->gameData = v3->gameData;
    v2->playerInfo = a1->inputParam->playerInfo;
    Overlay_QueueGameProc(a1->unk4, FS_OVERLAY_ID(OVY_301), 0x021A023C, a1->unk38);
    sub_021AD044(a1, 2);
}

int ovy302_21ad0a8(PokeDexStartView *a1)
{
    int v1;

    switch (a1->unk38->unk8)
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