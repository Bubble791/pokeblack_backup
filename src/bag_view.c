#include "global.h"
#include "main.h"

extern void sub_0203DEB4(int, int);
extern int sub_020267F0(u16, int, u16);
extern void sub_020244B4(int , int, int);
extern void sub_020246F4(int , int, int);
extern int sub_0203DA84(u32*, u32*);
extern int sub_0203DA48(void);
extern int sub_020355B8(int, int, int, int, int);
extern void sub_02006254(int);
extern int sub_0203DAC8(u32*, u32*);

typedef struct
{
    u16 item;
    u16 num;
} BagItemPtr;

typedef struct
{
    /*0x000*/ void *m_GameData;
    /*0x004*/ void *unk4;
    /*0x008*/ void *unk8;
    /*0x00C*/ int unkC;
    /*0x010*/ int unk10;
    /*0x014*/ void *unk14;
    /*0x018*/ void* bagSave;
    /*0x01C*/ int unk1C;
    /*0x020*/int unk20;
    /*0x024*/ BagItemPtr m_itemTable[6];
    /*0x03C*/ u8 unk3C[0x4C0];
    /*0x4FC*/ void *unk4FC;
    /*0x500*/ int unk500;
    /*0x504*/ int unk504;
    /*0x508*/ int unk508;
    /*0x50C*/ int unk50C;
    /*0x510*/ int unk510;
    /*0x514*/ u8 unk514[0xC];
    /*0x520*/ int unk520;
    /*0x524*/ int messageParam;
    /*0x528*/ int unk528;
    /*0x52C*/ int unk52C;
    /*0x530*/ int unk530;
    /*0x534*/ int unk534;
    /*0x538*/ int unk538;
    /*0x53C*/ int unk53C;
    /*0x540*/ int unk540;
    /*0x544*/ int unk544;
    /*0x548*/ int unk548;
    /*0x54C*/ u16 heapId;
    /*0x54E*/ u16 unk54E;
    /*0x550*/ u8 unk550[0x154];
    /*0x6A4*/ int unk6A4;
    /*0x6A8*/ int unk6A8;
    /*0x6AC*/ int unk6AC;
    /*0x6B0*/ int unk6B0;
    /*0x6B4*/ int unk6B4;
    /*0x6B8*/ int unk6B8;
    /*0x6BC*/ u8 unk6BC[0xE0];
    /*0x79C*/ int unk79C;
    /*0x7A0*/ u8 unk7A0[0x8C];
    /*0x82C*/ int itemType;
    /*0x830*/ int posNow;
    /*0x834*/ int unk834;
    /*0x838*/ u32 unk838;
    /*0x83C*/ int unk83C;
    /*0x840*/ int unk840;
    /*0x844*/ int unk844;
    /*0x848*/ int unk848[4];
    /*0x858*/ u8 unk84C[0x3A];
    /*0x892*/ u16 unk892;
    /*0x894*/ int unk894;
    /*0x898*/ int unk898;
    /*0x89C*/ int unk89C;
    /*0x8A0*/ u32 selectItem;
    /*0x8A4*/ int unk8A4;
    /*0x8A8*/ int unk8A8;
    /*0x8AC*/ int unk8AC;
    /*0x8B0*/ int unk8B0;
    /*0x8B4*/ int unk8B4;
    /*0x8B8*/ int unk8B8;
    /*0x8BC*/ int unk8BC;
    /*0x8C0*/ int KeyRetypeIntervalRepeated;
    /*0x8C4*/ int KeyRetypeIntervalFirst;
    /*0x8C8*/ int unk8C8;
    /*0x1F4C*/ int unk1F4C;
    /*0x1F50*/ void *unk1F50;
} BagView; // size of 0x1F54

typedef void (*FieldBagItemUse)(BagView *);

void ovy142_219a1ec(BagView *m_bagView);


void sub_021998C0(BagView *m_bagView, FieldBagItemUse a2);
void sub_021998DC(BagView *m_bagView);
void ovy142_21998f4(BagView *m_bagView);
BagItemPtr* ovy142_2199928(BagView *m_bagView, u32 pocket);
int ovy142_219995c(u32 itemId, int param_2, u16 heapId);
void sub_021999B8(BagView *m_bagView, int bufId, int msgId);
void sub_021999C8(BagView *m_bagView, int bufId, int msgId);
int ovy142_2199988(BagView *m_bagView);

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

extern int sub_0203D554(void);
extern void ovy142_219de0c(BagView*);
extern void ovy142_219e120(BagView*);
extern void ovy142_219e924(BagView*);
extern void ovy142_219becc(BagView*);

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


extern BagItemPtr* ovy142_21a0470(int*, u16, u16);

BagItemPtr* ovy142_2199928(BagView *m_bagView, u32 pocket)
{
    if (m_bagView->unk83C != 0)
    {
        return &m_bagView->m_itemTable[pocket];
    }
    return ovy142_21a0470(&m_bagView->unk8C8, m_bagView->itemType, pocket);
}

int ovy142_219995c(u32 itemId, int param_2, u16 heapId)
{
    int price = sub_020267F0((u16)itemId, 0, heapId); // GetItemParam
    return (price / 2) * param_2;
}

int sub_02199978(BagView *m_bagView);

int sub_02199978(BagView *m_bagView)
{
    return m_bagView->posNow + m_bagView->unk834 + 1;
}

#define NORMAL_ITEM_MAX 0x136

extern int sub_02008488(BagItemPtr*, int);
extern int ovy142_21a0698(int*, int, BagView *);

int ovy142_2199988(BagView *m_bagView)
{
    if (m_bagView->unk83C != 0)
    {
        return sub_02008488(&m_bagView->m_itemTable[0], NORMAL_ITEM_MAX);
    }
    return ovy142_21a0698(&m_bagView->unk8C8, m_bagView->itemType, m_bagView);
}

void sub_021999B8(BagView *m_bagView, int bufId, int msgId)
{
    sub_020244B4(m_bagView->messageParam, bufId, msgId);
}

void sub_021999C8(BagView *m_bagView, int bufId, int msgId)
{
    sub_020246F4(m_bagView->messageParam, bufId, msgId);
}

extern void sub_020244E0(int, int, int, int, int);
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

typedef struct
{
    s16 itemId;
    s16 num;
} UNKNOW_DATA;

extern void sub_020088A4(void*, u16);
extern void sub_02008894(void*, u16, s16, s16);
extern void sub_0200887C(void*, u16, s16*, s16*);

extern void ovy142_219ed3c(BagView*);
extern void ovy142_219f8ec(BagView*, u32);
extern void ovy142_219f06c(BagView*, u32);
extern void ovy142_219f450(BagView*, u32);

void ovy142_2199a5c(BagView *m_bagView, int param_2, u32 param_3);

void ovy142_2199a5c(BagView *m_bagView, int param_2, u32 param_3)
{
    UNKNOW_DATA local_18;

    sub_020088A4(m_bagView->unk14, param_2);
    sub_02008894(m_bagView->unk14, param_2, m_bagView->posNow, (m_bagView->unk834 + 1));
    sub_0200887C(m_bagView->unk14, param_3, &local_18.num, &local_18.itemId);
    m_bagView->posNow = local_18.num;
    m_bagView->unk834 = local_18.itemId - 1;
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

int ovy142_2199bcc(BagView *m_bagView);
void ovy142_219bda4(BagView*, int);
void ovy142_219ecec(BagView*);

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

typedef void (*UnknowFunc)(BagView *);

extern void sub_02035198(int);
extern int sub_02021C0C(int);
extern int sub_0203DA2C(void);
extern void sub_02007FE8(void*, BagItemPtr*, int, int);
extern void sub_0204C488(int, int);
extern int sub_0203DEFC(void);
extern void ovy142_219c9f8(BagView*, int, UnknowFunc);

void ovy142_2199ecc(BagView *m_bagView);

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

void ovy142_219a104(BagView *m_bagView);
extern void *sub_02017934(void*);
extern void* sub_0200DCF0(void*);
extern void sub_02048838(int, int, int);
extern void sub_02024920(int, int, int);
extern void ovy142_219f6a4(BagView*, int);
extern int sub_0200DDE0(void*);
extern void sub_0200DDB0(void*, u8);
extern void sub_0200DDF0(void*, u16);
extern void ovy142_219b340(BagView*, int);
extern void sub_020245A8(int, int, void*);

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
            
            uVar1 = sub_020267F0(items, 2, heap);
            sub_0200DDB0(uVar3, uVar1);
            sub_0200DDF0(uVar3, (u16)m_bagView->selectItem);
            ovy142_219b340(m_bagView, 1);
            sub_02048838(m_bagView->unk520, 0x3f, m_bagView->unk528);
            sub_020245A8(m_bagView->messageParam, 0, m_bagView->unk8);
            sub_021999B8(m_bagView, 1, m_bagView->selectItem);
            sub_02024920(m_bagView->messageParam,
                                    m_bagView->unk52C,
                                    m_bagView->unk528);
            ovy142_219f6a4(m_bagView, 1);
            sub_02006254(0x7cc);
        }
        else
        {
            sub_02048838(m_bagView->unk520, 0x40, m_bagView->unk528);
            sub_02024920(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
            ovy142_219f6a4(m_bagView, 1);
        }
        
        sub_021998C0(m_bagView, ovy142_219a1ec);
    }
}

extern int ovy142_219f7a4(BagView*);
extern void sub_02045738(int);
extern void sub_0204C520(int, int);
extern void ovy142_219fda8(BagView*, int);

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
        sub_02048838(m_bagView->unk520, 0x38, m_bagView->unk528);
        sub_020245A8(m_bagView->messageParam, 0, m_bagView->unk8);
        sub_02024920(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
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
    sub_02048838(m_bagView->unk520, param_2, m_bagView->unk528);
    sub_020245A8(m_bagView->messageParam, 0, m_bagView->unk8);
    sub_020244B4(m_bagView->messageParam, 1, m_bagView->selectItem);
    sub_02024920(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
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

void ovy142_219a4d0(BagView *m_bagView);
extern int sub_0202DBE4(int);
extern int sub_0202DC00(int);
extern int sub_020083C8(void*, u16);
extern void ovy142_219ff40(void*, int);
extern void sub_0202D384(u16);
extern void ovy142_219ac70(BagView*);
extern void ovy142_219b5d4(BagView*);
extern void ovy142_219ae30(BagView*);
extern int sub_0219BE00(BagView*);
extern int ovy142_219be18(BagView*, int);
extern void sub_0219F0AC(BagView*);
extern void sub_0202DA54(int);

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
                int type = sub_020083C8(m_bagView->bagSave, (u16)m_bagView->selectItem);
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

                    int fieldPocket = sub_020267F0((u16)m_bagView->selectItem, 3, m_bagView->heapId);
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
                    int isEvoStone = sub_020267F0(m_bagView->selectItem, 0x1d, m_bagView->heapId);

                    if (isEvoStone == 1)
                    {
                        m_bagView->unk898 = 12;
                        sub_021998C0(m_bagView, 0);
                    }
                    else
                    {
                        int iVar5;
                        int index = ovy142_219a4a0((u16)m_bagView->selectItem);
                        if (index >= 0)
                        {
                            index = ovy142_219a4a0((u16)m_bagView->selectItem);
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
                sub_02048838(m_bagView->unk520, 0x39, m_bagView->unk528);
                sub_020245A8(m_bagView->messageParam, 0, m_bagView->unk8);
                sub_02024920(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
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

extern void ovy142_219acb8(BagView*);
extern void ovy142_219af84(BagView*);
extern int sub_02026C14(u16);
extern int sub_02026BA0(u16);
extern void sub_0219F760(BagView*);
extern void ovy142_219c014(BagView*);
extern void ovy142_219f76c(BagView*, int);

void ovy142_219a724(BagView *m_bagView);

void ovy142_219a724(BagView *m_bagView)
{
    int v2;      // r0
    u32 dword10; // r0

    v2 = sub_02199978(m_bagView);
    BagItemPtr *v3 = ovy142_2199928(m_bagView, v2);
    m_bagView->selectItem = 0;
    if (v3)
        m_bagView->selectItem = v3->item;
    dword10 = m_bagView->unk10;

    if (dword10 == 2)
    {
        if (!sub_020267F0((u16)m_bagView->selectItem, 3, m_bagView->heapId) 
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
            sub_02048838(m_bagView->unk520, 47, m_bagView->unk528);
            sub_021999B8(m_bagView, 0, m_bagView->selectItem);
            sub_02024920(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
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

void ovy142_219a850(BagView *m_bagView);
extern void sub_020504F0(int);
extern void sub_0203D564(int);
extern void ovy142_219be90(BagView*);
extern void ovy142_219cc84(BagView*);
extern void ovy142_219d0c8(BagView*);
extern void ovy142_219c958(BagView*);
extern void ovy142_219bca4(BagView*);
extern int ovy142_219d22c(BagView*);
extern void ovy142_219c8e8(BagView*);
extern void ovy142_219cac0(BagView*, int, int, int);

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
        if (m_bagView->unk4FC != (void*)0x0219a851)
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
                        ovy142_219cac0(m_bagView, v5, 1, 0x0219d465);
                    }
                    else if ((sub_0203DF44() & 0x20) != 0)
                    {
                        v6 = m_bagView->itemType;
                        m_bagView->itemType = v6 - 1;
                        if (v6 - 1 < 0)
                            m_bagView->itemType = 5;
                        sub_0203D564(0);
                        ovy142_219cac0(m_bagView, v6, 0, 0x0219d465);
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
extern int sub_02026AE4(u16);
extern void sub_020244A4(int, int, int);

void ovy142_219abd8(BagView *m_bagView)
{
    int iVar1;

    iVar1 = sub_020062A8();
    if ((iVar1 != 1) && ((sub_0203DEFC() & (1 | 2)) || (sub_0203DA48() != 0)))
    {
        sub_02048838(m_bagView->unk520, 0x3e, m_bagView->unk528);
        int uVar3 = sub_02026AE4((u16)m_bagView->selectItem);
        sub_020244A4(m_bagView->messageParam, 0, uVar3);
        sub_02024920(m_bagView->messageParam, m_bagView->unk52C, m_bagView->unk528);
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