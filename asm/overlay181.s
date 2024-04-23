    .include "macros/function.inc"
	.include "overlay181.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy181_219ce80
ovy181_219ce80: ; 0x0219CE80
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	mov r5, #0
	add r1, #0x25
	strb r5, [r1]
	ldr r1, [r4, #8]
	str r5, [r4, #0x20]
	ldrb r2, [r1]
	add r1, r4, #0
	add r1, #0x28
	strb r2, [r1]
	bl ovy181_219d670
	add r0, r4, #0
	bl ovy181_219d83c
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	str r5, [sp]
	bne _0219CEBA
	str r5, [sp, #4]
	ldrh r0, [r4]
	mov r1, #5
	mov r2, #5
	b _0219CEC2
_0219CEBA:
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4]
	mov r2, #1
_0219CEC2:
	mov r3, #0x5c
	bl ovy181_219fc0c
	str r0, [r4, #0x68]
	ldrh r0, [r4]
	bl ovy181_219f580
	mov r5, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	str r5, [r4, #0x2c]
	str r5, [r4, #0x60]
	bl ovy181_219db8c
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219CEFE
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_0200C838
	mov r1, #4
	str r0, [r4, #0x4c]
	bl sub_0200C8F8
	b _0219CF04
_0219CEFE:
	ldr r0, _0219CF4C ; =0x021a4780
	str r5, [r4, #0x4c]
	strh r5, [r0, #2]
_0219CF04:
	ldr r0, _0219CF50 ; =0x0219D5F5
	add r1, r4, #0
	mov r2, #8
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219CF24
	ldr r0, _0219CF54 ; =ovy181_219d5fc
	mov r1, #0
	bl sub_020056B0
	b _0219CF34
_0219CF24:
	ldr r0, _0219CF58 ; =ovy181_219d640
	mov r1, #0
	bl sub_020056B0
	ldr r0, _0219CF5C ; =0x00000482
	ldr r1, _0219CF60 ; =0x0000FFFF
	bl sub_02005DF4
_0219CF34:
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	strh r0, [r4, #0x38]
	strh r0, [r4, #0x3a]
	strh r0, [r4, #0x3c]
	mov r0, #0x10
	bl sub_0203D10C
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CF4C: .word 0x021a4780
_0219CF50: .word 0x0219D5F5
_0219CF54: .word ovy181_219d5fc
_0219CF58: .word ovy181_219d640
_0219CF5C: .word 0x00000482
_0219CF60: .word 0x0000FFFF
	thumb_func_end ovy181_219ce80

	thumb_func_start ovy181_219cf64
ovy181_219cf64: ; 0x0219CF64
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x10
	mov r4, #0x10
	bl sub_0203D134
	ldr r0, [r5, #4]
	bl GFL_TCBRemove
	bl sub_020056C8
	bl sub_0203E7DC
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219CF8E
	bl sub_02005D8C
	b _0219CFB0
_0219CF8E:
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	bl sub_02017394
	lsl r1, r4, #0xa
	add r6, r0, #0
	bl sub_02019294
	add r4, r0, #0
	ldr r1, _0219CFD0 ; =0x00004001
	add r0, r6, #0
	bl sub_02019294
	ldrh r1, [r5, #0x38]
	strh r1, [r4]
	ldrh r1, [r5, #0x3a]
	strh r1, [r0]
_0219CFB0:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0219CFBA
	bl sub_0203A24C
_0219CFBA:
	ldr r0, [r5, #0xc]
	bl ovy181_219f5d8
	ldr r0, [r5, #0x68]
	bl ovy181_219fd28
	add r0, r5, #0
	bl ovy181_219d7c8
	pop {r4, r5, r6, pc}
	nop
_0219CFD0: .word 0x00004001
	thumb_func_end ovy181_219cf64

	thumb_func_start ovy181_219cfd4
ovy181_219cfd4: ; 0x0219CFD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x54
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ovy181_219f60c
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _0219D012
	ldr r0, [r4, #0x20]
	cmp r0, #2
	beq _0219D012
	cmp r0, #3
	beq _0219D012
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_020178BC
	str r0, [r4, #0x18]
	cmp r0, #1
	bne _0219D006
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017884
_0219D006:
	mov r0, #2
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r1, #3
	bl ovy181_219e38c
_0219D012:
	ldr r0, [r4, #0x20]
	cmp r0, #0x21
	bhi _0219D112
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D024: ; jump table
	.short _0219D068 - _0219D024 - 2 ; case 0
	.short _0219D084 - _0219D024 - 2 ; case 1
	.short _0219D0C6 - _0219D024 - 2 ; case 2
	.short _0219D10A - _0219D024 - 2 ; case 3
	.short _0219D11A - _0219D024 - 2 ; case 4
	.short _0219D134 - _0219D024 - 2 ; case 5
	.short _0219D14A - _0219D024 - 2 ; case 6
	.short _0219D16C - _0219D024 - 2 ; case 7
	.short _0219D176 - _0219D024 - 2 ; case 8
	.short _0219D184 - _0219D024 - 2 ; case 9
	.short _0219D1B8 - _0219D024 - 2 ; case 10
	.short _0219D1CE - _0219D024 - 2 ; case 11
	.short _0219D23A - _0219D024 - 2 ; case 12
	.short _0219D2AA - _0219D024 - 2 ; case 13
	.short _0219D2AC - _0219D024 - 2 ; case 14
	.short _0219D2E8 - _0219D024 - 2 ; case 15
	.short _0219D32E - _0219D024 - 2 ; case 16
	.short _0219D350 - _0219D024 - 2 ; case 17
	.short _0219D39A - _0219D024 - 2 ; case 18
	.short _0219D3B8 - _0219D024 - 2 ; case 19
	.short _0219D442 - _0219D024 - 2 ; case 20
	.short _0219D456 - _0219D024 - 2 ; case 21
	.short _0219D45E - _0219D024 - 2 ; case 22
	.short _0219D498 - _0219D024 - 2 ; case 23
	.short _0219D4D2 - _0219D024 - 2 ; case 24
	.short _0219D564 - _0219D024 - 2 ; case 25
	.short _0219D588 - _0219D024 - 2 ; case 26
	.short _0219D51C - _0219D024 - 2 ; case 27
	.short _0219D52C - _0219D024 - 2 ; case 28
	.short _0219D54A - _0219D024 - 2 ; case 29
	.short _0219D59E - _0219D024 - 2 ; case 30
	.short _0219D5C0 - _0219D024 - 2 ; case 31
	.short _0219D5CE - _0219D024 - 2 ; case 32
	.short _0219D5D6 - _0219D024 - 2 ; case 33
_0219D068:
	mov r0, #6
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
_0219D080:
	str r5, [r4, #0x20]
	b _0219D5E4
_0219D084:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219D112
	bl sub_02035318
	cmp r0, #1
	bne _0219D0A6
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D0A2
	mov r0, #7
_0219D0A0:
	b _0219D5E2
_0219D0A2:
	mov r0, #4
	b _0219D0A0
_0219D0A6:
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl ovy181_219fe70
	bl sub_02017BCC
	add r1, r0, #0
	ldr r0, [r4, #0x68]
	bl ovy181_21a02a0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	mov r0, #0x21
	b _0219D0A0
_0219D0C6:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D0E8
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
	bl GFL_FadeScreenSet
	b _0219D106
_0219D0E8:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _0219D3DC ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	bl GFL_FadeScreenSet
	mov r0, #6
	bl sub_02005EA0
_0219D106:
	mov r0, #3
	b _0219D0A0
_0219D10A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	beq _0219D114
_0219D112:
	b _0219D5E4
_0219D114:
	add sp, #0x54
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0219D11A:
	ldr r0, [r4, #0x68]
	mov r1, #5
	mov r5, #5
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x2b
	bl ovy181_219ff4c
	b _0219D080
_0219D134:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D226
	ldr r0, [r4, #0x68]
	mov r1, #0
	bl ovy181_21a022c
	mov r0, #6
	b _0219D0A0
_0219D14A:
	ldr r0, [r4, #0x68]
	bl ovy181_21a0274
	cmp r0, #1
	bne _0219D166
	mov r0, #7
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	bl sub_021A026C
	b _0219D5E4
_0219D166:
	cmp r0, #2
	bne _0219D226
	b _0219D5E0
_0219D16C:
	add r0, r4, #0
	bl ovy181_219dcd0
	mov r0, #8
	b _0219D0A0
_0219D176:
	add r0, r4, #0
	bl ovy181_219defc
	cmp r0, #1
	bne _0219D226
	mov r0, #9
	b _0219D0A0
_0219D184:
	add r0, r4, #0
	bl ovy181_219deac
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _0219D1B6
	mov r0, #0xa
	str r0, [r4, #0x20]
	mov r5, #0
	ldr r0, [r4, #0xc]
	strh r5, [r4, #0x2a]
	bl ovy181_219f6ac
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D1B2
	add r0, r5, #0
_0219D1AA:
	ldrh r1, [r4]
	bl sub_02042BA8
	b _0219D5E4
_0219D1B2:
	mov r0, #1
	b _0219D1AA
_0219D1B6:
	b _0219D5E0
_0219D1B8:
	ldr r0, [r4, #0xc]
	bl sub_0219F7B8
	cmp r0, #1
	bne _0219D226
	mov r0, #0xb
	str r0, [r4, #0x20]
	ldr r0, [r4, #0xc]
	bl ovy181_219f7c8
	b _0219D5E4
_0219D1CE:
	ldrh r0, [r4, #0x2a]
	add r0, r0, #1
	strh r0, [r4, #0x2a]
	ldrh r1, [r4, #0x2a]
	ldr r0, _0219D3E0 ; =0x00000708
	cmp r1, r0
	blo _0219D1E8
	add r0, r4, #0
	mov r1, #3
	bl ovy181_219e38c
	mov r0, #0x1e
	b _0219D0A0
_0219D1E8:
	ldr r0, [r4, #0xc]
	bl sub_0219F800
	cmp r0, #1
	bne _0219D226
	bl sub_02017BCC
	str r0, [r4, #0x58]
	bl sub_02048B84
	add r1, r4, #0
	add r1, #0x5e
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D218
	ldr r0, [r4, #0x4c]
	bl sub_0200C8CC
	add r1, r4, #0
	add r1, #0x5c
	strh r0, [r1]
_0219D218:
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x58
	bl ovy181_219fb38
	cmp r0, #1
	beq _0219D228
_0219D226:
	b _0219D5E4
_0219D228:
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D236
	mov r0, #0xc
	b _0219D0A0
_0219D236:
	mov r0, #0x20
	b _0219D0A0
_0219D23A:
	mov r0, #0x8e
	bl sub_020057B8
	add r6, sp, #0xc
	add r5, r0, #0
	add r0, r6, #0
	bl FS_InitFile
	add r0, r6, #0
	add r1, r5, #0
	bl FS_OpenFile
	cmp r0, #0
	bne _0219D260
	ldr r0, _0219D3E4 ; =0x021A4348
	ldr r2, _0219D3E8 ; =0x021A434C
	mov r1, #0
	bl sub_0203CB80
_0219D260:
	add r6, sp, #0xc
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl FS_SeekFile
	add r0, r6, #0
	bl FS_GetLength
	str r0, [r4, #0x64]
	ldr r0, _0219D3EC ; =0x00000299
	ldr r3, _0219D3F0 ; =0x021A4354
	str r0, [sp]
	ldrh r0, [r4]
	ldr r1, [r4, #0x64]
	mov r2, #1
	bl sub_0203A1FC
	add r1, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r6, #0
	str r1, [r4, #0x60]
	bl FS_ReadFile
	add r0, r6, #0
	bl FS_CloseFile
	cmp r0, #0
	bne _0219D2A6
	ldr r0, _0219D3E4 ; =0x021A4348
	ldr r2, _0219D3E8 ; =0x021A434C
	add r1, r5, #0
	bl sub_0203CB80
_0219D2A6:
	mov r0, #0xd
	b _0219D0A0
_0219D2AA:
	b _0219D4E2
_0219D2AC:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xa
	bne _0219D2B8
	b _0219D408
_0219D2B8:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #2
	bne _0219D3B2
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _0219D2D6
	mov r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x60]
	ldr r2, [r4, #0x64]
	bl ovy181_219f928
_0219D2D6:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #2
	bl ovy181_219ff4c
	mov r0, #0xf
	b _0219D0A0
_0219D2E8:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #3
	bne _0219D304
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #3
	bl ovy181_219ff4c
	mov r0, #0x10
	b _0219D32C
_0219D304:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xd
	bne _0219D32E
	add r0, r4, #0
	mov r1, #4
	bl ovy181_219e38c
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #8
	bl ovy181_219ff4c
	ldr r0, [r4, #0xc]
	bl ovy181_219f7d8
	mov r0, #0x1c
_0219D32C:
	str r0, [r4, #0x20]
_0219D32E:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #4
	bne _0219D3B2
	ldr r0, [r4, #0xc]
	bl ovy181_219f938
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #4
	bl ovy181_219ff4c
	mov r0, #0x11
	b _0219D0A0
_0219D350:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #5
	bne _0219D372
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017994
	mov r1, #0x78
	bl sub_020095A0
	ldrh r0, [r4, #0x3a]
	add r0, r0, #1
	strh r0, [r4, #0x3a]
	mov r0, #0x12
	b _0219D0A0
_0219D372:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #8
	bne _0219D3B2
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017994
	mov r1, #0x78
	bl sub_020095A0
	ldrh r0, [r4, #0x3a]
	mov r1, #2
	add r0, r0, #1
	strh r0, [r4, #0x3a]
	add r0, r4, #0
	bl ovy181_219e38c
	b _0219D47C
_0219D39A:
	ldr r0, [r4, #0xc]
	bl sub_0219F970
	cmp r0, #1
	bne _0219D3B2
	ldr r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	beq _0219D3B4
_0219D3B2:
	b _0219D5E4
_0219D3B4:
	mov r0, #0x13
	b _0219D0A0
_0219D3B8:
	ldr r0, [r4, #0xc]
	bl sub_0219F9A4
	cmp r0, #1
	beq _0219D3CC
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219D4BE
_0219D3CC:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #6
	bne _0219D3F4
	mov r0, #0x14
	b _0219D0A0
	nop
_0219D3DC: .word 0x00007FFF
_0219D3E0: .word 0x00000708
_0219D3E4: .word 0x021A4348
_0219D3E8: .word 0x021A434C
_0219D3EC: .word 0x00000299
_0219D3F0: .word 0x021A4354
_0219D3F4:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xa
	bne _0219D4BE
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D428
_0219D408:
	add r0, r4, #0
	mov r1, #3
	bl ovy181_219e38c
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #8
	bl ovy181_219ff4c
_0219D41E:
	ldr r0, [r4, #0xc]
	bl ovy181_219f7d8
	mov r0, #0x1c
	b _0219D0A0
_0219D428:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x26
_0219D432:
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	mov r0, #0x1a
	b _0219D5E2
_0219D442:
	add r0, r4, #0
	bl ovy181_219e494
	mov r0, #0x15
	str r0, [r4, #0x20]
	add r0, r4, #0
	mov r1, #9
	add r0, #0x24
	strb r1, [r0]
	b _0219D5E4
_0219D456:
	add r0, r4, #0
	bl ovy181_219e5b8
	b _0219D5E4
_0219D45E:
	add r0, r4, #0
	bl sub_0219E5B4
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D480
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #7
	bl ovy181_219ff4c
_0219D47C:
	mov r0, #0x17
	b _0219D0A0
_0219D480:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x27
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	b _0219D518
_0219D498:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D4BE
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017364
	bl sub_02007A38
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl ovy181_219f9ac
	cmp r0, #1
	beq _0219D4C0
_0219D4BE:
	b _0219D5E4
_0219D4C0:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0xb
	bl ovy181_219ff4c
	mov r0, #0x18
	b _0219D0A0
_0219D4D2:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #2
	ldr r0, [r4, #0xc]
	bne _0219D4E6
	bl ovy181_219f814
_0219D4E2:
	mov r0, #0xe
	b _0219D0A0
_0219D4E6:
	bl sub_0219F810
	cmp r0, #9
	beq _0219D4F8
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xa
	bne _0219D5E4
_0219D4F8:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xa
	bne _0219D50A
	add r0, r4, #0
	mov r1, #3
	bl ovy181_219e38c
_0219D50A:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #8
	bl ovy181_219ff4c
_0219D518:
	mov r0, #0x1b
	b _0219D0A0
_0219D51C:
	ldr r0, [r4, #0xc]
	mov r1, #0x12
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219D5E4
	b _0219D41E
_0219D52C:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D5E4
	ldr r0, [r4, #0xc]
	bl sub_0219F7F0
	cmp r0, #1
	bne _0219D5E4
	ldr r0, [r4, #0xc]
	bl ovy181_219f798
	mov r0, #0x1d
	b _0219D0A0
_0219D54A:
	ldr r0, [r4, #0xc]
	bl sub_0219F7C0
	cmp r0, #1
	bne _0219D5E4
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D560
	b _0219D5E0
_0219D560:
	mov r0, #0x19
	b _0219D0A0
_0219D564:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D5E4
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x23
	b _0219D432
_0219D588:
	ldr r0, [r4, #0xc]
	bl sub_0219F7C0
	cmp r0, #1
	bne _0219D5E4
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D5E4
	b _0219D5E0
_0219D59E:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0xa
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	mov r0, #0x1f
	str r0, [r4, #0x20]
	ldr r0, [r4, #0xc]
	bl ovy181_219f798
	b _0219D5E4
_0219D5C0:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D5CE
	mov r0, #0x1d
	str r0, [r4, #0x20]
_0219D5CE:
	add r0, r4, #0
	bl ovy181_219e724
	b _0219D5E4
_0219D5D6:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219D5E4
_0219D5E0:
	mov r0, #2
_0219D5E2:
	str r0, [r4, #0x20]
_0219D5E4:
	ldr r0, [r4, #0x68]
	bl ovy181_219fdc0
	bl sub_0204B794
	mov r0, #0
	add sp, #0x54
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy181_219cfd4
_0219D5F4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy181_219d5fc
ovy181_219d5fc: ; 0x0219D5FC
	push {r3, lr}
	ldr r0, _0219D63C ; =0x021a4780
	ldrb r1, [r0]
	cmp r1, #1
	bls _0219D634
	mov r1, #0
	strb r1, [r0]
	mov r0, #3
	mov r1, #2
	mov r2, #1
	bl sub_02044CFC
	mov r0, #3
	mov r1, #5
	mov r2, #1
	bl sub_02044CFC
	mov r0, #7
	mov r1, #2
	mov r2, #1
	bl sub_02044CFC
	mov r0, #7
	mov r1, #5
	mov r2, #1
	bl sub_02044CFC
	pop {r3, pc}
_0219D634:
	add r1, r1, #1
	strb r1, [r0]
	pop {r3, pc}
	nop
_0219D63C: .word 0x021a4780
	thumb_func_end ovy181_219d5fc

	thumb_func_start ovy181_219d640
ovy181_219d640: ; 0x0219D640
	push {r3, lr}
	ldr r0, _0219D66C ; =0x021a4780
	ldrh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	ldrh r1, [r0, #2]
	cmp r1, #5
	blo _0219D668
	mov r1, #0
	strh r1, [r0, #2]
	mov r0, #3
	mov r1, #5
	mov r2, #1
	bl sub_02044CFC
	mov r0, #7
	mov r1, #5
	mov r2, #1
	bl sub_02044CFC
_0219D668:
	pop {r3, pc}
	nop
_0219D66C: .word 0x021a4780
	thumb_func_end ovy181_219d640

	thumb_func_start ovy181_219d670
ovy181_219d670: ; 0x0219D670
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r1, [r4]
	ldr r0, _0219D790 ; =0xFFFFE0FF
	ldr r6, _0219D794 ; =0x04001000
	and r1, r0
	str r1, [r4]
	ldr r1, [r6]
	mov r7, #0
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
	add r4, #0x50
	ldr r2, _0219D798 ; =0x04000304
	strh r7, [r4]
	add r6, #0x50
	strh r7, [r6]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _0219D79C ; =0x021A4158
	bl sub_02046C40
	ldrh r0, [r5]
	bl sub_020444A4
	ldrh r0, [r5]
	bl sub_02048080
	ldr r0, _0219D7A0 ; =0x021A4048
	bl sub_02044710
	ldr r0, _0219D7A4 ; =0x021A4098
	mov r1, #0
	mov r2, #0
	bl ovy181_219d818
	ldr r0, _0219D7A8 ; =0x021A40B8
	mov r1, #1
	mov r2, #0
	bl ovy181_219d818
	ldr r0, _0219D7AC ; =0x021A40D8
	mov r1, #2
	mov r2, #0
	bl ovy181_219d818
	ldr r0, _0219D7B0 ; =0x021A40F8
	mov r1, #3
	mov r2, #0
	bl ovy181_219d818
	ldr r0, _0219D7B4 ; =0x021A4118
	mov r1, #4
	mov r2, #0
	bl ovy181_219d818
	ldr r0, _0219D7B8 ; =0x021A4138
	mov r1, #5
	mov r2, #0
	bl ovy181_219d818
	ldr r0, _0219D7BC ; =0x021A4058
	mov r1, #6
	mov r2, #0
	mov r4, #6
	bl ovy181_219d818
	ldr r0, _0219D7C0 ; =0x021A4078
	mov r1, #7
	add r2, r7, #0
	bl ovy181_219d818
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219D73C
	add r0, r4, #0
	mov r1, #1
	b _0219D740
_0219D73C:
	add r0, r4, #0
	add r1, r7, #0
_0219D740:
	bl sub_02044C98
	ldr r4, _0219D7C4 ; =0x02093F08
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x40
	str r0, [r3]
	add r0, sp, #0
	strh r1, [r0, #0x10]
	add r0, r2, #0
	ldrh r2, [r5]
	ldr r1, _0219D79C ; =0x021A4158
	bl sub_0204B6A8
	ldrh r2, [r5]
	mov r0, #8
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5, #0x6c]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219D790: .word 0xFFFFE0FF
_0219D794: .word 0x04001000
_0219D798: .word 0x04000304
_0219D79C: .word 0x021A4158
_0219D7A0: .word 0x021A4048
_0219D7A4: .word 0x021A4098
_0219D7A8: .word 0x021A40B8
_0219D7AC: .word 0x021A40D8
_0219D7B0: .word 0x021A40F8
_0219D7B4: .word 0x021A4118
_0219D7B8: .word 0x021A4138
_0219D7BC: .word 0x021A4058
_0219D7C0: .word 0x021A4078
_0219D7C4: .word 0x02093F08
	thumb_func_end ovy181_219d670

	thumb_func_start ovy181_219d7c8
ovy181_219d7c8: ; 0x0219D7C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	bl sub_0204C108
	ldr r0, [r4, #0x6c]
	bl sub_0204BF98
	bl sub_0204B758
	mov r0, #0
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #3
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
	thumb_func_end ovy181_219d7c8

	thumb_func_start ovy181_219d818
ovy181_219d818: ; 0x0219D818
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
	thumb_func_end ovy181_219d818

	thumb_func_start ovy181_219d83c
ovy181_219d83c: ; 0x0219D83C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219D84C
	b _0219D956
_0219D84C:
	ldrh r1, [r5]
	mov r0, #0x8b
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #9
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	mov r7, #9
	bl sub_0204AF50
	str r6, [sp]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #4
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	lsl r3, r7, #5
	str r3, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r7, #2
	bl sub_0204B124
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #6
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xa
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204AF50
	mov r3, #0x1a
	lsl r3, r3, #4
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #3
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204B124
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xb
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204AF50
	add r0, r7, #0
	bl sub_02044F90
	add r0, r4, #0
	b _0219DA7C
_0219D956:
	ldrh r1, [r5]
	mov r0, #0x21
	bl sub_0204AA30
	mov r4, #0
	str r4, [sp]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #6
	add r6, r0, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x1f
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	ldrh r0, [r5]
	mov r1, #6
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #3
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x1f
	mov r2, #3
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r6, #0
	bl sub_0204AB0C
	ldrh r1, [r5]
	mov r7, #0x8b
	mov r0, #0x8b
	bl sub_0204AA30
	add r7, #0x95
	str r7, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #4
	add r3, r7, #0
	str r1, [sp, #8]
	mov r1, #2
	add r6, r0, #0
	bl sub_0204B124
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #6
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xa
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204AF50
	mov r3, #0x1a
	lsl r3, r3, #4
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #4
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204B124
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	mov r2, #4
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xb
	mov r2, #4
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204AF50
	mov r0, #5
	bl sub_02044F90
	mov r0, #5
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #4
	add r1, r4, #0
	bl sub_02044C98
	add r0, r6, #0
_0219DA7C:
	bl sub_0204AB0C
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r3, #4
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, #0xfc
	bl sub_0204B0D4
	bl sub_0202D824
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #6
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204ADA8
	bl sub_0202D828
	str r6, [sp]
	str r6, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #6
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204AF50
	mov r7, #3
	str r7, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #6
	bl sub_02044F90
	bl sub_0202D810
	str r6, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204BBB8
	str r0, [r5, #0x70]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x74]
	mov r0, #2
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0x78]
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #0xe8
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0xa8
	strh r0, [r1, #2]
	mov r0, #1
	strh r0, [r1, #4]
	strb r6, [r1, #7]
	strb r6, [r1, #6]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	ldr r2, [r5, #0x70]
	ldr r3, [r5, #0x78]
	bl sub_0204C040
	str r0, [r5, #0x7c]
	add r5, #0x28
	ldrb r1, [r5]
	cmp r1, #0
	bne _0219DB82
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219DB82:
	add r1, r6, #0
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy181_219d83c

	thumb_func_start ovy181_219db8c
ovy181_219db8c: ; 0x0219DB8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219DBA4
	ldr r0, _0219DCC0 ; =0x021a4780
	mov r1, #1
	str r1, [r0, #4]
	mov r4, #4
	b _0219DBAC
_0219DBA4:
	ldr r0, _0219DCC0 ; =0x021a4780
	mov r1, #0
	str r1, [r0, #4]
	mov r4, #2
_0219DBAC:
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	bl sub_02044C98
	ldrh r1, [r5]
	mov r0, #0x16
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0xe0
	str r1, [sp, #4]
	mov r1, #0
	add r6, r0, #0
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0xe0
	bl sub_0204B0D4
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #1
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #2
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0x18
	str r0, [sp]
	mov r7, #7
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r7, [sp, #4]
	bl sub_0204566C
	add r0, r4, #0
	bl sub_02044F90
	add r0, r6, #0
	bl sub_0204AB0C
	mov r0, #8
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	add r4, r0, #0
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x66
	bl GFL_MsgSysLoadData
	mov r1, #1
	add r7, r0, #0
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #0
	bl BmpWin_GetBitmap
	mov r1, #7
	bl BmpWin_BitmapFill
	add r0, r4, #0
	bl BmpWin_GetBitmap
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x68]
	bl sub_021A034C
	str r0, [sp]
	ldr r0, _0219DCC4 ; =0x00001167
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r3, r6, #0
	bl sub_02021D28
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl sub_02048210
	mov r0, #5
	ldr r1, _0219DCC8 ; =0x00007EEA
	lsl r0, r0, #0x18
	strh r1, [r0]
	ldr r0, _0219DCCC ; =0x05000400
	strh r1, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DCC0: .word 0x021a4780
_0219DCC4: .word 0x00001167
_0219DCC8: .word 0x00007EEA
_0219DCCC: .word 0x05000400
	thumb_func_end ovy181_219db8c

	thumb_func_start ovy181_219dcd0
ovy181_219dcd0: ; 0x0219DCD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r5, r0, #0
	add r0, r4, #0
	ldr r7, _0219DE90 ; =0x021A4354
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x26
	strb r1, [r0]
	ldr r6, _0219DE94 ; =0x00000558
	mov r1, #0x60
	str r6, [sp]
	ldrh r0, [r4]
	mov r2, #1
	add r3, r7, #0
	bl sub_0203A1FC
	str r0, [r4, #0x50]
	add r0, r6, #1
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #0xc0
	mov r2, #1
	add r3, r7, #0
	bl sub_0203A1FC
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	bl ovy181_21a0120
	add r0, r5, #0
	bl sub_02008BD4
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0
	mov r3, #5
	bl ovy181_21a0160
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219DD48
	bl sub_021A0344
	mov r1, #0xc
	b _0219DD4E
_0219DD48:
	bl sub_021A0344
	mov r1, #0xf
_0219DD4E:
	bl sub_0204898C
	ldrh r1, [r4]
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	bl GFL_StrBufCreate
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	bl sub_021A0348
	ldr r1, [sp, #8]
	add r2, r5, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219DD88
	bl sub_021A0344
	mov r1, #0xd
	b _0219DD8E
_0219DD88:
	bl sub_021A0344
	mov r1, #0x10
_0219DD8E:
	bl sub_0204898C
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl sub_020485F8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #4]
	bl sub_020485F8
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r5, [r4, #0x50]
	ldr r0, [sp, #8]
	bl sub_020486F0
	add r1, r5, #0
	lsl r2, r7, #1
	blx MIi_CpuCopy16
	ldr r5, [r4, #0x54]
	ldr r0, [sp, #4]
	bl sub_020486F0
	add r1, r5, #0
	lsl r2, r6, #1
	blx MIi_CpuCopy16
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	ldr r0, [sp, #4]
	bl GFL_StrBufFree
	lsl r0, r7, #1
	ldr r7, _0219DE98 ; =0x0000FEE0
	ldr r1, [r4, #0x50]
	mov r5, #0
	strh r5, [r1, r0]
	ldr r1, [r4, #0x54]
	lsl r0, r6, #1
	strh r5, [r1, r0]
	ldr r0, _0219DE98 ; =0x0000FEE0
	add r7, #0x39
	add r0, #0x30
_0219DDEA:
	ldr r3, [r4, #0x54]
	lsl r2, r5, #1
	ldrh r1, [r3, r2]
	ldr r6, _0219DE9C ; =0x0000FFFE
	cmp r1, r6
	bne _0219DDFA
	mov r1, #0xa
	b _0219DE06
_0219DDFA:
	cmp r1, r0
	blo _0219DE08
	cmp r1, r7
	bhi _0219DE08
	ldr r6, _0219DE98 ; =0x0000FEE0
	sub r1, r1, r6
_0219DE06:
	strh r1, [r3, r2]
_0219DE08:
	add r5, r5, #1
	cmp r5, #0x60
	blt _0219DDEA
	ldr r0, _0219DEA0 ; =0x0000FF24
	ldr r7, _0219DEA0 ; =0x0000FF24
	sub r0, #0x44
	mov ip, r0
	ldr r0, _0219DEA0 ; =0x0000FF24
	ldr r6, _0219DEA0 ; =0x0000FF24
	add r0, r0, #5
	mov r3, #0
	sub r7, #0xb
	sub r6, #0x14
	str r0, [sp, #0xc]
_0219DE24:
	ldr r2, [r4, #0x50]
	lsl r1, r3, #1
	ldrh r0, [r2, r1]
	ldr r5, [sp, #0xc]
	cmp r0, r5
	bne _0219DE34
	mov r0, #0x49
	b _0219DE4A
_0219DE34:
	ldr r5, _0219DEA0 ; =0x0000FF24
	cmp r0, r5
	bne _0219DE3E
	mov r0, #0x44
	b _0219DE4A
_0219DE3E:
	cmp r0, r6
	blo _0219DE4C
	cmp r0, r7
	bhi _0219DE4C
	mov r5, ip
	sub r0, r0, r5
_0219DE4A:
	strh r0, [r2, r1]
_0219DE4C:
	add r3, r3, #1
	cmp r3, #0x30
	blt _0219DE24
	ldr r0, _0219DEA4 ; =0x0000001E
	mov r5, #0
	str r5, [r4, #0x30]
	bl sub_0203CE0C
	add r4, #0x28
	ldrb r0, [r4]
	cmp r0, #0
	bne _0219DE76
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #1
	bl sub_02044C98
	b _0219DE86
_0219DE76:
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
_0219DE86:
	ldr r0, _0219DEA8 ; =ovy181_219ed50
	bl CARD_SetPulledOutCallback
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DE90: .word 0x021A4354
_0219DE94: .word 0x00000558
_0219DE98: .word 0x0000FEE0
_0219DE9C: .word 0x0000FFFE
_0219DEA0: .word 0x0000FF24
_0219DEA4: .word 0x0000001E
_0219DEA8: .word ovy181_219ed50
	thumb_func_end ovy181_219dcd0

	thumb_func_start ovy181_219deac
ovy181_219deac: ; 0x0219DEAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219DEF8 ; =0x0000001E
	bl sub_0203CDC8
	mov r0, #0
	mov r4, #0
	bl CARD_SetPulledOutCallback
	ldr r0, [r5, #0x50]
	bl sub_0203A24C
	ldr r0, [r5, #0x54]
	bl sub_0203A24C
	add r5, #0x28
	ldrb r0, [r5]
	cmp r0, #0
	bne _0219DEE4
	mov r0, #2
	add r1, r4, #0
	bl sub_02044C98
	add r0, r4, #0
	add r1, r4, #0
	bl sub_02044C98
	pop {r3, r4, r5, pc}
_0219DEE4:
	mov r0, #5
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #4
	add r1, r4, #0
	bl sub_02044C98
	pop {r3, r4, r5, pc}
	nop
_0219DEF8: .word 0x0000001E
	thumb_func_end ovy181_219deac

	thumb_func_start ovy181_219defc
ovy181_219defc: ; 0x0219DEFC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02174E58
	cmp r0, #9
	beq _0219DF10
	bl sub_02174E58
	cmp r0, #0xa
	bne _0219DF30
_0219DF10:
	mov r5, #0
	mov r6, #1
	str r5, [r4, #0x30]
	str r6, [r4, #0x14]
	bl sub_021754A0
	cmp r0, #1
	bne _0219DF2C
	bl ovy181_219f54c
	bl sub_02175164
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_0219DF2C:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_0219DF30:
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #8
	bhi _0219DFA8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DF46: ; jump table
	.short _0219DF58 - _0219DF46 - 2 ; case 0
	.short _0219DFA0 - _0219DF46 - 2 ; case 1
	.short _0219DFBA - _0219DF46 - 2 ; case 2
	.short _0219E036 - _0219DF46 - 2 ; case 3
	.short _0219E03E - _0219DF46 - 2 ; case 4
	.short _0219E078 - _0219DF46 - 2 ; case 5
	.short _0219E082 - _0219DF46 - 2 ; case 6
	.short _0219E094 - _0219DF46 - 2 ; case 7
	.short _0219E07E - _0219DF46 - 2 ; case 8
_0219DF58:
	ldr r0, _0219E0C0 ; =0x021a4780
	mov r5, #0
	str r5, [r0, #8]
	ldrh r0, [r4]
	mov r6, #1
	ldr r1, _0219E0C4 ; =0x0219E381
	mov r2, #0
	str r6, [r4, #0x1c]
	bl sub_021750F0
	ldrh r3, [r4]
	mov r0, #0xf0
	mov r1, #0
	mov r2, #0
	bl sub_0203E76C
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219DF86
	add r0, r5, #0
	b _0219DF88
_0219DF86:
	add r0, r6, #0
_0219DF88:
	ldrh r1, [r4]
	bl sub_0203E810
	add r0, r4, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	ldr r0, _0219E0C8 ; =ovy181_219e418
	add r1, r4, #0
	bl sub_0203D2BC
	b _0219E0AC
_0219DFA0:
	bl sub_02174E58
	cmp r0, #1
	beq _0219DFAA
_0219DFA8:
	b _0219E0AC
_0219DFAA:
	bl sub_02174E90
	cmp r0, #1
	bne _0219E0AC
	mov r0, #2
_0219DFB4:
	add r4, #0x24
	strb r0, [r4]
	b _0219E0AC
_0219DFBA:
	bl sub_02174E58
	cmp r0, #7
	bne _0219E0AC
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r5, r0, #0
	add r0, r4, #0
	bl ovy181_219e0cc
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219DFE8
	mov r1, #2
	b _0219DFEA
_0219DFE8:
	mov r1, #3
_0219DFEA:
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	bl ovy181_21a0120
	add r0, r5, #0
	bl sub_02008BD4
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0
	mov r3, #5
	mov r5, #0
	bl ovy181_21a0160
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E01E
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	add r1, r5, #0
	b _0219E028
_0219E01E:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x14
_0219E028:
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	bl ovy181_21a0134
	mov r0, #3
	b _0219DFB4
_0219E036:
	add r0, r4, #0
	bl ovy181_219e178
	b _0219E0AC
_0219E03E:
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	mov r5, #1
	bl ovy181_219fe70
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219E05E
	add r1, r5, #0
	b _0219E060
_0219E05E:
	mov r1, #0x15
_0219E060:
	bl ovy181_21a0028
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl sub_021A0380
	ldr r0, [r4, #0x7c]
	mov r1, #0xf
	bl sub_0204C488
	mov r0, #5
	b _0219DFB4
_0219E078:
	mov r0, #1
	str r0, [r4, #0x30]
	b _0219E07E
_0219E07E:
	mov r0, #6
	b _0219DFB4
_0219E082:
	ldr r0, _0219E0C0 ; =0x021a4780
	mov r5, #0
	str r5, [r0, #8]
	ldr r0, _0219E0C4 ; =0x0219E381
	bl sub_02175578
	str r5, [r4, #0x1c]
	mov r0, #7
	b _0219DFB4
_0219E094:
	ldr r0, _0219E0C0 ; =0x021a4780
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0219E0AC
	mov r0, #0
	mov r1, #0
	bl sub_0203D2BC
	bl sub_02175164
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219E0AC:
	bl sub_020810FC
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203E7F8
	bl sub_0203E838
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E0C0: .word 0x021a4780
_0219E0C4: .word 0x0219E381
_0219E0C8: .word ovy181_219e418
	thumb_func_end ovy181_219defc

	thumb_func_start ovy181_219e0cc
ovy181_219e0cc: ; 0x0219E0CC
	push {r4, r5, lr}
	sub sp, #0x54
	add r5, r0, #0
	ldr r0, _0219E168 ; =0x021A42A8
	ldr r4, _0219E16C ; =0x021A4188
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _0219E170 ; =0x021A42B0
	add r3, sp, #0x18
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0219E174 ; =0x021A42A0
	mov r2, #7
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #4]
_0219E0F6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219E0F6
	ldr r0, [r4]
	str r0, [r3]
	bl sub_02175030
	add r1, r5, #0
	add r4, r0, #0
	add r0, sp, #0x18
	add r1, #0x80
	mov r2, #0x3c
	blx MI_CpuCopy8
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E122
	ldr r1, [sp, #0x10]
	b _0219E124
_0219E122:
	ldr r1, [sp, #0x14]
_0219E124:
	add r0, r5, #0
	add r0, #0x80
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0xc]
	add r0, #0x8c
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #4]
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	mov r2, #1
	ldr r1, [r5, #0x50]
	add r0, #0x84
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x54]
	add r0, #0x88
	str r1, [r0]
	mov r1, #0x4e
	mov r0, #0x5d
	lsl r1, r1, #6
	lsl r2, r2, #0x10
	bl ovy181_219eec8
	add r5, #0x80
	add r0, r5, #0
	add r1, r4, #0
	bl ovy181_219ef94
	add sp, #0x54
	pop {r4, r5, pc}
	nop
_0219E168: .word 0x021A42A8
_0219E16C: .word 0x021A4188
_0219E170: .word 0x021A42B0
_0219E174: .word 0x021A42A0
	thumb_func_end ovy181_219e0cc

	thumb_func_start ovy181_219e178
ovy181_219e178: ; 0x0219E178
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0219F4C0
	bl sub_0219F4C0
	cmp r0, #7
	bhi _0219E20C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E194: ; jump table
	.short _0219E204 - _0219E194 - 2 ; case 0
	.short _0219E20C - _0219E194 - 2 ; case 1
	.short _0219E1A4 - _0219E194 - 2 ; case 2
	.short _0219E20C - _0219E194 - 2 ; case 3
	.short _0219E20C - _0219E194 - 2 ; case 4
	.short _0219E1FA - _0219E194 - 2 ; case 5
	.short _0219E20C - _0219E194 - 2 ; case 6
	.short _0219E1FE - _0219E194 - 2 ; case 7
_0219E1A4:
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E20C
	ldr r0, _0219E370 ; =0x021A4040
	bl sub_0203DA0C
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	beq _0219E1CC
	cmp r5, #0
	bne _0219E1EC
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E1EC
_0219E1CC:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	ldr r0, [r4, #0x7c]
	mov r1, #9
	bl sub_0204C488
	ldr r0, [r4, #0x7c]
	mov r1, #1
	bl sub_0204C520
	ldr r0, _0219E374 ; =0x00000551
	bl GFL_SndSEPlay
	b _0219E20C
_0219E1EC:
	bl ovy181_219f1bc
	cmp r0, #0
	beq _0219E20C
	bl ovy181_219f1f8
	b _0219E20C
_0219E1FA:
	mov r1, #4
	b _0219E206
_0219E1FE:
	bl ovy181_219f278
	b _0219E20C
_0219E204:
	mov r1, #8
_0219E206:
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
_0219E20C:
	add r0, r4, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _0219E220
	cmp r0, #2
	beq _0219E268
	cmp r0, #3
	beq _0219E294
	pop {r3, r4, r5, pc}
_0219E220:
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x7c]
	mov r1, #0xf
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219E24C
	mov r1, #7
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #9
	b _0219E25C
_0219E24C:
	mov r1, #5
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x2a
_0219E25C:
	bl ovy181_219ff4c
	mov r0, #2
	add r4, #0x26
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E268:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219E36C
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219E286
	mov r1, #0
	bl ovy181_21a0178
	b _0219E28C
_0219E286:
	mov r1, #0
	bl ovy181_21a022c
_0219E28C:
	mov r0, #3
	add r4, #0x26
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E294:
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219E2A6
	bl ovy181_21a0210
	b _0219E2AA
_0219E2A6:
	bl ovy181_21a0274
_0219E2AA:
	cmp r0, #1
	bne _0219E2DA
	bl sub_0219F4C0
	cmp r0, #2
	beq _0219E2C6
	bl sub_0219F4C0
	add r3, r0, #0
	ldr r0, _0219E378 ; =0x021A4348
	ldr r2, _0219E37C ; =0x021A4364
	mov r1, #0
	bl sub_0203CB94
_0219E2C6:
	add r0, r4, #0
	mov r1, #4
	mov r5, #4
	bl ovy181_219e38c
	bl ovy181_219f278
	add r4, #0x26
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_0219E2DA:
	cmp r0, #2
	bne _0219E36C
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219E2FA
	bl ovy181_21a0200
	b _0219E2FE
_0219E2FA:
	bl sub_021A026C
_0219E2FE:
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x68]
	bne _0219E314
	mov r1, #2
	b _0219E316
_0219E314:
	mov r1, #3
_0219E316:
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	bl ovy181_21a0120
	add r0, r5, #0
	bl sub_02008BD4
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0
	mov r3, #5
	mov r5, #0
	bl ovy181_21a0160
	ldr r0, [r4, #0x7c]
	mov r1, #1
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E352
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	add r1, r5, #0
	b _0219E35C
_0219E352:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x14
_0219E35C:
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	bl ovy181_21a0134
	mov r0, #0
	add r4, #0x26
	strb r0, [r4]
_0219E36C:
	pop {r3, r4, r5, pc}
	nop
_0219E370: .word 0x021A4040
_0219E374: .word 0x00000551
_0219E378: .word 0x021A4348
_0219E37C: .word 0x021A4364
	thumb_func_end ovy181_219e178
_0219E380:
	.byte 0x01, 0x49, 0x01, 0x20, 0x88, 0x60, 0x70, 0x47, 0x80, 0x47, 0x1A, 0x02

	thumb_func_start ovy181_219e38c
ovy181_219e38c: ; 0x0219E38C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x28
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #0
	bne _0219E414
	ldr r0, [r4, #0x4c]
	bl sub_0200C8EC
	mov r1, #0
	cmp r5, #4
	bhi _0219E408
	add r2, r5, r5
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219E3B2: ; jump table
	.short _0219E3BC - _0219E3B2 - 2 ; case 0
	.short _0219E3CA - _0219E3B2 - 2 ; case 1
	.short _0219E3D4 - _0219E3B2 - 2 ; case 2
	.short _0219E3E6 - _0219E3B2 - 2 ; case 3
	.short _0219E3F2 - _0219E3B2 - 2 ; case 4
_0219E3BC:
	cmp r0, #1
	beq _0219E408
	cmp r0, #3
	beq _0219E408
	cmp r0, #5
	beq _0219E408
	b _0219E406
_0219E3CA:
	cmp r0, #3
	beq _0219E408
	cmp r0, #5
	beq _0219E408
	b _0219E406
_0219E3D4:
	cmp r0, #0
	beq _0219E408
	cmp r0, #1
	beq _0219E408
	cmp r0, #3
	beq _0219E408
	cmp r0, #5
	beq _0219E408
	b _0219E406
_0219E3E6:
	ldrh r0, [r4, #0x3c]
	mov r1, #1
	cmp r0, #0
	beq _0219E408
	mov r5, #5
	b _0219E408
_0219E3F2:
	cmp r0, #2
	beq _0219E408
	cmp r0, #0
	beq _0219E408
	cmp r0, #1
	beq _0219E408
	cmp r0, #3
	beq _0219E408
	cmp r0, #5
	beq _0219E408
_0219E406:
	mov r1, #1
_0219E408:
	cmp r1, #1
	bne _0219E414
	ldr r0, [r4, #0x4c]
	add r1, r5, #0
	bl sub_0200C8F8
_0219E414:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy181_219e38c

	thumb_func_start ovy181_219e418
ovy181_219e418: ; 0x0219E418
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0219F574
	cmp r0, #1
	bne _0219E428
	bl ovy181_219f278
_0219E428:
	mov r4, #1
	b _0219E434
_0219E42C:
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02079BB0
_0219E434:
	bl sub_0219F4C0
	cmp r0, #0
	beq _0219E444
	bl sub_0219F4C0
	cmp r0, #5
	bne _0219E42C
_0219E444:
	ldr r0, [r5, #0x1c]
	cmp r0, #1
	bne _0219E488
	ldr r0, _0219E48C ; =0x021a4780
	mov r1, #0
	ldr r5, _0219E490 ; =0x0219E381
	str r1, [r0, #8]
	add r0, r5, #0
	bl sub_02175578
	cmp r0, #0
	beq _0219E470
	mov r4, #1
_0219E45E:
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02079BB0
	add r0, r5, #0
	bl sub_02175578
	cmp r0, #0
	bne _0219E45E
_0219E470:
	ldr r5, _0219E48C ; =0x021a4780
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0219E488
	mov r4, #1
_0219E47A:
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02079BB0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0219E47A
_0219E488:
	pop {r3, r4, r5, pc}
	nop
_0219E48C: .word 0x021a4780
_0219E490: .word 0x0219E381
	thumb_func_end ovy181_219e418

	thumb_func_start ovy181_219e494
ovy181_219e494: ; 0x0219E494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0219F980
	add r6, r0, #0
	ldr r0, [r5, #0x68]
	mov r1, #6
	bl ovy181_21a0028
	ldr r0, [r5, #0x68]
	mov r1, #1
	bl sub_021A0380
	add r0, r5, #0
	bl ovy181_219e508
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E504
	ldr r0, [r5, #0x4c]
	bl sub_0200C8CC
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [r5, #0xc]
	bl sub_0219F99C
	add r4, r0, #0
	cmp r7, r4
	bhs _0219E4E4
	ldr r0, [r5, #0x4c]
	add r1, r4, #0
	bl sub_0200C8D4
	add r0, r5, #0
	mov r1, #1
	b _0219E4F2
_0219E4E4:
	cmp r6, #0
	bne _0219E4EE
	add r0, r5, #0
	mov r1, #2
	b _0219E4F2
_0219E4EE:
	add r0, r5, #0
	mov r1, #0
_0219E4F2:
	bl ovy181_219e38c
	ldrh r0, [r5, #0x38]
	cmp r0, r4
	bhs _0219E4FE
	strh r4, [r5, #0x38]
_0219E4FE:
	ldrh r0, [r5, #0x3c]
	add r0, r0, r6
	strh r0, [r5, #0x3c]
_0219E504:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy181_219e494

	thumb_func_start ovy181_219e508
ovy181_219e508: ; 0x0219E508
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	bl sub_02017364
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	bl sub_0200D190
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl sub_0219F980
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E556
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	bl sub_02017994
	ldr r2, [sp]
	mov r1, #7
	add r4, r0, #0
	bl sub_0200955C
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0x54
	bl sub_0200955C
	mov r0, #0x1f
	bl sub_02038BC8
_0219E556:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	bls _0219E5A8
_0219E55E:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ovy181_219f988
	add r6, r0, #0
	bl sub_02035A5C
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_02007794
	add r7, r0, #0
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_0201C358
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0200D568
	add r0, r6, #0
	bl sub_0203A24C
	cmp r7, #1
	beq _0219E59C
	ldr r0, _0219E5AC ; =0x021A4348
	ldr r2, _0219E5B0 ; =0x021A438C
	mov r1, #0
	bl sub_0203CB94
_0219E59C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	cmp r4, r0
	blo _0219E55E
_0219E5A8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E5AC: .word 0x021A4348
_0219E5B0: .word 0x021A438C
	thumb_func_end ovy181_219e508

	thumb_func_start sub_0219E5B4
sub_0219E5B4: ; 0x0219E5B4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E5B4

	thumb_func_start ovy181_219e5b8
ovy181_219e5b8: ; 0x0219E5B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x24
	ldrb r0, [r0]
	sub r0, #9
	cmp r0, #0xd
	bhi _0219E60C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E5D2: ; jump table
	.short _0219E5EE - _0219E5D2 - 2 ; case 0
	.short _0219E62C - _0219E5D2 - 2 ; case 1
	.short _0219E63E - _0219E5D2 - 2 ; case 2
	.short _0219E64E - _0219E5D2 - 2 ; case 3
	.short _0219E662 - _0219E5D2 - 2 ; case 4
	.short _0219E722 - _0219E5D2 - 2 ; case 5
	.short _0219E722 - _0219E5D2 - 2 ; case 6
	.short _0219E6CC - _0219E5D2 - 2 ; case 7
	.short _0219E6F4 - _0219E5D2 - 2 ; case 8
	.short _0219E722 - _0219E5D2 - 2 ; case 9
	.short _0219E714 - _0219E5D2 - 2 ; case 10
	.short _0219E682 - _0219E5D2 - 2 ; case 11
	.short _0219E6A2 - _0219E5D2 - 2 ; case 12
	.short _0219E6B6 - _0219E5D2 - 2 ; case 13
_0219E5EE:
	ldr r0, [r4, #0x68]
	bl sub_021A0350
	cmp r0, #1
	bne _0219E60C
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219E60C
	ldr r0, [r4, #0xc]
	bl sub_0219F894
	cmp r0, #1
	beq _0219E60E
_0219E60C:
	b _0219E722
_0219E60E:
	mov r0, #0x14
	bl sub_02005748
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, #0xa
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219E722
	mov r0, #0xa
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E62C:
	ldr r0, [r4, #0xc]
	bl sub_0219F8B4
	cmp r0, #1
	bne _0219E722
	mov r0, #0xb
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E63E:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0201782C
	mov r0, #0xc
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E64E:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017850
	cmp r0, #1
	bne _0219E722
	mov r0, #0xd
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E662:
	ldr r0, [r4, #0xc]
	bl sub_0219F89C
	cmp r0, #1
	bne _0219E722
	mov r0, #0x14
	mov r5, #0x14
	bl sub_02005748
	add r1, r4, #0
	add r4, #0x24
	add r0, #0xa
	add r1, #0x27
	strb r0, [r1]
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_0219E682:
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x27
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E722
	mov r0, #0x15
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E6A2:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017850
	cmp r0, #2
	bne _0219E722
	mov r0, #0x16
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E6B6:
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219E6CC
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x24
	strb r1, [r0]
_0219E6CC:
	ldr r0, [r4, #0xc]
	bl sub_0219F8A4
	cmp r0, #1
	bne _0219E722
	ldr r0, [r4, #0xc]
	mov r1, #3
	mov r2, #0
	mov r5, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219E722
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0x24
	add r4, #0x27
	strb r1, [r0]
	strb r5, [r4]
	pop {r3, r4, r5, pc}
_0219E6F4:
	ldr r0, [r4, #0xc]
	bl sub_0219F8AC
	cmp r0, #1
	bne _0219E722
	ldr r0, [r4, #0xc]
	mov r1, #4
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219E722
	mov r0, #0x13
	add r4, #0x24
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0219E714:
	ldr r0, [r4, #0xc]
	bl sub_0219F8BC
	cmp r0, #1
	bne _0219E722
	mov r0, #0x16
	str r0, [r4, #0x20]
_0219E722:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy181_219e5b8

	thumb_func_start ovy181_219e724
ovy181_219e724: ; 0x0219E724
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #0x19
	bls _0219E732
	b _0219ED4A
_0219E732:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E73E: ; jump table
	.short _0219E772 - _0219E73E - 2 ; case 0
	.short _0219E83A - _0219E73E - 2 ; case 1
	.short _0219E854 - _0219E73E - 2 ; case 2
	.short _0219E8A8 - _0219E73E - 2 ; case 3
	.short _0219E906 - _0219E73E - 2 ; case 4
	.short _0219E918 - _0219E73E - 2 ; case 5
	.short _0219E94E - _0219E73E - 2 ; case 6
	.short _0219E968 - _0219E73E - 2 ; case 7
	.short _0219E9A6 - _0219E73E - 2 ; case 8
	.short _0219E9C2 - _0219E73E - 2 ; case 9
	.short _0219E9E0 - _0219E73E - 2 ; case 10
	.short _0219E9F6 - _0219E73E - 2 ; case 11
	.short _0219EA10 - _0219E73E - 2 ; case 12
	.short _0219EA32 - _0219E73E - 2 ; case 13
	.short _0219EA96 - _0219E73E - 2 ; case 14
	.short _0219EB0C - _0219E73E - 2 ; case 15
	.short _0219EB28 - _0219E73E - 2 ; case 16
	.short _0219EB3A - _0219E73E - 2 ; case 17
	.short _0219EB5E - _0219E73E - 2 ; case 18
	.short _0219EB70 - _0219E73E - 2 ; case 19
	.short _0219EBB0 - _0219E73E - 2 ; case 20
	.short _0219EBCC - _0219E73E - 2 ; case 21
	.short _0219EC42 - _0219E73E - 2 ; case 22
	.short _0219EC54 - _0219E73E - 2 ; case 23
	.short _0219ECDC - _0219E73E - 2 ; case 24
	.short _0219ECEE - _0219E73E - 2 ; case 25
_0219E772:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xa
	beq _0219E786
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xc
	bne _0219E7A6
_0219E786:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x29
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	ldr r0, [r4, #0xc]
	bl ovy181_219f7d8
	mov r0, #0x1b
	str r0, [r4, #0x20]
_0219E7A6:
	ldr r0, [r4, #0xc]
	bl sub_0219F810
	cmp r0, #0xb
	bne _0219E7D0
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x2c
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	ldr r0, [r4, #0xc]
	bl ovy181_219f7d8
	mov r0, #0x1b
	str r0, [r4, #0x20]
_0219E7D0:
	ldr r0, [r4, #0xc]
	bl sub_0219F8C4
	cmp r0, #1
	bne _0219E89E
	ldr r0, [r4, #0xc]
	bl sub_0219F8CC
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0219F8D4
	add r6, r0, #0
	cmp r5, #0
	beq _0219E832
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	bl ovy181_21a0120
	ldr r0, [r4, #0x68]
	mov r1, #0
	add r2, r5, r6
	mov r3, #3
	bl ovy181_21a0148
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x16
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	mov r5, #1
	bl ovy181_21a036c
	ldr r0, [r4, #0x68]
	bl ovy181_21a0134
	add r4, #0x25
	strb r5, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E832:
	mov r0, #0x13
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E83A:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219E89E
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a022c
	mov r0, #2
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E854:
	ldr r0, [r4, #0x68]
	bl ovy181_21a0274
	str r0, [r4, #0x34]
	cmp r0, #1
	bne _0219E89A
	ldr r0, [r4, #0xc]
	bl sub_0219F8CC
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017364
	bl sub_02007A38
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #0x68]
	bl sub_021A026C
	cmp r5, r6
	bhs _0219E88E
	mov r0, #1
	str r0, [r4, #0x40]
	mov r0, #0xd
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E88E:
	mov r0, #0
	str r0, [r4, #0x40]
	mov r0, #3
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E89A:
	cmp r0, #2
	beq _0219E8A0
_0219E89E:
	b _0219ED4A
_0219E8A0:
	mov r0, #0xd
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E8A8:
	ldr r0, [r4, #0xc]
	bl sub_0219F8D4
	cmp r0, #0
	beq _0219E8FE
	ldr r0, [r4, #0xc]
	bl sub_0219F8CC
	add r5, r0, #0
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	bl ovy181_21a0120
	ldr r0, [r4, #0x68]
	mov r1, #0
	add r2, r5, #0
	mov r3, #3
	bl ovy181_21a0148
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x24
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	ldr r0, [r4, #0x68]
	bl ovy181_21a0134
	mov r0, #4
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E8FE:
	mov r0, #5
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E906:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219E9B0
	mov r0, #5
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E918:
	ldr r0, [r4, #0xc]
	bl sub_0219F8E8
	cmp r0, #1
	bne _0219E946
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x1a
	bl ovy181_219ff4c
	mov r0, #6
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E946:
	mov r0, #0xd
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E94E:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219E9B0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a022c
	mov r0, #7
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E968:
	ldr r0, [r4, #0x68]
	bl ovy181_21a0274
	cmp r0, #1
	bne _0219E99A
	ldr r0, [r4, #0xc]
	bl sub_0219F8FC
	cmp r0, #1
	bne _0219E992
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x1b
	bl ovy181_219ff4c
	mov r0, #8
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E992:
	mov r0, #0xd
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E99A:
	cmp r0, #2
	bne _0219E9B0
	mov r0, #0xa
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E9A6:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	beq _0219E9B2
_0219E9B0:
	b _0219ED4A
_0219E9B2:
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a022c
	mov r0, #9
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E9C2:
	ldr r0, [r4, #0x68]
	bl ovy181_21a0274
	cmp r0, #1
	bne _0219E9D4
	mov r0, #0xd
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E9D4:
	cmp r0, #2
	bne _0219EAB8
	mov r0, #0xa
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E9E0:
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x1c
	bl ovy181_219ff4c
	mov r0, #0xb
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E9F6:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219EAB8
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a022c
	mov r0, #0xc
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EA10:
	ldr r0, [r4, #0x68]
	bl ovy181_21a0274
	cmp r0, #1
	bne _0219EA26
	mov r0, #2
	str r0, [r4, #0x34]
	mov r0, #0xd
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EA26:
	cmp r0, #2
	bne _0219EAB8
	mov r0, #5
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EA32:
	ldr r0, [r4, #0x34]
	cmp r0, #1
	bne _0219EA46
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _0219EA42
	mov r5, #2
	b _0219EA48
_0219EA42:
	mov r5, #0
	b _0219EA48
_0219EA46:
	mov r5, #1
_0219EA48:
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	add r2, r5, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219EAB8
	cmp r5, #0
	bne _0219EA82
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	mov r1, #0x19
	bl ovy181_21a0028
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl sub_021A0380
	pop {r3, r4, r5, r6, r7, pc}
_0219EA82:
	cmp r5, #2
	bne _0219EA8E
	mov r0, #0x11
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EA8E:
	mov r0, #0x13
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EA96:
	ldr r0, [r4, #0xc]
	bl sub_0219F970
	cmp r0, #1
	bne _0219EAAE
	add r0, r4, #0
	bl ovy181_219e508
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x25
	strb r1, [r0]
_0219EAAE:
	ldr r0, [r4, #0xc]
	bl sub_0219F910
	cmp r0, #1
	beq _0219EABA
_0219EAB8:
	b _0219ED4A
_0219EABA:
	ldr r0, [r4, #0xc]
	bl sub_0219F8CC
	add r5, r0, #0
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	mov r6, #1
	bl ovy181_219fe70
	ldr r0, [r4, #0x68]
	bl ovy181_21a0120
	ldr r0, [r4, #0x68]
	mov r1, #0
	add r2, r5, #0
	mov r3, #3
	bl ovy181_21a0148
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x1e
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	ldr r0, [r4, #0x68]
	bl ovy181_21a0134
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x25
	strb r1, [r0]
	str r6, [r4, #0x44]
	pop {r3, r4, r5, r6, r7, pc}
_0219EB0C:
	ldr r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219EBDA
	ldr r0, [r4, #0xc]
	bl ovy181_219f938
	mov r0, #0xe
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EB28:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219EBDA
	mov r0, #0x13
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EB3A:
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x18
	bl ovy181_219ff4c
	mov r0, #0x12
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EB5E:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219EBDA
	mov r0, #0x13
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EB70:
	ldr r0, [r4, #0xc]
	bl sub_0219F918
	cmp r0, #1
	bne _0219EBDA
	ldr r0, [r4, #0xc]
	bl sub_0219F920
	cmp r0, #1
	bne _0219EBA8
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x1f
	bl ovy181_219ff4c
	mov r0, #0x14
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EBA8:
	mov r0, #0x19
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EBB0:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219EBDA
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a022c
	pop {r3, r4, r5, r6, r7, pc}
_0219EBCC:
	ldr r0, [r4, #0x68]
	bl ovy181_21a0274
	add r5, r0, #0
	sub r0, r5, #1
	cmp r0, #1
	bls _0219EBDC
_0219EBDA:
	b _0219ED4A
_0219EBDC:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017354
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl PlayerSave_GetPlayerSaveOffset
	cmp r5, #1
	bne _0219EC38
	mov r1, #0
	add r2, r6, #0
	bl ovy12_21659b4
	cmp r0, #1
	bne _0219EC38
	mov r0, #2
	str r0, [r4, #0x34]
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x25
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	pop {r3, r4, r5, r6, r7, pc}
_0219EC38:
	str r5, [r4, #0x34]
	mov r0, #0x17
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EC42:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219ED4A
	mov r0, #0x17
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219EC54:
	ldr r0, [r4, #0x34]
	mov r5, #1
	cmp r0, #1
	beq _0219EC5E
	mov r5, #0
_0219EC5E:
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	add r2, r5, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219ED4A
	cmp r5, #1
	bne _0219ECD4
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_02017354
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl PlayerSave_GetPlayerSaveOffset
	add r7, r0, #0
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x21
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0216598C
	ldrh r3, [r4]
	ldr r1, _0219ED4C ; =0x00000215
	add r0, r5, #0
	mov r2, #1
	bl sub_02008268
	mov r0, #1
	str r0, [r4, #0x48]
	mov r0, #0x18
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219ECD4:
	mov r0, #0x19
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219ECDC:
	ldr r0, [r4, #0x68]
	bl sub_021A035C
	cmp r0, #1
	bne _0219ED4A
	mov r0, #0x19
	add r4, #0x25
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219ECEE:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	beq _0219ECFA
	ldr r0, [r4, #0x48]
	cmp r0, #1
	bne _0219ED0E
_0219ECFA:
	ldr r0, [r4, #0xc]
	mov r1, #0x11
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219ED4A
	mov r0, #0x13
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
_0219ED0E:
	ldr r0, [r4, #0xc]
	bl sub_0219F8CC
	cmp r0, #0
	bne _0219ED46
	ldr r0, [r4, #0xc]
	bl sub_0219F920
	cmp r0, #0
	bne _0219ED46
	ldr r0, [r4, #0x68]
	bl ovy181_21a00e0
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_219fe70
	bl sub_02017BCC
	add r2, r0, #0
	ldr r0, [r4, #0x68]
	mov r1, #0x28
	bl ovy181_219ff4c
	ldr r0, [r4, #0x68]
	mov r1, #1
	bl ovy181_21a036c
_0219ED46:
	mov r0, #0x1b
	str r0, [r4, #0x20]
_0219ED4A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED4C: .word 0x00000215
	thumb_func_end ovy181_219e724

	thumb_func_start ovy181_219ed50
ovy181_219ed50: ; 0x0219ED50
	push {r3, lr}
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _0219ED78 ; =0x021a4780
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _0219ED6A
	mov r0, #4
	b _0219ED6C
_0219ED6A:
	mov r0, #2
_0219ED6C:
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	pop {r3, pc}
	nop
_0219ED78: .word 0x021a4780
	thumb_func_end ovy181_219ed50

	thumb_func_start ovy181_219ed7c
ovy181_219ed7c: ; 0x0219ED7C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r2, #0
	bl sub_020427A4
	cmp r0, #0
	bne _0219ED8E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219ED8E:
	mov r2, #0x13
	mov r0, #1
	mov r1, #0x5d
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0xbc
	mov r2, #0x5d
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	cmp r5, #0
	bne _0219EDDA
	ldr r0, _0219EE00 ; =0x00000B1B
	ldr r3, _0219EE04 ; =0x021A4354
	str r0, [sp]
	mov r0, #0x5d
	mov r6, #8
	mov r1, #8
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	bl sub_0203DF20
	add r6, #0xf8
	tst r0, r6
	beq _0219EDCE
	strb r7, [r5]
	b _0219EDDA
_0219EDCE:
	mov r0, #0
	strb r0, [r5]
	mov r0, #0x5d
	bl sub_02016EE8
	str r0, [r5, #4]
_0219EDDA:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0219EDE8
	mov r0, #0x5d
	bl sub_02016EE8
	str r0, [r5, #4]
_0219EDE8:
	mov r0, #0x5d
	strh r0, [r4]
	str r5, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ovy181_219ce80
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EE00: .word 0x00000B1B
_0219EE04: .word 0x021A4354
	thumb_func_end ovy181_219ed7c

	thumb_func_start ovy181_219ee08
ovy181_219ee08: ; 0x0219EE08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r3, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r2, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	mov r4, #0
	ldrb r0, [r0]
	ldr r6, [r5, #0x18]
	ldr r7, [r5, #0x14]
	cmp r0, #1
	bne _0219EE26
	mov r4, #1
_0219EE26:
	add r0, r5, #0
	bl ovy181_219cf64
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0219EE38
	ldr r0, [r5, #8]
	ldr r0, [r0, #4]
	b _0219EE42
_0219EE38:
	ldr r1, [r5, #8]
	ldrb r0, [r1]
	cmp r0, #1
	bne _0219EE4C
	ldr r0, [r1, #4]
_0219EE42:
	bl sub_02017144
	ldr r0, [r5, #8]
	bl sub_0203A24C
_0219EE4C:
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x5d
	bl sub_0203A1D0
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0219EE82
	cmp r4, #0
	beq _0219EE74
	cmp r6, #1
	beq _0219EE6E
	bl sub_020120C8
	cmp r0, #1
	bne _0219EE70
_0219EE6E:
	b _0219EE78
_0219EE70:
	mov r0, #0
	b _0219EE7E
_0219EE74:
	cmp r6, #1
	bne _0219EE82
_0219EE78:
	bl sub_02012154
	mov r0, #1
_0219EE7E:
	bl sub_02011CFC
_0219EE82:
	cmp r7, #1
	bne _0219EE8A
	bl sub_02011DE0
_0219EE8A:
	cmp r4, #1
	bne _0219EE94
	mov r0, #0
	bl sub_0203D4F8
_0219EE94:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy181_219ee08

	thumb_func_start ovy181_219ee9c
ovy181_219ee9c: ; 0x0219EE9C
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ovy181_219cfd4
	cmp r0, #1
	bne _0219EEAE
	mov r0, #1
	pop {r4, pc}
_0219EEAE:
	bl sub_020120C8
	cmp r0, #0
	beq _0219EEC4
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0219EEC4
	bl sub_020120DC
	mov r0, #1
	str r0, [r4, #0x10]
_0219EEC4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy181_219ee9c

	thumb_func_start ovy181_219eec8
ovy181_219eec8: ; 0x0219EEC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r0, #0
	add r0, sp, #0x2c
	add r0, #2
	add r6, r1, #0
	add r7, r2, #0
	bl OS_GetOwnerInfoEx
	add r4, sp, #4
	ldrb r0, [r4, #0x14]
	mov r1, #0xf
	bic r0, r1
	add r1, sp, #0x2c
	add r1, #2
	ldrb r2, [r1, #1]
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #0x14]
	add r0, sp, #0x2c
	add r0, #2
	ldrh r2, [r0, #0x1a]
	add r0, sp, #0x30
	add r1, sp, #0x18
	strb r2, [r4, #0x15]
	add r0, #2
	add r1, #2
	lsl r2, r2, #1
	blx MI_CpuCopy8
	ldr r2, _0219EF78 ; =0x021A43AC
	mov r0, #0xf0
	strh r5, [r2]
	ldrb r1, [r4, #0x14]
	mov r5, #0
	ldr r3, _0219EF7C ; =0x021A4794
	bic r1, r0
	strb r1, [r4, #0x14]
	add r4, sp, #4
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0xb1
	str r0, [r3]
	ldrh r0, [r2]
	ldr r2, _0219EF80 ; =0x021A4650
	lsl r1, r1, #8
	mov r3, #0xa0
	bl sub_02042EA4
	ldr r1, _0219EF84 ; =0x021A478C
	add r2, r6, #0
	str r0, [r1, #4]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r1, #4]
	add r1, sp, #0x18
	add r3, r7, #0
	bl ovy181_21a33bc
	cmp r0, #0
	beq _0219EF5E
	ldr r0, _0219EF88 ; =0x021A4658
	ldr r2, _0219EF8C ; =0x021A465C
	add r1, r5, #0
	bl sub_0203CB94
_0219EF5E:
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #1
	bl ovy181_21a355c
	ldr r0, _0219EF90 ; =ovy181_219f2c0
	bl ovy181_21a092c
	mov r0, #1
	bl sub_0219F4B4
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219EF78: .word 0x021A43AC
_0219EF7C: .word 0x021A4794
_0219EF80: .word 0x021A4650
_0219EF84: .word 0x021A478C
_0219EF88: .word 0x021A4658
_0219EF8C: .word 0x021A465C
_0219EF90: .word ovy181_219f2c0
	thumb_func_end ovy181_219eec8

	thumb_func_start ovy181_219ef94
ovy181_219ef94: ; 0x0219EF94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #2
	bl sub_0219F4B4
	add r0, r5, #0
	bl sub_021A3794
	cmp r0, #0
	beq _0219EFB2
	mov r0, #7
	bl sub_0219F4B4
	pop {r3, r4, r5, pc}
_0219EFB2:
	ldr r0, _0219EFD0 ; =0x021A478C
	mov r1, #1
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl ovy181_219efdc
	cmp r0, #0
	bne _0219EFCC
	ldr r0, _0219EFD4 ; =0x021A4658
	ldr r2, _0219EFD8 ; =0x021A4670
	mov r1, #0
	bl sub_0203CB94
_0219EFCC:
	pop {r3, r4, r5, pc}
	nop
_0219EFD0: .word 0x021A478C
_0219EFD4: .word 0x021A4658
_0219EFD8: .word 0x021A4670
	thumb_func_end ovy181_219ef94

	thumb_func_start ovy181_219efdc
ovy181_219efdc: ; 0x0219EFDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r0, #0
	ldr r0, [r6]
	mov r5, #0
	cmp r0, #0
	bne _0219EFEE
	add r4, r5, #0
	b _0219F008
_0219EFEE:
	add r4, sp, #4
	add r0, r4, #0
	bl FS_InitFile
	ldr r1, [r6]
	add r0, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	bne _0219F008
	add sp, #0x4c
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_0219F008:
	add r0, r4, #0
	bl ovy181_21a1698
	cmp r0, #0
	beq _0219F056
	ldr r0, _0219F068 ; =0x00000121
	mov r1, #1
	str r0, [sp]
	ldr r0, _0219F06C ; =0x021A43AC
	ldr r3, _0219F070 ; =0x021A4650
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	mov r2, #1
	bl sub_0203A1FC
	ldr r7, _0219F074 ; =0x021A478C
	add r1, r0, #0
	str r1, [r7]
	beq _0219F056
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0x10
	bl ovy181_21a16f0
	cmp r0, #0
	beq _0219F04A
	ldr r1, [r7]
	add r0, r6, #0
	bl ovy181_21a1af4
	cmp r0, #0
	beq _0219F04A
	mov r5, #1
_0219F04A:
	cmp r5, #0
	bne _0219F056
	ldr r0, _0219F074 ; =0x021A478C
	ldr r0, [r0]
	bl sub_0203A24C
_0219F056:
	add r0, sp, #4
	cmp r4, r0
	bne _0219F060
	bl FS_CloseFile
_0219F060:
	add r0, r5, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0219F068: .word 0x00000121
_0219F06C: .word 0x021A43AC
_0219F070: .word 0x021A4650
_0219F074: .word 0x021A478C
	thumb_func_end ovy181_219efdc

	thumb_func_start ovy181_219f078
ovy181_219f078: ; 0x0219F078
	push {r3, r4, r5, lr}
	mov r1, #1
	add r5, r0, #0
	mov r4, #1
	bl ovy181_21a09d4
	cmp r0, #0
	bne _0219F0C6
	add r0, r4, #0
	lsl r0, r5
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	blx OS_DisableInterrupts
	ldr r1, _0219F0C8 ; =0x021A478C
	ldrh r2, [r1, #0xa]
	and r2, r4
	strh r2, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	and r2, r4
	strh r2, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	and r2, r4
	strh r2, [r1, #0xe]
	ldrh r2, [r1, #0x10]
	and r2, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	and r2, r4
	strh r2, [r1, #0x12]
	ldrh r2, [r1, #0x14]
	and r2, r4
	strh r2, [r1, #0x14]
	blx OS_RestoreInterrupts
	add r0, r5, #0
	bl ovy181_21a3874
_0219F0C6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F0C8: .word 0x021A478C
	thumb_func_end ovy181_219f078

	thumb_func_start ovy181_219f0cc
ovy181_219f0cc: ; 0x0219F0CC
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl ovy181_21a09d4
	cmp r0, #0
	bne _0219F11A
	mov r0, #1
	lsl r0, r5
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	blx OS_DisableInterrupts
	ldr r1, _0219F140 ; =0x021A478C
	ldrh r2, [r1, #0xa]
	and r2, r4
	strh r2, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	and r2, r4
	strh r2, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	and r2, r4
	strh r2, [r1, #0xe]
	ldrh r2, [r1, #0x10]
	and r2, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	and r2, r4
	strh r2, [r1, #0x12]
	ldrh r2, [r1, #0x14]
	and r2, r4
	strh r2, [r1, #0x14]
	blx OS_RestoreInterrupts
	add r0, r5, #0
	bl ovy181_21a3874
	pop {r3, r4, r5, pc}
_0219F11A:
	blx OS_DisableInterrupts
	mov r1, #1
	ldr r2, _0219F140 ; =0x021A478C
	lsl r1, r5
	mvn r1, r1
	lsl r1, r1, #0x10
	ldrh r4, [r2, #0xc]
	lsr r3, r1, #0x10
	add r1, r4, #0
	and r1, r3
	strh r1, [r2, #0xc]
	ldrh r1, [r2, #0xa]
	and r1, r3
	strh r1, [r2, #0xa]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	nop
_0219F140: .word 0x021A478C
	thumb_func_end ovy181_219f0cc

	thumb_func_start ovy181_219f144
ovy181_219f144: ; 0x0219F144
	push {r3, r4, r5, lr}
	mov r1, #2
	add r4, r0, #0
	bl ovy181_21a09d4
	cmp r0, #0
	bne _0219F192
	mov r0, #1
	lsl r0, r4
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	blx OS_DisableInterrupts
	ldr r1, _0219F1B8 ; =0x021A478C
	ldrh r2, [r1, #0xa]
	and r2, r5
	strh r2, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	and r2, r5
	strh r2, [r1, #0xc]
	ldrh r2, [r1, #0xe]
	and r2, r5
	strh r2, [r1, #0xe]
	ldrh r2, [r1, #0x10]
	and r2, r5
	strh r2, [r1, #0x10]
	ldrh r2, [r1, #0x12]
	and r2, r5
	strh r2, [r1, #0x12]
	ldrh r2, [r1, #0x14]
	and r2, r5
	strh r2, [r1, #0x14]
	blx OS_RestoreInterrupts
	add r0, r4, #0
	bl ovy181_21a3874
	pop {r3, r4, r5, pc}
_0219F192:
	blx OS_DisableInterrupts
	mov r1, #1
	lsl r1, r4
	mvn r2, r1
	ldr r3, _0219F1B8 ; =0x021A478C
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldrh r4, [r3, #0xe]
	lsr r2, r2, #0x10
	lsr r1, r1, #0x10
	and r2, r4
	strh r2, [r3, #0xe]
	ldrh r2, [r3, #0x10]
	orr r1, r2
	strh r1, [r3, #0x10]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F1B8: .word 0x021A478C
	thumb_func_end ovy181_219f144

	thumb_func_start ovy181_219f1bc
ovy181_219f1bc: ; 0x0219F1BC
	push {r4, r5, r6, lr}
	ldr r6, _0219F1F4 ; =0x021A478C
	ldrh r0, [r6, #0xa]
	cmp r0, #0
	bne _0219F1CA
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219F1CA:
	mov r5, #1
	add r4, r5, #0
_0219F1CE:
	add r0, r4, #0
	ldrh r1, [r6, #0xa]
	lsl r0, r5
	tst r0, r1
	beq _0219F1E6
	add r0, r5, #0
	bl ovy181_21a09a0
	cmp r0, #0
	bne _0219F1E6
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219F1E6:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x10
	blo _0219F1CE
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219F1F4: .word 0x021A478C
	thumb_func_end ovy181_219f1bc

	thumb_func_start ovy181_219f1f8
ovy181_219f1f8: ; 0x0219F1F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219F274 ; =0x021A478C
	mov r7, #0
	mov r6, #1
_0219F200:
	mov r5, #1
	ldrh r0, [r4, #0x12]
	lsl r5, r6
	tst r0, r5
	beq _0219F256
	add r0, r6, #0
	mov r1, #3
	bl ovy181_21a09d4
	cmp r0, #0
	bne _0219F250
	mvn r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	blx OS_DisableInterrupts
	ldrh r1, [r4, #0xa]
	and r1, r5
	strh r1, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	and r1, r5
	strh r1, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	and r1, r5
	strh r1, [r4, #0xe]
	ldrh r1, [r4, #0x10]
	and r1, r5
	strh r1, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	and r1, r5
	strh r1, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	and r1, r5
	strh r1, [r4, #0x14]
	blx OS_RestoreInterrupts
	add r0, r6, #0
	bl ovy181_21a3874
	b _0219F256
_0219F250:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	orr r7, r0
_0219F256:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x10
	blo _0219F200
	cmp r7, #0
	bne _0219F26C
	mov r0, #7
	bl sub_0219F4B4
	pop {r3, r4, r5, r6, r7, pc}
_0219F26C:
	mov r0, #4
	bl sub_0219F4B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F274: .word 0x021A478C
	thumb_func_end ovy181_219f1f8

	thumb_func_start ovy181_219f278
ovy181_219f278: ; 0x0219F278
	push {r3, lr}
	mov r0, #6
	bl sub_0219F4B4
	ldr r0, _0219F294 ; =0x021A478C
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _0219F290
	mov r1, #0
	str r1, [r0, #0x18]
	bl ovy181_21a3848
_0219F290:
	pop {r3, pc}
	nop
_0219F294: .word 0x021A478C
	thumb_func_end ovy181_219f278

	thumb_func_start ovy181_219f298
ovy181_219f298: ; 0x0219F298
	push {r3, lr}
	ldr r0, _0219F2BC ; =0x021A478C
	ldrh r1, [r0, #8]
	cmp r1, #4
	bne _0219F2B8
	ldrh r2, [r0, #0xa]
	ldrh r1, [r0, #0x14]
	cmp r2, r1
	bne _0219F2B8
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _0219F2B8
	mov r1, #0
	str r1, [r0, #0x18]
	bl ovy181_21a3848
_0219F2B8:
	pop {r3, pc}
	nop
_0219F2BC: .word 0x021A478C
	thumb_func_end ovy181_219f298

	thumb_func_start ovy181_219f2c0
ovy181_219f2c0: ; 0x0219F2C0
	push {r4, r5, r6, lr}
	ldr r4, _0219F488 ; =0x021A478C
	add r5, r0, #0
	add r6, r2, #0
	cmp r1, #0xe
	bls _0219F2CE
	b _0219F47C
_0219F2CE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219F2DA: ; jump table
	.short _0219F47C - _0219F2DA - 2 ; case 0
	.short _0219F486 - _0219F2DA - 2 ; case 1
	.short _0219F2F8 - _0219F2DA - 2 ; case 2
	.short _0219F346 - _0219F2DA - 2 ; case 3
	.short _0219F486 - _0219F2DA - 2 ; case 4
	.short _0219F486 - _0219F2DA - 2 ; case 5
	.short _0219F486 - _0219F2DA - 2 ; case 6
	.short _0219F3EC - _0219F2DA - 2 ; case 7
	.short _0219F486 - _0219F2DA - 2 ; case 8
	.short _0219F408 - _0219F2DA - 2 ; case 9
	.short _0219F38C - _0219F2DA - 2 ; case 10
	.short _0219F486 - _0219F2DA - 2 ; case 11
	.short _0219F428 - _0219F2DA - 2 ; case 12
	.short _0219F458 - _0219F2DA - 2 ; case 13
	.short _0219F3CC - _0219F2DA - 2 ; case 14
_0219F2F8:
	bl sub_0219F4C0
	cmp r0, #2
	bne _0219F34E
	blx OS_DisableInterrupts
	mov r2, #1
	lsl r2, r5
	lsl r2, r2, #0x10
	ldrh r1, [r4, #0xa]
	lsr r2, r2, #0x10
	orr r1, r2
	strh r1, [r4, #0xa]
	blx OS_RestoreInterrupts
	sub r1, r5, #1
	mov r0, #0x1e
	mul r0, r1
	ldrb r2, [r6, #0xa]
	ldr r1, _0219F48C ; =0x021A47BE
	strb r2, [r1, r0]
	ldrb r2, [r6, #0xb]
	ldr r1, _0219F490 ; =0x021A47BF
	strb r2, [r1, r0]
	ldrb r2, [r6, #0xc]
	ldr r1, _0219F494 ; =0x021A47C0
	strb r2, [r1, r0]
	ldrb r2, [r6, #0xd]
	ldr r1, _0219F498 ; =0x021A47C1
	strb r2, [r1, r0]
	ldrb r2, [r6, #0xe]
	ldr r1, _0219F49C ; =0x021A47C2
	strb r2, [r1, r0]
	ldrb r2, [r6, #0xf]
	ldr r1, _0219F4A0 ; =0x021A47C3
	strb r2, [r1, r0]
	ldr r1, _0219F4A4 ; =0x021A47C4
	strh r5, [r1, r0]
	pop {r4, r5, r6, pc}
_0219F346:
	bl ovy181_219f4cc
	cmp r0, #6
	bne _0219F350
_0219F34E:
	b _0219F486
_0219F350:
	mov r0, #1
	lsl r0, r5
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	blx OS_DisableInterrupts
	ldrh r1, [r4, #0xa]
	and r1, r5
	strh r1, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	and r1, r5
	strh r1, [r4, #0xc]
	ldrh r1, [r4, #0xe]
	and r1, r5
	strh r1, [r4, #0xe]
	ldrh r1, [r4, #0x10]
	and r1, r5
	strh r1, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	and r1, r5
	strh r1, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	and r1, r5
	strh r1, [r4, #0x14]
	blx OS_RestoreInterrupts
	bl ovy181_219f298
	pop {r4, r5, r6, pc}
_0219F38C:
	bl sub_0219F4C0
	cmp r0, #2
	beq _0219F39C
	add r0, r5, #0
	bl ovy181_219f0cc
	pop {r4, r5, r6, pc}
_0219F39C:
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x10
	ldrh r1, [r4, #0xc]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0xc]
	add r0, r5, #0
	bl ovy181_219f078
	add r0, r5, #0
	bl ovy181_21a094c
	cmp r0, #0
	beq _0219F486
	ldr r3, _0219F4A8 ; =0x021A47A8
	sub r2, r5, #1
	mov r1, #0x1e
	mul r1, r2
	add r1, r3, r1
	mov r2, #0x16
	blx MI_CpuCopy8
	pop {r4, r5, r6, pc}
_0219F3CC:
	mov r1, #1
	lsl r1, r5
	mvn r2, r1
	lsl r2, r2, #0x10
	ldrh r3, [r4, #0xc]
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	and r2, r3
	strh r2, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	lsr r1, r1, #0x10
	orr r1, r2
	strh r1, [r4, #0xe]
	bl ovy181_219f144
	pop {r4, r5, r6, pc}
_0219F3EC:
	mov r0, #1
	lsl r0, r5
	mvn r1, r0
	lsl r1, r1, #0x10
	ldrh r2, [r4, #0x10]
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	and r1, r2
	strh r1, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0219F408:
	mov r0, #1
	lsl r0, r5
	mvn r1, r0
	lsl r1, r1, #0x10
	ldrh r2, [r4, #0x12]
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	and r1, r2
	strh r1, [r4, #0x12]
	ldrh r1, [r4, #0x14]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0x14]
	bl ovy181_219f298
	pop {r4, r5, r6, pc}
_0219F428:
	bl sub_0219F4C0
	cmp r0, #4
	bne _0219F434
	mov r0, #5
	b _0219F436
_0219F434:
	mov r0, #0
_0219F436:
	bl sub_0219F4B4
	ldr r0, [r4]
	cmp r0, #0
	beq _0219F448
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
_0219F448:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219F486
	bl sub_02042ED0
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0219F458:
	ldrh r0, [r6]
	cmp r0, #8
	bgt _0219F470
	bge _0219F486
	cmp r0, #2
	bgt _0219F486
	cmp r0, #1
	blt _0219F486
	beq _0219F474
	cmp r0, #2
	beq _0219F474
	pop {r4, r5, r6, pc}
_0219F470:
	cmp r0, #9
	bne _0219F486
_0219F474:
	mov r0, #7
	bl sub_0219F4B4
	pop {r4, r5, r6, pc}
_0219F47C:
	ldr r0, _0219F4AC ; =0x021A4658
	ldr r2, _0219F4B0 ; =0x021A468C
	mov r1, #0
	bl sub_0203CB94
_0219F486:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219F488: .word 0x021A478C
_0219F48C: .word 0x021A47BE
_0219F490: .word 0x021A47BF
_0219F494: .word 0x021A47C0
_0219F498: .word 0x021A47C1
_0219F49C: .word 0x021A47C2
_0219F4A0: .word 0x021A47C3
_0219F4A4: .word 0x021A47C4
_0219F4A8: .word 0x021A47A8
_0219F4AC: .word 0x021A4658
_0219F4B0: .word 0x021A468C
	thumb_func_end ovy181_219f2c0

	thumb_func_start sub_0219F4B4
sub_0219F4B4: ; 0x0219F4B4
	ldr r1, _0219F4BC ; =0x021A478C
	strh r0, [r1, #8]
	bx lr
	nop
_0219F4BC: .word 0x021A478C
	thumb_func_end sub_0219F4B4

	thumb_func_start sub_0219F4C0
sub_0219F4C0: ; 0x0219F4C0
	ldr r0, _0219F4C8 ; =0x021A478C
	ldrh r0, [r0, #8]
	bx lr
	nop
_0219F4C8: .word 0x021A478C
	thumb_func_end sub_0219F4C0

	thumb_func_start ovy181_219f4cc
ovy181_219f4cc: ; 0x0219F4CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	blx OS_DisableInterrupts
	mov r1, #1
	lsl r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	ldr r1, _0219F544 ; =0x021A478C
	add r6, r0, #0
	ldrh r1, [r1, #0xa]
	mov r5, #1
	tst r1, r4
	bne _0219F4F4
	blx OS_RestoreInterrupts
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0219F4F4:
	ldr r0, _0219F548 ; =0x021A4794
	add r1, sp, #0
	mov r2, #0x14
	blx MI_CpuCopy8
	add r0, r6, #0
	blx OS_RestoreInterrupts
	add r0, sp, #0
	ldrh r1, [r0, #4]
	tst r1, r4
	beq _0219F512
	add sp, #0x14
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_0219F512:
	ldrh r1, [r0, #6]
	tst r1, r4
	beq _0219F51E
	add sp, #0x14
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0219F51E:
	ldrh r1, [r0, #8]
	tst r1, r4
	beq _0219F52A
	add sp, #0x14
	mov r0, #4
	pop {r3, r4, r5, r6, pc}
_0219F52A:
	ldrh r1, [r0, #0xa]
	tst r1, r4
	beq _0219F536
	add sp, #0x14
	mov r0, #5
	pop {r3, r4, r5, r6, pc}
_0219F536:
	ldrh r0, [r0, #0xc]
	tst r0, r4
	beq _0219F53E
	mov r5, #6
_0219F53E:
	add r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219F544: .word 0x021A478C
_0219F548: .word 0x021A4794
	thumb_func_end ovy181_219f4cc

	thumb_func_start ovy181_219f54c
ovy181_219f54c: ; 0x0219F54C
	push {r4, lr}
	ldr r4, _0219F570 ; =0x021A478C
	ldr r0, [r4]
	cmp r0, #0
	beq _0219F55E
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
_0219F55E:
	ldr r4, _0219F570 ; =0x021A478C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0219F56E
	bl sub_02042ED0
	mov r0, #0
	str r0, [r4, #4]
_0219F56E:
	pop {r4, pc}
	.align 2, 0
_0219F570: .word 0x021A478C
	thumb_func_end ovy181_219f54c

	thumb_func_start sub_0219F574
sub_0219F574: ; 0x0219F574
	ldr r0, _0219F57C ; =0x021A478C
	ldr r0, [r0, #0x18]
	bx lr
	nop
_0219F57C: .word 0x021A478C
	thumb_func_end sub_0219F574

	thumb_func_start ovy181_219f580
ovy181_219f580: ; 0x0219F580
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0219F5D0 ; =0x021A46A8
	mov r1, #0xa9
	str r1, [sp]
	mov r1, #0x2c
	mov r2, #1
	add r3, r6, #0
	add r5, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	strh r5, [r4]
	mov r2, #0
	str r2, [r4, #4]
	str r2, [r4, #0x14]
	ldrh r1, [r4, #0x18]
	ldr r0, _0219F5D4 ; =0xFFFFF7FF
	and r0, r1
	strh r0, [r4, #0x18]
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	bl sub_0201C2C4
	add r2, r0, #0
	mov r0, #0xb3
	str r0, [sp]
	mov r1, #6
	mul r1, r2
	ldrh r0, [r4]
	add r1, r1, #4
	mov r2, #1
	add r3, r6, #0
	bl sub_0203A1FC
	str r0, [r4, #0x10]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219F5D0: .word 0x021A46A8
_0219F5D4: .word 0xFFFFF7FF
	thumb_func_end ovy181_219f580

	thumb_func_start ovy181_219f5d8
ovy181_219f5d8: ; 0x0219F5D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0219F5E6
	bl sub_0203A24C
_0219F5E6:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0219F5F0
	bl sub_0203A24C
_0219F5F0:
	ldrh r0, [r4, #0x18]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0219F5FE
	bl sub_020438DC
_0219F5FE:
	ldr r0, [r4, #0x10]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy181_219f5d8

	thumb_func_start ovy181_219f60c
ovy181_219f60c: ; 0x0219F60C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #6
	bhi _0219F68C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219F622: ; jump table
	.short _0219F68C - _0219F622 - 2 ; case 0
	.short _0219F630 - _0219F622 - 2 ; case 1
	.short _0219F63E - _0219F622 - 2 ; case 2
	.short _0219F64E - _0219F622 - 2 ; case 3
	.short _0219F66C - _0219F622 - 2 ; case 4
	.short _0219F68C - _0219F622 - 2 ; case 5
	.short _0219F68C - _0219F622 - 2 ; case 6
_0219F630:
	bl sub_02040504
	cmp r0, #1
	bne _0219F68C
	mov r0, #2
_0219F63A:
	str r0, [r4, #4]
	b _0219F68C
_0219F63E:
	bl sub_02040440
	bl sub_0204044C
	cmp r0, #1
	bne _0219F68C
	mov r0, #3
	b _0219F63A
_0219F64E:
	bl sub_02040440
	bl sub_02042BD8
	cmp r0, #1
	bne _0219F68C
	mov r0, #6
	str r0, [r4, #4]
	mov r0, #1
	bl sub_02042E9C
	mov r0, #1
	bl sub_02042E94
	b _0219F68C
_0219F66C:
	bl sub_02040440
	mov r1, #0x40
	mov r2, #4
	bl sub_02040664
	cmp r0, #1
	bne _0219F68C
	mov r0, #5
	str r0, [r4, #4]
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
_0219F68C:
	ldr r2, [r4, #8]
	ldr r0, [r4, #0xc]
	cmp r0, r2
	beq _0219F6A8
	cmp r2, #0
	beq _0219F6A8
	add r0, r4, #0
	mov r1, #0xa
	bl ovy181_219f9ac
	cmp r0, #1
	bne _0219F6A8
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
_0219F6A8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_219f60c

	thumb_func_start ovy181_219f6ac
ovy181_219f6ac: ; 0x0219F6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r5, _0219F780 ; =0x021A41E4
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0xe
_0219F6B8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219F6B8
	ldrh r1, [r4]
	add r0, sp, #0x40
	add r2, r4, #0
	strh r1, [r0, #0x14]
	add r0, sp, #0
	mov r1, #0
	mov r7, #0
	bl sub_020425EC
	ldrh r1, [r4, #0x18]
	mov r0, #1
	str r7, [r4, #0x24]
	bic r1, r0
	strh r1, [r4, #0x18]
	ldrh r2, [r4, #0x18]
	mov r1, #8
	strh r7, [r4, #0x1e]
	bic r2, r1
	strh r2, [r4, #0x18]
	ldrh r3, [r4, #0x18]
	mov r2, #0x10
	strb r7, [r4, #0x1c]
	bic r3, r2
	strh r3, [r4, #0x18]
	ldrh r5, [r4, #0x18]
	mov r3, #0x20
	bic r5, r3
	strh r5, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	mov r5, #0x40
	bic r6, r5
	strh r6, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	mov r5, #0x80
	bic r6, r5
	strh r6, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	ldr r5, _0219F784 ; =0xFFFFFEFF
	and r5, r6
	strh r5, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	ldr r5, _0219F788 ; =0xFFFFFDFF
	and r5, r6
	strh r5, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	ldr r5, _0219F78C ; =0xFFFFFBFF
	and r5, r6
	strh r5, [r4, #0x18]
	mov r5, #2
	ldrh r6, [r4, #0x18]
	lsl r5, r5, #0xa
	orr r5, r6
	strh r5, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	ldr r5, _0219F790 ; =0xFFFFBFFF
	and r5, r6
	strh r5, [r4, #0x18]
	ldr r6, _0219F790 ; =0xFFFFBFFF
	ldrh r5, [r4, #0x18]
	asr r6, r6, #1
	and r5, r6
	strh r5, [r4, #0x18]
	ldrh r6, [r4, #0x18]
	ldr r5, _0219F794 ; =0xFFFF7FFF
	and r5, r6
	strh r5, [r4, #0x18]
	ldrh r5, [r4, #0x1a]
	bic r5, r0
	strh r5, [r4, #0x1a]
	ldrh r5, [r4, #0x1a]
	mov r0, #2
	bic r5, r0
	strh r5, [r4, #0x1a]
	ldrh r5, [r4, #0x1a]
	mov r0, #4
	bic r5, r0
	strh r5, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	bic r0, r1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	mov r1, #0
	bic r0, r2
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1a]
	bic r0, r3
	strh r0, [r4, #0x1a]
	add r0, r4, #0
	add r0, #0x20
	strb r7, [r0]
	ldrh r0, [r4]
	bl sub_02043868
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F780: .word 0x021A41E4
_0219F784: .word 0xFFFFFEFF
_0219F788: .word 0xFFFFFDFF
_0219F78C: .word 0xFFFFFBFF
_0219F790: .word 0xFFFFBFFF
_0219F794: .word 0xFFFF7FFF
	thumb_func_end ovy181_219f6ac

	thumb_func_start ovy181_219f798
ovy181_219f798: ; 0x0219F798
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mov r4, #0
	bl sub_02042860
	bl sub_020438DC
	ldrh r1, [r5, #0x18]
	ldr r0, _0219F7B4 ; =0xFFFFF7FF
	str r4, [r5, #4]
	and r0, r1
	strh r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F7B4: .word 0xFFFFF7FF
	thumb_func_end ovy181_219f798

	thumb_func_start sub_0219F7B8
sub_0219F7B8: ; 0x0219F7B8
	ldr r3, _0219F7BC ; =sub_02042788
	bx r3
	.align 2, 0
_0219F7BC: .word sub_02042788
	thumb_func_end sub_0219F7B8

	thumb_func_start sub_0219F7C0
sub_0219F7C0: ; 0x0219F7C0
	ldr r3, _0219F7C4 ; =sub_020427A4
	bx r3
	.align 2, 0
_0219F7C4: .word sub_020427A4
	thumb_func_end sub_0219F7C0

	thumb_func_start ovy181_219f7c8
ovy181_219f7c8: ; 0x0219F7C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042970
	mov r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_219f7c8

	thumb_func_start ovy181_219f7d8
ovy181_219f7d8: ; 0x0219F7D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	mov r1, #0x40
	mov r2, #4
	mov r4, #4
	bl sub_02040624
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy181_219f7d8

	thumb_func_start sub_0219F7F0
sub_0219F7F0: ; 0x0219F7F0
	ldr r0, [r0, #4]
	cmp r0, #5
	bne _0219F7FA
	mov r0, #1
	bx lr
_0219F7FA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F7F0

	thumb_func_start sub_0219F800
sub_0219F800: ; 0x0219F800
	ldr r0, [r0, #4]
	cmp r0, #6
	blt _0219F80A
	mov r0, #1
	bx lr
_0219F80A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F800

	thumb_func_start sub_0219F810
sub_0219F810: ; 0x0219F810
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219F810

	thumb_func_start ovy181_219f814
ovy181_219f814: ; 0x0219F814
	push {r3, r4}
	ldrh r2, [r0, #0x18]
	mov r1, #2
	bic r2, r1
	strh r2, [r0, #0x18]
	ldrh r1, [r0, #0x1a]
	mov r2, #0x40
	ldrh r3, [r0, #0x18]
	bic r1, r2
	strh r1, [r0, #0x1a]
	mov r1, #4
	bic r3, r1
	strh r3, [r0, #0x18]
	ldrh r1, [r0, #0x1a]
	mov r3, #0x80
	ldrh r4, [r0, #0x18]
	bic r1, r3
	strh r1, [r0, #0x1a]
	mov r1, #8
	bic r4, r1
	strh r4, [r0, #0x18]
	ldrh r4, [r0, #0x18]
	mov r1, #0x10
	bic r4, r1
	strh r4, [r0, #0x18]
	ldrh r4, [r0, #0x18]
	mov r1, #0x20
	bic r4, r1
	strh r4, [r0, #0x18]
	ldrh r1, [r0, #0x18]
	bic r1, r2
	strh r1, [r0, #0x18]
	ldrh r1, [r0, #0x18]
	bic r1, r3
	strh r1, [r0, #0x18]
	ldrh r2, [r0, #0x18]
	ldr r1, _0219F884 ; =0xFFFFFEFF
	and r1, r2
	strh r1, [r0, #0x18]
	ldrh r2, [r0, #0x18]
	ldr r1, _0219F888 ; =0xFFFFFDFF
	and r1, r2
	strh r1, [r0, #0x18]
	ldrh r2, [r0, #0x18]
	ldr r1, _0219F88C ; =0xFFFFFBFF
	and r1, r2
	strh r1, [r0, #0x18]
	ldrh r2, [r0, #0x18]
	ldr r1, _0219F890 ; =0xFFFFEFFF
	and r1, r2
	strh r1, [r0, #0x18]
	mov r1, #0
	strb r1, [r0, #0x1c]
	pop {r3, r4}
	bx lr
	nop
_0219F884: .word 0xFFFFFEFF
_0219F888: .word 0xFFFFFDFF
_0219F88C: .word 0xFFFFFBFF
_0219F890: .word 0xFFFFEFFF
	thumb_func_end ovy181_219f814

	thumb_func_start sub_0219F894
sub_0219F894: ; 0x0219F894
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F894

	thumb_func_start sub_0219F89C
sub_0219F89C: ; 0x0219F89C
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F89C

	thumb_func_start sub_0219F8A4
sub_0219F8A4: ; 0x0219F8A4
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F8A4

	thumb_func_start sub_0219F8AC
sub_0219F8AC: ; 0x0219F8AC
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F8AC

	thumb_func_start sub_0219F8B4
sub_0219F8B4: ; 0x0219F8B4
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F8B4

	thumb_func_start sub_0219F8BC
sub_0219F8BC: ; 0x0219F8BC
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F8BC

	thumb_func_start sub_0219F8C4
sub_0219F8C4: ; 0x0219F8C4
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F8C4

	thumb_func_start sub_0219F8CC
sub_0219F8CC: ; 0x0219F8CC
	ldr r0, [r0, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_0219F8CC

	thumb_func_start sub_0219F8D4
sub_0219F8D4: ; 0x0219F8D4
	ldr r1, [r0, #0x24]
	ldr r0, _0219F8E4 ; =0x3FFF0000
	and r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0219F8E4: .word 0x3FFF0000
	thumb_func_end sub_0219F8D4

	thumb_func_start sub_0219F8E8
sub_0219F8E8: ; 0x0219F8E8
	ldr r1, [r0, #0x24]
	mov r0, #1
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _0219F8F6
	mov r0, #1
	bx lr
_0219F8F6:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F8E8

	thumb_func_start sub_0219F8FC
sub_0219F8FC: ; 0x0219F8FC
	ldr r1, [r0, #0x24]
	mov r0, #2
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _0219F90A
	mov r0, #1
	bx lr
_0219F90A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F8FC

	thumb_func_start sub_0219F910
sub_0219F910: ; 0x0219F910
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F910

	thumb_func_start sub_0219F918
sub_0219F918: ; 0x0219F918
	ldrh r0, [r0, #0x1a]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F918

	thumb_func_start sub_0219F920
sub_0219F920: ; 0x0219F920
	ldrh r0, [r0, #0x1a]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F920

	thumb_func_start ovy181_219f928
ovy181_219f928: ; 0x0219F928
	push {r3, lr}
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #2
	mov r3, #1
	bl sub_0204393C
	pop {r3, pc}
	thumb_func_end ovy181_219f928

	thumb_func_start ovy181_219f938
ovy181_219f938: ; 0x0219F938
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r4, #0
	strb r4, [r0]
	strh r4, [r0, #2]
_0219F944:
	bl sub_0201C2C4
	ldr r1, [r5, #0x10]
	mul r0, r4
	add r0, r1, r0
	add r0, r0, #4
	bl sub_0201C42C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _0219F944
	ldrh r1, [r5, #0x18]
	mov r0, #2
	bic r1, r0
	strh r1, [r5, #0x18]
	ldrh r1, [r5, #0x18]
	mov r0, #4
	bic r1, r0
	strh r1, [r5, #0x18]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy181_219f938

	thumb_func_start sub_0219F970
sub_0219F970: ; 0x0219F970
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F970

	thumb_func_start sub_0219F978
sub_0219F978: ; 0x0219F978
	ldrh r0, [r0, #0x1a]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F978

	thumb_func_start sub_0219F980
sub_0219F980: ; 0x0219F980
	ldr r0, [r0, #0x10]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F980

	thumb_func_start ovy181_219f988
ovy181_219f988: ; 0x0219F988
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201C2C4
	ldr r1, [r5, #0x10]
	mul r0, r4
	add r0, r1, r0
	add r0, r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy181_219f988

	thumb_func_start sub_0219F99C
sub_0219F99C: ; 0x0219F99C
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F99C

	thumb_func_start sub_0219F9A4
sub_0219F9A4: ; 0x0219F9A4
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0219F9A4

	thumb_func_start ovy181_219f9ac
ovy181_219f9ac: ; 0x0219F9AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02042BC4
	cmp r0, #1
	bne _0219F9C4
	mov r0, #0xff
	bl sub_02040414
	b _0219F9C8
_0219F9C4:
	bl sub_02040440
_0219F9C8:
	add r1, sp, #0x10
	strb r5, [r1, #4]
	str r4, [sp, #0x10]
	add r1, sp, #0x10
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #0xff
	lsl r2, r2, #0xa
	mov r3, #8
	bl sub_02042C18
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy181_219f9ac
_0219F9EC:
	.byte 0x10, 0x79, 0x16, 0x28
	.byte 0x00, 0xD9, 0xA0, 0xE0, 0x00, 0x18, 0x78, 0x44, 0xC0, 0x88, 0x00, 0x04, 0x00, 0x14, 0x87, 0x44
	.byte 0x2C, 0x00, 0x36, 0x00, 0x40, 0x00, 0x50, 0x00, 0x60, 0x00, 0x76, 0x00, 0x34, 0x01, 0x34, 0x01
	.byte 0x34, 0x01, 0x34, 0x01, 0x86, 0x00, 0x8C, 0x00, 0x96, 0x00, 0xA0, 0x00, 0xAA, 0x00, 0xB4, 0x00
	.byte 0xC6, 0x00, 0xE4, 0x00, 0xEE, 0x00, 0xF8, 0x00, 0x08, 0x01, 0x14, 0x01, 0x6C, 0x00, 0x19, 0x8B
	.byte 0x04, 0x20, 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x19, 0x8B, 0x80, 0x20, 0x08, 0x43, 0x18, 0x83
	.byte 0x70, 0x47, 0x19, 0x8B, 0x01, 0x20, 0x00, 0x02, 0x08, 0x43, 0x18, 0x83, 0x10, 0x68, 0x18, 0x77
	.byte 0x70, 0x47, 0x19, 0x8B, 0x02, 0x20, 0x00, 0x02, 0x08, 0x43, 0x18, 0x83, 0x10, 0x68, 0x18, 0x77
	.byte 0x70, 0x47, 0x19, 0x8B, 0x01, 0x20, 0x80, 0x02, 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x59, 0x8B
	.byte 0x80, 0x20, 0x08, 0x43, 0x58, 0x83, 0x70, 0x47, 0x10, 0x68, 0x19, 0x8B, 0xD8, 0x83, 0x01, 0x20
	.byte 0x00, 0x03, 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x10, 0x68, 0xD8, 0x60, 0x70, 0x47, 0x19, 0x8B
	.byte 0x08, 0x20, 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x19, 0x8B, 0x10, 0x20, 0x08, 0x43, 0x18, 0x83
	.byte 0x70, 0x47, 0x19, 0x8B, 0x20, 0x20, 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x19, 0x8B, 0x40, 0x20
	.byte 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x19, 0x8B, 0x02, 0x20, 0x00, 0x03, 0x08, 0x43, 0x18, 0x83
	.byte 0x10, 0x68, 0x20, 0x33, 0x18, 0x70, 0x70, 0x47, 0x59, 0x8B, 0x04, 0x20, 0x08, 0x43, 0x58, 0x83
	.byte 0x58, 0x8B, 0x08, 0x21, 0x88, 0x43, 0x11, 0x68, 0x09, 0x04, 0x09, 0x0C, 0xC9, 0x07, 0x09, 0x0F
	.byte 0x08, 0x43, 0x58, 0x83, 0x70, 0x47, 0x59, 0x8B, 0x10, 0x20, 0x08, 0x43, 0x58, 0x83, 0x70, 0x47
	.byte 0x59, 0x8B, 0x20, 0x20, 0x08, 0x43, 0x58, 0x83, 0x70, 0x47, 0x19, 0x8B, 0x01, 0x20, 0x80, 0x03
	.byte 0x08, 0x43, 0x18, 0x83, 0x10, 0x68, 0x58, 0x62, 0x70, 0x47, 0x19, 0x8B, 0x02, 0x20, 0x80, 0x03
	.byte 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x59, 0x8B, 0x01, 0x20, 0x81, 0x43, 0x01, 0x20, 0x08, 0x43
	.byte 0x58, 0x83, 0x58, 0x8B, 0x02, 0x21, 0x88, 0x43, 0x11, 0x68, 0x09, 0x04, 0x09, 0x0C, 0xC9, 0x07
	.byte 0x89, 0x0F, 0x08, 0x43, 0x58, 0x83, 0x70, 0x47

	thumb_func_start ovy181_219fb38
ovy181_219fb38: ; 0x0219FB38
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r0, #0xff
	add r5, r1, #0
	bl sub_02040414
	add r4, r0, #0
	bl sub_02042A78
	cmp r0, #2
	bge _0219FB54
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219FB54:
	str r5, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, _0219FB70 ; =0x00000401
	add r0, r4, #0
	mov r3, #8
	str r1, [sp, #0xc]
	bl sub_02042C18
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0219FB70: .word 0x00000401
	thumb_func_end ovy181_219fb38
_0219FB74:
	.byte 0x19, 0x8B, 0x01, 0x20, 0x81, 0x43, 0x01, 0x20, 0x08, 0x43, 0x18, 0x83
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy181_219fb84
ovy181_219fb84: ; 0x0219FB84
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0219FBA2
	ldr r0, _0219FBA8 ; =0x0000037F
	ldr r3, _0219FBAC ; =0x021A46A8
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #8
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #0x14]
_0219FBA2:
	ldr r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0219FBA8: .word 0x0000037F
_0219FBAC: .word 0x021A46A8
	thumb_func_end ovy181_219fb84
_0219FBB0:
	.byte 0x80, 0x6A, 0x70, 0x47, 0x19, 0x8B, 0x02, 0x20, 0x08, 0x43, 0x18, 0x83, 0x70, 0x47, 0x00, 0x00
	.byte 0x08, 0x69, 0x70, 0x47, 0x59, 0x8B, 0x40, 0x20, 0x08, 0x43, 0x58, 0x83, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy181_219fbd0
ovy181_219fbd0: ; 0x0219FBD0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _0219FBF0
	ldr r0, _0219FBF8 ; =0x000003DF
	mov r1, #5
	str r0, [sp]
	ldrh r0, [r4]
	ldr r3, _0219FBFC ; =0x021A46A8
	lsl r1, r1, #8
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #0x28]
_0219FBF0:
	ldr r0, [r4, #0x28]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219FBF8: .word 0x000003DF
_0219FBFC: .word 0x021A46A8
	thumb_func_end ovy181_219fbd0
_0219FC00:
	.byte 0x00, 0x48, 0x70, 0x47, 0xC8, 0x47, 0x1A, 0x02, 0x02, 0x20, 0x70, 0x47

	thumb_func_start ovy181_219fc0c
ovy181_219fc0c: ; 0x0219FC0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	str r3, [sp, #8]
	mov r1, #0x68
	add r7, r2, #0
	str r1, [sp]
	ldr r3, _0219FD20 ; =0x021A46B8
	mov r1, #0x6c
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	strh r6, [r4]
	strb r5, [r4, #2]
	ldr r0, [sp, #0x44]
	strb r7, [r4, #3]
	str r0, [r4, #8]
	mov r7, #0
	str r7, [r4, #0x10]
	str r0, [sp, #0xc]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x18]
	ldr r2, [sp, #8]
	ldrh r3, [r4]
	lsl r2, r2, #0x10
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x20]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #0xd
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl sub_02024D00
	cmp r5, #4
	bhs _0219FC80
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #5
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0x17
	b _0219FC8E
_0219FC80:
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
_0219FC8E:
	mov r3, #7
	lsl r3, r3, #6
	bl sub_0204B0B8
	bl sub_020232D8
	ldrh r0, [r4]
	mov r3, #3
	mov r2, #3
	add r1, r0, #0
	add r3, #0xfd
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0xc]
	mov r7, #0
	str r7, [r4, #0x1c]
	str r7, [r4, #0x24]
	str r7, [r4, #0x28]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x34]
	ldrh r0, [r4]
	mov r1, #0xa
	str r0, [sp]
	ldrb r0, [r4, #3]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x34]
	bl sub_0202E168
	str r0, [r4, #0x4c]
	str r7, [r4, #0x48]
	str r7, [r4, #0x5c]
	ldrh r3, [r4]
	ldr r1, [sp, #0xc]
	mov r0, #0xf
	mov r2, #1
	bl sub_0202E7A4
	str r0, [r4, #0x50]
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne _0219FD0C
	ldr r0, _0219FD24 ; =0x00000024
	bl sub_0203CE0C
	add r1, sp, #0x10
	strh r6, [r1]
	str r7, [sp, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x18]
	mov r0, #0xa
	strh r0, [r1, #0xc]
	str r5, [sp, #0x20]
	mov r0, #0xc
	strb r0, [r1, #0x14]
	mov r0, #0xe
	strb r0, [r1, #0x15]
	add r0, sp, #0x10
	bl sub_0218B1F8
	str r0, [r4, #0x60]
	b _0219FD0E
_0219FD0C:
	str r7, [r4, #0x60]
_0219FD0E:
	mov r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x3c]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FD20: .word 0x021A46B8
_0219FD24: .word 0x00000024
	thumb_func_end ovy181_219fc0c

	thumb_func_start ovy181_219fd28
ovy181_219fd28: ; 0x0219FD28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _0219FD3C
	bl sub_0218B320
	ldr r0, _0219FDBC ; =0x00000024
	bl sub_0203CDC8
_0219FD3C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0219FD46
	bl sub_0202DA54
_0219FD46:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0219FD50
	bl sub_020256B0
_0219FD50:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _0219FD5E
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x68]
_0219FD5E:
	ldr r0, [r4, #0x50]
	bl sub_0202E818
	ldr r0, [r4, #0x4c]
	bl sub_0202E1DC
	ldr r0, [r4, #0x34]
	bl sub_02021A18
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0219FD7A
	bl sub_020223CC
_0219FD7A:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0219FD84
	bl GFL_StrBufFree
_0219FD84:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0219FD90
	add r0, r4, #0
	bl ovy181_21a0134
_0219FD90:
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0219FDA0
	bl sub_02048210
_0219FDA0:
	add r0, r4, #0
	bl ovy181_21a0384
	ldr r0, [r4, #0x18]
	bl sub_02022DA8
	ldr r0, [r4, #0xc]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	nop
_0219FDBC: .word 0x00000024
	thumb_func_end ovy181_219fd28

	thumb_func_start ovy181_219fdc0
ovy181_219fdc0: ; 0x0219FDC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0203A7F4
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _0219FDF2
	add r0, r5, #0
	add r0, #0x2c
	bl sub_0202E68C
	add r4, r0, #0
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x10]
	bl sub_0202E8D8
	cmp r4, #1
	bne _0219FDF2
	ldr r0, [r5, #0x1c]
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, #0x1c]
_0219FDF2:
	ldr r0, [r5, #0x34]
	bl sub_02021A3C
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0219FE28
	add r1, r5, #0
	add r1, #0x44
	ldrb r1, [r1]
	ldr r4, [r5, #0x34]
	cmp r1, #0
	beq _0219FE28
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219FE28
	ldr r0, [r5, #0x40]
	bl BmpWin_FlushChar
	add r0, r5, #0
	mov r1, #0
	add r0, #0x44
	strb r1, [r0]
_0219FE28:
	ldr r0, [r5, #0x38]
	cmp r0, #1
	bne _0219FE64
	ldr r0, [r5, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219FE64
	ldr r0, [r5, #0x10]
	bl BmpWin_FlushChar
	mov r1, #0
	ldr r0, [r5, #0x64]
	str r1, [r5, #0x38]
	cmp r0, #1
	bne _0219FE64
	ldrh r0, [r5]
	str r1, [r5, #0x64]
	mov r2, #0xf
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, #0x10
	bl sub_02035660
	str r0, [r5, #0x68]
_0219FE64:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _0219FE6E
	bl sub_0202DB70
_0219FE6E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy181_219fdc0

	thumb_func_start ovy181_219fe70
ovy181_219fe70: ; 0x0219FE70
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	cmp r0, r5
	beq _0219FF2A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0219FE8C
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x10]
_0219FE8C:
	cmp r5, #8
	bhi _0219FF28
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FE9C: ; jump table
	.short _0219FF28 - _0219FE9C - 2 ; case 0
	.short _0219FEAE - _0219FE9C - 2 ; case 1
	.short _0219FEC0 - _0219FE9C - 2 ; case 2
	.short _0219FED6 - _0219FE9C - 2 ; case 3
	.short _0219FEDA - _0219FE9C - 2 ; case 4
	.short _0219FEEC - _0219FE9C - 2 ; case 5
	.short _0219FEFE - _0219FE9C - 2 ; case 6
	.short _0219FF10 - _0219FE9C - 2 ; case 7
	.short _0219FEEC - _0219FE9C - 2 ; case 8
_0219FEAE:
	mov r2, #8
	str r2, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r4, #2]
	mov r1, #3
	b _0219FED2
_0219FEC0:
	mov r0, #0x12
_0219FEC2:
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r4, #2]
	mov r1, #3
	mov r2, #2
_0219FED2:
	mov r3, #0x1a
	b _0219FF22
_0219FED6:
	mov r0, #0x14
	b _0219FEC2
_0219FEDA:
	mov r0, #2
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r0, [r4, #2]
	mov r2, #0x15
	b _0219FF20
_0219FEEC:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r0, [r4, #2]
	mov r2, #0x13
	b _0219FF20
_0219FEFE:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r0, [r4, #2]
	mov r2, #0x11
	b _0219FF20
_0219FF10:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r0, [r4, #2]
	mov r2, #1
_0219FF20:
	mov r3, #0x1e
_0219FF22:
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x10]
_0219FF28:
	str r5, [r4, #4]
_0219FF2A:
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x10]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x10]
	bl sub_0204826C
	ldrb r0, [r4, #2]
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy181_219fe70

	thumb_func_start ovy181_219ff4c
ovy181_219ff4c: ; 0x0219FF4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _0219FF64
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, #0x1c]
_0219FF64:
	ldr r0, [r5, #0x68]
	cmp r0, #0
	beq _0219FF72
	bl sub_0203580C
	mov r0, #0
	str r0, [r5, #0x68]
_0219FF72:
	ldr r0, [r5, #0x24]
	mov r7, #0
	str r7, [r5, #0x3c]
	str r7, [r5, #0x64]
	cmp r0, #0
	beq _0219FF84
	bl GFL_StrBufFree
	str r7, [r5, #0x24]
_0219FF84:
	ldr r0, [r5, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	bl sub_0204898C
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0219FFBC
	ldrh r1, [r5]
	ldr r0, _021A0024 ; =0x0000017B
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x24]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x24]
	bl GFL_StrBufFree
	str r6, [r5, #0x24]
_0219FFBC:
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	mov r4, #0
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	ldr r3, [r5, #0x24]
	bl sub_02022268
	str r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	cmp r0, #8
	bne _0219FFF4
	ldr r0, [r5, #0x60]
	ldr r1, [r5, #0x10]
	add r2, r4, #0
	bl sub_0218B5AC
	b _021A0000
_0219FFF4:
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #1
	mov r3, #0xd
	bl sub_02024E80
_021A0000:
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021A0014
	add r5, #0x2c
	add r0, r5, #0
	mov r1, #6
	bl sub_0202E678
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A0014:
	add r5, #0x2c
	add r0, r5, #0
	mov r1, #4
	bl sub_0202E678
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0024: .word 0x0000017B
	thumb_func_end ovy181_219ff4c

	thumb_func_start ovy181_21a0028
ovy181_21a0028: ; 0x021A0028
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	add r5, r1, #0
	cmp r0, #0
	beq _021A003E
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x1c]
_021A003E:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021A004C
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x68]
_021A004C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021A005A
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r4, #0x24]
_021A005A:
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x20]
	add r1, r5, #0
	bl sub_0204898C
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A0092
	ldrh r1, [r4]
	ldr r0, _021A00DC ; =0x0000017B
	bl GFL_StrBufCreate
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x24]
	add r1, r5, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x24]
	bl GFL_StrBufFree
	str r5, [r4, #0x24]
_021A0092:
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	mov r5, #0
	bl sub_02021C54
	mov r1, #1
	ldr r0, [r4, #4]
	str r1, [r4, #0x38]
	cmp r0, #8
	bne _021A00CC
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x10]
	add r2, r5, #0
	bl sub_0218B5AC
	ldrb r0, [r4, #2]
	bl sub_02044F90
	add sp, #8
	pop {r3, r4, r5, pc}
_021A00CC:
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mov r3, #0xd
	bl sub_02024E80
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021A00DC: .word 0x0000017B
	thumb_func_end ovy181_21a0028

	thumb_func_start ovy181_21a00e0
ovy181_21a00e0: ; 0x021A00E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, #4]
	cmp r0, #8
	bne _021A0106
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x10]
	bl sub_0218B5BC
	ldrb r0, [r4, #2]
	bl sub_02044F90
	b _021A010E
_021A0106:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02024EEC
_021A010E:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021A011C
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x68]
_021A011C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a00e0

	thumb_func_start ovy181_21a0120
ovy181_21a0120: ; 0x021A0120
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021A0132
	ldrh r0, [r4]
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x28]
_021A0132:
	pop {r4, pc}
	thumb_func_end ovy181_21a0120

	thumb_func_start ovy181_21a0134
ovy181_21a0134: ; 0x021A0134
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021A0146
	bl GFL_WordSetSystemFree
	mov r0, #0
	str r0, [r4, #0x28]
_021A0146:
	pop {r4, pc}
	thumb_func_end ovy181_21a0134

	thumb_func_start ovy181_21a0148
ovy181_21a0148: ; 0x021A0148
	push {r4, lr}
	sub sp, #8
	mov r4, #0
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x28]
	bl StringSetNumber
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a0148

	thumb_func_start ovy181_21a0160
ovy181_21a0160: ; 0x021A0160
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x28]
	bl StringSetNumber
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a0160

	thumb_func_start ovy181_21a0178
ovy181_21a0178: ; 0x021A0178
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x12
	mov r6, #0x12
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x20]
	mov r1, #0x13
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldr r0, _021A01FC ; =0x000039E3
	add r1, sp, #0
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x24]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	ldrh r2, [r5]
	str r2, [sp]
	mov r2, #2
	strb r2, [r1, #4]
	add r2, sp, #0x14
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	cmp r4, #0
	beq _021A01C0
	cmp r4, #1
	beq _021A01CA
	cmp r4, #2
	beq _021A01D2
	b _021A01D8
_021A01C0:
	mov r0, #0x18
	strb r0, [r1, #0x10]
	mov r0, #6
_021A01C6:
	strb r0, [r1, #0x11]
	b _021A01D8
_021A01CA:
	mov r0, #0x18
	strb r0, [r1, #0x10]
	mov r0, #0xc
	b _021A01C6
_021A01D2:
	mov r0, #0x18
	strb r0, [r1, #0x10]
	strb r6, [r1, #0x11]
_021A01D8:
	mov r1, #8
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	ldr r1, [r5, #0x4c]
	add r0, sp, #0
	bl sub_0202D974
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A01FC: .word 0x000039E3
	thumb_func_end ovy181_21a0178

	thumb_func_start ovy181_21a0200
ovy181_21a0200: ; 0x021A0200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, #0x48]
	pop {r4, pc}
	thumb_func_end ovy181_21a0200

	thumb_func_start ovy181_21a0210
ovy181_21a0210: ; 0x021A0210
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_0202DBE4
	cmp r0, #1
	bne _021A0228
	ldr r0, [r4, #0x48]
	bl sub_0202DC00
	add r0, r0, #1
	pop {r4, pc}
_021A0228:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy181_21a0210

	thumb_func_start ovy181_21a022c
ovy181_21a022c: ; 0x021A022C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #3]
	add r0, #0x54
	mov r2, #0xd
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0x55
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x56
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x57
	strb r1, [r0]
	add r0, r4, #0
	mov r3, #0
	add r0, #0x58
	strh r3, [r0]
	ldrh r0, [r4]
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x54
	bl sub_020254E0
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy181_21a022c

	thumb_func_start sub_021A026C
sub_021A026C: ; 0x021A026C
	mov r1, #0
	str r1, [r0, #0x5c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A026C

	thumb_func_start ovy181_21a0274
ovy181_21a0274: ; 0x021A0274
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_02025634
	cmp r0, #0
	bne _021A028A
	mov r0, #0
	str r0, [r4, #0x5c]
	mov r0, #1
	pop {r4, pc}
_021A028A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _021A029A
	mov r0, #0
	str r0, [r4, #0x5c]
	mov r0, #2
	pop {r4, pc}
_021A029A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a0274

	thumb_func_start ovy181_21a02a0
ovy181_21a02a0: ; 0x021A02A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r3, [r5]
	add r4, r1, #0
	mov r0, #0
	mov r1, #3
	mov r2, #0xd0
	mov r7, #0
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021A02C4
	bl sub_020223CC
	str r7, [r5, #0x1c]
_021A02C4:
	ldr r0, [r5, #0x24]
	mov r7, #0
	str r7, [r5, #0x3c]
	str r7, [r5, #0x64]
	cmp r0, #0
	beq _021A02D6
	bl GFL_StrBufFree
	str r7, [r5, #0x24]
_021A02D6:
	ldr r0, [r5, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r7, #0xf
	bl BmpWin_BitmapFill
	add r0, r6, #0
	mov r1, #0x16
	bl sub_0204898C
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, [r5, #0x10]
	ldr r3, [r5, #0x24]
	bl sub_02022268
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #1
	mov r3, #0xd
	bl sub_02024E80
	add r0, r6, #0
	bl GFL_MsgDataFree
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021A0336
	add r5, #0x2c
	add r0, r5, #0
	mov r1, #6
	bl sub_0202E678
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A0336:
	add r5, #0x2c
	add r0, r5, #0
	mov r1, #4
	bl sub_0202E678
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy181_21a02a0

	thumb_func_start sub_021A0344
sub_021A0344: ; 0x021A0344
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_021A0344

	thumb_func_start sub_021A0348
sub_021A0348: ; 0x021A0348
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end sub_021A0348

	thumb_func_start sub_021A034C
sub_021A034C: ; 0x021A034C
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021A034C

	thumb_func_start sub_021A0350
sub_021A0350: ; 0x021A0350
	ldr r0, [r0, #0x34]
	ldr r3, _021A0358 ; =PrintSystem_IsTextPrintActiveEnd
	bx r3
	nop
_021A0358: .word PrintSystem_IsTextPrintActiveEnd
	thumb_func_end sub_021A0350

	thumb_func_start sub_021A035C
sub_021A035C: ; 0x021A035C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021A0366
	mov r0, #1
	bx lr
_021A0366:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A035C

	thumb_func_start ovy181_21a036c
ovy181_21a036c: ; 0x021A036C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	str r1, [r4, #0x3c]
	bl sub_0204826C
	ldrb r0, [r4, #2]
	bl sub_02044F90
	pop {r4, pc}
	thumb_func_end ovy181_21a036c

	thumb_func_start sub_021A0380
sub_021A0380: ; 0x021A0380
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_021A0380

	thumb_func_start ovy181_21a0384
ovy181_21a0384: ; 0x021A0384
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A0398
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x40]
_021A0398:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a0384

	thumb_func_start ovy181_21a039c
ovy181_21a039c: ; 0x021A039C
	push {r3, r4, r5, lr}
	mov r1, #0x74
	str r1, [sp]
	ldr r3, _021A03C4 ; =0x021A46C8
	mov r1, #0x34
	mov r2, #1
	add r4, r0, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strh r4, [r5]
	add r0, r4, #0
	bl ovy181_219f580
	str r0, [r5, #4]
	mov r0, #0x10
	bl sub_0203D10C
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A03C4: .word 0x021A46C8
	thumb_func_end ovy181_21a039c

	thumb_func_start ovy181_21a03c8
ovy181_21a03c8: ; 0x021A03C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x10
	bl sub_0203D134
	bl sub_0203E7DC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A03E4
	bl ovy181_21a0834
	mov r0, #0
	str r0, [r4, #8]
_021A03E4:
	ldr r0, [r4, #4]
	bl ovy181_219f5d8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a03c8

	thumb_func_start ovy181_21a03f4
ovy181_21a03f4: ; 0x021A03F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ovy181_219f60c
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _021A0416
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x10
	blx r2
	cmp r0, #0
	beq _021A0416
	mov r0, #0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x10]
_021A0416:
	pop {r4, pc}
	thumb_func_end ovy181_21a03f4
_021A0418:
	.byte 0x03, 0x29, 0x1B, 0xD8, 0x49, 0x18, 0x79, 0x44
	.byte 0xC9, 0x88, 0x09, 0x04, 0x09, 0x14, 0x8F, 0x44, 0x06, 0x00, 0x0A, 0x00, 0x18, 0x00, 0x26, 0x00
	.byte 0x09, 0x49, 0x0E, 0xE0, 0xC2, 0x6A, 0x08, 0x49, 0x8A, 0x42, 0x0B, 0xD1, 0x01, 0x21, 0x41, 0x61
	.byte 0x08, 0xE0, 0xC2, 0x6A, 0x04, 0x49, 0x8A, 0x42, 0x04, 0xD1, 0x01, 0x21, 0x81, 0x61, 0x01, 0xE0
	.byte 0x02, 0x49, 0xC1, 0x62, 0x01, 0x20, 0x70, 0x47, 0x95, 0x04, 0x1A, 0x02, 0xD9, 0x05, 0x1A, 0x02
	.byte 0xC0, 0x6A, 0x00, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy181_21a0470
ovy181_21a0470: ; 0x021A0470
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldrh r2, [r4]
	bl ovy181_21a0704
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a0470
_021A0484:
	.byte 0x00, 0x6B, 0x70, 0x47, 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0xB1, 0xFB, 0x19, 0x02

	thumb_func_start ovy181_21a0494
ovy181_21a0494: ; 0x021A0494
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	cmp r0, #0
	beq _021A04CC
	bl sub_02174E58
	cmp r0, #9
	beq _021A04B0
	bl sub_02174E58
	cmp r0, #0xa
	bne _021A04CC
_021A04B0:
	mov r4, #0
	str r4, [r5, #0x1c]
	bl sub_021754A0
	cmp r0, #1
	bne _021A04C8
	bl ovy181_219f54c
	bl sub_02175164
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A04C8:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A04CC:
	ldr r0, [r4]
	cmp r0, #7
	bhi _021A05B2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A04DE: ; jump table
	.short _021A04EE - _021A04DE - 2 ; case 0
	.short _021A0532 - _021A04DE - 2 ; case 1
	.short _021A0544 - _021A04DE - 2 ; case 2
	.short _021A054E - _021A04DE - 2 ; case 3
	.short _021A056A - _021A04DE - 2 ; case 4
	.short _021A0586 - _021A04DE - 2 ; case 5
	.short _021A058E - _021A04DE - 2 ; case 6
	.short _021A05A4 - _021A04DE - 2 ; case 7
_021A04EE:
	mov r0, #1
	str r0, [r5, #0x20]
	mov r6, #0
	ldr r0, _021A05C8 ; =0x0000001E
	str r6, [r5, #0x18]
	str r6, [r5, #0x14]
	str r6, [r5, #0x1c]
	bl sub_0203CE0C
	ldr r0, _021A05CC ; =0x021A47CC
	ldr r1, _021A05D0 ; =0x021A08A5
	str r6, [r0]
	ldrh r0, [r5]
	mov r2, #0
	bl sub_021750F0
	ldrh r3, [r5]
	mov r0, #0xf0
	mov r1, #0
	mov r2, #0
	bl sub_0203E76C
	ldrh r1, [r5]
	mov r0, #1
	bl sub_0203E810
	ldr r0, _021A05D4 ; =ovy181_21a08b0
	add r1, r5, #0
	bl sub_0203D2BC
_021A052A:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A05B2
_021A0532:
	bl sub_02174E58
	cmp r0, #1
	bne _021A05B2
	bl sub_02174E90
	cmp r0, #1
	bne _021A05B2
	b _021A052A
_021A0544:
	bl sub_02174E58
	cmp r0, #7
	bne _021A05B2
	b _021A052A
_021A054E:
	ldrh r0, [r5]
	mov r1, #0x4e
	mov r2, #1
	lsl r1, r1, #6
	lsl r2, r2, #0x10
	bl ovy181_219eec8
	bl sub_02175030
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl ovy181_219ef94
	b _021A052A
_021A056A:
	add r0, r5, #0
	bl ovy181_21a084c
	cmp r0, #0
	beq _021A05B2
	cmp r0, #1
	beq _021A057E
	cmp r0, #2
	beq _021A0584
	b _021A05B2
_021A057E:
	mov r0, #1
	str r0, [r5, #0x1c]
	b _021A052A
_021A0584:
	b _021A052A
_021A0586:
	ldr r0, _021A05D0 ; =0x021A08A5
	bl sub_02175578
	b _021A052A
_021A058E:
	ldr r0, _021A05CC ; =0x021A47CC
	ldr r0, [r0]
	cmp r0, #1
	bne _021A05B2
	mov r0, #0
	mov r1, #0
	bl sub_0203D2BC
	bl sub_02175164
	b _021A052A
_021A05A4:
	ldr r0, _021A05C8 ; =0x0000001E
	bl sub_0203CDC8
	mov r0, #0
	str r0, [r5, #0x20]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A05B2:
	bl sub_020810FC
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203E7F8
	bl sub_0203E838
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A05C8: .word 0x0000001E
_021A05CC: .word 0x021A47CC
_021A05D0: .word 0x021A08A5
_021A05D4: .word ovy181_21a08b0
	thumb_func_end ovy181_21a0494

	thumb_func_start ovy181_21a05d8
ovy181_21a05d8: ; 0x021A05D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #9
	bls _021A05E6
	b _021A06FC
_021A05E6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A05F2: ; jump table
	.short _021A0606 - _021A05F2 - 2 ; case 0
	.short _021A061C - _021A05F2 - 2 ; case 1
	.short _021A0628 - _021A05F2 - 2 ; case 2
	.short _021A0630 - _021A05F2 - 2 ; case 3
	.short _021A0656 - _021A05F2 - 2 ; case 4
	.short _021A0676 - _021A05F2 - 2 ; case 5
	.short _021A06C4 - _021A05F2 - 2 ; case 6
	.short _021A06DA - _021A05F2 - 2 ; case 7
	.short _021A06EC - _021A05F2 - 2 ; case 8
	.short _021A06F8 - _021A05F2 - 2 ; case 9
_021A0606:
	ldr r0, [r4, #4]
	bl ovy181_219f6ac
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
_021A0614:
	ldr r0, [r5]
	add r0, r0, #1
_021A0618:
	str r0, [r5]
	b _021A06FC
_021A061C:
	ldr r0, [r4, #4]
	bl sub_0219F7B8
	cmp r0, #0
	beq _021A06FC
	b _021A0614
_021A0628:
	ldr r0, [r4, #4]
	bl ovy181_219f7c8
	b _021A0614
_021A0630:
	ldr r1, [r4, #0xc]
	add r0, r1, #1
	str r0, [r4, #0xc]
	ldr r0, _021A0700 ; =0x00000708
	cmp r1, r0
	blo _021A064A
	mov r0, #1
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	bl ovy181_219f798
	mov r0, #9
	b _021A0618
_021A064A:
	ldr r0, [r4, #4]
	bl sub_0219F800
	cmp r0, #0
	beq _021A06FC
	b _021A0614
_021A0656:
	bl sub_02017BCC
	str r0, [r4, #0x24]
	bl sub_02048B84
	add r1, r4, #0
	add r1, #0x2a
	strb r0, [r1]
	ldr r0, [r4, #4]
	add r4, #0x24
	add r1, r4, #0
	bl ovy181_219fb38
	cmp r0, #0
	beq _021A06FC
	b _021A0614
_021A0676:
	ldr r0, [r4, #4]
	bl sub_0219F810
	cmp r0, #0xa
	bne _021A068E
	mov r0, #2
_021A0682:
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	bl ovy181_219f7d8
	mov r0, #7
	b _021A0618
_021A068E:
	ldr r0, [r4, #4]
	bl sub_0219F810
	cmp r0, #0xb
	bne _021A069C
	mov r0, #3
	b _021A0682
_021A069C:
	ldr r0, [r4, #4]
	bl sub_0219F810
	cmp r0, #0xc
	bne _021A06AA
	mov r0, #4
	b _021A0682
_021A06AA:
	ldr r0, [r4, #4]
	bl sub_0219F978
	cmp r0, #0
	beq _021A06FC
	ldr r0, [r4, #4]
	mov r1, #0x16
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _021A06FC
	b _021A0614
_021A06C4:
	ldr r0, [r4, #4]
	mov r1, #0x12
	mov r2, #0
	bl ovy181_219f9ac
	cmp r0, #1
	bne _021A06FC
	ldr r0, [r4, #4]
	bl ovy181_219f7d8
	b _021A0614
_021A06DA:
	ldr r0, [r4, #4]
	bl sub_0219F7F0
	cmp r0, #0
	beq _021A06FC
	ldr r0, [r4, #4]
	bl ovy181_219f798
	b _021A0614
_021A06EC:
	ldr r0, [r4, #4]
	bl sub_0219F7C0
	cmp r0, #0
	beq _021A06FC
	b _021A0614
_021A06F8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A06FC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0700: .word 0x00000708
	thumb_func_end ovy181_21a05d8

	thumb_func_start ovy181_21a0704
ovy181_21a0704: ; 0x021A0704
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r5, _021A0814 ; =0x00000212
	str r2, [sp, #0xc]
	str r5, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r3, _021A0818 ; =0x021A46C8
	mov r1, #0x3c
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, _021A081C ; =0x021A46E4
	ldr r3, _021A0818 ; =0x021A46C8
	str r0, [r4]
	add r0, r5, #7
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0x60
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	bl sub_020485F8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [r4, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	bl sub_020486F0
	ldr r1, [sp, #0x10]
	lsl r2, r7, #1
	blx MIi_CpuCopy16
	ldr r1, [r4, #4]
	lsl r0, r7, #1
	strh r6, [r1, r0]
	add r5, #0xf
	str r5, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _021A0818 ; =0x021A46C8
	mov r1, #0xc0
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	bl sub_020485F8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r5, [r4, #8]
	ldr r0, [sp, #8]
	bl sub_020486F0
	add r1, r5, #0
	lsl r2, r7, #1
	blx MIi_CpuCopy16
	lsl r0, r7, #1
	ldr r1, [r4, #8]
	ldr r7, _021A0820 ; =0x0000FEE0
	strh r6, [r1, r0]
	ldr r0, _021A0820 ; =0x0000FEE0
	add r7, #0x39
	add r0, #0x30
_021A0794:
	ldr r3, [r4, #8]
	lsl r2, r6, #1
	ldrh r1, [r3, r2]
	ldr r5, _021A0824 ; =0x0000FFFE
	cmp r1, r5
	bne _021A07A4
	mov r1, #0xa
	b _021A07B0
_021A07A4:
	cmp r1, r0
	blo _021A07B2
	cmp r1, r7
	bhi _021A07B2
	ldr r5, _021A0820 ; =0x0000FEE0
	sub r1, r1, r5
_021A07B0:
	strh r1, [r3, r2]
_021A07B2:
	add r6, r6, #1
	cmp r6, #0x60
	blt _021A0794
	ldr r0, _021A0828 ; =0x0000FF24
	ldr r7, _021A0828 ; =0x0000FF24
	sub r0, #0x44
	mov ip, r0
	ldr r0, _021A0828 ; =0x0000FF24
	ldr r6, _021A0828 ; =0x0000FF24
	add r0, r0, #5
	mov r3, #0
	sub r7, #0xb
	sub r6, #0x14
	str r0, [sp, #0x14]
_021A07CE:
	ldr r2, [r4, #4]
	lsl r1, r3, #1
	ldrh r0, [r2, r1]
	ldr r5, [sp, #0x14]
	cmp r0, r5
	bne _021A07DE
	mov r0, #0x49
	b _021A07F4
_021A07DE:
	ldr r5, _021A0828 ; =0x0000FF24
	cmp r0, r5
	bne _021A07E8
	mov r0, #0x44
	b _021A07F4
_021A07E8:
	cmp r0, r6
	blo _021A07F6
	cmp r0, r7
	bhi _021A07F6
	mov r5, ip
	sub r0, r0, r5
_021A07F4:
	strh r0, [r2, r1]
_021A07F6:
	add r3, r3, #1
	cmp r3, #0x30
	blt _021A07CE
	ldr r0, _021A082C ; =0x021A4700
	str r0, [r4, #0xc]
	ldr r0, _021A0830 ; =0x021A4714
	str r0, [r4, #0x10]
	mov r0, #0x4e
	lsl r0, r0, #6
	str r0, [r4, #0x14]
	mov r0, #2
	strb r0, [r4, #0x18]
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0814: .word 0x00000212
_021A0818: .word 0x021A46C8
_021A081C: .word 0x021A46E4
_021A0820: .word 0x0000FEE0
_021A0824: .word 0x0000FFFE
_021A0828: .word 0x0000FF24
_021A082C: .word 0x021A4700
_021A0830: .word 0x021A4714
	thumb_func_end ovy181_21a0704

	thumb_func_start ovy181_21a0834
ovy181_21a0834: ; 0x021A0834
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0203A24C
	ldr r0, [r4, #4]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy181_21a0834

	thumb_func_start ovy181_21a084c
ovy181_21a084c: ; 0x021A084C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F4C0
	cmp r0, #7
	bhi _021A089E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0864: ; jump table
	.short _021A089A - _021A0864 - 2 ; case 0
	.short _021A089E - _021A0864 - 2 ; case 1
	.short _021A0874 - _021A0864 - 2 ; case 2
	.short _021A089E - _021A0864 - 2 ; case 3
	.short _021A089E - _021A0864 - 2 ; case 4
	.short _021A0894 - _021A0864 - 2 ; case 5
	.short _021A089E - _021A0864 - 2 ; case 6
	.short _021A0898 - _021A0864 - 2 ; case 7
_021A0874:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021A0880
_021A087A:
	bl ovy181_219f278
	b _021A089E
_021A0880:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021A089E
	bl ovy181_219f1bc
	cmp r0, #0
	beq _021A089E
	bl ovy181_219f1f8
	b _021A089E
_021A0894:
	mov r0, #1
	pop {r4, pc}
_021A0898:
	b _021A087A
_021A089A:
	mov r0, #2
	pop {r4, pc}
_021A089E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a084c
_021A08A4:
	.byte 0x01, 0x49, 0x01, 0x20, 0x08, 0x60, 0x70, 0x47, 0xCC, 0x47, 0x1A, 0x02

	thumb_func_start ovy181_21a08b0
ovy181_21a08b0: ; 0x021A08B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0219F574
	cmp r0, #1
	bne _021A08C0
	bl ovy181_219f278
_021A08C0:
	mov r4, #1
	b _021A08CC
_021A08C4:
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02079BB0
_021A08CC:
	bl sub_0219F4C0
	cmp r0, #0
	beq _021A08DC
	bl sub_0219F4C0
	cmp r0, #5
	bne _021A08C4
_021A08DC:
	ldr r0, [r5, #0x20]
	cmp r0, #1
	bne _021A0920
	ldr r0, _021A0924 ; =0x021A47CC
	mov r1, #0
	ldr r5, _021A0928 ; =0x021A08A5
	str r1, [r0]
	add r0, r5, #0
	bl sub_02175578
	cmp r0, #0
	beq _021A0908
	mov r4, #1
_021A08F6:
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02079BB0
	add r0, r5, #0
	bl sub_02175578
	cmp r0, #0
	bne _021A08F6
_021A0908:
	ldr r5, _021A0924 ; =0x021A47CC
	ldr r0, [r5]
	cmp r0, #0
	bne _021A0920
	mov r4, #1
_021A0912:
	add r0, r4, #0
	add r1, r4, #0
	blx sub_02079BB0
	ldr r0, [r5]
	cmp r0, #0
	beq _021A0912
_021A0920:
	pop {r3, r4, r5, pc}
	nop
_021A0924: .word 0x021A47CC
_021A0928: .word 0x021A08A5
	thumb_func_end ovy181_21a08b0

	thumb_func_start ovy181_21a092c
ovy181_21a092c: ; 0x021A092C
	push {r4, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	ldr r1, _021A0944 ; =0x021A48A0
	ldr r2, [r1]
	ldr r1, _021A0948 ; =0x000014E4
	str r4, [r2, r1]
	blx OS_RestoreInterrupts
	pop {r4, pc}
	nop
_021A0944: .word 0x021A48A0
_021A0948: .word 0x000014E4
	thumb_func_end ovy181_21a092c

	thumb_func_start ovy181_21a094c
ovy181_21a094c: ; 0x021A094C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r6, _021A0998 ; =0x021A48A0
	add r4, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _021A098E
	add r0, r5, #0
	bl sub_021A1678
	cmp r0, #0
	beq _021A098E
	mov r0, #0x4d
	sub r3, r5, #1
	mov r2, #0x16
	ldr r1, [r6]
	lsl r0, r0, #6
	ldr r5, _021A099C ; =0x00001772
	add r0, r1, r0
	mul r2, r3
	add r0, r0, r2
	add r1, r1, r5
	mov r2, #0x16
	blx MI_CpuCopy8
	add r0, r4, #0
	blx OS_RestoreInterrupts
	ldr r0, [r6]
	add r0, r0, r5
	pop {r4, r5, r6, pc}
_021A098E:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0998: .word 0x021A48A0
_021A099C: .word 0x00001772
	thumb_func_end ovy181_21a094c

	thumb_func_start ovy181_21a09a0
ovy181_21a09a0: ; 0x021A09A0
	push {r3, r4, r5, lr}
	ldr r5, _021A09CC ; =0x021A48A0
	add r4, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021A09C8
	bl sub_021A1678
	cmp r0, #0
	beq _021A09C8
	sub r0, r4, #1
	ldr r1, [r5]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, _021A09D0 ; =0x000014E8
	ldr r0, [r1, r0]
	cmp r0, #7
	bne _021A09C8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A09C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A09CC: .word 0x021A48A0
_021A09D0: .word 0x000014E8
	thumb_func_end ovy181_21a09a0

	thumb_func_start ovy181_21a09d4
ovy181_21a09d4: ; 0x021A09D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	cmp r4, #3
	bhi _021A0A10
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A09F0: ; jump table
	.short _021A09F8 - _021A09F0 - 2 ; case 0
	.short _021A09FE - _021A09F0 - 2 ; case 1
	.short _021A0A04 - _021A09F0 - 2 ; case 2
	.short _021A0A0A - _021A09F0 - 2 ; case 3
_021A09F8:
	mov r5, #0xa
	mov r4, #4
	b _021A0A1A
_021A09FE:
	mov r5, #0xa
	mov r4, #3
	b _021A0A1A
_021A0A04:
	mov r5, #0xe
	mov r4, #2
	b _021A0A1A
_021A0A0A:
	mov r5, #7
	mov r4, #5
	b _021A0A1A
_021A0A10:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A0A1A:
	ldr r0, _021A0A5C ; =0x021A48A0
	ldr r0, [r0]
	cmp r0, #0
	beq _021A0A50
	add r0, r6, #0
	bl sub_021A1678
	cmp r0, #0
	beq _021A0A50
	ldr r0, _021A0A5C ; =0x021A48A0
	sub r1, r6, #1
	ldr r0, [r0]
	lsl r2, r1, #2
	add r3, r0, r2
	ldr r2, _021A0A60 ; =0x000014E8
	ldr r2, [r3, r2]
	cmp r5, r2
	bne _021A0A50
	lsl r1, r1, #1
	add r1, r0, r1
	ldr r0, _021A0A64 ; =0x00001754
	strh r4, [r1, r0]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A0A50:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0A5C: .word 0x021A48A0
_021A0A60: .word 0x000014E8
_021A0A64: .word 0x00001754
	thumb_func_end ovy181_21a09d4

	thumb_func_start ovy181_21a0a68
ovy181_21a0a68: ; 0x021A0A68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021A1678
	cmp r0, #0
	beq _021A0A86
	ldr r0, _021A0A94 ; =0x021A48A0
	ldr r1, [r0]
	sub r0, r5, #1
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, _021A0A98 ; =0x000014E8
	str r4, [r1, r0]
_021A0A86:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy181_21a0a9c
	pop {r4, r5, r6, pc}
	nop
_021A0A94: .word 0x021A48A0
_021A0A98: .word 0x000014E8
	thumb_func_end ovy181_21a0a68

	thumb_func_start ovy181_21a0a9c
ovy181_21a0a9c: ; 0x021A0A9C
	push {r4, lr}
	ldr r3, _021A0AB0 ; =0x021A48A0
	ldr r4, [r3]
	ldr r3, _021A0AB4 ; =0x000014E4
	ldr r3, [r4, r3]
	cmp r3, #0
	beq _021A0AAC
	blx r3
_021A0AAC:
	pop {r4, pc}
	nop
_021A0AB0: .word 0x021A48A0
_021A0AB4: .word 0x000014E4
	thumb_func_end ovy181_21a0a9c

	thumb_func_start ovy181_21a0ab8
ovy181_21a0ab8: ; 0x021A0AB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r4, r1, #0
	cmp r7, #0x19
	bgt _021A0AEA
	blt _021A0AC8
	b _021A0C72
_021A0AC8:
	cmp r7, #0x11
	bgt _021A0AE4
	bge _021A0AE2
	cmp r7, #3
	bgt _021A0AE2
	cmp r7, #0
	blt _021A0AE2
	beq _021A0B12
	cmp r7, #1
	beq _021A0B20
	cmp r7, #3
	bne _021A0AE2
	b _021A0C6A
_021A0AE2:
	b _021A0D80
_021A0AE4:
	cmp r7, #0x15
	beq _021A0B06
	b _021A0D80
_021A0AEA:
	cmp r7, #0xff
	bgt _021A0AFA
	blt _021A0AF2
	b _021A0CEE
_021A0AF2:
	cmp r7, #0x1c
	bne _021A0AF8
	b _021A0C78
_021A0AF8:
	b _021A0D80
_021A0AFA:
	mov r0, #1
	lsl r0, r0, #8
	cmp r7, r0
	bne _021A0B04
	b _021A0D28
_021A0B04:
	b _021A0D80
_021A0B06:
	mov r0, #0
	mov r1, #1
_021A0B0A:
	add r2, r4, #0
	bl ovy181_21a0a68
	b _021A0D80
_021A0B12:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _021A0B2A
	cmp r0, #0x10
	bhs _021A0B2A
	mov r1, #2
	b _021A0B0A
_021A0B20:
	ldrh r2, [r4, #0x10]
	cmp r2, #0
	beq _021A0B2A
	cmp r2, #0x10
	blo _021A0B2C
_021A0B2A:
	b _021A0D80
_021A0B2C:
	ldr r0, _021A0DAC ; =0x021A48A0
	ldr r1, [r0]
	sub r0, r2, #1
	lsl r0, r0, #1
	add r2, r1, r0
	ldr r0, _021A0DB0 ; =0x0000148A
	mov r1, #0
	strh r1, [r2, r0]
	str r0, [sp, #8]
	ldr r0, _021A0DAC ; =0x021A48A0
	mov r2, #4
	ldr r1, [r0]
	ldr r0, [sp, #8]
	add r0, #0x1e
	add r1, r1, r0
	ldrh r0, [r4, #0x10]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	blx MI_CpuFill8
	ldr r0, _021A0DAC ; =0x021A48A0
	mov r5, #0x16
	ldr r1, [r0]
	mov r0, #0x4d
	lsl r0, r0, #6
	add r2, r1, r0
	ldrh r0, [r4, #0x10]
	sub r0, r0, #1
	add r1, r0, #0
	mul r1, r5
	add r0, r2, r1
	mov r1, #0
	mov r2, #0x16
	blx MI_CpuFill8
	ldrh r0, [r4, #0x10]
	bl ovy181_21a3e78
	ldr r0, _021A0DAC ; =0x021A48A0
	sub r5, #0x17
	ldr r1, [r0]
	ldrh r0, [r4, #0x10]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r2, r1, r0
	ldr r1, _021A0DB4 ; =0x00001754
	mov r0, #0
	strh r0, [r2, r1]
	ldr r1, _021A0DAC ; =0x021A48A0
	ldrh r0, [r4, #0x10]
	ldr r3, [r1]
	sub r1, r0, #1
	str r1, [sp]
	add r2, r3, r1
	ldr r1, [sp, #8]
	add r1, #0x9c
	ldrsb r1, [r2, r1]
	cmp r1, r5
	beq _021A0C04
	mov r2, #1
	lsl r2, r0
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mvn r0, r2
	str r2, [sp, #4]
	add r2, r5, #0
	ldr r1, _021A0DB8 ; =0x000005D4
	lsl r0, r0, #0x10
	mul r2, r1
	lsr r0, r0, #0x10
	ldr r5, _021A0DBC ; =0x00001D4E
	add r3, r3, r2
	ldrh r1, [r3, r5]
	mov ip, r0
	and r0, r1
	strh r0, [r3, r5]
	ldr r0, _021A0DAC ; =0x021A48A0
	ldr r3, [sp, #4]
	ldr r0, [r0]
	lsl r3, r3, #0x10
	add r1, r0, r2
	add r0, r5, #2
	ldrh r0, [r1, r0]
	lsr r3, r3, #0x10
	orr r3, r0
	add r0, r5, #2
	strh r3, [r1, r0]
	ldr r1, _021A0DAC ; =0x021A48A0
	mov r0, #1
	ldr r3, [r1]
	ldr r1, [sp]
	sub r0, r0, #2
	add r3, r3, r1
	ldr r1, [sp, #8]
	add r1, #0x9c
	strb r0, [r3, r1]
	ldr r0, _021A0DAC ; =0x021A48A0
	str r1, [sp, #8]
	ldr r0, [r0]
	sub r1, r5, #2
	add r0, r0, r2
	ldrh r2, [r0, r1]
	mov r1, ip
	and r2, r1
	sub r1, r5, #2
	strh r2, [r0, r1]
_021A0C04:
	ldr r6, _021A0DAC ; =0x021A48A0
	ldr r0, _021A0DC0 ; =0x00001536
	ldr r2, [r6]
	ldrh r5, [r4, #0x10]
	mov r3, #1
	ldrh r1, [r2, r0]
	lsl r3, r5
	tst r1, r3
	beq _021A0C34
	sub r1, r0, #1
	ldrb r1, [r2, r1]
	sub r3, r1, #1
	sub r1, r0, #1
	strb r3, [r2, r1]
	ldrh r5, [r4, #0x10]
	mov r3, #1
	ldr r2, [r6]
	lsl r3, r5
	mvn r3, r3
	lsl r3, r3, #0x10
	ldrh r1, [r2, r0]
	lsr r3, r3, #0x10
	and r1, r3
	strh r1, [r2, r0]
_021A0C34:
	ldrh r0, [r4, #0x10]
	ldr r2, [r6]
	sub r1, r0, #1
	lsl r1, r1, #2
	add r2, r2, r1
	ldr r1, _021A0DC4 ; =0x000014E8
	ldr r1, [r2, r1]
	cmp r1, #8
	bne _021A0C4E
	mov r1, #9
	mov r2, #0
	bl ovy181_21a0a68
_021A0C4E:
	ldrh r0, [r4, #0x10]
	mov r1, #3
	add r2, r4, #0
	bl ovy181_21a0a68
	ldrh r1, [r4, #0x10]
	ldr r2, [r6]
	mov r0, #0
	sub r1, r1, #1
	lsl r1, r1, #2
	add r2, r2, r1
	ldr r1, _021A0DC4 ; =0x000014E8
	str r0, [r2, r1]
	b _021A0D80
_021A0C6A:
	add r0, r4, #0
	bl ovy181_21a10e0
	b _021A0D80
_021A0C72:
	bl ovy181_21a1500
	b _021A0D80
_021A0C78:
	ldr r0, _021A0DBC ; =0x00001D4E
	mov r4, #0
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, _021A0DBC ; =0x00001D4E
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021A0DBC ; =0x00001D4E
	add r0, r0, #4
	str r0, [sp, #0xc]
_021A0C8C:
	ldr r0, _021A0DAC ; =0x021A48A0
	add r5, r4, #0
	ldr r6, [r0]
	ldr r0, _021A0DB8 ; =0x000005D4
	mul r5, r0
	ldr r0, [sp, #0xc]
	add r2, r6, r5
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _021A0CC8
	ldr r0, [sp, #0x10]
	ldrh r3, [r2, r0]
	cmp r3, #0
	beq _021A0CC8
	ldr r0, _021A0DC8 ; =0x0000186C
	mov r1, #0x4d
	lsl r1, r1, #6
	add r0, r6, r0
	add r1, r6, r1
	ldr r6, _021A0DBC ; =0x00001D4E
	add r0, r0, r5
	ldrh r2, [r2, r6]
	bl ovy181_21a2198
	ldr r0, _021A0DAC ; =0x021A48A0
	mov r1, #0
	ldr r0, [r0]
	add r2, r0, r5
	ldr r0, [sp, #0x14]
	strh r1, [r2, r0]
_021A0CC8:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x10
	blo _021A0C8C
	bl sub_021A3A88
	add r4, r0, #0
	bl sub_021A3A94
	add r5, r0, #0
	bl ovy181_21a3aa0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy181_21a226c
	b _021A0D80
_021A0CEE:
	ldrh r0, [r4, #2]
	cmp r0, #0xf
	bhi _021A0D26
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0D00: ; jump table
	.short _021A0D26 - _021A0D00 - 2 ; case 0
	.short _021A0D20 - _021A0D00 - 2 ; case 1
	.short _021A0D26 - _021A0D00 - 2 ; case 2
	.short _021A0D26 - _021A0D00 - 2 ; case 3
	.short _021A0D20 - _021A0D00 - 2 ; case 4
	.short _021A0D20 - _021A0D00 - 2 ; case 5
	.short _021A0D20 - _021A0D00 - 2 ; case 6
	.short _021A0D26 - _021A0D00 - 2 ; case 7
	.short _021A0D20 - _021A0D00 - 2 ; case 8
	.short _021A0D20 - _021A0D00 - 2 ; case 9
	.short _021A0D26 - _021A0D00 - 2 ; case 10
	.short _021A0D26 - _021A0D00 - 2 ; case 11
	.short _021A0D26 - _021A0D00 - 2 ; case 12
	.short _021A0D26 - _021A0D00 - 2 ; case 13
	.short _021A0D26 - _021A0D00 - 2 ; case 14
	.short _021A0D26 - _021A0D00 - 2 ; case 15
_021A0D20:
	mov r0, #0
	mov r1, #9
	b _021A0D7C
_021A0D26:
	b _021A0D78
_021A0D28:
	ldrh r0, [r4]
	cmp r0, #0x1d
	bhi _021A0D78
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0D3A: ; jump table
	.short _021A0D76 - _021A0D3A - 2 ; case 0
	.short _021A0D78 - _021A0D3A - 2 ; case 1
	.short _021A0D78 - _021A0D3A - 2 ; case 2
	.short _021A0D78 - _021A0D3A - 2 ; case 3
	.short _021A0D78 - _021A0D3A - 2 ; case 4
	.short _021A0D78 - _021A0D3A - 2 ; case 5
	.short _021A0D78 - _021A0D3A - 2 ; case 6
	.short _021A0D76 - _021A0D3A - 2 ; case 7
	.short _021A0D76 - _021A0D3A - 2 ; case 8
	.short _021A0D78 - _021A0D3A - 2 ; case 9
	.short _021A0D78 - _021A0D3A - 2 ; case 10
	.short _021A0D78 - _021A0D3A - 2 ; case 11
	.short _021A0D78 - _021A0D3A - 2 ; case 12
	.short _021A0D76 - _021A0D3A - 2 ; case 13
	.short _021A0D76 - _021A0D3A - 2 ; case 14
	.short _021A0D76 - _021A0D3A - 2 ; case 15
	.short _021A0D78 - _021A0D3A - 2 ; case 16
	.short _021A0D76 - _021A0D3A - 2 ; case 17
	.short _021A0D76 - _021A0D3A - 2 ; case 18
	.short _021A0D78 - _021A0D3A - 2 ; case 19
	.short _021A0D78 - _021A0D3A - 2 ; case 20
	.short _021A0D76 - _021A0D3A - 2 ; case 21
	.short _021A0D78 - _021A0D3A - 2 ; case 22
	.short _021A0D78 - _021A0D3A - 2 ; case 23
	.short _021A0D78 - _021A0D3A - 2 ; case 24
	.short _021A0D76 - _021A0D3A - 2 ; case 25
	.short _021A0D78 - _021A0D3A - 2 ; case 26
	.short _021A0D78 - _021A0D3A - 2 ; case 27
	.short _021A0D78 - _021A0D3A - 2 ; case 28
	.short _021A0D76 - _021A0D3A - 2 ; case 29
_021A0D76:
	b _021A0D20
_021A0D78:
	mov r0, #0
	mov r1, #8
_021A0D7C:
	bl ovy181_21a1688
_021A0D80:
	ldr r4, _021A0DAC ; =0x021A48A0
	cmp r7, #0x11
	bne _021A0DA6
	ldr r1, [r4]
	ldr r0, _021A0DCC ; =0x000014E4
	mov r2, #0x7d
	ldr r5, [r1, r0]
	mov r0, #0
	lsl r2, r2, #8
	mov r6, #0
	blx MIi_CpuClearFast
	str r6, [r4]
	cmp r5, #0
	beq _021A0DA6
	add r0, r6, #0
	mov r1, #0xc
	add r2, r6, #0
	blx r5
_021A0DA6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0DAC: .word 0x021A48A0
_021A0DB0: .word 0x0000148A
_021A0DB4: .word 0x00001754
_021A0DB8: .word 0x000005D4
_021A0DBC: .word 0x00001D4E
_021A0DC0: .word 0x00001536
_021A0DC4: .word 0x000014E8
_021A0DC8: .word 0x0000186C
_021A0DCC: .word 0x000014E4
	thumb_func_end ovy181_21a0ab8

	thumb_func_start ovy181_21a0dd0
ovy181_21a0dd0: ; 0x021A0DD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r7, _021A10B4 ; =0x021A48A0
	add r4, r1, #0
	beq _021A0DDE
	cmp r4, #0xf
	bls _021A0DE0
_021A0DDE:
	b _021A10B0
_021A0DE0:
	add r0, #0xa
	add r1, sp, #0x24
	add r2, r4, #0
	bl ovy181_21a3ef0
	sub r1, r4, #1
	ldr r2, [r7]
	lsl r3, r1, #2
	ldr r6, _021A10B8 ; =0x000014E8
	add r3, r2, r3
	ldr r5, [r3, r6]
	add r3, sp, #0x24
	ldrb r3, [r3]
	str r0, [sp]
	cmp r3, #0xb
	bhi _021A0E28
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021A0E0C: ; jump table
	.short _021A10B0 - _021A0E0C - 2 ; case 0
	.short _021A10B0 - _021A0E0C - 2 ; case 1
	.short _021A10B0 - _021A0E0C - 2 ; case 2
	.short _021A10B0 - _021A0E0C - 2 ; case 3
	.short _021A10B0 - _021A0E0C - 2 ; case 4
	.short _021A10B0 - _021A0E0C - 2 ; case 5
	.short _021A10B0 - _021A0E0C - 2 ; case 6
	.short _021A0E24 - _021A0E0C - 2 ; case 7
	.short _021A0FC4 - _021A0E0C - 2 ; case 8
	.short _021A1022 - _021A0E0C - 2 ; case 9
	.short _021A105E - _021A0E0C - 2 ; case 10
	.short _021A10B0 - _021A0E0C - 2 ; case 11
_021A0E24:
	add r1, r0, #0
	bne _021A0E2A
_021A0E28:
	b _021A10B0
_021A0E2A:
	cmp r5, #2
	bne _021A0E96
	add r1, sp, #4
	mov r2, #0x1d
	blx MI_CpuCopy8
	sub r1, r4, #1
	ldr r3, [r7]
	lsl r2, r1, #2
	add r3, r3, r2
	add r2, r6, #0
	ldr r0, [sp, #4]
	sub r2, #0x40
	str r0, [r3, r2]
	add r0, sp, #4
	ldrh r3, [r0, #0x1a]
	ldr r2, [r7]
	lsl r0, r1, #1
	add r0, r2, r0
	sub r6, #0x5e
	strh r3, [r0, r6]
	mov r2, #0x4d
	ldr r3, [r7]
	lsl r2, r2, #6
	add r3, r3, r2
	mov r6, #0x16
	add r2, r1, #0
	mul r2, r6
	add r1, r3, r2
	add r0, sp, #8
	mov r2, #0x16
	blx MI_CpuCopy8
	mov r0, #0x4d
	ldr r1, [r7]
	lsl r0, r0, #6
	add r2, r1, r0
	sub r0, r4, #1
	add r1, r0, #0
	mul r1, r6
	ldrb r0, [r2, r1]
	mov r3, #0xf0
	bic r0, r3
	lsl r3, r4, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	orr r0, r3
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa
	add r2, sp, #8
	bl ovy181_21a0a68
_021A0E96:
	cmp r5, #0xa
	bne _021A0F54
	ldr r0, [sp]
	mov r6, #0
	ldrb r7, [r0, #0x1c]
	cmp r7, #0x10
	bhs _021A0ECC
	ldr r0, _021A10B4 ; =0x021A48A0
	ldr r1, [r0]
	ldr r0, _021A10BC ; =0x000005D4
	mul r0, r7
	add r3, r1, r0
	ldr r0, _021A10C0 ; =0x00001D52
	ldrb r2, [r3, r0]
	cmp r2, #0
	beq _021A0ECC
	sub r2, r4, #1
	lsl r2, r2, #2
	add r2, r1, r2
	ldr r1, _021A10C4 ; =0x000014A8
	ldr r1, [r2, r1]
	add r2, r0, #0
	sub r2, #0x12
	ldr r2, [r3, r2]
	ldr r2, [r2, #0x14]
	cmp r1, r2
	beq _021A0EDE
_021A0ECC:
	ldr r1, _021A10B4 ; =0x021A48A0
	mov r0, #4
	ldr r2, [r1]
	sub r1, r4, #1
	lsl r1, r1, #1
	add r2, r2, r1
	ldr r1, _021A10C8 ; =0x00001754
	strh r0, [r2, r1]
	b _021A0F2C
_021A0EDE:
	add r5, r6, #0
	sub r0, r0, #4
	b _021A0EFA
_021A0EE4:
	mov r2, #1
	ldrh r1, [r3, r0]
	lsl r2, r5
	tst r1, r2
	beq _021A0EF4
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
_021A0EF4:
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
_021A0EFA:
	cmp r5, #0x10
	blo _021A0EE4
	ldr r0, _021A10B4 ; =0x021A48A0
	ldr r1, _021A10BC ; =0x000005D4
	ldr r0, [r0]
	mul r1, r7
	add r2, r0, r1
	mov r1, #0x75
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	ldrb r1, [r1, #0x18]
	cmp r6, r1
	blo _021A0F2C
	sub r1, r4, #1
	lsl r1, r1, #1
	add r1, r0, r1
	ldr r0, _021A10C8 ; =0x00001754
	mov r2, #0
	strh r2, [r1, r0]
	add r0, r4, #0
	mov r1, #0xb
	bl ovy181_21a0a68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A0F2C:
	ldr r0, _021A10B4 ; =0x021A48A0
	sub r6, r4, #1
	ldr r3, [r0]
	lsl r0, r6, #1
	mov ip, r0
	ldr r1, _021A10C8 ; =0x00001754
	add r0, r3, r0
	ldrh r1, [r0, r1]
	cmp r1, #3
	beq _021A0F48
	cmp r1, #4
	beq _021A0FB2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A0F48:
	ldr r1, _021A10CC ; =0x00001536
	mov r5, #1
	ldrh r0, [r3, r1]
	lsl r5, r4
	tst r0, r5
	beq _021A0F56
_021A0F54:
	b _021A10B0
_021A0F56:
	sub r0, r1, #1
	ldrb r0, [r3, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r3, r0]
	ldr r0, _021A10B4 ; =0x021A48A0
	lsl r3, r5, #0x10
	ldr r2, [r0]
	lsr r3, r3, #0x10
	ldrh r0, [r2, r1]
	orr r0, r3
	strh r0, [r2, r1]
	ldr r0, _021A10B4 ; =0x021A48A0
	sub r1, #0x10
	ldr r0, [r0]
	add r0, r0, r6
	strb r7, [r0, r1]
	ldr r0, _021A10B4 ; =0x021A48A0
	ldr r1, [r0]
	ldr r0, _021A10D0 ; =0x00001D4E
	add r2, r1, r0
	ldr r1, _021A10BC ; =0x000005D4
	add r0, r0, #2
	mul r1, r7
	ldrh r5, [r2, r1]
	orr r5, r3
	strh r5, [r2, r1]
	ldr r2, _021A10B4 ; =0x021A48A0
	ldr r2, [r2]
	add r2, r2, r0
	ldrh r0, [r2, r1]
	orr r0, r3
	strh r0, [r2, r1]
	ldr r0, _021A10B4 ; =0x021A48A0
	mov r2, #0
	ldr r1, [r0]
	mov r0, ip
	add r1, r1, r0
	ldr r0, _021A10C8 ; =0x00001754
	strh r2, [r1, r0]
	add r0, r4, #0
	mov r1, #5
	bl ovy181_21a0a68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A0FB2:
	ldr r1, _021A10C8 ; =0x00001754
	mov r2, #0
	strh r2, [r0, r1]
	add r0, r4, #0
	mov r1, #4
	bl ovy181_21a0a68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A0FC4:
	cmp r5, #5
	bne _021A0FD6
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy181_21a0a68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A0FD6:
	cmp r5, #0xe
	bne _021A10B0
	lsl r5, r1, #1
	ldr r0, _021A10C8 ; =0x00001754
	add r3, r2, r5
	ldrh r0, [r3, r0]
	cmp r0, #2
	bne _021A10B0
	add r0, r2, r1
	add r6, #0x3e
	ldrb r0, [r0, r6]
	ldr r6, _021A10D4 ; =0x00001D4C
	ldr r1, _021A10BC ; =0x000005D4
	mov r3, #1
	lsl r3, r4
	lsl r3, r3, #0x10
	add r2, r2, r6
	mul r1, r0
	ldrh r0, [r2, r1]
	lsr r3, r3, #0x10
	orr r0, r3
	strh r0, [r2, r1]
	ldr r2, [r7]
	mov r0, #0
	add r2, r2, r1
	sub r1, r6, #4
	strh r0, [r2, r1]
	ldr r1, [r7]
	add r2, r1, r5
	ldr r1, _021A10C8 ; =0x00001754
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ovy181_21a0a68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A1022:
	cmp r5, #6
	bne _021A10B0
	add r0, r2, r1
	add r6, #0x3e
	ldrb r4, [r0, r6]
	cmp r4, #0xff
	beq _021A10B0
	ldr r6, _021A10BC ; =0x000005D4
	add r0, r4, #0
	mul r0, r6
	add r1, sp, #4
	ldr r5, _021A10D8 ; =0x00001D4A
	add r0, r2, r0
	ldrh r0, [r0, r5]
	ldrh r1, [r1, #0x22]
	bl sub_021A166C
	add r1, r4, #0
	ldr r2, [r7]
	mul r1, r6
	add r1, r2, r1
	strh r0, [r1, r5]
	ldr r0, _021A10DC ; =0x021A47D0
	mov r1, #1
	ldr r2, [r0]
	lsl r1, r4
	orr r1, r2
	str r1, [r0]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A105E:
	cmp r5, #6
	bne _021A1094
	add r0, r2, r1
	add r6, #0x3e
	ldrb r3, [r0, r6]
	cmp r3, #0xff
	beq _021A10B0
	ldr r0, _021A10D4 ; =0x00001D4C
	add r1, r3, #0
	add r2, r2, r0
	ldr r0, _021A10BC ; =0x000005D4
	mov r3, #1
	lsl r3, r4
	mul r1, r0
	mvn r3, r3
	lsl r3, r3, #0x10
	ldrh r0, [r2, r1]
	lsr r3, r3, #0x10
	and r0, r3
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl ovy181_21a0a68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A1094:
	cmp r5, #7
	bne _021A10B0
	lsl r0, r1, #1
	add r3, r2, r0
	ldr r0, _021A10C8 ; =0x00001754
	ldrh r1, [r3, r0]
	cmp r1, #5
	bne _021A10B0
	mov r2, #0
	strh r2, [r3, r0]
	add r0, r4, #0
	mov r1, #8
	bl ovy181_21a0a68
_021A10B0:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A10B4: .word 0x021A48A0
_021A10B8: .word 0x000014E8
_021A10BC: .word 0x000005D4
_021A10C0: .word 0x00001D52
_021A10C4: .word 0x000014A8
_021A10C8: .word 0x00001754
_021A10CC: .word 0x00001536
_021A10D0: .word 0x00001D4E
_021A10D4: .word 0x00001D4C
_021A10D8: .word 0x00001D4A
_021A10DC: .word 0x021A47D0
	thumb_func_end ovy181_21a0dd0

	thumb_func_start ovy181_21a10e0
ovy181_21a10e0: ; 0x021A10E0
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _021A1140 ; =0x00001D4A
	mov r1, #0
	ldr r4, _021A1144 ; =0x021A48A0
	ldr r7, _021A1148 ; =0x000005D4
	add r5, r0, #0
	add r6, r1, #0
	add r3, #8
_021A10F0:
	add r0, r1, #0
	ldr r2, [r4]
	mul r0, r7
	add r0, r2, r0
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _021A1102
	ldr r2, _021A1140 ; =0x00001D4A
	strh r6, [r0, r2]
_021A1102:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0x10
	blo _021A10F0
	ldr r0, _021A114C ; =0x021A47D0
	mov r1, #0
	ldr r6, _021A1150 ; =0x0000FFFF
	str r1, [r0]
	mov r4, #1
_021A1116:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081040
	cmp r0, #0
	beq _021A1132
	ldrh r1, [r0]
	cmp r1, r6
	beq _021A1132
	cmp r1, #0
	beq _021A1132
	add r1, r4, #0
	bl ovy181_21a0dd0
_021A1132:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xf
	bls _021A1116
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1140: .word 0x00001D4A
_021A1144: .word 0x021A48A0
_021A1148: .word 0x000005D4
_021A114C: .word 0x021A47D0
_021A1150: .word 0x0000FFFF
	thumb_func_end ovy181_21a10e0

	thumb_func_start ovy181_21a1154
ovy181_21a1154: ; 0x021A1154
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, _021A1178 ; =0x021A48A0
	add r4, r1, #0
	add r1, sp, #0
	strb r0, [r1]
	ldr r1, [r5]
	add r0, sp, #0
	bl sub_021A3EA4
	ldr r2, [r5]
	mov r0, #6
	add r1, r4, #0
	bl ovy181_21a2018
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021A1178: .word 0x021A48A0
	thumb_func_end ovy181_21a1154

	thumb_func_start ovy181_21a117c
ovy181_21a117c: ; 0x021A117C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, sp, #4
	add r7, #2
	mov r4, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x10
	mvn r4, r4
	mov r5, #0
	blx MI_CpuFill8
	ldr r0, _021A1278 ; =0x021A48A0
	ldr r3, _021A127C ; =0x00001525
	ldr r2, [r0]
	mov r1, #1
	sub r3, #0x41
_021A119E:
	lsl r0, r1, #2
	add r0, r2, r0
	ldr r0, [r0, r3]
	cmp r0, #5
	bne _021A11B4
	ldr r0, _021A127C ; =0x00001525
	add r6, r2, r1
	ldrsb r0, [r6, r0]
	ldrb r6, [r7, r0]
	add r6, r6, #1
	strb r6, [r7, r0]
_021A11B4:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0xf
	bls _021A119E
	ldr r0, _021A1280 ; =0x021A4728
	add r7, sp, #4
	ldrb r6, [r0]
	mov r0, #0
	add r7, #2
_021A11C8:
	add r1, r6, #1
	lsr r6, r1, #0x1f
	lsl r3, r1, #0x1c
	sub r3, r3, r6
	mov r1, #0x1c
	ror r3, r1
	add r1, r6, r3
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	ldr r1, _021A1284 ; =0x000005D4
	mul r1, r6
	add r3, r2, r1
	ldr r1, _021A1288 ; =0x00001D52
	ldrb r1, [r3, r1]
	cmp r1, #0
	beq _021A11F4
	ldrb r1, [r7, r6]
	cmp r1, #0
	beq _021A11F4
	lsl r0, r6, #0x18
	asr r4, r0, #0x18
	b _021A11FE
_021A11F4:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021A11C8
_021A11FE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021A120C
	add sp, #0x18
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_021A120C:
	ldr r7, _021A127C ; =0x00001525
	ldr r0, _021A1280 ; =0x021A4728
	add r6, r7, #0
	mov r1, #1
	strb r4, [r0]
	add r0, r1, #0
	sub r6, #0x41
_021A121A:
	lsl r3, r1, #2
	add r3, r2, r3
	ldr r3, [r3, r6]
	cmp r3, #5
	bne _021A1236
	add r3, r2, r1
	ldrsb r3, [r3, r7]
	cmp r4, r3
	bne _021A1236
	add r3, r0, #0
	lsl r3, r1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	orr r5, r3
_021A1236:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0xf
	bls _021A121A
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0
	add r1, r2, #0
	bl sub_021A3EA4
	add r1, r0, #0
	beq _021A1268
	ldr r0, _021A1278 ; =0x021A48A0
	ldr r2, [r0]
	ldr r0, _021A128C ; =0x00001788
	add r2, r2, r0
	ldr r0, _021A1284 ; =0x000005D4
	mul r0, r4
	add r0, r2, r0
	mov r2, #0xe4
	blx MI_CpuCopy8
_021A1268:
	ldr r2, _021A1278 ; =0x021A48A0
	mov r0, #0xea
	ldr r2, [r2]
	add r1, r5, #0
	bl ovy181_21a2018
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1278: .word 0x021A48A0
_021A127C: .word 0x00001525
_021A1280: .word 0x021A4728
_021A1284: .word 0x000005D4
_021A1288: .word 0x00001D52
_021A128C: .word 0x00001788
	thumb_func_end ovy181_21a117c

	thumb_func_start ovy181_21a1290
ovy181_21a1290: ; 0x021A1290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r7, [r0, #0x14]
	ldr r4, [r0, #0x10]
	add r0, r7, #0
	ldr r1, [r7, #0x14]
	add r0, #0x10
	ldr r5, [r4, #4]
	bl FS_FindArchive
	add r6, r0, #0
	bne _021A12AA
	ldr r6, [r7, #0x18]
_021A12AA:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021A12F6
	ldr r0, _021A1340 ; =0x021A472C
	mov r1, #3
	bl FS_FindArchive
	cmp r6, r0
	bne _021A12F6
	bl CARD_GetOwnRomHeaderTWL
	mov r1, #0x1e
	lsl r1, r1, #4
	add r3, r1, #4
	ldr r2, [r0, r1]
	ldr r3, [r0, r3]
	add r3, r2, r3
	add r2, r1, #0
	add r2, #8
	add r1, #0xc
	ldr r2, [r0, r2]
	ldr r0, [r0, r1]
	ldr r1, [r4]
	add r0, r2, r0
	cmp r1, r3
	bhs _021A12EA
	add r2, r1, r5
	cmp r2, r3
	bls _021A12EA
	sub r5, r3, r1
	b _021A12F6
_021A12EA:
	cmp r1, r0
	bhs _021A12F6
	add r2, r1, r5
	cmp r2, r0
	bls _021A12F6
	sub r5, r0, r1
_021A12F6:
	add r7, sp, #4
	add r0, r7, #0
	bl FS_InitFile
	ldr r2, [r4]
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r3, r2, r5
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _021A132C
	ldr r1, [r4, #8]
	add r0, r7, #0
	add r2, r5, #0
	bl FS_ReadFile
	cmp r5, r0
	bne _021A1326
	mov r0, #2
	str r0, [r4, #0xc]
_021A1326:
	add r0, sp, #4
	bl FS_CloseFile
_021A132C:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	beq _021A133A
	mov r0, #0
	str r0, [r4]
	mov r0, #2
	str r0, [r4, #0xc]
_021A133A:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021A1340: .word 0x021A472C
	thumb_func_end ovy181_21a1290

	thumb_func_start ovy181_21a1344
ovy181_21a1344: ; 0x021A1344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _021A14DC ; =0x021A48A0
	ldr r1, _021A14E0 ; =0x00001524
	ldr r0, [r0]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021A135A
	add sp, #0x20
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_021A135A:
	add r0, r1, #1
	mov ip, r0
	add r7, r0, #0
	add r6, r0, #0
	ldr r0, _021A14E4 ; =0x00001D4C
	mov r5, #0
	add r3, r0, #6
_021A1368:
	ldr r0, _021A14DC ; =0x021A48A0
	ldr r4, [r0]
	mov r0, ip
	ldrb r0, [r4, r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, r7]
	ldr r0, _021A14DC ; =0x021A48A0
	ldr r1, _021A14E8 ; =0x000005D4
	ldr r0, [r0]
	ldrb r2, [r0, r6]
	mul r1, r2
	add r0, r0, r1
	ldrb r1, [r0, r3]
	cmp r1, #0
	beq _021A139A
	ldr r1, _021A14E4 ; =0x00001D4C
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _021A13A4
_021A139A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x10
	blo _021A1368
_021A13A4:
	cmp r5, #0x10
	bne _021A13AE
	add sp, #0x20
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_021A13AE:
	add r0, r2, #0
	bl ovy181_21a1600
	ldr r7, _021A14DC ; =0x021A48A0
	ldr r0, _021A14EC ; =0x00001525
	ldr r4, [r7]
	ldr r5, _021A14F0 ; =0x00001D2C
	ldrb r1, [r4, r0]
	add r2, r5, #0
	ldr r0, _021A14E8 ; =0x000005D4
	add r3, r1, #0
	mul r3, r0
	add r1, r4, r5
	add r6, r4, r3
	add r2, #0x1c
	ldrh r2, [r6, r2]
	ldr r6, _021A14F4 ; =0x00001788
	add r0, sp, #0x10
	add r4, r4, r6
	add r1, r1, r3
	add r3, r4, r3
	bl ovy181_21a1e98
	cmp r0, #0
	bne _021A13E6
	add sp, #0x20
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_021A13E6:
	mov r0, #4
	add r4, sp, #8
	strb r0, [r4]
	ldr r1, [r7]
	ldr r0, _021A14EC ; =0x00001525
	ldrb r0, [r1, r0]
	strh r0, [r4, #2]
	ldr r0, _021A14EC ; =0x00001525
	ldrb r2, [r1, r0]
	ldr r0, _021A14E8 ; =0x000005D4
	mul r0, r2
	add r2, r1, r0
	add r0, r5, #0
	add r0, #0x1c
	ldrh r0, [r2, r0]
	strh r0, [r4, #4]
	add r0, sp, #8
	bl sub_021A3EA4
	add r2, r0, #0
	ldrb r0, [r4, #0x14]
	ldr r1, _021A14EC ; =0x00001525
	lsl r3, r0, #2
	ldr r0, [r7]
	ldrb r4, [r0, r1]
	ldr r1, _021A14E8 ; =0x000005D4
	mul r1, r4
	add r1, r0, r1
	add r4, r1, r3
	ldr r0, [sp, #0x18]
	ldr r4, [r4, r5]
	sub r0, r0, r4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x2c
	ldr r0, [r1, r0]
	ldr r0, [r0, r3]
	ldr r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x28
	ldr r4, [r1, r0]
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r1, r3, r1
	ldr r3, [sp, #0x14]
	bl ovy181_21a3b78
	cmp r0, #0
	bne _021A14BE
	ldr r1, [r7]
	ldr r0, _021A14F8 ; =0x00007CE0
	add r7, r1, r0
	add r0, r7, #0
	bl sub_021A3D18
	cmp r0, #0
	bne _021A14B8
	ldr r0, [r4]
	cmp r0, #0
	beq _021A1466
	sub r0, r0, #1
	str r0, [r4]
	b _021A14B8
_021A1466:
	add r2, r4, #0
	add r2, #0x30
	mov r5, #0
	mov r3, #0
_021A146E:
	lsl r0, r3, #4
	add r6, r2, r0
	ldr r0, [r6, #0xc]
	cmp r0, #2
	bne _021A1486
	cmp r5, #0
	beq _021A1484
	ldr r1, [r5]
	ldr r0, [r6]
	cmp r1, r0
	bls _021A1486
_021A1484:
	add r5, r6, #0
_021A1486:
	add r3, r3, #1
	cmp r3, #4
	blt _021A146E
	cmp r5, #0
	bne _021A1494
	bl OS_Terminate
_021A1494:
	mov r0, #2
	str r0, [r4]
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r2, #0x1f
	add r0, r1, r0
	bic r0, r2
	str r0, [r5]
	str r5, [r7, #0x10]
	ldr r1, _021A14FC ; =ovy181_21a1290
	add r0, r7, #0
	mov r2, #0
	mov r3, #4
	str r4, [r7, #0x14]
	bl ovy181_21a3d28
_021A14B8:
	add sp, #0x20
	mov r0, #0x15
	pop {r3, r4, r5, r6, r7, pc}
_021A14BE:
	ldr r2, [r7]
	ldr r1, _021A14EC ; =0x00001525
	ldr r0, [sp, #0x14]
	ldrb r3, [r2, r1]
	ldr r1, _021A14E8 ; =0x000005D4
	add r5, #0x20
	mul r1, r3
	add r1, r2, r1
	ldrh r1, [r1, r5]
	add r0, r0, #6
	bl ovy181_21a2018
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A14DC: .word 0x021A48A0
_021A14E0: .word 0x00001524
_021A14E4: .word 0x00001D4C
_021A14E8: .word 0x000005D4
_021A14EC: .word 0x00001525
_021A14F0: .word 0x00001D2C
_021A14F4: .word 0x00001788
_021A14F8: .word 0x00007CE0
_021A14FC: .word ovy181_21a1290
	thumb_func_end ovy181_21a1344

	thumb_func_start ovy181_21a1500
ovy181_21a1500: ; 0x021A1500
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0
	add r1, sp, #0
	mov r2, #0xa
	blx MIi_CpuClear16
	mov r1, #1
	ldr r0, _021A15F4 ; =0x021A48A0
	add r7, r1, #0
	ldr r2, [r0]
	add r6, r1, #0
	add r0, r1, #0
	add r3, sp, #0
_021A151C:
	lsl r4, r1, #2
	add r5, r2, r4
	ldr r4, _021A15F8 ; =0x000014E4
	ldr r4, [r5, r4]
	cmp r4, #0xb
	bhi _021A159A
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_021A1534: ; jump table
	.short _021A159A - _021A1534 - 2 ; case 0
	.short _021A159A - _021A1534 - 2 ; case 1
	.short _021A154C - _021A1534 - 2 ; case 2
	.short _021A159A - _021A1534 - 2 ; case 3
	.short _021A156C - _021A1534 - 2 ; case 4
	.short _021A155C - _021A1534 - 2 ; case 5
	.short _021A159A - _021A1534 - 2 ; case 6
	.short _021A159A - _021A1534 - 2 ; case 7
	.short _021A157C - _021A1534 - 2 ; case 8
	.short _021A159A - _021A1534 - 2 ; case 9
	.short _021A159A - _021A1534 - 2 ; case 10
	.short _021A158C - _021A1534 - 2 ; case 11
_021A154C:
	add r5, r0, #0
	lsl r5, r1
	lsl r5, r5, #0x10
	ldrh r4, [r3]
	lsr r5, r5, #0x10
	orr r4, r5
	strh r4, [r3]
	b _021A159A
_021A155C:
	add r5, r6, #0
	lsl r5, r1
	lsl r5, r5, #0x10
	ldrh r4, [r3, #2]
	lsr r5, r5, #0x10
	orr r4, r5
	strh r4, [r3, #2]
	b _021A159A
_021A156C:
	add r5, r7, #0
	lsl r5, r1
	lsl r5, r5, #0x10
	ldrh r4, [r3, #4]
	lsr r5, r5, #0x10
	orr r4, r5
	strh r4, [r3, #4]
	b _021A159A
_021A157C:
	mov r5, #1
	lsl r5, r1
	lsl r5, r5, #0x10
	ldrh r4, [r3, #6]
	lsr r5, r5, #0x10
	orr r4, r5
	strh r4, [r3, #6]
	b _021A159A
_021A158C:
	mov r5, #1
	lsl r5, r1
	lsl r5, r5, #0x10
	ldrh r4, [r3, #8]
	lsr r5, r5, #0x10
	orr r4, r5
	strh r4, [r3, #8]
_021A159A:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0xf
	bls _021A151C
	add r0, sp, #0
	ldrh r1, [r0, #6]
	cmp r1, #0
	beq _021A15B4
	mov r0, #5
_021A15AE:
	bl ovy181_21a1154
	b _021A15E2
_021A15B4:
	ldrh r1, [r0]
	cmp r1, #0
	beq _021A15BE
	mov r0, #1
	b _021A15AE
_021A15BE:
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _021A15C8
	mov r0, #6
	b _021A15AE
_021A15C8:
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _021A15D2
	mov r0, #2
	b _021A15AE
_021A15D2:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021A15DE
	bl ovy181_21a117c
	b _021A15E2
_021A15DE:
	bl ovy181_21a1344
_021A15E2:
	cmp r0, #0x15
	bne _021A15EE
	ldr r1, _021A15FC ; =0x0000FFFF
	mov r0, #0
	bl ovy181_21a1154
_021A15EE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A15F4: .word 0x021A48A0
_021A15F8: .word 0x000014E4
_021A15FC: .word 0x0000FFFF
	thumb_func_end ovy181_21a1500

	thumb_func_start ovy181_21a1600
ovy181_21a1600: ; 0x021A1600
	push {r3, r4}
	ldr r1, _021A1658 ; =0x021A47D0
	ldr r2, [r1]
	mov r1, #1
	lsl r1, r0
	tst r1, r2
	beq _021A1652
	ldr r1, _021A165C ; =0x000005D4
	ldr r2, _021A1660 ; =0x00001D52
	mul r1, r0
	ldr r0, _021A1664 ; =0x021A48A0
	ldr r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _021A1652
	sub r1, r2, #6
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021A1652
	add r1, r2, #0
	sub r1, #0xa
	ldrh r3, [r0, r1]
	add r1, r2, #0
	sub r1, #8
	ldrh r4, [r0, r1]
	cmp r4, r3
	bhi _021A164E
	add r1, r4, #2
	cmp r3, r1
	bgt _021A164E
	add r1, r2, #0
	sub r1, #0xa
	ldrh r1, [r0, r1]
	sub r2, #0xa
	add r1, r1, #1
	strh r1, [r0, r2]
	pop {r3, r4}
	bx lr
_021A164E:
	ldr r1, _021A1668 ; =0x00001D48
	strh r4, [r0, r1]
_021A1652:
	pop {r3, r4}
	bx lr
	nop
_021A1658: .word 0x021A47D0
_021A165C: .word 0x000005D4
_021A1660: .word 0x00001D52
_021A1664: .word 0x021A48A0
_021A1668: .word 0x00001D48
	thumb_func_end ovy181_21a1600

	thumb_func_start sub_021A166C
sub_021A166C: ; 0x021A166C
	cmp r1, r0
	bhi _021A1672
	add r1, r0, #0
_021A1672:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end sub_021A166C

	thumb_func_start sub_021A1678
sub_021A1678: ; 0x021A1678
	cmp r0, #1
	blo _021A1684
	cmp r0, #0xf
	bhi _021A1684
	mov r0, #1
	bx lr
_021A1684:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A1678

	thumb_func_start ovy181_21a1688
ovy181_21a1688: ; 0x021A1688
	push {r3, lr}
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #0xd
	add r2, sp, #0
	bl ovy181_21a0a9c
	pop {r3, pc}
	thumb_func_end ovy181_21a1688

	thumb_func_start ovy181_21a1698
ovy181_21a1698: ; 0x021A1698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r6, r0, #0
	mov r4, #0
	mov r5, #0
	cmp r6, #0
	beq _021A16C8
	bl FS_GetFilePosition
	add r7, r0, #0
	add r0, r6, #0
	add r1, sp, #0
	mov r2, #0x60
	bl FS_ReadFile
	cmp r0, #0x60
	blo _021A16BC
	add r4, sp, #0
_021A16BC:
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl FS_SeekFile
	b _021A16CA
_021A16C8:
	ldr r4, _021A16EC ; =0x02FFFE00
_021A16CA:
	cmp r4, #0
	beq _021A16E4
	mov r0, #0x9a
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, [r4, #0x3c]
	add r5, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r5, r0
	bhs _021A16E4
	add r5, r0, #0
_021A16E4:
	add r0, r5, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A16EC: .word 0x02FFFE00
	thumb_func_end ovy181_21a1698

	thumb_func_start ovy181_21a16f0
ovy181_21a16f0: ; 0x021A16F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	add r7, r0, #0
	mov r0, #0
	add r6, r1, #0
	str r2, [sp, #4]
	str r0, [sp, #0x34]
	cmp r7, #0
	bne _021A1718
	bl CARD_GetOwnRomHeader
	ldrb r1, [r0, #0x12]
	mov r0, #2
	tst r0, r1
	bne _021A1712
	ldr r1, _021A1A18 ; =0x021A4260
	b _021A1714
_021A1712:
	ldr r1, _021A1A1C ; =0x021A4278
_021A1714:
	ldr r0, _021A1A20 ; =0x021A4730
	str r1, [r0]
_021A1718:
	mov r5, #0x59
	ldr r0, [sp, #4]
	lsl r5, r5, #2
	cmp r0, r5
	bhs _021A1724
	b _021A1A90
_021A1724:
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	sub r0, r5, #4
	add r4, r6, r0
	add r1, r0, #0
	ldr r0, [sp, #4]
	sub r0, r0, r1
	str r0, [sp, #0x2c]
	cmp r7, #0
	beq _021A176A
	add r0, r7, #0
	bl FS_GetFilePosition
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r1, r6, #0
	sub r2, r5, #4
	bl FS_ReadFile
	sub r1, r5, #4
	cmp r0, r1
	bge _021A175A
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x2c]
_021A175A:
	add r0, r6, #0
	add r0, #0x80
	ldr r5, [r0]
	cmp r5, #0
	bne _021A17C6
	mov r5, #1
	lsl r5, r5, #0x18
	b _021A17C6
_021A176A:
	ldr r0, _021A1A24 ; =0x02FFFE00
	add r0, #0x80
	ldr r5, [r0]
	cmp r5, #0
	bne _021A1778
	mov r5, #1
	lsl r5, r5, #0x18
_021A1778:
	mov r0, #1
	add r7, sp, #0x48
	str r0, [sp, #0x30]
	add r0, r7, #0
	bl FS_InitFile
	ldr r0, _021A1A28 ; =0x021A4734
	mov r1, #3
	bl FS_FindArchive
	add r1, r0, #0
	mov r0, #3
	sub r0, r0, #4
	add r3, r5, #0
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	add r3, #0x88
	bl FS_OpenFileDirect
	cmp r0, #0
	bne _021A17AA
	add sp, #0x90
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A17AA:
	add r0, r7, #0
	bl FS_GetFilePosition
	str r0, [sp, #0x28]
	mov r2, #0x16
	ldr r0, _021A1A24 ; =0x02FFFE00
	add r1, r6, #0
	lsl r2, r2, #4
	blx MI_CpuCopy8
	ldr r1, [r6, #0x60]
	ldr r0, _021A1A2C ; =0x00406000
	orr r0, r1
	str r0, [r6, #0x60]
_021A17C6:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x88
	blo _021A17FE
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021A17E0
	bl sub_0206FED0
	add r1, r4, #0
	mov r2, #0x88
	blx MI_CpuCopy8
	b _021A17F6
_021A17E0:
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	add r1, r1, r5
	mov r2, #0
	bl FS_SeekFile
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x88
	bl FS_ReadFile
_021A17F6:
	ldr r0, [sp, #0x2c]
	add r4, #0x88
	sub r0, #0x88
	b _021A1800
_021A17FE:
	mov r0, #0
_021A1800:
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x2c]
	cmp r0, #0x70
	blo _021A1856
	add r0, r4, #0
	str r4, [sp, #0x24]
	bl sub_021A3B28
	ldr r0, [sp, #0x2c]
	mov r2, #0x16
	sub r0, #0x70
	str r0, [sp, #0x2c]
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #4
	add r3, r6, #0
	add r4, #0x70
	mov r5, #0
	bl ovy181_21a3b34
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	b _021A1834
_021A1832:
	add r5, r5, #1
_021A1834:
	cmp r5, #3
	bge _021A1840
	ldr r0, [sp, #8]
	ldrsb r0, [r0, r5]
	cmp r0, #0
	bne _021A1832
_021A1840:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #8]
	add r1, #0x10
	add r2, r5, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	str r5, [r0, #0x14]
	str r1, [r0, #0x18]
	b _021A185A
_021A1856:
	mov r0, #0
	str r0, [sp, #0x2c]
_021A185A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x10
	blo _021A188E
	mov r0, #0
	str r0, [r4]
	add r0, r7, #0
	str r4, [sp, #0x20]
	bl FS_GetFileImageTop
	ldr r1, [sp, #0x28]
	ldr r2, [r6, #0x20]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #4]
	add r0, r7, #0
	bl FS_GetFileImageTop
	ldr r1, [sp, #0x28]
	ldr r2, [r6, #0x30]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4, #8]
	ldr r0, [sp, #0x2c]
	add r4, #0x10
	sub r0, #0x10
	b _021A1890
_021A188E:
	mov r0, #0
_021A1890:
	str r0, [sp, #0x2c]
	ldr r1, [r6, #0x2c]
	ldr r0, [r6, #0x3c]
	add r1, r1, r0
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	blo _021A191A
	add r0, r7, #0
	bl FS_GetFileImageTop
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r5, [r6, #0x2c]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x1c]
	str r4, [sp, #0x18]
	sub r1, r1, r0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021A18CA
	mov r2, #2
	lsl r2, r2, #0xe
	cmp r1, r2
	bhs _021A18CA
	sub r0, r2, r1
	sub r5, r5, r0
	add r0, r4, r0
	str r0, [sp, #0x18]
	add r1, r2, #0
_021A18CA:
	add r0, r7, #0
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	add r2, r5, #0
	bl FS_ReadFile
	mov r0, #3
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r1, #4]
	ldr r2, [r6, #0x2c]
	add r3, r4, #0
	bl ovy181_21a3b34
	ldr r1, [sp, #0x20]
	ldr r5, [r6, #0x2c]
	ldr r2, [r1, #8]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	sub r1, r2, r1
	mov r2, #0
	bl FS_SeekFile
	ldr r2, [r6, #0x3c]
	add r0, r7, #0
	add r1, r4, r5
	bl FS_ReadFile
	mov r0, #3
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r1, #8]
	ldr r2, [r6, #0x3c]
	add r3, r4, r5
	b _021A19EC
_021A191A:
	mov r1, #0x33
	lsl r1, r1, #0xa
	cmp r0, r1
	blo _021A19F4
	add r0, r7, #0
	bl FS_GetFileImageTop
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	str r4, [sp, #0xc]
	ldr r5, [r0, #4]
	ldr r0, [sp, #0x14]
	sub r1, r5, r0
	mov r0, #0x11
	lsl r0, r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021A1956
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r1, r0
	bhs _021A1956
	ldr r2, [sp, #0x10]
	sub r1, r0, r1
	sub r2, r2, r1
	add r1, r4, r1
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r1, r0, #0
_021A1956:
	add r0, r7, #0
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	bl FS_ReadFile
	mov r0, #3
	str r0, [sp]
	mov r2, #0x11
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	lsl r2, r2, #0xa
	add r3, r4, #0
	bl ovy181_21a3b34
	mov r1, #0x11
	lsl r1, r1, #0xa
	add r2, r5, r1
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	sub r1, r2, r1
	mov r2, #0
	bl FS_SeekFile
	mov r1, #0x11
	lsl r1, r1, #0xa
	mov r2, #0x11
	add r0, r7, #0
	add r1, r4, r1
	lsl r2, r2, #0xa
	bl FS_ReadFile
	mov r2, #0x11
	mov r0, #2
	mov r1, #0x11
	lsl r2, r2, #0xa
	str r0, [sp]
	lsl r1, r1, #0xa
	add r3, r2, #0
	ldr r0, [sp, #0x24]
	add r1, r5, r1
	add r3, r4, r3
	bl ovy181_21a3b34
	mov r1, #0x11
	lsl r1, r1, #0xb
	add r2, r5, r1
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	sub r1, r2, r1
	mov r2, #0
	bl FS_SeekFile
	mov r1, #0x11
	lsl r1, r1, #0xb
	mov r2, #0x11
	add r0, r7, #0
	add r1, r4, r1
	lsl r2, r2, #0xa
	bl FS_ReadFile
	mov r2, #0x11
	lsl r2, r2, #0xa
	mov r0, #2
	mov r1, #0x11
	add r3, r2, #0
	str r0, [sp]
	lsl r1, r1, #0xb
	lsl r3, r3, #1
	ldr r0, [sp, #0x24]
	add r1, r5, r1
	add r3, r4, r3
_021A19EC:
	bl ovy181_21a3b34
	mov r0, #1
	str r0, [sp, #0x34]
_021A19F4:
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	mov r2, #0
	bl FS_SeekFile
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021A1A82
	add r0, sp, #0x48
	bl FS_CloseFile
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021A1A82
	ldr r1, [r6, #0x20]
	ldr r0, _021A1A20 ; =0x021A4730
	b _021A1A30
	nop
_021A1A18: .word 0x021A4260
_021A1A1C: .word 0x021A4278
_021A1A20: .word 0x021A4730
_021A1A24: .word 0x02FFFE00
_021A1A28: .word 0x021A4734
_021A1A2C: .word 0x00406000
_021A1A30:
	str r1, [sp, #0x38]
	ldr r4, [r0]
	ldr r0, [r6, #0x28]
	add r7, sp, #0x38
	sub r0, r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	mov r3, #1
	ldr r0, [r0, #0x48]
	sub r0, r0, r1
	str r0, [sp, #0x40]
	ldr r0, [sp, #4]
	mov r1, #1
	lsl r1, r1, #0xe
	str r0, [sp, #0x44]
	add r0, r7, #0
	lsl r2, r1, #1
	bl ovy181_21a1aa0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021A1A74
	mov r5, #0
_021A1A5E:
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r0, r7, #0
	add r2, r1, r2
	add r3, r5, #0
	bl ovy181_21a1aa0
	add r4, #8
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021A1A5E
_021A1A74:
	ldr r0, [sp, #0x24]
	ldr r1, _021A1A98 ; =0x02004EA8
	ldr r2, [r0, #0x48]
	ldr r0, [r6, #0x28]
	sub r1, r1, r0
	ldr r0, _021A1A9C ; =0xE12FFF1E
	str r0, [r2, r1]
_021A1A82:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021A1A90
	ldr r1, [sp, #4]
	add r0, r6, #0
	blx DC_FlushRange
_021A1A90:
	ldr r0, [sp, #0x34]
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1A98: .word 0x02004EA8
_021A1A9C: .word 0xE12FFF1E
	thumb_func_end ovy181_21a16f0

	thumb_func_start ovy181_21a1aa0
ovy181_21a1aa0: ; 0x021A1AA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #0xe
	cmp r4, r0
	bhs _021A1AB0
	add r4, r0, #0
_021A1AB0:
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r2, r0
	bls _021A1ABA
	add r2, r0, #0
_021A1ABA:
	ldr r1, [r5]
	cmp r4, r1
	bhs _021A1AC2
	add r4, r1, #0
_021A1AC2:
	ldr r0, [r5, #0xc]
	add r0, r1, r0
	cmp r2, r0
	bls _021A1ACC
	add r2, r0, #0
_021A1ACC:
	cmp r4, r2
	bhs _021A1AF0
	cmp r3, #0
	beq _021A1AE2
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, r4
	sub r2, r2, r4
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
_021A1AE2:
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r0, r4
	add r1, r1, r4
	sub r2, r2, r4
	blx MI_CpuCopy8
_021A1AF0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy181_21a1aa0

	thumb_func_start ovy181_21a1af4
ovy181_21a1af4: ; 0x021A1AF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0xff
	str r1, [sp]
	str r0, [sp, #8]
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	bl sub_021A3AE4
	cmp r0, #0
	bne _021A1B1A
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A1B1A:
	ldr r0, _021A1C98 ; =0x021A48A0
	ldr r1, _021A1C9C ; =0x00001524
	ldr r0, [r0]
	ldrb r1, [r0, r1]
	add r1, r1, #1
	cmp r1, #0x10
	ble _021A1B34
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A1B34:
	ldr r7, _021A1CA0 ; =0x00001D52
	ldr r1, _021A1CA4 ; =0x000005D4
	add r2, r7, #0
	mov r6, #0
	sub r2, #0x12
_021A1B3E:
	add r3, r6, #0
	mul r3, r1
	add r4, r0, r3
	ldr r3, [r4, r2]
	cmp r3, r5
	bne _021A1B56
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A1B56:
	ldrb r3, [r4, r7]
	cmp r3, #0
	bne _021A1B60
	str r6, [sp, #8]
	b _021A1B6A
_021A1B60:
	add r3, r6, #1
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	cmp r6, #0x10
	blo _021A1B3E
_021A1B6A:
	cmp r6, #0x10
	bne _021A1B7A
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A1B7A:
	ldr r1, [sp, #8]
	ldr r2, _021A1CA4 ; =0x000005D4
	add r4, r1, #0
	mul r4, r2
	mov r6, #0x75
	add r0, r0, r4
	lsl r6, r6, #6
	str r5, [r0, r6]
	ldr r7, _021A1C98 ; =0x021A48A0
	ldr r0, _021A1CA8 ; =0x00001788
	ldr r1, [r7]
	str r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r0, r4
	bl ovy181_21a1cb8
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, r4
	add r0, #0x1c
	add r1, #0xc4
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r6, #0
	ldr r1, [r7]
	sub r0, #0x14
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	add r0, r0, r4
	add r1, r1, r4
	bl ovy181_21a1e00
	cmp r0, #0
	bne _021A1BD0
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A1BD0:
	ldr r0, [sp, #0x10]
	ldr r2, [r7]
	add r0, #0xe4
	mov r3, #0x13
	add r0, r2, r0
	lsl r3, r3, #8
	add r0, r0, r4
	add r1, r5, #0
	add r2, r2, r3
	bl ovy181_21a2070
	ldr r0, [r7]
	add r1, r6, #0
	add r2, r0, r4
	ldr r0, [sp, #8]
	sub r1, #0x1f
	strb r0, [r2, r1]
	ldr r0, [sp, #0x10]
	ldr r1, [r7]
	add r0, #0xe4
	str r0, [sp, #0x10]
	add r0, r1, r0
	add r0, r0, r4
	bl sub_021A2208
	ldr r1, _021A1CAC ; =0x021A47D4
	mov r5, #1
	ldrb r0, [r1]
	add r2, r0, #1
	strb r2, [r1]
	ldr r1, [r7]
	add r2, r1, r4
	add r1, r6, #0
	sub r1, #0x21
	strb r0, [r2, r1]
	ldr r0, [r7]
	add r1, r0, r4
	add r0, r6, #0
	add r0, #0xe
	strh r5, [r1, r0]
	ldr r0, [r7]
	add r1, r6, #4
	add r2, r0, r4
	ldr r0, [sp]
	str r0, [r2, r1]
	mov r1, #0x7a
	lsl r1, r1, #2
	add r3, r0, r1
	ldr r0, [r7]
	add r1, #0x70
	add r2, r0, r4
	add r0, r6, #0
	add r0, #0x14
	str r3, [r2, r0]
	ldr r0, [sp]
	add r0, r0, r1
	ldr r1, [r7]
	add r2, r1, r4
	add r1, r6, #0
	add r1, #0x18
	str r0, [r2, r1]
	ldr r0, [r7]
	add r6, #0x14
	add r0, r0, r4
	ldr r0, [r0, r6]
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _021A1C76
	bl sub_021A3CF8
	cmp r0, #0
	bne _021A1C76
	ldr r1, [r7]
	ldr r0, _021A1CB0 ; =0x00007CE0
	add r0, r1, r0
	bl sub_021A3D0C
	ldr r1, [r7]
	ldr r0, _021A1CB4 ; =0x000074E0
	add r0, r1, r0
	lsl r1, r5, #0xb
	bl ovy181_21a3c9c
_021A1C76:
	ldr r1, _021A1C98 ; =0x021A48A0
	mov r3, #1
	ldr r0, [r1]
	add r2, r0, r4
	ldr r0, _021A1CA0 ; =0x00001D52
	strb r3, [r2, r0]
	ldr r2, [r1]
	ldr r0, _021A1C9C ; =0x00001524
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1C98: .word 0x021A48A0
_021A1C9C: .word 0x00001524
_021A1CA0: .word 0x00001D52
_021A1CA4: .word 0x000005D4
_021A1CA8: .word 0x00001788
_021A1CAC: .word 0x021A47D4
_021A1CB0: .word 0x00007CE0
_021A1CB4: .word 0x000074E0
	thumb_func_end ovy181_21a1af4

	thumb_func_start ovy181_21a1cb8
ovy181_21a1cb8: ; 0x021A1CB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0x8b
	add r7, r1, #0
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r7, #0x24]
	add r5, r0, #0
	str r1, [r0]
	ldr r1, [r7, #0x34]
	ldr r4, _021A1D04 ; =0x021A4254
	str r1, [r0, #4]
	add r5, #0xc
	mov r6, #0
_021A1CD8:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	add r3, sp, #4
	bl ovy181_21a1d08
	add r6, r6, #1
	add r5, #0x10
	add r4, r4, #4
	cmp r6, #3
	blt _021A1CD8
	mov r0, #0x16
	ldr r1, [sp]
	lsl r0, r0, #4
	add r1, #0x3c
	add r0, r7, r0
	mov r2, #0x88
	str r1, [sp]
	blx MI_CpuCopy8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1D04: .word 0x021A4254
	thumb_func_end ovy181_21a1cb8

	thumb_func_start ovy181_21a1d08
ovy181_21a1d08: ; 0x021A1D08
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, [r1]
	add r5, r2, #0
	add r4, r3, #0
	cmp r1, #0
	beq _021A1D1E
	cmp r1, #1
	beq _021A1D52
	cmp r1, #2
	beq _021A1DDC
	pop {r3, r4, r5, r6, r7, pc}
_021A1D1E:
	add r1, r0, #0
	ldr r3, [r0, #0x28]
	mov r0, #2
	lsl r0, r0, #0x18
	add r1, #0x28
	cmp r3, r0
	blo _021A1D4C
	mov r0, #0x8b
	lsl r0, r0, #0x12
	cmp r3, r0
	bhs _021A1D4C
	ldr r2, [r1, #4]
	add r1, r3, r2
	cmp r1, r0
	bhi _021A1D4C
	ldr r1, [r5, #0xc]
	mov r0, #1
	bic r1, r0
	str r2, [r5, #8]
	str r3, [r5, #4]
	str r3, [r5]
	str r1, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021A1D4C:
	bl OS_Terminate
	pop {r3, r4, r5, r6, r7, pc}
_021A1D52:
	add r1, r0, #0
	str r1, [sp]
	add r1, #0x38
	str r1, [sp]
	mov r6, #2
	ldr r1, [r1, #4]
	ldr r3, [r0, #0x38]
	lsl r6, r6, #0x18
	mov r2, #0
	mov r7, #0
	add r0, r3, r1
	cmp r3, r6
	blo _021A1D90
	ldr r6, _021A1DF4 ; =0x023FE800
	cmp r3, r6
	bhs _021A1D90
	mov r3, #0x23
	lsl r3, r3, #0x14
	cmp r0, r3
	bls _021A1DA8
	add r3, r6, #0
	cmp r0, r3
	bhs _021A1D8E
	mov r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #7
	cmp r1, r0
	bhi _021A1D8E
_021A1D8A:
	mov r7, #1
	b _021A1DA8
_021A1D8E:
	b _021A1DA6
_021A1D90:
	mov r1, #0xc1
	lsl r1, r1, #0x12
	cmp r3, r1
	blo _021A1DA6
	ldr r1, _021A1DF8 ; =0x03057000
	cmp r3, r1
	bhs _021A1DA6
	cmp r0, r1
	bhi _021A1DA4
	b _021A1D8A
_021A1DA4:
	b _021A1DA6
_021A1DA6:
	mov r2, #1
_021A1DA8:
	cmp r2, #1
	bne _021A1DB0
	bl OS_Terminate
_021A1DB0:
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	ldr r1, [r1]
	str r0, [r5, #8]
	str r1, [r5, #4]
	cmp r7, #0
	bne _021A1DC4
	str r1, [r5]
	b _021A1DCE
_021A1DC4:
	ldr r1, [r4]
	str r1, [r5]
	ldr r1, [r4]
	add r0, r1, r0
	str r0, [r4]
_021A1DCE:
	ldr r1, [r5, #0xc]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021A1DDC:
	mov r0, #0x16
	lsl r0, r0, #4
	str r0, [r5, #8]
	ldr r0, _021A1DFC ; =0x027FFE00
	ldr r1, [r5, #0xc]
	str r0, [r5, #4]
	str r0, [r5]
	mov r0, #1
	bic r1, r0
	str r1, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1DF4: .word 0x023FE800
_021A1DF8: .word 0x03057000
_021A1DFC: .word 0x027FFE00
	thumb_func_end ovy181_21a1d08

	thumb_func_start ovy181_21a1e00
ovy181_21a1e00: ; 0x021A1E00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r0, [sp]
	add r7, #0xc
	mov r0, #0
	cmp r1, #0
	beq _021A1E8C
	add r2, r0, #0
_021A1E12:
	ldr r3, [sp]
	lsl r4, r2, #2
	str r0, [r3, r4]
	lsl r3, r2, #4
	add r3, r1, r3
	add r2, r2, #1
	ldr r3, [r3, #0x14]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r0, r0, r3
	cmp r2, #3
	blo _021A1E12
	mov r5, #0
	str r1, [sp, #8]
	add r1, #0xc
	strh r5, [r7]
	str r1, [sp, #8]
_021A1E34:
	ldr r0, [sp, #8]
	lsl r1, r5, #4
	add r4, r0, r1
	ldr r0, _021A1E90 ; =0x021A48A0
	ldr r1, [r0]
	ldr r0, _021A1E94 ; =0x00001318
	ldr r1, [r1, r0]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	add r0, r0, r1
	sub r0, r0, #1
	blx sub_0208D868
	lsl r1, r5, #1
	lsl r0, r0, #0x10
	ldrh r1, [r7, r1]
	lsr r0, r0, #0x10
	ldr r2, [sp, #4]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy181_21a1f8c
	cmp r0, #0
	bne _021A1E70
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A1E70:
	cmp r5, #2
	bhs _021A1E7C
	lsl r0, r5, #1
	add r0, r7, r0
	strh r6, [r0, #2]
	b _021A1E80
_021A1E7C:
	ldr r0, [sp]
	strh r6, [r0, #0x12]
_021A1E80:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021A1E34
	mov r0, #1
_021A1E8C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1E90: .word 0x021A48A0
_021A1E94: .word 0x00001318
	thumb_func_end ovy181_21a1e00

	thumb_func_start ovy181_21a1e98
ovy181_21a1e98: ; 0x021A1E98
	push {r4, r5, r6, r7}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r2, r0
	blo _021A1EAA
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_021A1EAA:
	mov r1, #2
_021A1EAC:
	lsl r0, r1, #1
	add r0, r4, r0
	ldrh r0, [r0, #0xc]
	cmp r2, r0
	bhs _021A1EBE
	sub r0, r1, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	bpl _021A1EAC
_021A1EBE:
	cmp r1, #0
	bge _021A1EC8
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_021A1EC8:
	lsl r0, r1, #1
	add r0, r4, r0
	ldrh r0, [r0, #0xc]
	ldr r6, _021A1F08 ; =0x021A48A0
	add r3, #0xc
	sub r7, r2, r0
	ldr r0, [r6]
	ldr r2, _021A1F0C ; =0x00001318
	ldr r0, [r0, r2]
	mul r0, r7
	lsl r7, r1, #4
	add r7, r3, r7
	ldr r3, [r7, #8]
	sub r3, r3, r0
	str r3, [r5, #4]
	ldr r6, [r6]
	ldr r2, [r6, r2]
	cmp r3, r2
	bls _021A1EF0
	str r2, [r5, #4]
_021A1EF0:
	lsl r2, r1, #2
	ldr r2, [r4, r2]
	add r2, r0, r2
	str r2, [r5, #8]
	ldr r2, [r7]
	add r0, r0, r2
	str r0, [r5]
	strb r1, [r5, #0xc]
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021A1F08: .word 0x021A48A0
_021A1F0C: .word 0x00001318
	thumb_func_end ovy181_21a1e98

	thumb_func_start sub_021A1F10
sub_021A1F10: ; 0x021A1F10
	lsl r3, r0, #2
	ldr r0, _021A1F80 ; =0x021A4254
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021A1F34
	cmp r0, #1
	beq _021A1F4A
	cmp r0, #2
	bne _021A1F76
	ldr r0, _021A1F84 ; =0x027FFE00
	cmp r1, r0
	blo _021A1F7A
	ldr r0, _021A1F88 ; =0x027FFF60
	add r1, r1, r2
	cmp r1, r0
	bhi _021A1F7A
	mov r0, #1
	bx lr
_021A1F34:
	mov r0, #2
	lsl r0, r0, #0x18
	cmp r1, r0
	blo _021A1F7A
	mov r0, #0x8b
	add r1, r1, r2
	lsl r0, r0, #0x12
	cmp r1, r0
	bhi _021A1F7A
	mov r0, #1
	bx lr
_021A1F4A:
	mov r0, #0x8b
	lsl r0, r0, #0x12
	cmp r1, r0
	blo _021A1F60
	mov r0, #0x23
	add r3, r1, r2
	lsl r0, r0, #0x14
	cmp r3, r0
	bhi _021A1F60
	mov r0, #1
	bx lr
_021A1F60:
	mov r0, #2
	lsl r0, r0, #0x18
	cmp r1, r0
	blo _021A1F7A
	mov r0, #0x23
	add r1, r1, r2
	lsl r0, r0, #0x14
	cmp r1, r0
	bhi _021A1F7A
	mov r0, #1
	bx lr
_021A1F76:
	mov r0, #0
	bx lr
_021A1F7A:
	mov r0, #0
	bx lr
	nop
_021A1F80: .word 0x021A4254
_021A1F84: .word 0x027FFE00
_021A1F88: .word 0x027FFF60
	thumb_func_end sub_021A1F10

	thumb_func_start ovy181_21a1f8c
ovy181_21a1f8c: ; 0x021A1F8C
	push {r4, lr}
	ldr r3, _021A200C ; =0x021A4254
	lsl r4, r0, #2
	ldr r3, [r3, r4]
	cmp r3, #0
	beq _021A1FA0
	cmp r3, #1
	beq _021A1FA6
	cmp r3, #2
	bne _021A2004
_021A1FA0:
	bl sub_021A1F10
	pop {r4, pc}
_021A1FA6:
	mov r0, #2
	lsl r0, r0, #0x18
	cmp r1, r0
	blo _021A1FE8
	ldr r0, _021A2010 ; =0x023FE800
	cmp r1, r0
	bhs _021A1FE8
	mov r0, #0x23
	lsl r0, r0, #0x14
	add r3, r1, r2
	cmp r1, r0
	bhs _021A1FC6
	cmp r3, r0
	bls _021A1FC6
	mov r0, #0
	pop {r4, pc}
_021A1FC6:
	mov r0, #0x23
	lsl r0, r0, #0x14
	cmp r3, r0
	bhi _021A1FD2
	mov r0, #1
	pop {r4, pc}
_021A1FD2:
	ldr r0, _021A2010 ; =0x023FE800
	cmp r3, r0
	bhs _021A1FE4
	mov r0, #1
	lsl r0, r0, #0x12
	cmp r2, r0
	bhi _021A1FE4
	mov r0, #1
	pop {r4, pc}
_021A1FE4:
	mov r0, #0
	pop {r4, pc}
_021A1FE8:
	mov r0, #0xc1
	lsl r0, r0, #0x12
	cmp r1, r0
	blo _021A2008
	ldr r0, _021A2014 ; =0x03057000
	cmp r1, r0
	bhs _021A2008
	add r1, r1, r2
	cmp r1, r0
	bhi _021A2000
	mov r0, #1
	pop {r4, pc}
_021A2000:
	mov r0, #0
	pop {r4, pc}
_021A2004:
	mov r0, #0
	pop {r4, pc}
_021A2008:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021A200C: .word 0x021A4254
_021A2010: .word 0x023FE800
_021A2014: .word 0x03057000
	thumb_func_end ovy181_21a1f8c

	thumb_func_start ovy181_21a2018
ovy181_21a2018: ; 0x021A2018
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r1, r5, #0
	add r1, #0x1f
	mov r2, #0x1f
	add r0, r6, #0
	bic r1, r2
	blx DC_FlushRange
	blx DC_WaitWriteBufferEmpty
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy181_21a39dc
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy181_21a2018

	thumb_func_start sub_021A2040
sub_021A2040: ; 0x021A2040
	asr r3, r1, #1
	mov r2, #0
	cmp r3, #0
	ble _021A2054
_021A2048:
	ldrh r1, [r0]
	sub r3, r3, #1
	add r0, r0, #2
	add r2, r2, r1
	cmp r3, #0
	bgt _021A2048
_021A2054:
	lsl r0, r2, #0x10
	lsr r1, r2, #0x10
	lsr r0, r0, #0x10
	add r1, r1, r0
	lsr r0, r1, #0x10
	add r1, r1, r0
	ldr r0, _021A206C ; =0x0000FFFF
	eor r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_021A206C: .word 0x0000FFFF
	thumb_func_end sub_021A2040

	thumb_func_start ovy181_21a2070
ovy181_21a2070: ; 0x021A2070
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x13
	add r5, r0, #0
	add r4, r1, #0
	lsl r6, r6, #6
	str r2, [sp]
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	blx MIi_CpuClear16
	sub r6, #0xe
	mov r0, #0
	strb r0, [r5, r6]
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	mov r2, #1
	mov r7, #1
	bl ovy181_21a2128
	cmp r0, #0
	beq _021A209E
	mov r7, #0
_021A209E:
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	mov r2, #0
	mov r6, #0
	bl ovy181_21a2128
	cmp r0, #0
	bne _021A20B0
	mov r6, #1
_021A20B0:
	add r0, r7, #0
	orr r0, r6
	beq _021A20C8
	ldr r0, _021A211C ; =0x000004B2
	mov r1, #1
	strb r1, [r5, r0]
	mov r2, #0x22
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #4
	blx MIi_CpuClearFast
_021A20C8:
	ldr r1, [r4, #0x14]
	ldr r0, _021A2120 ; =0x000004B8
	str r1, [r5, r0]
	ldr r0, [sp]
	cmp r0, #0
	beq _021A20E0
	mov r1, #0x22
	lsl r1, r1, #4
	add r1, r5, r1
	mov r2, #0x16
	blx MIi_CpuCopy16
_021A20E0:
	ldrb r0, [r4, #0x18]
	ldr r6, _021A2124 ; =0x00000236
	strb r0, [r5, r6]
	ldr r0, [r4, #4]
	bl sub_021A21F0
	lsl r2, r0, #1
	add r1, r6, #2
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	add r1, r5, r1
	lsr r2, r2, #0x10
	blx MIi_CpuCopy16
	add r6, #0x62
	ldr r0, [r4, #8]
	add r1, r5, r6
	mov r2, #0xc0
	blx MIi_CpuCopy16
	mov r0, #0xd6
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
	mov r0, #0x4b
	lsl r0, r0, #4
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A211C: .word 0x000004B2
_021A2120: .word 0x000004B8
_021A2124: .word 0x00000236
	thumb_func_end ovy181_21a2070

	thumb_func_start ovy181_21a2128
ovy181_21a2128: ; 0x021A2128
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r6, r0, #0
	add r5, r1, #0
	cmp r2, #0
	beq _021A213A
	mov r4, #2
	lsl r4, r4, #8
	b _021A213C
_021A213A:
	mov r4, #0x20
_021A213C:
	cmp r2, #0
	beq _021A2142
	add r5, #0x20
_021A2142:
	cmp r6, #0
	bne _021A214C
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A214C:
	add r7, sp, #0
	add r0, r7, #0
	bl FS_InitFile
	add r1, r6, #0
	add r0, r7, #0
	mov r2, #1
	mov r6, #1
	bl FS_OpenFileEx
	cmp r0, #0
	bne _021A216A
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A216A:
	add r0, r7, #0
	bl FS_GetFileLength
	cmp r4, r0
	beq _021A2180
	add r0, r7, #0
	bl FS_CloseFile
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2180:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl FS_ReadFile
	add r0, r7, #0
	bl FS_CloseFile
	add r0, r6, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy181_21a2128

	thumb_func_start ovy181_21a2198
ovy181_21a2198: ; 0x021A2198
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	ldr r1, _021A21E4 ; =0x0000035E
	add r5, r2, #0
	ldr r2, _021A21E8 ; =0x0000014A
	add r1, r6, r1
	add r7, r3, #0
	mov r4, #1
	blx MIi_CpuCopy16
	mov r0, #0
	mov r2, #2
_021A21B2:
	add r1, r2, #0
	lsl r1, r0
	tst r1, r5
	beq _021A21C0
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_021A21C0:
	add r0, r0, #1
	cmp r0, #0xf
	blt _021A21B2
	mov r0, #0xd6
	lsl r0, r0, #2
	mov r1, #1
	add r2, r5, #0
	orr r2, r1
	strb r4, [r6, r0]
	add r1, r0, #2
	strh r2, [r6, r1]
	add r0, r0, #4
	strh r7, [r6, r0]
	ldr r0, _021A21EC ; =0x000004B4
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A21E4: .word 0x0000035E
_021A21E8: .word 0x0000014A
_021A21EC: .word 0x000004B4
	thumb_func_end ovy181_21a2198

	thumb_func_start sub_021A21F0
sub_021A21F0: ; 0x021A21F0
	ldrh r1, [r0]
	mov r2, #0
	add r0, r0, #2
	cmp r1, #0
	beq _021A2204
_021A21FA:
	ldrh r1, [r0]
	add r2, r2, #1
	add r0, r0, #2
	cmp r1, #0
	bne _021A21FA
_021A2204:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021A21F0

	thumb_func_start sub_021A2208
sub_021A2208: ; 0x021A2208
	ldr r1, _021A2230 ; =0x021A47D8
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bne _021A2214
	str r0, [r1, #0x18]
	b _021A2228
_021A2214:
	ldr r1, _021A2234 ; =0x000004BC
	ldr r3, [r2, r1]
	cmp r3, #0
	beq _021A2224
_021A221C:
	add r2, r3, #0
	ldr r3, [r3, r1]
	cmp r3, #0
	bne _021A221C
_021A2224:
	ldr r1, _021A2234 ; =0x000004BC
	str r0, [r2, r1]
_021A2228:
	ldr r1, _021A2234 ; =0x000004BC
	mov r2, #0
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_021A2230: .word 0x021A47D8
_021A2234: .word 0x000004BC
	thumb_func_end sub_021A2208

	thumb_func_start sub_021A2238
sub_021A2238: ; 0x021A2238
	ldr r1, _021A224C ; =0x021A47D8
	mov r3, #0
	str r3, [r1, #0x18]
	ldr r0, _021A2250 ; =0x021A47F8
	str r3, [r1, #0x1c]
	mov r2, #1
	strb r2, [r0, #4]
	str r3, [r1, #0x14]
	ldr r3, _021A2254 ; =sub_021A2258
	bx r3
	.align 2, 0
_021A224C: .word 0x021A47D8
_021A2250: .word 0x021A47F8
_021A2254: .word sub_021A2258
	thumb_func_end sub_021A2238

	thumb_func_start sub_021A2258
sub_021A2258: ; 0x021A2258
	ldr r0, _021A2268 ; =0x021A47F8
	mov r1, #0
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	bx lr
	.align 2, 0
_021A2268: .word 0x021A47F8
	thumb_func_end sub_021A2258

	thumb_func_start ovy181_21a226c
ovy181_21a226c: ; 0x021A226C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A22C4 ; =0x021A47F8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
_021A2276:
	ldrb r0, [r4, #4]
	cmp r0, #6
	bhi _021A2276
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2288: ; jump table
	.short _021A2296 - _021A2288 - 2 ; case 0
	.short _021A2296 - _021A2288 - 2 ; case 1
	.short _021A22A0 - _021A2288 - 2 ; case 2
	.short _021A22A6 - _021A2288 - 2 ; case 3
	.short _021A22B2 - _021A2288 - 2 ; case 4
	.short _021A22B8 - _021A2288 - 2 ; case 5
	.short _021A2276 - _021A2288 - 2 ; case 6
_021A2296:
	bl ovy181_21a22c8
	cmp r0, #0
	bne _021A2276
	pop {r3, r4, r5, r6, r7, pc}
_021A22A0:
	bl sub_021A2338
	b _021A2276
_021A22A6:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy181_21a2374
	pop {r3, r4, r5, r6, r7, pc}
_021A22B2:
	bl sub_021A246C
	b _021A2276
_021A22B8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy181_21a2490
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A22C4: .word 0x021A47F8
	thumb_func_end ovy181_21a226c

	thumb_func_start ovy181_21a22c8
ovy181_21a22c8: ; 0x021A22C8
	push {r4, lr}
	sub sp, #8
	ldr r0, _021A2324 ; =0x021A47D8
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _021A22F6
	bl sub_021A3A88
	add r4, r0, #0
	bl sub_021A3A94
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r1, _021A2328 ; =0x021A4820
	mov r0, #0
	mov r2, #0x70
	add r3, r4, #0
	bl sub_020824BC
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021A22F6:
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _021A2304
	ldr r0, _021A232C ; =0x000004BC
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A2308
_021A2304:
	ldr r0, _021A2324 ; =0x021A47D8
	ldr r0, [r0, #0x18]
_021A2308:
	ldr r4, _021A2324 ; =0x021A47D8
	str r0, [r4, #0x1c]
	bl sub_021A2258
	ldr r1, [r4, #0x1c]
	ldr r0, _021A2330 ; =0x000004B4
	ldrb r1, [r1, r0]
	ldr r0, _021A2334 ; =0x021A47F8
	strb r1, [r0, #6]
	mov r1, #2
	strb r1, [r0, #4]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021A2324: .word 0x021A47D8
_021A2328: .word 0x021A4820
_021A232C: .word 0x000004BC
_021A2330: .word 0x000004B4
_021A2334: .word 0x021A47F8
	thumb_func_end ovy181_21a22c8

	thumb_func_start sub_021A2338
sub_021A2338: ; 0x021A2338
	ldr r2, _021A2368 ; =0x021A47F8
	ldrb r0, [r2, #4]
	cmp r0, #2
	bne _021A2366
	ldr r1, _021A236C ; =0x021A47D8
	ldr r0, _021A2370 ; =0x000004B2
	ldr r3, [r1, #0x1c]
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _021A2354
	mov r0, #9
	strb r0, [r2, #8]
	str r3, [r1, #0x20]
	b _021A2360
_021A2354:
	mov r0, #4
	strb r0, [r2, #8]
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r3, r0
	str r0, [r1, #0x20]
_021A2360:
	ldr r0, _021A2368 ; =0x021A47F8
	mov r1, #3
	strb r1, [r0, #4]
_021A2366:
	bx lr
	.align 2, 0
_021A2368: .word 0x021A47F8
_021A236C: .word 0x021A47D8
_021A2370: .word 0x000004B2
	thumb_func_end sub_021A2338

	thumb_func_start ovy181_21a2374
ovy181_21a2374: ; 0x021A2374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	ldr r1, _021A2454 ; =0x021A47D8
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0xd6
	ldr r2, [r1, #0x1c]
	lsl r0, r0, #2
	add r2, r2, r0
	ldr r0, [r1, #0x20]
	add r1, r0, #0
	add r1, #0x62
	cmp r1, r2
	bhi _021A239A
	ldr r0, _021A2458 ; =0x021A4820
	mov r1, #0x62
	strb r1, [r0, #0xc]
	b _021A23B0
_021A239A:
	sub r1, r2, r0
	ldr r0, _021A2458 ; =0x021A4820
	strb r1, [r0, #0xc]
	ldrb r3, [r0, #0xc]
	ldr r1, _021A245C ; =0x021A482E
	mov r0, #0x62
	sub r2, r0, r3
	mov r0, #0
	add r1, r1, r3
	blx MIi_CpuClear16
_021A23B0:
	ldr r5, _021A2458 ; =0x021A4820
	ldr r0, _021A2454 ; =0x021A47D8
	ldrb r2, [r5, #0xc]
	ldr r0, [r0, #0x20]
	ldr r1, _021A245C ; =0x021A482E
	blx MIi_CpuCopy16
	ldr r4, _021A2460 ; =0x021A47F8
	mov r1, #3
	ldrb r0, [r4, #7]
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #8]
	strb r0, [r5, #0xb]
	ldrb r6, [r5, #4]
	mov r0, #3
	bic r6, r0
	ldr r0, _021A2454 ; =0x021A47D8
	ldr r3, [r0, #0x1c]
	ldr r0, _021A2464 ; =0x000004B2
	ldrb r2, [r3, r0]
	and r1, r2
	orr r1, r6
	strb r1, [r5, #4]
	add r1, r0, #1
	ldrb r1, [r3, r1]
	mov r2, #0xfc
	strb r1, [r5, #5]
	ldrb r1, [r4, #6]
	strb r1, [r5, #6]
	add r1, r0, #6
	ldr r1, [r3, r1]
	add r0, r0, #3
	str r1, [r5]
	ldrb r0, [r3, r0]
	ldrb r1, [r5, #4]
	lsl r0, r0, #0x1a
	bic r1, r2
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #4]
	ldrb r1, [r4, #9]
	add r0, r1, #1
	strb r0, [r4, #9]
	strb r1, [r5, #7]
	mov r0, #0
	strh r0, [r5, #8]
	ldr r0, _021A2468 ; =0x021A4828
	mov r1, #0x68
	bl sub_021A2040
	strh r0, [r5, #8]
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #8]
	cmp r1, r0
	bhs _021A242E
	ldr r0, _021A2454 ; =0x021A47D8
	ldr r1, [r0, #0x20]
	add r1, #0x62
	str r1, [r0, #0x20]
	b _021A2432
_021A242E:
	mov r0, #4
	strb r0, [r4, #4]
_021A2432:
	str r7, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #2
	orr r1, r0
	mov r0, #1
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, _021A2458 ; =0x021A4820
	ldr r3, [sp, #8]
	mov r0, #0
	mov r2, #0x70
	bl sub_020824BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2454: .word 0x021A47D8
_021A2458: .word 0x021A4820
_021A245C: .word 0x021A482E
_021A2460: .word 0x021A47F8
_021A2464: .word 0x000004B2
_021A2468: .word 0x021A4828
	thumb_func_end ovy181_21a2374

	thumb_func_start sub_021A246C
sub_021A246C: ; 0x021A246C
	ldr r1, _021A2488 ; =0x021A47D8
	mov r0, #0x4b
	ldr r2, [r1, #0x1c]
	mov r3, #1
	lsl r0, r0, #4
	strh r3, [r2, r0]
	ldr r1, [r1, #0x1c]
	add r0, r0, #4
	ldrb r1, [r1, r0]
	ldr r0, _021A248C ; =0x021A47F8
	strb r1, [r0, #6]
	mov r1, #5
	strb r1, [r0, #4]
	bx lr
	.align 2, 0
_021A2488: .word 0x021A47D8
_021A248C: .word 0x021A47F8
	thumb_func_end sub_021A246C

	thumb_func_start ovy181_21a2490
ovy181_21a2490: ; 0x021A2490
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _021A260C ; =0x021A47F8
	str r2, [sp, #0x10]
	ldr r4, _021A2610 ; =0x021A47D8
	ldrb r2, [r0, #6]
	ldr r1, [r4, #0x1c]
	ldr r0, _021A2614 ; =0x000004B4
	ldrb r0, [r1, r0]
	cmp r2, r0
	beq _021A24AE
	bl sub_021A246C
_021A24AE:
	ldr r1, _021A2618 ; =0x021A4820
	mov r0, #3
	ldrb r2, [r1, #4]
	ldr r3, [r4, #0x1c]
	ldr r5, _021A261C ; =0x000004B3
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strb r0, [r1, #4]
	ldrb r0, [r3, r5]
	mov r6, #0xfc
	strb r0, [r1, #5]
	ldr r0, _021A260C ; =0x021A47F8
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	add r2, r5, #5
	ldr r2, [r3, r2]
	str r2, [r1]
	ldrb r2, [r1, #4]
	bic r2, r6
	add r6, r5, #2
	ldrb r6, [r3, r6]
	lsl r6, r6, #0x1a
	lsr r6, r6, #0x18
	orr r2, r6
	strb r2, [r1, #4]
	ldrb r6, [r0, #9]
	add r2, r6, #1
	strb r2, [r0, #9]
	mov r0, #0xd6
	strb r6, [r1, #7]
	lsl r0, r0, #2
	ldrb r2, [r3, r0]
	strb r2, [r1, #0xa]
	add r2, r0, #2
	ldrh r2, [r3, r2]
	add r0, r0, #4
	strh r2, [r1, #0xc]
	ldrh r0, [r3, r0]
	strh r0, [r1, #0xe]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021A2510
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A2510
	add r0, r5, #5
	ldr r0, [r3, r0]
	blx r1
_021A2510:
	ldr r7, _021A2610 ; =0x021A47D8
	mov r4, #0
	ldr r3, [r7, #0x1c]
	ldr r1, _021A2620 ; =0x021A4888
	ldr r0, _021A2624 ; =0x000004A8
	b _021A2524
_021A251C:
	add r2, r3, r4
	ldrb r2, [r2, r0]
	strb r2, [r1, r4]
	add r4, r4, #1
_021A2524:
	cmp r4, #8
	blt _021A251C
	ldr r1, _021A2628 ; =0x021A4830
	mov r0, #0
	mov r2, #0x58
	mov r5, #0
	blx MIi_CpuClear16
	mov r0, #0x4b
	ldr r1, [r7, #0x1c]
	lsl r0, r0, #4
	ldrh r2, [r1, r0]
	ldr r0, _021A262C ; =0x0000035A
	mov r4, #0
	ldrh r1, [r1, r0]
	add r0, r0, #4
	str r0, [sp, #0x14]
	eor r1, r2
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	b _021A2592
_021A254E:
	mov r0, #2
	lsl r0, r4
	tst r0, r6
	beq _021A2590
	ldr r1, [r7, #0x1c]
	ldr r0, [sp, #0x14]
	add r2, r5, #0
	add r1, r1, r0
	mov r0, #0x16
	mul r0, r4
	add r0, r1, r0
	mov r1, #0x16
	mul r2, r1
	ldr r1, _021A2628 ; =0x021A4830
	add r1, r1, r2
	mov r2, #0x16
	blx MIi_CpuCopy16
	mov r0, #0x4b
	mov r2, #2
	lsl r2, r4
	lsl r2, r2, #0x10
	ldr r1, [r7, #0x1c]
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	lsr r2, r2, #0x10
	add r5, r5, #1
	orr r2, r0
	mov r0, #0x4b
	lsl r0, r0, #4
	strh r2, [r1, r0]
	cmp r5, #4
	beq _021A2596
_021A2590:
	add r4, r4, #1
_021A2592:
	cmp r4, #0xf
	blt _021A254E
_021A2596:
	ldr r4, _021A2610 ; =0x021A47D8
	cmp r5, #4
	bhs _021A25AC
	ldr r3, _021A2628 ; =0x021A4830
	mov r0, #0x16
	add r2, r5, #0
	mul r2, r0
	ldrb r1, [r3, r2]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r3, r2]
_021A25AC:
	ldr r5, _021A2618 ; =0x021A4820
	mov r0, #0
	strh r0, [r5, #8]
	ldr r0, _021A2630 ; =0x021A4828
	mov r1, #0x68
	bl sub_021A2040
	strh r0, [r5, #8]
	mov r0, #0x4b
	ldr r2, [r4, #0x1c]
	lsl r0, r0, #4
	ldrh r1, [r2, r0]
	ldr r0, _021A262C ; =0x0000035A
	ldrh r0, [r2, r0]
	cmp r1, r0
	bne _021A25D2
	ldr r0, _021A260C ; =0x021A47F8
	mov r1, #1
	strb r1, [r0, #4]
_021A25D2:
	ldr r0, [sp, #0xc]
	mov r1, #2
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #8]
	orr r1, r0
	mov r0, #1
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, _021A2618 ; =0x021A4820
	mov r0, #0
	mov r2, #0x70
	bl sub_020824BC
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021A2606
	ldr r2, [r4, #0x14]
	cmp r2, #0
	beq _021A2606
	ldr r1, [r4, #0x1c]
	ldr r0, _021A2634 ; =0x000004B8
	ldr r0, [r1, r0]
	blx r2
_021A2606:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A260C: .word 0x021A47F8
_021A2610: .word 0x021A47D8
_021A2614: .word 0x000004B4
_021A2618: .word 0x021A4820
_021A261C: .word 0x000004B3
_021A2620: .word 0x021A4888
_021A2624: .word 0x000004A8
_021A2628: .word 0x021A4830
_021A262C: .word 0x0000035A
_021A2630: .word 0x021A4828
_021A2634: .word 0x000004B8
	thumb_func_end ovy181_21a2490

	thumb_func_start sub_021A2638
sub_021A2638: ; 0x021A2638
	add r1, r0, #0
	add r1, #0x40
	ldrh r1, [r1]
	cmp r1, #1
	bne _021A264C
	add r0, #0x4b
	ldrb r1, [r0]
	mov r0, #2
	tst r0, r1
	bne _021A2650
_021A264C:
	mov r0, #0
	bx lr
_021A2650:
	mov r0, #1
	bx lr
	thumb_func_end sub_021A2638

	thumb_func_start ovy181_21a2654
ovy181_21a2654: ; 0x021A2654
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_020810CC
	cmp r0, #0
	bne _021A2664
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A2664:
	ldrh r1, [r4, #6]
	mov r6, #0
	mov r5, #1
	add r2, r1, #0
_021A266C:
	add r3, r0, #0
	tst r3, r2
	beq _021A267A
	cmp r1, r2
	beq _021A267A
	strh r2, [r4, #6]
	b _021A2692
_021A267A:
	add r3, r6, #1
	lsl r3, r3, #0x10
	lsr r6, r3, #0x10
	cmp r2, #0
	bne _021A2688
	add r2, r5, #0
	b _021A268A
_021A2688:
	lsl r2, r2, #1
_021A268A:
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r6, #0x10
	blo _021A266C
_021A2692:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy181_21a2654

	thumb_func_start ovy181_21a2698
ovy181_21a2698: ; 0x021A2698
	push {r4, r5}
	ldr r2, _021A26D8 ; =0x021A4890
	ldr r3, _021A26DC ; =0x00000528
	ldr r2, [r2, #0xc]
	mov r0, #0
	ldrh r4, [r2, r3]
	mov r1, #0
	mov r5, #0
	cmp r4, #1
	bne _021A26B6
	sub r3, #0x1c
	ldrb r3, [r2, r3]
	cmp r3, #0
	bne _021A26B6
	mov r5, #1
_021A26B6:
	cmp r5, #0
	beq _021A26C4
	ldr r3, _021A26E0 ; =0x00000526
	ldrh r3, [r2, r3]
	cmp r3, #0
	bne _021A26C4
	mov r1, #1
_021A26C4:
	cmp r1, #0
	beq _021A26D2
	ldr r1, _021A26E4 ; =0x0000052A
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _021A26D2
	mov r0, #1
_021A26D2:
	pop {r4, r5}
	bx lr
	nop
_021A26D8: .word 0x021A4890
_021A26DC: .word 0x00000528
_021A26E0: .word 0x00000526
_021A26E4: .word 0x0000052A
	thumb_func_end ovy181_21a2698

	thumb_func_start ovy181_21a26e8
ovy181_21a26e8: ; 0x021A26E8
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _021A271C ; =ovy181_21a2754
	add r0, r4, #0
	bl sub_02080E7C
	add r1, r0, #0
	mov r0, #0x80
	bl ovy181_21a3b00
	ldr r3, _021A2720 ; =0x021A4738
	ldrh r0, [r3]
	str r0, [sp]
	ldrh r1, [r3, #4]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #6]
	add r0, r4, #0
	bl sub_02082560
	add r1, r0, #0
	mov r0, #0x1d
	bl ovy181_21a3b00
	add sp, #4
	pop {r3, r4, pc}
	nop
_021A271C: .word ovy181_21a2754
_021A2720: .word 0x021A4738
	thumb_func_end ovy181_21a26e8

	thumb_func_start ovy181_21a2724
ovy181_21a2724: ; 0x021A2724
	push {r3, r4, r5, lr}
	ldr r3, _021A2748 ; =0x021A4890
	add r1, r0, #0
	ldr r0, [r3, #0xc]
	ldr r2, _021A274C ; =0x0000050D
	mov r5, #0
	strb r5, [r0, r2]
	ldr r4, [r3, #0x10]
	ldr r0, _021A2750 ; =0x00001316
	add r2, #0xf
	strh r5, [r4, r0]
	ldr r0, [r3, #0xc]
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021A2746
	mov r0, #0x11
	blx r2
_021A2746:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2748: .word 0x021A4890
_021A274C: .word 0x0000050D
_021A2750: .word 0x00001316
	thumb_func_end ovy181_21a2724

	thumb_func_start ovy181_21a2754
ovy181_21a2754: ; 0x021A2754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r5, _021A2A3C ; =0x021A4890
	cmp r1, #0x19
	bgt _021A2794
	bge _021A2810
	cmp r1, #0xf
	bhi _021A279A
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A2774: ; jump table
	.short _021A27A4 - _021A2774 - 2 ; case 0
	.short _021A2AE0 - _021A2774 - 2 ; case 1
	.short _021A2B70 - _021A2774 - 2 ; case 2
	.short _021A2C20 - _021A2774 - 2 ; case 3
	.short _021A2C20 - _021A2774 - 2 ; case 4
	.short _021A2C20 - _021A2774 - 2 ; case 5
	.short _021A2C20 - _021A2774 - 2 ; case 6
	.short _021A27F0 - _021A2774 - 2 ; case 7
	.short _021A286A - _021A2774 - 2 ; case 8
	.short _021A2C20 - _021A2774 - 2 ; case 9
	.short _021A2C20 - _021A2774 - 2 ; case 10
	.short _021A2C20 - _021A2774 - 2 ; case 11
	.short _021A2C20 - _021A2774 - 2 ; case 12
	.short _021A2B98 - _021A2774 - 2 ; case 13
	.short _021A29B0 - _021A2774 - 2 ; case 14
	.short _021A2A04 - _021A2774 - 2 ; case 15
_021A2794:
	cmp r1, #0x1d
	bgt _021A279C
	beq _021A27C4
_021A279A:
	b _021A2C20
_021A279C:
	cmp r1, #0x80
	bne _021A27A2
	b _021A2BB4
_021A27A2:
	b _021A2C20
_021A27A4:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021A27BC
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A27BC:
	bl ovy181_21a26e8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A27C4:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021A27DC
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A27DC:
	ldr r0, _021A2A44 ; =ovy181_21a2754
	ldr r1, [r5, #0xc]
	bl sub_02081474
	add r1, r0, #0
	mov r0, #7
	bl ovy181_21a3b00
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A27F0:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #0x15
	ldr r2, [r3, r2]
	add r1, r4, #0
	blx r2
	ldr r0, _021A2A44 ; =ovy181_21a2754
	mov r1, #1
	bl sub_0208252C
	add r1, r0, #0
	mov r0, #0x19
	bl ovy181_21a3b00
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2810:
	ldr r2, [r5, #0xc]
	ldr r3, _021A2A48 ; =0x00000526
	ldrh r1, [r2, r3]
	cmp r1, #0
	bne _021A2846
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021A2830
	sub r3, #0xa
	mov r0, #1
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2830:
	ldr r1, _021A2A4C ; =0x021A4738
	ldr r0, _021A2A44 ; =ovy181_21a2754
	ldr r1, [r1, #8]
	bl sub_02081544
	add r1, r0, #0
	mov r0, #8
	bl ovy181_21a3b00
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2846:
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _021A2862
	mov r0, #0
	strh r0, [r2, r3]
	ldr r2, [r5, #0xc]
	sub r3, #0xa
	mov r0, #1
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2862:
	bl ovy181_21a2724
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A286A:
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021A2882
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2882:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _021A289A
	bge _021A28BA
	cmp r0, #2
	bgt _021A2898
	cmp r0, #0
	blt _021A2898
	beq _021A28A8
	cmp r0, #2
	beq _021A2984
_021A2898:
	b _021A299E
_021A289A:
	cmp r0, #9
	bgt _021A28A2
	beq _021A295E
	b _021A299E
_021A28A2:
	cmp r0, #0x1a
	beq _021A298E
	b _021A299E
_021A28A8:
	ldr r1, [r5, #0xc]
	ldr r0, _021A2A50 ; =0x0000052A
	mov r2, #0
	strh r2, [r1, r0]
	ldr r1, [r5, #0xc]
	sub r0, r0, #2
	strh r2, [r1, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A28BA:
	ldr r3, [r5, #0xc]
	ldr r7, _021A2A48 ; =0x00000526
	ldrh r0, [r3, r7]
	cmp r0, #1
	beq _021A298E
	add r0, r7, #4
	ldrh r2, [r3, r0]
	ldrh r0, [r4, #0x10]
	mov r1, #1
	mov r6, #1
	lsl r1, r0
	lsl r0, r1, #0x10
	add r1, r2, #0
	lsr r0, r0, #0x10
	orr r1, r0
	add r0, r7, #4
	strh r1, [r3, r0]
	add r2, r7, #0
	ldr r3, [r5, #0xc]
	sub r2, #0xa
	ldr r2, [r3, r2]
	mov r0, #0
	add r1, r4, #0
	blx r2
	ldr r1, [r5, #0xc]
	add r0, r7, #2
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021A2946
	ldr r2, [r5, #0x10]
	ldr r0, _021A2A54 ; =0x0000131C
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _021A2946
	str r6, [r2, r0]
	ldr r1, [r5, #0xc]
	add r0, r7, #6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021A290C
	mov r6, #0
_021A290C:
	ldr r2, _021A2A58 ; =0x00000518
	ldr r3, [r5, #0xc]
	add r1, r2, #0
	ldrh r0, [r3, r2]
	add r2, r2, #2
	sub r1, #0x14
	str r0, [sp]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldrh r2, [r3, r2]
	ldr r1, [r3, r1]
	ldr r0, _021A2A44 ; =ovy181_21a2754
	add r3, #0x40
	bl sub_020818F8
	add r1, r0, #0
	mov r0, #0xe
	bl ovy181_21a3b00
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2946:
	bl ovy181_21a2698
	cmp r0, #0
	beq _021A298E
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #0x19
	ldr r2, [r3, r2]
	mov r1, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A295E:
	ldrh r3, [r4, #0x10]
	mov r6, #1
	ldr r1, [r5, #0xc]
	ldr r2, _021A2A50 ; =0x0000052A
	lsl r6, r3
	mvn r3, r6
	lsl r3, r3, #0x10
	ldrh r0, [r1, r2]
	lsr r3, r3, #0x10
	and r0, r3
	strh r0, [r1, r2]
	ldr r3, [r5, #0xc]
	sub r2, #0xe
	ldr r2, [r3, r2]
	mov r0, #1
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2984:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A48 ; =0x00000526
	ldrh r0, [r3, r2]
	cmp r0, #1
	bne _021A2990
_021A298E:
	b _021A2C2E
_021A2990:
	sub r2, #0xa
	ldr r2, [r3, r2]
	mov r0, #0x1c
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A299E:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A29B0:
	ldr r2, [r5, #0x10]
	ldr r0, _021A2A54 ; =0x0000131C
	mov r1, #0
	str r1, [r2, r0]
	ldrh r0, [r4, #4]
	cmp r0, #0xa
	beq _021A29C4
	cmp r0, #0xb
	beq _021A29E2
	b _021A29F2
_021A29C4:
	ldr r0, [r5, #0xc]
	ldr r2, _021A2A5C ; =0x00000528
	mov r3, #1
	strh r3, [r0, r2]
	ldr r3, [r5, #0xc]
	sub r0, r2, #2
	ldrh r0, [r3, r0]
	cmp r0, #0
	bne _021A2AD0
	sub r2, #0xc
	ldr r2, [r3, r2]
	mov r0, #0x19
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A29E2:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	ldr r1, [r4, #8]
	ldr r2, [r3, r2]
	mov r0, #3
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A29F2:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2A40 ; =0x0000051C
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2A04:
	ldr r2, [r5, #0x10]
	ldr r0, _021A2A60 ; =0x000074C8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021A2A34
	ldr r3, _021A2A64 ; =0x000014E8
	mov r1, #0
	mov r0, #0
_021A2A14:
	lsl r6, r0, #2
	add r6, r2, r6
	ldr r6, [r6, r3]
	cmp r6, #0
	beq _021A2A24
	add r1, r1, #1
	cmp r1, #2
	bhs _021A2A2A
_021A2A24:
	add r0, r0, #1
	cmp r0, #0xf
	blo _021A2A14
_021A2A2A:
	cmp r1, #1
	bne _021A2A34
	ldr r0, _021A2A68 ; =0x00001964
	bl OS_SpinWaitSysCycles
_021A2A34:
	ldr r0, [r5, #0xc]
	ldr r6, _021A2A6C ; =0x0000050C
	b _021A2A70
	nop
_021A2A3C: .word 0x021A4890
_021A2A40: .word 0x0000051C
_021A2A44: .word ovy181_21a2754
_021A2A48: .word 0x00000526
_021A2A4C: .word 0x021A4738
_021A2A50: .word 0x0000052A
_021A2A54: .word 0x0000131C
_021A2A58: .word 0x00000518
_021A2A5C: .word 0x00000528
_021A2A60: .word 0x000074C8
_021A2A64: .word 0x000014E8
_021A2A68: .word 0x00001964
_021A2A6C: .word 0x0000050C
_021A2A70:
	mov r7, #0
	strb r7, [r0, r6]
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021A2AA2
	add r2, r6, #0
	ldr r3, [r5, #0xc]
	add r2, #0x10
	ldr r2, [r3, r2]
	mov r0, #2
	add r1, r4, #0
	blx r2
	add r0, r6, #0
	ldr r2, [r5, #0xc]
	add r0, #0x1a
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _021A2AD0
	add r6, #0x10
	ldr r2, [r2, r6]
	mov r0, #0x19
	add r1, r7, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2AA2:
	cmp r0, #0xa
	bne _021A2AB6
	ldr r2, [r5, #0xc]
	add r6, #0x10
	ldr r2, [r2, r6]
	mov r0, #0x2a
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2AB6:
	add r2, r6, #0
	ldr r3, [r5, #0xc]
	add r2, #0x10
	ldr r2, [r3, r2]
	mov r0, #0x13
	add r1, r4, #0
	blx r2
	add r0, r6, #0
	ldr r2, [r5, #0xc]
	add r0, #0x1a
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _021A2AD2
_021A2AD0:
	b _021A2C2E
_021A2AD2:
	add r6, #0x10
	ldr r2, [r2, r6]
	mov r0, #0x19
	add r1, r7, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2AE0:
	ldr r1, [r5, #0x10]
	ldr r0, _021A2C34 ; =0x00001320
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A2B2A
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021A2B0A
	ldr r0, [r5, #0xc]
	ldr r2, _021A2C38 ; =0x00000526
	mov r1, #0
	strh r1, [r0, r2]
	ldr r3, [r5, #0xc]
	sub r2, #0xa
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2B0A:
	ldr r1, [r5, #0xc]
	ldr r0, _021A2C3C ; =0x0000052A
	mov r2, #0
	strh r2, [r1, r0]
	ldr r1, [r5, #0xc]
	sub r0, r0, #2
	strh r2, [r1, r0]
	ldr r0, _021A2C40 ; =ovy181_21a2754
	bl sub_02081448
	add r1, r0, #0
	mov r0, #2
	bl ovy181_21a3b00
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2B2A:
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r6, #1
	mov r7, #0
	bl sub_02080EAC
	mov r0, #0
	bl sub_02080E7C
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021A2B5C
	ldr r0, [r5, #0xc]
	ldr r2, _021A2C38 ; =0x00000526
	add r6, #0xff
	strh r7, [r0, r2]
	ldr r3, [r5, #0xc]
	sub r2, #0xa
	ldr r2, [r3, r2]
	add r0, r6, #0
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2B5C:
	ldr r0, _021A2C40 ; =ovy181_21a2754
	add r1, r7, #0
	bl sub_0208252C
	add r1, r0, #0
	mov r0, #0x19
	bl ovy181_21a3b00
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2B70:
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _021A2B90
	ldr r0, [r5, #0xc]
	ldr r2, _021A2C38 ; =0x00000526
	mov r1, #0
	strh r1, [r0, r2]
	ldr r3, [r5, #0xc]
	sub r2, #0xa
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2B90:
	bl ovy181_21a2724
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2B98:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021A2C2E
	ldrh r1, [r4, #0xa]
	ldr r0, [r5, #0xc]
	ldr r2, _021A2C3C ; =0x0000052A
	mvn r1, r1
	lsl r1, r1, #0x10
	ldrh r3, [r0, r2]
	lsr r1, r1, #0x10
	add sp, #0x1c
	and r1, r3
	strh r1, [r0, r2]
	pop {r4, r5, r6, r7, pc}
_021A2BB4:
	ldrh r0, [r4, #4]
	sub r0, #0x10
	cmp r0, #7
	bhi _021A2C2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2BC8: ; jump table
	.short _021A2BD8 - _021A2BC8 - 2 ; case 0
	.short _021A2BE8 - _021A2BC8 - 2 ; case 1
	.short _021A2BF8 - _021A2BC8 - 2 ; case 2
	.short _021A2C08 - _021A2BC8 - 2 ; case 3
	.short _021A2C2E - _021A2BC8 - 2 ; case 4
	.short _021A2C2E - _021A2BC8 - 2 ; case 5
	.short _021A2C18 - _021A2BC8 - 2 ; case 6
	.short _021A2C2E - _021A2BC8 - 2 ; case 7
_021A2BD8:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2C44 ; =0x0000051C
	mov r0, #0x1d
	ldr r2, [r3, r2]
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2BE8:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2C44 ; =0x0000051C
	mov r0, #0x1f
	ldr r2, [r3, r2]
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2BF8:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2C44 ; =0x0000051C
	mov r0, #0x20
	ldr r2, [r3, r2]
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2C08:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2C44 ; =0x0000051C
	mov r0, #0x21
	ldr r2, [r3, r2]
	add r1, r4, #0
	blx r2
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2C18:
	bl OS_Terminate
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021A2C20:
	ldr r3, [r5, #0xc]
	ldr r2, _021A2C44 ; =0x0000051C
	mov r0, #1
	ldr r2, [r3, r2]
	lsl r0, r0, #8
	add r1, r4, #0
	blx r2
_021A2C2E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A2C34: .word 0x00001320
_021A2C38: .word 0x00000526
_021A2C3C: .word 0x0000052A
_021A2C40: .word ovy181_21a2754
_021A2C44: .word 0x0000051C
	thumb_func_end ovy181_21a2754

	thumb_func_start ovy181_21a2c48
ovy181_21a2c48: ; 0x021A2C48
	push {r3, lr}
	add r1, r0, #0
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _021A2C82
	ldrh r0, [r1, #4]
	cmp r0, #0x15
	bgt _021A2C68
	bge _021A2C76
	cmp r0, #9
	bgt _021A2C82
	cmp r0, #7
	blt _021A2C82
	beq _021A2C82
	cmp r0, #9
	pop {r3, pc}
_021A2C68:
	cmp r0, #0x1a
	bgt _021A2C82
	cmp r0, #0x19
	blt _021A2C82
	beq _021A2C82
	cmp r0, #0x1a
	pop {r3, pc}
_021A2C76:
	ldr r2, _021A2C84 ; =0x021A4890
	mov r0, #9
	ldr r3, [r2, #0xc]
	ldr r2, _021A2C88 ; =0x0000051C
	ldr r2, [r3, r2]
	blx r2
_021A2C82:
	pop {r3, pc}
	.align 2, 0
_021A2C84: .word 0x021A4890
_021A2C88: .word 0x0000051C
	thumb_func_end ovy181_21a2c48

	thumb_func_start ovy181_21a2c8c
ovy181_21a2c8c: ; 0x021A2C8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _021A2F68 ; =0x021A4890
	ldr r2, _021A2F6C ; =0x021A48C0
	ldr r1, [r4, #0xc]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x34]
	add r1, r0, #0
	ldrh r1, [r1]
	cmp r1, #0x15
	bgt _021A2CE0
	cmp r1, #0xe
	blt _021A2CB8
	bne _021A2CAA
	b _021A3222
_021A2CAA:
	cmp r1, #0xf
	bne _021A2CB0
	b _021A3266
_021A2CB0:
	cmp r1, #0x15
	bne _021A2CB6
	b _021A3312
_021A2CB6:
	b _021A3372
_021A2CB8:
	cmp r1, #0xb
	bgt _021A2CD8
	blt _021A2CC0
	b _021A30EA
_021A2CC0:
	cmp r1, #2
	bgt _021A2CD6
	cmp r1, #0
	blt _021A2CD6
	beq _021A2CF4
	cmp r1, #1
	bne _021A2CD0
	b _021A32A8
_021A2CD0:
	cmp r1, #2
	bne _021A2CD6
	b _021A32E8
_021A2CD6:
	b _021A3372
_021A2CD8:
	cmp r1, #0xc
	bne _021A2CDE
	b _021A3122
_021A2CDE:
	b _021A3372
_021A2CE0:
	cmp r1, #0x26
	bgt _021A2CEC
	bge _021A2D94
	cmp r1, #0x1d
	beq _021A2D34
	b _021A3372
_021A2CEC:
	cmp r1, #0x80
	bne _021A2CF2
	b _021A335E
_021A2CF2:
	b _021A3372
_021A2CF4:
	ldrh r0, [r0, #2]
	ldr r3, _021A2F70 ; =0x0000051C
	cmp r0, #0
	beq _021A2D0C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A2D0C:
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	mov r0, #0x15
	blx r2
	ldr r3, _021A2F74 ; =0x021A4738
	ldrh r0, [r3]
	str r0, [sp]
	ldrh r1, [r3, #4]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #6]
	ldr r0, _021A2F78 ; =ovy181_21a2c8c
	bl sub_02082560
	add r1, r0, #0
	mov r0, #0x1d
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A2D34:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021A2D4C
	ldr r3, _021A2F70 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A2D4C:
	ldrh r0, [r2, #6]
	cmp r0, #0
	bne _021A2D56
	mov r0, #1
	strh r0, [r2, #6]
_021A2D56:
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _021A2D60
	mov r0, #0xc8
	strh r0, [r2, #8]
_021A2D60:
	ldr r1, _021A2F6C ; =0x021A48C0
	mov r0, #0xff
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	strb r0, [r1, #0xc]
	strb r0, [r1, #0xd]
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	mov r3, #1
	strh r3, [r1, #0x10]
	mov r0, #0
	strh r0, [r1, #0x12]
	ldr r2, _021A2F7C ; =0x000005E4
	ldr r0, [sp, #0x34]
	str r3, [r0, r2]
	add r2, r2, #4
	str r3, [r0, r2]
	ldr r0, _021A2F78 ; =ovy181_21a2c8c
	bl sub_020815C8
	add r1, r0, #0
	mov r0, #0x26
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A2D94:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021A2DAC
	ldr r3, _021A2F70 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A2DAC:
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #8]
	cmp r0, #3
	bne _021A2DB6
	b _021A3380
_021A2DB6:
	cmp r0, #4
	bne _021A2DBC
	b _021A3092
_021A2DBC:
	cmp r0, #5
	beq _021A2DC2
	b _021A30D8
_021A2DC2:
	mov r0, #0
	str r0, [sp, #0x2c]
	mov r0, #0
	b _021A303C
_021A2DCA:
	ldr r0, [sp, #0x30]
	mov r2, #0
	lsl r1, r0, #2
	ldr r0, [sp, #0x1c]
	mov r3, #0
	add r0, r0, r1
	ldr r5, [r0, #0x10]
	mov r1, #6
	ldr r0, [sp, #0x34]
	lsl r1, r1, #8
	add r6, r0, r1
	ldrh r0, [r5, #0x3c]
	mov r1, #0
	mov r4, #0
	cmp r0, #0x10
	blo _021A2DF0
	cmp r0, #0x80
	bhi _021A2DF0
	mov r4, #1
_021A2DF0:
	cmp r4, #0
	beq _021A2E02
	add r4, r5, #0
	add r4, #0x4a
	ldrb r4, [r4]
	add r4, #0x10
	cmp r0, r4
	bne _021A2E02
	mov r3, #1
_021A2E02:
	ldr r4, _021A2F68 ; =0x021A4890
	cmp r3, #0
	beq _021A2E14
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #1
	bne _021A2E14
	mov r2, #1
_021A2E14:
	cmp r2, #0
	beq _021A2E28
	ldrh r2, [r5, #0x3c]
	ldrh r0, [r5]
	add r2, r2, #1
	add r2, #0x40
	lsr r2, r2, #1
	cmp r0, r2
	bne _021A2E28
	mov r1, #1
_021A2E28:
	cmp r1, #0
	beq _021A2E36
	add r0, r5, #0
	bl sub_021A2638
	cmp r0, #0
	bne _021A2E42
_021A2E36:
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	b _021A3034
_021A2E42:
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021A2E5A
	ldr r0, _021A2F74 ; =0x021A4738
	ldr r2, [r5, #0x44]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x10]
	and r2, r1
	and r0, r1
	cmp r2, r0
	bne _021A2E5A
	b _021A2E36
_021A2E5A:
	mov r2, #6
	mov r4, #0
	lsl r2, r2, #6
	b _021A2F82
_021A2E62:
	add r1, r4, #0
	mul r1, r2
	mov ip, r1
	add r1, r6, r1
	add r1, #0xca
	ldrb r3, [r5, #4]
	mov r0, #0
	ldrb r1, [r1]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	mov r7, #0
	cmp r3, r1
	bne _021A2E8E
	mov r3, ip
	add r3, r6, r3
	add r3, #0xcb
	ldrb r1, [r5, #5]
	ldrb r3, [r3]
	cmp r1, r3
	bne _021A2E8E
	mov r0, #1
_021A2E8E:
	cmp r0, #0
	beq _021A2EA4
	add r1, r4, #0
	mul r1, r2
	add r1, r6, r1
	add r1, #0xcc
	ldrb r0, [r5, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bne _021A2EA4
	mov r7, #1
_021A2EA4:
	cmp r7, #0
	beq _021A2EBC
	add r1, r4, #0
	mul r1, r2
	add r1, r6, r1
	add r1, #0xcd
	ldrb r0, [r5, #7]
	ldrb r1, [r1]
	cmp r0, r1
	bne _021A2EBC
	mov r0, #1
	str r0, [sp, #0x20]
_021A2EBC:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021A2ED6
	add r1, r4, #0
	mul r1, r2
	add r1, r6, r1
	add r1, #0xce
	ldrb r0, [r5, #8]
	ldrb r1, [r1]
	cmp r0, r1
	bne _021A2ED6
	mov r0, #1
	str r0, [sp, #0x24]
_021A2ED6:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021A2EF0
	add r1, r4, #0
	mul r1, r2
	add r1, r6, r1
	add r1, #0xcf
	ldrb r0, [r5, #9]
	ldrb r1, [r1]
	cmp r0, r1
	bne _021A2EF0
	mov r0, #1
	str r0, [sp, #0x28]
_021A2EF0:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021A2F80
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	mul r1, r0
	add r0, r6, r1
	add r6, r6, r1
	ldrh r2, [r5, #0x3c]
	add r0, #0xf6
	add r6, #0xf8
	strh r2, [r0]
	add r2, r5, #0
	add r2, #0x40
	mov r3, #0x10
_021A2F10:
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r3, r3, #1
	bne _021A2F10
	mov r6, #6
	ldr r0, [sp, #0x34]
	lsl r6, r6, #8
	add r1, r0, r6
	lsr r0, r6, #2
	mul r0, r4
	add r0, r1, r0
	mov r1, #0xc0
	blx DC_InvalidateRange
	ldr r0, _021A2F68 ; =0x021A4890
	ldr r2, [sp, #0x34]
	ldrh r0, [r0]
	add r3, r2, r6
	mov r2, #0xc0
	add r2, #0xc0
	mov r1, #1
	mul r2, r4
	str r1, [sp]
	add r2, r3, r2
	add r1, r5, #0
	mov r3, #0xc0
	bl MIi_DmaCopy16
	add r1, r6, #0
	ldr r0, [sp, #0x34]
	sub r1, #0x14
	str r4, [r0, r1]
	ldr r1, [sp, #0x1c]
	sub r6, #0xe4
	add r1, #0x50
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	mov r0, #4
	lsl r2, r1, #1
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #0x34]
	ldr r2, [r2, r6]
	b _021A305A
	.align 2, 0
_021A2F68: .word 0x021A4890
_021A2F6C: .word 0x021A48C0
_021A2F70: .word 0x0000051C
_021A2F74: .word 0x021A4738
_021A2F78: .word ovy181_21a2c8c
_021A2F7C: .word 0x000005E4
_021A2F80:
	add r4, r4, #1
_021A2F82:
	mov r0, #0x5e
	ldr r1, [sp, #0x34]
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	cmp r4, r0
	bge _021A2F90
	b _021A2E62
_021A2F90:
	cmp r4, #0x10
	bge _021A3034
	mov r7, #0x5e
	ldr r0, [sp, #0x34]
	add r1, r4, #1
	lsl r7, r7, #4
	strh r1, [r0, r7]
	mov r1, #6
	lsl r1, r1, #6
	mul r1, r4
	add r1, r6, r1
	add r0, r5, #4
	add r1, #0xca
	mov r2, #6
	blx MI_CpuCopy8
	mov r1, #6
	lsl r1, r1, #6
	mul r1, r4
	add r2, r6, r1
	ldrh r0, [r5, #0x36]
	add r2, #0xd0
	strh r0, [r2]
	ldr r0, [sp, #0x30]
	lsl r2, r0, #1
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	add r0, #0x50
	ldrh r2, [r0]
	add r0, r6, r1
	add r0, #0xd2
	strh r2, [r0]
	add r0, r5, #0
	add r1, r6, r1
	add r0, #0x40
	add r1, #0xf8
	mov r2, #0x80
	blx MIi_CpuCopy16
	mov r0, #6
	lsl r1, r0, #8
	ldr r0, [sp, #0x34]
	mov r6, #0xc0
	add r1, r0, r1
	mov r0, #6
	lsl r0, r0, #6
	mul r0, r4
	add r0, r1, r0
	mov r1, #0xc0
	blx DC_InvalidateRange
	ldr r0, _021A3320 ; =0x021A4890
	ldr r2, [sp, #0x34]
	lsl r3, r6, #3
	add r3, r2, r3
	mov r2, #0xc0
	add r2, #0xc0
	mul r2, r4
	add r2, r3, r2
	ldrh r0, [r0]
	mov r1, #1
	mov r3, #0xc0
	str r1, [sp]
	add r1, r5, #0
	bl MIi_DmaCopy16
	add r1, r7, #0
	ldr r0, [sp, #0x34]
	add r1, #0xc
	str r4, [r0, r1]
	ldr r1, [sp, #0x1c]
	sub r7, #0xc4
	add r1, #0x50
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	mov r0, #4
	lsl r2, r1, #1
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #0x34]
	ldr r2, [r2, r7]
	b _021A305A
_021A3034:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021A303C:
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	ldrh r1, [r0, #0xe]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bge _021A304A
	b _021A2DCA
_021A304A:
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bne _021A305C
	ldr r3, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	mov r0, #5
_021A305A:
	blx r2
_021A305C:
	ldr r1, _021A3328 ; =0x000005E4
	ldr r0, [sp, #0x34]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A30AA
	ldr r0, [sp, #0x34]
	add r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A307E
	ldr r0, _021A332C ; =0x021A48C0
	bl ovy181_21a2654
	cmp r0, #0
	bne _021A307E
	bl ovy181_21a37e4
_021A307E:
	ldr r0, _021A3330 ; =ovy181_21a2c8c
	ldr r1, _021A332C ; =0x021A48C0
	bl sub_020815C8
	add r1, r0, #0
	mov r0, #0x26
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3092:
	ldr r4, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r4]
	mov r0, #5
	blx r2
	add r1, r4, #0
	ldr r0, [sp, #0x34]
	add r1, #0xc8
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021A30AC
_021A30AA:
	b _021A3380
_021A30AC:
	ldr r0, [sp, #0x34]
	add r4, #0xcc
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021A30C4
	ldr r0, _021A332C ; =0x021A48C0
	bl ovy181_21a2654
	cmp r0, #0
	bne _021A30C4
	bl ovy181_21a37e4
_021A30C4:
	ldr r0, _021A3330 ; =ovy181_21a2c8c
	ldr r1, _021A332C ; =0x021A48C0
	bl sub_020815C8
	add r1, r0, #0
	mov r0, #0x26
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A30D8:
	ldr r3, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A30EA:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021A3102
	ldr r3, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3102:
	mov r1, #0x52
	ldr r0, [sp, #0x34]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r2, #0
	ldr r0, _021A3330 ; =ovy181_21a2c8c
	mov r3, #1
	str r2, [sp]
	bl sub_020816DC
	add r1, r0, #0
	mov r0, #0xc
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3122:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021A3142
	mov r3, #0x5e
	ldr r0, [sp, #0x34]
	mov r1, #0
	lsl r3, r3, #4
	strh r1, [r0, r3]
	ldr r2, [sp, #0x34]
	sub r3, #0xc4
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	mov r0, #0xb
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3142:
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #8]
	cmp r0, #9
	bgt _021A315A
	cmp r0, #6
	blt _021A3210
	beq _021A3160
	cmp r0, #7
	beq _021A3172
	cmp r0, #9
	beq _021A31F2
	b _021A3210
_021A315A:
	cmp r0, #0x1a
	beq _021A3242
	b _021A3210
_021A3160:
	ldr r0, [sp, #0x34]
	ldr r1, _021A3334 ; =0x0000052A
	mov r2, #0
	strh r2, [r0, r1]
	mov r2, #1
	sub r1, r1, #2
	strh r2, [r0, r1]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3172:
	ldr r0, [sp, #0x1c]
	ldr r4, _021A3338 ; =0x000005E2
	ldrh r1, [r0, #0xa]
	ldr r0, [sp, #0x34]
	add r3, r4, #0
	strh r1, [r0, r4]
	ldr r2, [sp, #0x34]
	sub r3, #0xc6
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	mov r0, #6
	blx r2
	add r1, r4, #0
	ldr r0, [sp, #0x34]
	mov r6, #1
	sub r1, #0xb8
	strh r6, [r0, r1]
	ldr r1, _021A333C ; =ovy181_21a2c48
	mov r0, #1
	mov r2, #0
	mov r5, #0
	bl sub_02080EAC
	cmp r0, #0
	bne _021A3242
	ldr r0, [sp, #0x34]
	sub r4, #0xb6
	ldrh r0, [r0, r4]
	cmp r0, #0
	bne _021A31B0
	add r5, r6, #0
_021A31B0:
	ldr r2, _021A3340 ; =0x00000518
	ldr r0, [sp, #0x34]
	add r3, r2, #0
	ldrh r0, [r0, r2]
	ldr r1, [sp, #0x34]
	sub r3, #0x14
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, [r1, r3]
	add r3, r2, #2
	ldr r2, [sp, #0x34]
	ldr r0, _021A3330 ; =ovy181_21a2c8c
	ldrh r2, [r2, r3]
	ldr r3, [sp, #0x34]
	add r3, #0x40
	str r3, [sp, #0x34]
	bl sub_020818F8
	add r1, r0, #0
	mov r0, #0xe
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A31F2:
	ldr r4, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r4]
	mov r0, #0xa
	blx r2
	add r1, r4, #0
	ldr r0, [sp, #0x34]
	mov r2, #0
	add r1, #0xe
	strh r2, [r0, r1]
	add r4, #0xc
	add sp, #0x38
	strh r2, [r0, r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A3210:
	ldr r3, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3222:
	ldrh r0, [r0, #4]
	cmp r0, #0xa
	beq _021A3232
	cmp r0, #0xc
	beq _021A3242
	cmp r0, #0xd
	beq _021A3242
	b _021A3254
_021A3232:
	ldr r4, _021A3344 ; =0x00000528
	ldr r0, [sp, #0x34]
	mov r1, #1
	strh r1, [r0, r4]
	bl ovy181_21a2698
	cmp r0, #0
	bne _021A3244
_021A3242:
	b _021A3380
_021A3244:
	ldr r2, [sp, #0x34]
	sub r4, #0xc
	ldr r2, [r2, r4]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3254:
	ldr r3, _021A3324 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3266:
	ldr r2, _021A3348 ; =0x0000050C
	ldr r0, [sp, #0x34]
	mov r1, #0
	strb r1, [r0, r2]
	ldr r0, [sp, #0x1c]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021A327A
	mov r0, #8
	b _021A3284
_021A327A:
	cmp r0, #9
	bne _021A3282
	mov r0, #0x29
	b _021A3284
_021A3282:
	mov r0, #0x12
_021A3284:
	ldr r3, [sp, #0x34]
	add r2, #0x10
	ldr r1, [sp, #0x1c]
	ldr r2, [r3, r2]
	blx r2
	ldr r0, [r4, #0xc]
	ldr r3, _021A334C ; =0x00000526
	ldrh r0, [r0, r3]
	cmp r0, #0
	bne _021A3380
	ldr r2, [sp, #0x34]
	sub r3, #0xa
	ldr r2, [r2, r3]
	mov r0, #0x19
	mov r1, #0
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A32A8:
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _021A32C8
	ldr r3, _021A334C ; =0x00000526
	ldr r0, [sp, #0x34]
	mov r1, #0
	strh r1, [r0, r3]
	mov r0, #1
	ldr r2, [sp, #0x34]
	sub r3, #0xa
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A32C8:
	ldr r1, [r4, #0xc]
	ldr r0, _021A3334 ; =0x0000052A
	mov r2, #0
	strh r2, [r1, r0]
	ldr r1, [r4, #0xc]
	sub r0, r0, #2
	strh r2, [r1, r0]
	ldr r0, _021A3330 ; =ovy181_21a2c8c
	bl sub_02081448
	add r1, r0, #0
	mov r0, #2
	bl ovy181_21a3b00
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A32E8:
	add r1, r0, #0
	ldrh r1, [r1, #2]
	cmp r1, #0
	beq _021A330A
	ldr r3, _021A334C ; =0x00000526
	ldr r0, [sp, #0x34]
	mov r1, #0
	strh r1, [r0, r3]
	mov r0, #1
	ldr r2, [sp, #0x34]
	sub r3, #0xa
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A330A:
	bl ovy181_21a2724
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3312:
	bl ovy181_21a2698
	cmp r0, #0
	beq _021A3380
	ldr r3, _021A3324 ; =0x0000051C
	b _021A3350
	nop
_021A3320: .word 0x021A4890
_021A3324: .word 0x0000051C
_021A3328: .word 0x000005E4
_021A332C: .word 0x021A48C0
_021A3330: .word ovy181_21a2c8c
_021A3334: .word 0x0000052A
_021A3338: .word 0x000005E2
_021A333C: .word ovy181_21a2c48
_021A3340: .word 0x00000518
_021A3344: .word 0x00000528
_021A3348: .word 0x0000050C
_021A334C: .word 0x00000526
_021A3350:
	ldr r2, [sp, #0x34]
	mov r0, #0x19
	ldr r2, [r2, r3]
	mov r1, #0
	blx r2
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A335E:
	ldrh r0, [r0, #4]
	cmp r0, #0x16
	beq _021A336A
	add sp, #0x38
	cmp r0, #0x17
	pop {r3, r4, r5, r6, r7, pc}
_021A336A:
	bl OS_Terminate
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021A3372:
	ldr r3, _021A3384 ; =0x0000051C
	ldr r2, [sp, #0x34]
	mov r0, #1
	ldr r1, [sp, #0x1c]
	ldr r2, [r2, r3]
	lsl r0, r0, #8
	blx r2
_021A3380:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3384: .word 0x0000051C
	thumb_func_end ovy181_21a2c8c

	thumb_func_start ovy181_21a3388
ovy181_21a3388: ; 0x021A3388
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	add r0, r4, #0
	bl OS_GetMacAddress
	mov r2, #0
	mov r1, #0
_021A3398:
	ldrb r0, [r4, r2]
	add r2, r2, #1
	add r1, r1, r0
	cmp r2, #6
	blt _021A3398
	ldr r0, _021A33B8 ; =0x02FFFC3C
	ldr r0, [r0]
	add r1, r1, r0
	mov r0, #7
	mul r0, r1
	mov r1, #0x14
	blx sub_0208D868
	add r0, r1, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021A33B8: .word 0x02FFFC3C
	thumb_func_end ovy181_21a3388

	thumb_func_start ovy181_21a33bc
ovy181_21a33bc: ; 0x021A33BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _021A3500 ; =0x021A4890
	str r2, [sp]
	ldr r2, [r1, #0x10]
	str r3, [sp, #4]
	cmp r2, #0
	beq _021A33DC
	ldr r1, _021A3504 ; =0x00001316
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _021A33DC
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021A33DC:
	add r0, #0x1f
	add r6, r0, #0
	mov r1, #0x1f
	ldr r0, _021A3508 ; =0x00001E1F
	bic r6, r1
	add r7, r6, r0
	bic r7, r1
	mov r1, #1
	ldr r0, [sp, #4]
	lsl r1, r1, #0x10
	cmp r0, r1
	bne _021A33FA
	bl sub_020812B8
	str r0, [sp, #4]
_021A33FA:
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r1, _021A350C ; =0x0000FFFF
	ldr r0, _021A3510 ; =0x021A4738
	mov r2, #0x1e
	strh r1, [r0, #4]
	mov r1, #5
	strh r1, [r0, #6]
	mov r1, #0x28
	strh r1, [r0, #2]
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #8]
	ldr r1, [sp, #0x20]
	ldr r0, _021A3500 ; =0x021A4890
	lsl r2, r2, #8
	strh r1, [r0]
	str r6, [r0, #0xc]
	str r7, [r0, #0x10]
	mov r0, #0
	add r1, r6, #0
	mov r4, #0
	blx MIi_CpuClear32
	mov r2, #0x4d
	mov r0, #0
	add r1, r7, #0
	lsl r2, r2, #6
	blx MIi_CpuClear16
	mov r0, #0x53
	lsl r0, r0, #4
	ldrb r1, [r5, #1]
	add r0, r6, r0
	cmp r1, #0
	ble _021A3456
_021A3444:
	lsl r1, r4, #1
	add r1, r5, r1
	ldrh r1, [r1, #2]
	add r4, r4, #1
	strh r1, [r0]
	ldrb r1, [r5, #1]
	add r0, r0, #2
	cmp r4, r1
	blt _021A3444
_021A3456:
	ldr r0, _021A3514 ; =0x00000538
	ldr r4, _021A3510 ; =0x021A4738
	add r2, r6, r0
	ldr r0, [r4, #0xc]
	mov r3, #0
_021A3460:
	ldrh r1, [r0]
	cmp r1, #0
	beq _021A3474
	add r0, r0, #2
	strh r1, [r2]
	add r3, r3, #1
	add r2, r2, #2
	str r0, [r4, #0xc]
	cmp r3, #0x10
	blt _021A3460
_021A3474:
	mov r4, #0x13
	lsl r4, r4, #8
	add r0, r5, #0
	add r1, r7, r4
	mov r2, #0x16
	blx MI_CpuCopy8
	ldrb r0, [r5, #1]
	cmp r0, #0xa
	bhs _021A3492
	lsl r0, r0, #1
	add r1, r7, r0
	mov r2, #0
	add r0, r4, #2
	strh r2, [r1, r0]
_021A3492:
	mov r0, #1
	mov r4, #5
	lsl r0, r0, #8
	lsl r4, r4, #8
	strh r0, [r6, r4]
	mov r1, #8
	add r0, r4, #2
	strh r1, [r6, r0]
	add r0, r4, #0
	add r1, r4, #0
	mov r5, #0
	add r0, #0x18
	strh r5, [r6, r0]
	add r0, r4, #0
	add r0, #0x1a
	strh r5, [r6, r0]
	add r1, #0x2c
	mov r0, #1
	strh r0, [r6, r1]
	lsl r0, r0, #0xa
	add r1, r7, r0
	add r0, r4, #4
	str r1, [r6, r0]
	strh r5, [r6, #0xe]
	strh r5, [r6, #0x12]
	mov r0, #1
	strh r0, [r6, #0x16]
	ldr r0, [sp]
	strh r5, [r6, #0x14]
	str r0, [r6, #8]
	ldr r0, [sp, #4]
	strh r0, [r6, #0xc]
	bl ovy181_21a3388
	add r0, #0xc8
	strh r0, [r6, #0x18]
	mov r0, #0xf
	strh r0, [r6, #0x10]
	add r0, r4, #0
	add r0, #0xc
	strb r5, [r6, r0]
	add r4, #0xd
	ldr r1, _021A3504 ; =0x00001316
	strb r5, [r6, r4]
	mov r0, #1
	strh r0, [r7, r1]
	add r0, r1, #6
	str r5, [r7, r0]
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A3500: .word 0x021A4890
_021A3504: .word 0x00001316
_021A3508: .word 0x00001E1F
_021A350C: .word 0x0000FFFF
_021A3510: .word 0x021A4738
_021A3514: .word 0x00000538
	thumb_func_end ovy181_21a33bc

	thumb_func_start sub_021A3518
sub_021A3518: ; 0x021A3518
	ldr r3, _021A3554 ; =0x000001FE
	cmp r0, r3
	bhi _021A3522
	cmp r0, #0xe4
	bhs _021A3526
_021A3522:
	mov r0, #0
	bx lr
_021A3526:
	cmp r1, #0x10
	bhi _021A352E
	cmp r1, #8
	bhs _021A3532
_021A352E:
	mov r0, #0
	bx lr
_021A3532:
	add r0, #0x26
	lsl r0, r0, #2
	sub r3, #0xb4
	add r1, #0x20
	add r3, r0, r3
	lsl r0, r1, #2
	add r0, #0x70
	mul r0, r2
	add r1, r3, r0
	ldr r0, _021A3558 ; =0x000015E0
	cmp r1, r0
	bge _021A354E
	mov r0, #1
	bx lr
_021A354E:
	mov r0, #0
	bx lr
	nop
_021A3554: .word 0x000001FE
_021A3558: .word 0x000015E0
	thumb_func_end sub_021A3518

	thumb_func_start ovy181_21a355c
ovy181_21a355c: ; 0x021A355C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	blx OS_DisableInterrupts
	ldr r1, _021A35B8 ; =0x021A4890
	ldr r4, _021A35BC ; =0x0000050D
	ldr r1, [r1, #0xc]
	add r7, r0, #0
	ldrb r1, [r1, r4]
	cmp r1, #0
	beq _021A357C
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A357C:
	add r0, r5, #0
	mov r1, #8
	add r2, r6, #0
	bl sub_021A3518
	cmp r0, #0
	bne _021A3594
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3594:
	ldr r0, _021A35B8 ; =0x021A4890
	ldr r0, [r0, #0xc]
	strh r6, [r0, #0x10]
	ldr r0, _021A35B8 ; =0x021A4890
	ldr r1, [r0, #0xc]
	add r0, r4, #0
	sub r0, #0xd
	strh r5, [r1, r0]
	ldr r0, _021A35B8 ; =0x021A4890
	sub r4, #0xb
	ldr r1, [r0, #0xc]
	mov r0, #8
	strh r0, [r1, r4]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A35B8: .word 0x021A4890
_021A35BC: .word 0x0000050D
	thumb_func_end ovy181_21a355c

	thumb_func_start ovy181_21a35c0
ovy181_21a35c0: ; 0x021A35C0
	push {r4, r5, r6, lr}
	ldr r5, _021A3640 ; =0x021A4890
	ldr r4, _021A3644 ; =0x00000528
	ldr r0, [r5, #0xc]
	mov r6, #0
	strh r6, [r0, r4]
	ldr r1, [r5, #0xc]
	add r0, r4, #2
	strh r6, [r1, r0]
	ldr r1, [r5, #0xc]
	sub r0, r4, #2
	strh r6, [r1, r0]
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	add r0, #0x20
	strh r6, [r1, r0]
	mov r0, #0x1e
	bl sub_021A39A0
	ldr r1, [r5, #0x10]
	ldr r0, _021A3648 ; =0x00001320
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A3622
	sub r4, #0x20
_021A35F2:
	ldr r1, [r5, #0xc]
	ldrh r2, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r1, r4]
	bl sub_020813C4
	cmp r0, #4
	beq _021A35F2
	cmp r0, #2
	beq _021A360A
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A360A:
	ldr r5, _021A3640 ; =0x021A4890
	ldr r4, _021A364C ; =0x00000508
	ldr r0, [r5, #0xc]
	ldr r0, [r0, r4]
	bl sub_02080E7C
	ldr r1, [r5, #0xc]
	mov r2, #1
	add r0, r4, #5
	strb r2, [r1, r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3622:
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	sub r0, #0x20
	ldr r0, [r1, r0]
	bl sub_02080E7C
	ldr r0, [r5, #0xc]
	mov r1, #1
	sub r4, #0x1b
	strb r1, [r0, r4]
	bl ovy181_21a26e8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021A3640: .word 0x021A4890
_021A3644: .word 0x00000528
_021A3648: .word 0x00001320
_021A364C: .word 0x00000508
	thumb_func_end ovy181_21a35c0

	thumb_func_start ovy181_21a3650
ovy181_21a3650: ; 0x021A3650
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r4, _021A3768 ; =0x021A4890
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r2, #0x1f
	strh r5, [r0, #0x32]
	mov r7, #0x4d
	ldr r1, [r4, #0x10]
	ldr r0, _021A376C ; =0x00007D1F
	ldr r6, _021A3770 ; =0x000014E4
	add r0, r1, r0
	bic r0, r2
	str r0, [r4, #4]
	ldr r0, [r1, r6]
	lsl r7, r7, #6
	str r0, [sp, #4]
	ldr r2, _021A3774 ; =0x000069C0
	mov r0, #0
	add r1, r1, r7
	mov r5, #0
	blx MIi_CpuClear16
	ldr r0, [sp, #4]
	bl ovy181_21a092c
	mov r0, #5
	ldr r1, [r4, #0xc]
	lsl r0, r0, #8
	ldrh r1, [r1, r0]
	sub r7, #0x28
	add r0, r0, #2
	sub r2, r1, #6
	ldr r1, [r4, #0x10]
	str r2, [r1, r7]
	ldr r1, [r4, #0xc]
	ldrh r0, [r1, r0]
	bl ovy181_21a3e44
	add r0, r6, #0
	ldr r1, [r4, #0x10]
	add r0, #0x54
	add r0, r1, r0
	bl sub_021A3E60
	add r0, r6, #4
	add r7, r5, #0
	sub r1, r5, #1
	add r6, #0x42
_021A36B8:
	ldr r3, [r4, #0x10]
	lsl r2, r5, #2
	add r2, r3, r2
	str r7, [r2, r0]
	ldr r2, [r4, #0x10]
	add r2, r2, r5
	add r5, r5, #1
	strb r1, [r2, r6]
	cmp r5, #0xf
	blt _021A36B8
	ldr r4, _021A3768 ; =0x021A4890
	ldr r0, _021A3778 ; =0x00001524
	ldr r1, [r4, #0x10]
	ldr r5, _021A377C ; =0x00001788
	strb r7, [r1, r0]
	ldr r1, [r4, #0x10]
	ldr r2, _021A3780 ; =0x00005D40
	add r0, r7, #0
	add r1, r1, r5
	blx MIi_CpuClear16
	ldr r0, [r4, #0x10]
	sub r5, #0x34
	add r0, r0, r5
	add r1, r7, #0
	mov r2, #0x1e
	blx MI_CpuFill8
	ldr r1, [r4, #0xc]
	ldr r0, _021A3784 ; =0x00000524
	mov r2, #1
	strh r2, [r1, r0]
	add r1, r0, #0
	ldr r3, _021A3788 ; =ovy181_21a0ab8
	ldr r2, [r4, #0xc]
	sub r1, #8
	str r3, [r2, r1]
	add r1, r0, #0
	ldr r3, _021A378C ; =ovy181_21a2754
	ldr r2, [r4, #0xc]
	sub r1, #0x1c
	str r3, [r2, r1]
	add r1, r0, #0
	ldr r2, [r4, #0xc]
	sub r1, #0x24
	ldrh r1, [r2, r1]
	strh r1, [r2, #0x34]
	ldr r5, [r4, #0xc]
	add r1, r0, #0
	ldrh r3, [r5, #0x34]
	mov r2, #0x1f
	sub r1, #0xc
	add r3, #0x23
	bic r3, r2
	strh r3, [r5, r1]
	add r1, r0, #0
	ldr r3, [r4, #0xc]
	sub r1, #0x22
	ldrh r1, [r3, r1]
	sub r0, #0xa
	strh r1, [r3, #0x36]
	ldr r1, [r4, #0xc]
	mov r3, #0xf
	ldrh r5, [r1, #0x36]
	add r5, #0xe
	mul r3, r5
	add r3, #0x29
	bic r3, r2
	lsl r2, r3, #1
	strh r2, [r1, r0]
	bl sub_021A2238
	bl ovy181_21a35c0
	add r5, r0, #0
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #0xf
	mov r1, #1
	bl PXI_IsCallbackReady
	ldr r2, [r4, #0x10]
	ldr r1, _021A3790 ; =0x000074C8
	str r0, [r2, r1]
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3768: .word 0x021A4890
_021A376C: .word 0x00007D1F
_021A3770: .word 0x000014E4
_021A3774: .word 0x000069C0
_021A3778: .word 0x00001524
_021A377C: .word 0x00001788
_021A3780: .word 0x00005D40
_021A3784: .word 0x00000524
_021A3788: .word ovy181_21a0ab8
_021A378C: .word ovy181_21a2754
_021A3790: .word 0x000074C8
	thumb_func_end ovy181_21a3650

	thumb_func_start sub_021A3794
sub_021A3794: ; 0x021A3794
	ldr r1, _021A37A4 ; =0x021A4890
	mov r3, #1
	ldr r2, [r1, #0x10]
	ldr r1, _021A37A8 ; =0x00001320
	str r3, [r2, r1]
	ldr r3, _021A37AC ; =ovy181_21a3650
	bx r3
	nop
_021A37A4: .word 0x021A4890
_021A37A8: .word 0x00001320
_021A37AC: .word ovy181_21a3650
	thumb_func_end sub_021A3794

	thumb_func_start ovy181_21a37b0
ovy181_21a37b0: ; 0x021A37B0
	push {r4, lr}
	ldr r0, _021A37D4 ; =0x021A4890
	ldr r1, [r0, #0xc]
	ldr r0, _021A37D8 ; =0x00000508
	ldr r0, [r1, r0]
	bl sub_02081424
	add r4, r0, #0
	mov r0, #1
	add r1, r4, #0
	bl ovy181_21a3b00
	cmp r4, #2
	bne _021A37CE
	mov r4, #0
_021A37CE:
	add r0, r4, #0
	pop {r4, pc}
	nop
_021A37D4: .word 0x021A4890
_021A37D8: .word 0x00000508
	thumb_func_end ovy181_21a37b0
_021A37DC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0xB1, 0x37, 0x1A, 0x02

	thumb_func_start ovy181_21a37e4
ovy181_21a37e4: ; 0x021A37E4
	push {r4, r5, r6, lr}
	mov r4, #1
	blx OS_DisableInterrupts
	ldr r1, _021A383C ; =0x021A4890
	add r5, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _021A3840 ; =0x0000050D
	ldrb r3, [r2, r0]
	cmp r3, #0
	bne _021A3802
	mov r0, #0
	bl ovy181_21a2724
	b _021A3832
_021A3802:
	add r3, r0, #0
	add r3, #0x19
	ldrh r3, [r2, r3]
	cmp r3, #0
	bne _021A3832
	add r3, r0, #0
	mov r6, #0
	add r3, #0xd7
	str r6, [r2, r3]
	ldr r1, [r1, #0xc]
	add r0, #0x19
	strh r4, [r1, r0]
	bl sub_021A3CF8
	cmp r0, #0
	beq _021A382C
	ldr r0, _021A3844 ; =0x021A37DD
	bl ovy181_21a3e14
	add r4, r6, #0
	b _021A3832
_021A382C:
	bl ovy181_21a37b0
	add r4, r0, #0
_021A3832:
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A383C: .word 0x021A4890
_021A3840: .word 0x0000050D
_021A3844: .word 0x021A37DD
	thumb_func_end ovy181_21a37e4

	thumb_func_start ovy181_21a3848
ovy181_21a3848: ; 0x021A3848
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _021A386C ; =0x021A4890
	ldr r1, [r0, #0x10]
	ldr r0, _021A3870 ; =0x00001320
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021A3860
	bl OS_Terminate
_021A3860:
	bl ovy181_21a37e4
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r4, pc}
	.align 2, 0
_021A386C: .word 0x021A4890
_021A3870: .word 0x00001320
	thumb_func_end ovy181_21a3848

	thumb_func_start ovy181_21a3874
ovy181_21a3874: ; 0x021A3874
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021A3980 ; =ovy181_21a2754
	add r1, r4, #0
	bl sub_02081774
	cmp r4, #0
	beq _021A397A
	cmp r4, #0x10
	bhs _021A397A
	ldr r6, _021A3984 ; =0x021A4890
	sub r5, r4, #1
	ldr r1, [r6, #0x10]
	lsl r0, r5, #1
	ldr r7, _021A3988 ; =0x0000148A
	str r0, [sp, #4]
	add r1, r1, r0
	mov r0, #0
	strh r0, [r1, r7]
	lsl r0, r5, #2
	str r0, [sp]
	add r0, r7, #0
	ldr r1, [r6, #0x10]
	add r0, #0x1e
	add r1, r1, r0
	ldr r0, [sp]
	mov r2, #4
	add r0, r1, r0
	mov r1, #0
	blx MI_CpuFill8
	mov r0, #0x4d
	ldr r1, [r6, #0x10]
	lsl r0, r0, #6
	add r1, r1, r0
	mov r0, #0x16
	str r0, [sp, #8]
	mul r0, r5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x16
	blx MI_CpuFill8
	add r0, r4, #0
	bl ovy181_21a3e78
	ldr r1, [r6, #0x10]
	ldr r0, [sp, #4]
	add r2, r1, r0
	ldr r1, _021A398C ; =0x00001754
	mov r0, #0
	strh r0, [r2, r1]
	ldr r1, [r6, #0x10]
	add r0, r7, #0
	add r2, r1, r5
	add r0, #0x9c
	ldrsb r2, [r2, r0]
	ldr r0, [sp, #8]
	sub r0, #0x17
	str r0, [sp, #8]
	cmp r2, r0
	beq _021A3944
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	ldr r2, _021A3990 ; =0x000005D4
	mov r0, #1
	lsl r0, r4
	mul r2, r3
	str r0, [sp, #0xc]
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r5, _021A3994 ; =0x00001D4E
	add r3, r1, r2
	ldrh r1, [r3, r5]
	mov ip, r0
	add r7, #0x9c
	and r0, r1
	strh r0, [r3, r5]
	ldr r0, [r6, #0x10]
	ldr r3, [sp, #0xc]
	add r1, r0, r2
	add r0, r5, #2
	lsl r3, r3, #0x10
	ldrh r0, [r1, r0]
	lsr r3, r3, #0x10
	orr r3, r0
	add r0, r5, #2
	strh r3, [r1, r0]
	mov r0, #1
	sub r3, r0, #2
	ldr r1, [r6, #0x10]
	sub r0, r4, #1
	add r0, r1, r0
	strb r3, [r0, r7]
	ldr r0, [r6, #0x10]
	sub r1, r5, #2
	add r0, r0, r2
	ldrh r2, [r0, r1]
	mov r1, ip
	and r2, r1
	sub r1, r5, #2
	strh r2, [r0, r1]
_021A3944:
	mov r1, #1
	lsl r1, r4
	ldr r4, _021A3984 ; =0x021A4890
	ldr r3, _021A3998 ; =0x00001536
	ldr r0, [r4, #0x10]
	ldrh r2, [r0, r3]
	tst r2, r1
	beq _021A396C
	sub r2, r3, #1
	ldrb r2, [r0, r2]
	mvn r1, r1
	lsl r1, r1, #0x10
	sub r5, r2, #1
	sub r2, r3, #1
	strb r5, [r0, r2]
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x10
	ldrh r2, [r0, r3]
	and r1, r2
	strh r1, [r0, r3]
_021A396C:
	ldr r0, _021A3984 ; =0x021A4890
	mov r2, #0
	ldr r1, [r0, #0x10]
	ldr r0, [sp]
	add r1, r1, r0
	ldr r0, _021A399C ; =0x000014E8
	str r2, [r1, r0]
_021A397A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3980: .word ovy181_21a2754
_021A3984: .word 0x021A4890
_021A3988: .word 0x0000148A
_021A398C: .word 0x00001754
_021A3990: .word 0x000005D4
_021A3994: .word 0x00001D4E
_021A3998: .word 0x00001536
_021A399C: .word 0x000014E8
	thumb_func_end ovy181_21a3874

	thumb_func_start sub_021A39A0
sub_021A39A0: ; 0x021A39A0
	ldr r1, _021A39A8 ; =0x021A48C0
	strh r0, [r1, #8]
	bx lr
	nop
_021A39A8: .word 0x021A48C0
	thumb_func_end sub_021A39A0

	thumb_func_start ovy181_21a39ac
ovy181_21a39ac: ; 0x021A39AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0x18
	ldrh r1, [r1]
	add r3, r2, #0
	add r2, r4, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	mov r1, #0
	bl sub_02081998
	add r4, r0, #0
	mov r0, #0xf
	add r1, r4, #0
	bl ovy181_21a3b00
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy181_21a39ac

	thumb_func_start ovy181_21a39dc
ovy181_21a39dc: ; 0x021A39DC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	lsl r0, r1, #0x10
	lsr r3, r0, #0x10
	lsl r0, r2, #0x10
	ldr r5, _021A3A78 ; =0x021A4890
	lsr r1, r0, #0x10
	ldr r0, [r5, #0xc]
	ldr r4, _021A3A7C ; =0x00000528
	ldrh r2, [r0, r4]
	cmp r2, #0
	beq _021A39FE
	sub r2, r4, #2
	ldrh r2, [r0, r2]
	cmp r2, #1
	bne _021A3A04
_021A39FE:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021A3A04:
	sub r2, r4, #4
	ldrh r2, [r0, r2]
	cmp r2, #1
	beq _021A3A12
	cmp r2, #2
	beq _021A3A4C
	b _021A3A70
_021A3A12:
	add r2, r4, #4
	ldrh r2, [r0, r2]
	cmp r2, #0
	bne _021A3A20
	mov r5, #0xfa
	lsl r5, r5, #2
	b _021A3A22
_021A3A20:
	mov r5, #0
_021A3A22:
	ldr r4, _021A3A80 ; =0x00000508
	str r1, [sp]
	add r2, r3, #0
	lsl r3, r5, #0x10
	ldr r0, [r0, r4]
	add r1, r6, #0
	lsr r3, r3, #0x10
	bl ovy181_21a39ac
	cmp r0, #2
	bne _021A3A42
	ldr r1, _021A3A78 ; =0x021A4890
	mov r3, #1
	ldr r2, [r1, #0xc]
	add r1, r4, #4
	strb r3, [r2, r1]
_021A3A42:
	cmp r0, #2
	bne _021A3A72
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021A3A4C:
	ldr r0, _021A3A84 ; =ovy181_21a2c8c
	str r1, [sp]
	add r2, r3, #0
	add r1, r6, #0
	mov r3, #0
	bl ovy181_21a39ac
	cmp r0, #2
	bne _021A3A66
	ldr r1, [r5, #0xc]
	mov r2, #1
	sub r4, #0x1c
	strb r2, [r1, r4]
_021A3A66:
	cmp r0, #2
	bne _021A3A72
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021A3A70:
	mov r0, #1
_021A3A72:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A3A78: .word 0x021A4890
_021A3A7C: .word 0x00000528
_021A3A80: .word 0x00000508
_021A3A84: .word ovy181_21a2c8c
	thumb_func_end ovy181_21a39dc

	thumb_func_start sub_021A3A88
sub_021A3A88: ; 0x021A3A88
	ldr r0, _021A3A90 ; =0x021A4890
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_021A3A90: .word 0x021A4890
	thumb_func_end sub_021A3A88

	thumb_func_start sub_021A3A94
sub_021A3A94: ; 0x021A3A94
	ldr r0, _021A3A9C ; =0x021A4890
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_021A3A9C: .word 0x021A4890
	thumb_func_end sub_021A3A94

	thumb_func_start ovy181_21a3aa0
ovy181_21a3aa0: ; 0x021A3AA0
	push {r3, r4}
	ldr r0, _021A3AE0 ; =0x021A4890
	mov r2, #2
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _021A3AB0
	mov r2, #0
_021A3AB0:
	ldrh r0, [r1, #0xe]
	mov r3, #1
	cmp r0, #0
	bne _021A3ABA
	mov r3, #0
_021A3ABA:
	ldrh r0, [r1, #0x14]
	mov r4, #4
	cmp r0, #0
	bne _021A3AC4
	mov r4, #0
_021A3AC4:
	ldrh r0, [r1, #0x16]
	mov r1, #8
	cmp r0, #0
	bne _021A3ACE
	mov r1, #0
_021A3ACE:
	add r0, r3, #0
	orr r0, r2
	orr r0, r4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4}
	bx lr
	nop
_021A3AE0: .word 0x021A4890
	thumb_func_end ovy181_21a3aa0

	thumb_func_start sub_021A3AE4
sub_021A3AE4: ; 0x021A3AE4
	ldr r0, _021A3AF8 ; =0x021A4890
	ldr r1, [r0, #0xc]
	ldr r0, _021A3AFC ; =0x0000050D
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _021A3AF4
	mov r0, #1
	bx lr
_021A3AF4:
	mov r0, #0
	bx lr
	.align 2, 0
_021A3AF8: .word 0x021A4890
_021A3AFC: .word 0x0000050D
	thumb_func_end sub_021A3AE4

	thumb_func_start ovy181_21a3b00
ovy181_21a3b00: ; 0x021A3B00
	push {r3, lr}
	cmp r1, #2
	beq _021A3B1E
	cmp r1, #0
	beq _021A3B1E
	add r2, sp, #0
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r2, _021A3B20 ; =0x021A4890
	mov r0, #0xff
	ldr r3, [r2, #0xc]
	ldr r2, _021A3B24 ; =0x0000051C
	add r1, sp, #0
	ldr r2, [r3, r2]
	blx r2
_021A3B1E:
	pop {r3, pc}
	.align 2, 0
_021A3B20: .word 0x021A4890
_021A3B24: .word 0x0000051C
	thumb_func_end ovy181_21a3b00

	thumb_func_start sub_021A3B28
sub_021A3B28: ; 0x021A3B28
	ldr r3, _021A3B30 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x70
	bx r3
	.align 2, 0
_021A3B30: .word MI_CpuFill8
	thumb_func_end sub_021A3B28

	thumb_func_start ovy181_21a3b34
ovy181_21a3b34: ; 0x021A3B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	blx OS_DisableInterrupts
	add r4, r5, #0
	str r0, [sp, #4]
	add r4, #0x30
	add r5, #0x70
_021A3B4C:
	cmp r4, r5
	blo _021A3B54
	bl OS_Terminate
_021A3B54:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021A3B68
	str r6, [r4]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0xc]
	b _021A3B6C
_021A3B68:
	add r4, #0x10
	b _021A3B4C
_021A3B6C:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy181_21a3b34

	thumb_func_start ovy181_21a3b78
ovy181_21a3b78: ; 0x021A3B78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	mov r7, #0
	blx OS_DisableInterrupts
	ldr r6, [sp]
	ldr r3, [sp]
	add r6, #0x30
	add r3, #0x70
	str r0, [sp, #8]
	cmp r6, r3
	bhs _021A3BC8
_021A3B98:
	ldr r0, [r6, #0xc]
	cmp r0, #2
	blo _021A3BC2
	ldr r0, [r6]
	sub r2, r5, r0
	bmi _021A3BC2
	ldr r0, [r6, #4]
	add r1, r2, r4
	cmp r1, r0
	bhi _021A3BC2
	ldr r0, [r6, #8]
	ldr r1, [sp, #4]
	add r0, r0, r2
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0]
	mov r7, #1
	b _021A3BC8
_021A3BC2:
	add r6, #0x10
	cmp r6, r3
	blo _021A3B98
_021A3BC8:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy181_21a3b78

	thumb_func_start ovy181_21a3bd4
ovy181_21a3bd4: ; 0x021A3BD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
_021A3BD8:
	blx OS_DisableInterrupts
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	bne _021A3C02
	mov r4, #0
_021A3BEA:
	add r0, r5, #0
	add r1, r4, #0
	bl OS_SetThreadPriority
	add r0, r4, #0
	bl OS_SleepThread
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	beq _021A3BEA
_021A3C02:
	add r0, r5, #0
	add r0, #0xc0
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xc0
	str r1, [r0]
	ldr r1, [r4, #4]
	add r0, r5, #0
	lsr r1, r1, #1
	bl OS_SetThreadPriority
	add r0, r6, #0
	blx OS_RestoreInterrupts
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021A3C30
	add r0, r4, #0
	blx r1
_021A3C30:
	blx OS_DisableInterrupts
	add r7, r0, #0
	add r0, r5, #0
	ldr r6, [r4, #0xc]
	bl OS_GetThreadPriority
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	cmp r1, #0
	bne _021A3C4C
	mov r1, #0
	b _021A3C68
_021A3C4C:
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	ldr r1, [r1, #4]
	lsr r1, r1, #1
	cmp r0, r1
	bhs _021A3C66
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	ldr r1, [r1, #4]
	lsr r1, r1, #1
	b _021A3C68
_021A3C66:
	add r1, r0, #0
_021A3C68:
	cmp r1, r0
	beq _021A3C72
	add r0, r5, #0
	bl OS_SetThreadPriority
_021A3C72:
	mov r0, #0
	str r0, [r4]
	ldr r1, [r4, #4]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #4]
	cmp r6, #0
	beq _021A3C86
	add r0, r4, #0
	blx r6
_021A3C86:
	add r0, r5, #0
	add r0, #0xc4
	cmp r4, r0
	beq _021A3C96
	add r0, r7, #0
	blx OS_RestoreInterrupts
	b _021A3BD8
_021A3C96:
	bl OS_ExitThread
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy181_21a3bd4

	thumb_func_start ovy181_21a3c9c
ovy181_21a3c9c: ; 0x021A3C9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _021A3CF0 ; =0x021A4904
	ldr r1, [r0]
	cmp r1, #0
	bne _021A3CE4
	str r5, [r0]
	add r0, r5, #0
	add r0, #0xc4
	bl sub_021A3D0C
	add r0, r5, #0
	add r3, r5, #0
	mov r1, #0
	add r0, #0xc0
	str r1, [r0]
	sub r4, #0xe4
	mov r0, #3
	bic r4, r0
	str r4, [sp]
	str r1, [sp, #4]
	add r3, #0xe4
	ldr r1, _021A3CF4 ; =ovy181_21a3bd4
	add r0, r5, #0
	add r2, r5, #0
	add r3, r3, r4
	bl OS_CreateThread
	add r0, r5, #0
	bl OS_WakeupThreadDirect
_021A3CE4:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021A3CF0: .word 0x021A4904
_021A3CF4: .word ovy181_21a3bd4
	thumb_func_end ovy181_21a3c9c

	thumb_func_start sub_021A3CF8
sub_021A3CF8: ; 0x021A3CF8
	ldr r0, _021A3D08 ; =0x021A4904
	ldr r0, [r0]
	cmp r0, #0
	beq _021A3D04
	mov r0, #1
	bx lr
_021A3D04:
	mov r0, #0
	bx lr
	.align 2, 0
_021A3D08: .word 0x021A4904
	thumb_func_end sub_021A3CF8

	thumb_func_start sub_021A3D0C
sub_021A3D0C: ; 0x021A3D0C
	ldr r3, _021A3D14 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx r3
	.align 2, 0
_021A3D14: .word MI_CpuFill8
	thumb_func_end sub_021A3D0C

	thumb_func_start sub_021A3D18
sub_021A3D18: ; 0x021A3D18
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021A3D24
	mov r0, #1
	bx lr
_021A3D24:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A3D18

	thumb_func_start ovy181_21a3d28
ovy181_21a3d28: ; 0x021A3D28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021A3E10 ; =0x021A4904
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	ldr r6, [r0]
	bl sub_021A3CF8
	cmp r0, #0
	beq _021A3E0A
	ldr r0, [r5, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A3E0A
	cmp r4, #0x1f
	bls _021A3D76
	add r0, r6, #0
	bl OS_GetThreadPriority
	cmp r4, #0x20
	bne _021A3D60
	sub r4, r0, #1
	cmp r0, #0
	bne _021A3D76
	mov r4, #0
	b _021A3D76
_021A3D60:
	cmp r4, #0x21
	bne _021A3D6C
	add r4, r0, #1
	cmp r0, #0x1f
	blo _021A3D76
	b _021A3D74
_021A3D6C:
	cmp r4, #0x22
	bne _021A3D74
	add r4, r0, #0
	b _021A3D76
_021A3D74:
	mov r4, #0x1f
_021A3D76:
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r1, r0
	and r1, r0
	lsl r0, r4, #1
	orr r0, r1
	str r0, [r5, #4]
	ldr r0, [sp]
	str r7, [r5, #8]
	str r0, [r5, #0xc]
	add r0, r6, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	bne _021A3DBA
	add r0, r6, #0
	add r0, #0xc4
	cmp r5, r0
	bne _021A3DAC
	ldr r0, _021A3E10 ; =0x021A4904
	mov r1, #0
	str r1, [r0]
_021A3DAC:
	add r0, r6, #0
	add r0, #0xc0
	str r5, [r0]
	add r0, r6, #0
	bl OS_WakeupThreadDirect
	b _021A3E04
_021A3DBA:
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0xc0
	add r1, #0xc4
	ldr r0, [r0]
	cmp r5, r1
	bne _021A3DE0
	ldr r1, [r0]
	cmp r1, #0
	beq _021A3DD6
_021A3DCE:
	add r0, r1, #0
	ldr r1, [r1]
	cmp r1, #0
	bne _021A3DCE
_021A3DD6:
	str r5, [r0]
	ldr r0, _021A3E10 ; =0x021A4904
	mov r1, #0
	str r1, [r0]
	b _021A3E04
_021A3DE0:
	ldr r1, [r0, #4]
	lsr r1, r1, #1
	cmp r1, r4
	bls _021A3DF2
	add r6, #0xc0
	str r5, [r6]
	str r0, [r5]
	b _021A3E04
_021A3DF0:
	add r0, r2, #0
_021A3DF2:
	ldr r2, [r0]
	cmp r2, #0
	beq _021A3E00
	ldr r1, [r2, #4]
	lsr r1, r1, #1
	cmp r1, r4
	bls _021A3DF0
_021A3E00:
	str r2, [r5]
	str r5, [r0]
_021A3E04:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
_021A3E0A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3E10: .word 0x021A4904
	thumb_func_end ovy181_21a3d28

	thumb_func_start ovy181_21a3e14
ovy181_21a3e14: ; 0x021A3E14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	bl sub_021A3CF8
	cmp r0, #0
	beq _021A3E36
	ldr r0, _021A3E40 ; =0x021A4904
	mov r1, #0
	ldr r0, [r0]
	add r2, r5, #0
	add r0, #0xc4
	mov r3, #0
	bl ovy181_21a3d28
_021A3E36:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	nop
_021A3E40: .word 0x021A4904
	thumb_func_end ovy181_21a3e14

	thumb_func_start ovy181_21a3e44
ovy181_21a3e44: ; 0x021A3E44
	push {r3, r4, r5, lr}
	ldr r4, _021A3E5C ; =0x021A4908
	sub r1, r0, #2
	mov r0, #0x1e
	str r1, [r4, #8]
	mov r5, #0x1e
	blx sub_0208D65C
	str r0, [r4, #0xc]
	str r5, [r4, #0x10]
	pop {r3, r4, r5, pc}
	nop
_021A3E5C: .word 0x021A4908
	thumb_func_end ovy181_21a3e44

	thumb_func_start sub_021A3E60
sub_021A3E60: ; 0x021A3E60
	ldr r1, _021A3E70 ; =0x021A4908
	mov r2, #0x87
	str r0, [r1, #4]
	ldr r3, _021A3E74 ; =MI_CpuFill8
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	nop
_021A3E70: .word 0x021A4908
_021A3E74: .word MI_CpuFill8
	thumb_func_end sub_021A3E60

	thumb_func_start ovy181_21a3e78
ovy181_21a3e78: ; 0x021A3E78
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A3EA0 ; =0x021A4908
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _021A3E9E
	sub r5, r0, #1
	lsl r0, r5, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x1e
	mov r4, #0
	mov r6, #0x1e
	blx MI_CpuFill8
	ldr r1, [r7, #4]
	lsl r0, r5, #2
	add r1, r1, r0
	lsl r0, r6, #4
	str r4, [r1, r0]
_021A3E9E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3EA0: .word 0x021A4908
	thumb_func_end ovy181_21a3e78

	thumb_func_start sub_021A3EA4
sub_021A3EA4: ; 0x021A3EA4
	ldrb r3, [r0]
	add r2, r1, #0
	add r2, r2, #1
	strb r3, [r1]
	cmp r3, #6
	bhi _021A3EE8
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A3EBC: ; jump table
	.short _021A3EE8 - _021A3EBC - 2 ; case 0
	.short _021A3EEC - _021A3EBC - 2 ; case 1
	.short _021A3EEC - _021A3EBC - 2 ; case 2
	.short _021A3EEC - _021A3EBC - 2 ; case 3
	.short _021A3ECA - _021A3EBC - 2 ; case 4
	.short _021A3EEC - _021A3EBC - 2 ; case 5
	.short _021A3EEC - _021A3EBC - 2 ; case 6
_021A3ECA:
	ldrh r3, [r0, #2]
	mov r1, #0xff
	ldrh r0, [r0, #4]
	lsl r1, r1, #8
	strb r3, [r2]
	and r3, r1
	asr r3, r3, #8
	strb r0, [r2, #2]
	and r0, r1
	strb r3, [r2, #1]
	add r3, r2, #3
	asr r0, r0, #8
	add r2, r2, #4
	strb r0, [r3]
	b _021A3EEC
_021A3EE8:
	mov r0, #0
	bx lr
_021A3EEC:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021A3EA4

	thumb_func_start ovy181_21a3ef0
ovy181_21a3ef0: ; 0x021A3EF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	strb r0, [r4]
	cmp r0, #7
	beq _021A3F0A
	cmp r0, #8
	beq _021A3F46
	cmp r0, #9
	beq _021A3F62
	b _021A3F8E
_021A3F0A:
	add r0, r6, #0
	bl ovy181_21a4000
	cmp r0, #0
	beq _021A3F20
	ldr r0, _021A3F98 ; =0x021A4908
	ldr r1, [r0, #4]
	sub r0, r6, #1
	lsl r0, r0, #5
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_021A3F20:
	ldrb r1, [r5, #1]
	ldr r2, _021A3F98 ; =0x021A4908
	strb r1, [r4, #2]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	ble _021A3F30
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3F30:
	ldr r2, [r2, #8]
	add r0, r5, #2
	add r1, r4, #3
	blx MI_CpuCopy8
	add r0, r4, #0
	add r1, r6, #0
	bl ovy181_21a3f9c
	add r6, r0, #0
	b _021A3F92
_021A3F46:
	ldrb r0, [r5, #1]
	add r6, r5, #3
	strh r0, [r4, #2]
	ldrb r1, [r5, #2]
	ldrh r0, [r4, #2]
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r4, #2]
	b _021A3F92
_021A3F62:
	ldrb r0, [r5, #1]
	add r6, r5, #3
	strh r0, [r4, #2]
	ldrb r1, [r5, #2]
	ldrh r0, [r4, #2]
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r4, #2]
	add r1, r4, #4
	ldr r4, _021A3F98 ; =0x021A4908
	add r0, r6, #0
	ldr r2, [r4, #8]
	blx MI_CpuCopy8
	ldr r0, [r4, #8]
	add r6, r6, r0
	b _021A3F92
_021A3F8E:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3F92:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021A3F98: .word 0x021A4908
	thumb_func_end ovy181_21a3ef0

	thumb_func_start ovy181_21a3f9c
ovy181_21a3f9c: ; 0x021A3F9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _021A3FFC ; =0x021A4908
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _021A3FAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3FAC:
	ldr r2, _021A3FFC ; =0x021A4908
	ldrb r5, [r0, #2]
	ldr r2, [r2, #0xc]
	cmp r5, r2
	ble _021A3FBA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3FBA:
	ldr r2, _021A3FFC ; =0x021A4908
	sub r7, r6, #1
	lsl r4, r7, #5
	add r3, r1, r4
	ldr r2, [r2, #8]
	add r1, r5, #0
	mul r1, r2
	add r0, r0, #3
	add r1, r3, r1
	blx MI_CpuCopy8
	ldr r0, _021A3FFC ; =0x021A4908
	mov r3, #1
	ldr r1, [r0, #4]
	mov r0, #0x1e
	lsl r0, r0, #4
	add r2, r1, r0
	lsl r1, r7, #2
	ldr r0, [r2, r1]
	lsl r3, r5
	orr r0, r3
	str r0, [r2, r1]
	add r0, r6, #0
	bl ovy181_21a4000
	cmp r0, #0
	beq _021A3FF8
	ldr r0, _021A3FFC ; =0x021A4908
	ldr r0, [r0, #4]
	add r0, r0, r4
	pop {r3, r4, r5, r6, r7, pc}
_021A3FF8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3FFC: .word 0x021A4908
	thumb_func_end ovy181_21a3f9c

	thumb_func_start ovy181_21a4000
ovy181_21a4000: ; 0x021A4000
	push {r3, r4}
	ldr r3, _021A403C ; =0x021A4908
	mov r1, #0
	ldr r2, [r3, #0xc]
	cmp r2, #0
	ble _021A4034
	sub r0, r0, #1
	ldr r3, [r3, #4]
	lsl r0, r0, #2
	add r3, r3, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r4, [r3, r0]
	mov r3, #1
_021A401C:
	add r0, r3, #0
	lsl r0, r1
	tst r0, r4
	bne _021A402A
	mov r0, #0
	pop {r3, r4}
	bx lr
_021A402A:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, r2
	blt _021A401C
_021A4034:
	mov r0, #1
	pop {r3, r4}
	bx lr
	nop
_021A403C: .word 0x021A4908
	thumb_func_end ovy181_21a4000
_021A4040:
	.byte 0xA8, 0xC0, 0xE8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0B, 0x00, 0x00, 0x58, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0D, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x60, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xED, 0xF9, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x75, 0xFB, 0x19, 0x02
	.byte 0x85, 0xFB, 0x19, 0x02, 0xB5, 0xFB, 0x19, 0x02, 0xC1, 0xFB, 0x19, 0x02, 0xC5, 0xFB, 0x19, 0x02
	.byte 0xD1, 0xFB, 0x19, 0x02, 0xC4, 0x41, 0x1A, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFC, 0x19, 0x02
	.byte 0x09, 0xFC, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x0F, 0x00
	.byte 0xF0, 0x00, 0x00, 0x00, 0x02, 0x30, 0x02, 0x01, 0x01, 0x00, 0x00, 0x04, 0x2C, 0x01, 0x00, 0x00
	.byte 0xD0, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00
	.byte 0x00, 0x74, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xD8, 0x42, 0x1A, 0x02, 0xC4, 0x42, 0x1A, 0x02, 0x14, 0x43, 0x1A, 0x02, 0x2C, 0x43, 0x1A, 0x02
	.byte 0xEC, 0x42, 0x1A, 0x02, 0x00, 0x43, 0x1A, 0x02, 0x7D, 0xED, 0x19, 0x02, 0x9D, 0xEE, 0x19, 0x02
	.byte 0x09, 0xEE, 0x19, 0x02, 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F, 0x69, 0x63, 0x6F, 0x6E
	.byte 0x5F, 0x62, 0x2E, 0x70, 0x6C, 0x74, 0x00, 0x00, 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F
	.byte 0x69, 0x63, 0x6F, 0x6E, 0x5F, 0x77, 0x2E, 0x70, 0x6C, 0x74, 0x00, 0x00, 0x2F, 0x64, 0x6C, 0x5F
	.byte 0x72, 0x6F, 0x6D, 0x2F, 0x69, 0x63, 0x6F, 0x6E, 0x5F, 0x77, 0x2E, 0x63, 0x68, 0x61, 0x72, 0x00
	.byte 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F, 0x69, 0x63, 0x6F, 0x6E, 0x5F, 0x62, 0x2E, 0x63
	.byte 0x68, 0x61, 0x72, 0x00, 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F, 0x63, 0x68, 0x69, 0x6C
	.byte 0x64, 0x5F, 0x72, 0x5F, 0x65, 0x6E, 0x67, 0x2E, 0x73, 0x72, 0x6C, 0x00, 0x2F, 0x64, 0x6C, 0x5F
	.byte 0x72, 0x6F, 0x6D, 0x2F, 0x63, 0x68, 0x69, 0x6C, 0x64, 0x32, 0x5F, 0x72, 0x5F, 0x65, 0x6E, 0x67
	.byte 0x2E, 0x73, 0x72, 0x6C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x65, 0x73, 0x75
	.byte 0x6C, 0x74, 0x00, 0x00, 0x6D, 0x62, 0x5F, 0x70, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x5F, 0x73, 0x79
	.byte 0x73, 0x2E, 0x63, 0x00, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20, 0x69, 0x73, 0x20, 0x6E, 0x6F, 0x74
	.byte 0x5B, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x4E, 0x54, 0x52, 0x59
	.byte 0x5D, 0x5B, 0x25, 0x64, 0x5D, 0x21, 0x21, 0x21, 0x0A, 0x00, 0x00, 0x00, 0x4D, 0x75, 0x6C, 0x74
	.byte 0x69, 0x62, 0x6F, 0x6F, 0x74, 0x20, 0x70, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x20, 0x42, 0x6F, 0x78
	.byte 0x20, 0x69, 0x73, 0x20, 0x66, 0x75, 0x6C, 0x6C, 0x21, 0x21, 0x0A, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x96, 0x47, 0x1A, 0x02, 0x98, 0x47, 0x1A, 0x02, 0x9A, 0x47, 0x1A, 0x02, 0x9C, 0x47, 0x1A, 0x02
	.byte 0x9E, 0x47, 0x1A, 0x02, 0xA0, 0x47, 0x1A, 0x02, 0x24, 0x44, 0x1A, 0x02, 0x34, 0x44, 0x1A, 0x02
	.byte 0x44, 0x44, 0x1A, 0x02, 0xF8, 0x44, 0x1A, 0x02, 0xB4, 0x44, 0x1A, 0x02, 0x78, 0x44, 0x1A, 0x02
	.byte 0x64, 0x44, 0x1A, 0x02, 0x54, 0x44, 0x1A, 0x02, 0xA0, 0x44, 0x1A, 0x02, 0xF0, 0x45, 0x1A, 0x02
	.byte 0x10, 0x45, 0x1A, 0x02, 0x80, 0x45, 0x1A, 0x02, 0xE0, 0x44, 0x1A, 0x02, 0x9C, 0x45, 0x1A, 0x02
	.byte 0xB8, 0x45, 0x1A, 0x02, 0x10, 0x46, 0x1A, 0x02, 0xD4, 0x45, 0x1A, 0x02, 0x30, 0x46, 0x1A, 0x02
	.byte 0x2C, 0x45, 0x1A, 0x02, 0x48, 0x45, 0x1A, 0x02, 0x8C, 0x44, 0x1A, 0x02, 0xC8, 0x44, 0x1A, 0x02
	.byte 0x64, 0x45, 0x1A, 0x02, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53, 0x54
	.byte 0x4F, 0x50, 0x00, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x49, 0x44
	.byte 0x4C, 0x45, 0x00, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x4E
	.byte 0x54, 0x52, 0x59, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x52
	.byte 0x52, 0x4F, 0x52, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x43, 0x41
	.byte 0x4E, 0x43, 0x45, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54
	.byte 0x45, 0x5F, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43
	.byte 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x4E, 0x44, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4E
	.byte 0x4F, 0x4E, 0x45, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x52, 0x45
	.byte 0x42, 0x4F, 0x4F, 0x54, 0x49, 0x4E, 0x47, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x45, 0x52, 0x52, 0x4F, 0x52, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4B
	.byte 0x49, 0x43, 0x4B, 0x45, 0x44, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x50, 0x5F, 0x53, 0x54, 0x41, 0x54
	.byte 0x45, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x53, 0x45, 0x4E, 0x44, 0x49, 0x4E, 0x47, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x43
	.byte 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43
	.byte 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x52, 0x45, 0x51, 0x55, 0x45
	.byte 0x53, 0x54, 0x45, 0x44, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x4D, 0x45, 0x4D, 0x42, 0x45, 0x52, 0x5F, 0x46, 0x55
	.byte 0x4C, 0x4C, 0x00, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x57, 0x41, 0x49, 0x54, 0x5F, 0x54, 0x4F, 0x5F, 0x53, 0x45, 0x4E, 0x44, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x44
	.byte 0x49, 0x53, 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x45, 0x44, 0x00, 0x4D, 0x42, 0x5F, 0x43
	.byte 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x52, 0x45, 0x51, 0x5F, 0x41
	.byte 0x43, 0x43, 0x45, 0x50, 0x54, 0x45, 0x44, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F
	.byte 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53, 0x45, 0x4E, 0x44, 0x5F, 0x50, 0x52, 0x4F, 0x43
	.byte 0x45, 0x45, 0x44, 0x00, 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41
	.byte 0x54, 0x45, 0x5F, 0x42, 0x4F, 0x4F, 0x54, 0x5F, 0x52, 0x45, 0x51, 0x55, 0x45, 0x53, 0x54, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x49
	.byte 0x4E, 0x49, 0x54, 0x5F, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x53
	.byte 0x45, 0x4E, 0x44, 0x5F, 0x43, 0x4F, 0x4D, 0x50, 0x4C, 0x45, 0x54, 0x45, 0x00, 0x00, 0x00, 0x00
	.byte 0x4D, 0x42, 0x5F, 0x43, 0x4F, 0x4D, 0x4D, 0x5F, 0x50, 0x53, 0x54, 0x41, 0x54, 0x45, 0x5F, 0x42
	.byte 0x4F, 0x4F, 0x54, 0x5F, 0x53, 0x54, 0x41, 0x52, 0x54, 0x41, 0x42, 0x4C, 0x45, 0x00, 0x00, 0x00
	.byte 0x6D, 0x62, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x52, 0x52, 0x4F
	.byte 0x52, 0x20, 0x69, 0x6E, 0x20, 0x4D, 0x42, 0x5F, 0x49, 0x6E, 0x69, 0x74, 0x0A, 0x00, 0x00, 0x00
	.byte 0x49, 0x6C, 0x6C, 0x65, 0x67, 0x61, 0x6C, 0x20, 0x6D, 0x75, 0x6C, 0x74, 0x69, 0x62, 0x6F, 0x6F
	.byte 0x74, 0x20, 0x67, 0x61, 0x6D, 0x65, 0x49, 0x6E, 0x66, 0x6F, 0x0A, 0x00, 0x47, 0x65, 0x74, 0x20
	.byte 0x69, 0x6C, 0x6C, 0x65, 0x67, 0x61, 0x6C, 0x20, 0x70, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x20, 0x73
	.byte 0x74, 0x61, 0x74, 0x65, 0x2E, 0x0A, 0x00, 0x00, 0x6D, 0x62, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x5F
	.byte 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x5F, 0x75, 0x74, 0x69, 0x6C, 0x5F
	.byte 0x6D, 0x73, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x6D, 0x62, 0x5F, 0x70, 0x61, 0x72, 0x65, 0x6E
	.byte 0x74, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x63, 0x6F, 0x6E, 0x76, 0x5F, 0x73, 0x79, 0x73, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F, 0x63, 0x68, 0x69, 0x6C
	.byte 0x64, 0x32, 0x5F, 0x72, 0x5F, 0x65, 0x6E, 0x67, 0x2E, 0x73, 0x72, 0x6C, 0x00, 0x00, 0x00, 0x00
	.byte 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F, 0x69, 0x63, 0x6F, 0x6E, 0x5F, 0x62, 0x2E, 0x63
	.byte 0x68, 0x61, 0x72, 0x00, 0x2F, 0x64, 0x6C, 0x5F, 0x72, 0x6F, 0x6D, 0x2F, 0x69, 0x63, 0x6F, 0x6E
	.byte 0x5F, 0x62, 0x2E, 0x70, 0x6C, 0x74, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x72, 0x6F, 0x6D, 0x00
	.byte 0x60, 0x42, 0x1A, 0x02, 0x72, 0x6F, 0x6D, 0x00, 0x28, 0x00, 0x28, 0x00, 0xFF, 0xFF, 0x05, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x50, 0x47, 0x1A, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x6D, 0x00, 0x75, 0x00, 0x6C, 0x00, 0x74, 0x00, 0x69, 0x00, 0x62, 0x00, 0x6F, 0x00, 0x6F, 0x00
	.byte 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A4040
