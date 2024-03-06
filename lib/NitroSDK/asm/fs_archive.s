	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start FSi_IsEventCommand
FSi_IsEventCommand: ; 0x020700A8
	sub r0, #9
	mov r3, #0
	cmp r0, #0x1a
	bhi _020700BE
	mov r2, #1
	lsl r2, r0
	ldr r0, _020700C4 ; =0x0400030F
	mov r1, #1
	tst r0, r2
	beq _020700BE
	add r3, r1, #0
_020700BE:
	add r0, r3, #0
	bx lr
	nop
_020700C4: .word 0x0400030F
	thumb_func_end FSi_IsEventCommand

	thumb_func_start FSi_EndCommand
FSi_EndCommand: ; 0x020700C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	blx OS_DisableInterrupts
	ldr r4, [r5, #8]
	str r0, [sp]
	cmp r4, #0
	beq _020700FA
	ldr r0, [r4, #8]
	add r1, r4, #0
	add r1, #8
	cmp r0, #0
	beq _020700F6
_020700E4:
	cmp r0, r5
	bne _020700EE
	ldr r0, [r5]
	str r0, [r1]
	b _020700F6
_020700EE:
	add r1, r0, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _020700E4
_020700F6:
	mov r0, #0
	str r0, [r5]
_020700FA:
	ldr r0, [r5, #0xc]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r7, #0
	bl FSi_IsEventCommand
	cmp r0, #0
	bne _02070114
	cmp r4, #0
	beq _02070114
	str r7, [r4, #0x18]
	str r6, [r4, #0x1c]
_02070114:
	ldr r1, [r5, #0xc]
	mov r0, #0xcf
	bic r1, r0
	str r6, [r5, #0x14]
	str r1, [r5, #0xc]
	add r5, #0x18
	add r0, r5, #0
	bl OS_WakeupThread
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end FSi_EndCommand

	thumb_func_start FSi_WaitForArchiveCompletion
FSi_WaitForArchiveCompletion: ; 0x02070130
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	cmp r1, r0
	bne _0207016C
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #8
	tst r0, r1
	bne _0207015C
	add r4, r5, #0
	add r4, #0x18
	mov r6, #8
_02070150:
	add r0, r4, #0
	bl OS_SleepThread
	ldr r0, [r5, #0xc]
	tst r0, r6
	beq _02070150
_0207015C:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	ldr r1, [r5, #0xc]
	mov r0, #8
	bic r1, r0
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x14]
_0207016C:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FSi_WaitForArchiveCompletion

	thumb_func_start FSi_InvokeCommand
FSi_InvokeCommand: ; 0x02070170
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r6, r1, #0
	ldr r5, [r0, #0x24]
	cmp r6, #0x23
	blo _02070182
	b _02070358
_02070182:
	lsl r1, r6, #2
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0207018C
	b _02070358
_0207018C:
	cmp r6, #0x22
	bls _02070192
	b _02070358
_02070192:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207019E: ; jump table
	.short _020701E4 - _0207019E - 2 ; case 0
	.short _020701F4 - _0207019E - 2 ; case 1
	.short _02070200 - _0207019E - 2 ; case 2
	.short _0207020A - _0207019E - 2 ; case 3
	.short _02070216 - _0207019E - 2 ; case 4
	.short _02070226 - _0207019E - 2 ; case 5
	.short _02070236 - _0207019E - 2 ; case 6
	.short _02070240 - _0207019E - 2 ; case 7
	.short _0207024E - _0207019E - 2 ; case 8
	.short _02070256 - _0207019E - 2 ; case 9
	.short _02070260 - _0207019E - 2 ; case 10
	.short _0207026A - _0207019E - 2 ; case 11
	.short _02070274 - _0207019E - 2 ; case 12
	.short _0207027E - _0207019E - 2 ; case 13
	.short _0207028C - _0207019E - 2 ; case 14
	.short _02070296 - _0207019E - 2 ; case 15
	.short _0207029E - _0207019E - 2 ; case 16
	.short _020702A6 - _0207019E - 2 ; case 17
	.short _020702B0 - _0207019E - 2 ; case 18
	.short _020702BA - _0207019E - 2 ; case 19
	.short _020702C0 - _0207019E - 2 ; case 20
	.short _020702CC - _0207019E - 2 ; case 21
	.short _020702D4 - _0207019E - 2 ; case 22
	.short _020702E4 - _0207019E - 2 ; case 23
	.short _020702F0 - _0207019E - 2 ; case 24
	.short _020702FC - _0207019E - 2 ; case 25
	.short _02070308 - _0207019E - 2 ; case 26
	.short _02070310 - _0207019E - 2 ; case 27
	.short _02070320 - _0207019E - 2 ; case 28
	.short _02070358 - _0207019E - 2 ; case 29
	.short _02070328 - _0207019E - 2 ; case 30
	.short _0207032E - _0207019E - 2 ; case 31
	.short _02070338 - _0207019E - 2 ; case 32
	.short _02070346 - _0207019E - 2 ; case 33
	.short _0207034E - _0207019E - 2 ; case 34
_020701E4:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldr r2, [r3]
	add r3, r3, #4
_020701EC:
	ldr r5, [r5]
_020701EE:
	blx r5
_020701F0:
	add r5, r0, #0
	b _0207035A
_020701F4:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #4]
	ldr r2, [r3]
	add r1, r4, #0
	add r3, r3, #4
_020701FE:
	b _020701EE
_02070200:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #8]
	b _020701FE
_0207020A:
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0xc]
	ldr r2, [r2]
	add r1, r4, #0
_02070212:
	blx r3
	b _02070254
_02070216:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	add r3, #8
	ldr r5, [r5, #0x10]
	b _020701FE
_02070226:
	ldr r3, [r4, #0x10]
	add r1, r3, #0
	add r1, #8
	str r1, [sp]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #0x14]
	b _020701FE
_02070236:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #0x18]
	b _020701FE
_02070240:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	str r3, [sp]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	ldr r5, [r5, #0x1c]
	b _020701FE
_0207024E:
	ldr r2, [r5, #0x20]
	add r1, r4, #0
_02070252:
	blx r2
_02070254:
	b _020701F0
_02070256:
	ldr r1, [r5, #0x24]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02070260:
	ldr r1, [r5, #0x28]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0207026A:
	ldr r1, [r5, #0x2c]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02070274:
	ldr r1, [r5, #0x30]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0207027E:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #8]
	str r1, [sp]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	ldr r5, [r5, #0x34]
	b _020701FE
_0207028C:
	ldr r2, [r4, #0x10]
	add r1, r4, #0
	ldr r3, [r2, #4]
	ldr r5, [r5, #0x38]
	b _020701FE
_02070296:
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x3c]
	b _02070212
_0207029E:
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x40]
	b _02070212
_020702A6:
	ldr r1, [r5, #0x44]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020702B0:
	ldr r1, [r5, #0x48]
	blx r1
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020702BA:
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #0x4c]
	b _02070252
_020702C0:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x50]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_020702CC:
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x54]
	ldmia r2!, {r1, r2}
	b _02070212
_020702D4:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	ldr r5, [r5, #0x58]
	b _020701FE
_020702E4:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x5c]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_020702F0:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x60]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_020702FC:
	ldr r3, [r4, #0x10]
	ldr r5, [r5, #0x64]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	b _020701FE
_02070308:
	ldr r2, [r4, #0x10]
	ldr r3, [r5, #0x68]
	ldmia r2!, {r1, r2}
	b _02070212
_02070310:
	ldr r3, [r4, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	ldr r5, [r5, #0x6c]
	b _020701FE
_02070320:
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #0x70]
	ldr r1, [r1]
	b _02070252
_02070328:
	add r1, r4, #0
	ldr r2, [r5, #0x78]
	b _02070252
_0207032E:
	ldr r2, [r4, #0x10]
	add r1, r4, #0
	ldr r2, [r2]
	ldr r3, [r5, #0x7c]
	b _02070212
_02070338:
	ldr r3, [r4, #0x10]
	add r5, #0x80
	ldr r1, [r3, #8]
	str r1, [sp]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	b _020701EC
_02070346:
	add r5, #0x84
	add r1, r4, #0
	ldr r2, [r5]
	b _02070252
_0207034E:
	ldr r3, [r4, #0x10]
	add r1, r4, #0
	ldmia r3!, {r2, r3}
	add r5, #0x88
	b _020701EC
_02070358:
	mov r5, #4
_0207035A:
	add r0, r6, #0
	bl FSi_IsEventCommand
	cmp r0, #0
	bne _02070386
	ldr r1, [r4, #0xc]
	mov r0, #4
	tst r1, r0
	beq _02070378
	add r0, r4, #0
	add r1, r5, #0
	bl FSi_WaitForArchiveCompletion
	add r5, r0, #0
	b _02070386
_02070378:
	add r0, #0xfc
	cmp r5, r0
	beq _02070386
	add r0, r4, #0
	add r1, r5, #0
	bl FSi_EndCommand
_02070386:
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end FSi_InvokeCommand

	thumb_func_start FSi_NextCommand
FSi_NextCommand: ; 0x0207038C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r2, [r5, #0x14]
	mov r0, #0x20
	tst r0, r2
	beq _020703D6
	mov r1, #0x20
	bic r2, r1
	ldr r0, [r5, #8]
	str r2, [r5, #0x14]
	cmp r0, #0
	beq _020703D6
_020703B0:
	ldr r2, [r0, #0xc]
	mov r1, #2
	ldr r4, [r0]
	tst r1, r2
	beq _020703BE
	mov r1, #1
	b _020703C0
_020703BE:
	mov r1, #0
_020703C0:
	cmp r1, #0
	beq _020703D0
	mov r1, #3
	bl FSi_EndCommand
	cmp r4, #0
	bne _020703D0
	ldr r4, [r5, #8]
_020703D0:
	add r0, r4, #0
	cmp r4, #0
	bne _020703B0
_020703D6:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #0x40
	tst r1, r0
	bne _02070456
	mov r1, #8
	tst r1, r0
	bne _02070456
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02070456
	cmp r7, #0
	beq _02070404
	mov r1, #0x10
	tst r0, r1
	bne _02070404
	mov r4, #1
	b _02070406
_02070404:
	mov r4, #0
_02070406:
	cmp r4, #0
	beq _02070412
	ldr r1, [r5, #0x14]
	mov r0, #0x10
	orr r0, r1
	str r0, [r5, #0x14]
_02070412:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	cmp r4, #0
	beq _02070424
	ldr r0, [r5, #8]
	mov r1, #9
	bl FSi_InvokeCommand
_02070424:
	blx OS_DisableInterrupts
	str r0, [sp]
	cmp r7, #0
	bne _02070432
	cmp r4, #0
	beq _0207043C
_02070432:
	ldr r6, [r5, #8]
	mov r0, #0x40
	ldr r1, [r6, #0xc]
	orr r0, r1
	str r0, [r6, #0xc]
_0207043C:
	cmp r7, #0
	beq _02070452
	ldr r1, [r6, #0xc]
	mov r0, #4
	tst r0, r1
	beq _02070452
	add r6, #0x18
	add r0, r6, #0
	bl OS_WakeupThread
	mov r6, #0
_02070452:
	ldr r0, [sp]
	b _02070496
_02070456:
	cmp r7, #0
	beq _02070494
	mov r1, #0x10
	tst r0, r1
	beq _0207047A
	add r4, sp, #0xc
	add r0, r4, #0
	bl FS_InitFile
	str r5, [sp, #0x14]
	ldr r1, [r5, #0x14]
	mov r0, #0x10
	bic r1, r0
	str r1, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0xa
	bl FSi_InvokeCommand
_0207047A:
	ldr r1, [r5, #0x14]
	mov r0, #0x40
	tst r0, r1
	beq _02070494
	mov r0, #0x40
	bic r1, r0
	mov r0, #8
	orr r0, r1
	str r0, [r5, #0x14]
	add r5, #0xc
	add r0, r5, #0
	bl OS_WakeupThread
_02070494:
	ldr r0, [sp, #4]
_02070496:
	blx OS_RestoreInterrupts
	add r0, r6, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end FSi_NextCommand

	thumb_func_start FSi_ExecuteAsyncCommand
FSi_ExecuteAsyncCommand: ; 0x020704A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, [r5, #8]
	beq _020704F2
	mov r7, #4
_020704AA:
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0x40
	orr r0, r1
	str r0, [r5, #0xc]
	tst r0, r7
	beq _020704C6
	add r5, #0x18
	add r0, r5, #0
	bl OS_WakeupThread
	mov r5, #0
_020704C6:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	cmp r5, #0
	beq _020704F2
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FSi_InvokeCommand
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	beq _020704F2
	add r0, r6, #0
	mov r1, #1
	bl FSi_NextCommand
	add r5, r0, #0
	bne _020704AA
_020704F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FSi_ExecuteAsyncCommand

	thumb_func_start FSi_ExecuteSyncCommand
FSi_ExecuteSyncCommand: ; 0x020704F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r5, #0
	str r0, [sp]
	add r4, #0x18
	mov r7, #1
	mov r6, #0x40
	b _0207050E
_02070508:
	add r0, r4, #0
	bl OS_SleepThread
_0207050E:
	ldr r1, [r5, #0xc]
	add r0, r1, #0
	tst r0, r6
	bne _0207051C
	add r0, r1, #0
	tst r0, r7
	bne _02070508
_0207051C:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	ldr r1, [r5, #0xc]
	mov r0, #0x40
	tst r0, r1
	beq _02070552
	ldr r1, [r5, #0xc]
	ldr r4, [r5, #8]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl FSi_InvokeCommand
	add r1, r0, #0
	add r0, r5, #0
	bl FSi_EndCommand
	add r0, r4, #0
	mov r1, #1
	bl FSi_NextCommand
	cmp r0, #0
	beq _02070552
	bl FSi_ExecuteAsyncCommand
_02070552:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FSi_ExecuteSyncCommand

	thumb_func_start FSi_SendCommand
FSi_SendCommand: ; 0x02070554
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r1, [sp]
	mov r1, #1
	add r7, r2, #0
	mov r6, #0
	ldr r4, [r5, #8]
	tst r0, r1
	bne _0207056C
	add r1, r6, #0
_0207056C:
	cmp r1, #0
	beq _02070574
	bl OS_Terminate
_02070574:
	cmp r4, #0
	bne _02070582
	mov r0, #6
	str r0, [r5, #0x14]
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02070582:
	mov r0, #2
	str r0, [r5, #0x14]
	ldr r2, [r5, #0xc]
	ldr r0, _02070628 ; =0xFFFF00FF
	add r1, r5, #0
	and r0, r2
	ldr r2, [sp]
	add r1, #0xc
	lsl r2, r2, #8
	orr r2, r0
	mov r0, #1
	orr r0, r2
	mov r2, #0
	str r0, [r5, #0xc]
	str r2, [r5]
	cmp r7, #0
	beq _020705AA
	mov r2, #4
	orr r0, r2
	str r0, [r1]
_020705AA:
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	mov r0, #0x80
	tst r0, r1
	beq _020705C2
	add r0, r5, #0
	mov r1, #3
	bl FSi_EndCommand
	b _020705D6
_020705C2:
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r0, #8
	cmp r1, #0
	beq _020705D4
_020705CC:
	add r0, r1, #0
	ldr r1, [r1]
	cmp r1, #0
	bne _020705CC
_020705D4:
	str r5, [r0]
_020705D6:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	cmp r0, r5
	bne _020705EC
	ldr r1, [r4, #0x14]
	mov r0, #0x10
	tst r0, r1
	bne _020705EC
	mov r0, #1
	str r0, [sp, #4]
_020705EC:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	ldr r0, [r5, #0x14]
	cmp r0, #3
	beq _02070620
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl FSi_NextCommand
	cmp r7, #0
	beq _02070616
	add r0, r5, #0
	bl FSi_ExecuteSyncCommand
	ldr r0, [r5, #0x14]
	mov r6, #1
	cmp r0, #0
	beq _02070620
	mov r6, #0
	b _02070620
_02070616:
	cmp r0, #0
	beq _0207061E
	bl FSi_ExecuteAsyncCommand
_0207061E:
	mov r6, #1
_02070620:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02070628: .word 0xFFFF00FF
	thumb_func_end FSi_SendCommand

	thumb_func_start FS_FindArchive
FS_FindArchive: ; 0x0207062C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, _0207067C ; =0x0214BD4C
	ldr r4, [r0]
	cmp r4, #0
	beq _02070672
_02070640:
	ldr r1, [r4, #0x14]
	mov r0, #2
	tst r0, r1
	beq _0207064C
	mov r0, #1
	b _0207064E
_0207064C:
	mov r0, #0
_0207064E:
	cmp r0, #0
	beq _0207066C
	add r0, r4, #0
	bl FS_GetArchiveName
	add r1, r7, #0
	add r2, r5, #0
	add r6, r0, #0
	bl sub_0207F9C8
	cmp r0, #0
	bne _0207066C
	ldrsb r0, [r5, r6]
	cmp r0, #0
	beq _02070672
_0207066C:
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _02070640
_02070672:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207067C: .word 0x0214BD4C
	thumb_func_end FS_FindArchive

	thumb_func_start FS_SetCurrentDirectory
FS_SetCurrentDirectory: ; 0x02070680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x160
	add r7, sp, #0x5c
	mov r5, #0
	add r1, sp, #0
	add r2, r7, #0
	str r5, [sp]
	bl FS_NormalizePath
	add r4, r0, #0
	beq _020706EC
	ldr r6, _020706F4 ; =0x0214BD4C
	mov r2, #0x41
	str r4, [r6, #4]
	strh r5, [r6, #8]
	strh r5, [r6, #0xa]
	str r5, [r6, #0xc]
	ldr r5, _020706F8 ; =0x0214BE5C
	add r1, r7, #0
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_0207F7CC
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020706EA
	add r0, sp, #0x14
	bl FS_InitFile
	add r0, sp, #4
	str r0, [sp, #0x24]
	ldr r0, [sp]
	mov r1, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #0x10]
	add r0, sp, #0x14
	mov r2, #1
	str r4, [sp, #0x1c]
	str r7, [sp, #8]
	bl FSi_SendCommand
	cmp r0, #0
	beq _020706EA
	ldr r0, [sp, #0xc]
	mov r2, #0x41
	strh r0, [r6, #8]
	add r0, r5, #0
	add r1, r7, #0
	lsl r2, r2, #2
	bl sub_0207F7CC
_020706EA:
	mov r5, #1
_020706EC:
	add r0, r5, #0
	add sp, #0x160
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020706F4: .word 0x0214BD4C
_020706F8: .word 0x0214BE5C
	thumb_func_end FS_SetCurrentDirectory

	thumb_func_start FSi_CopySafeString
FSi_CopySafeString: ; 0x020706FC
	push {r4, r5}
	sub r5, r1, #1
	cmp r5, r3
	blt _02070706
	add r5, r3, #0
_02070706:
	mov r1, #0
	b _0207070E
_0207070A:
	strb r4, [r0, r1]
	add r1, r1, #1
_0207070E:
	cmp r1, r5
	bge _02070718
	ldrsb r4, [r2, r1]
	cmp r4, #0
	bne _0207070A
_02070718:
	cmp r1, r3
	bge _02070728
	ldrsb r2, [r2, r1]
	cmp r2, #0
	beq _02070728
	ldr r2, [sp, #8]
	mov r3, #1
	str r3, [r2]
_02070728:
	mov r2, #0
	strb r2, [r0, r1]
	add r0, r1, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end FSi_CopySafeString

	thumb_func_start FS_NormalizePath
FS_NormalizePath: ; 0x02070734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02070900 ; =0x0214BD4C
	add r7, r1, #0
	mov r4, #0
	ldr r1, [r0, #4]
	str r2, [sp, #4]
	str r4, [sp, #0xc]
	cmp r1, #0
	bne _02070758
	ldr r1, [r0]
	str r1, [r0, #4]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strh r4, [r0, #0xa]
	ldr r0, _02070904 ; =0x0214BE5C
	strb r4, [r0]
_02070758:
	ldrb r0, [r5]
	cmp r0, #0x2f
	beq _02070762
	cmp r0, #0x5c
	bne _02070774
_02070762:
	ldr r0, _02070900 ; =0x0214BD4C
	add r5, r5, #1
	ldr r0, [r0, #4]
	cmp r7, #0
	str r0, [sp, #8]
	beq _0207080E
_0207076E:
	mov r0, #0
	str r0, [r7]
	b _0207080E
_02070774:
	mov r6, #0
	mov r0, #1
	mov r2, #0x20
_0207077A:
	ldrb r1, [r5, r6]
	cmp r1, #0
	beq _02070788
	cmp r1, #0x2f
	beq _02070788
	cmp r1, #0x5c
	bne _020707D6
_02070788:
	ldr r1, _02070900 ; =0x0214BD4C
	cmp r7, #0
	ldr r0, [r1, #4]
	str r0, [sp, #8]
	beq _02070796
	ldrh r0, [r1, #8]
	str r0, [r7]
_02070796:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0207080E
	ldr r0, _02070900 ; =0x0214BD4C
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _0207080E
	ldr r2, _02070904 ; =0x0214BE5C
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0207080E
	mov r7, #0x41
	lsl r7, r7, #2
	add r6, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r3, r7, #0
	str r6, [sp]
	bl FSi_CopySafeString
	add r4, r4, r0
	ldr r0, [sp, #4]
	ldr r2, _02070908 ; =0x0209B508
	add r0, r0, r4
	sub r1, r7, r4
	mov r3, #1
	str r6, [sp]
	bl FSi_CopySafeString
	add r4, r4, r0
	b _0207080E
_020707D6:
	cmp r1, #0x3a
	bne _020707FA
	add r0, r5, #0
	add r1, r6, #0
	bl FS_FindArchive
	str r0, [sp, #8]
	add r0, r6, #1
	add r5, r5, r0
	ldrb r0, [r5]
	cmp r0, #0x2f
	beq _020707F2
	cmp r0, #0x5c
	bne _020707F4
_020707F2:
	add r5, r5, #1
_020707F4:
	cmp r7, #0
	beq _0207080E
	b _0207076E
_020707FA:
	eor r1, r2
	sub r1, #0xa1
	cmp r1, #0x3c
	bhs _02070806
	add r1, r0, #0
	b _02070808
_02070806:
	mov r1, #0
_02070808:
	add r3, r6, #1
	add r6, r3, r1
	b _0207077A
_0207080E:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _020708EE
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	bne _020708E4
_0207081C:
	ldrsb r7, [r5, r6]
	add r1, r5, r6
	cmp r7, #0
	beq _0207086A
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	mov r0, #1
	cmp r2, #0x2f
	beq _02070834
	cmp r2, #0x5c
	beq _02070834
	mov r0, #0
_02070834:
	cmp r0, #0
	bne _0207086A
	lsl r2, r7, #0x18
	lsr r3, r2, #0x18
	mov r2, #0x20
	eor r2, r3
	sub r2, #0xa1
	mov r0, #0
	cmp r2, #0x3c
	bhs _0207085C
	mov r2, #1
	ldrsb r1, [r1, r2]
	cmp r1, #0x7f
	beq _0207085C
	sub r1, #0x40
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0xbc
	bhi _0207085C
	add r0, r2, #0
_0207085C:
	cmp r0, #0
	beq _02070864
	mov r0, #2
	b _02070866
_02070864:
	mov r0, #1
_02070866:
	add r6, r6, r0
	b _020708DE
_0207086A:
	cmp r6, #0
	beq _020708D4
	cmp r6, #1
	bne _0207087A
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x2e
	beq _020708D4
_0207087A:
	cmp r6, #2
	bne _020708A0
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x2e
	bne _020708A0
	mov r0, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0x2e
	bne _020708A0
	cmp r4, #0
	ble _02070894
	sub r4, r4, #1
_02070894:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl FSi_DecrementSjisPositionToSlash
	add r4, r0, #1
	b _020708D4
_020708A0:
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x41
	lsl r1, r1, #2
	add r0, r0, r4
	sub r1, r1, r4
	add r2, r5, #0
	add r3, r6, #0
	bl FSi_CopySafeString
	add r4, r4, r0
	cmp r7, #0
	beq _020708D4
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r2, _02070908 ; =0x0209B508
	add r0, r0, r4
	sub r1, r1, r4
	mov r3, #1
	bl FSi_CopySafeString
	add r4, r4, r0
_020708D4:
	cmp r7, #0
	beq _020708E4
	add r0, r6, #1
	add r5, r5, r0
	mov r6, #0
_020708DE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0207081C
_020708E4:
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, r4]
	bl FSi_TrimSjisTrailingSlash
_020708EE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020708F8
	mov r0, #0
	str r0, [sp, #8]
_020708F8:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02070900: .word 0x0214BD4C
_02070904: .word 0x0214BE5C
_02070908: .word 0x0209B508
	thumb_func_end FS_NormalizePath

	thumb_func_start FS_InitArchive
FS_InitArchive: ; 0x0207090C
	push {r3, r4, r5, lr}
	mov r1, #0
	mov r2, #0x5c
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	str r4, [r5, #0x10]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end FS_InitArchive

	thumb_func_start FS_RegisterArchiveName
FS_RegisterArchiveName: ; 0x02070920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r5, r0, #0
	add r7, r2, #0
	mov r4, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r7, #0
	bl FS_FindArchive
	cmp r0, #0
	bne _020709A0
	ldr r0, _020709AC ; =0x0214BD4C
	ldr r1, _020709B0 ; =0x0214BD4C
	ldr r0, [r0]
	cmp r0, #0
	beq _02070950
_02070948:
	add r1, r0, #4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02070948
_02070950:
	str r5, [r1]
	cmp r7, #3
	bhi _02070966
	mov r0, #0
	str r0, [r5]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #1
	bl sub_0207F7CC
	b _02070998
_02070966:
	cmp r7, #0xf
	bhi _02070994
	mov r4, #0
_0207096C:
	cmp r4, #0x10
	blt _02070976
	bl OS_Terminate
	b _02070990
_02070976:
	ldr r0, _020709B4 ; =0x0214BD5C
	lsl r1, r4, #4
	add r6, r0, r1
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _02070990
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #1
	bl sub_0207F7CC
	str r6, [r5]
	b _02070998
_02070990:
	add r4, r4, #1
	b _0207096C
_02070994:
	bl OS_Terminate
_02070998:
	ldr r0, [r5, #0x14]
	mov r4, #1
	orr r0, r4
	str r0, [r5, #0x14]
_020709A0:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020709AC: .word 0x0214BD4C
_020709B0: .word 0x0214BD4C
_020709B4: .word 0x0214BD5C
	thumb_func_end FS_RegisterArchiveName

	thumb_func_start FS_ReleaseArchiveName
FS_ReleaseArchiveName: ; 0x020709B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02070A1C ; =0x0214BD4C
	ldr r0, [r0]
	cmp r4, r0
	bne _020709C8
	bl OS_Terminate
_020709C8:
	ldr r0, [r4]
	cmp r0, #0
	beq _02070A18
	blx OS_DisableInterrupts
	ldr r1, _02070A1C ; =0x0214BD4C
	ldr r2, _02070A20 ; =0x0214BD4C
	ldr r1, [r1]
	cmp r1, #0
	beq _020709EE
_020709DC:
	cmp r1, r4
	bne _020709E6
	ldr r1, [r1, #4]
	str r1, [r2]
	b _020709EE
_020709E6:
	add r2, r1, #4
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020709DC
_020709EE:
	mov r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0
	beq _020709FC
	ldr r1, [r4]
	mov r2, #0
	strb r2, [r1]
_020709FC:
	ldr r2, [r4, #0x14]
	mov r1, #1
	mov r3, #0
	bic r2, r1
	ldr r1, _02070A1C ; =0x0214BD4C
	str r3, [r4]
	str r3, [r4, #4]
	str r2, [r4, #0x14]
	ldr r2, [r1, #4]
	cmp r2, r4
	bne _02070A14
	str r3, [r1, #4]
_02070A14:
	blx OS_RestoreInterrupts
_02070A18:
	pop {r4, pc}
	nop
_02070A1C: .word 0x0214BD4C
_02070A20: .word 0x0214BD4C
	thumb_func_end FS_ReleaseArchiveName

	thumb_func_start FS_GetArchiveName
FS_GetArchiveName: ; 0x02070A24
	mov r1, #3
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _02070A2E
	ldr r0, [r0]
_02070A2E:
	bx lr
	thumb_func_end FS_GetArchiveName

	thumb_func_start FS_MountArchive
FS_MountArchive: ; 0x02070A30
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, r0, #0
	add r5, sp, #0
	str r1, [r4, #0x20]
	str r2, [r4, #0x24]
	add r0, r5, #0
	bl FS_InitFile
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x11
	bl FSi_InvokeCommand
	ldr r1, [r4, #0x14]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x14]
	mov r0, #1
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FS_MountArchive

	thumb_func_start FS_UnmountArchive
FS_UnmountArchive: ; 0x02070A5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r1, [r5, #0x14]
	mov r0, #2
	tst r0, r1
	beq _02070A74
	mov r0, #1
	b _02070A76
_02070A74:
	mov r0, #0
_02070A76:
	cmp r0, #0
	beq _02070AC8
	add r0, r5, #0
	bl FS_SuspendArchive
	add r7, r0, #0
	ldr r2, [r5, #0x14]
	mov r1, #0x80
	orr r1, r2
	ldr r0, [r5, #8]
	str r1, [r5, #0x14]
	cmp r0, #0
	beq _02070AA0
	mov r6, #3
_02070A92:
	ldr r4, [r0]
	add r1, r6, #0
	bl FSi_EndCommand
	add r0, r4, #0
	cmp r4, #0
	bne _02070A92
_02070AA0:
	mov r0, #0
	str r0, [r5, #8]
	cmp r7, #0
	beq _02070AAE
	add r0, r5, #0
	bl FS_ResumeArchive
_02070AAE:
	add r4, sp, #4
	add r0, r4, #0
	bl FS_InitFile
	str r5, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x12
	bl FSi_InvokeCommand
	ldr r1, [r5, #0x14]
	mov r0, #0xa2
	bic r1, r0
	str r1, [r5, #0x14]
_02070AC8:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #1
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end FS_UnmountArchive

	thumb_func_start FS_SuspendArchive
FS_SuspendArchive: ; 0x02070AD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r1, [r5, #0x14]
	mov r0, #8
	tst r0, r1
	beq _02070AEC
	mov r0, #1
	b _02070AEE
_02070AEC:
	mov r0, #0
_02070AEE:
	mov r7, #1
	cmp r0, #0
	beq _02070AF6
	mov r7, #0
_02070AF6:
	cmp r7, #0
	beq _02070B36
	ldr r1, [r5, #0x14]
	mov r0, #0x10
	tst r0, r1
	bne _02070B0A
	mov r0, #8
	orr r0, r1
	str r0, [r5, #0x14]
	b _02070B36
_02070B0A:
	mov r4, #0x40
	add r0, r1, #0
	orr r0, r4
	str r0, [r5, #0x14]
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, [r5, #0x14]
	tst r0, r4
	beq _02070B30
	add r4, r5, #0
	add r4, #0xc
	mov r6, #0x40
_02070B24:
	add r0, r4, #0
	bl OS_SleepThread
	ldr r0, [r5, #0x14]
	tst r0, r6
	bne _02070B24
_02070B30:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
_02070B36:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end FS_SuspendArchive

	thumb_func_start FS_ResumeArchive
FS_ResumeArchive: ; 0x02070B44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r2, [r5, #0x14]
	mov r1, #8
	tst r1, r2
	beq _02070B58
	mov r1, #1
	b _02070B5A
_02070B58:
	mov r1, #0
_02070B5A:
	mov r4, #1
	cmp r1, #0
	beq _02070B62
	mov r4, #0
_02070B62:
	cmp r4, #0
	bne _02070B6E
	ldr r2, [r5, #0x14]
	mov r1, #8
	bic r2, r1
	str r2, [r5, #0x14]
_02070B6E:
	blx OS_RestoreInterrupts
	add r0, r5, #0
	mov r1, #1
	bl FSi_NextCommand
	cmp r0, #0
	beq _02070B82
	bl FSi_ExecuteAsyncCommand
_02070B82:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FS_ResumeArchive

	thumb_func_start FS_NotifyArchiveAsyncEnd
FS_NotifyArchiveAsyncEnd: ; 0x02070B88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	mov r0, #4
	ldr r2, [r4, #0xc]
	add r5, r1, #0
	tst r0, r2
	beq _02070BB8
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r1, [r4, #0xc]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #0xc]
	str r5, [r4, #0x14]
	add r4, #0x18
	add r0, r4, #0
	bl OS_WakeupThread
	add r0, r6, #0
	blx OS_RestoreInterrupts
	pop {r4, r5, r6, pc}
_02070BB8:
	add r0, r4, #0
	bl FSi_EndCommand
	add r0, r6, #0
	mov r1, #1
	bl FSi_NextCommand
	cmp r0, #0
	beq _02070BCE
	bl FSi_ExecuteAsyncCommand
_02070BCE:
	pop {r4, r5, r6, pc}
	thumb_func_end FS_NotifyArchiveAsyncEnd
