    .include "macros/function.inc"
	.include "overlay157.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy157_21f59e0
ovy157_21f59e0: ; 0x021F59E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	str r0, [sp]
	ldr r2, _021F5A24 ; =ovy157_21f5cbc
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x9c
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	ldr r2, [sp]
	add r1, r6, #0
	add r4, r0, #0
	bl ovy157_21f5b4c
	add r3, r4, #0
	add r6, r5, #0
	add r3, #0x48
	mov r2, #5
_021F5A10:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F5A10
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r5, #0x2c]
	strb r0, [r4, #1]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5A24: .word ovy157_21f5cbc
	thumb_func_end ovy157_21f59e0

	thumb_func_start ovy157_21f5a28
ovy157_21f5a28: ; 0x021F5A28
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _021F5A78 ; =ovy157_21f5ed4
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x9c
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r1, r6, #0
	add r2, r7, #0
	add r4, r0, #0
	bl ovy157_21f5b4c
	add r3, r4, #0
	add r6, r5, #0
	add r3, #0x48
	mov r2, #5
_021F5A58:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F5A58
	ldr r0, [r6]
	str r0, [r3]
	add r0, r4, #0
	ldr r1, [r5, #0x30]
	add r0, #0x90
	str r1, [r0]
	ldr r0, [r4, #0x44]
	add r1, r5, #0
	bl sub_020153B8
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5A78: .word ovy157_21f5ed4
	thumb_func_end ovy157_21f5a28

	thumb_func_start ovy157_21f5a7c
ovy157_21f5a7c: ; 0x021F5A7C
	push {r4, r5, r6, lr}
	ldr r2, _021F5AA0 ; =ovy157_21f5f38
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x9c
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r2, r4, #0
	bl ovy157_21f5b4c
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021F5AA0: .word ovy157_21f5f38
	thumb_func_end ovy157_21f5a7c

	thumb_func_start ovy157_21f5aa4
ovy157_21f5aa4: ; 0x021F5AA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	str r0, [sp]
	ldr r2, _021F5AE0 ; =ovy157_21f5fb0
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x9c
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	ldr r2, [sp]
	add r1, r6, #0
	add r4, r0, #0
	bl ovy157_21f5b4c
	add r4, #0x48
	mov r2, #5
_021F5AD0:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _021F5AD0
	ldr r0, [r5]
	str r0, [r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5AE0: .word ovy157_21f5fb0
	thumb_func_end ovy157_21f5aa4

	thumb_func_start ovy157_21f5ae4
ovy157_21f5ae4: ; 0x021F5AE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02016AF0
	add r6, r0, #0
	ldr r2, _021F5B14 ; =ovy157_21f6030
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x9c
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r2, r6, #0
	add r4, r0, #0
	bl ovy157_21f5b4c
	add r4, #0x8c
	mov r0, #0
	str r0, [r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5B14: .word ovy157_21f6030
	thumb_func_end ovy157_21f5ae4

	thumb_func_start ovy157_21f5b18
ovy157_21f5b18: ; 0x021F5B18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02016AF0
	add r6, r0, #0
	ldr r2, _021F5B48 ; =ovy157_21f6030
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x9c
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r2, r6, #0
	add r4, r0, #0
	bl ovy157_21f5b4c
	mov r0, #1
	add r4, #0x8c
	str r0, [r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5B48: .word ovy157_21f6030
	thumb_func_end ovy157_21f5b18

	thumb_func_start ovy157_21f5b4c
ovy157_21f5b4c: ; 0x021F5B4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	strh r0, [r5, #2]
	add r4, r1, #0
	ldrh r1, [r5, #2]
	ldr r0, _021F5BE0 ; =0x00007FFF
	str r2, [r5, #0x10]
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	strh r0, [r5, #4]
	add r0, r4, #0
	str r4, [r5, #8]
	bl sub_02016AD8
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x10]
	bl sub_02180490
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	bl sub_021804B8
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x10]
	bl sub_02180560
	str r0, [r5, #0x28]
	add r0, r4, #0
	bl sub_02016B08
	str r0, [r5, #0x44]
	ldrh r0, [r5, #2]
	bl sub_02170AC4
	str r0, [r5, #0x74]
	ldrh r0, [r5, #2]
	bl sub_0201361C
	mov r2, #0x67
	str r0, [r5, #0x3c]
	ldrh r3, [r5, #2]
	mov r0, #0
	mov r1, #3
	lsl r2, r2, #2
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x34]
	ldrh r2, [r5, #2]
	mov r0, #6
	mov r1, #0x30
	bl sub_020241E4
	str r0, [r5, #0x38]
	ldrh r1, [r5, #2]
	mov r0, #0xa1
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	ldrh r1, [r5, #2]
	mov r0, #0xa1
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	ldr r0, [r5, #0x24]
	bl ovy12_216740c
	pop {r3, r4, r5, pc}
	nop
_021F5BE0: .word 0x00007FFF
	thumb_func_end ovy157_21f5b4c

	thumb_func_start ovy157_21f5be4
ovy157_21f5be4: ; 0x021F5BE4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x98
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x38]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x34]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x3c]
	bl sub_0201362C
	ldr r0, [r4, #0x74]
	bl sub_02170B00
	ldr r0, [r4, #0x24]
	bl ovy12_2167450
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy157_21f5be4

	thumb_func_start ovy157_21f5c1c
ovy157_21f5c1c: ; 0x021F5C1C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r7, r3, #0
	ldr r2, _021F5C5C ; =ovy157_21f5c78
	mov r1, #0
	mov r3, #0xc
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	str r0, [r4, #8]
	add r0, r6, #0
	mov r2, #0x13
	bl sub_02188498
	str r0, [r4, #4]
	add r3, sp, #0x18
	ldrh r3, [r3]
	mov r1, #0
	mov r2, #0
	bl sub_02188538
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_02016D68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5C5C: .word ovy157_21f5c78
	thumb_func_end ovy157_21f5c1c

	thumb_func_start ovy157_21f5c60
ovy157_21f5c60: ; 0x021F5C60
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0x10
	ldrh r4, [r4]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl ovy157_21f5c1c
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy157_21f5c60

	thumb_func_start ovy157_21f5c78
ovy157_21f5c78: ; 0x021F5C78
	push {r4, lr}
	add r4, r2, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F5C88
	cmp r0, #1
	beq _021F5CA2
	b _021F5CB0
_021F5C88:
	ldr r0, [r4, #4]
	bl sub_021885BC
	cmp r0, #0
	beq _021F5C9E
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F5CB0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F5C9E:
	mov r0, #0
	pop {r4, pc}
_021F5CA2:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0xf3
	tst r0, r1
	bne _021F5CB0
	mov r0, #0
	pop {r4, pc}
_021F5CB0:
	ldr r0, [r4, #4]
	bl sub_02188504
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy157_21f5c78

	thumb_func_start ovy157_21f5cbc
ovy157_21f5cbc: ; 0x021F5CBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #6
	bls _021F5CCE
	b _021F5ECA
_021F5CCE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5CDA: ; jump table
	.short _021F5CE8 - _021F5CDA - 2 ; case 0
	.short _021F5DE2 - _021F5CDA - 2 ; case 1
	.short _021F5E24 - _021F5CDA - 2 ; case 2
	.short _021F5E76 - _021F5CDA - 2 ; case 3
	.short _021F5E96 - _021F5CDA - 2 ; case 4
	.short _021F5E9E - _021F5CDA - 2 ; case 5
	.short _021F5EB2 - _021F5CDA - 2 ; case 6
_021F5CE8:
	ldr r0, [r4, #0xc]
	bl sub_02017934
	str r0, [sp, #0x14]
	bl sub_02010DEC
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_0200FB40
	str r0, [sp, #0x10]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _021F5D62
	add r0, r7, #0
	bl sub_02010E2C
	str r0, [sp, #0xc]
	add r1, r4, #0
	ldrb r2, [r4, #1]
	ldr r0, [r4, #0x44]
	add r1, #0x48
	bl sub_0201472C
	ldr r0, [r4, #0x44]
	bl sub_0201458C
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x48
	mov r7, #5
_021F5D26:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021F5D26
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	ldr r0, [r4, #0x44]
	add r1, #0x48
	bl sub_020153B8
	ldr r0, [sp, #0xc]
	cmp r0, #1
	blo _021F5D58
	ldr r0, [sp, #0x10]
	mov r1, #0xe3
	bl sub_0200F98C
	ldr r0, [sp, #0xc]
	cmp r0, #0xa
	blo _021F5D58
	ldr r0, [sp, #0x10]
	mov r1, #0xe4
	bl sub_0200F98C
_021F5D58:
	ldr r0, [r4, #8]
	ldr r1, _021F5ED0 ; =0x0000052B
	bl sub_0202FC08
	b _021F5D8A
_021F5D62:
	add r0, r7, #0
	bl sub_02010E00
	add r7, r0, #0
	cmp r7, #0xa
	blo _021F5D82
	ldr r0, [sp, #0x10]
	mov r1, #0xe1
	bl sub_0200F98C
	cmp r7, #0x32
	blo _021F5D82
	ldr r0, [sp, #0x10]
	mov r1, #0xe2
	bl sub_0200F98C
_021F5D82:
	ldr r0, [r4, #8]
	ldr r1, _021F5ED0 ; =0x0000052B
	bl sub_0202FAB4
_021F5D8A:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r4, #0x44]
	bl sub_020146FC
	ldrb r2, [r4, #1]
	ldr r1, [r4, #0xc]
	bl sub_020150DC
	mov r0, #7
	bl sub_02038BC8
	ldr r0, [r4, #0x10]
	bl sub_021804D8
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02160EB4
	add r1, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_02014844
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	mov r2, #1
	mov r3, #1
	bl sub_02187CA0
	str r0, [r4, #0x18]
	bl sub_02187D38
	add r0, r4, #0
	bl sub_021F6258
_021F5DDC:
	ldr r0, [r5]
	add r0, r0, #1
_021F5DE0:
	b _021F5E72
_021F5DE2:
	bl sub_02005FA8
	cmp r0, #0
	bne _021F5ECA
	ldr r0, [r4, #0x10]
	bl sub_021804D8
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020173AC
	add r2, r0, #0
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl sub_02030078
	add r1, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021F5E12
	bl sub_0202FC08
	b _021F5E1A
_021F5E12:
	mov r1, #0
	mov r2, #6
	bl sub_0202F8A4
_021F5E1A:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	b _021F5DDC
_021F5E24:
	ldr r0, [r4, #0x18]
	bl sub_02187D38
	ldr r0, [r4, #0x18]
	bl sub_02187D10
	ldr r0, [r4, #0x10]
	bl sub_02180560
	bl sub_021B65E8
	ldr r0, [r4, #0x10]
	bl sub_021804D8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_021683F4
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _021F5E52
	mov r0, #6
	b _021F5DE0
_021F5E52:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	mov r2, #1
	mov r3, #0
	bl sub_021B870C
_021F5E66:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [r5]
	add r0, r0, #1
_021F5E72:
	str r0, [r5]
	b _021F5ECA
_021F5E76:
	ldr r0, [r4, #0x10]
	bl sub_02180524
	bl sub_021A2174
	ldr r0, [r4, #0x10]
	bl sub_02180508
	mov r1, #0xa
	bl sub_0219847C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl sub_020193A4
	b _021F5E66
_021F5E96:
	ldr r0, [r4, #8]
	bl sub_02019494
	b _021F5E66
_021F5E9E:
	mov r2, #1
	str r2, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	bl sub_021B878C
	b _021F5E66
_021F5EB2:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _021F5EBE
	ldr r0, [r4, #0x44]
	bl sub_02014774
_021F5EBE:
	add r0, r4, #0
	bl ovy157_21f5be4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F5ECA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5ED0: .word 0x0000052B
	thumb_func_end ovy157_21f5cbc

	thumb_func_start ovy157_21f5ed4
ovy157_21f5ed4: ; 0x021F5ED4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r3, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021F5EEA
	cmp r0, #1
	beq _021F5F10
	b _021F5F30
_021F5EEA:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r3, #0
	add r0, r0, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x34]
	bl ovy157_21f5c1c
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021F5F30
_021F5F10:
	add r1, r4, #0
	ldr r0, [r4, #0x44]
	add r1, #0x48
	bl sub_020153B8
	add r1, r4, #0
	ldr r0, [r4, #0x44]
	add r1, #0x48
	bl sub_02014964
	add r0, r4, #0
	bl ovy157_21f5be4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F5F30:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy157_21f5ed4

	thumb_func_start ovy157_21f5f38
ovy157_21f5f38: ; 0x021F5F38
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021F5F52
	cmp r0, #1
	beq _021F5F72
	cmp r0, #2
	beq _021F5F84
	b _021F5F96
_021F5F52:
	ldr r0, [r4, #0x10]
	bl sub_021812A0
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #0x69
	bl sub_021BB838
_021F5F62:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_021F5F6A:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021F5FA2
_021F5F72:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x34]
	add r1, r6, #0
	bl ovy157_21f5c60
	b _021F5F6A
_021F5F84:
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, _021F5FA8 ; =0x00000015
	ldr r2, _021F5FAC ; =0x0216E80D
	add r3, sp, #4
	bl sub_02016EA0
	b _021F5F62
_021F5F96:
	add r0, r4, #0
	bl ovy157_21f5be4
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F5FA2:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F5FA8: .word 0x00000015
_021F5FAC: .word 0x0216E80D
	thumb_func_end ovy157_21f5f38

	thumb_func_start ovy157_21f5fb0
ovy157_21f5fb0: ; 0x021F5FB0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r3, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021F5FCA
	cmp r0, #1
	beq _021F5FE2
	cmp r0, #2
	beq _021F6004
	b _021F6010
_021F5FCA:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #0
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x34]
	bl ovy157_21f5c60
_021F5FDA:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021F6028
_021F5FE2:
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x34]
	mov r2, #1
	mov r3, #1
	bl sub_02187CA0
	str r0, [r4, #0x18]
	bl sub_02187D38
	add r0, r4, #0
	bl sub_021F6260
	b _021F5FDA
_021F6004:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021F6028
	b _021F5FDA
_021F6010:
	ldr r0, [r4, #0x18]
	bl sub_02187D38
	ldr r0, [r4, #0x18]
	bl sub_02187D10
	add r0, r4, #0
	bl ovy157_21f5be4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F6028:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy157_21f5fb0

	thumb_func_start ovy157_21f6030
ovy157_21f6030: ; 0x021F6030
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #5
	bhi _021F60F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F604C: ; jump table
	.short _021F6058 - _021F604C - 2 ; case 0
	.short _021F6074 - _021F604C - 2 ; case 1
	.short _021F6090 - _021F604C - 2 ; case 2
	.short _021F60BE - _021F604C - 2 ; case 3
	.short _021F60C8 - _021F604C - 2 ; case 4
	.short _021F60D0 - _021F604C - 2 ; case 5
_021F6058:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, r6, #0
	add r0, r0, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x34]
	bl ovy157_21f5c60
_021F6072:
	b _021F6088
_021F6074:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x10]
	mov r2, #1
	mov r3, #0
	bl sub_021B870C
_021F6080:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_021F6088:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F610C
_021F6090:
	ldr r0, [r5, #0x10]
	bl sub_02180560
	bl sub_021B6690
	ldr r0, [r5, #0x44]
	bl sub_020147C4
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021F60BC
	ldr r0, [r5, #8]
	mov r2, #0x3c
	mov r3, #0x3c
	bl sub_0202FB24
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_021F60BC:
	b _021F6072
_021F60BE:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x10]
	bl sub_020193A4
	b _021F6080
_021F60C8:
	ldr r0, [r5, #8]
	bl sub_02019494
	b _021F6080
_021F60D0:
	ldr r0, [r5, #0x10]
	bl sub_02180508
	mov r1, #0
	mov r7, #0
	bl sub_0219847C
	mov r2, #1
	str r2, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x10]
	mov r3, #0
	bl sub_021B878C
	b _021F6080
_021F60F2:
	ldr r0, [r5, #0xc]
	bl sub_0201749C
	bl sub_0202EC3C
	cmp r0, #0
	bne _021F610C
	add r0, r5, #0
	bl ovy157_21f5be4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021F610C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy157_21f6030

	thumb_func_start ovy157_21f6114
ovy157_21f6114: ; 0x021F6114
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r1, r4, #0
	add r1, #0x98
	add r7, r2, #0
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	add r5, r3, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	lsl r2, r5, #4
	ldr r0, [r4, #0x18]
	add r2, #8
	add r4, #0x98
	lsl r2, r2, #0x10
	ldr r3, [r4]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl sub_02187D28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy157_21f6114

	thumb_func_start ovy157_21f6144
ovy157_21f6144: ; 0x021F6144
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x48
	bl sub_02014DCC
	add r2, r5, #0
	add r2, #0x94
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r2, [r2]
	mov r1, #8
	bl GFL_MsgDataLoadStrbuf
	add r1, r5, #0
	add r1, #0x98
	add r2, r5, #0
	ldrh r3, [r5, #4]
	ldr r0, [r5, #0x74]
	ldr r1, [r1]
	add r2, #0x48
	bl sub_02170D04
	mov r6, #1
	add r2, r5, #0
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r2, #0x98
	ldr r0, [r5, #0x38]
	ldr r2, [r2]
	mov r1, #0
	mov r3, #0
	mov r7, #0
	bl sub_0202437C
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy157_21f6114
	add r1, r5, #0
	add r1, #0x94
	add r2, r5, #0
	ldrh r3, [r5, #2]
	ldr r0, [r5, #0x74]
	ldr r1, [r1]
	add r2, #0x48
	bl ovy27_2170d90
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	mov r2, #0
	mov r3, #2
	bl ovy157_21f6114
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r7, [sp]
	str r0, [sp, #8]
	str r6, [sp, #4]
	ldr r0, [r5, #0x38]
	ldr r2, [sp, #8]
	mov r1, #2
	mov r3, #4
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r7, [sp]
	str r6, [sp, #4]
	add r2, r1, #0
	ldr r0, [r5, #0x38]
	mov r1, #3
	mov r3, #2
	bl sub_0202451C
	str r7, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, #0x38]
	lsl r2, r2, #1
	mov r1, #4
	lsr r2, r2, #0x12
	mov r3, #4
	bl sub_0202451C
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, [r5, #0x34]
	bne _021F6210
	mov r1, #0xc
	b _021F6212
_021F6210:
	mov r1, #0xb
_021F6212:
	add r2, r5, #0
	add r2, #0x94
	ldr r2, [r2]
	bl GFL_MsgDataLoadStrbuf
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	mov r2, #8
	mov r3, #7
	bl ovy157_21f6114
	add r1, r5, #0
	add r1, #0x58
	ldrh r1, [r1]
	add r2, r5, #0
	add r2, #0x94
	lsl r1, r1, #0x17
	lsr r1, r1, #0x1d
	ldr r0, [r5, #0x34]
	ldr r2, [r2]
	add r1, #0xd
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r5, #0x94
	ldr r1, [r5]
	mov r2, #8
	mov r3, #8
	bl ovy157_21f6114
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy157_21f6144

	thumb_func_start sub_021F6258
sub_021F6258: ; 0x021F6258
	ldr r3, _021F625C ; =ovy157_21f6144
	bx r3
	.align 2, 0
_021F625C: .word ovy157_21f6144
	thumb_func_end sub_021F6258

	thumb_func_start sub_021F6260
sub_021F6260: ; 0x021F6260
	ldr r3, _021F6264 ; =ovy157_21f6144
	bx r3
	.align 2, 0
_021F6264: .word ovy157_21f6144
	thumb_func_end sub_021F6260
_021F6268:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F6268
