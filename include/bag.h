#ifndef BAG_H
#define BAG_H

#define NORMAL_ITEM_MAX 0x136

#define MAX_ITEM    638

// 设置文本
enum
{
    BAG_OPTION_TEXT_USE = 0,
    BAG_OPTION_TEXT_TOSS = 1,
    BAG_OPTION_TEXT_REGISTER = 2,
    BAG_OPTION_TEXT_TAKE = 3,
    BAG_OPTION_TEXT_OK = 5,
    BAG_OPTION_TEXT_OFF_BIKE = 6,
    BAG_OPTION_TEXT_GIVE_UP = 8,
    BAG_OPTION_TEXT_LOOK = 16,
    BAG_OPTION_TEXT_FREE = 18,
    BAG_OPTION_TEXT_SELL = 87,
    BAG_OPTION_TEXT_TO_FREE_SPACE = 145,
    BAG_OPTION_TEXT_BACK_ORIGIN_POCKET = 146,
    BAG_OPTION_TEXT_SORT_TYPE = 152,
    BAG_OPTION_TEXT_SORT_NAME = 153,
    BAG_OPTION_TEXT_SORT_AMOUNT_MORE = 154,
    BAG_OPTION_TEXT_SORT_AMOUNT_LESS = 155,
    BAG_OPTION_TEXT_SORT_INDEX = 156,
    BAG_OPTION_TEXT_END = 160
};

enum
{
    BAG_MODE_NORMAL,
    BAG_MODE_UNION_ROOM,
    BAG_MODE_BOX_SELECT_ITEM_HELD,
    BAG_MODE_LINK_BATTLE_ROOM,
    BAG_MODE_SELL_ITEM,
    BAG_MODE_SELECT_ITEM
};

enum
{
    BAG_SORT_TYPE,
    BAG_SORT_INDEX,
    BAG_SORT_NAME,
    BAG_SORT_AMOUNT_MORE,
    BAG_SORT_AMOUNT_LESS,
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
    BAG_OPTION_OK,
    BAG_OPTION_TO_FREE_SPACE,
    BAG_OPTION_FREESPACE_BACK,
    BAG_OPTION_GIVE_UP,
    BAG_OPTION_SELL,
};

enum
{
    BAG_BUTTON_POCKET_NORMAL,
    BAG_BUTTON_POCKET_HEAL,
    BAG_BUTTON_POCKET_TMHM,
    BAG_BUTTON_POCKET_BERRY,
    BAG_BUTTON_POCKET_IMPORT_ITEM,
    BAG_BUTTON_POCKET_FREE_SPACE,
    BAG_BUTTON_SWITCH_POCKET_LEFT,
    BAG_BUTTON_SWITCH_POCKET_RIGHT,
    BAG_BUTTON_SORT_OR_SEACHER,
    BAG_BUTTON_REGBOX,
    BAG_BUTTON_EXIT_FIELD,
    BAG_BUTTON_EXIT_BAG,
    BAG_BUTTON_ITEM_LIST_0,
    BAG_BUTTON_ITEM_LIST_1,
    BAG_BUTTON_ITEM_LIST_2,
    BAG_BUTTON_ITEM_LIST_3,
    BAG_BUTTON_ITEM_LIST_4,
    BAG_BUTTON_ITEM_LIST_5,

    BAG_BUTTON_ITEM_BOX_0,
    BAG_BUTTON_ITEM_BOX_1,
    BAG_BUTTON_ITEM_BOX_2,
    BAG_BUTTON_ITEM_BOX_3,
    BAG_BUTTON_ITEM_BOX_4,
    BAG_BUTTON_ITEM_BOX_5,

    BAG_BUTTON_ITEM_LIST_END = BAG_BUTTON_ITEM_LIST_5 + 1,
};

#define SORT_MORE_TO_LESS   0
#define SORT_LESS_TO_MORE   1

enum
{
    BOTTOM_ICON_SWITCH_LEFT,
    BOTTOM_ICON_SWITCH_RIGHT,
    BOTTOM_ICON_SORT_OR_SEACHER,
    BOTTOM_ICON_RETURN_FIELD,
    BOTTOM_ICON_BACK
};

typedef struct
{
    u16 unk0;
    u16 unk2;
    int unk4;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    int unkC;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
}OamSystemInitTemplate;

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
    int textBuff;
    u16 textColor;
    int exitIcon;
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
    SomeData unkC[MAX_ITEM + 1];
    u8 unk1CCC[MAX_ITEM + 1];
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
    /*0x6B0*/ int itemIconOam;
    /*0x6B4*/ int unk6B4;
    /*0x6B8*/ int scrollBarOam;
    /*0x6BC*/ int bagPocketOam[6];
    /*0x6D4*/ int unk6D4[3];
    /*0x6E0*/ int unk6E0[17];
    /*0x724*/ int bottomIconOam[7];
    /*0x740*/ int unk740;
    /*0x744*/ int unk744;
    /*0x748*/ int unk748;
    /*0x74C*/ BagBmpWinData tmhmTextBmpWin;
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
    /*0x85C*/ int sortOptionIdTbl[5];
    /*0x870*/ int unk870[7];
    /*0x88C*/ u32 unk88C;
    /*0x890*/ u16 unk890;
    /*0x892*/ u16 unk892;
    /*0x894*/ int unk894;
    /*0x898*/ int bagMenuReturnApp;
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

typedef struct
{
    u16 item;
    u16 num;
    FieldBagItemUse func;
} ItemUsedFunc;

typedef struct
{
    u8 unk0[23];
}ItemTypeSomeData;

void sub_021998DC(BagView *m_bagView);
void ovy142_21998f4(BagView *m_bagView);

extern int sub_0203D554(void);
extern void ovy142_219de0c(BagView*);
extern void ovy142_219e120(BagView*);
extern void BagMenu_DrawItemBarText(BagView*);
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

extern void GFL_FadeScreenSet(int, int, int, int, int, int, u16);
extern int GFL_FadeScreenIsFinished(void);


typedef void (*UnknowFunc)(BagView *);

extern void sub_02035198(int);
extern int PrintSystem_IsTextPrintActiveEnd(int);
extern int sub_0203DA2C(void);
extern void BagSave_CopyPocket(void*, ItemTable*, int, int);

extern void ovy142_219c9f8(BagView*, int, FieldBagItemUse);

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
extern void BmpWin_Free(int);

extern void sub_020504F0(int);
extern void sub_0203D564(int);
extern void ovy142_219be90(BagView*);

extern void ovy142_219d0c8(BagView*);
extern void ovy142_219c958(BagView*);
extern void ovy142_219bca4(BagView*);
extern int ovy142_219d22c(BagView*);

extern void ovy142_219cac0(BagView*, int, int, FieldBagItemUse);

extern MATH_QSort(void*, int, int, int, int);

void ovy142_219bda4(BagView *m_bagView, int param_2);
extern void ovy142_219fd4c(BagView*, int);
extern void ovy142_219dda0(BagView*, int);
extern void sub_020352B0(int);

extern void ovy142_219acb8(BagView*);

extern void sub_0219F760(BagView*);
extern void ovy142_219c014(BagView*);
extern void ovy142_219f76c(BagView*, int);

void ovy142_219a724(BagView *m_bagView);
int ovy142_219f7a4(BagView*);
extern void sub_02045738(int);
extern void Oam_EnableOamAnim(int, int);

void ovy142_2199a5c(BagView *m_bagView, int param_2, u32 param_3);
extern void ovy142_219ff60(BagView*);
void ovy142_219bd84(BagView *m_bagView);

extern int ovy142_219b490(BagView*);
extern int ovy142_219cb88(void);
extern void ovy142_219cba8(BagView*);
extern void ovy142_219b46c(BagView*);

void ovy142_219b2f0(BagView*);
extern void PlayerSave_AddMoney(int, int);

extern int PlayerSave_GetPlayerSaveOffset(void*);

extern int TaskAppListMenu_ChoosenWait(int);
extern int TaskAppListMenu_GetChoosenIndex(int);

extern void ovy142_219ff40(BagView*, int);
extern void sub_0202D384(u16);

void ovy142_219ad30(BagView *m_bagView);
extern void StringSetNumber(int, int, int, int, int, int);
extern void sub_0219F0AC(BagView*);
extern void sub_0202DA54(int);
extern void *sub_02017934(void*);
extern void* SaveControl_GetEncountSave(void*);
extern void GFL_MsgDataLoadStrbuf(int, int, int);
extern void GFL_WordSetFormatStrbuf(int, int, int);

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

void ovy142_219bf58(BagView *m_bagView, u8 *param_2);
extern void *sub_02026740(u16, int, int);
extern int ovy142_219d43c(BagView*, u8);

void ovy142_219c38c(int a1, BagView *m_bagView);
extern void ovy142_219dd84(BagView*, int);
extern int sub_020275F8(int);
extern void sub_0204B7C8(int);

extern int BmpWin_GetBitmap(int);
extern int BmpWin_BitmapFill(int, int);

extern int ovy142_21a03ac(u8);
extern void BmpWin_FlushChar(int);
extern int Item_GetTmNo(u16);
extern int Item_GetTmHmIndex(u16);
extern void LoadMoveNameToStrbuf(int, int, int);
extern void ovy142_219f4b0(BagView*, int);
extern void sub_020267C0(int ,u16, u16);

extern void ovy142_21a0134(BagBmpWinData*);

extern int sub_02034AA4(u16);
extern void sub_02017644(void*, int, int);
extern int ovy142_219c0e8(BagView*, int);
extern void sub_02021D28(int, int, int, int, int, int);

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

extern int GameData_IsPocketRegistered(void*, int);
extern int GFL_VBlankGetTCBMgr(void);
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

extern int MyStatus_GetTrainerGender(void*);
extern int Oam_LoadNCLRFile(void*, int, int, int, int, int, u16); 
void ovy142_219d7a8(BagView *a1);
extern void GFL_G2DIOLoadArcNCLRDefault(void *fileHandle, int, int, int, int, u16);
extern int GFL_BGSysLoadArcNCGRDynamic(void *fileHandle, int, int, int, int, u16);
extern void GFL_G2DIOLoadNSCRSync(void *fileHandle, int, int, int, int, int, int, u16);
void ovy142_219e284(BagView *a1);
extern int BmpWin_CreateDynamic(int bg, int x, int y, int width, int height, int palindex, int alloc);
extern void BmpWin_FlushMap(int);

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

extern int Oam_LoadNCGRFile(void *fileHandle, int, int, int, u16);
extern int Oam_LoadNCERFile(void *fileHandle, int, int, u16);

extern void ovy142_219eb54(BagView*);
extern void BagMenu_DrawItemNameBmpWinToOam(BagView*);
extern void ovy142_219e5a8(BagView*);
extern void ovy142_21a014c(BagView*);
extern void sub_0203A7F4(int);
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
int ovy142_219a354(BagView * bagView);
void ovy142_219a3c4(BagView *bagView);
void ovy142_219a3d4(BagView *bagView);
void ovy142_219a3e4(BagView *bagView);
void ovy142_219a3f4(BagView *bagView);
int ovy142_219a404(BagView *bagView);

int ovy142_219a440(BagView *bagView);
int ovy142_219a460(BagView *bagView);
void ovy142_219a480(BagView *bagView);
void ovy142_219a490(BagView *bagView);

extern void ovy142_219cd98(BagView*);
extern void GFL_MsgDataLoadStrbuf(int, int, int);
extern void ovy142_219cce0(BagView*);

extern void BagSave_CopyPocketRaw(void*, ItemTable*, int, int);
extern int BagSave_GetPocketItemCountCore(void*, int, int);
extern int ButtonSystem_Create(const TouchscreenHitbox *touchTemplate, void* checkFunc, void* data, u16 heap);

extern const TouchscreenHitbox data_021A08F8[3];
extern const TouchscreenHitbox data_021A0904[3];
extern const int data_021A091C[6];
extern const u32 gBagMenuSortTextTbl[6];
extern const int gBagMenuOptionTextTbl[13];
extern const ItemUsedFunc data_021A0980[];
extern const TouchscreenHitbox data_021A09D8[];
extern const ItemTypeSomeData data_021A0A3C[6];
extern const u16 data_021A0AC8[];

extern const u8 data_021A0FC8[2];
extern const u8 data_021A0FCC[2];
extern const u8 data_021A0FD8[5];
extern const u8 data_021A0FD0[5];
extern const u8 data_021A0FE0[];
extern const u8 data_021A0FEC[][2];
extern const OamSystemInitTemplate data_021A0FFC;
extern const s16 word_21A168C[10][2];
extern const int data_21A1120[6];

extern const char gItemMenuText[];

void BagMenu_LoadBagPocketNameToStrbuf(BagView *bagView, int bufId, int msgId);
void BagMenu_LoadItemNameToStrbuf(BagView *bagView, int bufId, int msgId);
void BagMenu_SetRunFunc(BagView *bagView, FieldBagItemUse fun);
void BagMenu_PrintSeachItemEnd(BagView *bagView);
void BagMenu_StartSortItem(BagView *bagView);
void BagMenu_PrintBagMessage(BagView *bagView, int);
void BagMenu_LoadBagPocketSpriteResource(BagView *bagView, void *fileHandle);
void BagMenu_LoadBagBackGround(BagView *bagView, void *fileHandle);
int BagMenu_GetPocketRegistId(int pocket);
void BagMenu_LoadBagItemBarResource(BagView *bagView);
int BagMenu_GetSelectSlot(BagView *bagView);
void BagMenu_LoadBagBackDefaultText(BagView *bagView);
void BagMenu_DrawStringToBmpWin(BagView *bagView, BagBmpWinData *a2, int a3, u16 a4, s16 a5, u16 a6);
void BagMenu_LoadItemIconOam(BagView *bagView, int);
void BagMenu_TouchScrollBarUpdatePos(BagView *bagView);
void BagMenu_UseRepel(BagView *bagView);
ItemTable *BagMenu_GetBagItemDataBySlot(BagView *bagView, u32 pocket);
int BagMenu_GetItemPrice(u32 itemId, int param_2, u16 heapId);
void BagMenu_WaitPrintKeyPad(BagView *bagView);
int BagMenu_GetPocketItemAmount(BagView *bagView);
void BagMenu_BagStart(BagView *bagView);
void BagMenu_BagWaitFadeIn(BagView *bagView);
int BagMenu_PokcetIconMoveFadeIn(BagView *bagView);
void BagMenu_TmHmUseStart(BagView *bagView);
void BagMenu_MoveItemToFreeSpace(BagView *bagView);
void BagMenu_ItemToss(BagView *bagView);
int BagMenu_IsNotNormalBagMode(BagView *bagView);
int BagMenu_CheckItemCanRegist(BagView *bagView, int);
void BagMenu_TrySortItem(BagView *bagView, int param_2);
void BagMenu_PrintMoneyString(BagView *bagView);
void BagMenu_HandlePressAButton(BagView *bagView);
void BagMenu_HandleSwitchModeKeyPad(BagView *bagView);
void BagMenu_HandleKeyPad(BagView *bagView);
void BagMenu_KeyPadSwitchMode(BagView *bagView);
void BagMenu_SortItemByClass(BagView *bagView);
void BagMenu_TrySellItem(BagView *bagView);
void BagMenu_PopUpOptionMenuSetting(BagView *bagView, int);
void BagMenu_PrintBagMessage(BagView *bagView, int);
void BagMenu_StartSortItem(BagView *bagView);
void BagMenu_LoadItemTextWithAmount(BagView *bagView, int bufId, int msgId, int name1, int name2);
void BagMenu_SwitchItemPostion(BagView *bagView, int pockId1, int pockId2);
int BagMenu_CheckUpDownKeyPad(BagView *bagView);
void BagMenu_KeyPadMain(BagView *bagView);
int BagMenu_IsRepelItem(u16 itemId);
void BagMenu_PrintPokeLearnHmTm(BagView *bagView);
void BagMenu_TmHmUseStart(BagView *bagView);
void BagMenu_SelectAmountItemToss(BagView *bagView);
void BagMenu_TrySellItem(BagView *bagView);
void BagMenu_PrintSellItemYesNo(BagView *bagView);
void BagMenu_SortItemByName(BagView *bagView);
void BagMenu_SortItemByIndex(BagView *bagView);
void BagMenu_SortItemByAmount(BagView *bagView, int param_2);
void BagMenu_ButtonManCallBack(u32 a1, int a2, BagView *bagView);

int BagMenu_Main(int a1, int a2, void *a3, void *a4);
int BagMenu_Loop(int a1, int a2, void *a3, void *a4);
int BagMenu_End(int a1, int a2, void *a3, void *a4);

#endif //BAG_H
