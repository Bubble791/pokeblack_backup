	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02074694
sub_02074694: ; 0x02074694
	cmp r0, #0
	blt _020746A6
	ldr r2, _020746BC ; =0x7FFFF000
	add r3, r0, #0
	and r3, r2
	str r3, [r1]
	lsr r1, r2, #0x13
	and r0, r1
	bx lr
_020746A6:
	neg r3, r0
	ldr r0, _020746BC ; =0x7FFFF000
	add r2, r3, #0
	and r2, r0
	lsr r0, r0, #0x13
	neg r2, r2
	and r0, r3
	str r2, [r1]
	neg r0, r0
	bx lr
	nop
_020746BC: .word 0x7FFFF000
	thumb_func_end sub_02074694

	thumb_func_start sub_020746C0
sub_020746C0: ; 0x020746C0
	push {r3, r4, r5, r6}
	cmp r0, #0
	blt _020746CE
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0xa
	b _020746D4
_020746CE:
	mov r1, #1
	lsl r1, r1, #0xa
	lsl r2, r1, #1
_020746D4:
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r1, r2
	bgt _02074700
	ldr r0, _02074714 ; =0x020946BC
	mov r5, #2
_020746E0:
	add r6, r1, r2
	lsr r3, r6, #0x1f
	add r3, r6, r3
	asr r3, r3, #1
	lsl r6, r3, #2
	add r6, r0, r6
	ldrsh r6, [r6, r5]
	cmp r4, r6
	beq _02074700
	cmp r6, r4
	bge _020746FA
	sub r2, r3, #1
	b _020746FC
_020746FA:
	add r1, r3, #1
_020746FC:
	cmp r1, r2
	ble _020746E0
_02074700:
	lsl r0, r3, #1
	add r0, r0, #1
	lsl r1, r0, #0x10
	asr r0, r1, #0xc
	lsr r0, r0, #0x13
	add r0, r1, r0
	lsl r0, r0, #3
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_02074714: .word 0x020946BC
	thumb_func_end sub_020746C0

	thumb_func_start sub_02074718
sub_02074718: ; 0x02074718
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020747EC ; =0x04000304
	ldr r4, _020747F0 ; =0xFFFFFDF1
	ldrh r2, [r0]
	lsr r1, r0, #0xb
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	add r2, r1, #0
	ldr r1, _020747F4 ; =0x0000020E
	and r2, r4
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	bl sub_02076F74
	ldr r6, _020747F8 ; =0x0214C04C
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _0207475E
	asr r4, r4, #8
_02074748:
	blx sub_0207A208
	add r5, r0, #0
	cmp r5, r4
	bne _02074756
	bl sub_0207C774
_02074756:
	strh r5, [r6, #2]
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _02074748
_0207475E:
	ldr r4, _020747FC ; =0x04000004
	mov r5, #0
	ldr r6, _02074800 ; =0x0209B524
	strh r5, [r4]
	sub r0, r4, #4
	str r5, [r0]
	ldr r0, [r6, #4]
	sub r1, r5, #1
	cmp r0, r1
	beq _020747B8
	cmp r0, #3
	bls _02074796
	sub r0, r0, #4
	add r1, r4, #4
	add r2, r5, #0
	mov r3, #0x60
	bl sub_02074810
	add r4, #0x68
	strh r5, [r4]
	ldr r0, [r6, #4]
	ldr r1, _02074804 ; =0x04001000
	sub r0, r0, #4
	add r2, r5, #0
	mov r3, #0x70
	bl sub_02074810
	b _020747D0
_02074796:
	mov r7, #1
	add r1, r4, #4
	add r2, r5, #0
	mov r3, #0x60
	str r7, [sp]
	bl sub_0207802C
	add r4, #0x68
	strh r5, [r4]
	str r7, [sp]
	ldr r0, [r6, #4]
	ldr r1, _02074804 ; =0x04001000
	add r2, r5, #0
	mov r3, #0x70
	bl sub_0207802C
	b _020747D0
_020747B8:
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0x60
	blx sub_02078658
	add r4, #0x68
	ldr r1, _02074804 ; =0x04001000
	add r0, r5, #0
	mov r2, #0x70
	strh r5, [r4]
	blx sub_02078658
_020747D0:
	mov r1, #1
	ldr r0, _02074808 ; =0x04000020
	lsl r1, r1, #8
	strh r1, [r0]
	strh r1, [r0, #6]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x16]
	ldr r0, _0207480C ; =0x04001020
	strh r1, [r0]
	strh r1, [r0, #6]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x16]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020747EC: .word 0x04000304
_020747F0: .word 0xFFFFFDF1
_020747F4: .word 0x0000020E
_020747F8: .word 0x0214C04C
_020747FC: .word 0x04000004
_02074800: .word 0x0209B524
_02074804: .word 0x04001000
_02074808: .word 0x04000020
_0207480C: .word 0x04001020
	thumb_func_end sub_02074718

	thumb_func_start sub_02074810
sub_02074810: ; 0x02074810
	bx pc
	nop
	thumb_func_end sub_02074810

	arm_func_start sub_02074814
sub_02074814: ; 0x02074814
	ldr ip, _0207481C ; =sub_0276814C
	bx ip
	.align 2, 0
_0207481C: .word sub_0276814C
	arm_func_end sub_02074814