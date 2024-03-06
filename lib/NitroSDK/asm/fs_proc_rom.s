	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start FSi_IsUnreadableRomOffset
FSi_IsUnreadableRomOffset: ; 0x02072130
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
	bl FS_GetArchiveName
	ldr r1, _02072160 ; =0x0209B518
	bl sub_0207F95C
	cmp r0, #0
	bne _0207215C
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207215C
	bl CARD_GetOwnRomHeader
	add r0, #0x92
	ldrh r0, [r0]
	lsl r0, r0, #0x13
	cmp r5, r0
	blo _0207215C
	mov r4, #1
_0207215C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02072160: .word 0x0209B518
	thumb_func_end FSi_IsUnreadableRomOffset

	thumb_func_start FSi_OnRomReadDone
FSi_OnRomReadDone: ; 0x02072164
	push {r4, lr}
	add r4, r0, #0
	bl CARD_IsPulledOut
	mov r1, #5
	cmp r0, #0
	bne _02072174
	mov r1, #0
_02072174:
	add r0, r4, #0
	bl FS_NotifyArchiveAsyncEnd
	pop {r4, pc}
	thumb_func_end FSi_OnRomReadDone

	thumb_func_start FSi_ReadRomCallback
FSi_ReadRomCallback: ; 0x0207217C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _020721A0 ; =FSi_OnRomReadDone
	mov r4, #1
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _020721A4 ; =0x0214BFE0
	str r4, [sp, #8]
	add r1, r2, #0
	ldr r0, [r0]
	add r2, r5, #0
	bl CARDi_ReadRom
	add r4, #0xff
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_020721A0: .word FSi_OnRomReadDone
_020721A4: .word 0x0214BFE0
	thumb_func_end FSi_ReadRomCallback

	thumb_func_start FSi_RomArchiveProc
FSi_RomArchiveProc: ; 0x020721A8
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0xa
	bhi _0207220A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020721BC: ; jump table
	.short _0207220A - _020721BC - 2 ; case 0
	.short _02072206 - _020721BC - 2 ; case 1
	.short _0207220A - _020721BC - 2 ; case 2
	.short _0207220A - _020721BC - 2 ; case 3
	.short _0207220A - _020721BC - 2 ; case 4
	.short _0207220A - _020721BC - 2 ; case 5
	.short _0207220A - _020721BC - 2 ; case 6
	.short _020721F2 - _020721BC - 2 ; case 7
	.short _0207220A - _020721BC - 2 ; case 8
	.short _020721D2 - _020721BC - 2 ; case 9
	.short _020721E2 - _020721BC - 2 ; case 10
_020721D2:
	ldr r0, _02072210 ; =0x0214BFE0
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl CARD_LockRom
	mov r0, #0
	pop {r3, pc}
_020721E2:
	ldr r0, _02072210 ; =0x0214BFE0
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl CARD_UnlockRom
	mov r0, #0
	pop {r3, pc}
_020721F2:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	bl FSi_IsUnreadableRomOffset
	cmp r0, #0
	beq _02072202
	mov r0, #9
	pop {r3, pc}
_02072202:
	ldr r0, _02072214 ; =0x00000101
	pop {r3, pc}
_02072206:
	mov r0, #4
	pop {r3, pc}
_0207220A:
	ldr r0, _02072218 ; =0x00000102
	pop {r3, pc}
	nop
_02072210: .word 0x0214BFE0
_02072214: .word 0x00000101
_02072218: .word 0x00000102
	thumb_func_end FSi_RomArchiveProc

	thumb_func_start FSi_EmptyArchiveProc
FSi_EmptyArchiveProc: ; 0x0207221C
	mov r0, #4
	cmp r1, #1
	beq _02072224
	ldr r0, _02072228 ; =0x00000102
_02072224:
	bx lr
	nop
_02072228: .word 0x00000102
	thumb_func_end FSi_EmptyArchiveProc

	thumb_func_start FSi_ReadDummyCallback
FSi_ReadDummyCallback: ; 0x0207222C
	mov r0, #4
	bx lr
	thumb_func_end FSi_ReadDummyCallback

	thumb_func_start FSi_WriteDummyCallback
FSi_WriteDummyCallback: ; 0x02072230
	mov r0, #4
	bx lr
	thumb_func_end FSi_WriteDummyCallback

	thumb_func_start FSi_OverrideRomArchive
FSi_OverrideRomArchive: ; 0x02072234
	mov r0, #0
	bx lr
	thumb_func_end FSi_OverrideRomArchive

	thumb_func_start FSi_InitRomArchive
FSi_InitRomArchive: ; 0x02072238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl CARD_Init
	ldr r4, _020722FC ; =0x0214BFE0
	str r5, [r4]
	blx OS_GetLockID
	str r0, [r4, #4]
	ldr r0, _02072300 ; =0x0214BFE8
	bl FS_InitArchive
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r1, _02072304 ; =0x0209B518
	mov r2, #3
	mov r6, #3
	bl FS_RegisterArchiveName
	bl OS_GetBootType
	cmp r0, #1
	bne _020722B0
	bl CARD_GetOwnRomHeader
	add r7, r0, #0
	add r4, r7, #0
	add r4, #0x40
	bl CARD_GetOwnRomHeader
	add r5, r0, #0
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r1, _02072308 ; =FSi_RomArchiveProc
	ldr r2, _0207230C ; =0x00000682
	add r5, #0x48
	bl FS_SetArchiveProc
	ldr r1, [r7, #0x40]
	sub r0, r6, #4
	cmp r1, r0
	beq _020722B6
	cmp r1, #0
	beq _020722B6
	ldr r2, [r5]
	cmp r2, r0
	beq _020722B6
	cmp r2, #0
	beq _020722B6
	str r1, [sp]
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, _02072310 ; =FSi_ReadRomCallback
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r3, [r5, #4]
	bl FS_LoadArchive
	b _020722B6
_020722B0:
	ldr r0, _02072300 ; =0x0214BFE8
	bl FSi_OverrideRomArchive
_020722B6:
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r1, [r0, #0x14]
	mov r0, #2
	tst r0, r1
	beq _020722C4
	mov r0, #1
	b _020722C6
_020722C4:
	mov r0, #0
_020722C6:
	cmp r0, #0
	bne _020722F0
	ldr r4, _02072300 ; =0x0214BFE8
	mov r2, #0
	ldr r1, _02072314 ; =FSi_EmptyArchiveProc
	add r0, r4, #0
	mvn r2, r2
	bl FS_SetArchiveProc
	mov r1, #0
	str r1, [sp]
	ldr r0, _02072318 ; =FSi_ReadDummyCallback
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0207231C ; =FSi_WriteDummyCallback
	mov r2, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl FS_LoadArchive
_020722F0:
	ldr r0, _02072320 ; =0x0209B51C
	bl FS_SetCurrentDirectory
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020722FC: .word 0x0214BFE0
_02072300: .word 0x0214BFE8
_02072304: .word 0x0209B518
_02072308: .word FSi_RomArchiveProc
_0207230C: .word 0x00000682
_02072310: .word FSi_ReadRomCallback
_02072314: .word FSi_EmptyArchiveProc
_02072318: .word FSi_ReadDummyCallback
_0207231C: .word FSi_WriteDummyCallback
_02072320: .word 0x0209B51C
	thumb_func_end FSi_InitRomArchive

	thumb_func_start FS_SetDefaultDMA
FS_SetDefaultDMA: ; 0x02072324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	ldr r4, _02072350 ; =0x0214BFE0
	add r7, r0, #0
	ldr r0, _02072354 ; =0x0214BFE8
	ldr r6, [r4]
	bl FS_SuspendArchive
	str r5, [r4]
	cmp r0, #0
	beq _02072344
	ldr r0, _02072354 ; =0x0214BFE8
	bl FS_ResumeArchive
_02072344:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02072350: .word 0x0214BFE0
_02072354: .word 0x0214BFE8
	thumb_func_end FS_SetDefaultDMA

	thumb_func_start FS_TryLoadTable
FS_TryLoadTable: ; 0x02072358
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, _02072364 ; =0x0214BFE8
	ldr r3, _02072368 ; =FS_LoadArchiveTables
	bx r3
	.align 2, 0
_02072364: .word 0x0214BFE8
_02072368: .word FS_LoadArchiveTables
	thumb_func_end FS_TryLoadTable

	thumb_func_start FS_CreateFileFromRom
FS_CreateFileFromRom: ; 0x0207236C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, _02072388 ; =0x0000FFFF
	add r3, r2, #0
	str r1, [sp]
	ldr r1, _0207238C ; =0x0214BFE8
	add r2, r4, #0
	add r3, r4, r3
	bl FS_OpenFileDirect
	add sp, #4
	pop {r3, r4, pc}
	nop
_02072388: .word 0x0000FFFF
_0207238C: .word 0x0214BFE8
	thumb_func_end FS_CreateFileFromRom

	thumb_func_start FS_Init
FS_Init: ; 0x02072390
	push {r3, lr}
	ldr r1, _020723A8 ; =0x0214C044
	ldr r2, [r1]
	cmp r2, #0
	bne _020723A6
	mov r2, #1
	str r2, [r1]
	bl FSi_InitRomArchive
	bl FSi_InitOverlay
_020723A6:
	pop {r3, pc}
	.align 2, 0
_020723A8: .word 0x0214C044
	thumb_func_end FS_Init

	thumb_func_start FS_IsAvailable
FS_IsAvailable: ; 0x020723AC
	ldr r0, _020723B4 ; =0x0214C044
	ldr r0, [r0]
	bx lr
	nop
_020723B4: .word 0x0214C044
	thumb_func_end FS_IsAvailable

