    .include "macros/function.inc"
	.include "overlay207.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy207_21b2f80
ovy207_21b2f80: ; 0x021B2F80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r2, #0x97
	ldrb r0, [r0, #0xf]
	ldr r1, _021B3148 ; =0x02FFFC3C
	mov r4, #1
	strh r0, [r5, #0x18]
	mov r0, #0xff
	strb r0, [r5, #0x1a]
	mov r0, #0
	strb r0, [r5, #0x1b]
	ldr r1, [r1]
	lsl r2, r2, #2
	str r1, [r5, #0x20]
	mov r1, #4
	str r1, [r5, #0x5c]
	str r4, [r5, #0x44]
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x54]
	str r4, [r5, #0xc]
	str r0, [r5, r2]
	add r1, r2, #4
	strb r0, [r5, r1]
	str r0, [r5, #0x50]
	sub r2, #0xbc
	str r0, [r5, r2]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	bl sub_0203D554
	ldr r1, [r5, #8]
	strb r0, [r5, #0x1c]
	ldrb r0, [r1, #0xd]
	cmp r0, #3
	bne _021B2FD0
	mov r0, #2
	strb r0, [r1, #0xd]
	str r4, [r5, #0x14]
_021B2FD0:
	ldr r0, [r5, #8]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _021B2FEC
	add r0, r5, #0
	bl ovy207_21b4d9c
	ldrh r1, [r5]
	bl sub_0201C358
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _021B2FF4
_021B2FEC:
	mov r0, #0x96
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021B2FF4:
	add r0, r5, #0
	bl ovy207_21b342c
	add r0, r5, #0
	bl ovy207_21b5364
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r5, #0
	bl ovy207_21b6924
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r5, #0
	bl ovy207_21b8510
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r5, #0
	bl ovy207_21b7644
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r5, #0
	bl ovy207_21b36a4
	add r0, r5, #0
	bl ovy207_21b3f14
	add r0, r5, #0
	bl ovy207_21b3cf4
	ldr r0, _021B314C ; =0x021B3425
	add r1, r5, #0
	mov r2, #8
	bl GFL_VBlankTCBAdd
	mov r6, #0x69
	lsl r6, r6, #2
	add r1, r6, #2
	ldr r7, _021B3150 ; =0x0500026C
	str r0, [r5, #4]
	mov r4, #0
	add r0, r7, #0
	add r1, r5, r1
	mov r2, #0xc
	strh r4, [r5, r6]
	blx MIi_CpuCopy16
	add r1, r6, #0
	add r7, #0xf4
	add r1, #0x12
	add r0, r7, #0
	add r1, r5, r1
	mov r2, #0x40
	blx MIi_CpuCopy16
	ldr r7, _021B3154 ; =0x050003A0
	add r1, r6, #0
	add r1, #0x72
	add r0, r7, #0
	add r1, r5, r1
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r6, #0x92
	add r0, r7, #0
	add r1, r5, r6
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, r5, #0
	bl ovy207_21b4984
	ldr r1, [r5, #8]
	ldrb r0, [r1, #0xd]
	cmp r0, #2
	bne _021B30C2
	add r1, r5, #0
	add r1, #0x88
	mov r0, #3
	str r0, [r5, #0x58]
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b5710
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b9510
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b7f7c
	b _021B313C
_021B30C2:
	ldrb r0, [r1, #0x10]
	str r0, [r5, #0x58]
	cmp r0, #3
	bge _021B30E6
_021B30CA:
	ldr r0, [r5, #8]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r1, #9
	bl GameData_IsPocketRegistered
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #0x60]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021B30CA
_021B30E6:
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b5710
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b7f7c
	ldr r0, [r5, #0x58]
	cmp r0, #0
	beq _021B310E
	cmp r0, #1
	beq _021B3110
	cmp r0, #2
	beq _021B311E
	b _021B312C
_021B310E:
	b _021B3130
_021B3110:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b8a9c
	b _021B313C
_021B311E:
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b7db0
	b _021B313C
_021B312C:
	mov r0, #0
	str r0, [r5, #0x58]
_021B3130:
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b6a60
_021B313C:
	ldrh r1, [r5]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3148: .word 0x02FFFC3C
_021B314C: .word 0x021B3425
_021B3150: .word 0x0500026C
_021B3154: .word 0x050003A0
	thumb_func_end ovy207_21b2f80

	thumb_func_start ovy207_21b3158
ovy207_21b3158: ; 0x021B3158
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl GFL_TCBRemove
	ldrh r1, [r5, #0x18]
	ldr r0, [r5, #8]
	strb r1, [r0, #0xf]
	add r0, r5, #0
	bl ovy207_21b3eb8
	add r0, r5, #0
	bl ovy207_21b3f90
	add r0, r5, #0
	bl ovy207_21b3c5c
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl sub_021B804C
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b767c
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r5, #0
	bl sub_021B8594
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b6958
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r5, #0
	bl sub_021B5394
	add r0, r5, #0
	bl ovy207_21b3624
	ldr r0, [r5, #0x58]
	cmp r0, #3
	bge _021B31E0
	mov r4, #0
_021B31C4:
	ldr r0, [r5, #8]
	lsl r2, r4, #2
	add r2, r5, r2
	add r1, r4, #0
	ldr r0, [r0, #8]
	ldr r2, [r2, #0x60]
	add r1, #9
	bl sub_02017644
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021B31C4
_021B31E0:
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021B31F0
	ldr r0, [r5, #8]
	mov r1, #3
	strb r1, [r0, #0xd]
	mov r0, #0
	str r0, [r5, #0x14]
_021B31F0:
	ldrb r0, [r5, #0x1c]
	bl sub_0203D564
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B3204
	bl GFL_HeapFree
_021B3204:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy207_21b3158

	thumb_func_start ovy207_21b3208
ovy207_21b3208: ; 0x021B3208
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r1, r4, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	add r1, #0x2c
	str r0, [r4, #0x34]
	add r0, r4, #0
	add r0, #0x28
	bl sub_0203DA84
	ldr r0, [r4, #0x50]
	cmp r0, #4
	bls _021B322A
	b _021B3334
_021B322A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B3236: ; jump table
	.short _021B3240 - _021B3236 - 2 ; case 0
	.short _021B326A - _021B3236 - 2 ; case 1
	.short _021B3278 - _021B3236 - 2 ; case 2
	.short _021B32AE - _021B3236 - 2 ; case 3
	.short _021B32BC - _021B3236 - 2 ; case 4
_021B3240:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021B324E
_021B3246:
	add r0, r4, #0
	bl ovy207_21b4afc
	b _021B3334
_021B324E:
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
	str r5, [r4, #0x50]
	b _021B3334
_021B326A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021B3334
	mov r0, #4
_021B3274:
	str r0, [r4, #0x50]
	b _021B3334
_021B3278:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B3292
	bl sub_0204C560
	cmp r0, #0
	beq _021B3292
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x24]
	cmp r0, #1
	bne _021B3334
_021B3292:
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
	mov r0, #3
	b _021B3274
_021B32AE:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021B3334
	add sp, #0xc
	ldr r0, [r4, #0x54]
	pop {r4, r5, r6, r7, pc}
_021B32BC:
	add r0, r4, #0
	bl ovy207_21b3fb8
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021B32CA
	b _021B3246
_021B32CA:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b53a0
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x24]
	cmp r0, #1
	bne _021B32E6
	mov r0, #1
	str r0, [r4, #0x54]
	mov r0, #2
	str r0, [r4, #0x50]
_021B32E6:
	add r0, r4, #0
	bl ovy207_21b3fe0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021B3334
	ldr r0, [r4, #0x5c]
	cmp r0, #3
	bhi _021B3334
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B3304: ; jump table
	.short _021B330C - _021B3304 - 2 ; case 0
	.short _021B331A - _021B3304 - 2 ; case 1
	.short _021B3328 - _021B3304 - 2 ; case 2
	.short _021B331A - _021B3304 - 2 ; case 3
_021B330C:
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_021B696C
	b _021B3334
_021B331A:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b85a0
	b _021B3334
_021B3328:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7690
_021B3334:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A3C
	bl sub_0204B794
	ldr r0, [r4, #0x78]
	bl sub_02019AE8
	bl sub_02049A98
	bl sub_02049AF0
	ldr r0, [r4, #0x78]
	bl sub_02019C0C
	bl sub_02049AA0
	ldr r0, _021B3420 ; =0x02FFFC3C
	add r5, r4, #0
	ldr r1, [r0]
	ldr r2, [r4, #0x20]
	ldrb r0, [r4, #0x1b]
	sub r2, r1, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r0, r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x1b]
	add r5, #0x1b
	str r1, [r4, #0x20]
	cmp r0, #4
	blo _021B33B0
	mov r7, #3
	mov r6, #1
_021B337C:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02045E1C
	add r0, r7, #0
	mov r1, #4
	add r2, r6, #0
	bl sub_02045E1C
	mov r0, #7
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02045E1C
	mov r0, #7
	mov r1, #4
	add r2, r6, #0
	bl sub_02045E1C
	ldrb r0, [r5]
	sub r0, r0, #4
	strb r0, [r5]
	ldrb r0, [r4, #0x1b]
	cmp r0, #4
	bhs _021B337C
_021B33B0:
	ldr r0, [r4, #0x48]
	cmp r0, #1
	bne _021B33E2
	mov r5, #0x62
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204C560
	cmp r0, #0
	bne _021B33E2
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy207_21b48e4
	cmp r0, #1
	ldr r0, [r4, r5]
	bne _021B33D8
	mov r1, #3
	b _021B33DA
_021B33D8:
	mov r1, #0x11
_021B33DA:
	bl Oam_SetOamAnimIndex
	mov r0, #0
	str r0, [r4, #0x48]
_021B33E2:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _021B3414
	mov r5, #0x63
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204C560
	cmp r0, #0
	bne _021B3414
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ovy207_21b48e4
	cmp r0, #1
	ldr r0, [r4, r5]
	bne _021B340A
	mov r1, #2
	b _021B340C
_021B340A:
	mov r1, #0x10
_021B340C:
	bl Oam_SetOamAnimIndex
	mov r0, #0
	str r0, [r4, #0x4c]
_021B3414:
	add r0, r4, #0
	bl ovy207_21b4388
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B3420: .word 0x02FFFC3C
	thumb_func_end ovy207_21b3208
_021B3424:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy207_21b342c
ovy207_21b342c: ; 0x021B342C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r1, [r4]
	ldr r0, _021B35D8 ; =0xFFFFE0FF
	ldr r6, _021B35DC ; =0x04001000
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
	add r7, r4, #0
	add r7, #0x50
	mov r0, #0
	strh r0, [r7]
	add r6, #0x50
	strh r0, [r6]
	ldr r2, _021B35E0 ; =0x04000304
	ldr r0, _021B35E4 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _021B35E8 ; =0x021BAF54
	bl GFL_BGSysSetVRAMBanks
	ldrh r0, [r5]
	bl GFL_BGSysCreate
	ldrh r0, [r5]
	bl BmpWin_InitAllocator
	ldr r0, _021B35EC ; =0x021BAE64
	bl GFL_BGSysSetLCDConfig
	ldr r0, _021B35F0 ; =0x021BAF34
	mov r1, #1
	mov r2, #0
	bl ovy207_21b3680
	ldr r0, _021B35F4 ; =0x021BAEF4
	mov r1, #2
	mov r2, #0
	bl ovy207_21b3680
	ldr r0, _021B35F8 ; =0x021BAE74
	mov r1, #3
	mov r2, #0
	bl ovy207_21b3680
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r0, _021B35FC ; =0x021BAE94
	mov r1, #4
	mov r2, #0
	bl ovy207_21b3680
	ldr r0, _021B3600 ; =0x021BAEB4
	mov r1, #5
	mov r2, #0
	bl ovy207_21b3680
	ldr r0, _021B3604 ; =0x021BAED4
	mov r1, #6
	mov r2, #0
	bl ovy207_21b3680
	ldr r0, _021B3608 ; =0x021BAF14
	mov r1, #7
	mov r2, #0
	bl ovy207_21b3680
	mov r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r1, #4
	mov r2, #0x1e
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #4
	mov r2, #8
	mov r3, #0xd
	mov r6, #8
	bl G2x_SetBlendAlpha_
	ldr r3, _021B360C ; =0x02093F08
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x6e
	str r0, [r2]
	add r0, sp, #0x20
	strh r1, [r0, #0x10]
	ldrh r2, [r5]
	ldr r1, _021B35E8 ; =0x021BAF54
	add r0, r7, #0
	bl Oam_CreateSystem
	ldrh r2, [r5]
	mov r0, #0x60
	mov r1, #0
	mov r7, #0x60
	bl sub_0204BF1C
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #1
	str r0, [sp, #8]
	bl sub_02048D28
	lsl r0, r6, #0x11
	str r0, [sp]
	lsl r0, r6, #0x10
	str r0, [sp, #4]
	lsl r0, r6, #0x12
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021B3610 ; =0x021BAE30
	lsl r1, r7, #0xd
	str r0, [sp, #0x10]
	ldr r0, _021B3614 ; =0x021BAE48
	mov r2, #0
	str r0, [sp, #0x14]
	ldr r0, _021B3618 ; =0x021BAE3C
	mov r3, #0
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0204A5C8
	str r0, [r5, #0x70]
	bl sub_0204A638
	ldr r0, _021B361C ; =0x021BAE54
	bl G3X_SetEdgeColorTable
	add r4, #0x60
	ldrh r1, [r4]
	ldr r0, _021B3620 ; =0x0000CFDF
	and r0, r1
	strh r0, [r4]
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	mov r0, #0
	bl sub_02044BB8
	ldrh r1, [r5]
	mov r0, #2
	bl sub_020199E8
	str r0, [r5, #0x78]
	mov r1, #0
	bl sub_0201AEFC
	ldr r0, [r5, #0x78]
	lsl r1, r6, #0xd
	bl sub_0201AF9C
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021B35D8: .word 0xFFFFE0FF
_021B35DC: .word 0x04001000
_021B35E0: .word 0x04000304
_021B35E4: .word 0xFFFF7FFF
_021B35E8: .word 0x021BAF54
_021B35EC: .word 0x021BAE64
_021B35F0: .word 0x021BAF34
_021B35F4: .word 0x021BAEF4
_021B35F8: .word 0x021BAE74
_021B35FC: .word 0x021BAE94
_021B3600: .word 0x021BAEB4
_021B3604: .word 0x021BAED4
_021B3608: .word 0x021BAF14
_021B360C: .word 0x02093F08
_021B3610: .word 0x021BAE30
_021B3614: .word 0x021BAE48
_021B3618: .word 0x021BAE3C
_021B361C: .word 0x021BAE54
_021B3620: .word 0x0000CFDF
	thumb_func_end ovy207_21b342c

	thumb_func_start ovy207_21b3624
ovy207_21b3624: ; 0x021B3624
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205F9C0
	ldr r0, [r4, #0x78]
	bl sub_02019A88
	ldr r0, [r4, #0x70]
	bl sub_0204A630
	bl sub_02048F44
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0204BF98
	bl sub_0204B758
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b3624

	thumb_func_start ovy207_21b3680
ovy207_21b3680: ; 0x021B3680
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
	bl GFL_BGSysLoadScr
	pop {r4, pc}
	thumb_func_end ovy207_21b3680

	thumb_func_start ovy207_21b36a4
ovy207_21b36a4: ; 0x021B36A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x4d
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	str r4, [sp]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r7, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xa
	mov r2, #2
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x48
	mov r2, #3
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #4
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xc
	mov r2, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xb
	mov r2, #5
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	mov r6, #0xb
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x49
	mov r2, #7
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x43
	mov r2, #5
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_0204AF50
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r7, #0
	lsl r3, r6, #5
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	str r4, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #1
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	mov r3, #0x1a
	lsl r3, r3, #4
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #6
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r7, #0
	str r3, [sp, #0xc]
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	ldr r3, [sp, #0xc]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #4
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, #0x20
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0xd
	add r2, r4, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0x11
	add r2, r4, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0x10
	add r2, r4, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0xf
	add r2, r4, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x50
	mov r2, #0x83
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x53
	mov r6, #0x86
	mov r2, #0x86
	bl Oam_LoadNCERFile
	add r6, #0x92
	str r0, [r5, r6]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x52
	mov r6, #0x85
	mov r2, #0x85
	bl Oam_LoadNCERFile
	add r6, #0x97
	str r0, [r5, r6]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x54
	mov r6, #0x87
	mov r2, #0x87
	bl Oam_LoadNCERFile
	add r6, #0xa1
	str r0, [r5, r6]
	mov r2, #0x84
	str r2, [sp, #0x10]
	ldrh r3, [r5]
	add r0, r7, #0
	mov r1, #0x51
	mov r2, #0x84
	bl Oam_LoadNCERFile
	mov r1, #0x84
	add r1, #0xa8
	str r0, [r5, r1]
	bl GetDefaultUINarcIdx
	ldrh r1, [r5]
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	str r0, [sp, #4]
	add r3, #0x9c
	add r0, r6, #0
	str r3, [sp, #0x10]
	bl GFL_G2DIOLoadArcNCLRDefault
	bl sub_0202D824
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	add r3, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204ADA8
	bl sub_0202D828
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	add r3, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204AF50
	mov r0, #3
	str r0, [sp]
	mov r0, #9
	mov r2, #0x15
	str r0, [sp, #4]
	str r2, [sp, #0x14]
	mov r0, #1
	add r1, r4, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #4
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r3, #0x15
	str r3, [sp, #0x18]
	add r3, #0xeb
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	str r3, [sp, #0x18]
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #2
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #5
	mov r2, #8
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x14]
	add r1, #0xff
	str r0, [r5, r1]
	str r1, [sp, #0x14]
	bl sub_0202D7E4
	add r1, r0, #0
	str r4, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldr r3, [sp, #0x18]
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	bl sub_0202D7E4
	add r1, r0, #0
	mov r3, #0xa0
	str r3, [sp, #0x1c]
	str r4, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0xa0
	str r0, [sp, #8]
	add r0, r6, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1]
	mov r0, #2
	bl sub_0202D7F8
	str r0, [sp, #0x20]
	mov r0, #2
	bl sub_0202D7FC
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	bl Oam_LoadNCERFile
	mov r1, #0xa0
	add r1, #0x6c
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0202D7F8
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0202D7FC
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl Oam_LoadNCERFile
	ldr r1, [sp, #0x1c]
	add r1, #0x70
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x1c]
	sub r0, #0x70
	str r0, [sp, #0xc]
_021B39F6:
	add r0, r4, #0
	bl sub_0202D7F4
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, [sp, #0xc]
	str r0, [r2, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x11
	blo _021B39F6
	ldrh r0, [r5]
	mov r1, #0x38
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0x39
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0x3a
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	mov r0, #2
	bl sub_0202D818
	add r4, r0, #0
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r6, #0
	add r1, r4, #0
	bl Oam_LoadNCERFile
	mov r1, #2
	add r1, #0xfe
	str r0, [r5, r1]
	bl sub_0202D964
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0xa0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r4, #0xa0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	mov r0, #2
	bl sub_0202D968
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	mov r0, #2
	bl sub_0202D96C
	str r0, [sp, #0x28]
	mov r0, #2
	bl sub_0202D970
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x28]
	add r0, r6, #0
	bl Oam_LoadNCERFile
	add r4, #0x80
	str r0, [r5, r4]
	bl sub_0202D944
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0xc0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r4, #0xc0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1]
	mov r0, #2
	bl sub_0202D948
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	mov r0, #2
	bl sub_0202D94C
	str r0, [sp, #0x2c]
	mov r0, #2
	bl sub_0202D950
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	bl Oam_LoadNCERFile
	add r4, #0x48
	str r0, [r5, r4]
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
	add r0, r6, #0
	mov r4, #0x80
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	bl sub_0202D8B4
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xf4
	str r0, [r1]
	mov r0, #2
	bl sub_0202D8B8
	str r0, [sp, #0x30]
	mov r0, #2
	bl sub_0202D8BC
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x30]
	add r0, r6, #0
	bl Oam_LoadNCERFile
	add r4, #0xa4
	str r0, [r5, r4]
	mov r0, #1
	bl sub_0202D91C
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0xe0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r4, #0xe0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1]
	mov r0, #1
	bl sub_0202D928
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	mov r0, #1
	mov r1, #2
	bl sub_0202D934
	str r0, [sp, #0x34]
	mov r0, #1
	mov r1, #2
	bl sub_0202D93C
	add r2, r0, #0
	ldrh r3, [r5]
	ldr r1, [sp, #0x34]
	add r0, r6, #0
	bl Oam_LoadNCERFile
	add r4, #0x24
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy207_21b5580
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy207_21b6970
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r5, #0
	add r2, r7, #0
	bl ovy207_21b87e0
	add r0, r5, #0
	add r5, #0x94
	ldr r1, [r5]
	add r2, r7, #0
	bl ovy207_21b76e4
	add r0, r7, #0
	bl GFL_ArcToolFree
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b36a4

	thumb_func_start ovy207_21b3c5c
ovy207_21b3c5c: ; 0x021B3C5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	bl ovy207_21b7764
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b8864
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b6a18
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r5, #0
	bl sub_021B559C
	mov r4, #0
_021B3C90:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	bls _021B3C90
	mov r4, #0xc
_021B3CA8:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x18
	bls _021B3CA8
	mov r4, #0x19
_021B3CC0:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x25
	bls _021B3CC0
	mov r6, #0x13
	mov r4, #0
	lsl r6, r6, #4
_021B3CDC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204B98C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x11
	blo _021B3CDC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b3c5c

	thumb_func_start ovy207_21b3cf4
ovy207_21b3cf4: ; 0x021B3CF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r3, _021B3EB0 ; =0x021BAE20
	add r4, r0, #0
	add r2, sp, #0x2c
	mov r1, #8
_021B3D00:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B3D00
	ldr r3, _021B3EB4 ; =0x021BAE10
	add r2, sp, #0x24
	mov r1, #8
_021B3D12:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B3D12
	mov r1, #0xa
	add r0, sp, #0x1c
	mov r5, #0
	strb r1, [r0, #6]
	strb r5, [r0, #7]
	add r0, r1, #0
	add r0, #0xf6
	str r0, [sp, #0x18]
	add r0, #0x74
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #0xf6
	str r0, [sp, #0x14]
	add r0, #0x78
	str r0, [sp, #0x14]
	add r0, r1, #0
	add r0, #0xf6
	str r0, [sp, #0x10]
	add r0, #0x78
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r0, #0xf6
	str r0, [sp, #0xc]
	add r0, #0x78
	add r6, r5, #0
	str r0, [sp, #0xc]
_021B3D52:
	cmp r5, #2
	bhi _021B3D64
	add r0, r4, #0
	add r0, #0xc8
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r3, [r0]
	b _021B3D70
_021B3D64:
	add r0, r4, #0
	add r0, #0xcc
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r4, r0]
_021B3D70:
	add r0, sp, #0x24
	ldrb r2, [r0, r5]
	add r0, sp, #0x1c
	strh r2, [r0]
	mov r2, #0xac
	cmp r5, #3
	beq _021B3D80
	mov r2, #0xa8
_021B3D80:
	add r0, sp, #0x1c
	strh r2, [r0, #2]
	add r0, sp, #0x2c
	ldrb r2, [r0, r5]
	add r0, sp, #0x1c
	strh r2, [r0, #4]
	lsl r0, r5, #2
	add r7, r4, r0
	add r0, sp, #0x1c
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r4]
	add r2, r4, #0
	add r2, #0x98
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r2, [r2]
	ldr r0, [r4, r0]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x14]
	str r0, [r7, r1]
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r7, r0]
	bl Oam_EnableOamAnim
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C124
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _021B3D52
	add r0, sp, #0x1c
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	add r0, sp, #0x1c
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r4]
	mov r7, #0x5d
	lsl r7, r7, #2
	add r1, r7, #0
	add r2, r4, #0
	add r3, r7, #0
	str r0, [sp, #8]
	sub r1, #0x44
	add r2, #0xa4
	sub r3, #0x68
	ldr r0, [r4, r7]
	ldr r1, [r4, r1]
	ldr r2, [r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	add r1, r7, #0
	add r1, #0x24
	str r0, [r4, r1]
	add r0, sp, #0x1c
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r4]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r7, #0
	str r0, [sp, #8]
	sub r1, #0x44
	add r2, #0xa4
	sub r3, #0x68
	ldr r0, [r4, r7]
	ldr r1, [r4, r1]
	ldr r2, [r2]
	ldr r3, [r4, r3]
	bl Oam_CreateSprite
	add r1, r7, #0
	add r1, #0x28
	str r0, [r4, r1]
	mov r5, #0
	add r7, #0x24
_021B3E2A:
	lsl r0, r6, #2
	add r0, r4, r0
	ldr r0, [r0, r7]
	add r1, r5, #0
	bl sub_0204C124
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #2
	blo _021B3E2A
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	bne _021B3E68
	mov r6, #0x5e
	mov r7, #0
	lsl r6, r6, #2
_021B3E4E:
	cmp r5, #7
	beq _021B3E5E
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_0204C124
_021B3E5E:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _021B3E4E
_021B3E68:
	add r0, r4, #0
	bl sub_021B5070
	cmp r0, #0
	bne _021B3E88
	mov r5, #0x19
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	sub r5, #0xc
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
_021B3E88:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b55a4
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7798
	add r0, r4, #0
	add r4, #0x90
	ldr r1, [r4]
	bl ovy207_21b88ac
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021B3EB0: .word 0x021BAE20
_021B3EB4: .word 0x021BAE10
	thumb_func_end ovy207_21b3cf4

	thumb_func_start ovy207_21b3eb8
ovy207_21b3eb8: ; 0x021B3EB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	bl ovy207_21b785c
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b8a34
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy207_21b56e0
	mov r6, #0x5e
	mov r4, #0
	lsl r6, r6, #2
_021B3EE4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Oam_RemoveOam
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021B3EE4
	mov r6, #0x66
	mov r4, #0
	lsl r6, r6, #2
_021B3EFE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Oam_RemoveOam
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021B3EFE
	pop {r4, r5, r6, pc}
	thumb_func_end ovy207_21b3eb8

	thumb_func_start ovy207_21b3f14
ovy207_21b3f14: ; 0x021B3F14
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0xb3
	bl GFL_MsgSysLoadData
	mov r6, #7
	lsl r6, r6, #6
	str r0, [r4, #0x7c]
	mov r5, #0x20
	str r5, [sp]
	ldrh r0, [r4]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r6, #0
	bl GFL_BGSysLoadNCLRDefault
	str r5, [sp]
	ldrh r0, [r4]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r6, #0
	mov r5, #4
	bl GFL_BGSysLoadNCLRDefault
	ldr r0, _021B3F84 ; =0x00004E59
	ldr r1, _021B3F88 ; =0x050005C0
	strh r0, [r1, #0x12]
	ldr r0, _021B3F8C ; =0x00006A52
	strh r0, [r1, #0x14]
	ldrh r1, [r4]
	lsl r0, r5, #0xa
	bl sub_020219A8
	add r4, #0x84
	str r0, [r4]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B3F84: .word 0x00004E59
_021B3F88: .word 0x050005C0
_021B3F8C: .word 0x00006A52
	thumb_func_end ovy207_21b3f14

	thumb_func_start ovy207_21b3f90
ovy207_21b3f90: ; 0x021B3F90
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021A18
	ldr r0, [r4, #0x7c]
	bl GFL_MsgDataFree
	add r4, #0x80
	ldr r0, [r4]
	bl sub_02022DA8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b3f90

	thumb_func_start ovy207_21b3fb8
ovy207_21b3fb8: ; 0x021B3FB8
	push {r3, r4, lr}
	sub sp, #0x24
	ldr r3, _021B3FDC ; =0x021BAF84
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0x24
_021B3FC4:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B3FC4
	add r0, sp, #0
	bl sub_0203DA0C
	str r0, [r4, #0x24]
	add sp, #0x24
	pop {r3, r4, pc}
	.align 2, 0
_021B3FDC: .word 0x021BAF84
	thumb_func_end ovy207_21b3fb8

	thumb_func_start ovy207_21b3fe0
ovy207_21b3fe0: ; 0x021B3FE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _021B4008
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021B4008
	add r0, r4, #0
	bl ovy207_21b400c
	cmp r0, #0
	bne _021B4008
	add r0, r4, #0
	bl ovy207_21b41e0
_021B4008:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b3fe0

	thumb_func_start ovy207_21b400c
ovy207_21b400c: ; 0x021B400C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _021B4056
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy207_21b4890
	cmp r0, #1
	bne _021B40BC
	add r0, r5, #0
	bl ovy207_21b49d0
	mov r6, #0x62
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #3
	bl Oam_SetOamAnimIndex
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl Oam_SetOamAnimIndex
	mov r6, #0
	ldr r0, _021B41CC ; =0x00000664
	str r6, [r5, #0x48]
	str r4, [r5, #0x4c]
	bl GFL_SndSEPlay
	strb r6, [r5, #0x1c]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021B4056:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _021B409C
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy207_21b4890
	cmp r0, #1
	bne _021B40BC
	add r0, r5, #0
	bl ovy207_21b49d0
	mov r6, #0x62
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #0xb
	bl Oam_SetOamAnimIndex
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl Oam_SetOamAnimIndex
	mov r0, #1
	str r0, [r5, #0x48]
	ldr r0, _021B41CC ; =0x00000664
	str r4, [r5, #0x4c]
	bl GFL_SndSEPlay
	strb r4, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B409C:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _021B40D6
	ldr r0, [r5, #0x40]
	mov r2, #2
	cmp r0, #0
	bne _021B40B0
	mov r2, #1
_021B40B0:
	ldr r1, [r5, #0x58]
	cmp r1, r2
	bge _021B40BC
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021B40BE
_021B40BC:
	b _021B41C8
_021B40BE:
	add r0, r1, #1
	str r0, [r5, #0x58]
	add r0, r5, #0
	bl ovy207_21b49d0
	ldr r0, _021B41D0 ; =0x00000665
	bl GFL_SndSEPlay
	mov r0, #0
	strb r0, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B40D6:
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _021B4104
	ldr r1, [r5, #0x58]
	cmp r1, #0
	ble _021B41C8
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _021B41C8
	sub r0, r1, #1
	str r0, [r5, #0x58]
	add r0, r5, #0
	bl ovy207_21b49d0
	ldr r0, _021B41D0 ; =0x00000665
	bl GFL_SndSEPlay
	mov r0, #0
	strb r0, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B4104:
	bl GCTX_HIDGetPressedKeys
	mov r4, #2
	tst r0, r4
	beq _021B4138
	mov r1, #1
	ldr r0, [r5, #8]
	str r1, [r5, #0x54]
	strb r1, [r0, #0x12]
	str r4, [r5, #0x50]
	mov r4, #0x65
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	ldr r0, [r5, r4]
	add r4, #0xc
	str r0, [r5, r4]
	ldr r0, _021B41D4 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #0
	strb r0, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B4138:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r4, #9
	tst r0, r1
	beq _021B4174
	add r0, r5, #0
	bl sub_021B5070
	cmp r0, #1
	bne _021B4174
	ldr r0, [r5, #8]
	str r4, [r5, #0x54]
	strb r4, [r0, #0x12]
	str r4, [r5, #0x50]
	mov r4, #0x19
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #8
	bl Oam_SetOamAnimIndex
	ldr r0, [r5, r4]
	add r4, #0x10
	str r0, [r5, r4]
	ldr r0, _021B41D8 ; =0x00000556
	bl GFL_SndSEPlay
	mov r0, #0
	strb r0, [r5, #0x1c]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B4174:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	lsl r1, r1, #0xa
	tst r0, r1
	beq _021B41C8
	add r0, r5, #0
	bl sub_021B5070
	cmp r0, #1
	bne _021B41C8
	ldr r0, [r5, #0x58]
	cmp r0, #3
	bge _021B41C4
	add r2, r5, #0
	add r2, #0x60
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _021B41AA
	mov r0, #0
	str r0, [r2, r1]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	b _021B41B6
_021B41AA:
	mov r0, #1
	str r0, [r2, r1]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
_021B41B6:
	bl Oam_SetOamAnimIndex
	ldr r0, _021B41DC ; =0x00000646
	bl GFL_SndSEPlay
	mov r0, #0
	strb r0, [r5, #0x1c]
_021B41C4:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B41C8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B41CC: .word 0x00000664
_021B41D0: .word 0x00000665
_021B41D4: .word 0x00000551
_021B41D8: .word 0x00000556
_021B41DC: .word 0x00000646
	thumb_func_end ovy207_21b400c

	thumb_func_start ovy207_21b41e0
ovy207_21b41e0: ; 0x021B41E0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #7
	bhi _021B426A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B41F6: ; jump table
	.short _021B4206 - _021B41F6 - 2 ; case 0
	.short _021B4220 - _021B41F6 - 2 ; case 1
	.short _021B423E - _021B41F6 - 2 ; case 2
	.short _021B4264 - _021B41F6 - 2 ; case 3
	.short _021B42AC - _021B41F6 - 2 ; case 4
	.short _021B42E4 - _021B41F6 - 2 ; case 5
	.short _021B431C - _021B41F6 - 2 ; case 6
	.short _021B434C - _021B41F6 - 2 ; case 7
_021B4206:
	ldr r1, [r4, #0x58]
	cmp r1, #0
	beq _021B426A
	mov r1, #0
	str r1, [r4, #0x58]
	bl ovy207_21b49d0
	ldr r0, _021B4374 ; =0x00000665
	bl GFL_SndSEPlay
	mov r0, #1
	strb r0, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B4220:
	ldr r1, [r4, #0x58]
	cmp r1, #1
	beq _021B426A
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _021B426A
	mov r5, #1
	str r5, [r4, #0x58]
	bl ovy207_21b49d0
	ldr r0, _021B4374 ; =0x00000665
	bl GFL_SndSEPlay
	strb r5, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B423E:
	ldr r1, [r4, #0x58]
	cmp r1, #2
	beq _021B426A
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _021B426A
	ldr r1, [r4, #0x40]
	cmp r1, #1
	bne _021B426A
	mov r1, #2
	str r1, [r4, #0x58]
	bl ovy207_21b49d0
	ldr r0, _021B4374 ; =0x00000665
	bl GFL_SndSEPlay
	mov r0, #1
	strb r0, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B4264:
	ldr r1, [r4, #0x58]
	cmp r1, #3
	blt _021B426C
_021B426A:
	b _021B4372
_021B426C:
	bl sub_021B5070
	cmp r0, #1
	bne _021B4372
	ldr r0, [r4, #0x58]
	add r2, r4, #0
	add r2, #0x60
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _021B4290
	mov r0, #0
	str r0, [r2, r1]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	b _021B429C
_021B4290:
	mov r0, #1
	str r0, [r2, r1]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
_021B429C:
	bl Oam_SetOamAnimIndex
	ldr r0, _021B4378 ; =0x00000646
	bl GFL_SndSEPlay
	mov r0, #1
	strb r0, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B42AC:
	mov r1, #0
	mov r5, #0
	bl ovy207_21b4890
	cmp r0, #1
	bne _021B4372
	add r0, r4, #0
	bl ovy207_21b49d0
	mov r6, #0x62
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	mov r1, #0xb
	bl Oam_SetOamAnimIndex
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl Oam_SetOamAnimIndex
	mov r6, #1
	ldr r0, _021B437C ; =0x00000664
	str r6, [r4, #0x48]
	str r5, [r4, #0x4c]
	bl GFL_SndSEPlay
	strb r6, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B42E4:
	mov r1, #1
	mov r5, #1
	bl ovy207_21b4890
	cmp r0, #1
	bne _021B4372
	add r0, r4, #0
	bl ovy207_21b49d0
	mov r6, #0x62
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	mov r1, #3
	bl Oam_SetOamAnimIndex
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl Oam_SetOamAnimIndex
	mov r0, #0
	str r0, [r4, #0x48]
	ldr r0, _021B437C ; =0x00000664
	str r5, [r4, #0x4c]
	bl GFL_SndSEPlay
	strb r5, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B431C:
	bl sub_021B5070
	cmp r0, #1
	bne _021B4372
	mov r1, #2
	ldr r0, [r4, #8]
	str r1, [r4, #0x54]
	strb r1, [r0, #0x12]
	mov r5, #0x19
	str r1, [r4, #0x50]
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #8
	bl Oam_SetOamAnimIndex
	ldr r0, [r4, r5]
	add r5, #0x10
	str r0, [r4, r5]
	ldr r0, _021B4380 ; =0x00000556
	bl GFL_SndSEPlay
	mov r0, #1
	strb r0, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_021B434C:
	mov r6, #1
	mov r5, #0x65
	ldr r0, [r4, #8]
	str r6, [r4, #0x54]
	strb r6, [r0, #0x12]
	mov r0, #2
	lsl r5, r5, #2
	str r0, [r4, #0x50]
	ldr r0, [r4, r5]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	ldr r0, [r4, r5]
	add r5, #0xc
	str r0, [r4, r5]
	ldr r0, _021B4384 ; =0x00000551
	bl GFL_SndSEPlay
	strb r6, [r4, #0x1c]
_021B4372:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B4374: .word 0x00000665
_021B4378: .word 0x00000646
_021B437C: .word 0x00000664
_021B4380: .word 0x00000556
_021B4384: .word 0x00000551
	thumb_func_end ovy207_21b41e0

	thumb_func_start ovy207_21b4388
ovy207_21b4388: ; 0x021B4388
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	mov r1, #0x69
	lsl r1, r1, #2
	ldrh r3, [r0, r1]
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, r0
	lsl r0, r0, #6
	cmp r2, r0
	blt _021B43A8
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r2, r3, r0
	b _021B43A8
_021B43A8:
	ldr r0, [sp]
	strh r2, [r0, r1]
	ldr r0, _021B4520 ; =0x021BAE18
	add r1, sp, #0x70
	ldrh r2, [r0]
	strh r2, [r1, #8]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0xa]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #6]
	strh r0, [r1, #0xe]
	ldr r0, _021B4524 ; =0x021BAE28
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r1, [sp]
	str r0, [sp, #0x48]
	ldrh r0, [r1, r0]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021B4528 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	blx sub_0208D374
	ldr r1, _021B452C ; =0x45800000
	blx sub_0208E3C8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x48]
	add r0, #0xa
	str r0, [sp, #0x48]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x50]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x4c]
_021B4412:
	ldr r0, [sp, #0x34]
	add r1, sp, #0x78
	lsl r0, r0, #1
	str r0, [sp, #0x14]
	ldrh r0, [r1, r0]
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x18
	asr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r0
	lsl r1, r1, #0x13
	asr r1, r1, #0x18
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x50]
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	add r1, sp, #0x70
	ldrh r7, [r1, r0]
	add r0, r5, #0
	blx sub_0208D374
	add r6, r0, #0
	mov r0, #0x1f
	and r0, r7
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	sub r0, r0, r5
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	ldr r0, [sp, #0x30]
	blx sub_0208D374
	add r5, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r7
	lsl r0, r0, #0x13
	asr r1, r0, #0x18
	ldr r0, [sp, #0x30]
	sub r0, r1, r0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [sp, #0x2c]
	blx sub_0208D374
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x4c]
	and r0, r7
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldr r0, [sp, #0x2c]
	sub r0, r1, r0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x38]
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r6, #0
	bge _021B44DA
	mov r6, #0
_021B44DA:
	cmp r5, #0
	bge _021B44E0
	mov r5, #0
_021B44E0:
	cmp r0, #0
	bge _021B44E6
	mov r0, #0
_021B44E6:
	cmp r6, #0x1f
	ble _021B44EC
	mov r6, #0x1f
_021B44EC:
	cmp r5, #0x1f
	ble _021B44F2
	mov r5, #0x1f
_021B44F2:
	cmp r0, #0x1f
	ble _021B44F8
	mov r0, #0x1f
_021B44F8:
	lsl r1, r0, #0xa
	lsl r0, r5, #5
	add r2, r1, #0
	orr r0, r6
	orr r2, r0
	ldr r1, [sp]
	ldr r0, [sp, #0x14]
	add r1, r1, r0
	ldr r0, [sp, #0x48]
	strh r2, [r1, r0]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
	cmp r0, #4
	bhs _021B451C
	b _021B4412
_021B451C:
	ldr r2, _021B4530 ; =0x000001AE
	b _021B4534
	.align 2, 0
_021B4520: .word 0x021BAE18
_021B4524: .word 0x021BAE28
_021B4528: .word FX_SinCosTable_
_021B452C: .word 0x45800000
_021B4530: .word 0x000001AE
_021B4534:
	ldr r3, [sp]
	str r2, [sp, #0x54]
	add r2, r3, r2
	mov r0, #0xe
	mov r1, #0x6c
	mov r3, #8
	bl sub_0205FA10
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x64]
	add r0, #0x48
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x60]
	add r0, #8
	str r0, [sp, #0x60]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x54]
	add r0, #0x28
	str r0, [sp, #0x54]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x58]
_021B456A:
	ldr r0, [sp, #4]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x10]
	ldrh r0, [r1, r0]
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x18
	asr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r0
	lsl r1, r1, #0x13
	asr r1, r1, #0x18
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x5c]
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x54]
	ldrh r7, [r1, r0]
	add r0, r5, #0
	blx sub_0208D374
	add r6, r0, #0
	mov r0, #0x1f
	and r0, r7
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	sub r0, r0, r5
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	ldr r0, [sp, #0x28]
	blx sub_0208D374
	add r5, r0, #0
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r7
	lsl r0, r0, #0x13
	asr r1, r0, #0x18
	ldr r0, [sp, #0x28]
	sub r0, r1, r0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [sp, #0x24]
	blx sub_0208D374
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x58]
	and r0, r7
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldr r0, [sp, #0x24]
	sub r0, r1, r0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x3c]
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r6, #0
	bge _021B4636
	mov r6, #0
_021B4636:
	cmp r5, #0
	bge _021B463C
	mov r5, #0
_021B463C:
	cmp r0, #0
	bge _021B4642
	mov r0, #0
_021B4642:
	cmp r6, #0x1f
	ble _021B4648
	mov r6, #0x1f
_021B4648:
	cmp r5, #0x1f
	ble _021B464E
	mov r5, #0x1f
_021B464E:
	cmp r0, #0x1f
	ble _021B4654
	mov r0, #0x1f
_021B4654:
	lsl r1, r0, #0xa
	lsl r0, r5, #5
	add r2, r1, #0
	orr r0, r6
	orr r2, r0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x64]
	strh r2, [r1, r0]
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #0x10
	bhs _021B4674
	b _021B456A
_021B4674:
	mov r1, #6
	lsl r1, r1, #6
	add r3, r1, #0
	ldr r2, [sp]
	add r3, #0x76
	add r2, r2, r3
	mov r0, #0xe
	mov r3, #0x20
	str r1, [sp, #0x40]
	bl sub_0205FA10
	mov r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x6c]
	add r0, #0x96
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x40]
	add r0, #0xb6
	str r0, [sp, #0x40]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x68]
_021B46A2:
	ldr r0, [sp, #8]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0xc]
	ldrh r0, [r1, r0]
	mov r1, #0x1f
	add r2, r0, #0
	and r2, r1
	lsl r1, r2, #0x18
	asr r6, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r0
	asr r1, r1, #5
	lsl r3, r1, #0x18
	asr r3, r3, #0x18
	str r3, [sp, #0x20]
	ldr r3, [sp, #0x68]
	add r2, #0xa
	and r0, r3
	asr r0, r0, #0xa
	lsl r3, r0, #0x18
	add r0, #0xa
	asr r3, r3, #0x18
	lsl r2, r2, #0x18
	add r1, #0xa
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	str r3, [sp, #0x1c]
	asr r0, r0, #0x18
	asr r5, r2, #0x18
	asr r7, r1, #0x18
	str r0, [sp, #0x18]
	cmp r5, #0x1f
	ble _021B46EE
	mov r5, #0x1f
_021B46EE:
	cmp r7, #0x1f
	ble _021B46F4
	mov r7, #0x1f
_021B46F4:
	ldr r0, [sp, #0x18]
	cmp r0, #0x1f
	ble _021B46FE
	mov r0, #0x1f
	str r0, [sp, #0x18]
_021B46FE:
	add r0, r6, #0
	blx sub_0208D374
	str r0, [sp, #0x44]
	sub r0, r5, r6
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, [sp, #0x44]
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	ldr r0, [sp, #0x20]
	blx sub_0208D374
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	sub r0, r7, r0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r5, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [sp, #0x1c]
	blx sub_0208D374
	add r7, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	blx sub_0208DA4C
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r6, #0
	bge _021B477C
	mov r6, #0
_021B477C:
	cmp r5, #0
	bge _021B4782
	mov r5, #0
_021B4782:
	cmp r0, #0
	bge _021B4788
	mov r0, #0
_021B4788:
	cmp r6, #0x1f
	ble _021B478E
	mov r6, #0x1f
_021B478E:
	cmp r5, #0x1f
	ble _021B4794
	mov r5, #0x1f
_021B4794:
	cmp r0, #0x1f
	ble _021B479A
	mov r0, #0x1f
_021B479A:
	lsl r1, r0, #0xa
	lsl r0, r5, #5
	add r2, r1, #0
	orr r0, r6
	orr r2, r0
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x6c]
	strh r2, [r1, r0]
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #0xe
	bhi _021B47BA
	b _021B46A2
_021B47BA:
	mov r1, #0x1a
	lsl r1, r1, #4
	add r3, r1, #0
	ldr r2, [sp]
	add r3, #0x76
	add r2, r2, r3
	mov r0, #0xe
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b4388

	thumb_func_start ovy207_21b47d4
ovy207_21b47d4: ; 0x021B47D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	str r1, [r5, #0x44]
	cmp r1, #0
	bne _021B4830
	mov r4, #0x5e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	add r4, #0x18
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
_021B4830:
	mov r4, #0x5e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	mov r6, #1
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x40]
	cmp r0, #1
	bne _021B4858
	add r4, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
_021B4858:
	mov r4, #0x62
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	mov r6, #1
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	bl sub_021B5070
	cmp r0, #1
	bne _021B488E
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
_021B488E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy207_21b47d4

	thumb_func_start ovy207_21b4890
ovy207_21b4890: ; 0x021B4890
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r2, sp, #0
	add r5, r0, #0
	bl ovy207_21b48e4
	add r4, r0, #0
	cmp r4, #1
	bne _021B48DC
	add r0, sp, #0
	ldrh r0, [r0]
	strh r0, [r5, #0x18]
	ldr r0, [r5, #8]
	ldrb r0, [r0, #0xc]
	cmp r0, #2
	bne _021B48D6
	mov r6, #0x96
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021B48C4
	bl sub_0201C404
	ldr r0, [r5, r6]
	bl GFL_HeapFree
_021B48C4:
	add r0, r5, #0
	bl ovy207_21b4d9c
	ldrh r1, [r5]
	bl sub_0201C358
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r5, r1]
_021B48D6:
	add r0, r5, #0
	bl ovy207_21b4984
_021B48DC:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b4890

	thumb_func_start ovy207_21b48e4
ovy207_21b48e4: ; 0x021B48E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0x18]
	add r4, r5, #0
	add r6, r1, #0
	str r2, [sp]
	mov r7, #0
	str r0, [sp, #8]
	add r4, #0x18
_021B48FC:
	cmp r6, #1
	bne _021B4910
	ldr r1, [r5, #8]
	ldrh r0, [r5, #0x18]
	ldrb r1, [r1, #0xe]
	sub r1, r1, #1
	cmp r0, r1
	blt _021B4910
_021B490C:
	mov r7, #1
	b _021B496A
_021B4910:
	cmp r6, #0
	bne _021B491C
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _021B491C
	b _021B490C
_021B491C:
	cmp r6, #1
	ldrh r0, [r4]
	bne _021B4926
	add r0, r0, #1
	b _021B4928
_021B4926:
	sub r0, r0, #1
_021B4928:
	strh r0, [r4]
	add r0, r5, #0
	bl ovy207_21b4d9c
	mov r1, #0xa9
	mov r2, #0
	str r0, [sp, #4]
	bl sub_0201CD88
	cmp r0, #0
	beq _021B496A
	ldr r0, [sp, #4]
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #1
	bne _021B4952
	ldr r0, [r5, #0x58]
	cmp r0, #0
	bne _021B496A
_021B4952:
	ldr r0, [r5, #0x58]
	cmp r0, #2
	bne _021B4964
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy207_21b5080
	cmp r0, #0
	beq _021B496A
_021B4964:
	mov r0, #1
	mov r7, #1
	str r0, [sp, #0xc]
_021B496A:
	cmp r7, #0
	beq _021B48FC
	ldr r0, [sp]
	cmp r0, #0
	beq _021B4978
	ldrh r1, [r5, #0x18]
	strh r1, [r0]
_021B4978:
	ldr r0, [sp, #8]
	strh r0, [r5, #0x18]
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b48e4

	thumb_func_start ovy207_21b4984
ovy207_21b4984: ; 0x021B4984
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy207_21b4ddc
	add r4, r0, #0
	add r0, r5, #0
	bl ovy207_21b4d9c
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r7, #1
	bl ovy207_21b4e0c
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	str r0, [r5, #0x38]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0201CCF8
	str r0, [r5, #0x3c]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy207_21b5080
	str r0, [r5, #0x40]
	add r0, r5, #0
	mov r1, #0
	bl ovy207_21b4e0c
	str r7, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b4984

	thumb_func_start ovy207_21b49d0
ovy207_21b49d0: ; 0x021B49D0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ovy207_21b4e0c
	ldrb r1, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	beq _021B4A16
	cmp r1, #0xff
	beq _021B49FE
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b5a70
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl sub_021B804C
_021B49FE:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b5710
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7f7c
_021B4A16:
	ldr r0, [r4, #0x5c]
	cmp r0, #3
	bhi _021B4A66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4A28: ; jump table
	.short _021B4A30 - _021B4A28 - 2 ; case 0
	.short _021B4A3E - _021B4A28 - 2 ; case 1
	.short _021B4A4C - _021B4A28 - 2 ; case 2
	.short _021B4A5A - _021B4A28 - 2 ; case 3
_021B4A30:
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b6cac
	b _021B4A66
_021B4A3E:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b8ba4
	b _021B4A66
_021B4A4C:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7efc
	b _021B4A66
_021B4A5A:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b96b8
_021B4A66:
	ldr r0, [r4, #0x58]
	cmp r0, #3
	bhi _021B4AB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4A78: ; jump table
	.short _021B4A80 - _021B4A78 - 2 ; case 0
	.short _021B4A8E - _021B4A78 - 2 ; case 1
	.short _021B4A9C - _021B4A78 - 2 ; case 2
	.short _021B4AAA - _021B4A78 - 2 ; case 3
_021B4A80:
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b6a60
	b _021B4AB6
_021B4A8E:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b8a9c
	b _021B4AB6
_021B4A9C:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7db0
	b _021B4AB6
_021B4AAA:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b9510
_021B4AB6:
	ldr r1, [r4, #0x5c]
	ldr r0, [r4, #0x58]
	cmp r1, r0
	beq _021B4AE4
	mov r0, #0x97
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r2, _021B4AF4 ; =0x0400000C
	mov r1, #0
	add r0, r0, #4
	strb r1, [r4, r0]
	ldrh r1, [r2]
	mov r0, #0x40
	orr r1, r0
	strh r1, [r2]
	ldr r2, _021B4AF8 ; =0x0400100A
	ldrh r1, [r2]
	orr r1, r0
	strh r1, [r2]
	ldrh r1, [r2, #2]
	orr r0, r1
	strh r0, [r2, #2]
_021B4AE4:
	add r0, r4, #0
	mov r1, #0
	bl ovy207_21b4e0c
	mov r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
	nop
_021B4AF4: .word 0x0400000C
_021B4AF8: .word 0x0400100A
	thumb_func_end ovy207_21b49d0

	thumb_func_start ovy207_21b4afc
ovy207_21b4afc: ; 0x021B4AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021B4B38
	add r1, r0, #4
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #4
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	lsl r1, r2, #5
	orr r2, r1
	ldr r1, _021B4D94 ; =0x0400004C
	strb r2, [r1]
	add r1, r0, #4
	ldrb r2, [r4, r1]
	lsl r1, r2, #5
	orr r2, r1
	ldr r1, _021B4D98 ; =0x0400104C
	strb r2, [r1]
	add r1, r0, #4
	ldrb r1, [r4, r1]
	cmp r1, #3
	blo _021B4B38
	mov r1, #2
	str r1, [r4, r0]
_021B4B38:
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #3
	bne _021B4B74
	add r1, r0, #4
	ldrb r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	lsl r1, r2, #5
	orr r2, r1
	ldr r1, _021B4D94 ; =0x0400004C
	strb r2, [r1]
	add r1, r0, #4
	ldrb r2, [r4, r1]
	lsl r1, r2, #5
	orr r2, r1
	ldr r1, _021B4D98 ; =0x0400104C
	strb r2, [r1]
	add r1, r0, #4
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021B4B74
	mov r1, #0
	str r1, [r4, #0xc]
	add sp, #0x14
	str r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_021B4B74:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021B4B90
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _021B4B92
	cmp r0, #0
	beq _021B4B92
_021B4B90:
	b _021B4D90
_021B4B92:
	ldrb r1, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	beq _021B4BBA
	cmp r1, #0xff
	beq _021B4BAA
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b5a98
_021B4BAA:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b57cc
	ldrh r0, [r4, #0x18]
	strb r0, [r4, #0x1a]
_021B4BBA:
	ldr r0, [r4, #0x5c]
	cmp r0, #3
	bhi _021B4C0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4BCC: ; jump table
	.short _021B4BD4 - _021B4BCC - 2 ; case 0
	.short _021B4BE2 - _021B4BCC - 2 ; case 1
	.short _021B4BF0 - _021B4BCC - 2 ; case 2
	.short _021B4BFE - _021B4BCC - 2 ; case 3
_021B4BD4:
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b6cd4
	b _021B4C0A
_021B4BE2:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b8bf4
	b _021B4C0A
_021B4BF0:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7f20
	b _021B4C0A
_021B4BFE:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b9728
_021B4C0A:
	ldr r0, [r4, #0x58]
	cmp r0, #3
	bhi _021B4C5A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4C1C: ; jump table
	.short _021B4C24 - _021B4C1C - 2 ; case 0
	.short _021B4C32 - _021B4C1C - 2 ; case 1
	.short _021B4C40 - _021B4C1C - 2 ; case 2
	.short _021B4C4E - _021B4C1C - 2 ; case 3
_021B4C24:
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b6ad4
	b _021B4C5A
_021B4C32:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b8b30
	b _021B4C5A
_021B4C40:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b7e0c
	b _021B4C5A
_021B4C4E:
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy207_21b9610
_021B4C5A:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _021B4C86
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	beq _021B4C86
	mov r5, #0x5f
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #1
	mov r6, #1
	bl sub_0204C124
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _021B4C7E
	b _021B4C92
_021B4C7E:
	add r0, r5, #4
	ldr r0, [r4, r0]
	add r1, r6, #0
	b _021B4C98
_021B4C86:
	mov r5, #0x5f
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
_021B4C92:
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
_021B4C98:
	bl sub_0204C124
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _021B4CC6
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy207_21b48e4
	cmp r0, #1
	bne _021B4CBA
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	b _021B4CC2
_021B4CBA:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x11
_021B4CC2:
	bl Oam_SetOamAnimIndex
_021B4CC6:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _021B4CF0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ovy207_21b48e4
	cmp r0, #1
	bne _021B4CE4
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	b _021B4CEC
_021B4CE4:
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x10
_021B4CEC:
	bl Oam_SetOamAnimIndex
_021B4CF0:
	ldr r0, [r4, #0x58]
	cmp r0, #3
	bge _021B4D22
	add r0, r4, #0
	bl sub_021B5070
	cmp r0, #1
	bne _021B4D22
	ldr r0, [r4, #0x58]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x60]
	cmp r0, #1
	bne _021B4D16
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	b _021B4D1E
_021B4D16:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
_021B4D1E:
	bl Oam_SetOamAnimIndex
_021B4D22:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021B4D72
	mov r7, #0
	mov r0, #0
	str r7, [r4, #0x10]
	bl sub_02006C24
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _021B4D72
	add r0, r4, #0
	bl ovy207_21b4ddc
	add r5, r0, #0
	mov r1, #5
	add r2, r7, #0
	bl sub_0201CCF8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x6f
	add r2, r7, #0
	bl sub_0201CCF8
	add r5, r0, #0
	add r0, sp, #0x10
	bl sub_02006D54
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x40
	add r3, r7, #0
	bl sub_020069F4
_021B4D72:
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _021B4D88
	mov r1, #3
	str r1, [r4, r0]
	ldr r0, [r4, #0x58]
	add sp, #0x14
	str r0, [r4, #0x5c]
	pop {r4, r5, r6, r7, pc}
_021B4D88:
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x58]
	str r0, [r4, #0x5c]
_021B4D90:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B4D94: .word 0x0400004C
_021B4D98: .word 0x0400104C
	thumb_func_end ovy207_21b4afc

	thumb_func_start ovy207_21b4d9c
ovy207_21b4d9c: ; 0x021B4D9C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _021B4DB2
	cmp r0, #1
	beq _021B4DBA
	cmp r0, #2
	beq _021B4DC8
	b _021B4DD8
_021B4DB2:
	ldr r0, [r1]
	bl sub_0201D620
	pop {r4, pc}
_021B4DBA:
	ldr r0, [r1]
	ldrh r1, [r4, #0x18]
	bl sub_0201FF08
	bl sub_0201D620
	pop {r4, pc}
_021B4DC8:
	bl sub_0201C2C4
	ldr r1, [r4, #8]
	ldr r2, [r1]
	ldrh r1, [r4, #0x18]
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_021B4DD8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy207_21b4d9c

	thumb_func_start ovy207_21b4ddc
ovy207_21b4ddc: ; 0x021B4DDC
	push {r3, lr}
	add r2, r0, #0
	ldr r1, [r2, #8]
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq _021B4DF2
	cmp r0, #1
	beq _021B4DF6
	cmp r0, #2
	beq _021B4E00
	b _021B4E08
_021B4DF2:
	ldr r0, [r1]
	pop {r3, pc}
_021B4DF6:
	ldr r0, [r1]
	ldrh r1, [r2, #0x18]
	bl sub_0201FF08
	pop {r3, pc}
_021B4E00:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	pop {r3, pc}
_021B4E08:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy207_21b4ddc

	thumb_func_start ovy207_21b4e0c
ovy207_21b4e0c: ; 0x021B4E0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r4, r1, #0
	ldrb r1, [r2, #0xc]
	cmp r1, #0
	beq _021B4E24
	cmp r1, #1
	beq _021B4E38
	cmp r1, #2
	beq _021B4E52
	pop {r4, r5, r6, pc}
_021B4E24:
	ldr r0, [r2]
	cmp r4, #1
	bne _021B4E30
	bl sub_0201CC0C
	pop {r4, r5, r6, pc}
_021B4E30:
	mov r1, #1
	bl sub_0201CC4C
	pop {r4, r5, r6, pc}
_021B4E38:
	ldrh r1, [r5, #0x18]
	ldr r0, [r2]
	bl sub_0201FF08
	cmp r4, #1
	bne _021B4E4A
	bl sub_0201CC0C
	pop {r4, r5, r6, pc}
_021B4E4A:
	mov r1, #1
	bl sub_0201CC4C
	pop {r4, r5, r6, pc}
_021B4E52:
	bl ovy207_21b4d9c
	add r6, r0, #0
	cmp r4, #1
	bne _021B4E6E
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0201CC0C
	add r0, r6, #0
	bl sub_0201CC98
	pop {r4, r5, r6, pc}
_021B4E6E:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0201CC4C
	add r0, r6, #0
	mov r1, #1
	bl sub_0201CCC0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy207_21b4e0c

	thumb_func_start ovy207_21b4e84
ovy207_21b4e84: ; 0x021B4E84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	add r6, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	lsl r2, r4, #0x10
	str r7, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r3, sp, #0x20
	str r0, [sp, #4]
	ldrh r0, [r3, #4]
	mov r4, #0
	add r5, #0x84
	str r0, [sp, #8]
	ldrsh r3, [r3, r4]
	ldr r0, [r5]
	add r1, r6, #0
	asr r2, r2, #0x10
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b4e84

	thumb_func_start ovy207_21b4ec4
ovy207_21b4ec4: ; 0x021B4EC4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, sp, #0x18
	ldrh r2, [r0]
	add r3, r6, #0
	str r2, [sp]
	ldrh r0, [r0, #4]
	add r2, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ovy207_21b4e84
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b4ec4

	thumb_func_start ovy207_21b4ef0
ovy207_21b4ef0: ; 0x021B4EF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x7c]
	add r7, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1]
	mov r2, #0
	add r4, r0, #0
	bl GFL_FontGetBlockWidth
	add r2, r0, #0
	add r0, r5, #0
	lsr r2, r2, #1
	sub r2, r6, r2
	lsl r2, r2, #0x10
	str r4, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r3, sp, #0x20
	str r0, [sp, #4]
	ldrh r0, [r3, #4]
	add r5, #0x84
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r5, #0
	ldrsh r3, [r3, r5]
	asr r2, r2, #0x10
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b4ef0

	thumb_func_start ovy207_21b4f44
ovy207_21b4f44: ; 0x021B4F44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldrh r1, [r5]
	mov r0, #0x10
	add r7, r2, #0
	add r6, r3, #0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [r5, #0x7c]
	add r1, r6, #0
	bl sub_0204898C
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	str r4, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #8]
	add r5, #0x84
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r5, #4
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	ldr r1, [sp, #0xc]
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b4f44

	thumb_func_start ovy207_21b4fa0
ovy207_21b4fa0: ; 0x021B4FA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, sp, #0x20
	ldrh r2, [r0]
	add r3, r6, #0
	str r2, [sp]
	ldrh r2, [r0, #4]
	str r2, [sp, #4]
	ldrh r0, [r0, #8]
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ovy207_21b4f44
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b4fa0

	thumb_func_start ovy207_21b4fd0
ovy207_21b4fd0: ; 0x021B4FD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldrh r1, [r5]
	mov r0, #0x10
	add r7, r2, #0
	add r6, r3, #0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [r5, #0x7c]
	add r1, r6, #0
	bl sub_0204898C
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r1, r5, #0
	add r1, #0x80
	ldr r1, [r1]
	add r0, r4, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r2, r0, #0
	add r0, r5, #0
	str r4, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #8]
	add r5, #0x84
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldrh r5, [r3]
	sub r2, r5, r2
	mov r5, #4
	lsl r2, r2, #0x10
	ldrsh r3, [r3, r5]
	asr r2, r2, #0x10
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b4fd0

	thumb_func_start ovy207_21b5040
ovy207_21b5040: ; 0x021B5040
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, sp, #0x20
	ldrh r2, [r0]
	add r3, r6, #0
	str r2, [sp]
	ldrh r2, [r0, #4]
	str r2, [sp, #4]
	ldrh r0, [r0, #8]
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ovy207_21b4fd0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b5040

	thumb_func_start sub_021B5070
sub_021B5070: ; 0x021B5070
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x20]
	cmp r0, #1
	bne _021B507C
	mov r0, #1
	bx lr
_021B507C:
	mov r0, #0
	bx lr
	thumb_func_end sub_021B5070

	thumb_func_start ovy207_21b5080
ovy207_21b5080: ; 0x021B5080
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r1, #0
	add r6, r4, #0
_021B5088:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021BAD9C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0201CD88
	cmp r0, #1
	bne _021B50A2
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B50A2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x50
	blo _021B5088
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy207_21b5080

	thumb_func_start ovy207_21b50b0
ovy207_21b50b0: ; 0x021B50B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r4, r0, #0
	add r0, r1, #0
	ldr r0, [r0]
	add r5, r2, #0
	str r1, [sp, #4]
	cmp r0, #0
	beq _021B50CA
	cmp r0, #1
	bne _021B50C8
	b _021B52E4
_021B50C8:
	b _021B52F4
_021B50CA:
	mov r2, #5
	mov r0, #1
	mov r1, #0x42
	lsl r2, r2, #0x10
	mov r6, #1
	mov r7, #0x42
	bl GFL_HeapCreateChild
	mov r1, #0x99
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x42
	bl GFL_ProcInitSubsystem
	mov r2, #0x99
	str r0, [sp, #8]
	mov r1, #0
	lsl r2, r2, #2
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #8]
	cmp r5, #0
	strh r7, [r0]
	beq _021B50FE
	b _021B52D8
_021B50FE:
	mov r0, #0x4d
	str r0, [sp]
	ldr r3, _021B52FC ; =0x021BB6AC
	add r0, r6, #0
	mov r1, #0x28
	add r2, r4, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	bl sub_0203DF20
	lsl r1, r6, #0xa
	tst r0, r1
	bne _021B51C8
	add r0, r6, #0
	bl sub_0201FD00
	mov r1, #6
	add r7, r0, #0
	bl sub_0201FD34
	ldr r0, _021B5300 ; =0x021BAFA8
	add r1, sp, #0x34
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh r2, [r0, #6]
	strh r2, [r1, #6]
	ldrh r1, [r0, #8]
	add r0, sp, #0x34
	strh r1, [r0, #8]
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	add r0, sp, #0x34
	ldrh r0, [r0, #2]
	str r0, [sp, #0x10]
	add r0, sp, #0x34
	ldrh r0, [r0, #4]
	str r0, [sp, #0x14]
	add r0, sp, #0x34
	ldrh r0, [r0, #6]
	str r0, [sp, #0x18]
	add r0, sp, #0x34
	ldrh r0, [r0, #8]
	str r0, [sp, #0x1c]
_021B515E:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #3
	lsl r0, r0, #0x10
	mov r2, #0xa
	lsr r0, r0, #0x10
	mov r1, #0xa
	sub r2, #0xb
	mov r3, #0
	bl sub_0201C2CC
	ldr r2, [sp, #0xc]
	add r1, sp, #0x34
	strh r2, [r1, #0x1e]
	ldr r2, [sp, #0x10]
	add r6, r0, #0
	strh r2, [r1, #0x20]
	ldr r2, [sp, #0x14]
	strh r2, [r1, #0x22]
	ldr r2, [sp, #0x18]
	strh r2, [r1, #0x24]
	ldr r2, [sp, #0x1c]
	strh r2, [r1, #0x26]
	add r2, sp, #0x50
	mov r1, #0x8e
	add r2, #2
	bl sub_0201CD1C
	add r0, r6, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_0201CD1C
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0201FD6C
	add r0, r6, #0
	bl GFL_HeapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021B515E
	mov r0, #0
	strb r0, [r5, #0xf]
	str r7, [r5]
	mov r0, #1
	strb r0, [r5, #0xc]
	mov r0, #5
	strb r0, [r5, #0xe]
	b _021B5296
_021B51C8:
	bl sub_0201C2C4
	add r2, r0, #0
	mov r0, #0x81
	add r1, r2, #0
	mov r7, #0x1e
	str r0, [sp]
	ldr r3, _021B52FC ; =0x021BB6AC
	add r0, r6, #0
	mul r1, r7
	add r2, r6, #0
	bl GFL_HeapAllocate
	str r0, [r5]
	mov r0, #2
	strb r0, [r5, #0xc]
	strb r7, [r5, #0xe]
	mov r0, #0xff
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bls _021B5296
	ldr r1, _021B5304 ; =0x021BAFB4
	add r0, sp, #0x34
	ldrh r2, [r1]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #4]
	strh r2, [r0, #0xe]
	ldrh r2, [r1, #6]
	strh r2, [r0, #0x10]
	ldrh r1, [r1, #8]
	strh r1, [r0, #0x12]
	ldrh r0, [r0, #0xa]
	str r0, [sp, #0x20]
	add r0, sp, #0x34
	ldrh r0, [r0, #0xc]
	str r0, [sp, #0x24]
	add r0, sp, #0x34
	ldrh r0, [r0, #0xe]
	str r0, [sp, #0x28]
	add r0, sp, #0x34
	ldrh r0, [r0, #0x10]
	str r0, [sp, #0x2c]
	add r0, sp, #0x34
	ldrh r0, [r0, #0x12]
	str r0, [sp, #0x30]
_021B5228:
	bl sub_0201C2C4
	add r7, r4, #0
	ldr r6, [r5]
	mul r7, r0
	add r0, r6, r7
	bl sub_0201C42C
	mov r0, #3
	bl sub_02005784
	cmp r0, #0
	beq _021B528A
	mov r3, #0
	mvn r3, r3
	add r1, r4, #1
	add r0, r3, #0
	lsl r1, r1, #0x10
	str r0, [sp]
	add r0, r6, r7
	lsr r1, r1, #0x10
	mov r2, #0x32
	bl sub_0201C4DC
	ldr r1, [sp, #0x20]
	add r0, sp, #0x34
	strh r1, [r0, #0x14]
	ldr r1, [sp, #0x24]
	add r2, sp, #0x48
	strh r1, [r0, #0x16]
	ldr r1, [sp, #0x28]
	strh r1, [r0, #0x18]
	ldr r1, [sp, #0x2c]
	strh r1, [r0, #0x1a]
	ldr r1, [sp, #0x30]
	strh r1, [r0, #0x1c]
	add r0, r6, r7
	mov r1, #0x8e
	bl sub_0201CD40
	add r0, r6, r7
	mov r1, #0x9a
	mov r2, #0
	bl sub_0201CD40
	ldrb r0, [r5, #0xf]
	cmp r0, #0xff
	bne _021B528A
	strb r4, [r5, #0xf]
_021B528A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldrb r0, [r5, #0xe]
	cmp r4, r0
	blo _021B5228
_021B5296:
	mov r4, #0
	strb r4, [r5, #0xd]
	strb r4, [r5, #0x10]
	mov r6, #1
	str r6, [r5, #0x20]
	str r6, [r5, #0x18]
	mov r0, #1
	bl sub_02016EE8
	str r0, [r5, #8]
	bl sub_0203DF20
	lsl r1, r6, #0xa
	tst r0, r1
	beq _021B52BE
	mov r0, #2
	strb r0, [r5, #0xd]
	str r4, [r5, #0x20]
	mov r0, #0xa
	strh r0, [r5, #0x14]
_021B52BE:
	bl sub_0203DF20
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	beq _021B52D2
	mov r0, #1
	strb r0, [r5, #0xd]
	mov r0, #0
	str r0, [r5, #0x20]
_021B52D2:
	mov r0, #1
	bl sub_0203D564
_021B52D8:
	ldr r0, [sp, #8]
	mov r1, #1
	str r5, [r0, #8]
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021B52F4
_021B52E4:
	add r0, r3, #0
	bl ovy207_21b2f80
	cmp r0, #1
	bne _021B52F4
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021B52F4:
	mov r0, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021B52FC: .word 0x021BB6AC
_021B5300: .word 0x021BAFA8
_021B5304: .word 0x021BAFB4
	thumb_func_end ovy207_21b50b0

	thumb_func_start ovy207_21b5308
ovy207_21b5308: ; 0x021B5308
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	bl ovy207_21b3158
	cmp r0, #0
	bne _021B531E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B531E:
	cmp r5, #0
	bne _021B5338
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	bl sub_02017144
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl GFL_HeapFree
	ldr r0, [r4, #8]
	bl GFL_HeapFree
_021B5338:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x42
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy207_21b5308

	thumb_func_start ovy207_21b5348
ovy207_21b5348: ; 0x021B5348
	push {r3, lr}
	add r0, r3, #0
	bl ovy207_21b3208
	cmp r0, #1
	bne _021B5358
	mov r0, #1
	pop {r3, pc}
_021B5358:
	cmp r0, #2
	bne _021B5360
	mov r0, #1
	pop {r3, pc}
_021B5360:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy207_21b5348

	thumb_func_start ovy207_21b5364
ovy207_21b5364: ; 0x021B5364
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x46
	lsl r1, r1, #2
	str r1, [sp]
	ldrh r0, [r0]
	ldr r3, _021B5390 ; =0x021BB6B8
	mov r1, #0x9c
	mov r2, #1
	mov r4, #1
	bl GFL_HeapAllocate
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x6c]
	str r4, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0x5c]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021B5390: .word 0x021BB6B8
	thumb_func_end ovy207_21b5364

	thumb_func_start sub_021B5394
sub_021B5394: ; 0x021B5394
	ldr r3, _021B539C ; =GFL_HeapFree
	add r0, r1, #0
	bx r3
	nop
_021B539C: .word GFL_HeapFree
	thumb_func_end sub_021B5394

	thumb_func_start ovy207_21b53a0
ovy207_21b53a0: ; 0x021B53A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B53B2
	cmp r0, #2
	bne _021B53CE
_021B53B2:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b61f4
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b6338
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b5ce8
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_021B53CE:
	cmp r0, #3
	bne _021B54AE
	ldr r3, _021B5560 ; =0x021BB0B0
	add r2, sp, #0x48
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B5564 ; =0x021BB0A4
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x3c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x30
	str r0, [r2]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #5
	bls _021B5422
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021B5422
	ldr r0, [r4]
	bl sub_0201AD8C
	ldr r0, [r4, #4]
	bl sub_0201AD7C
	mov r0, #1
	str r0, [r4, #0xc]
_021B5422:
	add r0, r4, #0
	add r0, #0x9b
	ldrb r1, [r0]
	cmp r1, #0xa
	blo _021B543C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r6, #0
	bl ovy207_21b67cc
	str r6, [r4, #8]
	b _021B5482
_021B543C:
	mov r0, #0x19
	lsl r0, r0, #0xc
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	mov r1, #0x42
	lsl r1, r1, #0xc
	sub r0, r0, r1
	str r0, [sp, #0x48]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r1, #0xa
	lsl r0, r0, #0xf
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021B5568 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	lsl r0, r0, #5
	str r0, [sp, #0x34]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021B5478
	mov r0, #0
	str r0, [sp, #0x34]
_021B5478:
	ldr r2, [sp, #0x34]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b67cc
_021B5482:
	add r6, sp, #0x30
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0201AB54
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_0201AB54
	ldr r0, [r4]
	add r1, sp, #0x3c
	bl sub_0201AC0C
	ldr r0, [r5, #0x70]
	add r1, sp, #0x48
	bl sub_0204A65C
	ldr r0, [r5, #0x70]
	bl sub_0204A638
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_021B54AE:
	cmp r0, #1
	bne _021B555C
	ldr r3, _021B556C ; =0x021BB098
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B5570 ; =0x021BB008
	str r0, [r2]
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x9b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #3
	bhs _021B5530
	ldr r2, _021B5574 ; =0x021BAFE0
	sub r0, r0, #1
	ldmia r2!, {r1, r2}
	str r2, [sp, #0x14]
	ldr r2, _021B5578 ; =0x021BAFE8
	str r1, [sp, #0x10]
	ldmia r2!, {r1, r2}
	str r2, [sp, #0xc]
	lsl r0, r0, #0x18
	ldr r2, _021B557C ; =0x021BAFD8
	str r1, [sp, #8]
	ldmia r2!, {r1, r2}
	add r3, sp, #0x10
	lsr r0, r0, #0x16
	str r1, [sp]
	ldr r1, [r3, r0]
	str r2, [sp, #4]
	str r1, [sp, #0x18]
	add r1, sp, #8
	ldr r1, [r1, r0]
	str r1, [sp, #0x1c]
	add r1, sp, #0
	ldr r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x70]
	bl sub_0204A65C
	ldr r0, [r5, #0x70]
	bl sub_0204A638
	ldr r0, [r4]
	add r1, r7, #0
	bl sub_0201AC0C
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_021B5530:
	ldr r0, [r4]
	bl sub_0201AD7C
	ldr r0, [r4, #4]
	bl sub_0201AD8C
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl sub_0201AC0C
	ldr r0, [r5, #0x70]
	add r1, r6, #0
	bl sub_0204A65C
	ldr r0, [r5, #0x70]
	bl sub_0204A638
	mov r1, #0
	mov r0, #2
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	str r1, [r4, #0x6c]
_021B555C:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B5560: .word 0x021BB0B0
_021B5564: .word 0x021BB0A4
_021B5568: .word FX_SinCosTable_
_021B556C: .word 0x021BB098
_021B5570: .word 0x021BB008
_021B5574: .word 0x021BAFE0
_021B5578: .word 0x021BAFE8
_021B557C: .word 0x021BAFD8
	thumb_func_end ovy207_21b53a0

	thumb_func_start ovy207_21b5580
ovy207_21b5580: ; 0x021B5580
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldrh r0, [r0]
	mov r1, #0x40
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, #2
	bl sub_0204AF50
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy207_21b5580

	thumb_func_start sub_021B559C
sub_021B559C: ; 0x021B559C
	ldr r3, _021B55A0 ; =ovy207_21b5a70
	bx r3
	.align 2, 0
_021B55A0: .word ovy207_21b5a70
	thumb_func_end sub_021B559C

	thumb_func_start ovy207_21b55a4
ovy207_21b55a4: ; 0x021B55A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xa8
	add r1, sp, #0x10
	strh r0, [r1, #0x18]
	mov r2, #8
	strh r2, [r1, #0x1a]
	mov r6, #0xa
	strb r6, [r1, #0x1e]
	mov r2, #1
	strb r2, [r1, #0x1f]
	mov r4, #0
	strh r4, [r1, #0x1c]
	add r1, sp, #0x28
	str r1, [sp]
	str r4, [sp, #4]
	ldrh r1, [r5]
	add r2, r5, #0
	mov r3, #0xa
	str r1, [sp, #8]
	add r1, r5, #0
	add r0, #0xcc
	add r1, #0xd0
	add r2, #0x9c
	add r3, #0xfa
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r7, #0x20]
	bl sub_0204C124
	mov r1, #0x7f
	add r0, sp, #0x10
	strh r1, [r0, #0x12]
	strb r6, [r0, #0x16]
	mov r1, #1
	strb r1, [r0, #0x17]
	mov r0, #0x5d
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	sub r0, #0x6c
	str r0, [sp, #0xc]
_021B5604:
	ldr r0, _021B56D8 ; =0x021BAFD0
	add r2, r5, #0
	ldrb r1, [r0, r4]
	add r0, sp, #0x10
	ldr r3, [sp, #0xc]
	strh r1, [r0, #0x10]
	ldr r0, _021B56DC ; =0x021BAFC8
	add r2, #0xa0
	ldrb r1, [r0, r4]
	add r0, sp, #0x10
	strh r1, [r0, #0x14]
	lsl r0, r4, #2
	add r6, r7, r0
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r5, #0
	add r1, #0xd4
	str r0, [sp, #8]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r6, #0x24]
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021B5604
	mov r3, #0xec
	add r4, sp, #0x10
	strh r3, [r4, #8]
	mov r0, #0x1a
	strh r0, [r4, #0xa]
	mov r6, #0xa
	strb r6, [r4, #0xe]
	mov r0, #1
	strb r0, [r4, #0xf]
	mov r0, #0
	strh r0, [r4, #0xc]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #0xec
	add r0, #0x88
	add r1, #0xf0
	add r2, #0xbc
	add r3, #0x34
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r7, #0x44]
	bl sub_0204C124
	mov r3, #0xf1
	strh r3, [r4]
	mov r0, #0x1f
	strh r0, [r4, #2]
	add r1, r5, #0
	add r2, r5, #0
	strb r6, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0
	strh r0, [r4, #4]
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xf4
	add r2, #0xc0
	str r0, [sp, #8]
	mov r0, #0xf1
	add r0, #0x83
	add r3, #0x33
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r7, #0x48]
	bl sub_0204C124
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B56D8: .word 0x021BAFD0
_021B56DC: .word 0x021BAFC8
	thumb_func_end ovy207_21b55a4

	thumb_func_start ovy207_21b56e0
ovy207_21b56e0: ; 0x021B56E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x48]
	bl Oam_RemoveOam
	ldr r0, [r5, #0x44]
	bl Oam_RemoveOam
	mov r4, #0
_021B56F2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	bl Oam_RemoveOam
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021B56F2
	ldr r0, [r5, #0x20]
	bl Oam_RemoveOam
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b56e0

	thumb_func_start ovy207_21b5710
ovy207_21b5710: ; 0x021B5710
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl ovy207_21b4d9c
	ldr r1, [r5, #8]
	add r6, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _021B5730
	ldr r0, [r1]
	ldrh r1, [r5, #0x18]
	bl sub_02020144
	b _021B5732
_021B5730:
	mov r0, #1
_021B5732:
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _021B5786
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CD88
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	ldrh r2, [r5]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl sub_02020274
	mov r1, #0x10
	add r7, r0, #0
	bl sub_020202AC
	cmp r0, #1
	bne _021B5770
	mov r0, #1
	b _021B5772
_021B5770:
	mov r0, #0
_021B5772:
	str r0, [r4, #0x10]
	add r0, r7, #0
	mov r1, #0x26
	bl sub_020202AC
	str r0, [r4, #0x14]
	add r0, r7, #0
	bl sub_020202A4
	b _021B578C
_021B5786:
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
_021B578C:
	mov r7, #4
	str r7, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0x13
	mov r2, #0
	mov r3, #0xd
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x18]
	str r7, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0x13
	mov r2, #0x11
	mov r3, #0xd
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy207_21b5aac
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b5710

	thumb_func_start ovy207_21b57cc
ovy207_21b57cc: ; 0x021B57CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r7, r0, #0
	add r5, r1, #0
	bl ovy207_21b4d9c
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ovy207_21b4ddc
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy207_21b6680
	ldr r4, [r5, #0x18]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x1c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [sp, #0xc]
	mov r1, #0x98
	mov r2, #0
	mov r4, #0
	bl sub_0201CD88
	str r0, [sp, #0x10]
	bl GetDefaultUINarcIdx
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_0202D91C
	add r1, r0, #0
	ldrh r3, [r7]
	add r0, r6, #0
	add r2, sp, #0x2c
	bl sub_0204B354
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r0, #0x9c
	ldr r0, [r0]
	ldr r1, [sp, #0x2c]
	mov r2, #1
	mov r6, #1
	bl sub_0204BD10
	ldr r0, [sp, #0x14]
	bl GFL_HeapFree
	bl GetDefaultUINarcIdx
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	bl sub_0202D928
	add r1, r0, #0
	ldrh r0, [r7]
	mov r2, #0
	add r3, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x18]
	bl sub_0204B264
	str r0, [sp, #0x1c]
	add r0, r7, #0
	add r0, #0xd0
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	bl sub_0204BA40
	ldr r0, [sp, #0x1c]
	bl GFL_HeapFree
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	mov r1, #0xb
	add r2, r4, #0
	bl sub_0201CD88
	str r0, [sp, #4]
_021B589E:
	ldr r0, [sp, #4]
	tst r0, r6
	beq _021B58B2
	lsl r0, r4, #2
	lsl r1, r4, #1
	add r0, r5, r0
	add r1, r1, #1
	ldr r0, [r0, #0x24]
	lsl r1, r1, #0x10
	b _021B58BA
_021B58B2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	lsl r1, r4, #0x11
_021B58BA:
	lsr r1, r1, #0x10
	bl Oam_SetOamAnimIndex
	lsl r0, r6, #0x19
	lsr r6, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021B589E
	ldr r0, [sp, #0xc]
	bl sub_02020764
	cmp r0, #1
	ldr r0, [r5, #0x40]
	bne _021B58DE
	mov r1, #1
	b _021B58E0
_021B58DE:
	mov r1, #0
_021B58E0:
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	bl sub_0201CDB4
	cmp r0, #1
	bne _021B58FA
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bne _021B58FA
	ldr r0, [r5, #0x3c]
	mov r1, #1
	b _021B58FE
_021B58FA:
	ldr r0, [r5, #0x3c]
	mov r1, #0
_021B58FE:
	bl sub_0204C124
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021B5968
	ldr r3, _021B5A58 ; =0x021BB05C
	add r2, sp, #0x90
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B5A5C ; =0x021BB074
	str r0, [r2]
	add r2, sp, #0x84
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B5A60 ; =0x021BB080
	str r0, [r2]
	add r2, sp, #0x6c
	mov r1, #0
	add r0, sp, #0x78
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x78
	str r0, [r2]
	ldr r0, [r5]
	bl sub_0201AB54
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy207_21b6840
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0201AC0C
	ldr r0, [r7, #0x70]
	ldr r1, [sp, #0x20]
	bl sub_0204A65C
	ldr r0, [r7, #0x70]
	bl sub_0204A638
	mov r0, #0
	b _021B59C6
_021B5968:
	ldr r3, _021B5A64 ; =0x021BB020
	add r2, sp, #0x60
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x24]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B5A68 ; =0x021BB014
	str r0, [r2]
	add r2, sp, #0x54
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B5A6C ; =0x021BAFFC
	str r0, [r2]
	add r2, sp, #0x3c
	mov r1, #0
	add r0, sp, #0x48
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x48
	str r0, [r2]
	ldr r0, [r5]
	bl sub_0201AB54
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy207_21b6840
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0201AC0C
	ldr r0, [r7, #0x70]
	ldr r1, [sp, #0x24]
	bl sub_0204A65C
	ldr r0, [r7, #0x70]
	bl sub_0204A638
	mov r0, #2
_021B59C6:
	str r0, [r5, #8]
	ldr r0, [sp, #8]
	bl sub_0201CF44
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _021B59F4
	ldr r0, [sp, #8]
	bl sub_0202D8C0
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x48]
	lsr r1, r1, #0x10
	bl Oam_SetOamAnimIndex
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x44]
	mov r1, #0
	b _021B5A10
_021B59F4:
	ldr r0, [r5, #0x48]
	mov r1, #0
	mov r4, #0
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	bl sub_02020740
	cmp r0, #1
	ldr r0, [r5, #0x44]
	bne _021B5A0E
	mov r1, #1
	b _021B5A10
_021B5A0E:
	add r1, r4, #0
_021B5A10:
	bl sub_0204C124
	add r6, sp, #0x30
	mov r4, #0
	str r4, [r6]
	str r4, [r6, #4]
	str r4, [r6, #8]
	ldr r0, [r5]
	add r1, r6, #0
	bl sub_0201AB54
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_0201AB54
	add r0, r5, #0
	add r0, #0x78
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x79
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x80
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x81
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x88
	str r4, [r5, #0x6c]
	str r4, [r5, #0x5c]
	add r5, #0x89
	strb r4, [r0]
	strb r4, [r5]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B5A58: .word 0x021BB05C
_021B5A5C: .word 0x021BB074
_021B5A60: .word 0x021BB080
_021B5A64: .word 0x021BB020
_021B5A68: .word 0x021BB014
_021B5A6C: .word 0x021BAFFC
	thumb_func_end ovy207_21b57cc

	thumb_func_start ovy207_21b5a70
ovy207_21b5a70: ; 0x021B5A70
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r1, [r2, #8]
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _021B5A88
	ldr r0, [r1]
	ldrb r1, [r2, #0x1a]
	ldr r2, [r4, #0xc]
	bl sub_0202015C
_021B5A88:
	ldr r0, [r4, #0x1c]
	bl BmpWin_Free
	ldr r0, [r4, #0x18]
	bl BmpWin_Free
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b5a70

	thumb_func_start ovy207_21b5a98
ovy207_21b5a98: ; 0x021B5A98
	push {r4, lr}
	add r4, r1, #0
	bl ovy207_21b67a0
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b5a98

	thumb_func_start ovy207_21b5aac
ovy207_21b5aac: ; 0x021B5AAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	str r2, [sp, #0xc]
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r1, #0x73
	bl sub_0201CD88
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [r5, #0x7c]
	mov r1, #0
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x18]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #0x19
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _021B5BC0
	ldr r0, [sp, #0xc]
	mov r1, #0xad
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #1
	bne _021B5BC0
	ldr r0, [sp, #0xc]
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	bne _021B5B86
	ldr r0, [r5, #0x7c]
	mov r1, #1
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x18]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #6
	b _021B5BAA
_021B5B86:
	cmp r0, #1
	bne _021B5BC0
	ldr r0, [r5, #0x7c]
	mov r1, #2
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x18]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r0, #0x19
	lsl r0, r0, #7
_021B5BAA:
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r2, #0x59
	mov r3, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
_021B5BC0:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _021B5C3E
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	ldrh r1, [r5]
	mov r0, #0x10
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_0201D468
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [r5, #0x7c]
	mov r1, #3
	bl sub_0204898C
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x18]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #9
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r3, #0x11
	bl sub_02021C7C
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_WordSetSystemFree
_021B5C3E:
	ldr r0, [r5, #0x7c]
	mov r1, #4
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #0xa
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r3, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	ldrh r1, [r5]
	mov r0, #0x10
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #6
	mov r2, #0
	bl sub_0201CD88
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl LoadItemNameToStrbuf
	ldr r0, [r5, #0x7c]
	mov r1, #5
	bl sub_0204898C
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x1c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r5, #0x84
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r2, #6
	mov r3, #0x11
	bl sub_02021C7C
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b5aac

	thumb_func_start ovy207_21b5ce8
ovy207_21b5ce8: ; 0x021B5CE8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x5c]
	add r5, r0, #0
	cmp r2, #6
	bhi _021B5DCE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B5D00: ; jump table
	.short _021B5D0E - _021B5D00 - 2 ; case 0
	.short _021B5D4E - _021B5D00 - 2 ; case 1
	.short _021B5D76 - _021B5D00 - 2 ; case 2
	.short _021B5D9E - _021B5D00 - 2 ; case 3
	.short _021B5D68 - _021B5D00 - 2 ; case 4
	.short _021B5D90 - _021B5D00 - 2 ; case 5
	.short _021B5DBA - _021B5D00 - 2 ; case 6
_021B5D0E:
	add r2, r4, #0
	add r2, #0x78
	ldrb r2, [r2]
	cmp r2, #0xa
	bls _021B5D20
	mov r2, #1
	str r2, [r4, #0x5c]
	bl sub_021B5DD0
_021B5D20:
	add r0, r4, #0
	add r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _021B5D36
	mov r0, #2
	str r0, [r4, #0x5c]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021B5DD0
_021B5D36:
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _021B5DCE
	mov r0, #3
	str r0, [r4, #0x5c]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021B5DD0
	pop {r3, r4, r5, pc}
_021B5D4E:
	bl ovy207_21b5e20
	add r2, r4, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x78
	bl sub_021B5DF4
	cmp r0, #0
	bne _021B5DCE
	mov r0, #4
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021B5D68:
	bl ovy207_21b5e20
	cmp r0, #1
	bne _021B5DCE
	mov r0, #0
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021B5D76:
	bl ovy207_21b5fdc
	add r2, r4, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x80
	bl sub_021B5DF4
	cmp r0, #0
	bne _021B5DCE
	mov r0, #5
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021B5D90:
	bl ovy207_21b5fdc
	cmp r0, #1
	bne _021B5DCE
	mov r0, #0
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021B5D9E:
	mov r2, #1
	bl ovy207_21b607c
	add r2, r4, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x88
	bl sub_021B5DF4
	cmp r0, #0
	bne _021B5DCE
	mov r0, #6
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021B5DBA:
	mov r2, #0
	mov r5, #0
	bl ovy207_21b607c
	cmp r0, #1
	bne _021B5DCE
	ldr r0, [r4]
	bl sub_0201AD28
	str r5, [r4, #0x5c]
_021B5DCE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy207_21b5ce8

	thumb_func_start sub_021B5DD0
sub_021B5DD0: ; 0x021B5DD0
	mov r0, #1
	str r0, [r1, #0x58]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x64
	strh r2, [r0]
	add r0, r1, #0
	add r0, #0x68
	strh r2, [r0]
	add r0, r1, #0
	add r0, #0x62
	strh r2, [r0]
	add r0, r1, #0
	add r0, #0x66
	add r1, #0x60
	strh r2, [r0]
	strh r2, [r1]
	bx lr
	thumb_func_end sub_021B5DD0

	thumb_func_start sub_021B5DF4
sub_021B5DF4: ; 0x021B5DF4
	ldrb r0, [r2]
	cmp r0, #0xa
	bhs _021B5E14
	add r0, r1, #0
	add r0, #0x60
	ldrh r0, [r0]
	add r2, r0, #1
	add r0, r1, #0
	add r0, #0x60
	add r1, #0x60
	strh r2, [r0]
	ldrh r0, [r1]
	cmp r0, #0x18
	bls _021B5E1A
	mov r0, #0
	bx lr
_021B5E14:
	mov r0, #0
	add r1, #0x60
	strh r0, [r1]
_021B5E1A:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021B5DF4

	thumb_func_start ovy207_21b5e20
ovy207_21b5e20: ; 0x021B5E20
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r3, _021B5FD4 ; =0x021BB02C
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021B5E8E
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	mov r1, #0xf
	lsl r0, r0, #0xf
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021B5FD8 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r6, [r0, r1]
	ldr r0, [r5, #0x3c]
	lsr r0, r0, #6
	beq _021B5E76
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B5E84
_021B5E76:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B5E84:
	blx sub_0208DA4C
	lsl r1, r6, #4
	add r2, r1, r0
	b _021B5E8E
_021B5E8E:
	add r0, r5, #0
	add r1, r4, #0
	str r2, [sp, #4]
	bl ovy207_21b67cc
	ldr r0, [r5, #0x3c]
	lsr r0, r0, #6
	add r0, #0x10
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r0, #0x62
	ldrh r1, [r0]
	add r0, r1, #0
	mul r0, r5
	mov r1, #0xf
	blx sub_0208D65C
	add r1, r4, #0
	add r1, #0x64
	ldrh r1, [r1]
	cmp r1, #3
	bhi _021B5F7C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B5EC8: ; jump table
	.short _021B5ED0 - _021B5EC8 - 2 ; case 0
	.short _021B5EFE - _021B5EC8 - 2 ; case 1
	.short _021B5F26 - _021B5EC8 - 2 ; case 2
	.short _021B5F4C - _021B5EC8 - 2 ; case 3
_021B5ED0:
	cmp r0, #0
	ble _021B5EE6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B5EF4
_021B5EE6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B5EF4:
	blx sub_0208DA4C
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	b _021B5F7A
_021B5EFE:
	sub r0, r5, r0
	cmp r0, #0
	ble _021B5F16
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B5F24
_021B5F16:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B5F24:
	b _021B5EF4
_021B5F26:
	cmp r0, #0
	ble _021B5F3C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B5F4A
_021B5F3C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B5F4A:
	b _021B5F72
_021B5F4C:
	sub r0, r5, r0
	cmp r0, #0
	ble _021B5F64
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B5F72
_021B5F64:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B5F72:
	blx sub_0208DA4C
	ldr r1, [sp, #0xc]
	sub r0, r1, r0
_021B5F7A:
	str r0, [sp, #0xc]
_021B5F7C:
	ldr r0, [r4]
	add r1, sp, #0xc
	bl sub_0201AB24
	ldr r0, [r4]
	add r1, sp, #0
	bl sub_0201AB54
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x62
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	cmp r0, #0xf
	bls _021B5FCE
	add r1, r4, #0
	mov r0, #0
	add r1, #0x62
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x64
	ldrh r1, [r1]
	add r2, r1, #1
	add r1, r4, #0
	add r1, #0x64
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x64
	ldrh r1, [r1]
	cmp r1, #3
	bls _021B5FCE
	add r4, #0x64
	strh r0, [r4]
	add sp, #0x18
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B5FCE:
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B5FD4: .word 0x021BB02C
_021B5FD8: .word FX_SinCosTable_
	thumb_func_end ovy207_21b5e20

	thumb_func_start ovy207_21b5fdc
ovy207_21b5fdc: ; 0x021B5FDC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021B6046
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	mov r1, #0x14
	lsl r0, r0, #0xf
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021B6078 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r6, [r0, r1]
	ldr r0, [r5, #0x3c]
	lsr r0, r0, #6
	beq _021B6026
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B6034
_021B6026:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B6034:
	blx sub_0208DA4C
	lsl r1, r6, #5
	add r2, r1, r0
	add r0, r5, #0
	add r1, r4, #0
	str r2, [sp, #4]
	bl ovy207_21b67cc
_021B6046:
	ldr r0, [r4]
	add r1, sp, #0
	bl sub_0201AB54
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x62
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	cmp r0, #0x14
	bls _021B6072
	mov r0, #0
	add r4, #0x62
	strh r0, [r4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B6072:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B6078: .word FX_SinCosTable_
	thumb_func_end ovy207_21b5fdc

	thumb_func_start ovy207_21b607c
ovy207_21b607c: ; 0x021B607C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r1, [r5, #0x10]
	add r4, r2, #0
	cmp r1, #1
	bne _021B609C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B609C:
	cmp r4, #1
	bne _021B6122
	add r2, r0, #0
_021B60A2:
	add r1, r5, r2
	add r1, #0x94
	ldrb r1, [r1]
	add r0, r0, r1
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #5
	blo _021B60A2
	mov r1, #5
	blx sub_0208D868
	cmp r0, #0xa
	bhs _021B60C0
	mov r0, #0xa
_021B60C0:
	cmp r0, #0x14
	bls _021B60C6
	mov r0, #0x14
_021B60C6:
	mov r1, #0x14
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #6
	lsl r0, r0, #0xa
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	mov r1, #2
	lsl r1, r1, #0xa
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0x68
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0x62
	ldrh r2, [r1]
	ldr r1, _021B61EC ; =0x00000222
	ldr r0, [sp, #4]
	mul r1, r2
	asr r1, r1, #4
	lsl r2, r1, #2
	ldr r1, _021B61F0 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r1, r2]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x62
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x62
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x62
	ldrh r0, [r0]
	cmp r0, #0x78
	bls _021B6128
	add r0, r5, #0
	mov r1, #0
	add r0, #0x62
	strh r1, [r0]
	b _021B6128
_021B6122:
	add r1, r5, #0
	add r1, #0x68
	strh r0, [r1]
_021B6128:
	add r0, r5, #0
	add r0, #0x66
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x68
	ldrh r0, [r0]
	cmp r1, r0
	bhs _021B6146
	add r0, r5, #0
	add r0, #0x66
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x66
	strh r1, [r0]
_021B6146:
	add r0, r5, #0
	add r0, #0x66
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x68
	ldrh r0, [r0]
	cmp r1, r0
	bls _021B617A
	cmp r4, #0
	bne _021B616C
	cmp r1, #0x20
	blo _021B6168
	add r0, r5, #0
	add r0, #0x66
	ldrh r1, [r0]
	sub r1, #0x20
	b _021B6174
_021B6168:
	mov r1, #0
	b _021B6174
_021B616C:
	add r0, r5, #0
	add r0, #0x66
	ldrh r0, [r0]
	sub r1, r0, #1
_021B6174:
	add r0, r5, #0
	add r0, #0x66
	strh r1, [r0]
_021B617A:
	add r0, r5, #0
	add r0, #0x66
	ldrh r0, [r0]
	cmp r0, #0
	beq _021B6196
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021B61A4
_021B6196:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021B61A4:
	blx sub_0208DA4C
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r0, r1, #4
	ldr r2, [sp, #4]
	add r1, r5, #0
	add r2, r2, r0
	str r2, [sp, #4]
	add r0, r6, #0
	bl ovy207_21b67cc
	ldr r0, [r5]
	add r1, sp, #0
	bl sub_0201AB54
	ldr r0, [r5]
	bl sub_0201ACE0
	add r0, r5, #0
	add r0, #0x66
	ldrh r0, [r0]
	cmp r0, #0
	bne _021B61E4
	add r5, #0x68
	ldrh r0, [r5]
	cmp r0, #0
	bne _021B61E4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B61E4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021B61EC: .word 0x00000222
_021B61F0: .word FX_SinCosTable_
	thumb_func_end ovy207_21b607c

	thumb_func_start ovy207_21b61f4
ovy207_21b61f4: ; 0x021B61F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021B6334 ; =0x021BB044
	add r5, r1, #0
	add r6, r0, #0
	add r2, sp, #8
	mov r1, #0xc
_021B6202:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B6202
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	ldr r0, [r6, #0x38]
	cmp r0, #0
	beq _021B621E
	b _021B632E
_021B621E:
	bl sub_0203DA48
	add r4, r0, #0
	bl sub_0203DA2C
	add r7, r0, #0
	add r0, sp, #8
	bl sub_0203D9C8
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _021B6300
	cmp r0, #0
	beq _021B6242
	cmp r0, #1
	bne _021B62B6
	cmp r4, #0
	bne _021B62B6
_021B6242:
	cmp r4, #1
	bne _021B6298
	mov r0, #1
	mov r4, #0
	str r0, [r5, #0x6c]
	str r4, [r5, #0x58]
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x78
	bl sub_021B660C
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x80
	bl sub_021B660C
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x88
	bl sub_021B660C
	add r0, r4, #0
_021B6274:
	add r1, r5, r4
	add r1, #0x94
	strb r0, [r1]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #5
	blo _021B6274
	add r1, r5, #0
	add r1, #0x99
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x9a
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	b _021B62AA
_021B6298:
	cmp r7, #1
	bne _021B62AA
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021B62AA
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b63c8
_021B62AA:
	ldr r0, [sp, #4]
	str r0, [r5, #0x70]
	ldr r0, [sp]
	add sp, #0x14
	str r0, [r5, #0x74]
	pop {r4, r5, r6, r7, pc}
_021B62B6:
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021B62D4
	ldr r0, [r5, #0x58]
	cmp r0, #0
	bne _021B62D4
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	bne _021B62D4
	mov r0, #1
	str r0, [r5, #8]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x9b
	strb r1, [r0]
_021B62D4:
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x78
	bl sub_021B660C
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x80
	bl sub_021B660C
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x88
	bl sub_021B660C
	mov r0, #0
	add sp, #0x14
	str r0, [r5, #0x6c]
	pop {r4, r5, r6, r7, pc}
_021B6300:
	cmp r1, #2
	bne _021B632E
	cmp r0, #0
	beq _021B6310
	cmp r0, #1
	bne _021B631C
	cmp r4, #0
	bne _021B631C
_021B6310:
	cmp r4, #1
	bne _021B632E
	mov r0, #1
	add sp, #0x14
	str r0, [r5, #0x6c]
	pop {r4, r5, r6, r7, pc}
_021B631C:
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021B632E
	mov r1, #0
	mov r0, #3
	str r1, [r5, #0x6c]
	str r0, [r5, #8]
	add r5, #0x9b
	strb r1, [r5]
_021B632E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B6334: .word 0x021BB044
	thumb_func_end ovy207_21b61f4

	thumb_func_start ovy207_21b6338
ovy207_21b6338: ; 0x021B6338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r3, _021B63C4 ; =0x021BB0BC
	add r6, r1, #0
	add r4, r0, #0
	add r2, sp, #4
	mov r1, #0x1c
_021B6346:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B6346
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0xd]
	cmp r0, #6
	beq _021B63C0
	add r0, sp, #4
	bl sub_0203DA0C
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021B63C0
	add r0, r4, #0
	mov r5, #1
	bl ovy207_21b4d9c
	mov r1, #0xb
	mov r2, #0
	str r0, [sp]
	mov r4, #0
	bl sub_0201CD88
	mov r1, #1
	lsl r1, r7
	add r7, r0, #0
	eor r7, r1
	ldr r0, [sp]
	mov r1, #0xb
	add r2, r7, #0
	bl sub_0201CD40
_021B6390:
	add r0, r7, #0
	tst r0, r5
	beq _021B63A4
	lsl r0, r4, #2
	lsl r1, r4, #1
	add r0, r6, r0
	add r1, r1, #1
	ldr r0, [r0, #0x24]
	lsl r1, r1, #0x10
	b _021B63AC
_021B63A4:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, #0x24]
	lsl r1, r4, #0x11
_021B63AC:
	lsr r1, r1, #0x10
	bl Oam_SetOamAnimIndex
	lsl r0, r5, #0x19
	lsr r5, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021B6390
_021B63C0:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B63C4: .word 0x021BB0BC
	thumb_func_end ovy207_21b6338

	thumb_func_start ovy207_21b63c8
ovy207_21b63c8: ; 0x021B63C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	add r0, r5, #0
	add r0, #0x7a
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x7b
	ldrb r0, [r0]
	sub r0, r2, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021B63FE
	cmp r0, #3
	bne _021B640C
_021B63FE:
	cmp r6, #0x10
	ble _021B640C
	add r0, r5, #0
	add r0, #0x78
	mov r3, #1
	bl ovy207_21b661c
_021B640C:
	ldr r0, [r5, #0x7c]
	cmp r0, #1
	bhi _021B6428
	mov r0, #0xf
	mvn r0, r0
	cmp r6, r0
	bge _021B6428
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x78
	mov r3, #3
	bl ovy207_21b661c
_021B6428:
	cmp r4, #0x10
	bgt _021B643E
	mov r0, #0xf
	mvn r0, r0
	cmp r4, r0
	blt _021B643E
	add r0, r5, #0
	add r0, #0x79
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _021B644A
_021B643E:
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x78
	bl sub_021B660C
_021B644A:
	add r0, r5, #0
	add r0, #0x79
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x79
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x82
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x83
	ldrb r0, [r0]
	sub r0, r2, r0
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6482
	cmp r0, #4
	bne _021B6490
_021B6482:
	cmp r4, #0x10
	ble _021B6490
	add r0, r5, #0
	add r0, #0x80
	mov r3, #2
	bl ovy207_21b661c
_021B6490:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021B649E
	cmp r0, #2
	bne _021B64B4
_021B649E:
	mov r0, #0xf
	mvn r0, r0
	cmp r4, r0
	bge _021B64B4
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x80
	mov r3, #4
	bl ovy207_21b661c
_021B64B4:
	cmp r6, #0x10
	bgt _021B64CA
	mov r0, #0xf
	mvn r0, r0
	cmp r6, r0
	blt _021B64CA
	add r0, r5, #0
	add r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _021B64D6
_021B64CA:
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x80
	bl sub_021B660C
_021B64D6:
	add r0, r5, #0
	add r0, #0x81
	ldrb r0, [r0]
	mov r3, #0
	mov r4, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x81
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x8a
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	ldr r2, [sp]
	sub r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	sub r0, r2, r0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	cmp r1, #0x10
	ble _021B650C
	mov r3, #1
	b _021B652A
_021B650C:
	add r2, r3, #0
	sub r2, #0x10
	cmp r1, r2
	bge _021B6518
	mov r3, #3
	b _021B652A
_021B6518:
	cmp r0, #0x10
	ble _021B6520
	mov r3, #2
	b _021B652A
_021B6520:
	add r1, r3, #0
	sub r1, #0x10
	cmp r0, r1
	bge _021B652A
	mov r3, #4
_021B652A:
	cmp r3, #0
	beq _021B65D2
	add r0, r5, #0
	add r0, #0x8c
	ldr r1, [r0]
	cmp r3, r1
	beq _021B65D2
	add r0, r1, #1
	cmp r0, r3
	beq _021B6546
	cmp r1, #4
	bne _021B6588
	cmp r3, #1
	bne _021B6588
_021B6546:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #1
	bhi _021B6572
	add r0, r5, #0
	mov r6, #1
	add r0, #0x90
	str r6, [r0]
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x88
	bl ovy207_21b661c
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #4
	bne _021B65D2
	add r4, r6, #0
	b _021B65D2
_021B6572:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x88
	bl sub_021B660C
	b _021B65D2
_021B6588:
	sub r0, r1, #1
	cmp r0, r3
	beq _021B6596
	cmp r1, #1
	bne _021B65C8
	cmp r3, #4
	bne _021B65C8
_021B6596:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #2
	beq _021B65A4
	cmp r0, #0
	bne _021B65C6
_021B65A4:
	add r0, r5, #0
	mov r1, #2
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x88
	bl ovy207_21b661c
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #4
	bne _021B65D2
	mov r4, #1
	b _021B65D2
_021B65C6:
	b _021B6572
_021B65C8:
	cmp r1, #0
	bne _021B65D2
	add r0, r5, #0
	add r0, #0x8c
	str r3, [r0]
_021B65D2:
	add r0, r5, #0
	add r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0x14
	bls _021B65F0
	add r0, r5, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, #0x88
	bl sub_021B660C
_021B65F0:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_021B6634
	add r0, r5, #0
	add r0, #0x89
	ldrb r0, [r0]
	add r5, #0x89
	add r0, r0, #1
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b63c8

	thumb_func_start sub_021B660C
sub_021B660C: ; 0x021B660C
	mov r3, #0
	strb r3, [r0]
	str r3, [r0, #4]
	strb r3, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B660C

	thumb_func_start ovy207_21b661c
ovy207_21b661c: ; 0x021B661C
	push {r3, r4}
	ldrb r4, [r0]
	str r3, [r0, #4]
	mov r3, #0
	add r4, r4, #1
	strb r4, [r0]
	strb r3, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy207_21b661c

	thumb_func_start sub_021B6634
sub_021B6634: ; 0x021B6634
	cmp r2, #1
	bne _021B6670
	add r0, r1, #0
	add r0, #0x99
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x9a
	ldrb r0, [r0]
	add r0, r1, r0
	add r0, #0x94
	strb r2, [r0]
	add r2, r1, #0
	mov r0, #0
	add r2, #0x99
	strb r0, [r2]
	add r2, r1, #0
	add r2, #0x9a
	ldrb r2, [r2]
	add r3, r2, #1
	add r2, r1, #0
	add r2, #0x9a
	strb r3, [r2]
	add r2, r1, #0
	add r2, #0x9a
	ldrb r2, [r2]
	cmp r2, #5
	blo _021B6670
	add r2, r1, #0
	add r2, #0x9a
	strb r0, [r2]
_021B6670:
	add r0, r1, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r1, #0x99
	add r0, r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B6634

	thumb_func_start ovy207_21b6680
ovy207_21b6680: ; 0x021B6680
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r3, _021B678C ; =0x021BB068
	add r2, sp, #0x38
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B6790 ; =0x021BB08C
	str r0, [r2]
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	str r2, [sp, #8]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B6794 ; =0x021BAFF0
	str r0, [r2]
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021B6798 ; =0x021BB038
	str r0, [r2]
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	bl ovy207_21b4ddc
	add r7, r0, #0
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy207_21b6868
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r3, #0x36
	ldr r0, [r5, #0x78]
	add r1, r7, #0
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_0201C14C
	str r0, [r4]
	mov r1, #2
	bl sub_0201AEB0
	ldr r0, [r4]
	ldr r1, _021B679C ; =0x0000D555
	bl sub_0201AC5C
	ldr r0, [r4]
	ldr r1, [sp, #8]
	bl sub_0201AC0C
	ldr r0, [r4]
	bl sub_0201C290
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0201ABB8
	mov r0, #0x12
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r3, #0x36
	ldr r0, [r5, #0x78]
	add r1, r7, #0
	mov r2, #1
	lsl r3, r3, #0xe
	bl sub_0201C14C
	str r0, [r4, #4]
	mov r1, #2
	bl sub_0201AEB0
	ldr r0, [r4, #4]
	ldr r1, _021B679C ; =0x0000D555
	bl sub_0201AC5C
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	bl sub_0201AC0C
	ldr r0, [r4, #4]
	bl sub_0201C290
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_0201ABB8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy207_21b67cc
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b6840
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021B677A
	ldr r0, [r4]
	bl sub_0201AD8C
	ldr r0, [r4, #4]
	bl sub_0201AD7C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021B677A:
	ldr r0, [r4, #4]
	bl sub_0201AD8C
	ldr r0, [r4]
	bl sub_0201AD7C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021B678C: .word 0x021BB068
_021B6790: .word 0x021BB08C
_021B6794: .word 0x021BAFF0
_021B6798: .word 0x021BB038
_021B679C: .word 0x0000D555
	thumb_func_end ovy207_21b6680

	thumb_func_start ovy207_21b67a0
ovy207_21b67a0: ; 0x021B67A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_0201AD7C
	ldr r0, [r4, #4]
	bl sub_0201AD7C
	ldr r0, [r5, #0x78]
	ldr r1, [r4]
	bl sub_0201AA80
	ldr r0, [r5, #0x78]
	ldr r1, [r4, #4]
	bl sub_0201AA80
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b67a0

	thumb_func_start ovy207_21b67cc
ovy207_21b67cc: ; 0x021B67CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _021B6838 ; =0x021BB050
	add r3, sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldmia r6!, {r0, r1}
	str r3, [sp, #4]
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r4, r2, #0
	str r0, [r3]
	asr r6, r4, #0x1f
	ldr r0, _021B683C ; =0x02097BFC
	mov r1, #0x14
	ldrsh r0, [r0, r1]
	add r3, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r7, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x4c]
	ldr r0, _021B683C ; =0x02097BFC
	mov r1, #0x16
	ldrsh r0, [r0, r1]
	add r2, r4, #0
	add r3, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x50]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	str r7, [r5, #0x54]
	bl ovy207_21b6840
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B6838: .word 0x021BB050
_021B683C: .word 0x02097BFC
	thumb_func_end ovy207_21b67cc

	thumb_func_start ovy207_21b6840
ovy207_21b6840: ; 0x021B6840
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, sp, #0
	add r5, r1, #0
	add r0, r2, #0
	add r1, #0x4c
	add r2, r4, #0
	bl VEC_Add
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0201AC70
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0201AC70
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6840

	thumb_func_start ovy207_21b6868
ovy207_21b6868: ; 0x021B6868
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl ovy207_21b4d9c
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #5
	bne _021B6888
	ldr r0, _021B6900 ; =0x0000299A
	str r0, [r4, #4]
	ldr r0, _021B6904 ; =0x0000F4CD
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B6888:
	cmp r0, #0x25
	bne _021B6892
	ldr r0, _021B6908 ; =0x0000FB33
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B6892:
	cmp r0, #0x56
	bne _021B689E
	ldr r0, _021B690C ; =0x00010666
	str r0, [r5]
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B689E:
	cmp r0, #0x9b
	bne _021B68AC
	ldr r0, _021B6910 ; =0x0000FE66
	str r0, [r5]
	ldr r0, _021B6908 ; =0x0000FB33
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B68AC:
	cmp r0, #0xb3
	bne _021B68B8
	ldr r0, _021B6914 ; =0x00010333
	str r0, [r5]
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B68B8:
	cmp r0, #0xe1
	bne _021B68C4
	ldr r0, _021B6918 ; =0x0000FCCD
	str r0, [r5]
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B68C4:
	cmp r0, #0xf8
	bne _021B68D0
	ldr r0, _021B6918 ; =0x0000FCCD
	str r0, [r5]
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B68D0:
	ldr r2, _021B691C ; =0x00000136
	cmp r0, r2
	bne _021B68E0
	mov r0, #0x3e
	lsl r0, r0, #0xa
	str r0, [r5]
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B68E0:
	add r1, r2, #1
	cmp r0, r1
	bne _021B68EE
	ldr r0, _021B6908 ; =0x0000FB33
	str r0, [r5]
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B68EE:
	add r2, #0x51
	cmp r0, r2
	bne _021B68FC
	ldr r0, _021B6908 ; =0x0000FB33
	str r0, [r5]
	ldr r0, _021B6920 ; =0x0000F99A
	str r0, [r5, #4]
_021B68FC:
	pop {r3, r4, r5, pc}
	nop
_021B6900: .word 0x0000299A
_021B6904: .word 0x0000F4CD
_021B6908: .word 0x0000FB33
_021B690C: .word 0x00010666
_021B6910: .word 0x0000FE66
_021B6914: .word 0x00010333
_021B6918: .word 0x0000FCCD
_021B691C: .word 0x00000136
_021B6920: .word 0x0000F99A
	thumb_func_end ovy207_21b6868

	thumb_func_start ovy207_21b6924
ovy207_21b6924: ; 0x021B6924
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0xc5
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, _021B6954 ; =0x021BB6C4
	mov r1, #0x6c
	mov r2, #0
	mov r6, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r6, [r4]
	str r6, [r4, #4]
	ldrh r0, [r5]
	mov r1, #0
	bl sub_02020428
	str r0, [r4, #8]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B6954: .word 0x021BB6C4
	thumb_func_end ovy207_21b6924

	thumb_func_start ovy207_21b6958
ovy207_21b6958: ; 0x021B6958
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6958

	thumb_func_start sub_021B696C
sub_021B696C: ; 0x021B696C
	bx lr
	.align 2, 0
	thumb_func_end sub_021B696C

	thumb_func_start ovy207_21b6970
ovy207_21b6970: ; 0x021B6970
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	add r3, r4, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x41
	mov r2, #0
	add r3, #0x4c
	bl sub_0204B32C
	str r0, [r4, #0x50]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x4a
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x54
	bl sub_0204B32C
	str r0, [r4, #0x58]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x42
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x5c
	bl sub_0204B32C
	str r0, [r4, #0x60]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x43
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x64
	bl sub_0204B32C
	str r0, [r4, #0x68]
	mov r2, #0x5f
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	lsl r2, r2, #2
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x38]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x6d
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x3c]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x70
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x40]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x6e
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x44]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x6f
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x48]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6970

	thumb_func_start ovy207_21b6a18
ovy207_21b6a18: ; 0x021B6A18
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #4]
	cmp r2, #1
	bne _021B6A26
	bl ovy207_21b6cac
_021B6A26:
	ldr r0, [r4, #0x38]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x3c]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x40]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x44]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x48]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x50]
	bl GFL_HeapFree
	ldr r0, [r4, #0x58]
	bl GFL_HeapFree
	ldr r0, [r4, #0x60]
	bl GFL_HeapFree
	ldr r0, [r4, #0x68]
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6a18

	thumb_func_start ovy207_21b6a60
ovy207_21b6a60: ; 0x021B6A60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	add r6, r1, #0
	bl ovy207_21b4d9c
	ldr r7, _021B6AD0 ; =0x021BB114
	str r0, [sp, #0x10]
	mov r4, #0
_021B6A72:
	lsl r5, r4, #2
	add r3, r7, r5
	ldrb r0, [r3, #3]
	ldrb r2, [r3, #1]
	ldrb r1, [r7, r5]
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	ldrb r3, [r3, #2]
	str r0, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r6, r5
	str r0, [r1, #0xc]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B6A72
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #4
	mov r2, #5
	mov r3, #0x18
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x34]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ovy207_21b6d2c
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl ovy207_21b70b0
	mov r0, #1
	str r0, [r6, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B6AD0: .word 0x021BB114
	thumb_func_end ovy207_21b6a60

	thumb_func_start ovy207_21b6ad4
ovy207_21b6ad4: ; 0x021B6AD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r6, r0, #0
	add r7, r1, #0
	bl ovy207_21b4d9c
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x38]
	cmp r0, #0
	bne _021B6AF0
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r7, #0x4c]
	b _021B6AF6
_021B6AF0:
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r7, #0x54]
_021B6AF6:
	add r0, #0xc
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0x20
	str r3, [sp, #0x10]
	mov r0, #2
	mov r2, #0
	str r3, [sp, #0x14]
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	ldr r2, [r7, #0x5c]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02045B7C
	mov r0, #3
	str r0, [sp]
	ldr r0, [r7, #0x64]
	mov r4, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_020454D4
	mov r0, #5
	bl sub_02045B7C
_021B6B50:
	lsl r0, r4, #2
	add r0, r7, r0
	ldr r5, [r0, #0xc]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl BmpWin_FlushMap
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B6B50
	ldr r4, [r7, #0x34]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	ldr r0, [r6, #0x38]
	cmp r0, #0
	bne _021B6C84
	ldr r0, [sp, #0x18]
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CD88
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xaf
	mov r2, #0
	mov r4, #0xaf
	bl sub_0201CD88
	add r7, r0, #0
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0xaf
	add r0, #0x81
	ldr r0, [r1, r0]
	add r1, sp, #0x48
	bl sub_0204BB58
	mov r0, #0xaf
	add r0, #0xe9
	ldr r0, [r6, r0]
	add r1, sp, #0x48
	bl sub_0204C3E4
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r1, r0, #0
	mov r0, #0xaf
	add r0, #0xe9
	ldr r0, [r6, r0]
	mov r2, #1
	bl sub_0204C378
	mov r0, #0x60
	str r0, [sp, #0x1c]
	mov r1, #0x60
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x30
	strh r1, [r0, #2]
	mov r0, #0xaf
	add r0, #0xe9
	ldr r0, [r6, r0]
	add r1, sp, #0x20
	mov r2, #0
	bl Oam_SetSpritePosData
	mov r0, #0xaf
	add r0, #0xe9
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0xaf
	add r0, #0xe9
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C468
	cmp r5, r7
	beq _021B6C7E
	lsl r0, r7, #2
	add r1, r6, r0
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x24
	add r0, #0xd0
	str r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_0204BB58
	add r0, r4, #0
	add r0, #0xed
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl sub_0204C3E4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xed
	ldr r0, [r6, r0]
	mov r2, #1
	bl sub_0204C378
	mov r1, #0x82
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x30
	strh r1, [r0, #2]
	add r0, r4, #0
	add r0, #0xed
	ldr r0, [r6, r0]
	add r1, sp, #0x20
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0xed
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C124
	add r4, #0xed
	ldr r0, [r6, r4]
	mov r1, #1
	bl sub_0204C468
	b _021B6C9A
_021B6C7E:
	add r4, #0xed
	ldr r0, [r6, r4]
	b _021B6C94
_021B6C84:
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r6, r0]
_021B6C94:
	mov r1, #0
	bl sub_0204C124
_021B6C9A:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #3
	bl Oam_SetOamAnimIndex
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6ad4

	thumb_func_start ovy207_21b6cac
ovy207_21b6cac: ; 0x021B6CAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021B6CB2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl BmpWin_Free
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B6CB2
	ldr r0, [r5, #0x34]
	bl BmpWin_Free
	mov r0, #0
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6cac

	thumb_func_start ovy207_21b6cd4
ovy207_21b6cd4: ; 0x021B6CD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #1
	bl sub_02045B7C
	mov r0, #4
	mov r1, #0
	bl sub_02045790
	mov r0, #4
	bl sub_02045B7C
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	sub r4, #0x20
	ldr r0, [r5, r4]
	mov r1, #0
	bl Oam_SetOamAnimIndex
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b6cd4

	thumb_func_start ovy207_21b6d2c
ovy207_21b6d2c: ; 0x021B6D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x38]
	add r6, r2, #0
	cmp r1, #0
	beq _021B6D3E
	b _021B709C
_021B6D3E:
	mov r3, #1
	mov r1, #0xf1
	str r3, [sp]
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r1, [r4, #0xc]
	mov r2, #8
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x2c]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x28]
	ldr r0, [r5, #8]
	mov r7, #0x11
	ldr r0, [r0, #0x18]
	lsl r7, r7, #6
	cmp r0, #0
	bne _021B6D7A
	ldr r0, [sp, #0x28]
	ldr r1, [r4, #8]
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	str r0, [sp, #0x28]
_021B6D7A:
	add r0, r6, #0
	bl sub_0201CDB4
	cmp r0, #1
	bne _021B6D88
	mov r7, #0x32
	lsl r7, r7, #6
_021B6D88:
	ldr r1, _021B70A4 ; =0x000003E7
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _021B6DA4
	mov r0, #0x41
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	ldr r2, [sp, #0x2c]
	mov r3, #0x16
	b _021B6DCA
_021B6DA4:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	mov r0, #0x41
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	mov r3, #9
_021B6DCA:
	bl ovy207_21b4fa0
	ldr r0, [sp, #0x2c]
	bl GFL_WordSetSystemFree
	mov r3, #1
	mov r0, #0xf1
	str r3, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #0xa
	bl ovy207_21b4ec4
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _021B6E00
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	add r1, r0, #0
	ldr r0, _021B70A8 ; =0x0209A434
	ldr r0, [r0]
	b _021B6E06
_021B6E00:
	ldr r0, _021B70A8 ; =0x0209A434
	ldr r1, _021B70AC ; =0x0000028A
	ldr r0, [r0]
_021B6E06:
	bl sub_0204898C
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r7, #0x11
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	lsl r7, r7, #6
	str r0, [sp, #4]
	add r0, r5, #0
	str r7, [sp, #8]
	add r0, #0x84
	ldr r0, [r0]
	mov r2, #0x41
	mov r3, #1
	bl sub_02021C7C
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #1
	bl ovy207_21b4ec4
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	mov r2, #0xd
	mov r3, #1
	bl ovy207_21b4ec4
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	str r0, [sp, #0x20]
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0x9a
	bl sub_0201CD88
	cmp r0, #0
	bne _021B6E8A
	mov r7, #0x53
	b _021B6E90
_021B6E8A:
	cmp r0, #1
	bne _021B6E92
	mov r7, #0x32
_021B6E90:
	lsl r7, r7, #6
_021B6E92:
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0x8d
	bl sub_0201CD88
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #0x41
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [r4, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	mov r3, #0xe
	bl ovy207_21b4fa0
	ldr r0, [sp, #0x1c]
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	mov r2, #0xf
	mov r3, #1
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	bl sub_0201CD88
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r3, #5
	bl StringSetNumber
	mov r0, #0x41
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0x10
	bl ovy207_21b4fa0
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	add r0, r6, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CD88
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x30]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CD88
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	add r2, r7, #1
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x34]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CD88
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r2, r7, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0201D5B4
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	cmp r7, #0x64
	bne _021B6FB2
	mov r0, #0
	str r0, [sp, #0xc]
_021B6FB2:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	mov r2, #0x11
	mov r3, #1
	mov r6, #0x11
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	mov r1, #0
	mov r3, #7
	str r0, [sp, #0x38]
	bl StringSetNumber
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #6
	str r6, [sp, #8]
	ldr r1, [r4, #0x24]
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	mov r3, #0x12
	bl ovy207_21b4fa0
	ldr r0, [sp, #0x38]
	bl GFL_WordSetSystemFree
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	add r0, r5, #0
	mov r2, #0x13
	mov r3, #1
	bl ovy207_21b4ec4
	mov r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r4, #0x2c]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #1
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #0
	mov r3, #6
	str r0, [sp, #0x3c]
	bl StringSetNumber
	mov r0, #0x21
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [r4, #0x2c]
	ldr r2, [sp, #0x3c]
	add r0, r5, #0
	mov r3, #0x15
	bl ovy207_21b4fa0
	ldr r0, [sp, #0x3c]
	bl GFL_WordSetSystemFree
	cmp r7, #0x64
	beq _021B709C
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	sub r1, r1, r0
	ldr r0, [sp, #0xc]
	sub r6, r1, r0
	lsl r0, r6, #6
	blx sub_0208D868
	add r5, r0, #0
	cmp r6, #0
	beq _021B707E
	cmp r5, #0
	bne _021B707E
	mov r5, #1
_021B707E:
	cmp r5, #0x40
	bne _021B7084
	sub r5, r5, #1
_021B7084:
	ldr r0, [r4, #0x30]
	bl BmpWin_GetBitmap
	mov r2, #3
	lsl r3, r5, #0x10
	str r2, [sp]
	mov r1, #5
	str r1, [sp, #4]
	mov r1, #0
	lsr r3, r3, #0x10
	bl sub_020470F8
_021B709C:
	mov r0, #1
	str r0, [r4]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B70A4: .word 0x000003E7
_021B70A8: .word 0x0209A434
_021B70AC: .word 0x0000028A
	thumb_func_end ovy207_21b6d2c

	thumb_func_start ovy207_21b70b0
ovy207_21b70b0: ; 0x021B70B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	str r0, [sp, #0xc]
	add r6, r2, #0
	mov r0, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x5c]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x54]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x60]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x50]
	add r0, r6, #0
	mov r1, #0x8f
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x4c]
	add r0, r6, #0
	mov r1, #0x90
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x48]
	add r0, r6, #0
	mov r1, #0x91
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x44]
	add r0, r6, #0
	mov r1, #0x92
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x40]
	add r0, r6, #0
	mov r1, #0x93
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x3c]
	add r0, r6, #0
	mov r1, #0x94
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x38]
	add r0, r6, #0
	mov r1, #0x99
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x34]
	add r0, r6, #0
	mov r1, #0x6d
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x30]
	add r0, r6, #0
	mov r1, #0x77
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x2c]
	add r0, r6, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x28]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x24]
	add r0, r6, #0
	mov r1, #0x95
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0x96
	mov r2, #0
	bl sub_0201CD88
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl sub_0201736C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_02035D0C
	str r0, [sp, #0x64]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	bl sub_02035D0C
	str r0, [sp, #0x68]
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	bl sub_02035D0C
	str r0, [sp, #0x6c]
	add r0, r6, #0
	mov r1, #3
	add r2, r7, #0
	bl sub_02035D0C
	add r2, r0, #0
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x68]
	orr r1, r0
	ldr r0, [sp, #0x6c]
	orr r0, r1
	orr r0, r2
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0201D4B8
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x54]
	cmp r0, #0
	bne _021B7216
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x60]
	ldr r0, [r0, #0x38]
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x34]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	str r7, [sp]
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r3, #1
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #0x10
	str r0, [sp, #0x5c]
_021B7216:
	ldr r1, [sp, #0xc]
	mov r0, #1
	ldrh r1, [r1]
	lsl r0, r0, #8
	bl GFL_StrBufCreate
	ldr r2, [sp, #0xc]
	str r0, [sp, #0x18]
	ldrh r2, [r2]
	mov r0, #0xa
	mov r1, #0x20
	bl sub_020241E4
	add r7, r0, #0
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _021B723A
	b _021B7346
_021B723A:
	ldr r0, _021B74B4 ; =0x00007531
	cmp r5, r0
	bne _021B729C
	ldr r1, [sp, #0x30]
	mov r0, #0x29
	mov r4, #0x2b
	cmp r1, #1
	bne _021B724E
	mov r0, #0x2d
	mov r4, #0x2f
_021B724E:
	ldr r1, [sp, #0x2c]
	cmp r1, #0xf
	bhi _021B7296
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B7260: ; jump table
	.short _021B7296 - _021B7260 - 2 ; case 0
	.short _021B7280 - _021B7260 - 2 ; case 1
	.short _021B7280 - _021B7260 - 2 ; case 2
	.short _021B7280 - _021B7260 - 2 ; case 3
	.short _021B7284 - _021B7260 - 2 ; case 4
	.short _021B7284 - _021B7260 - 2 ; case 5
	.short _021B7296 - _021B7260 - 2 ; case 6
	.short _021B7288 - _021B7260 - 2 ; case 7
	.short _021B7288 - _021B7260 - 2 ; case 8
	.short _021B7296 - _021B7260 - 2 ; case 9
	.short _021B728E - _021B7260 - 2 ; case 10
	.short _021B728E - _021B7260 - 2 ; case 11
	.short _021B728E - _021B7260 - 2 ; case 12
	.short _021B7296 - _021B7260 - 2 ; case 13
	.short _021B7296 - _021B7260 - 2 ; case 14
	.short _021B7292 - _021B7260 - 2 ; case 15
_021B7280:
	ldr r5, _021B74B8 ; =0x00007536
	b _021B7326
_021B7284:
	ldr r5, _021B74BC ; =0x00007534
	b _021B7326
_021B7288:
	ldr r5, _021B74C0 ; =0x00007535
_021B728A:
	add r4, r0, #0
	b _021B7326
_021B728E:
	ldr r5, _021B74C4 ; =0x00007537
	b _021B728A
_021B7292:
	ldr r5, _021B74C8 ; =0x00007538
	b _021B7326
_021B7296:
	ldr r1, _021B74CC ; =0x00007539
	str r1, [sp, #0x20]
	b _021B728A
_021B729C:
	add r1, r0, #0
	add r1, #0xe
	cmp r5, r1
	bne _021B72A8
	mov r4, #0x29
	b _021B7326
_021B72A8:
	add r1, r0, #0
	add r1, #9
	cmp r5, r1
	blo _021B72EA
	add r1, r0, #0
	add r1, #0xc
	cmp r5, r1
	bhi _021B72EA
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _021B72EA
	add r0, #9
	sub r0, r5, r0
	cmp r0, #3
	bhi _021B7326
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B72D2: ; jump table
	.short _021B72DA - _021B72D2 - 2 ; case 0
	.short _021B72DE - _021B72D2 - 2 ; case 1
	.short _021B72E2 - _021B72D2 - 2 ; case 2
	.short _021B72E6 - _021B72D2 - 2 ; case 3
_021B72DA:
	mov r4, #0x31
	b _021B7326
_021B72DE:
	mov r4, #0x32
	b _021B7326
_021B72E2:
	mov r4, #0x33
	b _021B7326
_021B72E6:
	mov r4, #0x34
	b _021B7326
_021B72EA:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021B731C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021B730E
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021B7300
	mov r4, #0x35
	b _021B7326
_021B7300:
	ldr r0, _021B74D0 ; =0x00007532
	cmp r5, r0
	bne _021B730A
	mov r4, #0x1b
	b _021B7326
_021B730A:
	mov r4, #0x19
	b _021B7326
_021B730E:
	ldr r1, _021B74D4 ; =0x0000EA60
	cmp r0, r1
	bhi _021B7318
	mov r4, #0x1d
	b _021B7326
_021B7318:
	mov r4, #0x1f
	b _021B7326
_021B731C:
	ldr r0, [sp, #0x20]
	mov r4, #0x21
	cmp r0, #0
	beq _021B7326
	mov r4, #0x23
_021B7326:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _021B7364
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _021B7364
	ldr r0, _021B74D8 ; =0x0000753A
	cmp r5, r0
	blo _021B733E
	add r0, r0, #3
	cmp r5, r0
	bls _021B7364
_021B733E:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _021B7364
_021B7346:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021B735A
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne _021B7356
	mov r4, #0x54
	b _021B7364
_021B7356:
	mov r4, #0x55
	b _021B7364
_021B735A:
	ldr r0, [sp, #0x58]
	mov r4, #0x56
	cmp r0, #1
	beq _021B7364
	mov r4, #0x57
_021B7364:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x20]
	bl ovy207_21b75e8
	str r0, [sp, #0x70]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, r5, #0
	bl ovy207_21b75e8
	str r0, [sp, #0x74]
	mov r0, #2
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r2, [sp, #0x40]
	add r0, r7, #0
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x3c]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r7, #0
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x38]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r7, #0
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x34]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r7, #0
	mov r1, #3
	mov r3, #3
	bl StringSetNumber
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x74]
	add r0, r7, #0
	mov r1, #4
	mov r3, #0
	bl sub_0202437C
	mov r0, #2
	str r0, [sp]
	ldr r2, [sp, #0x4c]
	str r5, [sp, #4]
	add r0, r7, #0
	mov r1, #5
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x48]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, r7, #0
	mov r1, #6
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x44]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #7
	mov r3, #2
	str r5, [sp, #4]
	bl StringSetNumber
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	mov r1, #8
	bl sub_0202437C
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r0, #0x38]
	bl sub_0204898C
	add r4, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x34]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x5c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r3, r3, #1
	add r0, #0x80
	ldr r0, [r0]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	ldr r0, [sp, #0x18]
	bl sub_0202284C
	lsl r1, r0, #4
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x70]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x74]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x54]
	cmp r0, #0
	bne _021B7588
	ldr r3, _021B74DC ; =0x021BB0D8
	ldr r7, [sp, #0x14]
	add r2, sp, #0x9c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021B74E0 ; =0x021BB0F0
	b _021B74E4
	nop
_021B74B4: .word 0x00007531
_021B74B8: .word 0x00007536
_021B74BC: .word 0x00007534
_021B74C0: .word 0x00007535
_021B74C4: .word 0x00007537
_021B74C8: .word 0x00007538
_021B74CC: .word 0x00007539
_021B74D0: .word 0x00007532
_021B74D4: .word 0x0000EA60
_021B74D8: .word 0x0000753A
_021B74DC: .word 0x021BB0D8
_021B74E0: .word 0x021BB0F0
_021B74E4:
	add r2, sp, #0x78
	mov r1, #0x24
_021B74E8:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B74E8
	ldr r0, [sp, #0x24]
	mov r1, #6
	mov r4, #0
	mov r5, #6
	blx sub_0208D868
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r1, #0
	add r0, sp, #0x78
	mul r2, r5
	add r5, r0, r2
_021B750C:
	ldrb r1, [r5, r4]
	add r0, r6, #0
	lsl r2, r1, #2
	add r1, sp, #0x9c
	ldr r1, [r1, r2]
	mov r2, #0
	bl sub_0201CD88
	cmp r7, r0
	bhs _021B7528
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldrb r0, [r5, r4]
	str r0, [sp, #0x14]
_021B7528:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021B750C
	add r0, r7, #0
	mov r1, #5
	blx sub_0208D65C
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x10]
	lsl r3, r2, #2
	add r2, r2, r3
	add r2, #0x36
	ldr r0, [r0, #0x38]
	add r1, r1, r2
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x34]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x5c]
	str r4, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r3, r3, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r3, r3, #0x10
	add r0, #0x84
	str r0, [sp, #0xc]
	ldr r0, [r0]
	mov r2, #1
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
_021B7588:
	ldr r0, [sp, #0x50]
	cmp r0, #5
	bhi _021B7592
	mov r1, #0x58
	b _021B75A2
_021B7592:
	cmp r0, #0xa
	bhi _021B759A
	mov r1, #0x59
	b _021B75A2
_021B759A:
	mov r1, #0x5a
	cmp r0, #0x28
	bls _021B75A2
	mov r1, #0x5b
_021B75A2:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x38]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x34]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x5c]
	str r4, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r3, r3, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r3, r3, #0x10
	add r0, #0x84
	str r0, [sp, #0xc]
	ldr r0, [r0]
	mov r2, #1
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b70b0

	thumb_func_start ovy207_21b75e8
ovy207_21b75e8: ; 0x021B75E8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02035F5C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02035FAC
	sub r5, #0x6d
	add r1, r0, #0
	cmp r5, #3
	bhi _021B7638
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7610: ; jump table
	.short _021B7618 - _021B7610 - 2 ; case 0
	.short _021B7628 - _021B7610 - 2 ; case 1
	.short _021B7630 - _021B7610 - 2 ; case 2
	.short _021B7620 - _021B7610 - 2 ; case 3
_021B7618:
	ldr r0, [r4, #0x3c]
	bl sub_0204898C
	pop {r4, r5, r6, pc}
_021B7620:
	ldr r0, [r4, #0x40]
	bl sub_0204898C
	pop {r4, r5, r6, pc}
_021B7628:
	ldr r0, [r4, #0x44]
	bl sub_0204898C
	pop {r4, r5, r6, pc}
_021B7630:
	ldr r0, [r4, #0x48]
	bl sub_0204898C
	pop {r4, r5, r6, pc}
_021B7638:
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_0204898C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b75e8

	thumb_func_start ovy207_21b7644
ovy207_21b7644: ; 0x021B7644
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0xaf
	add r5, r0, #0
	str r4, [sp]
	mov r1, #0xee
	ldrh r0, [r5]
	ldr r3, _021B7678 ; =0x021BB6D4
	lsl r1, r1, #2
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	add r6, r0, #0
	add r4, #0xba
	str r7, [r6]
	add r0, #0x60
	strb r7, [r0]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r6, #0x50]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7678: .word 0x021BB6D4
	thumb_func_end ovy207_21b7644

	thumb_func_start ovy207_21b767c
ovy207_21b767c: ; 0x021B767C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x50]
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b767c

	thumb_func_start ovy207_21b7690
ovy207_21b7690: ; 0x021B7690
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ovy207_21b788c
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021B76C4
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021B76CC
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b84d0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b83c8
	mov r0, #0
	str r0, [r4, #8]
	b _021B76CC
_021B76C4:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b8110
_021B76CC:
	add r0, r4, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B76E2
	add r0, r4, #0
	add r0, #0x60
	ldrb r0, [r0]
	add r4, #0x60
	sub r0, r0, #1
	strb r0, [r4]
_021B76E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy207_21b7690

	thumb_func_start ovy207_21b76e4
ovy207_21b76e4: ; 0x021B76E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	add r3, r4, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x44
	mov r2, #0
	add r3, #0x28
	bl sub_0204B32C
	str r0, [r4, #0x2c]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x45
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x30
	bl sub_0204B32C
	str r0, [r4, #0x34]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x46
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x38
	bl sub_0204B32C
	str r0, [r4, #0x3c]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x47
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x40
	bl sub_0204B32C
	str r0, [r4, #0x44]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0xe
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x48
	bl sub_0204B2DC
	mov r1, #0x5d
	str r0, [r4, #0x4c]
	lsl r1, r1, #2
	ldrh r0, [r5]
	ldr r1, [r5, r1]
	bl ovy207_21ba900
	str r0, [r4, #0x6c]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy207_21b76e4

	thumb_func_start ovy207_21b7764
ovy207_21b7764: ; 0x021B7764
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4]
	cmp r2, #1
	bne _021B7772
	bl ovy207_21b7efc
_021B7772:
	ldr r0, [r4, #0x6c]
	bl ovy207_21ba930
	ldr r0, [r4, #0x4c]
	bl GFL_HeapFree
	ldr r0, [r4, #0x2c]
	bl GFL_HeapFree
	ldr r0, [r4, #0x34]
	bl GFL_HeapFree
	ldr r0, [r4, #0x3c]
	bl GFL_HeapFree
	ldr r0, [r4, #0x44]
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy207_21b7764

	thumb_func_start ovy207_21b7798
ovy207_21b7798: ; 0x021B7798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	mov r4, #0
	add r0, sp, #0x10
	strh r4, [r0]
	add r6, r1, #0
	strh r4, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	strh r4, [r0, #4]
	add r0, sp, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r7]
	mov r3, #0x5d
	add r1, r7, #0
	add r2, r7, #0
	lsl r3, r3, #2
	str r0, [sp, #8]
	ldr r0, [r7, r3]
	add r1, #0xf8
	add r2, #0xc4
	sub r3, #0x48
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r7, r3]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r6, #0x54]
	bl sub_0204C124
	mov r1, #8
	add r0, sp, #0x10
	strh r1, [r0, #0xc]
	add r0, r7, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0x19
	str r0, [sp, #0x20]
	str r4, [sp, #0x24]
	add r0, sp, #0x10
	strb r4, [r0, #0x18]
	mov r2, #2
	strb r2, [r0, #0x19]
	strh r4, [r0, #0x1a]
	lsl r1, r1, #0x16
	lsl r0, r2, #0x10
	add r0, r1, r0
	str r4, [sp, #0x2c]
	str r0, [sp, #0xc]
_021B7802:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy207_21b82a0
	add r1, sp, #0x10
	strh r0, [r1, #0xe]
	mov r0, #0x14
	mul r0, r4
	add r5, r6, r0
	ldrh r0, [r7]
	add r1, r4, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x66
	lsl r0, r0, #4
	mul r2, r0
	ldr r0, [sp, #0xc]
	mov r1, #0x11
	sub r0, r0, r2
	mov r2, #3
	mov r3, #0x20
	bl sub_02046EA8
	str r0, [r5, #0x7c]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x6c]
	add r1, sp, #0x18
	bl ovy207_21ba940
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	add r5, #0x80
	ldr r0, [r5]
	mov r1, #0
	bl ovy207_21bab14
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B7802
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b7798

	thumb_func_start ovy207_21b785c
ovy207_21b785c: ; 0x021B785C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x54]
	bl Oam_RemoveOam
	mov r4, #0
	mov r7, #0x14
_021B786A:
	add r0, r4, #0
	mul r0, r7
	add r5, r6, r0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy207_21baaac
	ldr r0, [r5, #0x7c]
	bl GFL_BitmapFree
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B786A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b785c

	thumb_func_start ovy207_21b788c
ovy207_21b788c: ; 0x021B788C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x44]
	add r4, r1, #0
	cmp r2, #1
	bne _021B7914
	ldrb r2, [r4, #0x10]
	cmp r2, #0
	beq _021B792A
	bl ovy207_21b7c84
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	beq _021B78B4
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B792A
_021B78B4:
	mov r0, #0
	str r0, [r4, #0x5c]
	add r0, r5, #0
	mov r1, #0
	bl ovy207_21b47d4
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	bne _021B78D6
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b7d08
	mov r0, #0
	strb r0, [r5, #0x1c]
	b _021B78FC
_021B78D6:
	lsl r0, r6, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	mov r7, #1
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	str r7, [r4, #0x64]
	str r7, [r4, #0x68]
	bl ovy207_21b8288
	add r1, r4, #0
	add r1, #0x59
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0
	bl ovy207_21b47d4
	strb r7, [r5, #0x1c]
_021B78FC:
	ldr r0, _021B792C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b84ac
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b82fc
	pop {r3, r4, r5, r6, r7, pc}
_021B7914:
	ldr r2, [r4, #8]
	cmp r2, #0
	bne _021B792A
	bl ovy207_21b7930
	cmp r0, #0
	bne _021B792A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b7b30
_021B792A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B792C: .word 0x0000054C
	thumb_func_end ovy207_21b788c

	thumb_func_start ovy207_21b7930
ovy207_21b7930: ; 0x021B7930
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _021B798A
	add r0, r6, #0
	mov r1, #1
	mov r4, #1
	bl ovy207_21b47d4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	ldr r0, [r5, #0x54]
	mov r1, #0
	mov r7, #0
	bl sub_0204C124
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x58
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x59
	strb r1, [r0]
	add r0, r6, #0
	add r1, r5, #0
	str r4, [r5, #0x68]
	bl ovy207_21b84ac
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b84d0
	ldr r0, _021B7B24 ; =0x00000551
	strb r7, [r6, #0x1c]
	bl GFL_SndSEPlay
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B798A:
	ldrb r0, [r6, #0x1c]
	cmp r0, #1
	bne _021B7A0E
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	beq _021B79AA
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x80
	beq _021B79AA
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x40
	beq _021B79AA
	b _021B7B20
_021B79AA:
	mov r4, #0
	mov r0, #0xf
	mvn r0, r0
	str r4, [r5, #0x5c]
	str r4, [r5, #0x64]
	mov r7, #0x14
_021B79B6:
	add r2, r4, #0
	mul r2, r7
	add r1, r5, #0
	add r2, r5, r2
	add r1, #0x59
	add r2, #0x70
	ldrb r1, [r1]
	ldrh r2, [r2]
	cmp r1, r2
	bne _021B79D2
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b82a0
_021B79D2:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0xa
	blo _021B79B6
	mov r1, #3
	mvn r1, r1
	cmp r0, r1
	blt _021B79E8
	cmp r0, #0x90
	ble _021B79F0
_021B79E8:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b7d08
_021B79F0:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b84ac
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b82fc
	ldr r0, _021B7B28 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	strb r0, [r6, #0x1c]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B7A0E:
	bl sub_0203DF44
	cmp r0, #0x80
	bne _021B7A98
	add r0, r5, #0
	add r0, #0x58
	ldrb r0, [r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xa
	blo _021B7A2C
	sub r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021B7A2C:
	mov r1, #0x14
	mul r1, r0
	add r1, r5, r1
	add r1, #0x70
	ldrh r2, [r1]
	ldr r1, _021B7B2C ; =0x0000FFFF
	cmp r2, r1
	beq _021B7A94
	add r1, r5, #0
	add r1, #0x58
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x58
	mov r0, #1
	str r0, [r5, #0x68]
	ldrb r1, [r1]
	add r0, r5, #0
	bl ovy207_21b82a0
	cmp r0, #0x80
	ble _021B7A70
	add r1, r5, #0
	add r1, #0x58
	ldrb r1, [r1]
	add r0, r5, #0
	bl ovy207_21b82a0
	sub r0, #0x80
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b7d6c
_021B7A70:
	add r2, r5, #0
	add r2, #0x58
	ldrb r2, [r2]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b7d30
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b84ac
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b82fc
	ldr r0, _021B7B28 ; =0x00000548
	bl GFL_SndSEPlay
_021B7A94:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B7A98:
	bl sub_0203DF44
	cmp r0, #0x40
	bne _021B7B20
	add r0, r5, #0
	add r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B7AAE
	mov r0, #9
	b _021B7AB4
_021B7AAE:
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021B7AB4:
	mov r1, #0x14
	mul r1, r0
	add r1, r5, r1
	add r1, #0x70
	ldrh r2, [r1]
	ldr r1, _021B7B2C ; =0x0000FFFF
	cmp r2, r1
	beq _021B7B1C
	add r1, r5, #0
	add r1, #0x58
	strb r0, [r1]
	add r1, r5, #0
	add r1, #0x58
	mov r0, #1
	str r0, [r5, #0x68]
	ldrb r1, [r1]
	add r0, r5, #0
	bl ovy207_21b82a0
	cmp r0, #8
	bge _021B7AF8
	add r1, r5, #0
	add r1, #0x58
	ldrb r1, [r1]
	add r0, r5, #0
	bl ovy207_21b82a0
	sub r0, #8
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b7d6c
_021B7AF8:
	add r2, r5, #0
	add r2, #0x58
	ldrb r2, [r2]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b7d30
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b84ac
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b82fc
	ldr r0, _021B7B28 ; =0x00000548
	bl GFL_SndSEPlay
_021B7B1C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B7B20:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7B24: .word 0x00000551
_021B7B28: .word 0x00000548
_021B7B2C: .word 0x0000FFFF
	thumb_func_end ovy207_21b7930

	thumb_func_start ovy207_21b7b30
ovy207_21b7b30: ; 0x021B7B30
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x24]
	cmp r1, #7
	bne _021B7B82
	mov r1, #1
	mov r6, #1
	bl ovy207_21b47d4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x58
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x59
	strb r1, [r0]
	str r6, [r4, #0x68]
	add r0, r5, #0
	add r1, r4, #0
	strb r6, [r5, #0x1c]
	bl ovy207_21b84ac
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b84d0
	ldr r0, _021B7C80 ; =0x00000551
	bl GFL_SndSEPlay
	pop {r4, r5, r6, pc}
_021B7B82:
	bl sub_0203DA48
	cmp r0, #1
	bne _021B7BE0
	ldr r0, [r5, #0x28]
	cmp r0, #8
	bls _021B7BE0
	cmp r0, #0x90
	bhs _021B7BE0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b7c84
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021B7BDA
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0x58
	strb r1, [r0]
	mov r6, #1
	add r0, r4, #0
	str r6, [r4, #0x68]
	bl ovy207_21b8288
	add r1, r4, #0
	add r1, #0x59
	strb r0, [r1]
	mov r1, #0
	ldr r0, [r4, #0x54]
	str r6, [r4, #0x64]
	str r1, [r4, #0x5c]
	bl sub_0204C124
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b84ac
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b82fc
_021B7BDA:
	mov r0, #1
	strb r0, [r5, #0x1c]
	pop {r4, r5, r6, pc}
_021B7BE0:
	bl sub_0203DA2C
	cmp r0, #1
	bne _021B7C44
	ldr r0, [r4, #0x64]
	cmp r0, #1
	bne _021B7C44
	ldr r0, [r5, #0x28]
	cmp r0, #8
	bls _021B7C44
	cmp r0, #0x90
	bhs _021B7C44
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x2c]
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsl r6, r2, #1
	bl ovy207_21b7d6c
	cmp r6, #0
	blt _021B7C26
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ble _021B7C26
	cmp r6, r0
	bge _021B7C26
	add r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x5c]
	pop {r4, r5, r6, pc}
_021B7C26:
	cmp r6, #0
	bgt _021B7C40
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bge _021B7C40
	cmp r6, r0
	ble _021B7C40
	add r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [r4, #0x5c]
	pop {r4, r5, r6, pc}
_021B7C40:
	str r6, [r4, #0x5c]
	pop {r4, r5, r6, pc}
_021B7C44:
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bge _021B7C62
	add r3, r0, #1
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	add r0, r5, #0
	add r1, r4, #0
	asr r2, r2, #0x10
	str r3, [r4, #0x5c]
	bl ovy207_21b7d6c
_021B7C62:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	ble _021B7C7C
	sub r3, r0, #1
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	add r0, r5, #0
	add r1, r4, #0
	asr r2, r2, #0x10
	str r3, [r4, #0x5c]
	bl ovy207_21b7d6c
_021B7C7C:
	pop {r4, r5, r6, pc}
	nop
_021B7C80: .word 0x00000551
	thumb_func_end ovy207_21b7b30

	thumb_func_start ovy207_21b7c84
ovy207_21b7c84: ; 0x021B7C84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r1, #0
	mov r5, #0
	add r7, sp, #0
_021B7C8E:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b82a0
	lsl r1, r5, #2
	add r4, r7, r1
	mov r1, #8
	strb r1, [r4, #2]
	mov r1, #0x90
	strb r1, [r4, #3]
	cmp r0, #0
	bge _021B7CAC
	mov r1, #0
_021B7CA8:
	strb r1, [r4]
	b _021B7CB6
_021B7CAC:
	cmp r0, #0xa8
	ble _021B7CB4
	mov r1, #0xa8
	b _021B7CA8
_021B7CB4:
	strb r0, [r4]
_021B7CB6:
	add r0, #0x18
	bpl _021B7CBE
	mov r0, #0
	b _021B7CC6
_021B7CBE:
	cmp r0, #0xa8
	ble _021B7CC6
	mov r0, #0xa8
	b _021B7CC6
_021B7CC6:
	strb r0, [r4, #1]
	ldrb r0, [r4]
	cmp r0, #0
	bne _021B7CD8
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _021B7CD8
	mov r0, #0xfd
	strb r0, [r4]
_021B7CD8:
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b8288
	ldr r1, _021B7D04 ; =0x0000FFFF
	cmp r0, r1
	bne _021B7CEA
	mov r0, #0xfd
	strb r0, [r4]
_021B7CEA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xa
	blo _021B7C8E
	mov r1, #0xff
	add r0, sp, #0x20
	strb r1, [r0, #8]
	add r0, sp, #0
	bl sub_0203DA0C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B7D04: .word 0x0000FFFF
	thumb_func_end ovy207_21b7c84

	thumb_func_start ovy207_21b7d08
ovy207_21b7d08: ; 0x021B7D08
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0x18
	add r0, #0x17
	blx sub_0208D868
	mov r1, #0xa
	blx sub_0208D868
	add r2, r1, #0
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ovy207_21b7d30
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b7d08

	thumb_func_start ovy207_21b7d30
ovy207_21b7d30: ; 0x021B7D30
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	mov r0, #8
	add r6, sp, #0
	strh r0, [r6]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b82a0
	strh r0, [r6, #2]
	ldr r0, [r5, #0x54]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r5, #0
	add r0, #0x58
	strb r4, [r0]
	mov r0, #1
	str r0, [r5, #0x68]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b8288
	add r5, #0x59
	strb r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy207_21b7d30

	thumb_func_start ovy207_21b7d6c
ovy207_21b7d6c: ; 0x021B7D6C
	push {r3, r4}
	ldrb r0, [r1, #0x10]
	sub r3, r0, #6
	mov r0, #0x18
	mul r0, r3
	bpl _021B7D7A
	mov r0, #0
_021B7D7A:
	cmp r2, #0x18
	ble _021B7D80
	mov r2, #0x18
_021B7D80:
	mov r3, #0x17
	mvn r3, r3
	cmp r2, r3
	bge _021B7D8A
	add r2, r3, #0
_021B7D8A:
	ldr r4, [r1, #0x14]
	lsl r3, r4, #0x10
	asr r3, r3, #0x10
	add r3, r3, r2
	bpl _021B7D9A
	mov r0, #0
_021B7D96:
	str r0, [r1, #0x14]
	b _021B7DA4
_021B7D9A:
	add r3, r4, r2
	cmp r3, r0
	bls _021B7DA2
	b _021B7D96
_021B7DA2:
	str r3, [r1, #0x14]
_021B7DA4:
	cmp r2, #0
	beq _021B7DAC
	mov r0, #1
	str r0, [r1, #0xc]
_021B7DAC:
	pop {r3, r4}
	bx lr
	thumb_func_end ovy207_21b7d6c

	thumb_func_start ovy207_21b7db0
ovy207_21b7db0: ; 0x021B7DB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x58
	strb r1, [r0]
	add r0, r5, #0
	mov r4, #0
	add r0, #0x59
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x5a
	strb r1, [r0]
	mov r0, #1
	add r7, r5, #0
	str r4, [r5, #0x14]
	str r0, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r0, [r5, #0xc]
	str r4, [r5, #0x20]
	str r4, [r5, #0x24]
	add r7, #0x70
_021B7DE0:
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b8288
	add r1, r5, r6
	add r1, #0x70
	strh r0, [r1]
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, r6
	bl ovy207_21b8050
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B7DE0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b7db0

	thumb_func_start ovy207_21b7e0c
ovy207_21b7e0c: ; 0x021B7E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	add r5, r1, #0
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r6, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r4, #0x20
	str r4, [sp, #0x10]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r4, [sp, #0x14]
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	ldr r2, [r5, #0x30]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02045B7C
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, #0x40]
	mov r1, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, #5
	mov r2, #0
	mov r3, #0x20
	str r4, [sp, #0x14]
	bl sub_020454D4
	mov r0, #5
	bl sub_02045B7C
_021B7E74:
	mov r0, #0x14
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	add r0, #0x70
	ldrh r7, [r0]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy207_21b82a0
	add r2, r0, #0
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #8
	bl ovy207_21bac9c
	ldr r0, _021B7EF8 ; =0x0000FFFF
	cmp r7, r0
	beq _021B7EB4
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	bl ovy207_21bab14
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	bl ovy207_21bab64
	b _021B7EC0
_021B7EB4:
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0
	bl ovy207_21bab14
_021B7EC0:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0xa
	blo _021B7E74
	mov r0, #0
	str r0, [r5, #0x14]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x58
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x59
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x5a
	strb r1, [r0]
	mov r0, #1
	str r0, [r5]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	add r1, #0x81
	ldr r0, [r0, r1]
	mov r1, #5
	bl Oam_SetOamAnimIndex
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B7EF8: .word 0x0000FFFF
	thumb_func_end ovy207_21b7e0c

	thumb_func_start ovy207_21b7efc
ovy207_21b7efc: ; 0x021B7EFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	mov r5, #0
	str r5, [r4]
	cmp r0, #0
	beq _021B7F10
	bl BmpWin_Free
	str r5, [r4, #0x20]
_021B7F10:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021B7F1E
	bl BmpWin_Free
	mov r0, #0
	str r0, [r4, #0x24]
_021B7F1E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy207_21b7efc

	thumb_func_start ovy207_21b7f20
ovy207_21b7f20: ; 0x021B7F20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	str r0, [sp, #0xc]
	add r5, r1, #0
	add r7, r4, #0
	mov r6, #0x14
_021B7F2E:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r7, #0
	bl ovy207_21bab14
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B7F2E
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02045604
	mov r0, #1
	bl GFL_BGSysLoadScr
	mov r1, #6
	ldr r0, [sp, #0xc]
	str r7, [r5]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #2
	bl Oam_SetOamAnimIndex
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b7f20

	thumb_func_start ovy207_21b7f7c
ovy207_21b7f7c: ; 0x021B7F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r2, _021B8048 ; =0x021BB13C
	add r5, r1, #0
	ldrb r3, [r2]
	add r1, sp, #0xc
	strb r3, [r1]
	ldrb r3, [r2, #1]
	strb r3, [r1, #1]
	ldrb r3, [r2, #2]
	strb r3, [r1, #2]
	ldrb r3, [r2, #3]
	strb r3, [r1, #3]
	ldrb r2, [r2, #4]
	strb r2, [r1, #4]
	bl ovy207_21b4d9c
	str r0, [sp]
	mov r2, #0
	mov r0, #0x4e
	add r6, r2, #0
	lsl r0, r0, #2
_021B7FA8:
	lsl r1, r2, #3
	add r1, r5, r1
	str r6, [r1, r0]
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #0x50
	blo _021B7FA8
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r0, #5
	str r0, [sp, #4]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r6, #0
	add r7, r0, #6
_021B7FD0:
	add r0, r4, #0
	mov r1, #0
	bl sub_021BAD9C
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #1
	bne _021B8018
	add r0, r4, #0
	mov r1, #5
	bl sub_021BAD9C
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsl r0, r6, #3
	add r2, r5, r0
	mov r0, #0x4e
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r2, r0]
	ldr r0, [sp, #8]
	strb r4, [r2, r0]
	ldr r0, [sp, #4]
	strb r3, [r2, r0]
	add r0, sp, #0xc
	ldrb r0, [r0, r3]
	strb r0, [r2, r7]
	add r1, r0, #1
	add r0, sp, #0xc
	strb r1, [r0, r3]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021B8018:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x50
	blo _021B7FD0
	strb r6, [r5, #0x10]
	mov r4, #0
	mov r6, #0x14
_021B8028:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b8288
	add r1, r4, #0
	mul r1, r6
	add r1, r5, r1
	add r1, #0x70
	strh r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021B8028
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8048: .word 0x021BB13C
	thumb_func_end ovy207_21b7f7c

	thumb_func_start sub_021B804C
sub_021B804C: ; 0x021B804C
	bx lr
	.align 2, 0
	thumb_func_end sub_021B804C

	thumb_func_start ovy207_21b8050
ovy207_21b8050: ; 0x021B8050
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4e
	add r6, r1, #0
	add r4, r2, #0
	lsl r0, r0, #2
	add r2, r6, r0
	ldrh r0, [r4]
	lsl r1, r0, #3
	add r0, r2, r1
	str r0, [sp, #8]
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _021B810C
	ldr r0, [r6, #0x48]
	ldr r7, [r0, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02046EF4
	add r2, r6, #0
	add r2, #0x59
	add r1, r0, #0
	ldrh r0, [r4]
	ldrb r2, [r2]
	cmp r0, r2
	bne _021B808C
	mov r0, #0x66
	lsl r0, r0, #4
	add r7, r7, r0
_021B808C:
	mov r2, #0x66
	add r0, r7, #0
	lsl r2, r2, #4
	blx MI_CpuCopy8
	ldr r1, [sp, #8]
	ldr r0, [r6, #0x50]
	ldrb r1, [r1, #5]
	add r1, #0xa0
	bl sub_0204898C
	add r7, r0, #0
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r2, [r2, #6]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r5, #0x80
	ldr r0, [r5]
	mov r1, #0xa
	str r0, [sp]
	ldr r0, [r4, #0xc]
	mov r2, #6
	add r3, r6, #0
	bl sub_02021CFC
	bl sub_020232D8
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x10]
	bl ovy207_21bab64
_021B810C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b8050

	thumb_func_start ovy207_21b8110
ovy207_21b8110: ; 0x021B8110
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x70
	mov r6, #0
	str r0, [sp, #4]
_021B8126:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021B8192
	add r0, r5, #0
	add r1, r6, #0
	bl ovy207_21b82a0
	add r2, r0, #0
	mov r0, #0x14
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #8
	bl ovy207_21bac9c
	add r0, r5, #0
	add r1, r6, #0
	bl ovy207_21b8288
	ldr r1, _021B823C ; =0x0000FFFF
	cmp r0, r1
	bne _021B8166
	add r1, r5, r4
	add r1, #0x70
	strh r0, [r1]
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0
	b _021B818E
_021B8166:
	add r1, r5, r4
	add r1, #0x70
	ldrh r1, [r1]
	cmp r0, r1
	beq _021B8192
	mov r1, #1
	str r1, [sp]
	add r1, r5, r4
	ldr r2, [sp, #4]
	add r1, #0x70
	strh r0, [r1]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r2, r4
	bl ovy207_21b8050
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
_021B818E:
	bl ovy207_21bab14
_021B8192:
	mov r0, #0x14
	mul r0, r6
	add r4, r5, r0
	ldr r0, [r4, #0x78]
	cmp r0, #1
	bne _021B81BA
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	ldr r1, [r4, #0x7c]
	bl sub_02021C1C
	cmp r0, #0
	bne _021B81BA
	mov r0, #0
	str r0, [r4, #0x78]
	add r4, #0x80
	ldr r0, [r4]
	bl ovy207_21bab64
_021B81BA:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0xa
	blo _021B8126
	ldr r0, [sp]
	cmp r0, #1
	bne _021B81E4
	add r0, r5, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B81E4
	ldr r0, _021B8240 ; =0x00000645
	mov r1, #1
	bl sub_020061DC
	add r0, r5, #0
	mov r1, #3
	add r0, #0x60
	strb r1, [r0]
_021B81E4:
	ldr r0, [r5, #0x68]
	cmp r0, #1
	bne _021B8232
	add r0, r5, #0
	add r0, #0x58
	ldrb r3, [r0]
	cmp r3, #0xa
	bhs _021B8206
	add r2, r5, #0
	mov r4, #0x14
	add r2, #0x70
	mul r4, r3
	add r0, r7, #0
	add r1, r5, #0
	add r2, r2, r4
	bl ovy207_21b8050
_021B8206:
	add r0, r5, #0
	add r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #0xa
	bhs _021B8222
	add r4, r5, #0
	mov r3, #0x14
	add r4, #0x70
	mul r3, r2
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, r3
	bl ovy207_21b8050
_021B8222:
	add r0, r5, #0
	add r0, #0x58
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x5a
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x68]
_021B8232:
	mov r0, #0
	str r0, [r5, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B823C: .word 0x0000FFFF
_021B8240: .word 0x00000645
	thumb_func_end ovy207_21b8110

	thumb_func_start ovy207_21b8244
ovy207_21b8244: ; 0x021B8244
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x14]
	add r5, r1, #0
	mov r1, #0x18
	blx sub_0208D868
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	mov r1, #0xa
	mov r4, #0xa
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	sub r0, r5, r0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	sub r4, #0xc
	cmp r0, r4
	bge _021B8274
	add r0, #0xa
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
_021B8274:
	cmp r0, #8
	ble _021B827E
	sub r0, #0xa
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
_021B827E:
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b8244

	thumb_func_start ovy207_21b8288
ovy207_21b8288: ; 0x021B8288
	push {r4, lr}
	add r4, r0, #0
	bl ovy207_21b8244
	ldrb r1, [r4, #0x10]
	cmp r0, r1
	blo _021B8298
	ldr r0, _021B829C ; =0x0000FFFF
_021B8298:
	pop {r4, pc}
	nop
_021B829C: .word 0x0000FFFF
	thumb_func_end ovy207_21b8288

	thumb_func_start ovy207_21b82a0
ovy207_21b82a0: ; 0x021B82A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r0, #0x14]
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #0x18
	blx sub_0208D868
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #0x18
	blx sub_0208D868
	lsl r0, r1, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	mov r1, #0xa
	mov r4, #0xa
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	sub r0, r7, r0
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	sub r4, #0xc
	cmp r1, r4
	bge _021B82DE
	add r1, #0xa
	lsl r0, r1, #0x18
	asr r1, r0, #0x18
_021B82DE:
	cmp r1, #8
	ble _021B82EC
	cmp r5, #6
	bls _021B82EC
	sub r1, #0xa
	lsl r0, r1, #0x18
	asr r1, r0, #0x18
_021B82EC:
	mov r0, #0x18
	mul r0, r1
	add r0, #8
	sub r0, r0, r6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b82a0

	thumb_func_start ovy207_21b82fc
ovy207_21b82fc: ; 0x021B82FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r6, #0xe
	add r4, r1, #0
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #5
	mov r2, #7
	mov r3, #0x16
	mov r7, #4
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x20]
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #1
	mov r2, #0x10
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrb r7, [r1, r0]
	mov r1, #3
	add r0, r7, #0
	bl sub_021BAD9C
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r3, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl sub_021BAE04
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r4, #0x24]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r5, #0x84
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r2, #1
	mov r3, #1
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #1
	str r0, [r4, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b82fc

	thumb_func_start ovy207_21b83c8
ovy207_21b83c8: ; 0x021B83C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x59
	ldrb r0, [r0]
	ldr r7, [r4, #0x20]
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrb r6, [r1, r0]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl BmpWin_FlushMap
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r7, [r4, #0x24]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl BmpWin_FlushMap
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldrh r1, [r5]
	mov r0, #0x4d
	bl GFL_ArcSysCreateFileHandle
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_021BAD9C
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r7, #0
	bl Oam_LoadNCGRFile
	str r0, [r4, #0x18]
	add r0, r7, #0
	bl GFL_ArcToolFree
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r3, #0x64
	strh r3, [r0, #2]
	mov r2, #0xa
	strb r2, [r0, #6]
	mov r2, #0
	strb r2, [r0, #7]
	strh r2, [r0, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r2, r5, #0
	add r1, #0xf4
	str r0, [sp, #8]
	add r2, #0xb4
	add r3, #0xc4
	ldr r0, [r5, r1]
	ldr r1, [r4, #0x18]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	str r0, [r4, #0x1c]
	add r0, r6, #0
	mov r1, #2
	bl sub_021BAD9C
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x1c]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C124
	ldr r2, [r4, #0x38]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02045B7C
	mov r0, #1
	str r0, [r4, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b83c8

	thumb_func_start ovy207_21b84ac
ovy207_21b84ac: ; 0x021B84AC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021B84BE
	bl BmpWin_Free
	mov r0, #0
	str r0, [r4, #0x20]
_021B84BE:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021B84CC
	bl BmpWin_Free
	mov r0, #0
	str r0, [r4, #0x24]
_021B84CC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b84ac

	thumb_func_start ovy207_21b84d0
ovy207_21b84d0: ; 0x021B84D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021B850C
	ldr r0, [r4, #0x18]
	bl sub_0204B98C
	ldr r0, [r4, #0x1c]
	bl Oam_RemoveOam
	mov r0, #4
	mov r1, #0
	mov r5, #0
	bl sub_02045790
	mov r0, #4
	bl sub_02045B7C
	ldr r2, [r4, #0x30]
	str r5, [r4, #4]
	add r1, r2, #0
	ldr r2, [r2, #8]
	mov r0, #6
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02045B7C
_021B850C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b84d0

	thumb_func_start ovy207_21b8510
ovy207_21b8510: ; 0x021B8510
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _021B858C ; =0x0000014E
	add r4, r0, #0
	str r1, [sp]
	ldrh r0, [r4]
	ldr r3, _021B8590 ; =0x021BB6E4
	sub r1, #0x26
	mov r5, #0
	mov r2, #0
	bl GFL_HeapAllocate
	str r5, [r0]
	str r5, [r0, #4]
	str r5, [r0, #8]
	str r5, [r0, #0x10]
	str r5, [r0, #0x14]
	str r5, [r0, #0x18]
	add r2, r0, #0
	str r5, [r0, #0x24]
	mov r1, #5
	add r2, #0x2a
	strb r1, [r2]
	add r2, r0, #0
	mov r3, #0xff
	add r2, #0x29
	strb r3, [r2]
	ldr r3, [r4, #8]
	ldrb r2, [r3, #0xd]
	cmp r2, #2
	bne _021B855C
	ldrh r2, [r3, #0x14]
	cmp r2, #0
	beq _021B855C
	add r2, r0, #0
	add r2, #0x2b
	strb r1, [r2]
	b _021B8564
_021B855C:
	add r1, r0, #0
	mov r2, #4
	add r1, #0x2b
	strb r2, [r1]
_021B8564:
	mov r6, #0
	mov r4, #0xff
	add r3, r6, #0
	mov r1, #0x18
_021B856C:
	add r5, r6, #0
	mul r5, r1
	add r2, r0, r5
	add r2, #0xb0
	strb r4, [r2]
	add r2, r0, r5
	add r2, #0xb4
	str r3, [r2]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #5
	blo _021B856C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B858C: .word 0x0000014E
_021B8590: .word 0x021BB6E4
	thumb_func_end ovy207_21b8510

	thumb_func_start sub_021B8594
sub_021B8594: ; 0x021B8594
	ldr r3, _021B859C ; =GFL_HeapFree
	add r0, r1, #0
	bx r3
	nop
_021B859C: .word GFL_HeapFree
	thumb_func_end sub_021B8594

	thumb_func_start ovy207_21b85a0
ovy207_21b85a0: ; 0x021B85A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r2, [r5, #4]
	add r7, r0, #0
	cmp r2, #0
	bne _021B85C2
	ldr r2, [r5, #8]
	cmp r2, #0
	bne _021B85C2
	ldr r2, [r5, #0x10]
	cmp r2, #0
	bne _021B85C2
	ldr r2, [r5, #0x20]
	cmp r2, #0
	bne _021B85C2
	bl ovy207_21b97c4
_021B85C2:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _021B862C
	mov r6, #1
	mov r4, #0
_021B85CC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021C1C
	cmp r0, #1
	bne _021B85EA
	mov r6, #0
	b _021B85F4
_021B85EA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	bls _021B85CC
_021B85F4:
	cmp r6, #1
	bne _021B862C
	mov r4, #0
_021B85FA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x5c]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	bls _021B85FA
	add r0, r7, #0
	add r1, r5, #0
	bl ovy207_21b8ca4
	mov r0, #0
	str r0, [r5, #4]
_021B862C:
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021B8696
	mov r6, #1
	mov r4, #8
_021B8636:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021C1C
	cmp r0, #1
	bne _021B8654
	mov r6, #0
	b _021B865E
_021B8654:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	bls _021B8636
_021B865E:
	cmp r6, #1
	bne _021B8696
	mov r4, #8
_021B8664:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, #0x5c]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl BmpWin_FlushMap
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	bls _021B8664
	add r0, r7, #0
	add r1, r5, #0
	bl ovy207_21b8d50
	mov r0, #0
	str r0, [r5, #8]
_021B8696:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021B86D6
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021C1C
	cmp r0, #0
	bne _021B86D6
	add r0, r5, #0
	add r0, #0x8c
	ldr r4, [r0]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r5, #0xc]
_021B86D6:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021B872A
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021B872A
	add r1, r5, #0
	add r1, #0x2a
	ldrb r2, [r1]
	add r0, r5, #0
	mov r1, #0x18
	add r0, #0xb0
	mul r1, r2
	mov r4, #0
	add r0, r0, r1
	mov r1, #0
	str r4, [r5, #0x14]
	bl sub_021BA8E8
	add r2, r5, #0
	add r2, #0x29
	add r0, r5, #0
	ldrb r2, [r2]
	mov r1, #5
	add r0, #0x2a
	strb r1, [r0]
	add r0, r7, #0
	add r1, r5, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	str r4, [r5, #0x10]
_021B872A:
	add r6, r5, #0
	mov r4, #0
	add r6, #0xb0
_021B8730:
	mov r2, #0x18
	mul r2, r4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, r2
	bl sub_021BA63C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021B8730
	ldr r0, [r5, #0x20]
	cmp r0, #1
	bne _021B87DE
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	cmp r0, #4
	ldr r0, [r5, #0x24]
	bge _021B87A4
	cmp r0, #1
	bne _021B8790
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x18
	mul r0, r1
	add r0, r5, r0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0xf
_021B878A:
	bl Oam_SetOamAnimIndex
	b _021B87D2
_021B8790:
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r2, r5, #0
	mov r0, #0x18
	mul r0, r1
	add r2, #0xb0
	add r0, r2, r0
	mov r1, #0
	b _021B87CE
_021B87A4:
	cmp r0, #1
	bne _021B87BC
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r0]
	mov r0, #0x18
	mul r0, r1
	add r0, r5, r0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0x10
	b _021B878A
_021B87BC:
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r2, r5, #0
	mov r0, #0x18
	mul r0, r1
	add r2, #0xb0
	add r0, r2, r0
	mov r1, #1
_021B87CE:
	bl sub_021BA8E8
_021B87D2:
	add r5, #0x28
	ldrb r0, [r5]
	cmp r0, #0x10
	bls _021B87DE
	mov r0, #2
	str r0, [r7, #0x50]
_021B87DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b85a0

	thumb_func_start ovy207_21b87e0
ovy207_21b87e0: ; 0x021B87E0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	add r3, r4, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x4a
	mov r2, #0
	add r3, #0x34
	bl sub_0204B32C
	str r0, [r4, #0x38]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x4b
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x3c
	bl sub_0204B32C
	str r0, [r4, #0x40]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x4c
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x44
	bl sub_0204B32C
	str r0, [r4, #0x48]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x4d
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x4c
	bl sub_0204B32C
	str r0, [r4, #0x50]
	ldrh r0, [r5]
	add r3, r4, #0
	mov r1, #0x4e
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, #0x54
	bl sub_0204B32C
	mov r1, #0x5d
	str r0, [r4, #0x58]
	lsl r1, r1, #2
	ldrh r0, [r5]
	ldr r1, [r5, r1]
	bl ovy207_21ba900
	add r4, #0xa4
	str r0, [r4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21b87e0

	thumb_func_start ovy207_21b8864
ovy207_21b8864: ; 0x021B8864
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4]
	cmp r2, #1
	bne _021B8880
	ldr r2, [r0, #8]
	ldrb r2, [r2, #0xd]
	cmp r2, #2
	bne _021B887C
	bl ovy207_21b96b8
	b _021B8880
_021B887C:
	bl ovy207_21b8ba4
_021B8880:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy207_21ba930
	ldr r0, [r4, #0x38]
	bl GFL_HeapFree
	ldr r0, [r4, #0x40]
	bl GFL_HeapFree
	ldr r0, [r4, #0x48]
	bl GFL_HeapFree
	ldr r0, [r4, #0x50]
	bl GFL_HeapFree
	ldr r0, [r4, #0x58]
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21b8864

	thumb_func_start ovy207_21b88ac
ovy207_21b88ac: ; 0x021B88AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x9f
	add r7, sp, #0x14
	strh r0, [r7]
	mov r3, #0x34
	add r6, r1, #0
	strh r3, [r7, #2]
	mov r1, #0xa
	strb r1, [r7, #6]
	mov r1, #1
	strb r1, [r7, #7]
	mov r4, #0
	add r2, r5, #0
	strh r4, [r7, #4]
	add r1, sp, #0x14
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r1, [r5]
	add r0, #0xd5
	add r2, #0xac
	str r1, [sp, #8]
	add r1, r5, #0
	add r1, #0xe4
	add r3, #0xe0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r1, r6, #0
	add r1, #0x90
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #0xac
	add r1, r5, #0
	add r2, r5, #0
	mov r3, #0x38
	str r0, [sp, #0xc]
	strh r0, [r7]
	mov r0, #0x38
	str r0, [sp, #0x10]
	strh r0, [r7, #2]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xd8
	add r2, #0xa8
	str r0, [sp, #8]
	mov r0, #0xac
	add r0, #0xc8
	add r3, #0xd4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r1, r6, #0
	add r1, #0x94
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	add r1, r5, #0
	add r2, r5, #0
	mov r3, #0x38
	strb r4, [r7, #7]
	add r0, sp, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xec
	add r2, #0xc4
	str r0, [sp, #8]
	mov r0, #0xac
	add r0, #0xc8
	add r3, #0xe4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r1, r6, #0
	add r1, #0x98
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	mov r0, #5
	strh r0, [r7, #4]
	mov r0, #8
	strb r0, [r7, #6]
	add r0, sp, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	mov r0, #0xac
	mov r3, #0x38
	add r0, #0xc8
	add r1, #0xec
	add r2, #0xc4
	add r3, #0xe4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r1, r6, #0
	add r1, #0x9c
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl Oam_EnableOamAnim
	mov r0, #2
	strh r0, [r7, #4]
	mov r0, #4
	strb r0, [r7, #6]
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r5, #0
	add r3, #0xe4
	strb r4, [r7, #7]
	add r0, sp, #0x14
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xec
	add r2, #0xc4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, #0xc8
	str r0, [sp, #0xc]
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	add r1, r6, #0
	add r1, #0xa0
	str r0, [r1]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	bl Oam_EnableOamAnim
	add r0, r6, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bls _021B8A2E
	add r7, r6, #0
	add r7, #0xb0
_021B8A0E:
	mov r2, #0x18
	mul r2, r4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, r2
	add r3, r4, #0
	bl ovy207_21ba56c
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B8A0E
_021B8A2E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b88ac

	thumb_func_start ovy207_21b8a34
ovy207_21b8a34: ; 0x021B8A34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B8A68
	add r6, r5, #0
	add r6, #0xb0
_021B8A4A:
	mov r2, #0x18
	mul r2, r4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, r2
	bl ovy207_21ba624
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B8A4A
_021B8A68:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	bl Oam_RemoveOam
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	bl Oam_RemoveOam
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	bl Oam_RemoveOam
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl Oam_RemoveOam
	add r5, #0xa0
	ldr r0, [r5]
	bl Oam_RemoveOam
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b8a34

	thumb_func_start ovy207_21b8a9c
ovy207_21b8a9c: ; 0x021B8A9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, _021B8B2C ; =0x021BB14E
	str r0, [sp, #0xc]
	add r5, r1, #0
	mov r4, #0
_021B8AA8:
	lsl r6, r4, #2
	add r3, r7, r6
	ldrb r0, [r3, #3]
	ldrb r2, [r3, #1]
	ldrb r1, [r7, r6]
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r3, [r3, #2]
	mov r0, #4
	bl BmpWin_CreateDynamic
	add r1, r5, r6
	str r0, [r1, #0x5c]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xd
	blo _021B8AA8
	ldr r0, [r5, #0x60]
	mov r1, #0xd
	bl sub_02048508
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl ovy207_21b8c90
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B8B12
	add r6, r5, #0
	add r6, #0xb0
	mov r7, #0x18
_021B8AF4:
	add r2, r4, #0
	mul r2, r7
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r6, r2
	bl ovy207_21ba640
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B8AF4
_021B8B12:
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x29
	strb r1, [r0]
	mov r0, #1
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #0x20]
	add r5, #0x28
	strb r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8B2C: .word 0x021BB14E
	thumb_func_end ovy207_21b8a9c

	thumb_func_start ovy207_21b8b30
ovy207_21b8b30: ; 0x021B8B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r4, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b8ca4
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bls _021B8B94
	add r7, r5, #0
	add r7, #0xb0
_021B8B76:
	mov r2, #0x18
	mul r2, r4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, r2
	bl ovy207_21ba7d4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B8B76
_021B8B94:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #4
	bl Oam_SetOamAnimIndex
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b8b30

	thumb_func_start ovy207_21b8ba4
ovy207_21b8ba4: ; 0x021B8BA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B8BD8
	add r6, r5, #0
	add r6, #0xb0
_021B8BBA:
	mov r2, #0x18
	mul r2, r4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, r2
	bl ovy207_21ba858
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B8BBA
_021B8BD8:
	mov r4, #0
_021B8BDA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl BmpWin_Free
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xd
	blo _021B8BDA
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b8ba4

	thumb_func_start ovy207_21b8bf4
ovy207_21b8bf4: ; 0x021B8BF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B8C2A
	add r7, r5, #0
	add r7, #0xb0
_021B8C0C:
	mov r2, #0x18
	mul r2, r4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, r2
	bl ovy207_21ba86c
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B8C0C
_021B8C2A:
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #1
	bl GFL_BGSysLoadScr
	mov r0, #4
	mov r1, #0
	bl sub_02045790
	mov r0, #4
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x94
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0204C124
	sub r4, #0x1c
	ldr r0, [r6, r4]
	mov r1, #1
	bl Oam_SetOamAnimIndex
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b8bf4

	thumb_func_start ovy207_21b8c90
ovy207_21b8c90: ; 0x021B8C90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy207_21b8f10
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b9264
	pop {r3, r4, r5, pc}
	thumb_func_end ovy207_21b8c90

	thumb_func_start ovy207_21b8ca4
ovy207_21b8ca4: ; 0x021B8CA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0
	mov r4, #0
	bl sub_02045790
_021B8CB6:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r5, [r0, #0x5c]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl BmpWin_FlushMap
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	bls _021B8CB6
	ldr r2, [r6, #0x3c]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02045B7C
	mov r0, #3
	str r0, [sp]
	ldr r0, [r6, #0x4c]
	mov r1, #0
	add r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	mov r2, #0
	mov r3, #0x20
	bl sub_020454D4
	mov r0, #5
	bl sub_02045B7C
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r6, #0x94
	ldr r0, [r6]
	mov r1, #0
	bl sub_0204C124
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r7, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r7, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b8ca4

	thumb_func_start sub_021B8D48
sub_021B8D48: ; 0x021B8D48
	ldr r3, _021B8D4C ; =ovy207_21b92f0
	bx r3
	.align 2, 0
_021B8D4C: .word ovy207_21b92f0
	thumb_func_end sub_021B8D48

	thumb_func_start ovy207_21b8d50
ovy207_21b8d50: ; 0x021B8D50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r6, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #0
	bl sub_02045790
	mov r5, #8
_021B8D62:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r7, [r0, #0x5c]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl BmpWin_FlushMap
	add r0, r7, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xb
	bls _021B8D62
	ldr r2, [r4, #0x44]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	mov r3, #0
	mov r5, #0
	bl sub_02044FB0
	ldr r2, [r4, #0x44]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	bl sub_02045054
	mov r0, #6
	bl sub_02045B7C
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x54]
	mov r1, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #5
	mov r2, #0
	mov r3, #0x20
	bl sub_020454D4
	mov r0, #5
	bl sub_02045B7C
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bls _021B8E18
	add r7, r4, #0
	add r7, #0xb0
_021B8DFA:
	mov r2, #0x18
	mul r2, r5
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, r2
	bl ovy207_21ba7d4
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r5, r0
	blo _021B8DFA
_021B8E18:
	add r0, r6, #0
	bl ovy207_21b4d9c
	add r4, r0, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CD88
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xaf
	mov r2, #0
	mov r4, #0xaf
	bl sub_0201CD88
	add r7, r0, #0
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0xaf
	add r0, #0x81
	ldr r0, [r1, r0]
	add r1, sp, #0x40
	bl sub_0204BB58
	mov r0, #0xaf
	add r0, #0xe9
	ldr r0, [r6, r0]
	add r1, sp, #0x40
	bl sub_0204C3E4
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r4, #0xe9
	add r1, r0, #0
	ldr r0, [r6, r4]
	mov r2, #1
	bl sub_0204C378
	mov r4, #0xd0
	add r0, sp, #0x18
	strh r4, [r0]
	mov r1, #0x78
	strh r1, [r0, #2]
	mov r0, #0xd0
	add r0, #0xc8
	ldr r0, [r6, r0]
	add r1, sp, #0x18
	mov r2, #0
	bl Oam_SetSpritePosData
	mov r0, #0xd0
	add r0, #0xc8
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0xd0
	add r0, #0xc8
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0204C468
	cmp r5, r7
	beq _021B8F00
	lsl r0, r7, #2
	add r1, r6, r0
	mov r0, #0x78
	add r0, #0xb8
	ldr r0, [r1, r0]
	add r5, sp, #0x1c
	add r1, r5, #0
	bl sub_0204BB58
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl sub_0204C3E4
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r4, #0xcc
	add r1, r0, #0
	ldr r0, [r6, r4]
	mov r2, #1
	bl sub_0204C378
	mov r4, #0xf0
	add r0, sp, #0x18
	strh r4, [r0]
	mov r1, #0x78
	strh r1, [r0, #2]
	mov r0, #0xf0
	add r0, #0xac
	ldr r0, [r6, r0]
	add r1, sp, #0x18
	mov r2, #0
	bl Oam_SetSpritePosData
	mov r0, #0xf0
	add r0, #0xac
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_0204C124
	add r4, #0xac
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0204C468
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
_021B8F00:
	add r4, #0xcc
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b8d50

	thumb_func_start ovy207_21b8f10
ovy207_21b8f10: ; 0x021B8F10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	add r4, r1, #0
	bl ovy207_21b4ddc
	mov r1, #0x70
	mov r2, #0
	str r0, [sp, #0xc]
	bl sub_0201CCF8
	add r7, r0, #0
	mov r6, #1
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x5c]
	add r0, r5, #0
	mov r2, #0x6e
	mov r3, #0x19
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x59
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x5c]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r3, #0x77
	bl ovy207_21b5040
	ldr r0, [sp, #0x10]
	bl GFL_WordSetSystemFree
	mov r0, #0x11
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x5c]
	add r0, r5, #0
	mov r2, #0x75
	mov r3, #0x5d
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x79
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x5c]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x76
	bl ovy207_21b5040
	ldr r0, [sp, #0x14]
	bl GFL_WordSetSystemFree
	lsl r2, r7, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl ovy207_21ba53c
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	mov r2, #0x6f
	add r3, r6, #0
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	mov r1, #0xa2
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x69
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x64]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	mov r3, #0x78
	bl ovy207_21b5040
	ldr r0, [sp, #0x18]
	bl GFL_WordSetSystemFree
	lsl r2, r7, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #2
	bl ovy207_21ba53c
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x68]
	add r0, r5, #0
	mov r2, #0x70
	add r3, r6, #0
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r1, #0xa3
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x69
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x68]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	mov r3, #0x79
	bl ovy207_21b5040
	ldr r0, [sp, #0x1c]
	bl GFL_WordSetSystemFree
	lsl r2, r7, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #3
	bl ovy207_21ba53c
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x6c]
	add r0, r5, #0
	mov r2, #0x71
	add r3, r6, #0
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	mov r1, #0xa5
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x69
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x6c]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x7a
	bl ovy207_21b5040
	ldr r0, [sp, #0x20]
	bl GFL_WordSetSystemFree
	lsl r2, r7, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #4
	bl ovy207_21ba53c
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x70]
	add r0, r5, #0
	mov r2, #0x72
	add r3, r6, #0
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	mov r1, #0xa6
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x24]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x69
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x70]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	mov r3, #0x7b
	bl ovy207_21b5040
	ldr r0, [sp, #0x24]
	bl GFL_WordSetSystemFree
	lsl r2, r7, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	mov r3, #5
	bl ovy207_21ba53c
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x74]
	add r0, r5, #0
	mov r2, #0x73
	add r3, r6, #0
	bl ovy207_21b4ec4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl sub_0201CCF8
	add r2, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0x28]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl StringSetNumber
	mov r0, #0x69
	str r0, [sp]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [r4, #0x74]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	mov r3, #0x7c
	mov r7, #0x7c
	bl ovy207_21b5040
	ldr r0, [sp, #0x28]
	bl GFL_WordSetSystemFree
	mov r0, #0xf1
	str r6, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r4, #0x78]
	add r0, r5, #0
	mov r2, #0x74
	mov r3, #5
	bl ovy207_21b4ec4
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	mov r2, #0
	bl sub_0201CCF8
	add r2, r7, #0
	str r0, [sp, #0x2c]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, #0xfb
	bl GFL_MsgSysLoadData
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	bl sub_0204898C
	str r0, [sp, #0x34]
	ldr r0, [r4, #0x78]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	mov r2, #5
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r3, #0x11
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02021C7C
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x30]
	bl GFL_MsgDataFree
	add r7, #0xfa
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r7, #0
	bl GFL_MsgSysLoadData
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x38]
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r4, #0x78]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r7, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r5, #0x84
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r2, #0x41
	add r3, r6, #0
	bl sub_02021C7C
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x38]
	bl GFL_MsgDataFree
	str r6, [r4, #4]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b8f10

	thumb_func_start ovy207_21b9264
ovy207_21b9264: ; 0x021B9264
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	bl ovy207_21b4ddc
	mov r1, #0xa1
	mov r2, #0
	add r4, r0, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0203373C
	add r4, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x30
	bl sub_02033724
	add r7, r0, #0
	ldr r0, [r6, #0x60]
	bl BmpWin_GetBitmap
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021B92BA
	mov r0, #7
	mov r4, #8
	b _021B92C8
_021B92BA:
	cmp r4, #1
	bne _021B92C4
	mov r0, #9
	mov r4, #0xa
	b _021B92C8
_021B92C4:
	mov r0, #5
	mov r4, #6
_021B92C8:
	mov r6, #1
	str r6, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #3
	add r3, r7, #0
	bl sub_020470F8
	str r6, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	add r3, r7, #0
	str r4, [sp, #4]
	bl sub_020470F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b9264

	thumb_func_start ovy207_21b92f0
ovy207_21b92f0: ; 0x021B92F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	add r5, r1, #0
	bl ovy207_21b4d9c
	str r0, [sp, #0xc]
	mov r4, #8
	mov r7, #0
_021B9302:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	bls _021B9302
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r0]
	cmp r1, #4
	bhs _021B9334
	ldr r0, [sp, #0xc]
	add r1, #0x36
	add r2, r7, #0
_021B932C:
	bl sub_0201CD88
	add r4, r0, #0
	b _021B935A
_021B9334:
	cmp r1, #0xff
	bne _021B9356
	ldr r1, [r6, #8]
	ldrb r0, [r1, #0xd]
	cmp r0, #2
	bne _021B934E
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #5
	bne _021B934E
	ldrh r4, [r1, #0x14]
	b _021B935A
_021B934E:
	ldr r0, [sp, #0xc]
	mov r1, #0x36
	mov r2, #0
	b _021B932C
_021B9356:
	ldr r0, [r6, #8]
	ldrh r4, [r0, #0x14]
_021B935A:
	mov r7, #1
	mov r0, #0xf1
	str r7, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r1, [r5, #0x7c]
	add r0, r6, #0
	mov r2, #0x95
	mov r3, #1
	bl ovy207_21b4ec4
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02021740
	str r0, [sp, #0x10]
	add r0, #0x10
	lsl r0, r0, #2
	add r0, r6, r0
	add r0, #0x98
	ldr r0, [r0]
	add r1, sp, #0x20
	bl sub_0204BB58
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, sp, #0x20
	bl sub_0204C3E4
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D800
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r2, #1
	bl sub_0204C378
	mov r0, #0xf1
	add r1, r5, #0
	str r7, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r1, #0x80
	ldr r1, [r1]
	add r0, r6, #0
	mov r2, #0x93
	mov r3, #1
	bl ovy207_21b4ec4
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02021730
	str r0, [sp, #0x14]
	cmp r0, #1
	bhi _021B93EE
	mov r0, #0x11
	add r1, r5, #0
	str r7, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r1, #0x80
	ldr r1, [r1]
	add r0, r6, #0
	mov r2, #0x9a
	mov r3, #0x57
	bl ovy207_21b4ec4
	b _021B9426
_021B93EE:
	ldrh r0, [r6]
	bl GFL_WordSetSystemCreateDefault
	str r7, [sp]
	ldr r2, [sp, #0x14]
	mov r1, #0
	mov r3, #3
	str r0, [sp, #0x18]
	str r7, [sp, #4]
	bl StringSetNumber
	mov r0, #0x51
	str r0, [sp]
	mov r0, #0x11
	add r1, r5, #0
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r1, #0x80
	ldr r1, [r1]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	mov r3, #0x96
	bl ovy207_21b4fa0
	ldr r0, [sp, #0x18]
	bl GFL_WordSetSystemFree
_021B9426:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	add r1, r5, #0
	str r0, [sp, #4]
	add r1, #0x84
	ldr r1, [r1]
	add r0, r6, #0
	mov r2, #0x94
	mov r3, #1
	bl ovy207_21b4ec4
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	bl sub_02021280
	add r7, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0202174C
	cmp r0, #1
	beq _021B945C
	cmp r7, #0
	bne _021B9478
_021B945C:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	add r1, r5, #0
	str r0, [sp, #4]
	add r1, #0x84
	ldr r1, [r1]
	add r0, r6, #0
	mov r2, #0x9a
	mov r3, #0x57
	bl ovy207_21b4ec4
	b _021B94B4
_021B9478:
	ldrh r0, [r6]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0
	add r2, r7, #0
	mov r3, #3
	str r0, [sp, #0x1c]
	bl StringSetNumber
	mov r0, #0x51
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	add r1, r5, #0
	str r0, [sp, #8]
	add r1, #0x84
	ldr r1, [r1]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	mov r3, #0x97
	bl ovy207_21b4fa0
	ldr r0, [sp, #0x1c]
	bl GFL_WordSetSystemFree
_021B94B4:
	ldrh r3, [r6]
	ldr r2, _021B950C ; =0x00000192
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r7, r0, #0
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	str r4, [sp]
	add r0, #0x80
	ldr r0, [r0]
	add r6, #0x84
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r6]
	mov r2, #1
	mov r3, #1
	mov r6, #1
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	mov r0, #0
	str r0, [r5, #0xc]
	str r6, [r5, #8]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021B950C: .word 0x00000192
	thumb_func_end ovy207_21b92f0

	thumb_func_start ovy207_21b9510
ovy207_21b9510: ; 0x021B9510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_021B951A:
	ldr r0, _021B960C ; =0x021BB14E
	lsl r6, r4, #2
	add r3, r0, r6
	ldrb r0, [r3, #3]
	ldr r1, _021B960C ; =0x021BB14E
	ldrb r2, [r3, #1]
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r1, [r1, r6]
	ldrb r3, [r3, #2]
	mov r0, #4
	bl BmpWin_CreateDynamic
	add r1, r5, r6
	str r0, [r1, #0x5c]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xd
	blo _021B951A
	ldr r0, [r5, #0x60]
	mov r1, #0xd
	bl sub_02048508
	add r0, r7, #0
	add r1, r5, #0
	bl sub_021B8D48
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B9586
	add r6, r5, #0
	add r6, #0xb0
_021B9568:
	mov r2, #0x18
	mul r2, r4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, r2
	bl ovy207_21ba640
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B9568
_021B9586:
	cmp r0, #5
	bne _021B95F2
	ldrh r3, [r7]
	mov r0, #0xd
	mov r1, #3
	mov r2, #0x20
	bl sub_02046E28
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #6
	add r1, r5, #0
	str r0, [sp, #4]
	add r1, #0xa8
	ldr r1, [r1]
	add r0, r7, #0
	mov r2, #0xc1
	mov r3, #0x34
	bl ovy207_21b4ef0
	mov r1, #0x18
	add r0, sp, #0xc
	strh r1, [r0, #4]
	mov r1, #0xa8
	add r7, #0xb8
	strh r1, [r0, #6]
	ldr r1, [r7]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x18]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	strh r1, [r0, #0x12]
	add r0, r5, #0
	str r1, [sp, #0x20]
	add r0, #0xa8
	ldr r0, [r0]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy207_21ba940
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	mov r1, #0
	bl ovy207_21bab14
_021B95F2:
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x29
	strb r1, [r0]
	mov r0, #1
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #0x20]
	add r5, #0x28
	strb r0, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021B960C: .word 0x021BB14E
	thumb_func_end ovy207_21b9510

	thumb_func_start ovy207_21b9610
ovy207_21b9610: ; 0x021B9610
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x34]
	mov r4, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b8d50
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bls _021B9674
	add r7, r5, #0
	add r7, #0xb0
_021B9656:
	mov r2, #0x18
	mul r2, r4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, r2
	bl ovy207_21ba7d4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B9656
_021B9674:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #4
	mov r4, #4
	bl Oam_SetOamAnimIndex
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #5
	bne _021B9694
	add r0, r5, #0
	add r0, #0x29
	strb r4, [r0]
	b _021B969C
_021B9694:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
_021B969C:
	add r0, r6, #0
	mov r1, #0
	bl ovy207_21b47d4
	add r1, r5, #0
	add r5, #0x29
	ldrb r2, [r5]
	add r0, r6, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b9610

	thumb_func_start ovy207_21b96b8
ovy207_21b96b8: ; 0x021B96B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #5
	bne _021B96DC
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl GFL_BitmapFree
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl ovy207_21baaac
_021B96DC:
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B970A
	add r6, r5, #0
	add r6, #0xb0
_021B96EC:
	mov r2, #0x18
	mul r2, r4
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, r2
	bl ovy207_21ba858
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B96EC
_021B970A:
	mov r4, #0
_021B970C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl BmpWin_Free
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xd
	blo _021B970C
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21b96b8

	thumb_func_start ovy207_21b9728
ovy207_21b9728: ; 0x021B9728
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021B975E
	add r7, r5, #0
	add r7, #0xb0
_021B9740:
	mov r2, #0x18
	mul r2, r4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, r2
	bl ovy207_21ba86c
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r4, r0
	blo _021B9740
_021B975E:
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #1
	bl GFL_BGSysLoadScr
	mov r0, #4
	mov r1, #0
	bl sub_02045790
	mov r0, #4
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x94
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0204C124
	sub r4, #0x1c
	ldr r0, [r6, r4]
	mov r1, #1
	bl Oam_SetOamAnimIndex
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21b9728

	thumb_func_start ovy207_21b97c4
ovy207_21b97c4: ; 0x021B97C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r4, r1, #0
	ldrb r2, [r2, #0xd]
	cmp r2, #2
	beq _021B97E4
	bl ovy207_21b9804
	cmp r0, #0
	bne _021B97F4
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b9a38
	b _021B97F4
_021B97E4:
	bl ovy207_21b9d50
	cmp r0, #0
	bne _021B97F4
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b9fac
_021B97F4:
	bl sub_0203DA2C
	cmp r0, #0
	bne _021B9800
	mov r0, #0
	str r0, [r4, #0x1c]
_021B9800:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy207_21b97c4

	thumb_func_start ovy207_21b9804
ovy207_21b9804: ; 0x021B9804
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021B9818
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021B9818:
	ldr r0, [r5, #0x44]
	cmp r0, #1
	bne _021B985C
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	bne _021B98FA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	strb r1, [r5, #0x1c]
	add r0, r5, #0
	mov r1, #0
	bl ovy207_21b47d4
	add r2, r4, #0
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021B8D48
	ldr r0, _021B9A28 ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B985C:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _021B98B8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021B98B8
	add r0, r5, #0
	mov r1, #1
	bl ovy207_21b47d4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	add r0, r4, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r2, r4, #0
	mov r0, #0x18
	mul r0, r1
	add r2, #0xb0
	add r0, r2, r0
	mov r1, #0
	mov r6, #0
	bl sub_021BA8E8
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21b8c90
	ldr r0, _021B9A2C ; =0x00000551
	strb r6, [r5, #0x1c]
	bl GFL_SndSEPlay
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B98B8:
	ldrb r0, [r5, #0x1c]
	cmp r0, #1
	bne _021B98EA
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021B98FA
	mov r3, #0
	add r0, r4, #0
	strb r3, [r5, #0x1c]
	mov r1, #5
	add r0, #0x2a
	strb r1, [r0]
	add r1, r4, #0
	add r4, #0x29
	ldrb r2, [r4]
	add r0, r5, #0
	bl ovy207_21ba2d4
	ldr r0, _021B9A30 ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B98EA:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	bne _021B99A2
	ldr r0, [r5, #8]
	ldrb r0, [r0, #0xd]
	cmp r0, #6
	bne _021B98FC
_021B98FA:
	b _021B9A22
_021B98FC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021B9960
	mov r0, #1
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r2, [r0]
	add r1, r4, #0
	mov r5, #0x18
	add r0, r2, #0
	add r1, #0xb0
	mul r0, r5
	add r0, r1, r0
	mov r1, #2
	bl sub_021BA8E8
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r2, r4, #0
	add r2, #0xb0
	add r1, r0, #0
	mul r1, r5
	add r5, sp, #0
	add r0, r2, r1
	add r1, r5, #0
	bl sub_021BA8C4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r5, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r4, #0x9c
	ldr r0, [r4]
	bl sub_0204C56C
	b _021B9996
_021B9960:
	add r0, r4, #0
	add r0, #0x29
	ldrb r3, [r0]
	add r0, r4, #0
	add r0, #0x2a
	ldrb r2, [r0]
	cmp r2, r3
	beq _021B997C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21ba374
	ldr r0, _021B9A34 ; =0x0000054D
	b _021B9998
_021B997C:
	mov r0, #0
	str r0, [r4, #0x14]
	add r2, r3, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r4, #0x9c
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C124
_021B9996:
	ldr r0, _021B9A28 ; =0x0000054C
_021B9998:
	bl GFL_SndSEPlay
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B99A2:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _021B9A04
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021B9A04
	add r0, r4, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r2, r4, #0
	mov r0, #0x18
	mul r0, r1
	add r2, #0xb0
	add r0, r2, r0
	mov r1, #0
	mov r6, #0
	bl sub_021BA8E8
	add r2, r4, #0
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ovy207_21ba2d4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	str r6, [r4, #0x14]
	mov r0, #5
	add r4, #0x2a
	strb r0, [r4]
	ldr r0, _021B9A2C ; =0x00000551
	bl GFL_SndSEPlay
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B9A04:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x40
	beq _021B9A14
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x80
	bne _021B9A22
_021B9A14:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21ba25c
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B9A22:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B9A28: .word 0x0000054C
_021B9A2C: .word 0x00000551
_021B9A30: .word 0x00000548
_021B9A34: .word 0x0000054D
	thumb_func_end ovy207_21b9804

	thumb_func_start ovy207_21b9a38
ovy207_21b9a38: ; 0x021B9A38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r5, r1, #0
	ldr r1, [r6, #0x24]
	cmp r1, #7
	bne _021B9ACA
	ldr r1, [r6, #0x44]
	cmp r1, #0
	bne _021B9ACA
	mov r1, #1
	bl ovy207_21b47d4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r2, r5, #0
	mov r7, #0x18
	add r1, r0, #0
	add r2, #0xb0
	mul r1, r7
	add r0, r2, r1
	mov r1, #0
	mov r4, #0
	bl sub_021BA8E8
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21b8c90
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021B9ABC
	add r1, r5, #0
	add r1, #0x2a
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0xb0
	add r2, r1, #0
	mul r2, r7
	add r0, r0, r2
	add r1, r4, #0
	bl sub_021BA8E8
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0204C124
	str r4, [r5, #0x14]
	mov r0, #5
	add r5, #0x2a
	strb r0, [r5]
_021B9ABC:
	mov r0, #1
	strb r0, [r6, #0x1c]
	ldr r0, _021B9D44 ; =0x00000551
	bl GFL_SndSEPlay
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021B9ACA:
	add r7, r5, #0
	mov r4, #0
	add r7, #0xb0
_021B9AD0:
	mov r0, #0x18
	mul r0, r4
	lsl r2, r4, #2
	add r1, sp, #8
	add r0, r7, r0
	add r1, r1, r2
	bl sub_021BA884
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021B9AD0
	mov r1, #0xff
	add r0, sp, #0
	strb r1, [r0, #0x1c]
	bl sub_0203DA48
	cmp r0, #1
	bne _021B9BEE
	add r0, sp, #8
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021B9BFC
	add r0, r6, #0
	bl ovy207_21b4d9c
	add r1, r4, #0
	add r1, #0x36
	mov r2, #0
	mov r7, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021B9BFC
	ldr r0, [r6, #0x44]
	cmp r0, #1
	bne _021B9B2C
	add r0, r6, #0
	add r1, r7, #0
	bl ovy207_21b47d4
_021B9B2C:
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0xd]
	cmp r0, #6
	beq _021B9BD4
	ldr r0, [r5, #0x14]
	mov r7, #1
	str r7, [r5, #0x1c]
	cmp r0, #1
	beq _021B9B96
	add r0, r5, #0
	add r0, #0x2a
	strb r4, [r0]
	add r1, r5, #0
	mov r0, #0x18
	add r1, #0xb0
	mul r0, r4
	add r0, r1, r0
	add r1, sp, #0
	bl sub_021BA8C4
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_0204C124
	cmp r4, #0
	bne _021B9B7C
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #3
	b _021B9B92
_021B9B7C:
	cmp r4, #3
	bne _021B9B8A
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #4
	b _021B9B92
_021B9B8A:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #2
_021B9B92:
	bl Oam_SetOamAnimIndex
_021B9B96:
	ldr r0, [r6, #0x28]
	add r1, r5, #0
	str r0, [r5, #0x2c]
	ldr r0, [r6, #0x2c]
	add r1, #0xb0
	str r0, [r5, #0x30]
	mov r0, #0x18
	mul r0, r4
	add r7, sp, #4
	add r0, r1, r0
	add r1, r7, #0
	bl sub_021BA8C4
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r7, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C56C
_021B9BD4:
	lsl r2, r4, #0x18
	mov r3, #1
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	strb r3, [r6, #0x1c]
	bl ovy207_21ba2d4
	ldr r0, _021B9D48 ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021B9BEE:
	bl sub_0203DA2C
	cmp r0, #1
	ldr r0, [r5, #0x1c]
	bne _021B9CEA
	cmp r0, #1
	beq _021B9BFE
_021B9BFC:
	b _021B9D3E
_021B9BFE:
	add r0, sp, #8
	bl sub_0203D9C8
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021B9C66
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021B9C32
	mov r0, #0
	str r0, [r5, #0x1c]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	b _021B9C66
_021B9C32:
	ldr r1, [r5, #0x30]
	ldr r0, [r6, #0x2c]
	sub r0, r1, r0
	bpl _021B9C3C
	neg r0, r0
_021B9C3C:
	cmp r0, #8
	ble _021B9C66
	add r1, r5, #0
	add r1, #0x2a
	ldrb r2, [r1]
	add r0, r5, #0
	mov r1, #0x18
	add r0, #0xb0
	mul r1, r2
	add r0, r0, r1
	mov r1, #2
	bl sub_021BA8E8
	mov r0, #1
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
_021B9C66:
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021B9D3E
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021B9C9C
	add r0, r6, #0
	bl ovy207_21b4d9c
	add r1, r4, #0
	add r1, #0x36
	mov r2, #0
	mov r7, #0
	bl sub_0201CD88
	cmp r0, #0
	beq _021B9D3E
	lsl r2, r4, #0x18
	add r0, r6, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl ovy207_21ba2d4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021B9C9C:
	add r0, r5, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r2, r5, #0
	mov r0, #0x18
	mul r0, r1
	add r2, #0xb0
	add r0, r2, r0
	mov r1, #0
	mov r4, #0
	bl sub_021BA8E8
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r2, r5, #0
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	str r4, [r5, #0x14]
	str r4, [r5, #0x1c]
	bl ovy207_21ba2d4
	mov r0, #5
	add r5, #0x2a
	add sp, #0x20
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B9CEA:
	cmp r0, #1
	bne _021B9D3E
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	mov r4, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021B9D3E
	add r0, r5, #0
	add r0, #0x29
	ldrb r3, [r0]
	add r0, r5, #0
	add r0, #0x2a
	ldrb r2, [r0]
	cmp r2, r3
	beq _021B9D30
	add r0, r6, #0
	add r1, r5, #0
	bl ovy207_21ba374
	ldr r0, _021B9D4C ; =0x0000054D
	bl GFL_SndSEPlay
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021B9D30:
	add r2, r3, #0
	add r0, r6, #0
	add r1, r5, #0
	add r3, r4, #0
	str r4, [r5, #0x14]
	bl ovy207_21ba2d4
_021B9D3E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9D44: .word 0x00000551
_021B9D48: .word 0x0000054C
_021B9D4C: .word 0x0000054D
	thumb_func_end ovy207_21b9a38

	thumb_func_start ovy207_21b9d50
ovy207_21b9d50: ; 0x021B9D50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrb r0, [r5, #0x1c]
	add r4, r1, #0
	cmp r0, #1
	bne _021B9D86
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021B9D86
	mov r3, #0
	strb r3, [r5, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021B9D86
	add r2, r4, #0
	add r2, #0x29
	add r0, r4, #0
	ldrb r2, [r2]
	mov r1, #5
	add r0, #0x2a
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21ba2d4
_021B9D86:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	ldr r0, [r4, #0x18]
	bne _021B9E3C
	cmp r0, #0
	bne _021B9DC2
	mov r0, #0
	strb r0, [r5, #0x1c]
	mov r1, #1
	mov r4, #0x65
	ldr r0, [r5, #8]
	str r1, [r5, #0x54]
	strb r1, [r0, #0x12]
	mov r0, #2
	lsl r4, r4, #2
	str r0, [r5, #0x50]
	ldr r0, [r5, r4]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	ldr r0, [r5, r4]
	add r4, #0xc
	str r0, [r5, r4]
	ldr r0, _021B9FA4 ; =0x00000551
	bl GFL_SndSEPlay
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B9DC2:
	mov r6, #0
	add r1, r4, #0
	strb r6, [r5, #0x1c]
	add r1, #0x2a
	ldrb r2, [r1]
	add r0, r4, #0
	mov r1, #0x18
	add r0, #0xb0
	mul r1, r2
	add r0, r0, r1
	mov r1, #0
	bl sub_021BA8E8
	add r2, r4, #0
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r2, r4, #0
	add r2, #0x29
	add r0, r4, #0
	ldrb r2, [r2]
	mov r1, #5
	add r0, #0x2a
	strb r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	str r6, [r4, #0x18]
	bl ovy207_21ba2d4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy207_21ba480
	ldr r0, _021B9FA4 ; =0x00000551
_021B9E36:
	bl GFL_SndSEPlay
	b _021B9F9E
_021B9E3C:
	cmp r0, #0
	beq _021B9E6E
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	beq _021B9E4A
	b _021B9F9E
_021B9E4A:
	mov r1, #0
	mov r0, #1
	add r2, r4, #0
	strb r1, [r5, #0x1c]
	str r0, [r5, #0x54]
	add r2, #0x2a
	ldrb r3, [r2]
	ldr r2, [r5, #8]
	strb r3, [r2, #0x11]
	ldr r2, [r5, #8]
	strb r1, [r2, #0x12]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #0x1a
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021B9FA8 ; =0x0000054C
	b _021B9E36
_021B9E6E:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	beq _021B9E78
	b _021B9F80
_021B9E78:
	mov r6, #0
	add r0, r4, #0
	strb r6, [r5, #0x1c]
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #4
	bhs _021B9F64
	add r0, r5, #0
	bl ovy207_21b4d9c
	add r1, r4, #0
	add r1, #0x29
	ldrb r1, [r1]
	add r2, r6, #0
	add r1, #0x36
	bl sub_0201CD88
	add r1, r0, #0
	ldr r0, [r5, #8]
	lsl r1, r1, #0x10
	ldrh r2, [r5]
	ldr r0, [r0, #8]
	lsr r1, r1, #0x10
	bl sub_02036000
	add r2, r0, #0
	beq _021B9EB4
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021B9F5A
_021B9EB4:
	ldr r1, [r5, #8]
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	bne _021B9ED8
	mov r3, #1
	add r0, r4, #0
	str r3, [r5, #0x54]
	mov r2, #0
	add r0, #0x29
	strb r2, [r1, #0x12]
	ldrb r1, [r0]
	ldr r0, [r5, #8]
	strb r1, [r0, #0x11]
	mov r0, #0x1a
	str r3, [r4, #0x20]
	lsl r0, r0, #4
	str r2, [r5, r0]
	b _021B9F74
_021B9ED8:
	mov r0, #1
	str r0, [r4, #0x18]
	add r0, r4, #0
	add r0, #0x29
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x2a
	strb r2, [r0]
	add r1, r4, #0
	mov r6, #0x18
	add r0, r2, #0
	add r1, #0xb0
	mul r0, r6
	add r0, r1, r0
	mov r1, #2
	bl sub_021BA8E8
	add r0, r4, #0
	add r2, r4, #0
	mov r1, #4
	add r0, #0x29
	strb r1, [r0]
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r2, r4, #0
	add r2, #0xb0
	add r1, r0, #0
	mul r1, r6
	add r6, sp, #0
	add r0, r2, r1
	add r1, r6, #0
	bl sub_021BA8C4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r6, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy207_21ba480
	b _021B9F74
_021B9F5A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21ba4f4
	b _021B9F7A
_021B9F64:
	mov r1, #1
	ldr r0, [r5, #8]
	str r1, [r5, #0x54]
	strb r1, [r0, #0x12]
	mov r0, #0x1a
	str r1, [r4, #0x20]
	lsl r0, r0, #4
	str r6, [r5, r0]
_021B9F74:
	ldr r0, _021B9FA8 ; =0x0000054C
	bl GFL_SndSEPlay
_021B9F7A:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B9F80:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x40
	beq _021B9F90
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x80
	bne _021B9F9E
_021B9F90:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy207_21ba25c
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021B9F9E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B9FA4: .word 0x00000551
_021B9FA8: .word 0x0000054C
	thumb_func_end ovy207_21b9d50

	thumb_func_start ovy207_21b9fac
ovy207_21b9fac: ; 0x021B9FAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r6, r1, #0
	cmp r0, #7
	bne _021BA070
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _021B9FE8
	mov r1, #1
	mov r4, #0x65
	ldr r0, [r5, #8]
	str r1, [r5, #0x54]
	strb r1, [r0, #0x12]
	mov r0, #2
	lsl r4, r4, #2
	str r0, [r5, #0x50]
	ldr r0, [r5, r4]
	mov r1, #9
	bl Oam_SetOamAnimIndex
	ldr r0, [r5, r4]
	add r4, #0xc
	str r0, [r5, r4]
	ldr r0, _021BA254 ; =0x00000551
	bl GFL_SndSEPlay
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021B9FE8:
	mov r0, #1
	strb r0, [r5, #0x1c]
	add r0, r6, #0
	add r0, #0x2a
	ldrb r1, [r0]
	add r2, r6, #0
	mov r0, #0x18
	mul r0, r1
	add r2, #0xb0
	add r0, r2, r0
	mov r1, #0
	mov r4, #0
	bl sub_021BA8E8
	add r2, r6, #0
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	mov r1, #5
	add r0, #0x2a
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0x2b
	ldrb r0, [r0]
	str r4, [r6, #0x18]
	cmp r0, #5
	bne _021BA04A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #4
	add r3, r4, #0
	bl ovy207_21ba2d4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021B8D48
	b _021BA05C
_021BA04A:
	add r0, r6, #0
	mov r2, #0xff
	add r0, #0x29
	strb r2, [r0]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r4, #0
	bl ovy207_21ba2d4
_021BA05C:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy207_21ba480
	ldr r0, _021BA254 ; =0x00000551
	bl GFL_SndSEPlay
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BA070:
	add r7, r6, #0
	mov r4, #0
	add r7, #0xb0
_021BA076:
	mov r0, #0x18
	mul r0, r4
	lsl r2, r4, #2
	add r1, sp, #4
	add r0, r7, r0
	add r1, r1, r2
	bl sub_021BA884
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021BA076
	mov r7, #0xff
	add r0, sp, #0
	strb r7, [r0, #0x18]
	add r0, sp, #4
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021BA0C8
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _021BA0AE
	b _021BA226
_021BA0AE:
	cmp r4, #4
	blt _021BA0B4
	b _021BA1FC
_021BA0B4:
	add r0, r5, #0
	bl ovy207_21b4d9c
	add r1, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	cmp r0, #0
	bne _021BA0CA
_021BA0C8:
	b _021BA24E
_021BA0CA:
	add r0, r5, #0
	bl ovy207_21b4d9c
	add r1, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	add r1, r0, #0
	ldr r0, [r5, #8]
	lsl r1, r1, #0x10
	ldrh r2, [r5]
	ldr r0, [r0, #8]
	lsr r1, r1, #0x10
	bl sub_02036000
	add r7, r0, #0
	beq _021BA0F4
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021BA1CA
_021BA0F4:
	ldr r3, [r5, #8]
	ldrh r0, [r3, #0x14]
	cmp r0, #0
	bne _021BA136
	mov r2, #1
	str r2, [r5, #0x54]
	mov r1, #0
	strb r1, [r3, #0x12]
	ldr r0, [r5, #8]
	strb r4, [r0, #0x11]
	mov r0, #0x1a
	str r2, [r6, #0x20]
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021BA258 ; =0x0000054C
	bl GFL_SndSEPlay
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ovy207_21ba2d4
	mov r0, #0x18
	add r6, #0xb0
	mul r0, r4
	add r0, r6, r0
	mov r1, #2
	bl sub_021BA8E8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BA136:
	mov r0, #1
	strb r0, [r5, #0x1c]
	lsl r2, r4, #0x18
	str r0, [r6, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r6, #0
	add r0, #0x2a
	strb r4, [r0]
	add r1, r6, #0
	mov r7, #0x18
	add r0, r4, #0
	add r1, #0xb0
	mul r0, r7
	add r0, r1, r0
	mov r1, #2
	bl sub_021BA8E8
	add r0, r6, #0
	add r2, r6, #0
	mov r1, #4
	add r0, #0x29
	strb r1, [r0]
	add r2, #0x29
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r6, #0
	add r0, #0x2a
	ldrb r0, [r0]
	add r2, r6, #0
	add r2, #0xb0
	add r1, r0, #0
	mul r1, r7
	add r4, sp, #0
	add r0, r2, r1
	add r1, r4, #0
	bl sub_021BA8C4
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C56C
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy207_21ba480
	ldr r0, _021BA258 ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BA1CA:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ovy207_21ba2d4
	add r0, r6, #0
	add r0, #0x2a
	strb r4, [r0]
	add r1, r6, #0
	mov r0, #0x18
	add r1, #0xb0
	mul r0, r4
	add r0, r1, r0
	mov r1, #2
	bl sub_021BA8E8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy207_21ba4f4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BA1FC:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	mov r3, #0
	mov r4, #0
	bl ovy207_21ba2d4
	mov r1, #1
	ldr r0, [r5, #8]
	strb r1, [r5, #0x1c]
	str r1, [r5, #0x54]
	strb r1, [r0, #0x12]
	ldr r0, _021BA258 ; =0x0000054C
	str r1, [r6, #0x20]
	add r7, #0xa1
	str r4, [r5, r7]
	bl GFL_SndSEPlay
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BA226:
	cmp r4, #4
	bne _021BA24E
	mov r0, #1
	add r1, r6, #0
	strb r0, [r5, #0x1c]
	str r0, [r5, #0x54]
	add r1, #0x2a
	ldrb r2, [r1]
	ldr r1, [r5, #8]
	add r7, #0xa1
	strb r2, [r1, #0x11]
	ldr r1, [r5, #8]
	mov r2, #0
	strb r2, [r1, #0x12]
	str r0, [r6, #0x20]
	str r0, [r6, #0x24]
	ldr r0, _021BA258 ; =0x0000054C
	str r2, [r5, r7]
	bl GFL_SndSEPlay
_021BA24E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BA254: .word 0x00000551
_021BA258: .word 0x0000054C
	thumb_func_end ovy207_21b9fac

	thumb_func_start ovy207_21ba25c
ovy207_21ba25c: ; 0x021BA25C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl ovy207_21b4d9c
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x29
	ldrb r4, [r0]
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0x40
	bne _021BA27C
	mov r6, #0
	mvn r6, r6
	b _021BA27E
_021BA27C:
	mov r6, #1
_021BA27E:
	ldr r0, _021BA2D0 ; =0x00000548
	bl GFL_SndSEPlay
_021BA284:
	add r4, r4, r6
	bpl _021BA292
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	sub r4, r0, #1
	b _021BA2A0
_021BA292:
	add r0, r5, #0
	add r0, #0x2b
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r4, r0
	ble _021BA2A0
	mov r4, #0
_021BA2A0:
	cmp r4, #4
	bge _021BA2B6
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _021BA2BA
_021BA2B6:
	ldr r0, [r7, #8]
	ldrh r0, [r0, #0x14]
_021BA2BA:
	cmp r0, #0
	beq _021BA284
	lsl r2, r4, #0x18
	add r0, r7, #0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #0
	bl ovy207_21ba2d4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BA2D0: .word 0x00000548
	thumb_func_end ovy207_21ba25c

	thumb_func_start ovy207_21ba2d4
ovy207_21ba2d4: ; 0x021BA2D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0x1c]
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _021BA302
	mov r0, #0x18
	add r1, #0xb0
	mul r0, r4
	add r0, r1, r0
	add r1, sp, #0
	bl sub_021BA8C4
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	b _021BA302
_021BA302:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r1, r0
	bne _021BA324
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021BA336
_021BA324:
	cmp r1, #0xff
	beq _021BA346
	add r0, r5, #0
	mov r2, #0x18
	mul r2, r1
	add r0, #0xb0
	add r0, r0, r2
	mov r1, #0
	b _021BA342
_021BA336:
	add r0, r5, #0
	mov r2, #0x18
	mul r2, r1
	add r0, #0xb0
	add r0, r0, r2
	mov r1, #2
_021BA342:
	bl sub_021BA8E8
_021BA346:
	add r1, r5, #0
	mov r0, #0x18
	add r1, #0xb0
	mul r0, r4
	add r0, r1, r0
	mov r1, #1
	bl sub_021BA8E8
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, r4
	bne _021BA364
	cmp r7, #1
	bne _021BA372
_021BA364:
	add r0, r5, #0
	add r0, #0x29
	strb r4, [r0]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021B8D48
_021BA372:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21ba2d4

	thumb_func_start ovy207_21ba374
ovy207_21ba374: ; 0x021BA374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ovy207_21b4d9c
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ovy207_21b4e0c
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x14]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x3a
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x18]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x3e
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_0201CD88
	add r1, r7, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x20]
	add r0, r7, #0
	str r0, [sp, #8]
	add r0, #0x3a
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r2, #0
	bl sub_0201CD88
	str r0, [sp, #0x24]
	add r0, r7, #0
	str r0, [sp, #4]
	add r0, #0x3e
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl sub_0201CD88
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x28]
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_0201D22C
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0201D22C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x24]
	add r0, r4, #0
	bl sub_0201CD40
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r4, #0
	bl sub_0201CD40
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	bl sub_0201CD40
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0201CD40
	ldr r0, [sp]
	mov r1, #0
	bl ovy207_21b4e0c
	add r4, r7, #0
	mov r0, #0x18
	add r7, r6, #0
	mul r4, r0
	mul r7, r0
	add r0, r5, r7
	add r1, r5, r4
	add r0, #0xc4
	add r1, #0xc4
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_021BAD08
	add r1, r5, r7
	add r1, #0xb4
	mov r0, #1
	str r0, [r1]
	add r1, r5, r4
	add r1, #0xb4
	str r0, [r1]
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_021B8D48
	mov r0, #1
	str r0, [r5, #0x10]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21ba374

	thumb_func_start ovy207_21ba480
ovy207_21ba480: ; 0x021BA480
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x11
	add r5, r1, #0
	lsl r0, r0, #4
	add r4, r5, r0
	cmp r2, #1
	bne _021BA4BC
	ldr r0, [r4, #8]
	mov r1, #0x10
	bl Oam_SetOamAnimIndex
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ovy207_21bab14
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl ovy207_21bab64
	add r5, #0xac
	ldr r0, [r5]
	mov r1, #1
	bl ovy207_21bab14
	pop {r3, r4, r5, r6, r7, pc}
_021BA4BC:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r1, #0
	mov r6, #0
	bl ovy207_21bab14
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r7, #1
	bl sub_0204C124
	add r5, #0x29
	ldrb r0, [r5]
	cmp r0, #4
	bne _021BA4E2
	add r0, r4, #0
	add r1, r7, #0
	b _021BA4E6
_021BA4E2:
	add r0, r4, #0
	add r1, r6, #0
_021BA4E6:
	bl sub_021BA8E8
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ovy207_21bab14
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21ba480

	thumb_func_start ovy207_21ba4f4
ovy207_21ba4f4: ; 0x021BA4F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r4, r2, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r7, #0
	bl BmpWin_BitmapFill
	cmp r4, #1
	bne _021BA52E
	mov r0, #0xf1
	str r7, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r5, #0x8c
	ldr r1, [r5]
	add r0, r6, #0
	mov r2, #0x9c
	add r3, r7, #0
	bl ovy207_21b4ec4
_021BA52E:
	ldr r0, _021BA538 ; =0x00000557
	bl GFL_SndSEPlay
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BA538: .word 0x00000557
	thumb_func_end ovy207_21ba4f4

	thumb_func_start ovy207_21ba53c
ovy207_21ba53c: ; 0x021BA53C
	push {r3, lr}
	add r0, r2, #0
	add r1, r3, #0
	bl sub_0201EDD0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021BA55A
	cmp r0, #0
	beq _021BA560
	cmp r0, #1
	bne _021BA560
	ldr r0, _021BA568 ; =0x00003D20
	pop {r3, pc}
_021BA55A:
	mov r0, #0xf5
	lsl r0, r0, #6
	pop {r3, pc}
_021BA560:
	mov r0, #0xf1
	lsl r0, r0, #6
	pop {r3, pc}
	nop
_021BA568: .word 0x00003D20
	thumb_func_end ovy207_21ba53c

	thumb_func_start ovy207_21ba56c
ovy207_21ba56c: ; 0x021BA56C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #0
	str r0, [r4, #4]
	ldr r1, _021BA61C ; =0x021BB144
	lsl r0, r3, #1
	ldrb r1, [r1, r0]
	strb r3, [r4]
	add r6, sp, #0xc
	lsl r1, r1, #3
	strh r1, [r6]
	ldr r1, _021BA620 ; =0x021BB145
	mov r7, #0x5d
	ldrb r0, [r1, r0]
	lsl r7, r7, #2
	add r1, r5, #0
	lsl r0, r0, #3
	strh r0, [r6, #2]
	mov r0, #0xa
	strb r0, [r6, #6]
	mov r0, #0
	strb r0, [r6, #7]
	ldrb r0, [r4]
	add r2, r5, #0
	add r3, r7, #0
	strh r0, [r6, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, #0xe8
	add r2, #0xb0
	str r0, [sp, #8]
	sub r3, #0x5c
	ldr r0, [r5, r7]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r4, #8]
	bl sub_0204C124
	ldrb r0, [r4]
	add r2, r5, #0
	ldr r1, _021BA61C ; =0x021BB144
	lsl r0, r0, #1
	ldrb r1, [r1, r0]
	add r2, #0xa4
	lsl r1, r1, #3
	add r1, #0x1a
	strh r1, [r6]
	ldr r1, _021BA620 ; =0x021BB145
	ldrb r0, [r1, r0]
	add r1, r7, #0
	sub r1, #0x44
	lsl r0, r0, #3
	add r0, #9
	strh r0, [r6, #2]
	mov r0, #8
	strb r0, [r6, #6]
	mov r0, #0
	strb r0, [r6, #7]
	strh r0, [r6, #4]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, r7]
	sub r7, #0x68
	ldr r1, [r5, r1]
	ldr r2, [r2]
	ldr r3, [r5, r7]
	bl Oam_CreateSprite
	mov r1, #0
	str r0, [r4, #0xc]
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021BA61C: .word 0x021BB144
_021BA620: .word 0x021BB145
	thumb_func_end ovy207_21ba56c

	thumb_func_start ovy207_21ba624
ovy207_21ba624: ; 0x021BA624
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #8]
	bl Oam_RemoveOam
	ldr r0, [r4, #0xc]
	bl Oam_RemoveOam
	mov r0, #0xff
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21ba624

	thumb_func_start sub_021BA63C
sub_021BA63C: ; 0x021BA63C
	bx lr
	.align 2, 0
	thumb_func_end sub_021BA63C

	thumb_func_start ovy207_21ba640
ovy207_21ba640: ; 0x021BA640
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	bl ovy207_21b4d9c
	ldrb r1, [r4]
	add r6, r0, #0
	cmp r1, #4
	bhs _021BA67C
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	ldrb r1, [r4]
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_0201CD88
	ldrb r1, [r4]
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x42
	mov r2, #0
	bl sub_0201CD88
	b _021BA68A
_021BA67C:
	ldr r0, [r5, #8]
	mov r1, #5
	ldrh r0, [r0, #0x14]
	str r0, [sp, #0x14]
	bl sub_02021280
	str r0, [sp, #0x10]
_021BA68A:
	str r0, [sp, #0xc]
	ldrh r3, [r5]
	mov r0, #0xb
	mov r1, #4
	mov r2, #0x20
	bl sub_02046E28
	str r0, [r4, #0x10]
	ldrh r3, [r5]
	ldr r2, _021BA7C8 ; =0x00000193
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	bl sub_0204898C
	mov r6, #0x11
	str r0, [sp, #0x1c]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	lsl r6, r6, #6
	str r0, [sp, #4]
	add r0, r5, #0
	str r6, [sp, #8]
	add r0, #0x84
	ldr r0, [r0]
	ldr r1, [r4, #0x10]
	mov r2, #3
	mov r3, #2
	bl sub_02021C7C
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x18]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021BA770
	mov r0, #0x11
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #0x87
	mov r3, #0xd
	bl ovy207_21b4e84
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	str r0, [sp, #0x20]
	bl StringSetNumber
	mov r0, #0x39
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [r4, #0x10]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r3, #0x88
	bl ovy207_21b4fd0
	ldr r0, [sp, #0x20]
	bl GFL_WordSetSystemFree
	mov r0, #0x11
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #0x75
	mov r3, #0x39
	bl ovy207_21b4e84
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #0
	mov r3, #3
	str r0, [sp, #0x24]
	bl StringSetNumber
	mov r0, #0x3d
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [r4, #0x10]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	mov r3, #0x8d
	bl ovy207_21b4f44
	ldr r0, [sp, #0x24]
	bl GFL_WordSetSystemFree
	b _021BA782
_021BA770:
	mov r0, #0x11
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #0x99
	mov r3, #0x31
	bl ovy207_21b4e84
_021BA782:
	ldrb r0, [r4]
	ldr r1, _021BA7CC ; =0x021BB144
	add r5, #0xb8
	lsl r0, r0, #1
	ldrb r1, [r1, r0]
	add r7, #0xa4
	add r1, r1, #5
	lsl r2, r1, #3
	add r1, sp, #0x28
	strh r2, [r1, #4]
	ldr r2, _021BA7D0 ; =0x021BB145
	ldrb r0, [r2, r0]
	mov r2, #0
	lsl r0, r0, #3
	strh r0, [r1, #6]
	ldr r0, [r5]
	str r0, [sp, #0x30]
	str r2, [sp, #0x34]
	mov r0, #6
	strb r0, [r1, #0x10]
	strb r2, [r1, #0x11]
	strh r2, [r1, #0x12]
	str r2, [sp, #0x3c]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x28
	str r0, [sp, #0x28]
	ldr r0, [r7]
	bl ovy207_21ba940
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #4]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BA7C8: .word 0x00000193
_021BA7CC: .word 0x021BB144
_021BA7D0: .word 0x021BB145
	thumb_func_end ovy207_21ba640

	thumb_func_start ovy207_21ba7d4
ovy207_21ba7d4: ; 0x021BA7D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r2, #0
	add r5, r0, #0
	bl ovy207_21b4d9c
	ldrb r1, [r4]
	cmp r1, #4
	bhs _021BA7F0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CD88
	b _021BA7F4
_021BA7F0:
	ldr r0, [r5, #8]
	ldrh r0, [r0, #0x14]
_021BA7F4:
	ldr r1, [r4, #4]
	cmp r1, #1
	bne _021BA852
	cmp r0, #0
	beq _021BA838
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02021720
	add r6, r0, #0
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r5, sp, #0
	add r1, r5, #0
	bl sub_0204BB58
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0204C3E4
	add r0, r6, #0
	bl sub_0202D7E8
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	mov r2, #1
	bl sub_0204C378
	ldr r0, [r4, #0xc]
	mov r1, #1
	b _021BA83C
_021BA838:
	ldr r0, [r4, #0xc]
	mov r1, #0
_021BA83C:
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	bl ovy207_21bab64
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0
	str r0, [r4, #4]
_021BA852:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy207_21ba7d4

	thumb_func_start ovy207_21ba858
ovy207_21ba858: ; 0x021BA858
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #0x10]
	bl GFL_BitmapFree
	ldr r0, [r4, #0x14]
	bl ovy207_21baaac
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21ba858

	thumb_func_start ovy207_21ba86c
ovy207_21ba86c: ; 0x021BA86C
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy207_21ba86c

	thumb_func_start sub_021BA884
sub_021BA884: ; 0x021BA884
	ldrb r2, [r0]
	cmp r2, #5
	bhs _021BA8AE
	lsl r3, r2, #1
	ldr r2, _021BA8BC ; =0x021BB145
	ldrb r2, [r2, r3]
	lsl r2, r2, #3
	strb r2, [r1]
	ldrb r2, [r1]
	add r2, #0x20
	strb r2, [r1, #1]
	ldrb r0, [r0]
	lsl r2, r0, #1
	ldr r0, _021BA8C0 ; =0x021BB144
	ldrb r0, [r0, r2]
	lsl r0, r0, #3
	strb r0, [r1, #2]
	ldrb r0, [r1, #2]
	add r0, #0x88
	strb r0, [r1, #3]
	bx lr
_021BA8AE:
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	bx lr
	nop
_021BA8BC: .word 0x021BB145
_021BA8C0: .word 0x021BB144
	thumb_func_end sub_021BA884

	thumb_func_start sub_021BA8C4
sub_021BA8C4: ; 0x021BA8C4
	ldrb r2, [r0]
	lsl r3, r2, #1
	ldr r2, _021BA8E0 ; =0x021BB144
	ldrb r2, [r2, r3]
	lsl r2, r2, #3
	strh r2, [r1]
	ldrb r0, [r0]
	lsl r2, r0, #1
	ldr r0, _021BA8E4 ; =0x021BB145
	ldrb r0, [r0, r2]
	lsl r0, r0, #3
	strh r0, [r1, #2]
	bx lr
	nop
_021BA8E0: .word 0x021BB144
_021BA8E4: .word 0x021BB145
	thumb_func_end sub_021BA8C4

	thumb_func_start sub_021BA8E8
sub_021BA8E8: ; 0x021BA8E8
	add r2, r0, #0
	ldrb r3, [r2]
	ldr r0, [r2, #8]
	lsl r2, r1, #2
	add r1, r1, r2
	add r1, r3, r1
	lsl r1, r1, #0x10
	ldr r3, _021BA8FC ; =Oam_SetOamAnimIndex
	lsr r1, r1, #0x10
	bx r3
	.align 2, 0
_021BA8FC: .word Oam_SetOamAnimIndex
	thumb_func_end sub_021BA8E8

	thumb_func_start ovy207_21ba900
ovy207_21ba900: ; 0x021BA900
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x5d
	str r1, [sp]
	ldr r3, _021BA92C ; =0x021BB6F4
	mov r1, #0x14
	mov r2, #1
	add r5, r0, #0
	bl GFL_HeapAllocate
	strh r5, [r0, #4]
	mov r3, #0
	str r4, [r0]
	sub r2, r3, #1
_021BA91C:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #3
	blt _021BA91C
	pop {r3, r4, r5, pc}
	nop
_021BA92C: .word 0x021BB6F4
	thumb_func_end ovy207_21ba900

	thumb_func_start ovy207_21ba930
ovy207_21ba930: ; 0x021BA930
	push {r4, lr}
	add r4, r0, #0
	bl ovy207_21bad7c
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy207_21ba930

	thumb_func_start ovy207_21ba940
ovy207_21ba940: ; 0x021BA940
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0x2c
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	mov r0, #0x8a
	str r0, [sp]
	ldrh r0, [r5, #4]
	ldr r3, _021BAAA8 ; =0x021BB6F4
	mov r1, #0x24
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [sp, #0x24]
	ldr r0, [r4]
	ldr r1, [sp, #0x24]
	str r0, [r1]
	bl sub_02046EF8
	lsl r0, r0, #0x12
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl sub_02046EFC
	lsl r0, r0, #0x13
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl sub_02046EF8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1a
	sub r1, r1, r2
	mov r0, #0x1a
	ror r1, r0
	add r0, r2, r1
	beq _021BA9A0
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_021BA9A0:
	ldr r0, [r4]
	bl sub_02046EFC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	beq _021BA9BE
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
_021BA9BE:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r1, #0x22
	strb r0, [r1]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r1, #0x23
	strb r0, [r1]
	ldrh r1, [r4, #0x12]
	ldr r0, [sp, #0x24]
	strh r1, [r0, #0x20]
	ldr r1, [r4, #0x14]
	str r1, [r0, #0x10]
	ldrh r1, [r5, #4]
	mov r0, #0x4d
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bls _021BAA9A
_021BA9EC:
	ldr r0, [sp, #0x14]
	mov r6, #0
	cmp r0, #0
	bls _021BAA8A
	ldr r1, [sp, #0x1c]
	mul r0, r1
	lsl r1, r0, #2
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #5
	str r0, [sp, #0xc]
_021BAA06:
	ldr r1, [r4, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl ovy207_21bad14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsl r1, r6, #2
	add r7, r0, r1
	ldrh r0, [r5, #4]
	ldr r3, [r4, #0x14]
	mov r1, #9
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r2, #0
	bl Oam_LoadNCGRFile
	str r0, [r7, #0x14]
	mov r0, #4
	ldrsh r1, [r4, r0]
	lsl r0, r6, #6
	ldr r3, [sp, #0x28]
	add r1, r1, r0
	add r0, sp, #0x2c
	strh r1, [r0]
	mov r0, #6
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	lsl r3, r3, #2
	add r1, r1, r0
	add r0, sp, #0x2c
	strh r1, [r0, #2]
	ldrb r1, [r4, #0x10]
	add r3, r5, r3
	ldr r2, [r4, #8]
	strb r1, [r0, #6]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #7]
	add r0, sp, #0x2c
	str r0, [sp]
	ldrh r0, [r4, #0x12]
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r7, #0x14]
	ldr r3, [r3, #8]
	bl Oam_CreateSprite
	str r0, [r7, #4]
	ldr r0, [sp, #0x24]
	lsl r1, r6, #2
	add r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0204C378
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x14]
	cmp r6, r0
	blo _021BAA06
_021BAA8A:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	blo _021BA9EC
_021BAA9A:
	ldr r0, [sp, #0x18]
	bl GFL_ArcToolFree
	ldr r0, [sp, #0x24]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021BAAA8: .word 0x021BB6F4
	thumb_func_end ovy207_21ba940

	thumb_func_start ovy207_21baaac
ovy207_21baaac: ; 0x021BAAAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x23
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	bls _021BAB0A
	add r7, r6, #0
_021BAABC:
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r4, r7, #0
	cmp r0, #0
	bls _021BAAFA
_021BAAC8:
	mul r0, r6
	add r0, r4, r0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	mul r0, r6
	add r0, r4, r0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl Oam_RemoveOam
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	blo _021BAAC8
_021BAAFA:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r6, r0
	blo _021BAABC
_021BAB0A:
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21baaac

	thumb_func_start ovy207_21bab14
ovy207_21bab14: ; 0x021BAB14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x23
	ldrb r0, [r0]
	add r7, r1, #0
	mov r6, #0
	cmp r0, #0
	bls _021BAB60
_021BAB24:
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021BAB50
_021BAB30:
	mul r0, r6
	add r0, r4, r0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r4, r0
	blo _021BAB30
_021BAB50:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r6, r0
	blo _021BAB24
_021BAB60:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21bab14

	thumb_func_start ovy207_21bab64
ovy207_21bab64: ; 0x021BAB64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	ldr r0, [r7]
	bl sub_02046EF4
	str r0, [sp, #0x1c]
	ldr r0, [r7]
	bl sub_02046F00
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	blx DC_FlushRange
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _021BAB8A
	ldr r0, _021BAC94 ; =0x0207571D
	b _021BAB8C
_021BAB8A:
	ldr r0, _021BAC98 ; =0x02075769
_021BAB8C:
	str r0, [sp]
	ldr r0, [r7]
	bl sub_02046EF8
	lsr r4, r0, #3
	ldr r0, [r7]
	bl sub_02046EFC
	lsr r0, r0, #3
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	ldr r0, [r7]
	add r6, r2, r1
	bl sub_02046EF8
	lsr r2, r0, #0x1f
	lsl r0, r0, #0x1a
	sub r0, r0, r2
	mov r1, #0x1a
	ror r0, r1
	add r2, r2, r0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	lsl r0, r0, #5
	str r0, [sp, #8]
	bne _021BABD0
	str r1, [sp, #8]
	add r1, #0xe6
	str r1, [sp, #8]
_021BABD0:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	ble _021BAC90
	lsl r0, r4, #5
	str r0, [sp, #4]
_021BABE6:
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	ble _021BAC76
_021BABF4:
	ldr r1, [sp, #0x18]
	sub r2, r0, #1
	cmp r1, r2
	bne _021BAC00
	ldr r1, [sp, #8]
	b _021BAC04
_021BAC00:
	mov r1, #1
	lsl r1, r1, #8
_021BAC04:
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x18]
	ldr r1, [r7, #0x10]
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r7, r0
	ldr r0, [r0, #0x14]
	bl sub_0204BB80
	add r4, r0, #0
	mov r5, #0
_021BAC20:
	add r0, r7, #0
	add r0, #0x23
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _021BAC36
	cmp r6, #0
	beq _021BAC36
	cmp r5, r6
	bge _021BAC52
_021BAC36:
	ldr r0, [sp, #4]
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldr r3, [sp]
	add r0, r0, r1
	add r1, r4, #0
	blx r3
	mov r0, #1
	lsl r0, r0, #8
	add r4, r4, r0
_021BAC52:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021BAC20
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r0, #0x22
	ldrb r0, [r0]
	ldr r1, [sp, #0x18]
	cmp r1, r0
	blt _021BABF4
_021BAC76:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r0, #0x23
	ldrb r1, [r0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blt _021BABE6
_021BAC90:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BAC94: .word 0x0207571D
_021BAC98: .word 0x02075769
	thumb_func_end ovy207_21bab64

	thumb_func_start ovy207_21bac9c
ovy207_21bac9c: ; 0x021BAC9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	add r5, r0, #0
	str r2, [sp, #4]
	add r0, #0x23
	ldrb r0, [r0]
	mov r6, #0
	cmp r0, #0
	ble _021BAD02
_021BACB0:
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021BACF6
	ldr r0, [sp, #4]
	lsl r1, r6, #5
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_021BACC6:
	ldr r0, [sp]
	lsl r1, r4, #6
	add r1, r0, r1
	add r0, sp, #8
	strh r1, [r0]
	strh r7, [r0, #2]
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	ldrh r2, [r5, #0x20]
	add r1, sp, #8
	mul r0, r6
	add r0, r4, r0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl Oam_SetSpritePosData
	add r0, r5, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021BACC6
_021BACF6:
	add r0, r5, #0
	add r0, #0x23
	ldrb r0, [r0]
	add r6, r6, #1
	cmp r6, r0
	blt _021BACB0
_021BAD02:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy207_21bac9c

	thumb_func_start sub_021BAD08
sub_021BAD08: ; 0x021BAD08
	ldr r3, [r0]
	ldr r2, [r1]
	str r2, [r0]
	str r3, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BAD08

	thumb_func_start ovy207_21bad14
ovy207_21bad14: ; 0x021BAD14
	push {r4, r5, r6, lr}
	add r3, r0, #0
	cmp r1, #0
	bne _021BAD22
	mov r0, #1
	lsl r0, r0, #0x1a
	b _021BAD24
_021BAD22:
	ldr r0, _021BAD6C ; =0x04001000
_021BAD24:
	ldr r1, [r0]
	ldr r0, _021BAD70 ; =0x00300010
	and r1, r0
	cmp r1, #0x10
	beq _021BAD40
	ldr r0, _021BAD74 ; =0x00100010
	cmp r1, r0
	beq _021BAD3C
	ldr r0, _021BAD78 ; =0x00200010
	cmp r1, r0
	bne _021BAD44
	b _021BAD44
_021BAD3C:
	mov r5, #1
	b _021BAD46
_021BAD40:
	mov r5, #2
	b _021BAD46
_021BAD44:
	mov r5, #0
_021BAD46:
	add r4, r3, #0
	add r4, #8
	lsl r6, r5, #2
	mov r0, #0
	ldr r1, [r4, r6]
	mvn r0, r0
	cmp r1, r0
	beq _021BAD5A
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021BAD5A:
	ldrh r3, [r3, #4]
	add r0, r2, #0
	mov r1, #0x4f
	mov r2, #0x82
	bl Oam_LoadNCERFile
	str r0, [r4, r6]
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BAD6C: .word 0x04001000
_021BAD70: .word 0x00300010
_021BAD74: .word 0x00100010
_021BAD78: .word 0x00200010
	thumb_func_end ovy207_21bad14

	thumb_func_start ovy207_21bad7c
ovy207_21bad7c: ; 0x021BAD7C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	sub r7, r4, #1
_021BAD84:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #8]
	cmp r0, r7
	beq _021BAD94
	bl sub_0204BE64
	str r7, [r5, #8]
_021BAD94:
	add r4, r4, #1
	cmp r4, #3
	blt _021BAD84
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy207_21bad7c

	thumb_func_start sub_021BAD9C
sub_021BAD9C: ; 0x021BAD9C
	cmp r1, #5
	bhi _021BADE8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BADAC: ; jump table
	.short _021BADB8 - _021BADAC - 2 ; case 0
	.short _021BADC0 - _021BADAC - 2 ; case 1
	.short _021BADC8 - _021BADAC - 2 ; case 2
	.short _021BADD0 - _021BADAC - 2 ; case 3
	.short _021BADD8 - _021BADAC - 2 ; case 4
	.short _021BADE0 - _021BADAC - 2 ; case 5
_021BADB8:
	lsl r1, r0, #4
	ldr r0, _021BADEC ; =0x021BB184
	ldr r0, [r0, r1]
	bx lr
_021BADC0:
	lsl r1, r0, #4
	ldr r0, _021BADF0 ; =0x021BB188
	ldrh r0, [r0, r1]
	bx lr
_021BADC8:
	lsl r1, r0, #4
	ldr r0, _021BADF4 ; =0x021BB18A
	ldrh r0, [r0, r1]
	bx lr
_021BADD0:
	lsl r1, r0, #4
	ldr r0, _021BADF8 ; =0x021BB18C
	ldrh r0, [r0, r1]
	bx lr
_021BADD8:
	lsl r1, r0, #4
	ldr r0, _021BADFC ; =0x021BB18E
	ldrh r0, [r0, r1]
	bx lr
_021BADE0:
	lsl r1, r0, #4
	ldr r0, _021BAE00 ; =0x021BB190
	ldrb r0, [r0, r1]
	bx lr
_021BADE8:
	mov r0, #0
	bx lr
	.align 2, 0
_021BADEC: .word 0x021BB184
_021BADF0: .word 0x021BB188
_021BADF4: .word 0x021BB18A
_021BADF8: .word 0x021BB18C
_021BADFC: .word 0x021BB18E
_021BAE00: .word 0x021BB190
	thumb_func_end sub_021BAD9C

	thumb_func_start sub_021BAE04
sub_021BAE04: ; 0x021BAE04
	lsl r1, r0, #4
	ldr r0, _021BAE0C ; =0x021BB18E
	ldrh r0, [r0, r1]
	bx lr
	.align 2, 0
_021BAE0C: .word 0x021BB18E
	thumb_func_end sub_021BAE04
_021BAE10:
	.byte 0x00, 0x28, 0x50, 0x7C, 0x90, 0xA8, 0xC8, 0xE8, 0x94, 0x5A, 0x10, 0x4A, 0x8C, 0x39, 0xAD, 0x39
	.byte 0x00, 0x01, 0x02, 0x06, 0x03, 0x02, 0x00, 0x01, 0xFF, 0x7F, 0xFF, 0x7F, 0x52, 0x5E, 0x31, 0x52
	.byte 0x00, 0x70, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x04, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x60, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x00, 0x28, 0xA8, 0xC0, 0x28, 0x50, 0xA8, 0xC0, 0x50, 0x78
	.byte 0xA8, 0xC0, 0x78, 0x90, 0xA8, 0xC0, 0x90, 0xA8, 0xA8, 0xC0, 0xA8, 0xC0, 0xA8, 0xC0, 0xC8, 0xE0
	.byte 0xA8, 0xC0, 0xE8, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xD6, 0x30, 0xE9, 0x30, 0xC3, 0x30, 0xAF, 0x30
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xD6, 0x30, 0xE9, 0x30, 0xC3, 0x30, 0xAF, 0x30, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x7F, 0x00, 0x00, 0x18, 0x00, 0x90, 0x01, 0x00, 0x00, 0x02, 0x04, 0x06, 0x08, 0x0A, 0x0C, 0x0D
	.byte 0xB3, 0xBE, 0xC9, 0xD4, 0xDF, 0xEA, 0x98, 0xA0, 0x00, 0x70, 0xFC, 0xFF, 0x00, 0x40, 0xFC, 0xFF
	.byte 0x33, 0x13, 0x00, 0x00, 0x66, 0x16, 0x00, 0x00, 0x33, 0x23, 0x00, 0x00, 0xCD, 0x24, 0x00, 0x00
	.byte 0xCD, 0x1C, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x33, 0x4B, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xCD, 0x1C, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0xCD, 0x1C, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0xE0, 0xFB, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x06, 0x00, 0x00, 0x80, 0x0D, 0x00
	.byte 0x00, 0x80, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFE, 0xFF, 0x00, 0x78, 0xA0, 0xFF, 0x00, 0x78, 0x78, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x33, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0x00, 0x70, 0xFD, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x33, 0x23, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x33, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0x00, 0x10, 0x00, 0x00
	.byte 0x33, 0x23, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xE0, 0xFB, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x50, 0x06, 0x00, 0x00, 0x10, 0x00, 0x00, 0x33, 0x23, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x70, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x06, 0x00, 0x7F, 0x8F, 0xB3, 0xBD
	.byte 0x7F, 0x8F, 0xBE, 0xC8, 0x7F, 0x8F, 0xC9, 0xD3, 0x7F, 0x8F, 0xD4, 0xDE, 0x7F, 0x8F, 0xDF, 0xE9
	.byte 0x7F, 0x8F, 0xEA, 0xF4, 0xFF, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00
	.byte 0x48, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x01, 0x02, 0x03, 0x04, 0x05, 0x00, 0x02, 0x03, 0x04, 0x05
	.byte 0x00, 0x01, 0x03, 0x04, 0x05, 0x00, 0x01, 0x02, 0x04, 0x05, 0x00, 0x01, 0x02, 0x03, 0x05, 0x00
	.byte 0x01, 0x02, 0x03, 0x04, 0x02, 0x01, 0x10, 0x02, 0x02, 0x03, 0x10, 0x02, 0x02, 0x05, 0x08, 0x02
	.byte 0x02, 0x07, 0x10, 0x02, 0x02, 0x09, 0x10, 0x02, 0x02, 0x0B, 0x11, 0x02, 0x0A, 0x0D, 0x08, 0x02
	.byte 0x02, 0x0F, 0x10, 0x02, 0x06, 0x11, 0x0C, 0x02, 0x0A, 0x13, 0x08, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x02, 0x01, 0x06, 0x01, 0x0A, 0x01, 0x0E, 0x01, 0x14, 0x08, 0x04
	.byte 0x10, 0x02, 0x11, 0x06, 0x06, 0x01, 0x08, 0x07, 0x0E, 0x02, 0x08, 0x09, 0x0E, 0x02, 0x08, 0x0B
	.byte 0x0E, 0x02, 0x08, 0x0D, 0x0E, 0x02, 0x08, 0x0F, 0x0E, 0x02, 0x06, 0x12, 0x14, 0x06, 0x0A, 0x06
	.byte 0x0E, 0x02, 0x0A, 0x08, 0x0E, 0x02, 0x0A, 0x0A, 0x0E, 0x02, 0x01, 0x0D, 0x1E, 0x06, 0x04, 0x14
	.byte 0x18, 0x04, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x51, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x52, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x03, 0x00, 0x53, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x04, 0x00, 0x54, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x05, 0x00, 0x55, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x12, 0x00, 0x01, 0x00, 0x06, 0x00, 0x56, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x13, 0x00, 0x01, 0x00, 0x07, 0x00, 0x57, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x14, 0x00, 0x01, 0x00, 0x08, 0x00, 0x58, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x15, 0x00, 0x01, 0x00, 0x09, 0x00, 0x59, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00, 0x12, 0x00, 0x02, 0x00, 0x0A, 0x00, 0x5A, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00, 0x13, 0x00, 0x02, 0x00, 0x0B, 0x00, 0x5B, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x14, 0x00, 0x02, 0x00, 0x0C, 0x00, 0x5C, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x15, 0x00, 0x02, 0x00, 0x0D, 0x00, 0x5D, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x12, 0x00, 0x03, 0x00, 0x0E, 0x00, 0x5E, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x13, 0x00, 0x03, 0x00, 0x0F, 0x00, 0x5F, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x14, 0x00, 0x03, 0x00, 0x10, 0x00, 0x60, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x15, 0x00, 0x03, 0x00, 0x11, 0x00, 0x61, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00, 0x12, 0x00, 0x04, 0x00, 0x12, 0x00, 0x62, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x00, 0x00, 0x13, 0x00, 0x04, 0x00, 0x13, 0x00, 0x63, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x00, 0x00, 0x14, 0x00, 0x04, 0x00, 0x14, 0x00, 0x64, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x15, 0x00, 0x04, 0x00, 0x15, 0x00, 0x65, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x16, 0x00, 0x66, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x17, 0x00, 0x67, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x68, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x19, 0x00, 0x69, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x16, 0x00, 0x01, 0x00, 0x1A, 0x00, 0x6A, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00, 0x17, 0x00, 0x01, 0x00, 0x1B, 0x00, 0x6B, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x18, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x6C, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x19, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x6D, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x16, 0x00, 0x02, 0x00, 0x1E, 0x00, 0x6E, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x17, 0x00, 0x02, 0x00, 0x1F, 0x00, 0x6F, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x18, 0x00, 0x02, 0x00, 0x20, 0x00, 0x70, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00, 0x19, 0x00, 0x02, 0x00, 0x21, 0x00, 0x71, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x16, 0x00, 0x03, 0x00, 0x22, 0x00, 0x72, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x00, 0x17, 0x00, 0x03, 0x00, 0x23, 0x00, 0x73, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x86, 0x00, 0x00, 0x00, 0x18, 0x00, 0x03, 0x00, 0x24, 0x00, 0x74, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00, 0x19, 0x00, 0x03, 0x00, 0x25, 0x00, 0x75, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x16, 0x00, 0x04, 0x00, 0x26, 0x00, 0x76, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x89, 0x00, 0x00, 0x00, 0x17, 0x00, 0x04, 0x00, 0x27, 0x00, 0x77, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x8A, 0x00, 0x00, 0x00, 0x18, 0x00, 0x04, 0x00, 0x28, 0x00, 0x78, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x19, 0x00, 0x04, 0x00, 0x29, 0x00, 0x79, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x7A, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x7B, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x7C, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x7D, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x7E, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x7F, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x30, 0x00, 0x80, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x31, 0x00, 0x81, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x01, 0x00, 0x32, 0x00, 0x82, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x65, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x02, 0x00, 0x33, 0x00, 0x83, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x02, 0x00, 0x34, 0x00, 0x84, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x35, 0x00, 0x85, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x20, 0x00, 0x01, 0x00, 0x36, 0x00, 0x86, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x21, 0x00, 0x02, 0x00, 0x37, 0x00, 0x87, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x22, 0x00, 0x03, 0x00, 0x38, 0x00, 0x88, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x39, 0x00, 0x89, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x24, 0x00, 0x02, 0x00, 0x3A, 0x00, 0x8A, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x25, 0x00, 0x01, 0x00, 0x3B, 0x00, 0x8B, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x26, 0x00, 0x03, 0x00, 0x3C, 0x00, 0x8C, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x8D, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x8E, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x29, 0x00, 0x01, 0x00, 0x3F, 0x00, 0x8F, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x40, 0x00, 0x90, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x03, 0x00, 0x41, 0x00, 0x91, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x04, 0x00, 0x42, 0x00, 0x92, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x43, 0x00, 0x93, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x01, 0x00, 0x44, 0x00, 0x94, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x01, 0x00, 0x45, 0x00, 0x95, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x46, 0x00, 0x96, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x03, 0x00, 0x47, 0x00, 0x97, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x02, 0x00, 0x48, 0x00, 0x98, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x31, 0x00, 0x02, 0x00, 0x49, 0x00, 0x99, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x01, 0x00, 0x4A, 0x00, 0x9A, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x9B, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x34, 0x00, 0x03, 0x00, 0x4C, 0x00, 0x9C, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00, 0x35, 0x00, 0x03, 0x00, 0x4D, 0x00, 0x9D, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x36, 0x00, 0x01, 0x00, 0x4E, 0x00, 0x9E, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x37, 0x00, 0x01, 0x00, 0x4F, 0x00, 0x9F, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB1, 0x50, 0x1B, 0x02, 0x49, 0x53, 0x1B, 0x02, 0x09, 0x53, 0x1B, 0x02, 0x70, 0x5F, 0x73, 0x74
	.byte 0x61, 0x74, 0x75, 0x73, 0x2E, 0x63, 0x00, 0x00, 0x70, 0x5F, 0x73, 0x74, 0x61, 0x5F, 0x73, 0x75
	.byte 0x62, 0x2E, 0x63, 0x00, 0x70, 0x5F, 0x73, 0x74, 0x61, 0x5F, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x73, 0x74, 0x61, 0x5F, 0x72, 0x69, 0x62, 0x62, 0x6F, 0x6E
	.byte 0x2E, 0x63, 0x00, 0x00, 0x70, 0x5F, 0x73, 0x74, 0x61, 0x5F, 0x73, 0x6B, 0x69, 0x6C, 0x6C, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x70, 0x5F, 0x73, 0x74, 0x61, 0x5F, 0x6F, 0x61, 0x6D, 0x2E, 0x63, 0x00
	; 0x021BAE10
