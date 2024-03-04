	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207D04C
sub_0207D04C: ; 0x0207D04C
	ldr ip, _0207D060 ; =0x0214C66C
_0207D050:
	ldr r0, [ip]
	cmp r0, #1
	beq _0207D050
	bx lr
	.align 2, 0
_0207D060: .word 0x0214C66C
	arm_func_end sub_0207D04C

