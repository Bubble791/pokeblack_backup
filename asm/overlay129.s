    .include "macros/function.inc"
	.include "overlay129.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy129_21eec80
ovy129_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_0218056C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r3, #0x30
	bl sub_02180FF0
	add r0, r4, #0
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	add r0, r4, #0
	str r4, [r6, #4]
	bl sub_0218056C
	str r0, [r6]
	ldr r1, _021EED3C ; =0x021EFD30
	add r0, r5, #0
	mov r2, #0
	mov r4, #0
	bl sub_021B8598
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	add r6, r4, #0
_021EECD6:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	add r1, r6, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r6, [sp]
	bl sub_021B8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	add r1, r6, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	str r6, [sp]
	bl sub_021B8538
	add r4, r4, #1
	cmp r4, #3
	blt _021EECD6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED3C: .word 0x021EFD30
	thumb_func_end ovy129_21eec80

	thumb_func_start ovy129_21eed40
ovy129_21eed40: ; 0x021EED40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0218056C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218102C
	add r0, r4, #0
	mov r1, #0
	bl sub_021B81BC
	pop {r3, r4, r5, pc}
	thumb_func_end ovy129_21eed40

	thumb_func_start ovy129_21eed5c
ovy129_21eed5c: ; 0x021EED5C
	push {r3, lr}
	bl sub_0218056C
	bl sub_021B83B4
	pop {r3, pc}
	thumb_func_end ovy129_21eed5c

	thumb_func_start ovy129_21eed68
ovy129_21eed68: ; 0x021EED68
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0218056C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804C0
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #1
	mov r3, #0x30
	bl sub_02180FF0
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	add r5, r0, #0
	ldr r0, _021EEE8C ; =0x000002B9
	add r1, r7, #0
	str r0, [sp]
	ldr r0, _021EEE90 ; =0x00007FFF
	ldr r3, _021EEE94 ; =0x021F0120
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #0x66
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r5, #0x2c]
	add r0, r6, #0
	str r6, [r5, #4]
	bl sub_0218056C
	str r0, [r5]
	ldr r1, _021EEE98 ; =0x021EFD10
	add r0, r4, #0
	mov r2, #0
	mov r6, #0
	bl sub_021B80B4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	add r5, r6, #0
_021EEDE6:
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	str r5, [sp]
	bl sub_021B8538
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	str r5, [sp]
	bl sub_021B8538
	add r6, r6, #1
	cmp r6, #3
	blt _021EEDE6
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	mov r7, #0
_021EEE56:
	lsl r3, r5, #0x10
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r5, #0x10
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #2
	lsr r3, r3, #0x10
	str r7, [sp]
	bl sub_021B8538
	add r5, r5, #1
	cmp r5, #2
	blo _021EEE56
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE8C: .word 0x000002B9
_021EEE90: .word 0x00007FFF
_021EEE94: .word 0x021F0120
_021EEE98: .word 0x021EFD10
	thumb_func_end ovy129_21eed68

	thumb_func_start ovy129_21eee9c
ovy129_21eee9c: ; 0x021EEE9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0218056C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #0x2c]
	bl sub_0203A24C
	add r0, r5, #0
	mov r1, #1
	bl sub_0218102C
	add r0, r4, #0
	mov r1, #0
	bl sub_021B81BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy129_21eee9c

	thumb_func_start ovy129_21eeec8
ovy129_21eeec8: ; 0x021EEEC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	mov r1, #1
	mov r7, #1
	bl sub_0218105C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0218056C
	ldr r6, [r5, #0x2c]
	mov r5, #0x65
	lsl r5, r5, #2
	add r4, r0, #0
	ldrb r0, [r6, r5]
	cmp r0, #0
	beq _021EEEF0
	cmp r0, #1
	beq _021EEEF2
_021EEEF0:
	b _021EF064
_021EEEF2:
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r6, r0]
	lsl r1, r7, #0xc
	bl sub_02015C48
	cmp r0, #0
	beq _021EEF04
	b _021EF04A
_021EEF04:
	add r0, r5, #0
	sub r0, #0x10
	add r7, sp, #0x14
	ldr r0, [r6, r0]
	add r1, r7, #0
	bl sub_02015CD0
	add r1, r5, #0
	sub r1, #0xc
	add r0, r7, #0
	add r1, r6, r1
	add r2, r7, #0
	bl VEC_Add
	ldr r0, [r6]
	add r1, r7, #0
	bl sub_02167308
	add r0, r5, #1
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _021EEFB0
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_021B8224
	add r7, r0, #0
	add r1, sp, #8
	ldr r0, [r6]
	str r1, [sp, #4]
	bl sub_021672F8
	ldr r2, [sp, #4]
	mov r3, #0
	ldmia r2!, {r0, r1}
	stmia r7!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp, #4]
	str r0, [r7]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl sub_021B8520
	mov r1, #3
	lsl r1, r1, #0xe
	cmp r0, r1
	bne _021EEF88
	add r0, r5, #1
	ldrb r0, [r6, r0]
	cmp r0, #2
	ldr r0, [r6]
	bne _021EEF78
	sub r5, #0x1e
	add r1, r5, #0
	b _021EEF7A
_021EEF78:
	mov r1, #0x7b
_021EEF7A:
	bl sub_02167DE8
	mov r1, #2
	ldr r0, [r6]
	lsl r1, r1, #0xe
	bl sub_02166FE8
_021EEF88:
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r5, #0
	mov r7, #2
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #1
	bne _021EEFB0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, _021EF070 ; =0x00000195
	strb r5, [r6, r0]
_021EEFB0:
	mov r5, #0x61
	lsl r5, r5, #2
	ldr r0, [r6, r5]
	bl sub_02015CCC
	asr r1, r0, #0xc
	add r0, r5, #0
	add r0, #0xa6
	cmp r1, r0
	beq _021EEFCC
	ldr r0, _021EF074 ; =0x00000343
	cmp r1, r0
	beq _021EEFD8
	b _021EF05E
_021EEFCC:
	add r0, r5, #0
	add r0, #0x11
	ldrb r0, [r6, r0]
	add r5, #0x11
	add r0, r0, #1
	strb r0, [r6, r5]
_021EEFD8:
	ldr r0, _021EF070 ; =0x00000195
	mov r2, #2
	ldrb r1, [r6, r0]
	mov r5, #0
	add r1, r1, #1
	strb r1, [r6, r0]
	add r0, r4, #0
	mov r1, #0
	bl sub_021B8224
	add r1, r0, #0
	ldr r0, [r6]
	bl sub_021672F8
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl sub_021B8258
_021EF000:
	lsl r3, r5, #0x10
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84E8
	mov r0, #1
	lsl r3, r5, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_021B8538
	mov r0, #0
	lsl r3, r5, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_021B8504
	add r5, r5, #1
	cmp r5, #2
	blo _021EF000
	b _021EF05E
_021EF04A:
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r6, r0]
	bl sub_02015C10
	add r0, r5, #0
	mov r1, #0
	sub r0, #0x10
	str r1, [r6, r0]
	strb r1, [r6, r5]
_021EF05E:
	ldr r0, [r6]
	bl sub_021671C4
_021EF064:
	add r0, r4, #0
	bl sub_021B83B4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF070: .word 0x00000195
_021EF074: .word 0x00000343
	thumb_func_end ovy129_21eeec8

	thumb_func_start ovy129_21ef078
ovy129_21ef078: ; 0x021EF078
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r6, r0, #0
	mov r1, #1
	bl sub_0218105C
	ldr r5, [r0, #0x2c]
	add r0, r6, #0
	bl sub_021804C0
	mov r4, #6
	add r1, r5, #4
	lsl r4, r4, #6
	str r1, [sp]
	add r1, r4, #0
	sub r1, #0x4f
	mov r2, #3
	mov r3, #0xa
	str r4, [sp, #4]
	bl sub_02015B34
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_021804B8
	add r1, r7, #0
	bl sub_02167A14
	str r0, [r5]
	cmp r0, #0
	beq _021EF0FE
	mov r1, #1
	lsl r1, r1, #0xf
	bl sub_02166FE8
	add r1, r4, #0
	add r1, #8
	ldr r0, [r5]
	add r1, r5, r1
	bl sub_021672F8
	add r0, r4, #4
	add r6, sp, #8
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02015CD0
	add r1, r4, #0
	add r1, #8
	add r0, r6, #0
	add r1, r5, r1
	add r2, r6, #0
	bl VEC_Add
	ldr r0, [r5]
	add r1, r6, #0
	bl sub_02167308
	add r1, r4, #0
	add r1, #0x14
	mov r0, #1
	strb r0, [r5, r1]
	mov r0, #0
	add r4, #0x15
	strb r0, [r5, r4]
_021EF0FE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef078

	thumb_func_start ovy129_21ef104
ovy129_21ef104: ; 0x021EF104
	push {r4, lr}
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	ldr r1, [r0, #0x2c]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021EF11C
	mov r4, #0
_021EF11C:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy129_21ef104

	thumb_func_start ovy129_21ef120
ovy129_21ef120: ; 0x021EF120
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl sub_0218105C
	ldr r0, [r0, #0x2c]
	add r1, r4, #0
	bl ovy129_21ef134
	pop {r4, pc}
	thumb_func_end ovy129_21ef120

	thumb_func_start ovy129_21ef134
ovy129_21ef134: ; 0x021EF134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	bl sub_021804C0
	add r7, r0, #0
	add r4, sp, #0x18
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_021672F8
	mov r1, #0
	mov r0, #0x16
	lsl r0, r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r1, [sp, #8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r6, sp, #0xc
	ldr r0, [r5]
	add r1, r6, #0
	add r2, sp, #8
	bl sub_0215E8C8
	ldr r0, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl sub_02180578
	str r0, [sp, #4]
	ldr r2, _021EF1B0 ; =ovy129_21ef1b4
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_021C0870
	add r7, r0, #0
	bl sub_021C08CC
	add r2, r0, #0
	ldr r0, [r5]
	add r3, r2, #4
	str r0, [r2]
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r2, #0x10
	str r0, [r3]
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [sp, #4]
	mov r2, #0
	bl sub_021C09E4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF1B0: .word ovy129_21ef1b4
	thumb_func_end ovy129_21ef134

	thumb_func_start ovy129_21ef1b4
ovy129_21ef1b4: ; 0x021EF1B4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, sp, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_021672F8
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #4]
	cmp r1, r0
	ble _021EF1DE
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_02167308
	b _021EF208
_021EF1DE:
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #8]
	ldr r0, [r5]
	bl sub_02167078
	add r2, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_02167BCC
	mov r1, #2
	ldr r0, [r5]
	lsl r1, r1, #0xe
	bl sub_02166FF0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021EF208:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef1b4

	thumb_func_start ovy129_21ef210
ovy129_21ef210: ; 0x021EF210
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0218056C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804C0
	ldr r1, _021EF324 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	add r7, r2, #0
	orr r7, r0
	lsl r2, r7, #0x10
	add r0, r6, #0
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #0x30
	bl sub_02180FF0
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	add r5, r0, #0
	ldr r0, _021EF328 ; =0x00000478
	ldr r3, _021EF32C ; =0x021F0120
	str r0, [sp]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r5, #0x2c]
	add r0, r6, #0
	str r6, [r5, #4]
	bl sub_0218056C
	str r0, [r5]
	ldr r1, _021EF330 ; =0x021EFD20
	add r0, r4, #0
	mov r2, #0
	mov r6, #0
	bl sub_021B80B4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	add r5, r6, #0
_021EF288:
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	str r5, [sp]
	bl sub_021B8538
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	lsr r3, r3, #0x10
	str r5, [sp]
	bl sub_021B8538
	add r6, r6, #1
	cmp r6, #3
	blt _021EF288
	mov r7, #0
_021EF2EC:
	lsl r3, r5, #0x10
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r5, #0x10
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #2
	lsr r3, r3, #0x10
	str r7, [sp]
	bl sub_021B8538
	add r5, r5, #1
	cmp r5, #3
	blt _021EF2EC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF324: .word 0x00007FFF
_021EF328: .word 0x00000478
_021EF32C: .word 0x021F0120
_021EF330: .word 0x021EFD20
	thumb_func_end ovy129_21ef210

	thumb_func_start ovy129_21ef334
ovy129_21ef334: ; 0x021EF334
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0218056C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #0x2c]
	bl sub_0203A24C
	add r0, r5, #0
	mov r1, #1
	bl sub_0218102C
	add r0, r4, #0
	mov r1, #0
	bl sub_021B81BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef334

	thumb_func_start ovy129_21ef360
ovy129_21ef360: ; 0x021EF360
	push {r3, lr}
	bl sub_0218056C
	bl sub_021B83B4
	pop {r3, pc}
	thumb_func_end ovy129_21ef360

	thumb_func_start ovy129_21ef36c
ovy129_21ef36c: ; 0x021EF36C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x30
	bl sub_02180FF0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	add r0, r4, #0
	bl ovy129_21ef410
	pop {r3, r4, r5, pc}
	thumb_func_end ovy129_21ef36c

	thumb_func_start ovy129_21ef39c
ovy129_21ef39c: ; 0x021EF39C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EF4C0
	add r0, r4, #0
	mov r1, #1
	bl sub_0218102C
	pop {r4, pc}
	thumb_func_end ovy129_21ef39c

	thumb_func_start ovy129_21ef3b4
ovy129_21ef3b4: ; 0x021EF3B4
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EF4CC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef3b4

	thumb_func_start ovy129_21ef3c4
ovy129_21ef3c4: ; 0x021EF3C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r0, r4, #0
	bl ovy129_21ef67c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef3c4

	thumb_func_start ovy129_21ef3dc
ovy129_21ef3dc: ; 0x021EF3DC
	push {r4, r5, r6, lr}
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	mov r5, #0
	bl sub_021B8258
	mov r6, #2
_021EF3FA:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy129_21ef51c
	add r5, r5, #1
	cmp r5, #2
	blt _021EF3FA
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef3dc

	thumb_func_start ovy129_21ef410
ovy129_21ef410: ; 0x021EF410
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6]
	ldr r1, _021EF4B4 ; =0x021EFD00
	mov r2, #0
	mov r5, #0
	bl sub_021B80B4
_021EF422:
	ldr r0, _021EF4B8 ; =0x021EFD40
	lsl r1, r5, #2
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r6]
	add r2, r5, #0
	bl sub_021B8224
	mov r1, #0xc
	add r3, r5, #0
	mul r3, r1
	ldr r2, _021EF4BC ; =0x021EFDF4
	ldr r1, _021EF4BC ; =0x021EFDF4
	ldr r2, [r2, r3]
	add r1, r1, r3
	str r2, [r0]
	ldr r2, [r1, #4]
	ldr r1, [r1, #8]
	str r2, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EF4A4
_021EF46C:
	lsl r3, r4, #0x10
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
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
	ldr r0, [r6]
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF46C
_021EF4A4:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _021EF422
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF4B4: .word 0x021EFD00
_021EF4B8: .word 0x021EFD40
_021EF4BC: .word 0x021EFDF4
	thumb_func_end ovy129_21ef410

	thumb_func_start sub_021EF4C0
sub_021EF4C0: ; 0x021EF4C0
	ldr r0, [r0]
	ldr r3, _021EF4C8 ; =sub_021B81BC
	mov r1, #0
	bx r3
	.align 2, 0
_021EF4C8: .word sub_021B81BC
	thumb_func_end sub_021EF4C0

	thumb_func_start sub_021EF4CC
sub_021EF4CC: ; 0x021EF4CC
	ldr r0, [r0]
	ldr r3, _021EF4D4 ; =sub_021B83B4
	bx r3
	nop
_021EF4D4: .word sub_021B83B4
	thumb_func_end sub_021EF4CC

	thumb_func_start ovy129_21ef4d8
ovy129_21ef4d8: ; 0x021EF4D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	add r5, r0, #0
	bl sub_021B84A8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84E8
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_021B8538
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_021B8504
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy129_21ef4d8

	thumb_func_start ovy129_21ef51c
ovy129_21ef51c: ; 0x021EF51C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	add r5, r0, #0
	mov r7, #0
	bl sub_021B84A8
	mov r1, #1
	bl sub_021B84E8
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl sub_021B8538
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef51c

	thumb_func_start ovy129_21ef548
ovy129_21ef548: ; 0x021EF548
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_021B8258
_021EF55A:
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy129_21ef51c
	add r4, r4, #1
	cmp r4, #7
	blo _021EF55A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy129_21ef4d8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy129_21ef4d8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef548

	thumb_func_start ovy129_21ef584
ovy129_21ef584: ; 0x021EF584
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	add r5, r0, #0
	mov r6, #0
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF5A2
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021EF5A2:
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	mov r4, #1
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF5BA
	add r4, r6, #0
_021EF5BA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef584

	thumb_func_start ovy129_21ef5c0
ovy129_21ef5c0: ; 0x021EF5C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021EF5C8:
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy129_21ef51c
	add r4, r4, #1
	cmp r4, #7
	blo _021EF5C8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ovy129_21ef4d8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
	bl ovy129_21ef4d8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy129_21ef5c0

	thumb_func_start ovy129_21ef5f0
ovy129_21ef5f0: ; 0x021EF5F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021EF5F8:
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy129_21ef51c
	add r4, r4, #1
	cmp r4, #7
	blo _021EF5F8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #4
	bl ovy129_21ef4d8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #5
	bl ovy129_21ef4d8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #6
	bl ovy129_21ef4d8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy129_21ef5f0

	thumb_func_start ovy129_21ef62c
ovy129_21ef62c: ; 0x021EF62C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #4
	add r5, r0, #0
	mov r4, #0
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF64A
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021EF64A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #5
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF662
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021EF662:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #6
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EF678
	mov r4, #1
_021EF678:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy129_21ef62c

	thumb_func_start ovy129_21ef67c
ovy129_21ef67c: ; 0x021EF67C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_02016AF0
	add r5, r0, #0
	ldr r2, _021EF6AC ; =ovy129_21ef6b0
	add r0, r4, #0
	mov r1, #0
	mov r3, #0xc
	mov r7, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	str r5, [r4, #4]
	str r7, [r4, #8]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF6AC: .word ovy129_21ef6b0
	thumb_func_end ovy129_21ef67c

	thumb_func_start ovy129_21ef6b0
ovy129_21ef6b0: ; 0x021EF6B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	mov r5, #1
	bl sub_0218105C
	ldr r0, [r6]
	cmp r0, #0xb
	bls _021EF6CE
	b _021EF822
_021EF6CE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF6DA: ; jump table
	.short _021EF6F2 - _021EF6DA - 2 ; case 0
	.short _021EF6F6 - _021EF6DA - 2 ; case 1
	.short _021EF726 - _021EF6DA - 2 ; case 2
	.short _021EF736 - _021EF6DA - 2 ; case 3
	.short _021EF748 - _021EF6DA - 2 ; case 4
	.short _021EF760 - _021EF6DA - 2 ; case 5
	.short _021EF772 - _021EF6DA - 2 ; case 6
	.short _021EF78C - _021EF6DA - 2 ; case 7
	.short _021EF79E - _021EF6DA - 2 ; case 8
	.short _021EF7BC - _021EF6DA - 2 ; case 9
	.short _021EF7E8 - _021EF6DA - 2 ; case 10
	.short _021EF81E - _021EF6DA - 2 ; case 11
_021EF6F2:
	str r5, [r6]
	b _021EF822
_021EF6F6:
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r5, #0
	bl sub_021B8258
	mov r7, #2
_021EF706:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r7, #0
	lsr r2, r2, #0x10
	bl ovy129_21ef4d8
	add r5, r5, #1
	cmp r5, #2
	blt _021EF706
	ldr r0, _021EF828 ; =0x000008DC
	bl sub_02006254
	mov r0, #0x3c
	str r0, [r4, #8]
	str r7, [r6]
	b _021EF822
_021EF726:
	ldr r1, [r4, #8]
	sub r0, r1, #1
	str r0, [r4, #8]
	cmp r1, #0
	bgt _021EF822
	mov r0, #3
_021EF732:
	str r0, [r6]
	b _021EF822
_021EF736:
	ldr r0, [r4]
	mov r1, #5
	bl ovy129_21ef548
	ldr r0, _021EF82C ; =0x000008DD
	bl sub_02006254
	mov r0, #4
	b _021EF732
_021EF748:
	ldr r0, [r4]
	mov r1, #5
	mov r5, #5
	bl ovy129_21ef584
	cmp r0, #0
	beq _021EF822
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy129_21ef5c0
	b _021EF6F2
_021EF760:
	ldr r0, [r4]
	mov r1, #3
	bl ovy129_21ef548
	ldr r0, _021EF82C ; =0x000008DD
	bl sub_02006254
	mov r0, #6
	b _021EF732
_021EF772:
	ldr r0, [r4]
	mov r1, #3
	mov r5, #3
	bl ovy129_21ef584
	cmp r0, #0
	beq _021EF822
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy129_21ef5c0
	mov r0, #7
	b _021EF732
_021EF78C:
	ldr r0, [r4]
	mov r1, #4
	bl ovy129_21ef548
	ldr r0, _021EF82C ; =0x000008DD
	bl sub_02006254
	mov r0, #8
	b _021EF732
_021EF79E:
	ldr r0, [r4]
	mov r1, #4
	mov r5, #4
	bl ovy129_21ef584
	cmp r0, #0
	beq _021EF822
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy129_21ef5c0
	mov r0, #0x14
	str r0, [r4, #8]
	mov r0, #9
	b _021EF732
_021EF7BC:
	ldr r1, [r4, #8]
	sub r0, r1, #1
	str r0, [r4, #8]
	cmp r1, #0
	bgt _021EF822
	ldr r0, [r4]
	mov r1, #5
	bl ovy129_21ef5f0
	ldr r0, [r4]
	mov r1, #3
	bl ovy129_21ef5f0
	ldr r0, [r4]
	mov r1, #4
	bl ovy129_21ef5f0
	ldr r0, _021EF830 ; =0x000008E1
	bl sub_02006254
	mov r0, #0xa
	b _021EF732
_021EF7E8:
	ldr r0, [r4]
	mov r1, #5
	mov r7, #5
	bl ovy129_21ef62c
	cmp r0, #0
	beq _021EF822
	ldr r0, [r4]
	mov r1, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	add r3, r5, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #4
	add r3, r5, #0
	bl sub_021B8258
	mov r0, #0xb
	b _021EF732
_021EF81E:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF822:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF828: .word 0x000008DC
_021EF82C: .word 0x000008DD
_021EF830: .word 0x000008E1
	thumb_func_end ovy129_21ef6b0

	thumb_func_start ovy129_21ef834
ovy129_21ef834: ; 0x021EF834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02016AF0
	add r4, r0, #0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0218056C
	add r5, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021EF866
	ldr r0, _021EF914 ; =0x00000566
	mov r6, #0
	bl sub_02006254
_021EF866:
	lsl r2, r6, #0x10
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r4, #0
	bl sub_021B8224
	ldr r3, [sp, #0xc]
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	lsl r2, r6, #0x10
	add r0, r5, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_021B8258
	lsl r0, r6, #0x10
	add r7, r4, #0
	lsr r6, r0, #0x10
_021EF894:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl sub_021B8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl sub_021B8504
	add r4, r4, #1
	cmp r4, #3
	blt _021EF894
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x14]
	ldmia r2!, {r0, r1}
	add r3, #0xc
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp, #0xc]
	str r0, [r3]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldmia r2!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp, #0x10]
	str r0, [r3]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x14]
	ldr r2, _021EF918 ; =ovy129_21efa0c
	strh r1, [r0, #0x28]
	ldr r1, [sp, #0x30]
	strh r7, [r0, #0x2a]
	str r1, [r0, #0x24]
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r3, r7, #0
	bl sub_02016CB4
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x14]
	str r2, [r1, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF914: .word 0x00000566
_021EF918: .word ovy129_21efa0c
	thumb_func_end ovy129_21ef834

	thumb_func_start ovy129_21ef91c
ovy129_21ef91c: ; 0x021EF91C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02016AF0
	add r5, r0, #0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	add r0, r5, #0
	bl sub_0218056C
	add r5, r0, #0
	cmp r4, #0
	bne _021EF942
	mov r6, #0
	ldr r0, _021EF9B4 ; =0x00000567
	b _021EF944
_021EF942:
	ldr r0, _021EF9B8 ; =0x00000792
_021EF944:
	bl sub_02006254
	lsl r2, r6, #0x10
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r4, #0
	bl sub_021B8224
	add r2, r0, #0
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7]
	mov r1, #0
	str r0, [r2]
	lsl r2, r6, #0x10
	add r0, r5, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_021B8258
	lsl r0, r6, #0x10
	add r7, r4, #0
	lsr r6, r0, #0x10
_021EF974:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r1, r7, #0
	bl sub_021B84E8
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl sub_021B8504
	add r4, r4, #1
	cmp r4, #3
	blt _021EF974
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF9B4: .word 0x00000567
_021EF9B8: .word 0x00000792
	thumb_func_end ovy129_21ef91c

	thumb_func_start ovy129_21ef9bc
ovy129_21ef9bc: ; 0x021EF9BC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r2, _021EF9E0 ; =ovy129_21efae8
	add r0, r6, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	str r5, [r4, #8]
	pop {r4, r5, r6, pc}
	nop
_021EF9E0: .word ovy129_21efae8
	thumb_func_end ovy129_21ef9bc

	thumb_func_start ovy129_21ef9e4
ovy129_21ef9e4: ; 0x021EF9E4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r2, _021EFA08 ; =ovy129_21efb34
	add r0, r6, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	str r5, [r4, #8]
	pop {r4, r5, r6, pc}
	nop
_021EFA08: .word ovy129_21efb34
	thumb_func_end ovy129_21ef9e4

	thumb_func_start ovy129_21efa0c
ovy129_21efa0c: ; 0x021EFA0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	bl sub_02016ED8
	bl sub_02016AF0
	add r4, r0, #0
	bl sub_0218056C
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	mov r7, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021EFA34
	mov r7, #0
_021EFA34:
	ldrh r0, [r4, #0x2a]
	add r0, r0, #1
	strh r0, [r4, #0x2a]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x18]
	ldrh r5, [r4, #0x2a]
	ldrh r6, [r4, #0x28]
	sub r1, r1, r0
	str r0, [sp, #8]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	str r0, [sp, #4]
	sub r1, r1, r0
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	ldr r1, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x20]
	str r0, [sp]
	sub r1, r1, r0
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	ldr r1, [sp]
	add r0, r1, r0
	add r1, r6, #1
	str r0, [sp, #0x18]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	cmp r5, r0
	blt _021EFA94
	sub r5, r6, r5
_021EFA94:
	ldr r1, [r4, #0x24]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	ldr r1, [sp, #0x14]
	lsl r2, r7, #0x10
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r5, #0
	bl sub_021B8224
	add r3, sp, #0x10
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r1, [r4, #0x2a]
	ldrh r0, [r4, #0x28]
	cmp r1, r0
	blo _021EFAE2
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021EFADC
	lsl r2, r7, #0x10
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8258
_021EFADC:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021EFAE2:
	add r0, r5, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy129_21efa0c

	thumb_func_start ovy129_21efae8
ovy129_21efae8: ; 0x021EFAE8
	push {r4, r5, r6, lr}
	bl sub_02016ED8
	bl sub_02016AF0
	add r4, r0, #0
	bl sub_0218056C
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl sub_0218105C
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021EFB12
	mov r4, #5
	lsl r4, r4, #0xc
	mov r5, #0
	b _021EFB16
_021EFB12:
	mov r4, #0x22
	lsl r4, r4, #0xc
_021EFB16:
	lsl r2, r5, #0x10
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0
	mov r6, #0
	bl sub_021B8520
	cmp r0, r4
	blt _021EFB2E
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EFB2E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy129_21efae8

	thumb_func_start ovy129_21efb34
ovy129_21efb34: ; 0x021EFB34
	push {r3, r4, r5, lr}
	bl sub_02016ED8
	bl sub_02016AF0
	add r4, r0, #0
	bl sub_0218056C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021EFB58
	mov r4, #0
_021EFB58:
	lsl r2, r4, #0x10
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0
	mov r5, #0
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EFB74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EFB74:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy129_21efb34

	thumb_func_start ovy129_21efb78
ovy129_21efb78: ; 0x021EFB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02016AF0
	add r5, r0, #0
	mov r1, #1
	bl sub_0218105C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0218056C
	ldr r1, [sp, #8]
	mov r2, #2
	ldr r1, [r1, #0x2c]
	add r5, r0, #0
	strh r4, [r1]
	strh r7, [r1, #2]
	mov r1, #0
	mov r4, #0
	bl sub_021B8224
	add r2, r0, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r2]
	add r0, r5, #0
	mov r2, #2
	mov r3, #0
	bl sub_021B8258
	add r6, r4, #0
	mov r7, #2
_021EFBC6:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r1, r6, #0
	bl sub_021B84E8
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	str r6, [sp]
	bl sub_021B8504
	add r4, r4, #1
	cmp r4, #3
	blt _021EFBC6
	ldr r0, [sp, #4]
	ldr r2, _021EFC14 ; =ovy129_21efc18
	add r1, r6, #0
	add r3, r6, #0
	bl sub_02016CB4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EFC14: .word ovy129_21efc18
	thumb_func_end ovy129_21efb78

	thumb_func_start ovy129_21efc18
ovy129_21efc18: ; 0x021EFC18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	bl sub_02016ED8
	str r0, [sp, #8]
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_0218056C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl sub_021B8520
	mov r1, #0xf
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _021EFCAE
	ldr r0, [r4, #0x2c]
	ldrh r4, [r0]
	ldrh r5, [r0, #2]
	add r0, r6, #0
	bl sub_021804B8
	add r1, r4, #0
	str r0, [sp, #0xc]
	bl sub_02167A14
	bl sub_02166940
	ldr r0, [sp, #8]
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_02017240
	str r0, [sp, #0x10]
	bl sub_0215D198
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020171F4
	bl sub_02017544
	str r0, [sp, #0x14]
	cmp r4, #0
	beq _021EFCAE
	add r0, r6, #0
	bl sub_02017394
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_0215D194
	add r1, r0, #0
	str r6, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r3, r4, #0
	str r5, [sp, #4]
	bl sub_021668F8
	cmp r0, #0
	beq _021EFCAE
	bl sub_021675E8
_021EFCAE:
	add r0, r7, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r4, #0
	bl sub_021B84A8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EFCC6
	mov r4, #1
_021EFCC6:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy129_21efc18
_021EFCCC:
	.byte 0x09, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x1F, 0x02, 0x15, 0x00, 0x00, 0x00, 0x9C, 0xFE, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0xFC, 0xFE, 0x1E, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x94, 0xFD, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x80, 0xFF, 0x1E, 0x02, 0x0C, 0x00, 0x00, 0x00, 0xC4, 0xFD, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x3C, 0xFE, 0x1E, 0x02, 0x08, 0x00, 0x00, 0x00, 0x74, 0xFD, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xDC, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xDC, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0xCC, 0xFC, 0x1E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xDC, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0xE8, 0xFC, 0x1E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0D, 0x00, 0x00, 0x80, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x0D, 0x00, 0x00, 0x80, 0x0F, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x80, 0x0D, 0x00
	.byte 0x00, 0x80, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0D, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xF4, 0xFC, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xDC, 0xFC, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0xD4, 0xFC, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x58, 0xFD, 0x1E, 0x02, 0x07, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x58, 0xFD, 0x1E, 0x02, 0x07, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x58, 0xFD, 0x1E, 0x02, 0x07, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x31, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xD6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD6, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD6, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD6, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x01, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x70, 0x5F, 0x70, 0x6F, 0x6B, 0x65, 0x5F, 0x67, 0x69, 0x6D, 0x6D, 0x69, 0x63, 0x6B, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EFCCC
