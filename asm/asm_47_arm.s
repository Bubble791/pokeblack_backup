	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207465C
sub_0207465C: ; 0x0207465C
	smull r2, r1, r0, r1
	adds r0, r2, #0x800
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
	arm_func_end sub_0207465C

	arm_func_start sub_02074674
sub_02074674: ; 0x02074674
	stmdb sp!, {r3, lr}
	mov r3, r0, asr #0x1f
	umull lr, ip, r1, r0
	mla ip, r1, r3, ip
	mla ip, r2, r0, ip
	adds r0, lr, #0x80000000
	adc r0, ip, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_02074674

