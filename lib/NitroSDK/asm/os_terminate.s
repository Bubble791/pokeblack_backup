	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start OS_Terminate
OS_Terminate: ; 0x0207C774
	push {r4, lr}
	ldr r0, _0207C7C4 ; =0x0214C5D8
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0207C786
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r0]
	blx r2
_0207C786:
	ldr r0, _0207C7C4 ; =0x0214C5D8
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _0207C7BE
	mov r4, #1
	str r4, [r0, #8]
	blx OS_GetProcMode
	cmp r0, #0x12
	beq _0207C7A4
	ldr r1, _0207C7C8 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	blx OS_EnableInterrupts
_0207C7A4:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207C7B8
	blx sub_0207C7CC
	cmp r0, #0
	beq _0207C7B8
	blx sub_0207C7D4
_0207C7B8:
	mov r0, #0x20
	bl OSi_SendToPxi
_0207C7BE:
	bl OSi_TerminateCore
	pop {r4, pc}
	.align 2, 0
_0207C7C4: .word 0x0214C5D8
_0207C7C8: .word 0x04000208
	thumb_func_end OS_Terminate

	arm_func_start sub_0207C7CC
sub_0207C7CC: ; 0x0207C7CC
	ldr pc, _0207C7D0 ; =sub_02704318
	.align 2, 0
_0207C7D0: .word sub_02704318
	arm_func_end sub_0207C7CC

	arm_func_start sub_0207C7D4
sub_0207C7D4: ; 0x0207C7D4
	ldr pc, _0207C7D8 ; =sub_02704328
	.align 2, 0
_0207C7D8: .word sub_02704328
	arm_func_end sub_0207C7D4

	thumb_func_start OSi_TerminateCore
OSi_TerminateCore: ; 0x0207C7DC
	push {r3, lr}
	blx OS_DisableInterrupts
_0207C7E2:
	blx OS_Halt
	b _0207C7E2
	thumb_func_end OSi_TerminateCore

	arm_func_start OS_Halt
OS_Halt: ; 0x0207C7E8
	mov r0, #0
	mcr p15, 0, r0, c7, c0, 4
	bx lr
	arm_func_end OS_Halt