	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02076138
sub_02076138: ; 0x02076138
	push {r3, lr}
	bl sub_02076CA0
	ldr r2, _02076160 ; =0x0214C06C
	mov r1, #6
	str r0, [r2, #0x14]
	mul r1, r0
	ldr r0, _02076164 ; =0x020987D0
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r2, #4]
	ldr r0, _02076168 ; =0x020987D2
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r2, #0x18]
	ldr r0, _0207616C ; =0x020987D4
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [r2, #0x1c]
	pop {r3, pc}
	.align 2, 0
_02076160: .word 0x0214C06C
_02076164: .word 0x020987D0
_02076168: .word 0x020987D2
_0207616C: .word 0x020987D4
	thumb_func_end sub_02076138

	thumb_func_start sub_02076170
sub_02076170: ; 0x02076170
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r3, r1, #0
	ldr r1, _02076270 ; =0x0214C06C
	add r5, r0, #0
	ldr r7, [r1, #0x18]
	add r6, r2, #0
	cmp r7, #0
	bne _02076188
_02076182:
	ldr r0, [r1, #4]
	add r2, r0, r3
	b _02076228
_02076188:
	ldr r0, [r1, #0x1c]
	add r2, r3, r6
	cmp r2, r0
	bhs _02076192
	b _02076182
_02076192:
	cmp r3, r0
	blo _0207619C
	add r1, r7, r3
	sub r2, r1, r0
	b _02076228
_0207619C:
	sub r4, r0, r3
	ldr r0, _02076274 ; =0x0209B528
	ldr r2, [r1, #4]
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020761D2
	cmp r4, #0x30
	bls _020761D2
	cmp r0, #3
	bls _020761C2
	add r2, r2, r3
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02075524
	b _020761DC
_020761C2:
	mov r1, #1
	str r1, [sp]
	add r2, r2, r3
	add r1, r5, #0
	add r3, r4, #0
	bl sub_02078080
	b _020761DC
_020761D2:
	add r1, r2, r3
	add r0, r5, #0
	add r2, r4, #0
	blx MIi_CpuCopy32
_020761DC:
	ldr r0, _02076274 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _0207621A
	cmp r0, #3
	bls _02076202
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r0, #4
	add r1, r5, r4
	add r2, r7, #0
	sub r3, r6, r4
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076202:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r1, r5, r4
	add r2, r7, #0
	sub r3, r6, r4
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0207621A:
	add r0, r5, r4
	add r1, r7, #0
	sub r2, r6, r4
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076228:
	ldr r0, _02076274 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076262
	cmp r0, #3
	bls _0207624C
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r0, #4
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0207624C:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076262:
	add r1, r2, #0
	add r0, r5, #0
	add r2, r6, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02076270: .word 0x0214C06C
_02076274: .word 0x0209B528
	thumb_func_end sub_02076170

	thumb_func_start sub_02076278
sub_02076278: ; 0x02076278
	push {r4, lr}
	ldr r0, _020762AC ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076296
	cmp r0, #3
	bls _02076292
	sub r0, r0, #4
	bl sub_02075F20
	b _02076296
_02076292:
	bl sub_0207829C
_02076296:
	ldr r4, _020762B0 ; =0x0214C06C
	ldr r0, [r4, #0x14]
	bl sub_02076860
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	str r0, [r4, #4]
	str r0, [r4, #0x14]
	pop {r4, pc}
	nop
_020762AC: .word 0x0209B528
_020762B0: .word 0x0214C06C
	thumb_func_end sub_02076278

	thumb_func_start sub_020762B4
sub_020762B4: ; 0x020762B4
	push {r3, lr}
	bl sub_02076CB0
	ldr r1, _020762CC ; =0x0214C06C
	str r0, [r1, #0xc]
	asr r0, r0, #4
	lsl r2, r0, #1
	ldr r0, _020762D0 ; =0x020987C0
	ldrh r0, [r0, r2]
	lsl r0, r0, #0xc
	str r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_020762CC: .word 0x0214C06C
_020762D0: .word 0x020987C0
	thumb_func_end sub_020762B4

	thumb_func_start sub_020762D4
sub_020762D4: ; 0x020762D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _0207632C ; =0x0214C06C
	add r5, r0, #0
	ldr r3, [r1, #8]
	ldr r1, _02076330 ; =0x0209B528
	add r7, r2, #0
	ldr r6, [r1]
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	beq _02076322
	cmp r6, #3
	bls _02076308
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r2, r3, r4
	sub r0, r6, #4
	add r1, r5, #0
	add r3, r7, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076308:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r2, r3, r4
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02076322:
	add r1, r3, r4
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0207632C: .word 0x0214C06C
_02076330: .word 0x0209B528
	thumb_func_end sub_020762D4

	thumb_func_start sub_02076334
sub_02076334: ; 0x02076334
	push {r4, lr}
	ldr r0, _02076364 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _02076352
	cmp r0, #3
	bls _0207634E
	sub r0, r0, #4
	bl sub_02075F20
	b _02076352
_0207634E:
	bl sub_0207829C
_02076352:
	ldr r4, _02076368 ; =0x0214C06C
	ldr r0, [r4, #0xc]
	bl sub_0207695C
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_02076364: .word 0x0209B528
_02076368: .word 0x0214C06C
	thumb_func_end sub_02076334

	thumb_func_start sub_0207636C
sub_0207636C: ; 0x0207636C
	push {r3, lr}
	bl sub_02076CC0
	ldr r1, _020763BC ; =0x0214C06C
	cmp r0, #0xc
	str r0, [r1]
	bhi _020763B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02076386: ; jump table
	.short _020763B8 - _02076386 - 2 ; case 0
	.short _020763AE - _02076386 - 2 ; case 1
	.short _020763A0 - _02076386 - 2 ; case 2
	.short _020763A0 - _02076386 - 2 ; case 3
	.short _020763B4 - _02076386 - 2 ; case 4
	.short _020763B8 - _02076386 - 2 ; case 5
	.short _020763B8 - _02076386 - 2 ; case 6
	.short _020763B8 - _02076386 - 2 ; case 7
	.short _020763A8 - _02076386 - 2 ; case 8
	.short _020763B8 - _02076386 - 2 ; case 9
	.short _020763B8 - _02076386 - 2 ; case 10
	.short _020763B8 - _02076386 - 2 ; case 11
	.short _020763A8 - _02076386 - 2 ; case 12
_020763A0:
	mov r0, #0x1a
	lsl r0, r0, #0x16
	str r0, [r1, #0x10]
	pop {r3, pc}
_020763A8:
	ldr r0, _020763C0 ; =0x06840000
	str r0, [r1, #0x10]
	pop {r3, pc}
_020763AE:
	ldr r0, _020763C4 ; =0x067E0000
	str r0, [r1, #0x10]
	pop {r3, pc}
_020763B4:
	ldr r0, _020763C8 ; =0x06820000
	str r0, [r1, #0x10]
_020763B8:
	pop {r3, pc}
	nop
_020763BC: .word 0x0214C06C
_020763C0: .word 0x06840000
_020763C4: .word 0x067E0000
_020763C8: .word 0x06820000
	thumb_func_end sub_0207636C

	thumb_func_start sub_020763CC
sub_020763CC: ; 0x020763CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r3, r1, #0
	ldr r1, _0207641C ; =0x0214C06C
	mov r5, #0
	ldr r2, [r1, #0x10]
	ldr r1, _02076420 ; =0x0209B528
	mvn r5, r5
	ldr r1, [r1]
	add r4, r0, #0
	cmp r1, r5
	beq _02076410
	cmp r1, #3
	bls _020763FA
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r1, r4, #0
	bl sub_02075ED8
	add sp, #0xc
	pop {r4, r5, pc}
_020763FA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r4, #0
	bl sub_020781F0
	add sp, #0xc
	pop {r4, r5, pc}
_02076410:
	add r1, r2, #0
	add r2, r3, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0207641C: .word 0x0214C06C
_02076420: .word 0x0209B528
	thumb_func_end sub_020763CC

	thumb_func_start sub_02076424
sub_02076424: ; 0x02076424
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r3, r1, #0
	ldr r1, _0207647C ; =0x0214C06C
	mov r6, #0
	ldr r2, [r1, #0x10]
	ldr r1, _02076480 ; =0x0209B528
	mov r5, #2
	ldr r1, [r1]
	mvn r6, r6
	add r4, r0, #0
	lsl r5, r5, #0x10
	cmp r1, r6
	beq _02076470
	cmp r1, #3
	bls _02076458
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, r1, #4
	add r1, r4, #0
	add r2, r2, r5
	bl sub_02075ED8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02076458:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r4, #0
	add r2, r2, r5
	bl sub_020781F0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02076470:
	add r1, r2, r5
	add r2, r3, #0
	blx MIi_CpuCopy32
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0207647C: .word 0x0214C06C
_02076480: .word 0x0209B528
	thumb_func_end sub_02076424

	thumb_func_start sub_02076484
sub_02076484: ; 0x02076484
	push {r4, lr}
	ldr r0, _020764B4 ; =0x0209B528
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020764A2
	cmp r0, #3
	bls _0207649E
	sub r0, r0, #4
	bl sub_02075F20
	b _020764A2
_0207649E:
	bl sub_0207829C
_020764A2:
	ldr r4, _020764B8 ; =0x0214C06C
	ldr r0, [r4]
	bl sub_020769D4
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x10]
	pop {r4, pc}
	nop
_020764B4: .word 0x0209B528
_020764B8: .word 0x0214C06C
	thumb_func_end sub_02076484

	thumb_func_start sub_020764BC
sub_020764BC: ; 0x020764BC
	mov r1, #1
	tst r1, r0
	beq _020764C8
	ldr r1, _0207652C ; =0x04000240
	mov r2, #0x80
	strb r2, [r1]
_020764C8:
	mov r1, #2
	tst r1, r0
	beq _020764D4
	ldr r1, _02076530 ; =0x04000241
	mov r2, #0x80
	strb r2, [r1]
_020764D4:
	mov r1, #4
	tst r1, r0
	beq _020764E0
	ldr r1, _02076534 ; =0x04000242
	mov r2, #0x80
	strb r2, [r1]
_020764E0:
	mov r1, #8
	tst r1, r0
	beq _020764EC
	ldr r1, _02076538 ; =0x04000243
	mov r2, #0x80
	strb r2, [r1]
_020764EC:
	mov r1, #0x10
	tst r1, r0
	beq _020764F8
	ldr r1, _0207653C ; =0x04000244
	mov r2, #0x80
	strb r2, [r1]
_020764F8:
	mov r1, #0x20
	tst r1, r0
	beq _02076504
	ldr r1, _02076540 ; =0x04000245
	mov r2, #0x80
	strb r2, [r1]
_02076504:
	mov r1, #0x40
	tst r1, r0
	beq _02076510
	ldr r1, _02076544 ; =0x04000246
	mov r2, #0x80
	strb r2, [r1]
_02076510:
	mov r2, #0x80
	add r1, r0, #0
	tst r1, r2
	beq _0207651C
	ldr r1, _02076548 ; =0x04000248
	strb r2, [r1]
_0207651C:
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq _0207652A
	ldr r0, _0207654C ; =0x04000249
	mov r1, #0x80
	strb r1, [r0]
_0207652A:
	bx lr
	.align 2, 0
_0207652C: .word 0x04000240
_02076530: .word 0x04000241
_02076534: .word 0x04000242
_02076538: .word 0x04000243
_0207653C: .word 0x04000244
_02076540: .word 0x04000245
_02076544: .word 0x04000246
_02076548: .word 0x04000248
_0207654C: .word 0x04000249
	thumb_func_end sub_020764BC

	thumb_func_start sub_02076550
sub_02076550: ; 0x02076550
	ldr r1, _0207667C ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #2]
	cmp r0, #0x40
	bgt _020765C2
	blt _02076566
	b _0207666C
_02076566:
	cmp r0, #0x20
	bgt _020765BC
	cmp r0, #0
	blt _020765C0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207657A: ; jump table
	.short _02076672 - _0207657A - 2 ; case 0
	.short _0207660A - _0207657A - 2 ; case 1
	.short _020765F2 - _0207657A - 2 ; case 2
	.short _02076604 - _0207657A - 2 ; case 3
	.short _020765E0 - _0207657A - 2 ; case 4
	.short _02076626 - _0207657A - 2 ; case 5
	.short _020765EC - _0207657A - 2 ; case 6
	.short _020765FE - _0207657A - 2 ; case 7
	.short _020765D4 - _0207657A - 2 ; case 8
	.short _02076632 - _0207657A - 2 ; case 9
	.short _0207663C - _0207657A - 2 ; case 10
	.short _02076610 - _0207657A - 2 ; case 11
	.short _020765DA - _0207657A - 2 ; case 12
	.short _02076620 - _0207657A - 2 ; case 13
	.short _020765E6 - _0207657A - 2 ; case 14
	.short _020765F8 - _0207657A - 2 ; case 15
	.short _0207664E - _0207657A - 2 ; case 16
	.short _02076672 - _0207657A - 2 ; case 17
	.short _02076672 - _0207657A - 2 ; case 18
	.short _02076672 - _0207657A - 2 ; case 19
	.short _02076672 - _0207657A - 2 ; case 20
	.short _02076672 - _0207657A - 2 ; case 21
	.short _02076672 - _0207657A - 2 ; case 22
	.short _02076672 - _0207657A - 2 ; case 23
	.short _02076672 - _0207657A - 2 ; case 24
	.short _02076672 - _0207657A - 2 ; case 25
	.short _02076672 - _0207657A - 2 ; case 26
	.short _02076672 - _0207657A - 2 ; case 27
	.short _02076672 - _0207657A - 2 ; case 28
	.short _02076672 - _0207657A - 2 ; case 29
	.short _02076672 - _0207657A - 2 ; case 30
	.short _02076672 - _0207657A - 2 ; case 31
	.short _02076666 - _0207657A - 2 ; case 32
_020765BC:
	cmp r0, #0x30
	beq _02076648
_020765C0:
	b _02076672
_020765C2:
	cmp r0, #0x60
	bgt _020765CE
	bge _02076660
	cmp r0, #0x50
	beq _02076654
	b _02076672
_020765CE:
	cmp r0, #0x70
	beq _02076642
	b _02076672
_020765D4:
	mov r1, #0x81
	ldr r0, _02076680 ; =0x04000243
	b _02076670
_020765DA:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x89
	strb r1, [r0]
_020765E0:
	mov r1, #0x81
	ldr r0, _02076684 ; =0x04000242
	b _02076670
_020765E6:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_020765EC:
	ldr r0, _02076684 ; =0x04000242
	mov r1, #0x89
	strb r1, [r0]
_020765F2:
	mov r1, #0x81
	ldr r0, _02076688 ; =0x04000241
	b _02076670
_020765F8:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x99
	strb r1, [r0]
_020765FE:
	ldr r0, _02076684 ; =0x04000242
	mov r1, #0x91
	strb r1, [r0]
_02076604:
	ldr r0, _02076688 ; =0x04000241
	mov r1, #0x89
	strb r1, [r0]
_0207660A:
	mov r1, #0x81
	ldr r0, _0207668C ; =0x04000240
	b _02076670
_02076610:
	ldr r1, _0207668C ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #1]
	mov r0, #0x91
_0207661C:
	strb r0, [r1, #3]
	b _02076672
_02076620:
	ldr r0, _02076680 ; =0x04000243
	mov r1, #0x91
	strb r1, [r0]
_02076626:
	ldr r1, _0207668C ; =0x04000240
	mov r0, #0x81
_0207662A:
	strb r0, [r1]
	mov r0, #0x89
	strb r0, [r1, #2]
	b _02076672
_02076632:
	ldr r1, _0207668C ; =0x04000240
	mov r0, #0x81
	strb r0, [r1]
	mov r0, #0x89
	b _0207661C
_0207663C:
	mov r0, #0x81
	ldr r1, _02076688 ; =0x04000241
	b _0207662A
_02076642:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x99
	strb r1, [r0]
_02076648:
	ldr r0, _02076694 ; =0x04000245
	mov r1, #0x91
	strb r1, [r0]
_0207664E:
	mov r1, #0x81
	ldr r0, _02076698 ; =0x04000244
	b _02076670
_02076654:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x91
	strb r1, [r0]
	mov r1, #0x81
	sub r0, r0, #2
	b _02076670
_02076660:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x89
	strb r1, [r0]
_02076666:
	mov r1, #0x81
	ldr r0, _02076694 ; =0x04000245
	b _02076670
_0207666C:
	ldr r0, _02076690 ; =0x04000246
	mov r1, #0x81
_02076670:
	strb r1, [r0]
_02076672:
	ldr r0, _0207667C ; =0x0214C08C
	ldr r3, _0207669C ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	nop
_0207667C: .word 0x0214C08C
_02076680: .word 0x04000243
_02076684: .word 0x04000242
_02076688: .word 0x04000241
_0207668C: .word 0x04000240
_02076690: .word 0x04000246
_02076694: .word 0x04000245
_02076698: .word 0x04000244
_0207669C: .word sub_020764BC
	thumb_func_end sub_02076550

	thumb_func_start sub_020766A0
sub_020766A0: ; 0x020766A0
	ldr r1, _0207673C ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #4]
	cmp r0, #0x30
	bgt _020766D8
	bge _0207670A
	cmp r0, #0x10
	bgt _020766D2
	bge _02076710
	cmp r0, #3
	bhi _02076734
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020766CA: ; jump table
	.short _02076734 - _020766CA - 2 ; case 0
	.short _020766F8 - _020766CA - 2 ; case 1
	.short _020766FE - _020766CA - 2 ; case 2
	.short _020766F2 - _020766CA - 2 ; case 3
_020766D2:
	cmp r0, #0x20
	beq _02076728
	b _02076734
_020766D8:
	cmp r0, #0x50
	bgt _020766E4
	bge _02076716
	cmp r0, #0x40
	beq _0207672E
	b _02076734
_020766E4:
	cmp r0, #0x60
	bgt _020766EC
	beq _02076722
	b _02076734
_020766EC:
	cmp r0, #0x70
	beq _02076704
	b _02076734
_020766F2:
	ldr r0, _02076740 ; =0x04000241
	mov r1, #0x8a
	strb r1, [r0]
_020766F8:
	mov r1, #0x82
	ldr r0, _02076744 ; =0x04000240
	b _02076732
_020766FE:
	mov r1, #0x82
	ldr r0, _02076740 ; =0x04000241
	b _02076732
_02076704:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x9a
	strb r1, [r0]
_0207670A:
	ldr r0, _0207674C ; =0x04000245
	mov r1, #0x92
	strb r1, [r0]
_02076710:
	mov r1, #0x82
	ldr r0, _02076750 ; =0x04000244
	b _02076732
_02076716:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x92
	strb r1, [r0]
	mov r1, #0x82
	sub r0, r0, #2
	b _02076732
_02076722:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x8a
	strb r1, [r0]
_02076728:
	mov r1, #0x82
	ldr r0, _0207674C ; =0x04000245
	b _02076732
_0207672E:
	ldr r0, _02076748 ; =0x04000246
	mov r1, #0x82
_02076732:
	strb r1, [r0]
_02076734:
	ldr r0, _0207673C ; =0x0214C08C
	ldr r3, _02076754 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_0207673C: .word 0x0214C08C
_02076740: .word 0x04000241
_02076744: .word 0x04000240
_02076748: .word 0x04000246
_0207674C: .word 0x04000245
_02076750: .word 0x04000244
_02076754: .word sub_020764BC
	thumb_func_end sub_020766A0

	thumb_func_start sub_02076758
sub_02076758: ; 0x02076758
	ldr r1, _020767DC ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0xe]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0xe]
	cmp r0, #0x20
	bgt _0207677A
	bge _020767B4
	cmp r0, #0
	bgt _02076774
	beq _020767C6
	b _020767D2
_02076774:
	cmp r0, #0x10
	beq _02076788
	b _020767D2
_0207677A:
	cmp r0, #0x40
	bgt _02076782
	beq _0207679C
	b _020767D2
_02076782:
	cmp r0, #0x60
	beq _020767AE
	b _020767D2
_02076788:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #4
	orr r0, r1
	str r0, [r2]
	ldr r0, _020767E0 ; =0x04000244
	mov r1, #0x84
_02076798:
	strb r1, [r0]
	b _020767D2
_0207679C:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #4
	orr r0, r1
	str r0, [r2]
	mov r1, #0x8c
	ldr r0, _020767E4 ; =0x04000246
	b _02076798
_020767AE:
	ldr r0, _020767E4 ; =0x04000246
	mov r1, #0x8c
	strb r1, [r0]
_020767B4:
	mov r2, #1
	ldr r0, _020767E8 ; =0x04000245
	mov r1, #0x84
	lsl r2, r2, #0x1a
	strb r1, [r0]
	ldr r1, [r2]
	lsl r0, r2, #4
	orr r0, r1
	b _020767D0
_020767C6:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _020767EC ; =0xBFFFFFFF
	and r0, r1
_020767D0:
	str r0, [r2]
_020767D2:
	ldr r0, _020767DC ; =0x0214C08C
	ldr r3, _020767F0 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	nop
_020767DC: .word 0x0214C08C
_020767E0: .word 0x04000244
_020767E4: .word 0x04000246
_020767E8: .word 0x04000245
_020767EC: .word 0xBFFFFFFF
_020767F0: .word sub_020764BC
	thumb_func_end sub_02076758

	thumb_func_start sub_020767F4
sub_020767F4: ; 0x020767F4
	ldr r1, _0207684C ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0x10]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x10]
	cmp r0, #0
	beq _02076836
	cmp r0, #0x20
	beq _02076810
	cmp r0, #0x40
	beq _02076824
	b _02076842
_02076810:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #5
	orr r0, r1
	str r0, [r2]
	ldr r0, _02076850 ; =0x04000245
	mov r1, #0x85
_02076820:
	strb r1, [r0]
	b _02076842
_02076824:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	lsl r0, r2, #5
	orr r0, r1
	str r0, [r2]
	mov r1, #0x85
	ldr r0, _02076854 ; =0x04000246
	b _02076820
_02076836:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076858 ; =0x7FFFFFFF
	and r0, r1
	str r0, [r2]
_02076842:
	ldr r0, _0207684C ; =0x0214C08C
	ldr r3, _0207685C ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	nop
_0207684C: .word 0x0214C08C
_02076850: .word 0x04000245
_02076854: .word 0x04000246
_02076858: .word 0x7FFFFFFF
_0207685C: .word sub_020764BC
	thumb_func_end sub_020767F4

	thumb_func_start sub_02076860
sub_02076860: ; 0x02076860
	ldr r1, _02076938 ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #8]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #8]
	cmp r0, #0
	bne _0207687E
	ldr r2, _0207693C ; =0x04000060
	ldr r0, _02076940 ; =0x0000CFFE
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	b _02076930
_0207687E:
	ldr r3, _0207693C ; =0x04000060
	ldr r1, _02076944 ; =0xFFFFCFFF
	ldrh r2, [r3]
	and r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r3]
	cmp r0, #0xf
	bhi _02076930
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207689C: ; jump table
	.short _02076930 - _0207689C - 2 ; case 0
	.short _0207692A - _0207689C - 2 ; case 1
	.short _02076912 - _0207689C - 2 ; case 2
	.short _02076924 - _0207689C - 2 ; case 3
	.short _02076900 - _0207689C - 2 ; case 4
	.short _020768BC - _0207689C - 2 ; case 5
	.short _0207690C - _0207689C - 2 ; case 6
	.short _0207691E - _0207689C - 2 ; case 7
	.short _020768F4 - _0207689C - 2 ; case 8
	.short _020768C8 - _0207689C - 2 ; case 9
	.short _020768D2 - _0207689C - 2 ; case 10
	.short _020768D8 - _0207689C - 2 ; case 11
	.short _020768FA - _0207689C - 2 ; case 12
	.short _020768E8 - _0207689C - 2 ; case 13
	.short _02076906 - _0207689C - 2 ; case 14
	.short _02076918 - _0207689C - 2 ; case 15
_020768BC:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
_020768C0:
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #2]
	b _02076930
_020768C8:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	b _020768E4
_020768D2:
	mov r0, #0x83
	ldr r1, _0207694C ; =0x04000241
	b _020768C0
_020768D8:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #1]
_020768E2:
	mov r0, #0x93
_020768E4:
	strb r0, [r1, #3]
	b _02076930
_020768E8:
	ldr r1, _02076948 ; =0x04000240
	mov r0, #0x83
	strb r0, [r1]
	mov r0, #0x8b
	strb r0, [r1, #2]
	b _020768E2
_020768F4:
	mov r1, #0x83
	ldr r0, _02076950 ; =0x04000243
	b _0207692E
_020768FA:
	ldr r0, _02076950 ; =0x04000243
	mov r1, #0x8b
	strb r1, [r0]
_02076900:
	mov r1, #0x83
	ldr r0, _02076954 ; =0x04000242
	b _0207692E
_02076906:
	ldr r0, _02076950 ; =0x04000243
	mov r1, #0x93
	strb r1, [r0]
_0207690C:
	ldr r0, _02076954 ; =0x04000242
	mov r1, #0x8b
	strb r1, [r0]
_02076912:
	mov r1, #0x83
	ldr r0, _0207694C ; =0x04000241
	b _0207692E
_02076918:
	ldr r0, _02076950 ; =0x04000243
	mov r1, #0x9b
	strb r1, [r0]
_0207691E:
	ldr r0, _02076954 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_02076924:
	ldr r0, _0207694C ; =0x04000241
	mov r1, #0x8b
	strb r1, [r0]
_0207692A:
	ldr r0, _02076948 ; =0x04000240
	mov r1, #0x83
_0207692E:
	strb r1, [r0]
_02076930:
	ldr r0, _02076938 ; =0x0214C08C
	ldr r3, _02076958 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076938: .word 0x0214C08C
_0207693C: .word 0x04000060
_02076940: .word 0x0000CFFE
_02076944: .word 0xFFFFCFFF
_02076948: .word 0x04000240
_0207694C: .word 0x04000241
_02076950: .word 0x04000243
_02076954: .word 0x04000242
_02076958: .word sub_020764BC
	thumb_func_end sub_02076860

	thumb_func_start sub_0207695C
sub_0207695C: ; 0x0207695C
	ldr r1, _020769C0 ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0xa]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0xa]
	cmp r0, #0x30
	bgt _02076980
	bge _020769AA
	cmp r0, #0x10
	bgt _0207697A
	bge _020769B0
	cmp r0, #0
	b _020769B6
_0207697A:
	cmp r0, #0x20
	beq _02076998
	b _020769B6
_02076980:
	cmp r0, #0x60
	bgt _0207698C
	bge _02076992
	cmp r0, #0x40
	beq _0207699E
	b _020769B6
_0207698C:
	cmp r0, #0x70
	beq _020769A4
	b _020769B6
_02076992:
	ldr r0, _020769C4 ; =0x04000246
	mov r1, #0x8b
	strb r1, [r0]
_02076998:
	mov r1, #0x83
	ldr r0, _020769C8 ; =0x04000245
	b _020769B4
_0207699E:
	mov r1, #0x83
	ldr r0, _020769C4 ; =0x04000246
	b _020769B4
_020769A4:
	ldr r0, _020769C4 ; =0x04000246
	mov r1, #0x9b
	strb r1, [r0]
_020769AA:
	ldr r0, _020769C8 ; =0x04000245
	mov r1, #0x93
	strb r1, [r0]
_020769B0:
	ldr r0, _020769CC ; =0x04000244
	mov r1, #0x83
_020769B4:
	strb r1, [r0]
_020769B6:
	ldr r0, _020769C0 ; =0x0214C08C
	ldr r3, _020769D0 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	nop
_020769C0: .word 0x0214C08C
_020769C4: .word 0x04000246
_020769C8: .word 0x04000245
_020769CC: .word 0x04000244
_020769D0: .word sub_020764BC
	thumb_func_end sub_0207695C

	thumb_func_start sub_020769D4
sub_020769D4: ; 0x020769D4
	ldr r1, _02076A4C ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0xc]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0xc]
	cmp r0, #0xc
	bhi _02076A44
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020769F2: ; jump table
	.short _02076A24 - _020769F2 - 2 ; case 0
	.short _02076A2E - _020769F2 - 2 ; case 1
	.short _02076A12 - _020769F2 - 2 ; case 2
	.short _02076A0C - _020769F2 - 2 ; case 3
	.short _02076A34 - _020769F2 - 2 ; case 4
	.short _02076A44 - _020769F2 - 2 ; case 5
	.short _02076A44 - _020769F2 - 2 ; case 6
	.short _02076A44 - _020769F2 - 2 ; case 7
	.short _02076A1E - _020769F2 - 2 ; case 8
	.short _02076A44 - _020769F2 - 2 ; case 9
	.short _02076A44 - _020769F2 - 2 ; case 10
	.short _02076A44 - _020769F2 - 2 ; case 11
	.short _02076A18 - _020769F2 - 2 ; case 12
_02076A0C:
	ldr r0, _02076A50 ; =0x04000240
	mov r1, #0x93
	strb r1, [r0]
_02076A12:
	mov r1, #0x9b
	ldr r0, _02076A54 ; =0x04000241
	b _02076A38
_02076A18:
	ldr r0, _02076A58 ; =0x04000242
	mov r1, #0x93
	strb r1, [r0]
_02076A1E:
	mov r1, #0x9b
	ldr r0, _02076A5C ; =0x04000243
	b _02076A38
_02076A24:
	ldr r2, _02076A60 ; =0x04000060
	ldr r0, _02076A64 ; =0x0000BFFF
	ldrh r1, [r2]
	and r0, r1
	b _02076A42
_02076A2E:
	mov r1, #0x9b
	ldr r0, _02076A50 ; =0x04000240
	b _02076A38
_02076A34:
	ldr r0, _02076A58 ; =0x04000242
	mov r1, #0x9b
_02076A38:
	ldr r2, _02076A60 ; =0x04000060
	strb r1, [r0]
	ldrh r1, [r2]
	lsr r0, r2, #0xc
	orr r0, r1
_02076A42:
	strh r0, [r2]
_02076A44:
	ldr r0, _02076A4C ; =0x0214C08C
	ldr r3, _02076A68 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076A4C: .word 0x0214C08C
_02076A50: .word 0x04000240
_02076A54: .word 0x04000241
_02076A58: .word 0x04000242
_02076A5C: .word 0x04000243
_02076A60: .word 0x04000060
_02076A64: .word 0x0000BFFF
_02076A68: .word sub_020764BC
	thumb_func_end sub_020769D4

	thumb_func_start sub_02076A6C
sub_02076A6C: ; 0x02076A6C
	ldr r1, _02076AB4 ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #6]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #6]
	cmp r0, #8
	bgt _02076A90
	bge _02076AA6
	cmp r0, #4
	bgt _02076AAC
	cmp r0, #0
	blt _02076AAC
	beq _02076AAC
	cmp r0, #4
	beq _02076AA0
	b _02076AAC
_02076A90:
	cmp r0, #0xc
	bne _02076AAC
	ldr r0, _02076AB8 ; =0x04000243
	mov r1, #0x8a
	strb r1, [r0]
	mov r1, #0x82
	sub r0, r0, #1
	b _02076AAA
_02076AA0:
	mov r1, #0x82
	ldr r0, _02076ABC ; =0x04000242
	b _02076AAA
_02076AA6:
	ldr r0, _02076AB8 ; =0x04000243
	mov r1, #0x82
_02076AAA:
	strb r1, [r0]
_02076AAC:
	ldr r0, _02076AB4 ; =0x0214C08C
	ldr r3, _02076AC0 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076AB4: .word 0x0214C08C
_02076AB8: .word 0x04000243
_02076ABC: .word 0x04000242
_02076AC0: .word sub_020764BC
	thumb_func_end sub_02076A6C

	thumb_func_start sub_02076AC4
sub_02076AC4: ; 0x02076AC4
	ldr r2, _02076AD4 ; =0x0214C08C
	lsl r1, r0, #0x10
	ldrh r3, [r2]
	lsr r1, r1, #0x10
	orr r1, r3
	ldr r3, _02076AD8 ; =sub_020764BC
	strh r1, [r2]
	bx r3
	.align 2, 0
_02076AD4: .word 0x0214C08C
_02076AD8: .word sub_020764BC
	thumb_func_end sub_02076AC4

	thumb_func_start sub_02076ADC
sub_02076ADC: ; 0x02076ADC
	ldr r1, _02076B24 ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0x12]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x12]
	cmp r0, #0x80
	bgt _02076B00
	bge _02076B16
	cmp r0, #4
	bgt _02076B1C
	cmp r0, #0
	blt _02076B1C
	beq _02076B1C
	cmp r0, #4
	beq _02076B0A
	b _02076B1C
_02076B00:
	mov r1, #6
	lsl r1, r1, #6
	cmp r0, r1
	beq _02076B10
	b _02076B1C
_02076B0A:
	mov r1, #0x84
	ldr r0, _02076B28 ; =0x04000242
	b _02076B1A
_02076B10:
	ldr r0, _02076B2C ; =0x04000249
	mov r1, #0x81
	strb r1, [r0]
_02076B16:
	ldr r0, _02076B30 ; =0x04000248
	mov r1, #0x81
_02076B1A:
	strb r1, [r0]
_02076B1C:
	ldr r0, _02076B24 ; =0x0214C08C
	ldr r3, _02076B34 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076B24: .word 0x0214C08C
_02076B28: .word 0x04000242
_02076B2C: .word 0x04000249
_02076B30: .word 0x04000248
_02076B34: .word sub_020764BC
	thumb_func_end sub_02076ADC

	thumb_func_start sub_02076B38
sub_02076B38: ; 0x02076B38
	ldr r1, _02076B6C ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0x14]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x14]
	cmp r0, #0
	beq _02076B64
	cmp r0, #8
	beq _02076B58
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	beq _02076B5E
	b _02076B64
_02076B58:
	mov r1, #0x84
	ldr r0, _02076B70 ; =0x04000243
	b _02076B62
_02076B5E:
	ldr r0, _02076B74 ; =0x04000249
	mov r1, #0x82
_02076B62:
	strb r1, [r0]
_02076B64:
	ldr r0, _02076B6C ; =0x0214C08C
	ldr r3, _02076B78 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	.align 2, 0
_02076B6C: .word 0x0214C08C
_02076B70: .word 0x04000243
_02076B74: .word 0x04000249
_02076B78: .word sub_020764BC
	thumb_func_end sub_02076B38

	thumb_func_start sub_02076B7C
sub_02076B7C: ; 0x02076B7C
	ldr r1, _02076BB8 ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0x16]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x16]
	cmp r0, #0
	beq _02076BA4
	cmp r0, #0x80
	bne _02076BAE
	ldr r2, _02076BBC ; =0x04001000
	ldr r1, [r2]
	lsl r0, r2, #0x12
	orr r0, r1
	str r0, [r2]
	ldr r0, _02076BC0 ; =0x04000248
	mov r1, #0x82
	strb r1, [r0]
	b _02076BAE
_02076BA4:
	ldr r2, _02076BBC ; =0x04001000
	ldr r0, _02076BC4 ; =0xBFFFFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
_02076BAE:
	ldr r0, _02076BB8 ; =0x0214C08C
	ldr r3, _02076BC8 ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	nop
_02076BB8: .word 0x0214C08C
_02076BBC: .word 0x04001000
_02076BC0: .word 0x04000248
_02076BC4: .word 0xBFFFFFFF
_02076BC8: .word sub_020764BC
	thumb_func_end sub_02076B7C

	thumb_func_start sub_02076BCC
sub_02076BCC: ; 0x02076BCC
	ldr r1, _02076C0C ; =0x0214C08C
	ldrh r3, [r1]
	ldrh r2, [r1, #0x18]
	orr r2, r3
	bic r2, r0
	strh r2, [r1]
	strh r0, [r1, #0x18]
	cmp r0, #0
	beq _02076BF8
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _02076C02
	ldr r2, _02076C10 ; =0x04001000
	ldr r1, [r2]
	lsl r0, r2, #0x13
	orr r0, r1
	str r0, [r2]
	ldr r0, _02076C14 ; =0x04000249
	mov r1, #0x83
	strb r1, [r0]
	b _02076C02
_02076BF8:
	ldr r2, _02076C10 ; =0x04001000
	ldr r0, _02076C18 ; =0x7FFFFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
_02076C02:
	ldr r0, _02076C0C ; =0x0214C08C
	ldr r3, _02076C1C ; =sub_020764BC
	ldrh r0, [r0]
	bx r3
	nop
_02076C0C: .word 0x0214C08C
_02076C10: .word 0x04001000
_02076C14: .word 0x04000249
_02076C18: .word 0x7FFFFFFF
_02076C1C: .word sub_020764BC
	thumb_func_end sub_02076BCC

	thumb_func_start sub_02076C20
sub_02076C20: ; 0x02076C20
	push {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _02076C3C ; =0x0214C08C
	ldrh r1, [r0]
	orr r1, r4
	strh r1, [r0]
	add r0, r4, #0
	bl sub_020764BC
	add r0, r4, #0
	pop {r4, pc}
	nop
_02076C3C: .word 0x0214C08C
	thumb_func_end sub_02076C20

	thumb_func_start sub_02076C40
sub_02076C40: ; 0x02076C40
	ldr r0, _02076C48 ; =0x0214C08E
	ldr r3, _02076C4C ; =sub_02076C20
	bx r3
	nop
_02076C48: .word 0x0214C08E
_02076C4C: .word sub_02076C20
	thumb_func_end sub_02076C40

	thumb_func_start sub_02076C50
sub_02076C50: ; 0x02076C50
	ldr r0, _02076C58 ; =0x0214C090
	ldr r3, _02076C5C ; =sub_02076C20
	bx r3
	nop
_02076C58: .word 0x0214C090
_02076C5C: .word sub_02076C20
	thumb_func_end sub_02076C50

	thumb_func_start sub_02076C60
sub_02076C60: ; 0x02076C60
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076C74 ; =0xBFFFFFFF
	ldr r3, _02076C78 ; =sub_02076C20
	and r0, r1
	str r0, [r2]
	ldr r0, _02076C7C ; =0x0214C09A
	bx r3
	nop
_02076C74: .word 0xBFFFFFFF
_02076C78: .word sub_02076C20
_02076C7C: .word 0x0214C09A
	thumb_func_end sub_02076C60

	thumb_func_start sub_02076C80
sub_02076C80: ; 0x02076C80
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076C94 ; =0x7FFFFFFF
	ldr r3, _02076C98 ; =sub_02076C20
	and r0, r1
	str r0, [r2]
	ldr r0, _02076C9C ; =0x0214C09C
	bx r3
	nop
_02076C94: .word 0x7FFFFFFF
_02076C98: .word sub_02076C20
_02076C9C: .word 0x0214C09C
	thumb_func_end sub_02076C80

	thumb_func_start sub_02076CA0
sub_02076CA0: ; 0x02076CA0
	ldr r0, _02076CA8 ; =0x0214C094
	ldr r3, _02076CAC ; =sub_02076C20
	bx r3
	nop
_02076CA8: .word 0x0214C094
_02076CAC: .word sub_02076C20
	thumb_func_end sub_02076CA0

	thumb_func_start sub_02076CB0
sub_02076CB0: ; 0x02076CB0
	ldr r0, _02076CB8 ; =0x0214C096
	ldr r3, _02076CBC ; =sub_02076C20
	bx r3
	nop
_02076CB8: .word 0x0214C096
_02076CBC: .word sub_02076C20
	thumb_func_end sub_02076CB0

	thumb_func_start sub_02076CC0
sub_02076CC0: ; 0x02076CC0
	ldr r0, _02076CC8 ; =0x0214C098
	ldr r3, _02076CCC ; =sub_02076C20
	bx r3
	nop
_02076CC8: .word 0x0214C098
_02076CCC: .word sub_02076C20
	thumb_func_end sub_02076CC0

	thumb_func_start sub_02076CD0
sub_02076CD0: ; 0x02076CD0
	ldr r0, _02076CD8 ; =0x0214C09E
	ldr r3, _02076CDC ; =sub_02076C20
	bx r3
	nop
_02076CD8: .word 0x0214C09E
_02076CDC: .word sub_02076C20
	thumb_func_end sub_02076CD0

	thumb_func_start sub_02076CE0
sub_02076CE0: ; 0x02076CE0
	ldr r0, _02076CE8 ; =0x0214C0A0
	ldr r3, _02076CEC ; =sub_02076C20
	bx r3
	nop
_02076CE8: .word 0x0214C0A0
_02076CEC: .word sub_02076C20
	thumb_func_end sub_02076CE0

	thumb_func_start sub_02076CF0
sub_02076CF0: ; 0x02076CF0
	ldr r2, _02076D00 ; =0x04001000
	ldr r0, _02076D04 ; =0xBFFFFFFF
	ldr r1, [r2]
	ldr r3, _02076D08 ; =sub_02076C20
	and r0, r1
	str r0, [r2]
	ldr r0, _02076D0C ; =0x0214C0A2
	bx r3
	.align 2, 0
_02076D00: .word 0x04001000
_02076D04: .word 0xBFFFFFFF
_02076D08: .word sub_02076C20
_02076D0C: .word 0x0214C0A2
	thumb_func_end sub_02076CF0

	thumb_func_start sub_02076D10
sub_02076D10: ; 0x02076D10
	ldr r2, _02076D20 ; =0x04001000
	ldr r0, _02076D24 ; =0x7FFFFFFF
	ldr r1, [r2]
	ldr r3, _02076D28 ; =sub_02076C20
	and r0, r1
	str r0, [r2]
	ldr r0, _02076D2C ; =0x0214C0A4
	bx r3
	.align 2, 0
_02076D20: .word 0x04001000
_02076D24: .word 0x7FFFFFFF
_02076D28: .word sub_02076C20
_02076D2C: .word 0x0214C0A4
	thumb_func_end sub_02076D10

	thumb_func_start sub_02076D30
sub_02076D30: ; 0x02076D30
	push {r4, lr}
	ldrh r4, [r0]
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	tst r0, r4
	beq _02076D42
	ldr r0, _02076DB4 ; =0x04000240
	strb r1, [r0]
_02076D42:
	mov r0, #2
	tst r0, r4
	beq _02076D4E
	ldr r0, _02076DB8 ; =0x04000241
	mov r1, #0
	strb r1, [r0]
_02076D4E:
	mov r0, #4
	tst r0, r4
	beq _02076D5A
	ldr r0, _02076DBC ; =0x04000242
	mov r1, #0
	strb r1, [r0]
_02076D5A:
	mov r0, #8
	tst r0, r4
	beq _02076D66
	ldr r0, _02076DC0 ; =0x04000243
	mov r1, #0
	strb r1, [r0]
_02076D66:
	mov r0, #0x10
	tst r0, r4
	beq _02076D72
	ldr r0, _02076DC4 ; =0x04000244
	mov r1, #0
	strb r1, [r0]
_02076D72:
	mov r0, #0x20
	tst r0, r4
	beq _02076D7E
	ldr r0, _02076DC8 ; =0x04000245
	mov r1, #0
	strb r1, [r0]
_02076D7E:
	mov r0, #0x40
	tst r0, r4
	beq _02076D8A
	ldr r0, _02076DCC ; =0x04000246
	mov r1, #0
	strb r1, [r0]
_02076D8A:
	mov r0, #0x80
	tst r0, r4
	beq _02076D96
	ldr r0, _02076DD0 ; =0x04000248
	mov r1, #0
	strb r1, [r0]
_02076D96:
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _02076DA4
	ldr r0, _02076DD4 ; =0x04000249
	mov r1, #0
	strb r1, [r0]
_02076DA4:
	ldr r1, _02076DD8 ; =0x0214C04E
	lsl r0, r4, #0x10
	ldrh r1, [r1]
	lsr r0, r0, #0x10
	bl sub_0207C51C
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02076DB4: .word 0x04000240
_02076DB8: .word 0x04000241
_02076DBC: .word 0x04000242
_02076DC0: .word 0x04000243
_02076DC4: .word 0x04000244
_02076DC8: .word 0x04000245
_02076DCC: .word 0x04000246
_02076DD0: .word 0x04000248
_02076DD4: .word 0x04000249
_02076DD8: .word 0x0214C04E
	thumb_func_end sub_02076D30

	thumb_func_start sub_02076DDC
sub_02076DDC: ; 0x02076DDC
	ldr r0, _02076DE4 ; =0x0214C08E
	ldr r3, _02076DE8 ; =sub_02076D30
	bx r3
	nop
_02076DE4: .word 0x0214C08E
_02076DE8: .word sub_02076D30
	thumb_func_end sub_02076DDC

	thumb_func_start sub_02076DEC
sub_02076DEC: ; 0x02076DEC
	ldr r0, _02076DF4 ; =0x0214C090
	ldr r3, _02076DF8 ; =sub_02076D30
	bx r3
	nop
_02076DF4: .word 0x0214C090
_02076DF8: .word sub_02076D30
	thumb_func_end sub_02076DEC

	thumb_func_start sub_02076DFC
sub_02076DFC: ; 0x02076DFC
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076E10 ; =0xBFFFFFFF
	ldr r3, _02076E14 ; =sub_02076D30
	and r0, r1
	str r0, [r2]
	ldr r0, _02076E18 ; =0x0214C09A
	bx r3
	nop
_02076E10: .word 0xBFFFFFFF
_02076E14: .word sub_02076D30
_02076E18: .word 0x0214C09A
	thumb_func_end sub_02076DFC

	thumb_func_start sub_02076E1C
sub_02076E1C: ; 0x02076E1C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02076E30 ; =0x7FFFFFFF
	ldr r3, _02076E34 ; =sub_02076D30
	and r0, r1
	str r0, [r2]
	ldr r0, _02076E38 ; =0x0214C09C
	bx r3
	nop
_02076E30: .word 0x7FFFFFFF
_02076E34: .word sub_02076D30
_02076E38: .word 0x0214C09C
	thumb_func_end sub_02076E1C

	thumb_func_start sub_02076E3C
sub_02076E3C: ; 0x02076E3C
	ldr r0, _02076E44 ; =0x0214C094
	ldr r3, _02076E48 ; =sub_02076D30
	bx r3
	nop
_02076E44: .word 0x0214C094
_02076E48: .word sub_02076D30
	thumb_func_end sub_02076E3C

	thumb_func_start sub_02076E4C
sub_02076E4C: ; 0x02076E4C
	ldr r0, _02076E54 ; =0x0214C096
	ldr r3, _02076E58 ; =sub_02076D30
	bx r3
	nop
_02076E54: .word 0x0214C096
_02076E58: .word sub_02076D30
	thumb_func_end sub_02076E4C

	thumb_func_start sub_02076E5C
sub_02076E5C: ; 0x02076E5C
	ldr r0, _02076E64 ; =0x0214C098
	ldr r3, _02076E68 ; =sub_02076D30
	bx r3
	nop
_02076E64: .word 0x0214C098
_02076E68: .word sub_02076D30
	thumb_func_end sub_02076E5C

	thumb_func_start sub_02076E6C
sub_02076E6C: ; 0x02076E6C
	ldr r0, _02076E74 ; =0x0214C092
	ldr r3, _02076E78 ; =sub_02076D30
	bx r3
	nop
_02076E74: .word 0x0214C092
_02076E78: .word sub_02076D30
	thumb_func_end sub_02076E6C

	thumb_func_start sub_02076E7C
sub_02076E7C: ; 0x02076E7C
	ldr r0, _02076E84 ; =0x0214C08C
	ldr r3, _02076E88 ; =sub_02076D30
	bx r3
	nop
_02076E84: .word 0x0214C08C
_02076E88: .word sub_02076D30
	thumb_func_end sub_02076E7C

	thumb_func_start sub_02076E8C
sub_02076E8C: ; 0x02076E8C
	ldr r0, _02076E94 ; =0x0214C09E
	ldr r3, _02076E98 ; =sub_02076D30
	bx r3
	nop
_02076E94: .word 0x0214C09E
_02076E98: .word sub_02076D30
	thumb_func_end sub_02076E8C

	thumb_func_start sub_02076E9C
sub_02076E9C: ; 0x02076E9C
	ldr r0, _02076EA4 ; =0x0214C0A0
	ldr r3, _02076EA8 ; =sub_02076D30
	bx r3
	nop
_02076EA4: .word 0x0214C0A0
_02076EA8: .word sub_02076D30
	thumb_func_end sub_02076E9C

	thumb_func_start sub_02076EAC
sub_02076EAC: ; 0x02076EAC
	ldr r2, _02076EBC ; =0x04001000
	ldr r0, _02076EC0 ; =0xBFFFFFFF
	ldr r1, [r2]
	ldr r3, _02076EC4 ; =sub_02076D30
	and r0, r1
	str r0, [r2]
	ldr r0, _02076EC8 ; =0x0214C0A2
	bx r3
	.align 2, 0
_02076EBC: .word 0x04001000
_02076EC0: .word 0xBFFFFFFF
_02076EC4: .word sub_02076D30
_02076EC8: .word 0x0214C0A2
	thumb_func_end sub_02076EAC

	thumb_func_start sub_02076ECC
sub_02076ECC: ; 0x02076ECC
	ldr r2, _02076EDC ; =0x04001000
	ldr r0, _02076EE0 ; =0x7FFFFFFF
	ldr r1, [r2]
	ldr r3, _02076EE4 ; =sub_02076D30
	and r0, r1
	str r0, [r2]
	ldr r0, _02076EE8 ; =0x0214C0A4
	bx r3
	.align 2, 0
_02076EDC: .word 0x04001000
_02076EE0: .word 0x7FFFFFFF
_02076EE4: .word sub_02076D30
_02076EE8: .word 0x0214C0A4
	thumb_func_end sub_02076ECC

	thumb_func_start sub_02076EEC
sub_02076EEC: ; 0x02076EEC
	ldr r0, _02076EF4 ; =0x0214C08C
	ldrh r0, [r0, #4]
	bx lr
	nop
_02076EF4: .word 0x0214C08C
	thumb_func_end sub_02076EEC

	thumb_func_start sub_02076EF8
sub_02076EF8: ; 0x02076EF8
	ldr r0, _02076F00 ; =0x0214C08C
	ldrh r0, [r0, #0x10]
	bx lr
	nop
_02076F00: .word 0x0214C08C
	thumb_func_end sub_02076EF8

	thumb_func_start sub_02076F04
sub_02076F04: ; 0x02076F04
	ldr r0, _02076F0C ; =0x0214C08C
	ldrh r0, [r0, #8]
	bx lr
	nop
_02076F0C: .word 0x0214C08C
	thumb_func_end sub_02076F04

	thumb_func_start sub_02076F10
sub_02076F10: ; 0x02076F10
	ldr r0, _02076F18 ; =0x0214C08C
	ldrh r0, [r0]
	bx lr
	nop
_02076F18: .word 0x0214C08C
	thumb_func_end sub_02076F10

	thumb_func_start sub_02076F1C
sub_02076F1C: ; 0x02076F1C
	ldr r0, _02076F24 ; =0x0214C08C
	ldrh r0, [r0, #0x14]
	bx lr
	nop
_02076F24: .word 0x0214C08C
	thumb_func_end sub_02076F1C

	thumb_func_start sub_02076F28
sub_02076F28: ; 0x02076F28
	ldr r0, _02076F30 ; =0x0214C08C
	ldrh r0, [r0, #0x18]
	bx lr
	nop
_02076F30: .word 0x0214C08C
	thumb_func_end sub_02076F28

