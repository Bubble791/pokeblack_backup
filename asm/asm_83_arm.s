	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207B040
sub_0207B040: ; 0x0207B040
	mov ip, #0
	mov r1, #0
_0207B048:
	mov r0, #0
_0207B04C:
	orr r2, r1, r0
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _0207B04C
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _0207B048
	bx lr
	arm_func_end sub_0207B040

	arm_func_start sub_0207B074
sub_0207B074: ; 0x0207B074
	add r1, r1, r0
	bic r0, r0, #0x1f
_0207B07C:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _0207B07C
	bx lr
	arm_func_end sub_0207B074

	arm_func_start sub_0207B090
sub_0207B090: ; 0x0207B090
	add r1, r1, r0
	bic r0, r0, #0x1f
_0207B098:
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _0207B098
	bx lr
	arm_func_end sub_0207B090

	arm_func_start sub_0207B0AC
sub_0207B0AC: ; 0x0207B0AC
	mov ip, #0
	add r1, r1, r0
	bic r0, r0, #0x1f
_0207B0B8:
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _0207B0B8
	bx lr
	arm_func_end sub_0207B0AC

	arm_func_start sub_0207B0D0
sub_0207B0D0: ; 0x0207B0D0
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
	arm_func_end sub_0207B0D0

	arm_func_start sub_0207B0DC
sub_0207B0DC: ; 0x0207B0DC
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	bx lr
	arm_func_end sub_0207B0DC

	arm_func_start sub_0207B0E8
sub_0207B0E8: ; 0x0207B0E8
	add r1, r1, r0
	bic r0, r0, #0x1f
_0207B0F0:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _0207B0F0
	bx lr
	arm_func_end sub_0207B0E8


