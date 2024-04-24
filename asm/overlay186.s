    .include "macros/function.inc"
	.include "overlay186.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy186_21a75a0
ovy186_21a75a0: ; 0x021A75A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r2, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021A77D0 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021A77D4 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
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
	mov r2, #5
	mov r0, #1
	mov r1, #0x27
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	add r0, r4, #0
	ldr r4, _021A77D8 ; =0x000033A8
	mov r2, #0x27
	add r1, r4, #0
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0x27
	ldr r7, _021A77DC ; =0x00003074
	strh r0, [r5]
	strh r0, [r5, r7]
	str r6, [r5, #0x24]
	ldr r0, [r6, #4]
	str r0, [r5, #0x28]
	ldr r0, [r6]
	str r0, [r5, #0x2c]
	bl sub_0203D554
	sub r7, #0x10
	str r0, [r5, r7]
	bl sub_02017BCC
	add r1, r4, #0
	sub r1, #0xaf
	strb r0, [r5, r1]
	add r1, r4, #0
	sub r1, #0xb0
	mov r0, #0
	strb r0, [r5, r1]
	ldr r0, [r5, #0x28]
	add r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	beq _021A764C
	add r0, r4, #0
	sub r0, #0xba
	ldrb r1, [r5, r0]
	mov r0, #1
	sub r4, #0xba
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r4]
	b _021A765A
_021A764C:
	add r0, r4, #0
	sub r0, #0xba
	ldrb r1, [r5, r0]
	mov r0, #1
	sub r4, #0xba
	bic r1, r0
	strb r1, [r5, r4]
_021A765A:
	mov r3, #1
	mov r2, #0
	ldr r4, _021A77E0 ; =0x000032D8
	add r0, r2, #0
	add r1, r3, #0
_021A7664:
	ldr r6, [r5, #0x28]
	ldrh r6, [r6, #8]
	tst r6, r3
	beq _021A7672
	add r6, r5, r2
	strb r1, [r6, r4]
	b _021A7676
_021A7672:
	add r6, r5, r2
	strb r0, [r6, r4]
_021A7676:
	lsl r3, r3, #0x11
	add r2, r2, #1
	lsr r3, r3, #0x10
	cmp r2, #0x10
	blt _021A7664
	bl sub_02042A78
	cmp r0, #0
	ble _021A7692
	ldr r1, _021A77E4 ; =0x000032EE
	mov r0, #2
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_021A7692:
	ldrh r0, [r5]
	bl GFL_BGSysCreate
	add r0, r5, #0
	bl ovy186_21a7b08
	ldr r6, _021A77E8 ; =0x021ACDB0
	add r0, r6, #0
	bl GFL_BGSysSetVRAMBanks
	bl ovy186_21a7d64
	add r0, r5, #0
	bl ovy186_21a7ec0
	ldr r4, _021A77DC ; =0x00003074
	add r1, r6, #0
	add r0, r5, r4
	bl ovy186_21aaf00
	ldr r2, [r5, #0x24]
	add r0, r5, #0
	ldr r1, [r2, #4]
	ldr r2, [r2]
	bl ovy186_21aa90c
	add r0, r5, r4
	bl ovy186_21aaff0
	add r0, r5, #0
	bl ovy186_21a9f80
	mov r0, #8
	ldr r6, _021A77EC ; =0x000032F0
	str r0, [sp]
	mov r7, #1
	add r3, r6, #0
	str r7, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	add r0, r4, #4
	sub r3, #0xd8
	ldr r0, [r5, r0]
	ldr r2, [r5, r6]
	ldr r3, [r5, r3]
	mov r1, #1
	bl sub_02034168
	add r1, r6, #0
	sub r1, #0x1c
	str r0, [r5, r1]
	sub r6, #0xc8
	ldr r1, [r5, #0x14]
	ldr r3, [r5, r6]
	add r0, r5, #0
	mov r2, #1
	bl sub_021AAEFC
	ldr r1, [r5, #0x24]
	ldr r0, [r1, #0x18]
	cmp r0, #2
	bne _021A7718
	mov r0, #0
	str r0, [r1, #0x18]
	sub r4, #0x3c
	str r7, [r5, r4]
	b _021A771E
_021A7718:
	mov r0, #0
	sub r4, #0x3c
	str r0, [r5, r4]
_021A771E:
	ldr r1, [r5, #0x24]
	mov r0, #0
	str r0, [r1, #0x10]
	ldr r1, _021A77F0 ; =0x000032E8
	ldr r2, _021A77F4 ; =0x000031E0
	strb r0, [r5, r1]
	str r0, [r5, r2]
	ldr r2, [r5, #0x28]
	ldrb r2, [r2, #4]
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	beq _021A773C
	add r1, r1, #4
	strb r0, [r5, r1]
	b _021A7742
_021A773C:
	mov r2, #2
	add r0, r1, #4
	strb r2, [r5, r0]
_021A7742:
	ldr r4, _021A77F8 ; =0x00003050
	mov r0, #0x80
	str r0, [r5, r4]
	mov r1, #0x60
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r4, #0
	mov r6, #0
	add r0, #8
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	str r6, [r5, r0]
	bl ovy186_21a943c
	ldr r1, _021A77FC ; =0x0000333C
	str r6, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	sub r1, #0x21
	add r0, r5, #0
	strb r6, [r5, r1]
	bl ovy186_21a9c80
	add r0, r5, #0
	bl ovy186_21a9cf8
	add r0, r5, #0
	bl ovy186_21a8178
	ldr r2, [r5, #0x24]
	sub r4, #0x18
	ldr r1, [r5, r4]
	ldr r2, [r2, #0xc]
	add r0, r5, #0
	bl ovy186_21a9bdc
	ldr r0, _021A7800 ; =ovy186_21a93e4
	add r1, r5, #0
	mov r2, #1
	mov r4, #1
	bl GFL_VBlankTCBAdd
	ldr r6, _021A7804 ; =0x00003210
	mov r2, #3
	str r0, [r5, r6]
	ldrh r0, [r5]
	mov r3, #0
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	add r1, r6, #4
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #3
	str r0, [sp, #8]
	mov r0, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A77D0: .word 0xFFFFE0FF
_021A77D4: .word 0x04001000
_021A77D8: .word 0x000033A8
_021A77DC: .word 0x00003074
_021A77E0: .word 0x000032D8
_021A77E4: .word 0x000032EE
_021A77E8: .word 0x021ACDB0
_021A77EC: .word 0x000032F0
_021A77F0: .word 0x000032E8
_021A77F4: .word 0x000031E0
_021A77F8: .word 0x00003050
_021A77FC: .word 0x0000333C
_021A7800: .word ovy186_21a93e4
_021A7804: .word 0x00003210
	thumb_func_end ovy186_21a75a0

	thumb_func_start sub_021A7808
sub_021A7808: ; 0x021A7808
	ldrb r1, [r0, #6]
	add r1, r1, #1
	strb r1, [r0, #6]
	ldrb r1, [r0, #4]
	ldrb r2, [r0, #6]
	lsl r1, r1, #0x1e
	lsr r3, r1, #0x1f
	add r1, r3, #1
	lsl r1, r1, #3
	sub r1, r1, #1
	cmp r2, r1
	ble _021A7824
	lsl r1, r3, #3
	strb r1, [r0, #6]
_021A7824:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7808

	thumb_func_start ovy186_21a7828
ovy186_21a7828: ; 0x021A7828
	push {r3, lr}
	ldr r2, _021A7858 ; =0x0000331D
	ldrb r3, [r0, r2]
	cmp r3, #0
	beq _021A7838
	sub r1, r3, #1
	strb r1, [r0, r2]
	pop {r3, pc}
_021A7838:
	cmp r1, #5
	ble _021A7856
	mov r1, #5
	strb r1, [r0, r2]
	sub r1, r2, #3
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021A7850
	ldr r0, _021A785C ; =0x00000866
	bl GFL_SndSEPlay
	pop {r3, pc}
_021A7850:
	ldr r0, _021A7860 ; =0x00000867
	bl GFL_SndSEPlay
_021A7856:
	pop {r3, pc}
	.align 2, 0
_021A7858: .word 0x0000331D
_021A785C: .word 0x00000866
_021A7860: .word 0x00000867
	thumb_func_end ovy186_21a7828

	thumb_func_start ovy186_21a7864
ovy186_21a7864: ; 0x021A7864
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #0xa
	bhi _021A789C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A787E: ; jump table
	.short _021A7894 - _021A787E - 2 ; case 0
	.short _021A78A4 - _021A787E - 2 ; case 1
	.short _021A78FE - _021A787E - 2 ; case 2
	.short _021A790C - _021A787E - 2 ; case 3
	.short _021A7934 - _021A787E - 2 ; case 4
	.short _021A7942 - _021A787E - 2 ; case 5
	.short _021A795A - _021A787E - 2 ; case 6
	.short _021A797C - _021A787E - 2 ; case 7
	.short _021A79C6 - _021A787E - 2 ; case 8
	.short _021A794E - _021A787E - 2 ; case 9
	.short _021A7998 - _021A787E - 2 ; case 10
_021A7894:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	bne _021A789E
_021A789C:
	b _021A79C6
_021A789E:
	mov r0, #1
	str r0, [r5]
	b _021A79C6
_021A78A4:
	add r0, r4, #0
	bl ovy186_21a92a0
	add r1, r0, #0
	add r0, r4, #0
	add r2, r5, #0
	bl ovy186_21a92d0
	add r0, r4, #0
	bl ovy186_21a96b4
	add r0, r4, #0
	bl ovy186_21a9d44
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A79C6
	add r0, r4, #0
	add r0, #0x30
	ldr r1, _021A7A04 ; =0x00003062
	str r0, [sp]
	ldrh r2, [r4, r1]
	sub r1, r1, #2
	mov r3, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldrh r1, [r4, r1]
	ldr r2, _021A7A08 ; =0x00003312
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	add r1, r4, r2
	add r2, r2, #4
	add r2, r4, r2
	bl ovy186_21a9b2c
	add r1, r0, #0
	add r0, r4, #0
	bl ovy186_21a7828
	b _021A79C6
_021A78FE:
	ldr r0, _021A7A0C ; =0x0000310C
	ldr r0, [r4, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A79C6
	b _021A7918
_021A790C:
	ldr r0, _021A7A10 ; =0x00003110
	ldr r0, [r4, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A79C6
_021A7918:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #4
	mov r2, #4
	str r0, [sp, #8]
	mov r0, #2
	mov r3, #0
	mov r6, #4
	bl GFL_FadeScreenSet
	b _021A79C4
_021A7934:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021A79C6
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021A7942:
	add r0, r4, #0
	bl ovy186_21a8534
	cmp r0, #0
	beq _021A79C6
	b _021A789E
_021A794E:
	add r0, r4, #0
	bl ovy186_21a87bc
	cmp r0, #0
	beq _021A79C6
	b _021A789E
_021A795A:
	mov r0, #6
	str r0, [sp]
	mov r6, #1
	str r6, [sp, #4]
	ldrh r0, [r4]
	str r0, [sp, #8]
_021A7966:
	mov r0, #2
	mov r1, #4
	mov r2, #4
	mov r3, #0
	mov r7, #4
	bl GFL_FadeScreenSet
	ldr r0, [r4, #0x24]
	str r6, [r0, #0x10]
	str r7, [r5]
	b _021A79C6
_021A797C:
	ldr r0, _021A7A14 ; =0x00003114
	ldr r0, [r4, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A79C6
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r6, #2
	str r0, [sp, #8]
	b _021A7966
_021A7998:
	mov r0, #0xc5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A79C6
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #4
	mov r2, #4
	str r0, [sp, #8]
	mov r0, #2
	mov r3, #0
	mov r6, #4
	bl GFL_FadeScreenSet
	ldr r0, [r4, #0x24]
	str r6, [r0, #0x10]
_021A79C4:
	str r6, [r5]
_021A79C6:
	ldr r0, _021A7A18 ; =0x000032FA
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldrb r2, [r4, r0]
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	blt _021A79DC
	mov r1, #0
	strb r1, [r4, r0]
_021A79DC:
	bl sub_0204B794
	ldr r5, _021A7A1C ; =0x000032D4
	ldr r0, [r4, r5]
	bl sub_02034220
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	bl sub_02021A3C
	sub r5, #0xc0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A79FE
	bl sub_0203A7F4
_021A79FE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A7A04: .word 0x00003062
_021A7A08: .word 0x00003312
_021A7A0C: .word 0x0000310C
_021A7A10: .word 0x00003110
_021A7A14: .word 0x00003114
_021A7A18: .word 0x000032FA
_021A7A1C: .word 0x000032D4
	thumb_func_end ovy186_21a7864

	thumb_func_start ovy186_21a7a20
ovy186_21a7a20: ; 0x021A7A20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	ldr r1, [r5, #0x28]
	add r7, r0, #0
	ldrb r0, [r1, #4]
	add r4, r2, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bne _021A7A56
	add r0, r5, #0
	add r0, #0x30
	add r1, #0x74
	bl ovy186_21a9578
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	bl sub_020179BC
	bl sub_020091A8
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	mov r2, #6
	add r0, #0x74
	lsl r2, r2, #8
	blx MI_CpuCopy8
_021A7A56:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021A7A92
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	bl sub_0201736C
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	bl sub_020179BC
	ldr r1, [r5, #0x28]
	add r4, r0, #0
	ldrb r1, [r1, #6]
	add r0, r6, #0
	bl sub_02008BF8
	ldr r1, [r5, #0x28]
	add r0, r4, #0
	ldr r1, [r1, #0x48]
	bl sub_020091F0
	ldr r1, [r5, #0x28]
	add r0, r4, #0
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl sub_020091F8
_021A7A92:
	ldr r4, _021A7B00 ; =0x000032D4
	ldr r0, [r5, r4]
	bl sub_02034264
	bl ovy186_21a943c
	add r0, r5, #0
	bl ovy186_21a7c28
	ldr r6, _021A7B04 ; =0x00003074
	add r0, r5, r6
	bl ovy186_21ab0b0
	add r0, r6, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r4, #0
	sub r0, #0xe0
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r4, #0
	sub r0, #0xd0
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r5, #0
	bl ovy186_21aa020
	bl ovy186_21a8074
	add r0, r4, #0
	sub r0, #0xc4
	ldr r0, [r5, r0]
	bl GFL_TCBRemove
	sub r4, #0xc0
	ldr r0, [r5, r4]
	bl GFL_TCBExMgrFree
	sub r6, #0x10
	ldr r0, [r5, r6]
	bl sub_0203D564
	add r0, r7, #0
	bl sub_0203AB10
	mov r0, #0x27
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A7B00: .word 0x000032D4
_021A7B04: .word 0x00003074
	thumb_func_end ovy186_21a7a20

	thumb_func_start ovy186_21a7b08
ovy186_21a7b08: ; 0x021A7B08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r4, #0
	bl GFL_FontCreate
	ldr r6, _021A7C18 ; =0x00003218
	ldr r2, _021A7C1C ; =0x0000017B
	str r0, [r5, r6]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r1, r6, #4
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #4
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0xc
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0x14
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #0x21
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0x18
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #0x20
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0xb0
	str r0, [r5, r1]
	add r2, r6, #0
	add r0, r6, #4
	add r2, #0x10
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1b
	bl GFL_MsgDataLoadStrbuf
	add r2, r6, #0
	add r0, r6, #4
	add r2, #0xb0
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1c
	bl GFL_MsgDataLoadStrbuf
	add r7, r6, #4
	add r6, #0x1c
_021A7B9C:
	add r1, r4, #0
	ldr r0, [r5, r7]
	add r1, #0x1e
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #3
	blt _021A7B9C
	ldr r7, _021A7C20 ; =0x0000321C
	mov r4, #0
	add r6, r7, #0
	add r6, #0x24
_021A7BBA:
	add r1, r4, #0
	ldr r0, [r5, r7]
	add r1, #0x21
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #2
	blt _021A7BBA
	ldr r7, _021A7C20 ; =0x0000321C
	mov r4, #0
	add r6, r7, #0
	add r6, #0x2c
_021A7BD8:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #0x1b
	blt _021A7BD8
	ldr r7, _021A7C20 ; =0x0000321C
	mov r4, #0
	add r6, r7, #0
	add r6, #0x98
_021A7BF4:
	add r1, r4, #0
	ldr r0, [r5, r7]
	add r1, #0x3c
	bl sub_0204898C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #5
	blt _021A7BF4
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	ldr r1, _021A7C24 ; =0x00003220
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A7C18: .word 0x00003218
_021A7C1C: .word 0x0000017B
_021A7C20: .word 0x0000321C
_021A7C24: .word 0x00003220
	thumb_func_end ovy186_21a7b08

	thumb_func_start ovy186_21a7c28
ovy186_21a7c28: ; 0x021A7C28
	push {r4, r5, r6, lr}
	ldr r6, _021A7CD0 ; =0x00003220
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl GFL_WordSetSystemFree
	mov r4, #0
	add r6, #0x94
_021A7C38:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #5
	blt _021A7C38
	ldr r6, _021A7CD4 ; =0x00003248
	mov r4, #0
_021A7C4C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #0x1b
	blt _021A7C4C
	ldr r4, _021A7CD8 ; =0x00003244
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
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	sub r4, #0x2c
	ldr r0, [r5, r4]
	bl sub_02022DA8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A7CD0: .word 0x00003220
_021A7CD4: .word 0x00003248
_021A7CD8: .word 0x00003244
	thumb_func_end ovy186_21a7c28

	thumb_func_start ovy186_21a7cdc
ovy186_21a7cdc: ; 0x021A7CDC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	mov r3, #1
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _021A7CF0
	cmp r0, #0x14
	bne _021A7CF4
_021A7CF0:
	mov r3, #0
	b _021A7D02
_021A7CF4:
	cmp r0, #0x17
	beq _021A7CFC
	cmp r0, #0x15
	bne _021A7D00
_021A7CFC:
	mov r3, #1
	b _021A7D02
_021A7D00:
	mov r1, #6
_021A7D02:
	ldr r0, _021A7D38 ; =0x021ADA00
	lsl r2, r1, #3
	lsl r1, r3, #2
	add r0, r0, r2
	ldr r4, [r1, r0]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldrh r0, [r5]
	add r1, r4, #0
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x27
	mov r3, #0
	bl GFL_BGSysLoadNCLRDefault
	add r1, r4, #0
	ldr r4, _021A7D3C ; =0x00003208
	ldrh r3, [r5]
	mov r0, #0x27
	add r2, r5, r4
	bl sub_0204B354
	sub r1, r4, #4
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A7D38: .word 0x021ADA00
_021A7D3C: .word 0x00003208
	thumb_func_end ovy186_21a7cdc

	thumb_func_start ovy186_21a7d40
ovy186_21a7d40: ; 0x021A7D40
	push {r3, lr}
	sub sp, #8
	mov r2, #0x20
	str r2, [sp]
	ldrh r0, [r0]
	lsl r2, r1, #3
	ldr r1, _021A7D60 ; =0x021ACF74
	str r0, [sp, #4]
	ldr r1, [r1, r2]
	mov r0, #0x28
	mov r2, #4
	mov r3, #0x80
	bl GFL_BGSysLoadNCLRDefault
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_021A7D60: .word 0x021ACF74
	thumb_func_end ovy186_21a7d40

	thumb_func_start ovy186_21a7d64
ovy186_21a7d64: ; 0x021A7D64
	push {r3, r4, r5, lr}
	sub sp, #0xd0
	ldr r2, _021A7E84 ; =0x04000304
	ldr r4, _021A7E88 ; =0x021ACE60
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	add r3, sp, #0xc0
	orr r0, r1
	strh r0, [r2]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	ldr r4, _021A7E8C ; =0x021ACEB0
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
	mov r0, #7
	mov r2, #2
	bl sub_0204476C
	mov r0, #7
	bl sub_02045708
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	ldr r4, _021A7E90 ; =0x021ACF30
	add r3, sp, #0x60
	mov r2, #8
_021A7DBA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A7DBA
	mov r0, #4
	add r1, sp, #0x60
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	bl sub_02045708
	mov r0, #4
	mov r1, #1
	mov r4, #1
	bl sub_02044C98
	mov r0, #5
	add r1, sp, #0x80
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045708
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	ldr r5, _021A7E94 ; =0x021ACED0
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #2
	bl sub_0204476C
	mov r0, #6
	bl sub_02045708
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	ldr r5, _021A7E98 ; =0x021ACE70
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045708
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	ldr r5, _021A7E9C ; =0x021ACE90
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	mov r5, #3
	bl sub_0204476C
	mov r0, #3
	bl sub_02045708
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02044C98
	add sp, #0xd0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A7E84: .word 0x04000304
_021A7E88: .word 0x021ACE60
_021A7E8C: .word 0x021ACEB0
_021A7E90: .word 0x021ACF30
_021A7E94: .word 0x021ACED0
_021A7E98: .word 0x021ACE70
_021A7E9C: .word 0x021ACE90
	thumb_func_end ovy186_21a7d64

	thumb_func_start sub_021A7EA0
sub_021A7EA0: ; 0x021A7EA0
	cmp r0, #0x14
	beq _021A7EA8
	cmp r0, #0x16
	bne _021A7EAC
_021A7EA8:
	mov r0, #0x25
	bx lr
_021A7EAC:
	mov r0, #0x21
	bx lr
	thumb_func_end sub_021A7EA0

	thumb_func_start sub_021A7EB0
sub_021A7EB0: ; 0x021A7EB0
	cmp r0, #0x14
	beq _021A7EB8
	cmp r0, #0x16
	bne _021A7EBC
_021A7EB8:
	mov r0, #0x31
	bx lr
_021A7EBC:
	mov r0, #0x30
	bx lr
	thumb_func_end sub_021A7EB0

	thumb_func_start ovy186_21a7ec0
ovy186_21a7ec0: ; 0x021A7EC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r2, [r5, #0x28]
	ldrb r1, [r2, #3]
	ldrb r2, [r2, #4]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	bl ovy186_21a7cdc
	ldr r1, [r5, #0x28]
	ldr r4, _021A8068 ; =0x00003034
	ldrb r0, [r1, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	ldrh r0, [r5]
	bne _021A7F22
	str r0, [sp]
	mov r0, #0x27
	mov r1, #0x24
	mov r2, #0
	add r3, r5, r4
	mov r6, #0x27
	mov r7, #0
	bl sub_0204B264
	sub r1, r4, #4
	str r0, [r5, r1]
	ldr r0, [r5, #0x28]
	ldr r4, _021A806C ; =0x000031F8
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	ldrh r0, [r5]
	bne _021A7F1A
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x32
_021A7F0C:
	add r2, r7, #0
	add r3, r5, r4
	bl sub_0204B304
	sub r1, r4, #4
	str r0, [r5, r1]
	b _021A7F5A
_021A7F1A:
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x33
	b _021A7F0C
_021A7F22:
	str r0, [sp]
	ldrb r1, [r1, #6]
	mov r0, #0x28
	add r3, r5, r4
	lsl r2, r1, #3
	ldr r1, _021A8070 ; =0x021ACF70
	ldr r1, [r1, r2]
	mov r2, #0
	bl sub_0204B264
	sub r1, r4, #4
	str r0, [r5, r1]
	ldrh r0, [r5]
	ldr r4, _021A806C ; =0x000031F8
	mov r1, #0x20
	str r0, [sp]
	mov r0, #0x28
	mov r2, #0
	add r3, r5, r4
	bl sub_0204B304
	sub r1, r4, #4
	str r0, [r5, r1]
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	ldrb r1, [r1, #6]
	bl ovy186_21a7d40
_021A7F5A:
	add r0, r5, #0
	bl ovy186_21a94a8
	ldr r0, [r5, #0x28]
	ldrb r0, [r0]
	bl sub_021A7EA0
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #6
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0x27
	mov r6, #0x27
	bl sub_0204AD88
	ldr r0, [r5, #0x28]
	ldrb r0, [r0]
	bl sub_021A7EB0
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #6
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0x27
	bl sub_0204AF18
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x23
	mov r2, #5
	str r0, [sp, #8]
	mov r0, #0x27
	mov r3, #0
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x2f
	mov r2, #5
	str r0, [sp, #8]
	mov r0, #0x27
	mov r3, #0
	bl sub_0204AF18
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x23
	mov r2, #3
	str r0, [sp, #8]
	mov r0, #0x27
	mov r3, #0
	mov r7, #3
	bl sub_0204AD88
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x2f
	mov r2, #3
	str r0, [sp, #8]
	mov r0, #0x27
	mov r3, #0
	bl sub_0204AF18
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x12
	add r2, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, r4, #0
	bl GFL_BGSysLoadNCLRDefault
	ldr r0, [r5, #0x28]
	add r1, r5, #0
	add r0, #0x74
	add r1, #0x30
	bl ovy186_21a9520
	bl GetDefaultUINarcIdx
	add r6, r0, #0
	bl sub_0202D824
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #4
	add r3, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204AD88
	bl GetDefaultUINarcIdx
	add r6, r0, #0
	bl sub_0202D828
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #4
	add r3, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204AF18
	str r7, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #4
	add r1, r4, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #4
	bl GFL_BGSysLoadScr
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A8068: .word 0x00003034
_021A806C: .word 0x000031F8
_021A8070: .word 0x021ACF70
	thumb_func_end ovy186_21a7ec0

	thumb_func_start ovy186_21a8074
ovy186_21a8074: ; 0x021A8074
	push {r3, lr}
	mov r0, #0x1f
	mov r1, #0
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x1f
	mov r1, #0
	bl GFL_BGSysSetBGEnabledB
	mov r0, #5
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	mov r0, #5
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy186_21a8074

	thumb_func_start ovy186_21a80d8
ovy186_21a80d8: ; 0x021A80D8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _021A8124 ; =0x021ACE50
	add r3, sp, #0xc
	add r4, r0, #0
	add r2, r1, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	cmp r2, #0x14
	beq _021A80F4
	cmp r2, #0x16
	bne _021A80F8
_021A80F4:
	mov r2, #0
	b _021A80FA
_021A80F8:
	mov r2, #1
_021A80FA:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldrh r0, [r4]
	lsl r2, r2, #2
	str r0, [sp, #8]
	ldr r1, [r4, #0x28]
	mov r0, #0x27
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	lsl r4, r1, #3
	add r1, sp, #0xc
	add r1, r1, r4
	ldr r1, [r2, r1]
	mov r2, #6
	bl sub_0204AF18
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021A8124: .word 0x021ACE50
	thumb_func_end ovy186_21a80d8

	thumb_func_start ovy186_21a8128
ovy186_21a8128: ; 0x021A8128
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _021A8174 ; =0x00003038
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021A815C
	ldr r0, [r4, #0x28]
	ldrb r0, [r0]
	bl sub_021A7EB0
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r4]
	mov r2, #6
	str r0, [sp, #8]
	mov r0, #0x27
	bl sub_0204AF18
	mov r0, #7
	bl sub_02045738
	add sp, #0xc
	pop {r3, r4, pc}
_021A815C:
	ldr r1, [r4, #0x28]
	ldrb r1, [r1]
	bl ovy186_21a80d8
	add r0, r4, #0
	bl ovy186_21a9500
	mov r0, #7
	bl sub_02045738
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021A8174: .word 0x00003038
	thumb_func_end ovy186_21a8128

	thumb_func_start ovy186_21a8178
ovy186_21a8178: ; 0x021A8178
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy186_21a8128
	ldr r2, [r4, #0x28]
	add r0, r4, #0
	add r1, r4, #4
	bl ovy186_21aa04c
	ldr r5, _021A81E8 ; =0x000032D4
	ldr r0, [r4, r5]
	bl sub_02034220
	ldr r0, _021A81EC ; =0x00003038
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A81B0
	add r5, #0x32
	ldrsh r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	bl ovy186_21aa9d8
	add r0, r4, #0
	bl ovy186_21a94a8
	b _021A81C8
_021A81B0:
	ldr r2, [r4, #0x28]
	add r0, r4, #0
	add r1, r4, #4
	bl ovy186_21aa2e8
	add r5, #0x18
	add r1, r4, #0
	ldrb r2, [r4, r5]
	mov r0, #7
	add r1, #0x30
	bl ovy186_21a9694
_021A81C8:
	ldr r1, _021A81EC ; =0x00003038
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ovy186_21a850c
	add r0, r4, #0
	add r1, r4, #4
	bl ovy186_21aa298
	ldr r2, [r4, #0x24]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #0
	bl ovy186_21a9bdc
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A81E8: .word 0x000032D4
_021A81EC: .word 0x00003038
	thumb_func_end ovy186_21a8178

	thumb_func_start ovy186_21a81f0
ovy186_21a81f0: ; 0x021A81F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _021A8248
	ldr r4, _021A8364 ; =0x00003074
	mov r1, #0
	add r0, r5, r4
	mov r2, #1
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #4
	mov r2, #0x12
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #5
	mov r2, #6
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #2
	mov r2, #0x10
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, [r5, #0x24]
	mov r1, #0x18
	ldr r0, [r0, #8]
	bl GameData_IsShortcutRegistered
	add r2, r0, #0
	add r2, r2, #6
	lsl r2, r2, #0x18
	add r0, r5, r4
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	pop {r4, r5, r6, pc}
_021A8248:
	ldr r4, _021A8368 ; =0x00003062
	ldrh r0, [r5, r4]
	cmp r0, #0
	bne _021A82F6
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #0
	mov r2, #1
	mov r3, #1
	mov r6, #1
	bl ovy186_21ab104
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy186_21ab104
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #6
	mov r2, #0x16
	mov r3, #1
	bl ovy186_21ab104
	ldr r3, [r5, #0x28]
	add r0, r4, #0
	ldrb r3, [r3, #4]
	add r0, #0x12
	add r0, r5, r0
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1f
	eor r3, r6
	lsl r3, r3, #0x18
	mov r1, #4
	mov r2, #0x12
	lsr r3, r3, #0x18
	bl ovy186_21ab104
	ldr r2, _021A836C ; =0x0000331A
	add r0, r4, #0
	ldrb r2, [r5, r2]
	add r0, #0x12
	add r0, r5, r0
	lsl r3, r2, #1
	mov r2, #8
	sub r2, r2, r3
	ldr r3, [r5, #0x28]
	lsl r2, r2, #0x18
	ldrb r3, [r3, #4]
	mov r1, #5
	lsr r2, r2, #0x18
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1f
	eor r3, r6
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ovy186_21ab104
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	ldrb r1, [r1, #4]
	mov r2, #1
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl ovy186_21a8bf4
	ldr r0, [r5, #0x24]
	mov r1, #0x19
	ldr r0, [r0, #8]
	bl GameData_IsShortcutRegistered
	add r2, r0, #0
	add r2, r2, #6
	add r4, #0x12
	lsl r2, r2, #0x18
	add r0, r5, r4
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	pop {r4, r5, r6, pc}
_021A82F6:
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #0
	mov r2, #0xf
	mov r3, #1
	bl ovy186_21ab104
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #1
	mov r2, #0xe
	mov r3, #1
	bl ovy186_21ab104
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #4
	mov r2, #0x14
	mov r3, #1
	bl ovy186_21ab104
	ldr r2, _021A836C ; =0x0000331A
	add r0, r4, #0
	ldrb r2, [r5, r2]
	add r0, #0x12
	add r0, r5, r0
	lsl r3, r2, #1
	mov r2, #8
	sub r2, r2, r3
	lsl r2, r2, #0x18
	mov r1, #5
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	add r0, r4, #0
	add r0, #0x12
	add r0, r5, r0
	mov r1, #6
	mov r2, #0x16
	mov r3, #0
	bl ovy186_21ab104
	add r4, #0x12
	add r0, r5, r4
	mov r1, #2
	mov r2, #0xa
	mov r3, #0
	bl ovy186_21ab104
	pop {r4, r5, r6, pc}
	nop
_021A8364: .word 0x00003074
_021A8368: .word 0x00003062
_021A836C: .word 0x0000331A
	thumb_func_end ovy186_21a81f0

	thumb_func_start ovy186_21a8370
ovy186_21a8370: ; 0x021A8370
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	ldr r4, _021A8440 ; =0x00003074
	bne _021A83C8
	add r0, r5, r4
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #4
	mov r2, #0x12
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #5
	mov r2, #6
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #2
	mov r2, #0x10
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, [r5, #0x24]
	mov r1, #0x18
	ldr r0, [r0, #8]
	bl GameData_IsShortcutRegistered
	add r2, r0, #0
	add r2, r2, #6
	lsl r2, r2, #0x18
	add r0, r5, r4
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	pop {r3, r4, r5, pc}
_021A83C8:
	add r0, r5, r4
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #4
	mov r2, #0x12
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #6
	mov r2, #0x16
	mov r3, #1
	bl ovy186_21ab104
	ldr r2, _021A8444 ; =0x0000331A
	add r0, r5, r4
	ldrb r2, [r5, r2]
	mov r1, #5
	lsl r3, r2, #1
	mov r2, #8
	sub r2, r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	bl ovy186_21ab104
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	ldrb r1, [r1, #4]
	mov r2, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl ovy186_21a8bf4
	ldr r0, [r5, #0x24]
	mov r1, #0x19
	ldr r0, [r0, #8]
	bl GameData_IsShortcutRegistered
	add r2, r0, #0
	add r2, r2, #6
	lsl r2, r2, #0x18
	add r0, r5, r4
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	pop {r3, r4, r5, pc}
	nop
_021A8440: .word 0x00003074
_021A8444: .word 0x0000331A
	thumb_func_end ovy186_21a8370

	thumb_func_start ovy186_21a8448
ovy186_21a8448: ; 0x021A8448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	ldr r4, _021A8504 ; =0x00003074
	bne _021A849C
	add r0, r5, r4
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #1
	mov r2, #0xe
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #2
	mov r2, #0x10
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #5
	mov r2, #6
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #7
	mov r2, #6
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #4
	mov r2, #0
	mov r3, #0
	bl ovy186_21ab104
	pop {r3, r4, r5, pc}
_021A849C:
	add r0, r5, r4
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #4
	mov r2, #0x12
	mov r3, #0
	bl ovy186_21ab104
	add r0, r5, r4
	mov r1, #6
	mov r2, #0x16
	mov r3, #1
	bl ovy186_21ab104
	ldr r2, _021A8508 ; =0x0000331A
	add r0, r5, r4
	ldrb r2, [r5, r2]
	mov r1, #5
	lsl r3, r2, #1
	mov r2, #8
	sub r2, r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	bl ovy186_21ab104
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	ldrb r1, [r1, #4]
	mov r2, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl ovy186_21a8bf4
	add r0, r5, r4
	mov r1, #7
	mov r2, #6
	mov r3, #0
	bl ovy186_21ab104
	pop {r3, r4, r5, pc}
	nop
_021A8504: .word 0x00003074
_021A8508: .word 0x0000331A
	thumb_func_end ovy186_21a8448

	thumb_func_start ovy186_21a850c
ovy186_21a850c: ; 0x021A850C
	push {r3, lr}
	ldr r2, [r0, #0x28]
	ldrb r2, [r2, #4]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _021A8520
	bl ovy186_21a8448
	pop {r3, pc}
_021A8520:
	ldr r2, [r0, #0x24]
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _021A852E
	bl ovy186_21a8370
	pop {r3, pc}
_021A852E:
	bl ovy186_21a81f0
	pop {r3, pc}
	thumb_func_end ovy186_21a850c

	thumb_func_start ovy186_21a8534
ovy186_21a8534: ; 0x021A8534
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021A86D8 ; =0x000032EA
	add r4, r0, #0
	ldrb r1, [r4, r5]
	mov r6, #0
	cmp r1, #5
	bls _021A8544
	b _021A86CA
_021A8544:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A8550: ; jump table
	.short _021A855C - _021A8550 - 2 ; case 0
	.short _021A859E - _021A8550 - 2 ; case 1
	.short _021A85F4 - _021A8550 - 2 ; case 2
	.short _021A8612 - _021A8550 - 2 ; case 3
	.short _021A8630 - _021A8550 - 2 ; case 4
	.short _021A8638 - _021A8550 - 2 ; case 5
_021A855C:
	ldr r7, _021A86DC ; =0x0000304C
	ldr r1, _021A86E0 ; =0x0000103D
	add r0, r7, #0
	str r6, [r4, r7]
	sub r0, #0xc
	str r1, [r4, r0]
	add r0, r7, #0
	sub r0, #8
	str r1, [r4, r0]
	ldr r0, _021A86E4 ; =0x00000864
	bl GFL_SndSEPlay
	sub r7, #0x14
	ldr r0, [r4, r7]
	cmp r0, #0
	bne _021A8588
	sub r5, #0x16
	ldr r0, [r4, r5]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02034330
_021A8588:
	ldr r2, [r4, #0x24]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #2
	bl ovy186_21a9bdc
_021A8594:
	ldr r0, _021A86D8 ; =0x000032EA
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021A86CA
_021A859E:
	ldr r7, _021A86DC ; =0x0000304C
	ldr r2, _021A86E0 ; =0x0000103D
	ldr r0, [r4, r7]
	add r3, r6, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A86E8 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r7, #0
	sub r0, #0xc
	str r1, [r4, r0]
	cmp r1, #0x80
	bgt _021A85DC
	mov r0, #0x80
	sub r7, #0xc
	str r0, [r4, r7]
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
_021A85DC:
	ldr r1, _021A86DC ; =0x0000304C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	add r3, r2, r0
	lsl r2, r0, #4
	str r3, [r4, r1]
	cmp r3, r2
	blt _021A86CA
	lsl r0, r0, #4
	str r0, [r4, r1]
	b _021A86CA
_021A85F4:
	ldr r7, _021A86EC ; =0x00003038
	mov r1, #1
	ldr r2, [r4, r7]
	eor r1, r2
	str r1, [r4, r7]
	bl ovy186_21a8128
	ldr r1, [r4, r7]
	add r0, r4, #0
	bl ovy186_21a850c
_021A860A:
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021A86CA
_021A8612:
	ldr r1, _021A86EC ; =0x00003038
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021A8620
	bl ovy186_21a94a8
	b _021A862E
_021A8620:
	add r2, r5, #2
	ldrb r2, [r4, r2]
	add r1, r4, #0
	mov r0, #7
	add r1, #0x30
	bl ovy186_21a9694
_021A862E:
	b _021A8594
_021A8630:
	add r1, r4, #4
	bl ovy186_21aa298
	b _021A860A
_021A8638:
	ldr r1, _021A86DC ; =0x0000304C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	sub r0, r2, r0
	str r0, [r4, r1]
	cmp r0, #0
	bgt _021A864A
	str r6, [r4, r1]
_021A864A:
	ldr r5, _021A86DC ; =0x0000304C
	ldr r2, _021A86E0 ; =0x0000103D
	ldr r0, [r4, r5]
	mov r3, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A86E8 ; =FX_SinCosTable_ ; 0x020946BC
	mov r7, #0
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	sub r0, #0xc
	str r1, [r4, r0]
	cmp r1, #0x80
	bgt _021A8684
	mov r0, #0x80
	sub r5, #0xc
	str r0, [r4, r5]
_021A8684:
	ldr r1, _021A86DC ; =0x0000304C
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021A86CA
	mov r2, #1
	add r0, r1, #0
	lsl r2, r2, #0xc
	sub r0, #0xc
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	sub r1, #0x14
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	mov r6, #1
	cmp r0, #0
	bne _021A86BC
	ldr r5, _021A86F0 ; =0x000032D4
	mov r1, #0
	ldr r0, [r4, r5]
	add r2, r6, #0
	bl sub_0203430C
	ldr r0, [r4, r5]
	mov r1, #0
	add r2, r6, #0
	bl sub_02034330
_021A86BC:
	ldr r1, _021A86EC ; =0x00003038
	ldr r2, [r4, #0x24]
	ldr r1, [r4, r1]
	ldr r2, [r2, #0xc]
	add r0, r4, #0
	bl ovy186_21a9bdc
_021A86CA:
	ldr r1, _021A86F4 ; =0x000032EE
	mov r0, #4
	ldrb r2, [r4, r1]
	orr r0, r2
	strb r0, [r4, r1]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A86D8: .word 0x000032EA
_021A86DC: .word 0x0000304C
_021A86E0: .word 0x0000103D
_021A86E4: .word 0x00000864
_021A86E8: .word FX_SinCosTable_
_021A86EC: .word 0x00003038
_021A86F0: .word 0x000032D4
_021A86F4: .word 0x000032EE
	thumb_func_end ovy186_21a8534

	thumb_func_start ovy186_21a86f8
ovy186_21a86f8: ; 0x021A86F8
	push {r3, r4, r5, lr}
	cmp r0, #0
	bge _021A8710
	ldr r2, _021A87B4 ; =0x04001050
	mov r0, #0
	strh r0, [r2]
	sub r2, #0x50
	ldr r1, [r2]
	ldr r0, _021A87B8 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	pop {r3, r4, r5, pc}
_021A8710:
	bne _021A8762
	ldr r4, _021A87B4 ; =0x04001050
	mov r2, #0xc
	add r0, r4, #0
	mov r1, #0xc
	sub r2, #0x14
	bl G2x_SetBlendBrightness_
	mov r1, #0xe
	add r0, r4, #0
	add r3, r4, #0
	lsl r1, r1, #0xc
	sub r0, #0x10
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0xa8
	sub r0, #0xc
	strh r1, [r0]
	sub r3, #8
	ldrh r2, [r3]
	mov r1, #0x3f
	mov r0, #0x1c
	bic r2, r1
	orr r2, r0
	mov r0, #0x20
	orr r2, r0
	strh r2, [r3]
	sub r2, r4, #6
	ldrh r3, [r2]
	sub r4, #0x50
	lsl r0, r0, #8
	bic r3, r1
	mov r1, #0x1f
	orr r1, r3
	strh r1, [r2]
	ldr r2, [r4]
	ldr r1, _021A87B8 ; =0xFFFF1FFF
	and r1, r2
	orr r0, r1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A8762:
	cmp r0, #1
	bne _021A87B0
	ldr r4, _021A87B4 ; =0x04001050
	mov r2, #0xc
	add r0, r4, #0
	mov r1, #0xc
	sub r2, #0x14
	bl G2x_SetBlendBrightness_
	add r1, r4, #0
	add r3, r4, #0
	mov r0, #0x20
	sub r1, #0x10
	strh r0, [r1]
	add r1, r4, #0
	mov r2, #0xa8
	sub r1, #0xc
	strh r2, [r1]
	sub r3, #8
	ldrh r5, [r3]
	mov r2, #0x3f
	mov r1, #0x1c
	bic r5, r2
	orr r1, r5
	orr r1, r0
	strh r1, [r3]
	sub r3, r4, #6
	ldrh r5, [r3]
	mov r1, #0x1f
	sub r4, #0x50
	bic r5, r2
	orr r1, r5
	strh r1, [r3]
	ldr r2, [r4]
	ldr r1, _021A87B8 ; =0xFFFF1FFF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r4]
_021A87B0:
	pop {r3, r4, r5, pc}
	nop
_021A87B4: .word 0x04001050
_021A87B8: .word 0xFFFF1FFF
	thumb_func_end ovy186_21a86f8

	thumb_func_start ovy186_21a87bc
ovy186_21a87bc: ; 0x021A87BC
	push {r4, r5, r6, lr}
	ldr r1, _021A8940 ; =0x000032EA
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0xd
	bls _021A87CA
	b _021A8932
_021A87CA:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A87D6: ; jump table
	.short _021A87F2 - _021A87D6 - 2 ; case 0
	.short _021A882C - _021A87D6 - 2 ; case 1
	.short _021A8854 - _021A87D6 - 2 ; case 2
	.short _021A8870 - _021A87D6 - 2 ; case 3
	.short _021A8874 - _021A87D6 - 2 ; case 4
	.short _021A889C - _021A87D6 - 2 ; case 5
	.short _021A88CE - _021A87D6 - 2 ; case 6
	.short _021A88D2 - _021A87D6 - 2 ; case 7
	.short _021A88E2 - _021A87D6 - 2 ; case 8
	.short _021A8900 - _021A87D6 - 2 ; case 9
	.short _021A8904 - _021A87D6 - 2 ; case 10
	.short _021A8914 - _021A87D6 - 2 ; case 11
	.short _021A88F6 - _021A87D6 - 2 ; case 12
	.short _021A8928 - _021A87D6 - 2 ; case 13
_021A87F2:
	ldr r1, _021A8944 ; =0x00003060
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _021A87FE
	mov r2, #0x20
	b _021A8800
_021A87FE:
	mov r2, #0xe0
_021A8800:
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r4, r0]
	mov r0, #0x98
	sub r1, #0xc
	str r0, [r4, r1]
	mov r0, #0xc1
	ldr r1, _021A8948 ; =0x0000103D
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021A8940 ; =0x000032EA
	mov r1, #1
	strb r1, [r4, r0]
	ldr r2, [r4, #0x24]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #2
	bl ovy186_21a9bdc
	b _021A8932
_021A882C:
	mov r2, #0xc1
	lsl r2, r2, #6
	mov r5, #1
	ldr r0, [r4, r2]
	lsl r5, r5, #8
	add r0, r0, r5
	str r0, [r4, r2]
	add r3, r2, #4
	ldr r3, [r4, r3]
	add r6, r3, r5
	add r3, r2, #4
	str r6, [r4, r3]
	lsl r3, r5, #5
	cmp r0, r3
	blt _021A8932
	str r3, [r4, r2]
	add r0, r2, #4
	str r3, [r4, r0]
	mov r0, #2
_021A8852:
	b _021A8930
_021A8854:
	ldr r5, _021A894C ; =0x00003062
	mov r1, #1
	strh r1, [r4, r5]
	add r1, r5, #0
	sub r1, #0x2a
	ldr r1, [r4, r1]
	bl ovy186_21a850c
	sub r0, r5, #2
	ldrh r0, [r4, r0]
	bl ovy186_21a86f8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A8870:
	mov r0, #4
	b _021A8852
_021A8874:
	mov r2, #0xc1
	lsl r2, r2, #6
	mov r5, #1
	ldr r0, [r4, r2]
	lsl r5, r5, #8
	sub r0, r0, r5
	str r0, [r4, r2]
	add r3, r2, #4
	ldr r3, [r4, r3]
	sub r6, r3, r5
	add r3, r2, #4
	str r6, [r4, r3]
	lsl r3, r5, #4
	cmp r0, r3
	bgt _021A8932
	str r3, [r4, r2]
	add r0, r2, #4
	str r3, [r4, r0]
	mov r0, #5
	b _021A8852
_021A889C:
	ldr r2, _021A8950 ; =0x00003050
	mov r1, #0x80
	str r1, [r4, r2]
	mov r3, #0x60
	add r1, r2, #4
	str r3, [r4, r1]
	add r1, r2, #0
	mov r5, #0
	add r1, #0x12
	sub r2, #0x18
	strh r5, [r4, r1]
	ldr r1, [r4, r2]
	bl ovy186_21a850c
	sub r0, r5, #1
	bl ovy186_21a86f8
	ldr r2, [r4, #0x24]
	add r0, r4, #0
	ldr r2, [r2, #0xc]
	mov r1, #1
	bl ovy186_21a9bdc
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A88CE:
	mov r0, #7
	b _021A8852
_021A88D2:
	ldr r0, _021A8950 ; =0x00003050
	ldr r2, [r4, r0]
	sub r2, #8
	str r2, [r4, r0]
	cmp r2, #0x20
	bge _021A8932
	mov r2, #0x20
	b _021A88FA
_021A88E2:
	ldr r0, _021A8944 ; =0x00003060
	mov r1, #1
	ldrh r2, [r4, r0]
	eor r1, r2
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	bl ovy186_21a86f8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A88F6:
	ldr r0, _021A8950 ; =0x00003050
	mov r2, #0x20
_021A88FA:
	str r2, [r4, r0]
	mov r0, #8
	b _021A8852
_021A8900:
	mov r0, #0xa
	b _021A8852
_021A8904:
	ldr r0, _021A8950 ; =0x00003050
	ldr r2, [r4, r0]
	add r2, #8
	str r2, [r4, r0]
	cmp r2, #0xe0
	ble _021A8932
	mov r2, #0xe0
	b _021A892C
_021A8914:
	ldr r0, _021A8944 ; =0x00003060
	mov r1, #1
	ldrh r2, [r4, r0]
	eor r1, r2
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	bl ovy186_21a86f8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A8928:
	ldr r0, _021A8950 ; =0x00003050
	mov r2, #0xe0
_021A892C:
	str r2, [r4, r0]
	mov r0, #0xb
_021A8930:
	strb r0, [r4, r1]
_021A8932:
	ldr r1, _021A8954 ; =0x000032EE
	mov r0, #4
	ldrb r2, [r4, r1]
	orr r0, r2
	strb r0, [r4, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A8940: .word 0x000032EA
_021A8944: .word 0x00003060
_021A8948: .word 0x0000103D
_021A894C: .word 0x00003062
_021A8950: .word 0x00003050
_021A8954: .word 0x000032EE
	thumb_func_end ovy186_21a87bc

	thumb_func_start ovy186_21a8958
ovy186_21a8958: ; 0x021A8958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0xc1
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl FX_Inv
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl FX_Inv
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	add r3, r4, #0
	add r7, sp, #8
	str r0, [sp, #4]
	ldr r6, _021A89D4 ; =0x04001020
	add r2, #0x10
	add r3, #0x14
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r6, #0
	add r1, r7, #0
	blx G2x_SetBGyAffine_
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r2, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	add r2, #0x10
	str r0, [sp, #4]
	add r4, #0x14
	add r6, #0x10
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	add r0, r6, #0
	add r1, r7, #0
	blx G2x_SetBGyAffine_
	ldr r1, _021A89D8 ; =0x000032EE
	mov r0, #4
	ldrb r2, [r5, r1]
	bic r2, r0
	strb r2, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A89D4: .word 0x04001020
_021A89D8: .word 0x000032EE
	thumb_func_end ovy186_21a8958

	thumb_func_start ovy186_21a89dc
ovy186_21a89dc: ; 0x021A89DC
	push {r3, r4, r5, lr}
	ldr r5, _021A8A24 ; =0x00003064
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021A8A04
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A89F4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A89F4:
	bl sub_0203DF20
	cmp r0, #0
	beq _021A8A20
	mov r0, #0
	str r0, [r4, r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A8A04:
	bl sub_0203DF20
	cmp r0, #0
	beq _021A8A10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A8A10:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A8A20
	mov r0, #1
	str r0, [r4, r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A8A20:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A8A24: .word 0x00003064
	thumb_func_end ovy186_21a89dc

	thumb_func_start ovy186_21a8a28
ovy186_21a8a28: ; 0x021A8A28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r7, #2
	add r1, r0, #0
	tst r1, r7
	beq _021A8A60
	ldr r0, _021A8B64 ; =0x00003062
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _021A8A42
	b _021A8B5E
_021A8A42:
	add r0, #0x12
	add r0, r5, r0
	mov r1, #0
	mov r2, #9
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8B68 ; =0x00000862
	bl GFL_SndSEPlay
	mov r0, #0
	bl sub_0203D564
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021A8A60:
	lsl r1, r7, #9
	tst r1, r0
	beq _021A8A90
	ldr r0, _021A8B64 ; =0x00003062
	ldrh r1, [r5, r0]
	cmp r1, #0
	bne _021A8B5E
	ldr r1, [r5, #0x28]
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _021A8B5E
	add r0, #0x12
	add r0, r5, r0
	mov r1, #1
	mov r2, #8
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8B6C ; =0x00000863
	bl GFL_SndSEPlay
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021A8A90:
	mov r1, #0x30
	tst r1, r0
	beq _021A8AB0
	ldr r0, _021A8B64 ; =0x00003062
	ldrh r1, [r5, r0]
	cmp r1, #0
	bne _021A8B5E
	add r0, #0x12
	add r0, r5, r0
	mov r1, #6
	mov r2, #0x17
	mov r3, #1
	bl ovy186_21ab104
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021A8AB0:
	lsl r1, r7, #0xa
	tst r1, r0
	beq _021A8AC8
	ldr r0, [r5, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021A8B5E
	add r0, r5, #0
	bl ovy186_21a8b7c
	b _021A8B5E
_021A8AC8:
	mov r4, #1
	add r1, r0, #0
	tst r1, r4
	beq _021A8AFA
	ldr r0, [r5, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021A8B5E
	ldr r6, _021A8B70 ; =0x00003038
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _021A8B5E
	ldr r0, _021A8B74 ; =0x0000085F
	bl GFL_SndSEPlay
	add r6, #0x3c
	add r0, r5, r6
	add r1, r7, #0
	mov r2, #0x11
	add r3, r4, #0
	bl ovy186_21ab104
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_021A8AFA:
	lsl r1, r4, #9
	tst r1, r0
	beq _021A8B2C
	ldr r0, [r5, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021A8B5E
	ldr r0, _021A8B64 ; =0x00003062
	ldrh r1, [r5, r0]
	cmp r1, #1
	bne _021A8B5E
	sub r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #1
	bne _021A8B5E
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, _021A8B78 ; =0x000032EA
	mov r1, #0xc
	strb r1, [r5, r0]
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A8B2C:
	add r4, #0xff
	tst r0, r4
	beq _021A8B5E
	ldr r0, [r5, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021A8B5E
	ldr r0, _021A8B64 ; =0x00003062
	ldrh r1, [r5, r0]
	cmp r1, #1
	bne _021A8B5E
	sub r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021A8B5E
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, _021A8B78 ; =0x000032EA
	mov r1, #0xd
	strb r1, [r5, r0]
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A8B5E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8B64: .word 0x00003062
_021A8B68: .word 0x00000862
_021A8B6C: .word 0x00000863
_021A8B70: .word 0x00003038
_021A8B74: .word 0x0000085F
_021A8B78: .word 0x000032EA
	thumb_func_end ovy186_21a8a28

	thumb_func_start ovy186_21a8b7c
ovy186_21a8b7c: ; 0x021A8B7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021A8BEC ; =0x00000861
	bl GFL_SndSEPlay
	ldr r4, _021A8BF0 ; =0x00003038
	ldr r0, [r5, r4]
	cmp r0, #0
	ldr r0, [r5, #0x24]
	bne _021A8BBE
	ldr r0, [r0, #8]
	mov r1, #0x18
	bl GameData_IsShortcutRegistered
	mov r1, #1
	add r6, r0, #0
	eor r6, r1
	add r2, r6, #6
	add r4, #0x3c
	lsl r2, r2, #0x18
	add r0, r5, r4
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, [r5, #0x24]
	mov r1, #0x18
	ldr r0, [r0, #8]
	add r2, r6, #0
	bl sub_02017644
	pop {r4, r5, r6, pc}
_021A8BBE:
	ldr r0, [r0, #8]
	mov r1, #0x19
	bl GameData_IsShortcutRegistered
	mov r1, #1
	add r6, r0, #0
	eor r6, r1
	add r2, r6, #6
	add r4, #0x3c
	lsl r2, r2, #0x18
	add r0, r5, r4
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, [r5, #0x24]
	mov r1, #0x19
	ldr r0, [r0, #8]
	add r2, r6, #0
	bl sub_02017644
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A8BEC: .word 0x00000861
_021A8BF0: .word 0x00003038
	thumb_func_end ovy186_21a8b7c

	thumb_func_start ovy186_21a8bf4
ovy186_21a8bf4: ; 0x021A8BF4
	push {r3, lr}
	add r3, r2, #0
	cmp r1, #0
	ldr r1, _021A8C20 ; =0x00003074
	bne _021A8C0E
	lsl r3, r3, #0x18
	add r0, r0, r1
	mov r1, #2
	mov r2, #0xa
	lsr r3, r3, #0x18
	bl ovy186_21ab104
	pop {r3, pc}
_021A8C0E:
	lsl r3, r3, #0x18
	add r0, r0, r1
	mov r1, #2
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl ovy186_21ab104
	pop {r3, pc}
	nop
_021A8C20: .word 0x00003074
	thumb_func_end ovy186_21a8bf4

	thumb_func_start ovy186_21a8c24
ovy186_21a8c24: ; 0x021A8C24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #0
	ldr r5, _021A8C78 ; =0x00003074
	bne _021A8C52
	add r0, r4, r5
	mov r1, #2
	mov r2, #0xb
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0xac
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
_021A8C52:
	add r0, r4, r5
	mov r1, #2
	mov r2, #0xd
	mov r3, #1
	bl ovy186_21ab104
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r5, #0xac
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	nop
_021A8C78: .word 0x00003074
	thumb_func_end ovy186_21a8c24

	thumb_func_start sub_021A8C7C
sub_021A8C7C: ; 0x021A8C7C
	add r2, r0, #0
	cmp r1, #0
	ldr r0, _021A8C9C ; =0x000032EC
	beq _021A8C8C
	mov r1, #0
	strb r1, [r2, r0]
	sub r0, r0, #1
	b _021A8C8E
_021A8C8C:
	mov r1, #2
_021A8C8E:
	strb r1, [r2, r0]
	ldr r1, _021A8C9C ; =0x000032EC
	ldr r3, _021A8CA0 ; =ovy186_21a95a4
	ldrb r1, [r2, r1]
	mov r0, #7
	bx r3
	nop
_021A8C9C: .word 0x000032EC
_021A8CA0: .word ovy186_21a95a4
	thumb_func_end sub_021A8C7C

	thumb_func_start sub_021A8CA4
sub_021A8CA4: ; 0x021A8CA4
	ldr r0, [r0, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021A8CBA
	cmp r1, #3
	blt _021A8CBA
	cmp r1, #9
	bgt _021A8CBA
	mov r0, #1
	bx lr
_021A8CBA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A8CA4

	thumb_func_start ovy186_21a8cc0
ovy186_21a8cc0: ; 0x021A8CC0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_021A8CA4
	cmp r0, #1
	bne _021A8CD2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A8CD2:
	cmp r5, #0xc
	bhi _021A8DCE
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A8CE2: ; jump table
	.short _021A8CFC - _021A8CE2 - 2 ; case 0
	.short _021A8D1A - _021A8CE2 - 2 ; case 1
	.short _021A8D32 - _021A8CE2 - 2 ; case 2
	.short _021A8D50 - _021A8CE2 - 2 ; case 3
	.short _021A8DC6 - _021A8CE2 - 2 ; case 4
	.short _021A8E26 - _021A8CE2 - 2 ; case 5
	.short _021A8E70 - _021A8CE2 - 2 ; case 6
	.short _021A8E78 - _021A8CE2 - 2 ; case 7
	.short _021A8E84 - _021A8CE2 - 2 ; case 8
	.short _021A8E90 - _021A8CE2 - 2 ; case 9
	.short _021A8ED2 - _021A8CE2 - 2 ; case 10
	.short _021A8ED2 - _021A8CE2 - 2 ; case 11
	.short _021A8E9C - _021A8CE2 - 2 ; case 12
_021A8CFC:
	ldr r0, _021A8ED8 ; =0x00003074
	mov r1, #0
	add r0, r4, r0
	mov r2, #9
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8EDC ; =0x00000862
	bl GFL_SndSEPlay
	mov r0, #1
	bl sub_0203D564
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021A8D1A:
	ldr r0, _021A8ED8 ; =0x00003074
	mov r1, #1
	add r0, r4, r0
	mov r2, #8
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8EE0 ; =0x00000863
	bl GFL_SndSEPlay
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021A8D32:
	ldr r1, _021A8EE4 ; =0x000032FC
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl sub_0203DA84
	ldr r0, _021A8ED8 ; =0x00003074
	mov r1, #6
	add r0, r4, r0
	mov r2, #0x17
	mov r3, #1
	bl ovy186_21ab104
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021A8D50:
	ldr r5, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A8DAE
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A8DCE
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl ovy186_21a8c24
	ldr r1, [r4, #0x28]
	mov r2, #0x10
	ldrb r3, [r1, #4]
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x1b
	lsr r3, r2, #0x1f
	mov r2, #1
	eor r2, r3
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1b
	orr r0, r2
	strb r0, [r1, #4]
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	ldrb r1, [r1]
	bl ovy186_21a80d8
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	bl sub_021A8C7C
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	b _021A8ED2
_021A8DAE:
	ldr r0, _021A8EEC ; =0x0000085F
	bl GFL_SndSEPlay
	add r5, #0x3c
	add r0, r4, r5
	mov r1, #2
	mov r2, #0x11
	mov r3, #1
	bl ovy186_21ab104
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_021A8DC6:
	ldr r1, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021A8DD0
_021A8DCE:
	b _021A8ED2
_021A8DD0:
	ldr r0, [r4, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _021A8ED2
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A8ED2
	add r0, r1, #0
	add r0, #0x2a
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A8E08
	add r1, #0x3c
	add r0, r4, r1
	mov r1, #4
	mov r2, #0x13
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8EF0 ; =0x00000868
	bl GFL_SndSEPlay
	mov r1, #0
	b _021A8E1E
_021A8E08:
	add r1, #0x3c
	add r0, r4, r1
	mov r1, #4
	mov r2, #0x15
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8EF4 ; =0x00000869
	bl GFL_SndSEPlay
	mov r1, #3
_021A8E1E:
	ldr r0, _021A8EF8 ; =0x000032EA
	strb r1, [r4, r0]
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A8E26:
	ldr r5, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A8ED2
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A8ED2
	ldr r0, [r4, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bne _021A8ED2
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	add r5, #0x3c
	add r0, r4, r5
	ldr r5, _021A8EFC ; =0x0000331A
	mov r1, #5
	ldrb r2, [r4, r5]
	mov r6, #1
	lsl r3, r2, #1
	mov r2, #9
	sub r2, r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	ldrb r0, [r4, r5]
	eor r0, r6
	strb r0, [r4, r5]
	b _021A8ED2
_021A8E70:
	add r0, r4, #0
	bl ovy186_21a8b7c
	b _021A8ED2
_021A8E78:
	ldr r0, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A8ED2
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021A8E84:
	ldr r0, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A8ED2
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021A8E90:
	ldr r0, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A8ED2
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021A8E9C:
	ldr r6, _021A8F00 ; =0x0000333C
	mov r7, #1
	ldr r0, [r4, r6]
	tst r0, r7
	beq _021A8ED2
	ldr r5, _021A8EE8 ; =0x00003038
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021A8ED2
	ldr r0, _021A8EEC ; =0x0000085F
	bl GFL_SndSEPlay
	add r2, r6, #4
	ldr r2, [r4, r2]
	add r5, #0x3c
	lsl r3, r2, #1
	ldr r2, _021A8F04 ; =0x021ACD48
	add r0, r4, r5
	ldrsh r2, [r2, r3]
	mov r1, #0xd
	add r3, r7, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ovy186_21ab104
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_021A8ED2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8ED8: .word 0x00003074
_021A8EDC: .word 0x00000862
_021A8EE0: .word 0x00000863
_021A8EE4: .word 0x000032FC
_021A8EE8: .word 0x00003038
_021A8EEC: .word 0x0000085F
_021A8EF0: .word 0x00000868
_021A8EF4: .word 0x00000869
_021A8EF8: .word 0x000032EA
_021A8EFC: .word 0x0000331A
_021A8F00: .word 0x0000333C
_021A8F04: .word 0x021ACD48
	thumb_func_end ovy186_21a8cc0

	thumb_func_start ovy186_21a8f08
ovy186_21a8f08: ; 0x021A8F08
	push {r4, r5, r6, lr}
	add r4, r0, #0
	cmp r1, #0xb
	bhi _021A8FC8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A8F1C: ; jump table
	.short _021A8FC8 - _021A8F1C - 2 ; case 0
	.short _021A8FC8 - _021A8F1C - 2 ; case 1
	.short _021A8FC8 - _021A8F1C - 2 ; case 2
	.short _021A8FC8 - _021A8F1C - 2 ; case 3
	.short _021A8F34 - _021A8F1C - 2 ; case 4
	.short _021A8F5A - _021A8F1C - 2 ; case 5
	.short _021A8F8E - _021A8F1C - 2 ; case 6
	.short _021A8FC8 - _021A8F1C - 2 ; case 7
	.short _021A8FC8 - _021A8F1C - 2 ; case 8
	.short _021A8FC8 - _021A8F1C - 2 ; case 9
	.short _021A8F94 - _021A8F1C - 2 ; case 10
	.short _021A8FAE - _021A8F1C - 2 ; case 11
_021A8F34:
	ldr r0, _021A8FCC ; =0x00003038
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021A8FC8
	add r0, #0x3c
	add r0, r4, r0
	mov r1, #4
	mov r2, #0x15
	mov r3, #1
	bl ovy186_21ab104
	ldr r0, _021A8FD0 ; =0x00000869
	bl GFL_SndSEPlay
	ldr r0, _021A8FD4 ; =0x000032EA
	mov r1, #3
	strb r1, [r4, r0]
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A8F5A:
	ldr r5, _021A8FCC ; =0x00003038
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A8FC8
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	add r5, #0x3c
	add r0, r4, r5
	ldr r5, _021A8FD8 ; =0x0000331A
	mov r1, #5
	ldrb r2, [r4, r5]
	mov r6, #1
	lsl r3, r2, #1
	mov r2, #9
	sub r2, r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab104
	ldrb r0, [r4, r5]
	eor r0, r6
	strb r0, [r4, r5]
	b _021A8FC8
_021A8F8E:
	bl ovy186_21a8b7c
	b _021A8FC8
_021A8F94:
	ldr r0, _021A8FDC ; =0x00003060
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A8FC8
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, _021A8FD4 ; =0x000032EA
	mov r1, #9
	strb r1, [r4, r0]
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A8FAE:
	ldr r0, _021A8FDC ; =0x00003060
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _021A8FC8
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, _021A8FD4 ; =0x000032EA
	mov r1, #6
	strb r1, [r4, r0]
	mov r0, #8
	pop {r4, r5, r6, pc}
_021A8FC8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A8FCC: .word 0x00003038
_021A8FD0: .word 0x00000869
_021A8FD4: .word 0x000032EA
_021A8FD8: .word 0x0000331A
_021A8FDC: .word 0x00003060
	thumb_func_end ovy186_21a8f08

	thumb_func_start ovy186_21a8fe0
ovy186_21a8fe0: ; 0x021A8FE0
	push {r4, lr}
	mov r4, #0
	mvn r4, r4
	cmp r1, #0
	bne _021A900C
	ldr r0, _021A9030 ; =0x021ACD28
	bl sub_0203DA0C
	cmp r0, #0
	bne _021A8FF8
_021A8FF4:
	mov r4, #0
	b _021A902A
_021A8FF8:
	ldr r0, _021A9034 ; =0x021ACD54
	bl sub_0203DA0C
	cmp r0, #0
	bne _021A9006
_021A9002:
	mov r4, #1
	b _021A902A
_021A9006:
	cmp r0, #1
	bne _021A902A
	b _021A9028
_021A900C:
	ldr r0, _021A9030 ; =0x021ACD28
	bl sub_0203D9C8
	cmp r0, #0
	bne _021A9018
	b _021A8FF4
_021A9018:
	ldr r0, _021A9034 ; =0x021ACD54
	bl sub_0203D9C8
	cmp r0, #0
	bne _021A9024
	b _021A9002
_021A9024:
	cmp r0, #1
	bne _021A902A
_021A9028:
	mov r4, #2
_021A902A:
	add r0, r4, #0
	pop {r4, pc}
	nop
_021A9030: .word 0x021ACD28
_021A9034: .word 0x021ACD54
	thumb_func_end ovy186_21a8fe0

	thumb_func_start ovy186_21a9038
ovy186_21a9038: ; 0x021A9038
	push {r4, r5, r6, lr}
	mov r1, #1
	add r5, r0, #0
	mov r6, #1
	bl ovy186_21a8fe0
	ldr r1, _021A9080 ; =0x00003038
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _021A907E
	sub r1, r6, #2
	cmp r0, r1
	bne _021A907E
	ldr r4, _021A9084 ; =0x0000331B
	ldrb r0, [r5, r4]
	cmp r0, #1
	bne _021A907E
	add r1, r4, #0
	sub r1, #0x15
	ldrsh r1, [r5, r1]
	add r2, r6, #0
	add r0, r5, #0
	mov r6, #0
	mov r3, #0
	bl ovy186_21aa9d8
	strb r6, [r5, r4]
	add r0, r4, #1
	strb r6, [r5, r0]
	add r4, #0x1c
	add r0, r5, #0
	mov r1, #2
	strb r6, [r5, r4]
	bl ovy186_21a9e90
_021A907E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A9080: .word 0x00003038
_021A9084: .word 0x0000331B
	thumb_func_end ovy186_21a9038

	thumb_func_start ovy186_21a9088
ovy186_21a9088: ; 0x021A9088
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r1, #0
	bl ovy186_21a8fe0
	add r7, r0, #0
	add r0, r4, #0
	mov r5, #1
	mov r1, #1
	bl ovy186_21a8fe0
	add r6, r0, #0
	sub r0, r5, #2
	cmp r7, r0
	beq _021A90AC
	ldr r0, _021A91F8 ; =0x00003337
	strb r5, [r4, r0]
_021A90AC:
	ldr r5, _021A91F8 ; =0x00003337
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _021A90BC
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021A90BE
_021A90BC:
	b _021A91F4
_021A90BE:
	cmp r7, #0
	bne _021A90D6
	bl sub_0203DA48
	cmp r0, #0
	beq _021A90F4
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DAC8
	ldr r1, [sp, #4]
	b _021A90E4
_021A90D6:
	cmp r7, #1
	bne _021A90DE
	mov r1, #0x10
	b _021A90E4
_021A90DE:
	cmp r7, #2
	bne _021A90F4
	mov r1, #0x50
_021A90E4:
	add r0, r5, #0
	sub r0, #0x2d
	strh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x31
	ldrsh r0, [r4, r0]
	sub r5, #0x2b
	strh r0, [r4, r5]
_021A90F4:
	cmp r6, #0
	bne _021A911C
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A9158
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	ldr r1, _021A91FC ; =0x0000330C
	sub r2, r1, #2
	ldrsh r3, [r4, r2]
	ldr r2, [sp, #4]
	ldrsh r0, [r4, r1]
	sub r2, r3, r2
	sub r2, r0, r2
	sub r0, r1, #6
	strh r2, [r4, r0]
	b _021A9158
_021A911C:
	cmp r6, #1
	bne _021A912E
	ldr r0, _021A9200 ; =0x00003306
	ldrsh r1, [r4, r0]
	add r1, #8
	strh r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	b _021A913E
_021A912E:
	cmp r6, #2
	bne _021A9142
	ldr r0, _021A9200 ; =0x00003306
	ldrsh r1, [r4, r0]
	sub r1, #8
	strh r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
_021A913E:
	bl ovy186_21a9e90
_021A9142:
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	ldr r1, [sp, #4]
	ldr r0, _021A9204 ; =0x0000330A
	strh r1, [r4, r0]
	sub r1, r0, #4
	ldrsh r1, [r4, r1]
	add r0, r0, #2
	strh r1, [r4, r0]
_021A9158:
	ldr r0, _021A9208 ; =0x00003336
	ldrb r1, [r4, r0]
	sub r1, r1, #4
	neg r1, r1
	lsl r2, r1, #4
	add r1, r0, #0
	sub r1, #0x30
	ldrsh r1, [r4, r1]
	cmp r1, r2
	bge _021A9172
	sub r0, #0x30
	strh r2, [r4, r0]
	b _021A917C
_021A9172:
	cmp r1, #0
	ble _021A917C
	mov r1, #0
	sub r0, #0x30
	strh r1, [r4, r0]
_021A917C:
	ldr r5, _021A920C ; =0x00003308
	sub r0, r5, #2
	ldrsh r2, [r4, r5]
	ldrsh r1, [r4, r0]
	cmp r2, r1
	beq _021A91DC
	add r0, r5, #0
	mov r7, #1
	add r0, #0x13
	strb r7, [r4, r0]
	add r0, r4, #0
	mov r2, #1
	mov r3, #1
	bl ovy186_21aa9d8
	ldr r0, _021A9210 ; =0x00000865
	bl GFL_SndSEPlay
	cmp r6, #0
	bne _021A91B4
	mov r0, #0
	str r0, [sp]
	sub r0, r5, #2
	ldrsh r1, [r4, r0]
	ldrsh r0, [r4, r5]
	cmp r1, r0
	bge _021A91CA
	b _021A91C8
_021A91B4:
	sub r0, r6, #1
	cmp r0, #1
	bhi _021A91CA
	mov r0, #0
	str r0, [sp]
	sub r0, r5, #2
	ldrsh r1, [r4, r0]
	ldrsh r0, [r4, r5]
	cmp r1, r0
	bge _021A91CA
_021A91C8:
	str r7, [sp]
_021A91CA:
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy186_21a9e90
	mov r1, #2
	ldr r0, _021A9214 ; =0x00003344
	lsl r1, r1, #0xe
	str r1, [r4, r0]
	b _021A91EC
_021A91DC:
	add r0, r4, #0
	mov r1, #3
	bl ovy186_21a9e90
	mov r0, #2
	lsl r0, r0, #0xe
	add r5, #0x3c
	str r0, [r4, r5]
_021A91EC:
	ldr r0, _021A9200 ; =0x00003306
	ldrsh r1, [r4, r0]
	add r0, r0, #2
	strh r1, [r4, r0]
_021A91F4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A91F8: .word 0x00003337
_021A91FC: .word 0x0000330C
_021A9200: .word 0x00003306
_021A9204: .word 0x0000330A
_021A9208: .word 0x00003336
_021A920C: .word 0x00003308
_021A9210: .word 0x00000865
_021A9214: .word 0x00003344
	thumb_func_end ovy186_21a9088

	thumb_func_start ovy186_21a9218
ovy186_21a9218: ; 0x021A9218
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021A923C
	ldr r0, _021A928C ; =0x00003062
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A9238
	ldr r0, _021A9290 ; =0x021ACDE0
_021A9230:
	bl sub_0203DA0C
	add r1, r0, #0
	b _021A924A
_021A9238:
	ldr r0, _021A9294 ; =0x021ACE18
	b _021A9230
_021A923C:
	ldr r0, _021A9298 ; =0x021ACD60
	bl sub_0203DA0C
	add r1, r0, #0
	cmp r1, #3
	bne _021A924A
	mov r1, #0xc
_021A924A:
	ldr r0, _021A928C ; =0x00003062
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A925A
	add r0, r4, #0
	bl ovy186_21a8cc0
	b _021A9260
_021A925A:
	add r0, r4, #0
	bl ovy186_21a8f08
_021A9260:
	cmp r0, #0
	bne _021A928A
	ldr r0, _021A929C ; =0x00003038
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021A9288
	add r0, #0x2a
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A9280
	add r0, r4, #0
	bl ovy186_21a9088
	add r0, r4, #0
	mov r1, #0
	b _021A9284
_021A9280:
	add r0, r4, #0
	mov r1, #1
_021A9284:
	bl ovy186_21a9794
_021A9288:
	mov r0, #0
_021A928A:
	pop {r4, pc}
	.align 2, 0
_021A928C: .word 0x00003062
_021A9290: .word 0x021ACDE0
_021A9294: .word 0x021ACE18
_021A9298: .word 0x021ACD60
_021A929C: .word 0x00003038
	thumb_func_end ovy186_21a9218

	thumb_func_start ovy186_21a92a0
ovy186_21a92a0: ; 0x021A92A0
	push {r4, lr}
	add r4, r0, #0
	bl ovy186_21a89dc
	add r0, r4, #0
	bl ovy186_21a9038
	add r0, r4, #0
	bl ovy186_21a9748
	ldr r0, _021A92CC ; =0x00003064
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021A92C4
	add r0, r4, #0
	bl ovy186_21a9218
	pop {r4, pc}
_021A92C4:
	add r0, r4, #0
	bl ovy186_21a8a28
	pop {r4, pc}
	.align 2, 0
_021A92CC: .word 0x00003064
	thumb_func_end ovy186_21a92a0

	thumb_func_start ovy186_21a92d0
ovy186_21a92d0: ; 0x021A92D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0xb
	bls _021A92DC
	b _021A93DE
_021A92DC:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A92E8: ; jump table
	.short _021A93DE - _021A92E8 - 2 ; case 0
	.short _021A93DE - _021A92E8 - 2 ; case 1
	.short _021A93DE - _021A92E8 - 2 ; case 2
	.short _021A9300 - _021A92E8 - 2 ; case 3
	.short _021A933E - _021A92E8 - 2 ; case 4
	.short _021A934E - _021A92E8 - 2 ; case 5
	.short _021A9360 - _021A92E8 - 2 ; case 6
	.short _021A9392 - _021A92E8 - 2 ; case 7
	.short _021A930C - _021A92E8 - 2 ; case 8
	.short _021A931E - _021A92E8 - 2 ; case 9
	.short _021A93C8 - _021A92E8 - 2 ; case 10
	.short _021A93D4 - _021A92E8 - 2 ; case 11
_021A9300:
	ldr r0, _021A93E0 ; =0x000032EA
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A930C:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A93DE
	mov r0, #9
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A931E:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A93DE
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, _021A93E0 ; =0x000032EA
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A933E:
	mov r0, #2
	str r0, [r5]
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x14]
	pop {r3, r4, r5, pc}
_021A934E:
	mov r0, #3
	str r0, [r5]
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r1, [r0, #0x14]
	pop {r3, r4, r5, pc}
_021A9360:
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A93DE
	ldr r0, [r1, #8]
	bl sub_020179BC
	bl sub_020091DC
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x28]
	bl sub_021A7808
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	ldrb r1, [r1, #6]
	mov r2, #1
	bl ovy186_21aa16c
	pop {r3, r4, r5, pc}
_021A9392:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021A93DE
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x48]
	add r0, r0, #1
	str r0, [r1, #0x48]
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x48]
	cmp r0, #0x18
	bls _021A93BA
	mov r0, #0
	str r0, [r1, #0x48]
_021A93BA:
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	ldr r1, [r1, #0x48]
	mov r2, #1
	bl ovy186_21aa210
	pop {r3, r4, r5, pc}
_021A93C8:
	ldr r0, _021A93E0 ; =0x000032EA
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A93D4:
	ldr r0, _021A93E0 ; =0x000032EA
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #0xa
	str r0, [r5]
_021A93DE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A93E0: .word 0x000032EA
	thumb_func_end ovy186_21a92d0

	thumb_func_start ovy186_21a93e4
ovy186_21a93e4: ; 0x021A93E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ovy186_21a96fc
	ldr r4, _021A9438 ; =0x000032FA
	mov r1, #0
	ldrb r0, [r5, r4]
	lsr r0, r0, #1
	neg r6, r0
	mov r0, #5
	add r2, r6, #0
	bl sub_02044CFC
	mov r0, #5
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #0
	add r2, r6, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	sub r4, #0xc
	ldrb r0, [r5, r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021A942E
	add r0, r5, #0
	bl ovy186_21a8958
_021A942E:
	bl sub_02045A5C
	bl sub_0204B7C8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A9438: .word 0x000032FA
	thumb_func_end ovy186_21a93e4

	thumb_func_start ovy186_21a943c
ovy186_21a943c: ; 0x021A943C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r5, #1
	lsl r5, r5, #0xc
	add r0, r5, #0
	bl FX_Inv
	add r4, r0, #0
	add r0, r5, #0
	bl FX_Inv
	mov r5, #0
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	bl OS_WaitVBlankIntr
	ldr r4, _021A94A0 ; =0x04001020
	add r6, sp, #8
	str r5, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x80
	mov r3, #0x60
	str r5, [sp, #4]
	blx G2x_SetBGyAffine_
	add r4, #0x10
	str r5, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x80
	mov r3, #0x60
	str r5, [sp, #4]
	blx G2x_SetBGyAffine_
	bl OS_WaitVBlankIntr
	str r5, [sp]
	ldr r0, _021A94A4 ; =0x04000030
	add r1, r6, #0
	mov r2, #0x80
	mov r3, #0
	str r5, [sp, #4]
	blx G2x_SetBGyAffine_
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021A94A0: .word 0x04001020
_021A94A4: .word 0x04000030
	thumb_func_end ovy186_21a943c

	thumb_func_start ovy186_21a94a8
ovy186_21a94a8: ; 0x021A94A8
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021A94F8 ; =0x00003034
	mov r3, #0
	ldr r2, [r4, r0]
	mov r0, #7
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x10]
	bl sub_02045080
	ldr r0, _021A94FC ; =0x000031F8
	mov r1, #0xb
	ldr r0, [r4, r0]
	mov r2, #2
	str r1, [sp]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #4]
	mov r1, #0x15
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldrh r3, [r0]
	lsl r3, r3, #0x15
	lsr r3, r3, #0x18
	str r3, [sp, #0x10]
	ldrh r0, [r0, #2]
	mov r3, #0xa
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #7
	bl sub_020454D4
	mov r0, #7
	bl GFL_BGSysLoadScr
	add sp, #0x18
	pop {r4, pc}
	nop
_021A94F8: .word 0x00003034
_021A94FC: .word 0x000031F8
	thumb_func_end ovy186_21a94a8

	thumb_func_start ovy186_21a9500
ovy186_21a9500: ; 0x021A9500
	push {lr}
	sub sp, #0xc
	mov r3, #6
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #7
	mov r1, #0
	mov r2, #0x14
	bl sub_02045604
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy186_21a9500

	thumb_func_start ovy186_21a9520
ovy186_21a9520: ; 0x021A9520
	push {r4, r5, r6, r7}
	mov r4, #0
	mov r2, #7
_021A9526:
	asr r3, r4, #2
	lsr r3, r3, #0x1d
	add r3, r4, r3
	asr r3, r3, #3
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1d
	sub r5, r5, r6
	mov r3, #0x1d
	ror r5, r3
	add r3, r6, r5
	asr r5, r4, #5
	lsr r5, r5, #0x1a
	lsl r3, r3, #0x18
	add r5, r4, r5
	lsr r3, r3, #0x18
	asr r5, r5, #6
	lsl r5, r5, #3
	add r3, r0, r3
	ldrb r3, [r5, r3]
	lsr r7, r4, #0x1f
	lsl r6, r4, #0x1d
	sub r6, r6, r7
	mov r5, #0x1d
	ror r6, r5
	add r5, r7, r6
	lsl r5, r5, #0x18
	add r6, r3, #0
	lsr r5, r5, #0x18
	asr r6, r5
	mov r3, #1
	tst r3, r6
	beq _021A9568
	strb r2, [r1, r4]
_021A9568:
	mov r3, #3
	add r4, r4, #1
	lsl r3, r3, #0xc
	cmp r4, r3
	blt _021A9526
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy186_21a9520

	thumb_func_start ovy186_21a9578
ovy186_21a9578: ; 0x021A9578
	push {r4, r5, r6, r7}
	mov r2, #0
	mov r6, #1
_021A957E:
	lsl r5, r2, #3
	mov r4, #0
	mov r3, #0
	add r5, r0, r5
_021A9586:
	ldrb r7, [r5, r3]
	and r7, r6
	lsl r7, r3
	add r3, r3, #1
	orr r4, r7
	cmp r3, #8
	blt _021A9586
	mov r3, #6
	strb r4, [r1, r2]
	add r2, r2, #1
	lsl r3, r3, #8
	cmp r2, r3
	blt _021A957E
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy186_21a9578

	thumb_func_start ovy186_21a95a4
ovy186_21a95a4: ; 0x021A95A4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r7, r1, #0
	bl sub_02045814
	mov r3, #0
	add r1, r0, #0
	add r5, r3, #0
	add r0, r3, #0
_021A95BA:
	add r4, r3, #0
	add r4, #0xb
	lsl r4, r4, #6
	add r2, r0, #0
	add r4, r1, r4
_021A95C4:
	lsl r6, r2, #1
	add r2, r2, #1
	lsl r2, r2, #0x18
	add r6, r4, r6
	lsr r2, r2, #0x18
	strh r5, [r6, #8]
	cmp r2, #0x18
	blo _021A95C4
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #8
	blo _021A95BA
	add r2, r5, #0
	cmp r7, #0
	beq _021A961A
	cmp r7, #1
	beq _021A964E
	cmp r7, #2
	bne _021A9688
	mov r0, #0
_021A95EE:
	add r3, r5, #0
	add r3, #0xb
	lsl r3, r3, #6
	add r4, r0, #0
	add r3, r1, r3
_021A95F8:
	lsl r6, r4, #1
	add r2, r2, #1
	add r4, r4, #1
	lsl r2, r2, #0x10
	lsl r4, r4, #0x18
	lsr r2, r2, #0x10
	add r6, r3, r6
	lsr r4, r4, #0x18
	strh r2, [r6, #8]
	cmp r4, #0x18
	blo _021A95F8
	add r3, r5, #1
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	cmp r5, #8
	blo _021A95EE
	b _021A9688
_021A961A:
	mov r0, #0
_021A961C:
	add r3, r5, #0
	add r3, #0xb
	lsl r3, r3, #6
	add r4, r0, #0
	add r3, r1, r3
_021A9626:
	lsl r6, r4, #1
	add r2, r2, #1
	add r4, r4, #1
	lsl r2, r2, #0x10
	lsl r4, r4, #0x18
	lsr r2, r2, #0x10
	add r6, r3, r6
	lsr r4, r4, #0x18
	strh r2, [r6, #0x14]
	cmp r4, #0xc
	blo _021A9626
	add r3, r5, #1
	add r2, #0xc
	lsl r3, r3, #0x18
	lsl r2, r2, #0x10
	lsr r5, r3, #0x18
	lsr r2, r2, #0x10
	cmp r5, #8
	blo _021A961C
	b _021A9688
_021A964E:
	add r0, r5, #0
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0
_021A9658:
	add r3, r5, #0
	add r3, #0xb
	lsl r3, r3, #6
	add r4, r0, #0
	add r3, r1, r3
_021A9662:
	lsl r6, r4, #1
	add r2, r2, #1
	add r4, r4, #1
	lsl r2, r2, #0x10
	lsl r4, r4, #0x18
	lsr r2, r2, #0x10
	add r6, r3, r6
	lsr r4, r4, #0x18
	strh r2, [r6, #0x14]
	cmp r4, #0xc
	blo _021A9662
	add r3, r5, #1
	add r2, #0xc
	lsl r3, r3, #0x18
	lsl r2, r2, #0x10
	lsr r5, r3, #0x18
	lsr r2, r2, #0x10
	cmp r5, #8
	blo _021A9658
_021A9688:
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy186_21a95a4

	thumb_func_start ovy186_21a9694
ovy186_21a9694: ; 0x021A9694
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	lsl r0, r5, #0x18
	mov r2, #3
	lsr r0, r0, #0x18
	lsl r2, r2, #0xc
	mov r3, #1
	bl sub_02045080
	add r0, r5, #0
	add r1, r4, #0
	bl ovy186_21a95a4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy186_21a9694

	thumb_func_start ovy186_21a96b4
ovy186_21a96b4: ; 0x021A96B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021A96F4 ; =0x00003038
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A96F2
	ldr r0, [r5, #0x28]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021A96F2
	ldr r4, _021A96F8 ; =0x000032EB
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	ldrb r0, [r5, r4]
	cmp r0, #0x14
	bls _021A96F2
	add r0, r4, #1
	ldrb r1, [r5, r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #1
	strb r1, [r5, r0]
	add r1, r4, #1
	ldrb r1, [r5, r1]
	mov r0, #7
	bl ovy186_21a95a4
	mov r0, #0
	strb r0, [r5, r4]
_021A96F2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A96F4: .word 0x00003038
_021A96F8: .word 0x000032EB
	thumb_func_end ovy186_21a96b4

	thumb_func_start ovy186_21a96fc
ovy186_21a96fc: ; 0x021A96FC
	push {r4, lr}
	ldr r2, _021A9740 ; =0x00003208
	ldr r1, [r0, r2]
	add r3, r2, #4
	ldr r3, [r0, r3]
	ldr r1, [r1, #0xc]
	add r4, r3, #1
	add r3, r2, #4
	str r4, [r0, r3]
	cmp r4, #8
	ble _021A9718
	mov r3, #0
	add r2, r2, #4
	str r3, [r0, r2]
_021A9718:
	ldr r2, _021A9744 ; =0x0000320C
	ldr r0, [r0, r2]
	cmp r0, #0
	bne _021A972C
	add r0, r1, #6
	mov r1, #6
	mov r2, #4
	bl GXS_LoadBGPltt
	pop {r4, pc}
_021A972C:
	cmp r0, #4
	bne _021A973C
	add r1, #0xa
	add r0, r1, #0
	mov r1, #6
	mov r2, #4
	bl GXS_LoadBGPltt
_021A973C:
	pop {r4, pc}
	nop
_021A9740: .word 0x00003208
_021A9744: .word 0x0000320C
	thumb_func_end ovy186_21a96fc

	thumb_func_start ovy186_21a9748
ovy186_21a9748: ; 0x021A9748
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A9780 ; =0x00003038
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021A9766
	add r0, #0x2a
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021A9766
	ldr r0, _021A9784 ; =0x021ACD38
	bl sub_0203D9C8
	cmp r0, #0
	bne _021A9778
_021A9766:
	ldr r0, _021A9788 ; =0x00003062
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _021A977E
	ldr r0, _021A978C ; =0x021ACD20
	bl sub_0203D9C8
	cmp r0, #0
	beq _021A977E
_021A9778:
	ldr r0, _021A9790 ; =0x00003338
	mov r1, #0
	strb r1, [r4, r0]
_021A977E:
	pop {r4, pc}
	.align 2, 0
_021A9780: .word 0x00003038
_021A9784: .word 0x021ACD38
_021A9788: .word 0x00003062
_021A978C: .word 0x021ACD20
_021A9790: .word 0x00003338
	thumb_func_end ovy186_21a9748

	thumb_func_start ovy186_21a9794
ovy186_21a9794: ; 0x021A9794
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	add r5, r1, #0
	ldrb r0, [r0, #4]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	bne _021A98A0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _021A98A0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _021A987A
	cmp r5, #0
	bne _021A9818
	ldr r0, _021A98A4 ; =0x021ACD40
	bl sub_0203DA0C
	cmp r0, #0
	bne _021A97CE
	ldr r0, _021A98A8 ; =0x00003338
	mov r1, #1
	strb r1, [r4, r0]
_021A97CE:
	ldr r5, _021A98A8 ; =0x00003338
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _021A9816
	ldr r0, _021A98A4 ; =0x021ACD40
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0203DADC
	cmp r0, #0
	bne _021A9816
	add r0, r5, #0
	ldr r1, [sp, #4]
	sub r0, #0x2a
	strb r1, [r4, r0]
	add r0, r5, #0
	ldr r1, [sp]
	sub r0, #0x29
	strb r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x1e
	ldrb r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x28
	strb r1, [r4, r0]
	mov r1, #1
	sub r5, #0x27
	strb r1, [r4, r5]
	ldr r0, [sp, #4]
	cmp r0, #0x80
	ldr r0, _021A98AC ; =0x00003060
	bhs _021A9814
	mov r1, #0
_021A9810:
	strh r1, [r4, r0]
	b _021A9880
_021A9814:
	b _021A9810
_021A9816:
	b _021A987A
_021A9818:
	ldr r0, _021A98B0 ; =0x021ACD30
	bl sub_0203DA0C
	cmp r0, #0
	bne _021A9828
	ldr r0, _021A98A8 ; =0x00003338
	mov r1, #1
	strb r1, [r4, r0]
_021A9828:
	ldr r5, _021A98A8 ; =0x00003338
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _021A9878
	ldr r0, _021A98B0 ; =0x021ACD30
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl sub_0203DADC
	cmp r0, #0
	bne _021A9878
	ldr r0, _021A98AC ; =0x00003060
	ldr r2, [sp, #4]
	ldrh r1, [r4, r0]
	mov r0, #0xc0
	sub r2, #0x20
	mul r0, r1
	add r0, r2, r0
	lsr r1, r0, #1
	add r0, r5, #0
	add r1, #0x20
	sub r0, #0x2a
	strb r1, [r4, r0]
	ldr r0, [sp]
	sub r0, #0x18
	lsr r1, r0, #1
	add r0, r5, #0
	add r1, #0x58
	sub r0, #0x29
	strb r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x1e
	ldrb r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x28
	strb r1, [r4, r0]
	mov r0, #1
	sub r5, #0x27
	strb r0, [r4, r5]
	b _021A9880
_021A9878:
	b _021A987A
_021A987A:
	ldr r0, _021A98B4 ; =0x00003311
	mov r1, #0
	strb r1, [r4, r0]
_021A9880:
	ldr r0, _021A98B8 ; =0x0000330E
	ldrb r2, [r4, r0]
	add r1, r0, #4
	strb r2, [r4, r1]
	add r1, r0, #1
	ldrb r2, [r4, r1]
	add r1, r0, #5
	strb r2, [r4, r1]
	add r1, r0, #2
	ldrb r2, [r4, r1]
	add r1, r0, #6
	strb r2, [r4, r1]
	add r1, r0, #3
	ldrb r1, [r4, r1]
	add r0, r0, #7
	strb r1, [r4, r0]
_021A98A0:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A98A4: .word 0x021ACD40
_021A98A8: .word 0x00003338
_021A98AC: .word 0x00003060
_021A98B0: .word 0x021ACD30
_021A98B4: .word 0x00003311
_021A98B8: .word 0x0000330E
	thumb_func_end ovy186_21a9794

	thumb_func_start ovy186_21a98bc
ovy186_21a98bc: ; 0x021A98BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x34]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r2, [sp, #4]
	str r0, [sp, #0x30]
	mov r0, #0
	str r3, [sp, #8]
	mov r4, #0
	mov ip, r0
_021A98DC:
	ldr r1, [sp, #8]
	mov r0, ip
	add r6, r1, r0
	asr r0, r6, #2
	lsr r0, r0, #0x1d
	add r0, r6, r0
	asr r0, r0, #3
	mov r1, #0x18
	mul r1, r0
	mov lr, r1
	lsr r1, r6, #0x1f
	lsl r2, r6, #0x1d
	sub r2, r2, r1
	mov r0, #0x1d
	ror r2, r0
	add r0, r1, r2
	lsl r0, r0, #3
	mov r3, #0
	str r0, [sp, #0xc]
_021A9902:
	ldr r0, [sp, #4]
	add r2, r0, r3
	bmi _021A990C
	cmp r6, #0
	bge _021A990E
_021A990C:
	b _021A996A
_021A990E:
	ldr r0, [sp, #0x28]
	cmp r2, r0
	bge _021A991A
	ldr r0, [sp, #0x2c]
	cmp r6, r0
	blt _021A991C
_021A991A:
	b _021A996A
_021A991C:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _021A9934
	cmp r7, #0
	bne _021A992A
	cmp r2, #0x60
	bge _021A9932
_021A992A:
	cmp r7, #1
	bne _021A9934
	cmp r2, #0x5f
	bgt _021A9934
_021A9932:
	b _021A996A
_021A9934:
	lsr r1, r2, #0x1f
	lsl r5, r2, #0x1d
	sub r5, r5, r1
	mov r0, #0x1d
	ror r5, r0
	add r0, r1, r5
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r2, r1, #3
	mov r1, lr
	add r1, r2, r1
	lsl r2, r1, #6
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	add r0, r0, r1
	ldr r1, [sp]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _021A9960
	mov r2, #7
	b _021A9966
_021A9960:
	cmp r1, #2
	bne _021A996A
	mov r2, #0
_021A9966:
	ldr r1, [sp, #0x10]
	strb r2, [r1, r0]
_021A996A:
	add r4, r4, #1
	add r3, r3, #1
	cmp r3, #4
	blt _021A9902
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #4
	blt _021A98DC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy186_21a98bc

	thumb_func_start ovy186_21a9980
ovy186_21a9980: ; 0x021A9980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x14]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x18]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x60]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x64]
	mov r6, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x50]
	ldr r4, [r0]
	ldr r0, [sp, #0x54]
	ldr r5, [r0]
	add r0, r2, #0
	str r0, [sp, #0x34]
	add r0, r3, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _021A99CC
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021A99CC
	ldr r0, [sp, #0x50]
	add r1, r2, #0
	str r1, [r0]
	ldr r0, [sp, #0x54]
	add r1, r3, #0
	str r1, [r0]
	add sp, #0x38
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A99CC:
	ldr r0, [sp, #0x18]
	sub r0, r0, r4
	str r0, [sp, #0x30]
	bpl _021A99D8
	neg r0, r0
	str r0, [sp, #0x30]
_021A99D8:
	ldr r0, [sp, #0x1c]
	sub r0, r0, r5
	str r0, [sp, #0x2c]
	bpl _021A99E4
	neg r0, r0
	str r0, [sp, #0x2c]
_021A99E4:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	ble _021A9A7A
	ldr r0, [sp, #0x18]
	cmp r4, r0
	ble _021A9A0A
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	ble _021A99FC
	mov r0, #1
	b _021A9A00
_021A99FC:
	mov r0, #0
	mvn r0, r0
_021A9A00:
	str r0, [sp, #0x24]
	str r4, [sp, #0x34]
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	b _021A9A1A
_021A9A0A:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bge _021A9A14
	mov r0, #1
	b _021A9A18
_021A9A14:
	mov r0, #0
	mvn r0, r0
_021A9A18:
	str r0, [sp, #0x24]
_021A9A1A:
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x64]
	add r2, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r5, #0
	bl ovy186_21a98bc
	ldr r0, [sp, #0x30]
	add r4, r4, #1
	asr r7, r0, #1
	ldr r0, [sp, #0x34]
	add r6, r6, #1
	cmp r4, r0
	bgt _021A9B06
_021A9A44:
	ldr r0, [sp, #0x2c]
	sub r7, r7, r0
	bpl _021A9A52
	ldr r0, [sp, #0x30]
	add r7, r7, r0
	ldr r0, [sp, #0x24]
	add r5, r5, r0
_021A9A52:
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x64]
	add r2, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r5, #0
	bl ovy186_21a98bc
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r6, r6, #1
	cmp r4, r0
	ble _021A9A44
	b _021A9B06
_021A9A7A:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	ble _021A9A98
	ldr r0, [sp, #0x18]
	cmp r4, r0
	ble _021A9A8A
	mov r0, #1
	b _021A9A8E
_021A9A8A:
	mov r0, #0
	mvn r0, r0
_021A9A8E:
	str r0, [sp, #0x20]
	str r5, [sp, #0x28]
	ldr r5, [sp, #0x1c]
	ldr r4, [sp, #0x18]
	b _021A9AA8
_021A9A98:
	ldr r0, [sp, #0x18]
	cmp r4, r0
	bge _021A9AA2
	mov r0, #1
	b _021A9AA6
_021A9AA2:
	mov r0, #0
	mvn r0, r0
_021A9AA6:
	str r0, [sp, #0x20]
_021A9AA8:
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x64]
	add r2, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r5, #0
	bl ovy186_21a98bc
	ldr r0, [sp, #0x2c]
	add r5, r5, #1
	asr r7, r0, #1
	ldr r0, [sp, #0x28]
	add r6, r6, #1
	cmp r5, r0
	bgt _021A9B06
_021A9AD2:
	ldr r0, [sp, #0x30]
	sub r7, r7, r0
	bpl _021A9AE0
	ldr r0, [sp, #0x2c]
	add r7, r7, r0
	ldr r0, [sp, #0x20]
	add r4, r4, r0
_021A9AE0:
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [sp, #0x64]
	add r2, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r3, r5, #0
	bl ovy186_21a98bc
	ldr r0, [sp, #0x28]
	add r5, r5, #1
	add r6, r6, #1
	cmp r5, r0
	ble _021A9AD2
_021A9B06:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r1, [r0]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r1, [r0]
	add r0, r6, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy186_21a9980

	thumb_func_start sub_021A9B18
sub_021A9B18: ; 0x021A9B18
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r0, [r0, #3]
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A9B18

	thumb_func_start ovy186_21a9b2c
ovy186_21a9b2c: ; 0x021A9B2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov ip, r0
	add r0, sp, #0x38
	ldrb r0, [r0, #4]
	add r4, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	mov r1, #0
	mov r7, #0
	mov r2, #4
	cmp r0, #0
	beq _021A9B48
	mov r2, #2
_021A9B48:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _021A9B9C
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _021A9B62
	ldrb r0, [r5]
	sub r0, #0x20
	sub r0, r0, r2
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #1]
	sub r0, #0x5a
	str r0, [sp, #0x18]
_021A9B62:
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r0, [r5, #3]
	ldr r3, _021A9BC4 ; =0x021ACEF0
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	ldrb r1, [r0, #4]
	str r1, [sp, #0x10]
	ldrb r0, [r0, #8]
	lsl r1, r1, #5
	add r1, r3, r1
	str r0, [sp, #0x14]
	ldrb r3, [r4, #2]
	mov r0, ip
	lsl r3, r3, #4
	add r1, r1, r3
	ldrb r3, [r4]
	sub r3, #0x20
	sub r2, r3, r2
	ldrb r3, [r4, #1]
	sub r3, #0x5a
	bl ovy186_21a9980
	add r7, r0, #0
	mov r1, #1
_021A9B9C:
	cmp r1, #0
	beq _021A9BB2
	cmp r6, #0
	beq _021A9BB2
	mov r2, #3
	ldr r1, [sp, #0x38]
	mov r0, #7
	lsl r2, r2, #0xc
	mov r3, #1
	bl sub_02045080
_021A9BB2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A9B18
	mov r0, #0
	strb r0, [r4, #3]
	add r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A9BC4: .word 0x021ACEF0
	thumb_func_end ovy186_21a9b2c

	thumb_func_start sub_021A9BC8
sub_021A9BC8: ; 0x021A9BC8
	ldr r3, _021A9BD4 ; =0x00003074
	lsl r1, r1, #0x18
	add r0, r0, r3
	ldr r3, _021A9BD8 ; =sub_021AB164
	lsr r1, r1, #0x18
	bx r3
	.align 2, 0
_021A9BD4: .word 0x00003074
_021A9BD8: .word sub_021AB164
	thumb_func_end sub_021A9BC8

	thumb_func_start ovy186_21a9bdc
ovy186_21a9bdc: ; 0x021A9BDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r1, #0
	bne _021A9C1C
	mov r0, #0x12
	ldr r3, _021A9C78 ; =0x021ACD8C
	mul r0, r2
	add r2, r3, r0
	mov r0, #6
	mul r0, r1
	add r6, r2, r0
_021A9BF4:
	ldrb r2, [r6, r4]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl sub_021A9BC8
	add r4, r4, #1
	cmp r4, #5
	blt _021A9BF4
	ldr r0, _021A9C7C ; =0x0000333C
	mov r2, #1
	ldr r0, [r5, r0]
	tst r0, r2
	beq _021A9C18
	add r0, r5, #0
	mov r1, #0xd
	bl sub_021A9BC8
_021A9C18:
	mov r4, #1
	b _021A9C6C
_021A9C1C:
	cmp r1, #1
	bne _021A9C4A
	mov r0, #0x12
	ldr r3, _021A9C78 ; =0x021ACD8C
	mul r0, r2
	add r2, r3, r0
	mov r0, #6
	mul r0, r1
	add r6, r2, r0
_021A9C2E:
	ldrb r2, [r6, r4]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl sub_021A9BC8
	add r4, r4, #1
	cmp r4, #6
	blt _021A9C2E
	add r0, r5, #0
	mov r1, #3
	bl ovy186_21a9e90
	b _021A9C18
_021A9C4A:
	mov r3, #0x12
	ldr r0, _021A9C78 ; =0x021ACD8C
	mul r3, r2
	add r2, r0, r3
	mov r0, #6
	mul r0, r1
	add r6, r4, #0
	add r7, r2, r0
_021A9C5A:
	ldrb r2, [r7, r6]
	add r1, r6, #0
	add r0, r5, #0
	add r1, #8
	bl sub_021A9BC8
	add r6, r6, #1
	cmp r6, #6
	blt _021A9C5A
_021A9C6C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A9E70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9C78: .word 0x021ACD8C
_021A9C7C: .word 0x0000333C
	thumb_func_end ovy186_21a9bdc

	thumb_func_start ovy186_21a9c80
ovy186_21a9c80: ; 0x021A9C80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl sub_02169C04
	cmp r0, #0
	bne _021A9CA6
	ldr r1, _021A9CEC ; =0x0000333C
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_021A9BC8
	pop {r4, r5, r6, pc}
_021A9CA6:
	ldr r0, [r5, #0x24]
	ldr r0, [r0]
	bl sub_02169C10
	add r2, r0, #0
	cmp r2, #4
	blt _021A9CC0
	ldr r0, [r5, #0x28]
	mov r2, #4
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _021A9CC0
	mov r2, #5
_021A9CC0:
	mov r4, #0xcd
	lsl r4, r4, #6
	str r2, [r5, r4]
	lsl r3, r2, #1
	ldr r2, _021A9CF0 ; =0x021ACD48
	ldr r0, _021A9CF4 ; =0x00003074
	ldrsh r2, [r2, r3]
	add r0, r5, r0
	mov r1, #0xd
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #1
	mov r6, #1
	bl ovy186_21ab104
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #0
	orr r1, r6
	sub r0, r4, #4
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A9CEC: .word 0x0000333C
_021A9CF0: .word 0x021ACD48
_021A9CF4: .word 0x00003074
	thumb_func_end ovy186_21a9c80

	thumb_func_start ovy186_21a9cf8
ovy186_21a9cf8: ; 0x021A9CF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x27
	mov r1, #0xf
	add r2, sp, #0
	mov r3, #0x27
	bl sub_0204B354
	add r6, r0, #0
	ldr r0, [sp]
	ldr r7, _021A9D40 ; =0x00003348
	ldr r4, [r0, #0xc]
	add r1, r5, r7
	add r0, r4, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	add r1, r7, #0
	add r4, #0x20
	add r1, #0x20
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r6, #0
	bl GFL_HeapFree
	mov r1, #0
	sub r0, r7, #4
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #1
	bl sub_021A9E70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A9D40: .word 0x00003348
	thumb_func_end ovy186_21a9cf8

	thumb_func_start ovy186_21a9d44
ovy186_21a9d44: ; 0x021A9D44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, _021A9E60 ; =0x0000333C
	ldr r1, [sp]
	ldr r2, [r1, r0]
	mov r1, #2
	tst r2, r1
	bne _021A9D58
	b _021A9E5A
_021A9D58:
	add r4, r0, #0
	ldr r2, [sp]
	add r4, #8
	ldr r4, [r2, r4]
	lsl r2, r1, #8
	add r3, r0, #0
	add r4, r4, r2
	ldr r2, [sp]
	add r0, #8
	str r4, [r2, r0]
	lsl r0, r1, #0xf
	add r3, #8
	cmp r4, r0
	blt _021A9D7A
	sub r1, r4, r0
	add r0, r2, #0
	str r1, [r0, r3]
_021A9D7A:
	ldr r1, _021A9E64 ; =0x00003344
	ldr r2, [sp]
	str r1, [sp, #0xc]
	ldr r1, [r2, r1]
	mov r0, #0
	asr r1, r1, #4
	lsl r1, r1, #1
	add r1, r1, #1
	lsl r2, r1, #1
	ldr r1, _021A9E68 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r4, r1, #0x10
	ldr r1, [sp, #0xc]
	add r1, #0x44
	mov ip, r1
	ldr r1, [sp, #0xc]
	add r1, r1, #4
	str r1, [sp, #0x18]
	mov r1, #0x3e
	lsl r1, r1, #9
	str r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	add r1, #0x24
	str r1, [sp, #0xc]
	mov r1, #0x3e
	lsl r1, r1, #9
	str r1, [sp, #0x10]
_021A9DBC:
	ldr r1, [sp]
	lsl r2, r0, #1
	add r7, r1, r2
	ldr r1, [sp, #0x18]
	mov r2, #0x3e
	ldrh r5, [r7, r1]
	ldr r3, [sp, #0x14]
	mov r1, #0x1f
	lsl r2, r2, #4
	and r1, r5
	and r2, r5
	and r3, r5
	ldr r5, [sp, #0xc]
	asr r3, r3, #0xa
	ldrh r6, [r7, r5]
	mov r5, #0x1f
	lsl r1, r1, #0x18
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	str r5, [sp, #4]
	mov r5, #0x3e
	lsl r5, r5, #4
	and r5, r6
	lsl r5, r5, #0x13
	lsr r5, r5, #0x18
	str r5, [sp, #8]
	ldr r5, [sp, #0x10]
	lsl r2, r2, #0x13
	and r5, r6
	asr r5, r5, #0xa
	lsl r5, r5, #0x18
	lsr r6, r5, #0x18
	add r5, r0, #0
	lsl r3, r3, #0x18
	sub r5, #0xc
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	cmp r5, #1
	bhi _021A9E36
	ldr r5, [sp, #4]
	sub r5, r5, r1
	mul r5, r4
	asr r5, r5, #0xc
	add r1, r1, r5
	ldr r5, [sp, #8]
	lsl r1, r1, #0x18
	sub r5, r5, r2
	mul r5, r4
	asr r5, r5, #0xc
	add r2, r2, r5
	sub r5, r6, r3
	mul r5, r4
	asr r5, r5, #0xc
	add r3, r3, r5
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
_021A9E36:
	lsl r2, r2, #5
	lsl r3, r3, #0xa
	orr r1, r2
	add r2, r3, #0
	orr r2, r1
	mov r1, ip
	add r0, r0, #1
	strh r2, [r7, r1]
	cmp r0, #0x10
	blt _021A9DBC
	ldr r3, _021A9E6C ; =0x00003388
	ldr r2, [sp]
	mov r0, #0x1e
	add r2, r2, r3
	mov r1, #0
	mov r3, #0x20
	bl sub_0205FA10
_021A9E5A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A9E60: .word 0x0000333C
_021A9E64: .word 0x00003344
_021A9E68: .word FX_SinCosTable_
_021A9E6C: .word 0x00003388
	thumb_func_end ovy186_21a9d44

	thumb_func_start sub_021A9E70
sub_021A9E70: ; 0x021A9E70
	cmp r1, #1
	ldr r2, _021A9E8C ; =0x0000333C
	bne _021A9E80
	ldr r3, [r0, r2]
	mov r1, #2
	orr r1, r3
	str r1, [r0, r2]
	bx lr
_021A9E80:
	ldr r3, [r0, r2]
	mov r1, #2
	bic r3, r1
	str r3, [r0, r2]
	bx lr
	nop
_021A9E8C: .word 0x0000333C
	thumb_func_end sub_021A9E70

	thumb_func_start ovy186_21a9e90
ovy186_21a9e90: ; 0x021A9E90
	push {r3, r4, r5, lr}
	ldr r2, _021A9F68 ; =0x00003306
	add r5, r0, #0
	ldrsh r0, [r5, r2]
	add r2, #0x30
	ldrb r2, [r5, r2]
	mov r4, #0
	sub r2, r2, #4
	neg r2, r2
	lsl r2, r2, #4
	cmp r0, r2
	bgt _021A9EAC
	mov r4, #1
	b _021A9EB2
_021A9EAC:
	cmp r0, #0
	blt _021A9EB2
	mov r4, #2
_021A9EB2:
	cmp r1, #0
	bne _021A9EE0
	mov r0, #2
	cmp r4, #2
	beq _021A9EBE
	mov r0, #1
_021A9EBE:
	lsl r2, r0, #2
	ldr r0, _021A9F6C ; =0x021ACD76
	ldr r3, _021A9F70 ; =0x021ACD74
	ldrsh r0, [r0, r2]
	ldrsh r2, [r3, r2]
	mov r1, #0xb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021A9F74 ; =0x00003074
	lsl r2, r2, #0x18
	add r0, r5, r0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab128
	pop {r3, r4, r5, pc}
_021A9EE0:
	cmp r1, #1
	bne _021A9F0E
	mov r0, #2
	cmp r4, #1
	beq _021A9EEC
	mov r0, #1
_021A9EEC:
	lsl r2, r0, #2
	ldr r0, _021A9F78 ; =0x021ACD82
	ldr r3, _021A9F7C ; =0x021ACD80
	ldrsh r0, [r0, r2]
	ldrsh r2, [r3, r2]
	mov r1, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021A9F74 ; =0x00003074
	lsl r2, r2, #0x18
	add r0, r5, r0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab128
	pop {r3, r4, r5, pc}
_021A9F0E:
	sub r0, r1, #2
	cmp r0, #1
	bhi _021A9F64
	mov r0, #2
	cmp r4, #2
	beq _021A9F1C
	mov r0, #0
_021A9F1C:
	lsl r2, r0, #2
	ldr r0, _021A9F6C ; =0x021ACD76
	ldr r3, _021A9F70 ; =0x021ACD74
	ldrsh r0, [r0, r2]
	ldrsh r2, [r3, r2]
	mov r1, #0xb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021A9F74 ; =0x00003074
	lsl r2, r2, #0x18
	add r0, r5, r0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab128
	mov r0, #2
	cmp r4, #1
	beq _021A9F44
	mov r0, #0
_021A9F44:
	lsl r2, r0, #2
	ldr r0, _021A9F78 ; =0x021ACD82
	ldr r3, _021A9F7C ; =0x021ACD80
	ldrsh r0, [r0, r2]
	ldrsh r2, [r3, r2]
	mov r1, #0xc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021A9F74 ; =0x00003074
	lsl r2, r2, #0x18
	add r0, r5, r0
	lsr r2, r2, #0x18
	mov r3, #1
	bl ovy186_21ab128
_021A9F64:
	pop {r3, r4, r5, pc}
	nop
_021A9F68: .word 0x00003306
_021A9F6C: .word 0x021ACD76
_021A9F70: .word 0x021ACD74
_021A9F74: .word 0x00003074
_021A9F78: .word 0x021ACD82
_021A9F7C: .word 0x021ACD80
	thumb_func_end ovy186_21a9e90

	thumb_func_start ovy186_21a9f80
ovy186_21a9f80: ; 0x021A9F80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	ldr r7, _021AA018 ; =0x021ACFFB
	bl BmpWin_InitAllocator
	mov r4, #0
_021A9F90:
	mov r0, #6
	mul r0, r4
	add r3, r7, r0
	lsl r1, r4, #2
	add r6, r5, r1
	ldrb r1, [r3, #4]
	ldrb r0, [r7, r0]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	bl BmpWin_CreateDynamic
	str r0, [r6, #4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021A9F90
	mov r0, #7
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r6, #7
	bl sub_02045118
	ldrh r0, [r5]
	ldr r4, _021AA01C ; =0x000032F8
	mov r1, #0x31
	str r0, [sp]
	ldrb r3, [r5, r4]
	mov r0, #4
	mov r2, #0xd
	bl sub_02024D00
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r6, #6
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #7
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	ldrh r0, [r5]
	bl sub_02021998
	sub r4, #8
	str r0, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021AA018: .word 0x021ACFFB
_021AA01C: .word 0x000032F8
	thumb_func_end ovy186_21a9f80

	thumb_func_start ovy186_21aa020
ovy186_21aa020: ; 0x021AA020
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021AA048 ; =0x000032F0
	ldr r0, [r5, r0]
	bl sub_02021A18
	mov r4, #0
_021AA02E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_02048210
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _021AA02E
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AA048: .word 0x000032F0
	thumb_func_end ovy186_21aa020

	thumb_func_start ovy186_21aa04c
ovy186_21aa04c: ; 0x021AA04C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _021AA15C ; =0x00003218
	add r7, r1, #0
	str r0, [sp, #0x20]
	add r0, #0x30
	str r2, [sp, #0x1c]
	mov r4, #0
	str r0, [sp, #0x20]
_021AA060:
	lsl r6, r4, #2
	ldr r0, [r7, r6]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	cmp r4, #3
	bne _021AA07E
	bne _021AA098
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021AA098
_021AA07E:
	ldr r0, [r7, r6]
	bl BmpWin_GetBitmap
	ldr r1, _021AA15C ; =0x00003218
	ldr r3, [sp, #0x20]
	ldr r1, [r5, r1]
	add r6, r5, r6
	str r1, [sp]
	ldr r3, [r6, r3]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
_021AA098:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021AA060
	ldr r0, _021AA160 ; =0x00003230
	ldr r1, [sp, #0x1c]
	ldr r4, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r1, #0xa
	bl sub_02048614
	ldr r0, _021AA160 ; =0x00003230
	mov r6, #0
	str r6, [sp]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	mov r2, #0x88
	str r0, [sp, #4]
	ldr r1, [r7]
	add r0, r5, #0
	mov r3, #8
	bl ovy186_21aad9c
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021AA0F0
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	ldr r0, [r0, #0x24]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r7, #0xc]
	add r0, r5, #0
	mov r2, #0x88
	mov r3, #8
	bl ovy186_21aacc0
_021AA0F0:
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	ldrb r1, [r1, #6]
	mov r2, #0
	mov r6, #0
	bl ovy186_21aa16c
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	ldr r1, [r1, #0x48]
	mov r2, #0
	bl ovy186_21aa210
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	ldr r0, [r0, #0x20]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r1, [r7, #0x10]
	add r0, r5, #0
	mov r2, #0xd8
	mov r3, #8
	bl ovy186_21aaab8
	ldr r4, _021AA164 ; =0x000032D4
	mov r1, #0
	ldr r0, [r5, r4]
	bl sub_020344B8
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	ldr r1, [r7, #0x14]
	add r2, #0x6c
	mov r3, #0
	bl sub_020342A4
	ldr r0, _021AA168 ; =0x00003038
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021AA156
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_0203430C
_021AA156:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021AA15C: .word 0x00003218
_021AA160: .word 0x00003230
_021AA164: .word 0x000032D4
_021AA168: .word 0x00003038
	thumb_func_end ovy186_21aa04c

	thumb_func_start ovy186_21aa16c
ovy186_21aa16c: ; 0x021AA16C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r3, [r5]
	add r7, r2, #0
	add r4, r1, #0
	ldr r2, _021AA208 ; =0x0000017F
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #8]
	bl sub_020179BC
	bl sub_020091D0
	cmp r0, #0
	beq _021AA1A0
	add r0, r4, #0
	bl sub_0202B5FC
	add r1, r0, #0
	add r0, r6, #0
	b _021AA1A4
_021AA1A0:
	add r0, r6, #0
	mov r1, #0
_021AA1A4:
	bl sub_0204898C
	ldr r1, _021AA20C ; =0x00003218
	add r4, r0, #0
	ldr r1, [r5, r1]
	add r0, r4, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #8]
	bl BmpWin_GetBitmap
	ldr r1, _021AA20C ; =0x00003218
	mov r2, #0x80
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	ldr r1, [sp, #4]
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_MsgDataFree
	cmp r7, #0
	beq _021AA204
	ldr r0, [r5, #8]
	bl sub_0204826C
	ldr r0, [r5, #8]
	bl BmpWin_FlushChar
	mov r0, #7
	bl sub_02045B7C
_021AA204:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AA208: .word 0x0000017F
_021AA20C: .word 0x00003218
	thumb_func_end ovy186_21aa16c

	thumb_func_start ovy186_21aa210
ovy186_21aa210: ; 0x021AA210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021AA294 ; =0x0000321C
	add r1, #0x23
	ldr r0, [r5, r0]
	add r4, r2, #0
	bl sub_0204898C
	ldr r1, _021AA294 ; =0x0000321C
	mov r2, #0
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r6, r0, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	ldr r1, _021AA294 ; =0x0000321C
	ldr r3, _021AA294 ; =0x0000321C
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r3, #0x34
	str r1, [sp]
	ldr r3, [r5, r3]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	ldr r1, _021AA294 ; =0x0000321C
	mov r2, #0
	sub r1, r1, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp]
	mov r1, #0x80
	sub r1, r1, r7
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_02021CFC
	add r0, r6, #0
	bl GFL_StrBufFree
	cmp r4, #0
	beq _021AA292
	ldr r0, [r5, #0xc]
	bl sub_0204826C
	ldr r0, [r5, #0xc]
	bl BmpWin_FlushChar
	mov r0, #7
	bl sub_02045B7C
_021AA292:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AA294: .word 0x0000321C
	thumb_func_end ovy186_21aa210

	thumb_func_start ovy186_21aa298
ovy186_21aa298: ; 0x021AA298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021AA2E0 ; =0x00003038
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021AA2B2
	ldr r0, [r5, #0x18]
	bl sub_0204826C
	ldr r0, [r5, #0x18]
	bl BmpWin_FlushChar
	b _021AA2D0
_021AA2B2:
	ldr r7, _021AA2E4 ; =0x021ACFF4
	mov r4, #0
_021AA2B6:
	ldrb r0, [r7, r4]
	cmp r0, #0
	beq _021AA2CA
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	bl sub_0204826C
	ldr r0, [r5, r6]
	bl BmpWin_FlushChar
_021AA2CA:
	add r4, r4, #1
	cmp r4, #5
	ble _021AA2B6
_021AA2D0:
	mov r0, #7
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AA2E0: .word 0x00003038
_021AA2E4: .word 0x021ACFF4
	thumb_func_end ovy186_21aa298

	thumb_func_start ovy186_21aa2e8
ovy186_21aa2e8: ; 0x021AA2E8
	push {r3, lr}
	ldr r1, _021AA2F8 ; =0x00003306
	mov r2, #0
	ldrsh r1, [r0, r1]
	mov r3, #0
	bl ovy186_21aa9d8
	pop {r3, pc}
	.align 2, 0
_021AA2F8: .word 0x00003306
	thumb_func_end ovy186_21aa2e8

	thumb_func_start ovy186_21aa2fc
ovy186_21aa2fc: ; 0x021AA2FC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl BmpWin_GetBitmap
	ldr r1, _021AA32C ; =0x00003218
	ldr r3, [sp, #0x18]
	ldr r1, [r5, r1]
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	lsl r2, r1, #1
	ldr r1, _021AA330 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	lsl r2, r6, #0x10
	asr r2, r2, #0x10
	str r1, [sp, #4]
	lsl r1, r4, #0x10
	asr r1, r1, #0x10
	bl sub_02021D28
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021AA32C: .word 0x00003218
_021AA330: .word 0x021ACFF0
	thumb_func_end ovy186_21aa2fc

	thumb_func_start ovy186_21aa334
ovy186_21aa334: ; 0x021AA334
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #8]
	ldrh r1, [r5]
	mov r0, #0x15
	add r6, r2, #0
	bl GFL_StrBufCreate
	ldr r2, [r5, #0x2c]
	ldr r1, _021AA384 ; =0x00000696
	add r7, r0, #0
	add r1, r2, r1
	mov r2, #0x15
	bl sub_02048658
	mov r0, #0
	str r0, [sp]
	ldr r4, _021AA388 ; =0x00003220
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r1, #7
	add r2, r7, #0
	mov r3, #0
	bl sub_0202437C
	lsl r2, r6, #2
	ldr r0, [r5, r4]
	add r2, r5, r2
	add r4, #0x28
	ldr r1, [sp, #8]
	ldr r2, [r2, r4]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021AA384: .word 0x00000696
_021AA388: .word 0x00003220
	thumb_func_end ovy186_21aa334

	thumb_func_start ovy186_21aa38c
ovy186_21aa38c: ; 0x021AA38C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	mov ip, r2
	ldr r2, [r4, #0x28]
	ldr r6, _021AA734 ; =0x00003230
	str r2, [sp, #0x24]
	ldr r2, [r4, #0x2c]
	str r1, [sp, #0x18]
	str r2, [sp, #0x20]
	mov r2, ip
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0x40]
	ldr r7, [r4, r6]
	cmp r2, #0x17
	bls _021AA3AE
	b _021AA8E0
_021AA3AE:
	mov r2, ip
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021AA3BC: ; jump table
	.short _021AA3EC - _021AA3BC - 2 ; case 0
	.short _021AA424 - _021AA3BC - 2 ; case 1
	.short _021AA450 - _021AA3BC - 2 ; case 2
	.short _021AA466 - _021AA3BC - 2 ; case 3
	.short _021AA47C - _021AA3BC - 2 ; case 4
	.short _021AA492 - _021AA3BC - 2 ; case 5
	.short _021AA4E2 - _021AA3BC - 2 ; case 6
	.short _021AA51A - _021AA3BC - 2 ; case 7
	.short _021AA552 - _021AA3BC - 2 ; case 8
	.short _021AA58A - _021AA3BC - 2 ; case 9
	.short _021AA5C2 - _021AA3BC - 2 ; case 10
	.short _021AA5FA - _021AA3BC - 2 ; case 11
	.short _021AA632 - _021AA3BC - 2 ; case 12
	.short _021AA66A - _021AA3BC - 2 ; case 13
	.short _021AA6A2 - _021AA3BC - 2 ; case 14
	.short _021AA6DE - _021AA3BC - 2 ; case 15
	.short _021AA71A - _021AA3BC - 2 ; case 16
	.short _021AA760 - _021AA3BC - 2 ; case 17
	.short _021AA79A - _021AA3BC - 2 ; case 18
	.short _021AA7D6 - _021AA3BC - 2 ; case 19
	.short _021AA810 - _021AA3BC - 2 ; case 20
	.short _021AA82C - _021AA3BC - 2 ; case 21
	.short _021AA86C - _021AA3BC - 2 ; case 22
	.short _021AA8A8 - _021AA3BC - 2 ; case 23
_021AA3EC:
	add r6, #0x2c
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldrh r0, [r0, #0x28]
	mov r2, #0x60
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA424:
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	sub r6, #0xc
	ldr r0, [r4, r6]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r3, [r4, #0x28]
	add r0, r4, #0
	bl ovy186_21aade0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA450:
	add r6, #0x34
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA466:
	add r2, r3, #0
	str r2, [sp]
	str r7, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r2, #0xd8
	str r5, [sp, #0xc]
	bl ovy186_21aab38
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA47C:
	add r6, #0x38
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA492:
	ldr r2, [sp, #0x24]
	add r2, #0x33
	str r2, [sp, #0x24]
	ldrb r2, [r2]
	cmp r2, #0
	beq _021AA4B4
	add r2, r3, #0
	str r2, [sp]
	str r7, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r2, #0xd8
	str r5, [sp, #0xc]
	bl ovy186_21aabe8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA4B4:
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0x98
	sub r1, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r6, #0x98
	add r2, r0, #0
	ldr r0, [r4, r6]
	mov r3, #0xd8
	str r0, [sp]
	sub r2, r3, r2
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA4E2:
	add r6, #0x3c
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x38]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA51A:
	add r6, #0x40
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x3c]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA552:
	add r6, #0x44
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x40]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA58A:
	add r6, #0x48
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x44]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA5C2:
	add r6, #0x4c
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x4c]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA5FA:
	add r6, #0x50
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x50]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA632:
	add r6, #0x54
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x54]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA66A:
	add r6, #0x58
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	ldr r0, [r0, #0x58]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA6A2:
	add r6, #0x5c
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	add r0, #0x5c
	str r0, [sp, #0x24]
	ldrh r0, [r0]
	mov r2, #0xd8
	mov r3, #8
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA6DE:
	add r6, #0x60
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	add r0, #0x5e
	str r0, [sp, #0x24]
	ldrh r0, [r0]
	mov r2, #0xd8
	mov r3, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA71A:
	add r6, #0x70
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, _021AA738 ; =0x00000684
	b _021AA73C
	nop
_021AA734: .word 0x00003230
_021AA738: .word 0x00000684
_021AA73C:
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0xd8
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA760:
	add r6, #0x74
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, _021AA8E4 ; =0x00000688
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA79A:
	add r6, #0x64
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	add r0, #0x60
	str r0, [sp, #0x24]
	ldrh r0, [r0]
	mov r2, #0xd8
	mov r3, #8
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA7D6:
	add r6, #0x78
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, _021AA8E8 ; =0x0000068C
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r2, #0xd8
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA810:
	add r1, r7, #0
	mov r2, #0x19
	bl ovy186_21aa334
	str r7, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r1, r4, #0
	mov r2, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA82C:
	add r1, r7, #0
	mov r2, #0x1a
	bl ovy186_21aa334
	str r7, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r1, r4, #0
	mov r2, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, _021AA8EC ; =0x0000068A
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x18]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #8
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA86C:
	add r6, #0x68
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	add r0, #0x62
	str r0, [sp, #0x24]
	ldrh r0, [r0]
	mov r2, #0xd8
	mov r3, #8
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_021AA8A8:
	add r6, #0x6c
	ldr r0, [r4, r6]
	mov r2, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	str r5, [sp, #4]
	bl ovy186_21aa2fc
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	str r7, [sp, #4]
	add r0, #0x64
	str r0, [sp, #0x24]
	ldrh r0, [r0]
	mov r2, #0xd8
	mov r3, #8
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r5, [sp, #0x14]
	bl ovy186_21aaa54
_021AA8E0:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AA8E4: .word 0x00000688
_021AA8E8: .word 0x0000068C
_021AA8EC: .word 0x0000068A
	thumb_func_end ovy186_21aa38c

	thumb_func_start ovy186_21aa8f0
ovy186_21aa8f0: ; 0x021AA8F0
	push {r3, r4}
	ldr r3, _021AA908 ; =0x00003336
	ldrb r2, [r0, r3]
	add r4, r0, r2
	add r2, r3, #0
	sub r2, #0x18
	strb r1, [r4, r2]
	ldrb r1, [r0, r3]
	add r1, r1, #1
	strb r1, [r0, r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021AA908: .word 0x00003336
	thumb_func_end ovy186_21aa8f0

	thumb_func_start ovy186_21aa90c
ovy186_21aa90c: ; 0x021AA90C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_021AA916:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy186_21aa8f0
	add r4, r4, #1
	cmp r4, #0xd
	blt _021AA916
	ldr r0, [r6, #0x68]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021AA93C
	add r0, r5, #0
	mov r1, #0xe
	bl ovy186_21aa8f0
	add r0, r5, #0
	mov r1, #0xd
	bl ovy186_21aa8f0
_021AA93C:
	ldr r0, [r6, #0x68]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021AA94C
	add r0, r5, #0
	mov r1, #0xf
	bl ovy186_21aa8f0
_021AA94C:
	ldr r0, [r6, #0x68]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021AA95C
	add r0, r5, #0
	mov r1, #0x12
	bl ovy186_21aa8f0
_021AA95C:
	ldr r0, [r6, #0x68]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021AA96C
	add r0, r5, #0
	mov r1, #0x16
	bl ovy186_21aa8f0
_021AA96C:
	ldr r0, [r6, #0x68]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021AA97C
	add r0, r5, #0
	mov r1, #0x17
	bl ovy186_21aa8f0
_021AA97C:
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021AA990
	add r0, r5, #0
	mov r1, #0x10
	bl ovy186_21aa8f0
_021AA990:
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021AA9A4
	add r0, r5, #0
	mov r1, #0x11
	bl ovy186_21aa8f0
_021AA9A4:
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021AA9B8
	add r0, r5, #0
	mov r1, #0x13
	bl ovy186_21aa8f0
_021AA9B8:
	mov r0, #0x69
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021AA9D4
	add r0, r5, #0
	mov r1, #0x14
	bl ovy186_21aa8f0
	add r0, r5, #0
	mov r1, #0x15
	bl ovy186_21aa8f0
_021AA9D4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21aa90c

	thumb_func_start ovy186_21aa9d8
ovy186_21aa9d8: ; 0x021AA9D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r7, [r5, #0x1c]
	add r6, r1, #0
	add r0, r7, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #0xc]
	asr r0, r6, #3
	lsr r0, r0, #0x1c
	add r0, r6, r0
	asr r0, r0, #4
	neg r0, r0
	add r0, r5, r0
	str r0, [sp, #0x10]
_021AAA10:
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #8]
	add r3, r2, r4
	str r0, [sp]
	ldr r2, _021AAA50 ; =0x0000331E
	lsl r6, r4, #4
	ldrb r2, [r3, r2]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r3, r6
	bl ovy186_21aa38c
	add r4, r4, #1
	cmp r4, #5
	blt _021AAA10
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021AAA4C
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
_021AAA4C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AAA50: .word 0x0000331E
	thumb_func_end ovy186_21aa9d8

	thumb_func_start ovy186_21aaa54
ovy186_21aaa54: ; 0x021AAA54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	str r0, [sp]
	add r2, sp, #0x20
	str r1, [sp, #8]
	add r6, r3, #0
	ldrb r2, [r2, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x30]
	bl sub_02024A14
	ldr r1, _021AAAB0 ; =0x00003218
	ldr r0, [sp, #0x24]
	ldr r1, [r5, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	ldr r1, _021AAAB0 ; =0x00003218
	ldr r3, [sp, #0x24]
	ldr r1, [r5, r1]
	str r1, [sp]
	ldr r1, [sp, #0x34]
	lsl r2, r1, #1
	ldr r1, _021AAAB4 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	add r1, r7, r6
	sub r1, r4, r1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021AAAB0: .word 0x00003218
_021AAAB4: .word 0x021ACFF0
	thumb_func_end ovy186_21aaa54

	thumb_func_start ovy186_21aaab8
ovy186_21aaab8: ; 0x021AAAB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	str r3, [sp, #0xc]
	str r0, [sp]
	mov r0, #1
	add r6, r2, #0
	str r1, [sp, #8]
	str r0, [sp, #4]
	ldr r4, _021AAB30 ; =0x00003220
	add r3, sp, #0x28
	ldrb r3, [r3, #0xc]
	ldr r0, [r5, r4]
	ldr r2, [sp, #0x30]
	mov r1, #0
	bl StringSetNumber
	ldr r2, [sp, #0x3c]
	ldr r0, [r5, r4]
	lsl r2, r2, #2
	add r3, r5, r2
	add r2, r4, #0
	add r2, #0x94
	ldr r1, [sp, #0x2c]
	ldr r2, [r3, r2]
	bl GFL_WordSetFormatStrbuf
	add r1, r4, #0
	sub r1, #8
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	sub r4, #8
	ldr r1, [r5, r4]
	ldr r3, [sp, #0x2c]
	str r1, [sp]
	ldr r1, [sp, #0x40]
	lsl r2, r1, #1
	ldr r1, _021AAB34 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x28]
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	add r1, r7, r1
	sub r1, r6, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAB30: .word 0x00003220
_021AAB34: .word 0x021ACFF0
	thumb_func_end ovy186_21aaab8

	thumb_func_start ovy186_21aab38
ovy186_21aab38: ; 0x021AAB38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	mov r7, #1
	str r0, [sp]
	str r7, [sp, #4]
	add r6, r2, #0
	ldr r2, [r5, #0x28]
	ldr r4, _021AABE0 ; =0x00003220
	add r2, #0x2f
	str r3, [sp, #0xc]
	ldrb r3, [r2]
	mov r2, #0x7d
	lsl r2, r2, #4
	str r1, [sp, #8]
	add r2, r3, r2
	ldr r0, [r5, r4]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [sp, #0x30]
	mov r1, #1
	str r0, [sp]
	str r7, [sp, #4]
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	add r2, #0x30
	ldrb r2, [r2]
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x30]
	mov r1, #2
	str r0, [sp]
	str r7, [sp, #4]
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	add r2, #0x31
	ldrb r2, [r2]
	mov r3, #2
	bl StringSetNumber
	add r2, r4, #0
	add r2, #0x9c
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x2c]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r1, r4, #0
	sub r1, #8
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	sub r4, #8
	ldr r1, [r5, r4]
	ldr r3, [sp, #0x2c]
	str r1, [sp]
	ldr r1, [sp, #0x34]
	lsl r2, r1, #1
	ldr r1, _021AABE4 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x28]
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	add r1, r7, r1
	sub r1, r6, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AABE0: .word 0x00003220
_021AABE4: .word 0x021ACFF0
	thumb_func_end ovy186_21aab38

	thumb_func_start ovy186_21aabe8
ovy186_21aabe8: ; 0x021AABE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	mov r6, #1
	str r0, [sp]
	str r6, [sp, #4]
	add r7, r2, #0
	ldr r2, [r5, #0x28]
	ldr r4, _021AACB8 ; =0x00003220
	add r2, #0x32
	str r3, [sp, #0xc]
	ldrb r3, [r2]
	mov r2, #0x7d
	lsl r2, r2, #4
	str r1, [sp, #8]
	add r2, r3, r2
	ldr r0, [r5, r4]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [sp, #0x30]
	mov r1, #1
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	add r2, #0x33
	ldrb r2, [r2]
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0x30]
	mov r1, #2
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	add r2, #0x34
	ldrb r2, [r2]
	mov r3, #2
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	ldrh r2, [r2, #0x2c]
	mov r1, #3
	mov r3, #2
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x28]
	ldr r0, [r5, r4]
	add r2, #0x35
	ldrb r2, [r2]
	mov r1, #4
	mov r3, #2
	bl StringSetNumber
	add r2, r4, #0
	add r2, #0xa0
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x2c]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r1, r4, #0
	sub r1, #8
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r6, r0, #0
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	sub r4, #8
	ldr r1, [r5, r4]
	ldr r3, [sp, #0x2c]
	str r1, [sp]
	ldr r1, [sp, #0x34]
	lsl r2, r1, #1
	ldr r1, _021AACBC ; =0x021ACFF0
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x28]
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	add r1, r6, r1
	sub r1, r7, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AACB8: .word 0x00003220
_021AACBC: .word 0x021ACFF0
	thumb_func_end ovy186_21aabe8

	thumb_func_start ovy186_21aacc0
ovy186_21aacc0: ; 0x021AACC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	ldr r4, _021AAD30 ; =0x00003220
	str r0, [sp]
	mov r0, #1
	add r6, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r7, r3, #0
	ldr r0, [r5, r4]
	ldr r2, [sp, #0x30]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	add r2, r4, #0
	add r2, #0xa4
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x2c]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r1, r4, #0
	sub r1, #8
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	sub r4, #8
	ldr r1, [r5, r4]
	ldr r3, [sp, #0x2c]
	str r1, [sp]
	ldr r1, [sp, #0x38]
	lsl r2, r1, #1
	ldr r1, _021AAD34 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x28]
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	add r1, r1, r7
	sub r1, r6, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AAD30: .word 0x00003220
_021AAD34: .word 0x021ACFF0
	thumb_func_end ovy186_21aacc0

	thumb_func_start ovy186_21aad38
ovy186_21aad38: ; 0x021AAD38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	str r0, [sp]
	add r2, sp, #0x20
	str r1, [sp, #8]
	add r6, r3, #0
	ldrb r2, [r2, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r3, [sp, #0x30]
	bl sub_02024A14
	ldr r1, _021AAD94 ; =0x00003218
	ldr r0, [sp, #0x24]
	ldr r1, [r5, r1]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	ldr r0, [sp, #8]
	bl BmpWin_GetBitmap
	ldr r1, _021AAD94 ; =0x00003218
	ldr r3, [sp, #0x24]
	ldr r1, [r5, r1]
	str r1, [sp]
	ldr r1, [sp, #0x3c]
	lsl r2, r1, #1
	ldr r1, _021AAD98 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	add r1, r7, r6
	sub r1, r4, r1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021AAD94: .word 0x00003218
_021AAD98: .word 0x021ACFF0
	thumb_func_end ovy186_21aad38

	thumb_func_start ovy186_21aad9c
ovy186_21aad9c: ; 0x021AAD9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	add r5, r0, #0
	ldr r1, _021AADDC ; =0x00003218
	add r4, r2, #0
	ldr r0, [sp, #0x24]
	ldr r1, [r5, r1]
	mov r2, #0
	add r6, r3, #0
	bl GFL_FontGetBlockWidth
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl BmpWin_GetBitmap
	ldr r1, _021AADDC ; =0x00003218
	ldr r2, [sp, #0x20]
	ldr r1, [r5, r1]
	lsl r2, r2, #0x10
	str r1, [sp]
	add r1, r7, r6
	sub r1, r4, r1
	lsl r1, r1, #0x10
	ldr r3, [sp, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AADDC: .word 0x00003218
	thumb_func_end ovy186_21aad9c

	thumb_func_start ovy186_21aade0
ovy186_21aade0: ; 0x021AADE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r2, #0
	add r2, r3, #0
	ldr r2, [r2, #0x1c]
	add r6, r0, #0
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	ldr r7, [sp, #0x40]
	ldr r4, [sp, #0x44]
	cmp r2, #0
	bne _021AAE6A
	add r2, r3, #0
	add r2, #0x2e
	ldrb r2, [r2]
	str r5, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r2, #0xd0
	str r2, [sp, #0x14]
	mov r2, #0x10
	str r2, [sp, #0x18]
	mov r2, #0xd8
	mov r3, #0
	str r4, [sp, #0x1c]
	bl ovy186_21aad38
	ldr r0, [sp, #0x24]
	str r5, [sp]
	ldrh r0, [r0, #0x2a]
	str r7, [sp, #4]
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0xad
	str r0, [sp, #0x14]
	mov r0, #0x1b
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r2, #0xd8
	mov r3, #0x13
	str r4, [sp, #0x1c]
	bl ovy186_21aad38
	ldr r0, [sp, #0x20]
	bl BmpWin_GetBitmap
	ldr r3, _021AAEF0 ; =0x00003218
	lsl r2, r4, #1
	ldr r1, [r6, r3]
	add r3, #0x10
	str r1, [sp]
	ldr r1, _021AAEF4 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	lsl r2, r5, #0x10
	asr r2, r2, #0x10
	str r1, [sp, #4]
	ldr r3, [r6, r3]
	mov r1, #0xc6
	bl sub_02021D28
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_021AAE6A:
	add r0, r2, #0
	bl sub_02008CEC
	ldr r1, _021AAEF8 ; =0x000003E7
	str r0, [sp, #0x28]
	cmp r0, r1
	ble _021AAE7A
	str r1, [sp, #0x28]
_021AAE7A:
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0x1c]
	bl sub_02008CF0
	str r5, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xd0
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r4, [sp, #0x1c]
	add r0, r6, #0
	mov r2, #0xd8
	mov r3, #0
	bl ovy186_21aad38
	str r5, [sp]
	ldr r0, [sp, #0x28]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0xad
	str r0, [sp, #0x14]
	mov r0, #0x1b
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	add r0, r6, #0
	mov r2, #0xd8
	mov r3, #0x13
	str r4, [sp, #0x1c]
	bl ovy186_21aad38
	ldr r0, [sp, #0x20]
	bl BmpWin_GetBitmap
	ldr r3, _021AAEF0 ; =0x00003218
	lsl r2, r4, #1
	ldr r1, [r6, r3]
	add r3, #0x10
	str r1, [sp]
	ldr r1, _021AAEF4 ; =0x021ACFF0
	ldrh r1, [r1, r2]
	lsl r2, r5, #0x10
	asr r2, r2, #0x10
	str r1, [sp, #4]
	ldr r3, [r6, r3]
	mov r1, #0xc6
	bl sub_02021D28
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AAEF0: .word 0x00003218
_021AAEF4: .word 0x021ACFF0
_021AAEF8: .word 0x000003E7
	thumb_func_end ovy186_21aade0

	thumb_func_start sub_021AAEFC
sub_021AAEFC: ; 0x021AAEFC
	bx lr
	.align 2, 0
	thumb_func_end sub_021AAEFC

	thumb_func_start ovy186_21aaf00
ovy186_21aaf00: ; 0x021AAF00
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	ldrh r1, [r5]
	mov r0, #0x27
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	ldrh r2, [r5]
	ldr r0, _021AAFEC ; =0x02093F08
	add r1, r6, #0
	bl Oam_CreateSystem
	ldrh r2, [r5]
	mov r0, #0x23
	mov r1, #0
	mov r6, #0
	bl sub_0204BF1C
	str r0, [r5, #4]
	str r6, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0x22
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x35
	mov r2, #0x37
	bl Oam_LoadNCERFile
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1]
	add r0, r4, #0
	bl GFL_ArcToolFree
	bl GetDefaultUINarcIdx
	ldrh r1, [r5]
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	bl sub_0202D810
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0xa0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BBA0
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	bl Oam_LoadNCGRFile
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	mov r0, #0
	bl sub_0202D818
	add r6, r0, #0
	mov r0, #0
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl Oam_LoadNCERFile
	add r5, #0xe4
	str r0, [r5]
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021AAFEC: .word 0x02093F08
	thumb_func_end ovy186_21aaf00

	thumb_func_start ovy186_21aaff0
ovy186_21aaff0: ; 0x021AAFF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xbc
	ldr r5, _021AB0AC ; =0x021AD02C
	add r4, r0, #0
	add r3, sp, #0x14
	mov r2, #0x15
_021AAFFC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021AAFFC
	mov r7, #0
_021AB006:
	mov r0, #0xc
	add r1, r7, #0
	mul r1, r0
	add r0, sp, #0x14
	add r3, r0, r1
	ldrh r1, [r0, r1]
	add r0, sp, #0xc
	lsl r5, r7, #2
	strh r1, [r0]
	ldrh r1, [r3, #2]
	strh r1, [r0, #2]
	ldr r1, [r3, #8]
	strh r1, [r0, #4]
	ldrb r1, [r3, #7]
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0xc
	str r0, [sp, #8]
	ldrb r2, [r3, #5]
	ldrb r6, [r3, #4]
	ldr r0, [r4, #4]
	mul r1, r2
	mov r2, #0xc
	mul r2, r6
	ldrb r6, [r3, #6]
	mov r3, #0xc
	add r1, r4, r1
	mul r3, r6
	add r2, r4, r2
	add r3, r4, r3
	add r1, #0xd0
	add r2, #0xd4
	add r3, #0xd8
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	add r1, r4, r5
	add r1, #0x98
	str r0, [r1]
	add r0, r4, r5
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, r5
	add r0, #0x98
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl sub_0204C53C
	add r0, r4, r5
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C520
	cmp r7, #3
	bne _021AB096
	add r0, r4, r5
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
_021AB096:
	add r7, r7, #1
	cmp r7, #0xe
	blt _021AB006
	add r4, #0xac
	ldr r0, [r4]
	mov r1, #0
	bl sub_0204C124
	add sp, #0xbc
	pop {r4, r5, r6, r7, pc}
	nop
_021AB0AC: .word 0x021AD02C
	thumb_func_end ovy186_21aaff0

	thumb_func_start ovy186_21ab0b0
ovy186_21ab0b0: ; 0x021AB0B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #0xc
_021AB0B8:
	add r6, r4, #0
	mul r6, r7
	add r0, r5, r6
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r5, r6
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r5, r6
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021AB0B8
	ldr r0, [r5, #4]
	bl sub_0204BF98
	bl sub_0204B758
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021AB100 ; =0xFFCFFFEF
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AB100: .word 0xFFCFFFEF
	thumb_func_end ovy186_21ab0b0

	thumb_func_start ovy186_21ab104
ovy186_21ab104: ; 0x021AB104
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0x98
	ldr r0, [r5, r4]
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204C488
	ldr r0, [r5, r4]
	bl sub_0204C56C
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy186_21ab104

	thumb_func_start ovy186_21ab128
ovy186_21ab128: ; 0x021AB128
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r3, [sp]
	lsl r5, r1, #2
	add r4, #0x98
	ldr r0, [r4, r5]
	add r6, r2, #0
	bl sub_0204C4A0
	add r7, r0, #0
	ldr r0, [r4, r5]
	ldr r1, [sp]
	bl sub_0204C124
	cmp r7, r6
	beq _021AB162
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl sub_0204C488
	ldr r0, [r4, r5]
	bl sub_0204C56C
	add r1, sp, #0x18
	ldrb r1, [r1]
	ldr r0, [r4, r5]
	mov r2, #0
	bl sub_0204C378
_021AB162:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy186_21ab128

	thumb_func_start sub_021AB164
sub_021AB164: ; 0x021AB164
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x98
	ldr r0, [r0]
	ldr r3, _021AB174 ; =sub_0204C124
	add r1, r2, #0
	bx r3
	nop
_021AB174: .word sub_0204C124
	thumb_func_end sub_021AB164

	thumb_func_start ovy186_21ab178
ovy186_21ab178: ; 0x021AB178
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021AB21C ; =0x00000093
	add r5, r2, #0
	bl sub_0203CE0C
	mov r2, #0xa
	mov r0, #1
	mov r1, #0x27
	lsl r2, r2, #0xe
	mov r6, #1
	mov r7, #0x27
	bl GFL_HeapCreateChild
	mov r1, #0xd1
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x27
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r2, #0xd1
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	blx MIi_CpuClearFast
	add r0, r4, #0
	add r1, r5, #0
	bl ovy186_21ab338
	bl ovy186_21ab4f0
	add r0, r4, #0
	bl ovy186_21ab514
	add r0, r4, #0
	bl ovy186_21ab5d4
	add r0, r4, #0
	bl ovy186_21ab7e0
	add r0, r4, #0
	bl ovy186_21ab8c8
	add r0, r4, #0
	bl ovy186_21ab988
	add r0, r4, #0
	bl ovy186_21aba38
	add r0, r4, #0
	bl ovy186_21abb7c
	add r0, r4, #0
	bl ovy186_21abbf8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ovy186_21ac3a4
	mov r0, #1
	mov r1, #0x27
	bl sub_02042BA8
	mov r0, #6
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	bl GFL_FadeScreenSet
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021AB21C: .word 0x00000093
	thumb_func_end ovy186_21ab178

	thumb_func_start ovy186_21ab220
ovy186_21ab220: ; 0x021AB220
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ovy186_21abc64
	cmp r0, #0
	bne _021AB232
	mov r0, #1
	pop {r4, pc}
_021AB232:
	add r0, r4, #0
	bl ovy186_21abb14
	add r0, r4, #0
	bl ovy186_21abc34
	bl sub_0204B794
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r2, r1, #1
	add r1, r0, #0
	sub r1, #0x9c
	str r2, [r4, r0]
	cmp r2, r1
	blt _021AB258
	mov r1, #0
	str r1, [r4, r0]
_021AB258:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy186_21ab220

	thumb_func_start ovy186_21ab25c
ovy186_21ab25c: ; 0x021AB25C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy186_21abc20
	add r0, r4, #0
	bl ovy186_21abbb0
	add r0, r4, #0
	bl ovy186_21abae0
	add r0, r4, #0
	bl ovy186_21aba24
	add r0, r4, #0
	bl ovy186_21ab93c
	add r0, r4, #0
	bl sub_021AB7D0
	add r0, r4, #0
	bl ovy186_21ab5a0
	add r0, r4, #0
	bl ovy186_21ab4ac
	add r0, r4, #0
	bl ovy186_21ac3e0
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x27
	bl sub_0203A2BC
	mov r0, #0x27
	bl sub_0203A1D0
	ldr r0, _021AB2B4 ; =0x00000093
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AB2B4: .word 0x00000093
	thumb_func_end ovy186_21ab25c

	thumb_func_start ovy186_21ab2b8
ovy186_21ab2b8: ; 0x021AB2B8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x67
	add r5, r1, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r7, #3
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	neg r6, r0
	mov r0, #3
	mov r1, #0
	add r2, r6, #0
	bl sub_02044CFC
	mov r0, #3
	mov r1, #3
	add r2, r6, #0
	bl sub_02044CFC
	add r0, r4, #0
	add r0, #0x38
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _021AB32C
	add r2, r4, #0
	add r2, #0x44
	ldrsh r2, [r5, r2]
	mov r0, #7
	add r1, r7, #0
	bl sub_02044CFC
	add r2, r4, #0
	add r2, #0x44
	ldrsh r2, [r5, r2]
	mov r0, #4
	add r1, r7, #0
	bl sub_02044CFC
	add r0, r4, #0
	add r0, #0x38
	ldr r1, [r5, r0]
	mov r0, #2
	tst r0, r1
	beq _021AB32C
	add r0, r4, #0
	add r0, #0x38
	ldr r1, [r5, r0]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	add r0, #0x38
	str r1, [r5, r0]
	mov r0, #2
	bic r1, r0
	add r4, #0x38
	str r1, [r5, r4]
_021AB32C:
	bl sub_0204B7C8
	bl sub_02045A5C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21ab2b8

	thumb_func_start ovy186_21ab338
ovy186_21ab338: ; 0x021AB338
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x62
	lsl r6, r6, #2
	add r5, r0, #0
	add r0, r6, #0
	str r1, [r5, r6]
	mov r4, #0
	add r0, #8
	str r4, [r5, r0]
	mov r0, #0x27
	mov r1, #0x27
	bl GFL_ArcSysCreateFileHandle
	sub r6, #0xd
	str r0, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	mov r3, #0x27
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x20]
_021AB364:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl sub_0204898C
	str r0, [r6, #0x2c]
	bl sub_020486F0
	add r4, r4, #1
	cmp r4, #7
	blt _021AB364
	mov r0, #0x68
	mov r1, #0x27
	bl GFL_StrBufCreate
	str r0, [r5, #0x28]
	mov r0, #8
	mov r1, #0x40
	mov r2, #0x27
	bl sub_020241E4
	mov r1, #6
	str r0, [r5, #0x24]
	ldr r7, _021AB49C ; =0x00000302
	ldr r3, _021AB4A0 ; =0x021ADA4C
	mov r0, #0x27
	lsl r1, r1, #8
	mov r2, #0
	str r7, [sp]
	mov r4, #0
	bl GFL_HeapAllocate
	add r1, r7, #0
	sub r1, #0xca
	mov r2, #6
	str r0, [r5, r1]
	mov r1, #0
	lsl r2, r2, #8
	blx MI_CpuFill8
	ldr r0, _021AB4A4 ; =ovy186_21ab2b8
	add r1, r5, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	mov r6, #0x5d
	lsl r6, r6, #2
	add r1, r6, #0
	str r0, [r5, r6]
	add r1, #0x24
	mov r0, #8
	str r0, [r5, r1]
	add r0, r6, #0
	sub r1, r4, #1
	add r0, #0x50
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy186_21ac2d4
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl sub_020179BC
	mov r1, #6
	lsl r1, r1, #8
	lsr r1, r1, #1
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy186_21ac428
	add r0, r6, #0
	add r0, #0x58
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x5c
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x60
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x64
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x68
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x6c
	strh r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x6e
	strh r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x70
	strh r4, [r5, r0]
	add r0, r6, #0
	add r0, #0xbc
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0xc0
	str r4, [r5, r0]
	sub r7, #0x6e
	str r4, [r5, r7]
	add r0, r4, #0
	add r6, #0x74
_021AB43A:
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #2
	blt _021AB43A
	mov r2, #0x7d
	mov r1, #0
	lsl r2, r2, #2
_021AB44C:
	lsl r3, r0, #4
	add r3, r5, r3
	add r0, r0, #1
	strh r1, [r3, r2]
	cmp r0, #4
	blt _021AB44C
	mov r0, #0x9e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r2, r0, #4
	str r1, [r5, r2]
	add r2, r0, #0
	add r2, #8
	str r1, [r5, r2]
	add r2, r0, #0
	ldr r3, _021AB4A8 ; =0xFFFFF000
	sub r2, #0x3c
	str r3, [r5, r2]
	add r2, r0, #0
	sub r2, #0x38
	str r1, [r5, r2]
	add r2, r0, #0
	sub r2, #0x34
	str r1, [r5, r2]
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	sub r1, #0x30
	str r2, [r5, r1]
	add r1, r0, #0
	sub r1, #0x2c
	str r2, [r5, r1]
	add r1, r0, #0
	sub r0, #0x24
	sub r1, #0x28
	add r0, r5, r0
	str r2, [r5, r1]
	blx MTX_Identity33_
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AB49C: .word 0x00000302
_021AB4A0: .word 0x021ADA4C
_021AB4A4: .word ovy186_21ab2b8
_021AB4A8: .word 0xFFFFF000
	thumb_func_end ovy186_21ab338

	thumb_func_start ovy186_21ab4ac
ovy186_21ab4ac: ; 0x021AB4AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021AB4B2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x2c]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #7
	blt _021AB4B2
	ldr r0, [r5, #0x28]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x24]
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x20]
	bl GFL_MsgDataFree
	mov r4, #0x5d
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_TCBRemove
	ldr r0, [r5]
	bl GFL_ArcToolFree
	add r4, #0xc4
	ldr r0, [r5, r4]
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy186_21ab4ac

	thumb_func_start ovy186_21ab4f0
ovy186_21ab4f0: ; 0x021AB4F0
	push {r3, lr}
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _021AB50C ; =0x021AD240
	bl GFL_BGSysSetVRAMBanks
	ldr r2, _021AB510 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	pop {r3, pc}
	nop
_021AB50C: .word 0x021AD240
_021AB510: .word 0x04000304
	thumb_func_end ovy186_21ab4f0

	thumb_func_start ovy186_21ab514
ovy186_21ab514: ; 0x021AB514
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xf0
	mov r0, #0x27
	bl GFL_BGSysCreate
	ldr r4, _021AB58C ; =0x021AD294
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl GFL_BGSysSetLCDConfig
	ldr r4, _021AB590 ; =0x021AD398
	add r3, sp, #0x10
	mov r2, #0x1c
_021AB538:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021AB538
	mov r4, #0
	ldr r7, _021AB594 ; =0x021AD1BC
	add r6, r4, #0
_021AB546:
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
	mov r3, #0x27
	bl sub_020450CC
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	blo _021AB546
	ldr r0, _021AB598 ; =0x04001050
	strh r6, [r0]
	ldr r0, _021AB59C ; =0x04000050
	strh r6, [r0]
	add sp, #0xf0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AB58C: .word 0x021AD294
_021AB590: .word 0x021AD398
_021AB594: .word 0x021AD1BC
_021AB598: .word 0x04001050
_021AB59C: .word 0x04000050
	thumb_func_end ovy186_21ab514

	thumb_func_start ovy186_21ab5a0
ovy186_21ab5a0: ; 0x021AB5A0
	push {r3, r4, r5, lr}
	ldr r4, _021AB5C8 ; =0x021AD1BC
	mov r5, #0
_021AB5A6:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blo _021AB5A6
	bl sub_02044528
	ldr r0, _021AB5CC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021AB5D0 ; =0x04001050
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AB5C8: .word 0x021AD1BC
_021AB5CC: .word 0x04000050
_021AB5D0: .word 0x04001050
	thumb_func_end ovy186_21ab5a0

	thumb_func_start ovy186_21ab5d4
ovy186_21ab5d4: ; 0x021AB5D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	ldr r5, [r6]
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	mov r4, #0x27
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1d
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1e
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x29
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	mov r1, #0x26
	str r7, [sp, #4]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0x26
	mov r2, #6
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	add r0, #0xda
	str r0, [sp, #0xc]
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	mov r2, #4
	str r4, [sp, #8]
	bl GFL_G2DIOLoadArcNCLR
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r0, [sp]
	add r0, r5, #0
	mov r2, #4
	add r3, r7, #0
	str r4, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	bl GetDefaultUINarcIdx
	add r1, r4, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x10]
	bl sub_0202D824
	str r7, [sp]
	add r1, r0, #0
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	str r4, [sp, #8]
	mov r2, #5
	add r3, r7, #0
	bl sub_0204ADA8
	bl sub_0202D828
	add r1, r0, #0
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r2, #5
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r2, #4
	add r3, r7, #0
	str r4, [sp, #8]
	bl GFL_G2DIOLoadArcNCLR
	mov r0, #3
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #5
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #5
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0x1e
	lsl r3, r3, #4
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	str r4, [sp, #4]
	str r3, [sp, #0x14]
	bl GFL_BGSysLoadNCLRDefault
	mov r0, #0x20
	str r0, [sp]
	ldr r3, [sp, #0x14]
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r2, r7, #0
	bl GFL_BGSysLoadNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #7
	add r3, r7, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #0x2a
	mov r2, #7
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x40
	str r0, [sp]
	mov r3, #0x1a
	lsl r3, r3, #4
	add r0, r5, #0
	mov r1, #7
	mov r2, #4
	str r4, [sp, #4]
	str r3, [sp, #0x18]
	bl GFL_G2DIOLoadArcNCLRDefault
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #7
	add r1, r7, #0
	add r2, r7, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #7
	bl GFL_BGSysLoadScr
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r2, #0x94
	add r1, r7, #0
	add r2, r6, r2
	add r3, r4, #0
	bl sub_0204B37C
	ldr r1, [sp, #0x18]
	add r2, sp, #0x1c
	add r1, #0x90
	str r0, [r6, r1]
	add r0, r4, #0
	mov r1, #7
	add r3, r4, #0
	bl sub_0204B354
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r4, [r0, #0xc]
	add r1, #0xf8
	str r1, [sp, #0x18]
	add r0, r4, #0
	add r1, r6, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	mov r1, #0xae
	add r4, #0x20
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r5, #0
	bl GFL_HeapFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21ab5d4

	thumb_func_start sub_021AB7D0
sub_021AB7D0: ; 0x021AB7D0
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021AB7DC ; =GFL_HeapFree
	bx r3
	nop
_021AB7DC: .word GFL_HeapFree
	thumb_func_end sub_021AB7D0

	thumb_func_start ovy186_21ab7e0
ovy186_21ab7e0: ; 0x021AB7E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl GetDefaultUINarcIdx
	mov r1, #0x27
	mov r7, #0x27
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	ldr r0, _021AB8C0 ; =0x02093F08
	ldr r1, _021AB8C4 ; =0x021AD240
	mov r2, #0x27
	bl Oam_CreateSystem
	mov r0, #0x2c
	mov r1, #1
	mov r2, #0x27
	bl sub_0204BF1C
	str r0, [r4, #0x48]
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	str r7, [sp]
	ldr r0, [r4]
	mov r5, #0x1f
	mov r1, #0x1f
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r5, #0xe1
	str r0, [r4, r5]
	str r7, [sp]
	ldr r0, [r4]
	mov r1, #4
	mov r2, #1
	mov r3, #0
	bl sub_0204BBA0
	add r1, r4, #0
	add r1, #0xfc
	str r0, [r1]
	ldr r0, [r4]
	mov r1, #0x34
	mov r2, #0x36
	mov r3, #0x27
	mov r5, #0x36
	bl Oam_LoadNCERFile
	mov r1, #0x36
	add r1, #0xce
	str r0, [r4, r1]
	bl sub_0202D814
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #1
	str r7, [sp]
	bl Oam_LoadNCGRFile
	mov r1, #0x36
	add r1, #0xd6
	str r0, [r4, r1]
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r3, #0x2c
	add r0, r6, #0
	mov r2, #1
	lsl r3, r3, #3
	str r7, [sp, #8]
	bl Oam_LoadNCLRFile
	mov r1, #0x36
	add r1, #0xd2
	str r0, [r4, r1]
	mov r0, #0
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #0
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0x27
	bl Oam_LoadNCERFile
	add r5, #0xda
	str r0, [r4, r5]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r0, r4, #0
	mov r1, #0
	bl ovy186_21acc24
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AB8C0: .word 0x02093F08
_021AB8C4: .word 0x021AD240
	thumb_func_end ovy186_21ab7e0

	thumb_func_start ovy186_21ab8c8
ovy186_21ab8c8: ; 0x021AB8C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r4, #0
	add r6, sp, #0xc
_021AB8D2:
	ldr r0, _021AB938 ; =0x021AD478
	lsl r1, r4, #5
	add r3, r0, r1
	ldr r0, [r0, r1]
	ldr r1, [r3, #0xc]
	strh r0, [r6]
	ldr r0, [r3, #4]
	ldr r2, [r3, #0x10]
	strh r0, [r6, #2]
	ldr r0, [r3, #8]
	lsl r1, r1, #2
	strh r0, [r6, #4]
	ldr r0, [r3, #0x18]
	lsl r2, r2, #2
	strb r0, [r6, #7]
	mov r0, #0x2c
	sub r0, r0, r4
	strb r0, [r6, #6]
	lsl r0, r4, #2
	add r7, r5, r0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [r3, #0x1c]
	ldr r3, [r3, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r3, r3, #2
	str r0, [sp, #4]
	mov r0, #0x27
	add r1, r5, r1
	add r2, r5, r2
	add r3, r5, r3
	str r0, [sp, #8]
	add r1, #0xfc
	add r2, #0xfc
	add r3, #0xfc
	ldr r0, [r5, #0x48]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r7, #0x4c]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #0x2c
	blt _021AB8D2
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AB938: .word 0x021AD478
	thumb_func_end ovy186_21ab8c8

	thumb_func_start ovy186_21ab93c
ovy186_21ab93c: ; 0x021AB93C
	push {r3, r4, r5, lr}
	mov r4, #0x43
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
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_0204BCD0
	sub r4, #8
	ldr r0, [r5, r4]
	bl sub_0204BE64
	add r0, r5, #0
	bl ovy186_21acca4
	ldr r0, [r5, #0x48]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	thumb_func_end ovy186_21ab93c

	thumb_func_start ovy186_21ab988
ovy186_21ab988: ; 0x021AB988
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x27
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	mov r4, #1
	bl sub_02048D28
	ldr r0, _021ABA10 ; =0x021AD0E0
	mov r1, #0x27
	bl sub_0204A6F0
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	bl sub_0204A744
	ldr r5, _021ABA14 ; =0x021AD2A4
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _021ABA18 ; =0x0209497C
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x10]
	mov r0, #0x1a
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x14]
	add r0, r2, #0
	bl sub_02048FBC
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	ldr r2, _021ABA1C ; =0x04000008
	mov r0, #3
	ldrh r1, [r2]
	bic r1, r0
	add r0, r1, #0
	orr r0, r4
	strh r0, [r2]
	add r2, #0x58
	ldrh r1, [r2]
	ldr r0, _021ABA20 ; =0xFFFFCFFF
	and r1, r0
	mov r0, #8
	orr r0, r1
	strh r0, [r2]
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021ABA10: .word 0x021AD0E0
_021ABA14: .word 0x021AD2A4
_021ABA18: .word 0x0209497C
_021ABA1C: .word 0x04000008
_021ABA20: .word 0xFFFFCFFF
	thumb_func_end ovy186_21ab988

	thumb_func_start ovy186_21aba24
ovy186_21aba24: ; 0x021ABA24
	push {r3, lr}
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl sub_0204A73C
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy186_21aba24

	thumb_func_start ovy186_21aba38
ovy186_21aba38: ; 0x021ABA38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #0xa
	mov r1, #0xa
	mov r2, #0x27
	bl sub_02049D24
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r7, _021ABACC ; =0x021AD318
	str r0, [r5, r1]
	mov r4, #0
	add r6, r5, r1
_021ABA54:
	lsl r1, r4, #4
	ldr r0, [r6]
	add r1, r7, r1
	bl sub_02049E00
	lsl r1, r4, #1
	add r2, r5, r1
	mov r1, #0xa1
	lsl r1, r1, #2
	add r4, r4, #1
	strh r0, [r2, r1]
	cmp r4, #8
	blt _021ABA54
	ldr r3, _021ABAD0 ; =0x021AD27C
	add r2, sp, #0x38
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021ABAD4 ; =0x021AD270
	str r0, [r2]
	add r2, sp, #0x20
	mov r4, #0
	add r0, sp, #0x2c
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021ABAD8 ; =0x02094A3C
	str r0, [r2]
	mov r0, #1
	mov r1, #0xc
	mov r2, #0xe
	str r4, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	add r0, sp, #0x2c
	str r0, [sp, #0x18]
	mov r0, #0x27
	str r0, [sp, #0x1c]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021ABADC ; =0x00001555
	mov r0, #0
	bl sub_0204A5C8
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021ABACC: .word 0x021AD318
_021ABAD0: .word 0x021AD27C
_021ABAD4: .word 0x021AD270
_021ABAD8: .word 0x02094A3C
_021ABADC: .word 0x00001555
	thumb_func_end ovy186_21aba38

	thumb_func_start ovy186_21abae0
ovy186_21abae0: ; 0x021ABAE0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x61
	add r6, r0, #0
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	bl sub_0204A630
	mov r7, #0xa1
	mov r5, #0
	sub r4, #0xc
	lsl r7, r7, #2
_021ABAF6:
	lsl r1, r5, #1
	add r1, r6, r1
	ldrh r1, [r1, r7]
	ldr r0, [r6, r4]
	bl sub_02049F4C
	add r5, r5, #1
	cmp r5, #8
	blt _021ABAF6
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02049DDC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy186_21abae0

	thumb_func_start ovy186_21abb14
ovy186_21abb14: ; 0x021ABB14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021ACA70
	mov r4, #0x61
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204A638
	bl sub_02049A98
	bl sub_02049AF0
	add r1, r4, #0
	add r1, #0x54
	ldr r1, [r5, r1]
	mov r6, #0xa1
	lsl r1, r1, #1
	add r0, r4, #0
	sub r0, #0xc
	add r1, r5, r1
	lsl r6, r6, #2
	ldrh r1, [r1, r6]
	ldr r0, [r5, r0]
	bl sub_0204A5A8
	sub r4, #0xc
	add r1, r0, #0
	ldr r0, [r5, r4]
	bl sub_0204A5C0
	add r1, r6, #0
	sub r1, #0xb0
	ldr r2, [r5, r1]
	mov r1, #4
	tst r1, r2
	beq _021ABB66
	sub r6, #0x48
	add r1, r5, r6
	bl sub_02049B5C
_021ABB66:
	bl sub_02049AA0
	ldr r0, _021ABB78 ; =ovy186_21ada60
	ldr r2, [r0, #4]
	ldr r1, [r0]
	add r1, r2, r1
	str r1, [r0, #4]
	pop {r4, r5, r6, pc}
	nop
_021ABB78: .word 0x021ada60
	thumb_func_end ovy186_21abb14

	thumb_func_start ovy186_21abb7c
ovy186_21abb7c: ; 0x021ABB7C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x27
	bl BmpWin_InitAllocator
	mov r0, #9
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #4
	mov r2, #1
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r4, #8]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy186_21abb7c

	thumb_func_start ovy186_21abbb0
ovy186_21abbb0: ; 0x021ABBB0
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_02048210
	bl sub_020480A8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy186_21abbb0

	thumb_func_start ovy186_21abbc0
ovy186_21abbc0: ; 0x021ABBC0
	push {r4, lr}
	add r4, r1, #0
	lsl r1, r4, #0x18
	mov r0, #7
	lsr r1, r1, #0x18
	bl sub_02044C98
	lsl r1, r4, #0x18
	mov r0, #4
	lsr r1, r1, #0x18
	bl sub_02044C98
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy186_21abbc0

	thumb_func_start ovy186_21abbdc
ovy186_21abbdc: ; 0x021ABBDC
	push {r4, lr}
	ldr r4, [r0, #8]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	pop {r4, pc}
	thumb_func_end ovy186_21abbdc

	thumb_func_start ovy186_21abbf8
ovy186_21abbf8: ; 0x021ABBF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x27
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl GFL_FontCreate
	str r0, [r5, #4]
	mov r0, #0x27
	bl sub_02021998
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	strb r4, [r5, #0x10]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy186_21abbf8

	thumb_func_start ovy186_21abc20
ovy186_21abc20: ; 0x021ABC20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02021A18
	ldr r0, [r4, #4]
	bl sub_02022DA8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy186_21abc20

	thumb_func_start ovy186_21abc34
ovy186_21abc34: ; 0x021ABC34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_02021A3C
	ldrb r0, [r5, #0x10]
	ldr r4, [r5, #0x14]
	cmp r0, #0
	beq _021ABC62
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021ABC62
	ldr r0, [r5, #0xc]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x10]
_021ABC62:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy186_21abc34

	thumb_func_start ovy186_21abc64
ovy186_21abc64: ; 0x021ABC64
	push {r3, lr}
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	lsl r2, r1, #2
	ldr r1, _021ABC78 ; =0x021ADA38
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_021ABC78: .word 0x021ADA38
	thumb_func_end ovy186_21abc64

	thumb_func_start ovy186_21abc7c
ovy186_21abc7c: ; 0x021ABC7C
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021ABC90
	mov r0, #0x63
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021ABC90:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy186_21abc7c

	thumb_func_start ovy186_21abc94
ovy186_21abc94: ; 0x021ABC94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021ABCA6
	mov r0, #1
	pop {r4, pc}
_021ABCA6:
	add r0, r4, #0
	bl ovy186_21abf24
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy186_21abc94

	thumb_func_start ovy186_21abcb0
ovy186_21abcb0: ; 0x021ABCB0
	push {r3, r4, r5, lr}
	mov r5, #0x19
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0x10
	beq _021ABCEA
	cmp r0, #0x12
	beq _021ABCC8
	cmp r0, #0x13
	beq _021ABCD8
	b _021ABCFC
_021ABCC8:
	ldr r0, [r4, #0x54]
	bl sub_0204C560
	cmp r0, #0
	bne _021ABCD8
	mov r1, #3
	sub r0, r5, #4
	str r1, [r4, r0]
_021ABCD8:
	ldr r0, [r4, #0x50]
	bl sub_0204C560
	cmp r0, #0
	bne _021ABCEA
	mov r0, #0x63
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
_021ABCEA:
	ldr r0, [r4, #0x4c]
	bl sub_0204C560
	cmp r0, #0
	bne _021ABCFC
	mov r0, #0x63
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
_021ABCFC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy186_21abcb0

	thumb_func_start ovy186_21abd00
ovy186_21abd00: ; 0x021ABD00
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x27
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x63
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy186_21abd00

	thumb_func_start ovy186_21abd2c
ovy186_21abd2c: ; 0x021ABD2C
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _021ABD8C
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	cmp r0, #0x12
	bne _021ABD5C
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	mov r0, #0
	str r0, [r1, #0x10]
	add r1, r2, #0
	sub r1, #8
	ldr r1, [r4, r1]
	mov r3, #1
	str r3, [r1, #0x14]
	sub r1, r2, #4
	str r0, [r4, r1]
	b _021ABD88
_021ABD5C:
	cmp r0, #0x13
	bne _021ABD74
	add r0, r2, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0x10]
	add r0, r2, #0
	sub r0, #8
	ldr r0, [r4, r0]
	str r1, [r0, #0x14]
	b _021ABD84
_021ABD74:
	cmp r0, #0x10
	bne _021ABD88
	add r0, r2, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #3
	str r1, [r0, #0x10]
	mov r1, #0
_021ABD84:
	sub r0, r2, #4
	str r1, [r4, r0]
_021ABD88:
	mov r0, #0
	pop {r4, pc}
_021ABD8C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy186_21abd2c

	thumb_func_start ovy186_21abd90
ovy186_21abd90: ; 0x021ABD90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _021ABDD8 ; =0x021AD1D8
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	add r5, r0, #0
	add r1, r1, r2
	ldr r0, [r5, #0x20]
	ldr r2, [sp, #0x20]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0xc]
	ldr r6, [r5, #0x14]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	mov r3, #0x28
	str r0, [sp]
	ldr r0, [r5, #4]
	mul r3, r4
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	lsl r3, r3, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #0x10]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021ABDD8: .word 0x021AD1D8
	thumb_func_end ovy186_21abd90

	thumb_func_start ovy186_21abddc
ovy186_21abddc: ; 0x021ABDDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x68
	mov r1, #0x27
	str r2, [sp, #0xc]
	add r7, r3, #0
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	cmp r4, #0
	beq _021ABE08
	cmp r4, #1
	beq _021ABEFC
	b _021ABF18
_021ABE08:
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [sp, #0xc]
	bl sub_02009230
	add r7, sp, #0x18
	strb r0, [r7]
	lsr r0, r0, #8
	strb r0, [r7, #1]
	lsr r0, r0, #8
	strb r0, [r7, #2]
	lsr r0, r0, #8
	strb r0, [r7, #3]
	ldrb r0, [r7]
	mov r2, #0x7d
	mov r4, #1
	strb r0, [r7, #4]
	ldrb r0, [r7, #1]
	lsl r2, r2, #4
	mov r1, #0
	strb r0, [r7, #5]
	ldrb r0, [r7, #2]
	strb r0, [r7, #6]
	ldrb r0, [r7, #3]
	strb r0, [r7, #7]
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldrb r3, [r7, #4]
	ldr r0, [r5, #0x24]
	add r2, r3, r2
	mov r3, #4
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldrb r2, [r7, #5]
	ldr r0, [r5, #0x24]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldrb r2, [r7, #6]
	ldr r0, [r5, #0x24]
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsl r7, r0, #1
	add r1, r1, r7
	ldr r0, [r5, #0x20]
	add r1, #0x59
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	bl sub_02021C7C
	ldr r0, [sp, #0xc]
	strb r4, [r5, #0x10]
	add r0, r0, r7
	str r0, [sp, #0x10]
	add r0, #0x59
	str r0, [sp, #0x10]
_021ABEBE:
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x20]
	add r1, r4, r1
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r7, [r5, #0x14]
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	mov r3, #0x28
	mul r3, r4
	lsl r3, r3, #0x10
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #4]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	add r4, r4, #1
	strb r0, [r5, #0x10]
	cmp r4, #3
	blt _021ABEBE
	b _021ABF18
_021ABEFC:
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	str r6, [sp]
	bl ovy186_21abd90
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #1
	mov r2, #1
	str r6, [sp]
	bl ovy186_21abd90
_021ABF18:
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21abddc

	thumb_func_start ovy186_21abf24
ovy186_21abf24: ; 0x021ABF24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _021ABFF4 ; =0x021AD2C4
	mov r7, #0
	add r5, r0, #0
	add r0, r6, #0
	str r7, [sp, #4]
	str r7, [sp]
	bl sub_0203DA0C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203D9C8
	ldr r6, _021ABFF8 ; =0x021AD0F8
	add r0, r6, #0
	bl sub_0203DA0C
	add r0, r6, #0
	bl sub_0203D9C8
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	add r0, r5, #0
	bl ovy186_21ac5a8
	add r0, r5, #0
	mov r6, #0
	bl sub_021AC834
	cmp r0, #1
	bne _021ABF6C
	mov r6, #1
	sub r4, r6, #2
_021ABF6C:
	cmp r6, #0
	bne _021ABFE4
	bl GCTX_HIDGetPressedKeys
	mov r6, #2
	tst r0, r6
	beq _021ABF92
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _021ABFE4
	ldr r0, _021ABFFC ; =0x00000862
	bl GFL_SndSEPlay
	mov r7, #1
	mov r4, #0x13
	b _021ABFE4
_021ABF92:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r6, #9
	tst r0, r1
	beq _021ABFB2
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x40
	tst r0, r1
	bne _021ABFE4
	ldr r0, _021AC000 ; =0x00000863
	bl GFL_SndSEPlay
	mov r4, #0x12
	b _021ABFE4
_021ABFB2:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r6, #0xa
	tst r0, r1
	beq _021ABFCC
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x80
	tst r0, r1
	bne _021ABFE4
	mov r4, #0x11
	b _021ABFE4
_021ABFCC:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021ABFE4
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r1, r0
	bne _021ABFE4
	add r4, r0, #0
_021ABFE4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy186_21ac004
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ABFF4: .word 0x021AD2C4
_021ABFF8: .word 0x021AD0F8
_021ABFFC: .word 0x00000862
_021AC000: .word 0x00000863
	thumb_func_end ovy186_21abf24

	thumb_func_start ovy186_21ac004
ovy186_21ac004: ; 0x021AC004
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mvn r1, r1
	add r4, r0, #0
	add r7, r2, #0
	cmp r5, r1
	bne _021AC016
	b _021AC282
_021AC016:
	cmp r5, #0x13
	bhi _021AC0EE
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021AC026: ; jump table
	.short _021AC04E - _021AC026 - 2 ; case 0
	.short _021AC04E - _021AC026 - 2 ; case 1
	.short _021AC04E - _021AC026 - 2 ; case 2
	.short _021AC04E - _021AC026 - 2 ; case 3
	.short _021AC04E - _021AC026 - 2 ; case 4
	.short _021AC04E - _021AC026 - 2 ; case 5
	.short _021AC04E - _021AC026 - 2 ; case 6
	.short _021AC04E - _021AC026 - 2 ; case 7
	.short _021AC0D6 - _021AC026 - 2 ; case 8
	.short _021AC0D6 - _021AC026 - 2 ; case 9
	.short _021AC0D6 - _021AC026 - 2 ; case 10
	.short _021AC0D6 - _021AC026 - 2 ; case 11
	.short _021AC0D6 - _021AC026 - 2 ; case 12
	.short _021AC0D6 - _021AC026 - 2 ; case 13
	.short _021AC0D6 - _021AC026 - 2 ; case 14
	.short _021AC0D6 - _021AC026 - 2 ; case 15
	.short _021AC1BC - _021AC026 - 2 ; case 16
	.short _021AC1E4 - _021AC026 - 2 ; case 17
	.short _021AC1F6 - _021AC026 - 2 ; case 18
	.short _021AC21E - _021AC026 - 2 ; case 19
_021AC04E:
	ldr r0, [r4, #0x14]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _021AC0EE
	mov r0, #0xbe
	add r1, r4, r5
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021AC0EE
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bhi _021AC0EE
	mov r6, #0
	cmp r0, #1
	beq _021AC076
	mov r6, #1
_021AC076:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021ACA38
	cmp r6, #1
	bne _021AC08A
	add r0, r4, #0
	mov r1, #0
	bl ovy186_21ac5c4
_021AC08A:
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ovy186_21aca3c
	add r0, r4, #0
	mov r1, #1
	bl sub_021ACA9C
	add r0, r4, #0
	mov r1, #1
	bl ovy186_21abbc0
	mov r7, #0x76
	lsl r7, r7, #2
	str r5, [r4, r7]
	mov r1, #0
	add r0, r7, #4
	str r1, [r4, r0]
	cmp r6, #0
	bne _021AC0CC
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl ovy186_21abddc
	add r0, r4, #0
	bl ovy186_21abbdc
	ldr r1, [r4, r7]
	add r0, r4, #0
	bl sub_021AC9E4
_021AC0CC:
	mov r0, #0x73
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021AC0D6:
	ldr r0, [r4, #0x14]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _021AC0EE
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021AC0F0
	cmp r0, #2
	beq _021AC0F0
_021AC0EE:
	b _021AC282
_021AC0F0:
	mov r6, #0
	cmp r0, #2
	beq _021AC0F8
	mov r6, #1
_021AC0F8:
	sub r5, #8
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r7, r2, r1
	mov r0, #0xbe
	add r1, r4, r7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021AC142
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021ACA38
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ovy186_21aca3c
	add r0, r4, #0
	mov r1, #1
	bl sub_021ACA9C
	add r0, r4, #0
	bl sub_021ACC10
	cmp r0, #0
	bne _021AC162
	add r0, r4, #0
	bl ovy186_21acabc
	add r0, r4, #0
	mov r1, #1
	b _021AC15E
_021AC142:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy186_21aca3c
	add r0, r4, #0
	mov r1, #0
	bl sub_021ACA9C
	add r0, r4, #0
	bl ovy186_21acabc
	add r0, r4, #0
	mov r1, #0
_021AC15E:
	bl sub_021ACBF0
_021AC162:
	cmp r6, #1
	bne _021AC16E
	add r0, r4, #0
	mov r1, #1
	bl ovy186_21ac5c4
_021AC16E:
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy186_21abbc0
	mov r0, #0x76
	lsl r0, r0, #2
	str r7, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	cmp r6, #0
	bne _021AC19E
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ovy186_21abddc
	add r0, r4, #0
	bl ovy186_21abbdc
	ldr r0, _021AC284 ; =0x00000874
	bl GFL_SndSEPlay
_021AC19E:
	mov r5, #0x79
	mov r1, #0
	lsl r5, r5, #2
	strh r1, [r4, r5]
	ldrsh r2, [r4, r5]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _021AC288 ; =0x021AD0D4
	ldrsh r2, [r2, r3]
	bl sub_021AC89C
	mov r0, #2
	sub r5, #0x18
	str r0, [r4, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021AC1BC:
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x10
	tst r0, r2
	bne _021AC282
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x48
	str r2, [r4, r0]
	sub r1, #0x44
	ldr r0, _021AC28C ; =0x0000085F
	str r5, [r4, r1]
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x4c]
	mov r1, #0xc
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_021AC1E4:
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #0x80
	tst r1, r2
	bne _021AC282
	bl ovy186_21ac298
	pop {r3, r4, r5, r6, r7, pc}
_021AC1F6:
	mov r6, #0x75
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	mov r0, #0x40
	tst r0, r1
	bne _021AC282
	ldr r0, _021AC290 ; =0x00000863
	bl GFL_SndSEPlay
	add r0, r6, #0
	mov r1, #2
	sub r0, #0x48
	str r1, [r4, r0]
	sub r6, #0x44
	str r5, [r4, r6]
	ldr r0, [r4, #0x54]
	mov r1, #8
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_021AC21E:
	mov r6, #0x73
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021AC256
	ldr r0, _021AC294 ; =0x00000862
	bl GFL_SndSEPlay
	add r0, r6, #0
	mov r1, #2
	sub r0, #0x40
	str r1, [r4, r0]
	sub r6, #0x3c
	str r5, [r4, r6]
	ldr r0, [r4, #0x50]
	mov r1, #9
	bl sub_0204C488
	cmp r7, #0
	beq _021AC24E
	mov r0, #0
	bl sub_0203D564
	pop {r3, r4, r5, r6, r7, pc}
_021AC24E:
	mov r0, #1
	bl sub_0203D564
	pop {r3, r4, r5, r6, r7, pc}
_021AC256:
	add r0, r6, #0
	add r0, #8
	ldr r1, [r4, r0]
	mov r0, #0x20
	tst r0, r1
	bne _021AC282
	ldr r0, [r4, #0x50]
	mov r1, #9
	bl sub_0204C488
	ldr r0, [r4, r6]
	mov r1, #2
	cmp r0, #2
	bne _021AC274
	mov r1, #3
_021AC274:
	add r0, r4, #0
	bl ovy186_21ac5c4
	mov r0, #0x73
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021AC282:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AC284: .word 0x00000874
_021AC288: .word 0x021AD0D4
_021AC28C: .word 0x0000085F
_021AC290: .word 0x00000863
_021AC294: .word 0x00000862
	thumb_func_end ovy186_21ac004

	thumb_func_start ovy186_21ac298
ovy186_21ac298: ; 0x021AC298
	push {r4, r5, r6, lr}
	mov r6, #0x62
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r1, #0x1a
	ldr r0, [r0, #8]
	bl GameData_IsShortcutRegistered
	add r4, r0, #0
	mov r1, #1
	eor r4, r1
	add r1, r4, #6
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r6]
	mov r1, #0x1a
	ldr r0, [r0, #8]
	add r2, r4, #0
	bl sub_02017644
	ldr r0, _021AC2D0 ; =0x00000861
	bl GFL_SndSEPlay
	pop {r4, r5, r6, pc}
	.align 2, 0
_021AC2D0: .word 0x00000861
	thumb_func_end ovy186_21ac298

	thumb_func_start ovy186_21ac2d4
ovy186_21ac2d4: ; 0x021AC2D4
	push {r3, r4, r5, lr}
	mov r4, #0x65
	add r5, r0, #0
	mov r0, #0
	lsl r4, r4, #2
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
	beq _021AC306
	add r0, r4, #2
	ldrh r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #2
	strh r1, [r5, r0]
_021AC306:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy186_21ac2d4

	thumb_func_start ovy186_21ac308
ovy186_21ac308: ; 0x021AC308
	push {r4, r5, r6, lr}
	add r6, r2, #0
	lsl r2, r1, #1
	add r1, r1, r2
	lsl r1, r1, #2
	mov r4, #0
	add r5, r0, r1
_021AC316:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x7c]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #3
	blt _021AC316
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy186_21ac308

	thumb_func_start ovy186_21ac32c
ovy186_21ac32c: ; 0x021AC32C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl PlayerSave_GetPlayerSaveOffset
	mov r7, #0xbe
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021AC344:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200C97C
	cmp r0, #0
	beq _021AC362
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	mov r1, #1
	bl sub_0204C124
	add r1, r5, r4
	mov r0, #1
	b _021AC372
_021AC362:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x5c]
	mov r1, #0
	bl sub_0204C124
	add r1, r5, r4
	mov r0, #0
_021AC372:
	strb r0, [r1, r7]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy186_21ac308
	add r4, r4, #1
	cmp r4, #8
	blt _021AC344
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	ldr r0, [r0, #8]
	bl GameData_IsShortcutRegistered
	add r1, r0, #0
	add r1, r1, #6
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x58]
	lsr r1, r1, #0x10
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21ac32c

	thumb_func_start ovy186_21ac3a4
ovy186_21ac3a4: ; 0x021AC3A4
	push {r4, lr}
	mov r2, #0x65
	add r4, r0, #0
	lsl r2, r2, #2
	strh r1, [r4, r2]
	add r2, r2, #2
	ldrh r2, [r4, r2]
	bl ovy186_21ac32c
	add r0, r4, #0
	bl ovy186_21abbdc
	add r0, r4, #0
	mov r1, #0
	bl ovy186_21abbc0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy186_21aca3c
	add r0, r4, #0
	mov r1, #0
	bl sub_021ACA9C
	add r0, r4, #0
	bl ovy186_21aca14
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy186_21ac3a4

	thumb_func_start ovy186_21ac3e0
ovy186_21ac3e0: ; 0x021AC3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, sp, #0
	add r4, sp, #0xc
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02044210
	add r0, r4, #0
	add r1, r6, #0
	bl RTC_ConvertDateTimeToSecond
	mov r7, #3
	lsl r7, r7, #8
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r5, r7]
	add r1, r3, #0
	bl sub_02009210
	mov r4, #0
	add r6, r7, #4
_021AC40E:
	lsl r2, r4, #2
	add r2, r5, r2
	ldr r0, [r5, r7]
	ldr r2, [r2, r6]
	add r1, r4, #0
	bl sub_020092B8
	add r4, r4, #1
	cmp r4, #8
	blt _021AC40E
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21ac3e0

	thumb_func_start ovy186_21ac428
ovy186_21ac428: ; 0x021AC428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r6, r0, #0
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	bl sub_02009220
	add r4, r0, #0
	add r5, r1, #0
	add r0, sp, #0x24
	add r1, sp, #0xc
	add r2, r4, #0
	add r3, r5, #0
	bl RTC_ConvertSecondToDateTime
	add r7, sp, #0x34
	add r0, r7, #0
	add r1, sp, #0x18
	bl sub_02044210
	add r0, r7, #0
	add r1, sp, #0x18
	bl RTC_ConvertDateTimeToSecond
	sub r0, r0, r4
	sbc r1, r5
	mov r2, #0xe1
	lsl r2, r2, #4
	mov r3, #0
	mov r4, #0
	blx sub_0208D414
	mov r3, #0
	mov r2, #0
	sub r2, r0, r2
	sbc r1, r3
	bge _021AC476
	add r0, r4, #0
_021AC476:
	mov r7, #0xc1
	lsl r0, r0, #1
	lsl r7, r7, #2
	str r0, [sp]
	sub r0, r7, #4
	mov r4, #0
	str r0, [sp, #8]
_021AC484:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [sp, #8]
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl sub_020092A8
	ldr r1, [sp]
	str r0, [r5, r7]
	sub r0, r0, r1
	str r0, [r5, r7]
	bpl _021AC4A0
	mov r0, #0
	str r0, [r5, r7]
_021AC4A0:
	add r4, r4, #1
	cmp r4, #8
	blt _021AC484
	mov r0, #0xcb
	mov r3, #0
	mov r2, #0xff
	lsl r0, r0, #2
_021AC4AE:
	add r1, r6, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #8
	blt _021AC4AE
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy186_21ac428

	thumb_func_start ovy186_21ac4bc
ovy186_21ac4bc: ; 0x021AC4BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r2, sp, #0x18
	mov r0, #0
	ldrsh r2, [r2, r0]
	cmp r2, #0
	beq _021AC508
	lsl r6, r1, #4
	mov r1, #0x1f
	add r0, r5, r6
	lsl r1, r1, #4
	strh r4, [r0, r1]
	add r1, r1, #2
	strh r3, [r0, r1]
	sub r1, r3, r4
	add r0, r1, #0
	mov r7, #0x64
	mul r0, r7
	add r1, r2, #0
	blx sub_0208D65C
	mov r2, #0x1f
	lsl r2, r2, #4
	add r1, r5, r6
	add r2, #8
	str r0, [r1, r2]
	mov r0, #0x1f
	add r2, r4, #0
	lsl r0, r0, #4
	mul r2, r7
	add r0, #0xc
	str r2, [r1, r0]
	mov r0, #0x1f
	lsl r0, r0, #4
	mov r2, #1
	add r0, r0, #4
	strh r2, [r1, r0]
_021AC508:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21ac4bc

	thumb_func_start ovy186_21ac50c
ovy186_21ac50c: ; 0x021AC50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #2
	lsl r4, r1, #4
	add r1, r5, r0
	add r6, r1, r4
	ldrsh r1, [r1, r4]
	mov r2, #1
	mov r7, #0
	tst r2, r1
	beq _021AC57E
	mov r2, #2
	tst r1, r2
	bne _021AC578
	add r1, r0, #4
	add r1, r5, r1
	str r1, [sp]
	add r0, #8
	ldr r2, [sp]
	add r1, r5, r0
	ldr r0, [r1, r4]
	ldr r2, [r2, r4]
	add r0, r0, r2
	str r0, [r1, r4]
	mov r1, #0x64
	blx sub_0208D65C
	ldr r1, [sp]
	lsl r0, r0, #0x10
	ldr r1, [r1, r4]
	asr r0, r0, #0x10
	cmp r1, #0
	bge _021AC552
	mov r7, #1
_021AC552:
	cmp r7, #0
	ldr r1, _021AC584 ; =0x000001F2
	bne _021AC562
	add r2, r5, r4
	ldrsh r1, [r2, r1]
	cmp r0, r1
	blt _021AC574
	b _021AC56A
_021AC562:
	add r2, r5, r4
	ldrsh r1, [r2, r1]
	cmp r0, r1
	bgt _021AC574
_021AC56A:
	mov r1, #0
	ldrsh r2, [r6, r1]
	mov r1, #2
	orr r1, r2
	strh r1, [r6]
_021AC574:
	add r7, r0, #0
	b _021AC57E
_021AC578:
	add r1, r5, r4
	sub r0, r0, #2
	ldrsh r7, [r1, r0]
_021AC57E:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AC584: .word 0x000001F2
	thumb_func_end ovy186_21ac50c

	thumb_func_start sub_021AC588
sub_021AC588: ; 0x021AC588
	lsl r1, r1, #4
	add r1, r0, r1
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrsh r3, [r1, r0]
	mov r1, #1
	mov r2, #0
	add r0, r3, #0
	tst r0, r1
	beq _021AC5A4
	mov r0, #2
	tst r0, r3
	bne _021AC5A4
	add r2, r1, #0
_021AC5A4:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021AC588

	thumb_func_start ovy186_21ac5a8
ovy186_21ac5a8: ; 0x021AC5A8
	push {r4, lr}
	add r4, r0, #0
	bl ovy186_21ac8c4
	add r0, r4, #0
	bl ovy186_21ac9b8
	add r0, r4, #0
	bl ovy186_21ac68c
	add r0, r4, #0
	bl ovy186_21acadc
	pop {r4, pc}
	thumb_func_end ovy186_21ac5a8

	thumb_func_start ovy186_21ac5c4
ovy186_21ac5c4: ; 0x021AC5C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	lsl r4, r1, #3
	ldr r1, _021AC674 ; =0x021AD1F8
	add r5, r0, #0
	ldrsh r7, [r1, r4]
	ldr r1, _021AC678 ; =0x021AD1FA
	ldrsh r3, [r1, r4]
	ldr r1, _021AC67C ; =0x021AD1FE
	lsl r2, r7, #0x10
	ldrsh r1, [r1, r4]
	asr r2, r2, #0x10
	str r1, [sp]
	mov r1, #0
	bl ovy186_21ac4bc
	mov r6, #0x1e
	lsl r6, r6, #4
	strh r7, [r5, r6]
	mov r0, #7
	mov r1, #3
	add r2, r7, #0
	bl sub_02044CFC
	ldrsh r2, [r5, r6]
	mov r0, #4
	mov r1, #3
	bl sub_02044CFC
	ldr r0, _021AC680 ; =0x021AD1FC
	ldrsh r1, [r0, r4]
	add r0, r6, #0
	sub r0, #0x10
	str r1, [r5, r0]
	ldr r0, [sp, #4]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #8]
	lsl r0, r0, #0x10
	asr r3, r0, #0xe
	ldr r0, _021AC684 ; =0x021AD1AC
	lsl r1, r3, #1
	ldrsh r7, [r0, r1]
	add r0, r3, #3
	lsl r1, r0, #1
	ldr r0, _021AC684 ; =0x021AD1AC
	add r3, r3, #1
	ldrsh r0, [r0, r1]
	lsl r4, r3, #1
	ldr r3, _021AC684 ; =0x021AD1AC
	lsl r2, r7, #0x10
	str r0, [sp]
	ldrsh r3, [r3, r4]
	add r0, r5, #0
	mov r1, #1
	asr r2, r2, #0x10
	bl ovy186_21ac4bc
	add r0, r5, #0
	add r1, r7, #0
	bl ovy186_21acd04
	ldr r0, [sp, #8]
	ldr r7, _021AC688 ; =0x021AD16C
	lsl r0, r0, #0x10
	asr r3, r0, #0xe
	lsl r0, r3, #1
	ldrsh r4, [r7, r0]
	add r0, r3, #3
	lsl r0, r0, #1
	add r3, r3, #1
	ldrsh r0, [r7, r0]
	lsl r3, r3, #1
	lsl r2, r4, #0x10
	str r0, [sp]
	ldrsh r3, [r7, r3]
	add r0, r5, #0
	mov r1, #2
	asr r2, r2, #0x10
	bl ovy186_21ac4bc
	lsl r0, r4, #8
	add r6, #0x5c
	str r0, [r5, r6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AC674: .word 0x021AD1F8
_021AC678: .word 0x021AD1FA
_021AC67C: .word 0x021AD1FE
_021AC680: .word 0x021AD1FC
_021AC684: .word 0x021AD1AC
_021AC688: .word 0x021AD16C
	thumb_func_end ovy186_21ac5c4

	thumb_func_start ovy186_21ac68c
ovy186_21ac68c: ; 0x021AC68C
	push {r3, r4, r5, lr}
	mov r4, #0x1d
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	cmp r1, #0x78
	bgt _021AC6AC
	bge _021AC72C
	cmp r1, #0x64
	bgt _021AC6A6
	bge _021AC6C8
	cmp r1, #0
	pop {r3, r4, r5, pc}
_021AC6A6:
	cmp r1, #0x6e
	beq _021AC6EE
	pop {r3, r4, r5, pc}
_021AC6AC:
	cmp r1, #0xd2
	bgt _021AC6B8
	bge _021AC79A
	cmp r1, #0xc8
	beq _021AC782
	pop {r3, r4, r5, pc}
_021AC6B8:
	cmp r1, #0xdc
	bgt _021AC6C2
	bne _021AC6C0
	b _021AC7D8
_021AC6C0:
	pop {r3, r4, r5, pc}
_021AC6C2:
	ldr r0, _021AC828 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, pc}
_021AC6C8:
	mov r1, #0x6e
	str r1, [r5, r4]
	add r1, r4, #4
	ldr r2, [r5, r1]
	mov r1, #1
	orr r2, r1
	add r1, r4, #4
	str r2, [r5, r1]
	mov r1, #3
	mov r2, #0
	bl ovy186_21ac858
	add r0, r5, #0
	bl ovy186_21acabc
	ldr r0, _021AC82C ; =0x0000086A
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021AC6EE:
	mov r1, #0
	bl ovy186_21ac50c
	add r1, r4, #0
	add r1, #0x10
	strh r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AC588
	cmp r0, #0
	bne _021AC70A
	mov r0, #0x78
	str r0, [r5, r4]
_021AC70A:
	add r0, r5, #0
	mov r1, #1
	bl ovy186_21ac50c
	add r1, r0, #0
	add r0, r5, #0
	bl ovy186_21acd04
	add r0, r5, #0
	mov r1, #2
	bl ovy186_21ac50c
	lsl r1, r0, #8
	mov r0, #0x8f
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021AC72C:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0xc
	add r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0
	bl ovy186_21abddc
	add r0, r5, #0
	bl ovy186_21abbdc
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _021AC760
	add r4, #8
	ldr r0, [r5, r4]
	add r1, r5, r0
	mov r0, #0xbe
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _021AC760
	mov r0, #1
	b _021AC762
_021AC760:
	mov r0, #0
_021AC762:
	cmp r0, #0
	bne _021AC76E
	add r0, r5, #0
	mov r1, #1
	bl sub_021ACBF0
_021AC76E:
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #2
	orr r0, r2
	str r0, [r5, r1]
	ldr r2, _021AC828 ; =0x00002710
	sub r0, r1, #4
	str r2, [r5, r0]
	pop {r3, r4, r5, pc}
_021AC782:
	mov r0, #0xd2
	str r0, [r5, r4]
	add r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #1
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
	ldr r0, _021AC830 ; =0x0000086B
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021AC79A:
	mov r1, #0
	bl ovy186_21ac50c
	add r1, r4, #0
	add r1, #0x10
	strh r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0
	bl sub_021AC588
	cmp r0, #0
	bne _021AC7B6
	mov r0, #0xdc
	str r0, [r5, r4]
_021AC7B6:
	add r0, r5, #0
	mov r1, #1
	bl ovy186_21ac50c
	add r1, r0, #0
	add r0, r5, #0
	bl ovy186_21acd04
	add r0, r5, #0
	mov r1, #2
	bl ovy186_21ac50c
	lsl r1, r0, #8
	mov r0, #0x8f
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021AC7D8:
	ldr r0, [r5, #8]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	bl ovy186_21abbdc
	add r0, r5, #0
	mov r1, #0
	bl ovy186_21abbc0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy186_21aca3c
	add r0, r5, #0
	mov r1, #0
	bl sub_021ACA9C
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ovy186_21ac858
	add r0, r5, #0
	mov r1, #0
	bl sub_021ACBF0
	add r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #2
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
	ldr r0, _021AC828 ; =0x00002710
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021AC828: .word 0x00002710
_021AC82C: .word 0x0000086A
_021AC830: .word 0x0000086B
	thumb_func_end ovy186_21ac68c

	thumb_func_start sub_021AC834
sub_021AC834: ; 0x021AC834
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #1
	mov r2, #0
	tst r1, r0
	beq _021AC844
	add r2, r0, #0
_021AC844:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021AC834

	thumb_func_start sub_021AC848
sub_021AC848: ; 0x021AC848
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x4c]
	ldr r3, _021AC854 ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_021AC854: .word sub_0204C124
	thumb_func_end sub_021AC848

	thumb_func_start ovy186_21ac858
ovy186_21ac858: ; 0x021AC858
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _021AC898 ; =0x021AD0D8
	lsl r3, r4, #1
	ldrsh r1, [r1, r3]
	add r5, r0, #0
	add r6, r2, #0
	bl sub_021AC848
	cmp r6, #1
	bne _021AC882
	mov r0, #0x75
	lsl r0, r0, #2
	mov r2, #1
	add r1, r4, #4
	lsl r2, r1
	ldr r3, [r5, r0]
	mvn r1, r2
	and r1, r3
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021AC882:
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r2, #1
	add r1, r4, #4
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_021AC898: .word 0x021AD0D8
	thumb_func_end ovy186_21ac858

	thumb_func_start sub_021AC89C
sub_021AC89C: ; 0x021AC89C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x7a
	lsl r0, r0, #2
	str r2, [r1, r0]
	bx lr
	thumb_func_end sub_021AC89C

	thumb_func_start sub_021AC8A8
sub_021AC8A8: ; 0x021AC8A8
	mov r2, #0x7a
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r1, r1, #2
	ldr r0, [r2, r1]
	sub r0, r0, #1
	str r0, [r2, r1]
	cmp r0, #0
	bgt _021AC8BE
	mov r0, #0
	str r0, [r2, r1]
_021AC8BE:
	ldr r0, [r2, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021AC8A8

	thumb_func_start ovy186_21ac8c4
ovy186_21ac8c4: ; 0x021AC8C4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x73
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0
	mov r4, #0
	cmp r2, #2
	bne _021AC9AE
	add r1, #0xc
	ldr r1, [r5, r1]
	add r2, r5, r1
	mov r1, #0xbe
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _021AC8E8
	mov r0, #1
_021AC8E8:
	cmp r0, #0
	bne _021AC908
	ldr r0, _021AC9B0 ; =0x021AD0E8
	bl sub_0203DA0C
	cmp r0, #0
	bne _021AC9AE
	add r0, r5, #0
	mov r1, #3
	bl ovy186_21ac5c4
	mov r0, #0x73
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021AC908:
	cmp r0, #1
	bne _021AC9AE
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl sub_021AC8A8
	cmp r0, #0
	bgt _021AC950
	mov r6, #0x79
	lsl r6, r6, #2
	ldrsh r0, [r5, r6]
	mov r4, #1
	add r1, r7, #0
	sub r0, r4, r0
	strh r0, [r5, r6]
	ldrsh r2, [r5, r6]
	add r0, r5, #0
	lsl r3, r2, #1
	ldr r2, _021AC9B4 ; =0x021AD0D4
	ldrsh r2, [r2, r3]
	bl sub_021AC89C
	add r1, r6, #0
	add r2, r6, #0
	sub r1, #8
	sub r2, #0xc
	ldrsh r3, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy186_21abddc
	add r0, r5, #0
	bl ovy186_21abbdc
_021AC950:
	cmp r4, #0
	bne _021AC9AE
	ldr r0, _021AC9B0 ; =0x021AD0E8
	bl sub_0203DA0C
	cmp r0, #0
	bne _021AC9AE
	mov r4, #0x79
	lsl r4, r4, #2
	ldrsh r0, [r5, r4]
	cmp r0, #0
	bne _021AC9A0
	mov r0, #1
	strh r0, [r5, r4]
	ldrsh r2, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	lsl r3, r2, #1
	ldr r2, _021AC9B4 ; =0x021AD0D4
	ldrsh r2, [r2, r3]
	bl sub_021AC89C
	add r1, r4, #0
	add r2, r4, #0
	sub r1, #8
	sub r2, #0xc
	ldrsh r3, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy186_21abddc
	add r0, r5, #0
	bl ovy186_21abbdc
	mov r0, #0x86
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_021AC9A0:
	add r0, r5, #0
	mov r1, #3
	bl ovy186_21ac5c4
	mov r0, #0
	sub r4, #0x18
	str r0, [r5, r4]
_021AC9AE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021AC9B0: .word 0x021AD0E8
_021AC9B4: .word 0x021AD0D4
	thumb_func_end ovy186_21ac8c4

	thumb_func_start ovy186_21ac9b8
ovy186_21ac9b8: ; 0x021AC9B8
	push {r3, r4, r5, lr}
	mov r5, #0x73
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _021AC9DC
	ldr r0, _021AC9E0 ; =0x021AD0F0
	bl sub_0203DA0C
	cmp r0, #0
	bne _021AC9DC
	add r0, r4, #0
	mov r1, #2
	bl ovy186_21ac5c4
	mov r0, #0
	str r0, [r4, r5]
_021AC9DC:
	pop {r3, r4, r5, pc}
	nop
_021AC9E0: .word 0x021AD0F0
	thumb_func_end ovy186_21ac9b8

	thumb_func_start sub_021AC9E4
sub_021AC9E4: ; 0x021AC9E4
	ldr r0, _021AC9F0 ; =0x021AD18C
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	ldr r3, _021AC9F4 ; =GFL_SndSEPlay
	bx r3
	nop
_021AC9F0: .word 0x021AD18C
_021AC9F4: .word GFL_SndSEPlay
	thumb_func_end sub_021AC9E4

	thumb_func_start ovy186_21ac9f8
ovy186_21ac9f8: ; 0x021AC9F8
	push {r3, lr}
	mov r2, #0x8d
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	lsl r1, r1, #5
	ldr r2, [r2, #0xc]
	mov r0, #0x1f
	add r2, r2, r1
	mov r3, #0x20
	bl sub_0205FA10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy186_21ac9f8

	thumb_func_start ovy186_21aca14
ovy186_21aca14: ; 0x021ACA14
	push {r4, r5, r6, lr}
	mov r6, #0xbe
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021ACA1E:
	add r0, r5, r4
	ldrb r0, [r0, r6]
	cmp r0, #1
	bne _021ACA2E
	add r0, r5, #0
	add r1, r4, #0
	bl ovy186_21ac9f8
_021ACA2E:
	add r4, r4, #1
	cmp r4, #8
	blt _021ACA1E
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy186_21aca14

	thumb_func_start sub_021ACA38
sub_021ACA38: ; 0x021ACA38
	bx lr
	.align 2, 0
	thumb_func_end sub_021ACA38

	thumb_func_start ovy186_21aca3c
ovy186_21aca3c: ; 0x021ACA3C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r6, r4, #0
_021ACA48:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x24
	add r2, r6, #0
	bl sub_021AC848
	add r4, r4, #1
	cmp r4, #8
	blt _021ACA48
	cmp r7, #1
	bne _021ACA6C
	ldr r1, [sp]
	add r0, r5, #0
	add r1, #0x24
	mov r2, #1
	str r1, [sp]
	bl sub_021AC848
_021ACA6C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21aca3c

	thumb_func_start sub_021ACA70
sub_021ACA70: ; 0x021ACA70
	mov r2, #1
	mov r1, #0x9e
	lsl r2, r2, #0xe
	lsl r1, r1, #2
	str r2, [r0, r1]
	asr r2, r2, #4
	sub r1, #0x24
	lsl r2, r2, #1
	add r0, r0, r1
	lsl r1, r2, #1
	ldr r3, _021ACA94 ; =FX_SinCosTable_ ; 0x020946BC
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021ACA98 ; =MTX_RotX33_
	bx r3
	nop
_021ACA94: .word FX_SinCosTable_
_021ACA98: .word MTX_RotX33_
	thumb_func_end sub_021ACA70

	thumb_func_start sub_021ACA9C
sub_021ACA9C: ; 0x021ACA9C
	cmp r1, #1
	bne _021ACAAE
	mov r2, #0x75
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r1, #4
	orr r1, r3
	str r1, [r0, r2]
	bx lr
_021ACAAE:
	mov r2, #0x75
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r1, #4
	bic r3, r1
	str r3, [r0, r2]
	bx lr
	thumb_func_end sub_021ACA9C

	thumb_func_start ovy186_21acabc
ovy186_21acabc: ; 0x021ACABC
	push {r3, lr}
	add r3, r0, #0
	mov r0, #2
	mov r2, #0xa5
	lsl r2, r2, #2
	lsl r0, r0, #0xe
	str r0, [r3, r2]
	add r1, r2, #0
	add r2, r2, #4
	add r2, r3, r2
	mov r0, #0x1f
	sub r1, #0xf4
	mov r3, #0x20
	bl sub_0205FA10
	pop {r3, pc}
	thumb_func_end ovy186_21acabc

	thumb_func_start ovy186_21acadc
ovy186_21acadc: ; 0x021ACADC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0x75
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	mov r1, #8
	tst r2, r1
	beq _021ACBE6
	add r4, r0, #0
	ldr r2, [sp]
	add r4, #0xc0
	ldr r4, [r2, r4]
	lsl r2, r1, #7
	add r3, r0, #0
	add r4, r4, r2
	ldr r2, [sp]
	add r0, #0xc0
	str r4, [r2, r0]
	lsl r0, r1, #0xd
	add r3, #0xc0
	cmp r4, r0
	blt _021ACB12
	sub r1, r4, r0
	add r0, r2, #0
	str r1, [r0, r3]
_021ACB12:
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	mov r3, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021ACBEC ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r4, r0, #0x10
	ldr r0, [sp, #4]
	add r0, r0, #4
	mov ip, r0
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x24
	str r0, [sp, #0x10]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x44
	str r0, [sp, #4]
_021ACB58:
	ldr r0, [sp]
	lsl r1, r3, #1
	add r6, r0, r1
	mov r0, ip
	ldrh r5, [r6, r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x10]
	add r3, r3, #1
	ldrh r2, [r6, r0]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	and r0, r5
	ldr r5, [sp, #8]
	asr r0, r0, #0xa
	and r5, r2
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r4
	asr r5, r5, #0xc
	add r0, r0, r5
	mov r5, #0x1f
	and r5, r2
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r4
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r2
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r7
	mul r1, r4
	asr r1, r1, #0xc
	add r1, r7, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r1, r0
	ldr r0, [sp, #4]
	cmp r3, #0x10
	strh r1, [r6, r0]
	blt _021ACB58
	mov r3, #0xb6
	mov r1, #0x1a
	ldr r2, [sp]
	lsl r3, r3, #2
	add r2, r2, r3
	mov r0, #0x1f
	lsl r1, r1, #4
	mov r3, #0x20
	bl sub_0205FA10
_021ACBE6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021ACBEC: .word FX_SinCosTable_
	thumb_func_end ovy186_21acadc

	thumb_func_start sub_021ACBF0
sub_021ACBF0: ; 0x021ACBF0
	cmp r1, #1
	bne _021ACC02
	mov r2, #0x75
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r1, #8
	orr r1, r3
	str r1, [r0, r2]
	bx lr
_021ACC02:
	mov r2, #0x75
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r1, #8
	bic r3, r1
	str r3, [r0, r2]
	bx lr
	thumb_func_end sub_021ACBF0

	thumb_func_start sub_021ACC10
sub_021ACC10: ; 0x021ACC10
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #8
	mov r2, #0
	tst r0, r1
	beq _021ACC20
	mov r2, #1
_021ACC20:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021ACC10

	thumb_func_start ovy186_21acc24
ovy186_21acc24: ; 0x021ACC24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0x27
	add r7, r1, #0
	bl sub_02034060
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, #0x45
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	add r0, #8
	mov r4, #0
	str r0, [sp, #0xc]
_021ACC48:
	ldr r0, _021ACCA0 ; =0x021AD19C
	lsl r1, r4, #1
	ldrsh r6, [r0, r1]
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	lsl r3, r4, #0x15
	add r5, r0, r1
	mov r0, #0x27
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_02034074
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x27
	bl sub_020340A4
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x27
	bl sub_020340C8
	ldr r1, [sp, #0xc]
	add r4, r4, #1
	str r0, [r5, r1]
	cmp r4, #8
	blt _021ACC48
	ldr r0, [sp, #8]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ACCA0: .word 0x021AD19C
	thumb_func_end ovy186_21acc24

	thumb_func_start ovy186_21acca4
ovy186_21acca4: ; 0x021ACCA4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #0x46
	lsl r0, r0, #2
	mov r4, #0
	sub r7, r0, #4
	add r6, r0, #4
_021ACCB2:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp]
	add r5, r0, r1
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0204B98C
	ldr r0, [r5, r7]
	bl sub_0204BCD0
	ldr r0, [r5, r6]
	bl sub_0204BE64
	add r4, r4, #1
	cmp r4, #8
	blt _021ACCB2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21acca4

	thumb_func_start ovy186_21accdc
ovy186_21accdc: ; 0x021ACCDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r5, #0x4c
	lsl r4, r1, #2
	add r7, sp, #0
	add r6, r2, #0
	ldr r0, [r5, r4]
	add r1, r7, #0
	mov r2, #0
	bl Oam_GetSpritePosData
	add r0, sp, #0
	strh r6, [r0]
	ldr r0, [r5, r4]
	add r1, r7, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy186_21accdc

	thumb_func_start ovy186_21acd04
ovy186_21acd04: ; 0x021ACD04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021ACD0C:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x24
	add r2, r6, #0
	bl ovy186_21accdc
	add r4, r4, #1
	cmp r4, #8
	blt _021ACD0C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy186_21acd04
_021ACD20:
	.byte 0x08, 0xA8, 0x10, 0xF0, 0xFF, 0x00, 0x00, 0x00, 0x10, 0x50, 0x10, 0xE8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x18, 0x98, 0x20, 0xE0, 0xFF, 0x00, 0x00, 0x00, 0x48, 0xA8, 0x10, 0xF0, 0xFF, 0x00, 0x00, 0x00
	.byte 0x58, 0x98, 0x20, 0xE1, 0xFF, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1F, 0x00
	.byte 0x20, 0x00, 0x21, 0x00, 0x10, 0x20, 0xE8, 0xF8, 0x48, 0x58, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0xE4, 0xFC, 0xA8, 0xC0, 0xE4, 0xFC, 0xA8, 0xC0, 0x64, 0xA4, 0x50, 0x68, 0xE0, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x22, 0x00, 0x02, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0x1B, 0x00, 0x00, 0x00, 0x23, 0x00, 0x02, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0xE4, 0xFC, 0xA8, 0xC0, 0xCC, 0xE4, 0xA8, 0xC0, 0x64, 0xA4, 0xA8, 0xC0, 0x04, 0x1C
	.byte 0xA8, 0xC0, 0x24, 0x3C, 0xA8, 0xC0, 0x44, 0x5C, 0xA8, 0xC0, 0xB4, 0xCC, 0x30, 0x40, 0x18, 0xA0
	.byte 0x40, 0x50, 0x18, 0xA0, 0x78, 0x97, 0x10, 0xEF, 0x78, 0x97, 0x10, 0xEF, 0x78, 0x97, 0x10, 0xEF
	.byte 0x50, 0x68, 0xE0, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xE4, 0xFC, 0xA8, 0xC0, 0xCC, 0xE4
	.byte 0xA8, 0xC0, 0x64, 0xA4, 0xA8, 0xC0, 0x04, 0x1C, 0xA8, 0xC0, 0x24, 0x3C, 0xA8, 0xC0, 0x44, 0x5C
	.byte 0xA8, 0xC0, 0xB4, 0xCC, 0x30, 0x40, 0x18, 0xA0, 0x40, 0x50, 0x18, 0xA0, 0x78, 0x97, 0x10, 0xEF
	.byte 0x00, 0xA8, 0xE7, 0xFF, 0x00, 0xA8, 0x00, 0x18, 0x00, 0xA8, 0x00, 0x18, 0xFF, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x0F, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x0E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x00
	.byte 0x00, 0x02, 0x02, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x02, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0C, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x01, 0x00, 0x60, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x40, 0x04, 0x60, 0x10, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x07, 0x03, 0x04, 0x11, 0x02
	.byte 0x0F, 0x07, 0x03, 0x06, 0x11, 0x02, 0x0F, 0x07, 0x03, 0x08, 0x11, 0x02, 0x0F, 0x07, 0x03, 0x0A
	.byte 0x11, 0x02, 0x0F, 0x07, 0x03, 0x0D, 0x1B, 0x02, 0x0F, 0x07, 0x03, 0x0F, 0x19, 0x04, 0x0F, 0x07
	.byte 0x02, 0x02, 0x1C, 0x08, 0x0F, 0x04, 0x02, 0x01, 0x1B, 0x04, 0x0E, 0x00, 0xE4, 0x00, 0xA8, 0x00
	.byte 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0xCC, 0x00, 0xA8, 0x00, 0x01, 0x01, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x24, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x44, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x64, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0xAC, 0x00, 0x01, 0x01, 0x01, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x30, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x18, 0x00, 0x00, 0x00, 0x10, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00, 0x01, 0x19, 0x00, 0x00, 0x00
	.byte 0xEC, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x01, 0x1A, 0x00, 0x00, 0x00, 0xEC, 0x00, 0x48, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x1B, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x1C, 0x00, 0x00, 0x00, 0x2C, 0x01, 0xE0, 0x01, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00
	.byte 0x18, 0xD2, 0x1A, 0x02, 0x04, 0x00, 0x00, 0x00, 0x58, 0xA8, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x50, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x20, 0x57, 0x28, 0xD8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x1E, 0x09, 0x0F, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00
	.byte 0x3A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xC0, 0xFE
	.byte 0x00, 0x00, 0x10, 0x00, 0xC0, 0xFE, 0x00, 0xFC, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x08, 0x6D, 0x08
	.byte 0x6E, 0x08, 0x6F, 0x08, 0x70, 0x08, 0x71, 0x08, 0x72, 0x08, 0x73, 0x08, 0x73, 0x00, 0x74, 0x00
	.byte 0x71, 0x00, 0x70, 0x00, 0x75, 0x00, 0x72, 0x00, 0x76, 0x00, 0x77, 0x00, 0x00, 0x01, 0xC0, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0xC0, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00
	.byte 0x47, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x53, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x64, 0x00, 0x10, 0x00
	.byte 0x30, 0xFF, 0xB0, 0xFF, 0x64, 0x00, 0x10, 0x00, 0x00, 0x00, 0x80, 0x00, 0xC8, 0x00, 0x10, 0x00
	.byte 0xB0, 0xFF, 0x30, 0xFF, 0xC8, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0
	.byte 0xFF, 0x7F, 0x01, 0x00, 0xFF, 0x0F, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x02, 0x00, 0x01, 0xF0
	.byte 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F, 0x03, 0x00, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF0, 0xFF, 0x7F
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x06, 0x00, 0x79, 0xB1, 0x1A, 0x02, 0x21, 0xB2, 0x1A, 0x02
	.byte 0x5D, 0xB2, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x55, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0xA8, 0x00, 0x20, 0x58, 0xA8, 0x20, 0x40, 0x58, 0xA8, 0x40, 0x60
	.byte 0x58, 0xA8, 0x60, 0x80, 0x58, 0xA8, 0x80, 0xA0, 0x58, 0xA8, 0xA0, 0xC0, 0x58, 0xA8, 0xC0, 0xE0
	.byte 0x58, 0xA8, 0xE0, 0x00, 0x00, 0x50, 0x00, 0x20, 0x00, 0x50, 0x20, 0x40, 0x00, 0x50, 0x40, 0x60
	.byte 0x00, 0x50, 0x60, 0x80, 0x00, 0x50, 0x80, 0xA0, 0x00, 0x50, 0xA0, 0xC0, 0x00, 0x50, 0xC0, 0xE0
	.byte 0x00, 0x50, 0xE0, 0x00, 0xA8, 0xBF, 0x04, 0x24, 0xA8, 0xBF, 0xA0, 0xBF, 0xA8, 0xBF, 0xC0, 0xDF
	.byte 0xA8, 0xBF, 0xE0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x18, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x30, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x3C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x48, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x54, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x60, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x24, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x7C, 0xD1, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x1E, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1A, 0x04, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1B, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x1C, 0x06, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xA8, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0xAC, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xD8, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF8, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x7D, 0xBC, 0x1A, 0x02, 0x95, 0xBC, 0x1A, 0x02
	.byte 0xB1, 0xBC, 0x1A, 0x02, 0x01, 0xBD, 0x1A, 0x02, 0x2D, 0xBD, 0x1A, 0x02, 0x62, 0x61, 0x64, 0x67
	.byte 0x65, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021ACD20
