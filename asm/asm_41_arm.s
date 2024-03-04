	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02072C94
sub_02072C94: ; 0x02072C94
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [sp, #0x10]
	mov r5, r0
	mov r4, r1
	str ip, [sp]
	bl sub_020724C0
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	str r2, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_02072C94

