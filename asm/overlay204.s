    .include "macros/function.inc"
	.include "overlay204.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy204_21a9b60
ovy204_21a9b60: ; 0x021A9B60
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021A9BDC ; =0x000000CB
	add r7, r2, #0
	bl sub_0203CE0C
	ldr r0, _021A9BE0 ; =0x0000008B
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0x34
	lsl r2, r2, #0x12
	bl GFL_HeapCreateChild
	mov r6, #0x5b
	lsl r6, r6, #4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x34
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r4, #0x7e
	lsl r4, r4, #2
	add r1, r6, #0
	str r7, [r5, r4]
	sub r1, #8
	mov r0, #0
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x68
	ldr r1, [r5, r4]
	add r0, r5, r0
	mov r2, #0x34
	bl ovy204_21a9dcc
	sub r4, #0x68
	add r0, r5, #4
	add r1, r5, r4
	mov r2, #0x34
	bl ovy204_21a9f6c
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A9BD6
	ldr r0, _021A9BE4 ; =0x021A9D35
	add r1, r5, #0
	mov r2, #0x10
	bl GFL_VBlankTCBAdd
	sub r6, #8
	str r0, [r5, r6]
_021A9BD6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9BDC: .word 0x000000CB
_021A9BE0: .word 0x0000008B
_021A9BE4: .word 0x021A9D35
	thumb_func_end ovy204_21a9b60

	thumb_func_start ovy204_21a9be8
ovy204_21a9be8: ; 0x021A9BE8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r3, #0
	cmp r1, #0
	beq _021A9BFA
	cmp r1, #1
	beq _021A9CBC
	b _021A9CCC
_021A9BFA:
	ldr r1, [r4]
	cmp r1, #6
	bhi _021A9CA0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A9C0C: ; jump table
	.short _021A9C1A - _021A9C0C - 2 ; case 0
	.short _021A9C2E - _021A9C0C - 2 ; case 1
	.short _021A9C42 - _021A9C0C - 2 ; case 2
	.short _021A9C5C - _021A9C0C - 2 ; case 3
	.short _021A9C70 - _021A9C0C - 2 ; case 4
	.short _021A9C86 - _021A9C0C - 2 ; case 5
	.short _021A9C94 - _021A9C0C - 2 ; case 6
_021A9C1A:
	mov r1, #0x7f
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x6c
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x34
	bl ovy204_21aa8a4
	b _021A9CA0
_021A9C2E:
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0xbc
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x34
	bl ovy204_21ab0dc
	b _021A9CA0
_021A9C42:
	mov r0, #0x34
	str r0, [sp]
	mov r0, #0xfe
	mov r2, #0x19
	lsl r0, r0, #2
	lsl r2, r2, #4
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, r2
	add r3, r4, #4
	bl ovy204_21ac5e8
	b _021A9CA0
_021A9C5C:
	ldr r0, _021A9CD8 ; =0x00000404
	mov r1, #0x19
	lsl r1, r1, #4
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x34
	bl ovy204_21ac810
	b _021A9CA0
_021A9C70:
	mov r0, #0x42
	mov r1, #0x19
	lsl r0, r0, #4
	lsl r1, r1, #4
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, #4
	mov r3, #0x34
	bl ovy204_21acc28
	b _021A9CA0
_021A9C86:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A9C94:
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #1
	str r0, [r1, #4]
	pop {r3, r4, r5, pc}
_021A9CA0:
	cmp r0, #1
	bne _021A9CCC
	ldr r0, _021A9CDC ; =0x00000199
	ldrb r1, [r4, r0]
	str r1, [r4]
	add r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, _021A9CE0 ; =0x000005AC
	mov r1, #4
	str r1, [r4, r0]
	mov r0, #1
	b _021A9CCA
_021A9CBC:
	ldr r0, _021A9CE0 ; =0x000005AC
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #0
	bgt _021A9CCC
	mov r0, #0
_021A9CCA:
	str r0, [r5]
_021A9CCC:
	add r0, r4, #4
	bl ovy204_21aa018
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021A9CD8: .word 0x00000404
_021A9CDC: .word 0x00000199
_021A9CE0: .word 0x000005AC
	thumb_func_end ovy204_21a9be8

	thumb_func_start ovy204_21a9ce4
ovy204_21a9ce4: ; 0x021A9CE4
	push {r4, r5, r6, lr}
	ldr r6, _021A9D28 ; =0x000005A8
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, r6]
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, r6]
	add r0, r4, #4
	bl ovy204_21aa044
	mov r1, #0x19
	lsl r1, r1, #4
	add r0, r4, r1
	add r1, #0x68
	ldr r1, [r4, r1]
	bl ovy204_21a9e00
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x34
	bl sub_0203A1D0
	ldr r0, _021A9D2C ; =0x0000008B
	bl sub_0203CDC8
	ldr r0, _021A9D30 ; =0x000000CB
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021A9D28: .word 0x000005A8
_021A9D2C: .word 0x0000008B
_021A9D30: .word 0x000000CB
	thumb_func_end ovy204_21a9ce4
_021A9D34:
	.byte 0x01, 0x4B, 0x08, 0x1D, 0x18, 0x47, 0xC0, 0x46, 0x3D, 0xA0, 0x1A, 0x02

	thumb_func_start ovy204_21a9d40
ovy204_21a9d40: ; 0x021A9D40
	push {r3, r4, r5, lr}
	add r2, r1, #0
	mov r1, #0x19
	add r4, r0, #0
	lsl r1, r1, #4
	add r0, r4, #4
	add r1, r4, r1
	bl ovy204_21a9f6c
	ldr r5, _021A9D68 ; =0x000005A8
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021A9D66
	ldr r0, _021A9D6C ; =0x021A9D35
	add r1, r4, #0
	mov r2, #0x10
	bl GFL_VBlankTCBAdd
	str r0, [r4, r5]
_021A9D66:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A9D68: .word 0x000005A8
_021A9D6C: .word 0x021A9D35
	thumb_func_end ovy204_21a9d40

	thumb_func_start ovy204_21a9d70
ovy204_21a9d70: ; 0x021A9D70
	push {r3, r4, r5, lr}
	ldr r5, _021A9D88 ; =0x000005A8
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, r5]
	add r0, r4, #4
	bl ovy204_21aa044
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A9D88: .word 0x000005A8
	thumb_func_end ovy204_21a9d70

	thumb_func_start ovy204_21a9d8c
ovy204_21a9d8c: ; 0x021A9D8C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, sp, #0x20
	add r6, r0, #0
	ldrb r0, [r4, #8]
	add r5, r1, #0
	add r1, r3, #0
	str r0, [sp]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r2, #0
	ldrb r2, [r4]
	ldrb r3, [r4, #4]
	bl BmpWin_CreateDynamic
	str r0, [r5]
	bl BmpWin_GetBitmap
	ldrb r1, [r4, #0x14]
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	bl BmpWin_FlushChar
	add r0, r6, #0
	add r1, r5, #0
	bl ovy204_21ade3c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy204_21a9d8c

	thumb_func_start ovy204_21a9dcc
ovy204_21a9dcc: ; 0x021A9DCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r1]
	add r4, r2, #0
	str r0, [r5, #4]
	mov r0, #0x80
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0x58]
	mov r0, #0x80
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0x5c]
	bl sub_0203D554
	str r0, [r5]
	bl sub_02017BCC
	strb r0, [r5, #0xc]
	mov r0, #0
	strb r0, [r5, #0xd]
	mov r0, #1
	strb r0, [r5, #0xe]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21a9dcc

	thumb_func_start ovy204_21a9e00
ovy204_21a9e00: ; 0x021A9E00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0203D564
	ldr r0, [r4, #0x58]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x5c]
	bl GFL_StrBufFree
	pop {r4, pc}
	thumb_func_end ovy204_21a9e00

	thumb_func_start sub_021A9E18
sub_021A9E18: ; 0x021A9E18
	strb r1, [r0, #9]
	strb r2, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A9E18

	thumb_func_start ovy204_21a9e20
ovy204_21a9e20: ; 0x021A9E20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	beq _021A9E30
	ldr r0, [r5, #0x58]
	bl sub_02048580
_021A9E30:
	cmp r4, #0
	beq _021A9E3C
	ldr r0, [r5, #0x5c]
	add r1, r4, #0
	bl sub_02048580
_021A9E3C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21a9e20

	thumb_func_start ovy204_21a9e40
ovy204_21a9e40: ; 0x021A9E40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r0, [r0, #4]
	add r6, r1, #0
	str r2, [sp]
	bl sub_02017238
	add r5, r0, #0
	bl sub_02009F7C
	blx sub_02057EC4
	str r0, [sp, #0xc]
	str r1, [sp, #8]
	mov r4, #0
_021A9E5E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A138
	cmp r0, #0
	bne _021A9EE8
	add r0, r6, #0
	add r1, sp, #0x18
	bl ovy204_21ad9f8
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	add r6, r1, #0
	cmp r0, #1
	bne _021A9EE2
	ldr r0, [sp, #8]
	eor r1, r0
	ldr r0, [sp, #0xc]
	eor r0, r7
	orr r0, r1
	beq _021A9EE2
	add r0, r5, #0
	bl sub_02009F7C
	add r1, r7, #0
	add r2, r6, #0
	blx sub_020578CC
	cmp r0, #0
	bne _021A9EA0
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A9EA0:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, sp, #0x14
	bl sub_02011980
	cmp r0, #0
	bne _021A9EB6
	add sp, #0x1c
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A9EB6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A0E4
	add r1, r7, #0
	add r2, r6, #0
	blx sub_02057EF8
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A11C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #9
	mov r3, #2
	bl sub_0200A034
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A9EE2:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A9EE8:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021A9E5E
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21a9e40

	thumb_func_start sub_021A9EF4
sub_021A9EF4: ; 0x021A9EF4
	str r1, [r0, #0x60]
	mov r1, #1
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_021A9EF4

	thumb_func_start sub_021A9EFC
sub_021A9EFC: ; 0x021A9EFC
	strb r1, [r0, #0xb]
	bx lr
	thumb_func_end sub_021A9EFC

	thumb_func_start ovy204_21a9f00
ovy204_21a9f00: ; 0x021A9F00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #0x48
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [r5, #4]
	bl sub_02017238
	add r6, r5, #0
	add r7, r5, #0
	str r0, [sp]
	str r4, [r5, #0x10]
	add r6, #0x14
	add r7, #0x10
_021A9F22:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0200A138
	cmp r0, #1
	bne _021A9F62
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	add r0, r5, r0
	strb r4, [r0, #0x18]
	ldr r0, [sp]
	mov r2, #9
	bl sub_02009F80
	cmp r0, #2
	bne _021A9F4C
	ldr r0, [r5, #0x10]
	add r1, r5, r0
	add r1, #0x38
	mov r0, #0xff
	b _021A9F5A
_021A9F4C:
	ldr r1, [r6]
	ldr r0, [r5, #0x14]
	add r1, r1, #1
	str r1, [r6]
	ldr r1, [r5, #0x10]
	add r1, r5, r1
	add r1, #0x38
_021A9F5A:
	strb r0, [r1]
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
_021A9F62:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021A9F22
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21a9f00

	thumb_func_start ovy204_21a9f6c
ovy204_21a9f6c: ; 0x021A9F6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	add r4, r2, #0
	mov r7, #0
	bl GFL_BGSysSetEnabledBGsA
	mov r0, #0
	bl GFL_BGSysSetEnabledBGsB
	ldr r0, _021AA010 ; =0x04000050
	ldr r6, _021AA014 ; =0x04001050
	strh r7, [r0]
	strh r7, [r6]
	mov r7, #0
	sub r7, #0x10
	add r0, #0x1c
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	add r6, #0x1c
	add r0, r6, #0
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	bl sub_02046DF8
	mov r0, #0x3e
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [r5, #8]
	mov r0, #6
	lsl r0, r0, #6
	strh r4, [r5, r0]
	bl sub_021AA078
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21aa088
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21aa188
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21aa30c
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy204_21aa3a8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21aa694
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21aa468
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21adaa0
	mov r0, #1
	mov r1, #0x34
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA010: .word 0x04000050
_021AA014: .word 0x04001050
	thumb_func_end ovy204_21a9f6c

	thumb_func_start ovy204_21aa018
ovy204_21aa018: ; 0x021AA018
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021AA02C
	bl sub_02021A3C
	add r0, r4, #0
	bl ovy204_21ade5c
_021AA02C:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021AA036
	bl sub_0203A7F4
_021AA036:
	bl sub_0204B794
	pop {r4, pc}
	thumb_func_end ovy204_21aa018
_021AA03C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy204_21aa044
ovy204_21aa044: ; 0x021AA044
	push {r4, lr}
	add r4, r0, #0
	bl ovy204_21adaf0
	add r0, r4, #0
	bl ovy204_21aa790
	add r0, r4, #0
	bl ovy204_21aa4a4
	add r0, r4, #0
	bl ovy204_21aa440
	add r0, r4, #0
	bl ovy204_21aa364
	add r0, r4, #0
	bl ovy204_21aa2a4
	add r0, r4, #0
	bl ovy204_21aa170
	ldr r0, [r4, #8]
	bl GFL_ArcToolFree
	pop {r4, pc}
	thumb_func_end ovy204_21aa044

	thumb_func_start sub_021AA078
sub_021AA078: ; 0x021AA078
	ldr r0, _021AA080 ; =0x021ADFB0
	ldr r3, _021AA084 ; =GFL_BGSysSetVRAMBanks
	bx r3
	nop
_021AA080: .word 0x021ADFB0
_021AA084: .word GFL_BGSysSetVRAMBanks
	thumb_func_end sub_021AA078

	thumb_func_start ovy204_21aa088
ovy204_21aa088: ; 0x021AA088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	bl GFL_BGSysCreate
	ldr r4, _021AA168 ; =0x021AE048
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	mov r4, #0
	add r6, r4, #0
_021AA0AE:
	ldr r1, _021AA16C ; =0x021AE0FC
	lsl r0, r4, #0x18
	lsl r2, r4, #5
	add r1, r1, r2
	lsr r0, r0, #0x18
	add r2, r6, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020450CC
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02045764
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #5
	blt _021AA0AE
	mov r4, #0xc0
	str r4, [sp]
	str r5, [sp, #4]
	ldr r0, [r7, #8]
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r4, [sp]
	str r5, [sp, #4]
	ldr r0, [r7, #8]
	add r1, r6, #0
	mov r2, #4
	add r3, r6, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r7, #8]
	mov r1, #3
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r7, #8]
	mov r1, #3
	mov r2, #2
	add r3, r6, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r7, #8]
	mov r1, #3
	mov r2, #4
	add r3, r6, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r7, #8]
	mov r1, #5
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r7, #8]
	mov r1, #0xe
	mov r2, #4
	add r3, r6, #0
	bl sub_0204AF50
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021AA168: .word 0x021AE048
_021AA16C: .word 0x021AE0FC
	thumb_func_end ovy204_21aa088

	thumb_func_start ovy204_21aa170
ovy204_21aa170: ; 0x021AA170
	push {r4, lr}
	mov r4, #0
_021AA174:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #5
	blt _021AA174
	bl sub_02044528
	pop {r4, pc}
	thumb_func_end ovy204_21aa170

	thumb_func_start ovy204_21aa188
ovy204_21aa188: ; 0x021AA188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r6, _021AA298 ; =0x02093F08
	add r3, sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0x10
	str r0, [r3]
	add r0, sp, #8
	strb r1, [r0, #8]
	mov r6, #0x70
	strb r6, [r0, #9]
	add r0, r2, #0
	ldr r1, _021AA29C ; =0x021ADFB0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x20
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	mov r1, #0x70
	add r1, #0xc8
	str r0, [r5, r1]
	bl sub_0204C028
	ldr r0, _021AA2A0 ; =0x021AE1B0
	mov r1, #1
	add r2, r4, #0
	bl sub_0204BE9C
	mov r1, #0x70
	add r1, #0xd0
	str r0, [r5, r1]
	mov r0, #0x12
	mov r1, #1
	add r2, r4, #0
	bl sub_0204BF1C
	mov r1, #0x70
	add r1, #0xcc
	str r0, [r5, r1]
	mov r1, #0x70
	add r1, #0xd0
	ldr r1, [r5, r1]
	bl sub_0204C018
	str r4, [sp]
	ldr r0, [r5, #8]
	mov r1, #4
	mov r2, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	mov r1, #0x70
	add r1, #0xd4
	str r0, [r5, r1]
	str r4, [sp]
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl sub_0204BBA0
	mov r1, #0x70
	add r1, #0xdc
	str r0, [r5, r1]
	ldr r0, [r5, #8]
	mov r1, #0xf
	mov r2, #0x10
	add r3, r4, #0
	bl Oam_LoadNCERFile
	mov r1, #0x70
	add r1, #0xe4
	str r0, [r5, r1]
	bl GetDefaultUINarcIdx
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	add r7, r0, #0
	bl sub_0202D814
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp]
	bl Oam_LoadNCGRFile
	add r6, #0xd8
	str r0, [r5, r6]
	bl sub_0202D810
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x60
	str r4, [sp]
	mov r6, #0x60
	bl sub_0204BBA0
	mov r1, #0x60
	add r1, #0xf0
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #4]
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCERFile
	add r6, #0xf8
	str r0, [r5, r6]
	add r0, r7, #0
	bl GFL_ArcToolFree
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021AA298: .word 0x02093F08
_021AA29C: .word 0x021ADFB0
_021AA2A0: .word 0x021AE1B0
	thumb_func_end ovy204_21aa188

	thumb_func_start ovy204_21aa2a4
ovy204_21aa2a4: ; 0x021AA2A4
	push {r4, r5, r6, lr}
	mov r6, #0x51
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021AA2AE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204B98C
	add r4, r4, #1
	cmp r4, #2
	blo _021AA2AE
	mov r6, #0x53
	mov r4, #0
	lsl r6, r6, #2
_021AA2C4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BCD0
	add r4, r4, #1
	cmp r4, #2
	blo _021AA2C4
	mov r6, #0x55
	mov r4, #0
	lsl r6, r6, #2
_021AA2DA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BE64
	add r4, r4, #1
	cmp r4, #2
	blo _021AA2DA
	mov r4, #0x4f
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204BF98
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BECC
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa2a4

	thumb_func_start ovy204_21aa30c
ovy204_21aa30c: ; 0x021AA30C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020232D8
	add r0, r4, #0
	bl GFL_WordSetSystemCreateDefault
	ldr r6, _021AA360 ; =0x000001A2
	str r0, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r4, #0
	mov r7, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #4]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp]
	bl GFL_FontCreate
	sub r6, #0x26
	mov r3, #3
	str r0, [r5, r6]
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #3
	add r3, #0xfd
	bl GFL_TCBExMgrCreate
	str r0, [r5, #0x28]
	add r0, r4, #0
	str r7, [r5, #0x2c]
	bl sub_02021998
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA360: .word 0x000001A2
	thumb_func_end ovy204_21aa30c

	thumb_func_start ovy204_21aa364
ovy204_21aa364: ; 0x021AA364
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_02021C44
	ldr r0, [r4, #0x34]
	bl sub_02021A18
	mov r5, #0
	ldr r0, [r4, #0x2c]
	str r5, [r4, #0x34]
	cmp r0, #0
	beq _021AA384
	bl sub_020223CC
	str r5, [r4, #0x2c]
_021AA384:
	ldr r0, [r4, #0x28]
	bl GFL_TCBExMgrFree
	mov r0, #0
	str r0, [r4, #0x28]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02022DA8
	ldr r0, [r4, #4]
	bl GFL_MsgDataFree
	ldr r0, [r4]
	bl GFL_WordSetSystemFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa364

	thumb_func_start ovy204_21aa3a8
ovy204_21aa3a8: ; 0x021AA3A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x20
	mov r3, #5
	add r6, r1, #0
	add r4, r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r3, #6
	str r4, [sp, #4]
	mov r7, #0
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	mov r3, #7
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	lsl r3, r3, #6
	str r4, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	ldrb r3, [r6, #0xd]
	mov r0, #1
	mov r1, #0x46
	mov r2, #0xb
	str r4, [sp]
	bl sub_02024D00
	add r0, r4, #0
	bl BmpWin_InitAllocator
	add r1, r5, #0
	str r7, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x64
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc
	mov r2, #1
	mov r3, #1
	str r7, [sp, #0x14]
	bl ovy204_21a9d8c
	mov r0, #0x80
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0x14]
	mov r0, #0x80
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0x18]
	mov r0, #0x80
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0x1c]
	mov r0, #0x80
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0x20]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa3a8

	thumb_func_start ovy204_21aa440
ovy204_21aa440: ; 0x021AA440
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x20]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x14]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x18]
	bl GFL_StrBufFree
	ldr r0, [r4, #0xc]
	bl BmpWin_Free
	bl sub_020480A8
	pop {r4, pc}
	thumb_func_end ovy204_21aa440

	thumb_func_start ovy204_21aa468
ovy204_21aa468: ; 0x021AA468
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x5d
	add r6, r0, #0
	lsl r7, r7, #2
	add r0, r6, r7
	str r1, [sp, #4]
	mov r4, #0
	str r0, [sp, #8]
	sub r7, #8
_021AA47C:
	ldr r1, _021AA4A0 ; =0x021ADED9
	ldr r0, [sp, #4]
	ldrb r1, [r1, r4]
	str r0, [sp]
	ldr r3, [sp, #8]
	lsl r5, r4, #2
	ldr r0, [r6, #8]
	mov r2, #0
	add r3, r3, r5
	bl sub_0204B32C
	add r1, r6, r5
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #2
	blt _021AA47C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AA4A0: .word 0x021ADED9
	thumb_func_end ovy204_21aa468

	thumb_func_start ovy204_21aa4a4
ovy204_21aa4a4: ; 0x021AA4A4
	push {r4, r5, r6, lr}
	mov r6, #0x5b
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021AA4AE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #2
	blt _021AA4AE
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21aa4a4

	thumb_func_start ovy204_21aa4c0
ovy204_21aa4c0: ; 0x021AA4C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r7, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4]
	bl BmpWin_FlushChar
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x18]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #4
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl sub_0219A2A4
	ldr r0, [r4]
	bl ovy204_21ade98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21aa4c0

	thumb_func_start ovy204_21aa51c
ovy204_21aa51c: ; 0x021AA51C
	push {r4, lr}
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa51c

	thumb_func_start ovy204_21aa534
ovy204_21aa534: ; 0x021AA534
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _021AA5A8 ; =0x05F5E100
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	blx sub_0208D5C4
	mov r7, #2
	add r2, r0, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r3, #4
	bl StringSetNumber
	ldr r2, _021AA5AC ; =0x00002710
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	blx sub_0208D5C4
	ldr r2, _021AA5AC ; =0x00002710
	mov r3, #0
	blx sub_0208D5D0
	add r2, r0, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #2
	mov r3, #4
	bl StringSetNumber
	ldr r2, _021AA5AC ; =0x00002710
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	blx sub_0208D5D0
	add r2, r0, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #3
	mov r3, #4
	bl StringSetNumber
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA5A8: .word 0x05F5E100
_021AA5AC: .word 0x00002710
	thumb_func_end ovy204_21aa534

	thumb_func_start ovy204_21aa5b0
ovy204_21aa5b0: ; 0x021AA5B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r1, #4]
	add r4, r3, #0
	add r7, r2, #0
	bl sub_02017238
	str r0, [sp]
	add r0, r4, #0
	bl sub_02008B0C
	add r5, r0, #0
	mov r0, #0xa
	add r1, r4, #0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0200A0F0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02048614
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02008B84
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
	bl GFL_CopyVarForText
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa5b0

	thumb_func_start ovy204_21aa604
ovy204_21aa604: ; 0x021AA604
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r1, #4]
	add r4, r2, #0
	bl sub_02017238
	add r1, r4, #0
	mov r2, #7
	add r7, r0, #0
	mov r6, #1
	bl sub_02009F80
	add r2, r0, #0
	bne _021AA624
	mov r6, #0
_021AA624:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #5
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #6
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa604

	thumb_func_start ovy204_21aa678
ovy204_21aa678: ; 0x021AA678
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa678

	thumb_func_start ovy204_21aa694
ovy204_21aa694: ; 0x021AA694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	add r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #0x24
	str r0, [sp, #0x14]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x24
	str r0, [sp, #0x10]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #0x24
	add r7, r1, #0
	mov r4, #0
	str r0, [sp, #0xc]
_021AA6DA:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021AA784 ; =0x021AE1E0
	lsl r1, r4, #3
	add r0, r0, r1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x4e
	ldr r1, [sp, #0x20]
	str r7, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x14]
	str r0, [r6, r1]
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _021AA6DA
	ldr r0, _021AA788 ; =0x021AE1F0
	mov r4, #0x4e
	lsl r4, r4, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r7, [sp, #8]
	add r1, #0x10
	add r2, #0x18
	add r3, #0x20
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r1, r4, #0
	add r1, #0x2c
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C124
	ldr r0, _021AA78C ; =0x021AE1F8
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r2, r4, #0
	add r3, r4, #0
	str r7, [sp, #8]
	add r1, #0x10
	add r2, #0x18
	add r3, #0x20
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r4, #0x30
	mov r1, #1
	str r0, [r5, r4]
	bl sub_0204C124
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021AA784: .word 0x021AE1E0
_021AA788: .word 0x021AE1F0
_021AA78C: .word 0x021AE1F8
	thumb_func_end ovy204_21aa694

	thumb_func_start ovy204_21aa790
ovy204_21aa790: ; 0x021AA790
	push {r4, r5, r6, lr}
	mov r4, #0x5a
	add r6, r0, #0
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	bl sub_0204C108
	sub r0, r4, #4
	ldr r0, [r6, r0]
	bl sub_0204C108
	mov r5, #0
	sub r4, #0xc
_021AA7AA:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, r4]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #2
	blt _021AA7AA
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21aa790

	thumb_func_start ovy204_21aa7bc
ovy204_21aa7bc: ; 0x021AA7BC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x57
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_021AA7C8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _021AA7C8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21aa7bc

	thumb_func_start ovy204_21aa7dc
ovy204_21aa7dc: ; 0x021AA7DC
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x57
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_021AA7E8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	add r1, r6, #0
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #2
	blt _021AA7E8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21aa7dc

	thumb_func_start ovy204_21aa7fc
ovy204_21aa7fc: ; 0x021AA7FC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0x57
	lsl r2, r2, #2
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C488
	ldr r0, [r5, r4]
	bl sub_0204C56C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21aa7fc

	thumb_func_start ovy204_21aa820
ovy204_21aa820: ; 0x021AA820
	push {r3, r4, lr}
	sub sp, #0x14
	str r3, [sp]
	mov r4, #2
	add r3, sp, #0
	strb r4, [r3, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x20
	strb r0, [r3, #0x10]
	cmp r2, #1
	bne _021AA83E
	mov r0, #0x12
	b _021AA840
_021AA83E:
	mov r0, #0xc
_021AA840:
	strb r0, [r3, #0x11]
	mov r2, #8
	add r0, sp, #0
	strb r2, [r0, #0x12]
	mov r2, #3
	strb r2, [r0, #0x13]
	ldr r1, [r1]
	add r0, sp, #0
	bl sub_0202D974
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ovy204_21aa820

	thumb_func_start ovy204_21aa858
ovy204_21aa858: ; 0x021AA858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202DB70
	add r0, r5, #0
	bl sub_0202DBE4
	cmp r0, #1
	bne _021AA87C
	add r0, r5, #0
	bl sub_0202DC00
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202DA54
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021AA87C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa858

	thumb_func_start ovy204_21aa884
ovy204_21aa884: ; 0x021AA884
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203D554
	str r0, [r4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy204_21aab24
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21aa884

	thumb_func_start ovy204_21aa8a4
ovy204_21aa8a4: ; 0x021AA8A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r7, r3, #0
	ldrb r3, [r4, #8]
	add r5, r0, #0
	add r6, r2, #0
	cmp r3, #0xb
	bhi _021AA990
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021AA8C2: ; jump table
	.short _021AA8DA - _021AA8C2 - 2 ; case 0
	.short _021AA904 - _021AA8C2 - 2 ; case 1
	.short _021AA910 - _021AA8C2 - 2 ; case 2
	.short _021AA922 - _021AA8C2 - 2 ; case 3
	.short _021AA95E - _021AA8C2 - 2 ; case 4
	.short _021AA9E4 - _021AA8C2 - 2 ; case 5
	.short _021AAA00 - _021AA8C2 - 2 ; case 6
	.short _021AAA18 - _021AA8C2 - 2 ; case 7
	.short _021AAA40 - _021AA8C2 - 2 ; case 8
	.short _021AAA98 - _021AA8C2 - 2 ; case 9
	.short _021AAAB6 - _021AA8C2 - 2 ; case 10
	.short _021AAAEE - _021AA8C2 - 2 ; case 11
_021AA8DA:
	mov r3, #0x34
	bl ovy204_21aa884
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21aacc8
	mov r0, #6
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	bl GFL_FadeScreenSet
	strb r5, [r4, #8]
	b _021AAB12
_021AA904:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021AA990
_021AA90C:
	mov r0, #3
_021AA90E:
	b _021AAB10
_021AA910:
	mov r3, #0x34
	bl ovy204_21aa884
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21aacc8
	b _021AA90C
_021AA922:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02035198
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21aaea8
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021AA990
	ldr r0, [r5]
	cmp r0, #3
	bne _021AA94A
	add r0, r6, #0
	bl ovy204_21add84
	b _021AA95A
_021AA94A:
	cmp r0, #4
	bne _021AA956
	add r0, r6, #0
	bl ovy204_21adda8
	b _021AA95A
_021AA956:
	mov r0, #0
	strh r0, [r5, #8]
_021AA95A:
	mov r0, #4
	b _021AA90E
_021AA95E:
	ldr r1, [r5]
	cmp r1, #3
	bne _021AA974
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021AA990
	b _021AA992
_021AA974:
	cmp r1, #4
	bne _021AA988
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021AA990
	b _021AA992
_021AA988:
	bl ovy204_21adbc4
	cmp r0, #1
	bne _021AA992
_021AA990:
	b _021AAB12
_021AA992:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21ab0a0
	cmp r0, #1
	bne _021AA9D4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021AAECC
	ldr r0, [r5]
	cmp r0, #3
	bne _021AA9AE
	b _021AA9B8
_021AA9AE:
	cmp r0, #4
	bne _021AA9B4
	b _021AA9B8
_021AA9B4:
	cmp r0, #1
	bne _021AA9BC
_021AA9B8:
	mov r0, #5
	b _021AA90E
_021AA9BC:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy204_21aaee4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021AAB1C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021AA9D4:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x3a
_021AA9DA:
	add r3, r7, #0
	bl ovy204_21aaf3c
	mov r0, #0xb
	b _021AAB10
_021AA9E4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	ldrb r0, [r4, #8]
	add r0, r0, #1
	b _021AA90E
_021AAA00:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021AAAC4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021AAB1C
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021AAA18:
	mov r3, #0x34
	bl ovy204_21aa884
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21aacc8
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	bl GFL_FadeScreenSet
	mov r0, #8
	b _021AA90E
_021AAA40:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021AAB12
	add r0, r7, #0
	bl sub_02008B0C
	ldr r1, [r4, #0x58]
	str r0, [sp, #0xc]
	bl sub_02008B84
	ldr r0, [r6]
	ldr r2, [sp, #0xc]
	mov r1, #0
	bl GFL_CopyVarForText
	ldr r0, [sp, #0xc]
	bl GFL_HeapFree
	ldr r0, [r4, #0x5c]
	add r1, sp, #0x10
	bl ovy204_21ad9f8
	add r3, r0, #0
	ldr r0, [sp, #0x10]
	add r2, r1, #0
	cmp r0, #0
	beq _021AAA90
	add r0, r6, #0
	add r1, r3, #0
	bl ovy204_21aa534
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x37
	add r3, r7, #0
	bl ovy204_21aaf3c
	mov r0, #9
	b _021AA90E
_021AAA90:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x38
	b _021AA9DA
_021AAA98:
	bl ovy204_21ab058
	cmp r0, #0
	beq _021AAB12
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x30
	add r1, #0x48
	mov r2, #1
	add r3, r7, #0
	bl ovy204_21aa820
	str r0, [r5, #0x4c]
	mov r0, #0xa
	b _021AA90E
_021AAAB6:
	ldr r0, [r5, #0x4c]
	bl ovy204_21aa858
	cmp r0, #0
	beq _021AAAC6
	cmp r0, #1
	beq _021AAAE6
_021AAAC4:
	b _021AAB12
_021AAAC6:
	bl sub_0203D554
	str r0, [r4]
	ldr r1, [r4, #0x5c]
	ldr r2, [r4, #0x58]
	add r0, r4, #0
	bl ovy204_21a9e40
	add r2, r0, #0
	bne _021AAADC
	b _021AAB00
_021AAADC:
	ldr r3, _021AAB18 ; =0x021ADEDD
	add r0, r5, #0
	add r1, r6, #0
	ldrb r2, [r3, r2]
	b _021AA9DA
_021AAAE6:
	bl sub_0203D554
	str r0, [r4]
	b _021AAB00
_021AAAEE:
	bl ovy204_21ab058
	cmp r0, #0
	beq _021AAB12
	add r0, r4, #0
	bl ovy204_21ada68
	cmp r0, #1
	bne _021AAB12
_021AAB00:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy204_21ab078
	add r0, r5, #0
	bl ovy204_21adb80
	mov r0, #3
_021AAB10:
	strb r0, [r4, #8]
_021AAB12:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AAB18: .word 0x021ADEDD
	thumb_func_end ovy204_21aa8a4

	thumb_func_start sub_021AAB1C
sub_021AAB1C: ; 0x021AAB1C
	ldr r3, _021AAB20 ; =ovy204_21aac84
	bx r3
	.align 2, 0
_021AAB20: .word ovy204_21aac84
	thumb_func_end sub_021AAB1C

	thumb_func_start ovy204_21aab24
ovy204_21aab24: ; 0x021AAB24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x18]
	str r3, [sp, #0x20]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r1, [sp, #0x1c]
	str r0, [sp, #8]
	mov r6, #0xa
	ldr r1, [sp, #0x18]
	add r5, r2, #0
	str r6, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r4, #0
	add r0, r5, #0
	add r1, #0xc
	mov r2, #3
	mov r3, #4
	str r4, [sp, #0x14]
	mov r7, #4
	bl ovy204_21a9d8c
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [sp, #0x18]
	str r6, [sp, #0xc]
	mov r0, #0xac
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r0, r5, #0
	add r1, #0x1c
	mov r2, #1
	mov r3, #2
	bl ovy204_21a9d8c
	ldr r1, [sp, #0x20]
	mov r0, #0x80
	bl GFL_StrBufCreate
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x2c]
	ldr r1, [sp, #0x20]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r1, [sp, #0x20]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [r5]
	mov r1, #0
	bl GFL_CopyVarForText
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
_021AABB2:
	ldr r0, [r5, #4]
	add r1, r4, #1
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r6, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r3, r0, #0
	mov r0, #0x5f
	mov r2, #0xc0
	sub r2, r2, r3
	mov r3, #0x28
	mul r3, r4
	add r3, #8
	lsl r2, r2, #0xf
	lsl r3, r3, #0x10
	str r6, [sp]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [r5, #0x34]
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add r4, r4, #1
	cmp r4, #3
	blt _021AABB2
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0xc]
	bl ovy204_21ade98
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0xd
	mov r2, #0
	add r3, #0x18
	bl sub_0204B32C
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x14]
	ldr r0, [r5, #4]
	mov r1, #0x42
	bl sub_0204898C
	ldr r1, [sp, #0x18]
	ldr r4, _021AAC80 ; =0x000039E3
	str r0, [r1, #0x30]
	add r0, r1, #0
	mov r1, #0
	str r1, [r0, #0x38]
	strh r4, [r0, #0x34]
	ldr r0, [r5, #4]
	mov r1, #0x43
	bl sub_0204898C
	ldr r1, [sp, #0x18]
	mov r2, #0x5f
	str r0, [r1, #0x3c]
	add r0, r1, #0
	add r0, #0x40
	strh r4, [r0]
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r1, [r0, #0x44]
	ldr r0, [sp, #0x20]
	lsl r2, r2, #2
	str r0, [sp]
	ldr r2, [r5, r2]
	ldr r3, [r5, #0x34]
	mov r0, #1
	mov r1, #0xe
	bl sub_0202E168
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x48]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AAC80: .word 0x000039E3
	thumb_func_end ovy204_21aab24

	thumb_func_start ovy204_21aac84
ovy204_21aac84: ; 0x021AAC84
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021ADE28
	add r0, r4, #0
	add r4, #0xc
	add r1, r4, #0
	bl ovy204_21ade3c
	ldr r0, [r5, #0x48]
	bl sub_0202E1DC
	ldr r0, [r5, #0x30]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x3c]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x2c]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x1c]
	bl BmpWin_Free
	ldr r0, [r5, #0xc]
	bl BmpWin_Free
	ldr r0, [r5, #0x14]
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21aac84

	thumb_func_start ovy204_21aacc8
ovy204_21aacc8: ; 0x021AACC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r5, r0, #0
	add r0, r6, #0
	add r1, #0xc
	mov r2, #0
	bl ovy204_21aa4c0
	ldr r1, [r5, #0x18]
	mov r2, #0
	ldrh r0, [r1]
	mov r3, #0
	mov r7, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	bl sub_020454AC
	mov r0, #2
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	mov r0, #2
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	ldr r0, [r4]
	cmp r0, #0
	bne _021AAD24
	ldr r1, [r5]
	add r0, r6, #0
	bl ovy204_21adb50
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021AAD24:
	add r0, r7, #0
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21aacc8

	thumb_func_start ovy204_21aad30
ovy204_21aad30: ; 0x021AAD30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl GCTX_HIDGetPressedKeys
	mov r7, #2
	tst r0, r7
	beq _021AAD62
	ldr r0, _021AAE30 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r1, [r5]
	add r0, r6, #0
	bl ovy204_21adb38
	mov r6, #0
	mov r0, #0
	bl sub_0203D564
	str r6, [r4]
	mov r0, #3
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AAD62:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r7, #9
	tst r0, r1
	beq _021AAD8C
	ldr r0, _021AAE34 ; =0x00000556
	bl GFL_SndSEPlay
	ldr r1, [r5]
	add r0, r6, #0
	bl ovy204_21adb38
	mov r6, #0
	mov r0, #0
	bl sub_0203D564
	str r6, [r4]
	mov r0, #4
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AAD8C:
	ldr r0, [r4]
	cmp r0, #1
	bne _021AADBA
	bl GCTX_HIDGetPressedKeys
	ldr r1, _021AAE38 ; =0x00000CF3
	tst r0, r1
	beq _021AADB6
	ldr r0, _021AAE3C ; =0x00000548
	bl GFL_SndSEPlay
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r1, #0
	bl ovy204_21adb68
	mov r0, #0
	mov r5, #0
	bl sub_0203D564
	str r5, [r4]
_021AADB6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AADBA:
	bl GCTX_HIDGetPressedKeys
	mov r4, #1
	tst r0, r4
	beq _021AADD8
	ldr r0, _021AAE40 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020352B0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AADD8:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _021AAE02
	ldr r0, [r5]
	cmp r0, #0
	beq _021AAE2C
	ldr r0, _021AAE3C ; =0x00000548
	bl GFL_SndSEPlay
	ldr r2, [r5]
	add r0, r6, #0
	sub r1, r2, #1
	bl ovy204_21adb68
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AAE02:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _021AAE2C
	ldr r0, [r5]
	cmp r0, #2
	bhs _021AAE2C
	ldr r0, _021AAE3C ; =0x00000548
	bl GFL_SndSEPlay
	ldr r2, [r5]
	add r0, r6, #0
	add r1, r2, #1
	bl ovy204_21adb68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021AAE2C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAE30: .word 0x00000551
_021AAE34: .word 0x00000556
_021AAE38: .word 0x00000CF3
_021AAE3C: .word 0x00000548
_021AAE40: .word 0x0000054C
	thumb_func_end ovy204_21aad30

	thumb_func_start ovy204_21aae44
ovy204_21aae44: ; 0x021AAE44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021AAE98 ; =0x021ADF6E
	add r7, r1, #0
	add r6, r2, #0
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021AAE94
	cmp r4, #3
	bne _021AAE70
	ldr r0, _021AAE9C ; =0x00000551
_021AAE62:
	bl GFL_SndSEPlay
	ldr r1, [r5]
	add r0, r6, #0
	bl ovy204_21adb38
	b _021AAE88
_021AAE70:
	cmp r4, #4
	bne _021AAE78
	ldr r0, _021AAEA0 ; =0x00000556
	b _021AAE62
_021AAE78:
	ldr r0, _021AAEA4 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r2, [r5]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy204_21adb68
_021AAE88:
	mov r0, #1
	str r4, [r5]
	mov r5, #1
	bl sub_0203D564
	str r5, [r7]
_021AAE94:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAE98: .word 0x021ADF6E
_021AAE9C: .word 0x00000551
_021AAEA0: .word 0x00000556
_021AAEA4: .word 0x0000054C
	thumb_func_end ovy204_21aae44

	thumb_func_start ovy204_21aaea8
ovy204_21aaea8: ; 0x021AAEA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy204_21aae44
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021AAEC0
	mov r0, #1
	pop {r4, r5, r6, pc}
_021AAEC0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21aad30
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21aaea8

	thumb_func_start sub_021AAECC
sub_021AAECC: ; 0x021AAECC
	add r2, r0, #0
	add r0, r1, #0
	ldr r2, [r2]
	ldr r1, _021AAEDC ; =0x021ADF00
	ldr r3, _021AAEE0 ; =sub_021A9E18
	ldrb r1, [r1, r2]
	mov r2, #0
	bx r3
	.align 2, 0
_021AAEDC: .word 0x021ADF00
_021AAEE0: .word sub_021A9E18
	thumb_func_end sub_021AAECC

	thumb_func_start ovy204_21aaee4
ovy204_21aaee4: ; 0x021AAEE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	bl ovy204_21aa51c
	mov r4, #0x20
	str r4, [sp]
	mov r6, #0x18
	str r6, [sp, #4]
	mov r7, #0x10
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #2
	bl sub_02045B7C
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #3
	bl sub_02045B7C
	ldr r4, [r5, #0xc]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21aaee4

	thumb_func_start ovy204_21aaf3c
ovy204_21aaf3c: ; 0x021AAF3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	add r7, r3, #0
	str r2, [sp, #0x18]
	cmp r0, #0
	beq _021AAF56
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x2c]
_021AAF56:
	mov r0, #0x80
	add r1, r7, #0
	mov r6, #0x80
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4]
	ldr r1, [r5, #0x2c]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	bl sub_02017BCC
	add r6, #0xfc
	ldr r1, [r4, r6]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x2c]
	bl sub_02022268
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x1c]
	mov r1, #2
	mov r2, #0x46
	mov r3, #0xb
	bl sub_02024E80
	ldr r4, [r5, #0x1c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #0
	bl ovy204_21addcc
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21aaf3c

	thumb_func_start ovy204_21aafe4
ovy204_21aafe4: ; 0x021AAFE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020223B4
	cmp r0, #0
	beq _021AAFFC
	cmp r0, #1
	beq _021AB01C
	cmp r0, #2
	beq _021AB044
	b _021AB050
_021AAFFC:
	bl sub_0203DA48
	cmp r0, #1
	beq _021AB00E
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _021AB016
_021AB00E:
	add r0, r5, #0
	mov r1, #0
	bl sub_020223E0
_021AB016:
	mov r0, #0
_021AB018:
	str r0, [r4]
	b _021AB050
_021AB01C:
	ldr r0, [r4]
	cmp r0, #0
	bne _021AB050
	bl sub_0203DA48
	cmp r0, #1
	beq _021AB034
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021AB050
_021AB034:
	ldr r0, _021AB054 ; =0x00000547
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_020223BC
	mov r0, #1
	b _021AB018
_021AB044:
	add r0, r5, #0
	bl sub_020223CC
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021AB050:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AB054: .word 0x00000547
	thumb_func_end ovy204_21aafe4

	thumb_func_start ovy204_21ab058
ovy204_21ab058: ; 0x021AB058
	push {r4, lr}
	ldr r0, [r2, #0x2c]
	add r2, #0x30
	add r4, r1, #0
	add r1, r2, #0
	bl ovy204_21aafe4
	cmp r0, #0
	bne _021AB072
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021AB072:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21ab058

	thumb_func_start ovy204_21ab078
ovy204_21ab078: ; 0x021AB078
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl ovy204_21addcc
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02024EEC
	ldr r4, [r4, #0x1c]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21ab078

	thumb_func_start ovy204_21ab0a0
ovy204_21ab0a0: ; 0x021AB0A0
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	cmp r0, #1
	bne _021AB0CA
	ldr r0, [r1, #4]
	bl sub_02017238
	add r5, r0, #0
	mov r4, #0
_021AB0B2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200A138
	cmp r0, #0
	bne _021AB0C2
	mov r0, #1
	pop {r3, r4, r5, pc}
_021AB0C2:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021AB0B2
	b _021AB0CE
_021AB0CA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021AB0CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21ab0a0

	thumb_func_start ovy204_21ab0d4
ovy204_21ab0d4: ; 0x021AB0D4
	push {r3, lr}
	bl ovy204_21ab4b0
	pop {r3, pc}
	thumb_func_end ovy204_21ab0d4

	thumb_func_start ovy204_21ab0dc
ovy204_21ab0dc: ; 0x021AB0DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r3, [sp, #0xc]
	ldrb r5, [r4, #8]
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0x1c
	bls _021AB0F0
	b _021AB4A2
_021AB0F0:
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021AB0FC: ; jump table
	.short _021AB136 - _021AB0FC - 2 ; case 0
	.short _021AB140 - _021AB0FC - 2 ; case 1
	.short _021AB164 - _021AB0FC - 2 ; case 2
	.short _021AB1D6 - _021AB0FC - 2 ; case 3
	.short _021AB1DE - _021AB0FC - 2 ; case 4
	.short _021AB1EA - _021AB0FC - 2 ; case 5
	.short _021AB1F6 - _021AB0FC - 2 ; case 6
	.short _021AB21C - _021AB0FC - 2 ; case 7
	.short _021AB234 - _021AB0FC - 2 ; case 8
	.short _021AB23A - _021AB0FC - 2 ; case 9
	.short _021AB246 - _021AB0FC - 2 ; case 10
	.short _021AB274 - _021AB0FC - 2 ; case 11
	.short _021AB296 - _021AB0FC - 2 ; case 12
	.short _021AB2D0 - _021AB0FC - 2 ; case 13
	.short _021AB2FC - _021AB0FC - 2 ; case 14
	.short _021AB312 - _021AB0FC - 2 ; case 15
	.short _021AB344 - _021AB0FC - 2 ; case 16
	.short _021AB34E - _021AB0FC - 2 ; case 17
	.short _021AB356 - _021AB0FC - 2 ; case 18
	.short _021AB362 - _021AB0FC - 2 ; case 19
	.short _021AB398 - _021AB0FC - 2 ; case 20
	.short _021AB3A2 - _021AB0FC - 2 ; case 21
	.short _021AB3EA - _021AB0FC - 2 ; case 22
	.short _021AB3F2 - _021AB0FC - 2 ; case 23
	.short _021AB400 - _021AB0FC - 2 ; case 24
	.short _021AB420 - _021AB0FC - 2 ; case 25
	.short _021AB452 - _021AB0FC - 2 ; case 26
	.short _021AB464 - _021AB0FC - 2 ; case 27
	.short _021AB480 - _021AB0FC - 2 ; case 28
_021AB136:
	mov r0, #0
	strh r0, [r6]
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r0, [r6, #6]
_021AB140:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0x34
	bl ovy204_21ab0d4
	add r0, r4, #0
	bl ovy204_21a9f00
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ab7f0
_021AB15E:
	mov r0, #2
_021AB160:
	strb r0, [r4, #8]
	b _021AB4A2
_021AB164:
	mov r5, #0x61
	lsl r5, r5, #2
	ldr r0, [r7, r5]
	bl sub_02035198
	add r0, r5, #4
	ldr r0, [r7, r0]
	bl sub_02035198
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21abbac
	cmp r0, #5
	bhi _021AB254
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AB190: ; jump table
	.short _021AB4A2 - _021AB190 - 2 ; case 0
	.short _021AB19C - _021AB190 - 2 ; case 1
	.short _021AB1C2 - _021AB190 - 2 ; case 2
	.short _021AB1CA - _021AB190 - 2 ; case 3
	.short _021AB1CE - _021AB190 - 2 ; case 4
	.short _021AB1D2 - _021AB190 - 2 ; case 5
_021AB19C:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
_021AB1A2:
	bl sub_021AC04C
	mov r1, #0
	ldrsh r1, [r6, r1]
	add r0, r6, #0
	bl ovy204_21addf0
	add r0, r5, #4
	ldr r0, [r7, r0]
	bl sub_020352B0
	add r0, r5, #4
	ldr r0, [r7, r0]
	bl sub_02035198
	b _021AB4A2
_021AB1C2:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #3
	b _021AB1A2
_021AB1CA:
	mov r0, #0x19
	b _021AB160
_021AB1CE:
	mov r0, #0x1a
	b _021AB160
_021AB1D2:
	mov r0, #6
	b _021AB160
_021AB1D6:
	bl ovy204_21abbe0
	mov r0, #4
	b _021AB160
_021AB1DE:
	bl ovy204_21abc24
	cmp r0, #1
	bne _021AB254
	mov r0, #5
	b _021AB160
_021AB1EA:
	add r1, r7, #0
	bl ovy204_21abd38
	cmp r0, #1
	bne _021AB254
	b _021AB15E
_021AB1F6:
	bl ovy204_21add04
	cmp r0, #1
	beq _021AB254
	add r0, r6, #0
	bl sub_021AC184
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A9EFC
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21abd94
	mov r0, #7
	b _021AB160
_021AB21C:
	bl ovy204_21ac120
	cmp r0, #1
	bne _021AB254
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21abdc0
	mov r0, #8
	b _021AB160
_021AB234:
	bl ovy204_21abe54
	b _021AB160
_021AB23A:
	mov r0, #0x67
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r0, #0xa
	b _021AB160
_021AB246:
	mov r5, #0x67
	lsl r5, r5, #2
	ldr r3, [r6, r5]
	sub r3, r3, #1
	str r3, [r6, r5]
	cmp r3, #0
	ble _021AB256
_021AB254:
	b _021AB4A2
_021AB256:
	bl ovy204_21ab82c
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021AB4A8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AB274:
	mov r1, #0xb
	ldrsb r2, [r4, r1]
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	strh r0, [r6]
	ldrsb r0, [r4, r1]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	strh r0, [r6, #4]
	mov r0, #1
	b _021AB160
_021AB296:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	add r0, r6, #0
	bl sub_021AC184
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017238
	add r1, r4, r5
	ldrb r1, [r1, #0x18]
	bl sub_0200A0F0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A9EF4
	mov r0, #0xd
	b _021AB160
_021AB2D0:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021AB374
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ab82c
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021AB4A8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AB2FC:
	bl sub_021AC184
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017238
	add r1, r4, r5
	ldrb r1, [r1, #0x18]
	ldr r2, [r4, #0x58]
	bl sub_0200A11C
_021AB312:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0x34
	bl ovy204_21ab0d4
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ab7f0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x10
	b _021AB160
_021AB344:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021AB374
	b _021AB15E
_021AB34E:
	bl ovy204_21abf2c
	mov r0, #0x12
	b _021AB160
_021AB356:
	bl ovy204_21abf58
	cmp r0, #1
	bne _021AB374
	mov r0, #0x13
	b _021AB160
_021AB362:
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl ovy204_21aa858
	cmp r0, #0
	beq _021AB376
	cmp r0, #1
	beq _021AB388
_021AB374:
	b _021AB4A2
_021AB376:
	bl sub_0203D554
	str r0, [r4]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy204_21ac140
	mov r0, #0x14
	b _021AB160
_021AB388:
	bl sub_0203D554
	str r0, [r4]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy204_21ac140
	b _021AB15E
_021AB398:
	add r1, r7, #0
	bl ovy204_21ac194
	mov r0, #0x15
	b _021AB160
_021AB3A2:
	add r1, r7, #0
	bl ovy204_21ac234
	cmp r0, #1
	bne _021AB4A2
	ldr r0, [r4, #4]
	bl sub_02017238
	add r5, r0, #0
	add r0, r6, #0
	bl sub_021AC184
	add r1, r0, #0
	add r1, r4, r1
	ldrb r1, [r1, #0x18]
	add r0, r5, #0
	bl sub_0200A190
	add r0, r4, #0
	bl ovy204_21a9f00
	mov r0, #4
	ldrsh r0, [r6, r0]
	mov r3, #0
	add r1, r4, #0
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	str r0, [sp, #8]
	ldrsh r3, [r6, r3]
	add r0, r6, #0
	bl ovy204_21abf88
	mov r0, #0x16
	b _021AB160
_021AB3EA:
	add r1, r7, #0
	bl ovy204_21ac264
	b _021AB15E
_021AB3F2:
	bl ovy204_21abecc
	cmp r0, #1
	bne _021AB3FE
	mov r0, #0x18
	b _021AB160
_021AB3FE:
	b _021AB15E
_021AB400:
	bl ovy204_21ac120
	cmp r0, #0
	beq _021AB4A2
	add r0, r4, #0
	bl ovy204_21ada68
	cmp r0, #1
	bne _021AB4A2
	mov r0, #2
	strb r0, [r4, #8]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy204_21ac140
	b _021AB4A2
_021AB420:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021AB4A2
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ab82c
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021AB4A8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AB452:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021AB4A2
	mov r0, #0x1b
	b _021AB160
_021AB464:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x1c
	b _021AB160
_021AB480:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021AB4A2
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021AB4A8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AB4A2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ab0dc

	thumb_func_start sub_021AB4A8
sub_021AB4A8: ; 0x021AB4A8
	ldr r3, _021AB4AC ; =ovy204_21ab72c
	bx r3
	.align 2, 0
_021AB4AC: .word ovy204_21ab72c
	thumb_func_end sub_021AB4A8

	thumb_func_start ovy204_21ab4b0
ovy204_21ab4b0: ; 0x021AB4B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	mov r6, #0
	add r7, r0, #0
	str r0, [sp, #0x20]
	add r0, #0xf0
	add r4, r2, #0
	str r3, [sp, #0x18]
	add r5, r6, #0
	str r0, [sp, #0x20]
_021AB4C4:
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021AB718 ; =0x021ADF48
	add r0, r0, r1
	mov r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bge _021AB4D8
	neg r1, r1
_021AB4D8:
	mov r2, #0
	ldrsh r3, [r0, r2]
	cmp r3, #0
	bge _021AB4E2
	neg r3, r3
_021AB4E2:
	add r0, r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r3, r3, #4
	lsl r3, r3, #0x18
	str r5, [sp, #0x10]
	ldr r1, [sp, #0x20]
	lsl r2, r6, #3
	add r1, r1, r2
	add r0, r4, #0
	mov r2, #3
	lsr r3, r3, #0x18
	str r5, [sp, #0x14]
	bl ovy204_21a9d8c
	add r6, r6, #1
	cmp r6, #2
	blt _021AB4C4
	add r0, r7, #0
	str r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	mov r6, #0
_021AB51E:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	str r0, [sp]
	mov r0, #0x4c
	mul r1, r0
	ldr r0, [sp, #0x24]
	mov r2, #6
	add r3, r5, #0
	mul r3, r2
	ldr r2, _021AB718 ; =0x021ADF48
	add r0, r0, r1
	add r2, r2, r3
	add r1, r4, #0
	add r3, r6, #0
	bl sub_021AC290
	add r5, r5, #1
	cmp r5, #3
	blt _021AB51E
	add r0, r7, #0
	add r0, #0xf0
	str r0, [r7, #0x14]
	add r1, r7, #0
	add r0, r7, #0
	add r1, #0xf8
	add r0, #0xac
	str r1, [r0]
	str r1, [r7, #0x60]
	mov r0, #0x4f
	lsl r0, r0, #2
	str r0, [sp, #0x2c]
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x18]
	add r1, r6, #0
	mov r2, #0x10
	mov r5, #0x10
	bl sub_021A78C0
	mov r1, #0x10
	add r1, #0xf4
	str r0, [r7, r1]
	ldr r0, [sp, #0x18]
	add r5, #0xf4
	str r0, [sp]
	ldr r0, [r7, r5]
	add r1, r6, #0
	mov r2, #2
	mov r3, #0xe0
	bl sub_021A7A24
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x40]
	sub r0, #0x24
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x3c]
	sub r0, #0x20
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x38]
	sub r0, #0x1c
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x34]
	add r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, #0x10
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r0, #0x14
	str r0, [sp, #0x2c]
_021AB5B0:
	ldr r0, _021AB71C ; =0x021AE06C
	lsl r1, r6, #3
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r0, #0xc
	ldr r2, _021AB71C ; =0x021AE06C
	mul r0, r6
	add r5, r7, r0
	ldr r0, [r4, #4]
	ldr r1, [r2, r1]
	bl sub_0204898C
	ldr r1, [sp, #0x40]
	str r0, [r5, r1]
	ldr r1, _021AB720 ; =0x000039E3
	ldr r0, [sp, #0x3c]
	strh r1, [r5, r0]
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r1, [r5, r0]
	ldr r1, [sp, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, [r1, #0x20]
	bl sub_0204898C
	ldr r1, [sp, #0x34]
	add r6, r6, #1
	str r0, [r5, r1]
	ldr r1, _021AB720 ; =0x000039E3
	ldr r0, [sp, #0x30]
	strh r1, [r5, r0]
	mov r1, #0
	ldr r0, [sp, #0x2c]
	cmp r6, #4
	str r1, [r5, r0]
	blt _021AB5B0
	mov r5, #0x51
	lsl r5, r5, #2
	mov r6, #1
	add r0, r5, #0
	str r6, [r7, r5]
	add r0, #0x30
	str r6, [r7, r0]
	ldr r0, [r4, #4]
	mov r1, #0x42
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0x34
	str r0, [r7, r1]
	add r1, r5, #0
	ldr r0, _021AB720 ; =0x000039E3
	add r1, #0x38
	strh r0, [r7, r1]
	add r1, r5, #0
	add r1, #0x3c
	mov r0, #0
	str r0, [r7, r1]
	ldr r0, [r4, #4]
	mov r1, #0x43
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0x40
	str r0, [r7, r1]
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, _021AB720 ; =0x000039E3
	add r1, #0x44
	strh r0, [r7, r1]
	add r1, r5, #0
	add r1, #0x48
	mov r0, #0
	str r0, [r7, r1]
	ldr r0, [sp, #0x18]
	add r2, #0x38
	str r0, [sp]
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x34]
	mov r0, #1
	mov r1, #0xe
	bl sub_0202E168
	add r1, r5, #0
	add r1, #0x4c
	str r0, [r7, r1]
	str r6, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	add r1, #0xf9
	add r0, r4, #0
	add r1, r7, r1
	mov r2, #1
	mov r3, #2
	bl ovy204_21a9d8c
	mov r0, #0x80
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x18]
	mov r0, #0x80
	bl GFL_StrBufCreate
	mov r1, #0x80
	add r1, #0x90
	str r0, [r7, r1]
	ldr r1, _021AB724 ; =0x021AE034
	mov r3, #0x80
	ldrh r2, [r1]
	add r6, sp, #0x44
	add r0, sp, #0x4c
	strh r2, [r6, #8]
	ldrh r2, [r1, #2]
	add r3, #0xd4
	strh r2, [r6, #0xa]
	ldrh r2, [r1, #4]
	strh r2, [r6, #0xc]
	ldrh r1, [r1, #6]
	mov r2, #0x80
	add r2, #0xcc
	strh r1, [r6, #0xe]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x80
	add r0, #0xb8
	ldr r0, [r4, r0]
	ldr r1, [r4, r5]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	add r1, r5, #0
	add r1, #0x5c
	str r0, [r7, r1]
	mov r1, #0
	bl sub_0204C124
	ldr r1, _021AB728 ; =0x021AE01C
	ldr r3, [sp, #0x28]
	ldrh r2, [r1]
	add r3, #0xd4
	add r0, sp, #0x44
	strh r2, [r6]
	ldrh r2, [r1, #2]
	str r3, [sp, #0x28]
	strh r2, [r6, #2]
	ldrh r2, [r1, #4]
	strh r2, [r6, #4]
	ldrh r1, [r1, #6]
	mov r2, #0x80
	add r2, #0xcc
	strh r1, [r6, #6]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x80
	add r0, #0xb8
	ldr r0, [r4, r0]
	ldr r1, [r4, r5]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	add r5, #0x60
	str r0, [r7, r5]
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021AB718: .word 0x021ADF48
_021AB71C: .word 0x021AE06C
_021AB720: .word 0x000039E3
_021AB724: .word 0x021AE034
_021AB728: .word 0x021AE01C
	thumb_func_end ovy204_21ab4b0

	thumb_func_start ovy204_21ab72c
ovy204_21ab72c: ; 0x021AB72C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	bl sub_021ADE28
	ldr r0, [sp]
	add r1, r0, #0
	add r1, #0xc
	bl ovy204_21ade3c
	mov r6, #0x69
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_0204C108
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	add r0, r6, #0
	sub r0, #0x9c
	ldr r0, [r5, r0]
	bl BmpWin_Free
	add r0, r6, #0
	sub r0, #0x94
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r6, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r0, r6, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r6, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r6, #0
	str r0, [sp, #4]
	sub r0, #0x8c
	mov r4, #0
	str r0, [sp, #4]
	sub r6, #0x5c
_021AB794:
	mov r0, #0xc
	mul r0, r4
	add r7, r5, r0
	ldr r0, [sp, #4]
	ldr r0, [r7, r0]
	bl GFL_StrBufFree
	ldr r0, [r7, r6]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #4
	blt _021AB794
	mov r4, #0x41
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_021A7A60
	ldr r0, [r5, r4]
	bl sub_021A7960
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc
	mov r7, #0x4c
_021AB7C6:
	add r0, r4, #0
	mul r0, r7
	ldr r1, [sp]
	add r0, r6, r0
	bl sub_021AC2A0
	add r4, r4, #1
	cmp r4, #3
	blt _021AB7C6
	mov r4, #0
_021AB7DA:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0xf0
	ldr r0, [r0]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #2
	blt _021AB7DA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ab72c

	thumb_func_start ovy204_21ab7f0
ovy204_21ab7f0: ; 0x021AB7F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r6, r1, #0
	add r1, r7, #0
	add r5, r0, #0
	add r0, r7, #0
	add r1, #0xc
	mov r2, #5
	add r4, r3, #0
	bl ovy204_21aa4c0
	mov r0, #0
	bl sub_02045B7C
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r3, #0
	add r1, r6, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy204_21abf88
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ab7f0

	thumb_func_start ovy204_21ab82c
ovy204_21ab82c: ; 0x021AB82C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ovy204_21aa51c
	mov r7, #0x5b
	mov r4, #0
	add r5, #0xc
	lsl r7, r7, #2
_021AB840:
	mov r0, #0x4c
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r6, r7
	bl ovy204_21ac3a8
	add r4, r4, #1
	cmp r4, #3
	blt _021AB840
	mov r0, #0
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ab82c

	thumb_func_start ovy204_21ab85c
ovy204_21ab85c: ; 0x021AB85C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r3, #0
	bne _021AB876
	ldr r0, _021AB8EC ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy204_21add84
	mov r0, #3
	pop {r4, r5, r6, pc}
_021AB876:
	cmp r3, #6
	bne _021AB88A
	ldr r0, _021AB8F0 ; =0x00000556
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy204_21adda8
	mov r0, #4
	pop {r4, r5, r6, pc}
_021AB88A:
	cmp r3, #5
	bne _021AB8D8
	mov r6, #4
	ldrsh r0, [r5, r6]
	cmp r0, #8
	bne _021AB8A6
	ldr r0, _021AB8EC ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy204_21add84
	mov r0, #3
	pop {r4, r5, r6, pc}
_021AB8A6:
	cmp r0, #9
	bne _021AB8BA
	ldr r0, _021AB8F0 ; =0x00000556
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy204_21adda8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021AB8BA:
	mov r4, #0
	ldr r2, [r1, #0x10]
	ldrsh r1, [r5, r4]
	lsl r1, r1, #3
	add r0, r0, r1
	cmp r2, r0
	bhi _021AB8CC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021AB8CC:
	ldr r0, _021AB8F4 ; =0x0000054C
	bl GFL_SndSEPlay
	strh r4, [r5, #8]
	mov r0, #5
	pop {r4, r5, r6, pc}
_021AB8D8:
	cmp r3, #1
	bne _021AB8E0
	mov r0, #1
	pop {r4, r5, r6, pc}
_021AB8E0:
	mov r0, #2
	cmp r3, #2
	beq _021AB8E8
	mov r0, #0
_021AB8E8:
	pop {r4, r5, r6, pc}
	nop
_021AB8EC: .word 0x00000551
_021AB8F0: .word 0x00000556
_021AB8F4: .word 0x0000054C
	thumb_func_end ovy204_21ab85c

	thumb_func_start ovy204_21ab8f8
ovy204_21ab8f8: ; 0x021AB8F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl GCTX_HIDGetPressedKeys
	mov r6, #2
	tst r0, r6
	beq _021AB926
	mov r0, #0
	mov r6, #0
	bl sub_0203D564
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	str r6, [r4]
	bl ovy204_21ab85c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021AB926:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r6, #9
	tst r0, r1
	beq _021AB94A
	mov r0, #0
	mov r6, #0
	bl sub_0203D564
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #6
	str r6, [r4]
	bl ovy204_21ab85c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021AB94A:
	ldr r0, [r4]
	cmp r0, #1
	bne _021AB97C
	bl GCTX_HIDGetPressedKeys
	ldr r1, _021ABADC ; =0x00000CF3
	tst r0, r1
	beq _021AB976
	ldr r0, _021ABAE0 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #4
	ldrsh r1, [r5, r0]
	add r0, r7, #0
	add r2, r1, #0
	bl ovy204_21adca8
	mov r0, #0
	mov r5, #0
	bl sub_0203D564
	str r5, [r4]
_021AB976:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021AB97C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021AB996
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #5
	bl ovy204_21ab85c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021AB996:
	ldrh r0, [r5, #4]
	mov r6, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _021AB9C6
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _021AB9B6
	mov r0, #3
	b _021AB9C0
_021AB9B6:
	cmp r0, #4
	bne _021AB9BE
	mov r0, #7
	b _021AB9C0
_021AB9BE:
	sub r0, r0, #1
_021AB9C0:
	strh r0, [r5, #4]
_021AB9C2:
	mov r6, #1
	b _021ABA66
_021AB9C6:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _021AB9E8
	mov r0, #4
	ldrsh r1, [r5, r0]
	cmp r1, #3
	bne _021AB9DC
	strh r6, [r5, #4]
	b _021AB9E6
_021AB9DC:
	cmp r1, #7
	bne _021AB9E2
	b _021AB9E4
_021AB9E2:
	add r0, r1, #1
_021AB9E4:
	strh r0, [r5, #4]
_021AB9E6:
	b _021AB9C2
_021AB9E8:
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _021ABA0C
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #4
	bge _021ABA06
	add r0, r0, #4
	strh r0, [r5, #4]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp]
	b _021ABA0A
_021ABA06:
	sub r0, r0, #4
	strh r0, [r5, #4]
_021ABA0A:
	b _021AB9C2
_021ABA0C:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _021ABA30
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, #4
	bge _021ABA24
	add r0, r0, #4
	strh r0, [r5, #4]
	b _021ABA2E
_021ABA24:
	sub r0, r0, #4
	strh r0, [r5, #4]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp]
_021ABA2E:
	b _021AB9C2
_021ABA30:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _021ABA66
	beq _021ABA4C
	bl sub_0203DF44
	mov r1, #0x10
	lsl r1, r1, #5
	tst r0, r1
	beq _021ABA4C
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp]
	b _021ABA66
_021ABA4C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _021ABA66
	bl sub_0203DF44
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq _021ABA66
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp]
_021ABA66:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021ABABC
	ldr r0, [sp]
	cmp r0, #0
	beq _021ABA98
	mov r0, #0
	ldrsh r0, [r5, r0]
	mov r3, #2
	strh r0, [r5, #2]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ab85c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021ABA98:
	mov r0, #0
	ldrsh r1, [r5, r0]
	strh r1, [r5, #2]
	sub r1, r1, #1
	strh r1, [r5]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _021ABAAC
	add r0, r0, #4
	strh r0, [r5]
_021ABAAC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #1
	bl ovy204_21ab85c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021ABABC:
	cmp r6, #1
	bne _021ABAD6
	ldr r0, _021ABAE0 ; =0x00000548
	bl GFL_SndSEPlay
	mov r1, #4
	ldrsh r1, [r5, r1]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl ovy204_21adca8
	ldr r0, [sp, #8]
	strh r0, [r5, #6]
_021ABAD6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ABADC: .word 0x00000CF3
_021ABAE0: .word 0x00000548
	thumb_func_end ovy204_21ab8f8

	thumb_func_start ovy204_21abae4
ovy204_21abae4: ; 0x021ABAE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021ABBA8 ; =0x021ADFE0
	str r1, [sp]
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021ABB02
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABB02:
	cmp r4, #7
	bhi _021ABB24
	mov r0, #1
	str r0, [r6]
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r7, #0
	bl ovy204_21adc78
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #5
	strh r4, [r5, #4]
	bl ovy204_21ab85c
	pop {r3, r4, r5, r6, r7, pc}
_021ABB24:
	cmp r4, #8
	bne _021ABB3C
	mov r0, #1
	str r0, [r6]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #5
	strh r4, [r5, #4]
	bl ovy204_21ab85c
	pop {r3, r4, r5, r6, r7, pc}
_021ABB3C:
	cmp r4, #9
	bne _021ABB54
	mov r0, #1
	str r0, [r6]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #5
	strh r4, [r5, #4]
	bl ovy204_21ab85c
	pop {r3, r4, r5, r6, r7, pc}
_021ABB54:
	mov r0, #0
	ldrsh r1, [r5, r0]
	sub r4, #0xa
	sub r1, r4, r1
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	beq _021ABBA4
	mov r2, #1
	str r2, [r6]
	ldrsh r2, [r5, r0]
	strh r2, [r5, #2]
	add r2, r2, r1
	strh r2, [r5]
	cmp r1, #0
	ldrsh r0, [r5, r0]
	blt _021ABB90
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #2
	bl ovy204_21ab85c
	pop {r3, r4, r5, r6, r7, pc}
_021ABB90:
	cmp r0, #0
	bge _021ABB98
	add r0, r0, #4
	strh r0, [r5]
_021ABB98:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ovy204_21ab85c
_021ABBA4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ABBA8: .word 0x021ADFE0
	thumb_func_end ovy204_21abae4

	thumb_func_start ovy204_21abbac
ovy204_21abbac: ; 0x021ABBAC
	push {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	str r3, [sp]
	add r3, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy204_21abae4
	add r7, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _021ABBD4
	mov r5, #1
	mov r0, #1
	bl sub_0203D564
	str r5, [r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABBD4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21ab8f8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21abbac

	thumb_func_start ovy204_21abbe0
ovy204_21abbe0: ; 0x021ABBE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021ABC1C ; =0x00000102
	add r4, r2, #0
	ldrh r0, [r5, r0]
	mov r2, #2
	cmp r0, #2
	beq _021ABBF4
	mov r2, #1
_021ABBF4:
	mov r6, #4
	ldrsh r0, [r5, r6]
	str r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r3, #0
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy204_21abf88
	ldrsh r1, [r5, r6]
	add r0, r4, #0
	bl ovy204_21adc78
	ldr r0, _021ABC20 ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021ABC1C: .word 0x00000102
_021ABC20: .word 0x00000548
	thumb_func_end ovy204_21abbe0

	thumb_func_start ovy204_21abc24
ovy204_21abc24: ; 0x021ABC24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	str r1, [sp, #8]
	add r7, r3, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021ABC40
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ABC40:
	mov r2, #1
	lsl r2, r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0x18
	ble _021ABC9E
	ldr r0, _021ABD30 ; =0x021AE1A0
	mov r1, #0x10
	ldrsh r3, [r0, r1]
	add r1, sp, #0xc
	mov r6, #0x12
	strh r3, [r1]
	ldrsh r0, [r0, r6]
	add r2, #0x40
	strh r0, [r1, #2]
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, sp, #0xc
	bl sub_0204BEDC
	add r6, #0xf0
	ldrh r0, [r5, r6]
	mov r2, #2
	cmp r0, #2
	beq _021ABC72
	mov r2, #1
_021ABC72:
	add r1, r5, #0
	mov r0, #0x4c
	add r1, #0xc
	mul r0, r2
	add r0, r1, r0
	add r1, r4, #0
	bl ovy204_21ac434
	mov r0, #4
	ldrsh r0, [r5, r0]
	mov r3, #0
	ldr r1, [sp, #8]
	str r0, [sp]
	str r7, [sp, #4]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy204_21abff0
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ABC9E:
	lsl r0, r0, #8
	mov r7, #0x18
	mov r1, #0x18
	blx sub_0208D65C
	add r7, #0xea
	add r6, r0, #0
	ldrh r0, [r5, r7]
	cmp r0, #2
	bne _021ABCB4
	neg r6, r6
_021ABCB4:
	mov r0, #2
	mov r1, #0
	add r2, r6, #0
	mov r7, #0
	bl sub_02045E1C
	mov r0, #3
	mov r1, #0
	add r2, r6, #0
	bl sub_02045E1C
	ldr r1, _021ABD30 ; =0x021AE1A0
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r0, sp, #0xc
	strh r2, [r0]
	mov r2, #0x12
	ldrsh r1, [r1, r2]
	lsl r2, r6, #0x10
	mov r6, #5
	strh r1, [r0, #2]
	ldrsh r1, [r0, r7]
	asr r2, r2, #0x10
	lsl r6, r6, #6
	add r1, r1, r2
	strh r1, [r0]
	ldr r0, [r4, r6]
	mov r1, #0
	add r2, sp, #0xc
	bl sub_0204BEDC
	sub r6, #0x40
	ldrsh r6, [r5, r6]
	mov r1, #6
	add r0, r6, #0
	blx sub_0208D65C
	cmp r1, #0
	beq _021ABD20
	add r0, r6, #0
	mov r1, #6
	blx sub_0208D65C
	lsl r1, r0, #2
	ldr r0, _021ABD34 ; =0x021AE1A0
	ldr r6, [r0, r1]
	cmp r6, #0
	beq _021ABD20
	mov r3, #2
	ldrsh r2, [r5, r7]
	ldrsh r3, [r5, r3]
	add r0, r5, #0
	add r1, r4, #0
	blx r6
_021ABD20:
	mov r0, #1
	lsl r0, r0, #8
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ABD30: .word 0x021AE1A0
_021ABD34: .word 0x021AE1A0
	thumb_func_end ovy204_21abc24

	thumb_func_start ovy204_21abd38
ovy204_21abd38: ; 0x021ABD38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x34]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021ABD66
	mov r0, #2
	mov r1, #0
	mov r2, #0
	bl sub_02045E1C
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_02045E1C
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	bl ovy204_21ade98
	mov r0, #1
	pop {r4, pc}
_021ABD66:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21abd38

	thumb_func_start ovy204_21abd6c
ovy204_21abd6c: ; 0x021ABD6C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017238
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021AC184
	add r1, r0, #0
	add r1, r4, r1
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	bl sub_0200A0E4
	blx sub_02057E3C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy204_21abd6c

	thumb_func_start ovy204_21abd94
ovy204_21abd94: ; 0x021ABD94
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021AC184
	add r2, r0, #0
	add r2, r7, r2
	ldrb r2, [r2, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ovy204_21aa5b0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xc
	add r3, r4, #0
	bl ovy204_21ac060
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21abd94

	thumb_func_start ovy204_21abdc0
ovy204_21abdc0: ; 0x021ABDC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r3, #0
	bl sub_02017238
	add r7, r0, #0
	add r0, r5, #0
	bl sub_021AC184
	add r1, r0, #0
	add r1, r4, r1
	ldrb r1, [r1, #0x18]
	add r0, r7, #0
	mov r2, #9
	bl sub_02009F80
	mov r2, #4
	str r6, [sp]
	add r1, sp, #0
	strb r2, [r1, #4]
	cmp r0, #2
	bne _021ABE1A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21abd6c
	mov r3, #0
	mov r2, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _021ABE0A
	mov r0, #0x52
	b _021ABE0C
_021ABE0A:
	mov r0, #0x46
_021ABE0C:
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0x66
	mov r1, #1
	lsl r0, r0, #2
	b _021ABE26
_021ABE1A:
	mov r0, #0x46
	lsl r0, r0, #2
	add r1, r5, r0
	str r1, [sp, #8]
	mov r1, #0
	add r0, #0x80
_021ABE26:
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r1, #0x20
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0x18
	strb r1, [r0, #0x11]
	mov r1, #0x11
	mov r4, #0x19
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	add r0, sp, #0
	bl sub_0202D974
	add r1, r4, #4
	str r0, [r5, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21abdc0

	thumb_func_start ovy204_21abe54
ovy204_21abe54: ; 0x021ABE54
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x65
	add r5, r0, #0
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	add r4, r1, #0
	str r2, [sp]
	bl sub_0202DB70
	ldr r0, [r5, r7]
	bl sub_0202DBE4
	cmp r0, #1
	bne _021ABE80
	ldr r0, [r5, r7]
	bl sub_0202DC00
	add r6, r0, #0
	ldr r0, [r5, r7]
	bl sub_0202DA54
	b _021ABE84
_021ABE80:
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_021ABE84:
	cmp r6, #3
	bne _021ABE92
	bl sub_0203D554
	str r0, [r4]
	mov r4, #2
	b _021ABEA6
_021ABE92:
	bl sub_0203D554
	str r0, [r4]
	add r0, r7, #4
	ldr r0, [r5, r0]
	lsl r1, r6, #3
	lsl r2, r0, #5
	ldr r0, _021ABEC8 ; =0x021AE070
	add r0, r0, r2
	ldr r4, [r1, r0]
_021ABEA6:
	cmp r4, #2
	bne _021ABEB4
_021ABEAA:
	ldr r1, [sp]
	add r0, r5, #0
	bl ovy204_21ac140
	b _021ABEC4
_021ABEB4:
	cmp r4, #9
	beq _021ABEBC
	cmp r4, #0xc
	bne _021ABEBE
_021ABEBC:
	b _021ABEAA
_021ABEBE:
	add r0, r5, #0
	bl ovy204_21ac168
_021ABEC4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ABEC8: .word 0x021AE070
	thumb_func_end ovy204_21abe54

	thumb_func_start ovy204_21abecc
ovy204_21abecc: ; 0x021ABECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	add r4, r2, #0
	add r6, r3, #0
	bl ovy204_21abd6c
	str r0, [sp, #4]
	add r0, r5, #0
	add r7, r1, #0
	bl sub_021AC184
	ldr r1, [sp]
	add r3, r0, #0
	add r2, r1, #0
	add r2, r2, r3
	ldrb r2, [r2, #0x18]
	add r0, r4, #0
	add r3, r6, #0
	bl ovy204_21aa5b0
	mov r0, #0
	add r1, r7, #0
	eor r1, r0
	ldr r0, [sp, #4]
	mov r2, #0
	eor r0, r2
	orr r0, r1
	beq _021ABF1A
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r7, #0
	bl ovy204_21aa534
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3c
	b _021ABF20
_021ABF1A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x44
_021ABF20:
	add r3, r6, #0
	bl ovy204_21ac060
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21abecc

	thumb_func_start ovy204_21abf2c
ovy204_21abf2c: ; 0x021ABF2C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021AC184
	add r2, r0, #0
	add r2, r7, r2
	ldrb r2, [r2, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ovy204_21aa5b0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x39
	add r3, r4, #0
	bl ovy204_21ac060
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21abf2c

	thumb_func_start ovy204_21abf58
ovy204_21abf58: ; 0x021ABF58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r3, #0
	bl ovy204_21ac120
	cmp r0, #0
	bne _021ABF6A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021ABF6A:
	mov r4, #0x5e
	lsl r4, r4, #2
	add r1, r4, #0
	add r1, #0x18
	add r0, r5, r4
	add r1, r5, r1
	mov r2, #0
	add r3, r6, #0
	bl ovy204_21aa820
	add r4, #0x1c
	str r0, [r5, r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy204_21abf58

	thumb_func_start ovy204_21abf88
ovy204_21abf88: ; 0x021ABF88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x34]
	add r5, r0, #0
	add r6, r3, #0
	str r2, [sp, #0x14]
	cmp r1, #0
	bne _021ABFA6
	ldr r1, [sp, #0x30]
	strh r6, [r5]
	strh r1, [r5, #4]
	add r1, r6, #0
	bl ovy204_21addf0
_021ABFA6:
	ldr r1, [sp, #0x34]
	mov r0, #0x4c
	mul r0, r1
	ldr r1, [sp, #0x14]
	add r7, r5, #0
	mov r4, #0x5b
	add r7, #0xc
	str r0, [sp, #0x18]
	lsl r4, r4, #2
	add r2, r1, #0
	add r0, r7, r0
	add r2, r2, r4
	bl ovy204_21ac2a4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r0, r0, r4
	str r0, [sp]
	ldr r0, [sp, #0x10]
	sub r4, #0x68
	add r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r0, sp, #0x30
	ldrh r0, [r0, #8]
	ldr r2, [sp, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r3, [r5, r4]
	add r0, r7, r0
	bl ovy204_21ac380
	add r0, r5, #0
	bl ovy204_21adcc0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21abf88

	thumb_func_start ovy204_21abff0
ovy204_21abff0: ; 0x021ABFF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x28]
	add r5, r0, #0
	add r7, r3, #0
	strh r1, [r5, #4]
	add r1, r7, #0
	add r6, r2, #0
	strh r7, [r5]
	bl ovy204_21addf0
	mov r4, #0x5b
	add r0, r5, #0
	lsl r4, r4, #2
	add r0, #0xc
	add r1, r6, #0
	add r2, r6, r4
	bl ovy204_21ac2a4
	add r0, r6, r4
	str r0, [sp]
	ldr r0, [sp, #0x10]
	sub r4, #0x68
	add r0, #0x10
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r3, [r5, r4]
	add r0, #0xc
	bl ovy204_21ac2e8
	add r0, r5, #0
	bl ovy204_21adcc0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21abff0
_021AC044:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021AC04C
sub_021AC04C: ; 0x021AC04C
	mov r3, #3
	strb r3, [r1, #8]
	mov r1, #3
	add r1, #0xff
	strh r2, [r0, r1]
	mov r1, #0
	add r3, #0xfd
	strh r1, [r0, r3]
	bx lr
	.align 2, 0
	thumb_func_end sub_021AC04C

	thumb_func_start ovy204_21ac060
ovy204_21ac060: ; 0x021AC060
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	add r7, r3, #0
	str r2, [sp, #0x18]
	cmp r0, #0
	beq _021AC07A
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x2c]
_021AC07A:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	mov r0, #0x80
	add r1, r7, #0
	mov r6, #0x80
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	mov r1, #0x80
	add r1, #0x90
	ldr r0, [r4]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	bl sub_02017BCC
	mov r1, #0x80
	add r1, #0xfc
	ldr r1, [r4, r1]
	add r6, #0x90
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, #0xfe
	add r0, #0x78
	ldrh r0, [r4, r0]
	mov r2, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x80
	add r0, #0x88
	ldr r0, [r5, r0]
	ldr r3, [r5, r6]
	bl sub_02022268
	str r0, [r4, #0x2c]
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	mov r2, #0x46
	mov r3, #0xb
	bl sub_02024E80
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #0
	bl ovy204_21addcc
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ac060

	thumb_func_start ovy204_21ac120
ovy204_21ac120: ; 0x021AC120
	push {r4, lr}
	ldr r0, [r2, #0x2c]
	add r2, #0x30
	add r4, r1, #0
	add r1, r2, #0
	bl ovy204_21aafe4
	cmp r0, #0
	bne _021AC13A
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021AC13A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21ac120

	thumb_func_start ovy204_21ac140
ovy204_21ac140: ; 0x021AC140
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02024EEC
	add r0, r4, #0
	bl ovy204_21ade10
	add r0, r5, #0
	bl ovy204_21adcc0
	mov r0, #1
	bl ovy204_21addcc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21ac140

	thumb_func_start ovy204_21ac168
ovy204_21ac168: ; 0x021AC168
	push {r3, r4, r5, lr}
	mov r4, #0x42
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21ac168

	thumb_func_start sub_021AC184
sub_021AC184: ; 0x021AC184
	mov r1, #0
	ldrsh r1, [r0, r1]
	lsl r2, r1, #3
	mov r1, #4
	ldrsh r0, [r0, r1]
	add r0, r2, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_021AC184

	thumb_func_start ovy204_21ac194
ovy204_21ac194: ; 0x021AC194
	push {r3, r4, r5, lr}
	mov r5, #0x1a
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C488
	ldr r0, [r4, r5]
	bl sub_0204C56C
	add r0, r5, #0
	mov r1, #0
	add r0, #8
	str r1, [r4, r0]
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #0xa
	mul r0, r1
	ldr r1, _021AC220 ; =0x021AE0AC
	ldrsh r1, [r1, r0]
	lsl r2, r1, #3
	add r1, sp, #0
	strh r2, [r1]
	ldr r2, _021AC224 ; =0x021AE0AE
	ldrsh r0, [r2, r0]
	mov r2, #0
	lsl r0, r0, #3
	sub r0, r0, #4
	strh r0, [r1, #2]
	ldr r0, [r4, r5]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	ldr r1, _021AC228 ; =0x0400004A
	ldr r0, _021AC22C ; =0xFFFFC0FF
	ldrh r2, [r1]
	and r2, r0
	mov r0, #7
	lsl r0, r0, #8
	orr r2, r0
	strh r2, [r1]
	ldrh r3, [r1]
	mov r2, #0x3f
	sub r0, #0x98
	bic r3, r2
	mov r2, #0x1f
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r1]
	lsl r4, r2, #0x15
	ldr r3, [r4]
	ldr r1, _021AC230 ; =0xFFFF1FFF
	and r3, r1
	lsl r1, r2, #0xa
	orr r1, r3
	str r1, [r4]
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
	nop
_021AC220: .word 0x021AE0AC
_021AC224: .word 0x021AE0AE
_021AC228: .word 0x0400004A
_021AC22C: .word 0xFFFFC0FF
_021AC230: .word 0xFFFF1FFF
	thumb_func_end ovy204_21ac194

	thumb_func_start ovy204_21ac234
ovy204_21ac234: ; 0x021AC234
	push {r3, r4, r5, lr}
	mov r4, #0x1a
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204C560
	cmp r0, #0
	bne _021AC24A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021AC24A:
	ldr r0, [r5, r4]
	bl sub_0204C4F8
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	sub r1, r0, r1
	cmp r1, #2
	blo _021AC260
	add r4, #8
	str r0, [r5, r4]
_021AC260:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21ac234

	thumb_func_start ovy204_21ac264
ovy204_21ac264: ; 0x021AC264
	push {r3, r4, r5, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	mov r5, #0x1a
	ldr r1, [r2]
	ldr r0, _021AC28C ; =0xFFFF1FFF
	lsl r5, r5, #4
	and r0, r1
	str r0, [r2]
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	nop
_021AC28C: .word 0xFFFF1FFF
	thumb_func_end ovy204_21ac264

	thumb_func_start sub_021AC290
sub_021AC290: ; 0x021AC290
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021AC290

	thumb_func_start sub_021AC2A0
sub_021AC2A0: ; 0x021AC2A0
	bx lr
	.align 2, 0
	thumb_func_end sub_021AC2A0

	thumb_func_start ovy204_21ac2a4
ovy204_21ac2a4: ; 0x021AC2A4
	push {r4, lr}
	sub sp, #8
	mov r1, #2
	ldrsh r3, [r0, r1]
	cmp r3, #0
	bge _021AC2B2
	neg r3, r3
_021AC2B2:
	mov r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bge _021AC2BC
	neg r4, r4
_021AC2BC:
	ldr r1, [r2, #8]
	lsl r2, r4, #0x18
	ldrh r0, [r1]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsr r3, r3, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	bl sub_020454AC
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy204_21ac2a4

	thumb_func_start ovy204_21ac2e8
ovy204_21ac2e8: ; 0x021AC2E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r7, r2, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r3, [sp, #0x10]
	str r0, [sp, #0x3c]
	ldr r0, [r1, #4]
	ldr r6, [sp, #0x44]
	bl sub_02017238
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	str r1, [sp, #0x18]
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r1, r7, #0
	bl ovy204_21ac434
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #3
	str r0, [sp, #0x20]
	add r0, r1, r0
	mov r4, #0
	str r0, [sp, #0x14]
_021AC32C:
	ldr r0, [sp, #0x3c]
	ldr r1, [r0]
	ldr r0, [sp, #0x20]
	add r0, r0, r4
	cmp r1, r0
	bls _021AC35A
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r0, r0, r4
	ldrb r0, [r0, #8]
	ldr r3, [sp, #0x38]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r6, [sp, #0xc]
	bl ovy204_21ac464
	mov r0, #1
	str r0, [sp, #0x18]
	b _021AC368
_021AC35A:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	str r6, [sp]
	bl ovy204_21ac574
_021AC368:
	add r4, r4, #1
	cmp r4, #8
	blt _021AC32C
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021AC37C
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl BmpWin_FlushChar
_021AC37C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ac2e8

	thumb_func_start ovy204_21ac380
ovy204_21ac380: ; 0x021AC380
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, [sp, #0x20]
	add r4, r0, #0
	str r5, [sp]
	ldr r5, [sp, #0x24]
	str r5, [sp, #4]
	ldr r5, [sp, #0x28]
	str r5, [sp, #8]
	add r5, sp, #0x20
	ldrh r5, [r5, #0xc]
	str r5, [sp, #0xc]
	bl ovy204_21ac2e8
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl ovy204_21ade98
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21ac380

	thumb_func_start ovy204_21ac3a8
ovy204_21ac3a8: ; 0x021AC3A8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ovy204_21ac434
	ldr r0, [r4, #8]
	ldr r5, [r0]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #2
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _021AC3D0
	neg r3, r3
_021AC3D0:
	mov r0, #0
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bge _021AC3DA
	neg r2, r2
_021AC3DA:
	ldrb r0, [r4, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp]
	ldrb r0, [r4, #5]
	mov r1, #0
	lsr r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #2
	lsr r3, r3, #0x18
	str r1, [sp, #8]
	mov r5, #2
	bl sub_02045604
	mov r0, #2
	bl sub_02045B7C
	ldrsh r3, [r4, r5]
	cmp r3, #0
	bge _021AC404
	neg r3, r3
_021AC404:
	mov r0, #0
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bge _021AC40E
	neg r2, r2
_021AC40E:
	ldrb r0, [r4, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp]
	ldrb r0, [r4, #5]
	mov r1, #0
	lsr r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #3
	lsr r3, r3, #0x18
	str r1, [sp, #8]
	bl sub_02045604
	mov r0, #3
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21ac3a8

	thumb_func_start ovy204_21ac434
ovy204_21ac434: ; 0x021AC434
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021AC43C:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021AC44C
	bl sub_021A7B9C
	str r7, [r5, #0xc]
_021AC44C:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021AC45A
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, #0x2c]
_021AC45A:
	add r4, r4, #1
	cmp r4, #8
	blt _021AC43C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21ac434

	thumb_func_start ovy204_21ac464
ovy204_21ac464: ; 0x021AC464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #6
	add r7, sp, #0x28
	strh r0, [r7]
	mov r0, #0x32
	lsl r0, r0, #6
	strh r0, [r7, #2]
	mov r0, #0x11
	lsl r0, r0, #6
	str r1, [sp, #0x10]
	strh r0, [r7, #4]
	add r6, r2, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	mov r2, #8
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x50]
	bl sub_02009F80
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	mov r2, #9
	bl sub_02009F80
	str r0, [sp, #0x18]
	cmp r0, #2
	bne _021AC4B6
	add r0, sp, #0x50
	ldrh r0, [r0, #0xc]
	ldr r2, [sp, #0x14]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ovy204_21ac574
	b _021AC508
_021AC4B6:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r2, _021AC56C ; =0x021AE0AC
	mov r0, #0
	ldrsh r0, [r5, r0]
	ldrsh r2, [r2, r1]
	add r3, sp, #0x50
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, #8
	ldr r2, _021AC570 ; =0x021AE0AE
	strh r0, [r7, #6]
	mov r0, #2
	ldrsh r1, [r2, r1]
	ldrsh r0, [r5, r0]
	ldr r2, [sp, #0x1c]
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, #0xa
	strh r0, [r7, #8]
	mov r0, #8
	strh r0, [r7, #0xa]
	mov r0, #1
	strh r0, [r7, #0xc]
	lsl r0, r4, #2
	str r0, [sp, #0x20]
	add r1, sp, #0x2c
	add r7, r5, #0
	ldrh r3, [r3, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #2
	add r7, #0xc
	bl sub_021A7A9C
	ldr r1, [sp, #0x20]
	mov r2, #1
	str r0, [r7, r1]
	mov r1, #0
	bl sub_021A7C88
_021AC508:
	add r1, sp, #0x50
	ldrh r1, [r1, #0xc]
	mov r0, #0x80
	mov r7, #0x80
	bl GFL_StrBufCreate
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	bl sub_0200A0F0
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	bl sub_02048614
	add r3, r4, #0
	mov r0, #0xa
	mul r3, r0
	ldr r0, [sp, #0x24]
	ldr r2, _021AC56C ; =0x021AE0AC
	add r7, #0xfc
	str r0, [sp]
	ldr r0, [r6, r7]
	ldrsh r2, [r2, r3]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r4, _021AC570 ; =0x021AE0AE
	lsl r1, r0, #1
	add r0, sp, #0x28
	ldrh r0, [r0, r1]
	ldrsh r3, [r4, r3]
	lsl r2, r2, #0x13
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r3, r3, #3
	sub r3, #0x18
	lsl r3, r3, #0x10
	ldr r0, [r5, #8]
	ldr r1, [r6, #0x34]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AC56C: .word 0x021AE0AC
_021AC570: .word 0x021AE0AE
	thumb_func_end ovy204_21ac464

	thumb_func_start ovy204_21ac574
ovy204_21ac574: ; 0x021AC574
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r6, r1, #0
	mov r0, #0xa
	add r5, r3, #0
	ldr r1, _021AC5E0 ; =0x021AE0AC
	mul r3, r0
	mov r7, #0
	ldrsh r0, [r4, r7]
	ldrsh r1, [r1, r3]
	add r0, r0, r1
	lsl r1, r0, #3
	add r1, #0x10
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #2
	ldrsh r2, [r4, r1]
	ldr r1, _021AC5E4 ; =0x021AE0AE
	ldrsh r1, [r1, r3]
	mov r3, #0x4f
	lsl r3, r3, #2
	add r1, r2, r1
	lsl r1, r1, #3
	add r1, #0x10
	strh r1, [r0, #2]
	add r2, r3, #0
	strh r7, [r0, #4]
	mov r1, #8
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	add r1, r3, #0
	str r7, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0]
	add r1, #8
	add r2, #0x10
	str r0, [sp, #8]
	ldr r0, [r6, r3]
	add r3, #0x18
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	lsl r1, r5, #2
	add r1, r4, r1
	str r0, [r1, #0x2c]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021AC5E0: .word 0x021AE0AC
_021AC5E4: .word 0x021AE0AE
	thumb_func_end ovy204_21ac574

	thumb_func_start ovy204_21ac5e8
ovy204_21ac5e8: ; 0x021AC5E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r4, r0, #0
	ldrb r0, [r5, #8]
	add r7, r1, #0
	ldr r6, [sp, #0x28]
	cmp r0, #6
	bls _021AC5FC
	b _021AC76A
_021AC5FC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021AC608: ; jump table
	.short _021AC616 - _021AC608 - 2 ; case 0
	.short _021AC660 - _021AC608 - 2 ; case 1
	.short _021AC68E - _021AC608 - 2 ; case 2
	.short _021AC6BA - _021AC608 - 2 ; case 3
	.short _021AC6DA - _021AC608 - 2 ; case 4
	.short _021AC70A - _021AC608 - 2 ; case 5
	.short _021AC750 - _021AC608 - 2 ; case 6
_021AC616:
	ldr r0, _021AC770 ; =0x0000008B
	bl sub_0203CDC8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	add r3, r6, #0
	bl ovy204_21ac784
	str r0, [r4, #4]
	mov r0, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0xc
	bl sub_02034B64
	str r0, [r4, #8]
	add r0, r7, #0
	bl ovy204_21a9d70
	add r0, r6, #0
	bl sub_0203A970
	ldr r1, _021AC774 ; =0x00000118
	ldr r2, _021AC778 ; =0x021DD940
	ldr r3, [r4, #4]
	str r0, [r4]
	bl sub_0203A988
	mov r0, #1
_021AC65E:
	b _021AC740
_021AC660:
	ldr r0, [r4]
	bl sub_0203A978
	cmp r0, #0
	bne _021AC76A
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldr r0, [r4]
	bne _021AC682
	ldr r1, _021AC77C ; =0x000000CD
	ldr r2, _021AC780 ; =0x021B93EC
	ldr r3, [r4, #8]
	bl sub_0203A988
	mov r0, #2
	b _021AC65E
_021AC682:
	bl sub_0203A980
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	b _021AC6B2
_021AC68E:
	ldr r0, [r4]
	bl sub_0203A978
	cmp r0, #0
	bne _021AC76A
	ldr r0, [r4]
	bl sub_0203A980
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #0x20]
	add r0, r5, #0
	bl ovy204_21a9e20
	add r0, r5, #0
	mov r1, #0
	mov r2, #7
_021AC6B2:
	bl sub_021A9E18
	mov r0, #3
	b _021AC65E
_021AC6BA:
	ldr r0, [r4, #4]
	bl sub_02165AE8
	ldr r0, [r4, #8]
	bl sub_02034BC4
	ldr r0, _021AC770 ; =0x0000008B
	bl sub_0203CE0C
	add r0, r7, #0
	add r1, r6, #0
	bl ovy204_21a9d40
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AC6DA:
	ldr r0, _021AC770 ; =0x0000008B
	bl sub_0203CDC8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	add r3, r6, #0
	bl ovy204_21ac784
	str r0, [r4, #4]
	add r0, r7, #0
	bl ovy204_21a9d70
	add r0, r6, #0
	bl sub_0203A970
	ldr r1, _021AC774 ; =0x00000118
	ldr r2, _021AC778 ; =0x021DD940
	ldr r3, [r4, #4]
	str r0, [r4]
	bl sub_0203A988
	mov r0, #5
	b _021AC65E
_021AC70A:
	ldr r0, [r4]
	bl sub_0203A978
	cmp r0, #0
	bne _021AC76A
	ldr r0, [r4]
	bl sub_0203A980
	bl sub_0203D554
	str r0, [r5]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021AC744
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xe
	bl sub_021A9E18
	ldr r1, [r4, #4]
	add r0, r5, #0
	ldr r1, [r1, #0x20]
	mov r2, #0
	bl ovy204_21a9e20
_021AC73E:
	mov r0, #6
_021AC740:
	strb r0, [r5, #8]
	b _021AC76A
_021AC744:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	bl sub_021A9E18
	b _021AC73E
_021AC750:
	ldr r0, [r4, #4]
	bl sub_02165AE8
	ldr r0, _021AC770 ; =0x0000008B
	bl sub_0203CE0C
	add r0, r7, #0
	add r1, r6, #0
	bl ovy204_21a9d40
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AC76A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AC770: .word 0x0000008B
_021AC774: .word 0x00000118
_021AC778: .word 0x021DD940
_021AC77C: .word 0x000000CD
_021AC780: .word 0x021B93EC
	thumb_func_end ovy204_21ac5e8

	thumb_func_start ovy204_21ac784
ovy204_21ac784: ; 0x021AC784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02017934
	bl sub_0200C838
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_02017238
	mov r1, #0xb
	ldrsb r1, [r5, r1]
	mov r2, #9
	str r0, [sp, #0x10]
	add r1, r5, r1
	ldrb r1, [r1, #0x18]
	str r1, [sp, #0xc]
	bl sub_02009F80
	cmp r6, #1
	beq _021AC7BA
	cmp r0, #2
	bne _021AC7CC
_021AC7BA:
	mov r0, #7
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #4
	ldr r2, _021AC804 ; =0x0000FFFF
	b _021AC7E6
_021AC7CC:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #8
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #4
_021AC7E6:
	bl sub_021659EC
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	cmp r0, #1
	bne _021AC7FE
	ldr r0, [r4, #0x20]
	ldr r1, [r5, #0x60]
	bl sub_02048614
	mov r0, #0
	str r0, [r5, #0x64]
_021AC7FE:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AC804: .word 0x0000FFFF
	thumb_func_end ovy204_21ac784

	thumb_func_start ovy204_21ac808
ovy204_21ac808: ; 0x021AC808
	push {r3, lr}
	bl ovy204_21ac96c
	pop {r3, pc}
	thumb_func_end ovy204_21ac808

	thumb_func_start ovy204_21ac810
ovy204_21ac810: ; 0x021AC810
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r3, #0
	ldrb r3, [r4, #8]
	add r6, r0, #0
	add r5, r2, #0
	cmp r3, #5
	bhi _021AC8FA
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021AC82E: ; jump table
	.short _021AC83A - _021AC82E - 2 ; case 0
	.short _021AC850 - _021AC82E - 2 ; case 1
	.short _021AC87C - _021AC82E - 2 ; case 2
	.short _021AC8AC - _021AC82E - 2 ; case 3
	.short _021AC8BE - _021AC82E - 2 ; case 4
	.short _021AC8D8 - _021AC82E - 2 ; case 5
_021AC83A:
	mov r3, #0x34
	bl ovy204_21ac808
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy204_21acb64
	mov r0, #1
_021AC84C:
	strb r0, [r4, #8]
	b _021AC8FA
_021AC850:
	bl ovy204_21ac910
	cmp r0, #0
	bne _021AC868
	ldr r0, _021AC900 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy204_21add84
	mov r0, #2
	b _021AC84C
_021AC868:
	cmp r0, #1
	bne _021AC8FA
	ldr r0, _021AC904 ; =0x00000556
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy204_21adda8
	mov r0, #3
	b _021AC84C
_021AC87C:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021AC8FA
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r5, #0
	bl ovy204_21acbb0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_021AC908
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021AC8AC:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021AC8FA
	mov r0, #4
	b _021AC84C
_021AC8BE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl GFL_FadeScreenSet
	mov r0, #5
	b _021AC84C
_021AC8D8:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021AC8FA
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_021AC908
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021AC8FA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AC900: .word 0x00000551
_021AC904: .word 0x00000556
	thumb_func_end ovy204_21ac810

	thumb_func_start sub_021AC908
sub_021AC908: ; 0x021AC908
	ldr r3, _021AC90C ; =ovy204_21acb38
	bx r3
	.align 2, 0
_021AC90C: .word ovy204_21acb38
	thumb_func_end sub_021AC908

	thumb_func_start ovy204_21ac910
ovy204_21ac910: ; 0x021AC910
	push {r4, r5, r6, lr}
	ldr r0, _021AC968 ; =0x021ADF0D
	add r5, r1, #0
	bl sub_0203DA0C
	mov r6, #0
	add r4, r0, #0
	mvn r6, r6
	cmp r4, r6
	beq _021AC932
	mov r6, #1
	mov r0, #1
	bl sub_0203D564
	str r6, [r5]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021AC932:
	bl GCTX_HIDGetPressedKeys
	mov r4, #2
	tst r0, r4
	beq _021AC94A
	mov r4, #0
	mov r0, #0
	bl sub_0203D564
	str r4, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021AC94A:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r4, #9
	tst r0, r1
	beq _021AC962
	mov r4, #0
	mov r0, #0
	bl sub_0203D564
	str r4, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021AC962:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021AC968: .word 0x021ADF0D
	thumb_func_end ovy204_21ac910

	thumb_func_start ovy204_21ac96c
ovy204_21ac96c: ; 0x021AC96C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r3, [sp, #0x20]
	mov r5, #0xa
	str r0, [sp, #0x18]
	str r5, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r7, r1, #0
	str r5, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r0, r2, #0
	mov r2, #3
	mov r3, #2
	mov r4, #2
	bl ovy204_21a9d8c
	mov r0, #6
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x18]
	str r5, [sp, #0xc]
	mov r0, #0xf1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r1, #8
	mov r2, #3
	mov r3, #9
	bl ovy204_21a9d8c
	ldr r1, [sp, #0x20]
	mov r0, #0xc0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r1, [sp, #0x20]
	mov r0, #0x80
	mov r6, #0x80
	bl GFL_StrBufCreate
	str r0, [sp, #0x38]
	ldr r0, [r7, #4]
	bl sub_02017238
	bl sub_02009F7C
	blx sub_02057EC4
	str r1, [sp, #0x28]
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #0
	eor r1, r0
	mov r2, #0
	add r0, r7, #0
	eor r0, r2
	orr r0, r1
	beq _021ACAD6
	ldr r0, [sp, #0x1c]
	mov r1, #0x35
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	add r1, r6, #0
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	add r1, #0xfc
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [r1, #0x34]
	mov r2, #4
	mov r3, #0
	bl sub_0219A2A4
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	bl ovy204_21ade98
	ldr r0, [sp, #0x1c]
	add r6, #0xfc
	ldr r0, [r0, r6]
	ldr r2, _021ACB34 ; =0x021AE058
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x40
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x34]
_021ACA40:
	ldrh r0, [r2]
	add r2, r2, #2
	strh r0, [r1]
	add r1, r1, #2
	sub r5, r5, #1
	bne _021ACA40
	ldr r0, [sp, #0x18]
	mov r6, #0
	ldr r0, [r0, #8]
	bl sub_020484D8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	mov r5, #1
	str r0, [sp, #0x3c]
	add r0, #8
	str r0, [sp, #0x3c]
_021ACA62:
	add r0, r4, #0
	bl sub_02048570
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	mov r2, #0xa
	mov r3, #0
	blx sub_0208D5D0
	add r1, r0, #0
	lsl r2, r1, #1
	add r1, sp, #0x40
	ldrh r1, [r1, r2]
	add r0, r4, #0
	bl sub_02048734
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r4, [sp]
	sub r2, r2, r5
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r2, r2, #3
	lsl r0, r0, #6
	sub r2, r2, r6
	str r0, [sp, #8]
	mov r0, #0
	add r2, r2, #1
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x34]
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0219A2A4
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	bne _021ACABA
	add r6, #8
_021ACABA:
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	mov r2, #0xa
	mov r3, #0
	blx sub_0208D5C4
	add r5, r5, #1
	add r7, r0, #0
	str r1, [sp, #0x28]
	cmp r5, #0xc
	ble _021ACA62
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #8]
	b _021ACB08
_021ACAD6:
	ldr r0, [sp, #0x1c]
	mov r1, #0x36
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	add r6, #0xfc
	ldr r0, [r0, r6]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [r1, #0x34]
	mov r2, #4
	mov r3, #0
	bl sub_0219A2A4
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
_021ACB08:
	bl ovy204_21ade98
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x38]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #6
	ldr r0, [r0, #8]
	mov r2, #0
	add r3, #0x14
	bl sub_0204B32C
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x10]
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ACB34: .word 0x021AE058
	thumb_func_end ovy204_21ac96c

	thumb_func_start ovy204_21acb38
ovy204_21acb38: ; 0x021ACB38
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021ADE28
	add r0, r4, #0
	add r4, #0xc
	add r1, r4, #0
	bl ovy204_21ade3c
	ldr r0, [r5]
	bl BmpWin_Free
	ldr r0, [r5, #8]
	bl BmpWin_Free
	ldr r0, [r5, #0x10]
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21acb38

	thumb_func_start ovy204_21acb64
ovy204_21acb64: ; 0x021ACB64
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r1, #4]
	add r4, r2, #0
	bl sub_0201736C
	add r2, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl GFL_CopyVarForText
	add r0, r4, #0
	add r4, #0xc
	add r1, r4, #0
	mov r2, #0x32
	bl ovy204_21aa4c0
	ldr r1, [r5, #0x14]
	mov r2, #0
	ldrh r0, [r1]
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	bl sub_020454AC
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21acb64

	thumb_func_start ovy204_21acbb0
ovy204_21acbb0: ; 0x021ACBB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	bl ovy204_21aa51c
	mov r6, #0x20
	str r6, [sp]
	mov r7, #0x18
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #2
	bl sub_02045B7C
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #8]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #3
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21acbb0

	thumb_func_start ovy204_21acc1c
ovy204_21acc1c: ; 0x021ACC1C
	push {r4, lr}
	mov r4, #1
	str r4, [r0, #0x10]
	bl ovy204_21ad00c
	pop {r4, pc}
	thumb_func_end ovy204_21acc1c

	thumb_func_start ovy204_21acc28
ovy204_21acc28: ; 0x021ACC28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r3, [sp, #0xc]
	ldrb r5, [r4, #8]
	add r6, r0, #0
	add r7, r2, #0
	cmp r5, #0xa
	bls _021ACC3C
	b _021ACD98
_021ACC3C:
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021ACC48: ; jump table
	.short _021ACC5E - _021ACC48 - 2 ; case 0
	.short _021ACC64 - _021ACC48 - 2 ; case 1
	.short _021ACC82 - _021ACC48 - 2 ; case 2
	.short _021ACC88 - _021ACC48 - 2 ; case 3
	.short _021ACC9C - _021ACC48 - 2 ; case 4
	.short _021ACCA8 - _021ACC48 - 2 ; case 5
	.short _021ACCCC - _021ACC48 - 2 ; case 6
	.short _021ACD18 - _021ACC48 - 2 ; case 7
	.short _021ACD48 - _021ACC48 - 2 ; case 8
	.short _021ACD5A - _021ACC48 - 2 ; case 9
	.short _021ACD76 - _021ACC48 - 2 ; case 10
_021ACC5E:
	mov r0, #0
	strh r0, [r6, #0xe]
	strh r0, [r6]
_021ACC64:
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21acc1c
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ad184
_021ACC7C:
	mov r0, #2
_021ACC7E:
	strb r0, [r4, #8]
	b _021ACD98
_021ACC82:
	bl ovy204_21acf28
	b _021ACC7E
_021ACC88:
	bl ovy204_21acf70
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21acfb0
	mov r0, #4
	b _021ACC7E
_021ACC9C:
	bl ovy204_21acfb0
	cmp r0, #1
	bne _021ACD98
	mov r0, #5
	b _021ACC7E
_021ACCA8:
	ldr r0, [r7, #0x34]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021ACD98
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r5, #2
	bl sub_02045E1C
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_02045E1C
	strb r5, [r4, #8]
	b _021ACD98
_021ACCCC:
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	beq _021ACCDE
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	bne _021ACD98
_021ACCDE:
	ldr r1, [r6, #8]
	add r0, r4, #0
	bl ovy204_21ad6f0
	cmp r0, #0
	beq _021ACD16
	ldr r0, _021ACDA0 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r6, #0
	add r1, r7, #0
	bl ovy204_21ad2d0
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	mov r5, #1
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	strh r5, [r6, #0xe]
	bl ovy204_21ad114
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ACD16:
	b _021ACC7C
_021ACD18:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021ACD98
	add r0, r6, #0
	add r1, r7, #0
	bl ovy204_21ad260
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ad114
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ACD48:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0204C560
	cmp r0, #1
	beq _021ACD98
	mov r0, #9
	b _021ACC7E
_021ACD5A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0xa
	b _021ACC7E
_021ACD76:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021ACD98
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_021A9E18
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy204_21ad114
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ACD98:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ACDA0: .word 0x00000548
	thumb_func_end ovy204_21acc28

	thumb_func_start ovy204_21acda4
ovy204_21acda4: ; 0x021ACDA4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #3
	bhi _021ACE26
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ACDBA: ; jump table
	.short _021ACDC2 - _021ACDBA - 2 ; case 0
	.short _021ACDD2 - _021ACDBA - 2 ; case 1
	.short _021ACDE2 - _021ACDBA - 2 ; case 2
	.short _021ACE04 - _021ACDBA - 2 ; case 3
_021ACDC2:
	ldr r0, _021ACE2C ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy204_21add84
	mov r0, #7
	pop {r4, r5, r6, pc}
_021ACDD2:
	ldr r0, _021ACE30 ; =0x00000556
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy204_21adda8
	mov r0, #8
	pop {r4, r5, r6, pc}
_021ACDE2:
	add r0, r1, #0
	mov r1, #0
	mov r6, #0
	bl ovy204_21ad76c
	cmp r0, #1
	bne _021ACE26
	mov r0, #4
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	str r6, [r4, #8]
	bl ovy204_21aa7fc
	mov r0, #6
	pop {r4, r5, r6, pc}
_021ACE04:
	add r0, r1, #0
	mov r1, #1
	mov r6, #1
	bl ovy204_21ad76c
	cmp r0, #1
	bne _021ACE26
	mov r0, #4
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xa
	str r6, [r4, #8]
	bl ovy204_21aa7fc
	mov r0, #6
	pop {r4, r5, r6, pc}
_021ACE26:
	mov r0, #2
	pop {r4, r5, r6, pc}
	nop
_021ACE2C: .word 0x00000551
_021ACE30: .word 0x00000556
	thumb_func_end ovy204_21acda4

	thumb_func_start ovy204_21ace34
ovy204_21ace34: ; 0x021ACE34
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	cmp r0, #1
	bne _021ACE56
	bl GCTX_HIDGetPressedKeys
	ldr r1, _021ACEBC ; =0x00000CF3
	tst r0, r1
	beq _021ACE56
	mov r0, #0
	mov r7, #0
	bl sub_0203D564
	str r7, [r4]
_021ACE56:
	bl GCTX_HIDGetPressedKeys
	mov r7, #2
	tst r0, r7
	beq _021ACE6E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACE6E:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r7, #9
	tst r0, r1
	beq _021ACE86
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACE86:
	bl sub_0203DF20
	mov r1, #0x40
	tst r0, r1
	beq _021ACE9E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACE9E:
	bl sub_0203DF20
	mov r1, #0x80
	tst r0, r1
	beq _021ACEB6
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #3
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACEB6:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ACEBC: .word 0x00000CF3
	thumb_func_end ovy204_21ace34

	thumb_func_start ovy204_21acec0
ovy204_21acec0: ; 0x021ACEC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021ACF24 ; =0x021ADF5A
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021ACEDC
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021ACEDC:
	mov r3, #1
	str r3, [r7]
	cmp r0, #0
	bne _021ACEF2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #3
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACEF2:
	cmp r0, #1
	bne _021ACF04
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACF04:
	cmp r0, #2
	bne _021ACF16
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
_021ACF16:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy204_21acda4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ACF24: .word 0x021ADF5A
	thumb_func_end ovy204_21acec0

	thumb_func_start ovy204_21acf28
ovy204_21acf28: ; 0x021ACF28
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r4, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x34]
	add r5, r1, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021ACF42
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021ACF42:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, sp, #0
	bl ovy204_21acec0
	add r7, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _021ACF64
	mov r4, #1
	mov r0, #1
	bl sub_0203D564
	str r4, [r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ACF64:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy204_21ace34
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21acf28

	thumb_func_start ovy204_21acf70
ovy204_21acf70: ; 0x021ACF70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	mov r1, #0
	add r0, r4, #0
	add r6, r3, #0
	str r1, [r5, #4]
	bl ovy204_21aa7dc
	ldr r0, [r5, #8]
	mov r3, #2
	cmp r0, #2
	beq _021ACF90
	mov r3, #1
_021ACF90:
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	str r6, [sp, #4]
	bl sub_021AD5D0
	ldr r0, _021ACFAC ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ACFAC: .word 0x00000548
	thumb_func_end ovy204_21acf70

	thumb_func_start ovy204_21acfb0
ovy204_21acfb0: ; 0x021ACFB0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r6, [r5, #4]
	add r4, r2, #0
	cmp r6, #8
	ble _021ACFE4
	mov r6, #0
	ldrsh r6, [r5, r6]
	str r6, [sp]
	str r3, [sp, #4]
	mov r3, #0
	bl sub_021AD5D0
	add r0, r4, #0
	mov r1, #1
	bl ovy204_21aa7dc
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xff
	bl ovy204_21ad5dc
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021ACFE4:
	lsl r1, r6, #8
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r2, r0, #3
	ldr r0, [r5, #8]
	cmp r0, #2
	bne _021ACFF6
	neg r2, r2
_021ACFF6:
	mov r0, #3
	mov r1, #0
	bl sub_02044CFC
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy204_21acfb0

	thumb_func_start ovy204_21ad00c
ovy204_21ad00c: ; 0x021AD00C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r3, [sp, #0x1c]
	add r6, r2, #0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, #0xf8
	add r1, r6, #0
	bl ovy204_21ad7f4
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ovy204_21ad850
	mov r4, #0
	add r0, r4, #0
	str r0, [sp, #0x20]
	mov r1, #0x46
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r7, _021AD104 ; =0x021ADF48
	add r5, r0, r1
_021AD038:
	mov r0, #6
	mul r0, r4
	add r0, r7, r0
	mov r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bge _021AD048
	neg r1, r1
_021AD048:
	mov r2, #0
	ldrsh r3, [r0, r2]
	cmp r3, #0
	bge _021AD052
	neg r3, r3
_021AD052:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r3, r3, #2
	str r0, [sp, #0x10]
	lsl r1, r4, #3
	lsl r3, r3, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #3
	lsr r3, r3, #0x18
	bl ovy204_21a9d8c
	add r4, r4, #1
	cmp r4, #2
	blt _021AD038
	mov r1, #0x46
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x28]
	ldr r7, [sp, #0x18]
	ldr r0, [sp, #0x18]
	add r1, #8
	add r0, r0, r1
	str r0, [sp, #0x2c]
	add r7, #0x14
_021AD09A:
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x20]
	mov r0, #0x4c
	mul r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	mov r2, #6
	add r4, r3, #0
	mul r4, r2
	ldr r2, _021AD104 ; =0x021ADF48
	str r0, [sp]
	add r2, r2, r4
	lsl r4, r3, #2
	ldr r3, _021AD108 ; =0x021ADF1C
	ldr r0, [sp, #0x24]
	ldr r3, [r3, r4]
	add r0, r7, r0
	add r1, r6, #0
	bl sub_021AD8B4
	mov r4, #0
_021AD0C4:
	ldr r0, _021AD10C ; =0x021AE1C0
	lsl r5, r4, #2
	ldr r0, [r0, r5]
	ldr r3, _021AD110 ; =0x021ADF05
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldrb r3, [r3, r4]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	add r0, r7, r0
	add r2, r4, #0
	bl sub_021AD8D8
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r1, r0, r5
	ldr r0, [sp, #0x28]
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x2c]
	str r0, [r1, #0x6c]
	add r1, #0xb8
	str r0, [r1]
	cmp r4, #8
	blt _021AD0C4
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021AD09A
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AD104: .word 0x021ADF48
_021AD108: .word 0x021ADF1C
_021AD10C: .word 0x021AE1C0
_021AD110: .word 0x021ADF05
	thumb_func_end ovy204_21ad00c

	thumb_func_start ovy204_21ad114
ovy204_21ad114: ; 0x021AD114
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r2, #0
	bl sub_021ADE28
	ldr r0, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	bl ovy204_21ade3c
	ldr r6, [sp]
	mov r7, #0
	add r6, #0x14
_021AD132:
	mov r0, #0x4c
	add r4, r7, #0
	mov r5, #0
	mul r4, r0
_021AD13A:
	add r0, r6, r4
	add r1, r5, #0
	bl ovy204_21ad8e0
	add r5, r5, #1
	cmp r5, #8
	blt _021AD13A
	add r0, r6, r4
	bl sub_021AD8D4
	add r7, r7, #1
	cmp r7, #3
	blt _021AD132
	mov r4, #0x46
	mov r5, #0
	lsl r4, r4, #2
_021AD15A:
	ldr r0, [sp]
	lsl r1, r5, #3
	add r0, r0, r1
	ldr r0, [r0, r4]
	bl BmpWin_Free
	add r5, r5, #1
	cmp r5, #2
	blt _021AD15A
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ovy204_21ad898
	ldr r0, [sp]
	add r0, #0xf8
	str r0, [sp]
	bl ovy204_21ad838
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21ad114

	thumb_func_start ovy204_21ad184
ovy204_21ad184: ; 0x021AD184
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r6, r1, #0
	str r3, [sp, #8]
	mov r2, #0xb
	ldrsb r2, [r6, r2]
	add r5, r0, #0
	add r0, r4, #0
	add r2, r6, r2
	ldrb r2, [r2, #0x18]
	bl ovy204_21aa5b0
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc
	mov r2, #0xd
	mov r7, #0xd
	bl ovy204_21aa4c0
	add r0, r5, #0
	add r0, #0xfc
	ldr r1, [r0]
	mov r2, #0
	ldrh r0, [r1]
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	bl sub_020454AC
	mov r0, #0
	bl sub_02045B7C
	add r7, #0xf7
	ldr r1, [r5, r7]
	mov r2, #0
	ldrh r0, [r1]
	mov r3, #0
	mov r7, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	bl sub_020454AC
	mov r0, #2
	bl sub_02045B7C
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy204_21ad300
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r1, r6, #0
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_021AD5D0
	add r0, r6, #0
	mov r1, #0
	bl ovy204_21ad76c
	cmp r0, #1
	bne _021AD240
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ovy204_21aa7fc
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl ovy204_21aa7fc
	b _021AD254
_021AD240:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x11
	bl ovy204_21aa7fc
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	bl ovy204_21aa7fc
_021AD254:
	add r0, r4, #0
	mov r1, #1
	bl ovy204_21aa7bc
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ad184

	thumb_func_start ovy204_21ad260
ovy204_21ad260: ; 0x021AD260
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r7, #0
	bl ovy204_21aa7bc
	add r0, r5, #0
	add r1, r6, #0
	bl ovy204_21ad6b0
	add r0, r5, #0
	bl ovy204_21ad5a8
	mov r4, #0x20
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02045604
	mov r0, #2
	bl sub_02045B7C
	add r4, #0xec
	ldr r1, [r5, r4]
	mov r2, #0
	ldrh r0, [r1]
	mov r3, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	bl sub_020454AC
	mov r0, #0
	bl sub_02045B7C
	add r0, r6, #0
	bl ovy204_21aa51c
	add r0, r5, #0
	bl ovy204_21adeac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ad260

	thumb_func_start ovy204_21ad2d0
ovy204_21ad2d0: ; 0x021AD2D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r0, [sp]
	add r6, r1, #0
	mov r5, #0
	add r4, #0x14
	mov r7, #0x4c
_021AD2DE:
	add r0, r5, #0
	mul r0, r7
	add r0, r4, r0
	add r1, r6, #0
	bl ovy204_21ad950
	add r5, r5, #1
	cmp r5, #3
	blt _021AD2DE
	add r0, r6, #0
	bl ovy204_21aa51c
	ldr r0, [sp]
	bl ovy204_21adeac
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21ad2d0

	thumb_func_start ovy204_21ad300
ovy204_21ad300: ; 0x021AD300
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r1, #0
	str r3, [sp, #0x14]
	add r4, r0, #0
	ldr r0, [r6, #4]
	add r7, r2, #0
	bl sub_02017238
	mov r1, #0xb
	ldrsb r1, [r6, r1]
	mov r2, #9
	str r0, [sp, #0x18]
	add r1, r6, r1
	ldrb r1, [r1, #0x18]
	bl sub_02009F80
	mov r5, #0
_021AD324:
	lsl r0, r5, #3
	add r1, r4, r0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r5, r5, #1
	cmp r5, #0xa
	blo _021AD324
	mov r0, #0x4a
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [r4, r0]
	bl sub_020484E0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0xb
	ldrsb r0, [r6, r0]
	ldr r2, [sp, #0x20]
	lsl r5, r3, #3
	add r0, r6, r0
	add r0, #0x38
	ldrb r0, [r0]
	lsr r3, r5, #0x1f
	add r3, r5, r3
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [r6, #0x14]
	lsl r3, r3, #0xf
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, #0x54
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [r7, #0x34]
	ldr r2, [r7, r2]
	add r0, r4, r0
	lsr r3, r3, #0x10
	bl sub_0219A2EC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	add r0, #8
	add r0, r4, r0
	add r2, r7, #0
	mov r3, #0x13
	bl ovy204_21ad9ac
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	add r0, #0x10
	add r0, r4, r0
	add r2, r7, #0
	mov r3, #0x14
	bl ovy204_21ad9ac
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0x14
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x15
	bl ovy204_21ad9ac
	mov r1, #0xb
	ldrsb r1, [r6, r1]
	ldr r0, [sp, #0x18]
	mov r2, #2
	add r1, r6, r1
	ldrb r1, [r1, #0x18]
	bl sub_02009F80
	add r1, r0, #0
	add r0, r7, #0
	bl ovy204_21aa678
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	add r0, #0x20
	add r0, r4, r0
	add r2, r7, #0
	mov r3, #0x16
	bl ovy204_21ad9ac
	mov r1, #0xb
	ldrsb r1, [r6, r1]
	ldr r0, [sp, #0x18]
	mov r2, #3
	add r1, r6, r1
	ldrb r1, [r1, #0x18]
	bl sub_02009F80
	add r1, r0, #0
	add r0, r7, #0
	bl ovy204_21aa678
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x16
	bl ovy204_21ad9ac
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	add r0, #0x30
	add r0, r4, r0
	add r2, r7, #0
	mov r3, #0x17
	bl ovy204_21ad9ac
	mov r1, #0xb
	ldrsb r1, [r6, r1]
	ldr r0, [sp, #0x18]
	mov r2, #4
	add r1, r6, r1
	ldrb r1, [r1, #0x18]
	bl sub_02009F80
	add r1, r0, #0
	add r0, r7, #0
	bl ovy204_21aa678
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x18
	bl ovy204_21ad9ac
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	add r0, #0x40
	str r0, [sp, #0x20]
	add r0, r4, r0
	add r2, r7, #0
	mov r3, #0x1b
	bl ovy204_21ad9ac
	mov r2, #0xb
	ldrsb r2, [r6, r2]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r6, r2
	ldrb r2, [r2, #0x18]
	bl ovy204_21aa604
	cmp r0, #0
	beq _021AD4E2
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x1c
	bl ovy204_21ad9ac
	b _021AD4EC
_021AD4E2:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
_021AD4EC:
	mov r5, #0
_021AD4EE:
	lsl r0, r5, #3
	add r1, r4, r0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ovy204_21ade98
	add r5, r5, #1
	cmp r5, #0xa
	blo _021AD4EE
	ldr r1, _021AD5A4 ; =0x021AE024
	add r0, sp, #0x24
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	mov r2, #8
	strh r1, [r0, #6]
	mov r1, #0xb
	ldrsb r1, [r6, r1]
	ldr r0, [sp, #0x18]
	add r1, r6, r1
	ldrb r1, [r1, #0x18]
	bl sub_02009F80
	bl sub_0202B5E8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl sub_02034060
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	mov r2, #0
	add r6, r0, #0
	bl sub_020340A4
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0xc0
	mov r5, #0xc0
	bl sub_02034074
	mov r1, #0xc0
	add r1, #0xc0
	str r0, [r4, r1]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	mov r1, #2
	mov r2, #0
	bl sub_020340C8
	mov r1, #0xc0
	add r1, #0xc4
	str r0, [r4, r1]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r0, sp, #0x24
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0xc0
	str r0, [sp, #8]
	mov r0, #0xc0
	mov r2, #0xc0
	mov r3, #0xc0
	add r0, #0x78
	add r1, #0xbc
	add r2, #0xc0
	add r3, #0xc4
	ldr r0, [r7, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	add r5, #0xb8
	str r0, [r4, r5]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AD5A4: .word 0x021AE024
	thumb_func_end ovy204_21ad300

	thumb_func_start ovy204_21ad5a8
ovy204_21ad5a8: ; 0x021AD5A8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x4a
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021AD5B2:
	lsl r0, r4, #3
	add r0, r6, r0
	ldr r5, [r0, r7]
	add r0, r5, #0
	bl sub_020484B4
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r4, r4, #1
	cmp r4, #0xa
	blt _021AD5B2
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ad5a8

	thumb_func_start sub_021AD5D0
sub_021AD5D0: ; 0x021AD5D0
	cmp r3, #0
	bne _021AD5D8
	ldr r1, [sp]
	strh r1, [r0]
_021AD5D8:
	bx lr
	.align 2, 0
	thumb_func_end sub_021AD5D0

	thumb_func_start ovy204_21ad5dc
ovy204_21ad5dc: ; 0x021AD5DC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #1
	bne _021AD61A
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	str r1, [sp]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r2, #0xc
	str r2, [sp, #0xc]
	ldrh r2, [r0]
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x10]
	ldrh r0, [r0, #2]
	mov r2, #0x14
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #2
	b _021AD644
_021AD61A:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	str r1, [sp]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r2, #0x14
	str r2, [sp, #0xc]
	ldrh r3, [r0]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x10]
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #2
_021AD644:
	mov r3, #0x20
	bl sub_020454D4
	cmp r4, #0xff
	bne _021AD658
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021AD658:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	ldr r0, [r6, #0x10]
	mov r5, #4
	str r5, [sp]
	add r5, r2, #0
	add r5, #0xc
	str r5, [sp, #4]
	ldr r1, _021AD6A4 ; =0x021ADF28
	lsl r3, r0, #3
	add r1, r1, r3
	ldr r5, _021AD6A8 ; =0x021ADEDB
	ldrb r1, [r4, r1]
	ldrb r0, [r5, r0]
	ldr r5, _021AD6AC ; =0x021ADF38
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r2]
	add r3, r5, r3
	ldrb r3, [r4, r3]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r0, [r2, #2]
	mov r2, #0x14
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021AD6A4: .word 0x021ADF28
_021AD6A8: .word 0x021ADEDB
_021AD6AC: .word 0x021ADF38
	thumb_func_end ovy204_21ad5dc

	thumb_func_start ovy204_21ad6b0
ovy204_21ad6b0: ; 0x021AD6B0
	push {r3, lr}
	sub sp, #0x18
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #4
	str r1, [sp]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r2, #0x1c
	str r2, [sp, #0xc]
	ldrh r2, [r0]
	mov r3, #0x20
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x10]
	ldrh r0, [r0, #2]
	mov r2, #0x14
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, pc}
	thumb_func_end ovy204_21ad6b0

	thumb_func_start ovy204_21ad6f0
ovy204_21ad6f0: ; 0x021AD6F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	bl sub_02017238
	add r6, r0, #0
	mov r0, #0xb
	ldrsb r4, [r5, r0]
	cmp r7, #0
	bne _021AD736
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _021AD766
_021AD70E:
	sub r4, r4, #1
	bpl _021AD714
	add r4, r4, r1
_021AD714:
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #9
	bl sub_02009F80
	cmp r0, #2
	beq _021AD72A
	strb r4, [r5, #0xb]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AD72A:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _021AD70E
	b _021AD766
_021AD736:
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _021AD766
_021AD73E:
	add r0, r4, #1
	blx sub_0208D868
	add r4, r1, #0
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #9
	bl sub_02009F80
	cmp r0, #2
	beq _021AD75C
	strb r4, [r5, #0xb]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AD75C:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _021AD73E
_021AD766:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21ad6f0

	thumb_func_start ovy204_21ad76c
ovy204_21ad76c: ; 0x021AD76C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	bl sub_02017238
	add r6, r0, #0
	mov r0, #0xb
	ldrsb r4, [r5, r0]
	cmp r7, #0
	bne _021AD7B8
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _021AD7EE
_021AD78A:
	sub r4, r4, #1
	bpl _021AD790
	add r4, r4, r1
_021AD790:
	mov r0, #0xb
	ldrsb r0, [r5, r0]
	cmp r0, r4
	beq _021AD7EE
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #9
	bl sub_02009F80
	cmp r0, #2
	beq _021AD7AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AD7AC:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _021AD78A
	b _021AD7EE
_021AD7B8:
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _021AD7EE
_021AD7C0:
	add r0, r4, #1
	blx sub_0208D868
	mov r0, #0xb
	ldrsb r0, [r5, r0]
	add r4, r1, #0
	cmp r0, r4
	beq _021AD7EE
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #9
	bl sub_02009F80
	cmp r0, #2
	beq _021AD7E4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021AD7E4:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _021AD7C0
_021AD7EE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21ad76c

	thumb_func_start ovy204_21ad7f4
ovy204_21ad7f4: ; 0x021AD7F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r1, _021AD834 ; =0x021AE02C
	add r7, r2, #0
	ldrh r2, [r1]
	add r5, r0, #0
	add r0, sp, #4
	strh r2, [r0]
	ldrh r2, [r1, #2]
	mov r4, #0
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
_021AD814:
	str r7, [sp]
	lsl r2, r4, #1
	add r1, sp, #4
	ldrh r1, [r1, r2]
	ldr r0, [r6, #8]
	mov r2, #0
	add r3, r5, #4
	bl sub_0204B32C
	str r0, [r5]
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _021AD814
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AD834: .word 0x021AE02C
	thumb_func_end ovy204_21ad7f4

	thumb_func_start ovy204_21ad838
ovy204_21ad838: ; 0x021AD838
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021AD83E:
	ldr r0, [r5]
	bl GFL_HeapFree
	add r4, r4, #1
	add r5, #8
	cmp r4, #4
	blt _021AD83E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21ad838

	thumb_func_start ovy204_21ad850
ovy204_21ad850: ; 0x021AD850
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r7, _021AD894 ; =0x021ADF86
	mov r5, #0
	add r4, r0, r1
_021AD860:
	lsl r3, r5, #2
	add r0, r7, r3
	ldrb r1, [r0, #1]
	ldrb r3, [r7, r3]
	mov r2, #1
	str r1, [sp]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	lsl r1, r5, #3
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, r1
	bl ovy204_21a9d8c
	add r5, r5, #1
	cmp r5, #0xa
	blt _021AD860
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AD894: .word 0x021ADF86
	thumb_func_end ovy204_21ad850

	thumb_func_start ovy204_21ad898
ovy204_21ad898: ; 0x021AD898
	push {r4, r5, r6, lr}
	mov r6, #0x4a
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021AD8A2:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl BmpWin_Free
	add r4, r4, #1
	cmp r4, #0xa
	blt _021AD8A2
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21ad898

	thumb_func_start sub_021AD8B4
sub_021AD8B4: ; 0x021AD8B4
	ldrh r1, [r2]
	str r3, [r0, #8]
	mov r3, #0
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	add r2, r3, #0
	strh r1, [r0, #4]
_021AD8C6:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x2c]
	cmp r3, #8
	blt _021AD8C6
	bx lr
	thumb_func_end sub_021AD8B4

	thumb_func_start sub_021AD8D4
sub_021AD8D4: ; 0x021AD8D4
	bx lr
	.align 2, 0
	thumb_func_end sub_021AD8D4

	thumb_func_start sub_021AD8D8
sub_021AD8D8: ; 0x021AD8D8
	lsl r1, r2, #2
	add r0, r0, r1
	str r3, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021AD8D8

	thumb_func_start ovy204_21ad8e0
ovy204_21ad8e0: ; 0x021AD8E0
	push {r4, r5}
	add r2, r0, #0
	lsl r3, r1, #2
	add r2, #0xc
	ldr r1, [r2, r3]
	cmp r1, #0
	beq _021AD90E
	add r1, r0, #0
	add r1, #0x2c
	ldr r4, [r1, r3]
	mov r5, #0
	cmp r4, #0
	bls _021AD908
	add r4, r0, r3
_021AD8FC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #0x2c]
	cmp r5, r0
	blo _021AD8FC
_021AD908:
	mov r0, #0
	str r0, [r2, r3]
	str r0, [r1, r3]
_021AD90E:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy204_21ad8e0

	thumb_func_start ovy204_21ad914
ovy204_21ad914: ; 0x021AD914
	push {r3, r4, r5, r6, r7, lr}
	lsl r1, r1, #2
	add r5, r0, r1
	ldr r0, [r5, #0x2c]
	mov r4, #0
	cmp r0, #0
	bls _021AD94E
	add r7, r4, #0
_021AD924:
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0xc]
	ldr r6, [r0]
	add r0, r6, #0
	bl sub_020484B4
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x2c]
	add r4, r4, #1
	cmp r4, r0
	blo _021AD924
_021AD94E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ad914

	thumb_func_start ovy204_21ad950
ovy204_21ad950: ; 0x021AD950
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021AD958:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21ad914
	add r4, r4, #1
	cmp r4, #8
	blt _021AD958
	add r0, r6, #0
	add r1, r5, #0
	bl ovy204_21ad970
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21ad950

	thumb_func_start ovy204_21ad970
ovy204_21ad970: ; 0x021AD970
	push {lr}
	sub sp, #0xc
	mov r0, #2
	ldrsh r3, [r1, r0]
	cmp r3, #0
	bge _021AD97E
	neg r3, r3
_021AD97E:
	mov r0, #0
	ldrsh r2, [r1, r0]
	cmp r2, #0
	bge _021AD988
	neg r2, r2
_021AD988:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #3
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r1, [sp, #8]
	bl sub_02045604
	mov r0, #3
	bl sub_02045B7C
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy204_21ad970

	thumb_func_start ovy204_21ad9ac
ovy204_21ad9ac: ; 0x021AD9AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x20]
	add r1, r3, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	lsl r2, r2, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r3, r3, #0x10
	ldr r1, [r4, #0x34]
	add r0, r5, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21ad9ac

	thumb_func_start ovy204_21ad9f8
ovy204_21ad9f8: ; 0x021AD9F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	bl sub_020486F4
	add r7, r0, #0
	add r0, r4, #0
	bl sub_020486F0
	add r4, r0, #0
	ldr r2, [sp]
	mov r0, #0
	str r0, [r2]
	ldrh r2, [r4]
	mov r1, #0
	mov r5, #0
	cmp r7, r2
	beq _021ADA58
_021ADA1C:
	cmp r5, #0x12
	bge _021ADA5E
	lsl r2, r5, #1
	ldrh r2, [r4, r2]
	add r3, r2, #0
	sub r3, #0x30
	lsl r3, r3, #0x10
	lsr r6, r3, #0x10
	cmp r6, #0xa
	blo _021ADA3C
	ldr r3, _021ADA60 ; =0x0000FF10
	sub r2, r2, r3
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
	cmp r6, #0xa
	bhs _021ADA5E
_021ADA3C:
	mov r2, #0xa
	mov r3, #0
	blx sub_0208D60C
	ldr r2, _021ADA64 ; =0x00000000
	add r0, r0, r6
	adc r1, r2
	add r2, r5, #1
	lsl r2, r2, #0x10
	lsr r5, r2, #0x10
	lsl r2, r5, #1
	ldrh r2, [r4, r2]
	cmp r7, r2
	bne _021ADA1C
_021ADA58:
	ldr r2, [sp]
	mov r3, #1
	str r3, [r2]
_021ADA5E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ADA60: .word 0x0000FF10
_021ADA64: .word 0x00000000
	thumb_func_end ovy204_21ad9f8

	thumb_func_start ovy204_21ada68
ovy204_21ada68: ; 0x021ADA68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203DA48
	cmp r0, #1
	bne _021ADA82
	mov r5, #1
	mov r0, #1
	bl sub_0203D564
	str r5, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ADA82:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021ADA9A
	mov r5, #0
	mov r0, #0
	bl sub_0203D564
	str r5, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ADA9A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21ada68

	thumb_func_start ovy204_21adaa0
ovy204_21adaa0: ; 0x021ADAA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0x30
	mov r1, #0x10
	mov r2, #0
	add r3, r6, #0
	mov r7, #0x30
	bl sub_02035024
	mov r4, #0x61
	lsl r4, r4, #2
	str r0, [r5, r4]
	str r7, [sp]
	ldr r0, [r5, r4]
	ldr r1, [r5, #8]
	mov r2, #0
	mov r3, #0x20
	bl sub_02035104
	ldr r2, _021ADAEC ; =0x0000FFFE
	mov r0, #0x10
	mov r1, #0x10
	add r3, r6, #0
	bl sub_02035024
	add r1, r4, #4
	str r0, [r5, r1]
	mov r0, #0x10
	str r0, [sp]
	add r0, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #8]
	mov r2, #2
	mov r3, #0
	bl sub_02035104
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ADAEC: .word 0x0000FFFE
	thumb_func_end ovy204_21adaa0

	thumb_func_start ovy204_21adaf0
ovy204_21adaf0: ; 0x021ADAF0
	push {r3, r4, r5, lr}
	mov r5, #0x62
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02035178
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_02035178
	pop {r3, r4, r5, pc}
	thumb_func_end ovy204_21adaf0

	thumb_func_start ovy204_21adb08
ovy204_21adb08: ; 0x021ADB08
	push {r3, lr}
	sub sp, #8
	add r2, r0, #0
	add r3, r2, #1
	mov r0, #4
	lsl r2, r3, #2
	add r2, r3, r2
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #2
	lsr r2, r2, #0x18
	mov r3, #0x1c
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy204_21adb08

	thumb_func_start ovy204_21adb38
ovy204_21adb38: ; 0x021ADB38
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ovy204_21adb08
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020352B0
	pop {r4, pc}
	thumb_func_end ovy204_21adb38

	thumb_func_start ovy204_21adb50
ovy204_21adb50: ; 0x021ADB50
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #3
	bl ovy204_21adb08
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020352B0
	pop {r4, pc}
	thumb_func_end ovy204_21adb50

	thumb_func_start ovy204_21adb68
ovy204_21adb68: ; 0x021ADB68
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ovy204_21adb38
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21adb50
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21adb68

	thumb_func_start ovy204_21adb80
ovy204_21adb80: ; 0x021ADB80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203D554
	cmp r0, #1
	bne _021ADBA0
	mov r5, #0
	mov r4, #1
_021ADB90:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21adb08
	add r5, r5, #1
	cmp r5, #3
	blo _021ADB90
	pop {r3, r4, r5, r6, r7, pc}
_021ADBA0:
	mov r4, #0
	mov r7, #1
	mov r6, #3
_021ADBA6:
	ldr r0, [r5]
	cmp r4, r0
	bne _021ADBB2
	add r0, r4, #0
	add r1, r6, #0
	b _021ADBB6
_021ADBB2:
	add r0, r4, #0
	add r1, r7, #0
_021ADBB6:
	bl ovy204_21adb08
	add r4, r4, #1
	cmp r4, #3
	blo _021ADBA6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21adb80

	thumb_func_start ovy204_21adbc4
ovy204_21adbc4: ; 0x021ADBC4
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #4
	bhi _021ADC3A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ADBDA: ; jump table
	.short _021ADBE4 - _021ADBDA - 2 ; case 0
	.short _021ADBEA - _021ADBDA - 2 ; case 1
	.short _021ADC0A - _021ADBDA - 2 ; case 2
	.short _021ADC18 - _021ADBDA - 2 ; case 3
	.short _021ADC26 - _021ADBDA - 2 ; case 4
_021ADBE4:
	ldr r0, [r4]
	mov r1, #1
	b _021ADBFA
_021ADBEA:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADC3A
_021ADBF6:
	ldr r0, [r4]
	mov r1, #2
_021ADBFA:
	bl ovy204_21adb08
	mov r0, #0
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021ADC3A
_021ADC0A:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADC3A
	b _021ADBE4
_021ADC18:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADC3A
	b _021ADBF6
_021ADC26:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADC3A
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	pop {r4, pc}
_021ADC3A:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21adbc4

	thumb_func_start ovy204_21adc40
ovy204_21adc40: ; 0x021ADC40
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	mov r0, #4
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r1, r2, #2
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1c
	add r2, r2, #4
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r3, #0xe
	add r4, r1, #0
	mul r4, r3
	add r1, r4, #2
	lsl r1, r1, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy204_21adc40

	thumb_func_start ovy204_21adc78
ovy204_21adc78: ; 0x021ADC78
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ovy204_21adc40
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020352B0
	pop {r4, pc}
	thumb_func_end ovy204_21adc78

	thumb_func_start ovy204_21adc90
ovy204_21adc90: ; 0x021ADC90
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #3
	bl ovy204_21adc40
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020352B0
	pop {r4, pc}
	thumb_func_end ovy204_21adc90

	thumb_func_start ovy204_21adca8
ovy204_21adca8: ; 0x021ADCA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ovy204_21adc78
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21adc90
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21adca8

	thumb_func_start ovy204_21adcc0
ovy204_21adcc0: ; 0x021ADCC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0203D554
	cmp r0, #1
	bne _021ADCE0
	mov r5, #0
	mov r4, #1
_021ADCD0:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy204_21adc40
	add r5, r5, #1
	cmp r5, #8
	blo _021ADCD0
	pop {r3, r4, r5, r6, r7, pc}
_021ADCE0:
	mov r4, #0
	mov r7, #3
	mov r6, #4
_021ADCE6:
	ldrsh r0, [r5, r6]
	cmp r4, r0
	bne _021ADCF2
	add r0, r4, #0
	add r1, r7, #0
	b _021ADCF6
_021ADCF2:
	add r0, r4, #0
	mov r1, #1
_021ADCF6:
	bl ovy204_21adc40
	add r4, r4, #1
	cmp r4, #8
	blo _021ADCE6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy204_21adcc0

	thumb_func_start ovy204_21add04
ovy204_21add04: ; 0x021ADD04
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #4
	bhi _021ADD7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ADD1A: ; jump table
	.short _021ADD24 - _021ADD1A - 2 ; case 0
	.short _021ADD2C - _021ADD1A - 2 ; case 1
	.short _021ADD4E - _021ADD1A - 2 ; case 2
	.short _021ADD5C - _021ADD1A - 2 ; case 3
	.short _021ADD6A - _021ADD1A - 2 ; case 4
_021ADD24:
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r1, #1
	b _021ADD3E
_021ADD2C:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADD7E
_021ADD38:
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r1, #2
_021ADD3E:
	bl ovy204_21adc40
	mov r0, #0
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021ADD7E
_021ADD4E:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADD7E
	b _021ADD24
_021ADD5C:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADD7E
	b _021ADD38
_021ADD6A:
	ldrh r0, [r4, #0xa]
	add r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #4
	bne _021ADD7E
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	pop {r4, pc}
_021ADD7E:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21add04

	thumb_func_start ovy204_21add84
ovy204_21add84: ; 0x021ADD84
	push {r3, r4, r5, lr}
	mov r4, #0x59
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r5, r4]
	mov r1, #9
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21add84

	thumb_func_start ovy204_21adda8
ovy204_21adda8: ; 0x021ADDA8
	push {r3, r4, r5, lr}
	mov r4, #0x5a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r5, r4]
	mov r1, #8
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21adda8

	thumb_func_start ovy204_21addcc
ovy204_21addcc: ; 0x021ADDCC
	push {r3, lr}
	cmp r0, #1
	ldr r0, _021ADDEC ; =0x04000050
	bne _021ADDDE
	mov r1, #0x1c
	mov r2, #0
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
_021ADDDE:
	mov r2, #0x1c
	mov r1, #0x1c
	sub r2, #0x24
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
	nop
_021ADDEC: .word 0x04000050
	thumb_func_end ovy204_21addcc

	thumb_func_start ovy204_21addf0
ovy204_21addf0: ; 0x021ADDF0
	push {r4, r5, r6, lr}
	mov r6, #0x69
	add r5, r0, #0
	lsl r6, r6, #2
	add r4, r1, #0
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0204C4D4
	add r1, r4, #2
	lsl r1, r1, #0x10
	ldr r0, [r5, r6]
	lsr r1, r1, #0x10
	bl sub_0204C488
	pop {r4, r5, r6, pc}
	thumb_func_end ovy204_21addf0

	thumb_func_start ovy204_21ade10
ovy204_21ade10: ; 0x021ADE10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl BmpWin_FlushMap
	ldr r0, [r4, #0xc]
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy204_21ade10

	thumb_func_start sub_021ADE28
sub_021ADE28: ; 0x021ADE28
	mov r3, #0
	add r2, r3, #0
_021ADE2C:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #0x38]
	cmp r3, #0x40
	blo _021ADE2C
	bx lr
	.align 2, 0
	thumb_func_end sub_021ADE28

	thumb_func_start ovy204_21ade3c
ovy204_21ade3c: ; 0x021ADE3C
	push {r3, r4}
	mov r4, #0
_021ADE40:
	lsl r2, r4, #2
	add r3, r0, r2
	ldr r2, [r3, #0x38]
	cmp r2, #0
	bne _021ADE50
	str r1, [r3, #0x38]
	pop {r3, r4}
	bx lr
_021ADE50:
	add r4, r4, #1
	cmp r4, #0x40
	blo _021ADE40
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy204_21ade3c

	thumb_func_start ovy204_21ade5c
ovy204_21ade5c: ; 0x021ADE5C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
_021ADE62:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r5, [r0, #0x38]
	cmp r5, #0
	beq _021ADE96
	ldrb r0, [r5, #4]
	ldr r7, [r6, #0x34]
	cmp r0, #0
	beq _021ADE90
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021ADE90
	ldr r0, [r5]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #4]
_021ADE90:
	add r4, r4, #1
	cmp r4, #0x40
	blo _021ADE62
_021ADE96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy204_21ade5c

	thumb_func_start ovy204_21ade98
ovy204_21ade98: ; 0x021ADE98
	push {r4, lr}
	add r4, r0, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	thumb_func_end ovy204_21ade98

	thumb_func_start ovy204_21adeac
ovy204_21adeac: ; 0x021ADEAC
	push {r3, r4, r5, lr}
	mov r5, #0x5f
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204B98C
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204BCD0
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_0204BE64
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204C108
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy204_21adeac
_021ADED8:
	.byte 0x12, 0x08, 0x09, 0x18, 0x10, 0x00, 0x38, 0x3B
	.byte 0x02, 0x01, 0x0E, 0x02, 0x05, 0x05, 0x09, 0x02, 0x02, 0x05, 0x0C, 0x02, 0x02, 0x05, 0x1A, 0x0B
	.byte 0x02, 0x05, 0x14, 0x0B, 0x02, 0x05, 0x14, 0x0B, 0x02, 0x05, 0x16, 0x0B, 0x01, 0x05, 0x1B, 0x02
	.byte 0x01, 0x02, 0x03, 0x05, 0x06, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0xA8, 0xBF, 0xE8
	.byte 0xFF, 0xA8, 0xBF, 0xC8, 0xDF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xF5, 0x01, 0x00, 0x00, 0xF5, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x04, 0x08, 0x0C, 0x10, 0x14, 0x18, 0x1C, 0x0E, 0x0E, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x20, 0x18, 0x20, 0x00
	.byte 0x00, 0x00, 0x20, 0x18, 0xE0, 0xFF, 0x00, 0x00, 0x20, 0x18, 0xA8, 0xBF, 0x10, 0x27, 0xA8, 0xBF
	.byte 0x30, 0x47, 0xA8, 0xBF, 0xE8, 0xFF, 0xA8, 0xBF, 0xC8, 0xDF, 0xFF, 0x00, 0x00, 0x00, 0x2A, 0x45
	.byte 0x13, 0xEC, 0x52, 0x6D, 0x13, 0xEC, 0x7A, 0x95, 0x13, 0xEC, 0xA8, 0xBF, 0xE8, 0xFF, 0xA8, 0xBF
	.byte 0xC8, 0xDF, 0xFF, 0x00, 0x00, 0x00, 0x1A, 0x01, 0x05, 0x02, 0x0E, 0x05, 0x0E, 0x02, 0x17, 0x08
	.byte 0x04, 0x02, 0x17, 0x0A, 0x04, 0x02, 0x1B, 0x08, 0x04, 0x02, 0x1B, 0x0A, 0x04, 0x02, 0x0E, 0x0D
	.byte 0x0C, 0x02, 0x1B, 0x0D, 0x04, 0x02, 0x02, 0x11, 0x11, 0x02, 0x14, 0x11, 0x0A, 0x02, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x20, 0x40, 0x10, 0x80, 0x40, 0x60, 0x10, 0x80, 0x60, 0x80, 0x10, 0x80, 0x80, 0xA0, 0x10, 0x80
	.byte 0x20, 0x40, 0x80, 0xF0, 0x40, 0x60, 0x80, 0xF0, 0x60, 0x80, 0x80, 0xF0, 0x80, 0xA0, 0x80, 0xF0
	.byte 0xA8, 0xBF, 0xE8, 0xFF, 0xA8, 0xBF, 0xC8, 0xDF, 0xA8, 0xBF, 0x08, 0x1F, 0xA8, 0xBF, 0x20, 0x37
	.byte 0xA8, 0xBF, 0x38, 0x4F, 0xA8, 0xBF, 0x50, 0x67, 0xFF, 0x00, 0x00, 0x00, 0x38, 0x00, 0xB4, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x38, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x0B, 0x00
	.byte 0x05, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x61, 0x9B, 0x1A, 0x02
	.byte 0xE9, 0x9B, 0x1A, 0x02, 0xE5, 0x9C, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00
	.byte 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x04, 0x00
	.byte 0x0F, 0x04, 0x02, 0x02, 0x08, 0x00, 0x02, 0x00, 0x08, 0x00, 0x0F, 0x04, 0x02, 0x02, 0x08, 0x00
	.byte 0x02, 0x00, 0x0C, 0x00, 0x0F, 0x04, 0x02, 0x02, 0x08, 0x00, 0x02, 0x00, 0x10, 0x00, 0x0F, 0x04
	.byte 0x02, 0x02, 0x08, 0x00, 0x10, 0x00, 0x04, 0x00, 0x0F, 0x04, 0x02, 0x02, 0x08, 0x00, 0x10, 0x00
	.byte 0x08, 0x00, 0x0F, 0x04, 0x02, 0x02, 0x08, 0x00, 0x10, 0x00, 0x0C, 0x00, 0x0F, 0x04, 0x02, 0x02
	.byte 0x08, 0x00, 0x10, 0x00, 0x10, 0x00, 0x0F, 0x04, 0x02, 0x02, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x18, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x19, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1A, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x45, 0xC0, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x49, 0xC0, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE8, 0xDE, 0x1A, 0x02, 0xF8, 0xDE, 0x1A, 0x02, 0xE4, 0xDE, 0x1A, 0x02, 0xE0, 0xDE, 0x1A, 0x02
	.byte 0xEC, 0xDE, 0x1A, 0x02, 0xF0, 0xDE, 0x1A, 0x02, 0xF4, 0xDE, 0x1A, 0x02, 0xFC, 0xDE, 0x1A, 0x02
	.byte 0x10, 0x00, 0xA8, 0x00, 0x02, 0x00, 0x08, 0x02, 0x30, 0x00, 0xA8, 0x00, 0x03, 0x00, 0x08, 0x02
	.byte 0xE8, 0x00, 0xA8, 0x00, 0x01, 0x00, 0x00, 0x02, 0xC8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x02
	; 0x021ADED8
