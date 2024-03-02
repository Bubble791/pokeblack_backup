    .include "macros/function.inc"
	.include "overlay123.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy123_21eec80
ovy123_21eec80: ; 0x021EEC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x18
	bl sub_02180FF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	add r0, r6, #0
	str r5, [r4, #4]
	bl sub_0201793C
	mov r1, #0x28
	bl sub_0200BAC4
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	strh r0, [r4, #0x14]
	add r0, r4, #0
	bl ovy123_21eed54
	add r0, r4, #0
	bl ovy123_21eee88
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy123_21eec80

	thumb_func_start ovy123_21eecd8
ovy123_21eecd8: ; 0x021EECD8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE70
	add r0, r4, #0
	mov r1, #1
	bl sub_0218102C
	pop {r4, pc}
	thumb_func_end ovy123_21eecd8

	thumb_func_start ovy123_21eecf0
ovy123_21eecf0: ; 0x021EECF0
	push {r4, lr}
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	bl sub_021EEE7C
	add r4, #0xc
	add r0, r4, #0
	bl ovy123_21eef18
	pop {r4, pc}
	thumb_func_end ovy123_21eecf0

	thumb_func_start ovy123_21eed08
ovy123_21eed08: ; 0x021EED08
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02016AF0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	add r4, r0, #0
	add r1, r4, #0
	lsl r2, r5, #0x10
	add r1, #0xc
	lsr r2, r2, #0x10
	bl ovy123_21eeefc
	cmp r5, #0
	ldr r0, [r4, #8]
	bne _021EED34
	add r1, r6, #0
	bl sub_021EF144
	pop {r4, r5, r6, pc}
_021EED34:
	add r1, r6, #0
	bl sub_021EF14C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy123_21eed08

	thumb_func_start ovy123_21eed3c
ovy123_21eed3c: ; 0x021EED3C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy123_21ef0d8
	pop {r4, pc}
	thumb_func_end ovy123_21eed3c

	thumb_func_start ovy123_21eed54
ovy123_21eed54: ; 0x021EED54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEE68 ; =0x021EF17C
	mov r2, #0
	mov r4, #0
	bl sub_021B8598
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	mov r1, #1
	lsl r1, r1, #0x14
	str r1, [r0]
	str r4, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	add r0, r4, #0
	str r0, [sp, #4]
	mov r7, #1
_021EED98:
	ldr r1, [sp, #4]
	ldr r0, [r5]
	add r2, r1, #0
	add r3, r4, #0
	bl sub_021B84A8
	ldr r1, [sp, #4]
	add r6, r0, #0
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	ldr r0, [sp, #4]
	add r3, r4, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5]
	add r2, r1, #0
	bl sub_021B8538
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021EED98
	ldr r4, _021EEE6C ; =0x021EF18C
	add r3, sp, #0xc
	mov r2, #9
_021EEDD4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EEDD4
	mov r7, #0
_021EEDDE:
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5]
	add r2, r6, #0
	bl sub_021B8224
	ldr r2, [sp, #4]
	mov r1, #0xc
	mul r1, r2
	add r2, sp, #0xc
	add r3, sp, #0xc
	add r2, r2, r1
	ldr r1, [r3, r1]
	mov r3, #1
	str r1, [r0]
	ldr r1, [r2, #4]
	str r1, [r0, #4]
	ldr r1, [r2, #8]
	add r2, r6, #0
	str r1, [r0, #8]
	ldr r0, [r5]
	mov r1, #0
	bl sub_021B8248
	ldr r0, [r5]
	mov r1, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_021B8258
	mov r4, #0
_021EEE22:
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_021B84A8
	str r0, [sp, #8]
	add r1, r7, #0
	bl sub_021B84F0
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_021B84E8
	str r7, [sp]
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_021B8538
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _021EEE22
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #6
	blo _021EEDDE
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE68: .word 0x021EF17C
_021EEE6C: .word 0x021EF18C
	thumb_func_end ovy123_21eed54

	thumb_func_start sub_021EEE70
sub_021EEE70: ; 0x021EEE70
	ldr r0, [r0]
	ldr r3, _021EEE78 ; =sub_021B81BC
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE78: .word sub_021B81BC
	thumb_func_end sub_021EEE70

	thumb_func_start sub_021EEE7C
sub_021EEE7C: ; 0x021EEE7C
	ldr r0, [r0]
	ldr r3, _021EEE84 ; =sub_021B83B4
	bx r3
	nop
_021EEE84: .word sub_021B83B4
	thumb_func_end sub_021EEE7C

	thumb_func_start ovy123_21eee88
ovy123_21eee88: ; 0x021EEE88
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF148
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF150
	add r4, r0, #0
	cmp r6, #1
	bne _021EEEAE
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	mov r2, #1
	bl ovy123_21eefa4
_021EEEAE:
	cmp r4, #1
	bne _021EEEBE
	add r0, r5, #0
	add r0, #0xc
	mov r1, #1
	mov r2, #1
	bl ovy123_21eefa4
_021EEEBE:
	cmp r6, #1
	bne _021EEEF8
	cmp r4, #0
	bne _021EEEF8
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B84A8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8538
	add r0, r4, #0
	bl sub_021B8580
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8504
_021EEEF8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy123_21eee88

	thumb_func_start ovy123_21eeefc
ovy123_21eeefc: ; 0x021EEEFC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r1, #0
	ldr r6, [r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy123_21eefa4
	mov r0, #1
	str r6, [r5]
	str r0, [r5, #4]
	strh r4, [r5, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy123_21eeefc

	thumb_func_start ovy123_21eef18
ovy123_21eef18: ; 0x021EEF18
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021EEF38
	bl ovy123_21eef3c
	cmp r0, #0
	beq _021EEF38
	ldrh r1, [r4, #8]
	add r0, r4, #0
	mov r2, #1
	bl ovy123_21eefa4
	mov r0, #0
	str r0, [r4, #4]
_021EEF38:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy123_21eef18

	thumb_func_start ovy123_21eef3c
ovy123_21eef3c: ; 0x021EEF3C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r0, [r6, #8]
	lsl r1, r0, #2
	ldr r0, _021EEF9C ; =0x021EF15C
	ldr r0, [r0, r1]
	str r0, [sp]
	ldr r0, _021EEFA0 ; =0x021EF164
	ldr r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	bgt _021EEF98
_021EEF58:
	mov r4, #0
_021EEF5A:
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_021B84A8
	add r7, r0, #0
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_021B8520
	add r0, r7, #0
	bl sub_021B84F4
	cmp r0, #0
	bne _021EEF82
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EEF82:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #1
	bls _021EEF5A
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp]
	cmp r5, r0
	ble _021EEF58
_021EEF98:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEF9C: .word 0x021EF15C
_021EEFA0: .word 0x021EF164
	thumb_func_end ovy123_21eef3c

	thumb_func_start ovy123_21eefa4
ovy123_21eefa4: ; 0x021EEFA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #4]
	ldr r4, [r0]
	ldr r0, _021EF0D0 ; =0x021EF164
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r0, [sp, #0xc]
	ldr r0, _021EF0D4 ; =0x021EF15C
	ldr r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #8]
	cmp r6, r0
	bgt _021EF01A
	mov r7, #0
_021EEFC8:
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_021B8258
	mov r5, #0
_021EEFD6:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl sub_021B84A8
	mov r1, #1
	bl sub_021B84E8
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	str r7, [sp]
	bl sub_021B8538
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	str r7, [sp]
	bl sub_021B8504
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021EEFD6
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #8]
	cmp r6, r0
	ble _021EEFC8
_021EF01A:
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	bgt _021EF0CA
	mov r7, #0
_021EF028:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021EF076
	mov r6, #0
_021EF030:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_021B84A8
	str r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_021B84E8
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_021B8538
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	str r7, [sp]
	bl sub_021B8504
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #1
	bls _021EF030
	b _021EF0BE
_021EF076:
	mov r6, #2
_021EF078:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_021B84A8
	str r0, [sp, #0x14]
	mov r1, #0
	bl sub_021B84E8
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_021B8538
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r6, #0
	bl sub_021B8504
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	bls _021EF078
_021EF0BE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	ble _021EF028
_021EF0CA:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF0D0: .word 0x021EF164
_021EF0D4: .word 0x021EF15C
	thumb_func_end ovy123_21eefa4

	thumb_func_start ovy123_21ef0d8
ovy123_21ef0d8: ; 0x021EF0D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r4, #0
	mov r7, #1
_021EF0E6:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r1, r7, #0
	bl sub_021B84E8
	str r6, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	add r4, r4, #1
	cmp r4, #2
	blo _021EF0E6
	ldr r0, [r5]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_021B84A8
	add r1, r6, #0
	bl sub_021B84E8
	str r7, [sp]
	ldr r0, [r5]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_021B8538
	str r6, [sp]
	ldr r0, [r5]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_021B8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy123_21ef0d8

	thumb_func_start sub_021EF144
sub_021EF144: ; 0x021EF144
	str r1, [r0]
	bx lr
	thumb_func_end sub_021EF144

	thumb_func_start sub_021EF148
sub_021EF148: ; 0x021EF148
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021EF148

	thumb_func_start sub_021EF14C
sub_021EF14C: ; 0x021EF14C
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021EF14C

	thumb_func_start sub_021EF150
sub_021EF150: ; 0x021EF150
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021EF150
_021EF154:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0xD4, 0xF1, 0x1E, 0x02
	.byte 0x08, 0x00, 0x00, 0x00, 0x34, 0xF2, 0x1E, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x80, 0x21, 0x00
	.byte 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x80, 0x1D, 0x00, 0x00, 0x00, 0x0E, 0x00
	.byte 0x00, 0x00, 0x1A, 0x00, 0x00, 0x80, 0x23, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x15, 0x00
	.byte 0x00, 0x80, 0x1B, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x20, 0x22, 0x00
	.byte 0x00, 0xC0, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0xE0, 0x1C, 0x00, 0x00, 0xC0, 0x01, 0x00
	.byte 0x00, 0x00, 0x2D, 0x00, 0x16, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x54, 0xF1, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x6C, 0xF1, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x6C, 0xF1, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x6C, 0xF1, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x6C, 0xF1, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x6C, 0xF1, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x6C, 0xF1, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF154
