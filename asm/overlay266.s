    .include "macros/function.inc"
	.include "overlay266.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy266_219ce80
ovy266_219ce80: ; 0x0219CE80
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r4, r0, #0
	ldr r2, _0219CEB0 ; =0x00125000
	mov r0, #1
	mov r1, #0x8e
	bl sub_0203A15C
	mov r6, #0xa6
	lsl r6, r6, #2
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x8e
	bl sub_0203AAEC
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx sub_020787A8
	str r5, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0219CEB0: .word 0x00125000
	thumb_func_end ovy266_219ce80

	thumb_func_start ovy266_219ceb4
ovy266_219ceb4: ; 0x0219CEB4
	push {r3, lr}
	add r0, r3, #0
	bl ovy266_219ced8
	cmp r0, #0
	bne _0219CEC4
	mov r0, #1
	pop {r3, pc}
_0219CEC4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy266_219ceb4

	thumb_func_start ovy266_219cec8
ovy266_219cec8: ; 0x0219CEC8
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x8e
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy266_219cec8

	thumb_func_start ovy266_219ced8
ovy266_219ced8: ; 0x0219CED8
	push {r3, r4, r5, lr}
	mov r5, #0x25
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r1, [r4, r5]
	lsl r2, r1, #2
	ldr r1, _0219CF00 ; =0x0219E534
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, r5]
	cmp r0, #6
	bne _0219CEF4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CEF4:
	add r0, r4, #0
	bl ovy266_219d864
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0219CF00: .word 0x0219E534
	thumb_func_end ovy266_219ced8

	thumb_func_start ovy266_219cf04
ovy266_219cf04: ; 0x0219CF04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0219CF90 ; =0x0000008B
	bl sub_0203CE0C
	mov r0, #0
	mov r7, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r4, _0219CF94 ; =0x04000050
	ldr r6, _0219CF98 ; =0x04001050
	strh r7, [r4]
	mov r0, #1
	strh r7, [r6]
	bl sub_02046DF8
	add r4, #0x1c
	add r0, r4, #0
	mov r4, #1
	sub r4, #0x11
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	add r6, #0x1c
	add r0, r6, #0
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0xd7
	mov r1, #0x8e
	bl sub_0204AA30
	str r0, [r5, #4]
	bl ovy266_219d3cc
	bl ovy266_219d3e0
	mov r4, #0xa1
	lsl r4, r4, #2
	ldr r0, [r5, #4]
	add r1, r5, r4
	bl ovy266_219d5c4
	sub r4, #0x28
	add r0, r5, r4
	bl ovy266_219d68c
	ldr r0, [r5, #4]
	bl ovy266_219d534
	add r0, r5, #0
	bl ovy266_219d734
	add r0, r5, #0
	bl ovy266_219d908
	add r0, r5, #0
	bl ovy266_219d8d8
	add r0, r5, #0
	bl ovy266_219d710
	mov r0, #1
	bl sub_020051D8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF90: .word 0x0000008B
_0219CF94: .word 0x04000050
_0219CF98: .word 0x04001050
	thumb_func_end ovy266_219cf04

	thumb_func_start ovy266_219cf9c
ovy266_219cf9c: ; 0x0219CF9C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #1
	bne _0219CFB0
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
_0219CFB0:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy266_219cf9c

	thumb_func_start ovy266_219cfb4
ovy266_219cfb4: ; 0x0219CFB4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	mov r5, #0
	bl sub_020051D8
	add r0, r4, #0
	bl sub_0219D728
	add r0, r4, #0
	bl ovy266_219d8f4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219CFD8
	bl sub_0204AB0C
	str r5, [r4, #4]
_0219CFD8:
	add r0, r4, #0
	bl ovy266_219d984
	add r0, r4, #0
	bl ovy266_219d778
	mov r5, #0x97
	lsl r5, r5, #2
	add r0, r4, r5
	bl ovy266_219d6d4
	add r5, #0x28
	add r0, r4, r5
	bl ovy266_219d668
	bl ovy266_219d4fc
	ldr r5, _0219D034 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _0219D038 ; =0x0400106C
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
	ldr r0, _0219D03C ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #6
	pop {r4, r5, r6, pc}
	nop
_0219D034: .word 0x0400006C
_0219D038: .word 0x0400106C
_0219D03C: .word 0x0000008B
	thumb_func_end ovy266_219cfb4

	thumb_func_start ovy266_219d040
ovy266_219d040: ; 0x0219D040
	push {r3, r4, r5, lr}
	mov r4, #0x95
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _0219D058
	cmp r1, #1
	beq _0219D086
	cmp r1, #2
	beq _0219D090
	b _0219D0C0
_0219D058:
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0x14
	blo _0219D070
	add r0, r4, #0
	mov r1, #0
	sub r0, #8
	str r1, [r5, r0]
_0219D06A:
	ldr r0, [r5, r4]
	add r0, r0, #1
	b _0219D0BE
_0219D070:
	add r0, r4, #0
	sub r0, #0x1b
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0219D084
_0219D07A:
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	add r0, r0, #4
	b _0219D0BC
_0219D084:
	b _0219D0B4
_0219D086:
	bl ovy266_219df14
	cmp r0, #0
	bne _0219D0C0
	b _0219D06A
_0219D090:
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0x82
	blo _0219D0A8
	add r0, r4, #0
	mov r1, #0
	sub r0, #8
	str r1, [r5, r0]
	str r1, [r5, r4]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0219D0A8:
	add r0, r4, #0
	sub r0, #0x1b
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0219D0B4
	b _0219D07A
_0219D0B4:
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	add r0, r0, #1
_0219D0BC:
	sub r4, #8
_0219D0BE:
	str r0, [r5, r4]
_0219D0C0:
	mov r0, #3
	pop {r3, r4, r5, pc}
	thumb_func_end ovy266_219d040

	thumb_func_start ovy266_219d0c4
ovy266_219d0c4: ; 0x0219D0C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #1
	bne _0219D0E8
	bl sub_0203DEFC
	mov r1, #8
	tst r0, r1
	beq _0219D0E8
	add r0, r4, #0
	mov r1, #2
	bl ovy266_219da14
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D0E8:
	mov r7, #0x95
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	cmp r0, #0
	bne _0219D172
	add r0, r7, #0
	str r0, [sp, #4]
	sub r0, #0x14
	str r0, [sp, #4]
	add r0, r7, #0
	add r5, r7, #0
	str r0, [sp]
	sub r0, #0x18
	sub r5, #0x14
	str r0, [sp]
	sub r7, #0x35
_0219D108:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldrh r0, [r4, r0]
	ldr r2, [r4, r1]
	lsl r1, r0, #4
	add r6, r2, r1
	ldrb r1, [r4, r7]
	lsl r1, r1, #3
	add r1, r4, r1
	ldr r1, [r1, #0x20]
	cmp r0, r1
	bne _0219D14C
	add r0, r4, #0
	bl ovy266_219d8a0
	ldr r1, _0219D224 ; =0x0000021F
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #0
	ldrh r2, [r6, #4]
	add r0, #0x23
	strh r2, [r4, r0]
	add r0, r1, #0
	mov r2, #1
	add r0, #0x35
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x21
	ldrh r0, [r4, r0]
	add r1, #0x21
	add r0, r0, #2
	strh r0, [r4, r1]
	b _0219D172
_0219D14C:
	ldrb r2, [r6, #6]
	add r0, r4, #0
	add r1, r6, #0
	lsl r3, r2, #2
	ldr r2, _0219D228 ; =0x0219E54C
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _0219D16A
	mov r0, #9
	lsl r0, r0, #6
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _0219D172
_0219D16A:
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
	b _0219D108
_0219D172:
	mov r5, #0x95
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #5
	bhi _0219D1FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D188: ; jump table
	.short _0219D1FE - _0219D188 - 2 ; case 0
	.short _0219D194 - _0219D188 - 2 ; case 1
	.short _0219D1CC - _0219D188 - 2 ; case 2
	.short _0219D1DC - _0219D188 - 2 ; case 3
	.short _0219D1FE - _0219D188 - 2 ; case 4
	.short _0219D1E8 - _0219D188 - 2 ; case 5
_0219D194:
	add r0, r5, #0
	sub r0, #0x12
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0219D1AA
	add r0, r5, #0
	mov r1, #0
	sub r0, #0x12
	strh r1, [r4, r0]
	str r1, [r4, r5]
	b _0219D1FE
_0219D1AA:
	add r0, r5, #0
	sub r0, #0x1b
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219D1C2
	add r0, r5, #0
	sub r0, #0x12
	ldrsh r0, [r4, r0]
	sub r0, r0, #4
_0219D1BC:
	sub r5, #0x12
	strh r0, [r4, r5]
	b _0219D1FE
_0219D1C2:
	add r0, r5, #0
	sub r0, #0x12
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	b _0219D1BC
_0219D1CC:
	add r0, r4, #0
	bl ovy266_219dcc0
	cmp r0, #0
	bne _0219D1FE
_0219D1D6:
	mov r0, #0
	str r0, [r4, r5]
	b _0219D1FE
_0219D1DC:
	add r0, r4, #0
	bl ovy266_219ddc8
	cmp r0, #0
	bne _0219D1FE
	b _0219D1D6
_0219D1E8:
	add r0, r5, #0
	mov r1, #0
	sub r0, #8
	str r1, [r4, r0]
	str r1, [r4, r5]
	add r0, r4, #0
	mov r1, #5
	bl ovy266_219da14
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219D1FE:
	add r0, r4, #0
	bl ovy266_219da7c
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #1
	beq _0219D218
	mov r1, #0x97
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl ovy266_219e074
_0219D218:
	bl sub_0204B794
	mov r0, #4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D224: .word 0x0000021F
_0219D228: .word 0x0219E54C
	thumb_func_end ovy266_219d0c4

	thumb_func_start ovy266_219d22c
ovy266_219d22c: ; 0x0219D22C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0x95
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #3
	bls _0219D23E
	b _0219D3C2
_0219D23E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219D24A: ; jump table
	.short _0219D252 - _0219D24A - 2 ; case 0
	.short _0219D2D4 - _0219D24A - 2 ; case 1
	.short _0219D308 - _0219D24A - 2 ; case 2
	.short _0219D38C - _0219D24A - 2 ; case 3
_0219D252:
	ldr r6, _0219D3C8 ; =0x0000808E
	mov r0, #0xa2
	add r1, r6, #0
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #0x8e
	str r1, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r7, r0, #0
	bl sub_0204B0D4
	sub r6, #0x8e
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x8e
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #7
	mov r2, #1
	mov r3, #0
	mov r6, #1
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x8e
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r6, [sp, #4]
	bl sub_0204566C
	mov r0, #1
	mov r1, #0
	bl sub_02045350
	mov r0, #1
	bl sub_02044F90
	add r0, r4, #0
	mov r1, #5
	str r6, [r4, r5]
	bl ovy266_219d9e8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219D2D4:
	add r1, r5, #0
	sub r1, #8
	ldr r1, [r4, r1]
	cmp r1, #0xc8
	blo _0219D2F2
	mov r1, #2
	str r1, [r4, r5]
	mov r1, #0
	sub r5, #8
	str r1, [r4, r5]
	mov r1, #5
	bl ovy266_219da14
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219D2F2:
	add r0, r5, #0
	sub r0, #0x1b
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219D306
_0219D2FC:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	add r0, r0, #4
	b _0219D3BE
_0219D306:
	b _0219D3B6
_0219D308:
	ldr r6, _0219D3C8 ; =0x0000808E
	mov r0, #0xa2
	add r1, r6, #0
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #0x8e
	str r1, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r7, r0, #0
	bl sub_0204B0D4
	sub r6, #0x8e
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x8e
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	mov r6, #1
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x8e
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r6, [sp, #4]
	bl sub_0204566C
	mov r0, #1
	mov r1, #0
	bl sub_02045350
	mov r0, #1
	bl sub_02044F90
	mov r0, #3
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #5
	bl ovy266_219d9e8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219D38C:
	add r1, r5, #0
	sub r1, #8
	ldr r1, [r4, r1]
	cmp r1, #0xc8
	blo _0219D3AA
	add r1, r5, #0
	mov r2, #0
	sub r1, #8
	str r2, [r4, r1]
	mov r1, #2
	str r2, [r4, r5]
	bl ovy266_219da14
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219D3AA:
	add r0, r5, #0
	sub r0, #0x1b
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219D3B6
	b _0219D2FC
_0219D3B6:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	add r0, r0, #1
_0219D3BE:
	sub r5, #8
	str r0, [r4, r5]
_0219D3C2:
	mov r0, #5
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D3C8: .word 0x0000808E
	thumb_func_end ovy266_219d22c

	thumb_func_start ovy266_219d3cc
ovy266_219d3cc: ; 0x0219D3CC
	push {r3, lr}
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _0219D3DC ; =0x0219E574
	bl sub_02046C40
	pop {r3, pc}
	.align 2, 0
_0219D3DC: .word 0x0219E574
	thumb_func_end ovy266_219d3cc

	thumb_func_start ovy266_219d3e0
ovy266_219d3e0: ; 0x0219D3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc4
	mov r0, #0x8e
	bl sub_020444A4
	ldr r4, _0219D4E4 ; =0x0219E5A4
	add r3, sp, #0xb4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _0219D4E8 ; =0x0219E5D4
	add r3, sp, #0x94
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
	mov r7, #1
	mov r5, #0
	bl sub_0204476C
	ldr r4, _0219D4EC ; =0x0219E634
	add r3, sp, #0x74
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r4, #2
	mov r2, #2
	bl sub_0204476C
	add r6, sp, #0x64
	lsl r2, r4, #0xb
	add r0, r6, #0
	mov r1, #0
	add r3, r2, #0
	str r5, [sp]
	bl sub_02050610
	mov r0, #3
	add r1, r6, #0
	mov r2, #0x80
	mov r3, #0x60
	bl sub_02044EB0
	ldr r6, _0219D4F0 ; =0x0219E5B4
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
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	ldr r6, _0219D4F4 ; =0x0219E5F4
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
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r6, _0219D4F8 ; =0x0219E614
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
	mov r0, #4
	add r2, r5, #0
	bl sub_0204476C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02046CFC
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02046D84
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02046CFC
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02046D84
	add sp, #0xc4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D4E4: .word 0x0219E5A4
_0219D4E8: .word 0x0219E5D4
_0219D4EC: .word 0x0219E634
_0219D4F0: .word 0x0219E5B4
_0219D4F4: .word 0x0219E5F4
_0219D4F8: .word 0x0219E614
	thumb_func_end ovy266_219d3e0

	thumb_func_start ovy266_219d4fc
ovy266_219d4fc: ; 0x0219D4FC
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	bl sub_02046CFC
	mov r0, #2
	mov r1, #0
	bl sub_02046D84
	mov r0, #5
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy266_219d4fc

	thumb_func_start ovy266_219d534
ovy266_219d534: ; 0x0219D534
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0219D5C0 ; =0x0000808E
	add r6, r0, #0
	mov r0, #0x1a
	bl sub_0204AA30
	mov r7, #0
	mov r3, #6
	str r7, [sp]
	mov r4, #0x8e
	str r4, [sp, #4]
	mov r1, #2
	mov r2, #2
	lsl r3, r3, #0xc
	add r5, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl sub_0204AB0C
	mov r5, #0x20
	mov r7, #0x1e
	str r5, [sp]
	lsl r7, r7, #4
	str r4, [sp, #4]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B0D4
	str r5, [sp]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #4
	add r3, r7, #0
	str r4, [sp, #4]
	bl sub_0204B0D4
	mov r0, #1
	mov r1, #0
	bl sub_02045350
	mov r0, #5
	mov r1, #0
	bl sub_02045350
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D5C0: .word 0x0000808E
	thumb_func_end ovy266_219d534

	thumb_func_start ovy266_219d5c4
ovy266_219d5c4: ; 0x0219D5C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0219D65C ; =0x02093F08
	ldr r1, _0219D660 ; =0x0219E574
	mov r2, #0x8e
	bl sub_0204B6A8
	ldr r7, _0219D664 ; =0x0000808E
	mov r0, #1
	mov r1, #0
	add r2, r7, #0
	mov r6, #0
	bl sub_0204BF1C
	str r0, [r4]
	bl sub_0204C028
	str r7, [sp]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r4, #0xc]
	str r7, [sp]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	mov r3, #0
	bl sub_0204BBA0
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #8
	mov r2, #9
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r4, #0x10]
	mov r0, #0x80
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0x60
	strh r0, [r1, #2]
	strh r6, [r1, #4]
	mov r0, #1
	strb r0, [r1, #7]
	strb r6, [r1, #6]
	add r0, sp, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x10]
	bl sub_0204C040
	str r0, [r4, #4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D65C: .word 0x02093F08
_0219D660: .word 0x0219E574
_0219D664: .word 0x0000808E
	thumb_func_end ovy266_219d5c4

	thumb_func_start ovy266_219d668
ovy266_219d668: ; 0x0219D668
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0204B98C
	ldr r0, [r4, #8]
	bl sub_0204BCD0
	ldr r0, [r4, #0x10]
	bl sub_0204BE64
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy266_219d668

	thumb_func_start ovy266_219d68c
ovy266_219d68c: ; 0x0219D68C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xd7
	mov r1, #0x16
	bl sub_0204AA04
	add r4, r0, #0
	mov r0, #0xd7
	mov r1, #0x17
	bl sub_0204AA04
	ldr r7, _0219D6CC ; =0x00000432
	add r1, r4, #0
	ldr r4, _0219D6D0 ; =0x0219E660
	add r6, r0, #0
	str r7, [sp]
	mov r0, #0x8e
	mov r2, #0
	add r3, r4, #0
	bl sub_0203A1FC
	str r0, [r5, #0x20]
	add r0, r7, #1
	str r0, [sp]
	mov r0, #0x8e
	add r1, r6, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_0203A1FC
	str r0, [r5, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D6CC: .word 0x00000432
_0219D6D0: .word 0x0219E660
	thumb_func_end ovy266_219d68c

	thumb_func_start ovy266_219d6d4
ovy266_219d6d4: ; 0x0219D6D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0203A24C
	ldr r0, [r4, #0x24]
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy266_219d6d4

	thumb_func_start ovy266_219d6e8
ovy266_219d6e8: ; 0x0219D6E8
	push {r3, lr}
	add r0, r1, #0
	bl ovy266_219d9b0
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r3, _0219D708 ; =0x02FE0000
	ldr r1, _0219D70C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0219D708: .word 0x02FE0000
_0219D70C: .word 0x00003FF8
	thumb_func_end ovy266_219d6e8

	thumb_func_start ovy266_219d710
ovy266_219d710: ; 0x0219D710
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219D724 ; =ovy266_219d6e8
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_0219D724: .word ovy266_219d6e8
	thumb_func_end ovy266_219d710

	thumb_func_start sub_0219D728
sub_0219D728: ; 0x0219D728
	ldr r0, [r0, #8]
	ldr r3, _0219D730 ; =sub_0203A6A8
	bx r3
	nop
_0219D730: .word sub_0203A6A8
	thumb_func_end sub_0219D728

	thumb_func_start ovy266_219d734
ovy266_219d734: ; 0x0219D734
	push {r3, r4, r5, lr}
	ldr r2, _0219D774 ; =0x00000171
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r3, #0x8e
	mov r4, #0x8e
	bl sub_0204875C
	str r0, [r5, #0x14]
	mov r0, #0x80
	mov r1, #0x8e
	bl sub_02048530
	str r0, [r5, #0x18]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02022D58
	str r0, [r5, #0xc]
	mov r0, #0x17
	mov r1, #2
	mov r2, #1
	mov r3, #0
	str r4, [sp]
	bl sub_02022D58
	str r0, [r5, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D774: .word 0x00000171
	thumb_func_end ovy266_219d734

	thumb_func_start ovy266_219d778
ovy266_219d778: ; 0x0219D778
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02022DA8
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	ldr r0, [r4, #0x18]
	bl sub_02048564
	ldr r0, [r4, #0x14]
	bl sub_020487D4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy266_219d778

	thumb_func_start ovy266_219d798
ovy266_219d798: ; 0x0219D798
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x87
	lsl r6, r6, #2
	add r7, r6, #0
	add r5, r0, #0
	mov r4, #0
	add r7, #0x20
_0219D7A6:
	ldr r0, [r5, r7]
	lsl r1, r4, #4
	add r2, r0, r1
	ldrb r1, [r2, #6]
	cmp r1, #5
	beq _0219D80E
	cmp r1, #0
	bne _0219D806
	ldr r2, [r2]
	ldr r1, _0219D810 ; =0x0000FFFF
	cmp r2, r1
	beq _0219D806
	add r1, r4, #1
	lsl r1, r1, #4
	add r1, r0, r1
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0219D806
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0219D806
	ldr r1, [r1]
	ldr r0, _0219D810 ; =0x0000FFFF
	cmp r1, r0
	beq _0219D806
	mov r0, #0x20
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x8e
	bl sub_02046E28
	ldrh r1, [r5, r6]
	lsl r1, r1, #3
	add r1, r5, r1
	str r0, [r1, #0x1c]
	ldrh r0, [r5, r6]
	lsl r0, r0, #3
	add r0, r5, r0
	str r4, [r0, #0x20]
	ldrh r0, [r5, r6]
	add r0, r0, #1
	strh r0, [r5, r6]
	ldrh r0, [r5, r6]
	cmp r0, #0x40
	beq _0219D80E
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0219D806:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0219D7A6
_0219D80E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D810: .word 0x0000FFFF
	thumb_func_end ovy266_219d798

	thumb_func_start ovy266_219d814
ovy266_219d814: ; 0x0219D814
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x87
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	bls _0219D838
	add r6, r5, r0
_0219D826:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_02046EDC
	ldrh r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blo _0219D826
_0219D838:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy266_219d814

	thumb_func_start ovy266_219d83c
ovy266_219d83c: ; 0x0219D83C
	push {r4, lr}
	add r3, r1, #0
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	lsl r1, r2, #4
	add r1, r4, r1
	ldrb r2, [r1, #9]
	cmp r2, #0
	bne _0219D85A
	add r2, r3, #0
	mov r3, #0
	bl ovy266_219db98
	pop {r4, pc}
_0219D85A:
	add r2, r3, #0
	mov r3, #2
	bl ovy266_219db98
	pop {r4, pc}
	thumb_func_end ovy266_219d83c

	thumb_func_start ovy266_219d864
ovy266_219d864: ; 0x0219D864
	push {r3, r4, r5, lr}
	ldr r5, _0219D89C ; =0x0000021E
	add r4, r0, #0
	sub r1, r5, #2
	ldrb r2, [r4, r5]
	ldrh r1, [r4, r1]
	cmp r2, r1
	bge _0219D898
	lsl r1, r2, #3
	add r2, r4, r1
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	bl ovy266_219d83c
	ldrb r0, [r4, r5]
	lsl r1, r0, #3
	add r2, r4, r1
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x20]
	add r0, r4, #0
	add r2, r2, #1
	bl ovy266_219d83c
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
_0219D898:
	pop {r3, r4, r5, pc}
	nop
_0219D89C: .word 0x0000021E
	thumb_func_end ovy266_219d864

	thumb_func_start ovy266_219d8a0
ovy266_219d8a0: ; 0x0219D8A0
	push {r4, r5, lr}
	sub sp, #0x14
	mov r5, #0x8a
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020484F4
	mov r2, #0
	add r1, r0, #0
	str r2, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	add r0, #0x40
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	sub r5, #9
	ldrb r0, [r4, r5]
	mov r3, #0
	lsl r0, r0, #3
	add r0, r4, r0
	ldr r0, [r0, #0x1c]
	bl sub_02047008
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy266_219d8a0

	thumb_func_start ovy266_219d8d8
ovy266_219d8d8: ; 0x0219D8D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd7
	mov r1, #1
	mov r2, #0x8e
	bl sub_0204A934
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy266_219d798
	pop {r4, pc}
	thumb_func_end ovy266_219d8d8

	thumb_func_start ovy266_219d8f4
ovy266_219d8f4: ; 0x0219D8F4
	push {r4, lr}
	add r4, r0, #0
	bl ovy266_219d814
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy266_219d8f4

	thumb_func_start ovy266_219d908
ovy266_219d908: ; 0x0219D908
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x8e
	bl sub_02048080
	mov r0, #0x19
	str r0, [sp]
	mov r6, #0xf
	str r6, [sp, #4]
	mov r7, #1
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r7, [sp, #8]
	bl sub_020480C0
	mov r4, #0x22
	lsl r4, r4, #4
	str r0, [r5, r4]
	mov r0, #0x1c
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r7, [sp, #8]
	bl sub_020480C0
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r6, [r5, r4]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	add r4, #8
	ldr r4, [r5, r4]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy266_219d908

	thumb_func_start ovy266_219d984
ovy266_219d984: ; 0x0219D984
	push {r3, r4, r5, lr}
	mov r4, #0x22
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_02048210
	add r4, #8
	ldr r0, [r5, r4]
	bl sub_02048210
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy266_219d984

	thumb_func_start sub_0219D9A0
sub_0219D9A0: ; 0x0219D9A0
	mov r2, #0x23
	lsl r2, r2, #4
	ldrb r3, [r0, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strb r1, [r0, r2]
	bx lr
	thumb_func_end sub_0219D9A0

	thumb_func_start ovy266_219d9b0
ovy266_219d9b0: ; 0x0219D9B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	mov r1, #1
	tst r1, r2
	beq _0219D9C8
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02048244
_0219D9C8:
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	mov r1, #2
	tst r1, r2
	beq _0219D9DC
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_02048244
_0219D9DC:
	mov r0, #0x23
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy266_219d9b0

	thumb_func_start ovy266_219d9e8
ovy266_219d9e8: ; 0x0219D9E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x8e
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl sub_020279B4
	mov r0, #0x96
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy266_219d9e8

	thumb_func_start ovy266_219da14
ovy266_219da14: ; 0x0219DA14
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x8e
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_020279B4
	mov r0, #0x96
	lsl r0, r0, #2
	str r4, [r5, r0]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy266_219da14

	thumb_func_start ovy266_219da40
ovy266_219da40: ; 0x0219DA40
	push {r4, r5}
	cmp r1, #0
	beq _0219DA60
	mov r3, #0
	cmp r2, #0
	bls _0219DA60
	mov r4, #8
	sub r4, r4, r2
	lsl r4, r4, #2
	add r5, r1, r4
_0219DA54:
	lsl r4, r3, #2
	ldr r1, [r0, r4]
	add r3, r3, #1
	str r1, [r5, r4]
	cmp r3, r2
	blo _0219DA54
_0219DA60:
	mov r3, #8
	mov r1, #0
	sub r5, r3, r2
	beq _0219DA78
	lsl r2, r2, #2
	add r4, r0, r2
_0219DA6C:
	lsl r3, r1, #2
	ldr r2, [r4, r3]
	add r1, r1, #1
	str r2, [r0, r3]
	cmp r1, r5
	blo _0219DA6C
_0219DA78:
	pop {r4, r5}
	bx lr
	thumb_func_end ovy266_219da40

	thumb_func_start ovy266_219da7c
ovy266_219da7c: ; 0x0219DA7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0x92
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #0
	bne _0219DA90
	b _0219DB92
_0219DA90:
	sub r2, r0, #4
	ldr r1, [sp]
	add r3, r2, #0
	mov r4, #1
	ldr r1, [r1, r3]
	lsl r4, r4, #0xc
	add r5, r1, r4
	ldr r1, [sp]
	cmp r5, r4
	str r5, [r1, r3]
	blt _0219DB92
	sub r3, r5, r4
	str r3, [r1, r2]
	sub r0, #0xf
	ldrb r0, [r1, r0]
	mov r6, #1
	cmp r0, #0
	beq _0219DAB6
	mov r6, #4
_0219DAB6:
	mov r4, #0x22
	ldr r0, [sp]
	lsl r4, r4, #4
	ldr r0, [r0, r4]
	bl sub_020484F4
	bl sub_02046EF4
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r4, #8
	ldr r0, [r0, r4]
	bl sub_020484F4
	bl sub_02046EF4
	mov r4, #0
	str r0, [sp, #0xc]
	mov r5, #0
	add r7, r4, #0
_0219DADE:
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r0, r0, r4
	add r2, r6, #0
	bl ovy266_219da40
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r4, #0x20
	cmp r5, #0x20
	blo _0219DADE
	mov r0, #1
	str r0, [sp, #8]
_0219DAFA:
	ldr r0, [sp, #8]
	mov r7, #0
	lsl r5, r0, #0xa
	sub r0, r0, #1
	lsl r4, r0, #0xa
_0219DB04:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r0, r5
	add r1, r1, r4
	add r2, r6, #0
	bl ovy266_219da40
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r5, #0x20
	add r4, #0x20
	cmp r7, #0x20
	blo _0219DB04
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #0x19
	blo _0219DAFA
	mov r4, #6
	mov r5, #0
	lsl r4, r4, #0xc
	mov r7, #0
_0219DB36:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r0, r5
	add r1, r1, r4
	add r2, r6, #0
	bl ovy266_219da40
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r5, #0x20
	add r4, #0x20
	cmp r7, #0x20
	blo _0219DB36
	mov r0, #1
	str r0, [sp, #4]
_0219DB56:
	ldr r0, [sp, #4]
	mov r7, #0
	lsl r4, r0, #0xa
	sub r0, r0, #1
	lsl r5, r0, #0xa
_0219DB60:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r0, r4
	add r1, r1, r5
	add r2, r6, #0
	bl ovy266_219da40
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r4, #0x20
	add r5, #0x20
	cmp r7, #0x20
	blo _0219DB60
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0x1c
	blo _0219DB56
	ldr r0, [sp]
	mov r1, #3
	bl sub_0219D9A0
_0219DB92:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy266_219da7c

	thumb_func_start ovy266_219db98
ovy266_219db98: ; 0x0219DB98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [r4]
	ldr r2, [r5, #0x18]
	add r7, r3, #0
	bl sub_02048838
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0219DBC0
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r6, r1, r0
	b _0219DC02
_0219DBC0:
	cmp r0, #1
	bne _0219DBE0
	ldrb r1, [r4, #9]
	ldr r0, [r5, #0x18]
	mov r2, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0xc]
	bl sub_02022888
	mov r1, #0xc
	ldrsh r2, [r4, r1]
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	add r1, r2, r1
	b _0219DC00
_0219DBE0:
	cmp r0, #2
	bne _0219DC02
	ldrb r1, [r4, #9]
	ldr r0, [r5, #0x18]
	mov r2, #0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #0xc]
	bl sub_02022888
	mov r1, #0xc
	ldrsh r2, [r4, r1]
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	lsr r0, r0, #1
	add r1, r2, r1
_0219DC00:
	sub r6, r1, r0
_0219DC02:
	ldrb r0, [r4, #9]
	lsl r2, r7, #0x10
	asr r2, r2, #0x10
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	str r0, [sp]
	ldrb r0, [r4, #8]
	lsl r1, r0, #1
	ldr r0, _0219DC2C ; =0x0219E524
	ldrh r0, [r0, r1]
	lsl r1, r6, #0x10
	asr r1, r1, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, [r5, #0x18]
	bl sub_02021D28
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219DC2C: .word 0x0219E524
	thumb_func_end ovy266_219db98

	thumb_func_start ovy266_219dc30
ovy266_219dc30: ; 0x0219DC30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0219DC54
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0xc0
	bl ovy266_219db98
	pop {r3, r4, r5, pc}
_0219DC54:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0xc2
	bl ovy266_219db98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy266_219dc30

	thumb_func_start ovy266_219dc6c
ovy266_219dc6c: ; 0x0219DC6C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	mov r7, #1
	ldrh r0, [r6, #4]
	lsl r7, r7, #8
	cmp r0, r7
	bhs _0219DC98
	mov r5, #0x22
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_020484F4
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x13
	ldrb r1, [r4, r0]
	mov r0, #1
	ldrh r3, [r6, #4]
	orr r0, r1
	add r5, #0x13
	b _0219DCB4
_0219DC98:
	mov r5, #0x8a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020484F4
	add r2, r0, #0
	ldrh r0, [r6, #4]
	sub r3, r0, r7
	add r0, r5, #0
	add r0, #0xb
	ldrb r1, [r4, r0]
	mov r0, #2
	add r5, #0xb
	orr r0, r1
_0219DCB4:
	strb r0, [r4, r5]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy266_219db98
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy266_219dc6c

	thumb_func_start ovy266_219dcc0
ovy266_219dcc0: ; 0x0219DCC0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0219DDB0 ; =0x00000232
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0219DCD4
	cmp r0, #1
	beq _0219DD1A
	b _0219DDA8
_0219DCD4:
	add r0, r1, #1
	ldrb r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	beq _0219DCEE
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219DDB4 ; =0x04000050
	mov r1, #2
	mov r2, #0x21
	mov r3, #0
	bl G2x_SetBlendAlpha_
_0219DCEE:
	ldr r0, _0219DDB8 ; =0x00000233
	mov r1, #2
	ldrb r0, [r4, r0]
	tst r0, r1
	beq _0219DD06
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219DDBC ; =0x04001050
	mov r2, #0x21
	mov r3, #0
	bl G2x_SetBlendAlpha_
_0219DD06:
	ldr r0, _0219DDB8 ; =0x00000233
	ldrb r2, [r4, r0]
	sub r1, r0, #3
	strb r2, [r4, r1]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0219DDA8
_0219DD1A:
	add r0, r1, #7
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219DD2A
	add r0, r1, #2
	ldrsb r2, [r4, r0]
	add r2, #0x10
	b _0219DD32
_0219DD2A:
	add r0, r1, #2
	ldrsb r0, [r4, r0]
	add r2, r0, #4
	add r0, r1, #2
_0219DD32:
	strb r2, [r4, r0]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0x10
	ble _0219DD44
	mov r0, #0x10
	mov r1, #0
	b _0219DD48
_0219DD44:
	mov r1, #0x10
	sub r1, r1, r0
_0219DD48:
	ldr r2, _0219DDB8 ; =0x00000233
	ldrb r3, [r4, r2]
	mov r2, #1
	tst r2, r3
	beq _0219DD5C
	lsl r2, r1, #8
	add r3, r0, #0
	orr r3, r2
	ldr r2, _0219DDC0 ; =0x04000052
	strh r3, [r2]
_0219DD5C:
	ldr r2, _0219DDB8 ; =0x00000233
	ldrb r3, [r4, r2]
	mov r2, #2
	tst r2, r3
	beq _0219DD6E
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0219DDC4 ; =0x04001052
	strh r1, [r0]
_0219DD6E:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldrsb r1, [r4, r0]
	cmp r1, #0x10
	blt _0219DDA8
	sub r0, r0, #1
	ldrb r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	beq _0219DD88
	ldr r0, _0219DDB4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
_0219DD88:
	ldr r0, _0219DDB8 ; =0x00000233
	ldrb r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	beq _0219DD98
	ldr r0, _0219DDBC ; =0x04001050
	mov r1, #0
	strh r1, [r0]
_0219DD98:
	mov r1, #0x8d
	mov r0, #0
	lsl r1, r1, #2
	strb r0, [r4, r1]
	sub r1, r1, #2
	add sp, #4
	strb r0, [r4, r1]
	pop {r3, r4, pc}
_0219DDA8:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219DDB0: .word 0x00000232
_0219DDB4: .word 0x04000050
_0219DDB8: .word 0x00000233
_0219DDBC: .word 0x04001050
_0219DDC0: .word 0x04000052
_0219DDC4: .word 0x04001052
	thumb_func_end ovy266_219dcc0

	thumb_func_start ovy266_219ddc8
ovy266_219ddc8: ; 0x0219DDC8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0219DEF8 ; =0x00000232
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0219DDE0
	cmp r1, #1
	beq _0219DE1A
	cmp r1, #2
	beq _0219DEC2
	b _0219DEF0
_0219DDE0:
	add r0, r0, #1
	ldrb r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	beq _0219DDFA
	mov r0, #0
	str r0, [sp]
	ldr r0, _0219DEFC ; =0x04000050
	mov r1, #2
	mov r2, #0x21
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
_0219DDFA:
	ldr r0, _0219DF00 ; =0x00000233
	mov r1, #2
	ldrb r0, [r4, r0]
	tst r0, r1
	beq _0219DE12
	mov r0, #0
	str r0, [sp]
	ldr r0, _0219DF04 ; =0x04001050
	mov r2, #0x21
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
_0219DE12:
	ldr r0, _0219DEF8 ; =0x00000232
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_0219DE1A:
	ldr r1, _0219DF08 ; =0x00000239
	ldrb r0, [r4, r1]
	cmp r0, #1
	bne _0219DE2A
	sub r0, r1, #5
	ldrsb r2, [r4, r0]
	add r2, #0x10
	b _0219DE32
_0219DE2A:
	sub r0, r1, #5
	ldrsb r0, [r4, r0]
	add r2, r0, #4
	sub r0, r1, #5
_0219DE32:
	strb r2, [r4, r0]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldrsb r1, [r4, r0]
	cmp r1, #0x10
	ble _0219DE44
	mov r0, #0
	mov r1, #0x10
	b _0219DE48
_0219DE44:
	mov r0, #0x10
	sub r0, r0, r1
_0219DE48:
	ldr r2, _0219DF00 ; =0x00000233
	ldrb r3, [r4, r2]
	mov r2, #1
	tst r2, r3
	beq _0219DE5C
	lsl r2, r1, #8
	add r3, r0, #0
	orr r3, r2
	ldr r2, _0219DF0C ; =0x04000052
	strh r3, [r2]
_0219DE5C:
	ldr r2, _0219DF00 ; =0x00000233
	ldrb r3, [r4, r2]
	mov r2, #2
	tst r2, r3
	beq _0219DE6E
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0219DF10 ; =0x04001052
	strh r1, [r0]
_0219DE6E:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldrsb r0, [r4, r1]
	cmp r0, #0x10
	blt _0219DEF0
	sub r0, r1, #1
	ldrb r2, [r4, r0]
	mov r0, #1
	tst r0, r2
	beq _0219DE90
	sub r1, #0x14
	ldr r0, [r4, r1]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
_0219DE90:
	ldr r0, _0219DF00 ; =0x00000233
	mov r1, #2
	ldrb r2, [r4, r0]
	tst r1, r2
	beq _0219DEA8
	sub r0, #0xb
	ldr r0, [r4, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
_0219DEA8:
	ldr r0, _0219DF00 ; =0x00000233
	ldrb r2, [r4, r0]
	sub r1, r0, #3
	strb r2, [r4, r1]
	mov r2, #0
	add r1, r0, #1
	strb r2, [r4, r1]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0219DEF0
_0219DEC2:
	add r0, r0, #1
	ldrb r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	beq _0219DED2
	ldr r0, _0219DEFC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
_0219DED2:
	ldr r0, _0219DF00 ; =0x00000233
	ldrb r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	beq _0219DEE2
	ldr r0, _0219DF04 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
_0219DEE2:
	ldr r1, _0219DF00 ; =0x00000233
	mov r0, #0
	strb r0, [r4, r1]
	sub r1, r1, #1
	add sp, #4
	strb r0, [r4, r1]
	pop {r3, r4, pc}
_0219DEF0:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219DEF8: .word 0x00000232
_0219DEFC: .word 0x04000050
_0219DF00: .word 0x00000233
_0219DF04: .word 0x04001050
_0219DF08: .word 0x00000239
_0219DF0C: .word 0x04000052
_0219DF10: .word 0x04001052
	thumb_func_end ovy266_219ddc8

	thumb_func_start ovy266_219df14
ovy266_219df14: ; 0x0219DF14
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0219E05C ; =0x00000232
	add r4, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #3
	bls _0219DF22
	b _0219E056
_0219DF22:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DF2E: ; jump table
	.short _0219DF36 - _0219DF2E - 2 ; case 0
	.short _0219DF70 - _0219DF2E - 2 ; case 1
	.short _0219DFC8 - _0219DF2E - 2 ; case 2
	.short _0219E000 - _0219DF2E - 2 ; case 3
_0219DF36:
	ldr r6, _0219E060 ; =0x04000050
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0x20
	mov r3, #0
	mov r7, #0
	bl G2x_SetBlendAlpha_
	mov r0, #8
	mov r1, #1
	bl sub_02046CFC
	add r6, #0x1c
	add r0, r6, #0
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _0219E064 ; =0x0400106C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	add r0, r5, #4
	strh r7, [r4, r0]
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _0219E056
_0219DF70:
	add r0, r5, #7
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219DF82
	add r0, r5, #4
	ldrh r0, [r4, r0]
	mov r1, #0x22
	lsl r0, r0, #4
	b _0219DF8A
_0219DF82:
	add r0, r5, #4
	ldrh r0, [r4, r0]
	mov r1, #0x8a
	lsl r0, r0, #4
_0219DF8A:
	blx sub_0208D65C
	mov r2, #0x10
	lsl r1, r0, #0x10
	sub r0, r2, r0
	lsl r0, r0, #0x10
	ldr r2, _0219E068 ; =0x00000236
	asr r3, r0, #0x10
	ldrh r0, [r4, r2]
	asr r1, r1, #0x10
	add r0, r0, #1
	strh r0, [r4, r2]
	cmp r1, #0x10
	blt _0219DFC4
	ldr r0, _0219E06C ; =0x04000052
	mov r1, #0x10
	strh r1, [r0]
	mov r0, #0
	strh r0, [r4, r2]
	add r0, r2, #0
	mov r1, #0xc8
	add r0, #0xc
	strh r1, [r4, r0]
	sub r0, r2, #4
	ldrb r0, [r4, r0]
	add r1, r0, #1
	sub r0, r2, #4
	strb r1, [r4, r0]
	b _0219E056
_0219DFC4:
	lsl r0, r3, #8
	b _0219E050
_0219DFC8:
	add r0, r5, #7
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219DFDA
	add r0, r5, #0
	add r0, #0x10
	ldrsh r0, [r4, r0]
	sub r0, r0, #4
	b _0219DFE2
_0219DFDA:
	add r0, r5, #0
	add r0, #0x10
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
_0219DFE2:
	ldr r1, _0219E070 ; =0x00000242
	add r5, #0x10
	strh r0, [r4, r5]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0219E056
	mov r0, #0
	strh r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x10
	ldrb r0, [r4, r0]
	sub r1, #0x10
	add r0, r0, #1
	strb r0, [r4, r1]
	b _0219E056
_0219E000:
	add r0, r5, #7
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0219E012
	add r0, r5, #4
	ldrh r0, [r4, r0]
	mov r1, #0x22
	lsl r0, r0, #4
	b _0219E01A
_0219E012:
	add r0, r5, #4
	ldrh r0, [r4, r0]
	mov r1, #0x8a
	lsl r0, r0, #4
_0219E01A:
	blx sub_0208D65C
	mov r1, #0x10
	sub r1, r1, r0
	lsl r0, r0, #0x10
	ldr r6, _0219E068 ; =0x00000236
	asr r2, r0, #0x10
	ldrh r0, [r4, r6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r0, r0, #1
	strh r0, [r4, r6]
	cmp r2, #0x10
	blt _0219E04E
	ldr r0, _0219E060 ; =0x04000050
	mov r5, #0
	strh r5, [r0]
	mov r0, #8
	mov r1, #0
	bl sub_02046CFC
	strh r5, [r4, r6]
	sub r0, r6, #4
	strb r5, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E04E:
	lsl r0, r2, #8
_0219E050:
	orr r1, r0
	ldr r0, _0219E06C ; =0x04000052
	strh r1, [r0]
_0219E056:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E05C: .word 0x00000232
_0219E060: .word 0x04000050
_0219E064: .word 0x0400106C
_0219E068: .word 0x00000236
_0219E06C: .word 0x04000052
_0219E070: .word 0x00000242
	thumb_func_end ovy266_219df14

	thumb_func_start ovy266_219e074
ovy266_219e074: ; 0x0219E074
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0, #8]
	ldr r6, [r5, #4]
	bl sub_02008BF0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #9
	bhi _0219E142
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E09A: ; jump table
	.short _0219E0AE - _0219E09A - 2 ; case 0
	.short _0219E0B2 - _0219E09A - 2 ; case 1
	.short _0219E10E - _0219E09A - 2 ; case 2
	.short _0219E156 - _0219E09A - 2 ; case 3
	.short _0219E17A - _0219E09A - 2 ; case 4
	.short _0219E210 - _0219E09A - 2 ; case 5
	.short _0219E228 - _0219E09A - 2 ; case 6
	.short _0219E248 - _0219E09A - 2 ; case 7
	.short _0219E0E8 - _0219E09A - 2 ; case 8
	.short _0219E286 - _0219E09A - 2 ; case 9
_0219E0AE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219E0B2:
	ldrb r0, [r4, #1]
	mov r1, #1
	tst r0, r1
	beq _0219E0C8
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219E2A8 ; =0x04000050
	mov r2, #0x2e
	mov r3, #0
	bl G2x_SetBlendAlpha_
_0219E0C8:
	ldrb r1, [r4, #1]
	mov r0, #2
	tst r0, r1
	beq _0219E0E0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219E2AC ; =0x04001050
	mov r1, #1
	mov r2, #0x2e
	mov r3, #0
	bl G2x_SetBlendAlpha_
_0219E0E0:
	mov r0, #2
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E0E8:
	mov r2, #0x11
	ldr r0, _0219E2A8 ; =0x04000050
	mov r1, #0x11
	sub r2, #0x21
	bl G2x_SetBlendBrightness_
	mov r6, #0xa2
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, r6]
	bl sub_0204C56C
	mov r0, #2
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E10E:
	add r0, r4, #0
	mov r1, #1
	bl ovy266_219e350
	add r6, r0, #0
	mov r0, #0xd7
	add r1, r6, #0
	bl sub_0204AA04
	lsr r3, r0, #3
	ldrb r0, [r4, #2]
	add r2, r3, #0
	add r1, r6, #0
	mul r2, r0
	ldr r0, [r4, #0x20]
	add r0, r0, r2
	str r0, [sp]
	ldr r0, [r5, #4]
	bl sub_0204AC58
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #8
	bhs _0219E144
_0219E142:
	b _0219E2A2
_0219E144:
	add r1, r4, #0
	ldr r0, [r4, #0x20]
	add r1, #0x14
	bl sub_020602A8
	mov r0, #3
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E156:
	add r0, r4, #0
	mov r1, #2
	bl ovy266_219e350
	add r1, r0, #0
	ldr r2, [r4, #0x24]
	add r0, r6, #0
	bl sub_0204ABA4
	add r1, r4, #0
	ldr r0, [r4, #0x24]
	add r1, #0x18
	bl sub_02060338
	mov r0, #4
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E17A:
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	bl ovy266_219e350
	ldrb r1, [r4, #1]
	add r5, r0, #0
	lsl r1, r1, #0x1f
	beq _0219E1C4
	ldr r2, [r4, #0x18]
	add r0, r7, #0
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	add r3, r7, #0
	bl sub_02044FB0
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	add r3, r7, #0
	bl sub_02045080
	str r7, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	add r3, r7, #0
	bl sub_0204B0D4
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
_0219E1C4:
	ldrb r1, [r4, #1]
	mov r0, #2
	tst r0, r1
	beq _0219E208
	ldr r2, [r4, #0x18]
	mov r0, #4
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	mov r3, #0
	mov r7, #4
	bl sub_02044FB0
	ldr r2, [r4, #0x14]
	mov r0, #4
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	mov r3, #0
	bl sub_02045080
	mov r0, #0
	str r0, [sp]
	mov r0, #0x8e
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	lsl r3, r7, #0xc
	bl sub_0204B0D4
	mov r0, #1
	mov r1, #1
	bl sub_02046D84
_0219E208:
	mov r0, #5
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E210:
	ldr r2, _0219E2B0 ; =0x00000239
	add r0, r4, #0
	ldrb r2, [r5, r2]
	mov r1, #0
	bl ovy266_219e2b4
	cmp r0, #1
	bne _0219E2A2
	mov r0, #6
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E228:
	ldr r0, _0219E2B0 ; =0x00000239
	ldrb r0, [r5, r0]
	cmp r0, #1
	ldr r0, [r4, #0xc]
	bne _0219E236
	sub r0, r0, #4
	b _0219E238
_0219E236:
	sub r0, r0, #1
_0219E238:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bgt _0219E2A2
	mov r0, #7
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E248:
	ldr r6, _0219E2B0 ; =0x00000239
	add r0, r4, #0
	ldrb r2, [r5, r6]
	mov r1, #1
	bl ovy266_219e2b4
	cmp r0, #1
	bne _0219E2A2
	mov r0, #9
	strb r0, [r4]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _0219E2A2
	add r0, r6, #0
	add r0, #0x4f
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C520
	add r0, r6, #0
	add r0, #0x4f
	ldr r0, [r5, r0]
	bl sub_0204C550
	add r6, #0x4f
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_0204C124
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219E286:
	mov r0, #1
	mov r1, #0
	mov r5, #0
	bl sub_02046CFC
	mov r0, #1
	mov r1, #0
	bl sub_02046D84
	ldr r0, _0219E2A8 ; =0x04000050
	strh r5, [r0]
	ldr r0, _0219E2AC ; =0x04001050
	strh r5, [r0]
	strb r5, [r4]
_0219E2A2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E2A8: .word 0x04000050
_0219E2AC: .word 0x04001050
_0219E2B0: .word 0x00000239
	thumb_func_end ovy266_219e074

	thumb_func_start ovy266_219e2b4
ovy266_219e2b4: ; 0x0219E2B4
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #1
	ldr r0, [r4, #4]
	bne _0219E2C2
	add r0, r0, #4
	b _0219E2C4
_0219E2C2:
	add r0, r0, #1
_0219E2C4:
	str r0, [r4, #4]
	cmp r1, #0
	ldr r0, [r4, #4]
	bne _0219E2DA
	ldr r1, [r4, #8]
	lsl r0, r0, #4
	blx sub_0208D65C
	mov r1, #0x10
	sub r1, r1, r0
	b _0219E2E8
_0219E2DA:
	ldr r1, [r4, #8]
	lsl r0, r0, #4
	blx sub_0208D65C
	add r1, r0, #0
	mov r0, #0x10
	sub r0, r0, r1
_0219E2E8:
	cmp r0, #0
	bge _0219E2EE
	mov r0, #0
_0219E2EE:
	cmp r1, #0
	bge _0219E2F4
	mov r1, #0
_0219E2F4:
	cmp r0, #0x10
	ble _0219E2FA
	mov r0, #0x10
_0219E2FA:
	cmp r1, #0x10
	ble _0219E300
	mov r1, #0x10
_0219E300:
	ldr r2, [r4, #0x10]
	cmp r2, #1
	bne _0219E310
	ldr r0, _0219E344 ; =0x04000050
	neg r1, r1
	bl G2x_ChangeBlendBrightness_
	b _0219E330
_0219E310:
	ldrb r3, [r4, #1]
	lsl r3, r3, #0x1f
	beq _0219E320
	lsl r2, r1, #8
	add r3, r0, #0
	orr r3, r2
	ldr r2, _0219E348 ; =0x04000052
	strh r3, [r2]
_0219E320:
	ldrb r3, [r4, #1]
	mov r2, #2
	tst r2, r3
	beq _0219E330
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0219E34C ; =0x04001052
	strh r1, [r0]
_0219E330:
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _0219E340
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_0219E340:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0219E344: .word 0x04000050
_0219E348: .word 0x04000052
_0219E34C: .word 0x04001052
	thumb_func_end ovy266_219e2b4

	thumb_func_start ovy266_219e350
ovy266_219e350: ; 0x0219E350
	push {r4, r5, r6, r7}
	ldrb r7, [r0, #3]
	mov r6, #0xc
	mov r3, #0x15
	mov r4, #0x16
	mov r5, #0x17
	mul r6, r7
	cmp r2, #1
	bne _0219E364
	add r6, r6, #3
_0219E364:
	ldr r0, [r0, #0x10]
	add r3, r3, r6
	add r4, r4, r6
	add r5, r5, r6
	cmp r0, #1
	bne _0219E376
	mov r3, #0xa
	mov r4, #0xb
	mov r5, #0xc
_0219E376:
	cmp r1, #0
	beq _0219E384
	cmp r1, #1
	beq _0219E38A
	cmp r1, #2
	beq _0219E390
	b _0219E396
_0219E384:
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
_0219E38A:
	add r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
_0219E390:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
_0219E396:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy266_219e350

	thumb_func_start ovy266_219e39c
ovy266_219e39c: ; 0x0219E39C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4]
	ldr r0, _0219E3E8 ; =0x0000FFFF
	cmp r1, r0
	bne _0219E3B8
	ldrh r0, [r4, #4]
	ldr r1, _0219E3EC ; =0x00000242
	strh r0, [r5, r1]
	mov r0, #1
	add r1, #0x12
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_0219E3B8:
	ldr r0, _0219E3EC ; =0x00000242
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bne _0219E3C4
	ldrh r1, [r4, #4]
	strh r1, [r5, r0]
_0219E3C4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy266_219dc30
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _0219E3D8
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _0219E3E2
_0219E3D8:
	mov r1, #0x95
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_0219E3E2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219E3E8: .word 0x0000FFFF
_0219E3EC: .word 0x00000242
	thumb_func_end ovy266_219e39c

	thumb_func_start ovy266_219e3f0
ovy266_219e3f0: ; 0x0219E3F0
	push {r4, lr}
	mov r2, #0x95
	lsl r2, r2, #2
	add r4, r1, #0
	ldr r1, [r0, r2]
	cmp r1, #0
	bne _0219E40A
	ldrb r3, [r4, #7]
	add r1, r2, #0
	sub r1, #0x23
	strb r3, [r0, r1]
	mov r1, #2
	str r1, [r0, r2]
_0219E40A:
	add r1, r4, #0
	bl ovy266_219dc6c
	ldrb r0, [r4, #0x16]
	cmp r0, #1
	beq _0219E41A
	mov r0, #1
	pop {r4, pc}
_0219E41A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy266_219e3f0
_0219E420:
	.byte 0xCA, 0x79, 0x03, 0x49, 0x42, 0x54, 0x03, 0x22, 0x23, 0x31, 0x42, 0x50, 0x01, 0x20, 0x70, 0x47
	.byte 0x31, 0x02, 0x00, 0x00, 0x92, 0x21, 0x01, 0x22, 0x89, 0x00, 0x42, 0x50, 0x00, 0x20, 0x70, 0x47
	.byte 0x92, 0x21, 0x00, 0x22, 0x89, 0x00, 0x42, 0x50, 0x00, 0x20, 0x70, 0x47, 0x95, 0x21, 0x05, 0x22
	.byte 0x89, 0x00, 0x42, 0x50, 0x01, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy266_219e45c
ovy266_219e45c: ; 0x0219E45C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #7]
	add r5, r0, #0
	lsl r1, r1, #4
	add r4, r4, r1
	add r1, r4, #0
	bl ovy266_219dc30
	ldrh r0, [r4, #4]
	ldr r1, _0219E47C ; =0x00000242
	strh r0, [r5, r1]
	mov r0, #1
	add r1, #0x12
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E47C: .word 0x00000242
	thumb_func_end ovy266_219e45c

	thumb_func_start ovy266_219e480
ovy266_219e480: ; 0x0219E480
	push {r4, r5}
	ldrb r2, [r1, #7]
	ldr r3, _0219E4D0 ; =0x0000025F
	strb r2, [r0, r3]
	mov r2, #0
	sub r4, r3, #1
	strb r2, [r0, r4]
	sub r4, r3, #2
	strb r2, [r0, r4]
	add r4, r3, #1
	str r2, [r0, r4]
	mov r4, #0xc
	ldrsh r5, [r1, r4]
	add r4, r3, #5
	str r5, [r0, r4]
	add r4, r3, #0
	ldrh r5, [r1, #4]
	add r4, #9
	str r5, [r0, r4]
	add r4, r3, #0
	add r4, #0xd
	str r2, [r0, r4]
	ldrh r1, [r1, #0xa]
	cmp r1, #3
	bne _0219E4B6
	mov r2, #1
	b _0219E4BC
_0219E4B6:
	cmp r1, #4
	bne _0219E4C0
	mov r2, #2
_0219E4BC:
	sub r1, r3, #2
	strb r2, [r0, r1]
_0219E4C0:
	mov r1, #0x97
	mov r2, #1
	lsl r1, r1, #2
	strb r2, [r0, r1]
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0219E4D0: .word 0x0000025F
	thumb_func_end ovy266_219e480

	thumb_func_start ovy266_219e4d4
ovy266_219e4d4: ; 0x0219E4D4
	push {r4, r5}
	ldr r3, _0219E514 ; =0x0000025F
	mov r2, #0
	strb r2, [r0, r3]
	sub r4, r3, #1
	strb r2, [r0, r4]
	sub r4, r3, #2
	strb r2, [r0, r4]
	add r4, r3, #1
	str r2, [r0, r4]
	mov r4, #0xc
	ldrsh r5, [r1, r4]
	add r4, r3, #5
	str r5, [r0, r4]
	sub r4, r3, #2
	strb r2, [r0, r4]
	ldrh r2, [r1, #4]
	add r1, r3, #0
	add r1, #9
	str r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	add r1, #0xd
	str r2, [r0, r1]
	add r1, r4, #0
	strb r2, [r0, r1]
	mov r2, #8
	sub r1, r3, #3
	strb r2, [r0, r1]
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_0219E514: .word 0x0000025F
	thumb_func_end ovy266_219e4d4
_0219E518:
	.byte 0x81, 0xCE, 0x19, 0x02, 0xB5, 0xCE, 0x19, 0x02
	.byte 0xC9, 0xCE, 0x19, 0x02, 0x40, 0x04, 0x80, 0x0C, 0xC0, 0x14, 0x00, 0x1D, 0x40, 0x25, 0x80, 0x2D
	.byte 0xC0, 0x35, 0x00, 0x00, 0x05, 0xCF, 0x19, 0x02, 0x9D, 0xCF, 0x19, 0x02, 0xB5, 0xCF, 0x19, 0x02
	.byte 0x41, 0xD0, 0x19, 0x02, 0xC5, 0xD0, 0x19, 0x02, 0x2D, 0xD2, 0x19, 0x02, 0x9D, 0xE3, 0x19, 0x02
	.byte 0xF1, 0xE3, 0x19, 0x02, 0x21, 0xE4, 0x19, 0x02, 0x35, 0xE4, 0x19, 0x02, 0x41, 0xE4, 0x19, 0x02
	.byte 0x4D, 0xE4, 0x19, 0x02, 0x59, 0xE4, 0x19, 0x02, 0x5D, 0xE4, 0x19, 0x02, 0x81, 0xE4, 0x19, 0x02
	.byte 0xD5, 0xE4, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x18, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x18, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x1E, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x66, 0x66, 0x5F, 0x72, 0x6F, 0x6C, 0x6C, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219E518
