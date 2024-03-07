#include <nitro.h>
#include <nitro/code16.h>

static u32 OSi_DetectDeviceType(void);

u32 OSi_ContextTypeCache = OSi_CONSOLE_NOT_DETECT;

extern u16 OS_GetBootType(void);
u32 OS_GetConsoleType(void)
{
    static u32 OSi_ConsoleTypeCache = OSi_CONSOLE_NOT_DETECT;

    if (OSi_ConsoleTypeCache == OSi_CONSOLE_NOT_DETECT)
    {
        if (OS_IsRunOnTwl())
        {
            OSi_ConsoleTypeCache = OS_CONSOLE_TWL | OS_CONSOLE_TWLTYPE_RETAIL | OS_CONSOLE_SIZE_16MB;
        }
        else
        {
            OSi_ConsoleTypeCache = OS_CONSOLE_NITRO | OS_CONSOLE_SIZE_4MB;
        }
        OSi_ConsoleTypeCache |= OSi_DetectDeviceType();
    }
    return OSi_ConsoleTypeCache;
}

static u32 OSi_DetectDeviceType(void)
{
    static const u32 table[] = {
        0,                       // for OS_BOOTTYPE_ILLEGAL
        OS_CONSOLE_DEV_CARD,     // for OS_BOOTTYPE_ROM
        OS_CONSOLE_DEV_DOWNLOAD, // for OS_BOOTTYPE_DOWNLOAD_MB
        OS_CONSOLE_DEV_NAND,     // for OS_BOOTTYPE_NAND
        OS_CONSOLE_DEV_MEMORY,   // for OS_BOOTTYPE_MEMORY
    };

    return table[OS_GetBootType()];
}

BOOL OS_IsRunOnEmulator(void)
{
    return (OS_GetConsoleType() & OS_CONSOLE_ENSATA) ? TRUE : FALSE;
}

#define REG_SCFG_A9ROM_SEC_MASK 0x01
#define REG_SCFG_A9ROM_RSEL_MASK 0x02

BOOL OS_IsRunOnTwl(void)
{
    static BOOL OSi_IsDetectedTWL = FALSE;
    static BOOL OSi_IsRunOnTWL = FALSE;

    if (!OSi_IsDetectedTWL)
    {
        u8 rom9 = reg_SCFG_A9ROM;
        OSi_IsRunOnTWL = (rom9 & (REG_SCFG_A9ROM_SEC_MASK | REG_SCFG_A9ROM_RSEL_MASK)) == REG_SCFG_A9ROM_SEC_MASK;

        OSi_IsDetectedTWL = TRUE;
    }

    return OSi_IsRunOnTWL;
}

extern BOOL OSi_IsRunOnTwl(void);
BOOL OSi_IsRunOnTwl(void)
{
    return OS_IsRunOnTwl();
}
