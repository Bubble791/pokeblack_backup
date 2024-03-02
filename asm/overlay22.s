    .include "macros/function.inc"
	.include "overlay22.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy22_216e660
ovy22_216e660: ; 0x0216E660
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	add r3, r2, #0
	add r5, r0, #0
	ldr r0, [r3]
	cmp r1, #5
	bhi _0216E6E2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0216E67E: ; jump table
	.short _0216E68A - _0216E67E - 2 ; case 0
	.short _0216E6A4 - _0216E67E - 2 ; case 1
	.short _0216E6AC - _0216E67E - 2 ; case 2
	.short _0216E6B8 - _0216E67E - 2 ; case 3
	.short _0216E6BE - _0216E67E - 2 ; case 4
	.short _0216E6D2 - _0216E67E - 2 ; case 5
_0216E68A:
	ldr r1, [r3, #4]
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
_0216E694:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0216E6E2
_0216E6A4:
	ldr r1, [r3, #4]
	bl sub_020193A4
	b _0216E694
_0216E6AC:
	ldr r1, [r3, #4]
	add r2, #0x34
	add r3, #0xc
	bl sub_020197D8
	b _0216E694
_0216E6B8:
	bl sub_02019494
	b _0216E694
_0216E6BE:
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r3, #4]
	mov r3, #0
	bl sub_021B878C
	b _0216E694
_0216E6D2:
	ldr r0, [r3, #8]
	add r3, #0x34
	add r1, r3, #0
	bl sub_021EFAA8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0216E6E2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy22_216e660

	thumb_func_start ovy22_216e6e8
ovy22_216e6e8: ; 0x0216E6E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AD8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [sp]
	ldr r2, _0216E738 ; =ovy22_216e660
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xdc
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, [sp]
	str r5, [r4]
	str r0, [r4, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x34
	str r6, [r4, #8]
	bl sub_021EFB60
	add r4, #0xc
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_021EFBB4
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216E738: .word ovy22_216e660
	thumb_func_end ovy22_216e6e8

	thumb_func_start ovy22_216e73c
ovy22_216e73c: ; 0x0216E73C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _0216E774 ; =ovy22_216e778
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx sub_020787A8
	str r5, [r4]
	str r7, [r4, #4]
	str r6, [r4, #8]
	add r6, #0xa0
	ldr r0, [r6]
	str r0, [r4, #0xc]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216E774: .word ovy22_216e778
	thumb_func_end ovy22_216e73c

	thumb_func_start ovy22_216e778
ovy22_216e778: ; 0x0216E778
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _0216E78E
	cmp r0, #1
	beq _0216E7CA
	b _0216E7DE
_0216E78E:
	mov r0, #2
	mov r1, #0x3f
	bl sub_0200632C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _0216E7AE
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, _0216E7E4 ; =0x00000140
	ldr r3, _0216E7E8 ; =0x0219EE40
	bl sub_020195C0
	b _0216E7BC
_0216E7AE:
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, _0216E7E4 ; =0x00000140
	ldr r3, _0216E7E8 ; =0x0219EE40
	bl sub_020195F0
_0216E7BC:
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r5]
	b _0216E7DE
_0216E7CA:
	ldr r0, [r4, #8]
	bl sub_021E6870
	mov r0, #2
	mov r1, #0x7f
	bl sub_0200632C
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0216E7DE:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0216E7E4: .word 0x00000140
_0216E7E8: .word 0x0219EE40
	thumb_func_end ovy22_216e778

	thumb_func_start ovy22_216e7ec
ovy22_216e7ec: ; 0x0216E7EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r5, r2, #0
	ldr r0, [r6]
	ldr r4, [r5]
	ldr r7, [r5, #4]
	cmp r0, #0
	beq _0216E806
	cmp r0, #1
	beq _0216E830
	b _0216E84E
_0216E806:
	add r0, r4, #0
	bl sub_02016AF0
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021F04C0
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	str r2, [r5, #8]
	bl sub_02168924
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02016D68
	mov r0, #1
	str r0, [r6]
	b _0216E84E
_0216E830:
	add r0, r4, #0
	bl sub_02016AD8
	add r1, r0, #0
	ldr r2, [r5, #8]
	add r0, r7, #0
	bl sub_021F065C
	ldr r1, [r5, #8]
	add r0, r7, #0
	bl sub_021F05C4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0216E84E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy22_216e7ec

	thumb_func_start ovy22_216e854
ovy22_216e854: ; 0x0216E854
	push {r4, r5, r6, lr}
	ldr r2, _0216E874 ; =ovy22_216e7ec
	add r4, r1, #0
	mov r1, #0
	mov r3, #0xc
	add r5, r0, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	str r4, [r0, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0216E874: .word ovy22_216e7ec
	thumb_func_end ovy22_216e854

	thumb_func_start ovy22_216e878
ovy22_216e878: ; 0x0216E878
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _0216E8AC ; =ovy22_216e8b0
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	blx sub_020787A8
	str r5, [r4]
	str r7, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216E8AC: .word ovy22_216e8b0
	thumb_func_end ovy22_216e878

	thumb_func_start ovy22_216e8b0
ovy22_216e8b0: ; 0x0216E8B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0216E8C2
	cmp r0, #1
	beq _0216E8E0
	b _0216E8EA
_0216E8C2:
	ldr r0, [r2, #8]
	ldr r3, _0216E8F0 ; =0x021A2F0C
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, _0216E8F4 ; =0x00000146
	bl sub_020195C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r4]
	b _0216E8EA
_0216E8E0:
	ldr r0, [r2, #8]
	bl sub_021E6AC0
	mov r0, #1
	pop {r3, r4, r5, pc}
_0216E8EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0216E8F0: .word 0x021A2F0C
_0216E8F4: .word 0x00000146
	thumb_func_end ovy22_216e8b0

	thumb_func_start ovy22_216e8f8
ovy22_216e8f8: ; 0x0216E8F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _0216E92C ; =ovy22_216e930
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	blx sub_020787A8
	str r5, [r4]
	str r7, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216E92C: .word ovy22_216e930
	thumb_func_end ovy22_216e8f8

	thumb_func_start ovy22_216e930
ovy22_216e930: ; 0x0216E930
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0216E942
	cmp r0, #1
	beq _0216E960
	b _0216E96A
_0216E942:
	ldr r0, [r2, #8]
	ldr r3, _0216E970 ; =0x021A316C
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, _0216E974 ; =0x00000146
	bl sub_020195C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r4]
	b _0216E96A
_0216E960:
	ldr r0, [r2, #8]
	bl sub_021E6AFC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0216E96A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0216E970: .word 0x021A316C
_0216E974: .word 0x00000146
	thumb_func_end ovy22_216e930
_0216E978:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0216E978
