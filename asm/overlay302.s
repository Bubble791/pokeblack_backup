    .include "macros/function.inc"
	.include "overlay302.inc"
	.include "global.inc"

	.text
	.public ovy302_21ad01c
	.public ovy302_21ad030
	.public sub_021AD044
	.public ovy302_21ad05c
	.public ovy302_21ad624
	.public ovy302_21ad688
	.public ovy302_21ad78c
	.public ovy302_21ad7a8


	thumb_func_start ovy302_21ad7f0
ovy302_21ad7f0: ; 0x021AD7F0
	push {lr}
	sub sp, #0xc
	add r3, r1, #0
	ldrh r1, [r3, #0x16]
	str r3, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	bl Oam_CreateSprite
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy302_21ad7f0

	thumb_func_start ovy302_21ad80c
ovy302_21ad80c: ; 0x021AD80C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x17c
	str r0, [sp, #8]
	add r4, r1, #0
	mov r5, #0
	add r0, sp, #0x24
	strh r5, [r0]
	add r0, r4, #0
	str r2, [sp, #0xc]
	add r6, r3, #0
	bl sub_02010D78
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_02010D98
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02010D88
	str r0, [sp, #0x10]
	mov r0, #0x4a
	lsl r0, r0, #2
	add r1, r6, #0
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	bl ovy302_21add74
	str r0, [sp, #0x18]
	cmp r0, #0
	bge _021AD852
	str r5, [sp, #0x18]
_021AD852:
	add r0, sp, #0x24
	ldr r2, _021AD8DC ; =0x00000352
	add r0, #2
	mov r1, #0
	mov r4, #0
	blx MI_CpuFill8
	add r2, sp, #0x24
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r2, #2
	bl sub_0204ABA4
	add r0, sp, #0x24
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #0x24
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, #2
	add r2, r7, #0
	bl ovy302_21adda4
	str r0, [sp, #0x1c]
	add r0, sp, #0x24
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bls _021AD8C4
_021AD88A:
	mov r0, #0x1c
	add r6, r4, #0
	mul r6, r0
	add r0, sp, #0x24
	add r0, #2
	ldrb r0, [r0, r7]
	add r1, sp, #0x30
	add r1, r1, r6
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x10]
	add r2, r7, #0
	bl ovy302_21ad688
	cmp r0, #1
	bne _021AD8BA
	add r0, sp, #0x24
	add r0, #2
	add r0, r0, r6
	ldrh r2, [r0, #0xa]
	ldr r0, [sp, #0x1c]
	lsl r1, r5, #1
	strh r2, [r0, r1]
	add r5, r5, #1
_021AD8BA:
	add r0, sp, #0x24
	ldrh r0, [r0, #0xa]
	add r4, r4, #1
	cmp r4, r0
	blo _021AD88A
_021AD8C4:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	str r1, [r0]
	ldr r0, [sp, #0x14]
	bl GFL_ArcToolFree
	add r0, sp, #0x24
	ldrh r0, [r0]
	add sp, #0x1fc
	add sp, #0x17c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AD8DC: .word 0x00000352
	thumb_func_end ovy302_21ad80c

	thumb_func_start ovy302_21ad8e0
ovy302_21ad8e0: ; 0x021AD8E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x198
	str r0, [sp]
	add r0, r1, #0
	ldr r0, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_02017394
	str r0, [sp, #0x24]
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r1, #0x69
	bl GFL_ArcSysCreateFileHandle
	add r4, sp, #0x34
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	add r0, r4, #0
	bl ovy302_21add4c
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl GameData_GetPokedex
	str r0, [sp, #0x2c]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021AD92C
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r2, r4, #0
	bl ovy302_21ade10
	ldr r1, [sp, #4]
	str r0, [r1, #4]
	b _021AD932
_021AD92C:
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #4]
_021AD932:
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021AD93C
	b _021ADAD6
_021AD93C:
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #0x1c]
	ldr r2, _021ADADC ; =0x0000C144
	add r0, #8
	mov r1, #0
	blx MI_CpuFill8
	mov r0, #0
	str r0, [sp, #0x28]
_021AD950:
	ldr r0, [sp, #0x28]
	mov r1, #6
	mul r1, r0
	ldr r2, _021ADAE0 ; =0x021AE41C
	ldr r0, [sp, #0x24]
	add r6, r2, r1
	ldrh r1, [r2, r1]
	bl sub_020191AC
	add r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021AD978
	ldr r0, [sp]
	bl sub_02010D78
	ldrh r1, [r6, #2]
	cmp r1, r0
	beq _021AD978
	mov r4, #0
_021AD978:
	cmp r4, #1
	bne _021AD9A0
	ldr r4, _021ADAE4 ; =0x00000352
	add r0, sp, #0x40
	mov r1, #0
	add r2, r4, #0
	mov r5, #0
	blx MI_CpuFill8
	ldrb r1, [r6, #4]
	ldr r0, [sp, #0x20]
	add r2, sp, #0x40
	bl sub_0204ABA4
	add r0, sp, #0x40
	add r1, sp, #0x34
	bl sub_021ADD2C
	cmp r0, #0
	bne _021AD9A2
_021AD9A0:
	b _021ADAC4
_021AD9A2:
	ldr r7, [sp, #4]
	add r1, r4, #0
	ldr r0, [sp, #0x1c]
	add r1, #0x12
	mul r1, r0
	add r7, #8
	add r0, r7, r1
	str r1, [sp, #0x30]
	str r0, [sp, #0x10]
	add r1, r5, #0
	mov r2, #4
	blx MI_CpuFill8
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r1, #0xe
	str r2, [r0, r1]
	ldrh r1, [r6, #2]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	strh r1, [r7, r0]
	add r0, sp, #0x34
	ldrh r1, [r0, #0x12]
	ldr r0, [sp, #0x10]
	str r1, [r0, #8]
	add r1, r4, #2
	add r0, r0, r1
	add r1, sp, #0x40
	bl ovy302_21adc78
	add r1, r4, #2
	add r7, r5, #0
	add r4, #0xe
_021AD9E6:
	add r0, sp, #0x40
	add r6, r0, r5
	ldrb r3, [r0, r5]
	ldr r0, [sp, #0x10]
	lsl r2, r5, #1
	add r0, r0, r2
	strh r3, [r0, #2]
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _021ADA12
	ldr r2, [sp, #0x10]
	lsl r0, r5, #2
	add r2, r2, r0
	ldr r2, [r2, r1]
	cmp r2, #2
	bne _021ADA0E
	add r2, sp, #0x34
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _021ADA12
_021ADA0E:
	ldr r0, [sp, #0x10]
	str r7, [r0, r4]
_021ADA12:
	add r5, r5, #1
	cmp r5, #3
	blt _021AD9E6
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x34
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	ble _021ADABE
	ldr r0, [sp, #0x10]
	add r7, sp, #0x34
	add r0, #0xc
	str r0, [sp, #0x10]
_021ADA2C:
	ldr r1, [sp, #0x18]
	mov r0, #0x1c
	mul r0, r1
	ldr r1, [sp, #0x10]
	add r1, r1, r0
	str r1, [sp, #0x14]
	add r1, sp, #0x40
	add r1, r1, r0
	ldrh r2, [r1, #0xa]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x10]
	strh r2, [r1, r0]
	mov r0, #0
	mov ip, r0
_021ADA48:
	mov r0, ip
	lsl r1, r0, #1
	mov r0, ip
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r4, #0
	add r6, r0, r1
	ldr r0, [sp, #0x14]
	add r5, r0, r1
_021ADA5A:
	lsl r0, r4, #2
	add r3, r6, r4
	ldr r1, [r7, r0]
	ldrb r0, [r3, #0xc]
	add r2, r5, r4
	and r0, r1
	strb r0, [r2, #2]
	ldrb r0, [r3, #0x18]
	strb r0, [r2, #0xe]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021ADA5A
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
	cmp r0, #4
	blo _021ADA48
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	ldrh r1, [r1]
	bl PokeDexSave_IsMonCaught
	cmp r0, #0
	beq _021ADA96
	mov r1, #3
	b _021ADAAA
_021ADA96:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	ldrh r1, [r1]
	bl sub_0200D7F4
	cmp r0, #0
	beq _021ADAA8
	mov r1, #2
	b _021ADAAA
_021ADAA8:
	mov r1, #1
_021ADAAA:
	ldr r0, [sp, #0x14]
	strb r1, [r0, #0x1a]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	add r0, sp, #0x34
	ldrh r1, [r0, #0x14]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	blt _021ADA2C
_021ADABE:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_021ADAC4:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0x39
	bge _021ADAD0
	b _021AD950
_021ADAD0:
	ldr r0, [sp, #0x20]
	bl GFL_ArcToolFree
_021ADAD6:
	add sp, #0x1fc
	add sp, #0x198
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021ADADC: .word 0x0000C144
_021ADAE0: .word 0x021AE41C
_021ADAE4: .word 0x00000352
	thumb_func_end ovy302_21ad8e0

	thumb_func_start ovy302_21adae8
ovy302_21adae8: ; 0x021ADAE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0xd4
	ldr r0, [r1]
	str r1, [sp]
	bl sub_02017394
	str r0, [sp, #0x10]
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r1, #0x69
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	bl sub_02017934
	bl sub_02010CB8
	add r7, r0, #0
	ldr r0, [sp]
	ldr r0, [r0]
	bl GameData_GetPokedex
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r0, sp, #0x18
	bl ovy302_21add4c
	add r6, sp, #0x374
	mov r4, #0
	add r6, #2
_021ADB2E:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021ADC6C ; =0x021AE41C
	ldr r2, _021ADC6C ; =0x021AE41C
	add r5, r0, r1
	ldrh r1, [r2, r1]
	ldr r0, [sp, #0x10]
	bl sub_020191AC
	cmp r0, #1
	bne _021ADB70
	ldr r2, _021ADC70 ; =0x00000352
	add r0, r6, #0
	mov r1, #0
	blx MI_CpuFill8
	ldrb r1, [r5, #4]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	bl sub_0204ABA4
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_021ADD2C
	cmp r0, #0
	beq _021ADB70
	ldr r0, [sp]
	ldrb r0, [r0, #4]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, #4]
_021ADB70:
	add r4, r4, #1
	cmp r4, #0x39
	blt _021ADB2E
	ldr r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldr r2, _021ADC74 ; =0x000009CC
	add r0, #8
	mov r1, #0
	blx MI_CpuFill8
	mov r0, #0
	str r0, [sp, #8]
_021ADB8A:
	ldr r0, [sp, #8]
	mov r1, #6
	mul r1, r0
	ldr r2, _021ADC6C ; =0x021AE41C
	ldr r0, [sp, #0x10]
	add r6, r2, r1
	ldrh r1, [r2, r1]
	bl sub_020191AC
	cmp r0, #1
	bne _021ADC52
	ldr r2, _021ADC70 ; =0x00000352
	add r0, sp, #0x24
	mov r1, #0
	mov r4, #0
	blx MI_CpuFill8
	ldrb r1, [r6, #4]
	ldr r0, [sp, #0xc]
	add r2, sp, #0x24
	bl sub_0204ABA4
	add r0, sp, #0x24
	add r1, sp, #0x18
	bl sub_021ADD2C
	cmp r0, #0
	beq _021ADC52
	ldr r2, [sp, #4]
	mov r0, #0x2c
	ldr r1, [sp]
	mul r0, r2
	add r1, #8
	ldrh r2, [r6, #2]
	add r5, r1, r0
	strh r2, [r1, r0]
	add r0, sp, #0x18
	ldrb r1, [r0, #0xf]
	ldr r2, [sp, #0x14]
	strb r1, [r5, #2]
	ldrb r1, [r0, #0x10]
	strb r1, [r5, #3]
	ldrb r0, [r0, #0x11]
	add r1, sp, #0x24
	strb r0, [r5, #4]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #8
	bl ovy302_21adc78
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021ADBFE:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02010CC4
	add r1, r5, r4
	ldrb r1, [r1, #2]
	cmp r1, #1
	bne _021ADC3A
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _021ADC38
	cmp r2, #1
	beq _021ADC2E
	cmp r2, #2
	bne _021ADC42
	cmp r0, #2
	bne _021ADC2A
	mov r0, #2
_021ADC28:
	b _021ADC40
_021ADC2A:
	mov r0, #1
	b _021ADC40
_021ADC2E:
	cmp r0, #1
	bne _021ADC36
	mov r0, #3
	b _021ADC28
_021ADC36:
	b _021ADC2A
_021ADC38:
	b _021ADC3E
_021ADC3A:
	lsl r0, r4, #2
	add r1, r5, r0
_021ADC3E:
	mov r0, #4
_021ADC40:
	str r0, [r1, #0x14]
_021ADC42:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021ADBFE
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_021ADC52:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x39
	blt _021ADB8A
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0xd4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ADC6C: .word 0x021AE41C
_021ADC70: .word 0x00000352
_021ADC74: .word 0x000009CC
	thumb_func_end ovy302_21adae8

	thumb_func_start ovy302_21adc78
ovy302_21adc78: ; 0x021ADC78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #2
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #0
	ldrh r0, [r0, #8]
	str r1, [sp]
	str r2, [sp, #4]
	cmp r0, #0
	ble _021ADD26
_021ADC96:
	add r4, sp, #0xc
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	mov r5, #0
	blx MI_CpuFill8
	ldr r0, [sp, #8]
	mov r1, #0x1c
	mul r1, r0
	ldr r0, [sp]
	add r7, r0, r1
_021ADCAE:
	mov r1, #0
	add r2, r7, r5
_021ADCB2:
	lsl r3, r1, #1
	add r3, r1, r3
	add r3, r2, r3
	ldrb r0, [r4, r5]
	ldrb r3, [r3, #0xc]
	orr r0, r3
	strb r0, [r4, r5]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _021ADCB2
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021ADCAE
	mov r5, #0
_021ADCD6:
	add r0, sp, #0xc
	ldrb r0, [r0, r5]
	cmp r0, #1
	blo _021ADD0C
	lsl r4, r5, #2
	ldr r0, [r6, r4]
	cmp r0, #2
	bne _021ADCF6
	ldrh r1, [r7, #0xa]
	ldr r0, [sp, #4]
	bl PokeDexSave_IsMonCaught
	cmp r0, #0
	bne _021ADCF6
	mov r0, #1
	str r0, [r6, r4]
_021ADCF6:
	ldr r0, [r6, r4]
	cmp r0, #1
	bne _021ADD0C
	ldrh r1, [r7, #0xa]
	ldr r0, [sp, #4]
	bl sub_0200D7F4
	cmp r0, #0
	bne _021ADD0C
	mov r0, #0
	str r0, [r6, r4]
_021ADD0C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021ADCD6
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp]
	ldrh r1, [r0, #8]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _021ADC96
_021ADD26:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy302_21adc78

	thumb_func_start sub_021ADD2C
sub_021ADD2C: ; 0x021ADD2C
	mov r3, #0
_021ADD2E:
	add r2, r0, r3
	ldrb r2, [r2, #3]
	cmp r2, #1
	bne _021ADD42
	lsl r2, r3, #2
	ldr r2, [r1, r2]
	cmp r2, #1
	bne _021ADD42
	mov r0, #1
	bx lr
_021ADD42:
	add r3, r3, #1
	cmp r3, #3
	blt _021ADD2E
	mov r0, #0
	bx lr
	thumb_func_end sub_021ADD2C

	thumb_func_start ovy302_21add4c
ovy302_21add4c: ; 0x021ADD4C
	push {r4, r5, r6, lr}
	ldr r6, _021ADD70 ; =0x00000987
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	str r0, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020191AC
	str r0, [r5, #4]
	add r0, r4, #0
	sub r1, r6, #2
	bl sub_020191AC
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	nop
_021ADD70: .word 0x00000987
	thumb_func_end ovy302_21add4c

	thumb_func_start ovy302_21add74
ovy302_21add74: ; 0x021ADD74
	push {r4, r5}
	ldr r3, _021ADD9C ; =0x021AE41C
	mov r5, #0
	mov r1, #6
_021ADD7C:
	add r4, r5, #0
	mul r4, r1
	add r2, r3, r4
	ldrh r2, [r2, #2]
	cmp r0, r2
	bne _021ADD90
	ldr r0, _021ADDA0 ; =0x021AE420
	ldrb r0, [r0, r4]
	pop {r4, r5}
	bx lr
_021ADD90:
	add r5, r5, #1
	cmp r5, #0x39
	blt _021ADD7C
	mov r0, #0x18
	pop {r4, r5}
	bx lr
	.align 2, 0
_021ADD9C: .word 0x021AE41C
_021ADDA0: .word 0x021AE420
	thumb_func_end ovy302_21add74

	thumb_func_start ovy302_21adda4
ovy302_21adda4: ; 0x021ADDA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5, #8]
	ldr r6, [sp, #0x28]
	str r3, [sp, #8]
	mov r4, #0
	add r7, r2, #0
	str r1, [sp, #4]
	strh r4, [r6]
	cmp r0, #0
	ble _021ADDEE
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0xa
	str r0, [sp, #0xc]
_021ADDC4:
	ldrb r0, [r5, r7]
	mov r1, #0x1c
	add r2, r4, #0
	str r0, [sp]
	mul r2, r1
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r1, r2
	ldr r3, [sp, #8]
	add r2, r7, #0
	bl ovy302_21ad688
	cmp r0, #1
	bne _021ADDE6
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_021ADDE6:
	ldrh r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021ADDC4
_021ADDEE:
	ldr r0, _021ADE08 ; =0x00000363
	ldr r3, _021ADE0C ; =0x021AE5A8
	str r0, [sp]
	add r0, sp, #0x28
	ldrh r1, [r6]
	ldrh r0, [r0, #4]
	mov r2, #1
	lsl r1, r1, #1
	bl GFL_HeapAllocate
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ADE08: .word 0x00000363
_021ADE0C: .word 0x021AE5A8
	thumb_func_end ovy302_21adda4

	thumb_func_start ovy302_21ade10
ovy302_21ade10: ; 0x021ADE10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x164
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r5, #0
	mov r4, #0
	add r7, sp, #0xc
_021ADE22:
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021ADE6C ; =0x021AE41C
	ldr r2, _021ADE6C ; =0x021AE41C
	add r6, r0, r1
	ldrh r1, [r2, r1]
	ldr r0, [sp]
	bl sub_020191AC
	cmp r0, #1
	bne _021ADE5C
	ldr r2, _021ADE70 ; =0x00000352
	add r0, r7, #0
	mov r1, #0
	blx MI_CpuFill8
	ldrb r1, [r6, #4]
	ldr r0, [sp, #4]
	add r2, r7, #0
	bl sub_0204ABA4
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl sub_021ADD2C
	cmp r0, #0
	beq _021ADE5C
	add r5, r5, #1
_021ADE5C:
	add r4, r4, #1
	cmp r4, #0x39
	blt _021ADE22
	add r0, r5, #0
	add sp, #0x1fc
	add sp, #0x164
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ADE6C: .word 0x021AE41C
_021ADE70: .word 0x00000352
	thumb_func_end ovy302_21ade10

	thumb_func_start ovy302_21ade74
ovy302_21ade74: ; 0x021ADE74
	push {r3, r4}
	ldrh r4, [r0]
	mov r2, #1
	lsl r2, r2, #0xa
	add r3, r4, r2
	lsl r2, r2, #6
	cmp r3, r2
	blt _021ADE8E
	mov r2, #0x3f
	lsl r2, r2, #0xa
	sub r2, r4, r2
	strh r2, [r0]
	b _021ADE90
_021ADE8E:
	strh r3, [r0]
_021ADE90:
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r2, r0, #1
	ldr r0, _021ADEBC ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r2, [r0, r2]
	mov r0, #1
	lsl r0, r0, #0xc
	add r2, r2, r0
	lsr r0, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0xf
	asr r2, r0, #0x10
	mov r0, #0xe
	mul r0, r2
	asr r0, r0, #0xc
	add r0, r0, #1
	str r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_021ADEBC: .word FX_SinCosTable_
	thumb_func_end ovy302_21ade74
_021ADEC0:
	.byte 0x01, 0x22, 0x0A, 0x60, 0xD1, 0x03, 0x01, 0x80, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy302_21adecc
ovy302_21adecc: ; 0x021ADECC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021ADEFC ; =0x000001CE
	add r4, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021ADF00 ; =0x021AE5B8
	mov r1, #0x48
	mov r2, #1
	bl GFL_HeapAllocate
	str r5, [r0]
	add r1, r0, #0
	str r4, [r0, #4]
	mov r2, #0
	strh r2, [r0, #8]
	str r2, [r0, #0xc]
	strh r2, [r0, #0x10]
	str r2, [r0, #0x3c]
	add r1, #0x40
	strh r2, [r1]
	str r2, [r0, #0x44]
	pop {r3, r4, r5, pc}
	nop
_021ADEFC: .word 0x000001CE
_021ADF00: .word 0x021AE5B8
	thumb_func_end ovy302_21adecc
_021ADF04:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy302_21adf0c
ovy302_21adf0c: ; 0x021ADF0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	str r1, [sp, #0x18]
	ldrh r0, [r4, #8]
	cmp r0, #5
	bls _021ADF1C
	b _021AE1E2
_021ADF1C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ADF28: ; jump table
	.short _021ADF34 - _021ADF28 - 2 ; case 0
	.short _021ADF42 - _021ADF28 - 2 ; case 1
	.short _021ADF6E - _021ADF28 - 2 ; case 2
	.short _021ADFA4 - _021ADF28 - 2 ; case 3
	.short _021AE132 - _021ADF28 - 2 ; case 4
	.short _021AE1E2 - _021ADF28 - 2 ; case 5
_021ADF34:
	mov r0, #0x61
	bl GFL_ArcSysCreateFileHandle
	str r0, [r4, #0xc]
	mov r0, #1
_021ADF3E:
	strh r0, [r4, #8]
	b _021AE1F2
_021ADF42:
	add r0, r4, #0
	ldr r2, [r4, #4]
	add r0, #0x14
	str r0, [sp]
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	ldr r0, [r4, #0xc]
	ldr r3, [sp, #0x18]
	bl ovy302_21ae2e0
	strh r0, [r4, #0x12]
	ldr r0, _021AE1F8 ; =0x00000227
	ldr r3, _021AE1FC ; =0x021AE5B8
	str r0, [sp]
	ldrh r1, [r4, #0x12]
	ldr r0, [sp, #0x18]
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4, #0x18]
	mov r0, #2
	b _021ADF3E
_021ADF6E:
	add r0, r4, #0
	add r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x28
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x2c
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x30
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x34
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x38
	str r0, [sp, #0x14]
	add r2, r4, #0
	add r3, r4, #0
	ldr r0, [r4, #0xc]
	add r2, #0x1c
	add r3, #0x20
	bl ovy302_21ae34c
	mov r0, #3
	b _021ADF3E
_021ADFA4:
	ldrh r1, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	cmp r5, r1
	blo _021ADFB0
	mov r0, #4
	b _021ADF3E
_021ADFB0:
	add r0, r5, #7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	cmp r0, r1
	bls _021ADFBE
	str r1, [sp, #0x20]
_021ADFBE:
	ldr r0, [sp, #0x20]
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	cmp r5, r0
	blo _021ADFCA
	b _021AE1F2
_021ADFCA:
	ldr r0, _021AE200 ; =0x000003E7
	str r0, [sp, #0x24]
	add r0, #0x18
	str r0, [sp, #0x24]
_021ADFD2:
	ldr r1, [r4, #0x14]
	lsl r0, r5, #1
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x24]
	and r1, r0
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	mov r1, #0x3f
	lsl r1, r1, #0xa
	and r0, r1
	lsl r0, r0, #6
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0200D7F4
	cmp r0, #0
	bne _021ADFFA
	b _021AE11C
_021ADFFA:
	add r0, sp, #0x28
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	add r2, sp, #0x30
	add r3, sp, #0x2c
	bl sub_0200D3C8
	ldr r0, [sp, #0x28]
	ldrh r1, [r4, #0x12]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _021AE204 ; =0x00000289
	cmp r1, r0
	bne _021AE01E
	str r2, [sp, #0x1c]
_021AE01E:
	ldr r0, [sp, #0x1c]
	cmp r0, r2
	beq _021AE026
	b _021AE11C
_021AE026:
	ldr r1, [r4, #4]
	ldrb r0, [r1, #1]
	cmp r0, #2
	blo _021AE032
	cmp r0, #5
	bls _021AE03E
_021AE032:
	ldrb r0, [r1, #3]
	cmp r0, #0xff
	bne _021AE03E
	ldrb r0, [r1, #4]
	cmp r0, #0xff
	beq _021AE04C
_021AE03E:
	ldr r0, [r4]
	add r1, r6, #0
	bl PokeDexSave_IsMonCaught
	cmp r0, #0
	bne _021AE04C
	b _021AE11C
_021AE04C:
	ldr r0, [r4, #4]
	ldrb r1, [r0]
	cmp r1, #1
	bne _021AE062
	ldr r2, [r4, #0x20]
	lsl r1, r6, #1
	ldrh r2, [r2, r1]
	ldr r1, _021AE200 ; =0x000003E7
	cmp r2, r1
	bne _021AE062
	b _021AE11C
_021AE062:
	ldrb r1, [r0, #2]
	cmp r1, #0xff
	beq _021AE072
	ldr r0, [r4, #0x28]
	ldrb r0, [r0, r6]
	cmp r1, r0
	beq _021AE072
	b _021AE11C
_021AE072:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021AE07C
	bl sub_020202A4
_021AE07C:
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl sub_02020274
	mov r1, #6
	str r0, [r4, #0x3c]
	bl sub_020202AC
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r4, #0x3c]
	mov r1, #7
	bl sub_020202AC
	ldr r2, [r4, #4]
	lsl r0, r0, #0x18
	ldrb r3, [r2, #3]
	lsr r1, r0, #0x18
	cmp r3, #0xff
	beq _021AE0BE
	ldrb r0, [r2, #4]
	cmp r0, #0xff
	beq _021AE0BE
	cmp r7, r3
	bne _021AE0B4
	cmp r1, r0
	beq _021AE0E6
_021AE0B4:
	cmp r7, r0
	bne _021AE0BC
	cmp r1, r3
	beq _021AE0E6
_021AE0BC:
	b _021AE11C
_021AE0BE:
	cmp r3, #0xff
	beq _021AE0D2
	ldrb r0, [r2, #4]
	cmp r0, #0xff
	bne _021AE0D2
	cmp r7, r3
	beq _021AE0E6
	cmp r1, r3
	beq _021AE0E6
	b _021AE11C
_021AE0D2:
	cmp r3, #0xff
	bne _021AE0E6
	ldrb r0, [r2, #4]
	cmp r0, #0xff
	beq _021AE0E6
	cmp r7, r0
	beq _021AE0E6
	cmp r1, r0
	beq _021AE0E6
	b _021AE11C
_021AE0E6:
	ldrb r0, [r2, #5]
	cmp r0, #0xff
	beq _021AE102
	ldr r0, [r4, #0x3c]
	mov r1, #0x21
	bl sub_020202AC
	lsl r0, r0, #0x18
	ldr r2, [r4, #4]
	lsr r1, r0, #0x18
	ldrb r0, [r2, #5]
	cmp r1, r0
	beq _021AE102
	b _021AE11C
_021AE102:
	ldrb r0, [r2, #6]
	cmp r0, #0xff
	beq _021AE122
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x38]
	ldr r3, [sp, #0x1c]
	add r2, r6, #0
	bl ovy302_21ae3bc
	ldr r1, [r4, #4]
	ldrb r1, [r1, #6]
	cmp r0, r1
	beq _021AE122
_021AE11C:
	ldr r1, [r4, #0x18]
	mov r0, #1
	strb r0, [r1, r5]
_021AE122:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bhs _021AE130
	b _021ADFD2
_021AE130:
	b _021AE1F2
_021AE132:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021AE13C
	bl sub_020202A4
_021AE13C:
	ldrh r2, [r4, #0x12]
	mov r6, #0
	mov r0, #0
	cmp r2, #0
	bls _021AE15E
	ldr r1, [r4, #0x18]
_021AE148:
	ldrb r3, [r1, r0]
	cmp r3, #0
	bne _021AE154
	add r3, r6, #1
	lsl r3, r3, #0x10
	lsr r6, r3, #0x10
_021AE154:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r2
	blo _021AE148
_021AE15E:
	cmp r6, #0
	beq _021AE1AA
	ldr r0, _021AE208 ; =0x000002E6
	ldr r3, _021AE1FC ; =0x021AE5B8
	str r0, [sp]
	ldr r0, [sp, #0x18]
	lsl r1, r6, #1
	mov r2, #0
	mov r5, #0
	bl GFL_HeapAllocate
	add r7, r0, #0
	ldrh r1, [r4, #0x12]
	mov r0, #0
	cmp r1, #0
	bls _021AE1AC
	ldr r3, _021AE20C ; =0x000003FF
_021AE180:
	ldr r1, [r4, #0x18]
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _021AE19C
	ldr r2, [r4, #0x14]
	lsl r1, r0, #1
	ldrh r1, [r2, r1]
	add r2, r1, #0
	and r2, r3
	lsl r1, r5, #1
	strh r2, [r7, r1]
	add r1, r5, #1
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
_021AE19C:
	add r0, r0, #1
	lsl r0, r0, #0x10
	ldrh r1, [r4, #0x12]
	lsr r0, r0, #0x10
	cmp r0, r1
	blo _021AE180
	b _021AE1AC
_021AE1AA:
	mov r7, #0
_021AE1AC:
	ldr r0, [r4, #0x14]
	bl GFL_HeapFree
	ldr r0, [r4, #0x18]
	bl GFL_HeapFree
	ldr r0, [r4, #0x20]
	bl GFL_HeapFree
	ldr r0, [r4, #0x28]
	bl GFL_HeapFree
	ldr r0, [r4, #0x30]
	bl GFL_HeapFree
	ldr r0, [r4, #0x38]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0x40
	strh r6, [r0]
	ldr r0, [r4, #0xc]
	str r7, [r4, #0x44]
	bl GFL_ArcToolFree
	mov r0, #5
	b _021ADF3E
_021AE1E2:
	ldr r0, [r4, #0x44]
	add r4, #0x40
	str r0, [r3]
	ldrh r0, [r4]
	add sp, #0x34
	strh r0, [r2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021AE1F2:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021AE1F8: .word 0x00000227
_021AE1FC: .word 0x021AE5B8
_021AE200: .word 0x000003E7
_021AE204: .word 0x00000289
_021AE208: .word 0x000002E6
_021AE20C: .word 0x000003FF
	thumb_func_end ovy302_21adf0c

	thumb_func_start ovy302_21ae210
ovy302_21ae210: ; 0x021AE210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	str r2, [sp, #4]
	cmp r0, #0
	bne _021AE24C
	ldr r0, _021AE2CC ; =0x00000339
	ldr r5, _021AE2D0 ; =0x00000512
	str r0, [sp]
	ldr r3, _021AE2D4 ; =0x021AE5B8
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	lsr r2, r5, #1
_021AE232:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r4, #1
	add r4, r3, #0
	strh r3, [r0, r1]
	cmp r3, r2
	blo _021AE232
	ldr r1, [sp, #4]
	add sp, #0x18
	str r0, [r1]
	ldr r0, _021AE2D8 ; =0x00000289
	pop {r3, r4, r5, r6, r7, pc}
_021AE24C:
	add r0, r7, #0
	add r1, sp, #0x10
	bl PML_PersonalLoadRegionalDexTable
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0x61
	mov r1, #4
	mov r2, #0
	add r3, r7, #0
	mov r5, #0
	bl sub_0204B570
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r4, _021AE2DC ; =0x0000035E
	lsl r0, r0, #0xf
	lsr r6, r0, #0x10
	str r4, [sp]
	add r1, sp, #0x10
	ldrh r1, [r1]
	ldr r3, _021AE2D4 ; =0x021AE5B8
	add r0, r7, #0
	lsl r1, r1, #1
	mov r2, #0
	bl GFL_HeapAllocate
	add r7, r0, #0
	mov r3, #0
	cmp r6, #0
	bls _021AE2B2
	add r4, #0x89
_021AE28E:
	ldr r0, [sp, #8]
	lsl r1, r3, #1
	ldrh r2, [r0, r1]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #1
	ldrh r0, [r0, r1]
	cmp r0, r4
	beq _021AE2A8
	lsl r0, r5, #1
	strh r2, [r7, r0]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_021AE2A8:
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, r6
	blo _021AE28E
_021AE2B2:
	ldr r0, [sp, #8]
	bl GFL_HeapFree
	ldr r0, [sp, #0xc]
	bl GFL_HeapFree
	ldr r0, [sp, #4]
	str r7, [r0]
	add r0, sp, #0x10
	ldrh r0, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AE2CC: .word 0x00000339
_021AE2D0: .word 0x00000512
_021AE2D4: .word 0x021AE5B8
_021AE2D8: .word 0x00000289
_021AE2DC: .word 0x0000035E
	thumb_func_end ovy302_21ae210

	thumb_func_start ovy302_21ae2e0
ovy302_21ae2e0: ; 0x021AE2E0
	push {r3, r4, r5, lr}
	sub sp, #8
	cmp r1, #0
	bne _021AE316
	cmp r2, #0
	bne _021AE316
	ldr r0, _021AE338 ; =0x000003B1
	ldr r5, _021AE33C ; =0x00000512
	str r0, [sp]
	add r0, r3, #0
	ldr r3, _021AE340 ; =0x021AE5B8
	add r1, r5, #0
	mov r2, #0
	mov r4, #0
	bl GFL_HeapAllocate
	lsr r2, r5, #1
_021AE302:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	lsl r1, r4, #1
	add r4, r3, #0
	strh r3, [r0, r1]
	cmp r3, r2
	blo _021AE302
	ldr r2, _021AE344 ; =0x00000289
	b _021AE32C
_021AE316:
	add r1, sp, #4
	str r1, [sp]
	ldr r1, _021AE348 ; =0x021AE574
	lsl r2, r2, #2
	ldr r1, [r1, r2]
	mov r2, #0
	bl sub_0204B610
	ldr r1, [sp, #4]
	lsl r1, r1, #0xf
	lsr r2, r1, #0x10
_021AE32C:
	ldr r1, [sp, #0x18]
	str r0, [r1]
	add r0, r2, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021AE338: .word 0x000003B1
_021AE33C: .word 0x00000512
_021AE340: .word 0x021AE5B8
_021AE344: .word 0x00000289
_021AE348: .word 0x021AE574
	thumb_func_end ovy302_21ae2e0

	thumb_func_start ovy302_21ae34c
ovy302_21ae34c: ; 0x021AE34C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r7, r3, #0
	add r0, r4, #0
	mov r1, #0
	add r6, r2, #0
	bl PML_PersonalLoadRegionalDexTable
	str r0, [r7]
	ldr r0, _021AE3B8 ; =0x0000028A
	mov r1, #1
	strh r0, [r6]
	add r6, sp, #4
	add r0, r5, #0
	mov r2, #0
	add r3, r4, #0
	str r6, [sp]
	bl sub_0204B610
	ldr r1, [sp, #0x24]
	mov r2, #0
	str r0, [r1]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x20]
	add r3, r4, #0
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #2
	str r6, [sp]
	bl sub_0204B610
	ldr r1, [sp, #0x2c]
	mov r2, #0
	str r0, [r1]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r3, r4, #0
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0
	str r6, [sp]
	bl sub_0204B610
	ldr r1, [sp, #0x34]
	str r0, [r1]
	ldr r0, [sp, #4]
	lsr r1, r0, #1
	ldr r0, [sp, #0x30]
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021AE3B8: .word 0x0000028A
	thumb_func_end ovy302_21ae34c

	thumb_func_start ovy302_21ae3bc
ovy302_21ae3bc: ; 0x021AE3BC
	push {r3, r4}
	mov r4, #0
	cmp r3, #0
	beq _021AE3D6
_021AE3C4:
	lsl r2, r2, #1
	ldrh r2, [r1, r2]
	cmp r2, #0
	beq _021AE3D6
	add r4, r4, #1
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	cmp r4, r3
	bne _021AE3C4
_021AE3D6:
	ldrb r0, [r0, r2]
	pop {r3, r4}
	bx lr
	thumb_func_end ovy302_21ae3bc
_021AE3DC:
	.byte 0xE1, 0xCE, 0x1A, 0x02, 0xC9, 0xCF, 0x1A, 0x02, 0xF5, 0xCF, 0x1A, 0x02
_021AE3E8:
	.byte 0x4D, 0xD0, 0x1A, 0x02
	.byte 0x5D, 0xD0, 0x1A, 0x02
	.byte 0xA9, 0xD0, 0x1A, 0x02
	.byte 0xE9, 0xD0, 0x1A, 0x02
	.byte 0x75, 0xD1, 0x1A, 0x02
	.byte 0xD5, 0xD2, 0x1A, 0x02
	.byte 0x69, 0xD3, 0x1A, 0x02, 0x15, 0xD2, 0x1A, 0x02, 0x69, 0xD2, 0x1A, 0x02, 0xF5, 0xD3, 0x1A, 0x02
	.byte 0x85, 0xD4, 0x1A, 0x02, 0xFD, 0xD4, 0x1A, 0x02, 0x75, 0xD5, 0x1A, 0x02, 0xB8, 0x09, 0xAB, 0x01
	.byte 0x18, 0x00, 0xC0, 0x09, 0xB5, 0x01, 0x17, 0x00, 0xC1, 0x09, 0xBE, 0x01, 0x1C, 0x00, 0xC2, 0x09
	.byte 0xBC, 0x01, 0x1A, 0x00, 0xB9, 0x09, 0xC0, 0x01, 0x1D, 0x00, 0xC3, 0x09, 0xC8, 0x01, 0x20, 0x00
	.byte 0xAC, 0x09, 0x1C, 0x00, 0x22, 0x00, 0xC4, 0x09, 0xEF, 0x01, 0x1E, 0x00, 0xC5, 0x09, 0x46, 0x01
	.byte 0x00, 0x00, 0xC6, 0x09, 0x9D, 0x00, 0x29, 0x00, 0xC7, 0x09, 0xA0, 0x00, 0x15, 0x00, 0xC8, 0x09
	.byte 0x49, 0x01, 0x09, 0x00, 0xC9, 0x09, 0x7F, 0x01, 0x08, 0x00, 0xCA, 0x09, 0x81, 0x01, 0x37, 0x00
	.byte 0xCB, 0x09, 0xFD, 0x00, 0x35, 0x00, 0xCC, 0x09, 0x4B, 0x01, 0x0D, 0x00, 0xCD, 0x09, 0xF7, 0x01
	.byte 0x07, 0x00, 0xF0, 0x09, 0xFA, 0x01, 0x03, 0x00, 0xCE, 0x09, 0x4D, 0x01, 0x31, 0x00, 0xCF, 0x09
	.byte 0xC2, 0x00, 0x39, 0x00, 0xD0, 0x09, 0x51, 0x01, 0x13, 0x00, 0xD1, 0x09, 0x52, 0x01, 0x27, 0x00
	.byte 0xD2, 0x09, 0xCD, 0x01, 0x25, 0x00, 0xD3, 0x09, 0xCE, 0x01, 0x1B, 0x00, 0xB5, 0x09, 0x9C, 0x01
	.byte 0x0C, 0x00, 0xD4, 0x09, 0x72, 0x01, 0x32, 0x00, 0xD5, 0x09, 0xF0, 0x00, 0x0E, 0x00, 0xD6, 0x09
	.byte 0x76, 0x01, 0x38, 0x00, 0xD7, 0x09, 0x78, 0x01, 0x0B, 0x00, 0xD8, 0x09, 0x70, 0x01, 0x2F, 0x00
	.byte 0xD9, 0x09, 0xFF, 0x00, 0x05, 0x00, 0xDA, 0x09, 0x6D, 0x01, 0x2A, 0x00, 0xDB, 0x09, 0x5C, 0x01
	.byte 0x1F, 0x00, 0xDC, 0x09, 0x03, 0x02, 0x36, 0x00, 0xDD, 0x09, 0xCF, 0x01, 0x02, 0x00, 0xDE, 0x09
	.byte 0x7A, 0x01, 0x01, 0x00, 0xBF, 0x09, 0x07, 0x01, 0x0A, 0x00, 0xBA, 0x09, 0xD1, 0x01, 0x24, 0x00
	.byte 0xDF, 0x09, 0xDA, 0x01, 0x28, 0x00, 0xE0, 0x09, 0xE6, 0x00, 0x12, 0x00, 0xE1, 0x09, 0xDB, 0x01
	.byte 0x2D, 0x00, 0xE2, 0x09, 0x3D, 0x02, 0x14, 0x00, 0xE3, 0x09, 0x59, 0x01, 0x19, 0x00, 0xE4, 0x09
	.byte 0x5A, 0x01, 0x2E, 0x00, 0xB0, 0x09, 0x71, 0x00, 0x34, 0x00, 0xE5, 0x09, 0xCD, 0x00, 0x06, 0x00
	.byte 0xE6, 0x09, 0xC6, 0x00, 0x04, 0x00, 0xE7, 0x09, 0x9A, 0x00, 0x23, 0x00, 0xE8, 0x09, 0x41, 0x01
	.byte 0x33, 0x00, 0xE9, 0x09, 0x44, 0x01, 0x0F, 0x00, 0xAA, 0x09, 0x06, 0x00, 0x16, 0x00, 0xEA, 0x09
	.byte 0x98, 0x00, 0x26, 0x00, 0xEC, 0x09, 0x3F, 0x01, 0x30, 0x00, 0xEB, 0x09, 0x3D, 0x01, 0x2C, 0x00
	.byte 0xED, 0x09, 0xA7, 0x01, 0x2B, 0x00, 0xEE, 0x09, 0x83, 0x01, 0x11, 0x00, 0xEF, 0x09, 0xEE, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x2E, 0x63, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x63, 0x6F
	.byte 0x6D, 0x6D, 0x6F, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x73, 0x65
	.byte 0x61, 0x72, 0x63, 0x68, 0x5F, 0x65, 0x6E, 0x67, 0x69, 0x6E, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021AE3DC
