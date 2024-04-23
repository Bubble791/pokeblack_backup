    .include "macros/function.inc"
	.include "overlay60.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy60_21e58c0
ovy60_21e58c0: ; 0x021E58C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl ovy12_2154910
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_2154910
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_2154910
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_21548e8
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_21548e8
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_21548e8
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_21548e8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ovy12_21548e8
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	bl sub_0215516C
	str r0, [sp, #0x24]
	bl sub_02016AD8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	bl sub_02016AF0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #8]
	bl sub_02155184
	bl sub_02153F04
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	bl sub_02180490
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	bl sub_021F4670
	str r0, [sp, #0x38]
	ldr r0, _021E5C34 ; =0x00000177
	mov r5, #0xd3
	lsl r5, r5, #2
	str r0, [sp]
	ldr r3, _021E5C38 ; =0x021E8BBC
	mov r0, #4
	add r1, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	str r4, [r0]
	ldr r0, [sp, #0x34]
	bl sub_0218799C
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x28]
	bl PlayerSave_GetPlayerSaveOffset
	str r0, [r4, #0x14]
	mov r0, #0x15
	strh r0, [r4, #0xc]
	ldr r0, [sp, #0x28]
	bl sub_02017354
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x28]
	bl sub_02017994
	str r0, [r4, #0x1c]
	add r1, r5, #0
	ldr r0, [sp, #0x10]
	sub r1, #0x7c
	str r0, [r4, r1]
	add r1, r5, #0
	ldr r0, [sp, #0x14]
	sub r1, #0x78
	str r0, [r4, r1]
	add r1, r5, #0
	ldr r0, [sp, #0x18]
	sub r1, #0x74
	str r0, [r4, r1]
	add r1, r5, #0
	ldr r0, [sp, #0x1c]
	sub r1, #0x70
	str r0, [r4, r1]
	add r1, r5, #0
	ldr r0, [sp, #0x20]
	sub r1, #0x6c
	str r0, [r4, r1]
	ldr r0, [sp, #0x38]
	bl sub_021F1FF8
	add r1, r5, #0
	sub r1, #0x9c
	str r0, [r4, r1]
	ldr r0, [sp, #0x38]
	bl sub_021F2008
	add r1, r5, #0
	sub r1, #0x94
	str r0, [r4, r1]
	ldr r0, [sp, #0x38]
	bl sub_021F201C
	add r1, r5, #0
	sub r1, #0x8c
	str r0, [r4, r1]
	ldr r0, [sp, #0x38]
	bl sub_021F2014
	add r1, r5, #0
	sub r1, #0x88
	str r0, [r4, r1]
	ldr r0, [sp, #0x38]
	bl sub_021F202C
	add r1, r5, #0
	sub r1, #0x80
	str r0, [r4, r1]
	add r1, r5, #0
	ldr r0, [sp, #0x38]
	sub r1, #0xa0
	str r0, [r4, r1]
	add r1, r5, #0
	ldr r0, [sp, #0xc]
	sub r1, #0x68
	strh r0, [r4, r1]
	ldr r0, [sp, #0x2c]
	bl ovy60_21e7ecc
	add r1, r5, #0
	sub r1, #0xa8
	str r0, [r4, r1]
	ldr r0, [sp, #0x2c]
	bl ovy60_21e7efc
	add r1, r5, #0
	sub r1, #0xa4
	str r0, [r4, r1]
	ldr r0, [sp, #0x24]
	sub r1, r5, #4
	str r0, [r4, r1]
	add r1, r5, #0
	sub r1, #0xa8
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl sub_021F4690
	add r1, r5, #0
	sub r1, #0x84
	str r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0x80
	ldr r0, [r4, r0]
	mov r1, #0xd
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0
	beq _021E5A40
	sub r5, #0x44
	mov r0, #1
	b _021E5A44
_021E5A40:
	sub r5, #0x44
	mov r0, #0
_021E5A44:
	str r0, [r4, r5]
	mov r5, #0xd
	ldr r0, _021E5C3C ; =ovy60_21e8924
	lsl r5, r5, #6
	str r0, [r4, r5]
	ldr r1, _021E5C40 ; =ovy60_21e89bc
	add r0, r5, #4
	str r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x78
	ldr r0, [r4, r0]
	mov r1, #2
	mov r2, #0
	bl sub_021F10E8
	add r1, r5, #0
	sub r1, #0x5a
	strh r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0x70
	ldr r1, [r4, r0]
	mov r0, #0
	strh r0, [r1]
	add r0, r5, #0
	sub r0, #0x40
	strh r6, [r4, r0]
	cmp r6, #0
	beq _021E5A86
	cmp r6, #1
	beq _021E5AE6
	cmp r6, #2
	bne _021E5A86
	b _021E5B94
_021E5A86:
	bl sub_02160574
	mov r5, #0x2a
	strb r6, [r4, #2]
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, _021E5C44 ; =ovy60_21e6140
	lsl r5, r5, #4
	str r0, [r4, r5]
	add r0, r5, #0
	ldr r1, _021E5C48 ; =ovy60_21e7f2c
	add r0, #0x48
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C4C ; =0x021E7F59
	add r0, #0x4c
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C50 ; =ovy60_21e7f5c
	add r0, #0x58
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C54 ; =ovy60_21e7a70
	add r0, #0x5c
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	bl sub_021F0F58
	bl sub_02038470
	add r1, r5, #0
	add r1, #0x1c
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	bl sub_021F0F58
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02039798
	add r5, #0x14
	b _021E5C22
_021E5AE6:
	strb r6, [r4, #2]
	add r0, r5, #0
	sub r0, #0xa0
	ldr r1, _021E5C58 ; =ovy60_21e64b0
	strb r7, [r4, #3]
	str r1, [r4, r0]
	cmp r7, #3
	bhi _021E5B0A
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5B02: ; jump table
	.short _021E5B0A - _021E5B02 - 2 ; case 0
	.short _021E5B38 - _021E5B02 - 2 ; case 1
	.short _021E5B5C - _021E5B02 - 2 ; case 2
	.short _021E5B78 - _021E5B02 - 2 ; case 3
_021E5B0A:
	mov r1, #0xba
	ldr r0, _021E5C5C ; =ovy60_21e7fe0
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _021E5C60 ; =0x021E800D
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0x34
	add r0, #0x1c
	strh r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0x35
	add r0, #0x1e
	strh r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _021E5C64 ; =ovy60_21e827c
	add r0, #0x10
	str r2, [r4, r0]
	mov r0, #0
	add r1, #0x14
	str r0, [r4, r1]
	b _021E5C24
_021E5B38:
	add r0, r5, #0
	ldr r1, _021E5C5C ; =ovy60_21e7fe0
	sub r0, #0x58
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C60 ; =0x021E800D
	sub r0, #0x54
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x32
	sub r0, #0x3c
	strh r1, [r4, r0]
	mov r1, #0x33
_021E5B52:
	add r0, r5, #0
	sub r0, #0x3a
	strh r1, [r4, r0]
	ldr r1, _021E5C64 ; =ovy60_21e827c
	b _021E5C18
_021E5B5C:
	add r0, r5, #0
	ldr r1, _021E5C68 ; =ovy60_21e8010
	sub r0, #0x58
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C6C ; =0x021E803D
	sub r0, #0x54
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x36
	sub r0, #0x3c
	strh r1, [r4, r0]
	mov r1, #0x37
	b _021E5B52
_021E5B78:
	add r0, r5, #0
	ldr r1, _021E5C68 ; =ovy60_21e8010
	sub r0, #0x58
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C6C ; =0x021E803D
	sub r0, #0x54
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x38
	sub r0, #0x3c
	strh r1, [r4, r0]
	mov r1, #0x39
	b _021E5B52
_021E5B94:
	strb r6, [r4, #2]
	add r0, r5, #0
	sub r0, #0xa0
	ldr r1, _021E5C70 ; =ovy60_21e66c4
	strb r7, [r4, #3]
	str r1, [r4, r0]
	cmp r7, #0
	beq _021E5BAA
	cmp r7, #1
	beq _021E5BDE
	b _021E5C24
_021E5BAA:
	add r0, r5, #0
	ldr r1, _021E5C5C ; =ovy60_21e7fe0
	sub r0, #0x58
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C60 ; =0x021E800D
	sub r0, #0x54
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C74 ; =ovy60_21e6d94
	sub r0, #0x50
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C78 ; =ovy60_21e841c
	sub r0, #0x4c
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x43
	sub r0, #0x3e
	strh r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x3b
	sub r0, #0x3c
	strh r1, [r4, r0]
	mov r1, #0x44
	b _021E5C10
_021E5BDE:
	add r0, r5, #0
	ldr r1, _021E5C68 ; =ovy60_21e8010
	sub r0, #0x58
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C6C ; =0x021E803D
	sub r0, #0x54
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C7C ; =ovy60_21e6fd8
	sub r0, #0x50
	str r1, [r4, r0]
	add r0, r5, #0
	ldr r1, _021E5C80 ; =ovy60_21e85b0
	sub r0, #0x4c
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x3a
	sub r0, #0x3e
	strh r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0x3b
	sub r0, #0x3c
	strh r1, [r4, r0]
	mov r1, #0x3c
_021E5C10:
	add r0, r5, #0
	sub r0, #0x3a
	strh r1, [r4, r0]
	ldr r1, _021E5C84 ; =ovy60_21e82f0
_021E5C18:
	add r0, r5, #0
	sub r0, #0x48
	str r1, [r4, r0]
	sub r5, #0x44
	mov r0, #0
_021E5C22:
	str r0, [r4, r5]
_021E5C24:
	ldr r0, [sp, #4]
	ldr r1, _021E5C88 ; =ovy60_21e5c8c
	bl sub_02015A88
	mov r0, #1
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021E5C34: .word 0x00000177
_021E5C38: .word 0x021E8BBC
_021E5C3C: .word ovy60_21e8924
_021E5C40: .word ovy60_21e89bc
_021E5C44: .word ovy60_21e6140
_021E5C48: .word ovy60_21e7f2c
_021E5C4C: .word 0x021E7F59
_021E5C50: .word ovy60_21e7f5c
_021E5C54: .word ovy60_21e7a70
_021E5C58: .word ovy60_21e64b0
_021E5C5C: .word ovy60_21e7fe0
_021E5C60: .word 0x021E800D
_021E5C64: .word ovy60_21e827c
_021E5C68: .word ovy60_21e8010
_021E5C6C: .word 0x021E803D
_021E5C70: .word ovy60_21e66c4
_021E5C74: .word ovy60_21e6d94
_021E5C78: .word ovy60_21e841c
_021E5C7C: .word ovy60_21e6fd8
_021E5C80: .word ovy60_21e85b0
_021E5C84: .word ovy60_21e82f0
_021E5C88: .word ovy60_21e5c8c
	thumb_func_end ovy60_21e58c0

	thumb_func_start ovy60_21e5c8c
ovy60_21e5c8c: ; 0x021E5C8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl sub_02155184
	bl sub_02153F04
	add r5, r0, #0
	ldr r4, [r5]
	add r0, r6, #0
	bl sub_0215516C
	add r7, r0, #0
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_02180494
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021E5D2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5CC2: ; jump table
	.short _021E5CCA - _021E5CC2 - 2 ; case 0
	.short _021E5CF0 - _021E5CC2 - 2 ; case 1
	.short _021E5D08 - _021E5CC2 - 2 ; case 2
	.short _021E5D24 - _021E5CC2 - 2 ; case 3
_021E5CCA:
	mov r3, #0xcf
	lsl r3, r3, #2
	add r2, r4, r3
	add r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, #0
	add r1, r6, #0
	blx r3
	cmp r0, #0
	beq _021E5D2E
	mov r0, #0
	mov r5, #0
	bl sub_0218A598
	strb r5, [r4, #8]
_021E5CE8:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021E5D2E
_021E5CF0:
	mov r5, #0x2a
	lsl r5, r5, #4
	add r1, r4, #0
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	ldr r5, [r4, r5]
	add r0, r7, #0
	add r1, #8
	blx r5
	cmp r0, #0
	beq _021E5D2E
	b _021E5CE8
_021E5D08:
	mov r3, #0xcf
	lsl r3, r3, #2
	add r2, r4, r3
	add r3, #8
	ldr r3, [r4, r3]
	add r0, r4, #0
	add r1, r6, #0
	blx r3
	cmp r0, #0
	beq _021E5D2E
	mov r0, #1
	bl sub_0218A598
	b _021E5CE8
_021E5D24:
	ldr r0, [r5]
	bl sub_0203A24C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5D2E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e5c8c

	thumb_func_start ovy60_21e5d34
ovy60_21e5d34: ; 0x021E5D34
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02016AD8
	bl sub_0201736C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy60_21e7128
	add r0, r5, #0
	bl ovy60_21e5d60
	add r0, r5, #0
	bl ovy60_21e76d0
	add r0, r5, #0
	bl ovy60_21e75b8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy60_21e5d34

	thumb_func_start ovy60_21e5d60
ovy60_21e5d60: ; 0x021E5D60
	push {r3, r4, r5, lr}
	mov r4, #0x87
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0xd
	bl sub_0204898C
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	mov r1, #0xe
	bl sub_0204898C
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e5d60

	thumb_func_start sub_021E5D84
sub_021E5D84: ; 0x021E5D84
	ldr r0, [r0, #0xc]
	ldr r3, _021E5D8C ; =sub_0200C9BC
	bx r3
	nop
_021E5D8C: .word sub_0200C9BC
	thumb_func_end sub_021E5D84

	thumb_func_start ovy60_21e5d90
ovy60_21e5d90: ; 0x021E5D90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021E5D84
	mov r4, #0xad
	lsl r4, r4, #2
	add r1, r4, #0
	sub r1, #0x24
	ldr r1, [r5, r1]
	add r6, r0, #0
	ldrh r1, [r1]
	ldr r0, [r5, r4]
	bl sub_02036434
	cmp r0, #1
	bne _021E5DDC
	add r0, r4, #0
	sub r0, #0x24
	ldr r0, [r5, r0]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021E5DC6
	add r4, #0x2a
	ldrh r1, [r5, r4]
	add r0, r5, #0
	add r1, #0x11
	b _021E5DCE
_021E5DC6:
	add r4, #0x2a
	ldrh r1, [r5, r4]
	add r0, r5, #0
	add r1, #0x15
_021E5DCE:
	bl ovy60_21e7bc8
	mov r0, #8
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5, #1]
	pop {r4, r5, r6, pc}
_021E5DDC:
	add r0, r4, #0
	sub r0, #0x24
	ldr r2, [r5, r0]
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _021E5E0E
	ldrh r1, [r2, #4]
	ldrh r2, [r2, #6]
	ldrh r3, [r5, #4]
	ldr r0, [r5, #0x10]
	bl sub_02008238
	cmp r0, #0
	bne _021E5E0E
	add r4, #0x2a
	ldrh r1, [r5, r4]
	add r0, r5, #0
	add r1, #0xa
	bl ovy60_21e7bc8
	mov r0, #8
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5, #1]
	pop {r4, r5, r6, pc}
_021E5E0E:
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	ldr r0, [r2, #8]
	cmp r6, r0
	bhs _021E5E2E
	add r1, #0x4e
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ovy60_21e7bc8
	mov r0, #8
	strb r0, [r5]
	mov r0, #2
	strb r0, [r5, #1]
	pop {r4, r5, r6, pc}
_021E5E2E:
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _021E5E3E
	add r1, #0x4e
	ldrh r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, #4
	b _021E5E46
_021E5E3E:
	add r1, #0x4e
	ldrh r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, #6
_021E5E46:
	bl ovy60_21e7e00
	mov r0, #8
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #1]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy60_21e5d90

	thumb_func_start ovy60_21e5e54
ovy60_21e5e54: ; 0x021E5E54
	push {r3, r4, r5, lr}
	mov r4, #0x23
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_020258A4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E5E90
	sub r1, r1, #1
	cmp r0, r1
	bne _021E5E7C
	mov r0, #0
	add r4, #0x60
	str r0, [r5, r4]
	mov r0, #9
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021E5E7C:
	add r2, r5, #0
	mov r1, #0x1c
	add r2, #0x18
	mul r1, r0
	add r0, r2, r1
	add r4, #0x60
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy60_21e5d90
_021E5E90:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy60_21e5e54

	thumb_func_start ovy60_21e5e94
ovy60_21e5e94: ; 0x021E5E94
	push {r3, r4, r5, lr}
	mov r4, #0x23
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_020258A4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E5EDE
	sub r1, r1, #1
	cmp r0, r1
	bne _021E5EBC
	mov r0, #0
	add r4, #0x60
	str r0, [r5, r4]
	mov r0, #8
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021E5EBC:
	add r2, r5, #0
	mov r1, #0x1c
	mul r1, r0
	add r0, r4, #0
	add r2, #0x18
	add r2, r2, r1
	add r0, #0x60
	str r2, [r5, r0]
	add r4, #0xcc
	ldrh r1, [r5, r4]
	add r0, r5, #0
	bl ovy60_21e7e00
	mov r0, #7
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #1]
_021E5EDE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e5e94

	thumb_func_start ovy60_21e5ee0
ovy60_21e5ee0: ; 0x021E5EE0
	push {r3, r4, r5, lr}
	mov r4, #0x23
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_020258A4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E5F84
	sub r1, r1, #1
	cmp r0, r1
	bne _021E5F24
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E5F12
	mov r0, #0
	add r4, #0x60
	str r0, [r5, r4]
	mov r0, #9
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021E5F12:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	add r4, #0x34
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_021E5F24:
	add r1, r4, #0
	add r1, #0xd8
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _021E5F50
	add r1, r4, #0
	add r1, #0xd5
	strb r0, [r5, r1]
	add r0, r4, #0
	add r0, #0xd5
	ldrb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xd4
	ldrb r0, [r5, r0]
	cmp r1, r0
	beq _021E5F84
	mov r0, #1
	add r4, #0xe0
	str r0, [r5, r4]
	mov r0, #4
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021E5F50:
	add r1, r4, #0
	add r1, #0xd4
	strb r0, [r5, r1]
	add r1, r4, #0
	mov r2, #1
	add r1, #0xd8
	str r2, [r5, r1]
	add r2, r5, #0
	mov r1, #0x1c
	mul r1, r0
	add r2, #0x18
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0x60
	str r1, [r5, r0]
	add r1, r4, #0
	ldr r0, [r5, r4]
	add r1, #0xdc
	add r4, #0xde
	add r1, r5, r1
	add r2, r5, r4
	bl sub_02025B04
	add r0, r5, #0
	bl ovy60_21e837c
_021E5F84:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy60_21e5ee0

	thumb_func_start ovy60_21e5f88
ovy60_21e5f88: ; 0x021E5F88
	push {r4, r5, r6, lr}
	mov r6, #0x91
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_020223B4
	add r4, r0, #0
	add r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E5FAA
	ldr r1, [r5, r6]
	sub r6, #0x34
	ldr r2, [r5, r6]
	bl sub_0202E8D8
_021E5FAA:
	cmp r4, #2
	bne _021E5FBC
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020223CC
	ldrb r0, [r5, #1]
	pop {r4, r5, r6, pc}
_021E5FBC:
	cmp r4, #0
	bne _021E5FE2
	bl sub_0203DF20
	mov r1, #1
	tst r0, r1
	bne _021E5FD4
	bl sub_0203DF20
	mov r1, #2
	tst r0, r1
	beq _021E603C
_021E5FD4:
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020223E0
	b _021E603C
_021E5FE2:
	cmp r4, #1
	bne _021E603C
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	beq _021E6008
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	bne _021E6006
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021E6028
_021E6006:
	b _021E6026
_021E6008:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	bne _021E6026
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	bne _021E6026
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xf0
	tst r0, r1
	beq _021E6028
_021E6026:
	mov r4, #1
_021E6028:
	cmp r4, #0
	beq _021E603C
	mov r0, #0x91
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020223BC
	ldr r0, _021E6040 ; =0x00000547
	bl GFL_SndSEPlay
_021E603C:
	ldrb r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E6040: .word 0x00000547
	thumb_func_end ovy60_21e5f88

	thumb_func_start ovy60_21e6044
ovy60_21e6044: ; 0x021E6044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0200C9E4
	ldr r0, [r5, #0x14]
	mov r1, #0x16
	add r2, r4, #0
	bl sub_0200955C
	ldr r0, [r5, #0x14]
	mov r1, #0x15
	bl sub_020095A0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e6044

	thumb_func_start ovy60_21e6064
ovy60_21e6064: ; 0x021E6064
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xd2
	add r4, r5, #0
	lsl r0, r0, #2
	add r4, #8
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ovy60_21e5d34
	ldrb r1, [r5, #2]
	add r0, r4, #0
	bl ovy60_21e71c8
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _021E6096
	add r0, r4, #0
	bl ovy60_21e7750
	add r0, r4, #0
	bl ovy60_21e77d4
_021E6096:
	mov r6, #0xd2
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	sub r6, #0x68
	add r1, r4, #0
	ldr r4, [r4, r6]
	blx r4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e6064

	thumb_func_start ovy60_21e60ac
ovy60_21e60ac: ; 0x021E60AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0x8f
	add r5, #8
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021E60C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E60C4:
	add r0, r4, #0
	add r0, #0x58
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021E60FA
	add r0, r4, #0
	sub r0, #0x3c
	ldr r6, [r5, r0]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r4, #0
	add r0, #0x58
	ldrh r0, [r5, r0]
	add r4, #0x58
	add r0, r0, #1
	strh r0, [r5, r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E60FA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e60ac

	thumb_func_start ovy60_21e6100
ovy60_21e6100: ; 0x021E6100
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r5, #0xd2
	add r4, r3, #0
	lsl r5, r5, #2
	add r4, #8
	ldr r0, [r3, r5]
	ldrb r2, [r3, #2]
	sub r5, #0x64
	ldrb r3, [r3, #3]
	ldr r5, [r4, r5]
	add r1, r4, #0
	blx r5
	add r0, r4, #0
	bl ovy60_21e7b68
	add r0, r4, #0
	bl ovy60_21e766c
	add r0, r4, #0
	bl ovy60_21e77a8
	add r0, r4, #0
	bl ovy60_21e7274
	add r0, r4, #0
	bl ovy60_21e70e0
	add r0, r4, #0
	bl ovy60_21e7178
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e6100

	thumb_func_start ovy60_21e6140
ovy60_21e6140: ; 0x021E6140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r0, #9
	bls _021E614E
	b _021E6456
_021E614E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E615A: ; jump table
	.short _021E616E - _021E615A - 2 ; case 0
	.short _021E6456 - _021E615A - 2 ; case 1
	.short _021E6176 - _021E615A - 2 ; case 2
	.short _021E61B0 - _021E615A - 2 ; case 3
	.short _021E61FA - _021E615A - 2 ; case 4
	.short _021E622C - _021E615A - 2 ; case 5
	.short _021E6272 - _021E615A - 2 ; case 6
	.short _021E6326 - _021E615A - 2 ; case 7
	.short _021E63DA - _021E615A - 2 ; case 8
	.short _021E63E2 - _021E615A - 2 ; case 9
_021E616E:
	add r0, r4, #0
	bl ovy60_21e5e54
	b _021E6456
_021E6176:
	mov r0, #0
	mov r6, #0
	bl ovy60_21e7e84
	mov r5, #2
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	bl sub_0204826C
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x5c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x30
	ldr r0, [r4, r5]
	bl sub_02025A38
	strb r6, [r4]
	b _021E6456
_021E61B0:
	mov r5, #1
	mov r0, #1
	bl ovy60_21e7e84
	lsl r0, r5, #9
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r5, #0x97
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldrh r0, [r4, #4]
	mov r1, #1
	mov r2, #9
	str r0, [sp]
	ldr r0, _021E64A8 ; =0x021E8A4C
	mov r3, #0
	bl sub_020254E0
	add r1, r5, #0
	sub r1, #0x44
	add r5, #0x34
	str r0, [r4, r1]
	ldr r1, [r4, r5]
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _021E61F4
	ldrh r1, [r1, #4]
	add r0, r4, #0
	bl ovy60_21e786c
_021E61F4:
	mov r0, #5
_021E61F6:
	strb r0, [r4]
	b _021E6456
_021E61FA:
	mov r5, #1
	mov r0, #1
	bl ovy60_21e7e84
	lsl r0, r5, #9
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r5, #0x97
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldrh r0, [r4, #4]
	mov r1, #1
	mov r2, #9
	str r0, [sp]
	ldr r0, _021E64A8 ; =0x021E8A4C
	mov r3, #0
	bl sub_020254E0
	sub r5, #0x44
	str r0, [r4, r5]
	b _021E61F4
_021E622C:
	mov r5, #0x86
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E626C
	cmp r0, #0
	bne _021E6266
	mov r0, #6
	strb r0, [r4]
	mov r0, #1
	mov r6, #1
	bl ovy60_21e7e84
	add r5, #0x18
	ldr r0, [r4, r5]
	bl sub_02025A38
	lsl r0, r6, #9
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	b _021E6456
_021E6266:
	sub r1, r1, #1
	cmp r0, r1
	beq _021E626E
_021E626C:
	b _021E6456
_021E626E:
	mov r0, #2
	b _021E61F6
_021E6272:
	mov r5, #0x29
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021E62D0
	ldr r0, _021E64AC ; =0x00000655
	bl GFL_SndSEPlay
	add r1, r5, #0
	ldr r3, [r4, r5]
	add r1, #0x4e
	ldrh r1, [r4, r1]
	ldrh r2, [r3, #4]
	ldrh r3, [r3, #6]
	add r0, r4, #0
	add r1, #8
	bl ovy60_21e7b80
	ldr r1, [r4, r5]
	add r0, r4, #0
	ldr r1, [r1, #8]
	bl ovy60_21e6044
	add r0, r4, #0
	bl ovy60_21e77d4
	ldr r2, [r4, r5]
	ldrh r3, [r4, #4]
	ldrh r1, [r2, #4]
	ldrh r2, [r2, #6]
	ldr r0, [r4, #0x10]
	bl sub_02008268
	ldr r1, [r4, r5]
	add r0, r5, #0
	add r0, #0x24
	ldrh r1, [r1]
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_02036448
_021E62C6:
	mov r0, #8
	strb r0, [r4]
	mov r0, #2
_021E62CC:
	strb r0, [r4, #1]
	b _021E6456
_021E62D0:
	cmp r0, #0xb
	bne _021E6312
	ldr r0, _021E64AC ; =0x00000655
	bl GFL_SndSEPlay
	add r1, r5, #0
	add r1, #0x4e
	ldrh r1, [r4, r1]
	ldr r2, [r4, r5]
	add r0, r4, #0
	add r1, #0x3d
	bl ovy60_21e7e00
	ldr r1, [r4, r5]
	add r0, r4, #0
	ldr r1, [r1, #8]
	bl ovy60_21e6044
	add r0, r4, #0
	bl ovy60_21e77d4
	ldr r1, [r4, r5]
	add r0, r5, #0
	add r0, #0x24
	ldrh r1, [r1]
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_02036448
	mov r0, #8
	strb r0, [r4]
	mov r0, #7
_021E6310:
	b _021E62CC
_021E6312:
	add r5, #0x4e
	ldrh r1, [r4, r5]
	add r0, r4, #0
	add r1, #0xf
	bl ovy60_21e7bc8
	mov r0, #8
	strb r0, [r4]
	mov r0, #9
	b _021E6310
_021E6326:
	mov r5, #0x29
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	ldrh r6, [r0, #4]
	add r0, r5, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	bl sub_021F1110
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	add r1, r6, #0
	mov r2, #0
	bl sub_020395F8
	ldr r1, [r4, r5]
	add r2, r0, #0
	ldrh r1, [r1]
	add r0, r7, #0
	add r1, r1, #5
	bl sub_021F1990
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_02039824
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x20
	lsl r2, r2, #1
	ldr r0, [r4, r0]
	add r1, r6, #0
	add r2, r2, #3
	bl sub_020395F8
	mov r7, #1
	add r6, r0, #0
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [r4, r5]
	sub r0, #0x70
	ldr r0, [r4, r0]
	ldr r2, [r2, #0x10]
	mov r1, #2
	mov r3, #2
	bl sub_0202437C
	lsl r1, r6, #0x10
	ldrh r3, [r4, #4]
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_02008238
	cmp r0, #0
	beq _021E63C6
	add r5, #0x4e
	ldrh r1, [r4, r5]
	lsl r2, r6, #0x10
	add r0, r4, #0
	add r1, #0x3f
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy60_21e7b80
	lsl r1, r6, #0x10
	ldrh r3, [r4, #4]
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02008268
	b _021E63D8
_021E63C6:
	add r5, #0x4e
	ldrh r1, [r4, r5]
	lsl r2, r6, #0x10
	add r0, r4, #0
	add r1, #0x41
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy60_21e7b80
_021E63D8:
	b _021E62C6
_021E63DA:
	add r0, r4, #0
	bl ovy60_21e5f88
	b _021E61F6
_021E63E2:
	mov r5, #0x29
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021E6426
	ldrh r1, [r0, #2]
	add r0, r5, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	strh r1, [r0]
	ldr r0, [r4, r5]
	ldrh r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x3c
	ldr r0, [r4, r0]
	strh r1, [r0]
	ldr r0, [r4, r5]
	ldrh r1, [r0, #6]
	add r0, r5, #0
	add r0, #0x40
	ldr r0, [r4, r0]
	strh r1, [r0]
	ldr r0, [r4, r5]
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	strh r1, [r0]
	ldr r0, [r4, r5]
	mov r1, #0xa
	ldr r0, [r0, #8]
	blx sub_0208D868
	b _021E644A
_021E6426:
	add r0, r5, #0
	add r0, #0x38
	ldr r0, [r4, r0]
	mov r1, #0xff
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0x3c
	ldr r1, [r4, r1]
	mov r0, #0
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0x40
	ldr r1, [r4, r1]
	strh r0, [r1]
	add r1, r5, #0
	add r1, #0x44
	ldr r1, [r4, r1]
	strh r0, [r1]
_021E644A:
	add r5, #0x48
	ldr r1, [r4, r5]
	add sp, #8
	strh r0, [r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6456:
	mov r6, #0x8f
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_02021A3C
	sub r0, r6, #4
	ldrb r0, [r4, r0]
	ldr r5, [r4, r6]
	cmp r0, #0
	beq _021E6490
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021E6490
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_02048244
	mov r1, #0
	sub r0, r6, #4
	strb r1, [r4, r0]
_021E6490:
	mov r5, #9
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E64A8: .word 0x021E8A4C
_021E64AC: .word 0x00000655
	thumb_func_end ovy60_21e6140

	thumb_func_start ovy60_21e64b0
ovy60_21e64b0: ; 0x021E64B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r0, #8
	bhi _021E6566
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E64C8: ; jump table
	.short _021E64DA - _021E64C8 - 2 ; case 0
	.short _021E666E - _021E64C8 - 2 ; case 1
	.short _021E64E2 - _021E64C8 - 2 ; case 2
	.short _021E651C - _021E64C8 - 2 ; case 3
	.short _021E6552 - _021E64C8 - 2 ; case 4
	.short _021E6554 - _021E64C8 - 2 ; case 5
	.short _021E659A - _021E64C8 - 2 ; case 6
	.short _021E65FE - _021E64C8 - 2 ; case 7
	.short _021E6606 - _021E64C8 - 2 ; case 8
_021E64DA:
	add r0, r4, #0
	bl ovy60_21e5e94
	b _021E666E
_021E64E2:
	mov r0, #0
	mov r6, #0
	bl ovy60_21e7e84
	mov r5, #2
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	bl sub_0204826C
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x5c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x30
	ldr r0, [r4, r5]
	bl sub_02025A38
	strb r6, [r4]
	b _021E666E
_021E651C:
	mov r5, #1
	mov r0, #1
	bl ovy60_21e7e84
	lsl r0, r5, #9
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r5, #0x97
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldrh r0, [r4, #4]
	mov r1, #1
	mov r2, #9
	str r0, [sp]
	ldr r0, _021E66C0 ; =0x021E8A4C
	mov r3, #0
	bl sub_020254E0
	sub r5, #0x44
	str r0, [r4, r5]
	mov r0, #5
_021E654E:
	strb r0, [r4]
	b _021E666E
_021E6552:
	b _021E651C
_021E6554:
	mov r5, #0x86
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E6568
_021E6566:
	b _021E666E
_021E6568:
	cmp r0, #0
	bne _021E6590
	mov r0, #6
	strb r0, [r4]
	mov r0, #1
	mov r6, #1
	bl ovy60_21e7e84
	add r5, #0x18
	ldr r0, [r4, r5]
	bl sub_02025A38
	lsl r0, r6, #9
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	b _021E666E
_021E6590:
	sub r1, r1, #1
	cmp r0, r1
	bne _021E666E
	mov r0, #2
	b _021E654E
_021E659A:
	ldrh r1, [r4, #4]
	mov r0, #0x40
	bl GFL_StrBufCreate
	mov r5, #0x29
	add r7, sp, #8
	lsl r5, r5, #4
	add r6, r0, #0
	ldr r0, [r4, r5]
	mov r1, #4
	ldr r0, [r0, #0x18]
	add r2, r7, #0
	bl sub_020370EC
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02048614
	ldr r0, [r4, r5]
	mov r1, #2
	ldr r0, [r0, #0x18]
	mov r2, #0
	mov r7, #2
	bl sub_020370EC
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	sub r0, #0x70
	ldr r0, [r4, r0]
	mov r1, #2
	add r2, r6, #0
	bl sub_0202437C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r5, #0x6e
	ldrh r1, [r4, r5]
	add r0, r4, #0
	bl ovy60_21e7bc8
	mov r0, #7
	strb r0, [r4]
	mov r0, #8
	strb r0, [r4, #1]
	b _021E666E
_021E65FE:
	add r0, r4, #0
	bl ovy60_21e5f88
	b _021E654E
_021E6606:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E663E
	ldrh r2, [r1, #2]
	add r1, r0, #0
	add r1, #0x38
	ldr r1, [r4, r1]
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x3c
	ldr r1, [r4, r1]
	mov r2, #0
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x40
	ldr r1, [r4, r1]
	strh r2, [r1]
	ldr r1, [r4, r0]
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0x44
	ldr r1, [r4, r1]
	strh r2, [r1]
	ldr r1, [r4, r0]
	ldr r1, [r1, #8]
	b _021E6662
_021E663E:
	add r1, r0, #0
	add r1, #0x38
	ldr r1, [r4, r1]
	mov r2, #0xff
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x3c
	ldr r2, [r4, r2]
	mov r1, #0
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x40
	ldr r2, [r4, r2]
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x44
	ldr r2, [r4, r2]
	strh r1, [r2]
_021E6662:
	add r0, #0x48
	ldr r0, [r4, r0]
	add sp, #0x18
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E666E:
	mov r6, #0x8f
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_02021A3C
	sub r0, r6, #4
	ldrb r0, [r4, r0]
	ldr r5, [r4, r6]
	cmp r0, #0
	beq _021E66A8
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021E66A8
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_02048244
	mov r1, #0
	sub r0, r6, #4
	strb r1, [r4, r0]
_021E66A8:
	mov r5, #9
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E66C0: .word 0x021E8A4C
	thumb_func_end ovy60_21e64b0

	thumb_func_start ovy60_21e66c4
ovy60_21e66c4: ; 0x021E66C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r0, #9
	bls _021E66D2
	b _021E6834
_021E66D2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E66DE: ; jump table
	.short _021E66F2 - _021E66DE - 2 ; case 0
	.short _021E6706 - _021E66DE - 2 ; case 1
	.short _021E6834 - _021E66DE - 2 ; case 2
	.short _021E670E - _021E66DE - 2 ; case 3
	.short _021E6748 - _021E66DE - 2 ; case 4
	.short _021E679C - _021E66DE - 2 ; case 5
	.short _021E67D2 - _021E66DE - 2 ; case 6
	.short _021E67D4 - _021E66DE - 2 ; case 7
	.short _021E67F8 - _021E66DE - 2 ; case 8
	.short _021E6800 - _021E66DE - 2 ; case 9
_021E66F2:
	ldr r1, _021E6884 ; =0x000002FA
	add r0, r4, #0
	ldrh r1, [r4, r1]
	bl ovy60_21e7c94
_021E66FC:
	mov r0, #8
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	b _021E6834
_021E6706:
	add r0, r4, #0
	bl ovy60_21e5ee0
	b _021E6834
_021E670E:
	mov r0, #0
	bl ovy60_21e7e84
	mov r5, #2
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	bl sub_0204826C
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #1
	mov r6, #1
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x5c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x30
	ldr r0, [r4, r5]
	bl sub_02025A38
	strb r6, [r4]
	b _021E6834
_021E6748:
	mov r5, #0xba
	lsl r5, r5, #2
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [r4, r5]
	add r0, r4, #0
	blx r3
	add r0, r5, #0
	mov r1, #0
	add r0, #0x20
	str r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x84
	ldr r0, [r4, r0]
	bl sub_0204C124
	add r0, r4, #0
	bl ovy60_21e7b68
	add r1, r5, #0
	add r2, r5, #0
	add r1, #8
	add r2, #0xc
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ovy60_21e7974
	add r0, r5, #0
	sub r0, #0xe8
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add r5, #0x16
	ldrh r1, [r4, r5]
	add r0, r4, #0
	bl ovy60_21e7bc8
	b _021E66FC
_021E679C:
	mov r5, #1
	mov r0, #1
	bl ovy60_21e7e84
	lsl r0, r5, #9
	ldr r0, [r4, r0]
	bl sub_0204826C
	mov r5, #0x97
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldrh r0, [r4, #4]
	mov r1, #1
	mov r2, #9
	str r0, [sp]
	ldr r0, _021E6888 ; =0x021E8A4C
	mov r3, #0
	bl sub_020254E0
	sub r5, #0x44
	str r0, [r4, r5]
	mov r0, #7
_021E67CE:
	strb r0, [r4]
	b _021E6834
_021E67D2:
	b _021E679C
_021E67D4:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E6834
	cmp r0, #0
	bne _021E67EE
	mov r0, #4
	b _021E67CE
_021E67EE:
	sub r1, r1, #1
	cmp r0, r1
	bne _021E6834
	mov r0, #3
	b _021E67CE
_021E67F8:
	add r0, r4, #0
	bl ovy60_21e5f88
	b _021E67CE
_021E6800:
	mov r5, #0xbb
	lsl r5, r5, #2
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [r4, r5]
	add r0, r4, #0
	blx r3
	add r0, r5, #0
	add r0, #0x38
	add r5, #0x28
	add r0, r4, r0
	add r1, r4, r5
	mov r2, #0x10
	bl sub_02043E98
	mov r1, #1
	cmp r0, #0
	bne _021E6826
	mov r1, #0
_021E6826:
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add sp, #4
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E6834:
	mov r6, #0x8f
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_02021A3C
	sub r0, r6, #4
	ldrb r0, [r4, r0]
	ldr r5, [r4, r6]
	cmp r0, #0
	beq _021E686E
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021E686E
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_02048244
	mov r1, #0
	sub r0, r6, #4
	strb r1, [r4, r0]
_021E686E:
	mov r5, #9
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	ldr r0, [r4, r5]
	bl sub_0203A7F4
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E6884: .word 0x000002FA
_021E6888: .word 0x021E8A4C
	thumb_func_end ovy60_21e66c4

	thumb_func_start ovy60_21e688c
ovy60_21e688c: ; 0x021E688C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldrh r3, [r5, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x40
	mov r7, #0
	bl GFL_MsgSysLoadData
	ldr r2, _021E6A24 ; =0x00000261
	str r0, [sp, #0x10]
	ldrh r3, [r5, #4]
	mov r0, #0
	mov r1, #3
	str r2, [sp, #0x1c]
	bl GFL_MsgSysLoadData
	str r0, [sp, #0xc]
	ldrh r3, [r5, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x3f
	bl GFL_MsgSysLoadData
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, #0x47
	add r1, #0x4b
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_020397F8
	str r0, [sp, #0x14]
	ldrh r1, [r5, #4]
	add r0, r0, #1
	bl sub_02024F60
	ldr r1, [sp, #0x1c]
	sub r1, #0x4d
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _021E69EA
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x2c]
	sub r0, #0x4d
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	add r0, #0x9f
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x24]
	add r0, #0x47
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	add r0, #0x4b
	str r0, [sp, #0x1c]
_021E6908:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	ldr r0, [r5, r0]
	lsl r2, r2, #0x10
	ldr r1, [r5, r1]
	lsr r2, r2, #0x10
	bl sub_020397D4
	add r6, r0, #0
	mov r1, #4
	bl sub_0203981C
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	bl sub_0203981C
	cmp r0, #0
	beq _021E6938
	ldr r0, [sp, #0x28]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E69DE
_021E6938:
	mov r0, #0x1c
	mul r0, r7
	add r4, r5, r0
	ldr r0, [sp, #0x18]
	mov r1, #5
	strh r0, [r4, #0x18]
	add r0, r6, #0
	bl sub_0203981C
	strh r0, [r4, #0x1a]
	ldr r2, [sp, #4]
	mov r1, #0xa
	add r0, r5, #0
	mul r1, r2
	bl ovy60_21e8758
	str r0, [r4, #0x20]
	add r0, r6, #0
	mov r1, #6
	bl sub_0203981C
	strh r0, [r4, #0x1c]
	add r0, r6, #0
	mov r1, #7
	bl sub_0203981C
	strh r0, [r4, #0x1e]
	add r0, r6, #0
	mov r1, #1
	bl sub_0203981C
	cmp r0, #0
	beq _021E69AC
	add r0, r6, #0
	mov r1, #2
	bl sub_0203981C
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #3
	bl sub_0203981C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	bl sub_0204898C
	str r0, [r4, #0x24]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	bl sub_0204898C
	str r0, [r4, #0x28]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_0204898C
	b _021E69C8
_021E69AC:
	ldrh r1, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	bl sub_0204898C
	str r0, [r4, #0x24]
	ldrh r1, [r4, #0x1c]
	ldr r0, [sp, #0x10]
	bl sub_0204898C
	str r0, [r4, #0x28]
	ldrh r1, [r4, #0x1c]
	ldr r0, [sp, #8]
	bl sub_0204898C
_021E69C8:
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	ldrh r3, [r5, #4]
	ldr r1, [r5, r0]
	lsl r0, r7, #3
	add r0, r1, r0
	ldr r1, [r4, #0x24]
	add r2, r7, #0
	bl sub_02024FDC
	add r7, r7, #1
_021E69DE:
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _021E6908
_021E69EA:
	mov r1, #0x7d
	lsl r1, r1, #2
	strh r7, [r5, r1]
	ldrh r0, [r5, #4]
	mov r3, #0xc
	sub r3, #0xe
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r5, r0]
	add r1, #0x28
	lsl r0, r7, #3
	add r0, r2, r0
	ldr r1, [r5, r1]
	mov r2, #0xc
	bl sub_02024FBC
	ldr r0, [sp, #8]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0xc]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0x10]
	bl GFL_MsgDataFree
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6A24: .word 0x00000261
	thumb_func_end ovy60_21e688c

	thumb_func_start ovy60_21e6a28
ovy60_21e6a28: ; 0x021E6A28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203889C
	str r0, [sp, #0x18]
	ldrh r1, [r5, #4]
	add r0, r0, #1
	bl sub_02024F60
	mov r1, #0xae
	lsl r1, r1, #2
	sub r1, #0xa4
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x5c]
	sub r0, #0x9c
	str r0, [sp, #0x5c]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x58]
	sub r0, #0x9c
	str r0, [sp, #0x58]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x54]
	sub r0, #0x98
	str r0, [sp, #0x54]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x50]
	sub r0, #0x98
	str r0, [sp, #0x50]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x4c]
	sub r0, #0x98
	str r0, [sp, #0x4c]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x48]
	sub r0, #0x98
	str r0, [sp, #0x48]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x44]
	sub r0, #0x98
	str r0, [sp, #0x44]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x40]
	sub r0, #0x98
	str r0, [sp, #0x40]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x3c]
	sub r0, #0x98
	str r0, [sp, #0x3c]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x38]
	sub r0, #0xa4
	str r0, [sp, #0x38]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x34]
	add r0, #0x5c
	str r0, [sp, #0x34]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x30]
	add r0, #0x6c
	mov r6, #0
	str r0, [sp, #0x30]
_021E6AC8:
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	bl sub_0203888C
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x34]
	lsl r1, r1, #1
	add r2, r5, r1
	ldr r1, [sp, #0x1c]
	add r7, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	strh r1, [r2, r3]
	ldr r3, [sp, #0x30]
	strh r1, [r2, r3]
	bl sub_020384E0
	cmp r0, #0
	beq _021E6AF4
	b _021E6C5C
_021E6AF4:
	mov r0, #0x1c
	mul r0, r6
	add r4, r5, r0
	ldr r0, [sp, #0x1c]
	mov r1, #3
	strh r0, [r4, #0x18]
	mov r0, #0
	strh r0, [r4, #0x1a]
	str r0, [r4, #0x20]
	add r0, r7, #0
	mov r2, #0
	bl sub_020385A8
	strh r0, [r4, #0x1c]
	mov r0, #0
	strh r0, [r4, #0x1e]
	add r0, r7, #0
	mov r1, #0x15
	mov r2, #0
	str r7, [r4, #0x30]
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0x17
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	mov r1, #0x23
	ldr r0, [r5, r0]
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0x25
	bl sub_0204898C
	str r0, [sp, #0x24]
	add r0, r7, #0
	mov r1, #2
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #4
	add r2, sp, #0x60
	bl sub_020385A8
	ldrh r1, [r5, #4]
	mov r0, #8
	bl GFL_StrBufCreate
	add r1, sp, #0x60
	add r7, r0, #0
	bl sub_02048614
	ldrh r1, [r5, #4]
	mov r0, #0x40
	bl GFL_StrBufCreate
	str r0, [sp, #0x28]
	ldrh r1, [r5, #4]
	mov r0, #0x80
	bl GFL_StrBufCreate
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r6, #1
	mov r3, #1
	bl StringSetNumber
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	ldr r3, [sp, #8]
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_0202437C
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x28]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	bl GFL_WordSetFormatStrbuf
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r1, #4
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #5
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #6
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x2c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x24]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x28]
	str r0, [r4, #0x24]
	ldrh r1, [r5, #4]
	add r0, r7, #0
	bl sub_020485A4
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x38]
	ldrh r3, [r5, #4]
	ldr r1, [r5, r0]
	lsl r0, r6, #3
	add r0, r1, r0
	ldr r1, [r4, #0x24]
	add r2, r6, #0
	bl sub_02024FDC
	add r6, r6, #1
_021E6C5C:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	bge _021E6C68
	b _021E6AC8
_021E6C68:
	mov r1, #0x7d
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldrh r0, [r5, #4]
	mov r3, #0xc
	sub r3, #0xe
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r5, r0]
	add r1, #0x28
	lsl r0, r6, #3
	add r0, r2, r0
	ldr r1, [r5, r1]
	mov r2, #0xc
	bl sub_02024FBC
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e6a28

	thumb_func_start ovy60_21e6c90
ovy60_21e6c90: ; 0x021E6C90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02038868
	str r0, [sp, #8]
	ldrh r1, [r5, #4]
	add r0, r0, #1
	bl sub_02024F60
	mov r1, #0xae
	lsl r1, r1, #2
	sub r1, #0xa4
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp, #0x28]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #0xae
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x24]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	add r0, #0x5c
	str r0, [sp, #0x20]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	add r0, #0x6c
	str r0, [sp, #0x1c]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0xa4
	mov r4, #0
	str r0, [sp, #0x18]
_021E6CE6:
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x28]
	bl sub_02038860
	str r0, [sp, #0xc]
	bl sub_02036E44
	cmp r0, #0
	bne _021E6D62
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, r0]
	bl sub_021F1B6C
	str r0, [sp, #0x10]
	lsl r0, r4, #1
	add r1, r5, r0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r1, r2]
	ldr r2, [sp, #0x1c]
	strh r0, [r1, r2]
	mov r1, #0x1c
	mul r1, r4
	add r7, r5, r1
	strh r0, [r7, #0x18]
	mov r0, #0
	strh r0, [r7, #0x1a]
	str r0, [r7, #0x20]
	str r1, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #3
	mov r2, #0
	bl sub_020370EC
	strh r0, [r7, #0x1c]
	mov r0, #0
	strh r0, [r7, #0x1e]
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x14]
	ldr r3, [sp, #4]
	str r0, [r7, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, r3
	bl ovy60_21e8190
	ldr r0, [sp, #0x18]
	ldrh r3, [r5, #4]
	ldr r1, [r5, r0]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r1, [r7, #0x24]
	add r2, r4, #0
	bl sub_02024FDC
	add r4, r4, #1
_021E6D62:
	ldr r0, [sp, #0x28]
	sub r0, r0, #1
	str r0, [sp, #0x28]
	bpl _021E6CE6
	mov r1, #0x7d
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldrh r0, [r5, #4]
	mov r3, #0xc
	sub r3, #0xe
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r5, r0]
	add r1, #0x28
	lsl r0, r4, #3
	add r0, r2, r0
	ldr r1, [r5, r1]
	mov r2, #0xc
	bl sub_02024FBC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e6c90

	thumb_func_start ovy60_21e6d94
ovy60_21e6d94: ; 0x021E6D94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	mov r2, #0xc1
	add r5, r0, #0
	lsl r2, r2, #2
	ldrb r1, [r5, r2]
	add r3, r5, #0
	mov r0, #0x1c
	add r3, #0x18
	mul r0, r1
	add r6, r3, r0
	add r4, r6, #0
	add r7, sp, #0x5c
	ldmia r4!, {r0, r1}
	add r3, r7, #0
	stmia r7!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [r4]
	str r0, [r7]
	add r0, r2, #1
	ldrb r1, [r5, r0]
	mov r0, #0x1c
	mul r0, r1
	add r4, r5, r0
	add r4, #0x18
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4]
	str r0, [r6]
	add r0, r2, #1
	ldrb r1, [r5, r0]
	mov r0, #0x1c
	mul r0, r1
	add r4, r5, r0
	ldmia r3!, {r0, r1}
	add r4, #0x18
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r3]
	str r0, [r4]
	add r0, r2, #0
	mov r4, #0
	sub r0, #0x74
	sub r2, #0xf0
	str r4, [r5, r0]
	ldr r0, [r5, r2]
	bl sub_02024FAC
	mov r0, #0x7d
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	ldrh r0, [r5, r0]
	ldrh r1, [r5, #4]
	add r0, r0, #1
	bl sub_02024F60
	ldr r1, [sp, #0x20]
	add r1, #0x20
	str r0, [r5, r1]
	ldr r0, [sp, #0x20]
	ldrh r0, [r5, r0]
	cmp r0, #0
	bgt _021E6E28
	b _021E6FB6
_021E6E28:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x48]
	add r0, #0x2c
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x44]
	add r0, #0x2c
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x40]
	add r0, #0x2c
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	add r0, #0x2c
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x38]
	add r0, #0x2c
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x34]
	add r0, #0x20
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r5, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x2c]
	add r0, #0x28
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x28]
	add r0, #0x28
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, #0x2c
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0x2c
	str r0, [sp, #0x20]
_021E6E7C:
	mov r0, #0x1c
	mul r0, r4
	add r7, r5, r0
	ldr r0, [sp, #0x2c]
	mov r1, #0x23
	ldr r0, [r5, r0]
	ldr r6, [r7, #0x30]
	bl sub_0204898C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x25
	bl sub_0204898C
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #4
	add r2, sp, #0x4c
	bl sub_020385A8
	ldrh r1, [r5, #4]
	mov r0, #8
	bl GFL_StrBufCreate
	add r1, sp, #0x4c
	add r6, r0, #0
	bl sub_02048614
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #1
	ldr r0, [r5, r0]
	add r2, r4, #1
	mov r3, #1
	bl StringSetNumber
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	bl sub_0202437C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #4
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #5
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #8]
	ldr r0, [r5, r0]
	mov r1, #6
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x3c]
	ldr r1, [r7, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r7, #0x28]
	add r0, r6, #0
	bl sub_02048580
	ldr r0, [sp, #0x38]
	ldr r1, [r7, #0x2c]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x1c]
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x34]
	ldrh r3, [r5, #4]
	ldr r1, [r5, r0]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r1, [r7, #0x24]
	add r2, r4, #0
	bl sub_02024FDC
	ldr r0, [sp, #0x30]
	add r4, r4, #1
	ldrh r0, [r0]
	cmp r4, r0
	bge _021E6FB6
	b _021E6E7C
_021E6FB6:
	ldrh r0, [r5, #4]
	mov r1, #0x85
	mov r3, #0xc
	str r0, [sp]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r1, #8
	lsl r0, r4, #3
	add r0, r2, r0
	ldr r1, [r5, r1]
	mov r2, #0xc
	sub r3, #0xe
	bl sub_02024FBC
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e6d94

	thumb_func_start ovy60_21e6fd8
ovy60_21e6fd8: ; 0x021E6FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r2, #0xc1
	add r5, r0, #0
	lsl r2, r2, #2
	ldrb r1, [r5, r2]
	add r3, r5, #0
	mov r0, #0x1c
	add r3, #0x18
	mul r0, r1
	add r6, r3, r0
	add r4, r6, #0
	add r7, sp, #0x14
	ldmia r4!, {r0, r1}
	add r3, r7, #0
	stmia r7!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [r4]
	str r0, [r7]
	add r0, r2, #1
	ldrb r1, [r5, r0]
	mov r0, #0x1c
	mul r0, r1
	add r4, r5, r0
	add r4, #0x18
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4]
	str r0, [r6]
	add r0, r2, #1
	ldrb r1, [r5, r0]
	mov r0, #0x1c
	mul r0, r1
	add r4, r5, r0
	ldmia r3!, {r0, r1}
	add r4, #0x18
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r3]
	str r0, [r4]
	add r0, r2, #0
	mov r4, #0
	sub r0, #0x74
	sub r2, #0xf0
	str r4, [r5, r0]
	ldr r0, [r5, r2]
	bl sub_02024FAC
	mov r6, #0x7d
	lsl r6, r6, #2
	ldrh r0, [r5, r6]
	ldrh r1, [r5, #4]
	add r0, r0, #1
	bl sub_02024F60
	add r1, r6, #0
	add r1, #0x20
	str r0, [r5, r1]
	ldrh r0, [r5, r6]
	cmp r0, #0
	ble _021E70BE
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0xc8
	str r0, [sp, #0x10]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	add r0, r5, r6
	str r0, [sp, #8]
_021E7082:
	mov r0, #0x1c
	add r7, r4, #0
	mul r7, r0
	ldr r0, [sp, #0x10]
	add r6, r5, r7
	ldr r0, [r5, r0]
	ldr r1, [r6, #0x30]
	bl sub_021F1B6C
	ldr r3, [sp, #4]
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r3, r7
	bl ovy60_21e8190
	ldr r0, [sp, #0xc]
	ldrh r3, [r5, #4]
	ldr r1, [r5, r0]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r1, [r6, #0x24]
	add r2, r4, #0
	bl sub_02024FDC
	ldr r0, [sp, #8]
	add r4, r4, #1
	ldrh r0, [r0]
	cmp r4, r0
	blt _021E7082
_021E70BE:
	ldrh r0, [r5, #4]
	mov r1, #0x85
	mov r3, #0xc
	str r0, [sp]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r1, #8
	lsl r0, r4, #3
	add r0, r2, r0
	ldr r1, [r5, r1]
	mov r2, #0xc
	sub r3, #0xe
	bl sub_02024FBC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e6fd8

	thumb_func_start ovy60_21e70e0
ovy60_21e70e0: ; 0x021E70E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02024FAC
	mov r4, #0
	add r7, r4, #0
_021E70F2:
	mov r0, #0x1c
	mul r0, r4
	add r5, r6, r0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021E7104
	bl GFL_StrBufFree
	str r7, [r5, #0x2c]
_021E7104:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021E7112
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r5, #0x28]
_021E7112:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021E7120
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r5, #0x24]
_021E7120:
	add r4, r4, #1
	cmp r4, #0x11
	blt _021E70F2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e70e0

	thumb_func_start ovy60_21e7128
ovy60_21e7128: ; 0x021E7128
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, _021E7174 ; =0x00000262
	ldrh r3, [r5, #4]
	add r6, r1, #0
	mov r0, #0
	mov r1, #3
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	sub r1, #0x46
	str r0, [r5, r1]
	ldrh r2, [r5, #4]
	mov r0, #8
	mov r1, #0x40
	bl sub_020241E4
	add r1, r4, #0
	sub r1, #0x42
	str r0, [r5, r1]
	ldrh r1, [r5, #4]
	mov r0, #0xc8
	bl GFL_StrBufCreate
	add r1, r4, #0
	sub r1, #0x3a
	str r0, [r5, r1]
	ldrh r0, [r5, #4]
	mov r2, #0x20
	mov r3, #0x20
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	sub r4, #0x22
	str r0, [r5, r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E7174: .word 0x00000262
	thumb_func_end ovy60_21e7128

	thumb_func_start ovy60_21e7178
ovy60_21e7178: ; 0x021E7178
	push {r3, r4, r5, lr}
	mov r4, #9
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E71A4
	bl sub_0202E818
	mov r0, #0
	add r4, #8
	str r0, [r5, r4]
_021E71A4:
	mov r4, #0x8a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	sub r4, #0xc
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e7178

	thumb_func_start ovy60_21e71c8
ovy60_21e71c8: ; 0x021E71C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021E7270 ; =0x04000050
	mov r0, #0
	strh r0, [r1]
	ldrh r1, [r5, #4]
	mov r0, #0x35
	bl sub_0204AA30
	mov r1, #0x60
	str r1, [sp]
	ldrh r1, [r5, #4]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r4, r0, #0
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	mov r1, #0
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r7, #0x64
	mov r3, #0x64
	bl sub_0204ADA8
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldrh r0, [r5, #4]
	mov r1, #2
	mov r2, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	ldrh r0, [r5, #4]
	mov r1, #0xe4
	mov r2, #9
	str r0, [sp]
	mov r0, #1
	mov r3, #0
	bl sub_02024D00
	mov r0, #1
	bl sub_02045738
	mov r0, #2
	mov r1, #1
	bl sub_02044BD8
	sub r0, r6, #1
	cmp r0, #1
	bhi _021E726A
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #2
	bl sub_02044F90
_021E726A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7270: .word 0x04000050
	thumb_func_end ovy60_21e71c8

	thumb_func_start ovy60_21e7274
ovy60_21e7274: ; 0x021E7274
	push {r3, lr}
	mov r0, #1
	bl sub_02045738
	mov r0, #2
	bl sub_02045738
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	mov r0, #1
	bl sub_0218A598
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7274

	thumb_func_start ovy60_21e7294
ovy60_21e7294: ; 0x021E7294
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5, #4]
	mov r0, #0x35
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldrh r1, [r5, #4]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #0xb
	add r6, r0, #0
	bl sub_0204BBB8
	mov r4, #0x9a
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldrh r0, [r5, #4]
	mov r1, #8
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r4, #4
	str r0, [r5, r1]
	ldrh r0, [r5, #4]
	mov r1, #5
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r4, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldrh r3, [r5, #4]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0xa
	bl sub_0204BDE0
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	ldrh r3, [r5, #4]
	add r0, r6, #0
	mov r1, #6
	mov r2, #7
	bl sub_0204BDE0
	add r4, #0x14
	str r0, [r5, r4]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7294

	thumb_func_start ovy60_21e7318
ovy60_21e7318: ; 0x021E7318
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	mov r1, #2
	mov r5, #1
	bl sub_02026670
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldrh r0, [r4, #4]
	mov r5, #0xa3
	lsl r5, r5, #2
	str r0, [sp, #8]
	ldr r0, [r4, r5]
	mov r2, #0
	mov r3, #0x40
	bl sub_0204BBB8
	add r1, r5, #0
	sub r1, #0xc
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #1
	bl sub_02026670
	add r1, r0, #0
	ldrh r0, [r4, #4]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, r5]
	bl sub_0204B81C
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	ldrh r3, [r4, #4]
	ldr r0, [r4, r5]
	mov r1, #1
	mov r2, #0
	bl sub_0204BDE0
	sub r1, r5, #4
	str r0, [r4, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7318

	thumb_func_start ovy60_21e737c
ovy60_21e737c: ; 0x021E737C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021E7400 ; =0x0000027E
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, r4
	bhi _021E73F2
	add r0, r6, #0
	mov r1, #2
	bl sub_02026670
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xe
	ldrh r3, [r5, #4]
	ldr r0, [r5, r0]
	add r2, sp, #4
	bl sub_0204B37C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_02026670
	add r1, r0, #0
	ldrh r0, [r5, #4]
	mov r2, #0
	add r3, sp, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xe
	ldr r0, [r5, r0]
	bl sub_0204B2DC
	add r6, r0, #0
	add r0, r4, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	mov r2, #1
	bl sub_0204BD10
	add r0, r4, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #8]
	bl sub_0204BA40
	add r0, r7, #0
	bl sub_0203A24C
	add r0, r6, #0
	bl sub_0203A24C
	sub r4, #0x1e
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E73F2:
	sub r4, #0x1e
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7400: .word 0x0000027E
	thumb_func_end ovy60_21e737c

	thumb_func_start ovy60_21e7404
ovy60_21e7404: ; 0x021E7404
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021E746C ; =0x0000FFFF
	add r4, r1, #0
	cmp r4, r0
	beq _021E745C
	ldrh r1, [r5, #4]
	mov r0, #0x2f
	bl sub_0204AA30
	add r3, sp, #0x14
	add r6, r0, #0
	add r1, r4, #0
	add r2, sp, #0x14
	add r3, #2
	bl ovy60_21e8720
	add r0, r6, #0
	bl sub_0204AB0C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #4]
	mov r4, #0x26
	add r3, sp, #0x14
	str r0, [sp, #0x10]
	lsl r4, r4, #4
	ldrh r2, [r3, #2]
	ldrb r3, [r3]
	ldr r0, [r5, r4]
	mov r1, #0x30
	bl sub_020164E8
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021E745C:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E746C: .word 0x0000FFFF
	thumb_func_end ovy60_21e7404

	thumb_func_start ovy60_21e7470
ovy60_21e7470: ; 0x021E7470
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E75A4 ; =0x021E8B50
	mov r6, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, #4]
	mov r4, #0x93
	lsl r4, r4, #2
	add r7, r1, #0
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x20
	add r2, #0x1c
	add r3, #0x24
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #4
	str r0, [r5, r1]
	ldr r0, _021E75A8 ; =0x021E8B58
	add r1, r4, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, #4]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x2c
	add r2, #0x1c
	add r3, #0x30
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r0, _021E75AC ; =0x021E8B60
	add r1, r4, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, #4]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x2c
	add r2, #0x1c
	add r3, #0x30
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	ldr r0, _021E75B0 ; =0x021E8B68
	add r1, r4, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, #4]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x2c
	add r2, #0x1c
	add r3, #0x30
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
	str r7, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, #4]
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x38
	add r2, #0x34
	add r3, #0x3c
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x14
	str r0, [r5, r1]
	mov r1, #0
	mov r2, #1
	bl sub_0204C378
	ldr r0, _021E75B4 ; =0x021E8B80
	add r1, r4, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, #4]
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x20
	add r2, #0x1c
	add r3, #0x24
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, #0x10
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E75A4: .word 0x021E8B50
_021E75A8: .word 0x021E8B58
_021E75AC: .word 0x021E8B60
_021E75B0: .word 0x021E8B68
_021E75B4: .word 0x021E8B80
	thumb_func_end ovy60_21e7470

	thumb_func_start ovy60_21e75b8
ovy60_21e75b8: ; 0x021E75B8
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	mov r0, #6
	mov r1, #1
	bl sub_0204BF1C
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #1
	bl sub_0204BFD4
	add r0, r4, #0
	bl ovy60_21e7294
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy60_21e75b8

	thumb_func_start ovy60_21e75dc
ovy60_21e75dc: ; 0x021E75DC
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #4]
	mov r0, #0x19
	bl sub_0204AA30
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy60_21e7318
	ldr r1, _021E7600 ; =0x021E8B70
	add r0, r4, #0
	bl ovy60_21e7470
	pop {r4, pc}
	nop
_021E7600: .word 0x021E8B70
	thumb_func_end ovy60_21e75dc

	thumb_func_start ovy60_21e7604
ovy60_21e7604: ; 0x021E7604
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r1, [r5, #4]
	mov r0, #0x1f
	bl sub_0204AA30
	mov r4, #0xa3
	lsl r4, r4, #2
	str r0, [r5, r4]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	mov r3, #0x40
	bl sub_0204BBB8
	add r1, r4, #0
	sub r1, #0xc
	str r0, [r5, r1]
	ldrh r0, [r5, #4]
	mov r1, #0x31
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, r4]
	mov r3, #0
	bl sub_0204B81C
	add r1, r4, #0
	sub r1, #8
	str r0, [r5, r1]
	ldrh r3, [r5, #4]
	ldr r0, [r5, r4]
	mov r1, #0x41
	mov r2, #0x42
	bl sub_0204BDE0
	sub r1, r4, #4
	str r0, [r5, r1]
	ldr r1, _021E7668 ; =0x021E8B78
	add r0, r5, #0
	bl ovy60_21e7470
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021E7668: .word 0x021E8B78
	thumb_func_end ovy60_21e7604

	thumb_func_start ovy60_21e766c
ovy60_21e766c: ; 0x021E766C
	push {r3, r4, r5, lr}
	mov r4, #0xa2
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204BE64
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0204BE64
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204AB0C
	sub r4, #0x3c
	ldr r0, [r5, r4]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e766c

	thumb_func_start ovy60_21e76d0
ovy60_21e76d0: ; 0x021E76D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _021E774C ; =0x021E8BA0
	add r5, r0, #0
	mov r4, #0
_021E76DA:
	lsl r6, r4, #2
	ldr r3, [r7, r6]
	ldrb r0, [r3, #7]
	str r0, [sp]
	ldrh r0, [r3, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r3]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	lsl r0, r0, #0x18
	ldrb r3, [r3, #6]
	lsr r0, r0, #0x18
	bl sub_020480C0
	mov r1, #0x7e
	add r2, r5, r6
	lsl r1, r1, #2
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #7
	blt _021E76DA
	add r4, r1, #0
	add r4, #8
	add r0, r4, #0
	ldr r1, [r5, r4]
	add r0, #0x34
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x38
	strb r1, [r5, r0]
	ldrh r0, [r5, #4]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x3c
	str r0, [r5, r1]
	sub r0, r4, #4
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E774C: .word 0x021E8BA0
	thumb_func_end ovy60_21e76d0

	thumb_func_start ovy60_21e7750
ovy60_21e7750: ; 0x021E7750
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r4, #0x87
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0x1a
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #0
	sub r0, #0x24
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #8]
	mov r2, #0
	str r1, [sp]
	ldr r1, _021E77A4 ; =0x00003C4F
	add r3, r6, #0
	str r1, [sp, #4]
	mov r1, #0
	bl sub_02021D28
	add r0, r6, #0
	bl GFL_StrBufFree
	sub r4, #0x24
	ldr r4, [r5, r4]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E77A4: .word 0x00003C4F
	thumb_func_end ovy60_21e7750

	thumb_func_start ovy60_21e77a8
ovy60_21e77a8: ; 0x021E77A8
	push {r4, r5, r6, lr}
	mov r4, #0x8f
	add r6, r0, #0
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	bl sub_02021C44
	ldr r0, [r6, r4]
	bl sub_02021A18
	mov r5, #0
	sub r4, #0x44
_021E77C0:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, r4]
	bl sub_02048210
	add r5, r5, #1
	cmp r5, #7
	blt _021E77C0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e77a8

	thumb_func_start ovy60_21e77d4
ovy60_21e77d4: ; 0x021E77D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x87
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0x1b
	bl sub_0204898C
	add r7, r0, #0
	ldrh r1, [r5, #4]
	mov r0, #0xa
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200C9BC
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #7
	bl StringSetNumber
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	str r0, [sp, #8]
	bl BmpWin_BitmapFill
	ldr r0, [r5, #8]
	mov r1, #0
	str r0, [sp]
	ldr r0, _021E7868 ; =0x00003C4F
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r3, r6, #0
	bl sub_02021D28
	sub r4, #0x20
	ldr r4, [r5, r4]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7868: .word 0x00003C4F
	thumb_func_end ovy60_21e77d4

	thumb_func_start ovy60_21e786c
ovy60_21e786c: ; 0x021E786C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0x87
	str r1, [sp, #8]
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0x1d
	bl sub_0204898C
	add r7, r0, #0
	ldrh r1, [r5, #4]
	mov r0, #0x14
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	mov r1, #2
	mov r2, #0xe4
	mov r3, #9
	bl sub_02024E80
	ldrh r2, [r5, #4]
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #8]
	bl BagSave_GetItemCountByID
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	str r0, [sp, #0xc]
	bl BmpWin_BitmapFill
	ldr r0, [r5, #8]
	mov r1, #0
	str r0, [sp]
	ldr r0, _021E7918 ; =0x0000044F
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	bl sub_02021D28
	sub r4, #0x18
	ldr r4, [r5, r4]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7918: .word 0x0000044F
	thumb_func_end ovy60_21e786c

	thumb_func_start ovy60_21e791c
ovy60_21e791c: ; 0x021E791C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	add r6, r0, #0
	mov r7, #0
	bl BmpWin_BitmapFill
	cmp r4, #0
	beq _021E7952
	ldr r0, [r5, #8]
	add r1, r7, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02021D28
_021E7952:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e791c

	thumb_func_start ovy60_21e7974
ovy60_21e7974: ; 0x021E7974
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r4, #0x85
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_02025060
	add r3, sp, #0
	strh r0, [r3, #0xc]
	mov r0, #7
	strh r0, [r3, #0xe]
	mov r7, #0
	strb r7, [r3, #0x10]
	strb r7, [r3, #0x11]
	strb r7, [r3, #0x12]
	ldrb r2, [r3, #0x13]
	mov r1, #0xf
	mov r0, #8
	bic r2, r1
	orr r0, r2
	strb r0, [r3, #0x13]
	ldrb r6, [r3, #0x13]
	mov r2, #0xf0
	mov r0, #0xc0
	bic r6, r2
	orr r0, r6
	strb r0, [r3, #0x13]
	ldrb r0, [r3, #0x14]
	bic r0, r1
	strb r0, [r3, #0x14]
	ldrb r1, [r3, #0x14]
	mov r0, #0xd0
	bic r1, r2
	orr r0, r1
	strb r0, [r3, #0x14]
	ldrh r1, [r3, #0x16]
	mov r0, #7
	bic r1, r0
	strh r1, [r3, #0x16]
	ldrh r1, [r3, #0x16]
	mov r0, #0x78
	bic r1, r0
	strh r1, [r3, #0x16]
	ldrh r1, [r3, #0x16]
	ldr r0, _021E7A24 ; =0xFFFFFE7F
	and r1, r0
	mov r0, #0x80
	orr r1, r0
	strh r1, [r3, #0x16]
	ldrh r2, [r3, #0x16]
	ldr r1, _021E7A28 ; =0xFFFF81FF
	lsl r0, r0, #8
	and r1, r2
	strh r1, [r3, #0x16]
	ldrh r1, [r3, #0x16]
	mov r2, #0
	orr r0, r1
	strh r0, [r3, #0x16]
	str r5, [sp, #0x18]
	mov r0, #0xc
	strh r0, [r3, #0x1c]
	mov r0, #0x10
	strh r0, [r3, #0x1e]
	add r0, r4, #0
	add r0, #0x20
	add r0, r5, r0
	str r0, [sp, #0x24]
	add r0, r4, #0
	str r7, [sp, #0x20]
	add r0, #0x28
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #0x28]
	ldr r0, [r5, #8]
	str r0, [sp, #0x2c]
	str r7, [sp, #0x30]
	ldrh r3, [r5, #4]
	add r0, sp, #0
	bl sub_020256F0
	add r4, #0x1c
	str r0, [r5, r4]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7A24: .word 0xFFFFFE7F
_021E7A28: .word 0xFFFF81FF
	thumb_func_end ovy60_21e7974

	thumb_func_start ovy60_21e7a2c
ovy60_21e7a2c: ; 0x021E7A2C
	push {r3, r4, lr}
	sub sp, #0xc
	cmp r3, #8
	bgt _021E7A52
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	add r0, sp, #0x18
	ldrh r0, [r0, #8]
	str r0, [sp, #4]
	add r0, r1, #0
	lsl r1, r2, #0x10
	lsl r2, r3, #0x10
	ldr r3, [sp, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0xc
	pop {r3, r4, pc}
_021E7A52:
	ldr r4, [sp, #0x18]
	lsl r2, r2, #0x10
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	lsl r3, r3, #0x10
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrh r4, [r4, #8]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	str r4, [sp, #8]
	bl sub_02021C7C
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy60_21e7a2c

	thumb_func_start ovy60_21e7a70
ovy60_21e7a70: ; 0x021E7A70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r2, [sp, #0xc]
	bl sub_0202651C
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021E7B60
	add r6, r4, #0
	mov r0, #0x1c
	mul r6, r0
	mov r4, #0xad
	add r1, r5, r6
	lsl r4, r4, #2
	ldrh r1, [r1, #0x18]
	ldr r0, [r5, r4]
	bl sub_02036434
	cmp r0, #0
	beq _021E7AEA
	add r0, r4, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	ldr r1, [r5, #8]
	mov r2, #0
	bl sub_02022888
	add r6, r0, #0
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r7, r0, #0
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	sub r4, #0x78
	str r0, [sp]
	ldr r0, [r5, #8]
	sub r2, r7, r6
	str r0, [sp, #4]
	ldr r0, _021E7B64 ; =0x000031A0
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	ldr r3, [sp, #0xc]
	bl ovy60_21e7a2c
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E7AEA:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x94
	add r2, r5, r6
	ldr r0, [r5, r0]
	ldr r2, [r2, #0x20]
	mov r1, #1
	mov r3, #5
	bl StringSetNumber
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	sub r0, #0x94
	sub r1, #0x8c
	sub r2, #0x90
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	sub r0, #0x8c
	ldr r0, [r5, r0]
	ldr r1, [r5, #8]
	mov r2, #0
	bl sub_02022888
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #9
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r7, r0, #0
	mov r0, #1
	lsl r0, r0, #9
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	sub r0, #0x8c
	ldr r0, [r5, r0]
	sub r4, #0x78
	str r0, [sp]
	ldr r0, [r5, #8]
	sub r2, r7, r6
	str r0, [sp, #4]
	ldr r0, _021E7B64 ; =0x000031A0
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	ldr r3, [sp, #0xc]
	bl ovy60_21e7a2c
_021E7B60:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7B64: .word 0x000031A0
	thumb_func_end ovy60_21e7a70

	thumb_func_start ovy60_21e7b68
ovy60_21e7b68: ; 0x021E7B68
	push {r3, lr}
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02025A10
	pop {r3, pc}
	thumb_func_end ovy60_21e7b68
_021E7B7C:
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy60_21e7b80
ovy60_21e7b80: ; 0x021E7B80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r7, r1, #0
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	add r6, r3, #0
	bl sub_020088FC
	mov r3, #1
	str r0, [sp, #4]
	cmp r6, #1
	bne _021E7B9E
	mov r3, #0
_021E7B9E:
	mov r6, #0x22
	mov r0, #0
	lsl r6, r6, #4
	str r0, [sp]
	ldr r0, [r5, r6]
	mov r1, #0
	add r2, r4, #0
	bl sub_020244E0
	ldr r0, [r5, r6]
	ldr r2, [sp, #4]
	mov r1, #1
	bl LoadBagPocketNameToStrbuf
	add r0, r5, #0
	add r1, r7, #0
	bl ovy60_21e7bc8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7b80

	thumb_func_start ovy60_21e7bc8
ovy60_21e7bc8: ; 0x021E7BC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0x21
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	add r6, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	mov r1, #0
	mov r2, #0xe4
	mov r3, #9
	mov r7, #0
	bl sub_02024E80
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x10
	add r1, #0x18
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	bl sub_02017BCC
	ldr r1, [r5, #8]
	add r3, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r3, #0x18
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #0x10]
	ldr r0, _021E7C8C ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _021E7C90 ; =0x021E7B7D
	str r0, [sp, #0x18]
	ldr r0, [r5, r4]
	ldr r3, [r5, r3]
	bl sub_02022294
	add r1, r4, #0
	add r1, #0x34
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7C5C
	bl sub_0202E818
	add r4, #0x38
	str r7, [r5, r4]
_021E7C5C:
	ldrh r3, [r5, #4]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	bl sub_0202E7A4
	mov r1, #0x92
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x38
	ldr r4, [r5, r1]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7C8C: .word 0x0000FFFF
_021E7C90: .word 0x021E7B7D
	thumb_func_end ovy60_21e7bc8

	thumb_func_start ovy60_21e7c94
ovy60_21e7c94: ; 0x021E7C94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r6, #0x21
	add r4, r0, #0
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	add r5, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, r6]
	mov r1, #0
	mov r2, #0xe4
	mov r3, #9
	mov r7, #0
	bl sub_02024E80
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0204898C
	add r5, r0, #0
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0x10
	add r1, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	bl GFL_StrBufFree
	bl sub_02017BCC
	ldr r1, [r4, #8]
	add r3, r6, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #9
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r3, #0x18
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #0x10]
	ldr r0, _021E7D34 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _021E7D38 ; =0x021E7B7D
	str r0, [sp, #0x18]
	ldr r0, [r4, r6]
	ldr r3, [r4, r3]
	bl sub_02022294
	add r1, r6, #0
	add r1, #0x34
	str r0, [r4, r1]
	ldr r4, [r4, r6]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7D34: .word 0x0000FFFF
_021E7D38: .word 0x021E7B7D
	thumb_func_end ovy60_21e7c94

	thumb_func_start ovy60_21e7d3c
ovy60_21e7d3c: ; 0x021E7D3C
	push {r4, lr}
	add r4, r0, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xe4
	mov r3, #9
	bl sub_02024E80
	pop {r4, pc}
	thumb_func_end ovy60_21e7d3c

	thumb_func_start ovy60_21e7d58
ovy60_21e7d58: ; 0x021E7D58
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r4, #0x87
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204898C
	add r6, r0, #0
	add r1, r4, #0
	add r0, r4, #4
	add r1, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	bl sub_02017BCC
	ldr r1, [r5, #8]
	add r3, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	mov r6, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r5, #4]
	add r3, #0xc
	mov r1, #0
	str r0, [sp, #0x10]
	ldr r0, _021E7DFC ; =0x0000FFFF
	mov r2, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r6, [sp, #0x18]
	sub r0, #0xc
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	bl sub_02022294
	add r1, r4, #0
	add r1, #0x28
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7DCC
	bl sub_0202E818
	add r4, #0x2c
	str r6, [r5, r4]
_021E7DCC:
	ldrh r3, [r5, #4]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	bl sub_0202E7A4
	mov r1, #0x92
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x38
	ldr r4, [r5, r1]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E7DFC: .word 0x0000FFFF
	thumb_func_end ovy60_21e7d58

	thumb_func_start ovy60_21e7e00
ovy60_21e7e00: ; 0x021E7E00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x21
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r4, r2, #0
	add r7, r1, #0
	bl ovy60_21e7d3c
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021E7E32
	add r0, r6, #0
	add r0, #0xe8
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021E7E32
	add r6, #0x10
	ldrh r2, [r4, #4]
	ldr r0, [r5, r6]
	mov r1, #0
	bl LoadItemNameToStrbuf
	b _021E7E48
_021E7E32:
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	mov r0, #0x22
	str r3, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x10]
	mov r1, #0
	bl sub_0202437C
_021E7E48:
	mov r6, #0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldrh r2, [r4, #6]
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r4, #8]
	mov r1, #2
	mov r3, #7
	bl StringSetNumber
	add r0, r5, #0
	add r1, r7, #0
	bl ovy60_21e7d58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7e00

	thumb_func_start ovy60_21e7e84
ovy60_21e7e84: ; 0x021E7E84
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r3, r0, #4
	ldr r0, _021E7EBC ; =0x021E8AE4
	ldr r2, _021E7EC0 ; =0x021E8ADC
	ldr r0, [r0, r3]
	ldr r2, [r2, r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021E7EC4 ; =0x021E8AE8
	ldr r4, _021E7EC8 ; =0x021E8AE0
	ldr r0, [r0, r3]
	ldr r3, [r4, r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r1, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021E7EBC: .word 0x021E8AE4
_021E7EC0: .word 0x021E8ADC
_021E7EC4: .word 0x021E8AE8
_021E7EC8: .word 0x021E8AE0
	thumb_func_end ovy60_21e7e84

	thumb_func_start ovy60_21e7ecc
ovy60_21e7ecc: ; 0x021E7ECC
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_02181048
	cmp r0, #0
	beq _021E7EE4
	add r0, r5, #0
	bl sub_021F0E74
	b _021E7EF6
_021E7EE4:
	add r0, r5, #0
	mov r1, #1
	bl sub_02181048
	cmp r0, #0
	beq _021E7EF8
	add r0, r5, #0
	bl sub_021EEEAC
_021E7EF6:
	add r4, r0, #0
_021E7EF8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e7ecc

	thumb_func_start ovy60_21e7efc
ovy60_21e7efc: ; 0x021E7EFC
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_02181048
	cmp r0, #0
	beq _021E7F14
	add r0, r5, #0
	bl sub_021F0E8C
	b _021E7F26
_021E7F14:
	add r0, r5, #0
	mov r1, #1
	bl sub_02181048
	cmp r0, #0
	beq _021E7F28
	add r0, r5, #0
	bl sub_021EEEBC
_021E7F26:
	add r4, r0, #0
_021E7F28:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy60_21e7efc

	thumb_func_start ovy60_21e7f2c
ovy60_21e7f2c: ; 0x021E7F2C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	add r0, r5, #0
	bl ovy60_21e75dc
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy60_21e688c
	mov r2, #0x2f
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy60_21e7974
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7f2c
_021E7F58:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy60_21e7f5c
ovy60_21e7f5c: ; 0x021E7F5C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0202651C
	add r1, sp, #0
	add r4, r0, #0
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02025B04
	mov r1, #0xac
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrh r1, [r0]
	mov r2, #0
	mov r6, #0
	lsl r1, r1, #4
	add r1, #0x16
	strh r1, [r0, #6]
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl sub_0204C140
	cmp r5, #0x11
	bhs _021E7FC8
	mov r0, #0x1c
	add r6, r5, #0
	mul r6, r0
	add r1, r4, r6
	ldr r1, [r1, #0x2c]
	add r0, r4, #0
	bl ovy60_21e791c
	add r1, r4, r6
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _021E7FBC
	ldrh r1, [r1, #0x1c]
	add r0, r4, #0
	bl ovy60_21e737c
	add sp, #8
	pop {r4, r5, r6, pc}
_021E7FBC:
	ldr r1, _021E7FDC ; =0x0000FFFF
	add r0, r4, #0
	bl ovy60_21e737c
	add sp, #8
	pop {r4, r5, r6, pc}
_021E7FC8:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy60_21e791c
	ldr r1, _021E7FDC ; =0x0000FFFF
	add r0, r4, #0
	bl ovy60_21e737c
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E7FDC: .word 0x0000FFFF
	thumb_func_end ovy60_21e7f5c

	thumb_func_start ovy60_21e7fe0
ovy60_21e7fe0: ; 0x021E7FE0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	add r0, r5, #0
	bl ovy60_21e7604
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy60_21e6a28
	mov r2, #0x2f
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy60_21e7974
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e7fe0
_021E800C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy60_21e8010
ovy60_21e8010: ; 0x021E8010
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	add r0, r5, #0
	bl ovy60_21e7604
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy60_21e6c90
	mov r2, #0x2f
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy60_21e7974
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy60_21e8010
_021E803C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy60_21e8040
ovy60_21e8040: ; 0x021E8040
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp, #8]
	bl sub_02038470
	str r0, [sp, #0x18]
	ldrh r1, [r5, #4]
	mov r0, #0x80
	mov r7, #0x80
	bl GFL_StrBufCreate
	mov r4, #0xaa
	lsl r4, r4, #2
	str r0, [sp, #0x1c]
	ldr r0, [r5, r4]
	ldr r1, [sp, #8]
	bl sub_02039798
	mov r1, #0
	bl sub_020397CC
	add r2, r4, #0
	str r0, [sp, #0x20]
	ldrh r6, [r5, #4]
	ldr r3, _021E818C ; =0x00007FFF
	mov r0, #0
	and r3, r6
	ldr r6, _021E818C ; =0x00007FFF
	mov r1, #3
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	sub r2, #0x47
	lsr r3, r3, #0x10
	bl GFL_MsgSysLoadData
	str r0, [sp, #0x24]
	add r0, r4, #0
	sub r0, #0x8c
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r0]
	add r1, #0x2a
	bl sub_0204898C
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	mov r1, #0x15
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r1, #0x16
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r1, #0x17
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r1, #1
	mov r6, #1
	bl sub_020363E0
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	add r7, #0x98
	ldr r0, [sp, #0x24]
	add r1, r1, r7
	bl sub_0204898C
	add r7, r0, #0
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r7, #0
	mov r3, #2
	bl sub_0202437C
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [sp, #0x2c]
	str r6, [sp, #4]
	sub r0, #0x88
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, r2, #1
	mov r3, #2
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	sub r0, #0x88
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x14]
	mov r1, #4
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	sub r0, #0x88
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r1, #5
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	str r6, [sp, #4]
	sub r0, #0x88
	ldr r0, [r5, r0]
	ldr r2, [sp, #0xc]
	mov r1, #6
	mov r3, #2
	bl StringSetNumber
	add r0, r4, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	bl GFL_WordSetFormatStrbuf
	sub r4, #0x88
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x24]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0x1c]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E818C: .word 0x00007FFF
	thumb_func_end ovy60_21e8040

	thumb_func_start ovy60_21e8190
ovy60_21e8190: ; 0x021E8190
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_021F1980
	str r0, [sp, #0x14]
	bl sub_02038470
	mov r1, #0
	bl sub_020363E0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r1, [r5, #4]
	mov r0, #0x40
	bl GFL_StrBufCreate
	mov r6, #0xaa
	lsl r6, r6, #2
	str r0, [sp, #0x18]
	ldrh r3, [r5, #4]
	ldr r0, [r5, r6]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	bl sub_021F4930
	add r7, r0, #0
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ovy60_21e8040
	str r0, [sp, #0x1c]
	add r0, r6, #0
	sub r0, #0x8c
	ldr r0, [r5, r0]
	mov r1, #0x24
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	mov r1, #2
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x88
	ldr r2, [sp, #8]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r2, #1
	mov r3, #1
	bl StringSetNumber
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	ldr r3, [sp, #0xc]
	mov r1, #0
	add r2, r7, #0
	bl sub_0202437C
	sub r6, #0x88
	ldr r0, [r5, r6]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021E8250
	ldr r0, [sp, #0x18]
	str r7, [r4, #0x10]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x24
	str r0, [r4, #0x14]
	pop {r4, r5, r6, r7, pc}
_021E8250:
	ldr r1, [sp, #0x18]
	bl sub_02048580
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	bl sub_02048580
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #0x1c]
	bl sub_02048580
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e8190

	thumb_func_start ovy60_21e827c
ovy60_21e827c: ; 0x021E827C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0202651C
	add r1, sp, #0
	add r4, r0, #0
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02025B04
	mov r1, #0xac
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrh r1, [r0]
	mov r2, #0
	mov r6, #0
	lsl r1, r1, #4
	add r1, #0x16
	strh r1, [r0, #6]
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl sub_0204C140
	cmp r5, #0x11
	bhs _021E82D6
	mov r0, #0x1c
	add r6, r5, #0
	mul r6, r0
	add r1, r4, r6
	ldr r1, [r1, #0x2c]
	add r0, r4, #0
	bl ovy60_21e791c
	add r1, r4, r6
	ldrh r1, [r1, #0x1c]
	add r0, r4, #0
	bl ovy60_21e7404
	add sp, #8
	pop {r4, r5, r6, pc}
_021E82D6:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy60_21e791c
	ldr r1, _021E82EC ; =0x0000FFFF
	add r0, r4, #0
	bl ovy60_21e7404
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021E82EC: .word 0x0000FFFF
	thumb_func_end ovy60_21e827c

	thumb_func_start ovy60_21e82f0
ovy60_21e82f0: ; 0x021E82F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0202651C
	add r1, sp, #0
	add r4, r0, #0
	add r0, r6, #0
	add r1, #2
	add r2, sp, #0
	bl sub_02025B04
	mov r1, #0xac
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrh r1, [r0]
	mov r2, #0
	mov r6, #0
	lsl r1, r1, #4
	add r1, #0x16
	strh r1, [r0, #6]
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl sub_0204C140
	cmp r5, #0x11
	bhs _021E8344
	mov r0, #0x1c
	add r6, r5, #0
	mul r6, r0
	add r1, r4, r6
	ldr r1, [r1, #0x2c]
	add r0, r4, #0
	bl ovy60_21e791c
	add r1, r4, r6
	add r0, r4, #0
	ldrh r1, [r1, #0x1c]
	b _021E8350
_021E8344:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy60_21e791c
	ldr r1, _021E8378 ; =0x0000FFFF
	add r0, r4, #0
_021E8350:
	bl ovy60_21e7404
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E8368
	add r0, r4, #0
	bl ovy60_21e837c
	add sp, #8
	pop {r4, r5, r6, pc}
_021E8368:
	sub r0, #0xa4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021E8378: .word 0x0000FFFF
	thumb_func_end ovy60_21e82f0

	thumb_func_start ovy60_21e837c
ovy60_21e837c: ; 0x021E837C
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r4, #0x23
	add r5, r0, #0
	lsl r4, r4, #4
	add r1, sp, #0
	ldr r0, [r5, r4]
	add r1, #2
	add r2, sp, #0
	bl sub_02025B04
	ldr r0, [r5, r4]
	mov r1, #9
	bl sub_02025B58
	add r1, r4, #0
	add r1, #0xde
	ldrh r2, [r5, r1]
	add r1, r4, #0
	add r1, #0xdc
	ldrh r1, [r5, r1]
	add r6, sp, #0
	add r2, r2, r1
	ldrh r1, [r6, #2]
	sub r1, r2, r1
	add r2, r1, #0
	mul r2, r0
	mov r0, #0xac
	strh r0, [r6, #4]
	add r2, #0x16
	add r0, r4, #0
	strh r2, [r6, #6]
	add r0, #0x34
	ldr r0, [r5, r0]
	add r1, sp, #4
	mov r2, #0
	bl sub_0204C140
	mov r0, #6
	ldrsh r0, [r6, r0]
	cmp r0, #6
	bne _021E83D8
	add r4, #0x34
	ldr r0, [r5, r4]
	mov r1, #3
	b _021E83EA
_021E83D8:
	cmp r0, #0x86
	bne _021E83E4
	add r4, #0x34
	ldr r0, [r5, r4]
	mov r1, #2
	b _021E83EA
_021E83E4:
	add r4, #0x34
	ldr r0, [r5, r4]
	mov r1, #1
_021E83EA:
	bl sub_0204C488
	add r1, sp, #0
	mov r0, #6
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021E840C
	cmp r0, #0xc0
	bge _021E840C
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add sp, #8
	pop {r4, r5, r6, pc}
_021E840C:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy60_21e837c

	thumb_func_start ovy60_21e841c
ovy60_21e841c: ; 0x021E841C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E842E
	b _021E85AC
_021E842E:
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	cmp r1, #0
	bgt _021E843E
	b _021E85AC
_021E843E:
	mov r7, #0
	cmp r1, #0
	bgt _021E8446
	b _021E85A0
_021E8446:
	mov r0, #0xae
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x20]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x30]
	add r0, #0x6c
	str r0, [sp, #0x30]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x2c]
	add r0, #0x6c
	str r0, [sp, #0x2c]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x28]
	add r0, #0x6c
	str r0, [sp, #0x28]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x24]
	add r0, #0x6c
	str r0, [sp, #0x24]
	mov r0, #0xae
	lsl r0, r0, #2
	str r0, [sp, #0x34]
	sub r0, #0xc4
	str r0, [sp, #0x34]
_021E8480:
	mov r0, #0x1c
	mul r0, r7
	add r0, r5, r0
	ldrh r1, [r0, #0x18]
	str r0, [sp]
	cmp r7, r1
	bne _021E8490
	b _021E8594
_021E8490:
	mov r0, #0x1c
	mul r0, r1
	add r0, r5, r0
	ldrh r6, [r0, #0x18]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203888C
	add r4, r0, #0
	mov r1, #1
	mov r2, #0
	bl sub_020385A8
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	ldr r0, [r0]
	bl sub_0203888C
	add r6, r0, #0
	mov r1, #1
	mov r2, #0
	bl sub_020385A8
	str r0, [sp, #0x1c]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x1f
	mov r2, #0
	bl sub_020385A8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	bl sub_02038680
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #1
	bl sub_02038680
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_02038680
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	bl sub_02038680
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl sub_02038680
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x1f
	bl sub_02038680
	add r0, r4, #0
	add r1, sp, #0x38
	mov r2, #0x58
	blx MI_CpuCopy8
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x58
	blx MI_CpuCopy8
	add r0, sp, #0x38
	add r1, r6, #0
	mov r2, #0x58
	blx MI_CpuCopy8
	ldr r2, [sp]
	lsl r0, r7, #1
	ldrh r2, [r2, #0x18]
	add r1, r5, r0
	ldr r0, [sp, #0x30]
	lsl r2, r2, #1
	add r3, r5, r2
	ldr r2, [sp, #0x2c]
	ldrh r0, [r1, r0]
	ldrh r3, [r3, r2]
	ldr r2, [sp, #0x28]
	strh r3, [r1, r2]
	ldr r1, [sp]
	ldrh r1, [r1, #0x18]
	lsl r1, r1, #1
	add r2, r5, r1
	ldr r1, [sp, #0x24]
	strh r0, [r2, r1]
	ldr r0, [sp]
	ldrh r2, [r0, #0x18]
	mov r0, #0x1c
	mul r0, r2
	add r0, r5, r0
	ldrh r1, [r0, #0x18]
	strh r2, [r0, #0x18]
	ldr r0, [sp]
	strh r1, [r0, #0x18]
_021E8594:
	ldr r0, [sp, #0x34]
	add r7, r7, #1
	ldrh r1, [r5, r0]
	cmp r7, r1
	bge _021E85A0
	b _021E8480
_021E85A0:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r1
	bge _021E85AC
	b _021E843E
_021E85AC:
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e841c

	thumb_func_start ovy60_21e85b0
ovy60_21e85b0: ; 0x021E85B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E85C2
	b _021E8704
_021E85C2:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	bgt _021E85D2
	b _021E8704
_021E85D2:
	mov r4, #0
	cmp r0, #0
	bgt _021E85DA
	b _021E86F8
_021E85DA:
	mov r1, #0xae
	lsl r1, r1, #2
	add r1, r5, r1
	str r1, [sp, #0x28]
	mov r1, #0xae
	lsl r1, r1, #2
	str r1, [sp, #0x24]
	add r1, #0x6c
	str r1, [sp, #0x24]
	mov r1, #0xae
	lsl r1, r1, #2
	str r1, [sp, #0x20]
	add r1, #0x6c
	str r1, [sp, #0x20]
	mov r1, #0xae
	lsl r1, r1, #2
	str r1, [sp, #0x1c]
	add r1, #0x6c
	str r1, [sp, #0x1c]
	mov r1, #0xae
	lsl r1, r1, #2
	str r1, [sp, #0x18]
	add r1, #0x6c
	str r1, [sp, #0x18]
	mov r1, #0xae
	lsl r1, r1, #2
	str r1, [sp, #0x2c]
	sub r1, #0xc4
	str r1, [sp, #0x2c]
_021E8614:
	mov r1, #0x1c
	mul r1, r4
	add r1, r5, r1
	str r1, [sp]
	ldrh r1, [r1, #0x18]
	sub r0, r0, #1
	sub r0, r0, r1
	str r0, [sp, #8]
	cmp r4, r0
	beq _021E86EE
	add r2, r0, #0
	mov r0, #0x1c
	mul r0, r2
	add r0, r5, r0
	ldrh r7, [r0, #0x18]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02038860
	add r6, r0, #0
	mov r1, #1
	mov r2, #0
	bl sub_020370EC
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	ldr r0, [r0]
	bl sub_02038860
	add r7, r0, #0
	mov r1, #1
	mov r2, #0
	bl sub_020370EC
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0
	bl sub_020370EC
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r0, r6, #0
	mov r1, #0
	bl sub_020373EC
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	mov r1, #1
	bl sub_020373EC
	ldr r2, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	bl sub_020373EC
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #1
	bl sub_020373EC
	add r0, r6, #0
	add r1, sp, #0x30
	mov r2, #0xc4
	blx MI_CpuCopy8
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0xc4
	blx MI_CpuCopy8
	add r0, sp, #0x30
	add r1, r7, #0
	mov r2, #0xc4
	blx MI_CpuCopy8
	lsl r0, r4, #1
	add r2, r5, r0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	ldrh r1, [r2, r0]
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r6, [r0, r3]
	ldr r3, [sp, #0x1c]
	strh r6, [r2, r3]
	ldr r2, [sp, #0x18]
	strh r1, [r0, r2]
	ldr r1, [sp, #8]
	mov r0, #0x1c
	mul r0, r1
	add r2, r5, r0
	ldr r0, [sp]
	ldrh r1, [r2, #0x18]
	ldrh r0, [r0, #0x18]
	strh r0, [r2, #0x18]
	ldr r0, [sp]
	strh r1, [r0, #0x18]
_021E86EE:
	ldr r0, [sp, #0x2c]
	add r4, r4, #1
	ldrh r0, [r5, r0]
	cmp r4, r0
	blt _021E8614
_021E86F8:
	ldr r1, [sp, #0xc]
	add r1, r1, #1
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021E8704
	b _021E85D2
_021E8704:
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e85b0

	thumb_func_start sub_021E8708
sub_021E8708: ; 0x021E8708
	lsl r1, r0, #3
	ldr r0, _021E871C ; =0x021CF1C8
	ldr r0, [r0, r1]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
_021E871C: .word 0x021CF1C8
	thumb_func_end sub_021E8708

	thumb_func_start ovy60_21e8720
ovy60_21e8720: ; 0x021E8720
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0200FE34
	add r2, r0, #0
	mov r1, #0x1c
	mul r2, r1
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r2, #4
	mov r3, #0x1c
	bl sub_0204AC58
	add r6, sp, #4
	ldrb r0, [r6, #9]
	bl sub_021E8708
	strb r0, [r5]
	ldrh r0, [r6, #0x10]
	strh r0, [r4]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ovy60_21e8720

	thumb_func_start ovy60_21e8758
ovy60_21e8758: ; 0x021E8758
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_021F3344
	cmp r0, #0
	beq _021E8772
	mov r6, #7
	lsl r6, r6, #0xa
	b _021E8776
_021E8772:
	mov r6, #1
	lsl r6, r6, #0xc
_021E8776:
	mov r0, #0xb1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	mov r2, #0
	bl sub_02038F00
	cmp r0, #0x28
	bls _021E878A
	mov r0, #0x28
_021E878A:
	cmp r0, #0
	beq _021E8796
	cmp r0, #0x28
	bhs _021E8796
	sub r0, r0, #1
	b _021E8798
_021E8796:
	mov r0, #0x28
_021E8798:
	mul r0, r4
	mov r1, #0x64
	blx sub_0208D868
	cmp r0, #0
	beq _021E87B6
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021E87C4
_021E87B6:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021E87C4:
	blx sub_0208DA4C
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	blx sub_0208D60C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	sub r4, r4, r0
	add r0, r4, #0
	mov r1, #0xa
	mov r5, #0xa
	blx sub_0208D868
	cmp r1, #0
	beq _021E8800
	cmp r1, #5
	blo _021E87FE
	sub r0, r5, r1
	add r4, r4, r0
	b _021E8800
_021E87FE:
	sub r4, r4, r1
_021E8800:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy60_21e8758

	thumb_func_start ovy60_21e8804
ovy60_21e8804: ; 0x021E8804
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	add r6, r2, #0
	bl sub_02180494
	str r0, [sp, #4]
	mov r4, #0
	bl sub_0218683C
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_02186834
	ldr r0, [sp, #4]
	bl sub_021862DC
	cmp r6, #0
	beq _021E8870
	cmp r6, #1
	beq _021E883A
	cmp r6, #2
	beq _021E88D2
	b _021E8870
_021E883A:
	mov r6, #0xb2
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_021F0F58
	add r7, r0, #0
	sub r6, #8
_021E8848:
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_02038860
	cmp r0, r7
	beq _021E885A
	add r4, r4, #1
	cmp r4, #8
	blt _021E8848
_021E885A:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021E886C
	mov r4, #2
	b _021E88D4
_021E886C:
	mov r4, #3
	b _021E88D4
_021E8870:
	add r0, r7, #0
	bl sub_021804F0
	add r5, r0, #0
	bl sub_0219A67C
	add r1, r0, #0
	add r0, sp, #8
	lsl r1, r1, #0x10
	add r3, sp, #8
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, sp, #0xc
	add r3, #2
	bl sub_0219A938
	mov r2, #0
	add r1, sp, #8
	mov r0, #4
	ldrsh r3, [r1, r0]
	ldrsh r5, [r1, r2]
	ldr r7, _021E8910 ; =0x021E8AFC
_021E889E:
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldrsh r6, [r7, r1]
	add r0, r7, r1
	cmp r6, r3
	bgt _021E88CA
	mov r6, #2
	ldrsh r6, [r0, r6]
	cmp r3, r6
	bge _021E88CA
	mov r6, #4
	ldrsh r6, [r0, r6]
	cmp r6, r5
	bgt _021E88CA
	mov r6, #6
	ldrsh r0, [r0, r6]
	cmp r5, r0
	bge _021E88CA
	ldr r0, _021E8914 ; =0x021E8B04
	ldr r4, [r0, r1]
	b _021E88D4
_021E88CA:
	add r2, r2, #1
	cmp r2, #3
	blo _021E889E
	b _021E88D4
_021E88D2:
	mov r4, #1
_021E88D4:
	mov r0, #0xc
	add r5, r4, #0
	mul r5, r0
	ldr r1, _021E8918 ; =0x021E8B20
	ldr r0, [sp, #4]
	ldrh r1, [r1, r5]
	bl sub_021863D0
	add r4, sp, #0x10
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02186344
	ldr r0, _021E891C ; =0x021E8B24
	ldr r1, [sp, #0x10]
	ldr r0, [r0, r5]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, _021E8920 ; =0x021E8B28
	ldr r1, [sp, #0x18]
	ldr r0, [r0, r5]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02186320
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E8910: .word 0x021E8AFC
_021E8914: .word 0x021E8B04
_021E8918: .word 0x021E8B20
_021E891C: .word 0x021E8B24
_021E8920: .word 0x021E8B28
	thumb_func_end ovy60_21e8804

	thumb_func_start ovy60_21e8924
ovy60_21e8924: ; 0x021E8924
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	ldr r2, [r4]
	add r5, r0, #0
	add r7, r1, #0
	cmp r2, #6
	bhi _021E89B8
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E893E: ; jump table
	.short _021E894C - _021E893E - 2 ; case 0
	.short _021E8960 - _021E893E - 2 ; case 1
	.short _021E896A - _021E893E - 2 ; case 2
	.short _021E8990 - _021E893E - 2 ; case 3
	.short _021E8996 - _021E893E - 2 ; case 4
	.short _021E89A0 - _021E893E - 2 ; case 5
	.short _021E89A8 - _021E893E - 2 ; case 6
_021E894C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
_021E8952:
	mov r3, #1
	bl sub_0204E060
_021E8958:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E89B8
_021E8960:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021E89B8
_021E8968:
	b _021E8958
_021E896A:
	mov r6, #0xb9
	lsl r6, r6, #2
	ldrh r2, [r5, r6]
	bl ovy60_21e8804
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r6, #0
	sub r0, #0x40
	sub r1, #0x3c
	sub r6, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5, r6]
	add r2, r7, #0
	bl sub_021F44F8
	b _021E8968
_021E8990:
	bl ovy60_21e6064
	b _021E8968
_021E8996:
	bl ovy60_21e60ac
	cmp r0, #0
	beq _021E89B8
	b _021E8968
_021E89A0:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	b _021E8952
_021E89A8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021E89B8
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E89B8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e8924

	thumb_func_start ovy60_21e89bc
ovy60_21e89bc: ; 0x021E89BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	bl sub_02180494
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _021E8A48
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E89DC: ; jump table
	.short _021E89E4 - _021E89DC - 2 ; case 0
	.short _021E89F8 - _021E89DC - 2 ; case 1
	.short _021E8A02 - _021E89DC - 2 ; case 2
	.short _021E8A38 - _021E89DC - 2 ; case 3
_021E89E4:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
_021E89EA:
	mov r3, #1
	bl sub_0204E060
_021E89F0:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E8A48
_021E89F8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021E8A48
	b _021E89F0
_021E8A02:
	mov r7, #0xa9
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	bl sub_021F152C
	add r0, r7, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_021F1D04
	add r0, r5, #0
	bl ovy60_21e6100
	add r0, r6, #0
	bl sub_021857E8
	add r0, r6, #0
	bl sub_021862E8
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl sub_02186834
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	b _021E89EA
_021E8A38:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021E8A48
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E8A48:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy60_21e89bc
_021E8A4C:
	.byte 0x01, 0x18, 0x0D, 0x0B
	.byte 0x19, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x0F, 0x0D, 0x02, 0x0B, 0x00, 0xBF, 0x01
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x02, 0x05, 0x02, 0x0B, 0x00, 0x26, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x12, 0x1E, 0x06, 0x0B, 0x00, 0xD5, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x03, 0x09, 0x02
	.byte 0x0B, 0x00, 0x26, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x0F, 0x0F, 0x02, 0x0B, 0x00, 0x9F, 0x01
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0x01, 0x13, 0x10, 0x02, 0x00, 0x36, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x09, 0x02, 0x0B, 0x00, 0x14, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x12, 0x1B, 0x06
	.byte 0x0B, 0x00, 0xD5, 0x01, 0x01, 0x00, 0x00, 0x00, 0x02, 0x02, 0x08, 0x02, 0x0B, 0x00, 0x26, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x13, 0x1E, 0x04, 0x0B, 0x00, 0x77, 0x02, 0x02, 0x03, 0x06, 0x05
	.byte 0x04, 0x05, 0x02, 0x00, 0x01, 0x03, 0x06, 0x05, 0x04, 0x07, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x11, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x41, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x50, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x20, 0x00, 0x41, 0x00, 0x50, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0xA0, 0xFB, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xA0, 0xFB, 0xFF, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00
	.byte 0xAC, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x01, 0xAC, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAC, 0x00, 0x84, 0x00, 0x01, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x80, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0xAC, 0x00, 0x00, 0x00, 0x00, 0x01, 0x12, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x12, 0x00, 0xA8, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9C, 0x8A, 0x1E, 0x02, 0x78, 0x8A, 0x1E, 0x02, 0x90, 0x8A, 0x1E, 0x02, 0x84, 0x8A, 0x1E, 0x02
	.byte 0x54, 0x8A, 0x1E, 0x02, 0xA8, 0x8A, 0x1E, 0x02, 0xC0, 0x8A, 0x1E, 0x02, 0x73, 0x63, 0x72, 0x63
	.byte 0x6D, 0x64, 0x5F, 0x72, 0x65, 0x73, 0x6F, 0x72, 0x74, 0x5F, 0x73, 0x68, 0x6F, 0x70, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E8A4C
