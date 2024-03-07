	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start CARDi_SetRomOp
CARDi_SetRomOp: ; 0x0206F8B4
	push {r4, r5, r6, r7}
	lsr r2, r1, #8
	lsl r0, r0, #0x18
	add r6, r2, #0
	orr r6, r0
	mov r0, #2
	ldr r3, _0206F91C ; =0x040001A4
	lsl r1, r1, #0x18
	lsl r0, r0, #0x1e
_0206F8C6:
	ldr r2, [r3]
	tst r2, r0
	bne _0206F8C6
	ldr r0, _0206F920 ; =0x040001A0
	ldr r2, _0206F924 ; =0xFFFFDFFF
	ldrh r3, [r0]
	lsl r5, r6, #0x18
	and r3, r2
	mov r2, #3
	lsl r2, r2, #0xe
	orr r2, r3
	strh r2, [r0]
	mov r2, #0xff
	lsl r2, r2, #8
	add r3, r6, #0
	and r3, r2
	lsl r4, r3, #8
	lsl r3, r2, #0x10
	and r3, r6
	lsl r7, r2, #8
	and r6, r7
	lsr r3, r3, #0x18
	lsr r6, r6, #8
	orr r3, r6
	orr r3, r4
	orr r3, r5
	str r3, [r0, #8]
	add r3, r1, #0
	and r3, r2
	lsl r4, r3, #8
	lsl r3, r2, #0x10
	and r3, r1
	lsl r2, r2, #8
	lsl r5, r1, #0x18
	and r1, r2
	lsr r3, r3, #0x18
	lsr r1, r1, #8
	orr r1, r3
	orr r1, r4
	orr r1, r5
	str r1, [r0, #0xc]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0206F91C: .word 0x040001A4
_0206F920: .word 0x040001A0
_0206F924: .word 0xFFFFDFFF
	thumb_func_end CARDi_SetRomOp

	thumb_func_start CARDi_IsNormalMode
CARDi_IsNormalMode: ; 0x0206F928
	push {r4, lr}
	bl CARD_GetOwnRomHeaderTWL
	add r4, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0206F956
	bl OS_GetBootType
	cmp r0, #1
	beq _0206F956
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	beq _0206F956
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	bne _0206F956
	mov r0, #1
	pop {r4, pc}
_0206F956:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end CARDi_IsNormalMode

	thumb_func_start CARDi_StartRomPageTransfer
CARDi_StartRomPageTransfer: ; 0x0206F95C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xb7
	bl CARDi_IsNormalMode
	cmp r0, #0
	beq _0206F96C
	mov r4, #0
_0206F96C:
	add r0, r4, #0
	add r1, r5, #0
	bl CARDi_SetRomOp
	ldr r0, _0206F988 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206F98C ; =0xF8FFFFFF
	and r1, r0
	mov r0, #0xa1
	lsl r0, r0, #0x18
	orr r1, r0
	ldr r0, _0206F990 ; =0x040001A4
	str r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206F988: .word 0x02FFFAE0
_0206F98C: .word 0xF8FFFFFF
_0206F990: .word 0x040001A4
	thumb_func_end CARDi_StartRomPageTransfer

	thumb_func_start CARDi_ReadRomIDCore
CARDi_ReadRomIDCore: ; 0x0206F994
	push {r4, lr}
	mov r4, #0xb8
	bl CARDi_IsNormalMode
	cmp r0, #0
	beq _0206F9A2
	mov r4, #0x90
_0206F9A2:
	add r0, r4, #0
	mov r1, #0
	bl CARDi_SetRomOp
	ldr r0, _0206F9D4 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206F9D8 ; =0xF8FFFFFF
	add r2, r1, #0
	mov r1, #0xa7
	and r2, r0
	lsl r1, r1, #0x18
	orr r1, r2
	lsl r0, r0, #0xd
	ldr r2, _0206F9DC ; =0x040001A4
	and r0, r1
	str r0, [r2]
	mov r0, #2
	lsl r0, r0, #0x16
_0206F9C6:
	ldr r1, [r2]
	tst r1, r0
	beq _0206F9C6
	ldr r0, _0206F9E0 ; =0x04100010
	ldr r0, [r0]
	pop {r4, pc}
	nop
_0206F9D4: .word 0x02FFFAE0
_0206F9D8: .word 0xF8FFFFFF
_0206F9DC: .word 0x040001A4
_0206F9E0: .word 0x04100010
	thumb_func_end CARDi_ReadRomIDCore

	thumb_func_start CARDi_ReadRomStatusCore
CARDi_ReadRomStatusCore: ; 0x0206F9E4
	push {r4, lr}
	ldr r0, _0206FA24 ; =0x02FFFC00
	mov r4, #2
	ldr r0, [r0]
	lsl r4, r4, #0x1c
	tst r0, r4
	bne _0206F9F6
	mov r0, #0x20
	pop {r4, pc}
_0206F9F6:
	mov r0, #0xd6
	mov r1, #0
	bl CARDi_SetRomOp
	ldr r0, _0206FA28 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206FA2C ; =0xF8FFFFFF
	add r2, r1, #0
	mov r1, #0xa7
	and r2, r0
	lsl r1, r1, #0x18
	orr r1, r2
	lsl r0, r0, #0xd
	ldr r2, _0206FA30 ; =0x040001A4
	and r0, r1
	str r0, [r2]
	lsr r0, r4, #6
_0206FA18:
	ldr r1, [r2]
	tst r1, r0
	beq _0206FA18
	ldr r0, _0206FA34 ; =0x04100010
	ldr r0, [r0]
	pop {r4, pc}
	.align 2, 0
_0206FA24: .word 0x02FFFC00
_0206FA28: .word 0x02FFFAE0
_0206FA2C: .word 0xF8FFFFFF
_0206FA30: .word 0x040001A4
_0206FA34: .word 0x04100010
	thumb_func_end CARDi_ReadRomStatusCore

	thumb_func_start CARDi_RefreshRom
CARDi_RefreshRom: ; 0x0206FA38
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl CARDi_ReadRomStatusCore
	tst r0, r4
	beq _0206FA74
	bl CARDi_RefreshRomCore
	bl CARDi_ReadRomStatusCore
	mov r1, #0x20
	tst r0, r1
	bne _0206FA74
	ldr r5, _0206FA78 ; =0x0214C21C
	mov r6, #1
	add r4, r1, #0
_0206FA58:
	ldr r0, [r5]
	cmp r0, #0
	beq _0206FA6C
	bl OS_IsAlarmAvailable
	cmp r0, #0
	beq _0206FA6C
	add r0, r6, #0
	bl OS_Sleep
_0206FA6C:
	bl CARDi_ReadRomStatusCore
	tst r0, r4
	beq _0206FA58
_0206FA74:
	pop {r4, r5, r6, pc}
	nop
_0206FA78: .word 0x0214C21C
	thumb_func_end CARDi_RefreshRom

	thumb_func_start CARDi_RefreshRomCore
CARDi_RefreshRomCore: ; 0x0206FA7C
	push {r3, lr}
	mov r0, #0xb5
	mov r1, #0
	bl CARDi_SetRomOp
	ldr r0, _0206FAA8 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206FAAC ; =0xF8FFFFFF
	add r2, r1, #0
	mov r1, #0xa
	and r2, r0
	lsl r1, r1, #0x1c
	orr r2, r1
	lsl r0, r0, #0xd
	and r0, r2
	ldr r2, _0206FAB0 ; =0x040001A4
	str r0, [r2]
	lsl r0, r1, #2
_0206FAA0:
	ldr r1, [r2]
	tst r1, r0
	bne _0206FAA0
	pop {r3, pc}
	.align 2, 0
_0206FAA8: .word 0x02FFFAE0
_0206FAAC: .word 0xF8FFFFFF
_0206FAB0: .word 0x040001A4
	thumb_func_end CARDi_RefreshRomCore

	thumb_func_start CARDi_ReadRomWithCPU
CARDi_ReadRomWithCPU: ; 0x0206FAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0206FB78 ; =0x0209B500
	add r5, r3, #0
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, _0206FB7C ; =0x040001A4
	str r2, [sp, #4]
	lsr r0, r0, #0x11
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	b _0206FB5E
_0206FACE:
	ldr r1, _0206FB80 ; =0xFFFFFE00
	ldr r0, [sp, #4]
	ldr r4, [sp]
	and r1, r0
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x14]
	str r1, [sp, #8]
	cmp r1, r0
	bne _0206FAE4
	ldr r4, _0206FB84 ; =0x0214BB40
	b _0206FB2C
_0206FAE4:
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0206FAF8
	mov r1, #3
	add r0, r4, #0
	tst r0, r1
	bne _0206FAF8
	add r0, r7, #0
	cmp r5, r0
	bhs _0206FAFE
_0206FAF8:
	ldr r0, [sp, #8]
	ldr r4, _0206FB84 ; =0x0214BB40
	str r0, [sp, #0xc]
_0206FAFE:
	ldr r0, [sp, #8]
	bl CARDi_StartRomPageTransfer
	mov r0, #2
	lsl r0, r0, #0x1e
	mov r6, #0
	lsr r0, r0, #8
_0206FB0C:
	ldr r1, _0206FB7C ; =0x040001A4
	ldr r3, [r1]
	add r1, r3, #0
	tst r1, r0
	beq _0206FB24
	ldr r1, _0206FB88 ; =0x04100010
	cmp r6, #0x80
	ldr r2, [r1]
	bhs _0206FB24
	lsl r1, r6, #2
	add r6, r6, #1
	str r2, [r4, r1]
_0206FB24:
	mov r1, #2
	lsl r1, r1, #0x1e
	tst r1, r3
	bne _0206FB0C
_0206FB2C:
	ldr r0, _0206FB84 ; =0x0214BB40
	cmp r4, r0
	bne _0206FB50
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	sub r1, r1, r0
	mov r0, #2
	lsl r0, r0, #8
	sub r7, r0, r1
	cmp r5, r7
	bhi _0206FB44
	add r7, r5, #0
_0206FB44:
	ldr r0, _0206FB84 ; =0x0214BB40
	add r2, r7, #0
	add r0, r0, r1
	ldr r1, [sp]
	blx MI_CpuCopy8
_0206FB50:
	ldr r0, [sp]
	sub r5, r5, r7
	add r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r7
	str r0, [sp, #4]
_0206FB5E:
	cmp r5, #0
	bne _0206FACE
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	ldr r1, _0206FB78 ; =0x0209B500
	ldr r0, [sp, #0xc]
	str r0, [r1, #4]
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206FB78: .word 0x0209B500
_0206FB7C: .word 0x040001A4
_0206FB80: .word 0xFFFFFE00
_0206FB84: .word 0x0214BB40
_0206FB88: .word 0x04100010
	thumb_func_end CARDi_ReadRomWithCPU

	thumb_func_start CARDi_DmaReadPageCallback
CARDi_DmaReadPageCallback: ; 0x0206FB8C
	push {r4, r5, r6, lr}
	ldr r6, _0206FBE8 ; =0x0214BA80
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq _0206FBE4
	mov r5, #2
	ldr r0, [r4, #0xc]
	lsl r5, r5, #8
	add r0, r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	sub r0, r0, r5
	str r0, [r4, #0x14]
	beq _0206FBB6
	ldr r0, [r4, #0xc]
	bl CARDi_StartRomPageTransfer
	pop {r4, r5, r6, pc}
_0206FBB6:
	ldr r1, _0206FBEC ; =0x0214B940
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	ldr r1, [r1, #4]
	blx r1
	lsl r5, r5, #0xa
	add r0, r5, #0
	bl OS_DisableIrqMask
	add r0, r5, #0
	bl OS_ResetRequestIrqMask
	mov r0, #0
	str r0, [r6, #0xc]
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0206FBE4
	ldr r0, [r4, #8]
	blx r1
_0206FBE4:
	pop {r4, r5, r6, pc}
	nop
_0206FBE8: .word 0x0214BA80
_0206FBEC: .word 0x0214B940
	thumb_func_end CARDi_DmaReadPageCallback

	thumb_func_start CARDi_ReadRomWithDMA
CARDi_ReadRomWithDMA: ; 0x0206FBF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0206FC34 ; =0x0214BA80
	mov r6, #2
	lsl r6, r6, #0x12
	str r5, [r0, #0xc]
	ldr r1, _0206FC38 ; =CARDi_DmaReadPageCallback
	add r0, r6, #0
	bl OS_SetIrqFunction
	add r0, r6, #0
	bl OS_ResetRequestIrqMask
	add r0, r6, #0
	bl OS_EnableIrqMask
	add r0, r4, #0
	blx OS_RestoreInterrupts
	ldr r4, _0206FC3C ; =0x0214B940
	ldr r1, _0206FC40 ; =0x04100010
	ldr r0, [r4, #8]
	ldr r4, [r4, #0xc]
	ldr r2, [r5, #0x10]
	ldr r4, [r4]
	lsr r3, r6, #0xa
	blx r4
	ldr r0, [r5, #0xc]
	bl CARDi_StartRomPageTransfer
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206FC34: .word 0x0214BA80
_0206FC38: .word CARDi_DmaReadPageCallback
_0206FC3C: .word 0x0214B940
_0206FC40: .word 0x04100010
	thumb_func_end CARDi_ReadRomWithDMA

	thumb_func_start CARDi_DmaReadDone
CARDi_DmaReadDone: ; 0x0206FC44
	push {r3, lr}
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	mov r0, #8
	bl CARDi_RefreshRom
	ldr r0, _0206FC64 ; =0x0214B440
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	bl CARDi_EndTask
	pop {r3, pc}
	nop
_0206FC64: .word 0x0214B440
	thumb_func_end CARDi_DmaReadDone

	thumb_func_start CARDi_IsRomDmaAvailable
CARDi_IsRomDmaAvailable: ; 0x0206FC68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	str r1, [sp, #4]
	str r2, [sp]
	add r4, r3, #0
	mov r7, #0
	mov r1, #0
	cmp r0, #3
	bhi _0206FCA2
	cmp r4, #0
	beq _0206FCA2
	mov r0, #0x1f
	tst r0, r5
	bne _0206FCA2
	ldr r2, _0206FCE0 ; =0x01FF8000
	add r3, r5, r4
	mov r0, #1
	cmp r3, r2
	bls _0206FC9C
	mov r2, #2
	lsl r2, r2, #0x18
	cmp r5, r2
	bhs _0206FC9C
	ldr r0, [sp, #4]
_0206FC9C:
	cmp r0, #0
	beq _0206FCA2
	mov r1, #1
_0206FCA2:
	cmp r1, #0
	beq _0206FCC6
	mov r6, #1
	blx OS_GetDTCMAddress
	add r1, r5, r4
	cmp r1, r0
	bls _0206FCC0
	blx OS_GetDTCMAddress
	lsl r1, r6, #0xe
	add r0, r0, r1
	cmp r5, r0
	bhs _0206FCC0
	mov r6, #0
_0206FCC0:
	cmp r6, #0
	beq _0206FCC6
	mov r7, #1
_0206FCC6:
	cmp r7, #0
	beq _0206FCDA
	ldr r0, [sp]
	add r1, r0, #0
	ldr r0, _0206FCE4 ; =0x000001FF
	orr r1, r4
	tst r0, r1
	bne _0206FCDA
	mov r0, #1
	str r0, [sp, #4]
_0206FCDA:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206FCE0: .word 0x01FF8000
_0206FCE4: .word 0x000001FF
	thumb_func_end CARDi_IsRomDmaAvailable

	thumb_func_start CARDi_ReadRomSyncCore
CARDi_ReadRomSyncCore: ; 0x0206FCE8
	push {r3, r4, r5, lr}
	mov r5, #5
	add r3, r0, #0
	lsl r5, r5, #8
	sub r2, r5, #4
	ldr r1, [r3, r5]
	add r5, r5, #4
	ldr r2, [r3, r2]
	ldr r3, [r3, r5]
	ldr r5, _0206FD1C ; =0x0214BA80
	mov r0, #0
	ldr r5, [r5, #4]
	mov r4, #0
	blx r5
	bl CARDi_ReadRomIDCore
	bl CARDi_CheckPulledOutCore
	mov r0, #8
	bl CARDi_RefreshRom
	ldr r0, _0206FD20 ; =0x0214B440
	ldr r0, [r0]
	str r4, [r0]
	pop {r3, r4, r5, pc}
	nop
_0206FD1C: .word 0x0214BA80
_0206FD20: .word 0x0214B440
	thumb_func_end CARDi_ReadRomSyncCore

	thumb_func_start CARDi_ReadRom
CARDi_ReadRom: ; 0x0206FD24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	add r6, r2, #0
	add r7, r3, #0
	ldr r5, _0206FE2C ; =0x0214B440
	bl CARD_CheckEnabled
	bl CARDi_GetAccessLevel
	mov r1, #4
	tst r0, r1
	bne _0206FD42
	bl OS_Terminate
_0206FD42:
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #1
	bl CARDi_WaitForTask
	add r0, r4, #0
	bl CARDi_GetDmaInterface
	ldr r1, _0206FE30 ; =0x0000050C
	cmp r0, #0
	str r0, [r5, r1]
	beq _0206FD62
	mov r0, #3
	and r0, r4
	b _0206FD66
_0206FD62:
	mov r0, #1
	sub r0, r0, #2
_0206FD66:
	ldr r1, _0206FE34 ; =0x00000508
	cmp r0, #3
	str r0, [r5, r1]
	bhi _0206FD76
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r1, [r1, #4]
	blx r1
_0206FD76:
	ldr r0, _0206FE38 ; =0x0214BA80
	ldr r4, _0206FE3C ; =0x000004FC
	ldr r1, [r0]
	ldr r0, [sp]
	add r2, r0, r1
	str r2, [r5, r4]
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r7, [r5, r0]
	ldr r1, _0206FE40 ; =CARDi_DmaReadDone
	ldr r0, _0206FE38 ; =0x0214BA80
	str r1, [r0, #0x14]
	ldr r1, _0206FE38 ; =0x0214BA80
	mov r0, #0
	str r0, [r1, #0x18]
	str r2, [r1, #0x1c]
	str r6, [r1, #0x20]
	str r7, [r1, #0x24]
	str r0, [r1, #0x28]
	add r0, r1, #0
	ldr r1, [r0, #4]
	ldr r0, _0206FE44 ; =CARDi_ReadRomWithCPU
	cmp r1, r0
	bne _0206FE08
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r3, r7, #0
	bl CARDi_IsRomDmaAvailable
	cmp r0, #0
	beq _0206FE08
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _0206FE38 ; =0x0214BA80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0206FDD8
	add r0, r4, #4
	add r4, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, #0xc]
	bl CARDi_ICInvalidateSmart
_0206FDD8:
	ldr r0, _0206FE48 ; =0x0209B500
	ldr r0, [r0]
	cmp r0, #0
	beq _0206FDF0
	mov r1, #5
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, #0x10]
	bl CARDi_DCInvalidateSmart
_0206FDF0:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	ldr r0, _0206FE4C ; =0x0214BA90
	bl CARDi_ReadRomWithDMA
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0206FE28
	bl sub_0206FEC8
	pop {r3, r4, r5, r6, r7, pc}
_0206FE08:
	ldr r0, _0206FE38 ; =0x0214BA80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0206FE20
	mov r1, #5
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, #0xc]
	bl CARDi_ICInvalidateSmart
_0206FE20:
	ldr r0, _0206FE50 ; =CARDi_ReadRomSyncCore
	ldr r1, [sp, #0x20]
	bl CARDi_ExecuteOldTypeTask
_0206FE28:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206FE2C: .word 0x0214B440
_0206FE30: .word 0x0000050C
_0206FE34: .word 0x00000508
_0206FE38: .word 0x0214BA80
_0206FE3C: .word 0x000004FC
_0206FE40: .word CARDi_DmaReadDone
_0206FE44: .word CARDi_ReadRomWithCPU
_0206FE48: .word 0x0209B500
_0206FE4C: .word 0x0214BA90
_0206FE50: .word CARDi_ReadRomSyncCore
	thumb_func_end CARDi_ReadRom

	thumb_func_start CARDi_InitRom
CARDi_InitRom: ; 0x0206FE54
	push {r4, lr}
	ldr r1, _0206FEAC ; =CARDi_ReadRomWithCPU
	ldr r0, _0206FEB0 ; =0x0214BA80
	str r1, [r0, #4]
	bl OS_GetBootType
	cmp r0, #1
	bne _0206FE9E
	bl CARD_GetOwnRomHeader
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0206FE9E
	blx OS_GetLockID
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #0
	bl CARD_LockRom
	bl CARD_GetOwnRomHeader
	add r2, r0, #0
	add r2, #0x80
	ldr r1, _0206FEB4 ; =0x0214BAAC
	ldr r2, [r2]
	mov r0, #0
	mov r3, #0x88
	bl CARDi_ReadRomWithCPU
	add r0, r4, #0
	bl CARD_UnlockRom
	add r0, r4, #0
	blx OS_ReleaseLockID
_0206FE9E:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0206FEAA
	bl sub_0206FEB8
_0206FEAA:
	pop {r4, pc}
	.align 2, 0
_0206FEAC: .word CARDi_ReadRomWithCPU
_0206FEB0: .word 0x0214BA80
_0206FEB4: .word 0x0214BAAC
	thumb_func_end CARDi_InitRom

	thumb_func_start sub_0206FEB8
sub_0206FEB8: ; 0x0206FEB8
	bx pc
	nop
	thumb_func_end sub_0206FEB8

	arm_func_start sub_0206FEBC
sub_0206FEBC: ; 0x0206FEBC
	ldr ip, _0206FEC4 ; =sub_02767520
	bx ip
	.align 2, 0
_0206FEC4: .word sub_02767520
	arm_func_end sub_0206FEBC

	thumb_func_start sub_0206FEC8
sub_0206FEC8: ; 0x0206FEC8
	ldr r3, _0206FECC ; =CARDi_WaitAsync
	bx r3
	.align 2, 0
_0206FECC: .word CARDi_WaitAsync
	thumb_func_end sub_0206FEC8

	thumb_func_start sub_0206FED0
sub_0206FED0: ; 0x0206FED0
	ldr r0, _0206FED4 ; =0x0214BAAC
	bx lr
	.align 2, 0
_0206FED4: .word 0x0214BAAC
	thumb_func_end sub_0206FED0
