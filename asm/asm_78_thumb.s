	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02079D10
sub_02079D10: ; 0x02079D10
	ldr r0, _02079D1C ; =0x02FE00A0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
	nop
_02079D1C: .word 0x02FE00A0
	thumb_func_end sub_02079D10

	thumb_func_start sub_02079D20
sub_02079D20: ; 0x02079D20
	push {r4, r5, r6, r7}
	add r5, r1, #0
	mov r3, #0
	add r6, r0, #0
	ldr r1, _02079D80 ; =0x02FE0020
	ldr r2, _02079D84 ; =0x0214C178
	add r0, r3, #0
_02079D2E:
	mov r4, #1
	tst r4, r6
	beq _02079D74
	mov r4, #0
	cmp r3, #8
	blt _02079D4A
	cmp r3, #0xb
	bgt _02079D4A
	add r7, r3, #0
	sub r7, #8
_02079D42:
	mov r4, #0xc
	mul r4, r7
	add r4, r2, r4
	b _02079D68
_02079D4A:
	cmp r3, #0x1c
	blt _02079D58
	cmp r3, #0x1f
	bgt _02079D58
	add r7, r3, #0
	sub r7, #0x18
	b _02079D42
_02079D58:
	cmp r3, #3
	blt _02079D64
	cmp r3, #6
	bgt _02079D64
	add r7, r3, #5
	b _02079D42
_02079D64:
	lsl r7, r3, #2
	str r5, [r1, r7]
_02079D68:
	cmp r4, #0
	beq _02079D74
	str r5, [r4]
	str r0, [r4, #8]
	mov r7, #1
	str r7, [r4, #4]
_02079D74:
	add r3, r3, #1
	lsr r6, r6, #1
	cmp r3, #0x20
	blt _02079D2E
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02079D80: .word 0x02FE0020
_02079D84: .word 0x0214C178
	thumb_func_end sub_02079D20

	thumb_func_start sub_02079D88
sub_02079D88: ; 0x02079D88
	push {r3, r4}
	ldr r4, _02079DDC ; =0x02FE0020
	mov r3, #0
	mov r1, #1
_02079D90:
	add r2, r0, #0
	tst r2, r1
	beq _02079DCC
	cmp r3, #8
	blt _02079DAE
	cmp r3, #0xb
	bgt _02079DAE
	sub r3, #8
	mov r0, #0xc
	add r1, r3, #0
	mul r1, r0
	ldr r0, _02079DE0 ; =0x0214C178
	ldr r0, [r0, r1]
	pop {r3, r4}
	bx lr
_02079DAE:
	cmp r3, #3
	blt _02079DC6
	cmp r3, #6
	bgt _02079DC6
	add r1, r3, #5
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02079DE0 ; =0x0214C178
	ldr r0, [r0, r2]
	pop {r3, r4}
	bx lr
_02079DC6:
	ldr r0, [r4]
	pop {r3, r4}
	bx lr
_02079DCC:
	add r3, r3, #1
	lsr r0, r0, #1
	add r4, r4, #4
	cmp r3, #0x20
	blt _02079D90
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079DDC: .word 0x02FE0020
_02079DE0: .word 0x0214C178
	thumb_func_end sub_02079D88

	thumb_func_start sub_02079DE4
sub_02079DE4: ; 0x02079DE4
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r4, #1
	add r3, #8
	lsl r4, r3
	add r5, r0, #0
	mov r3, #0xc
	ldr r0, _02079E0C ; =0x0214C178
	mul r5, r3
	str r1, [r0, r5]
	ldr r0, _02079E10 ; =0x0214C180
	str r2, [r0, r5]
	add r0, r4, #0
	bl sub_02079E70
	add r1, r4, #0
	and r1, r0
	ldr r0, _02079E14 ; =0x0214C17C
	str r1, [r0, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02079E0C: .word 0x0214C178
_02079E10: .word 0x0214C180
_02079E14: .word 0x0214C17C
	thumb_func_end sub_02079DE4
_02079E18:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xB9, 0x92, 0x76, 0x02

	thumb_func_start sub_02079E20
sub_02079E20: ; 0x02079E20
	push {r3, r4, r5, lr}
	mov r3, #0xc
	add r5, r0, #0
	mul r5, r3
	ldr r3, _02079E44 ; =0x0214C1D8
	mov r4, #1
	str r1, [r3, r5]
	ldr r1, _02079E48 ; =0x0214C1E0
	str r2, [r1, r5]
	add r1, r0, #3
	mov r0, #1
	lsl r0, r1
	bl sub_02079E70
	ldr r0, _02079E4C ; =0x0214C1DC
	str r4, [r0, r5]
	pop {r3, r4, r5, pc}
	nop
_02079E44: .word 0x0214C1D8
_02079E48: .word 0x0214C1E0
_02079E4C: .word 0x0214C1DC
	thumb_func_end sub_02079E20

	thumb_func_start sub_02079E50
sub_02079E50: ; 0x02079E50
	push {r3, r4}
	ldr r4, _02079E6C ; =0x04000208
	mov r1, #0
	ldrh r3, [r4]
	add r2, r4, #0
	add r2, #8
	strh r1, [r4]
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [r4]
	strh r3, [r4]
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079E6C: .word 0x04000208
	thumb_func_end sub_02079E50

	thumb_func_start sub_02079E70
sub_02079E70: ; 0x02079E70
	push {r3, r4}
	ldr r4, _02079E90 ; =0x04000208
	mov r1, #0
	ldrh r3, [r4]
	add r2, r4, #0
	add r2, #8
	strh r1, [r4]
	ldr r1, [r2]
	orr r0, r1
	str r0, [r2]
	ldrh r0, [r4]
	strh r3, [r4]
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	nop
_02079E90: .word 0x04000208
	thumb_func_end sub_02079E70

	thumb_func_start sub_02079E94
sub_02079E94: ; 0x02079E94
	push {r3, r4}
	ldr r2, _02079EB4 ; =0x04000208
	mov r3, #0
	ldrh r1, [r2]
	add r4, r2, #0
	add r4, #8
	strh r3, [r2]
	ldr r3, [r4]
	mvn r0, r0
	and r0, r3
	str r0, [r4]
	ldrh r0, [r2]
	strh r1, [r2]
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079EB4: .word 0x04000208
	thumb_func_end sub_02079E94

	thumb_func_start sub_02079EB8
sub_02079EB8: ; 0x02079EB8
	push {r3, r4}
	ldr r4, _02079ED4 ; =0x04000208
	mov r1, #0
	ldrh r3, [r4]
	add r2, r4, #0
	add r2, #0xc
	strh r1, [r4]
	ldr r1, [r2]
	str r0, [r2]
	ldrh r0, [r4]
	strh r3, [r4]
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_02079ED4: .word 0x04000208
	thumb_func_end sub_02079EB8

	thumb_func_start sub_02079ED8
sub_02079ED8: ; 0x02079ED8
	ldr r3, _02079EF0 ; =0x02FE0000
	ldr r1, _02079EF4 ; =0xFDDB597D
	ldr r0, _02079EF8 ; =0x00003F7C
	ldr r2, _02079EFC ; =0x7BF9DD5B
	str r1, [r3, r0]
	add r0, r0, #4
	add r1, r3, r0
	ldr r0, _02079F00 ; =0x00000800
	sub r0, r1, r0
	str r2, [r0]
	bx lr
	nop
_02079EF0: .word 0x02FE0000
_02079EF4: .word 0xFDDB597D
_02079EF8: .word 0x00003F7C
_02079EFC: .word 0x7BF9DD5B
_02079F00: .word 0x00000800
	thumb_func_end sub_02079ED8
_02079F04:
	.byte 0x01, 0x48, 0x00, 0x88, 0x70, 0x47, 0xC0, 0x46, 0x08, 0xC2, 0x14, 0x02
	.byte 0x08, 0xB5, 0x7F, 0x20, 0x00, 0x02, 0x08, 0x40, 0x00, 0x02, 0x00, 0x0C, 0x10, 0x28, 0x03, 0xD1
	.byte 0x07, 0x48, 0x01, 0x21, 0x01, 0x80, 0x08, 0xBD, 0x20, 0x28, 0x05, 0xD1, 0x04, 0x48, 0x01, 0x21
	.byte 0x41, 0x80, 0x02, 0xF0, 0x1F, 0xFC, 0x08, 0xBD, 0x02, 0xF0, 0x1C, 0xFC, 0x08, 0xBD, 0xC0, 0x46
	.byte 0x08, 0xC2, 0x14, 0x02

	thumb_func_start sub_02079F44
sub_02079F44: ; 0x02079F44
	push {r4, r5, r6, lr}
	lsl r5, r0, #8
	mov r4, #0xc
	mov r6, #0
_02079F4C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0207CA6C
	cmp r0, #0
	bne _02079F4C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02079F44

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

	thumb_func_start sub_02079FE4
sub_02079FE4: ; 0x02079FE4
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
	thumb_func_end sub_02079FE4

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
	blx sub_0207C110
	b _0207A09A
_0207A096:
	blx sub_0207C0E4
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
	blx sub_0207C124
	b _0207A0BC
_0207A0B6:
	add r0, r7, #0
	blx sub_0207C0F8
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
	blx sub_0207C110
	b _0207A0E4
_0207A0E0:
	blx sub_0207C0E4
_0207A0E4:
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	blx sub_02079094
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
	blx sub_0207C124
	b _0207A10E
_0207A108:
	ldr r0, [sp]
	blx sub_0207C0F8
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
	ldr r2, _0207A154 ; =0x0207A159
	mov r3, #1
	bl sub_0207A0CC
	pop {r3, pc}
	nop
_0207A150: .word 0x02FFFFE8
_0207A154: .word 0x0207A159
	thumb_func_end sub_0207A140
_0207A158:
	.byte 0x02, 0x49, 0x80, 0x20, 0x0A, 0x88, 0x82, 0x43
	.byte 0x0A, 0x80, 0x70, 0x47, 0x04, 0x02, 0x00, 0x04, 0x02, 0x4A, 0x80, 0x20, 0x11, 0x88, 0x08, 0x43
	.byte 0x10, 0x80, 0x70, 0x47, 0x04, 0x02, 0x00, 0x04

	thumb_func_start sub_0207A178
sub_0207A178: ; 0x0207A178
	ldr r1, _0207A180 ; =0x02FFFFE0
	ldr r2, _0207A184 ; =0x0207A1BD
	ldr r3, _0207A188 ; =sub_0207A06C
	bx r3
	.align 2, 0
_0207A180: .word 0x02FFFFE0
_0207A184: .word 0x0207A1BD
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
	ldr r2, _0207A1B4 ; =0x0207A1BD
	ldr r3, _0207A1B8 ; =sub_0207A114
	bx r3
	.align 2, 0
_0207A1B0: .word 0x02FFFFE0
_0207A1B4: .word 0x0207A1BD
_0207A1B8: .word sub_0207A114
	thumb_func_end sub_0207A1A8
_0207A1BC:
	.byte 0x09, 0x48, 0x01, 0x88
	.byte 0x0C, 0x20, 0x08, 0x40, 0x80, 0x10, 0x02, 0x28, 0x05, 0xD1, 0x07, 0x4A, 0x02, 0x20, 0x11, 0x68
	.byte 0x00, 0x07, 0x08, 0x43, 0x10, 0x60, 0x05, 0x4A, 0x05, 0x48, 0x11, 0x88, 0x08, 0x40, 0x10, 0x80
	.byte 0x70, 0x47, 0xC0, 0x46, 0x10, 0x40, 0x00, 0x04, 0xA4, 0x01, 0x00, 0x04, 0x04, 0x02, 0x00, 0x04
	.byte 0xFF, 0xF7, 0xFF, 0xFF, 0x02, 0x4A, 0x11, 0x88, 0xD0, 0x0B, 0x08, 0x43, 0x10, 0x80, 0x70, 0x47
	.byte 0x04, 0x02, 0x00, 0x04

	thumb_func_start sub_0207A204
sub_0207A204: ; 0x0207A204
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_0207A204

