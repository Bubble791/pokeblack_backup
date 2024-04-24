#ifndef TOUCHSCREEN_H
#define TOUCHSCREEN_H

typedef struct
{
    u8 top;
    u8 bottom;
    u8 left;
    u8 right;
} TouchscreenHitbox;

#define TOUCHSCREEN_CIRCLE_SENTINEL 0xFE
#define TOUCHSCREEN_RECTLIST_END    0xFF

#endif // TOUCHSCREEN_H