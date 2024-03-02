    .include "macros/function.inc"
	.include "overlay13.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy13_216e660
ovy13_216e660: ; 0x0216E660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	ldr r6, [r5]
	add r7, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02016AD8
	add r0, r6, #0
	bl sub_02016AF0
	ldr r1, [r4]
	str r0, [sp, #0xc]
	cmp r1, #8
	bhi _0216E75C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0216E68C: ; jump table
	.short _0216E69E - _0216E68C - 2 ; case 0
	.short _0216E6BA - _0216E68C - 2 ; case 1
	.short _0216E6C4 - _0216E68C - 2 ; case 2
	.short _0216E6DE - _0216E68C - 2 ; case 3
	.short _0216E70A - _0216E68C - 2 ; case 4
	.short _0216E720 - _0216E68C - 2 ; case 5
	.short _0216E728 - _0216E68C - 2 ; case 6
	.short _0216E74E - _0216E68C - 2 ; case 7
	.short _0216E756 - _0216E68C - 2 ; case 8
_0216E69E:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
_0216E6AA:
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0216E6B2:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0216E75C
_0216E6BA:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_020193A4
	b _0216E6AA
_0216E6C4:
	ldr r1, _0216E764 ; =0x00000483
	add r0, r6, #0
	mov r2, #6
	mov r3, #0
	bl sub_0202FA30
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0216E6DE:
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	mov r2, #0xc
	blx sub_020787A8
	ldr r0, [r5]
	ldr r1, _0216E768 ; =0x00000134
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	ldr r2, _0216E76C ; =0x021A17DC
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0x18]
	strb r0, [r5, #0x14]
	ldrb r0, [r5, #0x19]
	strb r0, [r5, #0x15]
	add r5, #0xc
	add r0, r6, #0
	add r3, r5, #0
	bl sub_02016A98
	b _0216E6B2
_0216E70A:
	add r0, r6, #0
	bl sub_02016AD4
	cmp r0, #0
	bne _0216E75C
	add r0, r6, #0
	mov r1, #6
	mov r2, #0x3c
	bl sub_0202F914
	b _0216E6AA
_0216E720:
	add r0, r6, #0
	bl sub_02019494
	b _0216E6AA
_0216E728:
	ldrb r1, [r5, #0x16]
	cmp r1, #0
	beq _0216E738
	bl sub_02180508
	mov r1, #0
	bl sub_0219847C
_0216E738:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
	b _0216E6AA
_0216E74E:
	add r0, r6, #0
	bl sub_0202FF44
	b _0216E6AA
_0216E756:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0216E75C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216E764: .word 0x00000483
_0216E768: .word 0x00000134
_0216E76C: .word 0x021A17DC
	thumb_func_end ovy13_216e660

	thumb_func_start ovy13_216e770
ovy13_216e770: ; 0x0216E770
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0216E7A4 ; =ovy13_216e660
	ldr r6, [r1]
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x1c
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	bl sub_02017934
	str r0, [r4, #8]
	str r5, [r4]
	strb r6, [r4, #0x18]
	lsr r0, r6, #0x10
	strb r0, [r4, #0x19]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216E7A4: .word ovy13_216e660
	thumb_func_end ovy13_216e770
_0216E7A8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0216E7A8
