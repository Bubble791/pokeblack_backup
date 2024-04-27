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


extern int sub_0203DA0C(const TouchscreenHitbox*);

#endif // TOUCHSCREEN_H