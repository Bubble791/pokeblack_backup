	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start OSi_SyncWithOtherProc
OSi_SyncWithOtherProc: ; 0x02079F5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	cmp r0, #0
	bne _02079F9A
	mov r6, #0
	strb r6, [r5, #2]
	mov r4, #1
	lsl r4, r4, #0xa
	mov r7, #0x80
_02079F6E:
	mov r0, #0xf
	and r0, r6
	orr r0, r7
	strb r0, [r5]
	b _02079F7E
_02079F78:
	add r0, r4, #0
	bl SVC_WaitByLoop
_02079F7E:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	cmp r1, r0
	beq _02079F8C
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _02079F78
_02079F8C:
	ldrb r0, [r5, #2]
	add r6, r6, #1
	cmp r0, #0
	beq _02079F6E
	mov r0, #1
	strb r0, [r5, #3]
	pop {r3, r4, r5, r6, r7, pc}
_02079F9A:
	mov r4, #0
	strb r4, [r5, #1]
	mov r7, #1
	mov r6, #3
	lsl r7, r7, #0xa
	lsl r6, r6, #8
_02079FA6:
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	cmp r1, r0
	beq _02079FB8
	ldrb r0, [r5]
	strb r0, [r5, #1]
	ldrb r0, [r5, #1]
	add r4, r4, r0
	b _02079FBE
_02079FB8:
	add r0, r7, #0
	bl SVC_WaitByLoop
_02079FBE:
	cmp r4, r6
	blt _02079FA6
	mov r0, #0
	strb r0, [r5, #3]
	mov r0, #1
	strb r0, [r5, #2]
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _02079FE0
	mov r4, #1
	lsl r4, r4, #0xa
_02079FD4:
	add r0, r4, #0
	bl SVC_WaitByLoop
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _02079FD4
_02079FE0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end OSi_SyncWithOtherProc

	thumb_func_start OS_InitLock
OS_InitLock: ; 0x02079FE4
	push {r4, lr}
	ldr r0, _0207A030 ; =0x0214C20C
	ldr r1, [r0]
	cmp r1, #0
	bne _0207A02C
	mov r1, #1
	str r1, [r0]
	ldr r4, _0207A034 ; =0x02FFFFB0
	sub r0, r1, #2
	str r0, [r4]
	ldr r0, _0207A038 ; =0xFFFF0000
	add r1, r4, #0
	str r0, [r4, #4]
	mov r0, #0
	add r1, #0x10
	mov r2, #0x28
	blx MIi_CpuClear32
	ldr r2, _0207A03C ; =0x04000204
	add r4, #0x40
	ldrh r1, [r2]
	lsr r0, r2, #0xf
	orr r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r4, #0
	bl OSi_SyncWithOtherProc
	mov r0, #1
	add r1, r4, #0
	bl OSi_SyncWithOtherProc
_0207A02C:
	pop {r4, pc}
	nop
_0207A030: .word 0x0214C20C
_0207A034: .word 0x02FFFFB0
_0207A038: .word 0xFFFF0000
_0207A03C: .word 0x04000204
	thumb_func_end OS_InitLock

	thumb_func_start OSi_DoLockByWord
OSi_DoLockByWord: ; 0x0207A040
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl OSi_DoTryLockByWord
	cmp r0, #0
	ble _0207A06A
_0207A052:
	mov r0, #1
	lsl r0, r0, #0xa
	bl SVC_WaitByLoop
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl OSi_DoTryLockByWord
	cmp r0, #0
	bgt _0207A052
_0207A06A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end OSi_DoLockByWord

	thumb_func_start OS_LockByWord
OS_LockByWord: ; 0x0207A06C
	push {r3, lr}
	mov r3, #0
	bl OSi_DoLockByWord
	pop {r3, pc}
	.align 2, 0
	thumb_func_end OS_LockByWord

	thumb_func_start OSi_DoUnlockByWord
OSi_DoUnlockByWord: ; 0x0207A078
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5, #4]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, r1
	beq _0207A08C
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0207A08C:
	cmp r6, #0
	beq _0207A096
	blx OS_DisableInterrupts_IrqAndFiq
	b _0207A09A
_0207A096:
	blx OS_DisableInterrupts
_0207A09A:
	add r7, r0, #0
	mov r0, #0
	strh r0, [r5, #4]
	cmp r4, #0
	beq _0207A0A6
	blx r4
_0207A0A6:
	mov r0, #0
	str r0, [r5]
	cmp r6, #0
	beq _0207A0B6
	add r0, r7, #0
	blx OS_RestoreInterrupts_IrqAndFiq
	b _0207A0BC
_0207A0B6:
	add r0, r7, #0
	blx OS_RestoreInterrupts
_0207A0BC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end OSi_DoUnlockByWord

	thumb_func_start OS_UnlockByWord
OS_UnlockByWord: ; 0x0207A0C0
	push {r3, lr}
	mov r3, #0
	bl OSi_DoUnlockByWord
	pop {r3, pc}
	.align 2, 0
	thumb_func_end OS_UnlockByWord

	thumb_func_start OSi_DoTryLockByWord
OSi_DoTryLockByWord: ; 0x0207A0CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	beq _0207A0E0
	blx OS_DisableInterrupts_IrqAndFiq
	b _0207A0E4
_0207A0E0:
	blx OS_DisableInterrupts
_0207A0E4:
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	blx MI_SwapWord
	str r0, [sp, #4]
	cmp r0, #0
	bne _0207A0FC
	cmp r4, #0
	beq _0207A0FA
	blx r4
_0207A0FA:
	strh r5, [r6, #4]
_0207A0FC:
	cmp r7, #0
	beq _0207A108
	ldr r0, [sp]
	blx OS_RestoreInterrupts_IrqAndFiq
	b _0207A10E
_0207A108:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
_0207A10E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end OSi_DoTryLockByWord

	thumb_func_start OS_TryLockByWord
OS_TryLockByWord: ; 0x0207A114
	push {r3, lr}
	mov r3, #0
	bl OSi_DoTryLockByWord
	pop {r3, pc}
	.align 2, 0
	thumb_func_end OS_TryLockByWord

	thumb_func_start OS_UnlockCartridge
OS_UnlockCartridge: ; 0x0207A120
	push {r3, lr}
	ldr r1, _0207A130 ; =0x02FFFFE8
	ldr r2, _0207A134 ; =OSi_FreeCartridgeBus
	mov r3, #1
	bl OSi_DoUnlockByWord
	pop {r3, pc}
	nop
_0207A130: .word 0x02FFFFE8
_0207A134: .word OSi_FreeCartridgeBus
	thumb_func_end OS_UnlockCartridge

	thumb_func_start sub_0207A138
sub_0207A138: ; 0x0207A138
	ldr r1, _0207A13C ; =OS_UnlockCartridge
	bx r1
	.align 2, 0
_0207A13C: .word OS_UnlockCartridge
	thumb_func_end sub_0207A138

	thumb_func_start OS_TryLockCartridge
OS_TryLockCartridge: ; 0x0207A140
	push {r3, lr}
	ldr r1, _0207A150 ; =0x02FFFFE8
	ldr r2, _0207A154 ; =OSi_AllocateCartridgeBus
	mov r3, #1
	bl OSi_DoTryLockByWord
	pop {r3, pc}
	nop
_0207A150: .word 0x02FFFFE8
_0207A154: .word OSi_AllocateCartridgeBus
	thumb_func_end OS_TryLockCartridge

	thumb_func_start OSi_AllocateCartridgeBus
OSi_AllocateCartridgeBus: ; 0x0207A158
	ldr r1, _0207A164 ; =0x04000204
	mov r0, #0x80
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	bx lr
	.align 2, 0
_0207A164: .word 0x04000204
	thumb_func_end OSi_AllocateCartridgeBus

	thumb_func_start OSi_FreeCartridgeBus
OSi_FreeCartridgeBus: ; 0x0207A168
	ldr r2, _0207A174 ; =0x04000204
	mov r0, #0x80
	ldrh r1, [r2]
	orr r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0207A174: .word 0x04000204
	thumb_func_end OSi_FreeCartridgeBus

	thumb_func_start OS_LockCard
OS_LockCard: ; 0x0207A178
	ldr r1, _0207A180 ; =0x02FFFFE0
	ldr r2, _0207A184 ; =OSi_AllocateCardBus
	ldr r3, _0207A188 ; =OS_LockByWord
	bx r3
	.align 2, 0
_0207A180: .word 0x02FFFFE0
_0207A184: .word OSi_AllocateCardBus
_0207A188: .word OS_LockByWord
	thumb_func_end OS_LockCard

	thumb_func_start OS_UnlockCard
OS_UnlockCard: ; 0x0207A18C
	ldr r1, _0207A194 ; =0x02FFFFE0
	ldr r2, _0207A198 ; =OSi_FreeCardBus
	ldr r3, _0207A19C ; =OS_UnlockByWord
	bx r3
	.align 2, 0
_0207A194: .word 0x02FFFFE0
_0207A198: .word OSi_FreeCardBus
_0207A19C: .word OS_UnlockByWord
	thumb_func_end OS_UnlockCard

	thumb_func_start sub_0207A1A0
sub_0207A1A0: ; 0x0207A1A0
	ldr r1, _0207A1A4 ; =OS_UnlockCard
	bx r1
	.align 2, 0
_0207A1A4: .word OS_UnlockCard
	thumb_func_end sub_0207A1A0

	thumb_func_start OS_TryLockCard
OS_TryLockCard: ; 0x0207A1A8
	ldr r1, _0207A1B0 ; =0x02FFFFE0
	ldr r2, _0207A1B4 ; =OSi_AllocateCardBus
	ldr r3, _0207A1B8 ; =OS_TryLockByWord
	bx r3
	.align 2, 0
_0207A1B0: .word 0x02FFFFE0
_0207A1B4: .word OSi_AllocateCardBus
_0207A1B8: .word OS_TryLockByWord
	thumb_func_end OS_TryLockCard

	thumb_func_start OSi_AllocateCardBus
OSi_AllocateCardBus: ; 0x0207A1BC
	ldr r0, _0207A1E4 ; =0x04004010
	ldrh r1, [r0]
	mov r0, #0xc
	and r0, r1
	asr r0, r0, #2
	cmp r0, #2
	bne _0207A1D6
	ldr r2, _0207A1E8 ; =0x040001A4
	mov r0, #2
	ldr r1, [r2]
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r2]
_0207A1D6:
	ldr r2, _0207A1EC ; =0x04000204
	ldr r0, _0207A1F0 ; =0xFFFFF7FF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bx lr
	nop
_0207A1E4: .word 0x04004010
_0207A1E8: .word 0x040001A4
_0207A1EC: .word 0x04000204
_0207A1F0: .word 0xFFFFF7FF
	thumb_func_end OSi_AllocateCardBus

	thumb_func_start OSi_FreeCardBus
OSi_FreeCardBus: ; 0x0207A1F4
	ldr r2, _0207A200 ; =0x04000204
	ldrh r1, [r2]
	lsr r0, r2, #0xf
	orr r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0207A200: .word 0x04000204
	thumb_func_end OSi_FreeCardBus

	thumb_func_start OS_ReadOwnerOfLockWord
OS_ReadOwnerOfLockWord: ; 0x0207A204
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end OS_ReadOwnerOfLockWord

	arm_func_start OS_GetLockID
OS_GetLockID: ; 0x0207A208
	ldr r3, _0207A258 ; =0x02FFFFB0
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	movne r0, #0x40
	bne _0207A23C
	add r3, r3, #4
	ldr r1, [r3]
	clz r2, r1
	cmp r2, #0x20
	ldr r0, _0207A25C ; =0xFFFFFFFD
	bxeq lr
	mov r0, #0x60
_0207A23C:
	add r0, r0, r2
	mov r1, #0x80000000
	mov r1, r1, lsr r2
	ldr r2, [r3]
	bic r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_0207A258: .word 0x02FFFFB0
_0207A25C: .word 0xFFFFFFFD
	arm_func_end OS_GetLockID

	arm_func_start OS_ReleaseLockID
OS_ReleaseLockID: ; 0x0207A260
	ldr r3, _0207A28C ; =0x02FFFFB0
	cmp r0, #0x60
	addpl r3, r3, #4
	subpl r0, r0, #0x60
	submi r0, r0, #0x40
	mov r1, #0x80000000
	mov r1, r1, lsr r0
	ldr r2, [r3]
	orr r2, r2, r1
	str r2, [r3]
	bx lr
	.align 2, 0
_0207A28C: .word 0x02FFFFB0
	arm_func_end OS_ReleaseLockID

