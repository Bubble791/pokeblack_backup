    .include "macros/function.inc"
	.include "overlay131.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy131_21eec80
ovy131_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_021804C0
	mov r1, #0x80
	str r1, [sp]
	ldr r3, _021EED10 ; =0x021EF340
	mov r1, #0x84
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02180498
	str r0, [r4, #4]
	str r7, [r4, #0x10]
	add r0, r7, #0
	bl sub_02195618
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0218050C
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl sub_02180494
	str r0, [r4, #0x18]
	cmp r6, #0
	beq _021EECD2
	add r0, r5, #0
	bl sub_021804F0
	str r0, [r4, #0xc]
	bl sub_0219A598
	b _021EECD6
_021EECD2:
	mov r0, #0
	str r0, [r4, #0xc]
_021EECD6:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0216763C
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02167788
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ovy12_2167580
	ldr r0, [r4, #0x10]
	bl sub_021675E8
	add r0, r5, #0
	bl sub_02180570
	ldr r1, _021EED14 ; =ovy131_21eed3c
	add r2, r4, #0
	mov r3, #0
	bl sub_0203A614
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED10: .word 0x021EF340
_021EED14: .word ovy131_21eed3c
	thumb_func_end ovy131_21eec80

	thumb_func_start ovy131_21eed18
ovy131_21eed18: ; 0x021EED18
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy131_21eed18
_021EED2C:
	.byte 0x00, 0x68, 0x09, 0x28
	.byte 0x01, 0xD1, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy131_21eed3c
ovy131_21eed3c: ; 0x021EED3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #9
	bls _021EED4A
	b _021EF32A
_021EED4A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EED56: ; jump table
	.short _021EED6A - _021EED56 - 2 ; case 0
	.short _021EEFBE - _021EED56 - 2 ; case 1
	.short _021EF32A - _021EED56 - 2 ; case 2
	.short _021EF32A - _021EED56 - 2 ; case 3
	.short _021EF07A - _021EED56 - 2 ; case 4
	.short _021EF08E - _021EED56 - 2 ; case 5
	.short _021EF32A - _021EED56 - 2 ; case 6
	.short _021EF32A - _021EED56 - 2 ; case 7
	.short _021EF2BA - _021EED56 - 2 ; case 8
	.short _021EF32A - _021EED56 - 2 ; case 9
_021EED6A:
	add r6, sp, #0x24
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl sub_02195A58
	mov r7, #0
	add r5, sp, #0x18
	strh r7, [r5, #0xe]
	add r0, r6, #0
	add r1, r6, #0
	blx VEC_Fx16Normalize
	ldr r0, [r4, #8]
	add r1, sp, #0x68
	bl sub_021B09DC
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	ldr r2, [sp, #0x68]
	asr r1, r0, #0x1f
	lsr r3, r0, #0x10
	lsl r1, r1, #0x10
	orr r1, r3
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	add r0, r2, r1
	str r0, [r4, #0x20]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	ldr r2, [sp, #0x6c]
	asr r1, r0, #0x1f
	lsr r3, r0, #0x10
	lsl r1, r1, #0x10
	orr r1, r3
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xa
	add r3, r3, r0
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	add r2, r2, r1
	str r2, [r4, #0x24]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	ldr r6, [sp, #0x70]
	asr r1, r0, #0x1f
	lsr r3, r0, #0x10
	lsl r1, r1, #0x10
	orr r1, r3
	lsl r3, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r3, r0
	adc r1, r7
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r6, r0
	str r0, [r4, #0x28]
	mov r0, #0xa
	lsl r0, r0, #0xc
	ldr r1, _021EF150 ; =0xFFFF6000
	add r0, r2, r0
	str r1, [r4, #0x30]
	ldr r2, _021EF154 ; =0x0000127B
	asr r1, r0, #0x1f
	mov r3, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	asr r0, r6, #0x1f
	str r0, [sp, #0x14]
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	ldr r3, [sp, #0x14]
	add r2, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	add r3, r0, #0
	mov r0, #2
	add r2, r1, #0
	lsl r0, r0, #0xa
	add r0, r3, r0
	adc r2, r7
	ldr r1, [r4, #0x20]
	lsl r2, r2, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [r4, #0x2c]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	ldr r3, [sp, #0x14]
	add r2, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r7
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [r4, #0x28]
	orr r1, r0
	add r0, r2, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #4]
	bl sub_021B3E4C
	add r2, r4, #0
	add r1, r4, #0
	add r3, r4, #0
	add r2, #0x2c
	add r1, #0x20
	add r3, #0x78
	str r0, [sp, #0x10]
	str r2, [sp]
	bl sub_021B0438
	cmp r0, #0
	bne _021EEE84
	mov r0, #9
	add sp, #0x74
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021EEE84:
	add r0, r4, #0
	add r0, #0x78
	ldrh r0, [r0]
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r5, #4]
	add r0, r4, #0
	add r0, #0x7a
	ldrh r0, [r0]
	add r6, sp, #0x1c
	strh r0, [r5, #6]
	add r0, r4, #0
	add r0, #0x7c
	ldrh r0, [r0]
	strh r0, [r5, #8]
	add r0, r4, #0
	add r0, #0x7e
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x10]
	bl sub_021B0704
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_021B3D90
	bl sub_021A29F4
	mov r1, #1
	tst r0, r1
	bne _021EEEC6
	add r7, r1, #0
_021EEEC6:
	add r1, sp, #0x18
	mov r0, #8
	ldrsh r2, [r1, r0]
	add r2, r2, #2
	strh r2, [r1, #8]
	ldrsh r2, [r1, r0]
	ldr r0, [sp, #0xc]
	cmp r2, r0
	ble _021EEEDA
	strh r0, [r1, #8]
_021EEEDA:
	add r5, sp, #0x18
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	mov r6, #0
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #0
	ble _021EEF34
_021EEEF0:
	mov r0, #8
	ldrsh r0, [r5, r0]
	add r1, sp, #0x1c
	sub r0, r0, #1
	strh r0, [r5, #8]
	ldr r0, [r4, #4]
	bl sub_021B3D90
	bl sub_021A29F4
	mov r1, #1
	tst r0, r1
	bne _021EEF34
	ldrh r1, [r5, #4]
	add r0, r4, #0
	add r0, #0x78
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x7a
	add r6, r6, #1
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #8]
	add r0, #0x7c
	mov r7, #1
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #0xa]
	add r0, #0x7e
	strh r1, [r0]
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _021EEEF0
_021EEF34:
	cmp r7, #0
	bne _021EEF40
	mov r0, #9
	add sp, #0x74
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021EEF40:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #0x78
	add r2, #0x2c
	bl sub_021B06EC
	add r0, r4, #0
	add r1, r4, #0
	add r5, sp, #0x5c
	add r0, #0x2c
	add r1, #0x20
	add r2, r5, #0
	bl VEC_Subtract
	add r0, r5, #0
	blx VEC_Mag
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, #0
	blx VEC_Normalize
	ldr r2, [sp, #0x64]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x5c]
	strh r1, [r4, #0x3a]
	mov r1, #2
	strh r2, [r4, #0x3c]
	strh r0, [r4, #0x38]
	ldr r0, [sp, #0x18]
	lsl r1, r1, #0xe
	bl FX_Div
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	bl FX_Modf
	cmp r0, #0
	bne _021EEF96
	ldr r0, [sp, #0x18]
	asr r0, r0, #0xc
	b _021EEF9C
_021EEF96:
	ldr r0, [sp, #0x18]
	asr r0, r0, #0xc
	add r0, r0, #1
_021EEF9C:
	str r0, [r4, #0x44]
	mov r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021EEFB6
	ldr r0, [r4, #0x18]
	bl sub_02186730
	mov r0, #1
	add sp, #0x74
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021EEFB6:
	mov r0, #4
	add sp, #0x74
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021EEFBE:
	ldr r0, [r4, #0x18]
	bl sub_02186770
	cmp r0, #0
	beq _021EEFCA
	b _021EF32A
_021EEFCA:
	ldr r0, [r4, #0x18]
	bl sub_021862DC
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_021857C4
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x48
	bl sub_02186374
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x54
	bl sub_02186344
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x78
	bl sub_021B3D9C
	ldr r0, [r4, #0x18]
	bl sub_021862E4
	cmp r0, #0
	beq _021EF010
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x2c
	bl sub_02186320
	ldr r0, [r4, #0x18]
	bl sub_021862DC
_021EF010:
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_021857C4
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x60
	bl sub_02186374
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x6c
	bl sub_02186344
	add r0, r4, #0
	add r0, #0x60
	add r1, r4, #0
	add r1, #0x48
	add r2, r0, #0
	bl VEC_Subtract
	add r0, r4, #0
	add r0, #0x6c
	add r1, r4, #0
	add r1, #0x54
	add r2, r0, #0
	bl VEC_Subtract
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_021B3C18
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_021857AC
	ldr r0, [r4, #0x18]
	bl sub_021862DC
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x54
	bl sub_02186320
	add r1, r4, #0
	ldr r0, [r4, #0x18]
	add r1, #0x48
	bl sub_02186384
	mov r0, #4
	add sp, #0x74
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021EF07A:
	ldr r0, _021EF158 ; =0x000006ED
	bl GFL_SndSEPlay
	mov r0, #5
	str r0, [r4]
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xe
	bl sub_02166FE8
_021EF08E:
	ldr r0, [r4, #0x40]
	add r1, r0, #1
	ldr r0, [r4, #0x44]
	str r1, [r4, #0x40]
	cmp r1, r0
	blo _021EF0AC
	ldr r2, [r4, #0x34]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	str r2, [sp, #0x58]
	mov r0, #8
	str r0, [r4]
	b _021EF18C
_021EF0AC:
	cmp r1, #0
	ble _021EF0C2
	lsl r0, r1, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EF0D0
_021EF0C2:
	lsl r0, r1, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EF0D0:
	blx sub_0208DA4C
	asr r2, r0, #0x1f
	lsr r1, r0, #0x11
	lsl r2, r2, #0xf
	orr r2, r1
	lsl r1, r0, #0xf
	mov r0, #2
	lsl r0, r0, #0xa
	add r1, r1, r0
	ldr r0, _021EF15C ; =0x00000000
	adc r2, r0
	lsl r0, r2, #0x14
	lsr r5, r1, #0xc
	orr r5, r0
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	asr r6, r5, #0x1f
	add r2, r5, #0
	asr r1, r0, #0x1f
	add r3, r6, #0
	blx sub_0208D60C
	mov r3, #2
	lsl r3, r3, #0xa
	add r0, r0, r3
	ldr r3, _021EF15C ; =0x00000000
	ldr r2, [r4, #0x28]
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r7, r2, r0
	mov r0, #0x3a
	ldrsh r0, [r4, r0]
	add r2, r5, #0
	add r3, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r3, #2
	add r2, r0, #0
	lsl r3, r3, #0xa
	add r3, r2, r3
	ldr r2, _021EF15C ; =0x00000000
	ldr r0, [r4, #0x24]
	adc r1, r2
	lsr r2, r3, #0xc
	lsl r1, r1, #0x14
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #8]
	mov r0, #0x38
	ldrsh r0, [r4, r0]
	add r2, r5, #0
	add r3, r6, #0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	ldr r0, _021EF15C ; =0x00000000
	b _021EF160
	.align 2, 0
_021EF150: .word 0xFFFF6000
_021EF154: .word 0x0000127B
_021EF158: .word 0x000006ED
_021EF15C: .word 0x00000000
_021EF160:
	ldr r2, [r4, #0x20]
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x50]
	ldr r0, [sp, #8]
	str r7, [sp, #0x58]
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x40]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021EF18C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl sub_021A3E74
_021EF18C:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x50
	cmp r0, #0
	beq _021EF19A
	bl sub_0219A670
	b _021EF1A0
_021EF19A:
	ldr r0, [r4, #0x10]
	bl sub_02167308
_021EF1A0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EF1A8
	b _021EF32A
_021EF1A8:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x68]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r5, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x44]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #0x50]
	ldr r2, [r4, #0x40]
	add r6, r1, r0
	ldr r0, [r4, #0x64]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x44]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x40]
	add r7, r1, r0
	ldr r0, [r4, #0x60]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x44]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #0x48]
	add r0, r1, r0
	str r0, [sp, #0x44]
	str r7, [sp, #0x48]
	str r6, [sp, #0x4c]
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x74]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x44]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #0x5c]
	ldr r2, [r4, #0x40]
	add r6, r1, r0
	ldr r0, [r4, #0x70]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x44]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x40]
	add r7, r1, r0
	ldr r0, [r4, #0x6c]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x44]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #0x54]
	add r0, r1, r0
	str r7, [sp, #0x3c]
	str r6, [sp, #0x40]
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x18]
	add r1, sp, #0x38
	bl sub_02186320
	ldr r0, [r4, #0x18]
	add r1, sp, #0x44
	bl sub_02186384
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
_021EF2BA:
	ldr r0, _021EF330 ; =0x000006ED
	bl sub_020061B8
	bl sub_02006268
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021EF2F4
	add r1, r4, #0
	add r1, #0x78
	bl sub_0219AD18
	add r5, sp, #0x2c
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0219AD3C
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0219A670
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_021B3C18
	ldr r0, [r4, #4]
	bl sub_021B3D54
	b _021EF2FE
_021EF2F4:
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x78
	bl sub_02195590
_021EF2FE:
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xe
	bl sub_02166FF0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0216763C
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02167788
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ovy12_2167580
	ldr r0, [r4, #0x10]
	bl sub_021675F4
	mov r0, #9
	str r0, [r4]
_021EF32A:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021EF330: .word 0x000006ED
	thumb_func_end ovy131_21eed3c
_021EF334:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x72, 0x61, 0x69, 0x6C, 0x5F, 0x73, 0x6C, 0x69, 0x70, 0x64, 0x6F, 0x77, 0x6E, 0x2E, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF334
