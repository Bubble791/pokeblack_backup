	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207EB24
sub_0207EB24: ; 0x0207EB24
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0207EB6C ; =0x0214E270
	ldr r0, [r5]
	cmp r0, #0
	beq _0207EB6A
	ldr r6, _0207EB70 ; =0x04000208
	ldr r4, _0207EB74 ; =0x0209B78C
	mov r7, #2
_0207EB34:
	ldr r0, [r4]
	tst r0, r7
	beq _0207EB42
	blx OS_GetProcMode
	cmp r0, #0x12
	beq _0207EB60
_0207EB42:
	ldr r1, [r4]
	mov r0, #4
	tst r0, r1
	beq _0207EB52
	blx OS_GetCpsrIrq
	cmp r0, #0x80
	beq _0207EB60
_0207EB52:
	ldr r1, [r4]
	mov r0, #8
	tst r0, r1
	beq _0207EB64
	ldrh r0, [r6]
	cmp r0, #0
	bne _0207EB64
_0207EB60:
	bl PXIi_HandlerRecvFifoNotEmpty
_0207EB64:
	ldr r0, [r5]
	cmp r0, #0
	bne _0207EB34
_0207EB6A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207EB6C: .word 0x0214E270
_0207EB70: .word 0x04000208
_0207EB74: .word 0x0209B78C
	thumb_func_end sub_0207EB24
_0207EB78:
	.byte 0x00, 0x29, 0x00, 0xD0, 0x08, 0x60, 0x70, 0x47
	.byte 0x10, 0xB5, 0x05, 0x4A, 0x00, 0x23, 0x54, 0x6B, 0x91, 0x6B, 0x00, 0x2C, 0x13, 0x63, 0x01, 0xD0
	.byte 0x53, 0x63, 0xA0, 0x47, 0x10, 0xBD, 0xC0, 0x46, 0x40, 0xE2, 0x14, 0x02

	thumb_func_start sub_0207EB9C
sub_0207EB9C: ; 0x0207EB9C
	push {r3}
	sub sp, #4
	ldr r2, _0207EBB4 ; =0x02FFFC3C
	ldr r0, [r2]
	str r0, [sp]
_0207EBA6:
	ldr r1, [r2]
	ldr r0, [sp]
	cmp r0, r1
	beq _0207EBA6
	add sp, #4
	pop {r3}
	bx lr
	.align 2, 0
_0207EBB4: .word 0x02FFFC3C
	thumb_func_end sub_0207EB9C

	thumb_func_start sub_0207EBB8
sub_0207EBB8: ; 0x0207EBB8
	push {r4, r5, r6, lr}
	ldr r0, _0207EC0C ; =0x0214E240
	ldrh r1, [r0]
	cmp r1, #0
	bne _0207EC0A
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r0, _0207EC10 ; =0x02FFF684
	str r1, [r0]
	bl PXI_Init
	mov r0, #8
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _0207EBF8
	mov r5, #0x64
	mov r4, #8
	mov r6, #1
_0207EBE6:
	add r0, r5, #0
	bl sub_020044F6
	add r0, r4, #0
	add r1, r6, #0
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0207EBE6
_0207EBF8:
	ldr r1, _0207EC14 ; =0x0207EC1D
	mov r0, #8
	bl PXI_SetFifoRecvCallback
	ldr r0, _0207EC18 ; =0x02FFFC3C
	ldr r1, [r0]
	ldr r0, _0207EC0C ; =0x0214E240
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
_0207EC0A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0207EC0C: .word 0x0214E240
_0207EC10: .word 0x02FFF684
_0207EC14: .word 0x0207EC1D
_0207EC18: .word 0x02FFFC3C
	thumb_func_end sub_0207EBB8
_0207EC1C:
	.byte 0x38, 0xB5, 0x7F, 0x20
	.byte 0x00, 0x02, 0x08, 0x40, 0x09, 0x06, 0x09, 0x0E, 0x00, 0x02, 0x09, 0x04, 0x01, 0x23, 0x00, 0x0C
	.byte 0x0C, 0x0C, 0x00, 0x2A, 0x09, 0xD0, 0x61, 0x28, 0x01, 0xD0, 0x62, 0x28, 0x01, 0xD1, 0x01, 0x20
	.byte 0x00, 0xE0, 0x02, 0x20, 0xFF, 0xF7, 0x9C, 0xFF, 0x38, 0xBD, 0x63, 0x28, 0x0C, 0xDC, 0x01, 0x1C
	.byte 0x60, 0x39, 0x3A, 0xD4, 0x49, 0x18, 0x79, 0x44, 0xC9, 0x88, 0x09, 0x04, 0x09, 0x14, 0x8F, 0x44
	.byte 0x1A, 0x00, 0x0C, 0x00, 0x68, 0x00, 0x1C, 0x00, 0x70, 0x28, 0x0B, 0xD0, 0x2D, 0xE0, 0x1A, 0x48
	.byte 0xC0, 0x6B, 0x00, 0x28, 0x00, 0xD0, 0x04, 0x80, 0x00, 0x24, 0x26, 0xE0, 0xFC, 0xE7, 0x16, 0x48
	.byte 0x83, 0x60, 0x22, 0xE0, 0x05, 0x2C, 0x1F, 0xD8, 0x20, 0x19, 0x78, 0x44, 0xC0, 0x88, 0x00, 0x04
	.byte 0x00, 0x14, 0x87, 0x44, 0x0A, 0x00, 0x32, 0x00, 0x32, 0x00, 0x32, 0x00, 0x18, 0x00, 0x26, 0x00
	.byte 0x01, 0x20, 0x01, 0x25, 0x00, 0xF0, 0x1E, 0xF8, 0x0C, 0x48, 0x05, 0x60, 0x0C, 0xE0, 0x0C, 0x48
	.byte 0x01, 0x68, 0x00, 0x29, 0x08, 0xD0, 0x40, 0x68, 0x88, 0x47, 0x05, 0xE0, 0x02, 0x20, 0x00, 0xF0
	.byte 0x11, 0xF8, 0x06, 0x48, 0x01, 0x21, 0x01, 0x60, 0x00, 0x23, 0x00, 0x2B, 0x02, 0xD0, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0x56, 0xFF, 0x38, 0xBD, 0xC0, 0x46, 0x40, 0xE2, 0x14, 0x02, 0x84, 0xF6, 0xFF, 0x02
	.byte 0xF0, 0xB0, 0x76, 0x02, 0x78, 0x47, 0xC0, 0x46, 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1
	.byte 0x99, 0x94, 0x76, 0x02

	thumb_func_start sub_0207ECF4
sub_0207ECF4: ; 0x0207ECF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	blx OS_DisableInterrupts
	ldr r1, _0207ED40 ; =0x0214E240
	str r0, [sp]
	ldr r2, [r1, #0x30]
	cmp r2, #0
	beq _0207ED14
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207ED14:
	mov r0, #1
	str r0, [r1, #0x30]
	str r4, [r1, #0x3c]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0x34]
	mov r4, #0
	str r0, [r1, #0x38]
	cmp r5, #0
	ble _0207ED34
_0207ED26:
	lsl r0, r4, #2
	ldr r0, [r6, r0]
	bl sub_0207F0D8
	add r4, r4, #1
	cmp r4, r5
	blt _0207ED26
_0207ED34:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207ED40: .word 0x0214E240
	thumb_func_end sub_0207ECF4

	thumb_func_start sub_0207ED44
sub_0207ED44: ; 0x0207ED44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _0207EDA4 ; =0x00051D23
	ldr r7, _0207EDA8 ; =0xFFFF0000
	add r5, r0, #0
	add r4, r1, #0
_0207ED50:
	str r7, [sp, #4]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0207EDAC ; =0x0207EB79
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0207ECF4
	cmp r0, #0
	beq _0207ED80
_0207ED66:
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0207EDAC ; =0x0207EB79
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0207ECF4
	cmp r0, #0
	bne _0207ED66
_0207ED80:
	ldr r0, [sp, #4]
	cmp r0, r7
	bne _0207ED92
_0207ED86:
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	ldr r0, [sp, #4]
	cmp r0, r7
	beq _0207ED86
_0207ED92:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0207EDA0
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	b _0207ED50
_0207EDA0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207EDA4: .word 0x00051D23
_0207EDA8: .word 0xFFFF0000
_0207EDAC: .word 0x0207EB79
	thumb_func_end sub_0207ED44

	thumb_func_start sub_0207EDB0
sub_0207EDB0: ; 0x0207EDB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	ldr r0, _0207EE00 ; =0x03006000
	mov r1, #1
	str r0, [sp, #4]
	add r0, sp, #4
	bl sub_0207ED44
	mov r6, #0
	mov r5, #2
	mov r4, #1
_0207EDCA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0207F390
	cmp r0, #1
	bne _0207EDCA
	lsl r0, r7, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0207EE04 ; =0x02006200
	orr r0, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0207EE08 ; =0x01010000
	orr r0, r1
	str r0, [sp, #8]
	add r0, sp, #4
	add r1, r5, #0
	bl sub_0207ED44
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207EE00: .word 0x03006000
_0207EE04: .word 0x02006200
_0207EE08: .word 0x01010000
	thumb_func_end sub_0207EDB0

	thumb_func_start sub_0207EE0C
sub_0207EE0C: ; 0x0207EE0C
	push {r3, r4, lr}
	sub sp, #0xc
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0207EE34 ; =0x02006100
	orr r0, r4
	str r0, [sp, #4]
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0207EE38 ; =0x01010000
	orr r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #2
	str r0, [sp]
	add r0, sp, #4
	bl sub_0207ECF4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_0207EE34: .word 0x02006100
_0207EE38: .word 0x01010000
	thumb_func_end sub_0207EE0C

	thumb_func_start sub_0207EE3C
sub_0207EE3C: ; 0x0207EE3C
	push {r3, lr}
	sub sp, #8
	add r3, sp, #4
	str r3, [sp]
	ldr r3, _0207EE58 ; =0x0207EB79
	bl sub_0207EE0C
	cmp r0, #0
	bne _0207EE54
	bl sub_0207EB24
	ldr r0, [sp, #4]
_0207EE54:
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0207EE58: .word 0x0207EB79
	thumb_func_end sub_0207EE3C

	thumb_func_start sub_0207EE5C
sub_0207EE5C: ; 0x0207EE5C
	push {r3, lr}
	add r3, r1, #0
	cmp r0, #1
	beq _0207EE6E
	cmp r0, #2
	beq _0207EE76
	cmp r0, #3
	beq _0207EE72
	b _0207EE7A
_0207EE6E:
	mov r0, #1
	b _0207EE7C
_0207EE72:
	mov r0, #2
	b _0207EE7C
_0207EE76:
	mov r0, #3
	b _0207EE7C
_0207EE7A:
	mov r0, #0
_0207EE7C:
	cmp r0, #0
	beq _0207EE8C
	str r2, [sp]
	mov r1, #0
	mov r2, #0
	bl sub_0207EE0C
	pop {r3, pc}
_0207EE8C:
	ldr r0, _0207EE90 ; =0x0000FFFF
	pop {r3, pc}
	.align 2, 0
_0207EE90: .word 0x0000FFFF
	thumb_func_end sub_0207EE5C

	thumb_func_start sub_0207EE94
sub_0207EE94: ; 0x0207EE94
	push {r3, lr}
	ldr r1, _0207EEAC ; =0x0207EB79
	add r2, sp, #0
	bl sub_0207EE5C
	cmp r0, #0
	bne _0207EEA8
	bl sub_0207EB24
	ldr r0, [sp]
_0207EEA8:
	pop {r3, pc}
	nop
_0207EEAC: .word 0x0207EB79
	thumb_func_end sub_0207EE94

	thumb_func_start sub_0207EEB0
sub_0207EEB0: ; 0x0207EEB0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	cmp r0, #0
	bne _0207EECA
	cmp r1, #1
	bne _0207EEC2
	mov r2, #6
_0207EEC2:
	cmp r1, #0
	bne _0207EEEC
	mov r2, #7
	b _0207EEEC
_0207EECA:
	cmp r0, #1
	bne _0207EEDC
	cmp r1, #1
	bne _0207EED4
	mov r2, #4
_0207EED4:
	cmp r1, #0
	bne _0207EEEC
	mov r2, #5
	b _0207EEEC
_0207EEDC:
	cmp r0, #2
	bne _0207EEEC
	cmp r1, #1
	bne _0207EEE6
	mov r2, #8
_0207EEE6:
	cmp r1, #0
	bne _0207EEEC
	mov r2, #9
_0207EEEC:
	cmp r2, #0
	beq _0207EF02
	str r3, [sp]
	add r0, r2, #0
	mov r1, #0
	mov r2, #0
	add r3, r4, #0
	bl sub_0207EE0C
	add sp, #4
	pop {r3, r4, pc}
_0207EF02:
	ldr r0, _0207EF08 ; =0x0000FFFF
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0207EF08: .word 0x0000FFFF
	thumb_func_end sub_0207EEB0

	thumb_func_start sub_0207EF0C
sub_0207EF0C: ; 0x0207EF0C
	push {r3, lr}
	ldr r2, _0207EF24 ; =0x0207EB79
	add r3, sp, #0
	bl sub_0207EEB0
	cmp r0, #0
	bne _0207EF20
	bl sub_0207EB24
	ldr r0, [sp]
_0207EF20:
	pop {r3, pc}
	nop
_0207EF24: .word 0x0207EB79
	thumb_func_end sub_0207EF0C

	thumb_func_start sub_0207EF28
sub_0207EF28: ; 0x0207EF28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0207EF58 ; =0x0214E240
	mov r1, #3
	str r1, [r0, #0x14]
	bl sub_0207F64C
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207EF48
	ldr r0, _0207EF5C ; =0x0276B0EC
	ldr r0, [r0]
	bl sub_0207F5D4
_0207EF48:
	mov r0, #0xe
	mov r1, #0
	mov r2, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_0207EE0C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207EF58: .word 0x0214E240
_0207EF5C: .word 0x0276B0EC
	thumb_func_end sub_0207EF28

	thumb_func_start sub_0207EF60
sub_0207EF60: ; 0x0207EF60
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, _0207EF84 ; =0x0207EB79
	add r1, sp, #0
	bl sub_0207EF28
	cmp r0, #0
	bne _0207EF80
	ldr r4, _0207EF88 ; =0x0209B78C
	mov r0, #0xc
	str r0, [r4]
	bl sub_0207EB24
	mov r0, #2
	str r0, [r4]
	ldr r0, [sp]
_0207EF80:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0207EF84: .word 0x0207EB79
_0207EF88: .word 0x0209B78C
	thumb_func_end sub_0207EF60

	thumb_func_start sub_0207EF8C
sub_0207EF8C: ; 0x0207EF8C
	push {r4, lr}
	bl sub_0207EF60
	cmp r0, #0
	beq _0207EFA6
	ldr r4, _0207EFC0 ; =0x00051D23
_0207EF98:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	bl sub_0207EF60
	cmp r0, #0
	bne _0207EF98
_0207EFA6:
	blx OS_DisableInterrupts
	bl MI_StopAllDma
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207EFBA
	bl sub_0206FFBC
_0207EFBA:
	blx OS_Halt
	b _0207EFBA
	.align 2, 0
_0207EFC0: .word 0x00051D23
	thumb_func_end sub_0207EF8C

	thumb_func_start sub_0207EFC4
sub_0207EFC4: ; 0x0207EFC4
	ldr r1, _0207EFCC ; =0x0214E240
	ldr r3, _0207EFD0 ; =sub_0207EFD4
	str r0, [r1, #0x18]
	bx r3
	.align 2, 0
_0207EFCC: .word 0x0214E240
_0207EFD0: .word sub_0207EFD4
	thumb_func_end sub_0207EFC4

	thumb_func_start sub_0207EFD4
sub_0207EFD4: ; 0x0207EFD4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207F4F8
	cmp r0, #0
	beq _0207EFEE
	lsl r1, r4, #0x10
	mov r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_0207EE3C
	pop {r4, pc}
_0207EFEE:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0207EFD4

	thumb_func_start sub_0207EFF4
sub_0207EFF4: ; 0x0207EFF4
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r3, _0207F004 ; =sub_0207EE3C
	mov r0, #0x11
	lsr r1, r1, #0x10
	mov r2, #0
	bx r3
	nop
_0207F004: .word sub_0207EE3C
	thumb_func_end sub_0207EFF4

	thumb_func_start sub_0207F008
sub_0207F008: ; 0x0207F008
	ldr r3, _0207F014 ; =sub_0207EE3C
	add r1, r0, #0
	mov r0, #0x16
	mov r2, #0
	bx r3
	nop
_0207F014: .word sub_0207EE3C
	thumb_func_end sub_0207F008

	thumb_func_start sub_0207F018
sub_0207F018: ; 0x0207F018
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xf
	mov r1, #0
	add r2, sp, #0
	mov r4, #0
	bl sub_0207EE3C
	cmp r0, #0
	bne _0207F03C
	cmp r5, #0
	beq _0207F03C
	add r1, sp, #0
	ldrh r1, [r1]
	cmp r1, #0
	beq _0207F03A
	mov r4, #1
_0207F03A:
	str r4, [r5]
_0207F03C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207F018

	thumb_func_start sub_0207F040
sub_0207F040: ; 0x0207F040
	push {r4, lr}
	add r4, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207F054
	add r0, r4, #0
	bl sub_0207F058
	pop {r4, pc}
_0207F054:
	mov r0, #2
	pop {r4, pc}
	thumb_func_end sub_0207F040

	thumb_func_start sub_0207F058
sub_0207F058: ; 0x0207F058
	bx pc
	nop
	thumb_func_end sub_0207F058
_0207F05C:
	.byte 0x00, 0xC0, 0x9F, 0xE5
	.byte 0x1C, 0xFF, 0x2F, 0xE1, 0xDD, 0x93, 0x76, 0x02

	thumb_func_start sub_0207F068
sub_0207F068: ; 0x0207F068
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xf
	mov r1, #3
	add r2, sp, #0
	bl sub_0207EE3C
	cmp r0, #0
	bne _0207F0A8
	cmp r5, #0
	beq _0207F092
	add r1, sp, #0
	ldrh r2, [r1]
	mov r1, #8
	tst r1, r2
	beq _0207F08E
	mov r1, #1
	b _0207F090
_0207F08E:
	mov r1, #0
_0207F090:
	str r1, [r5]
_0207F092:
	cmp r4, #0
	beq _0207F0A8
	add r1, sp, #0
	ldrh r2, [r1]
	mov r1, #4
	tst r1, r2
	beq _0207F0A4
	mov r1, #1
	b _0207F0A6
_0207F0A4:
	mov r1, #0
_0207F0A6:
	str r1, [r4]
_0207F0A8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207F068

	thumb_func_start sub_0207F0AC
sub_0207F0AC: ; 0x0207F0AC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #6
	add r2, sp, #0
	bl sub_0207EE3C
	cmp r0, #0
	bne _0207F0D4
	cmp r4, #0
	beq _0207F0D4
	add r1, sp, #0
	ldrh r1, [r1]
	cmp r1, #0
	beq _0207F0D0
	mov r1, #1
	b _0207F0D2
_0207F0D0:
	mov r1, #0
_0207F0D2:
	str r1, [r4]
_0207F0D4:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0207F0AC

	thumb_func_start sub_0207F0D8
sub_0207F0D8: ; 0x0207F0D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #8
	mov r6, #0
_0207F0E0:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _0207F0E0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0207F0D8

	thumb_func_start sub_0207F0F0
sub_0207F0F0: ; 0x0207F0F0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0207F160 ; =0x040001A4
	ldr r6, _0207F164 ; =0x0214E260
	mov r5, #0
_0207F0F8:
	mov r0, #0xc
	add r3, r5, #0
	mul r3, r0
	ldr r1, _0207F168 ; =0x040000B8
	lsl r0, r5, #2
	ldr r2, [r3, r1]
	str r2, [r6, r0]
	mov r0, #0xe
	ldr r2, [r3, r1]
	lsl r0, r0, #0x1a
	and r2, r0
	mov r0, #6
	lsl r0, r0, #0x1a
	cmp r2, r0
	beq _0207F130
	mov r0, #2
	lsl r0, r0, #0x1c
	cmp r2, r0
	beq _0207F130
	mov r7, #0xa
	lsl r7, r7, #0x1a
	cmp r2, r7
	bne _0207F138
	lsl r0, r7, #4
_0207F128:
	ldr r1, [r4]
	tst r1, r0
	bne _0207F128
	b _0207F148
_0207F130:
	add r0, r5, #0
	bl MI_WaitDma
	b _0207F148
_0207F138:
	ldr r1, [r3, r1]
	lsr r0, r0, #4
	tst r0, r1
	bne _0207F142
	b _0207F130
_0207F142:
	add r0, r5, #0
	bl MI_StopDma
_0207F148:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0207F156
	add r0, r5, #0
	bl sub_0207F16C
_0207F156:
	add r5, r5, #1
	cmp r5, #3
	bls _0207F0F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207F160: .word 0x040001A4
_0207F164: .word 0x0214E260
_0207F168: .word 0x040000B8
	thumb_func_end sub_0207F0F0

	thumb_func_start sub_0207F16C
sub_0207F16C: ; 0x0207F16C
	bx pc
	nop
	thumb_func_end sub_0207F16C
_0207F170:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x11, 0x94, 0x76, 0x02

	thumb_func_start sub_0207F17C
sub_0207F17C: ; 0x0207F17C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0207F370 ; =0x0214E240
	str r2, [sp, #4]
	ldr r0, [r0, #0x1c]
	str r1, [sp]
	mov r4, #0
	bl sub_0207F5D4
	ldr r1, _0207F374 ; =0x04000208
	ldrh r0, [r1]
	str r0, [sp, #8]
	strh r4, [r1]
	blx OS_DisableInterrupts
	str r0, [sp, #0x1c]
	sub r0, r4, #1
	bl sub_02079E94
	str r0, [sp, #0x18]
	bl sub_0207BAC0
	mov r1, #8
	cmp r0, #0
	bne _0207F1B2
	add r1, r4, #0
_0207F1B2:
	mov r0, #1
	lsl r0, r0, #0x12
	orr r0, r1
	bl sub_02079E50
	ldr r0, [sp, #0x1c]
	blx OS_RestoreInterrupts
	ldr r1, _0207F374 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	mov r0, #8
	tst r0, r5
	beq _0207F1E4
	bl OS_GetBootType
	ldr r1, _0207F378 ; =0x0000FFFE
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0207F1E4
	mov r0, #8
	bic r5, r0
_0207F1E4:
	mov r0, #0x10
	tst r0, r5
	beq _0207F1FE
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0207F1FA
	bl sub_0208264C
	cmp r0, #0
	bne _0207F1FE
_0207F1FA:
	mov r0, #0x10
	bic r5, r0
_0207F1FE:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _0207F37C ; =0x04001000
	ldr r0, [r0]
	str r0, [sp, #0x10]
	bl sub_0207F4F8
	add r7, sp, #0x24
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, sp, #0x20
	bl sub_0207F068
	cmp r0, #0
	beq _0207F234
	ldr r6, _0207F380 ; =0x00051D23
_0207F222:
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	add r0, r7, #0
	add r1, sp, #0x20
	bl sub_0207F068
	cmp r0, #0
	bne _0207F222
_0207F234:
	mov r0, #2
	mov r1, #0
	bl sub_0207EF0C
	cmp r0, #0
	beq _0207F256
	ldr r6, _0207F380 ; =0x00051D23
	mov r7, #2
_0207F244:
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	add r0, r7, #0
	mov r1, #0
	bl sub_0207EF0C
	cmp r0, #0
	bne _0207F244
_0207F256:
	bl sub_0207EB9C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0207F384 ; =0xFFFCFFFF
	and r0, r1
	str r0, [r2]
	ldr r2, _0207F37C ; =0x04001000
	ldr r0, _0207F388 ; =0xFFFEFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl sub_0207EB9C
	bl sub_0207EB9C
	bl sub_0207F0F0
	ldr r0, _0207F370 ; =0x0214E240
	mov r7, #0
	str r7, [r0, #8]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0207F28A
	mov r7, #0x80
_0207F28A:
	ldr r0, [sp, #0x24]
	mov r6, #0x40
	cmp r0, #0
	bne _0207F294
	mov r6, #0
_0207F294:
	mov r0, #1
	lsl r0, r0, #0x12
	bl sub_02079E50
	add r0, r5, #0
	orr r0, r6
	orr r0, r7
	lsl r0, r0, #0x10
	ldr r2, [sp]
	ldr r1, [sp, #4]
	lsr r0, r0, #0x10
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0207EDB0
	ldr r6, _0207F370 ; =0x0214E240
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0207F2C6
_0207F2BC:
	blx OS_Halt
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0207F2BC
_0207F2C6:
	bl sub_0207BAC0
	mov r1, #8
	cmp r0, #0
	bne _0207F2D2
	mov r1, #0
_0207F2D2:
	mov r0, #1
	lsl r0, r0, #0x12
	orr r0, r1
	bl sub_02079E50
	mov r0, #8
	add r1, r5, #0
	tst r1, r0
	beq _0207F2F0
	ldr r1, _0207F38C ; =0x04000214
	lsl r0, r0, #0x11
	ldr r1, [r1]
	tst r0, r1
	beq _0207F2F0
	mov r4, #1
_0207F2F0:
	cmp r4, #0
	bne _0207F33A
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0207F30E
	mov r5, #1
_0207F2FC:
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	bl sub_0207F390
	cmp r0, #1
	bne _0207F2FC
	b _0207F32C
_0207F30E:
	mov r0, #1
	bl sub_0207EE94
	cmp r0, #0
	beq _0207F32C
	ldr r5, _0207F380 ; =0x00051D23
	mov r6, #1
_0207F31C:
	add r0, r5, #0
	bl OS_SpinWaitSysCycles
	add r0, r6, #0
	bl sub_0207EE94
	cmp r0, #0
	bne _0207F31C
_0207F32C:
	mov r1, #1
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x1a
	str r0, [r1]
	ldr r1, _0207F37C ; =0x04001000
	ldr r0, [sp, #0x10]
	str r0, [r1]
_0207F33A:
	mov r0, #0x36
	lsl r0, r0, #0x10
	bl OS_SpinWaitSysCycles
	ldr r5, _0207F374 ; =0x04000208
	ldrh r0, [r5]
	mov r0, #0
	strh r0, [r5]
	ldr r0, [sp, #0x18]
	bl sub_02079E50
	ldr r0, [sp, #0x1c]
	blx OS_RestoreInterrupts
	ldrh r0, [r5]
	cmp r4, #0
	ldr r0, [sp, #8]
	strh r0, [r5]
	beq _0207F364
	bl sub_0207EF8C
_0207F364:
	ldr r0, _0207F370 ; =0x0214E240
	ldr r0, [r0, #4]
	bl sub_0207F5D4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207F370: .word 0x0214E240
_0207F374: .word 0x04000208
_0207F378: .word 0x0000FFFE
_0207F37C: .word 0x04001000
_0207F380: .word 0x00051D23
_0207F384: .word 0xFFFCFFFF
_0207F388: .word 0xFFFEFFFF
_0207F38C: .word 0x04000214
	thumb_func_end sub_0207F17C

	thumb_func_start sub_0207F390
sub_0207F390: ; 0x0207F390
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0207F42A
	cmp r0, #1
	bne _0207F428
	cmp r2, #0
	bne _0207F3B4
	ldr r0, _0207F4C0 ; =0x02FFFC3C
	ldr r1, [r0]
	ldr r0, _0207F4C4 ; =0x0214E240
	ldr r0, [r0, #0xc]
	sub r0, r1, r0
	cmp r0, #7
	bhi _0207F3B4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207F3B4:
	cmp r5, #0
	beq _0207F400
	cmp r7, #0
	beq _0207F3DA
	add r0, r5, #0
	bl sub_0207EE94
	cmp r0, #0
	beq _0207F400
	ldr r4, _0207F4C8 ; =0x00051D23
_0207F3C8:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	add r0, r5, #0
	bl sub_0207EE94
	cmp r0, #0
	bne _0207F3C8
	b _0207F400
_0207F3DA:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_0207EE5C
	cmp r0, #0
	beq _0207F400
	ldr r4, _0207F4C8 ; =0x00051D23
	mov r6, #0
_0207F3EC:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl sub_0207EE5C
	cmp r0, #0
	bne _0207F3EC
_0207F400:
	ldr r2, _0207F4CC ; =0x04000304
	mov r0, #1
	ldrh r1, [r2]
	ldr r4, _0207F4C4 ; =0x0214E240
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x18]
	bl sub_0207EFD4
	cmp r0, #0
	beq _0207F4BC
	ldr r5, _0207F4C8 ; =0x00051D23
_0207F418:
	add r0, r5, #0
	bl OS_SpinWaitSysCycles
	ldr r0, [r4, #0x18]
	bl sub_0207EFD4
	cmp r0, #0
	bne _0207F418
_0207F428:
	b _0207F4BC
_0207F42A:
	mov r0, #0
	bl sub_0207EFD4
	cmp r0, #0
	beq _0207F448
	ldr r4, _0207F4C8 ; =0x00051D23
	mov r6, #0
_0207F438:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	add r0, r6, #0
	bl sub_0207EFD4
	cmp r0, #0
	bne _0207F438
_0207F448:
	ldr r0, _0207F4C0 ; =0x02FFFC3C
	ldr r1, [r0]
	ldr r0, _0207F4C4 ; =0x0214E240
	ldr r0, [r0, #0x10]
	sub r0, r1, r0
	cmp r0, #2
	bhi _0207F45E
	bl sub_0207EB9C
	bl sub_0207EB9C
_0207F45E:
	ldr r2, _0207F4CC ; =0x04000304
	ldr r0, _0207F4D0 ; =0x0000FFFE
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _0207F4C0 ; =0x02FFFC3C
	cmp r5, #0
	ldr r1, [r0]
	ldr r0, _0207F4C4 ; =0x0214E240
	str r1, [r0, #0xc]
	beq _0207F4BC
	cmp r7, #0
	beq _0207F496
	add r0, r5, #0
	bl sub_0207EE94
	cmp r0, #0
	beq _0207F4BC
	ldr r4, _0207F4C8 ; =0x00051D23
_0207F484:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	add r0, r5, #0
	bl sub_0207EE94
	cmp r0, #0
	bne _0207F484
	b _0207F4BC
_0207F496:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_0207EE5C
	cmp r0, #0
	beq _0207F4BC
	ldr r4, _0207F4C8 ; =0x00051D23
	mov r6, #0
_0207F4A8:
	add r0, r4, #0
	bl OS_SpinWaitSysCycles
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl sub_0207EE5C
	cmp r0, #0
	bne _0207F4A8
_0207F4BC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207F4C0: .word 0x02FFFC3C
_0207F4C4: .word 0x0214E240
_0207F4C8: .word 0x00051D23
_0207F4CC: .word 0x04000304
_0207F4D0: .word 0x0000FFFE
	thumb_func_end sub_0207F390

	thumb_func_start sub_0207F4D4
sub_0207F4D4: ; 0x0207F4D4
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #1
	beq _0207F4EA
	mov r4, #0
	bl GX_IsDispOn
	cmp r0, #0
	beq _0207F4EA
	bl GX_DispOff
_0207F4EA:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_0207F390
	pop {r4, pc}
	thumb_func_end sub_0207F4D4

	thumb_func_start sub_0207F4F8
sub_0207F4F8: ; 0x0207F4F8
	ldr r0, _0207F508 ; =0x04000304
	ldrh r1, [r0]
	mov r0, #1
	tst r1, r0
	bne _0207F504
	mov r0, #0
_0207F504:
	bx lr
	nop
_0207F508: .word 0x04000304
	thumb_func_end sub_0207F4F8

	thumb_func_start sub_0207F50C
sub_0207F50C: ; 0x0207F50C
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r3, _0207F51C ; =sub_0207EE3C
	mov r0, #0x12
	lsr r1, r1, #0x10
	mov r2, #0
	bx r3
	nop
_0207F51C: .word sub_0207EE3C
	thumb_func_end sub_0207F50C

	thumb_func_start sub_0207F520
sub_0207F520: ; 0x0207F520
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #8
	add r2, sp, #0
	bl sub_0207EE3C
	cmp r0, #0
	bne _0207F53E
	cmp r4, #0
	beq _0207F53E
	add r1, sp, #0
	ldrh r1, [r1]
	str r1, [r4]
_0207F53E:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_0207F520

	thumb_func_start sub_0207F544
sub_0207F544: ; 0x0207F544
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r7, #0
	beq _0207F598
	str r5, [r6, #8]
	blx OS_DisableInterrupts
	add r3, r0, #0
	ldr r0, [r7]
	mov r1, #0
	cmp r0, #0
	beq _0207F57E
_0207F562:
	cmp r4, #0
	bne _0207F56C
	ldr r2, [r0, #8]
	cmp r2, r5
	bgt _0207F57E
_0207F56C:
	cmp r4, #1
	bne _0207F576
	ldr r2, [r0, #8]
	cmp r2, r5
	bge _0207F57E
_0207F576:
	add r1, r0, #0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0207F562
_0207F57E:
	cmp r0, #0
	beq _0207F584
	b _0207F586
_0207F584:
	mov r0, #0
_0207F586:
	str r0, [r6, #0xc]
	cmp r1, #0
	beq _0207F590
	str r6, [r1, #0xc]
	b _0207F592
_0207F590:
	str r6, [r7]
_0207F592:
	add r0, r3, #0
	blx OS_RestoreInterrupts
_0207F598:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0207F544

	thumb_func_start sub_0207F59C
sub_0207F59C: ; 0x0207F59C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _0207F5D0
	blx OS_DisableInterrupts
	ldr r1, [r5]
	add r2, r1, #0
	cmp r1, #0
	beq _0207F5CC
_0207F5B2:
	cmp r1, r4
	bne _0207F5C4
	cmp r1, r2
	ldr r1, [r1, #0xc]
	bne _0207F5C0
	str r1, [r5]
	b _0207F5CC
_0207F5C0:
	str r1, [r2, #0xc]
	b _0207F5CC
_0207F5C4:
	add r2, r1, #0
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _0207F5B2
_0207F5CC:
	blx OS_RestoreInterrupts
_0207F5D0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0207F59C

	thumb_func_start sub_0207F5D4
sub_0207F5D4: ; 0x0207F5D4
	push {r4, lr}
	add r4, r0, #0
	beq _0207F5E6
_0207F5DA:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	blx r1
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _0207F5DA
_0207F5E6:
	pop {r4, pc}
	thumb_func_end sub_0207F5D4

	thumb_func_start sub_0207F5E8
sub_0207F5E8: ; 0x0207F5E8
	push {r3, lr}
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, _0207F5FC ; =0x0214E25C
	mvn r2, r2
	mov r3, #1
	bl sub_0207F544
	pop {r3, pc}
	nop
_0207F5FC: .word 0x0214E25C
	thumb_func_end sub_0207F5E8

	thumb_func_start sub_0207F600
sub_0207F600: ; 0x0207F600
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0207F610 ; =0x0214E244
	mov r2, #0xff
	mov r3, #0
	bl sub_0207F544
	pop {r3, pc}
	.align 2, 0
_0207F610: .word 0x0214E244
	thumb_func_end sub_0207F600

	thumb_func_start sub_0207F614
sub_0207F614: ; 0x0207F614
	push {r3, lr}
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, _0207F628 ; =0x0214E25C
	mov r3, #0
	bl sub_0207F544
	pop {r3, pc}
	nop
_0207F628: .word 0x0214E25C
	thumb_func_end sub_0207F614

	thumb_func_start sub_0207F62C
sub_0207F62C: ; 0x0207F62C
	add r1, r0, #0
	ldr r0, _0207F634 ; =0x0214E25C
	ldr r3, _0207F638 ; =sub_0207F59C
	bx r3
	.align 2, 0
_0207F634: .word 0x0214E25C
_0207F638: .word sub_0207F59C
	thumb_func_end sub_0207F62C

	thumb_func_start sub_0207F63C
sub_0207F63C: ; 0x0207F63C
	add r1, r0, #0
	ldr r0, _0207F644 ; =0x0214E244
	ldr r3, _0207F648 ; =sub_0207F59C
	bx r3
	.align 2, 0
_0207F644: .word 0x0214E244
_0207F648: .word sub_0207F59C
	thumb_func_end sub_0207F63C

	thumb_func_start sub_0207F64C
sub_0207F64C: ; 0x0207F64C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x36
	lsl r0, r0, #0x10
	bl OS_SpinWaitSysCycles
	ldr r0, _0207F6B0 ; =0x0209B78C
	mov r1, #0xe
	ldr r7, [r0]
	str r1, [r0]
	bl sub_0207F4F8
	cmp r0, #1
	beq _0207F6A8
	mov r0, #2
	mov r1, #0
	bl sub_0207EF0C
	cmp r0, #0
	beq _0207F68A
	ldr r5, _0207F6B4 ; =0x00051D23
	mov r4, #2
	mov r6, #0
_0207F678:
	add r0, r5, #0
	bl OS_SpinWaitSysCycles
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0207EF0C
	cmp r0, #0
	bne _0207F678
_0207F68A:
	mov r0, #1
	bl sub_0207F4D4
	cmp r0, #0
	bne _0207F6A8
	mov r5, #5
	mov r4, #1
_0207F698:
	add r0, r5, #0
	bl OS_SpinWaitSysCycles
	add r0, r4, #0
	bl sub_0207F4D4
	cmp r0, #0
	beq _0207F698
_0207F6A8:
	ldr r0, _0207F6B0 ; =0x0209B78C
	str r7, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207F6B0: .word 0x0209B78C
_0207F6B4: .word 0x00051D23
	thumb_func_end sub_0207F64C

	thumb_func_start sub_0207F6B8
sub_0207F6B8: ; 0x0207F6B8
	ldr r0, _0207F6C4 ; =0x02FFFC3C
	ldr r1, [r0]
	ldr r0, _0207F6C8 ; =0x0214E240
	str r1, [r0, #0x10]
	bx lr
	nop
_0207F6C4: .word 0x02FFFC3C
_0207F6C8: .word 0x0214E240
	thumb_func_end sub_0207F6B8

	thumb_func_start sub_0207F6CC
sub_0207F6CC: ; 0x0207F6CC
	push {r3, lr}
	ldr r1, _0207F6E0 ; =0x0207F711
	mov r0, #0x17
	bl PXI_SetFifoRecvCallback
	ldr r0, _0207F6E4 ; =0x0214E280
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	nop
_0207F6E0: .word 0x0207F711
_0207F6E4: .word 0x0214E280
	thumb_func_end sub_0207F6CC

	thumb_func_start sub_0207F6E8
sub_0207F6E8: ; 0x0207F6E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0207F70C ; =0x04004004
	ldrh r1, [r0]
	mov r0, #1
	and r0, r1
	cmp r5, r0
	beq _0207F704
	add r0, r5, #0
	blx sub_01FF936C
_0207F704:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	.align 2, 0
_0207F70C: .word 0x04004004
	thumb_func_end sub_0207F6E8
_0207F710:
	.byte 0x70, 0xB5, 0x82, 0xB0, 0x0F, 0x20, 0x00, 0x04, 0x08, 0x40, 0x00, 0x0C, 0x3F, 0x22, 0x00, 0x04
	.byte 0x05, 0x0C, 0x08, 0x04, 0x12, 0x05, 0x11, 0x40, 0x09, 0x0D, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x0C
	.byte 0x01, 0x29, 0x02, 0xD0, 0x02, 0x29, 0x1E, 0xD0, 0x2E, 0xE0, 0x00, 0x21, 0x2A, 0x01, 0x00, 0x26
	.byte 0x0D, 0xF0, 0x74, 0xEF, 0x16, 0x4C, 0x62, 0x68, 0xA3, 0x68, 0x10, 0x43, 0x19, 0x43, 0x60, 0x60
	.byte 0xA1, 0x60, 0x01, 0x23, 0xE2, 0x68, 0xAB, 0x40, 0x1A, 0x43, 0xE2, 0x60, 0x0F, 0x2A, 0x1D, 0xD1
	.byte 0x23, 0x69, 0x00, 0x2B, 0x02, 0xD0, 0x62, 0x69, 0x98, 0x47, 0x26, 0x61, 0x0C, 0x48, 0x00, 0x21
	.byte 0x01, 0x60, 0x02, 0xB0, 0x70, 0xBD, 0x00, 0xA9, 0x09, 0x4C, 0x08, 0x80, 0x23, 0x69, 0x00, 0x2B
	.byte 0x05, 0xD0, 0x00, 0x98, 0x01, 0x99, 0x62, 0x69, 0x98, 0x47, 0x00, 0x20, 0x20, 0x61, 0x04, 0x48
	.byte 0x00, 0x21, 0x01, 0x60, 0x02, 0xB0, 0x70, 0xBD, 0xFC, 0xF7, 0xEC, 0xFF, 0x02, 0xB0, 0x70, 0xBD
	.byte 0x80, 0xE2, 0x14, 0x02, 0x30, 0xB4, 0x00, 0x23, 0xCB, 0x56, 0x02, 0x1C, 0x00, 0x2B, 0x08, 0xD0
	.byte 0x00, 0x23, 0x00, 0x24, 0xCD, 0x56, 0x49, 0x1C, 0x05, 0x70, 0x0D, 0x57, 0x40, 0x1C, 0x00, 0x2D
	.byte 0xF8, 0xD1, 0x00, 0x21, 0x01, 0x70, 0x10, 0x1C, 0x30, 0xBC, 0x70, 0x47

	thumb_func_start sub_0207F7CC
sub_0207F7CC: ; 0x0207F7CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r3, #3
	add r1, r0, #0
	and r1, r3
	mov ip, r2
	and r3, r6
	add r2, r6, #0
	mov r4, #0
	eor r3, r1
	bne _0207F82C
	cmp r1, #0
	beq _0207F808
	mov r3, ip
	sub r5, r3, #1
	add r7, r4, #0
	b _0207F7FE
_0207F7EE:
	mov r3, #0
	ldrsb r3, [r2, r3]
	strb r3, [r0, r4]
	ldrsb r3, [r2, r7]
	cmp r3, #0
	beq _0207F84A
	add r2, r2, #1
	add r4, r4, #1
_0207F7FE:
	add r3, r4, r1
	cmp r3, #4
	bhs _0207F808
	cmp r4, r5
	blt _0207F7EE
_0207F808:
	mov r1, ip
	sub r2, r1, #4
	cmp r4, r2
	bge _0207F82A
	ldr r3, _0207F870 ; =0x7F7F7F7F
_0207F812:
	ldr r1, [r6, r4]
	add r5, r1, #0
	and r5, r3
	add r5, r5, r3
	orr r5, r1
	orr r5, r3
	mvn r5, r5
	bne _0207F82A
	str r1, [r0, r4]
	add r4, r4, #4
	cmp r4, r2
	blt _0207F812
_0207F82A:
	add r2, r6, r4
_0207F82C:
	mov r1, ip
	sub r1, r1, #1
	cmp r4, r1
	bge _0207F84A
	mov r6, #0
	mov r3, #0
_0207F838:
	ldrsb r5, [r2, r6]
	strb r5, [r0, r4]
	ldrsb r5, [r2, r3]
	cmp r5, #0
	beq _0207F84A
	add r4, r4, #1
	add r2, r2, #1
	cmp r4, r1
	blt _0207F838
_0207F84A:
	mov r1, ip
	sub r1, r1, #1
	cmp r4, r1
	blt _0207F85C
	mov r1, ip
	cmp r1, #0
	ble _0207F85C
	mov r1, #0
	strb r1, [r0, r4]
_0207F85C:
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0207F86C
	add r0, r2, #0
	bl sub_0207F8AC
	add r4, r4, r0
_0207F86C:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207F870: .word 0x7F7F7F7F
	thumb_func_end sub_0207F7CC
_0207F874:
	.byte 0xF0, 0xB4, 0x00, 0x22, 0x83, 0x56, 0x00, 0x2B, 0x13, 0xD0, 0x14, 0x1C
	.byte 0x25, 0x1C, 0x86, 0x18, 0x00, 0xE0, 0x6D, 0x1C, 0x4F, 0x57, 0x00, 0x2F, 0x02, 0xD0, 0x73, 0x57
	.byte 0xBB, 0x42, 0xF8, 0xD0, 0x00, 0x2F, 0x02, 0xD1, 0x80, 0x18, 0xF0, 0xBC, 0x70, 0x47, 0x52, 0x1C
	.byte 0x83, 0x56, 0x00, 0x2B, 0xEC, 0xD1, 0x00, 0x20, 0xF0, 0xBC, 0x70, 0x47

	thumb_func_start sub_0207F8AC
sub_0207F8AC: ; 0x0207F8AC
	push {r4, r5}
	mov r2, #3
	mov r1, #0
	tst r2, r0
	beq _0207F8CC
	mov r2, #3
_0207F8B8:
	ldrsb r3, [r0, r1]
	cmp r3, #0
	bne _0207F8C4
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_0207F8C4:
	add r1, r1, #1
	add r3, r0, r1
	tst r3, r2
	bne _0207F8B8
_0207F8CC:
	ldr r3, _0207F8FC ; =0x7F7F7F7F
	add r2, r0, r1
_0207F8D0:
	ldr r5, [r2]
	add r4, r5, #0
	and r4, r3
	add r4, r4, r3
	orr r4, r5
	orr r4, r3
	mvn r4, r4
	bne _0207F8E6
	add r2, r2, #4
	add r1, r1, #4
	b _0207F8D0
_0207F8E6:
	ldrsb r2, [r0, r1]
	cmp r2, #0
	beq _0207F8F4
_0207F8EC:
	add r1, r1, #1
	ldrsb r2, [r0, r1]
	cmp r2, #0
	bne _0207F8EC
_0207F8F4:
	add r0, r1, #0
	pop {r4, r5}
	bx lr
	nop
_0207F8FC: .word 0x7F7F7F7F
	thumb_func_end sub_0207F8AC
_0207F900:
	.byte 0xF0, 0xB4, 0x00, 0x24, 0x03, 0x22, 0x06, 0xE0, 0x03, 0x57, 0x00, 0x2B, 0x02, 0xD1, 0x20, 0x1C
	.byte 0xF0, 0xBC, 0x70, 0x47, 0x64, 0x1C, 0x05, 0x19, 0x2B, 0x1C, 0x13, 0x42, 0x01, 0xD0, 0x8C, 0x42
	.byte 0xF2, 0xDB, 0x0B, 0x1F, 0x9C, 0x42, 0x0E, 0xDA, 0x0B, 0x4E, 0x2A, 0x68, 0x17, 0x1C, 0x37, 0x40
	.byte 0xBF, 0x19, 0x3A, 0x43, 0x32, 0x43, 0xD2, 0x43, 0x05, 0xD1, 0x24, 0x1D, 0x2D, 0x1D, 0x9C, 0x42
	.byte 0xF3, 0xDB, 0x00, 0xE0, 0x64, 0x1C, 0x02, 0x57, 0x00, 0x2A, 0x01, 0xD0, 0x8C, 0x42, 0xF9, 0xDB
	.byte 0x20, 0x1C, 0xF0, 0xBC, 0x70, 0x47, 0xC0, 0x46, 0x7F, 0x7F, 0x7F, 0x7F

	thumb_func_start sub_0207F95C
sub_0207F95C: ; 0x0207F95C
	push {r4, r5}
	mov r3, #3
	add r4, r0, #0
	and r4, r3
	and r3, r1
	mov r2, #0
	eor r3, r4
	bne _0207F9AA
	cmp r4, #0
	beq _0207F98E
	cmp r4, #4
	bhs _0207F98E
_0207F974:
	ldrb r3, [r0, r2]
	ldrb r5, [r1, r2]
	cmp r3, r5
	bne _0207F980
	cmp r3, #0
	bne _0207F986
_0207F980:
	sub r0, r3, r5
	pop {r4, r5}
	bx lr
_0207F986:
	add r2, r2, #1
	add r3, r2, r4
	cmp r3, #4
	blo _0207F974
_0207F98E:
	ldr r3, _0207F9C4 ; =0x7F7F7F7F
_0207F990:
	ldr r5, [r0, r2]
	ldr r4, [r1, r2]
	cmp r5, r4
	bne _0207F9AA
	add r4, r5, #0
	and r4, r3
	add r4, r4, r3
	orr r4, r5
	orr r4, r3
	mvn r4, r4
	bne _0207F9AA
	add r2, r2, #4
	b _0207F990
_0207F9AA:
	ldrb r3, [r0, r2]
	ldrb r4, [r1, r2]
	cmp r3, r4
	bne _0207F9B6
	cmp r3, #0
	bne _0207F9BC
_0207F9B6:
	sub r0, r3, r4
	pop {r4, r5}
	bx lr
_0207F9BC:
	add r2, r2, #1
	b _0207F9AA
_0207F9C0:
	.byte 0x30, 0xBC, 0x70, 0x47
_0207F9C4: .word 0x7F7F7F7F
	thumb_func_end sub_0207F95C

	thumb_func_start sub_0207F9C8
sub_0207F9C8: ; 0x0207F9C8
	push {r4, r5, r6, r7}
	cmp r2, #0
	beq _0207FA40
	mov r4, #3
	add r3, r0, #0
	and r3, r4
	and r4, r1
	mov r5, #0
	eor r4, r3
	bne _0207FA24
	cmp r3, #0
	beq _0207FA00
	b _0207F9F6
_0207F9E2:
	ldrb r4, [r0, r5]
	ldrb r6, [r1, r5]
	cmp r4, r6
	bne _0207F9EE
	cmp r4, #0
	bne _0207F9F4
_0207F9EE:
	sub r0, r4, r6
	pop {r4, r5, r6, r7}
	bx lr
_0207F9F4:
	add r5, r5, #1
_0207F9F6:
	add r4, r5, r3
	cmp r4, #4
	bhs _0207FA00
	cmp r5, r2
	blt _0207F9E2
_0207FA00:
	sub r4, r2, #4
	cmp r5, r4
	bgt _0207FA24
	ldr r6, _0207FA48 ; =0x7F7F7F7F
_0207FA08:
	ldr r3, [r0, r5]
	ldr r7, [r1, r5]
	cmp r3, r7
	bne _0207FA24
	add r7, r3, #0
	and r7, r6
	add r7, r7, r6
	orr r3, r7
	orr r3, r6
	mvn r3, r3
	bne _0207FA24
	add r5, r5, #4
	cmp r5, r4
	ble _0207FA08
_0207FA24:
	cmp r5, r2
	bge _0207FA40
_0207FA28:
	ldrb r3, [r0, r5]
	ldrb r4, [r1, r5]
	cmp r3, r4
	bne _0207FA34
	cmp r3, #0
	bne _0207FA3A
_0207FA34:
	sub r0, r3, r4
	pop {r4, r5, r6, r7}
	bx lr
_0207FA3A:
	add r5, r5, #1
	cmp r5, r2
	blt _0207FA28
_0207FA40:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0207FA48: .word 0x7F7F7F7F
	thumb_func_end sub_0207F9C8

	thumb_func_start sub_0207FA4C
sub_0207FA4C: ; 0x0207FA4C
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #0xc
	mov r2, #3
	bic r3, r2
	ldr r1, [sp, #0xc]
	add r2, r3, #4
	bl sub_0207FAC0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_0207FA4C

	thumb_func_start sub_0207FA68
sub_0207FA68: ; 0x0207FA68
	sub r0, #9
	mov r3, #0
	cmp r0, #0x17
	bhi _0207FA7E
	mov r2, #1
	lsl r2, r0
	ldr r0, _0207FA84 ; =0x0080001F
	mov r1, #1
	tst r0, r2
	beq _0207FA7E
	add r3, r1, #0
_0207FA7E:
	add r0, r3, #0
	bx lr
	nop
_0207FA84: .word 0x0080001F
	thumb_func_end sub_0207FA68

	thumb_func_start sub_0207FA88
sub_0207FA88: ; 0x0207FA88
	push {r4, r5, r6, r7}
	cmp r1, r2
	bhs _0207FABC
	mov r3, #0x1f
	mov r4, #1
	and r3, r2
	lsl r4, r3
	sub r6, r4, #1
	mov r4, #0
	mvn r4, r4
_0207FA9C:
	mov r5, #0x1f
	lsr r3, r1, #5
	and r1, r5
	add r5, r4, #0
	lsl r5, r1
	add r1, r3, #1
	lsl r1, r1, #5
	cmp r1, r2
	bls _0207FAB0
	and r5, r6
_0207FAB0:
	lsl r3, r3, #2
	ldr r7, [r0, r3]
	orr r5, r7
	str r5, [r0, r3]
	cmp r1, r2
	blo _0207FA9C
_0207FABC:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0207FA88

	thumb_func_start sub_0207FAC0
sub_0207FAC0: ; 0x0207FAC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r6, r1, #0
	ldrsb r5, [r6, r0]
	str r2, [sp]
	str r4, [sp, #0x3c]
	cmp r5, #0
	bne _0207FADE
	b _02080054
_0207FADE:
	add r0, r5, #0
	bl sub_0207FA68
	cmp r0, #0
	beq _0207FB1E
	mov r0, #0
	ldrsb r0, [r6, r0]
	bl sub_0207FA68
	cmp r0, #0
	beq _0207FB02
	mov r5, #0
_0207FAF6:
	add r6, r6, #1
	ldrsb r0, [r6, r5]
	bl sub_0207FA68
	cmp r0, #0
	bne _0207FAF6
_0207FB02:
	mov r0, #0
	ldrsb r0, [r4, r0]
	bl sub_0207FA68
	cmp r0, #0
	beq _0207FB1C
	mov r5, #0
_0207FB10:
	add r4, r4, #1
	ldrsb r0, [r4, r5]
	bl sub_0207FA68
	cmp r0, #0
	bne _0207FB10
_0207FB1C:
	b _0208004A
_0207FB1E:
	cmp r5, #0x25
	beq _0207FB46
	mov r1, #0
	ldrsb r0, [r4, r1]
	cmp r5, r0
	bne _0207FBE4
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	mov r0, #0x20
	eor r0, r2
	sub r0, #0xa1
	cmp r0, #0x3c
	bhs _0207FB40
	add r4, r4, #1
	ldrsb r0, [r4, r1]
	cmp r5, r0
	bne _0207FBE4
_0207FB40:
	add r4, r4, #1
	add r6, r6, #1
	b _0208004A
_0207FB46:
	mov r0, #1
	ldrsb r1, [r6, r0]
	cmp r1, #0x25
	bne _0207FB5A
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r5, r0
	bne _0207FBE4
	add r6, r6, #2
	b _0208004A
_0207FB5A:
	mov r1, #0
	str r1, [sp, #0x30]
	mov r1, #0
	str r1, [sp, #0x34]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	add r6, r6, #1
	ldrsb r2, [r6, r1]
	mov r5, #0
	cmp r2, #0x2a
	bne _0207FB7E
	lsl r1, r0, #0xd
	ldr r0, [sp, #0x30]
	add r6, r6, #1
	orr r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldrsb r2, [r6, r0]
_0207FB7E:
	mov r3, #0xa
	mov r0, #0
	b _0207FB90
_0207FB84:
	add r1, r5, #0
	mul r1, r3
	add r5, r2, r1
	add r6, r6, #1
	ldrsb r2, [r6, r0]
	sub r5, #0x30
_0207FB90:
	cmp r2, #0x30
	blt _0207FB98
	cmp r2, #0x39
	ble _0207FB84
_0207FB98:
	cmp r2, #0x68
	beq _0207FBA2
	cmp r2, #0x6c
	beq _0207FBBC
	b _0207FBD6
_0207FBA2:
	add r6, r6, #1
	mov r0, #0
	ldrsb r2, [r6, r0]
	cmp r2, #0x68
	beq _0207FBB6
	mov r1, #0x40
_0207FBAE:
	ldr r0, [sp, #0x2c]
	orr r0, r1
	str r0, [sp, #0x2c]
	b _0207FBD6
_0207FBB6:
	mov r2, #1
	lsl r2, r2, #8
	b _0207FBCC
_0207FBBC:
	add r6, r6, #1
	mov r0, #0
	ldrsb r2, [r6, r0]
	cmp r2, #0x6c
	beq _0207FBCA
	mov r1, #0x20
	b _0207FBAE
_0207FBCA:
	mov r2, #0x80
_0207FBCC:
	ldr r1, [sp, #0x2c]
	add r6, r6, #1
	orr r1, r2
	ldrsb r2, [r6, r0]
	str r1, [sp, #0x2c]
_0207FBD6:
	cmp r2, #0x69
	bgt _0207FC00
	cmp r2, #0x64
	blt _0207FBE6
	beq _0207FC32
	cmp r2, #0x69
	beq _0207FC38
_0207FBE4:
	b _02080054
_0207FBE6:
	cmp r2, #0x5b
	bgt _0207FBF8
	cmp r2, #0x58
	blt _0207FBF6
	beq _0207FC52
	cmp r2, #0x5b
	bne _0207FBF6
	b _0207FEB4
_0207FBF6:
	b _02080054
_0207FBF8:
	cmp r2, #0x63
	bne _0207FBFE
	b _0207FDF4
_0207FBFE:
	b _02080054
_0207FC00:
	cmp r2, #0x6e
	bgt _0207FC08
	beq _0207FC5A
	b _02080054
_0207FC08:
	add r0, r2, #0
	sub r0, #0x6f
	cmp r0, #9
	bls _0207FC12
	b _02080054
_0207FC12:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207FC1E: ; jump table
	.short _0207FC3E - _0207FC1E - 2 ; case 0
	.short _0207FC52 - _0207FC1E - 2 ; case 1
	.short _02080054 - _0207FC1E - 2 ; case 2
	.short _02080054 - _0207FC1E - 2 ; case 3
	.short _0207FDF4 - _0207FC1E - 2 ; case 4
	.short _02080054 - _0207FC1E - 2 ; case 5
	.short _0207FC42 - _0207FC1E - 2 ; case 6
	.short _02080054 - _0207FC1E - 2 ; case 7
	.short _02080054 - _0207FC1E - 2 ; case 8
	.short _0207FC52 - _0207FC1E - 2 ; case 9
_0207FC32:
	mov r0, #0xa
_0207FC34:
	str r0, [sp, #0x10]
	b _0207FC78
_0207FC38:
	mov r0, #0
	mvn r0, r0
	b _0207FC34
_0207FC3E:
	mov r0, #8
	b _0207FC34
_0207FC42:
	mov r0, #0xa
	mov r1, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #0xc
_0207FC4A:
	ldr r0, [sp, #0x2c]
	orr r0, r1
	str r0, [sp, #0x2c]
	b _0207FC78
_0207FC52:
	mov r0, #0x10
	str r0, [sp, #0x10]
	lsl r1, r0, #8
	b _0207FC4A
_0207FC5A:
	mov r1, #2
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	tst r0, r1
	bne _0207FC6A
	ldr r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #4]
_0207FC6A:
	ldr r0, [sp, #0x3c]
	add r6, r6, #1
	sub r0, r4, r0
	str r0, [sp, #0x30]
	asr r0, r0, #0x1f
	str r0, [sp, #0x34]
	b _0207FD86
_0207FC78:
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r6, r6, #1
	str r0, [sp, #8]
	bl sub_0207FA68
	cmp r0, #0
	beq _0207FC98
	mov r7, #0
_0207FC8A:
	add r4, r4, #1
	ldrsb r0, [r4, r7]
	str r0, [sp, #8]
	bl sub_0207FA68
	cmp r0, #0
	bne _0207FC8A
_0207FC98:
	mov r0, #8
	mov r1, #2
	mov r3, #0
_0207FC9E:
	ldr r2, [sp, #8]
	cmp r2, #0x2b
	bne _0207FCAA
	ldr r2, [sp, #0x2c]
	orr r2, r1
	b _0207FCB2
_0207FCAA:
	cmp r2, #0x2d
	bne _0207FCBC
	ldr r2, [sp, #0x2c]
	orr r2, r0
_0207FCB2:
	str r2, [sp, #0x2c]
	add r4, r4, #1
	ldrsb r2, [r4, r3]
	str r2, [sp, #8]
	b _0207FC9E
_0207FCBC:
	mov r1, #0
	ldr r0, [sp, #0x10]
	mvn r1, r1
	cmp r0, r1
	bne _0207FCE4
	add r0, r2, #0
	cmp r0, #0x30
	beq _0207FCD0
	mov r0, #0xa
	b _0207FCE2
_0207FCD0:
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0x78
	beq _0207FCDC
	cmp r0, #0x58
	bne _0207FCE0
_0207FCDC:
	mov r0, #0x10
	b _0207FCE2
_0207FCE0:
	mov r0, #8
_0207FCE2:
	str r0, [sp, #0x10]
_0207FCE4:
	ldr r0, [sp, #0x10]
	cmp r0, #0x10
	bne _0207FD04
	ldr r0, [sp, #8]
	cmp r0, #0x30
	bne _0207FD04
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0x78
	beq _0207FCFC
	cmp r0, #0x58
	bne _0207FD04
_0207FCFC:
	add r4, r4, #2
	mov r0, #0
	ldrsb r0, [r4, r0]
	str r0, [sp, #8]
_0207FD04:
	cmp r5, #0
	bne _0207FD0A
	ldr r5, _0207FFD4 ; =0x7FFFFFFF
_0207FD0A:
	mov r0, #0
	str r0, [sp, #0x28]
	cmp r5, #0
	ble _0207FD64
	ldr r0, [sp, #0x10]
	asr r0, r0, #0x1f
	str r0, [sp, #0x14]
_0207FD18:
	ldr r7, [sp, #8]
	sub r7, #0x30
	cmp r7, #0xa
	blo _0207FD34
	add r0, r7, #0
	sub r0, #0x31
	cmp r0, #6
	bhs _0207FD2C
	sub r7, #0x27
	b _0207FD34
_0207FD2C:
	sub r7, #0x11
	cmp r7, #6
	bhs _0207FD34
	add r7, #0xa
_0207FD34:
	ldr r0, [sp, #0x10]
	cmp r7, r0
	bhs _0207FD64
	add r4, r4, #1
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	blx sub_0208D60C
	add r0, r7, r0
	str r0, [sp, #0x30]
	ldr r0, _0207FFD8 ; =0x00000000
	str r0, [sp, #0x34]
	adc r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r5
	blt _0207FD18
_0207FD64:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0207FD6C
	b _02080054
_0207FD6C:
	ldr r0, [sp, #0x2c]
	mov r1, #8
	tst r0, r1
	beq _0207FD82
	ldr r0, [sp, #0x30]
	mov r1, #0
	sub r0, r1, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	sbc r1, r0
	str r1, [sp, #0x34]
_0207FD82:
	mov r0, #1
	str r0, [sp, #0x38]
_0207FD86:
	mov r1, #2
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	tst r0, r1
	beq _0207FD92
	b _0208004A
_0207FD92:
	ldr r0, [sp, #4]
	lsr r1, r1, #5
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	tst r0, r1
	beq _0207FDB0
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	sub r0, r0, #4
	ldr r1, [r0]
	ldr r0, [sp, #0x30]
	strb r0, [r1]
	b _0208004A
_0207FDB0:
	ldr r0, [sp, #0x2c]
	mov r1, #0x40
	tst r0, r1
	beq _0207FDC8
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	sub r0, r0, #4
	ldr r1, [r0]
	ldr r0, [sp, #0x30]
	strh r0, [r1]
	b _0208004A
_0207FDC8:
	ldr r0, [sp, #0x2c]
	mov r1, #0x80
	tst r0, r1
	beq _0207FDE4
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	sub r0, r0, #4
	ldr r1, [r0]
	ldr r0, [sp, #0x30]
	str r0, [r1]
	ldr r0, [sp, #0x34]
	str r0, [r1, #4]
	b _0208004A
_0207FDE4:
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	sub r0, r0, #4
	ldr r1, [r0]
	ldr r0, [sp, #0x30]
	str r0, [r1]
	b _0208004A
_0207FDF4:
	mov r0, #0
	str r0, [sp, #0x24]
	mov r1, #2
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	mov r7, #0
	add r6, r6, #1
	tst r0, r1
	bne _0207FE12
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	sub r0, r0, #4
	ldr r7, [r0]
	str r7, [sp, #0x24]
_0207FE12:
	cmp r2, #0x73
	bne _0207FE78
	cmp r5, #0
	bne _0207FE1C
	ldr r5, _0207FFD4 ; =0x7FFFFFFF
_0207FE1C:
	mov r0, #0
	ldrsb r0, [r4, r0]
	str r0, [sp, #0xc]
	bl sub_0207FA68
	cmp r0, #0
	beq _0207FE50
_0207FE2A:
	add r4, r4, #1
	mov r0, #0
	ldrsb r0, [r4, r0]
	str r0, [sp, #0xc]
	bl sub_0207FA68
	cmp r0, #0
	bne _0207FE2A
	b _0207FE50
_0207FE3C:
	cmp r7, #0
	beq _0207FE46
	ldr r0, [sp, #0xc]
	strb r0, [r7]
	add r7, r7, #1
_0207FE46:
	add r4, r4, #1
	mov r0, #0
	ldrsb r0, [r4, r0]
	sub r5, r5, #1
	str r0, [sp, #0xc]
_0207FE50:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0207FE62
	bl sub_0207FA68
	cmp r0, #0
	bne _0207FE62
	cmp r5, #0
	bgt _0207FE3C
_0207FE62:
	ldr r0, [sp, #0x24]
	cmp r7, r0
	beq _0207FEAC
	mov r0, #0
	strb r0, [r7]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #0x38]
	b _0208004A
_0207FE78:
	cmp r5, #0
	bne _0207FE7E
	mov r5, #1
_0207FE7E:
	mov r0, #0
	b _0207FE8E
_0207FE82:
	cmp r7, #0
	beq _0207FE8A
	strb r1, [r7]
	add r7, r7, #1
_0207FE8A:
	sub r5, r5, #1
	add r4, r4, #1
_0207FE8E:
	ldrsb r1, [r4, r0]
	cmp r1, #0
	beq _0207FE98
	cmp r5, #0
	bgt _0207FE82
_0207FE98:
	ldr r0, [sp, #0x24]
	cmp r7, r0
	beq _0207FEAC
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #0x38]
	cmp r5, #0
	bgt _0207FEAE
_0207FEAC:
	b _0208004A
_0207FEAE:
	mov r0, #0
	strb r0, [r7]
	b _0208004A
_0207FEB4:
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0
	add r1, sp, #0x44
	mov r2, #0x20
	add r6, r6, #1
	mov r7, #0
	str r0, [sp, #0x1c]
	blx MIi_CpuClear32
	ldr r0, [sp, #0x18]
	ldrsb r0, [r6, r0]
	cmp r0, #0x5e
	bne _0207FEDA
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	str r0, [sp, #0x20]
_0207FEDA:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0x5d
	bne _0207FF00
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsr r0, r1, #5
	lsl r3, r0, #2
	add r0, sp, #0x44
	ldr r2, [r0, r3]
	mov r0, #0x1f
	and r1, r0
	mov r0, #1
	lsl r0, r1
	add r1, r2, #0
	orr r1, r0
	add r0, sp, #0x44
	str r1, [r0, r3]
_0207FEFE:
	add r6, r6, #1
_0207FF00:
	mov r0, #0
	ldrsb r1, [r6, r0]
	cmp r1, #0
	beq _0207FF0C
	cmp r1, #0x5d
	bne _0207FF42
_0207FF0C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0207FF36
	lsr r0, r7, #5
	lsl r0, r0, #2
	add r1, sp, #0x44
	ldr r3, [r1, r0]
	mov r1, #0x1f
	add r2, r7, #0
	and r2, r1
	mov r1, #1
	lsl r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, sp, #0x44
	str r2, [r1, r0]
	mov r0, #1
	ldr r1, [sp, #0x48]
	lsl r0, r0, #0xd
	orr r0, r1
	str r0, [sp, #0x48]
_0207FF36:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0x5d
	bne _0207FFDC
	add r6, r6, #1
	b _0207FFDC
_0207FF42:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0207FF76
	cmp r7, #0
	beq _0207FF56
	cmp r1, #0x2d
	bne _0207FF56
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0207FFD0
_0207FF56:
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	lsr r0, r2, #5
	lsl r0, r0, #2
	add r1, sp, #0x44
	ldr r3, [r1, r0]
	mov r1, #0x1f
	and r2, r1
	mov r1, #1
	lsl r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, sp, #0x44
	str r2, [r1, r0]
	ldrb r7, [r6]
	b _0207FFD0
_0207FF76:
	lsl r0, r1, #0x18
	lsr r3, r0, #0x18
	cmp r7, r3
	bls _0207FFC0
	lsr r0, r7, #5
	lsl r0, r0, #2
	add r1, sp, #0x44
	ldr r2, [r1, r0]
	str r0, [sp, #0x40]
	mov r0, #0x1f
	add r1, r7, #0
	and r1, r0
	mov r0, #1
	lsl r0, r1
	orr r2, r0
	ldr r0, [sp, #0x40]
	add r1, sp, #0x44
	str r2, [r1, r0]
	mov r0, #2
	ldr r1, [sp, #0x48]
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x48]
	lsr r0, r3, #5
	lsl r0, r0, #2
	add r1, sp, #0x44
	ldr r7, [r1, r0]
	mov r1, #0x1f
	add r2, r3, #0
	and r2, r1
	mov r1, #1
	lsl r1, r2
	add r2, r7, #0
	orr r2, r1
	add r1, sp, #0x44
	str r2, [r1, r0]
	b _0207FFCA
_0207FFC0:
	add r0, sp, #0x44
	add r1, r7, #0
	add r2, r3, #1
	bl sub_0207FA88
_0207FFCA:
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r7, #0
_0207FFD0:
	b _0207FEFE
	nop
_0207FFD4: .word 0x7FFFFFFF
_0207FFD8: .word 0x00000000
_0207FFDC:
	mov r0, #1
	str r0, [sp, #0x38]
	lsl r1, r0, #0xd
	ldr r0, [sp, #0x2c]
	tst r0, r1
	bne _0207FFFA
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	sub r0, r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x18]
_0207FFFA:
	cmp r5, #0
	bne _02080000
	ldr r5, _0208006C ; =0x7FFFFFFF
_02080000:
	mov r0, #0
	ldrsb r2, [r4, r0]
	add r7, sp, #0x44
	b _02080038
_02080008:
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	lsr r0, r1, #5
	lsl r0, r0, #2
	ldr r3, [r7, r0]
	mov r0, #0x1f
	and r0, r1
	add r1, r3, #0
	lsr r1, r0
	mov r0, #1
	and r1, r0
	ldr r0, [sp, #0x20]
	cmp r0, r1
	bne _02080040
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02080030
	strb r2, [r0]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02080030:
	add r4, r4, #1
	mov r0, #0
	ldrsb r2, [r4, r0]
	sub r5, r5, #1
_02080038:
	cmp r2, #0
	beq _02080040
	cmp r5, #0
	bgt _02080008
_02080040:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0208004A
	mov r1, #0
	strb r1, [r0]
_0208004A:
	mov r0, #0
	ldrsb r5, [r6, r0]
	cmp r5, #0
	beq _02080054
	b _0207FADE
_02080054:
	mov r1, #0
	ldrsb r0, [r4, r1]
	cmp r0, #0
	bne _02080066
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _02080066
	sub r0, r1, #1
	str r0, [sp, #4]
_02080066:
	ldr r0, [sp, #4]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0208006C: .word 0x7FFFFFFF
	thumb_func_end sub_0207FAC0

	thumb_func_start sub_02080070
sub_02080070: ; 0x02080070
	ldr r2, [r0]
	cmp r2, #0
	beq _02080080
	ldr r2, [r0, #4]
	strb r1, [r2]
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
_02080080:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02080070

	thumb_func_start sub_02080088
sub_02080088: ; 0x02080088
	push {r4, r5}
	cmp r2, #0
	ble _020800B2
	ldr r5, [r0]
	cmp r5, r2
	bls _02080096
	add r5, r2, #0
_02080096:
	mov r4, #0
	cmp r5, #0
	bls _020800A6
_0208009C:
	ldr r3, [r0, #4]
	strb r1, [r3, r4]
	add r4, r4, #1
	cmp r4, r5
	blo _0208009C
_020800A6:
	ldr r1, [r0]
	sub r1, r1, r5
	str r1, [r0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
_020800B2:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_02080088

	thumb_func_start sub_020800B8
sub_020800B8: ; 0x020800B8
	push {r3, r4, r5, r6}
	cmp r2, #0
	ble _020800E4
	ldr r6, [r0]
	cmp r6, r2
	bls _020800C6
	add r6, r2, #0
_020800C6:
	mov r5, #0
	cmp r6, #0
	bls _020800D8
_020800CC:
	ldrsb r4, [r1, r5]
	ldr r3, [r0, #4]
	strb r4, [r3, r5]
	add r5, r5, #1
	cmp r5, r6
	blo _020800CC
_020800D8:
	ldr r1, [r0]
	sub r1, r1, r6
	str r1, [r0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
_020800E4:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_020800B8

	thumb_func_start sub_020800E8
sub_020800E8: ; 0x020800E8
	push {r0, r1, r2, r3}
	push {r4, lr}
	add r4, sp, #0xc
	mov r3, #3
	bic r4, r3
	ldr r1, _02080104 ; =0x7FFFFFFF
	ldr r2, [sp, #0xc]
	add r3, r4, #4
	bl sub_02080124
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_02080104: .word 0x7FFFFFFF
	thumb_func_end sub_020800E8

	thumb_func_start sub_02080108
sub_02080108: ; 0x02080108
	push {r0, r1, r2, r3}
	push {r4, lr}
	add r4, sp, #0x10
	mov r3, #3
	bic r4, r3
	ldr r2, [sp, #0x10]
	add r3, r4, #4
	bl sub_02080124
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_02080108

	thumb_func_start sub_02080124
sub_02080124: ; 0x02080124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r2, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	mov r0, #0
	ldrsb r0, [r6, r0]
	str r1, [sp]
	str r3, [sp, #4]
	str r1, [sp, #0x2c]
	cmp r0, #0
	bne _0208013E
	b _0208072E
_0208013E:
	mov r0, #0
	ldrsb r1, [r6, r0]
	str r0, [sp, #0x1c]
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	mov r0, #0x20
	str r0, [sp, #0x14]
	eor r0, r2
	sub r0, #0xa1
	cmp r0, #0x3c
	bhs _02080170
	add r0, sp, #0x2c
	add r6, r6, #1
	bl sub_02080070
	ldr r0, [sp, #0x1c]
	ldrsb r1, [r6, r0]
	cmp r1, #0
	bne _02080166
	b _02080724
_02080166:
	add r0, sp, #0x2c
	add r6, r6, #1
	bl sub_02080070
	b _02080724
_02080170:
	cmp r1, #0x25
	beq _02080176
	b _02080166
_02080176:
	ldr r0, [sp, #0x1c]
	str r6, [sp, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r2, #2
	sub r0, #0x21
	str r0, [sp, #0x14]
	mov r0, #0xa
	mov ip, r0
	mov r0, #0x57
	add r3, r0, #0
	str r0, [sp, #0xc]
	sub r3, #0x58
	mov r5, #1
	mov r7, #8
	mov r4, #0
_02080196:
	add r6, r6, #1
	ldrsb r1, [r6, r4]
	cmp r1, #0x20
	bgt _020801A2
	beq _020801C2
	b _020801D8
_020801A2:
	cmp r1, #0x30
	bgt _020801D8
	cmp r1, #0x2b
	blt _020801D8
	beq _020801B6
	cmp r1, #0x2d
	beq _020801C8
	cmp r1, #0x30
	beq _020801CE
	b _020801D8
_020801B6:
	ldrsb r0, [r6, r3]
	cmp r0, #0x20
	bne _020801D8
	ldr r0, [sp, #0x1c]
	orr r0, r2
	b _020801D4
_020801C2:
	ldr r0, [sp, #0x1c]
	orr r0, r5
	b _020801D4
_020801C8:
	ldr r0, [sp, #0x1c]
	orr r0, r7
	b _020801D4
_020801CE:
	ldr r1, [sp, #0x1c]
	mov r0, #0x10
	orr r0, r1
_020801D4:
	str r0, [sp, #0x1c]
	b _02080196
_020801D8:
	cmp r1, #0x2a
	bne _020801FC
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x18]
	cmp r0, #0
	bge _02080220
	neg r0, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r1, #8
	orr r0, r1
	str r0, [sp, #0x1c]
	b _02080220
_020801FC:
	mov r1, #0
	mov r2, #0xa
	mov r5, #0
	b _02080216
_02080204:
	ldr r0, [sp, #0x18]
	ldrsb r4, [r6, r1]
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	str r0, [sp, #0x18]
	sub r0, #0x30
	add r6, r6, #1
	str r0, [sp, #0x18]
_02080216:
	ldrsb r0, [r6, r5]
	cmp r0, #0x30
	blt _02080220
	cmp r0, #0x39
	ble _02080204
_02080220:
	mov r1, #0
	ldrsb r0, [r6, r1]
	cmp r0, #0x2e
	bne _0208026C
	add r6, r6, #1
	ldrsb r0, [r6, r1]
	str r1, [sp, #0x14]
	cmp r0, #0x2a
	bne _0208024A
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	cmp r0, #0
	bge _0208026C
	sub r0, r1, #1
	str r0, [sp, #0x14]
	b _0208026C
_0208024A:
	mov r2, #0xa
	add r5, r1, #0
	b _02080262
_02080250:
	ldr r0, [sp, #0x14]
	ldrsb r4, [r6, r1]
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	str r0, [sp, #0x14]
	sub r0, #0x30
	add r6, r6, #1
	str r0, [sp, #0x14]
_02080262:
	ldrsb r0, [r6, r5]
	cmp r0, #0x30
	blt _0208026C
	cmp r0, #0x39
	ble _02080250
_0208026C:
	mov r0, #0
	ldrsb r1, [r6, r0]
	cmp r1, #0x68
	beq _0208027A
	cmp r1, #0x6c
	beq _0208028E
	b _020802A4
_0208027A:
	add r6, r6, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0x68
	beq _02080286
	mov r1, #0x40
	b _0208029E
_02080286:
	mov r1, #1
	add r6, r6, #1
	lsl r1, r1, #8
	b _0208029E
_0208028E:
	add r6, r6, #1
	ldrsb r0, [r6, r0]
	cmp r0, #0x6c
	beq _0208029A
	mov r1, #0x20
	b _0208029E
_0208029A:
	add r6, r6, #1
	mov r1, #0x80
_0208029E:
	ldr r0, [sp, #0x1c]
	orr r0, r1
	str r0, [sp, #0x1c]
_020802A4:
	mov r4, #0
	ldrsb r1, [r6, r4]
	cmp r1, #0x69
	bgt _020802CE
	cmp r1, #0x63
	blt _020802BE
	beq _02080312
	cmp r1, #0x64
	beq _020802BA
	cmp r1, #0x69
	bne _020802BC
_020802BA:
	b _0208040A
_020802BC:
	b _020803F0
_020802BE:
	cmp r1, #0x25
	bgt _020802C8
	bne _020802C6
	b _020803E6
_020802C6:
	b _020803F0
_020802C8:
	cmp r1, #0x58
	beq _020802FE
	b _020803F0
_020802CE:
	cmp r1, #0x70
	bgt _020802DA
	bge _02080304
	cmp r1, #0x6f
	beq _020802F0
	b _020803F0
_020802DA:
	cmp r1, #0x78
	bgt _020802EE
	cmp r1, #0x73
	blt _020802EE
	beq _0208036C
	cmp r1, #0x75
	beq _020802F8
	cmp r1, #0x78
	bne _020802EE
	b _020803FE
_020802EE:
	b _020803F0
_020802F0:
	mov r0, #8
	mov ip, r0
	lsl r1, r0, #9
	b _02080404
_020802F8:
	mov r1, #1
	lsl r1, r1, #0xc
	b _02080404
_020802FE:
	mov r0, #0x37
	str r0, [sp, #0xc]
	b _020803FE
_02080304:
	ldr r0, [sp, #0x1c]
	mov r1, #4
	orr r0, r1
	str r0, [sp, #0x1c]
	mov r0, #8
	str r0, [sp, #0x14]
	b _020803FE
_02080312:
	ldr r0, [sp, #0x14]
	add r5, sp, #0x2c
	cmp r0, #0
	bge _020803F0
	ldr r0, [sp, #4]
	mov r1, #8
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r4, [r0]
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _02080344
	lsl r1, r4, #0x18
	add r0, r5, #0
	asr r1, r1, #0x18
	bl sub_02080070
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0x20
	sub r2, r2, #1
	bl sub_02080088
	b _0208036A
_02080344:
	ldr r0, [sp, #0x1c]
	mov r1, #0x10
	tst r0, r1
	beq _02080350
	mov r1, #0x30
	b _02080352
_02080350:
	mov r1, #0x20
_02080352:
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0x18
	add r0, r5, #0
	asr r1, r1, #0x18
	sub r2, r2, #1
	bl sub_02080088
	lsl r1, r4, #0x18
	add r0, r5, #0
	asr r1, r1, #0x18
	bl sub_02080070
_0208036A:
	b _02080722
_0208036C:
	ldr r0, [sp, #4]
	add r7, sp, #0x2c
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r5, [r0]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bge _02080390
	ldrsb r0, [r5, r4]
	cmp r0, #0
	beq _0208039C
_02080384:
	add r4, r4, #1
	ldrsb r0, [r5, r4]
	cmp r0, #0
	bne _02080384
	b _0208039C
_0208038E:
	add r4, r4, #1
_02080390:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bge _0208039C
	ldrsb r0, [r5, r4]
	cmp r0, #0
	bne _0208038E
_0208039C:
	ldr r0, [sp, #0x18]
	mov r1, #8
	sub r0, r0, r4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _020803C0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020800B8
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0x20
	bl sub_02080088
	b _020803E4
_020803C0:
	ldr r0, [sp, #0x1c]
	mov r1, #0x10
	tst r0, r1
	beq _020803CC
	mov r1, #0x30
	b _020803CE
_020803CC:
	mov r1, #0x20
_020803CE:
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	asr r1, r1, #0x18
	bl sub_02080088
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020800B8
_020803E4:
	b _02080722
_020803E6:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	cmp r0, r6
	bne _020803F0
	b _02080166
_020803F0:
	ldr r1, [sp, #0x10]
	add r0, sp, #0x2c
	add r2, r1, #0
	sub r2, r6, r2
	bl sub_020800B8
	b _02080724
_020803FE:
	mov r0, #0x10
	mov ip, r0
	lsl r1, r0, #8
_02080404:
	ldr r0, [sp, #0x1c]
	orr r0, r1
	str r0, [sp, #0x1c]
_0208040A:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	mov r1, #8
	tst r0, r1
	beq _0208041E
	ldr r0, [sp, #0x1c]
	mov r1, #0x10
	bic r0, r1
	str r0, [sp, #0x1c]
_0208041E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bge _0208042A
	mov r0, #1
	str r0, [sp, #0x14]
	b _02080432
_0208042A:
	ldr r0, [sp, #0x1c]
	mov r1, #0x10
	bic r0, r1
	str r0, [sp, #0x1c]
_02080432:
	mov r1, #1
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0xc
	tst r0, r1
	beq _020804D4
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #4
	tst r0, r1
	beq _02080454
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02080490
_02080454:
	ldr r0, [sp, #0x1c]
	mov r1, #0x40
	tst r0, r1
	beq _0208046C
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	b _02080490
_0208046C:
	ldr r0, [sp, #0x1c]
	mov r1, #0x80
	tst r0, r1
	beq _02080486
	ldr r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	sub r0, #8
	ldr r5, [r0]
	ldr r0, [sp, #4]
	sub r0, r0, #4
	ldr r7, [r0]
	b _02080492
_02080486:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r5, [r0]
_02080490:
	mov r7, #0
_02080492:
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bic r0, r1
	mov r1, #4
	str r0, [sp, #0x1c]
	tst r0, r1
	beq _02080588
	mov r0, ip
	cmp r0, #0x10
	bne _020804C2
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r5
	orr r0, r1
	beq _02080588
	ldr r1, [sp, #0xc]
	add r0, sp, #0x28
	add r1, #0x21
	strb r1, [r0]
	mov r1, #0x30
	strb r1, [r0, #1]
	mov r0, #2
	b _020804D0
_020804C2:
	mov r0, ip
	cmp r0, #8
	bne _02080588
	mov r1, #0x30
_020804CA:
	add r0, sp, #0x28
	strb r1, [r0]
	mov r0, #1
_020804D0:
	str r0, [sp, #0x20]
	b _02080588
_020804D4:
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #4
	tst r0, r1
	beq _020804EC
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r0]
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	b _02080528
_020804EC:
	ldr r0, [sp, #0x1c]
	mov r1, #0x40
	tst r0, r1
	beq _02080504
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r0]
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	b _02080528
_02080504:
	ldr r0, [sp, #0x1c]
	mov r1, #0x80
	tst r0, r1
	beq _0208051E
	ldr r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	sub r0, #8
	ldr r5, [r0]
	ldr r0, [sp, #4]
	sub r0, r0, #4
	ldr r7, [r0]
	b _0208052A
_0208051E:
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	sub r0, r0, #4
	ldr r5, [r0]
_02080528:
	asr r7, r5, #0x1f
_0208052A:
	mov r0, #2
	mov r1, #0
	mov r4, #0
	lsl r0, r0, #0x1e
	add r2, r7, #0
	and r2, r0
	and r1, r4
	mov r0, #0
	eor r0, r1
	mov r3, #0
	add r1, r2, #0
	eor r1, r3
	orr r0, r1
	beq _0208055A
	mov r0, #1
	mvn r7, r7
	mvn r1, r5
	add r5, r1, r0
	str r0, [sp, #0x20]
	adc r7, r4
	mov r1, #0x2d
	add r0, sp, #0x28
	strb r1, [r0]
	b _02080588
_0208055A:
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r5
	orr r0, r1
	bne _0208056C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02080588
_0208056C:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	tst r0, r1
	beq _02080578
	mov r1, #0x2b
	b _020804CA
_02080578:
	ldr r0, [sp, #0x1c]
	mov r1, #1
	tst r0, r1
	beq _02080588
	mov r2, #0x20
	add r0, sp, #0x28
	strb r2, [r0]
	str r1, [sp, #0x20]
_02080588:
	mov r0, ip
	mov r4, #0
	cmp r0, #8
	beq _0208059E
	mov r0, ip
	cmp r0, #0xa
	beq _020805CE
	mov r0, ip
	cmp r0, #0x10
	beq _02080640
	b _02080678
_0208059E:
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r5
	orr r0, r1
	beq _02080678
	add r0, sp, #0x38
	mov r3, #7
_020805AE:
	add r2, r5, #0
	and r2, r3
	lsl r1, r7, #0x1d
	lsr r5, r5, #3
	add r2, #0x30
	strb r2, [r0, r4]
	orr r5, r1
	mov r1, #0
	lsr r7, r7, #3
	mov r2, #0
	eor r2, r7
	eor r1, r5
	add r4, r4, #1
	orr r1, r2
	bne _020805AE
	b _02080678
_020805CE:
	mov r0, #0
	mov r2, #0
	mov r1, #0
	eor r1, r2
	eor r0, r7
	orr r0, r1
	bne _020805FE
	add r7, sp, #0x38
	cmp r5, #0
	beq _02080678
_020805E2:
	add r0, r5, #0
	mov r1, #0xa
	blx sub_0208D868
	mov r1, #0xa
	mul r1, r0
	sub r1, r5, r1
	add r1, #0x30
	strb r1, [r7, r4]
	add r5, r0, #0
	add r4, r4, #1
	cmp r0, #0
	bne _020805E2
	b _02080678
_020805FE:
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r5
	orr r0, r1
	beq _02080678
_0208060A:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0xa
	mov r3, #0
	blx sub_0208D5C4
	mov r2, #0xa
	mov r3, #0
	str r0, [sp, #0x24]
	add r7, r1, #0
	blx sub_0208D60C
	sub r1, r5, r0
	ldr r5, [sp, #0x24]
	add r1, #0x30
	add r0, sp, #0x38
	strb r1, [r0, r4]
	mov r0, #0
	add r1, r7, #0
	eor r1, r0
	mov r2, #0
	add r0, r5, #0
	eor r0, r2
	add r4, r4, #1
	orr r0, r1
	bne _0208060A
	b _02080678
_02080640:
	mov r1, #0
	mov r0, #0
	eor r1, r7
	eor r0, r5
	orr r0, r1
	beq _02080678
	add r0, sp, #0x38
	mov r3, #0xf
_02080650:
	add r1, r5, #0
	lsl r2, r7, #0x1c
	lsr r5, r5, #4
	and r1, r3
	orr r5, r2
	lsr r7, r7, #4
	cmp r1, #0xa
	bge _02080664
	add r1, #0x30
	b _02080668
_02080664:
	ldr r2, [sp, #0xc]
	add r1, r1, r2
_02080668:
	strb r1, [r0, r4]
	mov r2, #0
	mov r1, #0
	eor r2, r7
	eor r1, r5
	add r4, r4, #1
	orr r1, r2
	bne _02080650
_02080678:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x28
	cmp r0, #0
	ble _02080692
	mov r0, #0
	ldrsb r1, [r1, r0]
	cmp r1, #0x30
	bne _02080692
	str r0, [sp, #0x20]
	mov r1, #0x30
	add r0, sp, #0x38
	strb r1, [r0, r4]
	add r4, r4, #1
_02080692:
	ldr r0, [sp, #0x14]
	mov r1, #0x10
	sub r5, r0, r4
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _020806AC
	ldr r0, [sp, #0x18]
	sub r1, r0, r4
	ldr r0, [sp, #0x20]
	sub r0, r1, r0
	cmp r5, r0
	bge _020806AC
	add r5, r0, #0
_020806AC:
	cmp r5, #0
	ble _020806B6
	ldr r0, [sp, #0x18]
	sub r0, r0, r5
	str r0, [sp, #0x18]
_020806B6:
	ldr r0, [sp, #0x20]
	add r1, r0, r4
	ldr r0, [sp, #0x18]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	bne _020806D4
	ldr r2, [sp, #0x18]
	add r0, sp, #0x2c
	mov r1, #0x20
	bl sub_02080088
_020806D4:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _020806F2
	add r7, sp, #0x28
_020806DC:
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, sp, #0x2c
	ldrsb r1, [r7, r1]
	bl sub_02080070
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bgt _020806DC
_020806F2:
	add r7, sp, #0x2c
	add r0, r7, #0
	mov r1, #0x30
	add r2, r5, #0
	bl sub_02080088
	cmp r4, #0
	ble _02080712
	add r5, sp, #0x38
_02080704:
	sub r4, r4, #1
	ldrsb r1, [r5, r4]
	add r0, r7, #0
	bl sub_02080070
	cmp r4, #0
	bgt _02080704
_02080712:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02080722
	ldr r2, [sp, #0x18]
	add r0, sp, #0x2c
	mov r1, #0x20
	bl sub_02080088
_02080722:
	add r6, r6, #1
_02080724:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _0208072E
	b _0208013E
_0208072E:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0208073C
	ldr r0, [sp, #0x30]
	mov r1, #0
	strb r1, [r0]
	b _0208074C
_0208073C:
	ldr r0, [sp]
	cmp r0, #0
	beq _0208074C
	ldr r1, [sp, #0x34]
	mov r2, #0
	add r0, r1, r0
	sub r0, r0, #1
	strb r2, [r0]
_0208074C:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	sub r0, r1, r0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02080124

	thumb_func_start sub_02080758
sub_02080758: ; 0x02080758
	push {r3, lr}
	mov r2, #0xf
	lsl r2, r2, #8
	bl sub_02080774
	cmp r0, #0
	bne _0208076E
	ldr r1, _02080770 ; =0x0214E298
	mov r2, #0
	ldr r1, [r1, #4]
	strh r2, [r1, #0x16]
_0208076E:
	pop {r3, pc}
	.align 2, 0
_02080770: .word 0x0214E298
	thumb_func_end sub_02080758

	thumb_func_start sub_02080774
sub_02080774: ; 0x02080774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp, #4]
	add r4, r2, #0
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020807A0
	bl sub_020825EC
	cmp r0, #3
	beq _020807A0
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_020807A0:
	ldr r0, _020808F4 ; =0x0214E298
	ldrh r0, [r0]
	cmp r0, #0
	beq _020807B4
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_020807B4:
	cmp r6, #0
	bne _020807C4
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_020807C4:
	add r0, r6, #0
	bl sub_0207B780
	cmp r0, #0
	bne _020807E0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020807EC
	add r0, r6, #0
	bl sub_0207B744
	cmp r0, #0
	beq _020807EC
_020807E0:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_020807EC:
	ldr r0, [sp, #4]
	cmp r0, #3
	bls _020807FE
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_020807FE:
	mov r0, #0x1f
	tst r0, r6
	beq _02080810
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02080810:
	bl PXI_Init
	mov r0, #0xa
	mov r1, #1
	mov r7, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _0208082E
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	add sp, #0xc
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0208082E:
	add r0, r6, #0
	add r1, r4, #0
	blx sub_0207B074
	str r7, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	mov r2, #0
	add r3, r4, #0
	mov r5, #0
	bl MIi_DmaFill32
	ldr r4, _020808F4 ; =0x0214E298
	lsl r0, r7, #9
	str r6, [r4, #4]
	add r0, r6, r0
	str r0, [r6]
	ldr r2, [r4, #4]
	mov r0, #3
	ldr r1, [r2]
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r2, [r4, #4]
	lsl r0, r7, #0xb
	ldr r1, [r2, #4]
	add r7, #0xff
	add r0, r1, r0
	str r0, [r2, #0xc]
	ldr r1, [r4, #4]
	ldr r0, [r1, #0xc]
	add r0, r0, r7
	str r0, [r1, #0x10]
	bl sub_02080DA0
	mov r2, #0x53
	ldr r1, [r4, #4]
	ldr r0, [sp, #4]
	lsl r2, r2, #2
	strh r0, [r1, #0x14]
	ldr r0, [r4, #4]
	str r5, [r0, r2]
	add r0, r2, #4
	ldr r1, [r4, #4]
	sub r2, #0x40
	strh r5, [r1, r0]
	add r0, r5, #0
	b _020808A0
_0208088E:
	ldr r1, [r4, #4]
	lsl r3, r5, #2
	add r1, r1, r3
	add r1, #0xcc
	str r0, [r1]
	ldr r1, [r4, #4]
	add r5, r5, #1
	add r1, r1, r3
	str r0, [r1, r2]
_020808A0:
	cmp r5, #0x10
	blt _0208088E
	ldr r0, _020808F8 ; =0x0214E2B0
	ldr r1, _020808FC ; =0x0214E2D0
	mov r2, #0xa
	bl sub_0207ACC4
	mov r6, #2
	mov r5, #0
	lsl r6, r6, #0xe
	ldr r4, _02080900 ; =0x0214E340
	mov r7, #2
	b _020808D4
_020808BA:
	lsl r0, r5, #8
	strh r6, [r4, r0]
	add r0, r4, r0
	add r1, r7, #0
	blx sub_0207B090
	lsl r1, r5, #8
	ldr r0, _020808F8 ; =0x0214E2B0
	add r1, r4, r1
	mov r2, #1
	bl sub_0207ACD8
	add r5, r5, #1
_020808D4:
	cmp r5, #0xa
	blt _020808BA
	ldr r1, _02080904 ; =0x02080B01
	mov r0, #0xa
	bl PXI_SetFifoRecvCallback
	ldr r0, _020808F4 ; =0x0214E298
	mov r1, #1
	strh r1, [r0]
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020808F4: .word 0x0214E298
_020808F8: .word 0x0214E2B0
_020808FC: .word 0x0214E2D0
_02080900: .word 0x0214E340
_02080904: .word 0x02080B01
	thumb_func_end sub_02080774

	thumb_func_start sub_02080908
sub_02080908: ; 0x02080908
	push {r3, r4, r5, lr}
	blx OS_DisableInterrupts
	add r5, r0, #0
	bl sub_02080A70
	cmp r0, #0
	beq _02080922
	add r0, r5, #0
	blx OS_RestoreInterrupts
	mov r0, #3
	pop {r3, r4, r5, pc}
_02080922:
	mov r0, #1
	mov r1, #0
	mov r4, #0
	bl sub_02080AB0
	cmp r0, #0
	bne _0208094A
	bl sub_02080DA0
	mov r0, #0xa
	add r1, r4, #0
	bl PXI_SetFifoRecvCallback
	ldr r0, _0208094C ; =0x0214E298
	str r4, [r0, #4]
	strh r4, [r0]
	add r0, r5, #0
	blx OS_RestoreInterrupts
	add r0, r4, #0
_0208094A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0208094C: .word 0x0214E298
	thumb_func_end sub_02080908

	thumb_func_start sub_02080950
sub_02080950: ; 0x02080950
	ldr r2, _0208095C ; =0x0214E298
	lsl r0, r0, #2
	ldr r2, [r2, #4]
	add r0, r2, r0
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0208095C: .word 0x0214E298
	thumb_func_end sub_02080950

	thumb_func_start sub_02080960
sub_02080960: ; 0x02080960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _020809A4 ; =0x0214E2B0
	add r1, sp, #0
	add r0, r6, #0
	mov r2, #0
	mov r5, #0
	bl sub_0207AD34
	cmp r0, #0
	bne _0208097C
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_0208097C:
	ldr r0, [sp]
	mov r1, #2
	mov r4, #2
	blx sub_0207B074
	ldr r1, [sp]
	lsl r0, r4, #0xe
	ldrh r2, [r1]
	tst r0, r2
	bne _0208099E
	add r0, r6, #0
	mov r2, #1
	bl sub_0207AD9C
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_0208099E:
	add r0, r1, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_020809A4: .word 0x0214E2B0
	thumb_func_end sub_02080960

	thumb_func_start sub_020809A8
sub_020809A8: ; 0x020809A8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02080960
	add r4, r0, #0
	bne _020809C0
	mov r0, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_020809C0:
	strh r5, [r4]
	add r2, sp, #0x14
	ldrh r2, [r2]
	add r1, sp, #0x14
	mov r0, #3
	bic r1, r0
	add r0, r1, #4
	mov r1, #0
	cmp r2, #0
	ble _020809E6
_020809D4:
	add r0, r0, #4
	sub r3, r0, #4
	ldr r5, [r3]
	lsl r3, r1, #2
	add r3, r4, r3
	add r1, r1, #1
	str r5, [r3, #4]
	cmp r1, r2
	blt _020809D4
_020809E6:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	blx sub_0207B090
	mov r0, #0xa
	add r1, r4, #0
	mov r2, #0
	bl PXI_SendWordByFifo
	add r5, r0, #0
	ldr r0, _02080A18 ; =0x0214E2B0
	add r1, r4, #0
	mov r2, #1
	bl sub_0207ACD8
	mov r0, #8
	cmp r5, #0
	blt _02080A0E
	mov r0, #2
_02080A0E:
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02080A18: .word 0x0214E2B0
	thumb_func_end sub_020809A8

	thumb_func_start sub_02080A1C
sub_02080A1C: ; 0x02080A1C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02080960
	add r4, r0, #0
	bne _02080A2E
	mov r0, #8
	pop {r4, r5, r6, pc}
_02080A2E:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	add r1, r5, #0
	blx sub_0207B090
	mov r0, #0xa
	add r1, r4, #0
	mov r2, #0
	bl PXI_SendWordByFifo
	add r5, r0, #0
	ldr r0, _02080A60 ; =0x0214E2B0
	add r1, r4, #0
	mov r2, #1
	bl sub_0207ACD8
	mov r0, #8
	cmp r5, #0
	blt _02080A5E
	mov r0, #2
_02080A5E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02080A60: .word 0x0214E2B0
	thumb_func_end sub_02080A1C

	thumb_func_start sub_02080A64
sub_02080A64: ; 0x02080A64
	ldr r0, _02080A6C ; =0x0214E298
	ldr r0, [r0, #4]
	bx lr
	nop
_02080A6C: .word 0x0214E298
	thumb_func_end sub_02080A64

	thumb_func_start sub_02080A70
sub_02080A70: ; 0x02080A70
	ldr r0, _02080A80 ; =0x0214E298
	ldrh r0, [r0]
	cmp r0, #0
	beq _02080A7C
	mov r0, #0
	bx lr
_02080A7C:
	mov r0, #3
	bx lr
	.align 2, 0
_02080A80: .word 0x0214E298
	thumb_func_end sub_02080A70

	thumb_func_start sub_02080A84
sub_02080A84: ; 0x02080A84
	push {r4, lr}
	bl sub_02080A70
	cmp r0, #0
	bne _02080AAA
	ldr r4, _02080AAC ; =0x0214E298
	mov r1, #2
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	blx sub_0207B074
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #1
	bhi _02080AA8
	mov r0, #3
	pop {r4, pc}
_02080AA8:
	mov r0, #0
_02080AAA:
	pop {r4, pc}
	.align 2, 0
_02080AAC: .word 0x0214E298
	thumb_func_end sub_02080A84

	thumb_func_start sub_02080AB0
sub_02080AB0: ; 0x02080AB0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	bl sub_02080A70
	cmp r0, #0
	bne _02080AF2
	ldr r4, _02080AFC ; =0x0214E298
	mov r1, #2
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	blx sub_0207B074
	ldr r0, [r4, #4]
	add r3, sp, #0x10
	ldr r0, [r0, #4]
	mov r2, #3
	bic r3, r2
	ldrh r1, [r0]
	ldr r4, [sp, #0x10]
	mov r0, #3
	add r5, r3, #4
	cmp r4, #0
	beq _02080AF2
	mov r3, #0
_02080AE0:
	add r5, r5, #4
	sub r2, r5, #4
	ldr r2, [r2]
	cmp r2, r1
	bne _02080AEC
	add r0, r3, #0
_02080AEC:
	sub r4, r4, #1
	str r4, [sp, #0x10]
	bne _02080AE0
_02080AF2:
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02080AFC: .word 0x0214E298
	thumb_func_end sub_02080AB0
_02080B00:
	.byte 0xF8, 0xB5, 0x86, 0xB0, 0x9F, 0x48, 0x0D, 0x1C, 0x44, 0x68, 0x00, 0x2A, 0x00, 0xD0, 0x37, 0xE1
	.byte 0x01, 0x21, 0x20, 0x69, 0x09, 0x02, 0xFA, 0xF7, 0xAE, 0xEA, 0xE0, 0x8A, 0x00, 0x28, 0x04, 0xD1
	.byte 0x01, 0x21, 0x60, 0x68, 0xC9, 0x02, 0xFA, 0xF7, 0xA6, 0xEA, 0x20, 0x69, 0x85, 0x42, 0x04, 0xD0
	.byte 0x01, 0x21, 0x28, 0x1C, 0x09, 0x02, 0xFA, 0xF7, 0x9E, 0xEA, 0x28, 0x88, 0x2C, 0x28, 0x34, 0xD3
	.byte 0x80, 0x28, 0x0C, 0xD1, 0x68, 0x88, 0x13, 0x28, 0x01, 0xD1, 0xFB, 0xF7, 0x13, 0xFE, 0x20, 0x1C
	.byte 0xC8, 0x30, 0x01, 0x68, 0x00, 0x29, 0x6E, 0xD0, 0x28, 0x1C, 0x88, 0x47, 0xFD, 0xE0, 0x82, 0x28
	.byte 0x1B, 0xD1, 0xE8, 0x88, 0x80, 0x00, 0x21, 0x18, 0x08, 0x1C, 0xCC, 0x30, 0x00, 0x68, 0x00, 0x28
	.byte 0x61, 0xD0, 0x43, 0x20, 0x80, 0x00, 0x09, 0x58, 0x40, 0x30, 0xE9, 0x61, 0x20, 0x58, 0x68, 0x84
	.byte 0x61, 0x68, 0xA8, 0x68, 0x72, 0x31, 0x09, 0x88, 0xFA, 0xF7, 0x74, 0xEA, 0xE9, 0x88, 0x28, 0x1C
	.byte 0x89, 0x00, 0x61, 0x18, 0xCC, 0x31, 0x09, 0x68, 0xDF, 0xE7, 0x81, 0x28, 0x4B, 0xD1, 0x0F, 0x20
	.byte 0x28, 0x80, 0xE9, 0x69, 0x00, 0x29, 0x46, 0xD0, 0xD6, 0xE7, 0x0E, 0x28, 0x0F, 0xD1, 0xA9, 0x88
	.byte 0x75, 0x48, 0x08, 0x18, 0x00, 0x04, 0x00, 0x0C, 0x01, 0x28, 0x08, 0xD8, 0x68, 0x88, 0x00, 0x28
	.byte 0x05, 0xD1, 0x61, 0x68, 0xA8, 0x68, 0x72, 0x31, 0x09, 0x88, 0xFA, 0xF7, 0x54, 0xEA, 0x29, 0x88
	.byte 0x04, 0x29, 0x01, 0xD0, 0x02, 0x29, 0x02, 0xD1, 0x68, 0x88, 0x00, 0x28, 0x06, 0xD0, 0x03, 0x29
	.byte 0x01, 0xD0, 0x00, 0x29, 0x04, 0xD1, 0x68, 0x88, 0x00, 0x28, 0x01, 0xD0, 0x00, 0xF0, 0x2C, 0xF9
	.byte 0x29, 0x88, 0x02, 0x29, 0x0D, 0xD1, 0x68, 0x88, 0x00, 0x28, 0x0A, 0xD1, 0x88, 0x00, 0x20, 0x18
	.byte 0x84, 0x69, 0xFF, 0xF7, 0x81, 0xFE, 0x00, 0x2C, 0x0F, 0xD0, 0x28, 0x1C, 0xA0, 0x47, 0x06, 0xB0
	.byte 0xF8, 0xBD, 0x20, 0x1C, 0x89, 0x00, 0x18, 0x30, 0x41, 0x58, 0x00, 0x29, 0x06, 0xD0, 0x28, 0x1C
	.byte 0x88, 0x47, 0x58, 0x48, 0x00, 0x88, 0x00, 0x28, 0x00, 0xD1, 0xA9, 0xE0, 0x28, 0x88, 0x08, 0x28
	.byte 0x02, 0xD0, 0x0C, 0x28, 0x00, 0xD0, 0x90, 0xE0, 0x08, 0x28, 0x11, 0xD1, 0x2E, 0x89, 0x28, 0x8A
	.byte 0x00, 0x27, 0x05, 0x90, 0x28, 0x1C, 0x03, 0x90, 0x0A, 0x30, 0x03, 0x90, 0x28, 0x1C, 0x02, 0x90
	.byte 0x14, 0x30, 0x02, 0x90, 0x68, 0x8A, 0x04, 0x90, 0xA8, 0x8D, 0x01, 0x90, 0xE8, 0x8D, 0x10, 0xE0
	.byte 0x0C, 0x28, 0x0F, 0xD1, 0x2E, 0x89, 0x00, 0x20, 0x05, 0x90, 0x28, 0x1C, 0x03, 0x90, 0x10, 0x30
	.byte 0x03, 0x90, 0x00, 0x20, 0x02, 0x90, 0x6F, 0x89, 0xA8, 0x89, 0x04, 0x90, 0xE8, 0x8A, 0x01, 0x90
	.byte 0x28, 0x8B, 0x00, 0x90, 0x07, 0x2E, 0x03, 0xD0, 0x09, 0x2E, 0x01, 0xD0, 0x1A, 0x2E, 0x64, 0xD1
	.byte 0x07, 0x2E, 0x07, 0xD1, 0x53, 0x23, 0x9B, 0x00, 0x05, 0x99, 0x01, 0x22, 0xE0, 0x58, 0x8A, 0x40
	.byte 0x10, 0x43, 0x06, 0xE0, 0x53, 0x23, 0x9B, 0x00, 0x05, 0x99, 0x01, 0x22, 0xE0, 0x58, 0x8A, 0x40
	.byte 0x90, 0x43, 0xE0, 0x50, 0x15, 0x20, 0x00, 0x01, 0x27, 0x52, 0x34, 0x48, 0x00, 0x21, 0x44, 0x22
	.byte 0xF7, 0xF7, 0x72, 0xED, 0x31, 0x49, 0x82, 0x20, 0x08, 0x80, 0x00, 0x22, 0x4A, 0x80, 0x8E, 0x80
	.byte 0x8A, 0x60, 0xCA, 0x60, 0x0A, 0x82, 0x05, 0x9A, 0xCA, 0x30, 0x4A, 0x82, 0x0F, 0x84, 0x21, 0x58
	.byte 0x2A, 0x48, 0x06, 0x22, 0x41, 0x84, 0x2A, 0x49, 0x41, 0x83, 0x04, 0x99, 0x81, 0x87, 0x03, 0x98
	.byte 0x28, 0x49, 0xF7, 0xF7, 0x16, 0xEE, 0x02, 0x98, 0x00, 0x28, 0x04, 0xD0, 0x26, 0x49, 0x18, 0x22
	.byte 0xF7, 0xF7, 0x9C, 0xEC, 0x04, 0xE0, 0x24, 0x49, 0x00, 0x20, 0x18, 0x22, 0xF7, 0xF7, 0x8A, 0xEC
	.byte 0x00, 0x2F, 0x01, 0xD1, 0x01, 0x99, 0x00, 0xE0, 0x00, 0x99, 0x20, 0x48, 0x00, 0x2F, 0x01, 0x80
	.byte 0x01, 0xD0, 0x01, 0x98, 0x00, 0x90, 0x1D, 0x49, 0x00, 0x98, 0x18, 0x4F, 0x48, 0x80, 0x00, 0x26
	.byte 0xB0, 0x00, 0x21, 0x18, 0x08, 0x1C, 0xFE, 0x80, 0xCC, 0x30, 0x00, 0x68, 0x00, 0x28, 0x07, 0xD0
	.byte 0x43, 0x20, 0x80, 0x00, 0x08, 0x58, 0xCC, 0x31, 0xF8, 0x61, 0x09, 0x68, 0x38, 0x1C, 0x88, 0x47
	.byte 0x70, 0x1C, 0x00, 0x04, 0x06, 0x0C, 0x10, 0x2E, 0xEA, 0xD3, 0x01, 0x26, 0x36, 0x02, 0x20, 0x69
	.byte 0x31, 0x1C, 0xFA, 0xF7, 0x88, 0xE9, 0x00, 0xF0, 0x1B, 0xF8, 0x20, 0x69, 0x85, 0x42, 0x07, 0xD0
	.byte 0x29, 0x88, 0xF0, 0x01, 0x08, 0x43, 0x28, 0x80, 0x28, 0x1C, 0x31, 0x1C, 0xFA, 0xF7, 0x88, 0xE9
	.byte 0x06, 0xB0, 0xF8, 0xBD, 0x98, 0xE2, 0x14, 0x02, 0xF5, 0xFF, 0x00, 0x00, 0xF8, 0xE2, 0x14, 0x02
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x0C, 0xE3, 0x14, 0x02, 0x1C, 0xE3, 0x14, 0x02, 0x38, 0xE3, 0x14, 0x02

	thumb_func_start sub_02080DA0
sub_02080DA0: ; 0x02080DA0
	ldr r2, _02080DB4 ; =0x02FFFF96
	mov r0, #1
	ldrh r1, [r2]
	tst r0, r1
	beq _02080DB0
	ldr r0, _02080DB8 ; =0x0000FFFE
	and r0, r1
	strh r0, [r2]
_02080DB0:
	bx lr
	nop
_02080DB4: .word 0x02FFFF96
_02080DB8: .word 0x0000FFFE
	thumb_func_end sub_02080DA0

	thumb_func_start sub_02080DBC
sub_02080DBC: ; 0x02080DBC
	push {r3, lr}
	bl sub_02080A70
	cmp r0, #0
	beq _02080DCA
	mov r0, #0
	pop {r3, pc}
_02080DCA:
	ldr r0, _02080DD4 ; =0x0214E298
	ldr r0, [r0, #4]
	ldr r0, [r0, #4]
	pop {r3, pc}
	nop
_02080DD4: .word 0x0214E298
	thumb_func_end sub_02080DBC

	thumb_func_start sub_02080DD8
sub_02080DD8: ; 0x02080DD8
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _02080DF8 ; =0x0214E298
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02080DEE
	mov r1, #0x15
	lsl r1, r1, #4
	ldrh r4, [r2, r1]
	b _02080DF0
_02080DEE:
	mov r4, #0
_02080DF0:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02080DF8: .word 0x0214E298
	thumb_func_end sub_02080DD8

	thumb_func_start sub_02080DFC
sub_02080DFC: ; 0x02080DFC
	push {r4, lr}
	blx OS_DisableInterrupts
	ldr r1, _02080E20 ; =0x0214E298
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02080E12
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r4, [r2, r1]
	b _02080E14
_02080E12:
	mov r4, #0
_02080E14:
	blx OS_RestoreInterrupts
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_02080E20: .word 0x0214E298
	thumb_func_end sub_02080DFC

	thumb_func_start sub_02080E24
sub_02080E24: ; 0x02080E24
	ldr r1, _02080E38 ; =0x02080E59
	ldr r0, _02080E3C ; =0x0214E298
	ldr r3, _02080E40 ; =sub_0207F614
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	mov r1, #0xfa
	ldr r0, _02080E44 ; =0x0214E2A0
	lsl r1, r1, #2
	bx r3
	.align 2, 0
_02080E38: .word 0x02080E59
_02080E3C: .word 0x0214E298
_02080E40: .word sub_0207F614
_02080E44: .word 0x0214E2A0
	thumb_func_end sub_02080E24
_02080E48:
	.byte 0x01, 0x48, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0xA0, 0xE2, 0x14, 0x02, 0x2D, 0xF6, 0x07, 0x02, 0x00, 0x4B, 0x18, 0x47, 0x75, 0xC7, 0x07, 0x02

	thumb_func_start sub_02080E60
sub_02080E60: ; 0x02080E60
	push {r3, lr}
	bl OS_IsAvailableWireless
	cmp r0, #1
	bne _02080E76
	bl OS_IsParentalControledApp
	cmp r0, #0
	bne _02080E76
	mov r0, #1
	pop {r3, pc}
_02080E76:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02080E60

	thumb_func_start sub_02080E7C
sub_02080E7C: ; 0x02080E7C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	bl sub_02080A70
	add r6, r0, #0
	beq _02080E98
	add r0, r4, #0
	blx OS_RestoreInterrupts
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02080E98:
	bl sub_02080A64
	add r0, #0xc8
	str r5, [r0]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02080E7C

	thumb_func_start sub_02080EAC
sub_02080EAC: ; 0x02080EAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _02080EE8
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x44
	mov r7, #0
	blx MI_CpuFill8
	mov r1, #0x82
	add r0, sp, #4
	strh r1, [r0]
	strh r7, [r0, #2]
	mov r1, #0x19
	strh r1, [r0, #4]
	strh r5, [r0, #6]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r1, _02080F3C ; =0x0000FFFF
	strh r7, [r0, #0x10]
	strh r1, [r0, #0x1a]
	str r6, [sp, #0x20]
	strh r7, [r0, #0x12]
	add r0, sp, #0x18
	bl OS_GetMacAddress
_02080EE8:
	blx OS_DisableInterrupts
	add r7, r0, #0
	bl sub_02080A70
	str r0, [sp]
	cmp r0, #0
	beq _02080F04
	add r0, r7, #0
	blx OS_RestoreInterrupts
	ldr r0, [sp]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_02080F04:
	bl sub_02080A64
	lsl r1, r5, #2
	add r1, r0, r1
	add r0, r1, #0
	add r0, #0xcc
	str r4, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	str r6, [r1, r0]
	cmp r4, #0
	beq _02080F2E
	bl sub_02080DFC
	add r5, sp, #4
	strh r0, [r5, #0x22]
	bl sub_02080DD8
	strh r0, [r5, #0x20]
	add r0, sp, #4
	blx r4
_02080F2E:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02080F3C: .word 0x0000FFFF
	thumb_func_end sub_02080EAC

	thumb_func_start sub_02080F40
sub_02080F40: ; 0x02080F40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02080A64
	add r4, r0, #0
	bl sub_02080A70
	cmp r0, #0
	bne _02080F72
	cmp r5, #0
	bne _02080F5A
	mov r0, #6
	pop {r4, r5, r6, pc}
_02080F5A:
	mov r6, #0x7d
	lsl r6, r6, #4
	ldr r0, [r4, #4]
	add r1, r6, #0
	blx sub_0207B074
	ldr r0, [r4, #4]
	add r1, r5, #0
	add r2, r6, #0
	blx MIi_CpuCopyFast
	mov r0, #0
_02080F72:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02080F40

	thumb_func_start sub_02080F74
sub_02080F74: ; 0x02080F74
	push {r3, r4, r5, lr}
	bl sub_02080A64
	add r5, r0, #0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_02080AB0
	cmp r0, #0
	beq _02080F8E
	mov r0, #0
	pop {r3, r4, r5, pc}
_02080F8E:
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, #0xc
	mov r4, #4
	blx sub_0207B074
	ldr r0, [r5, #4]
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _02080FA6
	mov r0, #0
	pop {r3, r4, r5, pc}
_02080FA6:
	add r0, #0x3c
	add r1, r4, #0
	blx sub_0207B074
	ldr r0, [r5, #4]
	mov r1, #0x1f
	ldrh r0, [r0, #0x3c]
	add r0, #0x1f
	bic r0, r1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02080F74

	thumb_func_start sub_02080FBC
sub_02080FBC: ; 0x02080FBC
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02080A64
	add r5, r0, #0
	mov r0, #2
	mov r1, #7
	mov r2, #8
	mov r6, #2
	bl sub_02080AB0
	cmp r0, #0
	beq _02080FD8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02080FD8:
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, #0xc
	blx sub_0207B074
	ldr r1, [r5, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _02080FEE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02080FEE:
	mov r4, #0x62
	lsl r4, r4, #2
	add r0, r1, r4
	add r1, r6, #0
	blx sub_0207B074
	ldr r0, [r5, #4]
	mov r6, #1
	ldrh r1, [r0, r4]
	cmp r1, #0
	beq _02081006
	mov r6, #0
_02081006:
	add r0, #0x3e
	mov r1, #2
	mov r7, #2
	blx sub_0207B074
	ldr r0, [r5, #4]
	cmp r6, #1
	ldrh r4, [r0, #0x3e]
	bne _02081036
	add r0, #0xf8
	add r1, r7, #0
	blx sub_0207B074
	ldr r0, [r5, #4]
	add r4, #0xc
	add r0, #0xf8
	ldrh r0, [r0]
	add r1, r4, #0
	mul r1, r0
	add r1, #0x29
	mov r0, #0x1f
	bic r1, r0
	lsl r0, r1, #1
	pop {r3, r4, r5, r6, r7, pc}
_02081036:
	add r4, #0x51
	mov r0, #0x1f
	bic r4, r0
	lsl r0, r4, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02080FBC

	thumb_func_start sub_02081040
sub_02081040: ; 0x02081040
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02080A64
	add r6, r0, #0
	bl sub_02080A70
	cmp r0, #0
	beq _0208105C
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0208105C:
	cmp r4, #1
	blo _02081064
	cmp r4, #0xf
	bls _0208106A
_02081064:
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0208106A:
	ldr r0, [r6, #4]
	ldr r7, _020810C8 ; =0x00000182
	mov r1, #2
	add r0, r0, r7
	blx sub_0207B074
	ldr r0, [r6, #4]
	ldrh r1, [r0, r7]
	mov r0, #1
	lsl r0, r4
	tst r0, r1
	bne _02081088
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02081088:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02081092
	cmp r0, #0xf
	bls _02081098
_02081092:
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02081098:
	add r0, r5, #0
	add r0, #0xa
	str r0, [sp]
	mov r2, #0
	add r1, sp, #0
_020810A2:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	ldrh r3, [r0, #4]
	cmp r4, r3
	beq _020810C4
	add r2, r2, #1
	lsl r0, r2, #2
	add r3, r1, r0
	sub r3, r3, #4
	ldrh r6, [r5, #6]
	ldr r3, [r3]
	add r3, r6, r3
	str r3, [r1, r0]
	ldrh r0, [r5, #4]
	cmp r2, r0
	blt _020810A2
	mov r0, #0
_020810C4:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020810C8: .word 0x00000182
	thumb_func_end sub_02081040

	thumb_func_start sub_020810CC
sub_020810CC: ; 0x020810CC
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020810E2
	bl sub_02080E60
	cmp r0, #0
	bne _020810E2
	mov r0, #0
	pop {r3, pc}
_020810E2:
	bl sub_02080A70
	cmp r0, #0
	beq _020810F0
	mov r0, #2
	lsl r0, r0, #0xe
	pop {r3, pc}
_020810F0:
	ldr r0, _020810F8 ; =0x02FFFCFA
	ldrh r0, [r0]
	pop {r3, pc}
	nop
_020810F8: .word 0x02FFFCFA
	thumb_func_end sub_020810CC

	thumb_func_start sub_020810FC
sub_020810FC: ; 0x020810FC
	push {r4, r5, r6, lr}
	bl sub_02080A64
	add r5, r0, #0
	bl sub_02080A70
	cmp r0, #0
	beq _02081110
	mov r0, #0
	pop {r4, r5, r6, pc}
_02081110:
	ldr r0, [r5, #4]
	mov r1, #2
	mov r6, #2
	blx sub_0207B074
	ldr r0, [r5, #4]
	ldrh r1, [r0]
	cmp r1, #9
	beq _0208112C
	cmp r1, #0xa
	beq _02081142
	cmp r1, #0xb
	beq _02081142
	b _02081152
_0208112C:
	ldr r4, _02081158 ; =0x00000182
	add r1, r6, #0
	add r0, r0, r4
	blx sub_0207B074
	ldr r0, [r5, #4]
	ldrh r1, [r0, r4]
	cmp r1, #0
	bne _02081142
	mov r0, #0
	pop {r4, r5, r6, pc}
_02081142:
	add r0, #0xbc
	mov r1, #2
	blx sub_0207B074
	ldr r0, [r5, #4]
	add r0, #0xbc
	ldrh r0, [r0]
	pop {r4, r5, r6, pc}
_02081152:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02081158: .word 0x00000182
	thumb_func_end sub_020810FC

	thumb_func_start sub_0208115C
sub_0208115C: ; 0x0208115C
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	add r0, r4, #0
	bl OS_GetMacAddress
	mov r2, #0
	mov r1, #0
_0208116C:
	ldrb r0, [r4, r2]
	add r2, r2, #1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r2, #6
	blt _0208116C
	ldr r0, _020811A0 ; =0x02FFFC3C
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #7
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x14
	blx sub_0208D65C
	add r1, #0xc8
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_020811A0: .word 0x02FFFC3C
	thumb_func_end sub_0208115C

	thumb_func_start sub_020811A4
sub_020811A4: ; 0x020811A4
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	add r0, r4, #0
	bl OS_GetMacAddress
	mov r2, #0
	mov r1, #0
_020811B4:
	ldrb r0, [r4, r2]
	add r2, r2, #1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r2, #6
	blt _020811B4
	ldr r0, _020811E8 ; =0x02FFFC3C
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xd
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xa
	blx sub_0208D65C
	add r1, #0x1e
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_020811E8: .word 0x02FFFC3C
	thumb_func_end sub_020811A4

	thumb_func_start sub_020811EC
sub_020811EC: ; 0x020811EC
	push {r3, r4, r5, r6, r7}
	sub sp, #0x84
	add r2, r0, #0
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	add r0, sp, #0
	beq _02081214
	mov r1, #0
	strb r1, [r0]
	add r4, sp, #0
	mov r3, #0x10
_02081202:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _02081202
	ldr r0, [r4]
	add sp, #0x84
	str r0, [r2]
	pop {r3, r4, r5, r6, r7}
	bx lr
_02081214:
	ldrh r3, [r1, #0x3e]
	strb r3, [r0]
	ldrb r3, [r0]
	cmp r3, #0
	bne _02081234
	add r4, sp, #0
	mov r3, #0x10
_02081222:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _02081222
	ldr r0, [r4]
	add sp, #0x84
	str r0, [r2]
	pop {r3, r4, r5, r6, r7}
	bx lr
_02081234:
	cmp r3, #0x10
	bls _0208123C
	mov r3, #0x10
	strb r3, [r0]
_0208123C:
	ldrh r0, [r1]
	add r4, r1, #0
	add r4, #0x40
	lsl r0, r0, #1
	sub r0, #0x40
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, sp, #0
	ldrb r0, [r0]
	mov r6, #0
	mov r1, #0
	cmp r0, #0
	ble _020812A0
	add r3, sp, #0
_02081258:
	ldrb r7, [r4]
	lsl r0, r1, #3
	add r0, r3, r0
	strb r7, [r0, #4]
	ldrb r7, [r4, #1]
	strb r7, [r0, #5]
	add r7, r4, #2
	str r7, [r0, #8]
	ldrb r0, [r0, #5]
	add r0, r0, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, r6, r0
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	cmp r6, r5
	bls _02081294
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r4, #0x10
_02081282:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _02081282
	ldr r0, [r3]
	add sp, #0x84
	str r0, [r2]
	pop {r3, r4, r5, r6, r7}
	bx lr
_02081294:
	add r4, r4, r0
	add r0, sp, #0
	ldrb r0, [r0]
	add r1, r1, #1
	cmp r1, r0
	blt _02081258
_020812A0:
	add r4, sp, #0
	mov r3, #0x10
_020812A4:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _020812A4
	ldr r0, [r4]
	str r0, [r2]
	add sp, #0x84
	pop {r3, r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_020811EC

	thumb_func_start sub_020812B8
sub_020812B8: ; 0x020812B8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, _020812F8 ; =0x0209B794
	mov r0, #1
	ldr r1, [r4]
	lsl r0, r0, #0x10
	cmp r1, r0
	bne _020812E4
	bl sub_0207CB88
	add r0, sp, #0
	bl sub_0207CC80
	cmp r0, #0
	bne _020812E4
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4]
_020812E4:
	ldr r1, _020812F8 ; =0x0209B794
	ldr r0, [r1]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_020812F8: .word 0x0209B794
	thumb_func_end sub_020812B8

	thumb_func_start sub_020812FC
sub_020812FC: ; 0x020812FC
	ldr r3, _02081304 ; =sub_02081308
	mov r1, #0
	bx r3
	nop
_02081304: .word sub_02081308
	thumb_func_end sub_020812FC

	thumb_func_start sub_02081308
sub_02081308: ; 0x02081308
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #0
	bl sub_02080AB0
	cmp r0, #0
	bne _02081344
	mov r0, #3
	add r1, r5, #0
	bl sub_02080950
	bl sub_02080E24
	bl sub_02080A64
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	mov r1, #4
	str r0, [sp]
	str r4, [sp, #4]
	ldmia r3!, {r2, r3}
	mov r0, #3
	bl sub_020809A8
	cmp r0, #0
	bne _02081344
	mov r0, #2
_02081344:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02081308

	thumb_func_start sub_02081348
sub_02081348: ; 0x02081348
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #1
	bl sub_02080AB0
	cmp r0, #0
	bne _0208136E
	mov r0, #4
	add r1, r4, #0
	bl sub_02080950
	mov r0, #4
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _0208136E
	mov r0, #2
_0208136E:
	pop {r4, pc}
	thumb_func_end sub_02081348

	thumb_func_start sub_02081370
sub_02081370: ; 0x02081370
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #1
	bl sub_02080AB0
	cmp r0, #0
	bne _02081396
	mov r0, #5
	add r1, r4, #0
	bl sub_02080950
	mov r0, #5
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081396
	mov r0, #2
_02081396:
	pop {r4, pc}
	thumb_func_end sub_02081370

	thumb_func_start sub_02081398
sub_02081398: ; 0x02081398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #2
	mov r4, #2
	bl sub_02080AB0
	cmp r0, #0
	bne _020813C0
	mov r0, #6
	add r1, r5, #0
	bl sub_02080950
	mov r0, #6
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _020813C0
	add r0, r4, #0
_020813C0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02081398

	thumb_func_start sub_020813C4
sub_020813C4: ; 0x020813C4
	push {r3, lr}
	mov r3, #0
	bl sub_020813E4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020813C4

	thumb_func_start sub_020813D0
sub_020813D0: ; 0x020813D0
	push {r4, lr}
	mov r4, #1
	cmp r3, #0
	bne _020813DC
	mov r3, #2
	orr r4, r3
_020813DC:
	add r3, r4, #0
	bl sub_020813E4
	pop {r4, pc}
	thumb_func_end sub_020813D0

	thumb_func_start sub_020813E4
sub_020813E4: ; 0x020813E4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_02080758
	cmp r0, #0
	bne _0208141E
	mov r0, #0
	add r1, r5, #0
	bl sub_02080950
	bl sub_02080E24
	bl sub_02080A64
	add r3, r0, #0
	ldr r0, [r3, #0x10]
	mov r1, #4
	str r0, [sp]
	str r4, [sp, #4]
	ldmia r3!, {r2, r3}
	mov r0, #0
	bl sub_020809A8
	cmp r0, #0
	bne _0208141E
	mov r0, #2
_0208141E:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020813E4

	thumb_func_start sub_02081424
sub_02081424: ; 0x02081424
	push {r4, lr}
	add r4, r0, #0
	bl sub_02080A84
	cmp r0, #0
	bne _02081446
	mov r0, #1
	add r1, r4, #0
	bl sub_02080950
	mov r0, #1
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081446
	mov r0, #2
_02081446:
	pop {r4, pc}
	thumb_func_end sub_02081424

	thumb_func_start sub_02081448
sub_02081448: ; 0x02081448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #2
	mov r4, #2
	bl sub_02080AB0
	cmp r0, #0
	bne _02081470
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02080950
	add r0, r4, #0
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081470
	add r0, r4, #0
_02081470:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02081448

	thumb_func_start sub_02081474
sub_02081474: ; 0x02081474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #2
	bl sub_02080AB0
	cmp r0, #0
	bne _02081512
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0208149A
	bl sub_02080E60
	cmp r0, #0
	bne _0208149A
	mov r0, #4
	pop {r3, r4, r5, pc}
_0208149A:
	cmp r4, #0
	bne _020814A2
	mov r0, #6
	pop {r3, r4, r5, pc}
_020814A2:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _020814B2
	ldr r0, [r4]
	cmp r0, #0
	bne _020814B2
	mov r0, #6
	pop {r3, r4, r5, pc}
_020814B2:
	ldrh r2, [r4, #0x14]
	mov r1, #0x2a
	cmp r2, #0
	bne _020814BC
	mov r1, #0
_020814BC:
	ldrh r0, [r4, #0x34]
	add r1, r0, r1
	mov r0, #2
	lsl r0, r0, #8
	cmp r1, r0
	bgt _020814DC
	mov r1, #6
	cmp r2, #0
	bne _020814D0
	mov r1, #0
_020814D0:
	ldrh r0, [r4, #0x36]
	add r1, r0, r1
	mov r0, #2
	lsl r0, r0, #8
	cmp r1, r0
	ble _020814E0
_020814DC:
	mov r0, #6
	pop {r3, r4, r5, pc}
_020814E0:
	add r0, r4, #0
	bl sub_02081514
	mov r0, #7
	add r1, r5, #0
	bl sub_02080950
	add r0, r4, #0
	mov r1, #0x40
	blx sub_0207B090
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _02081502
	ldr r0, [r4]
	blx sub_0207B090
_02081502:
	mov r0, #7
	mov r1, #1
	add r2, r4, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081512
	mov r0, #2
_02081512:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02081474

	thumb_func_start sub_02081514
sub_02081514: ; 0x02081514
	ldrh r1, [r0, #4]
	cmp r1, #0x70
	bls _0208151E
	mov r0, #0
	bx lr
_0208151E:
	ldrh r2, [r0, #0x18]
	cmp r2, #0xa
	blo _0208152C
	mov r1, #0xfa
	lsl r1, r1, #2
	cmp r2, r1
	bls _02081530
_0208152C:
	mov r0, #0
	bx lr
_02081530:
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	blo _0208153A
	cmp r0, #0xe
	bls _0208153E
_0208153A:
	mov r0, #0
	bx lr
_0208153E:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_02081514

	thumb_func_start sub_02081544
sub_02081544: ; 0x02081544
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #2
	bl sub_02080AB0
	cmp r0, #0
	bne _02081592
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0208156A
	bl sub_02080E60
	cmp r0, #0
	bne _0208156A
	mov r0, #4
	pop {r3, r4, r5, pc}
_0208156A:
	bl sub_02080A64
	mov r1, #0x15
	mov r2, #0
	lsl r1, r1, #4
	strh r2, [r0, r1]
	sub r1, r1, #4
	str r2, [r0, r1]
	mov r0, #8
	add r1, r5, #0
	bl sub_02080950
	mov r0, #8
	mov r1, #1
	add r2, r4, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081592
	mov r0, #2
_02081592:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02081544

	thumb_func_start sub_02081594
sub_02081594: ; 0x02081594
	ldr r3, _0208159C ; =sub_02081544
	mov r1, #1
	bx r3
	nop
_0208159C: .word sub_02081544
	thumb_func_end sub_02081594

	thumb_func_start sub_020815A0
sub_020815A0: ; 0x020815A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #7
	bl sub_02080AB0
	cmp r0, #0
	bne _020815C6
	mov r0, #9
	add r1, r4, #0
	bl sub_02080950
	mov r0, #9
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _020815C6
	mov r0, #2
_020815C6:
	pop {r4, pc}
	thumb_func_end sub_020815A0

	thumb_func_start sub_020815C8
sub_020815C8: ; 0x020815C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #3
	mov r1, #2
	mov r2, #3
	mov r3, #5
	bl sub_02080AB0
	cmp r0, #0
	bne _020816AA
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020815F6
	bl sub_02080E60
	cmp r0, #0
	bne _020815F6
	add sp, #0x3c
	mov r0, #4
	pop {r3, r4, r5, r6, pc}
_020815F6:
	cmp r5, #0
	bne _02081600
	add sp, #0x3c
	mov r0, #6
	pop {r3, r4, r5, r6, pc}
_02081600:
	ldr r0, [r5]
	cmp r0, #0
	bne _0208160C
	add sp, #0x3c
	mov r0, #6
	pop {r3, r4, r5, r6, pc}
_0208160C:
	ldrh r1, [r5, #4]
	mov r0, #1
	lsl r0, r0, #0xa
	cmp r1, r0
	bls _0208161C
	add sp, #0x3c
	mov r0, #6
	pop {r3, r4, r5, r6, pc}
_0208161C:
	ldrh r0, [r5, #0x12]
	cmp r0, #0x20
	bls _02081628
	add sp, #0x3c
	mov r0, #6
	pop {r3, r4, r5, r6, pc}
_02081628:
	ldrh r1, [r5, #0x10]
	cmp r1, #0
	beq _02081640
	cmp r1, #1
	beq _02081640
	cmp r1, #2
	beq _02081640
	cmp r1, #3
	beq _02081640
	add sp, #0x3c
	mov r0, #6
	pop {r3, r4, r5, r6, pc}
_02081640:
	ldr r0, _020816B0 ; =0x0000FFFE
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02081658
	ldrh r0, [r5, #0x34]
	cmp r0, #0x20
	bls _02081658
	add sp, #0x3c
	mov r0, #6
	pop {r3, r4, r5, r6, pc}
_02081658:
	mov r0, #0x26
	add r1, r4, #0
	mov r6, #0x26
	bl sub_02080950
	add r4, sp, #0
	ldrh r0, [r5, #6]
	strh r6, [r4]
	add r1, sp, #0xc
	strh r0, [r4, #2]
	ldr r0, [r5]
	mov r2, #6
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0xa]
	add r0, r5, #0
	add r0, #0xa
	blx MI_CpuCopy8
	ldrh r0, [r5, #0x10]
	add r1, sp, #0x14
	add r1, #2
	strh r0, [r4, #0x12]
	ldrh r0, [r5, #0x34]
	mov r2, #0x20
	strh r0, [r4, #0x36]
	ldrh r0, [r5, #0x12]
	add r5, #0x14
	strh r0, [r4, #0x14]
	add r0, r5, #0
	blx MI_CpuCopy8
	add r0, sp, #0
	mov r1, #0x3c
	bl sub_02080A1C
	cmp r0, #0
	bne _020816AA
	mov r0, #2
_020816AA:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_020816B0: .word 0x0000FFFE
	thumb_func_end sub_020815C8

	thumb_func_start sub_020816B4
sub_020816B4: ; 0x020816B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #5
	bl sub_02080AB0
	cmp r0, #0
	bne _020816DA
	mov r0, #0xb
	add r1, r4, #0
	bl sub_02080950
	mov r0, #0xb
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _020816DA
	mov r0, #2
_020816DA:
	pop {r4, pc}
	thumb_func_end sub_020816B4

	thumb_func_start sub_020816DC
sub_020816DC: ; 0x020816DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #1
	mov r1, #2
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02080AB0
	cmp r0, #0
	bne _02081770
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0208170A
	bl sub_02080E60
	cmp r0, #0
	bne _0208170A
	add sp, #0x28
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0208170A:
	cmp r5, #0
	bne _02081714
	add sp, #0x28
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02081714:
	ldrh r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #1
	blx sub_0207B090
	bl sub_02080A64
	mov r2, #0x15
	lsl r2, r2, #4
	mov r1, #0
	strh r1, [r0, r2]
	sub r2, r2, #4
	str r1, [r0, r2]
	mov r0, #0xc
	add r1, r7, #0
	bl sub_02080950
	mov r0, #0xc
	add r1, sp, #0
	strh r0, [r1]
	str r5, [sp, #4]
	cmp r4, #0
	beq _0208174E
	add r0, r4, #0
	add r1, sp, #8
	mov r2, #0x18
	blx MI_CpuCopy8
	b _02081758
_0208174E:
	add r0, sp, #8
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
_02081758:
	str r6, [sp, #0x20]
	add r0, sp, #0x40
	ldrh r1, [r0]
	add r0, sp, #0
	strh r1, [r0, #0x26]
	add r0, sp, #0
	mov r1, #0x28
	bl sub_02080A1C
	cmp r0, #0
	bne _02081770
	mov r0, #2
_02081770:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020816DC

	thumb_func_start sub_02081774
sub_02081774: ; 0x02081774
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02080A64
	add r4, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #7
	mov r2, #9
	mov r3, #8
	bl sub_02080AB0
	cmp r0, #0
	bne _020817F4
	ldr r1, [r4, #4]
	ldrh r0, [r1]
	cmp r0, #7
	beq _020817A6
	cmp r0, #9
	bne _020817D0
_020817A6:
	cmp r5, #1
	blo _020817AE
	cmp r5, #0xf
	bls _020817B4
_020817AE:
	add sp, #8
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_020817B4:
	ldr r7, _020817F8 ; =0x00000182
	add r0, r1, r7
	mov r1, #2
	blx sub_0207B074
	ldr r0, [r4, #4]
	ldrh r1, [r0, r7]
	mov r0, #1
	lsl r0, r5
	tst r0, r1
	bne _020817DA
	add sp, #8
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_020817D0:
	cmp r5, #0
	beq _020817DA
	add sp, #8
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_020817DA:
	mov r0, #0xd
	add r1, r6, #0
	bl sub_02080950
	mov r2, #1
	lsl r2, r5
	mov r0, #0xd
	mov r1, #1
	bl sub_020809A8
	cmp r0, #0
	bne _020817F4
	mov r0, #2
_020817F4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020817F8: .word 0x00000182
	thumb_func_end sub_02081774

	thumb_func_start sub_020817FC
sub_020817FC: ; 0x020817FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02080A64
	ldr r4, [r0, #4]
	mov r0, #2
	mov r1, #7
	mov r2, #8
	bl sub_02080AB0
	cmp r0, #0
	bne _020818F4
	mov r6, #0x62
	lsl r6, r6, #2
	add r0, r4, r6
	mov r1, #2
	blx sub_0207B074
	add r0, r4, #0
	add r0, #0xc6
	mov r1, #2
	blx sub_0207B074
	ldrh r0, [r4, r6]
	cmp r0, #0
	beq _02081848
	add r0, r4, #0
	add r0, #0xc6
	ldrh r0, [r0]
	cmp r0, #1
	beq _02081848
	add sp, #0x48
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02081848:
	add r0, r4, #0
	add r0, #0xc
	mov r1, #4
	blx sub_0207B074
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0208185E
	add sp, #0x48
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0208185E:
	mov r0, #0x3f
	tst r0, r5
	beq _0208186A
	add sp, #0x48
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0208186A:
	add r0, sp, #0x60
	ldrh r6, [r0]
	mov r0, #0x1f
	tst r0, r6
	beq _0208187A
	add sp, #0x48
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0208187A:
	add r0, r4, #0
	add r0, #0x9c
	mov r1, #2
	blx sub_0207B074
	add r4, #0x9c
	ldrh r0, [r4]
	cmp r0, #0
	bne _020818A8
	bl sub_02080FBC
	cmp r5, r0
	bge _0208189A
	add sp, #0x48
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0208189A:
	bl sub_02080F74
	cmp r6, r0
	bge _020818A8
	add sp, #0x48
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_020818A8:
	ldr r1, [sp]
	mov r0, #0xe
	mov r4, #0xe
	bl sub_02080950
	add r6, sp, #8
	mov r0, #0
	add r1, r6, #0
	mov r2, #0x40
	blx MIi_CpuClear32
	add r0, sp, #8
	strh r4, [r0]
	lsr r0, r5, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r7, [sp, #0xc]
	str r0, [sp, #0x14]
	add r0, sp, #0x60
	ldrh r0, [r0]
	add r1, sp, #0x1c
	mov r2, #0x1c
	str r0, [sp, #0x18]
	mov r0, #0
	blx MIi_CpuClear32
	ldr r0, [sp, #0x64]
	add r1, sp, #0x38
	mov r2, #0x10
	blx MIi_CpuCopy32
	add r0, r6, #0
	mov r1, #0x40
	bl sub_02080A1C
	cmp r0, #0
	bne _020818F4
	mov r0, #2
_020818F4:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020817FC

	thumb_func_start sub_020818F8
sub_020818F8: ; 0x020818F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0
	add r1, sp, #0xc
	mov r2, #0x10
	str r3, [sp, #8]
	ldr r4, [sp, #0x34]
	blx MIi_CpuClear32
	ldr r1, _02081958 ; =0x00001E03
	add r0, sp, #0xc
	str r1, [sp, #0xc]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	add r2, sp, #0x30
	ldrh r2, [r2, #8]
	strh r2, [r0, #0xa]
	ldr r2, [sp, #0x3c]
	strb r2, [r0, #0xc]
	ldr r2, [sp, #0x40]
	strb r2, [r0, #0xd]
	ldr r2, [sp, #0x48]
	strb r2, [r0, #0xe]
	ldr r2, [sp, #0x44]
	cmp r2, #0
	beq _0208193E
	cmp r4, #0
	beq _0208193E
	mov r2, #4
	orr r1, r2
	str r1, [sp, #0xc]
	strh r4, [r0, #8]
_0208193E:
	add r0, sp, #0x30
	ldrh r0, [r0]
	ldr r3, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_020817FC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02081958: .word 0x00001E03
	thumb_func_end sub_020818F8

	thumb_func_start sub_0208195C
sub_0208195C: ; 0x0208195C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #0
	add r1, sp, #8
	mov r2, #0x10
	add r7, r3, #0
	blx MIi_CpuClear32
	mov r0, #3
	str r0, [sp, #8]
	add r1, sp, #0x30
	ldrh r2, [r1, #4]
	add r0, sp, #8
	add r3, r7, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldrh r0, [r1]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_020817FC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208195C

	thumb_func_start sub_02081998
sub_02081998: ; 0x02081998
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r5, r2, #0
	add r6, r3, #0
	mov r7, #1
	bl sub_02080A64
	ldr r4, [r0, #4]
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl sub_02080AB0
	cmp r0, #0
	bne _02081A62
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #2
	blx sub_0207B074
	mov r0, #0x62
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _020819F0
	mov r0, #0x62
	lsl r0, r0, #2
	sub r0, r0, #6
	add r0, r4, r0
	mov r1, #2
	blx sub_0207B074
	mov r0, #0x62
	lsl r0, r0, #2
	sub r0, r0, #6
	ldrh r7, [r4, r0]
	add r0, r4, #0
	add r0, #0x86
	mov r1, #2
	blx sub_0207B074
_020819F0:
	cmp r5, #0
	bne _020819FA
	add sp, #0x1c
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_020819FA:
	cmp r7, #0
	bne _02081A04
	add sp, #0x1c
	mov r0, #7
	pop {r4, r5, r6, r7, pc}
_02081A04:
	add r0, r4, #0
	add r0, #0x7c
	mov r1, #2
	mov r7, #2
	blx sub_0207B074
	ldr r0, [r4, #0x7c]
	cmp r5, r0
	bne _02081A1C
	add sp, #0x1c
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081A1C:
	lsl r0, r7, #8
	cmp r6, r0
	bls _02081A28
	add sp, #0x1c
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081A28:
	cmp r6, #0
	bne _02081A32
	add sp, #0x1c
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081A32:
	add r0, r5, #0
	add r1, r6, #0
	blx sub_0207B090
	add r0, sp, #0x30
	ldrh r1, [r0]
	add r2, r5, #0
	add r3, r6, #0
	str r1, [sp]
	ldrh r1, [r0, #4]
	str r1, [sp, #4]
	ldrh r0, [r0, #8]
	mov r1, #7
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	mov r0, #0xf
	bl sub_020809A8
	cmp r0, #0
	bne _02081A62
	add r0, r7, #0
_02081A62:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02081998

	thumb_func_start sub_02081A68
sub_02081A68: ; 0x02081A68
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02080A64
	add r4, r0, #0
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	mov r6, #2
	bl sub_02080AB0
	cmp r0, #0
	bne _02081AAE
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, #0xc
	blx sub_0207B074
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02081A98
	mov r0, #3
	pop {r4, r5, r6, pc}
_02081A98:
	mov r0, #0x10
	add r1, r5, #0
	bl sub_02080950
	mov r0, #0x10
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081AAE
	add r0, r6, #0
_02081AAE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02081A68

	thumb_func_start sub_02081AB0
sub_02081AB0: ; 0x02081AB0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02080A64
	add r6, r0, #0
	mov r0, #1
	mov r1, #8
	bl sub_02080AB0
	cmp r0, #0
	bne _02081B14
	ldr r0, [r6, #4]
	mov r1, #4
	add r0, #0x10
	blx sub_0207B074
	ldr r0, [r6, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _02081AE0
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02081AE0:
	cmp r4, #0x10
	bhs _02081AE8
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02081AE8:
	cmp r5, #0
	bne _02081AF0
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02081AF0:
	add r0, r5, #0
	add r1, r4, #0
	blx sub_0207B090
	mov r0, #0x11
	add r1, r7, #0
	bl sub_02080950
	mov r0, #0x11
	mov r1, #2
	add r2, r5, #0
	add r3, r4, #0
	mov r6, #2
	bl sub_020809A8
	cmp r0, #0
	bne _02081B14
	add r0, r6, #0
_02081B14:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02081AB0

	thumb_func_start sub_02081B18
sub_02081B18: ; 0x02081B18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r1, [sp, #8]
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02080A64
	add r4, r0, #0
	mov r0, #1
	mov r1, #0xb
	bl sub_02080AB0
	cmp r0, #0
	bne _02081B8A
	ldr r0, [r4, #4]
	mov r1, #4
	add r0, #0x10
	blx sub_0207B074
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02081B4E
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_02081B4E:
	ldr r0, _02081B90 ; =0x000005E4
	cmp r5, r0
	bls _02081B5A
	add sp, #0x14
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081B5A:
	add r0, r6, #0
	add r1, r5, #0
	blx sub_0207B090
	mov r0, #0x12
	add r1, r7, #0
	bl sub_02080950
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	mov r2, #6
	blx MI_CpuCopy8
	str r6, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r0, #0x12
	mov r1, #4
	bl sub_020809A8
	cmp r0, #0
	bne _02081B8A
	mov r0, #2
_02081B8A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02081B90: .word 0x000005E4
	thumb_func_end sub_02081B18

	thumb_func_start sub_02081B94
sub_02081B94: ; 0x02081B94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02080A64
	add r5, r0, #0
	mov r0, #1
	mov r1, #0xb
	bl sub_02080AB0
	cmp r0, #0
	bne _02081BD6
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, #0x10
	blx sub_0207B074
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02081BC0
	mov r0, #3
	pop {r3, r4, r5, pc}
_02081BC0:
	mov r0, #0x13
	add r1, r4, #0
	bl sub_02080950
	mov r0, #0x13
	mov r1, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02081BD6
	mov r0, #2
_02081BD6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02081B94

	thumb_func_start sub_02081BD8
sub_02081BD8: ; 0x02081BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r2, [sp, #0xc]
	mov r0, #1
	add r7, r1, #0
	str r0, [sp, #0x14]
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	str r3, [sp, #0x10]
	bl sub_02080AB0
	cmp r0, #0
	beq _02081BF8
	b _02081D9C
_02081BF8:
	cmp r5, #0
	bne _02081C02
	add sp, #0x34
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081C02:
	cmp r7, #0x10
	blo _02081C0C
	add sp, #0x34
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081C0C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02081C18
	add sp, #0x34
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081C18:
	bl sub_02080DD8
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02081C28
	bl sub_02080DFC
	str r0, [sp, #0x14]
_02081C28:
	mov r4, #0x82
	lsl r4, r4, #4
	mov r0, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r6, #0
	blx MIi_CpuClearFast
	add r0, r4, #0
	sub r0, #0x18
	strh r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x16
	strh r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0x14
	strh r6, [r5, r0]
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	sub r1, #0x10
	strh r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0xa
	strh r7, [r5, r0]
	sub r4, #0x12
	ldr r0, [sp, #0x48]
	strh r6, [r5, r4]
	cmp r0, #0
	beq _02081C64
	mov r6, #1
_02081C64:
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldr r4, _02081DA0 ; =0x00000818
	lsl r1, r0
	strh r6, [r5, r4]
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0xc]
	mov r6, #1
	orr r0, r1
	add r1, r4, #0
	sub r1, #0xa
	strh r0, [r5, r1]
	bl MATH_CountPopulation
	sub r1, r4, #6
	strh r0, [r5, r1]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	sub r0, r4, #4
	strh r2, [r5, r0]
	ldrh r1, [r5, r0]
	mov r0, #0x7f
	lsl r0, r0, #2
	cmp r1, r0
	bls _02081CA6
	mov r0, #0
	sub r4, #0xa
	strh r0, [r5, r4]
	add sp, #0x34
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_02081CA6:
	sub r0, r4, #4
	ldrh r0, [r5, r0]
	add r1, r0, #4
	sub r0, r4, #4
	strh r1, [r5, r0]
	add r0, r4, #4
	strh r6, [r5, r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02081D8A
	ldr r1, [sp, #0x14]
	mov r0, #0
	orr r1, r6
	sub r4, #0xa
_02081CC2:
	ldrh r2, [r5, r4]
	add r3, r2, #0
	lsl r2, r0, #9
	and r3, r1
	add r0, r0, #1
	strh r3, [r5, r2]
	cmp r0, #4
	blt _02081CC2
	ldr r1, _02081DA4 ; =0x020820C5
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02080EAC
	ldr r0, _02081DA8 ; =0x00000808
	ldr r7, _02081DA8 ; =0x00000808
	add r0, r5, r0
	str r0, [sp, #0x20]
	ldr r0, _02081DA8 ; =0x00000808
	ldr r6, _02081DA8 ; =0x00000808
	add r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _02081DA8 ; =0x00000808
	mov r4, #0
	str r0, [sp, #0x2c]
	sub r0, #8
	str r0, [sp, #0x2c]
	ldr r0, _02081DA8 ; =0x00000808
	add r7, #0xe
	add r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _02081DA8 ; =0x00000808
	add r6, #0xc
	add r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _02081DA8 ; =0x00000808
	str r0, [sp, #0x30]
	add r0, #0x10
	str r0, [sp, #0x30]
	b _02081D76
_02081D10:
	ldr r0, _02081DA8 ; =0x00000808
	lsl r2, r4, #9
	ldrh r0, [r5, r0]
	add r2, r5, r2
	add r1, r0, #1
	mov r0, #3
	and r1, r0
	ldr r0, [sp, #0x20]
	strh r1, [r0]
	ldr r0, [sp, #0x1c]
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0x14]
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r5, r7]
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r3, [r5, r6]
	ldr r0, _02081DAC ; =0x02082035
	bl sub_02081998
	cmp r0, #7
	bne _02081D60
	lsl r0, r4, #1
	add r2, r5, r0
	ldr r1, _02081DB0 ; =0x0000FFFF
	ldr r0, [sp, #0x2c]
	strh r1, [r2, r0]
	ldr r0, [sp, #0x28]
	ldrh r0, [r5, r0]
	add r1, r0, #1
	mov r0, #3
	and r1, r0
	ldr r0, [sp, #0x24]
	strh r1, [r5, r0]
	b _02081D74
_02081D60:
	cmp r0, #0
	beq _02081D74
	cmp r0, #2
	beq _02081D74
	ldr r0, _02081DB4 ; =0x0000081C
	mov r1, #5
	strh r1, [r5, r0]
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02081D74:
	add r4, r4, #1
_02081D76:
	ldr r0, [sp, #0x30]
	ldrh r0, [r5, r0]
	cmp r0, #1
	beq _02081D82
	mov r0, #1
	b _02081D84
_02081D82:
	mov r0, #2
_02081D84:
	cmp r4, r0
	blt _02081D10
	b _02081D9A
_02081D8A:
	mov r0, #3
	sub r4, #0xe
	strh r0, [r5, r4]
	ldr r1, _02081DB8 ; =0x02082189
	add r0, r7, #0
	add r2, r5, #0
	bl sub_02080EAC
_02081D9A:
	mov r0, #0
_02081D9C:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02081DA0: .word 0x00000818
_02081DA4: .word 0x020820C5
_02081DA8: .word 0x00000808
_02081DAC: .word 0x02082035
_02081DB0: .word 0x0000FFFF
_02081DB4: .word 0x0000081C
_02081DB8: .word 0x02082189
	thumb_func_end sub_02081BD8

	thumb_func_start sub_02081DBC
sub_02081DBC: ; 0x02081DBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _02081DC6
	mov r0, #6
	pop {r4, r5, r6, pc}
_02081DC6:
	ldr r4, _02081DEC ; =0x0000080E
	ldrh r0, [r5, r4]
	cmp r0, #0
	bne _02081DD2
	mov r0, #3
	pop {r4, r5, r6, pc}
_02081DD2:
	add r0, r4, #0
	add r0, #8
	ldrh r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl sub_02080EAC
	strh r6, [r5, r4]
	add r4, #0xe
	strh r6, [r5, r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02081DEC: .word 0x0000080E
	thumb_func_end sub_02081DBC

	thumb_func_start sub_02081DF0
sub_02081DF0: ; 0x02081DF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #2
	mov r1, #9
	mov r2, #0xa
	bl sub_02080AB0
	cmp r0, #0
	beq _02081E0A
	b _02082018
_02081E0A:
	cmp r5, #0
	bne _02081E14
	add sp, #0x20
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02081E14:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02081E20
	add sp, #0x20
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02081E20:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02081E2C
	add sp, #0x20
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02081E2C:
	bl sub_02080DD8
	add r4, r0, #0
	bne _02081E3A
	bl sub_02080DFC
	str r0, [sp, #0x1c]
_02081E3A:
	ldr r0, _0208201C ; =0x0000081C
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _02081E48
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02081E48:
	cmp r0, #1
	beq _02081E56
	cmp r0, #4
	beq _02081E56
	add sp, #0x20
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02081E56:
	mov r1, #5
	str r1, [sp, #0x14]
	cmp r4, #0
	beq _02081E60
	b _02081F6E
_02081E60:
	mov r1, #0
	mov r6, #0
	str r1, [sp, #0x18]
	cmp r0, #4
	bne _02081EE0
	ldr r4, _0208201C ; =0x0000081C
	mov r0, #1
	strh r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x14
	ldrh r0, [r5, r0]
	add r3, r4, #0
	sub r3, #8
	add r1, r0, #3
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r4, #0
	sub r0, #0xe
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0x1c]
	lsl r2, r7, #9
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	sub r0, r4, #6
	ldrh r0, [r5, r0]
	add r1, r5, #0
	add r2, r5, r2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r3, [r5, r3]
	ldr r0, _02082020 ; =0x02082035
	bl sub_02081998
	cmp r0, #7
	bne _02081ECE
	lsl r1, r7, #1
	add r2, r5, r1
	add r1, r4, #0
	ldr r0, _02082024 ; =0x0000FFFF
	sub r1, #0x1c
	strh r0, [r2, r1]
	add r0, r4, #0
	sub r0, #0x12
	ldrh r0, [r5, r0]
	sub r4, #0x12
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	strh r0, [r5, r4]
	b _02081EE0
_02081ECE:
	cmp r0, #0
	beq _02081EE0
	cmp r0, #2
	beq _02081EE0
	ldr r0, [sp, #0x14]
	add sp, #0x20
	strh r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02081EE0:
	ldr r4, _02082028 ; =0x0000080C
	sub r0, r4, #2
	ldrh r1, [r5, r4]
	ldrh r0, [r5, r0]
	cmp r1, r0
	beq _02081F44
	lsl r1, r1, #9
	ldrh r0, [r5, r1]
	mov r6, #1
	lsl r2, r6, #9
	orr r0, r6
	strh r0, [r5, r1]
	ldrh r0, [r5, r4]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #9
	add r0, r5, r0
	blx MIi_CpuCopy16
	ldrh r0, [r5, r4]
	lsl r1, r0, #1
	add r2, r5, r1
	lsl r1, r6, #0xb
	ldrh r2, [r2, r1]
	add r1, r4, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	strh r0, [r5, r4]
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02081F40
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02081F40
	sub r0, r4, #4
	ldrh r0, [r5, r0]
	lsl r0, r0, #9
	ldrh r0, [r5, r0]
	cmp r0, #1
	bne _02081F40
	str r6, [sp, #0x18]
	b _02081F44
_02081F40:
	mov r0, #0
	str r0, [sp, #0x18]
_02081F44:
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl sub_020822B8
	cmp r6, #0
	beq _02082016
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082228
	ldr r0, _0208202C ; =0x00000818
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02082016
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl sub_020822B8
	b _02082016
_02081F6E:
	mov r7, #0
	mov r3, #0
	cmp r0, #4
	bne _02081F7E
	ldr r0, _0208201C ; =0x0000081C
	mov r3, #1
	strh r3, [r5, r0]
	b _02081FC2
_02081F7E:
	ldr r6, _02082028 ; =0x0000080C
	sub r0, r6, #4
	ldrh r1, [r5, r6]
	ldrh r0, [r5, r0]
	cmp r1, r0
	beq _02081FC2
	lsl r2, r1, #9
	ldrh r0, [r5, r2]
	mov r4, #1
	add r1, r0, #0
	tst r1, r4
	bne _02081F9C
	orr r0, r4
	strh r0, [r5, r2]
	b _02081FC2
_02081F9C:
	ldr r1, [sp, #0x10]
	add r0, r5, r2
	lsl r2, r4, #9
	blx MIi_CpuCopy16
	ldrh r0, [r5, r6]
	add r3, r4, #0
	str r7, [sp, #0x14]
	lsl r1, r0, #1
	add r2, r5, r1
	lsl r1, r4, #0xb
	ldrh r2, [r2, r1]
	add r1, r6, #0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #1
	mov r0, #3
	and r0, r1
	strh r0, [r5, r6]
_02081FC2:
	cmp r3, #0
	beq _02082016
	ldr r4, _02082030 ; =0x0000080A
	ldrh r0, [r5, r4]
	add r2, r4, #6
	ldrh r2, [r5, r2]
	lsl r0, r0, #9
	add r6, r5, r0
	add r6, #0x20
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	blx MIi_CpuCopy16
	add r0, r4, #4
	ldrh r0, [r5, r0]
	mov r7, #1
	add r3, r4, #6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc
	ldrh r0, [r5, r0]
	add r1, r5, #0
	add r2, r6, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldrh r3, [r5, r3]
	ldr r0, _02082020 ; =0x02082035
	bl sub_02081998
	ldrh r1, [r5, r4]
	add r2, r1, #1
	mov r1, #3
	and r1, r2
	strh r1, [r5, r4]
	cmp r0, #2
	beq _02082016
	cmp r0, #0
	beq _02082016
	mov r0, #5
	add r4, #0x12
	strh r0, [r5, r4]
	str r7, [sp, #0x14]
_02082016:
	ldr r0, [sp, #0x14]
_02082018:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0208201C: .word 0x0000081C
_02082020: .word 0x02082035
_02082024: .word 0x0000FFFF
_02082028: .word 0x0000080C
_0208202C: .word 0x00000818
_02082030: .word 0x0000080A
	thumb_func_end sub_02081DF0
_02082034:
	.byte 0x38, 0xB5, 0x05, 0x1C, 0xFE, 0xF7, 0x14, 0xFD, 0x69, 0x89, 0x89, 0x00
	.byte 0x41, 0x18, 0x43, 0x20, 0x80, 0x00, 0x0C, 0x58, 0xCC, 0x31, 0x09, 0x68, 0x19, 0x48, 0x81, 0x42
	.byte 0x02, 0xD0, 0x19, 0x48, 0x81, 0x42, 0x2B, 0xD1, 0x00, 0x2C, 0x29, 0xD0, 0x28, 0x6A, 0x84, 0x42
	.byte 0x26, 0xD1, 0xFE, 0xF7, 0xB9, 0xFE, 0x69, 0x88, 0x00, 0x29, 0x10, 0xD1, 0x00, 0x28, 0x1F, 0xD1
	.byte 0x68, 0x8B, 0x12, 0x49, 0x43, 0x10, 0x60, 0x5A, 0x40, 0x00, 0x22, 0x18, 0x08, 0x1C, 0x0A, 0x38
	.byte 0x13, 0x52, 0x60, 0x5A, 0x42, 0x1C, 0x03, 0x20, 0x10, 0x40, 0x60, 0x52, 0x38, 0xBD, 0x0A, 0x29
	.byte 0x0B, 0xD1, 0x00, 0x28, 0x05, 0xD0, 0x09, 0x49, 0x60, 0x5A, 0xC2, 0x1C, 0x03, 0x20, 0x10, 0x40
	.byte 0x60, 0x52, 0x07, 0x48, 0x04, 0x21, 0x21, 0x52, 0x38, 0xBD, 0x05, 0x48, 0x05, 0x21, 0x21, 0x52
	.byte 0x38, 0xBD, 0xC0, 0x46, 0xC5, 0x20, 0x08, 0x02, 0x89, 0x21, 0x08, 0x02, 0x0A, 0x08, 0x00, 0x00
	.byte 0x1C, 0x08, 0x00, 0x00, 0x70, 0xB5, 0x02, 0x1C, 0xD4, 0x69, 0x00, 0x2C, 0x54, 0xD0, 0x50, 0x88
	.byte 0x00, 0x28, 0x4E, 0xD1, 0x90, 0x88, 0x15, 0x28, 0x08, 0xDC, 0x0F, 0xDA, 0x09, 0x28, 0x4B, 0xDC
	.byte 0x07, 0x28, 0x49, 0xDB, 0x14, 0xD0, 0x09, 0x28, 0x17, 0xD0, 0x70, 0xBD, 0x1A, 0x28, 0x43, 0xDC
	.byte 0x19, 0x28, 0x41, 0xDB, 0x40, 0xD0, 0x1A, 0x28, 0x0F, 0xD0, 0x70, 0xBD, 0x51, 0x8A, 0xD2, 0x68
	.byte 0x20, 0x1C, 0x00, 0xF0, 0x91, 0xF8, 0x20, 0x1C, 0x00, 0x21, 0x00, 0xF0, 0xD5, 0xF8, 0x70, 0xBD
	.byte 0x20, 0x1C, 0x00, 0x21, 0x00, 0xF0, 0xD0, 0xF8, 0x70, 0xBD, 0x50, 0x8A, 0x01, 0x25, 0x85, 0x40
	.byte 0xF9, 0xF7, 0xE0, 0xEF, 0xEB, 0x43, 0x1B, 0x04, 0x14, 0x4A, 0x01, 0x1C, 0xA0, 0x5A, 0x1B, 0x0C
	.byte 0x10, 0x32, 0x46, 0x02, 0xA5, 0x5B, 0x1D, 0x40, 0xA5, 0x53, 0xA2, 0x5A, 0x01, 0x2A, 0x07, 0xD1
	.byte 0x42, 0x1C, 0x03, 0x20, 0x10, 0x40, 0x00, 0x04, 0xC2, 0x09, 0xA0, 0x5A, 0x18, 0x40, 0xA0, 0x52
	.byte 0x08, 0x1C, 0xF9, 0xF7, 0xD2, 0xEF, 0x20, 0x1C, 0x00, 0x21, 0x00, 0x25, 0x00, 0xF0, 0xAC, 0xF8
	.byte 0x07, 0x48, 0x20, 0x5A, 0x01, 0x28, 0x07, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0x00, 0xF0, 0xA4, 0xF8
	.byte 0x70, 0xBD, 0x04, 0x48, 0x05, 0x21, 0x21, 0x52, 0x70, 0xBD, 0xC0, 0x46, 0x08, 0x08, 0x00, 0x00
	.byte 0x18, 0x08, 0x00, 0x00, 0x1C, 0x08, 0x00, 0x00, 0xF8, 0xB5, 0x05, 0x1C, 0xEC, 0x69, 0x00, 0x2C
	.byte 0x43, 0xD0, 0x68, 0x88, 0x00, 0x28, 0x3D, 0xD1, 0xA8, 0x88, 0x15, 0x28, 0x07, 0xDC, 0x0D, 0xDA
	.byte 0x09, 0x28, 0x3A, 0xDC, 0x07, 0x28, 0x38, 0xDB, 0x37, 0xD0, 0x09, 0x28, 0xF8, 0xBD, 0x1A, 0x28
	.byte 0x33, 0xDC, 0x19, 0x28, 0x31, 0xDB, 0x30, 0xD0, 0x1A, 0x28, 0xF8, 0xBD, 0xE8, 0x68, 0x2E, 0x8A
	.byte 0x00, 0x90, 0x07, 0x88, 0xFE, 0xF7, 0x08, 0xFE, 0x14, 0x49, 0x61, 0x5A, 0x8E, 0x42, 0x04, 0xD0
	.byte 0x02, 0x21, 0x09, 0x02, 0x8E, 0x42, 0x00, 0xD9, 0x0E, 0x1C, 0x04, 0x2E, 0x1D, 0xD3, 0x01, 0x21
	.byte 0x81, 0x40, 0x38, 0x1C, 0x08, 0x42, 0x18, 0xD0, 0x0D, 0x4F, 0x00, 0x98, 0xE1, 0x5B, 0x32, 0x1C
	.byte 0x49, 0x02, 0x61, 0x18, 0xF6, 0xF7, 0x22, 0xEA, 0x68, 0x8B, 0x42, 0x10, 0xE0, 0x5B, 0x40, 0x00
	.byte 0x21, 0x18, 0x38, 0x1C, 0x08, 0x38, 0x0A, 0x52, 0xE0, 0x5B, 0x41, 0x1C, 0x03, 0x20, 0x08, 0x40
	.byte 0xE0, 0x53, 0xF8, 0xBD, 0x03, 0x48, 0x05, 0x21, 0x21, 0x52, 0xF8, 0xBD, 0x14, 0x08, 0x00, 0x00
	.byte 0x08, 0x08, 0x00, 0x00, 0x1C, 0x08, 0x00, 0x00

	thumb_func_start sub_02082228
sub_02082228: ; 0x02082228
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	lsl r0, r3
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _020822B4 ; =0x0000080E
	str r2, [sp]
	ldrh r1, [r4, r0]
	mov ip, r1
	tst r1, r5
	beq _020822B2
	sub r1, r0, #6
	ldrh r1, [r4, r1]
	lsl r2, r1, #9
	ldrh r2, [r4, r2]
	tst r2, r5
	bne _02082268
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _020822B2
	add r1, r1, #1
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #9
	ldrh r0, [r4, r0]
	tst r0, r5
	beq _020822B2
_02082268:
	lsl r7, r1, #9
	add r6, r4, r7
	add r0, r4, #0
	mov r1, ip
	add r2, r6, #4
	bl sub_020823E8
	add r1, r0, #0
	ldr r0, [sp]
	cmp r0, #0
	beq _0208228A
	mov r2, #0x81
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	blx MIi_CpuCopy16
	b _02082296
_0208228A:
	mov r2, #0x81
	lsl r2, r2, #4
	ldrh r2, [r4, r2]
	mov r0, #0
	blx MIi_CpuClear16
_02082296:
	blx OS_DisableInterrupts
	mvn r2, r5
	lsl r2, r2, #0x10
	ldrh r1, [r6]
	lsr r2, r2, #0x10
	and r1, r2
	add r2, r4, #2
	strh r1, [r6]
	ldrh r1, [r2, r7]
	orr r1, r5
	strh r1, [r2, r7]
	blx OS_RestoreInterrupts
_020822B2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020822B4: .word 0x0000080E
	thumb_func_end sub_02082228

	thumb_func_start sub_020822B8
sub_020822B8: ; 0x020822B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp, #0xc]
	blx OS_DisableInterrupts
	ldr r6, _02082398 ; =0x00000808
	str r0, [sp, #0x14]
	ldrh r1, [r5, r6]
	lsl r1, r1, #9
	ldrh r1, [r5, r1]
	cmp r1, #0
	bne _0208238E
	bl sub_02080DFC
	ldrh r7, [r5, r6]
	str r0, [sp, #0x10]
	mov r0, #3
	add r1, r7, #1
	and r1, r0
	lsl r1, r1, #0x10
	add r6, #0x10
	lsr r4, r1, #0x10
	ldrh r1, [r5, r6]
	cmp r1, #1
	bne _020822F6
	add r1, r4, #1
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _020822F8
_020822F6:
	add r0, r4, #0
_020822F8:
	lsl r6, r0, #9
	mov r2, #2
	mov r0, #0
	add r1, r5, r6
	lsl r2, r2, #8
	blx MIi_CpuClear16
	ldr r3, _0208239C ; =0x0000080E
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldrh r2, [r5, r3]
	orr r0, r1
	and r0, r2
	strh r0, [r5, r6]
	sub r0, r3, #6
	strh r4, [r5, r0]
	ldrh r0, [r5, r3]
	lsl r6, r7, #9
	strh r0, [r5, r6]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0208232C
	ldrh r1, [r5, r6]
	ldr r0, _020823A0 ; =0x0000FFFE
	and r0, r1
	strh r0, [r5, r6]
_0208232C:
	ldr r0, [sp, #0x14]
	blx OS_RestoreInterrupts
	ldr r4, _0208239C ; =0x0000080E
	ldr r0, [sp, #0x10]
	ldrh r1, [r5, r4]
	add r3, r4, #6
	add r2, r5, r6
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #8
	ldrh r0, [r5, r0]
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r3, [r5, r3]
	ldr r0, _020823A4 ; =0x02082035
	bl sub_02081998
	cmp r0, #7
	bne _0208237C
	lsl r0, r7, #1
	add r1, r5, r0
	mov r0, #1
	ldr r2, _020823A8 ; =0x0000FFFF
	lsl r0, r0, #0xb
	strh r2, [r1, r0]
	sub r0, r4, #4
	ldrh r0, [r5, r0]
	add sp, #0x18
	add r1, r0, #1
	mov r0, #3
	and r1, r0
	sub r0, r4, #4
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0208237C:
	cmp r0, #0
	beq _02082392
	cmp r0, #2
	beq _02082392
	mov r0, #5
	add r4, #0xe
	add sp, #0x18
	strh r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0208238E:
	blx OS_RestoreInterrupts
_02082392:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02082398: .word 0x00000808
_0208239C: .word 0x0000080E
_020823A0: .word 0x0000FFFE
_020823A4: .word 0x02082035
_020823A8: .word 0x0000FFFF
	thumb_func_end sub_020822B8
_020823AC:
	.byte 0x70, 0xB5, 0x13, 0x1C
	.byte 0x01, 0x26, 0x0C, 0x1C, 0x9E, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x70, 0xBD, 0x00, 0x2C
	.byte 0x01, 0xD1, 0x00, 0x20, 0x70, 0xBD, 0x21, 0x88, 0x65, 0x88, 0x0A, 0x1C, 0x32, 0x42, 0x01, 0xD1
	.byte 0x00, 0x20, 0x70, 0xBD, 0x2A, 0x1C, 0x32, 0x42, 0x03, 0xD0, 0x22, 0x1D, 0x00, 0xF0, 0x04, 0xF8
	.byte 0x70, 0xBD, 0x00, 0x20, 0x70, 0xBD, 0x00, 0x00

	thumb_func_start sub_020823E8
sub_020823E8: ; 0x020823E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r3
	sub r0, r0, #1
	and r0, r1
	add r4, r2, #0
	bl MATH_CountPopulation
	mov r1, #0x81
	lsl r1, r1, #4
	ldrh r1, [r5, r1]
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020823E8

	thumb_func_start sub_02082408
sub_02082408: ; 0x02082408
	push {r3, lr}
	mov r2, #1
	str r2, [sp]
	ldr r2, _02082418 ; =0x0000FFFF
	mov r3, #2
	bl sub_02081BD8
	pop {r3, pc}
	.align 2, 0
_02082418: .word 0x0000FFFF
	thumb_func_end sub_02082408

	thumb_func_start sub_0208241C
sub_0208241C: ; 0x0208241C
	ldr r3, _02082420 ; =sub_02081DBC
	bx r3
	.align 2, 0
_02082420: .word sub_02081DBC
	thumb_func_end sub_0208241C

	thumb_func_start sub_02082424
sub_02082424: ; 0x02082424
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02080A84
	cmp r0, #0
	bne _0208246C
	cmp r5, #3
	bls _0208243C
	mov r0, #6
	pop {r4, r5, r6, pc}
_0208243C:
	cmp r5, #0
	beq _02082450
	cmp r4, #0
	bne _02082448
	mov r0, #6
	pop {r4, r5, r6, pc}
_02082448:
	add r0, r4, #0
	mov r1, #0x50
	blx sub_0207B090
_02082450:
	mov r0, #0x14
	add r1, r6, #0
	bl sub_02080950
	mov r0, #0x14
	mov r1, #2
	add r2, r5, #0
	add r3, r4, #0
	mov r6, #2
	bl sub_020809A8
	cmp r0, #0
	bne _0208246C
	add r0, r6, #0
_0208246C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02082424

	thumb_func_start sub_02082470
sub_02082470: ; 0x02082470
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02080A84
	cmp r0, #0
	bne _020824BA
	cmp r5, #3
	bls _0208248A
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0208248A:
	cmp r5, #0
	beq _0208249E
	cmp r4, #0
	bne _02082496
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02082496:
	add r0, r4, #0
	mov r1, #0x50
	blx sub_0207B090
_0208249E:
	mov r0, #0x27
	add r1, r7, #0
	bl sub_02080950
	mov r0, #0x27
	mov r1, #3
	add r2, r5, #0
	add r3, r4, #0
	str r6, [sp]
	bl sub_020809A8
	cmp r0, #0
	bne _020824BA
	mov r0, #2
_020824BA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02082470

	thumb_func_start sub_020824BC
sub_020824BC: ; 0x020824BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r0, #2
	mov r1, #7
	mov r2, #9
	add r6, r3, #0
	bl sub_02080AB0
	cmp r0, #0
	bne _02082524
	cmp r5, #0
	bne _020824E0
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_020824E0:
	cmp r4, #0x70
	bls _020824EA
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_020824EA:
	add r0, r5, #0
	ldr r5, _02082528 ; =0x0214ED40
	add r2, r4, #0
	add r1, r5, #0
	blx MIi_CpuCopy16
	add r0, r5, #0
	add r1, r4, #0
	blx sub_0207B090
	mov r0, #0x18
	add r1, r7, #0
	bl sub_02080950
	str r6, [sp]
	add r0, sp, #0x20
	ldrh r1, [r0]
	add r2, r5, #0
	add r3, r4, #0
	str r1, [sp, #4]
	ldrb r0, [r0, #4]
	mov r1, #5
	str r0, [sp, #8]
	mov r0, #0x18
	bl sub_020809A8
	cmp r0, #0
	bne _02082524
	mov r0, #2
_02082524:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02082528: .word 0x0214ED40
	thumb_func_end sub_020824BC

	thumb_func_start sub_0208252C
sub_0208252C: ; 0x0208252C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02080A84
	cmp r0, #0
	bne _0208255E
	cmp r4, #0
	beq _02082546
	cmp r4, #1
	beq _02082546
	mov r0, #6
	pop {r3, r4, r5, pc}
_02082546:
	mov r0, #0x19
	add r1, r5, #0
	bl sub_02080950
	mov r0, #0x19
	mov r1, #1
	add r2, r4, #0
	bl sub_020809A8
	cmp r0, #0
	bne _0208255E
	mov r0, #2
_0208255E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208252C

	thumb_func_start sub_02082560
sub_02082560: ; 0x02082560
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02080A84
	cmp r0, #0
	bne _02082596
	mov r0, #0x1d
	add r1, r5, #0
	bl sub_02080950
	str r4, [sp]
	add r0, sp, #0x20
	ldrh r0, [r0]
	mov r1, #4
	add r2, r6, #0
	str r0, [sp, #4]
	mov r0, #0x1d
	add r3, r7, #0
	bl sub_020809A8
	cmp r0, #0
	bne _02082596
	mov r0, #2
_02082596:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02082560

	thumb_func_start sub_0208259C
sub_0208259C: ; 0x0208259C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02080A64
	mov r0, #1
	mov r1, #2
	bl sub_02080AB0
	cmp r0, #0
	bne _020825E0
	mov r0, #0x1e
	add r1, r7, #0
	bl sub_02080950
	add r1, sp, #0
	mov r0, #0x1e
	strh r0, [r1]
	strh r5, [r1, #2]
	strh r4, [r1, #4]
	strh r6, [r1, #6]
	add r0, sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #8]
	add r0, sp, #0
	mov r1, #0xa
	bl sub_02080A1C
	cmp r0, #0
	bne _020825E0
	mov r0, #2
_020825E0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0208259C
_020825E4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x71, 0x0A, 0x08, 0x02

	thumb_func_start sub_020825EC
sub_020825EC: ; 0x020825EC
	push {r3, lr}
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _020825FC
	blx sub_02082600
	pop {r3, pc}
_020825FC:
	mov r0, #3
	pop {r3, pc}
	thumb_func_end sub_020825EC

