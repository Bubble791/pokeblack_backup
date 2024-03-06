	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text


	thumb_func_start sub_02070EBC
sub_02070EBC: ; 0x02070EBC
	push {r4, lr}
	bl OS_GetBootType
	cmp r0, #2
	bne _02070ED6
	mov r2, #0
	ldr r0, _02070EF8 ; =0x0214BF60
	mvn r2, r2
	str r2, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	b _02070EE0
_02070ED6:
	ldr r0, _02070EF8 ; =0x0214BF60
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
_02070EE0:
	str r1, [r0, #0x14]
	ldr r0, _02070EFC ; =0x02094548
	ldr r4, _02070EF8 ; =0x0214BF60
	mov r1, #3
	str r0, [r4, #0x18]
	mov r0, #0x40
	str r0, [r4, #0x1c]
	ldr r0, _02070F00 ; =0x0209B50C
	bl FS_FindArchive
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_02070EF8: .word 0x0214BF60
_02070EFC: .word 0x02094548
_02070F00: .word 0x0209B50C
	thumb_func_end sub_02070EBC

	thumb_func_start FSi_GetOverlayBinarySize
FSi_GetOverlayBinarySize: ; 0x02070F04
	ldr r2, [r0, #0x1c]
	mov r1, #1
	lsr r3, r2, #0x18
	tst r1, r3
	beq _02070F14
	lsl r0, r2, #8
	lsr r0, r0, #8
	bx lr
_02070F14:
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end FSi_GetOverlayBinarySize

	thumb_func_start FS_ClearOverlayImage
FS_ClearOverlayImage: ; 0x02070F18
	push {r4, r5, r6, lr}
	ldr r4, [r0, #4]
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
	add r6, r5, r0
	add r0, r4, #0
	add r1, r6, #0
	blx IC_InvalidateRange
	add r0, r4, #0
	add r1, r6, #0
	blx DC_InvalidateRange
	add r0, r4, r5
	mov r1, #0
	sub r2, r6, r5
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end FS_ClearOverlayImage

	thumb_func_start FS_GetOverlayFileID
FS_GetOverlayFileID: ; 0x02070F40
	sub sp, #8
	ldr r2, _02070F54 ; =0x0214BF60
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #4]
	str r1, [sp, #4]
	str r2, [sp]
	str r2, [r0]
	str r1, [r0, #4]
	add sp, #8
	bx lr
	.align 2, 0
_02070F54: .word 0x0214BF60
	thumb_func_end FS_GetOverlayFileID

	thumb_func_start FS_LoadOverlayInfo
FS_LoadOverlayInfo: ; 0x02070F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	add r4, r0, #0
	mov r0, #0
	add r7, r1, #0
	lsl r6, r2, #5
	str r0, [sp]
	ldr r5, _0207104C ; =0x0214BF68
	cmp r7, #0
	beq _02070F6E
	ldr r5, _02071050 ; =0x0214BF70
_02070F6E:
	ldr r0, _02071054 ; =0x00000158
	cmp r2, r0
	blo _02070F7C
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02071046
_02070F7C:
	ldr r0, [r5]
	cmp r0, #0
	beq _02070FC6
	ldr r0, [r5, #4]
	cmp r6, r0
	bhs _02071046
	add r0, sp, #0x5c
	bl FS_InitFile
	ldr r0, [r5]
	add r1, r4, #0
	add r0, r0, r6
	mov r2, #0x20
	blx MI_CpuCopy8
	add r5, sp, #0xc
	add r0, r5, #0
	add r1, r4, #0
	str r7, [r4, #0x20]
	bl FS_GetOverlayFileID
	add r0, sp, #0x5c
	ldmia r5!, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _02071046
	add r0, sp, #0x5c
	bl FS_GetFileImageTop
	str r0, [r4, #0x24]
	add r0, sp, #0x5c
	bl FS_GetFileLength
	str r0, [r4, #0x28]
	add r0, sp, #0x5c
	b _0207103E
_02070FC6:
	cmp r7, #0
	bne _02070FD4
	bl CARD_GetOwnRomHeader
	add r5, r0, #0
	add r5, #0x50
	b _02070FDC
_02070FD4:
	bl CARD_GetOwnRomHeader
	add r5, r0, #0
	add r5, #0x58
_02070FDC:
	ldr r0, [r5, #4]
	cmp r6, r0
	bhs _02071046
	add r0, sp, #0x14
	bl FS_InitFile
	ldr r2, [r5]
	ldr r3, [r5, #4]
	add r1, r2, r6
	add r0, sp, #0x14
	add r2, r2, r3
	bl FS_CreateFileFromRom
	cmp r0, #0
	beq _02071046
	add r0, sp, #0x14
	add r1, r4, #0
	mov r2, #0x20
	bl FS_ReadFile
	cmp r0, #0x20
	add r0, sp, #0x14
	beq _02071010
	bl FS_CloseFile
	b _02071046
_02071010:
	bl FS_CloseFile
	add r5, sp, #4
	add r0, r5, #0
	add r1, r4, #0
	str r7, [r4, #0x20]
	bl FS_GetOverlayFileID
	add r0, sp, #0x14
	ldmia r5!, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _02071046
	add r0, sp, #0x14
	bl FS_GetFileImageTop
	str r0, [r4, #0x24]
	add r0, sp, #0x14
	bl FS_GetFileLength
	str r0, [r4, #0x28]
	add r0, sp, #0x14
_0207103E:
	bl FS_CloseFile
	mov r0, #1
	str r0, [sp]
_02071046:
	ldr r0, [sp]
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0207104C: .word 0x0214BF68
_02071050: .word 0x0214BF70
_02071054: .word 0x00000158
	thumb_func_end FS_LoadOverlayInfo

	thumb_func_start FS_LoadOverlayImage
FS_LoadOverlayImage: ; 0x02071058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r7, sp, #8
	add r4, r0, #0
	add r0, r7, #0
	mov r6, #0
	bl FS_InitFile
	add r5, sp, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FS_GetOverlayFileID
	add r0, r7, #0
	ldmia r5!, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _020710A2
	add r0, r4, #0
	bl FSi_GetOverlayBinarySize
	add r5, r0, #0
	add r0, r4, #0
	bl FS_ClearOverlayImage
	ldr r1, [r4, #4]
	add r0, r7, #0
	add r2, r5, #0
	bl FS_ReadFile
	cmp r5, r0
	bne _0207109C
	mov r6, #1
_0207109C:
	add r0, sp, #8
	bl FS_CloseFile
_020710A2:
	add r0, r6, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FS_LoadOverlayImage

	thumb_func_start FSi_CompareDigest
FSi_CompareDigest: ; 0x020710A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r0, sp, #0x48
	mov r1, #0
	mov r2, #0x14
	add r4, r3, #0
	blx MI_CpuFill8
	ldr r0, _02071138 ; =0x0214BF60
	ldr r2, _02071138 ; =0x0214BF60
	ldr r0, [r0, #0x18]
	ldr r2, [r2, #0x1c]
	add r1, sp, #8
	blx MI_CpuCopy8
	cmp r4, #0
	bne _020710EC
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020710EC
	ldr r0, _02071138 ; =0x0214BF60
	add r1, r6, #0
	ldr r0, [r0, #0x1c]
	add r2, r7, #0
	str r0, [sp]
	add r0, sp, #0x48
	add r3, sp, #8
	bl sub_0208287C
	b _02071118
_020710EC:
	mov r0, #0
	str r0, [sp, #4]
	cmp r4, #0
	beq _020710FC
	mov r0, #1
	bl MATHi_SetOverlayTableMode
	str r0, [sp, #4]
_020710FC:
	ldr r0, _02071138 ; =0x0214BF60
	add r1, r6, #0
	ldr r0, [r0, #0x1c]
	add r2, r7, #0
	str r0, [sp]
	add r0, sp, #0x48
	add r3, sp, #8
	bl MATH_CalcHMACSHA1
	cmp r4, #0
	beq _02071118
	ldr r0, [sp, #4]
	bl MATHi_SetOverlayTableMode
_02071118:
	mov r3, #0
	add r2, sp, #0x48
_0207111C:
	ldr r1, [r2, r3]
	ldr r0, [r5, r3]
	cmp r1, r0
	bne _0207112A
	add r3, r3, #4
	cmp r3, #0x14
	blo _0207111C
_0207112A:
	mov r0, #1
	cmp r3, #0x14
	beq _02071132
	mov r0, #0
_02071132:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02071138: .word 0x0214BF60
	thumb_func_end FSi_CompareDigest

	thumb_func_start FS_StartOverlay
FS_StartOverlay: ; 0x0207113C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FSi_GetOverlayBinarySize
	add r7, r0, #0
	ldr r1, [r5, #4]
	ldr r0, _020711EC ; =0x02700000
	cmp r1, r0
	blo _02071168
	ldr r0, _020711F0 ; =0x0276DDE0
	cmp r1, r0
	bhs _02071168
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _02071168
	ldr r0, _020711F4 ; =0x0214BF60
	ldr r1, [r0]
	cmp r1, #0
	bne _02071168
	mov r1, #1
	str r1, [r0]
_02071168:
	bl OS_GetBootType
	cmp r0, #1
	beq _020711B8
	ldr r0, [r5, #0x1c]
	mov r6, #0
	lsr r1, r0, #0x18
	mov r0, #2
	tst r0, r1
	beq _020711A4
	ldr r1, _020711F8 ; =0x0209D728
	ldr r0, _020711FC ; =0x0209BC48
	ldr r4, [r5]
	sub r0, r1, r0
	mov r1, #0x14
	blx sub_0208D65C
	cmp r4, r0
	bhs _020711A4
	mov r0, #0x14
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020711FC ; =0x0209BC48
	add r2, r7, #0
	add r0, r0, r1
	ldr r1, [r5, #4]
	add r3, r6, #0
	bl FSi_CompareDigest
	add r6, r0, #0
_020711A4:
	cmp r6, #0
	bne _020711B8
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, r7, #0
	blx MI_CpuFill8
	bl OS_Terminate
	pop {r3, r4, r5, r6, r7, pc}
_020711B8:
	ldr r0, [r5, #0x1c]
	lsr r1, r0, #0x18
	mov r0, #1
	tst r0, r1
	beq _020711CA
	ldr r0, [r5, #4]
	add r0, r0, r7
	blx sub_02004DF4
_020711CA:
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	blx DC_FlushRange
	ldr r4, [r5, #0x10]
	ldr r5, [r5, #0x14]
	cmp r4, r5
	bhs _020711E8
_020711DA:
	ldr r0, [r4]
	cmp r0, #0
	beq _020711E2
	blx r0
_020711E2:
	add r4, r4, #4
	cmp r4, r5
	blo _020711DA
_020711E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020711EC: .word 0x02700000
_020711F0: .word 0x0276DDE0
_020711F4: .word 0x0214BF60
_020711F8: .word 0x0209D728
_020711FC: .word 0x0209BC48
	thumb_func_end FS_StartOverlay

	thumb_func_start FS_EndOverlay
FS_EndOverlay: ; 0x02071200
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
_02071206:
	ldr r0, [sp]
	mov r6, #0
	ldr r0, [r0, #4]
	mov r7, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #4]
	blx OS_DisableInterrupts
	mov ip, r0
	ldr r0, _020712A0 ; =0x0214F4F8
	mov r1, #0
	ldr r2, [r0]
	str r2, [sp, #0xc]
	add r0, r2, #0
	beq _0207127E
_02071230:
	ldr r4, [r2, #8]
	ldr r3, [r2]
	ldr r0, [r2, #4]
	cmp r4, #0
	bne _02071246
	ldr r5, [sp, #8]
	cmp r0, r5
	blo _02071246
	ldr r5, [sp, #4]
	cmp r0, r5
	blo _02071252
_02071246:
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _02071276
	ldr r0, [sp, #4]
	cmp r4, r0
	bhs _02071276
_02071252:
	cmp r7, #0
	bne _0207125A
	add r6, r2, #0
	b _0207125C
_0207125A:
	str r2, [r7]
_0207125C:
	ldr r0, [sp, #0xc]
	cmp r0, r2
	bne _02071268
	ldr r0, _020712A0 ; =0x0214F4F8
	str r3, [sp, #0xc]
	str r3, [r0]
_02071268:
	mov r0, #0
	add r7, r2, #0
	str r0, [r2]
	cmp r1, #0
	beq _02071278
	str r3, [r1]
	b _02071278
_02071276:
	add r1, r2, #0
_02071278:
	add r2, r3, #0
	cmp r3, #0
	bne _02071230
_0207127E:
	mov r0, ip
	blx OS_RestoreInterrupts
	cmp r6, #0
	beq _0207129C
_02071288:
	ldr r1, [r6, #4]
	ldr r4, [r6]
	cmp r1, #0
	beq _02071294
	ldr r0, [r6, #8]
	blx r1
_02071294:
	add r6, r4, #0
	cmp r4, #0
	bne _02071288
	b _02071206
_0207129C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020712A0: .word 0x0214F4F8
	thumb_func_end FS_EndOverlay

	thumb_func_start FS_UnloadOverlayImage
FS_UnloadOverlayImage: ; 0x020712A4
	push {r3, lr}
	bl FS_EndOverlay
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end FS_UnloadOverlayImage

	thumb_func_start FS_LoadOverlay
FS_LoadOverlay: ; 0x020712B0
	push {r4, r5, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r4, sp, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	mov r5, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	beq _020712DA
	add r0, r4, #0
	bl FS_LoadOverlayImage
	cmp r0, #0
	beq _020712DA
	add r0, r4, #0
	bl FS_StartOverlay
	mov r5, #1
_020712DA:
	add r0, r5, #0
	add sp, #0x2c
	pop {r4, r5, pc}
	thumb_func_end FS_LoadOverlay

	thumb_func_start FS_UnloadOverlay
FS_UnloadOverlay: ; 0x020712E0
	push {r3, r4, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r4, sp, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	beq _02071306
	add r0, r4, #0
	bl FS_UnloadOverlayImage
	cmp r0, #0
	beq _02071306
	add sp, #0x2c
	mov r0, #1
	pop {r3, r4, pc}
_02071306:
	mov r0, #0
	add sp, #0x2c
	pop {r3, r4, pc}
	thumb_func_end FS_UnloadOverlay

	thumb_func_start FSi_ReadTable
FSi_ReadTable: ; 0x0207130C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5]
	add r7, r2, #0
	ldr r6, [r4, #0x20]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	beq _02071326
	ldr r0, [r5, #4]
	blx MI_CpuCopy8
	mov r0, #0
	b _02071338
_02071326:
	ldr r2, [r5, #4]
	ldr r6, [r6, #0x20]
	add r0, r4, #0
	add r3, r7, #0
	blx r6
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl FSi_WaitForArchiveCompletion
_02071338:
	ldr r1, [r5, #4]
	add r1, r1, r7
	str r1, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FSi_ReadTable

	thumb_func_start FSi_SeekDirDirect
FSi_SeekDirDirect: ; 0x02071340
	ldr r2, [r0, #8]
	strh r1, [r0, #0x34]
	mov r1, #0
	str r2, [r0, #0x30]
	ldr r3, _02071354 ; =FSi_TranslateCommand
	strh r1, [r0, #0x36]
	str r1, [r0, #0x38]
	mov r1, #2
	mov r2, #1
	bx r3
	.align 2, 0
_02071354: .word FSi_TranslateCommand
	thumb_func_end FSi_SeekDirDirect

	thumb_func_start FSi_SeekDirDefault
FSi_SeekDirDefault: ; 0x02071358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r5, #0
	ldr r6, [r0, #0x20]
	add r4, #0x30
	str r0, [sp]
	ldrh r0, [r4, #4]
	ldr r1, [r6, #0xc]
	mov r2, #8
	lsl r0, r0, #3
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, sp, #0
	add r1, sp, #8
	bl FSi_ReadTable
	add r7, r0, #0
	bne _020713B2
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _020713A8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020713A8
	add r0, sp, #0
	ldrh r0, [r0, #0xc]
	strh r0, [r5, #0x26]
	ldr r1, [r6, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r5, #0x28]
_020713A8:
	add r0, sp, #0
	ldrh r1, [r0, #0xe]
	ldr r0, _020713B8 ; =0x00000FFF
	and r0, r1
	str r0, [r5, #0x2c]
_020713B2:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020713B8: .word 0x00000FFF
	thumb_func_end FSi_SeekDirDefault

	thumb_func_start FSi_ReadDirDefault
FSi_ReadDirDefault: ; 0x020713BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #0x30]
	ldr r0, [r5, #8]
	add r7, sp, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	add r1, sp, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r2, #1
	mov r6, #1
	bl FSi_ReadTable
	cmp r0, #0
	bne _0207145E
	add r1, sp, #0
	ldrb r1, [r1]
	mov r2, #0x7f
	and r2, r1
	asr r1, r1, #7
	and r1, r6
	str r2, [r4, #0x10]
	str r1, [r4, #0xc]
	cmp r2, #0
	bne _020713F8
	add sp, #0xc
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020713F8:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	bne _02071416
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x14
	bl FSi_ReadTable
	cmp r0, #0
	bne _0207145E
	ldr r1, [r4, #0x10]
	mov r2, #0
	add r1, r4, r1
	strb r2, [r1, #0x14]
	b _0207141C
_02071416:
	ldr r1, [sp, #8]
	add r1, r1, r2
	str r1, [sp, #8]
_0207141C:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02071432
	ldr r1, [r5, #8]
	str r1, [r4]
	ldrh r1, [r5, #0x26]
	str r1, [r4, #4]
	ldrh r1, [r5, #0x26]
	add r1, r1, #1
	strh r1, [r5, #0x26]
	b _02071456
_02071432:
	add r1, sp, #0
	add r0, sp, #4
	add r1, #2
	mov r2, #2
	bl FSi_ReadTable
	cmp r0, #0
	bne _02071456
	ldr r1, [r5, #8]
	str r1, [r4]
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldr r1, _02071464 ; =0x00000FFF
	and r1, r2
	strh r1, [r4, #4]
	mov r1, #0
	strh r1, [r4, #6]
	str r1, [r4, #8]
_02071456:
	cmp r0, #0
	bne _0207145E
	ldr r1, [sp, #8]
	str r1, [r5, #0x28]
_0207145E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02071464: .word 0x00000FFF
	thumb_func_end FSi_ReadDirDefault

	thumb_func_start FSi_FindPathDefault
FSi_FindPathDefault: ; 0x02071468
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r1, r0, #0
	ldr r1, [r1, #0x40]
	ldr r4, [r0, #0x3c]
	str r1, [sp, #8]
	mov r1, #2
	mov r2, #1
	str r0, [sp]
	bl FSi_TranslateCommand
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _02071488
	b _020715A8
_02071488:
	add r0, r4, #0
	mov r1, #0
	mov r6, #0
	bl FSi_IncrementSjisPositionToSlash
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	ldrsb r0, [r4, r5]
	cmp r0, #0
	bne _020714A6
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020714A6
	str r6, [sp, #4]
_020714A6:
	cmp r5, #0
	bne _020714B0
	add sp, #0xa0
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_020714B0:
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0x2e
	bne _020714E2
	cmp r5, #1
	bne _020714C0
	add r4, r4, #1
	b _02071592
_020714C0:
	cmp r5, #2
	bne _020714E6
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0x2e
	bne _020714E6
	ldr r0, [sp]
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _020714DE
	ldr r0, [sp]
	add r1, r0, #0
	ldr r1, [r1, #0x2c]
	bl FSi_SeekDirDirect
_020714DE:
	add r4, r4, #2
	b _02071592
_020714E2:
	cmp r0, #0x2a
	beq _020715A8
_020714E6:
	cmp r5, #0x7f
	ble _020714F0
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_020714F0:
	ldr r0, [sp]
	add r6, sp, #0xc
	mov r1, #0
	str r6, [r0, #0x30]
	str r1, [r0, #0x34]
	mov r7, #0x14
_020714FC:
	ldr r0, [sp]
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _02071510
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02071510:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _020714FC
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _020714FC
	mov r0, #0
	mov r1, #0
	cmp r5, #0
	bls _0207154E
_02071526:
	ldrsb r0, [r4, r1]
	add r2, r6, r1
	ldrsb r2, [r2, r7]
	sub r0, #0x41
	lsl r0, r0, #0x18
	sub r2, #0x41
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	cmp r0, #0x19
	bhi _0207153E
	add r0, #0x20
_0207153E:
	cmp r2, #0x19
	bhi _02071544
	add r2, #0x20
_02071544:
	sub r0, r0, r2
	bne _0207154E
	add r1, r1, #1
	cmp r1, r5
	blo _02071526
_0207154E:
	cmp r0, #0
	bne _020714FC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02071574
	add r3, sp, #0xc
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	ldr r0, [sp]
	mov r2, #1
	add r4, r4, r5
	bl FSi_TranslateCommand
	b _02071592
_02071574:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02071580
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02071580:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [r0, #0x44]
	ldr r0, [sp, #0x10]
	add sp, #0xa0
	str r1, [r2]
	str r0, [r2, #4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02071592:
	mov r1, #0
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _0207159C
	mov r1, #1
_0207159C:
	add r4, r4, r1
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _020715A8
	b _02071488
_020715A8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020715B4
	add sp, #0xa0
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_020715B4:
	ldr r0, [sp]
	add r2, r0, #0
	add r2, #0x20
	ldr r3, [r0, #0x44]
	str r2, [sp]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp]
	str r0, [r3]
	mov r0, #0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FSi_FindPathDefault

	thumb_func_start FSi_GetPathDefault
FSi_GetPathDefault: ; 0x020715D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xfc
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r6, sp, #0x20
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0x30
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	bl FS_InitFile
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x28]
	ldr r1, [r4, #0xc]
	mov r0, #0x20
	tst r0, r1
	beq _020715FA
	mov r0, #1
	b _020715FC
_020715FA:
	mov r0, #0
_020715FC:
	cmp r0, #0
	beq _02071608
	ldrh r5, [r4, #0x24]
	mov r4, #1
	lsl r4, r4, #0x10
	b _02071674
_02071608:
	mov r0, #0
	mov r5, #1
	str r0, [sp, #0xc]
	mov r0, #0
	lsl r5, r5, #0x10
	ldr r4, [r4, #0x20]
	str r0, [sp, #8]
	mov r7, #3
	str r5, [sp, #0x1c]
_0207161A:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl FSi_SeekDirDirect
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0207162C
	ldr r0, [sp, #0x4c]
	str r0, [sp, #8]
_0207162C:
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _02071662
_02071642:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	bne _02071654
	ldr r0, [sp, #0x6c]
	cmp r0, r4
	bne _02071654
	add r0, sp, #0x20
	ldrh r5, [r0, #0x24]
	b _02071662
_02071654:
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _02071642
_02071662:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _02071674
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _0207161A
_02071674:
	mov r0, #1
	lsl r0, r0, #0x10
	add r7, sp, #0x20
	cmp r5, r0
	bne _0207168A
	ldr r0, [sp, #0x10]
	mov r1, #0
	strh r1, [r0, #8]
	add sp, #0xfc
	mov r0, #0xb
	pop {r4, r5, r6, r7, pc}
_0207168A:
	ldr r0, [sp, #0x14]
	add r6, r5, #0
	bl FS_GetArchiveName
	bl STD_GetStringLength
	add r0, r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl FSi_SeekDirDirect
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r4, r0
	beq _020716B2
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
_020716B2:
	cmp r5, #0
	beq _02071704
_020716B6:
	ldr r1, [sp, #0x4c]
	add r0, r7, #0
	bl FSi_SeekDirDirect
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	add r0, r7, #0
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _020716FC
_020716D4:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	beq _020716EE
	add r0, sp, #0x68
	ldrh r0, [r0, #4]
	cmp r0, r6
	bne _020716EE
	ldr r0, [sp, #0x78]
	add r1, r0, #1
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #4]
	b _020716FC
_020716EE:
	add r0, r7, #0
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _020716D4
_020716FC:
	add r0, sp, #0x20
	ldrh r6, [r0, #0x24]
	cmp r6, #0
	bne _020716B6
_02071704:
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, [r0]
	str r0, [sp]
	cmp r0, #0
	beq _02071812
	ldr r0, [sp, #0x10]
	ldrh r6, [r0, #8]
	ldr r0, [r0, #4]
	cmp r0, r6
	blo _02071812
	ldr r0, [sp, #0x14]
	bl FS_GetArchiveName
	str r0, [sp, #0x18]
	bl STD_GetStringLength
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp]
	add r2, r7, #0
	blx MI_CpuCopy8
	mov r0, #0
	add r2, r0, r7
	ldr r1, [sp]
	ldr r0, _02071818 ; =0x0209B510
	add r1, r1, r2
	mov r2, #2
	mov r7, #2
	blx MI_CpuCopy8
	add r0, sp, #0x20
	add r1, r5, #0
	bl FSi_SeekDirDirect
	lsl r0, r7, #0xf
	cmp r4, r0
	beq _020717A0
	add r0, sp, #0x68
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x54]
	add r0, sp, #0x20
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _0207178A
	mov r7, #3
_02071770:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	bne _0207177C
	ldr r0, [sp, #0x6c]
	cmp r0, r4
	beq _0207178A
_0207177C:
	add r0, sp, #0x20
	add r1, r7, #0
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _02071770
_0207178A:
	ldr r0, [sp, #0x78]
	ldr r1, [sp]
	add r4, r0, #1
	add r1, r1, r6
	add r0, sp, #0x7c
	sub r1, r1, r4
	add r2, r4, #0
	blx MI_CpuCopy8
	sub r6, r6, r4
	b _020717AC
_020717A0:
	ldr r0, [sp]
	add r0, r0, r6
	sub r1, r0, #1
	mov r0, #0
	strb r0, [r1]
	sub r6, r6, #1
_020717AC:
	add r4, sp, #0x20
	cmp r5, #0
	beq _02071812
	add r7, sp, #0x68
_020717B4:
	ldr r1, [sp, #0x4c]
	add r0, r4, #0
	bl FSi_SeekDirDirect
	mov r0, #0
	str r0, [sp, #0x54]
	ldr r0, [sp]
	str r7, [sp, #0x50]
	add r0, r0, r6
	sub r1, r0, #1
	mov r0, #0x2f
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	sub r6, r6, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _0207180A
_020717DC:
	ldr r0, [sp, #0x74]
	cmp r0, #0
	beq _020717FC
	ldrh r0, [r7, #4]
	cmp r0, r5
	bne _020717FC
	ldr r1, [sp]
	ldr r5, [sp, #0x78]
	add r1, r1, r6
	add r0, sp, #0x7c
	sub r1, r1, r5
	add r2, r5, #0
	blx MI_CpuCopy8
	sub r6, r6, r5
	b _0207180A
_020717FC:
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _020717DC
_0207180A:
	add r0, sp, #0x20
	ldrh r5, [r0, #0x24]
	cmp r5, #0
	bne _020717B4
_02071812:
	mov r0, #0
	add sp, #0xfc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02071818: .word 0x0209B510
	thumb_func_end FSi_GetPathDefault

	thumb_func_start FSi_OpenFileFastDefault
FSi_OpenFileFastDefault: ; 0x0207181C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r3, [r5, #8]
	ldr r4, [r5, #0x34]
	ldr r2, [r3, #0x20]
	lsl r1, r4, #3
	ldr r0, [r2, #8]
	cmp r1, r0
	blo _02071836
	add sp, #0x10
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02071836:
	str r3, [sp]
	ldr r0, [r2, #4]
	mov r2, #8
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, sp, #0
	add r1, sp, #8
	bl FSi_ReadTable
	cmp r0, #0
	bne _02071860
	ldr r0, [sp, #8]
	mov r1, #7
	str r0, [r5, #0x30]
	ldr r0, [sp, #0xc]
	mov r2, #1
	str r0, [r5, #0x34]
	add r0, r5, #0
	str r4, [r5, #0x38]
	bl FSi_TranslateCommand
_02071860:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end FSi_OpenFileFastDefault

	thumb_func_start FSi_OpenFileDirectDefault
FSi_OpenFileDirectDefault: ; 0x02071864
	ldr r1, [r0, #0x30]
	str r1, [r0, #0x24]
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x34]
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0x20]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end FSi_OpenFileDirectDefault

	thumb_func_start FSi_ReadFileDefault
FSi_ReadFileDefault: ; 0x02071878
	push {r4, r5, r6, lr}
	ldr r6, [r0, #8]
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr r5, [r6, #0x20]
	add r4, r2, r3
	str r4, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	ldr r4, [r5, #0x20]
	add r0, r6, #0
	blx r4
	pop {r4, r5, r6, pc}
	thumb_func_end FSi_ReadFileDefault

	thumb_func_start FSi_WriteFileDefault
FSi_WriteFileDefault: ; 0x02071890
	push {r4, r5, r6, lr}
	ldr r6, [r0, #8]
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr r5, [r6, #0x20]
	add r4, r2, r3
	str r4, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	ldr r4, [r5, #0x24]
	add r0, r6, #0
	blx r4
	pop {r4, r5, r6, pc}
	thumb_func_end FSi_WriteFileDefault

	thumb_func_start FSi_IgnoredCommand
FSi_IgnoredCommand: ; 0x020718A8
	mov r0, #0
	bx lr
	thumb_func_end FSi_IgnoredCommand

	thumb_func_start FSi_TranslateCommand
FSi_TranslateCommand: ; 0x020718AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp]
	add r2, r0, #0
	ldr r2, [r2, #8]
	add r5, r1, #0
	ldr r4, [r2, #0x20]
	mov r2, #1
	lsl r2, r5
	ldr r3, [r4, #0x30]
	mov r7, #1
	str r0, [sp, #8]
	ldr r6, _02071938 ; =0x00000101
	str r2, [sp, #4]
	tst r2, r3
	beq _02071906
	ldr r2, [r4, #0x2c]
	blx r2
	add r6, r0, #0
	add r0, r7, #0
	add r0, #0xff
	cmp r6, r0
	bgt _020718F2
	add r7, #0xff
	cmp r6, r7
	bge _02071906
	cmp r6, #4
	bgt _02071906
	cmp r6, #0
	blt _02071906
	beq _02071906
	cmp r6, #1
	beq _02071906
	cmp r6, #4
	b _02071906
_020718F2:
	ldr r0, _02071938 ; =0x00000101
	add r0, r0, #1
	cmp r6, r0
	bne _02071906
	ldr r0, [sp, #4]
	ldr r1, [r4, #0x30]
	mvn r0, r0
	and r0, r1
	ldr r6, _02071938 ; =0x00000101
	str r0, [r4, #0x30]
_02071906:
	ldr r0, _02071938 ; =0x00000101
	cmp r6, r0
	bne _02071920
	cmp r5, #0xd
	bhs _0207191E
	ldr r1, _0207193C ; =0x02094588
	lsl r2, r5, #2
	ldr r0, [sp, #8]
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	b _02071920
_0207191E:
	mov r6, #4
_02071920:
	ldr r0, [sp]
	cmp r0, #0
	beq _02071930
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl FSi_WaitForArchiveCompletion
	add r6, r0, #0
_02071930:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02071938: .word 0x00000101
_0207193C: .word 0x02094588
	thumb_func_end FSi_TranslateCommand

	thumb_func_start FSi_ROMFAT_ReadFile
FSi_ROMFAT_ReadFile: ; 0x02071940
	push {r4, lr}
	ldr r0, [r1, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	sub r0, r4, r0
	ldr r4, [r3]
	cmp r4, r0
	bls _02071952
	str r0, [r3]
_02071952:
	str r2, [r1, #0x30]
	str r4, [r1, #0x34]
	ldr r0, [r3]
	mov r2, #0
	str r0, [r1, #0x38]
	add r0, r1, #0
	mov r1, #0
	bl FSi_TranslateCommand
	pop {r4, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_ReadFile

	thumb_func_start FSi_ROMFAT_WriteFile
FSi_ROMFAT_WriteFile: ; 0x02071968
	push {r4, lr}
	ldr r0, [r1, #4]
	ldr r4, [r0, #8]
	ldr r0, [r0, #0xc]
	sub r0, r4, r0
	ldr r4, [r3]
	cmp r4, r0
	bls _0207197A
	str r0, [r3]
_0207197A:
	str r2, [r1, #0x30]
	str r4, [r1, #0x34]
	ldr r0, [r3]
	mov r2, #0
	str r0, [r1, #0x38]
	add r0, r1, #0
	mov r1, #1
	bl FSi_TranslateCommand
	pop {r4, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_WriteFile

	thumb_func_start FSi_ROMFAT_SeekDirectory
FSi_ROMFAT_SeekDirectory: ; 0x02071990
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, #0x30
	lsr r0, r2, #0x10
	strh r2, [r1, #4]
	strh r0, [r1, #6]
	str r3, [r1, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	str r5, [r4, #8]
	str r5, [r4, #0x30]
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _020719C6
	ldr r2, [r4, #0xc]
	mov r1, #0x20
	orr r2, r1
	mov r1, #0x10
	bic r2, r1
	add r1, r4, #0
	add r1, #0x20
	str r2, [r4, #0xc]
	str r5, [r4, #8]
	str r1, [r4, #4]
_020719C6:
	pop {r3, r4, r5, pc}
	thumb_func_end FSi_ROMFAT_SeekDirectory

	thumb_func_start FSi_ROMFAT_ReadDirectory
FSi_ROMFAT_ReadDirectory: ; 0x020719C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa8
	add r5, r2, #0
	add r2, r1, #0
	add r6, r0, #0
	add r0, sp, #0x14
	str r0, [r1, #0x30]
	add r0, r1, #0
	add r2, #0x30
	mov r7, #0
	str r7, [r2, #4]
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	str r0, [sp]
	cmp r0, #0
	bne _02071AA4
	str r7, [r5, #0x10]
	mov r4, #0x46
	add r1, r5, #0
	ldr r2, [sp, #0x24]
	lsl r4, r4, #2
	str r2, [r5, r4]
	add r0, sp, #0x28
	add r1, #0x14
	blx MI_CpuCopy8
	ldr r0, [r5, r4]
	add r0, r5, r0
	strb r7, [r0, #0x14]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02071A2A
	add r1, r4, #0
	sub r1, #0x18
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, sp, #4
	ldrh r1, [r0, #0x14]
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x10
	orr r1, r0
	add r0, r4, #0
	add r0, #0x54
	str r1, [r5, r0]
	add r4, #0x50
	str r7, [r5, r4]
	b _02071A82
_02071A2A:
	add r0, r4, #4
	str r7, [r5, r0]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x54
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x50
	str r7, [r5, r1]
	ldr r2, [r6, #0x20]
	lsl r1, r0, #3
	ldr r0, [r2, #8]
	cmp r1, r0
	bhs _02071A82
	str r6, [sp, #4]
	ldr r0, [r2, #4]
	mov r2, #8
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, sp, #4
	add r1, sp, #0xc
	mov r7, #8
	bl FSi_ReadTable
	cmp r0, #0
	bne _02071A82
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	sub r1, r1, r0
	add r0, r4, #0
	add r0, #0x50
	str r1, [r5, r0]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_02072130
	cmp r0, #0
	beq _02071A82
	add r0, r4, #4
	ldr r1, [r5, r0]
	lsl r0, r7, #7
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
_02071A82:
	mov r1, #0x4e
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x10
	str r2, [r5, r0]
	add r1, #0x14
	str r2, [r5, r1]
_02071AA4:
	ldr r0, [sp]
	add sp, #0xa8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_ReadDirectory

	thumb_func_start FSi_ROMFAT_FindPath
FSi_ROMFAT_FindPath: ; 0x02071AAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r0, sp, #0xc
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl FS_InitFile
	add r0, sp, #0xc
	mov r1, #0
	strh r6, [r0, #0x34]
	strh r1, [r0, #0x36]
	ldr r0, [sp, #0x68]
	str r1, [sp, #0x44]
	str r0, [sp, #0x4c]
	add r0, sp, #0
	str r0, [sp, #0x50]
	add r0, sp, #0xc
	mov r1, #4
	mov r2, #1
	str r5, [sp, #0x14]
	str r5, [sp, #0x3c]
	str r7, [sp, #0x48]
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _02071AF8
	ldr r1, [sp, #0x68]
	cmp r1, #0
	beq _02071AF4
	add r1, sp, #0
	ldrh r1, [r1, #4]
	add sp, #0x54
	str r1, [r4]
	pop {r4, r5, r6, r7, pc}
_02071AF4:
	ldr r1, [sp, #4]
	str r1, [r4]
_02071AF8:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end FSi_ROMFAT_FindPath

	thumb_func_start FSi_ROMFAT_GetPath
FSi_ROMFAT_GetPath: ; 0x02071AFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r5, [sp, #0x10]
	add r4, #0x30
	mov r0, #0
	str r3, [r1, #0x30]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldr r0, [r5]
	mov r2, #1
	str r0, [r4, #4]
	add r0, r1, #0
	mov r1, #5
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _02071B22
	ldr r1, [r4, #4]
	str r1, [r5]
_02071B22:
	pop {r3, r4, r5, pc}
	thumb_func_end FSi_ROMFAT_GetPath

	thumb_func_start FSi_ROMFAT_OpenFileFast
FSi_ROMFAT_OpenFileFast: ; 0x02071B24
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x30
	str r2, [r0, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	str r5, [r4, #0x30]
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _02071B54
	ldr r2, [r4, #0xc]
	mov r1, #0x10
	orr r2, r1
	mov r1, #0x20
	bic r2, r1
	add r1, r4, #0
	add r1, #0x20
	str r2, [r4, #0xc]
	str r5, [r4, #8]
	str r1, [r4, #4]
_02071B54:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_OpenFileFast

	thumb_func_start FSi_ROMFAT_OpenFileDirect
FSi_ROMFAT_OpenFileDirect: ; 0x02071B58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, #0x30
	str r2, [r4, #0x30]
	ldr r0, [sp, #0x10]
	str r3, [r1, #4]
	ldr r0, [r0]
	mov r2, #1
	str r0, [r1, #8]
	add r0, r4, #0
	mov r1, #7
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _02071B8C
	ldr r2, [r4, #0xc]
	mov r1, #0x10
	orr r2, r1
	mov r1, #0x20
	bic r2, r1
	add r1, r4, #0
	add r1, #0x20
	str r2, [r4, #0xc]
	str r5, [r4, #8]
	str r1, [r4, #4]
_02071B8C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_OpenFileDirect

	thumb_func_start FSi_ROMFAT_CloseFile
FSi_ROMFAT_CloseFile: ; 0x02071B90
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl FSi_TranslateCommand
	mov r1, #0
	str r1, [r4, #4]
	ldr r2, [r4, #0xc]
	mov r1, #0x30
	bic r2, r1
	str r2, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end FSi_ROMFAT_CloseFile

	thumb_func_start FSi_ROMFAT_Activate
FSi_ROMFAT_Activate: ; 0x02071BAC
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FS_InitFile
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_Activate

	thumb_func_start FSi_ROMFAT_Idle
FSi_ROMFAT_Idle: ; 0x02071BCC
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FS_InitFile
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_Idle

	thumb_func_start FSi_ROMFAT_Suspend
FSi_ROMFAT_Suspend: ; 0x02071BEC
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FS_InitFile
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_Suspend

	thumb_func_start FSi_ROMFAT_Resume
FSi_ROMFAT_Resume: ; 0x02071C0C
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FS_InitFile
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, #0x48
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_Resume

	thumb_func_start FSi_ROMFAT_OpenFile
FSi_ROMFAT_OpenFile: ; 0x02071C2C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	add r3, sp, #4
	add r5, r0, #0
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	bne _02071C52
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl FSi_ROMFAT_OpenFileFast
_02071C52:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_OpenFile

	thumb_func_start FSi_ROMFAT_SeekFile
FSi_ROMFAT_SeekFile: ; 0x02071C58
	ldr r0, [r1, #4]
	ldr r1, [r2]
	cmp r3, #0
	beq _02071C6A
	cmp r3, #1
	beq _02071C6E
	cmp r3, #2
	beq _02071C72
	b _02071C6E
_02071C6A:
	ldr r3, [r0, #4]
	b _02071C74
_02071C6E:
	ldr r3, [r0, #0xc]
	b _02071C74
_02071C72:
	ldr r3, [r0, #8]
_02071C74:
	add r1, r1, r3
	ldr r3, [r0, #4]
	cmp r1, r3
	blt _02071C82
	ldr r3, [r0, #8]
	cmp r1, r3
	ble _02071C86
_02071C82:
	mov r0, #6
	bx lr
_02071C86:
	str r1, [r0, #0xc]
	str r1, [r2]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end FSi_ROMFAT_SeekFile

	thumb_func_start FSi_ROMFAT_GetFileLength
FSi_ROMFAT_GetFileLength: ; 0x02071C90
	ldr r0, [r1, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	sub r0, r1, r0
	str r0, [r2]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end FSi_ROMFAT_GetFileLength

	thumb_func_start FSi_ROMFAT_GetFilePosition
FSi_ROMFAT_GetFilePosition: ; 0x02071CA0
	ldr r0, [r1, #4]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #4]
	sub r0, r1, r0
	str r0, [r2]
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end FSi_ROMFAT_GetFilePosition

	thumb_func_start FSi_ROMFAT_Unmount
FSi_ROMFAT_Unmount: ; 0x02071CB0
	push {r4, lr}
	ldr r4, [r0, #0x20]
	bl FS_IsArchiveTableLoaded
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_Unmount

	thumb_func_start FSi_ROMFAT_GetArchiveCaps
FSi_ROMFAT_GetArchiveCaps: ; 0x02071CCC
	mov r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end FSi_ROMFAT_GetArchiveCaps

	thumb_func_start FSi_ROMFAT_OpenDirectory
FSi_ROMFAT_OpenDirectory: ; 0x02071CD4
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r6, #0
	add r4, r1, #0
	str r6, [sp, #4]
	mov r1, #1
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	add r3, sp, #4
	add r5, r0, #0
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	bne _02071CFE
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl FSi_ROMFAT_SeekDirectory
_02071CFE:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end FSi_ROMFAT_OpenDirectory

	thumb_func_start FSi_ROMFAT_CloseDirectory
FSi_ROMFAT_CloseDirectory: ; 0x02071D04
	ldr r3, [r1, #0xc]
	mov r2, #0x30
	mov r0, #0
	bic r3, r2
	str r0, [r1, #4]
	str r3, [r1, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end FSi_ROMFAT_CloseDirectory

	thumb_func_start FSi_ROMFAT_GetPathInfo
FSi_ROMFAT_GetPathInfo: ; 0x02071D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r4, r3, #0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x54
	mov r6, #5
	blx MI_CpuFill8
	mov r7, #1
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, sp, #0x1c
	str r7, [sp]
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	bne _02071D4E
	add r7, #0xff
	str r7, [r4]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x50]
	b _02071DAE
_02071D4E:
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r3, sp, #0x1c
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	bne _02071DB0
	mov r0, #0
	str r0, [r4]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x50]
	mov r0, #0
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	lsl r1, r0, #3
	ldr r0, [r2, #8]
	cmp r1, r0
	bhs _02071DAE
	str r5, [sp, #0xc]
	ldr r0, [r2, #4]
	mov r2, #8
	add r0, r0, r1
	str r0, [sp, #0x10]
	add r0, sp, #0xc
	add r1, sp, #0x14
	mov r6, #8
	bl FSi_ReadTable
	cmp r0, #0
	bne _02071DAE
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	str r0, [r4, #0x4c]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl sub_02072130
	cmp r0, #0
	beq _02071DAE
	ldr r1, [r4]
	lsl r0, r6, #7
	orr r0, r1
	str r0, [r4]
_02071DAE:
	mov r6, #0
_02071DB0:
	mov r0, #2
	ldr r1, [r4]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4]
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FSi_ROMFAT_GetPathInfo

	thumb_func_start FSi_ROMFAT_GetArchiveResource
FSi_ROMFAT_GetArchiveResource: ; 0x02071DC0
	push {r4, lr}
	add r4, r1, #0
	bl CARD_GetRomHeader
	mov r2, #0
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	str r2, [r4, #0x2c]
	add r0, #0x80
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _02071DEC ; =0x7FFFFFFF
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x18]
	str r2, [r4, #0x14]
	str r2, [r4, #0x1c]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02071DEC: .word 0x7FFFFFFF
	thumb_func_end FSi_ROMFAT_GetArchiveResource

	thumb_func_start FSi_ReadMemCallback
FSi_ReadMemCallback: ; 0x02071DF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl FS_GetArchiveOffset
	add r1, r5, #0
	add r2, r4, #0
	blx MI_CpuCopy8
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FSi_ReadMemCallback

	thumb_func_start FSi_WriteMemCallback
FSi_WriteMemCallback: ; 0x02071E08
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl FS_GetArchiveOffset
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	blx MI_CpuCopy8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end FSi_WriteMemCallback

	thumb_func_start FS_LoadArchive
FS_LoadArchive: ; 0x02071E24
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x28
	str r1, [r0, #0x28]
	ldr r1, [sp, #0xc]
	str r3, [r4, #8]
	str r1, [r4, #0x10]
	ldr r1, [sp, #8]
	str r2, [r4, #4]
	str r1, [r4, #0xc]
	str r1, [r4, #0x18]
	ldr r1, [sp, #0x10]
	str r2, [r4, #0x14]
	cmp r1, #0
	bne _02071E44
	ldr r1, _02071E60 ; =FSi_ReadMemCallback
_02071E44:
	str r1, [r4, #0x20]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _02071E4E
	ldr r1, _02071E64 ; =FSi_WriteMemCallback
_02071E4E:
	ldr r2, _02071E68 ; =0x020945BC
	str r1, [r4, #0x24]
	mov r3, #0
	add r1, r4, #0
	str r3, [r4, #0x1c]
	bl FS_MountArchive
	pop {r4, pc}
	nop
_02071E60: .word FSi_ReadMemCallback
_02071E64: .word FSi_WriteMemCallback
_02071E68: .word 0x020945BC
	thumb_func_end FS_LoadArchive

	thumb_func_start FS_UnloadArchive
FS_UnloadArchive: ; 0x02071E6C
	ldr r3, _02071E70 ; =FS_UnmountArchive
	bx r3
	.align 2, 0
_02071E70: .word FS_UnmountArchive
	thumb_func_end FS_UnloadArchive

	thumb_func_start FSi_GetFileLengthIfProc
FSi_GetFileLengthIfProc: ; 0x02071E74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	ldr r3, [r0, #0x24]
	ldr r1, _02071E98 ; =0x020945BC
	mov r4, #0
	cmp r3, r1
	bne _02071E92
	add r1, r5, #0
	bl FSi_ROMFAT_GetFileLength
	cmp r0, #0
	bne _02071E92
	mov r4, #1
_02071E92:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02071E98: .word 0x020945BC
	thumb_func_end FSi_GetFileLengthIfProc

	thumb_func_start FSi_GetFilePositionIfProc
FSi_GetFilePositionIfProc: ; 0x02071E9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r2, r1, #0
	ldr r3, [r0, #0x24]
	ldr r1, _02071EC0 ; =0x020945BC
	mov r4, #0
	cmp r3, r1
	bne _02071EBA
	add r1, r5, #0
	bl FSi_ROMFAT_GetFilePosition
	cmp r0, #0
	bne _02071EBA
	mov r4, #1
_02071EBA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02071EC0: .word 0x020945BC
	thumb_func_end FSi_GetFilePositionIfProc

	thumb_func_start FS_SetArchiveProc
FS_SetArchiveProc: ; 0x02071EC4
	add r0, #0x28
	cmp r2, #0
	bne _02071ECE
	mov r1, #0
	b _02071ED4
_02071ECE:
	cmp r1, #0
	bne _02071ED4
	mov r2, #0
_02071ED4:
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end FS_SetArchiveProc

	thumb_func_start FS_LoadArchiveTables
FS_LoadArchiveTables: ; 0x02071EDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r7, r1, #0
	add r6, r0, #0
	add r5, r2, #0
	cmp r7, #0
	beq _02071EF8
	bl FS_IsArchiveTableLoaded
	cmp r0, #0
	beq _02071EF8
	add r0, r6, #0
	bl FS_UnloadArchiveTables
_02071EF8:
	ldr r4, [r6, #0x20]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	str r0, [sp, #4]
	add r0, #0x3f
	mov r1, #0x1f
	str r0, [sp, #4]
	bic r0, r1
	str r0, [sp, #4]
	cmp r0, r5
	bhi _02071F9A
	add r5, r7, #0
	add r5, #0x1f
	add r0, sp, #8
	bic r5, r1
	bl FS_InitFile
	mov r0, #0
	ldr r2, [r4, #4]
	mvn r0, r0
	str r0, [sp]
	ldr r3, [r4, #8]
	add r0, sp, #8
	add r1, r6, #0
	add r3, r2, r3
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _02071F52
	ldr r2, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _02071F4C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0
	blx MI_CpuFill8
_02071F4C:
	add r0, sp, #8
	bl FS_CloseFile
_02071F52:
	str r5, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	add r5, r5, r0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r3, [r4, #0x10]
	add r0, sp, #8
	add r1, r6, #0
	add r3, r2, r3
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _02071F8E
	ldr r2, [r4, #0x10]
	add r0, sp, #8
	add r1, r5, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _02071F88
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0
	blx MI_CpuFill8
_02071F88:
	add r0, sp, #8
	bl FS_CloseFile
_02071F8E:
	str r5, [r4, #0xc]
	str r7, [r4, #0x1c]
	ldr r1, [r6, #0x14]
	mov r0, #4
	orr r0, r1
	str r0, [r6, #0x14]
_02071F9A:
	ldr r0, [sp, #4]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FS_LoadArchiveTables

	thumb_func_start FS_UnloadArchiveTables
FS_UnloadArchiveTables: ; 0x02071FA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x14]
	mov r0, #2
	mov r6, #0
	tst r0, r1
	beq _02071FB2
	mov r0, #1
	b _02071FB4
_02071FB2:
	add r0, r6, #0
_02071FB4:
	cmp r0, #0
	beq _02071FEC
	add r0, r5, #0
	ldr r4, [r5, #0x20]
	bl FS_SuspendArchive
	add r7, r0, #0
	add r0, r5, #0
	bl FS_IsArchiveTableLoaded
	cmp r0, #0
	beq _02071FE2
	ldr r1, [r5, #0x14]
	mov r0, #4
	bic r1, r0
	str r1, [r5, #0x14]
	ldr r6, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x1c]
_02071FE2:
	cmp r7, #0
	beq _02071FEC
	add r0, r5, #0
	bl FS_ResumeArchive
_02071FEC:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FS_UnloadArchiveTables

	thumb_func_start FS_GetArchiveBase
FS_GetArchiveBase: ; 0x02071FF0
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end FS_GetArchiveBase

	thumb_func_start FS_GetArchiveOffset
FS_GetArchiveOffset: ; 0x02071FF8
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	add r0, r0, r1
	bx lr
	thumb_func_end FS_GetArchiveOffset

	thumb_func_start FS_IsArchiveTableLoaded
FS_IsArchiveTableLoaded: ; 0x02072000
	ldr r1, [r0, #0x14]
	mov r0, #4
	tst r0, r1
	beq _0207200C
	mov r0, #1
	bx lr
_0207200C:
	mov r0, #0
	bx lr
	thumb_func_end FS_IsArchiveTableLoaded

	thumb_func_start FS_GetFileImageTop
FS_GetFileImageTop: ; 0x02072010
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end FS_GetFileImageTop

	thumb_func_start sub_02072014
sub_02072014: ; 0x02072014
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
	thumb_func_end sub_02072014

	thumb_func_start sub_02072094
sub_02072094: ; 0x02072094
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
	ldr r1, _02072104 ; =sub_02072014
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
_02072104: .word sub_02072014
	thumb_func_end sub_02072094

	thumb_func_start sub_02072108
sub_02072108: ; 0x02072108
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02072094
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
	thumb_func_end sub_02072108

	thumb_func_start sub_02072130
sub_02072130: ; 0x02072130
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
	thumb_func_end sub_02072130

	thumb_func_start sub_02072164
sub_02072164: ; 0x02072164
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206FF5C
	mov r1, #5
	cmp r0, #0
	bne _02072174
	mov r1, #0
_02072174:
	add r0, r4, #0
	bl FS_NotifyArchiveAsyncEnd
	pop {r4, pc}
	thumb_func_end sub_02072164

	thumb_func_start sub_0207217C
sub_0207217C: ; 0x0207217C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _020721A0 ; =sub_02072164
	mov r4, #1
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _020721A4 ; =0x0214BFE0
	str r4, [sp, #8]
	add r1, r2, #0
	ldr r0, [r0]
	add r2, r5, #0
	bl sub_0206FD24
	add r4, #0xff
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_020721A0: .word sub_02072164
_020721A4: .word 0x0214BFE0
	thumb_func_end sub_0207217C

	thumb_func_start sub_020721A8
sub_020721A8: ; 0x020721A8
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
	bl sub_0206EEF0
	mov r0, #0
	pop {r3, pc}
_020721E2:
	ldr r0, _02072210 ; =0x0214BFE0
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF38
	mov r0, #0
	pop {r3, pc}
_020721F2:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	bl sub_02072130
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
	thumb_func_end sub_020721A8

	thumb_func_start sub_0207221C
sub_0207221C: ; 0x0207221C
	mov r0, #4
	cmp r1, #1
	beq _02072224
	ldr r0, _02072228 ; =0x00000102
_02072224:
	bx lr
	nop
_02072228: .word 0x00000102
	thumb_func_end sub_0207221C

	thumb_func_start sub_0207222C
sub_0207222C: ; 0x0207222C
	mov r0, #4
	bx lr
	thumb_func_end sub_0207222C

	thumb_func_start sub_02072230
sub_02072230: ; 0x02072230
	mov r0, #4
	bx lr
	thumb_func_end sub_02072230

	thumb_func_start sub_02072234
sub_02072234: ; 0x02072234
	mov r0, #0
	bx lr
	thumb_func_end sub_02072234

	thumb_func_start sub_02072238
sub_02072238: ; 0x02072238
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
	ldr r1, _02072308 ; =sub_020721A8
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
	ldr r0, _02072310 ; =sub_0207217C
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02072300 ; =0x0214BFE8
	ldr r3, [r5, #4]
	bl FS_LoadArchive
	b _020722B6
_020722B0:
	ldr r0, _02072300 ; =0x0214BFE8
	bl sub_02072234
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
	ldr r1, _02072314 ; =sub_0207221C
	add r0, r4, #0
	mvn r2, r2
	bl FS_SetArchiveProc
	mov r1, #0
	str r1, [sp]
	ldr r0, _02072318 ; =sub_0207222C
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0207231C ; =sub_02072230
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
_02072308: .word sub_020721A8
_0207230C: .word 0x00000682
_02072310: .word sub_0207217C
_02072314: .word sub_0207221C
_02072318: .word sub_0207222C
_0207231C: .word sub_02072230
_02072320: .word 0x0209B51C
	thumb_func_end sub_02072238

	thumb_func_start sub_02072324
sub_02072324: ; 0x02072324
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
	thumb_func_end sub_02072324

	thumb_func_start sub_02072358
sub_02072358: ; 0x02072358
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, _02072364 ; =0x0214BFE8
	ldr r3, _02072368 ; =FS_LoadArchiveTables
	bx r3
	.align 2, 0
_02072364: .word 0x0214BFE8
_02072368: .word FS_LoadArchiveTables
	thumb_func_end sub_02072358

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

	thumb_func_start sub_02072390
sub_02072390: ; 0x02072390
	push {r3, lr}
	ldr r1, _020723A8 ; =0x0214C044
	ldr r2, [r1]
	cmp r2, #0
	bne _020723A6
	mov r2, #1
	str r2, [r1]
	bl sub_02072238
	bl sub_02070EBC
_020723A6:
	pop {r3, pc}
	.align 2, 0
_020723A8: .word 0x0214C044
	thumb_func_end sub_02072390

	thumb_func_start sub_020723AC
sub_020723AC: ; 0x020723AC
	ldr r0, _020723B4 ; =0x0214C044
	ldr r0, [r0]
	bx lr
	nop
_020723B4: .word 0x0214C044
	thumb_func_end sub_020723AC

