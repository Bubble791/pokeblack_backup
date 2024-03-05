    .include "macros/function.inc"
	.include "overlay21.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy21_216e660
ovy21_216e660: ; 0x0216E660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	ldr r6, [r5]
	add r7, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_02016AD8
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02016AF0
	ldr r1, [r4]
	str r0, [sp, #0xc]
	cmp r1, #7
	bls _0216E684
	b _0216E7FC
_0216E684:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0216E690: ; jump table
	.short _0216E6A0 - _0216E690 - 2 ; case 0
	.short _0216E6EA - _0216E690 - 2 ; case 1
	.short _0216E710 - _0216E690 - 2 ; case 2
	.short _0216E744 - _0216E690 - 2 ; case 3
	.short _0216E750 - _0216E690 - 2 ; case 4
	.short _0216E77E - _0216E690 - 2 ; case 5
	.short _0216E79C - _0216E690 - 2 ; case 6
	.short _0216E7D4 - _0216E690 - 2 ; case 7
_0216E6A0:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _0216E6AE
	add r0, r6, #0
	ldr r1, [sp, #0xc]
	mov r2, #0
	b _0216E6B4
_0216E6AE:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	mov r2, #1
_0216E6B4:
	mov r3, #0
	bl ovy36_21b870c
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	bl sub_02042788
	cmp r0, #1
	bne _0216E6E8
	ldr r0, [r5, #0x2c]
	bl sub_02180F80
	cmp r0, #1
	bne _0216E6E8
	ldr r0, [r5, #0x2c]
	bl sub_0202BDE0
	cmp r0, #0
	bne _0216E6E8
	mov r0, #1
	mov r6, #1
	bl sub_02174108
	str r6, [r5, #0x28]
_0216E6E8:
	b _0216E708
_0216E6EA:
	ldr r1, [r5, #0x24]
	cmp r1, #1
	bne _0216E6F8
	bl sub_02180560
	bl sub_021B6690
_0216E6F8:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_020193A4
_0216E700:
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0216E708:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0216E7FC
_0216E710:
	ldr r0, [sp, #0x10]
	bl sub_0201749C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02016B1C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02030040
	add r0, r5, #0
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x24]
	add r0, #0xc
	bl ovy21_216e848
	add r5, #0xc
	ldr r1, _0216E804 ; =0x00000135
	ldr r2, _0216E808 ; =0x021A01D0
	add r0, r6, #0
	add r3, r5, #0
	bl sub_02016A98
	b _0216E6E8
_0216E744:
	add r0, r6, #0
	bl sub_02016AD4
	cmp r0, #0
	bne _0216E7FC
	b _0216E6E8
_0216E750:
	ldr r0, [r5, #0x24]
	mov r1, #0
	mvn r1, r1
	cmp r0, #1
	bne _0216E766
	ldr r0, [r5]
	bl sub_02016B08
	bl sub_020147C4
	add r1, r0, #0
_0216E766:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0216E77C
	ldr r0, [r5]
	bl sub_0202FC08
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0216E77C:
	b _0216E6E8
_0216E77E:
	ldr r0, [sp, #0x10]
	bl sub_0201749C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02016B1C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0203005C
	add r0, r6, #0
	bl sub_02019494
	b _0216E700
_0216E79C:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	bne _0216E7B2
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	add r0, r6, #0
	ldr r1, [sp, #0xc]
	b _0216E7CC
_0216E7B2:
	bl sub_02180508
	mov r1, #0
	mov r5, #0
	bl sub_0219847C
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r1, [sp, #0xc]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r2, #1
_0216E7CC:
	mov r3, #0
	bl sub_021B878C
	b _0216E700
_0216E7D4:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0216E7F6
	bl sub_02042788
	cmp r0, #1
	bne _0216E7F6
	ldr r0, [r5, #0x2c]
	bl sub_02180F80
	cmp r0, #0
	beq _0216E7F6
	mov r0, #0
	mov r4, #0
	bl sub_02174108
	str r4, [r5, #0x28]
_0216E7F6:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0216E7FC:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0216E804: .word 0x00000135
_0216E808: .word 0x021A01D0
	thumb_func_end ovy21_216e660

	thumb_func_start ovy21_216e80c
ovy21_216e80c: ; 0x0216E80C
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0216E844 ; =ovy21_216e660
	ldr r6, [r1]
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x30
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
	add r0, r5, #0
	str r6, [r4, #0x24]
	bl sub_02016B20
	str r0, [r4, #0x2c]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216E844: .word ovy21_216e660
	thumb_func_end ovy21_216e80c

	thumb_func_start ovy21_216e848
ovy21_216e848: ; 0x0216E848
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	add r7, r3, #0
	bl sub_02017934
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	add r0, r4, #0
	str r4, [r5]
	str r6, [r5, #4]
	str r7, [r5, #8]
	bl sub_02016B08
	str r0, [r5, #0xc]
	bl sub_0201458C
	str r0, [r5, #0x10]
	ldr r0, [sp]
	bl sub_02010DEC
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy21_216e848
_0216E884:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0216E884
