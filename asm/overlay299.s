    .include "macros/function.inc"
	.include "overlay299.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy299_219fbc0
ovy299_219fbc0: ; 0x0219FBC0
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x6b
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r6, #0xc7
	lsl r6, r6, #4
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x6b
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy299_219fbc0

	thumb_func_start ovy299_219fbf0
ovy299_219fbf0: ; 0x0219FBF0
	push {r3, lr}
	add r0, r3, #0
	bl ovy299_21a05dc
	cmp r0, #0
	bne _0219FC00
	mov r0, #1
	pop {r3, pc}
_0219FC00:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy299_219fbf0

	thumb_func_start ovy299_219fc04
ovy299_219fc04: ; 0x0219FC04
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x6b
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy299_219fc04

	thumb_func_start ovy299_219fc14
ovy299_219fc14: ; 0x0219FC14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219FC28 ; =ovy299_219fc38
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_0219FC28: .word ovy299_219fc38
	thumb_func_end ovy299_219fc14

	thumb_func_start sub_0219FC2C
sub_0219FC2C: ; 0x0219FC2C
	ldr r0, [r0, #4]
	ldr r3, _0219FC34 ; =GFL_TCBRemove
	bx r3
	nop
_0219FC34: .word GFL_TCBRemove
	thumb_func_end sub_0219FC2C

	thumb_func_start ovy299_219fc38
ovy299_219fc38: ; 0x0219FC38
	push {r4, lr}
	add r4, r1, #0
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r0, [r4, #0xc]
	bl sub_020275F8
	ldr r3, _0219FC58 ; =0x02FE0000
	ldr r1, _0219FC5C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_0219FC58: .word 0x02FE0000
_0219FC5C: .word 0x00003FF8
	thumb_func_end ovy299_219fc38

	thumb_func_start ovy299_219fc60
ovy299_219fc60: ; 0x0219FC60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219FC74 ; =0x0219FC85
	add r1, r4, #0
	mov r2, #0
	bl sub_02005680
	str r0, [r4, #8]
	pop {r4, pc}
	nop
_0219FC74: .word 0x0219FC85
	thumb_func_end ovy299_219fc60

	thumb_func_start sub_0219FC78
sub_0219FC78: ; 0x0219FC78
	ldr r0, [r0, #8]
	ldr r3, _0219FC80 ; =GFL_TCBRemove
	bx r3
	nop
_0219FC80: .word GFL_TCBRemove
	thumb_func_end sub_0219FC78
_0219FC84:
	.byte 0x11, 0x48, 0x00, 0x88, 0xA8, 0x28, 0x03, 0xDB, 0x10, 0x49, 0x11, 0x48
	.byte 0x01, 0x80, 0x70, 0x47, 0x90, 0x28, 0x03, 0xDB, 0x0F, 0x49, 0x0E, 0x48, 0x01, 0x80, 0x70, 0x47
	.byte 0x78, 0x28, 0x03, 0xDB, 0x0D, 0x49, 0x0B, 0x48, 0x01, 0x80, 0x70, 0x47, 0x60, 0x28, 0x03, 0xDB
	.byte 0x0B, 0x49, 0x08, 0x48, 0x01, 0x80, 0x70, 0x47, 0x48, 0x28, 0x06, 0x48, 0x02, 0xDB, 0x09, 0x49
	.byte 0x01, 0x80, 0x70, 0x47, 0x08, 0x49, 0x01, 0x80, 0x70, 0x47, 0xC0, 0x46, 0x06, 0x00, 0x00, 0x04
	.byte 0x0B, 0x05, 0x00, 0x00, 0x52, 0x10, 0x00, 0x04, 0x0A, 0x06, 0x00, 0x00, 0x09, 0x07, 0x00, 0x00
	.byte 0x08, 0x08, 0x00, 0x00, 0x06, 0x0A, 0x00, 0x00, 0x04, 0x0C, 0x00, 0x00

	thumb_func_start sub_0219FCEC
sub_0219FCEC: ; 0x0219FCEC
	ldr r0, _0219FCF4 ; =0x021A2608
	ldr r3, _0219FCF8 ; =sub_02046C40
	bx r3
	nop
_0219FCF4: .word 0x021A2608
_0219FCF8: .word sub_02046C40
	thumb_func_end sub_0219FCEC

	thumb_func_start sub_0219FCFC
sub_0219FCFC: ; 0x0219FCFC
	ldr r0, _0219FD00 ; =0x021A2608
	bx lr
	.align 2, 0
_0219FD00: .word 0x021A2608
	thumb_func_end sub_0219FCFC

	thumb_func_start ovy299_219fd04
ovy299_219fd04: ; 0x0219FD04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x110
	mov r0, #0x6b
	mov r5, #0x6b
	bl sub_020444A4
	ldr r4, _0219FE84 ; =0x021A2638
	add r3, sp, #0x100
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _0219FE88 ; =0x021A26C8
	add r3, sp, #0xe0
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
	mov r0, #0
	mov r2, #0
	mov r4, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045738
	mov r0, #0
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	mov r7, #0x20
	bl sub_020450CC
	mov r0, #0
	bl sub_02045B7C
	ldr r6, _0219FE8C ; =0x021A26A8
	add r3, sp, #0xc0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	ldr r6, _0219FE90 ; =0x021A2648
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045738
	mov r0, #2
	bl sub_02045B7C
	ldr r6, _0219FE94 ; =0x021A2728
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	ldr r6, _0219FE98 ; =0x021A26E8
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	add r2, r4, #0
	bl sub_0204476C
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	add r1, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #4
	bl sub_02045B7C
	ldr r5, _0219FE9C ; =0x021A2688
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
	mov r0, #5
	add r2, r4, #0
	bl sub_0204476C
	ldr r5, _0219FEA0 ; =0x021A2708
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
	mov r0, #6
	add r2, r4, #0
	bl sub_0204476C
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl sub_02045B7C
	ldr r5, _0219FEA4 ; =0x021A2668
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
	add r2, r4, #0
	bl sub_0204476C
	mov r0, #0xf
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0xf
	mov r1, #1
	bl sub_02046D84
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FE84: .word 0x021A2638
_0219FE88: .word 0x021A26C8
_0219FE8C: .word 0x021A26A8
_0219FE90: .word 0x021A2648
_0219FE94: .word 0x021A2728
_0219FE98: .word 0x021A26E8
_0219FE9C: .word 0x021A2688
_0219FEA0: .word 0x021A2708
_0219FEA4: .word 0x021A2668
	thumb_func_end ovy299_219fd04

	thumb_func_start ovy299_219fea8
ovy299_219fea8: ; 0x0219FEA8
	push {r3, lr}
	mov r0, #0xf
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0xf
	mov r1, #0
	bl sub_02046D84
	mov r0, #7
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #0
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy299_219fea8

	thumb_func_start ovy299_219fef0
ovy299_219fef0: ; 0x0219FEF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0x9d
	mov r1, #0x6b
	mov r4, #0x6b
	bl sub_0204AA30
	mov r1, #0x80
	str r1, [sp]
	mov r1, #0x31
	mov r2, #0
	mov r3, #0
	add r5, r0, #0
	str r4, [sp, #4]
	mov r6, #0
	bl sub_0204B0D4
	mov r0, #0xa0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #0x33
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x3c
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x3a
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x3d
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #3
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x47
	mov r2, #5
	add r3, r6, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x41
	mov r2, #7
	add r3, r6, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl sub_0204AB0C
	bl sub_0202D7E0
	add r1, r4, #0
	bl sub_0204AA30
	add r5, r0, #0
	bl sub_0202D824
	add r1, r0, #0
	str r6, [sp]
	add r0, r5, #0
	mov r2, #1
	add r3, r6, #0
	str r4, [sp, #4]
	bl sub_0204AE3C
	bl sub_0202D820
	mov r7, #0x20
	str r7, [sp]
	mov r3, #7
	add r1, r0, #0
	str r4, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	lsl r3, r3, #6
	bl sub_0204B0D4
	bl sub_0202D828
	str r6, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	add r3, r6, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #3
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #1
	add r1, r6, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #1
	bl sub_02045B7C
	add r0, r5, #0
	bl sub_0204AB0C
	mov r3, #0x3c
	str r7, [sp]
	lsl r5, r3, #3
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0204B0B8
	str r7, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r5, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_219fef0

	thumb_func_start ovy299_21a0040
ovy299_21a0040: ; 0x021A0040
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x6b
	bl sub_02026DC0
	mov r4, #2
	lsl r4, r4, #8
	str r0, [r5, #0xc]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x6b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #1
	add r2, r4, #0
	mov r3, #0x6b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x6b
	bl sub_02026E04
	ldr r0, [r5, #0xc]
	mov r1, #3
	add r2, r4, #0
	mov r3, #0x6b
	bl sub_02026E04
	pop {r3, r4, r5, pc}
	thumb_func_end ovy299_21a0040

	thumb_func_start ovy299_21a0080
ovy299_21a0080: ; 0x021A0080
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02026E48
	ldr r0, [r4, #0xc]
	bl sub_02026DE8
	pop {r4, pc}
	thumb_func_end ovy299_21a0080

	thumb_func_start ovy299_21a00ac
ovy299_21a00ac: ; 0x021A00AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02005718
	str r4, [sp]
	mov r7, #1
	sub r7, #0xf
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A0128 ; =0x0000BFFF
	mov r1, #1
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A012C ; =0x0000FFEF
	mov r1, #2
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A0130 ; =0x0000F87F
	mov r1, #4
	add r3, r7, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	ldr r2, _021A0128 ; =0x0000BFFF
	mov r1, #8
	add r3, r7, #0
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0128: .word 0x0000BFFF
_021A012C: .word 0x0000FFEF
_021A0130: .word 0x0000F87F
	thumb_func_end ovy299_21a00ac

	thumb_func_start ovy299_21a0134
ovy299_21a0134: ; 0x021A0134
	push {r3, lr}
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021A0148 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #6
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	.align 2, 0
_021A0148: .word 0x04001050
	thumb_func_end ovy299_21a0134

	thumb_func_start sub_021A014C
sub_021A014C: ; 0x021A014C
	ldr r0, _021A0180 ; =0x0400104A
	ldr r1, _021A0184 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x1b
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r0, #0xd
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
	ldr r2, _021A0188 ; =0xFFFF1FFF
	lsl r1, r1, #0xa
	and r2, r3
	orr r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_021A0180: .word 0x0400104A
_021A0184: .word 0xFFFFC0FF
_021A0188: .word 0xFFFF1FFF
	thumb_func_end sub_021A014C

	thumb_func_start sub_021A018C
sub_021A018C: ; 0x021A018C
	ldr r2, _021A0198 ; =0x04001000
	ldr r0, _021A019C ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_021A0198: .word 0x04001000
_021A019C: .word 0xFFFF1FFF
	thumb_func_end sub_021A018C

	thumb_func_start ovy299_21a01a0
ovy299_21a01a0: ; 0x021A01A0
	push {r3, r4, r5, lr}
	ldr r2, _021A01E0 ; =0x000001DE
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r3, #0x6b
	mov r4, #0x6b
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x54]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0x50]
	mov r0, #0x6b
	bl GFL_WordSetSystemCreateDefault
	str r0, [r5, #0x58]
	mov r0, #0x6b
	bl sub_02021998
	str r0, [r5, #0x60]
	mov r0, #0x80
	mov r1, #0x6b
	bl GFL_StrBufCreate
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A01E0: .word 0x000001DE
	thumb_func_end ovy299_21a01a0

	thumb_func_start ovy299_21a01e4
ovy299_21a01e4: ; 0x021A01E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x60]
	bl sub_02021A18
	ldr r0, [r4, #0x58]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #0x50]
	bl sub_02022DA8
	ldr r0, [r4, #0x54]
	bl GFL_MsgDataFree
	pop {r4, pc}
	thumb_func_end ovy299_21a01e4

	thumb_func_start ovy299_21a0208
ovy299_21a0208: ; 0x021A0208
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	mov r1, #0
	bl sub_02020428
	ldr r1, _021A021C ; =0x00000C5C
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021A021C: .word 0x00000C5C
	thumb_func_end ovy299_21a0208

	thumb_func_start sub_021A0220
sub_021A0220: ; 0x021A0220
	ldr r1, _021A0228 ; =0x00000C5C
	ldr r3, _021A022C ; =sub_0203A24C
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021A0228: .word 0x00000C5C
_021A022C: .word sub_0203A24C
	thumb_func_end sub_021A0220

	thumb_func_start ovy299_21a0230
ovy299_21a0230: ; 0x021A0230
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #5
	mov r1, #3
	mov r2, #0x30
	bl sub_02045E1C
	mov r2, #1
	mov r0, #1
	mov r1, #3
	sub r2, #0x31
	bl sub_02045E1C
	mov r5, #6
	mov r7, #0
	add r4, sp, #4
_021A0252:
	add r2, sp, #4
	add r0, r6, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	str r7, [sp]
	bl ovy299_21a158c
	mov r0, #0
	ldrsh r0, [r4, r0]
	mov r2, #2
	mov r3, #0
	add r0, #0x30
	strh r0, [r4]
	str r7, [sp]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy299_21a1568
	add r5, r5, #1
	cmp r5, #0xc
	bls _021A0252
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0230

	thumb_func_start sub_021A0288
sub_021A0288: ; 0x021A0288
	ldr r2, _021A0294 ; =0x00000C64
	mov r3, #0x30
	strh r3, [r0, r2]
	add r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	.align 2, 0
_021A0294: .word 0x00000C64
	thumb_func_end sub_021A0288

	thumb_func_start ovy299_21a0298
ovy299_21a0298: ; 0x021A0298
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _021A031C ; =0x00000C64
	add r5, r0, #0
	ldrh r0, [r5, r7]
	cmp r0, #0
	bne _021A02AC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A02AC:
	add r2, r7, #2
	ldrsh r2, [r5, r2]
	mov r0, #5
	mov r1, #4
	bl sub_02045E1C
	add r2, r7, #2
	ldrsh r2, [r5, r2]
	mov r0, #1
	mov r1, #5
	bl sub_02045E1C
	mov r4, #6
	add r6, sp, #4
	add r7, r7, #2
_021A02CA:
	mov r0, #0
	add r2, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, #2
	add r3, sp, #4
	bl ovy299_21a158c
	mov r0, #0
	ldrsh r1, [r6, r0]
	ldrsh r0, [r5, r7]
	mov r2, #2
	mov r3, #0
	add r0, r1, r0
	strh r0, [r6]
	mov r0, #0
	str r0, [sp]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy299_21a1568
	add r4, r4, #1
	cmp r4, #0xc
	bls _021A02CA
	ldr r0, _021A0320 ; =0x00000C66
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _021A030A
	neg r0, r0
_021A030A:
	ldr r1, _021A031C ; =0x00000C64
	lsl r0, r0, #0x10
	ldrh r2, [r5, r1]
	lsr r0, r0, #0x10
	sub r0, r2, r0
	strh r0, [r5, r1]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A031C: .word 0x00000C64
_021A0320: .word 0x00000C66
	thumb_func_end ovy299_21a0298

	thumb_func_start ovy299_21a0324
ovy299_21a0324: ; 0x021A0324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r1, _021A04D8 ; =0x0000806B
	add r5, r0, #0
	mov r0, #0x9d
	bl sub_0204AA30
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D214
	ldr r4, _021A04DC ; =0x021A25E0
	add r6, r0, #0
	add r3, sp, #0x10
	mov r2, #5
_021A0344:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021A0344
	ldr r1, _021A04E0 ; =0x00000289
	add r0, sp, #0x10
	strh r1, [r0, #0x14]
	str r5, [sp, #0x34]
	ldr r1, [r5]
	mov r0, #0
	ldrh r2, [r1, #0xa]
	cmp r2, #0
	bls _021A038E
	ldr r1, [r1, #0xc]
_021A0360:
	lsl r3, r0, #1
	ldrh r3, [r1, r3]
	cmp r6, r3
	bne _021A0388
	sub r1, r2, #7
	cmp r0, r1
	bls _021A037C
	sub r2, r0, r1
	add r1, sp, #0x10
	strb r2, [r1, #0x18]
	ldrb r2, [r1, #0x18]
	sub r0, r0, r2
_021A0378:
	strh r0, [r1, #0x1a]
	b _021A038E
_021A037C:
	cmp r0, #7
	add r1, sp, #0x10
	bhs _021A0386
	strb r0, [r1, #0x18]
	b _021A038E
_021A0386:
	b _021A0378
_021A0388:
	add r0, r0, #1
	cmp r0, r2
	blo _021A0360
_021A038E:
	add r0, sp, #0x10
	mov r1, #0x6b
	bl sub_0219AF1C
	mov r1, #0xc5
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5]
	ldrh r0, [r0, #0xa]
	cmp r0, #7
	bhs _021A03A6
	b _021A03A8
_021A03A6:
	mov r0, #7
_021A03A8:
	add r1, #8
	str r0, [r5, r1]
	mov r6, #0
	mov r0, #0xc5
	str r6, [sp]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0x44
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0x45
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0x46
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #0x31
	mov r3, #2
	bl sub_0219B27C
	add r0, r7, #0
	bl sub_0204AB0C
	ldr r1, [r5]
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	bls _021A04D2
	mov r0, #0xc5
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0xc]
	mov r0, #0xc5
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #0x1d
	str r0, [sp, #4]
_021A0420:
	ldr r0, [r1, #4]
	ldr r1, [r1, #0xc]
	lsl r4, r6, #1
	ldrh r1, [r1, r4]
	bl sub_0200D660
	cmp r0, #1
	bne _021A0462
	ldr r1, [r5]
	ldr r0, _021A04E4 ; =0x0209A434
	ldr r1, [r1, #0xc]
	ldr r0, [r0]
	ldrh r1, [r1, r4]
	bl sub_0204898C
	mov r1, #0x6b
	add r7, r0, #0
	bl sub_020485A4
	lsl r1, r6, #2
	add r1, r5, r1
	str r0, [r1, #0x64]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r2, [r5]
	ldr r0, [sp, #8]
	ldr r2, [r2, #0xc]
	ldr r0, [r0]
	ldrh r3, [r2, r4]
	mov r1, #0
	ldr r2, [sp, #4]
	b _021A04A4
_021A0462:
	ldr r1, [r5]
	ldr r0, [r1, #4]
	ldr r1, [r1, #0xc]
	ldrh r1, [r1, r4]
	bl sub_0200D7F4
	cmp r0, #1
	bne _021A04A8
	ldr r1, [r5]
	ldr r0, _021A04E4 ; =0x0209A434
	ldr r1, [r1, #0xc]
	ldr r0, [r0]
	ldrh r1, [r1, r4]
	bl sub_0204898C
	mov r1, #0x6b
	add r7, r0, #0
	bl sub_020485A4
	lsl r1, r6, #2
	add r1, r5, r1
	str r0, [r1, #0x64]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r2, [r5]
	ldr r0, [sp, #0xc]
	ldr r2, [r2, #0xc]
	ldr r0, [r0]
	ldrh r3, [r2, r4]
	mov r2, #1
	mov r1, #1
	lsl r2, r2, #0x1c
_021A04A4:
	orr r2, r3
	b _021A04C4
_021A04A8:
	ldr r0, [r5, #0x54]
	mov r1, #7
	bl sub_0204898C
	lsl r1, r6, #2
	add r1, r5, r1
	str r0, [r1, #0x64]
	ldr r2, [r5]
	mov r0, #0xc5
	ldr r2, [r2, #0xc]
	lsl r0, r0, #4
	ldrh r2, [r2, r4]
	ldr r0, [r5, r0]
	mov r1, #2
_021A04C4:
	bl sub_0219B1B4
	ldr r1, [r5]
	add r6, r6, #1
	ldrh r0, [r1, #0xa]
	cmp r6, r0
	blo _021A0420
_021A04D2:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A04D8: .word 0x0000806B
_021A04DC: .word 0x021A25E0
_021A04E0: .word 0x00000289
_021A04E4: .word 0x0209A434
	thumb_func_end ovy299_21a0324

	thumb_func_start ovy299_21a04e8
ovy299_21a04e8: ; 0x021A04E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219B138
	ldr r6, _021A0510 ; =0x00000289
	mov r4, #0
_021A04FA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _021A0508
	bl GFL_StrBufFree
_021A0508:
	add r4, r4, #1
	cmp r4, r6
	blo _021A04FA
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0510: .word 0x00000289
	thumb_func_end ovy299_21a04e8

	thumb_func_start ovy299_21a0514
ovy299_21a0514: ; 0x021A0514
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xc5
	str r3, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	str r2, [sp]
	bl sub_0219CC1C
	add r7, r0, #0
	lsl r2, r6, #2
	add r2, r5, r2
	ldr r0, _021A0560 ; =0x0FFFFFFF
	add r4, r7, #0
	and r4, r0
	ldr r1, [sp]
	ldr r2, [r2, #0x64]
	add r0, r5, #0
	add r3, r4, #0
	bl ovy299_21a1358
	mov r0, #0xf
	lsl r0, r0, #0x1c
	and r0, r7
	lsr r0, r0, #0x1c
	beq _021A055A
	lsl r1, r4, #0x10
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy299_21a1fe8
_021A055A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0560: .word 0x0FFFFFFF
	thumb_func_end ovy299_21a0514

	thumb_func_start ovy299_21a0564
ovy299_21a0564: ; 0x021A0564
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0219CC1C
	add r1, r0, #0
	mov r0, #0xf
	lsl r0, r0, #0x1c
	and r0, r1
	lsr r0, r0, #0x1c
	beq _021A058C
	ldr r2, _021A05AC ; =0x0FFFFFFF
	add r0, r5, #0
	and r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	b _021A0590
_021A058C:
	add r0, r5, #0
	mov r1, #0
_021A0590:
	bl ovy299_21a1ad8
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC3C
	add r1, r0, #0
	add r0, r5, #0
	sub r1, r4, r1
	bl ovy299_21a2268
	pop {r3, r4, r5, pc}
	nop
_021A05AC: .word 0x0FFFFFFF
	thumb_func_end ovy299_21a0564

	thumb_func_start ovy299_21a05b0
ovy299_21a05b0: ; 0x021A05B0
	push {r4, lr}
	neg r1, r1
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	add r4, r0, #0
	bl ovy299_21a2098
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219CC34
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a2268
	add r0, r4, #0
	mov r1, #1
	bl ovy299_21a231c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy299_21a05b0

	thumb_func_start ovy299_21a05dc
ovy299_21a05dc: ; 0x021A05DC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	lsl r2, r1, #2
	ldr r1, _021A0614 ; =0x021A27A0
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #0x10]
	cmp r0, #9
	bne _021A05F4
	mov r0, #0
	pop {r4, pc}
_021A05F4:
	add r0, r4, #0
	bl ovy299_21a1440
	add r0, r4, #0
	bl ovy299_21a0f2c
	mov r2, #0xc6
	lsl r2, r2, #4
	mov r0, #3
	mov r1, #7
	add r2, r4, r2
	bl sub_021AD7C8
	mov r0, #1
	pop {r4, pc}
	nop
_021A0614: .word 0x021A27A0
	thumb_func_end ovy299_21a05dc

	thumb_func_start ovy299_21a0618
ovy299_21a0618: ; 0x021A0618
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021A06C0 ; =0x0000008B
	bl sub_0203CE0C
	mov r0, #0
	mov r6, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _021A06C4 ; =0x04000050
	ldr r4, _021A06C8 ; =0x04001050
	strh r6, [r0]
	strh r6, [r4]
	mov r6, #0
	sub r6, #0x10
	add r0, #0x1c
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	add r4, #0x1c
	add r0, r4, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	bl sub_02046DF8
	add r0, r5, #0
	bl ovy299_21a0040
	bl sub_0219FCEC
	bl ovy299_219fd04
	bl ovy299_219fef0
	add r0, r5, #0
	bl ovy299_21a01a0
	add r0, r5, #0
	bl ovy299_21a0ec0
	add r0, r5, #0
	bl ovy299_21a13f0
	add r0, r5, #0
	bl ovy299_21a0208
	add r0, r5, #0
	bl ovy299_21a0324
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _021A0694
	add r0, r5, #0
	bl ovy299_21a1224
	b _021A069A
_021A0694:
	add r0, r5, #0
	bl ovy299_21a1300
_021A069A:
	mov r0, #1
	mov r1, #0x6b
	bl sub_02042BA8
	bl ovy299_21a0134
	bl sub_021A014C
	add r0, r5, #0
	bl ovy299_21a0230
	add r0, r5, #0
	bl ovy299_219fc14
	add r0, r5, #0
	bl ovy299_219fc60
	mov r0, #3
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A06C0: .word 0x0000008B
_021A06C4: .word 0x04000050
_021A06C8: .word 0x04001050
	thumb_func_end ovy299_21a0618

	thumb_func_start ovy299_21a06cc
ovy299_21a06cc: ; 0x021A06CC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ovy299_21a0298
	cmp r0, #1
	beq _021A06E2
	ldr r0, [r4, #0xc]
	bl sub_02027780
	cmp r0, #0
	beq _021A06E6
_021A06E2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A06E6:
	add r0, r4, #0
	bl sub_0219FC78
	add r0, r4, #0
	bl sub_0219FC2C
	bl sub_021A018C
	add r0, r4, #0
	bl ovy299_21a04e8
	add r0, r4, #0
	bl sub_021A0220
	add r0, r4, #0
	bl ovy299_21a1424
	add r0, r4, #0
	bl ovy299_21a0f10
	add r0, r4, #0
	bl ovy299_21a01e4
	bl ovy299_219fea8
	add r0, r4, #0
	bl ovy299_21a0080
	ldr r5, _021A0758 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _021A075C ; =0x0400106C
	add r1, r6, #0
	add r0, r4, #0
	bl GXx_SetMasterBrightness_
	mov r0, #0
	sub r5, #0x1c
	strh r0, [r5]
	sub r4, #0x1c
	strh r0, [r4]
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _021A0760 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #9
	pop {r4, r5, r6, pc}
	nop
_021A0758: .word 0x0400006C
_021A075C: .word 0x0400106C
_021A0760: .word 0x0000008B
	thumb_func_end ovy299_21a06cc

	thumb_func_start ovy299_21a0764
ovy299_21a0764: ; 0x021A0764
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02027780
	cmp r0, #0
	bne _021A0776
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
_021A0776:
	mov r0, #2
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0764

	thumb_func_start ovy299_21a077c
ovy299_21a077c: ; 0x021A077C
	push {r4, r5, r6, lr}
	ldr r4, _021A0810 ; =0x00000C54
	add r5, r0, #0
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _021A0792
	cmp r1, #1
	beq _021A07C0
	cmp r1, #2
	beq _021A07F2
	b _021A080C
_021A0792:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _021A080C
	add r0, r5, #0
	mov r1, #0
	bl ovy299_21a231c
	add r0, r5, #0
	bl ovy299_21a22d4
	add r0, r5, #0
	bl ovy299_21a2188
	add r0, r5, #0
	bl ovy299_21a0da8
_021A07B8:
	ldr r0, [r5, r4]
	add r0, r0, #1
	str r0, [r5, r4]
	b _021A080C
_021A07C0:
	ldr r0, [r5, #0xc]
	bl sub_02027780
	cmp r0, #0
	bne _021A080C
	ldr r0, _021A0814 ; =0x0400006C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _021A0818 ; =0x0400106C
	mov r1, #0
	bl GXx_SetMasterBrightness_
	add r0, r5, #0
	mov r6, #0x10
	mov r1, #0x10
	mov r2, #0
	bl ovy299_21a00ac
	sub r6, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A0288
	b _021A07B8
_021A07F2:
	bl ovy299_21a0298
	cmp r0, #0
	bne _021A080C
	ldr r0, [r5, #0xc]
	bl sub_02027780
	cmp r0, #0
	bne _021A080C
	mov r0, #0
	str r0, [r5, r4]
	mov r0, #4
	pop {r4, r5, r6, pc}
_021A080C:
	mov r0, #3
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0810: .word 0x00000C54
_021A0814: .word 0x0400006C
_021A0818: .word 0x0400106C
	thumb_func_end ovy299_21a077c

	thumb_func_start ovy299_21a081c
ovy299_21a081c: ; 0x021A081C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0xc5
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r6, #4
	bl sub_0219B2E0
	add r0, #0xc
	cmp r0, #0xb
	bls _021A0836
	b _021A0C24
_021A0836:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0842: ; jump table
	.short _021A0C56 - _021A0842 - 2 ; case 0
	.short _021A085A - _021A0842 - 2 ; case 1
	.short _021A085A - _021A0842 - 2 ; case 2
	.short _021A085A - _021A0842 - 2 ; case 3
	.short _021A085A - _021A0842 - 2 ; case 4
	.short _021A0864 - _021A0842 - 2 ; case 5
	.short _021A0888 - _021A0842 - 2 ; case 6
	.short _021A08A0 - _021A0842 - 2 ; case 7
	.short _021A08B0 - _021A0842 - 2 ; case 8
	.short _021A08C0 - _021A0842 - 2 ; case 9
	.short _021A08C0 - _021A0842 - 2 ; case 10
	.short _021A08DC - _021A0842 - 2 ; case 11
_021A085A:
	add r0, r4, #0
	mov r1, #0
	bl ovy299_21a231c
	b _021A0C56
_021A0864:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ovy299_21a14c4
	add r0, r5, #0
	sub r0, #8
	ldrh r1, [r4, r0]
	ldr r0, _021A0BE8 ; =0xFFFF0001
	and r1, r0
	mov r0, #0x14
_021A087A:
	orr r0, r1
	sub r5, #8
	strh r0, [r4, r5]
	mov r0, #0
_021A0882:
	str r0, [r4, #0x14]
	mov r6, #5
	b _021A0C56
_021A0888:
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xd
	bl ovy299_21a14c4
	add r0, r5, #0
	sub r0, #8
	ldrh r1, [r4, r0]
	ldr r0, _021A0BE8 ; =0xFFFF0001
	and r1, r0
	mov r0, #0x12
	b _021A087A
_021A08A0:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	add r3, r6, #0
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A08B0:
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xd
	add r3, r6, #0
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A08C0:
	add r0, r4, #0
	bl ovy299_21a21f4
	add r0, r5, #0
	sub r0, #8
	ldrh r1, [r4, r0]
	ldr r0, _021A0BE8 ; =0xFFFF0001
	sub r5, #8
	and r1, r0
	mov r0, #0x7e
	orr r0, r1
	strh r0, [r4, r5]
	mov r0, #1
	b _021A0882
_021A08DC:
	bl sub_0203D554
	str r0, [sp, #4]
	add r0, r4, #0
	bl ovy299_21a23a4
	add r7, r0, #0
	cmp r7, #0x10
	bhi _021A0962
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A08FA: ; jump table
	.short _021A091C - _021A08FA - 2 ; case 0
	.short _021A094A - _021A08FA - 2 ; case 1
	.short _021A094A - _021A08FA - 2 ; case 2
	.short _021A094A - _021A08FA - 2 ; case 3
	.short _021A094A - _021A08FA - 2 ; case 4
	.short _021A094A - _021A08FA - 2 ; case 5
	.short _021A094A - _021A08FA - 2 ; case 6
	.short _021A094A - _021A08FA - 2 ; case 7
	.short _021A097E - _021A08FA - 2 ; case 8
	.short _021A09A6 - _021A08FA - 2 ; case 9
	.short _021A0B80 - _021A08FA - 2 ; case 10
	.short _021A0B8E - _021A08FA - 2 ; case 11
	.short _021A0BB8 - _021A08FA - 2 ; case 12
	.short _021A0A4E - _021A08FA - 2 ; case 13
	.short _021A0AA6 - _021A08FA - 2 ; case 14
	.short _021A0B28 - _021A08FA - 2 ; case 15
	.short _021A0BE2 - _021A08FA - 2 ; case 16
_021A091C:
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy299_21a0e1c
	cmp r0, #1
	bne _021A0942
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	bl ovy299_21a0e68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0942:
	ldr r0, [sp, #4]
	bl sub_0203D564
	b _021A0C56
_021A094A:
	ldr r0, [r4, r5]
	bl sub_0219CC3C
	add r0, r7, r0
	sub r0, r0, #1
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy299_21a0e1c
	cmp r0, #1
	beq _021A0964
_021A0962:
	b _021A0C56
_021A0964:
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4, r5]
	sub r1, r7, #1
	bl sub_0219CC58
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy299_21a0e68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A097E:
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4]
	str r6, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	mov r1, #0xc
	add r2, r6, #0
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A09A6:
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	mov r3, #8
	mov r7, #5
	bl ovy299_21a0dec
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	ldr r0, [r4]
	beq _021A0A18
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	cmp r0, #1
	ldr r0, [r4]
	bne _021A0A16
	ldr r0, [r0, #4]
	mov r1, #1
	bl sub_0200D1E4
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xe
	mov r3, #8
	bl ovy299_21a0dec
	b _021A0A3E
_021A0A16:
	b _021A0A18
_021A0A18:
	str r7, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xe
	mov r3, #8
	bl ovy299_21a0dec
	ldr r0, [r4]
	mov r1, #2
	ldr r0, [r0, #4]
	bl sub_0200D1E4
_021A0A3E:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #5
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0A4E:
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200D1E4
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x2a
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0AA6:
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	mov r3, #8
	mov r6, #5
	bl ovy299_21a0dec
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	cmp r0, #1
	ldr r0, [r4]
	bne _021A0AFE
	ldr r0, [r0, #4]
	mov r1, #1
	bl sub_0200D1E4
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	b _021A0B18
_021A0AFE:
	str r6, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	ldr r0, [r4]
	mov r1, #2
	ldr r0, [r0, #4]
	bl sub_0200D1E4
_021A0B18:
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x2a
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0B28:
	ldr r0, _021A0BEC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xd
	mov r3, #8
	bl ovy299_21a0dec
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xd
	mov r3, #8
	mov r6, #5
	bl ovy299_21a0dec
	ldr r0, [r4]
	str r6, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	ldr r0, [r4]
	mov r1, #2
	ldr r0, [r0, #4]
	bl sub_0200D1E4
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x2a
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0B80:
	ldr r0, _021A0BF0 ; =0x00000646
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy299_21a0e7c
	b _021A0C56
_021A0B8E:
	ldr r0, _021A0BF4 ; =0x00000556
	bl GFL_SndSEPlay
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0BB8:
	ldr r0, _021A0BF8 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	mov r1, #6
	mov r2, #9
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0BE2:
	ldr r0, _021A0BF8 ; =0x00000551
	b _021A0BFC
	nop
_021A0BE8: .word 0xFFFF0001
_021A0BEC: .word 0x0000054C
_021A0BF0: .word 0x00000646
_021A0BF4: .word 0x00000556
_021A0BF8: .word 0x00000551
_021A0BFC:
	bl GFL_SndSEPlay
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, r5]
	bl sub_0219CC28
	add r1, r0, #0
	add r0, r4, #0
	bl ovy299_21a0e3c
	add r0, r4, #0
	mov r1, #6
	mov r2, #9
	mov r3, #8
	bl ovy299_21a0dec
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0C24:
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219CC28
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ovy299_21a231c
	add r0, r4, #0
	add r1, r5, #0
	bl ovy299_21a0e1c
	cmp r0, #1
	bne _021A0C56
	ldr r0, _021A0C68 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r1, r5, #0
	bl ovy299_21a0e68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A0C56:
	add r0, r4, #0
	bl ovy299_21a22d4
	add r0, r4, #0
	bl ovy299_21a2188
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0C68: .word 0x0000054C
	thumb_func_end ovy299_21a081c

	thumb_func_start ovy299_21a0c6c
ovy299_21a0c6c: ; 0x021A0C6C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021A0C7C
	cmp r1, #1
	beq _021A0C96
	b _021A0CB8
_021A0C7C:
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219B2E0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A0CB8
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _021A0CB8
_021A0C96:
	ldr r1, _021A0CBC ; =0x00000C48
	ldrh r1, [r4, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x11
	cmp r1, #0x3f
	beq _021A0CAA
	bl sub_021A14F8
	cmp r0, #0
	bne _021A0CB8
_021A0CAA:
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #0x14]
	bl ovy299_21a231c
	mov r0, #4
	pop {r4, pc}
_021A0CB8:
	mov r0, #5
	pop {r4, pc}
	.align 2, 0
_021A0CBC: .word 0x00000C48
	thumb_func_end ovy299_21a0c6c

	thumb_func_start ovy299_21a0cc0
ovy299_21a0cc0: ; 0x021A0CC0
	push {r4, lr}
	ldr r1, _021A0CE4 ; =0x00000C48
	add r4, r0, #0
	ldrh r1, [r4, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x11
	bl sub_021A14F8
	cmp r0, #0
	bne _021A0CE0
	add r0, r4, #0
	mov r1, #0
	bl ovy299_21a231c
	ldr r0, [r4, #0x18]
	pop {r4, pc}
_021A0CE0:
	mov r0, #6
	pop {r4, pc}
	.align 2, 0
_021A0CE4: .word 0x00000C48
	thumb_func_end ovy299_21a0cc0

	thumb_func_start ovy299_21a0ce8
ovy299_21a0ce8: ; 0x021A0CE8
	push {r3, r4, r5, lr}
	ldr r5, _021A0D84 ; =0x00000C4A
	add r4, r0, #0
	ldrb r0, [r4, r5]
	cmp r0, #4
	bhi _021A0D7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0D00: ; jump table
	.short _021A0D0A - _021A0D00 - 2 ; case 0
	.short _021A0D3A - _021A0D00 - 2 ; case 1
	.short _021A0D0A - _021A0D00 - 2 ; case 2
	.short _021A0D3A - _021A0D00 - 2 ; case 3
	.short _021A0D64 - _021A0D00 - 2 ; case 4
_021A0D0A:
	add r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021A0D38
	add r0, r5, #6
	ldr r0, [r4, r0]
	bl sub_0219CC34
	add r1, r0, #0
	add r0, r5, #6
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0219CAD8
_021A0D2A:
	mov r1, #4
	add r0, r5, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r5]
	add r0, r0, #1
	strb r0, [r4, r5]
	b _021A0D7E
_021A0D38:
	b _021A0D74
_021A0D3A:
	add r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021A0D62
	add r0, r5, #6
	ldr r0, [r4, r0]
	bl sub_0219CC34
	add r1, r0, #0
	add r0, r5, #6
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	mov r2, #2
	bl sub_0219CAD8
	mov r0, #2
	bl sub_02045B7C
	b _021A0D2A
_021A0D62:
	b _021A0D74
_021A0D64:
	add r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021A0D74
	mov r0, #0
	strb r0, [r4, r5]
	mov r0, #8
	pop {r3, r4, r5, pc}
_021A0D74:
	add r0, r5, #1
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	add r0, r5, #1
	strb r1, [r4, r0]
_021A0D7E:
	mov r0, #7
	pop {r3, r4, r5, pc}
	nop
_021A0D84: .word 0x00000C4A
	thumb_func_end ovy299_21a0ce8

	thumb_func_start ovy299_21a0d88
ovy299_21a0d88: ; 0x021A0D88
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_021A1828
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	bl ovy299_21a00ac
	add r0, r4, #0
	mov r1, #8
	bl sub_021A0288
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy299_21a0d88

	thumb_func_start ovy299_21a0da8
ovy299_21a0da8: ; 0x021A0DA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #2
	lsl r4, r4, #8
	ldr r0, [r5, #0xc]
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0xc]
	mov r1, #2
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	ldr r0, [r5, #0xc]
	mov r1, #3
	mov r2, #0
	add r3, r4, #0
	bl sub_02026F7C
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0x10
	bl ovy299_21a00ac
	pop {r3, r4, r5, pc}
	thumb_func_end ovy299_21a0da8

	thumb_func_start ovy299_21a0dec
ovy299_21a0dec: ; 0x021A0DEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl ovy299_21a14c4
	ldr r2, _021A0E14 ; =0x00000C48
	ldr r0, _021A0E18 ; =0xFFFF0001
	ldrh r1, [r5, r2]
	and r0, r1
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x11
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r5, r2]
	str r6, [r5, #0x18]
	mov r0, #6
	pop {r4, r5, r6, pc}
	nop
_021A0E14: .word 0x00000C48
_021A0E18: .word 0xFFFF0001
	thumb_func_end ovy299_21a0dec

	thumb_func_start ovy299_21a0e1c
ovy299_21a0e1c: ; 0x021A0E1C
	push {r3, lr}
	mov r2, #0xc5
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	bl sub_0219CC1C
	mov r1, #0xf
	lsl r1, r1, #0x1c
	and r0, r1
	lsr r0, r0, #0x1c
	beq _021A0E36
	mov r0, #1
	pop {r3, pc}
_021A0E36:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0e1c

	thumb_func_start ovy299_21a0e3c
ovy299_21a0e3c: ; 0x021A0E3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy299_21a0e1c
	cmp r0, #1
	bne _021A0E64
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC1C
	add r1, r0, #0
	ldr r0, [r5]
	lsl r1, r1, #0x10
	ldr r0, [r0, #4]
	lsr r1, r1, #0x10
	bl sub_0200D200
_021A0E64:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0e3c

	thumb_func_start ovy299_21a0e68
ovy299_21a0e68: ; 0x021A0E68
	push {r4, lr}
	add r4, r0, #0
	bl ovy299_21a0e3c
	ldr r0, [r4]
	mov r1, #3
	str r1, [r0, #0x10]
	mov r0, #7
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0e68

	thumb_func_start ovy299_21a0e7c
ovy299_21a0e7c: ; 0x021A0E7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0x12
	ldr r0, [r0]
	mov r4, #0x12
	bl sub_0201765C
	cmp r0, #1
	ldr r0, [r5]
	bne _021A0EA8
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0
	bl sub_02017644
	add r0, r5, #0
	mov r1, #8
	mov r2, #6
	bl ovy299_21a14c4
	pop {r3, r4, r5, pc}
_021A0EA8:
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #1
	bl sub_02017644
	add r0, r5, #0
	mov r1, #8
	mov r2, #7
	bl ovy299_21a14c4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0e7c

	thumb_func_start ovy299_21a0ec0
ovy299_21a0ec0: ; 0x021A0EC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x6b
	bl sub_02048080
	ldr r6, _021A0F0C ; =0x021A27C4
	mov r4, #0
	mov r7, #1
_021A0ED2:
	mov r0, #6
	mul r0, r4
	add r3, r6, r0
	ldrb r1, [r3, #4]
	ldrb r0, [r6, r0]
	ldrb r2, [r3, #2]
	str r1, [sp]
	ldrb r1, [r3, #5]
	str r1, [sp, #4]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #3]
	str r7, [sp, #8]
	bl sub_020480C0
	lsl r1, r4, #3
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x20]
	cmp r4, #6
	blo _021A0ED2
	add r0, r5, #0
	bl ovy299_21a1104
	add r0, r5, #0
	bl ovy299_21a1158
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A0F0C: .word 0x021A27C4
	thumb_func_end ovy299_21a0ec0

	thumb_func_start ovy299_21a0f10
ovy299_21a0f10: ; 0x021A0F10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A0F16:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #6
	blo _021A0F16
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy299_21a0f10

	thumb_func_start ovy299_21a0f2c
ovy299_21a0f2c: ; 0x021A0F2C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x60]
	bl sub_02021A3C
	mov r4, #0
_021A0F38:
	lsl r0, r4, #3
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	ldr r6, [r7, #0x60]
	cmp r0, #0
	beq _021A0F66
	ldr r0, [r5, #0x20]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0F66
	ldr r0, [r5, #0x20]
	bl sub_02048244
	add r5, #0x24
	mov r0, #0
	strb r0, [r5]
_021A0F66:
	add r4, r4, #1
	cmp r4, #6
	blo _021A0F38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0f2c

	thumb_func_start ovy299_21a0f70
ovy299_21a0f70: ; 0x021A0F70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	ldr r0, [r5, #0x50]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	ldr r3, [sp, #0x28]
	lsl r2, r6, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #0x10
	str r0, [sp, #0xc]
	add r1, #0x20
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r1, [r5, #0x60]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0f70

	thumb_func_start ovy299_21a0fb8
ovy299_21a0fb8: ; 0x021A0FB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x5c]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	ldr r3, [sp, #0x28]
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	lsl r2, r6, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	add r1, #0x20
	str r0, [sp, #0xc]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r1, [r5, #0x60]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_21a0fb8

	thumb_func_start ovy299_21a100c
ovy299_21a100c: ; 0x021A100C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204826C
	ldr r0, [r4]
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy299_21a100c

	thumb_func_start ovy299_21a1024
ovy299_21a1024: ; 0x021A1024
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	add r4, #0x20
	lsl r6, r1, #3
	ldr r0, [r4, r6]
	bl sub_020484E0
	add r5, r0, #0
	ldr r0, [r4, r6]
	bl sub_020484E4
	str r0, [sp, #4]
	ldr r0, [r4, r6]
	bl sub_020484E8
	add r7, r0, #0
	ldr r0, [r4, r6]
	bl sub_020484EC
	str r0, [sp, #8]
	ldr r0, [r4, r6]
	bl sub_020484F4
	bl sub_02046EF4
	str r0, [sp, #0x14]
	mov r0, #0x9d
	mov r1, #0x6b
	bl sub_0204AA30
	ldr r1, _021A1100 ; =0x0000806B
	mov r2, #0
	str r1, [sp]
	str r2, [sp, #0x10]
	mov r1, #0x47
	mov r2, #0
	add r3, sp, #0x24
	add r6, r0, #0
	bl sub_0204B32C
	str r0, [sp, #0x18]
	ldr r4, [sp, #0x24]
	ldr r0, _021A1100 ; =0x0000806B
	mov r1, #0x3b
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	add r3, sp, #0x28
	add r4, #0xc
	bl sub_0204B28C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_0204AB0C
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021A10F0
	lsl r0, r7, #1
	add r0, r4, r0
	str r0, [sp, #0xc]
_021A10A6:
	mov r4, #0
	cmp r5, #0
	ble _021A10E0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r7, r0, #0
	add r0, r1, r0
	lsl r1, r0, #6
	ldr r0, [sp, #0xc]
	mul r7, r5
	add r6, r0, r1
_021A10BC:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	lsl r0, r0, #0x16
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	add r1, r4, r7
	lsl r2, r1, #5
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	mov r2, #0x20
	blx MIi_CpuCopy32
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blt _021A10BC
_021A10E0:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021A10A6
_021A10F0:
	ldr r0, [sp, #0x20]
	bl sub_0203A24C
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1100: .word 0x0000806B
	thumb_func_end ovy299_21a1024

	thumb_func_start ovy299_21a1104
ovy299_21a1104: ; 0x021A1104
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r1, #0
	mov r4, #0
	bl ovy299_21a1024
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	bne _021A1130
	mov r0, #4
	str r0, [sp]
	ldr r0, _021A1154 ; =0x000039E0
	add r1, r4, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	b _021A1140
_021A1130:
	mov r0, #4
	str r0, [sp]
	ldr r0, _021A1154 ; =0x000039E0
	add r1, r4, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
_021A1140:
	add r3, r4, #0
	bl ovy299_21a0f70
	add r5, #0x20
	add r0, r5, #0
	bl ovy299_21a100c
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021A1154: .word 0x000039E0
	thumb_func_end ovy299_21a1104

	thumb_func_start ovy299_21a1158
ovy299_21a1158: ; 0x021A1158
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #0
	bne _021A121A
	ldr r0, [r1, #4]
	bl sub_0200D1AC
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r4, #1
	bne _021A11D8
	cmp r0, #1
	bne _021A11D8
	mov r0, #7
	str r0, [sp]
	ldr r4, _021A1220 ; =0x00003C41
	mov r6, #0
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	mov r3, #2
	str r6, [sp, #8]
	bl ovy299_21a0f70
	mov r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #9
	mov r3, #2
	str r6, [sp, #8]
	bl ovy299_21a0f70
	mov r1, #5
	str r1, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r2, #0xb
	mov r3, #2
	str r6, [sp, #8]
	bl ovy299_21a0f70
	add r0, r5, #0
	add r0, #0x38
	bl ovy299_21a100c
	add r0, r5, #0
	add r0, #0x40
	bl ovy299_21a100c
	add r5, #0x48
	add r0, r5, #0
	bl ovy299_21a100c
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021A11D8:
	cmp r4, #0
	bne _021A121A
	cmp r0, #1
	bne _021A121A
	mov r0, #6
	str r0, [sp]
	ldr r4, _021A1220 ; =0x00003C41
	mov r6, #0
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0xa
	mov r3, #2
	str r6, [sp, #8]
	bl ovy299_21a0f70
	mov r1, #5
	str r1, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r2, #0xb
	mov r3, #2
	str r6, [sp, #8]
	bl ovy299_21a0f70
	add r0, r5, #0
	add r0, #0x40
	bl ovy299_21a100c
	add r5, #0x48
	add r0, r5, #0
	bl ovy299_21a100c
_021A121A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021A1220: .word 0x00003C41
	thumb_func_end ovy299_21a1158

	thumb_func_start ovy299_21a1224
ovy299_21a1224: ; 0x021A1224
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	ldr r0, [r5]
	bne _021A124A
	ldr r0, [r0, #4]
	bl sub_0200D85C
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D6B4
	b _021A1260
_021A124A:
	ldr r4, _021A12F8 ; =0x0000806B
	ldr r0, [r0, #4]
	add r1, r4, #0
	bl sub_0200D888
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_0200D6E0
_021A1260:
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy299_21a1024
	add r0, r5, #0
	mov r1, #2
	bl ovy299_21a1024
	mov r6, #4
	ldr r7, _021A12FC ; =0x000031A0
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0x48
	str r4, [sp, #8]
	bl ovy299_21a0f70
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x58]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	str r6, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	mov r3, #0x68
	bl ovy299_21a0fb8
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0x58
	str r4, [sp, #8]
	bl ovy299_21a0f70
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x58]
	ldr r2, [sp, #0xc]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #5
	mov r3, #0x78
	str r4, [sp, #8]
	bl ovy299_21a0fb8
	add r0, r5, #0
	add r0, #0x28
	bl ovy299_21a100c
	add r5, #0x30
	add r0, r5, #0
	bl ovy299_21a100c
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A12F8: .word 0x0000806B
_021A12FC: .word 0x000031A0
	thumb_func_end ovy299_21a1224

	thumb_func_start ovy299_21a1300
ovy299_21a1300: ; 0x021A1300
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #2
	add r5, r0, #0
	bl ovy299_21a1024
	mov r6, #4
	ldr r7, _021A1354 ; =0x000031A0
	str r6, [sp]
	str r7, [sp, #4]
	mov r4, #1
	add r0, r5, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0x58
	str r4, [sp, #8]
	bl ovy299_21a0f70
	mov r1, #0
	str r1, [sp]
	str r4, [sp, #4]
	ldr r2, [r5]
	ldr r0, [r5, #0x58]
	ldrh r2, [r2, #0xa]
	mov r3, #3
	bl sub_0202451C
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #5
	mov r3, #0x78
	str r4, [sp, #8]
	bl ovy299_21a0fb8
	add r5, #0x30
	add r0, r5, #0
	bl ovy299_21a100c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1354: .word 0x000031A0
	thumb_func_end ovy299_21a1300

	thumb_func_start ovy299_21a1358
ovy299_21a1358: ; 0x021A1358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #0xc5
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r7, r1, #0
	str r2, [sp, #0x10]
	add r4, r3, #0
	bl sub_0219CC18
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	beq _021A1384
	add r6, #0xc
	ldr r1, [r5, r6]
	lsl r0, r4, #1
	ldrh r4, [r1, r0]
_021A1384:
	ldr r0, [r5, #0x54]
	mov r1, #8
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x58]
	mov r1, #0
	add r2, r4, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x5c]
	ldr r4, _021A13EC ; =0x000039E0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r2, #0
	mov r3, #4
	bl sub_0219A2A4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldr r0, [r5, #0x50]
	mov r2, #0x1c
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r3, #4
	bl sub_0219A2A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A13EC: .word 0x000039E0
	thumb_func_end ovy299_21a1358

	thumb_func_start ovy299_21a13f0
ovy299_21a13f0: ; 0x021A13F0
	push {r4, lr}
	add r4, r0, #0
	bl ovy299_21a15b8
	add r0, r4, #0
	bl ovy299_21a15e8
	add r0, r4, #0
	bl ovy299_21a17d8
	add r0, r4, #0
	bl ovy299_21a1894
	add r0, r4, #0
	bl ovy299_21a1d6c
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy299_21a13f0

	thumb_func_start ovy299_21a1424
ovy299_21a1424: ; 0x021A1424
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A1818
	add r0, r4, #0
	bl ovy299_21a1ab4
	add r0, r4, #0
	bl ovy299_21a1834
	bl sub_0204B758
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy299_21a1424

	thumb_func_start ovy299_21a1440
ovy299_21a1440: ; 0x021A1440
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021A1480 ; =0x00000C6C
	ldr r1, [r6, r0]
	cmp r1, #0
	bne _021A1454
	sub r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_02035198
_021A1454:
	ldr r7, _021A1484 ; =0x00000A8C
	mov r4, #0
_021A1458:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021A1474
	bl sub_0204C534
	cmp r0, #1
	beq _021A1474
	mov r1, #1
	ldr r0, [r5, r7]
	lsl r1, r1, #0xc
	bl sub_0204C4E0
_021A1474:
	add r4, r4, #1
	cmp r4, #0x3f
	blo _021A1458
	bl sub_0204B794
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1480: .word 0x00000C6C
_021A1484: .word 0x00000A8C
	thumb_func_end ovy299_21a1440

	thumb_func_start ovy299_21a1488
ovy299_21a1488: ; 0x021A1488
	push {r4, r5, r6, lr}
	add r6, r2, #0
	ldr r2, _021A14AC ; =0x00000A8C
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C4D4
	lsl r1, r6, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	bl sub_0204C540
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A14AC: .word 0x00000A8C
	thumb_func_end ovy299_21a1488

	thumb_func_start sub_021A14B0
sub_021A14B0: ; 0x021A14B0
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A14BC ; =0x00000A8C
	ldr r3, _021A14C0 ; =sub_0204C550
	ldr r0, [r1, r0]
	bx r3
	.align 2, 0
_021A14BC: .word 0x00000A8C
_021A14C0: .word sub_0204C550
	thumb_func_end sub_021A14B0

	thumb_func_start ovy299_21a14c4
ovy299_21a14c4: ; 0x021A14C4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ovy299_21a1488
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _021A14E0 ; =0x00000A8C
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	nop
_021A14E0: .word 0x00000A8C
	thumb_func_end ovy299_21a14c4

	thumb_func_start sub_021A14E4
sub_021A14E4: ; 0x021A14E4
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A14F0 ; =0x00000A8C
	ldr r3, _021A14F4 ; =sub_0204C4A0
	ldr r0, [r1, r0]
	bx r3
	.align 2, 0
_021A14F0: .word 0x00000A8C
_021A14F4: .word sub_0204C4A0
	thumb_func_end sub_021A14E4

	thumb_func_start sub_021A14F8
sub_021A14F8: ; 0x021A14F8
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A1504 ; =0x00000A8C
	ldr r3, _021A1508 ; =sub_0204C560
	ldr r0, [r1, r0]
	bx r3
	.align 2, 0
_021A1504: .word 0x00000A8C
_021A1508: .word sub_0204C560
	thumb_func_end sub_021A14F8

	thumb_func_start ovy299_21a150c
ovy299_21a150c: ; 0x021A150C
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A1524 ; =0x00000A8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021A1520
	add r1, r2, #0
	bl sub_0204C124
_021A1520:
	pop {r3, pc}
	nop
_021A1524: .word 0x00000A8C
	thumb_func_end ovy299_21a150c

	thumb_func_start sub_021A1528
sub_021A1528: ; 0x021A1528
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A1534 ; =0x00000A8C
	ldr r3, _021A1538 ; =sub_0204C138
	ldr r0, [r1, r0]
	bx r3
	.align 2, 0
_021A1534: .word 0x00000A8C
_021A1538: .word sub_0204C138
	thumb_func_end sub_021A1528

	thumb_func_start ovy299_21a153c
ovy299_21a153c: ; 0x021A153C
	push {r3, lr}
	cmp r2, #1
	bne _021A1552
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A1564 ; =0x00000A8C
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C318
	pop {r3, pc}
_021A1552:
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021A1564 ; =0x00000A8C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C318
	pop {r3, pc}
	nop
_021A1564: .word 0x00000A8C
	thumb_func_end ovy299_21a153c

	thumb_func_start ovy299_21a1568
ovy299_21a1568: ; 0x021A1568
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r2, [r4]
	lsl r1, r1, #2
	add r1, r0, r1
	strh r3, [r4, #2]
	ldr r0, _021A1588 ; =0x00000A8C
	add r2, sp, #0x10
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	add r1, sp, #0
	bl sub_0204C140
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021A1588: .word 0x00000A8C
	thumb_func_end ovy299_21a1568

	thumb_func_start ovy299_21a158c
ovy299_21a158c: ; 0x021A158C
	push {r3, r4, r5, lr}
	lsl r1, r1, #2
	add r5, r2, #0
	add r1, r0, r1
	ldr r0, _021A15B4 ; =0x00000A8C
	add r2, sp, #0x10
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	add r1, sp, #0
	add r4, r3, #0
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r5]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A15B4: .word 0x00000A8C
	thumb_func_end ovy299_21a158c

	thumb_func_start ovy299_21a15b8
ovy299_21a15b8: ; 0x021A15B8
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _021A15E4 ; =0x021A2818
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl sub_0219FCFC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x6b
	bl sub_0204B6A8
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_021A15E4: .word 0x021A2818
	thumb_func_end ovy299_21a15b8

	thumb_func_start ovy299_21a15e8
ovy299_21a15e8: ; 0x021A15E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r3, #0
	ldr r0, _021A17C4 ; =0x00000B88
	sub r2, r3, #1
_021A15F4:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #0x24
	blo _021A15F4
	mov r3, #0
	ldr r0, _021A17C8 ; =0x00000C18
	sub r2, r3, #1
_021A1606:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #6
	blo _021A1606
	mov r3, #0
	mov r0, #0xc3
	sub r2, r3, #1
	lsl r0, r0, #4
_021A161A:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #6
	blo _021A161A
	ldr r1, _021A17CC ; =0x0000806B
	mov r0, #0x9d
	bl sub_0204AA30
	mov r7, #0x6b
	mov r1, #0x39
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r7, [sp]
	mov r6, #0
	bl sub_0204B81C
	ldr r1, _021A17D0 ; =0x00000C14
	mov r2, #0
	str r0, [r5, r1]
	str r1, [sp, #8]
	add r0, r4, #0
	mov r1, #0x35
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	ldr r1, [sp, #8]
	mov r2, #0x49
	add r1, #0x18
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x3f
	mov r3, #0x6b
	bl sub_0204BDE0
	ldr r1, [sp, #8]
	add r1, #0x30
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r1, _021A17CC ; =0x0000806B
	mov r0, #7
	bl sub_0204AA30
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r4, r6, #0
	sub r0, #0x8c
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x1c
	str r0, [sp, #8]
_021A1692:
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	bl sub_02020F94
	add r1, r0, #0
	mov r0, #0x6b
	str r0, [sp]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r4, #0
	bl sub_0204B81C
	lsl r2, r6, #2
	ldr r1, [sp, #4]
	add r6, r6, #1
	str r0, [r1, r2]
	cmp r6, #0x10
	blo _021A1692
	bl sub_02021114
	add r1, r0, #0
	mov r0, #0x6b
	str r0, [sp]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x80
	bl sub_0204BC48
	ldr r1, [sp, #0xc]
	str r0, [r5, r1]
	bl sub_0202111C
	add r6, r0, #0
	bl sub_02021190
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0x6b
	bl sub_0204BDE0
	ldr r1, [sp, #8]
	str r0, [r5, r1]
	ldr r0, _021A17D4 ; =0x00000BC8
	str r0, [sp, #0x10]
	add r6, r5, r0
	str r0, [sp, #0x14]
	add r0, #0x54
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x6c
	str r0, [sp, #0x10]
_021A16FE:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02020F94
	add r1, r0, #0
	mov r0, #0x6b
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #1
	bl sub_0204B81C
	lsl r1, r4, #2
	add r4, r4, #1
	str r0, [r6, r1]
	cmp r4, #0x10
	blo _021A16FE
	bl sub_02021114
	add r1, r0, #0
	mov r0, #0x6b
	str r0, [sp]
	add r0, r7, #0
	mov r2, #1
	mov r3, #0
	bl sub_0204BC48
	ldr r1, [sp, #0x14]
	str r0, [r5, r1]
	bl sub_02021154
	add r4, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #0x6b
	bl sub_0204BDE0
	ldr r1, [sp, #0x10]
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0204AB0C
	bl sub_0202D7E0
	ldr r1, _021A17CC ; =0x0000806B
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_0202D814
	add r1, r0, #0
	mov r0, #0x6b
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	mov r4, #0xc1
	lsl r4, r4, #4
	str r0, [r5, r4]
	bl sub_0202D810
	add r1, r0, #0
	mov r0, #0x6b
	str r0, [sp]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0xe0
	bl sub_0204BBA0
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0x6b
	bl sub_0204BDE0
	add r4, #0x30
	str r0, [r5, r4]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A17C4: .word 0x00000B88
_021A17C8: .word 0x00000C18
_021A17CC: .word 0x0000806B
_021A17D0: .word 0x00000C14
_021A17D4: .word 0x00000BC8
	thumb_func_end ovy299_21a15e8

	thumb_func_start ovy299_21a17d8
ovy299_21a17d8: ; 0x021A17D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x9d
	mov r1, #0x6b
	bl sub_0204AA30
	add r4, r0, #0
	ldr r2, _021A1810 ; =0x0000FFFE
	mov r0, #0x10
	mov r1, #0x10
	mov r3, #0x6b
	bl sub_02035024
	ldr r1, _021A1814 ; =0x00000C68
	mov r2, #0x35
	str r0, [r5, r1]
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, r1]
	add r1, r4, #0
	mov r3, #0x10
	bl sub_02035104
	add r0, r4, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, pc}
	nop
_021A1810: .word 0x0000FFFE
_021A1814: .word 0x00000C68
	thumb_func_end ovy299_21a17d8

	thumb_func_start sub_021A1818
sub_021A1818: ; 0x021A1818
	ldr r1, _021A1820 ; =0x00000C68
	ldr r3, _021A1824 ; =sub_02035178
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021A1820: .word 0x00000C68
_021A1824: .word sub_02035178
	thumb_func_end sub_021A1818

	thumb_func_start sub_021A1828
sub_021A1828: ; 0x021A1828
	ldr r2, _021A1830 ; =0x00000C6C
	str r1, [r0, r2]
	bx lr
	nop
_021A1830: .word 0x00000C6C
	thumb_func_end sub_021A1828

	thumb_func_start ovy299_21a1834
ovy299_21a1834: ; 0x021A1834
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _021A188C ; =0x00000B88
	add r5, r0, #0
	sub r6, r4, #1
_021A183E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A184C
	bl sub_0204B98C
_021A184C:
	add r4, r4, #1
	cmp r4, #0x24
	blo _021A183E
	mov r4, #0
	ldr r7, _021A1890 ; =0x00000C18
	sub r6, r4, #1
_021A1858:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A1866
	bl sub_0204BCD0
_021A1866:
	add r4, r4, #1
	cmp r4, #6
	blo _021A1858
	mov r4, #0
	mov r7, #0xc3
	lsl r7, r7, #4
	sub r6, r4, #1
_021A1874:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	cmp r0, r6
	beq _021A1882
	bl sub_0204BE64
_021A1882:
	add r4, r4, #1
	cmp r4, #6
	blo _021A1874
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A188C: .word 0x00000B88
_021A1890: .word 0x00000C18
	thumb_func_end ovy299_21a1834

	thumb_func_start ovy299_21a1894
ovy299_21a1894: ; 0x021A1894
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	str r0, [sp, #4]
	mov r0, #0x3f
	mov r1, #0
	mov r2, #0x6b
	mov r6, #0
	bl sub_0204BF1C
	ldr r1, _021A1A8C ; =0x00000A88
	add r4, r6, #0
	str r0, [r5, r1]
	add r0, r1, #4
_021A18C2:
	lsl r1, r6, #2
	add r1, r5, r1
	add r6, r6, #1
	str r4, [r1, r0]
	cmp r6, #0x3f
	blo _021A18C2
	ldr r0, _021A1A90 ; =0x00000B88
	str r0, [sp, #0x14]
	add r0, #0x90
	str r0, [sp, #0x14]
	ldr r0, _021A1A90 ; =0x00000B88
	str r0, [sp, #0x10]
	add r0, #0xa8
	str r0, [sp, #0x10]
	ldr r0, _021A1A8C ; =0x00000A88
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021A1A8C ; =0x00000A88
	add r7, r0, #4
_021A18E8:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021A1A94 ; =0x021A2834
	add r3, sp, #0x1c
	add r6, r0, r1
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x24]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021A1A90 ; =0x00000B88
	ldr r0, [r1, r0]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r1, r0]
	add r1, r2, #0
	str r0, [sp, #0x2c]
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, _021A1A8C ; =0x00000A88
	mov r2, #0x6b
	ldr r0, [r5, r0]
	bl sub_021AD7F0
	ldr r1, [sp, #0xc]
	str r0, [r6, r1]
	ldr r0, [r6, r7]
	mov r1, #0
	bl sub_0204C5C8
	add r4, r4, #1
	cmp r4, #0xc
	bls _021A18E8
	ldr r0, [r5]
	ldrh r0, [r0, #0xa]
	cmp r0, #7
	bhi _021A1964
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy299_21a150c
_021A1964:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1DC
	cmp r0, #0
	bne _021A197A
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy299_21a150c
_021A197A:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021A19B4
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	mov r4, #0
	bl ovy299_21a150c
	add r2, sp, #0x18
	str r4, [sp]
	add r0, r5, #0
	mov r1, #0xc
	add r2, #2
	add r3, sp, #0x18
	bl ovy299_21a158c
	str r4, [sp]
	add r3, sp, #0x18
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r4]
	add r0, r5, #0
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r1, #0xc
	asr r2, r2, #0x10
	bl ovy299_21a1568
_021A19B4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A19E0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021A19E0
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy299_21a150c
	b _021A1A32
_021A19E0:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021A19F8
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A19F8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy299_21a150c
	b _021A1A20
_021A19F8:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021A1A32
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A1A32
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	beq _021A1A20
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xe
	bl ovy299_21a1488
	add r0, r5, #0
	mov r1, #3
	b _021A1A2E
_021A1A20:
	add r0, r5, #0
	mov r1, #4
	mov r2, #0xe
	bl ovy299_21a1488
	add r0, r5, #0
	mov r1, #4
_021A1A2E:
	bl sub_021A14B0
_021A1A32:
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021A1A70
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy299_21a150c
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ovy299_21a150c
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021A1A70:
	ldr r0, [r1]
	mov r1, #0x12
	bl sub_0201765C
	cmp r0, #1
	bne _021A1A86
	add r0, r5, #0
	mov r1, #8
	mov r2, #7
	bl ovy299_21a14c4
_021A1A86:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021A1A8C: .word 0x00000A88
_021A1A90: .word 0x00000B88
_021A1A94: .word 0x021A2834
	thumb_func_end ovy299_21a1894

	thumb_func_start ovy299_21a1a98
ovy299_21a1a98: ; 0x021A1A98
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	ldr r1, _021A1AB0 ; =0x00000A8C
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A1AAE
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021A1AAE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1AB0: .word 0x00000A8C
	thumb_func_end ovy299_21a1a98

	thumb_func_start ovy299_21a1ab4
ovy299_21a1ab4: ; 0x021A1AB4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021A1ABA:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy299_21a1a98
	add r5, r5, #1
	cmp r5, #0x3f
	blo _021A1ABA
	ldr r0, _021A1AD4 ; =0x00000A88
	ldr r0, [r4, r0]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	nop
_021A1AD4: .word 0x00000A88
	thumb_func_end ovy299_21a1ab4

	thumb_func_start ovy299_21a1ad8
ovy299_21a1ad8: ; 0x021A1AD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r3, _021A1D4C ; =0x021A2800
	add r2, sp, #0x38
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021A1D50 ; =0x00000C48
	ldrh r0, [r5, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A1B06
	mov r0, #0x3e
	mov r6, #0x16
	str r0, [sp, #0x1c]
	mov r1, #0x3d
	lsl r6, r6, #4
	b _021A1B18
_021A1B06:
	mov r0, #0x3d
	str r0, [sp, #0x1c]
	mov r0, #0x21
	str r0, [sp, #0x40]
	mov r0, #3
	mov r1, #0x3e
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	lsl r6, r0, #7
_021A1B18:
	ldr r7, _021A1D54 ; =0x00000A8C
	lsl r0, r1, #2
	add r2, r5, r7
	str r0, [sp, #0x20]
	ldr r0, [r2, r0]
	str r2, [sp, #0x24]
	cmp r0, #0
	beq _021A1B72
	add r0, r5, #0
	bl ovy299_21a1a98
	ldr r0, [sp, #0x40]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	add r7, #0xfc
	ldr r0, [r0, r7]
	mvn r1, r1
	cmp r0, r1
	beq _021A1B44
	bl sub_0204B98C
_021A1B44:
	ldr r0, [sp, #0x44]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _021A1D58 ; =0x00000C18
	ldr r0, [r1, r0]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A1B5A
	bl sub_0204BCD0
_021A1B5A:
	ldr r0, [sp, #0x48]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc3
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A1B72
	bl sub_0204BE64
_021A1B72:
	cmp r4, #0
	bne _021A1BE2
	ldr r1, _021A1D5C ; =0x0000806B
	mov r0, #0x9d
	bl sub_0204AA30
	mov r1, #0x6b
	str r1, [sp]
	mov r1, #0x38
	mov r2, #0
	mov r3, #0
	str r0, [sp, #0x28]
	bl sub_0204B81C
	ldr r1, [sp, #0x40]
	lsl r3, r6, #0x10
	lsl r1, r1, #2
	ldr r7, _021A1D60 ; =0x00000B88
	add r1, r5, r1
	str r0, [r1, r7]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	mov r1, #0x34
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204BBB8
	ldr r1, [sp, #0x44]
	mov r3, #0x6b
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r7, #0
	add r1, #0x90
	str r0, [r2, r1]
	ldr r0, [sp, #0x28]
	mov r1, #0x3e
	mov r2, #0x48
	bl sub_0204BDE0
	ldr r1, [sp, #0x48]
	add r7, #0xa8
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, r7]
	ldr r0, [sp, #0x28]
	bl sub_0204AB0C
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	b _021A1CA0
_021A1BE2:
	add r0, sp, #0x30
	ldr r7, _021A1D5C ; =0x0000806B
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r2, sp, #0x34
	add r3, sp, #0x2c
	bl sub_0200D3C8
	add r0, r7, #0
	bl sub_02033E24
	str r0, [sp, #0x18]
	ldr r0, _021A1D64 ; =0x00000147
	cmp r4, r0
	bne _021A1C12
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200DA18
	b _021A1C14
_021A1C12:
	mov r0, #0
_021A1C14:
	ldr r1, [sp, #0x2c]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x6b
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	add r1, r4, #0
	bl sub_02033E78
	ldr r1, [sp, #0x40]
	ldr r7, _021A1D60 ; =0x00000B88
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, r7]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x6b
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl sub_02033E34
	ldr r1, [sp, #0x44]
	lsl r1, r1, #2
	add r2, r5, r1
	add r1, r7, #0
	add r1, #0x90
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x6b
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x2c]
	add r0, r4, #0
	bl sub_02033EF4
	ldr r1, [sp, #0x48]
	add r7, #0xa8
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, r7]
	ldr r0, [sp, #0x18]
	bl sub_0204AB0C
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
_021A1CA0:
	bl ovy299_21a150c
	ldr r0, [sp, #0x40]
	ldr r1, _021A1D60 ; =0x00000B88
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r1]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	lsl r0, r0, #2
	add r2, r5, r0
	add r0, r1, #0
	add r0, #0x90
	ldr r0, [r2, r0]
	add r1, #0xa8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	mov r2, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r1]
	add r1, sp, #0x38
	str r0, [sp, #0x48]
	ldr r0, _021A1D68 ; =0x00000A88
	ldr r0, [r5, r0]
	bl sub_021AD7F0
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r2, r1]
	mov r1, #0
	bl sub_0204C5C8
	ldr r1, [sp, #0x30]
	ldr r2, _021A1D5C ; =0x0000806B
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02020274
	add r7, r0, #0
	cmp r4, #0
	beq _021A1D0E
	mov r1, #0x22
	bl sub_020202AC
	cmp r0, #0
	bne _021A1D0E
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov r2, #1
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C2B0
_021A1D0E:
	add r0, r7, #0
	bl sub_020202A4
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	mov r2, #0
	bl ovy299_21a150c
	lsr r2, r6, #5
	lsl r2, r2, #0x14
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl sub_02026F7C
	ldr r2, _021A1D50 ; =0x00000C48
	mov r1, #1
	ldrh r3, [r5, r2]
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x1f
	lsr r3, r1, #0x1f
	mov r1, #1
	eor r3, r1
	and r1, r3
	orr r0, r1
	strh r0, [r5, r2]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1D4C: .word 0x021A2800
_021A1D50: .word 0x00000C48
_021A1D54: .word 0x00000A8C
_021A1D58: .word 0x00000C18
_021A1D5C: .word 0x0000806B
_021A1D60: .word 0x00000B88
_021A1D64: .word 0x00000147
_021A1D68: .word 0x00000A88
	thumb_func_end ovy299_21a1ad8

	thumb_func_start ovy299_21a1d6c
ovy299_21a1d6c: ; 0x021A1D6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r3, _021A1EF4 ; =0x021A27E8
	add r5, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021A1EF4 ; =0x021A27E8
	add r2, sp, #0x44
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021A1EF8 ; =0x00000C18
	mov r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, r0]
	add r6, r4, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #4]
	add r0, #0x18
	ldr r0, [r5, r0]
	str r0, [sp, #0x54]
	ldr r0, [sp, #4]
	sub r0, #0x90
	str r0, [sp, #4]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0xc]
	add r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #8]
	add r0, #0x38
	str r0, [sp, #8]
_021A1DBE:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	add r1, #8
	add r0, sp, #0x2c
	strh r1, [r0, #0x1a]
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r7, r0]
	mov r2, #0x6b
	str r0, [sp, #0x4c]
	ldr r0, _021A1EFC ; =0x00000A88
	ldr r0, [r5, r0]
	bl sub_021AD7F0
	ldr r1, [sp, #0xc]
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	add r1, r6, #0
	ldr r0, [r7, r0]
	bl sub_0204C5C8
	add r4, r4, #1
	cmp r4, #0x10
	blo _021A1DBE
	ldr r2, [sp]
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	str r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021A1F00 ; =0x00000C1C
	str r2, [sp]
	str r0, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r7, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x10]
	add r0, #0x18
	ldr r0, [r5, r0]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x10]
	sub r0, #0x54
	str r0, [sp, #0x10]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x28]
	add r0, #0x78
	str r0, [sp, #0x28]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x24]
	add r0, #0x78
	str r0, [sp, #0x24]
	ldr r0, _021A1EFC ; =0x00000A88
	add r0, r5, r0
	str r0, [sp, #0x20]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x1c]
	add r0, #0xb8
	str r0, [sp, #0x1c]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x18]
	add r0, #0xb8
	str r0, [sp, #0x18]
	ldr r0, _021A1EFC ; =0x00000A88
	str r0, [sp, #0x14]
	add r0, #0xb8
	str r0, [sp, #0x14]
_021A1E50:
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	add r1, #0x20
	add r0, sp, #0x2c
	strh r1, [r0, #0x1a]
	lsl r0, r6, #2
	add r4, r5, r0
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0x6b
	str r0, [sp, #0x4c]
	add r0, sp, #0x2c
	strh r1, [r0, #0x2e]
	ldr r0, _021A1EFC ; =0x00000A88
	add r1, sp, #0x44
	ldr r0, [r5, r0]
	bl sub_021AD7F0
	ldr r1, [sp, #0x28]
	str r0, [r4, r1]
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C5C8
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x1d
	mov r2, #1
	bl ovy299_21a153c
	ldr r0, [sp, #0x20]
	add r1, sp, #0x44
	ldr r0, [r0]
	mov r2, #0x6b
	bl sub_021AD7F0
	ldr r1, [sp, #0x1c]
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C5C8
	ldr r0, [sp, #0x14]
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_0204C318
	add r6, r6, #1
	cmp r6, #0x10
	blo _021A1E50
	mov r4, #0
_021A1EBE:
	add r1, r7, #0
	add r0, r5, #0
	add r1, #0xd
	add r2, r4, #0
	bl ovy299_21a150c
	add r7, r7, #1
	cmp r7, #0x10
	blo _021A1EBE
	mov r6, #0
_021A1ED2:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x1d
	add r2, r6, #0
	bl ovy299_21a150c
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x2d
	add r2, r6, #0
	bl ovy299_21a150c
	add r4, r4, #1
	cmp r4, #0x10
	blo _021A1ED2
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1EF4: .word 0x021A27E8
_021A1EF8: .word 0x00000C18
_021A1EFC: .word 0x00000A88
_021A1F00: .word 0x00000C1C
	thumb_func_end ovy299_21a1d6c

	thumb_func_start ovy299_21a1f04
ovy299_21a1f04: ; 0x021A1F04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _021A1FA0 ; =0x0000806B
	mov r0, #7
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204AA30
	str r0, [sp, #0xc]
	add r0, sp, #0x28
	ldrh r0, [r0]
	add r1, r7, #0
	mov r3, #0
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl sub_02020F94
	add r1, r0, #0
	ldr r0, _021A1FA0 ; =0x0000806B
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r3, sp, #0x10
	bl sub_0204B2DC
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	ldr r0, _021A1FA4 ; =0x00000A8C
	bne _021A1F5E
	add r1, r5, r0
	lsl r0, r4, #2
	add r4, r1, r0
	ldr r0, [r1, r0]
	bl sub_0204C428
	mov r1, #0
	str r1, [sp]
	ldr r1, [sp, #0x10]
	mov r2, #1
	ldr r1, [r1, #0x14]
	b _021A1F72
_021A1F5E:
	add r1, r5, r0
	lsl r0, r4, #2
	add r4, r1, r0
	ldr r0, [r1, r0]
	bl sub_0204C428
	mov r2, #1
	str r2, [sp]
	ldr r1, [sp, #0x10]
	ldr r1, [r1, #0x14]
_021A1F72:
	lsl r2, r2, #0xa
	mov r3, #0
	bl sub_0204BAB8
	ldr r0, [sp, #8]
	bl sub_0203A24C
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_02021034
	add r1, r0, #0
	ldr r0, [r4]
	mov r2, #1
	bl sub_0204C378
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A1FA0: .word 0x0000806B
_021A1FA4: .word 0x00000A8C
	thumb_func_end ovy299_21a1f04

	thumb_func_start ovy299_21a1fa8
ovy299_21a1fa8: ; 0x021A1FA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _021A1FCA
	mov r5, #0xd
_021A1FB2:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	bne _021A1FC2
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021A1FC2:
	add r5, r5, #1
	cmp r5, #0x1d
	blo _021A1FB2
	b _021A1FE2
_021A1FCA:
	mov r5, #0x1d
_021A1FCC:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	bne _021A1FDC
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021A1FDC:
	add r5, r5, #1
	cmp r5, #0x2d
	blo _021A1FCC
_021A1FE2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy299_21a1fa8

	thumb_func_start ovy299_21a1fe8
ovy299_21a1fe8: ; 0x021A1FE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _021A2094 ; =0x0000806B
	add r4, r2, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r7, r3, #0
	ldr r0, [r0, #4]
	add r2, sp, #0x14
	add r3, sp, #0xc
	bl sub_0200D3C8
	add r0, r5, #0
	add r1, r7, #0
	bl ovy299_21a1fa8
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	lsl r3, r3, #0x10
	add r0, r5, #0
	lsr r3, r3, #0x10
	bl ovy299_21a1f04
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy299_21a150c
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy299_21a14c4
	cmp r7, #1
	bne _021A205C
	add r4, #8
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x70
	asr r3, r3, #0x10
	bl ovy299_21a1568
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A205C:
	add r4, #8
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x70
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #1
	add r1, r6, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x10
	mov r2, #0x70
	asr r3, r3, #0x10
	bl ovy299_21a1568
	add r6, #0x10
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy299_21a150c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2094: .word 0x0000806B
	thumb_func_end ovy299_21a1fe8

	thumb_func_start ovy299_21a2098
ovy299_21a2098: ; 0x021A2098
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	mov r5, #0xd
	add r7, sp, #4
_021A20A4:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A20F8
	mov r0, #0
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy299_21a158c
	mov r0, #0
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	ble _021A20EE
	cmp r1, #0xc8
	blt _021A20F8
_021A20EE:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy299_21a150c
_021A20F8:
	add r5, r5, #1
	cmp r5, #0x1d
	blo _021A20A4
	mov r5, #0x1d
	add r7, sp, #4
_021A2102:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A217E
	mov r0, #1
	add r2, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy299_21a158c
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r3, r3, r6
	lsl r3, r3, #0x10
	add r0, r4, #0
	add r1, r5, #0
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	ldrsh r3, [r7, r3]
	mov r2, #2
	add r1, r5, #0
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldrsh r2, [r7, r2]
	add r0, r4, #0
	add r1, #0x10
	asr r3, r3, #0x10
	bl ovy299_21a1568
	mov r0, #0
	ldrsh r0, [r7, r0]
	add r1, r0, r6
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	ble _021A2168
	cmp r1, #0xc8
	blt _021A217E
_021A2168:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy299_21a150c
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x10
	mov r2, #0
	bl ovy299_21a150c
_021A217E:
	add r5, r5, #1
	cmp r5, #0x2d
	blo _021A2102
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy299_21a2098

	thumb_func_start ovy299_21a2188
ovy299_21a2188: ; 0x021A2188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A21EC ; =0x00000C4C
	mov r2, #0
	strh r2, [r5, r0]
	add r1, r0, #2
	strh r2, [r5, r1]
	mov r4, #0xd
	add r6, r5, r0
	mov r7, #1
_021A219C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A21BA
	add r1, r4, #0
	sub r1, #0xd
	add r2, r7, #0
	lsl r2, r1
	lsl r1, r2, #0x10
	ldrh r0, [r6]
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r6]
_021A21BA:
	add r4, r4, #1
	cmp r4, #0x1d
	blo _021A219C
	ldr r6, _021A21F0 ; =0x00000C4E
	mov r4, #0x1d
	mov r7, #1
_021A21C6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A1528
	cmp r0, #0
	beq _021A21E4
	add r1, r4, #0
	sub r1, #0x1d
	add r2, r7, #0
	lsl r2, r1
	lsl r1, r2, #0x10
	ldrh r0, [r5, r6]
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r5, r6]
_021A21E4:
	add r4, r4, #1
	cmp r4, #0x2d
	blo _021A21C6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A21EC: .word 0x00000C4C
_021A21F0: .word 0x00000C4E
	thumb_func_end ovy299_21a2188

	thumb_func_start ovy299_21a21f4
ovy299_21a21f4: ; 0x021A21F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A2260 ; =0x00000C4C
	add r5, r0, #0
	mov r4, #0xd
	mov r6, #1
_021A21FE:
	add r0, r4, #0
	ldrh r2, [r5, r7]
	sub r0, #0xd
	add r1, r6, #0
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	beq _021A2218
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy299_21a150c
_021A2218:
	add r4, r4, #1
	cmp r4, #0x1d
	blo _021A21FE
	mov r4, #0x1d
	mov r6, #0
	mov r7, #1
_021A2224:
	ldr r0, _021A2264 ; =0x00000C4E
	add r1, r7, #0
	ldrh r2, [r5, r0]
	add r0, r4, #0
	sub r0, #0x1d
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	beq _021A224C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy299_21a150c
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x10
	add r2, r6, #0
	bl ovy299_21a150c
_021A224C:
	add r4, r4, #1
	cmp r4, #0x2d
	blo _021A2224
	ldr r0, _021A2260 ; =0x00000C4C
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2260: .word 0x00000C4C
_021A2264: .word 0x00000C4E
	thumb_func_end ovy299_21a21f4

	thumb_func_start ovy299_21a2268
ovy299_21a2268: ; 0x021A2268
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x18
	mul r0, r6
	add r6, r0, #0
	add r6, #8
	mov r4, #0xd
	mov r7, #0
_021A227C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A1528
	cmp r0, #0
	bne _021A2290
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	b _021A22C4
_021A2290:
	add r2, sp, #4
	add r0, r5, #0
	add r1, r4, #0
	add r2, #2
	add r3, sp, #4
	str r7, [sp]
	bl ovy299_21a158c
	add r1, sp, #4
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r6, r0
	bne _021A22BE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A14E4
	cmp r0, #1
	beq _021A22C8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	b _021A22C4
_021A22BE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
_021A22C4:
	bl ovy299_21a14c4
_021A22C8:
	add r4, r4, #1
	cmp r4, #0x1d
	blo _021A227C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy299_21a2268

	thumb_func_start ovy299_21a22d4
ovy299_21a22d4: ; 0x021A22D4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r2, sp, #4
	mov r4, #0
	mov r1, #0
	add r2, #2
	add r3, sp, #4
	add r5, r0, #0
	str r4, [sp]
	bl ovy299_21a158c
	mov r0, #0xc5
	add r1, sp, #4
	lsl r0, r0, #4
	ldrsh r1, [r1, r4]
	ldr r0, [r5, r0]
	bl sub_0219C324
	add r3, r0, #0
	cmp r3, #0xc
	bhs _021A2302
	mov r3, #0xc
	b _021A2308
_021A2302:
	cmp r3, #0x9c
	bls _021A2308
	mov r3, #0x9c
_021A2308:
	lsl r3, r3, #0x10
	mov r1, #0
	add r0, r5, #0
	mov r2, #0xfc
	asr r3, r3, #0x10
	str r1, [sp]
	bl ovy299_21a1568
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy299_21a22d4

	thumb_func_start ovy299_21a231c
ovy299_21a231c: ; 0x021A231C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r5, r1, #0
	bl sub_0219CC34
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_021A14E4
	cmp r0, #0xc
	bne _021A233E
	cmp r5, #0
	bne _021A2362
_021A233E:
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0219CC3C
	cmp r0, #0
	bne _021A2358
	cmp r6, #0
	bne _021A2358
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x12
	b _021A235E
_021A2358:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #4
_021A235E:
	bl ovy299_21a14c4
_021A2362:
	add r0, r4, #0
	mov r1, #9
	bl sub_021A14E4
	cmp r0, #0xd
	bne _021A2372
	cmp r5, #0
	bne _021A23A0
_021A2372:
	mov r5, #0xc5
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_0219CC44
	cmp r0, #0
	bne _021A2396
	add r5, #8
	ldr r0, [r4, r5]
	sub r0, r0, #1
	cmp r6, r0
	bne _021A2396
	add r0, r4, #0
	mov r1, #9
	mov r2, #0x13
	bl ovy299_21a14c4
	pop {r4, r5, r6, pc}
_021A2396:
	add r0, r4, #0
	mov r1, #9
	mov r2, #5
	bl ovy299_21a14c4
_021A23A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy299_21a231c

	thumb_func_start ovy299_21a23a4
ovy299_21a23a4: ; 0x021A23A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #1
	bne _021A23B8
	ldr r0, _021A25C0 ; =0x021A296C
	b _021A23BA
_021A23B8:
	ldr r0, _021A25C4 ; =0x021A29B0
_021A23BA:
	bl sub_0203DA0C
	mov r6, #0
	add r4, r0, #0
	mvn r6, r6
	cmp r4, r6
	bne _021A23CA
	b _021A2508
_021A23CA:
	cmp r4, #8
	bne _021A23DE
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1DC
	cmp r0, #0
	bne _021A23DE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A23DE:
	cmp r4, #9
	bne _021A2402
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #0
	bne _021A23F4
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A23F4:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2402
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A2402:
	cmp r4, #0xa
	bne _021A242C
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2414
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A2414:
	bl sub_0203D554
	cmp r0, #0
	bne _021A242C
	mov r0, #1
	bl sub_0203D564
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CCA0
_021A242C:
	cmp r4, #0xd
	bne _021A2472
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	cmp r0, #1
	bne _021A2448
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #1
	beq _021A244E
_021A2448:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A244E:
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021A245C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A245C:
	ldr r0, [r1, #4]
	bl sub_0200D1F8
	cmp r0, #1
	beq _021A246C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A246C:
	mov r0, #1
	bl sub_0203D564
_021A2472:
	cmp r4, #0xe
	bne _021A24D4
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1AC
	cmp r0, #1
	bne _021A248E
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #1
	beq _021A2494
_021A248E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A2494:
	ldr r1, [r5]
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021A24A2
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24A2:
	ldr r0, [r1, #4]
	bl sub_0200D1AC
	cmp r0, #1
	ldr r0, [r5]
	bne _021A24BE
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	bne _021A24CE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24BE:
	ldr r0, [r0, #4]
	bl sub_0200D1F8
	cmp r0, #1
	bne _021A24CE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24CE:
	mov r0, #1
	bl sub_0203D564
_021A24D4:
	cmp r4, #0xf
	bne _021A24FE
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #0
	bne _021A24EA
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24EA:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A24F8
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021A24F8:
	mov r0, #1
	bl sub_0203D564
_021A24FE:
	mov r0, #1
	bl sub_0203D564
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A2508:
	bl sub_0203DEFC
	mov r6, #2
	tst r0, r6
	beq _021A251C
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_021A251C:
	bl sub_0203DEFC
	lsl r1, r6, #9
	tst r0, r1
	beq _021A2530
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021A2530:
	bl sub_0203DEFC
	mov r6, #8
	tst r0, r6
	beq _021A2550
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1DC
	cmp r0, #1
	bne _021A2550
	mov r0, #0
	bl sub_0203D564
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A2550:
	bl sub_0203DEFC
	mov r6, #4
	tst r0, r6
	beq _021A2580
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0200D1C0
	cmp r0, #0
	bne _021A256A
	sub r0, r6, #5
	pop {r4, r5, r6, pc}
_021A256A:
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2576
	sub r0, r6, #5
	pop {r4, r5, r6, pc}
_021A2576:
	mov r0, #0
	bl sub_0203D564
	mov r0, #9
	pop {r4, r5, r6, pc}
_021A2580:
	bl sub_0203DEFC
	lsl r1, r6, #9
	tst r0, r1
	beq _021A25BA
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r0, #1
	bne _021A2596
	sub r0, r6, #5
	pop {r4, r5, r6, pc}
_021A2596:
	bl sub_0203D554
	cmp r0, #1
	bne _021A25B0
	mov r0, #0
	bl sub_0203D564
	mov r0, #0xc5
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219CC90
	b _021A25B6
_021A25B0:
	mov r0, #0
	bl sub_0203D564
_021A25B6:
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_021A25BA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021A25C0: .word 0x021A296C
_021A25C4: .word 0x021A29B0
	thumb_func_end ovy299_21a23a4
_021A25C8:
	.byte 0xC1, 0xFB, 0x19, 0x02, 0xF1, 0xFB, 0x19, 0x02
	.byte 0x05, 0xFC, 0x19, 0x02, 0x15, 0x05, 0x1A, 0x02, 0x65, 0x05, 0x1A, 0x02, 0xB1, 0x05, 0x1A, 0x02
	.byte 0x02, 0x06, 0x08, 0x00, 0x18, 0x03, 0x0B, 0x00, 0x0B, 0x03, 0x01, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x03, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x07, 0x00, 0x00, 0x48, 0x27, 0x1A, 0x02
	.byte 0xD4, 0x25, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x30, 0x47, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x60, 0x77, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x80, 0xE7, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0xA0, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xBF, 0x88, 0x9F, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xBF, 0xA0, 0xB7, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x19, 0x06, 0x1A, 0x02, 0xCD, 0x06, 0x1A, 0x02, 0x65, 0x07, 0x1A, 0x02, 0x7D, 0x07, 0x1A, 0x02
	.byte 0x1D, 0x08, 0x1A, 0x02, 0x6D, 0x0C, 0x1A, 0x02, 0xC1, 0x0C, 0x1A, 0x02, 0xE9, 0x0C, 0x1A, 0x02
	.byte 0x89, 0x0D, 0x1A, 0x02, 0x05, 0x01, 0x00, 0x11, 0x03, 0x04, 0x05, 0x02, 0x03, 0x0D, 0x03, 0x04
	.byte 0x05, 0x10, 0x03, 0x0F, 0x03, 0x04, 0x00, 0x00, 0x0C, 0x07, 0x03, 0x0F, 0x00, 0x00, 0x0F, 0x07
	.byte 0x03, 0x0F, 0x00, 0x00, 0x12, 0x07, 0x03, 0x0F, 0x70, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x01, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x06, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0xFC, 0x00, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x54, 0x00
	.byte 0x03, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x30, 0x00, 0x06, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x6E, 0x00
	.byte 0x0D, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x85, 0x00, 0x0D, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x9C, 0x00
	.byte 0x0D, 0x00, 0x0A, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00, 0x01, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0xAC, 0x00, 0x06, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0xA8, 0x00
	.byte 0x05, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0xA8, 0x00, 0x04, 0x00, 0x00, 0x01, 0x22, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0xB4, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x68, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x01, 0x23, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5F, 0x00, 0x5F
	.byte 0x00, 0x17, 0x60, 0x7F, 0x18, 0x2F, 0x60, 0x7F, 0x30, 0x47, 0x60, 0x7F, 0x48, 0x5F, 0x60, 0x7F
	.byte 0x60, 0x77, 0x60, 0x7F, 0x78, 0x8F, 0x60, 0x7F, 0x90, 0xA7, 0x60, 0x7F, 0xA8, 0xBF, 0x48, 0x87
	.byte 0xA8, 0xBF, 0x00, 0x47, 0xA8, 0xBF, 0xB8, 0xCF, 0xA8, 0xBF, 0xD0, 0xE7, 0xA8, 0xBF, 0xE8, 0xFF
	.byte 0x62, 0x7A, 0x00, 0x40, 0x79, 0x91, 0x00, 0x40, 0x90, 0xA8, 0x00, 0x40, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x5F, 0x00, 0x5F, 0x00, 0x17, 0x60, 0x7F, 0x18, 0x2F, 0x60, 0x7F, 0x30, 0x47, 0x60, 0x7F
	.byte 0x48, 0x5F, 0x60, 0x7F, 0x60, 0x77, 0x60, 0x7F, 0x78, 0x8F, 0x60, 0x7F, 0x90, 0xA7, 0x60, 0x7F
	.byte 0xA8, 0xBF, 0x28, 0x67, 0xA8, 0xBF, 0x00, 0x47, 0xA8, 0xBF, 0xB8, 0xCF, 0xA8, 0xBF, 0xD0, 0xE7
	.byte 0xA8, 0xBF, 0xE8, 0xFF, 0x62, 0x7A, 0x00, 0x40, 0x79, 0x91, 0x00, 0x40, 0x90, 0xA8, 0x00, 0x40
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A25C8
