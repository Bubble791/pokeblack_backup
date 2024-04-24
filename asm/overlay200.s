    .include "macros/function.inc"
	.include "overlay200.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy200_21b2f80
ovy200_21b2f80: ; 0x021B2F80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
	str r5, [r4, #0x10]
	bl ovy200_21b3128
	add r0, r4, #0
	bl ovy200_21b3288
	add r0, r4, #0
	bl ovy200_21b3400
	ldr r0, _021B2FBC ; =0x021B3121
	add r1, r4, #0
	mov r2, #8
	bl GFL_VBlankTCBAdd
	strb r5, [r4, #0x18]
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	add r0, r4, #0
	bl ovy200_21b3684
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B2FBC: .word 0x021B3121
	thumb_func_end ovy200_21b2f80

	thumb_func_start ovy200_21b2fc0
ovy200_21b2fc0: ; 0x021B2FC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy200_21b35a0
	add r0, r4, #0
	bl ovy200_21b33c8
	add r0, r4, #0
	bl ovy200_21b3234
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy200_21b2fc0

	thumb_func_start ovy200_21b2fe0
ovy200_21b2fe0: ; 0x021B2FE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #4
	bhi _021B306A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B2FF8: ; jump table
	.short _021B3002 - _021B2FF8 - 2 ; case 0
	.short _021B301E - _021B2FF8 - 2 ; case 1
	.short _021B302C - _021B2FF8 - 2 ; case 2
	.short _021B3052 - _021B2FF8 - 2 ; case 3
	.short _021B3060 - _021B2FF8 - 2 ; case 4
_021B3002:
	mov r0, #6
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0
	bl GFL_FadeScreenSet
	str r5, [r4, #0x10]
	b _021B306A
_021B301E:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021B306A
	mov r0, #4
_021B3028:
	str r0, [r4, #0x10]
	b _021B306A
_021B302C:
	ldr r0, [r4, #0x40]
	bl sub_0202E438
	cmp r0, #1
	bne _021B306A
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #3
	b _021B3028
_021B3052:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021B306A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021B3060:
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _021B306A
	bl ovy200_21b35e8
_021B306A:
	ldr r0, [r4, #0x30]
	bl sub_02021A3C
	bl sub_0204B794
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021B307E
	bl sub_0202E37C
_021B307E:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021B3088
	bl sub_0202E37C
_021B3088:
	ldr r0, [r4, #0x40]
	bl sub_0202E37C
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021B310E
	ldr r0, [r4, #0x30]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021B310E
	ldr r0, [r4, #0x3c]
	bl sub_0202E438
	cmp r0, #1
	beq _021B30B8
	ldr r0, [r4, #0x38]
	bl sub_0202E438
	cmp r0, #1
	beq _021B30B8
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021B310E
_021B30B8:
	ldr r0, [r4, #0x20]
	bl BmpWin_FlushChar
	ldr r0, [r4, #0x24]
	bl BmpWin_FlushChar
	mov r0, #0
	ldrb r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ovy200_21b370c
	ldrb r0, [r4, #0x18]
	cmp r0, #0xe
	ldr r0, [r4, #0x3c]
	bne _021B30E6
	bl sub_0202E4AC
	ldr r0, [r4, #0x3c]
	bl sub_0202E644
	b _021B30F0
_021B30E6:
	bl sub_0202E65C
	ldr r0, [r4, #0x3c]
	bl sub_0202E4AC
_021B30F0:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ldr r0, [r4, #0x38]
	bne _021B3104
	bl sub_0202E4AC
	ldr r0, [r4, #0x38]
	bl sub_0202E644
	b _021B310E
_021B3104:
	bl sub_0202E65C
	ldr r0, [r4, #0x38]
	bl sub_0202E4AC
_021B310E:
	mov r0, #7
	mov r1, #5
	mov r2, #1
	bl sub_02044CFC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy200_21b2fe0
_021B3120:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy200_21b3128
ovy200_21b3128: ; 0x021B3128
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021B320C ; =0xFFFFE0FF
	ldr r4, _021B3210 ; =0x04001000
	and r1, r0
	str r1, [r2]
	ldr r1, [r4]
	and r0, r1
	str r0, [r4]
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
	ldr r2, _021B3214 ; =0x04000304
	ldr r7, _021B3218 ; =0x021B38CC
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r7, #0
	bl GFL_BGSysSetVRAMBanks
	ldrh r0, [r5]
	bl GFL_BGSysCreate
	ldrh r0, [r5]
	bl BmpWin_InitAllocator
	ldr r0, _021B321C ; =0x021B383C
	bl GFL_BGSysSetLCDConfig
	ldr r0, _021B3220 ; =0x021B38AC
	mov r1, #4
	mov r2, #0
	mov r6, #4
	bl ovy200_21b3264
	ldr r0, _021B3224 ; =0x021B386C
	mov r1, #5
	mov r2, #0
	bl ovy200_21b3264
	ldr r0, _021B3228 ; =0x021B384C
	mov r1, #6
	mov r2, #0
	bl ovy200_21b3264
	ldr r0, _021B322C ; =0x021B388C
	mov r1, #7
	mov r2, #0
	bl ovy200_21b3264
	add r4, #0x50
	add r0, r4, #0
	mov r1, #4
	mov r2, #8
	mov r3, #0xf
	str r6, [sp]
	bl G2x_SetBlendAlpha_
	ldr r4, _021B3230 ; =0x02093F08
	add r3, sp, #4
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
	add r0, sp, #4
	strh r1, [r0, #0x10]
	add r0, r2, #0
	ldrh r2, [r5]
	add r1, r7, #0
	bl Oam_CreateSystem
	ldrh r2, [r5]
	mov r0, #0x30
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5, #0x44]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B320C: .word 0xFFFFE0FF
_021B3210: .word 0x04001000
_021B3214: .word 0x04000304
_021B3218: .word 0x021B38CC
_021B321C: .word 0x021B383C
_021B3220: .word 0x021B38AC
_021B3224: .word 0x021B386C
_021B3228: .word 0x021B384C
_021B322C: .word 0x021B388C
_021B3230: .word 0x02093F08
	thumb_func_end ovy200_21b3128

	thumb_func_start ovy200_21b3234
ovy200_21b3234: ; 0x021B3234
	push {r3, lr}
	ldr r0, [r0, #0x44]
	bl sub_0204BF98
	bl sub_0204B758
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy200_21b3234

	thumb_func_start ovy200_21b3264
ovy200_21b3264: ; 0x021B3264
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
	thumb_func_end ovy200_21b3264

	thumb_func_start ovy200_21b3288
ovy200_21b3288: ; 0x021B3288
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x1d
	bl GFL_ArcSysCreateFileHandle
	mov r4, #0
	str r4, [sp]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r6, r0, #0
	mov r7, #1
	bl GFL_G2DIOLoadArcNCLRDefault
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #4
	mov r2, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xa
	mov r2, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #4
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #9
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r6, #0
	bl GFL_ArcToolFree
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl MyStatus_GetTrainerGender
	and r0, r7
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldrh r1, [r5]
	ldr r0, _021B33C4 ; =0x0000011F
	bl GFL_ArcSysCreateFileHandle
	str r4, [sp]
	mov r1, #0xf
	str r1, [sp, #4]
	ldrh r1, [r5]
	add r7, #0xe
	mov r2, #1
	str r1, [sp, #8]
	add r1, r7, #0
	mov r3, #0
	add r6, r0, #0
	bl Oam_LoadNCLRFile
	str r0, [r5, #0x48]
	ldrh r0, [r5]
	mov r1, #0x10
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x4c]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0x12
	bl Oam_LoadNCERFile
	str r0, [r5, #0x54]
	ldrh r0, [r5]
	mov r1, #0x13
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x50]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0x1d
	mov r2, #0x1e
	bl Oam_LoadNCERFile
	str r0, [r5, #0x58]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r1, #0x20
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x30
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	strb r4, [r0, #7]
	add r7, r4, #0
_021B3388:
	add r0, sp, #0xc
	strb r4, [r0, #6]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0x44]
	ldr r1, [r6, #0x4c]
	ldr r2, [r5, #0x48]
	ldr r3, [r6, #0x54]
	bl Oam_CreateSprite
	str r0, [r6, #0x5c]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r6, #0x5c]
	add r1, r7, #0
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #2
	blt _021B3388
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B33C4: .word 0x0000011F
	thumb_func_end ovy200_21b3288

	thumb_func_start ovy200_21b33c8
ovy200_21b33c8: ; 0x021B33C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021B33CE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #2
	blt _021B33CE
	ldr r0, [r5, #0x58]
	bl sub_0204BE64
	ldr r0, [r5, #0x50]
	bl sub_0204B98C
	ldr r0, [r5, #0x54]
	bl sub_0204BE64
	ldr r0, [r5, #0x4c]
	bl sub_0204B98C
	ldr r0, [r5, #0x48]
	bl sub_0204BCD0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy200_21b33c8

	thumb_func_start ovy200_21b3400
ovy200_21b3400: ; 0x021B3400
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r4, #0
	bl GFL_FontCreate
	str r0, [r5, #0x28]
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	mov r6, #0xf
	bl sub_020232E8
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x18
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x2c]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r6, #5
	bl GFL_BGSysLoadNCLRDefault
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #0xd
	str r0, [sp]
	mov r0, #5
	mov r3, #0
	mov r7, #1
	bl sub_02024D00
	mov r0, #0
	bl sub_02024C8C
	add r1, r0, #0
	mov r0, #0x40
	str r0, [sp]
	ldrh r0, [r5]
	mov r3, #0xd
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #5
	lsl r3, r3, #5
	bl GFL_BGSysLoadNCLRDefault
	bl sub_020232D8
	ldrh r0, [r5]
	bl sub_02021998
	str r0, [r5, #0x30]
	ldrh r0, [r5]
	mov r1, #0xb
	str r0, [sp]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x30]
	mov r0, #4
	bl sub_0202E168
	str r0, [r5, #0x34]
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #5
	mov r1, #2
	mov r2, #4
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x24]
	mov r0, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #5
	mov r1, #2
	mov r2, #9
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	mov r1, #1
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x24]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x24]
	bl sub_0204826C
	ldr r0, [r5, #0x24]
	mov r1, #1
	mov r2, #1
	mov r3, #0xe
	bl sub_02024E80
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x20]
	bl sub_0204826C
	mov r0, #5
	bl GFL_BGSysLoadScr
	mov r0, #4
	bl GFL_BGSysLoadScr
	ldr r0, [r5, #0x2c]
	mov r1, #0x1e
	str r4, [r5, #0x1c]
	bl sub_0204898C
	str r0, [sp, #0xc]
	ldr r1, _021B3598 ; =0x000039E3
	add r0, sp, #0xc
	strh r1, [r0, #4]
	add r6, sp, #0xc
	str r4, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp]
	ldrh r0, [r5]
	add r1, r6, #0
	mov r2, #0xb
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	mov r3, #0x15
	bl sub_0202E1F0
	str r0, [r5, #0x3c]
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x2c]
	mov r1, #0x20
	bl sub_0204898C
	str r0, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp]
	ldrh r0, [r5]
	add r1, r6, #0
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	mov r3, #0x15
	bl sub_0202E1F0
	str r0, [r5, #0x38]
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x2c]
	mov r1, #0x1f
	bl sub_0204898C
	str r0, [sp, #0xc]
	str r7, [sp, #0x14]
	mov r0, #0xa
	str r0, [sp]
	ldrh r0, [r5]
	add r1, r6, #0
	mov r2, #0x16
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	mov r3, #0x15
	bl sub_0202E1F0
	str r0, [r5, #0x40]
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x38]
	bl sub_0202E644
	ldr r0, _021B359C ; =0x050005E2
	strh r4, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B3598: .word 0x000039E3
_021B359C: .word 0x050005E2
	thumb_func_end ovy200_21b3400

	thumb_func_start ovy200_21b35a0
ovy200_21b35a0: ; 0x021B35A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021B35AE
	bl sub_0202E34C
_021B35AE:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021B35B8
	bl sub_0202E34C
_021B35B8:
	ldr r0, [r4, #0x40]
	bl sub_0202E34C
	ldr r0, [r4, #0x34]
	bl sub_0202E1DC
	ldr r0, [r4, #0x30]
	bl sub_02021A18
	ldr r0, [r4, #0x20]
	bl sub_02048210
	ldr r0, [r4, #0x24]
	bl sub_02048210
	ldr r0, [r4, #0x2c]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x28]
	bl sub_02022DA8
	bl sub_020232D8
	pop {r4, pc}
	thumb_func_end ovy200_21b35a0

	thumb_func_start ovy200_21b35e8
ovy200_21b35e8: ; 0x021B35E8
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _021B3678 ; =0x021B3938
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0x10
_021B35F4:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021B35F4
	add r0, sp, #0
	bl sub_0203DA0C
	cmp r0, #0
	beq _021B3614
	cmp r0, #1
	beq _021B362A
	cmp r0, #2
	beq _021B3648
	b _021B365A
_021B3614:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _021B365A
	sub r0, r0, #1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	add r0, r4, #0
	bl ovy200_21b3684
	ldr r0, [r4, #0x38]
	b _021B363E
_021B362A:
	ldrb r0, [r4, #0x18]
	cmp r0, #0xe
	bhs _021B365A
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	add r0, r4, #0
	bl ovy200_21b3684
	ldr r0, [r4, #0x3c]
_021B363E:
	mov r1, #1
	bl sub_0202E430
	ldr r0, _021B367C ; =0x0000054C
	b _021B3656
_021B3648:
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_0202E430
	mov r0, #2
	str r0, [r4, #0x10]
	ldr r0, _021B3680 ; =0x00000551
_021B3656:
	bl GFL_SndSEPlay
_021B365A:
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl sub_02016BEC
	cmp r0, #1
	bne _021B3672
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_0202E430
	mov r0, #2
	str r0, [r4, #0x10]
_021B3672:
	add sp, #0x10
	pop {r4, pc}
	nop
_021B3678: .word 0x021B3938
_021B367C: .word 0x0000054C
_021B3680: .word 0x00000551
	thumb_func_end ovy200_21b35e8

	thumb_func_start ovy200_21b3684
ovy200_21b3684: ; 0x021B3684
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #1
	mov r7, #1
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	mov r2, #0x28
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r3, #8
	bl sub_02021C7C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r4, #0xf
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r3, #0
	bl sub_02021C7C
	add r0, r4, #0
	bl GFL_StrBufFree
	str r7, [r5, #0x1c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy200_21b3684

	thumb_func_start ovy200_21b370c
ovy200_21b370c: ; 0x021B370C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021B3758 ; =0x021B38FC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r6, _021B375C ; =0x021B382C
	lsl r4, r0, #1
	ldrh r1, [r6, r4]
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x5c]
	lsr r1, r1, #0x18
	bl sub_0204C488
	ldrh r0, [r6, r4]
	mov r1, #1
	mov r7, #1
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl sub_0204C124
	ldrh r0, [r6, r4]
	mov r1, #0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	eor r0, r7
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3758: .word 0x021B38FC
_021B375C: .word 0x021B382C
	thumb_func_end ovy200_21b370c

	thumb_func_start ovy200_21b3760
ovy200_21b3760: ; 0x021B3760
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x8a
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x64
	mov r2, #0x8a
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	cmp r5, #0
	bne _021B37B6
	ldr r0, _021B37C8 ; =0x00000321
	ldr r3, _021B37CC ; =0x021B396C
	str r0, [sp]
	mov r0, #0x8a
	mov r1, #8
	add r2, r7, #0
	mov r6, #8
	bl GFL_HeapAllocate
	add r5, r0, #0
	mov r0, #0x8a
	bl sub_02008B0C
	str r0, [r5]
	bl sub_0203DF20
	add r6, #0xf8
	tst r0, r6
	ldr r0, [r5]
	beq _021B37B0
	add r1, r7, #0
	b _021B37B2
_021B37B0:
	mov r1, #0
_021B37B2:
	bl sub_02008BEC
_021B37B6:
	str r5, [r4, #4]
	mov r0, #0x8a
	strh r0, [r4]
	add r0, r4, #0
	bl ovy200_21b2f80
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B37C8: .word 0x00000321
_021B37CC: .word 0x021B396C
	thumb_func_end ovy200_21b3760

	thumb_func_start ovy200_21b37d0
ovy200_21b37d0: ; 0x021B37D0
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	bl ovy200_21b2fc0
	cmp r5, #0
	bne _021B37F0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl GFL_HeapFree
	ldr r0, [r4, #4]
	bl GFL_HeapFree
_021B37F0:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x8a
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy200_21b37d0

	thumb_func_start ovy200_21b3800
ovy200_21b3800: ; 0x021B3800
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r0, r5, #0
	bl ovy200_21b2fe0
	add r4, r0, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021B3822
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021B3822
	mov r0, #1
	str r0, [r5, #8]
	mov r0, #2
	str r0, [r5, #0x10]
_021B3822:
	mov r0, #1
	cmp r4, #1
	beq _021B382A
	mov r0, #0
_021B382A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy200_21b3800
_021B382C:
	.byte 0x00, 0x01, 0x02, 0x01
	.byte 0x01, 0x01, 0x1F, 0x00, 0x0C, 0x00, 0x0A, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00
	.byte 0x00, 0x60, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x00, 0x58, 0xA8, 0xC0, 0x58, 0xB0
	.byte 0xA8, 0xC0, 0xB0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x61, 0x37, 0x1B, 0x02, 0x01, 0x38, 0x1B, 0x02, 0xD1, 0x37, 0x1B, 0x02, 0x63, 0x67, 0x5F, 0x68
	.byte 0x65, 0x6C, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021B382C
