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


#ifndef __MWERKS__
#define NONMATCHING
#endif //__MWERKS__

#endif //POKEHEARTGOLD_GLOBAL_H
