    .include "macros/function.inc"
	.include "overlay132.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy132_21eec80
ovy132_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x38
	bl ovy36_2180ff0
	add r5, r0, #0
	mov r6, #0
	str r6, [r5, #4]
	bl sub_02015878
	cmp r0, #0x17
	bne _021EECB0
	add r0, r4, #0
	ldr r1, _021EED48 ; =0x021EF1E0
	b _021EECB4
_021EECB0:
	ldr r1, _021EED4C ; =0x021EF1F0
	add r0, r4, #0
_021EECB4:
	add r2, r6, #0
	bl ovy36_21b8598
	mov r0, #4
	str r0, [r5]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	mov r6, #0
	bl sub_021B8258
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	add r5, r6, #0
_021EECDA:
	lsl r3, r6, #0x10
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
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
	bl ovy36_21b8538
	add r6, r6, #1
	cmp r6, #4
	blt _021EECDA
	mov r7, #0
_021EED10:
	lsl r3, r5, #0x10
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	lsl r3, r5, #0x10
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	str r7, [sp]
	bl ovy36_21b8538
	add r5, r5, #1
	cmp r5, #3
	blt _021EED10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED48: .word 0x021EF1E0
_021EED4C: .word 0x021EF1F0
	thumb_func_end ovy132_21eec80

	thumb_func_start ovy132_21eed50
ovy132_21eed50: ; 0x021EED50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ovy36_218102c
	add r0, r4, #0
	mov r1, #0
	bl ovy36_21b81bc
	pop {r3, r4, r5, pc}
	thumb_func_end ovy132_21eed50

	thumb_func_start ovy132_21eed6c
ovy132_21eed6c: ; 0x021EED6C
	push {r3, lr}
	bl ovy36_0218056c
	bl ovy36_21b83b4
	pop {r3, pc}
	thumb_func_end ovy132_21eed6c

	thumb_func_start ovy132_21eed78
ovy132_21eed78: ; 0x021EED78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	bl sub_02016AF0
	add r4, r0, #0
	bl ovy36_0218056c
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021804F0
	add r6, sp, #8
	add r1, r6, #0
	bl sub_0219A664
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_021B8224
	add r2, r0, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r2]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	add r6, r4, #0
	mov r7, #1
_021EEDBE:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r1, r6, #0
	bl sub_021B84E8
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl ovy36_21b8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r6, [sp]
	bl ovy36_21b8504
	add r4, r4, #1
	cmp r4, #4
	blt _021EEDBE
	ldr r0, [sp, #4]
	ldr r2, _021EEE08 ; =ovy132_21eee0c
	add r1, r6, #0
	add r3, r6, #0
	bl sub_02016CB4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE08: .word ovy132_21eee0c
	thumb_func_end ovy132_21eed78

	thumb_func_start ovy132_21eee0c
ovy132_21eee0c: ; 0x021EEE0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	add r4, r0, #0
	bl ovy36_0218056c
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b8520
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b84a8
	bl ovy36_21b8580
	add r7, r0, #0
	cmp r6, #0
	blt _021EEE64
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021EEE64
	bl sub_02006280
	ldr r0, _021EEF20 ; =0x000007CF
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r4, #8]
	b _021EEEBC
_021EEE64:
	mov r0, #0x83
	lsl r0, r0, #0xc
	cmp r6, r0
	blt _021EEE82
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EEE82
	bl sub_02006280
	ldr r0, _021EEF24 ; =0x000007CA
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r4, #0xc]
	b _021EEEBC
_021EEE82:
	mov r0, #0x1b
	lsl r0, r0, #0xe
	cmp r6, r0
	blt _021EEEA0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021EEEA0
	bl sub_02006280
	ldr r0, _021EEF28 ; =0x000007CB
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r4, #0x10]
	b _021EEEBC
_021EEEA0:
	mov r0, #0xfa
	lsl r0, r0, #0xc
	cmp r6, r0
	blt _021EEEBC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021EEEBC
	bl sub_02006280
	ldr r0, _021EEF2C ; =0x000007F1
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r4, #0x14]
_021EEEBC:
	ldr r0, [r5]
	cmp r0, #0
	beq _021EEECC
	cmp r0, #1
	beq _021EEEE6
	cmp r0, #2
	beq _021EEF08
	b _021EEF16
_021EEECC:
	mov r0, #0x65
	lsl r0, r0, #0xc
	cmp r6, r0
	bne _021EEF16
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #0xf
	str r0, [r4, #4]
	b _021EEF10
_021EEEE6:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021EEF16
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021EEF02
	ldr r0, [r4]
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	b _021EEF10
_021EEF02:
	sub r0, r0, #1
	str r0, [r4, #4]
	b _021EEF16
_021EEF08:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021EEF16
_021EEF10:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021EEF16:
	mov r0, #1
	cmp r6, r7
	bge _021EEF1E
	mov r0, #0
_021EEF1E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEF20: .word 0x000007CF
_021EEF24: .word 0x000007CA
_021EEF28: .word 0x000007CB
_021EEF2C: .word 0x000007F1
	thumb_func_end ovy132_21eee0c

	thumb_func_start ovy132_21eef30
ovy132_21eef30: ; 0x021EEF30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02016AF0
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ovy36_0218056c
	add r5, r0, #0
	ldr r0, _021EEFFC ; =0x00000566
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r4, #0
	bl sub_021B8224
	ldr r2, [sp, #8]
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	bl sub_021B8258
	add r7, r4, #0
	mov r6, #1
_021EEF80:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r1, r6, #0
	bl sub_021B84E8
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl ovy36_21b8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl ovy36_21b8504
	add r4, r4, #1
	cmp r4, #3
	blt _021EEF80
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x14]
	ldmia r2!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp, #8]
	str r0, [r3]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x14]
	ldmia r2!, {r0, r1}
	add r3, #0x24
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r0, [r0]
	str r2, [sp, #0xc]
	str r0, [r3]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x14]
	ldr r2, _021EF000 ; =ovy132_21ef0b8
	strh r1, [r0, #0x34]
	ldr r1, [sp, #0x10]
	strh r7, [r0, #0x36]
	str r1, [r0, #0x30]
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r3, r7, #0
	bl sub_02016CB4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEFFC: .word 0x00000566
_021EF000: .word ovy132_21ef0b8
	thumb_func_end ovy132_21eef30

	thumb_func_start ovy132_21ef004
ovy132_21ef004: ; 0x021EF004
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	bl sub_02016AF0
	bl ovy36_0218056c
	add r5, r0, #0
	ldr r0, _021EF07C ; =0x00000567
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r4, #0
	bl sub_021B8224
	add r2, r0, #0
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r2]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	bl sub_021B8258
	add r6, r4, #0
	mov r7, #1
_021EF03E:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r1, r6, #0
	bl sub_021B84E8
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	str r7, [sp]
	bl ovy36_21b8538
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	str r6, [sp]
	bl ovy36_21b8504
	add r4, r4, #1
	cmp r4, #3
	blt _021EF03E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF07C: .word 0x00000567
	thumb_func_end ovy132_21ef004

	thumb_func_start ovy132_21ef080
ovy132_21ef080: ; 0x021EF080
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AF0
	ldr r2, _021EF098 ; =ovy132_21ef16c
	add r0, r4, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r4, pc}
	nop
_021EF098: .word ovy132_21ef16c
	thumb_func_end ovy132_21ef080

	thumb_func_start ovy132_21ef09c
ovy132_21ef09c: ; 0x021EF09C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AF0
	ldr r2, _021EF0B4 ; =ovy132_21ef198
	add r0, r4, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r4, pc}
	nop
_021EF0B4: .word ovy132_21ef198
	thumb_func_end ovy132_21ef09c

	thumb_func_start ovy132_21ef0b8
ovy132_21ef0b8: ; 0x021EF0B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	bl sub_02016ED8
	bl sub_02016AF0
	add r4, r0, #0
	bl ovy36_0218056c
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldrh r0, [r4, #0x36]
	add r0, r0, #1
	strh r0, [r4, #0x36]
	ldr r7, [r4, #0x18]
	ldr r0, [r4, #0x24]
	ldrh r5, [r4, #0x36]
	sub r1, r0, r7
	add r0, r1, #0
	ldrh r6, [r4, #0x34]
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	add r0, r7, r0
	str r0, [sp, #4]
	ldr r7, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r7, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	sub r1, r0, r7
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	add r0, r7, r0
	add r1, r6, #1
	str r0, [sp, #0xc]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	cmp r5, r0
	blt _021EF12A
	sub r5, r6, r5
_021EF12A:
	ldr r1, [r4, #0x30]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	blx sub_0208D65C
	ldr r1, [sp, #8]
	mov r2, #1
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r1, #0
	mov r5, #0
	mov r6, #1
	bl sub_021B8224
	add r2, sp, #4
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	ldrh r1, [r4, #0x36]
	ldrh r0, [r4, #0x34]
	cmp r1, r0
	blo _021EF164
	add sp, #0x10
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF164:
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy132_21ef0b8

	thumb_func_start ovy132_21ef16c
ovy132_21ef16c: ; 0x021EF16C
	push {r3, r4, r5, lr}
	bl sub_02016ED8
	bl sub_02016AF0
	bl ovy36_0218056c
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	mov r5, #1
	bl ovy36_21b8520
	mov r1, #5
	lsl r1, r1, #0xc
	cmp r0, r1
	bge _021EF192
	add r5, r4, #0
_021EF192:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy132_21ef16c

	thumb_func_start ovy132_21ef198
ovy132_21ef198: ; 0x021EF198
	push {r3, r4, r5, lr}
	bl sub_02016ED8
	bl sub_02016AF0
	bl ovy36_0218056c
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	mov r5, #1
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	bne _021EF1BE
	add r5, r4, #0
_021EF1BE:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy132_21ef198
_021EF1C4:
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x8C, 0xF2, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00, 0x00, 0xF2, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x20, 0xF2, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00, 0x00, 0xF2, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0xF1, 0x1E, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0xC4, 0xF1, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x32, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x32, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x32, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x32, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x32, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF1C4
