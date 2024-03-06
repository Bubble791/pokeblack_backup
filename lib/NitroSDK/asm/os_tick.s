	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"
    
	.public OS_EnableProtectionUnit
	.public OS_DisableProtectionUnit

	.text


	thumb_func_start OSi_SetTimerReserved
OSi_SetTimerReserved: ; 0x0207BA64
	ldr r1, _0207BA78 ; =0x0214C56C
	mov r2, #1
	lsl r2, r0
	lsl r0, r2, #0x10
	ldrh r3, [r1]
	lsr r0, r0, #0x10
	orr r0, r3
	strh r0, [r1]
	bx lr
	nop
_0207BA78: .word 0x0214C56C
	thumb_func_end OSi_SetTimerReserved

	thumb_func_start OS_InitTick
OS_InitTick: ; 0x0207BA7C
	push {r3, r4, r5, lr}
	ldr r5, _0207BAB4 ; =0x0214C570
	ldrh r0, [r5]
	cmp r0, #0
	bne _0207BAB2
	mov r0, #1
	strh r0, [r5]
	mov r4, #0
	mov r0, #0
	bl OSi_SetTimerReserved
	str r4, [r5, #8]
	ldr r1, _0207BAB8 ; =0x04000102
	str r4, [r5, #0xc]
	strh r4, [r1]
	sub r0, r1, #2
	strh r4, [r0]
	mov r0, #0xc1
	strh r0, [r1]
	ldr r1, _0207BABC ; =OSi_CountUpTick
	mov r0, #8
	bl OS_SetIrqFunction
	mov r0, #8
	bl OS_EnableIrqMask
	str r4, [r5, #4]
_0207BAB2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207BAB4: .word 0x0214C570
_0207BAB8: .word 0x04000102
_0207BABC: .word OSi_CountUpTick
	thumb_func_end OS_InitTick

	thumb_func_start OS_IsTickAvailable
OS_IsTickAvailable: ; 0x0207BAC0
	ldr r0, _0207BAC8 ; =0x0214C570
	ldrh r0, [r0]
	bx lr
	nop
_0207BAC8: .word 0x0214C570
	thumb_func_end OS_IsTickAvailable

	thumb_func_start OSi_CountUpTick
OSi_CountUpTick: ; 0x0207BACC
	ldr r0, _0207BAFC ; =0x0214C570
	mov r3, #0
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	add r2, r2, #1
	adc r1, r3
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0207BAF0
	ldr r2, _0207BB00 ; =0x04000102
	strh r3, [r2]
	sub r1, r2, #2
	strh r3, [r1]
	mov r1, #0xc1
	strh r1, [r2]
	str r3, [r0, #4]
_0207BAF0:
	ldr r1, _0207BB04 ; =OSi_CountUpTick
	ldr r3, _0207BB08 ; =sub_02079E20
	mov r0, #0
	mov r2, #0
	bx r3
	nop
_0207BAFC: .word 0x0214C570
_0207BB00: .word 0x04000102
_0207BB04: .word OSi_CountUpTick
_0207BB08: .word sub_02079E20
	thumb_func_end OSi_CountUpTick

	thumb_func_start OS_GetTick
OS_GetTick: ; 0x0207BB0C
	push {r4, r5, lr}
	sub sp, #0xc
	blx OS_DisableInterrupts
	ldr r1, _0207BB74 ; =0x04000100
	add r3, sp, #0
	ldrh r1, [r1]
	ldr r2, _0207BB78 ; =0x0000FFFF
	strh r1, [r3]
	ldr r1, _0207BB7C ; =0x0214C570
	ldr r4, [r1, #8]
	ldr r5, [r1, #0xc]
	mov r1, #0
	and r5, r2
	mvn r1, r1
	add r2, r4, #0
	and r2, r1
	str r2, [sp, #4]
	ldr r1, _0207BB80 ; =0x04000214
	str r5, [sp, #8]
	ldr r2, [r1]
	mov r1, #8
	tst r2, r1
	beq _0207BB52
	ldrh r2, [r3]
	lsl r1, r1, #0xc
	tst r1, r2
	bne _0207BB52
	ldr r2, [sp, #4]
	mov r1, #0
	ldr r3, [sp, #8]
	add r2, r2, #1
	adc r3, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
_0207BB52:
	blx OS_RestoreInterrupts
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	lsr r0, r2, #0x10
	lsl r1, r3, #0x10
	orr r1, r0
	add r0, sp, #0
	lsl r3, r2, #0x10
	ldrh r2, [r0]
	asr r0, r2, #0x1f
	orr r1, r0
	add r0, r3, #0
	orr r0, r2
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0207BB74: .word 0x04000100
_0207BB78: .word 0x0000FFFF
_0207BB7C: .word 0x0214C570
_0207BB80: .word 0x04000214
	thumb_func_end OS_GetTick

	thumb_func_start OS_GetTickLo
OS_GetTickLo: ; 0x0207BB84
	ldr r0, _0207BB8C ; =0x04000100
	ldrh r0, [r0]
	bx lr
	nop
_0207BB8C: .word 0x04000100
	thumb_func_end OS_GetTickLo