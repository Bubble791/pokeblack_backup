    .include "macros/function.inc"
	.include "overlay295.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy295_219ce80
ovy295_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #1
	add r4, r0, #0
	ldr r5, [r2]
	mov r0, #1
	mov r1, #0x54
	lsl r2, r6, #0x12
	mov r7, #0x54
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0x54
	bl sub_0203AAEC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x4c
	blx MIi_CpuClear32
	strh r7, [r4]
	mov r0, #0x29
	strh r0, [r4, #2]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	bl sub_0201736C
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_02017934
	bl sub_0200746C
	cmp r0, #0
	beq _0219CECE
	str r6, [r4, #0x40]
_0219CECE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy295_219ce80

	thumb_func_start ovy295_219ced4
ovy295_219ced4: ; 0x0219CED4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203DEFC
	ldr r0, [r5]
	cmp r0, #0xd
	bls _0219CEEA
	b _0219D116
_0219CEEA:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219CEF6: ; jump table
	.short _0219CF12 - _0219CEF6 - 2 ; case 0
	.short _0219CF1C - _0219CEF6 - 2 ; case 1
	.short _0219CF6A - _0219CEF6 - 2 ; case 2
	.short _0219CF76 - _0219CEF6 - 2 ; case 3
	.short _0219CFB8 - _0219CEF6 - 2 ; case 4
	.short _0219CFF0 - _0219CEF6 - 2 ; case 5
	.short _0219D00E - _0219CEF6 - 2 ; case 6
	.short _0219D03E - _0219CEF6 - 2 ; case 7
	.short _0219D0B0 - _0219CEF6 - 2 ; case 8
	.short _0219D0C2 - _0219CEF6 - 2 ; case 9
	.short _0219D0DC - _0219CEF6 - 2 ; case 10
	.short _0219D0F2 - _0219CEF6 - 2 ; case 11
	.short _0219D0FE - _0219CEF6 - 2 ; case 12
	.short _0219D104 - _0219CEF6 - 2 ; case 13
_0219CF12:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy295_219d154
	b _0219D0F8
_0219CF1C:
	ldr r1, _0219D130 ; =0x04000050
	mov r6, #0
	add r0, r1, #0
	strh r6, [r1]
	sub r0, #0x50
	ldr r3, [r0]
	ldr r2, _0219D134 ; =0xFFFFE0FF
	lsr r1, r1, #0x12
	and r2, r3
	orr r1, r2
	str r1, [r0]
	bl sub_02015878
	cmp r0, #0x17
	add r0, sp, #4
	bne _0219CF4C
	add r0, #2
	add r1, r6, #0
	mov r2, #2
	strh r6, [r0]
	bl GXS_LoadBGPltt
	mov r0, #3
	b _0219CF5E
_0219CF4C:
	ldr r1, _0219D138 ; =0x0219D704
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1]
	add r1, r6, #0
	mov r2, #2
	bl GXS_LoadBGPltt
	mov r0, #0xc
_0219CF5E:
	mov r1, #0x10
	add r2, r6, #0
	add r3, r6, #0
	bl sub_0204E060
	b _0219D0F8
_0219CF6A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D008
	mov r0, #3
	b _0219D114
_0219CF76:
	ldr r1, [r4, #0x40]
	cmp r1, #0
	beq _0219CF7E
	b _0219D03C
_0219CF7E:
	ldr r0, _0219D13C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy295_219d2c4
	ldr r6, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #4
	str r0, [r4, #0x44]
	mov r0, #0xd
	str r0, [r5]
	ldr r0, [r4, #4]
	bl sub_0201782C
	b _0219D116
_0219CFB8:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _0219CFDC
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _0219CFD0
	add r0, r4, #0
	bl ovy295_219d3b8
	add r0, r4, #0
	bl ovy295_219d348
_0219CFD0:
	add r0, r4, #0
	bl ovy295_219d38c
	add r0, r4, #0
	bl ovy295_219d3d4
_0219CFDC:
	ldrh r0, [r4]
	mov r2, #0xf
	mov r3, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	bl sub_02035660
	str r0, [r4, #0x30]
	b _0219D0F8
_0219CFF0:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _0219D00C
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0219D00C
	add r0, r4, #0
	bl ovy295_219d42c
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0219D00A
_0219D008:
	b _0219D116
_0219D00A:
	b _0219D0F8
_0219D00C:
	b _0219D0F8
_0219D00E:
	ldr r1, [r4, #0x40]
	cmp r1, #0
	bne _0219D03C
	ldr r0, [r4, #4]
	bl sub_02017850
	cmp r0, #3
	bhi _0219D116
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D02A: ; jump table
	.short _0219D116 - _0219D02A - 2 ; case 0
	.short _0219D116 - _0219D02A - 2 ; case 1
	.short _0219D032 - _0219D02A - 2 ; case 2
	.short _0219D038 - _0219D02A - 2 ; case 3
_0219D032:
	mov r0, #1
_0219D034:
	str r0, [r4, #0x34]
	b _0219D0F8
_0219D038:
	mov r0, #0
	b _0219D034
_0219D03C:
	b _0219D0FA
_0219D03E:
	ldr r0, [r4, #0x30]
	bl sub_0203580C
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _0219D084
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0219D084
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	mov r3, #0
	bl ovy295_219d2c4
	ldr r6, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #8
	str r0, [r4, #0x44]
	mov r0, #0xd
	str r0, [r5]
	ldr r0, _0219D140 ; =0x00000558
	bl GFL_SndSEPlay
	b _0219D116
_0219D084:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	mov r3, #0
	bl ovy295_219d2c4
	ldr r6, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #8
	str r0, [r4, #0x44]
	mov r0, #0xd
	b _0219D114
_0219D0B0:
	ldr r1, [r4, #0x48]
	cmp r1, #0x78
	ble _0219D0BA
	add r0, r0, #1
	str r0, [r5]
_0219D0BA:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	b _0219D116
_0219D0C2:
	bl sub_02015878
	cmp r0, #0x17
	bne _0219D0CE
	mov r0, #3
	b _0219D0D0
_0219D0CE:
	mov r0, #0xc
_0219D0D0:
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	b _0219D0F8
_0219D0DC:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D116
	ldr r0, [r4, #0x1c]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	b _0219D0F8
_0219D0F2:
	add r0, r4, #0
	bl ovy295_219d208
_0219D0F8:
	ldr r0, [r5]
_0219D0FA:
	add r0, r0, #1
	b _0219D114
_0219D0FE:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D104:
	add r0, r4, #0
	ldr r1, [r4, #0x20]
	add r0, #0x28
	bl sub_0202E68C
	cmp r0, #0
	beq _0219D116
	ldr r0, [r4, #0x44]
_0219D114:
	str r0, [r5]
_0219D116:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0219D120
	bl sub_0203A7F4
_0219D120:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0219D12A
	bl sub_02035884
_0219D12A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D130: .word 0x04000050
_0219D134: .word 0xFFFFE0FF
_0219D138: .word 0x0219D704
_0219D13C: .word 0x0000054C
_0219D140: .word 0x00000558
	thumb_func_end ovy295_219ced4

	thumb_func_start ovy295_219d144
ovy295_219d144: ; 0x0219D144
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x54
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy295_219d144

	thumb_func_start ovy295_219d154
ovy295_219d154: ; 0x0219D154
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	mov r4, #1
	bl sub_02046DF8
	ldr r0, _0219D204 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r6, #0x1a
	lsl r6, r6, #0x16
	mov r2, #0x29
	mov r0, #0
	add r1, r6, #0
	lsl r2, r2, #0xe
	blx MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	ldrh r0, [r5]
	bl ovy295_219d250
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r5, #0x10]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	lsr r3, r6, #0x12
	bl sub_0204B0B8
	ldrh r2, [r5, #2]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	bl sub_0204875C
	str r0, [r5, #0x14]
	ldrh r0, [r5]
	bl sub_020241D4
	str r0, [r5, #0x18]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #0xc
	str r0, [sp]
	mov r0, #0
	mov r3, #0
	bl sub_02024D00
	mov r6, #4
	str r6, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x12
	mov r3, #0x1b
	bl sub_020480C0
	str r0, [r5, #0x1c]
	ldrh r0, [r5]
	mov r2, #0xa
	mov r3, #0x20
	add r1, r0, #0
	bl sub_0203A78C
	str r0, [r5, #0x24]
	ldrh r1, [r5]
	lsl r0, r6, #8
	bl sub_02048530
	str r0, [r5, #0xc]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0219D204: .word 0x000001FF
	thumb_func_end ovy295_219d154

	thumb_func_start ovy295_219d208
ovy295_219d208: ; 0x0219D208
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_0203A850
	ldr r0, [r4, #0x24]
	bl GFL_TCBExMgrFree
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02024EEC
	ldr r0, [r4, #0x1c]
	bl sub_02048210
	ldr r0, [r4, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x18]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x14]
	bl GFL_MsgDataFree
	mov r0, #0
	bl sub_02044B84
	ldr r0, [r4, #0x10]
	bl sub_02022DA8
	bl ovy295_219d2b8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy295_219d208

	thumb_func_start ovy295_219d250
ovy295_219d250: ; 0x0219D250
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_020444A4
	ldr r0, _0219D2A8 ; =0x0219D744
	bl sub_02046C40
	ldr r0, _0219D2AC ; =0x0219D714
	bl sub_02044710
	ldr r1, _0219D2B0 ; =0x0219D724
	mov r0, #0
	mov r2, #0
	mov r4, #0
	bl sub_0204476C
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x1a
	mov r0, #0x17
	mov r1, #7
	mov r2, #0
	lsl r3, r3, #4
	str r5, [sp, #4]
	bl sub_0204B0B8
	bl sub_02015878
	cmp r0, #0x16
	bne _0219D294
	add r0, r4, #0
	ldr r1, _0219D2B4 ; =0x0000FFFF
	b _0219D298
_0219D294:
	add r0, r4, #0
	add r1, r4, #0
_0219D298:
	bl sub_02045350
	add r0, r5, #0
	bl sub_02048080
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219D2A8: .word 0x0219D744
_0219D2AC: .word 0x0219D714
_0219D2B0: .word 0x0219D724
_0219D2B4: .word 0x0000FFFF
	thumb_func_end ovy295_219d250

	thumb_func_start ovy295_219d2b8
ovy295_219d2b8: ; 0x0219D2B8
	push {r3, lr}
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy295_219d2b8

	thumb_func_start ovy295_219d2c4
ovy295_219d2c4: ; 0x0219D2C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r3, [sp, #0x18]
	add r6, r1, #0
	mov r0, #1
	ldrh r1, [r5]
	lsl r0, r0, #0xa
	add r7, r2, #0
	bl sub_02048530
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #8]
	mov r1, #0
	mov r6, #0
	bl GFL_CopyVarForText
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0xc]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	bl sub_02017BCC
	ldr r1, [r5, #0x10]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	ldr r0, _0219D344 ; =0x00000F0F
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x18]
	ldr r3, [r5, #0xc]
	bl sub_02022268
	str r0, [r5, #0x20]
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x1c]
	mov r1, #2
	mov r2, #1
	mov r3, #0xc
	bl sub_02024E80
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D344: .word 0x00000F0F
	thumb_func_end ovy295_219d2c4

	thumb_func_start ovy295_219d348
ovy295_219d348: ; 0x0219D348
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017994
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017A40
	add r5, r0, #0
	bl sub_02008CEC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02008CF0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02008CF4
	ldr r2, _0219D388 ; =0x00002710
	add r3, r0, #0
	mul r2, r4
	mov r4, #0x64
	mul r4, r6
	add r2, r2, r4
	add r0, r7, #0
	mov r1, #2
	add r2, r3, r2
	bl sub_020094CC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D388: .word 0x00002710
	thumb_func_end ovy295_219d348

	thumb_func_start ovy295_219d38c
ovy295_219d38c: ; 0x0219D38C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017934
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017994
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200746C
	cmp r0, #0
	bne _0219D3B4
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #1
	bl sub_0200955C
_0219D3B4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy295_219d38c

	thumb_func_start ovy295_219d3b8
ovy295_219d3b8: ; 0x0219D3B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_02017994
	mov r1, #0x47
	bl sub_020095AC
	cmp r0, #0
	bne _0219D3D2
	ldr r0, [r4, #4]
	bl sub_021631A0
_0219D3D2:
	pop {r4, pc}
	thumb_func_end ovy295_219d3b8

	thumb_func_start ovy295_219d3d4
ovy295_219d3d4: ; 0x0219D3D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, sp, #0
	bl RTC_GetDate
	ldr r0, [r5, #4]
	bl sub_0201735C
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02017934
	add r4, r0, #0
	mov r1, #8
	mov r2, #4
	bl sub_020074EC
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_02007678
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0200746C
	cmp r0, #0
	bne _0219D426
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0
	mov r3, #4
	bl sub_0200F57C
	ldr r0, [r5, #4]
	mov r1, #8
	bl sub_020178C4
	mov r0, #1
	str r0, [r5, #0x38]
_0219D426:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy295_219d3d4

	thumb_func_start ovy295_219d42c
ovy295_219d42c: ; 0x0219D42C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_02017934
	add r4, r0, #0
	bl sub_0200746C
	cmp r0, #0
	bne _0219D45C
	ldr r0, [r5, #4]
	mov r1, #8
	mov r6, #8
	bl sub_020178F4
	sub r0, r0, #2
	cmp r0, #1
	bhi _0219D45C
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02007534
	mov r0, #1
	str r0, [r5, #0x3c]
_0219D45C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy295_219d42c

	thumb_func_start ovy295_219d460
ovy295_219d460: ; 0x0219D460
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #1
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x54
	lsl r2, r2, #0x12
	mov r6, #0x54
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x54
	bl sub_0203AAEC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1c
	blx MIi_CpuClear32
	strh r6, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy295_219d460

	thumb_func_start ovy295_219d498
ovy295_219d498: ; 0x0219D498
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r3, #0
	bl sub_0203DEFC
	ldr r1, [r5]
	cmp r1, #5
	bls _0219D4AC
	b _0219D5EE
_0219D4AC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219D4B8: ; jump table
	.short _0219D4C4 - _0219D4B8 - 2 ; case 0
	.short _0219D570 - _0219D4B8 - 2 ; case 1
	.short _0219D584 - _0219D4B8 - 2 ; case 2
	.short _0219D58E - _0219D4B8 - 2 ; case 3
	.short _0219D5A8 - _0219D4B8 - 2 ; case 4
	.short _0219D5BE - _0219D4B8 - 2 ; case 5
_0219D4C4:
	ldr r0, _0219D5F4 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	mov r6, #0
	blx MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	ldrh r0, [r4]
	bl ovy295_219d60c
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r4, #0x18]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x2a
	mov r7, #2
	bl sub_0204875C
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	bl sub_020241D4
	str r0, [r4, #0x10]
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #7
	mov r3, #0x1b
	bl sub_020480C0
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0219D534
	add r0, r4, #0
	mov r1, #3
	b _0219D538
_0219D534:
	add r0, r4, #0
	add r1, r7, #0
_0219D538:
	mov r2, #6
	add r3, r6, #0
	bl ovy295_219d66c
	ldr r6, [r4, #0x14]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
_0219D568:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0219D5EE
_0219D570:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_0204E060
	ldr r0, _0219D5F8 ; =0x04000050
	strh r4, [r0]
	b _0219D568
_0219D584:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D5EE
	b _0219D568
_0219D58E:
	mov r1, #1
	tst r1, r0
	bne _0219D59A
	mov r1, #2
	tst r0, r1
	beq _0219D5EE
_0219D59A:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	b _0219D568
_0219D5A8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219D5EE
	ldr r0, [r4, #0x14]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	b _0219D568
_0219D5BE:
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_02024EEC
	ldr r0, [r4, #0x14]
	bl sub_02048210
	ldr r0, [r4, #0x10]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0xc]
	bl GFL_MsgDataFree
	mov r0, #0
	bl sub_02044B84
	ldr r0, [r4, #0x18]
	bl sub_02022DA8
	bl ovy295_219d660
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219D5EE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D5F4: .word 0x000001FF
_0219D5F8: .word 0x04000050
	thumb_func_end ovy295_219d498

	thumb_func_start ovy295_219d5fc
ovy295_219d5fc: ; 0x0219D5FC
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x54
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy295_219d5fc

	thumb_func_start ovy295_219d60c
ovy295_219d60c: ; 0x0219D60C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_020444A4
	ldr r0, _0219D654 ; =0x0219D7B0
	bl sub_02046C40
	ldr r0, _0219D658 ; =0x0219D780
	bl sub_02044710
	ldr r1, _0219D65C ; =0x0219D790
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x1a
	mov r0, #0x17
	mov r1, #7
	mov r2, #0
	lsl r3, r3, #4
	str r4, [sp, #4]
	bl sub_0204B0B8
	mov r0, #0
	mov r1, #0
	bl sub_02045350
	add r0, r4, #0
	bl sub_02048080
	add sp, #8
	pop {r4, pc}
	nop
_0219D654: .word 0x0219D7B0
_0219D658: .word 0x0219D780
_0219D65C: .word 0x0219D790
	thumb_func_end ovy295_219d60c

	thumb_func_start ovy295_219d660
ovy295_219d660: ; 0x0219D660
	push {r3, lr}
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy295_219d660

	thumb_func_start ovy295_219d66c
ovy295_219d66c: ; 0x0219D66C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r5, r0, #0
	mov r6, #1
	lsl r6, r6, #0xa
	str r3, [sp, #8]
	add r7, r1, #0
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_02048530
	add r4, r0, #0
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_02048530
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x14]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #8]
	mov r1, #1
	bl GFL_CopyVarForText
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldr r0, [r5, #0x14]
	bl sub_020484F4
	ldr r1, [r5, #0x18]
	add r3, r6, #0
	str r1, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_02021CFC
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x14]
	bl sub_02048244
	ldr r0, [r5, #0x14]
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy295_219d66c
_0219D704:
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0xD5, 0xCE, 0x19, 0x02
	.byte 0x45, 0xD1, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x61, 0xD4, 0x19, 0x02, 0x99, 0xD4, 0x19, 0x02, 0xFD, 0xD5, 0x19, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219D704
