#include "global.h"
#include "main.h"
#include "pokedex.h"
#include "touchscreen.h"
#include "overlay_manager.h"

const BgInit data_021A0248 = 
{
    .unk0 = 1,
    .unk2 = 0,
    .unk4 = 3,
    .unk8 = 3,
    .unkC = 0
};

const BGSetup data_021A0270[] = 
{
    {
        .PosY = 0x18,
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1E,
        .CharBaseBlock = 2,
        .CharBlockSize = 0x8000,
        .Priority = 2,
    },
    {
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1D,
        .CharBaseBlock = 4,
        .CharBlockSize = 0x8000,
        .Priority = 0,
    },
    {
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1F,
        .CharBaseBlock = 0,
        .CharBlockSize = 0x8000,
        .Priority = 3,
    },
    {
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1D,
        .CharBaseBlock = 2,
        .CharBlockSize = 0x8000,
        .Priority = 2,
    },
    {
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1E,
        .CharBaseBlock = 4,
        .CharBlockSize = 0x8000,
        .Priority = 1,
    },
    {
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1F,
        .CharBaseBlock = 6,
        .CharBlockSize = 0x8000,
        .Priority = 0,
    },
    {
        .ScreenSize = 0x0800,
        .Resolution = 1,
        .ScreenBaseBlock = 0x1C,
        .CharBaseBlock = 0,
        .CharBlockSize = 0x8000,
        .Priority = 3,
    },
};

enum
{
    POKEDEX_OPEN_ANIM_SETTING,
    POKEDEX_OPEN_ANIM_1,
    POKEDEX_OPEN_ANIM_2,
    POKEDEX_OPEN_ANIM_EXIT,
    POKEDEX_OPEN_ANIM_4,
    POKEDEX_OPEN_ANIM_OPEN,
    POKEDEX_OPEN_ANIM_END
};

typedef struct
{
    PokeDexSeacherEngine_TYPE1 *inputParam;
    int unk4;
    u16 waitTime;
    u8 delay;
    u8 moveBgSeq;
    int taskIndex;
}PokeDexStartIn;

typedef int (*DexStartInFunc)(PokeDexStartIn *);

int PokeDexStartAnim_Start(int manager, int state, void* a2, void* a3);
int PokeDexStartAnim_Loop(int manager, int state, void* a2, void* a3);
int PokeDexStartAnim_End(int manager, int state, void* a2, void* a3);
int PokeDexStartAnim_RunFunc(PokeDexStartIn*);
void ovy301_219fc30(void);
void ovy301_219fc58(int a1);
void ovy301_219fc74(PokeDexStartIn *a1);
void sub_0219FC8C(PokeDexStartIn *a1);
void ovy301_219fc98(void);
void ovy301_219fdbc(void);
void ovy301_219fdf4(PokeDexStartIn *a1);
void ovy301_219ff30(PokeDexStartIn *a1);
int ovy301_219fff0(PokeDexStartIn *a1);
void ovy302_21ad78c(int);
int ovy301_21a004c(PokeDexStartIn *a1);
int ovy301_21a0078(PokeDexStartIn *a1);
int ovy301_21a008c(PokeDexStartIn *a1);
int ovy301_21a00a0(PokeDexStartIn *a1);
int ovy301_21a0120(PokeDexStartIn* a1);
void ovy301_21a0210(void);

const OvyMangerTemplate data_021A023C =
{
    PokeDexStartAnim_Start,
    PokeDexStartAnim_Loop,
    PokeDexStartAnim_End,
};

int PokeDexStartAnim_Start(int manager, int state, void* a2, void* a3)
{
    PokeDexStartIn *v5; // r4

    GFL_HeapCreateChild(1, 126, 0x60000);
    v5 = (PokeDexStartIn*)GFL_ProcInitSubsystem(manager, 16, 126);
    MI_CpuFill8(v5, 0, 16);
    v5->inputParam = (PokeDexSeacherEngine_TYPE1*)a2;
    return 1;
}

int PokeDexStartAnim_Loop(int manager, int state, void* a2, void* a3)
{
    PokeDexStartIn *dexIn = (PokeDexStartIn*) a3;

    if (!PokeDexStartAnim_RunFunc(dexIn))
        return 1;
    else
        return 0;
}

int PokeDexStartAnim_End(int manager, int state, void* a2, void* a3)
{
    GFL_ProcReleaseSubsystem(manager);
    GFL_HeapDelete(126);
    return 1;
}

const DexStartInFunc gPokeDexStartAnimTask[] = 
{
    [POKEDEX_OPEN_ANIM_SETTING] = ovy301_219fff0,
    ovy301_21a004c,
    ovy301_21a0078,
    ovy301_21a008c,
    ovy301_21a00a0,
    [POKEDEX_OPEN_ANIM_OPEN] = ovy301_21a0120,
};

int PokeDexStartAnim_RunFunc(PokeDexStartIn *a1)
{
    int nextTask; // r0

    nextTask = gPokeDexStartAnimTask[a1->taskIndex](a1);
    a1->taskIndex = nextTask;
    return nextTask != POKEDEX_OPEN_ANIM_END;
}

const int data_021A0310[12] = {0};

extern void sub_02046BE0(int);

void ovy301_219fc30(void)
{
    int v0[12];
    
    v0 = data_021A0310;
    sub_02046BE0(0);
    GFL_BGSysSetVRAMBanks(v0);
}

void ovy301_219fc58(int a1)
{
    sub_02045A5C(a1);
    UnknowOffset *v1 = (UnknowOffset*)(0x02FE0000);
    v1->unk3FF8 |= 1;
}

void ovy301_219fc74(PokeDexStartIn *a1)
{
    a1->unk4 = GFL_VBlankTCBAdd(ovy301_219fc58, a1, 0);
}

void sub_0219FC8C(PokeDexStartIn *a1)
{
    GFL_TCBRemove(a1->unk4);
}

void ovy301_219fc98(void)
{
    BgInit v13;
    BGSetup v5;
    BGSetup v6;
    BGSetup v7;
    BGSetup v8;
    BGSetup v9;


    GFL_BGSysCreate(126);
    v13 = data_021A0248;
    GFL_BGSysSetLCDConfig(&v13);

    v5 = data_021A0270[1];
    sub_0204476C(3, &v5, 2);
    sub_02045738(3);

    v6 = data_021A0270[2];
    sub_0204476C(1, &v6, 0);
    sub_020450CC(1, 32, 32736, 32894);
    sub_02045790(1, 1023);

    v7 = data_021A0270[3];
    sub_0204476C(2, &v7, 0);
    sub_02045738(2);

    v8 = data_021A0270[4];
    sub_0204476C(7, &v8, 2);
    sub_02045738(7);
    
    v9 = data_021A0270[0];
    sub_0204476C(5, &v9, 0);
    sub_02045738(5);
    GFL_BGSysSetBGEnabledA(14, 1);
    GFL_BGSysSetBGEnabledB(10, 1);
}

void ovy301_219fdbc(void)
{
    GFL_BGSysSetBGEnabledA(14, 0);
    GFL_BGSysSetBGEnabledB(10, 0);
    sub_02044B84(5);
    sub_02044B84(7);
    sub_02044B84(2);
    sub_02044B84(1);
    sub_02044B84(3);
    sub_02044528();
}

void ovy301_219fdf4(PokeDexStartIn *a1)
{
    void *v2; // r5

    v2 = GFL_ArcSysCreateFileHandle(157, 32894);
    if (!MyStatus_GetTrainerGender((void*)a1->inputParam->unk4))
    {
        GFL_G2DIOLoadArcNCLRDefault(v2, 104, 2, 0x4000, 0, 126);
        GFL_G2DIOLoadArcNCLRDefault(v2, 104, 2, 24576, 0, 126);
        GFL_G2DIOLoadArcNCLRDefault(v2, 104, 6, 0x4000, 0, 126);
        GFL_G2DIOLoadArcNCLRDefault(v2, 104, 6, 24576, 0, 126);
    }
    else
    {
        GFL_G2DIOLoadArcNCLRDefault(v2, 105, 2, 0x4000, 0, 126);
        GFL_G2DIOLoadArcNCLRDefault(v2, 105, 2, 24576, 0, 126);
        GFL_G2DIOLoadArcNCLRDefault(v2, 105, 6, 0x4000, 0, 126);
        GFL_G2DIOLoadArcNCLRDefault(v2, 105, 6, 24576, 0, 126);
    }

    
    sub_0204ADA8(v2, 107, 2, 0, 0, 0, 126);
    sub_0204ADA8(v2, 107, 5, 0, 0, 0, 126);
    sub_0204AF50(v2, 110, 3, 0, 0, 0, 126);
    sub_0204AF50(v2, 113, 1, 0, 0, 0, 126);
    sub_0204AF50(v2, 112, 2, 0, 0, 0, 126);
    sub_0204AF50(v2, 114, 7, 0, 0, 0, 126);
    sub_0204AF50(v2, 111, 5, 0, 0, 0, 126);
    GFL_ArcToolFree(v2);
}

extern int sub_02007678(void*, int, int);
extern int sub_020074EC(void*, int, int);
extern int sub_0200F180(int);
extern int sub_0200F184(int);
extern void sub_02045080(int, int, int, int);
extern void sub_02045320(int, int, int, int);
extern void sub_02007534(void*, int);
extern int sub_0200F18C(void);

void ovy301_219ff30(PokeDexStartIn *a1)
{
    void *v1; // r6
    int v2; // r4
    int v3; // r7
    int v4; // r5

    v1 = sub_02017934(a1->inputParam->gameData);
    if (sub_020074EC(v1, 7, 32894) == 1)
    {
        v2 = sub_02007678(v1, 7, 0);
        if (v2)
        {
            if (sub_0200F18C() == 1)
            {
                v3 = sub_0200F180(v2);
                v4 = sub_0200F184(v2);
                sub_02045080(1, v3, 24576, 0);
                sub_02045320(1, v4, 512, 0);
                sub_02045320(5, v4, 512, 0);
                DC_FlushRange((void*)v4, 512);
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((void*)v4, 0x4000, 512);
                GX_LoadBGExtPltt((void*)v4, 24576, 512);
                GX_EndLoadBGExtPltt();
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((void*)v4, 0x4000, 512);
                GXS_LoadBGExtPltt((void*)v4, 24576, 512);
                GXS_EndLoadBGExtPltt();
            }
        }
    }
    sub_02007534(v1, 7);
}

extern void sub_02046DF8(int);

int ovy301_219fff0(PokeDexStartIn *a1)
{
    GFL_BGSysSetEnabledBGsA(0);
    GFL_BGSysSetEnabledBGsB(0);
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
    sub_02046DF8(0);
    ovy301_219fc30();
    ovy301_219fc98();
    ovy301_219fdf4(a1);
    ovy301_219ff30(a1);
    sub_02042BA8(1, 126);
    GFL_BGSysSetBGEnabledB(16, 1);
    ovy301_219fc74(a1);
    ovy302_21ad78c(126);
    return 2;
}

int ovy301_21a004c(PokeDexStartIn *a1)
{
    sub_0219FC8C(a1);
    ovy301_219fdbc();
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
    GFL_BGSysSetEnabledBGsA(0);
    GFL_BGSysSetEnabledBGsB(0);
    return POKEDEX_OPEN_ANIM_END;
}

int ovy301_21a0078(PokeDexStartIn *a1)
{
    if (GFL_FadeScreenIsFinished() == 1)
        return 4;
    else
        return 2;
}

int ovy301_21a008c(PokeDexStartIn *a1)
{
    if (GFL_FadeScreenIsFinished() == 1)
        return 1;
    else
        return 3;
}

extern void ovy302_21ad7a8(int);

int ovy301_21a00a0(PokeDexStartIn *a1)
{
    int v2; // r1

    v2 = a1->waitTime;
    if (v2 == 300)
        return 5;
    a1->waitTime = v2 + 1;
    if (sub_0203DA2C() == 1) // Touch everything
    {
        sub_0203D564(1);
        return POKEDEX_OPEN_ANIM_OPEN;
    }
    else if ((GCTX_HIDGetPressedKeys() & KEY_A) != 0)
    {
        sub_0203D564(0);
        return POKEDEX_OPEN_ANIM_OPEN;
    }
    else if ((GCTX_HIDGetPressedKeys() & KEY_B) != 0)
    {
        sub_0203D564(0);
        a1->inputParam->unk8 = 0;
        ovy302_21ad7a8(126);
        return POKEDEX_OPEN_ANIM_EXIT;
    }
    else if ((GCTX_HIDGetPressedKeys() & KEY_X) != 0)
    {
        sub_0203D564(0);
        a1->inputParam->unk8 = 1;
        ovy302_21ad7a8(126);
        return POKEDEX_OPEN_ANIM_EXIT;
    }
    else
    {
        return 4;
    }
}

int ovy301_21a0120(PokeDexStartIn* a1)
{
    switch (a1->moveBgSeq)
    {
    case 0:
        if (a1->delay == 26)
        {
            GFL_SndSEPlay(0x63D);
            a1->delay = 0;
            a1->moveBgSeq++;
        }
        else
        {
            GFL_BGSysMoveBGReq(3, 5, 8);
            GFL_BGSysMoveBGReq(1, 5, 8);
            GFL_BGSysMoveBGReq(2, 5, 8);
            GFL_BGSysMoveBGReq(5, 5, 8);
            a1->delay++;
        }
        break;
    case 1:
        if (a1->delay == 32)
        {
            GFL_SndSEPlay(0x63E);
            sub_02045EA0(3, 9, 128);
            sub_02045EA0(3, 12, 120);
            sub_02045EA0(7, 9, 128);
            sub_02045EA0(7, 12, 96);
            a1->delay = 0;
            a1->moveBgSeq++;
        }
        else
            a1->delay++;
        break;
    case 2:
        ovy301_21a0210();
        if (a1->delay == 4)
        {
            GFL_FadeScreenSet(0, 0, 0, 0, 6, 4, 0x7e);
            a1->delay = 0;
            a1->moveBgSeq++;
        }
        else
            a1->delay++;
        break;
    case 3:
        ovy301_21a0210();
        if (GFL_FadeScreenIsFinished() == 1)
        {
            a1->inputParam->unk8 = 2;
            return 1;
        }
        break;
    default:
        break;
    }
    return POKEDEX_OPEN_ANIM_OPEN;
}

void ovy301_21a0210(void)
{
    sub_02045E74(3, 4, 128);
    sub_02045E74(3, 7, 128);
    sub_02045E74(7, 4, 128);
    sub_02045E74(7, 7, 128);
}