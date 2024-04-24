    .include "macros/function.inc"
	.include "overlay162.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy162_219ce80
ovy162_219ce80: ; 0x0219CE80
	push {r3, r4, r5, lr}
	mov r2, #0x12
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x16
	lsl r2, r2, #0x10
	mov r5, #0x16
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x9c
	mov r2, #0x16
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x9c
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0x16
	strh r5, [r4, #2]
	bl sub_02006FC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_219ce80

	thumb_func_start ovy162_219ceb4
ovy162_219ceb4: ; 0x0219CEB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0219CF34 ; =0x000006CC
	cmp r1, r0
	bne _0219CEF4
	mov r0, #0xc
	mov r1, #0x10
	mov r2, #0
	mov r3, #3
	bl sub_0204E060
	mov r0, #1
	mov r4, #1
	bl sub_02046DF8
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	mov r0, #8
	mov r1, #0
	bl sub_02046CFC
	add r0, r5, #0
	add r0, #0x94
	str r4, [r0]
_0219CEF4:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #2
	bne _0219CF14
	ldr r0, [r5, #0x4c]
	bl sub_02015CCC
	ldr r1, _0219CF38 ; =0x01E64000
	cmp r0, r1
	bne _0219CF14
	add r0, r5, #0
	ldr r1, _0219CF3C ; =0x00001C84
	add r0, #0x40
	bl ovy162_219d7d8
_0219CF14:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0]
	ldr r0, _0219CF40 ; =0x00001A7C
	cmp r1, r0
	bls _0219CF30
	mov r0, #1
	str r0, [r5, #4]
	mov r0, #5
	strh r0, [r5]
_0219CF30:
	pop {r3, r4, r5, pc}
	nop
_0219CF34: .word 0x000006CC
_0219CF38: .word 0x01E64000
_0219CF3C: .word 0x00001C84
_0219CF40: .word 0x00001A7C
	thumb_func_end ovy162_219ceb4

	thumb_func_start ovy162_219cf44
ovy162_219cf44: ; 0x0219CF44
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xb
	tst r0, r1
	beq _0219CF90
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #1
	bne _0219CF90
	mov r0, #0
	bl sub_02046DF8
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add r0, r4, #0
	ldr r1, _0219D02C ; =0x00001C84
	add r0, #0x40
	bl ovy162_219d7d8
	mov r0, #2
	add r4, #0x94
	add sp, #0x10
	str r0, [r4]
	pop {r4, pc}
_0219CF90:
	bl GCTX_HIDGetPressedKeys
	mov r1, #9
	tst r0, r1
	beq _0219CFFE
	mov r1, #0
	mov r0, #4
	strh r0, [r4]
	str r1, [r4, #4]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0219D030 ; =0x00000286
	mov r1, #2
	mov r2, #0x40
	mov r3, #0
	bl sub_020069F4
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	ldr r1, _0219D034 ; =0x00001B59
	add r0, #0x40
	bl ovy162_219d7d8
	mov r0, #0
	bl sub_02046DF8
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	mov r0, #0xc
	mov r1, #0x10
	mov r2, #0
	mov r3, #3
	bl sub_0204E060
	mov r0, #4
	bl sub_020070C0
	add r4, #8
	add r0, r4, #0
	mov r1, #8
	mov r2, #8
	bl sub_0219D338
	add sp, #0x10
	pop {r4, pc}
_0219CFFE:
	bl sub_0203DF20
	cmp r0, #0x46
	bne _0219D012
	mov r0, #2
	str r0, [r4, #4]
	mov r0, #5
	add sp, #0x10
	strh r0, [r4]
	pop {r4, pc}
_0219D012:
	bl sub_0203DF20
	mov r1, #0x32
	lsl r1, r1, #6
	cmp r0, r1
	bne _0219D026
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #5
	strh r0, [r4]
_0219D026:
	add sp, #0x10
	pop {r4, pc}
	nop
_0219D02C: .word 0x00001C84
_0219D030: .word 0x00000286
_0219D034: .word 0x00001B59
	thumb_func_end ovy162_219cf44

	thumb_func_start ovy162_219d038
ovy162_219d038: ; 0x0219D038
	push {r4, r5, r6, lr}
	add r4, r3, #0
	bl sub_0200703C
	ldrh r0, [r4]
	cmp r0, #8
	bls _0219D048
	b _0219D160
_0219D048:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D054: ; jump table
	.short _0219D066 - _0219D054 - 2 ; case 0
	.short _0219D074 - _0219D054 - 2 ; case 1
	.short _0219D0C4 - _0219D054 - 2 ; case 2
	.short _0219D0D8 - _0219D054 - 2 ; case 3
	.short _0219D0EC - _0219D054 - 2 ; case 4
	.short _0219D100 - _0219D054 - 2 ; case 5
	.short _0219D11E - _0219D054 - 2 ; case 6
	.short _0219D138 - _0219D054 - 2 ; case 7
	.short _0219D15C - _0219D054 - 2 ; case 8
_0219D066:
	bl ovy162_219d1b8
	bl ovy162_219d20c
	mov r0, #1
	strh r0, [r4]
	b _0219D160
_0219D074:
	ldrh r1, [r4, #2]
	add r0, r4, #0
	add r0, #8
	bl ovy162_219d2a0
	add r0, r4, #0
	ldrh r1, [r4, #2]
	add r0, #0x14
	bl ovy162_219d340
	add r0, r4, #0
	ldrh r1, [r4, #2]
	add r0, #0x40
	bl ovy162_219d554
	add r0, r4, #0
	ldrh r1, [r4, #2]
	add r0, #0x54
	bl ovy162_219d844
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	mov r5, #0
	mov r6, #2
	bl sub_0204E060
	add r0, r4, #0
	add r0, #0x8c
	str r5, [r0]
	mov r0, #0
	strh r6, [r4]
	bl sub_02007054
	ldr r0, _0219D164 ; =0x02FFFC3C
	add r4, #0x98
	ldr r0, [r0]
	str r0, [r4]
	b _0219D160
_0219D0C4:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D0D0
	mov r0, #3
	strh r0, [r4]
_0219D0D0:
	add r0, r4, #0
	bl ovy162_219d224
	b _0219D160
_0219D0D8:
	add r0, r4, #0
	bl ovy162_219d224
	add r0, r4, #0
	bl ovy162_219cf44
	add r0, r4, #0
	bl ovy162_219ceb4
	b _0219D160
_0219D0EC:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_02006C40
	cmp r0, #0
	bne _0219D0FE
	mov r0, #5
	strh r0, [r4]
_0219D0FE:
	b _0219D0D0
_0219D100:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	mov r0, #6
	strh r0, [r4]
	add r0, r4, #0
	bl ovy162_219d224
	mov r0, #0x10
	bl sub_020070C0
	b _0219D160
_0219D11E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D136
	bl sub_020070A4
	cmp r0, #0
	bne _0219D136
	bl sub_02007090
	mov r0, #7
	strh r0, [r4]
_0219D136:
	b _0219D0D0
_0219D138:
	add r0, r4, #0
	add r0, #0x54
	bl ovy162_219d8f0
	add r0, r4, #0
	add r0, #0x40
	bl ovy162_219d7b0
	add r0, r4, #0
	add r0, #0x14
	bl ovy162_219d530
	add r4, #8
	add r0, r4, #0
	bl ovy162_219d310
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D15C:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D160:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D164: .word 0x02FFFC3C
	thumb_func_end ovy162_219d038

	thumb_func_start ovy162_219d168
ovy162_219d168: ; 0x0219D168
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r3, #4]
	bl sub_0200700C
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x16
	bl sub_0203A1D0
	cmp r4, #0
	bne _0219D188
	ldr r0, _0219D1A4 ; =0x000000A2
	ldr r1, _0219D1A8 ; =0x021A172C
	b _0219D19A
_0219D188:
	cmp r4, #2
	bne _0219D192
	ldr r0, _0219D1A4 ; =0x000000A2
	ldr r1, _0219D1AC ; =0x021A1A70
	b _0219D19A
_0219D192:
	cmp r4, #3
	bne _0219D1A0
	ldr r0, _0219D1B0 ; =0x000000FD
	ldr r1, _0219D1B4 ; =0x0217D6E4
_0219D19A:
	mov r2, #0
	bl sub_0203A954
_0219D1A0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D1A4: .word 0x000000A2
_0219D1A8: .word 0x021A172C
_0219D1AC: .word 0x021A1A70
_0219D1B0: .word 0x000000FD
_0219D1B4: .word 0x0217D6E4
	thumb_func_end ovy162_219d168

	thumb_func_start ovy162_219d1b8
ovy162_219d1b8: ; 0x0219D1B8
	push {r4, r5, r6, lr}
	ldr r5, _0219D200 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _0219D204 ; =0x0400106C
	add r1, r6, #0
	add r0, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	mov r6, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	add r0, r5, #0
	sub r0, #0x1c
	strh r6, [r0]
	add r0, r4, #0
	sub r0, #0x1c
	strh r6, [r0]
	sub r5, #0x6c
	ldr r1, [r5]
	ldr r0, _0219D208 ; =0xFFFF1FFF
	sub r4, #0x6c
	and r1, r0
	str r1, [r5]
	ldr r1, [r4]
	and r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D200: .word 0x0400006C
_0219D204: .word 0x0400106C
_0219D208: .word 0xFFFF1FFF
	thumb_func_end ovy162_219d1b8

	thumb_func_start ovy162_219d20c
ovy162_219d20c: ; 0x0219D20C
	push {r3, lr}
	ldr r0, _0219D21C ; =0x021A15A8
	bl sub_02046C40
	ldr r0, _0219D220 ; =0x021A14C0
	bl sub_02044710
	pop {r3, pc}
	.align 2, 0
_0219D21C: .word 0x021A15A8
_0219D220: .word 0x021A14C0
	thumb_func_end ovy162_219d20c

	thumb_func_start ovy162_219d224
ovy162_219d224: ; 0x0219D224
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0219D274 ; =0x02FFFC3C
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	sub r4, r1, r0
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0]
	add r0, r5, #0
	ldrh r1, [r5, #2]
	add r0, #8
	bl sub_0219D304
	add r0, r5, #0
	ldrh r1, [r5, #2]
	add r0, #0x14
	bl ovy162_219d4fc
	add r6, r5, #0
	add r6, #0x40
_0219D252:
	ldrh r1, [r5, #2]
	add r0, r6, #0
	bl sub_0219D6FC
	sub r4, r4, #1
	bne _0219D252
	ldrh r1, [r5, #2]
	add r0, r5, #0
	add r0, #0x40
	bl ovy162_219d70c
	add r0, r5, #0
	ldrh r1, [r5, #2]
	add r0, #0x54
	bl sub_0219D8E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D274: .word 0x02FFFC3C
	thumb_func_end ovy162_219d224

	thumb_func_start ovy162_219d278
ovy162_219d278: ; 0x0219D278
	push {r4, lr}
	add r4, r1, #0
	bl sub_0204B7C8
	mov r0, #8
	ldrsh r2, [r4, r0]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	lsl r1, r0, #8
	ldr r0, _0219D298 ; =0xC0330000
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _0219D29C ; =0x04000064
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0219D298: .word 0xC0330000
_0219D29C: .word 0x04000064
	thumb_func_end ovy162_219d278

	thumb_func_start ovy162_219d2a0
ovy162_219d2a0: ; 0x0219D2A0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r3, #2
	bl sub_02048D28
	bl sub_020232D0
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #4
	mov r3, #0x20
	mov r5, #4
	bl GFL_TCBExMgrCreate
	str r0, [r4]
	ldr r0, _0219D300 ; =ovy162_219d278
	add r1, r4, #0
	mov r2, #5
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	mov r0, #0xc
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D300: .word ovy162_219d278
	thumb_func_end ovy162_219d2a0

	thumb_func_start sub_0219D304
sub_0219D304: ; 0x0219D304
	ldr r0, [r0]
	ldr r3, _0219D30C ; =sub_0203A7F4
	bx r3
	nop
_0219D30C: .word sub_0203A7F4
	thumb_func_end sub_0219D304

	thumb_func_start ovy162_219d310
ovy162_219d310: ; 0x0219D310
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl sub_02046DF8
	bl sub_02046DE0
	ldr r0, [r4, #4]
	bl GFL_TCBRemove
	ldr r0, [r4]
	bl GFL_TCBExMgrFree
	bl sub_02048F44
	bl sub_020480A8
	bl sub_02044528
	pop {r4, pc}
	thumb_func_end ovy162_219d310

	thumb_func_start sub_0219D338
sub_0219D338: ; 0x0219D338
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D338

	thumb_func_start ovy162_219d340
ovy162_219d340: ; 0x0219D340
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0219D4E8 ; =0x021A1510
	mov r0, #3
	mov r2, #0
	mov r7, #0
	bl sub_0204476C
	ldr r1, _0219D4EC ; =0x021A1530
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D4F0 ; =0x021A14D0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D4F4 ; =0x021A14F0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	str r7, [sp]
	mov r6, #1
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x1a
	mov r1, #9
	mov r2, #3
	mov r3, #0
	bl sub_0204AD88
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x1a
	mov r1, #0xa
	mov r2, #3
	mov r3, #0
	bl sub_0204AF18
	str r7, [sp]
	mov r0, #0x1a
	mov r1, #8
	mov r2, #0
	mov r3, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	mov r0, #3
	bl sub_02044F90
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #8
	lsl r0, r0, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x1a
	mov r1, #0
	mov r2, #7
	mov r3, #0
	bl sub_0204AD88
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #0x1a
	mov r1, #1
	mov r2, #7
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF18
	str r7, [sp]
	mov r0, #0x1a
	mov r1, #2
	mov r2, #4
	add r3, r7, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	mov r0, #7
	bl sub_02044F90
	mov r0, #7
	add r1, r6, #0
	bl sub_02044C98
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #0x1a
	mov r1, #3
	mov r2, #6
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_0204AF18
	mov r0, #6
	add r1, r6, #0
	bl sub_02044C98
	mov r0, #5
	add r1, r7, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02045604
	mov r0, #2
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #5
	add r1, r7, #0
	mov r2, #0x13
	mov r3, #0x20
	bl BmpWin_CreateDynamic
	str r0, [r5]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	str r0, [r5, #4]
	bl BmpWin_BitmapFill
	ldr r0, [r5]
	bl sub_0204826C
	ldr r0, [r5]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	strb r7, [r5, #0xc]
	str r0, [r5, #8]
	mov r0, #5
	bl sub_02044F90
	str r4, [sp]
	mov r0, #0x17
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl GFL_FontCreate
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl sub_02021998
	str r0, [r5, #0x18]
	ldr r2, _0219D4F8 ; =0x00000175
	add r0, r7, #0
	mov r1, #2
	add r3, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x20]
	mov r0, #0x40
	add r1, r4, #0
	bl GFL_StrBufCreate
	add r2, r0, #0
	ldr r0, [r5, #0x20]
	str r2, [r5, #0x24]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x14]
	add r2, r7, #0
	bl GFL_FontGetBlockWidth
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	lsr r3, r2, #0x1f
	add r3, r2, r3
	str r0, [sp]
	ldr r0, [r5, #0x14]
	asr r3, r3, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r2, #0x80
	sub r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #4]
	asr r2, r2, #0x10
	add r3, r7, #0
	bl sub_02021C7C
	str r6, [r5, #0x10]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D4E8: .word 0x021A1510
_0219D4EC: .word 0x021A1530
_0219D4F0: .word 0x021A14D0
_0219D4F4: .word 0x021A14F0
_0219D4F8: .word 0x00000175
	thumb_func_end ovy162_219d340

	thumb_func_start ovy162_219d4fc
ovy162_219d4fc: ; 0x0219D4FC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	ldr r3, [r4, #0x28]
	mov r0, #6
	lsr r2, r3, #0x1f
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #1
	bl sub_02045E1C
	bl sub_02015878
	cmp r0, #0x17
	ldr r0, [r4, #0x28]
	bne _0219D528
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r4, pc}
_0219D528:
	sub r0, r0, #1
	str r0, [r4, #0x28]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_219d4fc

	thumb_func_start ovy162_219d530
ovy162_219d530: ; 0x0219D530
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x18]
	bl sub_02021A18
	ldr r0, [r4, #0x14]
	bl sub_02022DA8
	ldr r0, [r4]
	bl sub_02048210
	pop {r4, pc}
	thumb_func_end ovy162_219d530

	thumb_func_start ovy162_219d554
ovy162_219d554: ; 0x0219D554
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	add r5, r0, #0
	mov r0, #7
	mov r1, #3
	bl sub_02049D24
	ldr r1, _0219D6CC ; =0x021A14B0
	str r0, [r5]
	bl sub_02049E00
	strh r0, [r5, #4]
	ldrh r1, [r5, #4]
	ldr r0, [r5]
	bl sub_0204A5A8
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x2c]
_0219D57E:
	ldr r0, [sp, #0x2c]
	mov r4, #0
	lsl r1, r0, #2
	ldr r0, _0219D6D0 ; =0x021A1480
	ldr r6, [r0, r1]
	cmp r6, #0
	ble _0219D5AC
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_0219D596:
	ldr r0, [r5]
	add r1, r7, #0
	bl sub_0204A5C0
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_02049974
	add r4, r4, #1
	cmp r4, r6
	blt _0219D596
_0219D5AC:
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	cmp r0, #3
	blo _0219D57E
	ldr r1, _0219D6D4 ; =0x02094BFC
	mov r0, #0x16
	ldrsh r6, [r1, r0]
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	ldr r4, _0219D6D8 ; =0x0000019A
	mov r3, #0
	asr r7, r0, #0x1f
	add r1, r7, #0
	add r2, r4, #0
	str r0, [sp, #0x30]
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0219D6DC ; =0x00000000
	adc r1, r2
	lsr r0, r0, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x34]
	orr r0, r1
	str r0, [sp, #0x34]
	add r1, r6, #0
	bl FX_Div
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	bl FX_Div
	neg r0, r0
	str r0, [sp, #0x28]
	add r0, r4, #0
	mov r1, #2
	str r0, [sp, #0x3c]
	add r0, #0x89
	lsl r1, r1, #0xb
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	bl FX_Div
	ldr r2, [sp, #0x30]
	asr r1, r0, #0x1f
	add r3, r7, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0219D6DC ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r6, #0
	bl FX_Div
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	bl FX_Div
	ldr r2, [sp, #0x30]
	asr r1, r0, #0x1f
	add r3, r7, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _0219D6DC ; =0x00000000
	adc r1, r0
	lsl r1, r1, #0x14
	lsr r0, r2, #0xc
	orr r0, r1
	add r1, r6, #0
	bl FX_Div
	neg r3, r0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp]
	mov r0, #2
	str r4, [sp, #4]
	lsl r0, r0, #0x16
	str r0, [sp, #8]
	ldr r0, _0219D6E0 ; =0x021A148C
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219D6E4 ; =0x021A14A4
	ldr r2, [sp, #0x28]
	str r0, [sp, #0x14]
	ldr r0, _0219D6E8 ; =0x021A1498
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #1
	bl sub_0204A5C8
	str r0, [r5, #0x10]
	add r4, #0x2b
	ldr r0, [sp, #0x20]
	mov r1, #0x9e
	add r2, r4, #0
	bl sub_02015B88
	str r0, [r5, #0xc]
	ldr r0, _0219D6EC ; =0x021A1478
	ldr r1, [sp, #0x20]
	bl sub_0204A6F0
	str r0, [r5, #8]
	bl sub_0204A744
	mov r0, #1
	bl sub_02044BB8
	ldr r0, _0219D6F0 ; =0x04000060
	ldr r2, _0219D6F4 ; =0xFFFFCFFF
	ldrh r1, [r0]
	add r3, r1, #0
	and r3, r2
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0219D6F8 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D6CC: .word 0x021A14B0
_0219D6D0: .word 0x021A1480
_0219D6D4: .word 0x02094BFC
_0219D6D8: .word 0x0000019A
_0219D6DC: .word 0x00000000
_0219D6E0: .word 0x021A148C
_0219D6E4: .word 0x021A14A4
_0219D6E8: .word 0x021A1498
_0219D6EC: .word 0x021A1478
_0219D6F0: .word 0x04000060
_0219D6F4: .word 0xFFFFCFFF
_0219D6F8: .word 0x0000CFFB
	thumb_func_end ovy162_219d554

	thumb_func_start sub_0219D6FC
sub_0219D6FC: ; 0x0219D6FC
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r3, _0219D708 ; =sub_02015C78
	lsl r1, r1, #0xc
	bx r3
	nop
_0219D708: .word sub_02015C78
	thumb_func_end sub_0219D6FC

	thumb_func_start ovy162_219d70c
ovy162_219d70c: ; 0x0219D70C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0]
	ldrh r1, [r1, #4]
	bl sub_0204A5A8
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #0x10]
	ldr r1, [r1, #0xc]
	bl sub_020162A4
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	bl sub_0204A638
	bl sub_02049A98
	bl sub_02049AF0
	ldr r4, _0219D7A8 ; =0x021A15D8
	mov r5, #0
_0219D73E:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r1, r1, r5
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r1, r4, #0
	bl sub_02049B5C
	add r5, r5, #1
	cmp r5, #3
	blo _0219D73E
	bl sub_02049AA0
	mov r0, #0
	mov r7, #1
	str r0, [sp, #8]
	lsl r7, r7, #0xc
_0219D766:
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _0219D7AC ; =0x021A1480
	ldr r4, [r0, r1]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	add r1, r2, r1
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r6, r0, #0
	mov r5, #0
	cmp r4, #0
	ble _0219D79A
_0219D788:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02049A64
	add r5, r5, #1
	cmp r5, r4
	blt _0219D788
_0219D79A:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blo _0219D766
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D7A8: .word 0x021A15D8
_0219D7AC: .word 0x021A1480
	thumb_func_end ovy162_219d70c

	thumb_func_start ovy162_219d7b0
ovy162_219d7b0: ; 0x0219D7B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02015C10
	ldr r0, [r4, #0x10]
	bl sub_0204A630
	ldr r0, [r4, #8]
	bl sub_0204A73C
	ldrh r1, [r4, #4]
	ldr r0, [r4]
	bl sub_02049F4C
	ldr r0, [r4]
	bl sub_02049DDC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_219d7b0

	thumb_func_start ovy162_219d7d8
ovy162_219d7d8: ; 0x0219D7D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsl r1, r1, #0xc
	str r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [r0, #0xc]
	bl sub_02015CAC
	ldr r1, [sp]
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	ldr r0, [r0]
	bl sub_0204A5A8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r7, sp, #0xc
_0219D7FC:
	ldr r0, [sp, #8]
	ldr r2, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _0219D840 ; =0x021A1480
	ldr r4, [r0, r1]
	ldr r1, [sp, #8]
	ldr r0, [sp]
	add r1, r2, r1
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	add r6, r0, #0
	mov r5, #0
	cmp r4, #0
	ble _0219D830
_0219D81E:
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_020499E4
	add r5, r5, #1
	cmp r5, r4
	blt _0219D81E
_0219D830:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blo _0219D7FC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D840: .word 0x021A1480
	thumb_func_end ovy162_219d7d8

	thumb_func_start ovy162_219d844
ovy162_219d844: ; 0x0219D844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x1a
	add r4, r1, #0
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, _0219D8E0 ; =0x02093F08
	ldr r1, _0219D8E4 ; =0x021A15A8
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x40
	mov r1, #0
	add r2, r4, #0
	mov r7, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	str r4, [sp]
	add r0, r6, #0
	mov r1, #5
	mov r2, #1
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x30]
	str r4, [sp]
	add r0, r6, #0
	mov r1, #4
	mov r2, #1
	mov r3, #0
	bl sub_0204BBA0
	str r0, [r5, #0x2c]
	add r0, r6, #0
	mov r1, #6
	mov r2, #7
	add r3, r4, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #0x34]
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	strb r7, [r0, #7]
	strb r7, [r0, #6]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x2c]
	ldr r3, [r5, #0x34]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r5, #4]
	bl sub_0204C520
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D8E0: .word 0x02093F08
_0219D8E4: .word 0x021A15A8
	thumb_func_end ovy162_219d844

	thumb_func_start sub_0219D8E8
sub_0219D8E8: ; 0x0219D8E8
	ldr r3, _0219D8EC ; =sub_0204B794
	bx r3
	.align 2, 0
_0219D8EC: .word sub_0204B794
	thumb_func_end sub_0219D8E8

	thumb_func_start ovy162_219d8f0
ovy162_219d8f0: ; 0x0219D8F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_0204B98C
	ldr r0, [r4, #0x2c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x34]
	bl sub_0204BE64
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_219d8f0

	thumb_func_start ovy162_219d914
ovy162_219d914: ; 0x0219D914
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #0xb
	lsl r2, r0, #0x13
	mov r4, #0xb
	bl GFL_HeapCreateChild
	mov r6, #0x69
	lsl r6, r6, #2
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xb
	bl GFL_ProcInitSubsystem
	add r5, r0, #0
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	bl sub_020072FC
	str r0, [r5]
	bl sub_02008DD0
	str r0, [r5, #4]
	ldr r0, [r5]
	bl sub_0200C838
	str r0, [r5, #8]
	ldr r0, [r5]
	bl sub_02009918
	str r0, [r5, #0xc]
	ldr r0, [r5]
	bl sub_02017A5C
	str r0, [r5, #0x10]
	ldr r0, [r5]
	bl sub_02007468
	cmp r0, #0
	beq _0219D974
	ldr r0, [r5]
	bl sub_020104A4
	str r0, [r5, #0x14]
	b _0219D99A
_0219D974:
	ldr r6, _0219D9A0 ; =0x0000014B
	add r0, r6, #0
	bl sub_0203CE0C
	add r0, r4, #0
	bl sub_021BEA20
	add r4, r0, #0
	bl sub_021BEE80
	bl sub_0201046C
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl sub_021BEC1C
	add r0, r6, #0
	bl sub_0203CDC8
_0219D99A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0219D9A0: .word 0x0000014B
	thumb_func_end ovy162_219d914

	thumb_func_start ovy162_219d9a4
ovy162_219d9a4: ; 0x0219D9A4
	push {r3, r4, r5, lr}
	mov r5, #0x19
	add r4, r3, #0
	lsl r5, r5, #4
	ldr r1, [r4, r5]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0219D9D4 ; =0x021A16F8
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, r5]
	cmp r0, #0xd
	bne _0219D9C2
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D9C2:
	add r4, #0x8c
	ldr r0, [r4]
	bl sub_0203A7F4
	bl sub_0204B794
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219D9D4: .word 0x021A16F8
	thumb_func_end ovy162_219d9a4

	thumb_func_start ovy162_219d9d8
ovy162_219d9d8: ; 0x0219D9D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219DAA4 ; =0x0000017A
	add r1, r4, #3
	ldrb r5, [r3, r4]
	ldrb r6, [r3, r1]
	bl sub_0203AB10
	mov r0, #0xb
	mov r7, #0xb
	bl sub_0203A1D0
	cmp r5, #8
	bhi _0219DA94
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D9FE: ; jump table
	.short _0219DA10 - _0219D9FE - 2 ; case 0
	.short _0219DA24 - _0219D9FE - 2 ; case 1
	.short _0219DA2E - _0219D9FE - 2 ; case 2
	.short _0219DA34 - _0219D9FE - 2 ; case 3
	.short _0219DA5E - _0219D9FE - 2 ; case 4
	.short _0219DA66 - _0219D9FE - 2 ; case 5
	.short _0219DA6C - _0219D9FE - 2 ; case 6
	.short _0219DA72 - _0219D9FE - 2 ; case 7
	.short _0219DA8E - _0219D9FE - 2 ; case 8
_0219DA10:
	bl sub_0202D6A8
	cmp r6, #0
	bne _0219DA1E
	bl sub_021A003C
	b _0219DA9E
_0219DA1E:
	bl sub_021A0024
	b _0219DA9E
_0219DA24:
	bl sub_0202D6A8
	bl sub_021A000C
	b _0219DA9E
_0219DA2E:
	ldr r0, _0219DAA8 ; =0x000000C5
	ldr r1, _0219DAAC ; =0x021BE328
	b _0219DA98
_0219DA34:
	ldr r3, _0219DAB0 ; =0x021A1AE0
	add r4, #0xcd
	mov r0, #1
	mov r1, #0x14
	mov r2, #0
	str r4, [sp]
	mov r5, #1
	mov r6, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	str r6, [r4, #8]
	ldr r0, _0219DAB4 ; =0x00000122
	ldr r1, _0219DAB8 ; =0x021FCF84
	str r5, [r4, #0x10]
	add r2, r4, #0
_0219DA5C:
	b _0219DA9A
_0219DA5E:
	sub r7, #0xc
	add r0, r7, #0
	ldr r1, _0219DABC ; =0x0208FE08
	b _0219DA98
_0219DA66:
	ldr r0, _0219DAC0 ; =0x000000B6
	ldr r1, _0219DAC4 ; =0x021BD2CC
	b _0219DA98
_0219DA6C:
	ldr r0, _0219DAC8 ; =0x000000FD
	ldr r1, _0219DACC ; =0x0217D6E4
	b _0219DA98
_0219DA72:
	ldr r3, _0219DAB0 ; =0x021A1AE0
	add r4, #0xe3
	str r4, [sp]
	mov r0, #1
	mov r1, #8
	mov r2, #1
	mov r4, #1
	bl GFL_HeapAllocate
	add r2, r0, #0
	strb r4, [r2]
	ldr r0, _0219DAD0 ; =0x000000B5
	ldr r1, _0219DAD4 ; =0x021A42B8
	b _0219DA5C
_0219DA8E:
	ldr r0, _0219DAD8 ; =0x0000014C
	ldr r1, _0219DADC ; =0x021C8B64
	b _0219DA98
_0219DA94:
	ldr r0, _0219DAE0 ; =0x000000A2
	ldr r1, _0219DAE4 ; =0x021A1614
_0219DA98:
	mov r2, #0
_0219DA9A:
	bl sub_0203A954
_0219DA9E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DAA4: .word 0x0000017A
_0219DAA8: .word 0x000000C5
_0219DAAC: .word 0x021BE328
_0219DAB0: .word 0x021A1AE0
_0219DAB4: .word 0x00000122
_0219DAB8: .word 0x021FCF84
_0219DABC: .word 0x0208FE08
_0219DAC0: .word 0x000000B6
_0219DAC4: .word 0x021BD2CC
_0219DAC8: .word 0x000000FD
_0219DACC: .word 0x0217D6E4
_0219DAD0: .word 0x000000B5
_0219DAD4: .word 0x021A42B8
_0219DAD8: .word 0x0000014C
_0219DADC: .word 0x021C8B64
_0219DAE0: .word 0x000000A2
_0219DAE4: .word 0x021A1614
	thumb_func_end ovy162_219d9d8

	thumb_func_start ovy162_219dae8
ovy162_219dae8: ; 0x0219DAE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02009B50
	bl sub_020099F4
	cmp r0, #1
	bne _0219DB04
	ldr r0, [r5, #8]
	mov r1, #2
	mov r2, #2
	bl sub_0200CA38
_0219DB04:
	mov r0, #0
	mov r4, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _0219DB7C ; =0x04000050
	strh r4, [r0]
	ldr r0, _0219DB80 ; =0x04001050
	strh r4, [r0]
	mov r0, #1
	bl sub_02046DF8
	bl ovy162_219e4b4
	bl ovy162_219e4c8
	bl ovy162_219e644
	add r0, r5, #0
	bl ovy162_219e750
	add r0, r5, #0
	bl ovy162_219f288
	add r0, r5, #0
	bl ovy162_219f308
	add r0, r5, #0
	bl ovy162_219e804
	add r0, r5, #0
	bl ovy162_219ef2c
	add r0, r5, #0
	bl ovy162_219f18c
	add r0, r5, #0
	bl ovy162_219f3d0
	add r0, r5, #0
	bl ovy162_219e704
	bl ovy162_219f258
	add r0, r5, #0
	bl ovy162_219e490
	ldr r0, [r5]
	bl sub_02007468
	cmp r0, #1
	bne _0219DB76
	add r0, r5, #0
	bl ovy162_219f614
_0219DB76:
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_0219DB7C: .word 0x04000050
_0219DB80: .word 0x04001050
	thumb_func_end ovy162_219dae8

	thumb_func_start ovy162_219db84
ovy162_219db84: ; 0x0219DB84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219DBF0 ; =0x0000017B
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0219DB96
	cmp r1, #1
	beq _0219DB9A
	b _0219DBEA
_0219DB96:
	add r1, r1, #1
	strb r1, [r4, r0]
_0219DB9A:
	bl sub_02042AB8
	cmp r0, #0
	beq _0219DBEA
	add r0, r4, #0
	bl sub_0219E4A8
	add r0, r4, #0
	bl sub_0219E740
	add r0, r4, #0
	bl sub_0219F248
	add r0, r4, #0
	bl ovy162_219f134
	add r0, r4, #0
	bl ovy162_219ef0c
	add r0, r4, #0
	bl ovy162_219f38c
	add r0, r4, #0
	bl ovy162_219e7c4
	bl ovy162_219e600
	ldr r0, _0219DBF4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0219DBF8 ; =0x04001050
	strh r1, [r0]
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r0, #0xd
	pop {r4, pc}
_0219DBEA:
	mov r0, #1
	pop {r4, pc}
	nop
_0219DBF0: .word 0x0000017B
_0219DBF4: .word 0x04000050
_0219DBF8: .word 0x04001050
	thumb_func_end ovy162_219db84

	thumb_func_start ovy162_219dbfc
ovy162_219dbfc: ; 0x0219DBFC
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219DC10
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
_0219DC10:
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ovy162_219dbfc

	thumb_func_start ovy162_219dc14
ovy162_219dc14: ; 0x0219DC14
	push {r3, r4, r5, lr}
	ldr r4, _0219DCA8 ; =0x0000017E
	add r5, r0, #0
	ldrb r1, [r5, r4]
	cmp r1, #4
	bhi _0219DCA2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DC2C: ; jump table
	.short _0219DC36 - _0219DC2C - 2 ; case 0
	.short _0219DC76 - _0219DC2C - 2 ; case 1
	.short _0219DC36 - _0219DC2C - 2 ; case 2
	.short _0219DC76 - _0219DC2C - 2 ; case 3
	.short _0219DC9C - _0219DC2C - 2 ; case 4
_0219DC36:
	add r1, r4, #1
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _0219DC6A
	add r1, r4, #2
	ldrsb r1, [r5, r1]
	bl sub_0219F5FC
	sub r1, r4, #5
	ldrb r1, [r5, r1]
	add r2, r0, #0
	add r0, r5, #0
	add r3, r5, r1
	add r1, r4, #0
	sub r1, #0xe
	ldrb r1, [r3, r1]
	mov r3, #3
_0219DC58:
	bl ovy162_219f5cc
	mov r1, #4
	add r0, r4, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _0219DCA2
_0219DC6A:
	add r0, r4, #1
	ldrb r0, [r5, r0]
	sub r1, r0, #1
	add r0, r4, #1
	strb r1, [r5, r0]
	b _0219DCA2
_0219DC76:
	add r1, r4, #1
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _0219DC9A
	add r1, r4, #2
	ldrsb r1, [r5, r1]
	bl sub_0219F5FC
	sub r1, r4, #5
	ldrb r1, [r5, r1]
	add r2, r0, #0
	add r0, r5, #0
	add r3, r5, r1
	add r1, r4, #0
	sub r1, #0xe
	ldrb r1, [r3, r1]
	mov r3, #1
	b _0219DC58
_0219DC9A:
	b _0219DC6A
_0219DC9C:
	add r4, #0x16
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
_0219DCA2:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_0219DCA8: .word 0x0000017E
	thumb_func_end ovy162_219dc14

	thumb_func_start ovy162_219dcac
ovy162_219dcac: ; 0x0219DCAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A3C
	mov r6, #0
_0219DCBA:
	add r0, r5, #0
	add r0, #0x84
	lsl r4, r6, #3
	ldr r7, [r0]
	add r0, r5, r4
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219DCF4
	add r0, r5, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DCF4
	add r0, r5, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r5, r4
	add r1, #0xa0
	mov r0, #0
	strb r0, [r1]
_0219DCF4:
	add r6, r6, #1
	cmp r6, #0x14
	blo _0219DCBA
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219DD4C
	add r0, r5, #0
	bl ovy162_219fff0
	cmp r0, #1
	bne _0219DD16
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_0219DD16:
	ldr r0, [r5, #8]
	bl sub_0200CA74
	cmp r0, #1
	bne _0219DD42
	ldr r0, [r5, #8]
	mov r1, #0
	bl sub_0200CA78
	mov r0, #6
	mov r1, #0
	bl sub_02046CFC
	add r0, r5, #0
	mov r1, #0
	bl ovy162_219f8c8
	add r0, r5, #0
	mov r1, #9
	bl ovy162_219ff7c
	pop {r3, r4, r5, r6, r7, pc}
_0219DD42:
	add r0, r5, #0
	mov r1, #5
	bl ovy162_219ff7c
	pop {r3, r4, r5, r6, r7, pc}
_0219DD4C:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy162_219dcac

	thumb_func_start ovy162_219dd50
ovy162_219dd50: ; 0x0219DD50
	push {r4, r5, r6, lr}
	mov r5, #0x5b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02035198
	bl GCTX_HIDGetPressedKeys
	mov r6, #1
	tst r0, r6
	beq _0219DE54
	ldr r0, _0219DEB8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0xd
	ldrb r0, [r4, r0]
	add r1, r4, r0
	add r0, r5, #4
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _0219DE54
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DD8A: ; jump table
	.short _0219DD9C - _0219DD8A - 2 ; case 0
	.short _0219DDAA - _0219DD8A - 2 ; case 1
	.short _0219DDB4 - _0219DD8A - 2 ; case 2
	.short _0219DDC2 - _0219DD8A - 2 ; case 3
	.short _0219DDE6 - _0219DD8A - 2 ; case 4
	.short _0219DE2E - _0219DD8A - 2 ; case 5
	.short _0219DE38 - _0219DD8A - 2 ; case 6
	.short _0219DE0A - _0219DD8A - 2 ; case 7
	.short _0219DE46 - _0219DD8A - 2 ; case 8
_0219DD9C:
	add r5, #0xe
	strb r0, [r4, r5]
	add r0, r4, #0
	mov r1, #7
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DDAA:
	add r0, r4, #0
	mov r1, #8
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DDB4:
	add r5, #0xe
	strb r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0xc
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DDC2:
	ldr r0, [r4, #8]
	add r1, r6, #0
	mov r2, #2
	bl sub_0200CA38
	add r0, r5, #0
	add r0, #0xd
	ldrb r0, [r4, r0]
	add r1, r4, r0
	add r0, r5, #4
	ldrb r0, [r1, r0]
	add r5, #0xe
	mov r1, #0xc
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DDE6:
	ldr r0, [r4, #8]
	mov r1, #2
	mov r2, #2
	bl sub_0200CA38
	add r0, r5, #0
	add r0, #0xd
	ldrb r0, [r4, r0]
	add r1, r4, r0
	add r0, r5, #4
	ldrb r0, [r1, r0]
	add r5, #0xe
	mov r1, #0xc
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DE0A:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #2
	bl sub_0200CA38
	add r0, r5, #0
	add r0, #0xd
	ldrb r0, [r4, r0]
	add r1, r4, r0
	add r0, r5, #4
	ldrb r0, [r1, r0]
	add r5, #0xe
	mov r1, #0xc
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DE2E:
	add r0, r4, #0
	mov r1, #0xa
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DE38:
	add r5, #0xe
	strb r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0xc
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DE46:
	add r5, #0xe
	strb r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0xc
	bl ovy162_219ffd4
	pop {r4, r5, r6, pc}
_0219DE54:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219DE74
	ldr r0, _0219DEBC ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, _0219DEC0 ; =0x0000017A
	mov r1, #9
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ovy162_219ffa8
	pop {r4, r5, r6, pc}
_0219DE74:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219DE94
	add r0, r4, #0
	sub r1, #0x41
	bl ovy162_219f77c
	cmp r0, #1
	bne _0219DE94
	ldr r0, _0219DEC4 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #6
	pop {r4, r5, r6, pc}
_0219DE94:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _0219DEB4
	add r0, r4, #0
	mov r1, #1
	bl ovy162_219f77c
	cmp r0, #1
	bne _0219DEB4
	ldr r0, _0219DEC4 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #6
	pop {r4, r5, r6, pc}
_0219DEB4:
	mov r0, #5
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219DEB8: .word 0x0000054C
_0219DEBC: .word 0x00000551
_0219DEC0: .word 0x0000017A
_0219DEC4: .word 0x00000548
	thumb_func_end ovy162_219dd50

	thumb_func_start ovy162_219dec8
ovy162_219dec8: ; 0x0219DEC8
	push {r3, r4, r5, lr}
	mov r4, #0x62
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #3
	bne _0219DF0E
	mov r1, #0
	str r1, [r5, r4]
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_020352B0
	add r1, r4, #0
	sub r1, #8
	ldrsb r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F5FC
	add r1, r4, #0
	sub r1, #0xf
	ldrb r1, [r5, r1]
	add r2, r0, #0
	sub r4, #0x18
	add r1, r5, r1
	ldrb r1, [r1, r4]
	add r0, r5, #0
	mov r3, #2
	bl ovy162_219f5cc
	mov r0, #5
	pop {r3, r4, r5, pc}
_0219DF0E:
	sub r1, r4, #4
	add r0, r1, #0
	ldr r2, [r5, r0]
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r2, r2, r0
	add r0, r1, #0
	str r2, [r5, r0]
	cmp r2, #0
	bge _0219DF28
	add r4, #0x78
	add r0, r2, r4
	b _0219DF34
_0219DF28:
	add r0, r4, #0
	add r0, #0x78
	cmp r2, r0
	blt _0219DF36
	add r4, #0x78
	sub r0, r2, r4
_0219DF34:
	str r0, [r5, r1]
_0219DF36:
	mov r4, #0x61
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	mov r0, #1
	mov r1, #3
	bl sub_02045E1C
	ldr r2, [r5, r4]
	mov r0, #2
	mov r1, #3
	bl sub_02045E1C
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	neg r1, r1
	bl ovy162_219f744
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #4
	str r1, [r5, r0]
	mov r0, #6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_219dec8

	thumb_func_start ovy162_219df6c
ovy162_219df6c: ; 0x0219DF6C
	push {r4, r5, r6, lr}
	ldr r5, _0219E0E4 ; =0x0000017B
	add r4, r0, #0
	ldrb r1, [r4, r5]
	cmp r1, #8
	bhi _0219E010
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DF84: ; jump table
	.short _0219DF96 - _0219DF84 - 2 ; case 0
	.short _0219DFCA - _0219DF84 - 2 ; case 1
	.short _0219DFF2 - _0219DF84 - 2 ; case 2
	.short _0219DFFC - _0219DF84 - 2 ; case 3
	.short _0219E036 - _0219DF84 - 2 ; case 4
	.short _0219E04E - _0219DF84 - 2 ; case 5
	.short _0219E058 - _0219DF84 - 2 ; case 6
	.short _0219E064 - _0219DF84 - 2 ; case 7
	.short _0219E078 - _0219DF84 - 2 ; case 8
_0219DF96:
	mov r0, #6
	mov r1, #0
	mov r6, #0
	bl sub_02046CFC
	add r0, r4, #0
	mov r1, #0
	bl ovy162_219f8c8
	ldr r0, [r4, #0xc]
	bl sub_020098C0
	cmp r0, #0
	bne _0219DFC2
	mov r1, #1
	add r0, r5, #2
	strb r1, [r4, r0]
	add r0, r4, #0
	strb r6, [r4, r5]
	bl ovy162_219ffa8
	pop {r4, r5, r6, pc}
_0219DFC2:
	mov r1, #8
	add r0, r5, #1
	strb r1, [r4, r0]
	b _0219E072
_0219DFCA:
	add r1, r5, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0219DFDE
	add r0, r5, #1
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	add r0, r5, #1
	strb r1, [r4, r0]
	b _0219E0A4
_0219DFDE:
	bl ovy162_219f6fc
	add r0, r4, #0
	mov r1, #0x24
	bl ovy162_219fe0c
	add r0, r4, #0
	bl ovy162_219fc68
	b _0219E072
_0219DFF2:
	bl ovy162_219feac
	cmp r0, #0
	bne _0219E0A4
	b _0219E06C
_0219DFFC:
	add r0, #0x98
	ldr r0, [r0]
	bl sub_02025634
	cmp r0, #0
	beq _0219E012
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0219E02A
_0219E010:
	b _0219E0A4
_0219E012:
	bl sub_02035318
	cmp r0, #0
	bne _0219E026
	add r0, r4, #0
	mov r1, #0x1b
	bl ovy162_219fe0c
	mov r0, #5
	b _0219E0A2
_0219E026:
	mov r1, #0
	b _0219E090
_0219E02A:
	add r0, r4, #0
	mov r1, #0x25
	bl ovy162_219fe0c
	mov r0, #7
	b _0219E0A2
_0219E036:
	bl sub_0219FD20
	add r0, r4, #0
	bl sub_0219FE9C
	mov r0, #0
	strb r0, [r4, r5]
	add r0, r4, #0
	mov r1, #1
	bl ovy162_219ffa8
	pop {r4, r5, r6, pc}
_0219E04E:
	bl ovy162_219feac
	cmp r0, #0
	bne _0219E0A4
	b _0219E072
_0219E058:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219E0A4
	b _0219E08E
_0219E064:
	bl ovy162_219feac
	cmp r0, #0
	bne _0219E0A4
_0219E06C:
	add r0, r4, #0
	bl ovy162_219ff4c
_0219E072:
	ldrb r0, [r4, r5]
	add r0, r0, #1
	b _0219E0A2
_0219E078:
	add r0, #0x98
	ldr r0, [r0]
	bl sub_02025634
	cmp r0, #0
	beq _0219E08E
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0219E098
	b _0219E0A4
_0219E08E:
	mov r1, #1
_0219E090:
	add r0, r5, #2
	strb r1, [r4, r0]
	mov r0, #4
	b _0219E0A2
_0219E098:
	add r0, r4, #0
	mov r1, #0x24
	bl ovy162_219fe0c
	mov r0, #2
_0219E0A2:
	strb r0, [r4, r5]
_0219E0A4:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A3C
	add r0, r4, #0
	mov r6, #5
	add r0, #0x84
	lsl r6, r6, #6
	ldr r5, [r0]
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _0219E0DE
	sub r0, r6, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E0DE
	sub r0, r6, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r4, r6]
_0219E0DE:
	mov r0, #7
	pop {r4, r5, r6, pc}
	nop
_0219E0E4: .word 0x0000017B
	thumb_func_end ovy162_219df6c

	thumb_func_start ovy162_219e0e8
ovy162_219e0e8: ; 0x0219E0E8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219E1DC ; =0x0000017B
	add r5, r0, #0
	ldrb r1, [r5, r4]
	cmp r1, #0
	beq _0219E0FE
	cmp r1, #1
	beq _0219E124
	cmp r1, #2
	beq _0219E132
	b _0219E19C
_0219E0FE:
	add r1, r4, #0
	sub r1, #0xb
	ldrb r1, [r5, r1]
	cmp r1, #1
	bne _0219E118
	mov r1, #1
	sub r2, r4, #1
	strb r1, [r5, r2]
	mov r2, #0
	strb r2, [r5, r4]
	bl ovy162_219ffa8
	pop {r3, r4, r5, r6, r7, pc}
_0219E118:
	bl ovy162_219fa90
_0219E11C:
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _0219E19C
_0219E124:
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219E19C
	b _0219E11C
_0219E132:
	bl GCTX_HIDGetPressedKeys
	mov r6, #1
	tst r0, r6
	beq _0219E15C
	ldr r0, _0219E1E0 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r1, r6, #0
	bl ovy162_219fbf4
	sub r0, r4, #1
	strb r6, [r5, r0]
	mov r0, #0
	strb r0, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy162_219ffa8
	pop {r3, r4, r5, r6, r7, pc}
_0219E15C:
	bl GCTX_HIDGetPressedKeys
	mov r7, #2
	tst r0, r7
	beq _0219E19C
	ldr r0, _0219E1E4 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy162_219fbf4
	add r1, r4, #5
	ldrsb r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F5FC
	sub r1, r4, #2
	ldrb r1, [r5, r1]
	add r2, r0, #0
	add r0, r5, #0
	add r3, r5, r1
	add r1, r4, #0
	sub r1, #0xb
	ldrb r1, [r3, r1]
	add r3, r7, #0
	bl ovy162_219f5cc
	strb r6, [r5, r4]
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219E19C:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A3C
	add r0, r5, #0
	mov r6, #5
	add r0, #0x84
	lsl r6, r6, #6
	ldr r4, [r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _0219E1D6
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E1D6
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, r6]
_0219E1D6:
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E1DC: .word 0x0000017B
_0219E1E0: .word 0x0000054C
_0219E1E4: .word 0x00000551
	thumb_func_end ovy162_219e0e8

	thumb_func_start ovy162_219e1e8
ovy162_219e1e8: ; 0x0219E1E8
	push {r3, r4, r5, lr}
	ldr r5, _0219E280 ; =0x0000017B
	add r4, r0, #0
	ldrb r1, [r4, r5]
	cmp r1, #4
	bhi _0219E27C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219E200: ; jump table
	.short _0219E20A - _0219E200 - 2 ; case 0
	.short _0219E218 - _0219E200 - 2 ; case 1
	.short _0219E222 - _0219E200 - 2 ; case 2
	.short _0219E228 - _0219E200 - 2 ; case 3
	.short _0219E266 - _0219E200 - 2 ; case 4
_0219E20A:
	mov r1, #0x1d
	bl ovy162_219fe0c
_0219E210:
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _0219E27C
_0219E218:
	bl ovy162_219feac
	cmp r0, #0
	bne _0219E27C
	b _0219E210
_0219E222:
	bl sub_0219FE9C
	b _0219E210
_0219E228:
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #1
	bl sub_0200CA38
	add r0, r4, #0
	bl ovy162_219f288
	add r0, r4, #0
	bl ovy162_219f3d0
	add r2, r5, #0
	add r2, #9
	ldr r2, [r4, r2]
	mov r0, #1
	mov r1, #3
	bl sub_02045E1C
	add r2, r5, #0
	add r2, #9
	ldr r2, [r4, r2]
	mov r0, #2
	mov r1, #3
	bl sub_02045E1C
	add r0, r5, #0
	sub r0, #0xf
	ldr r0, [r4, r0]
	bl sub_020352B0
	b _0219E210
_0219E266:
	mov r1, #1
	bl ovy162_219f8c8
	mov r0, #6
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0
	strb r0, [r4, r5]
	mov r0, #5
	pop {r3, r4, r5, pc}
_0219E27C:
	mov r0, #9
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E280: .word 0x0000017B
	thumb_func_end ovy162_219e1e8

	thumb_func_start ovy162_219e284
ovy162_219e284: ; 0x0219E284
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_020352E0
	cmp r0, #1
	bne _0219E33E
	ldr r4, _0219E354 ; =0x0000017B
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _0219E2A2
	cmp r0, #1
	beq _0219E2B0
	cmp r0, #2
	beq _0219E2C0
	b _0219E300
_0219E2A2:
	add r0, r5, #0
	bl ovy162_219fd30
_0219E2A8:
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _0219E300
_0219E2B0:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219E300
	b _0219E2A8
_0219E2C0:
	bl GCTX_HIDGetPressedKeys
	mov r7, #3
	tst r0, r7
	beq _0219E300
	ldr r0, _0219E358 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy162_219fbf4
	lsl r1, r7, #7
	ldrsb r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F5FC
	sub r1, r4, #2
	ldrb r1, [r5, r1]
	add r2, r0, #0
	add r0, r5, #0
	add r3, r5, r1
	add r1, r4, #0
	sub r1, #0xb
	ldrb r1, [r3, r1]
	mov r3, #2
	bl ovy162_219f5cc
	strb r6, [r5, r4]
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0219E300:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A3C
	add r0, r5, #0
	mov r6, #5
	add r0, #0x84
	lsl r6, r6, #6
	ldr r4, [r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _0219E33A
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E33A
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, r6]
_0219E33A:
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_0219E33E:
	ldr r0, _0219E35C ; =0x00000179
	ldrb r1, [r5, r0]
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #9
	ldrb r1, [r2, r1]
	add r0, r0, #1
	strb r1, [r5, r0]
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E354: .word 0x0000017B
_0219E358: .word 0x0000054C
_0219E35C: .word 0x00000179
	thumb_func_end ovy162_219e284

	thumb_func_start ovy162_219e360
ovy162_219e360: ; 0x0219E360
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0219E450 ; =0x0000017B
	add r4, r0, #0
	ldrb r1, [r4, r5]
	cmp r1, #3
	bhi _0219E44A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219E378: ; jump table
	.short _0219E380 - _0219E378 - 2 ; case 0
	.short _0219E3B2 - _0219E378 - 2 ; case 1
	.short _0219E40E - _0219E378 - 2 ; case 2
	.short _0219E42C - _0219E378 - 2 ; case 3
_0219E380:
	mov r0, #0x1e
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0x17
	mov r1, #0
	bl sub_02046D84
	ldr r6, _0219E454 ; =0x00007D8C
	mov r0, #0
	add r1, r6, #0
	bl sub_02045350
	mov r0, #4
	add r1, r6, #0
	bl sub_02045350
	ldrb r0, [r4, r5]
	mov r1, #0xb
	add r0, r0, #1
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy162_219ff7c
	pop {r3, r4, r5, r6, r7, pc}
_0219E3B2:
	add r2, r5, #0
	add r0, r5, #0
	ldr r7, _0219E458 ; =0x021A1844
	add r2, #0x25
	add r0, #0x21
	add r5, #0x25
_0219E3BE:
	ldr r1, [r4, r5]
	cmp r1, #0xb
	blo _0219E3DA
	add r0, r4, #0
	bl sub_0219FE9C
	ldr r0, _0219E450 ; =0x0000017B
	mov r1, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xb
	bl ovy162_219ffa8
	pop {r3, r4, r5, r6, r7, pc}
_0219E3DA:
	lsl r1, r1, #3
	ldr r6, [r4, r0]
	ldr r3, [r7, r1]
	tst r3, r6
	bne _0219E3EC
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	b _0219E3BE
_0219E3EC:
	ldr r2, _0219E45C ; =0x021A1848
	add r0, r4, #0
	ldr r1, [r2, r1]
	bl ovy162_219fe0c
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x25
	ldrb r0, [r4, r0]
	sub r1, #0x25
	add r0, r0, #1
	strb r0, [r4, r1]
	b _0219E44A
_0219E40E:
	bl ovy162_219feac
	cmp r0, #0
	bne _0219E44A
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219E44A
	ldr r0, _0219E460 ; =0x00000547
	bl GFL_SndSEPlay
	mov r0, #1
	strb r0, [r4, r5]
	b _0219E44A
_0219E42C:
	mov r0, #0x1e
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x17
	mov r1, #1
	bl sub_02046D84
	mov r0, #0
	strb r0, [r4, r5]
	add r0, r4, #0
	mov r1, #5
	bl ovy162_219ff7c
	pop {r3, r4, r5, r6, r7, pc}
_0219E44A:
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E450: .word 0x0000017B
_0219E454: .word 0x00007D8C
_0219E458: .word 0x021A1844
_0219E45C: .word 0x021A1848
_0219E460: .word 0x00000547
	thumb_func_end ovy162_219e360
_0219E464:
	.byte 0x01, 0x4B, 0x01, 0x21, 0x18, 0x47, 0xC0, 0x46, 0xA9, 0xFF, 0x19, 0x02

	thumb_func_start ovy162_219e470
ovy162_219e470: ; 0x0219E470
	push {r3, lr}
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r3, _0219E488 ; =0x02FE0000
	ldr r1, _0219E48C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_0219E488: .word 0x02FE0000
_0219E48C: .word 0x00003FF8
	thumb_func_end ovy162_219e470

	thumb_func_start ovy162_219e490
ovy162_219e490: ; 0x0219E490
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219E4A4 ; =ovy162_219e470
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x18]
	pop {r4, pc}
	nop
_0219E4A4: .word ovy162_219e470
	thumb_func_end ovy162_219e490

	thumb_func_start sub_0219E4A8
sub_0219E4A8: ; 0x0219E4A8
	ldr r0, [r0, #0x18]
	ldr r3, _0219E4B0 ; =GFL_TCBRemove
	bx r3
	nop
_0219E4B0: .word GFL_TCBRemove
	thumb_func_end sub_0219E4A8

	thumb_func_start ovy162_219e4b4
ovy162_219e4b4: ; 0x0219E4B4
	push {r3, lr}
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _0219E4C4 ; =0x021A16C8
	bl sub_02046C40
	pop {r3, pc}
	.align 2, 0
_0219E4C4: .word 0x021A16C8
	thumb_func_end ovy162_219e4b4

	thumb_func_start ovy162_219e4c8
ovy162_219e4c8: ; 0x0219E4C8
	push {r4, r5, r6, lr}
	sub sp, #0xf0
	mov r0, #0xb
	bl sub_020444A4
	ldr r4, _0219E5E0 ; =0x021A1738
	add r3, sp, #0xe0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _0219E5E4 ; =0x021A1804
	add r3, sp, #0xc0
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
	mov r5, #0
	bl sub_0204476C
	ldr r4, _0219E5E8 ; =0x021A1824
	add r3, sp, #0xa0
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
	mov r0, #1
	mov r2, #0
	mov r4, #1
	bl sub_0204476C
	ldr r6, _0219E5EC ; =0x021A1784
	add r3, sp, #0x80
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
	ldr r6, _0219E5F0 ; =0x021A17A4
	add r3, sp, #0x60
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
	bl sub_0204476C
	ldr r6, _0219E5F4 ; =0x021A17E4
	add r3, sp, #0x40
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
	ldr r6, _0219E5F8 ; =0x021A1764
	add r3, sp, #0x20
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
	add r2, r5, #0
	bl sub_0204476C
	ldr r6, _0219E5FC ; =0x021A17C4
	add r3, sp, #0
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
	mov r0, #0xf
	add r1, r4, #0
	bl sub_02046CFC
	mov r0, #7
	add r1, r4, #0
	bl sub_02046D84
	add sp, #0xf0
	pop {r4, r5, r6, pc}
	nop
_0219E5E0: .word 0x021A1738
_0219E5E4: .word 0x021A1804
_0219E5E8: .word 0x021A1824
_0219E5EC: .word 0x021A1784
_0219E5F0: .word 0x021A17A4
_0219E5F4: .word 0x021A17E4
_0219E5F8: .word 0x021A1764
_0219E5FC: .word 0x021A17C4
	thumb_func_end ovy162_219e4c8

	thumb_func_start ovy162_219e600
ovy162_219e600: ; 0x0219E600
	push {r3, lr}
	mov r0, #0xf
	mov r1, #0
	bl sub_02046CFC
	mov r0, #7
	mov r1, #0
	bl sub_02046D84
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
	.align 2, 0
	thumb_func_end ovy162_219e600

	thumb_func_start ovy162_219e644
ovy162_219e644: ; 0x0219E644
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0219E700 ; =0x0000800B
	mov r0, #0x22
	bl sub_0204AA30
	mov r1, #0xc0
	str r1, [sp]
	mov r4, #0xb
	str r4, [sp, #4]
	mov r1, #4
	mov r6, #0
	mov r2, #0
	mov r3, #0
	add r5, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	mov r7, #1
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #0xc0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl GFL_ArcToolFree
	mov r0, #0
	mov r1, #1
	mov r2, #0xe
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	mov r5, #0x20
	add r2, r6, #0
	mov r6, #0x1e
	str r5, [sp]
	lsl r6, r6, #4
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r3, r6, #0
	bl sub_0204B0B8
	str r5, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E700: .word 0x0000800B
	thumb_func_end ovy162_219e644

	thumb_func_start ovy162_219e704
ovy162_219e704: ; 0x0219E704
	push {r3, r4, r5, lr}
	ldr r1, _0219E73C ; =0x0000800B
	add r5, r0, #0
	mov r0, #0x22
	bl sub_0204AA30
	add r4, r0, #0
	mov r0, #0x20
	mov r1, #0x10
	mov r2, #2
	mov r3, #0xb
	bl sub_02035024
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x20
	bl sub_02035104
	add r0, r4, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E73C: .word 0x0000800B
	thumb_func_end ovy162_219e704

	thumb_func_start sub_0219E740
sub_0219E740: ; 0x0219E740
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219E74C ; =sub_02035178
	bx r3
	nop
_0219E74C: .word sub_02035178
	thumb_func_end sub_0219E740

	thumb_func_start ovy162_219e750
ovy162_219e750: ; 0x0219E750
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _0219E7C0 ; =0x00000173
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r3, #0xb
	mov r4, #2
	mov r6, #0xb
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x78]
	str r6, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0x74]
	mov r0, #0xb
	bl GFL_WordSetSystemCreateDefault
	str r0, [r5, #0x7c]
	mov r0, #0xb
	bl sub_02021998
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	lsl r0, r4, #9
	mov r1, #0xb
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	mov r0, #0xb
	mov r1, #0xb
	mov r2, #1
	mov r3, #4
	bl GFL_TCBExMgrCreate
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	mov r3, #0xb
	bl sub_0202E7A4
	add r5, #0x90
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219E7C0: .word 0x00000173
	thumb_func_end ovy162_219e750

	thumb_func_start ovy162_219e7c4
ovy162_219e7c4: ; 0x0219E7C4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0202E818
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A18
	ldr r0, [r4, #0x7c]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x74]
	bl sub_02022DA8
	ldr r0, [r4, #0x78]
	bl GFL_MsgDataFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_219e7c4

	thumb_func_start ovy162_219e804
ovy162_219e804: ; 0x0219E804
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	mov r0, #0xb
	bl sub_02048080
	ldr r6, _0219EADC ; =0x021A189C
	mov r4, #0
	mov r7, #1
_0219E816:
	mov r0, #6
	mul r0, r4
	add r3, r6, r0
	ldrb r1, [r3, #4]
	ldrb r0, [r6, r0]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	add r1, r5, r1
	add r1, #0x9c
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #0x14
	blo _0219E816
	ldr r0, [r5, #0x78]
	mov r1, #0
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #4
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xa0
	strb r7, [r0]
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x12
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #4
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xf0
	strb r7, [r0]
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0xd
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x7c]
	ldr r2, [r5, #4]
	mov r1, #0
	bl GFL_CopyVarForText
	add r1, r5, #0
	add r1, #0x80
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #4]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _0219E90A
	add r0, r5, #0
	add r0, #0x84
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r5, #0x74]
	str r0, [sp, #4]
	mov r0, #0x32
	b _0219E92A
_0219E90A:
	add r0, r5, #0
	add r0, #0x84
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r5, #0x74]
	str r0, [sp, #4]
	mov r0, #0x53
_0219E92A:
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xf8
	strb r7, [r0]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x11
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, _0219EAE0 ; =0x0000800B
	mov r4, #0
	bl sub_020186E0
	ldr r0, [r5, #0x10]
	ldr r1, _0219EAE4 ; =0x00000965
	bl sub_020191AC
	cmp r0, #1
	ldr r0, [r5]
	bne _0219E98A
	bl sub_02008F00
	bl sub_02008EF4
	add r6, r0, #0
	ldrh r0, [r6, #4]
	bl sub_02018BFC
	cmp r0, #0
	bne _0219E982
	ldrh r0, [r6, #4]
	bl sub_02018C10
	cmp r0, #0
	beq _0219E986
_0219E982:
	mov r4, #1
	b _0219E9B8
_0219E986:
	ldrh r0, [r6, #4]
	b _0219E9AA
_0219E98A:
	add r1, sp, #0x3c
	bl sub_02008FB8
	add r6, sp, #0x3c
	ldrh r0, [r6]
	bl sub_02018BFC
	cmp r0, #0
	bne _0219E9A6
	ldrh r0, [r6]
	bl sub_02018C10
	cmp r0, #0
	beq _0219E9A8
_0219E9A6:
	b _0219E982
_0219E9A8:
	ldrh r0, [r6]
_0219E9AA:
	bl sub_02018C80
	add r2, r0, #0
	ldr r0, [r5, #0x7c]
	add r1, r4, #0
	bl sub_02024700
_0219E9B8:
	bl sub_02018778
	cmp r4, #0
	beq _0219EA02
	ldr r0, [r5]
	bl sub_02010044
	bl sub_0201006C
	add r6, r0, #0
	mov r0, #0x40
	mov r1, #0xb
	bl GFL_StrBufCreate
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_02038F00
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02048614
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x7c]
	mov r1, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0202437C
	add r0, r4, #0
	bl GFL_StrBufFree
_0219EA02:
	add r1, r5, #0
	add r1, #0x80
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0x84
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x74]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02021C7C
	mov r0, #1
	mov r4, #1
	add r0, #0xff
	strb r4, [r5, r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0xa
	mov r6, #0xa
	bl sub_0204898C
	str r0, [sp, #0x34]
	ldr r0, [r5]
	bl sub_02008DE8
	add r7, r0, #0
	bl sub_02008CEC
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x7c]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	add r0, r7, #0
	bl sub_02008CF0
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x7c]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	add r1, r5, #0
	add r1, #0x80
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	ldr r2, [sp, #0x34]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	mov r0, #0xa
	add r0, #0xfa
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x74]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02021C7C
	add r6, #0xfe
	ldr r0, [sp, #0x34]
	strb r4, [r5, r6]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x10]
	ldr r1, _0219EAE8 ; =0x00000962
	b _0219EAEC
	nop
_0219EADC: .word 0x021A189C
_0219EAE0: .word 0x0000800B
_0219EAE4: .word 0x00000965
_0219EAE8: .word 0x00000962
_0219EAEC:
	bl sub_020191AC
	cmp r0, #1
	bne _0219EB66
	ldr r0, [r5, #0x78]
	mov r1, #0xb
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_0200D184
	mov r1, #0xb
	bl sub_0200D83C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x7c]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	add r1, r5, #0
	add r1, #0x80
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0x84
	ldr r6, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x74]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02021C7C
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r0, #4
	strb r4, [r5, r0]
	add r0, r7, #0
	bl GFL_StrBufFree
_0219EB66:
	ldr r0, [r5, #0x78]
	mov r1, #0xc
	bl sub_0204898C
	str r0, [sp, #0x38]
	ldr r0, [r5]
	bl sub_0200C838
	bl sub_0200C9A0
	mov r6, #0
	add r2, r0, #0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x7c]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	add r1, r5, #0
	add r1, #0x80
	ldr r0, [r5, #0x7c]
	ldr r1, [r1]
	ldr r2, [sp, #0x38]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	mov r4, #0x45
	add r0, #0x84
	lsl r4, r4, #2
	ldr r7, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x74]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02021C7C
	add r1, r4, #4
	mov r0, #1
	strb r0, [r5, r1]
	ldr r0, [sp, #0x38]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x13
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	mov r3, #4
	bl sub_02021C7C
	add r4, #0xc
	mov r0, #1
	strb r0, [r5, r4]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x14]
	mov r4, #0x11
	bl sub_02010528
	cmp r0, #0
	bne _0219EC26
	mov r6, #0x14
	b _0219EC2C
_0219EC26:
	cmp r0, #2
	bne _0219EC2C
	mov r6, #0x15
_0219EC2C:
	cmp r6, #0
	beq _0219EC74
	ldr r0, [r5, #0x78]
	add r1, r6, #0
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	mov r7, #1
	bl sub_02021C7C
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r0, #4
	strb r7, [r5, r0]
	add r0, r6, #0
	bl GFL_StrBufFree
	add r4, r4, #1
_0219EC74:
	ldr r0, [r5, #0x14]
	bl sub_02010564
	mov r1, #0
	cmp r0, #0
	beq _0219EC82
	mov r1, #0x16
_0219EC82:
	cmp r1, #0
	beq _0219ECCA
	ldr r0, [r5, #0x78]
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	lsl r6, r4, #3
	str r0, [sp, #0x2c]
	add r0, r5, r6
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, r6
	add r1, #0xa0
	mov r0, #1
	strb r0, [r1]
	add r0, r7, #0
	bl GFL_StrBufFree
	add r4, r4, #1
_0219ECCA:
	ldr r0, [r5, #0x14]
	bl sub_020105A0
	mov r1, #0
	cmp r0, #1
	bne _0219ECDA
	mov r1, #0x19
	b _0219ECE0
_0219ECDA:
	cmp r0, #2
	bne _0219ECE0
	mov r1, #0x1a
_0219ECE0:
	cmp r1, #0
	beq _0219ED24
	ldr r0, [r5, #0x78]
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	lsl r4, r4, #3
	ldr r7, [r0]
	add r0, r5, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	mov r7, #1
	bl sub_02021C7C
	add r0, r5, r4
	add r0, #0xa0
	strb r7, [r0]
	add r0, r6, #0
	bl GFL_StrBufFree
_0219ED24:
	ldr r0, [r5, #0x78]
	mov r1, #1
	mov r4, #1
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r6, #0x11
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	lsl r6, r6, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r2, #0
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xa8
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #2
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xb0
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #4
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xb8
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #5
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xc0
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #3
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xc8
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #7
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xd0
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #6
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xd8
	strb r4, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #8
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02021C7C
	add r5, #0xe0
	add r0, r7, #0
	strb r4, [r5]
	bl GFL_StrBufFree
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy162_219e804

	thumb_func_start ovy162_219ef0c
ovy162_219ef0c: ; 0x0219EF0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219EF12:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #0x14
	blo _0219EF12
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_219ef0c

	thumb_func_start ovy162_219ef2c
ovy162_219ef2c: ; 0x0219EF2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r4, _0219F118 ; =0x021A1748
	add r5, r0, #0
	ldmia r4!, {r0, r1}
	add r3, sp, #0xc
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r1, _0219F11C ; =0x021A16C8
	str r0, [r3]
	add r0, r2, #0
	mov r2, #0xb
	mov r6, #0xb
	bl sub_0204B6A8
	ldr r1, _0219F120 ; =0x0000800B
	mov r0, #0x1e
	bl sub_0204AA30
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	str r6, [sp]
	bne _0219EF90
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x44]
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	mov r3, #0
	str r6, [sp]
	bl sub_0204BBA0
	str r0, [r5, #0x54]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	b _0219EFB4
_0219EF90:
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x44]
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	mov r3, #0
	str r6, [sp]
	bl sub_0204BBA0
	str r0, [r5, #0x54]
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
_0219EFB4:
	add r3, r6, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #0x64]
	add r0, r4, #0
	bl GFL_ArcToolFree
	ldr r1, _0219F120 ; =0x0000800B
	mov r0, #0x22
	bl sub_0204AA30
	mov r7, #0xb
	str r7, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	add r6, r0, #0
	mov r4, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x48]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	mov r3, #0x20
	bl sub_0204BBA0
	str r0, [r5, #0x58]
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #0xb
	bl Oam_LoadNCERFile
	str r0, [r5, #0x68]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #1
	mov r3, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x4c]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	mov r3, #0x40
	bl sub_0204BBA0
	str r0, [r5, #0x5c]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #0x15
	mov r3, #0xb
	bl Oam_LoadNCERFile
	str r0, [r5, #0x6c]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #1
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x50]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #1
	mov r3, #0x20
	bl sub_0204BBA0
	str r0, [r5, #0x60]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0x11
	mov r3, #0xb
	bl Oam_LoadNCERFile
	str r0, [r5, #0x70]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #9
	mov r1, #0
	mov r2, #0xb
	bl sub_0204BF1C
	str r0, [r5, #0x1c]
	ldr r0, _0219F124 ; =0x021A1674
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x54]
	ldr r3, [r5, #0x64]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r5, #0x34]
	bl sub_0204C124
	add r7, r4, #0
_0219F08A:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _0219F128 ; =0x021A1684
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x58]
	ldr r3, [r5, #0x68]
	bl Oam_CreateSprite
	str r0, [r6, #0x20]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r6, #0x20]
	add r1, r7, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #3
	bls _0219F08A
	ldr r0, _0219F12C ; =0x021A167C
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x4c]
	ldr r2, [r5, #0x5c]
	ldr r3, [r5, #0x6c]
	bl Oam_CreateSprite
	ldr r7, _0219F130 ; =0x021A168C
	str r0, [r5, #0x30]
	mov r4, #6
_0219F0D6:
	lsl r0, r4, #2
	add r6, r5, r0
	sub r0, r4, #6
	lsl r0, r0, #3
	add r0, r7, r0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x50]
	ldr r2, [r5, #0x60]
	ldr r3, [r5, #0x70]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r6, #0x20]
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #8
	bls _0219F0D6
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F118: .word 0x021A1748
_0219F11C: .word 0x021A16C8
_0219F120: .word 0x0000800B
_0219F124: .word 0x021A1674
_0219F128: .word 0x021A1684
_0219F12C: .word 0x021A167C
_0219F130: .word 0x021A168C
	thumb_func_end ovy162_219ef2c

	thumb_func_start ovy162_219f134
ovy162_219f134: ; 0x0219F134
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0219F13A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #9
	blo _0219F13A
	ldr r0, [r4, #0x1c]
	bl sub_0204BF98
	mov r5, #0
_0219F152:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x44]
	bl sub_0204B98C
	add r5, r5, #1
	cmp r5, #4
	blo _0219F152
	mov r5, #0
_0219F164:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x54]
	bl sub_0204BCD0
	add r5, r5, #1
	cmp r5, #4
	blo _0219F164
	mov r5, #0
_0219F176:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x64]
	bl sub_0204BE64
	add r5, r5, #1
	cmp r5, #4
	blo _0219F176
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_219f134

	thumb_func_start ovy162_219f18c
ovy162_219f18c: ; 0x0219F18C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	mov r1, #9
	mov r2, #0xb
	mov r4, #0
	bl sub_020330C8
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r7, _0219F244 ; =0x021A16A4
	str r0, [r5, r1]
	add r6, r5, r1
_0219F1A6:
	lsl r0, r4, #2
	add r0, r7, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	mov r2, #1
	str r0, [sp]
	ldr r0, [r6]
	mov r3, #0x1a
	bl sub_02033150
	add r4, r4, #1
	cmp r4, #9
	blo _0219F1A6
	mov r4, #0x5a
	add r2, r5, #0
	lsl r4, r4, #2
	add r2, #0x9c
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #0
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xa4
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #1
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xac
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #2
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xb4
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #3
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xbc
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #4
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xc4
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #5
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xcc
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #6
	bl sub_020335C4
	add r2, r5, #0
	add r2, #0xd4
	ldr r0, [r5, r4]
	ldr r2, [r2]
	mov r1, #7
	bl sub_020335C4
	ldr r0, [r5, r4]
	add r5, #0xdc
	ldr r2, [r5]
	mov r1, #8
	bl sub_020335C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F244: .word 0x021A16A4
	thumb_func_end ovy162_219f18c

	thumb_func_start sub_0219F248
sub_0219F248: ; 0x0219F248
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219F254 ; =sub_02033120
	bx r3
	nop
_0219F254: .word sub_02033120
	thumb_func_end sub_0219F248

	thumb_func_start ovy162_219f258
ovy162_219f258: ; 0x0219F258
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _0219F280 ; =0x04000050
	mov r4, #3
	mov r1, #4
	mov r2, #8
	mov r3, #0x10
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _0219F284 ; =0x04001050
	mov r1, #2
	mov r2, #4
	mov r3, #0x10
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219F280: .word 0x04000050
_0219F284: .word 0x04001050
	thumb_func_end ovy162_219f258

	thumb_func_start ovy162_219f288
ovy162_219f288: ; 0x0219F288
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	bl sub_02007468
	cmp r0, #1
	bne _0219F2A0
	mov r0, #0x17
	lsl r0, r0, #4
	strb r4, [r5, r0]
	add r4, r4, #1
_0219F2A0:
	mov r6, #0x17
	add r0, r5, r4
	lsl r6, r6, #4
	mov r1, #1
	strb r1, [r0, r6]
	mov r3, #2
	add r2, r6, #1
	strb r3, [r0, r2]
	mov r3, #8
	add r2, r6, #2
	strb r3, [r0, r2]
	ldr r0, [r5, #8]
	add r4, r4, #3
	bl sub_0200CA50
	cmp r0, #0
	beq _0219F2CA
	add r0, r5, r4
	mov r1, #3
	strb r1, [r0, r6]
	add r4, r4, #1
_0219F2CA:
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0200CA50
	cmp r0, #0
	beq _0219F2E2
	mov r0, #0x17
	add r1, r5, r4
	mov r2, #4
	lsl r0, r0, #4
	strb r2, [r1, r0]
	add r4, r4, #1
_0219F2E2:
	mov r0, #0x17
	add r3, r5, r4
	mov r1, #5
	lsl r0, r0, #4
	strb r1, [r3, r0]
	mov r2, #6
	add r1, r0, #1
	add r4, r4, #2
	strb r2, [r3, r1]
	cmp r4, #9
	bhs _0219F304
	mov r2, #9
_0219F2FA:
	add r1, r5, r4
	add r4, r4, #1
	strb r2, [r1, r0]
	cmp r4, #9
	blo _0219F2FA
_0219F304:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy162_219f288

	thumb_func_start ovy162_219f308
ovy162_219f308: ; 0x0219F308
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _0219F380 ; =0x0000800B
	str r0, [sp, #4]
	mov r0, #0x22
	bl sub_0204AA30
	str r0, [sp, #8]
	mov r4, #0
_0219F31A:
	ldr r0, _0219F384 ; =0x021A16A4
	lsl r6, r4, #2
	add r0, r0, r6
	ldrh r1, [r0, #2]
	mov r0, #0x34
	ldr r3, _0219F388 ; =0x021A1AE0
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r5, r0, r6
	mov r0, #0x23
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0xb
	mov r2, #0
	bl GFL_HeapAllocate
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, _0219F384 ; =0x021A16A4
	mov r0, #0xb
	str r0, [sp]
	ldrh r1, [r1, r6]
	ldr r0, [sp, #8]
	mov r2, #1
	add r3, sp, #0xc
	bl sub_0204B32C
	mov r1, #0x51
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, #0xc
	add r2, r7, #0
	blx MIi_CpuCopy16
	add r0, r6, #0
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #9
	blo _0219F31A
	ldr r0, [sp, #8]
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F380: .word 0x0000800B
_0219F384: .word 0x021A16A4
_0219F388: .word 0x021A1AE0
	thumb_func_end ovy162_219f308

	thumb_func_start ovy162_219f38c
ovy162_219f38c: ; 0x0219F38C
	push {r4, r5, r6, lr}
	mov r6, #0x51
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0219F396:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_HeapFree
	add r4, r4, #1
	cmp r4, #9
	blo _0219F396
	pop {r4, r5, r6, pc}
	thumb_func_end ovy162_219f38c

	thumb_func_start ovy162_219f3a8
ovy162_219f3a8: ; 0x0219F3A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r5, #0x20
	lsl r4, r1, #2
	add r7, sp, #0
	add r6, r2, #0
	ldr r0, [r5, r4]
	add r1, r7, #0
	mov r2, #0
	bl Oam_GetSpritePosData
	add r0, sp, #0
	strh r6, [r0, #2]
	ldr r0, [r5, r4]
	add r1, r7, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy162_219f3a8

	thumb_func_start ovy162_219f3d0
ovy162_219f3d0: ; 0x0219F3D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0219F54C ; =0x00000179
	ldr r1, [sp]
	str r0, [sp, #4]
	strb r1, [r5, r0]
	add r1, r0, #0
	ldr r0, [sp]
	add r1, #0xb
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r4, #2
	add r0, r0, #7
	strb r4, [r5, r0]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	sub r0, #9
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	sub r0, #9
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0xc]
	sub r0, #9
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	sub r0, #9
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	str r0, [sp, #0x18]
	sub r0, #9
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	sub r0, #9
	str r0, [sp, #4]
_0219F420:
	ldr r0, [sp]
	add r6, r5, r0
	ldr r0, [sp, #4]
	ldrb r1, [r6, r0]
	cmp r1, #9
	bne _0219F42E
	b _0219F534
_0219F42E:
	add r0, r5, #0
	add r2, r4, #0
	bl ovy162_219f554
	ldr r0, [sp, #8]
	ldrb r2, [r6, r0]
	cmp r2, #0
	beq _0219F512
	cmp r2, #5
	bne _0219F466
	lsl r3, r2, #2
	ldr r2, _0219F550 ; =0x021A16A4
	lsl r7, r4, #3
	add r2, r2, r3
	ldrh r2, [r2, #2]
	add r0, r5, #0
	mov r1, #4
	lsl r2, r2, #3
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r2, r3, #1
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ovy162_219f3a8
	ldr r0, [r5, #0x30]
	b _0219F50C
_0219F466:
	cmp r2, #3
	bne _0219F49E
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200CA50
	cmp r0, #1
	bne _0219F512
	ldr r2, [sp, #0xc]
	lsl r7, r4, #3
	ldrb r2, [r6, r2]
	add r0, r5, #0
	mov r1, #1
	lsl r3, r2, #2
	ldr r2, _0219F550 ; =0x021A16A4
	add r2, r2, r3
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r2, r3, #1
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ovy162_219f3a8
	ldr r0, [r5, #0x24]
	b _0219F50C
_0219F49E:
	cmp r2, #4
	bne _0219F4D6
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0200CA50
	cmp r0, #1
	bne _0219F512
	ldr r2, [sp, #0x10]
	lsl r7, r4, #3
	ldrb r2, [r6, r2]
	add r0, r5, #0
	mov r1, #2
	lsl r3, r2, #2
	ldr r2, _0219F550 ; =0x021A16A4
	add r2, r2, r3
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r2, r3, #1
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ovy162_219f3a8
	ldr r0, [r5, #0x28]
	b _0219F50C
_0219F4D6:
	cmp r2, #7
	bne _0219F512
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_0200CA50
	cmp r0, #1
	bne _0219F512
	ldr r2, [sp, #0x14]
	lsl r7, r4, #3
	ldrb r2, [r6, r2]
	add r0, r5, #0
	mov r1, #3
	lsl r3, r2, #2
	ldr r2, _0219F550 ; =0x021A16A4
	add r2, r2, r3
	ldrh r2, [r2, #2]
	lsl r2, r2, #3
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r2, r3, #1
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ovy162_219f3a8
	ldr r0, [r5, #0x2c]
_0219F50C:
	mov r1, #1
	bl sub_0204C124
_0219F512:
	ldr r0, [sp, #0x18]
	ldrb r0, [r6, r0]
	lsl r1, r0, #2
	ldr r0, _0219F550 ; =0x021A16A4
	add r0, r0, r1
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	add r0, r4, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #9
	bhs _0219F534
	b _0219F420
_0219F534:
	mov r2, #0x17
	lsl r2, r2, #4
	ldrb r1, [r5, r2]
	add r2, #0x10
	ldrsb r2, [r5, r2]
	add r0, r5, #0
	mov r3, #2
	bl ovy162_219f5cc
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219F54C: .word 0x00000179
_0219F550: .word 0x021A16A4
	thumb_func_end ovy162_219f3d0

	thumb_func_start ovy162_219f554
ovy162_219f554: ; 0x0219F554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x18]
	ldr r0, _0219F5C8 ; =0x021A16A6
	lsl r1, r1, #2
	ldrh r4, [r0, r1]
	lsl r0, r2, #0x18
	lsr r7, r0, #0x18
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r6, #0x51
	str r0, [sp]
	add r1, r5, r1
	lsl r6, r6, #2
	ldr r1, [r1, r6]
	add r2, r7, #0
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0x1a
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #3
	mov r3, #0x1a
	bl sub_020454D4
	add r6, #0x24
	ldr r0, [r5, r6]
	ldr r1, [sp, #0x18]
	bl sub_0203368C
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x1a
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, #1
	mov r1, #3
	add r2, r7, #0
	mov r3, #0x1a
	bl sub_020454D4
	mov r0, #1
	bl sub_02045B7C
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F5C8: .word 0x021A16A6
	thumb_func_end ovy162_219f554

	thumb_func_start ovy162_219f5cc
ovy162_219f5cc: ; 0x0219F5CC
	push {r3, lr}
	sub sp, #8
	ldr r0, _0219F5F8 ; =0x021A16A6
	lsl r1, r1, #2
	ldrh r0, [r0, r1]
	lsl r2, r2, #0x18
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #2
	lsr r2, r2, #0x18
	mov r3, #0x1a
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	add sp, #8
	pop {r3, pc}
	nop
_0219F5F8: .word 0x021A16A6
	thumb_func_end ovy162_219f5cc

	thumb_func_start sub_0219F5FC
sub_0219F5FC: ; 0x0219F5FC
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	add r0, r1, r0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F5FC

	thumb_func_start ovy162_219f614
ovy162_219f614: ; 0x0219F614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0
	str r0, [sp, #0xc]
	mov r7, #6
	mov r6, #0x11
	mov r4, #0xa
_0219F62C:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204826C
	add r4, r4, #1
	cmp r4, #0xf
	ble _0219F62C
	ldr r0, [r5, #0x14]
	bl sub_02010528
	cmp r0, #1
	beq _0219F662
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0204826C
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl sub_0204C124
	add r7, r7, #1
	add r6, r6, #1
_0219F662:
	ldr r0, [r5, #0x14]
	bl sub_02010564
	cmp r0, #1
	bne _0219F68C
	lsl r0, r6, #3
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204826C
	lsl r0, r7, #2
	add r0, r5, r0
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_0204C124
	add r7, r7, #1
	add r6, r6, #1
_0219F68C:
	ldr r0, [r5, #0x14]
	bl sub_020105A0
	cmp r0, #0
	beq _0219F6B2
	lsl r0, r6, #3
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204826C
	lsl r0, r7, #2
	add r0, r5, r0
	mov r1, #1
	str r1, [sp, #0xc]
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_0204C124
_0219F6B2:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0219F6D4
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0204826C
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0x22
	mov r1, #9
	b _0219F6E4
_0219F6D4:
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0x22
	mov r1, #8
_0219F6E4:
	mov r2, #5
	bl sub_0204AF18
	mov r0, #4
	bl sub_02045B7C
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy162_219f614

	thumb_func_start ovy162_219f6fc
ovy162_219f6fc: ; 0x0219F6FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xa
_0219F702:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020484B4
	add r4, r4, #1
	cmp r4, #0x13
	ble _0219F702
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0204C124
	mov r0, #4
	bl sub_02045B7C
	mov r0, #5
	mov r1, #0
	bl sub_02045790
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_219f6fc

	thumb_func_start ovy162_219f744
ovy162_219f744: ; 0x0219F744
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	lsl r0, r1, #0x10
	mov r4, #0
	asr r6, r0, #0x10
_0219F74E:
	lsl r0, r4, #2
	add r5, r7, r0
	ldr r0, [r5, #0x20]
	add r1, sp, #0
	mov r2, #0
	bl Oam_GetSpritePosData
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r2, #0
	add r1, r0, r6
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r5, #0x20]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #5
	blo _0219F74E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy162_219f744

	thumb_func_start ovy162_219f77c
ovy162_219f77c: ; 0x0219F77C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _0219F8C0 ; =0x00000179
	add r5, r0, #0
	add r7, r1, #0
	ldrb r1, [r5, r4]
	add r2, r4, #0
	sub r2, #9
	add r3, r5, r1
	ldrb r2, [r3, r2]
	mov r6, #0
	str r2, [sp, #0xc]
	add r2, r4, #0
	add r2, #0xf
	str r6, [r5, r2]
	cmp r7, #0
	bge _0219F824
	cmp r1, #0
	bne _0219F7A8
	add sp, #0x10
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F7A8:
	add r1, r1, r7
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	str r1, [sp, #4]
	add r2, r5, r1
	add r1, r4, #0
	sub r1, #9
	ldrb r1, [r2, r1]
	lsl r2, r1, #2
	ldr r1, _0219F8C4 ; =0x021A16A6
	ldrh r1, [r1, r2]
	str r1, [sp]
	add r1, r4, #7
	ldrsb r1, [r5, r1]
	ldr r2, [sp]
	sub r2, r1, r2
	lsl r2, r2, #0x18
	asr r6, r2, #0x18
	bl sub_0219F5FC
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r3, #1
	bl ovy162_219f5cc
	add r0, r4, #0
	sub r0, #9
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0219F822
	cmp r6, #2
	bge _0219F820
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0219F812
	add r0, r4, #7
	ldrsb r0, [r5, r0]
	mov r6, #3
	sub r1, r0, #2
	ldr r0, [sp]
	sub r0, r0, r1
	mov r1, #3
	blx sub_0208D65C
	lsl r0, r0, #3
	neg r0, r0
	add r4, #0x13
	str r0, [r5, r4]
	mov r1, #2
	lsl r0, r6, #7
	strb r1, [r5, r0]
	b _0219F8AC
_0219F812:
	ldr r0, [sp]
	mov r1, #3
	blx sub_0208D65C
	lsl r0, r0, #3
	neg r0, r0
	b _0219F890
_0219F820:
	b _0219F8A8
_0219F822:
	b _0219F8A8
_0219F824:
	add r3, r1, r7
	cmp r3, #9
	blt _0219F830
	add sp, #0x10
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F830:
	add r1, r4, #0
	add r2, r5, r3
	sub r1, #9
	ldrb r1, [r2, r1]
	cmp r1, #9
	bne _0219F842
	add sp, #0x10
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F842:
	lsl r1, r3, #0x18
	asr r1, r1, #0x18
	add r2, r5, r1
	add r1, r4, #0
	sub r1, #9
	ldrb r1, [r2, r1]
	str r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r1, r4, #7
	lsl r3, r2, #2
	ldr r2, _0219F8C4 ; =0x021A16A6
	ldrsb r1, [r5, r1]
	ldrh r2, [r2, r3]
	add r2, r1, r2
	lsl r2, r2, #0x18
	asr r6, r2, #0x18
	bl sub_0219F5FC
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r3, #1
	bl ovy162_219f5cc
	add r0, r4, #0
	sub r0, #9
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0219F8A8
	cmp r6, #0x18
	bne _0219F896
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, _0219F8C4 ; =0x021A16A6
	ldrh r0, [r0, r1]
_0219F888:
	mov r1, #3
	blx sub_0208D65C
	lsl r0, r0, #3
_0219F890:
	add r4, #0x13
	str r0, [r5, r4]
	b _0219F8AC
_0219F896:
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, _0219F8C4 ; =0x021A16A6
	ldrh r0, [r0, r1]
	add r1, r6, r0
	cmp r1, #0x18
	ble _0219F8A6
	b _0219F888
_0219F8A6:
	b _0219F8A8
_0219F8A8:
	add r0, r4, #7
	strb r6, [r5, r0]
_0219F8AC:
	ldr r1, _0219F8C0 ; =0x00000179
	lsl r0, r7, #0x18
	ldrb r2, [r5, r1]
	lsr r0, r0, #0x18
	add r0, r2, r0
	strb r0, [r5, r1]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F8C0: .word 0x00000179
_0219F8C4: .word 0x021A16A6
	thumb_func_end ovy162_219f77c

	thumb_func_start ovy162_219f8c8
ovy162_219f8c8: ; 0x0219F8C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bne _0219F8E6
	mov r4, #0
_0219F8D2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #4
	bls _0219F8D2
	pop {r3, r4, r5, r6, r7, pc}
_0219F8E6:
	mov r7, #0x17
	mov r4, #0
	mov r6, #1
	lsl r7, r7, #4
_0219F8EE:
	add r0, r5, r4
	ldrb r0, [r0, r7]
	cmp r0, #9
	beq _0219F946
	cmp r0, #3
	bne _0219F90C
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_0200CA50
	cmp r0, #1
	bne _0219F940
	ldr r0, [r5, #0x24]
	add r1, r6, #0
	b _0219F93C
_0219F90C:
	cmp r0, #4
	bne _0219F920
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0200CA50
	cmp r0, #1
	bne _0219F940
	ldr r0, [r5, #0x28]
	b _0219F93A
_0219F920:
	cmp r0, #7
	bne _0219F934
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_0200CA50
	cmp r0, #1
	bne _0219F940
	ldr r0, [r5, #0x2c]
	b _0219F93A
_0219F934:
	cmp r0, #5
	bne _0219F940
	ldr r0, [r5, #0x30]
_0219F93A:
	mov r1, #1
_0219F93C:
	bl sub_0204C124
_0219F940:
	add r4, r4, #1
	cmp r4, #9
	blo _0219F8EE
_0219F946:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy162_219f8c8

	thumb_func_start ovy162_219f948
ovy162_219f948: ; 0x0219F948
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x38]
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r6, r1, #0
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r3, r6, #0
	bl sub_02045604
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r6, #0
	add r0, r1, r0
	sub r0, r0, #1
	str r0, [sp, #0x20]
	ldr r2, [sp, #0x20]
	str r4, [sp]
	str r4, [sp, #4]
	lsl r2, r2, #0x18
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	lsr r2, r2, #0x18
	bl sub_02045604
	ldr r0, [sp, #0x14]
	mov r1, #7
	str r4, [sp]
	add r0, r6, r0
	sub r7, r0, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	lsl r3, r7, #0x18
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	lsr r3, r3, #0x18
	bl sub_02045604
	ldr r2, [sp, #0x20]
	str r4, [sp]
	str r4, [sp, #4]
	lsl r2, r2, #0x18
	lsl r3, r7, #0x18
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #9
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02045604
	ldr r0, [sp, #0x10]
	mov r1, #2
	sub r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r2, r2, #0x18
	str r4, [sp, #4]
	add r0, r5, #0
	lsr r2, r2, #0x18
	str r4, [sp, #8]
	bl sub_02045604
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	lsl r2, r2, #0x18
	lsl r3, r7, #0x18
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #8
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02045604
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	sub r7, r0, #2
	lsl r0, r7, #0x18
	lsl r3, r6, #0x18
	str r4, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	lsr r3, r3, #0x18
	bl sub_02045604
	ldr r2, [sp, #0x20]
	lsl r0, r7, #0x18
	lsl r2, r2, #0x18
	lsl r3, r6, #0x18
	str r4, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r4, [sp, #8]
	bl sub_02045604
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	lsl r3, r6, #0x18
	add r0, r5, #0
	mov r1, #5
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r4, [sp, #8]
	bl sub_02045604
	add r0, r5, #0
	bl sub_02045B7C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy162_219f948

	thumb_func_start ovy162_219fa68
ovy162_219fa68: ; 0x0219FA68
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	str r2, [sp]
	add r5, r1, #0
	str r3, [sp, #4]
	mov r1, #0
	add r6, r0, #0
	str r1, [sp, #8]
	add r4, sp, #0x20
	ldrb r0, [r4]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_02045604
	ldrb r0, [r4]
	bl sub_02045B7C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy162_219fa68

	thumb_func_start ovy162_219fa90
ovy162_219fa90: ; 0x0219FA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #2
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	mov r4, #0x4f
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r0, [r5, #0x78]
	mov r1, #0x20
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_02021C7C
	add r1, r4, #4
	mov r0, #1
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x21
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x18
	bl sub_02021C7C
	add r1, r4, #4
	mov r0, #1
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x22
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r6, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x80
	mov r6, #0x80
	bl sub_02021C7C
	add r6, #0xc0
	mov r0, #1
	strb r0, [r5, r6]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x23
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r6, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r6, #0x90
	mov r3, #0x90
	bl sub_02021C7C
	add r6, #0xb0
	mov r0, #1
	strb r0, [r5, r6]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	bl sub_0204826C
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	mov r1, #1
	mov r2, #0x20
	mov r4, #0x16
	mov r3, #0x16
	bl ovy162_219f948
	add r4, #0xea
	mov r0, #1
	mov r1, #0
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #1
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	mov r0, #2
	mov r1, #0
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #2
	mov r1, #3
	mov r2, #0
	bl sub_02045E1C
	add r0, r5, #0
	mov r1, #0
	bl ovy162_219f8c8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy162_219fa90

	thumb_func_start ovy162_219fbf4
ovy162_219fbf4: ; 0x0219FBF4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0x4f
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	bl sub_02048210
	cmp r6, #1
	beq _0219FC64
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	mov r1, #1
	mov r2, #0x20
	mov r3, #0x16
	mov r6, #1
	bl ovy162_219fa68
	mov r0, #0
	mov r1, #0
	bl sub_02045790
	mov r0, #1
	mov r1, #0
	mov r2, #0
	bl sub_02045E1C
	add r2, r4, #0
	add r2, #0x48
	ldr r2, [r5, r2]
	mov r0, #1
	mov r1, #3
	bl sub_02045E1C
	mov r0, #2
	mov r1, #0
	mov r2, #0
	bl sub_02045E1C
	add r2, r4, #0
	add r2, #0x48
	ldr r2, [r5, r2]
	mov r0, #2
	mov r1, #3
	bl sub_02045E1C
	add r4, #0x34
	ldrb r0, [r5, r4]
	cmp r0, #0
	bne _0219FC64
	add r0, r5, #0
	add r1, r6, #0
	bl ovy162_219f8c8
_0219FC64:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy162_219fbf4

	thumb_func_start ovy162_219fc68
ovy162_219fc68: ; 0x0219FC68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #3
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	mov r4, #0x4f
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r0, [r5, #0x78]
	mov r1, #0x1e
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_02021C7C
	add r1, r4, #4
	mov r0, #1
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	mov r1, #0x1f
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x18
	bl sub_02021C7C
	add r1, r4, #4
	mov r0, #1
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	bl sub_0204826C
	mov r0, #4
	bl sub_02045B7C
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	mov r1, #1
	mov r2, #0x20
	mov r3, #0x16
	bl ovy162_219f948
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy162_219fc68

	thumb_func_start sub_0219FD20
sub_0219FD20: ; 0x0219FD20
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219FD2C ; =sub_02048210
	bx r3
	nop
_0219FD2C: .word sub_02048210
	thumb_func_end sub_0219FD20

	thumb_func_start ovy162_219fd30
ovy162_219fd30: ; 0x0219FD30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _0219FE04 ; =0x000001B7
	ldr r3, _0219FE08 ; =0x0000800B
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [sp, #0xc]
	mov r0, #0x14
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #2
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	sub r1, #0x7b
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	mov r1, #0x20
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r7, [r0]
	add r0, r4, #0
	sub r0, #0x7b
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x74]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_02021C7C
	mov r0, #5
	lsl r1, r0, #6
	mov r0, #1
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_MsgDataFree
	sub r4, #0x7b
	ldr r0, [r5, r4]
	bl sub_0204826C
	mov r0, #0
	bl sub_02045B7C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x20
	mov r1, #1
	mov r2, #0x20
	mov r4, #0x16
	mov r3, #0x16
	bl ovy162_219f948
	add r4, #0xea
	mov r0, #1
	mov r1, #0
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #1
	mov r1, #3
	mov r2, #0
	mov r6, #3
	bl sub_02045E1C
	mov r0, #2
	mov r1, #0
	add r2, r4, #0
	bl sub_02045E1C
	mov r0, #2
	add r1, r6, #0
	mov r2, #0
	bl sub_02045E1C
	add r0, r5, #0
	mov r1, #0
	bl ovy162_219f8c8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FE04: .word 0x000001B7
_0219FE08: .word 0x0000800B
	thumb_func_end ovy162_219fd30

	thumb_func_start ovy162_219fe0c
ovy162_219fe0c: ; 0x0219FE0C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x80
	ldr r0, [r4, #0x78]
	ldr r2, [r2]
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r5, #0xf
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	bl sub_02017BCC
	ldr r1, [r4, #0x74]
	add r3, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r3, #0x80
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	ldr r3, [r3]
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl sub_02022268
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	add r4, #0xe4
	add r0, #0x94
	ldr r4, [r4]
	str r5, [r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_219fe0c

	thumb_func_start sub_0219FE9C
sub_0219FE9C: ; 0x0219FE9C
	add r0, #0xe4
	ldr r0, [r0]
	ldr r3, _0219FEA8 ; =sub_02024EEC
	mov r1, #1
	bx r3
	nop
_0219FEA8: .word sub_02024EEC
	thumb_func_end sub_0219FE9C

	thumb_func_start ovy162_219feac
ovy162_219feac: ; 0x0219FEAC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r1, [r0]
	cmp r1, #0
	bne _0219FEBC
	mov r0, #0
	pop {r4, pc}
_0219FEBC:
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x90
	add r2, #0xe4
	ldr r0, [r0]
	ldr r2, [r2]
	bl sub_0202E8D8
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_020223B4
	cmp r0, #0
	beq _0219FEE4
	cmp r0, #1
	beq _0219FF02
	cmp r0, #2
	beq _0219FF2A
	b _0219FF42
_0219FEE4:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _0219FEFA
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl sub_020223E0
_0219FEFA:
	mov r0, #0
_0219FEFC:
	add r4, #0x94
	str r0, [r4]
	b _0219FF42
_0219FF02:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _0219FF42
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219FF42
	ldr r0, _0219FF48 ; =0x00000547
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_020223BC
	mov r0, #1
	b _0219FEFC
_0219FF2A:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_020223CC
	add r1, r4, #0
	mov r0, #0
	add r1, #0x88
	add r4, #0x94
	str r0, [r1]
	str r0, [r4]
	pop {r4, pc}
_0219FF42:
	mov r0, #1
	pop {r4, pc}
	nop
_0219FF48: .word 0x00000547
	thumb_func_end ovy162_219feac

	thumb_func_start ovy162_219ff4c
ovy162_219ff4c: ; 0x0219FF4C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r3, #0
	add r0, sp, #4
	strb r3, [r0]
	mov r1, #0x18
	strb r1, [r0, #1]
	mov r1, #0xd
	strb r1, [r0, #2]
	mov r1, #0xf
	strb r1, [r0, #3]
	strh r3, [r0, #4]
	mov r0, #0xb
	str r0, [sp]
	add r0, sp, #4
	mov r1, #1
	mov r2, #0xe
	bl sub_020254E0
	add r4, #0x98
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy162_219ff4c

	thumb_func_start ovy162_219ff7c
ovy162_219ff7c: ; 0x0219FF7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x66
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_219ff7c

	thumb_func_start ovy162_219ffa8
ovy162_219ffa8: ; 0x0219FFA8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x66
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy162_219ffa8

	thumb_func_start ovy162_219ffd4
ovy162_219ffd4: ; 0x0219FFD4
	push {r3, r4}
	ldr r3, _0219FFEC ; =0x0000017F
	mov r4, #0
	strb r4, [r0, r3]
	sub r2, r3, #1
	strb r4, [r0, r2]
	add r3, #0x15
	str r1, [r0, r3]
	mov r0, #3
	pop {r3, r4}
	bx lr
	nop
_0219FFEC: .word 0x0000017F
	thumb_func_end ovy162_219ffd4

	thumb_func_start ovy162_219fff0
ovy162_219fff0: ; 0x0219FFF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02007464
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	cmp r0, #0
	beq _021A0008
	mov r0, #1
	pop {r4, pc}
_021A0008:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy162_219fff0

	thumb_func_start sub_021A000C
sub_021A000C: ; 0x021A000C
	ldr r0, _021A0018 ; =0x000000A2
	ldr r1, _021A001C ; =0x021A1914
	ldr r3, _021A0020 ; =sub_0203A954
	mov r2, #0
	bx r3
	nop
_021A0018: .word 0x000000A2
_021A001C: .word 0x021A1914
_021A0020: .word sub_0203A954
	thumb_func_end sub_021A000C

	thumb_func_start sub_021A0024
sub_021A0024: ; 0x021A0024
	ldr r0, _021A0030 ; =0x000000A2
	ldr r1, _021A0034 ; =0x021A1920
	ldr r3, _021A0038 ; =sub_0203A954
	mov r2, #1
	bx r3
	nop
_021A0030: .word 0x000000A2
_021A0034: .word 0x021A1920
_021A0038: .word sub_0203A954
	thumb_func_end sub_021A0024

	thumb_func_start sub_021A003C
sub_021A003C: ; 0x021A003C
	ldr r0, _021A0048 ; =0x000000A2
	ldr r1, _021A004C ; =0x021A1920
	ldr r3, _021A0050 ; =sub_0203A954
	mov r2, #2
	bx r3
	nop
_021A0048: .word 0x000000A2
_021A004C: .word 0x021A1920
_021A0050: .word sub_0203A954
	thumb_func_end sub_021A003C

	thumb_func_start ovy162_21a0054
ovy162_21a0054: ; 0x021A0054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	add r4, r0, #0
	bl sub_020072FC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x74
	mov r2, #1
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r0, #1
	add r1, r5, #0
	bl ovy162_21a12c0
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl ovy162_21a04a8
	add r0, r5, #0
	bl sub_0200749C
	str r5, [r4, #0x60]
	mov r0, #1
	bl sub_02008B0C
	str r0, [r4, #0x58]
	mov r0, #1
	bl sub_0200898C
	str r0, [r4, #0x5c]
	add r0, r4, #0
	add r0, #0x64
	mov r5, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	str r5, [r4]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x58]
	mov r2, #0
	str r0, [r4, #8]
	mov r0, #7
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #1
	mov r3, #0
	bl sub_021659EC
	str r0, [r4, #0x2c]
	mov r0, #1
	bl sub_0203A970
	ldr r7, _021A0158 ; =0x00000118
	str r0, [r4, #0x34]
	add r0, r7, #0
	bl sub_0203CE0C
	ldr r0, _021A015C ; =0x021DD93C
	ldr r6, [r0]
	cmp r6, #0
	bls _021A00EA
	ldr r2, _021A0160 ; =0x021DD94C
	add r0, sp, #0x10
_021A00DE:
	lsl r3, r5, #2
	ldr r1, [r2, r3]
	add r5, r5, #1
	str r1, [r0, r3]
	cmp r5, r6
	blo _021A00DE
_021A00EA:
	add r0, r7, #0
	bl sub_0203CDC8
	ldr r0, _021A0164 ; =0x00000126
	bl sub_0203CE0C
	ldr r0, _021A0168 ; =0x021A3CF4
	mov r3, #0
	ldr r5, [r0]
	cmp r5, #0
	bls _021A0114
	add r1, sp, #0x10
	lsl r0, r6, #2
	ldr r7, _021A016C ; =0x021A3D04
	add r2, r1, r0
_021A0108:
	lsl r1, r3, #2
	ldr r0, [r7, r1]
	add r3, r3, #1
	str r0, [r2, r1]
	cmp r3, r5
	blo _021A0108
_021A0114:
	ldr r0, _021A0164 ; =0x00000126
	bl sub_0203CDC8
	add r0, sp, #0x10
	add r1, r6, r5
	bl sub_02005AF4
	str r0, [r4, #0x38]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r0, _021A0170 ; =0x0000023D
	str r1, [sp, #0xc]
	mov r2, #0x40
	mov r3, #0
	bl sub_02006A44
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	str r1, [r4, #0x10]
	ldr r1, [r4, #0x5c]
	str r1, [r4, #0x14]
	mov r1, #1
	str r1, [r4, #0x18]
	ldr r1, [r4, #0x30]
	str r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x64
	str r0, [r4, #0x24]
	mov r0, #1
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0158: .word 0x00000118
_021A015C: .word 0x021DD93C
_021A0160: .word 0x021DD94C
_021A0164: .word 0x00000126
_021A0168: .word 0x021A3CF4
_021A016C: .word 0x021A3D04
_021A0170: .word 0x0000023D
	thumb_func_end ovy162_21a0054

	thumb_func_start ovy162_21a0174
ovy162_21a0174: ; 0x021A0174
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	ldr r0, [r4, #0x30]
	add r5, r1, #0
	bl ovy162_21a1378
	ldr r0, [r4, #0x34]
	bl sub_0203A978
	ldr r1, [r5]
	cmp r1, #0xc
	bls _021A018E
	b _021A02BA
_021A018E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A019A: ; jump table
	.short _021A01B4 - _021A019A - 2 ; case 0
	.short _021A01C6 - _021A019A - 2 ; case 1
	.short _021A01CC - _021A019A - 2 ; case 2
	.short _021A01EC - _021A019A - 2 ; case 3
	.short _021A01F4 - _021A019A - 2 ; case 4
	.short _021A0224 - _021A019A - 2 ; case 5
	.short _021A021C - _021A019A - 2 ; case 6
	.short _021A0234 - _021A019A - 2 ; case 7
	.short _021A0276 - _021A019A - 2 ; case 8
	.short _021A027E - _021A019A - 2 ; case 9
	.short _021A02AA - _021A019A - 2 ; case 10
	.short _021A02A2 - _021A019A - 2 ; case 11
	.short _021A02B6 - _021A019A - 2 ; case 12
_021A01B4:
	ldr r0, [r4, #0x34]
	add r4, #0x10
	ldr r1, _021A02C0 ; =0x00000126
	ldr r2, _021A02C4 ; =0x021A3CF8
	add r3, r4, #0
	bl sub_0203A988
	mov r0, #1
_021A01C4:
	b _021A022C
_021A01C6:
	cmp r0, #1
	beq _021A02BA
	b _021A0230
_021A01CC:
	ldr r0, [r4, #8]
	bl MyStatus_GetTrainerGender
	ldr r1, [r4, #0x2c]
	ldr r2, _021A02C8 ; =0x021DD940
	strh r0, [r1, #4]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	str r1, [r0, #0x24]
	ldr r0, [r4, #0x34]
	ldr r1, _021A02CC ; =0x00000118
	ldr r3, [r4, #0x2c]
	bl sub_0203A988
	mov r0, #3
	b _021A01C4
_021A01EC:
	cmp r0, #1
	beq _021A02BA
	mov r0, #4
	b _021A01C4
_021A01F4:
	ldr r0, [r4, #0x58]
	bl MyStatus_GetTrainerGender
	ldr r1, [r4, #0x2c]
	add r2, r0, #0
	ldr r0, [r4, #0x58]
	ldr r1, [r1, #0x20]
	bl ovy162_21a0460
	mov r0, #7
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x34]
	add r4, #0x10
	ldr r1, _021A02C0 ; =0x00000126
	ldr r2, _021A02C4 ; =0x021A3CF8
	add r3, r4, #0
	bl sub_0203A988
	mov r0, #6
	b _021A01C4
_021A021C:
	cmp r0, #1
	beq _021A02BA
	mov r0, #5
	b _021A01C4
_021A0224:
	ldr r0, [r4, #0x28]
	cmp r0, #2
	bne _021A0230
_021A022A:
	mov r0, #7
_021A022C:
	str r0, [r5]
	b _021A02BA
_021A0230:
	mov r0, #2
	b _021A01C4
_021A0234:
	mov r0, #0
	mov r1, #2
	mov r2, #0x36
	mov r3, #1
	bl GFL_MsgSysLoadData
	mov r1, #0x19
	add r7, r0, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	add r1, r6, #0
	ldr r0, [r0, #0x20]
	bl sub_02048580
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x2c]
	mov r1, #3
	str r1, [r0]
	ldr r0, [r4, #0x34]
	ldr r1, _021A02CC ; =0x00000118
	ldr r2, _021A02C8 ; =0x021DD940
	ldr r3, [r4, #0x2c]
	bl sub_0203A988
	mov r0, #8
	b _021A01C4
_021A0276:
	cmp r0, #1
	beq _021A02BA
	mov r0, #9
	b _021A01C4
_021A027E:
	ldr r0, [r4, #0x2c]
	add r1, r4, #0
	ldr r0, [r0, #0x20]
	add r1, #0x64
	mov r2, #8
	bl sub_020486B8
	mov r0, #0xa
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x34]
	add r4, #0x10
	ldr r1, _021A02C0 ; =0x00000126
	ldr r2, _021A02C4 ; =0x021A3CF8
	add r3, r4, #0
	bl sub_0203A988
	mov r0, #0xb
	b _021A01C4
_021A02A2:
	cmp r0, #1
	beq _021A02BA
	mov r0, #0xa
	b _021A01C4
_021A02AA:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021A02B4
	mov r0, #0xc
	b _021A01C4
_021A02B4:
	b _021A022A
_021A02B6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A02BA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A02C0: .word 0x00000126
_021A02C4: .word 0x021A3CF8
_021A02C8: .word 0x021DD940
_021A02CC: .word 0x00000118
	thumb_func_end ovy162_21a0174

	thumb_func_start ovy162_21a02d0
ovy162_21a02d0: ; 0x021A02D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r3, #0
	bl sub_020072FC
	add r4, r0, #0
	mov r6, #0
	add r0, sp, #0
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	ldr r0, [r5, #0x38]
	bl sub_02005B60
	ldr r0, [r5, #0x30]
	bl ovy162_21a1300
	add r0, r4, #0
	bl sub_02008DD0
	add r1, r0, #0
	ldr r0, [r5, #0x58]
	bl sub_02008B34
	add r0, r4, #0
	bl sub_02008DDC
	add r1, r0, #0
	ldr r0, [r5, #0x5c]
	bl sub_020089B4
	add r0, r4, #0
	bl sub_0200F6F4
	add r1, r5, #0
	add r1, #0x64
	bl sub_0200F7C0
	ldr r0, [r5, #0x58]
	bl GFL_HeapFree
	ldr r0, [r5, #0x5c]
	bl GFL_HeapFree
	ldr r0, [r5, #0x34]
	bl sub_0203A980
	add r0, r4, #0
	bl ovy162_21a04e8
	mov r0, #0
	mov r1, #0
	add r2, sp, #0
	mov r3, #0
	bl sub_020168B4
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_02165AE8
	add r0, r7, #0
	bl sub_0203AB10
	ldr r1, _021A0360 ; =0x02090010
	sub r0, r6, #1
	add r2, r4, #0
	bl sub_0203A954
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A0360: .word 0x02090010
	thumb_func_end ovy162_21a02d0

	thumb_func_start ovy162_21a0364
ovy162_21a0364: ; 0x021A0364
	push {r3, r4, r5, lr}
	mov r1, #0x74
	mov r2, #1
	mov r5, #1
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	str r5, [r4]
	bl sub_020072FC
	bl sub_02008DDC
	str r0, [r4, #4]
	bl sub_020072FC
	bl sub_0200C838
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_21a0364

	thumb_func_start ovy162_21a0390
ovy162_21a0390: ; 0x021A0390
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A03A0
	cmp r0, #1
	beq _021A03D0
	b _021A03D4
_021A03A0:
	cmp r2, #0
	bne _021A03B2
	mov r0, #0
	ldr r1, _021A03D8 ; =0x021A192C
	mvn r0, r0
	add r2, r3, #0
	bl sub_0203A938
	b _021A03C8
_021A03B2:
	cmp r2, #1
	bne _021A03BC
	ldr r0, [r3, #4]
	mov r1, #0
	b _021A03C4
_021A03BC:
	cmp r2, #2
	bne _021A03C8
	ldr r0, [r3, #4]
	mov r1, #1
_021A03C4:
	bl sub_02008AF0
_021A03C8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A03D4
_021A03D0:
	mov r0, #1
	pop {r4, pc}
_021A03D4:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_021A03D8: .word 0x021A192C
	thumb_func_end ovy162_21a0390

	thumb_func_start ovy162_21a03dc
ovy162_21a03dc: ; 0x021A03DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r3, #0
	add r6, r0, #0
	bl sub_020072FC
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02008AE8
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200CA64
	str r0, [sp]
	ldr r0, [r4, #0xc]
	bl sub_0200CA74
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_02007324
	add r0, r5, #0
	bl sub_02008DDC
	bl sub_02008AB4
	add r0, r5, #0
	add r1, sp, #8
	bl sub_02008FB8
	add r3, sp, #8
	mov r5, #0x18
	ldrh r1, [r3]
	ldrsh r3, [r3, r5]
	mov r0, #1
	add r2, sp, #0xc
	bl sub_020168B4
	sub r5, #0x19
	add r2, r0, #0
	ldr r1, _021A045C ; =0x02090010
	add r0, r5, #0
	bl sub_0203A954
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl sub_02008AF0
	ldr r0, [r4, #0xc]
	ldr r1, [sp]
	bl sub_0200CA6C
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #4]
	bl sub_0200CA78
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A045C: .word 0x02090010
	thumb_func_end ovy162_21a03dc

	thumb_func_start ovy162_21a0460
ovy162_21a0460: ; 0x021A0460
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02008B84
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02008BEC
	mov r0, #0
	mvn r0, r0
	bl sub_02005784
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02008BCC
	bl sub_02043F2C
	add r4, r0, #0
	mov r6, #0
	add r0, r5, #0
	bl MyStatus_GetTrainerGender
	add r3, r0, #0
	lsr r1, r4, #0x1d
	lsl r2, r6, #3
	orr r2, r1
	lsl r1, r3, #3
	add r1, r2, r1
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02008BF8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy162_21a0460

	thumb_func_start ovy162_21a04a8
ovy162_21a04a8: ; 0x021A04A8
	push {r4, r5, r6, lr}
	bl sub_02007464
	mov r1, #2
	tst r0, r1
	beq _021A04E0
	ldr r6, _021A04E4 ; =0x0000014B
	add r0, r6, #0
	bl sub_0203CE0C
	mov r0, #1
	mov r4, #1
	bl sub_021BEA20
	add r5, r0, #0
	bl sub_021BEE68
	cmp r0, #0
	beq _021A04D4
	add r0, r4, #0
	bl sub_021BEE24
_021A04D4:
	add r0, r5, #0
	bl sub_021BEC1C
	add r0, r6, #0
	bl sub_0203CDC8
_021A04E0:
	pop {r4, r5, r6, pc}
	nop
_021A04E4: .word 0x0000014B
	thumb_func_end ovy162_21a04a8

	thumb_func_start ovy162_21a04e8
ovy162_21a04e8: ; 0x021A04E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02007460
	cmp r0, #1
	bne _021A053C
	add r0, r5, #0
	bl sub_02007468
	cmp r0, #0
	bne _021A053C
	ldr r6, _021A0540 ; =0x0000014B
	add r0, r6, #0
	bl sub_0203CE0C
	mov r0, #1
	bl sub_021BEA20
	add r4, r0, #0
	bl sub_021BED54
	cmp r0, #0
	beq _021A051E
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021BED78
_021A051E:
	add r0, r4, #0
	bl sub_021BEE68
	cmp r0, #0
	beq _021A0530
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021BEE88
_021A0530:
	add r0, r4, #0
	bl sub_021BEC1C
	add r0, r6, #0
	bl sub_0203CDC8
_021A053C:
	pop {r4, r5, r6, pc}
	nop
_021A0540: .word 0x0000014B
	thumb_func_end ovy162_21a04e8

	thumb_func_start ovy162_21a0544
ovy162_21a0544: ; 0x021A0544
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	add r5, r2, #0
	mov r1, #0x39
	lsl r2, r0, #0x13
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x39
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	bne _021A056A
	mov r0, #0
	b _021A056C
_021A056A:
	mov r0, #2
_021A056C:
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0x18]
	add r0, r4, #0
	bl ovy162_21a0684
	add r0, r4, #0
	bl ovy162_21a07b4
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0544

	thumb_func_start ovy162_21a0584
ovy162_21a0584: ; 0x021A0584
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy162_21a08a8
	ldr r0, [r4, #8]
	bl sub_02022DA8
	bl sub_020480A8
	mov r0, #3
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	bl sub_02044528
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x39
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_21a0584

	thumb_func_start ovy162_21a05c0
ovy162_21a05c0: ; 0x021A05C0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r3, #0
	ldr r0, [r4, #4]
	add r5, r2, #0
	cmp r0, #3
	bhi _021A0678
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A05DA: ; jump table
	.short _021A05E2 - _021A05DA - 2 ; case 0
	.short _021A060E - _021A05DA - 2 ; case 1
	.short _021A0632 - _021A05DA - 2 ; case 2
	.short _021A066A - _021A05DA - 2 ; case 3
_021A05E2:
	add r0, r4, #0
	bl ovy162_21a0908
	cmp r0, #0
	beq _021A0678
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _021A05F6
	mov r1, #0
	b _021A05F8
_021A05F6:
	mov r1, #1
_021A05F8:
	bl sub_02008A8C
	add r0, r4, #0
	bl ovy162_21a08a8
	mov r0, #1
_021A0604:
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy162_21a07b4
	b _021A0678
_021A060E:
	add r0, r4, #0
	bl ovy162_21a0908
	cmp r0, #0
	beq _021A0678
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _021A0622
	mov r1, #0
	b _021A0624
_021A0622:
	mov r1, #1
_021A0624:
	bl sub_02008BEC
	add r0, r4, #0
	bl ovy162_21a08a8
	mov r0, #2
	b _021A0604
_021A0632:
	add r0, r4, #0
	bl ovy162_21a0908
	cmp r0, #0
	beq _021A0678
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _021A0646
	mov r1, #1
	b _021A0648
_021A0646:
	mov r1, #0
_021A0648:
	bl sub_02008AF0
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #3
	str r0, [r4, #4]
	b _021A0678
_021A066A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A0678
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021A0678:
	add r0, r4, #0
	bl ovy162_21a09a0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy162_21a05c0

	thumb_func_start ovy162_21a0684
ovy162_21a0684: ; 0x021A0684
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0xf
	add r5, r0, #0
	mvn r4, r4
	ldr r0, _021A0760 ; =0x0400006C
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _021A0764 ; =0x0400106C
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _021A0768 ; =0x021A19B4
	bl sub_02046C40
	mov r0, #0x39
	mov r4, #0x39
	bl sub_020444A4
	ldr r0, _021A076C ; =0x021A1944
	bl sub_02044710
	ldr r2, _021A0770 ; =0x04000304
	ldr r0, _021A0774 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _021A0778 ; =0x021A1954
	mov r1, #3
	bl ovy162_21a078c
	ldr r0, _021A077C ; =0x021A1974
	mov r1, #1
	bl ovy162_21a078c
	ldr r0, _021A0780 ; =0x021A1994
	mov r1, #5
	mov r6, #5
	bl ovy162_21a078c
	mov r0, #0x39
	bl sub_02048080
	mov r7, #0x20
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl sub_0204B0B8
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	mov r3, #0
	mov r7, #4
	bl sub_0204B0B8
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #8]
	mov r0, #1
	mov r1, #1
	mov r2, #3
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	mov r0, #1
	mov r1, #0x1f
	add r2, r7, #0
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	ldr r1, _021A0784 ; =0x00007D8C
	lsl r0, r6, #0x18
	strh r1, [r0]
	ldr r0, _021A0788 ; =0x05000400
	mov r2, #0
	strh r1, [r0]
	mov r0, #3
	mov r1, #0x10
	mov r3, #0
	bl sub_0204E060
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0760: .word 0x0400006C
_021A0764: .word 0x0400106C
_021A0768: .word 0x021A19B4
_021A076C: .word 0x021A1944
_021A0770: .word 0x04000304
_021A0774: .word 0xFFFF7FFF
_021A0778: .word 0x021A1954
_021A077C: .word 0x021A1974
_021A0780: .word 0x021A1994
_021A0784: .word 0x00007D8C
_021A0788: .word 0x05000400
	thumb_func_end ovy162_21a0684

	thumb_func_start ovy162_21a078c
ovy162_21a078c: ; 0x021A078C
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl sub_02044F90
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_21a078c

	thumb_func_start ovy162_21a07b4
ovy162_21a07b4: ; 0x021A07B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _021A08A4 ; =0x0000016B
	add r5, r0, #0
	mov r6, #0
	mov r0, #0
	mov r1, #2
	mov r3, #0x39
	bl GFL_MsgSysLoadData
	str r0, [sp, #0xc]
	strb r6, [r5]
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1d
	bl BmpWin_CreateDynamic
	str r0, [r5, #0xc]
	bl sub_0204826C
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_02024E80
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #8]
	mov r2, #2
	str r1, [sp]
	mov r1, #2
	add r3, r4, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0xc]
	bl BmpWin_FlushChar
_021A082A:
	lsl r2, r6, #2
	mov r0, #2
	add r4, r5, r2
	str r0, [sp]
	mov r0, #0
	add r2, #0xc
	str r0, [sp, #4]
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r1, #6
	lsr r2, r2, #0x18
	mov r3, #0x14
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x10]
	bl sub_0204826C
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r1, [r5, #4]
	ldr r0, [sp, #0xc]
	add r2, r6, #5
	lsl r1, r1, #1
	add r1, r2, r1
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #8]
	mov r2, #2
	str r1, [sp]
	mov r1, #2
	add r3, r7, #0
	bl sub_02021CFC
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r4, #0x10]
	bl BmpWin_FlushChar
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021A082A
	ldr r0, [sp, #0xc]
	bl GFL_MsgDataFree
	add r0, r5, #0
	bl ovy162_21a08cc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A08A4: .word 0x0000016B
	thumb_func_end ovy162_21a07b4

	thumb_func_start ovy162_21a08a8
ovy162_21a08a8: ; 0x021A08A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02048210
	mov r4, #0
_021A08B4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A08B4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a08a8

	thumb_func_start ovy162_21a08cc
ovy162_21a08cc: ; 0x021A08CC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021A08D6:
	ldrb r0, [r5]
	cmp r4, r0
	bne _021A08EA
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #3
	b _021A08F6
_021A08EA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #4
_021A08F6:
	bl sub_02024E80
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A08D6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy162_21a08cc

	thumb_func_start ovy162_21a0908
ovy162_21a0908: ; 0x021A0908
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x40
	tst r0, r1
	bne _021A0922
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x80
	tst r0, r1
	beq _021A093C
_021A0922:
	ldrb r0, [r5]
	cmp r0, #0
	bne _021A092C
	mov r0, #1
	b _021A092E
_021A092C:
	mov r0, #0
_021A092E:
	strb r0, [r5]
	add r0, r5, #0
	bl ovy162_21a08cc
	ldr r0, _021A0994 ; =0x00000548
	bl GFL_SndSEPlay
_021A093C:
	bl GCTX_HIDGetPressedKeys
	mov r4, #1
	tst r0, r4
	beq _021A095A
	ldr r0, _021A0998 ; =0x0000054C
	bl GFL_SndSEPlay
	ldrb r0, [r5]
	cmp r0, #0
	beq _021A0954
	mov r4, #2
_021A0954:
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, pc}
_021A095A:
	ldr r3, _021A099C ; =0x021A1938
	add r2, sp, #0
	mov r1, #0xc
_021A0960:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A0960
	add r0, sp, #0
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A098E
	ldr r0, _021A0998 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #1
	cmp r4, #0
	beq _021A0990
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_021A098E:
	mov r0, #0
_021A0990:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021A0994: .word 0x00000548
_021A0998: .word 0x0000054C
_021A099C: .word 0x021A1938
	thumb_func_end ovy162_21a0908

	thumb_func_start ovy162_21a09a0
ovy162_21a09a0: ; 0x021A09A0
	push {r4, lr}
	add r2, r0, #0
	ldrh r3, [r2, #0x18]
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r3, r0
	lsl r0, r0, #6
	cmp r1, r0
	blt _021A09BC
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r0, r3, r0
	strh r0, [r2, #0x18]
	b _021A09BE
_021A09BC:
	strh r1, [r2, #0x18]
_021A09BE:
	ldrh r0, [r2, #0x18]
	mov r4, #0x13
	mvn r4, r4
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A0A18 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r3, r0, #0x10
	lsl r0, r3, #3
	neg r0, r0
	asr r0, r0, #0xc
	add r0, #0x1d
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r0, #0xa
	add r0, r3, #0
	mul r0, r4
	add r4, r4, #5
	mul r4, r3
	asr r0, r0, #0xc
	asr r3, r4, #0xc
	add r0, #0x19
	add r3, #0x1e
	lsl r0, r0, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x18
	lsr r3, r3, #0x13
	orr r0, r3
	orr r0, r1
	strh r0, [r2, #0x1a]
	mov r0, #0xf
	mov r1, #0x6c
	add r2, #0x1a
	mov r3, #2
	bl sub_0205FA10
	pop {r4, pc}
	.align 2, 0
_021A0A18: .word FX_SinCosTable_
	thumb_func_end ovy162_21a09a0

	thumb_func_start ovy162_21a0a1c
ovy162_21a0a1c: ; 0x021A0A1C
	push {r4, lr}
	mov r2, #7
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x16
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #8
	mov r2, #0x16
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0a1c

	thumb_func_start ovy162_21a0a44
ovy162_21a0a44: ; 0x021A0A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldrh r0, [r4]
	str r2, [sp, #0xc]
	cmp r0, #0xd
	bls _021A0A54
	b _021A0CF6
_021A0A54:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0A60: ; jump table
	.short _021A0A7C - _021A0A60 - 2 ; case 0
	.short _021A0B0C - _021A0A60 - 2 ; case 1
	.short _021A0BA6 - _021A0A60 - 2 ; case 2
	.short _021A0BB8 - _021A0A60 - 2 ; case 3
	.short _021A0BD4 - _021A0A60 - 2 ; case 4
	.short _021A0BE4 - _021A0A60 - 2 ; case 5
	.short _021A0BF2 - _021A0A60 - 2 ; case 6
	.short _021A0C00 - _021A0A60 - 2 ; case 7
	.short _021A0CA8 - _021A0A60 - 2 ; case 8
	.short _021A0CB4 - _021A0A60 - 2 ; case 9
	.short _021A0CC2 - _021A0A60 - 2 ; case 10
	.short _021A0CD2 - _021A0A60 - 2 ; case 11
	.short _021A0CDE - _021A0A60 - 2 ; case 12
	.short _021A0CEC - _021A0A60 - 2 ; case 13
_021A0A7C:
	mov r0, #0
	mov r7, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r5, _021A0CFC ; =0x04000050
	ldr r6, _021A0D00 ; =0x04001050
	strh r7, [r5]
	add r2, r5, #0
	strh r7, [r6]
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _021A0D04 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2]
	add r2, r6, #0
	sub r2, #0x50
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r0, _021A0D08 ; =0x021A1A40
	bl sub_02046C40
	mov r0, #0x16
	bl sub_020444A4
	ldr r0, _021A0D0C ; =0x021A19F0
	bl sub_02044710
	ldr r1, _021A0D10 ; =0x021A1A00
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021A0D14 ; =0x021A1A20
	mov r0, #5
	mov r2, #0
	mov r7, #5
	bl sub_0204476C
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	bne _021A0AF4
	add r5, #0x1c
	sub r7, #0x15
	add r0, r5, #0
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	add r6, #0x1c
	add r0, r6, #0
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	mov r0, #7
_021A0AF0:
	strh r0, [r4]
	b _021A0CF6
_021A0AF4:
	add r5, #0x1c
	add r0, r5, #0
	mov r1, #0x10
	bl GXx_SetMasterBrightness_
	add r6, #0x1c
	add r0, r6, #0
	mov r1, #0x10
	bl GXx_SetMasterBrightness_
	mov r0, #1
	b _021A0AF0
_021A0B0C:
	mov r5, #0
	str r5, [sp]
	mov r7, #1
	str r7, [sp, #4]
	mov r6, #0x16
	str r6, [sp, #8]
	mov r0, #0x1a
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	bl sub_0204AD88
	str r5, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x1a
	mov r1, #0xd
	mov r2, #1
	mov r3, #0
	bl sub_0204AF18
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, #0x1a
	mov r1, #0xb
	mov r2, #0
	mov r3, #0
	bl sub_0204B0B8
	str r5, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x1a
	mov r1, #0xc
	mov r2, #5
	mov r3, #0
	bl sub_0204AD88
	str r5, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x1a
	mov r1, #0xe
	mov r2, #5
	mov r3, #0
	bl sub_0204AF18
	str r5, [sp]
	mov r0, #0x1a
	mov r1, #0xb
	mov r2, #4
	mov r3, #0
	str r6, [sp, #4]
	bl sub_0204B0B8
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	bl sub_02046DF8
	bl sub_02046DE0
	add r2, r5, #0
	mov r0, #0xc
	mov r1, #0x10
	mov r3, #2
	mov r5, #2
	bl sub_0204E060
	strh r5, [r4]
	b _021A0CF6
_021A0BA6:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A0BEC
	mov r0, #3
_021A0BB0:
	strh r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	b _021A0CF6
_021A0BB8:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x5a
	ble _021A0BC6
	mov r0, #4
	strh r0, [r4]
_021A0BC6:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xb
	tst r0, r1
	beq _021A0BEC
	mov r0, #4
	b _021A0AF0
_021A0BD4:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	mov r0, #5
	b _021A0AF0
_021A0BE4:
	bl sub_0204E0E0
	cmp r0, #0
	beq _021A0BEE
_021A0BEC:
	b _021A0CF6
_021A0BEE:
	mov r0, #6
	b _021A0BB0
_021A0BF2:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	ble _021A0CF6
	mov r0, #7
	b _021A0BB0
_021A0C00:
	mov r7, #2
	lsl r7, r7, #0xe
	str r7, [sp]
	mov r5, #0
	str r5, [sp, #4]
	mov r6, #0x16
	str r6, [sp, #8]
	mov r0, #0xa2
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl sub_0204AD88
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0xa2
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0204AF18
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, #0xa2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B0B8
	str r7, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0xa2
	mov r1, #3
	mov r2, #5
	mov r3, #0
	mov r7, #3
	bl sub_0204AD88
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0xa2
	mov r1, #4
	mov r2, #5
	mov r3, #0
	bl sub_0204AF18
	str r5, [sp]
	mov r0, #0xa2
	mov r1, #0
	mov r2, #4
	mov r3, #0
	str r6, [sp, #4]
	bl sub_0204B0B8
	mov r0, #1
	bl sub_02044F90
	mov r0, #5
	bl sub_02044F90
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	bl sub_02046DF8
	bl sub_02046DE0
	add r0, r7, #0
	mov r1, #0x10
	add r2, r5, #0
	mov r3, #2
	bl sub_0204E060
	mov r0, #8
	b _021A0AF0
_021A0CA8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A0CF6
	mov r0, #9
	b _021A0AF0
_021A0CB4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x5a
	ble _021A0CF6
	mov r0, #0xa
	b _021A0BB0
_021A0CC2:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	mov r0, #0xb
	b _021A0AF0
_021A0CD2:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A0CF6
	mov r0, #0xc
	b _021A0AF0
_021A0CDE:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	ble _021A0CF6
	mov r0, #0xd
	b _021A0AF0
_021A0CEC:
	bl sub_02044528
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A0CF6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0CFC: .word 0x04000050
_021A0D00: .word 0x04001050
_021A0D04: .word 0xFFFF1FFF
_021A0D08: .word 0x021A1A40
_021A0D0C: .word 0x021A19F0
_021A0D10: .word 0x021A1A00
_021A0D14: .word 0x021A1A20
	thumb_func_end ovy162_21a0a44

	thumb_func_start ovy162_21a0d18
ovy162_21a0d18: ; 0x021A0D18
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x16
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy162_21a0d18

	thumb_func_start ovy162_21a0d28
ovy162_21a0d28: ; 0x021A0D28
	push {r4, lr}
	mov r2, #3
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x81
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x2c
	mov r2, #0x81
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x2c
	blx MI_CpuFill8
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0d28

	thumb_func_start ovy162_21a0d50
ovy162_21a0d50: ; 0x021A0D50
	push {r3, lr}
	ldr r0, [r1]
	cmp r0, #8
	bhi _021A0DBA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0D64: ; jump table
	.short _021A0D76 - _021A0D64 - 2 ; case 0
	.short _021A0D7E - _021A0D64 - 2 ; case 1
	.short _021A0D86 - _021A0D64 - 2 ; case 2
	.short _021A0D8E - _021A0D64 - 2 ; case 3
	.short _021A0D96 - _021A0D64 - 2 ; case 4
	.short _021A0D9E - _021A0D64 - 2 ; case 5
	.short _021A0DA6 - _021A0D64 - 2 ; case 6
	.short _021A0DAE - _021A0D64 - 2 ; case 7
	.short _021A0DB6 - _021A0D64 - 2 ; case 8
_021A0D76:
	add r0, r3, #0
	bl ovy162_21a0de4
	b _021A0DBA
_021A0D7E:
	add r0, r3, #0
	bl ovy162_21a0e10
	b _021A0DBA
_021A0D86:
	add r0, r3, #0
	bl ovy162_21a0e2c
	b _021A0DBA
_021A0D8E:
	add r0, r3, #0
	bl ovy162_21a0e48
	b _021A0DBA
_021A0D96:
	add r0, r3, #0
	bl ovy162_21a0e7c
	b _021A0DBA
_021A0D9E:
	add r0, r3, #0
	bl ovy162_21a0e98
	b _021A0DBA
_021A0DA6:
	add r0, r3, #0
	bl ovy162_21a0edc
	b _021A0DBA
_021A0DAE:
	add r0, r3, #0
	bl ovy162_21a0f7c
	b _021A0DBA
_021A0DB6:
	mov r0, #1
	pop {r3, pc}
_021A0DBA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0d50

	thumb_func_start ovy162_21a0dc0
ovy162_21a0dc0: ; 0x021A0DC0
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x81
	bl sub_0203A1D0
	ldr r0, _021A0DDC ; =0x000000A2
	ldr r1, _021A0DE0 ; =0x021A1614
	mov r2, #0
	bl sub_0203A954
	mov r0, #1
	pop {r3, pc}
	nop
_021A0DDC: .word 0x000000A2
_021A0DE0: .word 0x021A1614
	thumb_func_end ovy162_21a0dc0

	thumb_func_start ovy162_21a0de4
ovy162_21a0de4: ; 0x021A0DE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy162_21a0fa8
	bl ovy162_21a0fd0
	add r0, r5, #0
	bl ovy162_21a1050
	add r0, r5, #0
	bl ovy162_21a10dc
	add r0, r5, #0
	bl ovy162_21a1158
	bl ovy162_21a1280
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0de4

	thumb_func_start ovy162_21a0e10
ovy162_21a0e10: ; 0x021A0E10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A0E2A
	add r0, r5, #0
	mov r1, #0
	bl ovy162_21a117c
	mov r0, #2
	str r0, [r4]
_021A0E2A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_21a0e10

	thumb_func_start ovy162_21a0e2c
ovy162_21a0e2c: ; 0x021A0E2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy162_21a11ec
	cmp r0, #0
	bne _021A0E44
	add r0, r5, #0
	bl ovy162_21a1250
	mov r0, #3
	str r0, [r4]
_021A0E44:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0e2c

	thumb_func_start ovy162_21a0e48
ovy162_21a0e48: ; 0x021A0E48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl sub_02025634
	cmp r0, #0
	beq _021A0E62
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021A0E70
	pop {r3, r4, r5, pc}
_021A0E62:
	add r0, r5, #0
	mov r1, #1
	bl ovy162_21a117c
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A0E70:
	bl ovy162_21a12a0
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0e48

	thumb_func_start ovy162_21a0e7c
ovy162_21a0e7c: ; 0x021A0E7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy162_21a11ec
	cmp r0, #0
	bne _021A0E94
	add r0, r5, #0
	bl ovy162_21a1250
	mov r0, #5
	str r0, [r4]
_021A0E94:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0e7c

	thumb_func_start ovy162_21a0e98
ovy162_21a0e98: ; 0x021A0E98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl sub_02025634
	cmp r0, #0
	beq _021A0EB2
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021A0EC0
	pop {r3, r4, r5, pc}
_021A0EB2:
	add r0, r5, #0
	mov r1, #2
	bl ovy162_21a117c
	mov r0, #6
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A0EC0:
	bl ovy162_21a12a0
	mov r0, #7
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0e98
_021A0ECC:
	.byte 0x01, 0x48, 0x02, 0x4B
	.byte 0x00, 0x68, 0x18, 0x47, 0x00, 0x1B, 0x1A, 0x02, 0x85, 0x58, 0x03, 0x02

	thumb_func_start ovy162_21a0edc
ovy162_21a0edc: ; 0x021A0EDC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl ovy162_21a11ec
	cmp r0, #0
	bne _021A0F6A
	mov r0, #0x81
	str r0, [sp]
	ldr r1, [r4, #0x1c]
	mov r0, #0
	mov r2, #0xf
	mov r3, #0x10
	mov r5, #0
	bl sub_02035604
	ldr r1, _021A0F70 ; =ovy162_21a1b00
	str r0, [r1]
	ldr r0, [r4, #0x1c]
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, _021A0F74 ; =0x021A0ECD
	mov r1, #0
	bl sub_020056B0
	bl sub_020072FC
	ldr r6, _021A0F78 ; =0x0000014B
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203CE0C
	mov r0, #0x81
	bl sub_021BEDE0
	add r0, r6, #0
	bl sub_0203CDC8
	mov r0, #0x81
	bl sub_02011558
	add r0, r4, #0
	bl sub_020074AC
	mov r6, #0x81
_021A0F3A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020074EC
	cmp r0, #1
	bne _021A0F52
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020076A4
_021A0F52:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02007534
	add r5, r5, #1
	cmp r5, #0x15
	blo _021A0F3A
	bl sub_020056C8
	mov r0, #0
	blx OS_ResetSystem
_021A0F6A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A0F70: .word 0x021a1b00
_021A0F74: .word 0x021A0ECD
_021A0F78: .word 0x0000014B
	thumb_func_end ovy162_21a0edc

	thumb_func_start ovy162_21a0f7c
ovy162_21a0f7c: ; 0x021A0F7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021A0FA4
	add r0, r5, #0
	bl sub_021A1170
	add r0, r5, #0
	bl ovy162_21a112c
	add r0, r5, #0
	bl ovy162_21a10b0
	bl ovy162_21a1038
	mov r0, #8
	str r0, [r4]
_021A0FA4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy162_21a0f7c

	thumb_func_start ovy162_21a0fa8
ovy162_21a0fa8: ; 0x021A0FA8
	push {r4, lr}
	sub sp, #0x30
	ldr r4, _021A0FCC ; =0x021A1AAC
	add r3, sp, #0
	mov r2, #6
_021A0FB2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A0FB2
	mov r0, #0
	bl sub_02046BE0
	add r0, sp, #0
	bl sub_02046C40
	add sp, #0x30
	pop {r4, pc}
	nop
_021A0FCC: .word 0x021A1AAC
	thumb_func_end ovy162_21a0fa8

	thumb_func_start ovy162_21a0fd0
ovy162_21a0fd0: ; 0x021A0FD0
	push {r4, lr}
	sub sp, #0x30
	mov r0, #0x81
	bl sub_020444A4
	ldr r4, _021A102C ; =0x021A1A7C
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021A1030 ; =0x021A1A8C
	add r3, sp, #0
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
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r4, _021A1034 ; =0x00007D8C
	mov r0, #0
	add r1, r4, #0
	bl sub_02045350
	mov r0, #4
	add r1, r4, #0
	bl sub_02045350
	add sp, #0x30
	pop {r4, pc}
	.align 2, 0
_021A102C: .word 0x021A1A7C
_021A1030: .word 0x021A1A8C
_021A1034: .word 0x00007D8C
	thumb_func_end ovy162_21a0fd0

	thumb_func_start ovy162_21a1038
ovy162_21a1038: ; 0x021A1038
	push {r3, lr}
	mov r0, #1
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy162_21a1038

	thumb_func_start ovy162_21a1050
ovy162_21a1050: ; 0x021A1050
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl sub_02048B84
	strb r0, [r5, #0xc]
	mov r0, #0
	bl sub_02048B78
	mov r0, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0x81
	mov r4, #4
	mov r6, #0x81
	bl GFL_MsgSysLoadData
	str r0, [r5, #8]
	str r6, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #4]
	lsl r0, r4, #8
	mov r1, #0x81
	bl GFL_StrBufCreate
	str r0, [r5, #0x10]
	mov r0, #0x81
	mov r1, #0x81
	mov r2, #1
	mov r3, #4
	bl GFL_TCBExMgrCreate
	str r0, [r5, #0x18]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	mov r3, #0x81
	bl sub_0202E7A4
	str r0, [r5, #0x24]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy162_21a1050

	thumb_func_start ovy162_21a10b0
ovy162_21a10b0: ; 0x021A10B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_0202E818
	ldr r0, [r4, #0x18]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x10]
	bl GFL_StrBufFree
	ldr r0, [r4, #4]
	bl sub_02022DA8
	ldr r0, [r4, #8]
	bl GFL_MsgDataFree
	ldrb r0, [r4, #0xc]
	bl sub_02048B78
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_21a10b0

	thumb_func_start ovy162_21a10dc
ovy162_21a10dc: ; 0x021A10DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x81
	mov r4, #0x81
	bl sub_02048080
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	mov r6, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x1c]
	mov r0, #0
	mov r1, #1
	mov r2, #0xe
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r6, #4
	str r4, [sp, #4]
	bl sub_0204B0B8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy162_21a10dc

	thumb_func_start ovy162_21a112c
ovy162_21a112c: ; 0x021A112C
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	bl sub_02048210
	bl sub_020480A8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy162_21a112c

	thumb_func_start ovy162_21a113c
ovy162_21a113c: ; 0x021A113C
	push {r3, lr}
	bl sub_02045A5C
	ldr r3, _021A1150 ; =0x02FE0000
	ldr r1, _021A1154 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_021A1150: .word 0x02FE0000
_021A1154: .word 0x00003FF8
	thumb_func_end ovy162_21a113c

	thumb_func_start ovy162_21a1158
ovy162_21a1158: ; 0x021A1158
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A116C ; =ovy162_21a113c
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4]
	pop {r4, pc}
	nop
_021A116C: .word ovy162_21a113c
	thumb_func_end ovy162_21a1158

	thumb_func_start sub_021A1170
sub_021A1170: ; 0x021A1170
	ldr r0, [r0]
	ldr r3, _021A1178 ; =GFL_TCBRemove
	bx r3
	nop
_021A1178: .word GFL_TCBRemove
	thumb_func_end sub_021A1170

	thumb_func_start ovy162_21a117c
ovy162_21a117c: ; 0x021A117C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r2, [r5, #0x10]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r4, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x1c]
	mov r1, #2
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	mov r0, #0
	mov r6, #0
	bl sub_02017C50
	ldr r1, [r5, #4]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x81
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x10]
	bl sub_02022268
	ldr r4, [r5, #0x1c]
	str r0, [r5, #0x14]
	add r0, r4, #0
	str r6, [r5, #0x28]
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy162_21a117c

	thumb_func_start ovy162_21a11ec
ovy162_21a11ec: ; 0x021A11EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0203A7F4
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x1c]
	bl sub_0202E8D8
	ldr r0, [r4, #0x14]
	bl sub_020223B4
	cmp r0, #0
	beq _021A1214
	cmp r0, #1
	beq _021A121A
	cmp r0, #2
	beq _021A123A
	b _021A1246
_021A1214:
	mov r0, #0
_021A1216:
	str r0, [r4, #0x28]
	b _021A1246
_021A121A:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021A1246
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A1246
	ldr r0, _021A124C ; =0x00000547
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	bl sub_020223BC
	mov r0, #1
	b _021A1216
_021A123A:
	ldr r0, [r4, #0x14]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
_021A1246:
	mov r0, #1
	pop {r4, pc}
	nop
_021A124C: .word 0x00000547
	thumb_func_end ovy162_21a11ec

	thumb_func_start ovy162_21a1250
ovy162_21a1250: ; 0x021A1250
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r2, #0
	add r0, sp, #4
	strb r2, [r0]
	mov r1, #0x18
	strb r1, [r0, #1]
	mov r1, #0xd
	strb r1, [r0, #2]
	mov r1, #0xf
	strb r1, [r0, #3]
	strh r2, [r0, #4]
	mov r0, #0x81
	str r0, [sp]
	add r0, sp, #4
	mov r1, #1
	mov r2, #0xe
	mov r3, #1
	bl sub_020254E0
	str r0, [r4, #0x20]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy162_21a1250

	thumb_func_start ovy162_21a1280
ovy162_21a1280: ; 0x021A1280
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x81
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy162_21a1280

	thumb_func_start ovy162_21a12a0
ovy162_21a12a0: ; 0x021A12A0
	push {lr}
	sub sp, #0xc
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x81
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy162_21a12a0

	thumb_func_start ovy162_21a12c0
ovy162_21a12c0: ; 0x021A12C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	mov r1, #0x47
	str r1, [sp]
	ldr r3, _021A12F8 ; =0x021A1AEC
	mov r1, #0x18
	mov r2, #1
	mov r6, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r5, #0
	str r5, [r4]
	bl sub_02007468
	cmp r0, #1
	bne _021A12E8
	strb r6, [r4, #7]
	b _021A12F0
_021A12E8:
	ldr r0, _021A12FC ; =ovy162_21a144c
	add r1, r4, #0
	bl sub_0203D2BC
_021A12F0:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A12F8: .word 0x021A1AEC
_021A12FC: .word ovy162_21a144c
	thumb_func_end ovy162_21a12c0

	thumb_func_start ovy162_21a1300
ovy162_21a1300: ; 0x021A1300
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0
	bl sub_0203D2BC
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy162_21a1300

	thumb_func_start ovy162_21a1314
ovy162_21a1314: ; 0x021A1314
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #1
	beq _021A1374
	ldr r0, [r4]
	bl sub_020073AC
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _021A1370
	ldr r0, [r4]
	bl sub_02008E04
	ldr r0, [r4]
	bl sub_0200748C
	str r0, [r4, #8]
	ldr r0, [r4]
	bl sub_02007494
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl sub_020074DC
	str r0, [r4, #0x10]
	ldr r0, [r4]
	bl sub_020074E4
	str r0, [r4, #0x14]
	ldr r0, [r4]
	mov r1, #0
	bl sub_02007490
	ldr r0, [r4]
	mov r1, #0
	bl sub_02007498
	ldr r0, [r4]
	mov r1, #0
	bl sub_020074E0
	ldr r0, [r4]
	mov r1, #0
	bl sub_020074E8
_021A1370:
	mov r0, #1
	strb r0, [r4, #4]
_021A1374:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy162_21a1314

	thumb_func_start ovy162_21a1378
ovy162_21a1378: ; 0x021A1378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _021A1386
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A1386:
	ldrb r0, [r5, #4]
	cmp r0, #1
	beq _021A1396
	cmp r0, #2
	beq _021A13E6
	cmp r0, #3
	beq _021A13F4
	b _021A13F8
_021A1396:
	ldrb r0, [r5, #6]
	cmp r0, #1
	bne _021A13B0
	bl sub_0203B088
	cmp r0, #0
	bne _021A13B0
	ldrb r0, [r5, #4]
	strb r0, [r5, #5]
	mov r0, #2
	strb r0, [r5, #4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A13B0:
	ldr r0, [r5]
	bl sub_020073C4
	add r4, r0, #0
	sub r0, r4, #2
	cmp r0, #1
	bhi _021A13E2
	mov r0, #3
	strb r0, [r5, #4]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl sub_02007490
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl sub_02007498
	ldr r0, [r5]
	ldr r1, [r5, #0x10]
	bl sub_020074E0
	ldr r0, [r5]
	ldr r1, [r5, #0x14]
	bl sub_020074E8
_021A13E2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A13E6:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _021A13F0
	ldrb r0, [r5, #5]
	strb r0, [r5, #4]
_021A13F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A13F4:
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A13F8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy162_21a1378
_021A13FC:
	.byte 0x01, 0x79, 0x03, 0x29
	.byte 0x01, 0xD0, 0x01, 0x21, 0x81, 0x71, 0x70, 0x47, 0x01, 0x79, 0x03, 0x29, 0x01, 0xD0, 0x00, 0x21
	.byte 0x81, 0x71, 0x70, 0x47, 0xC1, 0x79, 0x01, 0x29, 0x02, 0xD0, 0x00, 0x79, 0x03, 0x28, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x02, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0xC1, 0x79, 0x01, 0x29, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x79
	.byte 0x03, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy162_21a144c
ovy162_21a144c: ; 0x021A144C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _021A1466
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _021A1466
	ldr r0, [r4]
	bl sub_02007424
	mov r0, #1
	strb r0, [r4, #7]
_021A1466:
	pop {r4, pc}
	thumb_func_end ovy162_21a144c
_021A1468:
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x50, 0x15, 0x1A, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x16, 0x1A, 0x02, 0x07, 0x00, 0x00, 0x00, 0x78, 0x15, 0x1A, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x03, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0x0F, 0x01, 0xF8, 0x01, 0xF0, 0xFF, 0x7F, 0x01, 0x00, 0x01, 0xF0, 0x01, 0xF0
	.byte 0x01, 0xF0, 0xFF, 0x7F, 0x02, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x03, 0x00
	.byte 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6C, 0x14, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x68, 0x14, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x70, 0x14, 0x1A, 0x02, 0x02, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0x39, 0xD0, 0x19, 0x02, 0x69, 0xD1, 0x19, 0x02
	.byte 0x9E, 0x00, 0x00, 0x00, 0xBF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00
	.byte 0xBE, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0xC1, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0xC0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9E, 0x00, 0x00, 0x00, 0xC3, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00
	.byte 0xC4, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9E, 0x00, 0x00, 0x00, 0xC2, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x34, 0x00, 0x01, 0x00, 0x00, 0x01, 0xD0, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x30, 0x00, 0x98, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0xB8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x03, 0x00, 0x07, 0x00, 0x03, 0x00, 0x07, 0x00, 0x03, 0x00
	.byte 0x07, 0x00, 0x03, 0x00, 0x07, 0x00, 0x03, 0x00, 0x07, 0x00, 0x03, 0x00, 0x07, 0x00, 0x03, 0x00
	.byte 0x07, 0x00, 0x03, 0x00, 0x07, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0xE9, 0xDA, 0x19, 0x02, 0x85, 0xDB, 0x19, 0x02
	.byte 0xFD, 0xDB, 0x19, 0x02, 0x15, 0xDC, 0x19, 0x02, 0xAD, 0xDC, 0x19, 0x02, 0x51, 0xDD, 0x19, 0x02
	.byte 0xC9, 0xDE, 0x19, 0x02, 0x6D, 0xDF, 0x19, 0x02, 0xE9, 0xE0, 0x19, 0x02, 0xE9, 0xE1, 0x19, 0x02
	.byte 0x85, 0xE2, 0x19, 0x02, 0x61, 0xE3, 0x19, 0x02, 0x65, 0xE4, 0x19, 0x02, 0x15, 0xD9, 0x19, 0x02
	.byte 0xA5, 0xD9, 0x19, 0x02, 0xD9, 0xD9, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x16, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x1A, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x29, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x2B, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x07, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x2F, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x13
	.byte 0x03, 0x05, 0x01, 0x02, 0x00, 0x13, 0x03, 0x05, 0x01, 0x02, 0x00, 0x13, 0x03, 0x05, 0x01, 0x02
	.byte 0x00, 0x13, 0x03, 0x05, 0x01, 0x02, 0x00, 0x16, 0x03, 0x05, 0x01, 0x02, 0x00, 0x16, 0x03, 0x05
	.byte 0x01, 0x02, 0x00, 0x13, 0x03, 0x05, 0x01, 0x02, 0x00, 0x13, 0x03, 0x05, 0x01, 0x02, 0x00, 0x13
	.byte 0x03, 0x05, 0x00, 0x01, 0x13, 0x1E, 0x04, 0x0F, 0x04, 0x05, 0x02, 0x12, 0x03, 0x05, 0x04, 0x0A
	.byte 0x05, 0x08, 0x02, 0x05, 0x04, 0x0A, 0x07, 0x0F, 0x02, 0x05, 0x04, 0x05, 0x0C, 0x12, 0x02, 0x05
	.byte 0x04, 0x0F, 0x0A, 0x0D, 0x02, 0x05, 0x04, 0x05, 0x0A, 0x0A, 0x02, 0x05, 0x04, 0x05, 0x0F, 0x13
	.byte 0x03, 0x05, 0x04, 0x07, 0x12, 0x13, 0x02, 0x05, 0x04, 0x07, 0x14, 0x13, 0x02, 0x05, 0x04, 0x07
	.byte 0x16, 0x13, 0x02, 0x05, 0x55, 0x00, 0x1A, 0x02, 0x75, 0x01, 0x1A, 0x02, 0xD1, 0x02, 0x1A, 0x02
	.byte 0x65, 0x03, 0x1A, 0x02, 0x91, 0x03, 0x1A, 0x02, 0xDD, 0x03, 0x1A, 0x02, 0x45, 0x05, 0x1A, 0x02
	.byte 0xC1, 0x05, 0x1A, 0x02, 0x85, 0x05, 0x1A, 0x02, 0x60, 0x70, 0x30, 0xD0, 0x80, 0x90, 0x30, 0xD0
	.byte 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x1D, 0x0A, 0x1A, 0x02, 0x45, 0x0A, 0x1A, 0x02, 0x19, 0x0D, 0x1A, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x29, 0x0D, 0x1A, 0x02, 0x51, 0x0D, 0x1A, 0x02, 0xC1, 0x0D, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x72, 0x74, 0x6D, 0x65, 0x6E, 0x75, 0x2E, 0x63, 0x00, 0x73, 0x61, 0x76, 0x65
	.byte 0x5F, 0x63, 0x6F, 0x6E, 0x74, 0x72, 0x6F, 0x6C, 0x5F, 0x69, 0x6E, 0x74, 0x72, 0x2E, 0x63, 0x00
	; 0x021A1468
