    .include "macros/function.inc"
	.include "overlay187.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy187_21e8be0
ovy187_21e8be0: ; 0x021E8BE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r4, r0, #0
	mov r2, #0x21
	ldrh r0, [r5, #4]
	mov r1, #0x99
	lsl r2, r2, #0xc
	mov r7, #0x99
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x99
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r5, #8]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #0xc]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #0xe]
	strh r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r5, #0x10]
	add r0, #0x2e
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #0x11]
	add r0, #0x2f
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #0x12]
	add r0, #0x30
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5, #0x13]
	add r0, #0x31
	strb r1, [r0]
	str r5, [r4, #4]
	add r0, r4, #0
	strh r7, [r4, #8]
	mov r1, #1
	str r1, [r4, #0x10]
	add r0, #0x24
	str r0, [r4, #0xc]
	str r6, [r4, #0x14]
	ldr r0, [r5]
	cmp r0, #0
	bne _021E8C50
	str r6, [r4, #0x18]
	b _021E8C52
_021E8C50:
	str r1, [r4, #0x18]
_021E8C52:
	add r0, r4, #0
	add r0, #8
	bl ovy187_21e8ec8
	str r0, [r4, #0x20]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy187_21e8be0
_021E8C60:
	.byte 0x18, 0x6A, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x29, 0x8F, 0x1E, 0x02

	thumb_func_start ovy187_21e8c6c
ovy187_21e8c6c: ; 0x021E8C6C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	bl ovy187_21e9034
	cmp r0, #0
	bne _021E8C80
	mov r1, #0
	b _021E8C86
_021E8C80:
	cmp r0, #1
	bne _021E8C8A
	mov r1, #1
_021E8C86:
	ldr r0, [r4, #4]
	str r1, [r0, #0x14]
_021E8C8A:
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x99
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy187_21e8c6c

	thumb_func_start ovy187_21e8c9c
ovy187_21e8c9c: ; 0x021E8C9C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0x31
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x99
	lsl r2, r2, #0xc
	mov r6, #0x99
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x28
	mov r2, #0x99
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	add r0, r4, #0
	str r5, [r4, #4]
	bl ovy187_21e8d84
	add r0, r4, #0
	add r0, #8
	strh r6, [r4, #8]
	bl ovy187_21e8ec8
	str r0, [r4, #0x20]
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy187_21e8c9c
_021E8CDC:
	.byte 0x18, 0x6A, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x29, 0x8F, 0x1E, 0x02

	thumb_func_start ovy187_021E8CDC
ovy187_021E8CDC:
	ldr r0, [r3, #0x20]
	ldr r3, ovy187_021E8CE4
	bx r3
	.align 2, 0
ovy187_021E8CE4: .word 0x021E8F29
	thumb_func_end ovy187_021E8CDC

	thumb_func_start ovy187_21e8ce8
ovy187_21e8ce8: ; 0x021E8CE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	str r0, [sp]
	ldr r0, [r5, #0x20]
	bl ovy187_21e9034
	cmp r0, #0
	bne _021E8CFC
	mov r1, #0
	b _021E8D02
_021E8CFC:
	cmp r0, #1
	bne _021E8D06
	mov r1, #1
_021E8D02:
	ldr r0, [r5, #4]
	strb r1, [r0, #9]
_021E8D06:
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	bl sub_020174D4
	add r7, r0, #0
	bl sub_0202D7A8
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0xc]
	lsl r2, r2, #4
	add r2, r1, r2
	ldrh r6, [r2, #0xe]
	ldr r2, [r5, #0x1c]
	lsl r2, r2, #4
	add r1, r1, r2
	ldrh r4, [r1, #0xe]
	bl sub_02013B80
	ldr r1, [r5, #4]
	ldrb r2, [r1, #0xa]
	mov r1, #3
	sub r1, r1, r2
	sub r2, r6, r2
	add r1, r6, r1
	cmp r4, r2
	blt _021E8D3E
	cmp r4, r1
	ble _021E8D50
_021E8D3E:
	sub r1, r0, r4
	cmp r1, #4
	bge _021E8D46
	sub r4, r0, #4
_021E8D46:
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_0202D7B8
_021E8D50:
	ldr r0, [r5, #0x10]
	mov r4, #0
	cmp r0, #0
	bls _021E8D6C
_021E8D58:
	ldr r1, [r5, #0xc]
	lsl r0, r4, #4
	add r0, r1, r0
	ldr r0, [r0, #4]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blo _021E8D58
_021E8D6C:
	ldr r0, [r5, #0xc]
	bl GFL_HeapFree
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x99
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy187_21e8ce8

	thumb_func_start ovy187_21e8d84
ovy187_21e8d84: ; 0x021E8D84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldrh r0, [r5]
	mov r7, #0
	bl sub_02013B8C
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	bl sub_020174D4
	bl sub_0202D7A8
	mov r1, #2
	str r0, [sp, #8]
	str r7, [r5, #0x10]
	str r1, [r5, #0x18]
	bl sub_02013B80
	mov r6, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _021E8E0A
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
_021E8DBC:
	ldr r0, [sp, #8]
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, r6, #0
	bl sub_02013B44
	add r0, r4, #0
	bl sub_02013CC0
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02013BD4
	cmp r0, #0
	bne _021E8E02
	add r0, r4, #0
	bl sub_02013C88
	cmp r0, #0
	bne _021E8E02
	ldr r0, [sp, #0x10]
	sub r0, #0x16
	str r0, [sp, #0x10]
	cmp r0, #1
	bhi _021E8E02
	add r0, r4, #0
	bl sub_02013DC8
	cmp r0, #0xff
	beq _021E8E02
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
_021E8E02:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _021E8DBC
_021E8E0A:
	ldr r0, _021E8EC0 ; =0x0000011A
	ldr r3, _021E8EC4 ; =0x021EA078
	str r0, [sp]
	ldr r1, [r5, #0x10]
	ldrh r0, [r5]
	lsl r1, r1, #4
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _021E8EBA
_021E8E26:
	ldr r0, [sp, #8]
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, r6, #0
	bl sub_02013B44
	add r0, r4, #0
	bl sub_02013CC0
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_02013BD4
	cmp r0, #0
	bne _021E8EB2
	add r0, r4, #0
	bl sub_02013C88
	cmp r0, #0
	bne _021E8EB2
	ldr r0, [sp, #0x18]
	sub r0, #0x16
	str r0, [sp, #0x18]
	cmp r0, #1
	bhi _021E8EB2
	ldr r0, [r5, #4]
	ldrb r0, [r0, #8]
	cmp r0, r6
	bne _021E8E62
	str r7, [r5, #0x14]
_021E8E62:
	add r0, r4, #0
	bl sub_02013DC8
	cmp r0, #0xff
	beq _021E8EB2
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	lsl r0, r7, #4
	str r0, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #4]
	ldrh r1, [r5]
	mov r0, #8
	bl GFL_StrBufCreate
	add r1, r0, #0
	ldr r0, [sp, #4]
	str r1, [r0, #4]
	add r0, r4, #0
	bl sub_02013CAC
	add r0, r4, #0
	bl sub_02013DC8
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	strh r0, [r2, r1]
	add r0, r4, #0
	bl sub_02013DD0
	ldr r1, [sp, #4]
	strh r0, [r1, #8]
	ldr r0, [sp, #4]
	mov r1, #0
	strb r1, [r0, #0xa]
	strh r6, [r0, #0xe]
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_021E8EB2:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _021E8E26
_021E8EBA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8EC0: .word 0x0000011A
_021E8EC4: .word 0x021EA078
	thumb_func_end ovy187_21e8d84

	thumb_func_start ovy187_21e8ec8
ovy187_21e8ec8: ; 0x021E8EC8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldrh r5, [r6]
	mov r0, #0x94
	ldr r3, _021E8F24 ; =0x021EA08C
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x7c
	mov r2, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x7c
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r6, #0
	strh r5, [r4]
	bl ovy187_21e940c
	add r0, r4, #0
	bl ovy187_21e94a8
	add r0, r4, #0
	bl ovy187_21e97d0
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _021E8F16
	add r0, r4, #0
	bl ovy187_21e97f4
	b _021E8F1C
_021E8F16:
	add r0, r4, #0
	bl ovy187_21e9ab0
_021E8F1C:
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E8F24: .word 0x021EA08C
	thumb_func_end ovy187_21e8ec8

	thumb_func_start ovy187_21e8f28
ovy187_21e8f28: ; 0x021E8F28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	mov r5, #0
	cmp r1, #6
	bhi _021E8FE0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8F40: ; jump table
	.short _021E8F4E - _021E8F40 - 2 ; case 0
	.short _021E8F7E - _021E8F40 - 2 ; case 1
	.short _021E8F8C - _021E8F40 - 2 ; case 2
	.short _021E8FA4 - _021E8F40 - 2 ; case 3
	.short _021E8FCA - _021E8F40 - 2 ; case 4
	.short _021E8FD8 - _021E8F40 - 2 ; case 5
	.short _021E8F98 - _021E8F40 - 2 ; case 6
_021E8F4E:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021E8FE0
	ldr r0, [r4, #0x44]
	bl BmpWin_FlushChar
	mov r0, #3
	bl sub_021E9710
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	mov r0, #3
	mov r1, #0x10
	add r2, r5, #0
	add r3, r5, #0
	bl sub_0204E060
	add r0, r4, #0
	mov r1, #1
_021E8F78:
	bl sub_021E93BC
	b _021E8FE0
_021E8F7E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021E8FE0
	add r0, r4, #0
	mov r1, #2
	b _021E8F78
_021E8F8C:
	bl ovy187_21e93c4
	add r0, r4, #0
	bl ovy187_21e9054
	b _021E8FE0
_021E8F98:
	bl ovy187_21e93c4
	add r0, r4, #0
	bl ovy187_21e925c
	b _021E8FE0
_021E8FA4:
	ldr r0, [r4, #0x14]
	bl sub_0204C560
	cmp r0, #0
	beq _021E8FB8
	ldr r0, [r4, #0x10]
	bl sub_0204C560
	cmp r0, #0
	bne _021E8FE0
_021E8FB8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	add r0, r4, #0
	mov r1, #4
	b _021E8F78
_021E8FCA:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021E8FE0
	add r0, r4, #0
	mov r1, #5
	b _021E8F78
_021E8FD8:
	ldr r1, [r4, #0x78]
	ldr r0, [r4, #0x70]
	mov r5, #1
	str r1, [r0, #0x14]
_021E8FE0:
	ldr r0, [r4, #0x40]
	mov r7, #0
	str r7, [r4, #0x64]
	bl sub_02021A3C
	add r0, r4, #0
	add r0, #0x4c
	ldrb r0, [r0]
	ldr r6, [r4, #0x40]
	cmp r0, #0
	beq _021E9014
	ldr r0, [r4, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021E9014
	ldr r0, [r4, #0x48]
	bl BmpWin_FlushChar
	add r0, r4, #0
	add r0, #0x4c
	strb r7, [r0]
_021E9014:
	add r0, r4, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E9022
	mov r0, #1
	b _021E9024
_021E9022:
	mov r0, #0
_021E9024:
	cmp r0, #0
	bne _021E902C
	mov r0, #1
	str r0, [r4, #0x64]
_021E902C:
	bl sub_0204B794
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy187_21e8f28

	thumb_func_start ovy187_21e9034
ovy187_21e9034: ; 0x021E9034
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x6c]
	bl ovy187_21e97e0
	add r0, r5, #0
	bl ovy187_21e9720
	add r0, r5, #0
	bl ovy187_21e9484
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy187_21e9034

	thumb_func_start ovy187_21e9054
ovy187_21e9054: ; 0x021E9054
	push {r4, lr}
	add r4, r0, #0
	bl GCTX_HIDGetPressedKeys
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0x10]
	cmp r1, #2
	bne _021E9080
	mov r1, #0x40
	tst r1, r0
	beq _021E9072
	add r0, r4, #0
	bl ovy187_21e9184
	pop {r4, pc}
_021E9072:
	mov r1, #0x80
	tst r1, r0
	beq _021E909A
	add r0, r4, #0
	bl ovy187_21e91c8
	pop {r4, pc}
_021E9080:
	cmp r1, #1
	bne _021E909A
	mov r1, #1
	lsl r1, r1, #0xa
	tst r1, r0
	beq _021E909A
	add r0, r4, #0
	bl ovy187_21e912c
	mov r0, #0
	bl sub_0203D564
	pop {r4, pc}
_021E909A:
	mov r1, #2
	tst r0, r1
	beq _021E90AE
	add r0, r4, #0
	bl ovy187_21e9158
	mov r0, #0
	bl sub_0203D564
	pop {r4, pc}
_021E90AE:
	ldr r0, _021E9128 ; =0x021E9F1C
	bl sub_0203DA0C
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0x10]
	cmp r1, #1
	bne _021E90E2
	cmp r0, #0
	beq _021E90C6
	cmp r0, #1
	beq _021E90D4
	pop {r4, pc}
_021E90C6:
	add r0, r4, #0
	bl ovy187_21e9158
	mov r0, #0
	bl sub_0203D564
	pop {r4, pc}
_021E90D4:
	add r0, r4, #0
	bl ovy187_21e912c
	mov r0, #1
	bl sub_0203D564
	pop {r4, pc}
_021E90E2:
	cmp r1, #0
	bne _021E90F8
	cmp r0, #0
	bne _021E9126
	add r0, r4, #0
	bl ovy187_21e9158
	mov r0, #0
	bl sub_0203D564
	pop {r4, pc}
_021E90F8:
	cmp r1, #2
	bne _021E9126
	cmp r0, #0
	beq _021E910A
	cmp r0, #1
	beq _021E9120
	cmp r0, #2
	beq _021E9118
	pop {r4, pc}
_021E910A:
	add r0, r4, #0
	bl ovy187_21e9158
	mov r0, #0
	bl sub_0203D564
	pop {r4, pc}
_021E9118:
	add r0, r4, #0
	bl ovy187_21e9184
	pop {r4, pc}
_021E9120:
	add r0, r4, #0
	bl ovy187_21e91c8
_021E9126:
	pop {r4, pc}
	.align 2, 0
_021E9128: .word 0x021E9F1C
	thumb_func_end ovy187_21e9054

	thumb_func_start ovy187_21e912c
ovy187_21e912c: ; 0x021E912C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #8
	bl sub_0204C488
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r4, #1
	bl sub_0204C520
	add r0, r5, #0
	mov r1, #3
	bl sub_021E93BC
	ldr r0, _021E9154 ; =0x00000556
	bl GFL_SndSEPlay
	str r4, [r5, #0x6c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E9154: .word 0x00000556
	thumb_func_end ovy187_21e912c

	thumb_func_start ovy187_21e9158
ovy187_21e9158: ; 0x021E9158
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl sub_0204C488
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #3
	bl sub_021E93BC
	ldr r0, _021E9180 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #0
	str r0, [r4, #0x6c]
	pop {r4, pc}
	.align 2, 0
_021E9180: .word 0x00000551
	thumb_func_end ovy187_21e9158

	thumb_func_start ovy187_21e9184
ovy187_21e9184: ; 0x021E9184
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	ble _021E91C2
	ldr r0, [r4, #0x70]
	ldr r0, [r0, #8]
	cmp r0, #1
	bls _021E91C2
	ldr r0, [r4, #0x18]
	mov r1, #0xb
	bl sub_0204C488
	ldr r0, [r4, #0x1c]
	mov r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, _021E91C4 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021E9234
_021E91C2:
	pop {r4, pc}
	.align 2, 0
_021E91C4: .word 0x0000054C
	thumb_func_end ovy187_21e9184

	thumb_func_start ovy187_21e91c8
ovy187_21e91c8: ; 0x021E91C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	ldr r0, [r4, #0x78]
	add r0, r0, #1
	cmp r1, r0
	bls _021E9204
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	bl sub_0204C488
	ldr r0, [r4, #0x18]
	mov r1, #0x11
	bl sub_0204C488
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, _021E9208 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021E920C
_021E9204:
	pop {r4, pc}
	nop
_021E9208: .word 0x0000054C
	thumb_func_end ovy187_21e91c8

	thumb_func_start sub_021E920C
sub_021E920C: ; 0x021E920C
	ldr r1, [r0, #0x78]
	add r2, r1, #1
	ldr r1, [r0, #0x70]
	str r2, [r0, #0x78]
	ldr r1, [r1, #8]
	cmp r2, r1
	blo _021E921E
	mov r1, #0
	str r1, [r0, #0x78]
_021E921E:
	ldr r1, [r0, #0x70]
	ldr r3, _021E9230 ; =sub_021E93BC
	ldr r2, [r1, #4]
	ldr r1, [r0, #0x78]
	lsl r1, r1, #4
	add r1, r2, r1
	str r1, [r0, #0x74]
	mov r1, #6
	bx r3
	.align 2, 0
_021E9230: .word sub_021E93BC
	thumb_func_end sub_021E920C

	thumb_func_start sub_021E9234
sub_021E9234: ; 0x021E9234
	ldr r1, [r0, #0x78]
	sub r1, r1, #1
	str r1, [r0, #0x78]
	bpl _021E9244
	ldr r1, [r0, #0x70]
	ldr r1, [r1, #8]
	sub r1, r1, #1
	str r1, [r0, #0x78]
_021E9244:
	ldr r1, [r0, #0x70]
	ldr r3, _021E9258 ; =sub_021E93BC
	ldr r2, [r1, #4]
	ldr r1, [r0, #0x78]
	lsl r1, r1, #4
	add r1, r2, r1
	str r1, [r0, #0x74]
	mov r1, #6
	bx r3
	nop
_021E9258: .word sub_021E93BC
	thumb_func_end sub_021E9234

	thumb_func_start ovy187_21e925c
ovy187_21e925c: ; 0x021E925C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrh r0, [r4, #0x3e]
	cmp r0, #0
	beq _021E9276
	cmp r0, #1
	beq _021E92C8
	cmp r0, #2
	bne _021E9272
	b _021E9384
_021E9272:
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021E9276:
	ldr r0, [r4, #0x18]
	bl sub_0204C560
	cmp r0, #0
	beq _021E928C
	ldr r0, [r4, #0x1c]
	bl sub_0204C560
	cmp r0, #0
	beq _021E928C
	b _021E93A6
_021E928C:
	ldr r0, [r4, #0x78]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bgt _021E9298
	mov r1, #0x11
	b _021E929A
_021E9298:
	mov r1, #3
_021E929A:
	bl sub_0204C488
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	ldr r0, [r4, #0x78]
	add r0, r0, #1
	cmp r1, r0
	ldr r0, [r4, #0x1c]
	bne _021E92B0
	mov r1, #0x10
	b _021E92B2
_021E92B0:
	mov r1, #2
_021E92B2:
	bl sub_0204C488
	ldr r0, [r4, #0x44]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldrh r0, [r4, #0x3e]
	add r0, r0, #1
	strh r0, [r4, #0x3e]
_021E92C8:
	ldr r0, [r4, #0x74]
	ldrh r0, [r0]
	cmp r0, #0xff
	blo _021E92D4
	mov r0, #0
	b _021E92D6
_021E92D4:
	mov r0, #1
_021E92D6:
	ldrh r1, [r4]
	str r0, [r4, #0x38]
	mov r0, #0xeb
	bl sub_0204AA30
	ldr r1, [r4, #0x38]
	add r5, r0, #0
	cmp r1, #1
	bne _021E92FC
	ldr r1, [r4, #0x74]
	add r2, sp, #0xc
	ldrh r1, [r1]
	bl sub_0204ABA4
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0204C124
	b _021E930E
_021E92FC:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	mov r1, #0
	add r2, sp, #0xc
	bl sub_0204ABA4
_021E930E:
	add r1, sp, #0xc
	ldrb r1, [r1, #9]
	ldr r0, [r4, #0xc]
	bl sub_0204C488
	add r0, r5, #0
	bl GFL_ArcToolFree
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _021E932C
	add r0, r4, #0
	bl ovy187_21e97f4
	b _021E9332
_021E932C:
	add r0, r4, #0
	bl ovy187_21e9ab0
_021E9332:
	ldrh r1, [r4]
	mov r0, #0xed
	bl sub_0204AA30
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _021E935A
	mov r0, #1
	bl sub_021E9710
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r2, r0, #0
	ldrh r0, [r4]
	mov r1, #5
	str r0, [sp, #8]
	add r0, r5, #0
	b _021E9370
_021E935A:
	mov r0, #1
	bl sub_021E9710
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r2, r0, #0
	ldrh r0, [r4]
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #0
_021E9370:
	bl sub_0204AF50
	add r0, r5, #0
	bl GFL_ArcToolFree
	mov r0, #1
	str r0, [r4, #0x64]
	ldrh r0, [r4, #0x3e]
	add r0, r0, #1
	strh r0, [r4, #0x3e]
_021E9384:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021E93A6
	ldr r0, [r4, #0x44]
	bl BmpWin_FlushChar
	mov r0, #3
	bl sub_021E9710
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	add r0, r4, #0
	mov r1, #2
	bl sub_021E93BC
_021E93A6:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy187_21e925c

	thumb_func_start sub_021E93AC
sub_021E93AC: ; 0x021E93AC
	ldr r2, [r0, #0x70]
	str r1, [r0, #0x78]
	ldr r2, [r2, #4]
	lsl r1, r1, #4
	add r1, r2, r1
	str r1, [r0, #0x74]
	bx lr
	.align 2, 0
	thumb_func_end sub_021E93AC

	thumb_func_start sub_021E93BC
sub_021E93BC: ; 0x021E93BC
	strh r1, [r0, #0x3c]
	mov r1, #0
	strh r1, [r0, #0x3e]
	bx lr
	thumb_func_end sub_021E93BC

	thumb_func_start ovy187_21e93c4
ovy187_21e93c4: ; 0x021E93C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	ldr r1, [r4, #0x68]
	lsl r0, r0, #0xa
	add r1, r1, r0
	str r1, [r4, #0x68]
	asr r1, r1, #0xc
	lsr r0, r0, #3
	cmp r1, r0
	ble _021E93DE
	mov r0, #0
	str r0, [r4, #0x68]
_021E93DE:
	mov r0, #0
	bl sub_021E9710
	ldr r2, [r4, #0x68]
	lsl r0, r0, #0x18
	asr r2, r2, #0xc
	lsr r0, r0, #0x18
	mov r1, #0
	neg r2, r2
	bl sub_02045E1C
	mov r0, #4
	bl sub_021E9710
	ldr r2, [r4, #0x68]
	lsl r0, r0, #0x18
	asr r2, r2, #0xc
	lsr r0, r0, #0x18
	mov r1, #0
	neg r2, r2
	bl sub_02045E1C
	pop {r4, pc}
	thumb_func_end ovy187_21e93c4

	thumb_func_start ovy187_21e940c
ovy187_21e940c: ; 0x021E940C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	str r1, [r5, #0x70]
	ldr r1, [r1, #0xc]
	ldrh r4, [r5]
	bl sub_021E93AC
	ldr r0, [r5, #0x74]
	ldrh r0, [r0]
	cmp r0, #0xff
	blo _021E9428
	mov r0, #0
	b _021E942A
_021E9428:
	mov r0, #1
_021E942A:
	str r0, [r5, #0x38]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl GFL_FontCreate
	str r0, [r5, #0x50]
	str r4, [sp]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0x54]
	mov r0, #0
	mov r1, #2
	mov r2, #0x52
	add r3, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x58]
	mov r0, #0
	mov r1, #2
	mov r2, #0x53
	add r3, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x5c]
	mov r0, #0
	mov r1, #2
	mov r2, #0x50
	add r3, r4, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x60]
	mov r0, #1
	str r0, [r5, #0x64]
	str r6, [r5, #0x68]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy187_21e940c

	thumb_func_start ovy187_21e9484
ovy187_21e9484: ; 0x021E9484
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x60]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x5c]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x54]
	bl sub_02022DA8
	ldr r0, [r4, #0x50]
	bl sub_02022DA8
	pop {r4, pc}
	thumb_func_end ovy187_21e9484

	thumb_func_start ovy187_21e94a8
ovy187_21e94a8: ; 0x021E94A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E94F4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021E94F8 ; =0x04001050
	strh r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _021E94FC ; =0x021E9F2C
	bl GFL_BGSysSetVRAMBanks
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_020232D0
	add r0, r4, #0
	bl ovy187_21e9504
	add r0, r4, #0
	bl ovy187_21e9c3c
	add r0, r4, #0
	bl ovy187_21e9780
	ldr r0, _021E9500 ; =0x021E9F05
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_021E94F4: .word 0x04000050
_021E94F8: .word 0x04001050
_021E94FC: .word 0x021E9F2C
_021E9500: .word 0x021E9F05
	thumb_func_end ovy187_21e94a8

	thumb_func_start ovy187_21e9504
ovy187_21e9504: ; 0x021E9504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldrh r4, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl GFL_BGSysCreate
	mov r0, #5
	str r0, [sp]
	ldr r0, _021E9704 ; =0x04000050
	mov r1, #2
	mov r2, #1
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	ldr r0, _021E9708 ; =0x021E9F0C
	bl sub_02044710
	ldr r7, _021E970C ; =0x021E9F78
	mov r5, #0
_021E952C:
	mov r0, #0x28
	mul r0, r5
	add r2, r7, r0
	ldr r6, [r7, r0]
	add r1, r2, #4
	ldr r2, [r2, #0x24]
	lsl r0, r6, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r5, r5, #1
	cmp r5, #5
	blt _021E952C
	mov r0, #0xed
	add r1, r4, #0
	bl sub_0204AA30
	add r5, r0, #0
	mov r0, #0x52
	add r1, r4, #0
	bl sub_0204AA30
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	beq _021E958C
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x74]
	ldrb r6, [r0, #0xa]
	cmp r6, #4
	bne _021E958E
	bl sub_02015878
	cmp r0, #0x17
	bne _021E958E
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E958E
_021E958C:
	mov r6, #7
_021E958E:
	lsl r0, r6, #5
	str r0, [sp, #0x10]
	mov r6, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	str r4, [sp, #8]
	bl sub_0204B124
	mov r0, #0x20
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x1b
	mov r2, #0
	mov r3, #0x20
	str r4, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0xc0
	str r4, [sp, #8]
	bl sub_0204B124
	mov r0, #0
	bl sub_021E9710
	str r6, [sp]
	add r2, r0, #0
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	mov r0, #2
	bl sub_021E9710
	str r6, [sp]
	add r2, r0, #0
	str r6, [sp, #4]
	add r0, r7, #0
	mov r1, #0x1c
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	bl sub_021E9710
	str r6, [sp]
	add r2, r0, #0
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _021E9652
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	bne _021E963E
	mov r0, #1
	bl sub_021E9710
	str r6, [sp]
	str r6, [sp, #4]
	add r2, r0, #0
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	b _021E9664
_021E963E:
	mov r0, #1
	bl sub_021E9710
	str r6, [sp]
	str r6, [sp, #4]
	add r2, r0, #0
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	b _021E9664
_021E9652:
	mov r0, #1
	bl sub_021E9710
	str r6, [sp]
	str r6, [sp, #4]
	add r2, r0, #0
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #4
_021E9664:
	add r3, r6, #0
	bl sub_0204AF50
	mov r0, #2
	bl sub_021E9710
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	add r2, r0, #0
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #0x1d
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	str r4, [sp, #8]
	bl sub_0204B124
	mov r0, #4
	bl sub_021E9710
	str r6, [sp]
	add r2, r0, #0
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	mov r0, #4
	bl sub_021E9710
	str r6, [sp]
	add r2, r0, #0
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl GFL_ArcToolFree
	add r0, r7, #0
	bl GFL_ArcToolFree
	mov r0, #2
	bl sub_021E9710
	mov r1, #0x18
	str r1, [sp]
	mov r1, #1
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #2
	bl sub_021E9710
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9704: .word 0x04000050
_021E9708: .word 0x021E9F0C
_021E970C: .word 0x021E9F78
	thumb_func_end ovy187_21e9504

	thumb_func_start sub_021E9710
sub_021E9710: ; 0x021E9710
	mov r1, #0x28
	mul r1, r0
	ldr r0, _021E971C ; =0x021E9F78
	ldr r0, [r0, r1]
	bx lr
	nop
_021E971C: .word 0x021E9F78
	thumb_func_end sub_021E9710

	thumb_func_start ovy187_21e9720
ovy187_21e9720: ; 0x021E9720
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy187_21e97c0
	add r0, r4, #0
	bl ovy187_21e9eb4
	add r0, r4, #0
	bl ovy187_21e9740
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy187_21e9720

	thumb_func_start ovy187_21e9740
ovy187_21e9740: ; 0x021E9740
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021E9778 ; =0x021E9F78
	mov r4, #0
	mov r7, #0x28
_021E9748:
	add r0, r4, #0
	mul r0, r7
	ldr r5, [r6, r0]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #5
	blt _021E9748
	ldr r0, _021E977C ; =0x04001050
	mov r1, #0
	mov r2, #0
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	bl sub_02044528
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9778: .word 0x021E9F78
_021E977C: .word 0x04001050
	thumb_func_end ovy187_21e9740

	thumb_func_start ovy187_21e9780
ovy187_21e9780: ; 0x021E9780
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	bl BmpWin_InitAllocator
	mov r0, #3
	bl sub_021E9710
	mov r1, #0x18
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #1
	lsl r0, r0, #0x18
	str r1, [sp, #8]
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	mov r4, #0
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x44]
	bl sub_0204826C
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x48]
	add r5, #0x4c
	strb r4, [r5]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy187_21e9780

	thumb_func_start ovy187_21e97c0
ovy187_21e97c0: ; 0x021E97C0
	push {r3, lr}
	ldr r0, [r0, #0x44]
	bl sub_02048210
	bl sub_020480A8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy187_21e97c0

	thumb_func_start ovy187_21e97d0
ovy187_21e97d0: ; 0x021E97D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x40]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy187_21e97d0

	thumb_func_start ovy187_21e97e0
ovy187_21e97e0: ; 0x021E97E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_02021C44
	ldr r0, [r4, #0x40]
	bl sub_02021A18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy187_21e97e0

	thumb_func_start ovy187_21e97f4
ovy187_21e97f4: ; 0x021E97F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r4, r0, #0
	ldrh r1, [r5]
	mov r0, #0x31
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	mov r1, #0
	bl sub_0204898C
	mov r6, #1
	str r0, [sp, #0x28]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	ldr r2, [r2, #4]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r2, [sp, #0x28]
	add r0, r4, #0
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #8
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	mov r3, #8
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x58]
	mov r1, #1
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x54]
	mov r2, #0x80
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r3, #0x1d
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldrh r1, [r5]
	mov r0, #0x31
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	mov r1, #6
	bl sub_0204898C
	str r6, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x74]
	str r0, [sp, #0x2c]
	ldrh r2, [r2, #8]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r2, [sp, #0x2c]
	add r0, r4, #0
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #0xd8
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mov r3, #0x1c
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x2c]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x58]
	mov r1, #2
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x54]
	mov r2, #0x30
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r3, #0x31
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldrh r1, [r5]
	mov r0, #0x31
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	mov r1, #3
	bl sub_0204898C
	ldr r2, [r5, #0x74]
	str r0, [sp, #0x30]
	ldrh r2, [r2]
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_020247EC
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #0x30
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #0x40
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x30]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x70]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	beq _021E9A6E
	ldr r0, [r5, #0x58]
	mov r1, #4
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x54]
	mov r2, #0x30
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r3, #0x55
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldrh r1, [r5]
	mov r0, #0x31
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	mov r1, #5
	bl sub_0204898C
	str r0, [sp, #0x34]
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	ldrb r2, [r2, #0xb]
	mov r1, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	ldrb r2, [r2, #0xc]
	add r1, r6, #0
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	ldrb r2, [r2, #0xd]
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #0x98
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r3, #0x54
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
_021E9A6E:
	ldr r1, [r5, #0x74]
	ldr r0, [r5, #0x60]
	ldrh r1, [r1]
	bl sub_0204898C
	add r6, r0, #0
	ldr r7, [r5, #0x40]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #0x10
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x6c
	bl sub_02021C7C
	mov r0, #1
	add r5, #0x4c
	strb r0, [r5]
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_WordSetSystemFree
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy187_21e97f4

	thumb_func_start ovy187_21e9ab0
ovy187_21e9ab0: ; 0x021E9AB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r4, r0, #0
	ldrh r1, [r5]
	mov r0, #0x31
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	mov r1, #0
	bl sub_0204898C
	mov r6, #1
	str r0, [sp, #0x20]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x74]
	add r0, r4, #0
	ldr r2, [r2, #4]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #8
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	mov r3, #8
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x58]
	mov r1, #1
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x54]
	mov r2, #0x80
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r3, #0x39
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldrh r1, [r5]
	mov r0, #0x31
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x58]
	mov r1, #6
	bl sub_0204898C
	str r6, [sp]
	str r6, [sp, #4]
	ldr r2, [r5, #0x74]
	str r0, [sp, #0x24]
	ldrh r2, [r2, #8]
	add r0, r4, #0
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	ldr r2, [sp, #0x24]
	add r0, r4, #0
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #0xd8
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #0x38
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x58]
	mov r1, #2
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x54]
	mov r2, #8
	str r0, [sp, #4]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r3, #0x4d
	bl sub_02021C7C
	add r0, r5, #0
	add r0, #0x4c
	strb r6, [r0]
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x58]
	mov r1, #7
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x50]
	mov r2, #8
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r3, #0x5c
	bl sub_02021C7C
	add r5, #0x4c
	add r0, r7, #0
	strb r6, [r5]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_WordSetSystemFree
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy187_21e9ab0

	thumb_func_start ovy187_21e9c3c
ovy187_21e9c3c: ; 0x021E9C3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r4, _021E9EAC ; =0x021E9F5C
	ldrh r6, [r5]
	add r3, sp, #0x2c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r1, _021E9EB0 ; =0x021E9F2C
	str r0, [r3]
	add r0, r2, #0
	add r2, r6, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #1
	add r2, r6, #0
	bl sub_0204BF1C
	str r0, [r5, #8]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	add r7, r5, #0
	mov r0, #0x52
	add r1, r6, #0
	add r7, #0x20
	bl sub_0204AA30
	str r0, [sp, #0x1c]
	mov r0, #0xee
	add r1, r6, #0
	bl sub_0204AA30
	mov r1, #2
	mov r2, #3
	add r3, r6, #0
	str r0, [sp, #0x18]
	bl Oam_LoadNCERFile
	str r0, [r5, #0x20]
	mov r4, #0
	str r4, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r6, [sp, #8]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl Oam_LoadNCLRFile
	str r0, [r7, #4]
	ldr r0, [sp, #0x18]
	str r6, [sp]
	mov r1, #1
	mov r2, #0
	mov r3, #2
	bl Oam_LoadNCGRFile
	str r0, [r7, #8]
	ldr r0, [sp, #0x1c]
	mov r1, #0x17
	mov r2, #0x1a
	add r3, r6, #0
	str r0, [sp, #0xc]
	bl Oam_LoadNCERFile
	str r0, [r7, #0xc]
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r6, [sp, #8]
	mov r1, #0x13
	mov r2, #0
	mov r3, #0xc0
	bl Oam_LoadNCLRFile
	str r0, [r7, #0x10]
	ldr r0, [sp, #0xc]
	mov r1, #0x14
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl Oam_LoadNCGRFile
	str r0, [r7, #0x14]
	add r7, sp, #0x18
_021E9D08:
	lsl r0, r4, #2
	ldr r0, [r7, r0]
	bl GFL_ArcToolFree
	add r4, r4, #1
	cmp r4, #2
	blt _021E9D08
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	mov r0, #0xeb
	add r1, r6, #0
	bl sub_0204AA30
	ldr r1, [r5, #0x38]
	add r7, r0, #0
	cmp r1, #1
	add r2, sp, #0x20
	bne _021E9D3A
	ldr r1, [r5, #0x74]
	ldrh r1, [r1]
	b _021E9D3C
_021E9D3A:
	add r1, r4, #0
_021E9D3C:
	bl sub_0204ABA4
	mov r0, #0x18
	add r4, sp, #0x10
	strh r0, [r4]
	mov r0, #0x40
	strh r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #7]
	mov r0, #0
	strb r0, [r4, #6]
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x20]
	bl Oam_CreateSprite
	str r0, [r5, #0xc]
	ldrb r1, [r4, #0x19]
	bl sub_0204C488
	add r0, r7, #0
	bl GFL_ArcToolFree
	ldr r0, [r5, #0x38]
	cmp r0, #1
	ldr r0, [r5, #0xc]
	bne _021E9D82
	mov r1, #1
	b _021E9D84
_021E9D82:
	mov r1, #0
_021E9D84:
	bl sub_0204C124
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	add r7, sp, #0x10
	strb r4, [r7, #7]
	strb r4, [r7, #6]
	mov r0, #0xe8
	strh r0, [r7]
	mov r0, #0xa8
	strh r0, [r7, #2]
	add r0, sp, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x2c]
	bl Oam_CreateSprite
	mov r1, #1
	str r0, [r5, #0x14]
	bl sub_0204C488
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	strb r4, [r7, #7]
	strb r4, [r7, #6]
	mov r0, #0xc8
	strh r0, [r7]
	mov r0, #0xa8
	strh r0, [r7, #2]
	add r0, sp, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x2c]
	bl Oam_CreateSprite
	str r0, [r5, #0x10]
	mov r1, #0
	bl sub_0204C488
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x70]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	ldr r0, [r5, #0x10]
	bne _021E9E06
	mov r1, #1
	b _021E9E08
_021E9E06:
	add r1, r4, #0
_021E9E08:
	bl sub_0204C124
	ldr r0, [r5, #0x70]
	add r7, sp, #0x10
	ldr r0, [r0, #0x10]
	cmp r0, #2
	bne _021E9EA6
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	add r0, sp, #0x10
	strb r4, [r0, #7]
	strb r4, [r0, #6]
	mov r1, #0xa8
	strh r1, [r0]
	strh r1, [r0, #2]
	str r7, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x2c]
	bl Oam_CreateSprite
	ldr r1, [r5, #0x78]
	str r0, [r5, #0x18]
	cmp r1, #0
	bne _021E9E4C
	mov r1, #0x11
	b _021E9E4E
_021E9E4C:
	mov r1, #3
_021E9E4E:
	bl sub_0204C488
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0204C124
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	add r0, sp, #0x10
	strb r4, [r0, #7]
	strb r4, [r0, #6]
	mov r1, #0xc8
	strh r1, [r0]
	mov r1, #0xa8
	strh r1, [r0, #2]
	str r7, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x2c]
	bl Oam_CreateSprite
	ldr r1, [r5, #0x70]
	str r0, [r5, #0x1c]
	ldr r2, [r1, #8]
	ldr r1, [r5, #0x78]
	add r1, r1, #1
	cmp r2, r1
	bne _021E9E98
	mov r1, #0x10
	b _021E9E9A
_021E9E98:
	mov r1, #2
_021E9E9A:
	bl sub_0204C488
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl sub_0204C124
_021E9EA6:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9EAC: .word 0x021E9F5C
_021E9EB0: .word 0x021E9F2C
	thumb_func_end ovy187_21e9c3c

	thumb_func_start ovy187_21e9eb4
ovy187_21e9eb4: ; 0x021E9EB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021E9EBA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021E9EC8
	bl sub_0204C108
_021E9EC8:
	add r4, r4, #1
	cmp r4, #5
	blt _021E9EBA
	ldr r0, [r5, #0x20]
	bl sub_0204BE64
	ldr r0, [r5, #0x28]
	bl sub_0204B98C
	ldr r0, [r5, #0x24]
	bl sub_0204BCD0
	ldr r0, [r5, #0x2c]
	bl sub_0204BE64
	ldr r0, [r5, #0x34]
	bl sub_0204B98C
	ldr r0, [r5, #0x30]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E9EFC
	bl sub_0204BF98
_021E9EFC:
	bl sub_0204B758
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy187_21e9eb4
_021E9F04:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xE8, 0x00
	.byte 0xA8, 0xC0, 0xC8, 0xE0, 0xA8, 0xC0, 0xA8, 0xC0, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x02
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE1, 0x8B, 0x1E, 0x02, 0x61, 0x8C, 0x1E, 0x02, 0x6D, 0x8C, 0x1E, 0x02, 0x9D, 0x8C, 0x1E, 0x02
	.byte 0xDD, 0x8C, 0x1E, 0x02, 0xE9, 0x8C, 0x1E, 0x02, 0x6D, 0x65, 0x64, 0x61, 0x6C, 0x5F, 0x69, 0x6E
	.byte 0x66, 0x6F, 0x5F, 0x62, 0x65, 0x61, 0x63, 0x6F, 0x6E, 0x2E, 0x63, 0x00, 0x6D, 0x65, 0x64, 0x61
	.byte 0x6C, 0x5F, 0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x65, 0x72, 0x2E, 0x63, 0x00
	; 0x021E9F04
