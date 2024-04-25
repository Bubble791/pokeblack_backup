#include "global.h"
#include "main.h"
#include "touchscreen.h"
#include "bag.h"
#include "item.h"
#include "item_param.h"

const u8 data_021A0FC8[2] = {0x61, 0x77};
const u8 data_021A0FCC[2] = {0x03, 0x02};

const u8 data_021A0FD8[5] = {0x00, 0x78, 0xAD, 0xC0, 0xE0};
const u8 data_021A0FD0[5] = {0x04, 0x05, 0x06, 0x00, 0x01};

const u8 data_021A0FE0[] = 
{
    0x0E, 0x0C, 0x0A, 0x0C, 0x10, 0x10, 0x01, 0x0, 0x0
};

const u8 data_021A0FEC[][2] = 
{
    {0x00, 0x01},
    {0x09, 0x04},
    {0x08, 0x03},
    {0x06, 0x01},
    {0x07, 0x02},
    {0x05, 0x00},
    {0x0B, 0x0A},
};

const OamSystemInitTemplate data_021A0FFC = 
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

void BagMenu_SetRunFunc(BagView *bagView, FieldBagItemUse func)
{
    bagView->bagMenuFunc = func;
    sub_0203DEB4(bagView->KeyRetypeIntervalRepeated, bagView->KeyRetypeIntervalFirst);
}

void sub_021998DC(BagView *bagView)
{
    bagView->unk838 = 0xFFFF;
    ovy142_21998f4(bagView);
}

void ovy142_21998f4(BagView *bagView)
{
    if (!sub_0203D554())
    {
        ovy142_219de0c(bagView);
    }
    else
    {
        ovy142_219e120(bagView);
    }
    ovy142_219e924(bagView);
    ovy142_219becc(bagView);
    bagView->unk892 = 1;
}

ItemTable* BagMenu_GetBagItemDataBySlot(BagView *bagView, u32 itemSlot)
{
    if (bagView->isSwitchMode != 0)
    {
        return &bagView->m_itemTable[itemSlot];
    }
    return ovy142_21a0470(&bagView->unk8C8, bagView->itemPocket, itemSlot);
}

int BagMenu_GetItemPrice(u32 itemId, int numItem, u16 heapId)
{
    int price = Item_GetItemParam(itemId, ITEM_DATA_PRICE, heapId); // GetItemParam
    return (price / 2) * numItem;
}

int BagMenu_GetSelectSlot(BagView *bagView)
{
    return bagView->posNow + bagView->unk834 + 1;
}

int BagMenu_GetPocketItemAmount(BagView *bagView)
{
    if (bagView->isSwitchMode != 0)
    {
        return BagSave_GetUniqueItemCount(bagView->m_itemTable, NORMAL_ITEM_MAX);
    }
    return ovy142_21a0698(&bagView->unk8C8, bagView->itemPocket);
}

void BagMenu_LoadItemNameToStrbuf(BagView *bagView, int bufId, int msgId)
{
    LoadItemNameToStrbuf(bagView->wordSetSystem, bufId, msgId);
}

void BagMenu_LoadBagPocketNameToStrbuf(BagView *bagView, int bufId, int msgId)
{
    LoadBagPocketNameToStrbuf(bagView->wordSetSystem, bufId, msgId);
}

void BagMenu_LoadItemTextWithAmount(BagView *bagView, int bufId, int msgId, int name1, int name2);

void BagMenu_LoadItemTextWithAmount(BagView *bagView, int bufId, int msgId, int isMult, int name2)
{
    sub_020244E0(bagView->wordSetSystem, bufId, msgId, isMult, name2);
}

void BagMenu_SwitchItemPostion(BagView *bagView, int pockId1, int pockId2);

void BagMenu_SwitchItemPostion(BagView *bagView, int itemSlot1, int itemSlot2)
{
    int *data;

    MI_CpuCopy8(&bagView->m_itemTable[itemSlot1], &data, 4);
    MI_CpuCopy8(&bagView->m_itemTable[itemSlot2], &bagView->m_itemTable[itemSlot1], 4);
    MI_CpuCopy8(&data, &bagView->m_itemTable[itemSlot2], 4);
}

void ovy142_2199a20(BagView *bagView, int param_2, int param_3);

void ovy142_2199a20(BagView *bagView, int param_2, int param_3)
{
    int i;
    if (param_2 != param_3)
    {
        if (param_2 < param_3)
        {
            for (i = param_2; i < param_3; i++)
            {
                BagMenu_SwitchItemPostion(bagView, i, i + 1);
            }
        }
        else
        {
            for (i = param_2; i > param_3; i--)
            {
                BagMenu_SwitchItemPostion(bagView, i, i - 1);
            }
        }
    }
}


void ovy142_2199a5c(BagView *bagView, int param_2, u32 pocket)
{
    PosTable local_18;

    GameData_SetLastSelectBagPocket(bagView->unk14, param_2);
    GameData_SetLastPocketItem(bagView->unk14, param_2, bagView->posNow, (bagView->unk834 + 1));
    sub_0200887C(bagView->unk14, pocket, &local_18.y, &local_18.x);
    bagView->posNow = local_18.y;
    bagView->unk834 = local_18.x - 1;
    ovy142_219ed3c(bagView);
    ovy142_219f8ec(bagView, pocket);
    ovy142_219f06c(bagView, pocket);
    ovy142_219f450(bagView, pocket);
}

int ovy142_2199ad4(BagView *bagView, int itemCount, int param_3);

int ovy142_2199ad4(BagView *bagView, int itemCount, int param_3)
{
    int v4; // r3
    int v5; // r4

    if (!itemCount)
        return 0;
    v4 = bagView->posNow;
    v5 = bagView->unk834;

    if (v4 == 5 && v5 + 7 < itemCount)
    {
        bagView->unk834++;
    }
    else if (v4 != 5 && v4 + 1 < itemCount)
    {
        bagView->posNow++;
    }
    else if (param_3 == 1)
    {
        bagView->unk834 = -1;
        bagView->posNow = 0;
    }
    
    return v4 != bagView->posNow || v5 != bagView->unk834;
}

int ovy142_2199b48(BagView *bagView, int itemCount, int param_3);

int ovy142_2199b48(BagView *bagView, int itemCount, int param_3)
{
    int v4; // r3
    int v5; // r4
    if (itemCount == 0)
    {
        return 0;
    }
    v4 = bagView->posNow;
    v5 = bagView->unk834;
    if ((bagView->posNow == 0) && (bagView->unk834 != -1))
    {
        bagView->unk834--;
    }
    else if (bagView->posNow)
    {
        bagView->posNow--;
    }
    else if (param_3 == 1)
    {
        bagView->unk834 = itemCount - 7;
        if (itemCount - 7 < -1)
        {
            bagView->unk834 = -1;
        }
        bagView->posNow = 5;
        if (bagView->posNow >= itemCount)
        {
            bagView->posNow = itemCount - 1;
        }
    }

    return v4 != bagView->posNow || v5 != bagView->unk834;
}


int ovy142_2199bcc(BagView *bagView)
{
    int v2;          // r6
    int v4;          // r4
    u32 v5;
    u32 v6;

    v2 = BagMenu_GetPocketItemAmount(bagView);
    if (v2 >= 7 && sub_0203DA84(&v5, &v6) == 1)
    {
        if (v5 >= 0x100 || v5 < 0xE0)
            return 0;
        if (!bagView->unk8B0)
        {
            if (sub_0203DA48() == 1)
            {
                if (v6 < 0x10 || v6 >= 0x98)
                    return 0;
                bagView->unk8B0 = 1;
            }
            else
            return 0;
        }
        ovy142_219bda4(bagView, 0);
        v4 = bagView->unk834;
        bagView->unk834 = sub_020355B8(v2 - 6, v6, 26, 142, 0) - 1;
        BagMenu_TouchScrollBarUpdatePos(bagView);
        if (bagView->unk834 != v4)
        {
            GFL_SndSEPlay(0x548);
            return 1;
        }
    }
    return 0;
}

extern int sub_0203DF44(void);
int ovy142_2199c70(BagView *bagView);

int ovy142_2199c70(BagView *bagView)
{
    u32 i;
    int iVar5 = 0;

    int uVar1 = BagMenu_GetSelectSlot(bagView);
    int ItemCount = BagMenu_GetPocketItemAmount(bagView);

    if (sub_0203DF44() & KEY_DOWN)
    {
        iVar5 = ovy142_2199ad4(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & KEY_UP)
    {
        iVar5 = ovy142_2199b48(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & KEY_R)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199ad4(bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            iVar5 = 1;
    }
    else if (sub_0203DF44() & KEY_L)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199b48(bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            iVar5 = 1;
    }

    if (iVar5 != 0)
    {
        int uVar2 = BagMenu_GetSelectSlot(bagView);
        GFL_SndSEPlay(0x548);
        ovy142_2199a20(bagView, uVar1, uVar2);
    }
    return iVar5;
}

int BagMenu_CheckUpDownKeyPad(BagView *bagView);

int BagMenu_CheckUpDownKeyPad(BagView *bagView)
{
    u32 i;
    int local_18;

    local_18 = 0;
    int ItemCount = BagMenu_GetPocketItemAmount(bagView);

    if (sub_0203DF44() & KEY_DOWN)
    {
        local_18 = ovy142_2199ad4(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & KEY_UP)
    {
        local_18 = ovy142_2199b48(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & KEY_R)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199ad4(bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            local_18 = 1;
    }
    else if (sub_0203DF44() & KEY_L)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199b48(bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            local_18 = 1;
    }
    return local_18;
}

int ovy142_2199db8(BagView *bagView);

int ovy142_2199db8(BagView *bagView)
{
    u32 x, y;

    if (sub_0203DA84(&x, &y) == 1)
    {
        u32 i;
        int uVar4;
        u32 uVar2;
        int itemCount;
        int uVar6;
        
        if ((0x90 > x) || (0xe7 < x) || (y < 0xc) || (0x9b < y))
        {
            return 0;
        }
        uVar2 = (y - 12) / 24;
        
        if (bagView->posNow == uVar2)
        {
            return 0;
        }

        {
            itemCount = BagMenu_GetPocketItemAmount(bagView);
            uVar4 = BagMenu_GetSelectSlot(bagView);
            uVar6 = bagView->posNow - uVar2;
            if (uVar6 < 0)
            {
                uVar6 = -uVar6;
            }
            if (bagView->posNow < uVar2)
            {
                {
                    for (i = 0; i < uVar6; i++)
                    {
                        if (ovy142_2199ad4(bagView, itemCount, 0) == 0)
                            break;
                    }
                }
            }
            else if (( bagView->posNow > uVar2))
            {
                for (i = 0; i < uVar6; i++)
                {
                    if (ovy142_2199b48(bagView, itemCount, 0) == 0)
                        break;
                }
            }
            if (i == 0)
                return 0;
            {
                int uVar3 = BagMenu_GetSelectSlot(bagView);
                ovy142_2199a20(bagView, uVar4, uVar3);
                ovy142_219bda4(bagView, 0);
                return 1;
            }
        }
    }
    return 0;
}

int ovy142_2199e88(void);

int ovy142_2199e88(void)
{
    u32 x, y;
    int isTouched = sub_0203DAC8(&x, &y);

    if ((isTouched == 1) && (224 <= x) && (x <= 247) &&
        (168 <= y) && (y <= 191))
    {
        return 1;
    }
    return 0;
}

void ovy142_2199eb8(BagView *bagView);
extern void ovy142_219ffe8(BagView*, int);
extern void BagMenu_KeyPadMain(BagView*);

void ovy142_2199eb8(BagView *bagView)
{
    ovy142_219ffe8(bagView, 1);
    BagMenu_KeyPadMain(bagView);
}

void BagMenu_HandleSwitchModeKeyPad(BagView *bagView)
{
    int uVar2;
    int uVar3;

    sub_02035198(bagView->unk8A4);

    if (PrintSystem_IsTextPrintActiveEnd(bagView->printSystem))
    {
        uVar2 = BagMenu_GetSelectSlot(bagView);

        if (ovy142_2199bcc(bagView))
        {
            uVar3 = BagMenu_GetSelectSlot(bagView);
            ovy142_2199a20(bagView, uVar2, uVar3);
            bagView->unk838 = 0xFFFF;
            ovy142_21998f4(bagView);
            return;
        }

        if (sub_0203DA2C() == 0)
        {
            bagView->unk8B0 = 0;

            if (bagView->unk8B4 == 1)
            {
                GFL_SndSEPlay(0x54c);
                bagView->unk8B4 = 0;
                BagSave_CopyPocket(bagView->bagSave, bagView->m_itemTable, bagView->itemPocket, 0);
                Oam_SetOamAnimIndex(bagView->unk6B4, 1);
                ovy142_219ffe8(bagView, 1);
                bagView->isSwitchMode = FALSE;
                ovy142_219bda4(bagView, 0);
                BagMenu_KeyPadMain(bagView);
                return;
            }
        }
        if (bagView->unk8B0 != 1)
        {
            if ((GCTX_HIDGetPressedKeys() & (KEY_A | KEY_SELECT)) != 0)
            {
                GFL_SndSEPlay(0x54C);
                BagSave_CopyPocket(bagView->bagSave, bagView->m_itemTable, bagView->itemPocket, 0);
                Oam_SetOamAnimIndex(bagView->unk6B4, 1);
                ovy142_219ffe8(bagView, 1);
                bagView->isSwitchMode = FALSE;
                ovy142_219bda4(bagView, 1);
                BagMenu_KeyPadMain(bagView);
                return;
            }

            if ((GCTX_HIDGetPressedKeys() & KEY_B) != 0)
            {
                GFL_SndSEPlay(0x551);
                Oam_SetOamAnimIndex(bagView->unk6B4, 1);
                bagView->isSwitchMode = FALSE;
                ovy142_219bda4(bagView, 1);
                bagView->unk838 = 0xffff;
                ovy142_21998f4(bagView);
                ovy142_219c9f8(bagView, 4, ovy142_2199eb8);
                return;
            }

            if (ovy142_2199e88() == 1)
            {
                GFL_SndSEPlay(0x551);
                Oam_SetOamAnimIndex(bagView->unk6B4, 1);
                bagView->isSwitchMode = FALSE;
                ovy142_219bda4(bagView, 0);
                bagView->unk838 = 0xffff;
                ovy142_21998f4(bagView);
                ovy142_219c9f8(bagView, 4, ovy142_2199eb8);
                return;
            }


            if (ovy142_2199db8(bagView) != 0)
            {
                bagView->unk8B4 = 1;
                ovy142_219ed3c(bagView);
                GFL_SndSEPlay(0x548);
                bagView->unk838 = 0xffff;
                ovy142_21998f4(bagView);
                return;
            }

            if (ovy142_2199c70(bagView) != 0)
            {
                ovy142_219ed3c(bagView);
                GFL_SndSEPlay(0x548);
                bagView->unk838 = 0xffff;
                ovy142_21998f4(bagView);
            }
        }
    }
}

u16 inline BagMenu_CheckItem(u16 id)
{
    return id + 0xffb4;
}

int BagMenu_IsRepelItem(u16 itemId);

int BagMenu_IsRepelItem(u16 itemId)
{
    int uVar1;

    uVar1 = 0;
    if (BagMenu_CheckItem(itemId) <= 3 && (1 << BagMenu_CheckItem(itemId) & 0xb) != 0)
    {
        uVar1 = 1;
    }
    return uVar1;
}

u16 inline BagMenu_CheckItem2(u16 id)
{
    return id + 0xfd98;
}

int ovy142_219a0dc(u16 param_1);

int ovy142_219a0dc(u16 param_1)
{
    int iVar1;

    iVar1 = BagMenu_IsRepelItem(param_1);
    if (iVar1 != 0)
    {
        return 1;
    }
    if (BagMenu_CheckItem2(param_1) <= 1)
    {
        return 2;
    }
    return 0;
}


void BagMenu_UseRepel(BagView *bagView)
{
    int iVar2;

    iVar2 = BagMenu_IsRepelItem(bagView->selectItem);
    if (iVar2 != 0)
    {
        void *saveData = sub_02017934(bagView->m_GameData);
        void *encount = SaveControl_GetEncountSave(saveData);
        int repelCountNull = EncountSave_IsRepelDepleted(encount);

        if (repelCountNull)
        {
            u16 items = bagView->selectItem;
            u32 heap = bagView->heapId;
            u8 step;
            
            step = Item_GetItemParam(items, ITEM_DATA_USE_PARAM, heap);
            EncountSave_SetRepelSteps(encount, step);
            EncountSave_SetRepelUsedItem(encount, bagView->selectItem);
            BagView_DeletItem(bagView, 1);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 63, bagView->stringBuff1);
            GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
            BagMenu_LoadItemNameToStrbuf(bagView, 1, bagView->selectItem);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem,
                                    bagView->stringBuff2,
                                    bagView->stringBuff1);
            BagMenu_PrintBagMessage(bagView, 1);
            GFL_SndSEPlay(0x7cc);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(bagView->msgData, 64, bagView->stringBuff1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            BagMenu_PrintBagMessage(bagView, 1);
        }
        
        BagMenu_SetRunFunc(bagView, BagMenu_WaitPrintKeyPad);
    }
}

void BagMenu_WaitPrintKeyPad(BagView *bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(bagView);
    if (iVar1 != 0)
    {
        uVar2 = GCTX_HIDGetPressedKeys();
        if (((uVar2 & KEY_A | uVar2 & KEY_B) != 0) || sub_0203DA48())
        {
            sub_02045738(3);
            bagView->unk838 = 0xFFFF;
            ovy142_21998f4(bagView);
            bagView->unk892 = 1;
            ovy142_219ed3c(bagView);
            Oam_EnableOamAnim(bagView->scrollBarOam, 1);
            BagMenu_PopUpOptionMenuSetting(bagView, 1);
            BagMenu_KeyPadMain(bagView);
        }
    }
}

void ovy142_219a250(BagView *bagView);
void ovy142_219a2ac(BagView *bagView);
void ovy142_219a2c4(BagView *bagView, int param_2);

void ovy142_219a250(BagView *bagView)
{
    if (bagView->selectItem - 616 <= 1) // 光之石 暗之石
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 56, bagView->stringBuff1);
        GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        BagMenu_PrintBagMessage(bagView, 1);
        BagMenu_SetRunFunc(bagView, BagMenu_WaitPrintKeyPad);
    }
}

void ovy142_219a2ac(BagView *bagView)
{
    BagMenu_PrintBagMessage(bagView, 1);
    BagMenu_SetRunFunc(bagView, BagMenu_WaitPrintKeyPad);
}

void ovy142_219a2c4(BagView *bagView, int param_2)
{
    GFL_MsgDataLoadStrbuf(bagView->msgData, param_2, bagView->stringBuff1);
    GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
    LoadItemNameToStrbuf(bagView->wordSetSystem, 1, bagView->selectItem);
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
    BagMenu_SetRunFunc(bagView, ovy142_219a2ac);
}

extern int sub_0202E9DC(int, int);
int ovy142_219a314(BagView * bagView, int param_2, int param_3, int param_4);

int ovy142_219a314(BagView * bagView, int param_2, int param_3, int param_4)
{
    int iVar1;

    iVar1 = sub_0202E9DC(bagView->unkC, param_2);
    if (iVar1 == 0)
    {
        if (param_4 != 0)
        {
            BagView_DeletItem(bagView, 1);
        }
        bagView->bagMenuReturnApp = param_3;
        BagMenu_SetRunFunc(bagView, 0);
        return 1;
    }
    ovy142_219a2c4(bagView, 0x3a);
    return 0;
}

int ovy142_219a354(BagView * bagView)
{
    int iVar1;

    iVar1 = sub_0202E9DC(bagView->unkC, 0);
    if (bagView->unk89C == 0)
    {
        if (iVar1 == 0)
        {
            bagView->bagMenuReturnApp = 10;
            BagMenu_SetRunFunc(bagView, 0);
            return 1;
        }
        else if (iVar1 == 1)
        {
            ovy142_219a2c4(bagView, 0x77);
        }
        else
        {
            ovy142_219a2c4(bagView, 0x3a);
        }
        
        return 0;
    }
    if (bagView->unk89C == 1)
    {
        if (iVar1 == 0)
        {
            bagView->bagMenuReturnApp = 11;
            BagMenu_SetRunFunc(bagView, 0);
            return 1;
        }
        ovy142_219a2c4(bagView, 0x39);
        return 0;
    }
    return 0;
}

void ovy142_219a3c4(BagView *bagView)
{
    ovy142_219a314(bagView, 1, 7, 0);
}

void ovy142_219a3d4(BagView *bagView)
{
    ovy142_219a314(bagView, 2, 8, 0);
}

void ovy142_219a3e4(BagView *bagView)
{
    ovy142_219a314(bagView, 6, 17, 0);
}

void ovy142_219a3f4(BagView *bagView)
{
    ovy142_219a314(bagView, 4, 15, 1);
}

int ovy142_219a404(BagView *bagView)
{
    int iVar1;

    iVar1 = sub_0202E9DC(bagView->unkC, 5);
    if (iVar1 == 0)
    {
        bagView->bagMenuReturnApp = 0x10;
        BagMenu_SetRunFunc(bagView, 0);
        return 1;
    }
    if (iVar1 == 1)
    {
        ovy142_219a2c4(bagView, 0x77);
    }
    else
    {
        ovy142_219a2c4(bagView, 0x3a);
    }
    
    return 0;
}

int ovy142_219a440(BagView *bagView)
{
    if (bagView->unk89C == 0)
    {
        return ovy142_219a314(bagView, 9, 0x14, 0);
    }
    return 0;
}

int ovy142_219a460(BagView *bagView)
{
    if (bagView->unk89C == 0)
    {
        return ovy142_219a314(bagView, 3, 0xe, 1);
    }
    return 0;
}

void ovy142_219a480(BagView *bagView)
{
    ovy142_219a314(bagView, 10, 0x15, 0);
}

void ovy142_219a490(BagView *bagView)
{
    ovy142_219a314(bagView, 0xb, 0x16, 0);
}

u32 ovy142_219a4a0(u16 item);

u32 ovy142_219a4a0(u16 item)
{
    for (u32 i = 0; i < 11; ++i)
    {
        u16 items = data_021A0980[i].item;
        
        if (item >= items &&  item < (data_021A0980[i].num + items))
            return i;
    }
    return -1;
}

void BagMenu_HandlePressAButton(BagView *bagView)
{
    u32 bVar1 = 0;

    if (ovy142_219f7a4(bagView))
    {
        int data = sub_0202DBE4(bagView->unk79C);
        if (data)
        {
            int iVar3 = sub_0202DC00(bagView->unk79C);
            bagView->unk89C = bagView->unk848[iVar3];
            switch (bagView->unk89C)
            {
            case BAG_OPTION_USE:
                int type = BagSave_GetExistingItemPocket(bagView->bagSave, bagView->selectItem);
                ovy142_219ff40(bagView, 0);
                if (type != 5)
                {
                    if (type != 4)
                    {
                        sub_0202D384((u16)bagView->selectItem);
                    }
                }
                else
                {
                    int fieldPocket = Item_GetItemParam(bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, bagView->heapId);
                    if (fieldPocket == 0)
                    {
                        sub_0202D384((u16)bagView->selectItem);
                    }
                }

                if (type == ITEM_TYPE_TMHM)
                {
                    BagMenu_SetRunFunc(bagView, BagMenu_TmHmUseStart);
                    break;
                }
                else
                {
                    int isEvoStone = Item_GetItemParam(bagView->selectItem, ITEM_DATA_IS_EVOSTONE, bagView->heapId);

                    if (isEvoStone == 1)
                    {
                        bagView->bagMenuReturnApp = 12;
                        BagMenu_SetRunFunc(bagView, 0);
                    }
                    else
                    {
                        int iVar5;
                        int index = ovy142_219a4a0(bagView->selectItem);
                        if (index >= 0)
                        {
                            index = ovy142_219a4a0(bagView->selectItem);
                            data_021A0980[index].func(bagView);
                            break;
                        }
                        iVar5 = ovy142_219a0dc((u16)bagView->selectItem);
                        if (iVar5 == 1)
                        {
                            BagMenu_SetRunFunc(bagView, BagMenu_UseRepel);

                            break;
                        }
                        else if (iVar5 == 2)
                        {
                            BagMenu_SetRunFunc(bagView, ovy142_219a250);

                            break;
                        }
                        else
                        {
                            bagView->bagMenuReturnApp = 5;
                            BagMenu_SetRunFunc(bagView, 0);
                            break;
                        }
                    }
                }
                break;
            case BAG_OPTION_FREE:
                ovy142_219ff40(bagView, 0);
                if (sub_0202E9DC(bagView->unkC, 0) == 0)
                {
                    bagView->bagMenuReturnApp = 0xb;
                    BagMenu_SetRunFunc(bagView, 0);
                    break;
                }
                GFL_MsgDataLoadStrbuf(bagView->msgData, 57, bagView->stringBuff1);
                GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
                GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
                BagMenu_SetRunFunc(bagView, ovy142_219a2ac);
                break;

            case BAG_OPTION_TOSS:
                BagMenu_SetRunFunc(bagView, BagMenu_ItemToss);
                break;
            
            case BAG_OPTION_TO_FREE_SPACE:
            case BAG_OPTION_FREESPACE_BACK:
                BagMenu_SetRunFunc(bagView, BagMenu_MoveItemToFreeSpace);
                break;
            case 4:
            case 5:
                iVar3 = BagMenu_IsNotNormalBagMode(bagView);
                if (iVar3 == 1)
                {
                    BagMenu_CheckItemCanRegist(bagView, bagView->posNow);
                    ovy142_21998f4(bagView);
                    BagMenu_PopUpOptionMenuSetting(bagView, 1);
                    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
                    BagMenu_KeyPadMain(bagView);
                }

                break;
            case BAG_OPTION_LOOK_MAIL:
                ovy142_219ff40(bagView, 0);
                int item = bagView->selectItem;
                if ((0x89 <= item) && (item <= 0x94))
                {
                    bagView->bagMenuReturnApp = 0x13;
                    BagMenu_SetRunFunc(bagView, 0);
                }

                break;

            case 10:
                if (sub_0203D554() == 1)
                {
                    ovy142_219e120(bagView);
                }
                else
                {
                    ovy142_219de0c(bagView);
                }
                ovy142_219bda4(bagView, sub_0203D554() == 0);
                BagMenu_PopUpOptionMenuSetting(bagView, 1);
                Oam_EnableOamAnim(bagView->scrollBarOam, 1);
                BagMenu_KeyPadMain(bagView);
                break;
            case 11:
                bagView->bagMenuReturnApp = 1;
                BagMenu_SetRunFunc(bagView, 0);
                break;

            case BAG_OPTION_TAKE_MAIL:
                bagView->bagMenuReturnApp = 2;
                ovy142_219ff40(bagView, 0);
                BagMenu_SetRunFunc(bagView, 0);
                break;
            }
            bVar1 = 1;
        }
        if (bVar1)
        {
            
            sub_0219F0AC(bagView);
            sub_0202DA54(bagView->unk79C);
            bagView->unk79C = 0;
        }
    }
}

void ovy142_219a724(BagView *bagView)
{
    int v2;      // r0
    u32 bagMode; // r0

    v2 = BagMenu_GetSelectSlot(bagView);
    ItemTable *v3 = BagMenu_GetBagItemDataBySlot(bagView, v2);
    bagView->selectItem = 0;
    if (v3)
        bagView->selectItem = v3->itemid;
    bagMode = bagView->bagMode;

    if (bagMode == BAG_MODE_BOX_SELECT_ITEM_HELD)
    {
        if (!Item_GetItemParam((u16)bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, bagView->heapId) 
        && Item_IsNotSpecialMonsball((u16)bagView->selectItem) == 1)
        {
            if (Item_IsMail(bagView->selectItem))
                bagView->bagMenuReturnApp = 18;
            else
                bagView->bagMenuReturnApp = 3;
            BagMenu_SetRunFunc(bagView, 0);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(bagView->msgData, 47, bagView->stringBuff1);
            BagMenu_LoadItemNameToStrbuf(bagView, 0, bagView->selectItem);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            sub_0219F760(bagView);
            BagMenu_PopUpOptionMenuSetting(bagView, 0);
            ovy142_219ff40(bagView, 0);
            BagMenu_SetRunFunc(bagView, ovy142_219acb8);
        }
    }
    else if (bagMode == BAG_MODE_SELECT_ITEM)
    {
        bagView->bagMenuReturnApp = 1;
        BagMenu_SetRunFunc(bagView, 0);
    }
    else if (bagMode == BAG_MODE_SELL_ITEM)
    {
        BagMenu_SetRunFunc(bagView, BagMenu_TrySellItem);
    }
    else
    {
        ovy142_219c014(bagView);
        ovy142_219f76c(bagView, bagView->selectItem);
        sub_0219F760(bagView);
        Oam_EnableOamAnim(bagView->scrollBarOam, 0);
        BagMenu_SetRunFunc(bagView, BagMenu_HandlePressAButton);
    }
}

void BagMenu_HandleKeyPad(BagView *bagView)
{
    int v2;     // r0
    int v3; // r5
    int v5;     // r5
    int v6;     // r5

    if (PrintSystem_IsTextPrintActiveEnd(bagView->printSystem))
    {
        if (!sub_0203DA2C())
            bagView->unk8B0 = 0;
        sub_020504F0(bagView->buttonManSystem);
        sub_02035198(bagView->unk8A4);
        if (bagView->bagMenuFunc != BagMenu_HandleKeyPad)
            return;
        {
            if (ovy142_2199bcc(bagView))
            {
                bagView->unk838 = 0xffff;
                ovy142_21998f4(bagView);
                return;
            }
            if (bagView->unk8B0 == 1)
                return;
            {
                if (sub_0203D554() == 1)
                {
                    v2 = GCTX_HIDGetPressedKeys();
                    v3 = v2;
                    if (!v2)
                        return;
                    if (BagMenu_GetPocketItemAmount(bagView))
                    {
                        if ((v3 & (KEY_B | KEY_START | KEY_X | KEY_Y)) == 0)
                        {
                            GFL_SndSEPlay(1352);
                            ovy142_219de0c(bagView);
                            ovy142_219bda4(bagView, 1);
                            return;
                        }
                    }
                    else
                    {
                        ovy142_219bda4(bagView, 1);
                        if ((v3 & (KEY_A | KEY_SELECT | KEY_START | KEY_UP | KEY_DOWN)) != 0)
                            return;
                    }
                }
                if ((GCTX_HIDGetPressedKeys() & KEY_B) != 0)
                {
                    bagView->bagMenuReturnApp = 1;
                    bagView->selectItem = 0;
                    sub_0203D564(0);
                    ovy142_219c9f8(bagView, 4, 0);
                    return;
                }
                if ((GCTX_HIDGetPressedKeys() & KEY_X) != 0)
                {
                    if (bagView->bagMode != BAG_MODE_BOX_SELECT_ITEM_HELD)
                    {
                        bagView->bagMenuReturnApp = 0;
                        bagView->selectItem = 0;
                        sub_0203D564(0);
                        ovy142_219c9f8(bagView, 3, 0);
                        
                    }
                    return;
                }
                if ((GCTX_HIDGetPressedKeys() & KEY_Y) != 0)
                {
                    if (BagMenu_IsNotNormalBagMode(bagView) == 1)
                    {
                        if (BagMenu_CheckItemCanRegist(bagView, bagView->posNow) == 1)
                            ovy142_21998f4(bagView);
                        else
                            ovy142_219be90(bagView);
                        if (sub_0203D554() == 1)
                        {
                            ovy142_219de0c(bagView);
                            ovy142_219bda4(bagView, 1);
                        }
                    }
                    return;
                }
                if ((GCTX_HIDGetPressedKeys() & KEY_START) != 0)
                {
                    if (bagView->itemPocket != BAG_POCKET_FREE_SPACE)
                    {
                        if (BagMenu_GetPocketItemAmount(bagView) > 1)
                        {
                            ovy142_219bca4(bagView);
                            ovy142_219bda4(bagView, 1);
                            ovy142_219ff40(bagView, 0);
                            bagView->unk838 = 0xffff;
                            ovy142_21998f4(bagView);
                            BagMenu_SetRunFunc(bagView, BagMenu_StartSortItem);
                            return;
                        }
                    }
                    else if (ovy142_219d22c(bagView) > 2)
                    {
                        ovy142_219bca4(bagView);
                        ovy142_219bda4(bagView, 1);
                        ovy142_219ff40(bagView, 0);
                        bagView->unk838 = 0xffff;
                        ovy142_21998f4(bagView);
                        BagMenu_SetRunFunc(bagView, ovy142_219d0c8);
                        return;
                    }
                }
                if ((GCTX_HIDGetPressedKeys() & KEY_A) != 0)
                {
                    if (BagMenu_GetPocketItemAmount(bagView) > 0)
                    {
                        BagMenu_SetRunFunc(bagView, ovy142_219c958);
                        return;
                    }
                }
                else
                {
                    if ((GCTX_HIDGetPressedKeys() & KEY_SELECT) != 0)
                    {
                        if (bagView->itemPocket != BAG_POCKET_FREE_SPACE 
                            && BagMenu_GetPocketItemAmount(bagView) > 1)
                        {
                            MI_CpuFill8(bagView->m_itemTable, 0, 0x4D8);
                            BagSave_CopyPocket(bagView->bagSave, bagView->m_itemTable, bagView->itemPocket, 1);
                            Oam_SetOamAnimIndex(bagView->unk6B4, 2);
                            ovy142_219ffe8(bagView, 0);
                            bagView->isSwitchMode = TRUE;
                            BagMenu_KeyPadSwitchMode(bagView);
                            return;
                        }
                        return;
                    }
                    else
                    {
                        if (BagMenu_CheckUpDownKeyPad(bagView))
                        {
                            ovy142_219ed3c(bagView);
                            GFL_SndSEPlay(0x548);
                            ovy142_21998f4(bagView);
                            return;
                        }
                    }
                }
                
                if ((sub_0203DF44() & KEY_RIGHT) != 0)
                    {
                        v5 = bagView->itemPocket;
                        bagView->itemPocket = v5 + 1;
                        if (v5 + 1 >= BAG_POCKET_MAX)
                            bagView->itemPocket = 0;
                        sub_0203D564(0);
                        ovy142_219cac0(bagView, v5, 1, ovy142_219D464);
                    }
                    else if ((sub_0203DF44() & KEY_LEFT) != 0)
                    {
                        v6 = bagView->itemPocket;
                        bagView->itemPocket = v6 - 1;
                        if (v6 - 1 < 0)
                            bagView->itemPocket = BAG_POCKET_FREE_SPACE;
                        sub_0203D564(0);
                        ovy142_219cac0(bagView, v6, 0, ovy142_219D464);
                    }
            }
        }
    }
}

void ovy142_219ab38(BagView *bagView);
extern void ovy142_219fb60(BagView*);

void ovy142_219ab38(BagView *bagView)
{
    int iVar1;


    iVar1 = sub_0202DBE4(bagView->unk79C);
    if (iVar1 != 0)
    {
        iVar1 = sub_0202DC00(bagView->unk79C);
        if (iVar1 == 0) 
        {
            sub_0219F0AC(bagView);
            bagView->bagMenuReturnApp = 6;
            BagMenu_SetRunFunc(bagView, 0);
        }
        else
        {
            sub_0219F0AC(bagView);
            sub_02045738(3);
            Oam_EnableOamAnim(bagView->scrollBarOam, 1);
            BagMenu_PopUpOptionMenuSetting(bagView, 1);
            if (sub_0203D554() == 1)
            {
                ovy142_219e120(bagView);
                ovy142_219bda4(bagView, 0);
            }
            else
            {
                ovy142_219bda4(bagView, 1);
            }
            
            BagMenu_KeyPadMain(bagView);
        }
        
        ovy142_219fb60(bagView);
    }

}

void ovy142_219abb8(BagView *bagView);
extern void ovy142_219faac(BagView*);

void ovy142_219abb8(BagView *bagView)
{
    int iVar1;

    iVar1 = ovy142_219f7a4(bagView);
    if (iVar1 != 0)
    {
        ovy142_219faac(bagView);
        BagMenu_SetRunFunc(bagView, ovy142_219ab38);
    }

}

void BagMenu_PrintPokeLearnHmTm(BagView *bagView);
extern int GFL_SndPlayerIsActiveAny(void);
extern void LoadMoveNameToStrbuf(int, int, int);

void BagMenu_PrintPokeLearnHmTm(BagView *bagView)
{
    if ((GFL_SndPlayerIsActiveAny() != 1) 
        && ((GCTX_HIDGetPressedKeys() & (KEY_A | KEY_B)) || (sub_0203DA48() != 0)))
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 62, bagView->stringBuff1);
        int move = Item_GetTmHmMove((u16)bagView->selectItem);
        LoadMoveNameToStrbuf(bagView->wordSetSystem, 0, move);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        BagMenu_PrintBagMessage(bagView, 1);
        BagMenu_SetRunFunc(bagView, ovy142_219abb8);
    }
}

void ovy142_219ac4c(BagView *bagView);

void ovy142_219ac4c(BagView *bagView)
{
    int iVar1;

    iVar1 = ovy142_219f7a4(bagView);
    if (iVar1 != 0)
    {
        GFL_SndSEPlay(0x55C);
        BagMenu_SetRunFunc(bagView, BagMenu_PrintPokeLearnHmTm);
    }
}

extern int Item_GetTmNo(u16);
void BagMenu_TmHmUseStart(BagView *bagView);

void BagMenu_TmHmUseStart(BagView *bagView)
{
    int iVar1;

    iVar1 = Item_GetTmNo((u16)bagView->selectItem);
    if (iVar1 == 0xFF)
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 60, bagView->stringBuff2);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 61, bagView->stringBuff2);
    }
    
    BagMenu_PrintBagMessage(bagView, 1);
    BagMenu_SetRunFunc(bagView, ovy142_219ac4c);
}

void ovy142_219acb8(BagView *bagView);

void ovy142_219acb8(BagView *bagView)
{
    if (((GCTX_HIDGetPressedKeys() & (KEY_A | KEY_B)) != 0) || sub_0203DA48())
    {
        sub_02045738(3);

        bagView->unk838 = 0xFFFF;
        ovy142_21998f4(bagView);
        bagView->unk892 = 1;
        ovy142_219ed3c(bagView);
        Oam_EnableOamAnim(bagView->scrollBarOam, 1);
        BagMenu_PopUpOptionMenuSetting(bagView, 1);
        BagMenu_KeyPadMain(bagView);
    }
}

void ovy142_219ad14(BagView *bagView);

void ovy142_219ad14(BagView *bagView)
{
    if (ovy142_219f7a4(bagView))
    {
        BagMenu_SetRunFunc(bagView, ovy142_219acb8);
    }
}

void ovy142_219ad30(BagView *bagView)
{
    int iVar1;
    int iVar2;

    iVar1 = sub_0202DBE4(bagView->unk79C);
    if (iVar1 != 0)
    {
        iVar1 = sub_0202DC00(bagView->unk79C);
        ovy142_219fb60(bagView);
        sub_02045738(3);
        if (iVar1 == 0)
        {
            GFL_SndSEPlay(0x647);
            BagView_DeletItem(bagView, bagView->selectAmount);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x36, bagView->stringBuff1);
            BagMenu_LoadItemTextWithAmount(bagView, 0, bagView->selectItem, ((int)bagView->selectAmount > 1), 0);
            StringSetNumber(bagView->wordSetSystem, 1, bagView->selectAmount, 3, 0, 1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2,
                                    bagView->stringBuff1);
            sub_0219F760(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219ad14);
        }
        else
        {
            Oam_EnableOamAnim(bagView->scrollBarOam, 1);
            BagMenu_PopUpOptionMenuSetting(bagView, 1);
            iVar2 = sub_0203D554();
            ovy142_219bda4(bagView, iVar2 == 0);
            BagMenu_KeyPadMain(bagView);
        }
    }
}

void ovy142_219ae10(BagView *bagView);

void ovy142_219ae10(BagView *bagView)
{
    int iVar1;

    iVar1 = ovy142_219f7a4(bagView);
    if (iVar1 != 0)
    {
        ovy142_219faac(bagView);
        BagMenu_SetRunFunc(bagView, ovy142_219ad30);
    }
}

extern void BagMenu_SelectAmountItemToss(BagView*);
extern void ovy142_219b438(BagView*, int);

void BagMenu_ItemToss(BagView *bagView)
{
    bagView->selectAmount = 1;
    ovy142_219b438(bagView, 1);
    GFL_MsgDataLoadStrbuf(bagView->msgData, 0x35, bagView->stringBuff1);
    BagMenu_LoadItemTextWithAmount(bagView, 0, bagView->selectItem, 1, 0);
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
    sub_0219F760(bagView);
    BagMenu_SetRunFunc(bagView, BagMenu_SelectAmountItemToss);
}


void BagMenu_SelectAmountItemToss(BagView *bagView)
{
    int iVar2;
    u32 uVar3;

    iVar2 = ovy142_219f7a4(bagView);
    if ((iVar2 != 0) && (ovy142_219b490(bagView) != 1))
    {
        iVar2 = ovy142_219cb88();
        if (iVar2 == -1)
        {
            uVar3 = GCTX_HIDGetPressedKeys();
            if ((uVar3 & KEY_A))
            {
                iVar2 = 0;
                sub_0203D564(0);
            }
            else
            {
                uVar3 = GCTX_HIDGetPressedKeys();
                if ((uVar3 & KEY_B) != 0)
                {
                    sub_0203D564(0);
                    iVar2 = 1;
                }
            }
        }

        if (iVar2 == 0)
        {
            GFL_SndSEPlay(0x54C);
            ovy142_219b46c(bagView);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 55, bagView->stringBuff1);
            BagMenu_LoadItemTextWithAmount(bagView, 0, bagView->selectItem, 1 < bagView->selectAmount, 0);
            StringSetNumber(bagView->wordSetSystem, 1, bagView->selectAmount, 3, 0, 1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            sub_0219F760(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219ae10);
        }
        else if (iVar2 == 1)
        {
            GFL_SndSEPlay(0x551);
            ovy142_219c9f8(bagView, 4, ovy142_219cba8);
        }
    }
}



void BagMenu_TrySellItem(BagView *bagView);

void ovy142_219b2a8(BagView*);
extern void ovy142_219b0a0(BagView*);
extern void ovy142_219b12c(BagView*);
extern void ovy142_219fa3c(BagView*);

void BagMenu_TrySellItem(BagView *bagView)
{
    int price;
    int isImportItem;
    int uVar4;

    Oam_EnableOamAnim(bagView->scrollBarOam, 0);

    price = Item_GetItemParam(bagView->selectItem, ITEM_DATA_PRICE, bagView->heapId);
    isImportItem = Item_GetItemParam(bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, bagView->heapId);
    // cant sell item
    if ((price == 0) || (isImportItem != 0))
    {
        BagMenu_PopUpOptionMenuSetting(bagView, 0);
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x4d, bagView->stringBuff1);
        BagMenu_LoadItemNameToStrbuf(bagView, 0, bagView->selectItem);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        sub_0219F760(bagView);
        ovy142_219ff40(bagView, 0);
        BagMenu_SetRunFunc(bagView, ovy142_219b2a8);
    }
    else
    {
        bagView->selectAmount = 1;
        ovy142_219fa3c(bagView);
        BagMenu_PopUpOptionMenuSetting(bagView, 0);
        uVar4 = BagMenu_GetSelectSlot(bagView);
        ItemTable* iVar2 = (ItemTable*)BagMenu_GetBagItemDataBySlot(bagView, uVar4);
        
        if (iVar2->num == 1)
        {
            BagMenu_SetRunFunc(bagView, ovy142_219b12c);
        }
        else
        {
            ovy142_219b438(bagView, 2);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x4e, bagView->stringBuff1);
            BagMenu_LoadItemNameToStrbuf(bagView, 0, bagView->selectItem);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            sub_0219F760(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219b0a0);
        }
    }
}

extern void ovy142_219cbe4(BagView*);

void ovy142_219b0a0(BagView *bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(bagView);
    if ((iVar1 != 0) && (iVar1 = ovy142_219b490(bagView), iVar1 != 1))
    {
        iVar1 = ovy142_219cb88();
        if (iVar1 == -1)
        {
            uVar2 = GCTX_HIDGetPressedKeys();
            if ((uVar2 & KEY_A) != 0)
            {
                iVar1 = 0;
                sub_0203D564(0);
            }
            else
            {
                uVar2 = GCTX_HIDGetPressedKeys();
                if ((uVar2 & KEY_B) != 0)
                {
                    sub_0203D564(0);
                    iVar1 = 1;
                }
            }
        }
        if (iVar1 == 0)
        {
            GFL_SndSEPlay(0x54C);
            ovy142_219b46c(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219b12c);
        }
        else if (iVar1 == 1)
        {
            GFL_SndSEPlay(0x551);
            ovy142_219c9f8(bagView, 4, ovy142_219cbe4);
        }
    }
}

void BagMenu_PrintSellItemYesNo(BagView*);

void ovy142_219b12c(BagView *bagView)
{
    int uVar2;

    ovy142_219faac(bagView);
    uVar2 = BagMenu_GetItemPrice(bagView->selectItem, bagView->selectAmount, bagView->heapId);
    GFL_MsgDataLoadStrbuf(bagView->msgData, 79, bagView->stringBuff1);
    StringSetNumber(bagView->wordSetSystem, 0, uVar2, 7, 0, 1);
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
    sub_0219F760(bagView);
    BagMenu_SetRunFunc(bagView, BagMenu_PrintSellItemYesNo);
}

void BagMenu_PrintSellItemYesNo(BagView *bagView)
{
    int iVar1;
    int price;
    int uVar3;
    int iVar4;

    iVar1 = ovy142_219f7a4(bagView);

    if ((iVar1 != 0) && (sub_0202DBE4(bagView->unk79C)))
    {
        iVar1 = sub_0202DC00(bagView->unk79C);
        ovy142_219fb60(bagView);

        switch (iVar1)
        {
        case 0:
            price = BagMenu_GetItemPrice(bagView->selectItem, bagView->selectAmount, bagView->heapId);
            BagView_DeletItem(bagView, bagView->selectAmount);
            uVar3 = PlayerSave_GetPlayerSaveOffset(bagView->m_GameData);
            PlayerSave_AddMoney(uVar3, price);
            GFL_SndSEPlay(0x655);
            BagMenu_PrintMoneyString(bagView);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x50, bagView->stringBuff1);
            BagMenu_LoadItemTextWithAmount(bagView, 0, bagView->selectItem, 1 < bagView->selectAmount, 0);

            StringSetNumber(bagView->wordSetSystem, 1, price, 7, 0, 1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            sub_0219F760(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219b2a8);
            break;
        case 1:
            iVar4 = sub_0203D554();
            ovy142_219bda4(bagView, iVar4 == 0);
            BagMenu_SetRunFunc(bagView, ovy142_219b2f0);
            break;
        }
    }
}

void ovy142_219b2a8(BagView *bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(bagView);
    if (iVar1 != 0)
    {
        uVar2 = GCTX_HIDGetPressedKeys();
        if ((uVar2 & (KEY_B | KEY_A)) != 0)
        {
            ovy142_219bda4(bagView, 1);
            BagMenu_SetRunFunc(bagView, ovy142_219b2f0);
            return;
        }

        if (sub_0203DA48() != 0)
        {
            ovy142_219bda4(bagView, 0);
            BagMenu_SetRunFunc(bagView, ovy142_219b2f0);
        }
    }
}

extern void ovy142_219fa6c(BagView*);

void ovy142_219b2f0(BagView *bagView)
{
    sub_02045738(3);
    bagView->unk838 = 0xFFFF;
    ovy142_21998f4(bagView);
    bagView->unk892 = 1;
    ovy142_219ed3c(bagView);
    ovy142_219fa6c(bagView);
    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
    BagMenu_PopUpOptionMenuSetting(bagView, 1);
    BagMenu_KeyPadMain(bagView);
}

void BagView_DeletItem(BagView *bagView, int delNum)
{
    u32 uVar1;
    u32 uVar2;
    int inFreeSpace;
    int count;

    uVar2 = BagMenu_GetSelectSlot(bagView);
    BagMenu_GetBagItemDataBySlot(bagView, uVar2);
    inFreeSpace = BagSave_IsItemInFreeSpace(bagView->bagSave, bagView->selectItem);
    BagSave_SubItem(bagView->bagSave, bagView->selectItem, delNum, bagView->heapId);
    count = BagSave_GetItemCountByID(bagView->bagSave, bagView->selectItem, bagView->heapId);

    if (count == 0)
    {
        if (inFreeSpace == 1)
        {
            uVar1 = BagMenu_GetSelectSlot(bagView);
            ovy142_21a050c(&bagView->unk8C8, uVar1, 0);
        }
        ovy142_219b3b0(bagView);
    }
}

void ovy142_219b3b0(BagView *bagView)
{
    int v2;  // r5
    int v3;  // r1
    int v4;  // r2
    int v5;  // r3
    int v6;  // r5
    int v8;  // r1
    int v9;  // r1
    int v10; // r1

    v2 = BagMenu_GetSelectSlot(bagView);
    v3 = BagMenu_GetPocketItemAmount(bagView) + 1;
    v4 = 0;
    v5 = 0;
    if (v3 == v2 + 1)
        v4 = 1;
    v6 = bagView->unk834;

    if (v6 == v3 - 7)
        v5 = 1;

    if (v3 < 7)
    {
        if (v4 == 1)
        {
            v8 = bagView->posNow - 1;
            if (v8 <= 0)
                v8 = 0;
            bagView->posNow = v8;
        }
    }
    else
    {
        if (v5)
        {
            if (!v4)
            {
                ++bagView->posNow;
                v9 = bagView->unk834 - 1;
                if (v9 < -1)
                    v9 = -1;
                bagView->unk834 = v9;
            }
            else
            {
                v10 = v6 - 1;
                if (v10 < -1)
                    v10 = -1;
                bagView->unk834 = v10;
            }
        }
    }
}


void ovy142_219b438(BagView *bagView, int param_2)
{
    bagView->unk80C = param_2;
    ovy142_219fb78(bagView);
    ovy142_219fc14(bagView, bagView->selectAmount);
    sub_0204C124(bagView->bottomIconOam[5], 1);
    sub_0204C124(bagView->bottomIconOam[6], 1);
}

void ovy142_219b46c(BagView *bagView)
{
    sub_02045738(3);
    sub_0204C124(bagView->bottomIconOam[5], 0);
    sub_0204C124(bagView->bottomIconOam[6], 0);
}

extern int sub_0203D9C8(TouchscreenHitbox*);

int ovy142_219b490(BagView *bagView)
{
    int iVar5;
    int iVar6;
    int unaff_r4;
    int bVar11 = 0;

    TouchscreenHitbox local_24[3];

    iVar5 = bagView->selectAmount;

    ItemTable *iVar3 = BagMenu_GetBagItemDataBySlot(bagView, BagMenu_GetSelectSlot(bagView));
    local_24 = data_021A08F8;

    iVar6 = sub_0203D9C8(local_24);
    if (iVar6 != -1)
    {
        bagView->unk810 = bagView->unk810 + 1;
        bVar11 = 1;
    }
    else
    {
        bagView->unk810 = 0;
    }

    if ((bagView->unk810 == 1) || (bagView->unk810 > 30))
    {
        switch (iVar6)
        {
        case 0:
            if (bagView->unk810 > 0x78)
            {
                bagView->selectAmount = bagView->selectAmount + 10;
            }
            else
            {
                bagView->selectAmount = bagView->selectAmount + 1;
            }
            unaff_r4 = 0;
            break;
        case 1:
            if (bagView->unk810 > 0x78)
            {
                bagView->selectAmount = bagView->selectAmount - 10;
            }
            else
            {
                bagView->selectAmount = bagView->selectAmount - 1;
            }
            unaff_r4 = 1;
            break;
        }
    }
    if (iVar6 == -1)
    {
        if (sub_0203DF44() & KEY_UP)
        {
            bagView->selectAmount = bagView->selectAmount + 1;
            unaff_r4 = 0;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & KEY_DOWN)
        {
            bagView->selectAmount = bagView->selectAmount + -1;
            unaff_r4 = 1;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & KEY_RIGHT)
        {
            bagView->selectAmount = bagView->selectAmount + 10;
            unaff_r4 = 0;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & KEY_LEFT)
        {
            bagView->selectAmount = bagView->selectAmount - 10;
            unaff_r4 = 1;
            bVar11 = TRUE;
        }
    }

    if (iVar3->num < bagView->selectAmount)
    {
        bagView->selectAmount = 1;
    }
    else if (bagView->selectAmount < 1)
    {
        bagView->selectAmount = iVar3->num;
    }

    if (bagView->selectAmount != iVar5)
    {
        u16 uVar8;
        int uVar22;
        GFL_SndSEPlay(0x548);
        if (unaff_r4 == 0)
        {
            uVar22 = bagView->bottomIconOam[5];
            uVar8 = 0xb;
        }
        else
        {
            uVar22 = bagView->bottomIconOam[6];
            uVar8 = 10;
        }
        Oam_SetOamAnimIndex(uVar22, uVar8);
        ovy142_219fc14(bagView, bagView->selectAmount);
    }
    return bVar11;
}

void BagMenu_MoveItemToFreeSpace(BagView *bagView)
{
    int uVar1;
    int iVar2;
    int uVar3;
    int uVar4;
    ItemTable *iVar5;
    int bVar6;

    iVar2 = BagSave_IsItemInFreeSpace(bagView->bagSave, bagView->selectItem);
    uVar3 = BagSave_GetExistingItemPocket(bagView->bagSave, bagView->selectItem);
    uVar4 = BagMenu_GetSelectSlot(bagView);
    iVar5 = BagMenu_GetBagItemDataBySlot(bagView, uVar4);
    bVar6 = iVar5->num != 1;
    if (iVar2 == 0)
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 149, bagView->stringBuff1);
        BagMenu_LoadItemTextWithAmount(bagView, 1, bagView->selectItem, bVar6, 0);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 5);
        ovy142_21a0578(&bagView->unk8C8, bagView->selectItem, (short)uVar3);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 150, bagView->stringBuff1);
        BagMenu_LoadItemTextWithAmount(bagView, 1, bagView->selectItem, bVar6, 0);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, uVar3);
        uVar1 = BagMenu_GetSelectSlot(bagView);
        ovy142_21a050c(&bagView->unk8C8, uVar1, 1);
    }
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
    BagMenu_PrintBagMessage(bagView, 0);
    GFL_SndSEPlay(0x663);
    ovy142_219ff40(bagView, 0);
    ovy142_219b3b0(bagView);
    BagMenu_SetRunFunc(bagView, ovy142_219b6dc);
}

void ovy142_219b6dc(BagView *bagView)
{
    u32 uVar1;

    uVar1 = GCTX_HIDGetPressedKeys();
    if ((uVar1 & (KEY_A | KEY_B)))
    {
        ovy142_219bda4(bagView, 1);
    }
    else if (sub_0203DA48())
    {
        ovy142_219bda4(bagView, 0);
    }
    else
        return;

    sub_02045738(3);
    bagView->unk838 = 0xffff;
    ovy142_21998f4(bagView);
    bagView->unk892 = 1;
    ovy142_219ed3c(bagView);
    sub_0219F0AC(bagView);
    Oam_EnableOamAnim(bagView->scrollBarOam, 1);
    BagMenu_PopUpOptionMenuSetting(bagView, 1);
    ovy142_219ff40(bagView, 1);
    BagMenu_KeyPadMain(bagView);
}

typedef struct
{
    int unk0;
    u64 unk4;
} UNKNOW_TYPE;

extern int ovy142_219b754(UNKNOW_TYPE *a1, UNKNOW_TYPE *a2);

int ovy142_219b754(UNKNOW_TYPE *a1, UNKNOW_TYPE *a2)
{
    u64 v2;

    v2 = a2->unk4;
    if (a1->unk4 == v2)
        return 0;
    if (v2 < a1->unk4)
        return 1;
    return -1;
}

void BagMenu_SortItemByClass(BagView *bagView)
{
    int i;
    
    ItemTable* iVar2;
    ItemSortTable* iVar1;
    int bagItemCount;
    void* arcHandle;
    
    iVar1 = (ItemSortTable*)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, (char*)gItemMenuText, 0xc10);
    iVar2 = (ItemTable*)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, (char*)gItemMenuText, 0xc11);
    BagSave_CopyPocketRaw(bagView->bagSave, iVar2, bagView->itemPocket, 1);
    bagItemCount = BagSave_GetPocketItemCountCore(bagView->bagSave, bagView->itemPocket, 1);
    arcHandle = Item_ArcHandleCreate(bagView->heapId);
    for (i = 0; i < bagItemCount; i++)
    {
        void* fileData = Item_ArcHandleReadFile(arcHandle, iVar2[i].itemid, bagView->heapId);
        ItemSortTable* param = &iVar1[i];
        int itemClass = Item_GetParam(fileData, 0xf);
        param->ItemClass.raw = ((itemClass << 28)) + (Item_GetParam(fileData, 0x11) << 16) + iVar2[i].itemid;
        param->item = iVar2[i];
        GFL_HeapFree(fileData);
    }

    GFL_ArcToolFree(arcHandle);
    MATH_QSort(iVar1, bagItemCount, sizeof(ItemSortTable), (int)ovy142_219b754, 0);
    
    for (i = 0; i < bagItemCount; ++i)
    {
        iVar2[i]= iVar1[i].item;
    }
    BagSave_CopyPocketRaw(bagView->bagSave, iVar2, bagView->itemPocket, 0);
    GFL_HeapFree(iVar2);
    GFL_HeapFree(iVar1);
}

void BagMenu_SortItemByName(BagView *bagView);

void BagMenu_SortItemByName(BagView *bagView)
{
    int i;
    ItemSortTable* iVar1;
    ItemTable* iVar2;
    int bagItemCount;
 
    iVar1 = (ItemSortTable*)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, (char*)gItemMenuText, 0xc45);
    iVar2 = (ItemTable*)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, (char*)gItemMenuText, 0xc46);
    BagSave_CopyPocketRaw(bagView->bagSave, iVar2, bagView->itemPocket, 1);
    bagItemCount = BagSave_GetPocketItemCountCore(bagView->bagSave, bagView->itemPocket, 1);
    for ( i = 0; i < bagItemCount; i++)
    {
        u16 itemId = iVar2[i].itemid;
        iVar1[i].ItemClass.raw = itemId + (data_021A0AC8[itemId] << 16);
        iVar1[i].item = iVar2[i];
    }

    MATH_QSort(iVar1, bagItemCount, 12, (int)ovy142_219b754, 0);
    for (i = 0; i < bagItemCount; i++)
    {
        iVar2[i] = iVar1[i].item ;
    }
    BagSave_CopyPocketRaw(bagView->bagSave, iVar2, bagView->itemPocket, 0);
    GFL_HeapFree(iVar2);
    GFL_HeapFree(iVar1);
}

void BagMenu_SortItemByIndex(BagView *bagView);
extern int Item_GetTmHmIndex(u16);

void BagMenu_SortItemByIndex(BagView *bagView)
{
    int i;
    ItemSortTable *iVar1;
    ItemTable *iVar2;
    int bagItemCount;

    if (bagView->itemPocket == BAG_POCKET_TMHM)
    {
        iVar1 = (ItemSortTable *)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, (char*)gItemMenuText, 0xC7A);
        iVar2 = (ItemTable *)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, (char*)gItemMenuText, 0xC7B);
        BagSave_CopyPocketRaw(bagView->bagSave, iVar2, bagView->itemPocket, 1);
        bagItemCount = BagSave_GetPocketItemCountCore(bagView->bagSave, bagView->itemPocket, 1);
        for (i = 0; i < bagItemCount; i++)
        {
            iVar1[i].ItemClass.param.pro1 = Item_GetTmHmIndex(iVar2[i].itemid);
            iVar1[i].ItemClass.param.pro2 = 0;
            iVar1[i].item = iVar2[i];
        }
        MATH_QSort(iVar1, bagItemCount, 12, (int)ovy142_219b754, 0);
        for (i = 0; i < bagItemCount; i++)
        {
            iVar2[i] = iVar1[i].item;
        }
        BagSave_CopyPocketRaw(bagView->bagSave, iVar2, bagView->itemPocket, 0);
        GFL_HeapFree(iVar2);
        GFL_HeapFree(iVar1);
    }
}

void BagMenu_SortItemByAmount(BagView *bagView, int param_2);
extern int sub_0200854C(void*, u16);

void BagMenu_SortItemByAmount(BagView *bagView, int sortType)
{
    int bagItemCount;
    ItemSortTable* iVar2;
    ItemTable* iVar3;
    void* uVar5;
    int i;


    iVar2 = (ItemSortTable*)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, (char*)gItemMenuText, 0xCA9);
    iVar3 = (ItemTable*)GFL_HeapAllocate(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, (char*)gItemMenuText, 0xCAA);
    BagSave_CopyPocketRaw(bagView->bagSave, iVar3, bagView->itemPocket, 1);
    bagItemCount = BagSave_GetPocketItemCountCore(bagView->bagSave, bagView->itemPocket, 1);
    uVar5 = Item_ArcHandleCreate(bagView->heapId);
    for (i = 0; i < bagItemCount; i++)
    {
        ItemSortTable* params;
        void* uVar7;
        int iVar11;
        uVar7 = Item_ArcHandleReadFile(uVar5, iVar3[i].itemid, bagView->heapId);
        iVar11 = sub_0200854C(bagView->bagSave, iVar3[i].itemid);
        
        if (sortType == SORT_LESS_TO_MORE)
        {
            params = &iVar2[i];
            int itemClass = Item_GetParam(uVar7, 0xf); 
            
            params->ItemClass.raw = ((u64)((999 - iVar11) << 8) << 32) 
                + (itemClass << 28) 
                + ( Item_GetParam(uVar7, 0x11) << 16) 
                + iVar3[i].itemid;
        }
        else
        {
            params = &iVar2[i];
            int itemClass = Item_GetParam(uVar7, 0xf);
            params->ItemClass.raw = ((u64)((iVar11) << 8) << 32) 
                + (itemClass << 28) 
                + ( Item_GetParam(uVar7, 0x11) << 16) 
                + iVar3[i].itemid;
        }
        iVar2[i].item = iVar3[i];
        GFL_HeapFree(uVar7);
    }

    GFL_ArcToolFree(uVar5);
    MATH_QSort(iVar2, bagItemCount, 0xc, (int)ovy142_219b754, 0);
    for (i = 0; i < bagItemCount; i++)
    {
        iVar3[i] = iVar2[i].item;
    }
    BagSave_CopyPocketRaw(bagView->bagSave, iVar3, bagView->itemPocket, 0);
    GFL_HeapFree(iVar3);
    GFL_HeapFree(iVar2);
}

void ovy142_219bca4(BagView *bagView)
{
    GFL_SndSEPlay(0x54C);
    if (bagView->itemPocket != BAG_POCKET_FREE_SPACE)
        Oam_SetOamAnimIndex(bagView->unk744, 2);
    else
        Oam_SetOamAnimIndex(bagView->unk740, 1);

}

void BagMenu_TrySortItem(BagView *bagView, int sortType)
{
    bagView->sortOptionType = sortType;
    switch (sortType)
    {
    case 0:
        BagMenu_SortItemByClass(bagView);
        break;
    case 1:
        BagMenu_SortItemByIndex(bagView);
        break;
    case 2:
        BagMenu_SortItemByName(bagView);
        break;
    case 3:
        BagMenu_SortItemByAmount(bagView, SORT_LESS_TO_MORE);
        break;
    case 4:
        BagMenu_SortItemByAmount(bagView, SORT_MORE_TO_LESS);
        break;
    }
    bagView->unk838 = 0xFFFF;
}

void ovy142_219bd2c(BagView *bagView, int param_2)
{
    if (bagView->unk1F50 != param_2)
    {
        sub_0219BD68(bagView, param_2);
        bagView->posNow = 0;
        bagView->unk834 = -1;
        bagView->unk838 = 0xFFFF;
        bagView->unk892 = 1;
        ovy142_219ed3c(bagView);
    }
}

extern void ovy142_21a063c(ITEM_UNKNOW_DATA*, u16);

void sub_0219BD68(BagView *bagView, int param_2)
{
    bagView->unk1F50 = param_2;
    ovy142_21a063c(&bagView->unk8C8, param_2);
}

void ovy142_219bd84(BagView *bagView)
{
    if (bagView->itemPocket == BAG_POCKET_FREE_SPACE)
    {
        sub_0219BD68(bagView, 0);
    }
    ovy142_219ff60(bagView);
}

void ovy142_219bda4(BagView *bagView, int param_2)
{
    int iVar1;

    if (bagView->isSwitchMode == 1)
    {
        param_2 = 1;
    }
    if (param_2)
        sub_0203D564(0);
    else
        sub_0203D564(1);
    iVar1 = BagMenu_GetPocketItemAmount(bagView);
    if (iVar1 == 0)
    {
        param_2 = 0;
    }
    if (param_2 == 0)
    {
        ovy142_219fd4c(bagView, 0);
    }
    else
    {
        ovy142_219fd4c(bagView, 1);
        sub_020352B0(bagView->unk8A4);
    }
    ovy142_219dda0(bagView, param_2);
}

int BagMenu_IsNotNormalBagMode(BagView *bagView)
{
    int iVar1;

    iVar1 = bagView->bagMode;
    if (!((iVar1 != BAG_MODE_NORMAL) 
        && (iVar1 != BAG_MODE_UNION_ROOM)) || (iVar1 == BAG_MODE_LINK_BATTLE_ROOM))
    {
        return 1;
    }
    return 0;
}

int BagMenu_CheckItemCanRegist(BagView *bagView, int slot)
{
    int iVar1;
    int iVar3;

    slot += bagView->unk834 + 1;
    iVar1 = BagMenu_GetPocketItemAmount(bagView);
    if (iVar1 <= slot)
    {
        return 0;
    }
    ItemTable *puVar2 = (ItemTable*)BagMenu_GetBagItemDataBySlot(bagView, slot);
    iVar1 = sub_02034AA4(puVar2->itemid);

    if (iVar1 == 0xff)
    {
        return 0;
    }
    iVar3 = ovy142_219c0e8(bagView, puVar2->itemid);

    if (iVar3 == 1)
        sub_02017644(bagView->m_GameData, iVar1, 0);
    else
        sub_02017644(bagView->m_GameData, iVar1, 1);
    GFL_SndSEPlay(0x646);
    bagView->unk838 = 0xffff;
    return 1;
}

int sub_0219BE88(int a1)
{
    return BagMenu_GetPocketRegistId(a1);
}

void ovy142_219be90(BagView *bagView)
{
    int uVar1;
    int uVar2;

    uVar1 = sub_0219BE88(bagView->itemPocket);
    uVar2 = GameData_IsPocketRegistered(bagView->m_GameData, uVar1);
    sub_02017644(bagView->m_GameData, uVar1, uVar2 ^ 1);
    GFL_SndSEPlay(0x646);
    ovy142_219becc(bagView);
}

void ovy142_219becc(BagView *bagView)
{
    int sVar1;
    int uVar2;

    if (bagView->isSwitchMode != TRUE)
    {
        uVar2 = sub_0219BE88(bagView->itemPocket);
        sVar1 = GameData_IsPocketRegistered(bagView->m_GameData, uVar2);
        Oam_SetOamAnimIndex(bagView->bottomIconOam[2], (u16)(sVar1 + 6));
    }
}

void ovy142_219bf04(BagView *bagView, void *param_2, ItemTable *param_3, u8 *param_4);

void ovy142_219bf04(BagView *bagView, void *param_2, ItemTable *param_3, u8 *param_4)
{
    u8 uVar1;
    int iVar2;

    iVar2 = Item_GetParam(param_2, 6);
    if (iVar2 != 0)
    {
        iVar2 = Item_IsMail(param_3->itemid);
        if (iVar2 == 1)
        {
            uVar1 = 2;
        }
        else if ((param_3->itemid == 450) && (bagView->unk1C == 1))
        {
            uVar1 = 1;
        }
        else
        {
            uVar1 = 0;
        }
        *param_4 = uVar1;
    }
    if ((u16)(param_3->itemid + 0xfd98) <= 1)
    {
        *param_4 = 0;
    }

}


void ovy142_219bf58(BagView *bagView, u8 *retList)
{
    u32 item;
    ItemTable *bagItemData;

    item = BagMenu_GetSelectSlot(bagView);
    bagItemData = (ItemTable *)BagMenu_GetBagItemDataBySlot(bagView, item);
    if ((bagItemData != NULL))
    {
        if ((bagItemData->itemid != 0))
        {
            void *uVar2 = sub_02026740(bagItemData->itemid, 0, bagView->heapId);

            u8 pocket = Item_GetParam(uVar2, ITEM_DATA_POCKET_FIELD);
            ovy142_219bf04(bagView, uVar2, bagItemData, retList);

            if (!ovy142_219d43c(bagView, pocket) && (retList[0] != BAG_OPTION_LOOK_MAIL))
            {
                retList[0] = 0xFF;
            }

            if (Item_GetParam(uVar2, ITEM_DATA_IS_IMPORT_ITEM) == 0)
            {
                if (Item_IsNotSpecialMonsball(bagItemData->itemid) == 1)
                {
                    retList[1] = BAG_OPTION_TAKE_MAIL;
                }
                if (pocket != BAG_POCKET_TMHM)
                {
                    retList[2] = BAG_OPTION_TOSS;
                }
            }

            if (Item_GetParam(uVar2, ITEM_DATA_CONV_BUTTON))
            {

                if (ovy142_219c0e8(bagView, bagItemData->itemid) == 1)
                {
                    retList[2] = BAG_OPTION_UNREGIT;
                }
                else
                {
                    retList[2] = BAG_OPTION_REGIT;
                }
            }
            if (bagView->itemPocket != BAG_POCKET_FREE_SPACE)
            {
                retList[3] = BAG_OPTION_TO_FREE_SPACE;
            }
            else
            {
                retList[3] = BAG_OPTION_FREESPACE_BACK;
            }
            retList[4] = BAG_OPTION_GIVE_UP;
            GFL_HeapFree(uVar2);
        }
    }
}

extern const u8 data021A08E8[5];

void ovy142_219c014(BagView *bagView)
{
    int optionTextIndex[13];
    int v10;        // r6
    int v11;        // r4
    int v12;        // r3
    int v13;        // r2
    int v14;        // r3
    u8 v16[8];
    u32 list[5];

    optionTextIndex = gBagMenuOptionTextTbl;

    v16[0] = data021A08E8[0];
    v16[1] = data021A08E8[1];
    v16[2] = data021A08E8[2];
    v16[3] = data021A08E8[3];
    v16[4] = data021A08E8[4];
    ovy142_219bf58(bagView, v16);
    v10 = 0;
    v11 = 0;
    do
    {
        v12 = v16[v10];
        if (v12 != 0xff)
        {
            v13 = v11;
            bagView->unk848[v11++]= v16[v10];
            list[v13] = optionTextIndex[v16[v10]];
        }
        ++v10;
    } while (v10 < 5);
    if (ovy142_219c0b4(bagView))
    {
        v14 = 0;
        do
        {
            if (bagView->unk848[v14] == 0)
            {
                list[v14] = BAG_OPTION_TEXT_END;
                break;
            }
            v14++;
        }
        while (v14 < 5);
    }
    ovy142_219f0bc(bagView, list, v11);
}

int ovy142_219c0b4(BagView *bagView)
{
    int uVar1;

    uVar1 = BagMenu_GetSelectSlot(bagView);
    ItemTable *puVar2 = (ItemTable *)BagMenu_GetBagItemDataBySlot(bagView, uVar1);
    if (puVar2 == NULL)
    {
        return 0;
    }
    if (puVar2->itemid == 0)
    {
        return 0;
    }
    if (puVar2->itemid == 0x1D7) // 探宝机
    {
        return bagView->unk20;
    }
    return 0;
}

int ovy142_219c0e8(BagView *bagView, int param_2)
{
    int uVar1;

    uVar1 = sub_02034AA4(param_2); // 判断快捷道具
    return GameData_IsPocketRegistered(bagView->m_GameData, uVar1);
}

void BagMenu_ButtonManCallBack(u32 a1, int a2, BagView *bagView);

void BagMenu_ButtonManCallBack(u32 hitIndex, int a2, BagView *bagView)
{
    int v7;
    int pocketNow;
    BagView *v10; // r0
    int v11;      // r1
    int v12;      // r6
    int v14;      // r0
    int v16;      // r7
    int v18;
    int v19;
    int pocket[6];

    v7 = -1;
    v19 = BagMenu_GetPocketItemAmount(bagView);
    if (a2)
        return;
    if (hitIndex < BAG_BUTTON_POCKET_FREE_SPACE + 1)
    {
        pocket = data_021A091C;
        if (bagView->itemPocket != pocket[hitIndex])
        {
            v7 = pocket[hitIndex];
            ovy142_219bda4(bagView, 0);
        }
    }
    else if (hitIndex == BAG_BUTTON_SWITCH_POCKET_LEFT)
    {
        ovy142_219bda4(bagView, 0);
        pocketNow = bagView->itemPocket;
        bagView->itemPocket = pocketNow - 1;
        if (pocketNow - 1 < 0)
            bagView->itemPocket = BAG_POCKET_FREE_SPACE;
        ovy142_219cac0(bagView, pocketNow, 0, ovy142_219D464);
        return;
    }
    else if (hitIndex == BAG_BUTTON_SWITCH_POCKET_RIGHT)
    {
        ovy142_219bda4(bagView, 0);
        pocketNow = bagView->itemPocket;
        bagView->itemPocket = pocketNow + 1;
        if (pocketNow + 1 >= BAG_POCKET_MAX)
            bagView->itemPocket = BAG_POCKET_NORMAL;
        ovy142_219cac0(bagView, pocketNow, 1, ovy142_219D464);
        return;
    }
    else if (hitIndex == BAG_BUTTON_SORT_OR_SEACHER)
    {
        if (bagView->itemPocket != BAG_POCKET_FREE_SPACE)
        {
            if (BagMenu_GetPocketItemAmount(bagView) > 1)
            {
                ovy142_219bca4(bagView);
                ovy142_219bda4(bagView, 0);
                ovy142_219ff40(bagView, 0);
                bagView->unk838 = 0xFFFF;
                ovy142_21998f4(bagView);
                BagMenu_SetRunFunc(bagView, BagMenu_StartSortItem);
                return;
            }
        }
        else if (ovy142_219d22c(bagView) > 2)
        {
            ovy142_219bca4(bagView);
            ovy142_219bda4(bagView, 0);
            ovy142_219ff40(bagView, 0);
            bagView->unk838 = 0xFFFF;
            ovy142_21998f4(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219d0c8);
            return;
        }
    }
    else if (hitIndex == BAG_BUTTON_REGBOX)
    {
        if (BagMenu_IsNotNormalBagMode(bagView) == 1)
        {
            ovy142_219be90(bagView);
            ovy142_219bda4(bagView, 0);
            bagView->unk838 = 0xFFFF;
            ovy142_21998f4(bagView);
        }
    }
    else if (hitIndex == BAG_BUTTON_EXIT_FIELD)
    {
        if (bagView->bagMode != BAG_MODE_BOX_SELECT_ITEM_HELD)
        {
            bagView->bagMenuReturnApp = 0;
            bagView->selectItem = 0;
            v10 = bagView;
            v11 = 3;
            ovy142_219c9f8(v10, v11, 0);
            sub_0203D564(1);
        }
    }
    else if (hitIndex == BAG_BUTTON_EXIT_BAG)
    {
        bagView->bagMenuReturnApp = 1;
        bagView->selectItem = 0;
        v10 = bagView;
        v11 = 4;
        ovy142_219c9f8(v10, v11, 0);
        sub_0203D564(1);
    }
    else if (hitIndex >= BAG_BUTTON_ITEM_LIST_0 && hitIndex < BAG_BUTTON_ITEM_LIST_END)
    {

        if (bagView->bagMenuFunc == BagMenu_HandleKeyPad)
        {
            v12 = bagView->posNow;
            v18 = BagMenu_GetSelectSlot(bagView);
            if (BagMenu_GetPocketItemAmount(bagView))
            {

                if (bagView->posNow != hitIndex - 12)
                {
                    bagView->posNow = hitIndex - 12;
                    if (v19 <= BagMenu_GetSelectSlot(bagView))
                    {
                        bagView->posNow = v12;
                        return;
                    }
                }

                {
                    v14 = BagMenu_GetSelectSlot(bagView);
                    ovy142_2199a20(bagView, v18, v14);
                    ovy142_219bda4(bagView, 0);
                    bagView->unk838 = 0xFFFF;
                    ovy142_21998f4(bagView);
                    ovy142_219de0c(bagView);
                    BagMenu_SetRunFunc(bagView, ovy142_219c958);
                }
            }
        }
        return;
    }
    else if (hitIndex >= BAG_BUTTON_ITEM_BOX_0)
    {
        if (BagMenu_IsNotNormalBagMode(bagView) == 1 && BagMenu_CheckItemCanRegist(bagView, hitIndex - 18) == 1)
        {
            ovy142_219bda4(bagView, 0);
            ovy142_21998f4(bagView);
        }
    }
    if (v7 != -1)
    {
        v16 = bagView->itemPocket;
        bagView->itemPocket = v7;
        GFL_SndSEPlay(2008);
        ovy142_2199a5c(bagView, v16, bagView->itemPocket);
        ovy142_219bd84(bagView);
        ovy142_219bda4(bagView, 0);
        bagView->unk838 = 0xFFFF;
        ovy142_21998f4(bagView);
    }
}


void ovy142_219c38c(int a1, BagView *bagView)
{
    int v3; // r0
    int v4; // r0

    v3 = bagView->unk894;
    if (v3 == 1)
    {
        ovy142_219dd84(bagView, 1);
        bagView->unk894 = 0;
    }
    else if (v3 == 2)
    {
        ovy142_219dd84(bagView, 0);
        bagView->unk894 = 0;
    }
    v4 = sub_020275F8(bagView->unk8A8);
    sub_0204B7C8(v4);
}


void BagMenu_BagStart(BagView *bagView)
{
    if (PrintSystem_IsTextPrintActiveEnd(bagView->printSystem))
    {
        GFL_FadeScreenSet(0, 1, 1, 0, 6, 1, bagView->heapId);
        GFL_SndSEPlay(1950);
        BagMenu_SetRunFunc(bagView, BagMenu_BagWaitFadeIn);
    }
}

void BagMenu_BagWaitFadeIn(BagView *bagView)
{
    int v2;     // r5
    int result; // r0

    v2 = GFL_FadeScreenIsFinished();
    result = BagMenu_PokcetIconMoveFadeIn(bagView);
    if (v2 == 1 && !result)
    {
        Oam_EnableOamAnim(bagView->scrollBarOam, 1); // enabltCursorAnim
        BagMenu_KeyPadMain(bagView);
    }
}

extern int data21A0A18[4];

int BagMenu_Main(int a1, int a2, void *data3, void *a4)
{
    int v11;
    BagView *v6;
    BAG_DATA *a3 = (BAG_DATA *)data3;

    GFL_HeapCreateChild(1, 14, 0x34000);
    v6 = (BagView*)GFL_ProcInitSubsystem(a1, sizeof(BagView), 14);

    MI_CpuFill8(v6, 0, sizeof(BagView));
    sub_0203DF64(&v6->KeyRetypeIntervalRepeated, &v6->KeyRetypeIntervalFirst);
    v6->heapId = 14;
    v6->unk8AC = 1;
    v6->m_GameData = a3->gamedata;
    v6->unk8 = a3->playerData;
    v6->unk4 = a3->trainerData;
    v6->unk14 = a3->m_itemData;
    v6->bagSave = a3->bagData;
    v6->unkC = (int)&a3->unk18;
    v6->bagMode = a3->mode;
    v6->unk1C = a3->playerstate;
    v6->unk20 = a3->playerLastScreen;
    v6->unk1F50 = a3->itemdata2;

    sub_020086C0(v6->bagSave);
    ovy142_21a03f0(&v6->unk8C8, (int)a3->bagData, v6->unk1F50, v6->heapId);
    v6->itemPocket = GameData_GetLastBagPocket(v6->unk14);
    for (u16 v7 = 0; v7 < 6; ++v7)
    {
        int v8;
        s16 v16, v15;
        
        sub_0200887C(v6->unk14, v7, &v16, &v15);
        v8 = (u16)ovy142_21a0698(&v6->unk8C8, v7);

        for (;;)
        {   
            if (!v16 && !v15)
            {

                break;
            }
            else
            {
                if ((v15 + 5 >= (v8)) && (v15 != 0))
                {
                    v15--;
                }
                else if (v16 + v15 >= (v8))
                {
                    if (v15)
                        v15--;
                    else
                    {
                        v16--;
                    }
                }
                else
                {
                    break;
                }
            }
        }
        if (v7 == v6->itemPocket)
        {
            v6->posNow = v16;
            v6->unk834 = v15 - 1;
        }
        GameData_SetLastPocketItem(v6->unk14, v7, v16, v15);
    }

    v6->msgData = GFL_MsgSysLoadData(0, 2, 6, v6->heapId);
    v6->stringBuff1 = GFL_StrBufCreate(200, v6->heapId);
    v6->stringBuff2 = GFL_StrBufCreate(200, v6->heapId);
    v6->stringBuff3 = GFL_StrBufCreate(64, v6->heapId);
    v6->wordSetSystem = GFL_WordSetSystemCreateDefault(v6->heapId);
    v6->printSystem = sub_020219A8(4096, v6->heapId);

    v6->unk51C = sub_0202E7A4(15, 1, 1, (u16)v6->heapId);
    v6->font = GFL_FontCreate(23, 0, 0, 0, v6->heapId);
    ovy142_219d7a8(v6);
    ovy142_219e284(v6);
    BagMenu_LoadBagItemBarResource(v6);
    ovy142_219efc0(v6);
    sub_021998DC(v6);
    ovy142_219e6f8(v6);
    v6->buttonManSystem = ButtonSystem_Create(data_021A09D8, BagMenu_ButtonManCallBack, (void*)v6, v6->heapId);
    ovy142_219c900(v6);
    ovy142_219cc24(v6);
    v6->taskCallBack = GFL_VBlankTCBAdd(ovy142_219c38c, v6, 0);
    v6->unk748 = GFL_TCBExMgrCreate(v6->heapId, v6->heapId, 1, 0);
    ovy142_219f84c(v6);
    v6->taskMenuData = sub_0202E168(
        3,
        9,
        v6->font,
        v6->printSystem,
        v6->heapId);

    sub_02042BA8(1, v6->heapId);
    if (sub_0203D554())
    {
        v11 = 0;
    }
    else
        v11 = 1;
        
    ovy142_219bda4(v6, v11);
    ovy142_219d664();

    BagMenu_SetRunFunc(v6, BagMenu_BagStart);
    return 1;
}
