    .include "macros/function.inc"
	.include "overlay106.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy106_21eec80
ovy106_21eec80: ; 0x021EEC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	mov r3, #2
	bl sub_02180FF0
	add r6, r0, #0
	add r1, r5, #0
	strh r4, [r6]
	bl ovy106_21eedfc
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021EEE50
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy106_21eec80

	thumb_func_start ovy106_21eecac
ovy106_21eecac: ; 0x021EECAC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	add r1, r4, #0
	bl sub_021EEE54
	add r0, r4, #0
	mov r1, #1
	bl sub_0218102C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy106_21eecac

	thumb_func_start ovy106_21eecc8
ovy106_21eecc8: ; 0x021EECC8
	push {r3, lr}
	bl sub_0218056C
	bl sub_021B83B4
	pop {r3, pc}
	thumb_func_end ovy106_21eecc8

	thumb_func_start ovy106_21eecd4
ovy106_21eecd4: ; 0x021EECD4
	push {r3, r4, lr}
	sub sp, #4
	bl sub_0218056C
	mov r1, #1
	str r1, [sp]
	add r4, r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8538
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B84A8
	mov r1, #0
	bl sub_021B84F0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy106_21eecd4

	thumb_func_start ovy106_21eed04
ovy106_21eed04: ; 0x021EED04
	push {r3, lr}
	bl sub_0218056C
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r1, [sp]
	bl sub_021B8538
	pop {r3, pc}
	thumb_func_end ovy106_21eed04

	thumb_func_start ovy106_21eed18
ovy106_21eed18: ; 0x021EED18
	push {r4, r5, r6, lr}
	bl sub_0218056C
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021EED24:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EED3E
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021EED3E:
	add r4, r4, #1
	cmp r4, #1
	blt _021EED24
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy106_21eed18

	thumb_func_start ovy106_21eed48
ovy106_21eed48: ; 0x021EED48
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0218056C
	mov r1, #0
	mov r2, #1
	mov r3, #1
	add r5, r0, #0
	mov r4, #0
	bl sub_021B8258
	add r6, r4, #0
	mov r7, #1
_021EED60:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	str r6, [sp]
	bl sub_021B8538
	add r4, r4, #1
	cmp r4, #2
	blt _021EED60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy106_21eed48

	thumb_func_start ovy106_21eed78
ovy106_21eed78: ; 0x021EED78
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0218056C
	mov r1, #0
	mov r2, #1
	mov r3, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_021B8258
	mov r7, #1
	add r5, r4, #0
_021EED90:
	lsl r3, r4, #0x10
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl sub_021B8538
	add r4, r4, #1
	cmp r4, #2
	blt _021EED90
	mov r4, #0
	mov r7, #1
_021EEDAA:
	lsl r3, r5, #0x10
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r1, r4, #0
	bl sub_021B84F0
	add r5, r5, #1
	cmp r5, #2
	blt _021EEDAA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy106_21eed78

	thumb_func_start ovy106_21eedc8
ovy106_21eedc8: ; 0x021EEDC8
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0218056C
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021EEDD6:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EEDF0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEDF0:
	add r4, r4, #1
	cmp r4, #2
	blt _021EEDD6
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy106_21eedc8

	thumb_func_start ovy106_21eedfc
ovy106_21eedfc: ; 0x021EEDFC
	push {r3, r4, r5, r6, r7, lr}
	add r0, r1, #0
	str r1, [sp]
	bl sub_0218056C
	ldr r1, _021EEE48 ; =0x021EEE64
	mov r2, #0
	add r4, r0, #0
	mov r5, #0
	bl sub_021B8598
	ldr r6, _021EEE4C ; =0x021EEE74
	mov r7, #0xc
_021EEE16:
	lsl r2, r5, #0x10
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	add r2, r5, #0
	mul r2, r7
	add r1, r6, r2
	ldr r2, [r6, r2]
	add r5, r5, #1
	str r2, [r0]
	ldr r2, [r1, #4]
	ldr r1, [r1, #8]
	str r2, [r0, #4]
	str r1, [r0, #8]
	cmp r5, #2
	blt _021EEE16
	ldr r0, [sp]
	bl ovy106_21eed04
	ldr r0, [sp]
	bl ovy106_21eed48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE48: .word 0x021EEE64
_021EEE4C: .word 0x021EEE74
	thumb_func_end ovy106_21eedfc

	thumb_func_start sub_021EEE50
sub_021EEE50: ; 0x021EEE50
	bx lr
	.align 2, 0
	thumb_func_end sub_021EEE50

	thumb_func_start sub_021EEE54
sub_021EEE54: ; 0x021EEE54
	bx lr
	.align 2, 0
	thumb_func_end sub_021EEE54
_021EEE58:
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0xAC, 0xEE, 0x1E, 0x02, 0x05, 0x00, 0x00, 0x00, 0x8C, 0xEE, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x51, 0x00
	.byte 0x00, 0x00, 0x1E, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0xEE, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x5C, 0xEE, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEE58
