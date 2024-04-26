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
int sub_0219FCFC(void);
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

int sub_0219FCFC(void)
{
    return 0x021A2608;
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

extern void *PML_PersonalLoadRegionalDexTable(int, int);

void ovy299_21a0208(PokedexListMenu *a1)
{
    a1->unkC5C = PML_PersonalLoadRegionalDexTable(107, 0);
}

void sub_021A0220(PokedexListMenu *a1)
{
    GFL_HeapFree(a1->unkC5C);
}

extern void ovy299_21a158c(PokedexListMenu*, u32, s16*, s16*, int);
extern void ovy299_21a1568(PokedexListMenu*, u32, s16, s16, int);
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

void ovy299_21a0514(PokedexListMenu *a1, int a2, int a3, u16 a4, u32 a5);

extern u32 sub_0219CC1C(int);
void ovy299_21a1358(PokedexListMenu*, int, int, int);
void ovy299_21a1fe8(PokedexListMenu*, u16, int, int);

// 出现超出4参数的值在写入sp寄存器位置不对时可能是参数类型的问题，比如这个a4
void ovy299_21a0514(PokedexListMenu *a1, int a2, int a3, u16 a4, u32 a5)
{
    int v7;              // r7
    u32 result; // r0
    int wa;

    v7 = sub_0219CC1C(a1->unkC50);
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

    v4 = sub_0219CC1C(a1->unkC50);
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
            a1->unkC48 = (a1->unkC48 & 0xFFFF0001) | 0x14;
            a1->unk14 = 0;
            r6 = 5;
            break;
        case 6:
            ovy299_21a14c4(a1, 9, 13);
            a1->unkC48 = (a1->unkC48 & 0xFFFF0001) | 0x12;
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
            a1->unkC48 = (a1->unkC48 & 0xFFFF0001) | 0x7E;
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

int ovy299_21a0c6c(PokedexListMenu *a1)
{
    switch (a1->unk14)
    {
        case 0:
            if (sub_0219B2E0(a1->unkC50) == -1)
            {
                ++a1->unk14;
            }
            break;
        case 1:
            u32 ui = (a1->unkC48 << 16);
            if (ui >> 0x11 == 63 || !sub_021A14F8(a1))
            {
                a1->unk14 = 0;
                ovy299_21a231c(a1, 0);
                return 4;
            }
            break;
    }

    return 5;
}