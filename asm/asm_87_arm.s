	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_0207C0D0
sub_0207C0D0: ; 0x0207C0D0
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_0207C0D0

	arm_func_start sub_0207C0E4
sub_0207C0E4: ; 0x0207C0E4
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_0207C0E4

	arm_func_start sub_0207C0F8
sub_0207C0F8: ; 0x0207C0F8
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end sub_0207C0F8

	arm_func_start sub_0207C110
sub_0207C110: ; 0x0207C110
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end sub_0207C110

	arm_func_start sub_0207C124
sub_0207C124: ; 0x0207C124
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end sub_0207C124

	arm_func_start sub_0207C13C
sub_0207C13C: ; 0x0207C13C
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end sub_0207C13C

	arm_func_start sub_0207C148
sub_0207C148: ; 0x0207C148
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end sub_0207C148

	arm_func_start sub_0207C154
sub_0207C154:
	subs r0, r0, #4
	bhs sub_0207C154
	bx lr
	arm_func_end sub_0207C154

