	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start OS_InitMessageQueue
OS_InitMessageQueue: ; 0x0207ACC4
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0]
	str r3, [r0, #0xc]
	str r3, [r0, #8]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	bx lr
	thumb_func_end OS_InitMessageQueue

	thumb_func_start OS_SendMessage
OS_SendMessage: ; 0x0207ACD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	cmp r1, r0
	bgt _0207AD0E
	mov r0, #1
	and r5, r0
_0207ACF2:
	cmp r5, #0
	bne _0207AD00
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AD00:
	add r0, r4, #0
	bl OS_SleepThread
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	cmp r1, r0
	ble _0207ACF2
_0207AD0E:
	ldr r2, [r4, #0x18]
	add r0, r2, r0
	blx sub_0208D65C
	ldr r2, [r4, #0x10]
	lsl r0, r1, #2
	str r6, [r2, r0]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add r4, #8
	add r0, r4, #0
	bl OS_WakeupThread
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end OS_SendMessage

	thumb_func_start OS_ReceiveMessage
OS_ReceiveMessage: ; 0x0207AD34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0207AD6A
	mov r0, #1
	add r6, r5, #0
	and r4, r0
	add r6, #8
_0207AD50:
	cmp r4, #0
	bne _0207AD5E
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AD5E:
	add r0, r6, #0
	bl OS_SleepThread
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0207AD50
_0207AD6A:
	cmp r7, #0
	beq _0207AD78
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r7]
_0207AD78:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	blx sub_0208D65C
	ldr r0, [r5, #0x1c]
	str r1, [r5, #0x18]
	sub r0, r0, #1
	str r0, [r5, #0x1c]
	add r0, r5, #0
	bl OS_WakeupThread
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end OS_ReceiveMessage

	thumb_func_start OS_JamMessage
OS_JamMessage: ; 0x0207AD9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	bgt _0207ADD2
	mov r0, #1
	and r5, r0
_0207ADB6:
	cmp r5, #0
	bne _0207ADC4
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207ADC4:
	add r0, r4, #0
	bl OS_SleepThread
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0207ADB6
_0207ADD2:
	ldr r0, [r4, #0x18]
	add r0, r0, r1
	sub r0, r0, #1
	blx sub_0208D65C
	ldr r2, [r4, #0x10]
	str r1, [r4, #0x18]
	lsl r0, r1, #2
	str r6, [r2, r0]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	add r4, #8
	add r0, r4, #0
	bl OS_WakeupThread
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end OS_JamMessage

	thumb_func_start OS_ReadMessage
OS_ReadMessage: ; 0x0207ADFC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _0207AE32
	mov r0, #1
	add r6, r5, #0
	and r4, r0
	add r6, #8
_0207AE18:
	cmp r4, #0
	bne _0207AE26
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207AE26:
	add r0, r6, #0
	bl OS_SleepThread
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0207AE18
_0207AE32:
	cmp r7, #0
	beq _0207AE40
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r7]
_0207AE40:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end OS_ReadMessage