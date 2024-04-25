#include "global.h"
#include "main.h"
#include "pokedex.h"
#include "touchscreen.h"

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

int ovy299_219fbc0(int a1, int a2, int a3);
int ovy299_219fbf0(int a1, int a2, int a3, int a4);
void ovy299_219fc14(PokedexMenu *a1);
void ovy299_219fc38(int a1, PokedexMenu *a2);
void sub_0219FC2C(PokedexMenu *a1);
void ovy299_219fc60(PokedexMenu *a1);
void sub_0219FC78(PokedexMenu *a1);
void sub_0219FC84(void);
void sub_0219FCEC(void);
int sub_0219FCFC(void);
void ovy299_219fd04(int a1, int a2, int a3, int a4);
void ovy299_219fea8(void);
void ovy299_219fef0(void);
void ovy299_21a0040(PokedexMenu *a1);
void ovy299_21a0080(PokedexMenu *a1);
void ovy299_21a0134(void);
void sub_021A014C(void);
void sub_021A018C(void);
void ovy299_21a01e4(PokedexMenu *a1);
void ovy299_21a01a0(PokedexMenu *a1);
void ovy299_21a0208(PokedexMenu *a1);
void sub_021A0220(PokedexMenu *a1);
int ovy299_21a0298(PokedexMenu *a1);
void sub_021A0288(PokedexMenu *result, s16 a2);

int ovy299_219fbc0(int a1, int a2, int a3)
{
    PokedexMenu *pokeDexMenu; // r4

    GFL_HeapCreateChild(1, 107, 0x60000);
    pokeDexMenu = (PokedexMenu*) GFL_ProcInitSubsystem(a1, 3184, 107);
    MI_CpuFill8(pokeDexMenu, 0, 3184);
    pokeDexMenu->unk0 = a3;
    return 1;
}

int ovy299_21a05dc(int);
int ovy299_219fc04(void);

int ovy299_219fbf0(int a1, int a2, int a3, int a4)
{
    return ovy299_21a05dc(a4) == 0;
}

extern void sub_0203AB10(void);
extern void sub_0203A1D0(int);

int ovy299_219fc04(void)
{
    sub_0203AB10();
    sub_0203A1D0(107);
    return 1;
}

void ovy299_219fc14(PokedexMenu *a1)
{
    a1->unk4 = GFL_VBlankTCBAdd(ovy299_219fc38, a1, 0);
}

void sub_0219FC2C(PokedexMenu *a1)
{
    GFL_TCBRemove(a1->unk4);
}

typedef struct
{
    u8 unk0[0x3FF8];
    int unk3FF8;
}UnknowOffset;

extern int sub_02045A5C(int);
extern void sub_0204B7C8(int);
extern void sub_020275F8(int);

void ovy299_219fc38(int a1, PokedexMenu *a2)
{
    sub_0204B7C8(sub_02045A5C(a1));
    sub_020275F8(a2->unkC);
    UnknowOffset *v1 = (UnknowOffset*)(0x02FE0000);
    v1->unk3FF8 |= 1;
}

extern int sub_02005680(void*, PokedexMenu*, int);

void ovy299_219fc60(PokedexMenu *a1)
{
    a1->unk8 = sub_02005680(sub_0219FC84, a1, 0);
}

void sub_0219FC78(PokedexMenu *a1)
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

extern void sub_020450CC(int, int, int, int);

void ovy299_219fd04(int a1, int a2, int a3, int a4)
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

extern void sub_0204ADA8(void*, int, int, int, int, int, int);
extern void sub_0204AF50(void*, int, int, int, int, int, int);
extern int sub_0202D824(void);
extern int sub_0202D820(void);
extern void sub_0204566C(int, int, int, int, int, int);
extern int sub_0202D828(void);

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

void ovy299_21a0040(PokedexMenu *a1)
{
    a1->unkC = sub_02026DC0(107);
    sub_02026E04(a1->unkC, 0, 512, 107);
    sub_02026E04(a1->unkC, 1, 512, 107);
    sub_02026E04(a1->unkC, 2, 512, 107);
    sub_02026E04(a1->unkC, 3, 512, 107);
}

void ovy299_21a0080(PokedexMenu *a1)
{
    sub_02026E48(a1->unkC, 0);
    sub_02026E48(a1->unkC, 1);
    sub_02026E48(a1->unkC, 2);
    sub_02026E48(a1->unkC, 3);
    sub_02026DE8(a1->unkC);
}

void ovy299_21a00ac(PokedexMenu *a1, int a2, int a3);

void ovy299_21a00ac(PokedexMenu *a1, int a2, int a3)
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

void ovy299_21a01a0(PokedexMenu *a1)
{
    a1->unk54 = GFL_MsgSysLoadData(0, 2, 478, 107);
    a1->unk50 = GFL_FontCreate(23, 0, 0, 0, 0x6b);
    a1->unk58 = GFL_WordSetSystemCreateDefault(107);
    a1->unk60 = sub_02021998(107);
    a1->unk5C = GFL_StrBufCreate(128, 107);
}

void ovy299_21a01e4(PokedexMenu *a1)
{
    GFL_StrBufFree(a1->unk5C);
    sub_02021A18(a1->unk60);
    GFL_WordSetSystemFree(a1->unk58);
    sub_02022DA8(a1->unk50);
    GFL_MsgDataFree(a1->unk54);
}

extern void *PML_PersonalLoadRegionalDexTable(int, int);

void ovy299_21a0208(PokedexMenu *a1)
{
    a1->unkC5C = PML_PersonalLoadRegionalDexTable(107, 0);
}

void sub_021A0220(PokedexMenu *a1)
{
    GFL_HeapFree(a1->unkC5C);
}

extern void GFL_BGSysMoveBGReq(int, int, int);
extern void ovy299_21a158c(PokedexMenu*, u32, s16*, s16*, int);
extern void ovy299_21a1568(PokedexMenu*, u32, s16, s16, int);
void ovy299_21a0230(PokedexMenu *a1);

void ovy299_21a0230(PokedexMenu *a1)
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

void sub_021A0288(PokedexMenu *result, s16 a2)
{
    result->unkC64 = 48;
    result->unkC66 = a2;
}

int ovy299_21a0298(PokedexMenu *a1)
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

extern const int data_021A25E0[4];

// void ovy299_21a0324(PokedexMenu *a1, int a2, int a3, int a4)
// {
//     int v5;              // r7
//     int *v6;             // r4
//     int v7;              // r6
//     int v8[4];            // r3
//     int v9;              // r2
//     int v10;             // r0
//     int v11;             // r1
//     unsigned int v12;    // r0
//     unsigned int v13;    // r2
//     char v14;            // r1
//     unsigned int v15;    // r0
//     unsigned int v16;    // r6
//     int v17;             // r1
//     unsigned int result; // r0
//     int v19;             // r7
//     int v20;             // r0
//     int v21;             // r3
//     int v22;             // r1
//     int v23;             // r2
//     int v24;             // r7
//     int v25;             // r2
//     char v26[20];        // [sp+10h] [bp-40h] BYREF
//     __int16 v27;         // [sp+24h] [bp-2Ch]
//     char v28;            // [sp+28h] [bp-28h]
//     __int16 v29;         // [sp+2Ah] [bp-26h]

//     v5 = GFL_ArcSysCreateFileHandle(157, 0x806B);

//     v7 = sub_0200D214(a1->unk0.unk4);
//     v8 = data_021A25E0;

//     v27 = 649;
//     v30 = a1;
//     v12 = 0;
//     v13 = *(unsigned __int16 *)(*a1 + 10);
//     if (!a1->unk0.unkA)
//     {
//         while (v7 != *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v12))
//         {
//             if (++v12 >= v13)
//                 goto LABEL_12;
//         }
//         v14 = v13 - 7;
//         if (v12 > v13 - 7)
//         {
//             v28 = v12 - v14;
//             LOWORD(v12) = v12 - (unsigned __int8)(v12 - v14);
//         LABEL_7:
//             v29 = v12;
//             goto LABEL_12;
//         }
//         if (v12 >= 7)
//             goto LABEL_7;
//         v28 = v12;
//     }
// LABEL_12:
//     a1[788] = MEMORY[0x219AF5C](v26, 107);
//     v15 = *(unsigned __int16 *)(*a1 + 10);
//     if (v15 >= 7)
//         v15 = 7;
//     a1[790] = v15;
//     v16 = 0;
//     MEMORY[0x219B220](a1[788], v5, 68, 0, 0);
//     MEMORY[0x219B220](a1[788], v5, 69, 0, 1);
//     MEMORY[0x219B220](a1[788], v5, 70, 0, 2);
//     MEMORY[0x219B2BC](a1[788], v5, 49, 2, 3);
//     MEMORY[0x204AB38](v5);
//     v17 = *a1;
//     result = *(unsigned __int16 *)(*a1 + 10);
//     if (*(_WORD *)(*a1 + 10))
//     {
//         do
//         {
//             if (MEMORY[0x200D660](*(_DWORD *)(v17 + 4), *(unsigned __int16 *)(*(_DWORD *)(v17 + 12) + 2 * v16)) == 1)
//             {
//                 v19 = MEMORY[0x20489B8](MEMORY[0x209A474], *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v16));
//                 a1[v16 + 25] = MEMORY[0x20485D0](v19, 107);
//                 MEMORY[0x2048590](v19);
//                 v20 = a1[788];
//                 v21 = *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v16);
//                 v22 = 0;
//                 v23 = 0x20000000;
//             }
//             else
//             {
//                 if (MEMORY[0x200D7F4](*(_DWORD *)(*a1 + 4), *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v16)) != 1)
//                 {
//                     a1[v16 + 25] = MEMORY[0x20489B8](a1[21], 7);
//                     v25 = *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v16);
//                     v20 = a1[788];
//                     v22 = 2;
//                     goto LABEL_21;
//                 }
//                 v24 = MEMORY[0x20489B8](MEMORY[0x209A474], *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v16));
//                 a1[v16 + 25] = MEMORY[0x20485D0](v24, 107);
//                 MEMORY[0x2048590](v24);
//                 v20 = a1[788];
//                 v21 = *(unsigned __int16 *)(*(_DWORD *)(*a1 + 12) + 2 * v16);
//                 v22 = 1;
//                 v23 = 0x10000000;
//             }
//             v25 = v23 | v21;
//         LABEL_21:
//             MEMORY[0x219B1F4](v20, v22, v25);
//             v17 = *a1;
//             ++v16;
//             result = *(unsigned __int16 *)(*a1 + 10);
//         } while (v16 < result);
//     }
//     return result;
// }