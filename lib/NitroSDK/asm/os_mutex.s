	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start OS_InitMutex
OS_InitMutex: ; 0x0207AE4C
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	str r1, [r0, #8]
	mov r1, #0xff
	ldr r2, [r0, #0xc]
	lsl r1, r1, #0x18
	and r2, r1
	ldr r1, _0207AE64 ; =0x00FFFFFF
	and r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0207AE64: .word 0x00FFFFFF
	thumb_func_end OS_InitMutex

	thumb_func_start OS_LockMutex
OS_LockMutex: ; 0x0207AE68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, _0207AEA0 ; =0x0214C22C
	mov r6, #0
	ldr r4, [r0, #4]
_0207AE78:
	add r0, r5, #0
	bl OS_TryLockMutex
	cmp r0, #0
	bne _0207AE96
	add r0, r4, #0
	add r0, #0x84
	str r5, [r0]
	add r0, r5, #0
	bl OS_SleepThread
	add r0, r4, #0
	add r0, #0x84
	str r6, [r0]
	b _0207AE78
_0207AE96:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207AEA0: .word 0x0214C22C
	thumb_func_end OS_LockMutex

	thumb_func_start OS_UnlockMutex
OS_UnlockMutex: ; 0x0207AEA4
	mov r1, #1
	ldr r3, _0207AEAC ; =OSi_UnlockMutexCore
	lsl r1, r1, #0x1c
	bx r3
	.align 2, 0
_0207AEAC: .word OSi_UnlockMutexCore
	thumb_func_end OS_UnlockMutex

	thumb_func_start OSi_UnlockAllMutex
OSi_UnlockAllMutex: ; 0x0207AEB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0207AEE6
	add r4, r5, #0
	ldr r7, _0207AEE8 ; =0x00FFFFFF
	add r4, #0x88
	mov r6, #0
_0207AEC4:
	add r0, r4, #0
	bl sub_0207A3B4
	ldr r2, [r0, #0xc]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	str r6, [r0, #8]
	and r1, r7
	str r1, [r0, #0xc]
	bl OS_WakeupThread
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _0207AEC4
_0207AEE6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207AEE8: .word 0x00FFFFFF
	thumb_func_end OSi_UnlockAllMutex

	thumb_func_start OS_TryLockMutex
OS_TryLockMutex: ; 0x0207AEEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0207AF50 ; =0x0214C22C
	ldr r1, [r5, #8]
	ldr r0, [r0, #4]
	cmp r1, #0
	bne _0207AF2A
	ldr r1, [r5, #0xc]
	ldr r2, _0207AF54 ; =0x00FFFFFF
	add r3, r1, #0
	and r3, r2
	mov r1, #1
	lsl r1, r1, #0x1c
	add r6, r3, #0
	orr r6, r1
	lsl r1, r2, #0x18
	add r3, r6, #0
	and r3, r1
	add r1, r6, #1
	and r1, r2
	orr r1, r3
	str r1, [r5, #0xc]
	add r1, r5, #0
	str r0, [r5, #8]
	bl OSi_EnqueueTail
_0207AF26:
	mov r5, #1
	b _0207AF46
_0207AF2A:
	cmp r1, r0
	bne _0207AF44
	ldr r1, [r5, #0xc]
	mov r0, #0xff
	add r2, r1, #0
	lsl r0, r0, #0x18
	and r2, r0
	ldr r0, _0207AF54 ; =0x00FFFFFF
	add r1, r1, #1
	and r0, r1
	orr r0, r2
	str r0, [r5, #0xc]
	b _0207AF26
_0207AF44:
	mov r5, #0
_0207AF46:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207AF50: .word 0x0214C22C
_0207AF54: .word 0x00FFFFFF
	thumb_func_end OS_TryLockMutex

	thumb_func_start OSi_UnlockMutexCore
OSi_UnlockMutexCore: ; 0x0207AF58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	blx OS_DisableInterrupts
	ldr r1, _0207AFF8 ; =0x0214C22C
	add r7, r0, #0
	mov r3, #0
	ldr r6, [r1, #4]
	cmp r4, #0
	beq _0207AF80
	mov r1, #0xff
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x18
	and r1, r2
	cmp r4, r1
	beq _0207AF80
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
_0207AF80:
	mov r1, #0xff
	mov r2, #1
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x18
	and r1, r0
	lsl r2, r2, #0x1c
	cmp r1, r2
	beq _0207AF9E
	lsl r2, r2, #1
	cmp r1, r2
	beq _0207AFB8
	mov r0, #3
	lsl r0, r0, #0x1c
	cmp r1, r0
	bne _0207AFC8
_0207AF9E:
	ldr r0, [r5, #8]
	cmp r0, r6
	bne _0207AFD0
	ldr r0, [r5, #0xc]
	sub r2, r0, #1
	ldr r0, _0207AFFC ; =0x00FFFFFF
	and r2, r0
	orr r1, r2
	str r1, [r5, #0xc]
	tst r0, r1
	bne _0207AFD0
_0207AFB4:
	mov r3, #1
	b _0207AFD0
_0207AFB8:
	sub r2, r0, #1
	ldr r0, _0207AFFC ; =0x00FFFFFF
	and r2, r0
	orr r1, r2
	str r1, [r5, #0xc]
	tst r0, r1
	bne _0207AFD0
	b _0207AFB4
_0207AFC8:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
_0207AFD0:
	cmp r3, #0
	beq _0207AFEE
	add r0, r6, #0
	add r1, r5, #0
	bl OSi_DequeueItem
	mov r0, #0
	str r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r0, _0207AFFC ; =0x00FFFFFF
	and r0, r1
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl OS_WakeupThread
_0207AFEE:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207AFF8: .word 0x0214C22C
_0207AFFC: .word 0x00FFFFFF
	thumb_func_end OSi_UnlockMutexCore

	thumb_func_start OSi_EnqueueTail
OSi_EnqueueTail: ; 0x0207B000
	add r2, r0, #0
	add r2, #0x8c
	ldr r3, [r2]
	cmp r3, #0
	bne _0207B012
	add r2, r0, #0
	add r2, #0x88
	str r1, [r2]
	b _0207B014
_0207B012:
	str r1, [r3, #0x10]
_0207B014:
	mov r2, #0
	str r3, [r1, #0x14]
	str r2, [r1, #0x10]
	add r0, #0x8c
	str r1, [r0]
	bx lr
	thumb_func_end OSi_EnqueueTail

	thumb_func_start OSi_DequeueItem
OSi_DequeueItem: ; 0x0207B020
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x14]
	cmp r2, #0
	bne _0207B030
	add r1, r0, #0
	add r1, #0x8c
	str r3, [r1]
	b _0207B032
_0207B030:
	str r3, [r2, #0x14]
_0207B032:
	cmp r3, #0
	bne _0207B03C
	add r0, #0x88
	str r2, [r0]
	bx lr
_0207B03C:
	str r2, [r3, #0x10]
	bx lr
	thumb_func_end OSi_DequeueItem