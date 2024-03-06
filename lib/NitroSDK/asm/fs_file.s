
	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
    
	thumb_func_start FSi_DecrementSjisPosition
FSi_DecrementSjisPosition: ; 0x02070BD0
	push {r3, r4}
	sub r2, r1, #1
	mov r4, #0x20
	b _02070BDA
_02070BD8:
	sub r2, r2, #1
_02070BDA:
	cmp r2, #0
	ble _02070BEC
	add r3, r0, r2
	sub r3, r3, #1
	ldrb r3, [r3]
	eor r3, r4
	sub r3, #0xa1
	cmp r3, #0x3c
	blo _02070BD8
_02070BEC:
	sub r3, r1, #1
	sub r1, r3, r2
	mov r0, #1
	and r0, r1
	sub r0, r3, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end FSi_DecrementSjisPosition

	thumb_func_start FSi_IncrementSjisPositionToSlash
FSi_IncrementSjisPositionToSlash: ; 0x02070BFC
	push {r3, r4, r5, r6}
	mov r2, #0
	mov r3, #1
	mov r5, #0x20
	b _02070C1C
_02070C06:
	lsl r4, r6, #0x18
	lsr r4, r4, #0x18
	eor r4, r5
	sub r4, #0xa1
	cmp r4, #0x3c
	bhs _02070C16
	add r4, r3, #0
	b _02070C18
_02070C16:
	add r4, r2, #0
_02070C18:
	add r1, r1, #1
	add r1, r1, r4
_02070C1C:
	ldrsb r6, [r0, r1]
	cmp r6, #0
	beq _02070C2E
	lsl r4, r6, #0x18
	lsr r4, r4, #0x18
	cmp r4, #0x2f
	beq _02070C2E
	cmp r4, #0x5c
	bne _02070C06
_02070C2E:
	add r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end FSi_IncrementSjisPositionToSlash

	thumb_func_start FSi_DecrementSjisPositionToSlash
FSi_DecrementSjisPositionToSlash: ; 0x02070C34
	push {r4, lr}
	add r4, r0, #0
_02070C38:
	add r0, r4, #0
	bl FSi_DecrementSjisPosition
	add r1, r0, #0
	bmi _02070C4C
	ldrb r0, [r4, r1]
	cmp r0, #0x2f
	beq _02070C4C
	cmp r0, #0x5c
	bne _02070C38
_02070C4C:
	add r0, r1, #0
	pop {r4, pc}
	thumb_func_end FSi_DecrementSjisPositionToSlash

	thumb_func_start FSi_TrimSjisTrailingSlash
FSi_TrimSjisTrailingSlash: ; 0x02070C50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl STD_GetStringLength
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FSi_DecrementSjisPosition
	cmp r0, #0
	blt _02070C76
	ldrb r1, [r5, r0]
	cmp r1, #0x2f
	beq _02070C70
	cmp r1, #0x5c
	bne _02070C76
_02070C70:
	mov r1, #0
	add r4, r0, #0
	strb r1, [r5, r0]
_02070C76:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_TrimSjisTrailingSlash

	thumb_func_start FS_InitFile
FS_InitFile: ; 0x02070C7C
	mov r1, #0x23
	mov r2, #0
	lsl r1, r1, #8
	orr r1, r2
	str r2, [r0, #8]
	str r2, [r0, #4]
	str r2, [r0]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end FS_InitFile

	thumb_func_start FS_CancelFile
FS_CancelFile: ; 0x02070C98
	push {r4, lr}
	add r4, r0, #0
	blx OS_DisableInterrupts
	ldr r1, [r4, #0xc]
	mov r2, #1
	tst r1, r2
	bne _02070CAA
	mov r2, #0
_02070CAA:
	cmp r2, #0
	beq _02070CC0
	ldr r2, [r4, #0xc]
	mov r1, #2
	orr r1, r2
	str r1, [r4, #0xc]
	ldr r3, [r4, #8]
	mov r1, #0x20
	ldr r2, [r3, #0x14]
	orr r1, r2
	str r1, [r3, #0x14]
_02070CC0:
	blx OS_RestoreInterrupts
	pop {r4, pc}
	.align 2, 0
	thumb_func_end FS_CancelFile

	thumb_func_start FS_ConvertPathToFileID
FS_ConvertPathToFileID: ; 0x02070CC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x174
	add r7, sp, #0x5c
	add r5, r0, #0
	mov r4, #0
	add r0, r1, #0
	add r1, sp, #0
	add r2, r7, #0
	str r4, [sp]
	bl FS_NormalizePath
	add r6, r0, #0
	beq _02070D0E
	add r0, sp, #0x14
	bl FS_InitFile
	add r0, sp, #4
	str r0, [sp, #0x24]
	ldr r0, [sp]
	str r7, [sp, #8]
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #4
	mov r2, #1
	str r6, [sp, #0x1c]
	str r4, [sp, #0x10]
	mov r7, #1
	bl FSi_SendCommand
	cmp r0, #0
	beq _02070D0E
	str r6, [r5]
	ldr r0, [sp, #0xc]
	add r4, r7, #0
	str r0, [r5, #4]
_02070D0E:
	add r0, r4, #0
	add sp, #0x174
	pop {r4, r5, r6, r7, pc}
	thumb_func_end FS_ConvertPathToFileID

	thumb_func_start FS_OpenFileDirect
FS_OpenFileDirect: ; 0x02070D14
	push {r3, lr}
	sub sp, #0x10
	str r1, [r0, #8]
	add r1, sp, #0
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x18]
	str r2, [sp, #4]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r1, #7
	mov r2, #1
	str r3, [sp, #8]
	bl FSi_SendCommand
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end FS_OpenFileDirect

	thumb_func_start FS_OpenFileFast
FS_OpenFileFast: ; 0x02070D38
	push {r0, r1, r2, r3}
	push {r3, lr}
	sub sp, #8
	ldr r1, [sp, #0x14]
	mov r3, #0
	ldr r2, [sp, #0x18]
	cmp r1, #0
	beq _02070D5C
	str r1, [r0, #8]
	add r1, sp, #0
	str r1, [r0, #0x10]
	str r2, [sp]
	mov r1, #6
	mov r2, #1
	str r3, [sp, #4]
	bl FSi_SendCommand
	add r3, r0, #0
_02070D5C:
	add r0, r3, #0
	add sp, #8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end FS_OpenFileFast

	thumb_func_start FS_OpenFileEx
FS_OpenFileEx: ; 0x02070D68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x128
	add r5, r0, #0
	add r6, r2, #0
	mov r4, #0
	add r0, r1, #0
	add r1, sp, #0
	add r2, sp, #0x10
	str r4, [sp]
	bl FS_NormalizePath
	add r7, r0, #0
	beq _02070DAE
	add r0, r5, #0
	bl FS_InitFile
	add r0, sp, #4
	str r7, [r5, #8]
	str r0, [r5, #0x10]
	ldr r0, [sp]
	str r6, [sp, #0xc]
	str r0, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #1
	mov r6, #1
	bl FSi_SendCommand
	cmp r0, #0
	beq _02070DAC
	add r4, r6, #0
	b _02070DAE
_02070DAC:
	str r4, [r5, #8]
_02070DAE:
	add r0, r4, #0
	add sp, #0x128
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FS_OpenFileEx

	thumb_func_start FS_CloseFile
FS_CloseFile: ; 0x02070DB4
	ldr r3, _02070DBC ; =FSi_SendCommand
	mov r1, #8
	mov r2, #1
	bx r3
	.align 2, 0
_02070DBC: .word FSi_SendCommand
	thumb_func_end FS_CloseFile

	thumb_func_start FS_GetFileLength
FS_GetFileLength: ; 0x02070DC0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r4, #0
	add r1, sp, #4
	add r5, r0, #0
	str r4, [sp, #4]
	bl FSi_GetFileLengthIfProc
	cmp r0, #0
	bne _02070DEC
	add r0, sp, #0
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #1
	str r4, [sp]
	bl FSi_SendCommand
	cmp r0, #0
	beq _02070DEC
	ldr r0, [sp]
	str r0, [sp, #4]
_02070DEC:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FS_GetFileLength

	thumb_func_start FS_GetFilePosition
FS_GetFilePosition: ; 0x02070DF4
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r4, #0
	add r1, sp, #4
	add r5, r0, #0
	str r4, [sp, #4]
	bl FSi_GetFilePositionIfProc
	cmp r0, #0
	bne _02070E20
	add r0, sp, #0
	str r0, [r5, #0x10]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #1
	str r4, [sp]
	bl FSi_SendCommand
	cmp r0, #0
	beq _02070E20
	ldr r0, [sp]
	str r0, [sp, #4]
_02070E20:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FS_GetFilePosition

	thumb_func_start FS_SeekFile
FS_SeekFile: ; 0x02070E28
	push {r3, lr}
	sub sp, #8
	add r3, sp, #0
	str r3, [r0, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0xe
	mov r2, #1
	bl FSi_SendCommand
	add sp, #8
	pop {r3, pc}
	thumb_func_end FS_SeekFile

	thumb_func_start FS_ReadFile
FS_ReadFile: ; 0x02070E40
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r3, sp, #0
	str r3, [r5, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	mov r2, #1
	mov r4, #1
	bl FSi_SendCommand
	cmp r0, #0
	beq _02070E5E
	b _02070E66
_02070E5E:
	ldr r0, [r5, #0x14]
	sub r2, r4, #2
	cmp r0, #6
	beq _02070E68
_02070E66:
	ldr r2, [sp, #4]
_02070E68:
	add r0, r2, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FS_ReadFile

	thumb_func_start FS_WriteFile
FS_WriteFile: ; 0x02070E70
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r3, sp, #0
	str r3, [r5, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #1
	mov r2, #1
	mov r4, #1
	bl FSi_SendCommand
	cmp r0, #0
	beq _02070E8E
	b _02070E96
_02070E8E:
	ldr r0, [r5, #0x14]
	sub r2, r4, #2
	cmp r0, #6
	beq _02070E98
_02070E96:
	ldr r2, [sp, #4]
_02070E98:
	add r0, r2, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FS_WriteFile

	thumb_func_start FS_OpenFile
FS_OpenFile: ; 0x02070EA0
	ldr r3, _02070EA8 ; =FS_OpenFileEx
	mov r2, #1
	bx r3
	nop
_02070EA8: .word FS_OpenFileEx
	thumb_func_end FS_OpenFile

	thumb_func_start FS_GetLength
FS_GetLength: ; 0x02070EAC
	ldr r3, _02070EB0 ; =FS_GetFileLength
	bx r3
	.align 2, 0
_02070EB0: .word FS_GetFileLength
	thumb_func_end FS_GetLength

	thumb_func_start FS_ChangeDir
FS_ChangeDir: ; 0x02070EB4
	ldr r3, _02070EB8 ; =FS_SetCurrentDirectory
	bx r3
	.align 2, 0
_02070EB8: .word FS_SetCurrentDirectory
	thumb_func_end FS_ChangeDir