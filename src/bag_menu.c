#include "global.h"
#include "main.h"
#include "bag.h"

int ovy142_219c6b4(int a1, int a2, int a3, void *a4);

extern void ovy142_219eb54(BagView*);
extern void ovy142_219ebdc(BagView*);
extern void ovy142_219e5a8(BagView*);
extern void ovy142_21a014c(BagView*);
extern void sub_0203A7F4(int);

int ovy142_219c6b4(int a1, int a2, int a3, void *a4)
{
    BagView *wk = (BagView*) a4;

    FieldBagItemUse v5 = wk->unk4FC;
    if (!v5)
    {
        sub_020279B4(0, 0, 0, 0, 6, 1, wk->heapId);
        return 1;
    }
    else
    {
        wk->unk838 = wk->unk834;
        v5(wk);
        if (wk->unk892)
        {
            ovy142_219eb54(a4);
            wk->unk892 = 0;
        }
        if (wk->unk890)
        {
            ovy142_219ebdc(a4);
            wk->unk890 = 0;
        }
        ovy142_219e5a8(a4);
        ovy142_21a014c(a4);
        sub_0203A7F4(wk->unk748);
        return 0;
    }
    
}

typedef struct
{
    /*0x00*/ u8 unk0[0x38];
    /*0x38*/ int unk38;
    /*0x3C*/ int unk3C;
    /*0x40*/ int unk40;
    /*0x44*/ int unk44;
    /*0x48*/ int unk48;
    /*0x4C*/ int unk4C;
} BAG_RETURN_DATA;

int ovy142_219c740(int a1, int a2, BAG_RETURN_DATA *a3, void *a4);

extern void sub_02045264(int, int, int);
extern void sub_02022DA8(int);
extern void sub_0202E818(int);
extern void sub_02021C44(int);
extern void sub_02021A18(int);
extern void ovy142_219cc60(BagView*);
extern void sub_0219C948(BagView*);
extern void sub_020504DC(int);
extern void sub_020480A8(void);
extern void sub_02044528(void);
extern void ovy142_219d46c(void*, int, int, int);
extern void sub_0203AB10(int);
extern void sub_0203A1D0(int);

int ovy142_219c740(int a1, int a2, BAG_RETURN_DATA *a3, void *a4)
{
    BagView *wk = (BagView*) a4;

    if (sub_02027ACC() != 1)
        return 0;
    if (!sub_02021C0C(wk->unk510))
        return 0;
    sub_0203A6A8(wk->unk6A8);
    sub_021A046C(&wk->unk8C8);
    sub_020088A4(wk->unk14, wk->itemType);
    sub_02008894(
        wk->unk14,
        wk->itemType,
        wk->posNow,
        (wk->unk834 + 1));
    sub_0202E1DC(wk->unk800);
    ovy142_219e168(wk);
    ovy142_219dd14(wk);
    sub_0203A83C(wk->unk748);
    sub_020487D4(wk->unk520);
    sub_02048564(wk->unk528);
    sub_02048564(wk->unk52C);
    sub_02048564(wk->unk530);
    sub_02024274(wk->messageParam);
    ovy142_219f8c4(wk);
    if (wk->unk500)
    {
        sub_02044668(3, wk->unk88C, (u16)(wk->unk88C_1));
        sub_02048210(wk->unk500);
    }
    sub_02045264(3, 1, 0);
    sub_02022DA8(wk->unk534);
    sub_0202E818(wk->unk51C);
    sub_02021C44(wk->unk510);
    sub_02021A18(wk->unk510);
    ovy142_219cc60(wk);
    sub_0219C948(wk);
    sub_020504DC(wk->unk6A4);
    sub_020480A8();
    sub_02044528();
    a3->unk44 = wk->unk898;
    a3->unk48 = wk->selectItem;

    ovy142_219d46c(wk->unk14, a3->unk38, a3->unk44, wk->unk1F50);
    sub_0203DEB4(wk->KeyRetypeIntervalRepeated, wk->KeyRetypeIntervalFirst);
    sub_0203AB10(a1);
    sub_0203A1D0(14);
    return 1;
}

void ovy142_219c8d0(BagView *bagView);
void ovy142_219c8e8(BagView *bagView);

void ovy142_219c8d0(BagView *bagView)
{
    sub_021998C0(bagView, ovy142_219a850);
    sub_0203DEB4(3, 6);
}

void ovy142_219c8e8(BagView *bagView)
{
    sub_021998C0(bagView, ovy142_2199ecc);
    sub_0203DEB4(3, 6);
}

void ovy142_219c900(BagView *bagView);
extern int sub_02035024(int, int, int, u16);
extern void *sub_0204AA30(int, u16);
extern void sub_02035104(int, void*, int, int, int);

void ovy142_219c900(BagView *bagView)
{
    void *v2; // r4

    bagView->unk8A4 = sub_02035024(16, 16, 0xFFFE, bagView->heapId);
    v2 = sub_0204AA30(87, bagView->heapId);
    sub_02035104(bagView->unk8A4, v2, 21, 16, 32);
    sub_0204AB0C(v2);
}

extern void sub_02035178(int);

void sub_0219C948(BagView *bagView)
{
    sub_02035178(bagView->unk8A4);
}

void ovy142_219c958(BagView *bagView)
{
    switch (bagView->unk8B8)
    {
    case 0:
        sub_02006254(0x54c);
    case 3:
        ovy142_219fd4c(bagView, 0);
        bagView->unk8B8++;
        break;
    case 1:
    case 4:
    case 6:
        bagView->unk8BA++;
        if (bagView->unk8BA == 4)
        {
            bagView->unk8BA = 0;
            bagView->unk8B8++;
        }
        break;
    case 2:
    case 5:
        ovy142_219fd4c(bagView, 2);
        bagView->unk8B8++;
        break;
    case 7:
        bagView->unk8B8 = 0;
        ovy142_219fd4c(bagView, 1);
        sub_020352B0(bagView->unk8A4);
        sub_02035198(bagView->unk8A4);
        sub_021998C0(bagView, ovy142_219a724);
        break;
    default:
        break;
    }
}

extern void ovy142_219ca90(BagView*);
extern void sub_0204C4D4(int, int);

void ovy142_219c9f8(BagView *a1, int a2, FieldBagItemUse a3)
{
    int v3; // r6

    if (a2 == 4)
    {
        sub_02006254(1361);
        v3 = 9;
    }
    else if (a2 == 3)
    {
        sub_02006254(1366);
        v3 = 8;
    }
    else if (a2 == 1)
    {
        sub_02006254(2008);
        v3 = 13;
    }
    else if (a2 == 0)
    {
        sub_02006254(2008);
        v3 = 12;
    }
    a1->unk8B8 = a2;
    sub_0204C4D4(a1->unk724[a1->unk8B8], 0);
    sub_0204C488(a1->unk724[a1->unk8B8], v3);
    sub_0204C520(a1->unk724[a1->unk8B8], 1);
    a1->unk8BC = a3;
    sub_021998C0(a1, ovy142_219ca90);
}

extern int sub_0204C560(int);
void ovy142_219ca90(BagView *bagView);

void ovy142_219ca90(BagView *bagView)
{
    if (!sub_0204C560(bagView->unk724[bagView->unk8B8]))
    {
        bagView->unk8B8 = 0;
        sub_021998C0(bagView, bagView->unk8BC);
    }
}

extern void ovy142_219cb64(BagView*);

void ovy142_219cac0(BagView *bagView, int a2, int a3, FieldBagItemUse a4)
{
    int v4; // r7

    ovy142_2199a5c(bagView, a2, bagView->itemType);
    ovy142_219bd84(bagView);
    ovy142_219becc(bagView);
    bagView->unk838 = 0xFFFF;
    ovy142_21998f4(bagView);
    if (a3 == 1)
    {
        sub_02006254(2008);
        v4 = 13;
    }
    else if (!a3)
    {
        sub_02006254(2008);
        v4 = 12;
    }
    bagView->unk8B8 = a3;
    bagView->unk8BA = 6;
    sub_0204C4D4(bagView->unk724[bagView->unk8B8], 0);
    sub_0204C488(bagView->unk724[bagView->unk8B8], v4);
    sub_0204C520(bagView->unk724[bagView->unk8B8], 1);
    bagView->unk8BC = a4;
    sub_021998C0(bagView, ovy142_219cb64);
}

void ovy142_219cb64(BagView *bagView)
{
    if (!bagView->unk8BA)
    {
        bagView->unk8B8 = 0;
        sub_021998C0(bagView, bagView->unk8BC);
    }
    else
    {
        --bagView->unk8BA;
    }
}

const u8 Data_021A0904[8] = {0};
extern int sub_0203DA0C(const u8*);
int ovy142_219cb88(void);

int ovy142_219cb88(void)
{
    int v0; // r4

    v0 = sub_0203DA0C(Data_021A0904);
    if (v0 != -1)
        sub_0203D564(1);
    return v0;
}

void ovy142_219cba8(BagView *bagView);

void ovy142_219cba8(BagView *bagView)
{
    ovy142_219b46c(bagView);
    sub_0204C520(bagView->unk6B8, 1);
    ovy142_219fda8(bagView, 1);
    ovy142_219bda4(bagView, sub_0203D554() == 0);
    ovy142_219c8d0(bagView);
}
void ovy142_219cbe4(BagView *bagView);
void ovy142_219cbe4(BagView *bagView)
{
    ovy142_219b46c(bagView);
    sub_0204C520(bagView->unk6B8, 1);
    ovy142_219fda8(bagView, 1);
    ovy142_219bda4(bagView, sub_0203D554() == 0);
    sub_021998C0(bagView, ovy142_219b2f0);
}

extern int sub_02026DC0(u16);
extern void sub_02026E04(int, int, int, u16);
extern void sub_02026F7C(int, int, int, int);
void ovy142_219cc24(BagView *bagView);

void ovy142_219cc24(BagView *bagView)
{
    bagView->unk8A8 = sub_02026DC0(bagView->heapId);
    sub_02026E04(bagView->unk8A8, 2, 0x200, bagView->heapId);
    sub_02026E04(bagView->unk8A8, 0, 32, bagView->heapId);
    sub_02026F7C(bagView->unk8A8, 0, 0, 32);
}

void ovy142_219cc60(BagView *bagView);
extern void sub_02026E48(int, int);
extern void sub_02026DE8(int);

void ovy142_219cc60(BagView *bagView)
{
    sub_02026E48(bagView->unk8A8, 0);
    sub_02026E48(bagView->unk8A8, 2);
    sub_02026DE8(bagView->unk8A8);
}

void ovy142_219cc84(BagView *bagView);
extern void ovy142_219cd98(BagView*);
extern void sub_02048838(int, int, int);
extern void ovy142_219f6a4(BagView*, int);
extern void ovy142_219cce0(BagView*);

void ovy142_219cc84(BagView *bagView)
{
    if (!sub_0204C560(bagView->unk744))
    {
        sub_0204C488(bagView->unk744, 0);
        sub_0204C520(bagView->unk6B8, 0);
        sub_02048838(bagView->unk520, 151, bagView->unk52C);
        ovy142_219f6a4(bagView, 0);
        ovy142_219fda8(bagView, 0);
        ovy142_219cce0(bagView);
        sub_021998C0(bagView, ovy142_219cd98);
    }
}

const u32 data_021A0934[6] = {0};
const u8 data021A08E0[5] = {0xFF};

extern void sub_0219CD58(BagView*, u8*);
extern void ovy142_219f1a0(BagView*, u32*, int);

void ovy142_219cce0(BagView *bagView)
{
    int v2;    // r6
    int v3;    // r2
    int v4;    // r5
    int v5;    // r3
    u32 v9[6]; // [sp+1Ch] [bp-2Ch]
    u32 v8[5]; // [sp+8h] [bp-40h] BYREF
    u8 v7[5];  // [sp+0h] [bp-48h] BYREF

    v9 = data_021A0934;
    v7 = data021A08E0;

    sub_0219CD58(bagView, v7);

    for (v2 = 0, v3 = 0; v2 < 5; v2++)
    {
        v4 = v7[v2];
        if (v4 != 255)
        {
            v5 = v3;
            bagView->unk85C[v3++] = v7[v2];
            v8[v5] = v9[v7[v2]];
        }
    }
    ovy142_219f1a0(bagView, v8, v3);
}

void sub_0219CD58(BagView* bagView, u8* a2)
{
    u32 v2;     // r2
    int v4;     // r0

    v2 = bagView->itemType;
    if (!v2 || v2 == 1 || (v2 - 3) <= 1)
        a2[0] = 0;
    else
        a2[0] = 1;
    v4 = bagView->itemType;
    if (!v4 || v4 == 1 || v4 == 3)
    {
        a2[2] = 3;
        a2[3] = 4;
    }
    a2[1] = 2;
    a2[4] = 5;
}

extern void ovy142_219cea8(BagView*);

void ovy142_219cd98(BagView* bagView)
{
    int r5 = 0;
    if (ovy142_219f7a4(bagView))
    {
        if (sub_0202DBE4(bagView->unk79C))
        {
            int v1 = sub_0202DC00(bagView->unk79C);
  
            bagView->unk89C = bagView->unk85C[v1];

            switch (bagView->unk89C)
            {
            case 0:
                sub_02006254(0x663);
                ovy142_219bcd8(bagView, 0);
                sub_021998C0(bagView, ovy142_219cea8);
                r5 = 1;
                break;
            case 1:
                sub_02006254(0x663);
                r5 = 1;
                ovy142_219bcd8(bagView, 1);
                sub_021998C0(bagView, ovy142_219cea8);
                break;
            
            case 2:
                sub_02006254(0x663);
                ovy142_219bcd8(bagView, 2);
                sub_021998C0(bagView, ovy142_219cea8);
                r5 = 1;
                break;
            
            case 3:
                sub_02006254(0x663);
                ovy142_219bcd8(bagView, 3);
                sub_021998C0(bagView, ovy142_219cea8);
                r5 = 1;
                break;
            
            case 4:
                sub_02006254(0x663);
                ovy142_219bcd8(bagView, 4);
                sub_021998C0(bagView, ovy142_219cea8);
                r5 = 1;
                break;
            case 5:
                if (sub_0203D554() == 1)
                {
                    ovy142_219e120(bagView);
                }
                else
                    ovy142_219de0c(bagView);

                ovy142_219bda4(bagView, sub_0203D554() == 0);
                r5 = 1;
                ovy142_219fda8(bagView, 1);
                sub_0204C520(bagView->unk6B8, 1);
                ovy142_219c8d0(bagView);
                break;

            }
            
        }
        if (r5)
        {
            sub_0219F0AC(bagView);
            sub_0202DA54(bagView->unk79C);
            bagView->unk79C = 0;
        }
    }
}

extern void ovy142_219d3d8(BagView*);

void ovy142_219cea8(BagView* bagView)
{
    switch (bagView->unk1F4C)
    {
    case 0:
        sub_02048838(bagView->unk520, 0x8C, bagView->unk52C);
        break;

    case 1:
        sub_02048838(bagView->unk520, 0x9E, bagView->unk52C);
        break;

    case 2:
        sub_02048838(bagView->unk520, 0x8d, bagView->unk52C);
        break;

    case 3:
        sub_02048838(bagView->unk520, 0x8E, bagView->unk52C);
        break;

    case 4:
        sub_02048838(bagView->unk520, 0x8f, bagView->unk52C);
        break;
    
    default:
        sub_02048838(bagView->unk520, 0x97, bagView->unk52C);
        break;

    }
    
    ovy142_219f6a4(bagView, 0);
    sub_021998C0(bagView, ovy142_219d3d8);
}

void ovy142_219cf28(BagView* bagView);
void ovy142_219cf28(BagView* bagView)
{
    switch (bagView->unk1F50)
    {
    case 0:
        sub_02048838(bagView->unk520, 0x9D, bagView->unk528);
        sub_0202451C(bagView->messageParam, 1, ovy142_2199988(bagView), 3, 0, 1);
        sub_02024920(bagView->messageParam, bagView->unk52C, bagView->unk528);
        break;

    case 1:
        sub_02048838(bagView->unk520, 0x94, bagView->unk528);
        sub_0202451C(bagView->messageParam, 1, ovy142_2199988(bagView), 3, 0, 1);
        sub_021999C8(bagView, 0, 0);
        sub_02024920(bagView->messageParam, bagView->unk52C, bagView->unk528);
        break;

    case 2:
        sub_02048838(bagView->unk520, 0x94, bagView->unk528);
        sub_0202451C(bagView->messageParam, 1, ovy142_2199988(bagView), 3, 0, 1);
        sub_021999C8(bagView, 0, 1);
        sub_02024920(bagView->messageParam, bagView->unk52C, bagView->unk528);
        break;
    
    case 3:
        sub_02048838(bagView->unk520, 0x94, bagView->unk528);
        sub_0202451C(bagView->messageParam, 1, ovy142_2199988(bagView), 3, 0, 1);
        sub_021999C8(bagView, 0, 2);
        sub_02024920(bagView->messageParam, bagView->unk52C, bagView->unk528);
        break;

    case 4:
        sub_02048838(bagView->unk520, 0x94, bagView->unk528);
        sub_0202451C(bagView->messageParam, 1, ovy142_2199988(bagView), 3, 0, 1);
        sub_021999C8(bagView, 0, 3);
        sub_02024920(bagView->messageParam, bagView->unk52C, bagView->unk528);
        break;
    
    case 5:
        sub_02048838(bagView->unk520, 0x94, bagView->unk528);
        sub_0202451C(bagView->messageParam, 1, ovy142_2199988(bagView), 3, 0, 1);
        sub_021999C8(bagView, 0, 4);
        sub_02024920(bagView->messageParam, bagView->unk52C, bagView->unk528);
        break;
    default:
        sub_02048838(bagView->unk520, 0x97, bagView->unk52C);
        break;

    }
    ovy142_219f6a4(bagView, 0);
    sub_021998C0(bagView, ovy142_219d3d8);
}

extern void ovy142_219d2bc(BagView*);
extern void ovy142_219d120(BagView*);

void ovy142_219d0c8(BagView* bagView)
{
    if (!sub_0204C560(bagView->unk740))
    {
        sub_0204C488(bagView->unk740, 2);
        sub_0204C520(bagView->unk6B8, 0);
        sub_02048838(bagView->unk520, 147, bagView->unk52C);
        ovy142_219f6a4(bagView, 0);
        ovy142_219fda8(bagView, 0);
        ovy142_219d120(bagView);
        sub_021998C0(bagView, ovy142_219d2bc);
    }
}

const u8 data_021A08F0[7] = {0};
void ovy142_219d120(BagView* bagView);
extern void ovy142_219d188(BagView*, u8*);
extern void sub_020484B4(int);
extern int sub_020484D4(int);
extern void sub_02044F90(int);
extern void ovy142_219f284(BagView*, u8);

void ovy142_219d120(BagView* bagView)
{
    int v6;       // r1
    int v7;       // r4
    int v8;       // r0
    int v9;       // r6

    u8 v12[7]; // [sp+0h] [bp-18h] BYREF

    v12 = data_021A08F0;
    ovy142_219d188(bagView, v12);

    for (v6 = 0, v7 = 0; v6 < 7; v6++)
    {
        v8 = v12[v6];
        if (v8 != 255)
        {
            bagView->unk870[v7] = v12[v6];
            v7++;
        }
    }
    v9 = bagView->unk794;
    sub_020484B4(v9);
    sub_02044F90(sub_020484D4(v9));
    ovy142_219f284(bagView, (u8)v7);
}

extern int ovy142_21a0610(int*, int);

void ovy142_219d188(BagView *bagView, u8 *a2)
{
    if (bagView->unk1F50)
        a2[0] = 5;
    if (bagView->unk1F50 != 1 && ovy142_21a0610(&bagView->unk8C8, 0) > 0)
        a2[1] = 0;
    if (bagView->unk1F50 != 2 && ovy142_21a0610(&bagView->unk8C8, 1) > 0)
        a2[2] = 1;
    if (bagView->unk1F50 != 3 && ovy142_21a0610(&bagView->unk8C8, 2) > 0)
        a2[3] = 2;
    if (bagView->unk1F50 != 4 && ovy142_21a0610(&bagView->unk8C8, 3) > 0)
        a2[4] = 3;
    if (bagView->unk1F50 != 5 && ovy142_21a0610(&bagView->unk8C8, 4) > 0)
        a2[5] = 4;

    a2[6] = 6;
}

int ovy142_219d22c(BagView *bagView)
{
    int v2; // r4

    v2 = 1;

    if (bagView->unk1F50)
        ++v2;
    if (bagView->unk1F50 != 1 && ovy142_21a0610(&bagView->unk8C8, 0) > 0)
        ++v2;
    if (bagView->unk1F50 != 2 && ovy142_21a0610(&bagView->unk8C8, 1) > 0)
        ++v2;
    if (bagView->unk1F50 != 3 && ovy142_21a0610(&bagView->unk8C8, 2) > 0)
        ++v2;
    if (bagView->unk1F50 != 4 && ovy142_21a0610(&bagView->unk8C8, 3) > 0)
        ++v2;
    if (bagView->unk1F50 != 5 && ovy142_21a0610(&bagView->unk8C8, 4) > 0)
        ++v2;
    return v2;
}

void ovy142_219d2bc(BagView *bagView)
{
    int r5 = 0;
    if (ovy142_219f7a4(bagView))
    {
        if (sub_0202DBE4(bagView->unk79C))
        {
            int v1 = sub_0202DC00(bagView->unk79C);
            bagView->unk89C = bagView->unk870[v1];

            switch (bagView->unk89C)
            {
                case 5:
                    sub_02006254(0x663);
                    ovy142_219bd2c(bagView, 0);
                    sub_021998C0(bagView, ovy142_219cf28);
                    r5 = 1;
                    break;
                case 0:
                    sub_02006254(0x663);
                    ovy142_219bd2c(bagView, 1);
                    sub_021998C0(bagView, ovy142_219cf28);
                    r5 = 1;
                    break;
                case 1:
                    sub_02006254(0x663);
                    ovy142_219bd2c(bagView, 2);
                    sub_021998C0(bagView, ovy142_219cf28);
                    r5 = 1;
                    break;
                case 2:
                    sub_02006254(0x663);
                    ovy142_219bd2c(bagView, 3);
                    sub_021998C0(bagView, ovy142_219cf28);
                    r5 = 1;
                    break;
                case 3:
                    sub_02006254(0x663);
                    ovy142_219bd2c(bagView, 4);
                    sub_021998C0(bagView, ovy142_219cf28);
                    r5 = 1;
                    break;
                case 4:
                    sub_02006254(0x663);
                    ovy142_219bd2c(bagView, 5);
                    sub_021998C0(bagView, ovy142_219cf28);
                    r5 = 1;
                    break;
                case 6:
                    if (sub_0203D554() == 1)
                    {
                        ovy142_219e120(bagView);
                    }
                    else
                        ovy142_219de0c(bagView);

                    ovy142_219bda4(bagView, sub_0203D554() == 0);
                    r5 = 1;
                    ovy142_219fda8(bagView, 1);
                    sub_0204C520(bagView->unk6B8, 1);
                    ovy142_219c8d0(bagView);
                    break;
            }
        }
        if (r5)
        {
            sub_0219F0AC(bagView);
            sub_0202DA54(bagView->unk79C);
            bagView->unk79C = 0;
        }
    }
}

extern int sub_020175E4(void*);

void ovy142_219d3d8(BagView *bagView)
{
    int result; // r0

    if ((sub_0203DEFC() & 3) != 0)
    {
        ovy142_219bda4(bagView, 1);
    }
    else
    {
        result = sub_0203DA48();
        if (!result)
            return;
        ovy142_219bda4(bagView, 0);
    }
    
    bagView->unk838 = 0xFFFF;
    ovy142_219ed3c(bagView);
    ovy142_21998f4(bagView);
    sub_0219F0AC(bagView);
    sub_0204C520(bagView->unk6B8, 1);
    ovy142_219fda8(bagView, 1);
    ovy142_219c8d0(bagView);
}

int ovy142_219d43c(BagView *a1, u8 a2)
{
    int v3; // r1

    v3 = a1->unk10;
    if (v3 == 3 || v3 == 1)
        return 0;
    if (sub_020175E4(a1->m_GameData) == 1 && a2 == 4)
        return 0;
    return 1;
}

void ovy142_219D464(BagView* a1)
{
    ovy142_219c8d0(a1);
}

typedef struct
{
    u8 unk0[23];
}ItemTypeSomeData;

const ItemTypeSomeData data_021A0A3C[6] = {0};
extern void sub_020088EC(void*, int);

void ovy142_219d46c(void *a1, int a2, int a3, int a4)
{
    ItemTypeSomeData v12[6]; // [sp+0h] [bp-A0h] BYREF

    v12 = data_021A0A3C;

    if (v12[a2].unk0[a3])
    {
        switch (v12[a2].unk0[a3])
        {
            case 1:
            {
                sub_020088EC(a1, 0);
                break;
            }
            case 2:
            {
                sub_020088EC(a1, a4);
                break;
            }
        }
    }
}

const u32 data_21A1100[8] = {0};
const u32 data_21A10A0[8] = {0};
const u32 data_21A10C0[8] = {0};
const u32 data_21A10E0[8] = {0};
const u32 data_21A1080[8] = {0};
const u32 data_21A1040[8] = {0};
const u32 data_21A1060[8] = {0};

void ovy142_219d4c0(void);
extern void sub_0204476C(int, u32*, int);
extern void sub_02045708(int);
extern void sub_02044F90(int);
extern void sub_02044C98(int, int);
extern void sub_02045118(int, int, int, int);

void ovy142_219d4c0(void)
{
    u32 v7[8]; // [sp+C0h] [bp-28h] BYREF
    u32 v6[8];  // [sp+A0h] [bp-48h] BYREF
    u32 v5[8];  // [sp+80h] [bp-68h] BYREF
    u32 v4[8];  // [sp+60h] [bp-88h] BYREF
    u32 v3[8];  // [sp+40h] [bp-A8h] BYREF
    u32 v2[8];  // [sp+20h] [bp-C8h] BYREF
    u32 v1[8];  // [sp+0h] [bp-E8h] BYREF

    reg_GX_POWCNT = reg_GX_POWCNT & 0xffff7fff;
    v7 = data_21A1100;
    sub_0204476C(0, v7, 0);
    sub_02045708(0);
    sub_02044F90(0);
    sub_02044C98(0, 0);
    v6 = data_21A10A0;
    sub_0204476C(1, v6, 0);
    sub_02045708(1);
    sub_02044F90(1);
    sub_02044C98(1, 0);
    v5 = data_21A10C0;
    sub_0204476C(2, v5, 0);
    sub_02045708(2);
    sub_02044F90(2);
    sub_02044C98(2, 0);
    v4 = data_21A10E0;
    sub_0204476C(3, v4, 0);
    sub_02045118(3, 0, 1, 0);
    sub_02045708(3);
    sub_02044F90(3);
    sub_02044C98(3, 0);
    v3 = data_21A1080;
    sub_0204476C(4, v3, 0);
    sub_02044C98(4, 0);
    sub_02044F90(4);
    v2 = data_21A1040;
    sub_0204476C(5, v2, 0);
    sub_02044C98(5, 0);
    v1 = data_21A1060;

    sub_0204476C(6, v1, 0);
    sub_02044C98(6, 0);
    sub_02045118(6, 0, 1, 0);
    sub_02045738(6);
}