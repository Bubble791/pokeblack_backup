	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02075EDC
sub_02075EDC: ; 0x02075EDC
	ldr ip, _02075EE4 ; =sub_027681F4
	bx ip
	.align 2, 0
_02075EE4: .word sub_027681F4
	arm_func_end sub_02075EDC

