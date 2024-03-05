	.include "asm/macros.inc"
	.include "mi_init.inc"
	.include "global.inc"

	.public MI_SetWramBank
	.public OS_IsRunOnTwl
	.public sub_02768138
	.text

	thumb_func_start MI_Init
MI_Init: ; 0x020791D0
	push {r3, lr}
	mov r0, #3
	bl MI_SetWramBank
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020791E4
	bl sub_020791EC
_020791E4:
	mov r0, #0
	bl MI_StopDma
	pop {r3, pc}
	thumb_func_end MI_Init

	thumb_func_start sub_020791EC
sub_020791EC: ; 0x020791EC
	bx pc
	nop
	thumb_func_end sub_020791EC

	arm_func_start sub_020791F0
sub_020791F0: ; 0x020791F0
	ldr ip, _0200542C ; =sub_02768138
	bx ip
	.align 2, 0
_0200542C: .word sub_02768138
	arm_func_end sub_020791F0