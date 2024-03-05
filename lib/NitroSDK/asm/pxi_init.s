	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start PXI_Init
PXI_Init: ; 0x0207C94C
	ldr r3, _0207C950 ; =PXI_InitFifo
	bx r3
	.align 2, 0
_0207C950: .word PXI_InitFifo
	thumb_func_end PXI_Init

	thumb_func_start PXI_InitFifo
PXI_InitFifo: ; 0x0207C954
	push {r3, r4, r5, r6, r7, lr}
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, _0207C9E4 ; =0x0214C5E4
	ldrh r1, [r0]
	cmp r1, #0
	bne _0207C9DA
	mov r1, #1
	strh r1, [r0]
	mov r0, #0xe2
	mov r2, #0
	ldr r1, _0207C9E8 ; =0x02FFFC00
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, _0207C9EC ; =0x0214C5E8
	add r4, r2, #0
_0207C976:
	lsl r1, r2, #2
	add r2, r2, #1
	str r4, [r0, r1]
	cmp r2, #0x20
	blt _0207C976
	mov r6, #1
	ldr r0, _0207C9F0 ; =0x0000C408
	ldr r5, _0207C9F4 ; =0x04000184
	lsl r6, r6, #0x12
	strh r0, [r5]
	add r0, r6, #0
	bl OS_ResetRequestIrqMask
	ldr r1, _0207C9F8 ; =PXIi_HandlerRecvFifoNotEmpty
	add r0, r6, #0
	bl OS_SetIrqFunction
	add r0, r6, #0
	bl OS_EnableIrqMask
	sub r0, r5, #4
	mov r3, #0xf
	mov r7, #0xf
	mov r5, #0xf
_0207C9A6:
	ldrh r1, [r0]
	add r2, r1, #0
	and r2, r5
	lsl r1, r2, #8
	strh r1, [r0]
	cmp r2, #0
	bne _0207C9B8
	cmp r4, #4
	bgt _0207C9DA
_0207C9B8:
	ldrh r6, [r0]
	mov r1, #0xfa
	lsl r1, r1, #2
	and r6, r7
	cmp r6, r2
	bne _0207C9D6
_0207C9C4:
	cmp r1, #0
	bgt _0207C9CC
	mov r4, #0
	b _0207C9D6
_0207C9CC:
	ldrh r6, [r0]
	sub r1, r1, #1
	and r6, r3
	cmp r6, r2
	beq _0207C9C4
_0207C9D6:
	add r4, r4, #1
	b _0207C9A6
_0207C9DA:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207C9E4: .word 0x0214C5E4
_0207C9E8: .word 0x02FFFC00
_0207C9EC: .word 0x0214C5E8
_0207C9F0: .word 0x0000C408
_0207C9F4: .word 0x04000184
_0207C9F8: .word PXIi_HandlerRecvFifoNotEmpty
	thumb_func_end PXI_InitFifo

	thumb_func_start PXI_SetFifoRecvCallback
PXI_SetFifoRecvCallback: ; 0x0207C9FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	blx OS_DisableInterrupts
	add r2, r0, #0
	lsl r1, r5, #2
	ldr r0, _0207CA40 ; =0x0214C5E8
	cmp r4, #0
	str r4, [r0, r1]
	beq _0207CA24
	mov r1, #0xe2
	mov r3, #1
	ldr r0, _0207CA44 ; =0x02FFFC00
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	lsl r3, r5
	orr r3, r4
	str r3, [r0, r1]
	b _0207CA36
_0207CA24:
	mov r3, #0xe2
	mov r4, #1
	lsl r4, r5
	ldr r1, _0207CA44 ; =0x02FFFC00
	lsl r3, r3, #2
	ldr r0, [r1, r3]
	mvn r4, r4
	and r0, r4
	str r0, [r1, r3]
_0207CA36:
	add r0, r2, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	nop
_0207CA40: .word 0x0214C5E8
_0207CA44: .word 0x02FFFC00
	thumb_func_end PXI_SetFifoRecvCallback

	thumb_func_start PXI_IsCallbackReady
PXI_IsCallbackReady: ; 0x0207CA48
	push {r3, r4}
	mov r2, #1
	lsl r2, r0
	ldr r4, _0207CA68 ; =0x02FFFC00
	lsl r0, r1, #2
	add r1, r4, r0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r3, #1
	tst r0, r2
	bne _0207CA62
	mov r3, #0
_0207CA62:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_0207CA68: .word 0x02FFFC00
	thumb_func_end PXI_IsCallbackReady

	thumb_func_start PXI_SendWordByFifo
PXI_SendWordByFifo: ; 0x0207CA6C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, [sp]
	mov r3, #0x1f
	bic r4, r3
	mov r3, #0x1f
	and r0, r3
	add r3, r4, #0
	orr r3, r0
	mov r0, #0x20
	bic r3, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1a
	add r2, r3, #0
	orr r2, r0
	mov r0, #0x3f
	and r2, r0
	ldr r5, _0207CAD0 ; =0x04000184
	add r4, r2, #0
	lsl r1, r1, #6
	orr r4, r1
	ldrh r2, [r5]
	lsr r1, r5, #0xc
	tst r1, r2
	beq _0207CAAE
	ldrh r2, [r5]
	mov r1, #3
	lsl r1, r1, #0xe
	orr r1, r2
	add sp, #4
	strh r1, [r5]
	sub r0, #0x40
	pop {r3, r4, r5, r6, pc}
_0207CAAE:
	blx OS_DisableInterrupts
	ldrh r1, [r5]
	mov r6, #2
	tst r1, r6
	beq _0207CAC4
	blx OS_RestoreInterrupts
	add sp, #4
	sub r0, r6, #4
	pop {r3, r4, r5, r6, pc}
_0207CAC4:
	str r4, [r5, #4]
	blx OS_RestoreInterrupts
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0207CAD0: .word 0x04000184
	thumb_func_end PXI_SendWordByFifo

	thumb_func_start PXIi_HandlerRecvFifoNotEmpty
PXIi_HandlerRecvFifoNotEmpty: ; 0x0207CAD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _0207CB80 ; =0x04000184
	mov r6, #3
	lsr r0, r4, #0xc
	str r0, [sp, #8]
	lsr r0, r4, #0x12
	mvn r6, r6
	str r0, [sp]
	add r0, r6, #1
	ldr r5, [sp, #0xc]
	str r0, [sp, #4]
	lsr r7, r4, #0xc
_0207CAEE:
	ldrh r0, [r4]
	tst r0, r7
	beq _0207CB02
	ldrh r1, [r4]
	mov r0, #3
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r4]
	add r1, r6, #1
	b _0207CB22
_0207CB02:
	blx OS_DisableInterrupts
	ldrh r2, [r4]
	ldr r1, [sp]
	tst r1, r2
	beq _0207CB16
	blx OS_RestoreInterrupts
	add r1, r6, #0
	b _0207CB22
_0207CB16:
	mov r1, #0x41
	lsl r1, r1, #0x14
	ldr r5, [r1]
	blx OS_RestoreInterrupts
	mov r1, #0
_0207CB22:
	cmp r1, r6
	beq _0207CB7A
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _0207CAEE
	lsl r0, r5, #0x1b
	lsr r0, r0, #0x1b
	beq _0207CAEE
	ldr r1, _0207CB84 ; =0x0214C5E8
	lsl r2, r0, #2
	ldr r3, [r1, r2]
	cmp r3, #0
	beq _0207CB46
	lsl r2, r5, #0x1a
	lsr r1, r5, #6
	lsr r2, r2, #0x1f
	blx r3
	b _0207CAEE
_0207CB46:
	lsl r0, r5, #0x1a
	lsr r0, r0, #0x1f
	bne _0207CAEE
	mov r0, #0x20
	orr r5, r0
	ldrh r1, [r4]
	ldr r0, [sp, #8]
	tst r0, r1
	beq _0207CB64
	ldrh r1, [r4]
	mov r0, #3
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r4]
	b _0207CAEE
_0207CB64:
	blx OS_DisableInterrupts
	ldrh r2, [r4]
	mov r1, #2
	tst r1, r2
	beq _0207CB72
	b _0207CB74
_0207CB72:
	str r5, [r4, #4]
_0207CB74:
	blx OS_RestoreInterrupts
	b _0207CAEE
_0207CB7A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207CB80: .word 0x04000184
_0207CB84: .word 0x0214C5E8
	thumb_func_end PXIi_HandlerRecvFifoNotEmpty