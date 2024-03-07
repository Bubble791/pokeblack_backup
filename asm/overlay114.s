    .include "macros/function.inc"
	.include "overlay114.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy114_21eec80
ovy114_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #8
	bl ovy36_2180ff0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r4, #0
	bl ovy114_21eee0c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy114_21eec80

	thumb_func_start ovy114_21eecb0
ovy114_21eecb0: ; 0x021EECB0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEEDC
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy114_21eecb0

	thumb_func_start ovy114_21eecc8
ovy114_21eecc8: ; 0x021EECC8
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEEE8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy114_21eecc8

	thumb_func_start ovy114_21eecd8
ovy114_21eecd8: ; 0x021EECD8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #4
	mov r3, #1
	bl sub_021B8258
	add r2, r5, #1
	lsl r2, r2, #0x10
	ldr r0, [r4]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_021B8258
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy114_21eecd8

	thumb_func_start ovy114_21eed34
ovy114_21eed34: ; 0x021EED34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	str r1, [sp, #4]
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	mov r5, #0
	add r4, r0, #0
	add r6, r5, #0
_021EED52:
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r7, #0
	bl ovy36_21b8580
	ldr r1, [sp, #4]
	cmp r1, #1
	bne _021EED84
	str r0, [sp]
	b _021EED86
_021EED84:
	str r6, [sp]
_021EED86:
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add r5, r5, #1
	cmp r5, #1
	blo _021EED52
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy114_21eed34

	thumb_func_start ovy114_21eeda0
ovy114_21eeda0: ; 0x021EEDA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	mov r4, #0
_021EEDBA:
	lsl r3, r4, #0x10
	ldr r0, [r6]
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r6]
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	cmp r7, #1
	bne _021EEDE8
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	b _021EEDEC
_021EEDE8:
	ldr r1, _021EEE08 ; =0xFFFFF000
	add r0, r5, #0
_021EEDEC:
	bl sub_021B84E4
	add r0, r5, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r5, #0
	mov r1, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #1
	blo _021EEDBA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE08: .word 0xFFFFF000
	thumb_func_end ovy114_21eeda0

	thumb_func_start ovy114_21eee0c
ovy114_21eee0c: ; 0x021EEE0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021EEED8 ; =0x021EEEF8
	mov r2, #0
	mov r5, #0
	bl ovy36_21b8598
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	mov r1, #0xd
	lsl r1, r1, #0x10
	str r1, [r0]
	mov r1, #2
	str r5, [r0, #4]
	lsl r1, r1, #0x10
	str r1, [r0, #8]
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	mov r6, #1
_021EEE50:
	lsl r3, r5, #0x10
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_021B84E8
	mov r0, #0
	str r0, [sp]
	lsl r3, r5, #0x10
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r5, r5, #1
	cmp r5, #1
	blo _021EEE50
	mov r0, #0xe
	lsl r0, r0, #0x10
	lsr r0, r0, #1
	mov r7, #0
	str r0, [sp, #4]
_021EEE90:
	lsl r0, r6, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_021B8224
	mov r1, #0xe
	lsl r1, r1, #0x10
	str r1, [r0]
	ldr r1, [sp, #4]
	str r7, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4]
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8248
	cmp r5, #4
	ldr r0, [r4]
	bne _021EEEC4
	add r1, r7, #0
	add r2, r5, #0
	add r3, r7, #0
	b _021EEECA
_021EEEC4:
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
_021EEECA:
	bl sub_021B8258
	add r6, r6, #1
	cmp r6, #4
	ble _021EEE90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEED8: .word 0x021EEEF8
	thumb_func_end ovy114_21eee0c

	thumb_func_start sub_021EEEDC
sub_021EEEDC: ; 0x021EEEDC
	ldr r0, [r0]
	ldr r3, _021EEEE4 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEEE4: .word ovy36_21b81bc
	thumb_func_end sub_021EEEDC

	thumb_func_start sub_021EEEE8
sub_021EEEE8: ; 0x021EEEE8
	ldr r0, [r0]
	ldr r3, _021EEEF0 ; =ovy36_21b83b4
	bx r3
	nop
_021EEEF0: .word ovy36_21b83b4
	thumb_func_end sub_021EEEE8
_021EEEF4:
	.byte 0x01, 0x00, 0x00, 0x00, 0x08, 0xEF, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x50, 0xEF, 0x1E, 0x02, 0x05, 0x00, 0x00, 0x00, 0x2D, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2D, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2D, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D, 0x01, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2D, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xEE, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEEF4
