    .include "macros/function.inc"
	.include "overlay265.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy265_21998c0
ovy265_21998c0: ; 0x021998C0
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x8d
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	ldr r6, _021998F4 ; =0x0000919C
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x8d
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #1
	str r5, [r4]
	bl sub_02038BC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021998F4: .word 0x0000919C
	thumb_func_end ovy265_21998c0

	thumb_func_start ovy265_21998f8
ovy265_21998f8: ; 0x021998F8
	push {r3, lr}
	add r0, r3, #0
	bl ovy265_219a1d4
	cmp r0, #0
	bne _02199908
	mov r0, #1
	pop {r3, pc}
_02199908:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy265_21998f8

	thumb_func_start ovy265_219990c
ovy265_219990c: ; 0x0219990C
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x8d
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy265_219990c

	thumb_func_start ovy265_219991c
ovy265_219991c: ; 0x0219991C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02199930 ; =ovy265_2199958
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02199930: .word ovy265_2199958
	thumb_func_end ovy265_219991c

	thumb_func_start ovy265_2199934
ovy265_2199934: ; 0x02199934
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02199948 ; =ovy265_2199978
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02199948: .word ovy265_2199978
	thumb_func_end ovy265_2199934

	thumb_func_start sub_0219994C
sub_0219994C: ; 0x0219994C
	ldr r0, [r0, #4]
	ldr r3, _02199954 ; =GFL_TCBRemove
	bx r3
	nop
_02199954: .word GFL_TCBRemove
	thumb_func_end sub_0219994C

	thumb_func_start ovy265_2199958
ovy265_2199958: ; 0x02199958
	push {r3, lr}
	bl sub_0204B7C8
	bl sub_0204E27C
	ldr r3, _02199970 ; =0x02FE0000
	ldr r1, _02199974 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_02199970: .word 0x02FE0000
_02199974: .word 0x00003FF8
	thumb_func_end ovy265_2199958

	thumb_func_start ovy265_2199978
ovy265_2199978: ; 0x02199978
	push {r3, lr}
	bl sub_02045A5C
	bl sub_0204B7C8
	ldr r3, _02199990 ; =0x02FE0000
	ldr r1, _02199994 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_02199990: .word 0x02FE0000
_02199994: .word 0x00003FF8
	thumb_func_end ovy265_2199978

	thumb_func_start ovy265_2199998
ovy265_2199998: ; 0x02199998
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl sub_02046BE0
	cmp r4, #0
	bne _021999AE
	ldr r0, _021999B8 ; =0x0219B824
	bl sub_02046C40
	pop {r4, pc}
_021999AE:
	ldr r0, _021999BC ; =0x0219B854
	bl sub_02046C40
	pop {r4, pc}
	nop
_021999B8: .word 0x0219B824
_021999BC: .word 0x0219B854
	thumb_func_end ovy265_2199998

	thumb_func_start sub_021999C0
sub_021999C0: ; 0x021999C0
	cmp r0, #0
	bne _021999C8
	ldr r0, _021999CC ; =0x0219B824
	bx lr
_021999C8:
	ldr r0, _021999D0 ; =0x0219B854
	bx lr
	.align 2, 0
_021999CC: .word 0x0219B824
_021999D0: .word 0x0219B854
	thumb_func_end sub_021999C0

	thumb_func_start sub_021999D4
sub_021999D4: ; 0x021999D4
	ldr r3, _021999DC ; =sub_020444A4
	mov r0, #0x8d
	bx r3
	nop
_021999DC: .word sub_020444A4
	thumb_func_end sub_021999D4

	thumb_func_start sub_021999E0
sub_021999E0: ; 0x021999E0
	ldr r3, _021999E4 ; =sub_02044528
	bx r3
	.align 2, 0
_021999E4: .word sub_02044528
	thumb_func_end sub_021999E0

	thumb_func_start ovy265_21999e8
ovy265_21999e8: ; 0x021999E8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02199A14 ; =0x0219B89C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	mov r0, #0
	mov r1, #0
	bl sub_02045350
	mov r0, #4
	mov r1, #0
	bl sub_02045350
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02199A14: .word 0x0219B89C
	thumb_func_end ovy265_21999e8

	thumb_func_start ovy265_2199a18
ovy265_2199a18: ; 0x02199A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r3, _02199AF8 ; =0x0219B8AC
	add r2, sp, #0x18
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #3
	add r1, r4, #0
	mov r2, #2
	mov r5, #2
	bl sub_0204476C
	mov r0, #7
	add r1, r4, #0
	mov r2, #2
	mov r6, #7
	bl sub_0204476C
	add r7, sp, #8
	lsl r2, r5, #0xb
	mov r4, #0
	add r0, r7, #0
	mov r1, #0
	add r3, r2, #0
	str r4, [sp]
	bl sub_02050610
	str r4, [sp]
	ldr r0, _02199AFC ; =0x04000030
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #4]
	blx G2x_SetBGyAffine_
	str r4, [sp]
	ldr r0, _02199B00 ; =0x04001030
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #4]
	blx G2x_SetBGyAffine_
	mov r0, #3
	mov r1, #0
	mov r2, #0xa0
	mov r5, #0xa0
	bl sub_02045E1C
	mov r0, #3
	mov r1, #3
	mov r2, #0x70
	bl sub_02045E1C
	mov r0, #7
	mov r1, #0
	mov r2, #0xa0
	bl sub_02045E1C
	mov r2, #0
	mov r0, #7
	mov r1, #3
	sub r2, #0x98
	bl sub_02045E1C
	mov r0, #3
	mov r1, #9
	mov r2, #0xa0
	mov r7, #9
	bl sub_02045EA0
	mov r0, #3
	mov r1, #0xc
	mov r2, #0xa0
	bl sub_02045EA0
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02045EA0
	add r0, r6, #0
	mov r1, #0xc
	add r2, r5, #0
	bl sub_02045EA0
	mov r0, #8
	mov r1, #1
	bl sub_02046CFC
	mov r0, #8
	mov r1, #1
	bl sub_02046D84
	add r0, r4, #0
	add r1, r4, #0
	bl sub_02045350
	mov r0, #4
	add r1, r4, #0
	bl sub_02045350
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199AF8: .word 0x0219B8AC
_02199AFC: .word 0x04000030
_02199B00: .word 0x04001030
	thumb_func_end ovy265_2199a18

	thumb_func_start ovy265_2199b04
ovy265_2199b04: ; 0x02199B04
	push {r3, lr}
	mov r0, #8
	mov r1, #0
	bl sub_02046CFC
	mov r0, #8
	mov r1, #0
	bl sub_02046D84
	mov r0, #7
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy265_2199b04

	thumb_func_start ovy265_2199b24
ovy265_2199b24: ; 0x02199B24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0xd5
	mov r1, #0x8d
	mov r5, #0x8d
	bl sub_0204AA30
	mov r6, #0x20
	mov r7, #6
	str r6, [sp]
	lsl r7, r7, #0xc
	add r4, r0, #0
	str r5, [sp, #4]
	mov r1, #1
	mov r2, #2
	add r3, r7, #0
	bl sub_0204B0D4
	str r6, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r7, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x16
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy265_2199b24

	thumb_func_start ovy265_2199bac
ovy265_2199bac: ; 0x02199BAC
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _02199BD4 ; =0x04000050
	mov r4, #0xa
	mov r1, #1
	mov r2, #0x2e
	mov r3, #6
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _02199BD8 ; =0x04001050
	mov r1, #1
	mov r2, #0x2e
	mov r3, #6
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	nop
_02199BD4: .word 0x04000050
_02199BD8: .word 0x04001050
	thumb_func_end ovy265_2199bac

	thumb_func_start ovy265_2199bdc
ovy265_2199bdc: ; 0x02199BDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r2, #0x22
	mov r3, #0x8d
	mov r7, #2
	mov r6, #0x8d
	bl GFL_MsgSysLoadData
	ldr r4, _02199C34 ; =0x00009038
	mov r1, #0
	str r0, [r5, r4]
	mov r0, #0x17
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	sub r1, #8
	str r0, [r5, r1]
	mov r0, #0x17
	mov r1, #3
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl GFL_FontCreate
	sub r1, r4, #4
	str r0, [r5, r1]
	mov r0, #0x8d
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #4
	str r0, [r5, r1]
	lsl r0, r7, #9
	mov r1, #0x8d
	bl GFL_StrBufCreate
	add r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199C34: .word 0x00009038
	thumb_func_end ovy265_2199bdc

	thumb_func_start ovy265_2199c38
ovy265_2199c38: ; 0x02199C38
	push {r3, r4, r5, lr}
	ldr r4, _02199C6C ; =0x00009040
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02022DA8
	sub r4, #8
	ldr r0, [r5, r4]
	bl GFL_MsgDataFree
	pop {r3, r4, r5, pc}
	nop
_02199C6C: .word 0x00009040
	thumb_func_end ovy265_2199c38

	thumb_func_start ovy265_2199c70
ovy265_2199c70: ; 0x02199C70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02199C88 ; =0x0219B7DC
	mov r1, #1
	bl sub_02005AF4
	str r0, [r4, #0xc]
	ldr r0, _02199C8C ; =0x000003F7
	ldr r1, _02199C90 ; =0x0000FFFF
	bl sub_02005DF4
	pop {r4, pc}
	.align 2, 0
_02199C88: .word 0x0219B7DC
_02199C8C: .word 0x000003F7
_02199C90: .word 0x0000FFFF
	thumb_func_end ovy265_2199c70

	thumb_func_start sub_02199C94
sub_02199C94: ; 0x02199C94
	ldr r0, [r0, #0xc]
	ldr r3, _02199C9C ; =sub_02005B60
	bx r3
	nop
_02199C9C: .word sub_02005B60
	thumb_func_end sub_02199C94

	thumb_func_start ovy265_2199ca0
ovy265_2199ca0: ; 0x02199CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _02199D0C ; =0x0000915E
	add r5, r0, #0
	mov r4, #0
	strb r4, [r5, r7]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0201FDF8
	cmp r0, #0
	bls _02199D06
	add r0, r7, #0
	str r0, [sp, #4]
	sub r0, #0x1e
	str r0, [sp, #4]
_02199CC0:
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_0201FF08
	add r6, r0, #0
	bl sub_0201CC0C
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _02199CF0
	ldrb r0, [r5, r7]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [sp, #4]
	str r6, [r1, r0]
	ldrb r0, [r5, r7]
	add r0, r0, #1
	strb r0, [r5, r7]
_02199CF0:
	ldr r1, [sp]
	add r0, r6, #0
	bl sub_0201CC4C
	ldr r0, [r5]
	add r4, r4, #1
	ldr r0, [r0]
	bl sub_0201FDF8
	cmp r4, r0
	blo _02199CC0
_02199D06:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199D0C: .word 0x0000915E
	thumb_func_end ovy265_2199ca0

	thumb_func_start ovy265_2199d10
ovy265_2199d10: ; 0x02199D10
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02199D60 ; =0x0000915D
	add r5, r0, #0
	ldrb r0, [r5, r6]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r6, #0
	sub r0, #0x1d
	ldr r4, [r1, r0]
	add r0, r4, #0
	bl sub_0201CC0C
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	sub r1, r6, #5
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CCF8
	sub r1, r6, #3
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	sub r1, r6, #1
	strb r0, [r5, r1]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0201CC4C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02199D60: .word 0x0000915D
	thumb_func_end ovy265_2199d10

	thumb_func_start ovy265_2199d64
ovy265_2199d64: ; 0x02199D64
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02199DB8 ; =0x00009158
	add r5, r0, #0
	ldrh r0, [r5, r4]
	ldr r1, _02199DBC ; =0x000001B9
	cmp r0, r1
	bne _02199D9A
	add r6, sp, #0x10
	add r0, r6, #0
	bl sub_02006D54
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r6, [sp, #0xc]
	add r1, r4, #4
	ldrh r0, [r5, r4]
	ldrb r1, [r5, r1]
	mov r2, #0x40
	bl sub_02006A44
	add r4, #0x2c
	add sp, #0x14
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, pc}
_02199D9A:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	add r1, r4, #4
	ldrb r1, [r5, r1]
	mov r2, #0x40
	bl sub_02006A44
	add r4, #0x2c
	str r0, [r5, r4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02199DB8: .word 0x00009158
_02199DBC: .word 0x000001B9
	thumb_func_end ovy265_2199d64

	thumb_func_start ovy265_2199dc0
ovy265_2199dc0: ; 0x02199DC0
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _02199E4C ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _02199E50 ; =0xFFFFCFFD
	mov r4, #0
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _02199E54 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r5, #2
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r5, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _02199E58 ; =0xBFFF0000
	ldr r0, _02199E5C ; =0x04000580
	str r1, [r0]
	ldr r5, _02199E60 ; =0x0219B804
_02199E2E:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _02199E2E
	mov r0, #1
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_02199E4C: .word 0x04000008
_02199E50: .word 0xFFFFCFFD
_02199E54: .word 0x0000CFEF
_02199E58: .word 0xBFFF0000
_02199E5C: .word 0x04000580
_02199E60: .word 0x0219B804
	thumb_func_end ovy265_2199dc0

	thumb_func_start ovy265_2199e64
ovy265_2199e64: ; 0x02199E64
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x8d
	str r0, [sp, #4]
	ldr r0, _02199E94 ; =ovy265_2199dc0
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	mov r0, #0x20
	mov r1, #0x20
	mov r2, #0x8d
	bl sub_02049D24
	str r0, [r4, #0x10]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02199E94: .word ovy265_2199dc0
	thumb_func_end ovy265_2199e64

	thumb_func_start ovy265_2199e98
ovy265_2199e98: ; 0x02199E98
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl sub_02049DDC
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy265_2199e98

	thumb_func_start ovy265_2199ea8
ovy265_2199ea8: ; 0x02199EA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	bl sub_02049AF0
	ldr r0, [r4, #0x18]
	bl sub_02019AE8
	ldr r0, [r4, #0x18]
	bl sub_02019C0C
	bl sub_02049AA0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy265_2199ea8

	thumb_func_start ovy265_2199ec8
ovy265_2199ec8: ; 0x02199EC8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	bl sub_02049AF0
	bl sub_0204E260
	cmp r0, #1
	bne _02199EF2
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	mov r2, #1
	bl ovy265_219a008
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	mov r2, #1
	bl ovy265_219a008
	b _02199F06
_02199EF2:
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ovy265_219a008
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	mov r2, #0
	bl ovy265_219a008
_02199F06:
	bl sub_0204F954
	bl sub_02049AA0
	bl sub_0204E26C
	pop {r4, pc}
	thumb_func_end ovy265_2199ec8

	thumb_func_start sub_02199F14
sub_02199F14: ; 0x02199F14
	ldr r3, _02199F1C ; =sub_0204E15C
	mov r0, #0x8d
	bx r3
	nop
_02199F1C: .word sub_0204E15C
	thumb_func_end sub_02199F14

	thumb_func_start sub_02199F20
sub_02199F20: ; 0x02199F20
	ldr r3, _02199F24 ; =sub_0204E240
	bx r3
	.align 2, 0
_02199F24: .word sub_0204E240
	thumb_func_end sub_02199F20

	thumb_func_start sub_02199F28
sub_02199F28: ; 0x02199F28
	ldr r3, _02199F30 ; =sub_0204F918
	mov r0, #0x8d
	bx r3
	nop
_02199F30: .word sub_0204F918
	thumb_func_end sub_02199F28

	thumb_func_start sub_02199F34
sub_02199F34: ; 0x02199F34
	ldr r3, _02199F38 ; =sub_0204FB4C
	bx r3
	.align 2, 0
_02199F38: .word sub_0204FB4C
	thumb_func_end sub_02199F34

	thumb_func_start ovy265_2199f3c
ovy265_2199f3c: ; 0x02199F3C
	push {r4, lr}
	mov r1, #0x12
	add r4, r0, #0
	add r0, #0x30
	lsl r1, r1, #0xa
	mov r2, #1
	mov r3, #0x8d
	bl sub_0204F968
	str r0, [r4, #0x28]
	ldr r1, _02199F70 ; =0x0000915A
	mov r0, #0xd5
	ldrh r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _02199F74 ; =0x0219B8CC
	ldr r1, [r1, r2]
	mov r2, #0x8d
	bl sub_0204FDF8
	add r1, r0, #0
	ldr r0, [r4, #0x28]
	mov r2, #1
	mov r3, #0
	bl sub_0204FE04
	pop {r4, pc}
	.align 2, 0
_02199F70: .word 0x0000915A
_02199F74: .word 0x0219B8CC
	thumb_func_end ovy265_2199f3c

	thumb_func_start ovy265_2199f78
ovy265_2199f78: ; 0x02199F78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0204FA84
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
	thumb_func_end ovy265_2199f78

	thumb_func_start ovy265_2199f88
ovy265_2199f88: ; 0x02199F88
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _02199FAC ; =0x0219B890
	add r5, sp, #0
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #0x28]
	bl sub_0205006C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02199FAC: .word 0x0219B890
	thumb_func_end ovy265_2199f88

	thumb_func_start ovy265_2199fb0
ovy265_2199fb0: ; 0x02199FB0
	push {r4, lr}
	ldr r1, _02199FDC ; =0x00004830
	add r4, r0, #0
	add r0, r4, r1
	sub r1, #0x30
	mov r2, #1
	mov r3, #0x8d
	bl sub_0204F968
	str r0, [r4, #0x2c]
	mov r0, #0xd5
	mov r1, #0x33
	mov r2, #0x8d
	bl sub_0204FDF8
	add r1, r0, #0
	ldr r0, [r4, #0x2c]
	mov r2, #1
	mov r3, #0
	bl sub_0204FE04
	pop {r4, pc}
	.align 2, 0
_02199FDC: .word 0x00004830
	thumb_func_end ovy265_2199fb0

	thumb_func_start ovy265_2199fe0
ovy265_2199fe0: ; 0x02199FE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_0204FA84
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ovy265_2199fe0

	thumb_func_start ovy265_2199ff0
ovy265_2199ff0: ; 0x02199FF0
	push {lr}
	sub sp, #0xc
	add r2, sp, #0
	mov r3, #0
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r0, #0x2c]
	bl sub_0205006C
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy265_2199ff0

	thumb_func_start ovy265_219a008
ovy265_219a008: ; 0x0219A008
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r1, #0
	beq _0219A05A
	cmp r2, #1
	bne _0219A01E
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp, #0x10]
	ldr r0, _0219A060 ; =0xFFFFC000
	b _0219A028
_0219A01E:
	mov r0, #0xe
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #6
	lsl r0, r0, #0xc
_0219A028:
	str r0, [sp, #0x14]
	ldr r0, _0219A064 ; =0xFFFFAAB8
	mov r6, #0
	str r0, [sp, #0x18]
	ldr r0, _0219A068 ; =0x00005548
	mov r4, #2
	str r0, [sp, #0x1c]
	lsl r0, r4, #0x15
	str r0, [sp, #0x24]
	str r4, [sp, #0xc]
	str r6, [sp, #0x20]
	str r6, [sp, #0x28]
	add r0, r5, #0
	bl sub_02050178
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0x8d
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0xc
	lsl r2, r4, #0xc
	mov r3, #0
	bl sub_020500CC
_0219A05A:
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_0219A060: .word 0xFFFFC000
_0219A064: .word 0xFFFFAAB8
_0219A068: .word 0x00005548
	thumb_func_end ovy265_219a008

	thumb_func_start ovy265_219a06c
ovy265_219a06c: ; 0x0219A06C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x8d
	mov r4, #1
	mov r6, #0x8d
	bl sub_020199E8
	str r0, [r5, #0x18]
	mov r1, #0
	mov r7, #0
	bl sub_0201AEFC
	ldr r0, [r5, #0x18]
	bl sub_0201AACC
	lsl r0, r4, #0x13
	str r0, [sp]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	lsl r0, r4, #0x16
	str r0, [sp, #8]
	mov r1, #6
	ldr r0, _0219A0C4 ; =0x0219B7F8
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219A0C8 ; =0x0219B7E0
	ldr r2, _0219A0CC ; =0xFFFA0000
	str r0, [sp, #0x14]
	ldr r0, _0219A0D0 ; =0x0219B7EC
	ldr r3, _0219A0D4 ; =0xFFF80000
	str r0, [sp, #0x18]
	str r6, [sp, #0x1c]
	mov r0, #2
	lsl r1, r1, #0x10
	bl sub_0204A5C8
	str r0, [r5, #0x20]
	bl sub_0204A638
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219A0C4: .word 0x0219B7F8
_0219A0C8: .word 0x0219B7E0
_0219A0CC: .word 0xFFFA0000
_0219A0D0: .word 0x0219B7EC
_0219A0D4: .word 0xFFF80000
	thumb_func_end ovy265_219a06c

	thumb_func_start ovy265_219a0d8
ovy265_219a0d8: ; 0x0219A0D8
	push {r4, lr}
	add r4, r0, #0
	bl ovy265_219a148
	ldr r0, [r4, #0x20]
	bl sub_0204A630
	ldr r0, [r4, #0x18]
	bl sub_02019A88
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy265_219a0d8

	thumb_func_start ovy265_219a0f0
ovy265_219a0f0: ; 0x0219A0F0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	ldr r3, _0219A13C ; =0x0219B884
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, sp, #0x10
	str r0, [r2]
	ldr r0, _0219A140 ; =0x0000915D
	mov r2, #0
	ldrb r1, [r5, r0]
	sub r0, #0x1d
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_0201BFDC
	str r6, [sp]
	mov r1, #0xb
	ldr r0, [r5, #0x18]
	ldr r2, _0219A144 ; =0xFFFD0000
	lsl r1, r1, #0x10
	mov r3, #0
	bl sub_0201A8A8
	str r0, [r5, #0x1c]
	add r1, r4, #0
	bl sub_0201AB88
	ldr r0, [r5, #0x1c]
	bl sub_0201ACE0
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219A13C: .word 0x0219B884
_0219A140: .word 0x0000915D
_0219A144: .word 0xFFFD0000
	thumb_func_end ovy265_219a0f0

	thumb_func_start ovy265_219a148
ovy265_219a148: ; 0x0219A148
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0219A15C
	ldr r0, [r4, #0x18]
	bl sub_0201AA80
	mov r0, #0
	str r0, [r4, #0x1c]
_0219A15C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy265_219a148

	thumb_func_start ovy265_219a160
ovy265_219a160: ; 0x0219A160
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	add r5, r1, #0
	add r1, sp, #0
	bl sub_0201AB0C
	cmp r5, #0
	ble _0219A186
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219A194
_0219A186:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219A194:
	blx sub_0208DA4C
	ldr r1, [sp]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	bl sub_0201AB24
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy265_219a160

	thumb_func_start ovy265_219a1ac
ovy265_219a1ac: ; 0x0219A1AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0201ACE0
	mov r0, #1
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ovy265_219a1ac

	thumb_func_start ovy265_219a1bc
ovy265_219a1bc: ; 0x0219A1BC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x1c]
	mov r3, #0
	ldr r2, _0219A1D0 ; =ovy265_219a1ac
	str r3, [r1, #0x24]
	bl sub_0201AE08
	pop {r3, pc}
	nop
_0219A1D0: .word ovy265_219a1ac
	thumb_func_end ovy265_219a1bc

	thumb_func_start ovy265_219a1d4
ovy265_219a1d4: ; 0x0219A1D4
	push {r3, r4, r5, lr}
	ldr r5, _0219A21C ; =0x0000918C
	add r4, r0, #0
	ldr r1, [r4, r5]
	lsl r2, r1, #2
	ldr r1, _0219A220 ; =0x0219B910
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, r5]
	cmp r0, #0xa
	bne _0219A1EE
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219A1EE:
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _0219A202
	add r0, r4, #0
	bl ovy265_219b520
	add r0, r4, #0
	bl ovy265_2199ec8
	b _0219A218
_0219A202:
	cmp r0, #2
	bne _0219A218
	add r0, r4, #0
	bl sub_0219B6F4
	add r0, r4, #0
	bl ovy265_2199ea8
	add r0, r4, #0
	bl ovy265_219aac4
_0219A218:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A21C: .word 0x0000918C
_0219A220: .word 0x0219B910
	thumb_func_end ovy265_219a1d4

	thumb_func_start ovy265_219a224
ovy265_219a224: ; 0x0219A224
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	mov r4, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _0219A26C ; =0x04000050
	ldr r6, _0219A270 ; =0x04001050
	strh r4, [r0]
	strh r4, [r6]
	sub r4, #0x10
	add r0, #0x1c
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	add r6, #0x1c
	add r0, r6, #0
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	bl sub_021999D4
	add r0, r5, #0
	bl ovy265_2199bdc
	add r0, r5, #0
	bl ovy265_2199c70
	add r0, r5, #0
	bl ovy265_2199ca0
	mov r0, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219A26C: .word 0x04000050
_0219A270: .word 0x04001050
	thumb_func_end ovy265_219a224

	thumb_func_start ovy265_219a274
ovy265_219a274: ; 0x0219A274
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_02199C94
	add r0, r4, #0
	bl ovy265_2199c38
	bl sub_021999E0
	ldr r5, _0219A2B8 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _0219A2BC ; =0x0400106C
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
	mov r0, #0xa
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219A2B8: .word 0x0400006C
_0219A2BC: .word 0x0400106C
	thumb_func_end ovy265_219a274

	thumb_func_start ovy265_219a2c0
ovy265_219a2c0: ; 0x0219A2C0
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219A2D2
	ldr r0, _0219A2D8 ; =0x00009194
	ldr r0, [r4, r0]
	pop {r4, pc}
_0219A2D2:
	mov r0, #2
	pop {r4, pc}
	nop
_0219A2D8: .word 0x00009194
	thumb_func_end ovy265_219a2c0
_0219A2DC:
	.byte 0x05, 0x49, 0x42, 0x58
	.byte 0x00, 0x2A, 0x02, 0xD1, 0x0C, 0x31, 0x40, 0x58, 0x70, 0x47, 0x52, 0x1E, 0x42, 0x50, 0x03, 0x20
	.byte 0x70, 0x47, 0xC0, 0x46, 0x88, 0x91, 0x00, 0x00

	thumb_func_start ovy265_219a2f8
ovy265_219a2f8: ; 0x0219A2F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl ovy265_2199998
	bl ovy265_21999e8
	add r0, r4, #0
	bl ovy265_2199e64
	bl sub_02199F28
	bl sub_02199F14
	add r0, r4, #0
	mov r1, #0
	bl ovy265_219aadc
	add r0, r4, #0
	bl ovy265_219b4b4
	bl ovy265_2199bac
	add r0, r4, #0
	bl ovy265_219991c
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #5
	pop {r4, pc}
	thumb_func_end ovy265_219a2f8

	thumb_func_start ovy265_219a334
ovy265_219a334: ; 0x0219A334
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0219994C
	ldr r0, _0219A368 ; =0x04000050
	mov r4, #0
	strh r4, [r0]
	ldr r0, _0219A36C ; =0x04001050
	strh r4, [r0]
	add r0, r5, #0
	bl ovy265_219b508
	add r0, r5, #0
	bl ovy265_219ab54
	bl sub_02199F20
	bl sub_02199F34
	add r0, r5, #0
	bl ovy265_2199e98
	str r4, [r5, #8]
	mov r0, #7
	pop {r3, r4, r5, pc}
	nop
_0219A368: .word 0x04000050
_0219A36C: .word 0x04001050
	thumb_func_end ovy265_219a334

	thumb_func_start ovy265_219a370
ovy265_219a370: ; 0x0219A370
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r5, _0219A68C ; =0x00009190
	add r4, r0, #0
	ldr r1, [r4, r5]
	add r6, sp, #0
	cmp r1, #0x10
	bhi _0219A3F2
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219A38C: ; jump table
	.short _0219A3AE - _0219A38C - 2 ; case 0
	.short _0219A3BC - _0219A38C - 2 ; case 1
	.short _0219A3C4 - _0219A38C - 2 ; case 2
	.short _0219A3E6 - _0219A38C - 2 ; case 3
	.short _0219A43C - _0219A38C - 2 ; case 4
	.short _0219A46C - _0219A38C - 2 ; case 5
	.short _0219A48C - _0219A38C - 2 ; case 6
	.short _0219A498 - _0219A38C - 2 ; case 7
	.short _0219A4EC - _0219A38C - 2 ; case 8
	.short _0219A4F8 - _0219A38C - 2 ; case 9
	.short _0219A554 - _0219A38C - 2 ; case 10
	.short _0219A5AC - _0219A38C - 2 ; case 11
	.short _0219A5E8 - _0219A38C - 2 ; case 12
	.short _0219A604 - _0219A38C - 2 ; case 13
	.short _0219A632 - _0219A38C - 2 ; case 14
	.short _0219A662 - _0219A38C - 2 ; case 15
	.short _0219A6B4 - _0219A38C - 2 ; case 16
_0219A3AE:
	add r1, r1, #1
	str r1, [r4, r5]
	mov r1, #0x20
	bl sub_0219AA2C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219A3BC:
	ldr r0, _0219A690 ; =0x0000079A
	bl GFL_SndSEPlay
	b _0219A62C
_0219A3C4:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	sub r0, #8
	str r1, [r4, r0]
	cmp r1, #0x30
	bne _0219A3F2
	ldr r0, _0219A694 ; =0x0000079B
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0
	sub r0, #8
	str r1, [r4, r0]
	b _0219A62C
_0219A3E6:
	ldr r6, _0219A694 ; =0x0000079B
	add r0, r6, #0
	bl sub_020062C4
	cmp r0, #0
	beq _0219A3F4
_0219A3F2:
	b _0219A6F0
_0219A3F4:
	sub r0, r6, #2
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy265_2199d10
	add r0, r4, #0
	bl ovy265_2199d64
	add r0, r4, #0
	bl ovy265_2199f3c
	add r0, r4, #0
	bl ovy265_2199fb0
	add r0, r4, #0
	bl ovy265_219ade0
	add r0, r4, #0
	bl ovy265_219b0a4
	add r0, r4, #0
	bl ovy265_219b3cc
	add r0, r4, #0
	bl ovy265_219af14
	ldr r0, [r4, r5]
	mov r1, #5
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy265_219a9d4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219A43C:
	add r2, r5, #0
	sub r2, #8
	ldr r2, [r4, r2]
	cmp r2, #0x16
	bne _0219A454
	add r1, r1, #1
	str r1, [r4, r5]
	mov r1, #8
	bl sub_0219AA2C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219A454:
	mov r2, #1
	mov r1, #1
	sub r2, #0x11
	mov r3, #0
	bl ovy265_219abfc
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	sub r5, #8
	add r0, r0, #1
	b _0219A6EE
_0219A46C:
	mov r1, #0
	bl ovy265_2199f88
	add r0, r4, #0
	mov r1, #1
	bl ovy265_2199f88
	ldr r0, [r4, r5]
	mov r1, #8
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	bl sub_0219AA2C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219A48C:
	mov r1, #1
	bl ovy265_2199ff0
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
_0219A498:
	add r2, sp, #0x14
	add r0, r4, #0
	mov r1, #2
	add r2, #2
	add r3, sp, #0x14
	mov r7, #2
	bl ovy265_219abcc
	mov r5, #0x16
	ldrsh r0, [r6, r5]
	cmp r0, #0xa8
	beq _0219A4BE
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x10
	mov r3, #0
	bl ovy265_219abfc
	b _0219A4E4
_0219A4BE:
	ldr r0, _0219A698 ; =0x0000057A
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy265_219aa40
	ldrsh r0, [r6, r5]
	ldr r1, _0219A69C ; =0x00009160
	strh r0, [r4, r1]
	mov r0, #0x14
	ldrsh r2, [r6, r0]
	add r0, r1, #2
	strh r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	add r1, #0x30
	add r0, r0, #1
	str r0, [r4, r1]
_0219A4E4:
	add r0, r4, #0
	bl ovy265_219b3cc
	b _0219A6F0
_0219A4EC:
	mov r1, #0
	bl ovy265_2199ff0
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
_0219A4F8:
	add r0, r4, #0
	mov r1, #2
	bl ovy265_219aa74
	add r2, sp, #0x10
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #3
	add r2, #2
	add r3, sp, #0x10
	bl ovy265_219abcc
	mov r5, #0x12
	ldrsh r0, [r6, r5]
	cmp r0, #0x58
	beq _0219A528
	sub r5, #0x22
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	mov r3, #0
	bl ovy265_219abfc
	b _0219A552
_0219A528:
	cmp r7, #0
	bne _0219A552
	ldr r0, _0219A698 ; =0x0000057A
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy265_219aa40
	ldrsh r0, [r6, r5]
	ldr r1, _0219A69C ; =0x00009160
	strh r0, [r4, r1]
	mov r0, #0x10
	ldrsh r2, [r6, r0]
	add r0, r1, #2
	strh r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	add r1, #0x30
	add r0, r0, #1
	str r0, [r4, r1]
_0219A552:
	b _0219A4E4
_0219A554:
	mov r1, #3
	bl ovy265_219aa74
	add r2, sp, #0xc
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, #2
	add r3, sp, #0xc
	bl ovy265_219abcc
	mov r0, #0xe
	ldrsh r0, [r6, r0]
	cmp r0, #0x30
	beq _0219A580
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl ovy265_219abfc
	b _0219A5AA
_0219A580:
	cmp r7, #0
	bne _0219A5AA
	ldr r0, _0219A698 ; =0x0000057A
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy265_219aa40
	mov r0, #0xe
	ldrsh r1, [r6, r0]
	add r0, r5, #0
	sub r0, #0x30
	strh r1, [r4, r0]
	mov r0, #0xc
	ldrsh r1, [r6, r0]
	add r0, r5, #0
	sub r0, #0x2e
	strh r1, [r4, r0]
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
_0219A5AA:
	b _0219A4E4
_0219A5AC:
	mov r1, #0
	bl ovy265_219aa74
	cmp r0, #0
	beq _0219A5B8
	b _0219A6F0
_0219A5B8:
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl sub_02006AD4
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ovy265_219ac30
	add r0, r4, #0
	mov r1, #4
	mov r2, #6
	bl ovy265_219ac4c
	ldr r0, [r4, r5]
	mov r1, #0x80
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	bl sub_0219AA2C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219A5E8:
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl sub_02006C40
	cmp r0, #0
	bne _0219A6F0
	add r0, r4, #0
	mov r1, #4
	bl sub_0219AC78
	cmp r0, #0
	bne _0219A6F0
	b _0219A62C
_0219A604:
	add r2, sp, #8
	mov r1, #0
	add r2, #2
	add r3, sp, #8
	mov r7, #0
	bl ovy265_219abcc
	mov r2, #0xa
	mov r0, #0xa
	ldrsh r1, [r6, r2]
	sub r0, #0x3a
	cmp r1, r0
	beq _0219A62C
	add r0, r4, #0
	add r1, r7, #0
	sub r2, #0x1a
	add r3, r7, #0
	bl ovy265_219abfc
	b _0219A6F0
_0219A62C:
	ldr r0, [r4, r5]
	add r0, r0, #1
	b _0219A6EE
_0219A632:
	add r2, sp, #4
	mov r1, #3
	add r2, #2
	add r3, sp, #4
	mov r7, #3
	bl ovy265_219abcc
	mov r0, #6
	ldrsh r1, [r6, r0]
	mov r0, #0x42
	lsl r0, r0, #2
	cmp r1, r0
	beq _0219A65A
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x10
	mov r3, #0
	bl ovy265_219abfc
	b _0219A660
_0219A65A:
	ldr r0, [r4, r5]
	add r0, r0, #1
	str r0, [r4, r5]
_0219A660:
	b _0219A4E4
_0219A662:
	add r2, sp, #0
	mov r7, #2
	mov r1, #2
	add r2, #2
	add r3, sp, #0
	bl ovy265_219abcc
	mov r0, #2
	ldrsh r1, [r6, r7]
	sub r0, #0xa
	cmp r1, r0
	beq _0219A6A0
	add r1, r7, #0
	sub r7, #0x12
	add r0, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl ovy265_219abfc
	b _0219A4E4
	nop
_0219A68C: .word 0x00009190
_0219A690: .word 0x0000079A
_0219A694: .word 0x0000079B
_0219A698: .word 0x0000057A
_0219A69C: .word 0x00009160
_0219A6A0:
	ldr r0, [r4, r5]
	mov r1, #5
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	mov r2, #6
	bl ovy265_219aa00
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219A6B4:
	bl ovy265_2199fe0
	add r0, r4, #0
	bl ovy265_2199f78
	add r0, r5, #0
	sub r0, #0x33
	ldrb r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	sub r0, #0x33
	strb r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x33
	ldrb r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0x32
	ldrb r0, [r4, r0]
	cmp r1, r0
	bne _0219A6EC
	add r0, r5, #0
	mov r1, #0
	sub r0, #0x33
	strb r1, [r4, r0]
	add sp, #0x18
	str r1, [r4, r5]
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0219A6EC:
	mov r0, #3
_0219A6EE:
	str r0, [r4, r5]
_0219A6F0:
	mov r0, #5
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy265_219a370

	thumb_func_start ovy265_219a6f8
ovy265_219a6f8: ; 0x0219A6F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl sub_02046DF8
	mov r0, #1
	bl ovy265_2199998
	bl ovy265_21999e8
	bl ovy265_2199a18
	bl ovy265_2199b24
	add r0, r4, #0
	bl ovy265_2199e64
	add r0, r4, #0
	bl ovy265_219a06c
	add r0, r4, #0
	mov r1, #1
	bl ovy265_219aadc
	add r0, r4, #0
	bl ovy265_219b544
	add r0, r4, #0
	bl ovy265_2199934
	mov r0, #2
	str r0, [r4, #8]
	add r0, r4, #0
	mov r1, #8
	bl ovy265_219a9d4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy265_219a6f8

	thumb_func_start ovy265_219a744
ovy265_219a744: ; 0x0219A744
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219994C
	add r0, r4, #0
	bl ovy265_219b6d0
	add r0, r4, #0
	bl ovy265_219ab54
	bl ovy265_2199b04
	add r0, r4, #0
	bl ovy265_219a0d8
	add r0, r4, #0
	bl ovy265_2199e98
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy265_219a744

	thumb_func_start ovy265_219a770
ovy265_219a770: ; 0x0219A770
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0219A9BC ; =0x00009198
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0219A794
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _0219A794
	bl sub_02005EC0
	cmp r0, #0
	bne _0219A794
	bl sub_02005D8C
	mov r0, #9
	pop {r3, r4, r5, pc}
_0219A794:
	ldr r5, _0219A9C0 ; =0x00009190
	ldr r0, [r4, r5]
	cmp r0, #0xb
	bhi _0219A846
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219A7A8: ; jump table
	.short _0219A7C0 - _0219A7A8 - 2 ; case 0
	.short _0219A7CE - _0219A7A8 - 2 ; case 1
	.short _0219A7D6 - _0219A7A8 - 2 ; case 2
	.short _0219A810 - _0219A7A8 - 2 ; case 3
	.short _0219A83A - _0219A7A8 - 2 ; case 4
	.short _0219A85E - _0219A7A8 - 2 ; case 5
	.short _0219A878 - _0219A7A8 - 2 ; case 6
	.short _0219A884 - _0219A7A8 - 2 ; case 7
	.short _0219A8A4 - _0219A7A8 - 2 ; case 8
	.short _0219A8EE - _0219A7A8 - 2 ; case 9
	.short _0219A916 - _0219A7A8 - 2 ; case 10
	.short _0219A92A - _0219A7A8 - 2 ; case 11
_0219A7C0:
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0219AA2C
	pop {r3, r4, r5, pc}
_0219A7CE:
	ldr r0, _0219A9C4 ; =0x0000079C
	bl GFL_SndSEPlay
_0219A7D4:
	b _0219A89A
_0219A7D6:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x33
	beq _0219A7FA
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	mov r3, #8
	bl ovy265_219abfc
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	mov r3, #8
	bl ovy265_219abfc
_0219A7F8:
	b _0219A902
_0219A7FA:
	ldr r0, _0219A9C8 ; =0x0000057A
	bl GFL_SndSEPlay
	ldr r0, [r4, r5]
	mov r1, #0x20
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	bl sub_0219AA2C
	pop {r3, r4, r5, pc}
_0219A810:
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl ovy265_219ac30
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl ovy265_219ac30
	add r0, r4, #0
	mov r1, #7
	mov r2, #2
	bl ovy265_219ac4c
	add r0, r4, #0
	mov r1, #8
	mov r2, #2
	bl ovy265_219ac4c
	b _0219A7D4
_0219A83A:
	add r0, r4, #0
	mov r1, #7
	bl sub_0219AC78
	cmp r0, #0
	beq _0219A848
_0219A846:
	b _0219A972
_0219A848:
	ldr r0, _0219A9CC ; =0x0000079D
	bl GFL_SndSEPlay
	ldr r0, [r4, r5]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	bl sub_0219AA2C
	pop {r3, r4, r5, pc}
_0219A85E:
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl sub_0219B424
	ldr r0, [r4, r5]
	mov r1, #0x20
	add r0, r0, #1
	str r0, [r4, r5]
	add r0, r4, #0
	bl sub_0219AA2C
	pop {r3, r4, r5, pc}
_0219A878:
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl sub_0219B424
	b _0219A7D4
_0219A884:
	add r0, r5, #0
	sub r0, #8
	ldr r1, [r4, r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	bne _0219A8A2
_0219A892:
	add r0, r5, #0
	mov r1, #0
	sub r0, #8
	str r1, [r4, r0]
_0219A89A:
	ldr r0, [r4, r5]
	add r0, r0, #1
_0219A89E:
	str r0, [r4, r5]
	b _0219A972
_0219A8A2:
	b _0219A7F8
_0219A8A4:
	add r1, r5, #0
	sub r1, #0x33
	ldrb r1, [r4, r1]
	mov r0, #0
	cmp r1, #0
	bne _0219A8BE
	sub r5, #8
	mov r1, #1
	ldr r2, [r4, r5]
	lsl r1, r1, #8
	cmp r2, r1
	bne _0219A8C8
	b _0219A8C6
_0219A8BE:
	sub r5, #8
	ldr r1, [r4, r5]
	cmp r1, #0x80
	bne _0219A8C8
_0219A8C6:
	mov r0, #1
_0219A8C8:
	cmp r0, #1
	bne _0219A8E6
	add r0, r4, #0
	bl ovy265_219a0f0
	ldr r1, _0219A9D0 ; =0x00009188
	mov r0, #0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r1, #8
	add r0, r0, #1
	str r0, [r4, r1]
	b _0219A972
_0219A8E6:
	ldr r0, _0219A9D0 ; =0x00009188
	ldr r1, [r4, r0]
	add r1, r1, #1
	b _0219A970
_0219A8EE:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x14
	beq _0219A90E
_0219A8F8:
	mov r1, #7
	add r0, r4, #0
	mvn r1, r1
	bl ovy265_219a160
_0219A902:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	sub r5, #8
	add r0, r0, #1
	b _0219A89E
_0219A90E:
	ldr r0, [r4, #0x1c]
	bl sub_0201AD28
	b _0219A892
_0219A916:
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x80
	beq _0219A922
	b _0219A7F8
_0219A922:
	add r0, r4, #0
	bl ovy265_219a1bc
	b _0219A892
_0219A92A:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0219A972
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0x18
	beq _0219A93C
	b _0219A8F8
_0219A93C:
	add r0, r4, #0
	bl ovy265_219a148
	add r1, r5, #0
	mov r0, #0
	sub r1, #8
	str r0, [r4, r1]
	add r1, r5, #0
	sub r1, #0x33
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r5, #0
	sub r1, #0x33
	strb r2, [r4, r1]
	add r1, r5, #0
	sub r1, #0x33
	ldrb r2, [r4, r1]
	add r1, r5, #0
	sub r1, #0x32
	ldrb r1, [r4, r1]
	cmp r2, r1
	bne _0219A96C
	sub r5, #0x33
	strb r0, [r4, r5]
_0219A96C:
	ldr r0, _0219A9C0 ; =0x00009190
	mov r1, #8
_0219A970:
	str r1, [r4, r0]
_0219A972:
	ldr r0, _0219A9C0 ; =0x00009190
	ldr r0, [r4, r0]
	cmp r0, #6
	blt _0219A980
	add r0, r4, #0
	bl ovy265_219b6fc
_0219A980:
	ldr r0, _0219A9C0 ; =0x00009190
	ldr r1, [r4, r0]
	cmp r1, #8
	blt _0219A9B8
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0219A9B8
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _0219A9A2
	bl sub_0203DA48
	cmp r0, #1
	bne _0219A9B8
_0219A9A2:
	ldr r0, _0219A9BC ; =0x00009198
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #0xdc
	bl sub_02005EA0
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xbc
	bl ovy265_219aa00
_0219A9B8:
	mov r0, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219A9BC: .word 0x00009198
_0219A9C0: .word 0x00009190
_0219A9C4: .word 0x0000079C
_0219A9C8: .word 0x0000057A
_0219A9CC: .word 0x0000079D
_0219A9D0: .word 0x00009188
	thumb_func_end ovy265_219a770

	thumb_func_start ovy265_219a9d4
ovy265_219a9d4: ; 0x0219A9D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x8d
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r0, _0219A9FC ; =0x00009194
	str r4, [r5, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219A9FC: .word 0x00009194
	thumb_func_end ovy265_219a9d4

	thumb_func_start ovy265_219aa00
ovy265_219aa00: ; 0x0219AA00
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x8d
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r0, _0219AA28 ; =0x00009194
	str r4, [r5, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219AA28: .word 0x00009194
	thumb_func_end ovy265_219aa00

	thumb_func_start sub_0219AA2C
sub_0219AA2C: ; 0x0219AA2C
	ldr r2, _0219AA3C ; =0x00009188
	str r1, [r0, r2]
	add r1, r2, #4
	ldr r1, [r0, r1]
	add r2, #0xc
	str r1, [r0, r2]
	mov r0, #3
	bx lr
	.align 2, 0
_0219AA3C: .word 0x00009188
	thumb_func_end sub_0219AA2C

	thumb_func_start ovy265_219aa40
ovy265_219aa40: ; 0x0219AA40
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219AA70 ; =0x0000915F
	mov r4, #0
	str r0, [sp]
	strb r4, [r0, r6]
	add r7, r6, #5
	add r6, #0x15
_0219AA4E:
	ldr r0, [sp]
	lsl r1, r4, #1
	add r5, r0, r1
	mov r0, #8
	bl sub_02005748
	sub r0, r0, #4
	strh r0, [r5, r7]
	mov r0, #8
	bl sub_02005748
	sub r0, r0, #4
	add r4, r4, #1
	strh r0, [r5, r6]
	cmp r4, #8
	blo _0219AA4E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AA70: .word 0x0000915F
	thumb_func_end ovy265_219aa40

	thumb_func_start ovy265_219aa74
ovy265_219aa74: ; 0x0219AA74
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219AAC0 ; =0x0000915F
	add r5, r0, #0
	ldrb r2, [r5, r4]
	cmp r2, #8
	bne _0219AA90
	add r2, r4, #1
	add r3, r4, #3
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	bl ovy265_219aba8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219AA90:
	lsl r3, r2, #1
	add r2, r4, #1
	add r6, r5, r3
	add r3, r4, #5
	ldrsh r2, [r5, r2]
	ldrsh r3, [r6, r3]
	add r2, r2, r3
	add r3, r4, #3
	ldrsh r7, [r5, r3]
	add r3, r4, #0
	add r3, #0x15
	ldrsh r3, [r6, r3]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add r3, r7, r3
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl ovy265_219aba8
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AAC0: .word 0x0000915F
	thumb_func_end ovy265_219aa74

	thumb_func_start ovy265_219aac4
ovy265_219aac4: ; 0x0219AAC4
	push {r3, lr}
	mov r0, #3
	mov r1, #1
	mov r2, #1
	bl sub_02045E48
	mov r0, #7
	mov r1, #1
	mov r2, #1
	bl sub_02045E48
	pop {r3, pc}
	thumb_func_end ovy265_219aac4

	thumb_func_start ovy265_219aadc
ovy265_219aadc: ; 0x0219AADC
	push {r4, r5, r6, lr}
	sub sp, #0x38
	add r4, r0, #0
	add r2, r1, #0
	bne _0219AAEC
	ldr r6, _0219AB48 ; =0x0219BA40
	add r3, sp, #0x1c
	b _0219AAF0
_0219AAEC:
	ldr r6, _0219AB4C ; =0x0219BA5C
	add r3, sp, #0
_0219AAF0:
	ldmia r6!, {r0, r1}
	add r5, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	add r0, r2, #0
	bl sub_021999C0
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x8d
	bl sub_0204B6A8
	mov r0, #0xf9
	mov r1, #0
	mov r2, #0x8d
	bl sub_0204BF1C
	add r1, r0, #0
	ldr r5, _0219AB50 ; =0x00009044
	mov r0, #0x8d
	str r1, [r4, r5]
	bl sub_0202AE5C
	add r5, #0xd8
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy265_219ac8c
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_0219AB48: .word 0x0219BA40
_0219AB4C: .word 0x0219BA5C
_0219AB50: .word 0x00009044
	thumb_func_end ovy265_219aadc

	thumb_func_start ovy265_219ab54
ovy265_219ab54: ; 0x0219AB54
	push {r3, r4, r5, lr}
	ldr r4, _0219AB70 ; =0x0000911C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_0202AEAC
	sub r4, #0xd8
	ldr r0, [r5, r4]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	nop
_0219AB70: .word 0x0000911C
	thumb_func_end ovy265_219ab54

	thumb_func_start ovy265_219ab74
ovy265_219ab74: ; 0x0219AB74
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0219ABA4 ; =0x00009048
	add r6, r0, #0
	mov r4, #0
_0219AB7C:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0219AB98
	bl sub_0204C534
	cmp r0, #1
	beq _0219AB98
	mov r1, #1
	ldr r0, [r5, r7]
	lsl r1, r1, #0xc
	bl sub_0204C4E0
_0219AB98:
	add r4, r4, #1
	cmp r4, #0x21
	blo _0219AB7C
	bl sub_0204B794
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ABA4: .word 0x00009048
	thumb_func_end ovy265_219ab74

	thumb_func_start ovy265_219aba8
ovy265_219aba8: ; 0x0219ABA8
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r2, [r4]
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0219ABC8 ; =0x00009048
	strh r3, [r4, #2]
	ldr r0, [r1, r0]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219ABC8: .word 0x00009048
	thumb_func_end ovy265_219aba8

	thumb_func_start ovy265_219abcc
ovy265_219abcc: ; 0x0219ABCC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0219ABF8 ; =0x00009048
	add r5, r2, #0
	ldr r0, [r1, r0]
	add r1, sp, #0
	mov r2, #0
	add r4, r3, #0
	mov r6, #0
	bl sub_0204C178
	add r1, sp, #0
	ldrsh r0, [r1, r6]
	strh r0, [r5]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r4]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219ABF8: .word 0x00009048
	thumb_func_end ovy265_219abcc

	thumb_func_start ovy265_219abfc
ovy265_219abfc: ; 0x0219ABFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r2, sp, #0
	add r4, r3, #0
	add r2, #2
	add r3, sp, #0
	add r6, r0, #0
	add r7, r1, #0
	bl ovy265_219abcc
	add r3, sp, #0
	mov r2, #2
	ldrsh r0, [r3, r2]
	add r1, r7, #0
	add r0, r0, r5
	mov r5, #0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r5]
	add r0, r0, r4
	strh r0, [r3]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	add r0, r6, #0
	bl ovy265_219aba8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy265_219abfc

	thumb_func_start ovy265_219ac30
ovy265_219ac30: ; 0x0219AC30
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0219AC48 ; =0x00009048
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0219AC44
	add r1, r2, #0
	bl sub_0204C124
_0219AC44:
	pop {r3, pc}
	nop
_0219AC48: .word 0x00009048
	thumb_func_end ovy265_219ac30

	thumb_func_start ovy265_219ac4c
ovy265_219ac4c: ; 0x0219AC4C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	ldr r2, _0219AC74 ; =0x00009048
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
	mov r1, #1
	bl sub_0204C520
	pop {r4, r5, r6, pc}
	nop
_0219AC74: .word 0x00009048
	thumb_func_end ovy265_219ac4c

	thumb_func_start sub_0219AC78
sub_0219AC78: ; 0x0219AC78
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0219AC84 ; =0x00009048
	ldr r3, _0219AC88 ; =sub_0204C560
	ldr r0, [r1, r0]
	bx r3
	.align 2, 0
_0219AC84: .word 0x00009048
_0219AC88: .word sub_0204C560
	thumb_func_end sub_0219AC78

	thumb_func_start ovy265_219ac8c
ovy265_219ac8c: ; 0x0219AC8C
	push {r3, r4}
	mov r4, #0
	ldr r1, _0219ACCC ; =0x000090CC
	sub r3, r4, #1
_0219AC94:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #6
	blo _0219AC94
	mov r4, #0
	ldr r1, _0219ACD0 ; =0x000090E4
	sub r3, r4, #1
_0219ACA6:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #7
	blo _0219ACA6
	mov r4, #0
	mov r1, #0x91
	sub r3, r4, #1
	lsl r1, r1, #8
_0219ACBA:
	lsl r2, r4, #2
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, r1]
	cmp r4, #6
	blo _0219ACBA
	pop {r3, r4}
	bx lr
	nop
_0219ACCC: .word 0x000090CC
_0219ACD0: .word 0x000090E4
	thumb_func_end ovy265_219ac8c

	thumb_func_start ovy265_219acd4
ovy265_219acd4: ; 0x0219ACD4
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	ldr r1, _0219ACF0 ; =0x000090CC
	mov r6, #0
	add r4, r0, r1
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _0219ACEC
	bl sub_0204B98C
	str r6, [r4, r5]
_0219ACEC:
	pop {r4, r5, r6, pc}
	nop
_0219ACF0: .word 0x000090CC
	thumb_func_end ovy265_219acd4

	thumb_func_start ovy265_219acf4
ovy265_219acf4: ; 0x0219ACF4
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	ldr r1, _0219AD10 ; =0x000090E4
	mov r6, #0
	add r4, r0, r1
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _0219AD0C
	bl sub_0204BCD0
	str r6, [r4, r5]
_0219AD0C:
	pop {r4, r5, r6, pc}
	nop
_0219AD10: .word 0x000090E4
	thumb_func_end ovy265_219acf4

	thumb_func_start ovy265_219ad14
ovy265_219ad14: ; 0x0219AD14
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	mov r1, #0x91
	lsl r1, r1, #8
	add r4, r0, r1
	mov r6, #0
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _0219AD2E
	bl sub_0204BE64
	str r6, [r4, r5]
_0219AD2E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy265_219ad14

	thumb_func_start ovy265_219ad30
ovy265_219ad30: ; 0x0219AD30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0219AD36:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy265_219acd4
	add r5, r5, #1
	cmp r5, #6
	blo _0219AD36
	mov r5, #0
_0219AD46:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy265_219acf4
	add r5, r5, #1
	cmp r5, #7
	blo _0219AD46
	mov r5, #0
_0219AD56:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy265_219ad14
	add r5, r5, #1
	cmp r5, #6
	blo _0219AD56
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy265_219ad30

	thumb_func_start ovy265_219ad68
ovy265_219ad68: ; 0x0219AD68
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #8]
	ldrh r0, [r4, #0x16]
	str r4, [sp]
	lsl r1, r1, #2
	str r0, [sp, #4]
	mov r0, #0x8d
	ldr r3, _0219ADA8 ; =0x00009044
	add r2, r5, r1
	add r1, r3, #0
	str r0, [sp, #8]
	add r1, #0x88
	ldr r1, [r2, r1]
	ldr r2, [r4, #0xc]
	ldr r4, [r4, #0x10]
	lsl r2, r2, #2
	add r6, r5, r2
	add r2, r3, #0
	lsl r4, r4, #2
	ldr r0, [r5, r3]
	add r2, #0xa0
	add r4, r5, r4
	add r3, #0xbc
	ldr r2, [r6, r2]
	ldr r3, [r4, r3]
	bl sub_0204C040
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219ADA8: .word 0x00009044
	thumb_func_end ovy265_219ad68

	thumb_func_start ovy265_219adac
ovy265_219adac: ; 0x0219ADAC
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	ldr r1, _0219ADC4 ; =0x00009048
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219ADC2
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_0219ADC2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219ADC4: .word 0x00009048
	thumb_func_end ovy265_219adac

	thumb_func_start ovy265_219adc8
ovy265_219adc8: ; 0x0219ADC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219ADCE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy265_219adac
	add r4, r4, #1
	cmp r4, #0x21
	blo _0219ADCE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy265_219adc8

	thumb_func_start ovy265_219ade0
ovy265_219ade0: ; 0x0219ADE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r1, _0219AF00 ; =0x00009048
	add r5, r0, #0
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _0219AE0C
	mov r1, #0
	bl ovy265_219adac
	add r0, r5, #0
	mov r1, #0
	bl ovy265_219acd4
	add r0, r5, #0
	mov r1, #0
	bl ovy265_219acf4
	add r0, r5, #0
	mov r1, #0
	bl ovy265_219ad14
_0219AE0C:
	ldr r0, _0219AF04 ; =0x0000904C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219AE34
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219adac
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219acd4
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219acf4
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219ad14
_0219AE34:
	mov r0, #0x8d
	mov r7, #0x8d
	bl sub_02033E24
	ldr r4, _0219AF08 ; =0x0000915D
	str r0, [sp, #8]
	ldrb r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	sub r0, #0x1d
	ldr r0, [r1, r0]
	bl sub_0201D620
	add r6, r0, #0
	bl sub_0201CC98
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_02033F90
	add r1, r4, #0
	sub r1, #0x91
	str r0, [r5, r1]
	mov r0, #0x60
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp, #4]
	bl sub_02033F2C
	add r1, r4, #0
	sub r1, #0x79
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	str r7, [sp]
	bl sub_02034000
	add r1, r4, #0
	sub r1, #0x5d
	str r0, [r5, r1]
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp]
	bl sub_02033F90
	add r1, r4, #0
	sub r1, #0x8d
	str r0, [r5, r1]
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	str r7, [sp, #4]
	bl sub_02033F2C
	add r1, r4, #0
	sub r1, #0x75
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	str r7, [sp]
	bl sub_02034000
	sub r4, #0x59
	str r0, [r5, r4]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_0201CCC0
	ldr r0, [sp, #8]
	bl sub_0204AB0C
	ldr r1, _0219AF0C ; =0x0219B938
	add r0, r5, #0
	bl ovy265_219ad68
	ldr r4, _0219AF00 ; =0x00009048
	ldr r1, _0219AF10 ; =0x0219B950
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy265_219ad68
	add r1, r4, #4
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AF00: .word 0x00009048
_0219AF04: .word 0x0000904C
_0219AF08: .word 0x0000915D
_0219AF0C: .word 0x0219B938
_0219AF10: .word 0x0219B950
	thumb_func_end ovy265_219ade0

	thumb_func_start ovy265_219af14
ovy265_219af14: ; 0x0219AF14
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0219AF50 ; =0x0000808D
	add r5, r0, #0
	mov r0, #0xd5
	bl sub_0204AA30
	ldr r4, _0219AF54 ; =0x0000915A
	mov r3, #0x8d
	ldrh r1, [r5, r4]
	add r6, r0, #0
	lsl r2, r1, #2
	ldr r1, _0219AF58 ; =0x0219BA98
	ldr r1, [r1, r2]
	add r2, sp, #0
	bl sub_0204B37C
	sub r4, #0x6e
	add r7, r0, #0
	ldr r0, [r5, r4]
	ldr r1, [sp]
	mov r2, #1
	bl sub_0204BD10
	add r0, r7, #0
	bl sub_0203A24C
	add r0, r6, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AF50: .word 0x0000808D
_0219AF54: .word 0x0000915A
_0219AF58: .word 0x0219BA98
	thumb_func_end ovy265_219af14

	thumb_func_start ovy265_219af5c
ovy265_219af5c: ; 0x0219AF5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r4, r1, #3
	ldr r6, _0219AF84 ; =0x00009120
	add r0, r5, r4
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _0219AF80
	bl sub_0202B030
	add r1, r5, r4
	add r0, r6, #4
	ldr r0, [r1, r0]
	bl sub_02046EDC
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, r6]
_0219AF80:
	pop {r4, r5, r6, pc}
	nop
_0219AF84: .word 0x00009120
	thumb_func_end ovy265_219af5c

	thumb_func_start ovy265_219af88
ovy265_219af88: ; 0x0219AF88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219AF8E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy265_219af5c
	add r4, r4, #1
	cmp r4, #4
	blo _0219AF8E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy265_219af88

	thumb_func_start ovy265_219afa0
ovy265_219afa0: ; 0x0219AFA0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xf1
	lsl r4, r1, #3
	str r2, [sp]
	lsl r0, r0, #6
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r6, _0219AFD4 ; =0x00009124
	add r0, r5, r4
	ldr r0, [r0, r6]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021D28
	add r1, r5, r4
	sub r0, r6, #4
	ldr r0, [r1, r0]
	bl sub_0202B0F4
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219AFD4: .word 0x00009124
	thumb_func_end ovy265_219afa0

	thumb_func_start ovy265_219afd8
ovy265_219afd8: ; 0x0219AFD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r4, _0219B09C ; =0x000090F0
	add r5, r0, #0
	ldr r0, [r5, r4]
	add r6, sp, #0x10
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #4
	strb r0, [r6, #0x10]
	mov r0, #0
	strb r0, [r6, #0x11]
	ldr r0, _0219B0A0 ; =0x0000FFFF
	mov r1, #2
	strh r0, [r6, #0x12]
	mov r0, #0
	str r0, [sp, #0x24]
	add r0, r4, #0
	add r0, #0x30
	add r7, r5, r0
	mov r0, #0x16
	mov r2, #0x20
	mov r3, #0x8d
	bl sub_02046E28
	str r0, [r7, #4]
	str r0, [sp, #0x10]
	mov r0, #0x20
	sub r0, #0xd8
	strh r0, [r6, #4]
	mov r0, #0x10
	strh r0, [r6, #6]
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	bl sub_0202AEC4
	add r1, r4, #0
	add r1, #0x30
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204713C
	add r0, r4, #0
	sub r0, #0xb8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204898C
	str r0, [sp, #0xc]
	mov r7, #0xc
	add r2, r4, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	sub r2, #0xc0
	ldr r2, [r5, r2]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl ovy265_219afa0
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x38
	add r0, r5, r0
	str r0, [sp, #8]
	mov r0, #0x16
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x8d
	bl sub_02046E28
	ldr r1, [sp, #8]
	add r7, #0xfc
	str r0, [r1, #4]
	str r0, [sp, #0x10]
	strh r7, [r6, #4]
	mov r0, #0xa0
	strh r0, [r6, #6]
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	bl sub_0202AEC4
	add r4, #0x38
	str r0, [r5, r4]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B09C: .word 0x000090F0
_0219B0A0: .word 0x0000FFFF
	thumb_func_end ovy265_219afd8

	thumb_func_start ovy265_219b0a4
ovy265_219b0a4: ; 0x0219B0A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _0219B1B0 ; =0x0000915D
	add r5, r0, #0
	ldrb r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	sub r0, #0x1d
	ldr r0, [r1, r0]
	bl sub_0201D620
	str r0, [sp, #8]
	bl sub_0201CC98
	sub r4, #0x31
	str r0, [sp, #0xc]
	ldr r0, [r5, r4]
	mov r1, #0
	mov r6, #0
	bl sub_0204713C
	ldr r4, _0219B1B4 ; =0x00009038
	mov r1, #1
	ldr r0, [r5, r4]
	bl sub_0204898C
	add r7, r0, #0
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #8]
	mov r1, #0
	bl sub_02024484
	add r1, r4, #0
	add r0, r4, #4
	add r1, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #8
	str r0, [sp]
	add r2, r4, #0
	add r3, r4, #0
	str r6, [sp, #4]
	sub r2, #8
	add r3, #8
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219afa0
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_0204898C
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	mov r2, #0
	str r0, [sp, #0x10]
	bl sub_02022888
	add r7, r0, #0
	mov r0, #0x70
	str r0, [sp]
	add r2, r4, #0
	str r6, [sp, #4]
	sub r2, #8
	ldr r2, [r5, r2]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219afa0
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	mov r1, #3
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CD88
	add r2, r0, #0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	add r1, r4, #0
	add r0, r4, #4
	add r1, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	add r2, r4, #0
	add r7, #0x70
	str r7, [sp]
	str r6, [sp, #4]
	sub r2, #8
	add r4, #8
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy265_219afa0
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_0201CCC0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B1B0: .word 0x0000915D
_0219B1B4: .word 0x00009038
	thumb_func_end ovy265_219b0a4

	thumb_func_start ovy265_219b1b8
ovy265_219b1b8: ; 0x0219B1B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, _0219B3C4 ; =0x000090F0
	add r5, r0, #0
	ldr r0, [r5, r4]
	mov r6, #0
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	mov r1, #4
	add r0, sp, #0xc
	strb r1, [r0, #0x10]
	ldr r1, _0219B3C8 ; =0x0000FFFF
	strb r6, [r0, #0x11]
	strh r1, [r0, #0x12]
	add r0, r4, #0
	add r0, #0x40
	add r7, r5, r0
	str r6, [sp, #0x20]
	mov r0, #0x20
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x8d
	bl sub_02046E28
	str r0, [r7, #4]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r6, [r0, #4]
	mov r7, #0x10
	strh r7, [r0, #6]
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	bl sub_0202AEC4
	add r1, r4, #0
	add r1, #0x40
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0202B098
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204713C
	add r0, r4, #0
	sub r0, #0xb8
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_0204898C
	add r1, r4, #0
	sub r1, #0xc0
	ldr r1, [r5, r1]
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02022888
	add r7, #0xf0
	sub r0, r7, r0
	lsr r0, r0, #1
	str r0, [sp]
	add r2, r4, #0
	str r6, [sp, #4]
	sub r2, #0xc0
	ldr r2, [r5, r2]
	ldr r3, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	bl ovy265_219afa0
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x48
	add r7, r5, r0
	mov r0, #0x20
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x8d
	bl sub_02046E28
	str r0, [r7, #4]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strh r6, [r0, #4]
	mov r1, #0xa0
	strh r1, [r0, #6]
	add r0, r4, #0
	add r0, #0x2c
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	bl sub_0202AEC4
	add r1, r4, #0
	add r1, #0x48
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0202B098
	add r0, r4, #0
	add r0, #0x4c
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204713C
	add r0, r4, #0
	sub r0, #0xb8
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_0204898C
	add r7, r0, #0
	add r0, r4, #0
	ldr r2, [r5]
	sub r0, #0xb4
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	mov r1, #0
	bl GFL_CopyVarForText
	add r0, r4, #0
	add r1, r4, #0
	sub r0, #0xb4
	sub r1, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #8
	str r0, [sp]
	add r2, r4, #0
	add r3, r4, #0
	str r6, [sp, #4]
	sub r2, #0xc0
	sub r3, #0xb0
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #3
	bl ovy265_219afa0
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0xb8
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_02008BD4
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #5
	bl sub_0202451C
	add r0, r4, #0
	add r1, r4, #0
	sub r0, #0xb4
	sub r1, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0x5c
	str r0, [sp]
	add r2, r4, #0
	add r3, r4, #0
	str r6, [sp, #4]
	sub r2, #0xc0
	sub r3, #0xb0
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #3
	bl ovy265_219afa0
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #0xb8
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_02008CEC
	add r2, r0, #0
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_02008CF0
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #2
	bl sub_0202451C
	add r0, r4, #0
	add r1, r4, #0
	sub r0, #0xb4
	sub r1, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r2, r4, #0
	mov r0, #0xc8
	str r0, [sp]
	str r6, [sp, #4]
	sub r2, #0xc0
	sub r4, #0xb0
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	add r0, r5, #0
	mov r1, #3
	bl ovy265_219afa0
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219B3C4: .word 0x000090F0
_0219B3C8: .word 0x0000FFFF
	thumb_func_end ovy265_219b1b8

	thumb_func_start ovy265_219b3cc
ovy265_219b3cc: ; 0x0219B3CC
	push {r3, r4, r5, r6, r7, lr}
	add r2, sp, #0
	mov r1, #2
	add r2, #2
	add r3, sp, #0
	add r5, r0, #0
	mov r7, #2
	bl ovy265_219abcc
	add r6, sp, #0
	mov r2, #0
	ldrsh r1, [r6, r7]
	ldrsh r2, [r6, r2]
	ldr r4, _0219B420 ; =0x00009120
	sub r1, #0xb0
	sub r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	add r2, sp, #0
	add r0, r5, #0
	mov r1, #3
	add r2, #2
	add r3, sp, #0
	bl ovy265_219abcc
	mov r2, #0
	ldrsh r2, [r6, r2]
	add r4, #8
	ldrsh r1, [r6, r7]
	sub r2, #8
	lsl r2, r2, #0x10
	ldr r0, [r5, r4]
	asr r2, r2, #0x10
	bl sub_0202B230
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B420: .word 0x00009120
	thumb_func_end ovy265_219b3cc

	thumb_func_start sub_0219B424
sub_0219B424: ; 0x0219B424
	lsl r1, r1, #3
	add r1, r0, r1
	ldr r0, _0219B434 ; =0x00009120
	ldr r3, _0219B438 ; =sub_0202B098
	ldr r0, [r1, r0]
	add r1, r2, #0
	bx r3
	nop
_0219B434: .word 0x00009120
_0219B438: .word sub_0202B098
	thumb_func_end sub_0219B424

	thumb_func_start ovy265_219b43c
ovy265_219b43c: ; 0x0219B43C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0219B4AC ; =0x0000808D
	add r5, r0, #0
	mov r0, #0xd5
	bl sub_0204AA30
	mov r7, #0x8d
	mov r1, #0x18
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r7, [sp]
	bl sub_0204B81C
	ldr r4, _0219B4B0 ; =0x000090D4
	mov r1, #3
	str r0, [r5, r4]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #0x20
	mov r3, #0x8d
	bl sub_0204BDE0
	add r1, r4, #0
	add r1, #0x34
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0204AB0C
	ldr r1, _0219B4AC ; =0x0000808D
	mov r0, #0x17
	bl sub_0204AA30
	mov r1, #5
	mov r2, #0
	mov r3, #0xa0
	add r6, r0, #0
	str r7, [sp]
	bl sub_0204BC48
	add r4, #0x1c
	str r0, [r5, r4]
	add r0, r6, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B4AC: .word 0x0000808D
_0219B4B0: .word 0x000090D4
	thumb_func_end ovy265_219b43c

	thumb_func_start ovy265_219b4b4
ovy265_219b4b4: ; 0x0219B4B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy265_219b43c
	add r0, r5, #0
	bl ovy265_219af14
	ldr r1, _0219B4F8 ; =0x0219B980
	add r0, r5, #0
	bl ovy265_219ad68
	ldr r4, _0219B4FC ; =0x00009050
	ldr r1, _0219B500 ; =0x0219B998
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy265_219ad68
	add r1, r4, #4
	str r0, [r5, r1]
	ldr r1, _0219B504 ; =0x0219B968
	add r0, r5, #0
	bl ovy265_219ad68
	add r4, #8
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ovy265_219ac30
	add r0, r5, #0
	bl ovy265_219afd8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219B4F8: .word 0x0219B980
_0219B4FC: .word 0x00009050
_0219B500: .word 0x0219B998
_0219B504: .word 0x0219B968
	thumb_func_end ovy265_219b4b4

	thumb_func_start ovy265_219b508
ovy265_219b508: ; 0x0219B508
	push {r4, lr}
	add r4, r0, #0
	bl ovy265_219af88
	add r0, r4, #0
	bl ovy265_219adc8
	add r0, r4, #0
	bl ovy265_219ad30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy265_219b508

	thumb_func_start ovy265_219b520
ovy265_219b520: ; 0x0219B520
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204E260
	cmp r0, #1
	bne _0219B532
	mov r0, #0x10
	mov r1, #0
	b _0219B536
_0219B532:
	mov r0, #0x10
	mov r1, #1
_0219B536:
	bl sub_02046CFC
	add r0, r4, #0
	bl ovy265_219ab74
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy265_219b520

	thumb_func_start ovy265_219b544
ovy265_219b544: ; 0x0219B544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ovy265_219b43c
	ldr r4, _0219B6B0 ; =0x0219BA78
	add r3, sp, #4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	mov r1, #2
	mov r2, #0x8d
	mov r7, #0x8d
	bl sub_0204BE9C
	ldr r1, _0219B6B4 ; =0x00009118
	mov r6, #1
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204BF14
	ldr r0, _0219B6B4 ; =0x00009118
	ldr r1, _0219B6B4 ; =0x00009118
	sub r0, #0xd4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0204C018
	ldr r1, _0219B6B8 ; =0x0219B9C8
	add r0, r5, #0
	bl ovy265_219ad68
	ldr r1, _0219B6B4 ; =0x00009118
	sub r1, #0xb4
	str r0, [r5, r1]
	ldr r1, _0219B6BC ; =0x0219B9B0
	add r0, r5, #0
	bl ovy265_219ad68
	ldr r1, _0219B6B4 ; =0x00009118
	mov r2, #0
	sub r1, #0xb0
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #7
	bl ovy265_219ac30
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ovy265_219ac30
	ldr r1, _0219B6C0 ; =0x0000808D
	mov r0, #0xd5
	bl sub_0204AA30
	mov r1, #0x19
	mov r2, #0
	mov r3, #1
	add r4, r0, #0
	str r7, [sp]
	bl sub_0204B81C
	ldr r1, _0219B6B4 ; =0x00009118
	mov r2, #1
	sub r1, #0x38
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	str r7, [sp]
	bl sub_0204BBA0
	ldr r1, _0219B6B4 ; =0x00009118
	mov r2, #0x21
	sub r1, #0x1c
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0x1b
	mov r3, #0x8d
	bl sub_0204BDE0
	ldr r1, _0219B6B4 ; =0x00009118
	sub r1, r1, #4
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_02008BF0
	cmp r0, #0
	bne _0219B610
	mov r6, #0
_0219B610:
	ldr r0, _0219B6C0 ; =0x0000808D
	bl sub_02034060
	add r1, r6, #0
	mov r2, #0
	mov r3, #0x8d
	add r7, r0, #0
	bl sub_020340A4
	ldr r4, _0219B6C4 ; =0x000090D8
	add r1, r6, #0
	str r0, [r5, r4]
	mov r0, #0x8d
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0xc0
	bl sub_02034074
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x8d
	bl sub_020340C8
	add r1, r4, #0
	add r1, #0x34
	str r0, [r5, r1]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0x8d
	bl sub_020340A4
	add r1, r4, #4
	str r0, [r5, r1]
	mov r0, #0x8d
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0x60
	bl sub_02034074
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0x8d
	bl sub_020340C8
	add r1, r4, #0
	add r1, #0x38
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0204AB0C
	ldr r1, _0219B6C8 ; =0x0219BA10
	add r0, r5, #0
	bl ovy265_219ad68
	add r1, r4, #0
	sub r1, #0x7c
	str r0, [r5, r1]
	ldr r1, _0219B6CC ; =0x0219BA28
	add r0, r5, #0
	bl ovy265_219ad68
	sub r4, #0x78
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy265_219b1b8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219B6B0: .word 0x0219BA78
_0219B6B4: .word 0x00009118
_0219B6B8: .word 0x0219B9C8
_0219B6BC: .word 0x0219B9B0
_0219B6C0: .word 0x0000808D
_0219B6C4: .word 0x000090D8
_0219B6C8: .word 0x0219BA10
_0219B6CC: .word 0x0219BA28
	thumb_func_end ovy265_219b544

	thumb_func_start ovy265_219b6d0
ovy265_219b6d0: ; 0x0219B6D0
	push {r4, lr}
	add r4, r0, #0
	bl ovy265_219af88
	add r0, r4, #0
	bl ovy265_219adc8
	ldr r0, _0219B6F0 ; =0x00009118
	ldr r0, [r4, r0]
	bl sub_0204BECC
	add r0, r4, #0
	bl ovy265_219ad30
	pop {r4, pc}
	nop
_0219B6F0: .word 0x00009118
	thumb_func_end ovy265_219b6d0

	thumb_func_start sub_0219B6F4
sub_0219B6F4: ; 0x0219B6F4
	ldr r3, _0219B6F8 ; =ovy265_219ab74
	bx r3
	.align 2, 0
_0219B6F8: .word ovy265_219ab74
	thumb_func_end sub_0219B6F4

	thumb_func_start ovy265_219b6fc
ovy265_219b6fc: ; 0x0219B6FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r6, _0219B7C4 ; =0x00009048
	add r5, r0, #0
	mov r4, #9
_0219B706:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _0219B724
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219AC78
	cmp r0, #1
	beq _0219B724
	add r0, r5, #0
	add r1, r4, #0
	bl ovy265_219adac
_0219B724:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x21
	blo _0219B706
	mov r0, #4
	bl sub_02005748
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	cmp r0, #2
	bhs _0219B7C0
	ldr r1, _0219B7C4 ; =0x00009048
	mov r4, #9
_0219B742:
	lsl r6, r4, #2
	add r0, r5, r6
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0219B7B6
	mov r0, #1
	lsl r0, r0, #8
	bl sub_02005748
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xd8
	bl sub_02005748
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	cmp r7, #0xc0
	add r2, sp, #8
	bge _0219B780
	ldr r3, _0219B7C8 ; =0x0219B9E0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	add r1, sp, #8
	strh r0, [r1]
	b _0219B796
_0219B780:
	ldr r3, _0219B7CC ; =0x0219B9F8
	sub r7, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	add r1, sp, #8
	strh r0, [r1]
_0219B796:
	strh r7, [r1, #2]
	add r0, r5, #0
	add r1, sp, #8
	bl ovy265_219ad68
	ldr r1, _0219B7C4 ; =0x00009048
	add r2, r5, r6
	str r0, [r2, r1]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r2, #4
	bl ovy265_219ac4c
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0219B7B6:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x21
	blo _0219B742
_0219B7C0:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B7C4: .word 0x00009048
_0219B7C8: .word 0x0219B9E0
_0219B7CC: .word 0x0219B9F8
	thumb_func_end ovy265_219b6fc
_0219B7D0:
	.byte 0xC1, 0x98, 0x19, 0x02, 0xF9, 0x98, 0x19, 0x02, 0x0D, 0x99, 0x19, 0x02, 0x7A, 0x05, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x01, 0x00
	.byte 0x00, 0x80, 0xBB, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x08, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9A, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x04, 0x02
	.byte 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x2F, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00
	.byte 0x25, 0xA2, 0x19, 0x02, 0x75, 0xA2, 0x19, 0x02, 0xC1, 0xA2, 0x19, 0x02, 0xDD, 0xA2, 0x19, 0x02
	.byte 0xF9, 0xA2, 0x19, 0x02, 0x71, 0xA3, 0x19, 0x02, 0x35, 0xA3, 0x19, 0x02, 0xF9, 0xA6, 0x19, 0x02
	.byte 0x71, 0xA7, 0x19, 0x02, 0x45, 0xA7, 0x19, 0x02, 0xD0, 0xFF, 0x90, 0x00, 0x00, 0x00, 0x0A, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x01, 0x90, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x90, 0x00, 0x06, 0x00, 0x08, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF8, 0xFF, 0x18, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x01, 0xA8, 0x00, 0x01, 0x00, 0x0A, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0xA8, 0x00, 0x02, 0x00, 0x0A, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x18, 0x00, 0x02, 0x00, 0x0A, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x08, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x08, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x58, 0x00, 0xD0, 0xFE, 0x00, 0x00, 0x0A, 0x01, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0xD0, 0xFF, 0x00, 0x00, 0x0A, 0x01
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xDE, 0x00, 0x07, 0x00, 0xDE, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0xDE, 0x00, 0x07, 0x00
	.byte 0xDE, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0xC0, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219B7D0
