	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start OS_InitDeliverArgInfo
OS_InitDeliverArgInfo: ; 0x0207C574
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #3
	ldr r4, _0207C5AC ; =0x0214C5C4
	lsl r5, r5, #8
	add r6, r1, #0
	mov r1, #0
	add r2, r5, #0
	str r0, [r4, #8]
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #3
	str r0, [r4, #4]
	sub r5, #0x14
	ldr r0, [r4, #8]
	sub r1, r5, r6
	strh r1, [r0, #0xc]
	ldr r0, [r4, #8]
	strh r7, [r0, #0xe]
	ldr r0, [r4, #8]
	add r1, r0, #0
	add r1, #0x14
	str r1, [r4]
	strb r7, [r0, #0x14]
	ldr r0, [r4]
	strb r7, [r0, #1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C5AC: .word 0x0214C5C4
	thumb_func_end OS_InitDeliverArgInfo

	thumb_func_start OS_EncodeDeliverArg
OS_EncodeDeliverArg: ; 0x0207C5B0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0207C610 ; =0x0214C5C4
	mov r0, #1
	ldr r1, [r4, #4]
	tst r1, r0
	bne _0207C5C0
	sub r0, r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207C5C0:
	ldr r6, _0207C614 ; =0x02FFE010
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	mov r5, #3
	mov r7, #0
	strh r1, [r0, #0xa]
	ldr r1, _0207C618 ; =0x02FFE230
	ldr r0, [r4, #8]
	ldmia r1!, {r2, r3}
	add r1, r0, #0
	stmia r1!, {r2, r3}
	strb r5, [r0, #9]
	ldr r0, [r4, #8]
	lsl r5, r5, #8
	add r1, r0, #0
	ldmia r1!, {r2, r3}
	ldr r1, _0207C61C ; =0x0214C5D0
	stmia r1!, {r2, r3}
	strh r7, [r0, #0x10]
	ldr r0, _0207C620 ; =0x0000FFFF
	ldr r1, [r4, #8]
	add r2, r5, #0
	bl SVC_GetCRC16
	ldr r1, [r4, #8]
	add r2, r5, #0
	strh r0, [r1, #0x10]
	ldr r0, [r4, #8]
	lsl r1, r6, #0x15
	blx MI_CpuCopy8
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, r5, #0
	blx MI_CpuFill8
	str r7, [r4, #4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C610: .word 0x0214C5C4
_0207C614: .word 0x02FFE010
_0207C618: .word 0x02FFE230
_0207C61C: .word 0x0214C5D0
_0207C620: .word 0x0000FFFF
	thumb_func_end OS_EncodeDeliverArg

	thumb_func_start OS_DecodeDeliverArg
OS_DecodeDeliverArg: ; 0x0207C624
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0207C6BC
	cmp r0, #0
	bne _0207C634
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0207C634:
	ldr r4, _0207C690 ; =0x0214C5C4
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _0207C642
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0207C642:
	mov r7, #3
	mov r0, #2
	lsl r7, r7, #8
	lsl r0, r0, #0x18
	add r2, r7, #0
	blx MI_CpuCopy8
	ldr r0, [r4, #8]
	mov r6, #0
	ldrh r5, [r0, #0x10]
	add r2, r7, #0
	strh r6, [r0, #0x10]
	ldr r0, _0207C694 ; =0x0000FFFF
	ldr r1, [r4, #8]
	bl SVC_GetCRC16
	ldr r1, [r4, #8]
	strh r0, [r1, #0x10]
	ldr r0, [r4, #8]
	ldrh r1, [r0, #0x10]
	cmp r5, r1
	beq _0207C67E
	add r1, r6, #0
	add r2, r7, #0
	blx MI_CpuFill8
	bl OS_SetDeliverArgStateInvalid
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207C67E:
	ldrb r2, [r0, #9]
	mov r1, #0xfe
	and r1, r2
	strb r1, [r0, #9]
	mov r0, #1
	str r0, [r4, #4]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C690: .word 0x0214C5C4
_0207C694: .word 0x0000FFFF
	thumb_func_end OS_DecodeDeliverArg

	thumb_func_start OS_SetDeliverArgStateInvalid
OS_SetDeliverArgStateInvalid: ; 0x0207C698
	ldr r0, _0207C6A0 ; =0x0214C5C4
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0207C6A0: .word 0x0214C5C4
	thumb_func_end OS_SetDeliverArgStateInvalid

	thumb_func_start sub_0207C6A4
sub_0207C6A4: ; 0x0207C6A4
	ldr r1, _0207C6B8 ; =0x0214C5C4
	ldr r2, [r1, #4]
	lsl r2, r2, #0x1f
	beq _0207C6B2
	ldr r1, [r1, #8]
	ldmia r1!, {r0, r1}
	bx lr
_0207C6B2:
	mov r0, #0
	mov r1, #0
	bx lr
	.align 2, 0
_0207C6B8: .word 0x0214C5C4
	thumb_func_end sub_0207C6A4

	thumb_func_start sub_0207C6BC
sub_0207C6BC: ; 0x0207C6BC
	mov r0, #2
	lsl r0, r0, #0x18
	ldrb r1, [r0, #9]
	mov r0, #2
	tst r0, r1
	beq _0207C6CC
	mov r0, #1
	bx lr
_0207C6CC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0207C6BC