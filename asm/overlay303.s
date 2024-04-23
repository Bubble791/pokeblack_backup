    .include "macros/function.inc"
	.include "overlay303.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy303_219fbc0
ovy303_219fbc0: ; 0x0219FBC0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #6
	add r5, r0, #0
	mov r0, #1
	mov r1, #0xa5
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	add r0, r5, #0
	add r1, r4, #0
	bl ovy303_219fc70
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	ldr r1, [r1]
	bl ovy303_21a1a80
	add r0, r4, #0
	bl ovy303_219fc38
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy303_219fbc0

	thumb_func_start ovy303_219fbf0
ovy303_219fbf0: ; 0x0219FBF0
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ovy303_219fcd4
	cmp r0, #0
	beq _0219FC0A
	add r4, #0x10
	add r0, r4, #0
	bl ovy303_21a1cb8
	mov r0, #0
	pop {r4, pc}
_0219FC0A:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_219fbf0

	thumb_func_start ovy303_219fc10
ovy303_219fc10: ; 0x0219FC10
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0219FC54
	add r0, r4, #0
	add r0, #0x10
	bl ovy303_21a1b30
	add r0, r5, #0
	add r1, r4, #0
	bl ovy303_219fcb0
	mov r0, #0xa5
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy303_219fc10

	thumb_func_start ovy303_219fc38
ovy303_219fc38: ; 0x0219FC38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219FC50 ; =0x0219FC65
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r1, #0x87
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0219FC50: .word 0x0219FC65
	thumb_func_end ovy303_219fc38

	thumb_func_start sub_0219FC54
sub_0219FC54: ; 0x0219FC54
	mov r1, #0x87
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _0219FC60 ; =GFL_TCBRemove
	bx r3
	nop
_0219FC60: .word GFL_TCBRemove
	thumb_func_end sub_0219FC54
_0219FC64:
	.byte 0x10, 0x31, 0x01, 0x4B, 0x08, 0x1C, 0x18, 0x47, 0xB9, 0x1B, 0x1A, 0x02

	thumb_func_start ovy303_219fc70
ovy303_219fc70: ; 0x0219FC70
	push {r4, r5, r6, lr}
	ldr r5, _0219FCAC ; =0x0000094C
	add r6, r1, #0
	add r1, r5, #0
	mov r2, #0xa5
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	mov r2, #0xa5
	mov r0, #0
	mov r1, #2
	add r2, #0xc5
	mov r3, #0xa5
	str r6, [r4, #0xc]
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	sub r1, #0xe0
	str r0, [r4, r1]
	mov r0, #0xa5
	bl GFL_WordSetSystemCreateDefault
	sub r5, #0xb8
	str r0, [r4, r5]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219FCAC: .word 0x0000094C
	thumb_func_end ovy303_219fc70

	thumb_func_start ovy303_219fcb0
ovy303_219fcb0: ; 0x0219FCB0
	push {r4, r5, r6, lr}
	ldr r4, _0219FCD0 ; =0x00000894
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	sub r4, #0x28
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	add r0, r6, #0
	bl sub_0203AB10
	pop {r4, r5, r6, pc}
	nop
_0219FCD0: .word 0x00000894
	thumb_func_end ovy303_219fcb0

	thumb_func_start ovy303_219fcd4
ovy303_219fcd4: ; 0x0219FCD4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0219FCF4 ; =0x021A330C
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _0219FCE6
	blx r1
_0219FCE6:
	ldr r0, [r4]
	cmp r0, #0
	beq _0219FCF0
	mov r0, #0
	pop {r4, pc}
_0219FCF0:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_0219FCF4: .word 0x021A330C
	thumb_func_end ovy303_219fcd4

	thumb_func_start sub_0219FCF8
sub_0219FCF8: ; 0x0219FCF8
	str r1, [r0, #4]
	ldr r1, _0219FD04 ; =0x0000092C
	str r2, [r0, r1]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0219FD04: .word 0x0000092C
	thumb_func_end sub_0219FCF8

	thumb_func_start ovy303_219fd08
ovy303_219fd08: ; 0x0219FD08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0219FD1C
	cmp r0, #1
	beq _0219FD62
	cmp r0, #2
	beq _0219FD86
	pop {r3, r4, r5, pc}
_0219FD1C:
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A2A20
	cmp r0, #0
	beq _0219FDFC
	ldr r5, _0219FE00 ; =0x00000938
	mov r1, #0x30
	str r1, [r4, r5]
	sub r1, #0x60
	add r0, r5, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #0
	bl ovy303_21a2860
	add r0, r4, #0
	ldr r1, [r4, r5]
	add r0, #0x10
	mov r2, #1
	bl ovy303_21a306c
	add r1, r5, #4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x10
	mov r2, #0
	bl ovy303_21a306c
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0219FD62:
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A28EC
	cmp r0, #0
	bne _0219FDFC
	ldr r0, _0219FE04 ; =0x0400006C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _0219FE08 ; =0x0400106C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0219FD86:
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A28EC
	cmp r0, #0
	bne _0219FDA2
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
_0219FDA2:
	ldr r5, _0219FE00 ; =0x00000938
	ldr r0, [r4, r5]
	cmp r0, #0
	bgt _0219FDD2
	add r0, r4, #0
	bl ovy303_21a18c4
	add r1, r0, #0
	beq _0219FDC6
	add r0, r4, #0
	bl sub_021A1940
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xa
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_0219FDC6:
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_0219FDD2:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x10
	mvn r1, r1
	mov r2, #1
	bl ovy303_21a306c
	add r0, r4, #0
	add r0, #0x10
	mov r1, #3
	mov r2, #0
	bl ovy303_21a306c
	ldr r0, [r4, r5]
	sub r0, r0, #3
	str r0, [r4, r5]
	add r0, r5, #4
	ldr r0, [r4, r0]
	add r1, r0, #3
	add r0, r5, #4
	str r1, [r4, r0]
_0219FDFC:
	pop {r3, r4, r5, pc}
	nop
_0219FE00: .word 0x00000938
_0219FE04: .word 0x0400006C
_0219FE08: .word 0x0400106C
	thumb_func_end ovy303_219fd08

	thumb_func_start ovy303_219fe0c
ovy303_219fe0c: ; 0x0219FE0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0219FE20
	cmp r0, #1
	beq _0219FE94
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0219FE20:
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A2A20
	cmp r0, #0
	beq _0219FEEE
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_021A32A4
	ldr r0, _0219FEF4 ; =0x00000938
	mov r4, #0
	str r4, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0x10
	mov r2, #0x10
	bl ovy303_21a2860
	add r0, r5, #0
	bl ovy303_21a111c
	add r0, r5, #0
	add r0, #0x10
	mov r1, #5
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl ovy303_21a32a8
	add r0, sp, #0
	strh r4, [r0]
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl GXS_LoadBGPltt
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r5, #8]
	add sp, #4
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_0219FE94:
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A28EC
	cmp r0, #0
	bne _0219FEEE
	ldr r4, _0219FEF4 ; =0x00000938
	ldr r0, [r5, r4]
	cmp r0, #0x30
	blt _0219FEC4
	mov r4, #0xf
	mvn r4, r4
	ldr r0, _0219FEF8 ; =0x0400006C
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _0219FEFC ; =0x0400106C
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #1
	add sp, #4
	str r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219FEC4:
	add r0, r5, #0
	add r0, #0x10
	mov r1, #3
	mov r2, #1
	mov r6, #1
	bl ovy303_21a306c
	add r0, r5, #0
	add r0, #0x10
	sub r1, r6, #4
	mov r2, #0
	bl ovy303_21a306c
	ldr r0, [r5, r4]
	add r0, r0, #3
	str r0, [r5, r4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	sub r1, r0, #3
	add r0, r4, #4
	str r1, [r5, r0]
_0219FEEE:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219FEF4: .word 0x00000938
_0219FEF8: .word 0x0400006C
_0219FEFC: .word 0x0400106C
	thumb_func_end ovy303_219fe0c

	thumb_func_start ovy303_219ff00
ovy303_219ff00: ; 0x0219FF00
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_021A11B4
	add r5, r0, #0
	ldr r0, _021A0040 ; =0x021A339C
	bl sub_0203DA0C
	add r1, r0, #1
	cmp r1, #0x1e
	bls _0219FF18
	b _021A003E
_0219FF18:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219FF24: ; jump table
	.short _021A0038 - _0219FF24 - 2 ; case 0
	.short _0219FF62 - _0219FF24 - 2 ; case 1
	.short _0219FF70 - _0219FF24 - 2 ; case 2
	.short _0219FF7C - _0219FF24 - 2 ; case 3
	.short _0219FF88 - _0219FF24 - 2 ; case 4
	.short _0219FF92 - _0219FF24 - 2 ; case 5
	.short _0219FF9C - _0219FF24 - 2 ; case 6
	.short _0219FFA6 - _0219FF24 - 2 ; case 7
	.short _0219FFBC - _0219FF24 - 2 ; case 8
	.short _0219FFD2 - _0219FF24 - 2 ; case 9
	.short _0219FFEE - _0219FF24 - 2 ; case 10
	.short _021A000A - _0219FF24 - 2 ; case 11
	.short _021A000A - _0219FF24 - 2 ; case 12
	.short _021A000A - _0219FF24 - 2 ; case 13
	.short _021A000A - _0219FF24 - 2 ; case 14
	.short _021A000A - _0219FF24 - 2 ; case 15
	.short _021A000A - _0219FF24 - 2 ; case 16
	.short _021A000A - _0219FF24 - 2 ; case 17
	.short _021A000A - _0219FF24 - 2 ; case 18
	.short _021A000A - _0219FF24 - 2 ; case 19
	.short _021A000A - _0219FF24 - 2 ; case 20
	.short _021A000A - _0219FF24 - 2 ; case 21
	.short _021A000A - _0219FF24 - 2 ; case 22
	.short _021A000A - _0219FF24 - 2 ; case 23
	.short _021A000A - _0219FF24 - 2 ; case 24
	.short _021A000A - _0219FF24 - 2 ; case 25
	.short _021A000A - _0219FF24 - 2 ; case 26
	.short _021A000A - _0219FF24 - 2 ; case 27
	.short _021A000A - _0219FF24 - 2 ; case 28
	.short _021A000A - _0219FF24 - 2 ; case 29
	.short _021A000A - _0219FF24 - 2 ; case 30
_0219FF62:
	ldr r0, _021A0044 ; =0x00000646
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy303_21a1978
	pop {r4, r5, r6, pc}
_0219FF70:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #6
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_0219FF7C:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #5
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_0219FF88:
	add r0, r4, #0
	mov r1, #0
	bl ovy303_21a004c
	pop {r4, r5, r6, pc}
_0219FF92:
	add r0, r4, #0
	mov r1, #1
	bl ovy303_21a004c
	pop {r4, r5, r6, pc}
_0219FF9C:
	add r0, r4, #0
	mov r1, #2
	bl ovy303_21a004c
	pop {r4, r5, r6, pc}
_0219FFA6:
	mov r0, #0x22
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #1
	ble _021A003E
	add r0, r4, #0
	mov r1, #6
	mov r2, #2
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_0219FFBC:
	mov r0, #0x22
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #1
	ble _021A003E
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_0219FFD2:
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _021A003E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_0219FFEE:
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _021A003E
	add r0, r4, #0
	mov r1, #5
	mov r2, #1
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A000A:
	ldr r6, _021A0048 ; =0x00000884
	ldr r1, [r4, r6]
	cmp r1, #0
	ble _021A003E
	add r5, r0, #0
	sub r5, #0xa
	cmp r5, r1
	bge _021A003E
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A003E
	sub r6, #8
	add r0, r4, #0
	mov r1, #8
	mov r2, #7
	str r5, [r4, r6]
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A0038:
	add r0, r4, #0
	bl ovy303_21a0080
_021A003E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0040: .word 0x021A339C
_021A0044: .word 0x00000646
_021A0048: .word 0x00000884
	thumb_func_end ovy303_219ff00

	thumb_func_start ovy303_21a004c
ovy303_21a004c: ; 0x021A004C
	push {r4, r5, r6, lr}
	mov r6, #0x89
	add r5, r0, #0
	lsl r6, r6, #4
	add r4, r1, #0
	ldr r1, [r5, r6]
	cmp r1, r4
	beq _021A007E
	bl ovy303_21a19f0
	cmp r0, #0
	beq _021A007E
	lsl r0, r4, #2
	add r1, r5, r0
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021A007E
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xb
	str r4, [r5, r6]
	bl sub_0219FCF8
_021A007E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy303_21a004c

	thumb_func_start ovy303_21a0080
ovy303_21a0080: ; 0x021A0080
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203DF44
	add r4, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021A11B4
	mov r1, #2
	lsl r1, r1, #8
	add r2, r4, #0
	tst r2, r1
	beq _021A00BE
	mov r1, #0x89
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #2]
	cmp r0, #1
	beq _021A00B2
	b _021A01B4
_021A00B2:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A00BE:
	lsr r1, r1, #1
	tst r1, r4
	beq _021A00E0
	mov r1, #0x89
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #2]
	cmp r0, #1
	bne _021A01B4
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A00E0:
	mov r0, #0x20
	tst r0, r4
	beq _021A00FC
	add r0, r5, #0
	bl ovy303_21a19f0
	cmp r0, #0
	beq _021A01B4
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A00FC:
	mov r0, #0x10
	tst r0, r4
	beq _021A0118
	add r0, r5, #0
	bl ovy303_21a19f0
	cmp r0, #0
	beq _021A01B4
	add r0, r5, #0
	mov r1, #7
	mov r2, #1
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A0118:
	mov r0, #0x40
	tst r0, r4
	beq _021A0134
	mov r0, #0x22
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #1
	ble _021A01B4
	add r0, r5, #0
	mov r1, #6
	mov r2, #2
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A0134:
	mov r0, #0x80
	tst r0, r4
	beq _021A0150
	mov r0, #0x22
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #1
	ble _021A01B4
	add r0, r5, #0
	mov r1, #6
	mov r2, #3
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A0150:
	mov r0, #1
	tst r0, r6
	beq _021A017C
	ldr r4, _021A01B8 ; =0x00000884
	ldr r0, [r5, r4]
	cmp r0, #0
	ble _021A01B4
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A01B4
	sub r4, #0xc
	add r0, r5, #0
	mov r1, #8
	mov r2, #4
	str r6, [r5, r4]
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A017C:
	mov r1, #2
	add r0, r6, #0
	tst r0, r1
	beq _021A0190
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #5
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A0190:
	lsl r0, r1, #9
	tst r0, r6
	beq _021A01A2
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #6
	bl sub_0219FCF8
	pop {r4, r5, r6, pc}
_021A01A2:
	lsl r0, r1, #0xa
	tst r0, r6
	beq _021A01B4
	ldr r0, _021A01BC ; =0x00000646
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy303_21a1978
_021A01B4:
	pop {r4, r5, r6, pc}
	nop
_021A01B8: .word 0x00000884
_021A01BC: .word 0x00000646
	thumb_func_end ovy303_21a0080

	thumb_func_start ovy303_21a01c0
ovy303_21a01c0: ; 0x021A01C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x10
	mov r1, #0x10
	bl sub_021A2B04
	ldr r1, [r5, #8]
	add r4, r0, #0
	cmp r1, #0
	beq _021A01DA
	cmp r1, #1
	beq _021A01FE
	pop {r3, r4, r5, pc}
_021A01DA:
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	mov r1, #9
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C520
	ldr r0, _021A0248 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
_021A01FE:
	bl sub_020062A8
	cmp r0, #0
	bne _021A0244
	add r0, r4, #0
	bl sub_0204C560
	cmp r0, #0
	bne _021A0244
	ldr r1, _021A024C ; =0x00000878
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #0
	bl ovy303_21a14fc
	add r0, r5, #0
	bl ovy303_21a16e4
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C4D4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
_021A0244:
	pop {r3, r4, r5, pc}
	nop
_021A0248: .word 0x00000551
_021A024C: .word 0x00000878
	thumb_func_end ovy303_21a01c0

	thumb_func_start ovy303_21a0250
ovy303_21a0250: ; 0x021A0250
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A11B4
	ldr r0, _021A0344 ; =0x021A3344
	bl sub_0203DA0C
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021A026E
	cmp r1, #1
	beq _021A02A6
	cmp r1, #2
	beq _021A02B6
	pop {r4, pc}
_021A026E:
	add r0, r4, #0
	bl ovy303_21a1630
	ldr r0, _021A0348 ; =0x0000092C
	ldr r0, [r4, r0]
	cmp r0, #4
	bne _021A028E
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xa
	bl sub_0219FCF8
	ldr r0, _021A034C ; =0x0000054C
	bl GFL_SndSEPlay
	pop {r4, pc}
_021A028E:
	cmp r0, #7
	bne _021A029E
	add r0, r4, #0
	mov r1, #9
	mov r2, #8
	bl sub_0219FCF8
	pop {r4, pc}
_021A029E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021A02A6:
	bl sub_020062A8
	cmp r0, #0
	bne _021A0340
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021A02B6:
	add r1, r0, #1
	cmp r1, #0x16
	bhi _021A0340
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A02C8: ; jump table
	.short _021A033A - _021A02C8 - 2 ; case 0
	.short _021A02F6 - _021A02C8 - 2 ; case 1
	.short _021A0302 - _021A02C8 - 2 ; case 2
	.short _021A0320 - _021A02C8 - 2 ; case 3
	.short _021A0320 - _021A02C8 - 2 ; case 4
	.short _021A0320 - _021A02C8 - 2 ; case 5
	.short _021A0320 - _021A02C8 - 2 ; case 6
	.short _021A0320 - _021A02C8 - 2 ; case 7
	.short _021A0320 - _021A02C8 - 2 ; case 8
	.short _021A0320 - _021A02C8 - 2 ; case 9
	.short _021A0320 - _021A02C8 - 2 ; case 10
	.short _021A0320 - _021A02C8 - 2 ; case 11
	.short _021A0320 - _021A02C8 - 2 ; case 12
	.short _021A0320 - _021A02C8 - 2 ; case 13
	.short _021A0320 - _021A02C8 - 2 ; case 14
	.short _021A0320 - _021A02C8 - 2 ; case 15
	.short _021A0320 - _021A02C8 - 2 ; case 16
	.short _021A0320 - _021A02C8 - 2 ; case 17
	.short _021A0320 - _021A02C8 - 2 ; case 18
	.short _021A0320 - _021A02C8 - 2 ; case 19
	.short _021A0320 - _021A02C8 - 2 ; case 20
	.short _021A0320 - _021A02C8 - 2 ; case 21
	.short _021A0320 - _021A02C8 - 2 ; case 22
_021A02F6:
	add r0, r4, #0
	mov r1, #4
	mov r2, #5
	bl sub_0219FCF8
	pop {r4, pc}
_021A0302:
	ldr r1, _021A0350 ; =0x00000878
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A0340
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #9
	bl sub_0219FCF8
	pop {r4, pc}
_021A0320:
	sub r2, r0, #2
	ldr r0, _021A0354 ; =0x00000884
	ldr r1, [r4, r0]
	cmp r2, r1
	bge _021A0340
	sub r0, #8
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #9
	mov r2, #7
	bl sub_0219FCF8
	pop {r4, pc}
_021A033A:
	add r0, r4, #0
	bl ovy303_21a0358
_021A0340:
	pop {r4, pc}
	nop
_021A0344: .word 0x021A3344
_021A0348: .word 0x0000092C
_021A034C: .word 0x0000054C
_021A0350: .word 0x00000878
_021A0354: .word 0x00000884
	thumb_func_end ovy303_21a0250

	thumb_func_start ovy303_21a0358
ovy303_21a0358: ; 0x021A0358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	bl sub_0203DF44
	ldr r1, _021A0414 ; =0x00000874
	ldr r2, [r5, r1]
	cmp r2, #1
	bne _021A03EC
	mov r2, #0x20
	tst r2, r0
	beq _021A0380
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A0380:
	mov r2, #0x10
	tst r2, r0
	beq _021A0392
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A0392:
	mov r2, #0x40
	tst r2, r0
	beq _021A03A4
	add r0, r5, #0
	mov r1, #9
	mov r2, #2
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A03A4:
	mov r2, #0x80
	tst r0, r2
	beq _021A03B6
	add r0, r5, #0
	mov r1, #9
	mov r2, #3
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A03B6:
	mov r0, #2
	tst r0, r4
	beq _021A03C8
	add r0, r5, #0
	mov r1, #4
	mov r2, #5
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A03C8:
	mov r0, #1
	tst r0, r4
	beq _021A0412
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A0412
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #9
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A03EC:
	mov r0, #2
	tst r0, r4
	beq _021A03FE
	add r0, r5, #0
	mov r1, #4
	mov r2, #5
	bl sub_0219FCF8
	pop {r3, r4, r5, pc}
_021A03FE:
	cmp r4, #0
	beq _021A0412
	ldr r0, _021A0418 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #9
	mov r2, #0xa
	bl sub_0219FCF8
_021A0412:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0414: .word 0x00000874
_021A0418: .word 0x00000548
	thumb_func_end ovy303_21a0358

	thumb_func_start ovy303_21a041c
ovy303_21a041c: ; 0x021A041C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A042C
	cmp r0, #1
	beq _021A0472
	pop {r4, pc}
_021A042C:
	add r2, r4, #0
	mov r0, #0
	mov r1, #0
	add r2, #0x10
	bl ovy303_21a2ae8
	mov r0, #1
	mov r1, #0xa5
	bl sub_02042BA8
	add r0, r4, #0
	bl ovy303_21a1814
	add r0, r4, #0
	bl ovy303_21a1550
	add r0, r4, #0
	bl ovy303_21a14a0
	add r0, r4, #0
	bl ovy303_21a136c
	add r0, r4, #0
	bl ovy303_21a17e4
	add r0, r4, #0
	bl ovy303_21a0858
	add r0, r4, #0
	bl ovy303_21a19c0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021A0472:
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A1C98
	cmp r0, #0
	beq _021A0498
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A3140
	cmp r0, #0
	bne _021A0498
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa
	bl sub_0219FCF8
	mov r0, #0
	str r0, [r4]
_021A0498:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a041c

	thumb_func_start ovy303_21a049c
ovy303_21a049c: ; 0x021A049C
	push {r4, r5, r6, lr}
	ldr r4, _021A05B8 ; =0x0000092C
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #6
	bne _021A04BE
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xf
	bl sub_021A2B04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
_021A04B8:
	bl sub_021A1808
	b _021A0512
_021A04BE:
	cmp r0, #5
	bne _021A04D4
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0x10
	bl sub_021A2B04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	b _021A04B8
_021A04D4:
	cmp r0, #9
	bne _021A0512
	add r0, r5, #0
	add r0, #0x10
	mov r1, #5
	bl sub_021A2B04
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_021A1808
	add r1, r4, #0
	sub r1, #0x9c
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r0, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02010D90
	add r0, r4, #0
	sub r4, #0xa0
	ldr r1, [r5, r4]
	add r0, #8
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_02010D80
_021A0512:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A051E
	cmp r0, #1
	beq _021A05A0
	pop {r4, r5, r6, pc}
_021A051E:
	add r0, r5, #0
	bl sub_021A11B4
	add r1, r0, #0
	ldr r4, _021A05BC ; =0x00000934
	ldrh r1, [r1]
	ldr r0, [r5, r4]
	bl sub_02010D70
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #6
	bne _021A0546
	add r0, r6, #0
	mov r1, #8
	bl sub_0204C488
	ldr r0, _021A05C0 ; =0x00000556
	b _021A0584
_021A0546:
	cmp r0, #5
	bne _021A0556
	add r0, r6, #0
	mov r1, #9
	bl sub_0204C488
	ldr r0, _021A05C4 ; =0x00000551
	b _021A0584
_021A0556:
	cmp r0, #9
	bne _021A0588
	add r1, r4, #0
	sub r1, #0xbc
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	add r1, r0, #0
	bmi _021A057A
	sub r0, r4, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_0200D200
_021A057A:
	add r0, r6, #0
	mov r1, #0x1d
	bl sub_0204C488
	ldr r0, _021A05C8 ; =0x0000054C
_021A0584:
	bl GFL_SndSEPlay
_021A0588:
	add r0, r6, #0
	mov r1, #0
	bl sub_0204C4D4
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_021A05A0:
	add r0, r6, #0
	bl sub_0204C560
	cmp r0, #0
	bne _021A05B4
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xa
	bl sub_0219FCF8
_021A05B4:
	pop {r4, r5, r6, pc}
	nop
_021A05B8: .word 0x0000092C
_021A05BC: .word 0x00000934
_021A05C0: .word 0x00000556
_021A05C4: .word 0x00000551
_021A05C8: .word 0x0000054C
	thumb_func_end ovy303_21a049c

	thumb_func_start ovy303_21a05cc
ovy303_21a05cc: ; 0x021A05CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021A11B4
	ldr r0, _021A0708 ; =0x0000092C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A05F0
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_021A2B04
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	b _021A0606
_021A05F0:
	cmp r0, #1
	bne _021A060C
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_021A2B04
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
_021A0606:
	bl sub_021A2B04
	add r7, r0, #0
_021A060C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A0618
	cmp r0, #1
	beq _021A0696
	pop {r3, r4, r5, r6, r7, pc}
_021A0618:
	add r0, r7, #0
	bl sub_0204C56C
	add r0, r7, #0
	bl sub_0204C550
	ldr r4, _021A0708 ; =0x0000092C
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A064A
	add r0, r6, #0
	mov r1, #0x19
	bl sub_0204C488
	add r0, r4, #0
	sub r0, #0xa0
	ldr r0, [r5, r0]
	sub r1, r0, #1
	add r0, r4, #0
	sub r0, #0xa0
	str r1, [r5, r0]
	cmp r1, #0
	bge _021A066E
	mov r0, #3
	b _021A066A
_021A064A:
	cmp r0, #1
	bne _021A066E
	add r0, r6, #0
	mov r1, #0x17
	bl sub_0204C488
	add r0, r4, #0
	sub r0, #0xa0
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xa0
	str r1, [r5, r0]
	cmp r1, #4
	blt _021A066E
	mov r0, #0
_021A066A:
	sub r4, #0xa0
	str r0, [r5, r4]
_021A066E:
	add r0, r6, #0
	mov r1, #0
	bl sub_0204C504
	add r0, r6, #0
	mov r1, #1
	bl sub_0204C520
	add r0, r5, #0
	bl ovy303_21a14a0
	add r0, r5, #0
	bl ovy303_21a136c
	ldr r0, _021A070C ; =0x0000054A
	bl GFL_SndSEPlay
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_021A0696:
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A1C98
	cmp r0, #0
	beq _021A0706
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A3140
	cmp r0, #0
	bne _021A0706
	add r0, r6, #0
	bl sub_0204C560
	cmp r0, #0
	bne _021A0706
	ldr r0, _021A0708 ; =0x0000092C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021A06D2
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_021A2B04
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x18
	b _021A06E6
_021A06D2:
	cmp r0, #1
	bne _021A06F6
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_021A2B04
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x16
_021A06E6:
	bl sub_0204C488
	add r0, r6, #0
	bl sub_0204C56C
	add r0, r4, #0
	bl sub_0204C56C
_021A06F6:
	add r0, r7, #0
	bl sub_0204C540
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
_021A0706:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0708: .word 0x0000092C
_021A070C: .word 0x0000054A
	thumb_func_end ovy303_21a05cc

	thumb_func_start ovy303_21a0710
ovy303_21a0710: ; 0x021A0710
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A084C ; =0x0000092C
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021A072C
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xc
	bl sub_021A2B04
	add r7, r0, #0
	mov r6, #0xb
	b _021A073E
_021A072C:
	cmp r0, #3
	bne _021A073E
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xd
	bl sub_021A2B04
	add r7, r0, #0
	mov r6, #0xa
_021A073E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A074E
	cmp r0, #1
	beq _021A07D6
	cmp r0, #2
	beq _021A0800
	pop {r3, r4, r5, r6, r7, pc}
_021A074E:
	ldr r4, _021A0850 ; =0x00000934
	ldr r0, [r5, r4]
	bl sub_02010D88
	add r1, r4, #0
	sub r1, #0xa8
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xa4
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021A078E
	add r0, r4, #0
	sub r0, #0xac
	ldr r0, [r5, r0]
	sub r1, r0, #1
	add r0, r4, #0
	sub r0, #0xac
	str r1, [r5, r0]
	cmp r1, #0
	bge _021A07B0
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	sub r0, r0, #1
	b _021A07AC
_021A078E:
	cmp r0, #3
	bne _021A07B0
	add r0, r4, #0
	sub r0, #0xac
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r0, r0, #1
	sub r1, #0xac
	str r0, [r5, r1]
	add r1, r4, #0
	sub r1, #0xb4
	ldr r1, [r5, r1]
	cmp r0, r1
	blt _021A07B0
	mov r0, #0
_021A07AC:
	sub r4, #0xac
	str r0, [r5, r4]
_021A07B0:
	add r0, r7, #0
	mov r1, #0
	bl sub_0204C4D4
	lsl r1, r6, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r7, #0
	mov r1, #1
	bl sub_0204C520
	add r0, r7, #0
	bl sub_0204C540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_021A07D6:
	add r0, r5, #0
	bl ovy303_21a1550
	add r0, r5, #0
	bl ovy303_21a14a0
	add r0, r5, #0
	bl ovy303_21a136c
	add r0, r5, #0
	bl ovy303_21a17e4
	add r0, r5, #0
	bl ovy303_21a0858
	ldr r0, _021A0854 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_021A0800:
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A1C98
	cmp r0, #0
	beq _021A084A
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A3140
	cmp r0, #0
	bne _021A084A
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A2A20
	cmp r0, #0
	beq _021A084A
	add r0, r5, #0
	bl ovy303_21a18c4
	add r1, r0, #0
	beq _021A0840
	add r0, r5, #0
	bl sub_021A1940
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0xa
	bl sub_0219FCF8
	pop {r3, r4, r5, r6, r7, pc}
_021A0840:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
_021A084A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A084C: .word 0x0000092C
_021A0850: .word 0x00000934
_021A0854: .word 0x00000548
	thumb_func_end ovy303_21a0710

	thumb_func_start ovy303_21a0858
ovy303_21a0858: ; 0x021A0858
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021A11B4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x10
	mov r1, #2
	mov r7, #2
	bl sub_021A2B04
	add r4, r0, #0
	ldrh r0, [r6]
	bl ovy303_21a194c
	add r1, r0, #0
	ldr r2, _021A08CC ; =0x00000934
	lsl r1, r1, #0x18
	ldr r0, [r5, r2]
	sub r2, #0xa4
	ldr r2, [r5, r2]
	lsr r1, r1, #0x18
	bl sub_02010CC4
	cmp r0, #0
	beq _021A0896
	cmp r0, #1
	beq _021A08A0
	cmp r0, #2
	beq _021A08B6
	pop {r3, r4, r5, r6, r7, pc}
_021A0896:
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A08A0:
	add r5, #0x10
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x27
	bl ovy303_21a2fc4
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C468
	pop {r3, r4, r5, r6, r7, pc}
_021A08B6:
	add r5, #0x10
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x26
	bl ovy303_21a2fc4
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C468
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A08CC: .word 0x00000934
	thumb_func_end ovy303_21a0858

	thumb_func_start ovy303_21a08d0
ovy303_21a08d0: ; 0x021A08D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r3, _021A0A50 ; =0x021A32E4
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A08F8
	cmp r0, #1
	beq _021A09BA
	cmp r0, #2
	bne _021A08F4
	b _021A09FE
_021A08F4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A08F8:
	ldr r1, _021A0A54 ; =0x0000092C
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021A0930
	add r0, r1, #0
	sub r0, #0x9c
	ldr r0, [r5, r0]
	sub r2, r0, #1
	add r0, r1, #0
	sub r0, #0x9c
	str r2, [r5, r0]
	cmp r2, #0
	bge _021A0918
	mov r0, #2
	sub r1, #0x9c
	str r0, [r5, r1]
_021A0918:
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0xc
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A0966
	add r0, r5, #0
	mov r1, #0
	b _021A0962
_021A0930:
	cmp r0, #1
	bne _021A0966
	add r0, r1, #0
	sub r0, #0x9c
	ldr r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #0
	sub r0, #0x9c
	str r2, [r5, r0]
	cmp r2, #3
	blt _021A094C
	mov r0, #0
	sub r1, #0x9c
	str r0, [r5, r1]
_021A094C:
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0xc
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A0966
	add r0, r5, #0
	mov r1, #1
_021A0962:
	bl ovy303_21a0a5c
_021A0966:
	add r0, r5, #0
	bl ovy303_21a14a0
	add r0, r5, #0
	bl ovy303_21a136c
	add r0, r5, #0
	bl ovy303_21a0858
	ldr r0, _021A0A58 ; =0x0000054A
	bl GFL_SndSEPlay
	mov r6, #0x89
	lsl r6, r6, #4
	ldr r1, [r5, r6]
	add r0, r5, #0
	add r0, #0x10
	add r1, #9
	bl sub_021A2B04
	mov r1, #0
	add r4, r0, #0
	bl sub_0204C4D4
	ldr r1, [r5, r6]
	add r0, r4, #0
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #8]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, r7, pc}
_021A09BA:
	mov r7, #0x89
	lsl r7, r7, #4
	ldr r1, [r5, r7]
	add r0, r5, #0
	add r0, #0x10
	add r1, #9
	bl sub_021A2B04
	add r4, r0, #0
	bl sub_0204C560
	cmp r0, #0
	bne _021A0A4C
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C520
	ldr r1, [r5, r7]
	add r0, r4, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r5, #8]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, r7, pc}
_021A09FE:
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A1C98
	cmp r0, #0
	beq _021A0A4C
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A3140
	cmp r0, #0
	bne _021A0A4C
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A2A20
	cmp r0, #0
	beq _021A0A4C
	add r0, r5, #0
	bl ovy303_21a18c4
	add r1, r0, #0
	beq _021A0A38
	add r0, r5, #0
	bl sub_021A1940
	add r0, r5, #0
	mov r1, #0xa
	b _021A0A3C
_021A0A38:
	add r0, r5, #0
	mov r1, #3
_021A0A3C:
	mov r2, #0xa
	bl sub_0219FCF8
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0xb0
	str r1, [r5, r0]
_021A0A4C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A0A50: .word 0x021A32E4
_021A0A54: .word 0x0000092C
_021A0A58: .word 0x0000054A
	thumb_func_end ovy303_21a08d0

	thumb_func_start ovy303_21a0a5c
ovy303_21a0a5c: ; 0x021A0A5C
	push {r4, r5}
	add r2, r0, #0
	cmp r1, #1
	bne _021A0A92
	mov r4, #0x89
	lsl r4, r4, #4
	mov r1, #0
	add r3, r4, #0
	add r0, r1, #0
	add r3, #0xc
_021A0A70:
	ldr r5, [r2, r4]
	add r5, r5, #1
	str r5, [r2, r4]
	cmp r5, #3
	blt _021A0A7C
	str r0, [r2, r4]
_021A0A7C:
	ldr r5, [r2, r4]
	lsl r5, r5, #2
	add r5, r2, r5
	ldr r5, [r5, r3]
	cmp r5, #1
	beq _021A0ABA
	add r1, r1, #1
	cmp r1, #3
	blt _021A0A70
	pop {r4, r5}
	bx lr
_021A0A92:
	mov r4, #0x89
	lsl r4, r4, #4
	add r3, r4, #0
	mov r1, #0
	mov r0, #2
	add r3, #0xc
_021A0A9E:
	ldr r5, [r2, r4]
	sub r5, r5, #1
	str r5, [r2, r4]
	bpl _021A0AA8
	str r0, [r2, r4]
_021A0AA8:
	ldr r5, [r2, r4]
	lsl r5, r5, #2
	add r5, r2, r5
	ldr r5, [r5, r3]
	cmp r5, #1
	beq _021A0ABA
	add r1, r1, #1
	cmp r1, #3
	blt _021A0A9E
_021A0ABA:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy303_21a0a5c

	thumb_func_start ovy303_21a0ac0
ovy303_21a0ac0: ; 0x021A0AC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021A0AD2
	cmp r1, #1
	bne _021A0AD0
	b _021A0C78
_021A0AD0:
	pop {r3, r4, r5, r6, r7, pc}
_021A0AD2:
	ldr r2, _021A0C84 ; =0x00000878
	mov r4, #0
	ldr r1, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	mov r6, #0
	str r1, [sp]
	cmp r1, r2
	bge _021A0AEA
	add r2, r4, #0
	bl ovy303_21a14fc
_021A0AEA:
	ldr r0, _021A0C84 ; =0x00000878
	ldr r7, [r5, r0]
	cmp r7, #0
	beq _021A0B06
	add r0, r7, #0
	mov r1, #5
	blx sub_0208D65C
	add r4, r1, #0
	add r0, r7, #0
	mov r1, #5
	blx sub_0208D65C
	add r6, r0, #0
_021A0B06:
	ldr r7, _021A0C88 ; =0x00000884
	mov r1, #5
	ldr r0, [r5, r7]
	sub r0, r0, #1
	blx sub_0208D65C
	add r1, r7, #0
	add r1, #0xa8
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021A0B24
	sub r4, r4, #1
	bpl _021A0B70
	mov r4, #4
	b _021A0B70
_021A0B24:
	cmp r1, #1
	bne _021A0B32
	add r4, r4, #1
	cmp r4, #4
	ble _021A0B70
	mov r4, #0
	b _021A0B70
_021A0B32:
	cmp r1, #2
	bne _021A0B3C
	sub r6, r6, #1
	bpl _021A0B70
	b _021A0B6E
_021A0B3C:
	cmp r1, #3
	bne _021A0B4A
	add r6, r6, #1
	cmp r6, r0
	ble _021A0B70
	mov r6, #0
	b _021A0B70
_021A0B4A:
	cmp r1, #0xa
	beq _021A0B70
	cmp r1, #7
	bne _021A0B54
	b _021A0B58
_021A0B54:
	cmp r1, #8
	bne _021A0B70
_021A0B58:
	sub r7, #8
	ldr r6, [r5, r7]
	mov r1, #5
	add r0, r6, #0
	blx sub_0208D65C
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #5
	blx sub_0208D65C
_021A0B6E:
	add r6, r0, #0
_021A0B70:
	lsl r0, r6, #2
	add r3, r6, r0
	ldr r0, _021A0C84 ; =0x00000878
	add r2, r4, r3
	add r1, r0, #0
	str r2, [r5, r0]
	add r1, #0xc
	ldr r1, [r5, r1]
	cmp r2, r1
	blt _021A0BB2
	add r2, r0, #0
	add r2, #0xb4
	ldr r2, [r5, r2]
	cmp r2, #1
	bne _021A0B92
	str r3, [r5, r0]
	b _021A0BB2
_021A0B92:
	cmp r2, #0
	bne _021A0B98
	b _021A0BAE
_021A0B98:
	cmp r2, #2
	bne _021A0BA6
	sub r2, r6, #1
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r4, r1
	b _021A0BB0
_021A0BA6:
	cmp r2, #3
	bne _021A0BAE
	str r4, [r5, r0]
	b _021A0BB2
_021A0BAE:
	sub r1, r1, #1
_021A0BB0:
	str r1, [r5, r0]
_021A0BB2:
	ldr r4, _021A0C8C ; =0x0000092C
	ldr r0, [r5, r4]
	cmp r0, #7
	bne _021A0BFA
	add r1, r4, #0
	sub r1, #0xb4
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A0BF2
	add r1, r4, #0
	sub r1, #0xb4
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #0x18
	add r0, #0x10
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy303_21a2c80
	sub r4, #0xb4
	ldr r1, [r5, r4]
	ldr r0, [sp]
	cmp r0, r1
	beq _021A0BF2
	ldr r0, _021A0C90 ; =0x00000548
	bl GFL_SndSEPlay
_021A0BF2:
	ldr r0, _021A0C94 ; =0x00000874
	mov r1, #0
	str r1, [r5, r0]
	b _021A0C50
_021A0BFA:
	cmp r0, #8
	bne _021A0C2C
	add r1, r4, #0
	sub r1, #0xb4
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A0C2A
	sub r4, #0xb4
	ldr r1, [r5, r4]
	add r0, r5, #0
	lsl r1, r1, #0x18
	add r0, #0x10
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy303_21a2c80
	ldr r0, _021A0C98 ; =0x0000054C
	bl GFL_SndSEPlay
_021A0C2A:
	b _021A0BF2
_021A0C2C:
	add r1, r4, #0
	sub r1, #0xb4
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #1
	bl ovy303_21a14fc
	ldr r0, [r5, r4]
	cmp r0, #0xa
	beq _021A0C50
	sub r4, #0xb4
	ldr r1, [r5, r4]
	ldr r0, [sp]
	cmp r0, r1
	beq _021A0C50
	ldr r0, _021A0C90 ; =0x00000548
	bl GFL_SndSEPlay
_021A0C50:
	ldr r1, _021A0C84 ; =0x00000878
	add r0, r5, #0
	ldr r1, [r5, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A0C68
	add r0, r5, #0
	mov r1, #1
	b _021A0C6C
_021A0C68:
	add r0, r5, #0
	mov r1, #0
_021A0C6C:
	mov r2, #1
	bl ovy303_21a1a1c
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_021A0C78:
	add r0, r5, #0
	mov r1, #8
	mov r2, #0xa
	bl sub_0219FCF8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0C84: .word 0x00000878
_021A0C88: .word 0x00000884
_021A0C8C: .word 0x0000092C
_021A0C90: .word 0x00000548
_021A0C94: .word 0x00000874
_021A0C98: .word 0x0000054C
	thumb_func_end ovy303_21a0ac0

	thumb_func_start ovy303_21a0c9c
ovy303_21a0c9c: ; 0x021A0C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #5
	bhi _021A0DA4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A0CB4: ; jump table
	.short _021A0CC0 - _021A0CB4 - 2 ; case 0
	.short _021A0D6C - _021A0CB4 - 2 ; case 1
	.short _021A0D92 - _021A0CB4 - 2 ; case 2
	.short _021A0E0E - _021A0CB4 - 2 ; case 3
	.short _021A0E52 - _021A0CB4 - 2 ; case 4
	.short _021A0E8E - _021A0CB4 - 2 ; case 5
_021A0CC0:
	ldr r5, _021A0F18 ; =0x00000898
	ldr r1, [r4, r5]
	cmp r1, #3
	bne _021A0D64
	bl sub_021A11B4
	add r7, r0, #0
	add r0, r4, #0
	bl sub_021A11B4
	ldrh r0, [r0]
	bl sub_02018C80
	add r2, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02024700
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xa5
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	sub r0, #0x2c
	ldr r0, [r4, r0]
	mov r1, #0x3b
	bl sub_0204898C
	str r0, [sp, #4]
	sub r0, r5, #4
	ldr r0, [r4, r0]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r4, r0]
	bl sub_02010DB8
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0xa
	mov r2, #5
	bl ovy303_21a2e54
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x10
	bl ovy303_21a2ea8
	ldr r0, [sp, #4]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	bl sub_02005ED4
	mov r0, #0x15
	ldr r1, _021A0F1C ; =0x0000FFFF
	lsl r0, r0, #6
	bl sub_02005DF4
	ldrh r0, [r7]
	bl ovy303_21a194c
	add r1, r0, #0
	add r5, #0x9c
	lsl r1, r1, #0x18
	ldr r0, [r4, r5]
	lsr r1, r1, #0x18
	bl sub_02010D08
	ldr r0, [r4, #8]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0D64:
	mov r0, #3
	add sp, #8
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0D6C:
	bl sub_02005FA8
	cmp r0, #0
	bne _021A0DA4
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A2F78
	cmp r0, #2
	bne _021A0DA4
	add r0, r4, #0
	add r0, #0x10
	bl sub_021A2F88
	ldr r0, [r4, #8]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0D92:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _021A0DA6
	bl sub_0203DA48
	cmp r0, #1
	beq _021A0DA6
_021A0DA4:
	b _021A0F12
_021A0DA6:
	add r0, r4, #0
	bl sub_021A11B4
	add r5, r0, #0
	bl sub_02005F0C
	add r0, r4, #0
	add r0, #0x10
	bl ovy303_21a2f38
	add r0, r4, #0
	bl ovy303_21a18c4
	str r0, [sp]
	ldrh r0, [r5]
	bl ovy303_21a194c
	mov r5, #0
	cmp r5, #3
	bge _021A0DE6
	lsl r0, r0, #0x18
	ldr r7, _021A0F20 ; =0x00000934
	lsr r6, r0, #0x18
_021A0DD4:
	ldr r0, [r4, r7]
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #2
	bl sub_02010D14
	add r5, r5, #1
	cmp r5, #3
	blt _021A0DD4
_021A0DE6:
	ldr r0, [sp]
	cmp r0, #0
	beq _021A0DF6
	ldr r0, [r4, #8]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0DF6:
	add r0, r4, #0
	bl ovy303_21a1424
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
	mov r0, #6
	add sp, #8
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0E0E:
	add r0, #0x10
	mov r1, #2
	mov r6, #2
	bl sub_021A2B04
	add r5, r0, #0
	ldr r0, _021A0F18 ; =0x00000898
	ldr r0, [r4, r0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021A0E2E
	add r0, r4, #0
	add r0, #0x10
	add r1, r6, #0
	mov r2, #0x1a
	b _021A0E36
_021A0E2E:
	add r0, r4, #0
	add r0, #0x10
	add r1, r6, #0
	mov r2, #0x1b
_021A0E36:
	bl ovy303_21a2fc4
	add r0, r5, #0
	mov r1, #0
	mov r5, #0
	bl sub_0204C468
	ldr r0, _021A0F24 ; =0x00000944
	add sp, #8
	str r5, [r4, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0E52:
	add r0, #0x10
	mov r1, #2
	bl sub_021A2B04
	add r5, r0, #0
	ldr r0, _021A0F24 ; =0x00000944
	ldr r1, [r4, r0]
	cmp r1, #0x13
	bne _021A0E6A
	sub r0, #0x94
	bl GFL_SndSEPlay
_021A0E6A:
	ldr r0, _021A0F24 ; =0x00000944
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_0204C560
	cmp r0, #0
	bne _021A0F12
	add r0, r5, #0
	mov r1, #1
	bl sub_0204C468
	ldr r0, [r4, #8]
	add sp, #8
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021A0E8E:
	bl sub_021A11B4
	ldr r5, _021A0F18 ; =0x00000898
	ldr r1, [r4, r5]
	cmp r1, #3
	beq _021A0EB8
	ldrh r0, [r0]
	bl ovy303_21a194c
	add r1, r0, #0
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0x9c
	sub r2, #8
	lsl r1, r1, #0x18
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	ldr r3, [r4, r5]
	lsr r1, r1, #0x18
	bl sub_02010D14
_021A0EB8:
	add r0, r4, #0
	bl ovy303_21a1424
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _021A0F18 ; =0x00000898
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _021A0EE6
	add r0, #0x9c
	ldr r0, [r4, r0]
	bl sub_02010DA8
	cmp r0, #1
	beq _021A0EE6
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xa
	bl sub_0219FCF8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0EE6:
	ldr r0, _021A0F18 ; =0x00000898
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021A0F08
	add r0, #0x9c
	ldr r0, [r4, r0]
	bl sub_02010DA0
	cmp r0, #1
	beq _021A0F08
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xa
	bl sub_0219FCF8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0F08:
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
_021A0F12:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0F18: .word 0x00000898
_021A0F1C: .word 0x0000FFFF
_021A0F20: .word 0x00000934
_021A0F24: .word 0x00000944
	thumb_func_end ovy303_21a0c9c

	thumb_func_start ovy303_21a0f28
ovy303_21a0f28: ; 0x021A0F28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021A0F3C
	cmp r1, #1
	beq _021A0F96
	cmp r1, #2
	beq _021A0FB0
	pop {r4, r5, r6, pc}
_021A0F3C:
	ldr r4, _021A0FD0 ; =0x00000898
	ldr r0, [r5, r4]
	cmp r0, #2
	bne _021A0F5C
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0x3a
	bl sub_0204898C
	add r4, #0x9c
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_02010DB8
	b _021A0F72
_021A0F5C:
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0x39
	bl sub_0204898C
	add r4, #0x9c
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_02010DB0
_021A0F72:
	add r0, r5, #0
	add r0, #0x10
	mov r1, #8
	mov r2, #9
	bl ovy303_21a2e54
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x10
	bl ovy303_21a2ea8
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_021A0F96:
	add r0, #0x10
	bl sub_021A2F78
	cmp r0, #2
	bne _021A0FCC
	add r0, r5, #0
	add r0, #0x10
	bl sub_021A2F88
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_021A0FB0:
	bl sub_021A11B4
	add r0, r5, #0
	add r0, #0x10
	bl ovy303_21a2f38
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	bl sub_0219FCF8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_021A0FCC:
	pop {r4, r5, r6, pc}
	nop
_021A0FD0: .word 0x00000898
	thumb_func_end ovy303_21a0f28

	thumb_func_start ovy303_21a0fd4
ovy303_21a0fd4: ; 0x021A0FD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_021A11B4
	add r6, r0, #0
	ldrh r0, [r6]
	bl sub_02018C80
	add r7, r0, #0
	ldr r0, _021A1078 ; =0x00000948
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021A0FFE
	sub r0, #0xb8
	ldr r0, [r5, r0]
	ldr r1, [r6, #8]
	bl ovy303_21a1084
	add r4, r0, #0
	b _021A1000
_021A0FFE:
	mov r4, #0x28
_021A1000:
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	lsl r1, r1, #1
	add r1, r6, r1
	ldrh r1, [r1, #2]
	cmp r1, #1
	bne _021A1018
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, #1
	add r4, r4, r0
_021A1018:
	ldr r0, _021A107C ; =0x00000894
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl sub_02024700
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xa5
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, _021A107C ; =0x00000894
	add r1, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, _021A107C ; =0x00000894
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf0
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	ldr r0, _021A1080 ; =0x0000044F
	add r5, #0x10
	str r0, [sp, #0xc]
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl ovy303_21a2a2c
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1078: .word 0x00000948
_021A107C: .word 0x00000894
_021A1080: .word 0x0000044F
	thumb_func_end ovy303_21a0fd4

	thumb_func_start ovy303_21a1084
ovy303_21a1084: ; 0x021A1084
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, _021A10B4 ; =0x021A32F0
	add r5, sp, #4
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r5]
	mov r0, #0x19
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0x14
	bl ovy303_21a10b8
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A10B4: .word 0x021A32F0
	thumb_func_end ovy303_21a1084

	thumb_func_start ovy303_21a10b8
ovy303_21a10b8: ; 0x021A10B8
	push {r3, r4}
	mov r4, #0
	cmp r0, #0
	bne _021A10C6
	lsl r0, r1, #2
	ldr r4, [r2, r0]
	b _021A10D4
_021A10C6:
	cmp r0, #1
	bne _021A10CE
	add r4, r3, #0
	b _021A10D4
_021A10CE:
	cmp r0, #2
	bne _021A10D4
	ldr r4, [sp, #8]
_021A10D4:
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy303_21a10b8

	thumb_func_start ovy303_21a10dc
ovy303_21a10dc: ; 0x021A10DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021A1118 ; =0x0000086C
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x32
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #0xac
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	add r5, #0x10
	mov r0, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0x7c
	str r4, [sp, #0xc]
	bl ovy303_21a2a2c
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021A1118: .word 0x0000086C
	thumb_func_end ovy303_21a10dc

	thumb_func_start ovy303_21a111c
ovy303_21a111c: ; 0x021A111C
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	add r1, #0x10
	mov r2, #0x7c
	mov r3, #0xac
	bl ovy303_21a2a9c
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy303_21a111c

	thumb_func_start ovy303_21a113c
ovy303_21a113c: ; 0x021A113C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_021A11B4
	ldrh r0, [r0]
	bl sub_02018C80
	ldr r7, _021A11AC ; =0x00000894
	add r2, r0, #0
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02024700
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xa5
	bl GFL_StrBufCreate
	add r4, r0, #0
	add r0, r7, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	mov r1, #0x33
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, r7]
	add r1, r4, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #4
	str r0, [sp]
	add r0, #0xfc
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	ldr r0, _021A11B0 ; =0x000039E0
	add r5, #0x10
	str r0, [sp, #0xc]
	mov r0, #1
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #8
	bl ovy303_21a2a2c
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A11AC: .word 0x00000894
_021A11B0: .word 0x000039E0
	thumb_func_end ovy303_21a113c

	thumb_func_start sub_021A11B4
sub_021A11B4: ; 0x021A11B4
	ldr r1, _021A11C8 ; =0x00000888
	ldr r2, [r0, #0xc]
	ldr r1, [r0, r1]
	mov r0, #0xd9
	lsl r0, r0, #2
	add r2, #8
	mul r0, r1
	add r0, r2, r0
	bx lr
	nop
_021A11C8: .word 0x00000888
	thumb_func_end sub_021A11B4

	thumb_func_start ovy303_21a11cc
ovy303_21a11cc: ; 0x021A11CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r1, #0
	add r5, r0, #0
	mov r6, #0
	str r1, [sp, #0xc]
	bl sub_021A11B4
	str r0, [sp, #8]
	ldr r0, _021A1360 ; =0x000008B4
	mov r1, #0
	add r0, r5, r0
	mov r2, #0x78
	blx MI_CpuFill8
	ldr r0, [sp, #8]
	add r7, r5, #0
	add r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021A1360 ; =0x000008B4
	add r7, #0x10
	str r0, [sp, #0x30]
	sub r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x2c]
	sub r0, #0x24
	str r0, [sp, #0x2c]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x28]
	add r0, #0x7c
	str r0, [sp, #0x28]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x24]
	sub r0, #0x28
	str r0, [sp, #0x24]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x20]
	sub r0, #0x24
	str r0, [sp, #0x20]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x1c]
	add r0, #0x7c
	str r0, [sp, #0x1c]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x18]
	sub r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, _021A1360 ; =0x000008B4
	str r0, [sp, #0x14]
	sub r0, #0x24
	str r0, [sp, #0x14]
_021A1238:
	ldr r1, [sp, #0x10]
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r4, r0, r2
	ldrb r2, [r4, #0x1a]
	cmp r2, #0
	beq _021A1304
	ldr r0, [sp, #0x18]
	ldr r1, [r5, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	ldr r0, [sp, #0x14]
	add r1, r4, r1
	ldr r0, [r5, r0]
	add r0, r0, r1
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021A1304
	cmp r2, #2
	blo _021A12FA
	add r0, sp, #0x38
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldrh r1, [r4]
	ldr r0, [r5, r0]
	add r2, sp, #0x3c
	add r3, sp, #0x34
	bl sub_0200D3C8
	ldr r0, [sp, #0x24]
	ldr r1, [r5, r0]
	lsl r0, r1, #1
	add r2, r1, r0
	ldr r0, [sp, #0x20]
	ldr r1, [r5, r0]
	add r0, r4, r2
	add r0, r1, r0
	ldrb r0, [r0, #0xe]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldrh r1, [r4]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	bl sub_0200D8D4
	cmp r0, #1
	bne _021A12B4
	ldr r0, [sp, #0x30]
	ldr r1, [r5, r0]
	lsl r0, r1, #1
	add r2, r1, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r0]
	add r0, r4, r2
	add r0, r1, r0
	ldrb r0, [r0, #0xe]
	str r0, [sp, #0x38]
_021A12B4:
	str r6, [sp]
	ldrh r1, [r4]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	add r0, r7, #0
	bl ovy303_21a2bbc
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy303_21a2cb4
	lsl r1, r6, #2
	add r2, r5, r1
	ldrh r0, [r4]
	ldr r1, _021A1360 ; =0x000008B4
	str r0, [r2, r1]
	ldrb r0, [r4, #0x1a]
	cmp r0, #2
	bne _021A12E4
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	b _021A12EE
_021A12E4:
	cmp r0, #3
	bne _021A12F2
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0
_021A12EE:
	bl ovy303_21a2e08
_021A12F2:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021A1304
_021A12FA:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
_021A1304:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x1e
	blt _021A1238
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021A131C
	cmp r6, #0
	bne _021A131C
	mov r1, #1
	b _021A131E
_021A131C:
	mov r1, #0
_021A131E:
	ldr r0, _021A1364 ; =0x00000948
	str r1, [r5, r0]
	add r4, r6, #0
	cmp r6, #0x1e
	bge _021A1356
	add r7, r5, #0
	add r7, #0x10
_021A132C:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_021A2CA0
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #2
	bl ovy303_21a2cb4
	lsl r1, r4, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	mov r2, #2
	bl ovy303_21a2e08
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021A132C
_021A1356:
	ldr r0, _021A1368 ; =0x00000884
	str r6, [r5, r0]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1360: .word 0x000008B4
_021A1364: .word 0x00000948
_021A1368: .word 0x00000884
	thumb_func_end ovy303_21a11cc

	thumb_func_start ovy303_21a136c
ovy303_21a136c: ; 0x021A136C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021A1384
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #0
	b _021A139E
_021A1384:
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021A1396
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #1
	b _021A139E
_021A1396:
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #2
_021A139E:
	bl ovy303_21a2b14
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021A13B6
	add r0, r4, #0
	add r0, #0x10
	mov r1, #1
	mov r2, #0
	b _021A13D0
_021A13B6:
	add r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021A13C8
	add r0, r4, #0
	add r0, #0x10
	mov r1, #1
	mov r2, #1
	b _021A13D0
_021A13C8:
	add r0, r4, #0
	add r0, #0x10
	mov r1, #1
	mov r2, #2
_021A13D0:
	bl ovy303_21a2b14
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _021A13E8
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	mov r2, #0
	b _021A1402
_021A13E8:
	add r0, #0x14
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021A13FA
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	mov r2, #1
	b _021A1402
_021A13FA:
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	mov r2, #2
_021A1402:
	bl ovy303_21a2b14
	mov r1, #0x89
	lsl r1, r1, #4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x10
	bl sub_021A30C8
	add r0, r4, #0
	bl ovy303_21a1424
	add r0, r4, #0
	bl ovy303_21a0fd4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a136c

	thumb_func_start ovy303_21a1424
ovy303_21a1424: ; 0x021A1424
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x10
	mov r1, #6
	bl sub_021A2B04
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ovy303_21a1464
	add r0, r4, #0
	add r0, #0x10
	mov r1, #7
	bl sub_021A2B04
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ovy303_21a1464
	add r0, r4, #0
	add r0, #0x10
	mov r1, #8
	bl sub_021A2B04
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl ovy303_21a1464
	pop {r4, pc}
	thumb_func_end ovy303_21a1424

	thumb_func_start ovy303_21a1464
ovy303_21a1464: ; 0x021A1464
	push {r4, lr}
	add r4, r2, #0
	lsl r2, r1, #2
	add r3, r0, r2
	ldr r2, _021A149C ; =0x0000089C
	ldr r2, [r3, r2]
	cmp r2, #1
	bne _021A1490
	bl ovy303_21a1904
	cmp r0, #0
	beq _021A1486
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	pop {r4, pc}
_021A1486:
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
_021A1490:
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	nop
_021A149C: .word 0x0000089C
	thumb_func_end ovy303_21a1464

	thumb_func_start ovy303_21a14a0
ovy303_21a14a0: ; 0x021A14A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A11B4
	add r4, r0, #0
	mov r0, #0x89
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, #0xc
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A14C4
	add r0, r5, #0
	mov r1, #1
	bl ovy303_21a0a5c
_021A14C4:
	add r0, r5, #0
	bl ovy303_21a11cc
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_021A2B04
	mov r6, #0x89
	lsl r6, r6, #4
	ldr r1, [r5, r6]
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #2]
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_021A2B04
	ldr r1, [r5, r6]
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, #2]
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	thumb_func_end ovy303_21a14a0

	thumb_func_start ovy303_21a14fc
ovy303_21a14fc: ; 0x021A14FC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	cmp r6, #1
	ldr r1, _021A1548 ; =0x00000878
	bne _021A1516
	ldr r1, [r5, r1]
	add r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	b _021A1520
_021A1516:
	ldr r1, [r5, r1]
	add r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #1
_021A1520:
	bl ovy303_21a2cb4
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy303_21a18a4
	cmp r0, #0
	blt _021A1540
	add r0, r5, #0
	lsl r1, r4, #0x18
	add r0, #0x10
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ovy303_21a2c80
_021A1540:
	ldr r0, _021A154C ; =0x00000874
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_021A1548: .word 0x00000878
_021A154C: .word 0x00000874
	thumb_func_end ovy303_21a14fc

	thumb_func_start ovy303_21a1550
ovy303_21a1550: ; 0x021A1550
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	bl sub_021A11B4
	str r0, [sp, #8]
	add r0, #0xc
	str r0, [sp, #8]
	ldr r1, _021A1628 ; =0x0000089C
	ldr r0, [sp]
	mov r2, #0xc
	add r0, r0, r1
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #0
	blx MI_CpuFill8
	mov r7, #1
_021A1574:
	mov r0, #0
	mov ip, r0
	ldr r2, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r6, #1
	add r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r2, r0, #2
	ldr r0, [sp]
	add r4, r0, r2
_021A158C:
	mov r0, ip
	add r5, r0, #0
	mov r2, #0x1c
	ldr r0, [sp, #8]
	mul r5, r2
	add r3, r0, r5
	ldrb r0, [r3, #0x1a]
	cmp r0, #1
	blo _021A15CA
	ldr r2, [sp, #4]
	mov r0, #0
	add r2, r2, r5
_021A15A4:
	lsl r5, r0, #1
	add r5, r0, r5
	add r5, r2, r5
	ldrb r5, [r5, #2]
	cmp r5, #1
	bne _021A15C4
	ldr r5, _021A1628 ; =0x0000089C
	str r7, [r4, r5]
	ldrb r5, [r3, #0x1a]
	cmp r5, #1
	bne _021A15BE
	mov r6, #0
	b _021A15C2
_021A15BE:
	cmp r5, #2
	bne _021A15C4
_021A15C2:
	mov r1, #0
_021A15C4:
	add r0, r0, #1
	cmp r0, #4
	blt _021A15A4
_021A15CA:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x1e
	blt _021A158C
	cmp r1, #1
	ldr r1, _021A162C ; =0x000008A8
	bne _021A15DE
	mov r0, #2
	b _021A15E8
_021A15DE:
	cmp r6, #1
	bne _021A15E6
	mov r0, #1
	b _021A15E8
_021A15E6:
	mov r0, #0
_021A15E8:
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _021A1574
	mov r1, #0x22
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	cmp r0, #1
	bgt _021A1622
	ldr r0, [sp]
	mov r1, #0xc
	add r0, #0x10
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp]
	mov r1, #0xd
	add r0, #0x10
	str r0, [sp]
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
_021A1622:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1628: .word 0x0000089C
_021A162C: .word 0x000008A8
	thumb_func_end ovy303_21a1550

	thumb_func_start ovy303_21a1630
ovy303_21a1630: ; 0x021A1630
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x10
	mov r1, #9
	bl sub_021A2B04
	mov r1, #0
	mov r4, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xa
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xb
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xc
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xd
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xe
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xf
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl ovy303_21a32a8
	add r0, r5, #0
	add r0, #0x10
	mov r1, #5
	bl sub_021A2B04
	mov r1, #1
	mov r6, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	add r1, r4, #0
	bl sub_021A2B04
	add r1, r4, #0
	bl sub_0204C124
	add r5, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A2B04
	add r1, r4, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy303_21a1630

	thumb_func_start ovy303_21a16e4
ovy303_21a16e4: ; 0x021A16E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A11B4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x10
	mov r1, #9
	bl sub_021A2B04
	ldr r4, _021A17E0 ; =0x0000089C
	ldr r1, [r5, r4]
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xa
	bl sub_021A2B04
	add r1, r4, #4
	ldr r1, [r5, r1]
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xb
	bl sub_021A2B04
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	bl sub_0204C124
	sub r4, #0x1c
	ldr r0, [r5, r4]
	cmp r0, #1
	ble _021A1750
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xc
	bl sub_021A2B04
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xd
	bl sub_021A2B04
	mov r1, #1
	bl sub_0204C124
	b _021A1770
_021A1750:
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xc
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xd
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
_021A1770:
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xe
	bl sub_021A2B04
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xf
	bl sub_021A2B04
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl sub_021A2B04
	mov r4, #0x89
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	lsl r1, r1, #1
	add r1, r6, r1
	ldrh r1, [r1, #2]
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	bl sub_021A2B04
	ldr r1, [r5, r4]
	lsl r1, r1, #1
	add r1, r6, r1
	ldrh r1, [r1, #2]
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x10
	mov r1, #5
	bl sub_021A2B04
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	bl ovy303_21a1424
	add r0, r5, #0
	bl ovy303_21a111c
	pop {r4, r5, r6, pc}
	nop
_021A17E0: .word 0x0000089C
	thumb_func_end ovy303_21a16e4

	thumb_func_start ovy303_21a17e4
ovy303_21a17e4: ; 0x021A17E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A11B4
	add r1, r0, #0
	add r0, r4, #0
	ldrh r1, [r1]
	add r0, #0x10
	bl ovy303_21a2d3c
	add r0, r4, #0
	add r0, #0x10
	bl ovy303_21a2ff0
	add r0, r4, #0
	bl ovy303_21a113c
	pop {r4, pc}
	thumb_func_end ovy303_21a17e4

	thumb_func_start sub_021A1808
sub_021A1808: ; 0x021A1808
	ldr r2, [r0, #0xc]
	ldr r0, _021A1810 ; =0x0000C14C
	str r1, [r2, r0]
	bx lr
	.align 2, 0
_021A1810: .word 0x0000C14C
	thumb_func_end sub_021A1808

	thumb_func_start ovy303_21a1814
ovy303_21a1814: ; 0x021A1814
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r6, [r0]
	add r0, r6, #0
	bl sub_0200D190
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02017934
	bl sub_02010CB8
	add r7, r0, #0
	bl sub_02010D78
	mov r1, #0x93
	lsl r1, r1, #4
	add r6, r0, #0
	str r5, [r4, r1]
	add r0, r1, #4
	str r7, [r4, r0]
	ldr r0, [r4, #0xc]
	mov r5, #0
	ldr r2, [r0, #4]
	add r0, r1, #0
	sub r0, #0xb0
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0xa8
	str r5, [r4, r0]
	cmp r2, #0
	ble _021A1878
	add r0, r1, #0
	mov r7, #0xd9
	sub r0, #0xa8
	sub r1, #0xb0
	lsl r7, r7, #2
_021A1860:
	add r2, r5, #0
	ldr r3, [r4, #0xc]
	mul r2, r7
	add r2, r3, r2
	ldrh r2, [r2, #8]
	cmp r6, r2
	bne _021A1870
	str r5, [r4, r0]
_021A1870:
	ldr r2, [r4, r1]
	add r5, r5, #1
	cmp r5, r2
	blt _021A1860
_021A1878:
	ldr r5, _021A18A0 ; =0x00000934
	ldr r0, [r4, r5]
	bl sub_02010D98
	add r1, r5, #0
	add r1, #0xc
	str r0, [r4, r1]
	ldr r0, [r4, r5]
	bl sub_02010D88
	add r1, r5, #0
	sub r1, #0xa8
	str r0, [r4, r1]
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	sub r5, #0xa4
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A18A0: .word 0x00000934
	thumb_func_end ovy303_21a1814

	thumb_func_start ovy303_21a18a4
ovy303_21a18a4: ; 0x021A18A4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl sub_021A11B4
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _021A18C0 ; =0x000008B4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A18BE
	mov r0, #0
	mvn r0, r0
_021A18BE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A18C0: .word 0x000008B4
	thumb_func_end ovy303_21a18a4

	thumb_func_start ovy303_21a18c4
ovy303_21a18c4: ; 0x021A18C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A11B4
	mov r1, #0x36
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021A18F2
	ldrh r0, [r0]
	bl ovy303_21a194c
	add r1, r0, #0
	ldr r0, _021A1900 ; =0x00000934
	lsl r1, r1, #0x18
	ldr r0, [r4, r0]
	lsr r1, r1, #0x18
	bl sub_02010CFC
	cmp r0, #0
	bne _021A18F2
	mov r0, #3
	pop {r4, pc}
_021A18F2:
	mov r1, #0x89
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy303_21a1904
	pop {r4, pc}
	.align 2, 0
_021A1900: .word 0x00000934
	thumb_func_end ovy303_21a18c4

	thumb_func_start ovy303_21a1904
ovy303_21a1904: ; 0x021A1904
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A11B4
	add r6, r0, #0
	ldrh r0, [r6]
	bl ovy303_21a194c
	add r1, r0, #0
	ldr r0, _021A193C ; =0x00000934
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl sub_02010CC4
	mov r1, #0xd5
	lsl r1, r1, #2
	add r2, r6, r1
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	cmp r0, r1
	blt _021A1936
	mov r1, #0
_021A1936:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	nop
_021A193C: .word 0x00000934
	thumb_func_end ovy303_21a1904

	thumb_func_start sub_021A1940
sub_021A1940: ; 0x021A1940
	ldr r2, _021A1948 ; =0x00000898
	str r1, [r0, r2]
	bx lr
	nop
_021A1948: .word 0x00000898
	thumb_func_end sub_021A1940

	thumb_func_start ovy303_21a194c
ovy303_21a194c: ; 0x021A194C
	push {r3, r4}
	ldr r3, _021A1974 ; =0x021A3414
	mov r4, #0
	mov r1, #6
_021A1954:
	add r2, r4, #0
	mul r2, r1
	add r2, r3, r2
	ldrh r2, [r2, #2]
	cmp r0, r2
	bne _021A1966
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_021A1966:
	add r4, r4, #1
	cmp r4, #0x39
	blt _021A1954
	mov r0, #0
	pop {r3, r4}
	bx lr
	nop
_021A1974: .word 0x021A3414
	thumb_func_end ovy303_21a194c

	thumb_func_start ovy303_21a1978
ovy303_21a1978: ; 0x021A1978
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0x20
	ldr r4, [r0]
	mov r6, #0x20
	add r0, r4, #0
	bl GameData_IsShortcutRegistered
	cmp r0, #1
	bne _021A19A6
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02017644
	add r5, #0x10
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #6
	bl ovy303_21a2fc4
	pop {r4, r5, r6, pc}
_021A19A6:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_02017644
	add r5, #0x10
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #7
	bl ovy303_21a2fc4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy303_21a1978

	thumb_func_start ovy303_21a19c0
ovy303_21a19c0: ; 0x021A19C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0x20
	ldr r0, [r0]
	bl GameData_IsShortcutRegistered
	cmp r0, #1
	bne _021A19E0
	add r4, #0x10
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #7
	bl ovy303_21a2fc4
	pop {r4, pc}
_021A19E0:
	add r4, #0x10
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #6
	bl ovy303_21a2fc4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a19c0

	thumb_func_start ovy303_21a19f0
ovy303_21a19f0: ; 0x021A19F0
	push {r3, r4}
	ldr r1, _021A1A18 ; =0x0000089C
	mov r3, #0
	mov r4, #0
_021A19F8:
	lsl r2, r4, #2
	add r2, r0, r2
	ldr r2, [r2, r1]
	cmp r2, #1
	bne _021A1A04
	add r3, r3, #1
_021A1A04:
	add r4, r4, #1
	cmp r4, #3
	blt _021A19F8
	mov r0, #1
	cmp r3, #1
	bgt _021A1A12
	mov r0, #0
_021A1A12:
	pop {r3, r4}
	bx lr
	nop
_021A1A18: .word 0x0000089C
	thumb_func_end ovy303_21a19f0

	thumb_func_start ovy303_21a1a1c
ovy303_21a1a1c: ; 0x021A1A1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x10
	mov r1, #5
	add r6, r2, #0
	bl sub_021A2B04
	add r7, r0, #0
	cmp r6, #0
	bne _021A1A42
	add r0, r5, #0
	bl ovy303_21a111c
	add r0, r7, #0
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A1A42:
	mov r1, #1
	bl sub_0204C124
	cmp r4, #1
	bne _021A1A62
	ldr r1, _021A1A7C ; =0x00003C22
	add r0, r5, #0
	bl ovy303_21a10dc
	add r5, #0x10
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x1c
	bl ovy303_21a2fc4
	pop {r3, r4, r5, r6, r7, pc}
_021A1A62:
	mov r1, #0x82
	add r0, r5, #0
	lsl r1, r1, #4
	bl ovy303_21a10dc
	add r5, #0x10
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x29
	bl ovy303_21a2fc4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1A7C: .word 0x00003C22
	thumb_func_end ovy303_21a1a1c

	thumb_func_start ovy303_21a1a80
ovy303_21a1a80: ; 0x021A1A80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A1B1C ; =0x0000008B
	add r6, r1, #0
	bl sub_0203CE0C
	ldr r0, _021A1B20 ; =0x00000090
	bl sub_0203CE0C
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r7, #0
	ldr r0, _021A1B24 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r4, _021A1B28 ; =0x04001050
	sub r7, #0x10
	strh r1, [r4]
	add r0, #0x1c
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	add r4, #0x1c
	add r0, r4, #0
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	bl sub_02046DF8
	mov r0, #0xa5
	bl sub_0219F718
	ldr r1, _021A1B2C ; =0x00000598
	str r0, [r5, r1]
	mov r0, #7
	mov r1, #0xa5
	bl sub_0204AA30
	mov r1, #0x27
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0
	str r6, [r5]
	str r0, [r5, #8]
	bl sub_021A1D6C
	bl ovy303_21a1d7c
	add r0, r5, #0
	bl ovy303_21a1fa0
	add r0, r5, #0
	bl ovy303_21a1fcc
	add r0, r5, #0
	bl ovy303_21a224c
	bl ovy303_21a2104
	add r0, r5, #0
	bl ovy303_21a26c0
	add r0, r5, #0
	bl ovy303_21a2920
	add r0, r5, #0
	bl ovy303_21a28f8
	add r0, r5, #0
	bl ovy303_21a314c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1B1C: .word 0x0000008B
_021A1B20: .word 0x00000090
_021A1B24: .word 0x04000050
_021A1B28: .word 0x04001050
_021A1B2C: .word 0x00000598
	thumb_func_end ovy303_21a1a80

	thumb_func_start ovy303_21a1b30
ovy303_21a1b30: ; 0x021A1B30
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_021A2730
	ldr r0, _021A1BA4 ; =0x00000598
	ldr r0, [r4, r0]
	bl sub_0219F728
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0204AB0C
	add r0, r4, #0
	bl ovy303_21a2814
	add r0, r4, #0
	bl ovy303_21a278c
	bl ovy303_21a2744
	add r0, r4, #0
	bl ovy303_21a2800
	add r0, r4, #0
	bl ovy303_21a27d4
	ldr r5, _021A1BA8 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _021A1BAC ; =0x0400106C
	add r1, r6, #0
	add r0, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	sub r5, #0x1c
	strh r0, [r5]
	sub r4, #0x1c
	strh r0, [r4]
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _021A1BB0 ; =0x00000090
	bl sub_0203CDC8
	ldr r0, _021A1BB4 ; =0x0000008B
	bl sub_0203CDC8
	pop {r4, r5, r6, pc}
	nop
_021A1BA4: .word 0x00000598
_021A1BA8: .word 0x0400006C
_021A1BAC: .word 0x0400106C
_021A1BB0: .word 0x00000090
_021A1BB4: .word 0x0000008B
	thumb_func_end ovy303_21a1b30

	thumb_func_start ovy303_21a1bb8
ovy303_21a1bb8: ; 0x021A1BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_0204B7C8
	mov r7, #0x9d
	mov r4, #0
	lsl r7, r7, #2
_021A1BC8:
	lsl r0, r4, #4
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #1
	bne _021A1BE0
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy303_21a2be0
	mov r0, #0
	str r0, [r6, r7]
_021A1BE0:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021A1BC8
	ldr r0, _021A1C94 ; =0x000005AC
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _021A1C8A
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A1C00
	cmp r0, #1
	beq _021A1C14
	cmp r0, #2
	beq _021A1C2C
	b _021A1C44
_021A1C00:
	mov r3, #0x12
	lsl r3, r3, #4
	str r3, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0xa5
	str r0, [sp, #8]
	mov r0, #0x9d
	mov r1, #0x31
	b _021A1C3E
_021A1C14:
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0xa5
	str r0, [sp, #8]
	mov r0, #0x9d
	mov r1, #0x32
	mov r2, #0
	mov r3, #0
	b _021A1C40
_021A1C2C:
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp]
	mov r3, #0x60
	str r3, [sp, #4]
	mov r0, #0xa5
	str r0, [sp, #8]
	mov r0, #0x9d
	mov r1, #0x32
_021A1C3E:
	mov r2, #0
_021A1C40:
	bl sub_0204B0F0
_021A1C44:
	mov r6, #0x5b
	lsl r6, r6, #4
	ldr r1, [r5, r6]
	add r0, r5, #0
	bl ovy303_21a30d8
	mov r7, #2
	lsl r7, r7, #8
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	add r3, r7, #0
	mov r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #4]
	mov r1, #1
	mov r2, #0
	add r3, r7, #0
	bl sub_02026F7C
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	add r3, r7, #0
	bl sub_02026F7C
	ldr r0, [r5, #4]
	mov r1, #3
	mov r2, #0
	add r3, r7, #0
	bl sub_02026F7C
	sub r0, r6, #4
	str r4, [r5, r0]
_021A1C8A:
	ldr r0, [r5, #4]
	bl sub_020275F8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1C94: .word 0x000005AC
	thumb_func_end ovy303_21a1bb8

	thumb_func_start sub_021A1C98
sub_021A1C98: ; 0x021A1C98
	mov r1, #0x9d
	mov r3, #0
	lsl r1, r1, #2
_021A1C9E:
	lsl r2, r3, #4
	add r2, r0, r2
	ldr r2, [r2, r1]
	cmp r2, #1
	bne _021A1CAC
	mov r0, #0
	bx lr
_021A1CAC:
	add r3, r3, #1
	cmp r3, #0x1e
	blt _021A1C9E
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1C98

	thumb_func_start ovy303_21a1cb8
ovy303_21a1cb8: ; 0x021A1CB8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy303_21a297c
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021A1CCC
	add r0, r4, #0
	bl ovy303_21a2ad4
_021A1CCC:
	add r0, r4, #0
	bl ovy303_21a2db0
	mov r0, #0x59
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A1CE2
	add r0, r4, #0
	bl ovy303_21a1d08
_021A1CE2:
	ldr r5, _021A1D04 ; =0x00000594
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
	cmp r0, #4
	bne _021A1CFC
	mov r0, #3
	mov r1, #1
	mov r2, #1
	bl sub_02045E1C
	mov r0, #0
	str r0, [r4, r5]
_021A1CFC:
	bl sub_0204B794
	pop {r3, r4, r5, pc}
	nop
_021A1D04: .word 0x00000594
	thumb_func_end ovy303_21a1cb8

	thumb_func_start ovy303_21a1d08
ovy303_21a1d08: ; 0x021A1D08
	push {r3, r4, r5, lr}
	mov r4, #0x16
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A1D68
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0203A7F4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x24
	add r1, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	bl sub_0202E8D8
	add r1, r4, #0
	add r1, #0x10
	add r0, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, r0
	bl sub_0202E68C
	cmp r0, #1
	bne _021A1D68
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021A1D68
	ldr r0, [r5, r4]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	mov r2, #0xf
	bl sub_0202E870
	ldr r0, [r5, r4]
	bl sub_02048244
_021A1D68:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy303_21a1d08

	thumb_func_start sub_021A1D6C
sub_021A1D6C: ; 0x021A1D6C
	ldr r0, _021A1D74 ; =0x021A36C8
	ldr r3, _021A1D78 ; =sub_02046C40
	bx r3
	nop
_021A1D74: .word 0x021A36C8
_021A1D78: .word sub_02046C40
	thumb_func_end sub_021A1D6C

	thumb_func_start ovy303_21a1d7c
ovy303_21a1d7c: ; 0x021A1D7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x114
	mov r5, #0
	add r0, sp, #0
	strh r5, [r0]
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl GXS_LoadBGPltt
	mov r0, #0xa5
	bl sub_020444A4
	ldr r4, _021A1F7C ; =0x021A3578
	add r3, sp, #0x104
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021A1F80 ; =0x021A3664
	add r3, sp, #0xe4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045738
	mov r0, #0
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa5
	bl sub_020450CC
	mov r0, #0
	bl sub_02045B7C
	mov r0, #0
	mov r1, #1
	mov r4, #1
	bl sub_02044C98
	ldr r6, _021A1F84 ; =0x021A3644
	add r3, sp, #0xc4
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	bl sub_02045738
	mov r0, #1
	bl sub_02045B7C
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	ldr r6, _021A1F88 ; =0x021A3604
	add r3, sp, #0xa4
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045738
	mov r0, #2
	bl sub_02045B7C
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	ldr r6, _021A1F8C ; =0x021A3624
	add r3, sp, #0x84
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	mov r7, #3
	bl sub_0204476C
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	ldr r6, _021A1F90 ; =0x021A35E4
	add r3, sp, #0x64
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa5
	bl sub_020450CC
	mov r0, #4
	bl sub_02045B7C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	ldr r6, _021A1F94 ; =0x021A35A4
	add r3, sp, #0x44
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	mov r6, #5
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	mov r0, #5
	bl sub_02045B7C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02044C98
	ldr r6, _021A1F98 ; =0x021A35C4
	add r3, sp, #0x24
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	add r2, r5, #0
	bl sub_0204476C
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl sub_02045B7C
	mov r0, #6
	add r1, r4, #0
	bl sub_02044C98
	ldr r6, _021A1F9C ; =0x021A3684
	add r3, sp, #4
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	add r2, r5, #0
	bl sub_0204476C
	mov r0, #7
	bl sub_02045738
	mov r0, #7
	bl sub_02045B7C
	mov r0, #7
	add r1, r4, #0
	bl sub_02044C98
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02046CFC
	mov r0, #7
	add r1, r4, #0
	bl sub_02046D84
	add sp, #0x114
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1F7C: .word 0x021A3578
_021A1F80: .word 0x021A3664
_021A1F84: .word 0x021A3644
_021A1F88: .word 0x021A3604
_021A1F8C: .word 0x021A3624
_021A1F90: .word 0x021A35E4
_021A1F94: .word 0x021A35A4
_021A1F98: .word 0x021A35C4
_021A1F9C: .word 0x021A3684
	thumb_func_end ovy303_21a1d7c

	thumb_func_start ovy303_21a1fa0
ovy303_21a1fa0: ; 0x021A1FA0
	push {r4, lr}
	add r4, r0, #0
	bl ovy303_21a20d4
	mov r0, #0x5e
	mov r1, #0
	mov r2, #0xa5
	bl sub_0204BF1C
	str r0, [r4, #0x14]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a1fa0

	thumb_func_start ovy303_21a1fcc
ovy303_21a1fcc: ; 0x021A1FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0xa5
	mov r7, #0xa5
	bl sub_02048080
	mov r0, #0xa5
	bl sub_02021998
	ldr r4, _021A20D0 ; =0x00000574
	mov r6, #0
	str r0, [r5, r4]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r6, [sp, #8]
	bl sub_020480C0
	add r1, r4, #4
	str r0, [r5, r1]
	bl sub_0204826C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	bl sub_02045B7C
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x18
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x14
	strb r6, [r5, r0]
	mov r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r6, [sp, #8]
	bl sub_020480C0
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	bl sub_0204826C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #4
	bl sub_02045B7C
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x10
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc
	strb r6, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	str r6, [r5, r0]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	sub r1, #0x1c
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x10
	add r0, r5, r0
	mov r1, #6
	bl sub_0202E678
	mov r0, #0xa5
	mov r1, #0xa5
	mov r2, #1
	mov r3, #0
	bl GFL_TCBExMgrCreate
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	mov r3, #0xa5
	bl sub_0202E7A4
	add r4, #0x30
	str r0, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A20D0: .word 0x00000574
	thumb_func_end ovy303_21a1fcc

	thumb_func_start ovy303_21a20d4
ovy303_21a20d4: ; 0x021A20D4
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r4, _021A20FC ; =0x021A3588
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r1, _021A2100 ; =0x021A36C8
	str r0, [r3]
	add r0, r2, #0
	mov r2, #0xa5
	bl sub_0204B6A8
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_021A20FC: .word 0x021A3588
_021A2100: .word 0x021A36C8
	thumb_func_end ovy303_21a20d4

	thumb_func_start ovy303_21a2104
ovy303_21a2104: ; 0x021A2104
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0x9d
	mov r1, #0xa5
	mov r5, #0xa5
	bl sub_0204AA30
	mov r4, #0
	str r4, [sp]
	str r5, [sp, #4]
	mov r1, #0x31
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0x33
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x3a
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x80
	mov r2, #2
	mov r3, #0
	mov r7, #0x80
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x3a
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x73
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x3b
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r1, #0x81
	mov r2, #5
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl sub_0204AB0C
	mov r0, #0x54
	mov r1, #0xa5
	bl sub_0204AA30
	str r4, [sp]
	str r5, [sp, #4]
	mov r1, #0
	mov r2, #6
	lsl r3, r7, #7
	add r6, r0, #0
	bl sub_0204B0D4
	str r4, [sp]
	mov r3, #6
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r2, #6
	lsl r3, r3, #0xc
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #7
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #5
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r6, #0
	bl sub_0204AB0C
	mov r6, #0x20
	add r2, r4, #0
	mov r4, #0x1e
	str r6, [sp]
	lsl r4, r4, #4
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r3, r4, #0
	bl sub_0204B0B8
	str r6, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r4, #0
	str r5, [sp, #4]
	bl sub_0204B0B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2104

	thumb_func_start ovy303_21a224c
ovy303_21a224c: ; 0x021A224C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r5, r0, #0
	mov r0, #0x9d
	str r0, [sp, #0x80]
	mov r0, #0x35
	str r0, [sp, #0x84]
	mov r4, #0
	add r1, sp, #0x78
	mov r0, #0x39
	str r0, [sp, #0x88]
	mov r0, #0x3f
	str r0, [sp, #0x8c]
	mov r0, #0x49
	str r0, [sp, #0x90]
	mov r0, #8
	str r4, [sp, #0x78]
	str r4, [sp, #0x7c]
	strb r4, [r1, #0x1c]
	strb r4, [r1, #0x1d]
	strb r0, [r1, #0x1e]
	ldr r7, _021A260C ; =0x00000454
	ldr r2, [r5, #0x14]
	add r0, r5, r7
	mov r3, #0xa5
	mov r6, #0xa5
	bl sub_021999C8
	str r4, [sp, #0x58]
	str r4, [sp, #0x5c]
	bl sub_0202D7E0
	str r0, [sp, #0x60]
	bl sub_0202D810
	str r0, [sp, #0x64]
	bl sub_0202D814
	str r0, [sp, #0x68]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0x6c]
	mov r0, #2
	bl sub_0202D81C
	str r0, [sp, #0x70]
	add r1, sp, #0x58
	mov r0, #8
	strb r0, [r1, #0x1c]
	mov r0, #3
	strb r0, [r1, #0x1e]
	strb r4, [r1, #0x1d]
	add r0, r7, #0
	add r0, #0xe0
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	mov r3, #0xa5
	bl sub_021999C8
	add r1, sp, #0x38
	mov r0, #1
	str r0, [sp, #0x38]
	mov r0, #0x9d
	str r0, [sp, #0x40]
	mov r0, #5
	str r0, [sp, #0x44]
	mov r0, #0xf
	str r0, [sp, #0x48]
	mov r0, #0x1d
	str r0, [sp, #0x4c]
	mov r0, #0x2e
	str r0, [sp, #0x50]
	mov r0, #1
	strb r0, [r1, #0x1e]
	add r0, r7, #0
	add r0, #0xf0
	str r4, [sp, #0x3c]
	strb r4, [r1, #0x1c]
	strb r4, [r1, #0x1d]
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	mov r3, #0xa5
	bl sub_021999C8
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #0x54
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	mov r0, #8
	str r0, [sp, #0x28]
	mov r0, #0xc
	str r0, [sp, #0x2c]
	mov r0, #0x13
	str r0, [sp, #0x30]
	add r1, sp, #0x18
	mov r0, #1
	strb r0, [r1, #0x1c]
	mov r0, #5
	strb r0, [r1, #0x1e]
	add r0, r7, #0
	add r0, #0xd0
	str r4, [sp, #0x1c]
	strb r4, [r1, #0x1d]
	ldr r2, [r5, #0x14]
	add r0, r5, r0
	add r3, r6, #0
	bl sub_021999C8
	mov r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x14]
	add r0, r5, r7
	mov r2, #0x14
	mov r3, #0x3c
	bl sub_02199A5C
	add r1, r7, #0
	add r1, #0x10
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C468
	add r0, r7, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x16
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x14]
	add r0, r5, r7
	mov r2, #0xec
	mov r3, #0x3c
	bl sub_02199A5C
	add r1, r7, #0
	add r1, #0x14
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C468
	add r0, r7, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x1f
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x14]
	add r0, r5, r7
	mov r2, #0x80
	mov r3, #0x60
	bl sub_02199A5C
	add r1, r7, #0
	add r1, #0x54
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C468
	add r0, r7, #0
	add r0, #0x54
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C438
	mov r0, #0x1b
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x14]
	add r0, r5, r7
	mov r2, #0xe0
	mov r3, #0x14
	bl sub_02199A5C
	add r1, r7, #0
	add r1, #0x18
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C520
	add r0, r7, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r7, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_0204C244
	add r6, r7, #0
	mov r4, #6
	add r6, #0x10
_021A23E4:
	mov r2, #0x28
	mul r2, r4
	sub r2, #0xf0
	mov r0, #0xb
	lsl r2, r2, #0x18
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	lsr r2, r2, #0x18
	add r2, #0x52
	lsl r2, r2, #0x18
	ldr r1, [r5, #0x14]
	add r0, r5, r7
	lsr r2, r2, #0x18
	mov r3, #0xb5
	bl sub_02199A5C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #8
	ble _021A23E4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	ldr r0, _021A260C ; =0x00000454
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0x50
	mov r3, #0xb8
	bl sub_02199A5C
	ldr r1, _021A260C ; =0x00000454
	mov r2, #0x78
	add r1, #0x34
	str r0, [r5, r1]
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	ldr r0, _021A260C ; =0x00000454
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r3, #0xb8
	bl sub_02199A5C
	ldr r1, _021A260C ; =0x00000454
	mov r2, #0xa0
	add r1, #0x38
	str r0, [r5, r1]
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	ldr r0, _021A260C ; =0x00000454
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r3, #0xb8
	bl sub_02199A5C
	ldr r1, _021A260C ; =0x00000454
	mov r4, #0
	add r1, #0x3c
	str r0, [r5, r1]
	ldr r0, _021A260C ; =0x00000454
	str r0, [sp, #8]
	add r0, #0x58
	str r0, [sp, #8]
	ldr r0, _021A260C ; =0x00000454
	str r0, [sp, #0xc]
	add r0, #0x58
	str r0, [sp, #0xc]
_021A2478:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, sp, #0x14
	bl ovy303_21a2d18
	lsl r0, r4, #2
	add r7, r5, r0
	mov r0, #9
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r3, sp, #0x10
	mov r2, #4
	ldrsh r2, [r3, r2]
	add r6, r3, #0
	mov r3, #6
	ldrsh r3, [r6, r3]
	ldr r0, _021A260C ; =0x00000454
	add r2, #0xa
	sub r3, r3, #2
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02199A5C
	ldr r1, [sp, #8]
	str r0, [r7, r1]
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C468
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021A2478
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	ldr r6, _021A260C ; =0x00000454
	ldr r1, [r5, #0x14]
	add r0, r5, r6
	mov r2, #0xa0
	mov r3, #0xb4
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x24
	str r0, [r5, r1]
	mov r1, #0
	mov r4, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C468
	mov r7, #6
	str r7, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xd0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0
	mov r3, #0
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x1c
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	str r4, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xf0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0
	mov r3, #0
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x20
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C318
	mov r0, #3
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0
	mov r3, #0xa8
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x40
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0xa8
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x44
	str r0, [r5, r1]
	str r7, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0xb8
	mov r3, #0xac
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x48
	str r0, [r5, r1]
	str r4, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0xd0
	mov r3, #0xa8
	bl sub_02199A5C
	add r1, r6, #0
	add r1, #0x4c
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	mov r2, #0xe8
	mov r3, #0xa8
	bl sub_02199A5C
	add r6, #0x50
	str r0, [r5, r6]
	add r7, sp, #0x10
_021A25D8:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy303_21a2610
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl ovy303_21a2d18
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021A25D8
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A260C: .word 0x00000454
	thumb_func_end ovy303_21a224c

	thumb_func_start ovy303_21a2610
ovy303_21a2610: ; 0x021A2610
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	mov r0, #1
	mov r4, #0
	str r0, [sp, #0x1c]
	mov r0, #7
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r4, [sp, #0x18]
	str r0, [sp, #0x20]
	bl sub_02021114
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl sub_02020F94
	str r0, [sp, #0x28]
	bl sub_0202111C
	str r0, [sp, #0x2c]
	bl sub_02021190
	str r0, [sp, #0x30]
	add r7, r6, #0
	mov r1, #0xb
	add r0, sp, #0x18
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1d]
	mov r1, #3
	strb r1, [r0, #0x1e]
	add r0, sp, #0x50
	ldrb r4, [r0]
	add r7, #0x18
	ldr r2, [r6, #0x14]
	lsl r0, r4, #4
	str r0, [sp, #0x14]
	add r0, r7, r0
	add r1, sp, #0x18
	mov r3, #0xa5
	bl sub_021999C8
	mov r0, #0x7e
	lsl r0, r0, #2
	add r5, r6, r0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [r6, #0x14]
	lsl r4, r4, #2
	add r0, r7, r0
	mov r2, #0
	mov r3, #0
	bl sub_02199A5C
	str r0, [r5, r4]
	mov r1, #2
	bl sub_0204C438
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C468
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r5, r4]
	mov r2, #0
	bl sub_0204C378
	ldr r0, [r5, r4]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2610

	thumb_func_start ovy303_21a26c0
ovy303_21a26c0: ; 0x021A26C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xa5
	bl sub_02026DC0
	mov r4, #2
	lsl r4, r4, #8
	str r0, [r5, #4]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0xa5
	bl sub_02026E04
	ldr r0, [r5, #4]
	mov r1, #1
	add r2, r4, #0
	mov r3, #0xa5
	bl sub_02026E04
	ldr r0, [r5, #4]
	mov r1, #2
	add r2, r4, #0
	mov r3, #0xa5
	bl sub_02026E04
	ldr r0, [r5, #4]
	mov r1, #3
	add r2, r4, #0
	mov r3, #0xa5
	bl sub_02026E04
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #4]
	mov r1, #1
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #4]
	mov r1, #3
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy303_21a26c0

	thumb_func_start sub_021A2730
sub_021A2730: ; 0x021A2730
	ldr r2, _021A273C ; =0x04001000
	ldr r0, _021A2740 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_021A273C: .word 0x04001000
_021A2740: .word 0xFFFF1FFF
	thumb_func_end sub_021A2730

	thumb_func_start ovy303_21a2744
ovy303_21a2744: ; 0x021A2744
	push {r3, lr}
	mov r0, #0xf
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0xf
	mov r1, #0
	bl sub_02046D84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy303_21a2744

	thumb_func_start ovy303_21a278c
ovy303_21a278c: ; 0x021A278C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r7, #0x7e
	mov r4, #0
	add r6, #0x18
	lsl r7, r7, #2
_021A279A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _021A27AC
	lsl r0, r4, #4
	add r0, r6, r0
	bl sub_02199A44
_021A27AC:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _021A279A
	ldr r4, _021A27D0 ; =0x00000454
	add r0, r5, r4
	bl sub_02199A44
	add r4, #0xd0
	add r0, r5, r4
	bl sub_02199A44
	ldr r0, [r5, #0x14]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A27D0: .word 0x00000454
	thumb_func_end ovy303_21a278c

	thumb_func_start ovy303_21a27d4
ovy303_21a27d4: ; 0x021A27D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02026E48
	ldr r0, [r4, #4]
	bl sub_02026DE8
	pop {r4, pc}
	thumb_func_end ovy303_21a27d4

	thumb_func_start ovy303_21a2800
ovy303_21a2800: ; 0x021A2800
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02035178
	ldr r0, [r4, #0x10]
	bl sub_02035178
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2800

	thumb_func_start ovy303_21a2814
ovy303_21a2814: ; 0x021A2814
	push {r3, r4, r5, lr}
	ldr r4, _021A285C ; =0x00000574
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_02021C44
	ldr r0, [r5, r4]
	bl sub_02021A18
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	bl sub_0202E818
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	bl GFL_TCBExMgrFree
	bl sub_020480A8
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02048210
	add r4, #8
	ldr r0, [r5, r4]
	bl sub_02048210
	pop {r3, r4, r5, pc}
	nop
_021A285C: .word 0x00000574
	thumb_func_end ovy303_21a2814

	thumb_func_start ovy303_21a2860
ovy303_21a2860: ; 0x021A2860
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02005718
	str r4, [sp]
	mov r7, #1
	sub r7, #0xf
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, _021A28DC ; =0x0000BFFF
	mov r1, #1
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, _021A28E0 ; =0x0000FFEF
	mov r1, #2
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, _021A28E4 ; =0x000038B8
	mov r1, #4
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, _021A28E8 ; =0x00003FFF
	mov r1, #8
	add r3, r7, #0
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A28DC: .word 0x0000BFFF
_021A28E0: .word 0x0000FFEF
_021A28E4: .word 0x000038B8
_021A28E8: .word 0x00003FFF
	thumb_func_end ovy303_21a2860

	thumb_func_start sub_021A28EC
sub_021A28EC: ; 0x021A28EC
	ldr r0, [r0, #4]
	ldr r3, _021A28F4 ; =sub_02027780
	bx r3
	nop
_021A28F4: .word sub_02027780
	thumb_func_end sub_021A28EC

	thumb_func_start ovy303_21a28f8
ovy303_21a28f8: ; 0x021A28F8
	push {r4, lr}
	mov r4, #3
	ldr r1, _021A291C ; =0x00000594
	mov r2, #0
	str r2, [r0, r1]
	sub r4, #0x1b
	mov r0, #6
	mov r1, #3
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #7
	mov r1, #3
	add r2, r4, #0
	bl sub_02045E1C
	pop {r4, pc}
	nop
_021A291C: .word 0x00000594
	thumb_func_end ovy303_21a28f8

	thumb_func_start ovy303_21a2920
ovy303_21a2920: ; 0x021A2920
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x9d
	mov r1, #0xa5
	bl sub_0204AA30
	add r4, r0, #0
	mov r0, #0xa0
	mov r1, #5
	mov r2, #2
	mov r3, #0xa5
	mov r6, #0xa0
	bl sub_02035024
	str r0, [r5, #0xc]
	str r6, [sp]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	mov r2, #0x31
	mov r3, #0x90
	bl sub_02035104
	ldr r2, _021A2978 ; =0x0000FFFE
	mov r0, #0x10
	mov r1, #5
	mov r3, #0xa5
	bl sub_02035024
	str r0, [r5, #0x10]
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	mov r2, #0x35
	mov r3, #0x10
	bl sub_02035104
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A2978: .word 0x0000FFFE
	thumb_func_end ovy303_21a2920

	thumb_func_start ovy303_21a297c
ovy303_21a297c: ; 0x021A297C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, _021A2A1C ; =0x00000554
	mov r1, #1
	str r0, [sp]
	str r1, [r6, r0]
	add r0, #0x20
	ldr r0, [r6, r0]
	bl sub_02021A3C
	ldr r0, [sp]
	mov r4, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp]
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp]
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
	ldr r0, [sp]
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp]
	str r0, [sp, #4]
	add r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
_021A29C2:
	ldr r0, [sp, #4]
	ldr r7, [r6, r0]
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [sp]
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021A29F4
	ldr r0, [sp, #8]
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A29F4
	ldr r0, [sp, #0x10]
	ldr r0, [r5, r0]
	bl sub_02048244
	ldr r0, [sp, #0xc]
	mov r1, #0
	strb r1, [r5, r0]
_021A29F4:
	ldr r0, [sp, #0x14]
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021A2A00
	mov r0, #1
	b _021A2A02
_021A2A00:
	mov r0, #0
_021A2A02:
	cmp r0, #0
	bne _021A2A10
	ldr r0, _021A2A1C ; =0x00000554
	mov r1, #0
	add sp, #0x18
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A2A10:
	add r4, r4, #1
	cmp r4, #3
	blt _021A29C2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2A1C: .word 0x00000554
	thumb_func_end ovy303_21a297c

	thumb_func_start sub_021A2A20
sub_021A2A20: ; 0x021A2A20
	ldr r1, _021A2A28 ; =0x00000554
	ldr r0, [r0, r1]
	bx lr
	nop
_021A2A28: .word 0x00000554
	thumb_func_end sub_021A2A20

	thumb_func_start ovy303_21a2a2c
ovy303_21a2a2c: ; 0x021A2A2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r5, r2, #0
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	str r3, [sp, #0x10]
	bl sub_021A2F94
	bl sub_020484F4
	add r7, sp, #0x30
	ldrh r1, [r7, #8]
	mov r2, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrsh r2, [r7, r2]
	ldrh r3, [r7, #4]
	ldr r1, [sp, #0x10]
	bl sub_020470F8
	ldr r4, _021A2A98 ; =0x00000574
	lsl r6, r6, #3
	ldr r0, [r5, r4]
	add r1, r5, r6
	str r0, [sp, #0x14]
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r1, r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	ldrh r0, [r7, #0xc]
	str r0, [sp, #8]
	ldrsh r3, [r7, r3]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_02021C7C
	mov r1, #1
	add r0, r5, r6
	sub r4, #0x14
	strb r1, [r0, r4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2A98: .word 0x00000574
	thumb_func_end ovy303_21a2a2c

	thumb_func_start ovy303_21a2a9c
ovy303_21a2a9c: ; 0x021A2A9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	add r0, r1, #0
	add r1, r6, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021A2F94
	add r6, r0, #0
	bl sub_020484F4
	add r3, sp, #0x18
	ldrh r1, [r3, #4]
	add r2, r4, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrh r3, [r3]
	add r1, r5, #0
	bl sub_020470F8
	add r0, r6, #0
	bl sub_02048244
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2a9c

	thumb_func_start ovy303_21a2ad4
ovy303_21a2ad4: ; 0x021A2AD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02035198
	ldr r0, [r4, #0x10]
	bl sub_02035198
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2ad4

	thumb_func_start ovy303_21a2ae8
ovy303_21a2ae8: ; 0x021A2AE8
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	bl sub_021A2F94
	bl sub_020484F4
	add r1, r4, #0
	bl sub_0204713C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2ae8

	thumb_func_start sub_021A2B04
sub_021A2B04: ; 0x021A2B04
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A2B10 ; =0x00000464
	ldr r0, [r1, r0]
	bx lr
	nop
_021A2B10: .word 0x00000464
	thumb_func_end sub_021A2B04

	thumb_func_start ovy303_21a2b14
ovy303_21a2b14: ; 0x021A2B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r5, _021A2BB4 ; =0x021A356C
	add r4, r2, #0
	add r7, r0, #0
	add r3, r1, #0
	ldmia r5!, {r0, r1}
	add r2, sp, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	ldr r6, _021A2BB8 ; =0x021A36A4
	str r0, [r2]
	add r5, sp, #0
	mov r2, #4
_021A2B30:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _021A2B30
	ldr r0, [r6]
	cmp r3, #0
	str r0, [r5]
	beq _021A2B4A
	cmp r3, #1
	beq _021A2B64
	cmp r3, #2
	beq _021A2B7E
	b _021A2BA8
_021A2B4A:
	add r0, r7, #0
	mov r1, #9
	bl sub_021A2B04
	lsl r4, r4, #2
	add r1, sp, #0x24
	ldr r1, [r1, r4]
	add r5, r0, #0
	bl sub_0204C124
	add r0, r5, #0
	add r1, sp, #0
	b _021A2B96
_021A2B64:
	add r0, r7, #0
	mov r1, #0xa
	bl sub_021A2B04
	lsl r4, r4, #2
	add r1, sp, #0x24
	ldr r1, [r1, r4]
	add r5, r0, #0
	bl sub_0204C124
	add r0, r5, #0
	add r1, sp, #0xc
	b _021A2B96
_021A2B7E:
	add r0, r7, #0
	mov r1, #0xb
	bl sub_021A2B04
	lsl r4, r4, #2
	add r1, sp, #0x24
	ldr r1, [r1, r4]
	add r5, r0, #0
	bl sub_0204C124
	add r0, r5, #0
	add r1, sp, #0x18
_021A2B96:
	ldr r1, [r1, r4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r5, #0
	mov r1, #0
	bl sub_0204C4D4
_021A2BA8:
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2BB4: .word 0x021A356C
_021A2BB8: .word 0x021A36A4
	thumb_func_end ovy303_21a2b14

	thumb_func_start ovy303_21a2bbc
ovy303_21a2bbc: ; 0x021A2BBC
	push {r3, r4, r5, r6}
	add r4, sp, #0x10
	ldrb r4, [r4]
	mov r6, #1
	lsl r4, r4, #4
	add r5, r0, r4
	mov r4, #0x9d
	lsl r4, r4, #2
	str r6, [r5, r4]
	add r0, r4, #4
	strh r1, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r2, [r5, r0]
	add r4, #0xc
	str r3, [r5, r4]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy303_21a2bbc

	thumb_func_start ovy303_21a2be0
ovy303_21a2be0: ; 0x021A2BE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r5, r0, #0
	lsl r0, r7, #4
	mov r4, #0x9e
	add r0, r5, r0
	lsl r4, r4, #2
	ldrh r1, [r0, r4]
	mov r3, #0
	str r1, [sp, #0xc]
	add r1, r4, #0
	add r1, #8
	ldr r1, [r0, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	add r1, r4, #4
	ldr r0, [r0, r1]
	ldr r2, [sp, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	bl sub_02020F94
	add r1, r0, #0
	mov r0, #0xa5
	str r0, [sp]
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	mov r2, #0
	add r3, sp, #0x14
	bl sub_0204B2DC
	sub r4, #0x80
	add r4, r5, r4
	lsl r6, r7, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, r6]
	bl sub_0204C428
	mov r1, #0
	str r1, [sp]
	ldr r1, [sp, #0x14]
	mov r2, #1
	ldr r1, [r1, #0x14]
	lsl r2, r2, #0xa
	mov r3, #0
	bl sub_0204BAB8
	ldr r0, [r4, r6]
	bl sub_0204C428
	ldr r1, [sp, #0x14]
	bl sub_0204BA40
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	mov r3, #0
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r4, r6]
	mov r2, #1
	bl sub_0204C378
	ldr r0, [sp, #0x10]
	bl sub_0203A24C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_021A2CA0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy303_21a2be0

	thumb_func_start ovy303_21a2c80
ovy303_21a2c80: ; 0x021A2C80
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	mov r1, #0x7e
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	add r6, r2, #0
	cmp r0, #0
	beq _021A2C9E
	bl sub_0204C540
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl sub_0204C520
_021A2C9E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy303_21a2c80

	thumb_func_start sub_021A2CA0
sub_021A2CA0: ; 0x021A2CA0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021A2CB0 ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_021A2CB0: .word sub_0204C124
	thumb_func_end sub_021A2CA0

	thumb_func_start ovy303_21a2cb4
ovy303_21a2cb4: ; 0x021A2CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #5
	add r5, r2, #0
	mov r7, #5
	blx sub_0208D65C
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	mov r1, #5
	blx sub_0208D65C
	lsl r0, r0, #2
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r5, #0
	bne _021A2CEC
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	b _021A2D02
_021A2CEC:
	cmp r5, #1
	bne _021A2CF8
	mov r0, #4
	str r0, [sp]
	mov r0, #9
	b _021A2D02
_021A2CF8:
	cmp r5, #2
	bne _021A2D0E
	mov r0, #4
	str r0, [sp]
	mov r0, #0xb
_021A2D02:
	str r0, [sp, #4]
	mov r0, #2
	add r1, r4, #0
	add r3, r7, #0
	bl sub_0204566C
_021A2D0E:
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy303_21a2cb4

	thumb_func_start ovy303_21a2d18
ovy303_21a2d18: ; 0x021A2D18
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #5
	add r5, r0, #0
	blx sub_0208D65C
	mov r0, #0x28
	mul r0, r1
	add r0, #0x30
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #5
	blx sub_0208D65C
	lsl r0, r0, #5
	add r0, #0x38
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy303_21a2d18

	thumb_func_start ovy303_21a2d3c
ovy303_21a2d3c: ; 0x021A2D3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02160EB4
	ldr r6, _021A2DA8 ; =0x00000598
	add r1, r0, #0
	ldr r0, [r5, r6]
	bl sub_0219F73C
	add r7, r0, #0
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #0x18
	bl sub_0219F730
	add r1, r0, #0
	ldr r0, _021A2DAC ; =0x00000474
	ldr r0, [r5, r0]
	bl sub_0204C488
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #0x19
	bl sub_0219F730
	add r4, sp, #0
	strh r0, [r4]
	ldr r0, [r5, r6]
	add r1, r7, #0
	mov r2, #0x1a
	bl sub_0219F730
	strh r0, [r4, #2]
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r1, sp, #0
	mov r2, #1
	add r0, #0x18
	strh r0, [r4, #2]
	ldr r0, _021A2DAC ; =0x00000474
	ldr r0, [r5, r0]
	bl sub_0204C140
	add r0, r5, #0
	bl ovy303_21a2ddc
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2DA8: .word 0x00000598
_021A2DAC: .word 0x00000474
	thumb_func_end ovy303_21a2d3c

	thumb_func_start ovy303_21a2db0
ovy303_21a2db0: ; 0x021A2DB0
	push {r3, r4, r5, lr}
	ldr r4, _021A2DD4 ; =0x0000059C
	add r5, r0, #0
	ldr r3, [r5, r4]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021A2DD8 ; =0x04001050
	mov r1, #0
	mov r2, #0x3f
	bl G2x_SetBlendAlpha_
	add r0, r4, #4
	add r0, r5, r0
	add r1, r5, r4
	bl sub_021ADE74
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2DD4: .word 0x0000059C
_021A2DD8: .word 0x04001050
	thumb_func_end ovy303_21a2db0

	thumb_func_start ovy303_21a2ddc
ovy303_21a2ddc: ; 0x021A2DDC
	push {r3, r4, r5, lr}
	mov r5, #0x5a
	lsl r5, r5, #4
	add r4, r0, #0
	sub r1, r5, #4
	add r0, r4, r5
	add r1, r4, r1
	bl sub_021ADEC0
	sub r0, r5, #4
	ldr r3, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021A2E04 ; =0x04001050
	mov r1, #0
	mov r2, #0x3f
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2E04: .word 0x04001050
	thumb_func_end ovy303_21a2ddc

	thumb_func_start ovy303_21a2e08
ovy303_21a2e08: ; 0x021A2E08
	push {r4, lr}
	add r1, #0x12
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A2E50 ; =0x00000464
	cmp r2, #0
	ldr r4, [r1, r0]
	beq _021A2E22
	cmp r2, #1
	beq _021A2E34
	cmp r2, #2
	beq _021A2E46
	pop {r4, pc}
_021A2E22:
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #9
	bl sub_0204C488
	pop {r4, pc}
_021A2E34:
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #0xa
	bl sub_0204C488
	pop {r4, pc}
_021A2E46:
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	.align 2, 0
_021A2E50: .word 0x00000464
	thumb_func_end ovy303_21a2e08

	thumb_func_start ovy303_21a2e54
ovy303_21a2e54: ; 0x021A2E54
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r3, r1, #0
	str r2, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r2, r3, #0
	mov r0, #1
	mov r1, #2
	mov r3, #0x1c
	bl sub_020480C0
	mov r4, #0x16
	lsl r4, r4, #6
	str r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl sub_020484F4
	mov r1, #0
	mov r6, #0
	bl sub_0204713C
	ldr r0, [r5, r4]
	bl sub_02048244
	mov r0, #1
	bl sub_02045B7C
	add r0, r4, #0
	ldr r1, [r5, r4]
	sub r0, #0x14
	str r1, [r5, r0]
	sub r4, #0x10
	strb r6, [r5, r4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2e54

	thumb_func_start ovy303_21a2ea8
ovy303_21a2ea8: ; 0x021A2EA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_021A2F94
	add r6, r0, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	add r0, r6, #0
	bl sub_0204826C
	mov r0, #0xa5
	str r0, [sp]
	mov r0, #1
	mov r1, #1
	mov r2, #0xc
	mov r3, #0
	bl sub_02024D00
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0xc
	bl sub_02024E80
	bl sub_02017BCC
	ldr r4, _021A2F34 ; =0x00000558
	mov r2, #0
	ldr r1, [r5, r4]
	add r3, r7, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0xa5
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	bl sub_02022268
	add r1, r4, #0
	add r1, #0x38
	str r0, [r5, r1]
	add r4, #0x50
	mov r0, #0
	str r0, [r5, r4]
	mov r0, #1
	bl sub_02045B7C
	add r0, r6, #0
	bl sub_02048244
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2F34: .word 0x00000558
	thumb_func_end ovy303_21a2ea8

	thumb_func_start ovy303_21a2f38
ovy303_21a2f38: ; 0x021A2F38
	push {r4, r5, r6, lr}
	mov r1, #2
	add r5, r0, #0
	bl sub_021A2F94
	mov r4, #0x59
	lsl r4, r4, #4
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_020223CC
	add r0, r6, #0
	mov r1, #1
	bl sub_02024EEC
	add r0, r6, #0
	bl sub_020484B4
	mov r0, #0
	mov r6, #0
	bl sub_02045B7C
	add r0, r4, #0
	str r6, [r5, r4]
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02048210
	sub r4, #0x10
	str r6, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy303_21a2f38

	thumb_func_start sub_021A2F78
sub_021A2F78: ; 0x021A2F78
	mov r1, #0x59
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021A2F84 ; =sub_020223B4
	bx r3
	nop
_021A2F84: .word sub_020223B4
	thumb_func_end sub_021A2F78

	thumb_func_start sub_021A2F88
sub_021A2F88: ; 0x021A2F88
	ldr r1, _021A2F90 ; =0x000005A8
	mov r2, #1
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_021A2F90: .word 0x000005A8
	thumb_func_end sub_021A2F88

	thumb_func_start sub_021A2F94
sub_021A2F94: ; 0x021A2F94
	cmp r1, #0
	beq _021A2FA2
	cmp r1, #1
	beq _021A2FA8
	cmp r1, #2
	beq _021A2FAE
	b _021A2FB6
_021A2FA2:
	ldr r1, _021A2FBC ; =0x00000578
	ldr r0, [r0, r1]
	bx lr
_021A2FA8:
	ldr r1, _021A2FC0 ; =0x0000057C
	ldr r0, [r0, r1]
	bx lr
_021A2FAE:
	mov r1, #0x16
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bx lr
_021A2FB6:
	mov r0, #0
	bx lr
	nop
_021A2FBC: .word 0x00000578
_021A2FC0: .word 0x0000057C
	thumb_func_end sub_021A2F94

	thumb_func_start ovy303_21a2fc4
ovy303_21a2fc4: ; 0x021A2FC4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_021A2B04
	lsl r1, r5, #0x10
	add r4, r0, #0
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C4D4
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	thumb_func_end ovy303_21a2fc4

	thumb_func_start ovy303_21a2ff0
ovy303_21a2ff0: ; 0x021A2FF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x47
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5]
	bl sub_020171F4
	bl sub_02017544
	add r1, r0, #0
	ldr r0, [r5]
	bl sub_02160EB4
	add r1, r0, #0
	ldr r0, _021A3064 ; =0x00000598
	ldr r0, [r5, r0]
	bl sub_0219F73C
	add r6, r0, #0
	ldr r0, _021A3068 ; =0x0000FFFF
	cmp r6, r0
	beq _021A3058
	ldr r0, _021A3064 ; =0x00000598
	add r1, r6, #0
	ldr r0, [r5, r0]
	mov r2, #2
	bl sub_0219F730
	add r7, sp, #0
	strh r0, [r7]
	ldr r0, _021A3064 ; =0x00000598
	add r1, r6, #0
	ldr r0, [r5, r0]
	mov r2, #3
	bl sub_0219F730
	strh r0, [r7, #2]
	mov r0, #2
	ldrsh r0, [r7, r0]
	add r1, sp, #0
	mov r2, #1
	add r0, #0x18
	strh r0, [r7, #2]
	add r0, r4, #0
	bl sub_0204C140
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021A3058:
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3064: .word 0x00000598
_021A3068: .word 0x0000FFFF
	thumb_func_end ovy303_21a2ff0

	thumb_func_start ovy303_21a306c
ovy303_21a306c: ; 0x021A306C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	cmp r2, #0
	beq _021A30AC
	lsl r0, r5, #0x10
	mov r4, #5
	asr r6, r0, #0x10
_021A307C:
	lsl r0, r4, #2
	add r1, r7, r0
	ldr r0, _021A30C4 ; =0x00000464
	mov r2, #0
	ldr r5, [r1, r0]
	add r1, sp, #0
	add r0, r5, #0
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r2, #0
	add r1, r0, r6
	add r0, sp, #0
	strh r1, [r0, #2]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #0x11
	ble _021A307C
	pop {r3, r4, r5, r6, r7, pc}
_021A30AC:
	mov r0, #4
	mov r1, #5
	add r2, r5, #0
	bl sub_02045E1C
	mov r0, #5
	mov r1, #5
	add r2, r5, #0
	bl sub_02045E1C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A30C4: .word 0x00000464
	thumb_func_end ovy303_21a306c

	thumb_func_start sub_021A30C8
sub_021A30C8: ; 0x021A30C8
	ldr r2, _021A30D4 ; =0x000005AC
	mov r3, #1
	str r3, [r0, r2]
	add r2, r2, #4
	str r1, [r0, r2]
	bx lr
	.align 2, 0
_021A30D4: .word 0x000005AC
	thumb_func_end sub_021A30C8

	thumb_func_start ovy303_21a30d8
ovy303_21a30d8: ; 0x021A30D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_02035178
	mov r0, #0xa0
	mov r1, #5
	mov r2, #2
	mov r3, #0xa5
	mov r6, #0xa0
	bl sub_02035024
	str r0, [r5, #0xc]
	cmp r4, #0
	beq _021A3106
	cmp r4, #1
	beq _021A3118
	cmp r4, #2
	beq _021A312C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021A3106:
	str r6, [sp]
	ldr r0, [r5, #0xc]
	mov r1, #0x9d
	mov r2, #0x31
	mov r3, #0x90
	bl sub_02035090
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021A3118:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r1, #0x9d
	mov r2, #0x32
	mov r3, #0
	bl sub_02035090
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021A312C:
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r1, #0x9d
	mov r2, #0x32
	mov r3, #0x30
	bl sub_02035090
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy303_21a30d8

	thumb_func_start sub_021A3140
sub_021A3140: ; 0x021A3140
	ldr r1, _021A3148 ; =0x000005AC
	ldr r0, [r0, r1]
	bx lr
	nop
_021A3148: .word 0x000005AC
	thumb_func_end sub_021A3140

	thumb_func_start ovy303_21a314c
ovy303_21a314c: ; 0x021A314C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, _021A329C ; =0x00000524
	mov r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x74
	str r0, [sp, #0x1c]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x18]
	add r0, #0x74
	str r0, [sp, #0x18]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x14]
	add r0, #0x74
	str r0, [sp, #0x14]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x38]
	add r0, #0x90
	str r0, [sp, #0x38]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x34]
	add r0, #0x94
	str r0, [sp, #0x34]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x30]
	add r0, #0x90
	str r0, [sp, #0x30]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x2c]
	add r0, #0x94
	str r0, [sp, #0x2c]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x28]
	add r0, #0x94
	str r0, [sp, #0x28]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x24]
	add r0, #0x94
	str r0, [sp, #0x24]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x20]
	add r0, #0x94
	str r0, [sp, #0x20]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0x10]
	add r0, #0x90
	str r0, [sp, #0x10]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #0xc]
	add r0, #0x94
	str r0, [sp, #0xc]
	ldr r0, _021A329C ; =0x00000524
	str r0, [sp, #8]
	add r0, #0x74
	str r0, [sp, #8]
_021A31BC:
	ldr r0, [sp, #8]
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #0x10
	bl sub_0219F730
	add r1, r0, #0
	ldr r0, _021A32A0 ; =0x0000FFFF
	cmp r1, r0
	beq _021A3280
	ldr r0, [r5]
	bl sub_02160F74
	cmp r0, #0
	bne _021A31DE
	mov r0, #1
	b _021A31E0
_021A31DE:
	mov r0, #0
_021A31E0:
	cmp r0, #0
	beq _021A31F6
	lsl r0, r4, #3
	add r2, r5, r0
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r1, [r2, r0]
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r1, [r2, r0]
	b _021A328E
_021A31F6:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #0xb
	bl sub_0219F730
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #2
	bl sub_0219F730
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	ldr r0, [r5, r0]
	mov r2, #3
	bl sub_0219F730
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	mov r2, #0xe
	cmp r6, #4
	beq _021A322C
	mov r2, #0x10
_021A322C:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r0, [sp, #0x30]
	mov r1, #2
	str r1, [r6, r0]
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r3, #0x18
	str r0, [sp]
	mov r0, #0xa5
	str r0, [sp, #4]
	lsl r3, r3, #0x10
	ldr r0, _021A329C ; =0x00000524
	asr r3, r3, #0x10
	lsl r2, r7, #0x18
	lsl r3, r3, #0x18
	ldr r1, [r5, #0x14]
	add r0, r5, r0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02199A5C
	ldr r1, [sp, #0x2c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x28]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x24]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x20]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C318
	b _021A328E
_021A3280:
	lsl r0, r4, #3
	add r2, r5, r0
	ldr r0, [sp, #0x38]
	mov r1, #0
	str r1, [r2, r0]
	ldr r0, [sp, #0x34]
	str r1, [r2, r0]
_021A328E:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x55
	blo _021A31BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A329C: .word 0x00000524
_021A32A0: .word 0x0000FFFF
	thumb_func_end ovy303_21a314c

	thumb_func_start sub_021A32A4
sub_021A32A4: ; 0x021A32A4
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021A32A4

	thumb_func_start ovy303_21a32a8
ovy303_21a32a8: ; 0x021A32A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #6
	add r5, r0, #0
	bl sub_021A2B04
	add r1, r4, #0
	bl sub_0204C124
	add r0, r5, #0
	mov r1, #7
	bl sub_021A2B04
	add r1, r4, #0
	bl sub_0204C124
	add r0, r5, #0
	mov r1, #8
	bl sub_021A2B04
	add r1, r4, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	thumb_func_end ovy303_21a32a8
_021A32D8:
	.byte 0xC1, 0xFB, 0x19, 0x02, 0xF1, 0xFB, 0x19, 0x02
	.byte 0x11, 0xFC, 0x19, 0x02, 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x1D, 0x04, 0x1A, 0x02
	.byte 0x09, 0xFD, 0x19, 0x02, 0x0D, 0xFE, 0x19, 0x02, 0x01, 0xFF, 0x19, 0x02, 0xC1, 0x01, 0x1A, 0x02
	.byte 0xCD, 0x05, 0x1A, 0x02, 0x11, 0x07, 0x1A, 0x02, 0xD1, 0x08, 0x1A, 0x02, 0x51, 0x02, 0x1A, 0x02
	.byte 0xC1, 0x0A, 0x1A, 0x02, 0x9D, 0x0C, 0x1A, 0x02, 0x9D, 0x04, 0x1A, 0x02, 0x29, 0x0F, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0xE8, 0xFF, 0xA8, 0xBF, 0x60, 0xD4, 0x30, 0x50, 0x20, 0x48
	.byte 0x30, 0x50, 0x48, 0x70, 0x30, 0x50, 0x70, 0x98, 0x30, 0x50, 0x98, 0xC0, 0x30, 0x50, 0xC0, 0xE8
	.byte 0x50, 0x70, 0x20, 0x48, 0x50, 0x70, 0x48, 0x70, 0x50, 0x70, 0x70, 0x98, 0x50, 0x70, 0x98, 0xC0
	.byte 0x50, 0x70, 0xC0, 0xE8, 0x70, 0x90, 0x20, 0x48, 0x70, 0x90, 0x48, 0x70, 0x70, 0x90, 0x70, 0x98
	.byte 0x70, 0x90, 0x98, 0xC0, 0x70, 0x90, 0xC0, 0xE8, 0x90, 0xB0, 0x20, 0x48, 0x90, 0xB0, 0x48, 0x70
	.byte 0x90, 0xB0, 0x70, 0x98, 0x90, 0xB0, 0x98, 0xC0, 0x90, 0xB0, 0xC0, 0xE8, 0xA8, 0xBF, 0xB8, 0xCF
	.byte 0xA8, 0xBF, 0xD0, 0xE7, 0xA8, 0xBF, 0xE8, 0xFF, 0xA8, 0xBF, 0x44, 0x5C, 0xA8, 0xBF, 0x6C, 0x84
	.byte 0xA8, 0xBF, 0x94, 0xAC, 0xA8, 0xBF, 0x00, 0x18, 0xA8, 0xBF, 0x18, 0x30, 0x34, 0x4C, 0x0C, 0x24
	.byte 0x34, 0x4C, 0xE4, 0xF4, 0x30, 0x50, 0x20, 0x48, 0x30, 0x50, 0x48, 0x70, 0x30, 0x50, 0x70, 0x98
	.byte 0x30, 0x50, 0x98, 0xC0, 0x30, 0x50, 0xC0, 0xE8, 0x50, 0x70, 0x20, 0x48, 0x50, 0x70, 0x48, 0x70
	.byte 0x50, 0x70, 0x70, 0x98, 0x50, 0x70, 0x98, 0xC0, 0x50, 0x70, 0xC0, 0xE8, 0x70, 0x90, 0x20, 0x48
	.byte 0x70, 0x90, 0x48, 0x70, 0x70, 0x90, 0x70, 0x98, 0x70, 0x90, 0x98, 0xC0, 0x70, 0x90, 0xC0, 0xE8
	.byte 0x90, 0xB0, 0x20, 0x48, 0x90, 0xB0, 0x48, 0x70, 0x90, 0xB0, 0x70, 0x98, 0x90, 0xB0, 0x98, 0xC0
	.byte 0x90, 0xB0, 0xC0, 0xE8, 0xB8, 0x09, 0xAB, 0x01, 0x18, 0x00, 0xC0, 0x09, 0xB5, 0x01, 0x17, 0x00
	.byte 0xC1, 0x09, 0xBE, 0x01, 0x1C, 0x00, 0xC2, 0x09, 0xBC, 0x01, 0x1A, 0x00, 0xB9, 0x09, 0xC0, 0x01
	.byte 0x1D, 0x00, 0xC3, 0x09, 0xC8, 0x01, 0x20, 0x00, 0xAC, 0x09, 0x1C, 0x00, 0x22, 0x00, 0xC4, 0x09
	.byte 0xEF, 0x01, 0x1E, 0x00, 0xC5, 0x09, 0x46, 0x01, 0x00, 0x00, 0xC6, 0x09, 0x9D, 0x00, 0x29, 0x00
	.byte 0xC7, 0x09, 0xA0, 0x00, 0x15, 0x00, 0xC8, 0x09, 0x49, 0x01, 0x09, 0x00, 0xC9, 0x09, 0x7F, 0x01
	.byte 0x08, 0x00, 0xCA, 0x09, 0x81, 0x01, 0x37, 0x00, 0xCB, 0x09, 0xFD, 0x00, 0x35, 0x00, 0xCC, 0x09
	.byte 0x4B, 0x01, 0x0D, 0x00, 0xCD, 0x09, 0xF7, 0x01, 0x07, 0x00, 0xF0, 0x09, 0xFA, 0x01, 0x03, 0x00
	.byte 0xCE, 0x09, 0x4D, 0x01, 0x31, 0x00, 0xCF, 0x09, 0xC2, 0x00, 0x39, 0x00, 0xD0, 0x09, 0x51, 0x01
	.byte 0x13, 0x00, 0xD1, 0x09, 0x52, 0x01, 0x27, 0x00, 0xD2, 0x09, 0xCD, 0x01, 0x25, 0x00, 0xD3, 0x09
	.byte 0xCE, 0x01, 0x1B, 0x00, 0xB5, 0x09, 0x9C, 0x01, 0x0C, 0x00, 0xD4, 0x09, 0x72, 0x01, 0x32, 0x00
	.byte 0xD5, 0x09, 0xF0, 0x00, 0x0E, 0x00, 0xD6, 0x09, 0x76, 0x01, 0x38, 0x00, 0xD7, 0x09, 0x78, 0x01
	.byte 0x0B, 0x00, 0xD8, 0x09, 0x70, 0x01, 0x2F, 0x00, 0xD9, 0x09, 0xFF, 0x00, 0x05, 0x00, 0xDA, 0x09
	.byte 0x6D, 0x01, 0x2A, 0x00, 0xDB, 0x09, 0x5C, 0x01, 0x1F, 0x00, 0xDC, 0x09, 0x03, 0x02, 0x36, 0x00
	.byte 0xDD, 0x09, 0xCF, 0x01, 0x02, 0x00, 0xDE, 0x09, 0x7A, 0x01, 0x01, 0x00, 0xBF, 0x09, 0x07, 0x01
	.byte 0x0A, 0x00, 0xBA, 0x09, 0xD1, 0x01, 0x24, 0x00, 0xDF, 0x09, 0xDA, 0x01, 0x28, 0x00, 0xE0, 0x09
	.byte 0xE6, 0x00, 0x12, 0x00, 0xE1, 0x09, 0xDB, 0x01, 0x2D, 0x00, 0xE2, 0x09, 0x3D, 0x02, 0x14, 0x00
	.byte 0xE3, 0x09, 0x59, 0x01, 0x19, 0x00, 0xE4, 0x09, 0x5A, 0x01, 0x2E, 0x00, 0xB0, 0x09, 0x71, 0x00
	.byte 0x34, 0x00, 0xE5, 0x09, 0xCD, 0x00, 0x06, 0x00, 0xE6, 0x09, 0xC6, 0x00, 0x04, 0x00, 0xE7, 0x09
	.byte 0x9A, 0x00, 0x23, 0x00, 0xE8, 0x09, 0x41, 0x01, 0x33, 0x00, 0xE9, 0x09, 0x44, 0x01, 0x0F, 0x00
	.byte 0xAA, 0x09, 0x06, 0x00, 0x16, 0x00, 0xEA, 0x09, 0x98, 0x00, 0x26, 0x00, 0xEC, 0x09, 0x3F, 0x01
	.byte 0x30, 0x00, 0xEB, 0x09, 0x3D, 0x01, 0x2C, 0x00, 0xED, 0x09, 0xA7, 0x01, 0x2B, 0x00, 0xEE, 0x09
	.byte 0x83, 0x01, 0x11, 0x00, 0xEF, 0x09, 0xEE, 0x00, 0x21, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x5E, 0x00, 0x5E, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x03, 0x07, 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A32D8
