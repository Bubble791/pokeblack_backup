	.include "asm/macros.inc"
	.include "g3x.inc"
	.include "global.inc"

	.public GXi_DmaId

	.text

	thumb_func_start G3X_Init
G3X_Init: ; 0x02074C9C
	push {r4, r5, r6, lr}
	bl G3X_ClearFifo
	ldr r0, _02074D34 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	mov r1, #2
	add r0, #0xfc
	lsl r1, r1, #0x1a
_02074CAE:
	ldr r2, [r0]
	tst r2, r1
	bne _02074CAE
	ldr r4, _02074D38 ; =0x04000060
	mov r5, #0
	strh r5, [r4]
	add r1, r4, #0
	str r5, [r0]
	sub r1, #0x50
	str r5, [r1]
	ldrh r2, [r4]
	lsr r1, r4, #0xd
	ldr r6, _02074D3C ; =0x3FFFFFFF
	orr r1, r2
	strh r1, [r4]
	ldrh r2, [r4]
	lsr r1, r4, #0xe
	orr r1, r2
	strh r1, [r4]
	ldrh r2, [r4]
	ldr r1, _02074D40 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r4]
	ldrh r2, [r4]
	add r1, r1, #2
	and r2, r1
	mov r1, #0x10
	orr r2, r1
	strh r2, [r4]
	ldrh r3, [r4]
	ldr r2, _02074D44 ; =0x0000CFFB
	lsl r1, r1, #0xb
	and r2, r3
	strh r2, [r4]
	ldr r2, [r0]
	orr r1, r2
	str r1, [r0]
	ldr r1, [r0]
	add r2, r1, #0
	mov r1, #2
	and r2, r6
	lsl r1, r1, #0x1e
	orr r1, r2
	str r1, [r0]
	bl G3X_InitMtxStack
	ldr r1, _02074D48 ; =0x04000350
	lsr r0, r6, #0xf
	str r5, [r1]
	strh r0, [r1, #4]
	strh r5, [r1, #6]
	str r5, [r1, #8]
	sub r4, #0x58
	strh r5, [r1, #0xc]
	ldrh r1, [r4]
	mov r0, #3
	bic r1, r0
	strh r1, [r4]
	bl G3X_InitTable
	ldr r1, _02074D4C ; =0x001F0080
	ldr r0, _02074D50 ; =0x040004A4
	str r1, [r0]
	str r5, [r0, #4]
	str r5, [r0, #8]
	pop {r4, r5, r6, pc}
	nop
_02074D34: .word 0x04000504
_02074D38: .word 0x04000060
_02074D3C: .word 0x3FFFFFFF
_02074D40: .word 0xFFFFCFFD
_02074D44: .word 0x0000CFFB
_02074D48: .word 0x04000350
_02074D4C: .word 0x001F0080
_02074D50: .word 0x040004A4
	thumb_func_end G3X_Init

	thumb_func_start G3X_Reset
G3X_Reset: ; 0x02074D54
	push {r3, lr}
	mov r0, #2
	ldr r2, _02074D90 ; =0x04000600
	lsl r0, r0, #0x1a
_02074D5C:
	ldr r1, [r2]
	tst r1, r0
	bne _02074D5C
	mov r0, #2
	ldr r1, [r2]
	lsl r0, r0, #0xe
	orr r0, r1
	str r0, [r2]
	ldr r2, _02074D94 ; =0x04000060
	ldrh r1, [r2]
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	lsr r0, r2, #0xe
	orr r0, r1
	strh r0, [r2]
	bl G3X_ResetMtxStack
	ldr r0, _02074D98 ; =0x001F0080
	ldr r1, _02074D9C ; =0x040004A4
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_02074D90: .word 0x04000600
_02074D94: .word 0x04000060
_02074D98: .word 0x001F0080
_02074D9C: .word 0x040004A4
	thumb_func_end G3X_Reset

	thumb_func_start G3X_ClearFifo
G3X_ClearFifo: ; 0x02074DA0
	push {r4, lr}
	ldr r4, _02074DB8 ; =0x04000400
	add r0, r4, #0
	blx GXi_NopClearFifo128_
	ldr r2, _02074DBC ; =0x04000600
	lsl r0, r4, #0x11
_02074DAE:
	ldr r1, [r2]
	tst r1, r0
	bne _02074DAE
	pop {r4, pc}
	nop
_02074DB8: .word 0x04000400
_02074DBC: .word 0x04000600
	thumb_func_end G3X_ClearFifo

	thumb_func_start G3X_InitMtxStack
G3X_InitMtxStack: ; 0x02074DC0
	push {r4, lr}
	sub sp, #8
	ldr r2, _02074E18 ; =0x04000600
	ldr r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	str r0, [r2]
	add r4, sp, #4
_02074DD0:
	add r0, r4, #0
	bl G3X_GetMtxStackLevelPV
	cmp r0, #0
	bne _02074DD0
	add r4, sp, #0
_02074DDC:
	add r0, r4, #0
	bl G3X_GetMtxStackLevelPJ
	cmp r0, #0
	bne _02074DDC
	ldr r1, _02074E1C ; =0x04000440
	mov r0, #3
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1]
	ldr r0, [sp]
	cmp r0, #0
	beq _02074DFA
	str r0, [r1, #8]
_02074DFA:
	ldr r2, _02074E20 ; =0x04000454
	mov r3, #0
	add r0, r2, #0
	str r3, [r2]
	mov r1, #2
	sub r0, #0x14
	str r1, [r0]
	add r0, r2, #0
	ldr r1, [sp, #4]
	sub r0, #0xc
	str r1, [r0]
	str r3, [r2]
	add sp, #8
	pop {r4, pc}
	nop
_02074E18: .word 0x04000600
_02074E1C: .word 0x04000440
_02074E20: .word 0x04000454
	thumb_func_end G3X_InitMtxStack

	thumb_func_start G3X_ResetMtxStack
G3X_ResetMtxStack: ; 0x02074E24
	push {r4, lr}
	sub sp, #8
	ldr r2, _02074E70 ; =0x04000600
	ldr r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	str r0, [r2]
	add r4, sp, #4
_02074E34:
	add r0, r4, #0
	bl G3X_GetMtxStackLevelPV
	cmp r0, #0
	bne _02074E34
	add r4, sp, #0
_02074E40:
	add r0, r4, #0
	bl G3X_GetMtxStackLevelPJ
	cmp r0, #0
	bne _02074E40
	ldr r1, _02074E74 ; =0x04000440
	mov r0, #3
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1]
	ldr r0, [sp]
	cmp r0, #0
	beq _02074E5E
	str r0, [r1, #8]
_02074E5E:
	ldr r1, _02074E74 ; =0x04000440
	mov r0, #2
	str r0, [r1]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #0x14]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02074E70: .word 0x04000600
_02074E74: .word 0x04000440
	thumb_func_end G3X_ResetMtxStack

	thumb_func_start G3X_SetFog
G3X_SetFog: ; 0x02074E78
	push {r3, r4}
	cmp r0, #0
	beq _02074E9C
	ldr r0, _02074EAC ; =0x0400035C
	lsl r2, r2, #8
	strh r3, [r0]
	ldr r0, _02074EB0 ; =0x04000060
	lsl r1, r1, #6
	ldrh r4, [r0]
	ldr r3, _02074EB4 ; =0xFFFFC0BF
	orr r2, r1
	mov r1, #0x80
	and r3, r4
	orr r1, r2
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4}
	bx lr
_02074E9C:
	ldr r2, _02074EB0 ; =0x04000060
	ldr r0, _02074EB8 ; =0x0000CF7F
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	pop {r3, r4}
	bx lr
	nop
_02074EAC: .word 0x0400035C
_02074EB0: .word 0x04000060
_02074EB4: .word 0xFFFFC0BF
_02074EB8: .word 0x0000CF7F
	thumb_func_end G3X_SetFog

	thumb_func_start G3X_GetClipMtx
G3X_GetClipMtx: ; 0x02074EBC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02074EDC ; =0x04000600
	mov r2, #2
	ldr r3, [r0]
	lsl r2, r2, #0x1a
	tst r2, r3
	beq _02074ED2
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02074ED2:
	add r0, #0x40
	blx MI_Copy64B
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02074EDC: .word 0x04000600
	thumb_func_end G3X_GetClipMtx

	thumb_func_start G3X_GetVectorMtx
G3X_GetVectorMtx: ; 0x02074EE0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02074F00 ; =0x04000600
	mov r2, #2
	ldr r3, [r0]
	lsl r2, r2, #0x1a
	tst r2, r3
	beq _02074EF6
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02074EF6:
	add r0, #0x80
	blx MI_Copy36B
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02074F00: .word 0x04000600
	thumb_func_end G3X_GetVectorMtx

	thumb_func_start G3X_SetEdgeColorTable
G3X_SetEdgeColorTable: ; 0x02074F04
	ldr r1, _02074F0C ; =0x04000330
	ldr r3, _02074F10 ; =MIi_CpuCopy16
	mov r2, #0x10
	bx r3
	.align 2, 0
_02074F0C: .word 0x04000330
_02074F10: .word MIi_CpuCopy16
	thumb_func_end G3X_SetEdgeColorTable

	thumb_func_start G3X_SetFogTable
G3X_SetFogTable: ; 0x02074F14
	ldr r1, _02074F1C ; =0x04000360
	ldr r3, _02074F20 ; =MI_Copy32B
	bx r3
	nop
_02074F1C: .word 0x04000360
_02074F20: .word MI_Copy32B
	thumb_func_end G3X_SetFogTable

	thumb_func_start G3X_SetClearColor
G3X_SetClearColor: ; 0x02074F24
	lsl r1, r1, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, [sp]
	cmp r0, #0
	beq _02074F3A
	mov r0, #2
	lsl r0, r0, #0xe
	orr r1, r0
_02074F3A:
	ldr r0, _02074F44 ; =0x04000350
	str r1, [r0]
	strh r2, [r0, #4]
	bx lr
	nop
_02074F44: .word 0x04000350
	thumb_func_end G3X_SetClearColor

	thumb_func_start G3X_InitTable
G3X_InitTable: ; 0x02074F48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _02074FD4 ; =0x0209B528
	mov r1, #0
	ldr r0, [r4]
	mvn r1, r1
	cmp r0, r1
	beq _02074FA8
	cmp r0, #3
	ldr r5, _02074FD8 ; =0x04000330
	bls _02074F82
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r0, #4
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x10
	bl sub_02074FE0
	ldr r0, [r4]
	add r5, #0x30
	sub r0, r0, #4
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl sub_02074810
	b _02074FC0
_02074F82:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x10
	bl MIi_DmaFill32Async
	str r6, [sp]
	add r5, #0x30
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl MIi_DmaFill32
	b _02074FC0
_02074FA8:
	ldr r4, _02074FD8 ; =0x04000330
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x10
	blx MIi_CpuClear32
	add r4, #0x30
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x60
	blx MIi_CpuClear32
_02074FC0:
	mov r2, #0
	ldr r0, _02074FDC ; =0x040004D0
	add r1, r2, #0
_02074FC6:
	add r2, r2, #1
	str r1, [r0]
	cmp r2, #0x20
	blt _02074FC6
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02074FD4: .word 0x0209B528
_02074FD8: .word 0x04000330
_02074FDC: .word 0x040004D0
	thumb_func_end G3X_InitTable

	thumb_func_start sub_02074FE0
sub_02074FE0: ; 0x02074FE0
	bx pc
	nop
	thumb_func_end sub_02074FE0

	arm_func_start sub_02074FE4
sub_02074FE4: ; 0x02074FE4
	ldr ip, _02074FEC ; =sub_027681B8
	bx ip
	.align 2, 0
_02074FEC: .word sub_027681B8
	arm_func_end sub_02074FE4

	thumb_func_start G3X_GetMtxStackLevelPV
G3X_GetMtxStackLevelPV: ; 0x02074FF0
	ldr r3, _02075010 ; =0x04000600
	ldr r2, [r3]
	lsr r1, r3, #0xc
	tst r1, r2
	beq _02075000
	mov r0, #0
	mvn r0, r0
	bx lr
_02075000:
	mov r1, #0x1f
	ldr r2, [r3]
	lsl r1, r1, #8
	and r1, r2
	lsr r1, r1, #8
	str r1, [r0]
	mov r0, #0
	bx lr
	.align 2, 0
_02075010: .word 0x04000600
	thumb_func_end G3X_GetMtxStackLevelPV

	thumb_func_start G3X_GetMtxStackLevelPJ
G3X_GetMtxStackLevelPJ: ; 0x02075014
	ldr r3, _02075034 ; =0x04000600
	ldr r2, [r3]
	lsr r1, r3, #0xc
	tst r1, r2
	beq _02075024
	mov r0, #0
	mvn r0, r0
	bx lr
_02075024:
	ldr r2, [r3]
	lsr r1, r3, #0xd
	and r1, r2
	lsr r1, r1, #0xd
	str r1, [r0]
	mov r0, #0
	bx lr
	nop
_02075034: .word 0x04000600
	thumb_func_end G3X_GetMtxStackLevelPJ

	thumb_func_start G3X_SetDisp1DotDepth
G3X_SetDisp1DotDepth: ; 0x02075038
	asr r1, r0, #9
	ldr r0, _02075044 ; =0x00007FFF
	and r1, r0
	ldr r0, _02075048 ; =0x04000610
	strh r1, [r0]
	bx lr
	.align 2, 0
_02075044: .word 0x00007FFF
_02075048: .word 0x04000610
	thumb_func_end G3X_SetDisp1DotDepth

	thumb_func_start G3X_GetBoxTestResult
G3X_GetBoxTestResult: ; 0x0207504C
	ldr r3, _02075068 ; =0x04000600
	mov r1, #1
	ldr r2, [r3]
	tst r2, r1
	beq _0207505A
	sub r0, r1, #2
	bx lr
_0207505A:
	ldr r2, [r3]
	mov r1, #2
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bx lr
	nop
_02075068: .word 0x04000600
	thumb_func_end G3X_GetBoxTestResult

	arm_func_start GXi_NopClearFifo128_
GXi_NopClearFifo128_: ; 0x0207506C
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	bx lr
	arm_func_end GXi_NopClearFifo128_
