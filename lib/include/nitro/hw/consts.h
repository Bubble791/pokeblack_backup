#ifndef NITRO_HW_CONSTS_H_
#define NITRO_HW_CONSTS_H_

#include <nitro/hw/consts_shared.h>
#include <nitro/hw/mmap.h>
#include <nitro/hw/io_reg.h>
#include <nitro/os/systemWork.h>

#define HW_C5_PERMIT_MASK          0xf

#define HW_C5_PERMIT_RO            5
#define HW_C5_PERMIT_RW            1

#define HW_C5_PR3_SFT              12

#define HW_C6_PR_4KB               0x16
#define HW_C6_PR_8KB               0x18
#define HW_C6_PR_16KB              0x1a
#define HW_C6_PR_32KB              0x1c
#define HW_C6_PR_64KB              0x1e
#define HW_C6_PR_128KB             0x20
#define HW_C6_PR_256KB             0x22
#define HW_C6_PR_512KB             0x24
#define HW_C6_PR_1MB               0x26
#define HW_C6_PR_2MB               0x28
#define HW_C6_PR_4MB               0x2a
#define HW_C6_PR_8MB               0x2c
#define HW_C6_PR_16MB              0x2e
#define HW_C6_PR_32MB              0x30
#define HW_C6_PR_64MB              0x32
#define HW_C6_PR_128MB             0x34
#define HW_C6_PR_256MB             0x36
#define HW_C6_PR_512MB             0x38
#define HW_C6_PR_1GB               0x3a
#define HW_C6_PR_2GB               0x3c
#define HW_C6_PR_4GB               0x3e

#define HW_C6_PR_ENABLE            1

#define HW_C9_TCMR_16KB            0x0a
#define HW_C9_TCMR_32MB            0x20

#define HW_ICACHE_SIZE             0x2000
#define HW_DCACHE_SIZE             0x1000
#define HW_CACHE_LINE_SIZE         32

#define OSi_CONSOLE_NOT_DETECT     0xffffffff

#define OS_CONSOLE_BOARD_MASK     0x00300000
#define OS_CONSOLE_BOARD_A9_A7    0x00100000
#define OS_CONSOLE_BOARD_A9       0x00200000

#define OS_CONSOLE_TWLTYPE_MASK   0x00c00000
#define OS_CONSOLE_TWLTYPE_RETAIL 0x00800000
#define OS_CONSOLE_TWLTYPE_DEV    0x00400000

#define OS_CONSOLE_EVALUATE       0x00080000

#define OS_CONSOLE_MASK           0xff000000
#define OS_CONSOLE_TWL            0x01000000 // classified by OS_CONSOLE_TWLTYPE_xxx
#define OS_CONSOLE_TWLDEBUGGER    0x02000000 // classified by OS_CONSOLE_BOARD_xxx
#define OS_CONSOLE_RESERVE1       0x04000000
#define OS_CONSOLE_RESERVE2       0x08000000
#define OS_CONSOLE_ENSATA         0x10000000
#define OS_CONSOLE_ISEMULATOR     0x20000000
#define OS_CONSOLE_ISDEBUGGER     0x40000000
#define OS_CONSOLE_NITRO          0x80000000

//---- device
#define OS_CONSOLE_DEV_MASK       0x000fc000
#define OS_CONSOLE_DEV_CARTRIDGE  0x00010000
#define OS_CONSOLE_DEV_CARD       0x00020000
#define OS_CONSOLE_DEV_NAND       0x00040000
#define OS_CONSOLE_DEV_SDCARD     0x00080000
#define OS_CONSOLE_DEV_MEMORY     0x00008000
#define OS_CONSOLE_DEV_DOWNLOAD   0x00004000

//---- main memory size
#define OS_CONSOLE_SIZE_MASK      0x0000000f
#define OS_CONSOLE_SIZE_4MB       0x00000001
#define OS_CONSOLE_SIZE_8MB       0x00000002
#define OS_CONSOLE_SIZE_16MB      0x00000004
#define OS_CONSOLE_SIZE_32MB      0x00000008

#define OSi_TCM_REGION_BASE_MASK   0xfffff000

#define OS_IE_V_BLANK              (1UL << 0)
#define OS_IE_H_BLANK              (1UL << 1)

#define HW_CPU_CLOCK_ARM9          67027964

#define REG_PXI_SUBP_FIFO_CNT_E_MASK                       0x8000
#define REG_PXI_SUBP_FIFO_CNT_ERR_MASK                     0x4000
#define REG_PXI_SUBP_FIFO_CNT_RECV_RI_MASK                 0x0400
#define REG_PXI_SUBP_FIFO_CNT_RECV_EMP_MASK                0x0100
#define REG_PXI_SUBP_FIFO_CNT_SEND_CL_MASK                 0x0008
#define REG_PXI_SUBP_FIFO_CNT_SEND_FULL_MASK               0x0002

#endif //NITRO_HW_CONSTS_H_
