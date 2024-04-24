#ifndef POKEHEARTGOLD_OVERLAY_MANAGER_H
#define POKEHEARTGOLD_OVERLAY_MANAGER_H


#define FS_OVERLAY_ID_NONE       (-1)


typedef int (*OVY_FUNC)(int manager, int state, void* a2, void* a3);

typedef struct OvyMangerTemplate {
    OVY_FUNC init;
    OVY_FUNC exec;
    OVY_FUNC exit;
} OvyMangerTemplate;


#endif //POKEHEARTGOLD_OVERLAY_MANAGER_H
