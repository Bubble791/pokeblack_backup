	.include "asm/macros.inc"
	.include "gx_bgcnt.inc"
	.include "global.inc"

	.text

	thumb_func_start G2_GetBG0ScrPtr
G2_GetBG0ScrPtr: ; 0x02075100
	ldr r2, _02075128 ; =0x04000008
	mov r0, #0x1f
	ldrh r1, [r2]
	lsl r0, r0, #8
	sub r2, #8
	and r0, r1
	mov r1, #0xe
	ldr r2, [r2]
	lsl r1, r1, #0x1a
	and r1, r2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0x10
	mov r1, #6
	asr r0, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0xb
	add r1, r2, r1
	add r0, r0, r1
	bx lr
	nop
_02075128: .word 0x04000008
	thumb_func_end G2_GetBG0ScrPtr

	thumb_func_start G2S_GetBG0ScrPtr
G2S_GetBG0ScrPtr: ; 0x0207512C
	ldr r0, _02075144 ; =0x04001008
	ldrh r1, [r0]
	mov r0, #0x1f
	lsl r0, r0, #8
	and r0, r1
	asr r0, r0, #8
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
	nop
_02075144: .word 0x04001008
	thumb_func_end G2S_GetBG0ScrPtr

	thumb_func_start G2_GetBG1ScrPtr
G2_GetBG1ScrPtr: ; 0x02075148
	ldr r2, _02075170 ; =0x0400000A
	mov r0, #0x1f
	ldrh r1, [r2]
	lsl r0, r0, #8
	sub r2, #0xa
	and r0, r1
	mov r1, #0xe
	ldr r2, [r2]
	lsl r1, r1, #0x1a
	and r1, r2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0x10
	mov r1, #6
	asr r0, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0xb
	add r1, r2, r1
	add r0, r0, r1
	bx lr
	nop
_02075170: .word 0x0400000A
	thumb_func_end G2_GetBG1ScrPtr

	thumb_func_start G2S_GetBG1ScrPtr
G2S_GetBG1ScrPtr: ; 0x02075174
	ldr r0, _0207518C ; =0x0400100A
	ldrh r1, [r0]
	mov r0, #0x1f
	lsl r0, r0, #8
	and r0, r1
	asr r0, r0, #8
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
	nop
_0207518C: .word 0x0400100A
	thumb_func_end G2S_GetBG1ScrPtr

	arm_func_start G2_GetBG2ScrPtr
G2_GetBG2ScrPtr: ; 0x02075190
	mov r0, #0x4000000
	ldr r1, [r0]
	ldrh r3, [r0, #0xc]
	ldr r0, [r0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _0207520C
_020751C4: ; jump table
	b _020751E0 ; case 0
	b _020751E0 ; case 1
	b _020751E0 ; case 2
	b _020751E0 ; case 3
	b _020751E0 ; case 4
	b _020751EC ; case 5
	b _02075204 ; case 6
_020751E0:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020751EC:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_02075204:
	mov r0, #0x6000000
	bx lr
_0207520C:
	mov r0, #0
	bx lr
	arm_func_end G2_GetBG2ScrPtr

	thumb_func_start G2S_GetBG2ScrPtr
G2S_GetBG2ScrPtr: ; 0x02075214
	ldr r2, _02075274 ; =0x04001000
	mov r0, #7
	ldr r1, [r2]
	add r3, r1, #0
	and r3, r0
	mov r0, #0x1f
	ldrh r1, [r2, #0xc]
	lsl r0, r0, #8
	and r0, r1
	lsr r0, r0, #8
	cmp r3, #6
	bhi _0207526E
	add r2, r3, r3
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02075238: ; jump table
	.short _02075246 - _02075238 - 2 ; case 0
	.short _02075246 - _02075238 - 2 ; case 1
	.short _02075246 - _02075238 - 2 ; case 2
	.short _02075246 - _02075238 - 2 ; case 3
	.short _02075246 - _02075238 - 2 ; case 4
	.short _02075250 - _02075238 - 2 ; case 5
	.short _0207526A - _02075238 - 2 ; case 6
_02075246:
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075250:
	mov r2, #0x80
	tst r1, r2
	beq _02075260
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075260:
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_0207526A:
	mov r0, #0
	bx lr
_0207526E:
	mov r0, #0
	bx lr
	nop
_02075274: .word 0x04001000
	thumb_func_end G2S_GetBG2ScrPtr

	arm_func_start G2_GetBG3ScrPtr
G2_GetBG3ScrPtr: ; 0x02075278
	mov r0, #0x4000000
	ldr r1, [r0]
	ldrh r3, [r0, #0xe]
	ldr r0, [r0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _020752F4
_020752AC: ; jump table
	b _020752C8 ; case 0
	b _020752C8 ; case 1
	b _020752C8 ; case 2
	b _020752D4 ; case 3
	b _020752D4 ; case 4
	b _020752D4 ; case 5
	b _020752EC ; case 6
_020752C8:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020752D4:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_020752EC:
	mov r0, #0
	bx lr
_020752F4:
	mov r0, #0
	bx lr
	arm_func_end G2_GetBG3ScrPtr

	thumb_func_start G2S_GetBG3ScrPtr
G2S_GetBG3ScrPtr: ; 0x020752FC
	ldr r2, _0207535C ; =0x04001000
	mov r0, #7
	ldr r1, [r2]
	add r3, r1, #0
	and r3, r0
	mov r0, #0x1f
	ldrh r1, [r2, #0xe]
	lsl r0, r0, #8
	and r0, r1
	lsr r0, r0, #8
	cmp r3, #6
	bhi _02075356
	add r2, r3, r3
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02075320: ; jump table
	.short _0207532E - _02075320 - 2 ; case 0
	.short _0207532E - _02075320 - 2 ; case 1
	.short _0207532E - _02075320 - 2 ; case 2
	.short _02075338 - _02075320 - 2 ; case 3
	.short _02075338 - _02075320 - 2 ; case 4
	.short _02075338 - _02075320 - 2 ; case 5
	.short _02075352 - _02075320 - 2 ; case 6
_0207532E:
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075338:
	mov r2, #0x80
	tst r1, r2
	beq _02075348
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075348:
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075352:
	mov r0, #0
	bx lr
_02075356:
	mov r0, #0
	bx lr
	nop
_0207535C: .word 0x04001000
	thumb_func_end G2S_GetBG3ScrPtr

	thumb_func_start G2_GetBG0CharPtr
G2_GetBG0CharPtr: ; 0x02075360
	ldr r2, _02075384 ; =0x04000008
	mov r0, #0x3c
	ldrh r1, [r2]
	sub r2, #8
	ldr r2, [r2]
	and r0, r1
	mov r1, #7
	lsl r1, r1, #0x18
	and r1, r2
	lsr r1, r1, #0x18
	lsl r2, r1, #0x10
	mov r1, #6
	asr r0, r0, #2
	lsl r1, r1, #0x18
	lsl r0, r0, #0xe
	add r1, r2, r1
	add r0, r0, r1
	bx lr
	.align 2, 0
_02075384: .word 0x04000008
	thumb_func_end G2_GetBG0CharPtr

	thumb_func_start G2S_GetBG0CharPtr
G2S_GetBG0CharPtr: ; 0x02075388
	ldr r0, _0207539C ; =0x04001008
	ldrh r1, [r0]
	mov r0, #0x3c
	and r0, r1
	asr r0, r0, #2
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
	.align 2, 0
_0207539C: .word 0x04001008
	thumb_func_end G2S_GetBG0CharPtr

	thumb_func_start G2_GetBG1CharPtr
G2_GetBG1CharPtr: ; 0x020753A0
	ldr r2, _020753C4 ; =0x0400000A
	mov r0, #0x3c
	ldrh r1, [r2]
	sub r2, #0xa
	ldr r2, [r2]
	and r0, r1
	mov r1, #7
	lsl r1, r1, #0x18
	and r1, r2
	lsr r1, r1, #0x18
	lsl r2, r1, #0x10
	mov r1, #6
	asr r0, r0, #2
	lsl r1, r1, #0x18
	lsl r0, r0, #0xe
	add r1, r2, r1
	add r0, r0, r1
	bx lr
	.align 2, 0
_020753C4: .word 0x0400000A
	thumb_func_end G2_GetBG1CharPtr

	thumb_func_start G2S_GetBG1CharPtr
G2S_GetBG1CharPtr: ; 0x020753C8
	ldr r0, _020753DC ; =0x0400100A
	ldrh r1, [r0]
	mov r0, #0x3c
	and r0, r1
	asr r0, r0, #2
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
	.align 2, 0
_020753DC: .word 0x0400100A
	thumb_func_end G2S_GetBG1CharPtr

	thumb_func_start G2_GetBG2CharPtr
G2_GetBG2CharPtr: ; 0x020753E0
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	mov r0, #7
	and r1, r0
	ldrh r0, [r2, #0xc]
	cmp r1, #5
	blt _020753F6
	mov r1, #0x80
	tst r1, r0
	bne _02075418
_020753F6:
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r2, [r1]
	mov r1, #7
	lsl r1, r1, #0x18
	and r1, r2
	lsr r1, r1, #0x18
	lsl r2, r1, #0x10
	mov r1, #6
	lsl r1, r1, #0x18
	add r2, r2, r1
	mov r1, #0x3c
	and r0, r1
	lsr r0, r0, #2
	lsl r0, r0, #0xe
	add r0, r2, r0
	bx lr
_02075418:
	mov r0, #0
	bx lr
	thumb_func_end G2_GetBG2CharPtr

	thumb_func_start G2S_GetBG2CharPtr
G2S_GetBG2CharPtr: ; 0x0207541C
	ldr r2, _02075444 ; =0x04001000
	mov r0, #7
	ldr r1, [r2]
	and r0, r1
	ldrh r1, [r2, #0xc]
	cmp r0, #5
	blt _02075430
	mov r0, #0x80
	tst r0, r1
	bne _02075440
_02075430:
	mov r0, #0x3c
	and r0, r1
	lsr r0, r0, #2
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_02075440:
	mov r0, #0
	bx lr
	.align 2, 0
_02075444: .word 0x04001000
	thumb_func_end G2S_GetBG2CharPtr

	thumb_func_start G2_GetBG3CharPtr
G2_GetBG3CharPtr: ; 0x02075448
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	mov r0, #7
	and r1, r0
	ldrh r0, [r2, #0xe]
	cmp r1, #3
	blt _02075462
	cmp r1, #6
	bge _02075484
	mov r1, #0x80
	tst r1, r0
	bne _02075484
_02075462:
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r2, [r1]
	mov r1, #7
	lsl r1, r1, #0x18
	and r1, r2
	lsr r1, r1, #0x18
	lsl r2, r1, #0x10
	mov r1, #6
	lsl r1, r1, #0x18
	add r2, r2, r1
	mov r1, #0x3c
	and r0, r1
	lsr r0, r0, #2
	lsl r0, r0, #0xe
	add r0, r2, r0
	bx lr
_02075484:
	mov r0, #0
	bx lr
	thumb_func_end G2_GetBG3CharPtr

	thumb_func_start G2S_GetBG3CharPtr
G2S_GetBG3CharPtr: ; 0x02075488
	ldr r2, _020754B4 ; =0x04001000
	mov r0, #7
	ldr r1, [r2]
	and r0, r1
	ldrh r1, [r2, #0xe]
	cmp r0, #3
	blt _020754A0
	cmp r0, #6
	bge _020754B0
	mov r0, #0x80
	tst r0, r1
	bne _020754B0
_020754A0:
	mov r0, #0x3c
	and r0, r1
	lsr r0, r0, #2
	lsl r1, r0, #0xe
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
_020754B0:
	mov r0, #0
	bx lr
	.align 2, 0
_020754B4: .word 0x04001000
	thumb_func_end G2S_GetBG3CharPtr
