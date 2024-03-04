	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02067D00
sub_02067D00: ; 0x02067D00
	ldr ip, _02067D08 ; =sub_02768588
	bx ip
	.align 2, 0
_02067D08: .word sub_02768588
	arm_func_end sub_02067D00

