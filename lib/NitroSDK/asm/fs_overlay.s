

	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start FSi_InitOverlay
FSi_InitOverlay: ; 0x02070EBC
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
	thumb_func_end FSi_InitOverlay

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
	blx MIi_UncompressBackward
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