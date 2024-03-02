    .include "macros/function.inc"
	.include "overlay112.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy112_21eec80
ovy112_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x10
	bl sub_02180FF0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ovy112_21eee0c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy112_21eec80

	thumb_func_start ovy112_21eecb8
ovy112_21eecb8: ; 0x021EECB8
	push {r3, r4, r5, lr}
	mov r1, #1
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #1
	bne _021EECCE
	bl sub_021EEE00
_021EECCE:
	add r0, r4, #0
	bl sub_021EEEC8
	add r0, r5, #0
	mov r1, #1
	bl sub_0218102C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy112_21eecb8

	thumb_func_start ovy112_21eece0
ovy112_21eece0: ; 0x021EECE0
	push {r3, r4, r5, lr}
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #1
	bne _021EECFC
	bl ovy112_21eed60
	mov r0, #0
	str r0, [r5, #8]
	str r4, [r5, #0xc]
_021EECFC:
	add r0, r5, #0
	bl sub_021EEED4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy112_21eece0

	thumb_func_start ovy112_21eed04
ovy112_21eed04: ; 0x021EED04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02016AD8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020173AC
	add r1, r0, #0
	cmp r1, #3
	bhi _021EED42
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EED34: ; jump table
	.short _021EED3C - _021EED34 - 2 ; case 0
	.short _021EED3C - _021EED34 - 2 ; case 1
	.short _021EED3C - _021EED34 - 2 ; case 2
	.short _021EED3C - _021EED34 - 2 ; case 3
_021EED3C:
	ldr r0, [r4]
	bl ovy112_21eeee0
_021EED42:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy112_21eed04

	thumb_func_start ovy112_21eed44
ovy112_21eed44: ; 0x021EED44
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_02016AF0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	str r4, [r0, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy112_21eed44

	thumb_func_start ovy112_21eed60
ovy112_21eed60: ; 0x021EED60
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r0, [r0, #4]
	bl sub_021804C0
	add r5, r0, #0
	mov r0, #3
	bl sub_02044B84
	ldr r4, _021EEDF4 ; =0x021EEF98
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	mov r6, #0
	bl sub_0204476C
	ldr r1, _021EEDF8 ; =0x00007FFF
	add r2, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	ldr r0, _021EEDFC ; =0x0000012F
	lsr r1, r1, #0x10
	bl sub_0204AA30
	str r6, [sp]
	str r5, [sp, #4]
	mov r1, #4
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #3
	bl sub_02044F90
	mov r0, #8
	mov r1, #1
	bl sub_02046CFC
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EEDF4: .word 0x021EEF98
_021EEDF8: .word 0x00007FFF
_021EEDFC: .word 0x0000012F
	thumb_func_end ovy112_21eed60

	thumb_func_start sub_021EEE00
sub_021EEE00: ; 0x021EEE00
	ldr r3, _021EEE08 ; =sub_02044B84
	mov r0, #3
	bx r3
	nop
_021EEE08: .word sub_02044B84
	thumb_func_end sub_021EEE00

	thumb_func_start ovy112_21eee0c
ovy112_21eee0c: ; 0x021EEE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r2, #0
	str r2, [sp, #8]
	ldr r0, [r5]
	ldr r1, _021EEEBC ; =0x021EEF78
	mov r2, #0
	bl sub_021B8598
_021EEE20:
	ldr r0, [sp, #8]
	ldr r2, [sp, #8]
	lsl r1, r0, #2
	ldr r0, _021EEEC0 ; =0x021EEF88
	lsl r2, r2, #0x10
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	lsr r2, r2, #0x10
	bl sub_021B8224
	mov r1, #0xba
	lsl r1, r1, #0xe
	str r1, [r0]
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	ldr r1, _021EEEC4 ; =0x02FB8000
	ldr r2, [sp, #8]
	str r1, [r0, #8]
	lsl r2, r2, #0x10
	ldr r0, [r5]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_021B8248
	ldr r2, [sp, #8]
	ldr r0, [r5]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8258
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EEEAE
	ldr r0, [sp, #8]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021EEE76:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	mov r0, #0
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEE76
_021EEEAE:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021EEE20
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEEBC: .word 0x021EEF78
_021EEEC0: .word 0x021EEF88
_021EEEC4: .word 0x02FB8000
	thumb_func_end ovy112_21eee0c

	thumb_func_start sub_021EEEC8
sub_021EEEC8: ; 0x021EEEC8
	ldr r0, [r0]
	ldr r3, _021EEED0 ; =sub_021B81BC
	mov r1, #0
	bx r3
	.align 2, 0
_021EEED0: .word sub_021B81BC
	thumb_func_end sub_021EEEC8

	thumb_func_start sub_021EEED4
sub_021EEED4: ; 0x021EEED4
	ldr r0, [r0]
	ldr r3, _021EEEDC ; =sub_021B83B4
	bx r3
	nop
_021EEEDC: .word sub_021B83B4
	thumb_func_end sub_021EEED4

	thumb_func_start ovy112_21eeee0
ovy112_21eeee0: ; 0x021EEEE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _021EEF54 ; =0x021EEF88
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r2, r5, #0
	str r1, [sp, #4]
	mov r1, #0
	mov r3, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EEF4E
_021EEF02:
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B8504
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84E8
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEF02
_021EEF4E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEF54: .word 0x021EEF88
	thumb_func_end ovy112_21eeee0
_021EEF58:
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xF8, 0xEF, 0x1E, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0xB8, 0xEF, 0x1E, 0x02, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0xEF, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x58, 0xEF, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x60, 0xEF, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x70, 0xEF, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2C, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2C, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2C, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEF58
