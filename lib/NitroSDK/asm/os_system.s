	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start OS_EnableInterrupts
OS_EnableInterrupts: ; 0x0207C0D0
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_EnableInterrupts

	arm_func_start OS_DisableInterrupts
OS_DisableInterrupts: ; 0x0207C0E4
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_DisableInterrupts

	arm_func_start OS_RestoreInterrupts
OS_RestoreInterrupts: ; 0x0207C0F8
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end OS_RestoreInterrupts

	arm_func_start OS_DisableInterrupts_IrqAndFiq
OS_DisableInterrupts_IrqAndFiq: ; 0x0207C110
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end OS_DisableInterrupts_IrqAndFiq

	arm_func_start OS_RestoreInterrupts_IrqAndFiq
OS_RestoreInterrupts_IrqAndFiq: ; 0x0207C124
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end OS_RestoreInterrupts_IrqAndFiq

	arm_func_start OS_GetCpsrIrq
OS_GetCpsrIrq: ; 0x0207C13C
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_GetCpsrIrq

	arm_func_start OS_GetProcMode
OS_GetProcMode: ; 0x0207C148
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end OS_GetProcMode

	arm_func_start OS_SpinWait
OS_SpinWait:
	subs r0, r0, #4
	bhs OS_SpinWait
	bx lr
	arm_func_end OS_SpinWait

	thumb_func_start OS_SpinWaitSysCycles
OS_SpinWaitSysCycles: ; 0x0207C160
	push {r3, lr}
	ldr r1, _0207C180 ; =0x04004004
	mov r2, #1
	ldrh r1, [r1]
	and r1, r2
	cmp r1, #1
	bne _0207C170
	mov r2, #2
_0207C170:
	lsl r0, r2
	cmp r0, #0x10
	bls _0207C17C
	sub r0, #0x10
	blx OS_SpinWait
_0207C17C:
	pop {r3, pc}
	nop
_0207C180: .word 0x04004004
	thumb_func_end OS_SpinWaitSysCycles

	thumb_func_start OS_WaitInterrupt
OS_WaitInterrupt: ; 0x0207C184
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	blx OS_DisableInterrupts
	ldr r1, _0207C1DC ; =0x04000208
	str r0, [sp]
	mov r0, #1
	ldrh r7, [r1]
	cmp r4, #0
	strh r0, [r1]
	beq _0207C1A8
	ldr r3, _0207C1E0 ; =0x02FE0000
	ldr r0, _0207C1E4 ; =0x00003FF8
	mvn r1, r5
	ldr r2, [r3, r0]
	and r1, r2
	str r1, [r3, r0]
_0207C1A8:
	ldr r4, _0207C1E0 ; =0x02FE0000
	ldr r6, _0207C1E4 ; =0x00003FF8
	ldr r0, [r4, r6]
	tst r0, r5
	bne _0207C1C4
_0207C1B2:
	blx sub_0207C7E8
	blx OS_EnableInterrupts
	blx OS_DisableInterrupts
	ldr r0, [r4, r6]
	tst r0, r5
	beq _0207C1B2
_0207C1C4:
	ldr r1, [r4, r6]
	mvn r0, r5
	and r0, r1
	ldr r1, _0207C1DC ; =0x04000208
	str r0, [r4, r6]
	ldrh r0, [r1]
	ldr r0, [sp]
	strh r7, [r1]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C1DC: .word 0x04000208
_0207C1E0: .word 0x02FE0000
_0207C1E4: .word 0x00003FF8
	thumb_func_end OS_WaitInterrupt

	thumb_func_start OS_WaitVBlankIntr
OS_WaitVBlankIntr: ; 0x0207C1E8
	push {r3, lr}
	mov r0, #1
	bl sub_020044F6
	mov r0, #1
	mov r1, #1
	blx sub_02079BB0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end OS_WaitVBlankIntr
