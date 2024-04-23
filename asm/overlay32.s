    .include "macros/function.inc"
	.include "overlay32.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy32_21998c0
ovy32_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	bl sub_020352E0
	cmp r0, #0
	beq _021998CE
	mov r0, #0x2a
	b _021998D0
_021998CE:
	mov r0, #0x10
_021998D0:
	bl ovy32_21999b8
	ldr r7, _021999B0 ; =0x04000130
	ldr r6, _021999B4 ; =0x02FFFFA8
	ldrh r1, [r7]
	ldrh r0, [r6]
	mov r2, #0x40
	orr r1, r0
	lsr r0, r6, #0xc
	eor r1, r0
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x20
	and r2, r1
	and r0, r1
	lsl r2, r2, #1
	asr r0, r0, #1
	mvn r2, r2
	mvn r0, r0
	and r1, r2
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #3
	tst r0, r1
	beq _0219993E
	lsr r4, r6, #0xc
	add r5, r4, #0
_0219990A:
	bl sub_02005430
	bl sub_0203D0EC
	ldrh r1, [r7]
	ldrh r0, [r6]
	mov r2, #0x40
	orr r0, r1
	eor r0, r4
	and r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x20
	and r2, r1
	and r0, r1
	lsl r2, r2, #1
	asr r0, r0, #1
	mvn r2, r2
	mvn r0, r0
	and r1, r2
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #3
	tst r0, r1
	bne _0219990A
_0219993E:
	ldr r7, _021999B0 ; =0x04000130
	ldr r6, _021999B4 ; =0x02FFFFA8
	ldrh r1, [r7]
	ldrh r0, [r6]
	mov r2, #0x40
	orr r1, r0
	lsr r0, r6, #0xc
	eor r1, r0
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x20
	and r2, r1
	and r0, r1
	lsl r2, r2, #1
	asr r0, r0, #1
	mvn r2, r2
	mvn r0, r0
	and r1, r2
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #3
	tst r0, r1
	bne _021999A8
	lsr r4, r6, #0xc
	add r5, r4, #0
_02199974:
	bl sub_02005430
	bl sub_0203D0EC
	ldrh r1, [r7]
	ldrh r0, [r6]
	mov r2, #0x40
	orr r0, r1
	eor r0, r4
	and r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x20
	and r2, r1
	and r0, r1
	lsl r2, r2, #1
	asr r0, r0, #1
	mvn r2, r2
	mvn r0, r0
	and r1, r2
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #3
	tst r0, r1
	beq _02199974
_021999A8:
	bl ovy32_2199be0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021999B0: .word 0x04000130
_021999B4: .word 0x02FFFFA8
	thumb_func_end ovy32_21998c0

	thumb_func_start ovy32_21999b8
ovy32_21999b8: ; 0x021999B8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0xf
	add r5, r0, #0
	mvn r4, r4
	ldr r0, _02199A44 ; =0x0400006C
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _02199A48 ; =0x0400106C
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	bl GX_ResetBankForBG
	bl GX_ResetBankForSubBG
	mov r0, #4
	mov r4, #4
	bl GX_SetBankForBG
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r7, #1
	mov r6, #0
	bl GX_SetGraphicsMode
	lsl r0, r4, #0x18
	ldr r2, [r0]
	ldr r1, _02199A4C ; =0xFFFFE0FF
	and r2, r1
	lsl r1, r7, #9
	orr r1, r2
	str r1, [r0]
	ldr r2, [r0]
	ldr r1, _02199A50 ; =0xFFFF1FFF
	and r1, r2
	str r1, [r0]
	ldr r0, _02199A44 ; =0x0400006C
	mov r1, #0x43
	sub r0, #0x62
	ldrh r2, [r0]
	and r1, r2
	orr r1, r4
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _02199A54 ; =0x0000FFBF
	and r1, r2
	strh r1, [r0]
	ldr r0, _02199A44 ; =0x0400006C
	sub r0, #0x58
	str r6, [r0]
	ldr r0, _02199A44 ; =0x0400006C
	sub r0, #0x1c
	strh r6, [r0]
	bl ovy32_2199a58
	add r0, r5, #0
	bl ovy32_2199b28
	ldr r0, _02199A44 ; =0x0400006C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _02199A48 ; =0x0400106C
	mov r1, #0x10
	bl GXx_SetMasterBrightness_
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199A44: .word 0x0400006C
_02199A48: .word 0x0400106C
_02199A4C: .word 0xFFFFE0FF
_02199A50: .word 0xFFFF1FFF
_02199A54: .word 0x0000FFBF
	thumb_func_end ovy32_21999b8

	thumb_func_start ovy32_2199a58
ovy32_2199a58: ; 0x02199A58
	push {r3, r4, r5, lr}
	sub sp, #0x10
	bl G2_GetBG1CharPtr
	mov r2, #1
	add r1, r0, #0
	mov r0, #0
	lsl r2, r2, #0xe
	blx MIi_CpuClear32
	mov r0, #0x16
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_0204B4E4
	add r1, sp, #0xc
	add r4, r0, #0
	bl sub_020602A8
	cmp r0, #0
	beq _02199AA2
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	blx DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r5, [r0, #0x10]
	bl G2_GetBG1CharPtr
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	ldr r0, [r0, #0x14]
	blx MIi_CpuCopy16
_02199AA2:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x16
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl sub_0204B4E4
	add r1, sp, #8
	add r4, r0, #0
	bl sub_02060338
	cmp r0, #0
	beq _02199AE0
	ldr r1, [sp, #8]
	add r0, r1, #0
	ldr r1, [r1, #8]
	add r0, #0xc
	blx DC_FlushRange
	ldr r0, [sp, #8]
	ldr r5, [r0, #8]
	bl G2_GetBG1ScrPtr
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, r5, #0
	add r0, #0xc
	blx MIi_CpuCopy16
_02199AE0:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0x16
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_0204B4E4
	add r4, r0, #0
	add r1, sp, #0
	bl sub_02060300
	add r0, r4, #0
	add r1, sp, #4
	bl sub_020602D8
	cmp r0, #0
	beq _02199B1E
	ldr r0, [sp, #4]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	blx DC_FlushRange
	ldr r0, [sp, #4]
	mov r1, #5
	ldr r0, [r0, #0xc]
	lsl r1, r1, #0x18
	mov r2, #0x20
	blx MIi_CpuCopy16
_02199B1E:
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy32_2199a58

	thumb_func_start ovy32_2199b28
ovy32_2199b28: ; 0x02199B28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	bl G2_GetBG1ScrPtr
	mov r4, #0x20
	mov r3, #4
	mov r1, #1
_02199B38:
	lsl r5, r3, #6
	add r2, r1, #0
	add r5, r0, r5
_02199B3E:
	lsl r6, r2, #1
	strh r4, [r5, r6]
	add r4, r4, #1
	lsl r4, r4, #0x10
	add r2, r2, #1
	lsr r4, r4, #0x10
	cmp r2, #0x1f
	blt _02199B3E
	add r3, r3, #1
	cmp r3, #0x14
	blt _02199B38
	bl G2_GetBG1CharPtr
	mov r5, #1
	add r1, r0, #0
	lsl r5, r5, #0xa
	mov r2, #0xf
	ldr r0, _02199BD4 ; =0x00007777
	add r1, r1, r5
	lsl r2, r2, #0xa
	blx MIi_CpuClear16
	bl G2_GetBG1CharPtr
	mov r4, #1
	add r0, r0, r5
	mov r1, #0x1e
	mov r2, #0x10
	mov r3, #0x20
	str r4, [sp]
	bl sub_02046EA8
	add r5, r0, #0
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp]
	bl GFL_FontCreate
	add r4, r0, #0
	ldr r2, _02199BD8 ; =0x000001B7
	mov r0, #0
	mov r1, #2
	mov r3, #1
	bl GFL_MsgSysLoadData
	ldr r1, [sp, #8]
	add r7, r0, #0
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, _02199BDC ; =0x00001167
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02021D28
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	add r0, r4, #0
	bl sub_02022DA8
	add r0, r5, #0
	bl sub_02046EDC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02199BD4: .word 0x00007777
_02199BD8: .word 0x000001B7
_02199BDC: .word 0x00001167
	thumb_func_end ovy32_2199b28

	thumb_func_start ovy32_2199be0
ovy32_2199be0: ; 0x02199BE0
	push {r4, r5, r6, lr}
	ldr r5, _02199C50 ; =0x0400006C
	mov r4, #0xf
	mvn r4, r4
	add r0, r5, #0
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	ldr r6, _02199C54 ; =0x0400106C
	add r1, r4, #0
	add r0, r6, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	bl sub_02046DC0
	bl G2_GetBG1CharPtr
	add r1, r0, #0
	mov r0, #0
	lsr r2, r5, #0xc
	blx MIi_CpuClear16
	bl G2_GetBG1ScrPtr
	add r1, r0, #0
	mov r0, #0
	lsr r2, r6, #0xf
	blx MIi_CpuClear16
	mov r1, #5
	lsr r0, r4, #0x11
	lsl r1, r1, #0x18
	mov r4, #0x20
	mov r2, #0x20
	blx MIi_CpuClear16
	lsl r2, r4, #0x15
	ldr r1, [r2]
	ldr r0, _02199C58 ; =0xFFFFE0FF
	and r0, r1
	str r0, [r2]
	bl GX_ResetBankForSubBG
	bl GX_ResetBankForBG
	add r0, r5, #0
	mov r1, #0
	bl GXx_SetMasterBrightness_
	add r0, r6, #0
	mov r1, #0
	bl GXx_SetMasterBrightness_
	pop {r4, r5, r6, pc}
	nop
_02199C50: .word 0x0400006C
_02199C54: .word 0x0400106C
_02199C58: .word 0xFFFFE0FF
	thumb_func_end ovy32_2199be0
_02199C5C:
	.byte 0x00, 0x00, 0x00, 0x00
	; 0x02199C5C
