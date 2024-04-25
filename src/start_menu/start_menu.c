#include "global.h"
#include "main.h"
#include "touchscreen.h"

#define WHITE_2 1
#define BLACK_2 2

typedef struct
{
    /*0x0*/ u16 unk0;
    /*0x2*/ u16 heapId;
    /*0x4*/ int unk4;
    /*0x8*/ int unk8;
    /*0xC*/ int unkC;
    /*0x10*/ int unk10;
    /*0x14*/ int unk14;
    /*0x18*/ int unk18;
    /*0x1C*/ int unk1C;
    /*0x20*/ int unk20;
    /*0x24*/ int unk24;
    /*0x28*/ int unk28;
    /*0x2C*/ int unk2C;
    /*0x30*/ int unk30;
    /*0x34*/ int unk34;
    /*0x38*/ int unk38;
    /*0x3C*/ int unk3C;
    /*0x40*/ int unk40;
    /*0x44*/ int unk44;
    /*0x48*/ int unk48;
    /*0x4C*/ int unk4C;
    /*0x50*/ int unk50;
    /*0x54*/ int unk54;
    /*0x58*/ int unk58;
    /*0x5C*/ int unk5C;
    /*0x60*/ int unk60;
    /*0x64*/ int unk64;
    /*0x68*/ int unk68;
    /*0x6C*/ int unk6C;
    /*0x70*/ int unk70;
    /*0x74*/ u16 unk74;
    /*0x76*/ u16 unk76;
    /*0x78*/ int unk78;
    /*0x7C*/ int unk7C;
    /*0x80*/ int unk80;
    /*0x84*/ int unk84;
    /*0x88*/ int unk88;
    /*0x8C*/ u32 unk8C;
    /*0x90*/ int unk90;
    /*0x94*/ int unk94;
    /*0x98*/ int unk98;
}StartMenuData; //size of 156

int ovy162_219ce80(int a1);
void ovy162_219ceb4(StartMenuData *a1);
void ovy162_219cf44(StartMenuData *a1);
int ovy162_219d038(void *a1, void *a2, void *a3, void *a4);

extern void sub_02006FC8(u16);

int ovy162_219ce80(int a1)
{
    StartMenuData *v2; // r4

    GFL_HeapCreateChild(1, 22, 0x120000);
    v2 = (StartMenuData*) GFL_ProcInitSubsystem(a1, 156, 22);
    MI_CpuFill8(v2, 0, 156);
    v2->heapId = 22;
    sub_02006FC8(22);
    return 1;
}

extern void sub_0204E060(int, int, int, int);
extern void sub_02046DF8(int);
extern int sub_02015CCC(int);
extern void ovy162_219d7d8(int*, int);

void ovy162_219ceb4(StartMenuData *a1)
{
    u32 v2;

    if (a1->unk8C == 1740)
    {
        sub_0204E060(12, 16, 0, 3);
        sub_02046DF8(1);
        sub_02044C98(6, 0);
        GFL_BGSysSetBGEnabledB(16, 0);
        GFL_BGSysSetBGEnabledA(8, 0);
        a1->unk94 = 1;
    }
    if (a1->unk94 == 2 && sub_02015CCC(a1->unk4C) == 0x1E64000)
        ovy162_219d7d8(&a1->unk40, 7300);

    v2 = a1->unk8C + 1;
    a1->unk8C = v2;
    if (v2 > 6780)
    {
        a1->unk4 = 1;
        a1->unk0 = 5;
    }
}

extern int PokeVoice_Play(int, int, int, int, int, int, int, int);
extern void sub_020070C0(int);
void sub_0219D338(int*, int, int);

void ovy162_219cf44(StartMenuData *a1)
{
    int result; // r0

    if ((GCTX_HIDGetPressedKeys() & 0xB) != 0 && a1->unk94 == 1)
    {
        sub_02046DF8(0);
        sub_02044C98(6, 1);
        sub_02044C98(3, 1);
        GFL_BGSysSetBGEnabledB(16, 1);
        ovy162_219d7d8(&a1->unk40, 7300);
        result = 2;
        a1->unk94 = 2;
    }
    else if ((GCTX_HIDGetPressedKeys() & 9) != 0)
    {
        a1->unk4 = 0; 
        a1->unk0 = 4;
        
        a1->unk90 = PokeVoice_Play(646, BLACK_2, 64, 0, 0, 0, 0, 0);
        ovy162_219d7d8(&a1->unk40, 7001);
        sub_02046DF8(0);
        sub_02044C98(6, 1);
        GFL_BGSysSetBGEnabledB(16, 0);
        sub_0204E060(12, 16, 0, 3);
        sub_020070C0(4);
        sub_0219D338(&a1->unk8, 8, 8);
    }
    else if (sub_0203DF20() == 70)
    {
        a1->unk4 = 2;
        a1->unk0 = 5;
    }
    else
    {
        result = sub_0203DF20();
        if (result == 3200)
        {
            a1->unk4 = 3;
            a1->unk0 = 5;
        }
    }
}

extern void sub_0200703C(void);
void ovy162_219d1b8(void);
void ovy162_219d20c(void);
void ovy162_219d2a0(int*, u16);
void ovy162_219d340(int*, u16);
void ovy162_219d554(int*, u16);
void ovy162_219d844(int*, u16);
void sub_02007054(int);
int sub_0204E0E0(void);
void ovy162_219d224(StartMenuData*);
extern int sub_02006C40(int);
int sub_020070A4(void);
extern void sub_02007090(void);

void ovy162_219d8f0(int*);
void ovy162_219d7b0(int*);
void ovy162_219d530(int*);
void ovy162_219d310(int*);

int ovy162_219d038(void *a1, void *a2, void *a3, void *a4)
{
    StartMenuData *startWork = (StartMenuData*)a4;

    sub_0200703C();
    switch (startWork->unk0)
    {
        case 0:
            ovy162_219d1b8();
            ovy162_219d20c();
            startWork->unk0 = 1;
            break;
        case 1:
            ovy162_219d2a0(&startWork->unk8, startWork->heapId);
            ovy162_219d340(&startWork->unk14, startWork->heapId);
            ovy162_219d554(&startWork->unk40, startWork->heapId);
            ovy162_219d844(&startWork->unk54, startWork->heapId);
            sub_0204E060(3, 0x10, 0, 2);
            startWork->unk8C = 0;
            startWork->unk0 = 2;
            sub_02007054(0);
            startWork->unk98 = *(u32*)(0x02FFFC3C);
            break;
        case 2:
            if (!sub_0204E0E0())
            {
                startWork->unk0 = 3;
            }
            ovy162_219d224(startWork);
            break;
        case 3:
            ovy162_219d224(startWork);
            ovy162_219cf44(startWork);
            ovy162_219ceb4(startWork);
            break;
        case 4:
            if (!sub_02006C40(startWork->unk90))
            {
                startWork->unk0 = 5;
            }
            ovy162_219d224(startWork);
            break;
        case 5:
            sub_0204E060(3, 0, 16, 2);
            startWork->unk0 = 6;
            ovy162_219d224(startWork);
            sub_020070C0(16);
            break;
        case 6:
            if (!sub_0204E0E0() && !sub_020070A4())
            {
                sub_02007090();
                startWork->unk0 = 7;
                
            }
            ovy162_219d224(startWork); 
            break;
        case 7:
            ovy162_219d8f0(&startWork->unk54);
            ovy162_219d7b0(&startWork->unk40);
            ovy162_219d530(&startWork->unk14);
            ovy162_219d310(&startWork->unk8);
            return 1;
        case 8:
            return 1;
    }
    return 0;
}

// int ovy162_219d168(int a1, int a2, int a3, int a4);
// extern void sub_0200700C(void);
// void GFL_ProcReleaseSubsystem(int);
// extern void GFL_HeapDelete(int);
// extern void sub_0203A954(int, int, int);

// int ovy162_219d168(int a1, int a2, int a3, int a4)
// {
//     int v5;

//     StartMenuData *startWork = (StartMenuData*)a4;

//     v5 = startWork->unk4;
//     sub_0200700C();
//     GFL_ProcReleaseSubsystem(a1);
//     GFL_HeapDelete(22);
//     switch (v5)
//     {
//         case 0:
//             sub_0203A954(162, 0x021A172C, 0);
//             break;
//         case 2:
//             sub_0203A954(162, 0x021A1A70, 0);
//             break;
//         case 3:
//             sub_0203A954(253, 0x0217D6E4, 0);
//             break;
//     }
//     return 1;
// }

// void ovy162_219d1b8(void)
// {
//     GXx_SetMasterBrightness_(67108972, -16);
//     GXx_SetMasterBrightness_(67113068, -16);
//     GFL_BGSysSetEnabledBGsA(0);
//     GFL_BGSysSetEnabledBGsB(0);
//     MEMORY[0x4000050] = 0;
//     MEMORY[0x4001050] = 0;
//     MEMORY[0x4000000] &= 0xFFFF1FFF;
//     MEMORY[0x4001000] &= 0xFFFF1FFF;
//     MEMORY[0x4001000] &= 0xFFFF1FFF;
// }

// void ovy162_219d20c(void)
// {
//     GFL_BGSysSetVRAMBanks(&unk_21A1620);
//     GFL_BGSysSetLCDConfig(&unk_21A1538);
// }

// void ovy162_219d224(StartMenuData *a1)
// {
//     int v2; // r4

//     v2 = MEMORY[0x2FFFC3C] - *(_DWORD *)(a1 + 152);
//     *(_DWORD *)(a1 + 152) = MEMORY[0x2FFFC3C];
//     sub_0219D304(a1 + 8, *(unsigned __int16 *)(a1 + 2));
//     ovy162_219d4fc(a1 + 20, *(unsigned __int16 *)(a1 + 2));
//     do
//     {
//         sub_0219D6FC(a1 + 64, *(unsigned __int16 *)(a1 + 2));
//         --v2;
//     } while (v2);
//     ovy162_219d70c(a1 + 64, *(unsigned __int16 *)(a1 + 2));
//     sub_0219D8E8(a1 + 84, *(unsigned __int16 *)(a1 + 2));
// }