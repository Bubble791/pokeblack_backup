	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start OS_GetDTCMAddress
OS_GetDTCMAddress: ; 0x0207B79C
	mrc p15, 0, r0, c9, c1, 0
	ldr r1, _0207B7AC ; =0xFFFFF000
	and r0, r0, r1
	bx lr
	.align 2, 0
_0207B7AC: .word 0xFFFFF000
	arm_func_end OS_GetDTCMAddress

	arm_func_start OS_EnableProtectionUnit
OS_EnableProtectionUnit: ; 0x0207B7B0
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end OS_EnableProtectionUnit

	arm_func_start OS_DisableProtectionUnit
OS_DisableProtectionUnit: ; 0x0207B7C0
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end OS_DisableProtectionUnit

	arm_func_start OS_SetProtectionRegionParam
OS_SetProtectionRegionParam: ; 0x0207B7D0
	stmdb sp!, {r3, lr}
	ldr r2, _0207B7E8 ; =0x0209B71C
	ldr r2, [r2, r0, lsl #2]
	mov r0, r1
	blx r2
	ldmia sp!, {r3, pc}
	.align 2, 0
_0207B7E8: .word data_0209B71C
	arm_func_end OS_SetProtectionRegionParam

	arm_func_start OS_SetProtectionRegion0
OS_SetProtectionRegion0: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c0, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion0

	arm_func_start OS_SetProtectionRegion1
OS_SetProtectionRegion1: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c1, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion1

	arm_func_start OS_SetProtectionRegion2
OS_SetProtectionRegion2: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c2, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion2

	arm_func_start OS_SetProtectionRegion3
OS_SetProtectionRegion3: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c3, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion3

	arm_func_start OS_SetProtectionRegion4
OS_SetProtectionRegion4: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c4, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion4

	arm_func_start OS_SetProtectionRegion5
OS_SetProtectionRegion5: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c5, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion5

	arm_func_start OS_SetProtectionRegion6
OS_SetProtectionRegion6: ; 0x0207B7EC
    mcr p15, 0, r0, c6, c6, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion6

	arm_func_start OS_SetProtectionRegion7
OS_SetProtectionRegion7:
    mcr p15, 0, r0, c6, c7, 0
    bx lr
	arm_func_end  OS_SetProtectionRegion7

	arm_func_start OS_GetProtectionRegion0
OS_GetProtectionRegion0: ; 0x0207B82C
	mrc p15, 0, r0, c6, c0, 0
	bx lr
	arm_func_end OS_GetProtectionRegion0

	arm_func_start OS_GetProtectionRegion1
OS_GetProtectionRegion1: ; 0x0207B834
	mrc p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end OS_GetProtectionRegion1

	arm_func_start OS_GetProtectionRegion2
OS_GetProtectionRegion2: ; 0x0207B834
	mrc p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end OS_GetProtectionRegion2

	arm_func_start OS_GetProtectionRegion3
OS_GetProtectionRegion3: ; 0x0207B834
	mrc p15, 0, r0, c6, c3, 0
	bx lr
	arm_func_end OS_GetProtectionRegion3

	arm_func_start OS_GetProtectionRegion4
OS_GetProtectionRegion4: ; 0x0207B834
	mrc p15, 0, r0, c6, c4, 0
	bx lr
	arm_func_end OS_GetProtectionRegion4

	arm_func_start OS_GetProtectionRegion5
OS_GetProtectionRegion5: ; 0x0207B834
	mrc p15, 0, r0, c6, c5, 0
	bx lr
	arm_func_end OS_GetProtectionRegion5

	arm_func_start OS_GetProtectionRegion6
OS_GetProtectionRegion6: ; 0x0207B834
	mrc p15, 0, r0, c6, c6, 0
	bx lr
	arm_func_end OS_GetProtectionRegion6

	arm_func_start OS_GetProtectionRegion7
OS_GetProtectionRegion7: ; 0x0207B834
	mrc p15, 0, r0, c6, c7, 0
	bx lr
	arm_func_end OS_GetProtectionRegion7

	arm_func_start OS_SetProtectionRegionEx
OS_SetProtectionRegionEx: ; 0x0207B86C
	stmdb sp!, {r3, lr}
	sub r3, r2, #0x16
	mov ip, #0x1000
	rsb ip, ip, #0
	mov r3, r3, lsr #1
	and r1, r1, ip, lsl r3
	orr r1, r2, r1
	orr r1, r1, #1
	bl OS_SetProtectionRegionParam
	ldmia sp!, {r3, pc}
	arm_func_end OS_SetProtectionRegionEx

	.rodata
	.public data_0209B71C
data_0209B71C: ; 0x0209B71C
	.word OS_SetProtectionRegion0
	.word OS_SetProtectionRegion1
	.word OS_SetProtectionRegion2
	.word OS_SetProtectionRegion3
	.word OS_SetProtectionRegion4
	.word OS_SetProtectionRegion5
	.word OS_SetProtectionRegion6
	.word OS_SetProtectionRegion7