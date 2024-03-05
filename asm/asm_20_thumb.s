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

	thumb_func_start sub_02067D0C
sub_02067D0C: ; 0x02067D0C
	bx pc
	nop
	thumb_func_end sub_02067D0C

	arm_func_start sub_02067D10
sub_02067D10: ; 0x02067D10
	ldr ip, _02067D18 ; =sub_027683D4
	bx ip
	.align 2, 0
_02067D18: .word sub_027683D4
	arm_func_end sub_02067D10
