    .include "macros/function.inc"
	.include "overlay125.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy125_21eec80
ovy125_21eec80: ; 0x021EEC80
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
	mov r3, #0xc
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r6, #0
	str r5, [r4, #4]
	bl sub_0201793C
	mov r1, #0x2a
	bl sub_0200BAC4
	str r0, [r4, #8]
	add r0, r4, #0
	bl ovy125_21eee10
	add r0, r4, #0
	bl ovy125_21eedb8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy125_21eec80

	thumb_func_start ovy125_21eecc8
ovy125_21eecc8: ; 0x021EECC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201749C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	ldr r1, _021EECFC ; =0x0000088F
	add r0, r4, #0
	bl sub_0202EDD4
	add r0, r6, #0
	bl sub_021EEE60
	add r0, r5, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EECFC: .word 0x0000088F
	thumb_func_end ovy125_21eecc8

	thumb_func_start ovy125_21eed00
ovy125_21eed00: ; 0x021EED00
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE6C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy125_21eed00

	thumb_func_start ovy125_21eed10
ovy125_21eed10: ; 0x021EED10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	cmp r5, #0
	bne _021EED30
	bl ovy125_21ef0c0
	add r0, r4, #0
	bl ovy125_21ef0e0
	b _021EED34
_021EED30:
	bl ovy125_21ef134
_021EED34:
	cmp r5, #0
	ldr r0, [r4, #8]
	bne _021EED42
	mov r1, #1
	bl sub_021EF224
	pop {r3, r4, r5, pc}
_021EED42:
	mov r1, #1
	bl sub_021EF22C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy125_21eed10

	thumb_func_start ovy125_21eed4c
ovy125_21eed4c: ; 0x021EED4C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	ldr r2, _021EED68 ; =ovy125_21ef154
	add r0, r4, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r4, pc}
	.align 2, 0
_021EED68: .word ovy125_21ef154
	thumb_func_end ovy125_21eed4c

	thumb_func_start ovy125_21eed6c
ovy125_21eed6c: ; 0x021EED6C
	push {r3, lr}
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	bl ovy125_21eef74
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy125_21eed6c

	thumb_func_start ovy125_21eed80
ovy125_21eed80: ; 0x021EED80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02016AF0
	add r6, r0, #0
	mov r1, #1
	bl sub_0218105C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021804B8
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	add r5, r0, #0
	mov r1, #0
	bl ovy12_2167534
	add r0, r7, #0
	add r1, r5, #0
	lsl r2, r4, #8
	bl ovy125_21ef190
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy125_21eed80

	thumb_func_start ovy125_21eedb8
ovy125_21eedb8: ; 0x021EEDB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF228
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF230
	cmp r0, #0
	bne _021EEE06
	ldr r0, [r5, #4]
	bl sub_021804B8
	mov r1, #0
	mov r6, #0
	bl ovy12_2167a14
	mov r1, #1
	bl ovy12_2167534
	add r0, r5, #0
	bl ovy125_21ef10c
	add r0, r5, #0
	bl ovy125_21ef018
	cmp r4, #0
	bne _021EEE0C
	add r0, r5, #0
	bl ovy125_21ef08c
	ldr r0, [r5]
	add r1, r6, #0
	mov r2, #4
	add r3, r6, #0
	bl sub_021B8258
	pop {r4, r5, r6, pc}
_021EEE06:
	add r0, r5, #0
	bl ovy125_21eefac
_021EEE0C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy125_21eedb8

	thumb_func_start ovy125_21eee10
ovy125_21eee10: ; 0x021EEE10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021EEE5C ; =0x021EF260
	mov r2, #0
	bl ovy36_21b8598
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	bl ovy125_21eee78
	ldr r0, [r4]
	mov r1, #1
	mov r2, #5
	bl ovy125_21eee78
	ldr r0, [r4]
	mov r1, #2
	mov r2, #1
	bl ovy125_21eee78
	ldr r0, [r4]
	mov r1, #3
	mov r2, #3
	bl ovy125_21eee78
	ldr r0, [r4]
	mov r1, #4
	mov r2, #2
	bl ovy125_21eee78
	ldr r0, [r4]
	mov r1, #5
	mov r2, #2
	bl ovy125_21eee78
	pop {r4, pc}
	.align 2, 0
_021EEE5C: .word 0x021EF260
	thumb_func_end ovy125_21eee10

	thumb_func_start sub_021EEE60
sub_021EEE60: ; 0x021EEE60
	ldr r0, [r0]
	ldr r3, _021EEE68 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE68: .word ovy36_21b81bc
	thumb_func_end sub_021EEE60

	thumb_func_start sub_021EEE6C
sub_021EEE6C: ; 0x021EEE6C
	ldr r0, [r0]
	ldr r3, _021EEE74 ; =ovy36_21b83b4
	bx r3
	nop
_021EEE74: .word ovy36_21b83b4
	thumb_func_end sub_021EEE6C

	thumb_func_start ovy125_21eee78
ovy125_21eee78: ; 0x021EEE78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r2, [sp, #4]
	mov r1, #0
	add r2, r5, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_021B8224
	mov r1, #1
	lsl r1, r1, #0x14
	str r1, [r0]
	str r4, [r0, #4]
	str r1, [r0, #8]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8248
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EEEEC
_021EEEB4:
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
	blt _021EEEB4
_021EEEEC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy125_21eee78

	thumb_func_start ovy125_21eeef0
ovy125_21eeef0: ; 0x021EEEF0
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
	thumb_func_end ovy125_21eeef0

	thumb_func_start ovy125_21eef3c
ovy125_21eef3c: ; 0x021EEF3C
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
	thumb_func_end ovy125_21eef3c

	thumb_func_start ovy125_21eef74
ovy125_21eef74: ; 0x021EEF74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy125_21eeef0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy125_21eef74

	thumb_func_start ovy125_21eefac
ovy125_21eefac: ; 0x021EEFAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	bl ovy125_21eef3c
	pop {r4, pc}
	thumb_func_end ovy125_21eefac

	thumb_func_start ovy125_21eefe0
ovy125_21eefe0: ; 0x021EEFE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #1
	add r7, r4, #0
_021EEFF6:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy125_21eeef0
	add r4, r4, #1
	cmp r4, #4
	blo _021EEFF6
	ldr r0, [r5]
	add r1, r6, #0
	mov r2, #4
	bl ovy125_21eef3c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy125_21eefe0

	thumb_func_start ovy125_21ef018
ovy125_21ef018: ; 0x021EF018
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #1
_021EF02C:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy125_21eef3c
	add r4, r4, #1
	cmp r4, #4
	blo _021EF02C
	ldr r0, [r5]
	add r1, r6, #0
	mov r2, #4
	add r3, r6, #0
	bl ovy125_21eeef0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy125_21ef018

	thumb_func_start ovy125_21ef04c
ovy125_21ef04c: ; 0x021EF04C
	push {r3, lr}
	ldr r0, [r0]
	mov r1, #0
	mov r2, #1
	mov r3, #4
	bl ovy36_21b84a8
	bl sub_021B84F4
	pop {r3, pc}
	thumb_func_end ovy125_21ef04c

	thumb_func_start ovy125_21ef060
ovy125_21ef060: ; 0x021EF060
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #2
	add r7, r4, #0
_021EF076:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy125_21eeef0
	add r4, r4, #1
	cmp r4, #1
	blo _021EF076
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy125_21ef060

	thumb_func_start ovy125_21ef08c
ovy125_21ef08c: ; 0x021EF08C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	bl ovy125_21eef3c
	ldr r0, [r4]
	mov r1, #3
	mov r2, #2
	bl ovy125_21eef3c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy125_21ef08c

	thumb_func_start ovy125_21ef0c0
ovy125_21ef0c0: ; 0x021EF0C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	mov r3, #0
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl ovy125_21eeef0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy125_21ef0c0

	thumb_func_start ovy125_21ef0e0
ovy125_21ef0e0: ; 0x021EF0E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #4
	add r7, r4, #0
_021EF0F6:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy125_21eeef0
	add r4, r4, #1
	cmp r4, #2
	blo _021EF0F6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy125_21ef0e0

	thumb_func_start ovy125_21ef10c
ovy125_21ef10c: ; 0x021EF10C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #5
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #5
	mov r2, #1
	bl ovy125_21eef3c
	pop {r4, pc}
	thumb_func_end ovy125_21ef10c

	thumb_func_start ovy125_21ef134
ovy125_21ef134: ; 0x021EF134
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	mov r3, #1
	bl ovy125_21eeef0
	ldr r0, [r4]
	mov r1, #5
	mov r2, #1
	mov r3, #0
	bl ovy125_21eeef0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy125_21ef134

	thumb_func_start ovy125_21ef154
ovy125_21ef154: ; 0x021EF154
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	ldr r1, [r5]
	cmp r1, #0
	beq _021EF174
	cmp r1, #1
	beq _021EF184
	b _021EF18C
_021EF174:
	bl ovy125_21ef04c
	cmp r0, #0
	beq _021EF18C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EF18C
_021EF184:
	bl ovy125_21eefe0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EF18C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy125_21ef154

	thumb_func_start ovy125_21ef190
ovy125_21ef190: ; 0x021EF190
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021804C0
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_021804F0
	add r1, sp, #4
	bl sub_0219A664
	ldr r0, [r5, #4]
	bl sub_02180578
	str r0, [sp]
	ldr r2, _021EF1E0 ; =ovy125_21ef1e4
	add r0, r7, #0
	mov r1, #0x10
	bl sub_021C0870
	add r7, r0, #0
	bl sub_021C08CC
	str r4, [r0, #8]
	ldr r1, [sp, #8]
	mov r2, #0
	str r1, [r0]
	str r6, [r0, #4]
	str r5, [r0, #0xc]
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_021C09E4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF1E0: .word ovy125_21ef1e4
	thumb_func_end ovy125_21ef190

	thumb_func_start ovy125_21ef1e4
ovy125_21ef1e4: ; 0x021EF1E4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, sp, #0
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_021672F8
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_02167308
	ldr r1, [sp, #4]
	ldr r0, [r5]
	cmp r1, r0
	bgt _021EF21E
	ldr r0, [r5, #8]
	bl ovy12_215ea80
	ldr r0, [r5, #0xc]
	bl ovy125_21ef060
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EF21E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy125_21ef1e4

	thumb_func_start sub_021EF224
sub_021EF224: ; 0x021EF224
	str r1, [r0]
	bx lr
	thumb_func_end sub_021EF224

	thumb_func_start sub_021EF228
sub_021EF228: ; 0x021EF228
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021EF228

	thumb_func_start sub_021EF22C
sub_021EF22C: ; 0x021EF22C
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021EF22C

	thumb_func_start sub_021EF230
sub_021EF230: ; 0x021EF230
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021EF230
_021EF234:
	.byte 0x0B, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0xE4, 0xF2, 0x1E, 0x02, 0x16, 0x00, 0x00, 0x00, 0x84, 0xF2, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x54, 0xF2, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x70, 0xF2, 0x1E, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x34, 0xF2, 0x1E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x48, 0xF2, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x38, 0xF2, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x40, 0xF2, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x17, 0x01, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF234
