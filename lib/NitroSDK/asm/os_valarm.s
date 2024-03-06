	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start OS_InitVAlarm
OS_InitVAlarm: ; 0x0207BE40
	push {r3, r4, r5, lr}
	ldr r4, _0207BE60 ; =0x0214C58C
	ldrh r0, [r4]
	cmp r0, #0
	bne _0207BE5E
	mov r0, #1
	strh r0, [r4]
	mov r5, #0
	str r5, [r4, #0xc]
	mov r0, #4
	str r5, [r4, #0x10]
	bl OS_DisableIrqMask
	str r5, [r4, #8]
	str r5, [r4, #4]
_0207BE5E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207BE60: .word 0x0214C58C
	thumb_func_end OS_InitVAlarm

	thumb_func_start OSi_InsertVAlarm
OSi_InsertVAlarm: ; 0x0207BE64
	push {r4, r5, r6, lr}
	ldr r1, _0207BEAC ; =0x0214C58C
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _0207BEA6
	ldr r2, [r0, #0xc]
	mov r3, #0x10
	mov r4, #0x10
_0207BE74:
	ldr r5, [r1, #0xc]
	cmp r5, r2
	blo _0207BEA0
	cmp r5, r2
	bne _0207BE86
	ldrsh r6, [r1, r3]
	ldrsh r5, [r0, r4]
	cmp r6, r5
	ble _0207BEA0
_0207BE86:
	ldr r2, [r1, #0x14]
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	str r0, [r1, #0x14]
	cmp r2, #0
	beq _0207BE96
	str r0, [r2, #0x18]
	pop {r4, r5, r6, pc}
_0207BE96:
	ldr r1, _0207BEAC ; =0x0214C58C
	str r0, [r1, #0xc]
	bl OSi_SetNextVAlarm
	pop {r4, r5, r6, pc}
_0207BEA0:
	ldr r1, [r1, #0x18]
	cmp r1, #0
	bne _0207BE74
_0207BEA6:
	bl OSi_AppendVAlarm
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207BEAC: .word 0x0214C58C
	thumb_func_end OSi_InsertVAlarm

	thumb_func_start OSi_AppendVAlarm
OSi_AppendVAlarm: ; 0x0207BEB0
	push {r3, lr}
	ldr r1, _0207BED0 ; =0x0214C58C
	mov r2, #0
	ldr r3, [r1, #0x10]
	str r3, [r0, #0x14]
	str r2, [r0, #0x18]
	str r0, [r1, #0x10]
	cmp r3, #0
	beq _0207BEC6
	str r0, [r3, #0x18]
	pop {r3, pc}
_0207BEC6:
	str r0, [r1, #0xc]
	bl OSi_SetNextVAlarm
	pop {r3, pc}
	nop
_0207BED0: .word 0x0214C58C
	thumb_func_end OSi_AppendVAlarm

	thumb_func_start OSi_DetachVAlarm
OSi_DetachVAlarm: ; 0x0207BED4
	cmp r0, #0
	beq _0207BEF4
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x14]
	cmp r2, #0
	beq _0207BEE4
	str r1, [r2, #0x14]
	b _0207BEE8
_0207BEE4:
	ldr r0, _0207BEF8 ; =0x0214C58C
	str r1, [r0, #0x10]
_0207BEE8:
	cmp r1, #0
	beq _0207BEF0
	str r2, [r1, #0x18]
	bx lr
_0207BEF0:
	ldr r0, _0207BEF8 ; =0x0214C58C
	str r2, [r0, #0xc]
_0207BEF4:
	bx lr
	nop
_0207BEF8: .word 0x0214C58C
	thumb_func_end OSi_DetachVAlarm

	thumb_func_start OS_CreateVAlarm
OS_CreateVAlarm: ; 0x0207BEFC
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end OS_CreateVAlarm

	thumb_func_start OS_SetVAlarm
OS_SetVAlarm: ; 0x0207BF08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	cmp r5, #0
	beq _0207BF24
	ldr r0, [r5]
	cmp r0, #0
	beq _0207BF28
_0207BF24:
	bl OS_Terminate
_0207BF28:
	ldr r0, _0207BF60 ; =0x04000006
	ldrh r0, [r0]
	str r0, [sp, #4]
	bl OSi_GetVFrame
	mov r1, #0
	str r1, [r5, #0x1c]
	ldr r1, [sp, #4]
	strh r4, [r5, #0x10]
	cmp r4, r1
	bgt _0207BF40
	add r0, r0, #1
_0207BF40:
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	strh r6, [r5, #0x12]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x24]
	add r0, r5, #0
	str r7, [r5]
	bl OSi_InsertVAlarm
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207BF60: .word 0x04000006
	thumb_func_end OS_SetVAlarm

	thumb_func_start OSi_SetNextVAlarm
OSi_SetNextVAlarm: ; 0x0207BF64
	push {r4, lr}
	ldr r1, _0207BF8C ; =OSi_VAlarmHandler
	add r4, r0, #0
	mov r0, #4
	bl OS_SetIrqFunction
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	bl GX_SetVCountEqVal
	ldr r2, _0207BF90 ; =0x04000004
	mov r0, #0x20
	ldrh r1, [r2]
	orr r0, r1
	strh r0, [r2]
	mov r0, #4
	bl OS_EnableIrqMask
	pop {r4, pc}
	nop
_0207BF8C: .word OSi_VAlarmHandler
_0207BF90: .word 0x04000004
	thumb_func_end OSi_SetNextVAlarm

	thumb_func_start OSi_VAlarmHandler
OSi_VAlarmHandler: ; 0x0207BF94
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #4
	mov r4, #4
	bl OS_DisableIrqMask
	ldr r6, _0207C060 ; =0x04000004
	ldr r0, _0207C064 ; =0x0000FFDF
	ldrh r1, [r6]
	ldr r2, _0207C068 ; =0x02FE0000
	and r0, r1
	strh r0, [r6]
	ldr r0, _0207C06C ; =0x00003FF8
	ldr r1, [r2, r0]
	orr r1, r4
	str r1, [r2, r0]
	ldrh r1, [r6]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	lsl r1, r1, #1
	lsl r0, r6, #6
	and r0, r1
	orr r0, r2
	sub r0, r0, #1
	bl OSi_GetVFrame
	ldr r0, _0207C070 ; =0x0214C58C
	ldr r4, [r0, #0xc]
	cmp r4, #0
	beq _0207C05C
_0207BFD0:
	ldrh r5, [r6, #2]
	add r0, r5, #0
	bl OSi_GetVFrame
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl OSi_CompareVCount
	cmp r0, #0
	beq _0207BFF2
	cmp r0, #1
	beq _0207C01C
	cmp r0, #2
	beq _0207C040
	b _0207C054
_0207BFF2:
	add r0, r4, #0
	bl OSi_SetNextVAlarm
	mov r0, #0x10
	ldrh r1, [r6, #2]
	ldrsh r0, [r4, r0]
	cmp r0, r1
	bne _0207C05C
	ldr r0, [r4, #0xc]
	cmp r0, r7
	bne _0207C05C
	mov r0, #4
	bl OS_DisableIrqMask
	ldrh r1, [r6]
	ldr r0, _0207C064 ; =0x0000FFDF
	and r0, r1
	strh r0, [r6]
	mov r0, #4
	bl OS_ResetRequestIrqMask
_0207C01C:
	ldr r5, [r4]
	add r0, r4, #0
	bl OSi_DetachVAlarm
	mov r0, #0
	str r0, [r4]
	cmp r5, #0
	beq _0207C030
	ldr r0, [r4, #4]
	blx r5
_0207C030:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0207C054
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0207C054
	str r5, [r4]
	b _0207C046
_0207C040:
	add r0, r4, #0
	bl OSi_DetachVAlarm
_0207C046:
	ldr r0, _0207C070 ; =0x0214C58C
	ldr r0, [r0, #8]
	add r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl OSi_InsertVAlarm
_0207C054:
	ldr r0, _0207C070 ; =0x0214C58C
	ldr r4, [r0, #0xc]
	cmp r4, #0
	bne _0207BFD0
_0207C05C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C060: .word 0x04000004
_0207C064: .word 0x0000FFDF
_0207C068: .word 0x02FE0000
_0207C06C: .word 0x00003FF8
_0207C070: .word 0x0214C58C
	thumb_func_end OSi_VAlarmHandler

	thumb_func_start OSi_CompareVCount
OSi_CompareVCount: ; 0x0207C074
	ldr r3, [r0, #0xc]
	sub r3, r1, r3
	mov r1, #0x10
	ldrsh r1, [r0, r1]
	sub r2, r2, r1
	cmp r3, #0
	blt _0207C088
	bne _0207C08C
	cmp r2, #0
	bge _0207C08C
_0207C088:
	mov r0, #0
	bx lr
_0207C08C:
	cmp r2, #0
	bge _0207C094
	ldr r1, _0207C0A4 ; =0x00000107
	add r2, r2, r1
_0207C094:
	mov r1, #0x12
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bgt _0207C0A0
	mov r0, #1
	bx lr
_0207C0A0:
	mov r0, #2
	bx lr
	.align 2, 0
_0207C0A4: .word 0x00000107
	thumb_func_end OSi_CompareVCount

	thumb_func_start OSi_GetVFrame
OSi_GetVFrame: ; 0x0207C0A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	ldr r1, _0207C0CC ; =0x0214C58C
	ldr r2, [r1, #4]
	cmp r4, r2
	bge _0207C0BE
	ldr r2, [r1, #8]
	add r2, r2, #1
	str r2, [r1, #8]
_0207C0BE:
	ldr r5, _0207C0CC ; =0x0214C58C
	str r4, [r5, #4]
	blx OS_RestoreInterrupts
	ldr r0, [r5, #8]
	pop {r3, r4, r5, pc}
	nop
_0207C0CC: .word 0x0214C58C
	thumb_func_end OSi_GetVFrame

