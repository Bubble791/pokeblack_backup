	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start OSi_InitPrevTitleId
OSi_InitPrevTitleId: ; 0x0207C888
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x300
	add r0, sp, #0
	mov r1, #0
	blx OS_InitDeliverArgInfo
	blx OS_DecodeDeliverArg
	cmp r0, #0
	bne _0207C8B4
	blx sub_0207C6A4
	ldr r2, _0207C948 ; =0x0276B0DC
	stmia r2, {r0, r1}
_0207C8B4:
	ldr r0, _0207C948 ; =0x0276B0DC
	mov r4, #0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	cmp r1, #0
	cmpeq r0, #0
	beq _0207C8E8
	sub r2, r4, #1
	mov r3, r2
	bl sub_0276934C
	cmp r1, r4
	cmpeq r0, r4
	beq _0207C918
_0207C8E8:
	ldr r0, _0207C948 ; =0x0276B0DC
	ldmia r0, {r2, r3}
	mov r0, r2, lsr #0x18
	orr r0, r0, r3, lsl #8
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0x30
	cmpne r0, #0x31
	cmpne r0, #0x32
	cmpne r0, #0x33
	cmpne r0, #0x34
	bne _0207C93C
_0207C918:
	ldr r2, _0207C948 ; =0x0276B0DC
	mov r1, #0
	str r1, [r2]
	add r0, sp, #0
	str r1, [r2, #4]
	blx OS_InitDeliverArgInfo
	blx OS_EncodeDeliverArg
	add sp, sp, #0x300
	ldmia sp!, {r4, pc}
_0207C93C:
	blx OS_SetDeliverArgStateInvalid
	add sp, sp, #0x300
	ldmia sp!, {r4, pc}
	.align 2, 0
_0207C948: .word 0x0276B0DC
	arm_func_end OSi_InitPrevTitleId

