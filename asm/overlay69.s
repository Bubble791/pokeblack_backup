    .include "macros/function.inc"
	.include "overlay69.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy69_217c940
ovy69_217c940: ; 0x0217C940
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r2, #0
	mov r2, #0x4d
	add r5, r3, #0
	str r2, [sp]
	add r7, r0, #0
	add r2, #0xb3
	add r0, r1, #0
	add r1, r2, #0
	ldr r3, _0217C9BC ; =0x0217CFA0
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	bl sub_02042BC4
	cmp r0, #1
	bne _0217C96A
	mov r0, #3
	strb r0, [r4, #1]
_0217C96A:
	strb r6, [r4]
	mov r0, #0xff
	strb r0, [r4, #0x10]
	add r6, sp, #4
	strb r0, [r4, #0x11]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x28
	blx MI_CpuFill8
	add r2, r6, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x24
	bl sub_0207C33C
	bl sub_02040440
	bl sub_02042A6C
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r3, r6, #0
	bl ovy69_217cd98
	add r0, r4, #0
	bl ovy69_217cef4
	add r0, r4, #0
	bl sub_0217CF4C
	add r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217C9BC: .word 0x0217CFA0
	thumb_func_end ovy69_217c940
_0217C9C0:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy69_217c9c8
ovy69_217c9c8: ; 0x0217C9C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	cmp r0, #1
	bne _0217C9D8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0217C9D8:
	ldrb r0, [r5, #1]
	bl sub_02076FB0
	ldrb r1, [r5, #9]
	cmp r1, #2
	bne _0217C9F2
	ldrb r1, [r5, #0xa]
	add r2, r1, #1
	ldrb r1, [r5, #0xb]
	cmp r2, r1
	bls _0217C9F2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0217C9F2:
	add r1, r0, #1
	ldrb r0, [r5]
	cmp r1, r0
	bhi _0217CA18
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #0x18
	ldrb r1, [r5, #4]
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #4]
	ldrb r0, [r5, #9]
	cmp r0, #2
	bne _0217CA14
	ldrb r0, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xa]
_0217CA14:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0217CA18:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy69_217c9c8

	thumb_func_start ovy69_217ca1c
ovy69_217ca1c: ; 0x0217CA1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020120C8
	cmp r0, #0
	bne _0217CA9C
	ldr r0, [r5, #0x28]
	cmp r0, #1
	beq _0217CA9C
	ldr r0, [r5, #0x20]
	cmp r0, #1
	bne _0217CA46
	add r0, r4, #0
	bl sub_021704BC
	mov r0, #0
	str r0, [r5, #0x20]
	mov r0, #1
	str r0, [r5, #0x24]
	pop {r3, r4, r5, pc}
_0217CA46:
	ldr r0, [r5, #0x24]
	cmp r0, #1
	bne _0217CA60
	add r0, r4, #0
	bl sub_021704EC
	cmp r0, #0
	bne _0217CA9C
	mov r0, #0
	str r0, [r5, #0x24]
	mov r0, #1
	str r0, [r5, #0x28]
	pop {r3, r4, r5, pc}
_0217CA60:
	bl sub_02042BC4
	cmp r0, #1
	bne _0217CA88
	add r0, r5, #0
	add r1, r4, #0
	bl ovy69_217ccc0
	add r0, r5, #0
	bl ovy69_217cb14
	add r0, r5, #0
	bl ovy69_217caa0
	add r0, r5, #0
	bl ovy69_217cb2c
	add r0, r5, #0
	bl ovy69_217cb74
_0217CA88:
	add r0, r5, #0
	bl ovy69_217cb8c
	add r0, r5, #0
	bl ovy69_217cbbc
	add r0, r5, #0
	add r1, r4, #0
	bl ovy69_217cc28
_0217CA9C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy69_217ca1c

	thumb_func_start ovy69_217caa0
ovy69_217caa0: ; 0x0217CAA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x10]
	ldrb r6, [r4, #1]
	cmp r0, #0xff
	bne _0217CB12
	mov r5, #0
_0217CAAE:
	mov r7, #1
	ldrb r0, [r4, #1]
	lsl r7, r5
	tst r0, r7
	beq _0217CAC6
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02042A80
	cmp r0, #0
	bne _0217CAC6
	eor r6, r7
_0217CAC6:
	add r5, r5, #1
	cmp r5, #5
	blt _0217CAAE
	ldrb r0, [r4, #1]
	cmp r6, r0
	beq _0217CB12
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r5, #0
	str r0, [sp]
_0217CADA:
	mov r7, #1
	ldrb r0, [r4, #1]
	lsl r7, r5
	tst r0, r7
	beq _0217CB0C
	add r0, r6, #0
	tst r0, r7
	bne _0217CB0C
	lsl r1, r5, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl sub_0217196C
	cmp r0, #1
	bne _0217CB0C
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0217CE84
	lsl r0, r7, #0x18
	ldrb r1, [r4, #1]
	lsr r0, r0, #0x18
	eor r0, r1
	strb r0, [r4, #1]
_0217CB0C:
	add r5, r5, #1
	cmp r5, #5
	blt _0217CADA
_0217CB12:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy69_217caa0

	thumb_func_start ovy69_217cb14
ovy69_217cb14: ; 0x0217CB14
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _0217CB2A
	bl sub_02171724
	cmp r0, #1
	bne _0217CB2A
	mov r0, #0
	strb r0, [r4, #0xc]
_0217CB2A:
	pop {r4, pc}
	thumb_func_end ovy69_217cb14

	thumb_func_start ovy69_217cb2c
ovy69_217cb2c: ; 0x0217CB2C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0xff
	beq _0217CB44
	bl sub_02042A80
	cmp r0, #0
	bne _0217CB72
	mov r0, #0xff
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
_0217CB44:
	ldrb r5, [r4, #0xf]
	cmp r5, #0
	beq _0217CB72
	mov r3, #0
	mov r1, #1
_0217CB4E:
	add r2, r1, #0
	lsl r2, r3
	add r0, r5, #0
	tst r0, r2
	beq _0217CB6C
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	ldrb r1, [r4, #0xf]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	eor r0, r1
	strb r0, [r4, #0xf]
	pop {r3, r4, r5, pc}
_0217CB6C:
	add r3, r3, #1
	cmp r3, #5
	blt _0217CB4E
_0217CB72:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy69_217cb2c

	thumb_func_start ovy69_217cb74
ovy69_217cb74: ; 0x0217CB74
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	beq _0217CB8A
	bl sub_02171664
	cmp r0, #1
	bne _0217CB8A
	mov r0, #0xff
	strb r0, [r4, #0x11]
_0217CB8A:
	pop {r4, pc}
	thumb_func_end ovy69_217cb74

	thumb_func_start ovy69_217cb8c
ovy69_217cb8c: ; 0x0217CB8C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0217CBB8
	bl sub_02040440
	bl sub_02042A6C
	add r3, r0, #0
	add r2, r4, #0
	mov r1, #0x28
	ldrb r0, [r4, #0xd]
	add r2, #0x2c
	mul r1, r3
	add r1, r2, r1
	bl sub_0217181C
	cmp r0, #1
	bne _0217CBB8
	mov r0, #0
	strb r0, [r4, #0xd]
_0217CBB8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy69_217cb8c

	thumb_func_start ovy69_217cbbc
ovy69_217cbbc: ; 0x0217CBBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0217CC24
	add r7, r5, #0
	mov r4, #0
	add r7, #0x2c
_0217CBCC:
	mov r6, #1
	ldrb r0, [r5, #7]
	lsl r6, r4
	tst r0, r6
	beq _0217CC1E
	ldrb r0, [r5, #0xe]
	tst r0, r6
	beq _0217CC14
	ldrb r0, [r5, #4]
	tst r0, r6
	beq _0217CC14
	ldrb r2, [r5, #4]
	lsl r0, r6, #0x18
	lsr r1, r0, #0x18
	add r0, r2, #0
	eor r0, r1
	strb r0, [r5, #4]
	ldrb r0, [r5, #1]
	orr r0, r1
	strb r0, [r5, #1]
	add r0, r5, #0
	add r0, #0xf4
	ldr r3, [r0]
	cmp r3, #0
	beq _0217CC10
	add r2, r5, #0
	mov r1, #0x28
	add r2, #0xfc
	lsl r0, r4, #0x18
	mul r1, r4
	ldr r2, [r2]
	lsr r0, r0, #0x18
	add r1, r7, r1
	blx r3
_0217CC10:
	mov r0, #0xff
	strb r0, [r5, #0x10]
_0217CC14:
	ldrb r1, [r5, #7]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	eor r0, r1
	strb r0, [r5, #7]
_0217CC1E:
	add r4, r4, #1
	cmp r4, #5
	blt _0217CBCC
_0217CC24:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy69_217cbbc

	thumb_func_start ovy69_217cc28
ovy69_217cc28: ; 0x0217CC28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r0, [sp, #4]
	add r0, #0x2c
	str r0, [sp, #4]
	add r0, r5, #0
	add r7, r5, #0
	str r0, [sp, #8]
	add r0, #0x4c
	str r1, [sp]
	mov r4, #0
	add r7, #0xe
	str r0, [sp, #8]
_0217CC44:
	mov r6, #1
	ldrb r0, [r5, #0xe]
	lsl r6, r4
	tst r0, r6
	beq _0217CCB2
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02042A80
	cmp r0, #0
	bne _0217CCB2
	bl sub_02042BC4
	cmp r0, #1
	beq _0217CC68
	ldrb r0, [r5, #1]
	tst r0, r6
	beq _0217CC9E
_0217CC68:
	add r0, r5, #0
	add r0, #0xf8
	ldr r3, [r0]
	cmp r3, #0
	beq _0217CC88
	mov r1, #0x28
	add r2, r4, #0
	mul r2, r1
	ldr r1, [sp, #4]
	lsl r0, r4, #0x18
	add r1, r1, r2
	add r2, r5, #0
	add r2, #0xfc
	ldr r2, [r2]
	lsr r0, r0, #0x18
	blx r3
_0217CC88:
	mov r0, #0xff
	eor r0, r6
	lsl r0, r0, #0x18
	ldrb r2, [r5, #1]
	lsr r1, r0, #0x18
	add r0, r2, #0
	and r0, r1
	strb r0, [r5, #1]
	ldrb r0, [r7]
	and r0, r1
	strb r0, [r7]
_0217CC9E:
	ldr r1, [sp]
	ldr r0, _0217CCBC ; =0x00002844
	add r2, r4, #0
	add r0, r1, r0
	mov r1, #0x28
	mul r2, r1
	ldr r1, [sp, #8]
	add r1, r1, r2
	bl sub_02170D98
_0217CCB2:
	add r4, r4, #1
	cmp r4, #5
	blt _0217CC44
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0217CCBC: .word 0x00002844
	thumb_func_end ovy69_217cc28

	thumb_func_start ovy69_217ccc0
ovy69_217ccc0: ; 0x0217CCC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r0, [sp, #4]
	add r0, #0x4c
	str r0, [sp, #4]
	add r0, r5, #0
	add r7, r5, #0
	str r0, [sp, #8]
	add r0, #0xa
	str r1, [sp]
	mov r4, #0
	add r7, #0xe
	str r0, [sp, #8]
_0217CCDC:
	mov r6, #1
	ldrb r0, [r5, #4]
	lsl r6, r4
	tst r0, r6
	beq _0217CD38
	add r0, r4, #0
	bl sub_02042A80
	cmp r0, #0
	bne _0217CD38
	ldrb r1, [r5, #4]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	eor r0, r1
	strb r0, [r5, #4]
	ldrb r0, [r5, #0xe]
	tst r0, r6
	beq _0217CD22
	mov r1, #0xff
	eor r1, r6
	lsl r1, r1, #0x18
	ldrb r0, [r7]
	lsr r1, r1, #0x18
	add r2, r4, #0
	and r0, r1
	strb r0, [r7]
	ldr r1, [sp]
	ldr r0, _0217CD48 ; =0x00002844
	add r0, r1, r0
	mov r1, #0x28
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	bl sub_02170D98
_0217CD22:
	ldrb r0, [r5, #9]
	cmp r0, #2
	bne _0217CD38
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0217CD38
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #8]
	strb r1, [r0]
_0217CD38:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0217CCDC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0217CD48: .word 0x00002844
	thumb_func_end ovy69_217ccc0
_0217CD4C:
	.byte 0x01, 0x22, 0x8A, 0x40
	.byte 0x11, 0x06, 0xC3, 0x7B, 0x09, 0x0E, 0x19, 0x43, 0xC1, 0x73, 0x70, 0x47, 0x01, 0x21, 0x81, 0x74
	.byte 0x70, 0x47, 0x00, 0x00, 0x80, 0x7C, 0x70, 0x47, 0x01, 0x22, 0x8A, 0x40, 0x11, 0x06, 0x03, 0x7B
	.byte 0x09, 0x0E, 0x19, 0x43, 0x01, 0x73, 0x70, 0x47, 0x02, 0x1C, 0x08, 0x1C, 0x11, 0x1C, 0x01, 0x4B
	.byte 0x04, 0x22, 0x18, 0x47, 0x20, 0x89, 0x07, 0x02, 0x01, 0x22, 0x8A, 0x40, 0x11, 0x06, 0x43, 0x7B
	.byte 0x09, 0x0E, 0x19, 0x43, 0x41, 0x73, 0x70, 0x47

	thumb_func_start ovy69_217cd98
ovy69_217cd98: ; 0x0217CD98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0x28
	add r4, r3, #0
	mul r0, r5
	add r3, r6, r0
	str r1, [sp]
	add r7, r4, #0
	add r3, #0x2c
	mov r2, #5
_0217CDAE:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0217CDAE
	mov r1, #1
	lsl r1, r5
	lsl r1, r1, #0x18
	ldrb r0, [r6, #0xe]
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r6, #0xe]
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _0217CDF6
	add r0, r4, #0
	bl sub_02008BF4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02008BF0
	add r3, r0, #0
	lsl r3, r3, #0x18
	ldr r1, [sp]
	ldr r0, _0217CDF8 ; =0x00002830
	add r4, #0x20
	add r0, r1, r0
	add r0, #0x14
	add r1, r4, #0
	add r2, r5, #0
	lsr r3, r3, #0x18
	bl sub_02170D00
_0217CDF6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217CDF8: .word 0x00002830
	thumb_func_end ovy69_217cd98
_0217CDFC:
	.byte 0x40, 0x78, 0x00, 0x28
	.byte 0x01, 0xD0, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy69_217ce0c
ovy69_217ce0c: ; 0x0217CE0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	mov r7, #1
_0217CE14:
	add r6, r7, #0
	ldrb r0, [r5, #1]
	lsl r6, r4
	tst r0, r6
	beq _0217CE34
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02042A80
	cmp r0, #1
	bne _0217CE34
	ldrb r0, [r5, #0xe]
	tst r0, r6
	bne _0217CE34
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0217CE34:
	add r4, r4, #1
	cmp r4, #5
	blt _0217CE14
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy69_217ce0c

	thumb_func_start ovy69_217ce40
ovy69_217ce40: ; 0x0217CE40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042BC4
	cmp r0, #1
	bne _0217CE6A
	mov r2, #1
	ldrb r0, [r5, #0xe]
	lsl r2, r4
	tst r0, r2
	beq _0217CE80
	ldrb r0, [r5, #4]
	tst r0, r2
	beq _0217CE80
	ldrb r1, [r5, #7]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r5, #7]
	pop {r3, r4, r5, pc}
_0217CE6A:
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #0x18
	ldrb r2, [r5, #4]
	lsr r1, r0, #0x18
	add r0, r2, #0
	orr r0, r1
	strb r0, [r5, #4]
	ldrb r0, [r5, #7]
	orr r0, r1
	strb r0, [r5, #7]
_0217CE80:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy69_217ce40

	thumb_func_start sub_0217CE84
sub_0217CE84: ; 0x0217CE84
	bx lr
	.align 2, 0
	thumb_func_end sub_0217CE84
_0217CE88:
	.byte 0x04, 0x20, 0x70, 0x47

	thumb_func_start ovy69_217ce8c
ovy69_217ce8c: ; 0x0217CE8C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	bl sub_02042A6C
	mov r1, #1
	lsl r1, r0
	lsl r0, r1, #0x18
	ldrb r2, [r4, #1]
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ovy69_217ce8c
_0217CEA8:
	.byte 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x70, 0x47
	.byte 0x41, 0x7A, 0x00, 0x29, 0x04, 0xD0, 0x01, 0x29, 0x04, 0xD0, 0x02, 0x29, 0x04, 0xD0, 0x0B, 0xE0
	.byte 0x00, 0x20, 0x70, 0x47, 0x01, 0x20, 0x70, 0x47, 0x81, 0x7A, 0xC0, 0x7A, 0x81, 0x42, 0x01, 0xD3
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy69_217cedc
ovy69_217cedc: ; 0x0217CEDC
	push {r3, r4}
	add r4, r0, #0
	add r4, #0xf4
	str r1, [r4]
	add r1, r0, #0
	add r1, #0xf8
	add r0, #0xfc
	str r2, [r1]
	str r3, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy69_217cedc

	thumb_func_start ovy69_217cef4
ovy69_217cef4: ; 0x0217CEF4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0217CF0E
	bl sub_02040440
	mov r1, #0
	bl sub_02042A9C
	mov r0, #1
	strb r0, [r4, #9]
	pop {r4, pc}
_0217CF0E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy69_217cef4

	thumb_func_start ovy69_217cf14
ovy69_217cf14: ; 0x0217CF14
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #1
	bl sub_02042A9C
	mov r0, #0
	strb r0, [r4, #9]
	pop {r4, pc}
	thumb_func_end ovy69_217cf14

	thumb_func_start ovy69_217cf28
ovy69_217cf28: ; 0x0217CF28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042788
	cmp r0, #0
	beq _0217CF4A
	bl sub_02040440
	mov r1, #1
	bl sub_02042A9C
	mov r0, #2
	strb r0, [r5, #9]
	mov r0, #0
	strb r4, [r5, #0xb]
	strb r0, [r5, #0xa]
_0217CF4A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy69_217cf28

	thumb_func_start sub_0217CF4C
sub_0217CF4C: ; 0x0217CF4C
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_0217CF4C
_0217CF54:
	.byte 0x01, 0x21, 0x01, 0x62, 0x70, 0x47, 0x00, 0x00, 0x80, 0x6A, 0x70, 0x47
	.byte 0x01, 0x23, 0x82, 0x7B, 0x8B, 0x40, 0x1A, 0x42, 0x02, 0xD0, 0x42, 0x78, 0x1A, 0x42, 0x01, 0xD1
	.byte 0x00, 0x20, 0x70, 0x47, 0x28, 0x22, 0x2C, 0x30, 0x4A, 0x43, 0x80, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0x40, 0x78, 0x70, 0x47, 0x40, 0x78, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0xB1, 0x6F, 0x07, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x75, 0x6E, 0x69, 0x6F, 0x6E, 0x5F, 0x61, 0x70, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0217CF54
