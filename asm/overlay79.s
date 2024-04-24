    .include "macros/function.inc"
	.include "overlay79.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy79_021EA860
ovy79_021EA860: ; 0x021EA860
	str r1, [r0]
	ldr r1, _021EA870 ; =0x000002FD
	mov r2, #0
	strb r2, [r0, r1]
	sub r1, r1, #2
	strb r2, [r0, r1]
	bx lr
	nop
_021EA870: .word 0x000002FD
	thumb_func_end ovy79_021EA860

	thumb_func_start sub_021EA874
sub_021EA874: ; 0x021EA874
	ldr r1, _021EA88C ; =0x000002F7
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021EA888
	ldr r1, [r0]
	ldr r0, _021EA890 ; =ovy79_21ec98c
	cmp r1, r0
	bne _021EA888
	mov r0, #1
	bx lr
_021EA888:
	mov r0, #0
	bx lr
	.align 2, 0
_021EA88C: .word 0x000002F7
_021EA890: .word ovy79_21ec98c
	thumb_func_end sub_021EA874

	thumb_func_start sub_021EA894
sub_021EA894: ; 0x021EA894
	ldr r3, _021EA898 ; =ovy79_021EA860
	bx r3
	.align 2, 0
_021EA898: .word ovy79_021EA860
	thumb_func_end sub_021EA894

	thumb_func_start ovy79_21ea89c
ovy79_21ea89c: ; 0x021EA89C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ovy79_21ea910
	add r6, r0, #0
	str r5, [r6, #4]
	str r4, [r6, #8]
	ldr r0, [r6]
	cmp r0, #0
	beq _021EA8D4
	mov r1, #0xae
	lsl r1, r1, #2
	ldrb r1, [r7, r1]
	add r1, #0x1c
	bl ovy79_21ebbdc
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r6]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ovy79_21ebbc8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EA8D4:
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #0xae
	str r0, [sp, #8]
	lsl r3, r3, #2
	ldrb r3, [r7, r3]
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	add r3, #0x1c
	lsl r3, r3, #0x18
	add r0, r7, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl ovy79_21eba34
	str r0, [r6]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r6]
	mov r1, #1
	bl sub_0204C5C8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21ea89c

	thumb_func_start ovy79_21ea910
ovy79_21ea910: ; 0x021EA910
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0
	add r6, r0, #0
	mvn r7, r7
	mov r0, #0
	str r7, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
_021EA922:
	mov r0, #0xc
	mul r0, r4
	str r0, [sp]
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _021EA93A
	ldr r0, [sp]
	add r6, #0x3c
	add sp, #0xc
	add r0, r6, r0
	pop {r4, r5, r6, r7, pc}
_021EA93A:
	bl sub_0204C510
	add r5, r0, #0
	ldr r0, [sp]
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	bl sub_0204C4F8
	cmp r5, r7
	bgt _021EA958
	cmp r5, r7
	bne _021EA95E
	ldr r1, [sp, #8]
	cmp r0, r1
	ble _021EA95E
_021EA958:
	add r7, r5, #0
	str r0, [sp, #8]
	str r4, [sp, #4]
_021EA95E:
	add r4, r4, #1
	cmp r4, #4
	blt _021EA922
	ldr r0, [sp, #4]
	mov r1, #0xc
	add r6, #0x3c
	mul r1, r0
	add r0, r6, r1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21ea910

	thumb_func_start ovy79_21ea974
ovy79_21ea974: ; 0x021EA974
	push {r4, r5, r6, lr}
	mov r4, #0xbf
	add r5, r0, #0
	lsl r4, r4, #2
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021EA988
	cmp r0, #1
	beq _021EA9C0
	b _021EA9E2
_021EA988:
	add r0, r5, #0
	sub r1, r4, #4
	sub r2, r4, #3
	add r0, #0xb8
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	ldr r0, [r0]
	bl ovy79_21ebbc8
	add r1, r4, #0
	sub r1, #0x44
	add r0, r5, #0
	ldrb r1, [r5, r1]
	add r0, #0xb8
	ldr r0, [r0]
	add r1, #0x1c
	bl ovy79_21ebbdc
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _021EA9E6
_021EA9C0:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021EA9E6
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r6, #0
	mov r1, #0
	bl sub_0204C124
	strb r6, [r5, r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EA9E2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EA9E6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy79_21ea974

	thumb_func_start sub_021EA9EC
sub_021EA9EC: ; 0x021EA9EC
	ldr r1, _021EA9F4 ; =0x000002B9
	mov r2, #0
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021EA9F4: .word 0x000002B9
	thumb_func_end sub_021EA9EC

	thumb_func_start ovy79_21ea9f8
ovy79_21ea9f8: ; 0x021EA9F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021EAA50 ; =0x000002BE
	mov r4, #0
	add r5, r6, r0
_021EAA02:
	ldr r1, _021EAA54 ; =0x021ED80C
	lsl r2, r4, #1
	ldrh r1, [r1, r2]
	ldr r2, _021EAA58 ; =0x021ED801
	ldr r3, _021EAA5C ; =0x021ED7FC
	mov r0, #0xa
	add r7, r4, #0
	mul r7, r0
	ldrb r2, [r2, r4]
	ldrb r3, [r3, r4]
	add r0, r5, r7
	bl ovy79_21eb110
	cmp r4, #0
	bne _021EAA28
	add r0, r5, r7
	mov r1, #0
	bl sub_021EB180
_021EAA28:
	add r4, r4, #1
	cmp r4, #5
	blt _021EAA02
	mov r5, #0
	add r7, r5, #0
_021EAA32:
	mov r4, #0
_021EAA34:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	str r7, [sp]
	bl ovy79_21eaaf0
	add r4, r4, #1
	cmp r4, #3
	blt _021EAA34
	add r5, r5, #1
	cmp r5, #5
	blt _021EAA32
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EAA50: .word 0x000002BE
_021EAA54: .word 0x021ED80C
_021EAA58: .word 0x021ED801
_021EAA5C: .word 0x021ED7FC
	thumb_func_end ovy79_21ea9f8

	thumb_func_start ovy79_21eaa60
ovy79_21eaa60: ; 0x021EAA60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021EAABC ; =0x000002BE
	mov r4, #0
	add r6, r5, r0
_021EAA6A:
	ldr r1, _021EAAC0 ; =0x021ED80C
	lsl r2, r4, #1
	ldrh r1, [r1, r2]
	ldr r2, _021EAAC4 ; =0x021ED801
	ldr r3, _021EAAC8 ; =0x021ED7FC
	mov r0, #0xa
	add r7, r4, #0
	mul r7, r0
	ldrb r2, [r2, r4]
	ldrb r3, [r3, r4]
	add r0, r6, r7
	bl ovy79_21eb110
	cmp r4, #0
	beq _021EAA90
	add r0, r6, r7
	mov r1, #0
	bl sub_021EB180
_021EAA90:
	add r4, r4, #1
	cmp r4, #5
	blt _021EAA6A
	ldr r7, _021EAACC ; =0x00000313
	mov r6, #0
_021EAA9A:
	mov r4, #0
_021EAA9C:
	ldrb r0, [r5, r7]
	add r1, r6, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	mov r3, #1
	bl ovy79_21eaaf0
	add r4, r4, #1
	cmp r4, #3
	blt _021EAA9C
	add r6, r6, #1
	cmp r6, #5
	blt _021EAA9A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAABC: .word 0x000002BE
_021EAAC0: .word 0x021ED80C
_021EAAC4: .word 0x021ED801
_021EAAC8: .word 0x021ED7FC
_021EAACC: .word 0x00000313
	thumb_func_end ovy79_21eaa60

	thumb_func_start ovy79_21eaad0
ovy79_21eaad0: ; 0x021EAAD0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #0x1f
_021EAADA:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ovy79_21eb004
	add r4, r4, #1
	cmp r4, #3
	blt _021EAADA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21eaad0

	thumb_func_start ovy79_21eaaf0
ovy79_21eaaf0: ; 0x021EAAF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02016B20
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0xc]
	cmp r7, #0
	beq _021EAB2A
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x14]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	str r0, [sp, #0x18]
_021EAB2A:
	ldr r0, [r5, #0x14]
	bl sub_02017238
	bl sub_02012BE4
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	bl sub_02153658
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _021EAB74
	ldr r0, [sp, #0x1c]
	cmp r0, #3
	bne _021EAB56
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	b _021EAB6E
_021EAB56:
	mov r0, #8
	tst r0, r7
	beq _021EAB74
	ldr r0, [sp, #0x24]
	mov r1, #2
	orr r0, r1
	str r4, [sp]
	str r0, [sp, #0x24]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
_021EAB6E:
	ldr r3, [sp, #0x14]
	bl ovy79_21eb0e4
_021EAB74:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021EAB7C
	b _021EAC90
_021EAB7C:
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #2
	tst r0, r7
	beq _021EAB8E
	ldr r0, [sp, #0x24]
	mov r1, #1
	orr r0, r1
	str r0, [sp, #0x24]
_021EAB8E:
	mov r0, #0x3c
	tst r0, r7
	beq _021EAB9C
	ldr r0, [sp, #0x24]
	mov r1, #2
	orr r0, r1
	str r0, [sp, #0x24]
_021EAB9C:
	mov r0, #0xf
	lsl r0, r0, #6
	tst r0, r7
	beq _021EABAC
	ldr r0, [sp, #0x24]
	mov r1, #4
	orr r0, r1
	str r0, [sp, #0x24]
_021EABAC:
	mov r0, #0x40
	add r1, r7, #0
	tst r1, r0
	beq _021EABC0
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
_021EABBE:
	b _021EABEC
_021EABC0:
	add r0, #0xc0
	tst r0, r7
	beq _021EABC8
	b _021EABE2
_021EABC8:
	mov r0, #0x80
	add r1, r7, #0
	tst r1, r0
	beq _021EABDC
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	b _021EABBE
_021EABDC:
	lsl r0, r0, #2
	tst r0, r7
	beq _021EABF2
_021EABE2:
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
_021EABEC:
	ldr r3, [sp, #0xc]
	bl ovy79_21eb0e4
_021EABF2:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021EAC0A
	cmp r0, #3
	beq _021EAC90
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	ldr r3, [sp, #0xc]
	b _021EAC8C
_021EAC0A:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021EACFC ; =0x000002F6
	sub r0, r0, #3
	str r0, [sp, #0x34]
	ldr r0, _021EACFC ; =0x000002F6
	sub r0, r0, #3
	str r0, [sp, #0x30]
	ldr r0, _021EACFC ; =0x000002F6
	sub r0, r0, #3
	str r0, [sp, #0x2c]
_021EAC20:
	ldr r0, [sp, #0x34]
	mov r1, #3
	ldrb r0, [r5, r0]
	add r0, r0, #1
	blx sub_0208D65C
	ldr r0, [sp, #0x30]
	strb r1, [r5, r0]
	ldr r0, [sp, #0x2c]
	ldr r1, _021EAD00 ; =0x021ED818
	ldrb r0, [r5, r0]
	lsl r3, r0, #2
	ldr r1, [r1, r3]
	tst r1, r7
	bne _021EAC4A
	cmp r0, #2
	bne _021EAC70
	ldr r0, _021EACFC ; =0x000002F6
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021EAC70
_021EAC4A:
	ldr r2, _021EAD04 ; =0x021ED824
	str r4, [sp]
	ldr r2, [r2, r3]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	str r6, [sp, #4]
	bl ovy79_21eb0e4
	cmp r0, #0
	beq _021EAC70
	ldr r0, _021EAD08 ; =0x000002F3
	ldrb r1, [r5, r0]
	cmp r1, #2
	bne _021EAC7A
	mov r1, #0
	add r0, r0, #3
	strb r1, [r5, r0]
	b _021EAC7A
_021EAC70:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _021EAC20
_021EAC7A:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bne _021EAC90
	str r4, [sp]
	ldr r3, [sp, #8]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
_021EAC8C:
	bl ovy79_21eb0e4
_021EAC90:
	ldr r0, [sp, #0x20]
	str r4, [sp]
	cmp r0, #0
	bne _021EACDA
	ldr r3, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r2, #6
	str r6, [sp, #4]
	bl ovy79_21eb0e4
	ldr r0, [sp, #0x24]
	mov r1, #4
	tst r0, r1
	bne _021EACBE
	ldr r3, [sp, #8]
	str r4, [sp]
	add r0, r5, #0
	mov r1, #2
	mov r2, #7
	str r6, [sp, #4]
	bl ovy79_21eb0e4
_021EACBE:
	ldr r0, [sp, #0x24]
	mov r1, #2
	tst r0, r1
	bne _021EACF8
	ldr r3, [sp, #8]
	str r4, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	str r6, [sp, #4]
	bl ovy79_21eb0e4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_021EACDA:
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	mov r1, #0
	mov r2, #5
	str r6, [sp, #4]
	bl ovy79_21eb0e4
	str r4, [sp]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	mov r1, #2
	mov r2, #5
	str r6, [sp, #4]
	bl ovy79_21eb0e4
_021EACF8:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EACFC: .word 0x000002F6
_021EAD00: .word 0x021ED818
_021EAD04: .word 0x021ED824
_021EAD08: .word 0x000002F3
	thumb_func_end ovy79_21eaaf0

	thumb_func_start sub_021EAD0C
sub_021EAD0C: ; 0x021EAD0C
	ldr r1, _021EAD24 ; =0x00000316
	ldrb r2, [r0, r1]
	cmp r2, #1
	bne _021EAD20
	sub r1, r1, #3
	ldrb r0, [r0, r1]
	cmp r0, #1
	bne _021EAD20
	mov r0, #1
	bx lr
_021EAD20:
	mov r0, #0
	bx lr
	.align 2, 0
_021EAD24: .word 0x00000316
	thumb_func_end sub_021EAD0C

	thumb_func_start ovy79_21ead28
ovy79_21ead28: ; 0x021EAD28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021EAE0C ; =0x000002BE
	str r0, [sp, #0x10]
	add r6, r5, r0
	str r0, [sp, #0x14]
	add r0, #0x55
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x54
	str r0, [sp, #0x10]
_021EAD48:
	ldr r1, [sp, #8]
	mov r0, #0xa
	add r7, r1, #0
	mul r7, r0
	add r0, r6, r7
	bl ovy79_21eb128
	mov r4, #0
_021EAD58:
	add r0, r6, r7
	add r1, r4, #0
	bl sub_021EB14C
	cmp r0, #0
	bne _021EAD6C
	ldr r0, [sp, #0x10]
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021EAD9C
_021EAD6C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	ldrb r0, [r5, r0]
	add r2, r4, #0
	mov r3, #0
	str r0, [sp]
	add r0, r5, #0
	bl ovy79_21eaaf0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021EAD88
	mov r0, #1
	str r0, [sp, #4]
_021EAD88:
	add r0, r6, r7
	add r1, r4, #0
	bl sub_021EB14C
	cmp r0, #0
	beq _021EAD9C
	add r0, r6, r7
	add r1, r4, #0
	bl sub_021EB160
_021EAD9C:
	add r4, r4, #1
	cmp r4, #3
	blt _021EAD58
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _021EAD48
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021EAE00
	ldr r7, _021EAE0C ; =0x000002BE
	mov r6, #0
	add r0, r5, r7
	str r0, [sp, #0xc]
	add r7, #0x55
_021EADBC:
	cmp r6, #0
	beq _021EADEA
	mov r0, #0xa
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	mov r1, #1
	bl sub_021EB180
	mov r4, #0
_021EADD2:
	ldrb r0, [r5, r7]
	add r1, r6, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl ovy79_21eaaf0
	add r4, r4, #1
	cmp r4, #3
	blt _021EADD2
	b _021EADFA
_021EADEA:
	mov r0, #0xa
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	mov r1, #0
	bl sub_021EB180
_021EADFA:
	add r6, r6, #1
	cmp r6, #5
	blt _021EADBC
_021EAE00:
	ldr r0, _021EAE10 ; =0x00000312
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAE0C: .word 0x000002BE
_021EAE10: .word 0x00000312
	thumb_func_end ovy79_21ead28

	thumb_func_start ovy79_21eae14
ovy79_21eae14: ; 0x021EAE14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl ovy79_21eaad0
	ldr r1, _021EAE68 ; =0x000002BE
	ldr r0, [sp]
	mov r7, #0
	add r6, r0, r1
_021EAE2A:
	mov r0, #0xa
	add r4, r7, #0
	mov r5, #0
	mul r4, r0
_021EAE32:
	add r0, r6, r4
	add r1, r5, #0
	bl sub_021EB170
	add r5, r5, #1
	cmp r5, #3
	blt _021EAE32
	add r7, r7, #1
	cmp r7, #5
	blt _021EAE2A
	ldr r2, _021EAE6C ; =0x00000313
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r3, #1
	strb r1, [r0, r2]
	sub r1, r2, #1
	strb r3, [r0, r1]
	add r1, r2, #4
	strb r3, [r0, r1]
	add r1, r2, #5
	mov r3, #0
	strb r3, [r0, r1]
	ldr r1, [sp, #8]
	add r2, r2, #3
	strb r1, [r0, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EAE68: .word 0x000002BE
_021EAE6C: .word 0x00000313
	thumb_func_end ovy79_21eae14

	thumb_func_start ovy79_21eae70
ovy79_21eae70: ; 0x021EAE70
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021EAEF0 ; =0x000002BE
	add r5, r0, #0
	add r6, r5, r7
	mov r4, #0
	add r7, #0x32
_021EAE7C:
	add r0, r5, r4
	ldrb r2, [r0, r7]
	cmp r2, #4
	bhi _021EAEE8
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAE90: ; jump table
	.short _021EAECA - _021EAE90 - 2 ; case 0
	.short _021EAEAA - _021EAE90 - 2 ; case 1
	.short _021EAEBA - _021EAE90 - 2 ; case 2
	.short _021EAE9A - _021EAE90 - 2 ; case 3
	.short _021EAEDA - _021EAE90 - 2 ; case 4
_021EAE9A:
	mov r3, #0xa
	mul r3, r2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, r3
	bl ovy79_21eaef4
	b _021EAEE8
_021EAEAA:
	mov r3, #0xa
	mul r3, r2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, r3
	bl ovy79_21eaf34
	b _021EAEE8
_021EAEBA:
	mov r3, #0xa
	mul r3, r2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, r3
	bl ovy79_21eaf6c
	b _021EAEE8
_021EAECA:
	mov r3, #0xa
	mul r3, r2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, r3
	bl ovy79_21eafa0
	b _021EAEE8
_021EAEDA:
	mov r3, #0xa
	mul r3, r2
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, r3
	bl ovy79_21eafd4
_021EAEE8:
	add r4, r4, #1
	cmp r4, #3
	blt _021EAE7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EAEF0: .word 0x000002BE
	thumb_func_end ovy79_21eae70

	thumb_func_start ovy79_21eaef4
ovy79_21eaef4: ; 0x021EAEF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021EB178
	cmp r0, #0x24
	bhi _021EAF2E
	cmp r0, #4
	blo _021EAF2E
	sub r0, r0, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r1, r2, r1
	mov r0, #0x1c
	mul r0, r1
	lsr r1, r0, #3
	ldr r0, _021EAF30 ; =0x021ED850
	mov r3, #0x1f
	ldrb r2, [r0, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy79_21eb004
_021EAF2E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EAF30: .word 0x021ED850
	thumb_func_end ovy79_21eaef4

	thumb_func_start ovy79_21eaf34
ovy79_21eaf34: ; 0x021EAF34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021EB178
	cmp r0, #0x70
	bhi _021EAF66
	cmp r0, #0xc
	blo _021EAF66
	sub r0, #0xc
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x1c
	mul r0, r1
	mov r1, #0x64
	blx sub_0208D868
	ldr r1, _021EAF68 ; =0x021ED850
	mov r3, #0x1f
	ldrb r2, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy79_21eb004
_021EAF66:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EAF68: .word 0x021ED850
	thumb_func_end ovy79_21eaf34

	thumb_func_start ovy79_21eaf6c
ovy79_21eaf6c: ; 0x021EAF6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021EB178
	cmp r0, #0x4e
	bhi _021EAF9A
	cmp r0, #8
	blo _021EAF9A
	sub r0, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0xb
	mov r1, #0x46
	blx sub_0208D868
	ldr r1, _021EAF9C ; =0x021ED88D
	mov r3, #0x1f
	ldrb r2, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy79_21eb004
_021EAF9A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EAF9C: .word 0x021ED88D
	thumb_func_end ovy79_21eaf6c

	thumb_func_start ovy79_21eafa0
ovy79_21eafa0: ; 0x021EAFA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021EB178
	cmp r0, #0x14
	bhi _021EAFCE
	mov r1, #0xa
	blx sub_0208D65C
	mov r0, #0x1c
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D868
	ldr r1, _021EAFD0 ; =0x021ED850
	mov r3, #0x1f
	ldrb r2, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy79_21eb004
_021EAFCE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EAFD0: .word 0x021ED850
	thumb_func_end ovy79_21eafa0

	thumb_func_start ovy79_21eafd4
ovy79_21eafd4: ; 0x021EAFD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_021EB178
	cmp r0, #0xf
	bhi _021EAFFE
	mov r1, #0xc
	mul r1, r0
	add r0, r1, #0
	mov r1, #0xf
	blx sub_0208D868
	ldr r1, _021EB000 ; =0x021ED830
	mov r3, #0x1f
	ldrb r2, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy79_21eb004
_021EAFFE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EB000: .word 0x021ED830
	thumb_func_end ovy79_21eafd4

	thumb_func_start ovy79_21eb004
ovy79_21eb004: ; 0x021EB004
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	add r0, r1, #0
	lsl r0, r0, #1
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	ldr r0, _021EB0B8 ; =0x00000126
	mov r6, #0
	add r0, r1, r0
	str r0, [sp, #0x18]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	str r2, [sp, #0xc]
	strh r6, [r1, r0]
	ldr r1, [sp, #4]
	str r3, [sp, #0x10]
	add r5, r1, r0
	ldr r0, _021EB0B8 ; =0x00000126
	sub r0, r0, #6
	str r0, [sp, #0x24]
	ldr r0, _021EB0B8 ; =0x00000126
	add r0, r0, #6
	str r0, [sp, #0x20]
	ldr r0, _021EB0B8 ; =0x00000126
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
_021EB03E:
	lsl r0, r6, #2
	add r4, r6, r0
	ldr r0, [sp, #0x24]
	ldrh r0, [r5, r0]
	add r1, r0, #0
	asr r1, r4
	mov r0, #0x1f
	add r7, r1, #0
	and r7, r0
	ldr r0, [sp, #0x20]
	ldrh r1, [r5, r0]
	mov r0, #0xa
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #4]
	add r1, r0, r2
	ldr r0, [sp, #0x1c]
	ldrh r0, [r1, r0]
	add r1, r0, #0
	asr r1, r4
	mov r0, #0x1f
	and r0, r1
	sub r1, r0, r7
	ldr r0, [sp, #0xc]
	mul r0, r1
	ldr r1, [sp, #0x10]
	blx sub_0208D65C
	add r2, r7, r0
	mov r0, #0x1f
	ldr r1, _021EB0B8 ; =0x00000126
	and r0, r2
	lsl r0, r4
	lsl r0, r0, #0x10
	ldrh r1, [r5, r1]
	lsr r0, r0, #0x10
	add r6, r6, #1
	orr r1, r0
	ldr r0, _021EB0B8 ; =0x00000126
	cmp r6, #3
	strh r1, [r5, r0]
	blt _021EB03E
	ldr r3, [sp, #8]
	mov r1, #2
	add r3, r3, #2
	str r1, [sp]
	lsl r3, r3, #4
	add r3, #0xd
	lsl r3, r3, #0x10
	ldr r0, [sp, #4]
	add r1, #0xfe
	ldr r0, [r0, r1]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x10
	add r1, r2, r1
	mov r2, #3
	bl sub_02026E64
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB0B8: .word 0x00000126
	thumb_func_end ovy79_21eb004

	thumb_func_start ovy79_21eb0bc
ovy79_21eb0bc: ; 0x021EB0BC
	push {r4, r5}
	lsl r4, r2, #5
	add r1, r1, r4
	mov r4, #0xa
	mul r4, r2
	add r5, r0, r4
	ldr r0, _021EB0E0 ; =0x00000132
	mov r3, #0
_021EB0CC:
	lsl r2, r3, #1
	ldrh r4, [r1, r2]
	add r2, r5, r2
	add r3, r3, #1
	strh r4, [r2, r0]
	cmp r3, #5
	blt _021EB0CC
	pop {r4, r5}
	bx lr
	nop
_021EB0E0: .word 0x00000132
	thumb_func_end ovy79_21eb0bc

	thumb_func_start ovy79_21eb0e4
ovy79_21eb0e4: ; 0x021EB0E4
	push {r4, r5}
	ldr r4, [sp, #8]
	cmp r3, r4
	bne _021EB10A
	ldr r4, [sp, #0xc]
	cmp r1, r4
	bne _021EB10A
	lsl r4, r1, #1
	add r5, r0, r4
	mov r4, #0x4b
	lsl r4, r4, #2
	add r1, r0, r1
	mov r0, #0x2f
	strh r2, [r5, r4]
	lsl r0, r0, #4
	strb r3, [r1, r0]
	mov r0, #1
	pop {r4, r5}
	bx lr
_021EB10A:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ovy79_21eb0e4

	thumb_func_start ovy79_21eb110
ovy79_21eb110: ; 0x021EB110
	push {r3, r4}
	mov r4, #0
	strh r2, [r0, #4]
	lsl r2, r2, #1
	strh r1, [r0, #6]
	mov r1, #1
	strh r4, [r0, #2]
	strh r2, [r0]
	strb r3, [r0, #8]
	strb r1, [r0, #9]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy79_21eb110

	thumb_func_start ovy79_21eb128
ovy79_21eb128: ; 0x021EB128
	push {r3, r4}
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _021EB146
	mov r4, #0
_021EB132:
	lsl r3, r4, #1
	ldrh r2, [r0, r3]
	ldrh r1, [r0, #6]
	cmp r2, r1
	bhs _021EB140
	add r1, r2, #1
	strh r1, [r0, r3]
_021EB140:
	add r4, r4, #1
	cmp r4, #3
	blt _021EB132
_021EB146:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy79_21eb128

	thumb_func_start sub_021EB14C
sub_021EB14C: ; 0x021EB14C
	lsl r1, r1, #1
	ldrh r1, [r0, r1]
	ldrh r0, [r0, #6]
	cmp r1, r0
	blo _021EB15A
	mov r0, #1
	bx lr
_021EB15A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EB14C

	thumb_func_start sub_021EB160
sub_021EB160: ; 0x021EB160
	ldrb r2, [r0, #8]
	cmp r2, #0
	beq _021EB16C
	mov r2, #0
	lsl r1, r1, #1
	strh r2, [r0, r1]
_021EB16C:
	bx lr
	.align 2, 0
	thumb_func_end sub_021EB160

	thumb_func_start sub_021EB170
sub_021EB170: ; 0x021EB170
	mov r2, #0
	lsl r1, r1, #1
	strh r2, [r0, r1]
	bx lr
	thumb_func_end sub_021EB170

	thumb_func_start sub_021EB178
sub_021EB178: ; 0x021EB178
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021EB178

	thumb_func_start sub_021EB180
sub_021EB180: ; 0x021EB180
	strb r1, [r0, #9]
	bx lr
	thumb_func_end sub_021EB180

	thumb_func_start ovy79_21eb184
ovy79_21eb184: ; 0x021EB184
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	bne _021EB194
	mov r0, #0
	pop {r4, pc}
_021EB194:
	ldr r0, _021EB1B8 ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	beq _021EB1A2
	mov r0, #0
	pop {r4, pc}
_021EB1A2:
	ldr r0, [r4, #0x10]
	bl sub_02016AF0
	bl sub_021812E8
	cmp r0, #0
	bne _021EB1B4
	mov r0, #1
	pop {r4, pc}
_021EB1B4:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021EB1B8: .word 0x0400106C
	thumb_func_end ovy79_21eb184

	thumb_func_start ovy79_21eb1bc
ovy79_21eb1bc: ; 0x021EB1BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0
	beq _021EB1CA
	mov r0, #8
	b _021EB1CC
_021EB1CA:
	mov r0, #0
_021EB1CC:
	str r0, [sp, #4]
	mov r4, #0
	mov r6, #1
	cmp r1, #0
	beq _021EB1D8
	add r6, r4, #0
_021EB1D8:
	ldr r7, _021EB22C ; =0x021ED806
_021EB1DA:
	ldrb r0, [r7, r4]
	add r1, r6, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #6
	blo _021EB1DA
	ldr r7, _021EB230 ; =0x0000030A
	mov r6, #1
	ldrb r0, [r5, r7]
	ldr r3, [sp, #4]
	ldr r4, _021EB234 ; =0x021ED7F4
	lsl r0, r0, #1
	ldrh r0, [r4, r0]
	lsl r3, r3, #0x18
	lsl r6, r6, #8
	str r0, [sp]
	ldr r0, [r5, r6]
	ldr r2, _021EB238 ; =0x00003FFF
	mov r1, #3
	lsr r3, r3, #0x18
	bl sub_020278AC
	ldrb r0, [r5, r7]
	ldr r3, [sp, #4]
	mov r1, #1
	lsl r0, r0, #1
	ldrh r0, [r4, r0]
	lsl r3, r3, #0x18
	mov r2, #0x3e
	str r0, [sp]
	ldr r0, [r5, r6]
	lsr r3, r3, #0x18
	bl sub_020278AC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB22C: .word 0x021ED806
_021EB230: .word 0x0000030A
_021EB234: .word 0x021ED7F4
_021EB238: .word 0x00003FFF
	thumb_func_end ovy79_21eb1bc

	thumb_func_start ovy79_21eb23c
ovy79_21eb23c: ; 0x021EB23C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021EB268
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xe
	mov r4, #8
	bl ovy79_21ebbdc
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl sub_0204C378
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	b _021EB29E
_021EB268:
	add r0, #0xde
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	beq _021EB27C
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xf
	b _021EB284
_021EB27C:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xc
_021EB284:
	bl ovy79_21ebbdc
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	bl sub_0204C378
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #1
_021EB29E:
	bl sub_0204C520
	ldr r0, _021EB2C4 ; =0x0000030A
	lsl r3, r4, #0x18
	ldrb r0, [r5, r0]
	mov r2, #0x20
	lsr r3, r3, #0x18
	lsl r1, r0, #1
	ldr r0, _021EB2C8 ; =0x021ED7F4
	ldrh r0, [r0, r1]
	mov r1, #3
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_020278AC
	pop {r3, r4, r5, pc}
	nop
_021EB2C4: .word 0x0000030A
_021EB2C8: .word 0x021ED7F4
	thumb_func_end ovy79_21eb23c

	thumb_func_start sub_021EB2CC
sub_021EB2CC: ; 0x021EB2CC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	ldr r3, _021EB2D8 ; =sub_020273C0
	bx r3
	nop
_021EB2D8: .word sub_020273C0
	thumb_func_end sub_021EB2CC

	thumb_func_start ovy79_21eb2dc
ovy79_21eb2dc: ; 0x021EB2DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	str r1, [sp, #0xc]
	cmp r3, #0
	bne _021EB2EA
	b _021EB414
_021EB2EA:
	mov r6, #7
	lsl r6, r6, #6
	str r6, [sp]
	ldrh r0, [r4, #8]
	ldr r7, _021EB488 ; =0x00007FFF
	mov r2, #4
	add r1, r0, #0
	and r1, r7
	add r0, r7, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r1, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	add r1, r1, #4
	mov r3, #0
	mov r5, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	ldrh r3, [r4, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	and r7, r3
	mov r3, #4
	lsl r3, r3, #0xd
	orr r3, r7
	lsl r3, r3, #0x10
	add r1, #0xe
	add r2, sp, #0x20
	lsr r3, r3, #0x10
	bl sub_0204B37C
	ldr r1, [sp, #0x20]
	sub r6, #0xa0
	ldr r2, [r1, #0xc]
_021EB332:
	add r1, r5, #2
	lsl r1, r1, #5
	add r1, r2, r1
	ldrh r1, [r1, #0x1a]
	lsl r3, r5, #1
	add r3, r4, r3
	add r5, r5, #1
	strh r1, [r3, r6]
	cmp r5, #3
	blt _021EB332
	bl GFL_HeapFree
	ldrh r5, [r4, #8]
	ldr r3, _021EB488 ; =0x00007FFF
	ldr r0, [r4, #0x1c]
	and r5, r3
	add r3, r3, #1
	orr r3, r5
	lsl r3, r3, #0x10
	mov r1, #0xd
	add r2, sp, #0x20
	lsr r3, r3, #0x10
	bl sub_0204B37C
	add r6, r0, #0
	mov r5, #0
_021EB366:
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	add r2, r5, #0
	bl ovy79_21eb0bc
	add r5, r5, #1
	cmp r5, #9
	blt _021EB366
	add r0, r6, #0
	bl GFL_HeapFree
	ldrh r3, [r4, #8]
	ldr r5, _021EB488 ; =0x00007FFF
	ldr r0, [r4, #0x1c]
	and r3, r5
	add r5, r5, #1
	orr r3, r5
	lsl r3, r3, #0x10
	mov r1, #6
	add r2, sp, #0x20
	lsr r3, r3, #0x10
	mov r6, #6
	bl sub_0204B37C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	mov r5, #0
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #0xc]
	mul r6, r0
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x18]
_021EB3AC:
	mov r1, #0x12
	add r2, r5, #0
	add r0, r5, r6
	mul r2, r1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #5
	add r1, r1, r2
	add r0, r7, r0
	mov r2, #0x12
	blx MI_CpuCopy8
	add r5, r5, #1
	cmp r5, #6
	blt _021EB3AC
	ldr r0, [sp, #0x10]
	bl GFL_HeapFree
	ldrh r3, [r4, #8]
	ldr r5, _021EB488 ; =0x00007FFF
	ldr r0, [r4, #0x1c]
	and r3, r5
	add r5, r5, #1
	orr r3, r5
	lsl r3, r3, #0x10
	mov r1, #7
	add r2, sp, #0x20
	lsr r3, r3, #0x10
	bl sub_0204B37C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r5, #0
	ldr r7, [r0, #0xc]
	mov r0, #0x7e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x1c]
_021EB3F6:
	add r0, r5, r6
	lsl r0, r0, #5
	ldr r1, [sp, #0x1c]
	lsl r2, r5, #5
	add r1, r1, r2
	add r0, r7, r0
	mov r2, #0x20
	blx MI_CpuCopy8
	add r5, r5, #1
	cmp r5, #6
	blt _021EB3F6
	ldr r0, [sp, #0x14]
	bl GFL_HeapFree
_021EB414:
	mov r6, #0
	str r6, [sp]
	ldr r7, _021EB48C ; =0x00008070
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #8
	mov r2, #4
	mov r3, #0
	mov r5, #4
	bl sub_0204ADA8
	mov r0, #5
	bl sub_02045718
	lsl r5, r5, #9
	str r5, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #9
	mov r2, #4
	mov r3, #0
	bl sub_0204AF50
	ldr r0, _021EB490 ; =0x0000030B
	ldrb r0, [r4, r0]
	cmp r0, #0
	str r5, [sp]
	beq _021EB45A
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #0xb
	b _021EB462
_021EB45A:
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
_021EB462:
	mov r2, #6
	add r3, r6, #0
	bl sub_0204AF50
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp]
	mov r3, #0
	ldr r0, _021EB48C ; =0x00008070
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	mov r2, #7
	bl sub_0204AF50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021EB488: .word 0x00007FFF
_021EB48C: .word 0x00008070
_021EB490: .word 0x0000030B
	thumb_func_end ovy79_21eb2dc

	thumb_func_start ovy79_21eb494
ovy79_21eb494: ; 0x021EB494
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5, #8]
	ldr r4, _021EB53C ; =0x0000030A
	mov r2, #1
	str r0, [sp]
	ldrb r1, [r5, r4]
	ldr r0, [r5, #0x1c]
	mov r3, #0
	add r1, #0xe
	bl sub_0204BBA0
	str r0, [r5, #0x20]
	ldrh r0, [r5, #8]
	mov r1, #0x10
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x24]
	ldrh r0, [r5, #8]
	add r1, r4, #0
	sub r1, #0xa
	str r0, [sp]
	ldrb r2, [r5, r4]
	ldrb r3, [r5, r1]
	ldr r0, [r5, #0x1c]
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r3, r1
	add r1, #0x13
	mov r2, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	str r0, [r5, #0x28]
	ldrh r3, [r5, #8]
	ldr r0, [r5, #0x1c]
	mov r1, #0x11
	mov r2, #0x12
	mov r6, #0x12
	bl Oam_LoadNCERFile
	str r0, [r5, #0x2c]
	ldrh r3, [r5, #8]
	ldr r0, [r5, #0x1c]
	mov r1, #0x1d
	mov r2, #0x1e
	bl Oam_LoadNCERFile
	str r0, [r5, #0x30]
	ldrh r3, [r5, #8]
	ldr r0, [r5, #0x1c]
	mov r1, #0xd
	add r2, sp, #4
	bl sub_0204B37C
	add r4, r0, #0
	ldr r0, [sp, #4]
	mov r2, #0x22
	ldr r1, [r0, #0xc]
	lsl r0, r6, #4
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0xbc
	blx MIi_CpuCopy16
	add r0, r4, #0
	bl GFL_HeapFree
	mov r0, #0xc8
	mov r1, #0xa
	bl sub_02042F2C
	ldrh r1, [r5, #8]
	mov r0, #0
	bl sub_02042BA8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021EB53C: .word 0x0000030A
	thumb_func_end ovy79_21eb494

	thumb_func_start ovy79_21eb540
ovy79_21eb540: ; 0x021EB540
	push {r3, r4, r5, lr}
	mov r1, #3
	add r4, r0, #0
	lsl r1, r1, #8
	ldrb r3, [r4, r1]
	add r1, #0xa
	ldrb r2, [r4, r1]
	ldr r0, [r4, #0x1c]
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r3, r1
	ldrh r3, [r4, #8]
	ldr r2, _021EB584 ; =0x00007FFF
	add r1, #0x13
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204AB1C
	add r1, sp, #0
	add r5, r0, #0
	bl sub_02060278
	ldr r0, [r4, #0x28]
	ldr r1, [sp]
	bl sub_0204BA40
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	nop
_021EB584: .word 0x00007FFF
	thumb_func_end ovy79_21eb540

	thumb_func_start ovy79_21eb588
ovy79_21eb588: ; 0x021EB588
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	mov r4, #4
	mov r7, #0
_021EB590:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	ble _021EB590
	ldr r4, _021EB6D8 ; =0x021ED924
	add r3, sp, #0x6c
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
	mov r0, #7
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #3
	bl sub_02044BD8
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	mov r0, #7
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #7
	bl sub_02044F90
	ldr r6, _021EB6DC ; =0x021ED944
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #2
	bl sub_02044BD8
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #6
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
	ldr r6, _021EB6E0 ; =0x021ED8E4
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	add r1, r7, #0
	bl sub_02044BD8
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #4
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #4
	bl sub_02044F90
	ldr r6, _021EB6E4 ; =0x021ED904
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	add r2, r7, #0
	bl sub_0204476C
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044BD8
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #5
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #5
	bl sub_02044F90
	ldr r2, _021EB6E8 ; =0x04001050
	ldr r0, _021EB6EC ; =0xFFFF1FFF
	strh r7, [r2]
	sub r2, #0x50
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_021EB6D8: .word 0x021ED924
_021EB6DC: .word 0x021ED944
_021EB6E0: .word 0x021ED8E4
_021EB6E4: .word 0x021ED904
_021EB6E8: .word 0x04001050
_021EB6EC: .word 0xFFFF1FFF
	thumb_func_end ovy79_21eb588

	thumb_func_start ovy79_21eb6f0
ovy79_21eb6f0: ; 0x021EB6F0
	push {r3, lr}
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021EB704 ; =0x04001050
	mov r1, #2
	mov r2, #0x1e
	mov r3, #0x15
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	.align 2, 0
_021EB704: .word 0x04001050
	thumb_func_end ovy79_21eb6f0

	thumb_func_start ovy79_21eb708
ovy79_21eb708: ; 0x021EB708
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	mov r4, #0
_021EB710:
	lsl r6, r4, #2
	add r0, sp, #4
	add r5, r0, r6
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_021EBB6C
	mov r1, #0xfe
	add r0, sp, #4
	strb r1, [r0, r6]
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r4, r4, #1
	strb r0, [r5, #1]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strb r0, [r5, #2]
	mov r0, #0x14
	strb r0, [r5, #3]
	cmp r4, #3
	blt _021EB710
	ldr r0, _021EB770 ; =0x021ED86D
	add r1, sp, #0x10
	mov r2, #0x20
	mov r4, #0x20
	blx MI_CpuCopy8
	mov r1, #0xff
	add r0, sp, #0x24
	strb r1, [r0, #0xc]
	add r0, sp, #4
	bl sub_0203DA0C
	sub r4, #0x21
	cmp r0, r4
	beq _021EB768
	ldr r1, _021EB774 ; =0x0000030B
	ldrb r1, [r7, r1]
	cmp r1, #0
	bne _021EB76C
	cmp r0, #5
	beq _021EB76C
_021EB768:
	mov r0, #0
	mvn r0, r0
_021EB76C:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EB770: .word 0x021ED86D
_021EB774: .word 0x0000030B
	thumb_func_end ovy79_21eb708

	thumb_func_start ovy79_21eb778
ovy79_21eb778: ; 0x021EB778
	push {r3, lr}
	ldr r1, _021EB7BC ; =0x0000030B
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _021EB78A
	sub r1, #0xd
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021EB790
_021EB78A:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021EB790:
	ldr r0, _021EB7C0 ; =0x021ED8AE
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021EB7AC
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	bne _021EB7B2
_021EB7AC:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021EB7B2:
	add r3, r0, r3
	asr r0, r3, #1
	add r0, #0xb
	pop {r3, pc}
	nop
_021EB7BC: .word 0x0000030B
_021EB7C0: .word 0x021ED8AE
	thumb_func_end ovy79_21eb778

	thumb_func_start ovy79_21eb7c4
ovy79_21eb7c4: ; 0x021EB7C4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	bne _021EB82A
	mov r5, #0xae
	lsl r5, r5, #2
	add r2, r5, #0
	add r3, r5, #0
	add r2, #0x40
	add r3, #0x41
	ldrb r1, [r4, r5]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	add r0, r4, #0
	bl ovy79_21ec60c
	cmp r0, #0xff
	beq _021EB808
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldrb r0, [r4, r5]
	add r1, r4, r0
	add r0, r5, #0
	add r0, #0x49
	strb r2, [r1, r0]
	ldrb r1, [r4, r5]
	ldr r0, [r4, #0x18]
	bl sub_020098F4
_021EB808:
	mov r5, #0xae
	lsl r5, r5, #2
	ldrb r1, [r4, r5]
	add r2, r5, #0
	add r2, #0x49
	add r3, r4, r1
	ldrb r2, [r3, r2]
	add r0, r4, #0
	bl ovy79_21ec494
	ldrb r1, [r4, r5]
	add r0, r4, #0
	mov r2, #0
	bl ovy79_21ec670
	add sp, #8
	pop {r3, r4, r5, pc}
_021EB82A:
	mov r1, #0xbe
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	strb r0, [r4, r1]
	add r0, r1, #1
	ldr r2, [sp]
	sub r1, #0x40
	strb r2, [r4, r0]
	ldr r2, [sp, #4]
	ldr r3, [sp]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldrb r1, [r4, r1]
	add r0, r4, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ovy79_21ebb84
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy79_21eb7c4

	thumb_func_start ovy79_21eb854
ovy79_21eb854: ; 0x021EB854
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_021ED2A0
	cmp r0, #0
	bne _021EB8A6
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021EB8A6
	ldr r0, _021EB9EC ; =0x000002FF
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021EB87E
	add r0, r4, #0
	bl ovy79_21eb7c4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EB87E:
	bl sub_0203DA48
	cmp r0, #0
	beq _021EB8A6
	add r0, r4, #0
	bl ovy79_21eb708
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021EB89E
	add r0, r4, #0
	bl ovy79_21eb778
	add r5, r0, #0
_021EB89E:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021EB8A8
_021EB8A6:
	b _021EB9E8
_021EB8A8:
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
	cmp r5, #0x10
	bls _021EB8B6
	b _021EB9E8
_021EB8B6:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EB8C2: ; jump table
	.short _021EB8E4 - _021EB8C2 - 2 ; case 0
	.short _021EB8E4 - _021EB8C2 - 2 ; case 1
	.short _021EB8E4 - _021EB8C2 - 2 ; case 2
	.short _021EB9E8 - _021EB8C2 - 2 ; case 3
	.short _021EB9E8 - _021EB8C2 - 2 ; case 4
	.short _021EB96A - _021EB8C2 - 2 ; case 5
	.short _021EB946 - _021EB8C2 - 2 ; case 6
	.short _021EB92C - _021EB8C2 - 2 ; case 7
	.short _021EB95E - _021EB8C2 - 2 ; case 8
	.short _021EB952 - _021EB8C2 - 2 ; case 9
	.short _021EB976 - _021EB8C2 - 2 ; case 10
	.short _021EB9A2 - _021EB8C2 - 2 ; case 11
	.short _021EB9A2 - _021EB8C2 - 2 ; case 12
	.short _021EB9A2 - _021EB8C2 - 2 ; case 13
	.short _021EB9A2 - _021EB8C2 - 2 ; case 14
	.short _021EB9A2 - _021EB8C2 - 2 ; case 15
	.short _021EB9A2 - _021EB8C2 - 2 ; case 16
_021EB8E4:
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl sub_021EBB6C
	add r2, sp, #0
	mov r0, #0
	ldrsh r1, [r2, r0]
	mov r0, #0xbe
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r1, #2
	ldrsh r2, [r2, r1]
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x40
	strb r5, [r4, r1]
	add r0, r0, #6
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021EB91E
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy79_21ec670
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EB91E:
	ldr r0, _021EB9F0 ; =0x021ED7F0
	add sp, #4
	ldrb r1, [r0, r5]
	mov r0, #0x42
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021EB92C:
	ldr r0, _021EB9F4 ; =0x00000628
	bl GFL_SndSEPlay
	ldr r1, _021EB9F8 ; =0x000002FE
	ldrb r0, [r4, r1]
	eor r0, r6
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ovy79_21eb9fc
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EB946:
	mov r0, #0xc
	mov r1, #0xc
	add r0, #0xfc
	add sp, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021EB952:
	mov r0, #0x42
	mov r1, #7
	lsl r0, r0, #2
	add sp, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021EB95E:
	mov r0, #0xb
	mov r1, #0xb
	add r0, #0xfd
	add sp, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021EB96A:
	mov r0, #0xd
	mov r1, #0xd
	add r0, #0xfb
	add sp, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021EB976:
	ldr r0, _021EB9F4 ; =0x00000628
	bl GFL_SndSEPlay
	mov r5, #3
	lsl r5, r5, #8
	ldrb r0, [r4, r5]
	mov r1, #5
	add r0, r0, #1
	strb r0, [r4, r5]
	ldrb r0, [r4, r5]
	blx sub_0208D65C
	strb r1, [r4, r5]
	ldrb r1, [r4, r5]
	ldr r0, [r4, #0x18]
	bl sub_020098C4
	add r0, r4, #0
	bl ovy79_21eb540
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EB9A2:
	sub r5, #0xb
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	ldr r0, _021EB9F4 ; =0x00000628
	bl GFL_SndSEPlay
	mov r0, #0xc1
	lsl r0, r0, #2
	add r6, r4, r0
	ldrb r0, [r6, r5]
	mov r1, #6
	add r0, r0, #1
	strb r0, [r6, r5]
	ldrb r0, [r6, r5]
	blx sub_0208D65C
	strb r1, [r6, r5]
	ldrb r2, [r6, r5]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	bl sub_020098DC
	cmp r5, #5
	bne _021EB9DE
	ldrb r1, [r6, r5]
	add r0, r4, #0
	bl ovy79_21ec194
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EB9DE:
	ldrb r2, [r6, r5]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy79_21ec1e4
_021EB9E8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EB9EC: .word 0x000002FF
_021EB9F0: .word 0x021ED7F0
_021EB9F4: .word 0x00000628
_021EB9F8: .word 0x000002FE
	thumb_func_end ovy79_21eb854

	thumb_func_start ovy79_21eb9fc
ovy79_21eb9fc: ; 0x021EB9FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021EBA12
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0xb
	bl ovy79_21ebbdc
	mov r6, #1
	b _021EBA1E
_021EBA12:
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0xa
	bl ovy79_21ebbdc
	mov r6, #0
_021EBA1E:
	mov r4, #0
_021EBA20:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy79_21eba90
	add r4, r4, #1
	cmp r4, #3
	blt _021EBA20
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy79_21eb9fc

	thumb_func_start ovy79_21eba34
ovy79_21eba34: ; 0x021EBA34
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, sp, #0xc
	strh r1, [r5]
	strh r2, [r5, #2]
	add r4, r0, #0
	strh r3, [r5, #4]
	add r0, sp, #0x20
	ldrb r1, [r0, #4]
	strb r1, [r5, #6]
	ldrb r1, [r0]
	strb r1, [r5, #7]
	ldrb r3, [r0, #8]
	add r0, sp, #0xc
	add r1, r3, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r4, #8]
	add r3, r3, #3
	lsl r1, r1, #2
	str r0, [sp, #8]
	lsl r3, r3, #2
	add r1, r4, r1
	add r3, r4, r3
	ldr r0, [r4, #0x34]
	ldr r1, [r1, #0x20]
	ldr r2, [r4, #0x20]
	ldr r3, [r3, #0x20]
	bl Oam_CreateSprite
	add r4, r0, #0
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C5C8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy79_21eba34

	thumb_func_start ovy79_21eba90
ovy79_21eba90: ; 0x021EBA90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r5, r6, #1
	add r4, r0, #0
	add r5, #0xd
	cmp r2, #0
	beq _021EBAAC
	cmp r2, #1
	beq _021EBAF0
	cmp r2, #2
	beq _021EBB34
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021EBAAC:
	add r7, r4, #0
	lsl r0, r5, #2
	add r7, #0x6c
	str r0, [sp]
	ldr r0, [r7, r0]
	bl ovy79_21ebbdc
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C124
	add r0, r5, #1
	add r6, #0x16
	add r4, #0x6c
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl ovy79_21ebbdc
	ldr r0, [r4, r5]
	mov r1, #6
	bl sub_0204C438
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C5C8
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021EBAF0:
	add r7, r4, #0
	lsl r0, r5, #2
	add r7, #0x6c
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	bl ovy79_21ebbdc
	ldr r0, [sp, #4]
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_0204C124
	add r0, r5, #1
	add r6, #0x19
	add r4, #0x6c
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl ovy79_21ebbdc
	ldr r0, [r4, r5]
	mov r1, #6
	bl sub_0204C438
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C5C8
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021EBB34:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x6c]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #1
	add r6, #0x19
	add r4, #0x6c
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl ovy79_21ebbdc
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C438
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C5C8
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy79_21eba90

	thumb_func_start sub_021EBB6C
sub_021EBB6C: ; 0x021EBB6C
	lsl r1, r1, #1
	add r1, #0xd
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x6c]
	add r1, r2, #0
	ldr r3, _021EBB80 ; =Oam_GetSpritePosData
	mov r2, #0
	bx r3
	nop
_021EBB80: .word Oam_GetSpritePosData
	thumb_func_end sub_021EBB6C

	thumb_func_start ovy79_21ebb84
ovy79_21ebb84: ; 0x021EBB84
	push {r3, r4, r5, r6, r7, lr}
	lsl r1, r1, #3
	add r6, r2, #0
	add r7, r3, #0
	mov r4, #0
	add r5, r0, r1
_021EBB90:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xa0
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r7, #0
	bl ovy79_21ebbc8
	add r4, r4, #1
	cmp r4, #2
	blt _021EBB90
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy79_21ebb84

	thumb_func_start ovy79_21ebba8
ovy79_21ebba8: ; 0x021EBBA8
	push {r4, r5, r6, lr}
	lsl r1, r1, #3
	add r6, r2, #0
	mov r4, #0
	add r5, r0, r1
_021EBBB2:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xa0
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _021EBBB2
	pop {r4, r5, r6, pc}
	thumb_func_end ovy79_21ebba8

	thumb_func_start ovy79_21ebbc8
ovy79_21ebbc8: ; 0x021EBBC8
	push {r3, lr}
	add r3, sp, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy79_21ebbc8

	thumb_func_start ovy79_21ebbdc
ovy79_21ebbdc: ; 0x021EBBDC
	push {r4, lr}
	lsl r1, r1, #0x10
	add r4, r0, #0
	lsr r1, r1, #0x10
	bl sub_0204C488
	add r0, r4, #0
	bl sub_0204C56C
	pop {r4, pc}
	thumb_func_end ovy79_21ebbdc

	thumb_func_start ovy79_21ebbf0
ovy79_21ebbf0: ; 0x021EBBF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r6, #0
	mov r7, #0x21
	add r4, r6, #0
_021EBC04:
	ldr r0, _021EBC9C ; =0x021ED7F8
	mov r2, #0x12
	ldrb r0, [r0, r6]
	add r3, r4, #0
	add r7, r7, r0
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	lsl r1, r7, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	str r4, [sp, #8]
	bl ovy79_21eba34
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x6c]
	add r1, r4, #0
	bl sub_0204C520
	add r6, r6, #1
	cmp r6, #4
	blt _021EBC04
	ldr r6, _021EBCA0 ; =0x021ED964
_021EBC38:
	lsl r0, r4, #2
	add r3, r4, r0
	add r2, r6, r3
	ldrb r0, [r2, #3]
	ldrb r3, [r6, r3]
	str r0, [sp]
	ldrb r0, [r2, #4]
	lsl r1, r0, #0x1c
	lsr r1, r1, #0x1c
	str r1, [sp, #4]
	lsl r0, r0, #0x18
	ldrb r1, [r2, #1]
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	bl ovy79_21eba34
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x7c]
	cmp r4, #0x10
	blt _021EBC38
	ldr r0, [r5, #0x7c]
	mov r1, #0
	bl sub_0204C520
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021EBC84
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #4
	bl ovy79_21ebbdc
_021EBC84:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C5C8
	add r0, r5, #0
	bl ovy79_21ec828
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBC9C: .word 0x021ED7F8
_021EBCA0: .word 0x021ED964
	thumb_func_end ovy79_21ebbf0

	thumb_func_start ovy79_21ebca4
ovy79_21ebca4: ; 0x021EBCA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	mov r7, #0xc
_021EBCAE:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _021EBCC0
	add r1, r5, #0
	bl sub_0204C124
_021EBCC0:
	add r4, r4, #1
	cmp r4, #4
	blt _021EBCAE
	ldr r7, _021EBD14 ; =0x0000030B
	mov r4, #0
_021EBCCA:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _021EBCEA
	cmp r4, #7
	ble _021EBCE4
	ldrb r1, [r6, r7]
	cmp r1, #0
	bne _021EBCE2
	cmp r5, #0
	bne _021EBCEA
_021EBCE2:
	b _021EBCE4
_021EBCE4:
	add r1, r5, #0
	bl sub_0204C124
_021EBCEA:
	add r4, r4, #1
	cmp r4, #0x13
	blt _021EBCCA
	mov r0, #0xc3
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _021EBD06
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
_021EBD06:
	cmp r5, #1
	bne _021EBD10
	add r0, r6, #0
	bl ovy79_21ec828
_021EBD10:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBD14: .word 0x0000030B
	thumb_func_end ovy79_21ebca4

	thumb_func_start ovy79_21ebd18
ovy79_21ebd18: ; 0x021EBD18
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21ec44c
	add r0, r4, #0
	bl ovy79_21eaad0
	add r0, r4, #0
	mov r1, #0
	bl ovy79_21ebca4
	pop {r4, pc}
	thumb_func_end ovy79_21ebd18

	thumb_func_start ovy79_21ebd30
ovy79_21ebd30: ; 0x021EBD30
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ovy79_21ed6dc
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0203A850
	add r0, r4, #0
	mov r1, #1
	bl ovy79_21ebca4
	add r0, r4, #0
	bl ovy79_21ec410
	pop {r4, pc}
	thumb_func_end ovy79_21ebd30

	thumb_func_start ovy79_21ebd54
ovy79_21ebd54: ; 0x021EBD54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _021EBDD0 ; =0x000002FB
	add r5, r0, #0
	ldrb r1, [r5, r6]
	cmp r1, #0
	beq _021EBD6C
	cmp r1, #1
	beq _021EBD78
	cmp r1, #2
	beq _021EBDB8
	b _021EBDC8
_021EBD6C:
	bl ovy79_21ebd18
	ldrb r0, [r5, r6]
	add r0, r0, #1
	strb r0, [r5, r6]
	b _021EBDC8
_021EBD78:
	bl ovy79_21eb184
	cmp r0, #0
	beq _021EBDC8
	mov r0, #0x41
	lsl r0, r0, #2
	mov r4, #0
	str r4, [r5, r0]
	add r7, r5, r0
	add r6, #9
_021EBD8C:
	lsl r0, r4, #1
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	add r3, r5, r4
	lsl r2, r4, #0x18
	ldrb r3, [r3, r6]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ovy79_21ebe44
	add r4, r4, #1
	cmp r4, #5
	blt _021EBD8C
	ldr r0, _021EBDD0 ; =0x000002FB
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021EBDC8
_021EBDB8:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021EBDC8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EBDC8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBDD0: .word 0x000002FB
	thumb_func_end ovy79_21ebd54

	thumb_func_start ovy79_21ebdd4
ovy79_21ebdd4: ; 0x021EBDD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _021EBE40 ; =0x000002FB
	add r5, r0, #0
	ldrb r1, [r5, r6]
	cmp r1, #0
	beq _021EBDE8
	cmp r1, #1
	beq _021EBE24
	b _021EBE38
_021EBDE8:
	mov r0, #0x41
	lsl r0, r0, #2
	mov r1, #0
	str r1, [r5, r0]
	mov r4, #4
	add r7, r5, r0
	add r6, #9
_021EBDF6:
	mov r0, #4
	sub r1, r0, r4
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	add r3, r5, r4
	lsl r2, r4, #0x18
	ldrb r3, [r3, r6]
	add r0, r5, #0
	mov r1, #1
	lsr r2, r2, #0x18
	bl ovy79_21ebe44
	sub r4, r4, #1
	bpl _021EBDF6
	ldr r0, _021EBE40 ; =0x000002FB
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021EBE38
_021EBE24:
	mov r1, #0x41
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021EBE38
	bl ovy79_21ebd30
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EBE38:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBE40: .word 0x000002FB
	thumb_func_end ovy79_21ebdd4

	thumb_func_start ovy79_21ebe44
ovy79_21ebe44: ; 0x021EBE44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r0, #0xec
	add r6, r2, #0
	add r7, r3, #0
	ldr r0, [r0]
	ldr r1, _021EBEB8 ; =ovy79_21ebec4
	mov r2, #0x14
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	str r5, [r4]
	ldr r0, [sp]
	add r1, r6, #0
	strb r0, [r4, #4]
	strb r6, [r4, #5]
	strb r7, [r4, #6]
	add r0, sp, #0x18
	ldrb r0, [r0]
	add r2, r7, #0
	strb r0, [r4, #8]
	mov r0, #0
	sub r0, #0x10
	strb r0, [r4, #9]
	mov r0, #0
	strb r0, [r4, #0xa]
	mov r0, #2
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl ovy79_21ec1e4
	ldr r3, _021EBEBC ; =0x0000030A
	add r0, r5, #0
	ldrb r3, [r5, r3]
	add r1, r6, #0
	mov r2, #0x10
	lsl r5, r3, #1
	ldr r3, _021EBEC0 ; =0x021ED7F4
	ldrh r3, [r3, r5]
	bl ovy79_21ec2a0
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _021EBEB4
	str r1, [r4, #0x10]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
_021EBEB4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBEB8: .word ovy79_21ebec4
_021EBEBC: .word 0x0000030A
_021EBEC0: .word 0x021ED7F4
	thumb_func_end ovy79_21ebe44

	thumb_func_start ovy79_21ebec4
ovy79_21ebec4: ; 0x021EBEC4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r4, [r5]
	ldr r0, _021EBFBC ; =0x00007FFF
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, _021EBFC0 ; =0x0000030A
	ldrb r0, [r4, r0]
	lsl r2, r0, #1
	ldr r0, _021EBFC4 ; =0x021ED7F4
	ldrh r0, [r0, r2]
	strh r0, [r1, #2]
	ldrb r2, [r5, #0xc]
	cmp r2, #0
	beq _021EBEF0
	cmp r2, #1
	beq _021EBF02
	cmp r2, #2
	beq _021EBF6A
	b _021EBFA6
_021EBEF0:
	ldrb r1, [r5, #8]
	sub r0, r1, #1
	strb r0, [r5, #8]
	cmp r1, #0
	bne _021EBFB8
	add r0, r2, #1
	add sp, #4
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, r6, pc}
_021EBF02:
	mov r1, #9
	mov r0, #0xb
	ldrsb r2, [r5, r1]
	ldrsb r0, [r5, r0]
	add r0, r2, r0
	strb r0, [r5, #9]
	ldrsb r0, [r5, r1]
	neg r2, r0
	cmp r0, #0
	blt _021EBF18
	add r2, r0, #0
_021EBF18:
	mov r3, #1
	cmp r0, #0
	ble _021EBF20
	mov r3, #0
_021EBF20:
	lsl r6, r3, #1
	add r3, sp, #0
	lsl r2, r2, #0x18
	ldrb r1, [r5, #5]
	ldrh r3, [r3, r6]
	add r0, r4, #0
	lsr r2, r2, #0x18
	bl ovy79_21ec2a0
	mov r0, #9
	ldrsb r2, [r5, r0]
	mov r0, #0xa
	ldrsb r1, [r5, r0]
	cmp r2, r1
	bne _021EBFB8
	ldrb r1, [r5, #4]
	cmp r1, #0
	bne _021EBF50
	add r1, r0, #0
	sub r1, #0xc
	sub r0, #0x1a
	strb r1, [r5, #0xb]
	strb r0, [r5, #0xa]
	b _021EBF60
_021EBF50:
	ldrb r1, [r5, #5]
	mov r0, #0
	strb r0, [r5, #0xb]
	strb r0, [r5, #0xa]
	add r0, r4, #0
	mov r2, #1
	bl ovy79_21ec374
_021EBF60:
	ldrb r0, [r5, #0xc]
	add sp, #4
	add r0, r0, #1
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, r6, pc}
_021EBF6A:
	mov r1, #9
	mov r0, #0xb
	ldrsb r2, [r5, r1]
	ldrsb r0, [r5, r0]
	add r0, r2, r0
	strb r0, [r5, #9]
	ldrsb r0, [r5, r1]
	neg r2, r0
	cmp r0, #0
	blt _021EBF80
	add r2, r0, #0
_021EBF80:
	mov r3, #1
	cmp r0, #0
	ble _021EBF88
	mov r3, #0
_021EBF88:
	add r0, r4, #0
	lsl r4, r3, #1
	add r3, sp, #0
	lsl r2, r2, #0x18
	ldrb r1, [r5, #5]
	ldrh r3, [r3, r4]
	lsr r2, r2, #0x18
	bl ovy79_21ec2a0
	mov r0, #9
	ldrsb r1, [r5, r0]
	mov r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _021EBFB8
_021EBFA6:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _021EBFB2
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021EBFB2:
	add r0, r6, #0
	bl sub_0203A870
_021EBFB8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EBFBC: .word 0x00007FFF
_021EBFC0: .word 0x0000030A
_021EBFC4: .word 0x021ED7F4
	thumb_func_end ovy79_21ebec4

	thumb_func_start ovy79_21ebfc8
ovy79_21ebfc8: ; 0x021EBFC8
	push {r3, lr}
	sub sp, #8
	str r1, [sp]
	ldr r1, _021EBFE8 ; =0x00007FFF
	mov r2, #0x11
	str r1, [sp, #4]
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	mov r1, #1
	mov r3, #3
	bl sub_02027880
	add sp, #8
	pop {r3, pc}
	nop
_021EBFE8: .word 0x00007FFF
	thumb_func_end ovy79_21ebfc8

	thumb_func_start ovy79_21ebfec
ovy79_21ebfec: ; 0x021EBFEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021EC000
	mov r0, #1
	add r5, #0xe0
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021EC000:
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	ldr r1, _021EC040 ; =ovy79_21ec078
	mov r2, #0x10
	mov r3, #0
	mov r7, #0
	bl sub_0203A888
	add r6, r0, #0
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	str r5, [r4]
	mov r0, #2
	strb r0, [r4, #5]
	strb r7, [r4, #6]
	mov r0, #0xa
	strb r0, [r4, #7]
	add r0, r5, #0
	mov r1, #1
	strb r1, [r4, #8]
	add r0, #0xf8
	add r5, #0xe0
	str r6, [r0]
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC040: .word ovy79_21ec078
	thumb_func_end ovy79_21ebfec

	thumb_func_start ovy79_21ec044
ovy79_21ec044: ; 0x021EC044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1]
	cmp r1, #0
	bne _021EC05A
	mov r0, #0
	add r5, #0xe0
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EC05A:
	mov r1, #0
	mov r4, #0
	bl ovy79_21ebfc8
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_0203A870
	add r0, r5, #0
	add r0, #0xf8
	add r5, #0xe0
	str r4, [r0]
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy79_21ec044

	thumb_func_start ovy79_21ec078
ovy79_21ec078: ; 0x021EC078
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r4, [r5]
	add r0, r4, #0
	bl ovy79_21ed2c0
	cmp r0, #0
	bne _021EC0B4
	mov r6, #6
	mov r0, #8
	ldrsb r1, [r5, r6]
	ldrsb r0, [r5, r0]
	add r0, r1, r0
	strb r0, [r5, #6]
	ldrb r1, [r5, #6]
	add r0, r4, #0
	bl ovy79_21ebfc8
	ldrsb r1, [r5, r6]
	cmp r1, #0
	beq _021EC0AA
	mov r0, #7
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _021EC0B4
_021EC0AA:
	mov r0, #8
	ldrsb r1, [r5, r0]
	sub r0, #9
	mul r0, r1
	strb r0, [r5, #8]
_021EC0B4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy79_21ec078

	thumb_func_start ovy79_21ec0b8
ovy79_21ec0b8: ; 0x021EC0B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r7, _021EC190 ; =0x0000030B
	add r6, r0, #0
	ldrb r1, [r6, r7]
	mov r5, #0
	cmp r1, #0
	beq _021EC18A
	bl sub_021EAD0C
	cmp r0, #0
	bne _021EC18A
	bl sub_0202C9E8
	add r4, r0, #0
	add r0, r7, #0
	sub r0, #0x15
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _021EC0F2
	add r0, sp, #0x14
	str r5, [sp, #0x14]
	bl sub_0202C9FC
	cmp r0, #0x1e
	beq _021EC0F2
	mov r0, #1
	sub r7, #0x15
	strb r0, [r6, r7]
_021EC0F2:
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0xbc
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0xdc
	str r0, [sp, #4]
	mov r0, #0xc3
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r6, r0
	sub r4, r4, #1
	mov r7, #0
	str r0, [sp, #0xc]
_021EC116:
	cmp r5, #0xa
	bge _021EC18A
	cmp r4, #0
	bge _021EC13A
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r3, r5, #0
	add r3, #0x51
	lsl r3, r3, #0x10
	ldr r0, [r0]
	ldr r1, [sp, #4]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	add r5, r5, #1
	b _021EC184
_021EC13A:
	add r0, r4, #0
	bl sub_0202C9D4
	cmp r0, #0
	beq _021EC182
	bl sub_02013D50
	add r1, r0, #0
	mov r0, #2
	add r3, r5, #0
	str r0, [sp]
	add r0, #0xfe
	lsl r2, r1, #1
	ldr r1, [sp, #8]
	add r3, #0x51
	lsl r3, r3, #0x10
	add r1, r1, r2
	ldr r0, [r6, r0]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EC180
	mov r0, #0xc3
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r6, r0]
	add r0, r6, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204C124
_021EC180:
	add r5, r5, #1
_021EC182:
	sub r4, r4, #1
_021EC184:
	add r7, r7, #1
	cmp r7, #0x1e
	blt _021EC116
_021EC18A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC190: .word 0x0000030B
	thumb_func_end ovy79_21ec0b8

	thumb_func_start ovy79_21ec194
ovy79_21ec194: ; 0x021EC194
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x20
	mov r2, #0x7e
	str r0, [sp]
	add r0, #0xe0
	lsl r2, r2, #2
	ldr r0, [r3, r0]
	add r2, r3, r2
	lsl r1, r1, #5
	add r1, r2, r1
	mov r2, #1
	mov r3, #0
	bl sub_02026E64
	pop {r3, pc}
	thumb_func_end ovy79_21ec194

	thumb_func_start ovy79_21ec1b4
ovy79_21ec1b4: ; 0x021EC1B4
	push {r3, r4, lr}
	sub sp, #4
	add r3, r1, #0
	add r4, r0, #0
	mov r0, #6
	mov r1, #0x63
	str r0, [sp]
	add r0, #0xfa
	lsl r3, r3, #4
	add r3, #0x21
	lsl r3, r3, #0x10
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r4, r4, r1
	mov r1, #0x12
	mul r1, r2
	add r1, r4, r1
	add r1, r1, #6
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy79_21ec1b4

	thumb_func_start ovy79_21ec1e4
ovy79_21ec1e4: ; 0x021EC1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x63
	add r6, r1, #0
	lsl r0, r0, #2
	add r7, r2, #0
	add r1, r5, r0
	mov r0, #0x12
	mul r0, r7
	add r0, r1, r0
	str r0, [sp, #4]
	lsl r3, r6, #1
	mov r0, #6
	add r3, r6, r3
	str r0, [sp]
	add r0, #0xfa
	add r3, #0x11
	lsl r3, r3, #0x10
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02026E64
	mov r4, #0
_021EC218:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021EC47C
	cmp r6, r0
	bne _021EC22E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy79_21ec1b4
_021EC22E:
	add r4, r4, #1
	cmp r4, #3
	blt _021EC218
	cmp r6, #2
	beq _021EC240
	cmp r6, #4
	beq _021EC270
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021EC240:
	mov r6, #6
	mov r0, #6
	ldr r1, [sp, #4]
	str r6, [sp]
	add r0, #0xfa
	ldr r0, [r5, r0]
	add r1, r1, #6
	mov r2, #3
	mov r4, #4
	mov r3, #4
	bl sub_02026E64
	ldr r1, [sp, #4]
	str r6, [sp]
	add r4, #0xfc
	add r1, #0xc
	ldr r0, [r5, r4]
	mov r2, #3
	mov r3, #0x14
	str r1, [sp, #4]
	bl sub_02026E64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021EC270:
	mov r6, #6
	mov r0, #6
	ldr r1, [sp, #4]
	str r6, [sp]
	add r0, #0xfa
	ldr r0, [r5, r0]
	add r1, r1, #6
	mov r2, #3
	mov r4, #1
	mov r3, #1
	bl sub_02026E64
	ldr r1, [sp, #4]
	str r6, [sp]
	add r4, #0xff
	add r1, #0xc
	ldr r0, [r5, r4]
	mov r2, #3
	mov r3, #0x11
	str r1, [sp, #4]
	bl sub_02026E64
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy79_21ec1e4

	thumb_func_start ovy79_21ec2a0
ovy79_21ec2a0: ; 0x021EC2A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #8]
	add r6, r2, #0
	str r6, [sp]
	add r5, r0, #0
	ldr r0, [sp, #8]
	ldr r3, _021EC370 ; =0x0000030B
	str r0, [sp, #4]
	ldrb r3, [r5, r3]
	add r7, r1, #0
	mov r4, #1
	sub r3, r4, r3
	lsl r2, r7, #1
	lsl r3, r3, #4
	mov r0, #1
	lsl r0, r0, #8
	add r2, r7, r2
	add r3, #0x11
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #3
	bl sub_02027880
	lsl r0, r7, #4
	add r0, #0x21
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r4, #0
	str r0, [sp, #0xc]
_021EC2E2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021EC47C
	cmp r7, r0
	bne _021EC304
	str r6, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #3
	mov r3, #3
	bl sub_02027880
_021EC304:
	add r4, r4, #1
	cmp r4, #3
	blt _021EC2E2
	cmp r7, #2
	beq _021EC316
	cmp r7, #4
	beq _021EC342
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EC316:
	str r6, [sp]
	ldr r0, [sp, #8]
	mov r4, #1
	lsl r4, r4, #8
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r1, #3
	mov r2, #4
	mov r3, #3
	bl sub_02027880
	str r6, [sp]
	ldr r0, [sp, #8]
	mov r1, #3
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r2, #0x14
	mov r3, #3
	bl sub_02027880
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EC342:
	str r6, [sp]
	ldr r0, [sp, #8]
	mov r4, #1
	lsl r4, r4, #8
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r1, #3
	mov r2, #1
	mov r3, #3
	bl sub_02027880
	str r6, [sp]
	ldr r0, [sp, #8]
	mov r1, #3
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r2, #0x11
	mov r3, #3
	bl sub_02027880
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC370: .word 0x0000030B
	thumb_func_end ovy79_21ec2a0

	thumb_func_start ovy79_21ec374
ovy79_21ec374: ; 0x021EC374
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021EC40C ; =0x0000030B
	add r7, r1, #0
	ldrb r0, [r4, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _021EC3A2
	mov r5, #0
_021EC386:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021EC47C
	cmp r7, r0
	bne _021EC39C
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ovy79_21ebba8
_021EC39C:
	add r5, r5, #1
	cmp r5, #3
	blt _021EC386
_021EC3A2:
	cmp r7, #0
	beq _021EC3B0
	cmp r7, #2
	beq _021EC3D8
	cmp r7, #4
	beq _021EC3E4
	pop {r3, r4, r5, r6, r7, pc}
_021EC3B0:
	ldr r5, _021EC40C ; =0x0000030B
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _021EC408
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r5, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021EC408
	add r4, #0x9c
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021EC3D8:
	add r4, #0x84
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021EC3E4:
	ldr r7, _021EC40C ; =0x0000030B
	mov r5, #0
_021EC3E8:
	cmp r5, #6
	beq _021EC402
	ldrb r0, [r4, r7]
	cmp r0, #0
	bne _021EC3F6
	cmp r5, #7
	bgt _021EC402
_021EC3F6:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x6c]
	add r1, r6, #0
	bl sub_0204C124
_021EC402:
	add r5, r5, #1
	cmp r5, #0xa
	ble _021EC3E8
_021EC408:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC40C: .word 0x0000030B
	thumb_func_end ovy79_21ec374

	thumb_func_start ovy79_21ec410
ovy79_21ec410: ; 0x021EC410
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xc1
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021EC41A:
	lsl r1, r4, #0x18
	ldr r0, [r6, #0x18]
	lsr r1, r1, #0x18
	add r5, r6, r4
	bl sub_020098E8
	strb r0, [r5, r7]
	cmp r4, #5
	bge _021EC43A
	ldrb r2, [r5, r7]
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ovy79_21ec1e4
	b _021EC442
_021EC43A:
	ldrb r1, [r5, r7]
	add r0, r6, #0
	bl ovy79_21ec194
_021EC442:
	add r4, r4, #1
	cmp r4, #6
	blt _021EC41A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21ec410

	thumb_func_start ovy79_21ec44c
ovy79_21ec44c: ; 0x021EC44C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy79_21ec410
	ldr r6, _021EC474 ; =0x021ED7F4
	ldr r7, _021EC478 ; =0x0000030A
	mov r4, #0
_021EC45A:
	ldrb r3, [r5, r7]
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsl r3, r3, #1
	ldrh r3, [r6, r3]
	lsr r1, r1, #0x18
	mov r2, #0x10
	bl ovy79_21ec2a0
	add r4, r4, #1
	cmp r4, #5
	blt _021EC45A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC474: .word 0x021ED7F4
_021EC478: .word 0x0000030A
	thumb_func_end ovy79_21ec44c

	thumb_func_start sub_021EC47C
sub_021EC47C: ; 0x021EC47C
	add r1, r0, r1
	ldr r0, _021EC48C ; =0x00000301
	ldrb r1, [r1, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	ldr r0, _021EC490 ; =0x021ED9B6
	ldrb r0, [r0, r1]
	bx lr
	.align 2, 0
_021EC48C: .word 0x00000301
_021EC490: .word 0x021ED9B6
	thumb_func_end sub_021EC47C

	thumb_func_start ovy79_21ec494
ovy79_21ec494: ; 0x021EC494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	lsl r3, r4, #1
	ldr r7, _021EC4C4 ; =0x00000301
	add r2, r5, r6
	strb r4, [r2, r7]
	ldr r2, _021EC4C8 ; =0x021ED9B4
	add r3, r4, r3
	add r4, r2, r3
	ldrb r2, [r2, r3]
	ldrb r3, [r4, #1]
	bl ovy79_21ebb84
	ldrb r2, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r5, r2
	add r2, r7, #3
	ldrb r2, [r3, r2]
	bl ovy79_21ec1b4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC4C4: .word 0x00000301
_021EC4C8: .word 0x021ED9B4
	thumb_func_end ovy79_21ec494

	thumb_func_start ovy79_21ec4cc
ovy79_21ec4cc: ; 0x021EC4CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021EC4F4 ; =0x00000301
	add r6, r0, #0
	mov r4, #0
_021EC4D4:
	ldr r0, [r6, #0x18]
	add r5, r6, r4
	add r1, r4, #0
	bl sub_02009900
	strb r0, [r5, r7]
	ldrb r2, [r5, r7]
	add r0, r6, #0
	add r1, r4, #0
	bl ovy79_21ec494
	add r4, r4, #1
	cmp r4, #3
	blt _021EC4D4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC4F4: .word 0x00000301
	thumb_func_end ovy79_21ec4cc

	thumb_func_start ovy79_21ec4f8
ovy79_21ec4f8: ; 0x021EC4F8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	ble _021EC518
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EC526
_021EC518:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EC526:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _021EC542
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EC550
_021EC542:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EC550:
	blx sub_0208DA4C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r4, #0
	ble _021EC570
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EC57E
_021EC570:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EC57E:
	blx sub_0208DA4C
	str r0, [sp]
	cmp r6, #0
	ble _021EC59A
	lsl r0, r6, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EC5A8
_021EC59A:
	lsl r0, r6, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EC5A8:
	blx sub_0208DA4C
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, sp, #0
	blx VEC_Distance
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy79_21ec4f8

	thumb_func_start ovy79_21ec5c0
ovy79_21ec5c0: ; 0x021EC5C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #0
_021EC5CE:
	cmp r4, r5
	beq _021EC5FE
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #4
	bl sub_021EBB6C
	add r1, sp, #4
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r2, r1, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r3, [sp]
	add r2, r7, #0
	bl ovy79_21ec4f8
	mov r1, #0xa
	lsl r1, r1, #0xe
	cmp r0, r1
	bgt _021EC5FE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EC5FE:
	add r4, r4, #1
	cmp r4, #3
	blt _021EC5CE
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21ec5c0

	thumb_func_start ovy79_21ec60c
ovy79_21ec60c: ; 0x021EC60C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp, #4]
	ldr r6, _021EC668 ; =0x7FFFFFFF
	add r7, r0, #0
	str r1, [sp]
	str r3, [sp, #8]
	mov r4, #0
_021EC61C:
	lsl r0, r4, #1
	add r3, r4, r0
	ldr r0, _021EC66C ; =0x021ED9B4
	ldr r2, _021EC66C ; =0x021ED9B4
	add r5, r0, r3
	ldrb r2, [r2, r3]
	ldrb r3, [r5, #1]
	ldr r1, [sp]
	add r0, r7, #0
	bl ovy79_21ec5c0
	cmp r0, #0
	bne _021EC64A
	ldrb r0, [r5]
	ldrb r1, [r5, #1]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl ovy79_21ec4f8
	cmp r0, r6
	bge _021EC64A
	add r6, r0, #0
	str r4, [sp, #0xc]
_021EC64A:
	add r4, r4, #1
	cmp r4, #0x2a
	blo _021EC61C
	mov r0, #2
	lsl r0, r0, #0x10
	cmp r6, r0
	ble _021EC65E
	add sp, #0x10
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_021EC65E:
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC668: .word 0x7FFFFFFF
_021EC66C: .word 0x021ED9B4
	thumb_func_end ovy79_21ec60c

	thumb_func_start ovy79_21ec670
ovy79_21ec670: ; 0x021EC670
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021EC6B8 ; =0x000002FF
	add r6, r1, #0
	strb r2, [r5, r0]
	cmp r2, #0
	beq _021EC6A0
	mov r4, #0
	mov r7, #2
_021EC682:
	cmp r6, r4
	bne _021EC68E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	b _021EC694
_021EC68E:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
_021EC694:
	bl ovy79_21eba90
	add r4, r4, #1
	cmp r4, #3
	blt _021EC682
	pop {r3, r4, r5, r6, r7, pc}
_021EC6A0:
	mov r4, #0
	mov r6, #1
_021EC6A4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy79_21eba90
	add r4, r4, #1
	cmp r4, #3
	blt _021EC6A4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC6B8: .word 0x000002FF
	thumb_func_end ovy79_21ec670

	thumb_func_start ovy79_21ec6bc
ovy79_21ec6bc: ; 0x021EC6BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r7, r1, #0
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	mov r1, #1
	ldr r6, _021EC760 ; =0x0000030A
	and r0, r1
	strb r0, [r5, r6]
	ldr r0, [r5, #0x18]
	bl sub_020098C8
	add r1, r6, #0
	sub r1, #0xa
	strb r0, [r5, r1]
	mov r4, #0
	sub r6, r6, #6
_021EC6E4:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x18]
	lsr r1, r1, #0x18
	bl sub_020098E8
	add r1, r5, r4
	add r4, r4, #1
	strb r0, [r1, r6]
	cmp r4, #6
	blt _021EC6E4
	ldrh r2, [r5, #8]
	mov r0, #0x54
	mov r1, #0
	mov r4, #0
	bl sub_0204BF1C
	str r0, [r5, #0x34]
	ldrh r2, [r5, #8]
	ldr r0, _021EC764 ; =0x021ED840
	mov r1, #1
	mov r6, #1
	bl sub_0204BE9C
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	str r1, [r5, #0x38]
	bl sub_0204C018
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0204BFF0
	ldr r2, _021EC760 ; =0x0000030A
	ldr r1, _021EC760 ; =0x0000030A
	sub r2, #0xa
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r5, #0
	mov r3, #1
	bl ovy79_21eb2dc
	ldr r1, _021EC760 ; =0x0000030A
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl ovy79_21eb494
	add r0, r5, #0
	bl ovy79_21ebbf0
	cmp r7, #0
	beq _021EC754
	add r0, r5, #0
	add r1, r4, #0
	bl ovy79_21ebca4
	pop {r3, r4, r5, r6, r7, pc}
_021EC754:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy79_21ebca4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC760: .word 0x0000030A
_021EC764: .word 0x021ED840
	thumb_func_end ovy79_21ec6bc

	thumb_func_start ovy79_21ec768
ovy79_21ec768: ; 0x021EC768
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy79_21ebd30
	mov r4, #0
	add r7, r4, #0
_021EC774:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	beq _021EC784
	bl sub_0204C108
	str r7, [r6, #0x6c]
_021EC784:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021EC774
	mov r4, #0
	add r7, r4, #0
_021EC78E:
	mov r0, #0xc
	mul r0, r4
	add r6, r5, r0
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _021EC7A0
	bl sub_0204C108
	str r7, [r6, #0x3c]
_021EC7A0:
	add r4, r4, #1
	cmp r4, #4
	blt _021EC78E
	ldr r0, [r5, #0x30]
	bl sub_0204BE64
	ldr r0, [r5, #0x2c]
	bl sub_0204BE64
	ldr r0, [r5, #0x28]
	bl sub_0204B98C
	ldr r0, [r5, #0x24]
	bl sub_0204B98C
	ldr r0, [r5, #0x20]
	bl sub_0204BCD0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21ec768

	thumb_func_start ovy79_21ec7c8
ovy79_21ec7c8: ; 0x021EC7C8
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21ec768
	ldr r0, [r4, #0x38]
	bl sub_0204BECC
	ldr r0, [r4, #0x34]
	bl sub_0204BF98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy79_21ec7c8

	thumb_func_start ovy79_21ec818
ovy79_21ec818: ; 0x021EC818
	push {r3, lr}
	bl sub_0203D5E8
	ldr r1, _021EC824 ; =0x021EDA40
	ldrb r0, [r1, r0]
	pop {r3, pc}
	.align 2, 0
_021EC824: .word 0x021EDA40
	thumb_func_end ovy79_21ec818

	thumb_func_start ovy79_21ec828
ovy79_21ec828: ; 0x021EC828
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #0
	bl sub_02044238
	ldr r0, [sp]
	mov r1, #0xc
	blx sub_0208D868
	add r4, r0, #1
	ldr r0, [r5, #0x7c]
	bl sub_0204C4A0
	cmp r4, r0
	beq _021EC850
	ldr r0, [r5, #0x7c]
	add r1, r4, #0
	bl ovy79_21ebbdc
_021EC850:
	ldr r4, [r5, #0x6c]
	ldr r0, [sp]
	mov r1, #0xa
	blx sub_0208D868
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0204C510
	cmp r6, r0
	beq _021EC870
	lsl r1, r6, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
_021EC870:
	ldr r4, [r5, #0x70]
	ldr r0, [sp]
	mov r1, #0xa
	blx sub_0208D868
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0204C510
	cmp r6, r0
	beq _021EC890
	lsl r1, r6, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
_021EC890:
	ldr r1, [sp, #8]
	ldr r6, [r5, #0x7c]
	mov r0, #1
	add r4, r1, #0
	and r4, r0
	add r0, r6, #0
	bl sub_0204C510
	cmp r4, r0
	beq _021EC8AE
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
_021EC8AE:
	ldr r4, [r5, #0x74]
	ldr r0, [sp, #4]
	mov r1, #0xa
	blx sub_0208D868
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0204C510
	cmp r6, r0
	beq _021EC8CE
	lsl r1, r6, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
_021EC8CE:
	ldr r4, [r5, #0x78]
	ldr r0, [sp, #4]
	mov r1, #0xa
	blx sub_0208D868
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0204C510
	cmp r6, r0
	beq _021EC8EE
	lsl r1, r6, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
_021EC8EE:
	add r5, #0x80
	ldr r5, [r5]
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021EC918
	bl ovy79_21ec818
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0204C510
	cmp r4, r0
	beq _021EC938
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021EC918:
	bl sub_0203D5E8
	mov r4, #1
	cmp r0, #5
	beq _021EC924
	mov r4, #0
_021EC924:
	add r0, r5, #0
	bl sub_0204C510
	cmp r4, r0
	beq _021EC938
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
_021EC938:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy79_21ec828

	thumb_func_start ovy79_21ec93c
ovy79_21ec93c: ; 0x021EC93C
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21eb854
	add r0, r4, #0
	bl ovy79_21ed250
	add r0, r4, #0
	bl ovy79_21ed2d8
	add r0, r4, #0
	bl ovy79_21ec828
	add r0, r4, #0
	bl sub_021ED2A0
	cmp r0, #0
	bne _021EC97C
	ldr r0, _021EC988 ; =0x0000030B
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021EC984
	add r0, r4, #0
	bl ovy79_21ead28
	add r0, r4, #0
	bl ovy79_21eae70
	add r0, r4, #0
	bl ovy79_21ec0b8
	pop {r4, pc}
_021EC97C:
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021EC984:
	pop {r4, pc}
	nop
_021EC988: .word 0x0000030B
	thumb_func_end ovy79_21ec93c

	thumb_func_start ovy79_21ec98c
ovy79_21ec98c: ; 0x021EC98C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _021EC9A0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	blx r1
_021EC9A0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0]
	add r0, r4, #0
	bl ovy79_21eb184
	cmp r0, #0
	beq _021EC9BE
	add r0, r4, #0
	bl ovy79_21ec93c
_021EC9BE:
	pop {r4, pc}
	thumb_func_end ovy79_21ec98c

	thumb_func_start ovy79_21ec9c0
ovy79_21ec9c0: ; 0x021EC9C0
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21ebdd4
	cmp r0, #0
	bne _021EC9EC
	add r0, r4, #0
	add r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _021EC9DE
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	blx r1
_021EC9DE:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	add r4, #0xe8
	str r1, [r0]
	str r1, [r4]
	pop {r4, pc}
_021EC9EC:
	add r0, r4, #0
	bl ovy79_21eaa60
	ldr r1, _021ECA00 ; =ovy79_21ec98c
	ldr r2, _021ECA04 ; =0x00000F5E
	add r0, r4, #0
	bl sub_021EA894
	pop {r4, pc}
	nop
_021ECA00: .word ovy79_21ec98c
_021ECA04: .word 0x00000F5E
	thumb_func_end ovy79_21ec9c0

	thumb_func_start ovy79_21eca08
ovy79_21eca08: ; 0x021ECA08
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21ebd54
	cmp r0, #0
	beq _021ECA1E
	ldr r1, _021ECA20 ; =ovy79_21ec9c0
	ldr r2, _021ECA24 ; =0x00000F6B
	add r0, r4, #0
	bl sub_021EA894
_021ECA1E:
	pop {r4, pc}
	.align 2, 0
_021ECA20: .word ovy79_21ec9c0
_021ECA24: .word 0x00000F6B
	thumb_func_end ovy79_21eca08

	thumb_func_start ovy79_21eca28
ovy79_21eca28: ; 0x021ECA28
	push {r3, lr}
	ldr r1, _021ECA48 ; =0x000002FD
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	cmp r2, #0x10
	blo _021ECA44
	mov r2, #0
	strb r2, [r0, r1]
	ldr r1, _021ECA4C ; =ovy79_21ec9c0
	ldr r2, _021ECA50 ; =0x00000F7A
	bl sub_021EA894
_021ECA44:
	pop {r3, pc}
	nop
_021ECA48: .word 0x000002FD
_021ECA4C: .word ovy79_21ec9c0
_021ECA50: .word 0x00000F7A
	thumb_func_end ovy79_21eca28

	thumb_func_start ovy79_21eca54
ovy79_21eca54: ; 0x021ECA54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _021ECB10 ; =0x00000F8C
	mov r4, #0xa
	lsl r4, r4, #0xa
	str r0, [sp]
	ldr r3, _021ECB14 ; =0x021EDA48
	mov r0, #0x70
	add r1, r4, #0
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r0, [r6, #0x14]
	bl sub_02017934
	mov r1, #4
	mov r2, #0x70
	add r3, r5, #0
	str r0, [sp, #8]
	str r4, [sp]
	bl sub_02007560
	cmp r0, #1
	bne _021ECAFC
	mov r1, #0x26
	add r0, r5, #0
	lsl r1, r1, #8
	bl sub_0204405C
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_02009918
	bl sub_020098D8
	cmp r4, r0
	bne _021ECAFC
	add r0, r5, #0
	bl sub_0200CE5C
	cmp r0, #0
	beq _021ECAFC
	ldr r4, _021ECB18 ; =0x00001FE0
	mov r0, #5
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	mov r7, #1
	bl sub_02045080
	mov r3, #0x1a
	add r1, r5, r4
	mov r0, #5
	mov r4, #0x20
	mov r2, #0x20
	lsl r3, r3, #4
	bl sub_02045320
	lsl r1, r4, #8
	mov r2, #6
	mov r0, #5
	add r1, r5, r1
	lsl r2, r2, #8
	bl sub_02045054
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #5
	bl sub_02044F90
	add r0, r6, #0
	bl ovy79_21eb6f0
_021ECAFC:
	ldr r0, [sp, #8]
	mov r1, #4
	bl sub_020075E0
	add r0, r5, #0
	bl GFL_HeapFree
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ECB10: .word 0x00000F8C
_021ECB14: .word 0x021EDA48
_021ECB18: .word 0x00001FE0
	thumb_func_end ovy79_21eca54

	thumb_func_start ovy79_21ecb1c
ovy79_21ecb1c: ; 0x021ECB1C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ovy79_21ed6dc
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0203A850
	add r0, r4, #0
	bl sub_021EB2CC
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	beq _021ECB44
	bl sub_0203A5D0
_021ECB44:
	add r0, r4, #0
	bl ovy79_21ebd18
	ldr r0, _021ECB54 ; =0x000002F7
	mov r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_021ECB54: .word 0x000002F7
	thumb_func_end ovy79_21ecb1c
_021ECB58:
	.byte 0x01, 0x49, 0x02, 0x22, 0x42, 0x54, 0x70, 0x47
	.byte 0xF7, 0x02, 0x00, 0x00

	thumb_func_start ovy79_21ecb64
ovy79_21ecb64: ; 0x021ECB64
	push {r3, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021ECB74
	bl sub_020275F8
_021ECB74:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy79_21ecb64

	thumb_func_start ovy79_21ecb78
ovy79_21ecb78: ; 0x021ECB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	add r5, r0, #0
	mov r6, #0x70
	add r0, r7, #0
	strh r6, [r5, #8]
	str r1, [r5, #0x18]
	str r2, [r5, #0xc]
	str r7, [r5, #0x10]
	bl sub_02016AD8
	str r0, [r5, #0x14]
	ldr r4, _021ECD2C ; =0x000002FA
	mov r0, #1
	strb r0, [r5, r4]
	ldr r0, [r5, #0x10]
	bl sub_02016B34
	add r1, r4, #0
	add r1, #0x11
	strb r0, [r5, r1]
	add r4, #0x13
	mov r0, #1
	strb r0, [r5, r4]
	mov r0, #0x70
	mov r1, #0
	add r0, #0x98
	str r1, [r5, r0]
	mov r0, #0x70
	add r0, #0x9c
	str r1, [r5, r0]
	add r6, #0xaf
	ldrh r1, [r5, #8]
	add r0, r6, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [r5, #0x1c]
	ldrh r0, [r5, #8]
	mov r2, #0x10
	mov r3, #0x80
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	mov r0, #4
	bl sub_0203A584
	ldr r4, _021ECD30 ; =0x00000FF8
	add r1, r0, #0
	str r4, [sp]
	ldrh r0, [r5, #8]
	ldr r3, _021ECD34 ; =0x021EDA48
	mov r2, #1
	bl GFL_HeapAllocate
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0]
	mov r0, #4
	bl sub_0203A58C
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021ECC0E
	add r0, r5, #0
	ldr r1, _021ECD38 ; =ovy79_21eca08
	add r2, r4, #4
	b _021ECC1A
_021ECC0E:
	add r0, r5, #0
	bl ovy79_21ea9f8
	ldr r1, _021ECD3C ; =ovy79_21ec98c
	add r0, r5, #0
	add r2, r4, #7
_021ECC1A:
	bl sub_021EA894
	add r0, r5, #0
	bl ovy79_21eb588
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ovy79_21ec6bc
	ldr r0, [r5, #0x18]
	bl sub_020098D0
	cmp r0, #0
	beq _021ECC3E
	add r0, r5, #0
	add r1, r7, #0
	bl ovy79_21eca54
_021ECC3E:
	mov r0, #0x70
	mov r4, #0x70
	bl sub_02026DC0
	mov r1, #0x70
	add r1, #0x90
	str r0, [r5, r1]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #1
	bl sub_0202778C
	mov r0, #1
	add r0, #0xff
	lsl r2, r4, #2
	ldr r0, [r5, r0]
	mov r1, #3
	mov r3, #0x70
	mov r6, #3
	str r2, [sp, #8]
	bl sub_02026E04
	mov r0, #3
	add r0, #0xfd
	ldr r0, [r5, r0]
	ldr r2, [sp, #8]
	mov r1, #1
	mov r3, #0x70
	bl sub_02026E04
	mov r0, #3
	add r0, #0xfd
	ldr r0, [r5, r0]
	ldr r3, [sp, #8]
	mov r1, #3
	mov r2, #0
	bl sub_02026F7C
	mov r0, #3
	add r0, #0xfd
	ldr r0, [r5, r0]
	ldr r3, [sp, #8]
	mov r1, #1
	mov r2, #0
	bl sub_02026F7C
	add r0, r5, #0
	bl ovy79_21ec4cc
	add r0, r5, #0
	bl ovy79_21ec410
	add r6, #0xfd
	ldr r0, [r5, r6]
	bl sub_020275F8
	ldr r0, _021ECD40 ; =ovy79_21ecb64
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	add r1, r5, #0
	add r1, #0xf4
	str r0, [r1]
	ldr r0, _021ECD44 ; =ovy79_21ecb1c
	add r1, r5, #0
	bl sub_0203D174
	ldr r0, _021ECD48 ; =0x021ECB59
	add r1, r5, #0
	bl sub_0203D194
	add r4, #0xa0
	add r0, r5, #0
	add r1, r5, r4
	bl sub_021ED320
	add r0, r5, #0
	bl ovy79_21ec0b8
	add r0, r5, #0
	bl ovy79_21ec828
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021ECD08
	add r0, r7, #0
	bl sub_02016ABC
	cmp r0, #0
	beq _021ECCF8
	mov r0, #0
	str r0, [sp, #4]
_021ECCF8:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy79_21ed5f8
	add r0, r5, #0
	bl ovy79_21ed280
	b _021ECD0E
_021ECD08:
	add r0, r5, #0
	bl ovy79_21eca08
_021ECD0E:
	add r0, r7, #0
	bl sub_02016B20
	add r4, r0, #0
	beq _021ECD26
	bl sub_02153650
	cmp r0, #2
	bne _021ECD26
	add r0, r4, #0
	bl sub_02153654
_021ECD26:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021ECD2C: .word 0x000002FA
_021ECD30: .word 0x00000FF8
_021ECD34: .word 0x021EDA48
_021ECD38: .word ovy79_21eca08
_021ECD3C: .word ovy79_21ec98c
_021ECD40: .word ovy79_21ecb64
_021ECD44: .word ovy79_21ecb1c
_021ECD48: .word 0x021ECB59
	thumb_func_end ovy79_21ecb78

	thumb_func_start ovy79_21ecd4c
ovy79_21ecd4c: ; 0x021ECD4C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02016B20
	add r5, r0, #0
	beq _021ECD68
	bl sub_02153650
	cmp r0, #2
	bne _021ECD68
	add r0, r5, #0
	bl sub_02153654
_021ECD68:
	add r0, r4, #0
	bl ovy79_21ec044
	mov r6, #0x11
	lsl r6, r6, #4
	add r0, r4, r6
	bl sub_021ED330
	mov r0, #0
	mov r1, #0
	bl sub_0203D174
	mov r0, #0
	mov r1, #0
	bl sub_0203D194
	bl sub_02042F40
	ldrh r1, [r4, #8]
	mov r0, #0
	bl sub_02042BA8
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_0203A610
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0203A850
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl GFL_TCBExMgrFree
	add r0, r6, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r5, #3
	mov r1, #3
	bl sub_02026E48
	add r5, #0xfd
	ldr r0, [r4, r5]
	mov r5, #1
	mov r1, #1
	bl sub_02026E48
	add r5, #0xff
	ldr r0, [r4, r5]
	bl sub_02026DE8
	sub r0, r6, #4
	ldr r0, [r4, r0]
	cmp r0, #5
	beq _021ECDFA
	ldr r0, [r4, #0x14]
	bl sub_0201749C
	bl sub_0202ECF4
_021ECDFA:
	ldr r0, [r4, #0x1c]
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl ovy79_21ec7c8
	mov r2, #0xc7
	ldr r0, _021ECE18 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	lsl r2, r2, #2
	blx MI_CpuFill8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021ECE18: .word 0x04001050
	thumb_func_end ovy79_21ecd4c

	thumb_func_start ovy79_21ece1c
ovy79_21ece1c: ; 0x021ECE1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021ECE50 ; =0x0000108A
	add r6, r1, #0
	add r4, r3, #0
	mov r1, #0xc7
	str r2, [sp, #4]
	str r0, [sp]
	ldr r3, _021ECE54 ; =0x021EDA48
	mov r0, #0x70
	lsl r1, r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	ldr r3, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r7, r0, #0
	str r4, [sp]
	bl ovy79_21ecb78
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECE50: .word 0x0000108A
_021ECE54: .word 0x021EDA48
	thumb_func_end ovy79_21ece1c

	thumb_func_start ovy79_21ece58
ovy79_21ece58: ; 0x021ECE58
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, [sp, #0x14]
	bl ovy79_21ece1c
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe4
	str r5, [r1]
	add r1, r4, #0
	ldr r2, [sp, #0x10]
	add r1, #0xe8
	str r2, [r1]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _021ECE88
	ldr r1, _021ECEAC ; =ovy79_21eca08
	ldr r2, _021ECEB0 ; =0x000010A3
	bl sub_021EA894
	ldr r0, _021ECEB4 ; =0x0000030D
	mov r1, #0
	strb r1, [r4, r0]
	b _021ECEA6
_021ECE88:
	add r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _021ECE98
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	blx r1
_021ECE98:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe8
	str r1, [r0]
_021ECEA6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021ECEAC: .word ovy79_21eca08
_021ECEB0: .word 0x000010A3
_021ECEB4: .word 0x0000030D
	thumb_func_end ovy79_21ece58

	thumb_func_start ovy79_21eceb8
ovy79_21eceb8: ; 0x021ECEB8
	push {r3, r4, r5, lr}
	ldr r2, _021ECF5C ; =0x000002F7
	add r4, r0, #0
	ldrb r2, [r4, r2]
	cmp r2, #1
	beq _021ECF5A
	bl ovy79_21ed5f8
	add r0, r4, #0
	bl sub_021ED2A0
	cmp r0, #0
	bne _021ECEF4
	ldr r0, [r4, #0x10]
	bl sub_02016B20
	bl sub_02153658
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy79_21ed644
	add r0, r4, #0
	add r1, r5, #0
	bl ovy79_21ed67c
	add r0, r4, #0
	bl ovy79_21ed740
_021ECEF4:
	ldr r0, _021ECF5C ; =0x000002F7
	ldrb r1, [r4, r0]
	cmp r1, #2
	bne _021ECF36
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl sub_021ED2A0
	cmp r0, #0
	bne _021ECF12
	add r0, r4, #0
	ldr r1, _021ECF60 ; =ovy79_21eca28
	ldr r2, _021ECF64 ; =0x000010D6
	b _021ECF32
_021ECF12:
	add r0, r4, #0
	bl ovy79_21ebd30
	add r0, r4, #0
	bl sub_021ED2A0
	add r1, r0, #0
	add r0, r4, #0
	bl ovy79_21eb1bc
	add r0, r4, #0
	bl ovy79_21ea9f8
	ldr r1, _021ECF68 ; =ovy79_21ec98c
	ldr r2, _021ECF6C ; =0x000010E5
	add r0, r4, #0
_021ECF32:
	bl sub_021EA894
_021ECF36:
	ldr r1, [r4]
	cmp r1, #0
	beq _021ECF40
	add r0, r4, #0
	blx r1
_021ECF40:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _021ECF4E
	bl sub_0203A7F4
_021ECF4E:
	add r4, #0xf0
	ldr r0, [r4]
	cmp r0, #0
	beq _021ECF5A
	bl sub_0203A5D0
_021ECF5A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ECF5C: .word 0x000002F7
_021ECF60: .word ovy79_21eca28
_021ECF64: .word 0x000010D6
_021ECF68: .word ovy79_21ec98c
_021ECF6C: .word 0x000010E5
	thumb_func_end ovy79_21eceb8
_021ECF70:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy79_21ecf74
ovy79_21ecf74: ; 0x021ECF74
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21ecd4c
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy79_21ecf74

	thumb_func_start ovy79_21ecf84
ovy79_21ecf84: ; 0x021ECF84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5]
	ldr r0, _021ECFC4 ; =ovy79_21ec98c
	ldr r7, [r5, #0x18]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #0x10]
	cmp r1, r0
	bne _021ECFBE
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	add r0, r5, #0
	bl ovy79_21ecd4c
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ovy79_21ecb78
	mov r0, #1
	bl sub_02027B58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ECFBE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECFC4: .word ovy79_21ec98c
	thumb_func_end ovy79_21ecf84

	thumb_func_start ovy79_21ecfc8
ovy79_21ecfc8: ; 0x021ECFC8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r6, r1, #0
	mov r5, #0
	bl sub_02016B20
	ldr r0, [r4, #0x10]
	bl sub_02016AF0
	cmp r6, #0
	beq _021ECFE4
	cmp r0, #0
	bne _021ECFE8
_021ECFE4:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021ECFE8:
	mov r6, #0x42
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0xd
	bhi _021ED066
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ECFFE: ; jump table
	.short _021ED066 - _021ECFFE - 2 ; case 0
	.short _021ED01A - _021ECFFE - 2 ; case 1
	.short _021ED066 - _021ECFFE - 2 ; case 2
	.short _021ED066 - _021ECFFE - 2 ; case 3
	.short _021ED066 - _021ECFFE - 2 ; case 4
	.short _021ED040 - _021ECFFE - 2 ; case 5
	.short _021ED01A - _021ECFFE - 2 ; case 6
	.short _021ED054 - _021ECFFE - 2 ; case 7
	.short _021ED066 - _021ECFFE - 2 ; case 8
	.short _021ED066 - _021ECFFE - 2 ; case 9
	.short _021ED066 - _021ECFFE - 2 ; case 10
	.short _021ED054 - _021ECFFE - 2 ; case 11
	.short _021ED042 - _021ECFFE - 2 ; case 12
	.short _021ED042 - _021ECFFE - 2 ; case 13
_021ED01A:
	add r0, r4, #0
	bl sub_021EAD0C
	cmp r0, #0
	bne _021ED028
_021ED024:
	ldr r0, _021ED08C ; =0x0000054E
	b _021ED044
_021ED028:
	ldr r0, _021ED090 ; =0x000007E2
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021ED560
	ldr r1, _021ED094 ; =ovy79_21ed5cc
	ldr r2, _021ED098 ; =0x00001149
	add r0, r4, #0
	bl sub_021EA894
	b _021ED066
_021ED040:
	b _021ED024
_021ED042:
	ldr r0, _021ED09C ; =0x00000628
_021ED044:
	bl GFL_SndSEPlay
	ldr r1, [r4, r6]
	add r0, r4, #0
	bl ovy79_21ed37c
	add r5, r0, #0
	b _021ED066
_021ED054:
	add r0, r4, #0
	bl sub_021EAD0C
	cmp r0, #0
	bne _021ED060
	b _021ED042
_021ED060:
	ldr r0, _021ED090 ; =0x000007E2
	bl GFL_SndSEPlay
_021ED066:
	cmp r5, #0
	beq _021ED07E
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _021ED0A0 ; =0x021ED1D5
	ldr r2, _021ED0A4 ; =0x00001167
	add r0, r4, #0
	bl sub_021EA894
_021ED07E:
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_021ED08C: .word 0x0000054E
_021ED090: .word 0x000007E2
_021ED094: .word ovy79_21ed5cc
_021ED098: .word 0x00001149
_021ED09C: .word 0x00000628
_021ED0A0: .word 0x021ED1D5
_021ED0A4: .word 0x00001167
	thumb_func_end ovy79_21ecfc8
_021ED0A8:
	.byte 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x70, 0x47
	.byte 0x43, 0x21, 0x89, 0x00, 0x40, 0x58, 0x05, 0x28, 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy79_21ed0c4
ovy79_21ed0c4: ; 0x021ED0C4
	push {r3, lr}
	cmp r0, #0
	beq _021ED0D8
	mov r2, #0xc5
	mov r1, #0
	lsl r2, r2, #2
	strb r1, [r0, r2]
	mov r2, #0
	bl ovy79_21eae14
_021ED0D8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy79_21ed0c4

	thumb_func_start ovy79_21ed0dc
ovy79_21ed0dc: ; 0x021ED0DC
	push {r4, r5, r6, lr}
	mov r4, #0xbf
	add r5, r0, #0
	lsl r4, r4, #2
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021ED0F0
	cmp r0, #1
	beq _021ED134
	b _021ED178
_021ED0F0:
	add r0, r4, #0
	sub r0, #0x42
	ldrb r0, [r5, r0]
	add r1, r4, #0
	sub r1, #0x41
	lsl r0, r0, #2
	add r0, r5, r0
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0x6c]
	bl ovy79_21ebbdc
	add r0, r4, #0
	sub r0, #0x42
	ldrb r0, [r5, r0]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x42
	ldrb r0, [r5, r0]
	mov r1, #1
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_0204C520
	ldrb r0, [r5, r4]
	add r0, r0, #1
	strb r0, [r5, r4]
	b _021ED17C
_021ED134:
	add r0, r4, #0
	sub r0, #0x42
	ldrb r0, [r5, r0]
	mov r1, #1
	mov r6, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x42
	ldrb r0, [r5, r0]
	mov r1, #1
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_0204C520
	add r0, r4, #0
	sub r0, #0x42
	ldrb r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_0204C560
	cmp r0, #0
	bne _021ED17C
	mov r0, #0
	strb r0, [r5, r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021ED178:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021ED17C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy79_21ed0dc

	thumb_func_start ovy79_21ed180
ovy79_21ed180: ; 0x021ED180
	push {r3, r4, r5, lr}
	mov r4, #0xbf
	add r5, r0, #0
	lsl r4, r4, #2
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021ED194
	cmp r0, #1
	beq _021ED1B4
	b _021ED1CA
_021ED194:
	sub r4, #0x42
	ldrb r0, [r5, r4]
	cmp r0, #9
	bne _021ED1A8
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0x20
	bl sub_021ED334
_021ED1A8:
	mov r0, #0xbf
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	b _021ED1CE
_021ED1B4:
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r5, r0
	bl ovy79_21ed33c
	cmp r0, #0
	beq _021ED1CE
	mov r0, #0
	strb r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED1CA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED1CE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy79_21ed180
_021ED1D4:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_021ED1D8
sub_021ED1D8: ; 0x021ED1D8
	ldr r2, _021ED1F0 ; =0x0000030E
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _021ED1EE
	mov r3, #1
	strb r3, [r0, r2]
	add r1, r2, #2
	strb r3, [r0, r1]
	mov r3, #0
	add r1, r2, #3
	strb r3, [r0, r1]
_021ED1EE:
	bx lr
	.align 2, 0
_021ED1F0: .word 0x0000030E
	thumb_func_end sub_021ED1D8

	thumb_func_start sub_021ED1F4
sub_021ED1F4: ; 0x021ED1F4
	ldr r2, _021ED20C ; =0x0000030F
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _021ED20A
	mov r3, #1
	strb r3, [r0, r2]
	add r1, r2, #1
	strb r3, [r0, r1]
	mov r3, #0
	add r1, r2, #2
	strb r3, [r0, r1]
_021ED20A:
	bx lr
	.align 2, 0
_021ED20C: .word 0x0000030F
	thumb_func_end sub_021ED1F4

	thumb_func_start ovy79_21ed210
ovy79_21ed210: ; 0x021ED210
	push {r3, r4}
	ldr r2, _021ED22C ; =0x0000030F
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _021ED228
	mov r4, #0
	strb r4, [r0, r2]
	mov r3, #1
	add r1, r2, #1
	strb r3, [r0, r1]
	add r1, r2, #2
	strb r4, [r0, r1]
_021ED228:
	pop {r3, r4}
	bx lr
	.align 2, 0
_021ED22C: .word 0x0000030F
	thumb_func_end ovy79_21ed210

	thumb_func_start ovy79_21ed230
ovy79_21ed230: ; 0x021ED230
	push {r3, r4}
	ldr r2, _021ED24C ; =0x0000030E
	ldrb r1, [r0, r2]
	cmp r1, #1
	bne _021ED248
	mov r4, #0
	strb r4, [r0, r2]
	mov r3, #1
	add r1, r2, #2
	strb r3, [r0, r1]
	add r1, r2, #3
	strb r4, [r0, r1]
_021ED248:
	pop {r3, r4}
	bx lr
	.align 2, 0
_021ED24C: .word 0x0000030E
	thumb_func_end ovy79_21ed230

	thumb_func_start ovy79_21ed250
ovy79_21ed250: ; 0x021ED250
	push {r3, r4, r5, lr}
	mov r4, #0x31
	add r5, r0, #0
	lsl r4, r4, #4
	ldrb r1, [r5, r4]
	cmp r1, #0
	beq _021ED27E
	add r1, r4, #1
	ldrb r1, [r5, r1]
	add r2, r1, #1
	add r1, r4, #1
	strb r2, [r5, r1]
	ldrb r1, [r5, r1]
	cmp r1, #8
	blo _021ED27E
	bl sub_021ED2A0
	add r1, r0, #0
	add r0, r5, #0
	bl ovy79_21eb1bc
	mov r0, #0
	strb r0, [r5, r4]
_021ED27E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy79_21ed250

	thumb_func_start ovy79_21ed280
ovy79_21ed280: ; 0x021ED280
	push {r3, r4, r5, lr}
	mov r5, #0x31
	add r4, r0, #0
	lsl r5, r5, #4
	ldrb r1, [r4, r5]
	cmp r1, #0
	beq _021ED29E
	bl sub_021ED2A0
	add r1, r0, #0
	add r0, r4, #0
	bl ovy79_21eb1bc
	mov r0, #0
	strb r0, [r4, r5]
_021ED29E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy79_21ed280

	thumb_func_start sub_021ED2A0
sub_021ED2A0: ; 0x021ED2A0
	ldr r1, _021ED2BC ; =0x0000030E
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _021ED2AC
	mov r0, #1
	bx lr
_021ED2AC:
	add r1, r1, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021ED2B8
	mov r0, #1
	bx lr
_021ED2B8:
	mov r0, #0
	bx lr
	.align 2, 0
_021ED2BC: .word 0x0000030E
	thumb_func_end sub_021ED2A0

	thumb_func_start ovy79_21ed2c0
ovy79_21ed2c0: ; 0x021ED2C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_021ED2A0
	cmp r0, #0
	beq _021ED2D0
	mov r0, #1
	pop {r4, pc}
_021ED2D0:
	mov r0, #0x31
	lsl r0, r0, #4
	ldrb r0, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy79_21ed2c0

	thumb_func_start ovy79_21ed2d8
ovy79_21ed2d8: ; 0x021ED2D8
	push {r4, lr}
	add r4, r0, #0
	bl sub_021ED2A0
	cmp r0, #0
	bne _021ED31A
	ldr r1, _021ED31C ; =0x00000317
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021ED31A
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #8
	blo _021ED31A
	add r0, r4, #0
	bl sub_021EAD0C
	cmp r0, #0
	beq _021ED30C
	add r0, r4, #0
	mov r1, #1
	b _021ED310
_021ED30C:
	add r0, r4, #0
	mov r1, #0
_021ED310:
	bl ovy79_21eb23c
	ldr r0, _021ED31C ; =0x00000317
	mov r1, #0
	strb r1, [r4, r0]
_021ED31A:
	pop {r4, pc}
	.align 2, 0
_021ED31C: .word 0x00000317
	thumb_func_end ovy79_21ed2d8

	thumb_func_start sub_021ED320
sub_021ED320: ; 0x021ED320
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r0, r2]
	add r0, #0xf0
	str r2, [r1, #8]
	ldr r0, [r0]
	str r0, [r1, #0xc]
	bx lr
	thumb_func_end sub_021ED320

	thumb_func_start sub_021ED330
sub_021ED330: ; 0x021ED330
	bx lr
	.align 2, 0
	thumb_func_end sub_021ED330

	thumb_func_start sub_021ED334
sub_021ED334: ; 0x021ED334
	mov r2, #0
	strb r2, [r0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021ED334

	thumb_func_start ovy79_21ed33c
ovy79_21ed33c: ; 0x021ED33C
	push {r3, r4, r5, lr}
	add r2, r0, #0
	ldrb r3, [r2]
	cmp r3, #0xc
	blo _021ED34A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED34A:
	add r0, r3, #1
	lsr r3, r3, #1
	lsr r5, r3, #0x1f
	lsl r4, r3, #0x1f
	strb r0, [r2]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r2, #8]
	ldr r2, [r2, #4]
	sub r4, r4, r5
	mov r3, #0x1f
	ror r4, r3
	add r4, r5, r4
	lsl r3, r4, #3
	add r3, r4, r3
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	mov r1, #3
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_020278AC
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy79_21ed33c

	thumb_func_start ovy79_21ed37c
ovy79_21ed37c: ; 0x021ED37C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r5, r1, #0
	ldr r2, _021ED42C ; =ovy79_21ed430
	mov r1, #0
	mov r3, #8
	mov r7, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	mov r1, #0xbf
	lsl r1, r1, #2
	str r4, [r0]
	strb r7, [r4, r1]
	str r5, [r0, #4]
	cmp r5, #0xd
	bhi _021ED426
	add r2, r5, r5
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021ED3B0: ; jump table
	.short _021ED426 - _021ED3B0 - 2 ; case 0
	.short _021ED3CC - _021ED3B0 - 2 ; case 1
	.short _021ED426 - _021ED3B0 - 2 ; case 2
	.short _021ED426 - _021ED3B0 - 2 ; case 3
	.short _021ED426 - _021ED3B0 - 2 ; case 4
	.short _021ED3CC - _021ED3B0 - 2 ; case 5
	.short _021ED3CC - _021ED3B0 - 2 ; case 6
	.short _021ED3D8 - _021ED3B0 - 2 ; case 7
	.short _021ED426 - _021ED3B0 - 2 ; case 8
	.short _021ED426 - _021ED3B0 - 2 ; case 9
	.short _021ED426 - _021ED3B0 - 2 ; case 10
	.short _021ED3E6 - _021ED3B0 - 2 ; case 11
	.short _021ED3FE - _021ED3B0 - 2 ; case 12
	.short _021ED412 - _021ED3B0 - 2 ; case 13
_021ED3CC:
	sub r1, #0x40
	strb r7, [r4, r1]
	ldr r0, [r0]
	bl sub_021EA9EC
	b _021ED426
_021ED3D8:
	add r0, r1, #0
	mov r2, #1
	sub r0, #0x40
	strb r2, [r4, r0]
	mov r0, #9
	sub r1, #0x42
	b _021ED3FA
_021ED3E6:
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x40
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0xa
	sub r0, #0x42
	strb r2, [r4, r0]
	mov r0, #0xd
_021ED3F8:
	sub r1, #0x41
_021ED3FA:
	strb r0, [r4, r1]
	b _021ED426
_021ED3FE:
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x40
	strb r2, [r4, r0]
	add r2, r1, #0
	sub r2, #0x42
	mov r0, #8
	strb r0, [r4, r2]
	mov r0, #9
	b _021ED3F8
_021ED412:
	add r0, r1, #0
	mov r2, #2
	sub r0, #0x40
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #7
	sub r0, #0x42
	strb r2, [r4, r0]
	sub r1, #0x41
	strb r2, [r4, r1]
_021ED426:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED42C: .word ovy79_21ed430
	thumb_func_end ovy79_21ed37c

	thumb_func_start ovy79_21ed430
ovy79_21ed430: ; 0x021ED430
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	ldr r4, [r5]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_02016AF0
	add r6, r0, #0
	mov r1, #0xaf
	ldr r0, [r5]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021ED458
	cmp r1, #1
	beq _021ED45E
	cmp r1, #2
	beq _021ED464
	b _021ED46A
_021ED458:
	bl ovy79_21ea974
	b _021ED46C
_021ED45E:
	bl ovy79_21ed180
	b _021ED46C
_021ED464:
	bl ovy79_21ed0dc
	b _021ED46C
_021ED46A:
	mov r0, #1
_021ED46C:
	cmp r0, #0
	bne _021ED476
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ED476:
	ldr r0, [r5, #4]
	cmp r0, #0xd
	bhi _021ED528
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ED488: ; jump table
	.short _021ED528 - _021ED488 - 2 ; case 0
	.short _021ED4AC - _021ED488 - 2 ; case 1
	.short _021ED528 - _021ED488 - 2 ; case 2
	.short _021ED528 - _021ED488 - 2 ; case 3
	.short _021ED528 - _021ED488 - 2 ; case 4
	.short _021ED4BA - _021ED488 - 2 ; case 5
	.short _021ED4A4 - _021ED488 - 2 ; case 6
	.short _021ED4D2 - _021ED488 - 2 ; case 7
	.short _021ED528 - _021ED488 - 2 ; case 8
	.short _021ED528 - _021ED488 - 2 ; case 9
	.short _021ED528 - _021ED488 - 2 ; case 10
	.short _021ED4C4 - _021ED488 - 2 ; case 11
	.short _021ED4EC - _021ED488 - 2 ; case 12
	.short _021ED520 - _021ED488 - 2 ; case 13
_021ED4A4:
	ldr r0, [r4, #0x10]
	ldr r1, _021ED538 ; =0x00000000
	ldr r2, _021ED53C ; =0x0214F8A9
	b _021ED4CA
_021ED4AC:
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	mov r2, #0
	mov r3, #1
	bl sub_02150C44
	b _021ED526
_021ED4BA:
	ldr r0, [r4, #0x10]
	ldr r1, _021ED540 ; =0x00000011
	ldr r2, _021ED544 ; =0x0216E79D
	mov r3, #0
	b _021ED4CC
_021ED4C4:
	ldr r0, [r4, #0x10]
	ldr r1, _021ED548 ; =0x00000012
	ldr r2, _021ED54C ; =0x0216E709
_021ED4CA:
	add r3, r6, #0
_021ED4CC:
	bl sub_02016EA0
	b _021ED526
_021ED4D2:
	mov r0, #1
	bl sub_0202C22C
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0201740C
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	mov r2, #4
	bl sub_0218B12C
	b _021ED526
_021ED4EC:
	ldr r0, _021ED550 ; =0x0000135D
	ldr r3, _021ED554 ; =0x021EDA48
	str r0, [sp]
	mov r0, #4
	mov r1, #8
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0201736C
	str r0, [r5]
	ldr r0, [r4, #0x10]
	ldr r2, _021ED558 ; =0x000000C8
	str r0, [r5, #4]
	str r5, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r3, _021ED55C ; =0x021B3960
	add r1, r6, #0
	bl sub_020196D0
	b _021ED526
_021ED520:
	ldr r0, [r4, #0x10]
	bl sub_02177574
_021ED526:
	add r7, r0, #0
_021ED528:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_02016D50
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED538: .word 0x00000000
_021ED53C: .word 0x0214F8A9
_021ED540: .word 0x00000011
_021ED544: .word 0x0216E79D
_021ED548: .word 0x00000012
_021ED54C: .word 0x0216E709
_021ED550: .word 0x0000135D
_021ED554: .word 0x021EDA48
_021ED558: .word 0x000000C8
_021ED55C: .word 0x021B3960
	thumb_func_end ovy79_21ed430

	thumb_func_start sub_021ED560
sub_021ED560: ; 0x021ED560
	ldr r2, _021ED574 ; =0x000002B9
	mov r1, #0
	strb r1, [r0, r2]
	add r1, r2, #0
	add r1, #0x3f
	add r2, #0x40
	ldrb r1, [r0, r1]
	ldrb r2, [r0, r2]
	ldr r3, _021ED578 ; =ovy79_21ea89c
	bx r3
	.align 2, 0
_021ED574: .word 0x000002B9
_021ED578: .word ovy79_21ea89c
	thumb_func_end sub_021ED560

	thumb_func_start ovy79_21ed57c
ovy79_21ed57c: ; 0x021ED57C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021ED584:
	mov r0, #0xc
	mul r0, r4
	add r5, r6, r0
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021ED596
	bl sub_0204C108
	str r7, [r5, #0x3c]
_021ED596:
	add r4, r4, #1
	cmp r4, #4
	blt _021ED584
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy79_21ed57c

	thumb_func_start ovy79_21ed5a0
ovy79_21ed5a0: ; 0x021ED5A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #1
	mov r4, #0
	mov r6, #0xc
_021ED5AA:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _021ED5C2
	bl sub_0204C560
	cmp r0, #0
	beq _021ED5C2
	mov r7, #0
	b _021ED5C8
_021ED5C2:
	add r4, r4, #1
	cmp r4, #4
	blt _021ED5AA
_021ED5C8:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy79_21ed5a0

	thumb_func_start ovy79_21ed5cc
ovy79_21ed5cc: ; 0x021ED5CC
	push {r4, lr}
	add r4, r0, #0
	bl ovy79_21ec93c
	add r0, r4, #0
	bl ovy79_21ed5a0
	cmp r0, #0
	beq _021ED5EE
	add r0, r4, #0
	bl ovy79_21ed57c
	ldr r1, _021ED5F0 ; =ovy79_21ec98c
	ldr r2, _021ED5F4 ; =0x000013B5
	add r0, r4, #0
	bl sub_021EA894
_021ED5EE:
	pop {r4, pc}
	.align 2, 0
_021ED5F0: .word ovy79_21ec98c
_021ED5F4: .word 0x000013B5
	thumb_func_end ovy79_21ed5cc

	thumb_func_start ovy79_21ed5f8
ovy79_21ed5f8: ; 0x021ED5F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042788
	cmp r0, #0
	bne _021ED616
	ldr r0, _021ED63C ; =0x0000030B
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021ED616
	add r0, r5, #0
	bl sub_021ED1F4
	b _021ED61C
_021ED616:
	add r0, r5, #0
	bl ovy79_21ed210
_021ED61C:
	ldr r0, _021ED640 ; =0x000002FA
	ldrb r0, [r5, r0]
	cmp r0, r4
	beq _021ED63A
	cmp r4, #0
	bne _021ED630
	add r0, r5, #0
	bl sub_021ED1D8
	b _021ED636
_021ED630:
	add r0, r5, #0
	bl ovy79_21ed230
_021ED636:
	ldr r0, _021ED640 ; =0x000002FA
	strb r4, [r5, r0]
_021ED63A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ED63C: .word 0x0000030B
_021ED640: .word 0x000002FA
	thumb_func_end ovy79_21ed5f8

	thumb_func_start ovy79_21ed644
ovy79_21ed644: ; 0x021ED644
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #3
	ldr r6, _021ED678 ; =0x00000315
	bne _021ED662
	ldrb r1, [r5, r6]
	cmp r1, #0
	bne _021ED674
	mov r4, #1
	mov r1, #1
	mov r2, #0
	bl ovy79_21eae14
	strb r4, [r5, r6]
	pop {r4, r5, r6, pc}
_021ED662:
	ldrb r1, [r5, r6]
	cmp r1, #1
	bne _021ED674
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy79_21eae14
	strb r4, [r5, r6]
_021ED674:
	pop {r4, r5, r6, pc}
	nop
_021ED678: .word 0x00000315
	thumb_func_end ovy79_21ed644

	thumb_func_start ovy79_21ed67c
ovy79_21ed67c: ; 0x021ED67C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _021ED6DA
	ldr r0, [r5, #0x14]
	bl sub_02017238
	bl sub_02012BE4
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_0201749C
	mov r1, #8
	add r6, r0, #0
	and r1, r4
	beq _021ED6BC
	mov r0, #0xc5
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _021ED6B4
	mov r1, #1
	strb r1, [r5, r0]
	add r0, r5, #0
	mov r2, #1
	bl ovy79_21eae14
_021ED6B4:
	add r0, r6, #0
	bl sub_0202ECE8
	pop {r4, r5, r6, pc}
_021ED6BC:
	cmp r1, #0
	bne _021ED6DA
	mov r4, #0xc5
	lsl r4, r4, #2
	ldrb r1, [r5, r4]
	cmp r1, #0
	beq _021ED6DA
	bl sub_0202ECF4
	mov r1, #0
	add r0, r5, #0
	mov r2, #0
	strb r1, [r5, r4]
	bl ovy79_21eae14
_021ED6DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy79_21ed67c

	thumb_func_start ovy79_21ed6dc
ovy79_21ed6dc: ; 0x021ED6DC
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #3
	bhi _021ED73E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED6F0: ; jump table
	.short _021ED73E - _021ED6F0 - 2 ; case 0
	.short _021ED6F8 - _021ED6F0 - 2 ; case 1
	.short _021ED710 - _021ED6F0 - 2 ; case 2
	.short _021ED728 - _021ED6F0 - 2 ; case 3
_021ED6F8:
	bl ovy79_21ec044
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdf
	strb r1, [r0]
	add r4, #0x9c
	ldr r0, [r4]
	mov r1, #0x10
	bl ovy79_21ebbdc
	pop {r4, pc}
_021ED710:
	bl ovy79_21ec044
	add r0, r4, #0
	mov r1, #1
	add r0, #0xdf
	strb r1, [r0]
	add r4, #0x9c
	ldr r0, [r4]
	mov r1, #0x14
	bl ovy79_21ebbdc
	pop {r4, pc}
_021ED728:
	bl ovy79_21ebfec
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdf
	strb r1, [r0]
	add r4, #0x9c
	ldr r0, [r4]
	mov r1, #0x12
	bl ovy79_21ebbdc
_021ED73E:
	pop {r4, pc}
	thumb_func_end ovy79_21ed6dc

	thumb_func_start ovy79_21ed740
ovy79_21ed740: ; 0x021ED740
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021EA874
	cmp r0, #0
	beq _021ED7EE
	mov r0, #0
	mov r5, #0
	bl sub_0202C258
	cmp r0, #0
	beq _021ED778
	add r0, r4, #0
	add r0, #0xde
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED794
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xf
	bl ovy79_21ebbdc
	add r0, r4, #0
	mov r1, #1
	add r0, #0xde
	strb r1, [r0]
	b _021ED794
_021ED778:
	add r0, r4, #0
	add r0, #0xde
	ldrb r0, [r0]
	cmp r0, #0
	beq _021ED794
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xc
	bl ovy79_21ebbdc
	add r0, r4, #0
	add r0, #0xde
	strb r5, [r0]
_021ED794:
	mov r0, #2
	mov r5, #2
	bl sub_0202C258
	cmp r0, #0
	beq _021ED7B4
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED7EE
	add r0, r4, #0
	mov r1, #3
	bl ovy79_21ed6dc
	pop {r3, r4, r5, pc}
_021ED7B4:
	mov r0, #1
	bl sub_0202C258
	cmp r0, #0
	beq _021ED7D2
	add r0, r4, #0
	add r0, #0xdf
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED7EE
	add r0, r4, #0
	add r1, r5, #0
	bl ovy79_21ed6dc
	pop {r3, r4, r5, pc}
_021ED7D2:
	add r0, r4, #0
	add r0, #0xdf
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED7E6
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021ED7EE
_021ED7E6:
	add r0, r4, #0
	mov r1, #1
	bl ovy79_21ed6dc
_021ED7EE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy79_21ed740
_021ED7F0:
	.byte 0x01, 0x05, 0x06, 0x00, 0x41, 0x04, 0x23, 0x04, 0x00, 0x06, 0x09, 0x06, 0x01, 0x01, 0x01, 0x01
	.byte 0x00, 0x00, 0x0C, 0x03, 0x00, 0x00, 0x09, 0x0E, 0x10, 0x12, 0x0C, 0x0A, 0x17, 0x00, 0xA0, 0x00
	.byte 0x50, 0x00, 0x28, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x04, 0x08, 0x0A, 0x0E, 0x12, 0x14, 0x16, 0x18, 0x1A, 0x1C, 0x1E, 0x1F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x04, 0x08, 0x0A, 0x0E, 0x12, 0x14, 0x16, 0x18, 0x1A, 0x1C, 0x1E, 0x1F, 0x1F, 0x1F, 0x1F
	.byte 0x1F, 0x1E, 0x1C, 0x1A, 0x18, 0x16, 0x14, 0x12, 0x0E, 0x0A, 0x08, 0x04, 0x00, 0xFE, 0x30, 0x16
	.byte 0x10, 0xFE, 0xD0, 0x16, 0x10, 0xFE, 0xC8, 0xB4, 0x0A, 0xFE, 0xD7, 0xA3, 0x0A, 0xFE, 0xE4, 0x90
	.byte 0x0A, 0xFE, 0x23, 0xA0, 0x0F, 0x54, 0x6C, 0x54, 0xAC, 0x0A, 0x1A, 0x66, 0x9A, 0x00, 0x03, 0x07
	.byte 0x0B, 0x12, 0x17, 0x1B, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1D, 0x1B, 0x1A, 0x19, 0x18, 0x1A, 0x1B
	.byte 0x1D, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1D, 0x1C, 0x1B, 0x17, 0x0F, 0x07, 0x03, 0x00, 0xFE, 0x80
	.byte 0x60, 0x1C, 0xFE, 0x80, 0x60, 0x24, 0xFE, 0x80, 0x60, 0x2C, 0xFE, 0x80, 0x60, 0x34, 0xFE, 0x80
	.byte 0x60, 0x40, 0xFE, 0x80, 0x60, 0x48, 0xFE, 0x80, 0x60, 0x54, 0xFE, 0x80, 0x60, 0x5C, 0xFE, 0x80
	.byte 0x60, 0x6C, 0xFE, 0x80, 0x60, 0x74, 0xFE, 0x80, 0x60, 0x88, 0xFE, 0x80, 0x60, 0xA0, 0xFF, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x01, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x30, 0x16, 0x01, 0x02, 0x05, 0xD0, 0x16, 0x01, 0x02, 0x15, 0x80
	.byte 0x0A, 0x01, 0x01, 0x06, 0xC8, 0xB4, 0x01, 0x01, 0x08, 0xD7, 0xA3, 0x01, 0x01, 0x0A, 0xE4, 0x90
	.byte 0x01, 0x01, 0x0C, 0x23, 0xA0, 0x01, 0x01, 0x03, 0x80, 0x60, 0x01, 0x07, 0x10, 0x80, 0x56, 0x01
	.byte 0x07, 0x00, 0x44, 0x3C, 0x01, 0x15, 0x16, 0x44, 0x3C, 0x01, 0x06, 0x01, 0x80, 0xA4, 0x01, 0x15
	.byte 0x17, 0x80, 0xA4, 0x01, 0x06, 0x02, 0xBC, 0x3C, 0x01, 0x15, 0x18, 0xBC, 0x3C, 0x01, 0x06, 0x1C
	.byte 0x44, 0x3C, 0x01, 0x03, 0x10, 0x60, 0x04, 0x28, 0x60, 0x03, 0x3C, 0x60, 0x02, 0xC4, 0x60, 0x02
	.byte 0xD8, 0x60, 0x03, 0xF0, 0x60, 0x04, 0x80, 0x40, 0x00, 0x80, 0x80, 0x00, 0x80, 0x90, 0x01, 0x80
	.byte 0xA4, 0x02, 0x80, 0xB8, 0x03, 0x34, 0x34, 0x03, 0x44, 0x3C, 0x02, 0x58, 0x48, 0x01, 0xA8, 0x78
	.byte 0x01, 0xBC, 0x84, 0x02, 0xCC, 0x8C, 0x03, 0x34, 0x8C, 0x03, 0x44, 0x84, 0x02, 0x58, 0x78, 0x01
	.byte 0xA8, 0x48, 0x01, 0xBC, 0x3C, 0x02, 0xCC, 0x34, 0x03, 0x54, 0x14, 0x03, 0x60, 0x24, 0x02, 0x68
	.byte 0x38, 0x01, 0x70, 0x44, 0x00, 0x90, 0x7C, 0x00, 0x98, 0x88, 0x01, 0xA0, 0x9C, 0x02, 0xAC, 0xAC
	.byte 0x03, 0x54, 0xAC, 0x03, 0x60, 0x9C, 0x02, 0x68, 0x88, 0x01, 0x70, 0x7C, 0x00, 0x90, 0x44, 0x00
	.byte 0x98, 0x38, 0x01, 0xA0, 0x24, 0x02, 0xAC, 0x14, 0x03, 0x80, 0x30, 0x01, 0x20, 0x28, 0x04, 0xE0
	.byte 0x28, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x01, 0x02, 0x03, 0x00, 0x00, 0x63, 0x5F, 0x67, 0x65, 0x61, 0x72, 0x5F, 0x73
	.byte 0x77, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021ED7F0
