	.include "asm/macros.inc"
	.include "math.inc"
	.include "global.inc"

	.text

	thumb_func_start MATHi_SHA1ProcessBlockForOverlay
MATHi_SHA1ProcessBlockForOverlay: ; 0x02077454
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r5, #0x14
	ldr r6, [r5, #0x18]
	mov r1, #0
	ldr r4, [r5, #0x38]
	str r1, [r5, #0x18]
	str r1, [r5, #0x38]
	blx MATHi_SHA1ProcessBlock
	str r6, [r5, #0x18]
	str r4, [r5, #0x38]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end MATHi_SHA1ProcessBlockForOverlay

	thumb_func_start MATHi_SHA1Fill
MATHi_SHA1Fill: ; 0x02077470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	add r5, r2, #0
	beq _020774E0
	str r0, [sp, #0xc]
	add r0, #0x5c
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x58
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0x14
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #0x54
_02077496:
	ldr r1, [r6, #0x54]
	mov r0, #0x40
	sub r4, r0, r1
	cmp r4, r5
	bls _020774A2
	add r4, r5, #0
_020774A2:
	ldr r0, [sp, #4]
	add r2, r4, #0
	add r0, r0, r1
	ldr r1, [sp]
	blx MI_CpuFill8
	ldr r0, [r7]
	sub r5, r5, r4
	add r0, r0, r4
	str r0, [r7]
	cmp r0, #0x40
	blo _020774DC
	ldr r1, _020774E4 ; =0x0209B6F0
	add r0, r6, #0
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r6, #0x54]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0]
	bne _020774DC
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [r0]
_020774DC:
	cmp r5, #0
	bne _02077496
_020774E0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020774E4: .word 0x0209B6F0
	thumb_func_end MATHi_SHA1Fill

	thumb_func_start MATHi_SetOverlayTableMode
MATHi_SetOverlayTableMode: ; 0x020774E8
	ldr r1, _02077500 ; =0x0214C0A8
	cmp r0, #0
	ldr r2, [r1]
	str r0, [r1]
	beq _020774F6
	ldr r1, _02077504 ; =MATHi_SHA1ProcessBlockForOverlay
	b _020774F8
_020774F6:
	ldr r1, _02077508 ; =MATHi_SHA1ProcessBlock
_020774F8:
	ldr r0, _0207750C ; =0x0209B6F0
	str r1, [r0]
	add r0, r2, #0
	bx lr
	.align 2, 0
_02077500: .word 0x0214C0A8
_02077504: .word MATHi_SHA1ProcessBlockForOverlay
_02077508: .word MATHi_SHA1ProcessBlock
_0207750C: .word 0x0209B6F0
	thumb_func_end MATHi_SetOverlayTableMode

	thumb_func_start MATH_SHA1Init
MATH_SHA1Init: ; 0x02077510
	mov r1, #0
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x54]
	ldr r1, _02077530 ; =0x67452301
	str r1, [r0]
	ldr r1, _02077534 ; =0xEFCDAB89
	str r1, [r0, #4]
	ldr r1, _02077538 ; =0x98BADCFE
	str r1, [r0, #8]
	ldr r1, _0207753C ; =0x10325476
	str r1, [r0, #0xc]
	ldr r1, _02077540 ; =0xC3D2E1F0
	str r1, [r0, #0x10]
	bx lr
	nop
_02077530: .word 0x67452301
_02077534: .word 0xEFCDAB89
_02077538: .word 0x98BADCFE
_0207753C: .word 0x10325476
_02077540: .word 0xC3D2E1F0
	thumb_func_end MATH_SHA1Init

	thumb_func_start MATH_SHA1Update
MATH_SHA1Update: ; 0x02077544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	beq _020775BE
	str r0, [sp, #0xc]
	add r0, #0x5c
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x58
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x14
	str r0, [sp]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0x54
	str r0, [sp, #4]
_0207756E:
	ldr r1, [r6, #0x54]
	mov r0, #0x40
	sub r4, r0, r1
	cmp r4, r5
	bls _0207757A
	add r4, r5, #0
_0207757A:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r2, r1
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	add r7, r7, r4
	ldr r0, [r0]
	sub r5, r5, r4
	add r1, r0, r4
	ldr r0, [sp, #4]
	cmp r1, #0x40
	str r1, [r0]
	blo _020775BA
	ldr r1, _020775C4 ; =0x0209B6F0
	add r0, r6, #0
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r6, #0x54]
	ldr r0, [sp, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0]
	bne _020775BA
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [r0]
_020775BA:
	cmp r5, #0
	bne _0207756E
_020775BE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020775C4: .word 0x0209B6F0
	thumb_func_end MATH_SHA1Update

	thumb_func_start MATH_SHA1GetHash
MATH_SHA1GetHash: ; 0x020775C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r1, [sp]
	ldr r7, [r4, #0x58]
	ldr r1, [r4, #0x54]
	lsl r2, r7, #9
	lsl r1, r1, #3
	add r1, r2, r1
	mov r2, #0xff
	lsl r3, r1, #0x18
	lsl r2, r2, #0x18
	and r3, r2
	mov ip, r3
	lsl r5, r1, #8
	lsr r3, r2, #8
	and r5, r3
	lsr r3, r1, #0x18
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	lsr r3, r1, #8
	lsr r1, r2, #0x10
	and r1, r3
	orr r1, r6
	add r3, r5, #0
	orr r3, r1
	mov r1, ip
	orr r1, r3
	str r1, [sp, #8]
	ldr r1, [r4, #0x5c]
	lsl r3, r1, #9
	lsr r1, r7, #0x17
	add r1, r3, r1
	lsl r3, r1, #0x18
	add r6, r3, #0
	lsl r5, r1, #8
	lsr r3, r2, #8
	and r5, r3
	lsr r3, r1, #0x18
	and r6, r2
	lsl r3, r3, #0x18
	lsr r1, r1, #8
	lsr r2, r2, #0x10
	and r1, r2
	lsr r3, r3, #0x18
	orr r1, r3
	orr r1, r5
	orr r1, r6
	str r1, [sp, #4]
	ldr r1, _02077718 ; =0x02098830
	mov r2, #1
	bl MATH_SHA1Update
	ldr r1, [r4, #0x54]
	mov r0, #0x40
	sub r2, r0, r1
	cmp r2, #8
	bhs _02077644
	ldr r1, _0207771C ; =0x02098831
	add r0, r4, #0
	bl MATH_SHA1Update
_02077644:
	ldr r3, [r4, #0x54]
	mov r2, #0x38
	add r0, r4, #0
	mov r1, #0
	sub r2, r2, r3
	bl MATHi_SHA1Fill
	add r0, r4, #0
	add r1, sp, #4
	mov r2, #8
	bl MATH_SHA1Update
	ldr r5, [r4]
	mov r0, #0xff
	lsl r1, r5, #0x18
	lsl r0, r0, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	ldr r5, [r4, #4]
	orr r1, r2
	and r3, r0
	orr r1, r3
	str r1, [r4]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	ldr r5, [r4, #8]
	orr r1, r2
	and r3, r0
	orr r1, r3
	str r1, [r4, #4]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	ldr r5, [r4, #0xc]
	orr r1, r2
	and r3, r0
	orr r1, r3
	str r1, [r4, #8]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	lsl r1, r1, #0x18
	lsr r6, r5, #8
	lsr r5, r0, #0x10
	lsr r1, r1, #0x18
	and r5, r6
	orr r1, r5
	and r3, r0
	orr r1, r2
	ldr r5, [r4, #0x10]
	orr r1, r3
	str r1, [r4, #0xc]
	lsl r1, r5, #0x18
	add r3, r1, #0
	lsl r2, r5, #8
	lsr r1, r0, #8
	and r2, r1
	lsr r1, r5, #0x18
	and r3, r0
	lsl r1, r1, #0x18
	lsr r5, r5, #8
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	and r0, r5
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r4, #0x10]
	ldr r1, [sp]
	add r0, r4, #0
	mov r2, #0x14
	blx MI_CpuCopy8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02077718: .word 0x02098830
_0207771C: .word 0x02098831
	thumb_func_end MATH_SHA1GetHash

	thumb_func_start MATH_CalcSHA1
MATH_CalcSHA1: ; 0x02077720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r7, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, r7, #0
	bl MATH_SHA1Init
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MATH_SHA1Update
	add r0, r7, #0
	add r1, r5, #0
	bl MATH_SHA1GetHash
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end MATH_CalcSHA1

	thumb_func_start MATH_CalcHMACSHA1
MATH_CalcHMACSHA1: ; 0x02077748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	ldr r5, _0207778C ; =0x0209883C
	add r4, sp, #8
	add r7, r0, #0
	mov ip, r1
	ldmia r5!, {r0, r1}
	add r6, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	mov r1, ip
	str r0, [r4]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	add r0, sp, #0x24
	str r0, [sp, #0x14]
	ldr r0, _02077790 ; =MATH_SHA1Init
	str r0, [sp, #0x18]
	ldr r0, _02077794 ; =MATH_SHA1Update
	str r0, [sp, #0x1c]
	ldr r0, _02077798 ; =MATH_SHA1GetHash
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xb0]
	str r0, [sp]
	add r0, r7, #0
	str r6, [sp, #4]
	bl MATHi_CalcHMAC
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207778C: .word 0x0209883C
_02077790: .word MATH_SHA1Init
_02077794: .word MATH_SHA1Update
_02077798: .word MATH_SHA1GetHash
	thumb_func_end MATH_CalcHMACSHA1