	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start FSi_MemArchiveProc
FSi_MemArchiveProc: ; 0x02072014
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #6
	bhi _02072086
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02072028: ; jump table
	.short _02072086 - _02072028 - 2 ; case 0
	.short _02072086 - _02072028 - 2 ; case 1
	.short _02072082 - _02072028 - 2 ; case 2
	.short _02072036 - _02072028 - 2 ; case 3
	.short _02072082 - _02072028 - 2 ; case 4
	.short _02072082 - _02072028 - 2 ; case 5
	.short _02072082 - _02072028 - 2 ; case 6
_02072036:
	ldr r6, [r4, #0x28]
	ldr r5, [r4, #0x30]
	cmp r6, #0
	bne _02072048
	mov r0, #0
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02072048:
	add r0, r6, #0
	bl FS_GetArchiveName
	add r7, r0, #0
	bl STD_GetStringLength
	add r0, r0, #1
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0207207A
	add r0, r5, #0
	ldr r1, _0207208C ; =0x0209B514
	add r0, #0x14
	add r2, r7, #0
	bl sub_020800E8
	ldr r0, [r4, #8]
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	str r0, [r5, #8]
_0207207A:
	ldr r1, [r6, #4]
	mov r0, #0
	str r1, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02072082:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02072086:
	ldr r0, _02072090 ; =0x00000102
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207208C: .word 0x0209B514
_02072090: .word 0x00000102
	thumb_func_end FSi_MemArchiveProc

	thumb_func_start FSi_InitMemArchive
FSi_InitMemArchive: ; 0x02072094
	push {r3, r4, r5, lr}
	sub sp, #0x10
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020720FC ; =0x0214BF80
	ldr r0, [r0]
	cmp r0, #0
	beq _020720BA
	ldr r0, _02072100 ; =0x0214BF84
	ldr r1, [r0, #0x14]
	mov r0, #2
	tst r0, r1
	beq _020720B4
	mov r0, #1
	b _020720B6
_020720B4:
	mov r0, #0
_020720B6:
	cmp r0, #0
	bne _020720F0
_020720BA:
	ldr r5, _02072100 ; =0x0214BF84
	add r0, r5, #0
	bl FS_InitArchive
	mov r2, #0
	ldr r1, _02072104 ; =FSi_MemArchiveProc
	add r0, r5, #0
	mvn r2, r2
	bl FS_SetArchiveProc
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	str r1, [sp, #0xc]
	bl FS_LoadArchive
	cmp r0, #0
	bne _020720EA
	bl OS_Terminate
_020720EA:
	ldr r0, _020720FC ; =0x0214BF80
	mov r1, #1
	str r1, [r0]
_020720F0:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_020720FC: .word 0x0214BF80
_02072100: .word 0x0214BF84
_02072104: .word FSi_MemArchiveProc
	thumb_func_end FSi_InitMemArchive

	thumb_func_start FS_CreateFileFromMemory
FS_CreateFileFromMemory: ; 0x02072108
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl FSi_InitMemArchive
	mov r0, #0
	str r0, [sp]
	ldr r1, _0207212C ; =0x0214BF84
	add r0, r5, #0
	add r2, r6, #0
	add r3, r6, r4
	bl FS_OpenFileDirect
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0207212C: .word 0x0214BF84
	thumb_func_end FS_CreateFileFromMemory