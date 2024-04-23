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
        sub_02044668(3, wk->unk88C, (wk->unk88C >> 16));
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
extern const u8 data021A08E0[5];

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

extern const u8 data_021A08F0[7];
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

extern int ovy142_21a0610(ITEM_UNKNOW_DATA*, int);

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
extern void sub_02044C98(int, u8);
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

void ovy142_219d664(void);

void ovy142_219d664(void)
{
    sub_02044C98(0, 1);
    sub_02044C98(1, 1);
    sub_02044C98(2, 1);
    sub_02044C98(3, 1);
    sub_02044C98(4, 1);
    sub_02044C98(5, 1);
    sub_02044C98(6, 1);
}

void ovy142_219d6a0(BagView *bagView, int a2);
extern int sub_02008BF0(void*);
extern int sub_0204BBB8(int, int, int, int, int, int, u16); 
void ovy142_219d7a8(BagView *a1, int a2, int a3, int a4);
extern void sub_0204B0D4(int, int, int, int, int, u16);
extern int sub_0204AE3C(int, int, int, int, int, u16);
extern void sub_0204AFB0(int, int, int, int, int, int, int, u16);

void ovy142_219d6a0(BagView *bagView, int a2)
{
    int v9; // [sp+10h] [bp-18h]
    int v6; // r0
    int v7; // r0
    int v2; // r6
    int v3; // r7

    v6 = sub_02008BF0(bagView->unk8);
    if (!v6)
    {
        v9 = 4;
        v2 = 3;
        v3 = 5;
    }
    else if (v6 == 1)
    {
        v9 = 1;
        v2 = 0;
        v3 = 2;
    }
    sub_0204B0D4(a2, v9, 0, 0, 32, bagView->heapId);
    v7 = sub_0204AE3C(a2, v2, 0, 0, 0, bagView->heapId);
    bagView->unk818 = v7;
    sub_0204AFB0(a2, v3, 0, 0, (u16)v7, 0, 0, bagView->heapId);
}

void ovy142_219d724(BagView *bagView, int a2);
extern int sub_0204B81C(int, int, int, int, u16);
extern int sub_0204BDE0(int, int, int, u16);

void ovy142_219d724(BagView *bagView, int a2)
{
    int v8;     // [sp+Ch] [bp-24h]
    int v6;     // r0
    int v9;     // [sp+10h] [bp-20h]
    int v10;    // [sp+14h] [bp-1Ch]
    int v2;     // r7
    
    v6 = sub_02008BF0(bagView->unk8);
    if (v6 == 0)
    {
        v8 = 0x10;
        v9 = 0xf;
        v10 = 0xe;
        v2 = 0xd;
    }
    else if(v6 == 1)
    {
        v8 = 0xc;
        v9 = 0xb;
        v10 = 0xa;
        v2 = 9;
    }
    bagView->unk5A0 = sub_0204BBB8(a2, v8, 0, 0xC0, 0, 5, bagView->heapId);
    bagView->unk5A4 = sub_0204B81C(a2, v9, 0, 0, bagView->heapId);
    bagView->unk5A8 = sub_0204BDE0(a2, v10, v2, bagView->heapId);
}

extern int unk_21A16A4[4] = {0};
extern int unk_21A103C[4] = {0};

extern int data_21a1018[4] = {0};
typedef struct
{
    s16 x;
    s16 y;
    u16 anim;
    u8 flag;
    u8 unk;
}OAM_TEMP;

extern int sub_02048080(u16);
extern void sub_020232D0(int);
extern void sub_020444A4(u16, int, int);
extern void sub_02046C40(int*);
extern void sub_0204B6A8(int*, int*, u16);
extern void sub_02044710(int*);
extern void sub_02046D38(int);
extern void sub_02046DC0(int);
extern void sub_020232D8(void);
extern u32 sub_02024D20(int, int, int, u16);
extern void sub_0204B124(int, int, int, int, int, int, u16);
extern void sub_0204B0B8(int, int, int, int, int, u16);
extern int sub_0204BF1C(int, int, u16);
extern void sub_02046D84(int, int);
extern void sub_02046CFC(int, int);
extern void ovy142_219ed8c(BagView*);
extern int sub_0202D7E0(void);
extern int sub_0202D7E4();
extern int sub_0202D7F8(int);
extern int sub_0202D7FC(int);
extern int sub_0202D80C(u8);
extern int sub_0202D7F4(u8);
extern int sub_0204C040(int, int, int, int, OAM_TEMP *, int, u16);
extern int sub_0202D800(u8);
extern void sub_0204C378(int, int, int);
extern void sub_0204C124(int, int);
extern void sub_0204C5C8(int, int);
extern int sub_0202D7E8(u8);
extern int sub_02022888(int, int, int);

void ovy142_219d7a8(BagView *a1, int a2, int a3, int a4)
{
    int v43[4];
    OAM_TEMP newtemp[3];
    int v28;          // r0
    int v30;          // r0
    int v31;          // r6
    int v7;           // r5
    int v8;           // r0
    int v9;           // r0
    int v11;          // r5
    int v12;          // r0
    int v14;          // r0
    int v19;          // r0
    int v20;          // r0
    int v23;

    int v33;
    *(u16*)(0x4000050) = 0;
    sub_020444A4(a1->heapId, a2, a3);
    sub_020232D0(sub_02048080(a1->heapId));
    sub_02046C40(unk_21A16A4);
    sub_0204B6A8(unk_21A103C, unk_21A16A4, a1->heapId);
    v43 = data_21a1018;
    sub_02044710(v43);
    sub_02046D38(0);
    sub_02046DC0(0);
    ovy142_219d4c0();
    sub_020232D8();
    a1->unk88C = sub_02024D20(3, 13, 0, a1->heapId);
    v7 = (int)sub_0204AA30(87, a1->heapId);
    sub_0204B0D4(v7, 8, 4, 0, 0, a1->heapId);
    if (!sub_02008BF0(a1->unk8))
        sub_0204B124(v7, 8, 4, 32, 0, 32, a1->heapId);
    v8 = sub_0204AE3C(v7, 6, 4, 0, 0, a1->heapId);
    a1->unk81C = v8;
    sub_0204AFB0(v7, 7, 4, 0, (u16)v8, 0, 0, a1->heapId);
    ovy142_219d6a0(a1, v7);
    v9 = sub_0204AE3C(v7, 17, 5, 0, 0, a1->heapId);
    a1->unk820 = v9;
    if (a1->itemType == 5)
        sub_0204AFB0(v7, 24, 5, 0, (u16)v9, 0, 0, a1->heapId);
    else
        sub_0204AFB0(v7, 23, 5, 0, (u16)v9, 0, 0, a1->heapId);
    ovy142_219d724(a1, v7);
    
    a1->unk828 = sub_0204AE3C(v7, 33, 3, 0, 0, a1->heapId);
    
    sub_0204B0D4(v7, 34, 0, 96, 32, a1->heapId);
    sub_0204AB0C((void*)v7);
    sub_0204B0B8(23, 5, 0, 384, 32, a1->heapId);
    a1->unk6AC = sub_0204BF1C(54, 0, a1->heapId);
    sub_02046D84(16, 1);
    sub_02046CFC(16, 1);
    v11 = (int)sub_0204AA30(82, a1->heapId);
    sub_0204B0D4(v11, 27, 0, 256, 32, a1->heapId);
    v12 = sub_0204AE3C(v11, 28, 1, 0, 0, a1->heapId);
    a1->unk824 = v12;
    sub_0204AFB0(v11, 29, 1, 0, ((u16)v12 + (1 << 15)), 0, 0, a1->heapId);
    sub_02044F90(1);
    a1->unk564 = sub_0204BBB8(v11, 19, 0, 352, 0, 3, a1->heapId);
    a1->unk56C = sub_0204B81C(v11, 20, 0, 0, a1->heapId);
    a1->unk57C = sub_0204BDE0(v11, 23, 26, a1->heapId);
    a1->unk570 = sub_0204B81C(v11, 175, 0, 0, a1->heapId);
    a1->unk580 = sub_0204BDE0(v11, 174, 173, a1->heapId);
    sub_0204AB0C((void*)v11);
    ovy142_219ed8c(a1);
    v14 = sub_0202D7E0();
    v33 = (int)sub_0204AA30(v14, a1->heapId);
    
    a1->unk5F0 = sub_0204BBB8(v33, sub_0202D7E4(), 1, 128, 0, 3, a1->heapId);
    a1->unk5F4 = sub_0204BDE0(v33, sub_0202D7F8(2), sub_0202D7FC(2), a1->heapId);
    for (u32 i = 0; i < 3; i++)
    {
        v19 = sub_0202D80C((u8)i);
        v20 = sub_0204B81C(v33, v19, 0, 1, a1->heapId);
        a1->unk5F8[i] = v20; 
    }

    for (u32 i = 0; i < 0x11; i++)
    {
        
        v23 = sub_0202D7F4((u8)i);
        a1->unk5AC[i] = sub_0204B81C(v33, v23, 0, 1, a1->heapId);
    }
    sub_0204AB0C((void*)v33);
    
    newtemp[2].x = 80;
    newtemp[2].y = 0xb8;
    newtemp[2].flag = 1;
    newtemp[2].unk = 1;
    newtemp[2].anim = 0;
    for (u32 i = 0; i < 3; i++)
    {
        a1->unk6D4[i] = sub_0204C040(
            a1->unk6AC,
            a1->unk5F8[i],
            a1->unk5F0,
            a1->unk5F4,
            &newtemp[2],
            1,
            a1->heapId);
        v28 = sub_0202D800((u8)i);
        sub_0204C378(a1->unk6D4[i], v28, 1);
        sub_0204C124(a1->unk6D4[i], 0);
        sub_0204C5C8(a1->unk6D4[i], 0);
    }
    newtemp[1].x = 0x52;
    newtemp[1].y = 0xa5;
    newtemp[1].flag = 1;
    newtemp[1].unk = 1;
    newtemp[1].anim = 0;
    for (u32 i = 0; i < 0x11; i++)
    {
        a1->unk6E0[i] = sub_0204C040(
            a1->unk6AC,
            a1->unk5AC[i],
            a1->unk5F0,
            a1->unk5F4,
            &newtemp[1],
            1,
            a1->heapId);
        v30 = sub_0202D7E8((u8)i);
        sub_0204C378(a1->unk6E0[i], v30, 1);
        sub_0204C124(a1->unk6E0[i], 0);
        sub_0204C5C8(a1->unk6E0[i], 0);
    }
    v31 = (int)sub_0204AA30(87, a1->heapId);
    a1->unk590 = sub_0204BBB8(v31, 39, 0, 128, 0, 2, a1->heapId);
    a1->unk594 = sub_0204B81C(v31, 38, 0, 0, a1->heapId);
    a1->unk59C = sub_0204BDE0(v31, 37, 36, a1->heapId);
    sub_0204AB0C((void*)v31);
    
    newtemp[0].flag = 10;
    newtemp[0].unk = 1;
    newtemp[0].x = 146;
    newtemp[0].y = 176;
    newtemp[0].anim = 0;
    a1->unk744 = sub_0204C040(
        a1->unk6AC,
        a1->unk594,
        a1->unk590,
        a1->unk59C,
        &newtemp[0],
        0,
        a1->heapId);
    sub_0204C520(a1->unk744, 1);
    sub_0204C124(a1->unk744, 1);
    sub_0204C5C8(a1->unk744, 0);
    ovy142_219ff60(a1);
}

void ovy142_219dd14(BagView *a1)
{
    sub_02044668(4, a1->unk81C, (a1->unk81C >> 16));
    sub_02044668(5, a1->unk820, a1->unk820 >> 16);
    sub_02044668(3, a1->unk828, a1->unk828 >> 16);
    sub_02044668(0, a1->unk818, a1->unk818 >> 16);
    sub_02044668(1, a1->unk824, a1->unk824 >> 16);
}

void ovy142_219dd84(BagView *a1, int a2)
{
    sub_02044C98(5, a2);
    sub_02044C98(6, a2);
}

void ovy142_219dda0(BagView *a1, int a2)
{

    int v5;               // r0
    int v6;               // r0
    ItemTable *v7; // r0
    u16 result;           // r0

    int v10;              // r0
    int v11;              // r0

    if (a2 == 1)
        a1->unk894 = 1;
    else
        a1->unk894 = 2;

    v5 = a1->unk6B0;
    if (v5)
        sub_0204C124(v5, a2);
    v6 = sub_02199978(a1);
    v7 = ovy142_2199928(a1, v6);
    result = sub_02026AE4(v7->itemid);
    if (result)
    {
        v10 = sub_02021740(result);
        sub_0204C124(a1->unk6D4[v10], a2);
        v11 = sub_02021720(result);
        sub_0204C124(a1->unk6E0[v11], a2);
    }
}

void ovy142_219de0c(BagView *a1)
{
    int v10;              // r0
    int v11;              // r0
    int v12;              // r6
    int v13;              // r2
    int v15;              // [sp+8h] [bp-20h]
    int v16;              // [sp+Ch] [bp-1Ch]
    u32 v14;              // r0
    ItemTable *v5; // r0
    ItemTable *v6; // r4
    int v4;               // r0
    int v8;               // r0
    int v9;               // r0

    for (u32 i = 0; i < 3; i++)
        sub_0204C124(a1->unk6D4[i], 0);

    for (u32 i = 0; i < 0x11; i++)
        sub_0204C124(a1->unk6E0[i], 0);

    v4 = sub_02199978(a1);
    v5 = ovy142_2199928(a1, v4);
    v6 = v5;
    if (v5 == 0 || v5->itemid == 0)
    {
        ovy142_219dda0(a1, 0);
        return;
    }
    ovy142_219dda0(a1, 1);
    v8 = sub_020484F4(a1->unk76C);
    sub_0204713C(v8, 0);
    v9 = sub_020484F4(a1->unk754);
    sub_0204713C(v9, 0);
    v10 = sub_020484F4(a1->unk75C);
    sub_0204713C(v10, 0);
    v11 = sub_020484F4(a1->unk764);
    sub_0204713C(v11, 0);
    v16 = sub_02026AE4(v6->itemid);
    v15 = sub_020083C8(a1->bagSave, v6->itemid);
    if (!v16)
    {
        sub_02048838(a1->unk520, 134, a1->unk528);
        sub_021999B8(a1, 0, v6->itemid);
        sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
        ovy142_21a00f0(a1, &a1->unk754, a1->unk52C, 0, 4, 15808);
        if (ovy142_21a03ac((u8)v15))
        {
            sub_02048838(a1->unk520, 131, a1->unk528);
            sub_0202451C(a1->messageParam, 0, v6->num, 3, 0, 1);
            sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
            ovy142_21a00f0(a1, &a1->unk75C, a1->unk52C, 0, 4, 15808);
        }
        else
        {
            sub_02048244(a1->unk75C);
        }
        sub_020484B4(a1->unk74C);
    }
    else
    {
        v12 = sub_02026B84(v6->itemid);
        if (v12 == 255)
        {
            sub_02048838(a1->unk520, 69, a1->unk528);
            v13 = sub_02026B40(v6->itemid);
            sub_0202451C(a1->messageParam, 0, v13 + 1, 2, 2, 1);
        }
        else
        {
            sub_02048838(a1->unk520, 71, a1->unk528);
            sub_0202451C(a1->messageParam, 0, v12 + 1, 2, 2, 1);
        }
        sub_020244A4(a1->messageParam, 1, v16);
        sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
        ovy142_21a00f0(a1, &a1->unk754, a1->unk52C, 0, 4, 15808);
        ovy142_219f4b0(a1, v16);
        sub_02048244(a1->unk75C);
    }
    
    if (a1->itemType == 5)
    {
        sub_021999C8(a1, 0, v15);
        sub_02048838(a1->unk520, 139, a1->unk528);
        sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
        v14 = 0x60 - sub_02022888(a1->unk52C, a1->unk534, 0);
        u16 width = v14 / 2; 
        ovy142_21a00f0(a1, &a1->unk76C, a1->unk52C, width, 0, 15808);
    }
    else
    {
        sub_020484B4(a1->unk76C);
        sub_02048244(a1->unk76C);
    }
    sub_020267C0(a1->unk528, v6->itemid, a1->heapId);
    ovy142_21a00f0(a1, &a1->unk764, a1->unk528, 0, 4, 15808);
    ovy142_21a0134(&a1->unk76C);
    ovy142_21a0134(&a1->unk754);
    ovy142_21a0134(&a1->unk75C);
    ovy142_21a0134(&a1->unk764);
    ovy142_219e4dc(a1, v6->itemid);
}

void ovy142_219e120(BagView *a1)
{
    ovy142_219dda0(a1, 0);
    sub_020484B4(a1->unk74C);
    for (u32 i = 0; i < 3; i++)
        sub_0204C124(a1->unk6D4[i], 0);

    for (u32 i = 0; i < 0x11; i++)
        sub_0204C124(a1->unk6E0[i], 0);
    
}

extern void sub_0204C108(int);
extern void sub_0204B98C(int);
extern void sub_0204BCD0(int);
extern void sub_02046EDC(int);
extern int sub_0204BF98(int);
extern int sub_0204B758(int);
extern void sub_0204BE64(int);

void ovy142_219e168(BagView *a1)
{
    int i;  // r4
    int v3; // r0

    sub_02048210(a1->unk76C);
    sub_02048210(a1->unk754);
    sub_02048210(a1->unk764);
    sub_02048210(a1->unk75C);
    sub_02048210(a1->unk74C);
    sub_02048210(a1->unk774);
    sub_02048210(a1->unk78C);
    sub_02048210(a1->unk794);
    sub_0204C108(a1->unk6B8);
    if (a1->unk6B0)
    {
        sub_0204C108(a1->unk6B0);
        sub_0204B98C(a1->unk554);
        sub_0204BCD0(a1->unk550);
    }
    sub_0204BE64(a1->unk558);
    for (i = 0; i < 8; ++i)
        sub_02046EDC(a1->unk624[i]);
    v3 = sub_0204BF98(a1->unk6AC);
    sub_0204B758(v3);
}

void ovy142_219e21c(BagView *a1)
{
    int v2; // r0

    v2 = sub_020484F4(a1->unk794);
    sub_0204713C(v2, 0);
    if (ovy142_219d22c(a1) > 2 && a1->itemType == 5)
    {
        sub_02048838(a1->unk520, 159, a1->unk528);
    }
    else
    {
        sub_02048838(a1->unk520, 135, a1->unk528);
    }
    
    ovy142_21a00f0(a1, &(a1->unk794), a1->unk528, 0, 4, 0x3DC0);
}
void ovy142_219e284(BagView *a1);
extern int sub_020480C0(int, int, int, int, int, int, int);
extern void sub_0204826C(int);

void ovy142_219e284(BagView *a1)
{
    void *v2;     // r7

    int result; // r0

    a1->unk794 = sub_020480C0(3, 18, 9, 12, 3, 3, 1);
    ovy142_219e21c(a1);
    sub_020484B4(a1->unk794);
    a1->unk774 = sub_020480C0(3, 17, 13, 11, 2, 3, 1);
    a1->unk78C = sub_020480C0(3, 17, 15, 11, 2, 3, 1);
    a1->unk74C = sub_020480C0(6, 0, 19, 32, 5, 0, 1);
    a1->unk754 = sub_020480C0(6, 7, 5, 18, 3, 0, 1);
    a1->unk75C = sub_020480C0(6, 20, 8, 6, 3, 0, 1);
    a1->unk764 = sub_020480C0(6, 2, 12, 29, 7, 0, 1);
    a1->unk76C = sub_020480C0(6, 10, 1, 12, 2, 0, 1);
    sub_0204826C(a1->unk76C);
    sub_0204826C(a1->unk754);
    sub_0204826C(a1->unk75C);
    sub_0204826C(a1->unk764);
    sub_0204826C(a1->unk74C);
    v2 = sub_0204AA30(25, a1->heapId);
    a1->unk558 = sub_0204BDE0((int)v2, 1, 0, a1->heapId);
    sub_0204AB0C(v2);
    sub_02048838(a1->unk520, 102, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk74C, a1->unk528, 8, 4, 0x3DC0u);
    sub_02048838(a1->unk520, 93, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk74C, a1->unk528, 8, 24, 0x3DC0u);
    sub_02048838(a1->unk520, 91, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk74C, a1->unk528, 112, 4, 0x3DC0u);
    sub_02048838(a1->unk520, 92, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk74C, a1->unk528, 112, 24, 0x3DC0u);
    sub_02048838(a1->unk520, 90, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk74C, a1->unk528, 208, 4, 0x3DC0u);
    result = sub_0203D554();
    if (!result)
        ovy142_219de0c(a1);

}
void ovy142_219e4b0(BagView *a1);

void ovy142_219e4b0(BagView *a1)
{
    if (a1->unk6B0)
    {
        sub_0204C108(a1->unk6B0);
        sub_0204B98C(a1->unk554);
        sub_0204BCD0(a1->unk550);
        a1->unk6B0 = 0;
    }
}

extern int sub_02026670(u16, int);

void ovy142_219e4dc(BagView *a1, int a2)
{
    void *v4;      // r7
    int v5;      // r0
    int v6;      // r0
    OAM_TEMP v8; // [sp+Ch] [bp-1Ch] BYREF


    if (a1->unk6B0)
        ovy142_219e4b0(a1);
    v4 = sub_0204AA30(25, a1->heapId);
    v5 = sub_02026670(a2, 2);
    a1->unk550 = sub_0204BBB8((int)v4, v5, 1, 0, 0, 1, a1->heapId);
    v6 = sub_02026670(a2, 1);
    a1->unk554 = sub_0204B81C((int)v4, v6, 0, 1, a1->heapId);
    sub_0204AB0C(v4);
    v8.x = 132;
    v8.y = 80;
    v8.anim = 0;
    v8.flag = 0;
    v8.unk = 0;

    a1->unk6B0 = sub_0204C040(
        a1->unk6AC,
        a1->unk554,
        a1->unk550,
        a1->unk558,
        &v8,
        1,
        a1->heapId);
    sub_0204C520(a1->unk6B0, 1);
    sub_0204C124(a1->unk6B0, 1);
    sub_0204C5C8(a1->unk6B0, 0);
}

extern void sub_0204B794(void);
extern void sub_0202DB70(void);

void ovy142_219e5a8(BagView *a1)
{
    int result; // r0

    sub_0204B794();
    result = a1->unk79C;
    if (result)
        sub_0202DB70();
}

void ovy142_219e5c4(BagView *a1);
extern int sub_02046E28(int, int, int, u16);

void ovy142_219e5c4(BagView *a1)
{
    int v3; // r4

    v3 = (int)sub_0204AA30(87, a1->heapId);
    a1->unk584 = sub_0204BBB8(v3, 32, 0, 448, 0, 1, a1->heapId);
    a1->unk588 = sub_0204B81C(v3, 31, 0, 0, a1->heapId);
    a1->unk58C = sub_0204BDE0(v3, 30, 29, a1->heapId);
    a1->unk55C = sub_0204BBB8(v3, 28, 0, 96, 0, 1, a1->heapId);
    a1->unk568 = sub_0204B81C(v3, 27, 0, 0, a1->heapId);
    a1->unk574 = sub_0204BDE0(v3, 26, 25, a1->heapId);
    for (int i = 0; i < 8; i++)
    {
        a1->unk624[i] = sub_02046E28(12, 2, 32, a1->heapId);
        a1->unk604[i] = sub_0204B81C(v3, 20, 0, 0, a1->heapId);
    }
    sub_02008BF0(a1->unk8);
    a1->unk598 = sub_0204BBB8(v3, 21, 0, 0, 0, 3, a1->heapId);
    a1->unk578 = sub_0204BDE0(v3, 19, 18, a1->heapId);
    sub_0204AB0C((void*)v3);
}

void ovy142_219e6f8(BagView *a1);
void ovy142_219e6f8(BagView *a1)
{
    OAM_TEMP temp[3];

    temp[2].x = 248;
    temp[2].y = 26;
    temp[2].flag = 1;
    temp[2].unk = 2;
    temp[2].anim = 0;
    
    a1->unk6B8 = sub_0204C040(
        a1->unk6AC,
        a1->unk568,
        a1->unk55C,
        a1->unk574,
        &temp[2],
        0,
        a1->heapId);
    sub_0204C124(a1->unk6B8, 1);
    sub_0204C520(a1->unk6B8, 1);
    sub_0204C5C8(a1->unk6B8, 0);
    ovy142_219ed3c(a1);
    temp[1].x = 140;
    temp[1].y = 48;
    
    temp[1].flag = 1;
    temp[1].unk = 2;
    temp[1].anim = 1;
    
    a1->unk6B4 = sub_0204C040(
        a1->unk6AC,
        a1->unk568,
        a1->unk55C,
        a1->unk574,
        &temp[1],
        0,
        a1->heapId);
    sub_0204C5C8(a1->unk6B4, 0);
    sub_0204C124(a1->unk6B4, 1);
    sub_0204C520(a1->unk6B4, 1);
    for (int i = 0; i < 8; i++)
    {
        temp[0].x = 140;
        temp[0].y = 24 * i;
        temp[0].flag = 10;
        temp[0].unk = 3; 
        temp[0].anim = 0;
        a1->unk644[i] = sub_0204C040(
            a1->unk6AC,
            a1->unk604[i],
            a1->unk598,
            a1->unk578,
            &temp[0],
            0,
            a1->heapId);
        temp[0].x -= 24;
        temp[0].anim = 1;
        a1->unk684[i] = sub_0204C040(
            a1->unk6AC,
            a1->unk588,
            a1->unk584,
            a1->unk58C,
            &temp[0],
            0,
            a1->heapId);
        sub_0204C124(a1->unk644[i], 0);
        sub_0204C124(a1->unk684[i], 0);
        sub_0204C5C8(a1->unk644[i], 0);
        sub_0204C5C8(a1->unk684[i], 0);
    }
}

#define MOVE_CUT        (15)
#define MOVE_FLY        (19)
#define MOVE_SURF       (57)
#define MOVE_STRENGTH   (70)
#define MOVE_WATERFALL  (127)
#define MOVE_DIVE       (291)

extern int sub_02026A94(u16);
int ovy142_219e8dc(u16 a1);

int ovy142_219e8dc(u16 a1)
{
    int v2; // r0

    if (sub_02026A94(a1) == 1)
    {
        v2 = sub_02026AE4(a1);
        
        switch (v2)
        {
            case MOVE_CUT:
            case MOVE_FLY:
            case MOVE_SURF:
            case MOVE_STRENGTH:
            case MOVE_WATERFALL:
            case MOVE_DIVE:
                return 1;
        }
    }
    return 0;
}

const u8 data_021A0FE6[8] = {0};


asm void ovy142_219e924(BagView* a1)
{
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	bl ovy142_2199988
	cmp r0, #0
	bne _0219E948
	add r0, r5, #0
	bl ovy142_219e21c
	ldr r4, =0x00000794
	ldr r0, [r5, r4]
	bl sub_020484B4
	add r0, r5, r4
	bl ovy142_21a0134
	b _0219E95C
_0219E948:
	ldr r0, =0x00000794
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
_0219E95C:
	ldr r4, =0x00000838
	sub r0, r4, #4
	ldr r1, [r5, r4]
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _0219E96A
	b _0219EB30
_0219E96A:
	ldr r0, =0x0000054C
	ldrh r0, [r5, r0]
	bl sub_02026720
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x1c]
	sub r0, #0xb
	str r0, [sp, #0x1c]
	ldr r0, =0x0000054C
	ldr r7, =0x00000664
	str r0, [sp, #0x2c]
	add r0, #0xd8
	str r0, [sp, #0x2c]
	ldr r0, =0x0000054C
	str r0, [sp, #0x28]
	sub r0, #0x2c
	str r0, [sp, #0x28]
	ldr r0, =0x0000054C
	str r0, [sp, #0x24]
	sub r0, #0x24
	str r0, [sp, #0x24]
	ldr r0, =0x0000054C
	str r0, [sp, #0x30]
	sub r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, =0x0000054C
	str r0, [sp, #0x4c]
	sub r0, #0x28
	str r0, [sp, #0x4c]
	ldr r0, =0x0000054C
	str r0, [sp, #0x48]
	sub r0, #0x20
	str r0, [sp, #0x48]
	ldr r0, =0x0000054C
	str r0, [sp, #0x44]
	sub r0, #0x24
	str r0, [sp, #0x44]
	ldr r0, =0x0000054C
	str r0, [sp, #0x40]
	sub r0, #0x18
	str r0, [sp, #0x40]
	ldr r0, =0x0000054C
	str r0, [sp, #0x3c]
	add r0, #0xd8
	str r0, [sp, #0x3c]
	ldr r0, =0x0000054C
	str r0, [sp, #0x38]
	sub r0, #0x20
	str r0, [sp, #0x38]
	add r0, r4, #0
	str r0, [sp, #0x34]
	sub r0, #0xc
	str r0, [sp, #0x34]
	sub r0, r4, #4
	str r0, [sp, #0x20]
_0219E9DE:
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	add r4, r5, r0
	mov r0, #9
	str r0, [r4, r7]
	ldr r0, [sp, #0x20]
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r1, r1, r0
	bmi _0219EA02
	add r0, r5, #0
	bl ovy142_2199928
	add r6, r0, #0
	beq _0219EA02
	ldrh r1, [r6]
	cmp r1, #0
	bne _0219EA04
_0219EA02:
	b _0219EB16
_0219EA04:
	ldr r2, =0x0000054C
	ldr r0, [sp, #0x14]
	ldrh r2, [r5, r2]
	bl sub_0202672C
	mov r1, #0xf
	str r0, [sp, #0x10]
	bl sub_02026820
	str r0, [sp, #0xc]
	ldr r1, =0x021A0FE6
	ldr r0, [sp, #0x18]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrh r0, [r6]
	bne _0219EA34
	bl ovy142_219e8dc
	cmp r0, #1
	bne _0219EA30
	ldr r0, =0x000018AD
	b _0219EA42
_0219EA30:
	ldr r0, [sp, #0x1c]
	b _0219EA42
_0219EA34:
	bl ovy142_219e8dc
	cmp r0, #1
	bne _0219EA40
	ldr r0, =0x000020ED
	b _0219EA42
_0219EA40:
	ldr r0, =0x0000106D
_0219EA42:
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	mov r1, #0xd
	ldr r0, [r4, r0]
	bl sub_0204713C
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x82
	bl sub_02048838
	ldrh r0, [r6]
	bl sub_02026AE4
	add r2, r0, #0
	bne _0219EA72
	ldrh r2, [r6]
	add r0, r5, #0
	mov r1, #0
	bl sub_021999B8
	b _0219EA7C
_0219EA72:
	ldr r0, [sp, #0x30]
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020244A4
_0219EA7C:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x44]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [r5, r3]
	ldr r0, [r4, r0]
	bl sub_02021D28
	ldr r0, [sp, #0x34]
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219EAB0
	b _0219EB0C
_0219EAB0:
	cmp r0, #3
	bne _0219EAB6
	b _0219EB0C
_0219EAB6:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne _0219EAC0
	mov r0, #3
_0219EABE:
	b _0219EB0E
_0219EAC0:
	cmp r0, #5
	bne _0219EAC8
	mov r0, #4
	b _0219EABE
_0219EAC8:
	cmp r0, #1
	bne _0219EAD0
	mov r0, #5
	b _0219EABE
_0219EAD0:
	ldrh r0, [r6]
	bl sub_02026B84
	cmp r0, #0xff
	beq _0219EADE
	mov r0, #7
	b _0219EABE
_0219EADE:
	ldrh r0, [r6]
	bl sub_02026B40
	cmp r0, #0xff
	beq _0219EAEC
	mov r0, #6
	b _0219EABE
_0219EAEC:
	ldr r0, [sp, #0x10]
	mov r1, #4
	bl sub_02026820
	cmp r0, #0
	beq _0219EB0C
	ldrh r1, [r6]
	add r0, r5, #0
	bl ovy142_219c0e8
	cmp r0, #1
	bne _0219EB08
	mov r0, #0
	b _0219EABE
_0219EB08:
	mov r0, #1
	b _0219EABE
_0219EB0C:
	mov r0, #8
_0219EB0E:
	str r0, [r4, r7]
	ldr r0, [sp, #0x10]
	bl sub_0203A24C
_0219EB16:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #8
	bge _0219EB22
	b _0219E9DE
_0219EB22:
	ldr r0, [sp, #0x14]
	bl sub_0204AB0C
	mov r0, #0x89
	mov r1, #1
	lsl r0, r0, #4
	strh r1, [r5, r0]
_0219EB30:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
}

extern void sub_0204C178(int, u16*, int);
extern int sub_0204C140(int, u16*, int);
extern void sub_0204C504(int, int);

void ovy142_219eb54(BagView *a1)
{
    int v5;       // r0
    int v6;      // r1
    u16 v8[2]; // [sp+0h] [bp-18h] BYREF

    ovy142_219fd4c(a1, 0);
    sub_0204C178(a1->unk6B4, v8, 0xFFFF);
    v8[1] = 24 * (a1->posNow + 1);
    v5 = sub_0204C140(a1->unk6B4, v8, 0xFFFF);
    if (!sub_0203D554())
        ovy142_219fd4c(a1, 1);
    sub_020352B0(a1->unk8A4);
    v6 = ovy142_2199988(a1) >= 7;
    sub_0204C124(a1->unk6B8, v6);
    sub_0204C504(a1->unk6B4, 0);
    sub_0204C504(a1->unk6B8, 0);
}

extern int sub_0204BB80(int, int);
extern int sub_02046EF4(int);
extern int sub_02046F00(int);

void ovy142_219ebdc(BagView *a1)
{
    int i;      // r7
    int v3;     // r6
    int v4;     // r4
    int v5;     // r0
    int v9;     // r1

    for (i = 0; i < 8; ++i)
    {
        v3 = sub_0204BB80(a1->unk604[i], 0);
        v4 = sub_02046EF4(a1->unk624[i]);
        v5 = sub_02046F00(a1->unk624[i]);
        DC_FlushRange((void*)v4, v5);
        GX_LoadOBJ((void*)(v4 + 256), v3 + 128, 128);
        GX_LoadOBJ((void*)(v4 + 640), v3 + 256, 128);
        GX_LoadOBJ((void*)v4, v3 + 768, 256);
        GX_LoadOBJ((void*)(v4 + 384), v3 + 1024, 256);
        {

            v9 = a1->unk664[i];
            if (v9 != 9)
            {
                if (v9 != 8)
                {
                    sub_0204C488(a1->unk684[i], (u16)a1->unk664[i]);
                    sub_0204C124(a1->unk684[i], 1);
                }
                else
                {
                    sub_0204C124(a1->unk684[i], 0);
                    
                }
                sub_0204C124(a1->unk644[i], 1);
            }
            else
            {
                sub_0204C124(a1->unk684[i], 0);
                sub_0204C124(a1->unk644[i], 0);
            }
            
        }
    }
}

void ovy142_219ecec(BagView *a1)
{
    u32 v6; // [sp+4h] [bp-1Ch] BYREF
    u32 v7;         // [sp+8h] [bp-18h] BYREF
    u16 v4[2];      // [sp+0h] [bp-20h] BYREF


    if (sub_0203DA84(&v6, &v7) == 1)
    {
        if (v7 < 0x1A)
        {
            v7 = 0x1a;
        }
        else if (v7 > 0x8E)
        {
            v7 = 0x8e;
        }

        sub_0204C178(a1->unk6B8, v4, 0xFFFF);
        v4[1] = v7;
        sub_0204C140(a1->unk6B8, v4, 0xFFFF);
    }
}

extern u16 sub_020355E0(int, int, int, int, int);

void ovy142_219ed3c(BagView *a1)
{
    int result;
    u16 v7[2];

    result = ovy142_2199988(a1);
    if (result >= 7)
    {
        sub_0204C178(a1->unk6B8, v7, 0xFFFF);
        v7[1] = sub_020355E0(result - 6, a1->unk834 + 1, 26, 142, 0);
        sub_0204C140(a1->unk6B8, v7, 0xFFFF);
    }
}

extern u8 data_21A0FD8[5];
extern u8 data_21a0fc8[2];
extern u8 data_21a0fcc[2];
extern u8 data_21A0FD0[5];

void ovy142_219ed8c(BagView *a1)
{
    OAM_TEMP temp;

    u8 v11[2];
    u8 v10[2];
    u8 data1[5];
    u8 data2[5];

    temp.flag = 10;
    temp.unk = 1;
    data1 = data_21A0FD0;
    data2 = data_21A0FD8;
    
    
    for (u8 i = 0; i < 5; i++)
    {
        temp.x = data2[i];
        temp.y = 168;
        temp.anim = data1[i];
        if (i == 2)
            temp.y += 4;
        a1->unk724[i] = sub_0204C040(
            a1->unk6AC,
            a1->unk56C,
            a1->unk564,
            a1->unk57C,
            &temp,
            0,
            a1->heapId);
        
        sub_0204C124(a1->unk724[i], 1);
        sub_0204C5C8(a1->unk724[i], 0);
    }
    
    temp.x = 146;
    temp.y = 168;
    temp.anim = 0;

    a1->unk740 = sub_0204C040(
        a1->unk6AC,
        a1->unk570,
        a1->unk564,
        a1->unk580,
        &temp,
        0,
        a1->heapId);
    sub_0204C124(a1->unk740, 0);
    sub_0204C520(a1->unk740, 1);
    sub_0204C5C8(a1->unk740, 0);
    if (!sub_0219BE00(a1))
        sub_0204C124(a1->unk724[2], 0);
    if (a1->unk10 == 2)
        sub_0204C124(a1->unk724[3], 0);

    v11 = data_21a0fcc;
    v10 = data_21a0fc8;

    for (u8 i = 0; i < 2; i++)
    {
        temp.x = 232;
        temp.y = v10[i];
        temp.anim = v11[i];
        temp.unk = 0;
        u8 newnum = i + 5;

        a1->unk724[newnum] = sub_0204C040(
            a1->unk6AC,
            a1->unk56C,
            a1->unk564,
            a1->unk57C,
            &temp,
            0,
            a1->heapId);
        sub_0204C520(a1->unk724[newnum], 1);
        sub_0204C124(a1->unk724[newnum], 0);
        sub_0204C5C8(a1->unk724[newnum], 0);

    }
}

extern s16 word_21A168C[][2];
extern u8 byte_21A1020[];
extern u8 data_021a0fee[][2];
void ovy142_219efc0(BagView *a1);

void ovy142_219efc0(BagView *a1)
{
    u32 i;      // r4
    OAM_TEMP v8;       // [sp+20h] [bp+0h] BYREF
    for (i = 0; i < 6; ++i)
    {
        v8.flag = byte_21A1020[i];
        v8.unk = 1;
        v8.x = word_21A168C[i][0] - 16;
        v8.y = word_21A168C[i][1];
        v8.anim = data_021a0fee[i][1];
        a1->unk6BC[i] = sub_0204C040(
            a1->unk6AC,
            a1->unk5A4,
            a1->unk5A0,
            a1->unk5A8,
            &v8,
            0,
            a1->heapId);
        sub_0204C520(a1->unk6BC[i], 1);
    }

}
extern u8 data_021A0FEE[][2];

void ovy142_219f06c(BagView *a1, u32 a2)
{
    u32 i; // r4
    for (i = 0; i < 6; ++i)
    {
        if (i == a2)
            sub_0204C488(a1->unk6BC[i], data_021A0FEE[i][0]);
        else
            sub_0204C488(a1->unk6BC[i], data_021A0FEE[i][1]);
    }

}

extern void sub_02024EEC(int, int);

void sub_0219F0AC(BagView *bagView)
{
    sub_02024EEC(bagView->unk500, 1);
}

typedef struct
{
    int heapId;
    u8 unk4;
    ITEM_TASK *unk8;
    int unkC;
    u8 unk10;
    u8 unk14;
    u8 unk18;
    u8 unk1C;
}TaskMenu;

extern int sub_02048530(int, u16);
extern int sub_0202D974(TaskMenu*, int);

void ovy142_219f0bc(BagView *a1, u32 *a2, int a3)
{
    int v9;                // r4
    TaskMenu task;
    int i =0;

    task.heapId = a1->heapId;
    task.unk4 = a3;
    task.unk8 = a1->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 24;
    task.unk18 = 14;

    task.unk1C = 3;
    
    for (i = 0 ; i < a3; i++)
    {
        a1->unk7A0[i].unk0 = sub_02048530(100, a1->heapId);
        sub_02048838(a1->unk520, a2[i], a1->unk7A0[i].unk0);
        a1->unk7A0[i].unk4 = 0x39E0;
        a1->unk7A0[i].unk8 = 0;
    }

    a1->unk7A0[i - 1].unk8  = 1;
    a1->unk79C = sub_0202D974(&task, a1->unk800);
    for (v9 = 0; v9 < a3; ++v9)
        sub_02048564(a1->unk7A0[v9].unk0);
    ovy142_219fda8(a1, 0);
}

void ovy142_219f1a0(BagView *a1, u32 *a2, int a3)
{
    int v9;                // r4
    TaskMenu task;
    int i = 0;

    task.heapId = a1->heapId;
    task.unk4 = a3;
    task.unk8 = a1->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 24;
    task.unk18 = 14;

    task.unk1C = 3;
    
    for (i = 0 ; i < a3; i++)
    {
        a1->unk7A0[i].unk0 = sub_02048530(100, a1->heapId);
        sub_02048838(a1->unk520, a2[i], a1->unk7A0[i].unk0);
        a1->unk7A0[i].unk4 = 0x39E0;
        a1->unk7A0[i].unk8 = 0;
    }

    a1->unk7A0[i - 1].unk8  = 1;
    a1->unk79C = sub_0202D974(&task, a1->unk800);
    for (v9 = 0; v9 < a3; ++v9)
        sub_02048564(a1->unk7A0[v9].unk0);
    ovy142_219fda8(a1, 0);
}

void ovy142_219f284(BagView *a1, u8 a2)
{
    TaskMenu task;
    int i = 0;
    int v4;

    task.heapId = a1->heapId;
    task.unk4 = a2;
    task.unk8 = a1->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 24;
    task.unk18 = 14;
    task.unk1C = 3;
    
    for (i = 0 ; i < a2; i++)
    {
        {
            v4 = a1->unk870[i];
            if (v4 == 5)
            {
                a1->unk7A0[i].unk0 =sub_02048530(100, a1->heapId);
                sub_02048838(a1->unk520, 144, a1->unk7A0[i].unk0);
                a1->unk7A0[i].unk4 = 14816;
                a1->unk7A0[i].unk8 = 0;
            }
            else
            {
                if (v4 == 6)
                {
                    a1->unk7A0[i].unk0 =sub_02048530(100, a1->heapId);
                    sub_02048838(a1->unk520, 8, a1->unk7A0[i].unk0);
                    a1->unk7A0[i].unk4 = 14816;
                    a1->unk7A0[i].unk8 = 1;
                }
                else
                {
                    a1->unk7A0[i].unk0 =sub_02048530(100, a1->heapId);
                    sub_02048838(a1->unk520, 139, a1->unk528);
                    sub_020246F4(a1->messageParam, 0, v4);
                    sub_02024920(a1->messageParam, a1->unk7A0[i].unk0, a1->unk528);
                    a1->unk7A0[i].unk4 = 14816;
                    a1->unk7A0[i].unk8 = 0;
                }
            }

        }
    }
    a1->unk79C = sub_0202D974(&task, a1->unk800);
    for (i = 0; i < a2; ++i)
        sub_02048564(a1->unk7A0[i].unk0);
    ovy142_219fda8(a1, 0);
}

extern sub_0204AFD8(void* ,int ,int, int, u16, int, int, u16);
void ovy142_219f450(BagView *a1, u32 a2)
{
    void *v3; // r0

    v3 = sub_0204AA30(87, a1->heapId);

    if (a2 == 5)
        sub_0204AFD8(v3, 24, 5, 0, a1->unk820, 0, 0, a1->heapId);
    else
        sub_0204AFD8(v3, 23, 5, 0, a1->unk820, 0, 0, a1->heapId);
    
    sub_0204AB0C(v3);
}

void ovy142_219f4b0(BagView *a1, int a2)
{
    int v12;
    int v4;  // r0
    int v5;  // r0
    int v6;  // r0
    int v7;  // r0
    int v9;  // [sp+8h] [bp-20h]
    int v10; // [sp+10h] [bp-18h]

    int *bgs;
    
    bgs = &a1->unk74C;

    v4 = sub_02021740(a2);
    sub_0204C124(a1->unk6D4[v4], 1);
    v5 = sub_02021720(a2);
    sub_0204C124(a1->unk6E0[v5], 1);
    v12 = sub_020216B0(a2, 0);
    v10 = sub_02021280(a2, 3);
    v9 = sub_02021280(a2, 4);
    v6 = sub_020484F4(a1->unk74C);
    sub_020470F8(v6, 176, 0, 32, 40, 0);
    v7 = sub_020484F4(a1->unk74C);
    sub_020470F8(v7, 232, 0, 24, 24, 0);
    if (v10 <= 1)
    {
        sub_02048838(a1->unk520, 23, a1->unk528);
        ovy142_21a00f0(a1, bgs, a1->unk528, 176, 4, 0x3DC0);
    }
    else
    {
        sub_02048838(a1->unk520, 95, a1->unk528);
        sub_0202451C(a1->messageParam, 0, v10, 3, 0, 1);
        sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
        ovy142_21a00f0(a1, bgs, a1->unk52C, 176, 4, 0x3DC0);
    }
    
    if (!v9 || sub_0202174C(a2) == 1)
    {
        sub_02048838(a1->unk520, 23, a1->unk528);
        ovy142_21a00f0(a1, bgs, a1->unk528, 176, 24, 0x3DC0);
    }
    else
    {
        sub_02048838(a1->unk520, 95, a1->unk528);
        sub_0202451C(a1->messageParam, 0, v9, 3, 0, 1);
        sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
        ovy142_21a00f0(a1, bgs, a1->unk52C, 176, 24, 0x3DC0);
    }
    
    sub_02048838(a1->unk520, 94, a1->unk528);
    sub_0202451C(a1->messageParam, 0, v12, 2, 0, 1);
    sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
    ovy142_21a00f0(a1, bgs, a1->unk52C, 232, 4, 0x3DC0);
    ovy142_21a0134(bgs);
}

extern int sub_02017BCC(void);
extern int sub_02022268(int, int, int, int, int, int, int, int, u16, int);
extern void sub_02024E80(int, int, u16, int);

void ovy142_219f6a4(BagView *a1, int a2)
{
    int v4; // r0
    int v6; // r0

    if (!a1->unk500)
        a1->unk500 = sub_020480C0(3, 1, 1, 0x1e, 4, 12, 1);
    v4 = sub_020484F4(a1->unk500);
    sub_0204713C(v4, 15);
    sub_02048244(a1->unk500);
    if (a2 == 1)
    {
        v6 = sub_02017BCC();
        a1->unk514 = sub_02022268(
            a1->unk500,
            0,
            0,
            a1->unk52C,
            a1->unk534,
            v6,
            a1->unk748,
            2,
            a1->heapId,
            15);
    }
    else
    {
        ovy142_21a00f0(a1, &a1->unk500, a1->unk52C, 0, 0, 0x44Fu);
    }
    sub_02024E80(a1->unk500, 1, a1->unk88C, 13);
    ovy142_21a0134(&a1->unk500);
}

void sub_0219F760(BagView *a1)
{
    ovy142_219f6a4(a1, 0);
}

void ovy142_219f76c(BagView *a1, int a2)
{
    sub_02048838(a1->unk520, 43, a1->unk528);
    sub_021999B8(a1, 0, a2);
    sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
}

extern int sub_020223B4(void);
extern int sub_0202E8D8(int, int, int);
extern void sub_020223CC(int);
extern void sub_020223BC(int);
extern int sub_0203DF20(void);
extern void sub_020223E0(int, int);
void ovy142_219f84c(BagView *a1);

int ovy142_219f7a4(BagView *a1)
{
    int v2; // r4
    int v3; // r0

    if (a1->unk514)
    {
        v2 = sub_020223B4();
        v3 = sub_0202E8D8(a1->unk51C, a1->unk514, a1->unk500);
        if (v2)
        {
            if (v2 != 1)
            {
                if (v2 == 2)
                {
                    sub_020223CC(a1->unk514);
                    a1->unk514 = 0;
                    a1->unk518 = 0;
                }
            }
            else
            {
                if (!a1->unk518 )
                {
                    if ((sub_0203DEFC() & 3) != 0 || sub_0203DA48())
                    {
                        sub_02006254(1351);
                        sub_020223BC(a1->unk514);
                        a1->unk518 = 1;
                    }
                }
            }
        }
        else
        {
            if ((sub_0203DF20() & 3) != 0 || sub_0203DA2C())
            {
                sub_020223E0(a1->unk514, 0);
            }
            a1->unk518 = 0;
        }
        return 0;
    }
    return 1;
}

void ovy142_219f84c(BagView *a1)
{
    a1->unk508 = sub_020480C0(2, 3, 21, 12, 3, 12, 1);
    a1->unk77C = sub_020480C0(2, 1, 21, 8, 3, 12, 1);
    a1->unk784 = sub_020480C0(2, 9, 21, 9, 3, 12, 1);
    ovy142_219f8ec(a1, a1->itemType);
    ovy142_219f06c(a1, a1->itemType);
}

void ovy142_219f8c4(BagView *a1)
{
    sub_02048210(a1->unk508);
    sub_02048210(a1->unk784);
    sub_02048210(a1->unk77C);
}

void ovy142_219f8ec(BagView *a1, u32 a2)
{
    int v4; // r0
    u32 v5; // r0

    v4 = sub_020484F4(a1->unk508);
    sub_0204713C(v4, 0);
    sub_02048838(a1->unk520, 139, a1->unk528);
    sub_020246F4(a1->messageParam, 0, a2);
    sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
    v5 = 0x60 - sub_02022888(a1->unk52C, a1->unk534, 0);
    u16 width = (v5 / 2); 
    ovy142_21a00f0(a1, &a1->unk508, a1->unk52C, width, 4, 0x3C40);
    ovy142_21a0134(&a1->unk508);
}

extern int sub_0200C9BC(int);
void ovy142_219fa3c(BagView *a1);

void ovy142_219f978(BagView *a1)
{
    int v2; // r0
    int v3; // r0
    int v4; // r0
    int v5; // r0

    v2 = sub_020484F4(a1->unk784);
    sub_0204713C(v2, 0);
    v3 = sub_020484F4(a1->unk77C);
    sub_0204713C(v3, 0);
    sub_02048838(a1->unk520, 81, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk77C, a1->unk528, 0, 4, 0x3C40);
    ovy142_21a0134(&a1->unk77C);

    sub_02048838(a1->unk520, 82, a1->unk528);
    v4 = sub_02017974(a1->m_GameData);
    v5 = sub_0200C9BC(v4);
    sub_0202451C(a1->messageParam, 0, v5, 7, 1, 1);
    sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk784, a1->unk52C, 0, 4, 0x3C40);
    ovy142_21a0134(&a1->unk784);
}

void ovy142_219fa3c(BagView *a1)
{
    sub_0204C124(a1->unk724[0], 0);
    sub_0204C124(a1->unk724[1], 0);
    sub_020484B4(a1->unk508);
    ovy142_219f978(a1);
}

void ovy142_219fa6c(BagView *a1);

void ovy142_219fa6c(BagView *a1)
{
    sub_0204C124(a1->unk724[0], 1);
    sub_0204C124(a1->unk724[1], 1);
    sub_020484B4(a1->unk784);
    sub_020484B4(a1->unk77C);
    ovy142_219f8ec(a1, a1->itemType);
}

void ovy142_219faac(BagView *a1);

void ovy142_219faac(BagView *a1)
{
    TaskMenu task;
    
    task.heapId = a1->heapId;
    task.unk4 = 2;
    task.unk8 = a1->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 12;
    task.unk18 = 8;
    task.unk1C = 3;

    a1->unk7A0[0].unk0 = sub_02048530(100, a1->heapId);
    sub_02048838(a1->unk520, 132, a1->unk7A0[0].unk0);
    a1->unk7A0[0].unk4 = 14816;
    a1->unk7A0[0].unk8 = 0;

    a1->unk7A0[1].unk0 = sub_02048530(100, a1->heapId);
    sub_02048838(a1->unk520, 133, a1->unk7A0[1].unk0);
    a1->unk7A0[1].unk4 = 14816;
    a1->unk7A0[1].unk8 = 0;
    a1->unk79C = sub_0202D974(&task, a1->unk800);
    sub_02048564(a1->unk7A0[0].unk0);
    sub_02048564(a1->unk7A0[1].unk0);
    ovy142_219ff40(a1, 0);
    ovy142_219fda8(a1, 0);
}

void ovy142_219fb60(BagView *a1);
void ovy142_219fb78(BagView *a1);

void ovy142_219fb60(BagView *a1)
{
    sub_0202DA54(a1->unk79C);
    a1->unk79C = 0;
}

extern void sub_02045B7C(int);
extern void sub_020454AC(int, int, int, int, int, int);
extern int sub_02060338(int, int*);
extern void *sub_0204B600(int ,int, int, u16);

asm void ovy142_219fb78(BagView *a1)
{
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, =0x0000054C
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x57
	bl sub_0204AA30
	ldrh r3, [r5, r6]
	mov r1, #0x23
	mov r2, #0
	str r0, [sp, #0xc]
	mov r4, #0
	bl sub_0204B600
	add r1, sp, #0x10
	str r0, [sp, #8]
	bl sub_02060338
	cmp r0, #0
	beq _0219FBFC
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	add r2, r3, #0
	add r2, #0xc
	lsr r1, r0, #3
	ldrh r0, [r3, #2]
	add r3, r1, #0
	lsr r0, r0, #3
	mul r3, r0
	cmp r3, #0
	ble _0219FBD8
	mov r7, #3
	lsl r7, r7, #0xc
_0219FBBC:
	ldr r6, =0x00000828
	lsl r1, r4, #1
	ldr r6, [r5, r6]
	ldrh r0, [r2, r1]
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	orr r6, r7
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	add r0, r0, r6
	add r4, r4, #1
	strh r0, [r2, r1]
	cmp r4, r3
	blt _0219FBBC
_0219FBD8:
	ldr r1, [sp, #0x10]
	mov r2, #0x10
	ldrh r0, [r1]
	mov r3, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	bl sub_020454AC
	mov r0, #3
	bl sub_02045B7C
_0219FBFC:
	ldr r0, [sp, #8]
	bl sub_0203A24C
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
}

void ovy142_219fc14(BagView *a1, int a2)
{
    sub_0204713C(sub_020484F4(a1->unk774), 5);
    sub_02048838(a1->unk520, 131, a1->unk528);
    sub_0202451C(a1->messageParam, 0, a2, 3, 0, 1);
    sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
    ovy142_21a00f0(a1, &a1->unk774, a1->unk52C, 0, 0, 0x3DC5);
    ovy142_21a0134(&a1->unk774);

    if (a1->unk80C == 2)
    {
        int *v8 = &a1->unk78C;  //参考，有些寄存器问题是声明前后的问题
        int v7 = ovy142_219995c(a1->selectItem, a1->unk814, a1->heapId);
        sub_0204713C(sub_020484F4(a1->unk78C), 5);
        sub_02048838(a1->unk520, 84, a1->unk528);
        sub_0202451C(a1->messageParam, 0, v7, 7, 0, 1);
        sub_02024920(a1->messageParam, a1->unk52C, a1->unk528);
        ovy142_21a00f0(a1, v8, a1->unk52C, 0, 0, 0x3DC5);
        ovy142_21a0134(v8);
    }
}

int sub_0219FD18(int a1)
{
    switch (a1)
    {
        case 0:
            return 12;
        case 3:
            return 0xf;
        case 1:
            return 0xd;
        case 2:
            return 0xe;
        case 4:
            return 0x10;
        case 5:
            return 0x11;
    }
    return a1;
}

void ovy142_219fd4c(BagView *a1, int a2)
{
    u32 i;
    s16 v8[2];
    s16 v6[2];

    sub_0204C178(a1->unk6B4, v8, 0);
    for (i = 0; i < 8; i++)
    {
        sub_0204C178(a1->unk644[i], v6, 0);
        if (v6[1] == v8[1])
            break;
    }

    sub_0204C378(a1->unk644[i], (u8)a2, 0);
}

extern int sub_02026FE4(int, int, int, int, int, int, int, int);
extern int sub_0204C138(int);

void ovy142_219fda8(BagView *a1, int a2)
{
    int v5;     // r0
    int v6;     // r7
    int v7;     // r0
    int v8;     // r0
    int v9;     // r0
    int v12;    // r0
    int v13;    // r0
    int v14;    // r0

    if (a1->unk8AC != a2)
    {
        a1->unk8AC = a2;
        v5 = sub_0219FD18(a1->itemType);
        v6 = sub_0201765C(a1->m_GameData, v5);
        if (a2 == 1)
        {
            v7 = sub_02005718();
            v8 = sub_02026FE4(a1->unk8A8, 4, 18383, 0, 0, 0, 0, v7);
            v9 = sub_02005718();
            sub_02026FE4(a1->unk8A8, 1, 1, 0, 0, 0, 0, v9);
            G2x_SetBlendBrightness_(&reg_G2_BLDCNT, 6, 0);
            ovy142_219ff60(a1);
            sub_0204C488(a1->unk724[0], 4);
            sub_0204C488(a1->unk724[1], 5);
            sub_0204C488(a1->unk724[3], 0);
            if (v6 == 1)
                sub_0204C488(a1->unk724[2], 7);
            else
                sub_0204C488(a1->unk724[2], 6);
            ovy142_219ff40(a1, 1);
        }
        else
        {
            sub_02026F7C(a1->unk8A8, 2, 0, 512);
            v12 = sub_02005718();
            v13 = sub_02026FE4(a1->unk8A8, 4, 18383, 0, 8, 8, 0, v12);
            v14 = sub_02005718();
            sub_02026FE4(a1->unk8A8, 1, 1, 0, 8, 8, 0, v14);

            if (a1->unk10 == 4 && !sub_0204C138(a1->unk724[0]))
                G2x_SetBlendBrightness_(&reg_G2_BLDCNT, 2, -8);
            else
                G2x_SetBlendBrightness_(&reg_G2_BLDCNT, 6, -8);
            
            sub_0204C488(a1->unk744, 4);
            sub_0204C488(a1->unk740, 2);
            sub_0204C488(a1->unk724[0], 18);
            sub_0204C488(a1->unk724[1], 19);
            sub_0204C488(a1->unk724[3], 14);
            if (v6 == 1)
                sub_0204C488(a1->unk724[2], 22);
            else
                sub_0204C488(a1->unk724[2], 21);
        }
    }

}

void ovy142_219ff40(BagView *a1, int a2)
{
    if (a2 == 1)
        sub_0204C488(a1->unk724[4], 1);
    else
        sub_0204C488(a1->unk724[4], 15);
}

void ovy142_219ff60(BagView *a1)
{
    if (a1->itemType != 5)
    {
        sub_0204C124(a1->unk744, 1);
        sub_0204C124(a1->unk740, 0);
        if (ovy142_2199988(a1) <= 1)
            return sub_0204C488(a1->unk744, 4);
        else
            return sub_0204C488(a1->unk744, 0);
    }
    else
    {
        sub_0204C124(a1->unk740, 1);
        sub_0204C124(a1->unk744, 0);
        if (ovy142_219d22c(a1) > 2)
            return sub_0204C488(a1->unk740, 0);
        else
            return sub_0204C488(a1->unk740, 2);    
    }
    
}

void ovy142_219ffe8(BagView *a1, int a2);

void ovy142_219ffe8(BagView *a1, int a2)
{
    int v4; // r0
    int v5; // r6

    v4 = sub_0219FD18(a1->itemType);
    v5 = sub_0201765C(a1->m_GameData, v4);
    if (a2 == 1)
    {
        ovy142_219ff60(a1);
        sub_0204C488(a1->unk724[0], 4);
        sub_0204C488(a1->unk724[1], 5);
        sub_0204C488(a1->unk724[3], 0);
        if (v5 == 1)
            return sub_0204C488(a1->unk724[2], 7);
        else
            return sub_0204C488(a1->unk724[2], 6);
    }
    else
    {
        sub_0204C488(a1->unk744, 4);
        sub_0204C488(a1->unk740, 2);
        sub_0204C488(a1->unk724[0], 18);
        sub_0204C488(a1->unk724[1], 19);
        sub_0204C488(a1->unk724[3], 14);
        if (v5 == 1)
            return sub_0204C488(a1->unk724[2], 22);
        else
            return sub_0204C488(a1->unk724[2], 21);
    }
}

extern s16 word_21A168C[][2];

int ovy142_21a00a0(BagView *a1)
{
    s16 v8[2];   // [sp+0h] [bp-18h] BYREF
    u32 i; // r4

    for (i = 0; i < 6; ++i)
    {
        sub_0204C178(a1->unk6BC[i], v8, 0xFFFF);
        if (v8[0] == word_21A168C[i][0])
            return 0;
        v8[0] += 4;
        sub_0204C140(a1->unk6BC[i], v8, 0xFFFF);
    }
    return 1;
}

extern void sub_02021C7C(int, int, s16, s16, int, int, u16);

void ovy142_21a00f0(BagView *a1, int *a2, int a3, u16 a4, s16 a5, u16 a6)
{
    int v12;
    int v4 = a4;
    WinDowData *win = (WinDowData *)a2;
    v12 = a1->unk510;

    sub_02021C7C(v12, sub_020484F4(win->bit), (s16)v4, a5, a3, a1->unk534, a6);
    win->flag = 1;
}

void ovy142_21a0134(int *a1)
{
    int v2; // r0
    WinDowData *win = (WinDowData *)a1;
    sub_0204826C(win->bit);
    v2 = sub_020484D4(win->bit);
    sub_02045B7C(v2);
}

extern void sub_02021A3C(int);
extern int sub_02021C1C(int, int);

void ovy142_21a014c(BagView *a1)
{
    int v2;     // r4
    int v3;     // r0
    int v4;     // r4
    int v5;     // r0
    int v6;     // r4
    int v7;     // r0
    int v8;     // r4
    int v9;     // r0
    int v10;    // r4
    int v11;    // r0
    int v12;    // r4
    int v13;    // r0
    int v14;    // r4
    int v15;    // r0
    int v16;    // r4
    int v17;    // r0
    int v18;    // r4
    int v19;    // r0
    int v20;    // r4
    int v21;    // r0
    int v22;    // r6
    int v23;    // r0
    int result; // r0
    int v25;    // r4
    int v26;    // r0

    sub_02021A3C(a1->unk510);
    v2 = a1->unk510;
    if (a1->unk750)
    {
        v3 = sub_020484F4(a1->unk74C);
        if (!sub_02021C1C(v2, v3))
        {
            sub_02048244(a1->unk74C);
            a1->unk750 = 0;
        }
    }
    v4 = a1->unk510;
    if (a1->unk770)
    {
        v5 = sub_020484F4(a1->unk76C);
        if (!sub_02021C1C(v4, v5))
        {
            sub_02048244(a1->unk76C);
            a1->unk770 = 0;
        }
    }
    v6 = a1->unk510;
    if (a1->unk758)
    {
        v7 = sub_020484F4(a1->unk754);
        if (!sub_02021C1C(v6, v7))
        {
            sub_02048244(a1->unk754);
            a1->unk758 = 0;
        }
    }
    v8 = a1->unk510;
    if (a1->unk760)
    {
        v9 = sub_020484F4(a1->unk75C);
        if (!sub_02021C1C(v8, v9))
        {
            sub_02048244(a1->unk75C);
            a1->unk760 = 0;
        }
    }
    v10 = a1->unk510;
    if (a1->unk768)
    {
        v11 = sub_020484F4(a1->unk764);
        if (!sub_02021C1C(v10, v11))
        {
            sub_02048244(a1->unk764);
            a1->unk768 = 0;
        }
    }
    v12 = a1->unk510;
    if (a1->unk778)
    {
        v13 = sub_020484F4(a1->unk774);
        if (!sub_02021C1C(v12, v13))
        {
            sub_02048244(a1->unk774);
            a1->unk778 = 0;
        }
    }
    v14 = a1->unk510;
    if (a1->unk780)
    {
        v15 = sub_020484F4(a1->unk77C);
        if (!sub_02021C1C(v14, v15))
        {
            sub_02048244(a1->unk77C);
            a1->unk780 = 0;
        }
    }
    v16 = a1->unk510;
    if (a1->unk788)
    {
        v17 = sub_020484F4(a1->unk784);
        if (!sub_02021C1C(v16, v17))
        {
            sub_02048244(a1->unk784);
            a1->unk788 = 0;
        }
    }
    v18 = a1->unk510;
    if (a1->unk790)
    {
        v19 = sub_020484F4(a1->unk78C);
        if (!sub_02021C1C(v18, v19))
        {
            sub_02048244(a1->unk78C);
            a1->unk790 = 0;
        }
    }
    v20 = a1->unk510;
    if (a1->unk798)
    {
        v21 = sub_020484F4(a1->unk794);
        if (!sub_02021C1C(v20, v21))
        {
            sub_02048244(a1->unk794);
            a1->unk798 = 0;
        }
    }
    v22 = a1->unk510;
    if (a1->unk504)
    {
        v23 = sub_020484F4(a1->unk500);
        if (!sub_02021C1C(v22, v23))
        {
            sub_02048244(a1->unk500);
            a1->unk504 = 0;
        }
    }

    v25 = a1->unk510;
    if (a1->unk50C)
    {
        v26 = sub_020484F4(a1->unk508);
        result = sub_02021C1C(v25, v26);
        if (!result)
        {
            sub_02048244(a1->unk508);
            a1->unk50C = 0;
        }
    }
}

extern u32 data_21A1028[6];

int ovy142_21a03ac(u8 a1)
{
    u32 v2[6]; // [sp+0h] [bp-20h]

    v2 = data_21A1028;
    return v2[a1];
}

int ovy142_21A03D4(int *a1, int *a2);

int ovy142_21A03D4(int *a1, int *a2)
{
    u32 v2; // r1
    u32 v3; // r0

    v2 = a2[2];
    v3 = a1[2];
    if (v3 == v2)
        return 0;
    if (v3 > v2)
        return 1;
    return -1;
}

void ovy142_21a03f0(ITEM_UNKNOW_DATA *a1, int a2, int a3, u16 a4);

extern void ovy142_21a063c(ITEM_UNKNOW_DATA*, u16);

void ovy142_21a03f0(ITEM_UNKNOW_DATA *a1, int a2, int a3, u16 a4)
{
    int i;  // r6
    int v5; // r4
    int v7; // r0

    a1->unk4 = a2;
    v5 = 0;
    a1->unk8 = a4;
    MI_CpuFill8(&a1->unkC, 0, 8 * 639);
    for (i = 0; i <= 638; ++i)
    {
        if (sub_02008338((void*)a1->unk4, (u16)i))
        {
            v7 = sub_020083C8((void*)a1->unk4, i);
            if (v7 != 6)
            {
                a1->unkC[v5].unk0.ItemData.itemid = i;
                a1->unkC[v5].unk0.ItemData.num = v7;
                a1->unkC[v5].unk4 = 1;
                ++v5;
            }
            else
            {
                a1->unkC[v5].unk0.ItemData.itemid = 0;
                a1->unkC[v5].unk0.ItemData.num = 6;
                a1->unkC[v5].unk4 = 0;
            }
        }
        else
        {
            a1->unkC[v5].unk0.ItemData.itemid = 0;
            a1->unkC[v5].unk0.ItemData.num = 6;
            a1->unkC[v5].unk4 = 0;
        }
    }
    a1->unk0.itemid = 0;
    a1->unk0.num = 0;
    ovy142_21a063c(a1, (u16)a3);
}

void sub_021A046C(ITEM_UNKNOW_DATA* a1)
{}

extern ItemTable* sub_02008730(u32, u16, u16);
extern ItemTable* sub_02008798(u32, u16, u16);

ItemTable *ovy142_21a0470(ITEM_UNKNOW_DATA *a1, u16 a2, u16 a3)
{
    int v5;                // r4

    int v8;                // r12


    ItemTable *v12; // [sp+4h] [bp-1Ch]

    v5 = 0;
    if (a2 != 5)
    {
        for (int i = 0; i <= 638; i++)
        {
            v12 = (ItemTable *)sub_02008730(a1->unk4, a2, (u16)i);
            if (!v12)
            {
                return &a1->unk0;
            }
            if (!sub_02008338((void*)a1->unk4, v12->itemid))
            {
                if (v5 == a3)
                    break;
                ++v5;
            }
        }
    }
    else
    {   
        v8 = 0;
        SomeData *v10;
        for (int i = 0; i <= 638; i++)
        {
            v10 = &a1->unkC[i];
            if (v10->unk4 == 1 && v10->unk0.ItemData.itemid)
            {
                if (v5 == a3)
                {
                    v8 = 1;
                    break;
                }
                ++v5;
            }
        }
        
        if (!v8)
            v12 = &a1->unk0;

        else
        {
            v12 = sub_02008798(a1->unk4, v10->unk0.ItemData.num, v10->unk0.ItemData.itemid);
            if (!v12)
                v12 = &a1->unk0;
        }

    }
    return v12;
}

extern void sub_020083C0(int, u16, int);
extern void sub_020085E0(int, u16);
void ovy142_21a05b4(ITEM_UNKNOW_DATA*);

void ovy142_21a050c(ITEM_UNKNOW_DATA *a1, u16 a2, int a3)
{
    int v5;               // r0
    SomeData *v7;
    int save = a1->unk4;
    v5 = 0;

    for (int i = 0; i <= 638; i++)
    {
        v7 = &a1->unkC[i];
        if (v7->unk4 == 1 && v7->unk0.ItemData.itemid)
        {
            if (v5 == a2)
            {
                if (a3 == 1)
                    sub_020083C0(a1->unk4, v7->unk0.ItemData.itemid, 0);
                sub_020085E0(a1->unk4, a1->unkC[i].unk0.ItemData.itemid);
                a1->unkC[i].unk0.ItemData.itemid = 0;
                a1->unkC[i].unk0.ItemData.num = 6;
                a1->unkC[i].unk4 = 0;
                break;
            }
            ++v5;
        }
    }
    
    ovy142_21a05b4(a1);
}

void ovy142_21a0578(ITEM_UNKNOW_DATA *a1, int a2, short a3)
{
    for (int i = 0; i <= 614; i++)
    {
        if (!a1->unkC[i].unk0.ItemData.itemid)
        {
            sub_020083C0(a1->unk4, a2, 1);
            a1->unkC[i].unk0.ItemData.itemid = a2;
            a1->unkC[i].unk0.ItemData.num = a3;
            a1->unkC[i].unk4 = 1;
            break;
        }
    }
}

void ovy142_21a05b4(ITEM_UNKNOW_DATA *a1)
{
    volatile u32 datas;
    volatile u32 datas2;
    for (int i = 0; i <= 613; ++i)
    {
        for (int j = i + 1; j <= 614; j++)
        {
            if (!a1->unkC[i].unk0.ItemData.itemid)
            {
                int v7 = a1->unkC[i].unk0.raw;
                int v3 = a1->unkC[i].unk4;
                int v8 = a1->unkC[j].unk0.raw;
                int v4 = a1->unkC[j].unk4;
                
                a1->unkC[i].unk0.raw = v8;
                datas2 = v7;
                
                a1->unkC[i].unk4 = v4;
                a1->unkC[j].unk0.raw = v7;
                datas = v3;
                a1->unkC[j].unk4 = v3;

            }
        }
    }

}

int ovy142_21a0610(ITEM_UNKNOW_DATA *a1, int a2)
{
    int i;  // r2
    int v2; // r3
    
    v2 = 0;
    for (i = 0; i <= 638; ++i)
    {
        if (a2 == a1->unkC[i].unk0.ItemData.num && a1->unkC[i].unk0.ItemData.itemid)
            ++v2;
    }
    return v2;
}

extern int data_21A1120[6];

extern void ovy142_21a071c(ITEM_UNKNOW_DATA*, u16);

void ovy142_21a063c(ITEM_UNKNOW_DATA *a1, u16 a2)
{
    int v6[6];
    
    v6 = data_21A1120;
    for (int i = 0; i <= 614; i++)
    {
        
        if (!a2)
            a1->unkC[i].unk4 = 1;
        else
        {
            if (a1->unkC[i].unk0.ItemData.num == v6[a2])
                a1->unkC[i].unk4 = 1;
            else
                a1->unkC[i].unk4 = 0;
        }
    }
    ovy142_21a071c(a1, a2);
}

extern void sub_0200891C(int, u8*);
extern ItemTable* sub_0200896C(u32, int, int*);
extern int sub_02008308(u32);

int ovy142_21a0698(ITEM_UNKNOW_DATA *a1, int a2, BagView *a3)
{
    ItemTable *v7;           // r7
    u32 j;   // r6
    u32 i;   // r1
    int v6 = 0;           // r4
    int v12;
    sub_0200891C(a1->unk4, a1->unk1CCC);
    if (a2 != 5)
    {
        v7 = sub_0200896C(a1->unk4, a2, &v12);
        for (j = 0; j < v12; ++j)
        {
            u16 itemids = v7[j].itemid;
            if (itemids)
            {
                if (a1->unk1CCC[itemids])
                    if(!sub_02008308(a1->unk4))
                        ++v6;
            }
        }
    }
    else
    {
        for (i = 0; i <= 0x27E; ++i)
        {
            if (a1->unkC[i].unk0.ItemData.itemid)
            {   
                if(a1->unk1CCC[i] && a1->unkC[i].unk4 == 1)
                {
                    ++v6;
                }
            }
        }
    }
    
    return v6;
}

extern void ovy142_21a0748(ITEM_UNKNOW_DATA*);
extern void ovy142_21a07f4(ITEM_UNKNOW_DATA*);

void ovy142_21a071c(ITEM_UNKNOW_DATA* a1, u16 a2)
{
    switch (a2)
    {
    case 0:
        ovy142_21a0748(a1);
        return;
    
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        ovy142_21a07f4(a1);
        return;
    }
}
