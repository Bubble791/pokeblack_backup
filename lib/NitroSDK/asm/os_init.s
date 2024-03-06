	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	arm_func_start OSi_WaitVCount0
OSi_WaitVCount0: ; 0x0207B104
	mov ip, #0x4000000
	ldr r1, [ip, #0x208]
	str ip, [ip, #0x208]
_0207B110:
	ldrh r0, [ip, #6]
	cmp r0, #0
	bne _0207B110
	str r1, [ip, #0x208]
	bx lr
	arm_func_end OSi_WaitVCount0

	thumb_func_start OS_Init
OS_Init: ; 0x0207B124
	ldr r3, _0207B128 ; =OSi_InitCommon
	bx r3
	.align 2, 0
_0207B128: .word OSi_InitCommon
	thumb_func_end OS_Init

	thumb_func_start OSi_InitCommon
OSi_InitCommon: ; 0x0207B12C
	push {r3, lr}
	bl PXI_Init
	bl OS_InitArena
	bl OS_InitLock
	bl OS_InitArenaEx
	bl OS_InitIrqTable
	bl OS_SetIrqStackChecker
	bl OS_InitException
	bl MI_Init
	bl OS_InitVAlarm
	bl OSi_InitVramExclusive
	bl OS_InitThread
	blx OS_InitReset
	bl CTRDG_Init
	bl CARD_Init
	bl MI_InitWramManager
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0207B176
	bl SCFG_Init
_0207B176:
	bl PM_Init
	blx OSi_WaitVCount0
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0207B18A
	blx OSi_InitPrevTitleId
_0207B18A:
	pop {r3, pc}
	thumb_func_end OSi_InitCommon