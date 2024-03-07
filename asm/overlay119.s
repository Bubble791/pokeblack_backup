    .include "macros/function.inc"
	.include "overlay119.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy119_21eec80
ovy119_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #8
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r4, #0
	str r5, [r4, #4]
	bl ovy119_21eed58
	pop {r3, r4, r5, pc}
	thumb_func_end ovy119_21eec80

	thumb_func_start ovy119_21eeca8
ovy119_21eeca8: ; 0x021EECA8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE00
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy119_21eeca8

	thumb_func_start ovy119_21eecc0
ovy119_21eecc0: ; 0x021EECC0
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE0C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy119_21eecc0

	thumb_func_start ovy119_21eecd0
ovy119_21eecd0: ; 0x021EECD0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	cmp r4, #0
	bne _021EECFA
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl ovy119_21ef034
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ovy119_21eef44
	pop {r4, r5, r6, pc}
_021EECFA:
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl ovy119_21eefec
	lsl r1, r5, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl ovy119_21eef90
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy119_21eecd0

	thumb_func_start ovy119_21eed10
ovy119_21eed10: ; 0x021EED10
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy119_21eef24
	ldr r0, _021EED30 ; =0x000008A9
	bl sub_02006254
	pop {r4, pc}
	nop
_021EED30: .word 0x000008A9
	thumb_func_end ovy119_21eed10

	thumb_func_start ovy119_21eed34
ovy119_21eed34: ; 0x021EED34
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy119_21eefd8
	ldr r0, _021EED54 ; =0x000008AA
	bl sub_02006254
	pop {r4, pc}
	nop
_021EED54: .word 0x000008AA
	thumb_func_end ovy119_21eed34

	thumb_func_start ovy119_21eed58
ovy119_21eed58: ; 0x021EED58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEDF4 ; =0x021EF068
	mov r2, #0
	bl ovy36_21b8598
	ldr r4, _021EEDF8 ; =0x021EF078
	add r3, sp, #0x38
	mov r2, #6
_021EED6E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EED6E
	mov r6, sp
	mov r4, #0
	sub r6, r6, #4
	add r7, sp, #0x38
_021EED7E:
	mov r0, #0xc
	mul r0, r4
	add r3, r7, r0
	ldmia r3!, {r0, r1}
	add r2, r6, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	lsl r1, r4, #0x10
	str r0, [r2]
	ldr r3, [r6]
	ldr r0, [r5]
	lsr r1, r1, #0x10
	mov r2, #2
	bl ovy119_21eee18
	add r4, r4, #1
	cmp r4, #4
	blt _021EED7E
	ldr r4, _021EEDFC ; =0x021EF0A8
	add r3, sp, #8
	mov r2, #6
_021EEDA8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EEDA8
	mov r7, sp
	mov r4, #0
	sub r7, r7, #4
_021EEDB6:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	add r0, sp, #8
	add r3, r0, r1
	ldmia r3!, {r0, r1}
	add r2, r7, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, r4, #4
	str r0, [r2]
	lsl r1, r6, #0x10
	ldr r3, [r7]
	ldr r0, [r5]
	lsr r1, r1, #0x10
	mov r2, #2
	bl ovy119_21eee18
	lsl r1, r6, #0x10
	ldr r0, [r5]
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #1
	bl ovy119_21eeea0
	add r4, r4, #1
	cmp r4, #4
	blt _021EEDB6
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEDF4: .word 0x021EF068
_021EEDF8: .word 0x021EF078
_021EEDFC: .word 0x021EF0A8
	thumb_func_end ovy119_21eed58

	thumb_func_start sub_021EEE00
sub_021EEE00: ; 0x021EEE00
	ldr r0, [r0]
	ldr r3, _021EEE08 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE08: .word ovy36_21b81bc
	thumb_func_end sub_021EEE00

	thumb_func_start sub_021EEE0C
sub_021EEE0C: ; 0x021EEE0C
	ldr r0, [r0]
	ldr r3, _021EEE14 ; =ovy36_21b83b4
	bx r3
	nop
_021EEE14: .word ovy36_21b83b4
	thumb_func_end sub_021EEE0C

	thumb_func_start ovy119_21eee18
ovy119_21eee18: ; 0x021EEE18
	push {r0, r1, r2, r3}
	thumb_func_end ovy119_21eee18

	non_word_aligned_thumb_func_start ovy119_21eee1a
ovy119_21eee1a: ; 0x021EEE1A
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x30]
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	add r2, r5, #0
	add r6, r0, #0
	ldr r7, [sp, #0x34]
	mov r4, #0
	bl sub_021B8224
	ldr r1, [sp, #0x2c]
	add r2, r5, #0
	str r1, [r0]
	ldr r1, [sp, #8]
	mov r3, #1
	str r1, [r0, #4]
	str r7, [r0, #8]
	add r0, r6, #0
	mov r1, #0
	bl sub_021B8248
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EEE94
_021EEE5C:
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEE5C
_021EEE94:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy119_21eee1a

	thumb_func_start ovy119_21eeea0
ovy119_21eeea0: ; 0x021EEEA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	add r6, r0, #0
	bl ovy36_21b84a8
	str r0, [sp, #4]
	mov r1, #0
	bl sub_021B84E8
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8538
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy119_21eeea0

	thumb_func_start ovy119_21eeeec
ovy119_21eeeec: ; 0x021EEEEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	add r5, r0, #0
	mov r7, #0
	bl ovy36_21b84a8
	mov r1, #1
	bl sub_021B84E8
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl ovy36_21b8538
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl ovy36_21b8504
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy119_21eeeec

	thumb_func_start ovy119_21eef24
ovy119_21eef24: ; 0x021EEF24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r0, r1, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #0
	bl ovy119_21eeea0
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #0
	bl ovy119_21eeeec
	pop {r3, r4, r5, pc}
	thumb_func_end ovy119_21eef24

	thumb_func_start ovy119_21eef44
ovy119_21eef44: ; 0x021EEF44
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	bl ovy36_21b8538
	add r0, r6, #0
	bl ovy36_21b8580
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	bl ovy36_21b8504
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #1
	bl ovy119_21eeeec
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy119_21eef44

	thumb_func_start ovy119_21eef90
ovy119_21eef90: ; 0x021EEF90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r7, #1
	mov r3, #1
	bl ovy36_21b84a8
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl ovy36_21b8538
	add r0, r6, #0
	bl ovy36_21b8580
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl ovy36_21b8504
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl ovy119_21eeeec
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy119_21eef90

	thumb_func_start ovy119_21eefd8
ovy119_21eefd8: ; 0x021EEFD8
	push {r3, lr}
	add r1, r1, #4
	lsl r1, r1, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	mov r2, #1
	mov r3, #0
	bl ovy119_21eeea0
	pop {r3, pc}
	thumb_func_end ovy119_21eefd8

	thumb_func_start ovy119_21eefec
ovy119_21eefec: ; 0x021EEFEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r7, #1
	mov r3, #1
	bl ovy36_21b84a8
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl ovy36_21b8538
	add r0, r6, #0
	bl ovy36_21b8580
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl ovy36_21b8504
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl ovy119_21eeeec
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy119_21eefec

	thumb_func_start ovy119_21ef034
ovy119_21ef034: ; 0x021EF034
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #4
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #0
	mov r3, #1
	bl ovy119_21eeea0
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #1
	bl ovy119_21eeeec
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy119_21ef034
_021EF058:
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xD8, 0xF0, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x20, 0xF1, 0x1E, 0x02, 0x08, 0x00, 0x00, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x07, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0C, 0x00
	.byte 0x00, 0x80, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x07, 0x00, 0x00, 0x80, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0C, 0x00, 0x00, 0x80, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x07, 0x00, 0x00, 0x80, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00
	.byte 0x00, 0x80, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x80, 0x0B, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x1E, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1E, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x01, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1E, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x58, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x58, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x58, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x58, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF058
