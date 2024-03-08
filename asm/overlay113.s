    .include "macros/function.inc"
	.include "overlay113.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy113_21eec80
ovy113_21eec80: ; 0x021EEC80
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
	bl ovy113_21eedf4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy113_21eec80

	thumb_func_start ovy113_21eecb0
ovy113_21eecb0: ; 0x021EECB0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE68
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy113_21eecb0

	thumb_func_start ovy113_21eecc8
ovy113_21eecc8: ; 0x021EECC8
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE74
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy113_21eecc8

	thumb_func_start ovy113_21eecd8
ovy113_21eecd8: ; 0x021EECD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016AD8
	add r0, r7, #0
	bl sub_02016AF0
	str r0, [sp]
	mov r1, #1
	bl sub_0218105C
	add r7, r0, #0
	ldr r0, [sp]
	bl ovy36_0218056c
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	bl sub_021B8224
	lsl r1, r5, #0x10
	str r1, [r0]
	lsl r1, r4, #0x10
	str r1, [r0, #4]
	lsl r1, r6, #0x10
	str r1, [r0, #8]
	ldr r0, [sp, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r7]
	mov r1, #0
	bl ovy113_21eee80
	ldr r0, _021EED34 ; =0x000008D7
	bl sub_02006254
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED34: .word 0x000008D7
	thumb_func_end ovy113_21eecd8

	thumb_func_start ovy113_21eed38
ovy113_21eed38: ; 0x021EED38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02016AD8
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_021804B8
	add r1, r4, #0
	bl ovy12_2167a14
	add r4, r0, #0
	bne _021EED62
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021EED62:
	ldr r1, _021EEDE4 ; =0x03178000
	str r1, [sp, #0x10]
	ldr r1, _021EEDE8 ; =0xFFFB0000
	str r1, [sp, #0x14]
	ldr r1, _021EEDEC ; =0x00978000
	str r1, [sp, #0x18]
	add r1, sp, #0x10
	bl sub_02167308
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r1, r6, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #4]
	mov r1, #0xfa
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	lsl r1, r7, #0x10
	add r0, r1, r0
	add r6, sp, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ovy12_215e8c8
	ldr r0, [sp]
	ldr r2, _021EEDF0 ; =ovy113_21eeee0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x2c
	bl sub_02016CB4
	add r5, r0, #0
	bl sub_02016EDC
	add r2, r0, #0
	str r4, [r2]
	mov r0, #0
	add r3, r2, #0
	add r4, sp, #0x10
	strh r0, [r2, #4]
	ldmia r4!, {r0, r1}
	add r3, #8
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r4, r6, #0
	str r0, [r3]
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	add r3, #0x20
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, sp, #0x10
	str r0, [r3]
	add r0, r6, #0
	add r2, #0x14
	bl VEC_Subtract
	add r0, r5, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEDE4: .word 0x03178000
_021EEDE8: .word 0xFFFB0000
_021EEDEC: .word 0x00978000
_021EEDF0: .word ovy113_21eeee0
	thumb_func_end ovy113_21eed38

	thumb_func_start ovy113_21eedf4
ovy113_21eedf4: ; 0x021EEDF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEE64 ; =0x021EEFF0
	mov r2, #0
	mov r4, #0
	bl ovy36_21b8598
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	add r7, r4, #0
_021EEE2E:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	str r7, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r4, r4, #1
	cmp r4, #2
	blo _021EEE2E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE64: .word 0x021EEFF0
	thumb_func_end ovy113_21eedf4

	thumb_func_start sub_021EEE68
sub_021EEE68: ; 0x021EEE68
	ldr r0, [r0]
	ldr r3, _021EEE70 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE70: .word ovy36_21b81bc
	thumb_func_end sub_021EEE68

	thumb_func_start sub_021EEE74
sub_021EEE74: ; 0x021EEE74
	ldr r0, [r0]
	ldr r3, _021EEE7C ; =ovy36_21b83b4
	bx r3
	nop
_021EEE7C: .word ovy36_21b83b4
	thumb_func_end sub_021EEE74

	thumb_func_start ovy113_21eee80
ovy113_21eee80: ; 0x021EEE80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_021B8258
_021EEE92:
	lsl r3, r4, #0x10
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #2
	blo _021EEE92
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy113_21eee80

	thumb_func_start ovy113_21eeee0
ovy113_21eeee0: ; 0x021EEEE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021EEEF4
	cmp r0, #1
	beq _021EEF80
	b _021EEFCA
_021EEEF4:
	add r3, r4, #0
	add r3, #8
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	str r2, [sp]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r6, #4
	str r0, [r2]
	ldrsh r2, [r4, r6]
	ldr r1, _021EEFD0 ; =0x021EF024
	ldr r0, [sp, #8]
	lsl r3, r2, #2
	ldr r1, [r1, r3]
	lsl r2, r2, #0xc
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r7, #0
	lsl r2, r6, #9
	add r0, r0, r2
	adc r1, r7
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0x16
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #4]
	ldrsh r2, [r4, r6]
	ldr r0, [r4, #0x1c]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	lsl r2, r6, #9
	add r0, r0, r2
	adc r1, r7
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0x16
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, [sp]
	bl sub_02167308
	ldrsh r0, [r4, r6]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrsh r0, [r4, r6]
	cmp r0, #0x16
	bls _021EEFCA
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EEFCA
_021EEF80:
	add r5, sp, #4
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_021672F8
	ldr r0, [r4, #0x24]
	ldr r1, [sp, #8]
	cmp r1, r0
	ble _021EEFA4
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_02167308
	b _021EEFCA
_021EEFA4:
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl sub_02167078
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	bl ovy12_2167bcc
	ldr r0, _021EEFD4 ; =0x00000682
	bl sub_02006254
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EEFCA:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEFD0: .word 0x021EF024
_021EEFD4: .word 0x00000682
	thumb_func_end ovy113_21eeee0
_021EEFD8:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD8, 0xEF, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0xF0, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0xE0, 0xEF, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x14, 0x01, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x01, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x01, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00
	.byte 0x00, 0xE0, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x50, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00
	.byte 0x00, 0xB0, 0x01, 0x00, 0x00, 0xE0, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x20, 0x02, 0x00
	.byte 0x00, 0x40, 0x02, 0x00, 0x00, 0x60, 0x02, 0x00, 0x00, 0x60, 0x02, 0x00, 0x00, 0x40, 0x02, 0x00
	.byte 0x00, 0x20, 0x02, 0x00, 0x00, 0x10, 0x02, 0x00, 0x00, 0xF0, 0x01, 0x00, 0x00, 0xD0, 0x01, 0x00
	.byte 0x00, 0xC0, 0x01, 0x00, 0x00, 0xA0, 0x01, 0x00, 0x00, 0x80, 0x01, 0x00, 0x00, 0x60, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEFD8
