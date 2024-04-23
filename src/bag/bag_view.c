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

void sub_021998C0(BagView *m_bagView, FieldBagItemUse a2)
{
    m_bagView->unk4FC = a2;
    sub_0203DEB4(m_bagView->KeyRetypeIntervalRepeated, m_bagView->KeyRetypeIntervalFirst);
}

void sub_021998DC(BagView *m_bagView)
{
    m_bagView->unk838 = 0xFFFF;
    ovy142_21998f4(m_bagView);
}

void ovy142_21998f4(BagView *m_bagView)
{
    if (!sub_0203D554())
    {
        ovy142_219de0c(m_bagView);
    }
    else
    {
        ovy142_219e120(m_bagView);
    }
    ovy142_219e924(m_bagView);
    ovy142_219becc(m_bagView);
    m_bagView->unk892 = 1;
}

ItemTable* ovy142_2199928(BagView *m_bagView, u32 pocket)
{
    if (m_bagView->unk83C != 0)
    {
        return &m_bagView->m_itemTable[pocket];
    }
    return ovy142_21a0470(&m_bagView->unk8C8, m_bagView->itemType, pocket);
}

int ovy142_219995c(u32 itemId, int param_2, u16 heapId)
{
    int price = Item_GetItemParam(itemId, ITEM_DATA_PRICE, heapId); // GetItemParam
    return (price / 2) * param_2;
}

int sub_02199978(BagView *m_bagView)
{
    return m_bagView->posNow + m_bagView->unk834 + 1;
}

int ovy142_2199988(BagView *m_bagView)
{
    if (m_bagView->unk83C != 0)
    {
        return BagSave_GetUniqueItemCount(&m_bagView->m_itemTable[0], NORMAL_ITEM_MAX);
    }
    return ovy142_21a0698(&m_bagView->unk8C8, m_bagView->itemType, m_bagView);
}

void BagMenu_LoadItemNameToStrbuf(BagView *m_bagView, int bufId, int msgId)
{
    LoadItemNameToStrbuf(m_bagView->messageParam, bufId, msgId);
}

void BagMenu_LoadBagPocketNameToStrbuf(BagView *bagView, int bufId, int msgId)
{
    LoadBagPocketNameToStrbuf(bagView->messageParam, bufId, msgId);
}

void ovy142_21999d8(BagView *m_bagView, int bufId, int msgId, int name1, int name2);

void ovy142_21999d8(BagView *m_bagView, int bufId, int msgId, int name1, int name2)
{
    sub_020244E0(m_bagView->messageParam, bufId, msgId, name1, name2);
}

void ovy142_21999f0(BagView *m_bagView, int pockId1, int pockId2);

void ovy142_21999f0(BagView *m_bagView, int pockId1, int pockId2)
{
    int *uStack_18;

    MI_CpuCopy8(&m_bagView->m_itemTable[pockId1], &uStack_18, 4);
    MI_CpuCopy8(&m_bagView->m_itemTable[pockId2], &m_bagView->m_itemTable[pockId1], 4);
    MI_CpuCopy8(&uStack_18, &m_bagView->m_itemTable[pockId2], 4);
}

void ovy142_2199a20(BagView *m_bagView, int param_2, int param_3);

void ovy142_2199a20(BagView *m_bagView, int param_2, int param_3)
{
    int i;
    if (param_2 != param_3)
    {
        if (param_2 < param_3)
        {
            for (i = param_2; i < param_3; i++)
            {
                ovy142_21999f0(m_bagView, i, i + 1);
            }
        }
        else
        {
            for (i = param_2; i > param_3; i--)
            {
                ovy142_21999f0(m_bagView, i, i - 1);
            }
        }
    }
}


void ovy142_2199a5c(BagView *m_bagView, int param_2, u32 param_3)
{
    PosTable local_18;

    sub_020088A4(m_bagView->unk14, param_2);
    sub_02008894(m_bagView->unk14, param_2, m_bagView->posNow, (m_bagView->unk834 + 1));
    sub_0200887C(m_bagView->unk14, param_3, &local_18.y, &local_18.x);
    m_bagView->posNow = local_18.y;
    m_bagView->unk834 = local_18.x - 1;
    ovy142_219ed3c(m_bagView);
    ovy142_219f8ec(m_bagView, param_3);
    ovy142_219f06c(m_bagView, param_3);
    ovy142_219f450(m_bagView, param_3);
}

int ovy142_2199ad4(BagView *m_bagView, int itemCount, int param_3);

int ovy142_2199ad4(BagView *m_bagView, int itemCount, int param_3)
{
    int v4; // r3
    int v5; // r4

    if (!itemCount)
        return 0;
    v4 = m_bagView->posNow;
    v5 = m_bagView->unk834;

    if (v4 == 5 && v5 + 7 < itemCount)
    {
        m_bagView->unk834++;
    }
    else if (v4 != 5 && v4 + 1 < itemCount)
    {
        m_bagView->posNow++;
    }
    else if (param_3 == 1)
    {
        m_bagView->unk834 = -1;
        m_bagView->posNow = 0;
    }
    
    return v4 != m_bagView->posNow || v5 != m_bagView->unk834;
}

// https://decomp.me/scratch/GGLff
int ovy142_2199b48(BagView *m_bagView, int itemCount, int param_3);

int ovy142_2199b48(BagView *m_bagView, int itemCount, int param_3)
{
    int v4; // r3
    int v5; // r4
    if (itemCount == 0)
    {
        return 0;
    }
    v4 = m_bagView->posNow;
    v5 = m_bagView->unk834;
    if ((m_bagView->posNow == 0) && (m_bagView->unk834 != -1))
    {
        m_bagView->unk834--;
    }
    else if (m_bagView->posNow)
    {
        m_bagView->posNow--;
    }
    else if (param_3 == 1)
    {
        m_bagView->unk834 = itemCount - 7;
        if (itemCount - 7 < -1)
        {
            m_bagView->unk834 = -1;
        }
        m_bagView->posNow = 5;
        if (m_bagView->posNow >= itemCount)
        {
            m_bagView->posNow = itemCount - 1;
        }
    }

    return v4 != m_bagView->posNow || v5 != m_bagView->unk834;
}


int ovy142_2199bcc(BagView *m_bagView)
{
    int v2;          // r6
    int v4;          // r4
    u32 v5;
    u32 v6;

    v2 = ovy142_2199988(m_bagView);
    if (v2 >= 7 && sub_0203DA84(&v5, &v6) == 1)
    {
        if (v5 >= 0x100 || v5 < 0xE0)
            return 0;
        if (!m_bagView->unk8B0)
        {
            if (sub_0203DA48() == 1)
            {
                if (v6 < 0x10 || v6 >= 0x98)
                    return 0;
                m_bagView->unk8B0 = 1;
            }
            else
            return 0;
        }
        ovy142_219bda4(m_bagView, 0);
        v4 = m_bagView->unk834;
        m_bagView->unk834 = sub_020355B8(v2 - 6, v6, 26, 142, 0) - 1;
        ovy142_219ecec(m_bagView);
        if (m_bagView->unk834 != v4)
        {
            sub_02006254(0x548);
            return 1;
        }
    }
    return 0;
}

extern int sub_0203DF44(void);
int ovy142_2199c70(BagView *m_bagView);

int ovy142_2199c70(BagView *m_bagView)
{
    u32 i;
    int iVar5 = 0;

    int uVar1 = sub_02199978(m_bagView);
    int ItemCount = ovy142_2199988(m_bagView);

    if (sub_0203DF44() & 0x80)
    {
        iVar5 = ovy142_2199ad4(m_bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x40)
    {
        iVar5 = ovy142_2199b48(m_bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x100)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199ad4(m_bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            iVar5 = 1;
    }
    else if (sub_0203DF44() & 0x200)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199b48(m_bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            iVar5 = 1;
    }

    if (iVar5 != 0)
    {
        int uVar2 = sub_02199978(m_bagView);
        sub_02006254(0x548);
        ovy142_2199a20(m_bagView, uVar1, uVar2);
    }
    return iVar5;
}

int ovy142_2199d24(BagView *m_bagView);

int ovy142_2199d24(BagView *m_bagView)
{
    u32 i;
    int local_18;

    local_18 = 0;
    int ItemCount = ovy142_2199988(m_bagView);

    if (sub_0203DF44() & 0x80)
    {
        local_18 = ovy142_2199ad4(m_bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x40)
    {
        local_18 = ovy142_2199b48(m_bagView, ItemCount, 1);
    }
    else if (sub_0203DF44() & 0x100)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199ad4(m_bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            local_18 = 1;
    }
    else if (sub_0203DF44() & 0x200)
    {
        for (i = 0; i < 6; ++i)
        {
            if (ovy142_2199b48(m_bagView, ItemCount, 0) == 0)
                break;
        }
        if (i > 0)
            local_18 = 1;
    }
    return local_18;
}

int ovy142_2199db8(BagView *m_bagView);

int ovy142_2199db8(BagView *m_bagView)
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
        
        if (m_bagView->posNow == uVar2)
        {
            return 0;
        }

        {
            itemCount = ovy142_2199988(m_bagView);
            uVar4 = sub_02199978(m_bagView);
            uVar6 = m_bagView->posNow - uVar2;
            if (uVar6 < 0)
            {
                uVar6 = -uVar6;
            }
            if (m_bagView->posNow < uVar2)
            {
                {
                    for (i = 0; i < uVar6; i++)
                    {
                        if (ovy142_2199ad4(m_bagView, itemCount, 0) == 0)
                            break;
                    }
                }
            }
            else if (( m_bagView->posNow > uVar2))
            {
                for (i = 0; i < uVar6; i++)
                {
                    if (ovy142_2199b48(m_bagView, itemCount, 0) == 0)
                        break;
                }
            }
            if (i == 0)
                return 0;
            {
                int uVar3 = sub_02199978(m_bagView);
                ovy142_2199a20(m_bagView, uVar4, uVar3);
                ovy142_219bda4(m_bagView, 0);
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

void ovy142_2199eb8(BagView *m_bagView);
extern void ovy142_219ffe8(BagView*, int);
extern void ovy142_219c8d0(BagView*);

void ovy142_2199eb8(BagView *m_bagView)
{
    ovy142_219ffe8(m_bagView, 1);
    ovy142_219c8d0(m_bagView);
}

void ovy142_2199ecc(BagView *m_bagView)
{
    int iVar1;
    int uVar2;
    int uVar3;

    sub_02035198(m_bagView->unk8A4);
    iVar1 = sub_02021C0C(m_bagView->unk510);
    if (iVar1 != 0)
    {
        uVar2 = sub_02199978(m_bagView);

        if (ovy142_2199bcc(m_bagView))
        {
            uVar3 = sub_02199978(m_bagView);
            ovy142_2199a20(m_bagView, uVar2, uVar3);
            m_bagView->unk838 = 0xFFFF;
            ovy142_21998f4(m_bagView);
            return;
        }

        if (sub_0203DA2C() == 0)
        {
            m_bagView->unk8B0 = 0;

            if (m_bagView->unk8B4 == 1)
            {
                sub_02006254(0x54c);
                m_bagView->unk8B4 = 0;
                sub_02007FE8(m_bagView->bagSave, &m_bagView->m_itemTable[0], m_bagView->itemType, 0);
                sub_0204C488(m_bagView->unk6B4, 1);
                ovy142_219ffe8(m_bagView, 1);
                m_bagView->unk83C = 0;
                ovy142_219bda4(m_bagView, 0);
                ovy142_219c8d0(m_bagView);
                return;
            }
        }
        if (m_bagView->unk8B0 != 1)
        {
            if ((sub_0203DEFC() & (1 | 4)) != 0)
            {
                sub_02006254(0x54C);
                sub_02007FE8(m_bagView->bagSave, &m_bagView->m_itemTable[0], m_bagView->itemType, 0);
                sub_0204C488(m_bagView->unk6B4, 1);
                ovy142_219ffe8(m_bagView, 1);
                m_bagView->unk83C = 0;
                ovy142_219bda4(m_bagView, 1);
                ovy142_219c8d0(m_bagView);
                return;
            }

            if ((sub_0203DEFC() & 2) != 0)
            {
                sub_02006254(0x551);
                sub_0204C488(m_bagView->unk6B4, 1);
                m_bagView->unk83C = 0;
                ovy142_219bda4(m_bagView, 1);
                m_bagView->unk838 = 0xffff;
                ovy142_21998f4(m_bagView);
                ovy142_219c9f8(m_bagView, 4, ovy142_2199eb8);
                return;
            }

            if (ovy142_2199e88() == 1)
            {
                sub_02006254(0x551);
                sub_0204C488(m_bagView->unk6B4, 1);
                m_bagView->unk83C = 0;
                ovy142_219bda4(m_bagView, 0);
                m_bagView->unk838 = 0xffff;
                ovy142_21998f4(m_bagView);
                ovy142_219c9f8(m_bagView, 4, ovy142_2199eb8);
                return;
            }


            if (ovy142_2199db8(m_bagView) != 0)
            {
                m_bagView->unk8B4 = 1;
                ovy142_219ed3c(m_bagView);
                sub_02006254(0x548);
                m_bagView->unk838 = 0xffff;
                ovy142_21998f4(m_bagView);
                return;
            }

            if (ovy142_2199c70(m_bagView) != 0)
            {
                ovy142_219ed3c(m_bagView);
                sub_02006254(0x548);
                m_bagView->unk838 = 0xffff;
                ovy142_21998f4(m_bagView);
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


void ovy142_219a104(BagView *m_bagView)
{
    int iVar2;

    iVar2 = sub_0219A0B8((u16)m_bagView->selectItem);
    if (iVar2 != 0)
    {
        void *saveData = sub_02017934(m_bagView->m_GameData);
        void *uVar3 = sub_0200DCF0(saveData);
        int repelCountNull = sub_0200DDE0(uVar3);

        if (repelCountNull)
        {
            u16 items = m_bagView->selectItem;
            u32 heap = m_bagView->heapId;
            u8 uVar1;
            
            uVar1 = Item_GetItemParam(items, ITEM_DATA_USE_PARAM, heap);
            sub_0200DDB0(uVar3, uVar1);
            sub_0200DDF0(uVar3, (u16)m_bagView->selectItem);
            ovy142_219b340(m_bagView, 1);
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x3f, m_bagView->unk528);
            GFL_CopyVarForText(m_bagView->messageParam, 0, m_bagView->unk8);
            BagMenu_LoadItemNameToStrbuf(m_bagView, 1, m_bagView->selectItem);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam,
                                    m_bagView->unk52C,
                                    m_bagView->unk528);
            ovy142_219f6a4(m_bagView, 1);
            sub_02006254(0x7cc);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x40, m_bagView->unk528);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
            ovy142_219f6a4(m_bagView, 1);
        }
        
        sub_021998C0(m_bagView, ovy142_219a1ec);
    }
}

void ovy142_219a1ec(BagView *m_bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(m_bagView);
    if (iVar1 != 0)
    {
        uVar2 = sub_0203DEFC();
        if (((uVar2 & 1 | uVar2 & 2) != 0) || sub_0203DA48())
        {
            sub_02045738(3);
            m_bagView->unk838 = 0xFFFF;
            ovy142_21998f4(m_bagView);
            m_bagView->unk892 = 1;
            ovy142_219ed3c(m_bagView);
            sub_0204C520(m_bagView->unk6B8, 1);
            ovy142_219fda8(m_bagView, 1);
            ovy142_219c8d0(m_bagView);
        }
    }
}

void ovy142_219a250(BagView *m_bagView);
void ovy142_219a2ac(BagView *m_bagView);
void ovy142_219a2c4(BagView *m_bagView, int param_2);

void ovy142_219a250(BagView *m_bagView)
{
    if (m_bagView->selectItem - 616 <= 1) // 光之石 暗之石
    {
        GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x38, m_bagView->unk528);
        GFL_CopyVarForText(m_bagView->messageParam, 0, m_bagView->unk8);
        GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
        ovy142_219f6a4(m_bagView, 1);
        sub_021998C0(m_bagView, ovy142_219a1ec);
    }
}

void ovy142_219a2ac(BagView *m_bagView)
{
    ovy142_219f6a4(m_bagView, 1);
    sub_021998C0(m_bagView, ovy142_219a1ec);
}

void ovy142_219a2c4(BagView *m_bagView, int param_2)
{
    GFL_MsgDataLoadStrbuf(m_bagView->unk520, param_2, m_bagView->unk528);
    GFL_CopyVarForText(m_bagView->messageParam, 0, m_bagView->unk8);
    LoadItemNameToStrbuf(m_bagView->messageParam, 1, m_bagView->selectItem);
    GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
    sub_021998C0(m_bagView, ovy142_219a2ac);
}

extern int sub_0202E9DC(int, int);
int ovy142_219a314(BagView * m_bagView, int param_2, int param_3, int param_4);

int ovy142_219a314(BagView * m_bagView, int param_2, int param_3, int param_4)
{
    int iVar1;

    iVar1 = sub_0202E9DC(m_bagView->unkC, param_2);
    if (iVar1 == 0)
    {
        if (param_4 != 0)
        {
            ovy142_219b340(m_bagView, 1);
        }
        m_bagView->unk898 = param_3;
        sub_021998C0(m_bagView, 0);
        return 1;
    }
    ovy142_219a2c4(m_bagView, 0x3a);
    return 0;
}

int ovy142_219a354(BagView * m_bagView);

int ovy142_219a354(BagView * m_bagView)
{
    int iVar1;

    iVar1 = sub_0202E9DC(m_bagView->unkC, 0);
    if (m_bagView->unk89C == 0)
    {
        if (iVar1 == 0)
        {
            m_bagView->unk898 = 10;
            sub_021998C0(m_bagView, 0);
            return 1;
        }
        else if (iVar1 == 1)
        {
            ovy142_219a2c4(m_bagView, 0x77);
        }
        else
        {
            ovy142_219a2c4(m_bagView, 0x3a);
        }
        
        return 0;
    }
    if (m_bagView->unk89C == 1)
    {
        if (iVar1 == 0)
        {
            m_bagView->unk898 = 11;
            sub_021998C0(m_bagView, 0);
            return 1;
        }
        ovy142_219a2c4(m_bagView, 0x39);
        return 0;
    }
    return 0;
}

void ovy142_219a3c4(BagView *m_bagView);
void ovy142_219a3d4(BagView *m_bagView);
void ovy142_219a3e4(BagView *m_bagView);
void ovy142_219a3f4(BagView *m_bagView);

void ovy142_219a3c4(BagView *m_bagView)
{
    ovy142_219a314(m_bagView, 1, 7, 0);
}

void ovy142_219a3d4(BagView *m_bagView)
{
    ovy142_219a314(m_bagView, 2, 8, 0);
}

void ovy142_219a3e4(BagView *m_bagView)
{
    ovy142_219a314(m_bagView, 6, 17, 0);
}

void ovy142_219a3f4(BagView *m_bagView)
{
    ovy142_219a314(m_bagView, 4, 15, 1);
}

int ovy142_219a404(BagView *m_bagView);

int ovy142_219a404(BagView *m_bagView)
{
    int iVar1;

    iVar1 = sub_0202E9DC(m_bagView->unkC, 5);
    if (iVar1 == 0)
    {
        m_bagView->unk898 = 0x10;
        sub_021998C0(m_bagView, 0);
        return 1;
    }
    if (iVar1 == 1)
    {
        ovy142_219a2c4(m_bagView, 0x77);
    }
    else
    {
        ovy142_219a2c4(m_bagView, 0x3a);
    }
    
    return 0;
}

int ovy142_219a440(BagView *m_bagView);
int ovy142_219a460(BagView *m_bagView);
void ovy142_219a480(BagView *m_bagView);
void ovy142_219a490(BagView *m_bagView);

int ovy142_219a440(BagView *m_bagView)
{
    if (m_bagView->unk89C == 0)
    {
        return ovy142_219a314(m_bagView, 9, 0x14, 0);
    }
    return 0;
}

int ovy142_219a460(BagView *m_bagView)
{
    if (m_bagView->unk89C == 0)
    {
        return ovy142_219a314(m_bagView, 3, 0xe, 1);
    }
    return 0;
}

void ovy142_219a480(BagView *m_bagView)
{
    ovy142_219a314(m_bagView, 10, 0x15, 0);
}

void ovy142_219a490(BagView *m_bagView)
{
    ovy142_219a314(m_bagView, 0xb, 0x16, 0);
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


void ovy142_219a4d0(BagView *m_bagView)
{
    u32 bVar1 = 0;

    if (ovy142_219f7a4(m_bagView))
    {
        int data = sub_0202DBE4(m_bagView->unk79C);
        if (data)
        {
            int iVar3 = sub_0202DC00(m_bagView->unk79C);
            m_bagView->unk89C = m_bagView->unk848[iVar3];
            switch (m_bagView->unk89C)
            {
            case 0:
                int type = BagSave_GetExistingItemPocket(m_bagView->bagSave, m_bagView->selectItem);
                ovy142_219ff40(m_bagView, 0);
                if (type != 5)
                {
                    if (type != 4)
                    {
                        sub_0202D384((u16)m_bagView->selectItem);
                    }
                }
                else
                {

                    int fieldPocket = Item_GetItemParam((u16)m_bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, m_bagView->heapId);
                    if (fieldPocket == 0)
                    {
                        sub_0202D384((u16)m_bagView->selectItem);
                    }
                }

                if (type == 2)
                {
                    sub_021998C0(m_bagView, ovy142_219ac70);
                    break;
                }
                else
                {
                    int isEvoStone = Item_GetItemParam(m_bagView->selectItem, ITEM_DATA_IS_EVOSTONE, m_bagView->heapId);

                    if (isEvoStone == 1)
                    {
                        m_bagView->unk898 = 12;
                        sub_021998C0(m_bagView, 0);
                    }
                    else
                    {
                        int iVar5;
                        int index = ovy142_219a4a0(m_bagView->selectItem);
                        if (index >= 0)
                        {
                            index = ovy142_219a4a0(m_bagView->selectItem);
                            gItemFuncTable[index].func(m_bagView);
                            break;
                        }
                        iVar5 = ovy142_219a0dc((u16)m_bagView->selectItem);
                        if (iVar5 == 1)
                        {
                            sub_021998C0(m_bagView, ovy142_219a104);

                            break;
                        }
                        else if (iVar5 == 2)
                        {
                            sub_021998C0(m_bagView, ovy142_219a250);

                            break;
                        }
                        else
                        {
                            m_bagView->unk898 = 5;
                            sub_021998C0(m_bagView, 0);
                            break;
                        }
                    }
                }
                break;
            case 1:
                ovy142_219ff40(m_bagView, 0);
                if (sub_0202E9DC(m_bagView->unkC, 0) == 0)
                {
                    m_bagView->unk898 = 0xb;
                    sub_021998C0(m_bagView, 0);
                    break;
                }
                GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x39, m_bagView->unk528);
                GFL_CopyVarForText(m_bagView->messageParam, 0, m_bagView->unk8);
                GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
                sub_021998C0(m_bagView, ovy142_219a2ac);
                break;

            case 3:
                sub_021998C0(m_bagView, ovy142_219ae30);
                break;
            
            case 8:
            case 9:
                sub_021998C0(m_bagView, ovy142_219b5d4);
                break;
            case 4:
            case 5:
                iVar3 = sub_0219BE00(m_bagView);
                if (iVar3 == 1)
                {
                    ovy142_219be18(m_bagView, m_bagView->posNow);
                    ovy142_21998f4(m_bagView);
                    ovy142_219fda8(m_bagView, 1);
                    sub_0204C520(m_bagView->unk6B8, 1);
                    ovy142_219c8d0(m_bagView);
                }

                break;
            case 2:
                ovy142_219ff40(m_bagView, 0);
                int item = m_bagView->selectItem;
                if ((0x89 <= item) && (item <= 0x94))
                {
                    m_bagView->unk898 = 0x13;
                    sub_021998C0(m_bagView, 0);
                }

                break;

            case 10:
                if (sub_0203D554() == 1)
                {
                    ovy142_219e120(m_bagView);
                }
                else
                {
                    ovy142_219de0c(m_bagView);
                }
                ovy142_219bda4(m_bagView, sub_0203D554() == 0);
                ovy142_219fda8(m_bagView, 1);
                sub_0204C520(m_bagView->unk6B8, 1);
                ovy142_219c8d0(m_bagView);
                break;
            case 11:
                m_bagView->unk898 = 1;
                sub_021998C0(m_bagView, 0);
                break;

            case 6:
                m_bagView->unk898 = 2;
                ovy142_219ff40(m_bagView, 0);
                sub_021998C0(m_bagView, 0);
                break;
            }
            bVar1 = 1;
        }
        if (bVar1)
        {
            
            sub_0219F0AC(m_bagView);
            sub_0202DA54(m_bagView->unk79C);
            m_bagView->unk79C = 0;
        }
    }
}

void ovy142_219a724(BagView *m_bagView)
{
    int v2;      // r0
    u32 dword10; // r0

    v2 = sub_02199978(m_bagView);
    ItemTable *v3 = ovy142_2199928(m_bagView, v2);
    m_bagView->selectItem = 0;
    if (v3)
        m_bagView->selectItem = v3->itemid;
    dword10 = m_bagView->unk10;

    if (dword10 == 2)
    {
        if (!Item_GetItemParam((u16)m_bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, m_bagView->heapId) 
        && sub_02026C14((u16)m_bagView->selectItem) == 1)
        {
            if (sub_02026BA0((u16)m_bagView->selectItem))
                m_bagView->unk898 = 18;
            else
                m_bagView->unk898 = 3;
            sub_021998C0(m_bagView, 0);
        }
        else
        {
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 47, m_bagView->unk528);
            BagMenu_LoadItemNameToStrbuf(m_bagView, 0, m_bagView->selectItem);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
            sub_0219F760(m_bagView);
            ovy142_219fda8(m_bagView, 0);
            ovy142_219ff40(m_bagView, 0);
            sub_021998C0(m_bagView, ovy142_219acb8);
        }
    }
    else if (dword10 == 5)
    {
        m_bagView->unk898 = 1;
        sub_021998C0(m_bagView, 0);
    }
    else if (dword10 == 4)
    {
        sub_021998C0(m_bagView, ovy142_219af84);
    }
    else
    {
        ovy142_219c014(m_bagView);
        ovy142_219f76c(m_bagView, m_bagView->selectItem);
        sub_0219F760(m_bagView);
        sub_0204C520(m_bagView->unk6B8, 0);
        sub_021998C0(m_bagView, ovy142_219a4d0);
    }
}

void ovy142_219a850(BagView *m_bagView)
{
    int v2;     // r0
    int v3; // r5
    int v5;     // r5
    int v6;     // r5

    if (sub_02021C0C(m_bagView->unk510))
    {
        if (!sub_0203DA2C())
            m_bagView->unk8B0 = 0;
        sub_020504F0(m_bagView->unk6A4);
        sub_02035198(m_bagView->unk8A4);
        if (m_bagView->unk4FC != ovy142_219a850)
            return;
        {
            if (ovy142_2199bcc(m_bagView))
            {
                m_bagView->unk838 = 0xffff;
                ovy142_21998f4(m_bagView);
                return;
            }
            if (m_bagView->unk8B0 == 1)
                return;
            {
                if (sub_0203D554() == 1)
                {
                    v2 = sub_0203DEFC();
                    v3 = v2;
                    if (!v2)
                        return;
                    if (ovy142_2199988(m_bagView))
                    {
                        if ((v3 & 0xC0A) == 0)
                        {
                            sub_02006254(1352);
                            ovy142_219de0c(m_bagView);
                            ovy142_219bda4(m_bagView, 1);
                            return;
                        }
                    }
                    else
                    {
                        ovy142_219bda4(m_bagView, 1);
                        if ((v3 & 0xCD) != 0)
                            return;
                    }
                }
                if ((sub_0203DEFC() & 2) != 0)
                {
                    m_bagView->unk898 = 1;
                    m_bagView->selectItem = 0;
                    sub_0203D564(0);
                    ovy142_219c9f8(m_bagView, 4, 0);
                    return;
                }
                if ((sub_0203DEFC() & 0x400) != 0)
                {
                    if (m_bagView->unk10 != 2)
                    {
                        m_bagView->unk898 = 0;
                        m_bagView->selectItem = 0;
                        sub_0203D564(0);
                        ovy142_219c9f8(m_bagView, 3, 0);
                        
                    }
                    return;
                }
                if ((sub_0203DEFC() & 0x800) != 0)
                {
                    if (sub_0219BE00(m_bagView) == 1)
                    {
                        if (ovy142_219be18(m_bagView, m_bagView->posNow) == 1)
                            ovy142_21998f4(m_bagView);
                        else
                            ovy142_219be90(m_bagView);
                        if (sub_0203D554() == 1)
                        {
                            ovy142_219de0c(m_bagView);
                            ovy142_219bda4(m_bagView, 1);
                        }
                    }
                    return;
                }
                if ((sub_0203DEFC() & 8) != 0)
                {
                    if (m_bagView->itemType != 5)
                    {
                        if (ovy142_2199988(m_bagView) > 1)
                        {
                            ovy142_219bca4(m_bagView);
                            ovy142_219bda4(m_bagView, 1);
                            ovy142_219ff40(m_bagView, 0);
                            m_bagView->unk838 = 0xffff;
                                    ovy142_21998f4(m_bagView);
                            sub_021998C0(m_bagView, ovy142_219cc84);
                            return;
                        }
                    }
                    else if (ovy142_219d22c(m_bagView) > 2)
                    {
                        ovy142_219bca4(m_bagView);
                        ovy142_219bda4(m_bagView, 1);
                        ovy142_219ff40(m_bagView, 0);
                        m_bagView->unk838 = 0xffff;
                        ovy142_21998f4(m_bagView);
                        sub_021998C0(m_bagView, ovy142_219d0c8);
                        return;
                    }
                }
                if ((sub_0203DEFC() & 1) != 0)
                {
                    if (ovy142_2199988(m_bagView) > 0)
                    {
                        sub_021998C0(m_bagView, ovy142_219c958);
                        return;
                    }
                }
                else
                {
                    if ((sub_0203DEFC() & 4) != 0)
                    {
                        if (m_bagView->itemType != 5 && ovy142_2199988(m_bagView) > 1)
                        {
                            MI_CpuFill8(m_bagView->m_itemTable, 0, 0x4D8);
                            sub_02007FE8(m_bagView->bagSave, m_bagView->m_itemTable, m_bagView->itemType, 1);
                            sub_0204C488(m_bagView->unk6B4, 2);
                            ovy142_219ffe8(m_bagView, 0);
                            m_bagView->unk83C = 1;
                            ovy142_219c8e8(m_bagView);
                            return;
                        }
                        return;
                    }
                    else
                    {
                        if (ovy142_2199d24(m_bagView))
                        {
                            ovy142_219ed3c(m_bagView);
                            sub_02006254(0x548);
                            ovy142_21998f4(m_bagView);
                            return;
                        }
                    }
                }
                
                if ((sub_0203DF44() & 0x10) != 0)
                    {
                        v5 = m_bagView->itemType;
                        m_bagView->itemType = v5 + 1;
                        if (v5 + 1 >= 6)
                            m_bagView->itemType = 0;
                        sub_0203D564(0);
                        ovy142_219cac0(m_bagView, v5, 1, ovy142_219D464);
                    }
                    else if ((sub_0203DF44() & 0x20) != 0)
                    {
                        v6 = m_bagView->itemType;
                        m_bagView->itemType = v6 - 1;
                        if (v6 - 1 < 0)
                            m_bagView->itemType = 5;
                        sub_0203D564(0);
                        ovy142_219cac0(m_bagView, v6, 0, ovy142_219D464);
                    }
            }
        }
    }
}

void ovy142_219ab38(BagView *m_bagView);
extern void ovy142_219fb60(BagView*);

void ovy142_219ab38(BagView *m_bagView)
{
    int iVar1;


    iVar1 = sub_0202DBE4(m_bagView->unk79C);
    if (iVar1 != 0)
    {
        iVar1 = sub_0202DC00(m_bagView->unk79C);
        if (iVar1 == 0) 
        {
            sub_0219F0AC(m_bagView);
            m_bagView->unk898 = 6;
            sub_021998C0(m_bagView, 0);
        }
        else
        {
            sub_0219F0AC(m_bagView);
            sub_02045738(3);
            sub_0204C520(m_bagView->unk6B8, 1);
            ovy142_219fda8(m_bagView, 1);
            if (sub_0203D554() == 1)
            {
                ovy142_219e120(m_bagView);
                ovy142_219bda4(m_bagView, 0);
            }
            else
            {
                ovy142_219bda4(m_bagView, 1);
            }
            
            ovy142_219c8d0(m_bagView);
        }
        
        ovy142_219fb60(m_bagView);
    }

}

void ovy142_219abb8(BagView *m_bagView);
extern void ovy142_219faac(BagView*);

void ovy142_219abb8(BagView *m_bagView)
{
    int iVar1;

    iVar1 = ovy142_219f7a4(m_bagView);
    if (iVar1 != 0)
    {
        ovy142_219faac(m_bagView);
        sub_021998C0(m_bagView, ovy142_219ab38);
    }

}

void ovy142_219abd8(BagView *m_bagView);
extern int sub_020062A8(void);
extern void sub_020244A4(int, int, int);

void ovy142_219abd8(BagView *m_bagView)
{
    int iVar1;

    iVar1 = sub_020062A8();
    if ((iVar1 != 1) && ((sub_0203DEFC() & (1 | 2)) || (sub_0203DA48() != 0)))
    {
        GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x3e, m_bagView->unk528);
        int uVar3 = sub_02026AE4((u16)m_bagView->selectItem);
        sub_020244A4(m_bagView->messageParam, 0, uVar3);
        GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
        ovy142_219f6a4(m_bagView, 1);
        sub_021998C0(m_bagView, ovy142_219abb8);
    }
}

void ovy142_219ac4c(BagView *m_bagView);

void ovy142_219ac4c(BagView *m_bagView)
{
    int iVar1;

    iVar1 = ovy142_219f7a4(m_bagView);
    if (iVar1 != 0)
    {
        sub_02006254(0x55C);
        sub_021998C0(m_bagView, ovy142_219abd8);
    }
}

extern int sub_02026B84(u16);
void ovy142_219ac70(BagView *m_bagView);

void ovy142_219ac70(BagView *m_bagView)
{
    int iVar1;

    iVar1 = sub_02026B84((u16)m_bagView->selectItem);
    if (iVar1 == 0xFF)
    {
        GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x3c, m_bagView->unk52C);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x3d, m_bagView->unk52C);
    }
    
    ovy142_219f6a4(m_bagView, 1);
    sub_021998C0(m_bagView, ovy142_219ac4c);
}

void ovy142_219acb8(BagView *m_bagView);

void ovy142_219acb8(BagView *m_bagView)
{
    if (((sub_0203DEFC() & 3) != 0) || sub_0203DA48())
    {
        sub_02045738(3);

        m_bagView->unk838 = 0xFFFF;
        ovy142_21998f4(m_bagView);
        m_bagView->unk892 = 1;
        ovy142_219ed3c(m_bagView);
        sub_0204C520(m_bagView->unk6B8, 1);
        ovy142_219fda8(m_bagView, 1);
        ovy142_219c8d0(m_bagView);
    }
}

void ovy142_219ad14(BagView *m_bagView);

void ovy142_219ad14(BagView *m_bagView)
{
    if (ovy142_219f7a4(m_bagView))
    {
        sub_021998C0(m_bagView, ovy142_219acb8);
    }
}

void ovy142_219ad30(BagView *m_bagView)
{
    int iVar1;
    int iVar2;

    iVar1 = sub_0202DBE4(m_bagView->unk79C);
    if (iVar1 != 0)
    {
        iVar1 = sub_0202DC00(m_bagView->unk79C);
        ovy142_219fb60(m_bagView);
        sub_02045738(3);
        if (iVar1 == 0)
        {
            sub_02006254(0x647);
            ovy142_219b340(m_bagView, m_bagView->unk814);
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x36, m_bagView->unk528);
            ovy142_21999d8(m_bagView, 0, m_bagView->selectItem, ((int)m_bagView->unk814 > 1), 0);
            sub_0202451C(m_bagView->messageParam, 1, m_bagView->unk814, 3, 0, 1);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C,
                                    m_bagView->unk528);
            sub_0219F760(m_bagView);
            sub_021998C0(m_bagView, ovy142_219ad14);
        }
        else
        {
            sub_0204C520(m_bagView->unk6B8, 1);
            ovy142_219fda8(m_bagView, 1);
            iVar2 = sub_0203D554();
            ovy142_219bda4(m_bagView, iVar2 == 0);
            ovy142_219c8d0(m_bagView);
        }
    }
}

void ovy142_219ae10(BagView *m_bagView);

void ovy142_219ae10(BagView *m_bagView)
{
    int iVar1;

    iVar1 = ovy142_219f7a4(m_bagView);
    if (iVar1 != 0)
    {
        ovy142_219faac(m_bagView);
        sub_021998C0(m_bagView, ovy142_219ad30);
    }
}

extern void ovy142_219ae90(BagView*);
extern void ovy142_219b438(BagView*, int);

void ovy142_219ae30(BagView *m_bagView)
{
    m_bagView->unk814 = 1;
    ovy142_219b438(m_bagView, 1);
    GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x35, m_bagView->unk528);
    ovy142_21999d8(m_bagView, 0, m_bagView->selectItem, 1, 0);
    GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C,
                    m_bagView->unk528);
    sub_0219F760(m_bagView);
    sub_021998C0(m_bagView, ovy142_219ae90);
}


void ovy142_219ae90(BagView *m_bagView)
{
    int iVar2;
    u32 uVar3;

    iVar2 = ovy142_219f7a4(m_bagView);
    if ((iVar2 != 0) && (ovy142_219b490(m_bagView) != 1))
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
            sub_02006254(0x54C);
            ovy142_219b46c(m_bagView);
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x37, m_bagView->unk528);
            ovy142_21999d8(m_bagView, 0, m_bagView->selectItem, 1 < m_bagView->unk814, 0);
            sub_0202451C(m_bagView->messageParam, 1, m_bagView->unk814, 3, 0, 1);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C,
                            m_bagView->unk528);
            sub_0219F760(m_bagView);
            sub_021998C0(m_bagView, ovy142_219ae10);
        }
        else if (iVar2 == 1)
        {
            sub_02006254(0x551);
            ovy142_219c9f8(m_bagView, 4, ovy142_219cba8);
        }
    }
}



void ovy142_219af84(BagView *m_bagView);

void ovy142_219b2a8(BagView*);
extern void ovy142_219b0a0(BagView*);
extern void ovy142_219b12c(BagView*);
extern void ovy142_219fa3c(BagView*);

void ovy142_219af84(BagView *m_bagView)
{
    int price;
    int isImportItem;
    int uVar4;

    sub_0204C520(m_bagView->unk6B8, 0);

    price = Item_GetItemParam(m_bagView->selectItem, ITEM_DATA_PRICE, m_bagView->heapId);
    isImportItem = Item_GetItemParam(m_bagView->selectItem, ITEM_DATA_IS_IMPORT_ITEM, m_bagView->heapId);
    if ((price == 0) || (isImportItem != 0))
    {
        {
            ovy142_219fda8(m_bagView, 0);
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x4d, m_bagView->unk528);
            BagMenu_LoadItemNameToStrbuf(m_bagView, 0, m_bagView->selectItem);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
            sub_0219F760(m_bagView);
            ovy142_219ff40(m_bagView, 0);
            sub_021998C0(m_bagView, ovy142_219b2a8);
        }
    }
    else
    {
        m_bagView->unk814 = 1;
        ovy142_219fa3c(m_bagView);
        ovy142_219fda8(m_bagView, 0);
        uVar4 = sub_02199978(m_bagView);
        ItemTable* iVar2 = (ItemTable*)ovy142_2199928(m_bagView, uVar4);
        if (iVar2->num == 1)
        {
            sub_021998C0(m_bagView, ovy142_219b12c);
        }
        else
        {
            ovy142_219b438(m_bagView, 2);
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x4e, m_bagView->unk528);
            BagMenu_LoadItemNameToStrbuf(m_bagView, 0, m_bagView->selectItem);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
            sub_0219F760(m_bagView);
            sub_021998C0(m_bagView, ovy142_219b0a0);
        }
    }
}

extern void ovy142_219cbe4(BagView*);

void ovy142_219b0a0(BagView *m_bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(m_bagView);
    if ((iVar1 != 0) && (iVar1 = ovy142_219b490(m_bagView), iVar1 != 1))
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
            sub_02006254(0x54C);
            ovy142_219b46c(m_bagView);
            sub_021998C0(m_bagView, ovy142_219b12c);
        }
        else if (iVar1 == 1)
        {
            sub_02006254(0x551);
            ovy142_219c9f8(m_bagView, 4, ovy142_219cbe4);
        }
    }
}

void ovy142_219b1a0(BagView*);

void ovy142_219b12c(BagView *m_bagView)
{
    int uVar2;

    ovy142_219faac(m_bagView);
    uVar2 = ovy142_219995c(m_bagView->selectItem, m_bagView->unk814, m_bagView->heapId);
    GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x4F, m_bagView->unk528);
    sub_0202451C(m_bagView->messageParam, 0, uVar2, 7, 0, 1);
    GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
    sub_0219F760(m_bagView);
    sub_021998C0(m_bagView, ovy142_219b1a0);
}

void ovy142_219b1a0(BagView *m_bagView)
{
    int iVar1;
    int uVar2;
    int uVar3;
    int iVar4;

    iVar1 = ovy142_219f7a4(m_bagView);

    if ((iVar1 != 0) && (sub_0202DBE4(m_bagView->unk79C)))
    {
        iVar1 = sub_0202DC00(m_bagView->unk79C);
        ovy142_219fb60(m_bagView);

        switch (iVar1)
        {
        case 0:
            uVar2 = ovy142_219995c(m_bagView->selectItem, m_bagView->unk814, m_bagView->heapId);
            ovy142_219b340(m_bagView, m_bagView->unk814);
            uVar3 = sub_02017974(m_bagView->m_GameData);
            sub_0200C9C0(uVar3, uVar2);
            sub_02006254(0x655);
            ovy142_219f978(m_bagView);
            GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x50, m_bagView->unk528);
            ovy142_21999d8(m_bagView, 0, m_bagView->selectItem, 1 < m_bagView->unk814, 0);

            sub_0202451C(m_bagView->messageParam, 1, uVar2, 7, 0, 1);
            GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
            sub_0219F760(m_bagView);
            sub_021998C0(m_bagView, ovy142_219b2a8);
            break;
        case 1:
            iVar4 = sub_0203D554();
            ovy142_219bda4(m_bagView, iVar4 == 0);
            sub_021998C0(m_bagView, ovy142_219b2f0);
            break;
        }
    }
}

void ovy142_219b2a8(BagView *m_bagView)
{
    int iVar1;
    u32 uVar2;

    iVar1 = ovy142_219f7a4(m_bagView);
    if (iVar1 != 0)
    {
        uVar2 = sub_0203DEFC();
        if ((uVar2 & 3) != 0)
        {
            ovy142_219bda4(m_bagView, 1);
            sub_021998C0(m_bagView, ovy142_219b2f0);
            return;
        }

        if (sub_0203DA48() != 0)
        {
            ovy142_219bda4(m_bagView, 0);
            sub_021998C0(m_bagView, ovy142_219b2f0);
        }
    }
}

extern void ovy142_219fa6c(BagView*);

void ovy142_219b2f0(BagView *m_bagView)
{
    sub_02045738(3);
    m_bagView->unk838 = 0xFFFF;
    ovy142_21998f4(m_bagView);
    m_bagView->unk892 = 1;
    ovy142_219ed3c(m_bagView);
    ovy142_219fa6c(m_bagView);
    sub_0204C520(m_bagView->unk6B8, 1);
    ovy142_219fda8(m_bagView, 1);
    ovy142_219c8d0(m_bagView);
}

void ovy142_219b340(BagView *m_bagView, int useNum)
{
    u32 uVar1;
    u32 uVar2;
    int iVar3;
    int iVar4;

    uVar2 = sub_02199978(m_bagView);
    ovy142_2199928(m_bagView, uVar2);
    iVar3 = sub_02008338(m_bagView->bagSave, m_bagView->selectItem);
    sub_0200842C(m_bagView->bagSave, m_bagView->selectItem, useNum, m_bagView->heapId);
    iVar4 = sub_02008538(m_bagView->bagSave, m_bagView->selectItem, m_bagView->heapId);
    if (iVar4 == 0)
    {
        if (iVar3 == 1)
        {
            uVar1 = sub_02199978(m_bagView);
            ovy142_21a050c(&m_bagView->unk8C8, uVar1, 0);
        }
        ovy142_219b3b0(m_bagView);
    }
}

void ovy142_219b3b0(BagView *m_bagView)
{
    int v2;  // r5
    int v3;  // r1
    int v4;  // r2
    int v5;  // r3
    int v6;  // r5
    int v8;  // r1
    int v9;  // r1
    int v10; // r1

    v2 = sub_02199978(m_bagView);
    v3 = ovy142_2199988(m_bagView) + 1;
    v4 = 0;
    v5 = 0;
    if (v3 == v2 + 1)
        v4 = 1;
    v6 = m_bagView->unk834;

    if (v6 == v3 - 7)
        v5 = 1;

    if (v3 < 7)
    {
        if (v4 == 1)
        {
            v8 = m_bagView->posNow - 1;
            if (v8 <= 0)
                v8 = 0;
            m_bagView->posNow = v8;
        }
    }
    else
    {
        if (v5)
        {
            if (!v4)
            {
                ++m_bagView->posNow;
                v9 = m_bagView->unk834 - 1;
                if (v9 < -1)
                    v9 = -1;
                m_bagView->unk834 = v9;
            }
            else
            {
                v10 = v6 - 1;
                if (v10 < -1)
                    v10 = -1;
                m_bagView->unk834 = v10;
            }
        }
    }
}


void ovy142_219b438(BagView *m_bagView, int param_2)
{
    m_bagView->unk80C = param_2;
    ovy142_219fb78(m_bagView);
    ovy142_219fc14(m_bagView, m_bagView->unk814);
    sub_0204C124(m_bagView->unk724[5], 1);
    sub_0204C124(m_bagView->unk724[6], 1);
}

void ovy142_219b46c(BagView *m_bagView)
{
    sub_02045738(3);
    sub_0204C124(m_bagView->unk724[5], 0);
    sub_0204C124(m_bagView->unk724[6], 0);
}

const u8 sub021a08f8[12] = {0};

extern int sub_0203D9C8(u8*);

int ovy142_219b490(BagView *m_bagView)
{
    const u8 *v9;
    int iVar5;
    int iVar6;
    int unaff_r4;
    int bVar11 = 0;
    u32 i;
    u8 *v16;
    u8 local_24[12];

    iVar5 = m_bagView->unk814;

    ItemTable *iVar3 = ovy142_2199928(m_bagView, sub_02199978(m_bagView));
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
        m_bagView->unk810 = m_bagView->unk810 + 1;
        bVar11 = 1;
    }
    else
    {
        m_bagView->unk810 = 0;
    }

    if ((m_bagView->unk810 == 1) || (m_bagView->unk810 > 30))
    {
        switch (iVar6)
        {
        case 0:
            if (m_bagView->unk810 > 0x78)
            {
                m_bagView->unk814 = m_bagView->unk814 + 10;
            }
            else
            {
                m_bagView->unk814 = m_bagView->unk814 + 1;
            }
            unaff_r4 = 0;
            break;
        case 1:
            if (m_bagView->unk810 > 0x78)
            {
                m_bagView->unk814 = m_bagView->unk814 - 10;
            }
            else
            {
                m_bagView->unk814 = m_bagView->unk814 - 1;
            }
            unaff_r4 = 1;
            break;
        }
    }
    if (iVar6 == -1)
    {
        if (sub_0203DF44() & 0x40)
        {
            m_bagView->unk814 = m_bagView->unk814 + 1;
            unaff_r4 = 0;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & 0x80)
        {
            m_bagView->unk814 = m_bagView->unk814 + -1;
            unaff_r4 = 1;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & 0x10)
        {
            m_bagView->unk814 = m_bagView->unk814 + 10;
            unaff_r4 = 0;
            bVar11 = TRUE;
        }
        else if (sub_0203DF44() & 0x20)
        {
            m_bagView->unk814 = m_bagView->unk814 - 10;
            unaff_r4 = 1;
            bVar11 = TRUE;
        }
    }

    if (iVar3->num < m_bagView->unk814)
    {
        m_bagView->unk814 = 1;
    }
    else if (m_bagView->unk814 < 1)
    {
        m_bagView->unk814 = iVar3->num;
    }

    if (m_bagView->unk814 != iVar5)
    {
        u16 uVar8;
        int uVar22;
        sub_02006254(0x548);
        if (unaff_r4 == 0)
        {
            uVar22 = m_bagView->unk724[5];
            uVar8 = 0xb;
        }
        else
        {
            uVar22 = m_bagView->unk724[6];
            uVar8 = 10;
        }
        sub_0204C488(uVar22, uVar8);
        ovy142_219fc14(m_bagView, m_bagView->unk814);
    }
    return bVar11;
}

void ovy142_219b5d4(BagView *m_bagView)
{
    int uVar1;
    int iVar2;
    int uVar3;
    int uVar4;
    ItemTable *iVar5;
    int bVar6;

    iVar2 = sub_02008338(m_bagView->bagSave, m_bagView->selectItem);
    uVar3 = BagSave_GetExistingItemPocket(m_bagView->bagSave, m_bagView->selectItem);
    uVar4 = sub_02199978(m_bagView);
    iVar5 = ovy142_2199928(m_bagView, uVar4);
    bVar6 = iVar5->num != 1;
    if (iVar2 == 0)
    {
        GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x95, m_bagView->unk528);
        ovy142_21999d8(m_bagView, 1, m_bagView->selectItem, bVar6, 0);
        BagMenu_LoadBagPocketNameToStrbuf(m_bagView, 0, 5);
        ovy142_21a0578(&m_bagView->unk8C8, m_bagView->selectItem, (short)uVar3);
    }
    else
    {
        GFL_MsgDataLoadStrbuf(m_bagView->unk520, 0x96,m_bagView->unk528);
        ovy142_21999d8(m_bagView, 1, m_bagView->selectItem, bVar6, 0);
        BagMenu_LoadBagPocketNameToStrbuf(m_bagView, 0, uVar3);
        uVar1 = sub_02199978(m_bagView);
        ovy142_21a050c(&m_bagView->unk8C8, uVar1, 1);
    }
    GFL_WordSetFormatStrbuf(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
    ovy142_219f6a4(m_bagView, 0);
    sub_02006254(0x663);
    ovy142_219ff40(m_bagView, 0);
    ovy142_219b3b0(m_bagView);
    sub_021998C0(m_bagView, ovy142_219b6dc);
}

void ovy142_219b6dc(BagView *m_bagView)
{
    u32 uVar1;

    uVar1 = sub_0203DEFC();
    if ((uVar1 & 3))
    {
        ovy142_219bda4(m_bagView, 1);
    }
    else if (sub_0203DA48())
    {
        ovy142_219bda4(m_bagView, 0);
    }
    else
        return;

    sub_02045738(3);
    m_bagView->unk838 = 0xffff;
    ovy142_21998f4(m_bagView);
    m_bagView->unk892 = 1;
    ovy142_219ed3c(m_bagView);
    sub_0219F0AC(m_bagView);
    sub_0204C520(m_bagView->unk6B8, 1);
    ovy142_219fda8(m_bagView, 1);
    ovy142_219ff40(m_bagView, 1);
    ovy142_219c8d0(m_bagView);
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

void ovy142_219b784(BagView *m_bagView)
{
    int i;
    
    ItemTable* iVar2;
    ItemSortTable* iVar1;
    int iVar3;
    void* uVar4;
    

    iVar1 = (ItemSortTable*)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xc10);
    iVar2 = (ItemTable*)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xc11);
    sub_02008074(m_bagView->bagSave, iVar2, m_bagView->itemType, 1);
    iVar3 = sub_020084AC(m_bagView->bagSave, m_bagView->itemType, 1);
    uVar4 = sub_02026720(m_bagView->heapId);
    for (i = 0; i < iVar3; i++)
    {
        void* uVar6 = sub_0202672C(uVar4, iVar2[i].itemid, m_bagView->heapId);
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
    sub_02008074(m_bagView->bagSave, iVar2, m_bagView->itemType, 0);
    sub_0203A24C(iVar2);
    sub_0203A24C(iVar1);
}

const u16 DAT_021a0b08[12] = {0};
void ovy142_219b8c4(BagView *m_bagView);

void ovy142_219b8c4(BagView *m_bagView)
{
    int i;
    ItemSortTable* iVar1;
    ItemTable* iVar2;
    int iVar3;
 

    iVar1 = (ItemSortTable*)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xc45);
    iVar2 = (ItemTable*)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xc46);
    sub_02008074(m_bagView->bagSave, iVar2, m_bagView->itemType, 1);
    iVar3 = sub_020084AC(m_bagView->bagSave, m_bagView->itemType, 1);
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
    sub_02008074(m_bagView->bagSave, iVar2, m_bagView->itemType, 0);
    sub_0203A24C(iVar2);
    sub_0203A24C(iVar1);
}

void ovy142_219b9c0(BagView *m_bagView);
extern int sub_02026B40(u16);

void ovy142_219b9c0(BagView *m_bagView)
{
    int i;
    ItemSortTable *iVar1;
    ItemTable *iVar2;
    int iVar3;


    if (m_bagView->itemType == 2)
    {
        iVar1 = (ItemSortTable *)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xC7A);
        iVar2 = (ItemTable *)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xC7B);
        sub_02008074(m_bagView->bagSave, iVar2, m_bagView->itemType, 1);
        iVar3 = sub_020084AC(m_bagView->bagSave, m_bagView->itemType, 1);
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
        sub_02008074(m_bagView->bagSave, iVar2, m_bagView->itemType, 0);
        sub_0203A24C(iVar2);
        sub_0203A24C(iVar1);
    }
}

void ovy142_219bac4(BagView *m_bagView, int param_2);
extern int sub_0200854C(void*, u16);

void ovy142_219bac4(BagView *m_bagView, int param_2)
{
    int iVar4;
    ItemSortTable* iVar2;
    ItemTable* iVar3;
    void* uVar5;
    int i;


    iVar2 = (ItemSortTable*)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemSortTable), 0, "itemmenu.c", 0xCA9);
    iVar3 = (ItemTable*)sub_0203A1FC(m_bagView->heapId, NORMAL_ITEM_MAX * sizeof(ItemTable), 0, "itemmenu.c", 0xCAA);
    sub_02008074(m_bagView->bagSave, iVar3, m_bagView->itemType, 1);
    iVar4 = sub_020084AC(m_bagView->bagSave, m_bagView->itemType, 1);
    uVar5 = sub_02026720(m_bagView->heapId);
    for (i = 0; i < iVar4; i++)
    {
        ItemSortTable* params;
        void* uVar7;
        int iVar11;
        uVar7 = sub_0202672C(uVar5, iVar3[i].itemid, m_bagView->heapId);
        iVar11 = sub_0200854C(m_bagView->bagSave, iVar3[i].itemid);
        
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
    sub_02008074(m_bagView->bagSave, iVar3, m_bagView->itemType, 0);
    sub_0203A24C(iVar3);
    sub_0203A24C(iVar2);
}

void ovy142_219bca4(BagView *m_bagView)
{
    sub_02006254(0x54C);
    if (m_bagView->itemType != 5)
        sub_0204C488(m_bagView->unk744, 2);
    else
        sub_0204C488(m_bagView->unk740, 1);

}

void ovy142_219bcd8(BagView *m_bagView, int param_2)
{
    m_bagView->unk1F4C = param_2;
    switch (param_2)
    {
    case 0:
        ovy142_219b784(m_bagView);
        break;
    case 1:
        ovy142_219b9c0(m_bagView);
        break;
    case 2:
        ovy142_219b8c4(m_bagView);
        break;
    case 3:
        ovy142_219bac4(m_bagView, 1);
        break;
    case 4:
        ovy142_219bac4(m_bagView, 0);
        break;
    }
    m_bagView->unk838 = 0xffff;
}

void ovy142_219bd2c(BagView *m_bagView, int param_2)
{
    if (m_bagView->unk1F50 != param_2)
    {
        sub_0219BD68(m_bagView, param_2);
        m_bagView->posNow = 0;
        m_bagView->unk834 = -1;
        m_bagView->unk838 = 0xFFFF;
        m_bagView->unk892 = 1;
        ovy142_219ed3c(m_bagView);
    }
}

extern void ovy142_21a063c(ITEM_UNKNOW_DATA*, u16);

void sub_0219BD68(BagView *m_bagView, int param_2)
{
    m_bagView->unk1F50 = param_2;
    ovy142_21a063c(&m_bagView->unk8C8, param_2);
}

void ovy142_219bd84(BagView *m_bagView)
{
    if (m_bagView->itemType == 5)
    {
        sub_0219BD68(m_bagView, 0);
    }
    ovy142_219ff60(m_bagView);
}

void ovy142_219bda4(BagView *m_bagView, int param_2)
{
    int iVar1;

    if (m_bagView->unk83C == 1)
    {
        param_2 = 1;
    }
    if (param_2)
        sub_0203D564(0);
    else
        sub_0203D564(1);
    iVar1 = ovy142_2199988(m_bagView);
    if (iVar1 == 0)
    {
        param_2 = 0;
    }
    if (param_2 == 0)
    {
        ovy142_219fd4c(m_bagView, 0);
    }
    else
    {
        ovy142_219fd4c(m_bagView, 1);
        sub_020352B0(m_bagView->unk8A4);
    }
    ovy142_219dda0(m_bagView, param_2);
}

int sub_0219BE00(BagView *m_bagView)
{
    int iVar1;

    iVar1 = m_bagView->unk10;
    if (!((iVar1 != 0) && (iVar1 != 1)) || (iVar1 == 3))
    {
        return 1;
    }
    return 0;
}

int ovy142_219be18(BagView *m_bagView, int param_2)
{
    int iVar1;
    int iVar3;

    param_2 += m_bagView->unk834 + 1;
    iVar1 = ovy142_2199988(m_bagView);
    if (iVar1 <= param_2)
    {
        return 0;
    }
    ItemTable *puVar2 = (ItemTable*)ovy142_2199928(m_bagView, param_2);
    iVar1 = sub_02034AA4(puVar2->itemid);

    if (iVar1 == 0xff)
    {
        return 0;
    }
    iVar3 = ovy142_219c0e8(m_bagView, puVar2->itemid);

    if (iVar3 == 1)
        sub_02017644(m_bagView->m_GameData, iVar1, 0);
    else
        sub_02017644(m_bagView->m_GameData, iVar1, 1);
    sub_02006254(0x646);
    m_bagView->unk838 = 0xffff;
    return 1;
}

int sub_0219BE88(int a1)
{
    return sub_0219FD18(a1);
}

void ovy142_219be90(BagView *m_bagView)
{
    int uVar1;
    int uVar2;

    uVar1 = sub_0219BE88(m_bagView->itemType);
    uVar2 = sub_0201765C(m_bagView->m_GameData, uVar1);
    sub_02017644(m_bagView->m_GameData, uVar1, uVar2 ^ 1);
    sub_02006254(0x646);
    ovy142_219becc(m_bagView);
}

void ovy142_219becc(BagView *m_bagView)
{
    int sVar1;
    int uVar2;

    if (m_bagView->unk83C != 1)
    {
        uVar2 = sub_0219BE88(m_bagView->itemType);
        sVar1 = sub_0201765C(m_bagView->m_GameData, uVar2);
        sub_0204C488(m_bagView->unk724[2], (u16)(sVar1 + 6));
    }
}

void ovy142_219bf04(BagView *m_bagView, void *param_2, ItemTable *param_3, u8 *param_4);

void ovy142_219bf04(BagView *m_bagView, void *param_2, ItemTable *param_3, u8 *param_4)
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
        else if ((param_3->itemid == 450) && (m_bagView->unk1C == 1))
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


void ovy142_219bf58(BagView *m_bagView, u8 *param_2)
{
    u32 unkv2;
    ItemTable *psVar3;


    unkv2 = sub_02199978(m_bagView);
    psVar3 = (ItemTable *)ovy142_2199928(m_bagView, unkv2);
    if ((psVar3 != NULL))
    {
        if ((psVar3->itemid != 0))
        {
            void *uVar2 = sub_02026740(psVar3->itemid, 0, m_bagView->heapId);
            u8 cVar1 = sub_02026820(uVar2, 5);
            ovy142_219bf04(m_bagView, uVar2, psVar3, param_2);

            if (!ovy142_219d43c(m_bagView, cVar1) && (param_2[0] != 2))
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

                if (ovy142_219c0e8(m_bagView, psVar3->itemid) == 1)
                {
                    param_2[2] = 5;
                }
                else
                {
                    param_2[2] = 4;
                }
            }
            if (m_bagView->itemType != 5)
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


void ovy142_219c014(BagView *m_bagView)
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
    ovy142_219bf58(m_bagView, v16);
    v10 = 0;
    v11 = 0;
    do
    {
        v12 = v16[v10];
        if (v12 != 0xff)
        {
            v13 = v11;
            m_bagView->unk848[v11++]= v16[v10];
            v17[v13] = v6[v16[v10]];
        }
        ++v10;
    } while (v10 < 5);
    if (ovy142_219c0b4(m_bagView))
    {
        v14 = 0;
        do
        {
            if (m_bagView->unk848[v14] == 0)
            {
                v17[v14] = 160;
                break;
            }
            v14++;
        }
        while (v14 < 5);
    }
    ovy142_219f0bc(m_bagView, v17, v11);
}

int ovy142_219c0b4(BagView *m_bagView)
{
    int uVar1;

    uVar1 = sub_02199978(m_bagView);
    ItemTable *puVar2 = (ItemTable *)ovy142_2199928(m_bagView, uVar1);
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
        return m_bagView->unk20;
    }
    return 0;
}

int ovy142_219c0e8(BagView *m_bagView, int param_2)
{
    int uVar1;

    uVar1 = sub_02034AA4(param_2); // 判断快捷道具
    return sub_0201765C(m_bagView->m_GameData, uVar1);
}

const int unk_21A095C[6] = {0};
void ovy142_219c100(u32 a1, int a2, BagView *m_bagView);

void ovy142_219c100(u32 a1, int a2, BagView *m_bagView)
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
    v19 = ovy142_2199988(m_bagView);
    if (a2)
        return;
    if (a1 < 6)
    {
        v20 = unk_21A095C;
        if (m_bagView->itemType != v20[a1])
        {
            v7 = v20[a1];
            ovy142_219bda4(m_bagView, 0);
        }
    }
    else if (a1 == 6)
    {
        ovy142_219bda4(m_bagView, 0);
        v8 = m_bagView->itemType;
        m_bagView->itemType = v8 - 1;
        if (v8 - 1 < 0)
            m_bagView->itemType = 5;
        ovy142_219cac0(m_bagView, v8, 0, ovy142_219D464);
        return;
    }
    else if (a1 == 7)
    {
        ovy142_219bda4(m_bagView, 0);
        v9 = m_bagView->itemType;
        m_bagView->itemType = v9 + 1;
        if (v9 + 1 >= 6)
            m_bagView->itemType = 0;
        ovy142_219cac0(m_bagView, v9, 1, ovy142_219D464);
        return;
    }
    else if (a1 == 8)
    {
        if (m_bagView->itemType != 5)
        {
            if (ovy142_2199988(m_bagView) > 1)
            {
                ovy142_219bca4(m_bagView);
                ovy142_219bda4(m_bagView, 0);
                ovy142_219ff40(m_bagView, 0);
                m_bagView->unk838 = 0xFFFF;
                ovy142_21998f4(m_bagView);
                sub_021998C0(m_bagView, ovy142_219cc84);
                return;
            }
        }
        else if (ovy142_219d22c(m_bagView) > 2)
        {
            ovy142_219bca4(m_bagView);
            ovy142_219bda4(m_bagView, 0);
            ovy142_219ff40(m_bagView, 0);
            m_bagView->unk838 = 0xFFFF;
            ovy142_21998f4(m_bagView);
            sub_021998C0(m_bagView, ovy142_219d0c8);
            return;
        }
    }
    else if (a1 == 9)
    {
        if (sub_0219BE00(m_bagView) == 1)
        {
            ovy142_219be90(m_bagView);
            ovy142_219bda4(m_bagView, 0);
            m_bagView->unk838 = 0xFFFF;
            ovy142_21998f4(m_bagView);
        }
    }
    else if (a1 == 0xa)
    {
        if (m_bagView->unk10 != 2)
        {
            m_bagView->unk898 = 0;
            m_bagView->selectItem = 0;
            v10 = m_bagView;
            v11 = 3;
            ovy142_219c9f8(v10, v11, 0);
            sub_0203D564(1);
        }
    }
    else if (a1 == 0xb)
    {
        m_bagView->unk898 = 1;
        m_bagView->selectItem = 0;
        v10 = m_bagView;
        v11 = 4;
        ovy142_219c9f8(v10, v11, 0);
        sub_0203D564(1);
    }
    else if (a1 >= 12 && a1 < 0x12)
    {
        {
            if (m_bagView->unk4FC == ovy142_219a850)
            {
                v12 = m_bagView->posNow;
                v18 = sub_02199978(m_bagView);
                if (ovy142_2199988(m_bagView))
                {

                    if (m_bagView->posNow != a1 - 12)
                    {
                        m_bagView->posNow = a1 - 12;
                        if (v19 <= sub_02199978(m_bagView))
                        {
                            m_bagView->posNow = v12;
                            return;
                        }
                    }

                    {
                        v14 = sub_02199978(m_bagView);
                        ovy142_2199a20(m_bagView, v18, v14);
                        ovy142_219bda4(m_bagView, 0);
                        m_bagView->unk838 = 0xFFFF;
                        ovy142_21998f4(m_bagView);
                        ovy142_219de0c(m_bagView);
                        sub_021998C0(m_bagView, ovy142_219c958);
                    }
                }
            }
            return;
        }
    }
    else if (a1 >= 0x12)
    {
        if (sub_0219BE00(m_bagView) == 1 && ovy142_219be18(m_bagView, a1 - 18) == 1)
        {
            ovy142_219bda4(m_bagView, 0);
            ovy142_21998f4(m_bagView);
        }
    }
    if (v7 != -1)
    {
        v16 = m_bagView->itemType;
        m_bagView->itemType = v7;
        sub_02006254(2008);
        ovy142_2199a5c(m_bagView, v16, m_bagView->itemType);
        ovy142_219bd84(m_bagView);
        ovy142_219bda4(m_bagView, 0);
        m_bagView->unk838 = 0xFFFF;
        ovy142_21998f4(m_bagView);
    }
}


void ovy142_219c38c(int a1, BagView *m_bagView)
{
    int v3; // r0
    int v4; // r0

    v3 = m_bagView->unk894;
    if (v3 == 1)
    {
        ovy142_219dd84(m_bagView, 1);
        m_bagView->unk894 = 0;
    }
    else if (v3 == 2)
    {
        ovy142_219dd84(m_bagView, 0);
        m_bagView->unk894 = 0;
    }
    v4 = sub_020275F8(m_bagView->unk8A8);
    sub_0204B7C8(v4);
}


void ovy142_219c3cc(BagView *m_bagView)
{
    if (sub_02021C0C(m_bagView->unk510))
    {
        sub_020279B4(0, 1, 1, 0, 6, 1, m_bagView->heapId);
        sub_02006254(1950);
        sub_021998C0(m_bagView, ovy142_219c414);
    }
}

void ovy142_219c414(BagView *m_bagView)
{
    int v2;     // r5
    int result; // r0

    v2 = sub_02027ACC();
    result = ovy142_21a00a0(m_bagView);
    if (v2 == 1 && !result)
    {
        sub_0204C520(m_bagView->unk6B8, 1);
        ovy142_219c8d0(m_bagView);
    }
}

typedef struct
{
    /*0x00*/void *gamedata;
    /*0x04*/void *trainerData;
    /*0x08*/void *playerData;
    /*0x0C*/void *m_itemData;
    /*0x10*/void *m_itemData_someData;
    /*0x14*/void *bagData;
    /*0x18*/int some[0x20];
    /*0x38*/int mode;
    /*0x3C*/int playerstate;
    /*0x40*/int playerLastScreen;
}BAG_DATA;

