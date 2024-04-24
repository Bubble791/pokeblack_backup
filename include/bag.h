#ifndef BAG_H
#define BAG_H

#define NORMAL_ITEM_MAX 0x136

enum
{
    BAG_MODE_NORMAL,
    BAG_MODE_UNION_ROOM,
    BAG_MODE_2,
    BAG_MODE_LINK_BATTLE_ROOM,
    BAG_MODE_SELL_ITEM,
    BAG_MODE_SELECT_ITEM
};

enum
{
    BAG_SORT_TYPE,
    BAG_SORT_NAME,
    BAG_SORT_AMOUNT_MORE,
    BAG_SORT_AMOUNT_LESS,
    BAG_SORT_INDEX
};

enum
{
    BAG_POCKET_NORMAL,
    BAG_POCKET_HEAL,
    BAG_POCKET_TMHM,
    BAG_POCKET_BERRY,
    BAG_POCKET_IMPORT,
    BAG_POCKET_FREE_SPACE,
    BAG_POCKET_MAX
};

enum
{
    BAG_OPTION_USE,
    BAG_OPTION_FREE,
    BAG_OPTION_LOOK_MAIL,
    BAG_OPTION_TOSS,
    BAG_OPTION_REGIT,
    BAG_OPTION_UNREGIT,
    BAG_OPTION_TAKE_MAIL,
    BAG_OPTION_7,
    BAG_OPTION_TO_FREE_SPACE,
    BAG_OPTION_FREESPACE_BACK,
    BAG_OPTION_10,
    BAG_OPTION_11,
};

#define SORT_MORE_TO_LESS   0
#define SORT_LESS_TO_MORE   1


typedef struct
{
    int winData;
    u8 flag;
} BagBmpWinData;

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

typedef union
{
    u32 raw;
    struct
    {
        u16 itemid;
        u16 num;
    }ItemData;
} BagTable;

typedef struct
{
    BagTable unk0;
    u32 unk4;
}SomeData;

typedef struct
{
    ItemTable unk0;
    u32 unk4;
    u16 unk8;
    u16 unkA;
    SomeData unkC[639];
    u8 unk1CCC[0x280];
}ITEM_UNKNOW_DATA;

struct BagViewWork
{
    /*0x000*/ void *m_GameData;
    /*0x004*/ void *unk4;
    /*0x008*/ void *unk8;
    /*0x00C*/ int unkC;
    /*0x010*/ int bagMode;
    /*0x014*/ void *unk14;
    /*0x018*/ void* bagSave;
    /*0x01C*/ int unk1C;
    /*0x020*/int unk20;
    /*0x024*/ ItemTable m_itemTable[NORMAL_ITEM_MAX];
    /*0x4FC*/ FieldBagItemUse bagMenuFunc;
    /*0x500*/ BagBmpWinData unk500;
    /*0x508*/ BagBmpWinData pocketNameBmpWin;
    /*0x510*/ int printSystem;
    /*0x514*/ int unk514;
    /*0x518*/ int unk518;
    /*0x51C*/ int unk51C;
    /*0x520*/ int msgData;
    /*0x524*/ int wordSetSystem;
    /*0x528*/ int stringBuff1;
    /*0x52C*/ int stringBuff2;
    /*0x530*/ int stringBuff3;
    /*0x534*/ int font;
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
    /*0x55C*/ int cursorNCLR;
    /*0x560*/ int unk560;
    /*0x564*/ int unk564;
    /*0x568*/ int cursorNCGR;
    /*0x56C*/ int unk56C;
    /*0x570*/ int unk570;
    /*0x574*/ int cursorNCER;
    /*0x578*/ int unk578;
    /*0x57C*/ int unk57C;
    /*0x580*/ int unk580;
    /*0x584*/ int barLeftIconNCLR;
    /*0x588*/ int barLeftIconNCGR;
    /*0x58C*/ int barLeftIconNCER;
    /*0x590*/ int unk590;
    /*0x594*/ int unk594;
    /*0x598*/ int unk598;
    /*0x59C*/ int unk59C;
    /*0x5A0*/ int bagPocketNCLR;
    /*0x5A4*/ int bagPocketNCGR;
    /*0x5A8*/ int bagPocketNCER;
    /*0x5AC*/ int unk5AC[17];
    /*0x5F0*/ int unk5F0;
    /*0x5F4*/ int unk5F4;
    /*0x5F8*/ int unk5F8[3];
    /*0x604*/ int itemBarNCGR[8];
    /*0x624*/ int unk624[8];
    /*0x644*/ int unk644[8];
    /*0x664*/ int unk664[8];
    /*0x684*/ int unk684[8];
    /*0x6A4*/ int buttonManSystem;
    /*0x6A8*/ int taskCallBack;
    /*0x6AC*/ int spriteGroup;
    /*0x6B0*/ int unk6B0;
    /*0x6B4*/ int unk6B4;
    /*0x6B8*/ int scrollBarOam;
    /*0x6BC*/ int bagPocketOam[6];
    /*0x6D4*/ int unk6D4[3];
    /*0x6E0*/ int unk6E0[17];
    /*0x724*/ int unk724[7];
    /*0x740*/ int unk740;
    /*0x744*/ int unk744;
    /*0x748*/ int unk748;
    /*0x74C*/ BagBmpWinData unk74C;
    /*0x754*/ BagBmpWinData unk754;
    /*0x75C*/ BagBmpWinData unk75C;
    /*0x764*/ BagBmpWinData unk764;
    /*0x76C*/ BagBmpWinData unk76C;
    /*0x774*/ BagBmpWinData unk774;
    /*0x77C*/ BagBmpWinData moneyStringBmpWin;
    /*0x784*/ BagBmpWinData MoneyBmpWin;
    /*0x78C*/ BagBmpWinData unk78C;
    /*0x794*/ BagBmpWinData unk794;
    /*0x79C*/ int unk79C;
    /*0x7A0*/ ITEM_TASK unk7A0[8];
    /*0x800*/ int taskMenuData;
    /*0x804*/ int unk804;
    /*0x808*/ int unk808;
    /*0x80C*/ int unk80C;
    /*0x810*/ int unk810;
    /*0x814*/ int selectAmount;
    /*0x818*/ u32 unk818;
    /*0x81C*/ u32 unk81C;
    /*0x820*/ u32 unk820;
    /*0x824*/ u32 unk824;
    /*0x828*/ u32 unk828;
    /*0x82C*/ u32 itemPocket;
    /*0x830*/ int posNow;
    /*0x834*/ int unk834;
    /*0x838*/ u32 unk838;
    /*0x83C*/ int isSwitchMode;
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
    /*0x8C8*/ ITEM_UNKNOW_DATA unk8C8; // 某种结构体
    /*0x1F4C*/ int sortOptionType;
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

void BagMenu_WaitPrintKeyPad(BagView *m_bagView);

void sub_021998DC(BagView *m_bagView);
void ovy142_21998f4(BagView *m_bagView);
ItemTable* BagMenu_GetBagItemDataBySlot(BagView *m_bagView, u32 pocket);
int BagMenu_GetItemPrice(u32 itemId, int param_2, u16 heapId);


int BagMenu_GetPocketItemAmount(BagView *m_bagView);
extern int sub_0203D554(void);
extern void ovy142_219de0c(BagView*);
extern void ovy142_219e120(BagView*);
extern void ovy142_219e924(BagView*);
extern void ovy142_219becc(BagView*);

extern int ovy142_21a0698(ITEM_UNKNOW_DATA*, int);
extern void sub_020244E0(int, int, int, int, int);

typedef struct
{
    s16 x;
    s16 y;
} PosTable;

extern void GameData_SetLastSelectBagPocket(void*, u16);
extern void GameData_SetLastPocketItem(void*, u16, s16, s16);
extern void sub_0200887C(void*, u16, s16*, s16*);

extern void ovy142_219ed3c(BagView*);
extern void ovy142_219f8ec(BagView*, u32);
extern void ovy142_219f06c(BagView*, u32);
extern void ovy142_219f450(BagView*, u32);

void BagMenu_BagStart(BagView *m_bagView);
void BagMenu_BagWaitFadeIn(BagView *m_bagView);
extern void GFL_FadeScreenSet(int, int, int, int, int, int, u16);
extern int GFL_FadeScreenIsFinished(void);
extern int BagMenu_PokcetIconMoveFadeIn(BagView*);

typedef void (*UnknowFunc)(BagView *);

extern void sub_02035198(int);
extern int PrintSystem_IsTextPrintActiveEnd(int);
extern int sub_0203DA2C(void);
extern void BagSave_CopyPocket(void*, ItemTable*, int, int);
extern void sub_0204C488(int, u16);
extern int GCTX_HIDGetPressedKeys(void);
extern void ovy142_219c9f8(BagView*, int, FieldBagItemUse);

void BagMenu_HandleSwitchModeKeyPad(BagView *m_bagView);
extern void GFL_TCBRemove(int);
extern void sub_021A046C(ITEM_UNKNOW_DATA*);
extern void sub_0202E1DC(int);
extern void ovy142_219e168(BagView*);
extern void ovy142_219dd14(BagView*);
extern void GFL_TCBExMgrFree(int);
extern void GFL_MsgDataFree(int);
extern void GFL_StrBufFree(int);
extern void GFL_WordSetSystemFree(int);
extern void ovy142_219f8c4(BagView*);
extern void sub_02044668(int, u16, u16);
extern void sub_02048210(int);

void BagMenu_HandleKeyPad(BagView *m_bagView);
extern void sub_020504F0(int);
extern void sub_0203D564(int);
extern void ovy142_219be90(BagView*);
extern void ovy142_219cc84(BagView*);
extern void ovy142_219d0c8(BagView*);
extern void ovy142_219c958(BagView*);
extern void ovy142_219bca4(BagView*);
extern int ovy142_219d22c(BagView*);
extern void BagMenu_KeyPadSwitchMode(BagView*);
extern void ovy142_219cac0(BagView*, int, int, FieldBagItemUse);

extern void *GFL_HeapAllocate(int, int, int, char*, int line);
extern void BagSave_CopyPocketRaw(void*, ItemTable*, int, int);
extern int BagSave_GetPocketItemCountCore(void*, int, int);
extern void* Item_ArcHandleCreate(int);
extern void* Item_ArcHandleReadFile(void*, u16, int);
extern void GFL_HeapFree(void*);
extern int Item_GetParam(void*, int);
extern void GFL_ArcToolFree(void*);
void BagMenu_SortItemByClass(BagView *m_bagView);
extern MATH_QSort(void*, int, int, int, int);

void ovy142_219bda4(BagView *m_bagView, int param_2);
extern void ovy142_219fd4c(BagView*, int);
extern void ovy142_219dda0(BagView*, int);
extern void sub_020352B0(int);

extern void ovy142_219acb8(BagView*);
extern void BagMenu_TrySellItem(BagView*);
extern int Item_IsNotSpecialMonsball(u16);
extern int Item_IsMail(u16);
extern void sub_0219F760(BagView*);
extern void ovy142_219c014(BagView*);
extern void ovy142_219f76c(BagView*, int);

void ovy142_219a724(BagView *m_bagView);
int ovy142_219f7a4(BagView*);
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
extern void PlayerSave_AddMoney(int, int);
extern void BagMenu_PrintMoneyString(BagView*);
extern int PlayerSave_GetPlayerSaveOffset(void*);

void ovy142_219a4d0(BagView *m_bagView);
extern int sub_0202DBE4(int);
extern int sub_0202DC00(int);

extern void ovy142_219ff40(BagView*, int);
extern void sub_0202D384(u16);
extern void ovy142_219ac70(BagView*);
extern void BagMenu_MoveItemToFreeSpace(BagView*);
void BagMenu_ItemToss(BagView*);
extern int sub_0219BE00(BagView*);
extern int ovy142_219be18(BagView*, int);
extern void sub_0219F0AC(BagView*);
extern void sub_0202DA54(int);
void BagMenu_TrySortItem(BagView *m_bagView, int param_2);

void ovy142_219ad30(BagView *m_bagView);
extern void StringSetNumber(int, int, int, int, int, int);

void BagMenu_UseRepel(BagView *m_bagView);
extern void *sub_02017934(void*);
extern void* SaveControl_GetEncountSave(void*);
extern void GFL_MsgDataLoadStrbuf(int, int, int);
extern void GFL_WordSetFormatStrbuf(int, int, int);
extern void BagMenu_PrintBagMessage(BagView*, int);
extern int EncountSave_IsRepelDepleted(void*);
extern void EncountSave_SetRepelSteps(void*, u8);
extern void EncountSave_SetRepelUsedItem(void*, u16);
extern void BagView_DeletItem(BagView*, int);
extern void GFL_CopyVarForText(int, int, void*);
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
void BagMenu_LoadBagBackDefaultText(BagView *a1);

extern int BmpWin_GetBitmap(int);
extern int BmpWin_BitmapFill(int, int);
extern void BagMenu_DrawStringToBmpWin(BagView *a1, BagBmpWinData *a2, int a3, u16 a4, s16 a5, u16 a6);
extern int ovy142_21a03ac(u8);
extern void BmpWin_FlushChar(int);
extern int Item_GetTmHmNo(u16);
extern int Item_GetTmHmIndex(u16);
extern void LoadMoveNameToStrbuf(int, int, int);
extern void ovy142_219f4b0(BagView*, int);
extern void sub_020267C0(int ,u16, u16);
extern void ovy142_219e4dc(BagView*, int);
extern void ovy142_21a0134(BagBmpWinData*);

extern int sub_02034AA4(u16);
extern void sub_02017644(void*, int, int);
extern int ovy142_219c0e8(BagView*, int);
extern void sub_02021D28(u8, int, int, int, int, int);

extern int ovy142_219c0b4(BagView*);
extern void ovy142_219f0bc(BagView*, u32*, int);

extern u16 Item_GetTmHmMove(u16);
extern int sub_02021740(u16);
extern int sub_02021720(u16);
extern int sub_020216B0(u16, int);
extern int sub_02021280(u16, int);
extern int sub_0202174C(u16);
extern void sub_020470F8(int, int, int, int, int, int);

void ovy142_219fb78(BagView*);
void ovy142_219fc14(BagView*, int);
extern void sub_0204C124(int, int);

int sub_0219BE88(int a1);
extern int sub_0219FD18(int);
extern int GameData_IsShortcutRegistered(void*, int);
extern int sub_02005718(void);
extern ItemTable* ovy142_21a0470(ITEM_UNKNOW_DATA*, u16, u16);
extern int BagSave_IsItemInFreeSpace(void*, u16);
extern void BagSave_SubItem(void*, u16, u16, u16);
extern int BagSave_GetItemCountByID(void*, u16, u16);
extern void ovy142_21a050c(ITEM_UNKNOW_DATA*, u16, int);
extern void ovy142_219b3b0(BagView*);

extern void ovy142_219b6dc(BagView*);
extern void ovy142_21a0578(ITEM_UNKNOW_DATA*, int, short);

void ovy142_21a03f0(ITEM_UNKNOW_DATA *a1, int a2, int a3, u16 a4);

extern void ovy142_21a063c(ITEM_UNKNOW_DATA*, u16);

void BagMenu_LoadBagPocketNameToStrbuf(BagView *bagView, int bufId, int msgId);
void BagMenu_LoadItemNameToStrbuf(BagView *bagView, int bufId, int msgId);
void BagMenu_SetRunFunc(BagView *m_bagView, FieldBagItemUse fun);
void BagMenu_PrintSeachItemEnd(BagView* bagView);

void BagMenu_LoadBagBackGround(BagView *bagView, int a2);
extern int MyStatus_GetTrainerGender(void*);
extern int Oam_LoadNCLRFile(int, int, int, int, int, int, u16); 
void ovy142_219d7a8(BagView *a1);
extern void GFL_G2DIOLoadArcNCLRDefault(int, int, int, int, int, u16);
extern int GFL_BGSysLoadArcNCGRDynamic(int, int, int, int, int, u16);
extern void GFL_G2DIOLoadNSCRSync(int, int, int, int, int, int, int, u16);
void ovy142_219e284(BagView *a1);
extern int BmpWin_CreateDynamic(int bg, int x, int y, int width, int height, int palindex, int alloc);
extern void sub_0204826C(int);

void BagMenu_LoadBagItemBarResource(BagView *a1);
extern int sub_02046E28(int, int, int, u16);
void ovy142_219efc0(BagView *a1);
void ovy142_219e6f8(BagView *a1);

void ovy142_219c900(BagView *bagView);
extern int sub_02035024(int, int, int, u16);
extern void *GFL_ArcSysCreateFileHandle(int, u16);
extern void sub_02035104(int, void*, int, int, int);

extern int sub_02026DC0(u16);
extern void sub_02026E04(int, int, int, u16);
extern void sub_02026F7C(int, int, int, int);
void ovy142_219cc24(BagView *bagView);

extern int sub_020223B4(void);
extern int sub_0202E8D8(int, int, int);
extern void sub_020223CC(int);
extern void sub_020223BC(int);
extern int sub_0203DF20(void);
extern void sub_020223E0(int, int);
void ovy142_219f84c(BagView *a1);
void ovy142_219d664(void);

extern int BagSave_GetUniqueItemCount(ItemTable* bagView, int maxItem);
extern int BagSave_GetExistingItemPocket(void* bagSave, u16 item);

extern void sub_0203DEB4(int, int);
extern int Item_GetItemParam(u16, int, u16);
extern void LoadItemNameToStrbuf(int , int, int);
extern void LoadBagPocketNameToStrbuf(int , int, int);
extern int sub_0203DA84(u32*, u32*);
extern int sub_0203DA48(void);
extern int sub_020355B8(int, int, int, int, int);
extern void GFL_SndSEPlay(int);
extern int sub_0203DAC8(u32*, u32*);
#endif //BAG_H
