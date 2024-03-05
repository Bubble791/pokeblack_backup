    .include "macros/function.inc"
	.include "overlay124.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy124_21eec80
ovy124_21eec80: ; 0x021EEC80
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
	bl sub_02180FF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	add r0, r6, #0
	str r5, [r4, #4]
	bl sub_0201793C
	mov r1, #0x29
	bl sub_0200BAC4
	str r0, [r4, #8]
	add r0, r4, #0
	bl ovy124_21eee2c
	add r0, r4, #0
	bl ovy124_21eed94
	pop {r4, r5, r6, pc}
	thumb_func_end ovy124_21eec80

	thumb_func_start ovy124_21eecc8
ovy124_21eecc8: ; 0x021EECC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE68
	add r0, r4, #0
	mov r1, #1
	bl sub_0218102C
	pop {r4, pc}
	thumb_func_end ovy124_21eecc8

	thumb_func_start ovy124_21eece0
ovy124_21eece0: ; 0x021EECE0
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE74
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy124_21eece0

	thumb_func_start ovy124_21eecf0
ovy124_21eecf0: ; 0x021EECF0
	push {r4, lr}
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy124_21eeef8
	ldr r0, [r4]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl ovy124_21eeef8
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_021EF2D0
	pop {r4, pc}
	thumb_func_end ovy124_21eecf0

	thumb_func_start ovy124_21eed20
ovy124_21eed20: ; 0x021EED20
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	cmp r4, #0
	bne _021EED38
	bl ovy124_21ef024
	pop {r4, pc}
_021EED38:
	bl ovy124_21ef040
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy124_21eed20

	thumb_func_start ovy124_21eed40
ovy124_21eed40: ; 0x021EED40
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	mov r5, #0
	add r4, r0, #0
	mov r6, #1
	add r7, r5, #0
_021EED54:
	lsl r2, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy124_21eeef8
	add r5, r5, #1
	cmp r5, #3
	blo _021EED54
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy124_21eed40

	thumb_func_start ovy124_21eed6c
ovy124_21eed6c: ; 0x021EED6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02016AF0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r5, #0
	bl ovy124_21ef0a4
	add r5, r0, #0
	beq _021EED90
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl sub_021EF2D8
_021EED90:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy124_21eed6c

	thumb_func_start ovy124_21eed94
ovy124_21eed94: ; 0x021EED94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF2D4
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF2DC
	add r4, r0, #0
	mov r6, #0x16
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	lsl r6, r6, #0x10
	bl sub_021B8258
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_021B8258
	cmp r7, #0
	bne _021EEDDA
	cmp r4, #0
	bne _021EEDDA
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8258
	b _021EEE10
_021EEDDA:
	cmp r7, #1
	bne _021EEDF0
	cmp r4, #0
	bne _021EEDF0
	add r0, r5, #0
	bl ovy124_21ef05c
	add r0, r5, #0
	bl ovy124_21eef7c
	b _021EEE10
_021EEDF0:
	cmp r4, #1
	bne _021EEE10
	add r0, r5, #0
	bl ovy124_21eef7c
	mov r6, #3
	ldr r0, [r5]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	lsl r6, r6, #0x12
	bl sub_021B8258
	add r0, r5, #0
	bl ovy124_21eefd0
_021EEE10:
	ldr r0, [r5]
	mov r1, #0
	mov r2, #2
	bl sub_021B8224
	mov r1, #0x3e
	lsl r1, r1, #0xe
	str r1, [r0]
	mov r1, #0x1e
	str r6, [r0, #4]
	lsl r1, r1, #0xe
	str r1, [r0, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy124_21eed94

	thumb_func_start ovy124_21eee2c
ovy124_21eee2c: ; 0x021EEE2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021EEE64 ; =0x021EF480
	mov r2, #0
	bl sub_021B8598
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	bl ovy124_21eee80
	ldr r0, [r4]
	mov r1, #1
	mov r2, #3
	bl ovy124_21eee80
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0
	bl ovy124_21eee80
	ldr r0, [r4]
	mov r1, #3
	mov r2, #2
	bl ovy124_21eee80
	pop {r4, pc}
	.align 2, 0
_021EEE64: .word 0x021EF480
	thumb_func_end ovy124_21eee2c

	thumb_func_start sub_021EEE68
sub_021EEE68: ; 0x021EEE68
	ldr r0, [r0]
	ldr r3, _021EEE70 ; =sub_021B81BC
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE70: .word sub_021B81BC
	thumb_func_end sub_021EEE68

	thumb_func_start sub_021EEE74
sub_021EEE74: ; 0x021EEE74
	ldr r0, [r0]
	ldr r3, _021EEE7C ; =sub_021B83B4
	bx r3
	nop
_021EEE7C: .word sub_021B83B4
	thumb_func_end sub_021EEE74

	thumb_func_start ovy124_21eee80
ovy124_21eee80: ; 0x021EEE80
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
	ble _021EEEF4
_021EEEBC:
	lsl r3, r4, #0x10
	add r0, r6, #0
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
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEEBC
_021EEEF4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy124_21eee80

	thumb_func_start ovy124_21eeef8
ovy124_21eeef8: ; 0x021EEEF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	add r6, r0, #0
	bl sub_021B84A8
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
	bl sub_021B8538
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_021B8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy124_21eeef8

	thumb_func_start ovy124_21eef44
ovy124_21eef44: ; 0x021EEF44
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
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl sub_021B8504
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy124_21eef44

	thumb_func_start ovy124_21eef7c
ovy124_21eef7c: ; 0x021EEF7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	add r7, r4, #0
_021EEF90:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B8538
	add r0, r6, #0
	bl sub_021B8580
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_021B8504
	add r4, r4, #1
	cmp r4, #2
	blo _021EEF90
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy124_21eef7c

	thumb_func_start ovy124_21eefd0
ovy124_21eefd0: ; 0x021EEFD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	add r7, r4, #0
_021EEFE4:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_021B84A8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_021B8538
	add r0, r6, #0
	bl sub_021B8580
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_021B8504
	add r4, r4, #1
	cmp r4, #3
	blo _021EEFE4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy124_21eefd0

	thumb_func_start ovy124_21ef024
ovy124_21ef024: ; 0x021EF024
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy124_21eeef8
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	bl ovy124_21eef44
	pop {r4, pc}
	thumb_func_end ovy124_21ef024

	thumb_func_start ovy124_21ef040
ovy124_21ef040: ; 0x021EF040
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	mov r3, #0
	bl ovy124_21eeef8
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	bl ovy124_21eef44
	pop {r4, pc}
	thumb_func_end ovy124_21ef040

	thumb_func_start ovy124_21ef05c
ovy124_21ef05c: ; 0x021EF05C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B84A8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8538
	add r0, r4, #0
	bl sub_021B8580
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8258
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8504
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy124_21ef05c

	thumb_func_start ovy124_21ef0a4
ovy124_21ef0a4: ; 0x021EF0A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl sub_02016AF0
	add r5, r0, #0
	ldr r2, _021EF108 ; =ovy124_21ef10c
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x20
	mov r7, #0
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	add r0, r5, #0
	str r5, [r4, #4]
	bl sub_021804B8
	mov r1, #0
	bl sub_02167A14
	str r0, [r4, #0x14]
	mov r1, #0x64
	bl sub_02166E88
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	bl sub_02166FC8
	mov r0, #0x16
	lsl r0, r0, #0x10
	str r0, [r4, #8]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0xc]
	lsr r0, r0, #4
	str r0, [r4, #0x10]
	strh r7, [r4, #0x1c]
	mov r0, #1
	str r0, [r4, #0x18]
	mov r0, #0x1e
	strh r0, [r4, #0x1e]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF108: .word ovy124_21ef10c
	thumb_func_end ovy124_21ef0a4

	thumb_func_start ovy124_21ef10c
ovy124_21ef10c: ; 0x021EF10C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	str r1, [sp]
	bl sub_02016ED8
	ldr r0, [r4, #4]
	mov r1, #1
	mov r5, #1
	bl sub_0218105C
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #3
	bls _021EF12C
	b _021EF272
_021EF12C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF138: ; jump table
	.short _021EF140 - _021EF138 - 2 ; case 0
	.short _021EF1B8 - _021EF138 - 2 ; case 1
	.short _021EF1FA - _021EF138 - 2 ; case 2
	.short _021EF250 - _021EF138 - 2 ; case 3
_021EF140:
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	mov r6, #0
	bl sub_021B8258
	add r0, sp, #4
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	mov r1, #4
	add r0, sp, #4
	strh r1, [r0]
	mov r1, #3
	str r1, [sp, #8]
	mov r1, #0xa
	strb r1, [r0, #2]
	ldr r5, [r4, #8]
	ldr r7, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r7, r5
	bgt _021EF192
_021EF170:
	ldr r2, _021EF278 ; =0x000011A0
	asr r1, r0, #0x1f
	mov r3, #0
	sub r5, r5, r0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021EF27C ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r6, r6, #1
	cmp r7, r5
	ble _021EF170
_021EF192:
	sub r1, r6, #5
	add r0, sp, #4
	strh r1, [r0, #0xc]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl ovy124_21ef2e0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02180578
	add r1, r5, #0
	mov r2, #0
	bl sub_021C09E4
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	b _021EF272
_021EF1B8:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	ldr r2, _021EF278 ; =0x000011A0
	sub r1, r1, r0
	str r1, [r4, #8]
	asr r1, r0, #0x1f
	mov r3, #0
	mov r6, #0
	blx sub_0208D60C
	lsl r2, r5, #0xb
	add r2, r0, r2
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x10]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021EF1F0
	ldr r0, _021EF280 ; =0x00000899
	str r1, [r4, #8]
	bl sub_02006254
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0]
_021EF1F0:
	ldr r1, [r4, #8]
	add r0, r4, #0
_021EF1F4:
	bl ovy124_21ef288
	b _021EF272
_021EF1FA:
	ldrh r0, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	add r0, r0, #1
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0x1c]
	lsl r0, r0, #0xf
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021EF284 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r2, [r0, r1]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	add r1, r0, #0
	mul r1, r2
	cmp r2, #0
	bne _021EF236
	sub r0, #0xb
	strh r0, [r4, #0x1e]
_021EF236:
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _021EF246
	ldr r0, [sp]
	mov r2, #3
	mov r1, #0
	str r2, [r0]
_021EF246:
	mov r2, #3
	lsl r2, r2, #0x12
	add r0, r4, #0
	add r1, r1, r2
	b _021EF1F4
_021EF250:
	ldr r0, [r4, #4]
	bl sub_02180578
	bl sub_021C0A4C
	cmp r0, #0
	beq _021EF272
	ldr r0, [r4, #0x14]
	bl sub_02166F2C
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	bl sub_02166FD0
	add sp, #0x14
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_021EF272:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF278: .word 0x000011A0
_021EF27C: .word 0x00000000
_021EF280: .word 0x00000899
_021EF284: .word FX_SinCosTable_
	thumb_func_end ovy124_21ef10c

	thumb_func_start ovy124_21ef288
ovy124_21ef288: ; 0x021EF288
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	mov r1, #0
	mov r2, #2
	bl sub_021B8224
	str r4, [r0, #4]
	ldr r0, [r5, #0x14]
	bl sub_021672F4
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	asr r2, r4, #4
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	str r4, [sp, #4]
	add r1, r2, r1
	lsl r1, r1, #4
	ldr r0, [r5, #0x14]
	asr r1, r1, #0x10
	bl sub_021672C8
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl sub_02167308
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy124_21ef288

	thumb_func_start sub_021EF2D0
sub_021EF2D0: ; 0x021EF2D0
	str r1, [r0]
	bx lr
	thumb_func_end sub_021EF2D0

	thumb_func_start sub_021EF2D4
sub_021EF2D4: ; 0x021EF2D4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021EF2D4

	thumb_func_start sub_021EF2D8
sub_021EF2D8: ; 0x021EF2D8
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021EF2D8

	thumb_func_start sub_021EF2DC
sub_021EF2DC: ; 0x021EF2DC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021EF2DC

	thumb_func_start ovy124_21ef2e0
ovy124_21ef2e0: ; 0x021EF2E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_021804C0
	ldr r2, _021EF318 ; =ovy124_21ef31c
	mov r1, #0x24
	bl sub_021C0870
	add r7, r0, #0
	bl sub_021C08CC
	add r4, r0, #0
	add r0, r6, #0
	str r6, [r4]
	bl sub_02180494
	add r2, r4, #0
	str r0, [r4, #4]
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r4, #8]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF318: .word ovy124_21ef31c
	thumb_func_end ovy124_21ef2e0

	thumb_func_start ovy124_21ef31c
ovy124_21ef31c: ; 0x021EF31C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4]
	add r5, r4, #0
	mov r7, #0
	add r5, #0xc
	bl sub_02180494
	mov r1, #0xc
	ldrsh r1, [r5, r1]
	add r6, r0, #0
	cmp r1, #0
	ble _021EF342
	sub r0, r1, #1
	strh r0, [r5, #0xc]
	add sp, #0x20
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF342:
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _021EF34A
	b _021EF458
_021EF34A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF356: ; jump table
	.short _021EF35E - _021EF356 - 2 ; case 0
	.short _021EF36A - _021EF356 - 2 ; case 1
	.short _021EF3AC - _021EF356 - 2 ; case 2
	.short _021EF452 - _021EF356 - 2 ; case 3
_021EF35E:
	bl sub_02186730
_021EF362:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021EF458
_021EF36A:
	ldr r0, [r4, #4]
	bl sub_02186770
	cmp r0, #0
	bne _021EF458
	ldr r0, [r4, #4]
	bl sub_02186EA0
	add r0, r6, #0
	bl sub_021862E4
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	bl sub_02180498
	bl sub_021B3D24
	cmp r0, #0
	beq _021EF3A0
	add r0, r6, #0
	bl sub_021862F4
	str r0, [r4, #0x20]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021862F0
_021EF3A0:
	add r0, r6, #0
	bl sub_021862DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_021EF3AC:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [sp]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r2, [sp]
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _021EF3D8
	ldrb r0, [r5, #2]
	sub r0, r0, #1
	strb r0, [r5, #2]
	mov r0, #0
	str r0, [r5, #8]
_021EF3D8:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _021EF3E4
	mov r0, #0
	str r0, [r5, #8]
	mov r7, #1
_021EF3E4:
	cmp r7, #0
	beq _021EF424
	add r1, sp, #0x14
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r6, #0
	bl sub_021863A4
	add r0, r6, #0
	bl sub_02186F00
	ldr r0, [r4]
	bl sub_02180498
	bl sub_021B3D24
	cmp r0, #0
	beq _021EF414
	ldr r1, [r4, #0x20]
	add r0, r6, #0
	bl sub_021862F0
_021EF414:
	ldr r1, [r4, #0x1c]
	add r0, r6, #0
	bl sub_021862B8
	add r0, r6, #0
	bl sub_021866E4
	b _021EF362
_021EF424:
	asr r1, r1, #4
	mov r0, #0
	ldrsh r0, [r5, r0]
	lsl r2, r1, #2
	ldr r1, _021EF460 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r5, [r4, #0x1c]
	ldrsh r1, [r1, r2]
	add r3, r0, #0
	add r4, sp, #8
	mul r3, r1
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r4]
	ldr r0, [sp, #0xc]
	add r0, r0, r3
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_02186320
	b _021EF458
_021EF452:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF458:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF460: .word FX_SinCosTable_
	thumb_func_end ovy124_21ef31c
_021EF464:
	.byte 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0xD0, 0xF4, 0x1E, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x90, 0xF4, 0x1E, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0xF4, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x74, 0xF4, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x64, 0xF4, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x19, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x19, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x19, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF464
