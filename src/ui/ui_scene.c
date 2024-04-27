#include "global.h"
#include "main.h"
#include "touchscreen.h"

typedef struct _Ui_Scene Ui_Scene;

typedef int (*UiSceneFunc)(Ui_Scene *, int);

typedef struct
{
    UiSceneFunc unk0;
    UiSceneFunc unk4;
    UiSceneFunc unk8;
    UiSceneFunc unkC;
    UiSceneFunc unk10;
}Ui_Param; // sizeof 20

struct _Ui_Scene
{
    Ui_Param *unk0;
    int unk4;
    u16 unk8;
    u16 unkA;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
}; // sizeof 16

void *ovy139_21998c0(int a1, void *a2, u8 a3, u16 a4, int a5);
void ovy139_21998fc(void* a1);
int ovy139_2199904(Ui_Scene *uiWk);

void *ovy139_21998c0(int a1, void *a2, u8 a3, u16 a4, int a5)
{
    Ui_Scene *v8; // r4

    v8 = (Ui_Scene*) GFL_HeapAllocate(a1, sizeof(Ui_Scene), 0, "ui_scene.c", 78);
    MI_CpuFill8(v8, 0, sizeof(Ui_Scene));
    v8->unk0 = (Ui_Param*)a2;
    v8->unkC = a3;
    v8->unk4 = a5;
    v8->unk8 = a4;
    v8->unkA = -1;
    return v8;
}

void ovy139_21998fc(void* a1)
{
    GFL_HeapFree(a1);
}

int ovy139_2199904(Ui_Scene *uiWk)
{
    Ui_Param *r5 = &uiWk->unk0[uiWk->unk8];

    switch (uiWk->unkD)
    {
    case 0:
        if (!r5->unk0)
            uiWk->unkD = 1;
        else
        {
            int ret = r5->unk0(uiWk, uiWk->unk4);
            if (ret)
            {
                uiWk->unkE = 0;
                uiWk->unkD = 1;
                break;
            }
            else
                break;
        }

    case 1:
        if (r5->unk4)
        {
            r5->unk4(uiWk, uiWk->unk4);
        }
        uiWk->unkD = 2;

    case 2:
    {
        int ret = r5->unk8(uiWk, uiWk->unk4);
        if (ret)
        {
            uiWk->unkE = 0;
        }
        else
            break;
    }

        if (r5->unkC)
        {
            r5->unkC(uiWk, uiWk->unk4);
        }
        uiWk->unkD = 3;
        break;

    case 3:
        if (!r5->unk10)
            uiWk->unkD = 4;
        else
        {
            int ret = r5->unk10(uiWk, uiWk->unk4);
            if (ret)
            {
                uiWk->unkE = 0;
                uiWk->unkD = 4;
                break;
            }
            else
                break;
        }
    case 4:
        int r1 = uiWk->unkA;
        uiWk->unkA = -1;
        uiWk->unk8 = r1;
        if (r1 == 0xFFFF - 1)
        {
            return 1;
        }
        else
        {
            uiWk->unkD = 0;
            uiWk->unkE = 0;
        }
        break;
    }

    return 0;
}

void ovy139_21999b8(Ui_Scene *uiWk, int a1);
u8 ovy139_21999bc(Ui_Scene *uiWk);
void ovy139_21999c0(Ui_Scene *uiWk);

void ovy139_21999b8(Ui_Scene *uiWk, int a1)
{
    uiWk->unkA = a1;
}

u8 ovy139_21999bc(Ui_Scene *uiWk)
{
    return uiWk->unkE;
}

void ovy139_21999c0(Ui_Scene *uiWk)
{
    uiWk->unkE++;
}

typedef struct
{
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
}UnknowTemplate;

typedef struct
{
    int unk0;
    int unk4;
    int unk8;
    int unkC;
}UnknowTemplate2; // sizeof 16

void ovy139_21999c8(UnknowTemplate2 *a1, UnknowTemplate *a2, int a3, u16 a4);

void ovy139_21999c8(UnknowTemplate2 *a1, UnknowTemplate *a2, int a3, u16 a4)
{
    void *v7;  // r0
    void *v8;  // r7
    int v9;  // r0
    int v11; // [sp+Ch] [bp-1Ch]

    v11 = (a2->unk4 & 2);
    v7 = GFL_ArcSysCreateFileHandle(a2->unk8, a4);
    v8 = v7;
    if (a2->unk4 << 31)
        v9 = sub_0204BC48(v7, a2->unkC, a2->unk0, (u16)(32 * a2->unk1C), a4);
    else
        v9 = Oam_LoadNCLRFile(
            v7,
            a2->unkC,
            a2->unk0,
            (u16)(32 * a2->unk1C),
            a2->unk1D,
            a2->unk1E,
            a4);
    a1->unk4 = v9;
    a1->unk0 = Oam_LoadNCGRFile(v8, a2->unk10, v11, a2->unk0, a4);
    a1->unk8 = Oam_LoadNCERFile(v8, a2->unk14, a2->unk18, a4);
    a1->unkC = a2->unk0;
    GFL_ArcToolFree(v8);
}

void ovy139_2199a44(UnknowTemplate2 *a1);

void ovy139_2199a44(UnknowTemplate2 *a1)
{
    sub_0204BCD0(a1->unk4);
    sub_0204B98C(a1->unk0);
    sub_0204BE64(a1->unk8);
}

int ovy139_2199a5c(UnknowTemplate2 *a1, int a2, s16 a3, s16 a4, u8 a5, u16 a6);

int ovy139_2199a5c(UnknowTemplate2 *a1, int a2, s16 a3, s16 a4, u8 a5, u16 a6)
{
    int v6;       // r4
    OAM_TEMP v8 = {0}; // [sp+Ch] [bp-14h] BYREF

    v8.x = a3;
    v8.y = a4;
    v6 = Oam_CreateSprite(a2, a1->unk0, a1->unk4, a1->unk8, &v8, (u16)a1->unkC, a6);
    Oam_SetOamAnimIndex(v6, a5);
    return v6;
}
