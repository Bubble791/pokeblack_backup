	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start CARDi_LockBusCondition
CARDi_LockBusCondition: ; 0x0206EDCC
	push {r3, lr}
	ldrh r0, [r0]
	bl OS_TryLockCard
	cmp r0, #0
	bne _0206EDDC
	mov r0, #1
	pop {r3, pc}
_0206EDDC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end CARDi_LockBusCondition

	thumb_func_start CARD_Init
CARD_Init: ; 0x0206EDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0206EE8C ; =0x0214B440
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0206EE88
	mov r0, #1
	str r0, [r5, #4]
	bl OS_GetBootType
	cmp r0, #1
	bne _0206EE04
	mov r2, #0x16
	ldr r0, _0206EE90 ; =0x02FFFE00
	ldr r1, _0206EE94 ; =0x02FFFA80
	lsl r2, r2, #4
	blx MI_CpuCopy8
_0206EE04:
	ldr r4, _0206EE98 ; =0x000004FC
	mov r6, #0
	str r6, [r5, r4]
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r6, [r5, r0]
	add r0, r4, #0
	sub r1, r6, #1
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x10
	str r6, [r5, r0]
	mov r0, #9
	lsl r0, r0, #0xa
	str r0, [r5, #0x10]
	ldr r0, _0206EE9C ; =0x0214BA80
	add r7, r4, #0
	sub r7, #0xfc
	str r6, [r0]
	mov r0, #4
	str r7, [r5, #0xc]
	str r0, [r5, #8]
	bl CARDi_InitResourceLock
	add r0, r4, #0
	sub r0, #0x10
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc
	str r6, [r5, r0]
	sub r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	str r6, [r5, r0]
	str r7, [sp]
	ldr r0, [r5, #8]
	sub r4, #0x14
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r1, _0206EEA0 ; =CARDi_OldTypeTaskThread
	add r0, #0x28
	mov r2, #0
	add r3, r5, r4
	bl OS_CreateThread
	add r5, #0x28
	add r0, r5, #0
	bl OS_WakeupThreadDirect
	bl CARDi_InitCommand
	bl CARDi_InitRom
	bl OS_GetBootType
	cmp r0, #1
	bne _0206EE84
	mov r0, #1
	bl CARD_Enable
_0206EE84:
	bl CARD_InitPulledOutCallback
_0206EE88:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206EE8C: .word 0x0214B440
_0206EE90: .word 0x02FFFE00
_0206EE94: .word 0x02FFFA80
_0206EE98: .word 0x000004FC
_0206EE9C: .word 0x0214BA80
_0206EEA0: .word CARDi_OldTypeTaskThread
	thumb_func_end CARD_Init

	thumb_func_start CARD_IsEnabled
CARD_IsEnabled: ; 0x0206EEA4
	ldr r0, _0206EEAC ; =0x0214B3DC
	ldr r0, [r0]
	bx lr
	nop
_0206EEAC: .word 0x0214B3DC
	thumb_func_end CARD_IsEnabled

	thumb_func_start CARD_CheckEnabled
CARD_CheckEnabled: ; 0x0206EEB0
	push {r3, lr}
	bl CARD_IsEnabled
	cmp r0, #0
	bne _0206EEBE
	bl OS_Terminate
_0206EEBE:
	pop {r3, pc}
	thumb_func_end CARD_CheckEnabled

	thumb_func_start CARD_Enable
CARD_Enable: ; 0x0206EEC0
	ldr r1, _0206EEC8 ; =0x0214B3DC
	str r0, [r1]
	bx lr
	nop
_0206EEC8: .word 0x0214B3DC
	thumb_func_end CARD_Enable

	thumb_func_start sub_0206EECC
sub_0206EECC: ; 0x0206EECC
	ldr r0, _0206EED4 ; =0x0214B440
	ldr r0, [r0]
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0206EED4: .word 0x0214B440
	thumb_func_end sub_0206EECC

	thumb_func_start CARD_GetRomHeader
CARD_GetRomHeader: ; 0x0206EED8
	ldr r0, _0206EEDC ; =0x02FFFA80
	bx lr
	.align 2, 0
_0206EEDC: .word 0x02FFFA80
	thumb_func_end CARD_GetRomHeader

	thumb_func_start CARD_GetOwnRomHeader
CARD_GetOwnRomHeader: ; 0x0206EEE0
	ldr r0, _0206EEE4 ; =0x02FFFE00
	bx lr
	.align 2, 0
_0206EEE4: .word 0x02FFFE00
	thumb_func_end CARD_GetOwnRomHeader

	thumb_func_start CARD_GetOwnRomHeaderTWL
CARD_GetOwnRomHeaderTWL: ; 0x0206EEE8
	ldr r0, _0206EEEC ; =0x02FFE000
	bx lr
	.align 2, 0
_0206EEEC: .word 0x02FFE000
	thumb_func_end CARD_GetOwnRomHeaderTWL

	thumb_func_start CARD_LockRom
CARD_LockRom: ; 0x0206EEF0
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #0x40
	add r0, sp, #0x48
	ldrh r0, [r0]
	mov r1, #1
	bl CARDi_LockResource
	add r4, sp, #0
	add r0, r4, #0
	bl OS_InitEvent
	add r0, sp, #0xc
	bl OS_CreateVAlarm
	ldr r0, _0206EF34 ; =CARDi_LockBusCondition
	str r0, [sp, #0x34]
	add r0, sp, #0x48
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl CARDi_PeekEventListener
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl OS_WaitEventEx
	add sp, #0x40
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_0206EF34: .word CARDi_LockBusCondition
	thumb_func_end CARD_LockRom

	thumb_func_start CARD_UnlockRom
CARD_UnlockRom: ; 0x0206EF38
	push {r4, lr}
	add r4, r0, #0
	bl OS_UnlockCard
	add r0, r4, #0
	mov r1, #1
	bl CARDi_UnlockResource
	pop {r4, pc}
	.align 2, 0
	thumb_func_end CARD_UnlockRom

	thumb_func_start CARD_LockBackup
CARD_LockBackup: ; 0x0206EF4C
	ldr r3, _0206EF54 ; =CARDi_LockResource
	mov r1, #2
	bx r3
	nop
_0206EF54: .word CARDi_LockResource
	thumb_func_end CARD_LockBackup

	thumb_func_start CARD_UnlockBackup
CARD_UnlockBackup: ; 0x0206EF58
	push {r4, lr}
	add r4, r0, #0
	bl CARD_TryWaitBackupAsync
	cmp r0, #0
	bne _0206EF68
	bl CARD_WaitBackupAsync
_0206EF68:
	add r0, r4, #0
	mov r1, #2
	bl CARDi_UnlockResource
	pop {r4, pc}
	.align 2, 0
	thumb_func_end CARD_UnlockBackup

	thumb_func_start CARDi_LockResource
CARDi_LockResource: ; 0x0206EF74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0206EFC4 ; =0x0214B440
	add r7, r0, #0
	str r1, [sp]
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	cmp r0, r7
	bne _0206EF98
	ldr r1, [r5, #0x24]
	ldr r0, [sp]
	cmp r1, r0
	beq _0206EFB4
	bl OS_Terminate
	b _0206EFB4
_0206EF98:
	add r4, r5, #0
	mov r6, #2
	add r4, #0x1c
	mvn r6, r6
	b _0206EFA8
_0206EFA2:
	add r0, r4, #0
	bl OS_SleepThread
_0206EFA8:
	ldr r0, [r5, #0x14]
	cmp r0, r6
	bne _0206EFA2
	ldr r0, [sp]
	str r7, [r5, #0x14]
	str r0, [r5, #0x24]
_0206EFB4:
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206EFC4: .word 0x0214B440
	thumb_func_end CARDi_LockResource

	thumb_func_start CARDi_UnlockResource
CARDi_UnlockResource: ; 0x0206EFC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206F014 ; =0x0214B440
	add r5, r0, #0
	add r6, r1, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, r5
	bne _0206EFE2
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0206EFE8
_0206EFE2:
	bl OS_Terminate
	b _0206F00C
_0206EFE8:
	ldr r0, [r4, #0x24]
	cmp r0, r6
	beq _0206EFF2
	bl OS_Terminate
_0206EFF2:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _0206F00C
	mov r0, #2
	mvn r0, r0
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x24]
	add r4, #0x1c
	add r0, r4, #0
	bl OS_WakeupThread
_0206F00C:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206F014: .word 0x0214B440
	thumb_func_end CARDi_UnlockResource

	thumb_func_start CARDi_GetAccessLevel
CARDi_GetAccessLevel: ; 0x0206F018
	push {r4, lr}
	mov r4, #0
	bl OS_GetBootType
	cmp r0, #1
	bne _0206F028
_0206F024:
	mov r4, #7
	b _0206F076
_0206F028:
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0206F032
	b _0206F024
_0206F032:
	bl CARD_GetOwnRomHeaderTWL
	mov r2, #0x6d
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	add r1, r4, #0
	lsl r3, r2, #0x17
	lsr r3, r3, #0x1f
	beq _0206F04A
	mov r1, #4
	orr r4, r1
	b _0206F050
_0206F04A:
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	beq _0206F052
_0206F050:
	mov r1, #1
_0206F052:
	cmp r1, #0
	beq _0206F076
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1f
	beq _0206F066
	mov r1, #1
	orr r4, r1
_0206F066:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	beq _0206F076
	mov r0, #2
	orr r4, r0
_0206F076:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end CARDi_GetAccessLevel

	thumb_func_start CARDi_WaitAsync
CARDi_WaitAsync: ; 0x0206F07C
	push {r3, lr}
	ldr r0, _0206F08C ; =0x0214B440
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl CARDi_WaitForTask
	pop {r3, pc}
	.align 2, 0
_0206F08C: .word 0x0214B440
	thumb_func_end CARDi_WaitAsync

	thumb_func_start CARDi_TryWaitAsync
CARDi_TryWaitAsync: ; 0x0206F090
	ldr r0, _0206F0A4 ; =0x0214B440
	ldr r1, [r0, #4]
	mov r0, #4
	tst r0, r1
	bne _0206F09E
	mov r0, #1
	bx lr
_0206F09E:
	mov r0, #0
	bx lr
	nop
_0206F0A4: .word 0x0214B440
	thumb_func_end CARDi_TryWaitAsync

	thumb_func_start CARDi_InitResourceLock
CARDi_InitResourceLock: ; 0x0206F0A8
	mov r0, #2
	ldr r1, _0206F0BC ; =0x0214B440
	mvn r0, r0
	str r0, [r1, #0x14]
	mov r0, #0
	str r0, [r1, #0x18]
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	str r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_0206F0BC: .word 0x0214B440
	thumb_func_end CARDi_InitResourceLock

	thumb_func_start CARDi_InitCommand
CARDi_InitCommand: ; 0x0206F0C0
	push {r4, lr}
	ldr r4, _0206F0E4 ; =0x0214B3E0
	ldr r0, _0206F0E8 ; =0x0214B440
	add r1, r4, #0
	str r4, [r0]
	mov r0, #0
	mov r2, #0x60
	blx MIi_CpuClearFast
	add r0, r4, #0
	mov r1, #0x60
	blx DC_FlushRange
	ldr r1, _0206F0EC ; =CARDi_OnFifoRecv
	mov r0, #0xb
	bl PXI_SetFifoRecvCallback
	pop {r4, pc}
	.align 2, 0
_0206F0E4: .word 0x0214B3E0
_0206F0E8: .word 0x0214B440
_0206F0EC: .word CARDi_OnFifoRecv
	thumb_func_end CARDi_InitCommand

	thumb_func_start sub_0206F0F0
sub_0206F0F0: ; 0x0206F0F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, _0206F12C ; =0x0214B960
	ldr r4, _0206F130 ; =0x0214B960
	ldr r5, [r0]
	cmp r5, #0
	beq _0206F122
_0206F106:
	ldr r3, [r5, #8]
	cmp r3, #0
	beq _0206F114
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r7, #0
	blx r3
_0206F114:
	ldr r0, [r4]
	cmp r0, r5
	bne _0206F11C
	add r4, r0, #0
_0206F11C:
	ldr r5, [r4]
	cmp r5, #0
	bne _0206F106
_0206F122:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F12C: .word 0x0214B960
_0206F130: .word 0x0214B960
	thumb_func_end sub_0206F0F0

	thumb_func_start CARDi_ExecuteOldTypeTask
CARDi_ExecuteOldTypeTask: ; 0x0206F134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _0206F180 ; =0x0214B440
	beq _0206F15E
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x28
	bl OS_SetThreadPriority
	ldr r0, _0206F184 ; =0x000004E8
	str r5, [r4, r0]
	ldr r1, [r4, #4]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x28
	bl OS_WakeupThreadDirect
	b _0206F168
_0206F15E:
	add r0, r4, #0
	blx r5
	add r0, r4, #0
	bl CARDi_EndTask
_0206F168:
	cmp r6, #0
	beq _0206F170
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206F170:
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0206F17C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206F17C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206F180: .word 0x0214B440
_0206F184: .word 0x000004E8
	thumb_func_end CARDi_ExecuteOldTypeTask

	thumb_func_start CARDi_OldTypeTaskThread
CARDi_OldTypeTaskThread: ; 0x0206F188
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0206F1B8 ; =0x0214B440
	mov r6, #0
	mov r4, #8
_0206F190:
	blx OS_DisableInterrupts
	add r7, r0, #0
_0206F196:
	ldr r0, [r5, #4]
	tst r0, r4
	bne _0206F1A4
	add r0, r6, #0
	bl OS_SleepThread
	b _0206F196
_0206F1A4:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	ldr r0, _0206F1BC ; =0x000004E8
	mov r1, #0
	ldr r0, [r5, r0]
	bl CARDi_ExecuteOldTypeTask
	b _0206F190
	nop
_0206F1B8: .word 0x0214B440
_0206F1BC: .word 0x000004E8
	thumb_func_end CARDi_OldTypeTaskThread

	thumb_func_start CARDi_WaitForTask
CARDi_WaitForTask: ; 0x0206F1C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r1, [r5, #4]
	mov r0, #4
	tst r0, r1
	beq _0206F1EA
	ldr r4, _0206F21C ; =0x000004F4
	mov r6, #4
_0206F1DE:
	add r0, r5, r4
	bl OS_SleepThread
	ldr r0, [r5, #4]
	tst r0, r6
	bne _0206F1DE
_0206F1EA:
	cmp r7, #0
	beq _0206F202
	ldr r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	str r0, [r5, #4]
	ldr r1, _0206F220 ; =0x000004EC
	ldr r0, [sp]
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	add r1, r1, #4
	str r0, [r5, r1]
_0206F202:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _0206F216
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206F216:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0206F21C: .word 0x000004F4
_0206F220: .word 0x000004EC
	thumb_func_end CARDi_WaitForTask

	thumb_func_start CARDi_EndTask
CARDi_EndTask: ; 0x0206F224
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0206F258 ; =0x000004EC
	add r5, r0, #0
	add r0, r6, #4
	ldr r4, [r5, r6]
	ldr r7, [r5, r0]
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r1, [r5, #4]
	mov r0, #0x4c
	bic r1, r0
	add r6, #8
	add r0, r5, r6
	str r1, [r5, #4]
	bl OS_WakeupThread
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	cmp r4, #0
	beq _0206F254
	add r0, r7, #0
	blx r4
_0206F254:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F258: .word 0x000004EC
	thumb_func_end CARDi_EndTask
