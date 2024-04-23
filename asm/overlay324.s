    .include "macros/function.inc"
	.include "overlay324.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy324_219ce80
ovy324_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #0x12
	add r4, r0, #0
	mov r0, #1
	mov r1, #0xa4
	lsl r2, r2, #0x10
	mov r6, #0xa4
	bl GFL_HeapCreateChild
	mov r1, #0xf5
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0xa4
	bl GFL_ProcInitSubsystem
	mov r2, #0xf5
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	mov r7, #0
	blx MI_CpuFill8
	strh r6, [r4, #6]
	str r5, [r4]
	str r7, [r5, #0x20]
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl MyStatus_GetTrainerGender
	mov r1, #0xf5
	lsl r1, r1, #2
	sub r1, #0xc
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy324_219efc0
	mov r1, #0xf5
	lsl r1, r1, #2
	sub r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0219CEDC ; =0x000000A8
	bl sub_0203CE0C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CEDC: .word 0x000000A8
	thumb_func_end ovy324_219ce80

	thumb_func_start ovy324_219cee0
ovy324_219cee0: ; 0x0219CEE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0219CF06
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219CF06
	mov r0, #5
	strh r0, [r4, #4]
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0x20]
	mov r0, #6
	bl sub_02044C98
_0219CF06:
	pop {r4, pc}
	thumb_func_end ovy324_219cee0

	thumb_func_start ovy324_219cf08
ovy324_219cf08: ; 0x0219CF08
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldrh r0, [r4, #4]
	cmp r0, #9
	bls _0219CF14
	b _0219D0A2
_0219CF14:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CF20: ; jump table
	.short _0219CF34 - _0219CF20 - 2 ; case 0
	.short _0219CF46 - _0219CF20 - 2 ; case 1
	.short _0219D0A2 - _0219CF20 - 2 ; case 2
	.short _0219CFF0 - _0219CF20 - 2 ; case 3
	.short _0219D004 - _0219CF20 - 2 ; case 4
	.short _0219D018 - _0219CF20 - 2 ; case 5
	.short _0219D02C - _0219CF20 - 2 ; case 6
	.short _0219D03E - _0219CF20 - 2 ; case 7
	.short _0219D054 - _0219CF20 - 2 ; case 8
	.short _0219D09E - _0219CF20 - 2 ; case 9
_0219CF34:
	bl ovy324_219d434
	bl ovy324_219d488
	bl sub_0219E3DC
	mov r0, #1
	strh r0, [r4, #4]
	b _0219D0A2
_0219CF46:
	add r0, r4, #0
	bl sub_0219D0AC
	add r0, r4, #0
	ldrh r2, [r4, #6]
	add r0, #8
	add r1, r4, #0
	bl ovy324_219d5c4
	ldr r1, [r4]
	add r0, r4, #0
	ldrh r2, [r4, #6]
	ldr r1, [r1]
	add r0, #0x10
	bl ovy324_219d6b0
	ldr r2, [r4]
	mov r5, #0xae
	lsl r5, r5, #2
	ldrh r1, [r4, #6]
	ldr r2, [r2]
	add r0, r4, r5
	bl ovy324_219e024
	add r5, #0x14
	ldrh r1, [r4, #6]
	add r0, r4, r5
	bl ovy324_219e1d8
	ldrh r2, [r4, #6]
	add r0, r4, #0
	mov r1, #1
	bl ovy324_219e7e4
	ldr r2, [r4]
	add r0, r4, #0
	ldr r1, [r2]
	ldrh r3, [r4, #6]
	ldr r2, [r2, #0xc]
	add r0, #0x10
	bl ovy324_219d88c
	add r0, r4, #0
	ldrh r1, [r4, #6]
	add r0, #0x10
	bl ovy324_219dd58
	mov r5, #0xf2
	lsl r5, r5, #2
	add r0, r4, #0
	ldr r1, [r4, r5]
	add r0, #0x10
	bl ovy324_219e520
	add r0, r4, #0
	ldr r2, [r4, r5]
	add r0, #0x10
	mov r1, #0
	bl ovy324_219e48c
	ldr r2, [r4]
	ldrh r3, [r4, #6]
	ldr r2, [r2, #0x14]
	mov r0, #6
	mov r1, #0xf
	mov r5, #0xf
	bl sub_0202A344
	ldrh r1, [r4, #6]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	mov r6, #3
	bl sub_0204E060
	ldr r0, _0219D0A8 ; =0x02FFFC3C
	strh r6, [r4, #4]
	ldr r1, [r0]
	lsl r0, r5, #6
	str r1, [r4, r0]
	b _0219D0A2
_0219CFF0:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219CFFC
	mov r0, #4
	strh r0, [r4, #4]
_0219CFFC:
	add r0, r4, #0
	bl ovy324_219d4a0
	b _0219D0A2
_0219D004:
	add r0, r4, #0
	bl ovy324_219d4a0
	add r0, r4, #0
	bl ovy324_219cee0
	add r0, r4, #0
	bl ovy324_219e224
	b _0219D0A2
_0219D018:
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006C40
	cmp r0, #0
	bne _0219D02A
	mov r0, #6
	strh r0, [r4, #4]
_0219D02A:
	b _0219CFFC
_0219D02C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	mov r0, #7
	strh r0, [r4, #4]
	b _0219CFFC
_0219D03E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D052
	bl sub_02005EC0
	cmp r0, #0
	bne _0219D052
	mov r0, #8
	strh r0, [r4, #4]
_0219D052:
	b _0219CFFC
_0219D054:
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219ddd0
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219d920
	add r0, r4, #0
	bl sub_0219D0C8
	bl sub_0202A6F0
	mov r5, #0xc1
	lsl r5, r5, #2
	add r0, r4, r5
	bl ovy324_219e6d4
	add r0, r5, #0
	sub r0, #0x38
	add r0, r4, r0
	bl ovy324_219e214
	sub r5, #0x4c
	add r0, r4, r5
	bl ovy324_219e1b0
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219d874
	add r4, #8
	add r0, r4, #0
	bl ovy324_219d688
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D09E:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D0A2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0219D0A8: .word 0x02FFFC3C
	thumb_func_end ovy324_219cf08

	thumb_func_start sub_0219D0AC
sub_0219D0AC: ; 0x0219D0AC
	ldr r3, [r0]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	beq _0219D0C4
	ldr r2, [r1, #0x24]
	mov r1, #0x2a
	lsl r1, r1, #4
	str r2, [r0, r1]
	ldr r2, [r3, #0x18]
	add r1, r1, #4
	ldr r2, [r2, #0x28]
	str r2, [r0, r1]
_0219D0C4:
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D0AC

	thumb_func_start sub_0219D0C8
sub_0219D0C8: ; 0x0219D0C8
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D0C8

	thumb_func_start ovy324_219d0cc
ovy324_219d0cc: ; 0x0219D0CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r3, #0
	ldrh r0, [r4, #4]
	cmp r0, #9
	bls _0219D0DA
	b _0219D40A
_0219D0DA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D0E6: ; jump table
	.short _0219D0FA - _0219D0E6 - 2 ; case 0
	.short _0219D118 - _0219D0E6 - 2 ; case 1
	.short _0219D206 - _0219D0E6 - 2 ; case 2
	.short _0219D282 - _0219D0E6 - 2 ; case 3
	.short _0219D2FC - _0219D0E6 - 2 ; case 4
	.short _0219D376 - _0219D0E6 - 2 ; case 5
	.short _0219D390 - _0219D0E6 - 2 ; case 6
	.short _0219D3A2 - _0219D0E6 - 2 ; case 7
	.short _0219D3B8 - _0219D0E6 - 2 ; case 8
	.short _0219D404 - _0219D0E6 - 2 ; case 9
_0219D0FA:
	bl ovy324_219d434
	bl ovy324_219d488
	bl sub_0219E3DC
	mov r0, #1
	strh r0, [r4, #4]
	mov r0, #3
	bl sub_02005748
	mov r1, #0xf3
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _0219D40A
_0219D118:
	add r0, r4, #0
	bl sub_0219D0AC
	add r0, r4, #0
	ldrh r2, [r4, #6]
	add r0, #8
	add r1, r4, #0
	bl ovy324_219d620
	ldr r1, [r4]
	add r0, r4, #0
	ldrh r2, [r4, #6]
	ldr r1, [r1]
	add r0, #0x10
	bl ovy324_219d6b0
	ldr r2, [r4]
	mov r5, #0xae
	lsl r5, r5, #2
	ldrh r1, [r4, #6]
	ldr r2, [r2]
	add r0, r4, r5
	bl ovy324_219e024
	add r0, r5, #0
	add r0, #0x14
	ldrh r1, [r4, #6]
	add r0, r4, r0
	bl ovy324_219e1d8
	mov r6, #0xf3
	lsl r6, r6, #2
	add r0, r4, #0
	ldrh r1, [r4, #6]
	ldr r2, [r4, r6]
	add r0, #0x10
	bl ovy324_219d7a8
	ldrh r2, [r4, #6]
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	bl ovy324_219e7e4
	ldr r0, [r4]
	add r1, r4, #0
	ldrh r3, [r4, #6]
	ldr r2, [r0]
	add r1, #0x10
	bl ovy324_219da40
	add r0, r4, #0
	ldrh r1, [r4, #6]
	ldr r2, [r4, r6]
	add r0, #0x10
	bl ovy324_219df08
	ldr r2, [r4]
	ldrh r3, [r4, #6]
	ldr r2, [r2, #0x14]
	mov r0, #6
	mov r1, #0xf
	mov r6, #0xf
	bl sub_0202A344
	ldrh r1, [r4, #6]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #2
	strh r0, [r4, #4]
	ldr r0, _0219D410 ; =0x02FFFC3C
	ldr r1, [r0]
	lsl r0, r6, #6
	str r1, [r4, r0]
	mov r1, #2
	add r0, r5, #0
	sub r1, #0xc2
	sub r0, #0x2c
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219ee00
	sub r5, #0x34
	ldr r0, [r4, r5]
	mov r4, #1
	tst r0, r4
	bne _0219D1EC
	add r0, r4, #0
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #2
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219D414 ; =0x04000050
	mov r1, #2
_0219D1E2:
	add r2, r4, #0
	add r3, r7, #0
	bl G2x_SetBlendAlpha_
	b _0219D40A
_0219D1EC:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #2
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219D414 ; =0x04000050
	mov r1, #4
	b _0219D1E2
_0219D206:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021A3C
	cmp r0, #1
	bne _0219D224
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	mov r5, #3
	bl sub_0204E060
	strh r5, [r4, #4]
_0219D224:
	mov r0, #0xa5
	lsl r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _0219D280
	ldr r0, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, #0xc8
	str r0, [sp, #4]
_0219D23E:
	ldr r0, [sp, #4]
	lsl r6, r5, #3
	ldr r7, [r4, r0]
	add r0, r4, r6
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219D276
	add r0, r4, r6
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D276
	add r0, r4, r6
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r4, r6
	add r1, #0xa8
	mov r0, #0
	strb r0, [r1]
_0219D276:
	ldr r0, [sp, #8]
	add r5, r5, #1
	ldr r0, [r0]
	cmp r5, r0
	blt _0219D23E
_0219D280:
	b _0219D40A
_0219D282:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D28E
	mov r0, #4
	strh r0, [r4, #4]
_0219D28E:
	add r0, r4, #0
	bl ovy324_219d4a0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021A3C
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, #0xc8
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _0219D2FA
	mov r0, #0x73
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #0xc8
	str r0, [sp, #0xc]
_0219D2B6:
	mov r0, #0x73
	lsl r0, r0, #2
	lsl r6, r5, #3
	ldr r7, [r4, r0]
	add r0, r4, r6
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219D2F0
	add r0, r4, r6
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D2F0
	add r0, r4, r6
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r4, r6
	add r1, #0xa8
	mov r0, #0
	strb r0, [r1]
_0219D2F0:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	ldr r0, [r4, r0]
	cmp r5, r0
	blt _0219D2B6
_0219D2FA:
	b _0219D40A
_0219D2FC:
	add r0, r4, #0
	bl ovy324_219d4a0
	add r0, r4, #0
	bl ovy324_219cee0
	add r0, r4, #0
	bl ovy324_219eb7c
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021A3C
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, #0xc8
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _0219D40A
	mov r0, #0x73
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0xc8
	str r0, [sp, #0x10]
_0219D330:
	mov r0, #0x73
	lsl r0, r0, #2
	lsl r6, r5, #3
	ldr r7, [r4, r0]
	add r0, r4, r6
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219D36A
	add r0, r4, r6
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D36A
	add r0, r4, r6
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r4, r6
	add r1, #0xa8
	mov r0, #0
	strb r0, [r1]
_0219D36A:
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	ldr r0, [r4, r0]
	cmp r5, r0
	blt _0219D330
	b _0219D40A
_0219D376:
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006C40
	cmp r0, #0
	bne _0219D388
	mov r0, #6
	strh r0, [r4, #4]
_0219D388:
	add r0, r4, #0
	bl ovy324_219d4a0
	b _0219D40A
_0219D390:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	mov r0, #7
	strh r0, [r4, #4]
	b _0219D388
_0219D3A2:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D3B6
	bl sub_02005EC0
	cmp r0, #0
	bne _0219D3B6
	mov r0, #8
	strh r0, [r4, #4]
_0219D3B6:
	b _0219D388
_0219D3B8:
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219e000
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219dd14
	add r0, r4, #0
	bl sub_0219D0C8
	bl sub_0202A6F0
	mov r5, #0xc1
	lsl r5, r5, #2
	add r0, r4, r5
	bl ovy324_219e6d4
	add r0, r5, #0
	sub r0, #0x38
	add r0, r4, r0
	bl ovy324_219e214
	sub r5, #0x4c
	add r0, r4, r5
	bl ovy324_219e1b0
	add r0, r4, #0
	add r0, #0x10
	bl ovy324_219d874
	add r4, #8
	add r0, r4, #0
	bl ovy324_219d688
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219D404:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219D40A:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D410: .word 0x02FFFC3C
_0219D414: .word 0x04000050
	thumb_func_end ovy324_219d0cc

	thumb_func_start ovy324_219d418
ovy324_219d418: ; 0x0219D418
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0xa4
	bl sub_0203A1D0
	ldr r0, _0219D430 ; =0x000000A8
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, pc}
	nop
_0219D430: .word 0x000000A8
	thumb_func_end ovy324_219d418

	thumb_func_start ovy324_219d434
ovy324_219d434: ; 0x0219D434
	push {r4, r5, r6, lr}
	ldr r5, _0219D47C ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _0219D480 ; =0x0400106C
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
	ldr r0, _0219D484 ; =0xFFFF1FFF
	sub r4, #0x6c
	and r1, r0
	str r1, [r5]
	ldr r1, [r4]
	and r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D47C: .word 0x0400006C
_0219D480: .word 0x0400106C
_0219D484: .word 0xFFFF1FFF
	thumb_func_end ovy324_219d434

	thumb_func_start ovy324_219d488
ovy324_219d488: ; 0x0219D488
	push {r3, lr}
	ldr r0, _0219D498 ; =0x0219F62C
	bl sub_02046C40
	ldr r0, _0219D49C ; =0x0219F16C
	bl sub_02044710
	pop {r3, pc}
	.align 2, 0
_0219D498: .word 0x0219F62C
_0219D49C: .word 0x0219F16C
	thumb_func_end ovy324_219d488

	thumb_func_start ovy324_219d4a0
ovy324_219d4a0: ; 0x0219D4A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0219D4F4 ; =0x02FFFC3C
	ldr r2, [r0]
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	str r2, [r5, r0]
	sub r4, r2, r1
	add r0, r5, #0
	ldrh r1, [r5, #6]
	add r0, #8
	bl sub_0219D67C
	mov r6, #0xae
	lsl r6, r6, #2
_0219D4C0:
	ldrh r1, [r5, #6]
	add r0, r5, r6
	bl sub_0219E108
	sub r4, r4, #1
	bne _0219D4C0
	ldr r2, [r5]
	mov r4, #0xae
	lsl r4, r4, #2
	ldrh r1, [r5, #6]
	ldr r2, [r2]
	add r0, r5, r4
	bl ovy324_219e118
	add r4, #0x14
	ldrh r1, [r5, #6]
	add r0, r5, r4
	bl sub_0219E20C
	add r0, r5, #0
	bl ovy324_219eb30
	bl sub_0202A3E0
	pop {r4, r5, r6, pc}
	nop
_0219D4F4: .word 0x02FFFC3C
	thumb_func_end ovy324_219d4a0

	thumb_func_start ovy324_219d4f8
ovy324_219d4f8: ; 0x0219D4F8
	push {r3, r4, r5, lr}
	mov r5, #0x73
	add r4, r1, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02021A3C
	add r0, r4, #0
	add r0, #0xa8
	ldrb r0, [r0]
	ldr r5, [r4, r5]
	cmp r0, #0
	beq _0219D53A
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D53A
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa8
	strb r1, [r0]
_0219D53A:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, r4, #0
	add r0, #0xb0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219D570
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D570
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl BmpWin_FlushChar
	mov r0, #0
	add r4, #0xb0
	strb r0, [r4]
_0219D570:
	bl sub_0204B7C8
	bl sub_02045A5C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy324_219d4f8

	thumb_func_start ovy324_219d57c
ovy324_219d57c: ; 0x0219D57C
	push {r4, lr}
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0219D592
	lsl r2, r0, #0x10
	ldr r0, _0219D5B8 ; =0x01FF0000
	and r2, r0
	ldr r0, _0219D5BC ; =0x0400001C
	str r2, [r0]
_0219D592:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	lsl r3, r2, #0x10
	add r4, r3, #0
	ldr r2, _0219D5B8 ; =0x01FF0000
	ldr r3, _0219D5C0 ; =0x04000014
	and r4, r2
	str r4, [r3]
	ldr r0, [r1, r0]
	add r0, #0x10
	lsl r0, r0, #0x10
	and r0, r2
	str r0, [r3, #4]
	bl sub_0204B7C8
	bl sub_02045A5C
	pop {r4, pc}
	.align 2, 0
_0219D5B8: .word 0x01FF0000
_0219D5BC: .word 0x0400001C
_0219D5C0: .word 0x04000014
	thumb_func_end ovy324_219d57c

	thumb_func_start ovy324_219d5c4
ovy324_219d5c4: ; 0x0219D5C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl sub_020444A4
	add r0, r4, #0
	bl sub_02048080
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r3, #2
	str r0, [sp, #8]
	bl sub_02048D28
	bl sub_020232D0
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	str r0, [r5]
	ldr r0, _0219D61C ; =ovy324_219d4f8
	add r1, r6, #0
	mov r2, #5
	bl GFL_VBlankTCBAdd
	str r0, [r5, #4]
	mov r0, #1
	bl sub_02046DF8
	bl sub_02046DE0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D61C: .word ovy324_219d4f8
	thumb_func_end ovy324_219d5c4

	thumb_func_start ovy324_219d620
ovy324_219d620: ; 0x0219D620
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl sub_020444A4
	add r0, r4, #0
	bl sub_02048080
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r3, #2
	str r0, [sp, #8]
	bl sub_02048D28
	bl sub_020232D0
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	str r0, [r5]
	ldr r0, _0219D678 ; =ovy324_219d57c
	add r1, r6, #0
	mov r2, #5
	bl GFL_VBlankTCBAdd
	str r0, [r5, #4]
	mov r0, #1
	bl sub_02046DF8
	bl sub_02046DE0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D678: .word ovy324_219d57c
	thumb_func_end ovy324_219d620

	thumb_func_start sub_0219D67C
sub_0219D67C: ; 0x0219D67C
	ldr r0, [r0]
	ldr r3, _0219D684 ; =sub_0203A7F4
	bx r3
	nop
_0219D684: .word sub_0203A7F4
	thumb_func_end sub_0219D67C

	thumb_func_start ovy324_219d688
ovy324_219d688: ; 0x0219D688
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
	thumb_func_end ovy324_219d688

	thumb_func_start ovy324_219d6b0
ovy324_219d6b0: ; 0x0219D6B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0219D790 ; =0x0219F564
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #1
	mov r2, #0
	mov r7, #0
	bl sub_0204476C
	ldr r1, _0219D794 ; =0x0219F584
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D798 ; =0x0219F5A4
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D79C ; =0x0219F5C4
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D7A0 ; =0x0219F5E4
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	str r7, [sp]
	ldr r4, _0219D7A4 ; =0x0000010F
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl sub_0204AD88
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #1
	mov r3, #0
	bl sub_0204AF18
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	mov r2, #2
	mov r3, #0
	bl sub_0204AD88
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #2
	mov r3, #0
	bl sub_0204AF18
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #4]
	bl sub_0204B0B8
	mov r0, #3
	bl sub_02044F90
	mov r0, #3
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #1
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #2
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #0x17
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r5, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0xa9
	str r0, [r6, r1]
	add r0, r5, #0
	bl sub_02021998
	add r1, r4, #0
	add r1, #0xad
	str r0, [r6, r1]
	add r4, #0xa5
	mov r0, #1
	str r0, [r6, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D790: .word 0x0219F564
_0219D794: .word 0x0219F584
_0219D798: .word 0x0219F5A4
_0219D79C: .word 0x0219F5C4
_0219D7A0: .word 0x0219F5E4
_0219D7A4: .word 0x0000010F
	thumb_func_end ovy324_219d6b0

	thumb_func_start ovy324_219d7a8
ovy324_219d7a8: ; 0x0219D7A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	mov r4, #0x20
	mov r7, #0
	bl sub_020450CC
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #1
	bl sub_02045738
	mov r0, #2
	bl sub_02045738
	str r7, [sp]
	add r4, #0xef
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl sub_0204B0B8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AD88
	str r7, [sp]
	str r7, [sp, #4]
	ldr r1, _0219D824 ; =0x0219F084
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF18
	mov r0, #3
	bl sub_02044F90
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D824: .word 0x0219F084
	thumb_func_end ovy324_219d7a8

	thumb_func_start ovy324_219d828
ovy324_219d828: ; 0x0219D828
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _0219D84C ; =0x0219F09C
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	ldr r0, _0219D850 ; =0x0000010F
	mov r2, #3
	bl sub_0204AF18
	mov r0, #3
	bl sub_02044F90
	add sp, #0xc
	pop {pc}
	.align 2, 0
_0219D84C: .word 0x0219F09C
_0219D850: .word 0x0000010F
	thumb_func_end ovy324_219d828

	thumb_func_start ovy324_219d854
ovy324_219d854: ; 0x0219D854
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	ldr r0, _0219D870 ; =0x0000010F
	mov r1, #0x16
	mov r2, #3
	bl sub_0204AF18
	add sp, #0xc
	pop {pc}
	nop
_0219D870: .word 0x0000010F
	thumb_func_end ovy324_219d854

	thumb_func_start ovy324_219d874
ovy324_219d874: ; 0x0219D874
	push {r3, r4, r5, lr}
	mov r5, #0x6f
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02021A18
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_02022DA8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy324_219d874

	thumb_func_start ovy324_219d88c
ovy324_219d88c: ; 0x0219D88C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219D91C ; =0x0000010B
	add r7, r1, #0
	str r2, [sp]
	add r2, r7, r4
	lsl r2, r2, #0x10
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	add r6, r3, #0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r7, r4, #0
	add r1, #0xb5
	str r0, [r5, r1]
	add r7, #0x25
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0xbd
	str r0, [r5, r1]
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0xc1
	str r0, [r5, r1]
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xc5
	str r2, [r5, r0]
	add r0, r4, #0
	add r0, #0xb5
	ldr r0, [r5, r0]
	mov r1, #0x14
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	bl GFL_WordSetSystemCreateDefault
	add r4, #0xb9
	str r0, [r5, r4]
	mov r4, #0x29
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0201FF08
	add r2, r0, #0
	add r0, r4, #0
	sub r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020243F4
	sub r4, #0xcc
	ldr r0, [r5, r4]
	ldr r2, [sp]
	mov r1, #1
	bl GFL_CopyVarForText
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D91C: .word 0x0000010B
	thumb_func_end ovy324_219d88c

	thumb_func_start ovy324_219d920
ovy324_219d920: ; 0x0219D920
	push {r3, r4, r5, lr}
	mov r4, #0x1d
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r3, r4, r5, pc}
	thumb_func_end ovy324_219d920

	thumb_func_start ovy324_219d954
ovy324_219d954: ; 0x0219D954
	push {r4, r5}
	mov r3, #0x76
	lsl r3, r3, #2
	lsl r4, r1, #2
	add r5, r0, r3
	lsl r1, r2, #2
	ldr r3, [r5, r4]
	ldr r0, [r5, r1]
	str r0, [r5, r4]
	str r3, [r5, r1]
	pop {r4, r5}
	bx lr
	thumb_func_end ovy324_219d954

	thumb_func_start ovy324_219d96c
ovy324_219d96c: ; 0x0219D96C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, r2
	bgt _0219D9D6
	mov r1, #0x14
	mov r2, #0x16
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0x17
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r4, #1
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x18
	mov r2, #0x1e
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #0x1f
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #0x20
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x1b
	mov r2, #0x21
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0x22
	bl ovy324_219d954
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #0x23
	bl ovy324_219d954
	mov r0, #0xa9
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
_0219D9D6:
	mov r0, #0xa9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy324_219d96c

	thumb_func_start ovy324_219d9e0
ovy324_219d9e0: ; 0x0219D9E0
	push {r4, r5, r6, lr}
	ldr r2, [r0]
	add r5, r1, #0
	cmp r2, #0x28
	bge _0219D9F4
	ldr r0, [r0, #0xc]
	bl sub_02008BB0
	add r5, r0, #0
	b _0219DA36
_0219D9F4:
	ldr r3, _0219DA3C ; =0x00007FFF
	add r4, r5, #0
	and r4, r3
	add r3, r3, #1
	orr r3, r4
	lsl r3, r3, #0x10
	mov r0, #0
	mov r1, #2
	mov r2, #0xb4
	lsr r3, r3, #0x10
	bl GFL_MsgSysLoadData
	add r4, r0, #0
	mov r0, #0x10
	add r1, r5, #0
	bl GFL_StrBufCreate
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xc5
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02024BE4
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_MsgDataFree
_0219DA36:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0219DA3C: .word 0x00007FFF
	thumb_func_end ovy324_219d9e0

	thumb_func_start ovy324_219da40
ovy324_219da40: ; 0x0219DA40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r3, [sp, #8]
	str r0, [sp]
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	str r2, [sp, #4]
	bl MyStatus_GetTrainerGender
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	bl sub_02011040
	ldr r6, _0219DD08 ; =0x00000139
	str r0, [sp, #0x18]
	ldr r3, [sp, #8]
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	mov r4, #0
	bl GFL_MsgSysLoadData
	add r1, r6, #0
	add r1, #0x87
	str r0, [r5, r1]
	ldr r0, [sp, #8]
	bl GFL_WordSetSystemCreateDefault
	add r1, r6, #0
	add r1, #0x8b
	add r6, #0x87
	str r0, [r5, r1]
	ldr r0, [r5, r6]
	ldr r6, _0219DD0C ; =0x0000026B
	add r1, r6, #0
	bl sub_0204898C
	add r1, r6, #0
	sub r1, #0x9b
	str r0, [r5, r1]
	add r0, r6, #0
	sub r0, #0xab
	ldr r0, [r5, r0]
	add r1, r6, #1
	bl sub_0204898C
	add r1, r6, #0
	sub r1, #0x97
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	mov r1, #0xf
	add r7, r0, #0
	add r0, r6, #0
	str r0, [sp, #0x28]
	sub r0, #0xab
	mul r7, r1
	str r0, [sp, #0x28]
	sub r6, #0x93
_0219DAB6:
	ldr r0, [sp, #0x28]
	add r1, r4, r7
	ldr r0, [r5, r0]
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #0xf
	blt _0219DAB6
	mov r4, #7
	lsl r4, r4, #6
	add r1, r4, #0
	ldr r0, [r5, r4]
	add r1, #0xa7
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0x54
	str r0, [r5, r1]
	add r1, r4, #0
	ldr r0, [r5, r4]
	add r1, #0xa9
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0x58
	str r0, [r5, r1]
	add r1, r4, #0
	ldr r0, [r5, r4]
	add r1, #0xaa
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0x5c
	str r0, [r5, r1]
	add r1, r4, #0
	ldr r0, [r5, r4]
	add r1, #0xa8
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0x60
	str r0, [r5, r1]
	ldr r1, [sp, #0x1c]
	add r2, r7, #2
	ldr r0, [r5, r4]
	add r1, r1, r2
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0x68
	str r0, [r5, r1]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ovy324_219d9e0
	add r4, #0x6c
	str r0, [r5, r4]
	ldr r0, [sp, #8]
	ldr r1, _0219DD10 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	str r0, [sp, #0xc]
	ldr r3, [sp, #0xc]
	mov r0, #0
	lsl r3, r3, #0x10
	mov r1, #2
	mov r2, #0xb4
	lsr r3, r3, #0x10
	mov r6, #0
	bl GFL_MsgSysLoadData
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0219DB5A
	mov r4, #0x29
	b _0219DB5E
_0219DB5A:
	mov r6, #0x52
	mov r4, #0x7b
_0219DB5E:
	mov r0, #0x10
	str r0, [sp, #0x20]
	ldr r1, [sp, #8]
	mov r0, #0x10
	bl GFL_StrBufCreate
	mov r7, #0x23
	lsl r7, r7, #4
	str r0, [r5, r7]
	ldr r1, [sp, #8]
	mov r0, #0x10
	bl GFL_StrBufCreate
	add r1, r7, #4
	str r0, [r5, r1]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r4, r1
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_02024BE4
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r6, r1
	bl sub_0204898C
	add r4, r0, #0
	add r0, r7, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02024BE4
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_MsgDataFree
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #0x20]
	lsl r2, r2, #0x10
	add r0, #0xfd
	ldr r1, [sp, #4]
	lsr r2, r2, #0x10
	str r0, [sp, #0x20]
	bl sub_0204A934
	add r4, r0, #0
	mov r1, #8
	add r0, r7, #0
	ldrsh r2, [r4, r1]
	sub r0, #0x70
	add r1, r7, #0
	add r1, #0x3d
	ldr r0, [r5, r0]
	add r1, r2, r1
	bl sub_0204898C
	add r1, r7, #0
	sub r1, #0xc
	str r0, [r5, r1]
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl GFL_HeapFree
	add r0, r7, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219DC50
	add r0, r7, #0
	str r0, [sp, #0x34]
	add r0, #0x60
	str r0, [sp, #0x34]
	add r0, r7, #0
	str r0, [sp, #0x30]
	add r0, #8
	str r0, [sp, #0x30]
	add r0, r7, #0
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	add r7, #0x60
_0219DC1C:
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0201FF08
	str r0, [sp, #0x24]
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r1, [sp, #8]
	mov r0, #0xc
	bl GFL_StrBufCreate
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x24]
	ldr r2, [r6, r2]
	mov r1, #0x73
	bl sub_0201CCF8
	ldr r0, [r5, r7]
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _0219DC1C
_0219DC50:
	mov r6, #0x29
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	mov r1, #0
	mov r4, #0
	bl sub_0201FF08
	add r2, r0, #0
	add r0, r6, #0
	sub r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020243F4
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219DCC6
	add r0, r6, #4
	str r0, [sp, #0x44]
	add r0, r6, #0
	str r0, [sp, #0x40]
	sub r0, #0x40
	str r0, [sp, #0x40]
	add r0, r6, #0
	str r0, [sp, #0x3c]
	sub r0, #0x40
	str r0, [sp, #0x3c]
	add r0, r6, #4
	str r0, [sp, #0x38]
_0219DC90:
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0201FF08
	add r7, r0, #0
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r1, [sp, #8]
	mov r0, #0xc
	bl GFL_StrBufCreate
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x3c]
	str r0, [r6, r1]
	ldr r2, [r6, r2]
	add r0, r7, #0
	mov r1, #0x73
	bl sub_0201CCF8
	ldr r0, [sp, #0x38]
	add r4, r4, #1
	ldr r0, [r5, r0]
	bl sub_0201FDF8
	cmp r4, r0
	blt _0219DC90
_0219DCC6:
	ldr r1, [sp, #8]
	mov r0, #0x19
	bl GFL_StrBufCreate
	mov r4, #0x71
	lsl r4, r4, #2
	add r6, r0, #0
	add r2, r4, #0
	add r2, #0x64
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	add r0, #0x64
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r4, #0x64
	ldr r0, [sp, #0x18]
	str r6, [r5, r4]
	bl sub_020111B0
	bl sub_020111EC
	add r1, r0, #0
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	bl ovy324_219d96c
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DD08: .word 0x00000139
_0219DD0C: .word 0x0000026B
_0219DD10: .word 0x00007FFF
	thumb_func_end ovy324_219da40

	thumb_func_start ovy324_219dd14
ovy324_219dd14: ; 0x0219DD14
	push {r4, r5, r6, lr}
	mov r6, #0x76
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0219DD1E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _0219DD2C
	bl GFL_StrBufFree
_0219DD2C:
	add r4, r4, #1
	cmp r4, #0x24
	blt _0219DD1E
	mov r4, #0x75
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	sub r4, #0x14
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r4, r5, r6, pc}
	thumb_func_end ovy324_219dd14

	thumb_func_start ovy324_219dd58
ovy324_219dd58: ; 0x0219DD58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x10
	str r4, [sp]
	mov r6, #0
	add r5, r0, #0
	str r6, [sp, #4]
	mov r7, #1
	str r7, [sp, #8]
	mov r0, #1
	mov r1, #2
	mov r2, #4
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #2
	mov r1, #2
	mov r2, #4
	mov r3, #0x1c
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	str r0, [r5, #4]
	add r7, r6, #0
_0219DD8E:
	lsl r4, r6, #2
	lsl r2, r6, #3
	add r0, r5, r2
	ldr r1, [r5, r4]
	add r0, #0x94
	str r1, [r0]
	add r0, r5, r2
	add r0, #0x98
	strb r7, [r0]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xee
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add r6, r6, #1
	cmp r6, #2
	blt _0219DD8E
	mov r0, #1
	bl sub_02044F90
	mov r0, #2
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219dd58

	thumb_func_start ovy324_219ddd0
ovy324_219ddd0: ; 0x0219DDD0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02048210
	ldr r0, [r4]
	bl sub_02048210
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy324_219ddd0

	thumb_func_start ovy324_219dde4
ovy324_219dde4: ; 0x0219DDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #0
	cmp r3, #1
	bne _0219DE06
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02022888
	mov r1, #0x78
	sub r4, r1, r0
_0219DE06:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r7, r7, #3
	str r0, [sp, #0xc]
	add r0, r5, r7
	add r0, #0x94
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	lsl r2, r4, #0x10
	str r6, [sp]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r3, #0
	bl sub_02021C7C
	add r0, r5, r7
	mov r1, #1
	add r0, #0x98
	strb r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219dde4

	thumb_func_start ovy324_219de48
ovy324_219de48: ; 0x0219DE48
	push {r4, lr}
	add r2, r0, #0
	ldr r0, _0219DEE4 ; =0x0219F750
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r0, #0
	sub r1, #0x1e
	cmp r1, #0x10
	bhi _0219DEC6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DE66: ; jump table
	.short _0219DE88 - _0219DE66 - 2 ; case 0
	.short _0219DE90 - _0219DE66 - 2 ; case 1
	.short _0219DE94 - _0219DE66 - 2 ; case 2
	.short _0219DE9A - _0219DE66 - 2 ; case 3
	.short _0219DEB4 - _0219DE66 - 2 ; case 4
	.short _0219DE9E - _0219DE66 - 2 ; case 5
	.short _0219DE9E - _0219DE66 - 2 ; case 6
	.short _0219DE9E - _0219DE66 - 2 ; case 7
	.short _0219DE9E - _0219DE66 - 2 ; case 8
	.short _0219DE9E - _0219DE66 - 2 ; case 9
	.short _0219DE9E - _0219DE66 - 2 ; case 10
	.short _0219DEAE - _0219DE66 - 2 ; case 11
	.short _0219DEAE - _0219DE66 - 2 ; case 12
	.short _0219DEAE - _0219DE66 - 2 ; case 13
	.short _0219DEAE - _0219DE66 - 2 ; case 14
	.short _0219DEAE - _0219DE66 - 2 ; case 15
	.short _0219DEAE - _0219DE66 - 2 ; case 16
_0219DE88:
	mov r0, #0x8a
_0219DE8A:
	lsl r0, r0, #2
_0219DE8C:
	ldr r4, [r2, r0]
	b _0219DEE0
_0219DE90:
	mov r0, #0x8b
	b _0219DE8A
_0219DE94:
	mov r0, #0x23
	lsl r0, r0, #4
	b _0219DE8C
_0219DE9A:
	mov r0, #0x8d
	b _0219DE8A
_0219DE9E:
	sub r0, #0x23
	add r0, #0x18
_0219DEA2:
	lsl r0, r0, #2
	add r1, r2, r0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	b _0219DEE0
_0219DEAE:
	sub r0, #0x29
	add r0, #0x1e
	b _0219DEA2
_0219DEB4:
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _0219DEC2
	sub r0, #0x70
	b _0219DE8C
_0219DEC2:
	sub r0, #0x78
	b _0219DE8C
_0219DEC6:
	lsl r0, r0, #2
	mov r1, #0x76
	add r0, r2, r0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	sub r1, #8
	ldr r1, [r2, r1]
	add r0, r4, #0
	bl sub_020485BC
	cmp r0, #1
	bne _0219DEE0
	mov r4, #0
_0219DEE0:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0219DEE4: .word 0x0219F750
	thumb_func_end ovy324_219de48

	thumb_func_start ovy324_219dee8
ovy324_219dee8: ; 0x0219DEE8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	bl ovy324_219de48
	add r2, r0, #0
	beq _0219DF04
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl ovy324_219dde4
_0219DF04:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy324_219dee8

	thumb_func_start ovy324_219df08
ovy324_219df08: ; 0x0219DF08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _0219DFF4 ; =0x0219F7DC
	str r1, [sp, #0xc]
	mov r6, #0
	mov r4, #5
	str r0, [sp, #0x10]
	cmp r2, #1
	bne _0219DF24
	ldr r0, _0219DFF8 ; =0x0219F874
	str r0, [sp, #0x10]
	add r0, r6, #0
	b _0219DF2E
_0219DF24:
	cmp r2, #2
	bne _0219DF32
	ldr r0, _0219DFFC ; =0x0219F90C
	str r0, [sp, #0x10]
	mov r0, #1
_0219DF2E:
	bl ovy324_219e430
_0219DF32:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0x24
	beq _0219DFD8
_0219DF3E:
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x10]
	add r7, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0x23
	bhs _0219DFC2
	add r0, r5, #0
	bl ovy324_219de48
	cmp r0, #0
	beq _0219DFC8
	cmp r4, #0x3e
	bgt _0219DF6C
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r1, [r7, #1]
	lsl r2, r4, #0x18
	b _0219DF82
_0219DF6C:
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r2, r4, #0
	sub r2, #0x3e
	ldrb r1, [r7, #1]
	mov r0, #2
	lsl r2, r2, #0x18
_0219DF82:
	lsr r2, r2, #0x18
	mov r3, #0xf
	bl BmpWin_CreateDynamic
	lsl r1, r6, #2
	lsl r2, r6, #2
	str r0, [r5, r1]
	lsl r3, r6, #3
	add r0, r5, r3
	ldr r1, [r5, r2]
	add r0, #0x94
	str r1, [r0]
	add r1, r5, r3
	add r1, #0x98
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r5, r2]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	str r0, [sp]
	ldrb r2, [r7]
	ldrb r3, [r7, #3]
	add r0, r5, #0
	bl ovy324_219dee8
	add r6, r6, #1
	b _0219DFC4
_0219DFC2:
	bne _0219DFC8
_0219DFC4:
	ldrb r0, [r7, #2]
	add r4, r4, r0
_0219DFC8:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x10]
	ldrb r0, [r0, r1]
	cmp r0, #0x24
	bne _0219DF3E
_0219DFD8:
	mov r0, #0xa1
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r0, #8
	str r4, [r5, r0]
	mov r0, #1
	bl sub_02044F90
	mov r0, #2
	bl sub_02044F90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DFF4: .word 0x0219F7DC
_0219DFF8: .word 0x0219F874
_0219DFFC: .word 0x0219F90C
	thumb_func_end ovy324_219df08

	thumb_func_start ovy324_219e000
ovy324_219e000: ; 0x0219E000
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _0219E022
	add r6, r5, r0
_0219E012:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02048210
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219E012
_0219E022:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy324_219e000

	thumb_func_start ovy324_219e024
ovy324_219e024: ; 0x0219E024
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	lsl r6, r2, #4
	ldr r0, _0219E0D4 ; =0x0219F9A8
	ldr r1, _0219E0D8 ; =0x0219F9B0
	ldrh r0, [r0, r6]
	ldrh r1, [r1, r6]
	add r2, r4, #0
	bl sub_02049D24
	ldr r1, _0219E0DC ; =0x0219F9A4
	str r0, [r5]
	add r1, r1, r6
	bl sub_02049E00
	strh r0, [r5, #4]
	ldrh r1, [r5, #4]
	ldr r0, [r5]
	bl sub_0204A5A8
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r5]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	mov r1, #0
	mov r6, #0
	bl sub_02049974
	mov r2, #1
	lsl r2, r2, #0xc
	str r6, [sp]
	str r2, [sp, #4]
	lsl r0, r2, #9
	str r0, [sp, #8]
	ldr r0, _0219E0E0 ; =0x0219F0A8
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219E0E4 ; =0x0219F0C0
	ldr r1, _0219E0E8 ; =0x00000399
	str r0, [sp, #0x14]
	ldr r0, _0219E0EC ; =0x0219F0B4
	ldr r3, _0219E0F0 ; =0x0000159A
	str r0, [sp, #0x18]
	mov r0, #0
	sub r2, #0x69
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5, #0x10]
	ldr r1, _0219E0F4 ; =0x0000010F
	add r0, r4, #0
	mov r2, #0x23
	bl sub_02015B88
	str r0, [r5, #0xc]
	ldr r0, _0219E0F8 ; =0x0219F064
	add r1, r4, #0
	bl sub_0204A6F0
	str r0, [r5, #8]
	bl sub_0204A744
	mov r0, #3
	bl sub_02044BB8
	ldr r0, _0219E0FC ; =0x04000060
	ldr r2, _0219E100 ; =0xFFFFCFFF
	ldrh r1, [r0]
	add r3, r1, #0
	and r3, r2
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0219E104 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E0D4: .word 0x0219F9A8
_0219E0D8: .word 0x0219F9B0
_0219E0DC: .word 0x0219F9A4
_0219E0E0: .word 0x0219F0A8
_0219E0E4: .word 0x0219F0C0
_0219E0E8: .word 0x00000399
_0219E0EC: .word 0x0219F0B4
_0219E0F0: .word 0x0000159A
_0219E0F4: .word 0x0000010F
_0219E0F8: .word 0x0219F064
_0219E0FC: .word 0x04000060
_0219E100: .word 0xFFFFCFFF
_0219E104: .word 0x0000CFFB
	thumb_func_end ovy324_219e024

	thumb_func_start sub_0219E108
sub_0219E108: ; 0x0219E108
	mov r1, #1
	ldr r0, [r0, #0xc]
	ldr r3, _0219E114 ; =sub_02015C78
	lsl r1, r1, #0xc
	bx r3
	nop
_0219E114: .word sub_02015C78
	thumb_func_end sub_0219E108

	thumb_func_start ovy324_219e118
ovy324_219e118: ; 0x0219E118
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r1, [r4, #4]
	ldr r0, [r4]
	add r7, r2, #0
	bl sub_0204A5A8
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl sub_020162A4
	ldr r0, [r4, #0x10]
	bl sub_0204A638
	bl sub_02049A98
	bl sub_02049AF0
	lsl r0, r7, #4
	ldr r1, _0219E1A4 ; =0x0219F9B0
	str r0, [sp]
	ldrh r0, [r1, r0]
	mov r5, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0219E170
	ldr r1, _0219E1A8 ; =0x0219F9A4
	ldr r0, [sp]
	add r0, r1, r0
	ldrh r7, [r0, #0xc]
_0219E158:
	add r1, r6, r5
	lsl r1, r1, #0x10
	ldr r0, [r4]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	ldr r1, _0219E1AC ; =0x0219F65C
	bl sub_02049B5C
	add r5, r5, #1
	cmp r5, r7
	blt _0219E158
_0219E170:
	bl sub_02049AA0
	ldr r0, [sp, #4]
	mov r5, #0
	cmp r0, #0
	ble _0219E1A0
	ldr r1, _0219E1A8 ; =0x0219F9A4
	ldr r0, [sp]
	add r0, r1, r0
	ldrh r7, [r0, #0xc]
_0219E184:
	add r1, r6, r5
	lsl r1, r1, #0x10
	ldr r0, [r4]
	lsr r1, r1, #0x10
	bl sub_0204A5C0
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xc
	bl sub_02049A64
	add r5, r5, #1
	cmp r5, r7
	blt _0219E184
_0219E1A0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E1A4: .word 0x0219F9B0
_0219E1A8: .word 0x0219F9A4
_0219E1AC: .word 0x0219F65C
	thumb_func_end ovy324_219e118

	thumb_func_start ovy324_219e1b0
ovy324_219e1b0: ; 0x0219E1B0
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
	thumb_func_end ovy324_219e1b0

	thumb_func_start ovy324_219e1d8
ovy324_219e1d8: ; 0x0219E1D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, _0219E204 ; =0x02093F08
	ldr r1, _0219E208 ; =0x0219F62C
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x40
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	pop {r3, r4, r5, pc}
	nop
_0219E204: .word 0x02093F08
_0219E208: .word 0x0219F62C
	thumb_func_end ovy324_219e1d8

	thumb_func_start sub_0219E20C
sub_0219E20C: ; 0x0219E20C
	ldr r3, _0219E210 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219E210: .word sub_0204B794
	thumb_func_end sub_0219E20C

	thumb_func_start ovy324_219e214
ovy324_219e214: ; 0x0219E214
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy324_219e214

	thumb_func_start ovy324_219e224
ovy324_219e224: ; 0x0219E224
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0xf1
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #0xb
	bhi _0219E2CE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219E23E: ; jump table
	.short _0219E256 - _0219E23E - 2 ; case 0
	.short _0219E27C - _0219E23E - 2 ; case 1
	.short _0219E290 - _0219E23E - 2 ; case 2
	.short _0219E2C0 - _0219E23E - 2 ; case 3
	.short _0219E2D6 - _0219E23E - 2 ; case 4
	.short _0219E2EC - _0219E23E - 2 ; case 5
	.short _0219E32A - _0219E23E - 2 ; case 6
	.short _0219E358 - _0219E23E - 2 ; case 7
	.short _0219E398 - _0219E23E - 2 ; case 8
	.short _0219E3D6 - _0219E23E - 2 ; case 9
	.short _0219E3D6 - _0219E23E - 2 ; case 10
	.short _0219E3C4 - _0219E23E - 2 ; case 11
_0219E256:
	mov r0, #1
	mov r1, #1
	mov r6, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219E3D8 ; =0x04000050
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl G2x_SetBlendAlpha_
	str r6, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219E27C:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #0x3c
	bne _0219E2CE
	mov r0, #2
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219E290:
	mov r6, #0xa
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	mov r2, #1
	add r1, r0, #1
	mov r0, #0x10
	str r1, [r4, r6]
	sub r0, r0, r1
	str r0, [sp]
	ldr r0, _0219E3D8 ; =0x04000050
	mov r1, #2
	mov r3, #0
	mov r7, #0
	bl G2x_SetBlendAlpha_
	ldr r0, [r4, r6]
	cmp r0, #8
	bne _0219E2CE
	mov r0, #3
	str r0, [r4, r5]
	str r7, [r4, r6]
	add r6, #8
	str r7, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219E2C0:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0x1e
	bgt _0219E2D0
_0219E2CE:
	b _0219E3D6
_0219E2D0:
	mov r0, #4
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219E2D6:
	mov r0, #8
	str r0, [sp]
	ldr r0, _0219E3D8 ; =0x04000050
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #5
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219E2EC:
	mov r7, #0xa
	lsl r7, r7, #6
	ldr r0, [r4, r7]
	ldr r6, _0219E3D8 ; =0x04000050
	add r0, r0, #1
	str r0, [r4, r7]
	mov r0, #8
	str r0, [sp]
	ldr r3, [r4, r7]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	bl G2x_SetBlendAlpha_
	ldr r1, [r4, r7]
	mov r0, #0x10
	sub r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	add r0, r7, #0
	sub r0, #0x81
	and r0, r1
	sub r6, #0x3c
	str r0, [r6]
	ldr r0, [r4, r7]
	cmp r0, #0x10
	bne _0219E3D6
	mov r0, #6
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219E32A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	bne _0219E346
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r5, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r5]
	cmp r1, r0
	ble _0219E3D6
_0219E346:
	mov r0, #0xf1
	mov r1, #7
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xa2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219E358:
	mov r7, #0xa
	lsl r7, r7, #6
	ldr r0, [r4, r7]
	ldr r6, _0219E3D8 ; =0x04000050
	sub r0, r0, #1
	str r0, [r4, r7]
	mov r0, #8
	str r0, [sp]
	ldr r3, [r4, r7]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	bl G2x_SetBlendAlpha_
	ldr r1, [r4, r7]
	mov r0, #0x10
	sub r0, r0, r1
	neg r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	add r0, r7, #0
	sub r0, #0x81
	and r0, r1
	sub r6, #0x3c
	str r0, [r6]
	ldr r0, [r4, r7]
	cmp r0, #0
	bne _0219E3D6
	mov r0, #8
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219E398:
	mov r6, #0xa1
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	add r1, r1, #1
	str r1, [r4, r6]
	bl ovy324_219e570
	cmp r0, #0
	beq _0219E3B0
	mov r0, #5
	strh r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E3B0:
	mov r0, #0xb
	str r0, [r4, r5]
	add r2, r5, #4
	add r0, r4, #0
	ldr r1, [r4, r6]
	ldr r2, [r4, r2]
	add r0, #0x10
	bl ovy324_219e48c
	pop {r3, r4, r5, r6, r7, pc}
_0219E3C4:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219E3D6
	mov r0, #4
	str r0, [r4, r5]
_0219E3D6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E3D8: .word 0x04000050
	thumb_func_end ovy324_219e224

	thumb_func_start sub_0219E3DC
sub_0219E3DC: ; 0x0219E3DC
	ldr r0, _0219E420 ; =0x04000048
	ldr r1, _0219E424 ; =0xFFFFC0FF
	ldrh r2, [r0]
	add r3, r0, #0
	sub r3, #0x48
	and r2, r1
	mov r1, #0x1f
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0, #2]
	mov r1, #0x3f
	bic r2, r1
	strh r2, [r0, #2]
	ldr r2, [r3]
	ldr r1, _0219E428 ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xc
	orr r1, r2
	str r1, [r3]
	mov r3, #0xff
	sub r1, r0, #6
	strh r3, [r1]
	ldr r2, _0219E42C ; =0x000010B0
	sub r1, r0, #2
	strh r2, [r1]
	add r1, r0, #0
	sub r1, #8
	strh r3, [r1]
	sub r0, r0, #4
	strh r2, [r0]
	bx lr
	.align 2, 0
_0219E420: .word 0x04000048
_0219E424: .word 0xFFFFC0FF
_0219E428: .word 0xFFFF1FFF
_0219E42C: .word 0x000010B0
	thumb_func_end sub_0219E3DC

	thumb_func_start ovy324_219e430
ovy324_219e430: ; 0x0219E430
	push {r3, r4}
	ldr r1, _0219E47C ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r1]
	bic r3, r2
	mov r2, #0x17
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	lsl r4, r2, #0x15
	strh r3, [r1]
	ldr r3, [r4]
	ldr r2, _0219E480 ; =0xFFFF1FFF
	and r3, r2
	mov r2, #6
	lsl r2, r2, #0xc
	orr r2, r3
	str r2, [r4]
	cmp r0, #0
	bne _0219E46A
	add r0, r1, #0
	ldr r2, _0219E484 ; =0x000088FF
	sub r0, #8
	strh r2, [r0]
	ldr r2, _0219E488 ; =0x000010B0
	sub r0, r1, #4
	strh r2, [r0]
	pop {r3, r4}
	bx lr
_0219E46A:
	add r0, r1, #0
	mov r2, #0x78
	sub r0, #8
	strh r2, [r0]
	ldr r2, _0219E488 ; =0x000010B0
	sub r0, r1, #4
	strh r2, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0219E47C: .word 0x04000048
_0219E480: .word 0xFFFF1FFF
_0219E484: .word 0x000088FF
_0219E488: .word 0x000010B0
	thumb_func_end ovy324_219e430

	thumb_func_start ovy324_219e48c
ovy324_219e48c: ; 0x0219E48C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0
	bne _0219E4A0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	b _0219E4A8
_0219E4A0:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, #0xa
_0219E4A8:
	bl sub_0204898C
	mov r4, #0x71
	lsl r4, r4, #2
	add r1, r4, #4
	add r7, r0, #0
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, r6
	add r4, #0xd4
	ldrb r6, [r0, r4]
	ldr r0, [r5]
	bl BmpWin_GetBitmap
	mov r1, #0xee
	mov r4, #0xee
	bl BmpWin_BitmapFill
	mov r0, #0xee
	add r0, #0xce
	ldr r7, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	mov r0, #0xee
	add r0, #0xda
	ldr r0, [r5, r0]
	add r4, #0xca
	str r0, [sp]
	ldr r0, [r5, r4]
	lsl r4, r6, #4
	mov r3, #0x80
	sub r4, r3, r4
	lsr r3, r4, #0x1f
	str r0, [sp, #4]
	ldr r0, _0219E51C ; =0x0000044E
	add r3, r4, r3
	lsl r3, r3, #0xf
	str r0, [sp, #8]
	add r0, r7, #0
	mov r2, #0
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	add r5, #0x98
	strb r0, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E51C: .word 0x0000044E
	thumb_func_end ovy324_219e48c

	thumb_func_start ovy324_219e520
ovy324_219e520: ; 0x0219E520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	add r7, r6, r0
	str r0, [sp, #4]
	add r0, #0xd8
	str r1, [sp]
	mov r4, #0
	str r0, [sp, #4]
_0219E536:
	ldr r0, [sp]
	cmp r0, #0
	bne _0219E542
	ldr r0, [r7]
	add r1, r4, #0
	b _0219E54C
_0219E542:
	mov r0, #7
	lsl r0, r0, #6
	add r1, r4, #0
	ldr r0, [r6, r0]
	add r1, #0xa
_0219E54C:
	bl sub_0204898C
	add r5, r0, #0
	add r0, r5, #0
	bl sub_0202284C
	ldr r1, [sp, #4]
	add r2, r6, r4
	strb r0, [r2, r1]
	add r0, r5, #0
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #0xa
	blt _0219E536
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219e520

	thumb_func_start ovy324_219e570
ovy324_219e570: ; 0x0219E570
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #0x1f
	lsr r5, r1, #0x1f
	lsl r3, r1, #0x1f
	sub r3, r3, r5
	ror r3, r2
	add r2, r5, r3
	mov r3, #0xf2
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	cmp r3, #0
	bne _0219E5A0
	add r3, r0, #0
	sub r3, #0xac
	sub r0, #0xb4
	add r3, r4, r3
	lsl r2, r2, #2
	add r5, r3, r2
	ldr r0, [r4, r0]
	b _0219E5B0
_0219E5A0:
	add r3, r0, #0
	sub r3, #0xac
	sub r0, #0xb4
	add r3, r4, r3
	lsl r2, r2, #2
	ldr r0, [r4, r0]
	add r5, r3, r2
	add r1, #0xa
_0219E5B0:
	ldr r2, [r3, r2]
	bl GFL_MsgDataLoadStrbuf
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r5]
	ldr r1, [r4, r1]
	bl sub_020485BC
	pop {r3, r4, r5, pc}
	thumb_func_end ovy324_219e570

	thumb_func_start ovy324_219e5c4
ovy324_219e5c4: ; 0x0219E5C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	mov r0, #0xb
	str r1, [sp, #0xc]
	bl sub_0204AA30
	add r1, r6, #0
	add r1, #0x94
	str r0, [r1]
	ldr r2, [sp, #0xc]
	mov r0, #0x16
	mov r1, #1
	bl sub_0204BF1C
	str r0, [r6, #0xc]
	ldr r0, [sp, #0xc]
	ldr r5, _0219E6C8 ; =0x00000237
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	mov r3, #1
	mov r4, #0
	bl Oam_LoadNCGRFile
	str r0, [r6]
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	ldr r3, [sp, #0xc]
	add r1, r5, #1
	add r2, r5, #2
	bl Oam_LoadNCERFile
	str r0, [r6, #8]
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r5, #3
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r2, #1
	mov r3, #0
	bl Oam_LoadNCLRFile
	str r0, [r6, #4]
	ldr r1, _0219E6CC ; =0x0219F06C
	add r0, sp, #0x20
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	ldrh r0, [r0, #2]
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	str r0, [sp, #0x18]
	add r0, sp, #0x20
	ldrh r0, [r0, #6]
	str r0, [sp, #0x1c]
_0219E656:
	ldr r1, [sp, #0x10]
	add r0, sp, #0x20
	strh r1, [r0, #8]
	ldr r1, [sp, #0x14]
	strh r1, [r0, #0xa]
	ldr r1, [sp, #0x18]
	strh r1, [r0, #0xc]
	ldr r1, [sp, #0x1c]
	strh r1, [r0, #0xe]
	lsl r0, r4, #2
	ldr r1, _0219E6D0 ; =0x0219F6F8
	add r5, r6, r0
	ldrb r2, [r1, r0]
	add r7, r1, r0
	add r1, sp, #0x20
	strh r2, [r1, #8]
	ldrb r2, [r7, #1]
	add r0, sp, #0x28
	strh r2, [r1, #0xa]
	mov r1, #0x80
	sub r2, r1, r4
	add r1, sp, #0x20
	strb r2, [r1, #0xe]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r6, #0xc]
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r3, [r6, #8]
	bl sub_0204C040
	str r0, [r5, #0x10]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C124
	ldrb r1, [r7, #2]
	ldr r0, [r5, #0x10]
	mov r2, #1
	bl sub_0204C378
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219E656
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ovy324_219e92c
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E6C8: .word 0x00000237
_0219E6CC: .word 0x0219F06C
_0219E6D0: .word 0x0219F6F8
	thumb_func_end ovy324_219e5c4

	thumb_func_start ovy324_219e6d4
ovy324_219e6d4: ; 0x0219E6D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy324_219e9d8
	mov r4, #0
	add r7, r4, #0
_0219E6E0:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0219E6F0
	bl sub_0204C108
	str r7, [r6, #0x10]
_0219E6F0:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219E6E0
	ldr r0, [r5, #8]
	bl sub_0204BE64
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0219E70C
	bl sub_0204BF98
_0219E70C:
	add r5, #0x94
	ldr r0, [r5]
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219e6d4

	thumb_func_start sub_0219E718
sub_0219E718: ; 0x0219E718
	add r2, r0, #0
	lsr r2, r1
	mov r0, #1
	and r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E718

	thumb_func_start sub_0219E724
sub_0219E724: ; 0x0219E724
	mov r2, #1
	ldr r3, [r0]
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E724

	thumb_func_start ovy324_219e734
ovy324_219e734: ; 0x0219E734
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r4, #0
_0219E73E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0219E718
	cmp r0, #0
	bne _0219E75E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0219E8A0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy324_219e8b0
_0219E75E:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219E73E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219e734

	thumb_func_start ovy324_219e768
ovy324_219e768: ; 0x0219E768
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0219E7B8 ; =0x00000000
	add r6, r0, #0
	add r7, r1, #0
	str r5, [sp]
	beq _0219E7AA
_0219E774:
	mov r0, #0x16
	bl sub_02005748
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0219E718
	cmp r0, #0
	bne _0219E7A6
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0219E8A0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy324_219e8b0
	add r0, sp, #0
	add r1, r4, #0
	bl sub_0219E724
	add r5, r5, #1
_0219E7A6:
	cmp r5, r7
	bne _0219E774
_0219E7AA:
	ldr r1, [sp]
	add r0, r6, #0
	bl ovy324_219e734
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E7B8: .word 0x00000000
	thumb_func_end ovy324_219e768

	thumb_func_start ovy324_219e7bc
ovy324_219e7bc: ; 0x0219E7BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_0219E7C6:
	add r0, r6, #0
	lsr r0, r4
	tst r0, r7
	beq _0219E7DC
	mov r0, #0x5a
	bl sub_02005748
	lsl r1, r4, #1
	add r1, r5, r1
	add r1, #0x68
	strh r0, [r1]
_0219E7DC:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219E7C6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy324_219e7bc

	thumb_func_start ovy324_219e7e4
ovy324_219e7e4: ; 0x0219E7E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0xc1
	add r5, r0, #0
	lsl r7, r7, #2
	add r6, r2, #0
	add r4, r1, #0
	add r0, r5, r7
	add r1, r6, #0
	bl ovy324_219e5c4
	cmp r4, #1
	bne _0219E80E
	ldr r1, [r5]
	add r0, r5, r7
	ldr r1, [r1, #4]
	bl ovy324_219e768
	ldr r1, [r5]
	str r0, [r1, #8]
	b _0219E818
_0219E80E:
	ldr r1, [r5]
	add r0, r5, r7
	ldr r1, [r1, #8]
	bl ovy324_219e734
_0219E818:
	ldr r1, [r5]
	mov r4, #0xc1
	lsl r4, r4, #2
	ldr r1, [r1, #8]
	add r0, r5, r4
	bl ovy324_219e7bc
	mov r0, #4
	mov r1, #0
	mov r7, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0x10
	lsl r0, r0, #6
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	str r6, [sp, #8]
	add r0, #0x94
	ldr r0, [r5, r0]
	sub r1, #0xd3
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	str r6, [sp, #8]
	add r0, #0x94
	ldr r0, [r5, r0]
	sub r1, #0xcf
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0xe0
	str r0, [sp]
	add r0, r4, #0
	sub r4, #0xd4
	str r6, [sp, #4]
	add r0, #0x94
	ldr r0, [r5, r0]
	add r1, r4, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy324_219e7e4

	thumb_func_start sub_0219E8A0
sub_0219E8A0: ; 0x0219E8A0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x10]
	ldr r3, _0219E8AC ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_0219E8AC: .word sub_0204C124
	thumb_func_end sub_0219E8A0

	thumb_func_start ovy324_219e8b0
ovy324_219e8b0: ; 0x0219E8B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #0x10
	lsl r1, r2, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r1, _0219E8D0 ; =0x0219F6FA
	ldr r0, [r4, r5]
	ldrb r1, [r1, r5]
	mov r2, #1
	bl sub_0204C378
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E8D0: .word 0x0219F6FA
	thumb_func_end ovy324_219e8b0

	thumb_func_start ovy324_219e8d4
ovy324_219e8d4: ; 0x0219E8D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_0219E8DE:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219E718
	cmp r0, #0
	beq _0219E8F4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy324_219e8b0
_0219E8F4:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219E8DE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy324_219e8d4

	thumb_func_start ovy324_219e8fc
ovy324_219e8fc: ; 0x0219E8FC
	push {r3, lr}
	cmp r0, #0xc
	bhs _0219E912
	ldr r0, _0219E924 ; =0x0219F6B0
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0219E920
	bl GFL_SndSEPlay
	pop {r3, pc}
_0219E912:
	ldr r0, _0219E928 ; =0x0219F6B4
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0219E920
	bl GFL_SndSEPlay
_0219E920:
	pop {r3, pc}
	nop
_0219E924: .word 0x0219F6B0
_0219E928: .word 0x0219F6B4
	thumb_func_end ovy324_219e8fc

	thumb_func_start ovy324_219e92c
ovy324_219e92c: ; 0x0219E92C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #6
	ldr r7, _0219E9D0 ; =0x00000B41
	add r6, r1, #0
	lsl r4, r4, #6
	add r5, r0, #0
	ldr r3, _0219E9D4 ; =0x0219FC4C
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	str r7, [sp]
	bl GFL_HeapAllocate
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	mov r1, #0
	add r2, r4, #0
	blx MI_CpuFill8
	add r0, r7, #3
	add r7, r4, #0
	add r7, #0x60
	str r0, [sp]
	ldr r3, _0219E9D4 ; =0x0219FC4C
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl GFL_HeapAllocate
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1]
	mov r1, #0
	add r2, r7, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r0, #0x94
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0xba
	add r2, sp, #0xc
	add r3, r6, #0
	bl sub_0204B37C
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r1, #0x98
	ldr r0, [r0, #0xc]
	ldr r1, [r1]
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	bl GFL_HeapFree
	add r0, r5, #0
	add r0, #0x94
	add r4, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	add r2, sp, #8
	add r3, r6, #0
	bl sub_0204B37C
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r5, #0x9c
	ldr r0, [r0, #0xc]
	ldr r1, [r5]
	add r2, r7, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E9D0: .word 0x00000B41
_0219E9D4: .word 0x0219FC4C
	thumb_func_end ovy324_219e92c

	thumb_func_start ovy324_219e9d8
ovy324_219e9d8: ; 0x0219E9D8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0219E9F0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
_0219E9F0:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EA04
	bl GFL_HeapFree
	mov r0, #0
	add r4, #0x9c
	str r0, [r4]
_0219EA04:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy324_219e9d8

	thumb_func_start ovy324_219ea08
ovy324_219ea08: ; 0x0219EA08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x98
	add r4, r1, #0
	ldr r1, [r0]
	lsl r0, r4, #7
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x80
	bl GXS_LoadOBJPltt
	add r5, #0x9c
	ldr r1, [r5]
	mov r2, #0xa0
	add r0, r4, #0
	mul r0, r2
	add r0, r1, r0
	mov r1, #0
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy324_219ea08

	thumb_func_start ovy324_219ea34
ovy324_219ea34: ; 0x0219EA34
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xa4
	ldr r1, [r1]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0xa4
	str r2, [r1]
	cmp r2, #4
	ble _0219EAC8
	add r1, r4, #0
	mov r3, #0
	add r1, #0xa4
	str r3, [r1]
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1]
	ldr r5, _0219EACC ; =0x0219F090
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0xa0
	str r2, [r1]
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1]
	lsl r6, r1, #2
	ldrsh r5, [r5, r6]
	cmp r2, r5
	blt _0219EAAE
	add r2, r4, #0
	add r2, #0xa0
	str r3, [r2]
	add r2, r4, #0
	add r2, #0xac
	ldr r2, [r2]
	sub r3, r2, #1
	add r2, r4, #0
	add r2, #0xac
	str r3, [r2]
	cmp r3, #0
	bgt _0219EAAE
	bl ovy324_219eaec
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0219EAD8
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0219EAD0 ; =0x0219F092
	ldrsh r1, [r1, r2]
	bl sub_0219EB24
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xac
	str r1, [r0]
_0219EAAE:
	add r1, r4, #0
	add r1, #0xa8
	ldr r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0219EAD4 ; =0x0219FC40
	add r4, #0xa0
	ldr r2, [r1, r2]
	ldr r1, [r4]
	lsl r1, r1, #1
	ldrsh r1, [r2, r1]
	bl ovy324_219ea08
_0219EAC8:
	pop {r4, r5, r6, pc}
	nop
_0219EACC: .word 0x0219F090
_0219EAD0: .word 0x0219F092
_0219EAD4: .word 0x0219FC40
	thumb_func_end ovy324_219ea34

	thumb_func_start sub_0219EAD8
sub_0219EAD8: ; 0x0219EAD8
	add r2, r0, #0
	add r2, #0xa8
	str r1, [r2]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xa4
	add r0, #0xa0
	str r2, [r1]
	str r2, [r0]
	bx lr
	thumb_func_end sub_0219EAD8

	thumb_func_start ovy324_219eaec
ovy324_219eaec: ; 0x0219EAEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	str r0, [sp]
	mov r4, #0
	mov r7, #3
_0219EAFA:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0219EB24
	cmp r0, r5
	beq _0219EB0C
	mov r1, #1
	str r1, [sp]
	b _0219EB12
_0219EB0C:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0219EAFA
_0219EB12:
	ldr r1, [sp]
	cmp r1, #0
	bne _0219EB20
	add r0, r5, #1
	cmp r0, #2
	ble _0219EB20
	mov r0, #0
_0219EB20:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219eaec

	thumb_func_start sub_0219EB24
sub_0219EB24: ; 0x0219EB24
	ldr r3, _0219EB2C ; =sub_02005748
	add r0, r1, #0
	bx r3
	nop
_0219EB2C: .word sub_02005748
	thumb_func_end sub_0219EB24

	thumb_func_start ovy324_219eb30
ovy324_219eb30: ; 0x0219EB30
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xdb
	lsl r6, r6, #2
	add r7, r6, #0
	add r5, r0, #0
	mov r4, #0
	sub r7, #0x58
_0219EB3E:
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_0219E718
	cmp r0, #0
	beq _0219EB68
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r1, [r0, r6]
	cmp r1, #0
	beq _0219EB5C
	sub r1, r1, #1
	strh r1, [r0, r6]
	b _0219EB68
_0219EB5C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #1
	bl sub_0204C520
_0219EB68:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219EB3E
	mov r0, #0xc1
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy324_219ea34
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy324_219eb30

	thumb_func_start ovy324_219eb7c
ovy324_219eb7c: ; 0x0219EB7C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0xf1
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #0xb
	bhi _0219EBF8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219EB96: ; jump table
	.short _0219EBAE - _0219EB96 - 2 ; case 0
	.short _0219EBB4 - _0219EB96 - 2 ; case 1
	.short _0219EBBA - _0219EB96 - 2 ; case 2
	.short _0219EBEA - _0219EB96 - 2 ; case 3
	.short _0219EC00 - _0219EB96 - 2 ; case 4
	.short _0219EC50 - _0219EB96 - 2 ; case 5
	.short _0219EC78 - _0219EB96 - 2 ; case 6
	.short _0219ED24 - _0219EB96 - 2 ; case 7
	.short _0219ED20 - _0219EB96 - 2 ; case 8
	.short _0219ECAC - _0219EB96 - 2 ; case 9
	.short _0219ECE0 - _0219EB96 - 2 ; case 10
	.short _0219ED0C - _0219EB96 - 2 ; case 11
_0219EBAE:
	mov r0, #1
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219EBB4:
	mov r0, #2
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219EBBA:
	mov r6, #0xa
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	mov r2, #1
	add r1, r0, #1
	mov r0, #0x10
	str r1, [r4, r6]
	sub r0, r0, r1
	str r0, [sp]
	ldr r0, _0219ED28 ; =0x04000050
	mov r1, #2
	mov r3, #0
	mov r7, #0
	bl G2x_SetBlendAlpha_
	ldr r0, [r4, r6]
	cmp r0, #8
	bne _0219EBF8
	mov r0, #3
	str r0, [r4, r5]
	str r7, [r4, r6]
	add r6, #8
	str r7, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219EBEA:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0x1e
	bgt _0219EBFA
_0219EBF8:
	b _0219ED24
_0219EBFA:
	mov r0, #4
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219EC00:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #1
	tst r0, r5
	bne _0219EC26
	add r0, r5, #0
	add r1, r5, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #8
	str r0, [sp]
	ldr r0, _0219ED28 ; =0x04000050
	mov r1, #2
	b _0219EC3E
_0219EC26:
	add r0, r5, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	add r1, r5, #0
	bl sub_02044C98
	mov r0, #8
	str r0, [sp]
	ldr r0, _0219ED28 ; =0x04000050
	mov r1, #4
_0219EC3E:
	add r2, r5, #0
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #0xf1
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219EC50:
	mov r0, #8
	mov r6, #5
	str r0, [sp]
	lsl r3, r6, #7
	ldr r0, _0219ED28 ; =0x04000050
	ldr r3, [r4, r3]
	mov r1, #6
	mov r2, #5
	mov r7, #6
	bl G2x_SetBlendAlpha_
	lsl r0, r6, #7
	ldr r0, [r4, r0]
	add r1, r0, #1
	lsl r0, r6, #7
	str r1, [r4, r0]
	cmp r1, #0x10
	bne _0219ED24
	str r7, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219EC78:
	add r0, #0x10
	bl ovy324_219ee00
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r5, #8
	add r1, r1, #1
	str r1, [r4, r0]
	ldrh r3, [r4, #6]
	ldr r2, [r4, r5]
	add r0, r4, #0
	bl ovy324_219ef54
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl ovy324_219eda8
	pop {r3, r4, r5, r6, r7, pc}
_0219ECAC:
	mov r6, #0xa2
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _0219ECCC
	add r5, #0x25
	ldr r1, _0219ED2C ; =0x0000FFFF
	add r0, r5, #0
	mov r2, #0x64
	mov r3, #0x5f
	bl sub_02005E08
	ldr r0, [r4, r6]
	add r0, r0, #1
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219ECCC:
	cmp r0, #0x5a
	bne _0219ECDA
	mov r0, #0xa
	str r0, [r4, r5]
	mov r0, #0
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219ECDA:
	add r0, r0, #1
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219ECE0:
	ldr r1, [r4]
	ldr r1, [r1, #0x18]
	bl ovy324_219ed34
	add r0, r4, #0
	ldrh r1, [r4, #6]
	add r0, #0x10
	bl ovy324_219d854
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0219ED30 ; =0xFFFF1FFF
	and r1, r0
	lsr r0, r2, #0xc
	orr r0, r1
	str r0, [r2]
	mov r0, #0
	str r0, [r2, #0x1c]
	mov r0, #0xb
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219ED0C:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #0x5a
	ble _0219ED24
	mov r0, #8
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0219ED20:
	mov r0, #5
	strh r0, [r4, #4]
_0219ED24:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219ED28: .word 0x04000050
_0219ED2C: .word 0x0000FFFF
_0219ED30: .word 0xFFFF1FFF
	thumb_func_end ovy324_219eb7c

	thumb_func_start ovy324_219ed34
ovy324_219ed34: ; 0x0219ED34
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	cmp r1, #0
	beq _0219ED44
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r1, r0]
_0219ED44:
	cmp r0, #0
	beq _0219ED52
	cmp r0, #1
	beq _0219ED6E
	cmp r0, #2
	beq _0219ED8A
	pop {r4, pc}
_0219ED52:
	ldr r2, [r4]
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r2, [r2, #8]
	add r0, r4, r0
	mov r1, #5
	bl ovy324_219e8d4
	ldr r0, [r4]
	mov r1, #5
	ldr r0, [r0, #4]
	bl ovy324_219e8fc
	pop {r4, pc}
_0219ED6E:
	ldr r2, [r4]
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r2, [r2, #8]
	add r0, r4, r0
	mov r1, #8
	bl ovy324_219e8d4
	ldr r0, [r4]
	mov r1, #8
	ldr r0, [r0, #4]
	bl ovy324_219e8fc
	pop {r4, pc}
_0219ED8A:
	ldr r2, [r4]
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r2, [r2, #8]
	add r0, r4, r0
	mov r1, #7
	bl ovy324_219e8d4
	ldr r0, [r4]
	mov r1, #7
	ldr r0, [r0, #4]
	bl ovy324_219e8fc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy324_219ed34

	thumb_func_start ovy324_219eda8
ovy324_219eda8: ; 0x0219EDA8
	push {r4, r5}
	mov r4, #0xf3
	lsl r4, r4, #2
	ldr r1, [r0, r4]
	cmp r1, #0
	bne _0219EDD8
	mov r1, #0xa3
	lsl r1, r1, #2
	add r2, r1, #0
	add r2, #0x10
	ldr r2, [r0, r2]
	ldr r3, [r0, r1]
	lsl r2, r2, #3
	add r2, #0x80
	cmp r3, r2
	blt _0219EDFC
	mov r2, #9
	sub r4, #8
	str r2, [r0, r4]
	mov r2, #0
	sub r1, r1, #4
	str r2, [r0, r1]
	pop {r4, r5}
	bx lr
_0219EDD8:
	mov r2, #0xa3
	lsl r2, r2, #2
	add r3, r2, #0
	add r3, #0x10
	ldr r3, [r0, r3]
	ldr r1, [r0, r2]
	lsl r5, r3, #3
	mov r3, #5
	lsl r3, r3, #6
	add r3, r5, r3
	cmp r1, r3
	blt _0219EDFC
	mov r1, #8
	sub r4, #8
	str r1, [r0, r4]
	mov r3, #0
	sub r1, r2, #4
	str r3, [r0, r1]
_0219EDFC:
	pop {r4, r5}
	bx lr
	thumb_func_end ovy324_219eda8

	thumb_func_start ovy324_219ee00
ovy324_219ee00: ; 0x0219EE00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r2, #0x9f
	add r5, r0, #0
	lsl r2, r2, #2
	mov r3, #1
	ldr r0, [r5, r2]
	lsl r3, r3, #8
	mov r7, #0
	cmp r0, r3
	bgt _0219EE30
	bge _0219EE4A
	add r1, r7, #0
	sub r1, #0xc0
	cmp r0, r1
	bgt _0219EE2A
	add r1, r7, #0
	sub r1, #0xc0
	cmp r0, r1
	beq _0219EE42
	b _0219EE54
_0219EE2A:
	cmp r0, #0
	beq _0219EE46
	b _0219EE54
_0219EE30:
	lsl r1, r3, #1
	cmp r0, r1
	bgt _0219EE3A
	beq _0219EE4E
	b _0219EE54
_0219EE3A:
	add r2, #0x84
	cmp r0, r2
	beq _0219EE52
	b _0219EE54
_0219EE42:
	mov r7, #2
	b _0219EE54
_0219EE46:
	mov r7, #3
	b _0219EE54
_0219EE4A:
	mov r7, #4
	b _0219EE54
_0219EE4E:
	mov r7, #5
	b _0219EE54
_0219EE52:
	mov r7, #6
_0219EE54:
	cmp r7, #0
	beq _0219EF50
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _0219EE76
	add r6, r5, r0
_0219EE66:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_0204826C
	ldr r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219EE66
_0219EE76:
	cmp r7, #6
	bhi _0219EF44
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219EE86: ; jump table
	.short _0219EF44 - _0219EE86 - 2 ; case 0
	.short _0219EE94 - _0219EE86 - 2 ; case 1
	.short _0219EEB4 - _0219EE86 - 2 ; case 2
	.short _0219EED4 - _0219EE86 - 2 ; case 3
	.short _0219EEE4 - _0219EE86 - 2 ; case 4
	.short _0219EF0A - _0219EE86 - 2 ; case 5
	.short _0219EF1A - _0219EE86 - 2 ; case 6
_0219EE94:
	mov r5, #0x20
	str r5, [sp]
	mov r4, #0x40
	str r4, [sp, #4]
	mov r6, #0
	str r6, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	b _0219EF38
_0219EEB4:
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_02045604
	str r5, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _0219EF38
_0219EED4:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #2
_0219EEE2:
	b _0219EF3C
_0219EEE4:
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	b _0219EF40
_0219EF0A:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r0, #1
	b _0219EEE2
_0219EF1A:
	mov r4, #0x20
	str r4, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r5, #0
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp, #8]
	bl sub_02045604
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
_0219EF38:
	mov r0, #2
	mov r1, #0
_0219EF3C:
	mov r2, #0
	mov r3, #0
_0219EF40:
	bl sub_02045604
_0219EF44:
	mov r0, #1
	bl sub_02044F90
	mov r0, #2
	bl sub_02044F90
_0219EF50:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy324_219ee00

	thumb_func_start ovy324_219ef54
ovy324_219ef54: ; 0x0219EF54
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xa7
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r7, r2, #0
	lsl r4, r0, #3
	sub r4, #0x80
	cmp r6, r4
	ble _0219EF76
	add r0, r1, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	sub r1, #0xc
	sub r0, r0, r4
	str r0, [r5, r1]
_0219EF76:
	add r0, r4, #0
	add r0, #0xea
	cmp r6, r0
	bne _0219EF9A
	cmp r7, #0
	beq _0219EF9A
	add r0, r5, #0
	add r0, #0x10
	add r1, r3, #0
	add r2, r7, #0
	bl ovy324_219d828
	ldr r0, _0219EFB4 ; =0x000003E9
	ldr r1, _0219EFB8 ; =0x0000FFFF
	mov r2, #0x64
	mov r3, #0x5f
	bl sub_02005E08
_0219EF9A:
	ldr r0, _0219EFBC ; =0x0000012A
	add r0, r4, r0
	cmp r6, r0
	bne _0219EFB0
	cmp r7, #0
	beq _0219EFB0
	ldr r1, [r5]
	add r0, r5, #0
	ldr r1, [r1, #0x18]
	bl ovy324_219ed34
_0219EFB0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EFB4: .word 0x000003E9
_0219EFB8: .word 0x0000FFFF
_0219EFBC: .word 0x0000012A
	thumb_func_end ovy324_219ef54

	thumb_func_start ovy324_219efc0
ovy324_219efc0: ; 0x0219EFC0
	push {r4, lr}
	bl sub_02017BCC
	add r4, r0, #0
	mov r0, #0
	bl sub_02017C50
	cmp r4, r0
	blt _0219EFD8
	mov r0, #0x2d
	lsl r0, r0, #4
	pop {r4, pc}
_0219EFD8:
	mov r0, #1
	bl sub_02017C50
	cmp r4, r0
	blt _0219EFE8
	mov r0, #0x1e
	lsl r0, r0, #4
	pop {r4, pc}
_0219EFE8:
	mov r0, #0xf0
	pop {r4, pc}
	thumb_func_end ovy324_219efc0
_0219EFEC:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0xF6, 0x19, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00
	.byte 0xCD, 0xC4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x34, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xF8, 0xEF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x50, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xEC, 0xEF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x4C, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x24, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xF0, 0xEF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x44, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5C, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFC, 0xEF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xF4, 0xEF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x3C, 0xF0, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x8D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x92, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x39, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x3C, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x11, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x25, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x2A, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x3A, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x3D, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xA1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xA6, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xCF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xD3, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xB7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xBF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xC3, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xA3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x8E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x93, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x8D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x92, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xFD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xED, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xF1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xC1, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xEF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x26, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x27, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xBD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xC1, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x06, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x11, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x12, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x28, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x2D, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x7D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x0F, 0x01, 0xF8, 0x01, 0xF0, 0xFF, 0x7F, 0x01, 0x00
	.byte 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x02, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0
	.byte 0xFF, 0x7F, 0x03, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0x09, 0xCF, 0x19, 0x02
	.byte 0x19, 0xD4, 0x19, 0x02, 0x81, 0xCE, 0x19, 0x02, 0xCD, 0xD0, 0x19, 0x02, 0x19, 0xD4, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x08, 0x00, 0x00, 0xC1, 0x08, 0x00, 0x00
	.byte 0xC5, 0x08, 0x00, 0x00, 0xC6, 0x08, 0x00, 0x00, 0xC7, 0x08, 0x00, 0x00, 0xC8, 0x08, 0x00, 0x00
	.byte 0xC9, 0x08, 0x00, 0x00, 0xCA, 0x08, 0x00, 0x00, 0xBF, 0x08, 0x00, 0x00, 0xC0, 0x08, 0x00, 0x00
	.byte 0xC3, 0x08, 0x00, 0x00, 0xC4, 0x08, 0x00, 0x00, 0xCB, 0x08, 0x00, 0x00, 0xCC, 0x08, 0x00, 0x00
	.byte 0xCD, 0x08, 0x00, 0x00, 0xCE, 0x08, 0x00, 0x00, 0x20, 0x68, 0x03, 0x00, 0x50, 0x68, 0x03, 0x00
	.byte 0x80, 0x68, 0x03, 0x00, 0xB0, 0x68, 0x03, 0x00, 0xE0, 0x68, 0x03, 0x00, 0x08, 0x88, 0x02, 0x00
	.byte 0x38, 0x88, 0x02, 0x00, 0x68, 0x88, 0x02, 0x00, 0x98, 0x88, 0x02, 0x00, 0xC8, 0x88, 0x02, 0x00
	.byte 0xF8, 0x88, 0x02, 0x00, 0x20, 0xA8, 0x01, 0x00, 0x50, 0xA8, 0x01, 0x00, 0x80, 0xA8, 0x01, 0x00
	.byte 0xB0, 0xA8, 0x01, 0x00, 0xE0, 0xA8, 0x01, 0x00, 0x08, 0xC8, 0x00, 0x00, 0x38, 0xC8, 0x00, 0x00
	.byte 0x68, 0xC8, 0x00, 0x00, 0x98, 0xC8, 0x00, 0x00, 0xC8, 0xC8, 0x00, 0x00, 0xF8, 0xC8, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x29, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x2D, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01
	.byte 0x0C, 0x11, 0x03, 0x00, 0x01, 0x01, 0x00, 0x01, 0x0D, 0x11, 0x02, 0x00, 0x0E, 0x11, 0x02, 0x00
	.byte 0x0F, 0x11, 0x02, 0x00, 0x10, 0x11, 0x02, 0x00, 0x11, 0x11, 0x02, 0x00, 0x12, 0x11, 0x02, 0x00
	.byte 0x23, 0x00, 0x02, 0x00, 0x04, 0x01, 0x00, 0x01, 0x1A, 0x11, 0x04, 0x00, 0x05, 0x01, 0x00, 0x01
	.byte 0x1B, 0x11, 0x04, 0x00, 0x06, 0x01, 0x00, 0x01, 0x1C, 0x11, 0x04, 0x00, 0x07, 0x01, 0x00, 0x01
	.byte 0x1D, 0x11, 0x04, 0x00, 0x08, 0x01, 0x00, 0x01, 0x1E, 0x11, 0x04, 0x00, 0x02, 0x01, 0x00, 0x01
	.byte 0x13, 0x11, 0x03, 0x00, 0x03, 0x01, 0x00, 0x01, 0x14, 0x11, 0x02, 0x00, 0x15, 0x11, 0x02, 0x00
	.byte 0x16, 0x11, 0x02, 0x00, 0x17, 0x11, 0x02, 0x00, 0x18, 0x11, 0x02, 0x00, 0x19, 0x11, 0x02, 0x00
	.byte 0x23, 0x01, 0x02, 0x00, 0x09, 0x01, 0x00, 0x01, 0x1F, 0x11, 0x04, 0x00, 0x0A, 0x01, 0x00, 0x01
	.byte 0x20, 0x11, 0x02, 0x00, 0x21, 0x11, 0x04, 0x00, 0x0B, 0x01, 0x00, 0x01, 0x22, 0x11, 0x02, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x0C, 0x02, 0x03, 0x00, 0x01, 0x01, 0x02, 0x00
	.byte 0x0D, 0x02, 0x02, 0x00, 0x0E, 0x02, 0x02, 0x00, 0x0F, 0x02, 0x02, 0x00, 0x10, 0x02, 0x02, 0x00
	.byte 0x11, 0x02, 0x02, 0x00, 0x12, 0x02, 0x02, 0x00, 0x23, 0x00, 0x02, 0x00, 0x04, 0x01, 0x02, 0x00
	.byte 0x1A, 0x02, 0x03, 0x00, 0x05, 0x01, 0x02, 0x00, 0x1B, 0x02, 0x03, 0x00, 0x06, 0x01, 0x02, 0x00
	.byte 0x1C, 0x02, 0x03, 0x00, 0x07, 0x01, 0x02, 0x00, 0x1D, 0x02, 0x03, 0x00, 0x08, 0x01, 0x02, 0x00
	.byte 0x1E, 0x02, 0x04, 0x00, 0x02, 0x01, 0x02, 0x00, 0x13, 0x02, 0x03, 0x00, 0x03, 0x01, 0x02, 0x00
	.byte 0x14, 0x02, 0x02, 0x00, 0x15, 0x02, 0x02, 0x00, 0x16, 0x02, 0x02, 0x00, 0x17, 0x02, 0x02, 0x00
	.byte 0x18, 0x02, 0x02, 0x00, 0x19, 0x02, 0x02, 0x00, 0x23, 0x01, 0x02, 0x00, 0x09, 0x01, 0x02, 0x00
	.byte 0x1F, 0x02, 0x03, 0x00, 0x0A, 0x01, 0x02, 0x00, 0x20, 0x02, 0x02, 0x00, 0x21, 0x02, 0x03, 0x00
	.byte 0x0B, 0x01, 0x02, 0x00, 0x22, 0x02, 0x02, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x10, 0x02, 0x00
	.byte 0x0C, 0x11, 0x03, 0x00, 0x01, 0x10, 0x02, 0x00, 0x0D, 0x11, 0x02, 0x00, 0x0E, 0x11, 0x02, 0x00
	.byte 0x0F, 0x11, 0x02, 0x00, 0x10, 0x11, 0x02, 0x00, 0x11, 0x11, 0x02, 0x00, 0x12, 0x11, 0x02, 0x00
	.byte 0x23, 0x00, 0x02, 0x00, 0x04, 0x10, 0x02, 0x00, 0x1A, 0x11, 0x03, 0x00, 0x05, 0x10, 0x02, 0x00
	.byte 0x1B, 0x11, 0x03, 0x00, 0x06, 0x10, 0x02, 0x00, 0x1C, 0x11, 0x03, 0x00, 0x07, 0x10, 0x02, 0x00
	.byte 0x1D, 0x11, 0x03, 0x00, 0x08, 0x10, 0x02, 0x00, 0x1E, 0x11, 0x04, 0x00, 0x02, 0x10, 0x02, 0x00
	.byte 0x13, 0x11, 0x03, 0x00, 0x03, 0x10, 0x02, 0x00, 0x14, 0x11, 0x02, 0x00, 0x15, 0x11, 0x02, 0x00
	.byte 0x16, 0x11, 0x02, 0x00, 0x17, 0x11, 0x02, 0x00, 0x18, 0x11, 0x02, 0x00, 0x19, 0x11, 0x02, 0x00
	.byte 0x23, 0x10, 0x02, 0x00, 0x09, 0x10, 0x02, 0x00, 0x1F, 0x11, 0x03, 0x00, 0x0A, 0x10, 0x02, 0x00
	.byte 0x20, 0x11, 0x02, 0x00, 0x21, 0x11, 0x03, 0x00, 0x0B, 0x10, 0x02, 0x00, 0x22, 0x11, 0x02, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0xAC, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xAC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xC4, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xCC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xDC, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xEC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xF4, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x8C, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x1C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x3C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x24, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x4C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x3C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x6C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x2C, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x7C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x3C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x6C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x54, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x8C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x2C, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x7C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x6C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xCC, 0xF0, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x2C, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x7C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x6C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xCC, 0xF0, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xF4, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x84, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xDC, 0xF0, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x9C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xFC, 0xF0, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xB4, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xCC, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x2C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xE4, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x3C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xFC, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x5C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x14, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x7C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x44, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xDC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x3C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x5C, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x8C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xDC, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xEC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x2C, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x7C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x74, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x9C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xA4, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xBC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xBC, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xFC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xD4, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x2C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xF4, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xEC, 0xF4, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x5C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0xF5, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x9C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x1C, 0xF5, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xEC, 0xF0, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x34, 0xF5, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x1C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x34, 0xF5, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x1C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x4C, 0xF5, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x4C, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x3C, 0xF3, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x6C, 0xF2, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xAC, 0xF2, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0xAC, 0xF1, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0xF0, 0x19, 0x02, 0x7C, 0xF0, 0x19, 0x02, 0x60, 0xF0, 0x19, 0x02, 0x70, 0x6B, 0x77, 0x64
	.byte 0x5F, 0x62, 0x72, 0x69, 0x65, 0x66, 0x69, 0x6E, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219EFEC
