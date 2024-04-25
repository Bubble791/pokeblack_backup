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

#ifndef __MWERKS__
#define NONMATCHING
#endif //__MWERKS__

#endif //POKEHEARTGOLD_GLOBAL_H
