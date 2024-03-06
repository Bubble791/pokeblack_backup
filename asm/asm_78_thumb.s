	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02079F04
sub_02079F04: ; 0x02079F04
	ldr r0, _02079F0C ; =0x0214C208
	ldrh r0, [r0]
	bx lr
	nop
_02079F0C: .word 0x0214C208
	thumb_func_end sub_02079F04

	thumb_func_start OSi_CommonCallback
OSi_CommonCallback: ; 0x02079F10
	push {r3, lr}
	mov r0, #0x7f
	lsl r0, r0, #8
	and r0, r1
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	cmp r0, #0x10
	bne _02079F28
	ldr r0, _02079F40 ; =0x0214C208
	mov r1, #1
	strh r1, [r0]
	pop {r3, pc}
_02079F28:
	cmp r0, #0x20
	bne _02079F38
	ldr r0, _02079F40 ; =0x0214C208
	mov r1, #1
	strh r1, [r0, #2]
	bl OS_Terminate
	pop {r3, pc}
_02079F38:
	bl OS_Terminate
	pop {r3, pc}
	nop
_02079F40: .word 0x0214C208
	thumb_func_end OSi_CommonCallback

	thumb_func_start OSi_SendToPxi
OSi_SendToPxi: ; 0x02079F44
	push {r4, r5, r6, lr}
	lsl r5, r0, #8
	mov r4, #0xc
	mov r6, #0
_02079F4C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _02079F4C
	pop {r4, r5, r6, pc}
	thumb_func_end OSi_SendToPxi

	thumb_func_start sub_02079F5C
sub_02079F5C: ; 0x02079F5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	cmp r0, #0
	bne _02079F9A
	mov r6, #0
	strb r6, [r5, #2]
	mov r4, #1
	lsl r4, r4, #0xa
	mov r7, #0x80
_02079F6E:
	mov r0, #0xf
	and r0, r6
	orr r0, r7
	strb r0, [r5]
	b _02079F7E
_02079F78:
	add r0, r4, #0
	bl sub_020044F6
_02079F7E:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	cmp r1, r0
	beq _02079F8C
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _02079F78
_02079F8C:
	ldrb r0, [r5, #2]
	add r6, r6, #1
	cmp r0, #0
	beq _02079F6E
	mov r0, #1
	strb r0, [r5, #3]
	pop {r3, r4, r5, r6, r7, pc}
_02079F9A:
	mov r4, #0
	strb r4, [r5, #1]
	mov r7, #1
	mov r6, #3
	lsl r7, r7, #0xa
	lsl r6, r6, #8
_02079FA6:
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	cmp r1, r0
	beq _02079FB8
	ldrb r0, [r5]
	strb r0, [r5, #1]
	ldrb r0, [r5, #1]
	add r4, r4, r0
	b _02079FBE
_02079FB8:
	add r0, r7, #0
	bl sub_020044F6
_02079FBE:
	cmp r4, r6
	blt _02079FA6
	mov r0, #0
	strb r0, [r5, #3]
	mov r0, #1
	strb r0, [r5, #2]
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _02079FE0
	mov r4, #1
	lsl r4, r4, #0xa
_02079FD4:
	add r0, r4, #0
	bl sub_020044F6
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _02079FD4
_02079FE0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02079F5C

	thumb_func_start OS_InitLock
OS_InitLock: ; 0x02079FE4
	push {r4, lr}
	ldr r0, _0207A030 ; =0x0214C20C
	ldr r1, [r0]
	cmp r1, #0
	bne _0207A02C
	mov r1, #1
	str r1, [r0]
	ldr r4, _0207A034 ; =0x02FFFFB0
	sub r0, r1, #2
	str r0, [r4]
	ldr r0, _0207A038 ; =0xFFFF0000
	add r1, r4, #0
	str r0, [r4, #4]
	mov r0, #0
	add r1, #0x10
	mov r2, #0x28
	blx MIi_CpuClear32
	ldr r2, _0207A03C ; =0x04000204
	add r4, #0x40
	ldrh r1, [r2]
	lsr r0, r2, #0xf
	orr r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r4, #0
	bl sub_02079F5C
	mov r0, #1
	add r1, r4, #0
	bl sub_02079F5C
_0207A02C:
	pop {r4, pc}
	nop
_0207A030: .word 0x0214C20C
_0207A034: .word 0x02FFFFB0
_0207A038: .word 0xFFFF0000
_0207A03C: .word 0x04000204
	thumb_func_end OS_InitLock

	thumb_func_start sub_0207A040
sub_0207A040: ; 0x0207A040
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0207A0CC
	cmp r0, #0
	ble _0207A06A
_0207A052:
	mov r0, #1
	lsl r0, r0, #0xa
	bl sub_020044F6
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0207A0CC
	cmp r0, #0
	bgt _0207A052
_0207A06A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A040

	thumb_func_start sub_0207A06C
sub_0207A06C: ; 0x0207A06C
	push {r3, lr}
	mov r3, #0
	bl sub_0207A040
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207A06C

	thumb_func_start sub_0207A078
sub_0207A078: ; 0x0207A078
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrh r1, [r5, #4]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, r1
	beq _0207A08C
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0207A08C:
	cmp r6, #0
	beq _0207A096
	blx OS_DisableInterrupts_IrqAndFiq
	b _0207A09A
_0207A096:
	blx OS_DisableInterrupts
_0207A09A:
	add r7, r0, #0
	mov r0, #0
	strh r0, [r5, #4]
	cmp r4, #0
	beq _0207A0A6
	blx r4
_0207A0A6:
	mov r0, #0
	str r0, [r5]
	cmp r6, #0
	beq _0207A0B6
	add r0, r7, #0
	blx OS_RestoreInterrupts_IrqAndFiq
	b _0207A0BC
_0207A0B6:
	add r0, r7, #0
	blx OS_RestoreInterrupts
_0207A0BC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A078

	thumb_func_start sub_0207A0C0
sub_0207A0C0: ; 0x0207A0C0
	push {r3, lr}
	mov r3, #0
	bl sub_0207A078
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207A0C0

	thumb_func_start sub_0207A0CC
sub_0207A0CC: ; 0x0207A0CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	beq _0207A0E0
	blx OS_DisableInterrupts_IrqAndFiq
	b _0207A0E4
_0207A0E0:
	blx OS_DisableInterrupts
_0207A0E4:
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	blx MI_SwapWord
	str r0, [sp, #4]
	cmp r0, #0
	bne _0207A0FC
	cmp r4, #0
	beq _0207A0FA
	blx r4
_0207A0FA:
	strh r5, [r6, #4]
_0207A0FC:
	cmp r7, #0
	beq _0207A108
	ldr r0, [sp]
	blx OS_RestoreInterrupts_IrqAndFiq
	b _0207A10E
_0207A108:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
_0207A10E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A0CC

	thumb_func_start sub_0207A114
sub_0207A114: ; 0x0207A114
	push {r3, lr}
	mov r3, #0
	bl sub_0207A0CC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0207A114

	thumb_func_start sub_0207A120
sub_0207A120: ; 0x0207A120
	push {r3, lr}
	ldr r1, _0207A130 ; =0x02FFFFE8
	ldr r2, _0207A134 ; =0x0207A169
	mov r3, #1
	bl sub_0207A078
	pop {r3, pc}
	nop
_0207A130: .word 0x02FFFFE8
_0207A134: .word 0x0207A169
	thumb_func_end sub_0207A120

	thumb_func_start sub_0207A138
sub_0207A138: ; 0x0207A138
	ldr r1, _0207A13C ; =sub_0207A120
	bx r1
	.align 2, 0
_0207A13C: .word sub_0207A120
	thumb_func_end sub_0207A138

	thumb_func_start sub_0207A140
sub_0207A140: ; 0x0207A140
	push {r3, lr}
	ldr r1, _0207A150 ; =0x02FFFFE8
	ldr r2, _0207A154 ; =sub_0207A158
	mov r3, #1
	bl sub_0207A0CC
	pop {r3, pc}
	nop
_0207A150: .word 0x02FFFFE8
_0207A154: .word sub_0207A158
	thumb_func_end sub_0207A140

	thumb_func_start sub_0207A158
sub_0207A158: ; 0x0207A158
	ldr r1, _0207A164 ; =0x04000204
	mov r0, #0x80
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	bx lr
	.align 2, 0
_0207A164: .word 0x04000204
	thumb_func_end sub_0207A158

	thumb_func_start sub_0207A168
sub_0207A168: ; 0x0207A168
	ldr r2, _0207A174 ; =0x04000204
	mov r0, #0x80
	ldrh r1, [r2]
	orr r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0207A174: .word 0x04000204
	thumb_func_end sub_0207A168

	thumb_func_start sub_0207A178
sub_0207A178: ; 0x0207A178
	ldr r1, _0207A180 ; =0x02FFFFE0
	ldr r2, _0207A184 ; =sub_0207A1BC
	ldr r3, _0207A188 ; =sub_0207A06C
	bx r3
	.align 2, 0
_0207A180: .word 0x02FFFFE0
_0207A184: .word sub_0207A1BC
_0207A188: .word sub_0207A06C
	thumb_func_end sub_0207A178

	thumb_func_start sub_0207A18C
sub_0207A18C: ; 0x0207A18C
	ldr r1, _0207A194 ; =0x02FFFFE0
	ldr r2, _0207A198 ; =0x0207A1F5
	ldr r3, _0207A19C ; =sub_0207A0C0
	bx r3
	.align 2, 0
_0207A194: .word 0x02FFFFE0
_0207A198: .word 0x0207A1F5
_0207A19C: .word sub_0207A0C0
	thumb_func_end sub_0207A18C

	thumb_func_start sub_0207A1A0
sub_0207A1A0: ; 0x0207A1A0
	ldr r1, _0207A1A4 ; =sub_0207A18C
	bx r1
	.align 2, 0
_0207A1A4: .word sub_0207A18C
	thumb_func_end sub_0207A1A0

	thumb_func_start sub_0207A1A8
sub_0207A1A8: ; 0x0207A1A8
	ldr r1, _0207A1B0 ; =0x02FFFFE0
	ldr r2, _0207A1B4 ; =sub_0207A1BC
	ldr r3, _0207A1B8 ; =sub_0207A114
	bx r3
	.align 2, 0
_0207A1B0: .word 0x02FFFFE0
_0207A1B4: .word sub_0207A1BC
_0207A1B8: .word sub_0207A114
	thumb_func_end sub_0207A1A8

	thumb_func_start sub_0207A1BC
sub_0207A1BC: ; 0x0207A1BC
	ldr r0, _0207A1E4 ; =0x04004010
	ldrh r1, [r0]
	mov r0, #0xc
	and r0, r1
	asr r0, r0, #2
	cmp r0, #2
	bne _0207A1D6
	ldr r2, _0207A1E8 ; =0x040001A4
	mov r0, #2
	ldr r1, [r2]
	lsl r0, r0, #0x1c
	orr r0, r1
	str r0, [r2]
_0207A1D6:
	ldr r2, _0207A1EC ; =0x04000204
	ldr r0, _0207A1F0 ; =0xFFFFF7FF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bx lr
	nop
_0207A1E4: .word 0x04004010
_0207A1E8: .word 0x040001A4
_0207A1EC: .word 0x04000204
_0207A1F0: .word 0xFFFFF7FF
	thumb_func_end sub_0207A1BC

	thumb_func_start sub_0207A1F4
sub_0207A1F4: ; 0x0207A1F4
	ldr r2, _0207A200 ; =0x04000204
	ldrh r1, [r2]
	lsr r0, r2, #0xf
	orr r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0207A200: .word 0x04000204
	thumb_func_end sub_0207A1F4

	thumb_func_start sub_0207A204
sub_0207A204: ; 0x0207A204
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_0207A204

