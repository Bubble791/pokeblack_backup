	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02079084
sub_02079084: ; 0x02079084
	mov r1, #0
	mov r2, #0
	mov r3, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	bx lr
	.align 2, 0
	thumb_func_end sub_02079084

