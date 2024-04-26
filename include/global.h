#ifndef POKEHEARTGOLD_GLOBAL_H
#define POKEHEARTGOLD_GLOBAL_H

#include <nitro.h>
#include <nitro/code16.h>
#include <nnsys.h>

#include <string.h>
#include <stddef.h>

#include "config.h" // MUST COME BEFORE ANY OTHER GAMEFREAK HEADERS
#include "constants/global.h"
#include "pm_version.h"
#include "assert.h"

#define NELEMS(a) (sizeof(a) / sizeof(*(a)))

typedef struct {
    int x;
    int y;
    int z;
} Vec32;

#define TEXT_COLOR(back_color, font_color, shadow_color) (back_color | shadow_color << 5 | font_color << 10)

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

typedef struct
{
    u8 unk0[0x3FF8];
    int unk3FF8;
}UnknowOffset;

extern void *GFL_HeapAllocate(int, int, int, char*, int line);

extern void* Item_ArcHandleCreate(int);
extern void* Item_ArcHandleReadFile(void*, u16, int);
extern void GFL_HeapFree(void*);
extern int Item_GetParam(void*, int);
extern void GFL_ArcToolFree(void*);
extern int Item_IsNotSpecialMonsball(u16);
extern int Item_IsMail(u16);
extern void GFL_HeapCreateChild(int, int, int);
extern void *GFL_ProcInitSubsystem(int, int, int);
extern void sub_0203DF64(int*, int*);
extern void sub_020086C0(void*);
extern u32 GameData_GetLastBagPocket(void*);
extern int GFL_MsgSysLoadData(int, int, int, u16);
extern int GFL_StrBufCreate(int ,u16);
extern int GFL_WordSetSystemCreateDefault(u16);
extern int sub_020219A8(int, u16);
extern int sub_0202E7A4(int ,int ,int, u16);
extern int GFL_FontCreate(int ,int, int, int, u16);
extern void GFL_BGSysSetBGEnabledB(int, int);
extern void GFL_BGSysSetBGEnabledA(int, int);

extern int GFL_VBlankTCBAdd(void*, void*, int);
extern void sub_02042BA8(int, u16);
extern int TaskAppListMenu_Create(int, int, int, int, u16);
extern int GFL_TCBExMgrCreate(u16, u16, int, int);

extern void Oam_SetOamAnimIndex(int, u16);
extern int GCTX_HIDGetPressedKeys(void);

extern int sub_020223B4(void);
extern int sub_0202E8D8(int, int, int);
extern void sub_020223CC(int);
extern void sub_020223BC(int);
extern int sub_0203DF20(void);
extern void sub_020223E0(int, int);
extern void GFL_TCBRemove(int);
extern void GFL_BGSysSetLCDConfig(BgInit*);
extern void GFL_BGSysSetEnabledBGsA(int);
extern void GFL_BGSysSetEnabledBGsB(int);
extern int BmpWin_InitAllocator(u16);
extern void sub_020232D0(void);
extern void GFL_BGSysCreate(u16);
extern void GFL_BGSysSetVRAMBanks(int*);
extern void sub_0204476C(int, BGSetup*, int);
extern void sub_02045708(int);
extern void GFL_BGSysLoadScr(int);
extern void sub_02044C98(int, u8);
extern void sub_02045118(int, int, int, int);
extern void sub_02045738(int);
extern void Oam_EnableOamAnim(int, int);
extern void sub_02045B7C(int);
extern void sub_020454AC(int, int, int, int, int, int);
extern int sub_02060338(int, int*);
extern void *sub_0204B600(int ,int, int, u16);
extern void sub_020504DC(int);
extern void sub_020480A8(void);
extern void sub_02044528(void);
extern void sub_02044B84(int);
extern void GFL_G2DIOLoadArcNCLRDefault(void *fileHandle, int, int, int, int, u16);
extern int GFL_BGSysLoadArcNCGRDynamic(void *fileHandle, int, int, int, int, u16);
extern void GFL_G2DIOLoadNSCRSync(void *fileHandle, int, int, int, int, int, int, u16);
extern int sub_02035024(int, int, int, u16);
extern void *GFL_ArcSysCreateFileHandle(int, u16);
extern void sub_02035104(int, void*, int, int, int);
extern int GetDefaultUINarcIdx(void);
extern int sub_0202D7E4();
extern int sub_0202D7F8(int);
extern int sub_0202D7FC(int);
extern int sub_0202D80C(u8);
extern int sub_0202D7F4(u8);

extern void sub_020232D8(void);
extern u32 LoadCursorImageEndOfHeap(int, int, int, u16);
extern void GFL_G2DIOLoadArcNCLR(void* fileHandle, int, int, int, int, int, u16);
extern void GFL_BGSysLoadNCLRDefault(int, int, int, int, int, u16);
extern int sub_0204BF1C(int, int, u16);

extern int sub_02026DC0(u16);
extern void sub_02026E04(int, int, int, u16);
extern void sub_02026F7C(int, int, int, int);
extern void sub_02026E48(int, int);
extern void sub_02026DE8(int);
extern int GFL_VBlankGetTCBMgr(void);
extern int sub_02026FE4(int, int, int, int, int, int, int, int);
extern int sub_0204C138(int);
extern void GFL_TCBExMgrFree(int);
extern void GFL_MsgDataFree(int);
extern void GFL_StrBufFree(int);
extern void GFL_WordSetSystemFree(int);
extern void sub_02044668(int, u16, u16);
extern void BmpWin_Free(int);
extern void sub_02045264(int, int, int);
extern void sub_02022DA8(int);
extern void sub_0202E818(int);
extern void sub_02021C44(int);
extern void sub_02021A18(int);
extern void sub_0202DA54(int);
extern void *sub_02017934(void*);
extern void* SaveControl_GetEncountSave(void*);
extern void GFL_MsgDataLoadStrbuf(int, int, int);
extern void GFL_WordSetFormatStrbuf(int, int, int);
extern int CreateGameProcManager(int);
extern int sub_02010CB8(void*);
extern int sub_02034F6C(void);
extern void sub_02010D80(int, int);
extern void sub_02010D90(int, int);
extern int sub_0200D1F8(int);
extern void FreeGameProcManager(int);
extern void GFL_ProcReleaseSubsystem(int);
extern void GFL_HeapDelete(int);
extern void Overlay_QueueGameProc(int manger, int ovyId, int funcTbl, void *data);

extern void GFL_FadeScreenSet(int, int, int, int, int, int, u16);
extern int GFL_FadeScreenIsFinished(void);
extern void GFL_BGSysMoveBGReq(int, int, int);
extern int sub_02045A5C(int);
extern void sub_0204B7C8(void);
extern void sub_020275F8(int);
extern void sub_020450CC(int, int, int, int);
extern void sub_02045790(int, int);
extern int MyStatus_GetTrainerGender(void*);
extern int Oam_LoadNCLRFile(void*, int, int, int, int, int, u16); 
extern void sub_0204ADA8(void*, int, int, int, int, int, int);
extern void sub_0204AF50(void*, int, int, int, int, int, int);
extern int sub_0202D824(void);
extern int sub_0202D820(void);
extern void sub_0204566C(int, int, int, int, int, int);
extern int sub_0202D828(void);
extern void sub_020504F0(int);
extern void sub_0203D564(int);
extern void sub_02035198(int);
extern int PrintSystem_IsTextPrintActiveEnd(int);
extern int sub_0203DA2C(void);
extern void sub_0203DEB4(int, int);
extern int Item_GetItemParam(u16, int, u16);
extern void LoadItemNameToStrbuf(int , int, int);
extern void LoadBagPocketNameToStrbuf(int , int, int);
extern int sub_0203DA84(u32*, u32*);
extern int sub_0203DA48(void);
extern int sub_020355B8(int, int, int, int, int);
extern void GFL_SndSEPlay(int);
extern int sub_0203DAC8(u32*, u32*);

extern void GFL_BGSysAdjustBGOriginReq(int, int, int);
extern void GFL_BGSysScaleBGReq(int, int, int);
extern int PokeDexSave_IsMonCaught(int, u16);
extern int sub_0200D7F4(int, u16);
extern int sub_0204898C(int, u16);
extern void sub_02046DF8(int);
extern void GFL_OvlLoad(int);
extern void GFL_OvlUnload(int);
extern int sub_0203D554(void);

#ifndef __MWERKS__
#define NONMATCHING
#endif //__MWERKS__

#endif //POKEHEARTGOLD_GLOBAL_H
