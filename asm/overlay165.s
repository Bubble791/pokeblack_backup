    .include "macros/function.inc"
	.include "overlay165.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy165_2199a00
ovy165_2199a00: ; 0x02199A00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _02199A14
	cmp r0, #1
	beq _02199A3C
	b _02199A4A
_02199A14:
	mov r2, #3
	mov r0, #1
	mov r1, #0x17
	lsl r2, r2, #0x10
	mov r7, #1
	bl sub_0203A15C
	add r0, r6, #0
	mov r6, #0x29
	lsl r6, r6, #4
	add r1, r6, #0
	mov r2, #0x17
	bl sub_0203AAEC
	add r3, r0, #0
	mov r0, #0x17
	strh r0, [r3]
	sub r0, r6, #4
	str r4, [r3, r0]
	str r7, [r5]
_02199A3C:
	add r0, r3, #0
	bl ovy165_2199b88
	cmp r0, #1
	bne _02199A4A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02199A4A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_2199a00

	thumb_func_start ovy165_2199a50
ovy165_2199a50: ; 0x02199A50
	push {r4, lr}
	ldr r0, [r0]
	add r4, r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203A1D0
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_2199a50
_02199A64:
	.byte 0xF0, 0xB5, 0x83, 0xB0, 0x1E, 0x1C, 0x00, 0x90, 0x30, 0x1C, 0x14, 0x1C
	.byte 0x00, 0xF0, 0x9A, 0xF9, 0x00, 0x28, 0x02, 0xD1, 0x03, 0xB0, 0x00, 0x20, 0xF0, 0xBD, 0x00, 0x2C
	.byte 0x2C, 0xD1, 0xA3, 0x20, 0x80, 0x00, 0x00, 0x24, 0x37, 0x18, 0x0C, 0x20, 0x25, 0x1C, 0x45, 0x43
	.byte 0x38, 0x68, 0x40, 0x19, 0x80, 0x6F, 0x00, 0x28, 0x01, 0xD0, 0xA0, 0xF6, 0xD7, 0xFB, 0xA3, 0x20
	.byte 0x80, 0x00, 0x30, 0x58, 0x40, 0x19, 0xC0, 0x6F, 0x00, 0x28, 0x01, 0xD0, 0xA0, 0xF6, 0xCE, 0xFB
	.byte 0x60, 0x1C, 0x00, 0x06, 0x04, 0x0E, 0x03, 0x2C, 0xE7, 0xD3, 0xA3, 0x20, 0x80, 0x00, 0x30, 0x58
	.byte 0x40, 0x69, 0x00, 0x28, 0x01, 0xD0, 0xA0, 0xF6, 0xC1, 0xFB, 0xA3, 0x24, 0xA4, 0x00, 0x30, 0x59
	.byte 0x00, 0x68, 0xA0, 0xF6, 0xBB, 0xFB, 0x30, 0x59, 0xA0, 0xF6, 0xB8, 0xFB, 0x00, 0x98, 0xA1, 0xF6
	.byte 0x17, 0xF8, 0x17, 0x20, 0x02, 0x90, 0x01, 0x20, 0x01, 0x90, 0x0F, 0x4A, 0x25, 0x20, 0x00, 0x21
	.byte 0x20, 0x23, 0x15, 0x68, 0x1C, 0x1A, 0x2E, 0x1C, 0xC6, 0x40, 0xA5, 0x40, 0x34, 0x1C, 0x2C, 0x43
	.byte 0x61, 0x40, 0x12, 0x1D, 0x40, 0x1E, 0xF4, 0xD1, 0x08, 0x48, 0x81, 0x42, 0x05, 0xD1, 0x08, 0x48
	.byte 0x02, 0xA9, 0x01, 0xAA, 0x09, 0xF0, 0x08, 0xEC, 0x03, 0xE0, 0x00, 0x20, 0x00, 0x21, 0x09, 0xF0
	.byte 0x18, 0xEB, 0x00, 0x68, 0x03, 0xB0, 0xF0, 0xBD, 0x28, 0x33, 0x1A, 0x02, 0xD6, 0xA8, 0x75, 0x9F
	.byte 0x51, 0x9A, 0x19, 0x02

	thumb_func_start ovy165_2199b34
ovy165_2199b34: ; 0x02199B34
	push {r3, lr}
	cmp r2, #0
	bne _02199B72
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r0, #0
	add r1, #0xa0
	ldr r1, [r1]
	cmp r1, #1
	bne _02199B72
	add r1, r0, #0
	add r1, #0x70
	ldrh r1, [r1]
	cmp r1, #0
	beq _02199B72
	ldr r1, _02199B84 ; =0x021a4d40
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
	ldrb r2, [r1]
	cmp r2, #0x3c
	bls _02199B72
	mov r2, #0
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x70
	ldrh r1, [r1]
	add r0, #0x70
	sub r1, r1, #1
	strh r1, [r0]
_02199B72:
	add r0, r3, #0
	bl ovy165_2199e90
	cmp r0, #1
	bne _02199B80
	mov r0, #1
	pop {r3, pc}
_02199B80:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02199B84: .word 0x021a4d40
	thumb_func_end ovy165_2199b34

	thumb_func_start ovy165_2199b88
ovy165_2199b88: ; 0x02199B88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0xa3
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r0, [r0]
	bl sub_0201FDF8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	bl sub_0203D554
	mov r2, #0
	str r0, [r5, #8]
	mov r0, #9
	mov r1, #0x19
	mov r3, #0x19
	str r1, [r5, #0x40]
	strb r2, [r5, #0xc]
	strb r2, [r5, #0xe]
	str r2, [r5, #0x30]
	str r2, [r5, #0x3c]
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	str r2, [r5, #0x14]
	str r2, [r5, #0x10]
	add r3, #0xf0
	strb r2, [r5, r3]
	mov r3, #9
	add r3, #0xfb
	strb r2, [r5, r3]
	add r0, #0xfd
	strh r2, [r5, r0]
	mov r0, #0x19
	add r0, #0xfb
	mov r3, #0x49
	strh r2, [r5, r0]
	add r1, #0xff
	lsl r3, r3, #2
	strb r2, [r5, r1]
	add r0, r3, #0
	str r2, [r5, r3]
	add r0, #0x10
	str r2, [r5, r0]
	add r0, r3, #0
	add r0, #0xcc
	str r2, [r5, r0]
	add r0, r3, #0
	sub r0, #0x18
	str r2, [r5, r0]
	add r0, r3, #0
	sub r0, #0x14
	str r2, [r5, r0]
	add r0, r3, #0
	sub r0, #8
	str r2, [r5, r0]
	add r0, r4, #0
	sub r0, #0x18
	str r2, [r5, r0]
	add r0, r4, #0
	sub r0, #0x34
	str r2, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	str r2, [r5, r0]
	ldr r0, [r5, r4]
	add r3, #0x58
	add r0, #0x73
	strb r2, [r0]
	mov r0, #1
	str r0, [r5, #0x28]
	str r2, [r5, #0x24]
	sub r0, r0, #2
_02199C1C:
	lsl r1, r2, #2
	add r1, r5, r1
	str r0, [r1, r3]
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #0x17
	blo _02199C1C
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x44]
	cmp r0, #0x19
	bne _02199C3C
	mov r0, #1
	b _02199C3E
_02199C3C:
	mov r0, #0
_02199C3E:
	str r0, [r5, #0x1c]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x44]
	cmp r0, #0x1b
	bne _02199C50
	mov r0, #1
	b _02199C52
_02199C50:
	mov r0, #0
_02199C52:
	str r0, [r5, #0x2c]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x44]
	cmp r0, #0x18
	bne _02199C68
	mov r0, #3
	str r0, [r1, #0x44]
	mov r0, #1
	b _02199C6A
_02199C68:
	mov r0, #0
_02199C6A:
	str r0, [r5, #0x18]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x44]
	cmp r0, #0x1a
	bne _02199C7E
	mov r0, #1
	str r0, [r1, #0x44]
	b _02199C80
_02199C7E:
	mov r0, #0
_02199C80:
	mov r4, #0xa3
	str r0, [r5, #0x20]
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	ldr r0, [r1, #0x44]
	cmp r0, #6
	bne _02199CA6
	add r0, r1, #0
	add r0, #0x56
	ldrh r0, [r0]
	cmp r0, #0
	bne _02199CA6
	add r1, #0x54
	ldrh r0, [r1]
	bl sub_02026AE4
	ldr r1, [r5, r4]
	add r1, #0x56
	strh r0, [r1]
_02199CA6:
	add r0, r5, #0
	bl ovy165_219a340
	add r0, r5, #0
	bl ovy165_219a894
	add r0, r5, #0
	bl ovy165_219a7e0
	ldr r0, _02199DA0 ; =0x00000109
	mov r4, #0
	str r0, [sp, #8]
	add r0, #0x5b
	str r0, [sp, #8]
	ldr r0, _02199DA0 ; =0x00000109
	str r0, [sp, #4]
	add r0, #0x5b
	str r0, [sp, #4]
	ldr r0, _02199DA0 ; =0x00000109
	str r0, [sp, #0xc]
	add r0, #0x5b
	str r0, [sp, #0xc]
_02199CD2:
	cmp r4, r7
	bhs _02199CF6
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0201FF08
	add r2, r0, #0
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219E824
	ldr r1, [sp, #4]
	b _02199D04
_02199CF6:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219E82C
	ldr r1, [sp, #8]
_02199D04:
	str r0, [r6, r1]
	ldr r0, [sp, #0xc]
	ldr r0, [r6, r0]
	bl sub_0219F48C
	cmp r0, #5
	bgt _02199D1C
	ldr r0, _02199DA0 ; =0x00000109
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02199DA0 ; =0x00000109
	strb r1, [r5, r0]
_02199D1C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02199CD2
	ldrh r0, [r5]
	mov r3, #0x4f
	lsl r3, r3, #2
	str r0, [sp]
	ldr r2, [r5, r3]
	add r3, #8
	ldr r3, [r5, r3]
	mov r0, #0
	mov r1, #1
	bl sub_0202E168
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy165_219a64c
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _02199D58
	add r0, r5, #0
	bl ovy165_21a0d38
_02199D58:
	ldr r0, _02199DA4 ; =0x0219A315
	add r1, r5, #0
	mov r2, #8
	bl sub_020056FC
	str r0, [r5, #4]
	add r0, r5, #0
	bl ovy165_219f5ec
	mov r4, #0x55
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy165_219fae8
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy165_219ac94
	mov r0, #3
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	mov r0, #7
	bl sub_02045B7C
	ldrh r1, [r5]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02199DA0: .word 0x00000109
_02199DA4: .word 0x0219A315
	thumb_func_end ovy165_2199b88

	thumb_func_start ovy165_2199da8
ovy165_2199da8: ; 0x02199DA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0203A6A8
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _02199DD6
	mov r4, #0x43
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy165_219fec0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl ovy165_219fec0
	mov r1, #0
	str r1, [r5, r4]
	add r0, r4, #4
	str r1, [r5, r0]
_02199DD6:
	mov r4, #0x56
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219fb3c
	sub r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f654
	sub r4, #0x24
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _02199DF8
	bl sub_02048210
_02199DF8:
	mov r6, #0x59
	mov r4, #0
	lsl r6, r6, #2
_02199DFE:
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r1, [r1, r6]
	add r0, r5, #0
	bl ovy165_219e838
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02199DFE
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy165_219a864
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _02199E34
	add r0, r5, #0
	bl ovy165_21a0dec
_02199E34:
	add r0, r5, #0
	bl ovy165_219a7a4
	add r0, r5, #0
	bl ovy165_219ac20
	add r0, r5, #0
	bl ovy165_219a59c
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _02199E56
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	str r1, [r0, #0x44]
_02199E56:
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	bne _02199E66
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x19
	str r1, [r0, #0x44]
_02199E66:
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _02199E76
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1b
	str r1, [r0, #0x44]
_02199E76:
	ldr r0, [r5, #0x20]
	cmp r0, #1
	bne _02199E86
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	str r1, [r0, #0x44]
_02199E86:
	ldr r0, [r5, #8]
	bl sub_0203D564
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy165_2199da8

	thumb_func_start ovy165_2199e90
ovy165_2199e90: ; 0x02199E90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0x17
	bhi _02199F58
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02199EA8: ; jump table
	.short _02199ED8 - _02199EA8 - 2 ; case 0
	.short _02199EF4 - _02199EA8 - 2 ; case 1
	.short _02199F00 - _02199EA8 - 2 ; case 2
	.short _02199F00 - _02199EA8 - 2 ; case 3
	.short _02199F00 - _02199EA8 - 2 ; case 4
	.short _02199F06 - _02199EA8 - 2 ; case 5
	.short _02199F0C - _02199EA8 - 2 ; case 6
	.short _02199F12 - _02199EA8 - 2 ; case 7
	.short _0219A06A - _02199EA8 - 2 ; case 8
	.short _02199F18 - _02199EA8 - 2 ; case 9
	.short _02199F1E - _02199EA8 - 2 ; case 10
	.short _02199F42 - _02199EA8 - 2 ; case 11
	.short _02199F6C - _02199EA8 - 2 ; case 12
	.short _02199FF0 - _02199EA8 - 2 ; case 13
	.short _02199FF6 - _02199EA8 - 2 ; case 14
	.short _02199FFC - _02199EA8 - 2 ; case 15
	.short _0219A002 - _02199EA8 - 2 ; case 16
	.short _0219A008 - _02199EA8 - 2 ; case 17
	.short _0219A018 - _02199EA8 - 2 ; case 18
	.short _0219A048 - _02199EA8 - 2 ; case 19
	.short _0219A02A - _02199EA8 - 2 ; case 20
	.short _0219A05C - _02199EA8 - 2 ; case 21
	.short _02199F00 - _02199EA8 - 2 ; case 22
	.short _02199F00 - _02199EA8 - 2 ; case 23
_02199ED8:
	mov r0, #6
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r3, #0
	bl sub_020279B4
	strb r5, [r4, #0xc]
	b _0219A06A
_02199EF4:
	bl sub_02027ACC
	cmp r0, #1
	bne _02199F58
	ldrb r0, [r4, #0xd]
_02199EFE:
	b _0219A044
_02199F00:
	bl ovy165_219bb08
	b _0219A06A
_02199F06:
	bl ovy165_219d7ec
	b _0219A06A
_02199F0C:
	bl ovy165_219ce90
	b _0219A06A
_02199F12:
	bl ovy165_219d714
	b _0219A06A
_02199F18:
	bl ovy165_219d7a4
	b _0219A06A
_02199F1E:
	ldr r1, [r4, #0x30]
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl ovy165_219f35c
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _02199F3E
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, _0219A0D0 ; =0x0000056F
	bl sub_02006254
_02199F3E:
	mov r0, #0xb
	strb r0, [r4, #0xc]
_02199F42:
	ldr r1, [r4, #0x30]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	bl ovy165_219f3a8
	cmp r0, #1
	beq _02199F5A
_02199F58:
	b _0219A06A
_02199F5A:
	sub r5, #0x40
	ldr r1, [r4, r5]
	cmp r1, #0
	beq _02199F68
	add r0, r4, #0
	blx r1
	b _0219A06A
_02199F68:
	mov r0, #0x15
	b _02199EFE
_02199F6C:
	mov r5, #0x46
	lsl r5, r5, #2
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	ldrb r0, [r4, r5]
	cmp r0, #0x10
	bls _0219A06A
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	mov r1, #0
	mov r7, #0
	bl ovy165_219fee4
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _02199FEC
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r7, #0
	add r2, r7, #0
	bl sub_02199944
	cmp r0, #1
	bne _0219A06A
	mov r6, #0x11
	mov r0, #0x11
	strb r6, [r4, #0xc]
	add r0, #0xfb
	ldr r0, [r4, r0]
	bl ovy165_219fec0
	mov r0, #0x11
	add r0, #0xff
	ldr r0, [r4, r0]
	bl ovy165_219fec0
	mov r0, #0x11
	add r0, #0xfb
	str r7, [r4, r0]
	add r6, #0xff
	add r1, r5, #0
	str r7, [r4, r6]
	add r1, #0x3c
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, r7, #0
	bl ovy165_219f76c
	add r5, #0x3c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r5, #0xbc
	mov r2, #0xbc
	bl ovy165_219f840
	add r5, #0x98
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl sub_0219FAC4
	b _0219A06A
_02199FEC:
	mov r0, #0x13
	b _0219A044
_02199FF0:
	bl ovy165_21a073c
	b _0219A06A
_02199FF6:
	bl ovy165_21a1944
	b _0219A06A
_02199FFC:
	bl ovy165_21a1a04
	b _0219A06A
_0219A002:
	bl ovy165_21a1974
	b _0219A06A
_0219A008:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_021999A8
	mov r0, #0x12
	b _02199EFE
_0219A018:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_021999BC
	cmp r0, #1
	bne _0219A06A
	b _02199FEC
_0219A02A:
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
	mov r0, #0x15
_0219A044:
	strb r0, [r4, #0xc]
	b _0219A06A
_0219A048:
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219A05A
	bl sub_0204C560
	cmp r0, #0
	bne _0219A06A
_0219A05A:
	b _0219A02A
_0219A05C:
	bl sub_02027ACC
	cmp r0, #1
	bne _0219A06A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219A06A:
	mov r6, #0x59
	mov r5, #0
	lsl r6, r6, #2
_0219A070:
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, r6]
	add r0, r4, #0
	bl ovy165_219e874
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0219A070
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f69c
	add r0, r4, #0
	bl ovy165_219a0d4
	add r0, r4, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219A0BA
	add r0, r4, #0
	bl ovy165_21a0e54
	add r0, r5, #0
	sub r0, #0x48
	ldr r0, [r4, r0]
	bl ovy165_219fecc
	sub r5, #0x44
	ldr r0, [r4, r5]
	bl ovy165_219fecc
_0219A0BA:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021A3C
	bl sub_0204B794
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219A0D0: .word 0x0000056F
	thumb_func_end ovy165_2199e90

	thumb_func_start ovy165_219a0d4
ovy165_219a0d4: ; 0x0219A0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	ldr r1, [sp]
	add r0, #0x44
	add r1, #0xa4
	mov r2, #0x60
	mov r4, #0x60
	blx sub_0207863C
	mov r1, #0x60
	ldr r0, [sp]
	add r1, #0xa4
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0219A1A4
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xa4
	ldrb r0, [r0, r1]
	add r1, r4, #0
	add r1, #0xa4
	sub r2, r0, #1
	ldr r0, [sp]
	add r4, #0xa4
	strb r2, [r0, r1]
	ldrb r1, [r0, r4]
	cmp r1, #6
	bls _0219A116
	mov r0, #0xc
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_0219A116:
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r5, r1, #1
_0219A11C:
	ldr r0, [sp, #0xc]
	mov r2, #0
	lsl r1, r0, #5
	ldr r0, [sp]
	add r6, r0, r1
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x18]
_0219A12C:
	cmp r2, #2
	blo _0219A134
	cmp r2, #4
	bls _0219A18C
_0219A134:
	lsl r7, r2, #1
	add r0, r6, r7
	add r0, #0x44
	ldrh r1, [r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r1
	lsl r0, r0, #0x13
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x18]
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r5
	cmp r0, #0x1f
	ble _0219A160
	mov r0, #0x1f
_0219A160:
	lsl r0, r0, #0x18
	add r1, r3, r5
	lsr r0, r0, #0x18
	cmp r1, #0x1f
	ble _0219A16C
	mov r1, #0x1f
_0219A16C:
	lsl r1, r1, #0x18
	add r3, r4, r5
	lsr r1, r1, #0x18
	cmp r3, #0x1f
	ble _0219A178
	mov r3, #0x1f
_0219A178:
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r1, r1, #5
	lsl r3, r3, #0xa
	orr r0, r1
	add r1, r3, #0
	orr r1, r0
	add r0, r6, r7
	add r0, #0xa4
	strh r1, [r0]
_0219A18C:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0x10
	blo _0219A12C
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #3
	blo _0219A11C
_0219A1A4:
	ldr r0, _0219A304 ; =0x021A4B54
	add r1, sp, #0x1c
	ldrh r2, [r0]
	strh r2, [r1, #6]
	ldrh r2, [r0, #2]
	strh r2, [r1, #8]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0xa]
	ldr r0, _0219A308 ; =0x021A4B4C
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	ldr r0, [sp]
	ldr r1, _0219A30C ; =0x00000106
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0219A1E6
	ldr r0, [sp]
	ldrh r3, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, r0
	lsl r0, r0, #6
	cmp r2, r0
	blt _0219A1E4
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r2, r3, r0
	b _0219A1EA
_0219A1E4:
	b _0219A1EA
_0219A1E6:
	mov r2, #3
	lsl r2, r2, #0xe
_0219A1EA:
	ldr r0, [sp]
	strh r2, [r0, r1]
	ldr r1, _0219A30C ; =0x00000106
	ldr r0, [sp]
	ldrh r0, [r0, r1]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0219A310 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r4, r0, #1
	mov r0, #0
	str r0, [sp, #8]
_0219A20C:
	ldr r0, [sp, #8]
	mov r3, #0
	lsl r1, r0, #5
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x10]
_0219A224:
	add r0, sp, #0x20
	lsl r1, r3, #1
	add r0, #2
	ldrh r0, [r0, r1]
	add r5, sp, #0x1c
	ldrh r1, [r5, r1]
	mov r5, #0x3e
	lsl r5, r5, #4
	and r5, r0
	lsl r5, r5, #0x13
	lsr r7, r5, #0x18
	mov r5, #0x3e
	lsl r5, r5, #4
	and r5, r1
	lsl r5, r5, #0x13
	lsr r5, r5, #0x18
	sub r5, r5, r7
	mul r5, r4
	asr r5, r5, #0xc
	lsl r5, r5, #0x18
	asr r5, r5, #0x18
	mov r2, #0x1f
	str r5, [sp, #0x14]
	and r2, r0
	mov r5, ip
	and r0, r5
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x18
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r5
	mul r0, r4
	asr r0, r0, #0xc
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	mov r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r2, r2, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r2
	mul r0, r4
	asr r0, r0, #0xc
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	add r0, r2, r0
	cmp r0, #0x1f
	ble _0219A292
	mov r0, #0x1f
	b _0219A298
_0219A292:
	cmp r0, #0
	bge _0219A298
	mov r0, #0
_0219A298:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, r7, r0
	cmp r0, #0x1f
	ble _0219A2A8
	mov r0, #0x1f
	b _0219A2AE
_0219A2A8:
	cmp r0, #0
	bge _0219A2AE
	mov r0, #0
_0219A2AE:
	lsl r0, r0, #0x18
	add r2, r5, r6
	lsr r0, r0, #0x18
	cmp r2, #0x1f
	ble _0219A2BC
	mov r2, #0x1f
	b _0219A2C2
_0219A2BC:
	cmp r2, #0
	bge _0219A2C2
	mov r2, #0
_0219A2C2:
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r0, r0, #5
	orr r0, r1
	lsl r2, r2, #0xa
	orr r2, r0
	ldr r0, [sp, #4]
	lsl r1, r3, #1
	add r0, r0, r1
	add r0, #0xa8
	strh r2, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #3
	blo _0219A224
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #3
	blo _0219A20C
	ldr r2, [sp]
	mov r0, #0xf
	add r2, #0xa4
	mov r1, #0xc0
	mov r3, #0x60
	str r2, [sp]
	bl sub_0205FA10
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A304: .word 0x021A4B54
_0219A308: .word 0x021A4B4C
_0219A30C: .word 0x00000106
_0219A310: .word FX_SinCosTable_
	thumb_func_end ovy165_219a0d4
_0219A314:
	.byte 0x08, 0x69, 0x01, 0x28, 0x07, 0x48, 0x06, 0xD1, 0x01, 0x22, 0x92, 0x06
	.byte 0x11, 0x68, 0x01, 0x40, 0x50, 0x0B, 0x08, 0x43, 0x03, 0xE0, 0x01, 0x22, 0x92, 0x06, 0x11, 0x68
	.byte 0x08, 0x40, 0x10, 0x60, 0x01, 0x4B, 0x18, 0x47, 0xFF, 0x1F, 0xFF, 0xFF, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy165_219a340
ovy165_219a340: ; 0x0219A340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r4, _0219A484 ; =0x021A4BB0
	add r5, r0, #0
	add r3, sp, #0x20
	mov r2, #6
_0219A34C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219A34C
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219A368
	mov r0, #8
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x40]
	b _0219A36E
_0219A368:
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x38]
_0219A36E:
	bl sub_02046CF0
	bl sub_02046D78
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r1, [r4]
	ldr r0, _0219A488 ; =0xFFFFE0FF
	ldr r6, _0219A48C ; =0x04001000
	and r1, r0
	str r1, [r4]
	ldr r1, [r6]
	and r0, r1
	str r0, [r6]
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	mov r0, #0
	bl sub_02027B4C
	mov r0, #1
	bl sub_02027B4C
	ldr r2, _0219A490 ; =0x04000304
	ldr r0, _0219A494 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, sp, #0x20
	bl sub_02046C40
	ldrh r0, [r5]
	bl sub_020444A4
	ldrh r0, [r5]
	bl sub_02048080
	ldr r0, _0219A498 ; =0x021A4A10
	bl sub_02044710
	ldr r0, _0219A49C ; =0x021A4B0C
	mov r1, #3
	mov r2, #0
	bl ovy165_219a628
	ldr r0, _0219A4A0 ; =0x021A4AEC
	mov r1, #2
	mov r2, #0
	bl ovy165_219a628
	ldr r0, _0219A4A4 ; =0x021A4ACC
	mov r1, #1
	mov r2, #0
	bl ovy165_219a628
	ldr r0, _0219A4A8 ; =0x021A4A8C
	mov r1, #7
	mov r2, #0
	bl ovy165_219a628
	ldr r0, _0219A4AC ; =0x021A4A6C
	mov r1, #6
	mov r2, #0
	bl ovy165_219a628
	ldr r0, _0219A4B0 ; =0x021A4A4C
	mov r1, #5
	mov r2, #0
	bl ovy165_219a628
	ldr r0, _0219A4B4 ; =0x021A4B2C
	mov r1, #4
	mov r2, #0
	bl ovy165_219a628
	add r0, r5, #0
	bl ovy165_219a4bc
	add r4, #0x50
	mov r7, #0xa
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #8
	mov r3, #0x10
	str r7, [sp]
	mov r4, #8
	bl sub_02074A6C
	add r6, #0x50
	add r0, r6, #0
	mov r1, #4
	add r2, r4, #0
	mov r3, #0x10
	str r7, [sp]
	bl sub_02074A6C
	mov r0, #2
	mov r1, #0
	mov r2, #0x80
	bl sub_02044CFC
	mov r0, #1
	mov r1, #0
	mov r2, #0x80
	bl sub_02044CFC
	ldr r4, _0219A4B8 ; =0x02093F08
	add r3, sp, #4
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, sp, #0x20
	str r0, [r3]
	add r0, r2, #0
	ldrh r2, [r5]
	bl sub_0204B6A8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	bl sub_0205F9C0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A484: .word 0x021A4BB0
_0219A488: .word 0xFFFFE0FF
_0219A48C: .word 0x04001000
_0219A490: .word 0x04000304
_0219A494: .word 0xFFFF7FFF
_0219A498: .word 0x021A4A10
_0219A49C: .word 0x021A4B0C
_0219A4A0: .word 0x021A4AEC
_0219A4A4: .word 0x021A4ACC
_0219A4A8: .word 0x021A4A8C
_0219A4AC: .word 0x021A4A6C
_0219A4B0: .word 0x021A4A4C
_0219A4B4: .word 0x021A4B2C
_0219A4B8: .word 0x02093F08
	thumb_func_end ovy165_219a340

	thumb_func_start ovy165_219a4bc
ovy165_219a4bc: ; 0x0219A4BC
	push {r3, lr}
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl GX_SetGraphicsMode
	ldr r0, _0219A4D4 ; =0x021A4AAC
	mov r1, #0
	mov r2, #0
	bl ovy165_219a628
	pop {r3, pc}
	.align 2, 0
_0219A4D4: .word 0x021A4AAC
	thumb_func_end ovy165_219a4bc

	thumb_func_start ovy165_219a4d8
ovy165_219a4d8: ; 0x0219A4D8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #1
	mov r6, #0
	mov r1, #0
	mov r2, #1
	bl GX_SetGraphicsMode
	str r6, [sp]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #1
	str r6, [sp, #8]
	bl sub_02048D28
	ldr r4, _0219A580 ; =0x04000008
	mov r0, #3
	ldrh r1, [r4]
	ldr r2, _0219A584 ; =0xFFFFCFFF
	bic r1, r0
	add r0, r4, #0
	add r0, #0x58
	strh r1, [r4]
	ldrh r1, [r0]
	add r3, r1, #0
	and r3, r2
	mov r1, #0x20
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	add r3, r1, #0
	and r3, r2
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r2, r1
	mov r1, #8
	orr r2, r1
	strh r2, [r0]
	ldr r0, _0219A588 ; =0x00006BCA
	ldr r2, _0219A58C ; =0x000050D7
	str r0, [sp]
	lsl r0, r1, #9
	str r0, [sp, #4]
	lsl r0, r1, #0x10
	str r0, [sp, #8]
	ldr r0, _0219A590 ; =0x021A49EC
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219A594 ; =0x021A49F8
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r0, _0219A598 ; =0x021A4A04
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0204A5C8
	mov r1, #0x26
	lsl r1, r1, #4
	str r0, [r5, r1]
	bl sub_0204A638
	mov r0, #0xa
	add r4, #0x48
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x1e
	mov r3, #0x10
	bl sub_02074A6C
	ldrh r0, [r5]
	bl sub_0204F918
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219A580: .word 0x04000008
_0219A584: .word 0xFFFFCFFF
_0219A588: .word 0x00006BCA
_0219A58C: .word 0x000050D7
_0219A590: .word 0x021A49EC
_0219A594: .word 0x021A49F8
_0219A598: .word 0x021A4A04
	thumb_func_end ovy165_219a4d8

	thumb_func_start ovy165_219a59c
ovy165_219a59c: ; 0x0219A59C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F9C0
	bl sub_0204B758
	add r0, r4, #0
	bl sub_0219A5E4
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219a59c

	thumb_func_start sub_0219A5E4
sub_0219A5E4: ; 0x0219A5E4
	ldr r3, _0219A5EC ; =sub_02044B84
	mov r0, #0
	bx r3
	nop
_0219A5EC: .word sub_02044B84
	thumb_func_end sub_0219A5E4

	thumb_func_start ovy165_219a5f0
ovy165_219a5f0: ; 0x0219A5F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0204FB4C
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0204A630
	bl sub_02048F44
	mov r0, #0
	bl sub_02044B84
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0219A624 ; =0x04000050
	mov r1, #0x14
	mov r2, #8
	mov r3, #0x10
	bl sub_02074A6C
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219A624: .word 0x04000050
	thumb_func_end ovy165_219a5f0

	thumb_func_start ovy165_219a628
ovy165_219a628: ; 0x0219A628
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl sub_02044F90
	pop {r4, pc}
	thumb_func_end ovy165_219a628

	thumb_func_start ovy165_219a64c
ovy165_219a64c: ; 0x0219A64C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldrh r2, [r5]
	mov r0, #0xa
	mov r1, #8
	mov r7, #0xa
	bl sub_0204BF1C
	mov r4, #0x76
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl sub_0204C028
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	add r6, sp, #0xc
	mov r0, #0
	strh r0, [r6, #8]
	strh r0, [r6, #0xa]
	strh r0, [r6, #0xc]
	strb r7, [r6, #0xe]
	mov r0, #3
	strb r0, [r6, #0xf]
	add r7, sp, #0x14
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	sub r1, #0x3c
	sub r2, #0x5c
	str r0, [sp, #8]
	sub r3, #0x20
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #4
	str r0, [r5, r1]
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	sub r1, #0x3c
	sub r2, #0x5c
	str r0, [sp, #8]
	sub r3, #0x20
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r7, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	mov r3, #0xe0
	strh r3, [r6]
	mov r2, #0xa8
	strh r2, [r6, #2]
	mov r1, #0xa8
	strh r7, [r6, #4]
	mov r0, #0
	strb r0, [r6, #6]
	strb r0, [r6, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xfc
	add r2, #0xd8
	str r0, [sp, #8]
	add r3, #0xe0
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	mov r7, #0xcc
	mov r1, #0xcc
	mov r2, #0xcc
	mov r3, #0xcc
	strh r7, [r6]
	mov r0, #0
	strh r0, [r6, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xd8
	add r2, #0xb4
	str r0, [sp, #8]
	add r3, #0xf4
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x10
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0xac
	strh r0, [r6, #2]
	mov r1, #0xb8
	strh r1, [r6]
	mov r2, #6
	strh r2, [r6, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xec
	lsl r2, r2, #6
	str r0, [sp, #8]
	add r7, #0xf4
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r7]
	bl sub_0204C040
	add r4, #0x14
	mov r1, #1
	str r0, [r5, r4]
	bl sub_0204C520
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219a64c

	thumb_func_start ovy165_219a7a4
ovy165_219a7a4: ; 0x0219A7A4
	push {r3, r4, r5, lr}
	mov r4, #0x79
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204C108
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204C108
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_0204C108
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	sub r4, #0xc
	ldr r0, [r5, r4]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219a7a4

	thumb_func_start ovy165_219a7e0
ovy165_219a7e0: ; 0x0219A7E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	mov r4, #0x4f
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r7, #3
	bl sub_02022D58
	add r1, r4, #4
	str r0, [r5, r1]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0xb2
	mov r6, #0xb2
	bl sub_0204875C
	mov r1, #0xb2
	add r1, #0x86
	str r0, [r5, r1]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	add r4, #0x84
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B0B8
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r4, #0
	bl sub_0204B0B8
	ldrh r1, [r5]
	lsl r0, r7, #0xb
	bl sub_020219A8
	add r6, #0x92
	str r0, [r5, r6]
	bl sub_020232D8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219a7e0

	thumb_func_start ovy165_219a864
ovy165_219a864: ; 0x0219A864
	push {r3, r4, r5, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_02021C44
	ldr r0, [r5, r4]
	bl sub_02021A18
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_020487D4
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02022DA8
	sub r4, #8
	ldr r0, [r5, r4]
	bl sub_02022DA8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219a864

	thumb_func_start ovy165_219a894
ovy165_219a894: ; 0x0219A894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x4b
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #6
	add r4, r0, #0
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r6, #0x1a
	lsl r6, r6, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x14
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xc
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	ldrh r0, [r5]
	add r3, r6, #0
	sub r3, #0x40
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	add r3, r5, r3
	bl sub_0204B32C
	add r1, r6, #0
	sub r1, #0x44
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	mov r7, #4
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xe
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x13
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204BBB8
	add r1, r6, #0
	sub r1, #0x24
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #0xb
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B81C
	sub r1, r6, #4
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, r6]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x1a
	bl sub_0204BDE0
	add r1, r6, #0
	add r1, #0x18
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #0x19
	bl sub_0204BDE0
	add r1, r6, #0
	add r1, #0x1c
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0204AB0C
	ldrh r1, [r5]
	mov r0, #7
	bl sub_0204AA30
	add r7, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5]
	mov r3, #0xc0
	str r3, [sp, #0xc]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0xc0
	bl sub_0204BC48
	mov r1, #0xc0
	add r1, #0xd4
	str r0, [r5, r1]
	bl sub_0202111C
	str r0, [sp, #0x10]
	bl sub_02021190
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl sub_0204BDE0
	add r1, r6, #0
	add r1, #0x34
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0204AB0C
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r7, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r3, #0xc0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, #0xa0
	bl sub_0204B0D4
	bl sub_0202D824
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204ADA8
	bl sub_0202D82C
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204AF50
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x40
	bl sub_0204566C
	bl sub_0202D954
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0xa0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r4, #0xa0
	bl sub_0204BBB8
	mov r1, #0xa0
	add r1, #0xf0
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D958
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, [sp, #0xc]
	add r1, #0xf4
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D95C
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_0202D960
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_0204BDE0
	add r1, r6, #0
	add r1, #0x30
	str r0, [r5, r1]
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r3, #0xa0
	mov r2, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, #0x80
	bl sub_0204BBB8
	mov r1, #0xa0
	add r1, #0xe0
	str r0, [r5, r1]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, [sp, #0xc]
	add r1, #0xe4
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0x18]
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl sub_0204BDE0
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	bl sub_0202D890
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0x60
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0204BBB8
	mov r1, #0xa0
	add r1, #0xe4
	str r0, [r5, r1]
	bl sub_0202D894
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, [sp, #0xc]
	add r1, #0xe8
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D898
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0202D89C
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl sub_0204BDE0
	add r1, r6, #0
	add r1, #0x24
	str r0, [r5, r1]
	bl sub_0202D8B0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0x80
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0204BBB8
	add r4, #0xec
	str r0, [r5, r4]
	bl sub_0202D8B4
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, [sp, #0xc]
	add r1, #0xf0
	str r0, [r5, r1]
	mov r0, #2
	str r1, [sp, #0xc]
	bl sub_0202D8B8
	add r4, r0, #0
	mov r0, #2
	bl sub_0202D8BC
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0204BDE0
	add r6, #0x2c
	str r0, [r5, r6]
	add r0, r7, #0
	bl sub_0204AB0C
	add r5, #0x44
	ldr r0, _0219AC1C ; =0x050000C0
	add r1, r5, #0
	mov r2, #0x60
	blx sub_0207863C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AC1C: .word 0x050000C0
	thumb_func_end ovy165_219a894

	thumb_func_start ovy165_219ac20
ovy165_219ac20: ; 0x0219AC20
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x57
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_0203A24C
	mov r4, #0
	add r6, #0x20
	sub r7, r4, #1
_0219AC34:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, r7
	beq _0219AC42
	bl sub_0204BCD0
_0219AC42:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0219AC34
	mov r4, #8
	mov r7, #0x5f
	add r6, r4, #0
	lsl r7, r7, #2
	sub r6, #9
_0219AC56:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _0219AC64
	bl sub_0204B98C
_0219AC64:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xf
	blo _0219AC56
	mov r4, #0xf
	mov r7, #0x5f
	add r6, r4, #0
	lsl r7, r7, #2
	sub r6, #0x10
_0219AC78:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _0219AC86
	bl sub_0204BE64
_0219AC86:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x17
	blo _0219AC78
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219ac20

	thumb_func_start ovy165_219ac94
ovy165_219ac94: ; 0x0219AC94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0xa3
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	ldr r2, [r1, #0x44]
	cmp r2, #0x1b
	bls _0219ACA8
	b _0219B17E
_0219ACA8:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219ACB4: ; jump table
	.short _0219AD52 - _0219ACB4 - 2 ; case 0
	.short _0219ACEC - _0219ACB4 - 2 ; case 1
	.short _0219B17E - _0219ACB4 - 2 ; case 2
	.short _0219AD5E - _0219ACB4 - 2 ; case 3
	.short _0219B17E - _0219ACB4 - 2 ; case 4
	.short _0219AD6E - _0219ACB4 - 2 ; case 5
	.short _0219AD52 - _0219ACB4 - 2 ; case 6
	.short _0219AE5E - _0219ACB4 - 2 ; case 7
	.short _0219AE5E - _0219ACB4 - 2 ; case 8
	.short _0219AD52 - _0219ACB4 - 2 ; case 9
	.short _0219AF02 - _0219ACB4 - 2 ; case 10
	.short _0219B04C - _0219ACB4 - 2 ; case 11
	.short _0219B04C - _0219ACB4 - 2 ; case 12
	.short _0219B17E - _0219ACB4 - 2 ; case 13
	.short _0219AD52 - _0219ACB4 - 2 ; case 14
	.short _0219B17E - _0219ACB4 - 2 ; case 15
	.short _0219AD52 - _0219ACB4 - 2 ; case 16
	.short _0219B17E - _0219ACB4 - 2 ; case 17
	.short _0219AD52 - _0219ACB4 - 2 ; case 18
	.short _0219B17E - _0219ACB4 - 2 ; case 19
	.short _0219B17E - _0219ACB4 - 2 ; case 20
	.short _0219AD52 - _0219ACB4 - 2 ; case 21
	.short _0219AD14 - _0219ACB4 - 2 ; case 22
	.short _0219AD14 - _0219ACB4 - 2 ; case 23
	.short _0219B17E - _0219ACB4 - 2 ; case 24
	.short _0219AD52 - _0219ACB4 - 2 ; case 25
	.short _0219B17E - _0219ACB4 - 2 ; case 26
	.short _0219AD52 - _0219ACB4 - 2 ; case 27
_0219ACEC:
	mov r1, #0x15
	str r1, [sp]
	mov r2, #0
	mov r1, #0x56
	str r2, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r5, #0x16
	mov r3, #0x16
	bl ovy165_219fe68
	add r5, #0xf6
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy165_219b19c
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_0219AD14:
	mov r5, #0x15
	mov r6, #0x56
	str r5, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	mov r3, #0xc
	bl ovy165_219fe68
	add r1, r6, #0
	sub r1, #0x4c
	str r0, [r4, r1]
	str r5, [sp]
	mov r2, #1
	str r2, [sp, #4]
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r5, #0x16
	mov r3, #0x16
	bl ovy165_219fe68
	add r5, #0xfa
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy165_219b19c
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_0219AD52:
	bl ovy165_219b19c
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_0219AD5E:
	mov r1, #0
	str r1, [r4, #0x14]
	bl ovy165_219b19c
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_0219AD6E:
	add r1, #0x54
	ldrh r1, [r1]
	bl ovy165_21a0230
	cmp r0, #1
	bne _0219ADF6
	add r0, r4, #0
	bl ovy165_21a024c
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0219ADE4
	str r1, [r4, #0x30]
	ldr r0, [r4, r5]
	ldr r0, [r0]
	bl sub_0201FF08
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #0
	mov r6, #0
	bl ovy165_21a03bc
	ldr r3, [r4, r5]
	ldrh r0, [r4]
	add r1, r3, #0
	add r1, #0x54
	str r0, [sp]
	add r3, #0x40
	ldrh r1, [r1]
	ldrh r3, [r3]
	ldr r0, [r4, #0x3c]
	mov r2, #0
	bl ovy165_21a2928
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl ovy165_219f310
	mov r0, #1
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	strb r6, [r4, #0xc]
	ldr r1, [r4, r5]
	add r0, r4, #0
	add r1, #0x54
	ldrh r1, [r1]
	bl ovy165_219e648
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219ADE4:
	add r0, r4, #0
	bl sub_021A038C
	ldrb r0, [r4, #0xc]
	add sp, #8
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0219ADF6:
	ldr r1, [r4, r5]
	add r0, r4, #0
	add r1, #0x54
	ldrh r1, [r1]
	bl sub_0219E634
	cmp r0, #0
	beq _0219AE14
	add r0, r4, #0
	bl ovy165_219b19c
	mov r0, #2
	add sp, #8
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6, r7, pc}
_0219AE14:
	mov r6, #0x55
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f7fc
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r3, [r4, r5]
	ldr r1, [r4, r6]
	add r3, #0x54
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #0
	mov r7, #0
	bl sub_0219FA08
	ldr r3, _0219B184 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0xbf
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	ldrb r0, [r4, #0xc]
	add sp, #8
	strb r0, [r4, #0xd]
	strb r7, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0219AE5E:
	ldr r0, [r1, #0x4c]
	str r0, [r4, #0x30]
	ldr r0, [r1]
	ldr r1, [r1, #0x4c]
	bl sub_0201FF08
	str r0, [r4, #0x3c]
	ldr r1, [r4, r5]
	add r1, #0x58
	ldrb r1, [r1]
	cmp r1, #4
	bhs _0219AEB0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	mov r6, #0x55
	lsl r6, r6, #2
	add r5, r0, #0
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	lsl r3, r5, #0x10
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0219FA28
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	ldr r3, _0219B188 ; =ovy165_219dfd8
	b _0219AED4
_0219AEB0:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r3, [r4, r5]
	ldr r1, [r4, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219B18C ; =0x0219DF09
	add r0, r4, #0
	mov r1, #0x24
	mov r2, #0
_0219AED4:
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	ldr r1, [r4, #0x30]
	mov r0, #7
	lsl r1, r1, #2
	strb r0, [r4, #0xd]
	mov r0, #0
	add r2, r4, r1
	mov r1, #0x59
	strb r0, [r4, #0xc]
	str r0, [r4, #0x14]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	mov r2, #1
	bl ovy165_219efc8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219AF02:
	ldr r0, [r1, #0x4c]
	str r0, [r4, #0x30]
	ldr r0, [r1]
	ldr r1, [r1, #0x4c]
	bl sub_0201FF08
	str r0, [r4, #0x3c]
	ldr r2, [r4, r5]
	add r1, r2, #0
	add r1, #0x54
	ldrh r1, [r1]
	cmp r1, #0
	bne _0219AF2C
	mov r0, #0
	str r0, [r2, #0x44]
	add r0, r4, #0
	bl ovy165_219b19c
	mov r0, #2
	strb r0, [r4, #0xd]
	b _0219B02A
_0219AF2C:
	mov r1, #6
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	add r6, r0, #0
	bne _0219AFF0
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_219e5fc
	ldr r1, [r4, #0x30]
	mov r6, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r6, r6, #2
	ldr r1, [r1, r6]
	add r0, r4, #0
	bl ovy165_219f310
	add r1, r6, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	add r1, r6, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0219F9F8
	ldr r3, [r4, r5]
	sub r6, #0x10
	add r3, #0x54
	ldr r1, [r4, r6]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	mov r6, #1
	bl sub_0219FA08
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_21a02c8
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_21a0304
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a2018
	cmp r0, #1
	bne _0219AFCC
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a205c
	ldr r3, _0219B190 ; =ovy165_219e4b8
	add r0, r4, #0
	mov r1, #0x5c
	add r2, r6, #0
	bl ovy165_219d74c
	sub r5, #0x18
	str r6, [r4, r5]
	b _0219AFD8
_0219AFCC:
	ldr r3, _0219B194 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x5c
	add r2, r6, #0
	bl ovy165_219d74c
_0219AFD8:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9e8
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0x44]
	b _0219B02A
_0219AFF0:
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r5]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0219F9F8
	lsl r3, r6, #0x10
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0219FA18
	ldr r3, _0219B198 ; =0x0219E06D
	add r0, r4, #0
	mov r1, #0x3b
	add r2, r7, #0
	bl ovy165_219d74c
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9e8
_0219B02A:
	ldr r1, [r4, #0x30]
	mov r0, #7
	lsl r1, r1, #2
	strb r0, [r4, #0xd]
	mov r0, #0
	mov r2, #1
	add r3, r4, r1
	mov r1, #0x59
	strb r0, [r4, #0xc]
	str r2, [r4, #0x14]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r0, r4, #0
	bl ovy165_219efc8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219B04C:
	ldr r0, [r1, #0x4c]
	str r0, [r4, #0x30]
	ldr r0, [r1]
	ldr r1, [r1, #0x4c]
	bl sub_0201FF08
	mov r1, #6
	mov r2, #0
	str r0, [r4, #0x3c]
	bl sub_0201CCF8
	mov r1, #0x55
	lsl r1, r1, #2
	add r7, r0, #0
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	cmp r7, #0
	bne _0219B092
	mov r1, #0x5c
	add r1, #0xf8
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	mov r6, #0x5c
	bl sub_0219F9F8
	mov r1, #0x5c
	add r1, #0xf8
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r2, #1
	b _0219B0C0
_0219B092:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	mov r6, #0x41
	bl sub_0219F9F8
	mov r1, #0x55
	lsl r1, r1, #2
	lsl r3, r7, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0219FA08
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #2
_0219B0C0:
	ldr r3, [r4, r5]
	add r3, #0x54
	ldrh r3, [r3]
	bl sub_0219FA08
	mov r5, #0xa3
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_219e5fc
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl ovy165_219f310
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_21a02c8
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_21a0304
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a207c
	cmp r0, #1
	bne _0219B132
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a20c0
	ldr r3, _0219B190 ; =ovy165_219e4b8
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy165_219d74c
	mov r0, #2
	sub r5, #0x18
	str r0, [r4, r5]
	b _0219B150
_0219B132:
	ldr r0, [r4, r5]
	ldr r0, [r0, #0x44]
	cmp r0, #0xb
	bne _0219B144
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	ldr r3, _0219B184 ; =0x0219DE11
	b _0219B14C
_0219B144:
	ldr r3, _0219B194 ; =ovy165_219ddf4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
_0219B14C:
	bl ovy165_219d74c
_0219B150:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9e8
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x44]
	cmp r0, #0xb
	bne _0219B16E
	mov r0, #0xa
	str r0, [r1, #0x50]
	b _0219B172
_0219B16E:
	mov r0, #0
	str r0, [r1, #0x44]
_0219B172:
	mov r0, #7
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x14]
_0219B17E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B184: .word 0x0219DE11
_0219B188: .word ovy165_219dfd8
_0219B18C: .word 0x0219DF09
_0219B190: .word ovy165_219e4b8
_0219B194: .word ovy165_219ddf4
_0219B198: .word 0x0219E06D
	thumb_func_end ovy165_219ac94

	thumb_func_start ovy165_219b19c
ovy165_219b19c: ; 0x0219B19C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	mov r5, #0
	bl sub_02044F90
	mov r6, #0xa3
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	ldr r0, [r0, #0x44]
	cmp r0, #0x1b
	bls _0219B1B6
	b _0219B2C2
_0219B1B6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B1C2: ; jump table
	.short _0219B1FA - _0219B1C2 - 2 ; case 0
	.short _0219B218 - _0219B1C2 - 2 ; case 1
	.short _0219B2C2 - _0219B1C2 - 2 ; case 2
	.short _0219B288 - _0219B1C2 - 2 ; case 3
	.short _0219B2C2 - _0219B1C2 - 2 ; case 4
	.short _0219B224 - _0219B1C2 - 2 ; case 5
	.short _0219B258 - _0219B1C2 - 2 ; case 6
	.short _0219B2C2 - _0219B1C2 - 2 ; case 7
	.short _0219B2C2 - _0219B1C2 - 2 ; case 8
	.short _0219B242 - _0219B1C2 - 2 ; case 9
	.short _0219B2C2 - _0219B1C2 - 2 ; case 10
	.short _0219B2C2 - _0219B1C2 - 2 ; case 11
	.short _0219B2C2 - _0219B1C2 - 2 ; case 12
	.short _0219B2C2 - _0219B1C2 - 2 ; case 13
	.short _0219B242 - _0219B1C2 - 2 ; case 14
	.short _0219B2C2 - _0219B1C2 - 2 ; case 15
	.short _0219B224 - _0219B1C2 - 2 ; case 16
	.short _0219B2C2 - _0219B1C2 - 2 ; case 17
	.short _0219B26E - _0219B1C2 - 2 ; case 18
	.short _0219B2C2 - _0219B1C2 - 2 ; case 19
	.short _0219B2C2 - _0219B1C2 - 2 ; case 20
	.short _0219B29E - _0219B1C2 - 2 ; case 21
	.short _0219B222 - _0219B1C2 - 2 ; case 22
	.short _0219B222 - _0219B1C2 - 2 ; case 23
	.short _0219B2C2 - _0219B1C2 - 2 ; case 24
	.short _0219B288 - _0219B1C2 - 2 ; case 25
	.short _0219B2C2 - _0219B1C2 - 2 ; case 26
	.short _0219B29E - _0219B1C2 - 2 ; case 27
_0219B1FA:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #9
	bl ovy165_219f840
	mov r0, #1
	str r0, [r4, #0x14]
	b _0219B2C2
_0219B218:
	add r0, r4, #0
	bl ovy165_21a1558
	sub r6, #0xa8
	b _0219B2B8
_0219B222:
	b _0219B2C0
_0219B224:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #0xd
_0219B238:
	bl ovy165_219f840
	str r5, [r4, #0x14]
	str r5, [r4, #0x28]
	b _0219B2C2
_0219B242:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	add r0, r4, #0
	ldr r1, [r4, r6]
	mov r2, #0xc
	b _0219B238
_0219B258:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	add r0, r4, #0
	ldr r1, [r4, r6]
	mov r2, #0xe
	b _0219B238
_0219B26E:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #0x10
_0219B282:
	bl ovy165_219f840
	b _0219B2C0
_0219B288:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	add r0, r4, #0
	ldr r1, [r4, r6]
	mov r2, #9
	b _0219B282
_0219B29E:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219f76c
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #0xaf
	bl ovy165_219f840
	add r6, #0x90
_0219B2B8:
	ldr r0, [r4, r6]
	add r1, r5, #0
	bl sub_0204C124
_0219B2C0:
	str r5, [r4, #0x14]
_0219B2C2:
	add r0, r4, #0
	bl ovy165_219bb68
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy165_219b19c

	thumb_func_start ovy165_219b2cc
ovy165_219b2cc: ; 0x0219B2CC
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0xa3
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	add r1, r2, #0
	add r1, #0x73
	ldrb r1, [r1]
	cmp r1, #1
	bne _0219B2E6
	mov r0, #0x13
	strb r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0219B2E6:
	ldr r1, [r2, #0x44]
	cmp r1, #0x1b
	bls _0219B2EE
	b _0219B898
_0219B2EE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219B2FA: ; jump table
	.short _0219B332 - _0219B2FA - 2 ; case 0
	.short _0219B332 - _0219B2FA - 2 ; case 1
	.short _0219B898 - _0219B2FA - 2 ; case 2
	.short _0219B888 - _0219B2FA - 2 ; case 3
	.short _0219B898 - _0219B2FA - 2 ; case 4
	.short _0219B344 - _0219B2FA - 2 ; case 5
	.short _0219B748 - _0219B2FA - 2 ; case 6
	.short _0219B898 - _0219B2FA - 2 ; case 7
	.short _0219B898 - _0219B2FA - 2 ; case 8
	.short _0219B58E - _0219B2FA - 2 ; case 9
	.short _0219B898 - _0219B2FA - 2 ; case 10
	.short _0219B898 - _0219B2FA - 2 ; case 11
	.short _0219B898 - _0219B2FA - 2 ; case 12
	.short _0219B898 - _0219B2FA - 2 ; case 13
	.short _0219B6CA - _0219B2FA - 2 ; case 14
	.short _0219B898 - _0219B2FA - 2 ; case 15
	.short _0219B554 - _0219B2FA - 2 ; case 16
	.short _0219B898 - _0219B2FA - 2 ; case 17
	.short _0219B332 - _0219B2FA - 2 ; case 18
	.short _0219B898 - _0219B2FA - 2 ; case 19
	.short _0219B898 - _0219B2FA - 2 ; case 20
	.short _0219B332 - _0219B2FA - 2 ; case 21
	.short _0219B332 - _0219B2FA - 2 ; case 22
	.short _0219B332 - _0219B2FA - 2 ; case 23
	.short _0219B898 - _0219B2FA - 2 ; case 24
	.short _0219B332 - _0219B2FA - 2 ; case 25
	.short _0219B898 - _0219B2FA - 2 ; case 26
	.short _0219B888 - _0219B2FA - 2 ; case 27
_0219B332:
	bl ovy165_219ceec
	mov r0, #0
	bl sub_02044F90
	add r0, r4, #0
	bl ovy165_219b8b0
	pop {r3, r4, r5, r6, r7, pc}
_0219B344:
	add r2, #0x54
	ldrh r1, [r2]
	bl ovy165_21a01f8
	cmp r0, #1
	bne _0219B35E
	add r0, r4, #0
	bl ovy165_219ceec
	add r0, r4, #0
	bl ovy165_219b8b0
	pop {r3, r4, r5, r6, r7, pc}
_0219B35E:
	ldr r1, [r4, r5]
	ldrh r3, [r4]
	add r1, #0x54
	ldrh r1, [r1]
	ldr r0, [r4, #0x3c]
	mov r2, #0
	mov r7, #0
	bl ovy165_21a23e8
	cmp r0, #1
	bne _0219B406
	add r0, r4, #0
	add r1, r7, #0
	bl ovy165_21a03bc
	add r6, r0, #0
	ldr r3, [r4, r5]
	ldrh r0, [r4]
	add r1, r3, #0
	add r1, #0x54
	str r0, [sp]
	add r3, #0x40
	ldrh r1, [r1]
	ldrh r3, [r3]
	ldr r0, [r4, #0x3c]
	add r2, r7, #0
	bl ovy165_21a2928
	cmp r6, #2
	bne _0219B3BC
	cmp r0, #0
	beq _0219B3A4
	mov r0, #9
	bl sub_02038BC8
_0219B3A4:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x3c]
	mov r3, #0
	bl ovy165_219f250
	b _0219B3F4
_0219B3BC:
	cmp r6, #0x13
	beq _0219B3C4
	cmp r6, #0xd
	bne _0219B3DC
_0219B3C4:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x3c]
	mov r3, #0
	bl ovy165_219f250
	b _0219B3EE
_0219B3DC:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl ovy165_219f310
_0219B3EE:
	ldr r0, _0219B72C ; =0x0000056F
	bl sub_02006254
_0219B3F4:
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r1, #0x54
	ldrh r1, [r1]
	bl ovy165_219e648
	pop {r3, r4, r5, r6, r7, pc}
_0219B406:
	ldr r0, [r4, r5]
	add r0, #0x54
	ldrh r1, [r0]
	add r0, r5, #0
	sub r0, #0xba
	cmp r1, r0
	bne _0219B43A
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a20e0
	cmp r0, #1
	bne _0219B43A
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a2178
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	mov r0, #0xe
	strb r0, [r4, #0xc]
	mov r0, #3
	sub r5, #0x18
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B43A:
	mov r5, #0xa3
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	add r0, #0x54
	ldrh r1, [r0]
	add r0, r5, #0
	sub r0, #0xe
	cmp r1, r0
	bne _0219B482
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a2384
	cmp r0, #1
	bne _0219B482
	ldr r2, [r4, r5]
	mov r1, #6
	ldr r0, [r2, #0x24]
	ldr r2, [r2, #0x28]
	mov r6, #6
	bl sub_021659B4
	cmp r0, #1
	bne _0219B482
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a23b4
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	mov r0, #0xe
	strb r0, [r4, #0xc]
	sub r5, #0x18
	str r6, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B482:
	mov r5, #0xa3
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	add r0, #0x54
	ldrh r1, [r0]
	add r0, r5, #0
	sub r0, #0x18
	cmp r1, r0
	bne _0219B500
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a2198
	cmp r0, #2
	beq _0219B4A4
	cmp r0, #4
	bne _0219B4AC
_0219B4A4:
	add r0, r4, #0
	bl sub_021A039C
	pop {r3, r4, r5, r6, r7, pc}
_0219B4AC:
	cmp r0, #3
	bne _0219B4BA
	add r0, r4, #0
	mov r1, #1
	bl sub_021A03AC
	pop {r3, r4, r5, r6, r7, pc}
_0219B4BA:
	cmp r0, #0
	beq _0219B4C0
	b _0219B8A4
_0219B4C0:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219ce34
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	str r0, [r4, #0x34]
	ldr r0, [r4, r5]
	mov r5, #0x55
	str r1, [r0, #0x50]
	mov r0, #0x17
	mov r2, #0
	strb r0, [r4, #0xc]
	str r2, [r4, #0x14]
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f76c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0x12
	bl ovy165_219f840
	add r0, r4, #0
	bl ovy165_219bb68
	pop {r3, r4, r5, r6, r7, pc}
_0219B500:
	add r0, r5, #0
	sub r0, #0x17
	cmp r1, r0
	bne _0219B54C
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a21dc
	cmp r0, #5
	bne _0219B51E
	add r0, r4, #0
	mov r1, #2
	bl sub_021A03AC
	pop {r3, r4, r5, r6, r7, pc}
_0219B51E:
	cmp r0, #2
	beq _0219B526
	cmp r0, #4
	bne _0219B52E
_0219B526:
	add r0, r4, #0
	bl sub_021A039C
	pop {r3, r4, r5, r6, r7, pc}
_0219B52E:
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	str r0, [r4, #0x34]
	ldr r0, [r4, r5]
	str r1, [r0, #0x50]
	mov r0, #0xe
	strb r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #5
	sub r0, #0x18
	str r1, [r4, r0]
	mov r0, #2
	sub r5, #0x11
	strb r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219B54C:
	add r0, r4, #0
	bl sub_021A039C
	pop {r3, r4, r5, r6, r7, pc}
_0219B554:
	add r2, #0x54
	ldrh r2, [r2]
	ldr r1, [r4, #0x3c]
	bl ovy165_219dbc8
	cmp r0, #0
	beq _0219B580
	ldr r1, [r4, r5]
	add r0, r4, #0
	add r1, #0x54
	ldrh r1, [r1]
	bl ovy165_219e648
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r5]
	str r1, [r0, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #8
	str r1, [r0, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_0219B580:
	ldr r3, _0219B730 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x52
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219B58E:
	ldr r0, [r4, #0x3c]
	mov r1, #6
	mov r2, #0
	mov r7, #6
	bl sub_0201CCF8
	add r6, r0, #0
	bne _0219B66E
	ldr r0, [r4, r5]
	add r0, #0x54
	ldrh r0, [r0]
	bl sub_02026BA0
	cmp r0, #1
	bne _0219B5BC
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r5]
	str r1, [r0, #0x4c]
	ldr r0, [r4, r5]
	str r7, [r0, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_0219B5BC:
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_219e5fc
	ldr r1, [r4, #0x30]
	mov r6, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r6, r6, #2
	ldr r1, [r1, r6]
	add r0, r4, #0
	bl ovy165_219f310
	add r1, r6, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	add r1, r6, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r4, r5]
	sub r6, #0x10
	add r3, #0x54
	ldr r1, [r4, r6]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	mov r6, #1
	bl sub_0219FA08
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_21a02c8
	ldr r2, [r4, r5]
	ldr r1, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy165_21a0304
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a2018
	cmp r0, #1
	bne _0219B654
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a205c
	ldr r3, _0219B734 ; =ovy165_219e4b8
	add r0, r4, #0
	mov r1, #0x5c
	add r2, r6, #0
	bl ovy165_219d74c
	sub r5, #0x18
	str r6, [r4, r5]
	b _0219B660
_0219B654:
	ldr r3, _0219B730 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x5c
	add r2, r6, #0
	bl ovy165_219d74c
_0219B660:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
_0219B66E:
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #1
	bne _0219B68E
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	ldr r3, _0219B730 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x3a
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219B68E:
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r5]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	lsl r3, r6, #0x10
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0219FA18
	ldr r3, _0219B738 ; =0x0219E06D
	add r0, r4, #0
	mov r1, #0x3b
	mov r2, #0
	bl ovy165_219d74c
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
_0219B6CA:
	ldr r0, [r4, #0x3c]
	mov r1, #6
	mov r2, #0
	mov r7, #6
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219B726
	ldr r2, [r4, r5]
	ldrh r3, [r4]
	ldr r0, [r2, #8]
	add r2, #0x6c
	ldrh r2, [r2]
	mov r1, #0
	bl sub_020097F4
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	mov r1, #0xa7
	add r2, r6, #0
	bl sub_0201CD1C
	add r0, r6, #0
	bl sub_0203A24C
	ldr r2, [r4, r5]
	ldr r0, [r4, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r1, r7, #0
	bl sub_0201CD1C
	ldr r2, [r4, r5]
	mov r1, #0
	ldr r0, [r2, #8]
	add r2, #0x6c
	ldrh r2, [r2]
	bl sub_020097D0
	ldr r3, _0219B730 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x6c
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219B726:
	ldr r3, _0219B730 ; =0x0219DE11
	b _0219B73C
	nop
_0219B72C: .word 0x0000056F
_0219B730: .word 0x0219DE11
_0219B734: .word ovy165_219e4b8
_0219B738: .word 0x0219E06D
_0219B73C:
	add r0, r4, #0
	mov r1, #0x6d
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219B748:
	ldr r2, [r2, #0x4c]
	ldr r1, [r4, #0x3c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ovy165_219da9c
	cmp r0, #3
	bls _0219B75A
	b _0219B8A4
_0219B75A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219B766: ; jump table
	.short _0219B76E - _0219B766 - 2 ; case 0
	.short _0219B7C2 - _0219B766 - 2 ; case 1
	.short _0219B800 - _0219B766 - 2 ; case 2
	.short _0219B844 - _0219B766 - 2 ; case 3
_0219B76E:
	mov r6, #0x55
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r4, r5]
	ldr r1, [r4, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219B8A8 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x2a
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_219e588
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_219e5e0
	pop {r3, r4, r5, r6, r7, pc}
_0219B7C2:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r4, r5]
	ldr r1, [r4, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219B8AC ; =0x0219DE85
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #0
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
_0219B800:
	mov r6, #0x55
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r4, r5]
	ldr r1, [r4, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219B8A8 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x2b
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
_0219B844:
	mov r6, #0x55
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r4, r5]
	ldr r1, [r4, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219B8A8 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x2c
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
_0219B888:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	mov r1, #0
	str r0, [r2, #0x4c]
	ldr r0, [r4, r5]
	str r1, [r0, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_0219B898:
	add r0, r4, #0
	bl ovy165_219ceec
	add r0, r4, #0
	bl ovy165_219b8b0
_0219B8A4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B8A8: .word 0x0219DE11
_0219B8AC: .word 0x0219DE85
	thumb_func_end ovy165_219b2cc

	thumb_func_start ovy165_219b8b0
ovy165_219b8b0: ; 0x0219B8B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	mov r6, #0
	bl sub_02044F90
	mov r7, #0xa3
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	ldr r0, [r0, #0x44]
	cmp r0, #0x12
	bgt _0219B8E2
	blt _0219B8CE
	b _0219BA08
_0219B8CE:
	cmp r0, #5
	bgt _0219B8E0
	cmp r0, #0
	blt _0219B8E0
	beq _0219B902
	cmp r0, #1
	beq _0219B98A
	cmp r0, #5
	beq _0219B9C0
_0219B8E0:
	b _0219BAE8
_0219B8E2:
	cmp r0, #0x15
	bgt _0219B8EC
	bne _0219B8EA
	b _0219BA3A
_0219B8EA:
	b _0219BAE8
_0219B8EC:
	cmp r0, #0x19
	bgt _0219B900
	cmp r0, #0x16
	blt _0219B900
	beq _0219B98A
	cmp r0, #0x17
	beq _0219B98A
	cmp r0, #0x19
	bne _0219B900
	b _0219BAC2
_0219B900:
	b _0219BAE8
_0219B902:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_0219F4B8
	cmp r0, #1
	bne _0219B926
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r6, [sp]
	mov r0, #0x10
	b _0219B952
_0219B926:
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #6
	str r0, [sp, #0xc]
	mov r0, #0x10
	str r6, [sp]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x3c]
	add r2, r6, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #1
	bne _0219B954
	mov r0, #5
_0219B952:
	str r0, [sp, #0xc]
_0219B954:
	mov r4, #0x55
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r1, [r5, r4]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #2
	bl ovy165_219f76c
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #0x13
	bl ovy165_219f840
	add r0, r5, #0
_0219B982:
	ldr r1, [r5, r4]
	bl ovy165_219f9e8
	b _0219BAF4
_0219B98A:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_0219F4B8
	cmp r0, #1
	bne _0219B9AE
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	b _0219B9BE
_0219B9AE:
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
_0219B9BE:
	b _0219B954
_0219B9C0:
	mov r0, #2
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x10
	mov r4, #0x55
	str r0, [sp, #8]
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r1, [r5, r4]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0219F9F8
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #2
	bl ovy165_219f76c
	ldr r1, [r5, r7]
	add r0, r5, #0
	add r1, #0x54
	ldrh r1, [r1]
	bl ovy165_21a02a4
	add r2, r0, #0
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f840
	add r0, r5, #0
_0219BA06:
	b _0219B982
_0219BA08:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_0219F4B8
	cmp r0, #1
	bne _0219BA2A
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x10
	str r6, [sp]
	str r0, [sp, #8]
	b _0219BA38
_0219BA2A:
	mov r0, #7
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r6, [sp, #4]
	str r0, [sp, #0xc]
_0219BA38:
	b _0219B954
_0219BA3A:
	ldr r1, [r5, #0x30]
	mov r4, #0x59
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl sub_0219F4B8
	cmp r0, #1
	bne _0219BA7A
	mov r0, #0xb
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	add r1, r4, #0
	str r0, [sp, #0xc]
	str r6, [sp, #4]
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #2
	bl ovy165_219f76c
	sub r4, #0x10
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #0xae
	bl ovy165_219f840
	b _0219BAF4
_0219BA7A:
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x10
	add r1, r4, #0
	str r0, [sp, #8]
	str r6, [sp]
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9d8
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0219F9F8
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #2
	bl ovy165_219f76c
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x13
	bl ovy165_219f840
	add r0, r5, #0
	sub r4, #0x10
	b _0219BA06
_0219BAC2:
	ldr r0, [r5, #0x3c]
	bl sub_021EEC80
	cmp r0, #1
	bne _0219BADC
	mov r0, #0xb
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r6, [sp, #4]
	str r0, [sp, #0xc]
	b _0219BAE6
_0219BADC:
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x10
	str r6, [sp]
	str r0, [sp, #8]
_0219BAE6:
	b _0219B954
_0219BAE8:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
_0219BAF4:
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, sp, #0
	bl ovy165_219fb54
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219b8b0

	thumb_func_start ovy165_219bb08
ovy165_219bb08: ; 0x0219BB08
	push {r3, lr}
	ldrb r1, [r0, #0xe]
	cmp r1, #0
	beq _0219BB1A
	cmp r1, #1
	beq _0219BB24
	cmp r1, #2
	beq _0219BB2A
	pop {r3, pc}
_0219BB1A:
	mov r1, #1
	strb r1, [r0, #0xe]
	mov r1, #4
	strb r1, [r0, #0xf]
	pop {r3, pc}
_0219BB24:
	bl ovy165_219c7e8
	pop {r3, pc}
_0219BB2A:
	ldrb r1, [r0, #0xc]
	cmp r1, #0x16
	bgt _0219BB42
	bge _0219BB54
	cmp r1, #4
	bgt _0219BB60
	cmp r1, #3
	blt _0219BB60
	beq _0219BB48
	cmp r1, #4
	beq _0219BB4E
	b _0219BB60
_0219BB42:
	cmp r1, #0x17
	beq _0219BB5A
	b _0219BB60
_0219BB48:
	bl ovy165_219be4c
	pop {r3, pc}
_0219BB4E:
	bl ovy165_219c038
	pop {r3, pc}
_0219BB54:
	bl ovy165_219c5d0
	pop {r3, pc}
_0219BB5A:
	bl ovy165_219bf40
	pop {r3, pc}
_0219BB60:
	bl ovy165_219bc7c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219bb08

	thumb_func_start ovy165_219bb68
ovy165_219bb68: ; 0x0219BB68
	push {r4, r5, r6, lr}
	mov r1, #0xa3
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r6, #0
	ldr r1, [r1, #0x4c]
	mov r4, #0x19
	str r1, [r5, #0x30]
	strb r6, [r5, #0xe]
	str r4, [r5, #0x40]
	bl sub_0219DA58
	cmp r0, #1
	bne _0219BB9C
	add r0, r4, #0
	add r0, #0xf3
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl ovy165_219fed8
	add r4, #0xf7
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl ovy165_219fed8
_0219BB9C:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0219BBD6
	ldr r1, [r5, #0x30]
	cmp r1, #5
	bgt _0219BBC4
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x30]
	add r0, r5, #0
_0219BBB2:
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #1
_0219BBBE:
	bl ovy165_219efc8
	b _0219BC1E
_0219BBC4:
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	b _0219BC1A
_0219BBD6:
	mov r4, #0x77
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	mov r6, #0
	bl sub_0204C124
	ldr r1, [r5, #0x30]
	cmp r1, #5
	bgt _0219BC0C
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	beq _0219BBFA
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0219BBFE
_0219BBFA:
	add r0, r5, #0
	b _0219BBB2
_0219BBFE:
	lsl r1, r1, #2
	add r1, r5, r1
	sub r4, #0x78
	add r0, r5, #0
	ldr r1, [r1, r4]
	add r2, r6, #0
	b _0219BBBE
_0219BC0C:
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r0, r5, r0
	sub r4, #0xd0
	ldr r0, [r0, r4]
	add r1, r6, #0
_0219BC1A:
	bl ovy165_219fed8
_0219BC1E:
	mov r4, #0x7a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r1, [r5, #0x14]
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x14]
	bl sub_0204C124
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r5, r1]
	add r0, r4, #4
	add r1, #0xa5
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	add r1, r1, #6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	beq _0219BC60
	add r0, r5, #0
	bl sub_0219DA88
	cmp r0, #0
	bne _0219BC6E
_0219BC60:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
_0219BC6E:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy165_219bb68

	thumb_func_start ovy165_219bc7c
ovy165_219bc7c: ; 0x0219BC7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x55
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy165_219f7fc
	add r0, r4, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219BCF4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0x15
	mov r6, #0
	bl sub_02045604
	mov r0, #0xa3
	add r5, r6, #0
	lsl r0, r0, #2
_0219BCB6:
	ldr r1, [r4, r0]
	add r1, r1, r6
	add r1, #0x59
	strb r5, [r1]
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	cmp r6, #6
	blo _0219BCB6
	mov r7, #0xa3
	mov r6, #0x59
	lsl r7, r7, #2
	lsl r6, r6, #2
_0219BCD0:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	bl sub_0219F48C
	add r2, r0, #0
	cmp r2, #5
	bgt _0219BCEA
	ldr r0, [r4, r7]
	add r1, r5, #1
	add r0, r0, r2
	add r0, #0x59
	strb r1, [r0]
_0219BCEA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0219BCD0
_0219BCF4:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bls _0219BCFC
	b _0219BE3C
_0219BCFC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219BD08: ; jump table
	.short _0219BD44 - _0219BD08 - 2 ; case 0
	.short _0219BD76 - _0219BD08 - 2 ; case 1
	.short _0219BDF0 - _0219BD08 - 2 ; case 2
	.short _0219BD10 - _0219BD08 - 2 ; case 3
_0219BD10:
	mov r5, #0x77
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x30]
	ldr r0, [r0]
	bl sub_0201FF08
	add r5, #0xb0
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r5]
	str r1, [r0, #0x4c]
	ldr r0, _0219BE40 ; =0x0000054C
	bl sub_02006254
	add r0, r4, #0
	bl ovy165_219b2cc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BD44:
	add r0, r4, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219BD58
	add r0, r4, #0
	bl ovy165_219c20c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BD58:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #6
	str r2, [r1, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0x50]
	ldr r0, _0219BE40 ; =0x0000054C
	bl sub_02006254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BD76:
	ldr r1, [r4, #0x30]
	cmp r1, #5
	bgt _0219BD98
	lsl r1, r1, #2
	mov r5, #0x59
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_219efc8
	add r5, #0x78
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
_0219BD98:
	add r0, r4, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219BDC2
	mov r5, #0x43
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl ovy165_219fed8
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ovy165_219fee4
	mov r0, #0xc
	strb r0, [r4, #0xc]
	mov r0, #7
	str r0, [r4, #0x30]
	b _0219BDD6
_0219BDC2:
	mov r1, #0x79
	mov r0, #0x13
	lsl r1, r1, #2
	strb r0, [r4, #0xc]
	ldr r0, [r4, r1]
	add r1, #0xc
	str r0, [r4, r1]
	mov r1, #9
	bl sub_0204C488
_0219BDD6:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #7
	str r2, [r1, #0x4c]
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0x50]
	ldr r0, _0219BE44 ; =0x00000551
	bl sub_02006254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219BDF0:
	ldr r1, [r4, #0x30]
	cmp r1, #5
	bgt _0219BE12
	lsl r1, r1, #2
	mov r5, #0x59
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_219efc8
	add r5, #0x78
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
_0219BE12:
	mov r5, #0xa3
	mov r0, #0x13
	lsl r5, r5, #2
	strb r0, [r4, #0xc]
	ldr r0, [r4, r5]
	mov r1, #8
	str r1, [r0, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #0
	str r1, [r0, #0x50]
	ldr r0, _0219BE48 ; =0x00000556
	bl sub_02006254
	add r0, r5, #0
	sub r0, #0xa4
	ldr r0, [r4, r0]
	sub r5, #0x9c
	mov r1, #8
	str r0, [r4, r5]
	bl sub_0204C488
_0219BE3C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219BE40: .word 0x0000054C
_0219BE44: .word 0x00000551
_0219BE48: .word 0x00000556
	thumb_func_end ovy165_219bc7c

	thumb_func_start ovy165_219be4c
ovy165_219be4c: ; 0x0219BE4C
	push {r3, r4, r5, lr}
	mov r1, #0x55
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy165_219f7fc
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bne _0219BE6C
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bne _0219BE6C
	mov r0, #1
	strb r0, [r4, #0xf]
_0219BE6C:
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	beq _0219BE7E
	cmp r0, #3
	bne _0219BEC6
	add r0, r4, #0
	bl ovy165_219d938
	pop {r3, r4, r5, pc}
_0219BE7E:
	mov r0, #0
	str r0, [r4, #0x3c]
	mov r0, #2
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
	ldr r1, [r4, #0x34]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_219efc8
	add r5, #0x7c
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	mov r0, #9
	str r0, [r4, #0x34]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r0]
	str r1, [r0, #0x4c]
	add r0, r4, #0
	bl ovy165_219b19c
	ldr r0, _0219BEC8 ; =0x00000551
	bl sub_02006254
_0219BEC6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219BEC8: .word 0x00000551
	thumb_func_end ovy165_219be4c

	thumb_func_start ovy165_219becc
ovy165_219becc: ; 0x0219BECC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xa3
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	ldr r0, [r0]
	bl sub_0201FF08
	mov r1, #5
	mov r2, #0
	str r0, [sp]
	mov r7, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	mov r1, #3
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219BF14
	ldr r0, [sp]
	mov r1, #0x4c
	add r2, r7, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219BF18
_0219BF14:
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219BF18:
	add r0, r6, #0
	sub r0, #9
	cmp r4, r0
	bne _0219BF2A
	cmp r5, #0
	bne _0219BF26
	mov r7, #4
_0219BF26:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219BF2A:
	sub r6, #8
	cmp r4, r6
	bne _0219BF3A
	mov r0, #4
	cmp r5, #0
	beq _0219BF3C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219BF3A:
	mov r0, #3
_0219BF3C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219becc

	thumb_func_start ovy165_219bf40
ovy165_219bf40: ; 0x0219BF40
	push {r3, r4, r5, lr}
	mov r4, #0x55
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl ovy165_219f7fc
	ldrb r0, [r5, #0xf]
	cmp r0, #3
	bne _0219BF5C
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x34]
	cmp r1, r0
	bne _0219BFA6
_0219BF5C:
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #2
	strb r0, [r5, #0xc]
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x34]
	mov r4, #0x59
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy165_219efc8
	add r4, #0x7c
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	mov r0, #9
	str r0, [r5, #0x34]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r0]
	str r1, [r0, #0x4c]
	add r0, r5, #0
	bl ovy165_219b19c
	ldr r0, _0219C02C ; =0x00000551
	bl sub_02006254
	pop {r3, r4, r5, pc}
_0219BFA6:
	ldr r0, _0219C030 ; =0x0000054C
	bl sub_02006254
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy165_219becc
	add r1, r0, #0
	cmp r1, #1
	bhi _0219BFDA
	mov r2, #0xa3
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r3, #0xa
	str r3, [r0, #0x50]
	mov r0, #0xe
	strb r0, [r5, #0xc]
	add r0, r2, #0
	mov r3, #4
	sub r0, #0x18
	str r3, [r5, r0]
	sub r2, #0x11
	strb r1, [r5, r2]
	pop {r3, r4, r5, pc}
_0219BFDA:
	ldr r3, _0219C034 ; =ovy165_219ddf4
	add r0, r5, #0
	add r1, #0x52
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	add r4, #0x8c
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r0]
	str r1, [r0, #0x4c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219C02C: .word 0x00000551
_0219C030: .word 0x0000054C
_0219C034: .word ovy165_219ddf4
	thumb_func_end ovy165_219bf40

	thumb_func_start ovy165_219c038
ovy165_219c038: ; 0x0219C038
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x55
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl ovy165_219f7fc
	ldrb r0, [r5, #0xf]
	cmp r0, #3
	beq _0219C050
	b _0219C1AE
_0219C050:
	mov r7, #0xa3
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x30]
	ldr r0, [r0]
	bl sub_0201FF08
	str r0, [r5, #0x3c]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x38]
	cmp r1, r0
	beq _0219C086
	cmp r4, #0
	beq _0219C086
	cmp r6, r4
	bne _0219C0DA
_0219C086:
	ldr r3, _0219C1FC ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #1
	mov r4, #0x6e
	bl ovy165_219d74c
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x38]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x6e
	add r1, #0xf6
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	ldr r1, [r5, #0x30]
	add r4, #0xf6
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy165_219efc8
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	add r4, #0xac
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r4]
	add sp, #8
	str r1, [r0, #0x4c]
	pop {r3, r4, r5, r6, r7, pc}
_0219C0DA:
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0xa1
	add r1, #0xc3
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl ovy165_219f310
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x30]
	ldr r0, [r0]
	bl sub_0201FF08
	ldr r1, [r5, #0x30]
	str r0, [r5, #0x3c]
	lsl r1, r1, #2
	mov r0, #0xa
	add r2, r5, r1
	mov r1, #0xa1
	strb r0, [r5, #0xc]
	add r1, #0xc3
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl sub_0219F4B4
	mov r1, #0xa1
	add r1, #0x7f
	strh r0, [r5, r1]
	mov r0, #0xa1
	ldr r1, _0219C200 ; =ovy165_219e25c
	add r0, #0x83
	str r1, [r5, r0]
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x38]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0xa1
	add r1, #0xc3
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	add r0, r7, #0
	sub r0, #0xac
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x38]
	ldr r0, [r0]
	bl sub_0201FF08
	str r0, [sp]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #5
	blx sub_0208D868
	add r2, r0, #0
	add r0, r4, r2
	cmp r0, r6
	bls _0219C17C
	ldr r0, [sp]
	mov r1, #0xa0
	sub r2, r6, r4
	b _0219C180
_0219C17C:
	ldr r0, [sp]
	mov r1, #0xa0
_0219C180:
	sub r2, r7, r2
	bl sub_0201CD1C
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r0]
	str r1, [r0, #0x4c]
	ldr r1, [r5, #0x38]
	add r0, r5, #0
	str r1, [r5, #0x30]
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl ovy165_219f310
	ldr r0, _0219C204 ; =0x0000056F
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219C1AE:
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #2
	strb r0, [r5, #0xc]
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x38]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	add r4, #0x8c
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	mov r0, #9
	str r0, [r5, #0x38]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r0]
	str r1, [r0, #0x4c]
	add r0, r5, #0
	bl ovy165_219b19c
	ldr r0, _0219C208 ; =0x00000551
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C1FC: .word ovy165_219ddf4
_0219C200: .word ovy165_219e25c
_0219C204: .word 0x0000056F
_0219C208: .word 0x00000551
	thumb_func_end ovy165_219c038

	thumb_func_start ovy165_219c20c
ovy165_219c20c: ; 0x0219C20C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0xa3
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r6, [r1, #0x14]
	ldr r1, [r4, #0x30]
	cmp r1, #6
	beq _0219C242
	cmp r1, #5
	bgt _0219C23E
	lsl r1, r1, #2
	mov r5, #0x59
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	mov r2, #0
	bl ovy165_219efc8
	add r5, #0x78
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
_0219C23E:
	mov r0, #6
	str r0, [r4, #0x30]
_0219C242:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	str r1, [r0, #0x4c]
	add r7, sp, #4
	mov r5, #0
	strb r5, [r7]
	strb r5, [r7, #1]
	strb r5, [r7, #2]
	strb r5, [r7, #3]
	strb r5, [r7, #4]
	strb r5, [r7, #5]
_0219C25C:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0219F48C
	cmp r0, #5
	bgt _0219C272
	add r1, r5, #1
	strb r1, [r7, r0]
_0219C272:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0219C25C
	mov r7, #0xa3
	lsl r7, r7, #2
	ldr r1, [r4, r7]
	add r0, r6, #0
	ldr r1, [r1]
	add r2, sp, #4
	bl sub_0201F1E8
	ldr r5, _0219C35C ; =0x00000109
	add r2, r0, #0
	ldrb r0, [r4, r5]
	ldrb r1, [r6, #2]
	cmp r1, r0
	bls _0219C2AE
	ldr r3, _0219C360 ; =ovy165_219ddf4
	add r0, r4, #0
	add r1, #0x60
	mov r2, #1
	bl ovy165_219d74c
	ldr r0, _0219C364 ; =0x00000557
	bl sub_02006254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219C2AE:
	ldrb r1, [r6, #3]
	cmp r1, r0
	bhs _0219C2CA
	ldr r3, _0219C360 ; =ovy165_219ddf4
	add r0, r4, #0
	add r1, #0x66
	mov r2, #1
	bl ovy165_219d74c
	ldr r0, _0219C364 ; =0x00000557
	bl sub_02006254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219C2CA:
	cmp r2, #1
	bne _0219C30E
	add r1, r5, #0
	add r1, #0x4b
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	mov r0, #3
	str r0, [sp]
	add r5, #0x4b
	ldrh r3, [r6, #6]
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_219fa48
	ldr r3, _0219C360 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x9e
	mov r2, #1
	mov r5, #0x9e
	bl ovy165_219d74c
	ldr r0, _0219C364 ; =0x00000557
	bl sub_02006254
	add r5, #0xb6
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219C30E:
	cmp r2, #7
	bne _0219C328
	ldr r3, _0219C360 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #1
	bl ovy165_219d74c
	ldr r0, _0219C364 ; =0x00000557
	bl sub_02006254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219C328:
	add r0, r5, #7
	ldr r0, [r4, r0]
	mov r1, #0
	mov r6, #0
	bl ovy165_219fed8
	add r0, r5, #3
	ldr r0, [r4, r0]
	mov r1, #1
	bl ovy165_219fee4
	mov r0, #0xc
	strb r0, [r4, #0xc]
	ldr r0, [r4, r7]
	mov r1, #6
	str r1, [r0, #0x4c]
	ldr r0, [r4, r7]
	add r5, #0x13
	str r6, [r0, #0x50]
	mov r0, #1
	str r0, [r4, r5]
	ldr r0, _0219C368 ; =0x0000054C
	bl sub_02006254
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C35C: .word 0x00000109
_0219C360: .word ovy165_219ddf4
_0219C364: .word 0x00000557
_0219C368: .word 0x0000054C
	thumb_func_end ovy165_219c20c

	thumb_func_start ovy165_219c36c
ovy165_219c36c: ; 0x0219C36C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_02026BA0
	cmp r0, #0
	bne _0219C396
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy165_219e5fc
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy165_219e5fc
	pop {r3, r4, r5, r6, r7, pc}
_0219C396:
	ldrh r0, [r5]
	bl sub_020096B8
	add r7, r0, #0
	ldrh r0, [r5]
	bl sub_020096B8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xa7
	add r2, r7, #0
	bl sub_0201CCF8
	add r0, r6, #0
	mov r1, #0xa7
	add r2, r7, #0
	bl sub_0201CD1C
	ldr r2, [sp]
	add r0, r6, #0
	mov r1, #6
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #0xa7
	add r2, r5, #0
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0203A24C
	add r0, r7, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219c36c

	thumb_func_start ovy165_219c3e8
ovy165_219c3e8: ; 0x0219C3E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldrh r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	ldr r6, [sp, #0x28]
	bl sub_020096B8
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldrh r0, [r0]
	bl sub_020096B8
	str r0, [sp, #8]
	ldr r0, [sp]
	ldrh r0, [r0]
	bl sub_020096B8
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02026BA0
	cmp r0, #0
	bne _0219C438
	add r0, r6, #0
	bl sub_02026BA0
	cmp r0, #0
	bne _0219C438
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
_0219C42C:
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #6
	add r2, r7, #0
_0219C436:
	b _0219C502
_0219C438:
	add r0, r7, #0
	bl sub_02026BA0
	cmp r0, #1
	bne _0219C47C
	add r0, r6, #0
	bl sub_02026BA0
	cmp r0, #0
	bne _0219C47C
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0xa7
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #6
	add r2, r7, #0
	bl sub_0201CD1C
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xa7
	bl sub_0201CD1C
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0xa7
	bl sub_0201CD1C
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	b _0219C436
_0219C47C:
	add r0, r7, #0
	bl sub_02026BA0
	cmp r0, #0
	bne _0219C4B6
	add r0, r6, #0
	bl sub_02026BA0
	cmp r0, #1
	bne _0219C4B6
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa7
	bl sub_0201CCF8
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_0201CD1C
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa7
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #0xa7
	ldr r2, [sp, #4]
	b _0219C42C
_0219C4B6:
	add r0, r7, #0
	bl sub_02026BA0
	cmp r0, #1
	bne _0219C506
	add r0, r6, #0
	bl sub_02026BA0
	cmp r0, #1
	bne _0219C506
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0xa7
	bl sub_0201CCF8
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa7
	bl sub_0201CCF8
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_0201CD1C
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa7
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #6
	add r2, r7, #0
	bl sub_0201CD1C
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xa7
_0219C502:
	bl sub_0201CD1C
_0219C506:
	ldr r0, [sp, #4]
	bl sub_0203A24C
	ldr r0, [sp, #8]
	bl sub_0203A24C
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219c3e8

	thumb_func_start ovy165_219c51c
ovy165_219c51c: ; 0x0219C51C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	mov r1, #6
	mov r2, #0
	str r7, [sp]
	str r5, [sp, #4]
	mov r4, #0
	bl sub_0201CCF8
	add r6, sp, #0
	strh r0, [r6, #8]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #0xa]
_0219C542:
	add r0, r7, #0
	bl sub_0201D5F4
	lsl r1, r4, #1
	add r0, sp, #8
	ldrh r5, [r0, r1]
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r6, [r0, r1]
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ovy165_21a02c8
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ovy165_21a0304
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _0219C542
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219c51c

	thumb_func_start ovy165_219c578
ovy165_219c578: ; 0x0219C578
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0219C5C8 ; =0x00000557
	add r6, r1, #0
	bl sub_02006254
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x34]
	mov r4, #0x59
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy165_219efc8
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	mov r2, #0
	bl ovy165_219efc8
	add r4, #0x7c
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	ldr r3, _0219C5CC ; =ovy165_219ddf4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy165_219d74c
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219C5C8: .word 0x00000557
_0219C5CC: .word ovy165_219ddf4
	thumb_func_end ovy165_219c578

	thumb_func_start ovy165_219c5d0
ovy165_219c5d0: ; 0x0219C5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r1, [r5, #0xf]
	cmp r1, #3
	beq _0219C5DE
	b _0219C766
_0219C5DE:
	mov r0, #0xa3
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x34]
	ldr r0, [r0]
	bl sub_0201FF08
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_0201FF08
	add r7, r0, #0
	mov r1, #0xab
	str r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r1, #0xab
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0xab
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	add r1, #0xa9
	str r1, [sp, #0x10]
	lsr r4, r0, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f7fc
	ldr r0, [sp, #0x14]
	sub r0, #0xa5
	str r0, [sp, #0x14]
	cmp r6, r0
	bne _0219C65C
	ldr r0, [sp, #4]
	cmp r0, #0x70
	beq _0219C668
_0219C65C:
	ldr r1, _0219C7D8 ; =0x000001E7
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _0219C672
	cmp r4, #0x70
	bne _0219C672
_0219C668:
	add r0, r5, #0
	mov r1, #0x5e
_0219C66C:
	bl ovy165_219c578
	b _0219C756
_0219C672:
	ldr r0, _0219C7D8 ; =0x000001E7
	cmp r6, r0
	bne _0219C682
	cmp r4, #0x70
	bne _0219C682
	add r0, r5, #0
	mov r1, #0x5f
	b _0219C66C
_0219C682:
	ldr r0, _0219C7DC ; =0x0000028A
	cmp r6, r0
	bne _0219C68E
	add r0, r5, #0
	mov r1, #0x60
	b _0219C66C
_0219C68E:
	cmp r4, #0
	bne _0219C6B0
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy165_219c36c
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_0219F9F8
	b _0219C6E6
_0219C6B0:
	str r4, [sp]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy165_219c3e8
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r1, [r5, r6]
	add r0, r5, #0
	mov r2, #2
	add r3, r7, #0
	bl sub_0219F9F8
	ldr r1, [r5, r6]
	add r0, r5, #0
	mov r2, #3
	add r3, r4, #0
	bl sub_0219FA08
_0219C6E6:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl ovy165_219c51c
	ldr r1, [r5, #0x30]
	mov r6, #0x59
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r6, r6, #2
	ldr r1, [r1, r6]
	add r0, r5, #0
	bl ovy165_219f310
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r6]
	bl ovy165_219f310
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r6]
	mov r2, #0
	bl ovy165_219efc8
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r6]
	mov r2, #0
	bl ovy165_219efc8
	add r6, #0x7c
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0204C124
	cmp r4, #0
	bne _0219C74A
	add r0, r5, #0
	mov r1, #0x5c
	b _0219C74E
_0219C74A:
	add r0, r5, #0
	mov r1, #0x5d
_0219C74E:
	ldr r3, _0219C7E0 ; =ovy165_219ddf4
	mov r2, #1
	bl ovy165_219d74c
_0219C756:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9e8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219C766:
	mov r4, #0x55
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl ovy165_219f7fc
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9e8
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #2
	strb r0, [r5, #0xc]
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	add r4, #0x8c
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	mov r0, #9
	str r0, [r5, #0x38]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r0]
	str r1, [r0, #0x4c]
	add r0, r5, #0
	bl ovy165_219b19c
	ldr r0, _0219C7E4 ; =0x00000551
	bl sub_02006254
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C7D8: .word 0x000001E7
_0219C7DC: .word 0x0000028A
_0219C7E0: .word ovy165_219ddf4
_0219C7E4: .word 0x00000551
	thumb_func_end ovy165_219c5d0

	thumb_func_start ovy165_219c7e8
ovy165_219c7e8: ; 0x0219C7E8
	push {r4, lr}
	add r4, r0, #0
	bl ovy165_219c87c
	ldrb r0, [r4, #0xf]
	cmp r0, #4
	bne _0219C7FC
	add r0, r4, #0
	bl ovy165_219cb80
_0219C7FC:
	ldrb r0, [r4, #0xf]
	cmp r0, #4
	beq _0219C806
	mov r0, #2
	strb r0, [r4, #0xe]
_0219C806:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219C81C
	mov r0, #2
	strb r0, [r4, #0xe]
	mov r0, #1
	strb r0, [r4, #0xf]
_0219C81C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219c7e8

	thumb_func_start ovy165_219c820
ovy165_219c820: ; 0x0219C820
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x30]
	cmp r2, #6
	bne _0219C830
	mov r0, #0
	strb r0, [r4, #0xf]
	pop {r4, pc}
_0219C830:
	cmp r2, #7
	bne _0219C83A
	mov r0, #1
	strb r0, [r4, #0xf]
	pop {r4, pc}
_0219C83A:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	bne _0219C85A
	lsl r1, r2, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_0219F4B8
	cmp r0, #1
	bne _0219C85A
	ldr r0, _0219C878 ; =0x00000557
	bl sub_02006254
	pop {r4, pc}
_0219C85A:
	ldrb r0, [r4, #0xc]
	cmp r0, #0x16
	bne _0219C870
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bne _0219C870
	ldr r0, _0219C878 ; =0x00000557
	bl sub_02006254
	pop {r4, pc}
_0219C870:
	mov r0, #3
	strb r0, [r4, #0xf]
	pop {r4, pc}
	nop
_0219C878: .word 0x00000557
	thumb_func_end ovy165_219c820

	thumb_func_start ovy165_219c87c
ovy165_219c87c: ; 0x0219C87C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0203DEFC
	str r0, [sp, #0xc]
	bl sub_0203DF44
	add r7, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0219C8F6
	mov r4, #0x77
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204C138
	cmp r0, #0
	bne _0219C8F6
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0219C944
	ldr r1, _0219CB6C ; =0x00000402
	tst r0, r1
	bne _0219C944
	ldr r1, [r5, #0x30]
	cmp r1, #5
	bgt _0219C8CE
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x30]
	sub r4, #0x78
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	mov r2, #1
	bl ovy165_219efc8
	b _0219C8EA
_0219C8CE:
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r5, r0
	add r0, r4, #0
	sub r0, #0xd0
	ldr r0, [r1, r0]
	mov r1, #1
	bl ovy165_219fed8
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
_0219C8EA:
	ldr r0, _0219CB70 ; =0x00000548
	bl sub_02006254
	mov r0, #0
	str r0, [r5, #8]
	b _0219CABC
_0219C8F6:
	ldr r0, [sp, #0xc]
	mov r4, #0
	cmp r0, #0
	beq _0219C900
	str r4, [r5, #8]
_0219C900:
	mov r1, #0x40
	add r0, r7, #0
	and r0, r1
	str r0, [sp]
	beq _0219C910
	add r4, r1, #0
	sub r4, #0x42
	b _0219C940
_0219C910:
	mov r0, #0x80
	tst r0, r7
	beq _0219C91A
	mov r4, #2
	b _0219C940
_0219C91A:
	mov r0, #0x20
	add r1, r7, #0
	tst r1, r0
	beq _0219C928
	add r4, r0, #0
	sub r4, #0x21
	b _0219C940
_0219C928:
	mov r0, #0x10
	tst r0, r7
	beq _0219C932
	mov r4, #1
	b _0219C940
_0219C932:
	ldr r0, [sp, #0xc]
	mov r1, #1
	tst r0, r1
	beq _0219C940
	add r0, r5, #0
	bl ovy165_219c820
_0219C940:
	cmp r4, #0
	bne _0219C946
_0219C944:
	b _0219CABC
_0219C946:
	ldr r0, [r5, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219C96A
	add r0, r5, #0
	bl sub_0219DA74
	cmp r0, #1
	bne _0219C966
	mov r6, #7
	b _0219C96C
_0219C966:
	mov r6, #6
	b _0219C96C
_0219C96A:
	mov r6, #5
_0219C96C:
	ldr r0, [r5, #0x30]
	sub r0, r0, #6
	cmp r0, #1
	bhi _0219C9CC
	mov r0, #0xc0
	tst r0, r7
	beq _0219C9CC
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_0201FDF8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5, #0x30]
	beq _0219C9AE
	cmp r0, #7
	beq _0219C9A0
	add r0, r5, #0
	bl sub_0219DA74
	cmp r0, #0
	bne _0219C9A8
_0219C9A0:
	ldr r0, _0219CB74 ; =0x021A49E4
	sub r1, r4, #1
_0219C9A4:
	ldrb r0, [r0, r1]
_0219C9A6:
	b _0219C9C6
_0219C9A8:
	sub r1, r4, #1
	ldr r0, _0219CB78 ; =0x021A49DE
	b _0219C9A4
_0219C9AE:
	cmp r0, #7
	beq _0219C9BC
	add r0, r5, #0
	bl sub_0219DA74
	cmp r0, #0
	bne _0219C9CA
_0219C9BC:
	cmp r4, #1
	bls _0219C9C4
	mov r0, #1
	b _0219C9A6
_0219C9C4:
	mov r0, #0
_0219C9C6:
	str r0, [r5, #0x30]
	b _0219CA38
_0219C9CA:
	b _0219C9C4
_0219C9CC:
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x30
	str r0, [sp, #0x10]
	add r7, r6, #1
_0219C9D6:
	ldr r0, [r5, #0x30]
	add r1, r0, r4
	cmp r1, r6
	ble _0219C9F6
	cmp r6, #6
	bne _0219C9F0
	cmp r4, #1
	ble _0219C9F0
	ldr r0, [sp, #8]
	cmp r0, #6
	beq _0219C9F0
_0219C9EC:
	str r6, [r5, #0x30]
	b _0219CA14
_0219C9F0:
	sub r0, r1, r7
_0219C9F2:
	str r0, [r5, #0x30]
	b _0219CA14
_0219C9F6:
	cmp r1, #0
	bge _0219CA0A
	cmp r6, #6
	bne _0219CA04
	cmp r4, #1
	bge _0219CA04
	b _0219C9EC
_0219CA04:
	add r0, r0, r7
	add r0, r4, r0
	b _0219C9F2
_0219CA0A:
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	add r1, r0, r4
	ldr r0, [sp, #0x10]
	str r1, [r0]
_0219CA14:
	ldr r1, [r5, #0x30]
	cmp r1, #5
	bgt _0219CA2E
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl sub_0219F414
	cmp r0, #1
	bne _0219CA32
_0219CA2E:
	mov r0, #1
	str r0, [sp, #4]
_0219CA32:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0219C9D6
_0219CA38:
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _0219CAB6
	cmp r1, #5
	bgt _0219CA60
	add r0, r5, #0
	bl ovy165_219cdd8
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #1
	bl ovy165_219efc8
	b _0219CA7E
_0219CA60:
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	mov r4, #0x43
	add r0, r5, r0
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	mov r1, #1
	bl ovy165_219fed8
	add r4, #0xd0
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
_0219CA7E:
	ldr r0, [sp, #8]
	cmp r0, #5
	bgt _0219CA9A
	ldr r1, [sp, #8]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #0
	bl ovy165_219efc8
	b _0219CAAE
_0219CA9A:
	sub r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ovy165_219fed8
_0219CAAE:
	mov r0, #0xc
	mov r1, #0xc
	add r0, #0xf8
	strb r1, [r5, r0]
_0219CAB6:
	ldr r0, _0219CB70 ; =0x00000548
	bl sub_02006254
_0219CABC:
	ldr r0, [sp, #0xc]
	mov r2, #2
	tst r0, r2
	beq _0219CAFE
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #0
	beq _0219CAD8
	add r0, r5, #0
	bl sub_0219DA74
	cmp r0, #1
	bne _0219CB68
_0219CAD8:
	add r0, r5, #0
	bl sub_0219DA88
	cmp r0, #1
	bne _0219CB68
	mov r1, #0x79
	mov r0, #1
	lsl r1, r1, #2
	strb r0, [r5, #0xf]
	ldr r0, [r5, r1]
	add r1, #0xc
	str r0, [r5, r1]
	mov r1, #9
	bl sub_0204C488
	mov r0, #0
	add sp, #0x14
	str r0, [r5, #8]
	pop {r4, r5, r6, r7, pc}
_0219CAFE:
	ldr r0, [sp, #0xc]
	lsl r1, r2, #9
	tst r0, r1
	beq _0219CB26
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219CB68
	mov r1, #0x7a
	strb r2, [r5, #0xf]
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #8
	str r0, [r5, r1]
	mov r1, #8
	bl sub_0204C488
	mov r0, #0
	add sp, #0x14
	str r0, [r5, #8]
	pop {r4, r5, r6, r7, pc}
_0219CB26:
	ldr r0, [sp, #0xc]
	lsl r1, r2, #0xa
	tst r0, r1
	beq _0219CB68
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219CB68
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r3, [r5, r1]
	add r0, r3, #0
	add r0, #0xa5
	ldrb r2, [r0]
	mov r0, #1
	add r3, #0xa5
	eor r0, r2
	strb r0, [r3]
	add r0, r1, #0
	ldr r1, [r5, r1]
	sub r0, #0xa0
	add r1, #0xa5
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	add r1, r1, #6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, _0219CB7C ; =0x00000646
	bl sub_02006254
	mov r0, #0
	str r0, [r5, #8]
_0219CB68:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CB6C: .word 0x00000402
_0219CB70: .word 0x00000548
_0219CB74: .word 0x021A49E4
_0219CB78: .word 0x021A49DE
_0219CB7C: .word 0x00000646
	thumb_func_end ovy165_219c87c

	thumb_func_start ovy165_219cb80
ovy165_219cb80: ; 0x0219CB80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	mov r4, #0
	mov r6, #0
_0219CB8A:
	lsl r0, r6, #2
	mov r1, #0x59
	add r7, r5, r0
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	add r0, r5, #0
	bl sub_0219F414
	cmp r0, #1
	bne _0219CBBC
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, sp, #0x1c
	add r0, sp, #8
	strb r6, [r0, r4]
	ldr r1, [r7, r1]
	lsl r3, r4, #2
	add r2, #2
	add r0, r5, #0
	add r2, r2, r3
	bl ovy165_219f44c
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0219CBBC:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #6
	blo _0219CB8A
	add r0, sp, #0x1c
	mov r6, #0xff
	lsl r1, r4, #2
	add r0, #2
	strb r6, [r0, r1]
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219CC90
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _0219CC02
	cmp r4, #5
	bgt _0219CC02
	lsl r1, r4, #2
	add r1, r5, r1
	add r6, #0x65
	ldr r1, [r1, r6]
	add r0, r5, #0
	bl sub_0219F4B8
	cmp r0, #1
	bne _0219CC02
_0219CBFA:
	ldr r0, _0219CDC8 ; =0x00000557
	bl sub_02006254
	b _0219CC8C
_0219CC02:
	ldrb r0, [r5, #0xc]
	cmp r0, #0x16
	bne _0219CC14
	cmp r4, #5
	bgt _0219CC14
	ldr r0, [r5, #0x34]
	cmp r4, r0
	bne _0219CC14
	b _0219CBFA
_0219CC14:
	mov r0, #3
	strb r0, [r5, #0xf]
	add r0, sp, #8
	ldr r1, [r5, #0x30]
	ldrb r0, [r0, r4]
	cmp r1, #5
	str r0, [r5, #0x30]
	bgt _0219CC38
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r5, #0
	mov r2, #0
	bl ovy165_219efc8
	b _0219CC4C
_0219CC38:
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r5, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ovy165_219fed8
_0219CC4C:
	ldr r1, [r5, #0x30]
	cmp r1, #5
	bgt _0219CC66
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ovy165_219efc8
	b _0219CC84
_0219CC66:
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	mov r6, #0x43
	add r0, r5, r0
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	mov r1, #1
	bl ovy165_219fed8
	add r6, #0xd0
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0204C124
_0219CC84:
	mov r0, #0xc
	mov r1, #0xc
	add r0, #0xf8
	strb r1, [r5, r0]
_0219CC8C:
	mov r0, #1
	str r0, [r5, #8]
_0219CC90:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0219CD52
	add r2, sp, #0xc
	ldr r3, _0219CDCC ; =0x021A4B64
	add r2, #2
	mov r1, #0x10
_0219CCA0:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0219CCA0
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219CCF6
	add r0, r5, #0
	bl sub_0219DA74
	cmp r0, #1
	add r0, sp, #0
	bne _0219CCE4
	mov r2, #0xa8
	strb r2, [r0, #0x12]
	mov r1, #0xc0
	strb r1, [r0, #0x13]
	mov r0, #0xb0
	add r3, sp, #0
	strb r0, [r3, #0x14]
	mov r4, #0xff
	strb r4, [r3, #0x15]
	strb r2, [r3, #0xe]
	add r2, r3, #0
	strb r1, [r2, #0xf]
	mov r2, #0x60
	add r1, r3, #0
	strb r2, [r1, #0x10]
	strb r0, [r1, #0x11]
	b _0219CD2A
_0219CCE4:
	mov r1, #0xa8
	strb r1, [r0, #0xe]
	mov r1, #0xc0
	strb r1, [r0, #0xf]
	mov r1, #0xb0
	strb r1, [r0, #0x10]
	mov r1, #0xff
	strb r1, [r0, #0x11]
	b _0219CD2A
_0219CCF6:
	add r0, r5, #0
	bl sub_0219DA88
	cmp r0, #1
	bne _0219CD12
	mov r1, #0xa8
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #0xc0
	strb r1, [r0, #0x13]
	mov r1, #0xe0
	strb r1, [r0, #0x14]
	mov r1, #0xf8
	strb r1, [r0, #0x15]
_0219CD12:
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219CD2A
	mov r1, #0xa8
	add r0, sp, #0
	strb r1, [r0, #0x16]
	mov r1, #0xc0
	strb r1, [r0, #0x17]
	mov r1, #0xd0
	strb r1, [r0, #0x18]
	mov r1, #0xe8
	strb r1, [r0, #0x19]
_0219CD2A:
	add r0, sp, #0xc
	add r0, #2
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219CD52
	mov r0, #1
	strb r4, [r5, #0xf]
	str r0, [r5, #8]
	cmp r4, #1
	bne _0219CD52
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_0204C488
_0219CD52:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0219CDC2
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219CDC2
	ldr r3, _0219CDD0 ; =0x021A4B5C
	add r2, sp, #0
	mov r1, #8
_0219CD66:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0219CD66
	mov r1, #0xa8
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0xc0
	strb r1, [r0, #1]
	mov r1, #0xb8
	strb r1, [r0, #2]
	mov r4, #0xd0
	strb r4, [r0, #3]
	add r0, sp, #0
	bl sub_0203DA0C
	sub r4, #0xd1
	cmp r0, r4
	beq _0219CDC2
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r4, #1
	add r0, r2, #0
	add r0, #0xa5
	ldrb r0, [r0]
	add r2, #0xa5
	eor r0, r4
	strb r0, [r2]
	add r0, r1, #0
	ldr r1, [r5, r1]
	sub r0, #0xa0
	add r1, #0xa5
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	add r1, r1, #6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, _0219CDD4 ; =0x00000646
	bl sub_02006254
	str r4, [r5, #8]
_0219CDC2:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0219CDC8: .word 0x00000557
_0219CDCC: .word 0x021A4B64
_0219CDD0: .word 0x021A4B5C
_0219CDD4: .word 0x00000646
	thumb_func_end ovy165_219cb80

	thumb_func_start ovy165_219cdd8
ovy165_219cdd8: ; 0x0219CDD8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r4, #0x59
	add r5, r0, #0
	lsl r1, r6, #2
	add r7, sp, #0
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r2, r7, #0
	bl sub_0219F424
	add r0, r4, #0
	add r0, #0x78
	add r1, r7, #0
	ldr r0, [r5, r0]
	mov r2, #0
	mov r7, #0
	bl sub_0204C140
	add r0, r4, #0
	add r0, #0x78
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x78
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0204C468
	cmp r6, #0
	bne _0219CE28
	add r4, #0x78
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_0219CE28:
	add r4, #0x78
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219cdd8

	thumb_func_start ovy165_219ce34
ovy165_219ce34: ; 0x0219CE34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r4, #0x59
	add r5, r0, #0
	lsl r1, r6, #2
	add r7, sp, #0
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r2, r7, #0
	bl sub_0219F424
	add r0, r4, #0
	add r0, #0x7c
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	add r0, #0x7c
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x7c
	ldr r0, [r5, r0]
	mov r1, #2
	mov r7, #2
	bl sub_0204C468
	cmp r6, #0
	bne _0219CE84
	add r4, #0x7c
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_0219CE84:
	add r4, #0x7c
	ldr r0, [r5, r4]
	mov r1, #3
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219ce34

	thumb_func_start ovy165_219ce90
ovy165_219ce90: ; 0x0219CE90
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0219CEA4
	cmp r1, #1
	beq _0219CEAE
	cmp r1, #2
	beq _0219CEDE
	pop {r3, r4, r5, pc}
_0219CEA4:
	bl ovy165_219ceec
	mov r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_0219CEAE:
	mov r5, #0x56
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	bl sub_0219FC34
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219fc40
	cmp r0, #0x19
	beq _0219CECA
	str r0, [r4, #0x40]
	mov r0, #2
	strb r0, [r4, #0xe]
_0219CECA:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219CEE8
	mov r0, #2
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_0219CEDE:
	bl ovy165_219cf70
	add r0, r4, #0
	bl ovy165_219cfe4
_0219CEE8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_219ce90

	thumb_func_start ovy165_219ceec
ovy165_219ceec: ; 0x0219CEEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #6
	strb r0, [r5, #0xc]
	mov r0, #0
	ldr r4, _0219CF64 ; =0x04000050
	strb r0, [r5, #0xe]
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #8
	bl sub_02074A88
	add r0, r4, #0
	add r2, r4, #0
	ldr r1, _0219CF68 ; =0x0000E0F8
	sub r0, #0x10
	strh r1, [r0]
	add r0, r4, #0
	ldr r1, _0219CF6C ; =0x0000A8C0
	sub r0, #0xc
	strh r1, [r0]
	sub r2, #8
	ldrh r3, [r2]
	mov r0, #0x3f
	mov r1, #0x1f
	bic r3, r0
	orr r3, r1
	strh r3, [r2]
	sub r2, r4, #6
	ldrh r3, [r2]
	mov r4, #0x7a
	lsl r4, r4, #2
	bic r3, r0
	orr r1, r3
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	mov r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0
	bl sub_02045B7C
	ldr r0, [r5, #8]
	bl sub_0203D564
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CF64: .word 0x04000050
_0219CF68: .word 0x0000E0F8
_0219CF6C: .word 0x0000A8C0
	thumb_func_end ovy165_219ceec

	thumb_func_start ovy165_219cf70
ovy165_219cf70: ; 0x0219CF70
	push {r3, r4, r5, lr}
	mov r5, #0x56
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	bl ovy165_219fbfc
	sub r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f7fc
	add r0, r4, #0
	bl sub_0219DA58
	cmp r0, #1
	beq _0219CF9C
	add r0, r4, #0
	bl sub_0219DA88
	cmp r0, #0
	bne _0219CFA6
_0219CF9C:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	b _0219CFAC
_0219CFA6:
	add r5, #0x8c
	ldr r0, [r4, r5]
	mov r1, #1
_0219CFAC:
	bl sub_0204C124
	ldr r0, [r4, #0x40]
	cmp r0, #4
	beq _0219CFCE
	cmp r0, #5
	beq _0219CFCE
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0219CFE0 ; =0x04000050
	mov r1, #0x14
	mov r2, #8
	mov r3, #0x10
	bl sub_02074A6C
	mov r0, #0
	str r0, [r4, #0x10]
_0219CFCE:
	mov r0, #0
	mov r1, #0
	bl sub_02045790
	bl sub_0203D554
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	nop
_0219CFE0: .word 0x04000050
	thumb_func_end ovy165_219cf70

	thumb_func_start ovy165_219cfe4
ovy165_219cfe4: ; 0x0219CFE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	mov r5, #0xa3
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r2, r1, #0
	add r2, #0x73
	ldrb r2, [r2]
	cmp r2, #1
	bne _0219D002
	mov r0, #0x13
	add sp, #0x44
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, r7, pc}
_0219D002:
	ldr r2, [r4, #0x40]
	cmp r2, #0x17
	bls _0219D00A
	b _0219D6E8
_0219D00A:
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0219D016: ; jump table
	.short _0219D15E - _0219D016 - 2 ; case 0
	.short _0219D6E8 - _0219D016 - 2 ; case 1
	.short _0219D6E8 - _0219D016 - 2 ; case 2
	.short _0219D05E - _0219D016 - 2 ; case 3
	.short _0219D09A - _0219D016 - 2 ; case 4
	.short _0219D118 - _0219D016 - 2 ; case 5
	.short _0219D046 - _0219D016 - 2 ; case 6
	.short _0219D50A - _0219D016 - 2 ; case 7
	.short _0219D6E8 - _0219D016 - 2 ; case 8
	.short _0219D4D8 - _0219D016 - 2 ; case 9
	.short _0219D2CE - _0219D016 - 2 ; case 10
	.short _0219D4C6 - _0219D016 - 2 ; case 11
	.short _0219D4EA - _0219D016 - 2 ; case 12
	.short _0219D4FC - _0219D016 - 2 ; case 13
	.short _0219D6E8 - _0219D016 - 2 ; case 14
	.short _0219D6E8 - _0219D016 - 2 ; case 15
	.short _0219D51C - _0219D016 - 2 ; case 16
	.short _0219D51C - _0219D016 - 2 ; case 17
	.short _0219D51C - _0219D016 - 2 ; case 18
	.short _0219D51C - _0219D016 - 2 ; case 19
	.short _0219D170 - _0219D016 - 2 ; case 20
	.short _0219D24A - _0219D016 - 2 ; case 21
	.short _0219D3EA - _0219D016 - 2 ; case 22
	.short _0219D3EA - _0219D016 - 2 ; case 23
_0219D046:
	ldr r1, [r4, #0x30]
	bl ovy165_219cdd8
	mov r0, #0
	str r0, [r4, #0x3c]
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, r4, #0
	bl ovy165_219b19c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D05E:
	ldr r1, [r4, #0x30]
	bl ovy165_219cdd8
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219ce34
	mov r2, #0
	ldr r0, [r4, #0x30]
	mov r5, #0x55
	str r0, [r4, #0x34]
	mov r0, #3
	strb r0, [r4, #0xc]
	str r2, [r4, #0x3c]
	str r2, [r4, #0x14]
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f76c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0xb
	bl ovy165_219f840
	add r0, r4, #0
	bl ovy165_219bb68
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D09A:
	ldr r0, [r1]
	ldr r1, [r4, #0x30]
	bl sub_0201FF08
	mov r1, #6
	mov r2, #0
	add r5, r0, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	mov r5, #5
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	ldr r3, _0219D3B8 ; =0x021A4B88
	lsr r6, r0, #0x10
	add r2, sp, #0x1c
_0219D0C4:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r5, r5, #1
	bne _0219D0C4
	add r0, r4, #0
	bl ovy165_219ceec
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #2
	bl ovy165_219f76c
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0x14
	bl ovy165_219f840
	cmp r7, #0x70
	bne _0219D100
	add r0, r5, #0
	add r0, #0x93
	cmp r6, r0
	bne _0219D100
	add r1, r5, #4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r2, sp, #0x30
	b _0219D10A
_0219D100:
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #0x1c
_0219D10A:
	bl ovy165_219fb54
	mov r0, #0
	bl sub_02044F90
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D118:
	ldr r3, _0219D3BC ; =0x021A4B74
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	add r5, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	bl ovy165_219ceec
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #2
	bl ovy165_219f76c
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #0x14
	bl ovy165_219f840
	add r1, r6, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy165_219fb54
	mov r0, #0
	bl sub_02044F90
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D15E:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	add sp, #0x44
	str r0, [r1, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #1
	str r1, [r0, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219D170:
	ldr r6, [r1, #0x14]
	ldr r1, [r4, #0x30]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	mov r7, #0
	bl ovy165_219f4f0
	cmp r0, #0
	bne _0219D1C2
	ldr r1, [r4, #0x30]
	add r2, r5, #0
	lsl r1, r1, #2
	sub r2, #0x5b
	add r1, r4, r1
	ldrb r2, [r4, r2]
	ldr r1, [r1, r5]
	add r0, r4, #0
	bl ovy165_219f490
	add r0, r5, #0
	sub r0, #0x5b
	ldrb r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	sub r0, #0x5b
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ovy165_219b19c
	sub r5, #0x5b
	ldrb r1, [r4, r5]
	ldrb r0, [r6, #3]
	cmp r1, r0
	bne _0219D1BC
	mov r7, #1
_0219D1BC:
	mov r0, #2
	strb r0, [r4, #0xc]
	b _0219D1EE
_0219D1C2:
	cmp r0, #2
	bne _0219D1CC
	add r0, r4, #0
	mov r1, #0x9c
	b _0219D1E0
_0219D1CC:
	cmp r0, #3
	bne _0219D1D6
	add r0, r4, #0
	mov r1, #0x9d
	b _0219D1E0
_0219D1D6:
	cmp r0, #4
	bne _0219D1EE
	ldrb r1, [r6, #3]
	add r0, r4, #0
	add r1, #0x66
_0219D1E0:
	ldr r3, _0219D3C0 ; =ovy165_219ddf4
	mov r2, #1
	bl ovy165_219d74c
	ldr r0, _0219D3C4 ; =0x00000557
	bl sub_02006254
_0219D1EE:
	mov r6, #0
	str r6, [r4, #0x3c]
	cmp r7, #1
	bne _0219D236
	ldr r1, [r4, #0x30]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	add r2, r6, #0
	bl ovy165_219efc8
	mov r1, #6
	ldr r0, [r4, #8]
	str r1, [r4, #0x30]
	cmp r0, #0
	bne _0219D23C
	sub r0, r1, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r4, r0
	add r0, r5, #0
	sub r0, #0x58
	ldr r0, [r1, r0]
	mov r1, #1
	bl ovy165_219fed8
	add r5, #0x78
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl sub_0204C124
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D236:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219D23E
_0219D23C:
	b _0219D6FE
_0219D23E:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D24A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0219F48C
	add r7, r0, #0
	mov r5, #0
_0219D25E:
	lsl r0, r5, #2
	add r6, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0219F48C
	add r2, r0, #0
	cmp r2, #5
	bgt _0219D284
	cmp r2, r7
	ble _0219D284
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r0, r4, #0
	sub r2, r2, #1
	bl ovy165_219f490
_0219D284:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _0219D25E
	ldr r1, [r4, #0x30]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	mov r2, #6
	bl ovy165_219f490
	add r0, r5, #0
	sub r0, #0x5b
	ldrb r0, [r4, r0]
	sub r5, #0x5b
	sub r0, r0, #1
	strb r0, [r4, r5]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0219D2BC
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
_0219D2BC:
	mov r0, #0
	str r0, [r4, #0x3c]
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, r4, #0
	bl ovy165_219b19c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D2CE:
	ldr r0, [r4, #0x3c]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_21a02c8
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_21a0304
	cmp r6, #0
	bne _0219D322
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r5]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, _0219D3C0 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x3e
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D322:
	lsl r1, r6, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0219E634
	ldr r1, _0219D3C8 ; =0x000003E7
	cmp r0, r1
	bne _0219D342
	ldr r3, _0219D3C0 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x40
	mov r2, #1
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D342:
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_219e5fc
	ldr r1, [r4, #0x30]
	mov r7, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r7, r7, #2
	ldr r1, [r1, r7]
	add r0, r4, #0
	bl ovy165_219f310
	add r1, r7, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	add r1, r7, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	sub r7, #0x10
	ldr r1, [r4, r7]
	lsl r3, r6, #0x10
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	mov r7, #1
	bl sub_0219FA08
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a207c
	cmp r0, #1
	bne _0219D3B4
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a20c0
	ldr r3, _0219D3CC ; =ovy165_219e4b8
	add r0, r4, #0
	mov r1, #0x3f
	add r2, r7, #0
	bl ovy165_219d74c
	mov r0, #2
	sub r5, #0x18
	str r0, [r4, r5]
	b _0219D3DA
_0219D3B4:
	ldr r3, _0219D3C0 ; =ovy165_219ddf4
	b _0219D3D0
	.align 2, 0
_0219D3B8: .word 0x021A4B88
_0219D3BC: .word 0x021A4B74
_0219D3C0: .word ovy165_219ddf4
_0219D3C4: .word 0x00000557
_0219D3C8: .word 0x000003E7
_0219D3CC: .word ovy165_219e4b8
_0219D3D0:
	add r0, r4, #0
	mov r1, #0x3f
	add r2, r7, #0
	bl ovy165_219d74c
_0219D3DA:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D3EA:
	ldr r0, [r4, #0x3c]
	mov r1, #6
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_21a02c8
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_21a0304
	ldr r1, [r4, #0x30]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	bl ovy165_219f310
	cmp r6, #0
	bne _0219D458
	add r1, r5, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	add r1, r5, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0219F9F8
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x3e
	mov r2, #1
	bl ovy165_219d74c
	sub r5, #0x10
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D458:
	add r1, r5, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9d8
	add r1, r5, #0
	sub r1, #0x10
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0219F9F8
	add r1, r5, #0
	sub r1, #0x10
	lsl r3, r6, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0219FA08
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219ce34
	ldr r0, [r4, #0x30]
	add r1, r5, #0
	str r0, [r4, #0x34]
	mov r0, #0x16
	strb r0, [r4, #0xc]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x14]
	sub r1, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, r7, #0
	bl ovy165_219f76c
	sub r5, #0x10
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0xb
	bl ovy165_219f840
	add r0, r4, #0
	bl ovy165_219bb68
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D4C6:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	add sp, #0x44
	str r0, [r1, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #0
	str r1, [r0, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219D4D8:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	add sp, #0x44
	str r0, [r1, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #3
	str r1, [r0, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219D4EA:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	add sp, #0x44
	str r0, [r1, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #7
	str r1, [r0, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219D4FC:
	ldr r3, _0219D708 ; =0x0219E369
	mov r1, #0x18
	mov r2, #0
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D50A:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x30]
	add sp, #0x44
	str r0, [r1, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #0
	str r1, [r0, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219D51C:
	ldr r0, [r1, #0x44]
	cmp r0, #5
	ldr r0, [r4, #0x3c]
	bne _0219D5A4
	add r1, #0x54
	sub r2, #0x10
	lsl r2, r2, #0x10
	ldrh r1, [r1]
	ldrh r3, [r4]
	lsr r2, r2, #0x10
	bl ovy165_21a23e8
	cmp r0, #1
	bne _0219D59A
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	add r1, #0x26
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	mov r0, #0
	bl sub_02044F90
	add r0, r4, #0
	add r1, r6, #0
	bl ovy165_21a03bc
	ldr r3, [r4, r5]
	ldrh r0, [r4]
	add r1, r3, #0
	add r1, #0x54
	str r0, [sp]
	ldr r2, [r4, #0x40]
	add r3, #0x40
	sub r2, #0x10
	lsl r2, r2, #0x10
	ldrh r1, [r1]
	ldrh r3, [r3]
	ldr r0, [r4, #0x3c]
	lsr r2, r2, #0x10
	bl ovy165_21a2928
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl ovy165_219f310
	ldr r1, [r4, r5]
	add r0, r4, #0
	add r1, #0x54
	ldrh r1, [r1]
	bl ovy165_219e648
	ldr r0, _0219D70C ; =0x0000056F
	bl sub_02006254
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D59A:
	add r0, r4, #0
	bl sub_021A039C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D5A4:
	sub r2, #0x10
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	bl ovy165_219d9b8
	add r6, r0, #0
	sub r0, #0x16
	cmp r0, #1
	bhi _0219D64C
	ldr r0, [r4, r5]
	add r0, #0x40
	ldrh r0, [r0]
	bl sub_02018C38
	cmp r0, #0
	bne _0219D5D4
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x51
	mov r2, #1
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D5D4:
	ldr r0, [r4, #0x3c]
	mov r1, #0xa1
	mov r2, #0
	mov r7, #0
	bl sub_0201CCF8
	str r0, [sp, #4]
	ldr r0, [r4, #0x3c]
	mov r1, #0xa0
	mov r2, #0
	mov r5, #0xa0
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r1, #5
	blx sub_0208D868
	cmp r6, r0
	bls _0219D63C
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219ce34
	ldr r0, [r4, #0x30]
	add r1, r5, #0
	str r0, [r4, #0x38]
	mov r0, #4
	strb r0, [r4, #0xc]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x14]
	add r1, #0xb4
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, r7, #0
	bl ovy165_219f76c
	add r5, #0xb4
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0x11
	bl ovy165_219f840
	add r0, r4, #0
	bl ovy165_219bb68
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D63C:
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x75
	mov r2, #1
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D64C:
	ldr r1, [r4, r5]
	add r0, r6, #0
	sub r0, #0xb
	add r1, #0x2c
	bl sub_021593FC
	cmp r0, #4
	bhi _0219D6FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D668: ; jump table
	.short _0219D672 - _0219D668 - 2 ; case 0
	.short _0219D684 - _0219D668 - 2 ; case 1
	.short _0219D694 - _0219D668 - 2 ; case 2
	.short _0219D6A4 - _0219D668 - 2 ; case 3
	.short _0219D6D8 - _0219D668 - 2 ; case 4
_0219D672:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r5]
	add sp, #0x44
	str r1, [r0, #0x4c]
	ldr r0, [r4, r5]
	str r6, [r0, #0x50]
	pop {r4, r5, r6, r7, pc}
_0219D684:
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x51
	mov r2, #1
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D694:
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #1
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D6A4:
	mov r5, #0x55
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r3, _0219D710 ; =0x021A4A1A
	lsl r6, r6, #1
	ldrh r3, [r3, r6]
	ldr r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219FA28
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0xab
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D6D8:
	ldr r3, _0219D704 ; =ovy165_219ddf4
	add r0, r4, #0
	mov r1, #0x50
	mov r2, #1
	bl ovy165_219d74c
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219D6E8:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_219cdd8
	mov r0, #0
	str r0, [r4, #0x3c]
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, r4, #0
	bl ovy165_219b19c
_0219D6FE:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0219D704: .word ovy165_219ddf4
_0219D708: .word 0x0219E369
_0219D70C: .word 0x0000056F
_0219D710: .word 0x021A4A1A
	thumb_func_end ovy165_219cfe4

	thumb_func_start ovy165_219d714
ovy165_219d714: ; 0x0219D714
	push {r4, lr}
	mov r1, #0x55
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_0219F958
	cmp r0, #1
	bne _0219D74A
	bl sub_0203DEFC
	mov r1, #1
	tst r0, r1
	beq _0219D734
	mov r0, #0
	str r0, [r4, #8]
_0219D734:
	bl sub_0203DA48
	cmp r0, #1
	bne _0219D740
	mov r0, #1
	str r0, [r4, #8]
_0219D740:
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
_0219D74A:
	pop {r4, pc}
	thumb_func_end ovy165_219d714

	thumb_func_start ovy165_219d74c
ovy165_219d74c: ; 0x0219D74C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r4, #0x52
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #7
	strb r1, [r5, #0xc]
	lsl r4, r4, #2
	str r6, [r5, r4]
	add r1, r4, #4
	str r3, [r5, r1]
	add r1, r4, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	mov r2, #3
	bl ovy165_219f76c
	add r1, r4, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy165_219f8b8
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r4, #0xa4
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219d74c

	thumb_func_start ovy165_219d7a4
ovy165_219d7a4: ; 0x0219D7A4
	push {r3, r4, r5, lr}
	mov r4, #0x56
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl sub_0219FC34
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219fc40
	add r1, r0, #0
	cmp r1, #0x19
	beq _0219D7D2
	add r2, r4, #0
	sub r2, #8
	ldr r2, [r5, r2]
	add r0, r5, #0
	blx r2
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219fbfc
_0219D7D2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219d7a4
_0219D7D4:
	.byte 0x09, 0x22, 0x02, 0x73, 0x15, 0x22, 0x12, 0x01, 0x81, 0x50, 0x08, 0x32
	.byte 0x81, 0x58, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x9D, 0xFB, 0x19, 0x02

	thumb_func_start ovy165_219d7ec
ovy165_219d7ec: ; 0x0219D7EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r1, [r5, #0xe]
	cmp r1, #3
	beq _0219D7FC
	cmp r1, #4
	beq _0219D8C2
	pop {r4, r5, r6, pc}
_0219D7FC:
	mov r4, #0x59
	ldr r1, [r5, #0x30]
	lsl r4, r4, #2
	add r2, r4, #0
	lsl r1, r1, #2
	sub r2, #0x5c
	add r1, r5, r1
	ldrb r2, [r5, r2]
	ldr r1, [r1, r4]
	bl ovy165_219f1f0
	ldr r1, [r5, #0x34]
	add r2, r4, #0
	lsl r1, r1, #2
	sub r2, #0x5c
	add r1, r5, r1
	ldrb r2, [r5, r2]
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f1f0
	add r0, r4, #0
	sub r0, #0x5c
	ldrb r0, [r5, r0]
	add r2, r4, #0
	sub r2, #0x5c
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0x5c
	strb r1, [r5, r0]
	ldr r1, [r5, #0x30]
	ldrb r2, [r5, r2]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f114
	ldr r1, [r5, #0x34]
	add r2, r4, #0
	lsl r1, r1, #2
	sub r2, #0x5c
	add r1, r5, r1
	ldrb r2, [r5, r2]
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f114
	add r0, r4, #0
	sub r0, #0x5c
	ldrb r0, [r5, r0]
	cmp r0, #0x10
	blo _0219D930
	mov r6, #0xa3
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldrh r3, [r5]
	ldr r0, [r0]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x34]
	bl sub_0201FF58
	ldr r0, [r5, r6]
	ldr r1, [r5, #0x30]
	ldr r0, [r0]
	bl sub_0201FF08
	ldr r1, [r5, #0x30]
	add r3, r4, #0
	lsl r1, r1, #2
	sub r3, #0x5c
	add r1, r5, r1
	add r2, r0, #0
	ldrb r3, [r5, r3]
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f250
	ldr r0, [r5, r6]
	ldr r1, [r5, #0x34]
	ldr r0, [r0]
	bl sub_0201FF08
	ldr r1, [r5, #0x34]
	add r2, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	sub r4, #0x5c
	ldrb r3, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f250
	mov r0, #4
	strb r0, [r5, #0xe]
	ldr r0, _0219D934 ; =0x00000642
	bl sub_02006254
	pop {r4, r5, r6, pc}
_0219D8C2:
	mov r4, #0x59
	ldr r1, [r5, #0x30]
	lsl r4, r4, #2
	add r2, r4, #0
	lsl r1, r1, #2
	sub r2, #0x5c
	add r1, r5, r1
	ldrb r2, [r5, r2]
	ldr r1, [r1, r4]
	bl ovy165_219f1f0
	ldr r1, [r5, #0x34]
	add r2, r4, #0
	lsl r1, r1, #2
	sub r2, #0x5c
	add r1, r5, r1
	ldrb r2, [r5, r2]
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f1f0
	add r0, r4, #0
	sub r0, #0x5c
	ldrb r0, [r5, r0]
	add r2, r4, #0
	sub r2, #0x5c
	sub r1, r0, #1
	add r0, r4, #0
	sub r0, #0x5c
	strb r1, [r5, r0]
	ldr r1, [r5, #0x30]
	ldrb r2, [r5, r2]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f114
	ldr r1, [r5, #0x34]
	add r2, r4, #0
	lsl r1, r1, #2
	sub r2, #0x5c
	add r1, r5, r1
	ldrb r2, [r5, r2]
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f114
	sub r4, #0x5c
	ldrb r0, [r5, r4]
	cmp r0, #0
	bne _0219D930
	add r0, r5, #0
	bl ovy165_219d970
_0219D930:
	pop {r4, r5, r6, pc}
	nop
_0219D934: .word 0x00000642
	thumb_func_end ovy165_219d7ec

	thumb_func_start ovy165_219d938
ovy165_219d938: ; 0x0219D938
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	strb r0, [r5, #0xc]
	mov r0, #3
	mov r4, #0x42
	strb r0, [r5, #0xe]
	mov r0, #0
	lsl r4, r4, #2
	strb r0, [r5, r4]
	ldr r0, _0219D96C ; =0x00000641
	bl sub_02006254
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r4, #0xd8
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	nop
_0219D96C: .word 0x00000641
	thumb_func_end ovy165_219d938

	thumb_func_start ovy165_219d970
ovy165_219d970: ; 0x0219D970
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x3c]
	mov r1, #2
	strb r1, [r4, #0xc]
	ldr r1, [r4, #0x30]
	bl ovy165_219cdd8
	ldr r1, [r4, #0x34]
	mov r5, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy165_219efc8
	add r5, #0x7c
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	mov r0, #9
	str r0, [r4, #0x34]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r0]
	str r1, [r0, #0x4c]
	add r0, r4, #0
	bl ovy165_219b19c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_219d970

	thumb_func_start ovy165_219d9b8
ovy165_219d9b8: ; 0x0219D9B8
	push {r3, lr}
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0x7f
	bhi _0219D9F2
	bhs _0219DA2C
	cmp r0, #0x46
	bhi _0219D9E4
	bhs _0219DA28
	cmp r0, #0x13
	bhi _0219D9DE
	cmp r0, #0xf
	blo _0219DA50
	beq _0219DA1C
	cmp r0, #0x13
	beq _0219DA20
	b _0219DA50
_0219D9DE:
	cmp r0, #0x39
	beq _0219DA24
	b _0219DA50
_0219D9E4:
	cmp r0, #0x5b
	bhi _0219D9EC
	beq _0219DA38
	b _0219DA50
_0219D9EC:
	cmp r0, #0x64
	beq _0219DA34
	b _0219DA50
_0219D9F2:
	cmp r0, #0xd0
	bhi _0219DA06
	bhs _0219DA48
	cmp r0, #0x87
	bhi _0219DA00
	beq _0219DA4C
	b _0219DA50
_0219DA00:
	cmp r0, #0x94
	beq _0219DA30
	b _0219DA50
_0219DA06:
	ldr r1, _0219DA54 ; =0x00000123
	cmp r0, r1
	bhi _0219DA14
	bhs _0219DA44
	cmp r0, #0xe6
	beq _0219DA3C
	b _0219DA50
_0219DA14:
	add r1, #0x9d
	cmp r0, r1
	beq _0219DA40
	b _0219DA50
_0219DA1C:
	mov r0, #0xb
	pop {r3, pc}
_0219DA20:
	mov r0, #0xf
	pop {r3, pc}
_0219DA24:
	mov r0, #0xc
	pop {r3, pc}
_0219DA28:
	mov r0, #0xe
	pop {r3, pc}
_0219DA2C:
	mov r0, #0xd
	pop {r3, pc}
_0219DA30:
	mov r0, #0x10
	pop {r3, pc}
_0219DA34:
	mov r0, #0x11
	pop {r3, pc}
_0219DA38:
	mov r0, #0x12
	pop {r3, pc}
_0219DA3C:
	mov r0, #0x13
	pop {r3, pc}
_0219DA40:
	mov r0, #0x14
	pop {r3, pc}
_0219DA44:
	mov r0, #0x15
	pop {r3, pc}
_0219DA48:
	mov r0, #0x16
	pop {r3, pc}
_0219DA4C:
	mov r0, #0x17
	pop {r3, pc}
_0219DA50:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0219DA54: .word 0x00000123
	thumb_func_end ovy165_219d9b8

	thumb_func_start sub_0219DA58
sub_0219DA58: ; 0x0219DA58
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x44]
	cmp r0, #1
	beq _0219DA6A
	sub r0, #0x16
	cmp r0, #1
	bhi _0219DA6E
_0219DA6A:
	mov r0, #1
	bx lr
_0219DA6E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DA58

	thumb_func_start sub_0219DA74
sub_0219DA74: ; 0x0219DA74
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x44]
	cmp r0, #1
	beq _0219DA84
	mov r0, #1
	bx lr
_0219DA84:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219DA74

	thumb_func_start sub_0219DA88
sub_0219DA88: ; 0x0219DA88
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x44]
	cmp r0, #0x15
	beq _0219DA98
	mov r0, #1
	bx lr
_0219DA98:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219DA88

	thumb_func_start ovy165_219da9c
ovy165_219da9c: ; 0x0219DA9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r2, [sp]
	ldr r0, [r7, #0x18]
	add r4, r1, #0
	mov r6, #0
	cmp r0, #1
	bne _0219DB52
	mov r0, #0xa3
	lsl r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	ldr r1, _0219DBC0 ; =0x0000FFFE
	add r0, #0x56
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _0219DAD4
	ldr r0, _0219DBC4 ; =0x00000152
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	sub r0, #0x1f
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [sp, #4]
	sub r0, #0x1e
	b _0219DAF2
_0219DAD4:
	sub r1, r1, #1
	cmp r0, r1
	bne _0219DAF0
	ldr r0, [sp, #4]
	str r0, [sp, #0xc]
	sub r0, #0x84
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	sub r0, #0x85
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, #0x86
	b _0219DAF2
_0219DAF0:
	str r0, [sp, #8]
_0219DAF2:
	str r0, [sp, #4]
	mov r5, #0
_0219DAF6:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0219DB14
	ldr r1, [sp, #8]
	cmp r0, r1
	beq _0219DB14
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _0219DB1A
_0219DB14:
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0219DB1A:
	cmp r0, #0
	bne _0219DB20
	mov r6, #1
_0219DB20:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219DAF6
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [sp]
	add r0, #0x6e
	ldrb r3, [r0]
	mov r2, #1
	lsl r2, r1
	add r1, r3, #0
	mov r0, #1
	tst r1, r2
	beq _0219DB4C
	cmp r6, #1
	bne _0219DBBC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DB4C:
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0219DB52:
	add r5, r6, #0
_0219DB54:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	add r2, r1, #0
	add r2, #0x56
	ldrh r2, [r2]
	cmp r0, r2
	bne _0219DB76
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0219DB76:
	cmp r0, #0
	bne _0219DB7C
	mov r6, #1
_0219DB7C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219DB54
	add r1, #0x54
	ldrh r0, [r1]
	cmp r0, #0
	beq _0219DBB4
	bl sub_02026B40
	add r1, r0, #0
	cmp r1, #0xff
	beq _0219DBAE
	add r0, r4, #0
	bl sub_0201D8DC
	cmp r0, #1
	bne _0219DBAE
	mov r0, #0
	cmp r6, #1
	beq _0219DBBC
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219DBAE:
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0219DBB4:
	mov r0, #0
	cmp r6, #1
	beq _0219DBBC
	mov r0, #1
_0219DBBC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DBC0: .word 0x0000FFFE
_0219DBC4: .word 0x00000152
	thumb_func_end ovy165_219da9c

	thumb_func_start ovy165_219dbc8
ovy165_219dbc8: ; 0x0219DBC8
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r2, #0
	mov r2, #0xa3
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	add r4, r2, #0
	add r4, #0x6f
	ldrb r4, [r4]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r2]
	mov r2, #3
	bl sub_02020788
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy165_219dbc8

	thumb_func_start ovy165_219dbf0
ovy165_219dbf0: ; 0x0219DBF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0x4e
	add r5, r0, #0
	lsl r4, r4, #2
	str r1, [sp, #0xc]
	ldr r0, [r5, r4]
	add r1, r2, #0
	add r7, r3, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #4
	str r6, [sp]
	ldr r0, [r5, r0]
	lsl r2, r7, #0x10
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #4]
	add r4, #0xc
	asr r2, r2, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	mov r4, #0
	ldrsh r3, [r3, r4]
	bl sub_02021C7C
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219dbf0

	thumb_func_start ovy165_219dc38
ovy165_219dc38: ; 0x0219DC38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0x4e
	add r5, r0, #0
	lsl r4, r4, #2
	str r1, [sp, #0xc]
	ldr r0, [r5, r4]
	add r1, r2, #0
	add r7, r3, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	lsl r2, r7, #0x10
	str r6, [sp]
	add r0, #8
	ldr r0, [r5, r0]
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #4]
	add r4, #0xc
	asr r2, r2, #0x10
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	mov r4, #0
	ldrsh r3, [r3, r4]
	bl sub_02021C7C
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219dc38

	thumb_func_start ovy165_219dc84
ovy165_219dc84: ; 0x0219DC84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x4e
	add r5, r0, #0
	lsl r4, r4, #2
	str r1, [sp, #8]
	ldr r0, [r5, r4]
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #8]
	bl sub_020484F4
	add r4, #8
	ldr r1, [r5, r4]
	add r3, sp, #0x20
	str r1, [sp]
	ldrh r1, [r3, #4]
	mov r2, #0
	str r1, [sp, #4]
	ldrsh r2, [r3, r2]
	lsl r1, r6, #0x10
	asr r1, r1, #0x10
	add r3, r7, #0
	bl sub_02021D28
	add r0, r7, #0
	bl sub_02048564
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219dc84

	thumb_func_start ovy165_219dcc8
ovy165_219dcc8: ; 0x0219DCC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldrh r1, [r5]
	mov r0, #0x10
	str r2, [sp, #0x10]
	add r7, r3, #0
	bl sub_02048530
	mov r4, #0x4e
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02024920
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #4
	str r6, [sp]
	ldr r0, [r5, r0]
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #8]
	add r4, #0xc
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	mov r4, #4
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r4]
	bl sub_02021C7C
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219dcc8

	thumb_func_start ovy165_219dd2c
ovy165_219dd2c: ; 0x0219DD2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldrh r1, [r5]
	mov r0, #0x10
	str r2, [sp, #0x10]
	add r7, r3, #0
	bl sub_02048530
	mov r4, #0x4e
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02024920
	ldr r0, [sp, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	str r6, [sp]
	add r0, #8
	ldr r0, [r5, r0]
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #8]
	add r4, #0xc
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	mov r4, #4
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r4]
	bl sub_02021C7C
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219dd2c

	thumb_func_start ovy165_219dd94
ovy165_219dd94: ; 0x0219DD94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #8]
	ldrh r1, [r5]
	mov r0, #0x10
	str r2, [sp, #0xc]
	add r7, r3, #0
	bl sub_02048530
	mov r4, #0x4e
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02024920
	ldr r0, [sp, #8]
	bl sub_020484F4
	add r4, #8
	ldr r1, [r5, r4]
	add r3, sp, #0x28
	str r1, [sp]
	ldrh r1, [r3, #8]
	mov r2, #4
	str r1, [sp, #4]
	mov r1, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r3, r6, #0
	bl sub_02021D28
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219dd94

	thumb_func_start ovy165_219ddf4
ovy165_219ddf4: ; 0x0219DDF4
	push {r4, lr}
	mov r1, #0x55
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy165_219f7fc
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, r4, #0
	bl ovy165_219b19c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219ddf4
_0219DE10:
	.byte 0x13, 0x21, 0x01, 0x73, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy165_219de18
ovy165_219de18: ; 0x0219DE18
	push {r4, r5, r6, lr}
	mov r6, #0xa3
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r1, #0x54
	ldrh r1, [r1]
	bl sub_0219E634
	cmp r0, #0
	beq _0219DE46
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f7fc
	mov r0, #2
	strb r0, [r5, #0xc]
	add r0, r5, #0
	bl ovy165_219b19c
	pop {r4, r5, r6, pc}
_0219DE46:
	mov r4, #0x55
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f7fc
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r3, [r5, r6]
	ldr r1, [r5, r4]
	add r3, #0x54
	ldrh r3, [r3]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219FA08
	ldr r3, _0219DE80 ; =0x0219DE11
	add r0, r5, #0
	mov r1, #0xbf
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219DE80: .word 0x0219DE11
	thumb_func_end ovy165_219de18
_0219DE84:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x95, 0xDE, 0x19, 0x02
	.byte 0xD5, 0xD7, 0x19, 0x02

	thumb_func_start ovy165_219de94
ovy165_219de94: ; 0x0219DE94
	push {r4, r5, r6, lr}
	mov r6, #0x55
	add r5, r0, #0
	lsl r6, r6, #2
	add r4, r1, #0
	ldr r1, [r5, r6]
	bl ovy165_219f7fc
	cmp r4, #0xe
	bne _0219DECE
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x44]
	cmp r0, #5
	beq _0219DEB8
	cmp r0, #8
	bne _0219DEBC
_0219DEB8:
	mov r0, #5
	b _0219DEBE
_0219DEBC:
	mov r0, #4
_0219DEBE:
	str r0, [r1, #0x50]
	ldr r3, _0219DF00 ; =0x0219DE11
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #1
	bl ovy165_219d74c
	pop {r4, r5, r6, pc}
_0219DECE:
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy165_219f9d8
	mov r3, #0xa3
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r1, [r5, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r5, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219DF04 ; =0x0219DF09
	add r0, r5, #0
	mov r1, #0x24
	mov r2, #0
	bl ovy165_219d74c
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219DF00: .word 0x0219DE11
_0219DF04: .word 0x0219DF09
	thumb_func_end ovy165_219de94
_0219DF08:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x19, 0xDF, 0x19, 0x02, 0xD5, 0xD7, 0x19, 0x02

	thumb_func_start ovy165_219df18
ovy165_219df18: ; 0x0219DF18
	push {r4, r5, r6, lr}
	mov r4, #0x55
	add r5, r0, #0
	lsl r4, r4, #2
	add r6, r1, #0
	ldr r1, [r5, r4]
	bl ovy165_219f7fc
	cmp r6, #0xe
	bne _0219DF8C
	mov r6, #0xa3
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #0xa
	str r1, [r0, #0x50]
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r1, [r5, r4]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r5, r6]
	ldr r1, [r5, r4]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r5, #0
	mov r2, #1
	mov r4, #1
	bl sub_0219FA28
	ldr r0, [r5, r6]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	beq _0219DF68
	cmp r0, #8
	bne _0219DF72
_0219DF68:
	add r0, r5, #0
	mov r1, #0x27
	mov r2, #1
	ldr r3, _0219DFCC ; =0x021A0731
	b _0219DF7A
_0219DF72:
	ldr r3, _0219DFD0 ; =0x0219DE11
	add r0, r5, #0
	mov r1, #0x27
	add r2, r4, #0
_0219DF7A:
	bl ovy165_219d74c
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r4, r5, r6, pc}
_0219DF8C:
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r1, [r5, r4]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	mov r3, #0xa3
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r1, [r5, r4]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r5, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _0219DFD4 ; =0x0219DE85
	add r0, r5, #0
	mov r1, #0x21
	mov r2, #0
	bl ovy165_219d74c
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r4, r5, r6, pc}
	nop
_0219DFCC: .word 0x021A0731
_0219DFD0: .word 0x0219DE11
_0219DFD4: .word 0x0219DE85
	thumb_func_end ovy165_219df18

	thumb_func_start ovy165_219dfd8
ovy165_219dfd8: ; 0x0219DFD8
	push {r4, r5, r6, lr}
	mov r4, #0x55
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl ovy165_219f7fc
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r1, [r5, r4]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r1, [r5, r4]
	mov r4, #0xa3
	lsl r4, r4, #2
	ldr r3, [r5, r4]
	add r0, r5, #0
	add r3, #0x56
	ldrh r3, [r3]
	mov r2, #1
	mov r6, #1
	bl sub_0219FA28
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	beq _0219E01C
	cmp r0, #8
	bne _0219E02A
_0219E01C:
	ldr r3, _0219E064 ; =0x021A0731
	add r0, r5, #0
	mov r1, #0x2a
	mov r2, #1
	bl ovy165_219d74c
	b _0219E044
_0219E02A:
	ldr r3, _0219E068 ; =0x0219DE11
	add r0, r5, #0
	mov r1, #0x2a
	add r2, r6, #0
	bl ovy165_219d74c
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	bl ovy165_219e5e0
	ldr r0, [r5, r4]
	mov r1, #0xa
	str r1, [r0, #0x50]
_0219E044:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9e8
	mov r2, #0xa3
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r1, [r5, #0x3c]
	add r2, #0x58
	ldrb r2, [r2]
	add r0, r5, #0
	bl ovy165_219e5b4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E064: .word 0x021A0731
_0219E068: .word 0x0219DE11
	thumb_func_end ovy165_219dfd8
_0219E06C:
	.byte 0x01, 0x49, 0x02, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x7D, 0xE0, 0x19, 0x02, 0xD5, 0xD7, 0x19, 0x02

	thumb_func_start ovy165_219e07c
ovy165_219e07c: ; 0x0219E07C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0xe
	beq _0219E086
	b _0219E220
_0219E086:
	ldr r0, [r5, #0x3c]
	mov r1, #6
	mov r2, #0
	mov r6, #6
	bl sub_0201CCF8
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0219E634
	ldr r1, _0219E24C ; =0x000003E7
	cmp r0, r1
	bne _0219E0EE
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x44]
	cmp r0, #0xa
	bne _0219E0D0
	mov r0, #0
	str r0, [r1, #0x44]
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f7fc
	ldr r3, _0219E250 ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219E0D0:
	mov r0, #0x13
	mov r1, #0x55
	strb r0, [r5, #0xc]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f7fc
	ldr r3, _0219E254 ; =0x0219DE11
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219E0EE:
	mov r4, #0xa3
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r0, #0x54
	ldrh r0, [r0]
	bl sub_02026BA0
	cmp r0, #1
	bne _0219E110
	ldr r1, [r5, #0x30]
	ldr r0, [r5, r4]
	str r1, [r0, #0x4c]
	mov r0, #0x13
	strb r0, [r5, #0xc]
	ldr r0, [r5, r4]
	str r6, [r0, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_0219E110:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f7fc
	ldr r2, [r5, r4]
	ldr r1, [r5, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r5, #0
	bl ovy165_219e5fc
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x55
	lsl r1, r1, #2
	add r1, #0x10
	ldr r1, [r2, r1]
	bl ovy165_219f310
	ldr r2, [r5, r4]
	ldr r1, [r5, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r5, #0
	bl ovy165_21a02c8
	ldr r2, [r5, r4]
	ldr r1, [r5, #0x3c]
	add r2, #0x54
	ldrh r2, [r2]
	add r0, r5, #0
	bl ovy165_21a0304
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	bl ovy165_21a2018
	add r6, r0, #0
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	bl ovy165_21a207c
	mov r1, #0x55
	lsl r1, r1, #2
	add r7, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9d8
	mov r1, #0x55
	ldr r3, [sp]
	lsl r1, r1, #2
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_0219FA08
	ldr r3, [r5, r4]
	mov r1, #0x55
	add r3, #0x54
	lsl r1, r1, #2
	ldrh r3, [r3]
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #2
	bl sub_0219FA08
	ldr r0, [r5, r4]
	ldr r1, [r0, #0x44]
	cmp r1, #0xa
	bne _0219E1F6
	mov r1, #0
	str r1, [r0, #0x44]
	cmp r6, #1
	bne _0219E1CC
_0219E1B2:
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	bl ovy165_21a205c
	ldr r3, _0219E258 ; =ovy165_219e4b8
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #1
	bl ovy165_219d74c
	sub r4, #0x18
	mov r0, #1
	b _0219E1E8
_0219E1CC:
	cmp r7, #1
	bne _0219E1EC
_0219E1D0:
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	bl ovy165_21a20c0
	ldr r3, _0219E258 ; =ovy165_219e4b8
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #1
	bl ovy165_219d74c
	sub r4, #0x18
	mov r0, #2
_0219E1E8:
	str r0, [r5, r4]
	b _0219E212
_0219E1EC:
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #1
	ldr r3, _0219E250 ; =ovy165_219ddf4
	b _0219E20E
_0219E1F6:
	mov r1, #0xa
	str r1, [r0, #0x50]
	cmp r6, #1
	bne _0219E200
	b _0219E1B2
_0219E200:
	cmp r7, #1
	bne _0219E206
	b _0219E1D0
_0219E206:
	ldr r3, _0219E254 ; =0x0219DE11
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #1
_0219E20E:
	bl ovy165_219d74c
_0219E212:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
_0219E220:
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r1, [r2, #0x44]
	cmp r1, #0xa
	bne _0219E246
	mov r1, #0
	str r1, [r2, #0x44]
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	bl ovy165_219f7fc
	mov r0, #2
	strb r0, [r5, #0xc]
	add r0, r5, #0
	bl ovy165_219b19c
	pop {r3, r4, r5, r6, r7, pc}
_0219E246:
	mov r0, #0x13
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E24C: .word 0x000003E7
_0219E250: .word ovy165_219ddf4
_0219E254: .word 0x0219DE11
_0219E258: .word ovy165_219e4b8
	thumb_func_end ovy165_219e07c

	thumb_func_start ovy165_219e25c
ovy165_219e25c: ; 0x0219E25C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x38]
	ldr r0, [r0]
	bl sub_0201FF08
	add r4, r0, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r1]
	ldr r1, [r1, #0x4c]
	bl sub_0201FF08
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r4, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	ldr r0, [r0, #0x4c]
	str r0, [r5, #0x30]
	ldr r0, [sp]
	blx sub_0208D868
	add r2, r7, r0
	cmp r2, r4
	bls _0219E2CC
	add r0, r6, #0
	mov r1, #0xa0
	add r2, r4, #0
	b _0219E2D0
_0219E2CC:
	add r0, r6, #0
	mov r1, #0xa0
_0219E2D0:
	bl sub_0201CD1C
	mov r0, #0x49
	ldr r1, _0219E2E8 ; =ovy165_219e2ec
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0xa
	strb r0, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E2E8: .word ovy165_219e2ec
	thumb_func_end ovy165_219e25c

	thumb_func_start ovy165_219e2ec
ovy165_219e2ec: ; 0x0219E2EC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xa3
	add r5, r0, #0
	lsl r7, r7, #2
	ldr r1, [r5, r7]
	mov r4, #0x59
	ldr r1, [r1, #0x4c]
	lsl r4, r4, #2
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	bl sub_0219F4B4
	add r6, r0, #0
	ldr r0, [r5, r7]
	add r1, r4, #0
	ldr r0, [r0, #0x4c]
	sub r1, #0x10
	str r0, [r5, #0x30]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9d8
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	add r0, r4, #0
	sub r0, #0x44
	ldrh r3, [r5, r0]
	cmp r3, #0
	beq _0219E356
	mov r0, #3
	str r0, [sp]
	sub r4, #0x10
	sub r3, r6, r3
	lsl r3, r3, #0x10
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy165_219fa48
	ldr r3, _0219E364 ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x2d
	mov r2, #1
	bl ovy165_219d74c
_0219E356:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E364: .word ovy165_219ddf4
	thumb_func_end ovy165_219e2ec
_0219E368:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x79, 0xE3, 0x19, 0x02, 0xD5, 0xD7, 0x19, 0x02

	thumb_func_start ovy165_219e378
ovy165_219e378: ; 0x0219E378
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x55
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	bl ovy165_219f7fc
	cmp r4, #0xe
	bne _0219E400
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	ldr r0, [r0, #8]
	bl sub_020097C4
	add r6, r0, #0
	bmi _0219E3F2
	ldrh r0, [r5]
	bl sub_020096B8
	add r7, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0xa7
	add r2, r7, #0
	mov r4, #0xa7
	bl sub_0201CCF8
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020097E0
	add r0, r7, #0
	bl sub_0203A24C
	ldr r0, [r5, #0x3c]
	mov r1, #6
	mov r2, #0
	bl sub_0201CD1C
	ldr r1, [r5, #0x30]
	add r4, #0xbd
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f310
	ldr r3, _0219E410 ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x1b
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219E3F2:
	ldr r3, _0219E410 ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219E400:
	ldr r3, _0219E414 ; =0x0219E419
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E410: .word ovy165_219ddf4
_0219E414: .word 0x0219E419
	thumb_func_end ovy165_219e378
_0219E418:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x29, 0xE4, 0x19, 0x02, 0xD5, 0xD7, 0x19, 0x02

	thumb_func_start ovy165_219e428
ovy165_219e428: ; 0x0219E428
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x55
	add r5, r0, #0
	lsl r4, r4, #2
	add r6, r1, #0
	ldr r1, [r5, r4]
	bl ovy165_219f7fc
	cmp r6, #0xe
	bne _0219E49A
	ldr r0, [r5, #0x3c]
	mov r1, #6
	mov r2, #0
	mov r7, #6
	bl sub_0201CCF8
	add r6, r0, #0
	lsl r1, r6, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0219E634
	ldr r1, _0219E4B0 ; =0x000003E7
	cmp r0, r1
	bne _0219E468
	ldr r3, _0219E4B4 ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219E468:
	lsl r1, r6, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy165_219e660
	ldr r0, [r5, #0x3c]
	add r1, r7, #0
	mov r2, #0
	bl sub_0201CD1C
	ldr r1, [r5, #0x30]
	add r4, #0x10
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f310
	ldr r3, _0219E4B4 ; =ovy165_219ddf4
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl ovy165_219d74c
	pop {r3, r4, r5, r6, r7, pc}
_0219E49A:
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f7fc
	mov r0, #2
	strb r0, [r5, #0xc]
	add r0, r5, #0
	bl ovy165_219b19c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E4B0: .word 0x000003E7
_0219E4B4: .word ovy165_219ddf4
	thumb_func_end ovy165_219e428

	thumb_func_start ovy165_219e4b8
ovy165_219e4b8: ; 0x0219E4B8
	push {r4, lr}
	mov r1, #0x55
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy165_219f7fc
	mov r0, #0xe
	strb r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ovy165_219e4b8

	thumb_func_start ovy165_219e4cc
ovy165_219e4cc: ; 0x0219E4CC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x96
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0219E586
	ldrb r1, [r5, #0xc]
	cmp r1, #0x13
	beq _0219E586
	cmp r1, #0x15
	beq _0219E586
	cmp r1, #0
	beq _0219E586
	cmp r1, #1
	beq _0219E586
	cmp r1, #6
	bne _0219E4F4
	bl ovy165_219cf70
_0219E4F4:
	mov r0, #0x96
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x2c
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219E508
	mov r0, #0x11
	b _0219E50A
_0219E508:
	mov r0, #0x14
_0219E50A:
	mov r1, #0xa3
	lsl r1, r1, #2
	strb r0, [r5, #0xc]
	ldr r0, [r5, r1]
	mov r2, #6
	str r2, [r0, #0x4c]
	ldr r2, [r5, r1]
	mov r0, #0
	str r0, [r2, #0x50]
	mov r2, #0x47
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _0219E586
	add r4, r0, #0
	add r1, r5, r1
_0219E52A:
	ldr r2, [r1]
	add r2, r2, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	add r2, #0x59
	lsr r0, r0, #0x18
	strb r4, [r2]
	cmp r0, #6
	blo _0219E52A
	mov r7, #0xa3
	lsl r7, r7, #2
	ldr r2, [r5, r7]
	ldr r6, [r2, #0x14]
	ldr r1, [r2]
	add r0, r6, #0
	add r2, #0x59
	bl sub_0201F97C
	cmp r0, #0
	bne _0219E586
	mov r0, #0
_0219E554:
	ldr r1, [r5, r7]
	add r1, r1, r4
	add r1, #0x59
	strb r0, [r1]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #6
	blo _0219E554
	ldrb r1, [r6, #2]
	cmp r1, #0
	bls _0219E586
	mov r2, #0xa3
	lsl r2, r2, #2
_0219E570:
	add r1, r0, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	ldr r1, [r5, r2]
	add r0, r1, r0
	add r0, #0x59
	strb r3, [r0]
	ldrb r1, [r6, #2]
	add r0, r3, #0
	cmp r3, r1
	blo _0219E570
_0219E586:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219e4cc

	thumb_func_start ovy165_219e588
ovy165_219e588: ; 0x0219E588
	push {r3, lr}
	mov r2, #0xa3
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r0, [r2, #0x44]
	cmp r0, #5
	beq _0219E59A
	cmp r0, #8
	bne _0219E5A6
_0219E59A:
	add r2, #0x56
	add r0, r1, #0
	ldrh r1, [r2]
	bl sub_0201D0BC
	pop {r3, pc}
_0219E5A6:
	add r2, #0x56
	add r0, r1, #0
	ldrh r1, [r2]
	bl sub_0201D268
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219e588

	thumb_func_start ovy165_219e5b4
ovy165_219e5b4: ; 0x0219E5B4
	push {r3, lr}
	mov r3, #0xa3
	lsl r3, r3, #2
	ldr r3, [r0, r3]
	ldr r0, [r3, #0x44]
	cmp r0, #5
	beq _0219E5C6
	cmp r0, #8
	bne _0219E5D2
_0219E5C6:
	add r3, #0x56
	add r0, r1, #0
	ldrh r1, [r3]
	bl sub_0201D224
	pop {r3, pc}
_0219E5D2:
	add r3, #0x56
	add r0, r1, #0
	ldrh r1, [r3]
	bl sub_0201D2D0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219e5b4

	thumb_func_start ovy165_219e5e0
ovy165_219e5e0: ; 0x0219E5E0
	push {r3, lr}
	mov r2, #0xa3
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	add r0, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r3, [r3]
	mov r1, #7
	bl sub_02020C78
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219e5e0

	thumb_func_start ovy165_219e5fc
ovy165_219e5fc: ; 0x0219E5FC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	beq _0219E61C
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy165_219e660
_0219E61C:
	add r0, r6, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_0201CD1C
	cmp r4, #0
	beq _0219E632
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219e648
_0219E632:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy165_219e5fc

	thumb_func_start sub_0219E634
sub_0219E634: ; 0x0219E634
	add r2, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r2, [r2]
	ldr r0, [r0, #4]
	ldr r3, _0219E644 ; =sub_02008538
	bx r3
	.align 2, 0
_0219E644: .word sub_02008538
	thumb_func_end sub_0219E634

	thumb_func_start ovy165_219e648
ovy165_219e648: ; 0x0219E648
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldrh r3, [r3]
	ldr r0, [r0, #4]
	mov r2, #1
	bl sub_0200842C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219e648

	thumb_func_start ovy165_219e660
ovy165_219e660: ; 0x0219E660
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldrh r3, [r3]
	ldr r0, [r0, #4]
	mov r2, #1
	bl sub_02008268
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219e660

	thumb_func_start ovy165_219e678
ovy165_219e678: ; 0x0219E678
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r0, #0
	add r4, r1, #0
	ldr r0, _0219E810 ; =0x021A4BE4
	lsl r1, r4, #1
	ldrb r0, [r0, r1]
	add r7, r2, #0
	mov r2, #0
	str r0, [sp, #0x24]
	ldr r0, _0219E814 ; =0x021A4BE5
	str r2, [sp, #0x18]
	ldrb r0, [r0, r1]
	ldr r3, _0219E818 ; =0x021A4CEC
	mov r1, #0x48
	str r0, [sp, #0x20]
	mov r0, #0xaf
	str r0, [sp]
	ldrh r0, [r6]
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strb r4, [r5, #4]
	str r7, [r5]
	cmp r7, #0
	bne _0219E6B2
	mov r0, #1
	str r0, [sp, #0x18]
_0219E6B2:
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r0, [r5, #0x14]
	str r1, [r5, #0x10]
	str r1, [r5, #0x18]
	cmp r7, #0
	beq _0219E6DC
	cmp r4, #0
	beq _0219E6C6
	mov r1, #1
_0219E6C6:
	ldr r0, _0219E81C ; =0x021A4BE0
	lsl r1, r1, #1
	ldrb r1, [r0, r1]
	mov r0, #1
	cmp r4, #0
	bne _0219E6D4
	mov r0, #0
_0219E6D4:
	lsl r2, r0, #1
	ldr r0, _0219E820 ; =0x021A4BE1
	ldrb r0, [r0, r2]
	b _0219E6DE
_0219E6DC:
	mov r0, #0x13
_0219E6DE:
	ldr r2, [sp, #0x24]
	mov r3, #0x10
	str r2, [sp, #0x1c]
	add r2, #0x10
	str r2, [sp, #0x1c]
	mov r2, #6
	str r2, [sp]
	mov r2, #0x16
	lsl r2, r2, #4
	ldr r2, [r6, r2]
	add r2, #0xc
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	bl sub_020454D4
	mov r1, #0x10
	mov r4, #0
	add r0, sp, #0x28
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	add r1, #0xf0
	strh r1, [r0, #8]
	mov r1, #0xc0
	strh r1, [r0, #0xa]
	str r4, [sp, #0x34]
	str r4, [sp, #0x38]
	ldrh r2, [r6]
	add r0, sp, #0x2c
	mov r1, #1
	bl sub_0204BE9C
	str r0, [r5, #0x24]
	ldrh r2, [r6]
	mov r0, #6
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x24]
	bl sub_0204C018
	add r0, r6, #0
	add r1, r5, #0
	bl ovy165_219e914
	add r0, r6, #0
	add r1, r5, #0
	bl ovy165_219ea18
	ldr r0, [sp, #0x24]
	add r2, sp, #0x28
	neg r0, r0
	lsl r1, r0, #3
	add r0, sp, #0x28
	strh r1, [r0]
	ldr r0, [sp, #0x20]
	neg r0, r0
	lsl r1, r0, #3
	add r0, sp, #0x28
	strh r1, [r0, #2]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0204BEDC
	mov r0, #6
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x18
	mov r0, #1
	lsr r1, r1, #0x18
	mov r3, #0x10
	bl sub_020480C0
	str r0, [r5, #0x20]
	cmp r7, #0
	beq _0219E7FE
	ldr r0, [r5]
	mov r1, #0x4c
	add r2, r4, #0
	bl sub_0201CCF8
	str r0, [r5, #0xc]
	ldr r0, [r5]
	mov r1, #0xa0
	add r2, r4, #0
	bl sub_0201CCF8
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	mov r1, #1
	strh r0, [r5, #8]
	ldr r0, [r5, #0x38]
	bl sub_0204C124
	add r0, r6, #0
	add r1, r5, #0
	bl ovy165_219f4bc
	add r0, r6, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219E7E8
	mov r1, #0xa3
	lsl r1, r1, #2
_0219E7CC:
	ldr r2, [r6, r1]
	ldrb r0, [r5, #4]
	add r2, r2, r4
	add r2, #0x59
	ldrb r2, [r2]
	add r0, r0, #1
	cmp r0, r2
	bne _0219E7DE
	str r4, [r5, #0x1c]
_0219E7DE:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0219E7CC
_0219E7E8:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy165_219efc8
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy165_219eae0
	b _0219E808
_0219E7FE:
	mov r0, #8
	str r0, [r5, #0x1c]
	mov r0, #2
	bl sub_02045B7C
_0219E808:
	add r0, r5, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0219E810: .word 0x021A4BE4
_0219E814: .word 0x021A4BE5
_0219E818: .word 0x021A4CEC
_0219E81C: .word 0x021A4BE0
_0219E820: .word 0x021A4BE1
	thumb_func_end ovy165_219e678

	thumb_func_start sub_0219E824
sub_0219E824: ; 0x0219E824
	ldr r3, _0219E828 ; =ovy165_219e678
	bx r3
	.align 2, 0
_0219E828: .word ovy165_219e678
	thumb_func_end sub_0219E824

	thumb_func_start sub_0219E82C
sub_0219E82C: ; 0x0219E82C
	ldr r3, _0219E834 ; =ovy165_219e678
	mov r2, #0
	bx r3
	nop
_0219E834: .word ovy165_219e678
	thumb_func_end sub_0219E82C

	thumb_func_start ovy165_219e838
ovy165_219e838: ; 0x0219E838
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	bl sub_02048210
	ldr r0, [r4, #0x30]
	bl sub_0204C108
	ldr r0, [r4, #0x34]
	bl sub_0204C108
	ldr r0, [r4, #0x38]
	bl sub_0204C108
	ldr r0, [r4, #0x24]
	bl sub_0204BECC
	ldr r0, [r4, #0x28]
	bl sub_0204BF98
	ldr r0, [r4, #0x2c]
	bl sub_0204B98C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219e838

	thumb_func_start sub_0219E870
sub_0219E870: ; 0x0219E870
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219E870

	thumb_func_start ovy165_219e874
ovy165_219e874: ; 0x0219E874
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0219E912
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0219E8B8
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	add r1, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E8B8
	ldr r5, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
_0219E8B8:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _0219E912
	ldr r0, [r4]
	bl sub_0201CF44
	cmp r0, #0
	bne _0219E912
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _0219E912
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0x13
	add r3, sp, #0
	bl ovy165_219f5c4
	add r0, r4, #0
	add r0, #0x44
	ldrb r2, [r0]
	cmp r2, #0xa
	blo _0219E8FA
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r0, r0, #6
	strh r0, [r1, #2]
	cmp r2, #0x14
	blo _0219E8FA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x44
	strb r1, [r0]
_0219E8FA:
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	mov r2, #0
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x44
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	bl sub_0204C140
_0219E912:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219e874

	thumb_func_start ovy165_219e914
ovy165_219e914: ; 0x0219E914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #0x10
	add r4, sp, #0xc
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	mov r0, #0
	strh r0, [r4, #0x1c]
	mov r0, #1
	strb r0, [r4, #0x1e]
	mov r0, #2
	strb r0, [r4, #0x1f]
	add r0, sp, #0x24
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r7, #0x1a
	lsl r7, r7, #4
	add r2, r7, #0
	add r3, r7, #0
	add r6, r1, #0
	str r0, [sp, #8]
	sub r2, #0x24
	add r3, #0x1c
	ldr r0, [r6, #0x28]
	ldr r1, [r5, r7]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r1, #1
	str r0, [r6, #0x34]
	bl sub_0204C520
	mov r0, #0x54
	strh r0, [r4, #0x10]
	mov r0, #0x1c
	strh r0, [r4, #0x12]
	mov r0, #0
	strh r0, [r4, #0x14]
	strb r0, [r4, #0x16]
	mov r0, #2
	strb r0, [r4, #0x17]
	add r0, sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r0, [sp, #8]
	add r1, #0x14
	sub r2, #0x10
	add r3, #0x30
	ldr r0, [r6, #0x28]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r1, #0
	str r0, [r6, #0x38]
	bl sub_0204C124
	mov r0, #0x20
	strh r0, [r4, #8]
	mov r0, #0x18
	strh r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #0xc]
	strb r0, [r4, #0xe]
	mov r0, #2
	strb r0, [r4, #0xf]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r0, [sp, #8]
	add r1, #8
	sub r2, #0x1c
	add r3, #0x24
	ldr r0, [r6, #0x28]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	mov r1, #0
	str r0, [r6, #0x3c]
	bl sub_0204C124
	mov r0, #0x20
	strh r0, [r4]
	mov r0, #0x2a
	strh r0, [r4, #2]
	mov r0, #0
	strh r0, [r4, #4]
	strb r0, [r4, #6]
	mov r0, #2
	strb r0, [r4, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	str r0, [sp, #8]
	add r1, #0x10
	sub r2, #0x14
	add r7, #0x2c
	ldr r0, [r6, #0x28]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r7]
	bl sub_0204C040
	mov r1, #0
	str r0, [r6, #0x40]
	bl sub_0204C124
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219e914

	thumb_func_start ovy165_219ea18
ovy165_219ea18: ; 0x0219EA18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldrh r2, [r5]
	add r4, r1, #0
	ldr r1, _0219EADC ; =0x00007FFF
	mov r0, #7
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0219EA50
	bl sub_0201D624
	str r0, [sp, #0x10]
	bl sub_02020F40
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_020210C0
	b _0219EA6A
_0219EA50:
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_02020F94
	add r7, r0, #0
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_02021034
_0219EA6A:
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	add r1, r7, #0
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	mov r7, #0
	bl sub_0204B81C
	str r0, [r4, #0x2c]
	add r0, r6, #0
	bl sub_0204AB0C
	mov r3, #0x65
	mov r1, #0x18
	add r0, sp, #0x14
	strh r1, [r0]
	mov r1, #0x10
	strh r1, [r0, #2]
	mov r6, #1
	strh r6, [r0, #4]
	strb r7, [r0, #6]
	mov r1, #2
	strb r1, [r0, #7]
	add r0, sp, #0x14
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	lsl r3, r3, #2
	str r0, [sp, #8]
	ldr r2, [r5, r3]
	add r3, #0x40
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r3, [r5, r3]
	bl sub_0204C040
	str r0, [r4, #0x30]
	ldr r1, [sp, #0xc]
	mov r2, #1
	bl sub_0204C378
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4]
	cmp r0, #0
	bne _0219EAD0
	add r6, r7, #0
_0219EAD0:
	ldr r0, [r4, #0x30]
	add r1, r6, #0
	bl sub_0204C124
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219EADC: .word 0x00007FFF
	thumb_func_end ovy165_219ea18

	thumb_func_start ovy165_219eae0
ovy165_219eae0: ; 0x0219EAE0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r3, [r4, #0xc]
	add r5, r0, #0
	cmp r3, #0
	bne _0219EAFA
	bl ovy165_219eb00
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219eebc
	pop {r3, r4, r5, pc}
_0219EAFA:
	bl ovy165_219ef50
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219eae0

	thumb_func_start ovy165_219eb00
ovy165_219eb00: ; 0x0219EB00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldr r0, [r0, #0x44]
	add r6, r2, #0
	mov r7, #0
	cmp r0, #6
	beq _0219EB1E
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0219EB20
_0219EB1E:
	mov r7, #1
_0219EB20:
	cmp r6, #0
	bne _0219EB54
	ldrh r0, [r5]
	bl sub_020241D4
	ldr r2, [r4]
	mov r1, #0
	str r0, [sp, #0x14]
	bl sub_02024464
	mov r0, #0x29
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #3
	bl ovy165_219dcc8
	ldr r0, [sp, #0x14]
	bl sub_02024274
_0219EB54:
	cmp r6, #0
	bne _0219EBA0
	ldr r0, [r4]
	mov r1, #0xad
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _0219EBA0
	ldr r0, [r4]
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219EB86
	mov r0, #9
	str r0, [sp]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	mov r2, #7
	b _0219EB9A
_0219EB86:
	cmp r0, #1
	bne _0219EBA0
	mov r0, #9
	str r0, [sp]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	mov r2, #8
_0219EB9A:
	mov r3, #0x69
	bl ovy165_219dbf0
_0219EBA0:
	cmp r7, #0
	bne _0219EC78
	ldr r0, [r4]
	bl sub_0201CF44
	cmp r0, #0
	bne _0219EBB4
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0219EBBA
_0219EBB4:
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	beq _0219EC22
_0219EBBA:
	ldrh r0, [r5]
	bl sub_020241D4
	str r0, [sp, #0x10]
	ldr r0, [r4]
	bl sub_0201D460
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	cmp r6, #0
	bne _0219EBFC
	mov r0, #9
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r3, #2
	bl ovy165_219dd2c
	b _0219EC16
_0219EBFC:
	mov r0, #9
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r3, #2
	bl ovy165_219dd94
_0219EC16:
	ldr r0, [sp, #0x10]
	bl sub_02024274
	ldr r0, [r4, #0x40]
	mov r1, #0
	b _0219EC74
_0219EC22:
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0219EC2E
	ldr r0, [r4, #0x40]
	mov r1, #6
	b _0219EC6C
_0219EC2E:
	ldr r0, [r4]
	bl sub_0201CF44
	cmp r0, #5
	bhi _0219EC70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219EC44: ; jump table
	.short _0219EC70 - _0219EC44 - 2 ; case 0
	.short _0219EC50 - _0219EC44 - 2 ; case 1
	.short _0219EC56 - _0219EC44 - 2 ; case 2
	.short _0219EC5C - _0219EC44 - 2 ; case 3
	.short _0219EC62 - _0219EC44 - 2 ; case 4
	.short _0219EC68 - _0219EC44 - 2 ; case 5
_0219EC50:
	ldr r0, [r4, #0x40]
	mov r1, #1
	b _0219EC6C
_0219EC56:
	ldr r0, [r4, #0x40]
	mov r1, #3
	b _0219EC6C
_0219EC5C:
	ldr r0, [r4, #0x40]
	mov r1, #2
	b _0219EC6C
_0219EC62:
	ldr r0, [r4, #0x40]
	mov r1, #5
	b _0219EC6C
_0219EC68:
	ldr r0, [r4, #0x40]
	mov r1, #4
_0219EC6C:
	bl sub_0204C488
_0219EC70:
	ldr r0, [r4, #0x40]
	mov r1, #1
_0219EC74:
	bl sub_0204C124
_0219EC78:
	ldr r2, [r4, #0x1c]
	cmp r2, #8
	beq _0219ECB2
	cmp r2, #6
	bne _0219EC86
	mov r2, #0x8d
	b _0219EC90
_0219EC86:
	cmp r2, #7
	bne _0219EC8E
	mov r2, #0x8e
	b _0219EC90
_0219EC8E:
	add r2, #0x8f
_0219EC90:
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	lsr r2, r2, #0x10
	mov r3, #0x2e
_0219ECA4:
	bl ovy165_219dbf0
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_0204C124
	b _0219EE3C
_0219ECB2:
	cmp r7, #1
	bne _0219ECFC
	ldrb r2, [r4, #4]
	ldr r1, [r4]
	add r0, r5, #0
	bl ovy165_219da9c
	cmp r0, #3
	bhi _0219ECE4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219ECD0: ; jump table
	.short _0219ECD8 - _0219ECD0 - 2 ; case 0
	.short _0219ECD8 - _0219ECD0 - 2 ; case 1
	.short _0219ECDC - _0219ECD0 - 2 ; case 2
	.short _0219ECE0 - _0219ECD0 - 2 ; case 3
_0219ECD8:
	mov r0, #0x95
	b _0219ECE2
_0219ECDC:
	mov r0, #0x96
	b _0219ECE2
_0219ECE0:
	mov r0, #0x97
_0219ECE2:
	str r0, [sp, #0xc]
_0219ECE4:
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0x11
	ldr r2, [sp, #0xc]
	lsl r0, r0, #6
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	lsr r2, r2, #0x10
	mov r3, #0x1d
	b _0219ECA4
_0219ECFC:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	ldr r0, [r2, #0x44]
	cmp r0, #0x10
	bne _0219ED1E
	add r2, #0x54
	ldrh r2, [r2]
	ldr r1, [r4]
	add r0, r5, #0
	bl ovy165_219dbc8
	mov r2, #0x99
	cmp r0, #0
	beq _0219ED1C
	mov r2, #0x98
_0219ED1C:
	b _0219EC90
_0219ED1E:
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	bne _0219ED4C
	ldr r0, [r4]
	bl sub_021EEC80
	mov r2, #0x9a
	cmp r0, #1
	beq _0219ED32
	mov r2, #0x9b
_0219ED32:
	mov r0, #0x1f
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	lsr r2, r2, #0x10
	mov r3, #0x2e
	bl ovy165_219dbf0
	b _0219EE3C
_0219ED4C:
	ldrh r0, [r5]
	bl sub_020241D4
	add r7, r0, #0
	ldr r0, [r4]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	cmp r6, #0
	bne _0219ED92
	mov r0, #0x5b
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #4
	bl ovy165_219dd2c
	b _0219EDAC
_0219ED92:
	mov r0, #0x5b
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #4
	bl ovy165_219dd94
_0219EDAC:
	add r0, r7, #0
	bl sub_02024274
	ldrh r0, [r5]
	bl sub_020241D4
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r2, [r4, #6]
	mov r1, #0
	mov r3, #3
	add r7, r0, #0
	bl sub_0202451C
	cmp r6, #0
	bne _0219EDEA
	mov r0, #0x39
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #5
	bl ovy165_219dd2c
	b _0219EE04
_0219EDEA:
	mov r0, #0x39
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #5
	bl ovy165_219dd94
_0219EE04:
	add r0, r7, #0
	bl sub_02024274
	cmp r6, #0
	bne _0219EE26
	mov r0, #0x23
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0x52
	bl ovy165_219dc38
	b _0219EE3C
_0219EE26:
	mov r0, #0x23
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0x52
	bl ovy165_219dc84
_0219EE3C:
	ldr r0, [r4]
	mov r1, #6
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	beq _0219EE70
	mov r1, #1
	mov r7, #1
	bl sub_0204C124
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _0219EE6C
	add r1, r7, #0
_0219EE66:
	bl sub_0204C488
	b _0219EE76
_0219EE6C:
	add r1, r6, #0
	b _0219EE66
_0219EE70:
	add r1, r6, #0
	bl sub_0204C124
_0219EE76:
	add r0, r4, #0
	bl ovy165_219f5ac
	add r6, r0, #0
	mov r5, #1
	cmp r6, #3
	bne _0219EE88
	mov r5, #0
	b _0219EEAC
_0219EE88:
	ldr r0, [r4]
	bl sub_0201CF44
	cmp r0, #0
	beq _0219EE96
	mov r5, #5
	b _0219EEAC
_0219EE96:
	cmp r6, #2
	bne _0219EE9E
	mov r5, #4
	b _0219EEAC
_0219EE9E:
	cmp r6, #1
	bne _0219EEA6
	mov r5, #3
	b _0219EEAC
_0219EEA6:
	cmp r6, #0
	bne _0219EEAC
	mov r5, #2
_0219EEAC:
	ldr r0, [r4, #0x30]
	add r1, r5, #0
	bl sub_0204C488
	mov r0, #1
	str r0, [r4, #0x18]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219eb00

	thumb_func_start ovy165_219eebc
ovy165_219eebc: ; 0x0219EEBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0219DA58
	cmp r0, #0
	bne _0219EF4A
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x44]
	cmp r0, #6
	beq _0219EF4A
	add r0, r4, #0
	bl ovy165_219f5ac
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldrh r0, [r4, #6]
	mov r2, #0x30
	bl sub_02033724
	add r7, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0219EF10
	mov r1, #0xe
	mov r5, #0xf
	b _0219EF1E
_0219EF10:
	cmp r5, #1
	bne _0219EF1A
	mov r1, #0xc
	mov r5, #0xd
	b _0219EF1E
_0219EF1A:
	mov r1, #0xa
	mov r5, #0xb
_0219EF1E:
	mov r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r6, #0
	mov r1, #0x3d
	mov r2, #0x1b
	add r3, r7, #0
	bl sub_020470F8
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0x3d
	mov r2, #0x1c
	add r3, r7, #0
	bl sub_020470F8
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl sub_0204C124
_0219EF4A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219eebc

	thumb_func_start ovy165_219ef50
ovy165_219ef50: ; 0x0219EF50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	bl sub_020241D4
	add r6, r0, #0
	ldr r0, _0219EFC0 ; =0x0209A434
	ldr r1, _0219EFC4 ; =0x0000028A
	ldr r0, [r0]
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #0x29
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #3
	bl ovy165_219dcc8
	add r0, r7, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02024274
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0204C488
	mov r0, #1
	str r0, [r4, #0x18]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219EFC0: .word 0x0209A434
_0219EFC4: .word 0x0000028A
	thumb_func_end ovy165_219ef50

	thumb_func_start ovy165_219efc8
ovy165_219efc8: ; 0x0219EFC8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #1
	bne _0219F030
	ldrb r1, [r5, #0xc]
	cmp r1, #3
	beq _0219EFE4
	cmp r1, #4
	beq _0219EFE4
	cmp r1, #0x17
	bne _0219EFE6
_0219EFE4:
	b _0219EFF4
_0219EFE6:
	bl sub_0219DA58
	cmp r0, #1
	bne _0219EFFC
	ldr r0, [r4, #0x1c]
	cmp r0, #6
	bge _0219EFFC
_0219EFF4:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	b _0219F002
_0219EFFC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
_0219F002:
	bl ovy165_219f0a0
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_0204C488
	add r5, sp, #4
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0x13
	add r3, r5, #0
	bl ovy165_219f5c4
	add r1, r5, #0
	ldr r0, [r4, #0x30]
	mov r2, #0
	mov r5, #0
	bl sub_0204C140
	add r0, r4, #0
	add r0, #0x44
	strb r5, [r0]
	b _0219F09A
_0219F030:
	ldrb r0, [r5, #0xc]
	cmp r0, #3
	bne _0219F03E
	ldrb r1, [r4, #4]
	ldr r2, [r5, #0x34]
	cmp r2, r1
	beq _0219F056
_0219F03E:
	cmp r0, #0x17
	bne _0219F04A
	ldrb r1, [r4, #4]
	ldr r2, [r5, #0x34]
	cmp r2, r1
	beq _0219F056
_0219F04A:
	cmp r0, #4
	bne _0219F058
	ldrb r0, [r4, #4]
	ldr r1, [r5, #0x38]
	cmp r1, r0
	bne _0219F058
_0219F056:
	b _0219F068
_0219F058:
	add r0, r5, #0
	bl sub_0219DA58
	cmp r0, #1
	bne _0219F070
	ldr r0, [r4, #0x1c]
	cmp r0, #6
	bge _0219F070
_0219F068:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	b _0219F076
_0219F070:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
_0219F076:
	bl ovy165_219f0a0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0204C488
	add r5, sp, #0
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0x10
	add r3, r5, #0
	bl ovy165_219f5c4
	ldr r0, [r4, #0x30]
	add r1, r5, #0
	mov r2, #0
	bl sub_0204C140
_0219F09A:
	str r6, [r4, #0x10]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy165_219efc8

	thumb_func_start ovy165_219f0a0
ovy165_219f0a0: ; 0x0219F0A0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r1, #0
	cmp r4, #3
	bne _0219F0C2
	add r0, r5, #0
	bl ovy165_219f5ac
	cmp r0, #3
	bne _0219F0C2
	ldrb r0, [r5, #4]
	lsl r2, r0, #1
	mov r0, #6
	str r0, [sp]
	mov r0, #4
	b _0219F0E8
_0219F0C2:
	cmp r4, #6
	bne _0219F0DC
	add r0, r5, #0
	bl ovy165_219f5ac
	cmp r0, #3
	bne _0219F0DC
	ldrb r0, [r5, #4]
	lsl r2, r0, #1
	mov r0, #6
	str r0, [sp]
	mov r0, #7
	b _0219F0E8
_0219F0DC:
	ldrb r0, [r5, #4]
	lsl r2, r0, #1
	mov r0, #6
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
_0219F0E8:
	ldr r1, _0219F10C ; =0x021A4BE4
	str r0, [sp, #4]
	ldrb r1, [r1, r2]
	ldr r3, _0219F110 ; =0x021A4BE5
	mov r0, #2
	add r1, #0x10
	ldrb r2, [r3, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r3, #0x10
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219F10C: .word 0x021A4BE4
_0219F110: .word 0x021A4BE5
	thumb_func_end ovy165_219f0a0

	thumb_func_start ovy165_219f114
ovy165_219f114: ; 0x0219F114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldrb r1, [r5, #4]
	str r0, [sp, #0x18]
	ldr r0, _0219F1E0 ; =0x021A4BE4
	add r4, r2, #0
	lsl r2, r1, #1
	ldrb r6, [r0, r2]
	ldr r0, _0219F1E4 ; =0x021A4BE5
	ldrb r7, [r0, r2]
	lsr r0, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r0
	mov r1, #0x1f
	ror r2, r1
	add r0, r0, r2
	bne _0219F13A
	neg r4, r4
_0219F13A:
	add r1, r6, #0
	add r1, #0x10
	add r1, r4, r1
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0x18
	bl sub_020484FC
	add r0, r6, r4
	neg r0, r0
	lsl r1, r0, #3
	add r0, sp, #0x20
	strh r1, [r0]
	neg r1, r7
	lsl r1, r1, #3
	strh r1, [r0, #2]
	mov r1, #0
	str r1, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	mov r1, #0
	add r2, sp, #0x20
	bl sub_0204BEDC
	ldrb r1, [r5, #4]
	cmp r1, #0
	beq _0219F172
	mov r0, #1
	str r0, [sp, #0x1c]
_0219F172:
	mov r0, #1
	cmp r1, #0
	bne _0219F17A
	mov r0, #0
_0219F17A:
	add r6, #0x10
	add r4, r6, r4
	mov r6, #6
	mov r2, #0x16
	ldr r1, [sp, #0x18]
	str r6, [sp]
	lsl r2, r2, #4
	ldr r1, [r1, r2]
	add r2, r7, #0
	add r1, #0xc
	str r1, [sp, #4]
	lsl r1, r0, #1
	ldr r0, _0219F1E8 ; =0x021A4BE0
	mov r3, #0x10
	ldrb r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #1
	ldr r0, _0219F1EC ; =0x021A4BE1
	ldrb r0, [r0, r1]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_020454D4
	lsl r1, r4, #0x18
	str r6, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #2
	lsr r1, r1, #0x18
	add r2, r7, #0
	mov r3, #0x10
	bl sub_0204566C
	ldr r0, [r5, #0x20]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0219F1E0: .word 0x021A4BE4
_0219F1E4: .word 0x021A4BE5
_0219F1E8: .word 0x021A4BE0
_0219F1EC: .word 0x021A4BE1
	thumb_func_end ovy165_219f114

	thumb_func_start ovy165_219f1f0
ovy165_219f1f0: ; 0x0219F1F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldrb r0, [r1, #4]
	ldr r1, _0219F248 ; =0x021A4BE4
	ldr r3, _0219F24C ; =0x021A4BE5
	lsl r4, r0, #1
	ldrb r1, [r1, r4]
	ldrb r4, [r3, r4]
	lsr r5, r0, #0x1f
	lsl r3, r0, #0x1f
	sub r3, r3, r5
	mov r0, #0x1f
	ror r3, r0
	add r0, r5, r3
	bne _0219F210
	neg r2, r2
_0219F210:
	add r1, #0x10
	add r5, r1, r2
	mov r6, #0x10
	lsl r2, r5, #0x18
	str r6, [sp]
	mov r7, #6
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02045604
	str r6, [sp]
	lsl r2, r5, #0x18
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F248: .word 0x021A4BE4
_0219F24C: .word 0x021A4BE5
	thumb_func_end ovy165_219f1f0

	thumb_func_start ovy165_219f250
ovy165_219f250: ; 0x0219F250
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	ldrb r0, [r4, #4]
	mov ip, r2
	ldr r2, _0219F308 ; =0x021A4BE4
	lsl r1, r0, #1
	ldrb r7, [r2, r1]
	ldr r2, _0219F30C ; =0x021A4BE5
	add r5, r3, #0
	ldrb r6, [r2, r1]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0219F278
	neg r5, r5
_0219F278:
	mov r0, ip
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, ip
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	str r0, [r4, #0xc]
	ldr r0, [r4]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	strh r0, [r4, #8]
	ldr r0, [r4, #0x30]
	bl sub_0204C108
	ldr r0, [r4, #0x2c]
	bl sub_0204B98C
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0204C124
	mov r1, #0
	add r0, sp, #4
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #0x24]
	mov r1, #0
	add r2, sp, #8
	bl sub_0204BEDC
	ldr r0, [sp]
	add r1, r4, #0
	bl ovy165_219ea18
	add r0, r7, r5
	neg r0, r0
	lsl r1, r0, #3
	add r0, sp, #4
	strh r1, [r0]
	neg r0, r6
	lsl r1, r0, #3
	add r0, sp, #4
	strh r1, [r0, #2]
	ldr r0, [r4, #0x24]
	mov r1, #0
	add r2, sp, #4
	bl sub_0204BEDC
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	bl ovy165_219eae0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F308: .word 0x021A4BE4
_0219F30C: .word 0x021A4BE5
	thumb_func_end ovy165_219f250

	thumb_func_start ovy165_219f310
ovy165_219f310: ; 0x0219F310
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy165_219eae0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_219f310

	thumb_func_start ovy165_219f330
ovy165_219f330: ; 0x0219F330
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_020484F4
	mov r1, #0x16
	str r1, [sp]
	mov r1, #0
	mov r2, #0x1a
	mov r3, #0x80
	str r1, [sp, #4]
	bl sub_020470F8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy165_219eae0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219f330

	thumb_func_start ovy165_219f35c
ovy165_219f35c: ; 0x0219F35C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	strh r0, [r6, #8]
	ldrh r1, [r6, #8]
	ldrh r0, [r6, #6]
	mov r4, #0x64
	sub r0, r1, r0
	mov r1, #0x64
	blx sub_0208D65C
	mov r1, #0x64
	add r1, #0xbe
	strb r0, [r5, r1]
	ldrh r1, [r6, #8]
	ldrh r0, [r6, #6]
	cmp r1, r0
	bls _0219F398
	add r0, r4, #0
	add r0, #0xbe
	ldrsb r0, [r5, r0]
	add r4, #0xbe
	add r0, r0, #1
	strb r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219F398:
	add r0, r4, #0
	add r0, #0xbe
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	add r4, #0xbe
	strb r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy165_219f35c

	thumb_func_start ovy165_219f3a8
ovy165_219f3a8: ; 0x0219F3A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r3, [r4, #8]
	ldrh r2, [r4, #6]
	add r5, r0, #0
	cmp r2, r3
	bhs _0219F3E6
	cmp r2, #0
	bne _0219F3C0
	mov r2, #6
	bl ovy165_219f0a0
_0219F3C0:
	ldr r0, _0219F410 ; =0x00000122
	ldrh r1, [r4, #6]
	ldrsb r3, [r5, r0]
	ldrh r2, [r4, #8]
	add r0, r1, r3
	cmp r0, r2
	ble _0219F3D2
	strh r2, [r4, #6]
	b _0219F3DA
_0219F3D2:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	strh r0, [r4, #6]
_0219F3DA:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219f330
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219F3E6:
	cmp r2, r3
	bls _0219F40C
	ldr r0, _0219F410 ; =0x00000122
	ldrsb r1, [r5, r0]
	add r0, r2, r1
	cmp r0, r3
	bge _0219F3F8
	strh r3, [r4, #6]
	b _0219F400
_0219F3F8:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r4, #6]
_0219F400:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219f330
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219F40C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F410: .word 0x00000122
	thumb_func_end ovy165_219f3a8

	thumb_func_start sub_0219F414
sub_0219F414: ; 0x0219F414
	ldr r0, [r1, #0x14]
	cmp r0, #1
	beq _0219F41E
	mov r0, #1
	bx lr
_0219F41E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F414

	thumb_func_start sub_0219F424
sub_0219F424: ; 0x0219F424
	ldrb r0, [r1, #4]
	lsl r3, r0, #1
	ldr r0, _0219F444 ; =0x021A4BE4
	ldrb r0, [r0, r3]
	add r0, #8
	lsl r0, r0, #3
	strh r0, [r2]
	ldrb r0, [r1, #4]
	lsl r1, r0, #1
	ldr r0, _0219F448 ; =0x021A4BE5
	ldrb r0, [r0, r1]
	add r0, r0, #3
	lsl r0, r0, #3
	strh r0, [r2, #2]
	bx lr
	nop
_0219F444: .word 0x021A4BE4
_0219F448: .word 0x021A4BE5
	thumb_func_end sub_0219F424

	thumb_func_start ovy165_219f44c
ovy165_219f44c: ; 0x0219F44C
	push {r3, r4}
	ldrb r0, [r1, #4]
	ldr r3, _0219F484 ; =0x021A4BE4
	lsl r0, r0, #1
	ldrb r0, [r3, r0]
	lsl r0, r0, #3
	strb r0, [r2, #2]
	ldrb r0, [r1, #4]
	lsl r4, r0, #1
	ldr r0, _0219F488 ; =0x021A4BE5
	ldrb r4, [r0, r4]
	lsl r4, r4, #3
	strb r4, [r2]
	ldrb r4, [r1, #4]
	lsl r4, r4, #1
	ldrb r3, [r3, r4]
	add r3, #0x10
	lsl r3, r3, #3
	strb r3, [r2, #3]
	ldrb r1, [r1, #4]
	lsl r1, r1, #1
	ldrb r0, [r0, r1]
	add r0, r0, #6
	lsl r0, r0, #3
	strb r0, [r2, #1]
	pop {r3, r4}
	bx lr
	nop
_0219F484: .word 0x021A4BE4
_0219F488: .word 0x021A4BE5
	thumb_func_end ovy165_219f44c

	thumb_func_start sub_0219F48C
sub_0219F48C: ; 0x0219F48C
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219F48C

	thumb_func_start ovy165_219f490
ovy165_219f490: ; 0x0219F490
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r3, [r4, #0x1c]
	add r5, r0, #0
	cmp r3, r2
	beq _0219F4B0
	cmp r2, #6
	bge _0219F4A4
	str r2, [r4, #0x1c]
	b _0219F4A8
_0219F4A4:
	bl ovy165_219f4bc
_0219F4A8:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219f310
_0219F4B0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_219f490

	thumb_func_start sub_0219F4B4
sub_0219F4B4: ; 0x0219F4B4
	ldrh r0, [r1, #6]
	bx lr
	thumb_func_end sub_0219F4B4

	thumb_func_start sub_0219F4B8
sub_0219F4B8: ; 0x0219F4B8
	ldr r0, [r1, #0xc]
	bx lr
	thumb_func_end sub_0219F4B8

	thumb_func_start ovy165_219f4bc
ovy165_219f4bc: ; 0x0219F4BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0219DA58
	cmp r0, #0
	bne _0219F4D0
	mov r0, #8
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
_0219F4D0:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r2, [r4]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	bl sub_0201F14C
	cmp r0, #0
	bne _0219F4EA
	mov r0, #6
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
_0219F4EA:
	mov r0, #7
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_219f4bc

	thumb_func_start ovy165_219f4f0
ovy165_219f4f0: ; 0x0219F4F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	cmp r0, #6
	beq _0219F504
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F504:
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	mov r1, #0xa3
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r5, [r0, #0x14]
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0xc]
_0219F52E:
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	blo _0219F586
	lsl r1, r0, #2
	ldr r0, [sp]
	mov r2, #0
	add r1, r0, r1
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #5
	ldr r0, [r0]
	str r0, [sp, #4]
	bl sub_0201CCF8
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #8]
	cmp r1, r7
	bne _0219F572
	ldrb r1, [r5, #8]
	cmp r1, #0
	bne _0219F572
	add sp, #0x10
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0219F572:
	cmp r6, r0
	bne _0219F586
	cmp r6, #0
	beq _0219F586
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _0219F586
	add sp, #0x10
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0219F586:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0219F52E
	ldr r1, _0219F5A8 ; =0x00000109
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	ldrb r0, [r5, #3]
	cmp r1, r0
	bne _0219F5A2
	add sp, #0x10
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0219F5A2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F5A8: .word 0x00000109
	thumb_func_end ovy165_219f4f0

	thumb_func_start ovy165_219f5ac
ovy165_219f5ac: ; 0x0219F5AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldrh r0, [r4, #6]
	bl sub_0203373C
	pop {r4, pc}
	thumb_func_end ovy165_219f5ac

	thumb_func_start ovy165_219f5c4
ovy165_219f5c4: ; 0x0219F5C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x24]
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r2, sp, #0
	add r4, r3, #0
	mov r7, #0
	bl sub_0204BEFC
	add r1, sp, #0
	ldrsh r0, [r1, r7]
	sub r0, r5, r0
	strh r0, [r4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r0, r6, r0
	strh r0, [r4, #2]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219f5c4

	thumb_func_start ovy165_219f5ec
ovy165_219f5ec: ; 0x0219F5EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x64
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, _0219F650 ; =0x021A4CFC
	mov r1, #0x38
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #0xc
	str r0, [sp]
	mov r0, #0
	mov r3, #0
	bl sub_02024D00
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	mov r0, #4
	str r0, [r4]
	str r6, [r4, #0x24]
	str r6, [r4, #0x20]
	str r6, [r4, #0x2c]
	str r6, [r4, #0x34]
	str r6, [r4, #0x30]
	ldrh r3, [r5]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	bl sub_0202E7A4
	str r0, [r4, #0x14]
	ldrh r0, [r5]
	bl sub_02021998
	str r0, [r4, #0x28]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219F650: .word 0x021A4CFC
	thumb_func_end ovy165_219f5ec

	thumb_func_start ovy165_219f654
ovy165_219f654: ; 0x0219F654
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4]
	cmp r2, #4
	beq _0219F662
	bl ovy165_219f7fc
_0219F662:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0219F66C
	bl sub_0203580C
_0219F66C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219F67C
	bl sub_020223CC
	ldr r0, [r4, #0x10]
	bl sub_02048564
_0219F67C:
	ldr r0, [r4, #0x28]
	bl sub_02021C44
	ldr r0, [r4, #0x28]
	bl sub_02021A18
	ldr r0, [r4, #0x14]
	bl sub_0202E818
	ldr r0, [r4, #8]
	bl sub_0203A83C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy165_219f654

	thumb_func_start ovy165_219f69c
ovy165_219f69c: ; 0x0219F69C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_0203A7F4
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0219F710
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #4]
	bl sub_0202E8D8
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x18
	bl sub_0202E68C
	cmp r0, #1
	bne _0219F710
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0219F6DC
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _0219F6DC
	bl sub_0203DA48
	cmp r0, #1
	bne _0219F6FA
_0219F6DC:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0219F6E8
	ldr r0, _0219F768 ; =0x00000547
	bl sub_02006254
_0219F6E8:
	ldr r0, [r4, #0xc]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_02048564
	b _0219F710
_0219F6FA:
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	mov r2, #0xf
	bl sub_0202E870
	ldr r0, [r4, #4]
	bl sub_02048244
_0219F710:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _0219F75E
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219F75E
	ldr r6, [r4, #4]
	mov r7, #0
	add r0, r6, #0
	str r7, [r4, #0x24]
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _0219F75E
	str r7, [r4, #0x30]
	ldrh r0, [r5]
	mov r2, #0xf
	mov r3, #0x10
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl sub_02035660
	str r0, [r4, #0x34]
_0219F75E:
	ldr r0, [r4, #0x28]
	bl sub_02021A3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F768: .word 0x00000547
	thumb_func_end ovy165_219f69c

	thumb_func_start ovy165_219f76c
ovy165_219f76c: ; 0x0219F76C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r2, [r4]
	cmp r2, #3
	bhi _0219F7E4
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219F786: ; jump table
	.short _0219F78E - _0219F786 - 2 ; case 0
	.short _0219F7A2 - _0219F786 - 2 ; case 1
	.short _0219F7B6 - _0219F786 - 2 ; case 2
	.short _0219F7CA - _0219F786 - 2 ; case 3
_0219F78E:
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	mov r2, #0x15
	mov r3, #0x15
	b _0219F7DE
_0219F7A2:
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	mov r2, #0x15
	mov r3, #0x14
	b _0219F7DE
_0219F7B6:
	mov r0, #4
	str r0, [sp]
	mov r3, #0xe
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x13
	b _0219F7DE
_0219F7CA:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x13
	mov r3, #0x1c
_0219F7DE:
	bl sub_020480C0
	str r0, [r4, #4]
_0219F7E4:
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #1
	mov r3, #0xc
	bl sub_02024E80
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219fa84
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy165_219f76c

	thumb_func_start ovy165_219f7fc
ovy165_219f7fc: ; 0x0219F7FC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #4
	beq _0219F82C
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0219F814
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x34]
_0219F814:
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r4, #4]
	bl sub_02048210
	ldr r0, [r4, #0x28]
	bl sub_02021C44
	mov r0, #4
	str r0, [r4]
_0219F82C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219f7fc

	thumb_func_start sub_0219F830
sub_0219F830: ; 0x0219F830
	ldr r0, [r1]
	cmp r0, #4
	beq _0219F83A
	mov r0, #1
	bx lr
_0219F83A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F830

	thumb_func_start ovy165_219f840
ovy165_219f840: ; 0x0219F840
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x4e
	add r5, r0, #0
	lsl r7, r7, #2
	add r4, r1, #0
	ldr r0, [r5, r7]
	add r1, r2, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0219F87A
	ldrh r1, [r5]
	sub r7, #0x38
	add r0, r7, #0
	bl sub_02048530
	add r7, r0, #0
	ldr r0, [r4, #0x2c]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02024920
	add r0, r6, #0
	bl sub_02048564
	add r6, r7, #0
_0219F87A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219fa84
	ldr r0, [r4, #0x28]
	bl sub_02021C44
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	mov r0, #0x4f
	str r6, [sp]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	mov r3, #1
	mov r5, #1
	bl sub_02021C7C
	add r0, r6, #0
	str r5, [r4, #0x24]
	bl sub_02048564
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy165_219f840

	thumb_func_start ovy165_219f8b8
ovy165_219f8b8: ; 0x0219F8B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r7, #0x4e
	add r5, r0, #0
	lsl r7, r7, #2
	add r4, r1, #0
	ldr r0, [r5, r7]
	add r1, r2, #0
	str r3, [sp, #0x1c]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0219F8F4
	ldrh r1, [r5]
	sub r7, #0x38
	add r0, r7, #0
	bl sub_02048530
	add r7, r0, #0
	ldr r0, [r4, #0x2c]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02024920
	add r0, r6, #0
	bl sub_02048564
	add r6, r7, #0
_0219F8F4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy165_219fa84
	ldr r0, [r4, #0x28]
	bl sub_02021C44
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0219F912
	bl sub_020223CC
	ldr r0, [r4, #0x10]
	bl sub_02048564
_0219F912:
	ldr r0, [sp, #0x1c]
	mov r1, #6
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x18
	str r6, [r4, #0x10]
	bl sub_0202E678
	bl sub_02017BCC
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, _0219F954 ; =ovy165_219f96c
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x10]
	bl sub_02022294
	str r0, [r4, #0xc]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F954: .word ovy165_219f96c
	thumb_func_end ovy165_219f8b8

	thumb_func_start sub_0219F958
sub_0219F958: ; 0x0219F958
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0219F968
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0219F968
	mov r0, #1
	bx lr
_0219F968:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219F958

	thumb_func_start ovy165_219f96c
ovy165_219f96c: ; 0x0219F96C
	push {r3, lr}
	cmp r0, #6
	bhi _0219F9C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219F97E: ; jump table
	.short _0219F9C8 - _0219F97E - 2 ; case 0
	.short _0219F9C8 - _0219F97E - 2 ; case 1
	.short _0219F98C - _0219F97E - 2 ; case 2
	.short _0219F9A0 - _0219F97E - 2 ; case 3
	.short _0219F9C8 - _0219F97E - 2 ; case 4
	.short _0219F9A8 - _0219F97E - 2 ; case 5
	.short _0219F9C2 - _0219F97E - 2 ; case 6
_0219F98C:
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _0219F9CC ; =0x00000515
	ldr r1, _0219F9D0 ; =0x0000FFFF
	bl sub_02005DF4
	b _0219F9C8
_0219F9A0:
	ldr r0, _0219F9D4 ; =0x0000056B
	bl sub_02006254
	b _0219F9C8
_0219F9A8:
	bl sub_02005FA8
	cmp r0, #0
	bne _0219F9BE
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #0
	pop {r3, pc}
_0219F9BE:
	mov r0, #1
	pop {r3, pc}
_0219F9C2:
	bl sub_020062A8
	pop {r3, pc}
_0219F9C8:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0219F9CC: .word 0x00000515
_0219F9D0: .word 0x0000FFFF
_0219F9D4: .word 0x0000056B
	thumb_func_end ovy165_219f96c

	thumb_func_start ovy165_219f9d8
ovy165_219f9d8: ; 0x0219F9D8
	push {r4, lr}
	ldrh r0, [r0]
	add r4, r1, #0
	bl sub_020241D4
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219f9d8

	thumb_func_start ovy165_219f9e8
ovy165_219f9e8: ; 0x0219F9E8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x2c]
	bl sub_02024274
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ovy165_219f9e8

	thumb_func_start sub_0219F9F8
sub_0219F9F8: ; 0x0219F9F8
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0219FA04 ; =sub_02024464
	bx r3
	nop
_0219FA04: .word sub_02024464
	thumb_func_end sub_0219F9F8

	thumb_func_start sub_0219FA08
sub_0219FA08: ; 0x0219FA08
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0219FA14 ; =sub_020244B4
	bx r3
	nop
_0219FA14: .word sub_020244B4
	thumb_func_end sub_0219FA08

	thumb_func_start sub_0219FA18
sub_0219FA18: ; 0x0219FA18
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0219FA24 ; =sub_020244C0
	bx r3
	nop
_0219FA24: .word sub_020244C0
	thumb_func_end sub_0219FA18

	thumb_func_start sub_0219FA28
sub_0219FA28: ; 0x0219FA28
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0219FA34 ; =sub_020244A4
	bx r3
	nop
_0219FA34: .word sub_020244A4
	thumb_func_end sub_0219FA28

	thumb_func_start sub_0219FA38
sub_0219FA38: ; 0x0219FA38
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	lsl r2, r3, #0x18
	ldr r3, _0219FA44 ; =sub_020246E4
	lsr r2, r2, #0x18
	bx r3
	.align 2, 0
_0219FA44: .word sub_020246E4
	thumb_func_end sub_0219FA38

	thumb_func_start ovy165_219fa48
ovy165_219fa48: ; 0x0219FA48
	push {r3, lr}
	sub sp, #8
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	add r2, r3, #0
	add r3, sp, #0x10
	ldrb r3, [r3]
	bl sub_0202451C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_219fa48

	thumb_func_start ovy165_219fa68
ovy165_219fa68: ; 0x0219FA68
	push {r3, lr}
	sub sp, #8
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r1, #0x2c]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl sub_0202437C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy165_219fa68

	thumb_func_start ovy165_219fa84
ovy165_219fa84: ; 0x0219FA84
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r4, [r4, #4]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219fa84

	thumb_func_start ovy165_219fab0
ovy165_219fab0: ; 0x0219FAB0
	push {r3, lr}
	ldrh r0, [r0]
	mov r1, #1
	mov r2, #0xc
	str r0, [sp]
	mov r0, #0
	mov r3, #0
	bl sub_02024D00
	pop {r3, pc}
	thumb_func_end ovy165_219fab0

	thumb_func_start sub_0219FAC4
sub_0219FAC4: ; 0x0219FAC4
	mov r0, #1
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FAC4

	thumb_func_start ovy165_219facc
ovy165_219facc: ; 0x0219FACC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	mov r2, #0xf
	bl sub_0202E82C
	ldr r0, [r4, #4]
	bl sub_02048244
	pop {r4, pc}
	thumb_func_end ovy165_219facc

	thumb_func_start ovy165_219fae8
ovy165_219fae8: ; 0x0219FAE8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x63
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, _0219FB38 ; =0x021A4D0C
	mov r1, #0x84
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	bl sub_0202D7E0
	mov r1, #0x40
	str r1, [sp]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0x20
	str r1, [sp, #4]
	mov r1, #0x1f
	bl sub_0204B0B8
	bl sub_0202D7E0
	ldrh r1, [r5]
	add r3, r4, #0
	mov r2, #0
	str r1, [sp]
	mov r1, #0x20
	add r3, #0x7c
	bl sub_0204B264
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219FB38: .word 0x021A4D0C
	thumb_func_end ovy165_219fae8

	thumb_func_start ovy165_219fb3c
ovy165_219fb3c: ; 0x0219FB3C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_219fb3c

	thumb_func_start ovy165_219fb54
ovy165_219fb54: ; 0x0219FB54
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl ovy165_219fc60
	ldrh r0, [r5]
	str r0, [sp]
	ldrb r1, [r4]
	add r0, sp, #0
	strb r1, [r0, #4]
	add r1, r4, #0
	add r1, #0x14
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
	strb r1, [r0, #0x11]
	mov r1, #0xd
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	ldr r0, [r5, #8]
	bl sub_0203D564
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_0202D974
	str r0, [r4, #0x74]
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy165_219fb54

	thumb_func_start ovy165_219fb9c
ovy165_219fb9c: ; 0x0219FB9C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, _0219FBF8 ; =0x021A4BF0
	add r3, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r4, #0
	str r0, [r3]
	add r0, r5, #0
	bl ovy165_219fc60
	ldrh r0, [r5]
	str r0, [sp, #0xc]
	ldrb r1, [r4]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	add r1, r4, #0
	add r1, #0x14
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	mov r1, #0x20
	strb r1, [r0, #0x1c]
	mov r1, #0x12
	strb r1, [r0, #0x1d]
	mov r1, #8
	strb r1, [r0, #0x1e]
	mov r1, #3
	strb r1, [r0, #0x1f]
	ldr r0, [r5, #8]
	bl sub_0203D564
	mov r1, #0x97
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, sp, #0xc
	bl sub_0202D974
	str r0, [r4, #0x74]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0219FBF8: .word 0x021A4BF0
	thumb_func_end ovy165_219fb9c

	thumb_func_start ovy165_219fbfc
ovy165_219fbfc: ; 0x0219FBFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0x74]
	bl sub_0202DA54
	ldrb r0, [r5]
	mov r4, #0
	cmp r0, #0
	bls _0219FC2A
	mov r6, #0xc
_0219FC12:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl sub_02048564
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _0219FC12
_0219FC2A:
	bl sub_0203D554
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_219fbfc

	thumb_func_start sub_0219FC34
sub_0219FC34: ; 0x0219FC34
	ldr r0, [r1, #0x74]
	ldr r3, _0219FC3C ; =sub_0202DB70
	bx r3
	nop
_0219FC3C: .word sub_0202DB70
	thumb_func_end sub_0219FC34

	thumb_func_start ovy165_219fc40
ovy165_219fc40: ; 0x0219FC40
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x74]
	bl sub_0202DBE4
	cmp r0, #0
	bne _0219FC52
	mov r0, #0x19
	pop {r4, pc}
_0219FC52:
	ldr r0, [r4, #0x74]
	bl sub_0202DC00
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r0, [r0, #2]
	pop {r4, pc}
	thumb_func_end ovy165_219fc40

	thumb_func_start ovy165_219fc60
ovy165_219fc60: ; 0x0219FC60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r0, r2, #0
	ldr r0, [r0]
	add r4, r1, #0
	mov r7, #0
	str r2, [sp]
	cmp r0, #0x10
	beq _0219FC84
_0219FC74:
	add r7, r7, #1
	cmp r7, #8
	bge _0219FC84
	ldr r0, [sp]
	lsl r1, r7, #2
	ldr r0, [r0, r1]
	cmp r0, #0x10
	bne _0219FC74
_0219FC84:
	mov r0, #0
	str r0, [sp, #8]
	strb r0, [r4]
	cmp r7, #0
	bgt _0219FC90
	b _0219FDA8
_0219FC90:
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0x17
	bhi _0219FD9C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FCA8: ; jump table
	.short _0219FCD8 - _0219FCA8 - 2 ; case 0
	.short _0219FCDC - _0219FCA8 - 2 ; case 1
	.short _0219FD08 - _0219FCA8 - 2 ; case 2
	.short _0219FD38 - _0219FCA8 - 2 ; case 3
	.short _0219FD3C - _0219FCA8 - 2 ; case 4
	.short _0219FD40 - _0219FCA8 - 2 ; case 5
	.short _0219FD44 - _0219FCA8 - 2 ; case 6
	.short _0219FD48 - _0219FCA8 - 2 ; case 7
	.short _0219FD4C - _0219FCA8 - 2 ; case 8
	.short _0219FD6C - _0219FCA8 - 2 ; case 9
	.short _0219FD70 - _0219FCA8 - 2 ; case 10
	.short _0219FD78 - _0219FCA8 - 2 ; case 11
	.short _0219FD7C - _0219FCA8 - 2 ; case 12
	.short _0219FD80 - _0219FCA8 - 2 ; case 13
	.short _0219FD88 - _0219FCA8 - 2 ; case 14
	.short _0219FD8C - _0219FCA8 - 2 ; case 15
	.short _0219FD9C - _0219FCA8 - 2 ; case 16
	.short _0219FD9C - _0219FCA8 - 2 ; case 17
	.short _0219FD9C - _0219FCA8 - 2 ; case 18
	.short _0219FD9C - _0219FCA8 - 2 ; case 19
	.short _0219FD9C - _0219FCA8 - 2 ; case 20
	.short _0219FD9C - _0219FCA8 - 2 ; case 21
	.short _0219FD74 - _0219FCA8 - 2 ; case 22
	.short _0219FD84 - _0219FCA8 - 2 ; case 23
_0219FCD8:
	mov r0, #0
	b _0219FD8E
_0219FCDC:
	mov r5, #0
_0219FCDE:
	ldr r0, [r6, #0x3c]
	add r1, r5, #0
	bl ovy165_219d9b8
	cmp r0, #0
	beq _0219FCFC
	ldrb r1, [r4]
	add r0, r5, #0
	add r0, #0x10
	lsl r1, r1, #1
	add r1, r4, r1
	strh r0, [r1, #2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0219FCFC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219FCDE
	b _0219FD9C
_0219FD08:
	mov r5, #0
_0219FD0A:
	add r1, r5, #0
	ldr r0, [r6, #0x3c]
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219FD2C
	ldrb r1, [r4]
	add r0, r5, #0
	add r0, #0x10
	lsl r1, r1, #1
	add r1, r4, r1
	strh r0, [r1, #2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0219FD2C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _0219FD0A
	b _0219FD9C
_0219FD38:
	mov r0, #3
	b _0219FD8E
_0219FD3C:
	mov r0, #4
	b _0219FD8E
_0219FD40:
	mov r0, #5
	b _0219FD8E
_0219FD44:
	mov r0, #6
	b _0219FD8E
_0219FD48:
	mov r0, #7
	b _0219FD8E
_0219FD4C:
	ldr r0, [r6, #0x30]
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0219F48C
	cmp r0, #6
	bne _0219FD64
	mov r0, #0x14
	b _0219FD8E
_0219FD64:
	cmp r0, #5
	bgt _0219FD9C
	mov r0, #0x15
	b _0219FD8E
_0219FD6C:
	mov r0, #9
	b _0219FD8E
_0219FD70:
	mov r0, #0xa
	b _0219FD8E
_0219FD74:
	mov r0, #0x16
	b _0219FD8E
_0219FD78:
	mov r0, #0xb
	b _0219FD8E
_0219FD7C:
	mov r0, #0xc
	b _0219FD8E
_0219FD80:
	mov r0, #0xd
	b _0219FD8E
_0219FD84:
	mov r0, #0x17
	b _0219FD8E
_0219FD88:
	mov r0, #0xe
	b _0219FD8E
_0219FD8C:
	mov r0, #0xf
_0219FD8E:
	ldrb r1, [r4]
	lsl r1, r1, #1
	add r1, r4, r1
	strh r0, [r1, #2]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0219FD9C:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r7
	bge _0219FDA8
	b _0219FC90
_0219FDA8:
	ldrb r0, [r4]
	mov r7, #0
	cmp r0, #0
	ble _0219FE02
_0219FDB0:
	lsl r0, r7, #1
	add r0, r4, r0
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	mov r0, #0xc
	ldrh r2, [r2, #2]
	mul r0, r7
	add r5, r4, r0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_219fe10
	str r0, [r5, #0x14]
	ldr r0, [sp, #4]
	ldrh r0, [r0, #2]
	cmp r0, #0x10
	blo _0219FDE6
	cmp r0, #0x13
	bhi _0219FDE6
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	beq _0219FDE6
	ldr r0, _0219FE08 ; =0x000035E0
	b _0219FDE8
_0219FDE6:
	ldr r0, _0219FE0C ; =0x000039E0
_0219FDE8:
	strh r0, [r5, #0x18]
	ldr r0, [sp, #4]
	ldrh r0, [r0, #2]
	cmp r0, #6
	bne _0219FDF6
	mov r0, #1
	b _0219FDF8
_0219FDF6:
	mov r0, #0
_0219FDF8:
	str r0, [r5, #0x1c]
	ldrb r0, [r4]
	add r7, r7, #1
	cmp r7, r0
	blt _0219FDB0
_0219FE02:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219FE08: .word 0x000035E0
_0219FE0C: .word 0x000039E0
	thumb_func_end ovy165_219fc60

	thumb_func_start ovy165_219fe10
ovy165_219fe10: ; 0x0219FE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r2, #0x10
	blt _0219FE48
	cmp r2, #0x13
	bgt _0219FE48
	add r2, #0x26
	add r1, r2, #0
	ldr r0, [r5, #0x3c]
	mov r2, #0
	bl sub_0201CCF8
	add r4, r0, #0
	ldrh r3, [r5]
	ldr r2, _0219FE60 ; =0x00000193
	mov r0, #0
	mov r1, #2
	bl sub_0204875C
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020487D4
	b _0219FE5A
_0219FE48:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, _0219FE64 ; =0x021A4BFC
	lsl r2, r2, #2
	ldr r0, [r5, r0]
	ldr r1, [r1, r2]
	bl sub_0204898C
	add r4, r0, #0
_0219FE5A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0219FE60: .word 0x00000193
_0219FE64: .word 0x021A4BFC
	thumb_func_end ovy165_219fe10

	thumb_func_start ovy165_219fe68
ovy165_219fe68: ; 0x0219FE68
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0204898C
	str r0, [sp, #8]
	ldr r1, _0219FEBC ; =0x000039E3
	add r0, sp, #8
	strh r1, [r0, #4]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _0219FE8E
	mov r0, #0
	b _0219FE90
_0219FE8E:
	mov r0, #1
_0219FE90:
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp]
	ldrh r0, [r5]
	add r3, sp, #0x20
	add r1, sp, #8
	str r0, [sp, #4]
	mov r0, #0x97
	lsl r0, r0, #2
	ldrb r3, [r3]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_0202E1F0
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_02048564
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0219FEBC: .word 0x000039E3
	thumb_func_end ovy165_219fe68

	thumb_func_start ovy165_219fec0
ovy165_219fec0: ; 0x0219FEC0
	push {r3, lr}
	cmp r0, #0
	beq _0219FECA
	bl sub_0202E34C
_0219FECA:
	pop {r3, pc}
	thumb_func_end ovy165_219fec0

	thumb_func_start ovy165_219fecc
ovy165_219fecc: ; 0x0219FECC
	push {r3, lr}
	cmp r0, #0
	beq _0219FED6
	bl sub_0202E37C
_0219FED6:
	pop {r3, pc}
	thumb_func_end ovy165_219fecc

	thumb_func_start ovy165_219fed8
ovy165_219fed8: ; 0x0219FED8
	push {r3, lr}
	cmp r0, #0
	beq _0219FEE2
	bl sub_0202E41C
_0219FEE2:
	pop {r3, pc}
	thumb_func_end ovy165_219fed8

	thumb_func_start ovy165_219fee4
ovy165_219fee4: ; 0x0219FEE4
	push {r3, lr}
	cmp r0, #0
	beq _0219FEEE
	bl sub_0202E430
_0219FEEE:
	pop {r3, pc}
	thumb_func_end ovy165_219fee4

	thumb_func_start ovy165_219fef0
ovy165_219fef0: ; 0x0219FEF0
	push {r4, r5, r6, lr}
	mov r1, #0
	mov r2, #0x17
	mov r6, #0x17
	bl sub_02026740
	mov r1, #0xe
	add r4, r0, #0
	bl sub_02026820
	cmp r0, #1
	beq _0219FF12
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x1d
	pop {r4, r5, r6, pc}
_0219FF12:
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_02026820
	cmp r0, #0
	bne _0219FF66
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_02026820
	cmp r0, #0
	bne _0219FF66
	add r0, r4, #0
	mov r1, #0x20
	bl sub_02026820
	cmp r0, #0
	bne _0219FF66
	add r0, r4, #0
	mov r1, #0x21
	bl sub_02026820
	cmp r0, #0
	bne _0219FF66
	add r0, r4, #0
	mov r1, #0x22
	bl sub_02026820
	cmp r0, #0
	bne _0219FF66
	add r0, r4, #0
	mov r1, #0x23
	bl sub_02026820
	cmp r0, #0
	bne _0219FF66
	add r0, r4, #0
	mov r1, #0x24
	bl sub_02026820
	cmp r0, #0
	beq _0219FF70
_0219FF66:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219FF70:
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_02026820
	cmp r0, #0
	beq _0219FF86
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219FF86:
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_02026820
	cmp r0, #0
	beq _0219FF9C
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #2
	pop {r4, r5, r6, pc}
_0219FF9C:
	add r0, r4, #0
	mov r1, #0x12
	bl sub_02026820
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x13
	bl sub_02026820
	lsl r0, r0, #1
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x14
	bl sub_02026820
	lsl r0, r0, #2
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02026820
	lsl r0, r0, #3
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x16
	bl sub_02026820
	lsl r0, r0, #4
	add r5, r5, r0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02026820
	lsl r0, r0, #5
	add r5, r5, r0
	cmp r5, #0x10
	bgt _021A000A
	bge _021A0040
	cmp r5, #8
	bhi _021A0074
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FFF8: ; jump table
	.short _021A0074 - _0219FFF8 - 2 ; case 0
	.short _021A0018 - _0219FFF8 - 2 ; case 1
	.short _021A0022 - _0219FFF8 - 2 ; case 2
	.short _021A0074 - _0219FFF8 - 2 ; case 3
	.short _021A002C - _0219FFF8 - 2 ; case 4
	.short _021A0074 - _0219FFF8 - 2 ; case 5
	.short _021A0074 - _0219FFF8 - 2 ; case 6
	.short _021A0074 - _0219FFF8 - 2 ; case 7
	.short _021A0036 - _0219FFF8 - 2 ; case 8
_021A000A:
	cmp r5, #0x20
	bgt _021A0012
	beq _021A004A
	b _021A0074
_021A0012:
	cmp r5, #0x3f
	beq _021A0054
	b _021A0074
_021A0018:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #3
	pop {r4, r5, r6, pc}
_021A0022:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #4
	pop {r4, r5, r6, pc}
_021A002C:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #5
	pop {r4, r5, r6, pc}
_021A0036:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #6
	pop {r4, r5, r6, pc}
_021A0040:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #7
	pop {r4, r5, r6, pc}
_021A004A:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A0054:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_02026820
	cmp r0, #0
	beq _021A006A
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021A006A:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #9
	pop {r4, r5, r6, pc}
_021A0074:
	add r0, r4, #0
	mov r1, #0x18
	mov r5, #0x18
	bl sub_02026820
	cmp r0, #0
	beq _021A008C
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_021A008C:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_02026820
	cmp r0, #0
	beq _021A00A2
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021A00A2:
	add r0, r4, #0
	mov r1, #0x1a
	mov r6, #0x1a
	bl sub_02026820
	cmp r0, #0
	beq _021A00BA
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_021A00BA:
	add r0, r4, #0
	mov r1, #0x34
	bl sub_02026820
	cmp r0, #0
	ble _021A00D0
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xd
	pop {r4, r5, r6, pc}
_021A00D0:
	bge _021A00DC
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x13
	pop {r4, r5, r6, pc}
_021A00DC:
	add r0, r4, #0
	mov r1, #0x35
	bl sub_02026820
	cmp r0, #0
	ble _021A00F2
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xe
	pop {r4, r5, r6, pc}
_021A00F2:
	bge _021A00FE
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x14
	pop {r4, r5, r6, pc}
_021A00FE:
	add r0, r4, #0
	mov r1, #0x36
	bl sub_02026820
	cmp r0, #0
	ble _021A0114
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0xf
	pop {r4, r5, r6, pc}
_021A0114:
	bge _021A0120
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x15
	pop {r4, r5, r6, pc}
_021A0120:
	add r0, r4, #0
	mov r1, #0x37
	bl sub_02026820
	cmp r0, #0
	ble _021A0136
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x10
	pop {r4, r5, r6, pc}
_021A0136:
	bge _021A0142
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x16
	pop {r4, r5, r6, pc}
_021A0142:
	add r0, r4, #0
	mov r1, #0x38
	bl sub_02026820
	cmp r0, #0
	ble _021A0158
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x11
	pop {r4, r5, r6, pc}
_021A0158:
	bge _021A0164
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x17
	pop {r4, r5, r6, pc}
_021A0164:
	add r0, r4, #0
	mov r1, #0x39
	bl sub_02026820
	cmp r0, #0
	ble _021A017A
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_021A017A:
	bge _021A0186
	add r0, r4, #0
	bl sub_0203A24C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021A0186:
	add r0, r4, #0
	mov r1, #0x1d
	mov r5, #0x1d
	bl sub_02026820
	cmp r0, #0
	beq _021A019E
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x19
	pop {r4, r5, r6, pc}
_021A019E:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_02026820
	cmp r0, #0
	beq _021A01B4
	add r0, r4, #0
	bl sub_0203A24C
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A01B4:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_02026820
	cmp r0, #0
	beq _021A01CA
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x1b
	pop {r4, r5, r6, pc}
_021A01CA:
	add r0, r4, #0
	mov r1, #0x27
	bl sub_02026820
	cmp r0, #0
	bne _021A01E2
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02026820
	cmp r0, #0
	beq _021A01EC
_021A01E2:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x1c
	pop {r4, r5, r6, pc}
_021A01EC:
	add r0, r4, #0
	bl sub_0203A24C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy165_219fef0

	thumb_func_start ovy165_21a01f8
ovy165_21a01f8: ; 0x021A01F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy165_219fef0
	cmp r0, #0x1a
	beq _021A0212
	cmp r0, #0x1b
	beq _021A0216
	cmp r0, #0x1c
	beq _021A021A
	b _021A022C
_021A0212:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A0216:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A021A:
	ldrh r2, [r5]
	add r0, r4, #0
	mov r1, #0x27
	bl sub_020267F0
	cmp r0, #0
	beq _021A022C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A022C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_21a01f8

	thumb_func_start ovy165_21a0230
ovy165_21a0230: ; 0x021A0230
	push {r3, lr}
	add r2, r0, #0
	ldrh r2, [r2]
	add r0, r1, #0
	mov r1, #0x1b
	bl sub_020267F0
	cmp r0, #0
	beq _021A0246
	mov r0, #1
	pop {r3, pc}
_021A0246:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_21a0230

	thumb_func_start ovy165_21a024c
ovy165_21a024c: ; 0x021A024C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_0201FDF8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r4, _021A02A0 ; =0x00000000
	beq _021A0298
	mov r0, #0xa3
	lsl r0, r0, #2
	add r7, r5, r0
_021A026A:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0201FF08
	ldr r1, [r7]
	ldrh r3, [r5]
	add r1, #0x54
	ldrh r1, [r1]
	mov r2, #0
	bl ovy165_21a23e8
	cmp r0, #1
	bne _021A028E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A028E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _021A026A
_021A0298:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A02A0: .word 0x00000000
	thumb_func_end ovy165_21a024c

	thumb_func_start ovy165_21a02a4
ovy165_21a02a4: ; 0x021A02A4
	push {r3, lr}
	add r0, r1, #0
	bl ovy165_219fef0
	cmp r0, #0x1a
	beq _021A02BA
	cmp r0, #0x1b
	beq _021A02BA
	cmp r0, #0x1c
	beq _021A02BE
	b _021A02C2
_021A02BA:
	mov r0, #0x17
	pop {r3, pc}
_021A02BE:
	mov r0, #0x16
	pop {r3, pc}
_021A02C2:
	mov r0, #0x16
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_21a02a4

	thumb_func_start ovy165_21a02c8
ovy165_21a02c8: ; 0x021A02C8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	ldr r1, _021A0300 ; =0x000001ED
	cmp r0, r1
	bne _021A02FE
	add r0, r5, #0
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CCF8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201EF84
	add r1, r0, #0
	cmp r4, r1
	beq _021A02FE
	add r0, r5, #0
	bl sub_0201C864
_021A02FE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0300: .word 0x000001ED
	thumb_func_end ovy165_21a02c8

	thumb_func_start ovy165_21a0304
ovy165_21a0304: ; 0x021A0304
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	ldr r1, _021A0340 ; =0x00000289
	cmp r0, r1
	bne _021A033E
	add r0, r5, #0
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CCF8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201EF8C
	add r1, r0, #0
	cmp r4, r1
	beq _021A033E
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0201C864
_021A033E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0340: .word 0x00000289
	thumb_func_end ovy165_21a0304

	thumb_func_start ovy165_21a0344
ovy165_21a0344: ; 0x021A0344
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0xa3
	mov r7, #0x55
	add r6, r2, #0
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0xa
	lsl r7, r7, #2
	str r2, [r1, #0x50]
	ldr r1, [r5, r7]
	bl ovy165_219f9d8
	mov r3, #0xa3
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r1, [r5, r7]
	add r3, #0x54
	ldrh r3, [r3]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219FA08
	add r4, #0x52
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy165_219d74c
	ldr r1, [r5, r7]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_21a0344

	thumb_func_start sub_021A038C
sub_021A038C: ; 0x021A038C
	ldr r2, _021A0394 ; =0x0219DE11
	ldr r3, _021A0398 ; =ovy165_21a0344
	mov r1, #0
	bx r3
	.align 2, 0
_021A0394: .word 0x0219DE11
_021A0398: .word ovy165_21a0344
	thumb_func_end sub_021A038C

	thumb_func_start sub_021A039C
sub_021A039C: ; 0x021A039C
	ldr r2, _021A03A4 ; =ovy165_219ddf4
	ldr r3, _021A03A8 ; =ovy165_21a0344
	mov r1, #0
	bx r3
	.align 2, 0
_021A03A4: .word ovy165_219ddf4
_021A03A8: .word ovy165_21a0344
	thumb_func_end sub_021A039C

	thumb_func_start sub_021A03AC
sub_021A03AC: ; 0x021A03AC
	ldr r2, _021A03B4 ; =ovy165_219ddf4
	ldr r3, _021A03B8 ; =ovy165_21a0344
	bx r3
	nop
_021A03B4: .word ovy165_219ddf4
_021A03B8: .word ovy165_21a0344
	thumb_func_end sub_021A03AC

	thumb_func_start ovy165_21a03bc
ovy165_21a03bc: ; 0x021A03BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0xa3
	add r4, r0, #0
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	add r5, r1, #0
	add r0, #0x54
	ldrh r0, [r0]
	bl ovy165_219fef0
	str r0, [sp, #4]
	cmp r0, #0x1d
	bhi _021A04CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A03E4: ; jump table
	.short _021A059A - _021A03E4 - 2 ; case 0
	.short _021A0420 - _021A03E4 - 2 ; case 1
	.short _021A0444 - _021A03E4 - 2 ; case 2
	.short _021A04CE - _021A03E4 - 2 ; case 3
	.short _021A04D4 - _021A03E4 - 2 ; case 4
	.short _021A04DA - _021A03E4 - 2 ; case 5
	.short _021A04E0 - _021A03E4 - 2 ; case 6
	.short _021A04E6 - _021A03E4 - 2 ; case 7
	.short _021A059A - _021A03E4 - 2 ; case 8
	.short _021A04EC - _021A03E4 - 2 ; case 9
	.short _021A059A - _021A03E4 - 2 ; case 10
	.short _021A04F2 - _021A03E4 - 2 ; case 11
	.short _021A04F2 - _021A03E4 - 2 ; case 12
	.short _021A0512 - _021A03E4 - 2 ; case 13
	.short _021A0512 - _021A03E4 - 2 ; case 14
	.short _021A0512 - _021A03E4 - 2 ; case 15
	.short _021A0512 - _021A03E4 - 2 ; case 16
	.short _021A0512 - _021A03E4 - 2 ; case 17
	.short _021A0512 - _021A03E4 - 2 ; case 18
	.short _021A0520 - _021A03E4 - 2 ; case 19
	.short _021A0520 - _021A03E4 - 2 ; case 20
	.short _021A0520 - _021A03E4 - 2 ; case 21
	.short _021A0520 - _021A03E4 - 2 ; case 22
	.short _021A0520 - _021A03E4 - 2 ; case 23
	.short _021A0520 - _021A03E4 - 2 ; case 24
	.short _021A059A - _021A03E4 - 2 ; case 25
	.short _021A0562 - _021A03E4 - 2 ; case 26
	.short _021A0562 - _021A03E4 - 2 ; case 27
	.short _021A0592 - _021A03E4 - 2 ; case 28
	.short _021A059A - _021A03E4 - 2 ; case 29
_021A0420:
	ldr r1, [r4, #0x30]
	mov r0, #0xa
	lsl r1, r1, #2
	mov r5, #0x59
	strb r0, [r4, #0xc]
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	bl sub_0219F4B4
	add r1, r5, #0
	sub r1, #0x44
	strh r0, [r4, r1]
	ldr r0, _021A05A0 ; =ovy165_21a0638
_021A043E:
	sub r5, #0x40
	str r0, [r4, r5]
	b _021A059A
_021A0444:
	ldr r0, [r4, #0x3c]
	bl sub_0201D460
	mov r6, #0x55
	lsl r6, r6, #2
	add r7, r0, #0
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	mov r5, #0
	bl sub_0219F9F8
	mov r0, #3
	str r0, [sp]
	add r3, r7, #1
	lsl r3, r3, #0x10
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy165_219fa48
	ldr r3, _021A05A4 ; =0x021A0711
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	ldrh r1, [r4]
	mov r0, #0xc
	bl sub_02048530
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	mov r1, #0x73
	add r2, r7, #0
	bl sub_0201CCF8
	add r0, r7, #0
	bl sub_0202D2C8
	add r0, r7, #0
	bl sub_02048564
	sub r6, #0x2c
_021A04B0:
	ldr r1, _021A05A8 ; =0x021A4C5C
	lsl r7, r5, #1
	ldrh r1, [r1, r7]
	ldr r0, [r4, #0x3c]
	mov r2, #0
	bl sub_0201CCF8
	add r1, r4, r7
	strh r0, [r1, r6]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021A04B0
_021A04CC:
	b _021A059A
_021A04CE:
	add r0, r4, #0
	mov r1, #0x48
	b _021A0596
_021A04D4:
	add r0, r4, #0
	mov r1, #0x2e
	b _021A0596
_021A04DA:
	add r0, r4, #0
	mov r1, #0x30
	b _021A0596
_021A04E0:
	add r0, r4, #0
	mov r1, #0x31
	b _021A0596
_021A04E6:
	add r0, r4, #0
	mov r1, #0x2f
	b _021A0596
_021A04EC:
	add r0, r4, #0
	mov r1, #0x34
	b _021A0596
_021A04F2:
	ldr r1, [r4, #0x30]
	mov r0, #0xa
	lsl r1, r1, #2
	mov r5, #0x59
	strb r0, [r4, #0xc]
	add r1, r4, r1
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	bl sub_0219F4B4
	add r1, r5, #0
	sub r1, #0x44
	strh r0, [r4, r1]
	ldr r0, _021A05AC ; =ovy165_21a05b4
	b _021A043E
_021A0512:
	ldr r2, [sp, #4]
	add r0, r4, #0
	sub r2, #0xd
	lsl r2, r2, #0x10
	mov r1, #0x38
	lsr r2, r2, #0x10
	b _021A0542
_021A0520:
	ldr r0, [sp, #4]
	ldr r2, [r4, r6]
	sub r0, #0x13
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r2, #0x54
	add r1, r5, #0
	ldrh r2, [r2]
	ldr r0, [r4, #0x3c]
	add r1, #0xd
	bl ovy165_21a0c94
	cmp r0, #0
	bne _021A0548
	add r0, r4, #0
	mov r1, #0x5b
_021A0540:
	add r2, r5, #0
_021A0542:
	bl ovy165_21a0ce8
	b _021A059A
_021A0548:
	ldr r0, [r4, #0x3c]
	mov r1, #9
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0xff
	bne _021A055C
	add r0, r4, #0
	mov r1, #0x5a
	b _021A0540
_021A055C:
	add r0, r4, #0
	mov r1, #0x59
	b _021A0540
_021A0562:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	lsl r3, r5, #0x10
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0219FA28
	ldr r3, _021A05B0 ; =ovy165_219de18
	add r0, r4, #0
	mov r1, #0x35
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	b _021A059A
_021A0592:
	add r0, r4, #0
	mov r1, #0x32
_021A0596:
	bl ovy165_21a0ca8
_021A059A:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A05A0: .word ovy165_21a0638
_021A05A4: .word 0x021A0711
_021A05A8: .word 0x021A4C5C
_021A05AC: .word ovy165_21a05b4
_021A05B0: .word ovy165_219de18
	thumb_func_end ovy165_21a03bc

	thumb_func_start ovy165_21a05b4
ovy165_21a05b4: ; 0x021A05B4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r1, [r5, #0x30]
	mov r4, #0x59
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	bl sub_0219F4B4
	add r6, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xa
	str r1, [r0, #0x50]
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9d8
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	add r0, r4, #0
	sub r0, #0x44
	ldrh r3, [r5, r0]
	cmp r3, #0
	beq _021A0618
	mov r0, #3
	str r0, [sp]
	sub r4, #0x10
	sub r3, r6, r3
	lsl r3, r3, #0x10
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy165_219fa48
	add r0, r5, #0
	mov r1, #0x2d
	b _021A061C
_021A0618:
	add r0, r5, #0
	mov r1, #0x33
_021A061C:
	ldr r3, _021A0634 ; =ovy165_219de18
	mov r2, #1
	bl ovy165_219d74c
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_219f9e8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A0634: .word ovy165_219de18
	thumb_func_end ovy165_21a05b4

	thumb_func_start ovy165_21a0638
ovy165_21a0638: ; 0x021A0638
	push {r3, r4, r5, lr}
	mov r1, #0xa3
	add r4, r0, #0
	lsl r1, r1, #2
	mov r5, #0x55
	ldr r1, [r4, r1]
	mov r2, #0xa
	lsl r5, r5, #2
	str r2, [r1, #0x50]
	ldr r1, [r4, r5]
	bl ovy165_219f9d8
	ldr r1, [r4, r5]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	mov r5, #0
	bl sub_0219F9F8
	add r0, r4, #0
	bl ovy165_21a024c
	sub r1, r5, #1
	cmp r0, r1
	beq _021A0674
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #1
	ldr r3, _021A0690 ; =ovy165_21a0698
	b _021A067C
_021A0674:
	ldr r3, _021A0694 ; =0x0219DE11
	add r0, r4, #0
	mov r1, #0x33
	mov r2, #1
_021A067C:
	bl ovy165_219d74c
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, pc}
	nop
_021A0690: .word ovy165_21a0698
_021A0694: .word 0x0219DE11
	thumb_func_end ovy165_21a0638

	thumb_func_start ovy165_21a0698
ovy165_21a0698: ; 0x021A0698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy165_21a024c
	mov r4, #0x55
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f7fc
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r4, #0
	add r1, #0x10
	ldr r1, [r2, r1]
	mov r2, #3
	bl ovy165_219f0a0
	mov r7, #0xa3
	str r6, [r5, #0x30]
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	add r1, r6, #0
	ldr r0, [r0]
	bl sub_0201FF08
	str r0, [r5, #0x3c]
	add r0, r5, #0
	mov r1, #0
	bl ovy165_21a03bc
	ldr r3, [r5, r7]
	ldrh r0, [r5]
	add r1, r3, #0
	add r1, #0x54
	str r0, [sp]
	add r3, #0x40
	ldrh r1, [r1]
	ldrh r3, [r3]
	ldr r0, [r5, #0x3c]
	mov r2, #0
	bl ovy165_21a2928
	ldr r1, [r5, #0x30]
	add r4, #0x10
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r4]
	add r0, r5, #0
	bl ovy165_219f310
	ldr r0, _021A070C ; =0x0000056F
	bl sub_02006254
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A070C: .word 0x0000056F
	thumb_func_end ovy165_21a0698
_021A0710:
	.byte 0x0D, 0x21, 0x01, 0x73, 0x00, 0x22, 0xA3, 0x21, 0x82, 0x73, 0x89, 0x00, 0x41, 0x58, 0x03, 0x4B
	.byte 0x0A, 0x66, 0x55, 0x21, 0x89, 0x00, 0x41, 0x58, 0x18, 0x47, 0xC0, 0x46, 0xCD, 0xFA, 0x19, 0x02
	.byte 0x0D, 0x21, 0x01, 0x73, 0x06, 0x21, 0x81, 0x73, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy165_21a073c
ovy165_21a073c: ; 0x021A073C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #7
	bls _021A074A
	b _021A0C84
_021A074A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0756: ; jump table
	.short _021A0766 - _021A0756 - 2 ; case 0
	.short _021A0980 - _021A0756 - 2 ; case 1
	.short _021A09BA - _021A0756 - 2 ; case 2
	.short _021A09E6 - _021A0756 - 2 ; case 3
	.short _021A0ADA - _021A0756 - 2 ; case 4
	.short _021A0B14 - _021A0756 - 2 ; case 5
	.short _021A0B68 - _021A0756 - 2 ; case 6
	.short _021A0C26 - _021A0756 - 2 ; case 7
_021A0766:
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0xe
	bl sub_020480C0
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #1
	mov r2, #1
	mov r3, #0xc
	bl sub_02024E80
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x50]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x4c]
	add r0, #8
	str r0, [sp, #0x4c]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x48]
	add r0, #0x10
	str r0, [sp, #0x48]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x44]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x40]
	add r0, #8
	str r0, [sp, #0x40]
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x3c]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x34]
	add r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x30]
	sub r0, #0xc
	mov r6, #0
	mov r5, #0
	str r0, [sp, #0x30]
_021A0816:
	ldr r1, _021A0B3C ; =0x021A4C5C
	lsl r7, r6, #1
	ldrh r1, [r1, r7]
	ldr r0, [r4, #0x3c]
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x30]
	add r2, r4, r7
	ldrh r1, [r2, r1]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	cmp r0, #0xa
	blo _021A0836
	mov r0, #1
	str r0, [sp, #0x1c]
_021A0836:
	ldr r0, [sp, #0x50]
	add r1, r6, #0
	ldr r0, [r4, r0]
	add r1, #0xa1
	bl sub_0204898C
	add r7, r0, #0
	lsl r0, r6, #4
	str r0, [sp, #0xc]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	str r7, [sp]
	ldr r0, [r4, r0]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	add r2, r5, #0
	ldr r0, [r4, r0]
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [sp, #0x44]
	mov r1, #0xa8
	ldr r0, [r4, r0]
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldrh r1, [r4]
	mov r0, #0x20
	bl sub_02048530
	add r7, r0, #0
	ldrh r0, [r4]
	bl sub_020241D4
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x24]
	add r1, r5, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl sub_02024920
	ldr r1, [sp, #0x40]
	add r0, r7, #0
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_02022888
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x38]
	str r7, [sp]
	ldr r0, [r4, r0]
	mov r3, #0x68
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x34]
	sub r2, r3, r2
	ldr r3, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	ldr r0, [sp, #0x20]
	bl sub_02048564
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [sp, #0x24]
	bl sub_02024274
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #6
	blo _021A0816
	mov r0, #0x4e
	lsl r0, r0, #2
	sub r0, r0, #4
	str r0, [sp, #0x5c]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x58]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x54]
	add r0, #0xc
	str r0, [sp, #0x54]
_021A0928:
	ldr r0, [sp, #0x1c]
	mov r7, #0x48
	cmp r0, #1
	beq _021A0932
	mov r7, #0x50
_021A0932:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa7
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x5c]
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r0, #0
	lsl r2, r7, #0x18
	lsl r3, r5, #0x14
	ldr r0, [sp, #0x58]
	str r6, [sp]
	ldr r0, [r4, r0]
	lsr r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	asr r3, r3, #0x10
	ldr r0, [r4, r0]
	bl sub_02021C7C
	add r0, r6, #0
	bl sub_02048564
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021A0928
	mov r0, #1
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A0980:
	mov r5, #0x4d
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A09D6
	ldr r5, [r4, r5]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #2
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A09BA:
	bl sub_0203DEFC
	mov r1, #1
	tst r0, r1
	bne _021A09D8
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	bne _021A09D8
	bl sub_0203DA48
	cmp r0, #1
	beq _021A09D8
_021A09D6:
	b _021A0C84
_021A09D8:
	ldr r0, _021A0B40 ; =0x00000547
	bl sub_02006254
	mov r0, #3
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A09E6:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020484F4
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0xf
	str r1, [sp, #4]
	mov r1, #0x50
	mov r2, #0
	mov r3, #0x20
	mov r6, #0
	bl sub_020470F8
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x6c]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x68]
	add r0, #8
	str r0, [sp, #0x68]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x64]
	add r0, #8
	str r0, [sp, #0x64]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r0, [sp, #0x60]
	add r0, #0x10
	str r0, [sp, #0x60]
_021A0A2A:
	ldr r1, _021A0B3C ; =0x021A4C5C
	lsl r2, r6, #1
	ldrh r1, [r1, r2]
	ldr r0, [r4, #0x3c]
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x6c]
	mov r1, #0xa8
	ldr r0, [r4, r0]
	bl sub_0204898C
	add r7, r0, #0
	ldrh r1, [r4]
	mov r0, #0x20
	bl sub_02048530
	add r5, r0, #0
	ldrh r0, [r4]
	bl sub_020241D4
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x28]
	str r0, [sp, #0x2c]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [sp, #0x2c]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02024920
	ldr r1, [sp, #0x68]
	add r0, r5, #0
	ldr r1, [r4, r1]
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x64]
	str r5, [sp]
	ldr r0, [r4, r0]
	mov r3, #0x68
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x60]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	lsl r3, r6, #0x14
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r7, #0
	bl sub_02048564
	add r0, r5, #0
	bl sub_02048564
	ldr r0, [sp, #0x2c]
	bl sub_02024274
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #6
	blo _021A0A2A
	mov r0, #4
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A0ADA:
	mov r5, #0x4d
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0B30
	ldr r5, [r4, r5]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #5
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A0B14:
	bl sub_0203DEFC
	mov r1, #1
	tst r0, r1
	bne _021A0B32
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	bne _021A0B32
	bl sub_0203DA48
	cmp r0, #1
	beq _021A0B32
_021A0B30:
	b _021A0C84
_021A0B32:
	mov r0, #6
	strb r0, [r4, #0xe]
	ldr r0, _021A0B40 ; =0x00000547
	b _021A0B44
	nop
_021A0B3C: .word 0x021A4C5C
_021A0B40: .word 0x00000547
_021A0B44:
	bl sub_02006254
	mov r5, #0x4d
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020484B4
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	add sp, #0x70
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A0B68:
	mov r7, #0xa3
	lsl r7, r7, #2
	ldr r1, [r4, r7]
	ldrh r2, [r4]
	ldr r0, [r4, #0x3c]
	add r1, #0x60
	bl sub_0201D358
	mov r6, #0x55
	lsl r6, r6, #2
	add r5, r0, #0
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f7fc
	cmp r5, #0
	bne _021A0B92
	mov r0, #7
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A0B92:
	ldr r0, _021A0C88 ; =0x0000FFFE
	cmp r5, r0
	bne _021A0BA0
	mov r0, #7
	add sp, #0x70
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_021A0BA0:
	mov r0, #2
	lsl r0, r0, #0xe
	add r1, r5, #0
	tst r1, r0
	beq _021A0BEE
	sub r1, r5, r0
	ldr r0, [r4, r7]
	add r0, #0x56
	strh r1, [r0]
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, [r4, r7]
	ldr r1, [r4, r6]
	add r3, #0x56
	ldrh r3, [r3]
	add r0, r4, #0
	mov r2, #1
	bl sub_0219FA28
	ldr r3, _021A0C8C ; =0x0219DE85
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #0
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021A0BEE:
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r1, [r4, r6]
	add r0, r4, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_0219FA28
	ldr r3, _021A0C90 ; =0x021A0731
	add r0, r4, #0
	mov r1, #0x2a
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021A0C26:
	ldr r0, [r4, #0x3c]
	mov r1, #5
	mov r2, #0
	mov r6, #5
	mov r7, #0
	bl sub_0201CCF8
	mov r5, #0xa3
	lsl r5, r5, #2
	ldr r3, [r4, r5]
	mov r2, #0
	add r0, r3, #0
	add r0, #0x6f
	ldrb r0, [r0]
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r4]
	str r0, [sp, #8]
	ldr r0, [r3]
	add r3, #0x40
	ldrh r3, [r3]
	ldr r1, [r4, #0x3c]
	bl sub_02020788
	cmp r0, #0
	beq _021A0C6E
	mov r0, #0x13
	strb r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r5]
	add sp, #0x70
	str r1, [r0, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #9
	str r1, [r0, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_021A0C6E:
	ldr r0, [r4, r5]
	str r6, [r0, #0x44]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, r5]
	str r1, [r0, #0x4c]
	ldr r0, [r4, r5]
	mov r1, #0xa
	str r1, [r0, #0x50]
	add r0, r4, #0
	bl ovy165_219de18
_021A0C84:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0C88: .word 0x0000FFFE
_021A0C8C: .word 0x0219DE85
_021A0C90: .word 0x021A0731
	thumb_func_end ovy165_21a073c

	thumb_func_start ovy165_21a0c94
ovy165_21a0c94: ; 0x021A0C94
	push {r4, lr}
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021A0CA4
	mov r4, #1
_021A0CA4:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy165_21a0c94

	thumb_func_start ovy165_21a0ca8
ovy165_21a0ca8: ; 0x021A0CA8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0xa3
	mov r6, #0x55
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0xa
	lsl r6, r6, #2
	str r2, [r1, #0x50]
	ldr r1, [r5, r6]
	bl ovy165_219f9d8
	ldr r1, [r5, r6]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r3, _021A0CE4 ; =ovy165_219de18
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0CE4: .word ovy165_219de18
	thumb_func_end ovy165_21a0ca8

	thumb_func_start ovy165_21a0ce8
ovy165_21a0ce8: ; 0x021A0CE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xa3
	mov r4, #0x55
	add r7, r2, #0
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0xa
	lsl r4, r4, #2
	str r2, [r1, #0x50]
	ldr r1, [r5, r4]
	bl ovy165_219f9d8
	ldr r1, [r5, r4]
	ldr r3, [r5, #0x3c]
	add r0, r5, #0
	mov r2, #0
	bl sub_0219F9F8
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #1
	add r3, r7, #0
	bl sub_0219FA38
	ldr r3, _021A0D34 ; =ovy165_219de18
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy165_219d74c
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy165_219f9e8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0D34: .word ovy165_219de18
	thumb_func_end ovy165_21a0ce8

	thumb_func_start ovy165_21a0d38
ovy165_21a0d38: ; 0x021A0D38
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl ovy165_21a0ef0
	add r0, r5, #0
	bl ovy165_21a0f18
	mov r4, #0xa3
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r1, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A0DB8
	ldr r0, [r1, #0x74]
	cmp r0, #1
	beq _021A0D64
	cmp r0, #2
	beq _021A0D78
	b _021A0DB8
_021A0D64:
	mov r0, #2
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x84
	mov r2, #0xa
	mov r3, #0
	bl ovy165_21a10c8
	sub r4, #0x90
	b _021A0DB6
_021A0D78:
	mov r6, #0
	add r0, r5, #0
	add r1, #0x78
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl ovy165_21a10c8
	add r1, r4, #0
	sub r1, #0x94
	str r0, [r5, r1]
	str r6, [sp]
	ldr r1, [r5, r4]
	add r0, r5, #0
	add r1, #0x84
	mov r2, #0xb
	mov r3, #0
	bl ovy165_21a10c8
	add r1, r4, #0
	sub r1, #0x90
	str r0, [r5, r1]
	str r6, [sp]
	ldr r1, [r5, r4]
	add r0, r5, #0
	add r1, #0x90
	mov r2, #0x16
	mov r3, #0
	bl ovy165_21a10c8
	sub r4, #0x8c
_021A0DB6:
	str r0, [r5, r4]
_021A0DB8:
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r3, [r5, r1]
	add r0, r3, #0
	add r0, #0xa4
	ldrb r2, [r0]
	add r0, r1, #0
	sub r0, #0x78
	strb r2, [r5, r0]
	mov r0, #0
	sub r1, #0x77
	add r3, #0xa0
	strb r0, [r5, r1]
	ldr r0, [r3]
	cmp r0, #1
	bne _021A0DDE
	add r0, r5, #0
	bl ovy165_21a1608
_021A0DDE:
	ldr r0, _021A0DE8 ; =0x00000256
	mov r1, #0
	strh r1, [r5, r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A0DE8: .word 0x00000256
	thumb_func_end ovy165_21a0d38

	thumb_func_start ovy165_21a0dec
ovy165_21a0dec: ; 0x021A0DEC
	push {r3, r4, r5, lr}
	mov r1, #0xa3
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r1, #0xa0
	ldr r1, [r1]
	cmp r1, #1
	bne _021A0E02
	bl ovy165_21a1688
_021A0E02:
	mov r4, #0xa3
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r1, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A0E46
	ldr r0, [r1, #0x74]
	cmp r0, #1
	beq _021A0E1E
	cmp r0, #2
	beq _021A0E24
	b _021A0E46
_021A0E1E:
	add r0, r5, #0
	sub r4, #0x90
	b _021A0E40
_021A0E24:
	add r1, r4, #0
	sub r1, #0x94
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_21a11f8
	add r1, r4, #0
	sub r1, #0x90
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy165_21a11f8
	add r0, r5, #0
	sub r4, #0x8c
_021A0E40:
	ldr r1, [r5, r4]
	bl ovy165_21a11f8
_021A0E46:
	add r0, r5, #0
	bl sub_021A10C4
	add r0, r5, #0
	bl sub_021A0F08
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_21a0dec

	thumb_func_start ovy165_21a0e54
ovy165_21a0e54: ; 0x021A0E54
	push {r3, r4, r5, lr}
	mov r5, #0xa3
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	add r1, r2, #0
	add r1, #0x9c
	ldr r1, [r1]
	cmp r1, #1
	bne _021A0E98
	ldr r1, [r2, #0x74]
	cmp r1, #1
	beq _021A0E74
	cmp r1, #2
	beq _021A0E78
	b _021A0E98
_021A0E74:
	sub r5, #0x90
	b _021A0E92
_021A0E78:
	add r1, r5, #0
	sub r1, #0x94
	ldr r1, [r4, r1]
	bl ovy165_21a1228
	add r1, r5, #0
	sub r1, #0x90
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_21a1228
	add r0, r4, #0
	sub r5, #0x8c
_021A0E92:
	ldr r1, [r4, r5]
	bl ovy165_21a1228
_021A0E98:
	mov r5, #0x85
	lsl r5, r5, #2
	add r0, r5, #0
	add r0, #0x78
	ldr r0, [r4, r0]
	ldrb r1, [r4, r5]
	add r0, #0xa4
	ldrb r0, [r0]
	cmp r1, r0
	beq _021A0EC4
	ldrb r0, [r4, #0xc]
	cmp r0, #2
	bne _021A0EC4
	add r0, r4, #0
	bl ovy165_21a1570
	add r0, r5, #0
	add r0, #0x78
	ldr r0, [r4, r0]
	add r0, #0xa4
	ldrb r0, [r0]
	strb r0, [r4, r5]
_021A0EC4:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #1
	bne _021A0ED8
	add r0, r4, #0
	bl ovy165_21a16a0
_021A0ED8:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x73
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A0EEC
	add r0, r4, #0
	bl ovy165_219e4cc
_021A0EEC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_21a0e54

	thumb_func_start ovy165_21a0ef0
ovy165_21a0ef0: ; 0x021A0EF0
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	mov r0, #0x24
	mov r1, #8
	bl sub_0204BF1C
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_21a0ef0

	thumb_func_start sub_021A0F08
sub_021A0F08: ; 0x021A0F08
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021A0F14 ; =sub_0204BF98
	bx r3
	nop
_021A0F14: .word sub_0204BF98
	thumb_func_end sub_021A0F08

	thumb_func_start ovy165_21a0f18
ovy165_21a0f18: ; 0x021A0F18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x4b
	bl sub_0204AA30
	mov r6, #0x20
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0x20
	str r1, [sp, #8]
	mov r1, #1
	add r4, r0, #0
	bl sub_0204B124
	str r6, [sp]
	ldrh r0, [r5]
	mov r6, #0x1a
	lsl r6, r6, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r7, #0
	mov r1, #0
	mov r2, #4
	add r3, r6, #0
	bl sub_0204B0D4
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #9
	mov r2, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	add r6, #0xec
	ldr r1, [r5, r6]
	add r0, r1, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bne _021A0FA4
	ldr r0, [r1, #0x74]
	cmp r0, #1
	beq _021A0F82
	cmp r0, #2
	beq _021A0F90
	b _021A0FA4
_021A0F82:
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x11
	str r0, [sp, #8]
	add r0, r4, #0
	b _021A0F9C
_021A0F90:
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
_021A0F9C:
	mov r2, #6
	add r3, r7, #0
	bl sub_0204AF50
_021A0FA4:
	add r0, r4, #0
	bl sub_0204AB0C
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	str r0, [sp, #0xc]
	bl sub_0202D890
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0x60
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BBA0
	mov r6, #0x62
	lsl r6, r6, #2
	str r0, [r5, r6]
	bl sub_0202D894
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	add r1, r6, #0
	add r1, #0x24
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D898
	add r7, r0, #0
	mov r0, #2
	bl sub_0202D89C
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204BDE0
	add r6, #0x40
	str r0, [r5, r6]
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #1
	bne _021A107A
	bl sub_0202D820
	mov r6, #0x20
	str r6, [sp]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #4
	mov r3, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0204B0D4
	bl sub_0202D824
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204ADA8
	bl sub_0202D828
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #5
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204AF50
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #5
	bl sub_02045B7C
_021A107A:
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	ldrh r1, [r5]
	mov r0, #7
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	mov r4, #0xc0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0xc0
	bl sub_0204BC48
	add r4, #0xd8
	str r0, [r5, r4]
	add r0, r6, #0
	bl sub_0204AB0C
	ldr r1, _021A10BC ; =0x00000216
	ldr r0, _021A10C0 ; =0x05000440
	add r1, r5, r1
	mov r2, #0x20
	blx sub_0207863C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A10BC: .word 0x00000216
_021A10C0: .word 0x05000440
	thumb_func_end ovy165_21a0f18

	thumb_func_start sub_021A10C4
sub_021A10C4: ; 0x021A10C4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A10C4

	thumb_func_start ovy165_21a10c8
ovy165_21a10c8: ; 0x021A10C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0x14]
	str r0, [sp, #0xc]
	str r3, [sp, #0x18]
	ldr r0, _021A11F0 ; =0x00000143
	str r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _021A11F4 ; =0x021A4D1C
	ldrh r0, [r0]
	mov r1, #0x20
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	bl sub_0201FDF8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, sp, #0x40
	ldrb r0, [r0]
	add r0, r0, #5
	str r0, [sp, #0x1c]
_021A1100:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bhs _021A1166
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r1, [sp, #0x1c]
	add r2, r0, #0
	mul r2, r1
	ldr r1, [sp, #0x14]
	mov r6, #4
	add r1, r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r2, r5, #1
	str r1, [sp, #0x20]
	mov r1, #6
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r3
	add r1, r1, #4
	lsl r1, r1, #0x18
	lsr r7, r1, #0x18
	cmp r0, #0
	beq _021A113C
	mov r6, #0
_021A113C:
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_0201FF08
	ldr r3, [sp, #0x20]
	lsl r2, r6, #0x18
	add r1, r0, #0
	lsr r2, r2, #0x18
	lsl r3, r3, #3
	add r2, r2, r3
	lsl r2, r2, #0x18
	lsl r3, r7, #0x1b
	ldr r0, [sp, #0xc]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ovy165_21a1284
	lsl r1, r5, #2
	add r1, r4, r1
	b _021A116C
_021A1166:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0
_021A116C:
	str r0, [r1, #8]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021A1100
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	ldr r1, [sp, #0x14]
	mov r0, #4
	add r2, r1, #1
	add r1, sp, #0x40
	ldrb r1, [r1]
	mov r3, #0xa
	lsr r1, r1, #1
	add r1, r2, r1
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0x18
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_020480C0
	str r0, [r4, #4]
	ldr r1, [sp, #0xc]
	mov r0, #0x10
	ldrh r1, [r1]
	bl sub_02048530
	ldr r1, [sp, #0x10]
	add r5, r0, #0
	ldr r1, [r1, #4]
	bl sub_02048614
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	mov r2, #0x4f
	ldr r0, [sp, #0xc]
	str r5, [sp]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, #8
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r3, #0
	ldr r0, [r0, r2]
	mov r2, #0
	bl sub_02021C7C
	add r0, r5, #0
	bl sub_02048564
	str r6, [r4]
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A11F0: .word 0x00000143
_021A11F4: .word 0x021A4D1C
	thumb_func_end ovy165_21a10c8

	thumb_func_start ovy165_21a11f8
ovy165_21a11f8: ; 0x021A11F8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_021A1200:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021A1210
	add r0, r6, #0
	bl ovy165_21a14c0
_021A1210:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A1200
	ldr r0, [r5, #4]
	bl sub_02048210
	add r0, r5, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy165_21a11f8

	thumb_func_start ovy165_21a1228
ovy165_21a1228: ; 0x021A1228
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_021A1230:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021A1240
	add r0, r6, #0
	bl ovy165_21a14ec
_021A1240:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021A1230
	ldr r0, [r5]
	cmp r0, #1
	bne _021A1282
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1282
	ldr r4, [r5, #4]
	mov r0, #0
	str r0, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A1282:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy165_21a1228

	thumb_func_start ovy165_21a1284
ovy165_21a1284: ; 0x021A1284
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r6, _021A14B8 ; =0x00000199
	add r5, r0, #0
	str r6, [sp]
	str r1, [sp, #0xc]
	ldrh r0, [r5]
	ldr r3, _021A14BC ; =0x021A4D1C
	mov r1, #0x18
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x20]
	ldrh r1, [r5]
	mov r0, #7
	bl sub_0204AA30
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_0201D624
	str r0, [sp, #0x24]
	bl sub_02020F40
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	str r0, [r4, #0xc]
	add r0, r7, #0
	bl sub_0204AB0C
	ldr r0, [sp, #0x24]
	bl sub_020210C0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	add r3, r6, #0
	add r0, #0x10
	add r7, sp, #0x38
	strh r0, [r7, #8]
	ldr r0, [sp, #0x14]
	sub r2, r6, #1
	add r0, #8
	strh r0, [r7, #0xa]
	mov r0, #1
	strh r0, [r7, #0xc]
	mov r0, #0x10
	strb r0, [r7, #0xe]
	mov r0, #2
	strb r0, [r7, #0xf]
	add r0, sp, #0x40
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r3, #0x3b
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x5b
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x28]
	mov r2, #1
	str r0, [r4, #0x10]
	bl sub_0204C378
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [sp, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	add r0, #0x20
	strh r0, [r7]
	ldr r0, [sp, #0x14]
	add r2, r6, #0
	add r0, #0x10
	strh r0, [r7, #2]
	mov r0, #0
	strh r0, [r7, #4]
	mov r0, #8
	strb r0, [r7, #6]
	mov r0, #2
	strb r0, [r7, #7]
	add r0, sp, #0x38
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0x13
	sub r2, #0x11
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x5b
	add r6, #0x2f
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r6]
	bl sub_0204C040
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ldr r0, [r4, #0x14]
	beq _021A13A8
	mov r1, #1
	bl sub_0204C124
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026BA0
	cmp r0, #1
	ldr r0, [r4, #0x14]
	bne _021A13A4
	mov r1, #1
_021A139E:
	bl sub_0204C488
	b _021A13AE
_021A13A4:
	mov r1, #0
	b _021A139E
_021A13A8:
	mov r1, #0
	bl sub_0204C124
_021A13AE:
	ldr r0, [sp, #0xc]
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	mov r3, #3
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x14]
	lsr r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	lsr r6, r0, #3
	lsl r1, r6, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	str r0, [sp]
	mov r0, #0xd
	add r1, r1, #3
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #4
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_020480C0
	str r0, [r4, #4]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021A143A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021A141C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r1, [r4, #4]
	mov r2, #7
	b _021A1430
_021A141C:
	cmp r0, #1
	bne _021A143A
	mov r0, #0
	str r0, [sp]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #4]
	add r0, r5, #0
	mov r2, #8
_021A1430:
	add r3, r7, #4
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ovy165_219dbf0
_021A143A:
	ldr r0, [sp, #0xc]
	bl sub_0201D460
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r7, r0, #0x18
	mov r0, #1
	lsr r2, r2, #0x18
	str r0, [sp]
	mov r0, #0xe
	add r2, r2, #3
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r6, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #4
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #6
	bl sub_020480C0
	str r0, [r4, #8]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021A14AC
	ldrh r0, [r5]
	bl sub_020241D4
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x34]
	mov r1, #0
	mov r3, #3
	add r6, r0, #0
	bl sub_0202451C
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #8]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl ovy165_219dd2c
	add r0, r6, #0
	bl sub_02024274
_021A14AC:
	mov r0, #1
	str r0, [r4]
	add r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A14B8: .word 0x00000199
_021A14BC: .word 0x021A4D1C
	thumb_func_end ovy165_21a1284

	thumb_func_start ovy165_21a14c0
ovy165_21a14c0: ; 0x021A14C0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_02048210
	ldr r0, [r4, #8]
	bl sub_02048210
	ldr r0, [r4, #0x14]
	bl sub_0204C108
	ldr r0, [r4, #0x10]
	bl sub_0204C108
	ldr r0, [r4, #0xc]
	bl sub_0204B98C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy165_21a14c0

	thumb_func_start ovy165_21a14ec
ovy165_21a14ec: ; 0x021A14EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021A1554
	ldr r0, [r4, #4]
	bl sub_020484F4
	mov r6, #0x51
	lsl r6, r6, #2
	add r1, r0, #0
	ldr r0, [r5, r6]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1554
	ldr r0, [r4, #8]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, r6]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1554
	ldr r5, [r4, #4]
	mov r0, #0
	str r0, [r4]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r4, #8]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A1554:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy165_21a14ec

	thumb_func_start ovy165_21a1558
ovy165_21a1558: ; 0x021A1558
	push {r4, lr}
	add r4, r0, #0
	bl ovy165_21a1570
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x78
	add r1, #0xa4
	ldrb r1, [r1]
	strb r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy165_21a1558

	thumb_func_start ovy165_21a1570
ovy165_21a1570: ; 0x021A1570
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xa3
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r1, #0xa4
	ldrb r1, [r1]
	cmp r1, #0
	beq _021A1606
	mov r4, #0x55
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	bl sub_0219F830
	cmp r0, #0
	bne _021A159A
	ldr r1, [r5, r4]
	add r0, r5, #0
	mov r2, #1
	bl ovy165_219f76c
_021A159A:
	mov r7, #0xa3
	lsl r7, r7, #2
	ldr r2, [r5, r7]
	ldr r0, [r2, #0x74]
	cmp r0, #1
	bne _021A15F4
	ldrh r1, [r5]
	mov r0, #0x10
	bl sub_02048530
	ldr r1, [r5, r7]
	add r4, r0, #0
	add r1, #0x88
	ldr r1, [r1]
	bl sub_02048614
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy165_219f9d8
	ldr r0, [r5, r7]
	mov r2, #0
	add r0, #0x8c
	ldrb r0, [r0]
	add r3, r4, #0
	str r0, [sp]
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy165_219fa68
	ldr r1, [r5, r6]
	add r0, r5, #0
	mov r2, #0xb5
	bl ovy165_219f840
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy165_219f9e8
	add r0, r4, #0
	bl sub_02048564
	pop {r3, r4, r5, r6, r7, pc}
_021A15F4:
	add r2, #0xa4
	mov r1, #0x55
	ldrb r2, [r2]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #0xb5
	bl ovy165_219f840
_021A1606:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_21a1570

	thumb_func_start ovy165_21a1608
ovy165_21a1608: ; 0x021A1608
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #3
	str r6, [sp]
	mov r7, #0xe
	add r5, r0, #0
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #7
	mov r2, #0x15
	mov r3, #0xb
	bl sub_020480C0
	mov r4, #0x81
	lsl r4, r4, #2
	str r0, [r5, r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #0x14
	mov r2, #0x15
	mov r3, #5
	bl sub_020480C0
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0xb9
	mov r6, #0xb9
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r0, #0
	mov r0, #0xb9
	str r7, [sp]
	add r0, #0x83
	ldr r0, [r5, r0]
	add r6, #0x8b
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, r6]
	mov r2, #0
	mov r3, #4
	bl sub_02021C7C
	add r0, r7, #0
	bl sub_02048564
	add r4, #8
	mov r0, #1
	str r0, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy165_21a1608

	thumb_func_start ovy165_21a1688
ovy165_21a1688: ; 0x021A1688
	push {r3, r4, r5, lr}
	mov r5, #0x81
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02048210
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_02048210
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_21a1688

	thumb_func_start ovy165_21a16a0
ovy165_21a16a0: ; 0x021A16A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r5, _021A1938 ; =0x00000215
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x77
	ldr r0, [r4, r0]
	ldrb r1, [r4, r5]
	add r0, #0x70
	ldrh r0, [r0]
	cmp r1, r0
	beq _021A16D2
	add r0, r5, #0
	sub r0, #0xd
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #0xd1
	ldr r0, [r4, r0]
	bl sub_02021C1C
	cmp r0, #0
	beq _021A16D4
_021A16D2:
	b _021A17D8
_021A16D4:
	add r5, #0x77
	ldr r0, [r4, r5]
	mov r1, #0x3c
	add r0, #0x70
	ldrh r6, [r0]
	mov r5, #0x3c
	add r0, r6, #0
	blx sub_0208D65C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x3c
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r1, [r4]
	mov r0, #0x20
	bl sub_02048530
	add r7, r0, #0
	ldrh r0, [r4]
	bl sub_020241D4
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021A1728
	add r5, #0xfc
	ldr r0, [r4, r5]
	mov r1, #0xbb
	bl sub_0204898C
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #0xc]
	str r1, [sp, #4]
	add r0, r6, #0
	b _021A1750
_021A1728:
	add r5, #0xfc
	ldr r0, [r4, r5]
	mov r1, #0xba
	bl sub_0204898C
	mov r5, #1
	str r5, [sp]
	str r5, [sp, #4]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0
	mov r3, #2
	bl sub_0202451C
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #1
_021A1750:
	ldr r2, [sp, #0x10]
	mov r3, #2
	bl sub_0202451C
	mov r5, #0x82
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02024920
	add r1, r5, #0
	sub r1, #0xcc
	ldr r1, [r4, r1]
	add r0, r7, #0
	mov r2, #0
	bl sub_02022888
	str r0, [sp, #0x18]
	ldr r0, [r4, r5]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	str r7, [sp]
	sub r0, #0xcc
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r3, #0x24
	sub r2, r3, r2
	sub r0, #0xc4
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	mov r3, #4
	bl sub_02021C7C
	add r0, r6, #0
	bl sub_02024274
	add r0, r7, #0
	bl sub_02048564
	ldr r0, [sp, #0xc]
	bl sub_02048564
	add r0, r5, #0
	mov r1, #1
	add r0, #8
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r4, r0]
	add r5, #0xd
	add r0, #0x70
	ldrh r0, [r0]
	strb r0, [r4, r5]
_021A17D8:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	bne _021A17EC
	add r0, r4, #0
	bl ovy165_219e4cc
_021A17EC:
	mov r5, #0x21
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A182E
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #0xcc
	ldr r0, [r4, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A182E
	mov r0, #0
	str r0, [r4, r5]
	sub r5, #8
	ldr r5, [r4, r5]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A182E:
	mov r5, #0x83
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A1870
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	sub r0, #0xc8
	ldr r0, [r4, r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A1870
	mov r0, #0
	str r0, [r4, r5]
	sub r5, #8
	ldr r5, [r4, r5]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
_021A1870:
	mov r0, #0xa3
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0xa
	bhi _021A1934
	ldr r0, [sp, #0x1c]
	mov r1, #0x3c
	sub r0, #0x36
	ldrh r0, [r4, r0]
	mov r5, #0
	lsl r0, r0, #0x10
	blx sub_0208D65C
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A193C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	lsl r1, r0, #5
	asr r0, r1, #0xc
	lsr r0, r0, #0x13
	add r0, r1, r0
	asr r0, r0, #0xd
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x1c]
	sub r0, #0x56
	mov ip, r0
	ldr r0, [sp, #0x1c]
	sub r0, #0x76
	str r0, [sp, #0x1c]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x20]
_021A18C2:
	lsl r0, r5, #1
	add r3, r4, r0
	ldr r0, [sp, #0x1c]
	ldrh r1, [r3, r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r1
	lsl r0, r0, #0x13
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x20]
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r0, r0, r7
	cmp r0, #0x1f
	ble _021A18EE
	mov r0, #0x1f
_021A18EE:
	lsl r0, r0, #0x18
	lsl r1, r2, #0xa
	lsr r0, r0, #0x18
	lsl r2, r6, #5
	orr r0, r2
	orr r1, r0
	mov r0, ip
	strh r1, [r3, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x10
	blo _021A18C2
	ldr r5, _021A1940 ; =0x00000236
	mov r0, #0x1f
	mov r1, #0x40
	add r2, r4, r5
	mov r3, #0x20
	bl sub_0205FA10
	add r0, r5, #0
	add r0, #0x20
	ldrh r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x20
	strh r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x20
	ldrh r0, [r4, r0]
	cmp r0, #0x3c
	blo _021A1934
	mov r0, #0
	add r5, #0x20
	strh r0, [r4, r5]
_021A1934:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1938: .word 0x00000215
_021A193C: .word FX_SinCosTable_
_021A1940: .word 0x00000236
	thumb_func_end ovy165_21a16a0

	thumb_func_start ovy165_21a1944
ovy165_21a1944: ; 0x021A1944
	push {r4, r5, r6, lr}
	mov r6, #0x9e
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
	mov r0, #0
	mov r1, #0
	strb r4, [r5, r6]
	bl sub_02044C98
	add r0, r5, #0
	bl sub_0219A5E4
	add r0, r5, #0
	bl ovy165_219a4d8
	add r0, r5, #0
	bl ovy165_21a1b7c
	mov r0, #0xf
	strb r0, [r5, #0xc]
	add r0, r6, #2
	strb r4, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy165_21a1944

	thumb_func_start ovy165_21a1974
ovy165_21a1974: ; 0x021A1974
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r5, _021A19FC ; =0x0219DE11
	bl ovy165_21a1c94
	add r0, r4, #0
	bl ovy165_219a5f0
	add r0, r4, #0
	bl ovy165_219a4bc
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy165_219fab0
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #6
	bhi _021A19F4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A19AC: ; jump table
	.short _021A19F4 - _021A19AC - 2 ; case 0
	.short _021A19BA - _021A19AC - 2 ; case 1
	.short _021A19BA - _021A19AC - 2 ; case 2
	.short _021A19C6 - _021A19AC - 2 ; case 3
	.short _021A19C6 - _021A19AC - 2 ; case 4
	.short _021A19C6 - _021A19AC - 2 ; case 5
	.short _021A19C6 - _021A19AC - 2 ; case 6
_021A19BA:
	add r0, #0x18
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _021A19C6
	ldr r5, _021A1A00 ; =ovy165_219ddf4
_021A19C6:
	mov r6, #0x55
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9d8
	ldr r1, [r4, r6]
	ldr r3, [r4, #0x3c]
	add r0, r4, #0
	mov r2, #0
	bl sub_0219F9F8
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #1
	add r3, r5, #0
	bl ovy165_219d74c
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy165_219f9e8
	pop {r4, r5, r6, pc}
_021A19F4:
	mov r0, #0x13
	strb r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	nop
_021A19FC: .word 0x0219DE11
_021A1A00: .word ovy165_219ddf4
	thumb_func_end ovy165_21a1974

	thumb_func_start ovy165_21a1a04
ovy165_21a1a04: ; 0x021A1A04
	push {r4, lr}
	mov r2, #0x9d
	add r4, r0, #0
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r1, #0
	cmp r2, #6
	bhi _021A1A3A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A1A20: ; jump table
	.short _021A1A3A - _021A1A20 - 2 ; case 0
	.short _021A1A2E - _021A1A20 - 2 ; case 1
	.short _021A1A2E - _021A1A20 - 2 ; case 2
	.short _021A1A2E - _021A1A20 - 2 ; case 3
	.short _021A1A34 - _021A1A20 - 2 ; case 4
	.short _021A1A34 - _021A1A20 - 2 ; case 5
	.short _021A1A2E - _021A1A20 - 2 ; case 6
_021A1A2E:
	bl ovy165_21a1cd4
	b _021A1A38
_021A1A34:
	bl ovy165_21a1db4
_021A1A38:
	add r1, r0, #0
_021A1A3A:
	cmp r1, #0
	beq _021A1A42
	mov r0, #0x10
	strb r0, [r4, #0xc]
_021A1A42:
	bl sub_02050044
	bl sub_02049A98
	bl sub_02049AF0
	bl sub_0205001C
	bl sub_02049AA0
	pop {r4, pc}
	thumb_func_end ovy165_21a1a04

	thumb_func_start ovy165_21a1a58
ovy165_21a1a58: ; 0x021A1A58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r3, [sp]
	add r4, r1, #0
	ldr r3, _021A1B74 ; =0x021A4C74
	add r5, r0, #0
	lsl r1, r2, #1
	add r0, r3, r1
	str r0, [sp, #4]
	ldrb r1, [r3, r1]
	ldrh r2, [r5]
	mov r0, #0x4b
	bl sub_0204FDF8
	lsl r7, r4, #2
	mov r4, #0x99
	mov r1, #5
	lsl r4, r4, #2
	str r0, [sp, #8]
	add r0, r5, r4
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldr r2, _021A1B78 ; =0x021A4D2C
	lsl r1, r1, #0xc
	mov r3, #0xc4
	mov r6, #0xc4
	bl sub_02042EA4
	ldr r1, [sp, #0xc]
	add r4, #8
	str r0, [r1, r7]
	mov r1, #5
	ldrh r3, [r5]
	add r4, r5, r4
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_0204F968
	str r0, [r4, r7]
	bl sub_02005718
	add r3, r0, #0
	ldr r0, [r4, r7]
	ldr r1, [sp, #8]
	mov r2, #0
	bl sub_0204FE04
	ldr r1, [sp]
	add r6, #0xa0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, r6]
	add r0, r5, #0
	add r2, sp, #0x10
	bl sub_0219F424
	add r1, sp, #0x10
	mov r0, #0
	ldrsh r0, [r1, r0]
	sub r0, #0x28
	strh r0, [r1]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, r0, #4
	strh r0, [r1, #2]
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021A1AF4
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A1B02
_021A1AF4:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A1B02:
	blx sub_0208DA4C
	mov r1, #0x26
	blx sub_0208D65C
	str r0, [sp, #0x14]
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021A1B2A
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021A1B38
_021A1B2A:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021A1B38:
	blx sub_0208DA4C
	mov r1, #0x26
	blx sub_0208D65C
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #0x12
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	mov r4, #0
	ldrb r6, [r0, #1]
	cmp r6, #0
	bls _021A1B6E
	add r5, r5, r7
	mov r7, #0x9b
	lsl r7, r7, #2
_021A1B5A:
	ldr r0, [r5, r7]
	add r1, r4, #0
	add r2, sp, #0x14
	bl sub_0205006C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blo _021A1B5A
_021A1B6E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1B74: .word 0x021A4C74
_021A1B78: .word 0x021A4D2C
	thumb_func_end ovy165_21a1a58

	thumb_func_start ovy165_21a1b7c
ovy165_21a1b7c: ; 0x021A1B7C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x99
	lsl r1, r1, #2
	add r4, r0, #0
	mov r0, #0
	add r2, r1, #0
	add r6, r0, #0
	add r2, #8
_021A1B8C:
	lsl r3, r0, #2
	add r3, r4, r3
	str r6, [r3, r1]
	add r0, r0, #1
	str r6, [r3, r2]
	cmp r0, #2
	blt _021A1B8C
	mov r5, #0x9d
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #6
	bhi _021A1C76
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1BB0: ; jump table
	.short _021A1C76 - _021A1BB0 - 2 ; case 0
	.short _021A1BBE - _021A1BB0 - 2 ; case 1
	.short _021A1BBE - _021A1BB0 - 2 ; case 2
	.short _021A1BD8 - _021A1BB0 - 2 ; case 3
	.short _021A1BF2 - _021A1BB0 - 2 ; case 4
	.short _021A1C28 - _021A1BB0 - 2 ; case 5
	.short _021A1C5E - _021A1BB0 - 2 ; case 6
_021A1BBE:
	ldr r3, [r4, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r6, #0
	bl ovy165_21a1a58
	add r0, r5, #5
	mov r1, #0x41
	strb r1, [r4, r0]
	ldr r0, _021A1C78 ; =0x00000643
	add r5, #8
	strh r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A1BD8:
	ldr r3, [r4, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy165_21a1a58
	add r0, r5, #5
	mov r1, #0x26
	strb r1, [r4, r0]
	ldr r0, _021A1C7C ; =0x00000644
	add r5, #8
	strh r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A1BF2:
	add r0, r5, #7
	ldrb r7, [r4, r0]
	ldr r3, [r4, #0x34]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl ovy165_21a1a58
	ldr r3, [r4, #0x30]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #3
	bl ovy165_21a1a58
	mov r1, #0x6e
	add r0, r5, #5
	strb r1, [r4, r0]
	cmp r7, #0
	beq _021A1C20
	ldr r0, _021A1C80 ; =0x00000878
	add r5, #8
	strh r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A1C20:
	ldr r0, _021A1C84 ; =0x00000879
	add r5, #8
	strh r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A1C28:
	add r0, r5, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x10]
	bl sub_0200AFA8
	mov r1, #5
	add r2, r6, #0
	bl sub_0201CCF8
	add r5, #0x10
	cmp r0, r5
	bne _021A1C44
	mov r6, #1
_021A1C44:
	ldr r3, [r4, #0x30]
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #5
	bl ovy165_21a1a58
	ldr r0, _021A1C88 ; =0x00000279
	mov r1, #0x82
	strb r1, [r4, r0]
	ldr r1, _021A1C8C ; =0x0000087A
	add r0, r0, #3
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A1C5E:
	ldr r3, [r4, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #7
	bl ovy165_21a1a58
	add r0, r5, #5
	mov r1, #0x19
	strb r1, [r4, r0]
	ldr r0, _021A1C90 ; =0x000008DB
	add r5, #8
	strh r0, [r4, r5]
_021A1C76:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1C78: .word 0x00000643
_021A1C7C: .word 0x00000644
_021A1C80: .word 0x00000878
_021A1C84: .word 0x00000879
_021A1C88: .word 0x00000279
_021A1C8C: .word 0x0000087A
_021A1C90: .word 0x000008DB
	thumb_func_end ovy165_21a1b7c

	thumb_func_start ovy165_21a1c94
ovy165_21a1c94: ; 0x021A1C94
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x99
	mov r6, #0x99
	lsl r7, r7, #2
	lsl r6, r6, #2
	str r0, [sp]
	mov r4, #0
	add r7, #8
	add r6, #8
_021A1CA6:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021A1CCC
	bl sub_0204FA84
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02042ED0
	mov r0, #0x99
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0
	str r0, [r5, r7]
_021A1CCC:
	add r4, r4, #1
	cmp r4, #2
	blt _021A1CA6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_21a1c94

	thumb_func_start ovy165_21a1cd4
ovy165_21a1cd4: ; 0x021A1CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, _021A1DB0 ; =0x0000027A
	add r4, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #3
	bhi _021A1DA4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1CEE: ; jump table
	.short _021A1CF6 - _021A1CEE - 2 ; case 0
	.short _021A1D0C - _021A1CEE - 2 ; case 1
	.short _021A1D42 - _021A1CEE - 2 ; case 2
	.short _021A1D92 - _021A1CEE - 2 ; case 3
_021A1CF6:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #2
	ldrh r0, [r4, r0]
	bl sub_02006254
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
_021A1D0C:
	mov r5, #0x9e
	lsl r5, r5, #2
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	add r0, r5, #1
	ldrb r1, [r4, r5]
	ldrb r0, [r4, r0]
	cmp r1, r0
	bls _021A1DAA
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4, #0x3c]
	mov r3, #0
	bl ovy165_219f250
	add r0, r5, #2
	ldrb r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #2
	strb r1, [r4, r0]
	b _021A1DAA
_021A1D42:
	add r0, r5, #0
	sub r0, #0xe
	ldr r0, [r4, r0]
	bl sub_020500A8
	cmp r0, #0
	bgt _021A1DAA
	bl sub_020062A8
	cmp r0, #0
	bne _021A1DAA
	ldr r0, [r4, #0x3c]
	mov r1, #5
	mov r2, #0
	mov r7, #5
	bl sub_0201CCF8
	add r6, r0, #0
	ldr r0, [r4, #0x3c]
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0x40
	mov r3, #0
	bl sub_020069F4
	lsl r1, r7, #7
	str r0, [r4, r1]
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021A1DAA
_021A1D92:
	add r0, r5, #6
	ldr r0, [r4, r0]
	bl sub_02006C40
	cmp r0, #0
	bne _021A1DAA
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A1DA4:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A1DAA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1DB0: .word 0x0000027A
	thumb_func_end ovy165_21a1cd4

	thumb_func_start ovy165_21a1db4
ovy165_21a1db4: ; 0x021A1DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r6, _021A2004 ; =0x0000027A
	add r4, r0, #0
	ldrb r0, [r4, r6]
	cmp r0, #5
	bls _021A1DC4
	b _021A1FEE
_021A1DC4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1DD0: ; jump table
	.short _021A1DDC - _021A1DD0 - 2 ; case 0
	.short _021A1DF4 - _021A1DD0 - 2 ; case 1
	.short _021A1E38 - _021A1DD0 - 2 ; case 2
	.short _021A1F5E - _021A1DD0 - 2 ; case 3
	.short _021A1FC4 - _021A1DD0 - 2 ; case 4
	.short _021A1FEE - _021A1DD0 - 2 ; case 5
_021A1DDC:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r6, #2
	ldrh r0, [r4, r0]
	mov r1, #1
	bl sub_020061DC
	ldrb r0, [r4, r6]
	add r0, r0, #1
	strb r0, [r4, r6]
_021A1DF4:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	add r1, r0, #1
	ldrb r2, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r2, r1
	bls _021A1E48
	add r0, r0, #3
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _021A1E16
	ldr r0, _021A2008 ; =0x0000087B
	bl sub_02006254
_021A1E16:
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _021A200C ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r2, #0
	bl sub_020279B4
	ldr r0, _021A2004 ; =0x0000027A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021A1FFC
_021A1E38:
	bl sub_02027ACC
	cmp r0, #0
	beq _021A1E48
	bl sub_020062A8
	cmp r0, #1
	bne _021A1E4A
_021A1E48:
	b _021A1FFC
_021A1E4A:
	mov r5, #0
	sub r6, #0xe
_021A1E4E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021A1E60
	bl sub_020500A8
	cmp r0, #0
	bgt _021A1E66
_021A1E60:
	add r5, r5, #1
	cmp r5, #2
	blt _021A1E4E
_021A1E66:
	ldr r0, _021A2010 ; =0x0000027B
	ldrb r1, [r4, r0]
	cmp r1, #2
	bne _021A1E78
	ldr r1, [r4, #0x3c]
	add r0, r4, #0
	bl ovy165_21a2294
	b _021A1E82
_021A1E78:
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x30]
	add r0, r4, #0
	bl ovy165_21a2224
_021A1E82:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bge _021A1E9E
	sub r1, r0, #1
	mov r0, #0xa3
	str r1, [r4, #0x34]
	str r1, [r4, #0x30]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_0201FF08
	str r0, [r4, #0x3c]
_021A1E9E:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_0201FDF8
	str r0, [sp, #0x10]
	ldr r0, _021A2014 ; =0x00000109
	mov r5, #0
	strb r5, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, #0x5b
	str r0, [sp, #0x1c]
	ldr r0, _021A2014 ; =0x00000109
	ldr r7, _021A2014 ; =0x00000109
	str r0, [sp, #0x18]
	add r0, #0x5b
	str r0, [sp, #0x18]
	ldr r0, _021A2014 ; =0x00000109
	add r7, #0x5b
	str r0, [sp, #0x20]
	add r0, #0x5b
	str r0, [sp, #0x20]
	ldr r0, _021A2014 ; =0x00000109
	str r0, [sp, #0x14]
	add r0, #0x5b
	str r0, [sp, #0x14]
_021A1ED4:
	lsl r0, r5, #2
	add r6, r4, r0
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	ldr r1, [r6, r1]
	mov r2, #0
	bl ovy165_219f1f0
	ldr r1, [r6, r7]
	add r0, r4, #0
	bl ovy165_219e838
	ldr r0, [sp, #0x10]
	cmp r5, r0
	bge _021A1F10
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_0201FF08
	lsl r1, r5, #0x18
	add r2, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0219E824
	ldr r1, [sp, #0x18]
	b _021A1F1C
_021A1F10:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0219E82C
	ldr r1, [sp, #0x1c]
_021A1F1C:
	str r0, [r6, r1]
	ldr r0, [sp, #0x20]
	ldr r0, [r6, r0]
	bl sub_0219F48C
	cmp r0, #5
	bgt _021A1F34
	ldr r0, _021A2014 ; =0x00000109
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _021A2014 ; =0x00000109
	strb r1, [r4, r0]
_021A1F34:
	add r5, r5, #1
	cmp r5, #6
	blt _021A1ED4
	mov r5, #0x77
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x9e
	ldrb r0, [r4, r0]
	add r5, #0x9e
	add r0, r0, #1
_021A1F5A:
	strb r0, [r4, r5]
	b _021A1FFC
_021A1F5E:
	mov r6, #0x59
	mov r5, #0
	lsl r6, r6, #2
_021A1F64:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	bl sub_0219E870
	add r5, r5, #1
	cmp r5, #6
	blt _021A1F64
	cmp r0, #0
	bgt _021A1FFC
	mov r5, #0xa3
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	ldr r1, [r4, #0x34]
	ldr r0, [r0]
	bl sub_0201FF08
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r2, #0x40
	mov r3, #0
	bl sub_020069F4
	mov r1, #5
	lsl r1, r1, #7
	str r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0x12
	ldrb r0, [r4, r0]
	sub r5, #0x12
	add r0, r0, #1
	b _021A1F5A
_021A1FC4:
	add r0, r6, #6
	ldr r0, [r4, r0]
	bl sub_02006C40
	cmp r0, #0
	bne _021A1FFC
	mov r0, #0xc
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _021A200C ; =0x00007FFF
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #3
	bl sub_020279B4
	ldrb r0, [r4, r6]
	add r0, r0, #1
	strb r0, [r4, r6]
	b _021A1FFC
_021A1FEE:
	bl sub_02027ACC
	cmp r0, #1
	bne _021A1FFC
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A1FFC:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A2004: .word 0x0000027A
_021A2008: .word 0x0000087B
_021A200C: .word 0x00007FFF
_021A2010: .word 0x0000027B
_021A2014: .word 0x00000109
	thumb_func_end ovy165_21a1db4

	thumb_func_start ovy165_21a2018
ovy165_21a2018: ; 0x021A2018
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	ldr r1, _021A2058 ; =0x000001E7
	cmp r0, r1
	beq _021A2032
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A2032:
	ldr r0, [r5, #0x3c]
	mov r1, #6
	add r2, r4, #0
	bl sub_0201CCF8
	cmp r0, #0x70
	beq _021A2044
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A2044:
	ldr r0, [r5, #0x3c]
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021A2054
	mov r4, #1
_021A2054:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2058: .word 0x000001E7
	thumb_func_end ovy165_21a2018

	thumb_func_start ovy165_21a205c
ovy165_21a205c: ; 0x021A205C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0201C864
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0x1c]
	bl sub_0200D568
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_21a205c

	thumb_func_start ovy165_21a207c
ovy165_21a207c: ; 0x021A207C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #6
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #0x70
	bne _021A2094
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A2094:
	ldr r0, [r5, #0x3c]
	mov r1, #5
	add r2, r4, #0
	bl sub_0201CCF8
	ldr r1, _021A20BC ; =0x000001E7
	cmp r0, r1
	beq _021A20A8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A20A8:
	ldr r0, [r5, #0x3c]
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CCF8
	cmp r0, #1
	bne _021A20B8
	mov r4, #1
_021A20B8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A20BC: .word 0x000001E7
	thumb_func_end ovy165_21a207c

	thumb_func_start ovy165_21a20c0
ovy165_21a20c0: ; 0x021A20C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201C864
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0x1c]
	bl sub_0200D568
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_21a20c0

	thumb_func_start ovy165_21a20e0
ovy165_21a20e0: ; 0x021A20E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #5
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	mov r4, #0x7b
	lsl r4, r4, #2
	cmp r0, r4
	beq _021A2100
	add sp, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A2100:
	ldr r0, [r5, #0x3c]
	mov r1, #0x6f
	add r2, r6, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021A2114
	add sp, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A2114:
	ldr r0, [r5, #0x3c]
	mov r1, #0x6d
	add r2, r6, #0
	bl sub_0201CCF8
	cmp r0, #1
	beq _021A2128
	add sp, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A2128:
	ldr r0, [r5, #0x3c]
	bl sub_0201CF44
	mov r1, #0x20
	tst r0, r1
	beq _021A213A
	add sp, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A213A:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r0, #0x6f
	ldrb r0, [r0]
	bl sub_02015AB8
	add r4, #0xa0
	add r6, r0, #0
	ldr r0, [r5, r4]
	mov r1, #3
	add r0, #0x6f
	ldrb r0, [r0]
	bl sub_02015AB8
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02044238
	ldr r0, [sp]
	cmp r0, r6
	blo _021A216C
	cmp r0, r4
	blo _021A2172
_021A216C:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021A2172:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy165_21a20e0

	thumb_func_start ovy165_21a2178
ovy165_21a2178: ; 0x021A2178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0201C864
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0x1c]
	bl sub_0200D568
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_21a2178

	thumb_func_start ovy165_21a2198
ovy165_21a2198: ; 0x021A2198
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	ldr r1, _021A21D8 ; =0x00000286
	cmp r0, r1
	beq _021A21B2
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A21B2:
	ldr r0, [r5, #0x3c]
	mov r1, #0x6f
	add r2, r4, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021A21C4
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A21C4:
	ldr r0, [r5, #0x3c]
	mov r1, #0xa0
	add r2, r4, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021A21D4
	mov r4, #3
_021A21D4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A21D8: .word 0x00000286
	thumb_func_end ovy165_21a2198

	thumb_func_start ovy165_21a21dc
ovy165_21a21dc: ; 0x021A21DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r1, #5
	mov r2, #0
	mov r4, #5
	mov r7, #0
	bl sub_0201CCF8
	ldr r6, _021A2220 ; =0x00000286
	cmp r0, r6
	beq _021A21F8
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A21F8:
	ldr r0, [r5, #0x3c]
	mov r1, #0x6f
	add r2, r7, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _021A220A
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021A220A:
	add r0, r6, #6
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_0201FDF8
	cmp r0, #6
	beq _021A221A
	mov r4, #1
_021A221A:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2220: .word 0x00000286
	thumb_func_end ovy165_21a21dc

	thumb_func_start ovy165_21a2224
ovy165_21a2224: ; 0x021A2224
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0xa3
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	ldr r0, [r0]
	add r1, r2, #0
	str r3, [sp]
	bl sub_0201FF08
	add r7, r0, #0
	ldr r0, [r5, r4]
	ldr r1, [sp]
	ldr r0, [r0]
	bl sub_0201FF08
	add r1, r0, #0
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x10]
	bl sub_0200AFAC
	add r2, r6, #1
	lsl r2, r2, #0x18
	add r0, r7, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ovy165_21a22e8
	add r1, r6, #1
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0201C864
	ldr r0, [r5, r4]
	add r1, r7, #0
	ldr r0, [r0, #0x1c]
	bl sub_0200D568
	ldr r0, [r5, r4]
	ldr r1, [sp]
	ldr r0, [r0]
	bl sub_0201FDA8
	ldr r0, [r5, r4]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_020087CC
	ldr r0, [r5, r4]
	mov r1, #7
	ldr r0, [r0, #0x20]
	bl sub_0200CC34
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy165_21a2224

	thumb_func_start ovy165_21a2294
ovy165_21a2294: ; 0x021A2294
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ovy165_21a22e8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201C864
	mov r4, #0xa3
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x10]
	bl sub_0200AFA8
	add r1, r0, #0
	ldr r0, [r5, r4]
	ldr r0, [r0]
	bl sub_0201FD6C
	ldr r0, [r5, r4]
	mov r1, #1
	ldr r0, [r0, #4]
	bl sub_020087CC
	ldr r0, [r5, r4]
	mov r1, #8
	ldr r0, [r0, #0x20]
	bl sub_0200CC34
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_21a2294

	thumb_func_start ovy165_21a22e8
ovy165_21a22e8: ; 0x021A22E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _021A2380 ; =0x021A4C68
	lsl r1, r1, #1
	add r5, r0, r1
	lsl r1, r2, #1
	add r0, r0, r1
	mov r6, #0
	str r0, [sp]
_021A22FC:
	add r1, r6, #0
	add r0, r7, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	add r1, r6, #0
	lsr r4, r0, #0x10
	add r0, r7, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r4, #0
	beq _021A2376
	mov r3, #0
	mov r0, #6
_021A2326:
	add r2, r3, #0
	mul r2, r0
	ldrh r1, [r5, r2]
	cmp r4, r1
	bne _021A2370
	ldr r0, [sp]
	add r1, r6, #0
	ldrh r4, [r0, r2]
	add r0, r7, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_020216B0
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, #0x36
	add r2, r4, #0
	bl sub_0201CD1C
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	bhs _021A2376
	add r1, r6, #0
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, #0x3a
	bl sub_0201CD1C
	b _021A2376
_021A2370:
	add r3, r3, #1
	cmp r3, #2
	blt _021A2326
_021A2376:
	add r6, r6, #1
	cmp r6, #4
	blt _021A22FC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A2380: .word 0x021A4C68
	thumb_func_end ovy165_21a22e8

	thumb_func_start ovy165_21a2384
ovy165_21a2384: ; 0x021A2384
	push {r4, lr}
	add r0, r1, #0
	mov r1, #5
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	ldr r1, _021A23B0 ; =0x00000281
	lsr r2, r0, #0x10
	cmp r2, r1
	beq _021A23AC
	add r0, r1, #1
	cmp r2, r0
	beq _021A23AC
	add r0, r1, #4
	cmp r2, r0
	beq _021A23AC
	add r0, r4, #0
	pop {r4, pc}
_021A23AC:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_021A23B0: .word 0x00000281
	thumb_func_end ovy165_21a2384

	thumb_func_start ovy165_21a23b4
ovy165_21a23b4: ; 0x021A23B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0201C864
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	ldr r0, [r0, #0x1c]
	bl sub_0200D568
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy165_21a23b4

	thumb_func_start ovy165_21a23e8
ovy165_21a23e8: ; 0x021A23E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r2, #0
	lsl r2, r3, #0x10
	add r6, r0, #0
	add r0, r1, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r5, #0
	bl sub_02026740
	mov r1, #0xe
	add r4, r0, #0
	bl sub_02026820
	cmp r0, #1
	beq _021A2416
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_021A2416:
	add r0, r6, #0
	bl sub_0201CF44
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x12
	bl sub_02026820
	cmp r0, #0
	beq _021A243A
	cmp r5, #2
	bne _021A243A
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A243A:
	add r0, r4, #0
	mov r1, #0x13
	bl sub_02026820
	cmp r0, #0
	beq _021A2456
	cmp r5, #5
	bne _021A2456
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2456:
	add r0, r4, #0
	mov r1, #0x14
	bl sub_02026820
	cmp r0, #0
	beq _021A2472
	cmp r5, #4
	bne _021A2472
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2472:
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02026820
	cmp r0, #0
	beq _021A248E
	cmp r5, #3
	bne _021A248E
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A248E:
	add r0, r4, #0
	mov r1, #0x16
	bl sub_02026820
	cmp r0, #0
	beq _021A24AA
	cmp r5, #1
	bne _021A24AA
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A24AA:
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_02026820
	cmp r0, #0
	bne _021A24CE
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_02026820
	cmp r0, #0
	beq _021A24EA
_021A24CE:
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_02026820
	cmp r0, #0
	bne _021A24EA
	cmp r5, #0
	bne _021A2514
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A24EA:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_02026820
	cmp r0, #0
	beq _021A2514
	cmp r5, #0
	beq _021A2514
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	cmp r5, r0
	bhs _021A2514
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2514:
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_02026820
	cmp r0, #0
	beq _021A253A
	add r0, r6, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0x64
	bhs _021A253A
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A253A:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_02026820
	cmp r0, #0
	bne _021A2552
	add r0, r4, #0
	mov r1, #0x26
	bl sub_02026820
	cmp r0, #0
	beq _021A258A
_021A2552:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	mov r5, #0
	bl sub_0201CCF8
	cmp r0, #3
	bhs _021A258A
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, r5, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	bl sub_020216B0
	cmp r0, #5
	blo _021A258A
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A258A:
	add r0, r4, #0
	mov r1, #0x27
	bl sub_02026820
	cmp r0, #0
	beq _021A25AE
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02020DF8
	cmp r0, #1
	bne _021A25AE
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A25AE:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02026820
	cmp r0, #0
	beq _021A25DA
	mov r5, #0
_021A25BC:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02020DF8
	cmp r0, #1
	bne _021A25D4
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A25D4:
	add r5, r5, #1
	cmp r5, #4
	blt _021A25BC
_021A25DA:
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_0201CCF8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_0201CCF8
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x30
	bl sub_02026820
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_02026820
	cmp r0, #0
	beq _021A26BE
	mov r1, #0x34
	str r1, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_02026820
	str r0, [sp]
	cmp r0, #0
	ble _021A2690
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x18]
	add r1, #0xf0
	str r1, [sp, #0x18]
	cmp r0, r1
	beq _021A2690
	cmp r5, #0x64
	blt _021A2668
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A26BE
_021A2668:
	cmp r5, #0xff
	bge _021A26BE
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _021A2924 ; =0x000001FE
	cmp r1, r0
	bge _021A26BE
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2690:
	ldr r0, [sp]
	cmp r0, #0
	bge _021A26BE
	cmp r5, #0
	ble _021A26A6
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A26A6:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_21a303c
	cmp r0, #1
	bne _021A26BE
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A26BE:
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_02026820
	cmp r0, #0
	beq _021A2736
	add r0, r4, #0
	mov r1, #0x35
	bl sub_02026820
	cmp r0, #0
	ble _021A270A
	ldr r0, [sp, #0x14]
	cmp r0, #0x64
	blt _021A26E2
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A2736
_021A26E2:
	ldr r0, [sp, #0x14]
	cmp r0, #0xff
	bge _021A2736
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _021A2924 ; =0x000001FE
	cmp r1, r0
	bge _021A2736
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A270A:
	bge _021A2736
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _021A271E
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A271E:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_21a303c
	cmp r0, #1
	bne _021A2736
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2736:
	add r0, r4, #0
	mov r1, #0x2c
	bl sub_02026820
	cmp r0, #0
	beq _021A27B0
	add r0, r4, #0
	mov r1, #0x36
	bl sub_02026820
	cmp r0, #0
	ble _021A2784
	ldr r0, [sp, #0x10]
	cmp r0, #0x64
	blt _021A275A
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A27B0
_021A275A:
	ldr r0, [sp, #0x10]
	cmp r0, #0xff
	bge _021A27B0
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _021A2924 ; =0x000001FE
	cmp r1, r0
	bge _021A27B0
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2784:
	bge _021A27B0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021A2798
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2798:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_21a303c
	cmp r0, #1
	bne _021A27B0
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A27B0:
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_02026820
	cmp r0, #0
	beq _021A282A
	add r0, r4, #0
	mov r1, #0x37
	bl sub_02026820
	cmp r0, #0
	ble _021A27FE
	ldr r0, [sp, #0xc]
	cmp r0, #0x64
	blt _021A27D4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A282A
_021A27D4:
	ldr r0, [sp, #0xc]
	cmp r0, #0xff
	bge _021A282A
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _021A2924 ; =0x000001FE
	cmp r1, r0
	bge _021A282A
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A27FE:
	bge _021A282A
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _021A2812
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2812:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_21a303c
	cmp r0, #1
	bne _021A282A
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A282A:
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_02026820
	cmp r0, #0
	beq _021A28A4
	add r0, r4, #0
	mov r1, #0x38
	bl sub_02026820
	cmp r0, #0
	ble _021A2878
	ldr r0, [sp, #8]
	cmp r0, #0x64
	blt _021A284E
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A28A4
_021A284E:
	ldr r0, [sp, #8]
	cmp r0, #0xff
	bge _021A28A4
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _021A2924 ; =0x000001FE
	cmp r1, r0
	bge _021A28A4
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2878:
	bge _021A28A4
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _021A288C
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A288C:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_21a303c
	cmp r0, #1
	bne _021A28A4
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A28A4:
	add r0, r4, #0
	mov r1, #0x2f
	bl sub_02026820
	cmp r0, #0
	beq _021A2918
	add r0, r4, #0
	mov r1, #0x39
	bl sub_02026820
	cmp r0, #0
	ble _021A28EE
	cmp r7, #0x64
	blt _021A28C6
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021A2918
_021A28C6:
	cmp r7, #0xff
	bge _021A2918
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _021A2924 ; =0x000001FE
	cmp r1, r0
	bge _021A2918
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A28EE:
	bge _021A2918
	cmp r7, #0
	ble _021A2900
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2900:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy165_21a303c
	cmp r0, #1
	bne _021A2918
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A2918:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A2924: .word 0x000001FE
	thumb_func_end ovy165_21a23e8

	thumb_func_start ovy165_21a2928
ovy165_21a2928: ; 0x021A2928
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r5, r0, #0
	ldr r0, [sp, #0x88]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x88]
	ldr r2, [sp, #0x88]
	str r3, [sp, #0x10]
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r7, #0
	bl sub_02026740
	mov r1, #0xe
	add r4, r0, #0
	bl sub_02026820
	cmp r0, #1
	beq _021A2960
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x74
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A2960:
	add r0, r5, #0
	mov r1, #0x9d
	add r2, r7, #0
	add r6, r7, #0
	bl sub_0201CCF8
	str r0, [sp, #0x54]
	str r0, [sp, #0x50]
	add r0, r4, #0
	mov r1, #0x12
	bl sub_02026820
	cmp r0, #0
	beq _021A2980
	str r7, [sp, #0x50]
	mov r6, #1
_021A2980:
	add r0, r4, #0
	mov r1, #0x13
	bl sub_02026820
	cmp r0, #0
	beq _021A2992
	mov r0, #0
	str r0, [sp, #0x50]
	mov r6, #1
_021A2992:
	add r0, r4, #0
	mov r1, #0x14
	bl sub_02026820
	cmp r0, #0
	beq _021A29A4
	mov r0, #0
	str r0, [sp, #0x50]
	mov r6, #1
_021A29A4:
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02026820
	cmp r0, #0
	beq _021A29B6
	mov r0, #0
	str r0, [sp, #0x50]
	mov r6, #1
_021A29B6:
	add r0, r4, #0
	mov r1, #0x16
	bl sub_02026820
	cmp r0, #0
	beq _021A29C8
	mov r0, #0
	str r0, [sp, #0x50]
	mov r6, #1
_021A29C8:
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x50]
	cmp r1, r0
	beq _021A29DC
	ldr r2, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0x9d
	bl sub_0201CD1C
	mov r7, #1
_021A29DC:
	add r0, r5, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x38]
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x30]
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_02026820
	cmp r0, #0
	bne _021A2A0C
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_02026820
	cmp r0, #0
	beq _021A2A36
_021A2A0C:
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_02026820
	cmp r0, #0
	bne _021A2A36
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021A2A34
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_02026820
	add r3, r0, #0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	bl ovy165_21a2f94
	mov r7, #1
_021A2A34:
	b _021A2A60
_021A2A36:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_02026820
	cmp r0, #0
	beq _021A2A62
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bge _021A2A60
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_02026820
	add r3, r0, #0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x30]
	add r0, r5, #0
	bl ovy165_21a2f94
	mov r7, #1
_021A2A60:
	mov r6, #1
_021A2A62:
	add r0, r5, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x58]
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_02026820
	cmp r0, #0
	beq _021A2ADE
	ldr r0, [sp, #0x58]
	cmp r0, #0x64
	bge _021A2ADC
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	add r1, r0, #0
	ldr r2, [sp, #0x58]
	lsl r0, r6, #0x10
	add r2, r2, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021A2ADA
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0x38]
	add r0, r5, #0
	sub r3, r2, r3
	bl ovy165_21a2f94
_021A2ADA:
	mov r7, #1
_021A2ADC:
	mov r6, #1
_021A2ADE:
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_02026820
	cmp r0, #0
	beq _021A2AEC
	mov r6, #1
_021A2AEC:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_02026820
	cmp r0, #0
	beq _021A2B0C
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #1
	mov r6, #1
	bl ovy165_21a2ef4
	cmp r0, #1
	bne _021A2B0A
	add r7, r6, #0
_021A2B0A:
	b _021A2B28
_021A2B0C:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_02026820
	cmp r0, #0
	beq _021A2B2A
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #3
	bl ovy165_21a2ef4
	cmp r0, #1
	bne _021A2B28
	mov r7, #1
_021A2B28:
	mov r6, #1
_021A2B2A:
	add r0, r4, #0
	mov r1, #0x27
	bl sub_02026820
	cmp r0, #0
	beq _021A2B50
	add r0, r4, #0
	mov r1, #0x3b
	bl sub_02026820
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_02020E48
	cmp r0, #1
	bne _021A2B4E
	mov r7, #1
_021A2B4E:
	b _021A2B7C
_021A2B50:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_02026820
	cmp r0, #0
	beq _021A2B7E
	mov r6, #0
_021A2B5E:
	add r0, r4, #0
	mov r1, #0x3b
	bl sub_02026820
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02020E48
	cmp r0, #1
	bne _021A2B76
	mov r7, #1
_021A2B76:
	add r6, r6, #1
	cmp r6, #4
	blt _021A2B5E
_021A2B7C:
	mov r6, #1
_021A2B7E:
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x3c]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x34]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x2c]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x28]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x4c]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0x30
	bl sub_02026820
	str r0, [sp, #0x44]
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_02026820
	cmp r0, #0
	beq _021A2C4E
	mov r1, #0x34
	str r1, [sp, #0x5c]
	add r0, r4, #0
	mov r1, #0x34
	bl sub_02026820
	str r0, [sp, #0x40]
	cmp r0, #0
	ble _021A2C0E
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x5c]
	add r1, #0xf0
	str r1, [sp, #0x5c]
	cmp r0, r1
	bne _021A2C0E
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A2C0E:
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	add r2, r2, r1
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x44]
	add r2, r1, r2
	ldr r1, [sp, #0x4c]
	add r2, r1, r2
	ldr r1, [sp, #0x48]
	add r1, r1, r2
	ldr r2, [sp, #0x40]
	bl ovy165_21a2fc8
	add r2, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _021A2C46
	add r0, r5, #0
	mov r1, #0xd
	str r2, [sp, #0x3c]
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	mov r7, #1
_021A2C46:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	ble _021A2C4E
	mov r6, #1
_021A2C4E:
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_02026820
	cmp r0, #0
	beq _021A2CAA
	mov r1, #0x35
	str r1, [sp, #0x60]
	add r0, r4, #0
	mov r1, #0x35
	bl sub_02026820
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x14]
	add r2, r2, r1
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x34]
	add r2, r1, r2
	ldr r1, [sp, #0x4c]
	ldr r3, [sp, #0x44]
	add r2, r1, r2
	ldr r1, [sp, #0x48]
	add r1, r1, r2
	ldr r2, [sp, #0x14]
	bl ovy165_21a2fc8
	add r2, r0, #0
	ldr r0, [sp, #0x60]
	sub r0, #0x36
	str r0, [sp, #0x60]
	cmp r2, r0
	beq _021A2CA2
	add r0, r5, #0
	mov r1, #0xe
	str r2, [sp, #0x34]
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	mov r7, #1
_021A2CA2:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _021A2CAA
	mov r6, #1
_021A2CAA:
	add r0, r4, #0
	mov r1, #0x2c
	bl sub_02026820
	cmp r0, #0
	beq _021A2D06
	mov r1, #0x36
	str r1, [sp, #0x64]
	add r0, r4, #0
	mov r1, #0x36
	bl sub_02026820
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x18]
	add r2, r2, r1
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r2, r1, r2
	ldr r1, [sp, #0x4c]
	ldr r3, [sp, #0x44]
	add r2, r1, r2
	ldr r1, [sp, #0x48]
	add r1, r1, r2
	ldr r2, [sp, #0x18]
	bl ovy165_21a2fc8
	add r2, r0, #0
	ldr r0, [sp, #0x64]
	sub r0, #0x37
	str r0, [sp, #0x64]
	cmp r2, r0
	beq _021A2CFE
	add r0, r5, #0
	mov r1, #0xf
	str r2, [sp, #0x2c]
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	mov r7, #1
_021A2CFE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _021A2D06
	mov r6, #1
_021A2D06:
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_02026820
	cmp r0, #0
	beq _021A2D62
	mov r1, #0x37
	str r1, [sp, #0x68]
	add r0, r4, #0
	mov r1, #0x37
	bl sub_02026820
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x1c]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r2, r1, r2
	ldr r1, [sp, #0x4c]
	ldr r3, [sp, #0x44]
	add r2, r1, r2
	ldr r1, [sp, #0x48]
	add r1, r1, r2
	ldr r2, [sp, #0x1c]
	bl ovy165_21a2fc8
	add r2, r0, #0
	ldr r0, [sp, #0x68]
	sub r0, #0x38
	str r0, [sp, #0x68]
	cmp r2, r0
	beq _021A2D5A
	add r0, r5, #0
	mov r1, #0x10
	str r2, [sp, #0x28]
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	mov r7, #1
_021A2D5A:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _021A2D62
	mov r6, #1
_021A2D62:
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_02026820
	cmp r0, #0
	beq _021A2DBE
	mov r1, #0x38
	str r1, [sp, #0x6c]
	add r0, r4, #0
	mov r1, #0x38
	bl sub_02026820
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x20]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x4c]
	add r2, r1, r2
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x44]
	add r2, r1, r2
	ldr r1, [sp, #0x48]
	add r1, r1, r2
	ldr r2, [sp, #0x20]
	bl ovy165_21a2fc8
	add r2, r0, #0
	ldr r0, [sp, #0x6c]
	sub r0, #0x39
	str r0, [sp, #0x6c]
	cmp r2, r0
	beq _021A2DB6
	add r0, r5, #0
	mov r1, #0x11
	str r2, [sp, #0x4c]
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	mov r7, #1
_021A2DB6:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _021A2DBE
	mov r6, #1
_021A2DBE:
	add r0, r4, #0
	mov r1, #0x2f
	bl sub_02026820
	cmp r0, #0
	beq _021A2E18
	mov r1, #0x39
	str r1, [sp, #0x70]
	add r0, r4, #0
	mov r1, #0x39
	bl sub_02026820
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x24]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x48]
	add r2, r1, r2
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x44]
	add r2, r1, r2
	ldr r1, [sp, #0x4c]
	add r1, r1, r2
	ldr r2, [sp, #0x24]
	bl ovy165_21a2fc8
	add r2, r0, #0
	ldr r0, [sp, #0x70]
	sub r0, #0x3a
	str r0, [sp, #0x70]
	cmp r2, r0
	beq _021A2E10
	add r0, r5, #0
	mov r1, #0x12
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	mov r7, #1
_021A2E10:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	ble _021A2E18
	mov r6, #1
_021A2E18:
	cmp r7, #0
	bne _021A2E2C
	cmp r6, #1
	bne _021A2E2C
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x74
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A2E2C:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0201CCF8
	add r6, r0, #0
	cmp r6, #0x64
	bge _021A2E70
	add r0, r4, #0
	mov r1, #0x31
	bl sub_02026820
	cmp r0, #0
	beq _021A2EE6
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_02026820
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x88]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy165_21a30c8
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x74
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A2E70:
	blt _021A2EAA
	cmp r6, #0xc8
	bge _021A2EAA
	add r0, r4, #0
	mov r1, #0x32
	bl sub_02026820
	cmp r0, #0
	beq _021A2EE6
	add r0, r4, #0
	mov r1, #0x3d
	bl sub_02026820
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x88]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy165_21a30c8
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x74
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A2EAA:
	cmp r6, #0xc8
	blt _021A2EE6
	cmp r6, #0xff
	bgt _021A2EE6
	add r0, r4, #0
	mov r1, #0x33
	bl sub_02026820
	cmp r0, #0
	beq _021A2EE6
	add r0, r4, #0
	mov r1, #0x3e
	bl sub_02026820
	add r2, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x88]
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy165_21a30c8
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x74
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A2EE6:
	add r0, r4, #0
	bl sub_0203A24C
	add r0, r7, #0
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_21a2928

	thumb_func_start ovy165_21a2ef4
ovy165_21a2ef4: ; 0x021A2EF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	add r4, r1, #0
	str r1, [sp, #4]
	add r1, #0x3e
	mov r2, #0
	add r6, r0, #0
	str r1, [sp, #4]
	mov r7, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	bne _021A2F1A
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2F1A:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r7, #0
	str r0, [sp, #0xc]
	bl sub_020216B0
	cmp r0, #5
	bhs _021A2F3C
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2F3C:
	add r4, #0x3a
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_020216B0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r5, r0
	cmp r0, #3
	bls _021A2F62
	mov r5, #3
	b _021A2F66
_021A2F62:
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_021A2F66:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_020216B0
	add r1, r7, r0
	ldr r0, [sp, #8]
	add r2, r5, #0
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_0201CD1C
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0201CD1C
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy165_21a2ef4

	thumb_func_start ovy165_21a2f94
ovy165_21a2f94: ; 0x021A2F94
	push {r4, lr}
	add r4, r1, #0
	cmp r2, #1
	bne _021A2FA0
	mov r3, #1
	b _021A2FB6
_021A2FA0:
	cmp r3, #0xff
	bne _021A2FA8
	add r3, r2, #0
	b _021A2FB6
_021A2FA8:
	cmp r3, #0xfe
	bne _021A2FB0
	lsr r3, r2, #1
	b _021A2FB6
_021A2FB0:
	cmp r3, #0xfd
	bne _021A2FB6
	lsr r3, r2, #2
_021A2FB6:
	add r4, r4, r3
	cmp r4, r2
	bls _021A2FBE
	add r4, r2, #0
_021A2FBE:
	mov r1, #0xa0
	add r2, r4, #0
	bl sub_0201CD1C
	pop {r4, pc}
	thumb_func_end ovy165_21a2f94

	thumb_func_start ovy165_21a2fc8
ovy165_21a2fc8: ; 0x021A2FC8
	push {r4, r5}
	cmp r0, #0
	bne _021A2FDA
	cmp r2, #0
	bge _021A2FDA
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
_021A2FDA:
	cmp r0, #0xff
	bne _021A2FEA
	cmp r2, #0
	ble _021A2FEA
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
_021A2FEA:
	cmp r0, #0x64
	blt _021A2FFE
	cmp r3, #0
	bne _021A2FFE
	cmp r2, #0
	ble _021A2FFE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
_021A2FFE:
	ldr r4, _021A3038 ; =0x000001FE
	add r5, r0, r1
	cmp r5, r4
	blt _021A3012
	cmp r2, #0
	ble _021A3012
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
_021A3012:
	add r0, r0, r2
	cmp r2, #0
	ble _021A3024
	cmp r0, #0x64
	ble _021A3024
	cmp r3, #0
	bne _021A3024
	mov r0, #0x64
	b _021A302A
_021A3024:
	cmp r0, #0
	bge _021A302A
	mov r0, #0
_021A302A:
	ldr r2, _021A3038 ; =0x000001FE
	add r3, r0, r1
	cmp r3, r2
	ble _021A3034
	sub r0, r2, r1
_021A3034:
	pop {r4, r5}
	bx lr
	.align 2, 0
_021A3038: .word 0x000001FE
	thumb_func_end ovy165_21a2fc8

	thumb_func_start ovy165_21a303c
ovy165_21a303c: ; 0x021A303C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #9
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #0xff
	blt _021A3052
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A3052:
	cmp r0, #0x64
	bge _021A3076
	add r0, r5, #0
	mov r1, #0x31
	bl sub_02026820
	cmp r0, #0
	beq _021A3072
	add r0, r5, #0
	mov r1, #0x3c
	bl sub_02026820
	cmp r0, #0
	ble _021A3072
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A3072:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A3076:
	blt _021A309C
	cmp r0, #0xc8
	bge _021A309C
	add r0, r5, #0
	mov r1, #0x32
	bl sub_02026820
	cmp r0, #0
	beq _021A3098
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02026820
	cmp r0, #0
	ble _021A3098
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A3098:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A309C:
	cmp r0, #0xc8
	blt _021A30C4
	cmp r0, #0xff
	bge _021A30C4
	add r0, r5, #0
	mov r1, #0x33
	bl sub_02026820
	cmp r0, #0
	beq _021A30C0
	add r0, r5, #0
	mov r1, #0x3e
	bl sub_02026820
	cmp r0, #0
	ble _021A30C0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A30C0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A30C4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy165_21a303c

	thumb_func_start ovy165_21a30c8
ovy165_21a30c8: ; 0x021A30C8
	push {r3, lr}
	cmp r1, #0xff
	bne _021A30D6
	cmp r2, #0
	ble _021A30D6
	mov r0, #0
	pop {r3, pc}
_021A30D6:
	cmp r1, #0
	bne _021A30E2
	cmp r2, #0
	bge _021A30E2
	mov r0, #0
	pop {r3, pc}
_021A30E2:
	add r1, r3, #0
	add r2, sp, #8
	ldr r3, [sp, #0xc]
	ldrh r2, [r2]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02020C8C
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy165_21a30c8
_021A30F8:
	.byte 0x4C, 0x03, 0x25, 0xE1, 0x4D, 0x5F, 0x66, 0xC2
	.byte 0xFF, 0x83, 0xE9, 0xD2, 0x1B, 0x4C, 0x17, 0xB4, 0x0D, 0xA1, 0x45, 0x99, 0xC6, 0x0F, 0xDC, 0x7A
	.byte 0x6D, 0xE5, 0xC0, 0x5C, 0x56, 0x86, 0x10, 0x3F, 0x38, 0x07, 0x76, 0x20, 0xD0, 0xDC, 0x19, 0x05
	.byte 0x77, 0xE4, 0xCC, 0xE6, 0xE8, 0xDE, 0x1A, 0xC9, 0xB5, 0x32, 0x61, 0xAB, 0xD7, 0x78, 0x27, 0x8C
	.byte 0x38, 0x53, 0x1A, 0x02, 0x75, 0xE9, 0x07, 0x02, 0x0C, 0xC0, 0x9F, 0xE5, 0x01, 0x20, 0xA0, 0xE1
	.byte 0x00, 0x10, 0xA0, 0xE1, 0x00, 0x00, 0xA0, 0xE3, 0x1C, 0xFF, 0x2F, 0xE1, 0x58, 0x86, 0x07, 0x02
	.byte 0xB4, 0xDA, 0xC8, 0xEB, 0xF8, 0xEA, 0xF5, 0x0A, 0xB8, 0x49, 0x75, 0x36, 0x74, 0x56, 0xC4, 0x24
	.byte 0x20, 0x65, 0xAE, 0xC1, 0x60, 0x46, 0xC9, 0x22, 0x3F, 0xF5, 0xC2, 0xC8, 0x13, 0x3B, 0x0C, 0x28
	.byte 0x33, 0x6B, 0x31, 0xC9, 0xEF, 0x94, 0xF1, 0x17, 0x86, 0xB6, 0x4E, 0xF7, 0xCF, 0x57, 0xF1, 0x17
	.byte 0xCF, 0x17, 0x7F, 0xF3, 0x0D, 0xF4, 0xE5, 0x13, 0x13, 0x13, 0xAF, 0xF1, 0xF8, 0xBF, 0xDF, 0xE3
	.byte 0x1A, 0x2B, 0xE8, 0xF3, 0x30, 0x38, 0x5B, 0xE3, 0x04, 0x8C, 0x89, 0xF3, 0x36, 0xA3, 0xE8, 0x11
	.byte 0xC2, 0x0D, 0x57, 0xF0, 0x37, 0x72, 0xB5, 0xE9, 0x36, 0x76, 0x0E, 0x0A, 0xC8, 0x0A, 0x92, 0xE8
	.byte 0x2C, 0x88, 0x2E, 0x0A, 0xD2, 0xE0, 0xB2, 0xE8, 0x2B, 0x61, 0x3E, 0x0C, 0x2A, 0x11, 0x14, 0xEF
	.byte 0x2B, 0xF8, 0xA8, 0xFF, 0xC3, 0x76, 0x18, 0x1E, 0xDB, 0xE2, 0xB1, 0xBA, 0x25, 0xB2, 0x77, 0x0A
	.byte 0x7A, 0x6D, 0x85, 0xA3, 0x9A, 0x2D, 0x91, 0x1B, 0xA7, 0x78, 0x05, 0xB2, 0x58, 0x4A, 0x24, 0x52
	.byte 0x18, 0x3A, 0xB8, 0xBB, 0x45, 0x4D, 0x1A, 0x02, 0x47, 0x4D, 0x1A, 0x02, 0xF8, 0x52, 0x1A, 0x02
	.byte 0x7C, 0x6F, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x3A, 0x1A, 0x6A, 0x8A, 0x47, 0xA4, 0xE9
	.byte 0x01, 0xEA, 0x5C, 0xCB, 0xEB, 0xDD, 0x46, 0xB0, 0xCA, 0xF1, 0xEF, 0x95, 0xAC, 0x90, 0x4C, 0x7A
	.byte 0x90, 0xE3, 0x5F, 0x5F, 0x99, 0x2C, 0xEF, 0x42, 0x34, 0x06, 0x0F, 0x27, 0xF3, 0x9D, 0xBC, 0x0C
	.byte 0x4A, 0xDC, 0x33, 0xF1, 0xD7, 0xC7, 0x4E, 0xD6, 0x79, 0x42, 0x5A, 0xBB, 0x9C, 0x46, 0x1D, 0xA0
	.byte 0x63, 0x75, 0x09, 0x82, 0x0B, 0x9E, 0x23, 0x63, 0xBB, 0x09, 0x7F, 0x44, 0x90, 0xE5, 0x78, 0x29
	.byte 0xC6, 0xB3, 0xA0, 0x0E, 0x5F, 0x3B, 0xBF, 0xEF, 0x7C, 0x29, 0xB2, 0xD2, 0xC7, 0x87, 0x25, 0xB3
	.byte 0xEB, 0x1F, 0xBC, 0x98, 0x7D, 0xE4, 0xB3, 0x79, 0x41, 0x89, 0xE4, 0x5B, 0x16, 0xC4, 0xA2, 0x3C
	.byte 0xCB, 0xCA, 0x4F, 0x1D, 0x10, 0x6C, 0xF3, 0x01, 0xFE, 0x69, 0x5D, 0xE3, 0x02, 0x8C, 0xFA, 0xC4
	.byte 0xB0, 0x79, 0x81, 0xA5, 0xE4, 0x4E, 0xDE, 0x85, 0x79, 0x72, 0x94, 0x67, 0xF7, 0x64, 0xFF, 0x82
	.byte 0x1F, 0x56, 0x8C, 0x63, 0x39, 0xC1, 0xC8, 0x6E, 0x65, 0x41, 0x19, 0x51, 0xFF, 0x3B, 0x71, 0x32
	.byte 0x30, 0x08, 0x00, 0x1C, 0xD3, 0x1E, 0x3C, 0x07, 0x3F, 0x1F, 0x83, 0xE8, 0xEC, 0x5F, 0xBD, 0xC9
	.byte 0x86, 0x54, 0x3D, 0xAC, 0x10, 0xC4, 0xD5, 0xC7, 0x09, 0x4D, 0xAD, 0xB2, 0x96, 0x1D, 0x7A, 0x97
	.byte 0xD6, 0x3B, 0xD0, 0x77, 0xD3, 0xBF, 0xCD, 0x5A, 0x55, 0xB6, 0xA2, 0x75, 0xC4, 0xE2, 0x5C, 0x5A
	.byte 0x5C, 0x0B, 0x85, 0x3D, 0x0F, 0x6D, 0x20, 0x1D, 0xA2, 0x0C, 0x68, 0xFE, 0xF9, 0x2C, 0x94, 0xDE
	.byte 0x70, 0x82, 0x8A, 0xBE, 0xAD, 0x16, 0x09, 0xD9, 0x4B, 0xD6, 0x49, 0xBC, 0x44, 0x30, 0xCF, 0xC7
	.byte 0x03, 0x32, 0xAD, 0xAC, 0xA2, 0xB6, 0x82, 0x8D, 0x52, 0x45, 0x35, 0x6E, 0x9C, 0xD8, 0xCC, 0x59
	.byte 0x89, 0x9A, 0x27, 0x3A, 0x59, 0x7D, 0x61, 0x1B, 0x16, 0x08, 0x00, 0x05, 0x70, 0x79, 0x68, 0xE6
	.byte 0x87, 0xBB, 0x0E, 0xC7, 0xF2, 0xCB, 0xCA, 0xA9, 0xF7, 0x16, 0x8C, 0x91, 0x34, 0x58, 0x1A, 0x02
	.byte 0xAC, 0x65, 0x1A, 0x02, 0x00, 0x65, 0x1A, 0x02, 0xE0, 0x58, 0x1A, 0x02, 0x87, 0xEB, 0x30, 0x00
	.byte 0xD6, 0xA8, 0x75, 0x9F, 0x11, 0xF0, 0xFE, 0x10, 0xB4, 0xDA, 0xC8, 0xEB, 0xF8, 0xEA, 0xF5, 0x0A
	.byte 0xB8, 0x49, 0x75, 0x36, 0x74, 0x56, 0xC4, 0x24, 0x20, 0x65, 0xAE, 0xC1, 0x60, 0x46, 0xC9, 0x22
	.byte 0x3F, 0xF5, 0xC2, 0xC8, 0x13, 0x3B, 0x0C, 0x28, 0x33, 0x6B, 0x31, 0xC9, 0xEF, 0x94, 0xF1, 0x17
	.byte 0x86, 0xB6, 0x4E, 0xF7, 0xCF, 0x57, 0xF1, 0x17, 0xCF, 0x17, 0x7F, 0xF3, 0x0D, 0xF4, 0xE5, 0x13
	.byte 0x13, 0x13, 0xAF, 0xF1, 0xF8, 0xBF, 0xDF, 0xE3, 0x1A, 0x2B, 0xE8, 0xF3, 0x30, 0x38, 0x5B, 0xE3
	.byte 0x04, 0x8C, 0x89, 0xF3, 0x36, 0xA3, 0xE8, 0x11, 0xC2, 0x0D, 0x57, 0xF0, 0x37, 0x72, 0xB5, 0xE9
	.byte 0x36, 0x76, 0x0E, 0x0A, 0xC8, 0x0A, 0x92, 0xE8, 0x2C, 0x88, 0x2E, 0x0A, 0xD2, 0xE0, 0xB2, 0xE8
	.byte 0x2B, 0x61, 0x3E, 0x0C, 0x2A, 0x11, 0x14, 0xEF, 0x2B, 0xF8, 0xA8, 0xFF, 0xC3, 0x76, 0x18, 0x1E
	.byte 0xDB, 0xE2, 0xB1, 0xBA, 0x25, 0xB2, 0x77, 0x0A, 0x7A, 0x6D, 0x85, 0xA3, 0x9A, 0x2D, 0x91, 0x1B
	.byte 0xA7, 0x78, 0x05, 0xB2, 0x58, 0x4A, 0x24, 0x52, 0x18, 0x3A, 0xB8, 0xBB, 0x45, 0x4D, 0x1A, 0x02
	.byte 0x47, 0x4D, 0x1A, 0x02, 0xFC, 0x53, 0x1A, 0x02, 0x54, 0x70, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x3A, 0x1A, 0x6A, 0x00, 0x00, 0x8F, 0xE3, 0x04, 0x00, 0x90, 0xE2, 0xF3, 0x00, 0x00, 0x1A
	.byte 0x28, 0x55, 0x1A, 0x02, 0xD8, 0x6F, 0x1A, 0x02, 0x50, 0x53, 0x1A, 0x02, 0xD8, 0x6F, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x6E, 0x1A, 0x02, 0x7A, 0xAE, 0x9B, 0xE5
	.byte 0x8C, 0x39, 0xDB, 0xC7, 0xBE, 0x02, 0x84, 0xA9, 0xA5, 0x81, 0xDD, 0x8E, 0x9F, 0x5D, 0x64, 0x71
	.byte 0xA1, 0x29, 0x84, 0x86, 0x6A, 0x67, 0xF0, 0x97, 0xC8, 0x11, 0xA2, 0x7C, 0xEA, 0x2A, 0xEC, 0x5F
	.byte 0xC0, 0x43, 0x20, 0x74, 0x24, 0xAA, 0x69, 0x85, 0x15, 0xE4, 0x04, 0x6A, 0x4D, 0x6B, 0x45, 0x4D
	.byte 0x90, 0x59, 0xCF, 0x62, 0x62, 0x4F, 0x62, 0x73, 0x55, 0x51, 0xC1, 0x58, 0x01, 0x1D, 0x77, 0x3B
	.byte 0xBB, 0xA6, 0x0D, 0x50, 0x57, 0x74, 0x62, 0x61, 0xDD, 0x07, 0x76, 0x46, 0x0D, 0x26, 0x5A, 0x29
	.byte 0xF7, 0x42, 0x89, 0x3E, 0x88, 0x2D, 0xAB, 0x4F, 0xBD, 0x75, 0x2D, 0x34, 0x3E, 0x1E, 0x1F, 0x17
	.byte 0x94, 0x22, 0xF7, 0x2C, 0xBA, 0x06, 0x87, 0x3D, 0x9D, 0x3A, 0xCF, 0x22, 0xB8, 0x10, 0x12, 0x05
	.byte 0x4F, 0xB4, 0x55, 0x1A, 0xF8, 0xE2, 0xBD, 0x2B, 0x6C, 0x5E, 0x76, 0x10, 0x2C, 0x0B, 0x93, 0xF3
	.byte 0xB0, 0xB9, 0xC1, 0x08, 0x07, 0xAB, 0x97, 0x19, 0x99, 0x4F, 0x49, 0xFE, 0x1B, 0xF0, 0x11, 0xE1
	.byte 0x6E, 0xF2, 0x72, 0xF6, 0x98, 0xA1, 0xCD, 0x07, 0x99, 0x48, 0xAE, 0xEC, 0xC6, 0xD2, 0xFF, 0xCF
	.byte 0xC9, 0xC8, 0xB0, 0xE4, 0xC6, 0x5A, 0xEC, 0xF5, 0xC0, 0x3D, 0xD8, 0xDA, 0x11, 0x28, 0x2F, 0xBD
	.byte 0x51, 0x64, 0xEE, 0xD2, 0x90, 0xB9, 0xC1, 0xE3, 0xFA, 0x74, 0x10, 0xC8, 0x83, 0x1E, 0x03, 0xAB
	.byte 0x0D, 0xD4, 0x62, 0xC0, 0x61, 0x4F, 0xB3, 0xD1, 0xBF, 0x2A, 0x7C, 0xB6, 0x35, 0x7B, 0x7F, 0x99
	.byte 0x1F, 0xFE, 0xB4, 0xAE, 0x5E, 0xA8, 0x6B, 0xBF, 0x74, 0x66, 0x92, 0xA4, 0x58, 0x2D, 0x10, 0x87
	.byte 0xC0, 0xF7, 0xCE, 0x9C, 0xE1, 0xB1, 0x84, 0xAD, 0x6A, 0xF1, 0x7A, 0x92, 0xEB, 0x8B, 0x7C, 0x75
	.byte 0x65, 0x6F, 0x87, 0x8A, 0xDD, 0xA0, 0xA7, 0x9B, 0xA9, 0x9F, 0x68, 0x80, 0x9F, 0x7E, 0x51, 0x63
	.byte 0xF9, 0xA8, 0x6C, 0x78, 0x09, 0x47, 0xC4, 0x7D, 0x6D, 0x16, 0xB1, 0x5E, 0xAC, 0x65, 0x1A, 0x02
	.byte 0x9F, 0xA9, 0x00, 0x00, 0xDD, 0xA2, 0x00, 0x00, 0x7A, 0xAE, 0x9B, 0xE5, 0x8C, 0x39, 0xDB, 0xC7
	.byte 0xBE, 0x02, 0x84, 0xA9, 0xA5, 0x81, 0xDD, 0x8E, 0x9F, 0x5D, 0x64, 0x71, 0xA1, 0x29, 0x84, 0x86
	.byte 0x6A, 0x67, 0xF0, 0x97, 0xC8, 0x11, 0xA2, 0x7C, 0xEA, 0x2A, 0xEC, 0x5F, 0xC0, 0x43, 0x20, 0x74
	.byte 0x24, 0xAA, 0x69, 0x85, 0x15, 0xE4, 0x04, 0x6A, 0x4D, 0x6B, 0x45, 0x4D, 0x90, 0x59, 0xCF, 0x62
	.byte 0x62, 0x4F, 0x62, 0x73, 0x55, 0x51, 0xC1, 0x58, 0x01, 0x1D, 0x77, 0x3B, 0xBB, 0xA6, 0x0D, 0x50
	.byte 0x57, 0x74, 0x62, 0x61, 0xDD, 0x07, 0x76, 0x46, 0x0D, 0x26, 0x5A, 0x29, 0xF7, 0x42, 0x89, 0x3E
	.byte 0x88, 0x2D, 0xAB, 0x4F, 0xBD, 0x75, 0x2D, 0x34, 0x3E, 0x1E, 0x1F, 0x17, 0x94, 0x22, 0xF7, 0x2C
	.byte 0xBA, 0x06, 0x87, 0x3D, 0x9D, 0x3A, 0xCF, 0x22, 0xB8, 0x10, 0x12, 0x05, 0x4F, 0xB4, 0x55, 0x1A
	.byte 0xF8, 0xE2, 0xBD, 0x2B, 0x6C, 0x5E, 0x76, 0x10, 0x2C, 0x0B, 0x93, 0xF3, 0xB0, 0xB9, 0xC1, 0x08
	.byte 0x07, 0xAB, 0x97, 0x19, 0x99, 0x4F, 0x49, 0xFE, 0x1B, 0xF0, 0x11, 0xE1, 0x6E, 0xF2, 0x72, 0xF6
	.byte 0x98, 0xA1, 0xCD, 0x07, 0x99, 0x48, 0xAE, 0xEC, 0xC6, 0xD2, 0xFF, 0xCF, 0xC9, 0xC8, 0xB0, 0xE4
	.byte 0xC6, 0x5A, 0xEC, 0xF5, 0xC0, 0x3D, 0xD8, 0xDA, 0x11, 0x28, 0x2F, 0xBD, 0x51, 0x64, 0xEE, 0xD2
	.byte 0x90, 0xB9, 0xC1, 0xE3, 0xFA, 0x74, 0x10, 0xC8, 0x83, 0x1E, 0x03, 0xAB, 0x0D, 0xD4, 0x62, 0xC0
	.byte 0x61, 0x4F, 0xB3, 0xD1, 0xBF, 0x2A, 0x7C, 0xB6, 0x35, 0x7B, 0x7F, 0x99, 0x1F, 0xFE, 0xB4, 0xAE
	.byte 0x5E, 0xA8, 0x6B, 0xBF, 0x74, 0x66, 0x92, 0xA4, 0x58, 0x2D, 0x10, 0x87, 0xC0, 0xF7, 0xCE, 0x9C
	.byte 0xE1, 0xB1, 0x84, 0xAD, 0x6A, 0xF1, 0x7A, 0x92, 0xEB, 0x8B, 0x7C, 0x75, 0x65, 0x6F, 0x87, 0x8A
	.byte 0xDD, 0xA0, 0xA7, 0x9B, 0xA9, 0x9F, 0x68, 0x80, 0x9F, 0x7E, 0x51, 0x63, 0xF9, 0xA8, 0x6C, 0x78
	.byte 0x09, 0x47, 0xC4, 0x7D, 0x6D, 0x16, 0xB1, 0x5E, 0x00, 0x65, 0x1A, 0x02, 0x9F, 0xA9, 0x00, 0x00
	.byte 0xDD, 0xA2, 0x00, 0x00, 0xB4, 0xDA, 0xC8, 0xEB, 0xF8, 0xEA, 0xF5, 0x0A, 0xB8, 0x49, 0x75, 0x36
	.byte 0x74, 0x56, 0xC4, 0x24, 0x20, 0x65, 0xAE, 0xC1, 0x60, 0x46, 0xC9, 0x22, 0x3F, 0xF5, 0xC2, 0xC8
	.byte 0x13, 0x3B, 0x0C, 0x28, 0x33, 0x6B, 0x31, 0xC9, 0xEF, 0x94, 0xF1, 0x17, 0x86, 0xB6, 0x4E, 0xF7
	.byte 0xCF, 0x57, 0xF1, 0x17, 0xCF, 0x17, 0x7F, 0xF3, 0x0D, 0xF4, 0xE5, 0x13, 0x13, 0x13, 0xAF, 0xF1
	.byte 0xF8, 0xBF, 0xDF, 0xE3, 0x1A, 0x2B, 0xE8, 0xF3, 0x30, 0x38, 0x5B, 0xE3, 0x04, 0x8C, 0x89, 0xF3
	.byte 0x36, 0xA3, 0xE8, 0x11, 0xC2, 0x0D, 0x57, 0xF0, 0x37, 0x72, 0xB5, 0xE9, 0x36, 0x76, 0x0E, 0x0A
	.byte 0xC8, 0x0A, 0x92, 0xE8, 0x2C, 0x88, 0x2E, 0x0A, 0xD2, 0xE0, 0xB2, 0xE8, 0x2B, 0x61, 0x3E, 0x0C
	.byte 0x2A, 0x11, 0x14, 0xEF, 0x2B, 0xF8, 0xA8, 0xFF, 0xC3, 0x76, 0x18, 0x1E, 0xDB, 0xE2, 0xB1, 0xBA
	.byte 0x25, 0xB2, 0x77, 0x0A, 0x7A, 0x6D, 0x85, 0xA3, 0x9A, 0x2D, 0x91, 0x1B, 0xA7, 0x78, 0x05, 0xB2
	.byte 0x58, 0x4A, 0x24, 0x52, 0x18, 0x3A, 0xB8, 0xBB, 0x45, 0x4D, 0x1A, 0x02, 0x47, 0x4D, 0x1A, 0x02
	.byte 0xFC, 0x55, 0x1A, 0x02, 0x54, 0x70, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x3A, 0x1A, 0x6A
	.byte 0xB4, 0xDA, 0xC8, 0xEB, 0xF8, 0xEA, 0xF5, 0x0A, 0xB8, 0x49, 0x75, 0x36, 0x74, 0x56, 0xC4, 0x24
	.byte 0x20, 0x65, 0xAE, 0xC1, 0x60, 0x46, 0xC9, 0x22, 0x3F, 0xF5, 0xC2, 0xC8, 0x13, 0x3B, 0x0C, 0x28
	.byte 0x33, 0x6B, 0x31, 0xC9, 0xEF, 0x94, 0xF1, 0x17, 0x86, 0xB6, 0x4E, 0xF7, 0xCF, 0x57, 0xF1, 0x17
	.byte 0xCF, 0x17, 0x7F, 0xF3, 0x0D, 0xF4, 0xE5, 0x13, 0x13, 0x13, 0xAF, 0xF1, 0xF8, 0xBF, 0xDF, 0xE3
	.byte 0x1A, 0x2B, 0xE8, 0xF3, 0x30, 0x38, 0x5B, 0xE3, 0x04, 0x8C, 0x89, 0xF3, 0x36, 0xA3, 0xE8, 0x11
	.byte 0xC2, 0x0D, 0x57, 0xF0, 0x37, 0x72, 0xB5, 0xE9, 0x36, 0x76, 0x0E, 0x0A, 0xC8, 0x0A, 0x92, 0xE8
	.byte 0x2C, 0x88, 0x2E, 0x0A, 0xD2, 0xE0, 0xB2, 0xE8, 0x2B, 0x61, 0x3E, 0x0C, 0x2A, 0x11, 0x14, 0xEF
	.byte 0x2B, 0xF8, 0xA8, 0xFF, 0xC3, 0x76, 0x18, 0x1E, 0xDB, 0xE2, 0xB1, 0xBA, 0x25, 0xB2, 0x77, 0x0A
	.byte 0x7A, 0x6D, 0x85, 0xA3, 0x9A, 0x2D, 0x91, 0x1B, 0xA7, 0x78, 0x05, 0xB2, 0x58, 0x4A, 0x24, 0x52
	.byte 0x18, 0x3A, 0xB8, 0xBB, 0x45, 0x4D, 0x1A, 0x02, 0x47, 0x4D, 0x1A, 0x02, 0x18, 0x57, 0x1A, 0x02
	.byte 0x54, 0x70, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x3A, 0x1A, 0x6A, 0x00, 0x00, 0x8F, 0xE3
	.byte 0x04, 0x00, 0x90, 0xE2, 0x05, 0x00, 0x00, 0x1A, 0x34, 0x58, 0x1A, 0x02, 0xD8, 0x6F, 0x1A, 0x02
	.byte 0xE0, 0x58, 0x1A, 0x02, 0xD8, 0x6F, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x40, 0x2D, 0xE9, 0x00, 0x10, 0xA0, 0xE3, 0x0C, 0x20, 0x40, 0xE2, 0xA4, 0xE0, 0x9F, 0xE5
	.byte 0xA4, 0xC0, 0x9F, 0xE5, 0x08, 0x10, 0x82, 0xE5, 0x04, 0x10, 0x82, 0xE5, 0x0C, 0x10, 0x00, 0xE5
	.byte 0x01, 0x20, 0xA0, 0xE1, 0x04, 0x10, 0x90, 0xE5, 0x00, 0x30, 0x90, 0xE5, 0x0C, 0x10, 0x41, 0xE0
	.byte 0x22, 0x1C, 0x41, 0xE2, 0x22, 0x4C, 0x43, 0xE2, 0x21, 0x11, 0xA0, 0xE1, 0x0E, 0x60, 0xA0, 0xE1
	.byte 0x01, 0x51, 0x84, 0xE0, 0x04, 0x00, 0x00, 0xEA, 0x00, 0x10, 0x94, 0xE5, 0x06, 0x30, 0x21, 0xE0
	.byte 0x23, 0x14, 0x43, 0xE0, 0x04, 0x30, 0x84, 0xE4, 0x01, 0x60, 0x26, 0xE0, 0x05, 0x00, 0x54, 0xE1
	.byte 0xF8, 0xFF, 0xFF, 0x3A, 0x04, 0x20, 0x80, 0xE5, 0x00, 0x20, 0x80, 0xE5, 0x08, 0x10, 0xB0, 0xE5
	.byte 0x00, 0x00, 0x51, 0xE3, 0xEA, 0xFF, 0xFF, 0x1A, 0x00, 0xC0, 0xA0, 0xE3, 0x00, 0x10, 0xA0, 0xE3
	.byte 0x00, 0x00, 0xA0, 0xE3, 0x00, 0x20, 0x81, 0xE1, 0x9A, 0xCF, 0x07, 0xEE, 0x5E, 0x2F, 0x07, 0xEE
	.byte 0x20, 0x00, 0x80, 0xE2, 0x01, 0x0B, 0x50, 0xE3, 0xF9, 0xFF, 0xFF, 0xBA, 0x01, 0x11, 0x81, 0xE2
	.byte 0x00, 0x00, 0x51, 0xE3, 0xF5, 0xFF, 0xFF, 0x1A, 0x00, 0x00, 0xA0, 0xE3, 0x15, 0x0F, 0x07, 0xEE
	.byte 0x9A, 0xCF, 0x07, 0xEE, 0x70, 0x80, 0xBD, 0xE8, 0xBB, 0x1A, 0x47, 0x0A, 0x44, 0x4D, 0x1A, 0x02
	.byte 0xCB, 0x5A, 0x6A, 0xE3, 0x9B, 0xD9, 0x4E, 0x00, 0x67, 0xCB, 0xF7, 0xE6, 0x0B, 0xEA, 0x4E, 0x02
	.byte 0x49, 0x3A, 0xCB, 0xE2, 0xBB, 0xA9, 0x51, 0x01, 0x6E, 0x62, 0xD4, 0xE3, 0xAC, 0x8D, 0x89, 0x02
	.byte 0x5C, 0x0D, 0x08, 0xDC, 0x98, 0x02, 0xB6, 0x3C, 0x80, 0x6D, 0x35, 0xD8, 0xC3, 0xAE, 0x3E, 0x39
	.byte 0x23, 0x25, 0xA4, 0xE7, 0x8A, 0xDF, 0xA1, 0x06, 0x2A, 0x6B, 0x4F, 0xD8, 0x12, 0xCE, 0xCC, 0x38
	.byte 0x30, 0xFE, 0xF1, 0xD9, 0x80, 0x8E, 0x10, 0x07, 0x74, 0xE8, 0x2D, 0xE6, 0x76, 0xF8, 0x09, 0x3B
	.byte 0x82, 0x93, 0xA2, 0xDD, 0x62, 0x21, 0x05, 0x3E, 0x66, 0x42, 0x82, 0xDC, 0x92, 0x1D, 0x3C, 0x3C
	.byte 0x50, 0x8E, 0x6E, 0xDF, 0x20, 0x5D, 0xC5, 0x39, 0x88, 0xBF, 0x62, 0xDD, 0x34, 0xCD, 0xC5, 0x39
	.byte 0x28, 0x80, 0xCF, 0xD9, 0x29, 0x70, 0x0E, 0x3B, 0x69, 0xBF, 0xB3, 0xD9, 0x99, 0xC0, 0x0F, 0x3B
	.byte 0x99, 0x80, 0x92, 0xDB, 0xE3, 0xF1, 0x8B, 0x34, 0xEC, 0xD6, 0x92, 0xD9, 0xBD, 0xD1, 0x0C, 0x38
	.byte 0xBC, 0x5A, 0x41, 0xD8, 0xB2, 0x14, 0x82, 0x63, 0xB0, 0x05, 0xB8, 0x81, 0x41, 0x9B, 0xF6, 0x61
	.byte 0xB4, 0xCB, 0x35, 0x7A, 0xB7, 0xCB, 0x8E, 0x99, 0xA2, 0xA4, 0x95, 0x76, 0x2B, 0x6C, 0x8C, 0x9B
	.byte 0x7E, 0x64, 0x32, 0x79, 0x6E, 0xD4, 0xA1, 0x9A, 0x4E, 0xC6, 0x3A, 0x71, 0x44, 0x4D, 0x1A, 0x02
	.byte 0xAC, 0x4C, 0x1A, 0x02, 0x4B, 0x5B, 0x6A, 0xE3, 0x04, 0xDE, 0x4E, 0x00, 0x54, 0xDC, 0xC8, 0xE2
	.byte 0x24, 0x23, 0x49, 0x06, 0x25, 0x02, 0xCF, 0xE6, 0xE5, 0x1D, 0x41, 0x02, 0x1D, 0x72, 0xE5, 0xE6
	.byte 0x99, 0x03, 0x63, 0x06, 0x4C, 0x00, 0xDD, 0xE6, 0xC2, 0x97, 0x63, 0x06, 0x30, 0x24, 0xF5, 0xE5
	.byte 0x21, 0xC4, 0x78, 0x07, 0x9C, 0x8F, 0xC6, 0xE7, 0xF8, 0x18, 0x9A, 0x06, 0x2D, 0xB0, 0x3C, 0xD8
	.byte 0xBC, 0x00, 0x98, 0x38, 0x61, 0x85, 0x34, 0xD8, 0x9D, 0x14, 0x35, 0x39, 0xBE, 0x28, 0x70, 0xE6
	.byte 0x1E, 0x12, 0x9D, 0x3C, 0xB9, 0xD0, 0x94, 0xDD, 0x2B, 0x8C, 0xD7, 0x02, 0xA9, 0xCC, 0xF6, 0xDF
	.byte 0x8D, 0x0B, 0x64, 0x3E, 0x8C, 0x58, 0xE3, 0xDC, 0x4E, 0xCB, 0xB1, 0x3F, 0x3E, 0x08, 0x1A, 0xD9
	.byte 0xA6, 0xFA, 0xBD, 0x3D, 0x0A, 0xA8, 0x1A, 0xD9, 0x16, 0xE5, 0x10, 0x39, 0x17, 0x15, 0xD1, 0xDB
	.byte 0x57, 0xDA, 0x6C, 0x39, 0xA7, 0xA5, 0xD0, 0xDB, 0xA7, 0xE5, 0x4D, 0x3B, 0xDD, 0x94, 0x54, 0xD4
	.byte 0xD2, 0xB3, 0x4D, 0x39, 0x83, 0xB4, 0xD3, 0xD8, 0x82, 0x3F, 0x9E, 0x38, 0x8C, 0x71, 0x5D, 0x83
	.byte 0x8E, 0x60, 0x67, 0x61, 0x7F, 0xFE, 0x29, 0x81, 0x8A, 0xAE, 0xEA, 0x9A, 0x89, 0xAE, 0x51, 0x79
	.byte 0x9C, 0xC1, 0x4A, 0x96, 0x15, 0x09, 0x53, 0x7B, 0x58, 0x11, 0xD2, 0x9D, 0x54, 0x70, 0x6B, 0x79
	.byte 0x76, 0x0D, 0xCC, 0x9A, 0x52, 0x8A, 0xD7, 0x79, 0x52, 0x76, 0x71, 0xA6, 0x52, 0x09, 0xD5, 0x79
	.byte 0x42, 0xA2, 0x79, 0xA4, 0xE2, 0xB1, 0xE2, 0x4F, 0xB0, 0x4C, 0x1A, 0x02, 0x44, 0x4D, 0x1A, 0x02
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xB4, 0x1A, 0x6A, 0xE3, 0xA4, 0x69, 0x88, 0x07, 0xC8, 0x7A, 0x03, 0xE7
	.byte 0xFC, 0xE5, 0x82, 0x03, 0x3C, 0xE5, 0x2D, 0xE7, 0x1C, 0x90, 0x9E, 0x03, 0x5B, 0x73, 0x2F, 0xEB
	.byte 0x79, 0xD9, 0x49, 0x08, 0x31, 0x95, 0x40, 0xEA, 0x30, 0x65, 0x81, 0x0A, 0x7F, 0xBA, 0x23, 0xE3
	.byte 0x43, 0x06, 0x65, 0x0D, 0x76, 0xF6, 0x9B, 0xE9, 0x26, 0x16, 0x93, 0x01, 0x26, 0x05, 0x61, 0xE5
	.byte 0x66, 0xA6, 0xEA, 0x05, 0x84, 0xB5, 0xB8, 0xE6, 0xF7, 0x06, 0x04, 0x0C, 0xCB, 0x9F, 0x01, 0xEC
	.byte 0xCE, 0xAF, 0xEA, 0x08, 0xCA, 0xD9, 0x64, 0xE8, 0xDA, 0xB9, 0xC7, 0x01, 0xDA, 0x1A, 0x34, 0xEB
	.byte 0xFA, 0x6F, 0x91, 0x0F, 0xDA, 0x5A, 0x24, 0xEB, 0xA4, 0x00, 0x24, 0x0B, 0xA0, 0x4C, 0x1A, 0x02
	.byte 0x9C, 0x4C, 0x1A, 0x02, 0x00, 0x00, 0x8F, 0xE3, 0x04, 0x00, 0x90, 0xE2, 0x47, 0xFF, 0xFF, 0x1A
	.byte 0x34, 0x5B, 0x1A, 0x02, 0x18, 0x70, 0x1A, 0x02, 0x70, 0x5A, 0x1A, 0x02, 0x00, 0x70, 0x1A, 0x02
	.byte 0x14, 0x5C, 0x1A, 0x02, 0xAC, 0x6F, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x59, 0xBD, 0x1D, 0xE9, 0x96, 0xA2, 0x8A, 0xCB, 0xDD, 0x15, 0xB6, 0xAD, 0xB8, 0xAC, 0x07, 0x8E
	.byte 0xA8, 0x08, 0x00, 0x78, 0xFE, 0x45, 0x6C, 0x5D, 0xD9, 0xE3, 0xB9, 0x40, 0x5E, 0x9C, 0x8B, 0x27
	.byte 0xD8, 0x7B, 0x89, 0x0E, 0x23, 0x09, 0xBE, 0xF0, 0xB9, 0x1F, 0xF1, 0xD1, 0x29, 0x08, 0xA0, 0xEC
	.byte 0xF1, 0xA2, 0x45, 0xCE, 0xE0, 0x2A, 0xA3, 0xB1, 0xD7, 0xD7, 0x93, 0x6C, 0x3A, 0xA6, 0x12, 0x4E
	.byte 0x9F, 0x08, 0x00, 0x38, 0x47, 0x66, 0x86, 0x1B, 0x88, 0x00, 0xCF, 0x20, 0x20, 0xB3, 0x3D, 0x23
	.byte 0x5A, 0x1E, 0xE8, 0x28, 0x73, 0x19, 0xB9, 0x2B, 0x16, 0xF4, 0x14, 0x2C, 0xA3, 0xD2, 0xFD, 0x2F
	.byte 0xCF, 0xF8, 0x11, 0x4A, 0x2E, 0xE4, 0xAF, 0x35, 0x00, 0x56, 0x3F, 0x18, 0x8B, 0xC6, 0xAA, 0xFA
	.byte 0x3E, 0xBE, 0x46, 0xE1, 0x6A, 0x85, 0xF1, 0xC4, 0x7F, 0xBD, 0xFB, 0xD7, 0xCD, 0xB1, 0xCE, 0xF2
	.byte 0x17, 0x00, 0xE3, 0xD4, 0x97, 0xBA, 0x02, 0xB7, 0xCE, 0x56, 0x72, 0x72, 0x9B, 0x23, 0xE0, 0x55
	.byte 0xB9, 0xD3, 0xFD, 0x36, 0x03, 0x06, 0x00, 0x20, 0xBD, 0x83, 0xE9, 0x03, 0x93, 0xD6, 0x67, 0xE6
	.byte 0x8B, 0x25, 0xB5, 0xC6, 0x8D, 0xE7, 0x03, 0xA8, 0xFF, 0x07, 0x10, 0x90, 0xA4, 0x4C, 0x1A, 0x02
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x3D, 0xC3, 0x07, 0x02, 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x51, 0xC3, 0x07, 0x02, 0xBB, 0x1A, 0x16, 0xE9, 0xBA, 0xA5, 0x6B, 0x0A
	.byte 0x4A, 0xBB, 0x94, 0xEA, 0x17, 0xA4, 0x88, 0xE1, 0x6F, 0x84, 0xE1, 0x07, 0x4E, 0x15, 0x17, 0xE2
	.byte 0x9D, 0x4A, 0x00, 0x05, 0x4C, 0x79, 0x73, 0xD9, 0xEF, 0x54, 0xEF, 0xC9, 0x0C, 0x4B, 0xE2, 0xC9
	.byte 0x4D, 0x16, 0xFE, 0x2A, 0xE1, 0x32, 0x7A, 0x3A, 0x0D, 0x2D, 0x77, 0x3A, 0x4C, 0x70, 0x6B, 0xD9
	.byte 0xE0, 0x54, 0xEF, 0xC9, 0x0C, 0x4B, 0xE2, 0xC9, 0x4D, 0x16, 0xFE, 0x2A, 0xE1, 0x32, 0x7A, 0x3A
	.byte 0x0D, 0x2D, 0x77, 0x3A, 0x4C, 0x70, 0x6B, 0xD9, 0xE0, 0x54, 0xEF, 0xC9, 0x0C, 0x4B, 0xE2, 0xC9
	.byte 0x4D, 0x16, 0xFE, 0x2A, 0xE1, 0x32, 0x7A, 0x3A, 0x0D, 0x2D, 0x77, 0x3A, 0x4C, 0x70, 0x6B, 0xD9
	.byte 0xE0, 0x54, 0xEF, 0xC9, 0x0C, 0x4B, 0xE2, 0xC9, 0x4D, 0x16, 0xFE, 0x2A, 0xE1, 0x32, 0x7A, 0x3A
	.byte 0x0D, 0x2D, 0x77, 0x3A, 0x4D, 0x70, 0x26, 0xD9, 0x4C, 0xCF, 0x5B, 0x3A, 0x5E, 0xEE, 0xBB, 0x23
	.byte 0x53, 0xEE, 0x40, 0xC2, 0x4D, 0x31, 0x71, 0x22, 0x20, 0x83, 0xB8, 0xED, 0xE8, 0x54, 0xCC, 0xE9
	.byte 0x7C, 0x65, 0x11, 0xCB, 0x32, 0xDC, 0xC1, 0xAE, 0xB2, 0x41, 0xE0, 0x93, 0xE7, 0xB3, 0xD1, 0x76
	.byte 0xFA, 0x61, 0xFB, 0x60, 0xEF, 0x77, 0xAD, 0x41, 0x97, 0x38, 0x37, 0x22, 0xCC, 0xB5, 0x69, 0x07
	.byte 0x22, 0x0A, 0x00, 0xF1, 0x02, 0xBD, 0xDE, 0xD3, 0x00, 0xC0, 0x41, 0xB6, 0x22, 0x0A, 0x00, 0xA0
	.byte 0xA0, 0x6B, 0xE3, 0x85, 0xC2, 0xA5, 0x32, 0x68, 0x90, 0x8D, 0xC4, 0x49, 0x67, 0xD1, 0xF2, 0x2E
	.byte 0x04, 0xEA, 0x1C, 0x0F, 0x43, 0xB6, 0xD9, 0xF0, 0xA5, 0xFC, 0x46, 0xD2, 0x26, 0x7A, 0xCA, 0xB4
	.byte 0x5A, 0x60, 0x80, 0x94, 0xC6, 0x6A, 0x3F, 0x75, 0x22, 0x2F, 0x9E, 0x5A, 0x44, 0x4F, 0xFF, 0x3C
	.byte 0xED, 0x2B, 0xBC, 0x1F, 0xB3, 0x47, 0xDE, 0x01, 0x8B, 0xBF, 0x85, 0xE3, 0x7E, 0x06, 0x84, 0xC4
	.byte 0xCF, 0x83, 0x2C, 0xA6, 0xC9, 0x78, 0x82, 0x87, 0x40, 0x15, 0xA9, 0x6C, 0xE2, 0x01, 0xC8, 0x4C
	.byte 0x90, 0xA4, 0x62, 0x2E, 0xE2, 0x6D, 0x85, 0x11, 0x24, 0xD9, 0x23, 0xF1, 0xD9, 0x4D, 0x63, 0xD4
	.byte 0xF6, 0x80, 0x83, 0xB6, 0x51, 0x44, 0x7C, 0x9B, 0x62, 0xC9, 0x3A, 0x7E, 0xE4, 0xEF, 0x3E, 0x99
	.byte 0x60, 0xDE, 0x2F, 0x7C, 0xDA, 0xA2, 0x0C, 0x61, 0xB7, 0x80, 0xC2, 0x44, 0x49, 0x5B, 0x69, 0x26
	.byte 0x67, 0x6F, 0x02, 0x08, 0xCC, 0x5C, 0xF4, 0xED, 0x21, 0x41, 0x16, 0xD4, 0x91, 0xFF, 0x15, 0xB6
	.byte 0x99, 0x91, 0x27, 0x99, 0x49, 0x02, 0xCC, 0x54, 0xDD, 0x06, 0x11, 0x37, 0x29, 0x6B, 0x4F, 0x17
	.byte 0x11, 0xAA, 0x1F, 0xC2, 0x89, 0xBF, 0x09, 0xA4, 0x64, 0xFE, 0x93, 0x87, 0x74, 0xFD, 0x92, 0x6A
	.byte 0x4A, 0x18, 0x89, 0x4D, 0xA7, 0xA2, 0xED, 0x32, 0xEA, 0x72, 0x5D, 0x13, 0x5E, 0xF9, 0x22, 0xF8
	.byte 0x43, 0x8C, 0xBC, 0xD9, 0x72, 0xA1, 0xF8, 0xBE, 0x41, 0x63, 0xC9, 0x9F, 0x0F, 0x71, 0x84, 0x84
	.byte 0x31, 0xCB, 0x6C, 0x69, 0x3B, 0x48, 0xF0, 0x4E, 0x75, 0x7A, 0x83, 0x33, 0x9F, 0x89, 0x72, 0x18
	.byte 0xDE, 0xAC, 0x68, 0xFD, 0x24, 0x2C, 0xDF, 0xE2, 0xCF, 0x12, 0x20, 0xC5, 0xFC, 0xF9, 0x31, 0xD0
	.byte 0x1E, 0xDB, 0x8E, 0xB3, 0x62, 0xD2, 0x5D, 0x98, 0xB4, 0x3B, 0x4F, 0x53, 0xCF, 0x99, 0xC9, 0x36
	.byte 0x5C, 0x2E, 0x78, 0xED, 0xFE, 0x35, 0x10, 0xCF, 0x81, 0xB1, 0xB9, 0xB4, 0x83, 0x7A, 0x61, 0x97
	.byte 0x5C, 0xF2, 0xAE, 0xB2, 0x10, 0x7D, 0x4C, 0x95, 0x47, 0x11, 0xF2, 0x77, 0xCB, 0xD7, 0x07, 0x32
	.byte 0x5B, 0x0D, 0x6D, 0x15, 0xAD, 0xB8, 0xE1, 0xF7, 0x4D, 0x4F, 0xB3, 0xDE, 0xD1, 0x99, 0x05, 0xC0
	.byte 0x7E, 0x65, 0xFB, 0xA2, 0x89, 0x80, 0x66, 0x87, 0x03, 0x61, 0xF4, 0x6A, 0xB7, 0xD3, 0xFA, 0x25
	.byte 0xF3, 0x88, 0xE0, 0x07, 0xB9, 0x08, 0xC2, 0xEA, 0x8D, 0x4A, 0xD2, 0xCC, 0x5B, 0x5F, 0xC5, 0xAD
	.byte 0x68, 0x56, 0x4D, 0x8E, 0xDF, 0x7D, 0x9F, 0x6F, 0xF8, 0x07, 0x00, 0x59, 0x60, 0x83, 0x9D, 0x3C
	.byte 0x79, 0x64, 0xC8, 0x21, 0x2B, 0x09, 0xFA, 0x03, 0xD7, 0x34, 0x4D, 0xE8, 0x12, 0x87, 0x4C, 0xCF
	.byte 0xDA, 0xA9, 0xEF, 0xB4, 0x6E, 0x94, 0xCB, 0x95, 0x7F, 0x23, 0xC2, 0x77, 0xAB, 0x9B, 0xCB, 0x57
	.byte 0xC5, 0x29, 0xC2, 0x38, 0x52, 0xA0, 0x0F, 0x1D, 0xC2, 0x09, 0x00, 0x07, 0x2A, 0x93, 0xC7, 0xE8
	.byte 0x29, 0x5B, 0xBC, 0xC9, 0xE9, 0x07, 0x00, 0xB3, 0x44, 0xF2, 0x2E, 0x93, 0x5E, 0x42, 0x2E, 0x76
	.byte 0xAF, 0xC8, 0x53, 0x5B, 0x40, 0xD0, 0xC0, 0x0D, 0xAF, 0x7F, 0xEE, 0xC8, 0x50, 0x82, 0xB7, 0xCD
	.byte 0x77, 0x22, 0x6E, 0xD0, 0x80, 0x08, 0x3E, 0xDB, 0xD6, 0xA8, 0x99, 0x9C, 0xA8, 0x86, 0xA2, 0x5E
	.byte 0xF9, 0x72, 0xA7, 0x40, 0x2F, 0x99, 0x45, 0x23, 0x2A, 0x00, 0x5C, 0xDE, 0x45, 0x6D, 0x99, 0xC1
	.byte 0x2E, 0x64, 0x0D, 0xA3, 0xB4, 0xFC, 0x7A, 0x56, 0xAF, 0xCA, 0x6D, 0x01, 0xBD, 0x33, 0x2F, 0xE6
	.byte 0x31, 0x5B, 0x1C, 0xC9, 0xE9, 0xB8, 0xF2, 0xAA, 0xC2, 0xCF, 0x47, 0x8B, 0xFD, 0x33, 0x2F, 0x6D
	.byte 0x35, 0x8B, 0x53, 0x4E, 0x21, 0xA4, 0x86, 0x2E, 0xE4, 0x39, 0x21, 0x0F, 0x1E, 0x69, 0xBF, 0xF1
	.byte 0xB4, 0x13, 0xB4, 0xD6, 0x5E, 0x72, 0x62, 0xB9, 0xE5, 0x8E, 0x9C, 0x9B, 0xE1, 0x1A, 0x7B, 0x7D
	.byte 0x0D, 0x16, 0x87, 0x5F, 0x67, 0xDE, 0x98, 0x40, 0x0D, 0xDF, 0xC6, 0x22, 0x5F, 0x24, 0x6A, 0x03
	.byte 0x7A, 0x48, 0x9B, 0xE8, 0x1B, 0xC3, 0x99, 0xC8, 0x9C, 0x61, 0xBC, 0xAB, 0x4A, 0x33, 0x78, 0x8E
	.byte 0x06, 0x88, 0xF2, 0x70, 0x19, 0x7E, 0xE4, 0x55, 0xE1, 0xB5, 0x3F, 0x38, 0xBA, 0x3A, 0x5E, 0x53
	.byte 0xBD, 0x75, 0x4D, 0x36, 0x65, 0xC0, 0x3B, 0x1B, 0x79, 0xBA, 0x8F, 0xFE, 0xF6, 0x43, 0x7B, 0xE0
	.byte 0xE3, 0x57, 0x38, 0xC2, 0xA5, 0x68, 0x5F, 0xA7, 0xB1, 0xCC, 0x86, 0x8E, 0x17, 0x9A, 0x3C, 0x70
	.byte 0x70, 0xB4, 0xF9, 0x53, 0x0C, 0x9A, 0x8F, 0x0E, 0x25, 0x21, 0x80, 0xF1, 0x97, 0x37, 0x09, 0xD1
	.byte 0x5C, 0x2E, 0x25, 0xB4, 0xB0, 0x68, 0xFF, 0x5F, 0x6D, 0x62, 0xD4, 0x41, 0xD0, 0xB3, 0x61, 0x24
	.byte 0xEC, 0x7F, 0xE4, 0x07, 0xF2, 0xBD, 0x1D, 0xEC, 0xF5, 0xBC, 0x02, 0xCD, 0xAC, 0x27, 0xD1, 0xB2
	.byte 0x3A, 0x9E, 0xAF, 0x93, 0x72, 0x14, 0x88, 0x78, 0x24, 0xB4, 0x40, 0x59, 0xFC, 0x62, 0x4C, 0x3E
	.byte 0x7B, 0x04, 0x5F, 0x23, 0x7D, 0x57, 0x10, 0x08, 0x36, 0x86, 0xEB, 0xED, 0x73, 0x43, 0xE3, 0xD2
	.byte 0x86, 0xB3, 0xBF, 0xB7, 0xF6, 0x0D, 0x7F, 0x9C, 0xC6, 0x6A, 0xA8, 0x7F, 0xCC, 0xE8, 0x4C, 0x8A
	.byte 0xDF, 0x4C, 0x00, 0x6D, 0xAB, 0x77, 0xEE, 0x52, 0x12, 0x60, 0x50, 0x0D, 0x44, 0xDA, 0x47, 0xF0
	.byte 0xA3, 0x30, 0x1B, 0xA7, 0x2E, 0x29, 0x5B, 0x89, 0x5B, 0x9B, 0x9B, 0x6E, 0x94, 0xBA, 0x49, 0x51
	.byte 0x3F, 0xF8, 0x47, 0x6C, 0x43, 0x28, 0xB1, 0x4F, 0x24, 0x69, 0xF6, 0x31, 0xF3, 0x76, 0x87, 0xEC
	.byte 0x39, 0x9F, 0x41, 0xCF, 0x58, 0xF3, 0xFA, 0xB1, 0x8D, 0xC2, 0x97, 0x98, 0x6C, 0x1A, 0xAF, 0x7A
	.byte 0x09, 0xE1, 0x62, 0x5C, 0xDB, 0x45, 0xCC, 0x41, 0x73, 0xB4, 0x0D, 0x24, 0x7A, 0x7C, 0x4E, 0xDF
	.byte 0x0A, 0x85, 0x09, 0xC1, 0xE7, 0xFE, 0x8A, 0xA4, 0x1F, 0xA1, 0x82, 0x86, 0x44, 0x58, 0x9C, 0x67
	.byte 0xB2, 0x1A, 0xF8, 0x48, 0x0E, 0xC1, 0xA8, 0x29, 0x84, 0x07, 0x00, 0x13, 0x40, 0x9B, 0xF6, 0xF6
	.byte 0xA4, 0x85, 0x2E, 0xD8, 0x04, 0x9E, 0x35, 0xBD, 0x45, 0x76, 0xBD, 0x9D, 0x32, 0xCF, 0xAC, 0x82
	.byte 0x75, 0xCA, 0x56, 0x67, 0x19, 0x29, 0x9C, 0x48, 0xB9, 0xAB, 0xE2, 0x29, 0x51, 0x22, 0x13, 0x0E
	.byte 0x81, 0x48, 0x71, 0xF0, 0xF2, 0x77, 0x29, 0xD1, 0x51, 0x09, 0x00, 0xBB, 0x7E, 0xFC, 0x8B, 0x9C
	.byte 0x57, 0xE3, 0xBD, 0x7D, 0x75, 0x07, 0x00, 0x67, 0x90, 0xDD, 0x4C, 0x47, 0xC1, 0x4C, 0x4C, 0x29
	.byte 0x5A, 0xFC, 0x23, 0x0E, 0x68, 0x04, 0x70, 0xF1, 0x3C, 0x4B, 0x19, 0xD3, 0x9B, 0x87, 0x42, 0x8E
	.byte 0xB7, 0xEA, 0xF2, 0x71, 0x54, 0x60, 0xD4, 0x53, 0x51, 0x84, 0x84, 0x06, 0xEB, 0x46, 0xE1, 0xB1
	.byte 0x27, 0x77, 0x0F, 0x96, 0xDF, 0x83, 0xF3, 0x79, 0x93, 0x98, 0x24, 0x5A, 0xE4, 0x2C, 0x41, 0x3B
	.byte 0xE3, 0xBE, 0xD9, 0x1D, 0x03, 0x9E, 0xAA, 0xFE, 0xB0, 0x54, 0x3B, 0xDE, 0x07, 0x3B, 0x4B, 0xBF
	.byte 0x47, 0xBB, 0x55, 0xA1, 0xA5, 0x82, 0x93, 0x86, 0x36, 0x19, 0x3E, 0x69, 0xA3, 0x9C, 0x62, 0x4B
	.byte 0x2B, 0x12, 0x52, 0x2D, 0xFF, 0xE3, 0xE7, 0x0F, 0x13, 0x56, 0x87, 0xF0, 0xB0, 0xA2, 0xBD, 0xD2
	.byte 0x08, 0xC5, 0xC2, 0xB3, 0xAB, 0x8A, 0xCC, 0x98, 0x34, 0x4F, 0x35, 0x78, 0xAE, 0x8B, 0x6B, 0x5B
	.byte 0x0C, 0x3F, 0x0E, 0x3E, 0xC6, 0x3E, 0xD9, 0x20, 0x59, 0x8A, 0x2A, 0x05, 0x92, 0x1F, 0x4E, 0xE8
	.byte 0xD4, 0x50, 0xB9, 0x03, 0x00, 0x22, 0x62, 0xE6, 0xA3, 0x88, 0xC9, 0xCB, 0x41, 0xD2, 0xE5, 0xAE
	.byte 0xCA, 0xC6, 0xF4, 0x90, 0xD7, 0x19, 0x38, 0x72, 0x47, 0x24, 0x8C, 0x57, 0x96, 0x08, 0xD7, 0x3E
	.byte 0x06, 0xE6, 0x8D, 0x20, 0xFB, 0x74, 0xA2, 0x03, 0x17, 0x9A, 0xC9, 0xBE, 0xA2, 0xD4, 0x5B, 0xA1
	.byte 0xF0, 0xBC, 0x52, 0x81, 0x5F, 0x56, 0x49, 0x64, 0xEB, 0xB1, 0xCE, 0x0F, 0x8D, 0x0D, 0x33, 0xF1
	.byte 0x4F, 0x6D, 0x89, 0xD4, 0xDB, 0xEC, 0x56, 0xB7, 0x68, 0xA9, 0xFB, 0x9A, 0x1E, 0x0D, 0x24, 0x7F
	.byte 0xA7, 0x92, 0x29, 0x60, 0x37, 0x0E, 0x2D, 0x45, 0x99, 0x2D, 0xD9, 0x26, 0x78, 0xF7, 0x6C, 0x0B
	.byte 0xD0, 0x0A, 0x36, 0xEC, 0x17, 0x7E, 0x85, 0xD1, 0x41, 0x97, 0x6C, 0xB6, 0xDD, 0xE7, 0x2B, 0x9B
	.byte 0x6D, 0x2C, 0x1C, 0x80, 0x03, 0x38, 0xEC, 0x65, 0x81, 0x19, 0x1E, 0x4A, 0xF8, 0x16, 0x8C, 0x2F
	.byte 0xC7, 0x27, 0xBF, 0x12, 0x4E, 0x04, 0xFA, 0x1D, 0x8C, 0xA8, 0xD4, 0x00, 0xA8, 0xB0, 0xED, 0xE5
	.byte 0xF9, 0x88, 0x4F, 0xA0, 0x48, 0xBD, 0x16, 0x83, 0x29, 0xE3, 0x5E, 0x3A, 0x87, 0x2C, 0xB2, 0x1C
	.byte 0x0B, 0x17, 0x70, 0x01, 0xB2, 0x03, 0x54, 0xE4, 0x91, 0x23, 0xB0, 0xFF, 0x24, 0xB0, 0xB6, 0xE2
	.byte 0xB7, 0x1F, 0x0F, 0xC4, 0x5A, 0xE8, 0xFC, 0x7F, 0x7F, 0x50, 0x6A, 0x62, 0x06, 0xD9, 0x86, 0x44
	.byte 0x31, 0xA9, 0x28, 0x2B, 0x70, 0xF2, 0x87, 0x0D, 0x25, 0xEB, 0x18, 0xEF, 0x09, 0x61, 0xB8, 0xD4
	.byte 0x3E, 0xB0, 0x0C, 0xB7, 0x08, 0x5D, 0x66, 0x72, 0x85, 0xEF, 0x42, 0x54, 0xFC, 0xAC, 0xB8, 0x37
	.byte 0xED, 0x9D, 0x01, 0x19, 0xE8, 0x02, 0x9F, 0xFA, 0x15, 0x51, 0x39, 0xDB, 0x9D, 0xED, 0xE6, 0xBC
	.byte 0x16, 0x07, 0x00, 0xA6, 0x5A, 0xE1, 0xCE, 0x89, 0xDB, 0x17, 0x1F, 0x6B, 0x58, 0x3D, 0xB6, 0x50
	.byte 0xB6, 0xB1, 0x4C, 0x30, 0x8D, 0xAE, 0x13, 0x15, 0x13, 0xC4, 0x71, 0xFA, 0xA9, 0x24, 0x79, 0xDB
	.byte 0xD5, 0x8A, 0xEB, 0xBC, 0x8F, 0x07, 0xC3, 0xA1, 0x91, 0x0C, 0xF2, 0x83, 0xC6, 0x5E, 0x51, 0x64
	.byte 0xE6, 0x08, 0x00, 0x4E, 0xBF, 0x9C, 0x1F, 0x2F, 0xCF, 0x61, 0x6F, 0x10, 0x07, 0x07, 0x00, 0xFA
	.byte 0xCF, 0x9B, 0x8C, 0xDA, 0x73, 0xC6, 0x7E, 0xBC, 0x14, 0x1C, 0xFD, 0xA1, 0x5B, 0x49, 0x6D, 0x84
	.byte 0xB4, 0xD6, 0x3B, 0x66, 0xB5, 0xB9, 0x80, 0x21, 0xAC, 0xEC, 0xFD, 0x06, 0xFF, 0x81, 0x38, 0xE8
	.byte 0xDD, 0x08, 0x00, 0xD2, 0x12, 0xBC, 0xE0, 0xB7, 0xB6, 0x60, 0xFB, 0xA1, 0x3E, 0xC2, 0x5F, 0x84
	.byte 0xC9, 0x41, 0x38, 0x6B, 0x5A, 0xF0, 0x16, 0x4D, 0xF2, 0x88, 0x98, 0x30, 0xF7, 0x03, 0xC4, 0xEB
	.byte 0x41, 0xBE, 0xAE, 0xD0, 0x62, 0xB0, 0x98, 0xB3, 0x51, 0x00, 0xCC, 0x95, 0xF2, 0x8D, 0xEC, 0x7C
	.byte 0x9D, 0x74, 0x3E, 0x5D, 0x20, 0x5C, 0x92, 0x68, 0x22, 0xBA, 0x65, 0x4B, 0x3A, 0xC6, 0xF3, 0x2C
	.byte 0x64, 0x04, 0x00, 0x16, 0x7B, 0x5A, 0xFB, 0xF8, 0xD6, 0x82, 0x20, 0xDD, 0xA6, 0x06, 0xA0, 0xC5
	.byte 0xAC, 0xB9, 0x80, 0xA7, 0xB8, 0x19, 0x0B, 0x8A, 0x15, 0x5E, 0x6A, 0x45, 0x6A, 0x0A, 0x5B, 0x2A
	.byte 0x24, 0x86, 0x20, 0x0B, 0x85, 0x6B, 0x43, 0x10, 0x02, 0x4B, 0x48, 0x11, 0xB5, 0x19, 0x9C, 0x2C
	.byte 0xB8, 0x89, 0xA9, 0x0F, 0xB1, 0x78, 0xE4, 0xF0, 0x56, 0x04, 0x00, 0xDA, 0x36, 0x2E, 0x5F, 0xBC
	.byte 0x1E, 0x1F, 0x0D, 0xA1, 0xA2, 0x92, 0xBD, 0x89, 0x90, 0x8A, 0xA7, 0x6E, 0xD2, 0xAC, 0x98, 0x53
	.byte 0x83, 0xBC, 0x44, 0x34, 0xA5, 0xA5, 0x77, 0x39, 0x0C, 0x23, 0x7E, 0x3E, 0xAE, 0x21, 0x44, 0x3F
	.byte 0x9D, 0x85, 0xC1, 0x4A, 0xC9, 0x30, 0x9B, 0x2D, 0x8C, 0xB2, 0x03, 0x0E, 0x49, 0x04, 0x00, 0xF8
	.byte 0xBF, 0xC9, 0xE1, 0xDA, 0xB5, 0xA5, 0x18, 0xBF, 0xA1, 0xDD, 0xB2, 0xA7, 0x95, 0xB0, 0x94, 0x8C
	.byte 0x27, 0xA4, 0xA4, 0x71, 0xA5, 0xDE, 0xB9, 0x52, 0x36, 0xA5, 0x02, 0x57, 0x1B, 0x69, 0xCC, 0x5C
	.byte 0xB1, 0x28, 0x15, 0x5D, 0xC5, 0x9F, 0x89, 0x68, 0x6E, 0xC6, 0x4A, 0x4B, 0x17, 0x74, 0x68, 0x2C
	.byte 0x3C, 0x04, 0x00, 0x16, 0x3D, 0xD8, 0x9F, 0xF8, 0xB3, 0x84, 0x94, 0xDD, 0x71, 0x82, 0x38, 0xC5
	.byte 0xCC, 0x6F, 0x74, 0xAA, 0xC0, 0xEC, 0xD3, 0x8F, 0xED, 0xF1, 0x31, 0x70, 0xA9, 0x63, 0x05, 0x75
	.byte 0xCB, 0x1E, 0x19, 0x7A, 0x42, 0xDA, 0x7A, 0x7B, 0x33, 0xCC, 0xEE, 0x7D, 0xB8, 0xC0, 0x95, 0x82
	.byte 0x43, 0xC1, 0xAD, 0x8A, 0xCA, 0xBE, 0x16, 0x6D, 0x9A, 0xFE, 0xDC, 0x4E, 0x2D, 0x04, 0x00, 0x38
	.byte 0x32, 0xF4, 0xCD, 0x1D, 0xFB, 0xC7, 0x3B, 0xFF, 0x34, 0x3D, 0xE0, 0xE7, 0x04, 0x02, 0x00, 0x04
	.byte 0x77, 0xB1, 0x00, 0x00, 0x65, 0xAA, 0x00, 0x00, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0xF1, 0xEE, 0x06, 0x02, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0xD9, 0xEE, 0x06, 0x02
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x25, 0xFD, 0x06, 0x02, 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0x25, 0xFD, 0x06, 0x02, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x25, 0xFD, 0x06, 0x02, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x39, 0xEF, 0x06, 0x02
	.byte 0xB4, 0xDA, 0xC8, 0xEB, 0xF8, 0xEA, 0xF5, 0x0A, 0xB8, 0x49, 0x75, 0x36, 0x74, 0x56, 0xC4, 0x24
	.byte 0x20, 0x65, 0xAE, 0xC1, 0x60, 0x46, 0xC9, 0x22, 0x3F, 0xF5, 0xC2, 0xC8, 0x13, 0x3B, 0x0C, 0x28
	.byte 0x33, 0x6B, 0x31, 0xC9, 0xEF, 0x94, 0xF1, 0x17, 0x86, 0xB6, 0x4E, 0xF7, 0xCF, 0x57, 0xF1, 0x17
	.byte 0xCF, 0x17, 0x7F, 0xF3, 0x0D, 0xF4, 0xE5, 0x13, 0x13, 0x13, 0xAF, 0xF1, 0xF8, 0xBF, 0xDF, 0xE3
	.byte 0x1A, 0x2B, 0xE8, 0xF3, 0x30, 0x38, 0x5B, 0xE3, 0x04, 0x8C, 0x89, 0xF3, 0x36, 0xA3, 0xE8, 0x11
	.byte 0xC2, 0x0D, 0x57, 0xF0, 0x37, 0x72, 0xB5, 0xE9, 0x36, 0x76, 0x0E, 0x0A, 0xC8, 0x0A, 0x92, 0xE8
	.byte 0x2C, 0x88, 0x2E, 0x0A, 0xD2, 0xE0, 0xB2, 0xE8, 0x2B, 0x61, 0x3E, 0x0C, 0x2A, 0x11, 0x14, 0xEF
	.byte 0x2B, 0xF8, 0xA8, 0xFF, 0xC3, 0x76, 0x18, 0x1E, 0xDB, 0xE2, 0xB1, 0xBA, 0x25, 0xB2, 0x77, 0x0A
	.byte 0x7A, 0x6D, 0x85, 0xA3, 0x9A, 0x2D, 0x91, 0x1B, 0xA7, 0x78, 0x05, 0xB2, 0x58, 0x4A, 0x24, 0x52
	.byte 0x18, 0x3A, 0xB8, 0xBB, 0x45, 0x4D, 0x1A, 0x02, 0x47, 0x4D, 0x1A, 0x02, 0x0C, 0x5E, 0x1A, 0x02
	.byte 0xE4, 0x75, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x3A, 0x1A, 0x6A, 0xB4, 0xDA, 0xC8, 0xEB
	.byte 0xF8, 0xEA, 0xF5, 0x0A, 0xB8, 0x49, 0x75, 0x36, 0x74, 0x56, 0xC4, 0x24, 0x20, 0x65, 0xAE, 0xC1
	.byte 0x60, 0x46, 0xC9, 0x22, 0x3F, 0xF5, 0xC2, 0xC8, 0x13, 0x3B, 0x0C, 0x28, 0x33, 0x6B, 0x31, 0xC9
	.byte 0xEF, 0x94, 0xF1, 0x17, 0x86, 0xB6, 0x4E, 0xF7, 0xCF, 0x57, 0xF1, 0x17, 0xCF, 0x17, 0x7F, 0xF3
	.byte 0x0D, 0xF4, 0xE5, 0x13, 0x13, 0x13, 0xAF, 0xF1, 0xF8, 0xBF, 0xDF, 0xE3, 0x1A, 0x2B, 0xE8, 0xF3
	.byte 0x30, 0x38, 0x5B, 0xE3, 0x04, 0x8C, 0x89, 0xF3, 0x36, 0xA3, 0xE8, 0x11, 0xC2, 0x0D, 0x57, 0xF0
	.byte 0x37, 0x72, 0xB5, 0xE9, 0x36, 0x76, 0x0E, 0x0A, 0xC8, 0x0A, 0x92, 0xE8, 0x2C, 0x88, 0x2E, 0x0A
	.byte 0xD2, 0xE0, 0xB2, 0xE8, 0x2B, 0x61, 0x3E, 0x0C, 0x2A, 0x11, 0x14, 0xEF, 0x2B, 0xF8, 0xA8, 0xFF
	.byte 0xC3, 0x76, 0x18, 0x1E, 0xDB, 0xE2, 0xB1, 0xBA, 0x25, 0xB2, 0x77, 0x0A, 0x7A, 0x6D, 0x85, 0xA3
	.byte 0x9A, 0x2D, 0x91, 0x1B, 0xA7, 0x78, 0x05, 0xB2, 0x58, 0x4A, 0x24, 0x52, 0x18, 0x3A, 0xB8, 0xBB
	.byte 0x45, 0x4D, 0x1A, 0x02, 0x47, 0x4D, 0x1A, 0x02, 0xB0, 0x5C, 0x1A, 0x02, 0xF0, 0x6F, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x3A, 0x1A, 0x6A, 0x00, 0x00, 0x8F, 0xE3, 0x04, 0x00, 0x90, 0xE2
	.byte 0xD2, 0xFC, 0xFF, 0x1A, 0x00, 0x65, 0x1A, 0x02, 0xD8, 0x6F, 0x1A, 0x02, 0xAC, 0x65, 0x1A, 0x02
	.byte 0xD8, 0x6F, 0x1A, 0x02, 0x78, 0x5D, 0x1A, 0x02, 0xD4, 0x6F, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9B, 0x16, 0xE7, 0xEB, 0x50, 0x66, 0xF9, 0x08, 0x4E, 0x66, 0xE6, 0xE9
	.byte 0x44, 0x99, 0xA9, 0x09, 0x43, 0x29, 0x95, 0x12, 0xB3, 0x29, 0x72, 0xF3, 0x43, 0xD6, 0x3D, 0x13
	.byte 0x42, 0x66, 0xA1, 0x11, 0x5C, 0xF9, 0xB2, 0x10, 0x5C, 0xC9, 0xA2, 0xF3, 0x5E, 0x26, 0x3E, 0xE1
	.byte 0x5D, 0x46, 0xB2, 0xE2, 0x43, 0xD9, 0xA1, 0x03, 0x42, 0xE9, 0x60, 0xE1, 0x5C, 0x76, 0x53, 0x01
	.byte 0x4B, 0x5B, 0x6A, 0xE3, 0x14, 0x3E, 0xA3, 0x01, 0x6E, 0xC1, 0x1F, 0xE3, 0xAE, 0x61, 0x83, 0x07
	.byte 0x02, 0xCE, 0x06, 0xE3, 0x1E, 0xEF, 0xBF, 0x07, 0xDD, 0x8F, 0x3A, 0xE7, 0x59, 0xE0, 0xA4, 0x03
	.byte 0x81, 0x4F, 0x3E, 0xE7, 0x5D, 0xB0, 0xA4, 0x04, 0xBE, 0x40, 0x39, 0xE5, 0x0D, 0x91, 0xA2, 0x02
	.byte 0xB9, 0x08, 0xD3, 0xE4, 0xB5, 0xF2, 0x74, 0x05, 0xFE, 0x97, 0xAA, 0x00, 0x06, 0xE7, 0x31, 0xE3
	.byte 0x76, 0x87, 0x8D, 0x01, 0x35, 0x18, 0x41, 0xE7, 0xF2, 0x56, 0xF9, 0x06, 0x5E, 0xB9, 0x30, 0xDC
	.byte 0xEA, 0xD0, 0x9E, 0x3D, 0x2B, 0x17, 0x32, 0xE0, 0xFF, 0xCB, 0x94, 0x03, 0xC0, 0xB1, 0xB1, 0xDE
	.byte 0x48, 0x0D, 0x17, 0x3D, 0x84, 0x12, 0xDC, 0xE7, 0xA6, 0xF9, 0xB4, 0x07, 0xAA, 0x64, 0x36, 0x27
	.byte 0x76, 0x8B, 0x2C, 0xC2, 0xCA, 0xB0, 0xF0, 0x26, 0xEB, 0x39, 0x80, 0xC5, 0x8B, 0xAE, 0x5D, 0x9C
	.byte 0x7A, 0x2F, 0xBB, 0x74, 0x00, 0x01, 0x02, 0x03, 0x04, 0x04, 0x04, 0x04, 0xAB, 0x5A, 0x6A, 0xE3
	.byte 0x6F, 0x18, 0x93, 0x07, 0x9F, 0x57, 0x39, 0xE3, 0x7E, 0xE8, 0x82, 0x00, 0x8C, 0x66, 0x1C, 0xE3
	.byte 0x83, 0xB8, 0x3C, 0x3E, 0xCF, 0x27, 0xA2, 0xDF, 0xEB, 0x58, 0x62, 0x3B, 0xA3, 0x69, 0xDA, 0xDF
	.byte 0x52, 0x16, 0x6C, 0x3E, 0xA3, 0x95, 0xC9, 0xE1, 0xAC, 0x38, 0xEB, 0x3C, 0x9F, 0x07, 0x2B, 0xD8
	.byte 0x7D, 0x76, 0x8F, 0x39, 0x72, 0xF5, 0xA9, 0xE4, 0x66, 0xAA, 0x37, 0x02, 0xAE, 0x65, 0xAD, 0xE6
	.byte 0x7D, 0x3A, 0x79, 0x00, 0x39, 0x2B, 0x9F, 0xE6, 0xD8, 0x5A, 0x37, 0x07, 0xD4, 0xDA, 0xF8, 0xDD
	.byte 0xC4, 0x6A, 0x7F, 0x34, 0x43, 0x55, 0x6A, 0xE3, 0x1A, 0xE8, 0x4E, 0x00, 0x29, 0x0A, 0xC8, 0xE2
	.byte 0x79, 0x15, 0x77, 0x02, 0x19, 0x5A, 0xE4, 0xE6, 0xEA, 0xC8, 0xD5, 0x04, 0xEA, 0x7D, 0x59, 0xE6
	.byte 0x58, 0x12, 0xE5, 0x06, 0x20, 0xBD, 0x76, 0x15, 0x11, 0x2F, 0xC5, 0x07, 0xE9, 0x1B, 0x0F, 0x1F
	.byte 0x7D, 0x06, 0xB6, 0xFE, 0xBD, 0xD9, 0xF3, 0x1C, 0x82, 0x7C, 0xDF, 0x87, 0x86, 0x7D, 0x26, 0x61
	.byte 0x81, 0x3E, 0x90, 0x85, 0x6D, 0x81, 0x3A, 0x61, 0xBF, 0xE2, 0x42, 0x82, 0x8F, 0x24, 0xD2, 0x64
	.byte 0xAD, 0x3B, 0xB9, 0x87, 0x39, 0x7D, 0x3A, 0x61, 0x39, 0x0E, 0x8D, 0x85, 0xCD, 0x6C, 0x37, 0x63
	.byte 0xC9, 0x6C, 0x8E, 0x82, 0x5D, 0xE2, 0x32, 0x58, 0x9C, 0x7F, 0x37, 0xB8, 0x9E, 0x4F, 0x06, 0x5A
	.byte 0x98, 0xFF, 0x3A, 0x51, 0x9A, 0xFF, 0x9C, 0xB1, 0x9D, 0x4F, 0xA0, 0xBA, 0x9E, 0x4F, 0x06, 0x5A
	.byte 0x9E, 0xFF, 0xAD, 0x5E, 0x9F, 0x92, 0x8B, 0x5C, 0x63, 0x75, 0x31, 0x59, 0x6E, 0x0C, 0x37, 0xB3
	.byte 0x6D, 0x0C, 0xF6, 0x55, 0x6C, 0x25, 0xF0, 0xB6, 0x6F, 0xC5, 0x2A, 0x50, 0x6F, 0xEC, 0x9B, 0xB4
	.byte 0x9B, 0x04, 0x34, 0x55, 0xE4, 0x76, 0xD4, 0x89, 0x62, 0x31, 0x48, 0x6A, 0x9D, 0xA5, 0x54, 0x8B
	.byte 0x8B, 0xA9, 0xCA, 0x6A, 0x7F, 0x3C, 0xF6, 0x8B, 0x6C, 0xDE, 0x29, 0x6B, 0x68, 0x9E, 0xB4, 0x8B
	.byte 0x6C, 0xE1, 0x23, 0x6D, 0x7E, 0x96, 0x0B, 0x86, 0x74, 0x96, 0xBD, 0x64, 0x42, 0x09, 0x8C, 0x84
	.byte 0x43, 0x29, 0x3A, 0x60, 0xB7, 0x81, 0x95, 0x81, 0x37, 0xE7, 0x95, 0x5E, 0xC7, 0x09, 0x7E, 0x84
	.byte 0x3D, 0x9C, 0xF0, 0x64, 0x39, 0xEC, 0x27, 0x82, 0xFF, 0x45, 0x20, 0x62, 0xFF, 0x65, 0x96, 0x86
	.byte 0x0F, 0x5D, 0x91, 0x67, 0xFF, 0xB3, 0x7A, 0xBD, 0x05, 0x26, 0xF4, 0x5D, 0x04, 0x56, 0x22, 0xB9
	.byte 0xC2, 0xFE, 0x27, 0x59, 0xC1, 0xDE, 0x91, 0xBD, 0x31, 0xF6, 0x96, 0x5C, 0x31, 0x29, 0x7D, 0x86
	.byte 0x33, 0x5F, 0x9B, 0x62, 0x30, 0x67, 0x66, 0x86, 0x34, 0x0E, 0xC4, 0x65, 0xFF, 0xF5, 0xB5, 0x87
	.byte 0xFF, 0x49, 0x16, 0x66, 0x0C, 0xC3, 0xFF, 0xBC, 0xFC, 0x94, 0x4F, 0x58, 0x03, 0xA2, 0x60, 0xBB
	.byte 0x56, 0xBD, 0x3E, 0x58, 0x56, 0x7D, 0xAB, 0x82, 0x93, 0xF4, 0x7A, 0xB9, 0x90, 0xF4, 0xE1, 0x5A
	.byte 0x98, 0x44, 0x70, 0xB9, 0x50, 0x59, 0xEB, 0x52, 0xB4, 0x4C, 0x1A, 0x02, 0x43, 0x55, 0x6A, 0xE3
	.byte 0x02, 0xE8, 0x4E, 0x00, 0x52, 0x1A, 0xC8, 0xE2, 0x31, 0x45, 0x76, 0x02, 0x32, 0x25, 0x78, 0xE0
	.byte 0x32, 0xD5, 0xE4, 0x02, 0x3E, 0xB5, 0x75, 0xE6, 0x32, 0xC6, 0xC2, 0xF2, 0x36, 0x95, 0x55, 0x17
	.byte 0xE6, 0x17, 0xF2, 0xF3, 0x14, 0x15, 0x78, 0x13, 0x74, 0xBA, 0xEB, 0x00, 0x25, 0x28, 0x5D, 0x12
	.byte 0xDD, 0x67, 0x8D, 0x0A, 0x40, 0x7A, 0x09, 0xEF, 0x83, 0x98, 0x93, 0x0F, 0xD5, 0xC8, 0xED, 0x04
	.byte 0xB5, 0xC9, 0x84, 0xE2, 0x8A, 0x8A, 0x32, 0x06, 0x66, 0x35, 0x98, 0xE2, 0xB4, 0x56, 0xE0, 0x01
	.byte 0x88, 0x90, 0x70, 0xE7, 0xAA, 0x8F, 0x1B, 0x04, 0x3E, 0xC9, 0x98, 0xE2, 0x36, 0xBA, 0x2F, 0x06
	.byte 0xC2, 0x58, 0x85, 0xE7, 0x41, 0x77, 0x42, 0x3D, 0xFD, 0x50, 0xF5, 0xD9, 0xFD, 0x33, 0x9A, 0x38
	.byte 0xFE, 0x88, 0x73, 0xE2, 0xFE, 0xB0, 0xC4, 0x06, 0xFA, 0xA3, 0x7E, 0xE0, 0x6D, 0x0C, 0xE6, 0x00
	.byte 0x61, 0x3C, 0x75, 0xE4, 0xE0, 0x51, 0x70, 0x04, 0xE2, 0x61, 0x41, 0xE6, 0xE6, 0xD1, 0x7D, 0xED
	.byte 0xE4, 0xD1, 0xDB, 0x0D, 0xEA, 0x61, 0xE7, 0x06, 0xE9, 0x61, 0x41, 0xE6, 0xEA, 0xD1, 0x7D, 0xED
	.byte 0xCB, 0xD1, 0x8B, 0x04, 0xC8, 0xD1, 0x45, 0xE2, 0xC9, 0xF9, 0x4F, 0x01, 0xCA, 0x19, 0x9A, 0xE7
	.byte 0x3E, 0x21, 0x2F, 0x03, 0xC1, 0x54, 0xCE, 0xE1, 0xD5, 0x0D, 0x6B, 0x00, 0x2A, 0x56, 0x4D, 0xDD
	.byte 0x0F, 0x7B, 0x4D, 0x3C, 0x1C, 0x9A, 0x90, 0xDC, 0x18, 0xDA, 0x0D, 0x3C, 0x1C, 0xA5, 0x9A, 0xDA
	.byte 0x36, 0xD2, 0xB2, 0x31, 0x36, 0xA2, 0x7C, 0xD7, 0xAC, 0x45, 0xF6, 0x37, 0x9A, 0xDA, 0xC7, 0xD7
	.byte 0x9B, 0xEA, 0x81, 0x36, 0x9B, 0x43, 0x6A, 0xEC, 0x0F, 0xD6, 0x8D, 0x0A, 0x0E, 0x51, 0x7D, 0xEE
	.byte 0x54, 0x36, 0xF7, 0x0E, 0x50, 0x26, 0x60, 0xEF, 0xF6, 0x4F, 0x6E, 0x31, 0xF7, 0xCF, 0x85, 0xD5
	.byte 0xA7, 0x5A, 0x81, 0x34, 0xA6, 0x8F, 0x27, 0xEE, 0xA4, 0x06, 0xD9, 0x0A, 0xFE, 0x61, 0x53, 0xEA
	.byte 0xC8, 0xFE, 0x62, 0x0A, 0xC9, 0xCE, 0x28, 0xEB, 0xC9, 0xAB, 0xC3, 0x31, 0x9B, 0x3E, 0x2B, 0xD5
	.byte 0x98, 0x07, 0xD5, 0x31, 0x99, 0x2F, 0xDF, 0xD2, 0x8A, 0xCF, 0xC2, 0x3B, 0x8A, 0xBF, 0x0C, 0xDD
	.byte 0x10, 0x58, 0x86, 0x3D, 0x26, 0xC7, 0xB7, 0xDD, 0x27, 0xF7, 0xF1, 0x3C, 0x27, 0x5E, 0x1A, 0xE6
	.byte 0xB3, 0xCB, 0xFD, 0x00, 0xB2, 0x4C, 0x0D, 0xE4, 0xE8, 0x2B, 0x87, 0x04, 0xEC, 0x3B, 0x10, 0xE5
	.byte 0x4A, 0x52, 0x1E, 0x3B, 0x4B, 0xD2, 0xF5, 0xDF, 0x1B, 0x47, 0xF1, 0x3E, 0x1A, 0x92, 0x57, 0xE4
	.byte 0x18, 0x1B, 0xA9, 0x00, 0x42, 0x7C, 0x23, 0xE0, 0x74, 0xE3, 0x12, 0x00, 0x75, 0xD3, 0x58, 0xE1
	.byte 0x75, 0xB6, 0xB3, 0x3B, 0x27, 0x23, 0x5B, 0xDF, 0x24, 0x1A, 0xA5, 0x3B, 0x27, 0x32, 0x48, 0xDF
	.byte 0x27, 0x0B, 0xF4, 0x3B, 0x23, 0x2D, 0x5E, 0xD8, 0xE6, 0xD6, 0x3B, 0x3B, 0xE6, 0x16, 0xAE, 0xE1
	.byte 0xE2, 0x60, 0x1D, 0x05, 0xE2, 0x03, 0x63, 0xE5, 0x4C, 0x50, 0xBA, 0xDE, 0x4D, 0x50, 0x21, 0x3D
	.byte 0x5D, 0xE0, 0xB0, 0xDE, 0xF5, 0xFD, 0x2B, 0x35, 0xB4, 0x4C, 0x1A, 0x02, 0x7E, 0xF7, 0xFF, 0xFF
	.byte 0x4B, 0x59, 0x6A, 0xE3, 0x55, 0xD3, 0x4E, 0x00, 0x16, 0xED, 0xF7, 0xE6, 0x86, 0xCD, 0x5C, 0x05
	.byte 0x16, 0x7F, 0xEC, 0xE3, 0x56, 0x07, 0x69, 0x03, 0x27, 0x18, 0xD7, 0xE3, 0x8E, 0xD7, 0x69, 0x03
	.byte 0x6E, 0xE8, 0xD7, 0xE1, 0xAC, 0x67, 0x6B, 0x01, 0x14, 0x98, 0xD5, 0xE1, 0x10, 0xD8, 0x6B, 0x01
	.byte 0xD2, 0x4B, 0x39, 0xE2, 0xA5, 0x68, 0xBF, 0x00, 0xE9, 0xE8, 0x8E, 0xE0, 0xED, 0xF8, 0x4F, 0x00
	.byte 0x09, 0xF7, 0xC6, 0xE4, 0xB1, 0x1F, 0x40, 0x04, 0xB7, 0x6F, 0xFE, 0xE4, 0x4E, 0x20, 0x40, 0x04
	.byte 0xBC, 0xC3, 0x1B, 0xE7, 0x6D, 0x76, 0x12, 0x05, 0x7F, 0x56, 0x37, 0xE6, 0x6E, 0x8A, 0x42, 0x04
	.byte 0x6F, 0x3A, 0xDC, 0x06, 0x6F, 0x5A, 0x40, 0x15, 0x6F, 0x3A, 0x0C, 0xF7, 0x2C, 0x45, 0x9C, 0x16
	.byte 0xFB, 0x48, 0x07, 0xFD, 0xB4, 0x4C, 0x1A, 0x02, 0x4B, 0x59, 0x6A, 0xE3, 0x55, 0xD3, 0x4E, 0x00
	.byte 0x16, 0xED, 0xF7, 0xE6, 0x86, 0xCD, 0x5C, 0x05, 0x16, 0x7F, 0xEC, 0xE3, 0x56, 0x07, 0x69, 0x03
	.byte 0x27, 0x18, 0xD7, 0xE3, 0x8E, 0xD7, 0x69, 0x03, 0x6E, 0xE8, 0xD7, 0xE1, 0xAC, 0x67, 0x6B, 0x01
	.byte 0x14, 0x98, 0xD5, 0xE1, 0x10, 0xD8, 0x6B, 0x01, 0xD2, 0x4B, 0x39, 0xE2, 0xA5, 0x68, 0xBF, 0x00
	.byte 0xE9, 0xE8, 0x8E, 0xE0, 0xED, 0xF8, 0x4F, 0x00, 0x05, 0xF7, 0xC6, 0xE4, 0xBD, 0x1F, 0x40, 0x04
	.byte 0xBB, 0x6F, 0xFE, 0xE4, 0x42, 0x20, 0x40, 0x04, 0xB0, 0xC3, 0x1B, 0xE7, 0x61, 0x76, 0x12, 0x05
	.byte 0x73, 0x56, 0x37, 0xE6, 0x62, 0x8A, 0x42, 0x04, 0x63, 0x3A, 0xDC, 0x06, 0x63, 0x5A, 0x40, 0x15
	.byte 0x63, 0x3A, 0x0C, 0xF7, 0x20, 0x45, 0x9C, 0x16, 0xF7, 0x48, 0x07, 0xFD, 0xB4, 0x4C, 0x1A, 0x02
	.byte 0x00, 0x00, 0x8F, 0xE3, 0x04, 0x00, 0x90, 0xE2, 0x84, 0xFB, 0xFF, 0x1A, 0xC0, 0x66, 0x1A, 0x02
	.byte 0xC8, 0x6F, 0x1A, 0x02, 0xA4, 0x67, 0x1A, 0x02, 0x88, 0x70, 0x1A, 0x02, 0xEC, 0x68, 0x1A, 0x02
	.byte 0xF0, 0x70, 0x1A, 0x02, 0xA0, 0x6A, 0x1A, 0x02, 0xB8, 0x6F, 0x1A, 0x02, 0x18, 0x6B, 0x1A, 0x02
	.byte 0xB8, 0x6F, 0x1A, 0x02, 0x4C, 0x67, 0x1A, 0x02, 0x9C, 0x6F, 0x1A, 0x02, 0x84, 0x66, 0x1A, 0x02
	.byte 0x80, 0x6F, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x02, 0x02, 0x04, 0x04, 0x00, 0x01, 0x01, 0x03, 0x03, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x39, 0x00, 0x7F, 0x00, 0x46, 0x00, 0x13, 0x00, 0x94, 0x00, 0x64, 0x00, 0x5B, 0x00
	.byte 0xE6, 0x00, 0xC0, 0x01, 0x23, 0x01, 0xD0, 0x00, 0x87, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00
	.byte 0x00, 0x50, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x4A, 0xF7, 0x5E
	.byte 0x40, 0x41, 0x00, 0x00, 0xF4, 0x7F, 0xFF, 0x7F, 0xE9, 0x7B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x01, 0x10, 0x02, 0x00, 0x01, 0x10, 0x02, 0x00, 0x07, 0x10, 0x08, 0x00, 0x0D, 0x10, 0x0E
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00
	.byte 0x79, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x85, 0x00, 0x00, 0x00, 0x86, 0x00, 0x00, 0x00, 0xB1, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00
	.byte 0x7B, 0x00, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x00, 0x00, 0xA1, 0x00, 0xA2, 0x00
	.byte 0xA3, 0x00, 0xA5, 0x00, 0xA6, 0x00, 0xA4, 0x00, 0xB8, 0x00, 0x2E, 0x02, 0x2F, 0x02, 0x25, 0x02
	.byte 0x2A, 0x02, 0x29, 0x02, 0x1B, 0x03, 0x20, 0x02, 0x1E, 0x04, 0x1F, 0x03, 0x22, 0x03, 0x1C, 0x06
	.byte 0x1D, 0x06, 0x21, 0x03, 0x10, 0x75, 0xA2, 0x08, 0xC3, 0xB3, 0x7A, 0xE4, 0x02, 0x93, 0x28, 0x5A
	.byte 0xC8, 0xCA, 0xA6, 0xEA, 0xD5, 0x75, 0x0D, 0xE0, 0x00, 0xFE, 0xD2, 0xE2, 0x34, 0x5B, 0x1A, 0x02
	.byte 0x70, 0x5A, 0x1A, 0x02, 0xFF, 0xF6, 0x40, 0xFF, 0xFF, 0xCE, 0x00, 0x00, 0x18, 0x6B, 0x1A, 0x02
	.byte 0xA0, 0x6A, 0x1A, 0x02, 0x84, 0x66, 0x1A, 0x02, 0xA4, 0x67, 0x1A, 0x02, 0xEC, 0x68, 0x1A, 0x02
	.byte 0x4C, 0x67, 0x1A, 0x02, 0xC0, 0x66, 0x1A, 0x02, 0xD4, 0x33, 0x1A, 0x02, 0x8C, 0x37, 0x1A, 0x02
	.byte 0x84, 0x3A, 0x1A, 0x02, 0x58, 0x44, 0x1A, 0x02, 0x90, 0x49, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x9A, 0x19, 0x02, 0x35, 0x9B, 0x19, 0x02, 0x65, 0x9A, 0x19, 0x02, 0x70, 0x6C, 0x69, 0x73
	.byte 0x74, 0x5F, 0x70, 0x6C, 0x61, 0x74, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x70, 0x6C, 0x69, 0x73
	.byte 0x74, 0x5F, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x70, 0x6C, 0x69, 0x73
	.byte 0x74, 0x5F, 0x6D, 0x65, 0x6E, 0x75, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6C, 0x69, 0x73
	.byte 0x74, 0x5F, 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x70, 0x6C, 0x69, 0x73
	.byte 0x74, 0x5F, 0x64, 0x65, 0x6D, 0x6F, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A30F8
