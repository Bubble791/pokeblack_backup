#include "global.h"
#include "main.h"
#include "pokedex.h"
#include "pokedex_listmenu.h"
#include "touchscreen.h"

FS_EXTERN_OVERLAY(OVY_139);

const BgInit data_021A2638 = 
{
    .unk0 = 1,
    .unk2 = 0,
    .unk4 = 0,
    .unk8 = 0,
    .unkC = 0
};

const BGSetup data_021A26C8[] = 
{
    {
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

int ovy299_219fbc0(int manager, int state, void* a2, void* a3);
int ovy299_219fbf0(int manager, int state, void* a2, void* a3);
int ovy299_219fc04(int manager, int state, void* a2, void* a3);
void ovy299_219fc14(PokedexListMenu *a1);
void ovy299_219fc38(int a1, PokedexListMenu *a2);
void sub_0219FC2C(PokedexListMenu *a1);
void ovy299_219fc60(PokedexListMenu *a1);
void sub_0219FC78(PokedexListMenu *a1);
void sub_0219FC84(void);
void sub_0219FCEC(void);
int *sub_0219FCFC(void);
void ovy299_219fd04(void);
void ovy299_219fea8(void);
void ovy299_219fef0(void);
void ovy299_21a0040(PokedexListMenu *a1);
void ovy299_21a0080(PokedexListMenu *a1);
void ovy299_21a0134(void);
void sub_021A014C(void);
void sub_021A018C(void);
void ovy299_21a01e4(PokedexListMenu *a1);
void ovy299_21a01a0(PokedexListMenu *a1);
void ovy299_21a0208(PokedexListMenu *a1);
void sub_021A0220(PokedexListMenu *a1);
int ovy299_21a0298(PokedexListMenu *a1);
void sub_021A0288(PokedexListMenu *result, s16 a2);
void ovy299_21a04e8(PokedexListMenu *a1);
int ovy299_21a0618(PokedexListMenu *a1);
int ovy299_21a06cc(PokedexListMenu *a1);
int ovy299_21a0764(PokedexListMenu *a1);
int ovy299_21a077c(PokedexListMenu *a1);
int ovy299_21a081c(PokedexListMenu* a1);
int ovy299_21a0cc0(PokedexListMenu *a1);
int ovy299_21a0c6c(PokedexListMenu *a1);
int ovy299_21a0d88(PokedexListMenu *a1);
int ovy299_21a0ce8(PokedexListMenu *a1);
void ovy299_21a0da8(PokedexListMenu *a1);
void ovy299_21a0f70(PokedexListMenu *a1, int a2, u16 a3, int a4, int a5, u16 a6, int a7);
void ovy299_21a1024(PokedexListMenu *a1, int a2);
void ovy299_21a1158(PokedexListMenu *a1);
void ovy299_21a150c(PokedexListMenu *a1, int a2, int a3);
void ovy299_21a1a98(PokedexListMenu *a1, int a2);
void ovy299_21a1f04(PokedexListMenu *a1, int a2, int a3, int a4, u16 a5, int a6);
int ovy299_21a1fa8(PokedexListMenu *a1, int a2);

const OvyMangerTemplate data_021A25C8 =
{
    ovy299_219fbc0,
    ovy299_219fbf0,
    ovy299_219fc04,
};


int ovy299_219fbc0(int manager, int state, void* a2, void* a3)
{
    PokedexListMenu *pokeDexMenu; // r4

    GFL_HeapCreateChild(1, 107, 0x60000);
    pokeDexMenu = (PokedexListMenu*) GFL_ProcInitSubsystem(manager, 3184, 107);
    MI_CpuFill8(pokeDexMenu, 0, 3184);
    pokeDexMenu->unk0 = (PokeDexSeacherEngine_TYPE2*)a2;
    return 1;
}

int ovy299_21a05dc(PokedexListMenu*);

int ovy299_219fbf0(int manager, int state, void* a2, void* a3)
{
    return ovy299_21a05dc((PokedexListMenu*)a3) == 0;
}

int ovy299_219fc04(int manager, int state, void* a2, void* a3)
{
    GFL_ProcReleaseSubsystem(manager);
    GFL_HeapDelete(107);
    return 1;
}

void ovy299_219fc14(PokedexListMenu *a1)
{
    a1->unk4 = GFL_VBlankTCBAdd(ovy299_219fc38, a1, 0);
}

void sub_0219FC2C(PokedexListMenu *a1)
{
    GFL_TCBRemove(a1->unk4);
}

void ovy299_219fc38(int a1, PokedexListMenu *a2)
{
    sub_02045A5C(a1);
    sub_0204B7C8();
    sub_020275F8(a2->unkC);
    UnknowOffset *v1 = (UnknowOffset*)(0x02FE0000);
    v1->unk3FF8 |= 1;
}

extern int sub_02005680(void*, PokedexListMenu*, int);

void ovy299_219fc60(PokedexListMenu *a1)
{
    a1->unk8 = sub_02005680(sub_0219FC84, a1, 0);
}

void sub_0219FC78(PokedexListMenu *a1)
{
    GFL_TCBRemove(a1->unk8);
}

void sub_0219FC84(void)
{
    int datas = reg_GX_VCOUNT;
    if (datas >= 0xA8)
    {
        reg_G2S_DB_BLDALPHA = 1291;
        return;
    }
    if (datas >= 0x90)
    {
        reg_G2S_DB_BLDALPHA = 1546;
        return;
    }
    if (datas >= 0x78)
    {
        reg_G2S_DB_BLDALPHA = 1801;
        return;
    }
    if (datas >=  0x60)
    {
        reg_G2S_DB_BLDALPHA = 2056;
        return;
    }

    if (datas >= 0x48)
    {
        reg_G2S_DB_BLDALPHA = 2566;
        return;
    }
    reg_G2S_DB_BLDALPHA = 3076;

}

void sub_0219FCEC(void)
{
    GFL_BGSysSetVRAMBanks((int*)0x021A2608);
}

int *sub_0219FCFC(void)
{
    return (int *)0x021A2608;
}

void ovy299_219fd04(void)
{
    BgInit v13;
    BGSetup v5;
    BGSetup v6;
    BGSetup v7;
    BGSetup v8;
    BGSetup v9;
    BGSetup v10;
    BGSetup v11;
    BGSetup v12;
    

    GFL_BGSysCreate(107);
    v13 = data_021A2638;
    GFL_BGSysSetLCDConfig(&v13);

    v5 = data_021A26C8[0];
    sub_0204476C(0, &v5, 0);
    sub_02045738(0);
    sub_020450CC(0, 32, 0, 107);
    sub_02045B7C(0);

    v6 = data_021A26C8[1];
    sub_0204476C(1, &v6, 0);

    v7 = data_021A26C8[2];
    sub_0204476C(2, &v7, 0);
    sub_02045738(2);
    sub_02045B7C(2);

    v8 = data_021A26C8[3];
    sub_0204476C(3, &v8, 0);

    v9 = data_021A26C8[4];
    sub_0204476C(4, &v9, 0);
    sub_02045738(4);
    sub_020450CC(4, 32, 0, 107);
    sub_02045B7C(4);

    v10 = data_021A26C8[5];
    sub_0204476C(5, &v10, 0);

    v11 = data_021A26C8[6];
    sub_0204476C(6, &v11, 0);
    sub_02045738(6);
    sub_02045B7C(6);
    
    v12 = data_021A26C8[7];
    sub_0204476C(7, &v12, 0);
    GFL_BGSysSetBGEnabledA(15, 1);
    GFL_BGSysSetBGEnabledB(15, 1);
}

void ovy299_219fea8(void)
{
    GFL_BGSysSetBGEnabledA(15, 0);
    GFL_BGSysSetBGEnabledB(15, 0);
    sub_02044B84(7);
    sub_02044B84(6);
    sub_02044B84(5);
    sub_02044B84(4);
    sub_02044B84(3);
    sub_02044B84(2);
    sub_02044B84(1);
    sub_02044B84(0);
    sub_02044528();
}

void ovy299_219fef0(void)
{
    void *v0;
    int v2; // r0
    void *v3; // r5
    int v4; // r0
    int v5; // r0
    int v6; // r0
    int v8; // r0

    v0 = GFL_ArcSysCreateFileHandle(157, 107);
    GFL_G2DIOLoadArcNCLRDefault(v0, 49, 0, 0, 128, 107);
    GFL_G2DIOLoadArcNCLRDefault(v0, 51, 4, 0, 160, 107);
    sub_0204ADA8(v0, 60, 2, 0, 0, 0, 107);
    sub_0204ADA8(v0, 58, 3, 0, 0, 0, 107);
    sub_0204ADA8(v0, 61, 6, 0, 0, 0, 107);
    sub_0204ADA8(v0, 59, 7, 0, 0, 0, 107);
    sub_0204AF50(v0, 64, 3, 0, 0, 0, 107);
    sub_0204AF50(v0, 71, 5, 0, 0, 0, 107);
    sub_0204AF50(v0, 65, 7, 0, 0, 0, 107);
    GFL_ArcToolFree(v0);

    v2 = GetDefaultUINarcIdx();

    v3 = GFL_ArcSysCreateFileHandle(v2, 107);
    v4 = sub_0202D824();
    v5 = GFL_BGSysLoadArcNCGRDynamic(v3, v4, 1, 0, 0, 107);
    v6 = sub_0202D820();
    GFL_G2DIOLoadArcNCLRDefault(v3, v6, 0, 448, 32, 107);
    v8 = sub_0202D828();
    sub_0204AF50(v3, v8, 1, 0, 0, 0, 107);
    sub_0204566C(1, 0, 21, 32, 3, 14);
    sub_02045B7C(1);
    GFL_ArcToolFree(v3);
    GFL_BGSysLoadNCLRDefault(23, 5, 0, 480, 32, 107);
    GFL_BGSysLoadNCLRDefault(23, 5, 4, 480, 32, 107);
}

void ovy299_21a0040(PokedexListMenu *a1)
{
    a1->unkC = sub_02026DC0(107);
    sub_02026E04(a1->unkC, 0, 512, 107);
    sub_02026E04(a1->unkC, 1, 512, 107);
    sub_02026E04(a1->unkC, 2, 512, 107);
    sub_02026E04(a1->unkC, 3, 512, 107);
}

void ovy299_21a0080(PokedexListMenu *a1)
{
    sub_02026E48(a1->unkC, 0);
    sub_02026E48(a1->unkC, 1);
    sub_02026E48(a1->unkC, 2);
    sub_02026E48(a1->unkC, 3);
    sub_02026DE8(a1->unkC);
}

void ovy299_21a00ac(PokedexListMenu *a1, int a2, int a3);

void ovy299_21a00ac(PokedexListMenu *a1, int a2, int a3)
{
    int v6;  // r0
    int v7;  // r0
    int v8;  // r0
    int v9;  // r0
    int v10; // r0
    int v11; // r0
    int v12; // r0

    v6 = GFL_VBlankGetTCBMgr();
    v7 = sub_02026FE4(a1->unkC, 1, 49151, -14, a2, a3, 0, v6);

    v8 = GFL_VBlankGetTCBMgr();
    v9 = sub_02026FE4(a1->unkC, 2, 65519, -14, a2, a3, 0, v8);

    v10 = GFL_VBlankGetTCBMgr();
    v11 = sub_02026FE4(a1->unkC, 4, 63615, -14, a2, a3, 0, v10);

    v12 = GFL_VBlankGetTCBMgr();
    sub_02026FE4(a1->unkC, 8, 49151, -14, a2, a3, 0, v12);
}

void ovy299_21a0134(void)
{
    G2x_SetBlendAlpha_(0x04001050, 4, 8, 6, 10);
}

#define REG_G2S_DB_WINOUT_OBJWININ_SHIFT                   8
#define REG_G2S_DB_WINOUT_OBJWININ_SIZE                    6
#define REG_G2S_DB_WINOUT_OBJWININ_MASK                    0x3f00

#define REG_G2S_DB_WINOUT_WINOUT_SHIFT                     0
#define REG_G2S_DB_WINOUT_WINOUT_SIZE                      6
#define REG_G2S_DB_WINOUT_WINOUT_MASK                      0x003f

static inline void G2S_SetWndOutsidePlane(int wnd, int effect)
{
    u32 tmp;

    tmp = ((reg_G2S_DB_WINOUT & ~REG_G2S_DB_WINOUT_WINOUT_MASK) |
           ((u32)wnd << REG_G2S_DB_WINOUT_WINOUT_SHIFT));

    if (effect)
    {
        tmp |= (0x20 << REG_G2S_DB_WINOUT_WINOUT_SHIFT); // EFCT
    }

    reg_G2S_DB_WINOUT = (u16)tmp;
}

static inline void G2S_SetWndOBJInsidePlane(int wnd, int effect)
{
    u32 tmp;

    tmp = ((reg_G2S_DB_WINOUT & ~REG_G2S_DB_WINOUT_OBJWININ_MASK) |
           ((u32)wnd << REG_G2S_DB_WINOUT_OBJWININ_SHIFT));

    if (effect)
    {
        tmp |= (0x20 << REG_G2S_DB_WINOUT_OBJWININ_SHIFT); // EFCT
    }

    reg_G2S_DB_WINOUT = (u16)tmp;
}

void sub_021A014C(void)
{
    G2S_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    reg_GXS_DB_DISPCNT = reg_GXS_DB_DISPCNT & 0xFFFF1FFF | 0x8000;
}

void sub_021A018C(void)
{
    reg_GXS_DB_DISPCNT &= 0xFFFF1FFF;
}

extern int sub_02021998(int);

void ovy299_21a01a0(PokedexListMenu *a1)
{
    a1->unk54 = GFL_MsgSysLoadData(0, 2, 478, 107);
    a1->unk50 = GFL_FontCreate(23, 0, 0, 0, 0x6b);
    a1->unk58 = GFL_WordSetSystemCreateDefault(107);
    a1->unk60 = sub_02021998(107);
    a1->unk5C = GFL_StrBufCreate(128, 107);
}

void ovy299_21a01e4(PokedexListMenu *a1)
{
    GFL_StrBufFree(a1->unk5C);
    sub_02021A18(a1->unk60);
    GFL_WordSetSystemFree(a1->unk58);
    sub_02022DA8(a1->unk50);
    GFL_MsgDataFree(a1->unk54);
}

extern u16 *PML_PersonalLoadRegionalDexTable(int, int);

void ovy299_21a0208(PokedexListMenu *a1)
{
    a1->unkC5C = PML_PersonalLoadRegionalDexTable(107, 0);
}

void sub_021A0220(PokedexListMenu *a1)
{
    GFL_HeapFree(a1->unkC5C);
}

extern void ovy299_21a158c(PokedexListMenu*, u32, s16*, s16*, u16);
extern void ovy299_21a1568(PokedexListMenu*, u32, s16, s16, u16);
void ovy299_21a0230(PokedexListMenu *a1);

void ovy299_21a0230(PokedexListMenu *a1)
{
    u32 i;
    s16 v7[2];

    GFL_BGSysMoveBGReq(5, 3, 48);
    GFL_BGSysMoveBGReq(1, 3, -48);
    for (i = 6; i <= 0xC; ++i)
    {
        ovy299_21a158c(a1, i, &v7[1], &v7[0], 0);
        v7[0] += 48;
        ovy299_21a1568(a1, i, v7[1], v7[0], 0);
    }
}

void sub_021A0288(PokedexListMenu *result, s16 a2)
{
    result->unkC64 = 48;
    result->unkC66 = a2;
}

int ovy299_21a0298(PokedexListMenu *a1)
{
    s16 v7[2];
    u32 i;
    int v6;

    int v5 = a1->unkC64;
    if (!v5)
        return 0;

    GFL_BGSysMoveBGReq(5, 4, a1->unkC66);
    GFL_BGSysMoveBGReq(1, 5, a1->unkC66);
    for (i = 6; i <= 0xC; ++i)
    {
        ovy299_21a158c(a1, i, &v7[1], &v7[0], 0);
        v7[0] += a1->unkC66;
        ovy299_21a1568(a1, i, v7[1], v7[0], 0);
    }
    v6 = a1->unkC66;
    if (v6 < 0)
        v6 = -v6;
    a1->unkC64 -= v6;
    return 1;
}

typedef struct
{
    int unk0;
    int unk1;
    int unk3;
    int unk44;

    u16 s;
    u16 unk2;

    u16 maxIndex;

    u8 unk4;
    u8 unk41;
    u8 unk42;
    u8 ssdaf;

    u16 unk6;
    u16 safaf;
    int unk8;
    PokedexListMenu *unk9;
} ListUiMenu;

const ListUiMenu data_021A25E0 = {0};

typedef struct
{
    ListUiMenu list;
}UNKNOW_TEMPLATE;

#define UnknowOffset *(u32*)(0x209A474)
void ovy299_21a0324(PokedexListMenu *a1);
extern int sub_0200D214(int);
extern int ovy139_219af1c(UNKNOW_TEMPLATE*, int);
extern void ovy139_219b1e0(int, void*, int, int, int);
extern void ovy139_219b27c(int, void*, int, int, int);
extern int sub_020485A4(int, int);
extern void ovy139_219b1b4(int, int, int);

void ovy299_21a0324(PokedexListMenu *a1)
{
    UNKNOW_TEMPLATE v26; 
    u32 i;
    int v19;
    int monCount;
    
    void *v5 = GFL_ArcSysCreateFileHandle(157, 0x806B);
    int v7 = sub_0200D214(a1->unk0->dexSave);
    
    v26.list = data_021A25E0;
    v26.list.maxIndex = SPECIES_MAX;
    v26.list.unk9 = a1;
    monCount = a1->unk0->unkA;
    i = 0;
    for (; i < a1->unk0->unkA; i++)
    {
        if (v7 == a1->unk0->unkC.listData[i])
        {
            int v14 = monCount - 7;
            if (i > monCount - 7)
            {
                v26.list.unk42 = i - v14;
                v26.list.unk6 = i - (v26.list.unk42);
            }
            else 
            {
                if (i < 7)
                    v26.list.unk42 = i;
                else
                    v26.list.unk6 = i;
                break;   
            }
            break;
        }
    }

    a1->unkC50 = ovy139_219af1c(&v26, 107);
    u32 v15 = a1->unk0->unkA;
    if (v15 < 7)
        a1->unkC58 = v15;
    else
        a1->unkC58 = 7;

    ovy139_219b1e0(a1->unkC50, v5, 68, 0, 0);
    ovy139_219b1e0(a1->unkC50, v5, 69, 0, 1);
    ovy139_219b1e0(a1->unkC50, v5, 70, 0, 2);
    ovy139_219b27c(a1->unkC50, v5, 49, 2, 3);
    GFL_ArcToolFree(v5);

    for (i = 0; i < a1->unk0->unkA; i++)
    {
        if (PokeDexSave_IsMonCaught(a1->unk0->dexSave, a1->unk0->unkC.listData[i]) == 1)
        {
            v19 = sub_0204898C(UnknowOffset, a1->unk0->unkC.listData[i]); // GFL_MsgDataLoadStrbufNew
            a1->unk64[i] = sub_020485A4(v19, 107);
            GFL_StrBufFree(v19);
            ovy139_219b1b4(a1->unkC50, 0, 0x20000000 | a1->unk0->unkC.listData[i]);
        }
        else
        {
            if (sub_0200D7F4(a1->unk0->dexSave, a1->unk0->unkC.listData[i]) == 1)
            {
                v19 = sub_0204898C(UnknowOffset, a1->unk0->unkC.listData[i]);
                a1->unk64[i] = sub_020485A4(v19, 107);
                GFL_StrBufFree(v19);
                ovy139_219b1b4(a1->unkC50, 1, 0x10000000 | a1->unk0->unkC.listData[i]);
            }
            else
            {
                a1->unk64[i] = sub_0204898C(a1->unk54, 7);
                ovy139_219b1b4(a1->unkC50, 2, a1->unk0->unkC.listData[i]);
            }
            
        }
    }

}

extern void ovy139_219b138(int);

void ovy299_21a04e8(PokedexListMenu *a1)
{
    u32 i; // r4
    int result;     // r0

    ovy139_219b138(a1->unkC50);
    for (i = 0; i < SPECIES_MAX; ++i)
    {
        result = a1->unk64[i];
        if (result)
            GFL_StrBufFree(result);
    }
}

void ovy299_21a0514(PokedexListMenu *a1, int a2, UnknowWindowData *a3, u16 a4, u32 a5);

extern u32 sub_0219CC1C(int, int);
void ovy299_21a1358(PokedexListMenu*, UnknowWindowData*, int, int);
void ovy299_21a1fe8(PokedexListMenu*, u16, int, int);

// 出现超出4参数的值在写入sp寄存器位置不对时可能是参数类型的问题，比如这个a4
void ovy299_21a0514(PokedexListMenu *a1, int a2, UnknowWindowData *a3, u16 a4, u32 a5)
{
    int v7;              // r7
    u32 result; // r0
    int wa;

    v7 = sub_0219CC1C(a1->unkC50, a2);
    wa = v7 & 0xFFFFFFF;
    
    ovy299_21a1358(a1, a3, a1->unk64[a2], wa);
    result = (v7 & 0xF0000000) >> 28;
    if (result)
        ovy299_21a1fe8(a1, (u16)wa, a4, a5); 
}

void ovy299_21a0564(PokedexListMenu *a1, int a2);
void ovy299_21a2268(PokedexListMenu*, int);
void ovy299_21a1ad8(PokedexListMenu*, u16);
extern int sub_0219CC3C(int);

void ovy299_21a0564(PokedexListMenu *a1, int a2)
{
    int v4; // r1
    int v5;

    v4 = sub_0219CC1C(a1->unkC50, a2);
    int wa = (v4 & 0xF0000000) >> 28;
    if (wa)
        ovy299_21a1ad8(a1, (u16)(v4 & 0xFFFFFFF));
    else
        ovy299_21a1ad8(a1, 0);
    
    v5 = sub_0219CC3C(a1->unkC50);
    ovy299_21a2268(a1, a2 - v5);
}

void ovy299_21a2098(PokedexListMenu*, s8);
extern int sub_0219CC34(int);
void ovy299_21a2268(PokedexListMenu*, int);
void ovy299_21a231c(PokedexListMenu*, int);
void ovy299_21a05b0(PokedexListMenu *a1, s8 a2);

void ovy299_21a05b0(PokedexListMenu *a1, s8 a2)
{
    int v3; // r0

    ovy299_21a2098(a1, -a2);
    v3 = sub_0219CC34(a1->unkC50);
    ovy299_21a2268(a1, v3);
    ovy299_21a231c(a1, 1);
}

const DexListMenuFunc data_21A27A0[] = 
{
    ovy299_21a0618,
    ovy299_21a06cc,
    ovy299_21a0764,
    ovy299_21a077c,
    ovy299_21a081c,
    ovy299_21a0c6c,
    ovy299_21a0cc0,
    ovy299_21a0ce8,
    ovy299_21a0d88,
};

void ovy299_21a1440(PokedexListMenu*);
void ovy299_21a0f2c(PokedexListMenu*);
extern void ovy302_21ad7c8(int, int, int*);

int ovy299_21a05dc(PokedexListMenu *a1)
{
    int v2; // r0

    v2 = data_21A27A0[a1->unk10](a1);
    a1->unk10 = v2;
    if (v2 == 9)
        return 0;
    ovy299_21a1440(a1);
    ovy299_21a0f2c(a1);
    ovy302_21ad7c8(3, 7, &a1->unkC60);
    return 1;
}

extern void GXx_SetMasterBrightness_(int, int);
void ovy299_21a1300(PokedexListMenu*);
void ovy299_21a0ec0(PokedexListMenu*);
void ovy299_21a13f0(PokedexListMenu*);
void ovy299_21a1224(PokedexListMenu*);

int ovy299_21a0618(PokedexListMenu *a1)
{
    GFL_OvlLoad(FS_OVERLAY_ID(OVY_139));
    GFL_BGSysSetEnabledBGsA(0);
    GFL_BGSysSetEnabledBGsB(0);
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
    GXx_SetMasterBrightness_(67108972, -16);
    GXx_SetMasterBrightness_(67113068, -16);
    sub_02046DF8(0);
    ovy299_21a0040(a1);
    sub_0219FCEC();
    ovy299_219fd04();
    ovy299_219fef0();
    ovy299_21a01a0(a1);
    ovy299_21a0ec0(a1);
    ovy299_21a13f0(a1);
    ovy299_21a0208(a1);
    ovy299_21a0324(a1);
    if (!a1->unk0->unk8)
        ovy299_21a1224(a1);
    else
        ovy299_21a1300(a1);
    sub_02042BA8(1, 107);
    ovy299_21a0134();
    sub_021A014C();
    ovy299_21a0230(a1);
    ovy299_219fc14(a1);
    ovy299_219fc60(a1);
    return 3;
}

extern int sub_02027780(int);
void ovy299_21a1424(PokedexListMenu*);
void ovy299_21a0f10(PokedexListMenu*);

int ovy299_21a06cc(PokedexListMenu *a1)
{
    if (ovy299_21a0298(a1) == 1 || sub_02027780(a1->unkC))
        return 1;
    sub_0219FC78(a1);
    sub_0219FC2C(a1);
    sub_021A018C();
    ovy299_21a04e8(a1);
    sub_021A0220(a1);
    ovy299_21a1424(a1);
    ovy299_21a0f10(a1);
    ovy299_21a01e4(a1);
    ovy299_219fea8();
    ovy299_21a0080(a1);

    GXx_SetMasterBrightness_(67108972, -16);
    GXx_SetMasterBrightness_(67113068, -16);
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
    GFL_BGSysSetEnabledBGsA(0);
    GFL_BGSysSetEnabledBGsB(0);
    GFL_OvlUnload(FS_OVERLAY_ID(OVY_139));
    return 9;
}

int ovy299_21a0764(PokedexListMenu *a1)
{
    if (sub_02027780(a1->unkC) == 0)
        return a1->unk1C;
    else
        return 2;
}

extern int ovy139_219b294(int);
void ovy299_21a22d4(PokedexListMenu*);
void ovy299_21a2188(PokedexListMenu*);
void ovy299_21a0da8(PokedexListMenu*);

int ovy299_21a077c(PokedexListMenu *a1)
{
    switch (a1->unkC54)
    {
        case 0:
            if (!ovy139_219b294(a1->unkC50))
            {
                ovy299_21a231c(a1, 0);
                ovy299_21a22d4(a1);
                ovy299_21a2188(a1);
                ovy299_21a0da8(a1);
                ++a1->unkC54;
            }
            break;
        case 1:
            if (!sub_02027780(a1->unkC))
            {
                GXx_SetMasterBrightness_(67108972, 0);
                GXx_SetMasterBrightness_(67113068, 0);
                ovy299_21a00ac(a1, 16, 0);
                sub_021A0288(a1, -8);
                ++a1->unkC54;
            }
            break;
        case 2:
            if (!ovy299_21a0298(a1) && !sub_02027780(a1->unkC))
            {
                a1->unkC54 = 0;
                return 4;
            }
            break;
    }

    return 3;
}

extern int ovy139_219b2e0(int);
void ovy299_21a14c4(PokedexListMenu*, int, int);
int ovy299_21a0dec(PokedexListMenu*, int, int, int);
void ovy299_21a21f4(PokedexListMenu*);
int ovy299_21a23a4(PokedexListMenu*);
int sub_0219CC28(int);
int ovy299_21a0e1c(PokedexListMenu*, int);
int ovy299_21a0e68(PokedexListMenu*, int);
void ovy139_219cc58(int, int);
void ovy299_21a0e3c(PokedexListMenu*, int);
int sub_0200D1AC(int);
int sub_0200D1E4(int, int);
void ovy299_21a0e7c(PokedexListMenu*);

int ovy299_21a081c(PokedexListMenu* a1)
{
    int r6 = 4;
    int v1 = ovy139_219b2e0(a1->unkC50) + 12;
    switch (v1)
    {
        case 0:
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            ovy299_21a231c(a1, 0);
            break;
        case 5:
            ovy299_21a14c4(a1, 10, 12);
            a1->unkC48_1 =  10;
            a1->unk14 = 0;
            r6 = 5;
            break;
        case 6:
            ovy299_21a14c4(a1, 9, 13);
            a1->unkC48_1 =  9;
            a1->unk14 = 0;
            r6 = 5;
            break;
        case 7:
            return ovy299_21a0dec(a1, 10, 12, 4);
        case 8:
            return ovy299_21a0dec(a1, 9, 13, 4);
        case 9:
        case 10:
            ovy299_21a21f4(a1);
            a1->unkC48_1 = 63;
            a1->unk14 = 1;
            r6 = 5;
            break;
        case 11:
            int v3 = sub_0203D554();
            int r7 = ovy299_21a23a4(a1);
            switch (r7)
            {
                case 0:
                    int v6 = sub_0219CC28(a1->unkC50);
                    if (ovy299_21a0e1c(a1, v6) == 1)
                    {
                        GFL_SndSEPlay(0x54C);
                        return ovy299_21a0e68(a1, v6);
                    }
                    sub_0203D564(v3);
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    int v5 = r7 + sub_0219CC3C(a1->unkC50) - 1;
                    if (ovy299_21a0e1c(a1, v5) == 1)
                    {
                        GFL_SndSEPlay(0x54C);
                        ovy139_219cc58(a1->unkC50, r7 - 1);
                        return ovy299_21a0e68(a1, v5);
                    }
                    break;
                case 8:
                    GFL_SndSEPlay(0x54C);
                    a1->unk0->unk10 = 4;
                    int vv7 = sub_0219CC28(a1->unkC50);
                    ovy299_21a0e3c(a1, vv7);
                    return ovy299_21a0dec(a1, 12, 4, 8);
                case 9:
                    GFL_SndSEPlay(0x54C);
                    ovy299_21a0dec(a1, 3, 13, 8);
                    ovy299_21a0dec(a1, 4, 13, 8);
                    ovy299_21a0dec(a1, 5, 13, 8); 
                    if (sub_0200D1F8(a1->unk0->dexSave) != 1)
                    {
                        if (sub_0200D1AC(a1->unk0->dexSave) == 1)
                        {
                            sub_0200D1E4(a1->unk0->dexSave, 1);
                            a1->unk0->unk10 = 2;
                            ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                            ovy299_21a0dec(a1, 4, 14, 8);   
                        }
                        else
                        {
                            a1->unk0->unk10 = 5;
                            ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                            ovy299_21a0dec(a1, 5, 14, 8);
                            sub_0200D1E4(a1->unk0->dexSave, 2);
                        }
                    }
                    else
                    {
                        a1->unk0->unk10 = 5;
                        ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                        ovy299_21a0dec(a1, 5, 14, 8);
                        sub_0200D1E4(a1->unk0->dexSave, 2);
                    }
                    return ovy299_21a0dec(a1, 11, 5, 8);
                case 13:
                    GFL_SndSEPlay(0x54C);
                    ovy299_21a0dec(a1, 3, 13, 8);
                    ovy299_21a0dec(a1, 4, 13, 8);
                    ovy299_21a0dec(a1, 5, 13, 8);
                    sub_0200D1E4(a1->unk0->dexSave, 0);
                    a1->unk0->unk10 = 2;
                    int ua = sub_0219CC28(a1->unkC50);
                    ovy299_21a0e3c(a1, ua);
                    return ovy299_21a0dec(a1, 3, 0x2a, 8);
                
                case 14:
                    GFL_SndSEPlay(0x54C);
                    ovy299_21a0dec(a1, 3, 13, 8);
                    ovy299_21a0dec(a1, 4, 13, 8);
                    ovy299_21a0dec(a1, 5, 13, 8);
                    if (sub_0200D1AC(a1->unk0->dexSave) == 1)
                    {
                        sub_0200D1E4(a1->unk0->dexSave, 1);
                        a1->unk0->unk10 = 2;
                        ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                    }
                    else
                    {
                        a1->unk0->unk10 = 5;
                        int ua = sub_0219CC28(a1->unkC50);
                        ovy299_21a0e3c(a1, ua);
                        sub_0200D1E4(a1->unk0->dexSave, 2);
                    }
                    
                    return ovy299_21a0dec(a1, 4, 0x2a, 8);
                case 15:
                    GFL_SndSEPlay(0x54C);
                    ovy299_21a0dec(a1, 3, 13, 8);
                    ovy299_21a0dec(a1, 4, 13, 8);
                    ovy299_21a0dec(a1, 5, 13, 8);
                    a1->unk0->unk10 = 5;
                    ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                    sub_0200D1E4(a1->unk0->dexSave, 2);
                    return ovy299_21a0dec(a1, 5, 0x2a, 8);
                case 10:
                    GFL_SndSEPlay(0x646);
                    ovy299_21a0e7c(a1);
                    break;
                case 11:
                    GFL_SndSEPlay(0x556);
                    a1->unk0->unk10 = 1;
                    ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                    return ovy299_21a0dec(a1, 7, 8, 8);
                case 12:
                    GFL_SndSEPlay(0x551);
                    a1->unk0->unk10 = 0;
                    ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                    return ovy299_21a0dec(a1, 6, 9, 8);
                case 16:
                    GFL_SndSEPlay(0x551);
                    a1->unk0->unk10 = 0;
                    ovy299_21a0e3c(a1, sub_0219CC28(a1->unkC50));
                    return ovy299_21a0dec(a1, 6, 9, 8);
            }
            break;
        default:
            int vvvv8 = sub_0219CC28(a1->unkC50);
            ovy299_21a231c(a1, 0);
            if (ovy299_21a0e1c(a1, vvvv8) == 1)
            {
                GFL_SndSEPlay(0x54C);
                return ovy299_21a0e68(a1, vvvv8);

            }
            break;
    }

    ovy299_21a22d4(a1);
    ovy299_21a2188(a1);
    return r6;
}
int sub_021A14F8(PokedexListMenu*, u32);

int ovy299_21a0c6c(PokedexListMenu *a1)
{
    switch (a1->unk14)
    {
        case 0:
            if (ovy139_219b2e0(a1->unkC50) == -1)
            {
                ++a1->unk14;
            }
            break;
        case 1:
            if (a1->unkC48_1 == 63 || !sub_021A14F8(a1, a1->unkC48_1))
            {
                a1->unk14 = 0;
                ovy299_21a231c(a1, 0);
                return 4;
            }
            break;
    }

    return 5;
}

extern void ovy139_219cad8(int, u16, int);

int ovy299_21a0cc0(PokedexListMenu *a1)
{
    if (!sub_021A14F8(a1, a1->unkC48_1))
    {
        ovy299_21a231c(a1, 0);
        return a1->unk18;
    }
    return 6;
}

int ovy299_21a0ce8(PokedexListMenu *a1)
{
    switch (a1->unkC4A)
    {
        case 0:
        case 2:
            if (!a1->unkC4B)
            {
                int data = sub_0219CC34(a1->unkC50);
                ovy139_219cad8(a1->unkC50, (u16)data, 1);
                a1->unkC4B = 4;
                a1->unkC4A++;
            }
            else
                a1->unkC4B--;
            break;
        case 1:
        case 3:
            if (!a1->unkC4B)
            {
                int data = sub_0219CC34(a1->unkC50);
                ovy139_219cad8(a1->unkC50, (u16)data, 2);
                sub_02045B7C(2);
                a1->unkC4B = 4;
                a1->unkC4A++;
            }
            else
                a1->unkC4B--;
            break;
        case 4:
            if (!a1->unkC4B)
            {
                a1->unkC4A = 0;
                return 8;
            }
            else
                a1->unkC4B--;
            break;
    }
    
    return 7;
}

void sub_021A1828(PokedexListMenu*, int);

int ovy299_21a0d88(PokedexListMenu *a1)
{
    sub_021A1828(a1, 1);
    ovy299_21a00ac(a1, 0, 16);
    sub_021A0288(a1, 8);
    return 1;
}

void ovy299_21a0da8(PokedexListMenu *a1)
{
    sub_02026F7C(a1->unkC, 0, 0, 512);
    sub_02026F7C(a1->unkC, 1, 0, 512);
    sub_02026F7C(a1->unkC, 2, 0, 512);
    sub_02026F7C(a1->unkC, 3, 0, 512);
    ovy299_21a00ac(a1, 16, 16);
}

int ovy299_21a0dec(PokedexListMenu *a1, int a2, int a3, int a4)
{
    u16 v5; // r4

    v5 = a2;
    ovy299_21a14c4(a1, a2, a3);
    a1->unkC48_1 = v5;
    a1->unk18 = a4;
    return 6;
}

int ovy299_21a0e1c(PokedexListMenu *a1, int a2)
{
    return (sub_0219CC1C(a1->unkC50, a2) & 0xF0000000) >> 28 != 0;
}

extern void sub_0200D200(int, u16);

void ovy299_21a0e3c(PokedexListMenu *a1, int a2)
{
    int result;          // r0
    u32 v5; // r0

    result = ovy299_21a0e1c(a1, a2);
    if (result == 1)
    {
        v5 = sub_0219CC1C(a1->unkC50, a2);
        sub_0200D200(a1->unk0->dexSave, (u16)v5);
    }
}

int ovy299_21a0e68(PokedexListMenu *a1, int a2)
{
    ovy299_21a0e3c(a1, a2);
    a1->unk0->unk10 = 3;
    return 7;
}

void ovy299_21a0e7c(PokedexListMenu *a1)
{
    if (GameData_IsPocketRegistered(a1->unk0->gameData, 18) == 1)
    {
        sub_02017644(a1->unk0->gameData, 18, 0);
        ovy299_21a14c4(a1, 8, 6);
        return;
    }
    else
    {
        sub_02017644(a1->unk0->gameData, 18, 1);
        ovy299_21a14c4(a1, 8, 7);
    }
}

typedef struct
{
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
}WinDowData;

const WinDowData data_021A27C4[6] = {0};
void ovy299_21a1104(PokedexListMenu*);

void ovy299_21a0ec0(PokedexListMenu *a1)
{
    u32 i;      // r4
    const WinDowData *v3; // r3
    int v4;

    BmpWin_InitAllocator(107);
    for (i = 0; i < 6; ++i)
    {
        v3 = &data_021A27C4[i];
        v4 = BmpWin_CreateDynamic(v3->unk0, v3->unk1, v3->unk2, v3->unk3, v3->unk4, v3->unk5, 1);
        a1->unk20[i].winData = v4;
    }
    ovy299_21a1104(a1);
    ovy299_21a1158(a1);
}

void ovy299_21a0f10(PokedexListMenu *a1)
{
    u32 i;

    for (i = 0; i < 6; ++i)
        BmpWin_Free(a1->unk20[i].winData);
    sub_020480A8();
}

void ovy299_21a0f2c(PokedexListMenu *a1)
{
    u32 i; // r4
    int result;     // r0
    int v6;         // r0

    sub_02021A3C(a1->unk60);
    for (i = 0; i < 6; ++i)
    {
        int data = a1->unk60;
        if (a1->unk20[i].flag)
        {
            v6 = BmpWin_GetBitmap(a1->unk20[i].winData);
            result = sub_02021C1C(data, v6);
            if (!result)
            {
                BmpWin_FlushChar(a1->unk20[i].winData);
                a1->unk20[i].flag = 0;
            }
        }
    }
}

extern void ovy139_219a2a4(UnknowWindowData*, int, u16, u16, int, int, u16, int);

void ovy299_21a0f70(
    PokedexListMenu *a1,
    int a2,
    u16 a3,
    int a4,
    int a5,
    u16 a6,
    int a7)
{
    int v10; // r7

    v10 = sub_0204898C(a1->unk54, a3);
    ovy139_219a2a4(&a1->unk20[a2], a1->unk60, a4, a5, v10, a1->unk50, a6, a7);
    GFL_StrBufFree(v10);
}

void ovy299_21a0fb8(PokedexListMenu *a1, int a2, u16 a3, int a4, int a5, u16 a6, int a7);

void ovy299_21a0fb8(PokedexListMenu *a1, int a2, u16 a3, int a4, int a5, u16 a6, int a7)
{
    int v10; // r7

    v10 = sub_0204898C(a1->unk54, a3);
    GFL_WordSetFormatStrbuf(a1->unk58, a1->unk5C, v10);
    ovy139_219a2a4(&a1->unk20[a2], a1->unk60, a4, a5, a1->unk5C, a1->unk50, a6, a7);
    GFL_StrBufFree(v10);
}

void ovy299_21a100c(UnknowWindowData *a1);

void ovy299_21a100c(UnknowWindowData *a1)
{
    int v2; // r0

    BmpWin_FlushMap(a1->winData);
    v2 = sub_020484D4(a1->winData);
    sub_02045B7C(v2);
}

typedef struct
{
    u8 unk0[20];
    u8 *unk20;
} BGHeader;

typedef struct
{
    int unl0;
    int unl0a;
    int unl0s;
    u16 unk12[40];
} CharHeader;

enum
{
    HEAP_DEX_LIST_MENU = 0x6B
};

extern u8 BmpWin_GetPosX(int);
extern u8 BmpWin_GetPosY(int);
extern u8 BmpWin_GetWidth1(int);
extern u8 BmpWin_GetHeight2(int);
extern u8*GFL_BitmapGetPixelData(int);
extern void *sub_0204B32C(void*, int, int, CharHeader**, int);
extern void *sub_0204B28C(void*, int, int, BGHeader**, int);

void ovy299_21a1024(PokedexListMenu *a1, int a2)
{
    BGHeader *v20;
    void *v18;

    CharHeader *v19;

    u8 *tileMap;
    u8 width;
    void *v16;
    u8 *winPixel;

    u8 x;   // r7
    int v6; // r0

    u16 *v8;  // r4
    u8 y;
    u16 *v13;

    u8 height;
    void *v7;

    width = BmpWin_GetWidth1(a1->unk20[a2].winData);
    height = BmpWin_GetHeight2(a1->unk20[a2].winData);
    x = BmpWin_GetPosX(a1->unk20[a2].winData);
    y = BmpWin_GetPosY(a1->unk20[a2].winData);
    v6 = BmpWin_GetBitmap(a1->unk20[a2].winData);
    winPixel = GFL_BitmapGetPixelData(v6);

    v7 = GFL_ArcSysCreateFileHandle(157, 107);
    v16 = sub_0204B32C(v7, 71, 0, &v19, HEAP_DEX_LIST_MENU | 0x8000);
    v8 = v19->unk12;
    v18 = sub_0204B28C(v7, 59, 0, &v20, HEAP_DEX_LIST_MENU | 0x8000);
    tileMap = v20->unk20;
    GFL_ArcToolFree(v7);

    for (u16 i = 0; i < height; i++)
    {

        for (u16 j = 0; j < width; j++)
        {
            v13 = &v8[x];
            u32 ddd = v13[(y + i) * 32 + j] << 0x16;
            MIi_CpuCopy32((const u32*)&tileMap[(ddd >> 0x11)], (u32*)&winPixel[32 * (j + i * width)], 32);
        }
    }

    GFL_HeapFree(v18);
    GFL_HeapFree(v16);
}

void ovy299_21a1104(PokedexListMenu *a1)
{
    ovy299_21a1024(a1, 0);
    if (sub_0200D1F8(a1->unk0->dexSave) == 1)
        ovy299_21a0f70(a1, 0, 1, 0, 4u, 0x39E0, 0);
    else
        ovy299_21a0f70(a1, 0, 0, 0, 4u, 0x39E0, 0);
    ovy299_21a100c(&a1->unk20[0]);
}

extern int sub_0200D1C0(int);

void ovy299_21a1158(PokedexListMenu *a1)
{
    int result; // r0
    int v4;     // r4

    result = a1->unk0->unk8;
    if (!result)
    {
        v4 = sub_0200D1AC(a1->unk0->dexSave);
        result = sub_0200D1C0(a1->unk0->dexSave);
        if (v4 == 1 && result == 1)
        {
            ovy299_21a0f70(a1, 3, 10, 2, 7, 0x3C41, 0);
            ovy299_21a0f70(a1, 4, 9, 2, 6, 0x3C41, 0);
            ovy299_21a0f70(a1, 5, 11, 2, 5, 0x3C41, 0);
            ovy299_21a100c(&a1->unk20[3]);
            ovy299_21a100c(&a1->unk20[4]);
            ovy299_21a100c(&a1->unk20[5]);
        }
        else if (!v4 && result == 1)
        {
            ovy299_21a0f70(a1, 4, 10, 2, 6, 0x3C41, 0);
            ovy299_21a0f70(a1, 5, 11, 2, 5, 0x3C41, 0);
            ovy299_21a100c(&a1->unk20[4]);
            ovy299_21a100c(&a1->unk20[5]);
        }
    }
}

extern int sub_0200D85C(int);
extern int sub_0200D6B4(int);
extern int sub_0200D6E0(int, u16 heap);
extern int sub_0200D888(int, u16 heap);

void ovy299_21a1224(PokedexListMenu *a1)
{
    int v7;  // [sp+10h] [bp-18h]
    int v4;  // r0
    int v6;  // [sp+Ch] [bp-1Ch]
    

    if (sub_0200D1F8(a1->unk0->dexSave) == 1)
    {
        v7 = sub_0200D85C(a1->unk0->dexSave);
        v4 = sub_0200D6B4(a1->unk0->dexSave);
    }
    else
    {
        v7 = sub_0200D888(a1->unk0->dexSave, 32875);
        v4 = sub_0200D6E0(a1->unk0->dexSave, 32875);
    }
    v6 = v4;
    ovy299_21a1024(a1, 1);
    ovy299_21a1024(a1, 2);
    ovy299_21a0f70(a1, 1, 2, 0x48, 4, 0x31A0, 1);
    StringSetNumber(a1->unk58, 0, v7, 3, 0, 1);
    ovy299_21a0fb8(a1, 1, 5, 0x68, 4, 0x31A0, 1);
    ovy299_21a0f70(a1, 2, 3, 0x58, 4, 0x31A0, 1);
    StringSetNumber(a1->unk58, 0, v6, 3, 0, 1);
    ovy299_21a0fb8(a1, 2, 5, 0x78, 4, 0x31A0, 1);
    ovy299_21a100c(&a1->unk20[1]);
    ovy299_21a100c(&a1->unk20[2]);
}

void ovy299_21a1300(PokedexListMenu *a1)
{
    ovy299_21a1024(a1, 2);
    ovy299_21a0f70(a1, 2, 4, 0x58, 4, 0x31A0, 1);
    StringSetNumber(a1->unk58, 0, a1->unk0->unkA, 3, 0, 1);
    ovy299_21a0fb8(a1, 2, 5, 0x78, 4, 0x31A0, 1);
    ovy299_21a100c(&a1->unk20[2]);
}

extern int sub_0219CC18(int);

void ovy299_21a1358(PokedexListMenu *a1, UnknowWindowData *a2, int a3, int a4)
{
    int v7;  // r6
    int v10; // [sp+14h] [bp-1Ch]

    v10 = sub_0219CC18(a1->unkC50);
    if (sub_0200D1F8(a1->unk0->dexSave) != 1)
        a4 = a1->unkC5C[a4];

    v7 = sub_0204898C(a1->unk54, 8);
    StringSetNumber(a1->unk58, 0, a4, 3, 2, 1);
    GFL_WordSetFormatStrbuf(a1->unk58, a1->unk5C, v7);
    GFL_StrBufFree(v7);

    ovy139_219a2a4(a2, v10, 0, 4, a1->unk5C, a1->unk50, 14816, 0);
    ovy139_219a2a4(a2, v10, 28, 4, a3, a1->unk50, 14816, 0);
}

void ovy299_21a15b8(void);
void ovy299_21a15e8(PokedexListMenu* );
void ovy299_21a17d8(PokedexListMenu* );
void ovy299_21a1894(PokedexListMenu* );
void ovy299_21a1d6c(PokedexListMenu* );

void ovy299_21a13f0(PokedexListMenu *a1)
{
    ovy299_21a15b8();
    ovy299_21a15e8(a1);
    ovy299_21a17d8(a1);
    ovy299_21a1894(a1);
    ovy299_21a1d6c(a1);
    GFL_BGSysSetBGEnabledA(16, 1);
    GFL_BGSysSetBGEnabledB(16, 1);
}

void sub_021A1818(PokedexListMenu* );
void ovy299_21a1ab4(PokedexListMenu* );
void ovy299_21a1834(PokedexListMenu* );

void ovy299_21a1424(PokedexListMenu *a1)
{
    sub_021A1818(a1);
    ovy299_21a1ab4(a1);
    ovy299_21a1834(a1);
    sub_0204B758();
}

void ovy299_21a1440(PokedexListMenu *a1)
{
    u32 i;
    int v4;         // r0

    if (!a1->unkC6C)
        sub_02035198(a1->unkC68);
    for (i = 0; i < 63; ++i)
    {
        v4 = a1->unkA8C[i];
        if (v4)
        {
            v4 = sub_0204C534();
            if (v4 != 1)
                v4 = sub_0204C4E0(a1->unkA8C[i], 4096);
        }
    }
    sub_0204B794();
}

void ovy299_21a1488(PokedexListMenu *a1, int a2, int a3);

void ovy299_21a1488(PokedexListMenu *a1, int a2, int a3)
{
    sub_0204C4D4(a1->unkA8C[a2], 0);
    Oam_SetOamAnimIndex(a1->unkA8C[a2], (u16)a3);
    sub_0204C540(a1->unkA8C[a2]);
}

void sub_021A14B0(PokedexListMenu* a1, int a2);
int sub_021A14E4(PokedexListMenu* a1, int a2);
int sub_021A1528(PokedexListMenu* a1, int a2);

void sub_021A14B0(PokedexListMenu* a1, int a2)
{
    sub_0204C550(a1->unkA8C[a2]);
}

void ovy299_21a14c4(PokedexListMenu *a1, int a2, int a3)
{
    ovy299_21a1488(a1, a2, a3);
    Oam_EnableOamAnim(a1->unkA8C[a2], 1);
}

int sub_021A14E4(PokedexListMenu* a1, int a2)
{
    return sub_0204C4A0(a1->unkA8C[a2]);
}

int sub_021A14F8(PokedexListMenu* a1, u32 a2)
{
    return sub_0204C560(a1->unkA8C[a2]);
}

void ovy299_21a150c(PokedexListMenu *a1, int a2, int a3)
{
    int result; // r0

    result = a1->unkA8C[a2];
    if (result)
        sub_0204C124(result, a3);
}

int sub_021A1528(PokedexListMenu* a1, int a2)
{
    return sub_0204C138(a1->unkA8C[a2]);
}

void ovy299_21a153c(PokedexListMenu *a1, int a2, int a3);
extern void sub_0204C318(int, int);

void ovy299_21a153c(PokedexListMenu *a1, int a2, int a3)
{
    if (a3 == 1)
    {
        sub_0204C318(a1->unkA8C[a2], 1);
        return;
    }
    else
        sub_0204C318(a1->unkA8C[a2], 0);
}

void ovy299_21a1568(PokedexListMenu *a1, u32 a2, s16 a3, s16 a4, u16 a5)
{
    s16 v6[2];

    v6[0] = a3;
    v6[1] = a4;
    Oam_SetSpritePosData(a1->unkA8C[a2], v6, a5);
}

void ovy299_21a158c(PokedexListMenu *a1, u32 a2, s16* a3, s16* a4, u16 a5)
{
    s16 v8[2];

    Oam_GetSpritePosData(a1->unkA8C[a2], v8, a5);
    *a3 = v8[0];
    *a4 = v8[1];
}

const OamSystemInitTemplate data_021A2818 = 
{
    .unk4 = 0x02000000,
    .unk8 = 4,
    .unk9 = 0x7C,
    .unkA = 4,
    .unkB = 0x7C,
    .unkC = 0,
    .unk10 = 100,
    .unk12 = 100,
    .unk14 = 100,
    .unk16 = 100,
    .unk18 = 16,
    .unk1A = 16
};

void ovy299_21a15b8(void)
{
    int *v4;
    OamSystemInitTemplate v5 = data_021A2818;

    v4 = sub_0219FCFC();
    Oam_CreateSystem(&v5, v4, 107);
}

void ovy299_21a15e8(PokedexListMenu *a1)
{
    for (u32 i = 0; i < 36; ++i)
    {
        a1->unkB88[i] = -1;
    }
    for (u32 j = 0; j < 6; ++j)
    {
        a1->unkC18[j] = -1;
    }
    for (u32 k = 0; k < 6; ++k)
    {
        a1->unkC30[k] = -1;
    }
    void *v8 = GFL_ArcSysCreateFileHandle(157, 32875);

    a1->unkB88[35] = Oam_LoadNCGRFile(v8, 57, 0, 0, 107);
    a1->unkC18[5] = sub_0204BBA0(v8, 53, 0, 0, 107);
    a1->unkC30[5] = Oam_LoadNCERFile(v8, 63, 73, 107);
    GFL_ArcToolFree(v8);

    void *v10 = GFL_ArcSysCreateFileHandle(7, 32875);
    int *sp4 = a1->unkB88;
    int *spC = a1->unkC18;
    int *sp8 = a1->unkC30;

    for (u32 i = 0; i < 16; ++i)
    {
        int v12 = sub_02020F94(0, 0, 0, 0);
        sp4[i] = Oam_LoadNCGRFile(v10, v12, 0, 0, 107);
    }

    spC[0] = sub_0204BC48(v10, sub_02021114(), 0, 128, 107);
    sp8[0] = Oam_LoadNCERFile(v10, sub_0202111C(), sub_02021190(), 107);

    sp4 = &a1->unkB88[16];
    spC = &a1->unkC18[1];
    sp8 = &a1->unkC30[1];
    for (u32 i = 0; i < 16; i++)
    {
        int v18 = sub_02020F94(0, 0, 0, 0);
        sp4[i] = Oam_LoadNCGRFile(v10, v18, 0, 1, 107);
    }
    spC[0] = sub_0204BC48(v10, sub_02021114(), 1, 0, 107);

    sp8[0] = Oam_LoadNCERFile(v10, sub_02021154(), sub_020211C8(), 107);

    GFL_ArcToolFree(v10);

    void *v26 = GFL_ArcSysCreateFileHandle(GetDefaultUINarcIdx(), 32875);

    a1->unkB88[34] = Oam_LoadNCGRFile(v26, sub_0202D814(), 0, 0, 107);

    a1->unkC18[4] = sub_0204BBA0(v26, sub_0202D810(), 0, 224, 107);

    a1->unkC30[4] = Oam_LoadNCERFile(v26, sub_0202D818(2), sub_0202D81C(2), 107);
    GFL_ArcToolFree(v26);
}

void ovy299_21a17d8(PokedexListMenu *a1)
{
    void *v2; // r4

    v2 = GFL_ArcSysCreateFileHandle(157, 107);
    a1->unkC68 = sub_02035024(16, 16, 65534, 107);
    sub_02035104(a1->unkC68, v2, 53, 16, 32);
    GFL_ArcToolFree(v2);
}

void sub_021A1818(PokedexListMenu *a1)
{
    sub_02035178(a1->unkC68);
}

void sub_021A1828(PokedexListMenu *a1, int a2)
{
    a1->unkC6C = a2;
}

void ovy299_21a1834(PokedexListMenu *a1)
{
    for (u32 i = 0; i < 0x24; ++i)
    {
        if (a1->unkB88[i] != -1)
            sub_0204B98C(a1->unkB88[i]);
    }
    for (u32 j = 0; j < 6; ++j)
    {
        if (a1->unkC18[j] != -1)
            sub_0204BCD0(a1->unkC18[j]);
    }
    for (u32 k = 0; k < 6; ++k)
    {
        if (a1->unkC30[k] != -1)
            sub_0204BE64(a1->unkC30[k]);
    }
}


typedef struct
{
    u16 unk0;
    u16 unk4;
    u16 unk8;
}ObjTemplate;

typedef struct
{
    ObjTemplate temp;
    int unk0;
    int unk1;
    int unk2;
    u16 unk3;
    u16 unk4;
}PokeDexObjTemplate;

const PokeDexObjTemplate data_021A2834[12] = {0};

extern int ovy302_21ad7f0(int, PokeDexObjTemplate*, int);
extern int sub_0200D1DC(int);

void ovy299_21a1894(PokedexListMenu *a1)
{
    int v14 = sub_0200D1AC(a1->unk0->dexSave);
    int v13 = sub_0200D1C0(a1->unk0->dexSave);

    a1->unkA88 = sub_0204BF1C(63, 0, 107);
    for (u32 i = 0; i < 63; i++)
    {
        a1->unkA8C[i] = 0;
    }
    for (u32 i = 0; i <= 12; i++)
    {
        PokeDexObjTemplate now;

        now = data_021A2834[i];
        now.unk0 = a1->unkB88[now.unk0];
        now.unk1 = a1->unkC18[now.unk1];
        now.unk2 = a1->unkC30[now.unk2];
        a1->unkA8C[i] = ovy302_21ad7f0(a1->unkA88, &now, 107);
        sub_0204C5C8(a1->unkA8C[i], 0);
    }
   
    if (a1->unk0->unkA <= 7u)
    {
        ovy299_21a150c(a1, 0, 0);
        ovy299_21a150c(a1, 1, 0);
    }
    if (!sub_0200D1DC(a1->unk0->dexSave))
        ovy299_21a150c(a1, 12, 0);

    if (!v13)
    {
        s16 v15[2];
        
        ovy299_21a150c(a1, 11, 0);
        ovy299_21a158c(a1, 12, &v15[1], &v15[0], 0);
        s16 datas = (v15[1]) - 32;
        ovy299_21a1568(a1, 12, datas, v15[0], 0);
    }
    if (!v14 && !v13)
    {
        ovy299_21a150c(a1, 3, 0);
        ovy299_21a150c(a1, 4, 0);
        ovy299_21a150c(a1, 5, 0);
    }
    else if (!v14 && v13 == 1)
        {
            ovy299_21a150c(a1, 3, 0);
            ovy299_21a1488(a1, 4, 0xE);
            sub_021A14B0(a1, 4);
        }
    else
    {
        if (v14 == 1 && v13 == 1)
        {
            if (sub_0200D1F8(a1->unk0->dexSave) != 1)
            {
                ovy299_21a1488(a1, 3, 0xE);
                sub_021A14B0(a1, 3);
            }
            else
            {
                ovy299_21a1488(a1, 4, 0xE);
                sub_021A14B0(a1, 4);
            }
        }   
    }
    if (a1->unk0->unk8 == 1)
    {
        ovy299_21a150c(a1, 11, 0);
        ovy299_21a150c(a1, 8, 0);
        ovy299_21a150c(a1, 3, 0);
        ovy299_21a150c(a1, 4, 0);
        ovy299_21a150c(a1, 5, 0);
    }
    else
    {
        int result = GameData_IsPocketRegistered(a1->unk0->gameData, 18);
        if (result == 1)
            ovy299_21a14c4(a1, 8, 7u);
    }
}

void ovy299_21a1a98(PokedexListMenu *a1, int a2)
{
    if (a1->unkA8C[a2])
    {
        Oam_RemoveOam(a1->unkA8C[a2]);
        a1->unkA8C[a2] = 0;
    }
}

void ovy299_21a1ab4(PokedexListMenu *a1)
{
    u32 i; // r5

    for (i = 0; i < 0x3F; ++i)
        ovy299_21a1a98(a1, i);
    sub_0204BF98(a1->unkA88);
}

const PokeDexObjTemplate data_021A2800 = {0};
extern void sub_0200D3C8(int, u16, int *, int *, int *, int);
extern void *sub_02033E24(int);
extern int sub_0200DA18(int, int);
extern int sub_02033E78(void *, u16, int, int, int, int, int, int, int, int);
extern int sub_02033E34(void *, u16, int, int, int, int, int, int, u16, int);
extern int sub_02033EF4(u16, int, int, int, int, int, int, int, int);
extern int sub_02020274(u16, u16, int);
extern int sub_020202AC(int, int);
extern void sub_0204C2B0(int, int, int);
extern void sub_020202A4(int);

void ovy299_21a1ad8(PokedexListMenu *a1, u16 a2)
{
    PokeDexObjTemplate v30;
    int v6;
    int v18;
    u32 v7;

    int v23;
    int v13, v24, v22;
    

    v30 = data_021A2800;
    u32 what = a1->unkC48;
    if ((what) == 0)
    {
        v18 = 0x3e;
        v6 = 0x3D;
        v7 = 0x160;
    }
    else
    {
        v6 = 62;

        v18 = 0x3D;
        v30.unk0 = 0x21;
        v30.unk1 = 3;
        v30.unk2 = 3;
        v7 = 384;
    }
    

    if (a1->unkA8C[v6])
    {
        ovy299_21a1a98(a1, v6);
        if (a1->unkB88[v30.unk0] != -1)
            sub_0204B98C(a1->unkB88[v30.unk0]);
        if (a1->unkC18[v30.unk1] != -1)
            sub_0204BCD0(a1->unkC18[v30.unk1]);
        if (a1->unkC30[v30.unk2] != -1)
            sub_0204BE64(a1->unkC30[v30.unk2]);
    }
    if (!a2)
    {
        void *v21 = GFL_ArcSysCreateFileHandle(157, 32875);
        a1->unkB88[v30.unk0]= Oam_LoadNCGRFile(v21, 56, 0, 0, 107);
        a1->unkC18[v30.unk1] = Oam_LoadNCLRFile(v21, 52, 0, (u16)v7, 0, 1, 107);
        a1->unkC30[v30.unk2] = Oam_LoadNCERFile(v21, 62, 72, 107);
        GFL_ArcToolFree(v21);
        ovy299_21a150c(a1, 2, 0);
    }
    else
    {
        int v10;
        int v11, v12;

        sub_0200D3C8(a1->unk0->dexSave, a2, &v23, &v22, &v24, 32875);
        void *v17 = sub_02033E24(32875);
        if (a2 == 327)
            v10 = sub_0200DA18(a1->unk0->dexSave, 0);
        else
            v10 = 0;
        v11 = sub_02033E78(v17, a2, v24, v23, v22, 0, 0, v10, 0, 107);
        a1->unkB88[v30.unk0]= v11;
        v12 = sub_02033E34(v17, a2, v24, v23, v22, 0, 0, 0, (u16)v7, 107);
        a1->unkC18[v30.unk1] = v12;
        v13 = sub_02033EF4(a2, v24, v23, v22, 0, 0, 2, 0, 107);
        a1->unkC30[v30.unk2] = v13;
        GFL_ArcToolFree(v17);
        ovy299_21a150c(a1, 2, 1);
    }
    
    
    v30.unk0 = a1->unkB88[v30.unk0];
    v30.unk1 = a1->unkC18[v30.unk1];
    v30.unk2 = a1->unkC30[v30.unk2]; 
    a1->unkA8C[v6] = ovy302_21ad7f0(a1->unkA88, &v30, 107);
    sub_0204C5C8(a1->unkA8C[v6], 0);
    int v14 = sub_02020274(a2, (u16)v24, 32875);
    int v15 = v14;
    if (a2 && !sub_020202AC(v14, 34))
        sub_0204C2B0(a1->unkA8C[v6], 1, 1);
    sub_020202A4(v15);
    ovy299_21a150c(a1, v18, 0);
    sub_02026F7C(a1->unkC, 2, (u16)(16 * (v7 >> 5)), 32);

    a1->unkC48 ^= 1;
}

const PokeDexObjTemplate data_021A27E8 = {0};

void ovy299_21a1d6c(PokedexListMenu *a1)
{
    PokeDexObjTemplate v10;
    
    v10 = data_021A27E8;

    v10.unk1 = a1->unkC18[0];
    v10.unk2 = a1->unkC30[0];

    for (u32 i = 0; i < 16; i++)
    {
        v10.temp.unk4 =  i * 24 + 8;
        v10.unk0 = a1->unkB88[i];
        a1->unkA8C[13 + i] = ovy302_21ad7f0(a1->unkA88, &v10, 107);
        sub_0204C5C8(a1->unkA8C[13 + i], 0);
    }

    v10 = data_021A27E8;
    v10.unk1 = a1->unkC18[1];
    v10.unk2 = a1->unkC30[1];
    for (u32 i = 0; i < 16; i++)
    {
        v10.temp.unk4 =  i * 24 + 0x20;
        v10.unk0 = a1->unkB88[i + 16];
        v10.unk4 = 1;
        a1->unkA8C[29 + i] = ovy302_21ad7f0(a1->unkA88, &v10, 107);
        sub_0204C5C8(a1->unkA8C[29 + i], 0);
        ovy299_21a153c(a1, i + 29, 1);
        a1->unkA8C[45 + i] = ovy302_21ad7f0(a1->unkA88, &v10, 107);
        sub_0204C5C8(a1->unkA8C[45 + i], 0);
        sub_0204C318(a1->unkA8C[45 + i], 2);
    }
    
    for (u32 i = 0; i < 16; i++)
    {
        ovy299_21a150c(a1, i + 13, 0);
    }
    
    for (u32 i = 0; i < 16; i++)
    {
        ovy299_21a150c(a1, i + 29, 0);
        ovy299_21a150c(a1, i + 45, 0);
    }
}

typedef struct
{
    u8 unk0[0x14];
    int unk14;
}BGDATA;
extern int sub_0204C428(int);
extern void sub_0204BAB8(int, int, int, int, int);
extern void *sub_0204B2DC(void*, int, int, BGDATA**, int);
extern int sub_02021034(int, int, int, int);

void ovy299_21a1f04(PokedexListMenu *a1, int a2, int a3, int a4, u16 a5, int a6)
{
    void *v16;     // [sp+Ch] [bp-1Ch]
    BGDATA *v17;  // [sp+10h] [bp-18h] BYREF
    int v10;
    int v13;     // r0
    void *v15;     // [sp+8h] [bp-20h]
    
    v16 = GFL_ArcSysCreateFileHandle(7, 32875);
    v10 = sub_02020F94(a3, a4, a5, 0);
    v15 = sub_0204B2DC(v16, v10, 0, &v17, 32875);

    if (a6 == 1)
        sub_0204BAB8(sub_0204C428(a1->unkA8C[a2]), v17->unk14, 1024, 0, 0);
    else
        sub_0204BAB8(sub_0204C428(a1->unkA8C[a2]), v17->unk14, 1024, 0, 1);
    GFL_HeapFree(v15);
    GFL_ArcToolFree(v16);
    v13 = sub_02021034(a3, a4, a5, 0);
    sub_0204C378(a1->unkA8C[a2], v13, 1);
}

int ovy299_21a1fa8(PokedexListMenu *a1, int a2)
{
    u32 i; // r5

    if (a2 == 1)
    {
        for (i = 13; i < 0x1D; ++i)
        {
            if (!sub_021A1528(a1, i))
                return i;
        }
    }
    else
    {
        for (i = 29; i < 0x2D; ++i)
        {
            if (!sub_021A1528(a1, i))
                return i;
        }
    }
    return 0;
}

void ovy299_21a1fe8(PokedexListMenu *a1, u16 a2, int a3, int a4)
{
    int v7;      // r6
    int v9;  // r4
    int v11; // [sp+Ch] [bp-24h] BYREF
    int v12;     // [sp+10h] [bp-20h] BYREF
    int v13;  // [sp+14h] [bp-1Ch] BYREF

    sub_0200D3C8(a1->unk0->dexSave, a2, &v11, &v13, &v12, 32875);
    v7 = ovy299_21a1fa8(a1, a4);
    ovy299_21a1f04(a1, v7, a2, (u16)v12, (u16)(v11), a4);
    ovy299_21a150c(a1, v7, 1);
    ovy299_21a14c4(a1, v7, 0);
    if (a4 == 1)
    {
        ovy299_21a1568(a1, v7, 112, (s16)(a3 + 8), 0);
        return;
    }
    v9 = a3 + 8;
    ovy299_21a1568(a1, v7, 112, v9, 1);
    ovy299_21a1568(a1, v7 + 16, 112, v9, 1);
    ovy299_21a150c(a1, v7 + 16, 1);
}

void ovy299_21a2098(PokedexListMenu *a1, s8 a2)
{
    u32 i;      // r5
    int v7;              // r1
    u32 j;      // r5
    int result;          // r0
    int v10;             // r1
    s16 v11;         // [sp+4h] [bp+0h] BYREF
    s16 v12;         // [sp+6h] [bp+2h] BYREF
 
    for (i = 13; i < 0x1D; ++i)
    {
        if (sub_021A1528(a1, i))
        {
            ovy299_21a158c(a1, i, &v11, &v12, 0);
            ovy299_21a1568(a1, i, v11, (s16)(v12 + a2), 0);
            v7 = v12 + a2;
            if (v7 <= -16 || v7 >= 200)
                ovy299_21a150c(a1, i, 0);
        }
    }
    for (j = 29; j < 0x2D; ++j)
    {
        result = sub_021A1528(a1, j);
        if (result)
        {
            ovy299_21a158c(a1, j, &v11, &v12, 1u);
            ovy299_21a1568(a1, j, v11, (s16)(v12 + a2), 1u);
            ovy299_21a1568(a1, j + 16, v11, (s16)(v12 + a2), 1u);
            v10 = v12 + a2;
            if (v10 <= -16 || v10 >= 200)
            {
                ovy299_21a150c(a1, j, 0);
                ovy299_21a150c(a1, j + 16, 0);
            }
        }
    }
}

void ovy299_21a2188(PokedexListMenu *a1)
{

    u32 i;  // r4
    int result;      // r0

    a1->unkC4C = 0;
    a1->unkC4E = 0;

    for (i = 13; i < 29; ++i)
    {
        if (sub_021A1528(a1, i))
            a1->unkC4C |= 1 << (i - 13);
    }

    for (i = 29; i < 45; ++i)
    {
        result = sub_021A1528(a1, i);
        if (result)
        {
            a1->unkC4E |= (1 << (i - 29));
        }
    }
}

void ovy299_21a21f4(PokedexListMenu *a1)
{
    u32 i; // r4
    u32 j;

    for (i = 13; i < 0x1D; ++i)
    {
        if ((a1->unkC4C & (1 << (i - 13))) != 0)
            ovy299_21a150c(a1, i, 0);
    }
    for (j = 29; j < 0x2D; ++j)
    {
        if ((a1->unkC4E & (1 << (j - 29))) != 0)
        {
            ovy299_21a150c(a1, j, 0);
            ovy299_21a150c(a1, j + 16, 0);
        }
    }
    a1->unkC4C = 0;
    a1->unkC4E = 0;
}

void ovy299_21a2268(PokedexListMenu *a1, int a2)
{
    u16 aa = (a2 * 24) ;// fuck
    s16 v11;
    s16 v12;
   
    int a2a = aa + 8;
    for (u32 i = 13; i < 29; ++i)
    {
        if (!sub_021A1528(a1, i))
        {
            ovy299_21a14c4(a1, i, 0);
        }
        else
        {
            ovy299_21a158c(a1, i, &v11, &v12, 0);
            if (a2a == v12)
            {
                if (sub_021A14E4(a1, i) != 1)
                {
                    ovy299_21a14c4(a1, i, 1);
                }
            }
            else
            {
                ovy299_21a14c4(a1, i, 0);
            }
        }
        
    }
}

extern int ovy139_219c324(int, s16);

void ovy299_21a22d4(PokedexListMenu *a1)
{
    u32 v5; // r0
    int v6;      // r3
    s16 v8;
    s16 v9;

    ovy299_21a158c(a1, 0, &v8, &v9, 0);
    v5 = ovy139_219c324(a1->unkC50, v9);
    v6 = v5;
    if (v5 < 0xC)
    {
        v6 = 12;
    }
    else
    {
        if (v5 > 0x9C)
            v6 = 156;
    }

    
    ovy299_21a1568(a1, 0, 252, (s16)v6, 0);
}

extern int sub_0219CC44(int);

void ovy299_21a231c(PokedexListMenu *a1, int a2)
{
    int v4;              // r6
    int v8;              // r0

    v4 = sub_0219CC34(a1->unkC50);
    if (sub_021A14E4(a1, 10) != 12 || !a2)
    {
        if (!sub_0219CC3C(a1->unkC50) && !v4)
        {
            ovy299_21a14c4(a1, 10, 0x12);
        }
        else
        {
            ovy299_21a14c4(a1, 10, 4);
        }
        
    }
    v8 = sub_021A14E4(a1, 9);
    if (v8 != 13 || !a2)
    {
        if (!sub_0219CC44(a1->unkC50) && v4 == a1->unkC58 - 1)
            ovy299_21a14c4(a1, 9, 0x13);
        else
            ovy299_21a14c4(a1, 9, 5);
    }
}

const int data_021A296C[6] = {0};
const int data_021A29B0[6] = {0};

extern void sub_0219CC90(int);
extern void sub_0219CCA0(int);

int ovy299_21a23a4(PokedexListMenu *a1)
{
    void *v2; // r0
    int v3;   // r0
    int v4;   // r4
    int v6;
    int v8;  // r0

    if (sub_0200D1C0(a1->unk0->dexSave) == 1)
        v2 = &data_021A296C;
    else
        v2 = &data_021A29B0;
    v3 = sub_0203DA0C(v2);
    v4 = v3;
    if (v3 != -1)
    {
        if (v3 == 8 && !sub_0200D1DC(a1->unk0->dexSave))
            return -1;
        if (v4 == 9)
        {
            if (!sub_0200D1C0(a1->unk0->dexSave))
                return -1;
            if (a1->unk0->unk8 == 1)
                return -1;
        }
        if (v4 == 10)
        {
            if (a1->unk0->unk8 == 1)
                return -1;
            if (!sub_0203D554())
            {
                sub_0203D564(1);
                sub_0219CCA0(a1->unkC50);
            }
        }
        if (v4 == 13)
        {
            if (sub_0200D1AC(a1->unk0->dexSave) != 1 || sub_0200D1C0(a1->unk0->dexSave) != 1)
                return -1;
            if (a1->unk0->unk8 == 1)
                return -1;
            if (sub_0200D1F8(a1->unk0->dexSave) != 1)
                return -1;
            sub_0203D564(1);
        }
        if (v4 == 14)
        {
            if (sub_0200D1AC(a1->unk0->dexSave) != 1 || sub_0200D1C0(a1->unk0->dexSave) != 1)
                return -1;
            if (a1->unk0->unk8 == 1)
                return -1;
            v6 = sub_0200D1AC(a1->unk0->dexSave);

            if (v6 == 1)
            {
                if (sub_0200D1F8(a1->unk0->dexSave) == 1)
                    return -1;
            }
            else if (sub_0200D1F8(a1->unk0->dexSave) == 1)
            {
                return -1;
            }
            sub_0203D564(1);
        }
        if (v4 == 15)
        {
            if (!sub_0200D1C0(a1->unk0->dexSave))
                return -1;
            if (a1->unk0->unk8 == 1)
                return -1;
            sub_0203D564(1);
        }
        sub_0203D564(1);
        return v4;
    }
    else
    {
        v8 = GCTX_HIDGetPressedKeys();
        if ((v8 & 2) != 0)
        {
            sub_0203D564(0);
            return 12;
        }
        else if ((GCTX_HIDGetPressedKeys() & 0x400) != 0)
        {
            sub_0203D564(0);
            return 11;
        }
        else if ((GCTX_HIDGetPressedKeys() & 8) != 0 && sub_0200D1DC(a1->unk0->dexSave) == 1)
        {
            sub_0203D564(0);
            return 8;
        }
        else if ((GCTX_HIDGetPressedKeys() & 4) != 0)
        {
            if (!sub_0200D1C0(a1->unk0->dexSave))
                return -1;
            else
            {
                if (a1->unk0->unk8 == 1)
                {
                    return -1;
                }
                else
                {
                    sub_0203D564(0);
                    return 9;
                }
            }
                
        }
        else if ((GCTX_HIDGetPressedKeys() & 0x800) != 0)
        {
            if (a1->unk0->unk8 == 1)
            {
                return -1;
            }
            else
            {
                if (sub_0203D554() == 1)
                {
                    sub_0203D564(0);
                    sub_0219CC90(a1->unkC50);
                }
                else
                {
                    sub_0203D564(0);
                }
                return 10;
            }
        }
    }
    return v4;
}