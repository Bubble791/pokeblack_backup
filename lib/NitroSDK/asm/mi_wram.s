	.include "asm/macros.inc"
	.include "mi_wram.inc"
	.include "global.inc"

	.text

	thumb_func_start MI_InitWramManager
MI_InitWramManager: ; 0x02078000
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207800E
	bl sub_02078010
_0207800E:
	pop {r3, pc}
	thumb_func_end MI_InitWramManager

	thumb_func_start sub_02078010
sub_02078010: ; 0x02078010
	bx pc
	nop
	thumb_func_end sub_02078010

	arm_func_start sub_02078014
sub_02078014: ; 0x02078014
	ldr ip, _0207801C ; =sub_02768818
	bx ip
	.align 2, 0
_0207801C: .word sub_02768818
	arm_func_end sub_02078014

	thumb_func_start MI_SetWramBank
MI_SetWramBank: ; 0x02078020
	ldr r1, _02078028 ; =0x04000247
	strb r0, [r1]
	bx lr
	nop
_02078028: .word 0x04000247
	thumb_func_end MI_SetWramBank
