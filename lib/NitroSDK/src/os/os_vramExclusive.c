#include <nitro.h>

static u32 OSi_vramExclusive;
static u16 OSi_vramLockId[9];

BOOL OSi_TryLockVram(u16 bank, u16 lockId) {
    u32 workMap;
    s32 zeroBits;
    OSIntrMode enabled = OS_DisableInterrupts();

    workMap = bank & OSi_vramExclusive;
    while (TRUE) {
        zeroBits = 31 - OsCountZeroBits(workMap);
        if (zeroBits < 0) {
            break;
        }
        workMap &= ~(1 << zeroBits);
        if (OSi_vramLockId[zeroBits] != lockId) {
            OS_RestoreInterrupts(enabled);
            return FALSE;
        }
    }
    workMap = bank & 0x1FF;
    while (TRUE) {
        zeroBits = 31 - OsCountZeroBits(workMap);
        if (zeroBits < 0) {
            break;
        }
        workMap &= ~(1 << zeroBits);
        OSi_vramLockId[zeroBits] = lockId;
        OSi_vramExclusive |= (1 << zeroBits);
    }
    OS_RestoreInterrupts(enabled);
    return TRUE;
}

