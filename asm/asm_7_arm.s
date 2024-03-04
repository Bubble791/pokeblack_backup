	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_020054AC
sub_020054AC: ; 0x020054AC
	ldr ip, _020054B4 ; =sub_02769588
	bx ip
	.align 2, 0
_020054B4: .word sub_02769588
	arm_func_end sub_020054AC

