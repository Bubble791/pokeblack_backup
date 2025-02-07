#include "global.h"
#include "touchscreen.h"
#include "bag.h"
#include "overlay_manager.h"

const int data_21A1120[6] = {0, 0, 1, 2, 3, 4};

const u16 data_21A1138[] = 
{
    0x0, 0x134, 0x22f, 0xdc, 0x17a, 0x1d1, 0x14d, 0x82, 0x14c, 0x1b5, 0x226, 0x12c, 0x189, 
    0x97, 0xec, 0x197, 0x41, 0x17f, 0xa, 0x36, 0xfd, 0x10, 0x162, 0xcd, 0x137, 0xf9, 0x212, 
    0xcb, 0x1bf, 0x139, 0xc7, 0x1f5, 0x115, 0x144, 0xa2, 0xa3, 0xed, 0x1be, 0xa7, 0x136, 0x9f, 
    0x135, 0x111, 0x16, 0x1d0, 0xf7, 0x18f, 0x103, 0x39, 0x37, 0x19f, 0x188, 0x269, 0x187, 0x158, 
    0xe7, 0x7e, 0x24c, 0x250, 0x25d, 0x248, 0x259, 0x255, 0x17b, 0xc1, 0x26, 0x264, 0x1a8, 0x1f, 
    0x23e, 0x1e3, 0x1e4, 0x1ac, 0x29, 0x266, 0xde, 0x213, 0x138, 0xa6, 0x1b6, 0x211, 0x146, 0xb7, 
    0x223, 0x23a, 0x113, 0x227, 0x19, 0x168, 0x1b, 0x203, 0x205, 0x151, 0xef, 0xf6, 0xe5, 0x5a, 
    0x202, 0xd5, 0x1ca, 0x49, 0xf2, 0x85, 0x156, 0xd, 0x1eb, 0x19e, 0x1e2, 0x98, 0x79, 0x15c, 
    0x155, 0xe2, 0x0, 0x0, 0x0, 0x87, 0x1e5, 0x35, 0x44, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x217, 0x4, 0x12b, 0xdf, 0xb2, 0x1ce, 0x21e, 0x101, 0x11f, 
    0x1b7, 0x2e, 0x2c, 0x2f, 0x30, 0x2d, 0x40, 0x42, 0x16a, 0x1a0, 0xe, 0x116, 0x15a, 0x16c, 0x128, 
    0x1ea, 0xb4, 0x242, 0x132, 0x6, 0xfa, 0x1a3, 0x2a, 0x14b, 0x23d, 0x16f, 0x17e, 0x10d, 0x195, 
    0xf4, 0xe0, 0x21a, 0x53, 0x133, 0x19a, 0x14f, 0x1fb, 0x15f, 0x23b, 0x96, 0x15, 0x153, 0x164, 
    0x237, 0x1c0, 0x263, 0x48, 0x10c, 0x1e6, 0x4d, 0x166, 0x21b, 0x3f, 0x10b, 0xe9, 0x4f, 0x12, 
    0x43, 0x119, 0xcf, 0x1d3, 0x16d, 0xb, 0x110, 0x204, 0xa4, 0x141, 0x58, 0x108, 0x1cd, 0x31, 
    0x23f, 0x12e, 0xad, 0x198, 0x1f8, 0x13d, 0x45, 0x10e, 0x1e8, 0x9, 0x4a, 0x1f9, 0x7b, 0x7a, 
    0x1f2, 0xa8, 0xc4, 0x126, 0x1d6, 0x13e, 0x114, 0x8d, 0x11b, 0x1f6, 0xeb, 0x143, 0x20, 0x1e, 
    0x131, 0x14a, 0x1de, 0x177, 0x14e, 0x1fa, 0x22e, 0x3d, 0x8b, 0x1e7, 0x231, 0x1e0, 0x1d7, 0x112, 
    0x127, 0x13f, 0x21f, 0x207, 0x1ab, 0x28, 0x170, 0xdd, 0x265, 0x241, 0x147, 0x245, 0xaa, 0x11c, 
    0x11a, 0x184, 0x22b, 0xba, 0x199, 0xc6, 0x26a, 0x140, 0x104, 0x10f, 0x7c, 0x21, 0xff, 0x1f3, 
    0xf0, 0x5b, 0xe1, 0x46, 0x208, 0x183, 0x182, 0x185, 0x181, 0x180, 0x186, 0x1df, 0x1c, 0x47, 
    0xbb, 0x1fc, 0x268, 0x13a, 0xfe, 0xb8, 0x22c, 0x99, 0x1ed, 0x142, 0x102, 0x20a, 0x1fd, 0x89, 
    0x90, 0x105, 0x154, 0x1c4, 0xcc, 0x23c, 0x1cb, 0x125, 0x194, 0x18e, 0x9d, 0x12f, 0x95, 0x1a4, 
    0x1a1, 0x1a2, 0xf5, 0x8a, 0x193, 0x38, 0x1c2, 0x22a, 0xea, 0x33, 0x233, 0xf3, 0x210, 0x21c, 
    0xfb, 0x22, 0xf8, 0x11d, 0x18d, 0x19d, 0x21d, 0x1d2, 0xca, 0x1f7, 0x1f1, 0x222, 0x221, 0x9a, 
    0x1bc, 0x7d, 0x190, 0x1dc, 0x2b, 0x86, 0x1ad, 0x1f0, 0xbc, 0x1ef, 0x1d4, 0xb5, 0x1c8, 0x5, 
    0x228, 0xae, 0xb9, 0x1ba, 0xf, 0x220, 0x124, 0x1cc, 0x9b, 0x15d, 0x8, 0xc5, 0xa1, 0xaf, 0x1d5, 
    0xbf, 0x3e, 0x1ec, 0x100, 0x196, 0x244, 0x3, 0xa0, 0xac, 0x1dd, 0x167, 0x1bb, 0xd3, 0x1c5, 0xbd, 
    0x209, 0x234, 0x224, 0xe8, 0x219, 0x20d, 0x192, 0x34, 0xc9, 0x1c6, 0x254, 0x8f, 0x247, 0x179, 
    0x92, 0xdb, 0x216, 0x172, 0x232, 0x20e, 0xbe, 0x22d, 0x59, 0xc2, 0x215, 0x20c, 0x238, 0x81, 0x0, 
    0x0, 0xab, 0x121, 0x1cf, 0x17c, 0x176, 0x10a, 0x1d9, 0xb0, 0x1d8, 0x15e, 0x246, 0x157, 0xce, 
    0x1a7, 0x229, 0x236, 0x4e, 0x159, 0xd4, 0x214, 0x1ff, 0x175, 0x18, 0x20f, 0x152, 0x129, 0x13c, 
    0x11, 0x201, 0x52, 0x130, 0x160, 0x54, 0x55, 0x56, 0x20b, 0x1db, 0x235, 0xd6, 0x1da, 0xc, 0x230, 
    0x17, 0x88, 0x25, 0x1ee, 0x4b, 0x3a, 0x14, 0x200, 0x1aa, 0x122, 0x163, 0x12d, 0x1e9, 0x19c, 
    0x149, 0x1a5, 0x24, 0x267, 0xe3, 0x174, 0x240, 0x23, 0xb1, 0x117, 0x12a, 0xf1, 0x123, 0xc8, 
    0x145, 0x1fe, 0x161, 0x16e, 0xd0, 0x225, 0x19b, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 
    0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 
    0x76, 0x77, 0x78, 0x109, 0x120, 0x1a9, 0x27, 0xa5, 0x18b, 0xa9, 0xc0, 0x1c9, 0x7, 0x1a6, 0x1c1, 
    0x1d, 0x2, 0x3c, 0x9c, 0xb6, 0x239, 0x9e, 0xda, 0xfc, 0xb3, 0x178, 0xe4, 0xc3, 0x191, 0x32, 
    0x1c3, 0xd2, 0x8c, 0x5c, 0x206, 0x150, 0xee, 0x148, 0x1b9, 0xd1, 0x4c, 0x218, 0x18a, 0x57, 
    0x173, 0x118, 0x165, 0x91, 0x17d, 0x18c, 0x8e, 0x13, 0x1a, 0x169, 0x51, 0x1af, 0x1b2, 0x1b1, 
    0x1b4, 0x1ae, 0x1b3, 0x1b0, 0x3b, 0x7f, 0x25e, 0x25a, 0x256, 0x251, 0x24d, 0x249, 0x25f, 0x25b, 
    0x257, 0x252, 0x24e, 0x24a, 0x260, 0x25c, 0x258, 0x253, 0x24f, 0x24b, 0x1, 0x106, 0x107, 0x1b8, 
    0x80, 0x11e, 0x5d, 0x243, 0x1c7, 0x1f4, 0x261, 0x0, 0xd7, 0xd8, 0xd9, 0x262, 0x13b, 0x83, 0x84, 
    0x16b, 0x15b, 0x1e1, 0x171, 0xe6, 0x50, 0x93, 0x94, 0x1BD, 0x0, 0x0, 0x0, 0x0
};
