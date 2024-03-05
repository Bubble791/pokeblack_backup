	.include "asm/macros.inc"
	.include "fx.inc"
	.include "global.inc"
	.text

	arm_func_start FX_MulFunc
FX_MulFunc: ; 0x0207465C
	smull r2, r1, r0, r1
	adds r0, r2, #0x800
	adc r1, r1, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	bx lr
	arm_func_end FX_MulFunc

	arm_func_start FX_Mul32x64cFunc
FX_Mul32x64cFunc: ; 0x02074674
	stmdb sp!, {r3, lr}
	mov r3, r0, asr #0x1f
	umull lr, ip, r1, r0
	mla ip, r1, r3, ip
	mla ip, r2, r0, ip
	adds r0, lr, #0x80000000
	adc r0, ip, #0
	ldmia sp!, {r3, pc}
	arm_func_end FX_Mul32x64cFunc

	thumb_func_start FX_Modf
FX_Modf: ; 0x02074694
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
	thumb_func_end FX_Modf
