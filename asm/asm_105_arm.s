	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207EB04
sub_0207EB04: ; 0x0207EB04
	ldr ip, _0207EB18 ; =0x0214E224
_0207EB08:
	ldr r0, [ip]
	cmp r0, #1
	beq _0207EB08
	bx lr
	.align 2, 0
_0207EB18: .word 0x0214E224
	arm_func_end sub_0207EB04
_0207EB1C:
	.byte 0x00, 0x48, 0x70, 0x47
	.byte 0x24, 0xE2, 0x14, 0x02

