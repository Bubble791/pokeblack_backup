	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207B124
sub_0207B124: ; 0x0207B124
	ldr r3, _0207B128 ; =sub_0207B12C
	bx r3
	.align 2, 0
_0207B128: .word sub_0207B12C
	thumb_func_end sub_0207B124

	thumb_func_start sub_0207B12C
sub_0207B12C: ; 0x0207B12C
	push {r3, lr}
	bl PXI_Init
	bl sub_0207B18C
	bl sub_02079FE4
	bl sub_0207B23C
	bl sub_02079D10
	bl sub_02079ED8
	bl sub_0207B894
	bl MI_Init
	bl sub_0207BE40
	bl sub_0207C4FC
	bl sub_0207A4A4
	blx OS_InitReset
	bl sub_0200548C
	bl sub_0206EDE0
	bl MI_InitWramManager
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0207B176
	bl sub_0207F6CC
_0207B176:
	bl sub_0207EBB8
	blx sub_0207B104
	bl OS_IsRunOnTwl
	cmp r0, #1
	bne _0207B18A
	blx sub_0207C888
_0207B18A:
	pop {r3, pc}
	thumb_func_end sub_0207B12C

	thumb_func_start sub_0207B18C
sub_0207B18C: ; 0x0207B18C
	push {r3, lr}
	ldr r0, _0207B238 ; =0x0214C4A4
	ldr r1, [r0]
	cmp r1, #0
	bne _0207B236
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	bl sub_0207B2B0
	add r1, r0, #0
	mov r0, #0
	bl sub_0207B40C
	mov r0, #0
	bl sub_0207B374
	add r1, r0, #0
	mov r0, #0
	bl sub_0207B418
	mov r0, #2
	mov r1, #0
	bl sub_0207B418
	mov r0, #2
	mov r1, #0
	bl sub_0207B40C
	mov r0, #3
	bl sub_0207B2B0
	add r1, r0, #0
	mov r0, #3
	bl sub_0207B40C
	mov r0, #3
	bl sub_0207B374
	add r1, r0, #0
	mov r0, #3
	bl sub_0207B418
	mov r0, #4
	bl sub_0207B2B0
	add r1, r0, #0
	mov r0, #4
	bl sub_0207B40C
	mov r0, #4
	bl sub_0207B374
	add r1, r0, #0
	mov r0, #4
	bl sub_0207B418
	mov r0, #5
	bl sub_0207B2B0
	add r1, r0, #0
	mov r0, #5
	bl sub_0207B40C
	mov r0, #5
	bl sub_0207B374
	add r1, r0, #0
	mov r0, #5
	bl sub_0207B418
	mov r0, #6
	bl sub_0207B2B0
	add r1, r0, #0
	mov r0, #6
	bl sub_0207B40C
	mov r0, #6
	bl sub_0207B374
	add r1, r0, #0
	mov r0, #6
	bl sub_0207B418
_0207B236:
	pop {r3, pc}
	.align 2, 0
_0207B238: .word 0x0214C4A4
	thumb_func_end sub_0207B18C

	thumb_func_start sub_0207B23C
sub_0207B23C: ; 0x0207B23C
	push {r4, lr}
	bl sub_0207AC24
	mov r0, #2
	mov r4, #2
	bl sub_0207B2B0
	add r1, r0, #0
	mov r0, #2
	bl sub_0207B40C
	mov r0, #2
	bl sub_0207B374
	add r1, r0, #0
	mov r0, #2
	bl sub_0207B418
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207B27E
	mov r0, #1
	lsl r1, r4, #0x18
	mov r2, #0x2a
	blx sub_0207B86C
	ldr r1, _0207B284 ; =0x027FF000
	add r0, r4, #0
	mov r2, #0x16
	blx sub_0207B86C
	pop {r4, pc}
_0207B27E:
	bl sub_0207B288
	pop {r4, pc}
	.align 2, 0
_0207B284: .word 0x027FF000
	thumb_func_end sub_0207B23C

	thumb_func_start sub_0207B288
sub_0207B288: ; 0x0207B288
	bx pc
	nop
	thumb_func_end sub_0207B288
_0207B28C:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xED, 0x92, 0x76, 0x02

	thumb_func_start sub_0207B298
sub_0207B298: ; 0x0207B298
	lsl r1, r0, #2
	ldr r0, _0207B2A0 ; =0x02FFFDC4
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_0207B2A0: .word 0x02FFFDC4
	thumb_func_end sub_0207B298

	thumb_func_start sub_0207B2A4
sub_0207B2A4: ; 0x0207B2A4
	lsl r1, r0, #2
	ldr r0, _0207B2AC ; =0x02FFFDA0
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_0207B2AC: .word 0x02FFFDA0
	thumb_func_end sub_0207B2A4

	thumb_func_start sub_0207B2B0
sub_0207B2B0: ; 0x0207B2B0
	push {r4, lr}
	cmp r0, #6
	bhi _0207B354
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207B2C2: ; jump table
	.short _0207B2D0 - _0207B2C2 - 2 ; case 0
	.short _0207B354 - _0207B2C2 - 2 ; case 1
	.short _0207B2E2 - _0207B2C2 - 2 ; case 2
	.short _0207B31C - _0207B2C2 - 2 ; case 3
	.short _0207B322 - _0207B2C2 - 2 ; case 4
	.short _0207B34A - _0207B2C2 - 2 ; case 5
	.short _0207B34E - _0207B2C2 - 2 ; case 6
_0207B2D0:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B2DE
	mov r0, #0xbe
	lsl r0, r0, #0x12
	pop {r4, pc}
_0207B2DE:
	ldr r0, _0207B358 ; =0x023E0000
	pop {r4, pc}
_0207B2E2:
	ldr r0, _0207B35C ; =0x0214C4A4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0207B2EE
	mov r0, #0
	pop {r4, pc}
_0207B2EE:
	bl sub_0207AC24
	mov r1, #0xf
	add r4, r0, #0
	and r4, r1
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B30E
	cmp r4, #4
	bne _0207B308
	mov r0, #0
	pop {r4, pc}
_0207B308:
	mov r0, #0xdf
	lsl r0, r0, #0x14
	pop {r4, pc}
_0207B30E:
	cmp r4, #1
	bne _0207B316
	mov r0, #0
	pop {r4, pc}
_0207B316:
	mov r0, #0x27
	lsl r0, r0, #0x14
	pop {r4, pc}
_0207B31C:
	mov r0, #2
	lsl r0, r0, #0x18
	pop {r4, pc}
_0207B322:
	mov r1, #0xfe
	ldr r0, _0207B360 ; =0x02FE0000
	lsl r1, r1, #6
	add r2, r0, r1
	ldr r1, _0207B364 ; =0x00000800
	sub r2, r2, r1
	ldr r1, _0207B368 ; =0x00001800
	cmp r1, #0
	bne _0207B33E
	ldr r1, _0207B36C ; =0x02FE00C0
	cmp r0, r1
	bhs _0207B356
	add r0, r1, #0
	pop {r4, pc}
_0207B33E:
	bge _0207B346
	ldr r0, _0207B36C ; =0x02FE00C0
	sub r0, r0, r1
	pop {r4, pc}
_0207B346:
	sub r0, r2, r1
	pop {r4, pc}
_0207B34A:
	ldr r0, _0207B370 ; =0x02FFF680
	pop {r4, pc}
_0207B34E:
	mov r0, #0xc1
	lsl r0, r0, #0x12
	pop {r4, pc}
_0207B354:
	mov r0, #0
_0207B356:
	pop {r4, pc}
	.align 2, 0
_0207B358: .word 0x023E0000
_0207B35C: .word 0x0214C4A4
_0207B360: .word 0x02FE0000
_0207B364: .word 0x00000800
_0207B368: .word 0x00001800
_0207B36C: .word 0x02FE00C0
_0207B370: .word 0x02FFF680
	thumb_func_end sub_0207B2B0

	thumb_func_start sub_0207B374
sub_0207B374: ; 0x0207B374
	push {r4, lr}
	cmp r0, #6
	bhi _0207B3E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207B386: ; jump table
	.short _0207B394 - _0207B386 - 2 ; case 0
	.short _0207B3E8 - _0207B386 - 2 ; case 1
	.short _0207B3A4 - _0207B386 - 2 ; case 2
	.short _0207B3D6 - _0207B386 - 2 ; case 3
	.short _0207B3DA - _0207B386 - 2 ; case 4
	.short _0207B3DE - _0207B386 - 2 ; case 5
	.short _0207B3E2 - _0207B386 - 2 ; case 6
_0207B394:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B3A0
	ldr r0, _0207B3EC ; =0x0276DDE0
	pop {r4, pc}
_0207B3A0:
	ldr r0, _0207B3F0 ; =0x021FD080
	pop {r4, pc}
_0207B3A4:
	ldr r0, _0207B3F4 ; =0x0214C4A4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0207B3B0
	mov r0, #0
	pop {r4, pc}
_0207B3B0:
	bl sub_0207AC24
	mov r1, #0xf
	add r4, r0, #0
	and r4, r1
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B3CC
	mov r0, #0
	cmp r4, #4
	beq _0207B3EA
	ldr r0, _0207B3F8 ; =0x0D000000
	pop {r4, pc}
_0207B3CC:
	mov r0, #0
	cmp r4, #1
	beq _0207B3EA
	ldr r0, _0207B3FC ; =0x02400060
	pop {r4, pc}
_0207B3D6:
	ldr r0, _0207B400 ; =0x01FF93A0
	pop {r4, pc}
_0207B3DA:
	ldr r0, _0207B404 ; =0x02FE00C0
	pop {r4, pc}
_0207B3DE:
	ldr r0, _0207B408 ; =0x02FFF000
	pop {r4, pc}
_0207B3E2:
	mov r0, #0xc1
	lsl r0, r0, #0x12
	pop {r4, pc}
_0207B3E8:
	mov r0, #0
_0207B3EA:
	pop {r4, pc}
	.align 2, 0
_0207B3EC: .word 0x0276DDE0
_0207B3F0: .word 0x021FD080
_0207B3F4: .word 0x0214C4A4
_0207B3F8: .word 0x0D000000
_0207B3FC: .word 0x02400060
_0207B400: .word 0x01FF93A0
_0207B404: .word 0x02FE00C0
_0207B408: .word 0x02FFF000
	thumb_func_end sub_0207B374

	thumb_func_start sub_0207B40C
sub_0207B40C: ; 0x0207B40C
	lsl r2, r0, #2
	ldr r0, _0207B414 ; =0x02FFFDC4
	str r1, [r2, r0]
	bx lr
	.align 2, 0
_0207B414: .word 0x02FFFDC4
	thumb_func_end sub_0207B40C

	thumb_func_start sub_0207B418
sub_0207B418: ; 0x0207B418
	lsl r2, r0, #2
	ldr r0, _0207B420 ; =0x02FFFDA0
	str r1, [r2, r0]
	bx lr
	.align 2, 0
_0207B420: .word 0x02FFFDA0
	thumb_func_end sub_0207B418

	thumb_func_start sub_0207B424
sub_0207B424: ; 0x0207B424
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207B2A4
	cmp r0, #0
	bne _0207B438
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B438:
	sub r1, r4, #1
	mvn r1, r1
	add r0, r0, r4
	sub r0, r0, #1
	add r7, r1, #0
	and r7, r0
	add r0, r7, r6
	add r0, r0, r4
	sub r0, r0, #1
	add r4, r1, #0
	and r4, r0
	add r0, r5, #0
	bl sub_0207B298
	cmp r4, r0
	bls _0207B45C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B45C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207B418
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207B424

	thumb_func_start sub_0207B468
sub_0207B468: ; 0x0207B468
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r1]
	cmp r0, #0
	beq _0207B474
	str r1, [r0]
_0207B474:
	add r0, r1, #0
	bx lr
	thumb_func_end sub_0207B468

	thumb_func_start sub_0207B478
sub_0207B478: ; 0x0207B478
	ldr r3, [r1, #4]
	cmp r3, #0
	beq _0207B482
	ldr r2, [r1]
	str r2, [r3]
_0207B482:
	ldr r2, [r1]
	cmp r2, #0
	bne _0207B48C
	ldr r0, [r1, #4]
	bx lr
_0207B48C:
	ldr r1, [r1, #4]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0207B478

	thumb_func_start sub_0207B494
sub_0207B494: ; 0x0207B494
	push {r4, r5}
	add r3, r0, #0
	mov r2, #0
	cmp r0, #0
	beq _0207B4AA
_0207B49E:
	cmp r1, r3
	bls _0207B4AA
	add r2, r3, #0
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _0207B49E
_0207B4AA:
	str r3, [r1, #4]
	str r2, [r1]
	cmp r3, #0
	beq _0207B4CC
	str r1, [r3]
	ldr r5, [r1, #8]
	add r4, r1, r5
	cmp r4, r3
	bne _0207B4CC
	ldr r4, [r3, #8]
	add r4, r5, r4
	str r4, [r1, #8]
	ldr r3, [r3, #4]
	str r3, [r1, #4]
	cmp r3, #0
	beq _0207B4CC
	str r1, [r3]
_0207B4CC:
	cmp r2, #0
	beq _0207B4EC
	str r1, [r2, #4]
	ldr r4, [r2, #8]
	add r5, r2, r4
	cmp r5, r1
	bne _0207B4EE
	ldr r1, [r1, #8]
	add r1, r4, r1
	str r1, [r2, #8]
	str r3, [r2, #4]
	cmp r3, #0
	beq _0207B4EE
	str r2, [r3]
	pop {r4, r5}
	bx lr
_0207B4EC:
	add r0, r1, #0
_0207B4EE:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_0207B494

	thumb_func_start sub_0207B4F4
sub_0207B4F4: ; 0x0207B4F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	blx OS_DisableInterrupts
	ldr r1, _0207B594 ; =0x0214C4AC
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r7, r0, #0
	cmp r1, #0
	bne _0207B514
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B514:
	cmp r4, #0
	bge _0207B51A
	ldr r4, [r1]
_0207B51A:
	mov r0, #0xc
	add r5, #0x20
	ldr r1, [r1, #0x10]
	mul r0, r4
	add r6, r1, r0
	add r5, #0x1f
	mov r0, #0x1f
	bic r5, r0
	ldr r0, [r6, #4]
	add r4, r0, #0
	cmp r0, #0
	beq _0207B53E
_0207B532:
	ldr r1, [r4, #8]
	cmp r5, r1
	ble _0207B53E
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _0207B532
_0207B53E:
	cmp r4, #0
	bne _0207B54C
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B54C:
	ldr r1, [r4, #8]
	sub r1, r1, r5
	cmp r1, #0x40
	bhs _0207B55C
	add r1, r4, #0
	bl sub_0207B478
	b _0207B57A
_0207B55C:
	str r5, [r4, #8]
	add r0, r4, r5
	str r1, [r0, #8]
	ldr r1, [r4]
	str r1, [r4, r5]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	cmp r1, #0
	beq _0207B570
	str r0, [r1]
_0207B570:
	ldr r1, [r0]
	cmp r1, #0
	beq _0207B57A
	str r0, [r1, #4]
	b _0207B57C
_0207B57A:
	str r0, [r6, #4]
_0207B57C:
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl sub_0207B468
	str r0, [r6, #8]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	add r4, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207B594: .word 0x0214C4AC
	thumb_func_end sub_0207B4F4

	thumb_func_start sub_0207B598
sub_0207B598: ; 0x0207B598
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	lsl r1, r6, #2
	ldr r0, _0207B5D8 ; =0x0214C4AC
	cmp r5, #0
	ldr r0, [r0, r1]
	bge _0207B5B2
	ldr r5, [r0]
_0207B5B2:
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mul r0, r5
	add r5, r1, r0
	sub r4, #0x20
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0207B478
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0207B494
	str r0, [r5, #4]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207B5D8: .word 0x0214C4AC
	thumb_func_end sub_0207B598

	thumb_func_start sub_0207B5DC
sub_0207B5DC: ; 0x0207B5DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	add r6, r3, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	lsl r1, r5, #2
	ldr r0, _0207B64C ; =0x0214C4AC
	mov r5, #0
	str r4, [r0, r1]
	mov r0, #0xc
	mul r0, r6
	mov ip, r0
	add r0, r4, #0
	add r0, #0x14
	str r0, [r4, #0x10]
	str r6, [r4, #4]
	cmp r6, #0
	ble _0207B624
	sub r0, r5, #1
	add r6, r5, #0
	mov r7, #0xc
_0207B60E:
	add r1, r5, #0
	ldr r2, [r4, #0x10]
	mul r1, r7
	add r3, r2, r1
	str r0, [r2, r1]
	str r6, [r3, #8]
	str r6, [r3, #4]
	ldr r1, [r4, #4]
	add r5, r5, #1
	cmp r5, r1
	blt _0207B60E
_0207B624:
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	ldr r1, [r4, #0x10]
	mov r0, ip
	add r0, r1, r0
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	str r0, [r4, #8]
	ldr r0, [sp]
	bic r0, r1
	str r0, [sp]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	ldr r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207B64C: .word 0x0214C4AC
	thumb_func_end sub_0207B5DC

	thumb_func_start sub_0207B650
sub_0207B650: ; 0x0207B650
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	blx OS_DisableInterrupts
	mov ip, r0
	lsl r1, r4, #2
	ldr r0, _0207B6B4 ; =0x0214C4AC
	add r6, #0x1f
	ldr r1, [r0, r1]
	mov r0, #0x1f
	ldr r2, [r1, #4]
	bic r6, r0
	bic r7, r0
	mov r4, #0
	cmp r2, #0
	ble _0207B6A6
	ldr r1, [r1, #0x10]
	mov r3, #0xc
_0207B678:
	add r5, r4, #0
	mul r5, r3
	add r0, r1, r5
	ldr r5, [r1, r5]
	cmp r5, #0
	bge _0207B6A0
	sub r1, r7, r6
	str r1, [r0]
	mov r2, #0
	str r2, [r6]
	str r2, [r6, #4]
	ldr r1, [r0]
	str r1, [r6, #8]
	str r6, [r0, #4]
	str r2, [r0, #8]
	mov r0, ip
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B6A0:
	add r4, r4, #1
	cmp r4, r2
	blt _0207B678
_0207B6A6:
	mov r0, ip
	blx OS_RestoreInterrupts
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207B6B4: .word 0x0214C4AC
	thumb_func_end sub_0207B650

	thumb_func_start sub_0207B6B8
sub_0207B6B8: ; 0x0207B6B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, _0207B728 ; =0x0214C4AC
	lsl r1, r6, #2
	ldr r4, [r0, r1]
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207B71A
	ldr r0, _0207B72C ; =0x0209B714
	ldr r0, [r0]
	cmp r0, #0
	bge _0207B71A
	ldr r2, [r4, #4]
	mov r5, #0
	cmp r2, #0
	ble _0207B71A
	ldr r1, [r4, #0x10]
	mov r3, #0xc
_0207B6E4:
	add r4, r5, #0
	mul r4, r3
	add r0, r1, r4
	ldr r4, [r1, r4]
	cmp r4, #0
	bge _0207B714
	mov r3, #1
	lsl r3, r3, #0xe
	str r3, [r0]
	mov r2, #0
	lsl r1, r3, #0xb
	str r2, [r1]
	str r2, [r1, #4]
	str r3, [r1, #8]
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, _0207B72C ; =0x0209B714
	str r6, [r0, #4]
	str r5, [r0]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207B714:
	add r5, r5, #1
	cmp r5, r2
	blt _0207B6E4
_0207B71A:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207B728: .word 0x0214C4AC
_0207B72C: .word 0x0209B714
	thumb_func_end sub_0207B6B8
_0207B730:
	.byte 0x10, 0xB5, 0x0C, 0x1C, 0x00, 0xF0, 0xD6, 0xEC, 0x00, 0xF0, 0xDE, 0xEC, 0x18, 0x3C, 0x20, 0x68
	.byte 0x20, 0x38, 0x10, 0xBD

	thumb_func_start sub_0207B744
sub_0207B744: ; 0x0207B744
	push {r4, lr}
	add r4, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207B768
	mov r0, #0xd
	lsl r0, r0, #0x18
	cmp r4, r0
	blo _0207B764
	mov r0, #0xe
	lsl r0, r0, #0x18
	cmp r4, r0
	bhs _0207B764
	mov r0, #1
	pop {r4, pc}
_0207B764:
	mov r0, #0
	pop {r4, pc}
_0207B768:
	mov r0, #9
	lsl r0, r0, #0x16
	cmp r4, r0
	blo _0207B77C
	mov r0, #0xa
	lsl r0, r0, #0x16
	cmp r4, r0
	bhs _0207B77C
	mov r0, #1
	pop {r4, pc}
_0207B77C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0207B744

	thumb_func_start sub_0207B780
sub_0207B780: ; 0x0207B780
	mov r1, #5
	lsl r1, r1, #0x18
	cmp r0, r1
	blo _0207B792
	ldr r1, _0207B798 ; =0x07000800
	cmp r0, r1
	bhs _0207B792
	mov r0, #1
	bx lr
_0207B792:
	mov r0, #0
	bx lr
	nop
_0207B798: .word 0x07000800
	thumb_func_end sub_0207B780

