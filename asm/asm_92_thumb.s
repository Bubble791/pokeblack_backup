	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0207C574
sub_0207C574: ; 0x0207C574
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
	thumb_func_end sub_0207C574

	thumb_func_start sub_0207C5B0
sub_0207C5B0: ; 0x0207C5B0
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
	thumb_func_end sub_0207C5B0

	thumb_func_start sub_0207C624
sub_0207C624: ; 0x0207C624
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
	bl sub_0207C698
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
	thumb_func_end sub_0207C624

	thumb_func_start sub_0207C698
sub_0207C698: ; 0x0207C698
	ldr r0, _0207C6A0 ; =0x0214C5C4
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0207C6A0: .word 0x0214C5C4
	thumb_func_end sub_0207C698

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

	thumb_func_start sub_0207C6D0
sub_0207C6D0: ; 0x0207C6D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0207C75C ; =0x04000006
	ldr r6, _0207C760 ; =0x02FFFC00
	ldrh r7, [r0]
	add r4, r6, #0
	str r4, [sp]
	add r4, #0x80
	str r4, [sp]
	add r4, #0x74
	bl sub_0207BB84
	lsl r1, r7, #0x10
	orr r0, r1
	str r0, [r5]
	ldrh r0, [r4, #4]
	ldr r1, _0207C764 ; =0x0214C578
	lsl r3, r0, #0x10
	ldr r0, [r1]
	ldr r2, [r1, #4]
	eor r0, r3
	str r0, [r5, #4]
	ldr r2, [r1]
	ldr r0, [r6, #0x3c]
	ldr r2, [r1, #4]
	ldr r1, [sp]
	ldr r1, [r1, #0x74]
	eor r1, r2
	eor r1, r0
	ldr r0, _0207C768 ; =0x04000600
	str r1, [r5, #8]
	ldr r0, [r0]
	eor r0, r1
	str r0, [r5, #8]
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r5, #0xc]
	ldr r0, [r6, r0]
	str r0, [r5, #0x10]
	mov r0, #0xe5
	lsl r0, r0, #2
	ldrh r1, [r6, r0]
	lsl r2, r1, #0x10
	sub r1, r0, #4
	ldr r1, [r6, r1]
	eor r1, r2
	str r1, [r5, #0x14]
	add r1, r0, #0
	add r1, #0x16
	ldrh r1, [r6, r1]
	lsl r2, r1, #0x10
	add r1, r0, #0
	add r1, #0x18
	ldrh r1, [r6, r1]
	add r0, r0, #4
	orr r1, r2
	str r1, [r5, #0x18]
	ldrh r0, [r6, r0]
	lsl r2, r0, #0x10
	ldr r0, _0207C76C ; =0x04000130
	ldrh r1, [r0]
	ldr r0, _0207C770 ; =0x02FFFFA8
	ldrh r0, [r0]
	orr r0, r1
	orr r0, r2
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C75C: .word 0x04000006
_0207C760: .word 0x02FFFC00
_0207C764: .word 0x0214C578
_0207C768: .word 0x04000600
_0207C76C: .word 0x04000130
_0207C770: .word 0x02FFFFA8
	thumb_func_end sub_0207C6D0

	thumb_func_start sub_0207C774
sub_0207C774: ; 0x0207C774
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
	bl sub_0207C7DC
	pop {r4, pc}
	.align 2, 0
_0207C7C4: .word 0x0214C5D8
_0207C7C8: .word 0x04000208
	thumb_func_end sub_0207C774

