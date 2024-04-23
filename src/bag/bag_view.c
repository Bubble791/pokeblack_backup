#include "global.h"
#include "main.h"
#include "bag.h"
#include "item_param.h"

const u8 data_21A0FD0[5] = {0};
const u8 data_21A0FD8[5] = {0};
const u8 data_21a0fcc[] = {0, 0};
const u8 data_21a0fc8[] = {0, 0};
const s16 word_21A168C[10][2] = {0};
const u8 byte_21A1020[10] = {0};
const u8 data_021a0fee[10][2] = {0};
const u8 data_021A0FEE[5][2] = {0};
const u32 data_21A1028[6] = {0};
const data_21A1120[6] = {0};

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

ItemTable* ovy142_2199928(BagView *bagView, u32 pocket)
{
    if (bagView->unk83C != 0)
    {
        return &bagView->m_itemTable[pocket];
    }
    return ovy142_21a0470(&bagView->unk8C8, bagView->itemType, pocket);
}

int ovy142_219995c(u32 itemId, int param_2, u16 heapId)
{
    int price = Item_GetItemParam(itemId, ITEM_DATA_PRICE, heapId); // GetItemParam
    return (price / 2) * param_2;
}

int sub_02199978(BagView *bagView)
{
    return bagView->posNow + bagView->unk834 + 1;
}

int ovy142_2199988(BagView *bagView)
{
    if (bagView->unk83C != 0)
    {
        return BagSave_GetUniqueItemCount(&bagView->m_itemTable[0], NORMAL_ITEM_MAX);
    }
    return ovy142_21a0698(&bagView->unk8C8, bagView->itemType);
}

void BagMenu_LoadItemNameToStrbuf(BagView *bagView, int bufId, int msgId)
{
    LoadItemNameToStrbuf(bagView->wordSetSystem, bufId, msgId);
}

void BagMenu_LoadBagPocketNameToStrbuf(BagView *bagView, int bufId, int msgId)
{
    LoadBagPocketNameToStrbuf(bagView->wordSetSystem, bufId, msgId);
}

void ovy142_21999d8(BagView *bagView, int bufId, int msgId, int name1, int name2);

void ovy142_21999d8(BagView *bagView, int bufId, int msgId, int name1, int name2)
{
    sub_020244E0(bagView->wordSetSystem, bufId, msgId, name1, name2);
}

void ovy142_21999f0(BagView *bagView, int pockId1, int pockId2);

void ovy142_21999f0(BagView *bagView, int pockId1, int pockId2)
{
    int *data;

    MI_CpuCopy8(&bagView->m_itemTable[pockId1], &data, 4);
    MI_CpuCopy8(&bagView->m_itemTable[pockId2], &bagView->m_itemTable[pockId1], 4);
    MI_CpuCopy8(&data, &bagView->m_itemTable[pockId2], 4);
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
                ovy142_21999f0(bagView, i, i + 1);
            }
        }
        else
        {
            for (i = param_2; i > param_3; i--)
            {
                ovy142_21999f0(bagView, i, i - 1);
            }
        }
    }
}


void ovy142_2199a5c(BagView *bagView, int param_2, u32 param_3)
{
    PosTable local_18;

    sub_020088A4(bagView->unk14, param_2);
    sub_02008894(bagView->unk14, param_2, bagView->posNow, (bagView->unk834 + 1));
    sub_0200887C(bagView->unk14, param_3, &local_18.y, &local_18.x);
    bagView->posNow = local_18.y;
    bagView->unk834 = local_18.x - 1;
    ovy142_219ed3c(bagView);
    ovy142_219f8ec(bagView, param_3);
    ovy142_219f06c(bagView, param_3);
    ovy142_219f450(bagView, param_3);
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

    v2 = ovy142_2199988(bagView);
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
        ovy142_219ecec(bagView);
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

    int uVar1 = sub_02199978(bagView);
    int ItemCount = ovy142_2199988(bagView);

    if (sub_0203DF44() & 0x80)
    {
        iVar5 = ovy142_2199ad4(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x40)
    {
        iVar5 = ovy142_2199b48(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x100)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199ad4(bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            iVar5 = 1;
    }
    else if (sub_0203DF44() & 0x200)
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
        int uVar2 = sub_02199978(bagView);
        GFL_SndSEPlay(0x548);
        ovy142_2199a20(bagView, uVar1, uVar2);
    }
    return iVar5;
}

int ovy142_2199d24(BagView *bagView);

int ovy142_2199d24(BagView *bagView)
{
    u32 i;
    int local_18;

    local_18 = 0;
    int ItemCount = ovy142_2199988(bagView);

    if (sub_0203DF44() & 0x80)
    {
        local_18 = ovy142_2199ad4(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x40)
    {
        local_18 = ovy142_2199b48(bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x100)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199ad4(bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            local_18 = 1;
    }
    else if (sub_0203DF44() & 0x200)
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
            itemCount = ovy142_2199988(bagView);
            uVar4 = sub_02199978(bagView);
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
                int uVar3 = sub_02199978(bagView);
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
extern void ovy142_219c8d0(BagView*);

void ovy142_2199eb8(BagView *bagView)
{
    ovy142_219ffe8(bagView, 1);
    ovy142_219c8d0(bagView);
}

void ovy142_2199ecc(BagView *bagView)
{
    int iVar1;
    int uVar2;
    int uVar3;

    sub_02035198(bagView->unk8A4);

    if (PrintSystem_IsTextPrintActive(bagView->printSystem) != 0)
    {
        uVar2 = sub_02199978(bagView);

        if (ovy142_2199bcc(bagView))
        {
            uVar3 = sub_02199978(bagView);
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
                sub_02007FE8(bagView->bagSave, &bagView->m_itemTable[0], bagView->itemType, 0);
                sub_0204C488(bagView->unk6B4, 1);
                ovy142_219ffe8(bagView, 1);
                bagView->unk83C = 0;
                ovy142_219bda4(bagView, 0);
                ovy142_219c8d0(bagView);
                return;
            }
        }
        if (bagView->unk8B0 != 1)
        {
            if ((sub_0203DEFC() & (1 | 4)) != 0)
            {
                GFL_SndSEPlay(0x54C);
                sub_02007FE8(bagView->bagSave, &bagView->m_itemTable[0], bagView->itemType, 0);
                sub_0204C488(bagView->unk6B4, 1);
                ovy142_219ffe8(bagView, 1);
                bagView->unk83C = 0;
                ovy142_219bda4(bagView, 1);
                ovy142_219c8d0(bagView);
                return;
            }

            if ((sub_0203DEFC() & 2) != 0)
            {
                GFL_SndSEPlay(0x551);
                sub_0204C488(bagView->unk6B4, 1);
                bagView->unk83C = 0;
                ovy142_219bda4(bagView, 1);
                bagView->unk838 = 0xffff;
                ovy142_21998f4(bagView);
                ovy142_219c9f8(bagView, 4, ovy142_2199eb8);
                return;
            }

            if (ovy142_2199e88() == 1)
            {
                GFL_SndSEPlay(0x551);
                sub_0204C488(bagView->unk6B4, 1);
                bagView->unk83C = 0;
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

int sub_0219A0B8(u16 itemId);

int sub_0219A0B8(u16 itemId)
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

    iVar1 = sub_0219A0B8(param_1);
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


void ovy142_219a104(BagView *bagView)
{
    int iVar2;

    iVar2 = sub_0219A0B8((u16)bagView->selectItem);
    if (iVar2 != 0)
    {
        void *saveData = sub_02017934(bagView->m_GameData);
        void *uVar3 = sub_0200DCF0(saveData);
        int repelCountNull = sub_0200DDE0(uVar3);

        if (repelCountNull)
        {
            u16 items = bagView->selectItem;
            u32 heap = bagView->heapId;
            u8 uVar1;
            
            uVar1 = Item_GetItemParam(items, ITEM_DATA_USE_PARAM, heap);
            sub_0200DDB0(uVar3, uVar1);
            sub_0200DDF0(uVar3, (u16)bagView->selectItem);
            ovy142_219b340(bagView, 1);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x3f, bagView->stringBuff1);
            GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
            BagMenu_LoadItemNameToStrbuf(bagView, 1, bagView->selectItem);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem,
                                    bagView->stringBuff2,
                                    bagView->stringBuff1);
            ovy142_219f6a4(bagView, 1);
            GFL_SndSEPlay(0x7cc);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x40, bagView->stringBuff1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            ovy142_219f6a4(bagView, 1);
        }
        
        BagMenu_SetRunFunc(bagView, ovy142_219a1ec);
    }
}

void ovy142_219a1ec(BagView *bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(bagView);
    if (iVar1 != 0)
    {
        uVar2 = sub_0203DEFC();
        if (((uVar2 & 1 | uVar2 & 2) != 0) || sub_0203DA48())
        {
            sub_02045738(3);
            bagView->unk838 = 0xFFFF;
            ovy142_21998f4(bagView);
            bagView->unk892 = 1;
            ovy142_219ed3c(bagView);
            sub_0204C520(bagView->unk6B8, 1);
            ovy142_219fda8(bagView, 1);
            ovy142_219c8d0(bagView);
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
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x38, bagView->stringBuff1);
        GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        ovy142_219f6a4(bagView, 1);
        BagMenu_SetRunFunc(bagView, ovy142_219a1ec);
    }
}

void ovy142_219a2ac(BagView *bagView)
{
    ovy142_219f6a4(bagView, 1);
    BagMenu_SetRunFunc(bagView, ovy142_219a1ec);
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
            ovy142_219b340(bagView, 1);
        }
        bagView->unk898 = param_3;
        BagMenu_SetRunFunc(bagView, 0);
        return 1;
    }
    ovy142_219a2c4(bagView, 0x3a);
    return 0;
}

int ovy142_219a354(BagView * bagView);

int ovy142_219a354(BagView * bagView)
{
    int iVar1;

    iVar1 = sub_0202E9DC(bagView->unkC, 0);
    if (bagView->unk89C == 0)
    {
        if (iVar1 == 0)
        {
            bagView->unk898 = 10;
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
            bagView->unk898 = 11;
            BagMenu_SetRunFunc(bagView, 0);
            return 1;
        }
        ovy142_219a2c4(bagView, 0x39);
        return 0;
    }
    return 0;
}

void ovy142_219a3c4(BagView *bagView);
void ovy142_219a3d4(BagView *bagView);
void ovy142_219a3e4(BagView *bagView);
void ovy142_219a3f4(BagView *bagView);

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

int ovy142_219a404(BagView *bagView);

int ovy142_219a404(BagView *bagView)
{
    int iVar1;

    iVar1 = sub_0202E9DC(bagView->unkC, 5);
    if (iVar1 == 0)
    {
        bagView->unk898 = 0x10;
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

int ovy142_219a440(BagView *bagView);
int ovy142_219a460(BagView *bagView);
void ovy142_219a480(BagView *bagView);
void ovy142_219a490(BagView *bagView);

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

const struct field_item_use
{
    u16 item;
    u16 num;
    FieldBagItemUse func;
} gItemFuncTable[] = {0}; // 0x021A09C0

u32 ovy142_219a4a0(u16 item);

u32 ovy142_219a4a0(u16 item)
{
    for (u32 i = 0; i < 11; ++i)
    {
        u16 items = gItemFuncTable[i].item;
        
        if (item >= items &&  item < (gItemFuncTable[i].num + items))
            return i;
    }
    return -1;
}


void ovy142_219a4d0(BagView *bagView)
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
            case 0:
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

                    int fieldPocket = Item_GetItemParam((u16)bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, bagView->heapId);
                    if (fieldPocket == 0)
                    {
                        sub_0202D384((u16)bagView->selectItem);
                    }
                }

                if (type == 2)
                {
                    BagMenu_SetRunFunc(bagView, ovy142_219ac70);
                    break;
                }
                else
                {
                    int isEvoStone = Item_GetItemParam(bagView->selectItem, ITEM_DATA_IS_EVOSTONE, bagView->heapId);

                    if (isEvoStone == 1)
                    {
                        bagView->unk898 = 12;
                        BagMenu_SetRunFunc(bagView, 0);
                    }
                    else
                    {
                        int iVar5;
                        int index = ovy142_219a4a0(bagView->selectItem);
                        if (index >= 0)
                        {
                            index = ovy142_219a4a0(bagView->selectItem);
                            gItemFuncTable[index].func(bagView);
                            break;
                        }
                        iVar5 = ovy142_219a0dc((u16)bagView->selectItem);
                        if (iVar5 == 1)
                        {
                            BagMenu_SetRunFunc(bagView, ovy142_219a104);

                            break;
                        }
                        else if (iVar5 == 2)
                        {
                            BagMenu_SetRunFunc(bagView, ovy142_219a250);

                            break;
                        }
                        else
                        {
                            bagView->unk898 = 5;
                            BagMenu_SetRunFunc(bagView, 0);
                            break;
                        }
                    }
                }
                break;
            case 1:
                ovy142_219ff40(bagView, 0);
                if (sub_0202E9DC(bagView->unkC, 0) == 0)
                {
                    bagView->unk898 = 0xb;
                    BagMenu_SetRunFunc(bagView, 0);
                    break;
                }
                GFL_MsgDataLoadStrbuf(bagView->msgData, 0x39, bagView->stringBuff1);
                GFL_CopyVarForText(bagView->wordSetSystem, 0, bagView->unk8);
                GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
                BagMenu_SetRunFunc(bagView, ovy142_219a2ac);
                break;

            case 3:
                BagMenu_SetRunFunc(bagView, ovy142_219ae30);
                break;
            
            case 8:
            case 9:
                BagMenu_SetRunFunc(bagView, ovy142_219b5d4);
                break;
            case 4:
            case 5:
                iVar3 = sub_0219BE00(bagView);
                if (iVar3 == 1)
                {
                    ovy142_219be18(bagView, bagView->posNow);
                    ovy142_21998f4(bagView);
                    ovy142_219fda8(bagView, 1);
                    sub_0204C520(bagView->unk6B8, 1);
                    ovy142_219c8d0(bagView);
                }

                break;
            case 2:
                ovy142_219ff40(bagView, 0);
                int item = bagView->selectItem;
                if ((0x89 <= item) && (item <= 0x94))
                {
                    bagView->unk898 = 0x13;
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
                ovy142_219fda8(bagView, 1);
                sub_0204C520(bagView->unk6B8, 1);
                ovy142_219c8d0(bagView);
                break;
            case 11:
                bagView->unk898 = 1;
                BagMenu_SetRunFunc(bagView, 0);
                break;

            case 6:
                bagView->unk898 = 2;
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
    u32 dword10; // r0

    v2 = sub_02199978(bagView);
    ItemTable *v3 = ovy142_2199928(bagView, v2);
    bagView->selectItem = 0;
    if (v3)
        bagView->selectItem = v3->itemid;
    dword10 = bagView->unk10;

    if (dword10 == 2)
    {
        if (!Item_GetItemParam((u16)bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, bagView->heapId) 
        && sub_02026C14((u16)bagView->selectItem) == 1)
        {
            if (sub_02026BA0((u16)bagView->selectItem))
                bagView->unk898 = 18;
            else
                bagView->unk898 = 3;
            BagMenu_SetRunFunc(bagView, 0);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(bagView->msgData, 47, bagView->stringBuff1);
            BagMenu_LoadItemNameToStrbuf(bagView, 0, bagView->selectItem);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            sub_0219F760(bagView);
            ovy142_219fda8(bagView, 0);
            ovy142_219ff40(bagView, 0);
            BagMenu_SetRunFunc(bagView, ovy142_219acb8);
        }
    }
    else if (dword10 == 5)
    {
        bagView->unk898 = 1;
        BagMenu_SetRunFunc(bagView, 0);
    }
    else if (dword10 == 4)
    {
        BagMenu_SetRunFunc(bagView, ovy142_219af84);
    }
    else
    {
        ovy142_219c014(bagView);
        ovy142_219f76c(bagView, bagView->selectItem);
        sub_0219F760(bagView);
        sub_0204C520(bagView->unk6B8, 0);
        BagMenu_SetRunFunc(bagView, ovy142_219a4d0);
    }
}

void ovy142_219a850(BagView *bagView)
{
    int v2;     // r0
    int v3; // r5
    int v5;     // r5
    int v6;     // r5

    if (PrintSystem_IsTextPrintActive(bagView->printSystem))
    {
        if (!sub_0203DA2C())
            bagView->unk8B0 = 0;
        sub_020504F0(bagView->buttonManSystem);
        sub_02035198(bagView->unk8A4);
        if (bagView->bagMenuFunc != ovy142_219a850)
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
                    v2 = sub_0203DEFC();
                    v3 = v2;
                    if (!v2)
                        return;
                    if (ovy142_2199988(bagView))
                    {
                        if ((v3 & 0xC0A) == 0)
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
                        if ((v3 & 0xCD) != 0)
                            return;
                    }
                }
                if ((sub_0203DEFC() & 2) != 0)
                {
                    bagView->unk898 = 1;
                    bagView->selectItem = 0;
                    sub_0203D564(0);
                    ovy142_219c9f8(bagView, 4, 0);
                    return;
                }
                if ((sub_0203DEFC() & 0x400) != 0)
                {
                    if (bagView->unk10 != 2)
                    {
                        bagView->unk898 = 0;
                        bagView->selectItem = 0;
                        sub_0203D564(0);
                        ovy142_219c9f8(bagView, 3, 0);
                        
                    }
                    return;
                }
                if ((sub_0203DEFC() & 0x800) != 0)
                {
                    if (sub_0219BE00(bagView) == 1)
                    {
                        if (ovy142_219be18(bagView, bagView->posNow) == 1)
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
                if ((sub_0203DEFC() & 8) != 0)
                {
                    if (bagView->itemType != 5)
                    {
                        if (ovy142_2199988(bagView) > 1)
                        {
                            ovy142_219bca4(bagView);
                            ovy142_219bda4(bagView, 1);
                            ovy142_219ff40(bagView, 0);
                            bagView->unk838 = 0xffff;
                                    ovy142_21998f4(bagView);
                            BagMenu_SetRunFunc(bagView, ovy142_219cc84);
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
                if ((sub_0203DEFC() & 1) != 0)
                {
                    if (ovy142_2199988(bagView) > 0)
                    {
                        BagMenu_SetRunFunc(bagView, ovy142_219c958);
                        return;
                    }
                }
                else
                {
                    if ((sub_0203DEFC() & 4) != 0)
                    {
                        if (bagView->itemType != 5 && ovy142_2199988(bagView) > 1)
                        {
                            MI_CpuFill8(bagView->m_itemTable, 0, 0x4D8);
                            sub_02007FE8(bagView->bagSave, bagView->m_itemTable, bagView->itemType, 1);
                            sub_0204C488(bagView->unk6B4, 2);
                            ovy142_219ffe8(bagView, 0);
                            bagView->unk83C = 1;
                            ovy142_219c8e8(bagView);
                            return;
                        }
                        return;
                    }
                    else
                    {
                        if (ovy142_2199d24(bagView))
                        {
                            ovy142_219ed3c(bagView);
                            GFL_SndSEPlay(0x548);
                            ovy142_21998f4(bagView);
                            return;
                        }
                    }
                }
                
                if ((sub_0203DF44() & 0x10) != 0)
                    {
                        v5 = bagView->itemType;
                        bagView->itemType = v5 + 1;
                        if (v5 + 1 >= 6)
                            bagView->itemType = 0;
                        sub_0203D564(0);
                        ovy142_219cac0(bagView, v5, 1, ovy142_219D464);
                    }
                    else if ((sub_0203DF44() & 0x20) != 0)
                    {
                        v6 = bagView->itemType;
                        bagView->itemType = v6 - 1;
                        if (v6 - 1 < 0)
                            bagView->itemType = 5;
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
            bagView->unk898 = 6;
            BagMenu_SetRunFunc(bagView, 0);
        }
        else
        {
            sub_0219F0AC(bagView);
            sub_02045738(3);
            sub_0204C520(bagView->unk6B8, 1);
            ovy142_219fda8(bagView, 1);
            if (sub_0203D554() == 1)
            {
                ovy142_219e120(bagView);
                ovy142_219bda4(bagView, 0);
            }
            else
            {
                ovy142_219bda4(bagView, 1);
            }
            
            ovy142_219c8d0(bagView);
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

void ovy142_219abd8(BagView *bagView);
extern int sub_020062A8(void);
extern void sub_020244A4(int, int, int);

void ovy142_219abd8(BagView *bagView)
{
    int iVar1;

    iVar1 = sub_020062A8();
    if ((iVar1 != 1) && ((sub_0203DEFC() & (1 | 2)) || (sub_0203DA48() != 0)))
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x3e, bagView->stringBuff1);
        int uVar3 = sub_02026AE4((u16)bagView->selectItem);
        sub_020244A4(bagView->wordSetSystem, 0, uVar3);
        GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
        ovy142_219f6a4(bagView, 1);
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
        BagMenu_SetRunFunc(bagView, ovy142_219abd8);
    }
}

extern int sub_02026B84(u16);
void ovy142_219ac70(BagView *bagView);

void ovy142_219ac70(BagView *bagView)
{
    int iVar1;

    iVar1 = sub_02026B84((u16)bagView->selectItem);
    if (iVar1 == 0xFF)
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x3c, bagView->stringBuff2);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x3d, bagView->stringBuff2);
    }
    
    ovy142_219f6a4(bagView, 1);
    BagMenu_SetRunFunc(bagView, ovy142_219ac4c);
}

void ovy142_219acb8(BagView *bagView);

void ovy142_219acb8(BagView *bagView)
{
    if (((sub_0203DEFC() & 3) != 0) || sub_0203DA48())
    {
        sub_02045738(3);

        bagView->unk838 = 0xFFFF;
        ovy142_21998f4(bagView);
        bagView->unk892 = 1;
        ovy142_219ed3c(bagView);
        sub_0204C520(bagView->unk6B8, 1);
        ovy142_219fda8(bagView, 1);
        ovy142_219c8d0(bagView);
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
            ovy142_219b340(bagView, bagView->unk814);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x36, bagView->stringBuff1);
            ovy142_21999d8(bagView, 0, bagView->selectItem, ((int)bagView->unk814 > 1), 0);
            sub_0202451C(bagView->wordSetSystem, 1, bagView->unk814, 3, 0, 1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2,
                                    bagView->stringBuff1);
            sub_0219F760(bagView);
            BagMenu_SetRunFunc(bagView, ovy142_219ad14);
        }
        else
        {
            sub_0204C520(bagView->unk6B8, 1);
            ovy142_219fda8(bagView, 1);
            iVar2 = sub_0203D554();
            ovy142_219bda4(bagView, iVar2 == 0);
            ovy142_219c8d0(bagView);
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

extern void ovy142_219ae90(BagView*);
extern void ovy142_219b438(BagView*, int);

void ovy142_219ae30(BagView *bagView)
{
    bagView->unk814 = 1;
    ovy142_219b438(bagView, 1);
    GFL_MsgDataLoadStrbuf(bagView->msgData, 0x35, bagView->stringBuff1);
    ovy142_21999d8(bagView, 0, bagView->selectItem, 1, 0);
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2,
                    bagView->stringBuff1);
    sub_0219F760(bagView);
    BagMenu_SetRunFunc(bagView, ovy142_219ae90);
}


void ovy142_219ae90(BagView *bagView)
{
    int iVar2;
    u32 uVar3;

    iVar2 = ovy142_219f7a4(bagView);
    if ((iVar2 != 0) && (ovy142_219b490(bagView) != 1))
    {
        iVar2 = ovy142_219cb88();
        if (iVar2 == -1)
        {
            uVar3 = sub_0203DEFC();
            if ((uVar3 & 1))
                {
                iVar2 = 0;
                sub_0203D564(0);
            }
            else
            {
                uVar3 = sub_0203DEFC();
                if ((uVar3 & 2) != 0)
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
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x37, bagView->stringBuff1);
            ovy142_21999d8(bagView, 0, bagView->selectItem, 1 < bagView->unk814, 0);
            sub_0202451C(bagView->wordSetSystem, 1, bagView->unk814, 3, 0, 1);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2,
                            bagView->stringBuff1);
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



void ovy142_219af84(BagView *bagView);

void ovy142_219b2a8(BagView*);
extern void ovy142_219b0a0(BagView*);
extern void ovy142_219b12c(BagView*);
extern void ovy142_219fa3c(BagView*);

void ovy142_219af84(BagView *bagView)
{
    int price;
    int isImportItem;
    int uVar4;

    sub_0204C520(bagView->unk6B8, 0);

    price = Item_GetItemParam(bagView->selectItem, ITEM_DATA_PRICE, bagView->heapId);
    isImportItem = Item_GetItemParam(bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, bagView->heapId);
    if ((price == 0) || (isImportItem != 0))
    {
        {
            ovy142_219fda8(bagView, 0);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x4d, bagView->stringBuff1);
            BagMenu_LoadItemNameToStrbuf(bagView, 0, bagView->selectItem);
            GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
            sub_0219F760(bagView);
            ovy142_219ff40(bagView, 0);
            BagMenu_SetRunFunc(bagView, ovy142_219b2a8);
        }
    }
    else
    {
        bagView->unk814 = 1;
        ovy142_219fa3c(bagView);
        ovy142_219fda8(bagView, 0);
        uVar4 = sub_02199978(bagView);
        ItemTable* iVar2 = (ItemTable*)ovy142_2199928(bagView, uVar4);
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
            uVar2 = sub_0203DEFC();
            if ((uVar2 & 1) != 0)
            {
                iVar1 = 0;
                sub_0203D564(0);
            }
            else
            {
                uVar2 = sub_0203DEFC();
                if ((uVar2 & 2) != 0)
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

void ovy142_219b1a0(BagView*);

void ovy142_219b12c(BagView *bagView)
{
    int uVar2;

    ovy142_219faac(bagView);
    uVar2 = ovy142_219995c(bagView->selectItem, bagView->unk814, bagView->heapId);
    GFL_MsgDataLoadStrbuf(bagView->msgData, 0x4F, bagView->stringBuff1);
    sub_0202451C(bagView->wordSetSystem, 0, uVar2, 7, 0, 1);
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
    sub_0219F760(bagView);
    BagMenu_SetRunFunc(bagView, ovy142_219b1a0);
}

void ovy142_219b1a0(BagView *bagView)
{
    int iVar1;
    int uVar2;
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
            uVar2 = ovy142_219995c(bagView->selectItem, bagView->unk814, bagView->heapId);
            ovy142_219b340(bagView, bagView->unk814);
            uVar3 = sub_02017974(bagView->m_GameData);
            sub_0200C9C0(uVar3, uVar2);
            GFL_SndSEPlay(0x655);
            ovy142_219f978(bagView);
            GFL_MsgDataLoadStrbuf(bagView->msgData, 0x50, bagView->stringBuff1);
            ovy142_21999d8(bagView, 0, bagView->selectItem, 1 < bagView->unk814, 0);

            sub_0202451C(bagView->wordSetSystem, 1, uVar2, 7, 0, 1);
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
        uVar2 = sub_0203DEFC();
        if ((uVar2 & 3) != 0)
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
    sub_0204C520(bagView->unk6B8, 1);
    ovy142_219fda8(bagView, 1);
    ovy142_219c8d0(bagView);
}

void ovy142_219b340(BagView *bagView, int useNum)
{
    u32 uVar1;
    u32 uVar2;
    int iVar3;
    int iVar4;

    uVar2 = sub_02199978(bagView);
    ovy142_2199928(bagView, uVar2);
    iVar3 = sub_02008338(bagView->bagSave, bagView->selectItem);
    sub_0200842C(bagView->bagSave, bagView->selectItem, useNum, bagView->heapId);
    iVar4 = sub_02008538(bagView->bagSave, bagView->selectItem, bagView->heapId);
    if (iVar4 == 0)
    {
        if (iVar3 == 1)
        {
            uVar1 = sub_02199978(bagView);
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

    v2 = sub_02199978(bagView);
    v3 = ovy142_2199988(bagView) + 1;
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
    ovy142_219fc14(bagView, bagView->unk814);
    sub_0204C124(bagView->unk724[5], 1);
    sub_0204C124(bagView->unk724[6], 1);
}

void ovy142_219b46c(BagView *bagView)
{
    sub_02045738(3);
    sub_0204C124(bagView->unk724[5], 0);
    sub_0204C124(bagView->unk724[6], 0);
}

const u8 sub021a08f8[12] = {0};

extern int sub_0203D9C8(u8*);

int ovy142_219b490(BagView *bagView)
{
    const u8 *v9;
    int iVar5;
    int iVar6;
    int unaff_r4;
    int bVar11 = 0;
    u32 i;
    u8 *v16;
    u8 local_24[12];

    iVar5 = bagView->unk814;

    ItemTable *iVar3 = ovy142_2199928(bagView, sub_02199978(bagView));
    v9 = &sub021a08f8[0];
    v16 = &local_24[0];
    i = 12;
    do
    {
        int v13 = *v9++;
        *v16 = v13;
        v16++;
        --i;
    } while (i);

    iVar6 = sub_0203D9C8(&local_24[0]);
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
                bagView->unk814 = bagView->unk814 + 10;
            }
            else
            {
                bagView->unk814 = bagView->unk814 + 1;
            }
            unaff_r4 = 0;
            break;
        case 1:
            if (bagView->unk810 > 0x78)
            {
                bagView->unk814 = bagView->unk814 - 10;
            }
            else
            {
                bagView->unk814 = bagView->unk814 - 1;
            }
            unaff_r4 = 1;
            break;
        }
    }
    if (iVar6 == -1)
    {
        if (sub_0203DF44() & 0x40)
        {
            bagView->unk814 = bagView->unk814 + 1;
            unaff_r4 = 0;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & 0x80)
        {
            bagView->unk814 = bagView->unk814 + -1;
            unaff_r4 = 1;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & 0x10)
        {
            bagView->unk814 = bagView->unk814 + 10;
            unaff_r4 = 0;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & 0x20)
        {
            bagView->unk814 = bagView->unk814 - 10;
            unaff_r4 = 1;
            bVar11 = TRUE;
        }
    }

    if (iVar3->num < bagView->unk814)
    {
        bagView->unk814 = 1;
    }
    else if (bagView->unk814 < 1)
    {
        bagView->unk814 = iVar3->num;
    }

    if (bagView->unk814 != iVar5)
    {
        u16 uVar8;
        int uVar22;
        GFL_SndSEPlay(0x548);
        if (unaff_r4 == 0)
        {
            uVar22 = bagView->unk724[5];
            uVar8 = 0xb;
        }
        else
        {
            uVar22 = bagView->unk724[6];
            uVar8 = 10;
        }
        sub_0204C488(uVar22, uVar8);
        ovy142_219fc14(bagView, bagView->unk814);
    }
    return bVar11;
}

void ovy142_219b5d4(BagView *bagView)
{
    int uVar1;
    int iVar2;
    int uVar3;
    int uVar4;
    ItemTable *iVar5;
    int bVar6;

    iVar2 = sub_02008338(bagView->bagSave, bagView->selectItem);
    uVar3 = BagSave_GetExistingItemPocket(bagView->bagSave, bagView->selectItem);
    uVar4 = sub_02199978(bagView);
    iVar5 = ovy142_2199928(bagView, uVar4);
    bVar6 = iVar5->num != 1;
    if (iVar2 == 0)
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x95, bagView->stringBuff1);
        ovy142_21999d8(bagView, 1, bagView->selectItem, bVar6, 0);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, 5);
        ovy142_21a0578(&bagView->unk8C8, bagView->selectItem, (short)uVar3);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(bagView->msgData, 0x96,bagView->stringBuff1);
        ovy142_21999d8(bagView, 1, bagView->selectItem, bVar6, 0);
        BagMenu_LoadBagPocketNameToStrbuf(bagView, 0, uVar3);
        uVar1 = sub_02199978(bagView);
        ovy142_21a050c(&bagView->unk8C8, uVar1, 1);
    }
    GFL_WordSetFormatStrbuf(bagView->wordSetSystem, bagView->stringBuff2, bagView->stringBuff1);
    ovy142_219f6a4(bagView, 0);
    GFL_SndSEPlay(0x663);
    ovy142_219ff40(bagView, 0);
    ovy142_219b3b0(bagView);
    BagMenu_SetRunFunc(bagView, ovy142_219b6dc);
}

void ovy142_219b6dc(BagView *bagView)
{
    u32 uVar1;

    uVar1 = sub_0203DEFC();
    if ((uVar1 & 3))
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
    sub_0204C520(bagView->unk6B8, 1);
    ovy142_219fda8(bagView, 1);
    ovy142_219ff40(bagView, 1);
    ovy142_219c8d0(bagView);
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

void ovy142_219b784(BagView *bagView)
{
    int i;
    
    ItemTable* iVar2;
    ItemSortTable* iVar1;
    int iVar3;
    void* uVar4;
    

    iVar1 = (ItemSortTable*)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xc10);
    iVar2 = (ItemTable*)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xc11);
    sub_02008074(bagView->bagSave, iVar2, bagView->itemType, 1);
    iVar3 = sub_020084AC(bagView->bagSave, bagView->itemType, 1);
    uVar4 = sub_02026720(bagView->heapId);
    for (i = 0; i < iVar3; i++)
    {
        void* uVar6 = sub_0202672C(uVar4, iVar2[i].itemid, bagView->heapId);
        ItemSortTable* param = &iVar1[i];
        int itemClass = sub_02026820(uVar6, 0xf);
        param->ItemClass.raw = ((itemClass << 28)) + (sub_02026820(uVar6, 0x11) << 16) + iVar2[i].itemid;

        param->item = iVar2[i];
        sub_0203A24C(uVar6);
    }

    sub_0204AB0C(uVar4);
    MATH_QSort(iVar1, iVar3, sizeof(ItemSortTable), 0x0219b794, 0);
    
    for (i = 0; i < iVar3; ++i)
    {
        iVar2[i]= iVar1[i].item;
    }
    sub_02008074(bagView->bagSave, iVar2, bagView->itemType, 0);
    sub_0203A24C(iVar2);
    sub_0203A24C(iVar1);
}

const u16 DAT_021a0b08[12] = {0};
void ovy142_219b8c4(BagView *bagView);

void ovy142_219b8c4(BagView *bagView)
{
    int i;
    ItemSortTable* iVar1;
    ItemTable* iVar2;
    int iVar3;
 

    iVar1 = (ItemSortTable*)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xc45);
    iVar2 = (ItemTable*)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xc46);
    sub_02008074(bagView->bagSave, iVar2, bagView->itemType, 1);
    iVar3 = sub_020084AC(bagView->bagSave, bagView->itemType, 1);
    for ( i = 0; i < iVar3; i++)
    {
        u16 itemId = iVar2[i].itemid;
        iVar1[i].ItemClass.raw = itemId + (DAT_021a0b08[itemId] << 16);
        iVar1[i].item = iVar2[i];
    }

    MATH_QSort(iVar1, iVar3, 12, 0x0219b794, 0);
    for (i = 0; i < iVar3; i++)
    {
        iVar2[i] = iVar1[i].item ;
    }
    sub_02008074(bagView->bagSave, iVar2, bagView->itemType, 0);
    sub_0203A24C(iVar2);
    sub_0203A24C(iVar1);
}

void ovy142_219b9c0(BagView *bagView);
extern int sub_02026B40(u16);

void ovy142_219b9c0(BagView *bagView)
{
    int i;
    ItemSortTable *iVar1;
    ItemTable *iVar2;
    int iVar3;


    if (bagView->itemType == 2)
    {
        iVar1 = (ItemSortTable *)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xC7A);
        iVar2 = (ItemTable *)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xC7B);
        sub_02008074(bagView->bagSave, iVar2, bagView->itemType, 1);
        iVar3 = sub_020084AC(bagView->bagSave, bagView->itemType, 1);
        for (i = 0; i < iVar3; i++)
        {
            iVar1[i].ItemClass.param.pro1 = sub_02026B40(iVar2[i].itemid);
            iVar1[i].ItemClass.param.pro2 = 0;
            iVar1[i].item = iVar2[i];
        }
        MATH_QSort(iVar1, iVar3, 12, 0x0219b794, 0);
        for (i = 0; i < iVar3; i++)
        {
            iVar2[i] = iVar1[i].item;
        }
        sub_02008074(bagView->bagSave, iVar2, bagView->itemType, 0);
        sub_0203A24C(iVar2);
        sub_0203A24C(iVar1);
    }
}

void ovy142_219bac4(BagView *bagView, int param_2);
extern int sub_0200854C(void*, u16);

void ovy142_219bac4(BagView *bagView, int param_2)
{
    int iVar4;
    ItemSortTable* iVar2;
    ItemTable* iVar3;
    void* uVar5;
    int i;


    iVar2 = (ItemSortTable*)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xCA9);
    iVar3 = (ItemTable*)sub_0203A1FC(bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xCAA);
    sub_02008074(bagView->bagSave, iVar3, bagView->itemType, 1);
    iVar4 = sub_020084AC(bagView->bagSave, bagView->itemType, 1);
    uVar5 = sub_02026720(bagView->heapId);
    for (i = 0; i < iVar4; i++)
    {
        ItemSortTable* params;
        void* uVar7;
        int iVar11;
        uVar7 = sub_0202672C(uVar5, iVar3[i].itemid, bagView->heapId);
        iVar11 = sub_0200854C(bagView->bagSave, iVar3[i].itemid);
        
        if (param_2 == 1)
        {
            params = &iVar2[i];
            int itemClass = sub_02026820(uVar7, 0xf); 
            
            params->ItemClass.raw = ((u64)((999 - iVar11) << 8) << 32) 
                + (itemClass << 28) 
                + ( sub_02026820(uVar7, 0x11) << 16) 
                + iVar3[i].itemid;
        }
        else
        {
            params = &iVar2[i];
            int itemClass = sub_02026820(uVar7, 0xf);
            params->ItemClass.raw = ((u64)((iVar11) << 8) << 32) 
                + (itemClass << 28) 
                + ( sub_02026820(uVar7, 0x11) << 16) 
                + iVar3[i].itemid;
        }
        iVar2[i].item = iVar3[i];
        sub_0203A24C(uVar7);
    }

    sub_0204AB0C(uVar5);
    MATH_QSort(iVar2, iVar4, 0xc, 0x0219b794, 0);
    for (i = 0; i < iVar4; i++)
    {
        iVar3[i] = iVar2[i].item;
    }
    sub_02008074(bagView->bagSave, iVar3, bagView->itemType, 0);
    sub_0203A24C(iVar3);
    sub_0203A24C(iVar2);
}

void ovy142_219bca4(BagView *bagView)
{
    GFL_SndSEPlay(0x54C);
    if (bagView->itemType != 5)
        sub_0204C488(bagView->unk744, 2);
    else
        sub_0204C488(bagView->unk740, 1);

}

void ovy142_219bcd8(BagView *bagView, int param_2)
{
    bagView->unk1F4C = param_2;
    switch (param_2)
    {
    case 0:
        ovy142_219b784(bagView);
        break;
    case 1:
        ovy142_219b9c0(bagView);
        break;
    case 2:
        ovy142_219b8c4(bagView);
        break;
    case 3:
        ovy142_219bac4(bagView, 1);
        break;
    case 4:
        ovy142_219bac4(bagView, 0);
        break;
    }
    bagView->unk838 = 0xffff;
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
    if (bagView->itemType == 5)
    {
        sub_0219BD68(bagView, 0);
    }
    ovy142_219ff60(bagView);
}

void ovy142_219bda4(BagView *bagView, int param_2)
{
    int iVar1;

    if (bagView->unk83C == 1)
    {
        param_2 = 1;
    }
    if (param_2)
        sub_0203D564(0);
    else
        sub_0203D564(1);
    iVar1 = ovy142_2199988(bagView);
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

int sub_0219BE00(BagView *bagView)
{
    int iVar1;

    iVar1 = bagView->unk10;
    if (!((iVar1 != 0) && (iVar1 != 1)) || (iVar1 == 3))
    {
        return 1;
    }
    return 0;
}

int ovy142_219be18(BagView *bagView, int param_2)
{
    int iVar1;
    int iVar3;

    param_2 += bagView->unk834 + 1;
    iVar1 = ovy142_2199988(bagView);
    if (iVar1 <= param_2)
    {
        return 0;
    }
    ItemTable *puVar2 = (ItemTable*)ovy142_2199928(bagView, param_2);
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
    return sub_0219FD18(a1);
}

void ovy142_219be90(BagView *bagView)
{
    int uVar1;
    int uVar2;

    uVar1 = sub_0219BE88(bagView->itemType);
    uVar2 = sub_0201765C(bagView->m_GameData, uVar1);
    sub_02017644(bagView->m_GameData, uVar1, uVar2 ^ 1);
    GFL_SndSEPlay(0x646);
    ovy142_219becc(bagView);
}

void ovy142_219becc(BagView *bagView)
{
    int sVar1;
    int uVar2;

    if (bagView->unk83C != 1)
    {
        uVar2 = sub_0219BE88(bagView->itemType);
        sVar1 = sub_0201765C(bagView->m_GameData, uVar2);
        sub_0204C488(bagView->unk724[2], (u16)(sVar1 + 6));
    }
}

void ovy142_219bf04(BagView *bagView, void *param_2, ItemTable *param_3, u8 *param_4);

void ovy142_219bf04(BagView *bagView, void *param_2, ItemTable *param_3, u8 *param_4)
{
    u8 uVar1;
    int iVar2;

    iVar2 = sub_02026820(param_2, 6);
    if (iVar2 != 0)
    {
        iVar2 = sub_02026BA0(param_3->itemid);
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


void ovy142_219bf58(BagView *bagView, u8 *param_2)
{
    u32 unkv2;
    ItemTable *psVar3;


    unkv2 = sub_02199978(bagView);
    psVar3 = (ItemTable *)ovy142_2199928(bagView, unkv2);
    if ((psVar3 != NULL))
    {
        if ((psVar3->itemid != 0))
        {
            void *uVar2 = sub_02026740(psVar3->itemid, 0, bagView->heapId);
            u8 cVar1 = sub_02026820(uVar2, 5);
            ovy142_219bf04(bagView, uVar2, psVar3, param_2);

            if (!ovy142_219d43c(bagView, cVar1) && (param_2[0] != 2))
            {
                param_2[0] = -1;
            }

            if (sub_02026820(uVar2, 3) == 0)
            {
                if (sub_02026C14(psVar3->itemid) == 1)
                {
                    param_2[1] = 6;
                }
                if (cVar1 != 2)
                {
                    param_2[2] = 3;
                }
            }

            if (sub_02026820(uVar2, 4))
            {

                if (ovy142_219c0e8(bagView, psVar3->itemid) == 1)
                {
                    param_2[2] = 5;
                }
                else
                {
                    param_2[2] = 4;
                }
            }
            if (bagView->itemType != 5)
            {
                param_2[3] = 8;
            }
            else
            {
                param_2[3] = 9;
            }
            param_2[4] = 0xa;
            sub_0203A24C(uVar2);
        }
    }
}

const int unk_21A098C[13] = {0};
extern const u8 data021A08E8[5];


void ovy142_219c014(BagView *bagView)
{
    int v6[13];        // r3
    int v7;         // r2
    int v10;        // r6
    int v11;        // r4
    int v12;        // r3
    int v13;        // r2
    int v14;        // r3
    u8 v16[8];    // [sp+0h] [bp-68h] BYREF
    u32 v17[5];  // [sp+8h] [bp-60h] BYREF

    v7 = 6;
    do
    {
        v6 = unk_21A098C;
        --v7;
    } while (v7);

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
            v17[v13] = v6[v16[v10]];
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
                v17[v14] = 160;
                break;
            }
            v14++;
        }
        while (v14 < 5);
    }
    ovy142_219f0bc(bagView, v17, v11);
}

int ovy142_219c0b4(BagView *bagView)
{
    int uVar1;

    uVar1 = sub_02199978(bagView);
    ItemTable *puVar2 = (ItemTable *)ovy142_2199928(bagView, uVar1);
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
    return sub_0201765C(bagView->m_GameData, uVar1);
}

const int unk_21A095C[6] = {0};
void ovy142_219c100(u32 a1, int a2, BagView *bagView);

void ovy142_219c100(u32 a1, int a2, BagView *bagView)
{
    int v7;       // r6
    int v8;       // r1
    int v9;       // r1
    BagView *v10; // r0
    int v11;      // r1
    int v12;      // r6
    int v14;      // r0
    int v16;      // r7
    int v18;      // [sp+0h] [bp-38h]
    int v19;      // [sp+4h] [bp-34h]
    int v20[6];   // [sp+8h] [bp-30h]

    v7 = -1;
    v19 = ovy142_2199988(bagView);
    if (a2)
        return;
    if (a1 < 6)
    {
        v20 = unk_21A095C;
        if (bagView->itemType != v20[a1])
        {
            v7 = v20[a1];
            ovy142_219bda4(bagView, 0);
        }
    }
    else if (a1 == 6)
    {
        ovy142_219bda4(bagView, 0);
        v8 = bagView->itemType;
        bagView->itemType = v8 - 1;
        if (v8 - 1 < 0)
            bagView->itemType = 5;
        ovy142_219cac0(bagView, v8, 0, ovy142_219D464);
        return;
    }
    else if (a1 == 7)
    {
        ovy142_219bda4(bagView, 0);
        v9 = bagView->itemType;
        bagView->itemType = v9 + 1;
        if (v9 + 1 >= 6)
            bagView->itemType = 0;
        ovy142_219cac0(bagView, v9, 1, ovy142_219D464);
        return;
    }
    else if (a1 == 8)
    {
        if (bagView->itemType != 5)
        {
            if (ovy142_2199988(bagView) > 1)
            {
                ovy142_219bca4(bagView);
                ovy142_219bda4(bagView, 0);
                ovy142_219ff40(bagView, 0);
                bagView->unk838 = 0xFFFF;
                ovy142_21998f4(bagView);
                BagMenu_SetRunFunc(bagView, ovy142_219cc84);
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
    else if (a1 == 9)
    {
        if (sub_0219BE00(bagView) == 1)
        {
            ovy142_219be90(bagView);
            ovy142_219bda4(bagView, 0);
            bagView->unk838 = 0xFFFF;
            ovy142_21998f4(bagView);
        }
    }
    else if (a1 == 0xa)
    {
        if (bagView->unk10 != 2)
        {
            bagView->unk898 = 0;
            bagView->selectItem = 0;
            v10 = bagView;
            v11 = 3;
            ovy142_219c9f8(v10, v11, 0);
            sub_0203D564(1);
        }
    }
    else if (a1 == 0xb)
    {
        bagView->unk898 = 1;
        bagView->selectItem = 0;
        v10 = bagView;
        v11 = 4;
        ovy142_219c9f8(v10, v11, 0);
        sub_0203D564(1);
    }
    else if (a1 >= 12 && a1 < 0x12)
    {
        {
            if (bagView->bagMenuFunc == ovy142_219a850)
            {
                v12 = bagView->posNow;
                v18 = sub_02199978(bagView);
                if (ovy142_2199988(bagView))
                {

                    if (bagView->posNow != a1 - 12)
                    {
                        bagView->posNow = a1 - 12;
                        if (v19 <= sub_02199978(bagView))
                        {
                            bagView->posNow = v12;
                            return;
                        }
                    }

                    {
                        v14 = sub_02199978(bagView);
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
    }
    else if (a1 >= 0x12)
    {
        if (sub_0219BE00(bagView) == 1 && ovy142_219be18(bagView, a1 - 18) == 1)
        {
            ovy142_219bda4(bagView, 0);
            ovy142_21998f4(bagView);
        }
    }
    if (v7 != -1)
    {
        v16 = bagView->itemType;
        bagView->itemType = v7;
        GFL_SndSEPlay(2008);
        ovy142_2199a5c(bagView, v16, bagView->itemType);
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


void ovy142_219c3cc(BagView *bagView)
{
    if (PrintSystem_IsTextPrintActive(bagView->printSystem))
    {
        GFL_FadeScreenSet(0, 1, 1, 0, 6, 1, bagView->heapId);
        GFL_SndSEPlay(1950);
        BagMenu_SetRunFunc(bagView, ovy142_219c414);
    }
}

void ovy142_219c414(BagView *bagView)
{
    int v2;     // r5
    int result; // r0

    v2 = GFL_FadeScreenIsFinished();
    result = ovy142_21a00a0(bagView);
    if (v2 == 1 && !result)
    {
        sub_0204C520(bagView->unk6B8, 1);
        ovy142_219c8d0(bagView);
    }
}

typedef struct
{
    /*0x00*/void *gamedata;
    /*0x04*/void *trainerData;
    /*0x08*/void *playerData;
    /*0x0C*/void *m_itemData;
    /*0x10*/int itemdata2;
    /*0x14*/void *bagData;
    /*0x18*/u8 unk18[0x20];
    /*0x38*/int mode;
    /*0x3C*/int playerstate;
    /*0x40*/int playerLastScreen;
}BAG_DATA;

extern int data21A0A18[4];

int ovy142_219c444(int a1, int a2, BAG_DATA *a3, int a4);
extern void GFL_HeapCreateChild(int, int, int);
extern void *GFL_ProcInitSubsystem(int, int, int);
extern void sub_0203DF64(int*, int*);
extern void sub_020086C0(void*);
extern u32 sub_02008890(void*);
extern int GFL_MsgSysLoadData(int, int, int, u16);
extern int GFL_StrBufCreate(int ,u16);
extern int GFL_WordSetSystemCreateDefault(u16);
extern int sub_020219A8(int, u16);
extern int sub_0202E7A4(int ,int ,int, u16);
extern int GFL_FontCreate(int ,int, int, int, u16);
extern int ButtonSystem_Create(int template, void* data1, void* data2, u16 heap);
extern int GFL_VBlankTCBAdd(void*, void*, int);
extern void sub_02042BA8(int, u16);
extern int sub_0202E168(int, int, int, int, u16);
extern int GFL_TCBExMgrCreate(u16, u16, int, int);

int ovy142_219c444(int a1, int a2, BAG_DATA *a3, int a4)
{
    int v11;
    BagView *v6;
    
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
    v6->unk10 = a3->mode;
    v6->unk1C = a3->playerstate;
    v6->unk20 = a3->playerLastScreen;
    v6->unk1F50 = a3->itemdata2;

    sub_020086C0(v6->bagSave);
    ovy142_21a03f0(&v6->unk8C8, (int)a3->bagData, v6->unk1F50, v6->heapId);
    v6->itemType = sub_02008890(v6->unk14);
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
        if (v7 == v6->itemType)
        {
            v6->posNow = v16;
            v6->unk834 = v15 - 1;
        }
        sub_02008894(v6->unk14, v7, v16, v15);
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
    ovy142_219e5c4(v6);
    ovy142_219efc0(v6);
    sub_021998DC(v6);
    ovy142_219e6f8(v6);
    v6->buttonManSystem = ButtonSystem_Create(0x21A0A18, ovy142_219c100, (void*)v6, v6->heapId);
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

    BagMenu_SetRunFunc(v6, ovy142_219c3cc);
    return 1;
}
