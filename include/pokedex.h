#ifndef POKEHEARTGOLD_POKEDEX_H
#define POKEHEARTGOLD_POKEDEX_H

#include "overlay_manager.h"

enum
{
    POKEDEX_FUNC_GET_CHILD_APP,
    POKEDEX_FUNC_START_OPEN_DEX_ANIM,
    POKEDEX_FUNC_WAIT_OPEN_DEX_ANIM,

    POKEDEX_FUNC_MAIN_MENU_UNOVA_MODE,

}PokeDexAppFunction;

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int unk4;
    /*0x8*/ int unk8;
} PokeDexOpenAnim;

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int unk4;
    /*0x8*/ u16 unk8;
    /*0xA*/ u16 unkA;
    /*0xC*/ int unkC;
    /*0x10*/ int unk10;
} PokeDexSeacherEngine_TYPE2;

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int unk4;
    /*0x8*/ u8 *unk8;
    /*0xC*/ int unkC;
    /*0x10*/ int unk10;
    /*0x14*/ u16 unk14;
    /*0x16*/ u16 unk16;
} PokeDexSeacherEngine_TYPE3;

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int unk4;
    /*0x8*/ u16 *unk8;
    /*0xC*/ u16 unkC;
    /*0xE*/ u16 unkE;
    /*0x10*/ int unk10;
    /*0x14*/ int unk14;
    /*0x18*/ int unk18;
} PokeDexSeacherEngine_TYPE4;

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int unk4;
    /*0x8*/ u16 *unk8;
    /*0xC*/ u8 unkC[0xC140];
    /*0xC14C*/ int unkC14C;
} PokeDexSeacherEngine_TYPE5;

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int unk4;
    /*0x8*/ u8 unkC[2508];
    /*0x9D4*/ int unk9D4;
} PokeDexSeacherEngine_TYPE6; // 2520

typedef struct
{
    /*0x0*/ void *gameData;
    /*0x4*/ int dexSave;
    /*0x8*/ int playerInfo;
    /*0xC*/ u16 unkC;
    /*0xE*/ u16 unkE;
} PokeDexParamInput;

typedef struct
{
    u16 *listData;
}PokeDexListData;

typedef struct
{
    /*0x0*/ PokeDexParamInput *inputParam;
    /*0x4*/ int unk4;
    /*0x8*/ int unk8;
    /*0xC*/ PokeDexListData unkC;
    /*0x10*/ u16 unk10;
    /*0x12*/ u16 unk12;
    /*0x14*/ void *unk14;
    /*0x18*/ u16 unk18;
    /*0x1A*/ u8 unk1A[10];
    /*0x24*/ int unk24;
    /*0x28*/ int nextApp;
    /*0x2C*/ int unk2C;
    /*0x30*/ int unk30;
    /*0x34*/ int unk34;
    /*0x38*/ void *unk38;
} PokeDexMain;

typedef int (*DexViewFunc)(PokeDexMain *);


#endif //POKEHEARTGOLD_POKEDEX_H
