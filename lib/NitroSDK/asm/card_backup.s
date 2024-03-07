	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.public _version_NINTENDO_BACKUP
	.text

	thumb_func_start CARDi_OnFifoRecv
CARDi_OnFifoRecv: ; 0x0206F2E4
	push {r3, lr}
	cmp r0, #0xb
	bne _0206F300
	cmp r2, #0
	beq _0206F300
	ldr r1, _0206F304 ; =0x0214B440
	mov r0, #0x20
	ldr r2, [r1, #4]
	bic r2, r0
	ldr r0, _0206F308 ; =0x0214B940
	str r2, [r1, #4]
	ldr r0, [r0, #0x1c]
	bl OS_WakeupThreadDirect
_0206F300:
	pop {r3, pc}
	nop
_0206F304: .word 0x0214B440
_0206F308: .word 0x0214B940
	thumb_func_end CARDi_OnFifoRecv

	thumb_func_start CARDi_Request
CARDi_Request: ; 0x0206F30C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	mov r0, #2
	str r2, [sp]
	tst r1, r0
	bne _0206F350
	ldr r1, [r5, #4]
	orr r0, r1
	str r0, [r5, #4]
	mov r0, #0xb
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _0206F346
	mov r6, #0x32
	mov r7, #0xb
_0206F334:
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	add r0, r7, #0
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0206F334
_0206F346:
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl CARDi_Request
_0206F350:
	ldr r0, [r5]
	mov r1, #0x60
	blx DC_FlushRange
	blx DC_WaitWriteBufferEmpty
	ldr r0, _0206F3D8 ; =0x0214C22C
	mov r7, #0xb
	ldr r1, [r0, #4]
	ldr r0, _0206F3DC ; =0x0000051C
	str r1, [r5, r0]
_0206F366:
	ldr r1, [r5, #4]
	mov r0, #0x20
	orr r0, r1
	str r0, [r5, #4]
_0206F36E:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _0206F36E
	cmp r4, #0
	bne _0206F390
	ldr r6, [r5]
_0206F382:
	mov r0, #0xb
	add r1, r6, #0
	mov r2, #1
	bl PXI_SendWordByFifo
	cmp r0, #0
	blt _0206F382
_0206F390:
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	mov r0, #0x20
	tst r0, r1
	beq _0206F3AC
	mov r6, #0x20
_0206F3A0:
	mov r0, #0
	bl OS_SleepThread
	ldr r0, [r5, #4]
	tst r0, r6
	bne _0206F3A0
_0206F3AC:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	ldr r0, [r5]
	mov r1, #0x60
	blx DC_InvalidateRange
	ldr r0, [r5]
	ldr r1, [r0]
	cmp r1, #4
	bne _0206F3CC
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	cmp r0, #0
	bgt _0206F366
_0206F3CC:
	mov r0, #1
	cmp r1, #0
	beq _0206F3D4
	mov r0, #0
_0206F3D4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206F3D8: .word 0x0214C22C
_0206F3DC: .word 0x0000051C
	thumb_func_end CARDi_Request

	thumb_func_start CARDi_RequestStreamCommandCore
CARDi_RequestStreamCommandCore: ; 0x0206F3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x51
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #8
	ldr r6, [r4, r0]
	add r0, r1, #4
	ldr r0, [r4, r0]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, _0206F528 ; =_version_NINTENDO_BACKUP
	blx sub_02004EB0
	ldr r0, [sp, #8]
	cmp r0, #0xb
	bne _0206F412
	bl sub_0206F87C
	b _0206F41C
_0206F412:
	cmp r0, #0xf
	bne _0206F41E
	ldr r0, _0206F52C ; =0x0214B440
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
_0206F41C:
	str r0, [sp]
_0206F41E:
	ldr r0, _0206F530 ; =0x000004FC
	ldr r7, _0206F534 ; =0x0214B980
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, _0206F530 ; =0x000004FC
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, _0206F530 ; =0x000004FC
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _0206F530 ; =0x000004FC
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _0206F530 ; =0x000004FC
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, _0206F530 ; =0x000004FC
	str r0, [sp, #0x14]
	add r0, #8
	str r0, [sp, #0x14]
_0206F448:
	ldr r0, [sp, #0x14]
	ldr r5, [r4, r0]
	ldr r0, [sp]
	cmp r0, r5
	bhs _0206F454
	add r5, r0, #0
_0206F454:
	ldr r0, [r4]
	str r5, [r0, #0x14]
	ldr r1, [r4, #4]
	mov r0, #0x40
	tst r0, r1
	beq _0206F472
	ldr r1, [r4, #4]
	mov r0, #0x40
	bic r1, r0
	str r1, [r4, #4]
	ldr r0, [r4]
	mov r1, #7
	str r1, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0206F472:
	cmp r6, #3
	bhi _0206F4D0
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206F482: ; jump table
	.short _0206F48A - _0206F482 - 2 ; case 0
	.short _0206F4A0 - _0206F482 - 2 ; case 1
	.short _0206F4A0 - _0206F482 - 2 ; case 2
	.short _0206F4C0 - _0206F482 - 2 ; case 3
_0206F48A:
	add r0, r7, #0
	add r1, r5, #0
	blx DC_InvalidateRange
	ldr r0, _0206F530 ; =0x000004FC
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0xc]
	ldr r0, [r4]
	str r7, [r0, #0x10]
	b _0206F4D0
_0206F4A0:
	ldr r0, _0206F530 ; =0x000004FC
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r2, r5, #0
	blx MI_CpuCopy8
	add r0, r7, #0
	add r1, r5, #0
	blx DC_FlushRange
	blx DC_WaitWriteBufferEmpty
	ldr r0, [r4]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x18]
	b _0206F4CA
_0206F4C0:
	ldr r0, _0206F530 ; =0x000004FC
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x1c]
_0206F4CA:
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0x10]
_0206F4D0:
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl CARDi_Request
	cmp r0, #0
	beq _0206F522
	cmp r6, #2
	bne _0206F4F2
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	bl CARDi_Request
	cmp r0, #0
	beq _0206F522
	b _0206F502
_0206F4F2:
	cmp r6, #0
	bne _0206F502
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	ldr r1, [r4, r1]
	add r2, r5, #0
	blx MI_CpuCopy8
_0206F502:
	ldr r0, _0206F530 ; =0x000004FC
	ldr r0, [r4, r0]
	add r1, r0, r5
	ldr r0, _0206F530 ; =0x000004FC
	str r1, [r4, r0]
	ldr r0, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r0, r5
	ldr r0, [sp, #0x10]
	str r1, [r4, r0]
	ldr r0, [sp, #0xc]
	ldr r0, [r4, r0]
	sub r1, r0, r5
	ldr r0, [sp, #0xc]
	str r1, [r4, r0]
	bne _0206F448
_0206F522:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0206F528: .word _version_NINTENDO_BACKUP
_0206F52C: .word 0x0214B440
_0206F530: .word 0x000004FC
_0206F534: .word 0x0214B980
	thumb_func_end CARDi_RequestStreamCommandCore

	thumb_func_start CARDi_IdentifyBackupCore2
CARDi_IdentifyBackupCore2: ; 0x0206F538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0206F780 ; =0x0214B440
	mov r1, #0
	ldr r4, [r0]
	mov r2, #0x48
	add r0, r4, #0
	add r0, #0x18
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _0206F784 ; =0x0000203F
	str r5, [r4, #4]
	str r0, [r4, #0x58]
	cmp r5, #0
	bne _0206F55A
	b _0206F77C
_0206F55A:
	asr r0, r5, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r7, #1
	lsl r7, r0
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	asr r0, r5, #0x10
	lsl r0, r0, #0x18
	add r5, r4, #0
	lsr r1, r0, #0x18
	str r7, [r4, #0x18]
	mov r0, #0xff
	add r5, #0x54
	mov r3, #1
	strb r0, [r5]
	cmp r2, #1
	bne _0206F600
	lsl r1, r3, #0xd
	cmp r7, r1
	bhi _0206F592
	add r0, r1, #0
	cmp r7, r0
	bhs _0206F5BC
	lsl r0, r3, #9
	cmp r7, r0
	beq _0206F5A8
	b _0206F76E
_0206F592:
	lsl r1, r3, #0x10
	cmp r7, r1
	bhi _0206F5A0
	add r0, r1, #0
	cmp r7, r0
	beq _0206F5C4
	b _0206F76E
_0206F5A0:
	lsl r1, r3, #0x11
	cmp r7, r1
	beq _0206F5D0
	b _0206F76E
_0206F5A8:
	mov r0, #0x10
	str r0, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0xf0
	add r0, #0x54
	strb r1, [r0]
	b _0206F5E2
_0206F5BC:
	mov r0, #0x20
	str r0, [r4, #0x24]
	mov r0, #2
	b _0206F5D6
_0206F5C4:
	mov r0, #0x80
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0xa
	b _0206F5DA
_0206F5D0:
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #3
_0206F5D6:
	str r0, [r4, #0x28]
	mov r0, #5
_0206F5DA:
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
_0206F5E2:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x58]
	mov r0, #0x40
	add r2, r1, #0
	mov r1, #0x40
	orr r2, r0
	add r1, #0xc0
	orr r2, r1
	lsl r1, r0, #3
	orr r1, r2
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_0206F600:
	cmp r2, #2
	beq _0206F606
	b _0206F734
_0206F606:
	lsl r2, r3, #0x14
	cmp r7, r2
	bhi _0206F624
	add r0, r2, #0
	cmp r7, r0
	bhs _0206F640
	lsl r0, r3, #0x12
	cmp r7, r0
	bhi _0206F61C
	beq _0206F640
	b _0206F76E
_0206F61C:
	lsl r0, r3, #0x13
	cmp r7, r0
	beq _0206F640
	b _0206F76E
_0206F624:
	lsl r2, r3, #0x16
	cmp r7, r2
	bhi _0206F638
	add r1, r2, #0
	cmp r7, r1
	bhs _0206F68E
	lsl r1, r3, #0x15
	cmp r7, r1
	beq _0206F65A
	b _0206F76E
_0206F638:
	lsl r0, r3, #0x17
	cmp r7, r0
	beq _0206F6C0
	b _0206F76E
_0206F640:
	mov r0, #0x19
	str r0, [r4, #0x30]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [r4, #0x34]
	str r0, [r4, #0x50]
	ldr r0, _0206F788 ; =0x00001388
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x58]
	mov r0, #0x80
	orr r1, r0
	lsl r0, r0, #3
_0206F658:
	b _0206F704
_0206F65A:
	mov r1, #0x17
	str r1, [r4, #0x30]
	add r1, r0, #0
	add r1, #0x2d
	str r1, [r4, #0x34]
	add r0, #0xf5
	str r0, [r4, #0x40]
	ldr r0, _0206F788 ; =0x00001388
	str r0, [r4, #0x44]
	lsl r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, _0206F78C ; =0x0000EA60
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
	ldr r1, [r4, #0x58]
	mov r0, #0x80
	add r2, r1, #0
	orr r2, r0
	lsl r1, r0, #3
	orr r2, r1
	lsl r1, r0, #5
	orr r1, r2
	lsl r0, r0, #7
	b _0206F658
_0206F68E:
	mov r0, #0x96
	lsl r0, r0, #2
	str r0, [r4, #0x40]
	ldr r0, _0206F790 ; =0x00000BB8
	str r0, [r4, #0x44]
	mov r0, #0x46
	str r0, [r4, #0x48]
	mov r0, #0x96
	str r0, [r4, #0x4c]
	ldr r0, _0206F794 ; =0x000059D8
	str r0, [r4, #0x38]
	ldr r0, _0206F798 ; =0x000C3500
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
	lsl r0, r3, #0xc
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x58]
	lsl r0, r3, #0xf
	orr r1, r0
	lsl r0, r3, #0xc
	orr r1, r0
	lsl r0, r3, #0xe
	b _0206F658
_0206F6C0:
	cmp r1, #0
	bne _0206F6DE
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [r4, #0x40]
	ldr r0, _0206F790 ; =0x00000BB8
	str r0, [r4, #0x44]
	ldr r0, _0206F79C ; =0x000109A0
	str r0, [r4, #0x38]
	ldr r0, _0206F7A0 ; =0x00027100
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
	b _0206F6FC
_0206F6DE:
	cmp r1, #1
	bne _0206F708
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [r4, #0x40]
	ldr r0, _0206F790 ; =0x00000BB8
	mov r1, #0x84
	str r0, [r4, #0x44]
	ldr r0, _0206F79C ; =0x000109A0
	str r0, [r4, #0x38]
	ldr r0, _0206F7A0 ; =0x00027100
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r1, [r0]
_0206F6FC:
	ldr r1, [r4, #0x58]
	lsl r0, r3, #0xc
	orr r1, r0
	lsl r0, r3, #0xe
_0206F704:
	orr r0, r1
	str r0, [r4, #0x58]
_0206F708:
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0x1c]
	lsr r0, r0, #8
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x58]
	mov r0, #0x40
	add r2, r1, #0
	mov r1, #0x40
	orr r2, r0
	add r1, #0xc0
	orr r2, r1
	lsl r1, r0, #3
	orr r1, r2
	lsl r0, r0, #5
	orr r0, r1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_0206F734:
	cmp r2, #3
	bne _0206F76E
	lsl r0, r3, #0xd
	cmp r7, r0
	beq _0206F744
	lsl r0, r3, #0xf
	cmp r7, r0
	bne _0206F76E
_0206F744:
	str r7, [r4, #0x24]
	str r7, [r4, #0x1c]
	mov r0, #2
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x54
	strb r1, [r0]
	ldr r1, [r4, #0x58]
	mov r0, #0x40
	add r2, r1, #0
	mov r1, #0x40
	orr r2, r0
	add r1, #0xc0
	orr r2, r1
	lsl r1, r0, #3
	orr r1, r2
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_0206F76E:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x18]
	ldr r0, _0206F780 ; =0x0214B440
	mov r1, #3
	ldr r0, [r0]
	str r1, [r0]
_0206F77C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F780: .word 0x0214B440
_0206F784: .word 0x0000203F
_0206F788: .word 0x00001388
_0206F78C: .word 0x0000EA60
_0206F790: .word 0x00000BB8
_0206F794: .word 0x000059D8
_0206F798: .word 0x000C3500
_0206F79C: .word 0x000109A0
_0206F7A0: .word 0x00027100
	thumb_func_end CARDi_IdentifyBackupCore2

	thumb_func_start CARDi_IdentifyBackupCore
CARDi_IdentifyBackupCore: ; 0x0206F7A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #2
	mov r2, #1
	mov r4, #1
	bl CARDi_Request
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r1, _0206F7D0 ; =0x0214B980
	ldr r0, [r5]
	mov r2, #1
	str r1, [r0, #0x10]
	ldr r0, [r5]
	mov r1, #6
	str r4, [r0, #0x14]
	add r0, r5, #0
	bl CARDi_Request
	pop {r3, r4, r5, pc}
	nop
_0206F7D0: .word 0x0214B980
	thumb_func_end CARDi_IdentifyBackupCore

	thumb_func_start CARDi_BeginBackupCommand
CARDi_BeginBackupCommand: ; 0x0206F7D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0206F804 ; =_version_NINTENDO_BACKUP
	add r4, r1, #0
	add r6, r2, #0
	blx sub_02004EB0
	bl CARD_CheckEnabled
	bl CARDi_GetAccessLevel
	and r0, r5
	cmp r5, r0
	beq _0206F7F4
	bl OS_Terminate
_0206F7F4:
	ldr r0, _0206F808 ; =0x0214B440
	mov r1, #1
	add r2, r4, #0
	add r3, r6, #0
	bl CARDi_WaitForTask
	pop {r4, r5, r6, pc}
	nop
_0206F804: .word _version_NINTENDO_BACKUP
_0206F808: .word 0x0214B440
	thumb_func_end CARDi_BeginBackupCommand

	thumb_func_start CARDi_RequestStreamCommand
CARDi_RequestStreamCommand: ; 0x0206F80C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	bne _0206F81E
	mov r0, #1
	b _0206F820
_0206F81E:
	mov r0, #2
_0206F820:
	ldr r2, [sp, #0x10]
	add r1, r3, #0
	bl CARDi_BeginBackupCommand
	ldr r0, _0206F848 ; =0x0214B8C0
	ldr r1, [sp, #0x18]
	str r5, [r0, #0x7c]
	ldr r0, _0206F84C ; =0x0214B940
	str r4, [r0]
	str r6, [r0, #4]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x18]
	ldr r0, _0206F850 ; =CARDi_RequestStreamCommandCore
	ldr r1, [sp, #0x14]
	bl CARDi_ExecuteOldTypeTask
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206F848: .word 0x0214B8C0
_0206F84C: .word 0x0214B940
_0206F850: .word CARDi_RequestStreamCommandCore
	thumb_func_end CARDi_RequestStreamCommand

	thumb_func_start CARD_IdentifyBackup
CARD_IdentifyBackup: ; 0x0206F854
	push {r4, lr}
	add r4, r0, #0
	bne _0206F85E
	bl OS_Terminate
_0206F85E:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl CARDi_BeginBackupCommand
	add r0, r4, #0
	bl CARDi_IdentifyBackupCore2
	ldr r0, _0206F878 ; =CARDi_IdentifyBackupCore
	mov r1, #0
	bl CARDi_ExecuteOldTypeTask
	pop {r4, pc}
	.align 2, 0
_0206F878: .word CARDi_IdentifyBackupCore
	thumb_func_end CARD_IdentifyBackup

	thumb_func_start sub_0206F87C
sub_0206F87C: ; 0x0206F87C
	ldr r0, _0206F884 ; =0x0214B440
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0
_0206F884: .word 0x0214B440
	thumb_func_end sub_0206F87C

	thumb_func_start CARD_WaitBackupAsync
CARD_WaitBackupAsync: ; 0x0206F888
	ldr r3, _0206F88C ; =CARDi_WaitAsync
	bx r3
	.align 2, 0
_0206F88C: .word CARDi_WaitAsync
	thumb_func_end CARD_WaitBackupAsync

	thumb_func_start CARD_TryWaitBackupAsync
CARD_TryWaitBackupAsync: ; 0x0206F890
	ldr r3, _0206F894 ; =CARDi_TryWaitAsync
	bx r3
	.align 2, 0
_0206F894: .word CARDi_TryWaitAsync
	thumb_func_end CARD_TryWaitBackupAsync

	thumb_func_start CARD_CancelBackupAsync
CARD_CancelBackupAsync: ; 0x0206F898
	push {r3, lr}
	blx OS_DisableInterrupts
	ldr r2, _0206F8B0 ; =0x0214B440
	mov r1, #0x40
	ldr r3, [r2, #4]
	orr r1, r3
	str r1, [r2, #4]
	blx OS_RestoreInterrupts
	pop {r3, pc}
	nop
_0206F8B0: .word 0x0214B440
	thumb_func_end CARD_CancelBackupAsync

