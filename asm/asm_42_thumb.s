	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02072CC8
sub_02072CC8: ; 0x02072CC8
	str r1, [r0, #0x18]
	mov r3, #0
	stmia r0!, {r2, r3}
	neg r1, r1
	stmia r0!, {r1, r3}
	mov r1, #1
	lsl r1, r1, #0xc
	stmia r0!, {r1, r3}
	add r0, #4
	mov r1, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	.align 2, 0
	thumb_func_end sub_02072CC8

