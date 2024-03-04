	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02074FE4
sub_02074FE4: ; 0x02074FE4
	ldr ip, _02074FEC ; =sub_027681B8
	bx ip
	.align 2, 0
_02074FEC: .word sub_027681B8
	arm_func_end sub_02074FE4

