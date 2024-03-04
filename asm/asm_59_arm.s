	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02075278
sub_02075278: ; 0x02075278
	mov r0, #0x4000000
	ldr r1, [r0]
	ldrh r3, [r0, #0xe]
	ldr r0, [r0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _020752F4
_020752AC: ; jump table
	b _020752C8 ; case 0
	b _020752C8 ; case 1
	b _020752C8 ; case 2
	b _020752D4 ; case 3
	b _020752D4 ; case 4
	b _020752D4 ; case 5
	b _020752EC ; case 6
_020752C8:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020752D4:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_020752EC:
	mov r0, #0
	bx lr
_020752F4:
	mov r0, #0
	bx lr
	arm_func_end sub_02075278

