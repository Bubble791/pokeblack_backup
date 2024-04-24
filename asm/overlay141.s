    .include "macros/function.inc"
	.include "overlay141.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy141_219ce80
ovy141_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	mov r2, #0x80
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x80
	lsl r2, r2, #0xa
	mov r7, #1
	bl GFL_HeapCreateChild
	mov r5, #0x80
	add r5, #0xe8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x80
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r5, #0
	blx MIi_CpuClearFast
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	add r0, r4, #0
	add r1, r6, #0
	bl ovy141_219cfb4
	bl ovy141_219d0b4
	add r0, r4, #0
	bl ovy141_219d0d4
	add r0, r4, #0
	bl ovy141_219d18c
	add r0, r4, #0
	bl ovy141_219d330
	add r0, r4, #0
	bl ovy141_219d424
	add r0, r4, #0
	bl ovy141_219d524
	add r0, r4, #0
	bl ovy141_219d5e8
	add r0, r4, #0
	bl ovy141_219d804
	mov r1, #0x80
	mov r2, #0x80
	add r1, #0xe0
	add r2, #0xe2
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	add r0, r4, #0
	bl ovy141_219dc60
	mov r1, #0x80
	add r1, #0xe0
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ovy141_219dd14
	mov r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #1
	mov r1, #0x80
	bl sub_02042BA8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy141_219ce80

	thumb_func_start ovy141_219cf38
ovy141_219cf38: ; 0x0219CF38
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ovy141_219d724
	cmp r0, #0
	bne _0219CF4A
	mov r0, #1
	pop {r4, pc}
_0219CF4A:
	add r0, r4, #0
	bl ovy141_219d6dc
	ldr r0, [r4, #4]
	bl sub_0203349C
	bl sub_0204B794
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy141_219cf38

	thumb_func_start ovy141_219cf60
ovy141_219cf60: ; 0x0219CF60
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0219D838
	add r0, r4, #0
	bl ovy141_219d6c8
	add r0, r4, #0
	bl ovy141_219d5b8
	add r0, r4, #0
	bl ovy141_219d4d0
	add r0, r4, #0
	bl sub_0219D324
	add r0, r4, #0
	bl ovy141_219d168
	add r0, r4, #0
	bl ovy141_219d064
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x80
	bl sub_0203A2BC
	mov r0, #0x80
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219cf60

	thumb_func_start ovy141_219cfa8
ovy141_219cfa8: ; 0x0219CFA8
	push {r3, lr}
	bl sub_0204B7C8
	bl sub_02045A5C
	pop {r3, pc}
	thumb_func_end ovy141_219cfa8

	thumb_func_start ovy141_219cfb4
ovy141_219cfb4: ; 0x0219CFB4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x55
	lsl r7, r7, #2
	add r5, r0, #0
	add r0, r7, #0
	str r1, [r5, r7]
	mov r4, #0
	add r0, #8
	str r4, [r5, r0]
	mov r0, #0xc4
	mov r1, #0x80
	bl GFL_ArcSysCreateFileHandle
	str r0, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x44
	mov r3, #0x80
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	add r1, #0xf4
	str r0, [r1]
	add r0, r7, #0
	str r0, [sp]
	sub r0, #0x54
	str r0, [sp]
	sub r7, #0x54
_0219CFEC:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_0204898C
	ldr r1, [sp]
	str r0, [r6, r1]
	ldr r0, [r6, r7]
	bl sub_020486F0
	add r4, r4, #1
	cmp r4, #7
	blt _0219CFEC
	mov r0, #0x40
	mov r1, #0x80
	mov r4, #0x80
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	mov r0, #8
	mov r1, #0x40
	mov r2, #0x80
	bl sub_020241E4
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	ldr r0, _0219D060 ; =ovy141_219cfa8
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r1, #0x80
	add r1, #0xd0
	str r0, [r5, r1]
	mov r0, #0x80
	add r0, #0xd4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl sub_02017968
	mov r1, #0x80
	bl sub_0200E7F0
	str r0, [r5, #8]
	bl sub_0200E82C
	add r4, #0xe4
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy141_219dc2c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D060: .word ovy141_219cfa8
	thumb_func_end ovy141_219cfb4

	thumb_func_start ovy141_219d064
ovy141_219d064: ; 0x0219D064
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl GFL_HeapFree
	mov r6, #1
	mov r4, #0
	lsl r6, r6, #8
_0219D074:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #7
	blt _0219D074
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl GFL_MsgDataFree
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl GFL_TCBRemove
	ldr r0, [r5]
	bl GFL_ArcToolFree
	pop {r4, r5, r6, pc}
	thumb_func_end ovy141_219d064

	thumb_func_start ovy141_219d0b4
ovy141_219d0b4: ; 0x0219D0B4
	push {r3, lr}
	ldr r0, _0219D0C8 ; =0x0219DEFC
	bl GFL_BGSysSetVRAMBanks
	ldr r2, _0219D0CC ; =0x04000304
	ldr r0, _0219D0D0 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	pop {r3, pc}
	.align 2, 0
_0219D0C8: .word 0x0219DEFC
_0219D0CC: .word 0x04000304
_0219D0D0: .word 0xFFFF7FFF
	thumb_func_end ovy141_219d0b4

	thumb_func_start ovy141_219d0d4
ovy141_219d0d4: ; 0x0219D0D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb0
	mov r0, #0x80
	bl GFL_BGSysCreate
	ldr r4, _0219D15C ; =0x0219DF38
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	ldr r4, _0219D160 ; =0x0219E07C
	add r3, sp, #0x10
	mov r2, #0x14
_0219D0F8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219D0F8
	mov r4, #0
	ldr r7, _0219D164 ; =0x0219DEE8
	add r6, r4, #0
_0219D106:
	lsl r0, r4, #2
	ldr r5, [r7, r0]
	lsl r2, r4, #5
	lsl r0, r5, #0x18
	add r1, sp, #0x10
	add r1, r1, r2
	lsr r0, r0, #0x18
	add r2, r6, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045738
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	add r2, r6, #0
	mov r3, #0x80
	bl sub_020450CC
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #5
	blo _0219D106
	mov r0, #6
	add r1, r6, #0
	bl sub_02044C98
	mov r0, #7
	add r1, r6, #0
	bl sub_02044C98
	mov r0, #3
	add r1, r6, #0
	bl sub_02044C98
	add sp, #0xb0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D15C: .word 0x0219DF38
_0219D160: .word 0x0219E07C
_0219D164: .word 0x0219DEE8
	thumb_func_end ovy141_219d0d4

	thumb_func_start ovy141_219d168
ovy141_219d168: ; 0x0219D168
	push {r3, r4, r5, lr}
	ldr r4, _0219D188 ; =0x0219DEE8
	mov r5, #0
_0219D16E:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #5
	blo _0219D16E
	bl sub_02044528
	pop {r3, r4, r5, pc}
	nop
_0219D188: .word 0x0219DEE8
	thumb_func_end ovy141_219d168

	thumb_func_start ovy141_219d18c
ovy141_219d18c: ; 0x0219D18C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r6, [r5]
	mov r4, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r7, #0x80
	str r7, [sp, #8]
	add r0, r6, #0
	mov r1, #5
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	mov r1, #4
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r7, [sp, #4]
	add r0, r6, #0
	mov r1, #6
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r7, [sp, #4]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204AF50
	bl GetDefaultUINarcIdx
	add r1, r7, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0xc]
	bl sub_0202D824
	str r4, [sp]
	add r1, r0, #0
	str r4, [sp, #4]
	ldr r0, [sp, #0xc]
	str r7, [sp, #8]
	mov r2, #1
	add r3, r4, #0
	bl sub_0204ADA8
	bl sub_0202D828
	add r1, r0, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r3, r4, #0
	str r7, [sp, #8]
	bl sub_0204AF50
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	str r0, [sp, #0x10]
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	add r3, r4, #0
	str r7, [sp, #8]
	bl GFL_G2DIOLoadArcNCLR
	mov r0, #3
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	add r1, r4, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #1
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	ldr r3, [sp, #0x10]
	mov r0, #0x20
	str r0, [sp]
	add r3, #0x20
	mov r0, #0x17
	mov r1, #5
	add r2, r4, #0
	str r3, [sp, #0x10]
	str r7, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	ldr r3, [sp, #0x10]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	str r7, [sp, #4]
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #2
	mov r1, #0xa
	add r2, r7, #0
	bl sub_020330C8
	ldr r7, _0219D320 ; =0x0219DF48
	str r0, [r5, #4]
_0219D2DC:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r2, #1
	mov r3, #0xe
	bl sub_02033150
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #3
	bl sub_02033224
	lsl r2, r4, #3
	add r3, r7, r2
	ldr r2, [r7, r2]
	ldr r3, [r3, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r5, #4]
	add r1, r4, #0
	asr r2, r2, #0x18
	asr r3, r3, #0x18
	bl sub_02033254
	add r4, r4, #1
	cmp r4, #0xa
	blt _0219D2DC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D320: .word 0x0219DF48
	thumb_func_end ovy141_219d18c

	thumb_func_start sub_0219D324
sub_0219D324: ; 0x0219D324
	ldr r0, [r0, #4]
	ldr r3, _0219D32C ; =sub_02033120
	bx r3
	nop
_0219D32C: .word sub_02033120
	thumb_func_end sub_0219D324

	thumb_func_start ovy141_219d330
ovy141_219d330: ; 0x0219D330
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl GetDefaultUINarcIdx
	mov r1, #0x80
	mov r4, #0x80
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	ldr r0, _0219D41C ; =0x02093F08
	ldr r1, _0219D420 ; =0x0219DEFC
	mov r2, #0x80
	bl Oam_CreateSystem
	mov r0, #4
	mov r1, #1
	mov r2, #0x80
	bl sub_0204BF1C
	mov r1, #0x80
	add r1, #0x9c
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #1
	mov r2, #0x80
	bl sub_0204BF1C
	mov r1, #0x80
	add r1, #0xa0
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #7
	mov r2, #1
	mov r3, #2
	bl Oam_LoadNCGRFile
	mov r1, #0x80
	add r1, #0xb8
	str r0, [r5, r1]
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #0xa
	mov r2, #2
	mov r3, #0
	mov r7, #0xa
	bl sub_0204BBA0
	mov r1, #0x80
	add r1, #0xb4
	str r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #8
	mov r2, #9
	mov r3, #0x80
	bl Oam_LoadNCERFile
	mov r1, #0x80
	add r1, #0xbc
	str r0, [r5, r1]
	bl sub_0202D814
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp]
	bl Oam_LoadNCGRFile
	mov r1, #0x80
	add r1, #0xc4
	str r0, [r5, r1]
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r3, #0x80
	add r0, r6, #0
	mov r2, #0
	add r3, #0xe0
	str r4, [sp, #8]
	bl Oam_LoadNCLRFile
	lsl r1, r7, #5
	str r0, [r5, r1]
	mov r0, #0
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #0
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0x80
	bl Oam_LoadNCERFile
	add r4, #0xc8
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D41C: .word 0x02093F08
_0219D420: .word 0x0219DEFC
	thumb_func_end ovy141_219d330

	thumb_func_start ovy141_219d424
ovy141_219d424: ; 0x0219D424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x47
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	mov r0, #0x47
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	add r0, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x47
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #0x47
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	mov r0, #0x47
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #8
	mov r4, #0
	str r0, [sp, #0xc]
_0219D45E:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219D4CC ; =0x0219DF98
	add r3, r0, r1
	ldr r1, [r0, r1]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [r3, #4]
	strh r1, [r0, #2]
	ldr r1, [r3, #8]
	strh r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #7]
	strb r1, [r0, #6]
	lsl r0, r4, #2
	ldr r1, [r3, #0xc]
	add r7, r5, r0
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #4]
	mov r0, #0x80
	add r2, r5, r1
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r0, #0x9c
	ldr r1, [r2, r1]
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0x14]
	lsl r2, r2, #2
	add r6, r5, r2
	ldr r2, [sp, #0x18]
	lsl r3, r3, #2
	ldr r2, [r6, r2]
	add r6, r5, r3
	ldr r3, [sp, #0x14]
	ldr r0, [r5, r0]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x10]
	str r0, [r7, r1]
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #4
	blt _0219D45E
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D4CC: .word 0x0219DF98
	thumb_func_end ovy141_219d424

	thumb_func_start ovy141_219d4d0
ovy141_219d4d0: ; 0x0219D4D0
	push {r3, r4, r5, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204B98C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	sub r0, #0x24
	ldr r0, [r5, r0]
	bl sub_0204BF98
	sub r4, #0x28
	ldr r0, [r5, r4]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	thumb_func_end ovy141_219d4d0

	thumb_func_start ovy141_219d524
ovy141_219d524: ; 0x0219D524
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0x80
	bl BmpWin_InitAllocator
	mov r6, #0
	add r4, r6, #0
_0219D534:
	ldr r0, _0219D5B4 ; =0x0219E134
	lsl r1, r6, #2
	ldr r3, [r0, r1]
	add r5, r7, r1
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
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x38]
	bl BmpWin_GetBitmap
	add r1, r4, #0
	bl BmpWin_BitmapFill
	ldr r5, [r5, #0x38]
	add r0, r5, #0
	bl BmpWin_FlushChar
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r6, r6, #1
	cmp r6, #8
	blt _0219D534
	mov r6, #2
_0219D588:
	lsl r0, r4, #2
	add r5, r7, r0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0xa
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x10]
	bl BmpWin_GetBitmap
	mov r1, #4
	bl BmpWin_BitmapFill
	add r4, r4, #1
	cmp r4, #0xa
	blt _0219D588
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D5B4: .word 0x0219E134
	thumb_func_end ovy141_219d524

	thumb_func_start ovy141_219d5b8
ovy141_219d5b8: ; 0x0219D5B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0219D5BE:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x10]
	bl sub_02048210
	add r5, r5, #1
	cmp r5, #0xa
	blt _0219D5BE
	mov r5, #0
_0219D5D0:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x38]
	bl sub_02048210
	add r5, r5, #1
	cmp r5, #8
	blt _0219D5D0
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219d5b8

	thumb_func_start ovy141_219d5e8
ovy141_219d5e8: ; 0x0219D5E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	bl GFL_FontCreate
	str r0, [r4, #0xc]
	mov r0, #0x80
	bl sub_02021998
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	add r6, r5, #0
_0219D610:
	lsl r0, r5, #3
	add r1, r4, r0
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x10]
	add r5, r5, #1
	str r0, [r1, #0x58]
	add r1, #0x5c
	strb r6, [r1]
	cmp r5, #0x12
	blt _0219D610
	add r0, r4, #0
	add r0, #0xe8
	ldr r7, [r0]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r5, #1
	lsl r5, r5, #8
	add r1, r0, #0
	ldr r0, [r4, r5]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	add r3, r6, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02021C7C
	add r1, r4, #0
	add r1, #0xac
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xe8
	ldr r7, [r0]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	add r3, r6, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02021C7C
	add r1, r4, #0
	add r1, #0xcc
	mov r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xe8
	ldr r7, [r0]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r5, #0x18
	add r1, r0, #0
	ldr r0, [r4, r5]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [r4, #0xc]
	add r3, r6, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02021C7C
	add r4, #0xdc
	mov r0, #1
	strb r0, [r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy141_219d5e8

	thumb_func_start ovy141_219d6c8
ovy141_219d6c8: ; 0x0219D6C8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021A18
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	pop {r4, pc}
	thumb_func_end ovy141_219d6c8

	thumb_func_start ovy141_219d6dc
ovy141_219d6dc: ; 0x0219D6DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021A3C
	mov r4, #0
_0219D6EA:
	add r0, r6, #0
	add r0, #0xe8
	ldr r7, [r0]
	lsl r0, r4, #3
	add r5, r6, r0
	add r0, r5, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219D71C
	ldr r0, [r5, #0x58]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D71C
	ldr r0, [r5, #0x58]
	bl BmpWin_FlushChar
	add r5, #0x5c
	mov r0, #0
	strb r0, [r5]
_0219D71C:
	add r4, r4, #1
	cmp r4, #0x12
	blt _0219D6EA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy141_219d6dc

	thumb_func_start ovy141_219d724
ovy141_219d724: ; 0x0219D724
	push {r3, lr}
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	lsl r2, r1, #2
	ldr r1, _0219D738 ; =0x0219E120
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0219D738: .word 0x0219E120
	thumb_func_end ovy141_219d724

	thumb_func_start ovy141_219d73c
ovy141_219d73c: ; 0x0219D73C
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D750
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0219D750:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy141_219d73c

	thumb_func_start ovy141_219d754
ovy141_219d754: ; 0x0219D754
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219D768
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D768:
	add r0, r5, #0
	bl ovy141_219db84
	mov r4, #0
	mvn r4, r4
	cmp r0, r4
	bne _0219D79A
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202B6AC
	sub r1, r4, #5
	cmp r0, r1
	bne _0219D78C
	add r0, r5, #0
	mov r1, #0
	b _0219D796
_0219D78C:
	sub r1, r4, #4
	cmp r0, r1
	bne _0219D79A
	add r0, r5, #0
	mov r1, #1
_0219D796:
	bl ovy141_219dbac
_0219D79A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219d754

	thumb_func_start ovy141_219d7a0
ovy141_219d7a0: ; 0x0219D7A0
	push {r3, r4, r5, lr}
	mov r5, #0x4a
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D7B8
	mov r0, #3
	add r5, #0x30
	str r0, [r4, r5]
_0219D7B8:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy141_219d7a0

	thumb_func_start ovy141_219d7bc
ovy141_219d7bc: ; 0x0219D7BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r4, #0x80
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl GFL_FadeScreenSet
	mov r0, #4
	add r4, #0xd8
	str r0, [r5, r4]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219d7bc

	thumb_func_start ovy141_219d7e8
ovy141_219d7e8: ; 0x0219D7E8
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D7FE
	mov r1, #0x56
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
_0219D7FE:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy141_219d7e8

	thumb_func_start ovy141_219d804
ovy141_219d804: ; 0x0219D804
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r5, #0x80
	ldr r0, _0219D830 ; =0x0219DFF8
	ldr r1, _0219D834 ; =0x0219DEC8
	add r2, r4, #0
	mov r3, #1
	str r5, [sp, #4]
	bl sub_0202B650
	add r5, #0xcc
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0
	bl ovy141_219d8a8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219D830: .word 0x0219DFF8
_0219D834: .word 0x0219DEC8
	thumb_func_end ovy141_219d804

	thumb_func_start sub_0219D838
sub_0219D838: ; 0x0219D838
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219D844 ; =sub_0202B694
	bx r3
	nop
_0219D844: .word sub_0202B694
	thumb_func_end sub_0219D838
_0219D848:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy141_219d850
ovy141_219d850: ; 0x0219D850
	push {r3, r4, r5, lr}
	mov r2, #0x16
	add r5, r0, #0
	lsl r2, r2, #4
	ldrh r3, [r5, r2]
	mov r2, #0xa
	add r4, r1, #0
	mul r2, r3
	ldr r1, [r5, #8]
	add r2, r4, r2
	bl ovy141_219d8d0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy141_219d8a8
	ldr r0, _0219D878 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D878: .word 0x00000548
	thumb_func_end ovy141_219d850

	thumb_func_start ovy141_219d87c
ovy141_219d87c: ; 0x0219D87C
	push {r3, r4, r5, lr}
	mov r2, #0x16
	add r5, r0, #0
	lsl r2, r2, #4
	ldrh r3, [r5, r2]
	mov r2, #0xa
	add r4, r1, #0
	mul r2, r3
	ldr r1, [r5, #8]
	add r2, r4, r2
	bl ovy141_219d8d0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy141_219d8a8
	ldr r0, _0219D8A4 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D8A4: .word 0x00000548
	thumb_func_end ovy141_219d87c

	thumb_func_start ovy141_219d8a8
ovy141_219d8a8: ; 0x0219D8A8
	push {r3, r4, r5, lr}
	mov r5, #0x53
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0202BAEC
	ldrb r2, [r0]
	add r1, sp, #0
	sub r5, #0x28
	strh r2, [r1]
	ldrb r0, [r0, #1]
	mov r2, #0
	strh r0, [r1, #2]
	ldr r0, [r4, r5]
	add r1, sp, #0
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219d8a8

	thumb_func_start ovy141_219d8d0
ovy141_219d8d0: ; 0x0219D8D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r0, r2, #0
	add r6, r1, #0
	mov r1, #0x22
	add r7, r0, #0
	mul r7, r1
	add r0, r6, r7
	str r0, [sp, #0x1c]
	ldrb r0, [r0, #0x12]
	mov r1, #0x80
	str r2, [sp, #0xc]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, #0x13]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	mov r0, #0x10
	bl GFL_StrBufCreate
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	mov r4, #1
	mov r2, #0x80
	add r0, r5, #0
	str r4, [sp, #4]
	add r2, #0xd4
	ldr r2, [r5, r2]
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [r2, #4]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r2, #0x80
	add r0, r5, #0
	str r4, [sp, #4]
	add r2, #0xd4
	ldr r2, [r5, r2]
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [r2, #8]
	mov r1, #1
	mov r3, #3
	bl StringSetNumber
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	mov r1, #2
	bl sub_020245E0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	mov r1, #3
	bl sub_02024630
	ldr r0, [r5, #0x3c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x40]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x44]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x4c]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x54]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0x80
	add r0, #0xe4
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0219D9A2
	b _0219DB32
_0219D9A2:
	ldr r0, [sp, #0x18]
	add r1, r6, r7
	mov r2, #8
	mov r6, #8
	bl sub_02048658
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	mov r7, #0xf7
	str r0, [sp]
	ldr r0, [r5, #0xc]
	lsl r7, r7, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xc4
	strb r4, [r0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xf8
	add r1, #0xfc
	add r6, #0xfc
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r5, r6]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0xe8
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r7, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xb4
	strb r4, [r0]
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0x80
	add r0, #0xf8
	add r1, #0xfc
	add r2, #0x88
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0xe8
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r7, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xbc
	strb r4, [r0]
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0x80
	add r0, #0xf8
	add r1, #0xfc
	add r2, #0x90
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0xe8
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r7, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xd4
	strb r4, [r0]
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0x80
	add r0, #0xf8
	add r1, #0xfc
	add r2, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0xe8
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	str r7, [sp, #8]
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0xd4
	strb r4, [r0]
	ldr r0, [sp, #0x1c]
	mov r1, #0x80
	bl sub_02029C80
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, #0
	str r7, [sp, #8]
	bl sub_02021C7C
	add r5, #0xe4
	add r0, r6, #0
	strb r4, [r5]
	bl GFL_StrBufFree
	b _0219DB7A
_0219DB32:
	ldr r4, [r5, #0x44]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x4c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x54]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_0219DB7A:
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy141_219d8d0

	thumb_func_start ovy141_219db84
ovy141_219db84: ; 0x0219DB84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219DBA8 ; =0x0219DED8
	bl sub_0203DA0C
	add r4, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219DB9C
	add r4, r1, #0
_0219DB9C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy141_219dbac
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DBA8: .word 0x0219DED8
	thumb_func_end ovy141_219db84

	thumb_func_start ovy141_219dbac
ovy141_219dbac: ; 0x0219DBAC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0219DBBE
	cmp r1, #1
	beq _0219DBE4
	cmp r1, #2
	beq _0219DC0A
	pop {r3, r4, r5, pc}
_0219DBBE:
	bl ovy141_219dcdc
	cmp r0, #0
	beq _0219DC22
	ldr r0, _0219DC24 ; =0x00000548
	bl GFL_SndSEPlay
	mov r5, #0x4b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0xc
	bl sub_0204C488
	add r5, #0x34
	ldrh r1, [r4, r5]
	add r0, r4, #0
	bl ovy141_219dd14
	pop {r3, r4, r5, pc}
_0219DBE4:
	bl ovy141_219dcdc
	cmp r0, #0
	beq _0219DC22
	ldr r0, _0219DC24 ; =0x00000548
	bl GFL_SndSEPlay
	mov r5, #0x13
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #0xd
	bl sub_0204C488
	add r5, #0x30
	ldrh r1, [r4, r5]
	add r0, r4, #0
	bl ovy141_219dd14
	pop {r3, r4, r5, pc}
_0219DC0A:
	ldr r0, _0219DC28 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #0x56
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0x30
	ldr r0, [r4, r0]
	mov r1, #9
	bl sub_0204C488
_0219DC22:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DC24: .word 0x00000548
_0219DC28: .word 0x00000551
	thumb_func_end ovy141_219dbac

	thumb_func_start ovy141_219dc2c
ovy141_219dc2c: ; 0x0219DC2C
	push {r3, r4, r5, lr}
	mov r4, #0x16
	add r5, r0, #0
	mov r0, #0
	lsl r4, r4, #4
	strh r0, [r5, r4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	blx sub_0208D65C
	add r1, r4, #2
	strh r0, [r5, r1]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	blx sub_0208D65C
	cmp r1, #0
	beq _0219DC5E
	add r0, r4, #2
	ldrh r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #2
	strh r1, [r5, r0]
_0219DC5E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy141_219dc2c

	thumb_func_start ovy141_219dc60
ovy141_219dc60: ; 0x0219DC60
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r2, #1
	bne _0219DC80
	mov r5, #0x4b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_0219DC80:
	cmp r1, #0
	bne _0219DC9C
	mov r5, #0x4b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_0219DC9C:
	beq _0219DCBC
	sub r0, r2, #1
	cmp r1, r0
	bge _0219DCBC
	mov r5, #0x4b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_0219DCBC:
	sub r0, r2, #1
	cmp r1, r0
	bne _0219DCD8
	mov r5, #0x4b
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
_0219DCD8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219dc60

	thumb_func_start ovy141_219dcdc
ovy141_219dcdc: ; 0x0219DCDC
	push {r3, r4}
	mov r2, #0
	cmp r1, #0
	bne _0219DCF2
	mov r1, #0x16
	lsl r1, r1, #4
	ldrh r3, [r0, r1]
	cmp r3, #0
	beq _0219DD0C
	sub r2, r3, #1
	b _0219DD08
_0219DCF2:
	cmp r1, #1
	bne _0219DD0C
	mov r1, #0x16
	lsl r1, r1, #4
	add r3, r1, #2
	ldrh r3, [r0, r3]
	ldrh r4, [r0, r1]
	sub r3, r3, #1
	cmp r4, r3
	bge _0219DD0C
	add r2, r4, #1
_0219DD08:
	strh r2, [r0, r1]
	mov r2, #1
_0219DD0C:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy141_219dcdc

	thumb_func_start ovy141_219dd14
ovy141_219dd14: ; 0x0219DD14
	push {r3, r4, r5, lr}
	mov r5, #0x16
	lsl r5, r5, #4
	add r4, r0, #0
	strh r1, [r4, r5]
	add r2, r5, #2
	ldrh r2, [r4, r2]
	bl ovy141_219dc60
	add r0, r4, #0
	bl ovy141_219dd5c
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl sub_0202BA60
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #8]
	ldrh r4, [r4, r5]
	mov r3, #0xa
	mul r3, r4
	add r2, r3, r2
	bl ovy141_219d8d0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy141_219dd14

	thumb_func_start sub_0219DD4C
sub_0219DD4C: ; 0x0219DD4C
	mov r1, #0xa
	add r3, r0, #0
	mul r3, r1
	sub r0, r2, r3
	cmp r0, #0xa
	ble _0219DD5A
	add r0, r1, #0
_0219DD5A:
	bx lr
	thumb_func_end sub_0219DD4C

	thumb_func_start ovy141_219dd5c
ovy141_219dd5c: ; 0x0219DD5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x10
	mov r1, #0x80
	mov r4, #0x80
	bl GFL_StrBufCreate
	add r7, r0, #0
	mov r0, #0x80
	mov r1, #0x80
	add r0, #0xe0
	add r1, #0xe2
	add r4, #0xe4
	ldrh r0, [r6, r0]
	ldrh r1, [r6, r1]
	ldr r2, [r6, r4]
	bl sub_0219DD4C
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _0219DDDE
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r6, r0
	str r0, [sp, #4]
_0219DD92:
	mov r2, #0x16
	lsl r2, r2, #4
	ldrh r3, [r6, r2]
	mov r2, #0xa
	ldr r1, [r6, #8]
	mul r2, r3
	add r3, r4, r2
	mov r2, #0x22
	mul r2, r3
	add r1, r1, r2
	add r0, r7, #0
	mov r2, #8
	bl sub_02048658
	ldr r3, [r6, #8]
	add r0, r6, #0
	mov ip, r3
	ldr r3, [sp, #4]
	add r1, r4, #0
	ldrh r5, [r3]
	mov r3, #0xa
	add r2, r7, #0
	mul r3, r5
	add r5, r4, r3
	mov r3, #0x22
	mul r3, r5
	mov r5, ip
	add r3, r5, r3
	add r3, #0x20
	ldrb r3, [r3]
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1f
	bl ovy141_219ddfc
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0219DD92
_0219DDDE:
	cmp r4, #0xa
	bge _0219DDF0
_0219DDE2:
	ldr r0, [r6, #4]
	add r1, r4, #0
	bl sub_02033378
	add r4, r4, #1
	cmp r4, #0xa
	blt _0219DDE2
_0219DDF0:
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy141_219dd5c

	thumb_func_start ovy141_219ddfc
ovy141_219ddfc: ; 0x0219DDFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	add r6, r5, #0
	lsl r4, r7, #2
	add r6, #0x10
	ldr r0, [r6, r4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl BmpWin_GetBitmap
	mov r1, #4
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldr r0, [r6, r4]
	bne _0219DE2E
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0xc]
	str r1, [sp]
	ldr r1, _0219DE60 ; =0x00003584
	b _0219DE38
_0219DE2E:
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0xc]
	str r1, [sp]
	ldr r1, _0219DE64 ; =0x00002D44
_0219DE38:
	ldr r3, [sp, #8]
	str r1, [sp, #4]
	mov r1, #0
	mov r2, #0
	bl sub_02021D28
	ldr r0, [r6, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5, #4]
	ldr r2, [r6, r4]
	add r1, r7, #0
	bl sub_020335C4
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02033360
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DE60: .word 0x00003584
_0219DE64: .word 0x00002D44
	thumb_func_end ovy141_219ddfc
_0219DE68:
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x03, 0x0B, 0x02
	.byte 0x01, 0x00, 0x44, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0D, 0x03, 0x11, 0x02, 0x01, 0x00, 0x5A, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x10, 0x10, 0x02, 0x01, 0x00, 0x38, 0x01, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x01, 0x18, 0x02, 0x01, 0x00, 0x14, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x12, 0x1C, 0x04
	.byte 0x01, 0x00, 0x58, 0x01, 0x04, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x1C, 0x02, 0x01, 0x00, 0x90, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x02, 0x0C, 0x1C, 0x04, 0x01, 0x00, 0xC8, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x08, 0x0A, 0x02, 0x01, 0x00, 0x7C, 0x00, 0x49, 0xD8, 0x19, 0x02, 0x4D, 0xD8, 0x19, 0x02
	.byte 0x51, 0xD8, 0x19, 0x02, 0x7D, 0xD8, 0x19, 0x02, 0xA8, 0xBF, 0x08, 0x20, 0xA8, 0xBF, 0x20, 0x38
	.byte 0xA8, 0xBF, 0xE8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02
	.byte 0x39, 0xCF, 0x19, 0x02, 0x61, 0xCF, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0xE0, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x40, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01
	.byte 0x00, 0x1F, 0x08, 0x77, 0xC0, 0x10, 0x00, 0x00, 0x01, 0x03, 0x00, 0x01, 0x00, 0x1F, 0x88, 0xF4
	.byte 0x40, 0x30, 0x00, 0x00, 0x00, 0x04, 0x02, 0x03, 0x20, 0x3F, 0x08, 0x77, 0xC0, 0x30, 0x00, 0x00
	.byte 0x01, 0x05, 0x02, 0x03, 0x20, 0x3F, 0x88, 0xF4, 0x40, 0x50, 0x00, 0x00, 0x02, 0x06, 0x04, 0x05
	.byte 0x40, 0x5F, 0x08, 0x77, 0xC0, 0x50, 0x00, 0x00, 0x03, 0x07, 0x04, 0x05, 0x40, 0x5F, 0x88, 0xF4
	.byte 0x40, 0x70, 0x00, 0x00, 0x04, 0x08, 0x06, 0x07, 0x60, 0x7F, 0x08, 0x77, 0xC0, 0x70, 0x00, 0x00
	.byte 0x05, 0x09, 0x06, 0x07, 0x60, 0x7F, 0x88, 0xF4, 0x40, 0x90, 0x00, 0x00, 0x06, 0x08, 0x08, 0x09
	.byte 0x80, 0x9F, 0x08, 0x77, 0xC0, 0x90, 0x00, 0x00, 0x07, 0x09, 0x08, 0x09, 0x80, 0x9F, 0x88, 0xF4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x02
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x3D, 0xD7, 0x19, 0x02, 0x55, 0xD7, 0x19, 0x02, 0xA1, 0xD7, 0x19, 0x02, 0xBD, 0xD7, 0x19, 0x02
	.byte 0xE9, 0xD7, 0x19, 0x02, 0x8C, 0xDE, 0x19, 0x02, 0x68, 0xDE, 0x19, 0x02, 0x74, 0xDE, 0x19, 0x02
	.byte 0xBC, 0xDE, 0x19, 0x02, 0xA4, 0xDE, 0x19, 0x02, 0xB0, 0xDE, 0x19, 0x02, 0x80, 0xDE, 0x19, 0x02
	.byte 0x98, 0xDE, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219DE68
