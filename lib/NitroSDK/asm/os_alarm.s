	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start OSi_SetTimer
OSi_SetTimer: ; 0x0207BB90
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl OS_GetTick
	ldr r2, _0207BBE4 ; =0x04000106
	mov r6, #0
	strh r6, [r2]
	ldr r2, [r4, #0xc]
	ldr r4, [r4, #0x10]
	sub r5, r2, r0
	sbc r4, r1
	ldr r1, _0207BBE8 ; =OSi_AlarmHandler
	mov r0, #1
	mov r2, #0
	bl OSi_EnterTimerCallback
	mov r1, #0
	mov r0, #0
	sub r1, r5, r1
	mov ip, r4
	mov r1, ip
	sbc r1, r0
	bge _0207BBC2
	ldr r6, _0207BBEC ; =0x0000FFFE
	b _0207BBD4
_0207BBC2:
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #0x10
	sub r0, r5, r0
	sbc r4, r1
	bge _0207BBD4
	mvn r0, r5
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_0207BBD4:
	ldr r1, _0207BBF0 ; =0x04000104
	mov r0, #0xc1
	strh r6, [r1]
	strh r0, [r1, #2]
	mov r0, #0x10
	bl OS_EnableIrqMask
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207BBE4: .word 0x04000106
_0207BBE8: .word OSi_AlarmHandler
_0207BBEC: .word 0x0000FFFE
_0207BBF0: .word 0x04000104
	thumb_func_end OSi_SetTimer

	thumb_func_start OS_InitAlarm
OS_InitAlarm: ; 0x0207BBF4
	push {r4, lr}
	ldr r4, _0207BC14 ; =0x0214C580
	ldrh r0, [r4]
	cmp r0, #0
	bne _0207BC12
	mov r0, #1
	strh r0, [r4]
	bl OSi_SetTimerReserved
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	mov r0, #0x10
	bl OS_DisableIrqMask
_0207BC12:
	pop {r4, pc}
	.align 2, 0
_0207BC14: .word 0x0214C580
	thumb_func_end OS_InitAlarm

	thumb_func_start OS_IsAlarmAvailable
OS_IsAlarmAvailable: ; 0x0207BC18
	ldr r0, _0207BC20 ; =0x0214C580
	ldrh r0, [r0]
	bx lr
	nop
_0207BC20: .word 0x0214C580
	thumb_func_end OS_IsAlarmAvailable

	thumb_func_start OS_CreateAlarm
OS_CreateAlarm: ; 0x0207BC24
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	bx lr
	thumb_func_end OS_CreateAlarm

	thumb_func_start OSi_InsertAlarm
OSi_InsertAlarm: ; 0x0207BC2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	ldr r2, [r4, #0x1c]
	mov r1, #0
	ldr r3, [r4, #0x20]
	mov r0, #0
	eor r0, r3
	eor r1, r2
	orr r0, r1
	beq _0207BC82
	bl OS_GetTick
	ldr r6, [r4, #0x24]
	ldr r7, [r4, #0x28]
	sub r2, r6, r0
	mov ip, r7
	mov r2, ip
	sbc r2, r1
	bhs _0207BC82
	ldr r2, [r4, #0x1c]
	sub r0, r0, r6
	str r2, [sp]
	ldr r2, [r4, #0x20]
	sbc r1, r7
	str r2, [sp, #4]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r5, #0
	add r2, r2, #1
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adc r3, r5
	blx sub_0208D60C
	add r6, r6, r0
	adc r7, r1
_0207BC82:
	ldr r0, _0207BCF0 ; =0x0214C580
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
	ldr r5, [r0, #4]
	cmp r5, #0
	beq _0207BCCC
_0207BC8E:
	ldr r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	sub r3, r6, r2
	mov ip, r7
	mov r2, ip
	sbc r2, r0
	mov r1, #0
	mov r0, #0
	sub r0, r3, r0
	sbc r2, r1
	bge _0207BCC6
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	str r4, [r5, #0x14]
	ldr r0, [r4, #0x14]
	str r5, [r4, #0x18]
	cmp r0, #0
	beq _0207BCB8
	add sp, #8
	str r4, [r0, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_0207BCB8:
	ldr r0, _0207BCF0 ; =0x0214C580
	str r4, [r0, #4]
	add r0, r4, #0
	bl OSi_SetTimer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207BCC6:
	ldr r5, [r5, #0x18]
	cmp r5, #0
	bne _0207BC8E
_0207BCCC:
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _0207BCF0 ; =0x0214C580
	ldr r1, [r0, #8]
	str r4, [r0, #8]
	str r1, [r4, #0x14]
	cmp r1, #0
	beq _0207BCE2
	add sp, #8
	str r4, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_0207BCE2:
	str r4, [r0, #8]
	str r4, [r0, #4]
	add r0, r4, #0
	bl OSi_SetTimer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207BCF0: .word 0x0214C580
	thumb_func_end OSi_InsertAlarm

	thumb_func_start OS_SetAlarm
OS_SetAlarm: ; 0x0207BCF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	beq _0207BD08
	ldr r0, [r5]
	cmp r0, #0
	beq _0207BD0C
_0207BD08:
	bl OS_Terminate
_0207BD0C:
	blx OS_DisableInterrupts
	str r0, [sp]
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x18]
	str r7, [r5]
	str r0, [r5, #4]
	bl OS_GetTick
	add r2, r0, #0
	add r3, r1, #0
	add r0, r5, #0
	add r1, r4, r2
	adc r6, r3
	add r2, r6, #0
	bl OSi_InsertAlarm
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end OS_SetAlarm

	thumb_func_start OS_CancelAlarm
OS_CancelAlarm: ; 0x0207BD3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	bne _0207BD52
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
_0207BD52:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0207BD60
	ldr r2, [r5, #0x14]
	ldr r1, _0207BD8C ; =0x0214C580
	str r2, [r1, #8]
	b _0207BD64
_0207BD60:
	ldr r1, [r5, #0x14]
	str r1, [r0, #0x14]
_0207BD64:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0207BD6E
	str r0, [r1, #0x18]
	b _0207BD7A
_0207BD6E:
	ldr r1, _0207BD8C ; =0x0214C580
	cmp r0, #0
	str r0, [r1, #4]
	beq _0207BD7A
	bl OSi_SetTimer
_0207BD7A:
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	nop
_0207BD8C: .word 0x0214C580
	thumb_func_end OS_CancelAlarm

	arm_func_start OSi_AlarmHandler
OSi_AlarmHandler: ; 0x0207BD90
	stmfd sp!, {r0, lr}
	blx OSi_ArrangeTimer
	ldmfd sp!, {r0, lr}
	bx lr
	arm_func_end OSi_AlarmHandler

	thumb_func_start OSi_ArrangeTimer
OSi_ArrangeTimer: ; 0x0207BDA0
	push {r4, r5, r6, lr}
	ldr r0, _0207BE30 ; =0x04000106
	mov r4, #0
	strh r4, [r0]
	mov r0, #0x10
	mov r5, #0x10
	bl OS_DisableIrqMask
	ldr r2, _0207BE34 ; =0x02FE0000
	ldr r0, _0207BE38 ; =0x00003FF8
	ldr r1, [r2, r0]
	orr r1, r5
	str r1, [r2, r0]
	bl OS_GetTick
	ldr r2, _0207BE3C ; =0x0214C580
	ldr r5, [r2, #4]
	cmp r5, #0
	beq _0207BE2C
	ldr r3, [r5, #0xc]
	ldr r6, [r5, #0x10]
	sub r0, r0, r3
	sbc r1, r6
	bhs _0207BDD8
	add r0, r5, #0
	bl OSi_SetTimer
	pop {r4, r5, r6, pc}
_0207BDD8:
	ldr r0, [r5, #0x18]
	str r0, [r2, #4]
	cmp r0, #0
	bne _0207BDE4
	str r4, [r2, #8]
	b _0207BDE6
_0207BDE4:
	str r4, [r0, #0x14]
_0207BDE6:
	ldr r2, [r5, #0x1c]
	mov r0, #0
	ldr r3, [r5, #0x20]
	mov r1, #0
	eor r1, r3
	eor r0, r2
	ldr r4, [r5]
	orr r0, r1
	bne _0207BDFC
	mov r0, #0
	str r0, [r5]
_0207BDFC:
	cmp r4, #0
	beq _0207BE04
	ldr r0, [r5, #4]
	blx r4
_0207BE04:
	ldr r2, [r5, #0x1c]
	mov r0, #0
	ldr r3, [r5, #0x20]
	mov r1, #0
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _0207BE20
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	str r4, [r5]
	bl OSi_InsertAlarm
_0207BE20:
	ldr r0, _0207BE3C ; =0x0214C580
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0207BE2C
	bl OSi_SetTimer
_0207BE2C:
	pop {r4, r5, r6, pc}
	nop
_0207BE30: .word 0x04000106
_0207BE34: .word 0x02FE0000
_0207BE38: .word 0x00003FF8
_0207BE3C: .word 0x0214C580
	thumb_func_end OSi_ArrangeTimer
