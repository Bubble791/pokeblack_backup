	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_020723B8
sub_020723B8: ; 0x020723B8
	mov r1, #0
	mov r2, #0x1000
	mov r3, #0
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r2}
	bx lr
	arm_func_end sub_020723B8

