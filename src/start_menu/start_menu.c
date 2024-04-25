#include "global.h"
#include "main.h"
#include "touchscreen.h"

#define WHITE_2 1
#define BLACK_2 2

typedef struct
{
    /*0x000*/ u16 unk0;
    /*0x002*/ u16 heapId;
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
extern void sub_02044C98(int, int);
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