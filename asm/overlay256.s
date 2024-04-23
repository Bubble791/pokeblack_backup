    .include "macros/function.inc"
	.include "overlay256.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy256_21bb700
ovy256_21bb700: ; 0x021BB700
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x8c
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	ldr r6, _021BB730 ; =0x00000C78
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x8c
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	blx MI_CpuFill8
	str r5, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021BB730: .word 0x00000C78
	thumb_func_end ovy256_21bb700

	thumb_func_start ovy256_21bb734
ovy256_21bb734: ; 0x021BB734
	push {r3, lr}
	add r0, r3, #0
	bl ovy256_21bbd10
	cmp r0, #0
	bne _021BB744
	mov r0, #1
	pop {r3, pc}
_021BB744:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy256_21bb734

	thumb_func_start ovy256_21bb748
ovy256_21bb748: ; 0x021BB748
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x8c
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy256_21bb748

	thumb_func_start ovy256_21bb758
ovy256_21bb758: ; 0x021BB758
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BB76C ; =ovy256_21bb784
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	ldr r1, _021BB770 ; =0x00000B28
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_021BB76C: .word ovy256_21bb784
_021BB770: .word 0x00000B28
	thumb_func_end ovy256_21bb758

	thumb_func_start sub_021BB774
sub_021BB774: ; 0x021BB774
	ldr r1, _021BB77C ; =0x00000B28
	ldr r3, _021BB780 ; =GFL_TCBRemove
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021BB77C: .word 0x00000B28
_021BB780: .word GFL_TCBRemove
	thumb_func_end sub_021BB774

	thumb_func_start ovy256_21bb784
ovy256_21bb784: ; 0x021BB784
	push {r4, lr}
	add r4, r1, #0
	bl sub_02045A5C
	bl sub_0204B7C8
	mov r0, #0xb3
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020275F8
	ldr r3, _021BB7A8 ; =0x02FE0000
	ldr r1, _021BB7AC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021BB7A8: .word 0x02FE0000
_021BB7AC: .word 0x00003FF8
	thumb_func_end ovy256_21bb784

	thumb_func_start ovy256_21bb7b0
ovy256_21bb7b0: ; 0x021BB7B0
	push {r3, lr}
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _021BB7C0 ; =0x021BD9C0
	bl sub_02046C40
	pop {r3, pc}
	.align 2, 0
_021BB7C0: .word 0x021BD9C0
	thumb_func_end ovy256_21bb7b0

	thumb_func_start sub_021BB7C4
sub_021BB7C4: ; 0x021BB7C4
	ldr r0, _021BB7C8 ; =0x021BD9C0
	bx lr
	.align 2, 0
_021BB7C8: .word 0x021BD9C0
	thumb_func_end sub_021BB7C4

	thumb_func_start ovy256_21bb7cc
ovy256_21bb7cc: ; 0x021BB7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	mov r0, #0x8c
	bl sub_020444A4
	ldr r4, _021BB8C4 ; =0x021BD8F0
	add r3, sp, #0xc0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021BB8C8 ; =0x021BD960
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
	mov r0, #0
	mov r2, #0
	mov r5, #0
	bl sub_0204476C
	ldr r4, _021BB8CC ; =0x021BD940
	add r3, sp, #0x80
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
	mov r0, #1
	mov r2, #0
	mov r4, #1
	bl sub_0204476C
	ldr r6, _021BB8D0 ; =0x021BD9A0
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
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r6, _021BB8D4 ; =0x021BD900
	add r3, sp, #0x40
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
	mov r7, #3
	bl sub_0204476C
	ldr r6, _021BB8D8 ; =0x021BD920
	add r3, sp, #0x20
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
	mov r2, #0
	bl sub_0204476C
	ldr r6, _021BB8DC ; =0x021BD980
	add r3, sp, #0
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
	mov r0, #5
	add r2, r5, #0
	bl sub_0204476C
	mov r0, #0xd
	add r1, r4, #0
	bl sub_02046CFC
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02046D84
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB8C4: .word 0x021BD8F0
_021BB8C8: .word 0x021BD960
_021BB8CC: .word 0x021BD940
_021BB8D0: .word 0x021BD9A0
_021BB8D4: .word 0x021BD900
_021BB8D8: .word 0x021BD920
_021BB8DC: .word 0x021BD980
	thumb_func_end ovy256_21bb7cc

	thumb_func_start ovy256_21bb8e0
ovy256_21bb8e0: ; 0x021BB8E0
	push {r3, lr}
	mov r0, #0xf
	mov r1, #0
	bl sub_02046CFC
	mov r0, #3
	mov r1, #0
	bl sub_02046D84
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
	thumb_func_end ovy256_21bb8e0

	thumb_func_start ovy256_21bb91c
ovy256_21bb91c: ; 0x021BB91C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _021BBA0C ; =0x0000808C
	mov r0, #0xd2
	bl sub_0204AA30
	mov r1, #0x80
	str r1, [sp]
	mov r4, #0x8c
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r5, r0, #0
	str r4, [sp, #4]
	mov r6, #1
	mov r7, #0
	bl sub_0204B0D4
	mov r0, #0x40
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #2
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #7
	mov r2, #4
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl GFL_ArcToolFree
	add r0, r7, #0
	bl sub_02045814
	mov r1, #0x15
	add r2, r0, #0
	mov r5, #0x20
	lsl r1, r1, #6
	add r1, r2, r1
	str r5, [sp]
	mov r0, #3
	add r2, r7, #0
	mov r3, #0x15
	str r0, [sp, #4]
	bl sub_020454AC
	mov r6, #0x1e
	str r5, [sp]
	lsl r6, r6, #4
	str r4, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0204B0B8
	str r5, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BBA0C: .word 0x0000808C
	thumb_func_end ovy256_21bb91c

	thumb_func_start ovy256_21bba10
ovy256_21bba10: ; 0x021BBA10
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8c
	bl sub_02026DC0
	mov r1, #0xb3
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x8c
	bl sub_02026E04
	pop {r4, pc}
	thumb_func_end ovy256_21bba10

	thumb_func_start ovy256_21bba2c
ovy256_21bba2c: ; 0x021BBA2C
	push {r3, r4, r5, lr}
	mov r4, #0xb3
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r5, r4]
	bl sub_02026DE8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy256_21bba2c

	thumb_func_start ovy256_21bba44
ovy256_21bba44: ; 0x021BBA44
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xb3
	lsl r7, r7, #4
	add r5, r0, #0
	mov r4, #0
	add r7, #0xa
_021BBA50:
	mov r2, #1
	add r6, r4, #6
	mov r3, #1
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb3
	lsl r0, r0, #4
	lsl r2, r4
	lsl r3, r6
	orr r2, r3
	add r3, r5, r4
	lsl r2, r2, #0x10
	ldrb r3, [r3, r7]
	ldr r0, [r5, r0]
	mov r1, #2
	lsr r2, r2, #0x10
	bl sub_020278AC
	add r4, r4, #1
	cmp r4, #6
	blo _021BBA50
	mov r0, #0xb3
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0202778C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy256_21bba44

	thumb_func_start ovy256_21bba88
ovy256_21bba88: ; 0x021BBA88
	push {r3, r4, r5, lr}
	mov r4, #0xb3
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_02027780
	cmp r0, #0
	beq _021BBA9E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BBA9E:
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0202778C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy256_21bba88

	thumb_func_start ovy256_21bbaac
ovy256_21bbaac: ; 0x021BBAAC
	push {r3, lr}
	mov r0, #8
	str r0, [sp]
	ldr r0, _021BBAC0 ; =0x04000050
	mov r1, #6
	mov r2, #0x11
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	.align 2, 0
_021BBAC0: .word 0x04000050
	thumb_func_end ovy256_21bbaac

	thumb_func_start ovy256_21bbac4
ovy256_21bbac4: ; 0x021BBAC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	mov r2, #0x69
	mov r3, #0x8c
	mov r7, #2
	mov r6, #0x8c
	bl GFL_MsgSysLoadData
	mov r4, #0xb6
	lsl r4, r4, #4
	str r0, [r5, r4]
	mov r0, #0x17
	mov r1, #0
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
	mov r0, #0x8c
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #4
	str r0, [r5, r1]
	mov r0, #0x8c
	bl sub_02021998
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	lsl r0, r7, #9
	mov r1, #0x8c
	bl GFL_StrBufCreate
	add r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy256_21bbac4

	thumb_func_start ovy256_21bbb28
ovy256_21bbb28: ; 0x021BBB28
	push {r3, r4, r5, lr}
	ldr r4, _021BBB64 ; =0x00000B68
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02021A18
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
_021BBB64: .word 0x00000B68
	thumb_func_end ovy256_21bbb28

	thumb_func_start ovy256_21bbb68
ovy256_21bbb68: ; 0x021BBB68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_021BBB72:
	ldr r1, [sp, #4]
	mov r0, #0xbc
	mul r0, r1
	mov r4, #0
	add r7, r6, r0
_021BBB7C:
	mov r0, #0x1c
	mul r0, r4
	add r5, r7, r0
	mov r0, #0x20
	mov r1, #0x8c
	bl GFL_StrBufCreate
	str r0, [r5, #0xc]
	mov r0, #0x20
	mov r1, #0x8c
	bl GFL_StrBufCreate
	str r0, [r5, #0x10]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021BBB7C
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0xf
	blo _021BBB72
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	cmp r0, #0
	ldr r0, [r1]
	bne _021BBC0A
	bl sub_020179C8
	add r7, r0, #0
	bl sub_0200F5C0
	add r1, r6, #0
	add r1, #0xc4
	strh r0, [r1]
	add r1, r6, #0
	add r0, r7, #0
	add r1, #0xb4
	bl sub_0200F644
	add r0, r6, #0
	add r0, #0xc4
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021BBC00
	add r5, r6, #0
	add r5, #0xc
_021BBBE2:
	mov r2, #0x1c
	mul r2, r4
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, r2
	bl sub_0200F5D8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	blo _021BBBE2
_021BBC00:
	ldr r0, _021BBCC4 ; =0x00000C5F
	mov r1, #1
	add sp, #0x14
	strb r1, [r6, r0]
	pop {r4, r5, r6, r7, pc}
_021BBC0A:
	bl sub_02017934
	mov r1, #8
	mov r2, #0x8c
	str r0, [sp, #0xc]
	mov r4, #8
	bl sub_020074EC
	cmp r0, #1
	bne _021BBCB6
	mov r2, #0
	str r2, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	mov r2, #0
	bl sub_02007678
	str r0, [sp, #8]
	cmp r0, #0
	beq _021BBCB6
_021BBC32:
	ldr r0, [sp, #0x10]
	mov r1, #0xbc
	add r7, r0, #0
	mul r7, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl sub_0200F67C
	add r1, r6, r7
	add r1, #0xc4
	strh r0, [r1]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl sub_0200F670
	add r1, r6, r7
	add r1, #0xc6
	strh r0, [r1]
	add r2, r6, #0
	add r2, #0xb4
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r2, r2, r7
	bl sub_0200F6C0
	add r0, r6, r7
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r0, #0
	beq _021BBCA8
	mov r4, #0
	cmp r0, #0
	bls _021BBCA0
	add r0, r6, #0
	add r0, #0xc
	add r0, r0, r7
	str r0, [sp]
_021BBC7C:
	mov r3, #0x1c
	add r5, r4, #0
	mul r5, r3
	ldr r3, [sp]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	add r3, r3, r5
	bl sub_0200F69C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, r7
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	blo _021BBC7C
_021BBCA0:
	ldr r0, _021BBCC4 ; =0x00000C5F
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
_021BBCA8:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xf
	blo _021BBC32
_021BBCB6:
	ldr r0, [sp, #0xc]
	mov r1, #8
	bl sub_02007534
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021BBCC4: .word 0x00000C5F
	thumb_func_end ovy256_21bbb68

	thumb_func_start ovy256_21bbcc8
ovy256_21bbcc8: ; 0x021BBCC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r7, #0x1c
_021BBCD4:
	ldr r1, [sp, #4]
	mov r0, #0xbc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r2
_021BBCE2:
	add r0, r4, #0
	mul r0, r7
	add r5, r6, r0
	ldr r0, [r5, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x10]
	bl GFL_StrBufFree
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021BBCE2
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0xf
	blo _021BBCD4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy256_21bbcc8

	thumb_func_start ovy256_21bbd10
ovy256_21bbd10: ; 0x021BBD10
	push {r3, r4, r5, lr}
	ldr r5, _021BBD3C ; =0x00000C6C
	add r4, r0, #0
	ldr r1, [r4, r5]
	lsl r2, r1, #2
	ldr r1, _021BBD40 ; =0x021BD9FC
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, r5]
	cmp r0, #0xb
	bne _021BBD2A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021BBD2A:
	add r0, r4, #0
	bl ovy256_21bced0
	add r0, r4, #0
	bl ovy256_21bc77c
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021BBD3C: .word 0x00000C6C
_021BBD40: .word 0x021BD9FC
	thumb_func_end ovy256_21bbd10

	thumb_func_start ovy256_21bbd44
ovy256_21bbd44: ; 0x021BBD44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BBDCC ; =0x0000008B
	bl sub_0203CE0C
	mov r0, #0
	mov r4, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r6, _021BBDD0 ; =0x04000050
	ldr r7, _021BBDD4 ; =0x04001050
	strh r4, [r6]
	mov r0, #0
	strh r4, [r7]
	bl sub_02046DF8
	add r6, #0x1c
	sub r4, #0x10
	add r0, r6, #0
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	add r7, #0x1c
	add r0, r7, #0
	add r1, r4, #0
	bl GXx_SetMasterBrightness_
	add r0, r5, #0
	bl ovy256_21bbb68
	bl ovy256_21bb7b0
	bl ovy256_21bb7cc
	bl ovy256_21bb91c
	add r0, r5, #0
	bl ovy256_21bba10
	add r0, r5, #0
	bl ovy256_21bbac4
	add r0, r5, #0
	bl ovy256_21bc714
	add r0, r5, #0
	bl ovy256_21bce88
	add r0, r5, #0
	bl ovy256_21bbf88
	bl ovy256_21bbaac
	mov r0, #1
	mov r1, #0x8c
	bl sub_02042BA8
	add r0, r5, #0
	bl ovy256_21bb758
	add r0, r5, #0
	mov r1, #4
	bl ovy256_21bc344
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBDCC: .word 0x0000008B
_021BBDD0: .word 0x04000050
_021BBDD4: .word 0x04001050
	thumb_func_end ovy256_21bbd44

	thumb_func_start ovy256_21bbdd8
ovy256_21bbdd8: ; 0x021BBDD8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_021BB774
	add r0, r4, #0
	bl ovy256_21bceb4
	add r0, r4, #0
	bl ovy256_21bc75c
	add r0, r4, #0
	bl ovy256_21bbb28
	add r0, r4, #0
	bl ovy256_21bba2c
	bl ovy256_21bb8e0
	add r0, r4, #0
	bl ovy256_21bbcc8
	ldr r5, _021BBE3C ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r5, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _021BBE40 ; =0x0400106C
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
	ldr r0, _021BBE44 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #0xb
	pop {r4, r5, r6, pc}
	nop
_021BBE3C: .word 0x0400006C
_021BBE40: .word 0x0400106C
_021BBE44: .word 0x0000008B
	thumb_func_end ovy256_21bbdd8

	thumb_func_start ovy256_21bbe48
ovy256_21bbe48: ; 0x021BBE48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BBE6C ; =0x00000B6C
	ldr r0, [r4, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _021BBE66
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021BBE66
	ldr r0, _021BBE70 ; =0x00000C74
	ldr r0, [r4, r0]
	pop {r4, pc}
_021BBE66:
	mov r0, #2
	pop {r4, pc}
	nop
_021BBE6C: .word 0x00000B6C
_021BBE70: .word 0x00000C74
	thumb_func_end ovy256_21bbe48

	thumb_func_start ovy256_21bbe74
ovy256_21bbe74: ; 0x021BBE74
	push {r3, r4, r5, lr}
	ldr r5, _021BBE90 ; =0x00000C64
	add r4, r0, #0
	ldr r1, [r4, r5]
	bl sub_021BCF4C
	cmp r0, #0
	bne _021BBE8A
	add r0, r5, #4
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021BBE8A:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_021BBE90: .word 0x00000C64
	thumb_func_end ovy256_21bbe74

	thumb_func_start ovy256_21bbe94
ovy256_21bbe94: ; 0x021BBE94
	push {r3, r4, r5, lr}
	ldr r5, _021BBF74 ; =0x00000B6C
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021BBEA8
	mov r0, #4
	pop {r3, r4, r5, pc}
_021BBEA8:
	add r0, r4, #0
	bl ovy256_21bd748
	cmp r0, #0xa
	bhi _021BBF6E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BBEBE: ; jump table
	.short _021BBED4 - _021BBEBE - 2 ; case 0
	.short _021BBEF6 - _021BBEBE - 2 ; case 1
	.short _021BBF16 - _021BBEBE - 2 ; case 2
	.short _021BBF30 - _021BBEBE - 2 ; case 3
	.short _021BBF4A - _021BBEBE - 2 ; case 4
	.short _021BBF5E - _021BBEBE - 2 ; case 5
	.short _021BBF5E - _021BBEBE - 2 ; case 6
	.short _021BBF5E - _021BBEBE - 2 ; case 7
	.short _021BBF5E - _021BBEBE - 2 ; case 8
	.short _021BBF5E - _021BBEBE - 2 ; case 9
	.short _021BBF5E - _021BBEBE - 2 ; case 10
_021BBED4:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy256_21bc3bc
	cmp r0, #1
	bne _021BBF6E
	ldr r0, _021BBF78 ; =0x0000054B
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xc
	mov r3, #5
	bl ovy256_21bc3a0
	pop {r3, r4, r5, pc}
_021BBEF6:
	add r0, r4, #0
	mov r1, #1
	bl ovy256_21bc3bc
	cmp r0, #1
	bne _021BBF6E
	ldr r0, _021BBF78 ; =0x0000054B
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0xd
	mov r3, #5
	bl ovy256_21bc3a0
	pop {r3, r4, r5, pc}
_021BBF16:
	ldr r0, _021BBF7C ; =0x00000556
	bl GFL_SndSEPlay
	ldr r0, [r4]
	mov r1, #1
	strh r1, [r0, #6]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #8
	mov r3, #0xa
	bl ovy256_21bc3a0
	pop {r3, r4, r5, pc}
_021BBF30:
	ldr r0, _021BBF80 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4]
	mov r1, #0
	strh r1, [r0, #6]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #9
	mov r3, #0xa
	bl ovy256_21bc3a0
	pop {r3, r4, r5, pc}
_021BBF4A:
	ldr r0, _021BBF84 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0xf0
	ldrsb r0, [r4, r0]
	add r5, #0xf1
	strb r0, [r4, r5]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021BBF5E:
	sub r0, r0, #5
	add r5, #0xf1
	strb r0, [r4, r5]
	ldr r0, _021BBF84 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #6
	pop {r3, r4, r5, pc}
_021BBF6E:
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_021BBF74: .word 0x00000B6C
_021BBF78: .word 0x0000054B
_021BBF7C: .word 0x00000556
_021BBF80: .word 0x00000551
_021BBF84: .word 0x0000054C
	thumb_func_end ovy256_21bbe94

	thumb_func_start ovy256_21bbf88
ovy256_21bbf88: ; 0x021BBF88
	push {r4, lr}
	ldr r1, _021BBFA8 ; =0x00000C5C
	add r4, r0, #0
	mov r2, #0
	strb r2, [r4, r1]
	bl ovy256_21bd228
	add r0, r4, #0
	bl ovy256_21bc804
	add r0, r4, #0
	bl ovy256_21bc990
	mov r0, #4
	pop {r4, pc}
	nop
_021BBFA8: .word 0x00000C5C
	thumb_func_end ovy256_21bbf88

	thumb_func_start ovy256_21bbfac
ovy256_21bbfac: ; 0x021BBFAC
	push {r4, r5, r6, lr}
	mov r4, #0xc7
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _021BBFC0
	cmp r1, #1
	beq _021BBFFA
	b _021BC0AA
_021BBFC0:
	mov r1, #0xc
	mov r2, #0x12
	bl ovy256_21bcf20
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0x13
	bl ovy256_21bcf20
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0xe
	bl ovy256_21bcf20
	mov r0, #2
	mov r1, #1
	bl sub_02046CFC
	add r0, r5, #0
	mov r1, #1
	bl ovy256_21bd60c
	add r0, r5, #0
	bl ovy256_21bba44
	ldr r0, [r5, r4]
	add r0, r0, #1
	str r0, [r5, r4]
	b _021BC0AA
_021BBFFA:
	bl ovy256_21bba88
	cmp r0, #0
	bne _021BC0AA
	mov r0, #0
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x14
	ldrsb r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x13
	ldrsb r1, [r5, r0]
	cmp r1, r6
	bne _021BC024
	sub r4, #0x14
	add r0, r5, #0
	strb r1, [r5, r4]
	bl ovy256_21bcac8
	mov r0, #7
	pop {r4, r5, r6, pc}
_021BC024:
	add r0, r4, #0
	sub r0, #0x14
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy256_21bc448
	cmp r0, #1
	bne _021BC068
	add r0, r4, #0
	sub r0, #0x12
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mov r3, #1
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	sub r1, r0, #1
	ldr r0, _021BC0B0 ; =0x021BD9F0
	ldrb r0, [r0, r1]
	neg r1, r0
	add r0, r4, #0
	sub r0, #0xf
	strb r1, [r5, r0]
	sub r4, #0x13
	ldrsb r2, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy256_21bc474
	add r1, r0, #0
	add r0, r5, #0
	neg r1, r1
	b _021BC098
_021BC068:
	add r0, r4, #0
	sub r0, #0x12
	ldrsb r0, [r5, r0]
	mov r3, #0xbc
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	add r0, #0xc4
	ldrh r0, [r0]
	sub r3, #0xbd
	sub r1, r0, #1
	ldr r0, _021BC0B0 ; =0x021BD9F0
	ldrb r1, [r0, r1]
	add r0, r4, #0
	sub r0, #0xf
	strb r1, [r5, r0]
	sub r4, #0x13
	ldrsb r2, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy256_21bc474
	add r1, r0, #0
	add r0, r5, #0
_021BC098:
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ovy256_21bc4c0
	ldr r0, _021BC0B4 ; =0x0000057B
	bl GFL_SndSEPlay
	mov r0, #9
	pop {r4, r5, r6, pc}
_021BC0AA:
	mov r0, #6
	pop {r4, r5, r6, pc}
	nop
_021BC0B0: .word 0x021BD9F0
_021BC0B4: .word 0x0000057B
	thumb_func_end ovy256_21bbfac

	thumb_func_start ovy256_21bc0b8
ovy256_21bc0b8: ; 0x021BC0B8
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021BC21C ; =0x00000B6C
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021BC0CC
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021BC0CC:
	add r0, r4, #0
	bl ovy256_21bd7b4
	add r6, r0, #0
	cmp r6, #0xa
	bhi _021BC106
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BC0E4: ; jump table
	.short _021BC0FA - _021BC0E4 - 2 ; case 0
	.short _021BC138 - _021BC0E4 - 2 ; case 1
	.short _021BC218 - _021BC0E4 - 2 ; case 2
	.short _021BC172 - _021BC0E4 - 2 ; case 3
	.short _021BC218 - _021BC0E4 - 2 ; case 4
	.short _021BC186 - _021BC0E4 - 2 ; case 5
	.short _021BC186 - _021BC0E4 - 2 ; case 6
	.short _021BC186 - _021BC0E4 - 2 ; case 7
	.short _021BC186 - _021BC0E4 - 2 ; case 8
	.short _021BC186 - _021BC0E4 - 2 ; case 9
	.short _021BC186 - _021BC0E4 - 2 ; case 10
_021BC0FA:
	add r0, r4, #0
	mov r1, #1
	bl ovy256_21bc3f8
	cmp r0, #1
	beq _021BC108
_021BC106:
	b _021BC218
_021BC108:
	add r0, r5, #0
	add r0, #0xf2
	ldrsb r0, [r4, r0]
	mov r1, #0xbc
	add r5, #0xf5
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	add r0, #0xc4
	ldrh r0, [r0]
	sub r1, #0xbd
	sub r2, r0, #1
	ldr r0, _021BC220 ; =0x021BD9F0
	ldrb r0, [r0, r2]
	neg r0, r0
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy256_21bc4c0
	ldr r0, _021BC224 ; =0x0000057B
	bl GFL_SndSEPlay
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021BC138:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy256_21bc3f8
	cmp r0, #1
	bne _021BC218
	add r0, r5, #0
	add r0, #0xf2
	ldrsb r1, [r4, r0]
	mov r0, #0xbc
	add r5, #0xf5
	mul r0, r1
	add r0, r4, r0
	add r0, #0xc4
	ldrh r0, [r0]
	sub r1, r0, #1
	ldr r0, _021BC220 ; =0x021BD9F0
	ldrb r0, [r0, r1]
	mov r1, #1
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy256_21bc4c0
	ldr r0, _021BC224 ; =0x0000057B
	bl GFL_SndSEPlay
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021BC172:
	ldr r0, _021BC228 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #9
	mov r3, #8
	bl ovy256_21bc3a0
	pop {r3, r4, r5, r6, r7, pc}
_021BC186:
	add r0, r5, #0
	add r0, #0xf0
	ldrsb r7, [r4, r0]
	sub r1, r6, #5
	cmp r1, r7
	beq _021BC218
	add r0, r5, #0
	add r0, #0xf0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ovy256_21bc448
	cmp r0, #1
	bne _021BC1D6
	add r0, r5, #0
	add r0, #0xf2
	ldrsb r1, [r4, r0]
	mov r0, #0xbc
	sub r2, r6, #5
	mul r0, r1
	add r0, r4, r0
	add r0, #0xc4
	ldrh r0, [r0]
	lsl r2, r2, #0x18
	add r5, #0xf5
	sub r1, r0, #1
	ldr r0, _021BC220 ; =0x021BD9F0
	asr r2, r2, #0x18
	ldrb r0, [r0, r1]
	add r1, r7, #0
	mov r3, #1
	neg r0, r0
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy256_21bc474
	add r1, r0, #0
	add r0, r4, #0
	neg r1, r1
	b _021BC206
_021BC1D6:
	add r0, r5, #0
	add r0, #0xf2
	ldrsb r0, [r4, r0]
	sub r2, r6, #5
	lsl r2, r2, #0x18
	mov r3, #0xbc
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	add r0, #0xc4
	ldrh r0, [r0]
	add r5, #0xf5
	asr r2, r2, #0x18
	sub r1, r0, #1
	ldr r0, _021BC220 ; =0x021BD9F0
	sub r3, #0xbd
	ldrb r0, [r0, r1]
	add r1, r7, #0
	strb r0, [r4, r5]
	add r0, r4, #0
	bl ovy256_21bc474
	add r1, r0, #0
	add r0, r4, #0
_021BC206:
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bl ovy256_21bc4c0
	ldr r0, _021BC224 ; =0x0000057B
	bl GFL_SndSEPlay
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021BC218:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC21C: .word 0x00000B6C
_021BC220: .word 0x021BD9F0
_021BC224: .word 0x0000057B
_021BC228: .word 0x00000551
	thumb_func_end ovy256_21bc0b8

	thumb_func_start ovy256_21bc22c
ovy256_21bc22c: ; 0x021BC22C
	push {r4, r5, r6, lr}
	mov r4, #0xc7
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _021BC240
	cmp r1, #1
	beq _021BC25C
	b _021BC290
_021BC240:
	mov r1, #0
	bl ovy256_21bd60c
	add r0, r5, #0
	bl ovy256_21bba44
	mov r0, #2
	mov r1, #0
	bl sub_02046CFC
	ldr r0, [r5, r4]
	add r0, r0, #1
	str r0, [r5, r4]
	b _021BC290
_021BC25C:
	bl ovy256_21bba88
	cmp r0, #0
	bne _021BC290
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #4
	bl ovy256_21bcf20
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #5
	bl ovy256_21bcf20
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	mov r6, #0
	bl ovy256_21bcf20
	add r0, r5, #0
	bl ovy256_21bce5c
	str r6, [r5, r4]
	mov r0, #4
	pop {r4, r5, r6, pc}
_021BC290:
	mov r0, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy256_21bc22c

	thumb_func_start ovy256_21bc294
ovy256_21bc294: ; 0x021BC294
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ovy256_21bc614
	cmp r0, #0
	bne _021BC2E6
	ldr r3, _021BC330 ; =0x00000C5E
	mov r1, #0xbc
	ldrsb r2, [r4, r3]
	mov r0, #0
	mul r1, r2
	add r1, r4, r1
	add r1, #0xc4
	ldrh r1, [r1]
	cmp r1, #0
	bls _021BC2D6
	mov r7, #0x2d
	lsl r7, r7, #6
	add r1, r7, #0
	sub r1, #0xc
	mov r2, #0xbc
_021BC2BE:
	add r6, r4, r0
	ldrb r5, [r6, r7]
	add r0, r0, #1
	strb r5, [r6, r1]
	ldrsb r5, [r4, r3]
	add r6, r5, #0
	mul r6, r2
	add r5, r4, r6
	add r5, #0xc4
	ldrh r5, [r5]
	cmp r0, r5
	blo _021BC2BE
_021BC2D6:
	add r0, r4, #0
	bl ovy256_21bba88
	add r0, r4, #0
	bl ovy256_21bcac8
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_021BC2E6:
	ldr r7, _021BC330 ; =0x00000C5E
	mov r0, #0xbc
	ldrsb r1, [r4, r7]
	mov r6, #0
	mul r0, r1
	add r0, r4, r0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r0, #0
	bls _021BC326
	ldr r1, _021BC334 ; =0x00000B3A
	add r0, r1, #6
_021BC2FE:
	add r5, r4, r6
	ldrb r3, [r5, r0]
	ldrb r2, [r5, r1]
	cmp r2, r3
	bls _021BC30C
	sub r2, r2, #1
	b _021BC312
_021BC30C:
	cmp r2, r3
	bhs _021BC314
	add r2, r2, #1
_021BC312:
	strb r2, [r5, r1]
_021BC314:
	ldrsb r3, [r4, r7]
	mov r2, #0xbc
	add r6, r6, #1
	mul r2, r3
	add r2, r4, r2
	add r2, #0xc4
	ldrh r2, [r2]
	cmp r6, r2
	blo _021BC2FE
_021BC326:
	add r0, r4, #0
	bl ovy256_21bba44
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC330: .word 0x00000C5E
_021BC334: .word 0x00000B3A
	thumb_func_end ovy256_21bc294
_021BC338:
	.byte 0x01, 0x4B, 0x01, 0x21, 0x18, 0x47, 0xC0, 0x46
	.byte 0x71, 0xC3, 0x1B, 0x02

	thumb_func_start ovy256_21bc344
ovy256_21bc344: ; 0x021BC344
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x8c
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r0, _021BC36C ; =0x00000C74
	str r4, [r5, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021BC36C: .word 0x00000C74
	thumb_func_end ovy256_21bc344

	thumb_func_start ovy256_21bc370
ovy256_21bc370: ; 0x021BC370
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x8c
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r0, _021BC39C ; =0x00000C74
	str r4, [r5, r0]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021BC39C: .word 0x00000C74
	thumb_func_end ovy256_21bc370

	thumb_func_start ovy256_21bc3a0
ovy256_21bc3a0: ; 0x021BC3A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	bl ovy256_21bcf20
	ldr r0, _021BC3B8 ; =0x00000C64
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	mov r0, #3
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BC3B8: .word 0x00000C64
	thumb_func_end ovy256_21bc3a0

	thumb_func_start ovy256_21bc3bc
ovy256_21bc3bc: ; 0x021BC3BC
	push {r3, r4}
	ldr r3, _021BC3F4 ; =0x00000C5E
	ldrsb r2, [r0, r3]
	add r1, r2, r1
	strb r1, [r0, r3]
	ldrsb r4, [r0, r3]
	cmp r4, #0
	bge _021BC3D4
	add r1, r3, #1
	ldrb r1, [r0, r1]
	sub r1, r1, #1
	b _021BC3DE
_021BC3D4:
	add r1, r3, #1
	ldrb r1, [r0, r1]
	cmp r4, r1
	blt _021BC3E0
	mov r1, #0
_021BC3DE:
	strb r1, [r0, r3]
_021BC3E0:
	ldr r1, _021BC3F4 ; =0x00000C5E
	ldrsb r0, [r0, r1]
	cmp r0, r2
	beq _021BC3EE
	mov r0, #1
	pop {r3, r4}
	bx lr
_021BC3EE:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_021BC3F4: .word 0x00000C5E
	thumb_func_end ovy256_21bc3bc

	thumb_func_start ovy256_21bc3f8
ovy256_21bc3f8: ; 0x021BC3F8
	push {r4, r5}
	ldr r2, _021BC444 ; =0x00000C5C
	ldrsb r3, [r0, r2]
	add r1, r3, r1
	strb r1, [r0, r2]
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bge _021BC41A
	add r1, r2, #2
	ldrsb r4, [r0, r1]
	mov r1, #0xbc
	mul r1, r4
	add r1, r0, r1
	add r1, #0xc4
	ldrh r1, [r1]
	sub r1, r1, #1
	b _021BC42E
_021BC41A:
	add r4, r2, #2
	ldrsb r5, [r0, r4]
	mov r4, #0xbc
	mul r4, r5
	add r4, r0, r4
	add r4, #0xc4
	ldrh r4, [r4]
	cmp r1, r4
	blt _021BC430
	mov r1, #0
_021BC42E:
	strb r1, [r0, r2]
_021BC430:
	ldr r1, _021BC444 ; =0x00000C5C
	ldrsb r0, [r0, r1]
	cmp r0, r3
	beq _021BC43E
	mov r0, #1
	pop {r4, r5}
	bx lr
_021BC43E:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_021BC444: .word 0x00000C5C
	thumb_func_end ovy256_21bc3f8

	thumb_func_start ovy256_21bc448
ovy256_21bc448: ; 0x021BC448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021BD494
	add r1, r0, #0
	add r2, sp, #0
	add r0, r5, #0
	add r1, r4, r1
	add r2, #2
	add r3, sp, #0
	bl ovy256_21bcf84
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0x80
	bge _021BC470
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BC470:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy256_21bc448

	thumb_func_start ovy256_21bc474
ovy256_21bc474: ; 0x021BC474
	push {r4, r5, r6, r7}
	ldr r4, _021BC4BC ; =0x00000C5E
	mov r5, #1
_021BC47A:
	add r1, r1, r3
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	bpl _021BC496
	ldrsb r6, [r0, r4]
	mov r1, #0xbc
	mul r1, r6
	add r1, r0, r1
	add r1, #0xc4
	ldrh r1, [r1]
	sub r1, r1, #1
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	b _021BC4A8
_021BC496:
	ldrsb r7, [r0, r4]
	mov r6, #0xbc
	mul r6, r7
	add r6, r0, r6
	add r6, #0xc4
	ldrh r6, [r6]
	cmp r1, r6
	blt _021BC4A8
	mov r1, #0
_021BC4A8:
	cmp r1, r2
	beq _021BC4B6
	add r5, r5, #1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	cmp r5, #6
	blo _021BC47A
_021BC4B6:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021BC4BC: .word 0x00000C5E
	thumb_func_end ovy256_21bc474

	thumb_func_start ovy256_21bc4c0
ovy256_21bc4c0: ; 0x021BC4C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _021BC600 ; =0x00000C5C
	add r4, r1, #0
	ldrsb r7, [r5, r0]
	add r1, r7, r4
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	bpl _021BC4EC
	add r0, r0, #2
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	str r0, [sp]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r6, r0
	b _021BC506
_021BC4EC:
	add r0, r0, #2
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	str r0, [sp]
	cmp r6, r0
	blt _021BC50A
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r6, r0
_021BC506:
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_021BC50A:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	cmp r0, #0
	bls _021BC5D6
	neg r0, r4
	str r0, [sp, #4]
	mov r0, #0xb1
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0xb1
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	add r0, #0x24
	str r0, [sp, #0x10]
	mov r0, #0xb1
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
_021BC536:
	lsl r0, r6, #1
	add r1, r5, r0
	mov r0, #0xb1
	lsl r0, r0, #4
	ldrsh r0, [r1, r0]
	lsl r1, r7, #1
	add r2, r5, r1
	ldr r1, [sp, #0x14]
	strh r0, [r2, r1]
	ldr r0, [sp, #0x10]
	add r1, r5, r6
	ldrb r2, [r1, r0]
	add r1, r5, r7
	ldr r0, [sp, #0xc]
	cmp r4, #0
	strb r2, [r1, r0]
	bge _021BC55C
	ldr r1, [sp, #4]
	b _021BC55E
_021BC55C:
	add r1, r4, #0
_021BC55E:
	add r0, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r7, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, _021BC604 ; =0x00000C5E
	bpl _021BC588
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	str r0, [sp]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	b _021BC59C
_021BC588:
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	str r0, [sp]
	cmp r7, r0
	blt _021BC59C
	mov r7, #0
_021BC59C:
	cmp r4, #0
	bge _021BC5A4
	ldr r1, [sp, #4]
	b _021BC5A6
_021BC5A4:
	add r1, r4, #0
_021BC5A6:
	add r0, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	bpl _021BC5C2
	ldr r0, [sp]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	b _021BC5CA
_021BC5C2:
	ldr r0, [sp]
	cmp r6, r0
	blt _021BC5CA
	mov r6, #0
_021BC5CA:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #8]
	cmp r1, r0
	blo _021BC536
_021BC5D6:
	ldr r0, _021BC608 ; =0x00000C61
	ldrsb r1, [r5, r0]
	cmp r1, #0
	bge _021BC5E0
	neg r1, r1
_021BC5E0:
	cmp r4, #0
	bge _021BC5E6
	neg r4, r4
_021BC5E6:
	ldr r0, [sp]
	sub r2, r0, #1
	ldr r0, _021BC60C ; =0x021BD9F6
	ldrb r0, [r0, r2]
	blx sub_0208D65C
	add r1, r0, #0
	ldr r0, _021BC610 ; =0x00000C62
	mul r1, r4
	strb r1, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BC600: .word 0x00000C5C
_021BC604: .word 0x00000C5E
_021BC608: .word 0x00000C61
_021BC60C: .word 0x021BD9F6
_021BC610: .word 0x00000C62
	thumb_func_end ovy256_21bc4c0

	thumb_func_start ovy256_21bc614
ovy256_21bc614: ; 0x021BC614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_021BD494
	add r7, r0, #0
	ldr r0, _021BC70C ; =0x00000C62
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _021BC684
	sub r1, r0, #4
	ldrsb r2, [r5, r1]
	mov r1, #0xbc
	mov r4, #0
	mul r1, r2
	add r1, r5, r1
	add r1, #0xc4
	ldrh r1, [r1]
	cmp r1, #0
	bls _021BC678
	ldr r1, _021BC710 ; =0x00000B1C
	sub r6, r0, #4
	str r1, [sp, #4]
	sub r1, #0xc
	str r1, [sp, #4]
	ldr r1, _021BC710 ; =0x00000B1C
	str r1, [sp]
	sub r1, #0xc
	str r1, [sp]
_021BC64E:
	lsl r0, r4, #1
	add r3, r5, r0
	ldr r0, _021BC710 ; =0x00000B1C
	ldr r2, [sp]
	ldrsh r1, [r3, r0]
	ldr r0, [sp, #4]
	strh r1, [r3, r0]
	ldrsh r2, [r3, r2]
	add r0, r5, #0
	add r1, r7, r4
	bl ovy256_21bd4a8
	ldrsb r1, [r5, r6]
	mov r0, #0xbc
	add r4, r4, #1
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	blo _021BC64E
_021BC678:
	add r0, r5, #0
	bl ovy256_21bd524
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BC684:
	sub r1, r0, #4
	ldrsb r2, [r5, r1]
	mov r1, #0xbc
	mov r4, #0
	mul r1, r2
	add r1, r5, r1
	add r1, #0xc4
	ldrh r1, [r1]
	cmp r1, #0
	bls _021BC6F8
	sub r1, r0, #4
	mov r6, #0xb1
	sub r0, r0, #1
	lsl r6, r6, #4
	str r1, [sp, #0xc]
	str r0, [sp, #8]
_021BC6A4:
	lsl r0, r4, #1
	add r2, r5, r0
	ldr r3, [sp, #8]
	ldrsh r0, [r2, r6]
	ldrsb r3, [r5, r3]
	add r1, r2, r6
	add r0, r0, r3
	strh r0, [r2, r6]
	ldrsh r3, [r2, r6]
	cmp r3, #0
	bge _021BC6C6
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r3, r0
	b _021BC6D8
_021BC6C6:
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r3, r0
	blt _021BC6DA
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #0x5a
	lsl r0, r0, #2
	sub r0, r3, r0
_021BC6D8:
	strh r0, [r1]
_021BC6DA:
	ldrsh r2, [r2, r6]
	add r0, r5, #0
	add r1, r7, r4
	bl ovy256_21bd4a8
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	blo _021BC6A4
_021BC6F8:
	add r0, r5, #0
	bl ovy256_21bd524
	ldr r0, _021BC70C ; =0x00000C62
	ldrb r1, [r5, r0]
	sub r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC70C: .word 0x00000C62
_021BC710: .word 0x00000B1C
	thumb_func_end ovy256_21bc614

	thumb_func_start ovy256_21bc714
ovy256_21bc714: ; 0x021BC714
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x8c
	bl sub_02048080
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r6, #1
	mov r1, #1
	mov r2, #0
	mov r3, #0x1e
	str r6, [sp, #8]
	bl BmpWin_CreateDynamic
	ldr r4, _021BC758 ; =0x00000B48
	mov r1, #4
	str r0, [r5, r4]
	mov r0, #0xf
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #5
	mov r2, #7
	mov r3, #0x18
	str r6, [sp, #8]
	bl BmpWin_CreateDynamic
	add r4, #8
	str r0, [r5, r4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021BC758: .word 0x00000B48
	thumb_func_end ovy256_21bc714

	thumb_func_start ovy256_21bc75c
ovy256_21bc75c: ; 0x021BC75C
	push {r3, r4, r5, lr}
	ldr r4, _021BC778 ; =0x00000B48
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_02048210
	add r4, #8
	ldr r0, [r5, r4]
	bl sub_02048210
	bl sub_020480A8
	pop {r3, r4, r5, pc}
	nop
_021BC778: .word 0x00000B48
	thumb_func_end ovy256_21bc75c

	thumb_func_start ovy256_21bc77c
ovy256_21bc77c: ; 0x021BC77C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r1, r0, #0
	ldr r0, _021BC7E8 ; =0x00000B6C
	ldr r0, [r1, r0]
	bl sub_02021A3C
	ldr r0, _021BC7E8 ; =0x00000B6C
	ldr r7, _021BC7E8 ; =0x00000B6C
	str r0, [sp, #0xc]
	sub r0, #0x24
	str r0, [sp, #0xc]
	ldr r0, _021BC7E8 ; =0x00000B6C
	mov r4, #0
	str r0, [sp, #8]
	sub r0, #0x20
	str r0, [sp, #8]
	ldr r0, _021BC7E8 ; =0x00000B6C
	sub r7, #0x20
	str r0, [sp, #4]
	sub r0, #0x24
	str r0, [sp, #4]
_021BC7AA:
	ldr r1, [sp]
	ldr r0, _021BC7E8 ; =0x00000B6C
	ldr r6, [r1, r0]
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	ldrb r0, [r5, r7]
	cmp r0, #0
	beq _021BC7DE
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021BC7DE
	ldr r0, [sp, #0xc]
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	ldr r0, [sp, #8]
	mov r1, #0
	strb r1, [r5, r0]
_021BC7DE:
	add r4, r4, #1
	cmp r4, #2
	blo _021BC7AA
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC7E8: .word 0x00000B6C
	thumb_func_end ovy256_21bc77c

	thumb_func_start ovy256_21bc7ec
ovy256_21bc7ec: ; 0x021BC7EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204826C
	ldr r0, [r4]
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy256_21bc7ec

	thumb_func_start ovy256_21bc804
ovy256_21bc804: ; 0x021BC804
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021BC988 ; =0x00000C5E
	add r6, r4, #0
	ldrsb r1, [r4, r0]
	ldr r5, _021BC98C ; =0x00000B48
	mov r0, #0xbc
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r4, r5]
	add r6, #0xc
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _021BC862
	add r0, r5, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204898C
	str r0, [sp, #0x10]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, r5
	add r5, #0x24
	ldr r1, [r4, r5]
	mov r3, #0
	bl sub_0219A2A4
	ldr r0, [sp, #0x10]
	b _021BC8C8
_021BC862:
	add r0, r5, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204898C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r2, r6, r7
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, #0xba
	add r0, #0x1c
	ldrh r2, [r2]
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x1c
	add r1, #0x20
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [sp, #0x14]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	mov r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, r5
	add r5, #0x24
	ldr r1, [r4, r5]
	bl sub_0219A2A4
	ldr r0, [sp, #0x14]
_021BC8C8:
	bl GFL_StrBufFree
	mov r5, #0xb6
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_0204898C
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r2, r6, r7
	str r0, [sp, #4]
	add r0, r5, #4
	add r2, #0xa8
	ldr r0, [r4, r0]
	ldr r2, [r2]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r2, r6, r7
	str r0, [sp, #4]
	add r0, r5, #4
	add r2, #0xac
	ldr r0, [r4, r0]
	ldr r2, [r2]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r2, r6, r7
	str r0, [sp, #4]
	add r0, r5, #4
	add r2, #0xb0
	ldr r0, [r4, r0]
	ldr r2, [r2]
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	add r1, r5, #0
	add r0, r5, #4
	add r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [sp, #0x18]
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	bl sub_020484E0
	add r2, r0, #0
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	lsl r2, r2, #0x13
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, #0xc
	sub r0, #0x18
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0219A2A4
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	sub r5, #0x18
	add r0, r4, r5
	bl ovy256_21bc7ec
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BC988: .word 0x00000C5E
_021BC98C: .word 0x00000B48
	thumb_func_end ovy256_21bc804

	thumb_func_start ovy256_21bc990
ovy256_21bc990: ; 0x021BC990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r7, _021BCAC0 ; =0x00000C5F
	add r5, r0, #0
	ldrb r0, [r5, r7]
	cmp r0, #1
	bne _021BC9A0
	b _021BCABA
_021BC9A0:
	sub r0, r7, #7
	ldr r0, [r5, r0]
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r7, #0
	sub r0, #0xff
	ldr r0, [r5, r0]
	mov r1, #3
	bl sub_0204898C
	ldr r4, _021BCAC4 ; =0x00000B58
	mov r2, #0
	ldr r1, [r5, r4]
	str r0, [sp, #0x14]
	bl sub_02022888
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x28
	sub r1, r1, r0
	str r0, [sp, #8]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r6, r0, #0x18
	ldr r0, [r5, r4]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #8
	str r0, [sp, #4]
	sub r0, r7, #7
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #4
	bl sub_02021D28
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_0204898C
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r2, r7, #1
	add r0, r4, #0
	ldrsb r2, [r5, r2]
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r2, #1
	mov r3, #2
	bl StringSetNumber
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x18]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, r4]
	mov r2, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	bl sub_02022888
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	sub r1, r6, r1
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #8
	str r0, [sp, #4]
	sub r0, r7, #7
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	ldr r3, [sp, #0xc]
	asr r1, r1, #0x10
	mov r2, #4
	bl sub_02021D28
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc
	ldrb r2, [r5, r7]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x18]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, r4]
	ldr r1, [sp, #8]
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #8
	add r3, r4, #0
	str r0, [sp, #4]
	sub r0, r7, #7
	add r1, r6, r1
	add r3, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	asr r1, r1, #0x10
	mov r2, #4
	bl sub_02021D28
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r4, #0xfc
	ldr r0, [r5, r4]
	bl sub_0202B0F4
_021BCABA:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021BCAC0: .word 0x00000C5F
_021BCAC4: .word 0x00000B58
	thumb_func_end ovy256_21bc990

	thumb_func_start ovy256_21bcac8
ovy256_21bcac8: ; 0x021BCAC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r6, _021BCB94 ; =0x00000C5E
	add r5, r0, #0
	ldrsb r1, [r5, r6]
	add r2, r5, #0
	mov r0, #0xbc
	add r2, #0xc
	mul r0, r1
	add r2, r2, r0
	sub r0, r6, #2
	ldrsb r1, [r5, r0]
	mov r0, #0x1c
	mov r4, #0xb5
	mul r0, r1
	lsl r4, r4, #4
	add r7, r2, r0
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_0204898C
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x14
	ldrh r2, [r7, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020243D0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x14
	add r1, #0x18
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x10]
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, r4
	mov r2, #0
	mov r3, #0
	bl sub_0219A2A4
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	ldrb r0, [r7, #0x13]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _021BCB98
	ldrh r0, [r7, #0x10]
	cmp r0, #0x20
	beq _021BCBD8
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #6
	bl sub_0204898C
	str r0, [sp, #0x14]
	str r0, [sp]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r6, #0x22
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, r4
	add r4, #0x1c
	ldr r1, [r5, r4]
	mov r2, #0x40
	mov r3, #0
	bl sub_0219A2A4
	ldr r0, [sp, #0x14]
	b _021BCBD4
	.align 2, 0
_021BCB94: .word 0x00000C5E
_021BCB98:
	cmp r0, #1
	bne _021BCBD8
	ldrh r0, [r7, #0x10]
	cmp r0, #0x1d
	beq _021BCBD8
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #7
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #0
	str r6, [sp]
	add r0, #8
	ldr r0, [r5, r0]
	mov r2, #0x40
	str r0, [sp, #4]
	mov r0, #0x53
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, r4
	add r4, #0x1c
	ldr r1, [r5, r4]
	mov r3, #0
	bl sub_0219A2A4
	add r0, r6, #0
_021BCBD4:
	bl GFL_StrBufFree
_021BCBD8:
	mov r0, #0xb6
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xb
	bl sub_0204898C
	mov r1, #0xb6
	lsl r1, r1, #4
	sub r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_02022888
	str r0, [sp, #0x18]
	mov r0, #0xb6
	lsl r0, r0, #4
	mov r1, #0xb6
	lsl r1, r1, #4
	str r6, [sp]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0xb6
	str r4, [sp, #0xc]
	lsl r0, r0, #4
	sub r0, #0x10
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x50
	mov r3, #4
	bl sub_0219A2A4
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #0xb6
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_0204898C
	add r6, r0, #0
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, r0, #4
	ldrb r2, [r7, #0x12]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	mov r0, #0xb6
	mov r1, #0xb6
	lsl r0, r0, #4
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0xb6
	str r0, [sp]
	mov r0, #0xb6
	lsl r0, r0, #4
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0xb6
	lsl r1, r1, #4
	lsl r0, r0, #4
	add r2, #0x50
	sub r0, #0x10
	str r2, [sp, #0x18]
	lsl r2, r2, #0x10
	str r4, [sp, #0xc]
	add r1, #0xc
	ldr r1, [r5, r1]
	add r0, r5, r0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_0219A2A4
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #0xb6
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r7]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #0xb6
	mov r1, #0xb6
	lsl r0, r0, #4
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0xb6
	str r0, [sp]
	mov r0, #0xb6
	lsl r0, r0, #4
	sub r0, #8
	ldr r0, [r5, r0]
	lsl r1, r1, #4
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0xb6
	lsl r0, r0, #4
	sub r0, #0x10
	str r4, [sp, #0xc]
	add r1, #0xc
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r4, #0
	mov r3, #0x18
	bl sub_0219A2A4
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #0xb6
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xa
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r7, #4]
	add r1, r4, #0
	add r3, r4, #0
	bl sub_0202437C
	mov r0, #0xb6
	mov r1, #0xb6
	lsl r0, r0, #4
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, #8
	ldr r0, [r5, r0]
	mov r1, #0xb6
	str r0, [sp]
	mov r0, #0xb6
	lsl r0, r0, #4
	sub r0, #8
	ldr r0, [r5, r0]
	lsl r1, r1, #4
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0xb6
	lsl r0, r0, #4
	sub r0, #0x10
	str r4, [sp, #0xc]
	add r1, #0xc
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r4, #0
	mov r3, #0x30
	bl sub_0219A2A4
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #0xb6
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	sub r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x34]
	mov r0, #0xb6
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x30]
	mov r0, #0xb6
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0xb6
	lsl r0, r0, #4
	str r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	mov r0, #0xb6
	lsl r0, r0, #4
	str r0, [sp, #0x24]
	sub r0, #8
	str r0, [sp, #0x24]
	mov r0, #0xb6
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
_021BCDDA:
	mov r0, #0xb6
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xc
	bl sub_0204898C
	lsl r2, r4, #1
	add r6, r0, #0
	ldr r0, [sp, #0x34]
	add r2, r7, r2
	ldrh r2, [r2, #0x14]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020244A4
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x28]
	mov r2, #1
	ldr r0, [r5, r0]
	add r3, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	and r3, r2
	ldr r0, [r5, r0]
	mov r2, #0x60
	mul r2, r3
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	lsr r3, r4, #1
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r3, #0x58
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, r0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add r0, r6, #0
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #4
	blo _021BCDDA
	mov r0, #0xb5
	lsl r0, r0, #4
	add r0, r5, r0
	bl ovy256_21bc7ec
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy256_21bcac8

	thumb_func_start ovy256_21bce5c
ovy256_21bce5c: ; 0x021BCE5C
	push {r3, r4, r5, lr}
	mov r4, #0xb5
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_020484B4
	ldr r0, [r5, r4]
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	pop {r3, r4, r5, pc}
	thumb_func_end ovy256_21bce5c

	thumb_func_start ovy256_21bce88
ovy256_21bce88: ; 0x021BCE88
	push {r4, lr}
	add r4, r0, #0
	bl ovy256_21bcfb4
	add r0, r4, #0
	bl ovy256_21bcfe4
	add r0, r4, #0
	bl ovy256_21bd174
	add r0, r4, #0
	bl ovy256_21bd6ac
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, pc}
	thumb_func_end ovy256_21bce88

	thumb_func_start ovy256_21bceb4
ovy256_21bceb4: ; 0x021BCEB4
	push {r4, lr}
	add r4, r0, #0
	bl ovy256_21bd724
	add r0, r4, #0
	bl ovy256_21bd208
	add r0, r4, #0
	bl ovy256_21bd0f8
	bl sub_0204B758
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy256_21bceb4

	thumb_func_start ovy256_21bced0
ovy256_21bced0: ; 0x021BCED0
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021BCF00 ; =0x00000B74
	add r6, r0, #0
	mov r4, #0
_021BCED8:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021BCEF4
	bl sub_0204C534
	cmp r0, #1
	beq _021BCEF4
	mov r1, #1
	ldr r0, [r5, r7]
	lsl r1, r1, #0xc
	bl sub_0204C4E0
_021BCEF4:
	add r4, r4, #1
	cmp r4, #0x10
	blo _021BCED8
	bl sub_0204B794
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BCF00: .word 0x00000B74
	thumb_func_end ovy256_21bced0

	thumb_func_start ovy256_21bcf04
ovy256_21bcf04: ; 0x021BCF04
	push {r3, lr}
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021BCF1C ; =0x00000B74
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BCF18
	add r1, r2, #0
	bl sub_0204C124
_021BCF18:
	pop {r3, pc}
	nop
_021BCF1C: .word 0x00000B74
	thumb_func_end ovy256_21bcf04

	thumb_func_start ovy256_21bcf20
ovy256_21bcf20: ; 0x021BCF20
	push {r4, r5, r6, lr}
	add r6, r2, #0
	ldr r2, _021BCF48 ; =0x00000B74
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
_021BCF48: .word 0x00000B74
	thumb_func_end ovy256_21bcf20

	thumb_func_start sub_021BCF4C
sub_021BCF4C: ; 0x021BCF4C
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021BCF58 ; =0x00000B74
	ldr r3, _021BCF5C ; =sub_0204C560
	ldr r0, [r1, r0]
	bx r3
	.align 2, 0
_021BCF58: .word 0x00000B74
_021BCF5C: .word sub_0204C560
	thumb_func_end sub_021BCF4C

	thumb_func_start ovy256_21bcf60
ovy256_21bcf60: ; 0x021BCF60
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r2, [r4]
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021BCF80 ; =0x00000B74
	strh r3, [r4, #2]
	ldr r0, [r1, r0]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	add sp, #4
	pop {r3, r4, pc}
	nop
_021BCF80: .word 0x00000B74
	thumb_func_end ovy256_21bcf60

	thumb_func_start ovy256_21bcf84
ovy256_21bcf84: ; 0x021BCF84
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _021BCFB0 ; =0x00000B74
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
_021BCFB0: .word 0x00000B74
	thumb_func_end ovy256_21bcf84

	thumb_func_start ovy256_21bcfb4
ovy256_21bcfb4: ; 0x021BCFB4
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _021BCFE0 ; =0x021BDA28
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
	bl sub_021BB7C4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x8c
	bl sub_0204B6A8
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_021BCFE0: .word 0x021BDA28
	thumb_func_end ovy256_21bcfb4

	thumb_func_start ovy256_21bcfe4
ovy256_21bcfe4: ; 0x021BCFE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r3, #0
	ldr r0, _021BD084 ; =0x00000BB4
	sub r2, r3, #1
_021BCFEE:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #0xd
	blo _021BCFEE
	mov r3, #0
	ldr r0, _021BD088 ; =0x00000BE8
	sub r2, r3, #1
_021BD000:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #0xd
	blo _021BD000
	mov r3, #0
	ldr r0, _021BD08C ; =0x00000C1C
	sub r2, r3, #1
_021BD012:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #0xd
	blo _021BD012
	bl sub_0202D7E0
	ldr r1, _021BD090 ; =0x0000808C
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_0202D814
	add r1, r0, #0
	mov r7, #0x8c
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl sub_0204B81C
	ldr r4, _021BD094 ; =0x00000BE4
	str r0, [r5, r4]
	bl sub_0202D810
	mov r3, #0x8c
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	add r3, #0xf4
	str r7, [sp]
	bl sub_0204BBA0
	add r1, r4, #0
	add r1, #0x34
	str r0, [r5, r1]
	mov r0, #2
	bl sub_0202D818
	add r7, r0, #0
	mov r0, #2
	bl sub_0202D81C
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0x8c
	bl sub_0204BDE0
	add r4, #0x68
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD084: .word 0x00000BB4
_021BD088: .word 0x00000BE8
_021BD08C: .word 0x00000C1C
_021BD090: .word 0x0000808C
_021BD094: .word 0x00000BE4
	thumb_func_end ovy256_21bcfe4

	thumb_func_start ovy256_21bd098
ovy256_21bd098: ; 0x021BD098
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	ldr r1, _021BD0B4 ; =0x00000BB4
	mov r6, #0
	add r4, r0, r1
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _021BD0B0
	bl sub_0204B98C
	str r6, [r4, r5]
_021BD0B0:
	pop {r4, r5, r6, pc}
	nop
_021BD0B4: .word 0x00000BB4
	thumb_func_end ovy256_21bd098

	thumb_func_start ovy256_21bd0b8
ovy256_21bd0b8: ; 0x021BD0B8
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	ldr r1, _021BD0D4 ; =0x00000BE8
	mov r6, #0
	add r4, r0, r1
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _021BD0D0
	bl sub_0204BCD0
	str r6, [r4, r5]
_021BD0D0:
	pop {r4, r5, r6, pc}
	nop
_021BD0D4: .word 0x00000BE8
	thumb_func_end ovy256_21bd0b8

	thumb_func_start ovy256_21bd0d8
ovy256_21bd0d8: ; 0x021BD0D8
	push {r4, r5, r6, lr}
	lsl r5, r1, #2
	ldr r1, _021BD0F4 ; =0x00000C1C
	mov r6, #0
	add r4, r0, r1
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _021BD0F0
	bl sub_0204BE64
	str r6, [r4, r5]
_021BD0F0:
	pop {r4, r5, r6, pc}
	nop
_021BD0F4: .word 0x00000C1C
	thumb_func_end ovy256_21bd0d8

	thumb_func_start ovy256_21bd0f8
ovy256_21bd0f8: ; 0x021BD0F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021BD0FE:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy256_21bd098
	add r5, r5, #1
	cmp r5, #0xd
	blo _021BD0FE
	mov r5, #0
_021BD10E:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy256_21bd0b8
	add r5, r5, #1
	cmp r5, #0xd
	blo _021BD10E
	mov r5, #0
_021BD11E:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy256_21bd0d8
	add r5, r5, #1
	cmp r5, #0xd
	blo _021BD11E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy256_21bd0f8

	thumb_func_start ovy256_21bd130
ovy256_21bd130: ; 0x021BD130
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #8]
	mov r3, #0xb7
	lsl r1, r1, #2
	ldrh r0, [r4, #0x16]
	str r4, [sp]
	lsl r3, r3, #4
	str r0, [sp, #4]
	mov r0, #0x8c
	add r2, r5, r1
	add r1, r3, #0
	str r0, [sp, #8]
	add r1, #0x44
	ldr r1, [r2, r1]
	ldr r2, [r4, #0xc]
	ldr r4, [r4, #0x10]
	lsl r2, r2, #2
	add r6, r5, r2
	add r2, r3, #0
	lsl r4, r4, #2
	ldr r0, [r5, r3]
	add r2, #0x78
	add r4, r5, r4
	add r3, #0xac
	ldr r2, [r6, r2]
	ldr r3, [r4, r3]
	bl sub_0204C040
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy256_21bd130

	thumb_func_start ovy256_21bd174
ovy256_21bd174: ; 0x021BD174
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x1f
	mov r1, #0
	mov r2, #0x8c
	mov r4, #0
	bl sub_0204BF1C
	mov r1, #0xb7
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r2, r4, #0
	add r0, r1, #4
_021BD18E:
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r2, [r1, r0]
	cmp r4, #0x10
	blo _021BD18E
	ldr r6, _021BD1E0 ; =0x021BDA44
	ldr r7, _021BD1E4 ; =0x00000B74
	mov r4, #0xc
_021BD1A0:
	mov r1, #0x18
	add r2, r4, #0
	mul r2, r1
	mov r1, #0x12
	lsl r1, r1, #4
	sub r1, r2, r1
	add r0, r5, #0
	add r1, r6, r1
	bl ovy256_21bd130
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #0xf
	bls _021BD1A0
	ldr r0, _021BD1E8 ; =0x00000C5F
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021BD1DC
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ovy256_21bcf04
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy256_21bcf04
_021BD1DC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD1E0: .word 0x021BDA44
_021BD1E4: .word 0x00000B74
_021BD1E8: .word 0x00000C5F
	thumb_func_end ovy256_21bd174

	thumb_func_start ovy256_21bd1ec
ovy256_21bd1ec: ; 0x021BD1EC
	push {r3, r4, r5, lr}
	lsl r5, r1, #2
	ldr r1, _021BD204 ; =0x00000B74
	add r4, r0, r1
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BD202
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021BD202:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD204: .word 0x00000B74
	thumb_func_end ovy256_21bd1ec

	thumb_func_start ovy256_21bd208
ovy256_21bd208: ; 0x021BD208
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_021BD20E:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy256_21bd1ec
	add r5, r5, #1
	cmp r5, #0x10
	blo _021BD20E
	mov r0, #0xb7
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	thumb_func_end ovy256_21bd208

	thumb_func_start ovy256_21bd228
ovy256_21bd228: ; 0x021BD228
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_021BD232:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy256_21bcf04
	add r6, r6, #1
	cmp r6, #0xb
	bls _021BD232
	ldr r6, _021BD484 ; =0x00000C5E
	add r2, r5, #0
	ldrsb r1, [r5, r6]
	mov r0, #0xbc
	add r2, #0xc
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x20]
	ldr r0, _021BD488 ; =0x0000808C
	bl sub_02033E24
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xb8
	ldrh r0, [r0]
	cmp r0, #0
	bhi _021BD266
	b _021BD3CC
_021BD266:
	add r0, r6, #0
	sub r0, #0xea
	add r0, r5, r0
	str r0, [sp, #0x28]
	add r0, r6, #0
	str r0, [sp, #0x38]
	sub r0, #0xaa
	str r0, [sp, #0x38]
	add r0, r6, #0
	str r0, [sp, #0x34]
	sub r0, #0x76
	str r0, [sp, #0x34]
	add r0, r6, #0
	str r0, [sp, #0x30]
	sub r0, #0x42
	str r0, [sp, #0x30]
	add r0, r6, #2
	str r0, [sp, #0x2c]
_021BD28A:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021BD48C ; =0x021BDAA4
	add r2, sp, #0x3c
	add r3, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x1c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0x20]
	add r6, r0, r1
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #8]
	bl sub_0201CDD8
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021BD2D6
	ldr r0, [sp, #0x44]
	add r0, r0, #6
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	add r0, r0, #6
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	add r0, r0, #6
	str r0, [sp, #0x4c]
	add r0, r4, #6
	lsl r0, r0, #0x10
	b _021BD2D8
_021BD2D6:
	lsl r0, r4, #0x10
_021BD2D8:
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	lsl r1, r0, #2
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x8c
	str r0, [sp, #0x14]
	ldrb r3, [r6, #0x13]
	ldrh r1, [r6, #0x10]
	ldr r0, [sp, #0x24]
	lsl r2, r3, #0x1a
	lsl r3, r3, #0x18
	lsr r2, r2, #0x1a
	lsr r3, r3, #0x1e
	bl sub_02033E78
	ldr r1, [sp, #0x44]
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, [sp, #0x38]
	str r0, [r2, r1]
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x8c
	str r0, [sp, #0x14]
	ldrb r3, [r6, #0x13]
	ldrh r1, [r6, #0x10]
	ldr r0, [sp, #0x24]
	lsl r2, r3, #0x1a
	lsl r3, r3, #0x18
	lsr r2, r2, #0x1a
	lsr r3, r3, #0x1e
	bl sub_02033E34
	ldr r1, [sp, #0x48]
	add r3, r7, #0
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, [sp, #0x34]
	str r0, [r2, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	ldrb r2, [r6, #0x13]
	ldrh r0, [r6, #0x10]
	lsl r1, r2, #0x1a
	lsl r2, r2, #0x18
	lsr r1, r1, #0x1a
	lsr r2, r2, #0x1e
	bl sub_02033EF4
	ldr r1, [sp, #0x4c]
	lsl r1, r1, #2
	add r2, r5, r1
	ldr r1, [sp, #0x30]
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, sp, #0x3c
	bl ovy256_21bd130
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [r1]
	add r2, #0xb8
	ldrh r2, [r2]
	mov r3, #0x18
	lsl r6, r4, #2
	mul r3, r2
	ldr r2, _021BD490 ; =0x021BDB34
	ldr r1, [sp, #0x18]
	add r2, r2, r3
	add r2, r6, r2
	sub r2, #0x18
	ldrh r2, [r2]
	add r0, r5, #0
	bl ovy256_21bd4a8
	ldr r0, [sp, #0x20]
	add r0, #0xb8
	ldrh r1, [r0]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BD490 ; =0x021BDB34
	add r0, r0, r2
	add r0, r6, r0
	sub r0, #0x18
	ldrh r2, [r0]
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0xb1
	lsl r0, r0, #4
	strh r2, [r1, r0]
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r0, #0xb8
	ldrh r0, [r0]
	cmp r4, r0
	bhs _021BD3CC
	b _021BD28A
_021BD3CC:
	mov r0, #0xb3
	lsl r0, r0, #4
	mov r1, #2
	ldr r0, [r5, r0]
	mov r2, #0
	lsl r3, r1, #8
	mov r4, #0
	bl sub_02026F7C
	ldr r0, [sp, #0x24]
	bl GFL_ArcToolFree
	mov r0, #0xc6
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021BD42E
_021BD3EE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd1ec
	add r4, r4, #1
	cmp r4, #5
	bls _021BD3EE
	mov r4, #0
_021BD3FE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd098
	add r4, r4, #1
	cmp r4, #5
	bls _021BD3FE
	mov r4, #0
_021BD40E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd0b8
	add r4, r4, #1
	cmp r4, #5
	bls _021BD40E
	mov r4, #0
_021BD41E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd0d8
	add r4, r4, #1
	cmp r4, #5
	bls _021BD41E
	b _021BD46E
_021BD42E:
	mov r4, #6
_021BD430:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd1ec
	add r4, r4, #1
	cmp r4, #0xb
	bls _021BD430
	mov r4, #6
_021BD440:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd098
	add r4, r4, #1
	cmp r4, #0xb
	bls _021BD440
	mov r4, #6
_021BD450:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd0b8
	add r4, r4, #1
	cmp r4, #0xb
	bls _021BD450
	mov r4, #6
_021BD460:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy256_21bd0d8
	add r4, r4, #1
	cmp r4, #0xb
	bls _021BD460
_021BD46E:
	mov r1, #0xc6
	lsl r1, r1, #4
	ldrb r2, [r5, r1]
	mov r0, #1
	eor r0, r2
	strb r0, [r5, r1]
	add r0, r5, #0
	bl ovy256_21bd524
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD484: .word 0x00000C5E
_021BD488: .word 0x0000808C
_021BD48C: .word 0x021BDAA4
_021BD490: .word 0x021BDB34
	thumb_func_end ovy256_21bd228

	thumb_func_start sub_021BD494
sub_021BD494: ; 0x021BD494
	mov r1, #0xc6
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021BD4A2
	mov r0, #6
	bx lr
_021BD4A2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD494

	thumb_func_start ovy256_21bd4a8
ovy256_21bd4a8: ; 0x021BD4A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	add r7, r1, #0
	bl sub_02044388
	mov r2, #0x19
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021BD51C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02044360
	mov r5, #0xb
	lsl r5, r5, #0xe
	asr r1, r0, #0x1f
	add r2, r5, #0
	mov r3, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021BD51C ; =0x00000000
	adc r1, r2
	mov r2, #2
	lsr r3, r0, #0xc
	lsl r1, r1, #0x14
	lsl r2, r2, #0x12
	orr r3, r1
	add r2, r4, r2
	ldr r4, _021BD520 ; =0x7FFFF000
	lsl r5, r5, #1
	add r3, r3, r5
	and r2, r4
	and r3, r4
	lsl r2, r2, #4
	lsl r3, r3, #4
	add r0, r6, #0
	add r1, r7, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ovy256_21bcf60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BD51C: .word 0x00000000
_021BD520: .word 0x7FFFF000
	thumb_func_end ovy256_21bd4a8

	thumb_func_start ovy256_21bd524
ovy256_21bd524: ; 0x021BD524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_021BD494
	mov r3, #0
	add r2, sp, #8
_021BD532:
	add r1, r0, r3
	strb r1, [r2, r3]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _021BD532
	ldr r0, _021BD608 ; =0x00000C5E
	mov r6, #0
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	sub r1, r0, #1
	cmp r1, #0
	ble _021BD5CC
_021BD556:
	add r7, sp, #8
	ldrb r1, [r7, r6]
	add r2, sp, #4
	add r0, r5, #0
	add r2, #2
	add r3, sp, #4
	bl ovy256_21bcf84
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021BD608 ; =0x00000C5E
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	bge _021BD5C0
_021BD57E:
	ldrb r1, [r7, r4]
	add r2, sp, #0
	add r0, r5, #0
	add r2, #2
	add r3, sp, #0
	bl ovy256_21bcf84
	add r1, sp, #0
	mov r0, #4
	ldrsh r1, [r1, r0]
	add r2, sp, #0
	mov r0, #0
	ldrsh r0, [r2, r0]
	cmp r1, r0
	bge _021BD5A8
	ldrb r2, [r7, r6]
	ldrb r1, [r7, r4]
	strb r1, [r7, r6]
	add r1, sp, #0
	strb r2, [r7, r4]
	strh r0, [r1, #4]
_021BD5A8:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021BD608 ; =0x00000C5E
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	blt _021BD57E
_021BD5C0:
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	sub r1, r0, #1
	cmp r6, r1
	blt _021BD556
_021BD5CC:
	mov r4, #0
	cmp r0, #0
	ble _021BD602
	ldr r6, _021BD608 ; =0x00000C5E
	add r7, sp, #8
	sub r6, #0xea
_021BD5D8:
	ldrb r0, [r7, r4]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021BD5EA
	add r1, r4, #0
	bl sub_0204C438
_021BD5EA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021BD608 ; =0x00000C5E
	ldrsb r1, [r5, r0]
	mov r0, #0xbc
	mul r0, r1
	add r0, r5, r0
	add r0, #0xc4
	ldrh r0, [r0]
	cmp r4, r0
	blt _021BD5D8
_021BD602:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD608: .word 0x00000C5E
	thumb_func_end ovy256_21bd524

	thumb_func_start ovy256_21bd60c
ovy256_21bd60c: ; 0x021BD60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021BD6A0 ; =0x00000C5C
	add r2, r0, #0
	add r3, r4, #2
	ldrsb r5, [r2, r3]
	mov r3, #0xbc
	str r1, [sp]
	mul r3, r5
	add r3, r2, r3
	add r3, #0xc4
	ldrh r6, [r3]
	mov r1, #0
	ldrsb r0, [r2, r4]
	cmp r6, #0
	bls _021BD69C
	ldr r7, _021BD6A4 ; =0x00000B34
	add r3, r7, #6
	mov lr, r3
	str r3, [sp, #4]
	add r3, r4, #2
	str r3, [sp, #8]
	mov ip, r3
_021BD63A:
	ldr r3, [sp]
	cmp r3, #1
	bne _021BD678
	add r4, r6, #0
	mov r3, #0x18
	mul r4, r3
	ldr r3, _021BD6A8 ; =0x021BDB34
	lsl r6, r1, #2
	add r3, r3, r4
	add r3, r6, r3
	sub r3, #0x16
	add r5, r2, r0
	ldrh r3, [r3]
	add r0, r0, #1
	lsl r0, r0, #0x10
	strb r3, [r5, r7]
	ldrb r4, [r5, r7]
	ldr r3, [sp, #4]
	lsr r0, r0, #0x10
	strb r4, [r5, r3]
	ldr r3, [sp, #8]
	ldrsb r4, [r2, r3]
	mov r3, #0xbc
	mul r3, r4
	add r3, r2, r3
	add r3, #0xc4
	ldrh r3, [r3]
	cmp r0, r3
	blo _021BD684
	mov r0, #0
	b _021BD684
_021BD678:
	add r5, r2, r1
	mov r3, #0
	strb r3, [r5, r7]
	mov r4, #0
	mov r3, lr
	strb r4, [r5, r3]
_021BD684:
	mov r3, ip
	ldrsb r4, [r2, r3]
	mov r3, #0xbc
	add r1, r1, #1
	mul r3, r4
	add r3, r2, r3
	add r3, #0xc4
	ldrh r6, [r3]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, r6
	blo _021BD63A
_021BD69C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD6A0: .word 0x00000C5C
_021BD6A4: .word 0x00000B34
_021BD6A8: .word 0x021BDB34
	thumb_func_end ovy256_21bd60c

	thumb_func_start ovy256_21bd6ac
ovy256_21bd6ac: ; 0x021BD6AC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r4, #0xb7
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	mov r0, #0x8c
	bl sub_0202AE5C
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r5, r1]
	mov r0, #5
	mov r1, #3
	mov r2, #0x20
	mov r3, #0x8c
	bl sub_02046E28
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r5, r1]
	str r0, [sp]
	mov r0, #0x28
	add r1, sp, #0
	strh r0, [r1, #4]
	mov r0, #0xa8
	strh r0, [r1, #6]
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r5, r0]
	mov r6, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	strb r6, [r1, #0x10]
	ldr r0, _021BD720 ; =0x0000FFFF
	strb r6, [r1, #0x11]
	strh r0, [r1, #0x12]
	add r0, r4, #0
	str r6, [sp, #0x14]
	add r0, #0xe0
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_0202AEC4
	add r1, r4, #0
	add r1, #0xe4
	add r4, #0xef
	str r0, [r5, r1]
	ldrb r1, [r5, r4]
	cmp r1, #1
	bne _021BD71A
	add r1, r6, #0
	bl sub_0202B098
_021BD71A:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021BD720: .word 0x0000FFFF
	thumb_func_end ovy256_21bd6ac

	thumb_func_start ovy256_21bd724
ovy256_21bd724: ; 0x021BD724
	push {r3, r4, r5, lr}
	ldr r5, _021BD744 ; =0x00000C54
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0202B030
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_02046EDC
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0202AEAC
	pop {r3, r4, r5, pc}
	nop
_021BD744: .word 0x00000C54
	thumb_func_end ovy256_21bd724

	thumb_func_start ovy256_21bd748
ovy256_21bd748: ; 0x021BD748
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BD7B0 ; =0x021BDBC4
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021BD7AC
	add r0, r4, #0
	bl ovy256_21bd800
	cmp r0, #0xff
	bne _021BD7AC
	bl sub_0203DF44
	mov r4, #0x22
	lsl r4, r4, #4
	tst r0, r4
	beq _021BD774
	mov r0, #0
	pop {r4, pc}
_021BD774:
	bl sub_0203DF44
	lsr r1, r4, #1
	tst r0, r1
	beq _021BD782
	mov r0, #1
	pop {r4, pc}
_021BD782:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021BD790
	mov r0, #4
	pop {r4, pc}
_021BD790:
	bl GCTX_HIDGetPressedKeys
	mov r4, #2
	tst r0, r4
	beq _021BD79E
	mov r0, #3
	pop {r4, pc}
_021BD79E:
	bl GCTX_HIDGetPressedKeys
	lsl r1, r4, #9
	tst r0, r1
	bne _021BD7AA
	mov r4, #0xff
_021BD7AA:
	add r0, r4, #0
_021BD7AC:
	pop {r4, pc}
	nop
_021BD7B0: .word 0x021BDBC4
	thumb_func_end ovy256_21bd748

	thumb_func_start ovy256_21bd7b4
ovy256_21bd7b4: ; 0x021BD7B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021BD7FC ; =0x021BDBC4
	bl sub_0203DA0C
	cmp r0, #3
	beq _021BD7FA
	add r0, r4, #0
	bl ovy256_21bd800
	cmp r0, #0xff
	bne _021BD7FA
	bl sub_0203DF44
	mov r4, #0x22
	lsl r4, r4, #4
	tst r0, r4
	beq _021BD7DC
	mov r0, #0
	pop {r4, pc}
_021BD7DC:
	bl sub_0203DF44
	lsr r1, r4, #1
	tst r0, r1
	beq _021BD7EA
	mov r0, #1
	pop {r4, pc}
_021BD7EA:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021BD7F8
	mov r0, #3
	pop {r4, pc}
_021BD7F8:
	mov r0, #0xff
_021BD7FA:
	pop {r4, pc}
	.align 2, 0
_021BD7FC: .word 0x021BDBC4
	thumb_func_end ovy256_21bd7b4

	thumb_func_start ovy256_21bd800
ovy256_21bd800: ; 0x021BD800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	add r1, sp, #0x18
	bl sub_0203DAC8
	cmp r0, #0
	bne _021BD818
	add sp, #0x20
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_021BD818:
	ldr r0, [sp]
	bl sub_021BD494
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	mov r7, #0
	add r0, r4, #6
	mvn r7, r7
	str r0, [sp, #4]
	cmp r4, r0
	bhs _021BD8C4
	str r4, [sp, #8]
	str r7, [sp, #0x10]
_021BD832:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r1, r0, r1
	ldr r0, _021BD8E0 ; =0x00000B74
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BD8BC
	add r2, sp, #0x14
	ldr r0, [sp]
	add r1, r4, #0
	add r2, #2
	add r3, sp, #0x14
	bl ovy256_21bcf84
	add r1, sp, #0x14
	mov r0, #2
	ldrsh r2, [r1, r0]
	add r3, sp, #0x14
	add r0, r2, #0
	sub r0, #0x30
	lsl r0, r0, #0x10
	add r2, #0x30
	asr r1, r0, #0x10
	lsl r0, r2, #0x10
	asr r2, r0, #0x10
	mov r0, #0
	ldrsh r6, [r3, r0]
	add r0, r6, #0
	sub r0, #0x30
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	add r0, r6, #0
	add r0, #0x30
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	cmp r1, #0
	bge _021BD87E
	mov r1, #0
_021BD87E:
	cmp r2, #0xff
	ble _021BD884
	mov r2, #0xff
_021BD884:
	cmp r3, #0
	bge _021BD88A
	mov r3, #0
_021BD88A:
	cmp r5, #0xff
	ble _021BD890
	mov r5, #0xff
_021BD890:
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blo _021BD8BC
	cmp r0, r2
	bhs _021BD8BC
	ldr r0, [sp, #0x18]
	cmp r0, r3
	blo _021BD8BC
	cmp r0, r5
	bhs _021BD8BC
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bne _021BD8AC
	b _021BD8B2
_021BD8AC:
	ldr r0, [sp, #0xc]
	cmp r6, r0
	ble _021BD8BC
_021BD8B2:
	ldr r0, [sp, #8]
	str r6, [sp, #0xc]
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_021BD8BC:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021BD832
_021BD8C4:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021BD8DA
	add r0, r7, #0
	mov r1, #6
	blx sub_0208D65C
	add sp, #0x20
	add r0, r1, #5
	pop {r3, r4, r5, r6, r7, pc}
_021BD8DA:
	mov r0, #0xff
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BD8E0: .word 0x00000B74
	thumb_func_end ovy256_21bd800
_021BD8E4:
	.byte 0x01, 0xB7, 0x1B, 0x02, 0x35, 0xB7, 0x1B, 0x02, 0x49, 0xB7, 0x1B, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1B, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x1D, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x05, 0x05, 0x05, 0x05, 0x04, 0x04, 0x00, 0xB4, 0x78, 0x5A, 0x48, 0x3C, 0x45, 0xBD, 0x1B, 0x02
	.byte 0xD9, 0xBD, 0x1B, 0x02, 0x49, 0xBE, 0x1B, 0x02, 0x75, 0xBE, 0x1B, 0x02, 0x95, 0xBE, 0x1B, 0x02
	.byte 0x89, 0xBF, 0x1B, 0x02, 0xAD, 0xBF, 0x1B, 0x02, 0xB9, 0xC0, 0x1B, 0x02, 0x2D, 0xC2, 0x1B, 0x02
	.byte 0x95, 0xC2, 0x1B, 0x02, 0x39, 0xC3, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x0D, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x08, 0x00, 0xA8, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x00, 0xA8, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x84, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x7C, 0x00
	.byte 0x00, 0x00, 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x2C, 0x00
	.byte 0x00, 0x00, 0x03, 0x02, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x34, 0x00, 0x00, 0x00, 0x04, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x34, 0x00
	.byte 0x00, 0x00, 0x05, 0x02, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0x0E, 0x01, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0xD2, 0x00, 0x0A, 0x00, 0x4A, 0x01, 0x0A, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0xB4, 0x00, 0x07, 0x00, 0x0E, 0x01, 0x0C, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x08, 0x00, 0xEA, 0x00, 0x0A, 0x00
	.byte 0x32, 0x01, 0x0A, 0x00, 0x12, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0x96, 0x00, 0x08, 0x00, 0xD2, 0x00, 0x0A, 0x00, 0x0E, 0x01, 0x0C, 0x00, 0x4A, 0x01, 0x0A, 0x00
	.byte 0x1E, 0x00, 0x08, 0x00, 0xA8, 0xBF, 0x08, 0x1F, 0xA8, 0xBF, 0x58, 0x6F, 0xA8, 0xBF, 0xC8, 0xDF
	.byte 0xA8, 0xBF, 0xE8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021BD8E4
