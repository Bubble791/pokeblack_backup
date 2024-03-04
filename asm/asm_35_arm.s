	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207244C
sub_0207244C: ; 0x0207244C
	mov r2, #0x1000
	str r2, [r0, #0x20]
	mov r3, #0
	stmia r0!, {r2, r3}
	mov r1, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	arm_func_end sub_0207244C

	arm_func_start sub_02072470
sub_02072470: ; 0x02072470
	stmdb sp!, {r4}
	mov ip, #0
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	mov r2, #0x1000
	str ip, [r1]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str r2, [r1, #0xc]
	ldmia sp!, {r4}
	bx lr
	arm_func_end sub_02072470

