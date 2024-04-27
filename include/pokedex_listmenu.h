#ifndef LISTMENU_POKEDEX_H
#define LISTMENU_POKEDEX_H

typedef struct
{
    int winData;
    u8 flag;
}UnknowWindowData;

typedef struct
{
    /*0x0*/ PokeDexSeacherEngine_TYPE2 *unk0;
    /*0x4*/ int unk4;
    /*0x8*/ int unk8;
    /*0xC*/ int unkC;
    /*0x10*/ int unk10;
    /*0x14*/ int unk14;
    /*0x18*/ int unk18;
    /*0x1C*/ int unk1C;
    /*0x20*/ UnknowWindowData unk20[6];
    /*0x50*/ int unk50;
    /*0x54*/ int unk54;
    /*0x58*/ int unk58;
    /*0x5C*/ int unk5C;
    /*0x60*/ int unk60;
    /*0x64*/ int unk64[SPECIES_MAX];
    /*0xA88*/ int unkA88;
    /*0xA8C*/ int unkA8C[63];
    /*0xB88*/ int unkB88[36];
    /*0xC18*/ int unkC18[6];
    /*0xC30*/ int unkC30[6];
    /*0xC48*/ u16 unkC48:1;
              u16 unkC48_1:15;
    /*0xC4A*/ u8 unkC4A;
    /*0xC4B*/ u8 unkC4B;
    /*0xC4C*/ u16 unkC4C;
    /*0xC4E*/ u16 unkC4E;
    /*0xC50*/ int unkC50;
    /*0xC54*/ int unkC54;
    /*0xC58*/ int unkC58;
    /*0xC5C*/ u16 *unkC5C;
    /*0xC60*/ int unkC60;
    /*0xC64*/ u16 unkC64;
    /*0xC64*/ s16 unkC66;
    /*0xC68*/ int unkC68;
    /*0xC6C*/ int unkC6C;
}PokedexListMenu; // 3184

typedef int (*DexListMenuFunc)(PokedexListMenu *);

#endif //POKEHEARTGOLD_POKEDEX_H