	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start OsCountZeroBits
OsCountZeroBits: ; 0x0207C4F4
	clz r0, r0
	bx lr
	arm_func_end OsCountZeroBits

	thumb_func_start OSi_InitVramExclusive
OSi_InitVramExclusive: ; 0x0207C4FC
	ldr r0, _0207C514 ; =0x0214C5AC
	mov r3, #0
	str r3, [r0]
	ldr r0, _0207C518 ; =0x0214C5B0
	add r2, r3, #0
_0207C506:
	lsl r1, r3, #1
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #9
	blt _0207C506
	bx lr
	nop
_0207C514: .word 0x0214C5AC
_0207C518: .word 0x0214C5B0
	thumb_func_end OSi_InitVramExclusive

	thumb_func_start OSi_UnlockVram
OSi_UnlockVram: ; 0x0207C51C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	blx OS_DisableInterrupts
	ldr r7, _0207C568 ; =0x0214C5AC
	str r0, [sp]
	ldr r0, [r7]
	add r1, r4, #0
	and r1, r0
	ldr r0, _0207C56C ; =0x000001FF
	add r4, r1, #0
	ldr r6, _0207C570 ; =0x0214C5B0
	and r4, r0
_0207C538:
	add r0, r4, #0
	blx OsCountZeroBits
	mov r1, #0x1f
	sub r0, r1, r0
	bmi _0207C560
	mov r1, #1
	lsl r1, r0
	lsl r0, r0, #1
	mvn r1, r1
	ldrh r2, [r6, r0]
	and r4, r1
	cmp r5, r2
	bne _0207C538
	mov r2, #0
	strh r2, [r6, r0]
	ldr r0, [r7]
	and r0, r1
	str r0, [r7]
	b _0207C538
_0207C560:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207C568: .word 0x0214C5AC
_0207C56C: .word 0x000001FF
_0207C570: .word 0x0214C5B0
	thumb_func_end OSi_UnlockVram
