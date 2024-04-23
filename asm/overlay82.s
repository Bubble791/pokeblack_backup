    .include "macros/function.inc"
	.include "overlay82.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy82_21ea860
ovy82_21ea860: ; 0x021EA860
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02016B20
	add r6, r0, #0
	ldr r0, _021EA96C ; =0x0000010F
	ldr r3, _021EA970 ; =0x021EBA80
	str r0, [sp]
	mov r0, #0x15
	mov r1, #0x80
	mov r2, #1
	mov r7, #0x15
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r0, #0x58
	mov r1, #0x15
	str r5, [r4]
	bl sub_0204AA30
	add r5, r0, #0
	add r0, r4, #0
	bl ovy82_21eab90
	add r0, r4, #0
	add r1, r5, #0
	bl ovy82_21eabf0
	add r0, r4, #0
	bl ovy82_21eadd0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy82_21eae30
	add r0, r4, #0
	add r1, r5, #0
	bl ovy82_21eae8c
	add r0, r4, #0
	bl ovy82_21ead18
	add r0, r5, #0
	bl GFL_ArcToolFree
	mov r0, #9
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x40]
	ldr r3, [r4, #0x44]
	mov r1, #1
	bl sub_02034168
	mov r1, #0
	str r0, [r4, #0x7c]
	mov r5, #0
	bl sub_020344B8
	add r0, r6, #0
	bl sub_0202BDF4
	add r6, r0, #0
	beq _021EA92A
	bl sub_021710C8
	add r1, r4, #0
	add r1, #0x30
	strb r0, [r1]
	ldr r1, _021EA974 ; =0x000030E4
	add r0, r4, #0
	add r1, r6, r1
	bl ovy82_21eb344
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EA92A
	ldr r2, _021EA978 ; =0x021EB9FC
	b _021EA926
_021EA908:
	add r0, r4, #0
	add r0, #0x30
	ldrb r1, [r2, r5]
	ldrb r0, [r0]
	cmp r1, r0
	bne _021EA924
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	mov r1, #1
	mov r2, #1
	bl sub_0204C378
	b _021EA92A
_021EA924:
	add r5, r5, #1
_021EA926:
	cmp r5, #5
	blo _021EA908
_021EA92A:
	mov r0, #0
	mov r1, #0x15
	bl sub_02042BA8
	bl sub_0203E84C
	ldr r0, _021EA97C ; =0x0400104A
	ldr r1, _021EA980 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x1f
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0]
	sub r0, #0x4a
	ldr r3, [r0]
	ldr r2, _021EA984 ; =0xFFFF1FFF
	lsl r1, r1, #0xa
	and r2, r3
	orr r1, r2
	str r1, [r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EA96C: .word 0x0000010F
_021EA970: .word 0x021EBA80
_021EA974: .word 0x000030E4
_021EA978: .word 0x021EB9FC
_021EA97C: .word 0x0400104A
_021EA980: .word 0xFFFFC0FF
_021EA984: .word 0xFFFF1FFF
	thumb_func_end ovy82_21ea860

	thumb_func_start ovy82_21ea988
ovy82_21ea988: ; 0x021EA988
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02016B20
	bl sub_0202BDF4
	cmp r0, #0
	beq _021EA9A0
	ldr r1, _021EA9E8 ; =0x0000282E
	mov r2, #0
	strb r2, [r0, r1]
_021EA9A0:
	ldr r0, [r4, #0x7c]
	bl sub_02034264
	add r0, r4, #0
	bl sub_021EADC0
	add r0, r4, #0
	bl ovy82_21eaf0c
	add r0, r4, #0
	bl ovy82_21eae74
	add r0, r4, #0
	bl ovy82_21eae18
	add r0, r4, #0
	bl ovy82_21eace8
	add r0, r4, #0
	bl ovy82_21eabcc
	add r0, r4, #0
	bl GFL_HeapFree
	ldr r4, _021EA9EC ; =0x04001050
	mov r0, #0
	strh r0, [r4]
	bl sub_0203E860
	sub r4, #0x50
	ldr r1, [r4]
	ldr r0, _021EA9F0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r4]
	pop {r4, pc}
	nop
_021EA9E8: .word 0x0000282E
_021EA9EC: .word 0x04001050
_021EA9F0: .word 0xFFFF1FFF
	thumb_func_end ovy82_21ea988

	thumb_func_start ovy82_21ea9f4
ovy82_21ea9f4: ; 0x021EA9F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_02016B20
	bl sub_0202BDF4
	bl sub_0203E84C
	cmp r4, #1
	ldr r0, _021EAA70 ; =0x04001050
	bne _021EAA14
	mov r1, #0
	strh r1, [r0]
	b _021EAA1E
_021EAA14:
	mov r2, #0x3f
	mov r1, #0x3f
	sub r2, #0x47
	bl G2x_SetBlendBrightness_
_021EAA1E:
	ldr r0, [r5, #0x40]
	bl sub_02021A3C
	ldr r0, [r5, #0x7c]
	bl sub_02034220
	mov r4, #0
	add r7, r4, #0
_021EAA2E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x58]
	cmp r0, #1
	bne _021EAA68
	lsl r0, r4, #3
	add r1, r5, r0
	add r0, r1, #0
	add r0, #0x68
	ldrb r0, [r0]
	ldr r6, [r5, #0x40]
	cmp r0, #0
	beq _021EAA68
	ldr r0, [r1, #0x64]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021EAA68
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r0, [r6, #0x64]
	bl BmpWin_FlushChar
	add r6, #0x68
	strb r7, [r6]
_021EAA68:
	add r4, r4, #1
	cmp r4, #3
	blt _021EAA2E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EAA70: .word 0x04001050
	thumb_func_end ovy82_21ea9f4

	thumb_func_start ovy82_21eaa74
ovy82_21eaa74: ; 0x021EAA74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	bl sub_02016B20
	str r0, [sp]
	bl sub_0202BDF4
	add r4, r0, #0
	beq _021EAABC
	ldr r1, _021EAB84 ; =0x00002830
	add r6, r4, r1
	ldrb r1, [r6, #0xe]
	cmp r1, #1
	bne _021EAAA2
	ldrb r3, [r6, #0xf]
	mov r1, #0
	add r2, r6, #4
	bl sub_021B445C
	mov r0, #0
	strb r0, [r6, #0xe]
_021EAAA2:
	ldr r1, _021EAB88 ; =0x000030E4
	add r0, r5, #0
	add r1, r4, r1
	bl ovy82_21eb020
	ldr r0, _021EAB8C ; =0x00003520
	ldr r0, [r4, r0]
	cmp r0, #3
	blt _021EAABC
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_0204C124
_021EAABC:
	cmp r7, #1
	bne _021EAB44
	add r0, r5, #0
	add r1, r4, #0
	bl ovy82_21eaf24
	cmp r4, #0
	beq _021EAB0C
	cmp r0, #1
	bne _021EAB0C
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #5
	bhi _021EAB0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAAE6: ; jump table
	.short _021EAB0C - _021EAAE6 - 2 ; case 0
	.short _021EAAF2 - _021EAAE6 - 2 ; case 1
	.short _021EAAF8 - _021EAAE6 - 2 ; case 2
	.short _021EAB0C - _021EAAE6 - 2 ; case 3
	.short _021EAAFE - _021EAAE6 - 2 ; case 4
	.short _021EAB04 - _021EAAE6 - 2 ; case 5
_021EAAF2:
	add r0, r4, #0
	mov r1, #2
	b _021EAB08
_021EAAF8:
	add r0, r4, #0
	mov r1, #3
	b _021EAB08
_021EAAFE:
	add r0, r4, #0
	mov r1, #4
	b _021EAB08
_021EAB04:
	add r0, r4, #0
	mov r1, #5
_021EAB08:
	bl sub_02170E4C
_021EAB0C:
	add r0, r5, #0
	bl ovy82_21eb558
	add r1, r5, #0
	add r1, #0x31
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EAB2E
	add r0, r5, #0
	bl ovy82_21eb724
	add r1, r5, #0
	add r1, #0x31
	strb r0, [r1]
_021EAB2E:
	add r0, r5, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EAB44
	cmp r4, #0
	beq _021EAB44
	add r0, r5, #0
	add r1, r4, #0
	bl ovy82_21eb9a4
_021EAB44:
	cmp r4, #0
	beq _021EAB6A
	add r0, r4, #0
	add r1, r5, #0
	bl ovy82_21eb5f4
	cmp r7, #1
	bne _021EAB60
	ldr r2, _021EAB88 ; =0x000030E4
	add r0, r4, #0
	add r1, r5, #0
	add r2, r4, r2
	bl ovy82_21eb770
_021EAB60:
	ldr r1, _021EAB88 ; =0x000030E4
	add r0, r5, #0
	add r1, r4, r1
	bl ovy82_21eb8b8
_021EAB6A:
	ldr r0, [sp]
	bl sub_0202BDD4
	cmp r0, #3
	bne _021EAB82
	cmp r4, #0
	beq _021EAB82
	add r5, #0x30
	ldrb r1, [r5]
	add r0, r4, #0
	bl sub_021710BC
_021EAB82:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EAB84: .word 0x00002830
_021EAB88: .word 0x000030E4
_021EAB8C: .word 0x00003520
	thumb_func_end ovy82_21eaa74

	thumb_func_start ovy82_21eab90
ovy82_21eab90: ; 0x021EAB90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc
	mov r1, #5
	mov r2, #0x15
	mov r4, #0x15
	bl sub_0204BF1C
	str r0, [r5, #0x14]
	mov r0, #0x15
	bl sub_02021998
	str r0, [r5, #0x40]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp]
	bl GFL_FontCreate
	mov r2, #0x19
	str r0, [r5, #0x44]
	mov r0, #0
	mov r1, #2
	lsl r2, r2, #4
	mov r3, #0x15
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy82_21eab90

	thumb_func_start ovy82_21eabcc
ovy82_21eabcc: ; 0x021EABCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x44]
	bl sub_02022DA8
	ldr r0, [r4, #0x40]
	bl sub_02021C44
	ldr r0, [r4, #0x40]
	bl sub_02021A18
	ldr r0, [r4, #0x14]
	bl sub_0204BF98
	pop {r4, pc}
	thumb_func_end ovy82_21eabcc

	thumb_func_start ovy82_21eabf0
ovy82_21eabf0: ; 0x021EABF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r1, _021EACD4 ; =0x021EBA14
	mov r0, #5
	mov r2, #0
	mov r6, #0
	bl sub_0204476C
	ldr r1, _021EACD8 ; =0x021EBA34
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021EACDC ; =0x021EBA54
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	blx MIi_CpuClear32
	ldr r7, _021EACE0 ; =0x04001000
	ldr r0, _021EACE4 ; =0xFFFF1FFF
	ldr r1, [r7]
	mov r4, #0x15
	and r0, r1
	str r0, [r7]
	add r0, r7, #0
	add r0, #0x50
	strh r6, [r0]
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #7
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	lsr r0, r7, #0xf
	str r0, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #7
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #6
	bl sub_02045814
	str r0, [sp, #0xc]
	str r4, [sp]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	add r3, sp, #0x10
	bl sub_0204B32C
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r2, #7
	ldr r1, [sp, #0xc]
	add r0, #0xc
	lsl r2, r2, #6
	blx MI_CpuCopy8
	add r0, r7, #0
	bl GFL_HeapFree
	mov r0, #0xa0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #4
	mov r3, #0
	str r4, [sp, #4]
	mov r5, #4
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	mov r3, #0xf
	mov r0, #0x17
	mov r1, #5
	add r2, r5, #0
	lsl r3, r3, #5
	str r4, [sp, #4]
	bl sub_0204B0B8
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EACD4: .word 0x021EBA14
_021EACD8: .word 0x021EBA34
_021EACDC: .word 0x021EBA54
_021EACE0: .word 0x04001000
_021EACE4: .word 0xFFFF1FFF
	thumb_func_end ovy82_21eabf0

	thumb_func_start ovy82_21eace8
ovy82_21eace8: ; 0x021EACE8
	push {r3, lr}
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy82_21eace8

	thumb_func_start ovy82_21ead18
ovy82_21ead18: ; 0x021EAD18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x52
	mov r1, #0x15
	mov r7, #0x15
	bl sub_0204AA30
	str r0, [sp, #0xc]
	mov r0, #5
	mov r1, #0x80
	mov r2, #1
	mov r5, #0x80
	bl sub_02044564
	add r6, r0, #0
	str r6, [r4, #4]
	str r5, [sp]
	mov r5, #0
	str r5, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0x1c
	mov r2, #5
	add r3, r6, #0
	str r7, [sp, #8]
	bl sub_0204ADA8
	mov r0, #5
	bl sub_02045814
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	str r7, [sp]
	mov r1, #0x1d
	mov r2, #0
	add r3, sp, #0x14
	bl sub_0204B32C
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	add r1, #0xc
	lsl r0, r7, #6
	add r0, r1, r0
	lsl r1, r7, #6
	add r1, r4, r1
	mov r2, #0xc0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x10]
	bl GFL_HeapFree
	lsl r2, r7, #6
	mov r1, #0xd
	ldr r7, _021EADBC ; =0x00000FFF
	lsl r1, r1, #0xc
_021EAD86:
	lsl r0, r5, #1
	add r0, r4, r0
	ldrh r3, [r0, r2]
	add r5, r5, #1
	and r3, r7
	add r3, r6, r3
	add r3, r3, r1
	strh r3, [r0, r2]
	cmp r5, #0x60
	blt _021EAD86
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r3, #0x1a
	ldr r0, [sp, #0xc]
	mov r1, #0x1b
	mov r2, #4
	lsl r3, r3, #4
	bl sub_0204B0D4
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EADBC: .word 0x00000FFF
	thumb_func_end ovy82_21ead18

	thumb_func_start sub_021EADC0
sub_021EADC0: ; 0x021EADC0
	add r1, r0, #0
	ldr r1, [r1, #4]
	ldr r3, _021EADCC ; =sub_02044668
	mov r0, #5
	mov r2, #0x80
	bx r3
	.align 2, 0
_021EADCC: .word sub_02044668
	thumb_func_end sub_021EADC0

	thumb_func_start ovy82_21eadd0
ovy82_21eadd0: ; 0x021EADD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
	mov r7, #7
_021EADDA:
	mov r2, #0x38
	mul r2, r4
	asr r3, r2, #2
	lsl r0, r4, #2
	lsr r3, r3, #0x1d
	add r6, r5, r0
	add r3, r2, r3
	lsl r2, r3, #0x15
	str r7, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #1
	lsr r2, r2, #0x18
	mov r3, #0x1d
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	str r0, [r6, #0x4c]
	add r1, r5, r1
	str r0, [r1, #0x64]
	add r1, #0x68
	mov r0, #0
	add r4, r4, #1
	strb r0, [r1]
	cmp r4, #3
	blt _021EADDA
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy82_21eadd0

	thumb_func_start ovy82_21eae18
ovy82_21eae18: ; 0x021EAE18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021EAE1E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x4c]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #3
	blt _021EAE1E
	pop {r3, r4, r5, pc}
	thumb_func_end ovy82_21eae18

	thumb_func_start ovy82_21eae30
ovy82_21eae30: ; 0x021EAE30
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	add r4, r1, #0
	str r0, [sp, #4]
	mov r6, #0x15
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #1
	mov r3, #0
	bl Oam_LoadNCLRFile
	str r0, [r5, #0xc]
	str r6, [sp]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #0x15
	bl Oam_LoadNCERFile
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy82_21eae30

	thumb_func_start ovy82_21eae74
ovy82_21eae74: ; 0x021EAE74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0204BCD0
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0x10]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy82_21eae74

	thumb_func_start ovy82_21eae8c
ovy82_21eae8c: ; 0x021EAE8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021EAF08 ; =0x021EBA0C
	add r6, sp, #0xc
	ldrh r1, [r0]
	add r7, sp, #0xc
	mov r4, #0
	strh r1, [r6]
	ldrh r1, [r0, #2]
	strh r1, [r6, #2]
	ldrh r1, [r0, #4]
	strh r1, [r6, #4]
	ldrh r0, [r0, #6]
	strh r0, [r6, #6]
_021EAEAA:
	mov r0, #0x30
	mul r0, r4
	add r0, #0x20
	strh r0, [r6]
	strh r4, [r6, #4]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl sub_0204C040
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x18]
	cmp r4, #4
	ble _021EAEAA
	mov r1, #5
	add r0, sp, #0xc
	strh r1, [r0, #4]
	mov r1, #0xf4
	strh r1, [r0]
	mov r1, #0x9c
	strh r1, [r0, #2]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x15
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl sub_0204C040
	mov r1, #0
	str r0, [r5, #0x2c]
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EAF08: .word 0x021EBA0C
	thumb_func_end ovy82_21eae8c

	thumb_func_start ovy82_21eaf0c
ovy82_21eaf0c: ; 0x021EAF0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021EAF12:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #6
	blt _021EAF12
	pop {r3, r4, r5, pc}
	thumb_func_end ovy82_21eaf0c

	thumb_func_start ovy82_21eaf24
ovy82_21eaf24: ; 0x021EAF24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp]
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	cmp r0, #0
	bne _021EAF3E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EAF3E:
	mov r4, #0
	add r7, sp, #4
_021EAF42:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	add r1, sp, #4
	mov r2, #1
	bl sub_0204C178
	mov r0, #2
	ldrsh r1, [r7, r0]
	add r0, r1, #0
	sub r0, #0xa
	lsl r0, r0, #0x10
	add r1, #0xa
	asr r3, r0, #0x10
	lsl r0, r1, #0x10
	asr r2, r0, #0x10
	mov r0, #0
	ldrsh r6, [r7, r0]
	add r0, r6, #0
	add r0, #0xa
	lsl r0, r0, #0x10
	sub r6, #0xa
	asr r1, r0, #0x10
	lsl r6, r6, #0x10
	ldr r0, [sp, #0xc]
	asr r6, r6, #0x10
	cmp r6, r0
	bhs _021EAFB2
	cmp r1, r0
	bls _021EAFB2
	ldr r0, [sp, #8]
	cmp r3, r0
	bhs _021EAFB2
	cmp r2, r0
	bls _021EAFB2
	cmp r4, #0
	bne _021EAF9E
	ldr r0, [sp]
	cmp r0, #0
	beq _021EAF9E
	ldr r2, _021EAFC0 ; =0x0000282E
	mov r1, #1
	strb r1, [r0, r2]
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EAF9E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy82_21eafc8
	ldr r0, _021EAFC4 ; =0x0000054B
	bl GFL_SndSEPlay
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EAFB2:
	add r4, r4, #1
	cmp r4, #4
	ble _021EAF42
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAFC0: .word 0x0000282E
_021EAFC4: .word 0x0000054B
	thumb_func_end ovy82_21eaf24

	thumb_func_start ovy82_21eafc8
ovy82_21eafc8: ; 0x021EAFC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021EB01C ; =0x021EB9FC
	add r6, r1, #0
	ldrb r1, [r0, r6]
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r1, r0
	bne _021EAFE0
	mov r1, #0
	b _021EAFE0
_021EAFE0:
	add r0, r5, #0
	add r0, #0x30
	mov r4, #0
	strb r1, [r0]
	add r7, r4, #0
	b _021EB014
_021EAFEC:
	cmp r4, r6
	bne _021EB004
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EB004
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #1
	b _021EB00C
_021EB004:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	add r1, r7, #0
_021EB00C:
	mov r2, #1
	bl sub_0204C378
	add r4, r4, #1
_021EB014:
	cmp r4, #4
	ble _021EAFEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB01C: .word 0x021EB9FC
	thumb_func_end ovy82_21eafc8

	thumb_func_start ovy82_21eb020
ovy82_21eb020: ; 0x021EB020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021EB13C ; =0x00000444
	add r7, r1, #0
	ldr r1, [r7, r0]
	sub r0, r0, #4
	ldr r0, [r7, r0]
	cmp r1, r0
	beq _021EB138
	ldr r0, [r5, #0x7c]
	bl sub_020342F4
	cmp r0, #0
	beq _021EB138
	ldr r4, [sp, #8]
_021EB044:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x58]
	cmp r0, #1
	bne _021EB09A
	ldr r0, [r5, #0x40]
	str r0, [sp, #4]
	lsl r0, r4, #3
	add r6, r5, r0
	add r0, r6, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EB088
	ldr r0, [r6, #0x64]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02021C1C
	cmp r0, #0
	bne _021EB088
	lsl r0, r4, #3
	add r0, r5, r0
	str r0, [sp]
	ldr r0, [r0, #0x64]
	bl BmpWin_FlushChar
	ldr r0, [sp]
	mov r1, #0
	add r0, #0x68
	str r0, [sp]
	strb r1, [r0]
_021EB088:
	add r6, #0x68
	ldrb r0, [r6]
	cmp r0, #0
	bne _021EB094
	mov r0, #1
	b _021EB096
_021EB094:
	mov r0, #0
_021EB096:
	cmp r0, #0
	beq _021EB138
_021EB09A:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB044
	ldr r1, _021EB140 ; =0x0000043C
	ldr r0, [r7, r1]
	cmp r0, #3
	bge _021EB0F0
	add r0, r1, #0
	add r0, #8
	ldr r4, [r7, r0]
	add r0, r1, #4
	ldr r0, [r7, r0]
	cmp r4, r0
	bgt _021EB122
	add r0, r1, #4
	str r0, [sp, #0xc]
_021EB0BA:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	ble _021EB0E4
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021B4620
	add r6, r0, #0
	bne _021EB0D8
	ldr r0, _021EB144 ; =0x021EBA90
	ldr r2, _021EB148 ; =0x021EBA94
	mov r1, #0
	bl sub_0203CB80
_021EB0D8:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ovy82_21eb150
_021EB0E4:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	ldr r0, [r7, r0]
	cmp r4, r0
	ble _021EB0BA
	b _021EB122
_021EB0F0:
	add r0, r1, #0
	add r0, #8
	ldr r3, [r7, r0]
	add r0, r1, #4
	ldr r0, [r7, r0]
	sub r2, r0, r3
	bpl _021EB102
	neg r0, r2
	b _021EB104
_021EB102:
	add r0, r2, #0
_021EB104:
	cmp r0, #3
	bge _021EB10C
	cmp r3, #2
	bge _021EB116
_021EB10C:
	add r0, r5, #0
	add r1, r7, #0
	bl ovy82_21eb344
	b _021EB11E
_021EB116:
	add r0, r5, #0
	add r1, r7, #0
	bl ovy82_21eb44c
_021EB11E:
	mov r0, #1
	str r0, [sp, #8]
_021EB122:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021EB12E
	ldr r0, _021EB14C ; =0x00000548
	bl GFL_SndSEPlay
_021EB12E:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	add r0, r0, #4
	str r1, [r7, r0]
_021EB138:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB13C: .word 0x00000444
_021EB140: .word 0x0000043C
_021EB144: .word 0x021EBA90
_021EB148: .word 0x021EBA94
_021EB14C: .word 0x00000548
	thumb_func_end ovy82_21eb020

	thumb_func_start ovy82_21eb150
ovy82_21eb150: ; 0x021EB150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	add r7, r1, #0
	mov r0, #6
	add r6, r2, #0
	bl sub_02045814
	add r2, r7, #0
	add r2, #0x20
	mov r1, #0xe0
	mul r1, r6
	ldrb r2, [r2]
	lsl r1, r1, #1
	mov r5, #0
	cmp r2, #0
	beq _021EB174
	mov r5, #2
_021EB174:
	mov r2, #7
	add r1, r0, r1
	lsl r2, r2, #6
	blx MI_CpuCopy8
	mov r2, #7
	str r2, [sp]
	lsl r0, r5, #0x18
	mul r2, r6
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #6
	bl sub_02045B7C
	ldr r0, _021EB340 ; =0x021EBA04
	lsl r5, r6, #2
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x58
	str r1, [sp, #0x28]
	str r0, [sp, #0x18]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _021EB1D0
	ldr r0, [r4, #0x7c]
	add r1, r6, #0
	bl sub_02034320
	cmp r0, #1
	bne _021EB1F0
	ldr r0, [r4, #0x7c]
	add r1, r6, #0
	mov r2, #1
	bl sub_020342F8
	b _021EB1F0
_021EB1D0:
	cmp r0, #1
	bne _021EB1F0
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x4c
	str r0, [sp, #0x1c]
	ldr r0, [r0, r5]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r5]
	bl BmpWin_FlushChar
_021EB1F0:
	add r0, r7, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB218
	add r1, r4, #0
	add r1, #0x4c
	add r0, r1, r5
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	str r0, [sp]
	add r2, r7, #0
	ldr r0, [r4, #0x7c]
	ldr r1, [r1, r5]
	add r2, #0x10
	add r3, r6, #0
	bl sub_020342BC
	mov r1, #0
	b _021EB2C2
_021EB218:
	cmp r0, #5
	bls _021EB21E
	b _021EB33A
_021EB21E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB22A: ; jump table
	.short _021EB25A - _021EB22A - 2 ; case 0
	.short _021EB236 - _021EB22A - 2 ; case 1
	.short _021EB242 - _021EB22A - 2 ; case 2
	.short _021EB248 - _021EB22A - 2 ; case 3
	.short _021EB24E - _021EB22A - 2 ; case 4
	.short _021EB254 - _021EB22A - 2 ; case 5
_021EB236:
	ldr r0, [r4, #0x48]
	mov r1, #6
_021EB23A:
	bl sub_0204898C
	str r0, [sp, #0x14]
	b _021EB25E
_021EB242:
	ldr r0, [r4, #0x48]
	mov r1, #0
	b _021EB23A
_021EB248:
	ldr r0, [r4, #0x48]
	mov r1, #1
	b _021EB23A
_021EB24E:
	ldr r0, [r4, #0x48]
	mov r1, #2
	b _021EB23A
_021EB254:
	ldr r0, [r4, #0x48]
	mov r1, #3
	b _021EB23A
_021EB25A:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_021EB25E:
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x4c
	str r0, [sp, #0x20]
	lsl r0, r6, #2
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r0, [r1, r0]
	bl sub_0204826C
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r0, [r1, r0]
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r4, #0x40]
	lsl r6, r6, #3
	str r0, [sp, #0x10]
	add r0, r4, r6
	ldr r0, [r0, #0x64]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x44]
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r1, r4, r6
	add r1, #0x68
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	mov r1, #1
_021EB2C2:
	ldr r0, [sp, #0x18]
	str r1, [r0, r5]
	mov r0, #8
	mov r1, #0x15
	bl GFL_StrBufCreate
	add r1, r7, #0
	add r5, r0, #0
	bl sub_02048614
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r5, [sp]
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_02021C7C
	add r0, r5, #0
	bl GFL_StrBufFree
	add r7, #0x22
	ldrb r0, [r7]
	cmp r0, #0
	beq _021EB33A
	mov r1, #4
	cmp r0, #1
	beq _021EB30C
	mov r1, #5
_021EB30C:
	ldr r0, [r4, #0x48]
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	str r5, [sp]
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	mov r2, #0x74
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_02021C7C
	add r0, r5, #0
	bl GFL_StrBufFree
_021EB33A:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB340: .word 0x021EBA04
	thumb_func_end ovy82_21eb150

	thumb_func_start ovy82_21eb344
ovy82_21eb344: ; 0x021EB344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	str r0, [sp]
	mov r1, #0x11
	ldr r0, [sp, #4]
	lsl r1, r1, #6
	ldr r5, [r0, r1]
	sub r7, r5, #3
	bpl _021EB35C
	mov r7, #0
	mvn r7, r7
_021EB35C:
	sub r0, r5, r7
	sub r4, r0, #1
	cmp r5, r7
	ble _021EB3A0
_021EB364:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_021B4620
	add r6, r0, #0
	bne _021EB37A
	ldr r0, _021EB3A4 ; =0x021EBA90
	ldr r2, _021EB3A8 ; =0x021EBA94
	mov r1, #0
	bl sub_0203CB80
_021EB37A:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bgt _021EB38C
	ldr r0, _021EB3A4 ; =0x021EBA90
	ldr r2, _021EB3AC ; =0x021EBAA4
	mov r1, #0
	bl sub_0203CB80
_021EB38C:
	lsl r2, r4, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ovy82_21eb150
	sub r5, r5, #1
	sub r4, r4, #1
	cmp r5, r7
	bgt _021EB364
_021EB3A0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB3A4: .word 0x021EBA90
_021EB3A8: .word 0x021EBA94
_021EB3AC: .word 0x021EBAA4
	thumb_func_end ovy82_21eb344

	thumb_func_start ovy82_21eb3b0
ovy82_21eb3b0: ; 0x021EB3B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #6
	add r6, r1, #0
	str r3, [sp]
	bl sub_02045814
	add r3, r0, #0
	mov r2, #0xe0
	add r0, r4, #0
	mul r0, r2
	lsl r1, r0, #1
	add r0, r6, #0
	mul r0, r2
	lsl r0, r0, #1
	add r0, r3, r0
	add r1, r3, r1
	add r2, #0xe0
	blx MI_CpuCopy8
	mov r0, #6
	bl sub_02045B7C
	lsl r0, r6, #2
	add r1, r5, r0
	ldr r1, [r1, #0x58]
	cmp r1, #0
	bne _021EB400
	lsl r2, r4, #2
	add r2, r5, r2
	ldr r2, [r2, #0x58]
	cmp r2, #0
	bne _021EB400
	ldr r0, [r5, #0x7c]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02034380
	pop {r3, r4, r5, r6, r7, pc}
_021EB400:
	cmp r1, #1
	bne _021EB432
	lsl r7, r4, #2
	add r1, r5, r7
	ldr r1, [r1, #0x58]
	cmp r1, #1
	bne _021EB432
	add r0, r5, r0
	add r4, r5, #0
	ldr r0, [r0, #0x4c]
	add r4, #0x4c
	bl BmpWin_GetBitmap
	add r5, r0, #0
	ldr r0, [r4, r7]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02046F18
	ldr r0, [r4, r7]
	bl BmpWin_FlushChar
	pop {r3, r4, r5, r6, r7, pc}
_021EB432:
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	sub r1, r1, #2
	add r1, r1, r6
	bl sub_021B4620
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ovy82_21eb150
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy82_21eb3b0

	thumb_func_start ovy82_21eb44c
ovy82_21eb44c: ; 0x021EB44C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r1, #0
	str r2, [sp, #8]
	cmp r2, #0
	ble _021EB4C4
	add r7, r2, #0
	mov r5, #0
	cmp r7, #3
	bge _021EB486
_021EB462:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	lsl r2, r5, #0x18
	sub r0, r1, r0
	lsl r1, r7, #0x18
	str r0, [sp]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl ovy82_21eb3b0
	add r7, r7, #1
	add r5, r5, #1
	cmp r7, #3
	blt _021EB462
_021EB486:
	ldr r0, [sp, #8]
	mov r1, #3
	sub r5, r1, r0
	cmp r5, #3
	bge _021EB546
_021EB490:
	mov r1, #0x11
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, #0
	sub r1, r1, #2
	add r1, r1, r5
	bl sub_021B4620
	add r7, r0, #0
	bne _021EB4AE
	ldr r0, _021EB54C ; =0x021EBA90
	ldr r2, _021EB550 ; =0x021EBA94
	mov r1, #0
	bl sub_0203CB80
_021EB4AE:
	lsl r2, r5, #0x18
	add r0, r6, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ovy82_21eb150
	add r5, r5, #1
	cmp r5, #3
	blt _021EB490
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EB4C4:
	add r0, r2, #0
	mov r5, #2
	add r7, r0, #2
	sub r0, r5, #3
	cmp r7, r0
	ble _021EB4F8
_021EB4D0:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	lsl r2, r5, #0x18
	sub r0, r1, r0
	lsl r1, r7, #0x18
	str r0, [sp]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, r4, #0
	bl ovy82_21eb3b0
	mov r0, #0
	sub r7, r7, #1
	mvn r0, r0
	sub r5, r5, #1
	cmp r7, r0
	bgt _021EB4D0
_021EB4F8:
	mov r1, #0
	ldr r0, [sp, #8]
	mvn r1, r1
	sub r5, r1, r0
	add r0, r1, #0
	cmp r5, r0
	ble _021EB546
_021EB506:
	mov r1, #0x11
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, #0
	sub r1, r1, #2
	add r1, r1, r5
	bl sub_021B4620
	add r7, r0, #0
	bne _021EB530
	ldr r0, [sp, #8]
	str r5, [sp]
	mov r3, #0x11
	str r0, [sp, #4]
	lsl r3, r3, #6
	ldr r0, _021EB54C ; =0x021EBA90
	ldr r2, _021EB554 ; =0x021EBAB4
	ldr r3, [r4, r3]
	mov r1, #0
	bl sub_0203CB94
_021EB530:
	lsl r2, r5, #0x18
	add r0, r6, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ovy82_21eb150
	mov r0, #0
	sub r5, r5, #1
	mvn r0, r0
	cmp r5, r0
	bgt _021EB506
_021EB546:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EB54C: .word 0x021EBA90
_021EB550: .word 0x021EBA94
_021EB554: .word 0x021EBAB4
	thumb_func_end ovy82_21eb44c

	thumb_func_start ovy82_21eb558
ovy82_21eb558: ; 0x021EB558
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	bne _021EB570
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021EB570:
	ldr r0, [r5, #0x2c]
	add r1, sp, #8
	mov r2, #1
	mov r4, #1
	bl sub_0204C178
	add r0, r5, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EB5C4
	bl sub_0203DA48
	cmp r0, #0
	bne _021EB594
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021EB594:
	add r1, sp, #0
	mov r0, #8
	ldrsh r2, [r1, r0]
	ldr r3, [sp, #4]
	add r0, r2, #0
	sub r0, #0xb
	cmp r0, r3
	bhi _021EB5EC
	add r2, #0xb
	cmp r2, r3
	blo _021EB5EC
	mov r0, #0xa
	ldrsh r1, [r1, r0]
	ldr r2, [sp]
	add r0, r1, #0
	sub r0, #0xb
	cmp r0, r2
	bhi _021EB5EC
	add r1, #0xb
	cmp r1, r2
	blo _021EB5EC
	add sp, #0xc
	add r0, r4, #0
	pop {r4, r5, pc}
_021EB5C4:
	ldr r0, [sp]
	cmp r0, #0x1c
	bhs _021EB5CE
	mov r0, #0x1c
	b _021EB5D4
_021EB5CE:
	cmp r0, #0x9c
	bls _021EB5D6
	mov r0, #0x9c
_021EB5D4:
	str r0, [sp]
_021EB5D6:
	ldr r1, [sp]
	add r0, sp, #0
	strh r1, [r0, #0xa]
	ldr r0, [r5, #0x2c]
	add r1, sp, #8
	mov r2, #1
	bl sub_0204C140
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EB5EC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy82_21eb558

	thumb_func_start ovy82_21eb5f4
ovy82_21eb5f4: ; 0x021EB5F4
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	bne _021EB60E
	add r0, r1, #0
	ldr r1, _021EB61C ; =0x000030E4
	add r1, r2, r1
	bl ovy82_21eb620
	pop {r3, pc}
_021EB60E:
	add r0, r1, #0
	ldr r1, _021EB61C ; =0x000030E4
	add r1, r2, r1
	bl ovy82_21eb6ac
	pop {r3, pc}
	nop
_021EB61C: .word 0x000030E4
	thumb_func_end ovy82_21eb5f4

	thumb_func_start ovy82_21eb620
ovy82_21eb620: ; 0x021EB620
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x2c]
	add r6, r1, #0
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r0, #0x1c
	lsl r5, r0, #8
	add r0, r6, #0
	bl sub_021EB700
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_021EB718
	asr r2, r0, #1
	mov r1, #0
	add r5, r5, r2
	mov r7, #0
	cmp r4, #0
	ble _021EB666
_021EB654:
	add r2, r1, #1
	add r3, r0, #0
	mul r3, r2
	cmp r5, r3
	ble _021EB666
	add r7, r7, #1
	add r1, r2, #0
	cmp r7, r4
	blt _021EB654
_021EB666:
	cmp r1, r4
	blt _021EB66C
	add r1, r4, #0
_021EB66C:
	ldr r0, _021EB6A8 ; =0x0000043C
	ldr r2, [r6, r0]
	sub r3, r2, r4
	add r3, r1, r3
	add r1, r0, #4
	str r3, [r6, r1]
	cmp r3, #3
	bge _021EB68C
	cmp r2, #3
	bge _021EB686
	add r0, r0, #4
	str r2, [r6, r0]
	b _021EB68C
_021EB686:
	mov r1, #2
	add r0, r0, #4
	str r1, [r6, r0]
_021EB68C:
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	cmp r1, #0
	blt _021EB69E
	sub r0, r0, #4
	ldr r0, [r6, r0]
	cmp r1, r0
	ble _021EB6A6
_021EB69E:
	ldr r0, _021EB6A8 ; =0x0000043C
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
_021EB6A6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB6A8: .word 0x0000043C
	thumb_func_end ovy82_21eb620

	thumb_func_start ovy82_21eb6ac
ovy82_21eb6ac: ; 0x021EB6AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021EB700
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EB718
	ldr r2, _021EB6FC ; =0x0000043C
	add r3, r2, #4
	ldr r1, [r4, r2]
	ldr r3, [r4, r3]
	sub r3, r1, r3
	cmp r3, #0x1b
	ble _021EB6D4
	sub r1, #0x1b
	add r2, r2, #4
	str r1, [r4, r2]
_021EB6D4:
	ldr r1, _021EB6FC ; =0x0000043C
	ldr r2, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	sub r1, r2, r1
	mul r1, r0
	lsr r1, r1, #8
	mov r0, #0x9c
	sub r1, r0, r1
	add r0, sp, #0
	strh r1, [r0, #2]
	mov r1, #0xf4
	strh r1, [r0]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	pop {r3, r4, r5, pc}
	nop
_021EB6FC: .word 0x0000043C
	thumb_func_end ovy82_21eb6ac

	thumb_func_start sub_021EB700
sub_021EB700: ; 0x021EB700
	ldr r1, _021EB714 ; =0x0000043C
	ldr r0, [r0, r1]
	cmp r0, #0x1e
	blt _021EB70A
	mov r0, #0x1d
_021EB70A:
	sub r0, r0, #2
	bpl _021EB710
	mov r0, #0
_021EB710:
	bx lr
	nop
_021EB714: .word 0x0000043C
	thumb_func_end sub_021EB700

	thumb_func_start sub_021EB718
sub_021EB718: ; 0x021EB718
	mov r0, #2
	ldr r3, _021EB720 ; =sub_0208D868
	lsl r0, r0, #0xe
	bx r3
	.align 2, 0
_021EB720: .word sub_0208D868
	thumb_func_end sub_021EB718

	thumb_func_start ovy82_21eb724
ovy82_21eb724: ; 0x021EB724
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	bne _021EB73C
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021EB73C:
	ldr r0, [sp, #4]
	cmp r0, #0xe9
	blo _021EB768
	cmp r0, #0xff
	bhi _021EB768
	ldr r2, [sp]
	cmp r2, #0x1c
	blo _021EB768
	cmp r2, #0x9c
	bhi _021EB768
	mov r1, #0xf4
	add r0, sp, #0
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, [r4, #0x2c]
	add r1, sp, #8
	mov r2, #1
	bl sub_0204C140
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021EB768:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy82_21eb724

	thumb_func_start ovy82_21eb770
ovy82_21eb770: ; 0x021EB770
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r6, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	add r5, r2, #0
	bl sub_0203DAC8
	cmp r0, #0
	bne _021EB78C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EB78C:
	ldr r0, [sp, #4]
	cmp r0, #0xe8
	bhi _021EB7AC
	ldr r2, [sp]
	mov r4, #0
	mov r0, #0x38
_021EB798:
	add r1, r4, #0
	mul r1, r0
	cmp r2, r1
	blo _021EB7A6
	add r1, #0x38
	cmp r2, r1
	bls _021EB7AC
_021EB7A6:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB798
_021EB7AC:
	cmp r4, #3
	bge _021EB7B8
	ldr r0, _021EB818 ; =0x0000043C
	ldr r0, [r5, r0]
	cmp r4, r0
	ble _021EB7BE
_021EB7B8:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EB7BE:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy82_21eb92c
	cmp r0, #1
	bne _021EB812
	ldr r0, _021EB818 ; =0x0000043C
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #3
	blt _021EB7DA
	sub r0, r0, #2
	add r4, r0, r4
_021EB7DA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy82_21eb89c
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021B4620
	cmp r0, #0
	beq _021EB7FC
	ldr r1, _021EB81C ; =0x000028A8
	add r0, #0x1a
	add r1, r7, r1
	mov r2, #6
	blx MI_CpuCopy8
_021EB7FC:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy82_21eb904
	ldr r0, _021EB820 ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EB812:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB818: .word 0x0000043C
_021EB81C: .word 0x000028A8
_021EB820: .word 0x0000054C
	thumb_func_end ovy82_21eb770

	thumb_func_start ovy82_21eb824
ovy82_21eb824: ; 0x021EB824
	push {r4, r5, r6, lr}
	mov r4, #0
_021EB828:
	lsl r3, r4, #2
	add r6, r0, r3
	ldrh r5, [r6, #0x34]
	cmp r5, #0
	beq _021EB840
	add r6, #0x36
	ldrb r5, [r6]
	cmp r2, r5
	bne _021EB840
	add r0, #0x34
	add r0, r0, r3
	pop {r4, r5, r6, pc}
_021EB840:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB828
	mov r4, #0
_021EB848:
	lsl r3, r4, #2
	add r2, r0, r3
	ldrh r2, [r2, #0x34]
	cmp r2, #0
	bne _021EB858
	add r0, #0x34
	add r0, r0, r3
	pop {r4, r5, r6, pc}
_021EB858:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB848
	mov r3, #0x11
	lsl r3, r3, #6
	ldr r4, [r1, r3]
	mov r2, #0
	sub r3, r4, #3
_021EB868:
	lsl r5, r2, #2
	add r1, r0, r5
	add r1, #0x36
	ldrb r1, [r1]
	cmp r1, r4
	bgt _021EB878
	cmp r1, r3
	bgt _021EB87E
_021EB878:
	add r0, #0x34
	add r0, r0, r5
	pop {r4, r5, r6, pc}
_021EB87E:
	add r2, r2, #1
	cmp r2, #3
	blt _021EB868
	ldr r0, _021EB894 ; =0x021EBA90
	ldr r2, _021EB898 ; =0x021EBADC
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021EB894: .word 0x021EBA90
_021EB898: .word 0x021EBADC
	thumb_func_end ovy82_21eb824

	thumb_func_start ovy82_21eb89c
ovy82_21eb89c: ; 0x021EB89C
	push {r4, lr}
	add r4, r2, #0
	bl ovy82_21eb824
	cmp r0, #0
	bne _021EB8AC
	mov r0, #0
	pop {r4, pc}
_021EB8AC:
	mov r1, #0x5a
	strh r1, [r0]
	strb r4, [r0, #2]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy82_21eb89c

	thumb_func_start ovy82_21eb8b8
ovy82_21eb8b8: ; 0x021EB8B8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x11
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #6
_021EB8C4:
	lsl r0, r4, #2
	add r1, r5, r0
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	beq _021EB8FC
	sub r0, r0, #1
	strh r0, [r1, #0x34]
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	bne _021EB8FC
	ldr r0, [r6, r7]
	cmp r0, #3
	bge _021EB8E4
	add r1, #0x36
	ldrb r1, [r1]
	b _021EB8EC
_021EB8E4:
	add r1, #0x36
	ldrb r1, [r1]
	add r1, r1, #2
	sub r1, r1, r0
_021EB8EC:
	cmp r1, #0
	blt _021EB8FC
	cmp r1, #3
	bge _021EB8FC
	add r0, r5, #0
	mov r2, #0
	bl ovy82_21eb92c
_021EB8FC:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB8C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy82_21eb8b8

	thumb_func_start ovy82_21eb904
ovy82_21eb904: ; 0x021EB904
	push {r4, r5}
	mov r1, #0
	mov r4, #1
_021EB90A:
	lsl r3, r1, #2
	add r5, r0, r3
	ldrh r3, [r5, #0x34]
	cmp r3, #0
	beq _021EB920
	add r3, r5, #0
	add r3, #0x36
	ldrb r3, [r3]
	cmp r2, r3
	beq _021EB920
	strh r4, [r5, #0x34]
_021EB920:
	add r1, r1, #1
	cmp r1, #3
	blt _021EB90A
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy82_21eb904

	thumb_func_start ovy82_21eb92c
ovy82_21eb92c: ; 0x021EB92C
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r0, #6
	add r4, r1, #0
	add r5, r2, #0
	bl sub_02045814
	mov r1, #0xe0
	mul r1, r4
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _021EB976
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB956: ; jump table
	.short _021EB95E - _021EB956 - 2 ; case 0
	.short _021EB95E - _021EB956 - 2 ; case 1
	.short _021EB96A - _021EB956 - 2 ; case 2
	.short _021EB96A - _021EB956 - 2 ; case 3
_021EB95E:
	cmp r5, #0
	bne _021EB966
	mov r0, #0
	b _021EB97C
_021EB966:
	mov r0, #1
	b _021EB97C
_021EB96A:
	cmp r5, #0
	bne _021EB972
	mov r0, #2
	b _021EB97C
_021EB972:
	mov r0, #3
	b _021EB97C
_021EB976:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EB97C:
	mov r2, #7
	str r2, [sp]
	lsl r0, r0, #0x18
	mul r2, r4
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #6
	bl sub_02045B7C
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy82_21eb92c

	thumb_func_start ovy82_21eb9a4
ovy82_21eb9a4: ; 0x021EB9A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	beq _021EB9F0
	ldr r0, _021EB9F4 ; =0x00003520
	ldr r6, [r5, r0]
	cmp r6, #3
	blt _021EB9F0
	add r7, r6, #0
	add r0, r0, #4
	sub r7, #0x1d
	ldr r4, [r5, r0]
	cmp r7, #2
	bge _021EB9C0
	mov r7, #2
_021EB9C0:
	bl sub_0203DF44
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _021EB9D6
	sub r4, r4, #3
	cmp r4, r7
	bge _021EB9EC
	add r4, r7, #0
	b _021EB9EC
_021EB9D6:
	bl sub_0203DF44
	mov r1, #2
	lsl r1, r1, #8
	lsr r1, r1, #1
	tst r0, r1
	beq _021EB9EC
	add r4, r4, #3
	cmp r4, r6
	ble _021EB9EC
	add r4, r6, #0
_021EB9EC:
	ldr r0, _021EB9F8 ; =0x00003524
	str r4, [r5, r0]
_021EB9F0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB9F4: .word 0x00003520
_021EB9F8: .word 0x00003524
	thumb_func_end ovy82_21eb9a4
_021EB9FC:
	.byte 0x00, 0x01, 0x02, 0x04
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00
	.byte 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x6E, 0x69, 0x6F, 0x6E, 0x5F, 0x73, 0x75, 0x62, 0x64, 0x69, 0x73, 0x70, 0x2E, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x63, 0x68, 0x61, 0x74, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x72, 0x69, 0x74, 0x65, 0x5F, 0x70, 0x6F, 0x73, 0x20, 0x3E, 0x20
	.byte 0x2D, 0x31, 0x00, 0x00, 0x76, 0x69, 0x65, 0x77, 0x5F, 0x6E, 0x6F, 0x3D, 0x25, 0x64, 0x2C, 0x20
	.byte 0x77, 0x72, 0x69, 0x74, 0x65, 0x5F, 0x70, 0x6F, 0x73, 0x3D, 0x25, 0x64, 0x2C, 0x20, 0x6F, 0x66
	.byte 0x66, 0x73, 0x65, 0x74, 0x3D, 0x25, 0x64, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	; 0x021EB9FC
