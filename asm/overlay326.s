    .include "macros/function.inc"
	.include "overlay326.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy326_219ce80
ovy326_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0219CF20 ; =0x0000008B
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0x9e
	lsl r2, r2, #0x10
	mov r5, #0x9e
	bl sub_0203A15C
	mov r7, #0x9e
	add r7, #0xa6
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x9e
	bl sub_0203AAEC
	add r4, r0, #0
	mov r1, #0
	add r2, r7, #0
	blx sub_020787A8
	strh r5, [r4]
	str r6, [r4, #0x48]
	ldrh r1, [r4]
	mov r0, #0
	bl ovy326_219e234
	str r0, [r4, #0x44]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #0x4c]
	add r5, #0xfd
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	add r2, r5, #0
	bl sub_0204875C
	str r0, [r4, #0x54]
	mov r0, #0
	str r0, [r4, #0x58]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x50]
	ldrh r0, [r4]
	bl sub_020241D4
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r0, r4, #0
	bl ovy326_219d038
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF20: .word 0x0000008B
	thumb_func_end ovy326_219ce80

	thumb_func_start ovy326_219cf24
ovy326_219cf24: ; 0x0219CF24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _0219CF3C
	mov r0, #0
	b _0219CF3E
_0219CF3C:
	mov r0, #1
_0219CF3E:
	bl sub_0203D564
	add r0, r5, #0
	bl ovy326_219d0dc
	mov r4, #0
	add r7, r4, #0
_0219CF4C:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x54]
	cmp r0, #0
	beq _0219CF5E
	ldr r0, [r5, #0x54]
	bl sub_020487D4
	str r7, [r6, #0x54]
_0219CF5E:
	add r4, r4, #1
	cmp r4, #2
	blt _0219CF4C
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02024274
	ldr r0, [r5, #0x50]
	bl sub_02021A18
	ldr r0, [r5, #0x4c]
	bl sub_02022DA8
	ldr r0, [r5, #0x44]
	bl ovy326_219e2d4
	ldrh r4, [r5]
	ldr r0, [sp]
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219CF98 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF98: .word 0x0000008B
	thumb_func_end ovy326_219cf24

	thumb_func_start ovy326_219cf9c
ovy326_219cf9c: ; 0x0219CF9C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #3
	bhi _0219D00E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CFB6: ; jump table
	.short _0219CFBE - _0219CFB6 - 2 ; case 0
	.short _0219CFCE - _0219CFB6 - 2 ; case 1
	.short _0219CFE6 - _0219CFB6 - 2 ; case 2
	.short _0219D000 - _0219CFB6 - 2 ; case 3
_0219CFBE:
	bl sub_02027ACC
	cmp r0, #0
	beq _0219D00E
_0219CFC6:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219D00E
_0219CFCE:
	add r0, r5, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0219D034 ; =0x00002710
	cmp r1, r0
	bne _0219D00E
	ldr r0, [r5, #0x50]
	bl sub_02021C0C
	cmp r0, #1
	bne _0219D00E
	b _0219CFC6
_0219CFE6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	b _0219CFC6
_0219D000:
	bl sub_02027ACC
	cmp r0, #0
	beq _0219D00E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219D00E:
	add r0, r5, #0
	bl ovy326_219d0cc
	add r0, r5, #0
	bl ovy326_219d238
	ldr r0, [r5, #0x44]
	bl ovy326_219e328
	ldr r0, [r5, #0x44]
	bl sub_0219E33C
	ldr r0, [r5, #0x44]
	bl sub_0219E340
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219D034: .word 0x00002710
	thumb_func_end ovy326_219cf9c

	thumb_func_start ovy326_219d038
ovy326_219d038: ; 0x0219D038
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r0, #0
	add r1, #0x88
	str r0, [r1]
	ldr r1, [r4, #0x48]
	ldr r2, [r1]
	add r1, r4, #0
	add r1, #0x8c
	str r2, [r1]
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r2, r0, #0
_0219D06E:
	lsl r3, r0, #1
	add r1, r4, r3
	add r1, #0xa4
	strh r0, [r1]
	add r1, r4, r3
	add r1, #0xe2
	add r0, r0, #1
	strh r2, [r1]
	cmp r0, #0x1f
	blt _0219D06E
	ldr r5, _0219D0C8 ; =0x00000109
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0204A934
	add r1, r5, #0
	add r1, #0x1b
	str r0, [r4, r1]
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0204A934
	add r5, #0x1f
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy326_219da44
	add r0, r4, #0
	bl ovy326_219d290
	add r0, r4, #0
	bl ovy326_219d774
	add r0, r4, #0
	bl ovy326_219d590
	add r0, r4, #0
	bl ovy326_219d9e4
	add r0, r4, #0
	bl ovy326_219dd74
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D0C8: .word 0x00000109
	thumb_func_end ovy326_219d038

	thumb_func_start ovy326_219d0cc
ovy326_219d0cc: ; 0x0219D0CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219D128
	add r0, r4, #0
	bl ovy326_219e130
	pop {r4, pc}
	thumb_func_end ovy326_219d0cc

	thumb_func_start ovy326_219d0dc
ovy326_219d0dc: ; 0x0219D0DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	ldr r0, [r4, #0x48]
	beq _0219D0F8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0219D102
	mov r0, #1
	b _0219D100
_0219D0F8:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0219D102
	mov r0, #0
_0219D100:
	strh r0, [r1]
_0219D102:
	mov r5, #0x49
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0203A24C
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0203A24C
	add r0, r4, #0
	bl ovy326_219df80
	add r0, r4, #0
	bl ovy326_219d844
	add r0, r4, #0
	bl ovy326_219d604
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_219d0dc

	thumb_func_start sub_0219D128
sub_0219D128: ; 0x0219D128
	ldr r3, _0219D12C ; =ovy326_219d130
	bx r3
	.align 2, 0
_0219D12C: .word ovy326_219d130
	thumb_func_end sub_0219D128

	thumb_func_start ovy326_219d130
ovy326_219d130: ; 0x0219D130
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	cmp r1, #0x6e
	bgt _0219D14E
	bge _0219D1B2
	cmp r1, #0
	bgt _0219D148
	beq _0219D160
	pop {r4, r5, r6, pc}
_0219D148:
	cmp r1, #0x64
	beq _0219D1AC
	pop {r4, r5, r6, pc}
_0219D14E:
	cmp r1, #0xc8
	bgt _0219D15A
	bge _0219D218
	cmp r1, #0x78
	beq _0219D1E4
	pop {r4, r5, r6, pc}
_0219D15A:
	ldr r0, _0219D234 ; =0x00002710
	cmp r1, r0
	pop {r4, r5, r6, pc}
_0219D160:
	add r1, r5, #0
	add r1, #0x90
	mov r4, #1
	ldr r1, [r1]
	lsl r4, r4, #0x10
	tst r1, r4
	bne _0219D19E
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _0219D230
	add r0, r5, #0
	mov r1, #0x64
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r0, #0
	add r0, r5, #0
	orr r1, r4
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_219e174
	pop {r4, r5, r6, pc}
_0219D19E:
	mov r1, #0x64
	add r5, #0x88
	str r1, [r5]
	mov r1, #0
	bl ovy326_219e174
	pop {r4, r5, r6, pc}
_0219D1AC:
	bl ovy326_219db30
	pop {r4, r5, r6, pc}
_0219D1B2:
	mov r1, #1
	mov r2, #1
	mov r4, #1
	bl ovy326_219d718
	cmp r0, #0
	bne _0219D230
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	mov r3, #5
	bl ovy326_219d66c
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #2
	bic r1, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
	mov r0, #0x64
	add r5, #0x88
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219D1E4:
	mov r1, #1
	mov r2, #0
	mov r4, #1
	mov r6, #0
	bl ovy326_219d718
	cmp r0, #0
	bne _0219D230
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #4
	bl ovy326_219d66c
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
	mov r0, #0x64
	add r5, #0x88
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0219D218:
	bl ovy326_219dccc
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0219D230
	ldr r0, _0219D234 ; =0x00002710
	add r5, #0x88
	str r0, [r5]
_0219D230:
	pop {r4, r5, r6, pc}
	nop
_0219D234: .word 0x00002710
	thumb_func_end ovy326_219d130

	thumb_func_start ovy326_219d238
ovy326_219d238: ; 0x0219D238
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x50]
	bl sub_02021A3C
	mov r4, #0
_0219D244:
	lsl r0, r4, #3
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x60
	ldrb r0, [r0]
	ldr r6, [r7, #0x50]
	cmp r0, #0
	beq _0219D272
	ldr r0, [r5, #0x5c]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D272
	ldr r0, [r5, #0x5c]
	bl sub_02048244
	add r5, #0x60
	mov r0, #0
	strb r0, [r5]
_0219D272:
	add r4, r4, #1
	cmp r4, #5
	blt _0219D244
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_219d238

	thumb_func_start sub_0219D27C
sub_0219D27C: ; 0x0219D27C
	cmp r1, #0x1e
	blo _0219D284
	mov r0, #0
	bx lr
_0219D284:
	mov r2, #0x49
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219D27C

	thumb_func_start ovy326_219d290
ovy326_219d290: ; 0x0219D290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldrh r1, [r7]
	ldr r0, _0219D324 ; =0x00000109
	ldr r4, _0219D328 ; =0x021A2D66
	ldr r6, _0219D32C ; =0x021A2D9C
	ldr r5, _0219D330 ; =0x021A2DB4
	bl sub_0204AA30
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
_0219D2AA:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _0219D2D2
	ldrb r0, [r4, #3]
	ldrb r3, [r4, #2]
	ldrb r1, [r4, #1]
	lsl r0, r0, #5
	str r0, [sp]
	ldrh r0, [r7]
	lsl r3, r3, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_0204B0D4
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blt _0219D2AA
_0219D2D2:
	mov r4, #0
_0219D2D4:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _0219D2F6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r6, #1]
	ldrb r3, [r6, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204ADA8
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #8
	blt _0219D2D4
_0219D2F6:
	mov r4, #0
	add r6, r4, #0
_0219D2FA:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _0219D31A
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204AF50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0219D2FA
_0219D31A:
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D324: .word 0x00000109
_0219D328: .word 0x021A2D66
_0219D32C: .word 0x021A2D9C
_0219D330: .word 0x021A2DB4
	thumb_func_end ovy326_219d290

	thumb_func_start ovy326_219d334
ovy326_219d334: ; 0x0219D334
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	ldr r0, [r7, #0x44]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0219E344
	str r0, [sp, #0x20]
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx sub_020787A8
	mov r3, #6
	ldrsh r3, [r4, r3]
	mov r1, #2
	mov r2, #4
	str r3, [sp, #0x10]
	mov r3, #8
	ldrsh r3, [r4, r3]
	ldrsh r0, [r4, r6]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	cmp r3, #0
	bne _0219D372
	add r6, r7, #0
	add r6, #0x38
	b _0219D380
_0219D372:
	cmp r3, #1
	bne _0219D37C
	add r6, r7, #0
	add r6, #0x28
	b _0219D380
_0219D37C:
	add r6, r7, #0
	add r6, #0x40
_0219D380:
	mov r3, #0
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _0219D44C
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x18]
	lsl r0, r1, #2
	add r0, r7, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r2, r2, #2
	lsl r0, r0, #0x10
	add r2, r7, r2
	lsr r0, r0, #0x10
	str r2, [sp, #0x1c]
	str r0, [sp, #0x2c]
_0219D3A4:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219D44C
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219D27C
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_0219D27C
	ldr r2, [sp, #0x28]
	add r1, sp, #0x30
	strh r2, [r1]
	strh r0, [r1, #2]
	ldrb r1, [r5]
	add r0, sp, #0x30
	ldr r2, [sp, #0x18]
	strh r1, [r0, #4]
	ldrb r1, [r5, #1]
	ldr r3, [sp, #0x1c]
	strb r1, [r0, #6]
	ldrb r1, [r5, #2]
	strb r1, [r0, #7]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	lsl r4, r0, #2
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	ldr r3, [r3, #4]
	bl sub_0204C040
	str r0, [r6, r4]
	ldrb r0, [r5, #3]
	mov r1, #0
	cmp r0, #1
	bne _0219D404
	mov r1, #1
_0219D404:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219D414
	mov r1, #1
_0219D414:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _0219D42C
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219D42C:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _0219D43E
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219D43E:
	ldr r0, [sp, #0x24]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _0219D3A4
_0219D44C:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219d334

	thumb_func_start ovy326_219d450
ovy326_219d450: ; 0x0219D450
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	ldr r0, _0219D4CC ; =0x00000109
	add r4, r2, #0
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, [r5, #0x44]
	bl sub_0219E344
	mov r1, #0
	str r1, [sp]
	ldrh r0, [r4, #6]
	ldrsh r1, [r4, r1]
	ldrh r3, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204BBB8
	mov r1, #2
	ldrsh r1, [r4, r1]
	mov r2, #0
	add r3, r7, #0
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldrh r0, [r5]
	mov r1, #8
	ldrsh r1, [r4, r1]
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldrh r3, [r5]
	add r0, r6, #0
	bl sub_0204BDE0
	mov r1, #0x12
	ldrsh r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D4CC: .word 0x00000109
	thumb_func_end ovy326_219d450

	thumb_func_start ovy326_219d4d0
ovy326_219d4d0: ; 0x0219D4D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	bl sub_0219E344
	bl sub_0202D810
	add r7, r0, #0
	bl sub_0202D814
	str r0, [sp, #0xc]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0x10]
	mov r0, #2
	bl sub_0202D81C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r3, #0x16
	add r1, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	lsl r3, r3, #4
	bl sub_0204BBB8
	str r0, [r5, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204B81C
	str r0, [r5, #8]
	ldrh r3, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219d4d0

	thumb_func_start ovy326_219d54c
ovy326_219d54c: ; 0x0219D54C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02034060
	ldrh r1, [r5]
	add r2, r4, #0
	mov r3, #0
	str r1, [sp]
	add r1, r6, #0
	add r7, r0, #0
	bl sub_02034074
	str r0, [r5, #0x1c]
	ldrh r3, [r5]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020340A4
	str r0, [r5, #0x20]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_020340C8
	str r0, [r5, #0x24]
	add r0, r7, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219d54c

	thumb_func_start ovy326_219d590
ovy326_219d590: ; 0x0219D590
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_0219E344
	ldr r2, _0219D5E8 ; =0x021A2DE4
	add r0, r4, #0
	mov r1, #0
	bl ovy326_219d450
	add r0, r4, #0
	mov r1, #0
	bl ovy326_219d4d0
	add r2, r4, #0
	add r2, #0x94
	ldr r2, [r2]
	add r0, r4, #0
	mov r1, #1
	bl ovy326_219d54c
	ldr r2, _0219D5EC ; =0x021A2DCC
	ldr r3, _0219D5F0 ; =0x021A2D5C
	add r0, r4, #0
	mov r1, #0
	bl ovy326_219d334
	ldr r2, _0219D5F4 ; =0x021A2E48
	ldr r3, _0219D5F8 ; =0x021A2D48
	add r0, r4, #0
	mov r1, #0
	bl ovy326_219d334
	ldr r2, _0219D5FC ; =0x021A2D8C
	ldr r3, _0219D600 ; =0x021A2D52
	add r0, r4, #0
	mov r1, #1
	bl ovy326_219d334
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	pop {r4, pc}
	.align 2, 0
_0219D5E8: .word 0x021A2DE4
_0219D5EC: .word 0x021A2DCC
_0219D5F0: .word 0x021A2D5C
_0219D5F4: .word 0x021A2E48
_0219D5F8: .word 0x021A2D48
_0219D5FC: .word 0x021A2D8C
_0219D600: .word 0x021A2D52
	thumb_func_end ovy326_219d590

	thumb_func_start ovy326_219d604
ovy326_219d604: ; 0x0219D604
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0219D60A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x38]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #2
	blt _0219D60A
	mov r5, #0
_0219D61C:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x28]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #4
	blt _0219D61C
	ldr r0, [r4, #0x40]
	bl sub_0204C108
	ldr r0, [r4, #0x10]
	bl sub_0204BCD0
	ldr r0, [r4, #0x14]
	bl sub_0204B98C
	ldr r0, [r4, #0x18]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204BCD0
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0xc]
	bl sub_0204BE64
	ldr r0, [r4, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x20]
	bl sub_0204B98C
	ldr r0, [r4, #0x24]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_219d604

	thumb_func_start ovy326_219d66c
ovy326_219d66c: ; 0x0219D66C
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _0219D690
	cmp r2, #2
	bge _0219D6D2
	add r4, r0, #0
	add r4, #0x38
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219D690:
	cmp r1, #1
	bne _0219D6B2
	cmp r2, #4
	bge _0219D6D2
	add r4, r0, #0
	add r4, #0x28
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219D6B2:
	cmp r1, #2
	bne _0219D6D2
	cmp r2, #1
	bge _0219D6D2
	add r4, r0, #0
	add r4, #0x40
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
_0219D6D2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_219d66c

	thumb_func_start ovy326_219d6d4
ovy326_219d6d4: ; 0x0219D6D4
	push {r3, lr}
	cmp r1, #0
	bne _0219D6EC
	cmp r2, #2
	bge _0219D716
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x38]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219D6EC:
	cmp r1, #1
	bne _0219D702
	cmp r2, #4
	bge _0219D716
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219D702:
	cmp r1, #2
	bne _0219D716
	cmp r2, #1
	bge _0219D716
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x40]
	add r1, r3, #0
	bl sub_0204C124
_0219D716:
	pop {r3, pc}
	thumb_func_end ovy326_219d6d4

	thumb_func_start ovy326_219d718
ovy326_219d718: ; 0x0219D718
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _0219D738
	cmp r2, #2
	blt _0219D728
	mov r0, #0
	pop {r4, pc}
_0219D728:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x38]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D770
	b _0219D76E
_0219D738:
	cmp r1, #1
	bne _0219D754
	cmp r2, #4
	blt _0219D744
	mov r0, #0
	pop {r4, pc}
_0219D744:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D770
	b _0219D76E
_0219D754:
	cmp r1, #2
	bne _0219D770
	cmp r2, #1
	blt _0219D760
	mov r0, #0
	pop {r4, pc}
_0219D760:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x40]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D770
_0219D76E:
	mov r4, #0
_0219D770:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy326_219d718

	thumb_func_start ovy326_219d774
ovy326_219d774: ; 0x0219D774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0219D80C ; =0x021A2E24
	add r7, r0, #0
	mov r4, #0
_0219D77E:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219D7B6
	lsl r1, r4, #3
	add r6, r7, r1
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	bl sub_020480C0
	str r0, [r6, #0x5c]
	bl sub_0204826C
	ldr r0, [r6, #0x5c]
	bl sub_020484D4
	bl sub_02044F90
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #5
	blt _0219D77E
_0219D7B6:
	ldrh r1, [r7]
	mov r0, #0x17
	bl sub_0204AA30
	mov r6, #0x20
	str r6, [sp]
	ldrh r1, [r7]
	mov r5, #4
	add r5, #0xfc
	str r1, [sp, #4]
	mov r1, #6
	mov r2, #4
	add r3, r5, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	ldrh r0, [r7]
	mov r1, #6
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r5, #0
	mov r6, #0
	bl sub_0204B0D4
	add r0, r4, #0
	bl sub_0204AB0C
	str r6, [sp]
	add r0, r7, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	str r6, [sp, #4]
	bl ovy326_219d85c
	add r0, r7, #0
	bl ovy326_219d894
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D80C: .word 0x021A2E24
	thumb_func_end ovy326_219d774

	thumb_func_start ovy326_219d810
ovy326_219d810: ; 0x0219D810
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x4c]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x20
	ldrh r0, [r0, #8]
	lsl r3, r3, #0x10
	add r5, #0x5c
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	lsl r0, r1, #3
	ldr r1, [r4, #0x50]
	add r0, r5, r0
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_219d810

	thumb_func_start ovy326_219d844
ovy326_219d844: ; 0x0219D844
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D84A:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #5
	blt _0219D84A
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_219d844

	thumb_func_start ovy326_219d85c
ovy326_219d85c: ; 0x0219D85C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #0x24]
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy326_219d810
	add r0, r7, #0
	bl sub_02048564
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_219d85c

	thumb_func_start ovy326_219d894
ovy326_219d894: ; 0x0219D894
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0x22
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219D9E0 ; =0x000039E0
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_219d810
	add r0, r4, #0
	bl sub_02048564
	ldrh r1, [r5]
	mov r0, #0x40
	bl sub_02048530
	add r6, r0, #0
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	ldr r0, [r0, #0xc]
	bl sub_02008BA0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	ldrh r1, [r5]
	mov r0, #0x40
	bl sub_02048530
	add r4, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #0x20
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02024920
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219D9E0 ; =0x000039E0
	mov r1, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_219d810
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add r0, r4, #0
	bl sub_02048564
	ldr r0, [r5, #0x54]
	mov r1, #0x21
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219D9E0 ; =0x000039E0
	mov r1, #3
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_219d810
	add r0, r4, #0
	bl sub_02048564
	ldrh r1, [r5]
	mov r0, #0x40
	bl sub_02048530
	mov r1, #1
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xa0
	ldr r1, [r1]
	mov r2, #4
	mov r3, #1
	add r6, r0, #0
	bl sub_02024A14
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	ldrh r1, [r5]
	mov r0, #0x40
	bl sub_02048530
	add r4, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #2
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02024920
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219D9E0 ; =0x000039E0
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_219d810
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add r0, r4, #0
	bl sub_02048564
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D9E0: .word 0x000039E0
	thumb_func_end ovy326_219d894

	thumb_func_start ovy326_219d9e4
ovy326_219d9e4: ; 0x0219D9E4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	add r5, r6, r0
	mov r4, #0
_0219D9F0:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy326_219dbe0
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r5, r5, #4
	cmp r4, #5
	blt _0219D9F0
	mov r0, #0xff
	strb r0, [r5]
	mov r4, #0
	strb r4, [r5, #1]
	strb r4, [r5, #2]
	add r0, r6, #0
	strb r4, [r5, #3]
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x40
	tst r0, r1
	beq _0219DA42
	add r0, r6, #0
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	bl ovy326_219d6d4
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	add r3, r4, #0
	bl ovy326_219d6d4
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	add r3, r4, #0
	bl ovy326_219d6d4
_0219DA42:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy326_219d9e4

	thumb_func_start ovy326_219da44
ovy326_219da44: ; 0x0219DA44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	ldr r0, [r0, #0xc]
	bl sub_02008BF0
	add r1, r5, #0
	mov r2, #0
	add r1, #0x94
	str r2, [r1]
	cmp r0, #1
	bne _0219DA64
	add r0, r5, #0
	mov r1, #1
	add r0, #0x94
	str r1, [r0]
_0219DA64:
	ldr r7, _0219DAFC ; =0x0000270F
	mov r4, #0
_0219DA68:
	ldr r1, _0219DB00 ; =0x021A2ED2
	lsl r6, r4, #1
	ldr r0, [r5, #0x48]
	ldrsh r1, [r1, r6]
	ldr r0, [r0, #8]
	bl sub_0200FEAC
	cmp r0, r7
	blo _0219DA7C
	add r0, r7, #0
_0219DA7C:
	add r1, r5, r6
	add r1, #0xa4
	add r4, r4, #1
	strh r0, [r1]
	cmp r4, #0x1d
	blt _0219DA68
	ldr r7, _0219DB00 ; =0x021A2ED2
	mov r6, #0
	mov r4, #0
_0219DA8E:
	lsl r1, r4, #1
	ldrsh r1, [r7, r1]
	add r0, r5, #0
	bl sub_0219DD5C
	cmp r0, #1
	bne _0219DAA6
	lsl r0, r6, #1
	add r0, r5, r0
	add r0, #0xe2
	strh r4, [r0]
	add r6, r6, #1
_0219DAA6:
	add r4, r4, #1
	cmp r4, #0x1d
	blt _0219DA8E
	add r0, r5, #0
	add r0, #0x9c
	str r6, [r0]
	cmp r6, #6
	bgt _0219DAC6
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x40
	orr r1, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
_0219DAC6:
	add r1, r5, #0
	add r1, #0x9c
	ldr r1, [r1]
	mov r0, #0
	mov r2, #0
	cmp r1, #0
	ble _0219DAEC
	mov r3, #0xe2
	mov r4, #0xa4
_0219DAD8:
	lsl r6, r2, #1
	add r6, r5, r6
	ldrsh r6, [r6, r3]
	add r2, r2, #1
	lsl r6, r6, #1
	add r6, r5, r6
	ldrsh r6, [r6, r4]
	add r0, r0, r6
	cmp r2, r1
	blt _0219DAD8
_0219DAEC:
	ldr r1, _0219DAFC ; =0x0000270F
	cmp r0, r1
	blt _0219DAF4
	add r0, r1, #0
_0219DAF4:
	add r5, #0xa0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DAFC: .word 0x0000270F
_0219DB00: .word 0x021A2ED2
	thumb_func_end ovy326_219da44

	thumb_func_start ovy326_219db04
ovy326_219db04: ; 0x0219DB04
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r3, _0219DB2C ; =0x021A2E06
	lsl r6, r4, #3
	ldrsh r3, [r3, r6]
	add r5, r0, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy326_219d66c
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r4
	orr r0, r1
	add r5, #0x90
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_0219DB2C: .word 0x021A2E06
	thumb_func_end ovy326_219db04

	thumb_func_start ovy326_219db30
ovy326_219db30: ; 0x0219DB30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl ovy326_219dccc
	add r0, r5, #0
	bl ovy326_219de7c
	add r1, r0, #0
	add r0, r5, #0
	bl ovy326_219decc
	cmp r0, #0
	beq _0219DB4E
	mov r4, #1
_0219DB4E:
	cmp r4, #0
	bne _0219DB62
	add r0, r5, #0
	bl ovy326_219dc64
	cmp r0, #0
	bne _0219DB62
	add r0, r5, #0
	bl ovy326_219db6c
_0219DB62:
	add r0, r5, #0
	bl ovy326_219e0e4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_219db30

	thumb_func_start ovy326_219db6c
ovy326_219db6c: ; 0x0219DB6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r7, #1
	lsl r7, r7, #0xc
	add r0, r1, #0
	mov r4, #0
	mov r6, #0
	tst r0, r7
	beq _0219DB86
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DB86:
	mov r0, #0xf
	tst r0, r1
	beq _0219DB90
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DB90:
	bl sub_0203DEFC
	lsr r1, r7, #2
	tst r0, r1
	beq _0219DBA0
	add r0, r5, #0
	mov r1, #2
	b _0219DBAE
_0219DBA0:
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _0219DBBA
	add r0, r5, #0
	mov r1, #3
_0219DBAE:
	bl ovy326_219db04
	ldr r0, _0219DBDC ; =0x00000551
	mov r4, #1
	bl sub_02006254
_0219DBBA:
	cmp r4, #1
	bne _0219DBD6
	add r0, r5, #0
	mov r1, #0xc8
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x90
	mov r6, #1
	ldr r1, [r0]
	lsl r0, r6, #0xa
	orr r0, r1
	add r5, #0x90
	str r0, [r5]
_0219DBD6:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DBDC: .word 0x00000551
	thumb_func_end ovy326_219db6c

	thumb_func_start ovy326_219dbe0
ovy326_219dbe0: ; 0x0219DBE0
	push {r4, r5, r6, r7}
	sub sp, #8
	mov r4, #0x4a
	lsl r4, r4, #2
	ldr r4, [r0, r4]
	lsl r0, r1, #3
	mov r3, #0
	add r5, r4, r0
	add r1, sp, #0
_0219DBF2:
	lsl r4, r3, #1
	ldrsh r0, [r5, r4]
	strh r0, [r1, r4]
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	cmp r3, #4
	blt _0219DBF2
	mov r5, #0
	add r1, sp, #0
	mov r0, #4
	ldrsh r3, [r1, r0]
	ldrsh r0, [r1, r5]
	add r6, r5, #0
	add r0, r3, r0
	strh r0, [r1, #4]
	mov r0, #6
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, r3, r0
	strh r0, [r1, #6]
	add r1, r5, #0
	mov r0, #0xff
	add r3, sp, #0
_0219DC24:
	lsl r7, r5, #1
	add r4, r3, r7
	ldrsh r7, [r3, r7]
	cmp r7, #0
	bge _0219DC30
	strh r1, [r4]
_0219DC30:
	ldrsh r7, [r4, r6]
	cmp r7, #0xff
	ble _0219DC38
	strh r0, [r4]
_0219DC38:
	add r4, r5, #1
	lsl r4, r4, #0x10
	asr r5, r4, #0x10
	cmp r5, #4
	blt _0219DC24
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	strb r0, [r2, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strb r0, [r2]
	mov r0, #4
	ldrsh r0, [r1, r0]
	strb r0, [r2, #3]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy326_219dbe0

	thumb_func_start ovy326_219dc64
ovy326_219dc64: ; 0x0219DC64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r4, #0
	bl sub_0203DA0C
	add r1, r5, #0
	add r1, #0x90
	mov r2, #1
	ldr r1, [r1]
	lsl r2, r2, #0xc
	mov r6, #0
	tst r2, r1
	beq _0219DC88
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0219DC88:
	mov r2, #0xf
	tst r1, r2
	beq _0219DC92
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0219DC92:
	cmp r0, #2
	bne _0219DCA2
	add r0, r5, #0
	mov r1, #2
	mov r4, #2
	bl ovy326_219db04
	b _0219DCB0
_0219DCA2:
	cmp r0, #3
	bne _0219DCB6
	add r0, r5, #0
	mov r1, #3
	bl ovy326_219db04
	mov r4, #2
_0219DCB0:
	ldr r0, _0219DCC8 ; =0x00000551
	bl sub_02006254
_0219DCB6:
	cmp r4, #0
	beq _0219DCC2
	mov r0, #0xc8
	add r5, #0x88
	mov r6, #1
	str r0, [r5]
_0219DCC2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0219DCC8: .word 0x00000551
	thumb_func_end ovy326_219dc64

	thumb_func_start ovy326_219dccc
ovy326_219dccc: ; 0x0219DCCC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r1, r7, #0
	add r1, #0x90
	ldr r2, [r1]
	mov r1, #4
	mov r0, #0
	mov r5, #0
	tst r1, r2
	beq _0219DCE4
	mov r5, #2
	b _0219DCEC
_0219DCE4:
	mov r1, #8
	tst r1, r2
	beq _0219DCEE
	mov r5, #3
_0219DCEC:
	mov r0, #1
_0219DCEE:
	cmp r0, #1
	bne _0219DD54
	add r0, r7, #0
	mov r1, #1
	add r2, r5, #0
	mov r4, #1
	bl ovy326_219d718
	cmp r0, #0
	bne _0219DD54
	ldr r3, _0219DD58 ; =0x021A2E04
	lsl r6, r5, #3
	ldrsh r3, [r3, r6]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy326_219d66c
	add r0, r7, #0
	add r0, #0x90
	ldr r2, [r0]
	add r0, r4, #0
	lsl r0, r5
	add r1, r7, #0
	mvn r0, r0
	and r0, r2
	sub r2, r5, #2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	add r7, #0x90
	lsr r2, r2, #0x10
	add r1, #0x90
	str r0, [r7]
	cmp r2, #1
	bhi _0219DD54
	lsl r2, r4, #0xc
	orr r2, r0
	str r2, [r1]
	cmp r5, #2
	bne _0219DD48
	lsl r0, r4, #9
	orr r0, r2
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_0219DD48:
	cmp r5, #3
	bne _0219DD54
	add r4, #0xff
	add r0, r2, #0
	orr r0, r4
	str r0, [r1]
_0219DD54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DD58: .word 0x021A2E04
	thumb_func_end ovy326_219dccc

	thumb_func_start sub_0219DD5C
sub_0219DD5C: ; 0x0219DD5C
	ldr r0, [r0, #0x48]
	mov r2, #0
	add r0, r0, r1
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bne _0219DD6A
	mov r2, #1
_0219DD6A:
	cmp r1, #0x12
	bne _0219DD70
	mov r2, #1
_0219DD70:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0219DD5C

	thumb_func_start ovy326_219dd74
ovy326_219dd74: ; 0x0219DD74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _0219DE64 ; =0x021A2E70
	add r5, r0, #0
	add r3, sp, #0xc
	mov r2, #5
_0219DD80:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219DD80
	str r5, [sp, #0x30]
	add r0, r5, #0
	bl ovy326_219df80
	ldrh r1, [r5]
	ldr r0, _0219DE68 ; =0x00000109
	bl sub_0204AA30
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r1, [r5]
	mov r2, #2
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #3
	add r7, r0, #0
	bl sub_0204ADA8
	ldr r0, _0219DE6C ; =0x021A2D80
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r0, #0x9c
	ldr r1, [r0]
	add r0, sp, #0xc
	strh r1, [r0, #0x14]
	strb r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	cmp r1, #6
	bgt _0219DDC8
	ldr r0, _0219DE70 ; =0x021A2F18
	str r0, [sp, #0x28]
_0219DDC8:
	ldrh r1, [r5]
	add r0, sp, #0xc
	bl sub_0219AF1C
	mov r6, #0x12
	lsl r6, r6, #4
	str r0, [r5, r6]
	mov r4, #0
	str r4, [sp]
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #9
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #0
	mov r3, #2
	bl sub_0219B27C
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	ble _0219DE24
	ldr r7, _0219DE74 ; =0x021A2E98
_0219DE06:
	lsl r2, r4, #1
	add r3, r5, r2
	mov r2, #0xe2
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r6]
	mov r1, #0
	lsl r2, r2, #1
	ldrsh r2, [r7, r2]
	bl sub_0219B1B4
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DE06
_0219DE24:
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _0219DE78 ; =0xFFFEFFFF
	and r1, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _0219DE54
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x10
	orr r1, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
_0219DE54:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_0219CCB0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DE64: .word 0x021A2E70
_0219DE68: .word 0x00000109
_0219DE6C: .word 0x021A2D80
_0219DE70: .word 0x021A2F18
_0219DE74: .word 0x021A2E98
_0219DE78: .word 0xFFFEFFFF
	thumb_func_end ovy326_219dd74

	thumb_func_start ovy326_219de7c
ovy326_219de7c: ; 0x0219DE7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1]
	mov r1, #2
	mov r4, #0
	lsl r1, r1, #0xa
	mvn r4, r4
	tst r1, r2
	beq _0219DE96
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219DE96:
	mov r1, #1
	bl ovy326_219e174
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219DEAC
	bl sub_0219B2E0
	add r4, r0, #0
_0219DEAC:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0x40
	tst r0, r1
	beq _0219DEC6
	add r0, r5, #0
	add r0, #0x90
	ldr r2, [r0]
	lsl r0, r1, #5
	orr r0, r2
	add r5, #0x90
	str r0, [r5]
_0219DEC6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_219de7c

	thumb_func_start ovy326_219decc
ovy326_219decc: ; 0x0219DECC
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	sub r0, r4, #7
	cmp r1, r0
	bhi _0219DF12
	bhs _0219DF46
	add r0, r4, #0
	sub r0, #0xb
	cmp r1, r0
	bhi _0219DF08
	add r0, r4, #0
	sub r0, #0xb
	cmp r1, r0
	bhs _0219DF6A
	cmp r1, #6
	bhi _0219DF6C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DEFA: ; jump table
	.short _0219DF42 - _0219DEFA - 2 ; case 0
	.short _0219DF42 - _0219DEFA - 2 ; case 1
	.short _0219DF42 - _0219DEFA - 2 ; case 2
	.short _0219DF42 - _0219DEFA - 2 ; case 3
	.short _0219DF42 - _0219DEFA - 2 ; case 4
	.short _0219DF42 - _0219DEFA - 2 ; case 5
	.short _0219DF42 - _0219DEFA - 2 ; case 6
_0219DF08:
	mov r0, #9
	mvn r0, r0
	cmp r1, r0
	beq _0219DF6A
	b _0219DF6C
_0219DF12:
	sub r0, r4, #5
	cmp r1, r0
	bhi _0219DF22
	bhs _0219DF46
	sub r0, r4, #6
	cmp r1, r0
	beq _0219DF5A
	b _0219DF6C
_0219DF22:
	sub r0, r4, #4
	cmp r1, r0
	bhi _0219DF2C
	beq _0219DF5A
	b _0219DF6C
_0219DF2C:
	sub r0, r4, #2
	cmp r1, r0
	bhi _0219DF6C
	sub r0, r4, #3
	cmp r1, r0
	blo _0219DF6C
	beq _0219DF68
	sub r0, r4, #2
	cmp r1, r0
	beq _0219DF68
	b _0219DF6C
_0219DF42:
	mov r4, #2
	b _0219DF6C
_0219DF46:
	add r0, r5, #0
	mov r1, #0
	bl ovy326_219db04
	mov r4, #1
	mov r1, #0x78
_0219DF52:
	add r0, r5, #0
	add r0, #0x88
	str r1, [r0]
	b _0219DF6C
_0219DF5A:
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy326_219db04
	mov r1, #0x6e
	b _0219DF52
_0219DF68:
	b _0219DF6A
_0219DF6A:
	mov r4, #1
_0219DF6C:
	cmp r4, #1
	bne _0219DF7C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_0219CCB0
_0219DF7C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_219decc

	thumb_func_start ovy326_219df80
ovy326_219df80: ; 0x0219DF80
	push {r3, r4, r5, lr}
	mov r5, #0x12
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219DF96
	bl sub_0219B138
	mov r0, #0
	str r0, [r4, r5]
_0219DF96:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_219df80

	thumb_func_start ovy326_219df98
ovy326_219df98: ; 0x0219DF98
	push {r3, lr}
	ldr r3, [r0, #0x54]
	bl ovy326_219dfac
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_219df98
_0219DFA4:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy326_219dfac
ovy326_219dfac: ; 0x0219DFAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0219CC18
	str r0, [sp, #8]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC1C
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp, #4]
	bl ovy326_219e0c4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219dfac

	thumb_func_start ovy326_219dfe4
ovy326_219dfe4: ; 0x0219DFE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r3, #0
	str r2, [sp, #0xc]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4]
	bl sub_020484F4
	ldr r3, [sp, #0x30]
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	mov r2, #0
	asr r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #4]
	add r0, r6, #0
	bl sub_02048564
	ldrh r1, [r5]
	mov r0, #0x40
	bl sub_02048530
	mov r1, #1
	str r1, [sp]
	ldr r1, [sp, #0x34]
	mov r3, #1
	lsl r1, r1, #1
	add r2, r5, r1
	mov r1, #0xe2
	ldrsh r1, [r2, r1]
	add r7, r0, #0
	lsl r1, r1, #1
	add r2, r5, r1
	mov r1, #0xa4
	ldrsh r1, [r2, r1]
	mov r2, #4
	bl sub_02024A14
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_0202437C
	ldrh r1, [r5]
	mov r0, #0x40
	bl sub_02048530
	add r6, r0, #0
	ldr r0, [r5, #0x54]
	mov r1, #2
	bl sub_0204898C
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl sub_02024920
	ldr r0, [r4]
	bl sub_020484F4
	ldr r3, [sp, #0x30]
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x4c]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	mov r2, #0x90
	asr r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #4]
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [sp, #0x10]
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_219dfe4

	thumb_func_start ovy326_219e0c4
ovy326_219e0c4: ; 0x0219E0C4
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, _0219E0E0 ; =0x000039E0
	str r4, [sp, #4]
	mov r4, #4
	str r4, [sp, #8]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #0xc]
	bl ovy326_219dfe4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0219E0E0: .word 0x000039E0
	thumb_func_end ovy326_219e0c4

	thumb_func_start ovy326_219e0e4
ovy326_219e0e4: ; 0x0219E0E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r4, #0x40
	tst r0, r4
	bne _0219E12A
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C178
	add r4, #0xe0
	ldr r0, [r5, r4]
	add r4, sp, #0
	mov r6, #2
	ldrsh r1, [r4, r6]
	bl sub_0219C324
	strh r0, [r4, #2]
	ldrsh r0, [r4, r6]
	cmp r0, #0x28
	bge _0219E118
	mov r0, #0x28
	b _0219E11E
_0219E118:
	cmp r0, #0x98
	ble _0219E120
	mov r0, #0x98
_0219E11E:
	strh r0, [r4, #2]
_0219E120:
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
_0219E12A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy326_219e0e4

	thumb_func_start ovy326_219e130
ovy326_219e130: ; 0x0219E130
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x98
	ldr r2, [r1]
	add r1, r0, #0
	add r2, #0x40
	add r1, #0x98
	str r2, [r1]
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r2, r1
	blt _0219E150
	add r1, r0, #0
	mov r2, #0
	add r1, #0x98
	str r2, [r1]
_0219E150:
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #3
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	neg r4, r0
	mov r0, #3
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #7
	mov r1, #3
	add r2, r4, #0
	bl sub_02045E1C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_219e130

	thumb_func_start ovy326_219e174
ovy326_219e174: ; 0x0219E174
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D554
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1]
	mov r1, #0x40
	tst r1, r2
	beq _0219E1CE
	cmp r4, #0
	bne _0219E232
	bl sub_0203DF20
	mov r1, #0x60
	tst r0, r1
	beq _0219E1A4
	add r1, #0xc0
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_0219CC58
	pop {r3, r4, r5, pc}
_0219E1A4:
	bl sub_0203DF20
	mov r1, #0x90
	tst r0, r1
	beq _0219E232
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	sub r1, r0, #1
	bpl _0219E1BC
	mov r1, #0
	b _0219E1C2
_0219E1BC:
	cmp r1, #6
	blt _0219E1C2
	mov r1, #5
_0219E1C2:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC58
	pop {r3, r4, r5, pc}
_0219E1CE:
	cmp r0, #1
	bne _0219E1D8
	mov r0, #0
	bl sub_0203D564
_0219E1D8:
	cmp r4, #0
	bne _0219E208
	bl sub_0203DF20
	mov r1, #0x60
	tst r0, r1
	beq _0219E1F2
	add r1, #0xc0
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_0219CC58
	pop {r3, r4, r5, pc}
_0219E1F2:
	bl sub_0203DF20
	mov r1, #0x90
	tst r0, r1
	beq _0219E232
	add r1, #0x90
	ldr r0, [r5, r1]
	mov r1, #5
	bl sub_0219CC58
	pop {r3, r4, r5, pc}
_0219E208:
	bl sub_0203DEFC
	mov r1, #0x40
	tst r0, r1
	beq _0219E21E
	add r1, #0xe0
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_0219CC58
	pop {r3, r4, r5, pc}
_0219E21E:
	bl sub_0203DEFC
	mov r1, #0x80
	tst r0, r1
	beq _0219E232
	add r1, #0xa0
	ldr r0, [r5, r1]
	mov r1, #5
	bl sub_0219CC58
_0219E232:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_219e174

	thumb_func_start ovy326_219e234
ovy326_219e234: ; 0x0219E234
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219E2B8 ; =0x000001C2
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219E2BC ; =0x021A36C0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx sub_020787A8
	ldr r1, _0219E2C0 ; =0x04000050
	ldr r0, _0219E2C4 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219E2C8 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219E2CC ; =0x021A2FDC
	add r0, r7, #0
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy326_219e364
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy326_219e408
	ldr r0, _0219E2D0 ; =ovy326_219e350
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E2B8: .word 0x000001C2
_0219E2BC: .word 0x021A36C0
_0219E2C0: .word 0x04000050
_0219E2C4: .word 0x04001050
_0219E2C8: .word 0xFFFF1FFF
_0219E2CC: .word 0x021A2FDC
_0219E2D0: .word ovy326_219e350
	thumb_func_end ovy326_219e234

	thumb_func_start ovy326_219e2d4
ovy326_219e2d4: ; 0x0219E2D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A6A8
	add r0, r4, #4
	bl ovy326_219e448
	add r0, r4, #0
	bl ovy326_219e3c4
	bl sub_020232D8
	ldr r5, _0219E31C ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219E320 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219E324 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x10
	blx sub_020787A8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_0219E31C: .word 0x04000050
_0219E320: .word 0x04001050
_0219E324: .word 0xFFFF1FFF
	thumb_func_end ovy326_219e2d4

	thumb_func_start ovy326_219e328
ovy326_219e328: ; 0x0219E328
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219E464
	add r0, r4, #0
	bl sub_0219E3FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_219e328

	thumb_func_start sub_0219E33C
sub_0219E33C: ; 0x0219E33C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E33C

	thumb_func_start sub_0219E340
sub_0219E340: ; 0x0219E340
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E340

	thumb_func_start sub_0219E344
sub_0219E344: ; 0x0219E344
	ldr r3, _0219E34C ; =sub_0219E474
	add r0, r0, #4
	bx r3
	nop
_0219E34C: .word sub_0219E474
	thumb_func_end sub_0219E344

	thumb_func_start ovy326_219e350
ovy326_219e350: ; 0x0219E350
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219E400
	add r0, r4, #4
	bl sub_0219E46C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_219e350

	thumb_func_start ovy326_219e364
ovy326_219e364: ; 0x0219E364
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx sub_020787A8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _0219E3BC ; =0x021A2FB0
	bl sub_02044710
	ldr r7, _0219E3C0 ; =0x021A300C
_0219E386:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #8
	blo _0219E386
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E3BC: .word 0x021A2FB0
_0219E3C0: .word 0x021A300C
	thumb_func_end ovy326_219e364

	thumb_func_start ovy326_219e3c4
ovy326_219e3c4: ; 0x0219E3C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219E3F8 ; =0x021A300C
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219E3CE:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219E3CE
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx sub_020787A8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E3F8: .word 0x021A300C
	thumb_func_end ovy326_219e3c4

	thumb_func_start sub_0219E3FC
sub_0219E3FC: ; 0x0219E3FC
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E3FC

	thumb_func_start sub_0219E400
sub_0219E400: ; 0x0219E400
	ldr r3, _0219E404 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219E404: .word sub_02045A5C
	thumb_func_end sub_0219E400

	thumb_func_start ovy326_219e408
ovy326_219e408: ; 0x0219E408
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx sub_020787A8
	ldr r0, _0219E444 ; =0x021A2FC0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E444: .word 0x021A2FC0
	thumb_func_end ovy326_219e408

	thumb_func_start ovy326_219e448
ovy326_219e448: ; 0x0219E448
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx sub_020787A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_219e448

	thumb_func_start sub_0219E464
sub_0219E464: ; 0x0219E464
	ldr r3, _0219E468 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219E468: .word sub_0204B794
	thumb_func_end sub_0219E464

	thumb_func_start sub_0219E46C
sub_0219E46C: ; 0x0219E46C
	ldr r3, _0219E470 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219E470: .word sub_0204B7C8
	thumb_func_end sub_0219E46C

	thumb_func_start sub_0219E474
sub_0219E474: ; 0x0219E474
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219E474

	thumb_func_start ovy326_219e478
ovy326_219e478: ; 0x0219E478
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219E540 ; =0x0000008B
	add r7, r2, #0
	bl sub_0203CE0C
	mov r2, #1
	mov r0, #1
	mov r1, #0x9e
	lsl r2, r2, #0x12
	mov r4, #0x9e
	bl sub_0203A15C
	mov r1, #0xb2
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x9e
	bl sub_0203AAEC
	mov r2, #0xb2
	add r5, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	mov r6, #0
	blx sub_020787A8
	strh r4, [r5]
	str r7, [r5, #0x5c]
	ldrh r1, [r5]
	mov r0, #0
	bl ovy326_21a2afc
	str r0, [r5, #0x58]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r5, #0x60]
	ldrh r2, [r5]
	mov r0, #8
	mov r1, #0x28
	mov r7, #0x28
	bl sub_020241E4
	mov r1, #0x28
	add r1, #0xe8
	str r0, [r5, r1]
	add r4, #0xf6
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_0204875C
	str r0, [r5, #0x68]
	str r6, [r5, #0x6c]
	ldrh r0, [r5]
	bl sub_02021998
	str r0, [r5, #0x64]
	ldrh r0, [r5]
	mov r2, #0x20
	mov r3, #0x20
	add r1, r0, #0
	mov r4, #0x20
	bl sub_0203A78C
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xf8
	str r6, [r0]
	add r4, #0xe0
	str r6, [r5, r4]
	lsl r0, r7, #3
	str r6, [r5, r0]
	add r0, r5, #0
	bl ovy326_219e678
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E540: .word 0x0000008B
	thumb_func_end ovy326_219e478

	thumb_func_start ovy326_219e544
ovy326_219e544: ; 0x0219E544
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	str r0, [sp]
	add r0, r5, #0
	bl ovy326_219e7e8
	add r0, r5, #0
	bl ovy326_21a2580
	mov r4, #0x41
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202E818
	add r4, #0x38
	ldr r0, [r5, r4]
	bl sub_0202E1DC
	mov r4, #0
	add r7, r4, #0
_0219E56C:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x68]
	cmp r0, #0
	beq _0219E57C
	bl sub_020487D4
	str r7, [r6, #0x68]
_0219E57C:
	add r4, r4, #1
	cmp r4, #2
	blt _0219E56C
	add r0, r5, #0
	bl ovy326_21a2864
	ldr r0, [r5, #0x64]
	bl sub_02021A18
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02024274
	ldr r0, [r5, #0x60]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_0203A83C
	ldr r0, [r5, #0x58]
	bl ovy326_21a2b9c
	ldrh r4, [r5]
	ldr r0, [sp]
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219E5C8 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E5C8: .word 0x0000008B
	thumb_func_end ovy326_219e544

	thumb_func_start ovy326_219e5cc
ovy326_219e5cc: ; 0x0219E5CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #3
	bhi _0219E63E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E5E6: ; jump table
	.short _0219E5EE - _0219E5E6 - 2 ; case 0
	.short _0219E5FE - _0219E5E6 - 2 ; case 1
	.short _0219E616 - _0219E5E6 - 2 ; case 2
	.short _0219E630 - _0219E5E6 - 2 ; case 3
_0219E5EE:
	bl sub_02027ACC
	cmp r0, #0
	beq _0219E63E
_0219E5F6:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0219E63E
_0219E5FE:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0219E674 ; =0x00002710
	cmp r1, r0
	bne _0219E63E
	ldr r0, [r4, #0x64]
	bl sub_02021C0C
	cmp r0, #1
	bne _0219E63E
	b _0219E5F6
_0219E616:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	b _0219E5F6
_0219E630:
	bl sub_02027ACC
	cmp r0, #0
	beq _0219E63E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219E63E:
	add r0, r4, #0
	bl ovy326_219e7d0
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_0203A7F4
	add r0, r4, #0
	bl ovy326_21a2850
	add r0, r4, #0
	bl ovy326_219e8bc
	ldr r0, [r4, #0x58]
	bl ovy326_21a2bf0
	ldr r0, [r4, #0x58]
	bl sub_021A2C04
	ldr r0, [r4, #0x58]
	bl sub_021A2C08
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219E674: .word 0x00002710
	thumb_func_end ovy326_219e5cc

	thumb_func_start ovy326_219e678
ovy326_219e678: ; 0x0219E678
	push {r4, r5, r6, lr}
	mov r4, #0x51
	add r5, r0, #0
	mov r0, #0
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r1, [r5, #0x5c]
	mov r3, #0x93
	ldr r2, [r1, #8]
	add r1, r4, #4
	str r2, [r5, r1]
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0xec
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x34
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x38
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x28
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x2c
	str r0, [r5, r1]
	add r1, r4, #0
	add r2, r0, #0
	add r1, #0xf0
	add r4, #0xfc
	lsl r3, r3, #2
_0219E6D4:
	lsl r6, r0, #2
	add r6, r5, r6
	str r2, [r6, r1]
	str r2, [r6, r4]
	add r0, r0, #1
	str r2, [r6, r3]
	cmp r0, #3
	blt _0219E6D4
	mov r0, #0x97
	lsl r0, r0, #2
	add r3, r0, #0
	add r4, r0, #0
	mov r1, #0
	add r3, #0xc
	add r4, #0x18
_0219E6F2:
	lsl r6, r2, #2
	add r6, r5, r6
	str r1, [r6, r0]
	str r1, [r6, r3]
	add r2, r2, #1
	str r1, [r6, r4]
	cmp r2, #3
	blt _0219E6F2
	mov r2, #0x96
	mov r3, #0
	lsl r2, r2, #2
	mvn r3, r3
	add r0, r2, #0
	str r3, [r5, r2]
	sub r0, #0xd0
	str r1, [r5, r0]
	sub r2, #0xfc
	mov r0, #0x56
	str r1, [r5, r2]
	lsl r0, r0, #2
	str r3, [r5, r0]
	add r0, #0x1c
	str r1, [r5, r0]
	mov r0, #0
_0219E722:
	lsl r2, r1, #3
	add r2, r5, r2
	add r1, r1, #1
	str r0, [r2, #0x70]
	cmp r1, #0x11
	blt _0219E722
	mov r1, #0x8b
	lsl r1, r1, #2
	add r2, r1, #0
	str r0, [r5, r1]
	add r2, #0x5c
	str r0, [r5, r2]
	mov r4, #0
	add r1, #0x60
_0219E73E:
	lsl r2, r0, #2
	add r2, r5, r2
	add r0, r0, #1
	str r4, [r2, r1]
	cmp r0, #3
	blt _0219E73E
	ldrh r2, [r5]
	ldr r0, _0219E7CC ; =0x0000010A
	mov r1, #0x10
	bl sub_0204A934
	mov r1, #0xa
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #4
	str r4, [r5, r0]
	mov r6, #0
	add r1, #0x18
_0219E762:
	lsl r0, r4, #2
	add r0, r5, r0
	add r4, r4, #1
	str r6, [r0, r1]
	cmp r4, #0xc
	blt _0219E762
	add r0, r5, #0
	bl ovy326_21a24ac
	mov r4, #6
	lsl r4, r4, #6
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy326_21a2a44
	add r1, r4, #0
	sub r1, #0x14
	str r0, [r5, r1]
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x38
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219E7A0
	add r0, r5, #0
	bl sub_021A25A4
	add r1, r4, #4
	str r0, [r5, r1]
_0219E7A0:
	add r0, r5, #0
	bl ovy326_21a0a88
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #6
	bl sub_0202E678
	ldrh r3, [r5]
	mov r4, #0xf
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	bl sub_0202E7A4
	add r4, #0xf5
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy326_219e87c
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E7CC: .word 0x0000010A
	thumb_func_end ovy326_219e678

	thumb_func_start ovy326_219e7d0
ovy326_219e7d0: ; 0x0219E7D0
	push {r4, lr}
	add r4, r0, #0
	bl ovy326_219e89c
	add r0, r4, #0
	bl ovy326_21a1508
	add r0, r4, #0
	bl sub_021A0A84
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_219e7d0

	thumb_func_start ovy326_219e7e8
ovy326_219e7e8: ; 0x0219E7E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #0x80
	tst r0, r1
	ldr r0, [r5, #0x5c]
	beq _0219E804
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0219E80E
	mov r0, #1
	b _0219E80C
_0219E804:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0219E80E
	mov r0, #0
_0219E80C:
	strh r0, [r1]
_0219E80E:
	mov r0, #0x53
	lsl r0, r0, #2
	mov r1, #1
	ldr r2, [r5, r0]
	lsl r1, r1, #0xe
	tst r1, r2
	beq _0219E82C
	ldr r1, [r5, #0x5c]
	ldr r1, [r1, #0x10]
	cmp r1, #0
	beq _0219E838
	add r0, #0x20
	ldr r0, [r5, r0]
	add r0, r0, #1
	b _0219E836
_0219E82C:
	ldr r0, [r5, #0x5c]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0219E838
	mov r0, #0
_0219E836:
	strh r0, [r1]
_0219E838:
	add r0, r5, #0
	bl ovy326_21a1898
	mov r7, #0xa6
	mov r4, #0
	lsl r7, r7, #2
_0219E844:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _0219E856
	bl sub_0203A24C
	mov r0, #0
	str r0, [r6, r7]
_0219E856:
	add r4, r4, #1
	cmp r4, #0xc
	blt _0219E844
	mov r4, #0xa
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_0203A24C
	add r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E872
	bl sub_0203A24C
_0219E872:
	add r0, r5, #0
	bl ovy326_21a0ac8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_219e7e8

	thumb_func_start ovy326_219e87c
ovy326_219e87c: ; 0x0219E87C
	push {r3, lr}
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _0219E894
	cmp r1, #4
	bge _0219E894
	lsl r2, r1, #2
	ldr r1, _0219E898 ; =0x021A36D8
	ldr r1, [r1, r2]
	blx r1
_0219E894:
	pop {r3, pc}
	nop
_0219E898: .word 0x021A36D8
	thumb_func_end ovy326_219e87c

	thumb_func_start ovy326_219e89c
ovy326_219e89c: ; 0x0219E89C
	push {r3, lr}
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _0219E8B4
	cmp r1, #4
	bge _0219E8B4
	lsl r2, r1, #2
	ldr r1, _0219E8B8 ; =0x021A36E8
	ldr r1, [r1, r2]
	blx r1
_0219E8B4:
	pop {r3, pc}
	nop
_0219E8B8: .word 0x021A36E8
	thumb_func_end ovy326_219e89c

	thumb_func_start ovy326_219e8bc
ovy326_219e8bc: ; 0x0219E8BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x64]
	bl sub_02021A3C
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r5, r0
	mov r6, #0
	str r0, [sp]
_0219E8D0:
	lsl r0, r6, #3
	add r4, r5, r0
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0219E92E
	add r1, r4, #0
	add r1, #0x74
	ldrb r1, [r1]
	ldr r7, [r5, #0x64]
	cmp r1, #0
	beq _0219E904
	bl sub_020484F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E904
	ldr r0, [r4, #0x70]
	bl sub_02048244
	add r1, r4, #0
	add r1, #0x74
	mov r0, #0
	strb r0, [r1]
_0219E904:
	ldr r0, [sp]
	mov r7, #1
	lsl r7, r6
	ldr r0, [r0]
	tst r0, r7
	beq _0219E92E
	ldr r0, [r4, #0x70]
	bl sub_0204826C
	ldr r0, [r4, #0x70]
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x59
	bic r1, r7
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219E92E:
	add r6, r6, #1
	cmp r6, #0x11
	blt _0219E8D0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_219e8bc

	thumb_func_start ovy326_219e938
ovy326_219e938: ; 0x0219E938
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #2
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #0x28
	add r3, r1, #1
	mov r1, #0x53
	str r3, [r5, r0]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #1
	bic r2, r0
	str r2, [r5, r1]
	cmp r3, #0
	bne _0219E968
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
_0219E968:
	mov r6, #0x23
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	mov r4, #0
	cmp r0, #0
	ble _0219E998
	add r7, r5, r6
	sub r6, #0xc8
_0219E978:
	add r2, r4, #4
	mov r1, #1
	ldr r0, [r5, r6]
	lsl r1, r2
	tst r0, r1
	beq _0219E990
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #6
	mov r3, #1
	bl ovy326_21a1104
_0219E990:
	ldr r0, [r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0219E978
_0219E998:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r7, #0
	bl ovy326_21a1104
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r6, #1
	tst r0, r6
	beq _0219E9CC
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	add r3, r7, #0
	bl ovy326_21a1104
	b _0219E9EC
_0219E9CC:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, #0x24
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy326_21a1a10
	add r0, r5, #0
	add r1, r7, #0
	bl ovy326_21a1a78
_0219E9EC:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	mov r4, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl ovy326_21a1104
	mov r6, #0x52
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy326_21a0d4c
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _0219EA4C
	add r7, r6, #0
	add r7, #0xe8
	add r6, #0x20
_0219EA2E:
	add r2, r4, #4
	mov r1, #1
	ldr r0, [r5, r6]
	lsl r1, r2
	tst r0, r1
	beq _0219EA44
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy326_21a21d0
_0219EA44:
	ldr r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0219EA2E
_0219EA4C:
	mov r4, #0x53
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r7, #1
	add r0, r1, #0
	tst r0, r7
	beq _0219EA64
	add r0, r4, #0
	add r0, #0xa8
	sub r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EA64:
	lsl r0, r7, #0xb
	tst r0, r1
	bne _0219EA98
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	add r3, r7, #0
	mov r6, #8
	bl ovy326_21a1388
	add r0, r5, #0
	add r1, r7, #0
	bl ovy326_21a2138
	add r0, r5, #0
	add r1, r7, #0
	bl ovy326_21a2194
	add r0, r4, #0
	mov r1, #0xa
	sub r0, #8
	str r1, [r5, r0]
	ldr r1, [r5, r4]
	lsl r0, r6, #8
	orr r0, r1
	str r0, [r5, r4]
_0219EA98:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1544
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219e938

	thumb_func_start ovy326_219eab4
ovy326_219eab4: ; 0x0219EAB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #0
	beq _0219EB04
	add r0, r5, #0
	bl ovy326_219eb0c
	cmp r0, #0
	bne _0219EAD2
	add r0, r5, #0
	bl ovy326_219ebcc
_0219EAD2:
	mov r4, #0x53
	lsl r4, r4, #2
	mov r0, #1
	ldr r1, [r5, r4]
	lsl r0, r0, #0x14
	tst r0, r1
	beq _0219EB04
	add r2, r4, #0
	add r2, #0x20
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1a10
	add r2, r4, #0
	add r2, #0x20
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1544
	ldr r1, [r5, r4]
	ldr r0, _0219EB08 ; =0xFFEFFFFF
	and r0, r1
	str r0, [r5, r4]
_0219EB04:
	pop {r3, r4, r5, pc}
	nop
_0219EB08: .word 0xFFEFFFFF
	thumb_func_end ovy326_219eab4

	thumb_func_start ovy326_219eb0c
ovy326_219eb0c: ; 0x0219EB0C
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x52
	add r5, r0, #0
	lsl r2, r2, #2
	mov r1, #0
	ldr r2, [r5, r2]
	mov r7, #0
	mov r6, #0
	str r1, [sp]
	bl ovy326_21a2114
	add r4, r0, #0
	cmp r4, #3
	beq _0219EB30
	cmp r4, #4
	beq _0219EB30
	cmp r4, #5
	bne _0219EB56
_0219EB30:
	sub r0, r4, #3
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #0x5a
	lsl r0, r0, #2
	add r3, r1, #4
	mov r2, #1
	ldr r0, [r5, r0]
	lsl r2, r3
	tst r0, r2
	beq _0219EB56
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_0219EB56:
	cmp r6, #0
	bne _0219EB70
	cmp r4, #0
	bne _0219EB70
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy326_21a14d4
	mov r0, #1
	mov r7, #2
	bl sub_0203D564
_0219EB70:
	cmp r6, #1
	bne _0219EB9E
	mov r1, #0x53
	lsl r1, r1, #2
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x14
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1a78
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
	str r1, [r5, r0]
	ldr r0, _0219EBC4 ; =0x0000054C
	bl sub_02006254
	mov r0, #1
	bl sub_0203D564
_0219EB9E:
	cmp r7, #0
	beq _0219EBC0
	mov r2, #1
	str r2, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl ovy326_21a2298
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r5, r0]
	ldr r0, _0219EBC8 ; =0x00000551
	bl sub_02006254
_0219EBC0:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EBC4: .word 0x0000054C
_0219EBC8: .word 0x00000551
	thumb_func_end ovy326_219eb0c

	thumb_func_start ovy326_219ebcc
ovy326_219ebcc: ; 0x0219EBCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r6, #0
	mov r5, #0
	str r0, [sp]
	bl sub_0203D554
	cmp r0, #1
	bne _0219EC02
	bl sub_0203DEFC
	cmp r0, #0
	beq _0219EC00
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl ovy326_21a2298
	ldr r0, _0219ECF0 ; =0x00000548
	bl sub_02006254
_0219EC00:
	mov r5, #1
_0219EC02:
	cmp r5, #0
	bne _0219ECB2
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219EC36
	mov r7, #0x5b
	lsl r7, r7, #2
	ldr r2, [r4, r7]
	add r0, r4, #0
	mov r1, #0
	bl sub_021A2A98
	add r5, r0, #0
	ldr r0, [r4, r7]
	cmp r5, r0
	beq _0219EC2E
	ldr r0, _0219ECF0 ; =0x00000548
	mov r6, #1
	bl sub_02006254
_0219EC2E:
	mov r0, #0x5b
	lsl r0, r0, #2
	str r5, [r4, r0]
	b _0219ECB2
_0219EC36:
	bl sub_0203DF44
	mov r5, #0x80
	tst r0, r5
	beq _0219EC68
	add r2, r5, #0
	add r2, #0xec
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_021A2A98
	add r5, #0xec
	add r7, r0, #0
	ldr r0, [r4, r5]
	cmp r7, r0
	beq _0219EC60
	ldr r0, _0219ECF0 ; =0x00000548
	mov r6, #1
	bl sub_02006254
_0219EC60:
	mov r0, #0x5b
	lsl r0, r0, #2
	str r7, [r4, r0]
	b _0219ECB2
_0219EC68:
	bl sub_0203DEFC
	mov r5, #1
	tst r0, r5
	beq _0219EC90
	add r0, r4, #0
	add r1, r5, #0
	bl ovy326_21a1a78
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
	str r1, [r4, r0]
	ldr r0, _0219ECF4 ; =0x0000054C
	bl sub_02006254
	mov r0, #0
	bl sub_0203D564
	b _0219ECB2
_0219EC90:
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _0219ECB2
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ovy326_21a14d4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl ovy326_21a2298
_0219ECB2:
	cmp r6, #1
	bne _0219ECD0
	mov r1, #0x53
	lsl r1, r1, #2
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0x14
	orr r0, r2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
_0219ECD0:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0219ECE8
	mov r0, #1
	str r0, [sp]
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r4, r0]
	ldr r0, _0219ECF8 ; =0x00000551
	bl sub_02006254
_0219ECE8:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219ECF0: .word 0x00000548
_0219ECF4: .word 0x0000054C
_0219ECF8: .word 0x00000551
	thumb_func_end ovy326_219ebcc

	thumb_func_start ovy326_219ecfc
ovy326_219ecfc: ; 0x0219ECFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	mov r4, #0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	beq _0219ED18
	mov r4, #1
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	b _0219ED28
_0219ED18:
	bl sub_0203DA48
	cmp r0, #1
	bne _0219ED2E
	mov r4, #1
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
_0219ED28:
	add r3, r6, #0
	bl ovy326_21a2298
_0219ED2E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy326_219ecfc

	thumb_func_start ovy326_219ed34
ovy326_219ed34: ; 0x0219ED34
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x51
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	cmp r1, #0x82
	bgt _0219ED66
	bge _0219EE22
	cmp r1, #0x64
	bgt _0219ED58
	bge _0219EDEA
	cmp r1, #0
	bgt _0219ED52
	beq _0219EDA0
	pop {r3, r4, r5, r6, r7, pc}
_0219ED52:
	cmp r1, #0xa
	beq _0219EDA4
	pop {r3, r4, r5, r6, r7, pc}
_0219ED58:
	cmp r1, #0x6e
	bgt _0219ED60
	beq _0219EDF0
	pop {r3, r4, r5, r6, r7, pc}
_0219ED60:
	cmp r1, #0x78
	beq _0219EE00
	pop {r3, r4, r5, r6, r7, pc}
_0219ED66:
	add r2, r6, #0
	sub r2, #0x18
	cmp r1, r2
	bgt _0219ED86
	add r2, r6, #0
	sub r2, #0x18
	cmp r1, r2
	blt _0219ED78
	b _0219EF1A
_0219ED78:
	cmp r1, #0xc8
	bgt _0219ED80
	beq _0219EE3E
	pop {r3, r4, r5, r6, r7, pc}
_0219ED80:
	cmp r1, #0xd2
	beq _0219EE78
	pop {r3, r4, r5, r6, r7, pc}
_0219ED86:
	add r2, r6, #0
	add r2, #0xb0
	cmp r1, r2
	bgt _0219ED9A
	add r2, r6, #0
	add r2, #0xb0
	cmp r1, r2
	bne _0219ED98
	b _0219EF42
_0219ED98:
	pop {r3, r4, r5, r6, r7, pc}
_0219ED9A:
	ldr r0, _0219EF5C ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219EDA0:
	mov r0, #0x64
	str r0, [r5, r6]
_0219EDA4:
	add r0, r5, #0
	bl ovy326_21a1338
	cmp r0, #0
	bne _0219EE4C
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	mov r0, #0x64
	mov r1, #0x64
	add r0, #0xe0
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_0219EDEA:
	bl ovy326_219eab4
	pop {r3, r4, r5, r6, r7, pc}
_0219EDF0:
	mov r1, #0
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219EE4C
	ldr r0, _0219EF5C ; =0x00002710
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219EE00:
	mov r1, #1
	mov r4, #1
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219EE4C
	add r0, r6, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	lsl r0, r4, #0xf
	orr r1, r0
	add r0, r6, #0
	add r0, #0xc
	str r1, [r5, r0]
	mov r0, #0x64
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219EE22:
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #1
	bne _0219EE4C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy326_21a2298
	mov r0, #0xc8
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219EE3E:
	mov r1, #0
	mov r2, #2
	mov r4, #0
	bl ovy326_21a1134
	cmp r0, #0
	beq _0219EE4E
_0219EE4C:
	b _0219EF58
_0219EE4E:
	add r0, r5, #0
	mov r1, #7
	mov r2, #1
	add r3, r4, #0
	bl ovy326_21a1388
	add r0, r5, #0
	add r1, r4, #0
	bl ovy326_21a1188
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xd2
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219EE78:
	bl ovy326_21a128c
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _0219EF58
	add r0, r5, #0
	bl ovy326_21a1274
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	cmp r7, #0
	bne _0219EEC0
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy326_21a1370
	ldr r0, _0219EF5C ; =0x00002710
	str r0, [r5, r6]
	add r0, r6, #0
	add r0, #8
	ldr r1, [r5, r0]
	lsl r0, r4, #0xe
	orr r0, r1
	add r6, #8
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219EEC0:
	cmp r7, #1
	bne _0219EEEC
	add r0, r6, #0
	sub r0, #0x18
	str r0, [r5, r6]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	add r3, r4, #0
	bl ovy326_21a1104
	add r6, r4, #0
_0219EED8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #6
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r4, #1
	cmp r4, #3
	blt _0219EED8
	pop {r3, r4, r5, r6, r7, pc}
_0219EEEC:
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r1, #0x64
	str r1, [r5, r6]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	add r1, r4, #0
	bl ovy326_21a1a78
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_0219EF1A:
	mov r1, #0
	mov r4, #0
	bl ovy326_21a1370
	add r0, r6, #4
	ldr r1, [r5, r0]
	add r0, r6, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219ef60
	str r4, [r5, r6]
	mov r1, #3
	add r0, r6, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219e87c
	pop {r3, r4, r5, r6, r7, pc}
_0219EF42:
	bl ovy326_219ecfc
	cmp r0, #1
	bne _0219EF58
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy326_21a14d4
	mov r0, #0x6e
	str r0, [r5, r6]
_0219EF58:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EF5C: .word 0x00002710
	thumb_func_end ovy326_219ed34

	thumb_func_start ovy326_219ef60
ovy326_219ef60: ; 0x0219EF60
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0219EF68:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #6
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r4, #1
	cmp r4, #3
	blt _0219EF68
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy326_21a0da4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy326_219ef60

	thumb_func_start ovy326_219ef88
ovy326_219ef88: ; 0x0219EF88
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #3
	mov r2, #0
	mov r5, #0
	bl sub_02044CFC
	add r7, r5, #0
	mov r6, #1
_0219EF9C:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #3
	add r3, r6, #0
	bl ovy326_21a1104
	add r5, r5, #1
	cmp r5, #3
	blt _0219EF9C
	add r0, r4, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy326_21a2298
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #2
	add r3, r7, #0
	bl ovy326_21a1104
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r7, #0
	bl ovy326_21a1104
	add r0, r4, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy326_21a1104
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ovy326_21a1104
	mov r5, #0x52
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy326_21a0b84
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021A1C0C
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy326_21a0d4c
	add r0, r5, #0
	add r0, #0x14
	str r7, [r4, r0]
	add r0, r5, #4
	ldr r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xb8
	orr r0, r1
	add r1, r5, #4
	str r0, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0x16
	orr r1, r0
	add r0, r5, #4
	str r1, [r4, r0]
	mov r0, #2
	lsl r1, r0, #0xe
	add r0, r5, #0
	add r0, #0x40
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219F050
	add r2, r5, #0
	add r2, #0xf4
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy326_21a1f34
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0xf4
	b _0219F082
_0219F050:
	cmp r0, #2
	bne _0219F06C
	add r2, r5, #0
	add r2, #0x24
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy326_21a1f34
	add r2, r5, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, #0x24
	b _0219F082
_0219F06C:
	add r2, r5, #0
	add r2, #0x28
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy326_21a1f34
	add r2, r5, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, #0x28
_0219F082:
	add r5, #0x14
	ldr r2, [r4, r2]
	ldr r3, [r4, r5]
	bl ovy326_21a1cf8
	mov r5, #0x52
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r5, #0x14
	ldr r0, [r4, r5]
	mov r3, #0x9d
	lsl r0, r0, #2
	add r5, r4, r0
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	sub r3, #0xc
	str r0, [sp]
	ldr r3, [r5, r3]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219ef88

	thumb_func_start ovy326_219f0bc
ovy326_219f0bc: ; 0x0219F0BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	bl sub_02021C0C
	cmp r0, #0
	beq _0219F1A8
	add r0, r4, #0
	bl ovy326_219f1bc
	cmp r0, #0
	bne _0219F0DA
	add r0, r4, #0
	bl ovy326_219f418
_0219F0DA:
	mov r3, #0x53
	lsl r3, r3, #2
	add r0, r3, #0
	ldr r1, [r4, r3]
	add r0, #0xb4
	tst r0, r1
	beq _0219F182
	add r0, r3, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219F0FC
	add r2, r3, #0
	add r0, r4, #0
	mov r1, #1
	add r2, #0xf0
	b _0219F112
_0219F0FC:
	cmp r0, #2
	bne _0219F10A
	add r2, r3, #0
	add r0, r4, #0
	mov r1, #0
	add r2, #0x20
	b _0219F112
_0219F10A:
	add r2, r3, #0
	add r0, r4, #0
	mov r1, #0
	add r2, #0x24
_0219F112:
	add r3, #0x10
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ovy326_21a1cf8
	mov r5, #0x53
	lsl r5, r5, #2
	mov r0, #2
	ldr r1, [r4, r5]
	lsl r0, r0, #0x16
	tst r0, r1
	beq _0219F13E
	add r1, r5, #0
	add r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy326_21a1c34
	ldr r1, [r4, r5]
	ldr r0, _0219F1AC ; =0xFF7FFFFF
	and r0, r1
	str r0, [r4, r5]
_0219F13E:
	mov r5, #0x57
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy326_21a1c78
	add r0, r5, #0
	sub r0, #0x10
	ldr r1, [r4, r0]
	ldr r0, _0219F1B0 ; =0xFFBFFFFF
	add r2, r5, #0
	and r0, r1
	add r1, r5, #0
	sub r1, #0x10
	str r0, [r4, r1]
	ldr r1, [r4, r5]
	sub r2, #0x10
	lsl r1, r1, #2
	add r3, r4, r1
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	cmp r1, #1
	bne _0219F176
	mov r1, #1
	lsl r1, r1, #0x16
	orr r0, r1
	str r0, [r4, r2]
_0219F176:
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _0219F1B4 ; =0xFFFFFDFF
	and r0, r2
	str r0, [r4, r1]
_0219F182:
	mov r5, #0x53
	lsl r5, r5, #2
	mov r0, #2
	ldr r1, [r4, r5]
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0219F1A8
	add r2, r5, #0
	sub r1, r5, #4
	add r2, #0x10
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ovy326_21a20b4
	ldr r1, [r4, r5]
	ldr r0, _0219F1B8 ; =0xFFFF7FFF
	and r0, r1
	str r0, [r4, r5]
_0219F1A8:
	pop {r3, r4, r5, pc}
	nop
_0219F1AC: .word 0xFF7FFFFF
_0219F1B0: .word 0xFFBFFFFF
_0219F1B4: .word 0xFFFFFDFF
_0219F1B8: .word 0xFFFF7FFF
	thumb_func_end ovy326_219f0bc

	thumb_func_start ovy326_219f1bc
ovy326_219f1bc: ; 0x0219F1BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x57
	mov r1, #0
	add r5, r0, #0
	lsl r4, r4, #2
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	ldr r1, [r5, r4]
	mov r6, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x9d
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r1, [r2, r1]
	add r2, r4, #0
	sub r2, #0x14
	str r1, [sp, #4]
	ldr r2, [r5, r2]
	mov r1, #0
	bl ovy326_21a2114
	add r2, r4, #0
	sub r2, #0x14
	add r7, r0, #0
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2114
	cmp r7, #1
	bne _0219F20E
	add r0, r5, #0
	mov r1, #3
	add r2, r6, #0
	bl ovy326_21a14d4
	mov r6, #1
	ldr r0, _0219F40C ; =0x00000551
	b _0219F2A2
_0219F20E:
	cmp r7, #3
	bne _0219F24C
	add r0, r4, #0
	sub r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r1
	bne _0219F310
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r4]
	add r0, r5, r0
	lsl r2, r1, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _0219F310
	sub r1, r1, #1
	str r1, [r0, r2]
	ldr r1, [r5, r4]
	lsl r2, r1, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	bgt _0219F23E
	str r6, [r0, r2]
_0219F23E:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy326_21a14d4
	mov r6, #2
	b _0219F29C
_0219F24C:
	cmp r7, #2
	bne _0219F2A8
	add r0, r4, #0
	sub r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r1
	bne _0219F310
	ldr r0, [r5, r4]
	lsl r3, r0, #2
	ldr r0, [sp, #0x10]
	add r1, r5, r3
	add r2, r5, r0
	sub r0, #0xc
	ldr r0, [r1, r0]
	ldr r7, [r2, r3]
	sub r0, r0, #1
	cmp r7, r0
	beq _0219F310
	add r0, r7, #1
	str r0, [r2, r3]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #2
	sub r1, #0xc
	add r3, r5, r0
	str r1, [sp, #0x10]
	ldr r1, [r3, r1]
	sub r3, r1, #1
	ldr r1, [r2, r0]
	cmp r1, r3
	blt _0219F290
	str r3, [r2, r0]
_0219F290:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy326_21a14d4
	mov r6, #3
_0219F29C:
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0219F410 ; =0x00000548
_0219F2A2:
	bl sub_02006254
	b _0219F30A
_0219F2A8:
	cmp r7, #4
	bne _0219F2B2
	str r6, [r5, r4]
	mov r0, #1
	b _0219F2BA
_0219F2B2:
	cmp r7, #5
	bne _0219F2D4
	mov r0, #1
	str r0, [r5, r4]
_0219F2BA:
	str r0, [sp, #0xc]
	ldr r0, _0219F410 ; =0x00000548
	bl sub_02006254
	add r0, r4, #0
	sub r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x17
_0219F2CC:
	orr r0, r1
	sub r4, #0x10
	str r0, [r5, r4]
	b _0219F30A
_0219F2D4:
	cmp r7, #6
	bne _0219F2F0
	mov r0, #1
	str r0, [sp, #0xc]
	mov r7, #2
	ldr r0, _0219F410 ; =0x00000548
	str r7, [r5, r4]
	bl sub_02006254
	add r0, r4, #0
	sub r0, #0x10
	ldr r1, [r5, r0]
	lsl r0, r7, #0x16
	b _0219F2CC
_0219F2F0:
	cmp r0, #7
	bne _0219F310
	ldr r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	sub r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r1, r0]
	cmp r0, #1
	ble _0219F310
	mov r0, #2
	str r0, [sp, #0xc]
_0219F30A:
	mov r0, #1
	bl sub_0203D564
_0219F310:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0219F368
	mov r7, #0x57
	lsl r7, r7, #2
	ldr r1, [r5, r7]
	mov r4, #0x9d
	lsl r2, r1, #2
	add r2, r5, r2
	lsl r4, r4, #2
	ldr r2, [r2, r4]
	add r0, r5, #0
	mov r3, #0
	bl ovy326_21a2028
	add r0, r7, #0
	sub r0, #0x10
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x74
	orr r1, r0
	add r0, r7, #0
	sub r0, #0x10
	str r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	orr r1, r0
	add r0, r7, #0
	sub r0, #0x10
	str r1, [r5, r0]
	ldr r0, [r5, r7]
	mov r1, #1
	lsl r0, r0, #2
	add r3, r5, r0
	ldr r0, [r3, r4]
	sub r4, #0xc
	str r0, [sp]
	ldr r3, [r3, r4]
	add r0, r5, #0
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	b _0219F3D0
_0219F368:
	cmp r0, #2
	bne _0219F3D0
	mov r4, #0x57
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #0
	mov r3, #1
	mov r7, #1
	bl ovy326_21a2028
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy326_21a1fec
	sub r1, r7, #2
	cmp r0, r1
	beq _0219F3D0
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _0219F3D0
	ldr r1, [r5, r4]
	mov r3, #0x9d
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r3, r3, #2
	str r0, [r1, r3]
	add r0, r4, #0
	sub r0, #0x10
	ldr r1, [r5, r0]
	add r0, r3, #0
	sub r0, #0x74
	orr r1, r0
	add r0, r4, #0
	sub r0, #0x10
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r1, r7, #0
	lsl r0, r0, #2
	add r4, r5, r0
	ldr r0, [r4, r3]
	sub r3, #0xc
	str r0, [sp]
	ldr r3, [r4, r3]
	add r0, r5, #0
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	ldr r0, _0219F414 ; =0x00000645
	bl sub_02006254
_0219F3D0:
	cmp r6, #0
	beq _0219F404
	mov r0, #1
	str r0, [sp, #8]
	cmp r6, #1
	bne _0219F3EC
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r5, r0]
	ldr r0, [sp, #8]
	bl sub_0203D564
	b _0219F404
_0219F3EC:
	cmp r6, #2
	bne _0219F3F8
	mov r0, #0x78
	mov r1, #0x78
	add r0, #0xcc
	b _0219F402
_0219F3F8:
	cmp r6, #3
	bne _0219F404
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
_0219F402:
	str r1, [r5, r0]
_0219F404:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219F40C: .word 0x00000551
_0219F410: .word 0x00000548
_0219F414: .word 0x00000645
	thumb_func_end ovy326_219f1bc

	thumb_func_start ovy326_219f418
ovy326_219f418: ; 0x0219F418
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	mov r7, #0
	mov r6, #0
	str r0, [sp, #4]
	bl sub_0203DEFC
	mov r5, #2
	tst r0, r5
	beq _0219F440
	add r0, r4, #0
	mov r1, #3
	add r2, r7, #0
	bl ovy326_21a14d4
	mov r7, #1
	ldr r0, _0219F63C ; =0x00000551
	b _0219F592
_0219F440:
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _0219F46E
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	bpl _0219F458
	str r5, [r4, r0]
_0219F458:
	ldr r0, _0219F640 ; =0x00000548
	mov r6, #1
	bl sub_02006254
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r0, r6, #0x17
	orr r0, r2
	str r0, [r4, r1]
	b _0219F596
_0219F46E:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _0219F48A
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #3
	blt _0219F488
	str r7, [r4, r0]
_0219F488:
	b _0219F458
_0219F48A:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219F4D6
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	lsl r1, r1, #0x10
	tst r1, r2
	bne _0219F596
	mov r1, #0x9d
	lsl r1, r1, #2
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	ldr r3, [r2, r1]
	cmp r3, #0
	beq _0219F596
	sub r3, r3, #1
	str r3, [r2, r1]
	add r0, #0x10
	ldr r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	cmp r0, #0
	bgt _0219F4C6
	str r7, [r2, r1]
_0219F4C6:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl ovy326_21a14d4
	mov r7, #2
_0219F4D2:
	mov r6, #2
	b _0219F590
_0219F4D6:
	bl sub_0203DF44
	mov r5, #0x80
	tst r0, r5
	beq _0219F53C
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r4, r0]
	lsl r0, r5, #0xf
	tst r0, r1
	bne _0219F596
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	str r0, [sp, #8]
	mov r0, #0x9d
	lsl r0, r0, #2
	mov ip, r0
	add r2, r4, r0
	ldr r0, [sp, #8]
	ldr r3, [r2, r0]
	add r1, r4, r0
	mov r0, ip
	sub r0, #0xc
	ldr r0, [r1, r0]
	sub r0, r0, #1
	cmp r3, r0
	beq _0219F596
	ldr r0, [sp, #8]
	add r1, r3, #1
	str r1, [r2, r0]
	add r5, #0xdc
	ldr r0, [r4, r5]
	mov r1, ip
	lsl r0, r0, #2
	add r3, r4, r0
	sub r1, #0xc
	ldr r1, [r3, r1]
	sub r3, r1, #1
	ldr r1, [r2, r0]
	cmp r1, r3
	blt _0219F52E
	str r3, [r2, r0]
_0219F52E:
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ovy326_21a14d4
	mov r7, #3
	b _0219F4D2
_0219F53C:
	bl sub_0203DEFC
	add r1, r5, #0
	add r1, #0x80
	tst r0, r1
	beq _0219F56A
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r4, r0]
	lsl r0, r5, #0xf
	tst r0, r1
	bne _0219F596
	add r5, #0xdc
	ldr r0, [r4, r5]
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	add r0, #0xc
	sub r1, r1, #1
	str r1, [r2, r0]
	b _0219F58E
_0219F56A:
	bl sub_0203DEFC
	lsl r1, r5, #2
	tst r0, r1
	beq _0219F596
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r4, r0]
	lsl r0, r5, #0xf
	tst r0, r1
	bne _0219F596
	add r5, #0xdc
	ldr r0, [r4, r5]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x9d
	lsl r0, r0, #2
	str r7, [r1, r0]
_0219F58E:
	mov r6, #3
_0219F590:
	ldr r0, _0219F640 ; =0x00000548
_0219F592:
	bl sub_02006254
_0219F596:
	cmp r6, #0
	beq _0219F600
	mov r5, #0x57
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	lsl r2, r1, #2
	add r3, r4, r2
	mov r2, #0x9d
	lsl r2, r2, #2
	str r2, [sp, #0xc]
	ldr r2, [r3, r2]
	mov r3, #0
	bl ovy326_21a2028
	add r0, r5, #0
	add r1, r5, #0
	sub r0, #0x10
	ldr r2, [r4, r0]
	ldr r0, [sp, #0xc]
	sub r5, #0x10
	sub r0, #0x74
	orr r2, r0
	sub r1, #0x10
	str r0, [sp, #0xc]
	str r2, [r4, r5]
	cmp r6, #1
	bne _0219F5D6
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r4, r1]
_0219F5D6:
	cmp r6, #1
	beq _0219F5DE
	cmp r6, #3
	bne _0219F600
_0219F5DE:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0x9d
	lsl r0, r0, #2
	add r3, r4, r0
	lsl r5, r5, #2
	ldr r0, [r3, r5]
	sub r5, #0xc
	str r0, [sp]
	ldr r3, [r3, r5]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
_0219F600:
	cmp r7, #0
	beq _0219F634
	mov r0, #1
	str r0, [sp, #4]
	cmp r7, #1
	bne _0219F61C
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r4, r0]
	mov r0, #0
	bl sub_0203D564
	b _0219F634
_0219F61C:
	cmp r7, #2
	bne _0219F628
	mov r0, #0x78
	mov r1, #0x78
	add r0, #0xcc
	b _0219F632
_0219F628:
	cmp r7, #3
	bne _0219F634
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
_0219F632:
	str r1, [r4, r0]
_0219F634:
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F63C: .word 0x00000551
_0219F640: .word 0x00000548
	thumb_func_end ovy326_219f418

	thumb_func_start ovy326_219f644
ovy326_219f644: ; 0x0219F644
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0x51
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r2, [r5, r6]
	cmp r2, #0x78
	bgt _0219F668
	bge _0219F6E2
	cmp r2, #0x64
	bgt _0219F662
	bge _0219F688
	cmp r2, #0
	beq _0219F684
	b _0219F74C
_0219F662:
	cmp r2, #0x6e
	beq _0219F690
	b _0219F74C
_0219F668:
	add r1, r6, #0
	sub r1, #0x18
	cmp r2, r1
	bgt _0219F67E
	add r1, r6, #0
	sub r1, #0x18
	cmp r2, r1
	bge _0219F722
	cmp r2, #0x82
	beq _0219F714
	b _0219F74C
_0219F67E:
	ldr r0, _0219F758 ; =0x00002710
	cmp r2, r0
	b _0219F74C
_0219F684:
	mov r0, #0x64
	str r0, [r5, r6]
_0219F688:
	add r0, r5, #0
	bl ovy326_219f0bc
	b _0219F74C
_0219F690:
	mov r1, #0
	mov r4, #0
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219F74C
	add r0, r6, #0
	add r0, #0x14
	ldr r1, [r5, r0]
	sub r0, r4, #1
	cmp r1, r0
	bne _0219F6AE
	ldr r0, _0219F758 ; =0x00002710
	str r0, [r5, r6]
	b _0219F74C
_0219F6AE:
	add r0, r6, #0
	sub r0, #0x18
	str r0, [r5, r6]
	add r6, r4, #0
_0219F6B6:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #3
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r4, #1
	cmp r4, #3
	blt _0219F6B6
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	add r3, r6, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	add r3, r6, #0
	bl ovy326_21a1104
	b _0219F74C
_0219F6E2:
	mov r1, #1
	mov r4, #1
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219F74C
_0219F6EE:
	mov r0, #0x64
	str r0, [r5, r6]
	add r0, #0xf8
	ldr r0, [r5, r0]
	mov r6, #0x9d
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r6, r6, #2
	ldr r0, [r3, r6]
	sub r6, #0xc
	str r0, [sp]
	ldr r3, [r3, r6]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	b _0219F74C
_0219F714:
	mov r1, #1
	mov r4, #1
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219F74C
	b _0219F6EE
_0219F722:
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl ovy326_21a2298
	add r0, r5, #0
	bl ovy326_219f75c
	add r0, r6, #0
	str r4, [r5, r6]
	add r0, #0x14
	ldr r1, [r5, r0]
	add r0, r6, #4
	str r1, [r5, r0]
	sub r0, r4, #1
	add r6, #0x14
	str r0, [r5, r6]
	add r0, r5, #0
	bl ovy326_219e87c
_0219F74C:
	add r0, r5, #0
	bl ovy326_21a1b00
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219F758: .word 0x00002710
	thumb_func_end ovy326_219f644

	thumb_func_start ovy326_219f75c
ovy326_219f75c: ; 0x0219F75C
	push {r4, r5, r6, lr}
	mov r1, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_021A1C0C
	add r6, r4, #0
_0219F76A:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #3
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r4, #1
	cmp r4, #3
	blt _0219F76A
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy326_21a0da4
	mov r0, #2
	bl sub_02045708
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	mov r3, #1
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	add r3, r6, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	add r3, r6, #0
	bl ovy326_21a1104
	pop {r4, r5, r6, pc}
	thumb_func_end ovy326_219f75c

	thumb_func_start ovy326_219f7c0
ovy326_219f7c0: ; 0x0219F7C0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x61
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r4, #0
	ldr r1, [r5, r4]
	add r0, #0xac
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xb8
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xb0
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xd0
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r5, r0]
	mov r0, #2
	mov r1, #0
	mov r6, #2
	bl sub_02044C98
	add r0, r4, #0
	sub r0, #0x38
	ldr r1, [r5, r0]
	ldr r0, _0219F990 ; =0xFEFFFFFF
	and r1, r0
	add r0, r4, #0
	sub r0, #0x38
	str r1, [r5, r0]
	add r1, r4, #0
	sub r1, #0x3c
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy326_21a16e8
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _0219F836
	add r0, r4, #0
	sub r0, #0x38
	ldr r1, [r5, r0]
	lsl r0, r6, #0x17
	orr r0, r1
	sub r4, #0x38
	str r0, [r5, r4]
_0219F836:
	mov r4, #0x8b
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #7
	bl sub_0219CCB0
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #1
	mov r7, #0
	mov r6, #1
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a78
	add r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #6
	bgt _0219F870
	add r0, r5, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl ovy326_21a1104
	b _0219F882
_0219F870:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy326_21a1104
	add r0, r5, #0
	bl ovy326_21a1cb4
_0219F882:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy326_21a1104
	mov r4, #0x8d
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	sub r3, r4, #4
	str r0, [sp]
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	add r2, r4, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a10
	add r1, r4, #0
	sub r1, #0xec
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	mov r7, #2
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	ldr r2, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1544
	add r0, r4, #0
	mov r2, #5
	sub r0, #0xf0
	str r2, [r5, r0]
	add r0, r4, #0
	mov r6, #0x64
	sub r0, #0xc0
	str r6, [r5, r0]
	mov r0, #0x64
	add r0, #0xe8
	ldr r1, [r5, r0]
	lsl r0, r7, #9
	tst r0, r1
	bne _0219F93E
	add r0, r5, #0
	mov r1, #8
	mov r3, #1
	mov r7, #8
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xa
	sub r4, #0xc0
	str r0, [r5, r4]
	add r0, r6, #0
	add r0, #0xe8
	ldr r1, [r5, r0]
	lsl r0, r7, #7
	orr r0, r1
	add r6, #0xe8
	str r0, [r5, r6]
_0219F93E:
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r7, #0
	mov r6, #2
	bl ovy326_21a1104
	mov r4, #0x53
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	lsl r0, r6, #0x17
	tst r0, r1
	beq _0219F98E
	add r0, r4, #0
	add r0, #0x28
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	str r1, [r5, r0]
	add r0, r6, #0
	mov r1, #1
	bl sub_02044C98
	bl sub_0203D554
	cmp r0, #0
	bne _0219F98E
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy326_21a1104
	add r4, #0xf4
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy326_21a1a10
_0219F98E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F990: .word 0xFEFFFFFF
	thumb_func_end ovy326_219f7c0

	thumb_func_start ovy326_219f994
ovy326_219f994: ; 0x0219F994
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x64]
	mov r6, #0
	bl sub_02021C0C
	cmp r0, #0
	beq _0219FA84
	bl sub_0203D554
	cmp r0, #1
	bne _0219F9C8
	bl sub_0203DEFC
	cmp r0, #0
	beq _0219F9C8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy326_21a2298
	ldr r0, _0219FA88 ; =0x00000548
	bl sub_02006254
_0219F9C8:
	add r0, r5, #0
	bl ovy326_21a17c8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy326_21a17e4
	add r4, r0, #0
	beq _0219F9EC
	mov r6, #1
	cmp r4, #2
	beq _0219F9EC
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
_0219F9EC:
	cmp r4, #2
	bne _0219FA0A
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl ovy326_21a1a78
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
	str r1, [r5, r0]
	ldr r0, _0219FA8C ; =0x0000054C
	bl sub_02006254
	b _0219FA1E
_0219FA0A:
	cmp r4, #3
	bne _0219FA1E
	mov r0, #0x78
	mov r1, #0x78
	add r0, #0xcc
	str r1, [r5, r0]
	ldr r0, _0219FA88 ; =0x00000548
	bl sub_02006254
	mov r6, #1
_0219FA1E:
	cmp r6, #0
	bne _0219FA32
	add r0, r5, #0
	bl ovy326_219fa94
	cmp r0, #0
	bne _0219FA32
	add r0, r5, #0
	bl ovy326_219fae8
_0219FA32:
	mov r4, #0x15
	lsl r4, r4, #4
	mov r0, #2
	ldr r1, [r5, r4]
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0219FA7E
	add r2, r4, #0
	add r2, #0xe4
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1544
	add r2, r4, #0
	add r2, #0xf0
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a10
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r5, r0]
	add r3, r4, #0
	str r0, [sp]
	add r3, #0xe0
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	ldr r1, [r5, r4]
	ldr r0, _0219FA90 ; =0xFFFF7FFF
	and r0, r1
	str r0, [r5, r4]
_0219FA7E:
	add r0, r5, #0
	bl ovy326_21a1cb4
_0219FA84:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219FA88: .word 0x00000548
_0219FA8C: .word 0x0000054C
_0219FA90: .word 0xFFFF7FFF
	thumb_func_end ovy326_219f994

	thumb_func_start ovy326_219fa94
ovy326_219fa94: ; 0x0219FA94
	push {r4, r5, r6, lr}
	mov r2, #0x52
	add r5, r0, #0
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r1, #0
	mov r4, #0
	mov r6, #0
	bl ovy326_21a2114
	cmp r0, #1
	bne _0219FABE
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ovy326_21a14d4
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
_0219FABE:
	cmp r4, #0
	beq _0219FADE
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r5, r0]
	ldr r0, _0219FAE4 ; =0x00000551
	mov r6, #1
	bl sub_02006254
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl ovy326_21a2298
_0219FADE:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0219FAE4: .word 0x00000551
	thumb_func_end ovy326_219fa94

	thumb_func_start ovy326_219fae8
ovy326_219fae8: ; 0x0219FAE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _0219FB06
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ovy326_21a14d4
	mov r4, #1
_0219FB06:
	cmp r4, #0
	beq _0219FB36
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	mov r6, #1
	bl ovy326_21a2298
	cmp r4, #1
	bne _0219FB28
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r5, r0]
	ldr r0, _0219FB3C ; =0x00000551
	b _0219FB32
_0219FB28:
	mov r0, #0x78
	mov r1, #0x78
	add r0, #0xcc
	str r1, [r5, r0]
	ldr r0, _0219FB40 ; =0x00000548
_0219FB32:
	bl sub_02006254
_0219FB36:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0219FB3C: .word 0x00000551
_0219FB40: .word 0x00000548
	thumb_func_end ovy326_219fae8

	thumb_func_start ovy326_219fb44
ovy326_219fb44: ; 0x0219FB44
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0x82
	bgt _0219FB86
	blt _0219FB56
	b _0219FD5E
_0219FB56:
	cmp r1, #0x64
	bgt _0219FB70
	blt _0219FB5E
	b _0219FC74
_0219FB5E:
	cmp r1, #5
	bgt _0219FB6A
	bge _0219FBCE
	cmp r1, #0
	beq _0219FBCA
	pop {r3, r4, r5, r6, r7, pc}
_0219FB6A:
	cmp r1, #0xa
	beq _0219FC36
	pop {r3, r4, r5, r6, r7, pc}
_0219FB70:
	cmp r1, #0x73
	bgt _0219FB7E
	blt _0219FB78
	b _0219FCB0
_0219FB78:
	cmp r1, #0x6e
	beq _0219FC7A
	pop {r3, r4, r5, r6, r7, pc}
_0219FB7E:
	cmp r1, #0x78
	bne _0219FB84
	b _0219FD26
_0219FB84:
	pop {r3, r4, r5, r6, r7, pc}
_0219FB86:
	cmp r1, #0xf0
	bgt _0219FBA6
	blt _0219FB8E
	b _0219FF10
_0219FB8E:
	cmp r1, #0xd2
	bgt _0219FB9E
	blt _0219FB96
	b _0219FDB4
_0219FB96:
	cmp r1, #0xc8
	bne _0219FB9C
	b _0219FD7A
_0219FB9C:
	pop {r3, r4, r5, r6, r7, pc}
_0219FB9E:
	cmp r1, #0xe6
	bne _0219FBA4
	b _0219FEE2
_0219FBA4:
	pop {r3, r4, r5, r6, r7, pc}
_0219FBA6:
	add r2, r4, #0
	add r2, #0x4c
	cmp r1, r2
	bgt _0219FBC4
	add r2, r4, #0
	add r2, #0x4c
	cmp r1, r2
	blt _0219FBB8
	b _0219FF76
_0219FBB8:
	add r2, r4, #0
	sub r2, #0x18
	cmp r1, r2
	bne _0219FBC2
	b _0219FF4E
_0219FBC2:
	pop {r3, r4, r5, r6, r7, pc}
_0219FBC4:
	ldr r0, _0219FCE0 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219FBCA:
	mov r0, #0x64
	str r0, [r5, r4]
_0219FBCE:
	mov r4, #0x53
	lsl r4, r4, #2
	mov r6, #1
	ldr r0, [r5, r4]
	lsl r6, r6, #0x18
	tst r0, r6
	bne _0219FC2A
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _0219FCBE
	ldr r0, [r5, r4]
	mov r7, #1
	orr r0, r6
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0x28
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	str r1, [r5, r0]
	mov r0, #2
	mov r1, #1
	mov r6, #2
	bl sub_02044C98
	bl sub_0203D554
	cmp r0, #0
	bne _0219FCBE
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy326_21a1104
	add r4, #0xf4
	ldr r2, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a10
	pop {r3, r4, r5, r6, r7, pc}
_0219FC2A:
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	sub r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FC36:
	bl ovy326_21a1338
	cmp r0, #0
	bne _0219FCBE
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_0219FC74:
	bl ovy326_219f994
	pop {r3, r4, r5, r6, r7, pc}
_0219FC7A:
	mov r1, #0
	mov r6, #0
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219FCBE
	add r0, r5, #0
	mov r1, #7
	mov r2, #7
	add r3, r6, #0
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #2
	bl ovy326_21a1188
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0x73
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FCB0:
	bl ovy326_21a128c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0219FCC0
_0219FCBE:
	b _0219FF9A
_0219FCC0:
	add r0, r5, #0
	bl ovy326_21a1274
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	cmp r6, #0
	bne _0219FCE8
	ldr r0, _0219FCE0 ; =0x00002710
	b _0219FCE4
	.align 2, 0
_0219FCE0: .word 0x00002710
_0219FCE4:
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FCE8:
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r6, #0x64
	mov r1, #0x64
	str r6, [r5, r4]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	add r1, r7, #0
	bl ovy326_21a1a78
	mov r0, #0x64
	add r0, #0xec
	ldr r1, [r5, r0]
	mov r0, #0xc0
	bic r1, r0
	add r6, #0xec
	str r1, [r5, r6]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_0219FD26:
	bl ovy326_21a17c8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219FDC2
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a23d4
	cmp r0, #1
	bne _0219FDC2
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r5, r0]
	add r3, r4, #0
	str r0, [sp]
	add r3, #0xec
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	sub r3, r3, #1
	bl ovy326_21a2350
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FD5E:
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #1
	bne _0219FDC2
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy326_21a2298
	mov r0, #0xc8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FD7A:
	mov r1, #0
	mov r2, #2
	mov r6, #0
	mov r7, #2
	bl ovy326_21a1134
	cmp r0, #0
	bne _0219FDC2
	add r0, r5, #0
	mov r1, #7
	add r2, r7, #0
	add r3, r6, #0
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1188
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xd2
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FDB4:
	bl ovy326_21a128c
	mov r7, #0
	add r6, r0, #0
	mvn r7, r7
	cmp r6, r7
	bne _0219FDC4
_0219FDC2:
	b _0219FF9A
_0219FDC4:
	add r0, r5, #0
	bl ovy326_21a1274
	cmp r6, #0
	bne _0219FE7C
	add r1, r4, #0
	add r1, #0xf0
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy326_21a2888
	cmp r0, #1
	bne _0219FDF8
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	add r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	mov r0, #0xe6
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FDF8:
	add r0, r5, #0
	bl sub_021A287C
	cmp r0, r7
	bne _0219FE44
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r4, #0
	add r0, #0x4c
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a1104
	add r4, #0x2c
	str r6, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FE44:
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r4, #0
	add r0, #0x4c
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r6, #2
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a1104
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	lsl r0, r6, #0xf
	orr r0, r1
	add r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FE7C:
	cmp r6, #1
	bne _0219FEA4
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r4, #0
	sub r0, #0x18
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy326_21a1104
	pop {r3, r4, r5, r6, r7, pc}
_0219FEA4:
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r1, #0x64
	str r1, [r5, r4]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a78
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_0219FEE2:
	mov r1, #0
	mov r2, #2
	bl ovy326_21a1134
	cmp r0, #0
	bne _0219FF9A
	add r0, r5, #0
	mov r1, #8
	mov r2, #6
	mov r3, #1
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xf0
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219FF10:
	bl ovy326_21a1338
	cmp r0, #0
	bne _0219FF9A
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_0219FF4E:
	mov r1, #0
	mov r6, #0
	bl ovy326_21a1370
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219ff9c
	str r6, [r5, r4]
	mov r1, #3
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219e87c
	pop {r3, r4, r5, r6, r7, pc}
_0219FF76:
	mov r1, #1
	bl ovy326_21a1370
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219ff9c
	mov r1, #0
	str r1, [r5, r4]
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219e87c
_0219FF9A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_219fb44

	thumb_func_start ovy326_219ff9c
ovy326_219ff9c: ; 0x0219FF9C
	push {r4, lr}
	add r4, r0, #0
	bl ovy326_21a1898
	mov r0, #2
	bl sub_02045708
	mov r1, #0x8d
	lsl r1, r1, #2
	add r0, r1, #0
	ldr r2, [r4, r1]
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	add r1, #0x20
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_219ff9c

	thumb_func_start ovy326_219ffd0
ovy326_219ffd0: ; 0x0219FFD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #2
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #0x28
	add r3, r1, #1
	mov r1, #0x53
	str r3, [r5, r0]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #1
	bic r2, r0
	str r2, [r5, r1]
	cmp r3, #0
	bne _021A0000
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
_021A0000:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl ovy326_21a1104
	mov r6, #0x52
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy326_21a0d4c
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021A0078
	add r7, r6, #0
	add r7, #0xe8
	add r6, #0x20
_021A004E:
	add r2, r4, #4
	mov r1, #1
	ldr r0, [r5, r6]
	lsl r1, r2
	tst r0, r1
	beq _021A0070
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy326_21a21d0
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #6
	mov r3, #1
	bl ovy326_21a1104
_021A0070:
	ldr r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _021A004E
_021A0078:
	mov r4, #0x53
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r0, #1
	tst r0, r1
	bne _021A00B6
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #1
	mov r7, #0
	mov r6, #2
	bl ovy326_21a1104
	add r2, r4, #0
	add r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1a10
	ldr r1, [r5, r4]
	lsl r0, r6, #0xf
	tst r0, r1
	bne _021A00B6
	add r4, #0x24
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy326_21a1544
_021A00B6:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl ovy326_21a2298
	mov r0, #0x64
	mov r4, #0x64
	add r0, #0xe0
	str r4, [r5, r0]
	mov r0, #0x64
	add r0, #0xe8
	ldr r2, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x12
	add r1, r2, #0
	tst r1, r0
	bne _021A012E
	lsr r0, r0, #2
	tst r0, r2
	bne _021A0106
	add r0, r5, #0
	mov r1, #8
	mov r2, #9
	mov r3, #1
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a215c
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xa
	add r4, #0xe0
	str r0, [r5, r4]
	b _021A012E
_021A0106:
	add r0, r5, #0
	mov r1, #8
	mov r2, #0xb
	add r3, r6, #0
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	ldr r1, _021A014C ; =0x00000195
	mov r2, #2
	add r0, r1, #0
	sub r0, #0x51
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r6, #0
	bl ovy326_21a1104
_021A012E:
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r4, #4
	ldr r1, [r5, r0]
	ldr r0, _021A0150 ; =0xFFFBFFFF
	and r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A014C: .word 0x00000195
_021A0150: .word 0xFFFBFFFF
	thumb_func_end ovy326_219ffd0

	thumb_func_start ovy326_21a0154
ovy326_21a0154: ; 0x021A0154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #0
	beq _021A01A4
	add r0, r5, #0
	bl ovy326_21a01ac
	cmp r0, #0
	bne _021A0172
	add r0, r5, #0
	bl ovy326_21a0274
_021A0172:
	mov r4, #0x53
	lsl r4, r4, #2
	mov r0, #2
	ldr r1, [r5, r4]
	lsl r0, r0, #0x14
	tst r0, r1
	beq _021A01A4
	add r2, r4, #0
	add r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1a10
	add r2, r4, #0
	add r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1544
	ldr r1, [r5, r4]
	ldr r0, _021A01A8 ; =0xFFDFFFFF
	and r0, r1
	str r0, [r5, r4]
_021A01A4:
	pop {r3, r4, r5, pc}
	nop
_021A01A8: .word 0xFFDFFFFF
	thumb_func_end ovy326_21a0154

	thumb_func_start ovy326_21a01ac
ovy326_21a01ac: ; 0x021A01AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0
	mov r2, #0x52
	str r1, [sp, #4]
	mov r1, #0
	add r5, r0, #0
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r6, #0
	str r1, [sp]
	bl ovy326_21a2114
	add r4, r0, #0
	cmp r4, #3
	beq _021A01D4
	cmp r4, #4
	beq _021A01D4
	cmp r4, #5
	bne _021A01F6
_021A01D4:
	sub r0, r4, #3
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r2, #0x5a
	lsl r2, r2, #2
	add r3, r0, #4
	mov r1, #1
	ldr r7, [r5, r2]
	lsl r1, r3
	tst r1, r7
	beq _021A01F6
	add r2, #8
	str r0, [r5, r2]
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_021A01F6:
	cmp r6, #0
	bne _021A0212
	cmp r4, #0
	bne _021A0212
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy326_21a14d4
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	bl sub_0203D564
_021A0212:
	cmp r6, #1
	bne _021A0240
	mov r1, #0x53
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x14
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1a78
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
	str r1, [r5, r0]
	ldr r0, _021A026C ; =0x0000054C
	bl sub_02006254
	mov r0, #1
	bl sub_0203D564
_021A0240:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A0264
	mov r0, #1
	str r0, [sp]
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r5, r0]
	ldr r0, _021A0270 ; =0x00000551
	bl sub_02006254
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl ovy326_21a2298
_021A0264:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A026C: .word 0x0000054C
_021A0270: .word 0x00000551
	thumb_func_end ovy326_21a01ac

	thumb_func_start ovy326_21a0274
ovy326_21a0274: ; 0x021A0274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r6, #0
	mov r5, #0
	str r0, [sp]
	bl sub_0203D554
	cmp r0, #1
	bne _021A02AA
	bl sub_0203DEFC
	cmp r0, #0
	beq _021A02A8
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl ovy326_21a2298
	ldr r0, _021A0398 ; =0x00000548
	bl sub_02006254
_021A02A8:
	mov r5, #1
_021A02AA:
	cmp r5, #0
	bne _021A034E
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _021A02DE
	mov r7, #0x17
	lsl r7, r7, #4
	ldr r2, [r4, r7]
	add r0, r4, #0
	mov r1, #0
	bl sub_021A2A98
	add r5, r0, #0
	ldr r0, [r4, r7]
	cmp r5, r0
	beq _021A02D6
	ldr r0, _021A0398 ; =0x00000548
	mov r6, #1
	bl sub_02006254
_021A02D6:
	mov r0, #0x17
	lsl r0, r0, #4
	str r5, [r4, r0]
	b _021A034E
_021A02DE:
	bl sub_0203DF44
	mov r5, #0x80
	tst r0, r5
	beq _021A0310
	add r2, r5, #0
	add r2, #0xf0
	ldr r2, [r4, r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_021A2A98
	add r5, #0xf0
	add r7, r0, #0
	ldr r0, [r4, r5]
	cmp r7, r0
	beq _021A0308
	ldr r0, _021A0398 ; =0x00000548
	mov r6, #1
	bl sub_02006254
_021A0308:
	mov r0, #0x17
	lsl r0, r0, #4
	str r7, [r4, r0]
	b _021A034E
_021A0310:
	bl sub_0203DEFC
	mov r5, #1
	tst r0, r5
	beq _021A0338
	add r0, r4, #0
	add r1, r5, #0
	bl ovy326_21a1a78
	mov r0, #0x82
	mov r1, #0x82
	add r0, #0xc2
	str r1, [r4, r0]
	ldr r0, _021A039C ; =0x0000054C
	bl sub_02006254
	mov r0, #0
	bl sub_0203D564
	b _021A034E
_021A0338:
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	beq _021A034E
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ovy326_21a14d4
	str r5, [sp, #4]
_021A034E:
	cmp r6, #1
	bne _021A036C
	mov r1, #0x53
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x14
	orr r0, r2
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
_021A036C:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A0390
	mov r0, #1
	str r0, [sp]
	mov r0, #0x6e
	mov r1, #0x6e
	add r0, #0xd6
	str r1, [r4, r0]
	ldr r0, _021A03A0 ; =0x00000551
	bl sub_02006254
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
_021A0390:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0398: .word 0x00000548
_021A039C: .word 0x0000054C
_021A03A0: .word 0x00000551
	thumb_func_end ovy326_21a0274

	thumb_func_start ovy326_21a03a4
ovy326_21a03a4: ; 0x021A03A4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0xdc
	bgt _021A03FA
	blt _021A03B6
	b _021A071C
_021A03B6:
	cmp r1, #0x73
	bgt _021A03D8
	blt _021A03BE
	b _021A053A
_021A03BE:
	cmp r1, #0xa
	bgt _021A03CA
	bge _021A0482
	cmp r1, #0
	beq _021A047E
	pop {r3, r4, r5, r6, r7, pc}
_021A03CA:
	cmp r1, #0x64
	bgt _021A03D2
	beq _021A04C8
	pop {r3, r4, r5, r6, r7, pc}
_021A03D2:
	cmp r1, #0x6e
	beq _021A04CE
	pop {r3, r4, r5, r6, r7, pc}
_021A03D8:
	cmp r1, #0x82
	bgt _021A03E8
	blt _021A03E0
	b _021A061E
_021A03E0:
	cmp r1, #0x78
	bne _021A03E6
	b _021A05FC
_021A03E6:
	pop {r3, r4, r5, r6, r7, pc}
_021A03E8:
	cmp r1, #0xc8
	bgt _021A03F2
	bne _021A03F0
	b _021A063A
_021A03F0:
	pop {r3, r4, r5, r6, r7, pc}
_021A03F2:
	cmp r1, #0xd2
	bne _021A03F8
	b _021A06AA
_021A03F8:
	pop {r3, r4, r5, r6, r7, pc}
_021A03FA:
	add r2, r4, #0
	add r2, #0x51
	cmp r1, r2
	bgt _021A0446
	add r2, r4, #0
	add r2, #0x51
	cmp r1, r2
	blt _021A040C
	b _021A08F6
_021A040C:
	add r2, r4, #0
	sub r2, #0x18
	cmp r1, r2
	bgt _021A0426
	add r2, r4, #0
	sub r2, #0x18
	cmp r1, r2
	blt _021A041E
	b _021A086E
_021A041E:
	cmp r1, #0xf0
	bne _021A0424
	b _021A07C4
_021A0424:
	pop {r3, r4, r5, r6, r7, pc}
_021A0426:
	add r2, r4, #0
	sub r2, #0xe
	cmp r1, r2
	bgt _021A043A
	add r2, r4, #0
	sub r2, #0xe
	cmp r1, r2
	bne _021A0438
	b _021A08A4
_021A0438:
	pop {r3, r4, r5, r6, r7, pc}
_021A043A:
	add r2, r4, #0
	add r2, #0x4c
	cmp r1, r2
	bne _021A0444
	b _021A08DA
_021A0444:
	pop {r3, r4, r5, r6, r7, pc}
_021A0446:
	add r2, r4, #0
	add r2, #0xb0
	cmp r1, r2
	bgt _021A0464
	add r2, r4, #0
	add r2, #0xb0
	cmp r1, r2
	blt _021A0458
	b _021A094E
_021A0458:
	add r0, r4, #0
	add r0, #0x56
	cmp r1, r0
	bne _021A0462
	b _021A0922
_021A0462:
	pop {r3, r4, r5, r6, r7, pc}
_021A0464:
	add r2, r4, #0
	add r2, #0xba
	cmp r1, r2
	bgt _021A0478
	add r2, r4, #0
	add r2, #0xba
	cmp r1, r2
	bne _021A0476
	b _021A09FA
_021A0476:
	pop {r3, r4, r5, r6, r7, pc}
_021A0478:
	ldr r0, _021A05B0 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A047E:
	mov r0, #0x64
	str r0, [r5, r4]
_021A0482:
	add r0, r5, #0
	bl ovy326_21a1338
	cmp r0, #0
	bne _021A0548
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	mov r0, #0x64
	mov r1, #0x64
	add r0, #0xe0
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_021A04C8:
	bl ovy326_21a0154
	pop {r3, r4, r5, r6, r7, pc}
_021A04CE:
	mov r1, #0
	mov r6, #0
	bl ovy326_21a23d4
	cmp r0, #1
	bne _021A0548
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x10
	tst r0, r1
	beq _021A0510
	add r0, r4, #0
	sub r0, #0x18
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r6, #0
_021A04FC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #6
	add r3, r4, #0
	bl ovy326_21a1104
	add r6, r6, #1
	cmp r6, #3
	blt _021A04FC
	pop {r3, r4, r5, r6, r7, pc}
_021A0510:
	add r0, r5, #0
	mov r1, #7
	mov r2, #8
	add r3, r6, #0
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #2
	bl ovy326_21a1188
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0x73
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A053A:
	bl ovy326_21a128c
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _021A054A
_021A0548:
	b _021A0A4E
_021A054A:
	add r0, r5, #0
	bl ovy326_21a1274
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	cmp r7, #0
	bne _021A05BE
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	add r0, r4, #0
	add r0, #0x14
	ldr r1, [r5, r0]
	sub r0, r6, #1
	cmp r1, r0
	bne _021A0580
	ldr r0, _021A05B0 ; =0x00002710
	str r0, [r5, r4]
	b _021A05A6
_021A0580:
	add r0, r4, #0
	sub r0, #0x18
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r6, #0
_021A0594:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #6
	add r3, r4, #0
	bl ovy326_21a1104
	add r6, r6, #1
	cmp r6, #3
	blt _021A0594
_021A05A6:
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _021A05B4 ; =0xFFFCFFFF
	b _021A05B8
	.align 2, 0
_021A05B0: .word 0x00002710
_021A05B4: .word 0xFFFCFFFF
_021A05B8:
	and r0, r2
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021A05BE:
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r7, #0x64
	mov r1, #0x64
	str r7, [r5, r4]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r6, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	add r1, r6, #0
	bl ovy326_21a1a78
	mov r0, #0x64
	add r0, #0xec
	ldr r1, [r5, r0]
	mov r0, #0xc0
	bic r1, r0
	add r7, #0xec
	str r1, [r5, r7]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_021A05FC:
	mov r1, #1
	mov r6, #1
	bl ovy326_21a23d4
	cmp r0, #1
	bne _021A06B8
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	lsl r0, r6, #0xf
	orr r1, r0
	add r0, r4, #0
	add r0, #0xc
	str r1, [r5, r0]
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A061E:
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #1
	bne _021A06B8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy326_21a2298
	mov r0, #0xc8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A063A:
	mov r1, #0
	mov r2, #2
	mov r7, #0
	mov r6, #2
	bl ovy326_21a1134
	cmp r0, #0
	bne _021A06B8
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	lsl r0, r6, #0x10
	tst r0, r1
	bne _021A0680
	add r0, r5, #0
	mov r1, #7
	mov r2, #3
	add r3, r7, #0
	bl ovy326_21a1388
	add r0, r5, #0
	add r1, r6, #0
	bl ovy326_21a1188
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xd2
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A0680:
	add r0, r5, #0
	mov r1, #7
	add r2, r6, #0
	add r3, r7, #0
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #3
	bl ovy326_21a1188
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	mov r0, #0xdc
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A06AA:
	bl ovy326_21a128c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021A06BA
_021A06B8:
	b _021A0A4E
_021A06BA:
	add r0, r5, #0
	bl ovy326_21a1274
	cmp r6, #0
	bne _021A06DE
	add r0, r5, #0
	mov r1, #7
	mov r2, #4
	mov r3, #0
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #2
	bl ovy326_21a1188
	mov r0, #0xf0
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A06DE:
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r1, #0x64
	str r1, [r5, r4]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a78
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_021A071C:
	bl ovy326_21a128c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021A07D2
	add r0, r5, #0
	bl ovy326_21a1274
	cmp r6, #0
	bne _021A0786
	add r0, r5, #0
	mov r1, #1
	mov r7, #1
	bl ovy326_21a1370
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r4, #0
	sub r0, #0xe
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	lsl r0, r7, #0x12
	orr r0, r1
	add r4, #8
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy326_21a1104
	add r4, r6, #0
_021A0772:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #6
	add r3, r4, #0
	bl ovy326_21a1104
	add r6, r6, #1
	cmp r6, #3
	blt _021A0772
	pop {r3, r4, r5, r6, r7, pc}
_021A0786:
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r1, #0x64
	str r1, [r5, r4]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a78
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_021A07C4:
	bl ovy326_21a128c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021A07D4
_021A07D2:
	b _021A0A4E
_021A07D4:
	add r0, r5, #0
	bl ovy326_21a1274
	cmp r6, #0
	bne _021A0830
	mov r4, #0
_021A07E0:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy326_21a0d2c
	add r4, r4, #1
	cmp r4, #6
	blt _021A07E0
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r4, #0x52
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #8
	mov r2, #0xa
	mov r3, #1
	bl ovy326_21a1388
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	add r2, r4, #0
	add r2, #0x28
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2470
	add r1, r4, #0
	add r1, #0x48
	sub r0, r4, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A0830:
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1370
	mov r1, #0x64
	str r1, [r5, r4]
	add r1, #0xe4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a78
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
	pop {r3, r4, r5, r6, r7, pc}
_021A086E:
	mov r1, #0
	mov r6, #0
	bl ovy326_21a1370
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_21a0a5c
	str r6, [r5, r4]
	mov r1, #1
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219e87c
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	ldr r0, _021A0A50 ; =0xFFFCFFFF
	add r4, #8
	and r0, r1
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A08A4:
	mov r1, #0
	mov r6, #0
	bl ovy326_21a1370
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_21a0a5c
	str r6, [r5, r4]
	mov r1, #3
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_219e87c
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	ldr r0, _021A0A54 ; =0xFFFEFFFF
	add r4, #8
	and r0, r1
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A08DA:
	bl ovy326_21a1338
	cmp r0, #0
	bne _021A092C
	add r0, r5, #0
	mov r1, #8
	mov r2, #0xb
	mov r3, #0
	bl ovy326_21a1388
	add r0, r4, #0
	add r0, #0x56
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A08F6:
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #0
	beq _021A092C
	add r0, r5, #0
	bl sub_021A287C
	add r1, r4, #0
	add r1, #0xf8
	add r2, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy326_21a2734
	add r0, r5, #0
	bl ovy326_21a2828
	add r0, r4, #0
	add r0, #0xb0
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A0922:
	ldr r0, [r5, #0x64]
	bl sub_02021C0C
	cmp r0, #0
	bne _021A092E
_021A092C:
	b _021A0A4E
_021A092E:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xf8
	add r2, #0x2c
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy326_21a2734
	add r0, r5, #0
	bl ovy326_21a2828
	add r0, r4, #0
	add r0, #0xb0
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A094E:
	bl ovy326_21a27c0
	cmp r0, #0
	bne _021A0A4E
	mov r6, #0x96
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	add r1, r0, #1
	add r0, r6, #0
	sub r0, #0x28
	str r1, [r5, r0]
	add r0, r6, #0
	sub r0, #0xdc
	ldr r1, [r5, r0]
	add r0, r6, #0
	sub r0, #0xe8
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_21a2864
	add r0, r5, #0
	mov r1, #8
	mov r2, #0xc
	mov r3, #1
	bl ovy326_21a1388
	add r0, r6, #0
	sub r0, #0x5a
	str r0, [r5, r4]
	ldr r0, _021A0A58 ; =0x0000054C
	bl sub_02006254
	add r2, r6, #0
	sub r2, #0xe8
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy326_21a2470
	add r0, r6, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021A09D8
	add r7, r6, #0
	sub r7, #0x28
	sub r6, #0xf0
_021A09AE:
	add r2, r4, #4
	mov r1, #1
	ldr r0, [r5, r6]
	lsl r1, r2
	tst r0, r1
	beq _021A09D0
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy326_21a21d0
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #6
	mov r3, #1
	bl ovy326_21a1104
_021A09D0:
	ldr r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _021A09AE
_021A09D8:
	mov r4, #0x17
	lsl r4, r4, #4
	ldr r2, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a1a10
	add r0, r5, #0
	mov r1, #1
	bl ovy326_21a2194
	ldr r2, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1544
	pop {r3, r4, r5, r6, r7, pc}
_021A09FA:
	bl ovy326_21a1338
	cmp r0, #0
	bne _021A0A4E
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl ovy326_21a1370
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2138
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a2194
	add r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a20b4
	add r0, r5, #0
	mov r1, #0
	bl ovy326_21a1a78
	mov r0, #0x64
	mov r1, #0x64
	str r0, [r5, r4]
	add r1, #0xe8
	ldr r2, [r5, r1]
	lsl r1, r6, #0x11
	orr r1, r2
	add r0, #0xe8
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a2298
_021A0A4E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0A50: .word 0xFFFCFFFF
_021A0A54: .word 0xFFFEFFFF
_021A0A58: .word 0x0000054C
	thumb_func_end ovy326_21a03a4

	thumb_func_start ovy326_21a0a5c
ovy326_21a0a5c: ; 0x021A0A5C
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021A0A64:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #6
	add r3, r6, #0
	bl ovy326_21a1104
	add r4, r4, #1
	cmp r4, #3
	blt _021A0A64
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy326_21a0da4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy326_21a0a5c

	thumb_func_start sub_021A0A84
sub_021A0A84: ; 0x021A0A84
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0A84

	thumb_func_start ovy326_21a0a88
ovy326_21a0a88: ; 0x021A0A88
	push {r3, r4, r5, lr}
	mov r5, #0x45
	add r4, r0, #0
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	ldrh r1, [r4]
	str r1, [sp]
	ldr r2, [r4, #0x60]
	ldr r3, [r4, #0x64]
	mov r1, #0xb
	bl sub_0202E168
	add r5, #0x28
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy326_21a0ae0
	add r0, r4, #0
	bl ovy326_21a0c04
	add r0, r4, #0
	bl ovy326_21a1018
	add r0, r4, #0
	bl ovy326_21a1aa4
	add r0, r4, #0
	bl ovy326_21a22f8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_21a0a88

	thumb_func_start ovy326_21a0ac8
ovy326_21a0ac8: ; 0x021A0AC8
	push {r4, lr}
	add r4, r0, #0
	bl ovy326_21a0ce4
	add r0, r4, #0
	bl ovy326_21a106c
	add r0, r4, #0
	bl ovy326_21a1274
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_21a0ac8

	thumb_func_start ovy326_21a0ae0
ovy326_21a0ae0: ; 0x021A0AE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldrh r1, [r7]
	ldr r0, _021A0B74 ; =0x0000010A
	ldr r4, _021A0B78 ; =0x021A31EE
	ldr r6, _021A0B7C ; =0x021A3238
	ldr r5, _021A0B80 ; =0x021A3224
	bl sub_0204AA30
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
_021A0AFA:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _021A0B20
	ldrb r0, [r4, #3]
	ldrb r1, [r4, #1]
	ldrb r3, [r4, #2]
	lsl r0, r0, #5
	str r0, [sp]
	ldrh r0, [r7]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_0204B0D4
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blt _021A0AFA
_021A0B20:
	mov r4, #0
_021A0B22:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _021A0B44
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r6, #1]
	ldrb r3, [r6, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204ADA8
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #8
	blt _021A0B22
_021A0B44:
	mov r4, #0
	add r6, r4, #0
_021A0B48:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _021A0B68
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204AF50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021A0B48
_021A0B68:
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A0B74: .word 0x0000010A
_021A0B78: .word 0x021A31EE
_021A0B7C: .word 0x021A3238
_021A0B80: .word 0x021A3224
	thumb_func_end ovy326_21a0ae0

	thumb_func_start ovy326_21a0b84
ovy326_21a0b84: ; 0x021A0B84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, _021A0BF8 ; =0x021A3728
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	ldr r0, _021A0BFC ; =0x021A3738
	ldr r5, [r0, r1]
	ldrh r1, [r6]
	ldr r0, _021A0C00 ; =0x0000010A
	bl sub_0204AA30
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
_021A0BA2:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _021A0BC8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r6]
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	ldrb r3, [r4, #2]
	add r0, r7, #0
	bl sub_0204ADA8
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #8
	blt _021A0BA2
_021A0BC8:
	mov r4, #0
_021A0BCA:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _021A0BEC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r6]
	str r0, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	add r0, r7, #0
	bl sub_0204AF50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021A0BCA
_021A0BEC:
	add r0, r7, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0BF8: .word 0x021A3728
_021A0BFC: .word 0x021A3738
_021A0C00: .word 0x0000010A
	thumb_func_end ovy326_21a0b84

	thumb_func_start ovy326_21a0c04
ovy326_21a0c04: ; 0x021A0C04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _021A0CAC ; =0x021A33B0
	add r6, r0, #0
	mov r4, #0
_021A0C0E:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021A0C5A
	lsl r1, r4, #3
	add r7, r6, r1
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	bl sub_020480C0
	str r0, [r7, #0x70]
	bl sub_0204826C
	ldr r0, [r7, #0x70]
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	mov r0, #1
	lsl r0, r4
	mvn r0, r0
	and r1, r0
	mov r0, #0x59
	lsl r0, r0, #2
	add r4, r4, #1
	add r5, r5, #6
	str r1, [r6, r0]
	cmp r4, #0x11
	blt _021A0C0E
_021A0C5A:
	ldrh r1, [r6]
	mov r0, #0x17
	bl sub_0204AA30
	mov r7, #0x20
	str r7, [sp]
	ldrh r1, [r6]
	mov r2, #0
	mov r3, #0xe0
	str r1, [sp, #4]
	mov r1, #6
	add r4, r0, #0
	mov r5, #0xe0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r6]
	add r5, #0x40
	mov r1, #6
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r6]
	mov r3, #4
	mov r1, #6
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	add r3, #0xfc
	bl sub_0204B0D4
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A0CAC: .word 0x021A33B0
	thumb_func_end ovy326_21a0c04

	thumb_func_start ovy326_21a0cb0
ovy326_21a0cb0: ; 0x021A0CB0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r4, #0
	str r0, [sp]
	ldr r0, [r4, #0x60]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x20
	ldrh r0, [r0, #8]
	lsl r3, r3, #0x10
	add r5, #0x70
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	lsl r0, r1, #3
	ldr r1, [r4, #0x64]
	add r0, r5, r0
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_21a0cb0

	thumb_func_start ovy326_21a0ce4
ovy326_21a0ce4: ; 0x021A0CE4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_021A0CEC:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r0, [r6, #0x70]
	cmp r0, #0
	beq _021A0CFC
	bl sub_02048210
	str r7, [r6, #0x70]
_021A0CFC:
	add r4, r4, #1
	cmp r4, #0x11
	blt _021A0CEC
	mov r4, #1
	lsl r4, r4, #8
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A0D14
	bl sub_02048564
	mov r0, #0
	str r0, [r5, r4]
_021A0D14:
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A0D28
	bl sub_020223CC
	mov r0, #0
	add r5, #0xf8
	str r0, [r5]
_021A0D28:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_21a0ce4

	thumb_func_start ovy326_21a0d2c
ovy326_21a0d2c: ; 0x021A0D2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #3
	add r0, r5, r4
	ldr r0, [r0, #0x70]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r5, r4
	mov r1, #1
	add r0, #0x74
	strb r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_21a0d2c

	thumb_func_start ovy326_21a0d4c
ovy326_21a0d4c: ; 0x021A0D4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsl r2, r1, #2
	ldr r1, _021A0D9C ; =0x021A36F8
	mov r4, #0
	ldr r5, [r1, r2]
	ldr r1, _021A0DA0 ; =0x021A3214
	ldrsh r1, [r1, r2]
	lsl r1, r1, #3
	add r7, r0, r1
_021A0D60:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021A0D98
	lsl r1, r4, #3
	add r6, r7, r1
	ldrb r1, [r5, #4]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	bl sub_020480C0
	str r0, [r6, #0x70]
	bl sub_0204826C
	ldr r0, [r6, #0x70]
	bl sub_020484D4
	bl sub_02044F90
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x11
	blt _021A0D60
_021A0D98:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A0D9C: .word 0x021A36F8
_021A0DA0: .word 0x021A3214
	thumb_func_end ovy326_21a0d4c

	thumb_func_start ovy326_21a0da4
ovy326_21a0da4: ; 0x021A0DA4
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	lsl r3, r1, #2
	ldr r1, _021A0DFC ; =0x021A3214
	mov r4, #0
	ldrsh r2, [r1, r3]
	ldr r1, _021A0E00 ; =0x021A3216
	ldrsh r6, [r1, r3]
	cmp r6, #0
	ble _021A0DE6
	lsl r1, r2, #3
	add r7, r0, r1
_021A0DBC:
	lsl r0, r4, #3
	add r5, r7, r0
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _021A0DE0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x70]
	bl sub_020484B4
	ldr r0, [r5, #0x70]
	bl sub_02048210
	mov r0, #0
	str r0, [r5, #0x70]
_021A0DE0:
	add r4, r4, #1
	cmp r4, r6
	blt _021A0DBC
_021A0DE6:
	ldr r0, [sp]
	cmp r0, #3
	bne _021A0DF4
	mov r0, #0
	bl sub_02045738
	pop {r3, r4, r5, r6, r7, pc}
_021A0DF4:
	mov r0, #2
	bl sub_02045738
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0DFC: .word 0x021A3214
_021A0E00: .word 0x021A3216
	thumb_func_end ovy326_21a0da4

	thumb_func_start ovy326_21a0e04
ovy326_21a0e04: ; 0x021A0E04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	ldr r0, [r7, #0x58]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021A2C0C
	str r0, [sp, #0x20]
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #8
	blx sub_020787A8
	mov r2, #6
	ldrsh r2, [r4, r2]
	mov r0, #0
	ldrsh r3, [r4, r0]
	str r2, [sp, #0x10]
	mov r2, #8
	mov r0, #2
	mov r1, #4
	ldrsh r2, [r4, r2]
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	cmp r2, #0
	bne _021A0E42
	add r6, r7, #0
	add r6, #0x34
	b _021A0E4A
_021A0E42:
	cmp r2, #1
	bne _021A0E4A
	add r6, r7, #0
	add r6, #0x1c
_021A0E4A:
	mov r2, #0
	str r2, [sp, #0x24]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _021A0F16
	lsl r0, r0, #2
	add r0, r7, r0
	lsl r1, r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, r7, r1
	str r1, [sp, #0x1c]
	lsl r1, r3, #2
	lsl r0, r0, #0x10
	add r1, r7, r1
	lsr r0, r0, #0x10
	str r1, [sp, #0x18]
	str r0, [sp, #0x2c]
_021A0E6E:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021A0F16
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021A1174
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_021A1174
	ldr r2, [sp, #0x28]
	add r1, sp, #0x30
	strh r2, [r1]
	strh r0, [r1, #2]
	ldrb r1, [r5]
	add r0, sp, #0x30
	ldr r2, [sp, #0x18]
	strh r1, [r0, #4]
	ldrb r1, [r5, #1]
	ldr r3, [sp, #0x1c]
	strb r1, [r0, #6]
	ldrb r1, [r5, #2]
	strb r1, [r0, #7]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	lsl r4, r0, #2
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	ldr r3, [r3, #4]
	bl sub_0204C040
	str r0, [r6, r4]
	ldrb r0, [r5, #3]
	mov r1, #0
	cmp r0, #1
	bne _021A0ECE
	mov r1, #1
_021A0ECE:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _021A0EDE
	mov r1, #1
_021A0EDE:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _021A0EF6
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_021A0EF6:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _021A0F08
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_021A0F08:
	ldr r0, [sp, #0x24]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _021A0E6E
_021A0F16:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_21a0e04

	thumb_func_start ovy326_21a0f1c
ovy326_21a0f1c: ; 0x021A0F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	ldr r0, _021A0F98 ; =0x0000010A
	add r4, r2, #0
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, [r5, #0x58]
	bl sub_021A2C0C
	mov r1, #0
	str r1, [sp]
	ldrh r0, [r4, #6]
	ldrsh r1, [r4, r1]
	ldrh r3, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204BBB8
	mov r1, #2
	ldrsh r1, [r4, r1]
	mov r2, #0
	add r3, r7, #0
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldrh r0, [r5]
	mov r1, #8
	ldrsh r1, [r4, r1]
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldrh r3, [r5]
	add r0, r6, #0
	bl sub_0204BDE0
	mov r1, #0x12
	ldrsh r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A0F98: .word 0x0000010A
	thumb_func_end ovy326_21a0f1c

	thumb_func_start ovy326_21a0f9c
ovy326_21a0f9c: ; 0x021A0F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	ldr r0, [r5, #0x58]
	bl sub_021A2C0C
	bl sub_0202D810
	add r7, r0, #0
	bl sub_0202D814
	str r0, [sp, #0xc]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0x10]
	mov r0, #2
	bl sub_0202D81C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r3, #0x16
	add r1, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	lsl r3, r3, #4
	bl sub_0204BBB8
	str r0, [r5, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204B81C
	str r0, [r5, #8]
	ldrh r3, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_21a0f9c

	thumb_func_start ovy326_21a1018
ovy326_21a1018: ; 0x021A1018
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_021A2C0C
	ldr r2, _021A1058 ; =0x021A32B6
	add r0, r4, #0
	mov r1, #0
	bl ovy326_21a0f1c
	add r0, r4, #0
	mov r1, #0
	bl ovy326_21a0f9c
	ldr r2, _021A105C ; =0x021A3434
	ldr r3, _021A1060 ; =0x021A31C4
	add r0, r4, #0
	mov r1, #0
	bl ovy326_21a0e04
	ldr r2, _021A1064 ; =0x021A3378
	ldr r3, _021A1068 ; =0x021A31CE
	add r0, r4, #0
	mov r1, #0
	bl ovy326_21a0e04
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	pop {r4, pc}
	nop
_021A1058: .word 0x021A32B6
_021A105C: .word 0x021A3434
_021A1060: .word 0x021A31C4
_021A1064: .word 0x021A3378
_021A1068: .word 0x021A31CE
	thumb_func_end ovy326_21a1018

	thumb_func_start ovy326_21a106c
ovy326_21a106c: ; 0x021A106C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021A1072:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x34]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #9
	blt _021A1072
	mov r5, #0
_021A1084:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #6
	blt _021A1084
	ldr r0, [r4, #0x10]
	bl sub_0204BCD0
	ldr r0, [r4, #0x14]
	bl sub_0204B98C
	ldr r0, [r4, #0x18]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204BCD0
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0xc]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_21a106c

	thumb_func_start ovy326_21a10bc
ovy326_21a10bc: ; 0x021A10BC
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _021A10E0
	cmp r2, #9
	bge _021A1100
	add r5, r0, #0
	add r5, #0x34
	lsl r4, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_021A10E0:
	cmp r1, #1
	bne _021A1100
	cmp r2, #6
	bge _021A1100
	add r4, r0, #0
	add r4, #0x1c
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
_021A1100:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_21a10bc

	thumb_func_start ovy326_21a1104
ovy326_21a1104: ; 0x021A1104
	push {r3, lr}
	cmp r1, #0
	bne _021A111C
	cmp r2, #9
	bge _021A1130
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_021A111C:
	cmp r1, #1
	bne _021A1130
	cmp r2, #6
	bge _021A1130
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x1c]
	add r1, r3, #0
	bl sub_0204C124
_021A1130:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_21a1104

	thumb_func_start ovy326_21a1134
ovy326_21a1134: ; 0x021A1134
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _021A1154
	cmp r2, #9
	blt _021A1144
	mov r0, #0
	pop {r4, pc}
_021A1144:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	bl sub_0204C560
	cmp r0, #0
	bne _021A1170
	b _021A116E
_021A1154:
	cmp r1, #1
	bne _021A1170
	cmp r2, #6
	blt _021A1160
	mov r0, #0
	pop {r4, pc}
_021A1160:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl sub_0204C560
	cmp r0, #0
	bne _021A1170
_021A116E:
	mov r4, #0
_021A1170:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy326_21a1134

	thumb_func_start sub_021A1174
sub_021A1174: ; 0x021A1174
	cmp r1, #0x3c
	blo _021A117C
	mov r0, #0
	bx lr
_021A117C:
	mov r2, #0xa
	lsl r2, r2, #6
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_021A1174

	thumb_func_start ovy326_21a1188
ovy326_21a1188: ; 0x021A1188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _021A126C ; =0x021A3708
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r7, #0
	str r0, [sp]
	mov r3, #0
	sub r1, r7, #1
_021A119C:
	ldr r0, [sp]
	lsl r2, r3, #1
	ldrsh r0, [r0, r2]
	cmp r0, r1
	beq _021A11AE
	add r3, r3, #1
	add r7, r7, #1
	cmp r3, #3
	blt _021A119C
_021A11AE:
	cmp r7, #3
	ble _021A11B4
	mov r7, #3
_021A11B4:
	ldrh r0, [r5]
	add r1, sp, #0x10
	mov r4, #0
	str r0, [sp, #0x10]
	mov r0, #0x46
	lsl r0, r0, #2
	strb r7, [r1, #4]
	add r0, r5, r0
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x20
	strb r0, [r1, #0x10]
	mov r0, #0x18
	strb r0, [r1, #0x11]
	mov r0, #0xd
	strb r0, [r1, #0x12]
	mov r0, #3
	strb r0, [r1, #0x13]
	cmp r7, #0
	ble _021A123A
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #4]
_021A11FA:
	mov r0, #0xc
	mul r0, r4
	add r6, r5, r0
	ldrh r1, [r5]
	mov r0, #0x64
	bl sub_02048530
	add r3, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	str r3, [r6, r0]
	ldr r1, [sp]
	lsl r2, r4, #1
	ldrsh r1, [r1, r2]
	ldr r0, [r5, #0x68]
	add r2, r3, #0
	bl sub_02048838
	ldr r1, _021A1270 ; =0x000039E0
	ldr r0, [sp, #4]
	cmp r4, #2
	strh r1, [r6, r0]
	bne _021A122E
	mov r1, #1
	ldr r0, [sp, #8]
	b _021A1232
_021A122E:
	ldr r0, [sp, #0xc]
	mov r1, #0
_021A1232:
	add r4, r4, #1
	str r1, [r6, r0]
	cmp r4, r7
	blt _021A11FA
_021A123A:
	mov r6, #0x4f
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r0, sp, #0x10
	bl sub_0202D974
	add r1, r6, #0
	sub r1, #0x28
	mov r4, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _021A1266
	sub r6, #0x24
_021A1254:
	mov r0, #0xc
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048564
	add r4, r4, #1
	cmp r4, r7
	blt _021A1254
_021A1266:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A126C: .word 0x021A3708
_021A1270: .word 0x000039E0
	thumb_func_end ovy326_21a1188

	thumb_func_start ovy326_21a1274
ovy326_21a1274: ; 0x021A1274
	push {r3, r4, r5, lr}
	mov r5, #0x45
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A128A
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
_021A128A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a1274

	thumb_func_start ovy326_21a128c
ovy326_21a128c: ; 0x021A128C
	push {r3, r4, r5, lr}
	mov r4, #0x45
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A12A0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021A12A0:
	bl sub_0202DB70
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021A12B6
	ldr r0, [r5, r4]
	bl sub_0202DC00
	pop {r3, r4, r5, pc}
_021A12B6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a128c

	thumb_func_start ovy326_21a12bc
ovy326_21a12bc: ; 0x021A12BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021A12DA
	bl sub_020223CC
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0]
_021A12DA:
	mov r7, #1
	lsl r7, r7, #8
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A12EC
	bl sub_02048564
	mov r0, #0
	str r0, [r5, r7]
_021A12EC:
	ldr r1, _021A1334 ; =0x021A3264
	lsl r2, r6, #1
	ldrsh r1, [r1, r2]
	ldr r0, [r5, #0x68]
	bl sub_0204898C
	mov r6, #1
	lsl r6, r6, #8
	str r0, [r5, r6]
	bl sub_02017BCC
	ldr r1, [r5, #0x60]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x70]
	ldr r3, [r5, r6]
	bl sub_02022268
	add r5, #0xf8
	str r0, [r5]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1334: .word 0x021A3264
	thumb_func_end ovy326_21a12bc

	thumb_func_start ovy326_21a1338
ovy326_21a1338: ; 0x021A1338
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r1, [r0]
	cmp r1, #0
	bne _021A1348
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1348:
	mov r5, #0x41
	add r2, r4, #0
	lsl r5, r5, #2
	add r2, #0xb0
	ldr r0, [r4, r5]
	ldr r2, [r2]
	bl sub_0202E8D8
	add r0, r5, #4
	add r0, r4, r0
	add r4, #0xf8
	ldr r1, [r4]
	bl sub_0202E68C
	cmp r0, #1
	beq _021A136C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A136C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a1338

	thumb_func_start ovy326_21a1370
ovy326_21a1370: ; 0x021A1370
	push {r3, lr}
	cmp r1, #0
	bne _021A137E
	mov r0, #0
	bl sub_02045708
	pop {r3, pc}
_021A137E:
	mov r0, #0
	bl sub_02045738
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_21a1370

	thumb_func_start ovy326_21a1388
ovy326_21a1388: ; 0x021A1388
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	ldrh r0, [r4]
	str r1, [sp, #0xc]
	add r6, r2, #0
	str r3, [sp, #0x10]
	str r0, [sp]
	mov r0, #0
	mov r1, #1
	mov r2, #8
	mov r3, #0
	bl sub_02024D00
	ldr r0, [sp, #0xc]
	add r5, r4, #0
	add r5, #0x70
	lsl r7, r0, #3
	ldr r0, [r5, r7]
	mov r1, #0
	mov r2, #1
	mov r3, #8
	bl sub_02024E80
	ldr r0, [r5, r7]
	bl sub_0204826C
	ldr r0, [r5, r7]
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r5, r7]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, r7]
	bl sub_02048244
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021A14C0
	cmp r6, #4
	bhi _021A1402
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A13F4: ; jump table
	.short _021A1402 - _021A13F4 - 2 ; case 0
	.short _021A13FE - _021A13F4 - 2 ; case 1
	.short _021A13FE - _021A13F4 - 2 ; case 2
	.short _021A13FE - _021A13F4 - 2 ; case 3
	.short _021A13FE - _021A13F4 - 2 ; case 4
_021A13FE:
	mov r0, #1
	str r0, [sp, #0x18]
_021A1402:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021A1436
	ldr r1, _021A14D0 ; =0x021A3264
	lsl r2, r6, #1
	ldrsh r1, [r1, r2]
	ldr r0, [r4, #0x68]
	bl sub_0204898C
	add r5, r0, #0
	mov r0, #0x11
	str r5, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl ovy326_21a0cb0
	add r0, r5, #0
	bl sub_02048564
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021A1436:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021A14D0 ; =0x021A3264
	lsl r2, r6, #1
	str r0, [sp, #0x14]
	ldrsh r1, [r1, r2]
	ldr r0, [r4, #0x68]
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldrh r1, [r4]
	mov r0, #0x80
	mov r5, #0x80
	bl sub_02048530
	add r7, r0, #0
	ldrh r1, [r4]
	mov r0, #0x80
	bl sub_02048530
	add r6, r0, #0
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	mov r2, #0
	add r3, r7, #0
	bl ovy326_21a25ac
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x80
	add r0, #0x90
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_0202437C
	add r5, #0x90
	ldr r0, [r4, r5]
	ldr r2, [sp, #0x1c]
	add r1, r6, #0
	bl sub_02024920
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	ldr r0, [sp, #0x1c]
	bl sub_02048564
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021A14C0:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl ovy326_21a12bc
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A14D0: .word 0x021A3264
	thumb_func_end ovy326_21a1388

	thumb_func_start ovy326_21a14d4
ovy326_21a14d4: ; 0x021A14D4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	lsl r3, r7, #2
	add r4, r2, #0
	add r3, r3, #1
	add r3, r4, r3
	lsl r6, r3, #1
	ldr r3, _021A1504 ; =0x021A3348
	mov r1, #1
	ldrsh r3, [r3, r6]
	add r2, r7, #0
	add r5, r0, #0
	bl ovy326_21a10bc
	cmp r4, #0
	bne _021A1502
	mov r1, #0x15
	lsl r1, r1, #4
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r7
	orr r0, r2
	str r0, [r5, r1]
_021A1502:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1504: .word 0x021A3348
	thumb_func_end ovy326_21a14d4

	thumb_func_start ovy326_21a1508
ovy326_21a1508: ; 0x021A1508
	push {r4, lr}
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r3, [r0, r1]
	mov r2, #2
	add r3, #0x40
	lsl r2, r2, #0xc
	str r3, [r0, r1]
	cmp r3, r2
	blt _021A1520
	mov r2, #0
	str r2, [r0, r1]
_021A1520:
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #3
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	neg r4, r0
	mov r0, #3
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #7
	mov r1, #3
	add r2, r4, #0
	bl sub_02045E1C
	pop {r4, pc}
	thumb_func_end ovy326_21a1508

	thumb_func_start ovy326_21a1544
ovy326_21a1544: ; 0x021A1544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	cmp r1, #0
	bne _021A1556
	lsl r0, r2, #2
	add r1, r5, r0
	mov r0, #0xa3
	b _021A155C
_021A1556:
	lsl r0, r2, #2
	add r1, r5, r0
	mov r0, #0xa6
_021A155C:
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	mov r4, #0
_021A1562:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy326_21a0d2c
	add r4, r4, #1
	cmp r4, #6
	blt _021A1562
	ldrh r1, [r5]
	mov r0, #0x80
	mov r4, #0x80
	bl sub_02048530
	str r0, [sp, #0xc]
	ldrh r1, [r5]
	mov r0, #0x80
	bl sub_02048530
	add r7, r0, #0
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy326_21a25ac
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x80
	add r0, #0x90
	ldr r0, [r5, r0]
	ldr r2, [sp, #0xc]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [r5, #0x68]
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x10]
	add r4, #0x90
	ldr r0, [r5, r4]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	bl sub_02024920
	mov r2, #0x70
	str r2, [sp, #0x14]
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021A16D8 ; =0x000031A0
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0x70
	mov r3, #0
	bl ovy326_21a0cb0
	ldr r0, [sp, #0xc]
	bl sub_02048564
	ldr r0, [sp, #0x10]
	bl sub_02048564
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [r5, #0x68]
	mov r1, #2
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A16DC ; =0x000039E0
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	add r0, r4, #0
	bl sub_02048564
	ldr r4, _021A16E0 ; =0x0000026F
	ldr r0, [r5, #0x68]
	ldrb r1, [r6, r4]
	lsl r1, r1, #0x1e
	lsr r2, r1, #0x1d
	ldr r1, _021A16E4 ; =0x021A3194
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A16DC ; =0x000039E0
	mov r1, #2
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [sp, #0x14]
	ldrh r1, [r5]
	add r0, #0x90
	str r0, [sp, #0x14]
	bl sub_02048530
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r7, #0
	bl ovy326_21a25ac
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A16DC ; =0x000039E0
	mov r1, #3
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [r5, #0x68]
	mov r1, #7
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A16DC ; =0x000039E0
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	add r0, r7, #0
	bl sub_02048564
	ldrh r1, [r5]
	ldr r0, [sp, #0x14]
	bl sub_02048530
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r7, #0
	bl ovy326_21a25ac
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A16DC ; =0x000039E0
	mov r1, #5
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	add r0, r7, #0
	bl sub_02048564
	add r4, #0x19
	str r6, [r5, r4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A16D8: .word 0x000031A0
_021A16DC: .word 0x000039E0
_021A16E0: .word 0x0000026F
_021A16E4: .word 0x021A3194
	thumb_func_end ovy326_21a1544

	thumb_func_start ovy326_21a16e8
ovy326_21a16e8: ; 0x021A16E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _021A17B8 ; =0x021A3320
	add r5, r0, #0
	add r3, sp, #0xc
	mov r2, #5
_021A16F4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A16F4
	str r5, [sp, #0x30]
	add r0, r5, #0
	bl ovy326_21a1898
	ldrh r1, [r5]
	ldr r0, _021A17BC ; =0x0000010A
	bl sub_0204AA30
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldrh r1, [r5]
	mov r2, #2
	add r6, r0, #0
	str r1, [sp, #8]
	mov r1, #4
	bl sub_0204ADA8
	ldr r0, _021A17C0 ; =0x021A31FC
	mov r2, #0x23
	lsl r2, r2, #4
	str r0, [sp, #0x2c]
	add r1, r2, #0
	ldr r0, [r5, r2]
	add r3, sp, #0xc
	strh r0, [r3, #0x14]
	add r1, #0x10
	ldr r1, [r5, r1]
	add r2, #0x1c
	strb r1, [r3, #0x18]
	ldr r1, [r5, r2]
	cmp r0, #6
	strh r1, [r3, #0x1a]
	bgt _021A1744
	ldr r0, _021A17C4 ; =0x021A33EC
	str r0, [sp, #0x28]
_021A1744:
	ldrh r1, [r5]
	add r0, sp, #0xc
	bl sub_0219AF1C
	mov r7, #0x8b
	lsl r7, r7, #2
	str r0, [r5, r7]
	mov r4, #0
	str r4, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0xa
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0xb
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	bl sub_0219B27C
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	ble _021A17B4
_021A1790:
	add r0, r5, #0
	add r1, r4, #0
	mov r6, #0
	bl ovy326_21a2888
	cmp r0, #1
	bne _021A17A0
	mov r6, #1
_021A17A0:
	ldr r0, [r5, r7]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0219B1B4
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _021A1790
_021A17B4:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A17B8: .word 0x021A3320
_021A17BC: .word 0x0000010A
_021A17C0: .word 0x021A31FC
_021A17C4: .word 0x021A33EC
	thumb_func_end ovy326_21a16e8

	thumb_func_start ovy326_21a17c8
ovy326_21a17c8: ; 0x021A17C8
	push {r3, lr}
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0
	mvn r2, r2
	cmp r0, #0
	beq _021A17DE
	bl sub_0219B2E0
	add r2, r0, #0
_021A17DE:
	add r0, r2, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_21a17c8

	thumb_func_start ovy326_21a17e4
ovy326_21a17e4: ; 0x021A17E4
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r0, #0
	sub r0, r4, #7
	cmp r1, r0
	bhi _021A1828
	bhs _021A1858
	add r0, r4, #0
	sub r0, #0xb
	cmp r1, r0
	bhi _021A181E
	add r0, r4, #0
	sub r0, #0xb
	cmp r1, r0
	bhs _021A1870
	cmp r1, #5
	bhi _021A1872
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1812: ; jump table
	.short _021A1854 - _021A1812 - 2 ; case 0
	.short _021A1854 - _021A1812 - 2 ; case 1
	.short _021A1854 - _021A1812 - 2 ; case 2
	.short _021A1854 - _021A1812 - 2 ; case 3
	.short _021A1854 - _021A1812 - 2 ; case 4
	.short _021A1854 - _021A1812 - 2 ; case 5
_021A181E:
	mov r0, #9
	mvn r0, r0
	cmp r1, r0
	beq _021A1870
	b _021A1872
_021A1828:
	sub r0, r4, #5
	cmp r1, r0
	bhi _021A1838
	bhs _021A1858
	sub r0, r4, #6
	cmp r1, r0
	beq _021A1866
	b _021A1872
_021A1838:
	sub r0, r4, #2
	cmp r1, r0
	bhi _021A1872
	sub r0, r4, #4
	cmp r1, r0
	blo _021A1872
	beq _021A1866
	sub r0, r4, #3
	cmp r1, r0
	beq _021A186C
	sub r0, r4, #2
	cmp r1, r0
	beq _021A186C
	b _021A1872
_021A1854:
	mov r4, #2
	b _021A1872
_021A1858:
	add r0, r5, #0
	mov r1, #0
_021A185C:
	mov r2, #0
	bl ovy326_21a14d4
	mov r4, #3
	b _021A1872
_021A1866:
	add r0, r5, #0
	mov r1, #1
	b _021A185C
_021A186C:
	mov r4, #4
	b _021A1872
_021A1870:
	mov r4, #1
_021A1872:
	cmp r4, #1
	beq _021A1894
	cmp r4, #2
	bne _021A187C
	b _021A1880
_021A187C:
	cmp r4, #4
	bne _021A1894
_021A1880:
	add r0, r5, #0
	bl ovy326_21a18b0
	mov r1, #0x15
	lsl r1, r1, #4
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r5, r1]
_021A1894:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a17e4

	thumb_func_start ovy326_21a1898
ovy326_21a1898: ; 0x021A1898
	push {r3, r4, r5, lr}
	mov r5, #0x8b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A18AE
	bl sub_0219B138
	mov r0, #0
	str r0, [r4, r5]
_021A18AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a1898

	thumb_func_start ovy326_21a18b0
ovy326_21a18b0: ; 0x021A18B0
	push {r3, r4, r5, lr}
	mov r4, #0x8b
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A18E8
	bl sub_0219CC28
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0219CC34
	add r1, r4, #0
	add r1, #0x14
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0219CC3C
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	mov r1, #7
	bl sub_0219CCB0
_021A18E8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy326_21a18b0

	thumb_func_start ovy326_21a18ec
ovy326_21a18ec: ; 0x021A18EC
	push {r3, lr}
	ldr r3, [r0, #0x68]
	bl ovy326_21a1914
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_21a18ec

	thumb_func_start ovy326_21a18f8
ovy326_21a18f8: ; 0x021A18F8
	push {r4, lr}
	add r4, r0, #0
	bl ovy326_21a18b0
	mov r1, #0x15
	lsl r1, r1, #4
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ovy326_21a18f8
_021A1910:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy326_21a1914
ovy326_21a1914: ; 0x021A1914
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0219CC18
	str r0, [sp, #8]
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC1C
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	str r4, [sp, #4]
	bl ovy326_21a19f0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy326_21a1914

	thumb_func_start ovy326_21a194c
ovy326_21a194c: ; 0x021A194C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x3c]
	add r4, r1, #0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r5]
	str r0, [sp, #0x10]
	mov r0, #0x80
	str r2, [sp, #0xc]
	mov r6, #0x80
	bl sub_02048530
	str r0, [sp, #0x14]
	ldrh r1, [r5]
	mov r0, #0x80
	bl sub_02048530
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a25ac
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x80
	add r0, #0x90
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x14]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [r5, #0x68]
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x18]
	add r6, #0x90
	ldr r0, [r5, r6]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	bl sub_02024920
	ldr r0, [r4]
	bl sub_020484F4
	ldr r3, [sp, #0x38]
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x60]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrh r0, [r0, #4]
	mov r2, #0
	asr r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #4]
	ldr r0, [sp, #0x14]
	bl sub_02048564
	ldr r0, [sp, #0x18]
	bl sub_02048564
	add r0, r7, #0
	bl sub_02048564
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy326_21a194c

	thumb_func_start ovy326_21a19f0
ovy326_21a19f0: ; 0x021A19F0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, _021A1A0C ; =0x000039E0
	str r4, [sp, #4]
	mov r4, #4
	str r4, [sp, #8]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #0xc]
	bl ovy326_21a194c
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021A1A0C: .word 0x000039E0
	thumb_func_end ovy326_21a19f0

	thumb_func_start ovy326_21a1a10
ovy326_21a1a10: ; 0x021A1A10
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _021A1A30
	add r1, r4, #0
	add r1, #0x12
	lsl r1, r1, #1
	bl sub_021A1174
	add r6, sp, #0
	strh r0, [r6]
	add r0, r5, #0
	add r4, #0x12
	b _021A1A42
_021A1A30:
	add r1, r4, #0
	add r1, #0x1b
	lsl r1, r1, #1
	bl sub_021A1174
	add r6, sp, #0
	strh r0, [r6]
	add r0, r5, #0
	add r4, #0x1b
_021A1A42:
	lsl r1, r4, #1
	add r1, r1, #1
	bl sub_021A1174
	strh r0, [r6, #2]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0
	mov r2, #0
	mov r4, #0
	bl sub_0204C140
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x10
	tst r0, r1
	bne _021A1A72
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #2
	bl ovy326_21a10bc
_021A1A72:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy326_21a1a10

	thumb_func_start ovy326_21a1a78
ovy326_21a1a78: ; 0x021A1A78
	push {r4, lr}
	mov r4, #0x15
	lsl r4, r4, #4
	ldr r3, [r0, r4]
	ldr r2, _021A1AA0 ; =0xFFFDFFFF
	and r2, r3
	mov r3, #2
	str r2, [r0, r4]
	cmp r1, #1
	bne _021A1A96
	mov r1, #2
	lsl r1, r1, #0x10
	orr r1, r2
	mov r3, #3
	str r1, [r0, r4]
_021A1A96:
	mov r1, #0
	mov r2, #2
	bl ovy326_21a10bc
	pop {r4, pc}
	.align 2, 0
_021A1AA0: .word 0xFFFDFFFF
	thumb_func_end ovy326_21a1a78

	thumb_func_start ovy326_21a1aa4
ovy326_21a1aa4: ; 0x021A1AA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, _021A1AFC ; =0x0000010A
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0
	bl sub_0204B354
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	ldr r6, [r0, #0xc]
	add r1, #0x82
	add r0, r6, #0
	add r0, #0x60
	add r1, r5, r1
	mov r2, #0x20
	blx sub_02078920
	add r1, r4, #0
	add r6, #0x80
	add r1, #0xa2
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #0x20
	blx sub_02078920
	add r0, r7, #0
	bl sub_0203A24C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x7e
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x46
	ldr r1, [r5, r0]
	mov r0, #0x20
	lsl r0, r0, #0xb
	orr r0, r1
	add r4, #0x46
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1AFC: .word 0x0000010A
	thumb_func_end ovy326_21a1aa4

	thumb_func_start ovy326_21a1b00
ovy326_21a1b00: ; 0x021A1B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #0x15
	lsl r3, r3, #4
	str r0, [sp]
	mov r4, #1
	ldr r0, [r0, r3]
	lsl r4, r4, #0x10
	tst r0, r4
	beq _021A1C04
	add r2, r3, #0
	ldr r0, [sp]
	add r2, #0x38
	ldr r2, [r0, r2]
	lsr r0, r4, #6
	add r1, r3, #0
	add r2, r2, r0
	ldr r0, [sp]
	add r3, #0x38
	add r1, #0x38
	str r2, [r0, r3]
	cmp r2, r4
	blt _021A1B32
	sub r2, r2, r4
	str r2, [r0, r1]
_021A1B32:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	mov r3, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A1C08 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r4, r0, #0x10
	ldr r0, [sp, #4]
	add r0, r0, #4
	mov ip, r0
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x24
	str r0, [sp, #0x10]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x44
	str r0, [sp, #4]
_021A1B78:
	ldr r0, [sp]
	lsl r1, r3, #1
	add r6, r0, r1
	mov r0, ip
	ldrh r5, [r6, r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x10]
	add r3, r3, #1
	ldrh r2, [r6, r0]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	and r0, r5
	ldr r5, [sp, #8]
	asr r0, r0, #0xa
	and r5, r2
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r4
	asr r5, r5, #0xc
	add r0, r0, r5
	mov r5, #0x1f
	and r5, r2
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r4
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r2
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r7
	mul r1, r4
	asr r1, r1, #0xc
	add r1, r7, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r1, r0
	ldr r0, [sp, #4]
	cmp r3, #0x10
	strh r1, [r6, r0]
	blt _021A1B78
	mov r3, #0x73
	ldr r2, [sp]
	lsl r3, r3, #2
	add r2, r2, r3
	mov r0, #0xe
	mov r1, #0x80
	mov r3, #0x20
	bl sub_0205FA10
_021A1C04:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1C08: .word FX_SinCosTable_
	thumb_func_end ovy326_21a1b00

	thumb_func_start sub_021A1C0C
sub_021A1C0C: ; 0x021A1C0C
	cmp r1, #1
	bne _021A1C20
	mov r2, #0x15
	lsl r2, r2, #4
	mov r1, #1
	ldr r3, [r0, r2]
	lsl r1, r1, #0x10
	orr r1, r3
	str r1, [r0, r2]
	bx lr
_021A1C20:
	mov r2, #0x15
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	ldr r1, _021A1C30 ; =0xFFFEFFFF
	and r1, r3
	str r1, [r0, r2]
	bx lr
	nop
_021A1C30: .word 0xFFFEFFFF
	thumb_func_end sub_021A1C0C

	thumb_func_start ovy326_21a1c34
ovy326_21a1c34: ; 0x021A1C34
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _021A1C70 ; =0x021A31E2
	add r5, r0, #0
	str r1, [sp]
	add r6, r4, #0
_021A1C40:
	lsl r3, r4, #2
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #3
	bl ovy326_21a10bc
	add r4, r4, #1
	cmp r4, #3
	blt _021A1C40
	ldr r3, [sp]
	ldr r2, [sp]
	lsl r4, r3, #2
	ldr r3, _021A1C74 ; =0x021A31E4
	add r0, r5, #0
	ldrsh r3, [r3, r4]
	add r1, r6, #0
	add r2, r2, #3
	bl ovy326_21a10bc
	mov r0, #0x62
	lsl r0, r0, #2
	str r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1C70: .word 0x021A31E2
_021A1C74: .word 0x021A31E4
	thumb_func_end ovy326_21a1c34

	thumb_func_start ovy326_21a1c78
ovy326_21a1c78: ; 0x021A1C78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r4, #1
	cmp r0, #1
	bne _021A1C8E
	mov r4, #0
_021A1C8E:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	add r3, r4, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	add r3, r4, #0
	bl ovy326_21a1104
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a1c78

	thumb_func_start ovy326_21a1cb4
ovy326_21a1cb4: ; 0x021A1CB4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C178
	mov r0, #0x8b
	lsl r0, r0, #2
	add r4, sp, #0
	mov r6, #2
	ldrsh r1, [r4, r6]
	ldr r0, [r5, r0]
	bl sub_0219C324
	strh r0, [r4, #2]
	ldrsh r0, [r4, r6]
	cmp r0, #0x28
	bge _021A1CE0
	mov r0, #0x28
	b _021A1CE6
_021A1CE0:
	cmp r0, #0x98
	ble _021A1CE8
	mov r0, #0x98
_021A1CE6:
	strh r0, [r4, #2]
_021A1CE8:
	ldr r0, [r5, #0x34]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy326_21a1cb4

	thumb_func_start ovy326_21a1cf8
ovy326_21a1cf8: ; 0x021A1CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0
	str r3, [sp, #0x34]
	str r0, [sp, #0x28]
	cmp r1, #0
	bne _021A1D10
	lsl r0, r2, #2
	add r1, r5, r0
	mov r0, #0xa3
	b _021A1D16
_021A1D10:
	lsl r0, r2, #2
	add r1, r5, r0
	mov r0, #0xa6
_021A1D16:
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	mov r4, #0
_021A1D1C:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #9
	bl ovy326_21a0d2c
	add r4, r4, #1
	cmp r4, #5
	blt _021A1D1C
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	mov r1, #0x9d
	lsl r1, r1, #2
	lsl r0, r0, #2
	add r2, r1, #0
	add r0, r5, r0
	sub r2, #0xc
	ldr r2, [r0, r2]
	ldr r4, [r0, r1]
	sub r2, r2, #1
	cmp r4, r2
	bne _021A1D68
	sub r1, #0x18
	ldr r0, [r0, r1]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x1c]
	blx sub_0208D65C
	str r1, [sp, #0xc]
	cmp r1, #0
	bne _021A1D68
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021A1D64
	mov r0, #1
	str r0, [sp, #0x28]
_021A1D64:
	mov r0, #0xa
	str r0, [sp, #0xc]
_021A1D68:
	mov r0, #0xa
	mul r0, r4
	str r0, [sp, #0x24]
	ldrh r1, [r5]
	mov r0, #0x80
	bl sub_02048530
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x34]
	ldr r1, _021A1F2C ; =0x021A319C
	lsl r0, r0, #1
	mov r4, #0
	add r1, r1, r0
	add r0, r4, #0
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x30]
_021A1D92:
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _021A1DC2
	ldr r0, [r5, #0x68]
	mov r1, #0xc
	bl sub_0204898C
	add r4, r0, #0
	ldr r1, [sp, #0x18]
	str r4, [sp]
	mov r2, #0
	add r1, #9
	ldr r0, _021A1F30 ; =0x000039E0
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	mov r3, #0
	str r1, [sp, #0x18]
	bl ovy326_21a0cb0
	add r0, r4, #0
	bl sub_02048564
	b _021A1F20
_021A1DC2:
	ldr r0, [r5, #0x68]
	ldr r1, [sp, #0x2c]
	bl sub_0204898C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _021A1DF4
	ldr r3, [sp, #0x30]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r3, r4
	bl ovy326_21a267c
	add r2, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_020243D0
	b _021A1E32
_021A1DF4:
	cmp r0, #1
	bne _021A1E16
	ldr r3, [sp, #0x30]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	add r3, r3, r4
	bl ovy326_21a267c
	add r2, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020244B4
	b _021A1E32
_021A1E16:
	ldr r3, [sp, #0x30]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	add r3, r3, r4
	bl ovy326_21a267c
	add r2, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020244A4
_021A1E32:
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x10]
	bl sub_02024920
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A1F30 ; =0x000039E0
	add r1, #9
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy326_21a0cb0
	ldr r0, [sp, #0x10]
	bl sub_02048564
	ldr r0, [sp, #0xc]
	add r1, r4, #1
	cmp r1, r0
	bge _021A1F20
	ldr r0, [r5, #0x68]
	ldr r1, [sp, #0x2c]
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _021A1E9C
	ldr r3, [sp, #0x24]
	add r6, r4, #2
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r6, r3
	bl ovy326_21a267c
	add r2, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_020243D0
	b _021A1EDE
_021A1E9C:
	cmp r0, #1
	bne _021A1EC0
	ldr r3, [sp, #0x24]
	add r6, r4, #2
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	add r3, r6, r3
	bl ovy326_21a267c
	add r2, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020244B4
	b _021A1EDE
_021A1EC0:
	ldr r3, [sp, #0x24]
	add r6, r4, #2
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #2
	add r3, r6, r3
	bl ovy326_21a267c
	add r2, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020244A4
_021A1EDE:
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x14]
	bl sub_02024920
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A1F30 ; =0x000039E0
	add r1, #9
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0x68
	mov r3, #0
	bl ovy326_21a0cb0
	ldr r0, [sp, #0x14]
	bl sub_02048564
	ldr r0, [sp, #0xc]
	add r4, r4, #2
	cmp r4, r0
	bge _021A1F20
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _021A1F20
	b _021A1D92
_021A1F20:
	ldr r0, [sp, #0x20]
	bl sub_02048564
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1F2C: .word 0x021A319C
_021A1F30: .word 0x000039E0
	thumb_func_end ovy326_21a1cf8

	thumb_func_start ovy326_21a1f34
ovy326_21a1f34: ; 0x021A1F34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	cmp r1, #0
	bne _021A1F46
	lsl r0, r2, #2
	add r1, r5, r0
	mov r0, #0xa3
	b _021A1F4C
_021A1F46:
	lsl r0, r2, #2
	add r1, r5, r0
	mov r0, #0xa6
_021A1F4C:
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r6, #0
	bl ovy326_21a25e0
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy326_21a25e0
	mov r1, #0x97
	lsl r1, r1, #2
	add r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ovy326_21a25e0
	mov r1, #0x97
	lsl r1, r1, #2
	add r1, #8
	str r0, [r5, r1]
	mov r0, #0x97
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #0xc
	str r0, [sp, #8]
	mov r0, #0x97
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
_021A1F9A:
	lsl r0, r6, #2
	add r7, r5, r0
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	str r0, [sp]
	cmp r0, #0
	bne _021A1FB2
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r7, r0]
	b _021A1FCC
_021A1FB2:
	mov r1, #0xa
	blx sub_0208D65C
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0xa
	blx sub_0208D65C
	cmp r1, #0
	beq _021A1FC8
	add r4, r4, #1
_021A1FC8:
	ldr r0, [sp, #8]
	str r4, [r7, r0]
_021A1FCC:
	add r6, r6, #1
	cmp r6, #3
	blt _021A1F9A
	mov r3, #0
	mov r0, #0x9d
	add r2, r3, #0
	lsl r0, r0, #2
_021A1FDA:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #3
	blt _021A1FDA
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_21a1f34

	thumb_func_start ovy326_21a1fec
ovy326_21a1fec: ; 0x021A1FEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	add r0, sp, #4
	add r1, sp, #8
	mvn r6, r6
	bl sub_0203DA84
	cmp r0, #1
	bne _021A2020
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	sub r0, r0, #1
	mov r2, #0x20
	mov r3, #0xa0
	bl sub_020355B8
	add r6, r0, #0
_021A2020:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy326_21a1fec

	thumb_func_start ovy326_21a2028
ovy326_21a2028: ; 0x021A2028
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	str r2, [sp, #4]
	add r1, sp, #0x10
	mov r2, #0
	add r7, r3, #0
	mov r4, #0
	bl sub_0204C178
	cmp r7, #0
	bne _021A2060
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	sub r0, r0, #1
	mov r2, #0x20
	mov r3, #0xa0
	bl sub_020355E0
	b _021A2088
_021A2060:
	add r0, sp, #8
	add r1, sp, #0xc
	bl sub_0203DA84
	cmp r0, #1
	bne _021A208C
	add r2, sp, #8
	mov r1, #0xa
	ldrsh r2, [r2, r1]
	ldr r0, [sp, #0xc]
	sub r1, r2, r0
	bpl _021A207A
	neg r1, r1
_021A207A:
	cmp r1, #1
	ble _021A2088
	cmp r2, #0x28
	beq _021A2088
	cmp r2, #0x98
	beq _021A2088
	mov r4, #1
_021A2088:
	add r1, sp, #8
	strh r0, [r1, #0xa]
_021A208C:
	add r1, sp, #8
	mov r0, #0xa
	ldrsh r0, [r1, r0]
	cmp r0, #0x28
	bge _021A209A
	mov r0, #0x28
	b _021A20A0
_021A209A:
	cmp r0, #0x98
	ble _021A20A2
	mov r0, #0x98
_021A20A0:
	strh r0, [r1, #0xa]
_021A20A2:
	ldr r0, [r5, #0x34]
	add r1, sp, #0x10
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_21a2028

	thumb_func_start ovy326_21a20b4
ovy326_21a20b4: ; 0x021A20B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #6
	add r5, r0, #0
	add r6, r2, #0
	bl ovy326_21a0d2c
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0x40
	orr r0, r2
	str r0, [r5, r1]
	mov r1, #0
	cmp r4, #1
	bne _021A20DA
	mov r1, #1
	b _021A20E0
_021A20DA:
	cmp r4, #3
	bne _021A20E0
	add r1, r6, #2
_021A20E0:
	lsl r2, r1, #1
	ldr r1, _021A2110 ; =0x021A31D8
	ldr r0, [r5, #0x68]
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #0xf1
	str r4, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #6
	mov r3, #4
	bl ovy326_21a0cb0
	add r0, r4, #0
	bl sub_02048564
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021A2110: .word 0x021A31D8
	thumb_func_end ovy326_21a20b4

	thumb_func_start ovy326_21a2114
ovy326_21a2114: ; 0x021A2114
	push {r3, lr}
	cmp r1, #0
	bne _021A2126
	ldr r0, _021A2134 ; =0x021A3718
	lsl r1, r2, #2
	ldr r0, [r0, r1]
	bl sub_0203DA0C
	pop {r3, pc}
_021A2126:
	ldr r0, _021A2134 ; =0x021A3718
	lsl r1, r2, #2
	ldr r0, [r0, r1]
	bl sub_0203D9C8
	pop {r3, pc}
	nop
_021A2134: .word 0x021A3718
	thumb_func_end ovy326_21a2114

	thumb_func_start ovy326_21a2138
ovy326_21a2138: ; 0x021A2138
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r2, #0
	cmp r4, #1
	bne _021A2146
	sub r2, #8
_021A2146:
	ldr r0, _021A2158 ; =0x04000050
	mov r1, #0x1e
	bl sub_02074A88
	add r0, r5, #0
	add r1, r4, #0
	bl ovy326_21a232c
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2158: .word 0x04000050
	thumb_func_end ovy326_21a2138

	thumb_func_start ovy326_21a215c
ovy326_21a215c: ; 0x021A215C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r2, #0
	cmp r4, #1
	bne _021A216A
	sub r2, #8
_021A216A:
	ldr r0, _021A2190 ; =0x04000050
	mov r1, #0x1e
	bl sub_02074A88
	mov r2, #0
	cmp r4, #1
	bne _021A217A
	mov r2, #0x10
_021A217A:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r2, #1
	add r0, r1, r0
	mov r1, #0xe0
	mov r2, #0x20
	bl sub_020754B8
	pop {r3, r4, r5, pc}
	nop
_021A2190: .word 0x04000050
	thumb_func_end ovy326_21a215c

	thumb_func_start ovy326_21a2194
ovy326_21a2194: ; 0x021A2194
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	bl sub_0204C138
	cmp r0, #1
	bne _021A21B4
	cmp r4, #1
	ldr r0, [r5, #0x34]
	bne _021A21B0
	bl sub_0204C550
	b _021A21B4
_021A21B0:
	bl sub_0204C540
_021A21B4:
	ldr r0, [r5, #0x3c]
	bl sub_0204C138
	cmp r0, #1
	bne _021A21CE
	cmp r4, #1
	ldr r0, [r5, #0x3c]
	bne _021A21CA
	bl sub_0204C550
	pop {r3, r4, r5, pc}
_021A21CA:
	bl sub_0204C540
_021A21CE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a2194

	thumb_func_start ovy326_21a21d0
ovy326_21a21d0: ; 0x021A21D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _021A21E4
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xa3
	b _021A21EA
_021A21E4:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xa6
_021A21EA:
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0xc]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xe
	bl ovy326_21a0d2c
	ldrh r1, [r5]
	mov r0, #0x80
	mov r6, #0x80
	bl sub_02048530
	str r0, [sp, #0x10]
	ldrh r1, [r5]
	mov r0, #0x80
	bl sub_02048530
	add r7, r0, #0
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0
	bl ovy326_21a25ac
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x80
	add r0, #0x90
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [r5, #0x68]
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x14]
	add r6, #0x90
	ldr r0, [r5, r6]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl sub_02024920
	add r4, #0xe
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A2278 ; =0x000039E2
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #4
	bl ovy326_21a0cb0
	ldr r0, [sp, #0x10]
	bl sub_02048564
	ldr r0, [sp, #0x14]
	bl sub_02048564
	add r0, r7, #0
	bl sub_02048564
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2278: .word 0x000039E2
	thumb_func_end ovy326_21a21d0

	thumb_func_start ovy326_21a227c
ovy326_21a227c: ; 0x021A227C
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _021A2286
	mov r4, #0
_021A2286:
	mov r0, #5
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #6
	add r1, r4, #0
	bl sub_02044C98
	pop {r4, pc}
	thumb_func_end ovy326_21a227c

	thumb_func_start ovy326_21a2298
ovy326_21a2298: ; 0x021A2298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _021A22C0
	cmp r6, #0
	bne _021A22C0
	bl sub_0203D554
	cmp r0, #1
	bne _021A22B6
	mov r4, #0
	b _021A22C0
_021A22B6:
	bl sub_0203D554
	cmp r0, #0
	bne _021A22C0
	mov r4, #1
_021A22C0:
	cmp r6, #1
	bne _021A22CE
	mov r0, #1
	bl sub_0203D564
	mov r4, #0
	b _021A22DA
_021A22CE:
	cmp r5, #1
	bne _021A22DA
	mov r0, #0
	bl sub_0203D564
	mov r4, #1
_021A22DA:
	ldr r0, [sp]
	cmp r0, #1
	bne _021A22E2
	mov r4, #1
_021A22E2:
	add r0, r7, #0
	add r1, r4, #0
	bl ovy326_21a227c
	add r0, r7, #0
	mov r1, #0
	mov r2, #2
	add r3, r4, #0
	bl ovy326_21a1104
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_21a2298

	thumb_func_start ovy326_21a22f8
ovy326_21a22f8: ; 0x021A22F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, _021A2328 ; =0x0000010A
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0
	bl sub_0204B354
	add r6, r0, #0
	ldr r0, [sp]
	add r4, #0xe2
	ldr r0, [r0, #0xc]
	add r1, r5, r4
	mov r2, #0x40
	blx sub_02078920
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A2328: .word 0x0000010A
	thumb_func_end ovy326_21a22f8

	thumb_func_start ovy326_21a232c
ovy326_21a232c: ; 0x021A232C
	push {r4, lr}
	add r3, r0, #0
	mov r4, #0
	cmp r1, #1
	bne _021A2338
	mov r4, #0x10
_021A2338:
	mov r2, #0x7b
	lsl r2, r2, #2
	add r3, r3, r2
	lsl r2, r4, #1
	add r2, r3, r2
	mov r0, #0xf
	mov r1, #0xe0
	mov r3, #0x20
	bl sub_0205FA10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_21a232c

	thumb_func_start ovy326_21a2350
ovy326_21a2350: ; 0x021A2350
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r3, #0
	ldr r4, [sp, #0x10]
	cmp r1, #0
	bne _021A2396
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r3, [r5, r1]
	mov r1, #3
	tst r1, r3
	bne _021A23D2
	cmp r2, r4
	blt _021A2372
	mov r1, #0
	mov r2, #1
	b _021A2376
_021A2372:
	mov r1, #0
	sub r2, r1, #1
_021A2376:
	bl ovy326_21a14d4
	cmp r4, r6
	blt _021A238A
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy326_21a14d4
	pop {r4, r5, r6, pc}
_021A238A:
	mov r1, #1
	add r0, r5, #0
	sub r2, r1, #2
	bl ovy326_21a14d4
	pop {r4, r5, r6, pc}
_021A2396:
	cmp r1, #1
	bne _021A23D2
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r3, [r5, r1]
	mov r1, #0x30
	tst r1, r3
	bne _021A23D2
	cmp r2, r4
	blt _021A23B0
	mov r1, #5
	mov r2, #1
	b _021A23B4
_021A23B0:
	mov r1, #5
	sub r2, r1, #6
_021A23B4:
	bl ovy326_21a14d4
	cmp r4, r6
	blt _021A23C8
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ovy326_21a14d4
	pop {r4, r5, r6, pc}
_021A23C8:
	mov r1, #4
	add r0, r5, #0
	sub r2, r1, #5
	bl ovy326_21a14d4
_021A23D2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy326_21a2350

	thumb_func_start ovy326_21a23d4
ovy326_21a23d4: ; 0x021A23D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r7, r1, #0
	mov r2, #1
	mov r1, #0
	mov r4, #0
	mov r6, #0
	tst r2, r0
	beq _021A23EE
	b _021A2420
_021A23EE:
	mov r2, #2
	tst r2, r0
	beq _021A23F8
	mov r4, #1
	b _021A2420
_021A23F8:
	mov r3, #4
	add r2, r0, #0
	tst r2, r3
	beq _021A2404
	mov r4, #2
	b _021A2420
_021A2404:
	mov r2, #8
	tst r2, r0
	beq _021A240E
	mov r4, #3
	b _021A2420
_021A240E:
	mov r2, #0x10
	tst r2, r0
	beq _021A2418
	add r4, r3, #0
	b _021A2420
_021A2418:
	mov r2, #0x20
	tst r0, r2
	beq _021A2422
	mov r4, #5
_021A2420:
	mov r1, #1
_021A2422:
	cmp r1, #1
	bne _021A246A
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy326_21a1134
	cmp r0, #0
	bne _021A246A
	mov r0, #0x15
	mov r1, #1
	lsl r0, r0, #4
	lsl r1, r4
	ldr r2, [r5, r0]
	mvn r1, r1
	and r1, r2
	str r1, [r5, r0]
	cmp r7, #0
	bne _021A2468
	sub r2, r4, #2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bhi _021A2468
	cmp r4, #2
	bne _021A245E
	mov r2, #0x80
	b _021A2464
_021A245E:
	cmp r4, #3
	bne _021A2468
	mov r2, #0x40
_021A2464:
	orr r1, r2
	str r1, [r5, r0]
_021A2468:
	mov r6, #1
_021A246A:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy326_21a23d4

	thumb_func_start ovy326_21a2470
ovy326_21a2470: ; 0x021A2470
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #1
	bne _021A24A4
	mov r1, #0
	bl ovy326_21a227c
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xe
	bl ovy326_21a0d2c
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #6
	mov r3, #0
	bl ovy326_21a1104
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy326_21a1104
	pop {r3, r4, r5, pc}
_021A24A4:
	mov r1, #1
	bl ovy326_21a227c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a2470

	thumb_func_start ovy326_21a24ac
ovy326_21a24ac: ; 0x021A24AC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x5a
	lsl r7, r7, #2
	add r5, r0, #0
	mov r6, #0
	mov r4, #0
	add r7, #0xf0
_021A24BA:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy326_21a24e8
	cmp r0, #1
	bne _021A24DE
	mov r0, #0x5a
	lsl r0, r0, #2
	add r2, r4, #4
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r2
	orr r1, r0
	mov r0, #0x5a
	lsl r0, r0, #2
	str r1, [r5, r0]
	str r4, [r5, r7]
	add r6, r6, #1
_021A24DE:
	add r4, r4, #1
	cmp r4, #3
	blt _021A24BA
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_21a24ac

	thumb_func_start ovy326_21a24e8
ovy326_21a24e8: ; 0x021A24E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xa3
	lsl r0, r0, #2
	add r4, r5, r0
	mov r0, #0x8a
	str r0, [sp]
	add r7, r1, #0
	ldrh r1, [r5]
	ldr r0, _021A256C ; =0x00007FFF
	ldr r3, _021A2570 ; =0x021A3748
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r1, _021A2574 ; =0x00001214
	lsr r0, r0, #0x10
	mov r2, #0
	lsl r6, r7, #2
	bl sub_0203A1FC
	add r1, r0, #0
	ldr r2, _021A2574 ; =0x00001214
	str r1, [r4, r6]
	mov r0, #0
	blx sub_02078658
	ldr r0, [r5, #0x5c]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	ldr r1, _021A2578 ; =0x021A34D4
	lsl r7, r7, #3
	ldr r1, [r1, r7]
	ldrh r2, [r5]
	str r0, [sp, #0xc]
	str r1, [sp, #4]
	bl sub_020074EC
	cmp r0, #1
	bne _021A255C
	ldr r2, _021A257C ; =0x021A34D8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [r2, r7]
	bl sub_02007678
	ldr r1, [r4, r6]
	ldr r2, _021A2574 ; =0x00001214
	blx sub_0207866C
	mov r0, #1
	str r0, [sp, #8]
_021A255C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_02007534
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A256C: .word 0x00007FFF
_021A2570: .word 0x021A3748
_021A2574: .word 0x00001214
_021A2578: .word 0x021A34D4
_021A257C: .word 0x021A34D8
	thumb_func_end ovy326_21a24e8

	thumb_func_start ovy326_21a2580
ovy326_21a2580: ; 0x021A2580
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xa3
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021A258A:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A259C
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r7]
_021A259C:
	add r4, r4, #1
	cmp r4, #3
	blt _021A258A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy326_21a2580

	thumb_func_start sub_021A25A4
sub_021A25A4: ; 0x021A25A4
	ldr r3, _021A25A8 ; =ovy326_21a2970
	bx r3
	.align 2, 0
_021A25A8: .word ovy326_21a2970
	thumb_func_end sub_021A25A4

	thumb_func_start ovy326_21a25ac
ovy326_21a25ac: ; 0x021A25AC
	push {r3, lr}
	cmp r2, #0
	bne _021A25BE
	add r0, r3, #0
	add r1, #0xa
	mov r2, #0x25
	bl sub_02048658
	pop {r3, pc}
_021A25BE:
	cmp r2, #1
	bne _021A25CE
	add r0, r3, #0
	add r1, #0x54
	mov r2, #0x4b
	bl sub_02048658
	pop {r3, pc}
_021A25CE:
	cmp r2, #2
	bne _021A25DC
	add r0, r3, #0
	add r1, #0xea
	mov r2, #0x6f
	bl sub_02048658
_021A25DC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_21a25ac

	thumb_func_start ovy326_21a25e0
ovy326_21a25e0: ; 0x021A25E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0
	str r0, [sp]
	cmp r2, #0
	bne _021A2622
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r1, r0
	str r0, [sp, #4]
	add r6, r5, #0
_021A25F6:
	mov r4, #0
	lsl r7, r6, #3
_021A25FA:
	ldr r0, [sp, #4]
	mov r1, #1
	ldrb r0, [r0, r6]
	lsl r1, r4
	tst r0, r1
	beq _021A2614
	ldr r0, [sp]
	add r1, r4, r7
	bl ovy326_21a2954
	cmp r0, #1
	bne _021A2614
	add r5, r5, #1
_021A2614:
	add r4, r4, #1
	cmp r4, #8
	blt _021A25FA
	add r6, r6, #1
	cmp r6, #0x52
	blt _021A25F6
	b _021A266E
_021A2622:
	cmp r2, #1
	bne _021A264C
	ldr r0, _021A2674 ; =0x00000222
	add r3, r5, #0
	add r2, r1, r0
	mov r6, #1
	add r0, r5, #0
_021A2630:
	ldrb r1, [r2, r3]
	add r4, r0, #0
_021A2634:
	add r7, r6, #0
	lsl r7, r4
	tst r7, r1
	beq _021A263E
	add r5, r5, #1
_021A263E:
	add r4, r4, #1
	cmp r4, #8
	blt _021A2634
	add r3, r3, #1
	cmp r3, #0x4c
	blt _021A2630
	b _021A266E
_021A264C:
	cmp r2, #2
	bne _021A266E
	ldr r2, _021A2678 ; =0x00000272
	mov r3, #1
	ldrh r1, [r1, r2]
	sub r2, #0x42
_021A2658:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	bne _021A2662
	add r5, r5, #1
_021A2662:
	add r3, r3, #1
	cmp r3, r2
	blt _021A2658
	cmp r5, #1
	blt _021A266E
	mov r5, #1
_021A266E:
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2674: .word 0x00000222
_021A2678: .word 0x00000272
	thumb_func_end ovy326_21a25e0

	thumb_func_start ovy326_21a267c
ovy326_21a267c: ; 0x021A267C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r3, #0
	str r0, [sp]
	cmp r2, #0
	bne _021A26D0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r1, r0
	str r0, [sp, #8]
	mov r6, #0
	mov r7, #0
_021A2694:
	lsl r0, r7, #3
	mov r4, #0
	str r0, [sp, #4]
_021A269A:
	ldr r0, [sp, #8]
	mov r1, #1
	ldrb r0, [r0, r7]
	lsl r1, r4
	tst r0, r1
	beq _021A26C2
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r1, r4, r1
	bl ovy326_21a2954
	cmp r0, #1
	bne _021A26C2
	add r6, r6, #1
	cmp r5, r6
	bne _021A26C2
	ldr r0, [sp, #4]
	add sp, #0xc
	add r0, r4, r0
	pop {r4, r5, r6, r7, pc}
_021A26C2:
	add r4, r4, #1
	cmp r4, #8
	blt _021A269A
	add r7, r7, #1
	cmp r7, #0x52
	blt _021A2694
	b _021A2726
_021A26D0:
	cmp r2, #1
	bne _021A2706
	ldr r0, _021A272C ; =0x00000222
	mov r2, #0
	add r0, r1, r0
	mov r3, #0
	mov r6, #1
_021A26DE:
	ldrb r1, [r0, r3]
	mov r4, #0
_021A26E2:
	add r7, r6, #0
	lsl r7, r4
	tst r7, r1
	beq _021A26F8
	add r2, r2, #1
	cmp r5, r2
	bne _021A26F8
	lsl r0, r3, #3
	add sp, #0xc
	add r0, r4, r0
	pop {r4, r5, r6, r7, pc}
_021A26F8:
	add r4, r4, #1
	cmp r4, #8
	blt _021A26E2
	add r3, r3, #1
	cmp r3, #0x4c
	blt _021A26DE
	b _021A2726
_021A2706:
	cmp r2, #2
	bne _021A2726
	ldr r2, _021A2730 ; =0x00000272
	mov r0, #1
	ldrh r3, [r1, r2]
	sub r2, #0x42
_021A2712:
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	cmp r1, r3
	beq _021A2728
	add r0, r0, #1
	cmp r0, r2
	blt _021A2712
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A2726:
	mov r0, #0
_021A2728:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A272C: .word 0x00000222
_021A2730: .word 0x00000272
	thumb_func_end ovy326_21a267c

	thumb_func_start ovy326_21a2734
ovy326_21a2734: ; 0x021A2734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r0, #1
	tst r0, r2
	bne _021A27AE
	lsl r0, r1, #2
	add r2, r5, r0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r7, [r2, r0]
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, #0x10
	str r1, [r5, r0]
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, #0x14
	str r4, [r5, r0]
	ldr r0, [r5, #0x5c]
	ldr r0, [r0]
	bl sub_02016AD8
	str r0, [sp]
	bl sub_02017934
	ldr r1, _021A27B4 ; =0x021A34D4
	lsl r4, r4, #3
	ldr r6, [r1, r4]
	ldrh r2, [r5]
	add r1, r6, #0
	str r0, [sp, #4]
	bl sub_020074EC
	ldr r2, _021A27B8 ; =0x021A34D8
	ldr r0, [sp, #4]
	ldr r2, [r2, r4]
	add r1, r6, #0
	bl sub_02007678
	add r1, r0, #0
	ldr r2, _021A27BC ; =0x00001214
	add r0, r7, #0
	blx sub_0207866C
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_020178C4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	orr r1, r0
	mov r0, #0x5a
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A27AE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A27B4: .word 0x021A34D4
_021A27B8: .word 0x021A34D8
_021A27BC: .word 0x00001214
	thumb_func_end ovy326_21a2734

	thumb_func_start ovy326_21a27c0
ovy326_21a27c0: ; 0x021A27C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #1
	tst r0, r4
	bne _021A27D4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A27D4:
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, #0x14
	ldr r6, [r5, r0]
	ldr r0, [r5, #0x5c]
	ldr r0, [r0]
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_02017934
	str r0, [sp]
	ldr r0, _021A2824 ; =0x021A34D4
	lsl r1, r6, #3
	ldr r6, [r0, r1]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020178F4
	sub r0, r0, #2
	cmp r0, #1
	bhi _021A2820
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02007534
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	bic r1, r0
	mov r0, #0x5a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy326_21a28e0
	mov r4, #0
_021A2820:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2824: .word 0x021A34D4
	thumb_func_end ovy326_21a27c0

	thumb_func_start ovy326_21a2828
ovy326_21a2828: ; 0x021A2828
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	add r1, r4, #0
	add r1, #0xb0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035660
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy326_21a2828

	thumb_func_start ovy326_21a2850
ovy326_21a2850: ; 0x021A2850
	push {r3, lr}
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A2860
	bl sub_02035884
_021A2860:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy326_21a2850

	thumb_func_start ovy326_21a2864
ovy326_21a2864: ; 0x021A2864
	push {r3, r4, r5, lr}
	mov r5, #5
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A287A
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021A287A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy326_21a2864

	thumb_func_start sub_021A287C
sub_021A287C: ; 0x021A287C
	ldr r3, _021A2884 ; =ovy326_21a2a44
	mov r1, #1
	bx r3
	nop
_021A2884: .word ovy326_21a2a44
	thumb_func_end sub_021A287C

	thumb_func_start ovy326_21a2888
ovy326_21a2888: ; 0x021A2888
	push {r4, r5, r6, r7}
	mov r5, #0xa6
	add r3, r0, #0
	mov r0, #0
	mov ip, r0
	lsl r0, r1, #2
	lsl r5, r5, #2
	add r1, r5, #0
	sub r1, #0x40
	add r0, r3, r0
	ldr r1, [r3, r1]
	ldr r0, [r0, r5]
	add r2, r1, #1
	ldrh r7, [r0, #8]
	mov r0, #0
	cmp r2, #0
	ble _021A28D8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	sub r5, #0xc
_021A28B2:
	add r6, r0, #4
	mov r4, #1
	lsl r4, r6
	tst r4, r1
	beq _021A28CE
	lsl r4, r0, #2
	add r4, r3, r4
	ldr r4, [r4, r5]
	ldrh r4, [r4, #8]
	cmp r7, r4
	bne _021A28CE
	mov r0, #1
	mov ip, r0
	b _021A28D8
_021A28CE:
	add r0, r0, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r0, r2
	blt _021A28B2
_021A28D8:
	mov r0, ip
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy326_21a2888

	thumb_func_start ovy326_21a28e0
ovy326_21a28e0: ; 0x021A28E0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x5e
	lsl r4, r4, #2
	add r5, r0, #0
	add r1, r4, #4
	ldr r1, [r5, r1]
	ldr r0, [r5, r4]
	mov r6, #0xa6
	lsl r1, r1, #2
	lsl r0, r0, #2
	lsl r6, r6, #2
	add r2, r5, r1
	add r1, r6, #0
	add r0, r5, r0
	sub r1, #0xc
	ldr r1, [r2, r1]
	ldr r0, [r0, r6]
	ldr r2, _021A2950 ; =0x00001214
	blx sub_0207866C
	add r1, r4, #4
	add r0, r4, #0
	ldr r1, [r5, r1]
	sub r0, #0x10
	ldr r0, [r5, r0]
	mov r2, #1
	add r1, r1, #4
	lsl r2, r1
	add r1, r0, #0
	add r0, r4, #0
	orr r1, r2
	sub r0, #0x10
	str r1, [r5, r0]
	mov r2, #0
	mov r1, #0
	sub r6, #0x40
	sub r4, #0x10
_021A292A:
	add r7, r1, #4
	mov r3, #1
	ldr r0, [r5, r4]
	lsl r3, r7
	tst r0, r3
	beq _021A293A
	str r1, [r5, r6]
	add r2, r2, #1
_021A293A:
	add r1, r1, #1
	cmp r1, #3
	blt _021A292A
	cmp r2, #3
	ble _021A2946
	mov r2, #3
_021A2946:
	mov r0, #6
	lsl r0, r0, #6
	str r2, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2950: .word 0x00001214
	thumb_func_end ovy326_21a28e0

	thumb_func_start ovy326_21a2954
ovy326_21a2954: ; 0x021A2954
	push {r4, lr}
	ldr r0, [r0, #0x5c]
	add r4, r1, #0
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_0200D190
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_0200D660
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_21a2954

	thumb_func_start ovy326_21a2970
ovy326_21a2970: ; 0x021A2970
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021A2A34 ; =0x00007FFF
	mov r6, #0
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, _021A2A38 ; =0x000002B7
	mov r7, #0
	str r0, [sp, #0x10]
	sub r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, _021A2A38 ; =0x000002B7
	str r0, [sp, #0xc]
	sub r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, _021A2A3C ; =0x00001210
	add r0, r0, #4
	str r0, [sp, #8]
_021A2996:
	ldr r0, [r5, #0x5c]
	ldr r1, [r0, #4]
	ldr r0, [sp, #8]
	mul r0, r7
	add r4, r1, r0
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _021A29E8
	ldr r0, [r4]
	cmp r0, #0
	beq _021A29B6
	cmp r0, #1
	beq _021A29B8
	cmp r0, #2
	beq _021A29BC
	b _021A29BE
_021A29B6:
	b _021A29BE
_021A29B8:
	mov r0, #1
	b _021A29C0
_021A29BC:
	b _021A29B8
_021A29BE:
	mov r0, #0
_021A29C0:
	cmp r0, #0
	beq _021A29E8
	ldrb r0, [r4, #7]
	cmp r0, #2
	bne _021A29E8
	ldr r1, _021A2A3C ; =0x00001210
	add r0, r4, #0
	bl sub_0204405C
	ldr r1, _021A2A3C ; =0x00001210
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _021A29DE
	mov r0, #1
	b _021A29E0
_021A29DE:
	mov r0, #0
_021A29E0:
	cmp r0, #0
	beq _021A29E8
	mov r0, #1
	b _021A29EA
_021A29E8:
	mov r0, #0
_021A29EA:
	cmp r0, #1
	bne _021A2A28
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, _021A2A38 ; =0x000002B7
	ldr r3, _021A2A40 ; =0x021A3748
	str r0, [sp]
	ldrh r1, [r5]
	ldr r0, _021A2A34 ; =0x00007FFF
	mov r2, #1
	and r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	ldr r1, _021A2A3C ; =0x00001210
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r1, #4
	bl sub_0203A1FC
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x10]
	str r0, [r2, r1]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	ldr r1, [r2, r1]
	ldr r2, _021A2A3C ; =0x00001210
	add r2, r2, #4
	blx sub_0207866C
	add r6, r6, #1
_021A2A28:
	add r7, r7, #1
	cmp r7, #0xc
	blt _021A2996
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2A34: .word 0x00007FFF
_021A2A38: .word 0x000002B7
_021A2A3C: .word 0x00001210
_021A2A40: .word 0x021A3748
	thumb_func_end ovy326_21a2970

	thumb_func_start ovy326_21a2a44
ovy326_21a2a44: ; 0x021A2A44
	push {r3, r4}
	cmp r1, #0
	bne _021A2A6E
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	mov r3, #0
	mov r1, #1
_021A2A54:
	add r0, r3, #4
	add r2, r1, #0
	lsl r2, r0
	add r0, r4, #0
	tst r0, r2
	beq _021A2A66
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_021A2A66:
	add r3, r3, #1
	cmp r3, #3
	blt _021A2A54
	b _021A2A90
_021A2A6E:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r4, #0
	mov r1, #1
_021A2A78:
	add r0, r4, #4
	add r2, r1, #0
	lsl r2, r0
	add r0, r3, #0
	tst r0, r2
	bne _021A2A8A
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_021A2A8A:
	add r4, r4, #1
	cmp r4, #3
	blt _021A2A78
_021A2A90:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	thumb_func_end ovy326_21a2a44

	thumb_func_start sub_021A2A98
sub_021A2A98: ; 0x021A2A98
	cmp r1, #0
	bne _021A2ACC
	cmp r2, #1
	bne _021A2AB0
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #0x10
	tst r0, r1
	beq _021A2AF8
_021A2AAC:
	mov r2, #0
	b _021A2AF8
_021A2AB0:
	cmp r2, #2
	bne _021A2AF8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #0x20
	tst r0, r1
	beq _021A2AC4
_021A2AC0:
	mov r2, #1
	b _021A2AF8
_021A2AC4:
	mov r0, #0x10
	tst r0, r1
	beq _021A2AF8
	b _021A2AAC
_021A2ACC:
	cmp r2, #1
	bne _021A2ADE
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #0x40
	tst r0, r1
	beq _021A2AF8
	b _021A2AF6
_021A2ADE:
	cmp r2, #0
	bne _021A2AF8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #0x20
	tst r0, r1
	beq _021A2AF0
	b _021A2AC0
_021A2AF0:
	mov r0, #0x40
	tst r0, r1
	beq _021A2AF8
_021A2AF6:
	mov r2, #2
_021A2AF8:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021A2A98

	thumb_func_start ovy326_21a2afc
ovy326_21a2afc: ; 0x021A2AFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021A2B80 ; =0x000001C2
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021A2B84 ; =0x021A375C
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx sub_020787A8
	ldr r1, _021A2B88 ; =0x04000050
	ldr r0, _021A2B8C ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021A2B90 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021A2B94 ; =0x021A3518
	add r0, r7, #0
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy326_21a2c2c
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy326_21a2cd0
	ldr r0, _021A2B98 ; =ovy326_21a2c18
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2B80: .word 0x000001C2
_021A2B84: .word 0x021A375C
_021A2B88: .word 0x04000050
_021A2B8C: .word 0x04001050
_021A2B90: .word 0xFFFF1FFF
_021A2B94: .word 0x021A3518
_021A2B98: .word ovy326_21a2c18
	thumb_func_end ovy326_21a2afc

	thumb_func_start ovy326_21a2b9c
ovy326_21a2b9c: ; 0x021A2B9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A6A8
	add r0, r4, #4
	bl ovy326_21a2d10
	add r0, r4, #0
	bl ovy326_21a2c8c
	bl sub_020232D8
	ldr r5, _021A2BE4 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A2BE8 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A2BEC ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x10
	blx sub_020787A8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_021A2BE4: .word 0x04000050
_021A2BE8: .word 0x04001050
_021A2BEC: .word 0xFFFF1FFF
	thumb_func_end ovy326_21a2b9c

	thumb_func_start ovy326_21a2bf0
ovy326_21a2bf0: ; 0x021A2BF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021A2D2C
	add r0, r4, #0
	bl sub_021A2CC4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_21a2bf0

	thumb_func_start sub_021A2C04
sub_021A2C04: ; 0x021A2C04
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2C04

	thumb_func_start sub_021A2C08
sub_021A2C08: ; 0x021A2C08
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2C08

	thumb_func_start sub_021A2C0C
sub_021A2C0C: ; 0x021A2C0C
	ldr r3, _021A2C14 ; =sub_021A2D3C
	add r0, r0, #4
	bx r3
	nop
_021A2C14: .word sub_021A2D3C
	thumb_func_end sub_021A2C0C

	thumb_func_start ovy326_21a2c18
ovy326_21a2c18: ; 0x021A2C18
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A2CC8
	add r0, r4, #4
	bl sub_021A2D34
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_21a2c18

	thumb_func_start ovy326_21a2c2c
ovy326_21a2c2c: ; 0x021A2C2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx sub_020787A8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _021A2C84 ; =0x021A34EC
	bl sub_02044710
	ldr r7, _021A2C88 ; =0x021A3548
_021A2C4E:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #8
	blo _021A2C4E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2C84: .word 0x021A34EC
_021A2C88: .word 0x021A3548
	thumb_func_end ovy326_21a2c2c

	thumb_func_start ovy326_21a2c8c
ovy326_21a2c8c: ; 0x021A2C8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A2CC0 ; =0x021A3548
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021A2C96:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021A2C96
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx sub_020787A8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2CC0: .word 0x021A3548
	thumb_func_end ovy326_21a2c8c

	thumb_func_start sub_021A2CC4
sub_021A2CC4: ; 0x021A2CC4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2CC4

	thumb_func_start sub_021A2CC8
sub_021A2CC8: ; 0x021A2CC8
	ldr r3, _021A2CCC ; =sub_02045A5C
	bx r3
	.align 2, 0
_021A2CCC: .word sub_02045A5C
	thumb_func_end sub_021A2CC8

	thumb_func_start ovy326_21a2cd0
ovy326_21a2cd0: ; 0x021A2CD0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx sub_020787A8
	ldr r0, _021A2D0C ; =0x021A34FC
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A2D0C: .word 0x021A34FC
	thumb_func_end ovy326_21a2cd0

	thumb_func_start ovy326_21a2d10
ovy326_21a2d10: ; 0x021A2D10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx sub_020787A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy326_21a2d10

	thumb_func_start sub_021A2D2C
sub_021A2D2C: ; 0x021A2D2C
	ldr r3, _021A2D30 ; =sub_0204B794
	bx r3
	.align 2, 0
_021A2D30: .word sub_0204B794
	thumb_func_end sub_021A2D2C

	thumb_func_start sub_021A2D34
sub_021A2D34: ; 0x021A2D34
	ldr r3, _021A2D38 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021A2D38: .word sub_0204B7C8
	thumb_func_end sub_021A2D34

	thumb_func_start sub_021A2D3C
sub_021A2D3C: ; 0x021A2D3C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A2D3C
_021A2D40:
	.byte 0x00, 0x00, 0x90, 0x00, 0x40, 0x00, 0x00, 0x20, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x04, 0x00
	.byte 0x01, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00
	.byte 0x05, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0xFF, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x22, 0x00, 0x21, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x99, 0xDF, 0x19, 0x02, 0xA5, 0xDF, 0x19, 0x02, 0xA9, 0xDF, 0x19, 0x02, 0x00, 0x30, 0x01, 0x01
	.byte 0x00, 0x01, 0x0D, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x04, 0x00, 0x00
	.byte 0x06, 0x04, 0x00, 0x00, 0x05, 0x04, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x07, 0x0A, 0x00, 0x00, 0x06, 0x0B, 0x00, 0x00, 0x05, 0x0C, 0x00, 0x00
	.byte 0x03, 0x07, 0x00, 0x00, 0x01, 0x08, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x30, 0x02, 0x01
	.byte 0x00, 0x01, 0x04, 0x00, 0x01, 0x38, 0x02, 0x01, 0x00, 0x01, 0x0E, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x05, 0x00, 0x04, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x12, 0x00, 0x00, 0x00, 0x05, 0x00, 0x0D, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x09, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x1E, 0x02, 0x08, 0x04, 0x02, 0x07, 0x10, 0x02, 0x02
	.byte 0x04, 0x04, 0x09, 0x10, 0x02, 0x02, 0x04, 0x02, 0x0C, 0x14, 0x02, 0x02, 0x04, 0x04, 0x0E, 0x10
	.byte 0x02, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x30, 0x01, 0x01, 0x00, 0x01, 0x07, 0x00
	.byte 0x05, 0x30, 0x01, 0x01, 0x00, 0x01, 0x08, 0x00, 0x00, 0x30, 0x01, 0x01, 0x00, 0x01, 0x09, 0x00
	.byte 0x01, 0x30, 0x01, 0x01, 0x00, 0x01, 0x0A, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0xFF, 0x01, 0x03, 0x1C, 0x03, 0x01, 0x00, 0x1A, 0x03, 0x02, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x02, 0x10, 0x00, 0x07, 0x00, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x60, 0x2F, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x17, 0x00
	.byte 0x18, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1B, 0x00, 0x1C, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1F, 0x00
	.byte 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00
	.byte 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00
	.byte 0x13, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x17, 0x00, 0x18, 0x00
	.byte 0x11, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1B, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x0A, 0x00
	.byte 0x0B, 0x00, 0x0C, 0x00, 0x0E, 0x00, 0x01, 0x00, 0x03, 0x00, 0x04, 0x00, 0x02, 0x00, 0x0D, 0x00
	.byte 0x06, 0x00, 0x05, 0x00, 0x07, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x08, 0x00, 0x81, 0xCE, 0x19, 0x02
	.byte 0x9D, 0xCF, 0x19, 0x02, 0x25, 0xCF, 0x19, 0x02, 0x18, 0x2F, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x47, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x48, 0x5F, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00
	.byte 0x60, 0x77, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x78, 0x8F, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00
	.byte 0x90, 0xA7, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x88, 0xA0, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0xA8, 0xC0, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x30, 0x47, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x60, 0x77, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x08, 0xE8, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0xA0, 0xF4, 0xFC, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x88, 0xA0, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0xA8, 0xC0, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x79, 0xE4, 0x19, 0x02
	.byte 0xCD, 0xE5, 0x19, 0x02, 0x45, 0xE5, 0x19, 0x02, 0x40, 0x00, 0x00, 0x20, 0x2C, 0x00, 0x2D, 0x00
	.byte 0x2E, 0x00, 0xFF, 0xFF, 0x32, 0x00, 0x2D, 0x00, 0x2E, 0x00, 0xFF, 0xFF, 0x02, 0x04, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x2F, 0x00, 0x30, 0x00
	.byte 0x31, 0x00, 0x0C, 0x00, 0x2D, 0x00, 0x2E, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x0C, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x10, 0x00, 0x11, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x02, 0x00
	.byte 0x07, 0x00, 0x24, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x00, 0x06, 0x00, 0x01, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x0A, 0x00
	.byte 0x0B, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x04, 0x01
	.byte 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xED, 0x18, 0x1A, 0x02
	.byte 0xF9, 0x18, 0x1A, 0x02, 0x11, 0x19, 0x1A, 0x02, 0xA8, 0xC0, 0xC8, 0xE0, 0xA8, 0xC0, 0xE8, 0xFF
	.byte 0xFF, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x03, 0x00, 0x09, 0x00, 0x05, 0x00, 0x0E, 0x00, 0x03, 0x00
	.byte 0x09, 0x00, 0x05, 0x00, 0x07, 0x0D, 0x00, 0x00, 0x06, 0x0E, 0x00, 0x00, 0x03, 0x08, 0x00, 0x00
	.byte 0x01, 0x09, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x07, 0x05, 0x00, 0x00, 0x06, 0x05, 0x00, 0x00
	.byte 0x03, 0x04, 0x00, 0x00, 0x01, 0x04, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x03, 0x05, 0x1C
	.byte 0x03, 0x02, 0x02, 0x03, 0x0A, 0x1C, 0x03, 0x02, 0x02, 0x03, 0x0F, 0x1C, 0x03, 0x02, 0xFF, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x2B, 0x00, 0x27, 0x00, 0x1D, 0x00, 0x20, 0x00, 0x0E, 0x00
	.byte 0x15, 0x00, 0x33, 0x00, 0x1A, 0x00, 0x19, 0x00, 0x23, 0x00, 0x17, 0x00, 0x18, 0x00, 0xA8, 0xC0
	.byte 0xE8, 0xFF, 0xA8, 0xC0, 0x88, 0xA0, 0xA8, 0xC0, 0xA8, 0xC0, 0x2C, 0x44, 0x08, 0xE8, 0x54, 0x6C
	.byte 0x08, 0xE8, 0x7C, 0x94, 0x08, 0xE8, 0xFF, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xE8, 0xFF, 0xA8, 0xC0
	.byte 0x88, 0xA0, 0xA8, 0xC0, 0xA8, 0xC0, 0x2C, 0x44, 0x08, 0xE8, 0x54, 0x6C, 0x08, 0xE8, 0x7C, 0x94
	.byte 0x08, 0xE8, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x06, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x05, 0x1C, 0x02, 0x03, 0x00, 0x02, 0x08, 0x1C
	.byte 0x02, 0x03, 0x00, 0x02, 0x0B, 0x1C, 0x02, 0x03, 0x00, 0x02, 0x0E, 0x1C, 0x02, 0x03, 0x00, 0x02
	.byte 0x11, 0x1C, 0x02, 0x03, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xC8, 0xE0, 0xA8, 0xC0
	.byte 0xE8, 0xFF, 0xA8, 0xC0, 0x88, 0xA0, 0xA8, 0xC0, 0xA8, 0xC0, 0xA8, 0xC0, 0x08, 0x20, 0xA8, 0xC0
	.byte 0x28, 0x40, 0xA8, 0xC0, 0x48, 0x60, 0x20, 0xA0, 0xEC, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0xFF, 0x01, 0x03, 0x1C, 0x03, 0x02, 0x00, 0x1C, 0x03, 0x02, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x02, 0x10, 0x00, 0x07, 0x00, 0x02, 0x00, 0x00, 0x06, 0x00, 0x00, 0x84, 0x34, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x0D, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x09, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x0A, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x0B, 0x00, 0x11, 0x00, 0x00, 0x00, 0x04, 0x30, 0x01, 0x01, 0x00, 0x01, 0x07, 0x00
	.byte 0x05, 0x30, 0x01, 0x01, 0x00, 0x01, 0x08, 0x00, 0x00, 0x30, 0x01, 0x01, 0x00, 0x01, 0x09, 0x00
	.byte 0x01, 0x30, 0x01, 0x01, 0x00, 0x01, 0x0A, 0x00, 0x02, 0x30, 0x01, 0x00, 0x00, 0x01, 0x07, 0x00
	.byte 0x03, 0x30, 0x01, 0x00, 0x00, 0x01, 0x08, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x02, 0x03, 0x1C, 0x02, 0x02, 0x05, 0x02, 0x07, 0x0C, 0x02, 0x02, 0x05, 0x0F, 0x07, 0x10
	.byte 0x02, 0x02, 0x05, 0x02, 0x09, 0x1C, 0x06, 0x02, 0x05, 0x02, 0x10, 0x12, 0x02, 0x02, 0x05, 0x02
	.byte 0x12, 0x1C, 0x04, 0x02, 0x00, 0x01, 0x00, 0x1E, 0x03, 0x07, 0x00, 0x01, 0x04, 0x1E, 0x04, 0x09
	.byte 0x00, 0x01, 0x13, 0x1E, 0x04, 0x09, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x2F, 0x08, 0xE8
	.byte 0x08, 0x00, 0x00, 0x00, 0x30, 0x47, 0x08, 0xE8, 0x08, 0x00, 0x00, 0x00, 0x48, 0x5F, 0x08, 0xE8
	.byte 0x08, 0x00, 0x00, 0x00, 0x60, 0x77, 0x08, 0xE8, 0x08, 0x00, 0x00, 0x00, 0x78, 0x8F, 0x08, 0xE8
	.byte 0x08, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x08, 0xE8, 0x08, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x88, 0xA0
	.byte 0x04, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xA8, 0xC0, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x01, 0x00, 0x01, 0x04, 0x00, 0x01, 0x38, 0x01, 0x01
	.byte 0x00, 0x01, 0x11, 0x00, 0x02, 0x30, 0x01, 0x01, 0x00, 0x01, 0x12, 0x00, 0x04, 0x30, 0x01, 0x00
	.byte 0x00, 0x01, 0x18, 0x00, 0x06, 0x30, 0x01, 0x00, 0x00, 0x01, 0x19, 0x00, 0x08, 0x30, 0x01, 0x00
	.byte 0x00, 0x01, 0x1A, 0x00, 0x0A, 0x30, 0x03, 0x00, 0x00, 0x01, 0x1B, 0x00, 0x0A, 0x30, 0x03, 0x00
	.byte 0x00, 0x01, 0x1C, 0x00, 0x0A, 0x30, 0x03, 0x00, 0x00, 0x01, 0x1D, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x2F, 0x08, 0xE8, 0x08, 0x00, 0x00, 0x00, 0x30, 0x47, 0x08, 0xE8
	.byte 0x08, 0x00, 0x00, 0x00, 0x48, 0x5F, 0x08, 0xE8, 0x08, 0x00, 0x00, 0x00, 0x60, 0x77, 0x08, 0xE8
	.byte 0x08, 0x00, 0x00, 0x00, 0x78, 0x8F, 0x08, 0xE8, 0x08, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x08, 0xE8
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0xA0, 0xEC, 0xFF, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x88, 0xA0
	.byte 0x04, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xA8, 0xC0, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x69, 0x6E, 0x5F, 0x72, 0x65, 0x63, 0x6F, 0x72, 0x64, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68
	.byte 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0xD1, 0xFF, 0x19, 0x02, 0xC1, 0xF7, 0x19, 0x02
	.byte 0x39, 0xE9, 0x19, 0x02, 0x89, 0xEF, 0x19, 0x02, 0xA5, 0x03, 0x1A, 0x02, 0x45, 0xFB, 0x19, 0x02
	.byte 0x35, 0xED, 0x19, 0x02, 0x45, 0xF6, 0x19, 0x02, 0x4C, 0x32, 0x1A, 0x02, 0xD6, 0x32, 0x1A, 0x02
	.byte 0x4C, 0x32, 0x1A, 0x02, 0xD6, 0x32, 0x1A, 0x02, 0x7C, 0x31, 0x1A, 0x02, 0x84, 0x31, 0x1A, 0x02
	.byte 0xB4, 0x31, 0x1A, 0x02, 0xA4, 0x31, 0x1A, 0x02, 0x7E, 0x32, 0x1A, 0x02, 0x08, 0x32, 0x1A, 0x02
	.byte 0x9A, 0x32, 0x1A, 0x02, 0xFA, 0x32, 0x1A, 0x02, 0x8C, 0x31, 0x1A, 0x02, 0x8C, 0x31, 0x1A, 0x02
	.byte 0x8C, 0x31, 0x1A, 0x02, 0x8C, 0x31, 0x1A, 0x02, 0xAC, 0x31, 0x1A, 0x02, 0xAC, 0x31, 0x1A, 0x02
	.byte 0xAC, 0x31, 0x1A, 0x02, 0xAC, 0x31, 0x1A, 0x02, 0x74, 0x5F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F
	.byte 0x61, 0x64, 0x5F, 0x73, 0x61, 0x76, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x74, 0x5F, 0x64, 0x6F
	.byte 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A2D40
