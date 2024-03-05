	.include "asm/macros.inc"
	.include "math.inc"
	.include "global.inc"

	.text

	arm_func_start MATH_CountLeadingZerosFunc
MATH_CountLeadingZerosFunc: ; 0x02076FA8
	clz r0, r0
	bx lr
	arm_func_end MATH_CountLeadingZerosFunc

	thumb_func_start MATH_CountPopulation
MATH_CountPopulation: ; 0x02076FB0
	ldr r1, _02076FDC ; =0x55555555
	lsr r2, r0, #1
	and r1, r2
	sub r1, r0, r1
	add r2, r1, #0
	ldr r0, _02076FE0 ; =0x33333333
	lsr r1, r1, #2
	and r2, r0
	and r0, r1
	add r1, r2, r0
	lsr r0, r1, #4
	add r1, r1, r0
	ldr r0, _02076FE4 ; =0x0F0F0F0F
	and r1, r0
	lsr r0, r1, #8
	add r1, r1, r0
	lsr r0, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	nop
_02076FDC: .word 0x55555555
_02076FE0: .word 0x33333333
_02076FE4: .word 0x0F0F0F0F
	thumb_func_end MATH_CountPopulation