#ifndef POKEHEARTGOLD_CONSTANTS_GLOBAL_H
#define POKEHEARTGOLD_CONSTANTS_GLOBAL_H

#include "constants/rgb.h"
#include "constants/charcode.h"
#include "constants/global.fieldmap.h"

enum
{
    KEY_A = 0x1,
    KEY_B = 0x2,
    KEY_SELECT = 0x4,
    KEY_START = 0x8,
    KEY_RIGHT = 0x10,
    KEY_LEFT = 0x20,
    KEY_UP = 0x40,
    KEY_DOWN = 0x80,
    KEY_R = 0x100,
    KEY_L = 0x200,
    KEY_X = 0x400,
    KEY_Y = 0x800,
    KEY_TOUCH = 0x1000,
    KEY_LID = 0x2000,
};

#define PARTY_SIZE 6

#endif //POKEHEARTGOLD_CONSTANTS_GLOBAL_H
