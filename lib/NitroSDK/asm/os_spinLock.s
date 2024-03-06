	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start OS_GetLockID
OS_GetLockID: ; 0x0207A208
	ldr r3, _0207A258 ; =0x02FFFFB0
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	movne r0, #0x40
	bne _0207A23C
	add r3, r3, #4
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	ldr r0, _0207A25C ; =0xFFFFFFFD
	bxeq lr
	mov r0, #0x60
_0207A23C:
	add r0, r0, r2
	mov r1, #0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3]
	bic r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_0207A258: .word 0x02FFFFB0
_0207A25C: .word 0xFFFFFFFD
	arm_func_end OS_GetLockID

	arm_func_start OS_ReleaseLockID
OS_ReleaseLockID: ; 0x0207A260
	ldr r3, _0207A28C ; =0x02FFFFB0
	cmp r0, #0x60
	addpl r3, r3, #4
	subpl r0, r0, #0x60
	submi r0, r0, #0x40
	mov r1, #0x80000000
	mov r1, r1, lsr r0
	ldr r2, [r3]
	orr r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_0207A28C: .word 0x02FFFFB0
	arm_func_end OS_ReleaseLockID

