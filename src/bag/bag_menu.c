#include "global.h"
#include "main.h"
#include "touchscreen.h"
#include "bag.h"
#include "constants/arc_id.h"

typedef struct
{
    u16 unk0;
    u16 unk2;
    int unk4;
    int unk8;
    int unkC;
}BgInit;

typedef struct
{
    u32 PosX;
    u32 PosY;
    u32 ScreenSize;
    u32 ScreenOffset;
    u8 Resolution;
    u8 ColorsPalettes;
    u8 ScreenBaseBlock;
    u8 CharBaseBlock;
    u32 CharBlockSize;
    u8 ExtPaletteSlot;
    u8 Priority;
    u8 DisplayAreaOverflow;
    u8 _padDisplayAreaOverflow;
    u32 Mosaic;
} BGSetup;

const BgInit data_021A1018 = 
{
    .unk0 = 1,
    .unk2 = 0,
    .unk4 = 0,
    .unk8 = 0,
    .unkC = 0
};

const u32 data_021A1028[6] = {1, 1, 0, 1, 0, 1};

const BGSetup data_21A1040[] = 
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


int BagMenu_Loop(int a1, int a2, void *a3, void *a4)
{
    BagView *wk = (BagView*) a4;

    FieldBagItemUse func = wk->bagMenuFunc;
    if (!func)
    {
        GFL_FadeScreenSet(0, 0, 0, 0, 6, 1, wk->heapId);
        return 1;
    }
    else
    {
        wk->unk838 = wk->unk834;
        func(wk);
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

int BagMenu_End(int a1, int a2, void *data3, void *a4)
{
    BagView *wk = (BagView*) a4;
    BAG_RETURN_DATA* a3 = (BAG_RETURN_DATA*) data3;

    if (GFL_FadeScreenIsFinished() != 1)
        return 0;
    if (!PrintSystem_IsTextPrintActiveEnd(wk->printSystem))
        return 0;
    GFL_TCBRemove(wk->taskCallBack);
    sub_021A046C(&wk->unk8C8);
    GameData_SetLastSelectBagPocket(wk->unk14, wk->itemPocket);
    GameData_SetLastPocketItem(wk->unk14, wk->itemPocket, wk->posNow, (wk->unk834 + 1));
    sub_0202E1DC(wk->taskMenuData);
    ovy142_219e168(wk);
    ovy142_219dd14(wk);
    GFL_TCBExMgrFree(wk->unk748);
    GFL_MsgDataFree(wk->msgData);
    GFL_StrBufFree(wk->stringBuff1);
    GFL_StrBufFree(wk->stringBuff2);
    GFL_StrBufFree(wk->stringBuff3);
    GFL_WordSetSystemFree(wk->wordSetSystem);
    ovy142_219f8c4(wk);
    if (wk->unk500.winData)
    {
        sub_02044668(3, wk->unk88C, (wk->unk88C >> 16));
        BmpWin_Free(wk->unk500.winData);
    }
    sub_02045264(3, 1, 0);
    sub_02022DA8(wk->font);
    sub_0202E818(wk->unk51C);
    sub_02021C44(wk->printSystem);
    sub_02021A18(wk->printSystem);
    ovy142_219cc60(wk);
    sub_0219C948(wk);
    sub_020504DC(wk->buttonManSystem);
    sub_020480A8();
    sub_02044528();
    a3->unk44 = wk->bagMenuReturnApp;
    a3->unk48 = wk->selectItem;

    ovy142_219d46c(wk->unk14, a3->unk38, a3->unk44, wk->unk1F50);
    sub_0203DEB4(wk->KeyRetypeIntervalRepeated, wk->KeyRetypeIntervalFirst);
    sub_0203AB10(a1);
    sub_0203A1D0(14);
    return 1;
}

void BagMenu_KeyPadMain(BagView *bagView);
void BagMenu_KeyPadSwitchMode(BagView *bagView);

void BagMenu_KeyPadMain(BagView *bagView)
{
    BagMenu_SetRunFunc(bagView, BagMenu_HandleKeyPad);
    sub_0203DEB4(3, 6);
}

void BagMenu_KeyPadSwitchMode(BagView *bagView)
{
    BagMenu_SetRunFunc(bagView, BagMenu_HandleSwitchModeKeyPad);
    sub_0203DEB4(3, 6);
}

void ovy142_219c900(BagView *bagView)
{
    void *v2;

    bagView->unk8A4 = sub_02035024(16, 16, 0xFFFE, bagView->heapId);
    v2 = GFL_ArcSysCreateFileHandle(87, bagView->heapId);
    sub_02035104(bagView->unk8A4, v2, 21, 16, 32);
    GFL_ArcToolFree(v2);
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
        GFL_SndSEPlay(0x54c);
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
        BagMenu_SetRunFunc(bagView, ovy142_219a724);
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
        GFL_SndSEPlay(1361);
        v3 = 9;
    }
    else if (a2 == 3)
    {
        GFL_SndSEPlay(1366);
        v3 = 8;
    }
    else if (a2 == 1)
    {
        GFL_SndSEPlay(2008);
        v3 = 13;
    }
    else if (a2 == 0)
    {
        GFL_SndSEPlay(2008);
        v3 = 12;
    }
    a1->unk8B8 = a2;
    sub_0204C4D4(a1->bottomIconOam[a1->unk8B8], 0);
    Oam_SetOamAnimIndex(a1->bottomIconOam[a1->unk8B8], v3);
    Oam_EnableOamAnim(a1->bottomIconOam[a1->unk8B8], 1);
    a1->unk8BC = a3;
    BagMenu_SetRunFunc(a1, ovy142_219ca90);
}

extern int sub_0204C560(int);
void ovy142_219ca90(BagView *bagView);

void ovy142_219ca90(BagView *bagView)
{
    if (!sub_0204C560(bagView->bottomIconOam[bagView->unk8B8]))
    {
        bagView->unk8B8 = 0;
        BagMenu_SetRunFunc(bagView, bagView->unk8BC);
    }
}

extern void ovy142_219cb64(BagView*);

void ovy142_219cac0(BagView *bagView, int a2, int a3, FieldBagItemUse a4)
{
    int v4; // r7

    ovy142_2199a5c(bagView, a2, bagView->itemPocket);
    ovy142_219bd84(bagView);
    ovy142_219becc(bagView);
    bagView->unk838 = 0xFFFF;
    ovy142_21998f4(bagView);
    if (a3 == 1)
    {
        GFL_SndSEPlay(2008);
        v4 = 13;
    }
    else if (!a3)
    {
        GFL_SndSEPlay(2008);
        v4 = 12;
    }
    bagView->unk8B8 = a3;
    bagView->unk8BA = 6;
    sub_0204C4D4(bagView->bottomIconOam[bagView->unk8B8], 0);
    Oam_SetOamAnimIndex(bagView->bottomIconOam[bagView->unk8B8], v4);
    Oam_EnableOamAnim(bagView->bottomIconOam[bagView->unk8B8], 1);
    bagView->unk8BC = a4;
    BagMenu_SetRunFunc(bagView, ovy142_219cb64);
}

void ovy142_219cb64(BagView *bagView)
{
    if (!bagView->unk8BA)
    {
        bagView->unk8B8 = 0;
        BagMenu_SetRunFunc(bagView, bagView->unk8BC);
    }
    else
    {
        --bagView->unk8BA;
    }
}

extern int sub_0203DA0C(const TouchscreenHitbox*);
int ovy142_219cb88(void);

int ovy142_219cb88(void)
{
    int v0; // r4

    v0 = sub_0203DA0C(data_021A0904);
    if (v0 != -1)
        sub_0203D564(1);
    return v0;
}

void ovy142_219cba8(BagView *bagView);

void ovy142_219cba8(BagView *bagView)
{
    ovy142_219b46c(bagView);
    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
    BagMenu_PopUpOptionMenuSetting(bagView, 1);
    ovy142_219bda4(bagView, sub_0203D554() == 0);
    BagMenu_KeyPadMain(bagView);
}
void ovy142_219cbe4(BagView *bagView);
void ovy142_219cbe4(BagView *bagView)
{
    ovy142_219b46c(bagView);
    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
    BagMenu_PopUpOptionMenuSetting(bagView, 1);
    ovy142_219bda4(bagView, sub_0203D554() == 0);
    BagMenu_SetRunFunc(bagView, ovy142_219b2f0);
}

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

void BagMenu_StartSortItem(BagView *bagView)
{
    if (!sub_0204C560(bagView->unk744))
    {
        Oam_SetOamAnimIndex(bagView->unk744, 0);
        Oam_EnableOamAnim(bagView->scrollBarOam, 0);
        GFL_MsgDataLoadStrbuf(bagView->msgData, 151, bagView->stringBuff2);
        BagMenu_PrintBagMessage(bagView, 0);
        BagMenu_PopUpOptionMenuSetting(bagView, 0);
        ovy142_219cce0(bagView);
        BagMenu_SetRunFunc(bagView, ovy142_219cd98);
    }
}

extern const u8 data021A08E0[5];

extern void BagMenu_GetItemSortMenuTextList(BagView*, u8*);
extern void BagMenu_AddSortOptionListMenu(BagView*, u32*, int);

void ovy142_219cce0(BagView *bagView)
{
    int i;    // r6
    int v3;    // r2
    int v4;    // r5
    int v5;    // r3
    u32 textList[6]; // [sp+1Ch] [bp-2Ch]
    u32 v8[5]; // [sp+8h] [bp-40h] BYREF
    u8 optionTbl[5];  // [sp+0h] [bp-48h] BYREF

    textList = gBagMenuSortTextTbl;
    optionTbl = data021A08E0;

    BagMenu_GetItemSortMenuTextList(bagView, optionTbl);

    for (i = 0, v3 = 0; i < 5; i++)
    {
        v4 = optionTbl[i];
        if (v4 != 255)
        {
            v5 = v3;
            bagView->unk85C[v3++] = optionTbl[i];
            v8[v5] = textList[optionTbl[i]];
        }
    }
    BagMenu_AddSortOptionListMenu(bagView, v8, v3);
}

void BagMenu_GetItemSortMenuTextList(BagView* bagView, u8* retList)
{
    u32 pocket;     // r2
    int pocket2;     // r0

    pocket = bagView->itemPocket;
    if (pocket == BAG_POCKET_NORMAL || pocket == BAG_POCKET_HEAL || (pocket - 3) <= 1)
        retList[0] = BAG_SORT_TYPE;
    else
        retList[0] = BAG_SORT_INDEX;
    pocket2 = bagView->itemPocket;
    if (pocket2 == BAG_POCKET_NORMAL || pocket2 == BAG_POCKET_HEAL || pocket2 == BAG_POCKET_BERRY)
    {
        retList[2] = BAG_SORT_AMOUNT_MORE;
        retList[3] = BAG_SORT_AMOUNT_LESS;
    }
    retList[1] = BAG_SORT_NAME;
    retList[4] = 5;
}

extern void BagMenu_PrintItemSortEnd(BagView*);

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
                GFL_SndSEPlay(0x663);
                BagMenu_TrySortItem(bagView, 0);
                BagMenu_SetRunFunc(bagView, BagMenu_PrintItemSortEnd);
                r5 = 1;
                break;
            case 1:
                GFL_SndSEPlay(0x663);
                r5 = 1;
                BagMenu_TrySortItem(bagView, 1);
                BagMenu_SetRunFunc(bagView, BagMenu_PrintItemSortEnd);
                break;
            
            case 2:
                GFL_SndSEPlay(0x663);
                BagMenu_TrySortItem(bagView, 2);
                BagMenu_SetRunFunc(bagView, BagMenu_PrintItemSortEnd);
                r5 = 1;
                break;
            
            case 3:
                GFL_SndSEPlay(0x663);
                BagMenu_TrySortItem(bagView, 3);
                BagMenu_SetRunFunc(bagView, BagMenu_PrintItemSortEnd);
                r5 = 1;
                break;
            
            case 4:
                GFL_SndSEPlay(0x663);
                BagMenu_TrySortItem(bagView, 4);
                BagMenu_SetRunFunc(bagView, BagMenu_PrintItemSortEnd);
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
                BagMenu_PopUpOptionMenuSetting(bagView, 1);
                Oam_EnableOamAnim(bagView->scrollBarOam, 1);
                BagMenu_KeyPadMain(bagView);
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

void BagMenu_PrintItemSortEnd(BagView* bagView)
{
    switch (bagView->sortOptionType)
    {
    case 0:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x8C, bagView->stringBuff2);
        break;

    case 1:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x9E, bagView->stringBuff2);
        break;

    case 2:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x8d, bagView->stringBuff2);
        break;

    case 3:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x8E, bagView->stringBuff2);
        break;

    case 4:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x8f, bagView->stringBuff2);
        break;
    
    default:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x97, bagView->stringBuff2);
        break;

    }
    
    BagMenu_PrintBagMessage(bagView, 0);
    BagMenu_SetRunFunc(bagView, ovy142_219d3d8);
}

void BagMenu_PrintSeachItemEnd(BagView* bagView)
{
    switch (bagView->unk1F50)
    {
    case 0:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x9D, bagView->stringBuff1);
        StringSetNumber(bagView->wordSetSystem, 1, BagMenu_GetPocketItemAmount(bagView), 3, 0, 1);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        break;

    case 1:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x94, bagView->stringBuff1);
        StringSetNumber(bagView->wordSetSystem, 1, BagMenu_GetPocketItemAmount(bagView), 3, 0, 1);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 0);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        break;

    case 2:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x94, bagView->stringBuff1);
        StringSetNumber(bagView->wordSetSystem, 1, BagMenu_GetPocketItemAmount(bagView), 3, 0, 1);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 1);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        break;
    
    case 3:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x94, bagView->stringBuff1);
        StringSetNumber(bagView->wordSetSystem, 1, BagMenu_GetPocketItemAmount(bagView), 3, 0, 1);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 2);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        break;

    case 4:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x94, bagView->stringBuff1);
        StringSetNumber(bagView->wordSetSystem, 1, BagMenu_GetPocketItemAmount(bagView), 3, 0, 1);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 3);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        break;
    
    case 5:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x94, bagView->stringBuff1);
        StringSetNumber(bagView->wordSetSystem, 1, BagMenu_GetPocketItemAmount(bagView), 3, 0, 1);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 4);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        break;
    default:
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x97, bagView->stringBuff2);
        break;

    }
    BagMenu_PrintBagMessage(bagView, 0);
    BagMenu_SetRunFunc(bagView, ovy142_219d3d8);
}

extern void ovy142_219d2bc(BagView*);
extern void ovy142_219d120(BagView*);

void ovy142_219d0c8(BagView* bagView)
{
    if (!sub_0204C560(bagView->unk740))
    {
        Oam_SetOamAnimIndex(bagView->unk740, 2);
        Oam_EnableOamAnim(bagView->scrollBarOam, 0);
        GFL_MsgDataLoadStrbuf(bagView->msgData, 147, bagView->stringBuff2);
        BagMenu_PrintBagMessage(bagView, 0);
        BagMenu_PopUpOptionMenuSetting(bagView, 0);
        ovy142_219d120(bagView);
        BagMenu_SetRunFunc(bagView, ovy142_219d2bc);
    }
}

extern const u8 data_021A08F0[7];
void ovy142_219d120(BagView* bagView);
extern void ovy142_219d188(BagView*, u8*);
extern void sub_020484B4(int);
extern int sub_020484D4(int);
extern void GFL_BGSysLoadScr(int);
extern void ovy142_219f284(BagView*, u8);

void ovy142_219d120(BagView* bagView)
{
    int v6;       // r1
    int v7;       // r4
    int v8;       // r0
    int v9;

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
    v9 = bagView->unk794.winData;
    sub_020484B4(v9);
    GFL_BGSysLoadScr(sub_020484D4(v9));
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
                    GFL_SndSEPlay(0x663);
                    ovy142_219bd2c(bagView, 0);
                    BagMenu_SetRunFunc(bagView, BagMenu_PrintSeachItemEnd);
                    r5 = 1;
                    break;
                case 0:
                    GFL_SndSEPlay(0x663);
                    ovy142_219bd2c(bagView, 1);
                    BagMenu_SetRunFunc(bagView, BagMenu_PrintSeachItemEnd);
                    r5 = 1;
                    break;
                case 1:
                    GFL_SndSEPlay(0x663);
                    ovy142_219bd2c(bagView, 2);
                    BagMenu_SetRunFunc(bagView, BagMenu_PrintSeachItemEnd);
                    r5 = 1;
                    break;
                case 2:
                    GFL_SndSEPlay(0x663);
                    ovy142_219bd2c(bagView, 3);
                    BagMenu_SetRunFunc(bagView, BagMenu_PrintSeachItemEnd);
                    r5 = 1;
                    break;
                case 3:
                    GFL_SndSEPlay(0x663);
                    ovy142_219bd2c(bagView, 4);
                    BagMenu_SetRunFunc(bagView, BagMenu_PrintSeachItemEnd);
                    r5 = 1;
                    break;
                case 4:
                    GFL_SndSEPlay(0x663);
                    ovy142_219bd2c(bagView, 5);
                    BagMenu_SetRunFunc(bagView, BagMenu_PrintSeachItemEnd);
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
                    BagMenu_PopUpOptionMenuSetting(bagView, 1);
                    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
                    BagMenu_KeyPadMain(bagView);
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

    if ((GCTX_HIDGetPressedKeys() & (KEY_B | KEY_A)) != 0)
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
    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
    BagMenu_PopUpOptionMenuSetting(bagView, 1);
    BagMenu_KeyPadMain(bagView);
}

int ovy142_219d43c(BagView *a1, u8 a2)
{
    int v3; // r1

    v3 = a1->bagMode;
    if (v3 == BAG_MODE_LINK_BATTLE_ROOM || v3 == BAG_MODE_UNION_ROOM)
        return 0;
    if (sub_020175E4(a1->m_GameData) == 1 && a2 == 4)
        return 0;
    return 1;
}

void ovy142_219D464(BagView* a1)
{
    BagMenu_KeyPadMain(a1);
}

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

void ovy142_219d4c0(void);
extern void sub_0204476C(int, BGSetup*, int);
extern void sub_02045708(int);
extern void GFL_BGSysLoadScr(int);
extern void sub_02044C98(int, u8);
extern void sub_02045118(int, int, int, int);

void ovy142_219d4c0(void)
{
    BGSetup v7; // [sp+C0h] [bp-28h] BYREF
    BGSetup v6;  // [sp+A0h] [bp-48h] BYREF
    BGSetup v5;  // [sp+80h] [bp-68h] BYREF
    BGSetup v4;  // [sp+60h] [bp-88h] BYREF
    BGSetup v3;  // [sp+40h] [bp-A8h] BYREF
    BGSetup v2;  // [sp+20h] [bp-C8h] BYREF
    BGSetup v1;  // [sp+0h] [bp-E8h] BYREF

    reg_GX_POWCNT = reg_GX_POWCNT & 0xffff7fff;
    v7 = data_21A1040[6];
    sub_0204476C(0, &v7, 0);
    sub_02045708(0);
    GFL_BGSysLoadScr(0);
    sub_02044C98(0, 0);
    v6 = data_21A1040[3];
    sub_0204476C(1, &v6, 0);
    sub_02045708(1);
    GFL_BGSysLoadScr(1);
    sub_02044C98(1, 0);
    v5 = data_21A1040[4];
    sub_0204476C(2, &v5, 0);
    sub_02045708(2);
    GFL_BGSysLoadScr(2);
    sub_02044C98(2, 0);
    v4 = data_21A1040[5];
    sub_0204476C(3, &v4, 0);
    sub_02045118(3, 0, 1, 0);
    sub_02045708(3);
    GFL_BGSysLoadScr(3);
    sub_02044C98(3, 0);
    v3 = data_21A1040[2];
    sub_0204476C(4, &v3, 0);
    sub_02044C98(4, 0);
    GFL_BGSysLoadScr(4);
    v2 = data_21A1040[0];
    sub_0204476C(5, &v2, 0);
    sub_02044C98(5, 0);
    v1 = data_21A1040[1];
    sub_0204476C(6, &v1, 0);
    sub_02044C98(6, 0);
    sub_02045118(6, 0, 1, 0);
    sub_02045738(6);
}


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

void BagMenu_LoadBagBackGround(BagView *bagView, void *fileHandle)
{
    int backgroundNCLR;
    int gender;
    int v7;
    int backgroundNCGR;
    int backgroundNSCR;

    gender = MyStatus_GetTrainerGender(bagView->unk8);
    if (!gender)
    {
        backgroundNCLR = 4;
        backgroundNCGR = 3;
        backgroundNSCR = 5;
    }
    else if (gender == 1)
    {
        backgroundNCLR = 1;
        backgroundNCGR = 0;
        backgroundNSCR = 2;
    }
    GFL_G2DIOLoadArcNCLRDefault(fileHandle, backgroundNCLR, 0, 0, 32, bagView->heapId);
    v7 = GFL_BGSysLoadArcNCGRDynamic(fileHandle, backgroundNCGR, 0, 0, 0, bagView->heapId);
    bagView->unk818 = v7;
    GFL_G2DIOLoadNSCRSync(fileHandle, backgroundNSCR, 0, 0, (u16)v7, 0, 0, bagView->heapId);
}

void BagMenu_LoadBagPocketSpriteResource(BagView *bagView, void *fileHandle)
{
    int nclrFileId;
    int gender;
    int ncgrFileId;
    int ncerFileId;
    int nanrFileId;
    
    gender = MyStatus_GetTrainerGender(bagView->unk8);
    if (gender == 0)
    {
        nclrFileId = 16;
        ncgrFileId = 15;
        ncerFileId = 14;
        nanrFileId = 13;
    }
    else if(gender == 1)
    {
        nclrFileId = 12;
        ncgrFileId = 11;
        ncerFileId = 10;
        nanrFileId = 9;
    }
    bagView->bagPocketNCLR = Oam_LoadNCLRFile(fileHandle, nclrFileId, 0, 192, 0, 5, bagView->heapId);
    bagView->bagPocketNCGR = Oam_LoadNCGRFile(fileHandle, ncgrFileId, 0, 0, bagView->heapId);
    bagView->bagPocketNCER = Oam_LoadNCERFile(fileHandle, ncerFileId, nanrFileId, bagView->heapId);
}

extern int unk_21A16A4[4] = {0};
extern int unk_21A103C[4] = {0};

typedef struct
{
    s16 x;
    s16 y;
    u16 anim;
    u8 flag;
    u8 unk;
}OAM_TEMP;

extern int BmpWin_InitAllocator(u16);
extern void sub_020232D0(void);
extern void GFL_BGSysCreate(u16);
extern void GFL_BGSysSetVRAMBanks(int*);
extern void Oam_CreateSystem(const OamSystemInitTemplate*, int*, u16);
extern void GFL_BGSysSetLCDConfig(BgInit*);
extern void GFL_BGSysSetEnabledBGsA(int);
extern void GFL_BGSysSetEnabledBGsB(int);
extern void sub_020232D8(void);
extern u32 LoadCursorImageEndOfHeap(int, int, int, u16);
extern void GFL_G2DIOLoadArcNCLR(void* fileHandle, int, int, int, int, int, u16);
extern void GFL_BGSysLoadNCLRDefault(int, int, int, int, int, u16);
extern int sub_0204BF1C(int, int, u16);
extern void GFL_BGSysSetBGEnabledB(int, int);
extern void GFL_BGSysSetBGEnabledA(int, int);
extern void ovy142_219ed8c(BagView*);
extern int GetDefaultUINarcIdx(void);
extern int sub_0202D7E4();
extern int sub_0202D7F8(int);
extern int sub_0202D7FC(int);
extern int sub_0202D80C(u8);
extern int sub_0202D7F4(u8);
extern int Oam_CreateSprite(int, int, int, int, OAM_TEMP *, int, u16);
extern int sub_0202D800(u8);
extern void sub_0204C378(int, int, int);
extern void sub_0204C124(int, int);
extern void sub_0204C5C8(int, int);
extern int sub_0202D7E8(u8);
extern int GFL_FontGetBlockWidth(int, int, int);

void ovy142_219d7a8(BagView *bagView)
{
    BgInit v43;
    OAM_TEMP newtemp[3];
    int v28;          // r0
    int v30;          // r0
    void *v31;          // r6
    void *file;           // r5
    int v8;           // r0
    int v9;           // r0
    void *v11;          // r5
    int v12;          // r0
    int v14;          // r0
    int v19;          // r0
    int v20;          // r0
    int v23;

    void *v33;
    *(u16*)(0x4000050) = 0;
    GFL_BGSysCreate(bagView->heapId);
    BmpWin_InitAllocator(bagView->heapId);
    sub_020232D0();
    GFL_BGSysSetVRAMBanks(unk_21A16A4);
    Oam_CreateSystem(&data_021A0FFC, unk_21A16A4, bagView->heapId);

    v43 = data_021A1018;
    GFL_BGSysSetLCDConfig(&v43);
    GFL_BGSysSetEnabledBGsA(0);
    GFL_BGSysSetEnabledBGsB(0);
    ovy142_219d4c0();
    sub_020232D8();
    bagView->unk88C = LoadCursorImageEndOfHeap(3, 13, 0, bagView->heapId);
    
    file = GFL_ArcSysCreateFileHandle(87, bagView->heapId);
    GFL_G2DIOLoadArcNCLRDefault(file, 8, 4, 0, 0, bagView->heapId);
    if (!MyStatus_GetTrainerGender(bagView->unk8))
        GFL_G2DIOLoadArcNCLR(file, 8, 4, 32, 0, 32, bagView->heapId);
    v8 = GFL_BGSysLoadArcNCGRDynamic(file, 6, 4, 0, 0, bagView->heapId);
    bagView->unk81C = v8;
    GFL_G2DIOLoadNSCRSync(file, 7, 4, 0, (u16)v8, 0, 0, bagView->heapId);
    BagMenu_LoadBagBackGround(bagView, file);
    v9 = GFL_BGSysLoadArcNCGRDynamic(file, 17, 5, 0, 0, bagView->heapId);
    bagView->unk820 = v9;
    if (bagView->itemPocket == BAG_POCKET_FREE_SPACE)
        GFL_G2DIOLoadNSCRSync(file, 24, 5, 0, (u16)v9, 0, 0, bagView->heapId);
    else
        GFL_G2DIOLoadNSCRSync(file, 23, 5, 0, (u16)v9, 0, 0, bagView->heapId);
    BagMenu_LoadBagPocketSpriteResource(bagView, file);
    
    bagView->unk828 = GFL_BGSysLoadArcNCGRDynamic(file, 33, 3, 0, 0, bagView->heapId);
    
    GFL_G2DIOLoadArcNCLRDefault(file, 34, 0, 96, 32, bagView->heapId);
    GFL_ArcToolFree(file);

    GFL_BGSysLoadNCLRDefault(23, 5, 0, 384, 32, bagView->heapId);
    bagView->spriteGroup = sub_0204BF1C(54, 0, bagView->heapId);
    GFL_BGSysSetBGEnabledB(16, 1);
    GFL_BGSysSetBGEnabledA(16, 1);

    v11 = GFL_ArcSysCreateFileHandle(82, bagView->heapId);
    GFL_G2DIOLoadArcNCLRDefault(v11, 27, 0, 256, 32, bagView->heapId);
    v12 = GFL_BGSysLoadArcNCGRDynamic(v11, 28, 1, 0, 0, bagView->heapId);
    bagView->unk824 = v12;
    GFL_G2DIOLoadNSCRSync(v11, 29, 1, 0, ((u16)v12 + (1 << 15)), 0, 0, bagView->heapId);
    GFL_BGSysLoadScr(1);
    bagView->unk564 = Oam_LoadNCLRFile(v11, 19, 0, 352, 0, 3, bagView->heapId);
    bagView->unk56C = Oam_LoadNCGRFile(v11, 20, 0, 0, bagView->heapId);
    bagView->unk57C = Oam_LoadNCERFile(v11, 23, 26, bagView->heapId);
    bagView->unk570 = Oam_LoadNCGRFile(v11, 175, 0, 0, bagView->heapId);
    bagView->unk580 = Oam_LoadNCERFile(v11, 174, 173, bagView->heapId);
    GFL_ArcToolFree(v11);

    ovy142_219ed8c(bagView);
    v14 = GetDefaultUINarcIdx();
    v33 = GFL_ArcSysCreateFileHandle(v14, bagView->heapId);
    
    bagView->unk5F0 = Oam_LoadNCLRFile(v33, sub_0202D7E4(), 1, 128, 0, 3, bagView->heapId);
    bagView->unk5F4 = Oam_LoadNCERFile(v33, sub_0202D7F8(2), sub_0202D7FC(2), bagView->heapId);
    for (u32 i = 0; i < 3; i++)
    {
        v19 = sub_0202D80C((u8)i);
        v20 = Oam_LoadNCGRFile(v33, v19, 0, 1, bagView->heapId);
        bagView->unk5F8[i] = v20; 
    }

    for (u32 i = 0; i < 0x11; i++)
    {
        v23 = sub_0202D7F4((u8)i);
        bagView->unk5AC[i] = Oam_LoadNCGRFile(v33, v23, 0, 1, bagView->heapId);
    }
    GFL_ArcToolFree(v33);
    
    newtemp[2].x = 80;
    newtemp[2].y = 0xb8;
    newtemp[2].flag = 1;
    newtemp[2].unk = 1;
    newtemp[2].anim = 0;
    for (u32 i = 0; i < 3; i++)
    {
        bagView->unk6D4[i] = Oam_CreateSprite(
            bagView->spriteGroup,
            bagView->unk5F8[i],
            bagView->unk5F0,
            bagView->unk5F4,
            &newtemp[2],
            1,
            bagView->heapId);
        v28 = sub_0202D800((u8)i);
        sub_0204C378(bagView->unk6D4[i], v28, 1);
        sub_0204C124(bagView->unk6D4[i], 0);
        sub_0204C5C8(bagView->unk6D4[i], 0);
    }
    newtemp[1].x = 0x52;
    newtemp[1].y = 0xa5;
    newtemp[1].flag = 1;
    newtemp[1].unk = 1;
    newtemp[1].anim = 0;
    for (u32 i = 0; i < 0x11; i++)
    {
        bagView->unk6E0[i] = Oam_CreateSprite(
            bagView->spriteGroup,
            bagView->unk5AC[i],
            bagView->unk5F0,
            bagView->unk5F4,
            &newtemp[1],
            1,
            bagView->heapId);
        v30 = sub_0202D7E8((u8)i);
        sub_0204C378(bagView->unk6E0[i], v30, 1);
        sub_0204C124(bagView->unk6E0[i], 0);
        sub_0204C5C8(bagView->unk6E0[i], 0);
    }
    v31 = GFL_ArcSysCreateFileHandle(87, bagView->heapId);
    bagView->unk590 = Oam_LoadNCLRFile(v31, 39, 0, 128, 0, 2, bagView->heapId);
    bagView->unk594 = Oam_LoadNCGRFile(v31, 38, 0, 0, bagView->heapId);
    bagView->unk59C = Oam_LoadNCERFile(v31, 37, 36, bagView->heapId);
    GFL_ArcToolFree(v31);
    
    newtemp[0].flag = 10;
    newtemp[0].unk = 1;
    newtemp[0].x = 146;
    newtemp[0].y = 176;
    newtemp[0].anim = 0;
    bagView->unk744 = Oam_CreateSprite(
        bagView->spriteGroup,
        bagView->unk594,
        bagView->unk590,
        bagView->unk59C,
        &newtemp[0],
        0,
        bagView->heapId);
    Oam_EnableOamAnim(bagView->unk744, 1);
    sub_0204C124(bagView->unk744, 1);
    sub_0204C5C8(bagView->unk744, 0);
    ovy142_219ff60(bagView);
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

    v5 = a1->itemIconOam;
    if (v5)
        sub_0204C124(v5, a2);
    v6 = BagMenu_GetSelectSlot(a1);
    v7 = BagMenu_GetBagItemDataBySlot(a1, v6);
    result = Item_GetTmHmMove(v7->itemid);
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
    int move;              // [sp+Ch] [bp-1Ch]
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

    v4 = BagMenu_GetSelectSlot(a1);
    v5 = BagMenu_GetBagItemDataBySlot(a1, v4);
    v6 = v5;
    if (v5 == 0 || v5->itemid == 0)
    {
        ovy142_219dda0(a1, 0);
        return;
    }
    ovy142_219dda0(a1, 1);
    v8 = BmpWin_GetBitmap(a1->unk76C.winData);
    BmpWin_BitmapFill(v8, 0);
    v9 = BmpWin_GetBitmap(a1->unk754.winData);
    BmpWin_BitmapFill(v9, 0);
    v10 = BmpWin_GetBitmap(a1->unk75C.winData);
    BmpWin_BitmapFill(v10, 0);
    v11 = BmpWin_GetBitmap(a1->unk764.winData);
    BmpWin_BitmapFill(v11, 0);
    move = Item_GetTmHmMove(v6->itemid);
    v15 = BagSave_GetExistingItemPocket(a1->bagSave, v6->itemid);
    if (!move)
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 134, a1->stringBuff1);
        BagMenu_LoadItemNameToStrbuf(a1, 0, v6->itemid);
        GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, &a1->unk754, a1->stringBuff2, 0, 4, 15808);
        if (ovy142_21a03ac((u8)v15))
        {
            GFL_MsgDataLoadStrbuf(a1->msgData, 131, a1->stringBuff1);
            StringSetNumber(a1->wordSetSystem, 0, v6->num, 3, 0, 1);
            GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
            BagMenu_DrawStringToBmpWin(a1, &a1->unk75C, a1->stringBuff2, 0, 4, 15808);
        }
        else
        {
            BmpWin_FlushChar(a1->unk75C.winData);
        }
        sub_020484B4(a1->tmhmTextBmpWin.winData);
    }
    else
    {
        v12 = Item_GetTmNo(v6->itemid);
        if (v12 == 255)
        {
            GFL_MsgDataLoadStrbuf(a1->msgData, 69, a1->stringBuff1);
            v13 = Item_GetTmHmIndex(v6->itemid);
            StringSetNumber(a1->wordSetSystem, 0, v13 + 1, 2, 2, 1);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(a1->msgData, 71, a1->stringBuff1);
            StringSetNumber(a1->wordSetSystem, 0, v12 + 1, 2, 2, 1);
        }
        LoadMoveNameToStrbuf(a1->wordSetSystem, 1, move);
        GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, &a1->unk754, a1->stringBuff2, 0, 4, 15808);
        ovy142_219f4b0(a1, move);
        BmpWin_FlushChar(a1->unk75C.winData);
    }
    
    if (a1->itemPocket == BAG_POCKET_FREE_SPACE)
    {
        BagMenu_LoadBagPocketNameToStrbuf(a1, 0, v15);
        GFL_MsgDataLoadStrbuf(a1->msgData, 139, a1->stringBuff1);
        GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
        v14 = 0x60 - GFL_FontGetBlockWidth(a1->stringBuff2, a1->font, 0);
        u16 width = v14 / 2; 
        BagMenu_DrawStringToBmpWin(a1, &a1->unk76C, a1->stringBuff2, width, 0, 15808);
    }
    else
    {
        sub_020484B4(a1->unk76C.winData);
        BmpWin_FlushChar(a1->unk76C.winData);
    }
    sub_020267C0(a1->stringBuff1, v6->itemid, a1->heapId);
    BagMenu_DrawStringToBmpWin(a1, &a1->unk764, a1->stringBuff1, 0, 4, 15808);
    ovy142_21a0134(&a1->unk76C);
    ovy142_21a0134(&a1->unk754);
    ovy142_21a0134(&a1->unk75C);
    ovy142_21a0134(&a1->unk764);
    BagMenu_LoadItemIconOam(a1, v6->itemid);
}

void ovy142_219e120(BagView *a1)
{
    ovy142_219dda0(a1, 0);
    sub_020484B4(a1->tmhmTextBmpWin.winData);
    for (u32 i = 0; i < 3; i++)
        sub_0204C124(a1->unk6D4[i], 0);

    for (u32 i = 0; i < 0x11; i++)
        sub_0204C124(a1->unk6E0[i], 0);
    
}

extern void sub_0204C108(int);
extern void sub_0204B98C(int);
extern void sub_0204BCD0(int);
extern void GFL_BitmapFree(int);
extern int sub_0204BF98(int);
extern int sub_0204B758(int);
extern void sub_0204BE64(int);

void ovy142_219e168(BagView *a1)
{
    int i;  // r4
    int v3; // r0

    BmpWin_Free(a1->unk76C.winData);
    BmpWin_Free(a1->unk754.winData);
    BmpWin_Free(a1->unk764.winData);
    BmpWin_Free(a1->unk75C.winData);
    BmpWin_Free(a1->tmhmTextBmpWin.winData);
    BmpWin_Free(a1->unk774.winData);
    BmpWin_Free(a1->unk78C.winData);
    BmpWin_Free(a1->unk794.winData);
    sub_0204C108(a1->scrollBarOam);
    if (a1->itemIconOam)
    {
        sub_0204C108(a1->itemIconOam);
        sub_0204B98C(a1->unk554);
        sub_0204BCD0(a1->unk550);
    }
    sub_0204BE64(a1->unk558);
    for (i = 0; i < 8; ++i)
        GFL_BitmapFree(a1->unk624[i]);
    v3 = sub_0204BF98(a1->spriteGroup);
    sub_0204B758(v3);
}

void BagMenu_LoadBagBackDefaultText(BagView *a1)
{
    int v2; // r0

    v2 = BmpWin_GetBitmap(a1->unk794.winData);
    BmpWin_BitmapFill(v2, 0);
    if (ovy142_219d22c(a1) > 2 && a1->itemPocket == BAG_POCKET_FREE_SPACE)
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 159, a1->stringBuff1);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 135, a1->stringBuff1);
    }
    
    BagMenu_DrawStringToBmpWin(a1, &(a1->unk794), a1->stringBuff1, 0, 4, 0x3DC0);
}


void ovy142_219e284(BagView *a1)
{
    void *v2;     // r7

    int result; // r0

    a1->unk794.winData = BmpWin_CreateDynamic(3, 18, 9, 12, 3, 3, 1);
    BagMenu_LoadBagBackDefaultText(a1);
    sub_020484B4(a1->unk794.winData);
    a1->unk774.winData = BmpWin_CreateDynamic(3, 17, 13, 11, 2, 3, 1);
    a1->unk78C.winData = BmpWin_CreateDynamic(3, 17, 15, 11, 2, 3, 1);
    a1->tmhmTextBmpWin.winData = BmpWin_CreateDynamic(6, 0, 19, 32, 5, 0, 1);
    a1->unk754.winData = BmpWin_CreateDynamic(6, 7, 5, 18, 3, 0, 1);
    a1->unk75C.winData = BmpWin_CreateDynamic(6, 20, 8, 6, 3, 0, 1);
    a1->unk764.winData = BmpWin_CreateDynamic(6, 2, 12, 29, 7, 0, 1);
    a1->unk76C.winData = BmpWin_CreateDynamic(6, 10, 1, 12, 2, 0, 1);
    BmpWin_FlushMap(a1->unk76C.winData);
    BmpWin_FlushMap(a1->unk754.winData);
    BmpWin_FlushMap(a1->unk75C.winData);
    BmpWin_FlushMap(a1->unk764.winData);
    BmpWin_FlushMap(a1->tmhmTextBmpWin.winData);
    v2 = GFL_ArcSysCreateFileHandle(25, a1->heapId);
    a1->unk558 = Oam_LoadNCERFile(v2, 1, 0, a1->heapId);
    GFL_ArcToolFree(v2);

    GFL_MsgDataLoadStrbuf(a1->msgData, 102, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->tmhmTextBmpWin, a1->stringBuff1, 8, 4, 0x3DC0);
    GFL_MsgDataLoadStrbuf(a1->msgData, 93, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->tmhmTextBmpWin, a1->stringBuff1, 8, 24, 0x3DC0);
    GFL_MsgDataLoadStrbuf(a1->msgData, 91, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->tmhmTextBmpWin, a1->stringBuff1, 112, 4, 0x3DC0);
    GFL_MsgDataLoadStrbuf(a1->msgData, 92, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->tmhmTextBmpWin, a1->stringBuff1, 112, 24, 0x3DC0);
    GFL_MsgDataLoadStrbuf(a1->msgData, 90, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->tmhmTextBmpWin, a1->stringBuff1, 208, 4, 0x3DC0);

    result = sub_0203D554();
    if (!result)
        ovy142_219de0c(a1);

}
void ovy142_219e4b0(BagView *a1);

void ovy142_219e4b0(BagView *a1)
{
    if (a1->itemIconOam)
    {
        sub_0204C108(a1->itemIconOam);
        sub_0204B98C(a1->unk554);
        sub_0204BCD0(a1->unk550);
        a1->itemIconOam = 0;
    }
}

extern int Item_GetItemIconResourceId(u16, int);

void BagMenu_LoadItemIconOam(BagView *bagView, int item)
{
    void *file;
    int itemNCGR;
    int itemNCLR;
    OAM_TEMP itemIconTemplate;

    if (bagView->itemIconOam)
        ovy142_219e4b0(bagView);

    file = GFL_ArcSysCreateFileHandle(ARC_ITEM_PICTURE, bagView->heapId);
    itemNCGR = Item_GetItemIconResourceId(item, 2);
    bagView->unk550 = Oam_LoadNCLRFile(file, itemNCGR, 1, 0, 0, 1, bagView->heapId);
    itemNCLR = Item_GetItemIconResourceId(item, 1);
    bagView->unk554 = Oam_LoadNCGRFile(file, itemNCLR, 0, 1, bagView->heapId);
    GFL_ArcToolFree(file);

    itemIconTemplate.x = 132;
    itemIconTemplate.y = 80;
    itemIconTemplate.anim = 0;
    itemIconTemplate.flag = 0;
    itemIconTemplate.unk = 0;

    bagView->itemIconOam = Oam_CreateSprite(
        bagView->spriteGroup,
        bagView->unk554,
        bagView->unk550,
        bagView->unk558,
        &itemIconTemplate,
        1,
        bagView->heapId);
    Oam_EnableOamAnim(bagView->itemIconOam, 1);
    sub_0204C124(bagView->itemIconOam, 1);
    sub_0204C5C8(bagView->itemIconOam, 0);
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


void BagMenu_LoadBagItemBarResource(BagView *a1)
{
    void *fileHandle; // r4

    fileHandle = GFL_ArcSysCreateFileHandle(87, a1->heapId);
    a1->barLeftIconNCLR = Oam_LoadNCLRFile(fileHandle, 32, 0, 448, 0, 1, a1->heapId);
    a1->barLeftIconNCGR = Oam_LoadNCGRFile(fileHandle, 31, 0, 0, a1->heapId);
    a1->barLeftIconNCER = Oam_LoadNCERFile(fileHandle, 30, 29, a1->heapId);

    a1->cursorNCLR = Oam_LoadNCLRFile(fileHandle, 28, 0, 96, 0, 1, a1->heapId);
    a1->cursorNCGR = Oam_LoadNCGRFile(fileHandle, 27, 0, 0, a1->heapId);
    a1->cursorNCER = Oam_LoadNCERFile(fileHandle, 26, 25, a1->heapId);
    
    for (int i = 0; i < 8; i++)
    {
        a1->unk624[i] = sub_02046E28(12, 2, 32, a1->heapId);
        a1->itemBarNCGR[i] = Oam_LoadNCGRFile(fileHandle, 20, 0, 0, a1->heapId);
    }
    MyStatus_GetTrainerGender(a1->unk8);
    a1->unk598 = Oam_LoadNCLRFile(fileHandle, 21, 0, 0, 0, 3, a1->heapId);
    a1->unk578 = Oam_LoadNCERFile(fileHandle, 19, 18, a1->heapId);
    GFL_ArcToolFree(fileHandle);
}


void ovy142_219e6f8(BagView *a1)
{
    OAM_TEMP temp[3];

    temp[2].x = 248;
    temp[2].y = 26;
    temp[2].flag = 1;
    temp[2].unk = 2;
    temp[2].anim = 0;
    
    a1->scrollBarOam = Oam_CreateSprite(
        a1->spriteGroup,
        a1->cursorNCGR,
        a1->cursorNCLR,
        a1->cursorNCER,
        &temp[2],
        0,
        a1->heapId);
    sub_0204C124(a1->scrollBarOam, 1);
    Oam_EnableOamAnim(a1->scrollBarOam, 1);
    sub_0204C5C8(a1->scrollBarOam, 0);
    ovy142_219ed3c(a1);
    temp[1].x = 140;
    temp[1].y = 48;
    
    temp[1].flag = 1;
    temp[1].unk = 2;
    temp[1].anim = 1;
    
    a1->unk6B4 = Oam_CreateSprite(
        a1->spriteGroup,
        a1->cursorNCGR,
        a1->cursorNCLR,
        a1->cursorNCER,
        &temp[1],
        0,
        a1->heapId);
    sub_0204C5C8(a1->unk6B4, 0);
    sub_0204C124(a1->unk6B4, 1);
    Oam_EnableOamAnim(a1->unk6B4, 1);
    for (int i = 0; i < 8; i++)
    {
        temp[0].x = 140;
        temp[0].y = 24 * i;
        temp[0].flag = 10;
        temp[0].unk = 3; 
        temp[0].anim = 0;
        a1->unk644[i] = Oam_CreateSprite(
            a1->spriteGroup,
            a1->itemBarNCGR[i],
            a1->unk598,
            a1->unk578,
            &temp[0],
            0,
            a1->heapId);
        temp[0].x -= 24;
        temp[0].anim = 1;
        a1->unk684[i] = Oam_CreateSprite(
            a1->spriteGroup,
            a1->barLeftIconNCGR,
            a1->barLeftIconNCLR,
            a1->barLeftIconNCER,
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
int BagMenu_CheckIsHmItem(u16 a1);

int BagMenu_CheckIsHmItem(u16 a1)
{
    int v2; // r0

    if (sub_02026A94(a1) == 1)
    {
        v2 = Item_GetTmHmMove(a1);
        
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
void ovy142_219e924(BagView *a1)
{
    ItemTable *v7; // r0
    int v10;       // r0
    int v2;        // r4
    int i;
    void *file;
    void *v16;
    int v15;
    int v11;
    int at;
    
    if (!BagMenu_GetPocketItemAmount(a1))
    {
        BagMenu_LoadBagBackDefaultText(a1);
        sub_020484B4(a1->unk794.winData);
        ovy142_21a0134(&a1->unk794);
    }
    else
    {
        v2 = a1->unk794.winData;
        sub_020484B4(v2);
        GFL_BGSysLoadScr(sub_020484D4(v2));
    }

    if (a1->unk838 != a1->unk834)
    {
        file = Item_ArcHandleCreate(a1->heapId);
        for (i = 0; i < 8; ++i) 
        {
            a1->unk664[i] = 9; 
            if (a1->unk834 + i >= 0)
            {
                int slot = a1->unk834 + i;
                v7 = BagMenu_GetBagItemDataBySlot(a1, slot);
                if (v7 && v7->itemid)
                {
                    v16 = Item_ArcHandleReadFile(file, v7->itemid, a1->heapId);
                    v15 = Item_GetParam(v16, 15);
                    at = data_021A0FE6[i];
                    if (!at)
                        v10 = BagMenu_CheckIsHmItem(v7->itemid) == 1 ? 6317 : 2093;
                    else
                        v10 = BagMenu_CheckIsHmItem(v7->itemid) == 1 ? 8429 : 4205;
                    BmpWin_BitmapFill(a1->unk624[i], 13);
                    GFL_MsgDataLoadStrbuf(a1->msgData, 130, a1->stringBuff1);
                    v11 = Item_GetTmHmMove(v7->itemid);
                    if (!v11)
                        BagMenu_LoadItemNameToStrbuf(a1, 0, v7->itemid);
                    else
                        LoadMoveNameToStrbuf(a1->wordSetSystem, 0, v11);
                    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
                    sub_02021D28(a1->unk624[i], 0, 0, a1->stringBuff2, a1->font, v10);

                    if (a1->itemPocket == 1)
                    {
                        a1->unk664[i] = 8;
                    }
                    else if (a1->itemPocket == 3)
                    {
                        a1->unk664[i] = 8;
                    }
                    else if (v15 == 4)
                    {
                        a1->unk664[i] = 3;
                    }
                    else if (v15 == 5)
                    {
                        a1->unk664[i] = 4;
                    }
                    else if (v15 == 1)
                    {
                        a1->unk664[i] = 5;
                    }
                    else
                    {
                        if (Item_GetTmNo(v7->itemid) != 255)
                        {
                            a1->unk664[i] = 7;
                        }
                        else
                        {
                            if (Item_GetTmHmIndex(v7->itemid) != 255)
                            {
                                a1->unk664[i] = 6;
                            }
                            else
                            {
                                if (Item_GetParam(v16, 4))
                                {
                                    if (ovy142_219c0e8(a1, v7->itemid) == 1)
                                        a1->unk664[i] = 0;
                                    else
                                        a1->unk664[i] = 1;
                                }
                                else
                                {
                                    a1->unk664[i] = 8;
                                }
                            }
                        }
                        
                    }

                    GFL_HeapFree(v16);
                }
            }
        }
        GFL_ArcToolFree(file);
        a1->unk890 = 1;
    }
}

extern void Oam_GetSpritePosData(int, u16*, int);
extern int Oam_SetSpritePosData(int, u16*, int);
extern void sub_0204C504(int, int);

void ovy142_219eb54(BagView *a1)
{
    int v5;       // r0
    int v6;      // r1
    u16 v8[2]; // [sp+0h] [bp-18h] BYREF

    ovy142_219fd4c(a1, 0);
    Oam_GetSpritePosData(a1->unk6B4, v8, 0xFFFF);
    v8[1] = 24 * (a1->posNow + 1);
    v5 = Oam_SetSpritePosData(a1->unk6B4, v8, 0xFFFF);
    if (!sub_0203D554())
        ovy142_219fd4c(a1, 1);
    sub_020352B0(a1->unk8A4);
    v6 = BagMenu_GetPocketItemAmount(a1) >= 7;
    sub_0204C124(a1->scrollBarOam, v6);
    sub_0204C504(a1->unk6B4, 0);
    sub_0204C504(a1->scrollBarOam, 0);
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
        v3 = sub_0204BB80(a1->itemBarNCGR[i], 0);
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
                    Oam_SetOamAnimIndex(a1->unk684[i], (u16)a1->unk664[i]);
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

void BagMenu_TouchScrollBarUpdatePos(BagView *bagView)
{
    u32 touchX;
    u32 touchY;
    u16 oamPos[2];

    if (sub_0203DA84(&touchX, &touchY) == 1)
    {
        if (touchY < 0x1A)
        {
            touchY = 0x1a;
        }
        else if (touchY > 0x8E)
        {
            touchY = 0x8e;
        }

        Oam_GetSpritePosData(bagView->scrollBarOam, oamPos, 0xFFFF);
        oamPos[1] = touchY;
        Oam_SetSpritePosData(bagView->scrollBarOam, oamPos, 0xFFFF);
    }
}

extern u16 sub_020355E0(int, int, int, int, int);

void ovy142_219ed3c(BagView *a1)
{
    int result;
    u16 v7[2];

    result = BagMenu_GetPocketItemAmount(a1);
    if (result >= 7)
    {
        Oam_GetSpritePosData(a1->scrollBarOam, v7, 0xFFFF);
        v7[1] = sub_020355E0(result - 6, a1->unk834 + 1, 26, 142, 0);
        Oam_SetSpritePosData(a1->scrollBarOam, v7, 0xFFFF);
    }
}

void ovy142_219ed8c(BagView *a1)
{
    OAM_TEMP temp;

    u8 v11[2];
    u8 v10[2];
    u8 data1[5];
    u8 data2[5];

    temp.flag = 10;
    temp.unk = 1;
    data1 = data_021A0FD0;
    data2 = data_021A0FD8;
    
    for (u8 i = 0; i < 5; i++)
    {
        temp.x = data2[i];
        temp.y = 168;
        temp.anim = data1[i];
        if (i == 2)
            temp.y += 4;
        a1->bottomIconOam[i] = Oam_CreateSprite(
            a1->spriteGroup,
            a1->unk56C,
            a1->unk564,
            a1->unk57C,
            &temp,
            0,
            a1->heapId);
        
        sub_0204C124(a1->bottomIconOam[i], 1);
        sub_0204C5C8(a1->bottomIconOam[i], 0);
    }
    
    temp.x = 146;
    temp.y = 168;
    temp.anim = 0;

    a1->unk740 = Oam_CreateSprite(
        a1->spriteGroup,
        a1->unk570,
        a1->unk564,
        a1->unk580,
        &temp,
        0,
        a1->heapId);
    sub_0204C124(a1->unk740, 0);
    Oam_EnableOamAnim(a1->unk740, 1);
    sub_0204C5C8(a1->unk740, 0);
    if (!BagMenu_IsNotNormalBagMode(a1))
        sub_0204C124(a1->bottomIconOam[2], 0);
    if (a1->bagMode == BAG_MODE_BOX_SELECT_ITEM_HELD)
        sub_0204C124(a1->bottomIconOam[3], 0);

    v11 = data_021A0FCC;
    v10 = data_021A0FC8;

    for (u8 i = 0; i < 2; i++)
    {
        temp.x = 232;
        temp.y = v10[i];
        temp.anim = v11[i];
        temp.unk = 0;
        u8 newnum = i + 5;

        a1->bottomIconOam[newnum] = Oam_CreateSprite(
            a1->spriteGroup,
            a1->unk56C,
            a1->unk564,
            a1->unk57C,
            &temp,
            0,
            a1->heapId);
        Oam_EnableOamAnim(a1->bottomIconOam[newnum], 1);
        sub_0204C124(a1->bottomIconOam[newnum], 0);
        sub_0204C5C8(a1->bottomIconOam[newnum], 0);

    }
}

void ovy142_219efc0(BagView *a1)
{
    u32 i;      // r4
    OAM_TEMP v8;       // [sp+20h] [bp+0h] BYREF
    for (i = 0; i < 6; ++i)
    {
        v8.flag = data_021A0FE0[i];
        v8.unk = 1;
        v8.x = word_21A168C[i][0] - 16;
        v8.y = word_21A168C[i][1];
        v8.anim = data_021A0FEC[i + 1][1];
        a1->bagPocketOam[i] = Oam_CreateSprite(
            a1->spriteGroup,
            a1->bagPocketNCGR,
            a1->bagPocketNCLR,
            a1->bagPocketNCER,
            &v8,
            0,
            a1->heapId);
        Oam_EnableOamAnim(a1->bagPocketOam[i], 1);
    }

}

void ovy142_219f06c(BagView *a1, u32 a2)
{
    u32 i; // r4
    for (i = 0; i < 6; ++i)
    {
        if (i == a2)
            Oam_SetOamAnimIndex(a1->bagPocketOam[i], data_021A0FEC[i + 1][0]);
        else
            Oam_SetOamAnimIndex(a1->bagPocketOam[i], data_021A0FEC[i + 1][1]);
    }

}

extern void sub_02024EEC(int, int);

void sub_0219F0AC(BagView *bagView)
{
    sub_02024EEC(bagView->unk500.winData, 1);
}

typedef struct
{
    int heapId;
    u8 numList;
    ITEM_TASK *textList;
    int unkC;
    u8 unk10;
    u8 unk14;
    u8 unk18;
    u8 unk1C;
}TaskMenu;

extern int GFL_StrBufCreate(int, u16);
extern int sub_0202D974(TaskMenu*, int);

void ovy142_219f0bc(BagView *bagView, u32 *textList, int numList)
{
    int v9;
    TaskMenu task;
    int i =0;

    task.heapId = bagView->heapId;
    task.numList = numList;
    task.textList = bagView->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 24;
    task.unk18 = 14;
    task.unk1C = 3;
    
    for (i = 0 ; i < numList; i++)
    {
        bagView->unk7A0[i].textBuff = GFL_StrBufCreate(100, bagView->heapId);
        GFL_MsgDataLoadStrbuf(bagView->msgData, textList[i], bagView->unk7A0[i].textBuff);
        bagView->unk7A0[i].textColor = 0x39E0;
        bagView->unk7A0[i].unk8 = 0;
    }

    bagView->unk7A0[i - 1].unk8  = 1;
    bagView->unk79C = sub_0202D974(&task, bagView->taskMenuData);
    for (v9 = 0; v9 < numList; ++v9)
        GFL_StrBufFree(bagView->unk7A0[v9].textBuff);
    BagMenu_PopUpOptionMenuSetting(bagView, 0);
}

void BagMenu_AddSortOptionListMenu(BagView *a1, u32 *textList, int a3)
{
    int v9;
    TaskMenu task;
    int i = 0;

    task.heapId = a1->heapId;
    task.numList = a3;
    task.textList = a1->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 24;
    task.unk18 = 14;
    task.unk1C = 3;
    
    for (i = 0 ; i < a3; i++)
    {
        a1->unk7A0[i].textBuff = GFL_StrBufCreate(100, a1->heapId);
        GFL_MsgDataLoadStrbuf(a1->msgData, textList[i], a1->unk7A0[i].textBuff);
        a1->unk7A0[i].textColor = 0x39E0;
        a1->unk7A0[i].unk8 = 0;
    }

    a1->unk7A0[i - 1].unk8  = 1;
    a1->unk79C = sub_0202D974(&task, a1->taskMenuData);
    for (v9 = 0; v9 < a3; ++v9)
        GFL_StrBufFree(a1->unk7A0[v9].textBuff);
    BagMenu_PopUpOptionMenuSetting(a1, 0);
}

void ovy142_219f284(BagView *a1, u8 a2)
{
    TaskMenu task;
    int i = 0;
    int v4;

    task.heapId = a1->heapId;
    task.numList = a2;
    task.textList = a1->unk7A0;
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
                a1->unk7A0[i].textBuff = GFL_StrBufCreate(100, a1->heapId);
                GFL_MsgDataLoadStrbuf(a1->msgData, 144, a1->unk7A0[i].textBuff);
                a1->unk7A0[i].textColor = 14816;
                a1->unk7A0[i].unk8 = 0;
            }
            else
            {
                if (v4 == 6)
                {
                    a1->unk7A0[i].textBuff = GFL_StrBufCreate(100, a1->heapId);
                    GFL_MsgDataLoadStrbuf(a1->msgData, 8, a1->unk7A0[i].textBuff);
                    a1->unk7A0[i].textColor = 14816;
                    a1->unk7A0[i].unk8 = 1;
                }
                else
                {
                    a1->unk7A0[i].textBuff = GFL_StrBufCreate(100, a1->heapId);
                    GFL_MsgDataLoadStrbuf(a1->msgData, 139, a1->stringBuff1);
                    LoadBagPocketNameToStrbuf(a1->wordSetSystem, 0, v4);
                    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->unk7A0[i].textBuff, a1->stringBuff1);
                    a1->unk7A0[i].textColor = 14816;
                    a1->unk7A0[i].unk8 = 0;
                }
            }

        }
    }
    a1->unk79C = sub_0202D974(&task, a1->taskMenuData);
    for (i = 0; i < a2; ++i)
        GFL_StrBufFree(a1->unk7A0[i].textBuff);
    BagMenu_PopUpOptionMenuSetting(a1, 0);
}

extern sub_0204AFD8(void* ,int ,int, int, u16, int, int, u16);
void ovy142_219f450(BagView *a1, u32 a2)
{
    void *v3; // r0

    v3 = GFL_ArcSysCreateFileHandle(87, a1->heapId);

    if (a2 == 5)
        sub_0204AFD8(v3, 24, 5, 0, a1->unk820, 0, 0, a1->heapId);
    else
        sub_0204AFD8(v3, 23, 5, 0, a1->unk820, 0, 0, a1->heapId);
    
    GFL_ArcToolFree(v3);
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

    BagBmpWinData *bgs;
    
    bgs = &a1->tmhmTextBmpWin;

    v4 = sub_02021740(a2);
    sub_0204C124(a1->unk6D4[v4], 1);
    v5 = sub_02021720(a2);
    sub_0204C124(a1->unk6E0[v5], 1);
    v12 = sub_020216B0(a2, 0);
    v10 = sub_02021280(a2, 3);
    v9 = sub_02021280(a2, 4);
    v6 = BmpWin_GetBitmap(a1->tmhmTextBmpWin.winData);
    sub_020470F8(v6, 176, 0, 32, 40, 0);
    v7 = BmpWin_GetBitmap(a1->tmhmTextBmpWin.winData);
    sub_020470F8(v7, 232, 0, 24, 24, 0);
    if (v10 <= 1)
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 23, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, bgs, a1->stringBuff1, 176, 4, 0x3DC0);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 95, a1->stringBuff1);
        StringSetNumber(a1->wordSetSystem, 0, v10, 3, 0, 1);
        GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, bgs, a1->stringBuff2, 176, 4, 0x3DC0);
    }
    
    if (!v9 || sub_0202174C(a2) == 1)
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 23, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, bgs, a1->stringBuff1, 176, 24, 0x3DC0);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(a1->msgData, 95, a1->stringBuff1);
        StringSetNumber(a1->wordSetSystem, 0, v9, 3, 0, 1);
        GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, bgs, a1->stringBuff2, 176, 24, 0x3DC0);
    }
    
    GFL_MsgDataLoadStrbuf(a1->msgData, 94, a1->stringBuff1);
    StringSetNumber(a1->wordSetSystem, 0, v12, 2, 0, 1);
    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, bgs, a1->stringBuff2, 232, 4, 0x3DC0);
    ovy142_21a0134(bgs);
}

extern int sub_02017BCC(void);
extern int sub_02022268(int, int, int, int, int, int, int, int, u16, int);
extern void sub_02024E80(int, int, u16, int);

void BagMenu_PrintBagMessage(BagView *a1, int a2)
{
    int v4; // r0
    int v6; // r0

    if (!a1->unk500.winData)
        a1->unk500.winData = BmpWin_CreateDynamic(3, 1, 1, 0x1e, 4, 12, 1);
    v4 = BmpWin_GetBitmap(a1->unk500.winData);
    BmpWin_BitmapFill(v4, 15);
    BmpWin_FlushChar(a1->unk500.winData);
    if (a2 == 1)
    {
        v6 = sub_02017BCC();
        a1->unk514 = sub_02022268(
            a1->unk500.winData,
            0,
            0,
            a1->stringBuff2,
            a1->font,
            v6,
            a1->unk748,
            2,
            a1->heapId,
            15);
    }
    else
    {
        BagMenu_DrawStringToBmpWin(a1, &a1->unk500, a1->stringBuff2, 0, 0, 0x44Fu);
    }
    sub_02024E80(a1->unk500.winData, 1, a1->unk88C, 13);
    ovy142_21a0134(&a1->unk500);
}

void sub_0219F760(BagView *a1)
{
    BagMenu_PrintBagMessage(a1, 0);
}

void ovy142_219f76c(BagView *a1, int a2)
{
    GFL_MsgDataLoadStrbuf(a1->msgData, 43, a1->stringBuff1);
    BagMenu_LoadItemNameToStrbuf(a1, 0, a2);
    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
}

int ovy142_219f7a4(BagView *a1)
{
    int v2; // r4
    int v3; // r0

    if (a1->unk514)
    {
        v2 = sub_020223B4();
        v3 = sub_0202E8D8(a1->unk51C, a1->unk514, a1->unk500.winData);
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
                    if ((GCTX_HIDGetPressedKeys() & (KEY_B | KEY_A)) != 0 || sub_0203DA48())
                    {
                        GFL_SndSEPlay(1351);
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
    a1->pocketNameBmpWin.winData = BmpWin_CreateDynamic(2, 3, 21, 12, 3, 12, 1);
    a1->moneyStringBmpWin.winData = BmpWin_CreateDynamic(2, 1, 21, 8, 3, 12, 1);
    a1->MoneyBmpWin.winData = BmpWin_CreateDynamic(2, 9, 21, 9, 3, 12, 1);
    ovy142_219f8ec(a1, a1->itemPocket);
    ovy142_219f06c(a1, a1->itemPocket);
}

void ovy142_219f8c4(BagView *a1)
{
    BmpWin_Free(a1->pocketNameBmpWin.winData);
    BmpWin_Free(a1->MoneyBmpWin.winData);
    BmpWin_Free(a1->moneyStringBmpWin.winData);
}

void ovy142_219f8ec(BagView *a1, u32 a2)
{
    int v4; // r0
    u32 v5; // r0

    v4 = BmpWin_GetBitmap(a1->pocketNameBmpWin.winData);
    BmpWin_BitmapFill(v4, 0);
    GFL_MsgDataLoadStrbuf(a1->msgData, 139, a1->stringBuff1);
    LoadBagPocketNameToStrbuf(a1->wordSetSystem, 0, a2);
    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
    v5 = 0x60 - GFL_FontGetBlockWidth(a1->stringBuff2, a1->font, 0);
    u16 width = (v5 / 2); 
    BagMenu_DrawStringToBmpWin(a1, &a1->pocketNameBmpWin, a1->stringBuff2, width, 4, 0x3C40);
    ovy142_21a0134(&a1->pocketNameBmpWin);
}

extern int PlayerSave_GetMoney(int);
void ovy142_219fa3c(BagView *a1);

void BagMenu_PrintMoneyString(BagView *a1)
{
    int v2; // r0
    int v3; // r0
    int playSave; // r0
    int money; // r0

    v2 = BmpWin_GetBitmap(a1->MoneyBmpWin.winData);
    BmpWin_BitmapFill(v2, 0);
    v3 = BmpWin_GetBitmap(a1->moneyStringBmpWin.winData);
    BmpWin_BitmapFill(v3, 0);
    GFL_MsgDataLoadStrbuf(a1->msgData, 81, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->moneyStringBmpWin, a1->stringBuff1, 0, 4, 0x3C40);
    ovy142_21a0134(&a1->moneyStringBmpWin);

    GFL_MsgDataLoadStrbuf(a1->msgData, 82, a1->stringBuff1);
    playSave = PlayerSave_GetPlayerSaveOffset(a1->m_GameData);
    money = PlayerSave_GetMoney(playSave);
    StringSetNumber(a1->wordSetSystem, 0, money, 7, 1, 1);
    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->MoneyBmpWin, a1->stringBuff2, 0, 4, 0x3C40);
    ovy142_21a0134(&a1->MoneyBmpWin);
}

void ovy142_219fa3c(BagView *a1)
{
    sub_0204C124(a1->bottomIconOam[0], 0);
    sub_0204C124(a1->bottomIconOam[1], 0);
    sub_020484B4(a1->pocketNameBmpWin.winData);
    BagMenu_PrintMoneyString(a1);
}

void ovy142_219fa6c(BagView *a1);

void ovy142_219fa6c(BagView *a1)
{
    sub_0204C124(a1->bottomIconOam[0], 1);
    sub_0204C124(a1->bottomIconOam[1], 1);
    sub_020484B4(a1->MoneyBmpWin.winData);
    sub_020484B4(a1->moneyStringBmpWin.winData);
    ovy142_219f8ec(a1, a1->itemPocket);
}

void ovy142_219faac(BagView *a1);

void ovy142_219faac(BagView *a1)
{
    TaskMenu task;
    
    task.heapId = a1->heapId;
    task.numList = 2;
    task.textList = a1->unk7A0;
    task.unkC = 1;
    task.unk10 = 32;
    task.unk14 = 12;
    task.unk18 = 8;
    task.unk1C = 3;

    a1->unk7A0[0].textBuff = GFL_StrBufCreate(100, a1->heapId);
    GFL_MsgDataLoadStrbuf(a1->msgData, 132, a1->unk7A0[0].textBuff);
    a1->unk7A0[0].textColor = 14816;
    a1->unk7A0[0].unk8 = 0;

    a1->unk7A0[1].textBuff = GFL_StrBufCreate(100, a1->heapId);
    GFL_MsgDataLoadStrbuf(a1->msgData, 133, a1->unk7A0[1].textBuff);
    a1->unk7A0[1].textColor = 14816;
    a1->unk7A0[1].unk8 = 0;
    a1->unk79C = sub_0202D974(&task, a1->taskMenuData);
    GFL_StrBufFree(a1->unk7A0[0].textBuff);
    GFL_StrBufFree(a1->unk7A0[1].textBuff);
    ovy142_219ff40(a1, 0);
    BagMenu_PopUpOptionMenuSetting(a1, 0);
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
	bl GFL_ArcSysCreateFileHandle
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
	bl GFL_HeapFree
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
}

void ovy142_219fc14(BagView *a1, int a2)
{
    BmpWin_BitmapFill(BmpWin_GetBitmap(a1->unk774.winData), 5);
    GFL_MsgDataLoadStrbuf(a1->msgData, 131, a1->stringBuff1);
    StringSetNumber(a1->wordSetSystem, 0, a2, 3, 0, 1);
    GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
    BagMenu_DrawStringToBmpWin(a1, &a1->unk774, a1->stringBuff2, 0, 0, 0x3DC5);
    ovy142_21a0134(&a1->unk774);

    if (a1->unk80C == 2)
    {
        BagBmpWinData *v8 = &a1->unk78C;  //参考，有些寄存器问题是声明前后的问题
        int v7 = BagMenu_GetItemPrice(a1->selectItem, a1->selectAmount, a1->heapId);
        BmpWin_BitmapFill(BmpWin_GetBitmap(a1->unk78C.winData), 5);
        GFL_MsgDataLoadStrbuf(a1->msgData, 84, a1->stringBuff1);
        StringSetNumber(a1->wordSetSystem, 0, v7, 7, 0, 1);
        GFL_WordSetFormatStrbuf(a1->wordSetSystem, a1->stringBuff2, a1->stringBuff1);
        BagMenu_DrawStringToBmpWin(a1, v8, a1->stringBuff2, 0, 0, 0x3DC5);
        ovy142_21a0134(v8);
    }
}

int BagMenu_GetPocketRegistId(int pocket)
{
    switch (pocket)
    {
        case BAG_POCKET_NORMAL:
            return 12;
        case BAG_POCKET_BERRY:
            return 15;
        case BAG_POCKET_HEAL:
            return 13;
        case BAG_POCKET_TMHM:
            return 14;
        case BAG_POCKET_IMPORT:
            return 16;
        case BAG_POCKET_FREE_SPACE:
            return 17;
    }
    return pocket;
}

void ovy142_219fd4c(BagView *a1, int a2)
{
    u32 i;
    s16 v8[2];
    s16 v6[2];

    Oam_GetSpritePosData(a1->unk6B4, v8, 0);
    for (i = 0; i < 8; i++)
    {
        Oam_GetSpritePosData(a1->unk644[i], v6, 0);
        if (v6[1] == v8[1])
            break;
    }

    sub_0204C378(a1->unk644[i], (u8)a2, 0);
}

extern int sub_02026FE4(int, int, int, int, int, int, int, int);
extern int sub_0204C138(int);

void BagMenu_PopUpOptionMenuSetting(BagView *bagView, int a2)
{
    int pocket;     // r0
    int isRegist;     // r7
    int v7;     // r0
    int v8;     // r0
    int v9;     // r0
    int v12;    // r0
    int v13;    // r0
    int v14;    // r0

    if (bagView->unk8AC != a2)
    {
        bagView->unk8AC = a2;
        pocket = BagMenu_GetPocketRegistId(bagView->itemPocket);
        isRegist = GameData_IsPocketRegistered(bagView->m_GameData, pocket);
        if (a2 == 1)
        {
            v7 = GFL_VBlankGetTCBMgr();
            v8 = sub_02026FE4(bagView->unk8A8, 4, 18383, 0, 0, 0, 0, v7);
            v9 = GFL_VBlankGetTCBMgr();
            sub_02026FE4(bagView->unk8A8, 1, 1, 0, 0, 0, 0, v9);
            G2x_SetBlendBrightness_(&reg_G2_BLDCNT, 6, 0);
            ovy142_219ff60(bagView);

            Oam_SetOamAnimIndex(bagView->bottomIconOam[0], 4);
            Oam_SetOamAnimIndex(bagView->bottomIconOam[1], 5);
            Oam_SetOamAnimIndex(bagView->bottomIconOam[3], 0);

            if (isRegist == 1)
                Oam_SetOamAnimIndex(bagView->bottomIconOam[2], 7);
            else
                Oam_SetOamAnimIndex(bagView->bottomIconOam[2], 6);
            ovy142_219ff40(bagView, 1);
        }
        else
        {
            sub_02026F7C(bagView->unk8A8, 2, 0, 512);
            v12 = GFL_VBlankGetTCBMgr();
            v13 = sub_02026FE4(bagView->unk8A8, 4, 18383, 0, 8, 8, 0, v12);
            v14 = GFL_VBlankGetTCBMgr();
            sub_02026FE4(bagView->unk8A8, 1, 1, 0, 8, 8, 0, v14);

            if (bagView->bagMode == BAG_MODE_SELL_ITEM && !sub_0204C138(bagView->bottomIconOam[0]))
                G2x_SetBlendBrightness_(&reg_G2_BLDCNT, 2, -8);
            else
                G2x_SetBlendBrightness_(&reg_G2_BLDCNT, 6, -8);
            
            Oam_SetOamAnimIndex(bagView->unk744, 4);
            Oam_SetOamAnimIndex(bagView->unk740, 2);
            Oam_SetOamAnimIndex(bagView->bottomIconOam[0], 18);
            Oam_SetOamAnimIndex(bagView->bottomIconOam[1], 19);
            Oam_SetOamAnimIndex(bagView->bottomIconOam[3], 14);
            if (isRegist == 1)
                Oam_SetOamAnimIndex(bagView->bottomIconOam[2], 22);
            else
                Oam_SetOamAnimIndex(bagView->bottomIconOam[2], 21);
        }
    }

}

void ovy142_219ff40(BagView *a1, int a2)
{
    if (a2 == 1)
        Oam_SetOamAnimIndex(a1->bottomIconOam[4], 1);
    else
        Oam_SetOamAnimIndex(a1->bottomIconOam[4], 15);
}

void ovy142_219ff60(BagView *a1)
{
    if (a1->itemPocket != BAG_POCKET_FREE_SPACE)
    {
        sub_0204C124(a1->unk744, 1);
        sub_0204C124(a1->unk740, 0);
        if (BagMenu_GetPocketItemAmount(a1) <= 1)
            Oam_SetOamAnimIndex(a1->unk744, 4);
        else
            Oam_SetOamAnimIndex(a1->unk744, 0);
    }
    else
    {
        sub_0204C124(a1->unk740, 1);
        sub_0204C124(a1->unk744, 0);
        if (ovy142_219d22c(a1) > 2)
            Oam_SetOamAnimIndex(a1->unk740, 0);
        else
            Oam_SetOamAnimIndex(a1->unk740, 2);    
    }
    
}

void ovy142_219ffe8(BagView *a1, int a2);

void ovy142_219ffe8(BagView *a1, int a2)
{
    int v4; // r0
    int v5; // r6

    v4 = BagMenu_GetPocketRegistId(a1->itemPocket);
    v5 = GameData_IsPocketRegistered(a1->m_GameData, v4);
    if (a2 == 1)
    {
        ovy142_219ff60(a1);
        Oam_SetOamAnimIndex(a1->bottomIconOam[0], 4);
        Oam_SetOamAnimIndex(a1->bottomIconOam[1], 5);
        Oam_SetOamAnimIndex(a1->bottomIconOam[3], 0);
        if (v5 == 1)
            Oam_SetOamAnimIndex(a1->bottomIconOam[2], 7);
        else
            Oam_SetOamAnimIndex(a1->bottomIconOam[2], 6);
    }
    else
    {
        Oam_SetOamAnimIndex(a1->unk744, 4);
        Oam_SetOamAnimIndex(a1->unk740, 2);
        Oam_SetOamAnimIndex(a1->bottomIconOam[0], 18);
        Oam_SetOamAnimIndex(a1->bottomIconOam[1], 19);
        Oam_SetOamAnimIndex(a1->bottomIconOam[3], 14);
        if (v5 == 1)
            Oam_SetOamAnimIndex(a1->bottomIconOam[2], 22);
        else
            Oam_SetOamAnimIndex(a1->bottomIconOam[2], 21);
    }
}

int BagMenu_PokcetIconMoveFadeIn(BagView *a1)
{
    s16 v8[2];
    u32 i; // r4

    for (i = 0; i < 6; ++i)
    {
        Oam_GetSpritePosData(a1->bagPocketOam[i], v8, 0xFFFF);
        if (v8[0] == word_21A168C[i][0])
            return 0;
        v8[0] += 4;
        Oam_SetSpritePosData(a1->bagPocketOam[i], v8, 0xFFFF);
    }
    return 1;
}

extern void sub_02021C7C(int, int, s16, s16, int, int, u16);

void BagMenu_DrawStringToBmpWin(BagView *a1, BagBmpWinData *a2, int a3, u16 a4, s16 a5, u16 a6)
{
    int v12;
    int v4 = a4;

    v12 = a1->printSystem;

    sub_02021C7C(v12, BmpWin_GetBitmap(a2->winData), (s16)v4, a5, a3, a1->font, a6);
    a2->flag = 1;
}

void ovy142_21a0134(BagBmpWinData *a1)
{
    int v2; // r0

    BmpWin_FlushMap(a1->winData);
    v2 = sub_020484D4(a1->winData);
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

    sub_02021A3C(a1->printSystem);
    v2 = a1->printSystem;
    if (a1->tmhmTextBmpWin.flag)
    {
        v3 = BmpWin_GetBitmap(a1->tmhmTextBmpWin.winData);
        if (!sub_02021C1C(v2, v3))
        {
            BmpWin_FlushChar(a1->tmhmTextBmpWin.winData);
            a1->tmhmTextBmpWin.flag = 0;
        }
    }
    v4 = a1->printSystem;
    if (a1->unk76C.flag)
    {
        v5 = BmpWin_GetBitmap(a1->unk76C.winData);
        if (!sub_02021C1C(v4, v5))
        {
            BmpWin_FlushChar(a1->unk76C.winData);
            a1->unk76C.flag = 0;
        }
    }
    v6 = a1->printSystem;
    if (a1->unk754.flag)
    {
        v7 = BmpWin_GetBitmap(a1->unk754.winData);
        if (!sub_02021C1C(v6, v7))
        {
            BmpWin_FlushChar(a1->unk754.winData);
            a1->unk754.flag = 0;
        }
    }
    v8 = a1->printSystem;
    if (a1->unk75C.flag)
    {
        v9 = BmpWin_GetBitmap(a1->unk75C.winData);
        if (!sub_02021C1C(v8, v9))
        {
            BmpWin_FlushChar(a1->unk75C.winData);
            a1->unk75C.flag = 0;
        }
    }
    v10 = a1->printSystem;
    if (a1->unk764.flag)
    {
        v11 = BmpWin_GetBitmap(a1->unk764.winData);
        if (!sub_02021C1C(v10, v11))
        {
            BmpWin_FlushChar(a1->unk764.winData);
            a1->unk764.flag = 0;
        }
    }
    v12 = a1->printSystem;
    if (a1->unk774.flag)
    {
        v13 = BmpWin_GetBitmap(a1->unk774.winData);
        if (!sub_02021C1C(v12, v13))
        {
            BmpWin_FlushChar(a1->unk774.winData);
            a1->unk774.flag = 0;
        }
    }
    v14 = a1->printSystem;
    if (a1->moneyStringBmpWin.flag)
    {
        v15 = BmpWin_GetBitmap(a1->moneyStringBmpWin.winData);
        if (!sub_02021C1C(v14, v15))
        {
            BmpWin_FlushChar(a1->moneyStringBmpWin.winData);
            a1->moneyStringBmpWin.flag = 0;
        }
    }
    v16 = a1->printSystem;
    if (a1->MoneyBmpWin.flag)
    {
        v17 = BmpWin_GetBitmap(a1->MoneyBmpWin.winData);
        if (!sub_02021C1C(v16, v17))
        {
            BmpWin_FlushChar(a1->MoneyBmpWin.winData);
            a1->MoneyBmpWin.flag = 0;
        }
    }
    v18 = a1->printSystem;
    if (a1->unk78C.flag)
    {
        v19 = BmpWin_GetBitmap(a1->unk78C.winData);
        if (!sub_02021C1C(v18, v19))
        {
            BmpWin_FlushChar(a1->unk78C.winData);
            a1->unk78C.flag = 0;
        }
    }
    v20 = a1->printSystem;
    if (a1->unk794.flag)
    {
        v21 = BmpWin_GetBitmap(a1->unk794.winData);
        if (!sub_02021C1C(v20, v21))
        {
            BmpWin_FlushChar(a1->unk794.winData);
            a1->unk794.flag = 0;
        }
    }
    v22 = a1->printSystem;
    if (a1->unk500.flag)
    {
        v23 = BmpWin_GetBitmap(a1->unk500.winData);
        if (!sub_02021C1C(v22, v23))
        {
            BmpWin_FlushChar(a1->unk500.winData);
            a1->unk500.flag = 0;
        }
    }

    v25 = a1->printSystem;
    if (a1->pocketNameBmpWin.flag)
    {
        v26 = BmpWin_GetBitmap(a1->pocketNameBmpWin.winData);
        result = sub_02021C1C(v25, v26);
        if (!result)
        {
            BmpWin_FlushChar(a1->pocketNameBmpWin.winData);
            a1->pocketNameBmpWin.flag = 0;
        }
    }
}

int ovy142_21a03ac(u8 a1)
{
    u32 v2[6]; // [sp+0h] [bp-20h]

    v2 = data_021A1028;
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

void ovy142_21a03f0(ITEM_UNKNOW_DATA *a1, int a2, int a3, u16 a4)
{
    int i;  // r6
    int v5; // r4
    int v7; // r0

    a1->unk4 = a2;
    v5 = 0;
    a1->unk8 = a4;
    MI_CpuFill8(&a1->unkC, 0, 8 * 639);
    for (i = 0; i <= MAX_ITEM; ++i)
    {
        if (BagSave_IsItemInFreeSpace((void*)a1->unk4, (u16)i))
        {
            v7 = BagSave_GetExistingItemPocket((void*)a1->unk4, i);
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
    int v5;
    int v8;
    ItemTable *v12;

    v5 = 0;
    if (a2 != 5)
    {
        for (int i = 0; i <= MAX_ITEM; i++)
        {
            v12 = (ItemTable *)sub_02008730(a1->unk4, a2, (u16)i);
            if (!v12)
            {
                return &a1->unk0;
            }
            if (!BagSave_IsItemInFreeSpace((void*)a1->unk4, v12->itemid))
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
        for (int i = 0; i <= MAX_ITEM; i++)
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

    for (int i = 0; i <= MAX_ITEM; i++)
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
    for (i = 0; i <= MAX_ITEM; ++i)
    {
        if (a2 == a1->unkC[i].unk0.ItemData.num 
            && a1->unkC[i].unk0.ItemData.itemid)
            ++v2;
    }
    return v2;
}

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

int ovy142_21a0698(ITEM_UNKNOW_DATA *a1, int a2)
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
        for (i = 0; i <= MAX_ITEM; ++i)
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

