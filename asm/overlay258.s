    .include "macros/function.inc"
	.include "overlay258.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy258_21998c0
ovy258_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	mov r2, #5
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x4f
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	mov r5, #0x8a
	lsl r5, r5, #2
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x4f
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	blx MI_CpuFill8
	str r6, [r4]
	mov r0, #0x4f
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x60]
	mov r0, #0x4f
	mov r1, #0x4f
	mov r2, #0x20
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0x64]
	add r0, r4, #0
	bl ovy258_2199b6c
	ldr r1, [r4]
	add r0, r4, #0
	ldrh r1, [r1, #0x14]
	mov r2, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy258_219b2b4
	sub r5, #0x78
	mov r0, #1
	mov r1, #0x4f
	str r7, [r4, r5]
	bl sub_02042BA8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy258_21998c0

	thumb_func_start ovy258_2199934
ovy258_2199934: ; 0x02199934
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #0xf
	bhi _021999F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219994C: ; jump table
	.short _0219996C - _0219994C - 2 ; case 0
	.short _02199974 - _0219994C - 2 ; case 1
	.short _0219997C - _0219994C - 2 ; case 2
	.short _02199984 - _0219994C - 2 ; case 3
	.short _0219998C - _0219994C - 2 ; case 4
	.short _02199994 - _0219994C - 2 ; case 5
	.short _0219999C - _0219994C - 2 ; case 6
	.short _021999A4 - _0219994C - 2 ; case 7
	.short _021999AC - _0219994C - 2 ; case 8
	.short _021999B4 - _0219994C - 2 ; case 9
	.short _021999B8 - _0219994C - 2 ; case 10
	.short _021999C0 - _0219994C - 2 ; case 11
	.short _021999CC - _0219994C - 2 ; case 12
	.short _021999D8 - _0219994C - 2 ; case 13
	.short _021999E0 - _0219994C - 2 ; case 14
	.short _021999E8 - _0219994C - 2 ; case 15
_0219996C:
	add r0, r5, #0
	bl ovy258_219a074
	b _021999EE
_02199974:
	add r0, r5, #0
	bl ovy258_219a08c
	b _021999EE
_0219997C:
	add r0, r5, #0
	bl ovy258_219a1bc
	b _021999EE
_02199984:
	add r0, r5, #0
	bl ovy258_219a228
	b _021999EE
_0219998C:
	add r0, r5, #0
	bl ovy258_219a270
	b _021999EE
_02199994:
	add r0, r5, #0
	bl ovy258_219a2d0
	b _021999EE
_0219999C:
	add r0, r5, #0
	bl ovy258_219a318
	b _021999EE
_021999A4:
	add r0, r5, #0
	bl ovy258_219a330
	b _021999EE
_021999AC:
	add r0, r5, #0
	bl ovy258_219a364
	b _021999EE
_021999B4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021999B8:
	add r0, r5, #0
	bl ovy258_219b338
	b _021999EE
_021999C0:
	add r0, r5, #0
	bl ovy258_219b364
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021999CC:
	add r0, r5, #0
	bl ovy258_219b3d8
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021999D8:
	add r0, r5, #0
	bl ovy258_219b8e8
	b _021999EE
_021999E0:
	add r0, r5, #0
	bl ovy258_219b934
	b _021999EE
_021999E8:
	add r0, r5, #0
	bl ovy258_219b954
_021999EE:
	str r0, [r4]
_021999F0:
	add r0, r5, #0
	bl ovy258_2199b50
	bl sub_0204B794
	ldr r0, [r5, #0x64]
	bl sub_0203A7F4
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021A3C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy258_2199934

	thumb_func_start ovy258_2199a10
ovy258_2199a10: ; 0x02199A10
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy258_2199c20
	ldr r0, [r4, #0x64]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x60]
	bl sub_02022DA8
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x4f
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_2199a10

	thumb_func_start ovy258_2199a38
ovy258_2199a38: ; 0x02199A38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x4f
	mov r4, #0x4f
	bl sub_02021998
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r5, r1]
	str r1, [sp, #4]
	str r4, [sp]
	ldr r3, [sp, #4]
	ldr r2, [r5, #0x60]
	ldr r3, [r5, r3]
	mov r0, #4
	mov r1, #0xa
	bl sub_0202E168
	ldr r1, [sp, #4]
	mov r4, #0
	sub r1, #0x3c
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	str r0, [sp, #0xc]
	sub r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	sub r0, #0x30
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, #0x2c
	str r0, [sp, #4]
_02199A7C:
	ldr r0, _02199AFC ; =0x0219B9D4
	lsl r1, r4, #3
	add r7, r0, r1
	mov r0, #0xc
	ldr r2, _02199AFC ; =0x0219B9D4
	mul r0, r4
	add r6, r5, r0
	ldr r0, [r5, #0x44]
	ldr r1, [r2, r1]
	bl sub_0204898C
	ldr r1, [sp, #0xc]
	add r4, r4, #1
	str r0, [r6, r1]
	ldr r1, _02199B00 ; =0x000039E3
	ldr r0, [sp, #8]
	cmp r4, #2
	strh r1, [r6, r0]
	ldr r1, [r7, #4]
	ldr r0, [sp, #4]
	str r1, [r6, r0]
	blt _02199A7C
	mov r0, #0x7f
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #0x7f
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #8
	mov r4, #0
	str r0, [sp, #0x10]
_02199ABC:
	ldr r0, _02199B04 ; =0x0219B9C4
	lsl r1, r4, #3
	add r7, r0, r1
	mov r0, #0xc
	ldr r2, _02199B04 ; =0x0219B9C4
	mul r0, r4
	add r6, r5, r0
	ldr r0, [r5, #0x44]
	ldr r1, [r2, r1]
	bl sub_0204898C
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	ldr r1, _02199B00 ; =0x000039E3
	ldr r0, [sp, #0x14]
	cmp r4, #2
	strh r1, [r6, r0]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x10]
	str r1, [r6, r0]
	blt _02199ABC
	mov r0, #0x22
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199AFC: .word 0x0219B9D4
_02199B00: .word 0x000039E3
_02199B04: .word 0x0219B9C4
	thumb_func_end ovy258_2199a38

	thumb_func_start ovy258_2199b08
ovy258_2199b08: ; 0x02199B08
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl ovy258_219b688
	mov r4, #0x79
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r4, #0x34
	ldr r0, [r5, r4]
	bl sub_02021A18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy258_2199b08

	thumb_func_start ovy258_2199b50
ovy258_2199b50: ; 0x02199B50
	push {r3, r4, r5, lr}
	mov r5, #0x22
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _02199B6A
	bl sub_0202E37C
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0202E37C
_02199B6A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_2199b50

	thumb_func_start ovy258_2199b6c
ovy258_2199b6c: ; 0x02199B6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02199C14 ; =0xFFFFE0FF
	mov r6, #0x4f
	and r1, r0
	str r1, [r2]
	ldr r2, _02199C18 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0x7d
	mov r1, #0x4f
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_02199C80
	bl ovy258_2199c90
	add r0, r5, #0
	add r1, r4, #0
	bl ovy258_2199e7c
	add r0, r5, #0
	add r1, r4, #0
	bl ovy258_219b1d8
	add r0, r5, #0
	bl ovy258_219a010
	add r0, r5, #0
	bl ovy258_2199f64
	add r0, r5, #0
	bl ovy258_219a8fc
	add r0, r5, #0
	bl ovy258_219a390
	add r0, r5, #0
	bl ovy258_219a484
	add r0, r5, #0
	bl ovy258_219b41c
	add r0, r5, #0
	bl ovy258_219b818
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	str r6, [sp, #8]
	bl GFL_FadeScreenSet
	mov r0, #1
	bl sub_02046DF8
	ldr r0, _02199C1C ; =ovy258_2199c58
	add r1, r5, #0
	mov r2, #0x10
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x68]
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, r5, #0
	bl ovy258_2199a38
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02199C14: .word 0xFFFFE0FF
_02199C18: .word 0x04001000
_02199C1C: .word ovy258_2199c58
	thumb_func_end ovy258_2199b6c

	thumb_func_start ovy258_2199c20
ovy258_2199c20: ; 0x02199C20
	push {r4, lr}
	add r4, r0, #0
	bl ovy258_2199b08
	add r0, r4, #0
	bl sub_0219B454
	add r0, r4, #0
	bl sub_0219A98C
	add r0, r4, #0
	bl ovy258_2199fe8
	add r0, r4, #0
	bl sub_02199F54
	bl ovy258_2199e38
	add r0, r4, #0
	bl ovy258_219a050
	add r0, r4, #0
	bl ovy258_219ae6c
	ldr r0, [r4, #0x68]
	bl GFL_TCBRemove
	pop {r4, pc}
	thumb_func_end ovy258_2199c20

	thumb_func_start ovy258_2199c58
ovy258_2199c58: ; 0x02199C58
	push {r3, lr}
	add r0, r1, #0
	bl ovy258_219b0e0
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r3, _02199C78 ; =0x02FE0000
	ldr r1, _02199C7C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_02199C78: .word 0x02FE0000
_02199C7C: .word 0x00003FF8
	thumb_func_end ovy258_2199c58

	thumb_func_start sub_02199C80
sub_02199C80: ; 0x02199C80
	ldr r0, _02199C88 ; =0x0219BA28
	ldr r3, _02199C8C ; =sub_02046C40
	bx r3
	nop
_02199C88: .word 0x0219BA28
_02199C8C: .word sub_02046C40
	thumb_func_end sub_02199C80

	thumb_func_start ovy258_2199c90
ovy258_2199c90: ; 0x02199C90
	push {r3, r4, r5, lr}
	sub sp, #0xd0
	mov r0, #0x4f
	bl sub_020444A4
	mov r0, #0x4f
	bl sub_02048080
	ldr r4, _02199E14 ; =0x0219BA58
	add r3, sp, #0xc0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _02199E18 ; =0x0219BAC8
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
	mov r0, #2
	mov r2, #0
	mov r4, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045738
	ldr r5, _02199E1C ; =0x0219BB08
	add r3, sp, #0x80
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
	bl sub_0204476C
	mov r0, #3
	bl sub_02045738
	ldr r5, _02199E20 ; =0x0219BA68
	add r3, sp, #0x60
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
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	bl sub_02045738
	ldr r5, _02199E24 ; =0x0219BA88
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
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	bl sub_02045738
	ldr r5, _02199E28 ; =0x0219BAA8
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
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	ldr r5, _02199E2C ; =0x0219BAE8
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
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r0, #7
	bl sub_02045738
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4f
	bl sub_020450CC
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4f
	bl sub_020450CC
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4f
	bl sub_020450CC
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4f
	bl sub_020450CC
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x4f
	bl sub_020450CC
	ldr r0, _02199E30 ; =0x04000050
	strh r4, [r0]
	ldr r0, _02199E34 ; =0x04001050
	strh r4, [r0]
	add sp, #0xd0
	pop {r3, r4, r5, pc}
	nop
_02199E14: .word 0x0219BA58
_02199E18: .word 0x0219BAC8
_02199E1C: .word 0x0219BB08
_02199E20: .word 0x0219BA68
_02199E24: .word 0x0219BA88
_02199E28: .word 0x0219BAA8
_02199E2C: .word 0x0219BAE8
_02199E30: .word 0x04000050
_02199E34: .word 0x04001050
	thumb_func_end ovy258_2199c90

	thumb_func_start ovy258_2199e38
ovy258_2199e38: ; 0x02199E38
	push {r3, lr}
	mov r0, #0x1d
	mov r1, #0
	bl sub_02046D84
	mov r0, #5
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	ldr r2, _02199E78 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bl sub_02044528
	pop {r3, pc}
	nop
_02199E78: .word 0x04000304
	thumb_func_end ovy258_2199e38

	thumb_func_start ovy258_2199e7c
ovy258_2199e7c: ; 0x02199E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0
	add r4, r1, #0
	str r7, [sp]
	add r6, r0, #0
	str r7, [sp, #4]
	mov r5, #0x4f
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	mov r0, #1
	lsl r0, r0, #0xb
	str r0, [sp]
	str r7, [sp, #4]
	str r0, [sp, #0xc]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B0D4
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	ldr r0, [sp, #0xc]
	mov r1, #2
	str r0, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	add r0, r4, #0
	mov r4, #0x71
	lsl r4, r4, #2
	mov r1, #3
	mov r2, #0
	add r3, r6, r4
	str r5, [sp]
	bl sub_0204B32C
	sub r1, r4, #4
	str r0, [r6, r1]
	mov r6, #0x20
	str r6, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	sub r3, r4, #4
	str r5, [sp, #4]
	bl sub_0204B0B8
	str r6, [sp]
	add r4, #0x1c
	str r5, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r2, r7, #0
	add r3, r4, #0
	bl sub_0204B0B8
	str r6, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r4, #0
	str r5, [sp, #4]
	bl sub_0204B0B8
	mov r0, #4
	mov r1, #1
	mov r2, #0xd
	add r3, r7, #0
	str r5, [sp]
	bl sub_02024D00
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy258_2199e7c

	thumb_func_start sub_02199F54
sub_02199F54: ; 0x02199F54
	mov r1, #7
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r3, _02199F60 ; =sub_0203A24C
	bx r3
	nop
_02199F60: .word sub_0203A24C
	thumb_func_end sub_02199F54

	thumb_func_start ovy258_2199f64
ovy258_2199f64: ; 0x02199F64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _02199FE4 ; =0x0219BBF8
	add r6, r0, #0
	mov r4, #0
_02199F6E:
	mov r0, #0x1c
	mul r0, r4
	add r3, r7, r0
	lsl r1, r4, #2
	add r5, r6, r1
	ldr r1, [r3, #0x10]
	ldr r0, [r7, r0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r1, [r3, #4]
	ldr r3, [r3, #0xc]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BmpWin_CreateDynamic
	str r0, [r5, #4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r4, r4, #1
	cmp r4, #0x10
	blo _02199F6E
	ldr r4, [r6, #0x28]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	mov r3, #0x4f
	bl sub_0202E7A4
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r6, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02199FE4: .word 0x0219BBF8
	thumb_func_end ovy258_2199f64

	thumb_func_start ovy258_2199fe8
ovy258_2199fe8: ; 0x02199FE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202E818
	mov r4, #0
_02199FF8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #0x10
	blo _02199FF8
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy258_2199fe8

	thumb_func_start ovy258_219a010
ovy258_219a010: ; 0x0219A010
	push {r4, lr}
	ldr r2, _0219A04C ; =0x00000191
	add r4, r0, #0
	mov r0, #0
	mov r1, #2
	mov r3, #0x4f
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x44]
	mov r0, #0x4f
	bl GFL_WordSetSystemCreateDefault
	str r0, [r4, #0x48]
	mov r0, #0x4f
	add r0, #0xb1
	mov r1, #0x4f
	bl GFL_StrBufCreate
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x44]
	mov r1, #0x19
	bl sub_0204898C
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x44]
	mov r1, #0x1f
	bl sub_0204898C
	str r0, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0
_0219A04C: .word 0x00000191
	thumb_func_end ovy258_219a010

	thumb_func_start ovy258_219a050
ovy258_219a050: ; 0x0219A050
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x48]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x4c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x50]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x54]
	bl GFL_StrBufFree
	pop {r4, pc}
	thumb_func_end ovy258_219a050

	thumb_func_start ovy258_219a074
ovy258_219a074: ; 0x0219A074
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219A088
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	pop {r4, pc}
_0219A088:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy258_219a074

	thumb_func_start ovy258_219a08c
ovy258_219a08c: ; 0x0219A08C
	push {r4, r5, r6, lr}
	mov r6, #0x72
	add r4, r0, #0
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_0202BA60
	add r1, r6, #4
	strh r0, [r4, r1]
	ldr r0, [r4, r6]
	bl sub_0202B768
	mov r1, #3
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _0219A0DC
	bhs _0219A0DA
	cmp r5, #8
	bhi _0219A0D2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219A0C0: ; jump table
	.short _0219A0EE - _0219A0C0 - 2 ; case 0
	.short _0219A0EE - _0219A0C0 - 2 ; case 1
	.short _0219A0EE - _0219A0C0 - 2 ; case 2
	.short _0219A0EE - _0219A0C0 - 2 ; case 3
	.short _0219A1B4 - _0219A0C0 - 2 ; case 4
	.short _0219A1B4 - _0219A0C0 - 2 ; case 5
	.short _0219A126 - _0219A0C0 - 2 ; case 6
	.short _0219A162 - _0219A0C0 - 2 ; case 7
	.short _0219A126 - _0219A0C0 - 2 ; case 8
_0219A0D2:
	mov r6, #7
	mvn r6, r6
	cmp r5, r6
	beq _0219A17C
_0219A0DA:
	b _0219A1B4
_0219A0DC:
	add r0, r1, #2
	cmp r5, r0
	bhi _0219A0E8
	bhs _0219A14A
	add r0, r1, #1
	b _0219A0EA
_0219A0E8:
	add r0, r1, #3
_0219A0EA:
	cmp r5, r0
	b _0219A1B4
_0219A0EE:
	bl sub_0203DA48
	cmp r0, #0
	ldr r0, [r4]
	bne _0219A112
	ldrh r0, [r0, #0x16]
	sub r6, #0x10
	add r1, r0, r5
	ldrb r0, [r4, r6]
	cmp r1, r0
	bhs _0219A1B4
	ldr r0, _0219A1B8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy258_219b954
	pop {r4, r5, r6, pc}
_0219A112:
	ldrh r0, [r0, #0x16]
	sub r6, #0x10
	add r1, r0, r5
	ldrb r0, [r4, r6]
	cmp r1, r0
	bhs _0219A1B4
	ldr r0, _0219A1B8 ; =0x0000054C
	bl GFL_SndSEPlay
	b _0219A1B4
_0219A126:
	ldr r0, _0219A1B8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_0219B728
	cmp r0, #0
	beq _0219A140
	add r0, r4, #0
	mov r1, #0xe
	bl ovy258_219b8c4
	pop {r4, r5, r6, pc}
_0219A140:
	add r0, r4, #0
	mov r1, #0xe
	bl ovy258_219b87c
	pop {r4, r5, r6, pc}
_0219A14A:
	ldr r0, _0219A1B8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	bl ovy258_219b688
	add r0, r4, #0
	mov r1, #0xe
	bl ovy258_219b87c
	pop {r4, r5, r6, pc}
_0219A162:
	add r0, r4, #0
	bl sub_0219B728
	cmp r0, #0
	beq _0219A1B4
	ldr r0, _0219A1B8 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0xf
	bl ovy258_219b89c
	pop {r4, r5, r6, pc}
_0219A17C:
	ldr r0, [r4]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _0219A1B4
	ldr r0, _0219A1B8 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r1, [r4]
	ldrh r0, [r1, #0x16]
	sub r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r4, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r4, #0
	bl ovy258_219a998
	add r0, r4, #0
	bl ovy258_219a8ac
	add r0, r4, #0
	bl ovy258_219b73c
	add r0, r4, #0
	add r1, r6, #7
	bl ovy258_219b7a8
_0219A1B4:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219A1B8: .word 0x0000054C
	thumb_func_end ovy258_219a08c

	thumb_func_start ovy258_219a1bc
ovy258_219a1bc: ; 0x0219A1BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	bl sub_020223B4
	mov r6, #0x87
	lsl r6, r6, #2
	add r4, r0, #0
	ldr r0, [r5, r6]
	ldr r1, [r5, #0x6c]
	ldr r2, [r5, #0x20]
	bl sub_0202E8D8
	cmp r4, #0
	bne _0219A1EE
	bl sub_0203DF20
	mov r1, #1
	tst r0, r1
	beq _0219A220
	ldr r0, [r5, #0x6c]
	mov r1, #0
	bl sub_020223E0
	b _0219A220
_0219A1EE:
	cmp r4, #2
	bne _0219A1FE
	ldr r0, [r5, #0x6c]
	bl sub_020223CC
	sub r6, #0x6c
	ldr r0, [r5, r6]
	pop {r4, r5, r6, pc}
_0219A1FE:
	cmp r4, #1
	bne _0219A220
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _0219A214
	bl sub_0203DA48
	cmp r0, #0
	beq _0219A220
_0219A214:
	ldr r0, [r5, #0x6c]
	bl sub_020223BC
	ldr r0, _0219A224 ; =0x00000547
	bl GFL_SndSEPlay
_0219A220:
	mov r0, #2
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219A224: .word 0x00000547
	thumb_func_end ovy258_219a1bc

	thumb_func_start ovy258_219a228
ovy258_219a228: ; 0x0219A228
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x4f
	mov r4, #0x7f
	str r0, [sp]
	mov r1, #2
	add r0, sp, #0
	lsl r4, r4, #2
	strb r1, [r0, #4]
	add r1, r5, r4
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #0x15
	strb r1, [r0, #0x10]
	mov r1, #8
	strb r1, [r0, #0x11]
	mov r1, #0xa
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r1, r4, #0
	sub r1, #0x20
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_0202D974
	sub r4, #0x1c
	str r0, [r5, r4]
	mov r0, #1
	bl ovy258_219b988
	mov r0, #4
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy258_219a228

	thumb_func_start ovy258_219a270
ovy258_219a270: ; 0x0219A270
	push {r4, r5, r6, lr}
	mov r4, #0x1e
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r6, #4
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219A2B0
	ldr r0, [r5, r4]
	bl sub_0202DC00
	cmp r0, #0
	bne _0219A29A
	sub r4, #0x26
	ldrb r1, [r5, r4]
	add r0, r5, #0
	lsl r2, r1, #3
	ldr r1, _0219A2C8 ; =0x0219BA00
	b _0219A2A4
_0219A29A:
	sub r4, #0x26
	ldrb r1, [r5, r4]
	add r0, r5, #0
	lsl r2, r1, #3
	ldr r1, _0219A2CC ; =0x0219BA04
_0219A2A4:
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	mov r0, #0
	bl ovy258_219b988
_0219A2B0:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0202DB70
	cmp r6, #4
	beq _0219A2C4
	ldr r0, [r5, r4]
	bl sub_0202DA54
_0219A2C4:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219A2C8: .word 0x0219BA00
_0219A2CC: .word 0x0219BA04
	thumb_func_end ovy258_219a270

	thumb_func_start ovy258_219a2d0
ovy258_219a2d0: ; 0x0219A2D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5]
	bl sub_0219AC10
	ldrb r1, [r4, #0x1b]
	add r2, r0, #0
	ldr r0, [r4]
	add r1, #0x36
	bl sub_0201CD1C
	ldr r1, [r5]
	mov r2, #0
	ldr r0, [r1]
	ldrb r1, [r1, #0x1b]
	mov r6, #0
	add r1, #0x3e
	bl sub_0201CD1C
	ldr r4, [r5]
	add r0, r5, #0
	bl sub_0219AC10
	mov r1, #0
	bl sub_020216B0
	ldrb r1, [r4, #0x1b]
	add r2, r0, #0
	ldr r0, [r4]
	add r1, #0x3a
	bl sub_0201CD1C
	ldr r0, [r5]
	strb r6, [r0, #0x1a]
	mov r0, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy258_219a2d0

	thumb_func_start ovy258_219a318
ovy258_219a318: ; 0x0219A318
	push {r4, lr}
	mov r1, #6
	add r4, r0, #0
	bl ovy258_219ac38
	mov r0, #0x1b
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy258_219a318

	thumb_func_start ovy258_219a330
ovy258_219a330: ; 0x0219A330
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	ldrb r1, [r1, #0x1b]
	cmp r1, #4
	bhs _0219A346
	mov r1, #0xa
	bl ovy258_219ac38
	mov r1, #4
	b _0219A34E
_0219A346:
	mov r1, #7
	bl ovy258_219ac38
	mov r1, #3
_0219A34E:
	ldr r0, _0219A360 ; =0x000001BA
	strb r1, [r4, r0]
	mov r0, #0x1b
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	nop
_0219A360: .word 0x000001BA
	thumb_func_end ovy258_219a330

	thumb_func_start ovy258_219a364
ovy258_219a364: ; 0x0219A364
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4f
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x1b
	mov r1, #9
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy258_219a364

	thumb_func_start ovy258_219a390
ovy258_219a390: ; 0x0219A390
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219AC10
	add r1, r0, #0
	ldr r0, _0219A3B8 ; =0x0000FFFF
	cmp r1, r0
	beq _0219A3A4
	add r0, r4, #0
	b _0219A3AA
_0219A3A4:
	mov r1, #1
	add r0, r4, #0
	mvn r1, r1
_0219A3AA:
	bl ovy258_219a998
	add r0, r4, #0
	bl ovy258_219b140
	pop {r4, pc}
	nop
_0219A3B8: .word 0x0000FFFF
	thumb_func_end ovy258_219a390

	thumb_func_start ovy258_219a3bc
ovy258_219a3bc: ; 0x0219A3BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	str r3, [sp, #8]
	cmp r0, #0
	beq _0219A3D8
	cmp r0, #1
	beq _0219A3DC
	cmp r0, #2
	beq _0219A400
	b _0219A426
_0219A3D8:
	mov r7, #0
	b _0219A426
_0219A3DC:
	ldr r0, [r5, #0x4c]
	add r1, r6, #0
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_020484D8
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r0, r0, r7
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	b _0219A426
_0219A400:
	ldr r0, [r5, #0x4c]
	add r1, r6, #0
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl sub_020484D8
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r1, r0, r7
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r7, r0, #0x18
_0219A426:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	bl BmpWin_GetBitmap
	str r6, [sp]
	ldr r1, [sp, #8]
	add r2, sp, #0x20
	str r1, [sp, #4]
	ldrb r2, [r2, #4]
	ldr r3, [r5, #0x4c]
	add r1, r7, #0
	bl sub_02021D28
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy258_219a3bc

	thumb_func_start ovy258_219a448
ovy258_219a448: ; 0x0219A448
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204898C
	add r4, r0, #0
	add r0, sp, #0x20
	ldrb r0, [r0]
	mov r1, #0
	add r2, r6, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x48]
	add r3, r7, #0
	bl StringSetNumber
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy258_219a448

	thumb_func_start ovy258_219a484
ovy258_219a484: ; 0x0219A484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x4c]
	mov r1, #0x23
	bl GFL_MsgDataLoadStrbuf
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r3, #0xf1
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #9
	lsl r3, r3, #6
	bl ovy258_219a3bc
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x4c]
	mov r1, #0x17
	bl GFL_MsgDataLoadStrbuf
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r3, #0x11
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #2
	lsl r3, r3, #6
	bl ovy258_219a3bc
	ldr r6, [r5, #0xc]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x4c]
	mov r1, #0x18
	bl GFL_MsgDataLoadStrbuf
	str r4, [sp]
	str r4, [sp, #4]
	mov r3, #0x11
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #3
	lsl r3, r3, #6
	mov r6, #3
	bl ovy258_219a3bc
	ldr r7, [r5, #0x10]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	add r6, #0xfd
	add r0, r6, #0
	mov r1, #0x4f
	mov r7, #0x4f
	bl GFL_StrBufCreate
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x14]
	mov r1, #0x27
	bl GFL_MsgDataLoadStrbuf
	ldr r2, [r5]
	ldr r0, [r5, #0x48]
	ldr r2, [r2]
	mov r1, #0
	bl sub_02024464
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	mov r3, #0xf1
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #0xd
	lsl r3, r3, #6
	bl ovy258_219a3bc
	ldr r6, [r5, #0x38]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r2, _0219A784 ; =0x00000193
	add r0, r4, #0
	mov r1, #2
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl GFL_MsgSysLoadData
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0201D624
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r7, r4, #0
	str r0, [sp, #0x1c]
	sub r0, #0x6f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	sub r0, #0x6f
	str r0, [sp, #0x18]
_0219A59A:
	add r1, r4, #0
	ldr r0, [sp, #0xc]
	add r1, #0x36
	add r2, r7, #0
	bl sub_0201CD88
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	bne _0219A5BC
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [sp, #0x18]
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl sub_0204C124
	b _0219A6A8
_0219A5BC:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [sp, #0x1c]
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy258_219b0a4
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x4c]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	lsl r6, r4, #5
	lsl r0, r6, #0x18
	mov r3, #0xf1
	str r7, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #0xe
	lsl r3, r3, #6
	bl ovy258_219a3bc
	ldr r0, [r5, #0x3c]
	add r6, #0x10
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x60]
	lsl r2, r6, #0x10
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r3, [r5, #0x50]
	mov r1, #8
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r0, [r5, #0x3c]
	str r0, [sp, #8]
	bl BmpWin_FlushChar
	ldr r0, [sp, #8]
	bl sub_0204826C
	ldr r0, [sp, #8]
	bl sub_020484D4
	bl sub_02045B7C
	add r1, r4, #0
	ldr r0, [sp, #0xc]
	add r1, #0x3a
	add r2, r7, #0
	bl sub_0201CD88
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x48]
	add r1, r7, #0
	mov r3, #2
	bl StringSetNumber
	add r1, r4, #0
	ldr r0, [sp, #0xc]
	add r1, #0x42
	add r2, r7, #0
	bl sub_0201CD88
	add r2, r0, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x48]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r2, [r5, #0x54]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x3c]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x60]
	lsl r2, r6, #0x10
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r3, [r5, #0x4c]
	mov r1, #0x20
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r6, [r5, #0x3c]
	add r0, r6, #0
	bl BmpWin_FlushChar
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02045B7C
_0219A6A8:
	add r4, r4, #1
	cmp r4, #4
	bhs _0219A6B0
	b _0219A59A
_0219A6B0:
	ldr r4, [r5, #0x3c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x14]
	mov r1, #0x25
	bl GFL_MsgDataLoadStrbuf
	ldr r2, [r5]
	ldr r0, [r5, #0x48]
	ldr r2, [r2]
	mov r1, #0
	bl sub_020243F4
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x60]
	mov r6, #0x11
	str r1, [sp]
	lsl r6, r6, #6
	str r6, [sp, #4]
	ldr r3, [r5, #0x4c]
	mov r1, #0
	mov r2, #0
	bl sub_02021D28
	ldr r4, [r5, #0x40]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x44]
	ldr r2, [sp, #0x14]
	mov r1, #0x26
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0xc]
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CD88
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #0xf
	add r3, r6, #0
	bl ovy258_219a3bc
	ldr r4, [r5, #0x40]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [sp, #0x10]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A784: .word 0x00000193
	thumb_func_end ovy258_219a484

	thumb_func_start ovy258_219a788
ovy258_219a788: ; 0x0219A788
	push {r3, r4}
	ldr r0, [r0]
	ldr r1, _0219A7AC ; =0x0000FFFF
	ldr r4, [r0, #0x10]
	mov r0, #1
	mov r3, #0
	lsl r0, r0, #8
_0219A796:
	lsl r2, r3, #1
	ldrh r2, [r4, r2]
	cmp r2, r1
	beq _0219A7A4
	add r3, r3, #1
	cmp r3, r0
	blo _0219A796
_0219A7A4:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	nop
_0219A7AC: .word 0x0000FFFF
	thumb_func_end ovy258_219a788

	thumb_func_start ovy258_219a7b0
ovy258_219a7b0: ; 0x0219A7B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x18
	add r4, r2, #0
	mul r4, r0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r1, r1, r2
	cmp r1, r0
	bge _0219A8A8
	ldr r0, [r5, #0x30]
	lsl r6, r1, #3
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x60]
	lsl r2, r4, #0x10
	str r1, [sp]
	mov r1, #0xf1
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r3, [r5, #0x58]
	mov r1, #0
	ldr r3, [r3, r6]
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r7, [r5, #0x30]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x30]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x60]
	lsl r2, r4, #0x10
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r3, [r5, #0x50]
	mov r1, #0x60
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r7, [r5, #0x30]
	add r0, r7, #0
	bl BmpWin_FlushChar
	add r0, r7, #0
	bl sub_0204826C
	add r0, r7, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x58]
	mov r1, #0
	add r0, r0, r6
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020216B0
	mov r7, #1
	str r7, [sp]
	add r6, r0, #0
	str r7, [sp, #4]
	ldr r0, [r5, #0x48]
	mov r1, #0
	add r2, r6, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x48]
	mov r1, #1
	add r2, r6, #0
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r2, [r5, #0x54]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x30]
	bl BmpWin_GetBitmap
	ldr r1, [r5, #0x60]
	lsl r2, r4, #0x10
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r3, [r5, #0x4c]
	mov r1, #0x78
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r4, [r5, #0x30]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_0219A8A8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy258_219a7b0

	thumb_func_start ovy258_219a8ac
ovy258_219a8ac: ; 0x0219A8AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
_0219A8BE:
	ldr r1, [r5]
	lsl r2, r4, #0x18
	ldrh r1, [r1, #0x16]
	add r0, r5, #0
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy258_219a7b0
	add r4, r4, #1
	cmp r4, #4
	blo _0219A8BE
	ldr r4, [r5, #0x30]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #7
	bl sub_02045B7C
	add r0, r5, #0
	bl ovy258_219b140
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_219a8ac

	thumb_func_start ovy258_219a8fc
ovy258_219a8fc: ; 0x0219A8FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy258_219a788
	mov r6, #0x6e
	lsl r6, r6, #2
	strb r0, [r5, r6]
	ldrb r0, [r5, r6]
	mov r1, #0x4f
	bl sub_02024F60
	add r2, r6, #0
	str r0, [r5, #0x58]
	mov r0, #0
	mov r1, #2
	sub r2, #0x25
	mov r3, #0x4f
	mov r4, #0
	bl GFL_MsgSysLoadData
	add r7, r0, #0
	ldrb r0, [r5, r6]
	cmp r0, #0
	bls _0219A968
	add r6, r5, r6
_0219A92E:
	ldr r0, [r5]
	ldr r1, [r0, #0x10]
	lsl r0, r4, #1
	ldrh r2, [r1, r0]
	ldr r0, _0219A984 ; =0x0000FFFF
	cmp r2, r0
	beq _0219A94C
	mov r0, #0x4f
	str r0, [sp]
	ldr r0, [r5, #0x58]
	add r1, r7, #0
	add r3, r2, #0
	bl sub_02024FBC
	b _0219A960
_0219A94C:
	mov r0, #0x4f
	str r0, [sp]
	mov r3, #0x20
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x44]
	mov r2, #0x20
	sub r3, #0x22
	bl sub_02024FBC
	b _0219A968
_0219A960:
	ldrb r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blo _0219A92E
_0219A968:
	add r0, r7, #0
	bl GFL_MsgDataFree
	ldr r0, _0219A988 ; =0x000001BB
	mov r1, #0
	strb r1, [r5, r0]
	ldr r1, [r5]
	add r0, r0, #1
	ldrh r1, [r1, #0x14]
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy258_219a8ac
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A984: .word 0x0000FFFF
_0219A988: .word 0x000001BB
	thumb_func_end ovy258_219a8fc

	thumb_func_start sub_0219A98C
sub_0219A98C: ; 0x0219A98C
	ldr r0, [r0, #0x58]
	ldr r3, _0219A994 ; =sub_02024FAC
	bx r3
	nop
_0219A994: .word sub_02024FAC
	thumb_func_end sub_0219A98C

	thumb_func_start ovy258_219a998
ovy258_219a998: ; 0x0219A998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x14]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x18]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	sub r0, r6, #2
	cmp r4, r0
	bne _0219A9DA
	b _0219AADC
_0219A9DA:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #3
	mov r7, #3
	bl sub_02021280
	add r2, r0, #0
	cmp r2, #1
	bhi _0219A9F8
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x4c]
	mov r1, #0x21
	bl GFL_MsgDataLoadStrbuf
	b _0219AA04
_0219A9F8:
	add r0, r5, #0
	mov r1, #0x1d
	add r3, r7, #0
	str r6, [sp]
	bl ovy258_219a448
_0219AA04:
	mov r0, #1
	str r0, [sp]
	mov r7, #0
	str r7, [sp, #4]
	mov r3, #0x11
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #4
	lsl r3, r3, #6
	bl ovy258_219a3bc
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	bl sub_02021280
	add r6, r0, #0
	beq _0219AA34
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0202174C
	cmp r0, #0
	beq _0219AA40
_0219AA34:
	ldr r0, [r5, #0x44]
	ldr r2, [r5, #0x4c]
	mov r1, #0x21
	bl GFL_MsgDataLoadStrbuf
	b _0219AA4E
_0219AA40:
	add r0, r5, #0
	mov r1, #0x1e
	add r2, r6, #0
	mov r3, #3
	str r7, [sp]
	bl ovy258_219a448
_0219AA4E:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r3, #0x11
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #5
	lsl r3, r3, #6
	bl ovy258_219a3bc
	ldr r2, _0219AB4C ; =0x00000192
	mov r0, #0
	mov r1, #2
	mov r3, #0x4f
	mov r6, #0x4f
	bl GFL_MsgSysLoadData
	ldr r2, [r5, #0x4c]
	add r1, r4, #0
	add r7, r0, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #0x11
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	mov r1, #6
	lsl r3, r3, #6
	bl ovy258_219a3bc
	add r0, r7, #0
	bl GFL_MsgDataFree
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy258_219b1b8
	add r6, #0xc1
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_0204C124
	ldr r4, [r5, #0xc]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x10]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	b _0219AB00
_0219AADC:
	ldr r4, [r5, #0xc]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x10]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
_0219AB00:
	ldr r4, [r5, #0x1c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x14]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	ldr r4, [r5, #0x18]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AB4C: .word 0x00000192
	thumb_func_end ovy258_219a998

	thumb_func_start ovy258_219ab50
ovy258_219ab50: ; 0x0219AB50
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0xa
	bhi _0219ABE0
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219AB66: ; jump table
	.short _0219AB7C - _0219AB66 - 2 ; case 0
	.short _0219AB8A - _0219AB66 - 2 ; case 1
	.short _0219AB8C - _0219AB66 - 2 ; case 2
	.short _0219AB8E - _0219AB66 - 2 ; case 3
	.short _0219AB90 - _0219AB66 - 2 ; case 4
	.short _0219AB92 - _0219AB66 - 2 ; case 5
	.short _0219ABA6 - _0219AB66 - 2 ; case 6
	.short _0219ABA8 - _0219AB66 - 2 ; case 7
	.short _0219ABAA - _0219AB66 - 2 ; case 8
	.short _0219ABC4 - _0219AB66 - 2 ; case 9
	.short _0219ABD2 - _0219AB66 - 2 ; case 10
_0219AB7C:
	ldr r2, [r4]
	ldr r0, [r4, #0x48]
	ldr r2, [r2]
	mov r1, #0
	bl sub_02024464
	b _0219ABE0
_0219AB8A:
	b _0219ABB8
_0219AB8C:
	b _0219AB7C
_0219AB8E:
	b _0219ABAA
_0219AB90:
	b _0219ABAA
_0219AB92:
	ldr r2, [r4]
	ldr r0, [r4, #0x48]
	ldr r2, [r2]
	mov r1, #0
	bl sub_02024464
	add r0, r4, #0
	bl ovy258_219ac20
	b _0219ABBC
_0219ABA6:
	b _0219ABAA
_0219ABA8:
	b _0219ABB8
_0219ABAA:
	ldr r2, [r4]
	ldr r0, [r4, #0x48]
	ldr r2, [r2]
	mov r1, #0
	bl sub_02024464
	add r0, r4, #0
_0219ABB8:
	bl sub_0219AC10
_0219ABBC:
	add r2, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #1
	b _0219ABDC
_0219ABC4:
	ldr r2, [r4]
	ldr r0, [r4, #0x48]
	ldr r2, [r2, #4]
	mov r1, #2
	bl GFL_CopyVarForText
	b _0219ABE0
_0219ABD2:
	bl ovy258_219ac20
	add r2, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #0
_0219ABDC:
	bl sub_020244A4
_0219ABE0:
	ldr r1, [r4]
	ldr r0, [r4, #0x44]
	ldrb r2, [r1, #0x19]
	mov r1, #0x2c
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0219AC0C ; =0x0219BB28
	lsl r2, r5, #2
	add r1, r1, r3
	ldr r1, [r2, r1]
	bl sub_0204898C
	add r5, r0, #0
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x4c]
	add r2, r5, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	bl GFL_StrBufFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219AC0C: .word 0x0219BB28
	thumb_func_end ovy258_219ab50

	thumb_func_start sub_0219AC10
sub_0219AC10: ; 0x0219AC10
	ldr r0, [r0]
	ldr r2, [r0, #0x10]
	ldrh r1, [r0, #0x16]
	ldrh r0, [r0, #0x14]
	add r0, r1, r0
	lsl r0, r0, #1
	ldrh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219AC10

	thumb_func_start ovy258_219ac20
ovy258_219ac20: ; 0x0219AC20
	push {r3, lr}
	ldr r1, [r0]
	mov r2, #0
	ldr r0, [r1]
	ldrb r1, [r1, #0x1b]
	add r1, #0x36
	bl sub_0201CCF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy258_219ac20

	thumb_func_start ovy258_219ac38
ovy258_219ac38: ; 0x0219AC38
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r2, #1
	mov r3, #0xd
	mov r6, #0
	bl sub_02024E80
	add r0, r5, #0
	add r1, r4, #0
	bl ovy258_219ab50
	bl sub_02017BCC
	ldr r1, [r5, #0x60]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x64]
	mov r1, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	mov r0, #0x4f
	str r0, [sp, #0x10]
	ldr r0, _0219ACA8 ; =0x0000FFFF
	str r0, [sp, #0x14]
	ldr r0, _0219ACAC ; =ovy258_219acd0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x20]
	ldr r3, [r5, #0x4c]
	bl sub_02022294
	ldr r4, [r5, #0x20]
	str r0, [r5, #0x6c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219ACA8: .word 0x0000FFFF
_0219ACAC: .word ovy258_219acd0
	thumb_func_end ovy258_219ac38

	thumb_func_start ovy258_219acb0
ovy258_219acb0: ; 0x0219ACB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl sub_02024EEC
	ldr r4, [r4, #0x20]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	thumb_func_end ovy258_219acb0

	thumb_func_start ovy258_219acd0
ovy258_219acd0: ; 0x0219ACD0
	push {r3, lr}
	cmp r0, #5
	bhi _0219AD2E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219ACE2: ; jump table
	.short _0219AD2E - _0219ACE2 - 2 ; case 0
	.short _0219ACEE - _0219ACE2 - 2 ; case 1
	.short _0219ACF4 - _0219ACE2 - 2 ; case 2
	.short _0219ACFA - _0219ACE2 - 2 ; case 3
	.short _0219AD02 - _0219ACE2 - 2 ; case 4
	.short _0219AD16 - _0219ACE2 - 2 ; case 5
_0219ACEE:
	bl sub_020062A8
	pop {r3, pc}
_0219ACF4:
	bl sub_020062A8
	pop {r3, pc}
_0219ACFA:
	ldr r0, _0219AD34 ; =0x0000056B
	bl GFL_SndSEPlay
	b _0219AD2E
_0219AD02:
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _0219AD38 ; =0x00000515
	ldr r1, _0219AD3C ; =0x0000FFFF
	bl sub_02005DF4
	b _0219AD2E
_0219AD16:
	bl sub_02005FA8
	cmp r0, #0
	bne _0219AD2A
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	b _0219AD2E
_0219AD2A:
	mov r0, #1
	pop {r3, pc}
_0219AD2E:
	mov r0, #0
	pop {r3, pc}
	nop
_0219AD34: .word 0x0000056B
_0219AD38: .word 0x00000515
_0219AD3C: .word 0x0000FFFF
	thumb_func_end ovy258_219acd0

	thumb_func_start ovy258_219ad40
ovy258_219ad40: ; 0x0219AD40
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0219AD48:
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x36
	add r2, r6, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0219AD64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _0219AD48
_0219AD64:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy258_219ad40

	thumb_func_start ovy258_219ad68
ovy258_219ad68: ; 0x0219AD68
	push {r4, lr}
	add r4, r0, #0
	mov r1, #3
	bl ovy258_219ac38
	add r0, r4, #0
	bl ovy258_219ad40
	ldr r1, [r4]
	strb r0, [r1, #0x1b]
	mov r0, #0x1b
	mov r1, #5
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ovy258_219ad68

	thumb_func_start ovy258_219ad88
ovy258_219ad88: ; 0x0219AD88
	push {r3, lr}
	bl ovy258_219acb0
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy258_219ad88
_0219AD94:
	.byte 0x00, 0x68, 0x01, 0x21, 0x81, 0x76, 0x08, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy258_219ada0
ovy258_219ada0: ; 0x0219ADA0
	push {r3, lr}
	bl ovy258_219acb0
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy258_219ada0
_0219ADAC:
	.byte 0x1B, 0x21, 0x0A, 0x22
	.byte 0x09, 0x01, 0x42, 0x50, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy258_219adb8
ovy258_219adb8: ; 0x0219ADB8
	push {r4, lr}
	mov r1, #7
	add r4, r0, #0
	bl ovy258_219ac38
	ldr r0, _0219ADD0 ; =0x000001BA
	mov r1, #3
	strb r1, [r4, r0]
	sub r0, #0xa
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
_0219ADD0: .word 0x000001BA
	thumb_func_end ovy258_219adb8

	thumb_func_start ovy258_219add4
ovy258_219add4: ; 0x0219ADD4
	push {r3, r4, r5, lr}
	mov r1, #8
	add r5, r0, #0
	mov r4, #8
	bl ovy258_219ac38
	mov r0, #0x1b
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5]
	mov r1, #1
	strb r1, [r0, #0x1a]
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_219add4

	thumb_func_start ovy258_219adf0
ovy258_219adf0: ; 0x0219ADF0
	push {r4, lr}
	mov r1, #4
	add r4, r0, #0
	bl ovy258_219ac38
	ldr r1, _0219AE08 ; =0x000001BA
	mov r0, #2
	strb r0, [r4, r1]
	mov r2, #3
	sub r1, #0xa
	str r2, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_0219AE08: .word 0x000001BA
	thumb_func_end ovy258_219adf0

	thumb_func_start ovy258_219ae0c
ovy258_219ae0c: ; 0x0219AE0C
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl ovy258_219ac38
	mov r0, #0x1b
	mov r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy258_219ae0c
_0219AE24:
	.byte 0x1B, 0x21, 0x0A, 0x22, 0x09, 0x01, 0x42, 0x50, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy258_219ae30
ovy258_219ae30: ; 0x0219AE30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219AE64 ; =0x0219B9E4
	ldr r1, _0219AE68 ; =0x0219BA28
	mov r2, #0x4f
	bl sub_0204B6A8
	mov r4, #0xe
	mov r0, #0xe
	mov r1, #0
	mov r2, #0x4f
	bl sub_0204BF1C
	add r4, #0xf2
	str r0, [r5, r4]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219AE64: .word 0x0219B9E4
_0219AE68: .word 0x0219BA28
	thumb_func_end ovy258_219ae30

	thumb_func_start ovy258_219ae6c
ovy258_219ae6c: ; 0x0219AE6C
	push {r4, r5, r6, lr}
	mov r6, #0x41
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0219AE76:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #0xe
	blo _0219AE76
	mov r4, #1
	lsl r4, r4, #8
	ldr r0, [r5, r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r4, #0x3c
	ldr r0, [r5, r4]
	bl sub_0204AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy258_219ae6c

	thumb_func_start ovy258_219aea0
ovy258_219aea0: ; 0x0219AEA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0xc]
	bl sub_0202D7E0
	mov r1, #0x4f
	mov r4, #0x4f
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_0202D814
	add r1, r0, #0
	str r4, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x70]
	ldr r0, [sp, #0xc]
	str r4, [sp]
	mov r1, #0x11
	mov r2, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x74]
	ldr r0, [sp, #0xc]
	mov r1, #0x1a
	mov r2, #0
	mov r3, #1
	str r4, [sp]
	bl sub_0204B81C
	str r0, [r5, #0x78]
	mov r4, #4
	mov r7, #0x4f
_0219AEEE:
	mov r0, #0
	bl sub_0202D7F4
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204B81C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x70]
	cmp r4, #8
	blo _0219AEEE
	ldr r0, [sp, #0xc]
	str r7, [sp]
	mov r1, #0x17
	mov r2, #0
	mov r3, #1
	mov r4, #1
	bl sub_0204B81C
	str r0, [r5, #0x7c]
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204BBB8
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #5
	mov r2, #1
	mov r3, #0x80
	str r7, [sp, #8]
	bl sub_0204BBB8
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
	bl sub_0202D7E4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #1
	mov r3, #0xc0
	str r7, [sp, #8]
	bl sub_0204BBB8
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1]
	bl sub_0202D7E4
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1]
	mov r0, #1
	bl sub_0202D818
	add r4, r0, #0
	mov r0, #1
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #7
	mov r2, #8
	add r3, r7, #0
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	mov r0, #1
	bl sub_0202D7F8
	add r4, r0, #0
	mov r0, #1
	bl sub_0202D7FC
	add r2, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #0x18
	mov r2, #0x19
	add r3, r7, #0
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #0x1b
	mov r2, #0x1c
	add r3, r7, #0
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, r7, #0
	bl sub_02033E24
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0201D620
	add r4, r0, #0
	bl sub_0201CC98
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_02033F90
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	mov r0, #0x80
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #4]
	bl sub_02033F2C
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp]
	bl sub_02034000
	add r5, #0xcc
	str r0, [r5]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl sub_0201CCC0
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy258_219aea0

	thumb_func_start ovy258_219b078
ovy258_219b078: ; 0x0219B078
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #0x18
	ldrh r1, [r1]
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	add r3, sp, #4
	bl sub_0204B2DC
	add r5, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_0204BA40
	add r0, r5, #0
	bl sub_0203A24C
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy258_219b078

	thumb_func_start ovy258_219b0a4
ovy258_219b0a4: ; 0x0219B0A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	mov r1, #0
	bl sub_02021280
	lsl r1, r4, #3
	mov r6, #5
	add r3, r5, r1
	lsl r6, r6, #6
	str r0, [r3, r6]
	lsl r0, r0, #0x18
	mov r2, #1
	add r1, r6, #4
	lsr r0, r0, #0x18
	str r2, [r3, r1]
	bl sub_0202D7E8
	add r4, #8
	add r1, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	sub r6, #0x3c
	ldr r0, [r0, r6]
	mov r2, #1
	bl sub_0204C378
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy258_219b0a4

	thumb_func_start ovy258_219b0e0
ovy258_219b0e0: ; 0x0219B0E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	sub r0, r0, #4
	str r0, [sp, #8]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r0, #4
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	mov r4, #0
	add r7, r0, #4
_0219B0FE:
	lsl r0, r4, #3
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _0219B134
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7F4
	add r2, r0, #0
	mov r0, #0x4f
	lsl r1, r4, #2
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r5, r1
	add r1, #0x80
	ldr r0, [r5, r0]
	ldr r1, [r1]
	mov r3, #0
	bl ovy258_219b078
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r6, r0]
_0219B134:
	add r4, r4, #1
	cmp r4, #8
	blt _0219B0FE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy258_219b0e0

	thumb_func_start ovy258_219b140
ovy258_219b140: ; 0x0219B140
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x45
	lsl r7, r7, #2
	add r6, r0, #0
	add r0, r7, #0
	str r0, [sp, #4]
	add r0, #0xa4
	mov r4, #0
	str r0, [sp, #4]
_0219B154:
	mov r1, #0x2f
	add r0, sp, #8
	strh r1, [r0]
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	add r1, #0x50
	add r0, sp, #8
	strh r1, [r0, #2]
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	add r1, sp, #8
	mov r2, #1
	bl sub_0204C140
	ldr r1, [r6]
	ldr r2, [sp, #4]
	ldrh r0, [r1, #0x16]
	ldrb r2, [r6, r2]
	add r0, r0, r4
	cmp r0, r2
	blo _0219B18C
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0204C124
	b _0219B1AE
_0219B18C:
	ldr r1, [r1, #0x10]
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	mov r1, #0
	bl sub_02021280
	str r0, [sp]
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_0204C124
	ldr r1, [sp]
	ldr r0, [r5, r7]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
_0219B1AE:
	add r4, r4, #1
	cmp r4, #4
	blo _0219B154
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy258_219b140

	thumb_func_start ovy258_219b1b8
ovy258_219b1b8: ; 0x0219B1B8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #2
	bl sub_02021280
	add r1, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy258_219b1b8

	thumb_func_start ovy258_219b1d8
ovy258_219b1d8: ; 0x0219B1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	bl ovy258_219ae30
	add r0, r5, #0
	add r1, r4, #0
	bl ovy258_219aea0
	bl sub_0202D7E0
	mov r4, #0x4f
	mov r1, #0x4f
	bl sub_0204AA30
	add r4, #0xed
	str r0, [r5, r4]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r0, #4
	mov r4, #0
	add r7, sp, #0x14
	str r0, [sp, #0xc]
_0219B210:
	mov r0, #0x2c
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219B2B0 ; =0x0219BDB8
	add r3, r0, r1
	ldrsh r0, [r0, r1]
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #0x18]
	strh r0, [r7]
	mov r0, #2
	ldrsh r0, [r3, r0]
	lsl r2, r2, #2
	lsl r1, r1, #2
	strh r0, [r7, #2]
	ldrh r0, [r3, #6]
	add r2, r5, r2
	add r1, r5, r1
	strh r0, [r7, #4]
	ldr r0, [r3, #8]
	add r2, #0x94
	strb r0, [r7, #6]
	ldr r0, [r3, #0x24]
	strb r0, [r7, #7]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r3, r3, #2
	str r0, [sp, #4]
	mov r0, #0x4f
	str r0, [sp, #8]
	add r3, r5, r3
	add r0, #0xb1
	add r3, #0xb8
	ldr r0, [r5, r0]
	ldr r1, [r1, #0x70]
	ldr r2, [r2]
	ldr r3, [r3]
	bl sub_0204C040
	ldr r1, [sp, #0x10]
	str r0, [r6, r1]
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #0xe
	blo _0219B210
	mov r4, #0x4e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x30
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	sub r4, #0x34
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219B2B0: .word 0x0219BDB8
	thumb_func_end ovy258_219b1d8

	thumb_func_start ovy258_219b2b4
ovy258_219b2b4: ; 0x0219B2B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #4
	bhs _0219B2E6
	mov r2, #0x82
	add r0, sp, #0
	strh r2, [r0]
	add r2, r1, #0
	mov r5, #0x18
	mul r2, r5
	add r2, #0x54
	strh r2, [r0, #2]
	mov r0, #0x18
	add r0, #0xf4
	ldr r0, [r4, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	add r5, #0xf4
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C4D4
	pop {r3, r4, r5, pc}
_0219B2E6:
	cmp r1, #6
	bhs _0219B314
	sub r1, r1, #4
	add r2, r1, #0
	mov r0, #0x28
	mul r2, r0
	add r0, sp, #0
	strh r2, [r0]
	mov r5, #0xa8
	strh r5, [r0, #2]
	mov r0, #0xa8
	add r0, #0x64
	ldr r0, [r4, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	add r5, #0x64
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C4D4
	pop {r3, r4, r5, pc}
_0219B314:
	mov r1, #0xc0
	add r0, sp, #0
	strh r1, [r0]
	mov r5, #0xa0
	strh r5, [r0, #2]
	mov r0, #0xa0
	add r0, #0x6c
	ldr r0, [r4, r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	add r5, #0x6c
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_0204C4D4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_219b2b4

	thumb_func_start ovy258_219b338
ovy258_219b338: ; 0x0219B338
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4f
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0x1b
	mov r1, #0xb
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy258_219b338

	thumb_func_start ovy258_219b364
ovy258_219b364: ; 0x0219B364
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy258_2199c20
	ldr r2, [r5]
	mov r6, #6
	ldr r0, [r2]
	lsl r6, r6, #6
	str r0, [r5, r6]
	ldr r1, [r2, #8]
	add r0, r6, #4
	str r1, [r5, r0]
	ldr r0, [r2, #0xc]
	bl sub_02016AD8
	add r1, r6, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, r6, #0
	mov r4, #0
	add r0, #0xc
	strb r4, [r5, r0]
	add r0, r6, #0
	add r0, #0xf
	strb r4, [r5, r0]
	add r0, r6, #0
	mov r1, #1
	add r0, #0xe
	strb r1, [r5, r0]
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r6, #0
	add r1, #0x14
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #2
	add r0, #0xd
	strb r1, [r5, r0]
	add r0, r6, #0
	add r0, #0x10
	strb r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x18
	str r4, [r5, r0]
	ldr r0, [r5]
	ldr r1, _0219B3D0 ; =0x000000CF
	ldr r0, [r0, #0xc]
	ldr r2, _0219B3D4 ; =0x021BB6A0
	add r3, r5, r6
	bl sub_02016A98
	mov r0, #0xc
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B3D0: .word 0x000000CF
_0219B3D4: .word 0x021BB6A0
	thumb_func_end ovy258_219b364

	thumb_func_start ovy258_219b3d8
ovy258_219b3d8: ; 0x0219B3D8
	push {r4, lr}
	add r4, r0, #0
	bl ovy258_2199b6c
	ldr r1, [r4]
	add r0, r4, #0
	ldrh r1, [r1, #0x14]
	mov r2, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy258_219b2b4
	mov r0, #1
	mov r1, #0x4f
	bl sub_02042BA8
	ldr r0, _0219B418 ; =0x00000192
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0219B406
	sub r0, r0, #1
	ldrb r1, [r4, r0]
	b _0219B408
_0219B406:
	mov r1, #4
_0219B408:
	ldr r0, [r4]
	strb r1, [r0, #0x1b]
	mov r0, #0x1b
	mov r1, #7
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0219B418: .word 0x00000192
	thumb_func_end ovy258_219b3d8

	thumb_func_start ovy258_219b41c
ovy258_219b41c: ; 0x0219B41C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4f
	str r0, [sp, #4]
	ldr r0, _0219B44C ; =0x0219BB80
	ldr r1, _0219B450 ; =0x0219B9B4
	add r2, r4, #0
	mov r3, #1
	bl sub_0202B650
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #8
	bl sub_0202BAA4
	add r0, r4, #0
	bl ovy258_219b73c
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0219B44C: .word 0x0219BB80
_0219B450: .word 0x0219B9B4
	thumb_func_end ovy258_219b41c

	thumb_func_start sub_0219B454
sub_0219B454: ; 0x0219B454
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219B460 ; =sub_0202B694
	bx r3
	nop
_0219B460: .word sub_0202B694
	thumb_func_end sub_0219B454
_0219B464:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy258_219b468
ovy258_219b468: ; 0x0219B468
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r6, r2, #0
	mov r7, #0
	bl ovy258_219b688
	cmp r4, #3
	bgt _0219B4AE
	ldr r0, _0219B574 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r5]
	strh r4, [r0, #0x14]
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	ldrh r0, [r0, #0x14]
	add r1, r1, r0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r1, r0
	bge _0219B4A8
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r5, #0
_0219B4A2:
	bl ovy258_219a998
	b _0219B564
_0219B4A8:
	add r0, r5, #0
	sub r1, r7, #2
	b _0219B4A2
_0219B4AE:
	cmp r4, #6
	bne _0219B55E
	cmp r6, #3
	bne _0219B504
	ldr r0, [r5]
	mov r7, #0x6e
	ldrh r0, [r0, #0x16]
	lsl r7, r7, #2
	add r1, r0, #4
	ldrb r0, [r5, r7]
	cmp r1, r0
	bge _0219B504
	ldr r0, _0219B574 ; =0x0000054C
	bl GFL_SndSEPlay
	add r7, #0x10
	ldr r0, [r5, r7]
	mov r1, #3
	mov r4, #3
	bl sub_0202BA64
	ldr r1, [r5]
	ldrh r0, [r1, #0x16]
	add r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	bl ovy258_219a8ac
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r5, #0
	bl ovy258_219a998
	add r0, r5, #0
	bl ovy258_219b73c
	add r0, r5, #0
	mov r1, #1
	bl ovy258_219b7a8
	b _0219B564
_0219B504:
	cmp r6, #0
	bne _0219B552
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _0219B542
	ldr r0, _0219B574 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r1, [r5]
	ldrh r0, [r1, #0x16]
	sub r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	bl ovy258_219a8ac
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r5, #0
	bl ovy258_219a998
	add r0, r5, #0
	bl ovy258_219b73c
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ovy258_219b7a8
_0219B542:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	mov r1, #0
_0219B54C:
	bl sub_0202BA64
	b _0219B564
_0219B552:
	mov r0, #0x72
	lsl r0, r0, #2
	mov r4, #3
	ldr r0, [r5, r0]
	mov r1, #3
	b _0219B54C
_0219B55E:
	ldr r0, _0219B574 ; =0x0000054C
	bl GFL_SndSEPlay
_0219B564:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	bl ovy258_219b2b4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B574: .word 0x0000054C
	thumb_func_end ovy258_219b468

	thumb_func_start ovy258_219b578
ovy258_219b578: ; 0x0219B578
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	bgt _0219B5BC
	ldr r1, [r5]
	strh r4, [r1, #0x14]
	ldr r1, [r5]
	ldrh r2, [r1, #0x16]
	ldrh r1, [r1, #0x14]
	add r2, r2, r1
	mov r1, #0x6e
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	cmp r2, r1
	bge _0219B5AE
	mov r1, #1
	bl ovy258_219b688
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r5, #0
_0219B5A8:
	bl ovy258_219a998
	b _0219B676
_0219B5AE:
	mov r1, #0
	mov r6, #0
	bl ovy258_219b688
	add r0, r5, #0
	sub r1, r6, #2
	b _0219B5A8
_0219B5BC:
	cmp r4, #4
	bne _0219B600
	ldr r0, _0219B684 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r1, [r5]
	ldrh r0, [r1, #0x16]
	ldrh r4, [r1, #0x14]
	add r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r5, #0
	bl ovy258_219a998
	add r0, r5, #0
	bl ovy258_219a8ac
	add r0, r5, #0
	mov r1, #0
	bl ovy258_219b688
	add r0, r5, #0
	bl ovy258_219b73c
	add r0, r5, #0
	mov r1, #1
_0219B5F6:
	bl ovy258_219b7a8
_0219B5FA:
	mov r0, #0x72
	lsl r0, r0, #2
	b _0219B66C
_0219B600:
	cmp r4, #5
	bne _0219B63E
	ldr r0, _0219B684 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r1, [r5]
	ldrh r0, [r1, #0x16]
	ldrh r4, [r1, #0x14]
	sub r0, r0, #1
	strh r0, [r1, #0x16]
	add r0, r5, #0
	bl sub_0219AC10
	add r1, r0, #0
	add r0, r5, #0
	bl ovy258_219a998
	add r0, r5, #0
	bl ovy258_219a8ac
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy258_219b688
	add r0, r5, #0
	bl ovy258_219b73c
	add r0, r5, #0
	sub r1, r6, #1
	b _0219B5F6
_0219B63E:
	cmp r4, #6
	bne _0219B64E
	mov r0, #0x73
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	cmp r1, #6
	beq _0219B676
	b _0219B666
_0219B64E:
	cmp r4, #7
	bne _0219B658
	ldr r0, [r5]
	ldrh r4, [r0, #0x14]
	b _0219B5FA
_0219B658:
	cmp r4, #8
	bne _0219B676
	mov r0, #0x73
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	cmp r1, #6
	beq _0219B676
_0219B666:
	ldr r1, [r5]
	sub r0, r0, #4
	ldrh r4, [r1, #0x14]
_0219B66C:
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_0202BA64
_0219B676:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	bl ovy258_219b2b4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B684: .word 0x0000054C
	thumb_func_end ovy258_219b578

	thumb_func_start ovy258_219b688
ovy258_219b688: ; 0x0219B688
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #1
	bne _0219B6EC
	mov r4, #0x22
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219B722
	mov r6, #9
	add r0, r4, #0
	add r1, r4, #0
	sub r1, #0x3c
	str r6, [sp]
	mov r7, #0x4f
	str r7, [sp, #4]
	sub r0, #0x44
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0xd
	mov r3, #0x15
	bl sub_0202E1F0
	str r0, [r5, r4]
	str r6, [sp]
	add r0, r4, #0
	add r1, r4, #0
	sub r1, #0x30
	str r7, [sp, #4]
	sub r0, #0x44
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0x16
	mov r3, #0x15
	bl sub_0202E1F0
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x58
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_0202BACC
	mov r0, #1
	sub r4, #0x52
	add sp, #8
	strh r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219B6EC:
	mov r4, #0x22
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219B710
	bl sub_0202E34C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0202E34C
	mov r0, #4
	bl sub_02044F90
	mov r1, #0
	str r1, [r5, r4]
	add r0, r4, #4
	str r1, [r5, r0]
_0219B710:
	mov r4, #0x72
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #8
	bl sub_0202BAA4
	mov r1, #0
	add r0, r4, #6
	strh r1, [r5, r0]
_0219B722:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy258_219b688

	thumb_func_start sub_0219B728
sub_0219B728: ; 0x0219B728
	mov r1, #0x22
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0219B736
	mov r0, #1
	bx lr
_0219B736:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B728

	thumb_func_start ovy258_219b73c
ovy258_219b73c: ; 0x0219B73C
	push {r3, r4, r5, lr}
	mov r4, #0x6e
	add r5, r0, #0
	lsl r4, r4, #2
	ldrb r0, [r5, r4]
	cmp r0, #4
	bhs _0219B762
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_0202BAA4
	add r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #5
	bl sub_0202BAA4
	pop {r3, r4, r5, pc}
_0219B762:
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _0219B776
	add r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #5
	bl sub_0202BAA4
	b _0219B780
_0219B776:
	add r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #5
	bl sub_0202BACC
_0219B780:
	ldr r0, [r5]
	ldrh r0, [r0, #0x16]
	add r2, r0, #4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r2, r1
	blt _0219B79C
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_0202BAA4
	pop {r3, r4, r5, pc}
_0219B79C:
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_0202BACC
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_219b73c

	thumb_func_start ovy258_219b7a8
ovy258_219b7a8: ; 0x0219B7A8
	push {r4, r5, r6, lr}
	mov r4, #0x42
	add r5, r0, #0
	lsl r4, r4, #2
	add r6, r1, #0
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C4D4
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C4D4
	cmp r6, #0
	ldr r0, [r5]
	ble _0219B7F8
	ldrh r0, [r0, #0x16]
	add r1, r0, #4
	add r0, r4, #0
	add r0, #0xb0
	ldrb r0, [r5, r0]
	cmp r1, r0
	bge _0219B7E0
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	b _0219B7E6
_0219B7E0:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0x17
_0219B7E6:
	bl sub_0204C488
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0204C488
	pop {r4, r5, r6, pc}
_0219B7F8:
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	ldr r0, [r5, r4]
	bne _0219B804
	mov r1, #0x18
	b _0219B806
_0219B804:
	mov r1, #0xb
_0219B806:
	bl sub_0204C488
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_0204C488
	pop {r4, r5, r6, pc}
	thumb_func_end ovy258_219b7a8

	thumb_func_start ovy258_219b818
ovy258_219b818: ; 0x0219B818
	push {r3, r4, r5, lr}
	mov r4, #0x6e
	add r5, r0, #0
	lsl r4, r4, #2
	ldrb r2, [r5, r4]
	cmp r2, #4
	bhi _0219B83E
	sub r4, #0xb0
	ldr r0, [r5, r4]
	mov r4, #0x11
	mov r1, #0x11
	bl sub_0204C488
	add r4, #0xf3
	ldr r0, [r5, r4]
	mov r1, #0x10
	bl sub_0204C488
	pop {r3, r4, r5, pc}
_0219B83E:
	ldr r0, [r5]
	ldrh r1, [r0, #0x16]
	add r0, r1, #4
	cmp r0, r2
	bge _0219B860
	sub r4, #0xb0
	ldr r0, [r5, r4]
	mov r4, #0x11
	mov r1, #0x11
	bl sub_0204C488
	add r4, #0xf3
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_0204C488
	pop {r3, r4, r5, pc}
_0219B860:
	cmp r1, #0
	bne _0219B87A
	add r0, r4, #0
	sub r0, #0xb0
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0204C488
	sub r4, #0xb4
	ldr r0, [r5, r4]
	mov r1, #0x10
	bl sub_0204C488
_0219B87A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_219b818

	thumb_func_start ovy258_219b87c
ovy258_219b87c: ; 0x0219B87C
	push {r4, lr}
	mov r2, #0x1d
	lsl r2, r2, #4
	add r4, r0, r2
	mov r3, #0
	strh r3, [r4, #0xa]
	mov r3, #0xd
	strh r3, [r4, #6]
	strh r1, [r4, #8]
	sub r2, #0x98
	ldr r0, [r0, r2]
	mov r1, #9
	bl sub_0204C488
	mov r0, #0xd
	pop {r4, pc}
	thumb_func_end ovy258_219b87c

	thumb_func_start ovy258_219b89c
ovy258_219b89c: ; 0x0219B89C
	push {r4, lr}
	mov r2, #0x1d
	lsl r2, r2, #4
	add r4, r0, r2
	mov r3, #1
	strh r3, [r4, #0xa]
	mov r3, #0
	strh r3, [r4, #6]
	strh r1, [r4, #8]
	ldrh r1, [r4, #6]
	add r2, #0x50
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, r2]
	mov r1, #1
	bl sub_0202E430
	mov r0, #0xd
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy258_219b89c

	thumb_func_start ovy258_219b8c4
ovy258_219b8c4: ; 0x0219B8C4
	push {r4, lr}
	mov r2, #0x1d
	lsl r2, r2, #4
	add r4, r0, r2
	mov r3, #1
	strh r3, [r4, #0xa]
	strh r3, [r4, #6]
	strh r1, [r4, #8]
	ldrh r1, [r4, #6]
	add r2, #0x50
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, r2]
	mov r1, #1
	bl sub_0202E430
	mov r0, #0xd
	pop {r4, pc}
	thumb_func_end ovy258_219b8c4

	thumb_func_start ovy258_219b8e8
ovy258_219b8e8: ; 0x0219B8E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r5, r0
	ldrh r1, [r4, #0xa]
	cmp r1, #0
	bne _0219B90E
	ldrh r1, [r4, #6]
	sub r0, #0xcc
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219B930
	ldrh r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0219B90E:
	cmp r1, #1
	bne _0219B930
	ldrh r1, [r4, #6]
	add r0, #0x50
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	bl sub_0202E438
	cmp r0, #0
	beq _0219B930
	add r0, r5, #0
	mov r1, #0
	bl ovy258_219b688
	ldrh r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0219B930:
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	thumb_func_end ovy258_219b8e8

	thumb_func_start ovy258_219b934
ovy258_219b934: ; 0x0219B934
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	bl ovy258_219ac38
	ldr r0, _0219B950 ; =0x000001BA
	mov r1, #1
	strb r1, [r4, r0]
	mov r1, #3
	sub r0, #0xa
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	nop
_0219B950: .word 0x000001BA
	thumb_func_end ovy258_219b934

	thumb_func_start ovy258_219b954
ovy258_219b954: ; 0x0219B954
	push {r4, lr}
	add r4, r0, #0
	bl ovy258_219ad40
	cmp r0, #4
	bhs _0219B96C
	add r0, r4, #0
	mov r1, #1
	bl ovy258_219ac38
	mov r1, #0
	b _0219B976
_0219B96C:
	add r0, r4, #0
	mov r1, #4
	bl ovy258_219ac38
	mov r1, #2
_0219B976:
	ldr r0, _0219B984 ; =0x000001BA
	strb r1, [r4, r0]
	mov r1, #3
	sub r0, #0xa
	str r1, [r4, r0]
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
_0219B984: .word 0x000001BA
	thumb_func_end ovy258_219b954

	thumb_func_start ovy258_219b988
ovy258_219b988: ; 0x0219B988
	push {r3, lr}
	cmp r0, #1
	ldr r0, _0219B9A4 ; =0x04001050
	bne _0219B99C
	mov r2, #0x1e
	mov r1, #0x1e
	sub r2, #0x26
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
_0219B99C:
	mov r1, #0
	strh r1, [r0]
	pop {r3, pc}
	nop
_0219B9A4: .word 0x04001050
	thumb_func_end ovy258_219b988
_0219B9A8:
	.byte 0xC1, 0x98, 0x19, 0x02, 0x35, 0x99, 0x19, 0x02
	.byte 0x11, 0x9A, 0x19, 0x02, 0x65, 0xB4, 0x19, 0x02, 0x65, 0xB4, 0x19, 0x02, 0x69, 0xB4, 0x19, 0x02
	.byte 0x79, 0xB5, 0x19, 0x02, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x05, 0x00, 0x06, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x69, 0xAD, 0x19, 0x02, 0x89, 0xAD, 0x19, 0x02, 0x95, 0xAD, 0x19, 0x02, 0xA1, 0xAD, 0x19, 0x02
	.byte 0xAD, 0xAD, 0x19, 0x02, 0xB9, 0xAD, 0x19, 0x02, 0xD5, 0xAD, 0x19, 0x02, 0xF1, 0xAD, 0x19, 0x02
	.byte 0x0D, 0xAE, 0x19, 0x02, 0x25, 0xAE, 0x19, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x18, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0x04, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x28, 0x34, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x45, 0x5A, 0x15, 0xE9, 0x50, 0x3C, 0x00, 0x00
	.byte 0x00, 0x02, 0x01, 0x01, 0x5D, 0x72, 0x15, 0xE9, 0x28, 0x54, 0x00, 0x00, 0x01, 0x03, 0x02, 0x02
	.byte 0x75, 0x8A, 0x15, 0xE9, 0x50, 0x5C, 0x00, 0x00, 0x02, 0x06, 0x03, 0x03, 0x8D, 0xA2, 0x15, 0xE9
	.byte 0x28, 0x74, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04, 0xA8, 0xBF, 0x00, 0x27, 0x50, 0x7C, 0x00, 0x00
	.byte 0x05, 0x05, 0x05, 0x05, 0xA8, 0xBF, 0x28, 0x4F, 0xE0, 0xA8, 0x00, 0x00, 0x03, 0x06, 0x06, 0x06
	.byte 0xA6, 0xBF, 0xE0, 0xF7, 0xE0, 0xA8, 0x00, 0x00, 0x07, 0x07, 0x07, 0x07, 0xA6, 0xBF, 0x80, 0xBF
	.byte 0xE0, 0xA8, 0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0xA6, 0xBF, 0xC0, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x19, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x47, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x73, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0xCD, 0x01, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0xDF, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0xF1, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0xD8, 0x02, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0xED, 0x00, 0x00, 0x00, 0x08, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x82, 0x00, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x38, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2F, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x98, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x90, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219B9A8
