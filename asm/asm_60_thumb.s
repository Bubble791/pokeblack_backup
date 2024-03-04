	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_020752FC
sub_020752FC: ; 0x020752FC
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
	thumb_func_end sub_020752FC

	thumb_func_start sub_02075360
sub_02075360: ; 0x02075360
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
	thumb_func_end sub_02075360

	thumb_func_start sub_02075388
sub_02075388: ; 0x02075388
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
	thumb_func_end sub_02075388

	thumb_func_start sub_020753A0
sub_020753A0: ; 0x020753A0
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
	thumb_func_end sub_020753A0

	thumb_func_start sub_020753C8
sub_020753C8: ; 0x020753C8
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
	thumb_func_end sub_020753C8

	thumb_func_start sub_020753E0
sub_020753E0: ; 0x020753E0
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
	thumb_func_end sub_020753E0

	thumb_func_start sub_0207541C
sub_0207541C: ; 0x0207541C
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
	thumb_func_end sub_0207541C

	thumb_func_start sub_02075448
sub_02075448: ; 0x02075448
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
	thumb_func_end sub_02075448

	thumb_func_start sub_02075488
sub_02075488: ; 0x02075488
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
	thumb_func_end sub_02075488

	thumb_func_start sub_020754B8
sub_020754B8: ; 0x020754B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02075520 ; =0x0209B528
	add r4, r0, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	add r3, r2, #0
	cmp r6, r1
	beq _02075510
	cmp r3, #0x1c
	bls _02075510
	cmp r6, #3
	bls _020754FC
	mov r1, #5
	lsl r1, r1, #0x18
	add r7, r5, r1
	add r1, r4, #0
	orr r1, r7
	add r5, r3, #0
	orr r5, r1
	mov r1, #3
	tst r1, r5
	bne _020754F4
	sub r0, r6, #4
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02075524
	pop {r3, r4, r5, r6, r7, pc}
_020754F4:
	add r1, r7, #0
	blx sub_0207863C
	pop {r3, r4, r5, r6, r7, pc}
_020754FC:
	mov r2, #5
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_020780E8
	pop {r3, r4, r5, r6, r7, pc}
_02075510:
	mov r1, #5
	lsl r1, r1, #0x18
	add r0, r4, #0
	add r1, r5, r1
	add r2, r3, #0
	blx sub_0207863C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02075520: .word 0x0209B528
	thumb_func_end sub_020754B8

	thumb_func_start sub_02075524
sub_02075524: ; 0x02075524
	bx pc
	nop
	thumb_func_end sub_02075524

