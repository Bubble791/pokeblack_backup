#include <nitro.h>

u32 OSi_ContextTypeCache = OSi_CONSOLE_NOT_DETECT;

BOOL OS_IsRunOnEmulator(void) {
    // In non-retail ROMs, this would actually detect
    // the IS emulator.
    return FALSE;
}

