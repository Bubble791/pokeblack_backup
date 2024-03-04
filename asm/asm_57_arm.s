	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02075190
sub_02075190: ; 0x02075190
	mov r0, #0x4000000
	ldr r1, [r0]
	ldrh r3, [r0, #0xc]
	ldr r0, [r0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _0207520C
_020751C4: ; jump table
	b _020751E0 ; case 0
	b _020751E0 ; case 1
	b _020751E0 ; case 2
	b _020751E0 ; case 3
	b _020751E0 ; case 4
	b _020751EC ; case 5
	b _02075204 ; case 6
_020751E0:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020751EC:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_02075204:
	mov r0, #0x6000000
	bx lr
_0207520C:
	mov r0, #0
	bx lr
	arm_func_end sub_02075190

