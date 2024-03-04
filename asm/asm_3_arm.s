	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02005468
sub_02005468: ; 0x02005468
	ldr ip, _02005470 ; =sub_02769594
	bx ip
	.align 2, 0
_02005470: .word sub_02769594
	arm_func_end sub_02005468

