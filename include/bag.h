#ifndef BAG_H
#define BAG_H

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
    int *unk0;
    u8 unk4;
    u8 unk5;
    u16 unk6;
}WinDow;

typedef struct
{
    u16 itemid;
    u16 num;
} ItemTable;

typedef struct BagViewWork BagView;

typedef void (*FieldBagItemUse)(BagView *);

typedef struct
{
    int unk0;
    u16 unk4;
    int unk8;
} ITEM_TASK;

struct BagViewWork
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
    /*0x024*/ ItemTable m_itemTable[6];
    /*0x03C*/ u8 unk3C[0x4C0];
    /*0x4FC*/ FieldBagItemUse unk4FC;
    /*0x500*/ int unk500;
    /*0x504*/ int unk504;
    /*0x508*/ int unk508;
    /*0x50C*/ int unk50C;
    /*0x510*/ int unk510;
    /*0x514*/ int unk514;
    /*0x518*/ int unk518;
    /*0x51C*/ int unk51C;
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
    /*0x550*/ int unk550;
    /*0x554*/ int unk554;
    /*0x558*/ int unk558;
    /*0x55C*/ int unk55C;
    /*0x560*/ int unk560;
    /*0x564*/ int unk564;
    /*0x568*/ int unk568;
    /*0x56C*/ int unk56C;
    /*0x570*/ int unk570;
    /*0x574*/ int unk574;
    /*0x578*/ int unk578;
    /*0x57C*/ int unk57C;
    /*0x580*/ int unk580;
    /*0x584*/ int unk584;
    /*0x588*/ int unk588;
    /*0x58C*/ int unk58C;
    /*0x590*/ int unk590;
    /*0x594*/ int unk594;
    /*0x598*/ int unk598;
    /*0x59C*/ int unk59C;
    /*0x5A0*/ int unk5A0;
    /*0x5A4*/ int unk5A4;
    /*0x5A8*/ int unk5A8;
    /*0x5AC*/ int unk5AC[17];
    /*0x5F0*/ int unk5F0;
    /*0x5F4*/ int unk5F4;
    /*0x5F8*/ int unk5F8[3];
    /*0x604*/ int unk604[8];
    /*0x624*/ int unk624[8];
    /*0x644*/ int unk644[8];
    /*0x664*/ int unk664[8];
    /*0x684*/ int unk684[8];
    /*0x6A4*/ int unk6A4;
    /*0x6A8*/ int unk6A8;
    /*0x6AC*/ int unk6AC;
    /*0x6B0*/ int unk6B0;
    /*0x6B4*/ int unk6B4;
    /*0x6B8*/ int unk6B8;
    /*0x6BC*/ int unk6BC[6];
    /*0x6D4*/ int unk6D4[3];
    /*0x6E0*/ int unk6E0[17];
    /*0x724*/ int unk724[7];
    /*0x740*/ int unk740;
    /*0x744*/ int unk744;
    /*0x748*/ int unk748;
    /*0x74C*/ int unk74C;
    /*0x750*/ int unk750;
    /*0x754*/ int unk754;
    /*0x758*/ int unk758;
    /*0x75C*/ int unk75C;
    /*0x760*/ int unk760;
    /*0x764*/ int unk764;
    /*0x768*/ int unk768;
    /*0x76C*/ int unk76C;
    /*0x770*/ int unk770;
    /*0x774*/ int unk774;
    /*0x778*/ int unk778;
    /*0x77C*/ int unk77C;
    /*0x780*/ int unk780;
    /*0x784*/ int unk784;
    /*0x788*/ int unk788;
    /*0x78C*/ int unk78C;
    /*0x790*/ int unk790;
    /*0x794*/ int unk794;
    /*0x798*/ int unk798;
    /*0x79C*/ int unk79C;
    /*0x7A0*/ ITEM_TASK unk7A0[8];
    /*0x800*/ int unk800;
    /*0x804*/ int unk804;
    /*0x808*/ int unk808;
    /*0x80C*/ int unk80C;
    /*0x810*/ int unk810;
    /*0x814*/ int unk814;
    /*0x818*/ u32 unk818;
    /*0x81C*/ u32 unk81C;
    /*0x820*/ u32 unk820;
    /*0x824*/ u32 unk824;
    /*0x828*/ u32 unk828;
    /*0x82C*/ u32 itemType;
    /*0x830*/ int posNow;
    /*0x834*/ int unk834;
    /*0x838*/ u32 unk838;
    /*0x83C*/ int unk83C;
    /*0x840*/ int unk840;
    /*0x844*/ int unk844;
    /*0x848*/ int unk848[5];
    /*0x85C*/ int unk85C[5];
    /*0x870*/ int unk870[7];
    /*0x88C*/ u32 unk88C;
    /*0x890*/ u16 unk890;
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
    /*0x8B8*/ u16 unk8B8;
    /*0x8BA*/ u16 unk8BA;
    /*0x8BC*/ FieldBagItemUse unk8BC;
    /*0x8C0*/ int KeyRetypeIntervalRepeated;
    /*0x8C4*/ int KeyRetypeIntervalFirst;
    /*0x8C8*/ int unk8C8; // 某种结构体
    /*0x8CC*/ u8 unk8CC[0x1680];
    /*0x1F4C*/ int unk1F4C;
    /*0x1F50*/ int unk1F50;
}; // size of 0x1F54


typedef union
{
    struct
    {
        int pro1;
        int pro2;
    } param;
    u64 raw;
} ItemSort;

typedef struct
{
    ItemTable item;
    ItemSort ItemClass;
} ItemSortTable; // size of 12

void ovy142_219a1ec(BagView *m_bagView);

void sub_021998C0(BagView *m_bagView, FieldBagItemUse a2);
void sub_021998DC(BagView *m_bagView);
void ovy142_21998f4(BagView *m_bagView);
ItemTable* ovy142_2199928(BagView *m_bagView, u32 pocket);
int ovy142_219995c(u32 itemId, int param_2, u16 heapId);
void sub_021999B8(BagView *m_bagView, int bufId, int msgId);
void sub_021999C8(BagView *m_bagView, int bufId, int msgId);
int ovy142_2199988(BagView *m_bagView);
extern int sub_0203D554(void);
extern void ovy142_219de0c(BagView*);
extern void ovy142_219e120(BagView*);
extern void ovy142_219e924(BagView*);
extern void ovy142_219becc(BagView*);

#define NORMAL_ITEM_MAX 0x136

extern int sub_02008488(ItemTable*, int);
extern int ovy142_21a0698(int*, int, BagView *);
extern void sub_020244E0(int, int, int, int, int);

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

void ovy142_219c3cc(BagView *m_bagView);
void ovy142_219c414(BagView *m_bagView);
extern void sub_020279B4(int, int, int, int, int, int, u16);
extern int sub_02027ACC(void);
extern int ovy142_21a00a0(BagView*);

typedef void (*UnknowFunc)(BagView *);

extern void sub_02035198(int);
extern int sub_02021C0C(int);
extern int sub_0203DA2C(void);
extern void sub_02007FE8(void*, ItemTable*, int, int);
extern void sub_0204C488(int, u16);
extern int sub_0203DEFC(void);
extern void ovy142_219c9f8(BagView*, int, FieldBagItemUse);

void ovy142_2199ecc(BagView *m_bagView);
extern void sub_0203A6A8(int);
extern void sub_021A046C(int*);
extern void sub_0202E1DC(int);
extern void ovy142_219e168(BagView*);
extern void ovy142_219dd14(BagView*);
extern void sub_0203A83C(int);
extern void sub_020487D4(int);
extern void sub_02048564(int);
extern void sub_02024274(int);
extern void ovy142_219f8c4(BagView*);
extern void sub_02044668(int, u16, u16);
extern void sub_02048210(int);

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
extern void ovy142_219cac0(BagView*, int, int, FieldBagItemUse);

extern void *sub_0203A1FC(int, int, int, char*, int line);
extern void sub_02008074(void*, ItemTable*, int, int);
extern int sub_020084AC(void*, int, int);
extern void* sub_02026720(int);
extern void* sub_0202672C(void*, u16, int);
extern void sub_0203A24C(void*);
extern int sub_02026820(void*, int);
extern void sub_0204AB0C(void*);
void ovy142_219b784(BagView *m_bagView);
extern MATH_QSort(void*, int, int, int, int);

void ovy142_219bda4(BagView *m_bagView, int param_2);
extern void ovy142_219fd4c(BagView*, int);
extern void ovy142_219dda0(BagView*, int);
extern void sub_020352B0(int);

extern void ovy142_219acb8(BagView*);
extern void ovy142_219af84(BagView*);
extern int sub_02026C14(u16);
extern int sub_02026BA0(u16);
extern void sub_0219F760(BagView*);
extern void ovy142_219c014(BagView*);
extern void ovy142_219f76c(BagView*, int);

void ovy142_219a724(BagView *m_bagView);
extern int ovy142_219f7a4(BagView*);
extern void sub_02045738(int);
extern void sub_0204C520(int, int);
extern void ovy142_219fda8(BagView*, int);

void ovy142_2199a5c(BagView *m_bagView, int param_2, u32 param_3);
extern void ovy142_219ff60(BagView*);
void ovy142_219bd84(BagView *m_bagView);

extern int ovy142_219b490(BagView*);
extern int ovy142_219cb88(void);
extern void ovy142_219cba8(BagView*);
extern void ovy142_219b46c(BagView*);

void ovy142_219b2f0(BagView*);
extern void sub_0200C9C0(int, int);
extern void ovy142_219f978(BagView*);
extern int sub_02017974(void*);

void ovy142_219a4d0(BagView *m_bagView);
extern int sub_0202DBE4(int);
extern int sub_0202DC00(int);
extern int sub_020083C8(void*, u16);
extern void ovy142_219ff40(BagView*, int);
extern void sub_0202D384(u16);
extern void ovy142_219ac70(BagView*);
extern void ovy142_219b5d4(BagView*);
void ovy142_219ae30(BagView*);
extern int sub_0219BE00(BagView*);
extern int ovy142_219be18(BagView*, int);
extern void sub_0219F0AC(BagView*);
extern void sub_0202DA54(int);
void ovy142_219bcd8(BagView *m_bagView, int param_2);

void ovy142_219ad30(BagView *m_bagView);
extern void sub_0202451C(int, int, int, int, int, int);

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
void ovy142_219bd2c(BagView *m_bagView, int param_2);
void sub_0219BD68(BagView *m_bagView, int param_2);
void ovy142_219D464(BagView* a1);

int ovy142_2199bcc(BagView *m_bagView);
void ovy142_219bda4(BagView*, int);
void ovy142_219ecec(BagView*);
void ovy142_219bf58(BagView *m_bagView, u8 *param_2);
extern void *sub_02026740(u16, int, int);
extern int ovy142_219d43c(BagView*, u8);

void ovy142_219c38c(int a1, BagView *m_bagView);
extern void ovy142_219dd84(BagView*, int);
extern int sub_020275F8(int);
extern void sub_0204B7C8(int);
int sub_02199978(BagView *m_bagView);
void ovy142_219e21c(BagView *a1);

extern int sub_020484F4(int);
extern int sub_0204713C(int, int);
extern void ovy142_21a00f0(BagView *a1, WinDow *a2, int a3, u16 a4, u16 a5, u16 a6);
extern int ovy142_21a03ac(u8);
extern void sub_02048244(int);
extern int sub_02026B84(u16);
extern int sub_02026B40(u16);
extern void sub_020244A4(int, int, int);
extern void ovy142_219f4b0(BagView*, int);
extern void sub_020267C0(int ,u16, u16);
extern void ovy142_219e4dc(BagView*, int);
extern void ovy142_21a0134(int*);

extern int sub_02034AA4(u16);
extern void sub_02017644(void*, int, int);
extern int ovy142_219c0e8(BagView*, int);
extern void sub_02021D28(u8, int, int, int, int, int);

extern int ovy142_219c0b4(BagView*);
extern void ovy142_219f0bc(BagView*, u32*, int);

extern u16 sub_02026AE4(u16);
extern int sub_02021740(u16);
extern int sub_02021720(u16);
extern int sub_020216B0(u16, int);
extern int sub_02021280(u16, int);
extern int sub_0202174C(u16);
extern void sub_020470F8(int, int, int, int, int, int);

extern void ovy142_219fb78(BagView*);
extern void ovy142_219fc14(BagView*, int);
extern void sub_0204C124(int, int);

int sub_0219BE88(int a1);
extern int sub_0219FD18(int);
extern int sub_0201765C(void*, int);
extern int sub_02005718(void);

#endif //BAG_H
