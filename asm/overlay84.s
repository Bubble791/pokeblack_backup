    .include "macros/function.inc"
	.include "overlay84.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy84_21eae60
ovy84_21eae60: ; 0x021EAE60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x5b
	str r0, [sp]
	ldr r1, _021EAF0C ; =0x000004A8
	ldr r3, _021EAF10 ; =0x021EEC60
	mov r0, #0x70
	mov r2, #1
	mov r7, #0x70
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [r4, #8]
	bl sub_02180670
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_02016B08
	str r0, [r4, #0x24]
	bl sub_0201458C
	str r0, [r4, #0x28]
	add r0, r4, #0
	str r6, [r4, #0xc]
	add r0, #0xe4
	strh r7, [r0]
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0xe0
	strh r1, [r0]
	add r0, r4, #0
	ldr r1, _021EAF14 ; =0x00008070
	add r0, #0xe2
	strh r1, [r0]
	add r1, r4, #0
	add r1, #0xe4
	ldrh r1, [r1]
	mov r0, #0xab
	bl sub_0204AA30
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	add r0, r4, #0
	bl ovy84_21eb378
	add r0, r4, #0
	bl ovy84_21eb4b4
	add r1, r4, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy84_21eb63c
	add r0, r4, #0
	bl ovy84_21eb7cc
	add r1, r4, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy84_21eb824
	add r1, r4, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy84_21eba4c
	add r0, r4, #0
	bl ovy84_21ebb78
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAF0C: .word 0x000004A8
_021EAF10: .word 0x021EEC60
_021EAF14: .word 0x00008070
	thumb_func_end ovy84_21eae60

	thumb_func_start ovy84_21eaf18
ovy84_21eaf18: ; 0x021EAF18
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0203A850
	add r0, r4, #0
	bl ovy84_21ebc18
	add r0, r4, #0
	bl ovy84_21ebad4
	add r0, r4, #0
	bl ovy84_21eb9e0
	add r0, r4, #0
	bl ovy84_21eb80c
	add r0, r4, #0
	bl ovy84_21eb784
	add r0, r4, #0
	bl ovy84_21eb5b4
	add r0, r4, #0
	bl ovy84_21eb484
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_0204AB0C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy84_21eaf18

	thumb_func_start sub_021EAF60
sub_021EAF60: ; 0x021EAF60
	add r0, #0x80
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021EAF60

	thumb_func_start sub_021EAF68
sub_021EAF68: ; 0x021EAF68
	mov r1, #0
	add r0, #0x80
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021EAF68

	thumb_func_start ovy84_21eaf70
ovy84_21eaf70: ; 0x021EAF70
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r4, r0, #0
	cmp r1, #0
	bne _021EAF80
	add sp, #0x80
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EAF80:
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0xd
	bls _021EAF8A
	b _021EB1AA
_021EAF8A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAF96: ; jump table
	.short _021EB1AA - _021EAF96 - 2 ; case 0
	.short _021EAFB8 - _021EAF96 - 2 ; case 1
	.short _021EAFB2 - _021EAF96 - 2 ; case 2
	.short _021EAFB8 - _021EAF96 - 2 ; case 3
	.short _021EAFDC - _021EAF96 - 2 ; case 4
	.short _021EB004 - _021EAF96 - 2 ; case 5
	.short _021EB032 - _021EAF96 - 2 ; case 6
	.short _021EB04C - _021EAF96 - 2 ; case 7
	.short _021EB08A - _021EAF96 - 2 ; case 8
	.short _021EB0B4 - _021EAF96 - 2 ; case 9
	.short _021EB0E6 - _021EAF96 - 2 ; case 10
	.short _021EB104 - _021EAF96 - 2 ; case 11
	.short _021EB158 - _021EAF96 - 2 ; case 12
	.short _021EB19E - _021EAF96 - 2 ; case 13
_021EAFB2:
	ldr r0, [r4, #0x1c]
	bl sub_02153654
_021EAFB8:
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_0202D7B8
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0201740C
	ldr r0, [r4]
	ldr r1, [r4, #8]
	mov r2, #0
	bl sub_0218B12C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #3
_021EAFDA:
	b _021EB0AC
_021EAFDC:
	add r0, r4, #0
	add r0, #0x8f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	add r3, sp, #0x14
	add r2, r1, r0
	lsl r0, r1, #0x10
	orr r0, r2
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, _021EB1BC ; =0x0000000D
	ldr r2, _021EB1C0 ; =0x0216E771
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	b _021EB048
_021EB004:
	add r0, r4, #0
	add r0, #0x8f
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	add r3, sp, #0x10
	add r2, r1, r0
	lsl r0, r1, #0x10
	orr r0, r2
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, _021EB1C4 ; =0x0000000F
	ldr r2, _021EB1C8 ; =0x0216E771
	bl sub_02016EA0
	add r3, r4, #0
	add r3, #0x90
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	ldrb r3, [r3]
	b _021EAFDA
_021EB032:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, _021EB1CC ; =0x0000000E
	ldr r2, _021EB1D0 ; =0x0216E8AD
	add r3, sp, #0xc
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
_021EB048:
	mov r3, #0
	b _021EAFDA
_021EB04C:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	ldr r1, _021EB1D4 ; =0x0000009C
	ldr r2, _021EB1D8 ; =0x021F59E1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	add r3, sp, #4
	bl sub_02016EA0
	add r5, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ovy84_21eb1f0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0x97
	strb r1, [r0]
	b _021EB1B0
_021EB08A:
	ldr r0, [r4]
	ldr r1, _021EB1D4 ; =0x0000009C
	ldr r2, _021EB1DC ; =0x021F5B01
	ldr r3, [r4, #8]
_021EB092:
	bl sub_02016EA0
	add r5, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
_021EB0AC:
	bl ovy84_21eb1f0
	add r5, r0, #0
	b _021EB1B0
_021EB0B4:
	ldr r0, [r4]
	ldr r1, _021EB1D4 ; =0x0000009C
	ldr r2, _021EB1DC ; =0x021F5B01
	ldr r3, [r4, #8]
	bl sub_02016EA0
	add r5, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r6, #0
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ovy84_21eb1f0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x88
	strb r6, [r0]
	b _021EB1B0
_021EB0E6:
	ldr r0, [r4, #0x40]
	bl sub_0202D7D0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #8]
	mov r2, #0
	mov r3, #7
	bl sub_021775E8
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	b _021EAFDA
_021EB104:
	add r5, sp, #0x4c
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x34
	blx sub_020787A8
	add r3, r4, #0
	add r3, #0xa0
	mov r2, #5
_021EB116:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _021EB116
	ldr r0, [r3]
	ldr r1, _021EB1E0 ; =0x0000009D
	str r0, [r5]
	mov r0, #1
	str r0, [sp, #0x78]
	ldr r0, [r4]
	ldr r2, _021EB1E4 ; =0x021F59E1
	add r3, sp, #0x4c
	bl sub_02016EA0
	add r5, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
_021EB13C:
	bl sub_021EA9E4
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ovy84_21eb1f0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	bl sub_02014D40
	b _021EB1B0
_021EB158:
	add r5, sp, #0x18
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x34
	blx sub_020787A8
	add r3, r4, #0
	add r3, #0xa0
	mov r2, #5
_021EB16A:
	ldmia r3!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _021EB16A
	ldr r0, [r3]
	ldr r1, _021EB1E0 ; =0x0000009D
	str r0, [r5]
	mov r0, #1
	str r0, [sp, #0x44]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	ldr r2, _021EB1E8 ; =0x021F5A29
	str r0, [sp, #0x48]
	ldr r0, [r4]
	add r3, sp, #0x18
	bl sub_02016EA0
	add r5, r0, #0
	mov r0, #0x43
	add r1, r4, #0
	lsl r0, r0, #2
	add r1, #0x98
	ldr r0, [r4, r0]
	ldrb r1, [r1]
	b _021EB13C
_021EB19E:
	add r3, r4, #0
	ldr r0, [r4]
	ldr r1, _021EB1E0 ; =0x0000009D
	ldr r2, _021EB1EC ; =0x021F5AA5
	add r3, #0xa0
	b _021EB092
_021EB1AA:
	add sp, #0x80
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EB1B0:
	add r0, r4, #0
	bl sub_021EAF68
	add r0, r5, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EB1BC: .word 0x0000000D
_021EB1C0: .word 0x0216E771
_021EB1C4: .word 0x0000000F
_021EB1C8: .word 0x0216E771
_021EB1CC: .word 0x0000000E
_021EB1D0: .word 0x0216E8AD
_021EB1D4: .word 0x0000009C
_021EB1D8: .word 0x021F59E1
_021EB1DC: .word 0x021F5B01
_021EB1E0: .word 0x0000009D
_021EB1E4: .word 0x021F59E1
_021EB1E8: .word 0x021F5A29
_021EB1EC: .word 0x021F5AA5
	thumb_func_end ovy84_21eaf70

	thumb_func_start ovy84_21eb1f0
ovy84_21eb1f0: ; 0x021EB1F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	add r7, r3, #0
	ldr r0, [r5]
	ldr r2, _021EB228 ; =ovy84_21eb22c
	mov r1, #0
	mov r3, #0x1c
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	str r5, [r0, #0xc]
	ldr r1, [r5]
	str r1, [r0, #4]
	ldr r1, [r5, #8]
	add r5, #0x82
	str r1, [r0, #8]
	str r4, [r0, #0x10]
	str r6, [r0, #0x14]
	str r7, [r0, #0x18]
	mov r0, #1
	strh r0, [r5]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB228: .word ovy84_21eb22c
	thumb_func_end ovy84_21eb1f0

	thumb_func_start ovy84_21eb22c
ovy84_21eb22c: ; 0x021EB22C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r1, [r5, #0x14]
	add r6, r0, #0
	mov r0, #0
	ldr r4, [r5, #0xc]
	cmp r1, #3
	bhi _021EB276
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB248: ; jump table
	.short _021EB250 - _021EB248 - 2 ; case 0
	.short _021EB25A - _021EB248 - 2 ; case 1
	.short _021EB264 - _021EB248 - 2 ; case 2
	.short _021EB26E - _021EB248 - 2 ; case 3
_021EB250:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy84_21eb28c
	b _021EB276
_021EB25A:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy84_21eb2c0
	b _021EB276
_021EB264:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy84_21eb2dc
	b _021EB276
_021EB26E:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy84_21eb31c
_021EB276:
	cmp r0, #0
	beq _021EB288
	mov r0, #0
	add r4, #0x82
	strh r0, [r4]
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl sub_02016D50
_021EB288:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21eb22c

	thumb_func_start ovy84_21eb28c
ovy84_21eb28c: ; 0x021EB28C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021EB29C
	cmp r1, #1
	beq _021EB2AE
	b _021EB2BC
_021EB29C:
	ldr r1, [r4, #0x18]
	mov r2, #1
	bl ovy84_21eca40
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021EB2AE:
	ldr r1, [r4, #0x18]
	bl sub_021ECAC0
	cmp r0, #0
	beq _021EB2BC
	mov r0, #0
	pop {r4, pc}
_021EB2BC:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy84_21eb28c

	thumb_func_start ovy84_21eb2c0
ovy84_21eb2c0: ; 0x021EB2C0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0203A7F4
	add r4, #0xf4
	ldr r0, [r4]
	cmp r0, #0
	bne _021EB2D8
	mov r0, #1
	pop {r4, pc}
_021EB2D8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy84_21eb2c0

	thumb_func_start ovy84_21eb2dc
ovy84_21eb2dc: ; 0x021EB2DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	ldr r4, [r5, #0x18]
	cmp r0, #0
	beq _021EB2EE
	cmp r0, #1
	beq _021EB2FE
	b _021EB318
_021EB2EE:
	add r0, r4, #0
	mov r1, #1
	bl sub_0202E430
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EB318
_021EB2FE:
	add r0, r4, #0
	bl sub_0202E37C
	add r0, r4, #0
	bl sub_0202E438
	cmp r0, #0
	beq _021EB318
	add r0, r4, #0
	bl sub_0202E4AC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB318:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21eb2dc

	thumb_func_start ovy84_21eb31c
ovy84_21eb31c: ; 0x021EB31C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021EB32C
	cmp r1, #1
	beq _021EB34A
	b _021EB364
_021EB32C:
	ldr r2, [r4, #0x18]
	mov r1, #0x58
	mul r1, r2
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0x17
	bl sub_021EA87C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021EB34A:
	ldr r2, [r4, #0x18]
	mov r1, #0x58
	mul r1, r2
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	beq _021EB364
	mov r0, #0
	pop {r4, pc}
_021EB364:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy84_21eb31c

	thumb_func_start ovy84_21eb368
ovy84_21eb368: ; 0x021EB368
	push {r3, lr}
	add r1, #0xf8
	ldr r0, [r1]
	cmp r0, #0
	beq _021EB376
	bl sub_020275F8
_021EB376:
	pop {r3, pc}
	thumb_func_end ovy84_21eb368

	thumb_func_start ovy84_21eb378
ovy84_21eb378: ; 0x021EB378
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020174D4
	str r0, [r4, #0x40]
	bl sub_0202D7A8
	str r0, [r4, #0x48]
	bl sub_02013B80
	add r1, r4, #0
	add r1, #0x8c
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	bl sub_0202D7AC
	add r1, r4, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x8c
	ldrb r1, [r0]
	cmp r1, #4
	bhs _021EB3AC
	b _021EB3AE
_021EB3AC:
	mov r1, #4
_021EB3AE:
	add r0, r4, #0
	add r0, #0x8e
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0x97
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_02017934
	add r5, r0, #0
	bl sub_0200C62C
	mov r1, #0
	bl sub_0200C678
	str r0, [r4, #0x34]
	ldr r0, [r4]
	bl sub_02016B20
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl sub_02017238
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl sub_02017354
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl sub_0200C830
	str r0, [r4, #0x14]
	bl sub_0200C924
	mov r1, #0xeb
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_02008DD0
	add r5, r0, #0
	bl sub_02008BD0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x38]
	add r0, r5, #0
	bl sub_02008BF0
	add r1, r4, #0
	add r1, #0x3c
	strb r0, [r1]
	add r0, r5, #0
	bl sub_02008BF4
	add r1, r4, #0
	add r1, #0x3d
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #0x17
	add r0, #0x3e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02013BA8
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02013B8C
	str r0, [r4, #0x4c]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02013B8C
	str r0, [r4, #0x50]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02013B8C
	str r0, [r4, #0x58]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_0201361C
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02170AC4
	str r0, [r4, #0x2c]
	add r1, r4, #0
	add r0, r4, #0
	add r4, #0x65
	add r1, #0x64
	add r2, r4, #0
	bl ovy84_21ecdec
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21eb378

	thumb_func_start ovy84_21eb484
ovy84_21eb484: ; 0x021EB484
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_020139B8
	ldr r0, [r4, #0x2c]
	bl sub_02170B00
	ldr r0, [r4, #0x30]
	bl sub_0201362C
	ldr r0, [r4, #0x58]
	bl sub_0203A24C
	ldr r0, [r4, #0x50]
	bl sub_0203A24C
	ldr r0, [r4, #0x4c]
	bl sub_0203A24C
	ldr r0, [r4, #0x44]
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy84_21eb484

	thumb_func_start ovy84_21eb4b4
ovy84_21eb4b4: ; 0x021EB4B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xe4
	ldrh r0, [r0]
	mov r2, #0x10
	mov r3, #0x80
	add r1, r0, #0
	bl sub_0203A78C
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	ldr r0, _021EB5B0 ; =ovy84_21eb368
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02026DC0
	add r3, r5, #0
	add r3, #0xe4
	add r1, r5, #0
	mov r6, #7
	add r1, #0xf8
	lsl r6, r6, #6
	str r0, [r1]
	ldrh r3, [r3]
	mov r1, #1
	add r2, r6, #0
	bl sub_02026E04
	add r3, r5, #0
	add r0, r5, #0
	add r3, #0xe4
	add r0, #0xf8
	add r2, r6, #0
	ldrh r3, [r3]
	ldr r0, [r0]
	mov r1, #3
	add r2, #0x40
	mov r4, #3
	bl sub_02026E04
	add r0, r5, #0
	add r0, #0xe4
	ldrh r0, [r0]
	bl sub_02021998
	mov r1, #3
	add r1, #0xfd
	str r0, [r5, r1]
	mov r1, #1
	bl sub_02021A20
	add r4, #0xfd
	add r6, #0x34
	ldr r0, [r5, r4]
	add r1, r6, #0
	mov r2, #0
	bl sub_02021A34
	ldr r0, [r5, #8]
	bl sub_02180490
	bl sub_0218799C
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	bl sub_020232D8
	add r2, r5, #0
	add r2, #0xe4
	ldrh r2, [r2]
	mov r0, #8
	mov r1, #0x40
	mov r4, #0x40
	bl sub_020241E4
	mov r1, #0x40
	add r1, #0xd0
	str r0, [r5, r1]
	add r3, r5, #0
	add r3, #0xe4
	ldrh r3, [r3]
	mov r0, #1
	mov r1, #2
	mov r2, #0xb
	bl sub_0204875C
	add r4, #0xd4
	str r0, [r5, r4]
	add r1, r5, #0
	add r1, #0xe4
	ldrh r1, [r1]
	mov r0, #0xd9
	mov r4, #0xd9
	bl sub_02048530
	mov r1, #0xd9
	add r1, #0x3f
	str r0, [r5, r1]
	add r1, r5, #0
	add r1, #0xe4
	ldrh r1, [r1]
	mov r0, #0xd9
	bl sub_02048530
	mov r1, #0xd9
	add r1, #0x43
	str r0, [r5, r1]
	add r1, r5, #0
	add r1, #0xe4
	ldrh r1, [r1]
	mov r0, #0xd9
	bl sub_02048530
	add r4, #0x47
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EB5B0: .word ovy84_21eb368
	thumb_func_end ovy84_21eb4b4

	thumb_func_start ovy84_21eb5b4
ovy84_21eb5b4: ; 0x021EB5B4
	push {r3, r4, r5, lr}
	mov r4, #0x12
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_02048564
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_020487D4
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02024274
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl sub_02021C44
	sub r4, #0x20
	ldr r0, [r5, r4]
	bl sub_02021A18
	bl sub_020232D8
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #3
	bl sub_02026E48
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	bl sub_02026E48
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_02026DE8
	add r0, r5, #0
	mov r1, #0
	add r0, #0xf8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_0203A6A8
	add r5, #0xec
	ldr r0, [r5]
	bl sub_0203A83C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21eb5b4

	thumb_func_start ovy84_21eb63c
ovy84_21eb63c: ; 0x021EB63C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021EB76C ; =0x021EEB74
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021EB770 ; =0x021EEB94
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021EB774 ; =0x021EEBB4
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _021EB778 ; =0x021EEBD4
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r1, #0x62
	mov r2, #4
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0xf
	blx sub_02078658
	ldr r4, _021EB77C ; =0x04001000
	add r3, r5, #0
	ldr r1, [r4]
	ldr r0, _021EB780 ; =0xFFFF1FFF
	add r3, #0xe2
	and r0, r1
	str r0, [r4]
	add r4, #0x50
	mov r0, #0
	strh r0, [r4]
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1a
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xf8
	ldrh r3, [r3]
	ldr r0, [r0]
	add r1, r6, #0
	mov r2, #0x13
	bl sub_02026F5C
	mov r0, #1
	str r0, [sp]
	mov r7, #0x20
	add r3, r5, #0
	str r7, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, #0xe2
	add r0, #0xf8
	ldrh r3, [r3]
	ldr r0, [r0]
	mov r1, #0x17
	mov r2, #5
	bl sub_02026EE8
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe2
	ldrh r0, [r0]
	mov r1, #0x14
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204ADA8
	lsl r7, r7, #6
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe2
	ldrh r0, [r0]
	mov r1, #0x15
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe2
	ldrh r0, [r0]
	mov r1, #0x16
	mov r2, #6
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	mov r0, #1
	add r5, #0xe2
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x17
	mov r2, #7
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x1e
	mov r3, #0xd
	bl sub_02074A6C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EB76C: .word 0x021EEB74
_021EB770: .word 0x021EEB94
_021EB774: .word 0x021EEBB4
_021EB778: .word 0x021EEBD4
_021EB77C: .word 0x04001000
_021EB780: .word 0xFFFF1FFF
	thumb_func_end ovy84_21eb63c

	thumb_func_start ovy84_21eb784
ovy84_21eb784: ; 0x021EB784
	push {r4, lr}
	mov r0, #4
	mov r1, #0
	mov r4, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	ldr r0, _021EB7C8 ; =0x04001050
	strh r4, [r0]
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	pop {r4, pc}
	nop
_021EB7C8: .word 0x04001050
	thumb_func_end ovy84_21eb784

	thumb_func_start ovy84_21eb7cc
ovy84_21eb7cc: ; 0x021EB7CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r4, #0
	add r3, #0xe4
	ldrh r3, [r3]
	mov r5, #9
	mov r0, #9
	mov r1, #0
	mov r2, #1
	bl sub_0202E7A4
	add r5, #0xff
	str r0, [r4, r5]
	add r0, r4, #0
	add r0, #0xe4
	ldrh r0, [r0]
	add r2, r4, #0
	mov r3, #0xe
	str r0, [sp]
	add r2, #0xfc
	add r3, #0xf2
	ldr r2, [r2]
	ldr r3, [r4, r3]
	mov r0, #4
	mov r1, #0xe
	mov r5, #0xe
	bl sub_021EA8AC
	add r5, #0xfe
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21eb7cc

	thumb_func_start ovy84_21eb80c
ovy84_21eb80c: ; 0x021EB80C
	push {r3, r4, r5, lr}
	mov r5, #0x43
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_021EA928
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0202E818
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21eb80c

	thumb_func_start ovy84_21eb824
ovy84_21eb824: ; 0x021EB824
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r1, r5, #0
	add r1, #0xe2
	ldrh r1, [r1]
	mov r0, #0x1f
	bl sub_0204AA30
	str r0, [sp, #0x14]
	ldr r0, _021EB9D0 ; =0x021EEB24
	add r4, sp, #0x2c
	ldrh r1, [r0]
	mov r6, #0x4d
	lsl r6, r6, #2
	strh r1, [r4, #0x18]
	ldrh r1, [r0, #2]
	ldr r3, [sp, #0xc]
	add r2, sp, #0x44
	strh r1, [r4, #0x1a]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0x1c]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x1e]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x20]
	ldrh r0, [r0, #0xa]
	add r1, r5, r6
	strh r0, [r4, #0x22]
	add r0, r5, #0
	bl ovy84_21ebc40
	ldr r0, _021EB9D4 ; =0x021EEB3C
	ldr r3, [sp, #0xc]
	ldrh r1, [r0]
	add r2, sp, #0x38
	strh r1, [r4, #0xc]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0xe]
	ldrh r1, [r0, #4]
	strh r1, [r4, #0x10]
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #8]
	strh r1, [r4, #0x14]
	ldrh r0, [r0, #0xa]
	add r1, r6, #0
	add r1, #0x30
	strh r0, [r4, #0x16]
	add r0, r5, #0
	add r1, r5, r1
	bl ovy84_21ebc40
	ldr r0, _021EB9D8 ; =0x021EEB30
	ldr r3, [sp, #0x14]
	ldrh r1, [r0]
	add r2, sp, #0x2c
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r1, [r0, #6]
	strh r1, [r4, #6]
	ldrh r1, [r0, #8]
	strh r1, [r4, #8]
	ldrh r0, [r0, #0xa]
	add r1, r6, #0
	add r1, #0x18
	strh r0, [r4, #0xa]
	add r0, r5, #0
	add r1, r5, r1
	bl ovy84_21ebc40
	mov r7, #3
	add r3, r5, #0
	add r0, r5, #0
	str r7, [sp]
	add r6, #0x8c
	str r6, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	add r3, #0xe2
	add r0, #0xf8
	ldrh r3, [r3]
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	mov r2, #0
	bl sub_02026F5C
	add r3, r5, #0
	str r7, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, #0xe2
	add r0, #0xf8
	ldrh r3, [r3]
	ldr r0, [r0]
	mov r1, #0
	mov r2, #1
	bl sub_02026EE8
	add r2, r5, #0
	add r2, #0xe4
	ldrh r2, [r2]
	ldr r0, [sp, #0xc]
	mov r1, #4
	bl sub_0204AB1C
	ldr r7, _021EB9DC ; =0x000004A4
	add r1, r7, #0
	sub r1, #8
	add r1, r5, r1
	str r0, [r5, r7]
	bl sub_020602D8
	add r0, r7, #0
	sub r0, #8
	ldr r0, [r5, r0]
	add r2, r5, #0
	ldr r1, [r0, #0xc]
	sub r0, r7, #4
	str r1, [r5, r0]
	add r2, #0xe4
	ldrh r2, [r2]
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl sub_0204AB1C
	add r1, r7, #0
	sub r1, #0xc
	str r0, [r5, r1]
	add r1, r7, #0
	sub r1, #0x14
	add r1, r5, r1
	bl sub_020602D8
	add r0, r7, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r0, #0xc]
	add r0, r7, #0
	sub r0, #0x10
	str r1, [r5, r0]
	add r0, r7, #0
	sub r0, #0x94
	add r0, r5, r0
	str r0, [sp, #0x18]
	add r0, r7, #0
	str r0, [sp, #0x20]
	sub r0, #0x90
	str r0, [sp, #0x20]
	sub r7, #0x90
_021EB95E:
	add r2, r5, #0
	add r2, #0xe4
	lsl r0, r4, #3
	add r1, r4, #0
	ldrh r2, [r2]
	str r0, [sp, #0x10]
	add r6, r5, r0
	ldr r0, [sp, #0x14]
	add r1, #0x31
	bl sub_0204AB1C
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x18]
	str r0, [r6, r1]
	ldr r1, [sp, #0x10]
	ldr r0, [r6, r7]
	add r1, r2, r1
	bl sub_02060278
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EB95E
	mov r1, #0x3b
	lsl r1, r1, #4
	add r0, r5, r1
	str r0, [sp, #0x1c]
	add r0, r1, #4
	mov r4, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
_021EB99A:
	add r2, r5, #0
	add r2, #0xe4
	ldrh r2, [r2]
	ldr r0, [sp, #0xc]
	lsl r7, r4, #3
	add r1, r4, #7
	add r6, r5, r7
	bl sub_0204AB1C
	ldr r1, [sp, #0x28]
	str r0, [r6, r1]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [r6, r0]
	add r1, r1, r7
	bl sub_02060278
	add r4, r4, #1
	cmp r4, #0xc
	blt _021EB99A
	blx sub_0207B040
	ldr r0, [sp, #0x14]
	bl sub_0204AB0C
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EB9D0: .word 0x021EEB24
_021EB9D4: .word 0x021EEB3C
_021EB9D8: .word 0x021EEB30
_021EB9DC: .word 0x000004A4
	thumb_func_end ovy84_21eb824

	thumb_func_start ovy84_21eb9e0
ovy84_21eb9e0: ; 0x021EB9E0
	push {r4, r5, r6, lr}
	mov r6, #0xed
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021EB9EA:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0203A24C
	add r4, r4, #1
	cmp r4, #0xc
	blt _021EB9EA
	ldr r6, _021EBA44 ; =0x00000414
	mov r4, #0
_021EB9FE:
	lsl r0, r4, #3
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0203A24C
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EB9FE
	ldr r4, _021EBA48 ; =0x000004A4
	ldr r0, [r5, r4]
	bl sub_0203A24C
	sub r4, #0xc
	ldr r0, [r5, r4]
	bl sub_0203A24C
	mov r4, #0x53
	lsl r4, r4, #2
	add r0, r5, #0
	add r1, r5, r4
	bl ovy84_21ebd14
	add r1, r4, #0
	add r1, #0x18
	add r0, r5, #0
	add r1, r5, r1
	bl ovy84_21ebd14
	sub r4, #0x18
	add r0, r5, #0
	add r1, r5, r4
	bl ovy84_21ebd14
	pop {r4, r5, r6, pc}
	nop
_021EBA44: .word 0x00000414
_021EBA48: .word 0x000004A4
	thumb_func_end ovy84_21eb9e0

	thumb_func_start ovy84_21eba4c
ovy84_21eba4c: ; 0x021EBA4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0xe0
	ldrh r2, [r2]
	mov r0, #0x40
	mov r1, #0
	mov r6, #0x40
	mov r4, #0
	bl sub_0204BF1C
	mov r1, #0x40
	add r1, #0xe8
	add r2, sp, #0
	ldr r3, _021EBAD0 ; =0x021EEB48
	str r0, [r5, r1]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, r5, #0
	add r2, #0xe4
	ldrh r2, [r2]
	add r0, r7, #0
	mov r1, #1
	bl sub_0204BE9C
	add r1, r0, #0
	mov r0, #0x40
	add r0, #0xec
	str r1, [r5, r0]
	mov r0, #0x40
	add r0, #0xe8
	ldr r0, [r5, r0]
	bl sub_0204C018
	add r0, r5, #0
	add r0, #0xe4
	mov r1, #0x40
	add r1, #0xe8
	ldrh r0, [r0]
	ldr r1, [r5, r1]
	bl sub_0202AE5C
	add r6, #0xe4
	str r0, [r5, r6]
	add r0, r5, #0
	bl ovy84_21ebdd0
_021EBAB2:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy84_21ebe78
	add r4, r4, #1
	cmp r4, #5
	blt _021EBAB2
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBAD0: .word 0x021EEB48
	thumb_func_end ovy84_21eba4c

	thumb_func_start ovy84_21ebad4
ovy84_21ebad4: ; 0x021EBAD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #0
	mov r4, #0
	bl sub_02046D84
_021EBAE2:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy84_21ec128
	add r4, r4, #1
	cmp r4, #5
	blt _021EBAE2
	add r0, r5, #0
	bl ovy84_21ebe54
	mov r4, #0x49
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202AEAC
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BECC
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BF98
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ebad4

	thumb_func_start ovy84_21ebb18
ovy84_21ebb18: ; 0x021EBB18
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xfc
	ldr r1, [r1]
	add r4, sp, #0x18
	str r1, [r5, #8]
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r0, r1]
	add r0, #0xec
	str r1, [r5, #0xc]
	ldr r0, [r0]
	str r0, [r5, #0x10]
	ldrb r0, [r4, #0xc]
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r2, #0
	ldrb r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #8]
	bl sub_020480C0
	str r0, [r5]
	bl sub_020484F4
	ldr r4, [r5]
	str r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #0x18]
	add r0, r4, #0
	str r4, [r5, #0x14]
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ebb18

	thumb_func_start ovy84_21ebb78
ovy84_21ebb78: ; 0x021EBB78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #2
	str r1, [sp]
	mov r1, #0x16
	str r1, [sp, #4]
	mov r1, #0x1c
	mov r4, #0x5f
	str r1, [sp, #8]
	mov r1, #6
	add r5, r0, #0
	lsl r4, r4, #2
	str r1, [sp, #0xc]
	add r1, r5, r4
	mov r2, #6
	mov r6, #1
	mov r3, #1
	bl ovy84_21ebb18
	add r1, r4, #0
	add r1, #0x20
	str r6, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r7, #3
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #4
	mov r3, #0xd
	str r7, [sp, #0xc]
	bl ovy84_21ebb18
	add r3, r5, #0
	add r3, #0xe4
	ldrh r3, [r3]
	mov r0, #6
	mov r1, #2
	mov r2, #0x20
	bl sub_02046E28
	str r0, [sp, #0x10]
	mov r2, #0x98
	mov r0, #8
	add r1, sp, #0x10
	strh r0, [r1, #4]
	mov r3, #0x98
	mov r0, #0x98
	strh r3, [r1, #6]
	add r0, #0xa0
	ldr r0, [r5, r0]
	add r2, #0x8c
	ldr r0, [r0]
	add r3, #0x68
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	mov r0, #0
	strb r0, [r1, #0x10]
	strb r7, [r1, #0x11]
	strh r0, [r1, #0x12]
	add r0, r5, #0
	str r6, [sp, #0x24]
	add r0, #0xfc
	ldr r0, [r0]
	add r4, #0x40
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, sp, #0x10
	str r0, [sp, #4]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r4
	bl sub_021EAB50
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ebb78

	thumb_func_start ovy84_21ebc18
ovy84_21ebc18: ; 0x021EBC18
	push {r4, r5, r6, lr}
	mov r4, #0x6f
	add r6, r0, #0
	lsl r4, r4, #2
	add r0, r6, r4
	bl sub_021EAB6C
	mov r5, #0
	sub r4, #0x40
_021EBC2A:
	lsl r0, r5, #5
	add r0, r6, r0
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _021EBC38
	bl sub_02048210
_021EBC38:
	add r5, r5, #1
	cmp r5, #2
	blt _021EBC2A
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21ebc18

	thumb_func_start ovy84_21ebc40
ovy84_21ebc40: ; 0x021EBC40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	str r3, [sp, #4]
	mov r5, #0
	blx sub_020787A8
_021EBC58:
	lsl r0, r5, #2
	ldrh r1, [r6, r0]
	lsl r2, r5, #3
	str r1, [r4, r2]
	cmp r1, #0
	beq _021EBC7E
	ldr r0, _021EBD0C ; =0x000003AA
	ldr r3, _021EBD10 ; =0x021EEC60
	str r0, [sp]
	add r0, r7, #0
	add r0, #0xe0
	ldrh r0, [r0]
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	lsl r1, r5, #3
	add r1, r4, r1
	str r0, [r1, #4]
_021EBC7E:
	add r5, r5, #1
	cmp r5, #3
	blt _021EBC58
	ldr r0, [r4]
	mov r5, #0
	cmp r0, #0
	bls _021EBCB0
_021EBC8C:
	add r0, r7, #0
	add r0, #0xe0
	ldrh r0, [r0]
	ldrh r1, [r6, #2]
	mov r2, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r5
	mov r3, #0
	bl sub_0204BBA0
	lsl r1, r5, #2
	ldr r2, [r4, #4]
	add r5, r5, #1
	str r0, [r2, r1]
	ldr r0, [r4]
	cmp r5, r0
	blo _021EBC8C
_021EBCB0:
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	bls _021EBCDC
_021EBCB8:
	add r0, r7, #0
	add r0, #0xe0
	ldrh r0, [r0]
	ldrh r1, [r6, #6]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r1, r5
	mov r3, #1
	bl sub_0204B81C
	lsl r1, r5, #2
	ldr r2, [r4, #0xc]
	add r5, r5, #1
	str r0, [r2, r1]
	ldr r0, [r4, #8]
	cmp r5, r0
	blo _021EBCB8
_021EBCDC:
	ldr r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	bls _021EBD08
_021EBCE4:
	ldrh r2, [r6, #0xa]
	lsl r3, r5, #1
	ldr r0, [sp, #4]
	add r1, r2, r3
	add r2, r2, #1
	add r2, r2, r3
	add r3, r7, #0
	add r3, #0xe0
	ldrh r3, [r3]
	bl sub_0204BDE0
	lsl r1, r5, #2
	ldr r2, [r4, #0x14]
	add r5, r5, #1
	str r0, [r2, r1]
	ldr r0, [r4, #0x10]
	cmp r5, r0
	blo _021EBCE4
_021EBD08:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EBD0C: .word 0x000003AA
_021EBD10: .word 0x021EEC60
	thumb_func_end ovy84_21ebc40

	thumb_func_start ovy84_21ebd14
ovy84_21ebd14: ; 0x021EBD14
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	bls _021EBD32
_021EBD20:
	ldr r1, [r4, #0x14]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl sub_0204BE64
	ldr r0, [r4, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blo _021EBD20
_021EBD32:
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	bls _021EBD4C
_021EBD3A:
	ldr r1, [r4, #0xc]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl sub_0204B98C
	ldr r0, [r4, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _021EBD3A
_021EBD4C:
	ldr r0, [r4]
	mov r5, #0
	cmp r0, #0
	bls _021EBD66
_021EBD54:
	ldr r1, [r4, #4]
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	bl sub_0204BCD0
	ldr r0, [r4]
	add r5, r5, #1
	cmp r5, r0
	blo _021EBD54
_021EBD66:
	mov r5, #0
_021EBD68:
	lsl r0, r5, #3
	add r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EBD76
	bl sub_0203A24C
_021EBD76:
	add r5, r5, #1
	cmp r5, #3
	blt _021EBD68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ebd14

	thumb_func_start ovy84_21ebd80
ovy84_21ebd80: ; 0x021EBD80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, sp, #0x28
	mov r7, #0
	ldrsh r4, [r6, r7]
	add r5, sp, #0xc
	strh r4, [r5]
	mov r4, #4
	ldrsh r4, [r6, r4]
	strh r4, [r5, #2]
	ldrb r4, [r6, #8]
	strh r4, [r5, #4]
	ldrb r4, [r6, #0xc]
	strb r4, [r5, #7]
	ldrb r4, [r6, #0x10]
	strb r4, [r5, #6]
	add r4, sp, #0xc
	str r4, [sp]
	add r4, r0, #0
	str r7, [sp, #4]
	add r4, #0xe0
	ldrh r4, [r4]
	str r4, [sp, #8]
	mov r4, #0x4a
	lsl r4, r4, #2
	ldr r0, [r0, r4]
	bl sub_0204C040
	add r4, r0, #0
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C5C8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ebd80

	thumb_func_start ovy84_21ebdd0
ovy84_21ebdd0: ; 0x021EBDD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	mov r7, #5
	str r0, [sp, #0x14]
	sub r0, #8
	lsl r7, r7, #6
	mov r4, #0
	str r0, [sp, #0x14]
	add r7, #8
_021EBDE8:
	lsl r0, r4, #1
	lsl r2, r4, #2
	add r1, r4, r0
	ldr r0, _021EBE50 ; =0x021EEB58
	add r6, r5, r2
	ldr r2, _021EBE50 ; =0x021EEB58
	add r0, r0, r1
	ldrb r1, [r2, r1]
	ldr r2, [sp, #0x14]
	str r1, [sp]
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #2]
	str r1, [sp, #4]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #0x18
	str r1, [sp, #8]
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r1, #5
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r7]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy84_21ebd80
	mov r1, #0xe2
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r1, #1
	bl sub_0204C124
	mov r1, #1
	cmp r4, #4
	blt _021EBE3C
	mov r1, #0
_021EBE3C:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #9
	blt _021EBDE8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EBE50: .word 0x021EEB58
	thumb_func_end ovy84_21ebdd0

	thumb_func_start ovy84_21ebe54
ovy84_21ebe54: ; 0x021EBE54
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xe2
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021EBE5E:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, r7]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #9
	blt _021EBE5E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ebe54

	thumb_func_start ovy84_21ebe78
ovy84_21ebe78: ; 0x021EBE78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	str r1, [sp, #0x14]
	str r0, [sp, #0x24]
	add r7, r5, r0
	ldr r0, [sp, #0x14]
	mov r1, #0x58
	mul r1, r0
	add r4, r7, r1
	str r1, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	mov r6, #0
	blx sub_020787A8
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r2, #0xff
	strb r1, [r7, r0]
	mov r0, #0xff
	strb r0, [r4, #1]
	str r0, [sp, #0x1c]
	strb r6, [r4, #2]
	add r0, r0, #1
	ldr r0, [r5, r0]
	mov r1, #8
	str r0, [r4, #0x4c]
	strh r1, [r4, #0xe]
	ldr r0, [sp, #0x14]
	sub r1, #0x30
	neg r0, r0
	mul r1, r0
	strh r1, [r4, #0x10]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	mov r1, #0xff
	mov r3, #0xff
	str r0, [sp]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	add r1, #0x41
	add r2, #0x39
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r3, #0x49
	add r0, #0x1f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy84_21ebd80
	str r0, [r4, #0x14]
	ldr r1, [sp, #0x14]
	mov r2, #0
	bl sub_0204C378
	ldr r0, [sp, #0x14]
	mov r1, #0xff
	lsl r7, r0, #2
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	mov r2, #0xff
	mov r3, #0xff
	add r0, #0x18
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	add r1, #0x59
	add r2, #0x39
	add r0, #0x18
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r3, #0x61
	add r0, #0x15
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1, r7]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy84_21ebd80
	str r0, [r4, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #1
	add r1, #9
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C378
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	mov r1, #0xff
	mov r2, #0xff
	add r0, #0x34
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	mov r3, #0xff
	add r1, #0x71
	add r0, #0x18
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r2, #0x39
	add r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r3, #0x79
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1, r7]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy84_21ebd80
	str r0, [r4, #0x1c]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	ldr r3, [sp, #0x1c]
	mov r1, #0xff
	add r0, #0xbc
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	mov r2, #0xff
	add r3, #0x49
	add r0, #0xc
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x16
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r1, #0x41
	add r0, #0xb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r2, #0x39
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	str r3, [sp, #0x1c]
	ldr r3, [r5, r3]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy84_21ebd80
	str r0, [r4, #0x20]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [sp, #0x14]
	add r0, r0, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x2c]
	sub r0, #0x90
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x28]
	sub r0, #0x98
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r0, #0x88
	str r0, [sp, #0x24]
_021EC018:
	lsl r0, r6, #2
	add r7, r4, r0
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	lsl r0, r6, #3
	ldr r2, [sp, #0x28]
	add r1, #0xc8
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	add r0, #0x1c
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl ovy84_21ebd80
	str r0, [r7, #0x24]
	ldr r1, [sp, #0x14]
	mov r2, #0
	bl sub_0204C378
	ldr r0, [r7, #0x24]
	mov r1, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #3
	blt _021EC018
	add r3, r5, #0
	add r3, #0xe4
	ldrh r3, [r3]
	mov r0, #0xc
	mov r1, #2
	mov r2, #0x20
	bl sub_02046E28
	str r0, [sp, #0x30]
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	mov r2, #0x4e
	add r0, sp, #0x30
	add r1, #0x48
	strh r1, [r0, #4]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	lsl r2, r2, #2
	mov r3, #1
	add r1, #0x10
	strh r1, [r0, #6]
	ldr r1, [r5, r2]
	sub r2, #0x14
	ldr r1, [r1]
	str r1, [sp, #0x38]
	mov r1, #3
	str r1, [sp, #0x3c]
	strb r3, [r0, #0x10]
	strb r1, [r0, #0x11]
	mov r1, #0
	strh r1, [r0, #0x12]
	add r0, r5, #0
	str r3, [sp, #0x44]
	add r0, #0xfc
	ldr r0, [r0]
	add r3, #0xff
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, sp, #0x30
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, #0x30
	bl sub_021EAB50
	add r1, r5, #0
	add r1, #0xe4
	ldrh r1, [r1]
	mov r0, #0xb
	bl sub_02048530
	str r0, [r4, #0x44]
	add r5, #0xe4
	ldrh r1, [r5]
	mov r0, #8
	bl sub_02048530
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r4, #0x30]
	bl sub_0202B0F4
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0202B098
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ebe78

	thumb_func_start ovy84_21ec128
ovy84_21ec128: ; 0x021EC128
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x1d
	lsl r2, r2, #4
	add r2, r0, r2
	mov r0, #0x58
	mul r0, r1
	add r5, r2, r0
	ldr r0, [r5, #0x48]
	bl sub_02048564
	ldr r0, [r5, #0x44]
	bl sub_02048564
	add r0, r5, #0
	add r0, #0x30
	bl sub_021EAB6C
	mov r4, #0
	add r7, r4, #0
_021EC14E:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x24]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r6, #0x24]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #3
	blt _021EC14E
	ldr r0, [r5, #0x20]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, #0x20]
	bl sub_0204C108
	ldr r0, [r5, #0x1c]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, #0x1c]
	bl sub_0204C108
	ldr r0, [r5, #0x18]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, #0x18]
	bl sub_0204C108
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	bl sub_0204C108
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x58
	blx sub_020787A8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec128

	thumb_func_start ovy84_21ec1ac
ovy84_21ec1ac: ; 0x021EC1AC
	push {r4, lr}
	bl ovy84_21eae60
	add r4, r0, #0
	add r1, r4, #0
	mov r2, #1
	add r1, #0x89
	strb r2, [r1]
	bl ovy84_21ec4a8
	add r0, r4, #0
	mov r1, #0
	add r0, #0x89
	strb r1, [r0]
	str r1, [r4, #0x6c]
	add r0, r4, #0
	mov r1, #1
	bl ovy84_21ec424
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec1ac
_021EC1D8:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x19, 0xAF, 0x1E, 0x02

	thumb_func_start ovy84_21ec1e0
ovy84_21ec1e0: ; 0x021EC1E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	add r5, r1, #0
	cmp r0, r5
	beq _021EC214
	add r0, r4, #0
	add r0, #0x82
	ldrh r0, [r0]
	cmp r0, #0
	beq _021EC1FE
	cmp r5, #0
	bne _021EC1FE
	mov r0, #1
	b _021EC200
_021EC1FE:
	mov r0, #0
_021EC200:
	cmp r0, #0
	bne _021EC214
	mov r1, #1
	str r5, [r4, #0x6c]
	cmp r5, #0
	beq _021EC20E
	mov r1, #0
_021EC20E:
	add r0, r4, #0
	bl ovy84_21ec424
_021EC214:
	add r0, r4, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _021EC22A
	cmp r5, #0
	bne _021EC290
	add r0, r4, #0
	bl sub_021EAF68
	pop {r3, r4, r5, pc}
_021EC22A:
	cmp r5, #0
	beq _021EC290
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_0203A7F4
	ldr r0, [r4, #0x74]
	cmp r0, #7
	bhi _021EC28A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC24A: ; jump table
	.short _021EC25A - _021EC24A - 2 ; case 0
	.short _021EC262 - _021EC24A - 2 ; case 1
	.short _021EC26A - _021EC24A - 2 ; case 2
	.short _021EC272 - _021EC24A - 2 ; case 3
	.short _021EC27A - _021EC24A - 2 ; case 4
	.short _021EC282 - _021EC24A - 2 ; case 5
	.short _021EC28A - _021EC24A - 2 ; case 6
	.short _021EC28A - _021EC24A - 2 ; case 7
_021EC25A:
	add r0, r4, #0
	bl ovy84_21ec2ac
	b _021EC288
_021EC262:
	add r0, r4, #0
	bl ovy84_21ec334
	b _021EC288
_021EC26A:
	add r0, r4, #0
	bl ovy84_21ec34c
	b _021EC288
_021EC272:
	add r0, r4, #0
	bl ovy84_21ec370
	b _021EC288
_021EC27A:
	add r0, r4, #0
	bl sub_021EC414
	b _021EC288
_021EC282:
	add r0, r4, #0
	bl sub_021EC41C
_021EC288:
	str r0, [r4, #0x74]
_021EC28A:
	ldr r0, [r4, #0x44]
	bl sub_02013914
_021EC290:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec1e0
_021EC294:
	.byte 0x01, 0x21, 0x09, 0x02, 0x40, 0x58, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x3D, 0x1A, 0x02, 0x02, 0x00, 0x4B, 0x18, 0x47, 0x71, 0xAF, 0x1E, 0x02

	thumb_func_start ovy84_21ec2ac
ovy84_21ec2ac: ; 0x021EC2AC
	push {r4, lr}
	add r4, r0, #0
	bl ovy84_21ec7f0
	cmp r0, #0
	beq _021EC2C2
	mov r0, #0x5a
	add r4, #0x84
	str r0, [r4]
	mov r0, #2
	pop {r4, pc}
_021EC2C2:
	add r0, r4, #0
	bl ovy84_21ec7a0
	cmp r0, #0
	beq _021EC2D0
	mov r0, #0
	pop {r4, pc}
_021EC2D0:
	add r0, r4, #0
	bl ovy84_21ec8cc
	cmp r0, #0
	beq _021EC2E4
	mov r0, #0x5a
	add r4, #0x84
	str r0, [r4]
	mov r0, #2
	pop {r4, pc}
_021EC2E4:
	add r0, r4, #0
	bl ovy84_21ec580
	cmp r0, #0
	bne _021EC332
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021EC308
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	add r4, #0x84
	sub r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021EC308:
	add r0, r4, #0
	bl ovy84_21ec83c
	cmp r0, #1
	bne _021EC31C
	mov r0, #0x5a
	add r4, #0x84
	str r0, [r4]
	mov r0, #2
	pop {r4, pc}
_021EC31C:
	add r0, r4, #0
	bl ovy84_21ec948
	cmp r0, #0
	bne _021EC32A
	mov r0, #0
	pop {r4, pc}
_021EC32A:
	mov r0, #0x5a
	add r4, #0x84
	str r0, [r4]
	mov r0, #1
_021EC332:
	pop {r4, pc}
	thumb_func_end ovy84_21ec2ac

	thumb_func_start ovy84_21ec334
ovy84_21ec334: ; 0x021EC334
	push {r4, lr}
	add r4, r0, #0
	bl ovy84_21ecad4
	cmp r0, #0
	bne _021EC344
	mov r0, #1
	pop {r4, pc}
_021EC344:
	mov r0, #0
	str r0, [r4, #0x78]
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ovy84_21ec334

	thumb_func_start ovy84_21ec34c
ovy84_21ec34c: ; 0x021EC34C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xf4
	ldr r1, [r1]
	cmp r1, #0
	beq _021EC35E
	mov r0, #2
	pop {r4, pc}
_021EC35E:
	mov r1, #4
	mov r2, #0
	bl ovy84_21eca40
	add r0, r4, #0
	bl sub_021ECDE4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy84_21ec34c

	thumb_func_start ovy84_21ec370
ovy84_21ec370: ; 0x021EC370
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xcd
	ldrb r1, [r1]
	cmp r1, #0
	bne _021EC3AA
	bl ovy84_21ec6ec
	add r1, r4, #0
	add r1, #0xd0
	ldr r1, [r1]
	cmp r0, r1
	bne _021EC394
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EC39C
_021EC394:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xcd
	strb r1, [r0]
_021EC39C:
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xd4
	str r1, [r0]
_021EC3AA:
	add r0, r4, #0
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EC400
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	ble _021EC3C2
	mov r0, #3
	pop {r4, pc}
_021EC3C2:
	add r0, r4, #0
	mov r2, #0
	add r0, #0xcd
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xd4
	str r2, [r0]
	add r0, r4, #0
	add r0, #0xcc
	strb r2, [r0]
	add r0, r4, #0
	add r0, #0xce
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EC3E8
	add r0, r4, #0
	mov r1, #4
	bl ovy84_21eca40
_021EC3E8:
	add r0, r4, #0
	bl sub_021ECDE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_021EA88C
	add r4, #0xce
	ldrb r0, [r4]
	pop {r4, pc}
_021EC400:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bne _021EC410
	add r0, r4, #0
	bl ovy84_21eca28
_021EC410:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy84_21ec370

	thumb_func_start sub_021EC414
sub_021EC414: ; 0x021EC414
	ldr r3, _021EC418 ; =ovy84_21ec714
	bx r3
	.align 2, 0
_021EC418: .word ovy84_21ec714
	thumb_func_end sub_021EC414

	thumb_func_start sub_021EC41C
sub_021EC41C: ; 0x021EC41C
	ldr r3, _021EC420 ; =ovy84_21ecc04
	bx r3
	.align 2, 0
_021EC420: .word ovy84_21ecc04
	thumb_func_end sub_021EC41C

	thumb_func_start ovy84_21ec424
ovy84_21ec424: ; 0x021EC424
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0
	beq _021EC46A
	mov r4, #6
	str r4, [sp]
	mov r6, #0
	str r6, [sp, #4]
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	add r0, r5, #0
	str r6, [sp, #4]
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #5
	mov r2, #0x1e
	mov r3, #0xa
	bl sub_021C80E0
	add sp, #8
	pop {r4, r5, r6, pc}
_021EC46A:
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0xf8
	ldr r0, [r0]
	mov r4, #3
	mov r1, #3
	mov r2, #0
	mov r3, #0xe0
	bl sub_02027880
	str r4, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #4
	mov r2, #0x1e
	mov r3, #0xd
	bl sub_021C80E0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec424

	thumb_func_start ovy84_21ec4a8
ovy84_21ec4a8: ; 0x021EC4A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0202778C
	add r0, r5, #0
	bl ovy84_21ed1bc
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r4, #0
	bl ovy84_21ed208
	add r0, r5, #0
	add r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	ble _021EC536
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x54
	str r0, [sp, #8]
_021EC4DC:
	add r0, r5, #0
	add r0, #0x8d
	ldrb r6, [r0]
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	ldr r2, [sp, #8]
	add r3, r6, r4
	bl sub_02013B44
	ldr r0, [r5, #0x48]
	add r1, r6, r4
	bl sub_02013A78
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0xff
	bl ovy84_21ed490
	add r2, r4, #1
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r6, r0, #0
	bl ovy84_21ed448
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x4c]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #2
	bl ovy84_21ed748
	add r0, r6, #0
	mov r1, #1
	bl ovy84_21ed380
	add r0, r5, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EC4DC
_021EC536:
	add r0, r5, #0
	bl ovy84_21ed2b0
	add r0, r5, #0
	bl ovy84_21ed358
	add r0, r5, #0
	bl ovy84_21ed32c
	add r0, r5, #0
	add r0, #0x8c
	ldrb r0, [r0]
	mov r1, #1
	cmp r0, #5
	bhs _021EC556
	mov r1, #0
_021EC556:
	mov r4, #0x3a
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204C124
	ldr r0, [r5, #0x34]
	cmp r0, #0x30
	bne _021EC570
	sub r4, #0x18
	ldr r0, [r5, r4]
	mov r1, #3
	bl sub_021EA87C
_021EC570:
	add r5, #0xe2
	ldrh r1, [r5]
	mov r0, #0
	bl sub_02042BA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec4a8

	thumb_func_start ovy84_21ec580
ovy84_21ec580: ; 0x021EC580
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #0
	add r4, r0, #0
	add r0, r7, #0
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	bne _021EC59A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC59A:
	add r0, r4, #0
	add r1, r7, #0
	bl ovy84_21ed0e8
	mov r6, #0
	mvn r6, r6
	cmp r0, r6
	beq _021EC5E2
	cmp r0, #3
	bhi _021EC5DC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC5BA: ; jump table
	.short _021EC5C2 - _021EC5BA - 2 ; case 0
	.short _021EC5C8 - _021EC5BA - 2 ; case 1
	.short _021EC5CE - _021EC5BA - 2 ; case 2
	.short _021EC5D4 - _021EC5BA - 2 ; case 3
_021EC5C2:
	add r0, r4, #0
	mov r1, #6
	b _021EC5D8
_021EC5C8:
	add r0, r4, #0
	mov r1, #0xa
	b _021EC5D8
_021EC5CE:
	add sp, #8
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021EC5D4:
	add r0, r4, #0
	mov r1, #1
_021EC5D8:
	bl sub_021EAF60
_021EC5DC:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC5E2:
	add r0, r4, #0
	add r1, r7, #0
	bl ovy84_21ecfe8
	add r5, r0, #0
	cmp r5, r6
	beq _021EC660
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	ldr r0, [r4, #0x48]
	add r1, r1, r5
	bl sub_02013A78
	add r3, r4, #0
	add r3, #0x8d
	ldrb r3, [r3]
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r2, r4, #0
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x4c]
	add r2, #0x54
	add r3, r3, r5
	bl sub_02013B44
	ldr r0, [r4, #0x4c]
	bl sub_02013C88
	cmp r0, #0
	beq _021EC626
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC626:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy84_21ed490
	add r6, r0, #0
	bl sub_021ED6B4
	cmp r0, #0
	beq _021EC63E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC63E:
	add r0, r4, #0
	add r0, #0x8f
	strb r5, [r0]
	ldrb r1, [r6]
	add r0, r4, #0
	add r0, #0x90
	strb r1, [r0]
	ldr r0, _021EC6E8 ; =0x0000054C
	bl sub_021EA860
	add r0, r4, #0
	mov r1, #5
	bl sub_021EAF60
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC660:
	add r0, r4, #0
	add r1, r7, #0
	bl ovy84_21ecf70
	add r5, r0, #0
	cmp r5, r6
	beq _021EC6B0
	add r3, r4, #0
	add r3, #0x8d
	ldrb r3, [r3]
	add r2, r4, #0
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x4c]
	add r2, #0x54
	add r3, r3, r5
	bl sub_02013B44
	ldr r0, [r4, #0x4c]
	bl sub_02013C88
	cmp r0, #0
	beq _021EC692
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC692:
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0x8f
	strb r1, [r0]
	add r0, r4, #0
	bl ovy84_21ee798
	add r0, r4, #0
	mov r1, #4
	bl sub_021EAF60
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC6B0:
	add r0, r4, #0
	add r1, r7, #0
	bl ovy84_21ed038
	add r1, r0, #0
	cmp r1, r6
	beq _021EC6CC
	add r0, r4, #0
	mov r2, #0
	bl ovy84_21ed9ac
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021EC6CC:
	add r0, r4, #0
	add r1, r7, #0
	bl ovy84_21ed080
	cmp r0, r6
	beq _021EC6E2
	mov r0, #0
	str r0, [r4, #0x7c]
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021EC6E2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EC6E8: .word 0x0000054C
	thumb_func_end ovy84_21ec580

	thumb_func_start ovy84_21ec6ec
ovy84_21ec6ec: ; 0x021EC6EC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #4
	bl sub_0203DA84
	cmp r0, #0
	beq _021EC70C
	add r0, r5, #0
	add r1, r4, #0
	bl ovy84_21ed038
	add sp, #8
	pop {r3, r4, r5, pc}
_021EC70C:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21ec6ec

	thumb_func_start ovy84_21ec714
ovy84_21ec714: ; 0x021EC714
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EC74C
	add r0, sp, #0
	add r1, sp, #4
	bl sub_0203DA84
	cmp r0, #0
	bne _021EC73A
	mov r0, #0
	add r4, #0x91
	strb r0, [r4]
	add sp, #8
	mov r0, #4
	pop {r4, pc}
_021EC73A:
	ldr r0, [sp]
	cmp r0, #0xe8
	blt _021EC74C
	cmp r0, #0xf8
	bgt _021EC74C
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy84_21eda18
_021EC74C:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _021EC75C
	add sp, #8
	mov r0, #4
	pop {r4, pc}
_021EC75C:
	add r0, r4, #0
	add r0, #0x94
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x8d
	ldrb r0, [r0]
	cmp r1, r0
	bne _021EC792
	add r0, r4, #0
	add r0, #0x91
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EC798
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _021EC782
	add r0, r4, #0
	mov r1, #4
	b _021EC786
_021EC782:
	add r0, r4, #0
	mov r1, #2
_021EC786:
	mov r2, #0
	bl ovy84_21eca40
	add sp, #8
	ldr r0, [r4, #0x7c]
	pop {r4, pc}
_021EC792:
	add r0, r4, #0
	bl ovy84_21ede6c
_021EC798:
	mov r0, #4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec714

	thumb_func_start ovy84_21ec7a0
ovy84_21ec7a0: ; 0x021EC7A0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02153650
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_02016BEC
	cmp r0, #0
	beq _021EC7C2
	add r0, r4, #0
	mov r1, #1
	bl sub_021EAF60
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EC7C2:
	cmp r5, #2
	bne _021EC7D2
	add r0, r4, #0
	mov r1, #2
	bl sub_021EAF60
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EC7D2:
	ldr r0, [r4, #0x20]
	bl sub_02012BE4
	mov r1, #8
	tst r0, r1
	beq _021EC7EA
	add r0, r4, #0
	mov r1, #3
	bl sub_021EAF60
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EC7EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ec7a0

	thumb_func_start ovy84_21ec7f0
ovy84_21ec7f0: ; 0x021EC7F0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0202D7D0
	ldrh r1, [r0]
	cmp r1, #0
	bne _021EC808
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021EC808:
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r4, #0x40]
	bl sub_0202D7C4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	add r3, r4, #0
	str r0, [sp, #4]
	mov r0, #0x11
	add r3, #0x3c
	lsl r0, r0, #4
	ldrb r3, [r3]
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0202437C
	add r0, r4, #0
	mov r1, #7
	bl ovy84_21ee0bc
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy84_21ec7f0

	thumb_func_start ovy84_21ec83c
ovy84_21ec83c: ; 0x021EC83C
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r6, #0x46
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, #0x40]
	ldr r1, [r5, r6]
	bl ovy84_21eeae4
	add r4, r0, #0
	cmp r4, #0x30
	beq _021EC896
	ldr r1, [r5, #0x30]
	bl sub_02013560
	cmp r4, r0
	bne _021EC86A
	ldr r0, [r5, #0x40]
	bl sub_021EEB0C
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EC86A:
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r6]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	add r5, #0xf4
	add r1, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl ovy84_21ee224
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EC896:
	add r0, r5, #0
	bl ovy84_21ecf04
	add r4, r0, #0
	cmp r4, #0x30
	bne _021EC8A8
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EC8A8:
	ldr r1, [r5, #0x30]
	bl sub_02013560
	cmp r4, r0
	bne _021EC8BE
	ldr r0, [r5, #0x40]
	bl ovy84_21eea9c
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EC8BE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy84_21ee214
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21ec83c

	thumb_func_start ovy84_21ec8cc
ovy84_21ec8cc: ; 0x021EC8CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02014580
	cmp r0, #0
	beq _021EC8E2
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021EC8E2:
	mov r4, #0x46
	lsl r4, r4, #2
	ldr r0, [r5, #0x24]
	ldr r2, [r5, r4]
	add r1, sp, #8
	bl ovy84_21ee9a4
	cmp r0, #0
	bne _021EC8FA
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021EC8FA:
	mov r6, #1
	add r0, r4, #0
	str r6, [sp]
	mov r7, #2
	str r7, [sp, #4]
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r4]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	add r3, r5, #0
	add r3, #0xe2
	ldrh r3, [r3]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, r4]
	add r2, sp, #8
	bl sub_02170D04
	str r6, [sp]
	add r0, r4, #0
	str r7, [sp, #4]
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r4]
	mov r1, #1
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	add r5, #0xf4
	add r1, sp, #8
	add r2, r5, #0
	bl ovy84_21ee410
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ec8cc

	thumb_func_start ovy84_21ec948
ovy84_21ec948: ; 0x021EC948
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x58]
	add r2, #0x56
	bl sub_02013954
	cmp r0, #0
	bne _021EC966
	add r0, r4, #0
	bl ovy84_21ed8d0
	mov r0, #0
	pop {r4, pc}
_021EC966:
	ldr r0, [r4, #0x58]
	bl sub_02013BD4
	cmp r0, #0
	beq _021EC974
	mov r0, #0
	pop {r4, pc}
_021EC974:
	add r2, r4, #0
	add r2, #0x56
	ldrh r2, [r2]
	add r3, r4, #0
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x58]
	add r3, #0x68
	bl sub_02013A98
	add r1, r4, #0
	add r1, #0x60
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x60
	ldrb r1, [r1]
	ldr r0, [r4, #0x48]
	bl sub_02013A78
	add r1, r4, #0
	add r1, #0x61
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _021EC9B4
	add r1, r4, #0
	add r1, #0x61
	ldrb r1, [r1]
	add r0, r4, #0
	bl ovy84_21ed490
	str r0, [r4, #0x5c]
	b _021EC9C4
_021EC9B4:
	mov r0, #0
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x14]
	bl sub_0200C928
	mov r1, #0xeb
	lsl r1, r1, #2
	str r0, [r4, r1]
_021EC9C4:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021EC9D4
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _021EC9D4
	mov r0, #0
	b _021EC9D6
_021EC9D4:
	mov r0, #1
_021EC9D6:
	str r0, [r4, #0x78]
	add r0, r4, #0
	add r0, #0x8c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x63
	strb r1, [r0]
	cmp r1, #0x1e
	bhs _021ECA24
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r4, #0x68]
	ldrb r2, [r0]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r2, r2, r0
	add r0, r4, #0
	add r0, #0x8c
	strb r2, [r0]
	cmp r1, #0
	beq _021ECA16
	add r0, r4, #0
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #5
	blo _021ECA16
	mov r0, #0x3a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
_021ECA16:
	add r0, r4, #0
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #4
	bhi _021ECA24
	add r4, #0x8e
	strb r0, [r4]
_021ECA24:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy84_21ec948

	thumb_func_start ovy84_21eca28
ovy84_21eca28: ; 0x021ECA28
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xd0
	ldr r1, [r1]
	mov r2, #4
	bl ovy84_21ed920
	add r0, r4, #0
	bl ovy84_21ed32c
	pop {r4, pc}
	thumb_func_end ovy84_21eca28

	thumb_func_start ovy84_21eca40
ovy84_21eca40: ; 0x021ECA40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	cmp r1, #4
	bne _021ECA4E
	mov r4, #0xf
	b _021ECA56
_021ECA4E:
	mov r0, #1
	lsl r0, r1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021ECA56:
	mov r0, #1
	tst r0, r4
	beq _021ECA72
	ldr r0, [r5, #0x34]
	cmp r0, #0x30
	beq _021ECA72
	mov r0, #0xe2
	lsl r0, r0, #2
	add r1, r6, #1
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021ECA72:
	mov r0, #2
	tst r0, r4
	beq _021ECA88
	mov r0, #0xe3
	lsl r0, r0, #2
	add r1, r6, #4
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021ECA88:
	mov r0, #4
	tst r0, r4
	beq _021ECAA8
	add r0, r5, #0
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021ECAA8
	mov r0, #0x39
	lsl r0, r0, #4
	add r1, r6, #7
	lsl r1, r1, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021ECAA8:
	mov r0, #8
	tst r0, r4
	beq _021ECABE
	mov r0, #0xe5
	lsl r0, r0, #2
	add r6, #0xa
	lsl r1, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl sub_021EA87C
_021ECABE:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21eca40

	thumb_func_start sub_021ECAC0
sub_021ECAC0: ; 0x021ECAC0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021ECAD0 ; =sub_0204C560
	bx r3
	nop
_021ECAD0: .word sub_0204C560
	thumb_func_end sub_021ECAC0

	thumb_func_start ovy84_21ecad4
ovy84_21ecad4: ; 0x021ECAD4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0x78]
	cmp r1, #3
	bls _021ECAE2
	b _021ECBF6
_021ECAE2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021ECAEE: ; jump table
	.short _021ECAF6 - _021ECAEE - 2 ; case 0
	.short _021ECB02 - _021ECAEE - 2 ; case 1
	.short _021ECB62 - _021ECAEE - 2 ; case 2
	.short _021ECB82 - _021ECAEE - 2 ; case 3
_021ECAF6:
	ldr r0, [r4, #0x5c]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _021ECBF6
	add r0, r1, #1
	b _021ECB5E
_021ECB02:
	ldr r1, [r4, #0x58]
	ldr r2, [r4, #0x68]
	bl ovy84_21edff4
	add r5, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _021ECB50
	cmp r5, #0
	beq _021ECB26
	add r0, r4, #0
	mov r1, #4
	mov r2, #2
	bl ovy84_21eca40
	ldr r0, _021ECBFC ; =0x00000549
	bl sub_021EA860
_021ECB26:
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	beq _021ECB4A
	mov r0, #1
	cmp r5, #0
	beq _021ECB34
	mov r0, #0
_021ECB34:
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r2, [r4, #0x58]
	add r0, r4, #0
	bl ovy84_21ed748
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl ovy84_21ed380
_021ECB4A:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ECB50:
	add r0, r4, #0
	mov r1, #4
	mov r2, #2
	bl ovy84_21eca40
_021ECB5A:
	ldr r0, [r4, #0x78]
	add r0, r0, #1
_021ECB5E:
	str r0, [r4, #0x78]
	b _021ECBF6
_021ECB62:
	bl ovy84_21ed1bc
	add r2, r4, #0
	add r0, r4, #0
	mov r1, #1
	add r2, #0xf4
	bl ovy84_21ed208
	add r2, r4, #0
	add r2, #0x63
	ldrb r2, [r2]
	ldr r1, [r4, #0x58]
	add r0, r4, #0
	bl ovy84_21ece48
	b _021ECB5A
_021ECB82:
	add r0, #0x8d
	ldrb r1, [r0]
	mov r2, #1
	cmp r1, #0
	beq _021ECBB8
	add r0, r4, #0
	add r0, #0x60
	strb r1, [r0]
	add r3, r4, #0
	add r3, #0x60
	add r2, r4, #0
	ldrb r3, [r3]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x58]
	add r2, #0x56
	bl sub_02013B44
	add r1, r4, #0
	add r1, #0x60
	ldrb r1, [r1]
	ldr r0, [r4, #0x48]
	bl sub_02013A78
	add r1, r4, #0
	add r1, #0x61
	strb r0, [r1]
	mov r2, #0
_021ECBB8:
	add r0, r4, #0
	add r0, #0x60
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x8d
	strb r1, [r0]
	mov r1, #1
	cmp r2, #0
	beq _021ECBCC
	mov r1, #0
_021ECBCC:
	mov r0, #8
	str r0, [sp]
	add r0, r1, #1
	str r0, [sp, #4]
	add r2, r4, #0
	add r2, #0x61
	ldrb r2, [r2]
	ldr r1, [r4, #0x58]
	add r0, r4, #0
	mov r3, #1
	bl ovy84_21eda78
	add r0, r4, #0
	bl ovy84_21ed32c
	ldr r0, _021ECC00 ; =0x0000064A
	bl sub_021EA860
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ECBF6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021ECBFC: .word 0x00000549
_021ECC00: .word 0x0000064A
	thumb_func_end ovy84_21ecad4

	thumb_func_start ovy84_21ecc04
ovy84_21ecc04: ; 0x021ECC04
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xf4
	ldr r1, [r1]
	cmp r1, #0
	beq _021ECC1A
	add sp, #8
	mov r0, #5
	pop {r4, r5, r6, pc}
_021ECC1A:
	ldr r1, [r4, #0x78]
	cmp r1, #7
	bls _021ECC22
	b _021ECD38
_021ECC22:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ECC2E: ; jump table
	.short _021ECC3E - _021ECC2E - 2 ; case 0
	.short _021ECC5A - _021ECC2E - 2 ; case 1
	.short _021ECC86 - _021ECC2E - 2 ; case 2
	.short _021ECD0A - _021ECC2E - 2 ; case 3
	.short _021ECCA4 - _021ECC2E - 2 ; case 4
	.short _021ECCFA - _021ECC2E - 2 ; case 5
	.short _021ECD18 - _021ECC2E - 2 ; case 6
	.short _021ECD30 - _021ECC2E - 2 ; case 7
_021ECC3E:
	mov r1, #2
	mov r2, #1
	bl ovy84_21eca40
	add r2, r4, #0
	add r0, r4, #0
	mov r1, #2
	add r2, #0xf4
	bl ovy84_21ed208
_021ECC52:
	ldr r0, [r4, #0x78]
	add r0, r0, #1
_021ECC56:
	str r0, [r4, #0x78]
	b _021ECD38
_021ECC5A:
	mov r1, #2
	mov r5, #2
	bl sub_021ECAC0
	cmp r0, #0
	bne _021ECD38
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl ovy84_21eca40
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ovy84_21eca40
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	bl ovy84_21eca40
	b _021ECC52
_021ECC86:
	bl ovy84_21ecd40
	str r0, [r4, #0x78]
	cmp r0, #3
	bne _021ECC96
	add sp, #8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021ECC96:
	cmp r0, #8
	bne _021ECD38
	mov r0, #2
	str r0, [r4, #0x78]
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_021ECCA4:
	add r1, r4, #0
	add r1, #0x8f
	ldrb r2, [r1]
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	ldr r0, [r4, #0x48]
	add r1, r2, r1
	bl sub_02013A78
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	bl ovy84_21ed490
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r6, #0x11
	lsl r6, r6, #4
	ldrb r3, [r5, #4]
	ldr r0, [r4, r6]
	ldr r2, [r5, #0x48]
	mov r1, #0
	bl sub_0202437C
	sub r6, #0x10
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_021EA88C
	add r0, r4, #0
	mov r1, #3
	bl ovy84_21ee0bc
	ldrh r1, [r5, #0xc]
	ldr r0, [r4, #4]
	bl sub_02160390
	mov r0, #5
	b _021ECC56
_021ECCFA:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_021EA88C
	mov r0, #6
	b _021ECC56
_021ECD0A:
	mov r1, #2
	mov r2, #0
	mov r5, #2
	bl ovy84_21eca40
	str r5, [r4, #0x78]
	b _021ECD38
_021ECD18:
	mov r1, #4
	mov r2, #0
	bl ovy84_21eca40
	add r2, r4, #0
	add r0, r4, #0
	mov r1, #1
	add r2, #0xf4
	bl ovy84_21ed208
	mov r0, #7
	b _021ECC56
_021ECD30:
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x78]
	pop {r4, r5, r6, pc}
_021ECD38:
	mov r0, #5
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ecc04

	thumb_func_start ovy84_21ecd40
ovy84_21ecd40: ; 0x021ECD40
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_02016BEC
	cmp r0, #0
	beq _021ECD5E
	add r0, r5, #0
	mov r1, #1
	bl sub_021EAF60
	add sp, #8
	mov r0, #6
	pop {r4, r5, r6, pc}
_021ECD5E:
	add r6, sp, #0
	add r0, r6, #0
	add r1, sp, #4
	bl sub_0203DAC8
	cmp r0, #0
	bne _021ECD72
	add sp, #8
	mov r0, #2
	pop {r4, r5, r6, pc}
_021ECD72:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy84_21ed0e8
	cmp r0, #2
	bne _021ECD84
	add sp, #8
	mov r0, #6
	pop {r4, r5, r6, pc}
_021ECD84:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy84_21ecf70
	mov r4, #0
	mvn r4, r4
	cmp r0, r4
	beq _021ECDAA
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x8f
	strb r1, [r0]
	add r0, r5, #0
	bl ovy84_21ee798
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_021ECDAA:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy84_21ed038
	add r1, r0, #0
	cmp r1, r4
	beq _021ECDC6
	add r0, r5, #0
	mov r2, #5
	bl ovy84_21ed9ac
	add sp, #8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021ECDC6:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy84_21ed080
	cmp r0, r4
	beq _021ECDDC
	mov r0, #5
	str r0, [r5, #0x7c]
	add sp, #8
	mov r0, #8
	pop {r4, r5, r6, pc}
_021ECDDC:
	mov r0, #2
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ecd40

	thumb_func_start sub_021ECDE4
sub_021ECDE4: ; 0x021ECDE4
	ldr r3, _021ECDE8 ; =ovy84_21ed2b0
	bx r3
	.align 2, 0
_021ECDE8: .word ovy84_21ed2b0
	thumb_func_end sub_021ECDE4

	thumb_func_start ovy84_21ecdec
ovy84_21ecdec: ; 0x021ECDEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r7, r2, #0
	strb r4, [r6]
	strb r4, [r7]
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	ble _021ECE46
_021ECE02:
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x50]
	add r2, sp, #0
	add r3, r4, #0
	bl sub_02013B44
	ldr r0, [r5, #0x50]
	bl sub_02013D80
	add r1, r5, #0
	add r1, #0x3c
	ldrb r1, [r1]
	cmp r1, r0
	beq _021ECE24
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
_021ECE24:
	ldr r0, [r5, #0x50]
	bl sub_02013CC0
	add r1, r5, #0
	add r1, #0x3e
	ldrb r1, [r1]
	cmp r1, r0
	beq _021ECE3A
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_021ECE3A:
	add r0, r5, #0
	add r0, #0x8c
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021ECE02
_021ECE46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ecdec

	thumb_func_start ovy84_21ece48
ovy84_21ece48: ; 0x021ECE48
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r4, r2, #0
	mov r2, #0
	add r1, sp, #0
	strb r2, [r1, #1]
	strb r2, [r1]
	add r2, sp, #0
	add r1, sp, #0
	add r2, #1
	add r5, r0, #0
	bl ovy84_21ecdec
	add r0, r6, #0
	bl sub_02013CC8
	cmp r0, #2
	beq _021ECE76
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl ovy84_21eea5c
_021ECE76:
	add r0, sp, #0
	ldrb r1, [r0, #1]
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, r1
	beq _021ECE90
	cmp r1, #0x14
	bne _021ECE90
	ldr r0, [r5, #0x40]
	mov r1, #2
	bl ovy84_21eea5c
_021ECE90:
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x64
	blx sub_0208D868
	cmp r1, #0
	bne _021ECEA8
	ldr r0, [r5, #0x40]
	mov r1, #3
	bl ovy84_21eea5c
_021ECEA8:
	cmp r4, #0x1d
	bne _021ECEBE
	add r0, r5, #0
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0x1e
	bne _021ECEBE
	ldr r0, [r5, #0x40]
	mov r1, #4
	bl ovy84_21eea5c
_021ECEBE:
	add r0, sp, #0
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, r1
	beq _021ECED8
	cmp r1, #0x14
	bne _021ECED8
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl ovy84_21eea5c
_021ECED8:
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ovy84_21ecf24
	cmp r0, #0
	beq _021ECEEE
	ldr r0, [r5, #0x40]
	mov r1, #6
	bl ovy84_21eea5c
_021ECEEE:
	add r1, sp, #0
	ldrb r2, [r1]
	add r0, r5, #0
	add r0, #0x64
	strb r2, [r0]
	ldrb r0, [r1, #1]
	add r5, #0x65
	strb r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ece48

	thumb_func_start ovy84_21ecf04
ovy84_21ecf04: ; 0x021ECF04
	push {r3, lr}
	ldr r0, [r0, #0x40]
	bl sub_021EEA90
	cmp r0, #0
	bne _021ECF14
	mov r0, #0x30
	pop {r3, pc}
_021ECF14:
	sub r0, r0, #1
	lsl r1, r0, #2
	ldr r0, _021ECF20 ; =0x021EEC2C
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_021ECF20: .word 0x021EEC2C
	thumb_func_end ovy84_21ecf04

	thumb_func_start ovy84_21ecf24
ovy84_21ecf24: ; 0x021ECF24
	push {r4, r5, r6, lr}
	mov r1, #0x64
	add r5, r0, #0
	blx sub_0208D868
	cmp r0, #0
	bne _021ECF36
	mov r0, #0
	pop {r4, r5, r6, pc}
_021ECF36:
	add r0, r5, #0
	mov r1, #0xa
	blx sub_0208D868
	add r4, r1, #0
	add r0, r5, #0
	mov r1, #0xa
	blx sub_0208D868
	add r5, r0, #0
	mov r6, #0xa
_021ECF4C:
	add r0, r5, #0
	add r1, r6, #0
	blx sub_0208D868
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, r4
	beq _021ECF60
	mov r0, #0
	pop {r4, r5, r6, pc}
_021ECF60:
	add r0, r5, #0
	add r1, r6, #0
	blx sub_0208D868
	add r5, r0, #0
	bne _021ECF4C
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21ecf24

	thumb_func_start ovy84_21ecf70
ovy84_21ecf70: ; 0x021ECF70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov ip, r1
	mov r1, #0x98
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0xa8
	strb r1, [r0, #1]
	mov r2, #0
	strb r2, [r0, #2]
	mov r1, #0x38
	strb r1, [r0, #3]
	add r0, r3, #0
	add r0, #0x8e
	ldrb r1, [r0]
	cmp r1, #0
	ble _021ECFBC
	add r0, sp, #0
	mov r4, #8
	mov r6, #0xd1
	mov r7, #0x28
_021ECF9C:
	lsl r1, r2, #2
	add r5, r2, #0
	add r1, r0, r1
	mul r5, r7
	strb r5, [r1, #4]
	ldrb r5, [r1, #4]
	add r2, r2, #1
	add r5, #0x28
	strb r5, [r1, #5]
	strb r4, [r1, #6]
	strb r6, [r1, #7]
	add r1, r3, #0
	add r1, #0x8e
	ldrb r1, [r1]
	cmp r2, r1
	blt _021ECF9C
_021ECFBC:
	add r0, r1, #1
	lsl r1, r0, #2
	mov r2, #0xff
	add r0, sp, #0
	strb r2, [r0, r1]
	mov r1, ip
	mov r2, ip
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0203DADC
	add r1, r0, #1
	cmp r1, #1
	bhi _021ECFE0
	mov r0, #0
	add sp, #0x18
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021ECFE0:
	sub r0, r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ecf70

	thumb_func_start ovy84_21ecfe8
ovy84_21ecfe8: ; 0x021ECFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0x8e
	ldrb r2, [r0]
	mov r3, #0
	mov ip, r1
	cmp r2, #0
	ble _021ED020
	add r1, sp, #0
	mov r0, #0xfe
	mov r6, #0xd0
	mov r7, #0x10
_021ED002:
	lsl r5, r3, #2
	add r2, r1, r5
	strb r0, [r1, r5]
	mov r5, #0x28
	mul r5, r3
	strb r6, [r2, #1]
	add r5, #0x10
	strb r5, [r2, #2]
	strb r7, [r2, #3]
	add r2, r4, #0
	add r2, #0x8e
	ldrb r2, [r2]
	add r3, r3, #1
	cmp r3, r2
	blt _021ED002
_021ED020:
	lsl r1, r2, #2
	mov r3, #0xff
	add r0, sp, #0
	strb r3, [r0, r1]
	mov r1, ip
	mov r2, ip
	ldr r1, [r1]
	ldr r2, [r2, #4]
	bl sub_0203DADC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ecfe8

	thumb_func_start ovy84_21ed038
ovy84_21ed038: ; 0x021ED038
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, _021ED07C ; =0x021EEC0E
	ldmia r2!, {r1, r2}
	bl sub_0203DADC
	cmp r0, #0
	bne _021ED058
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	cmp r1, #0
	beq _021ED058
	mov r0, #1
	pop {r4, pc}
_021ED058:
	cmp r0, #1
	bne _021ED076
	add r0, r4, #0
	add r0, #0x8d
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r4, #0x8c
	add r1, r1, r0
	ldrb r0, [r4]
	cmp r1, r0
	bge _021ED076
	mov r0, #0
	pop {r4, pc}
_021ED076:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	.align 2, 0
_021ED07C: .word 0x021EEC0E
	thumb_func_end ovy84_21ed038

	thumb_func_start ovy84_21ed080
ovy84_21ed080: ; 0x021ED080
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x8c
	ldrb r2, [r2]
	cmp r2, #5
	bhs _021ED094
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_021ED094:
	ldr r2, [r1]
	cmp r2, #0xe8
	blt _021ED0A8
	cmp r2, #0xf8
	bgt _021ED0A8
	ldr r2, [r1, #4]
	cmp r2, #0x2c
	blt _021ED0A8
	cmp r2, #0x8c
	ble _021ED0AE
_021ED0A8:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_021ED0AE:
	add r2, r4, #0
	add r2, #0x8d
	ldrb r3, [r2]
	add r2, r4, #0
	add r2, #0x94
	strb r3, [r2]
	add r2, r4, #0
	mov r3, #1
	add r2, #0x91
	strb r3, [r2]
	ldr r1, [r1, #4]
	bl ovy84_21eda18
	cmp r0, #1
	bne _021ED0D8
	add r1, r4, #0
	add r1, #0x94
	ldrb r1, [r1]
	add r0, r4, #0
	bl ovy84_21ede6c
_021ED0D8:
	add r0, r4, #0
	mov r1, #4
	mov r2, #2
	bl ovy84_21eca40
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed080

	thumb_func_start ovy84_21ed0e8
ovy84_21ed0e8: ; 0x021ED0E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0xff
	add r4, sp, #0
	add r7, r1, #0
	strb r0, [r4, #4]
	mov r5, #0
_021ED0F8:
	lsl r0, r5, #2
	add r1, r6, r0
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0204C4A0
	lsl r1, r5, #1
	add r1, r5, r1
	add r1, r1, #1
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	blx sub_0208D65C
	cmp r1, #2
	bge _021ED154
	mov r0, #0xac
	strb r0, [r4]
	ldrb r0, [r4]
	add r0, #0x18
	strb r0, [r4, #1]
	lsl r0, r5, #5
	add r0, #0x84
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	add r0, #0x18
	strb r0, [r4, #3]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	add r0, sp, #0
	bl sub_0203DADC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021ED154
	ldr r0, _021ED164 ; =0x021EEBF6
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	bl sub_021EA860
	add sp, #8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ED154:
	add r5, r5, #1
	cmp r5, #4
	blt _021ED0F8
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED164: .word 0x021EEBF6
	thumb_func_end ovy84_21ed0e8

	thumb_func_start ovy84_21ed168
ovy84_21ed168: ; 0x021ED168
	push {r3, r4, r5, lr}
	mov r5, #0x45
	lsl r5, r5, #2
	add r4, r0, #0
	add r2, r5, #4
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	bl sub_02048838
	add r1, r5, #0
	sub r0, r5, #4
	add r1, #8
	add r2, r5, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl sub_02024920
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed168

	thumb_func_start ovy84_21ed190
ovy84_21ed190: ; 0x021ED190
	push {r3, lr}
	sub sp, #0x10
	mov r3, #9
	str r3, [sp]
	ldr r3, _021ED1B8 ; =0x00000449
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r2, r0, #0
	add r2, #0x89
	ldrb r2, [r2]
	mov r3, #0
	str r2, [sp, #0xc]
	mov r2, #0x5f
	lsl r2, r2, #2
	add r0, r0, r2
	mov r2, #0
	bl sub_021EAC18
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021ED1B8: .word 0x00000449
	thumb_func_end ovy84_21ed190

	thumb_func_start ovy84_21ed1bc
ovy84_21ed1bc: ; 0x021ED1BC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	add r2, r5, #0
	mov r4, #0x11
	str r0, [sp, #4]
	add r2, #0x8c
	lsl r4, r4, #4
	ldrb r2, [r2]
	ldr r0, [r5, r4]
	mov r1, #0
	mov r3, #2
	bl sub_0202451C
	add r0, r5, #0
	mov r1, #0
	bl ovy84_21ed168
	add r0, r5, #0
	add r0, #0x89
	ldrb r0, [r0]
	ldr r2, _021ED204 ; =0x000010A0
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	add r4, #0xc
	add r0, #0xac
	ldr r1, [r5, r4]
	add r0, r5, r0
	bl sub_021EAD28
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021ED204: .word 0x000010A0
	thumb_func_end ovy84_21ed1bc

	thumb_func_start ovy84_21ed208
ovy84_21ed208: ; 0x021ED208
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	str r0, [sp]
	mov r0, #1
	mov r4, #0x11
	mov r2, #0xeb
	add r7, r1, #0
	str r0, [sp, #4]
	lsl r4, r4, #4
	lsl r2, r2, #2
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0
	mov r3, #5
	bl sub_0202451C
	add r0, r5, #0
	add r1, r7, #0
	bl ovy84_21ed168
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	str r6, [sp, #8]
	add r0, #0x89
	ldrb r0, [r0]
	mov r2, #0
	mov r3, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r4, #0xc
	add r0, #0x8c
	ldr r1, [r5, r4]
	add r0, r5, r0
	bl sub_021EAC18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ed208

	thumb_func_start ovy84_21ed260
ovy84_21ed260: ; 0x021ED260
	push {r3, r4, r5, lr}
	mov r5, #0x1a
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #0x40
	bl sub_0204713C
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_02048244
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed260

	thumb_func_start ovy84_21ed27c
ovy84_21ed27c: ; 0x021ED27C
	push {r4, r5, r6, lr}
	mov r4, #0xe2
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C124
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed27c

	thumb_func_start ovy84_21ed2b0
ovy84_21ed2b0: ; 0x021ED2B0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x8d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021ED2C6
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x10
	b _021ED2CE
_021ED2C6:
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
_021ED2CE:
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0x8d
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r1, r0
	bge _021ED2F8
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x11
	bl sub_0204C488
	pop {r4, pc}
_021ED2F8:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x14
	bl sub_0204C488
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed2b0

	thumb_func_start sub_021ED308
sub_021ED308: ; 0x021ED308
	add r2, r1, #0
	cmp r2, #0x2c
	bge _021ED312
	mov r2, #0x2c
	b _021ED318
_021ED312:
	cmp r2, #0x84
	ble _021ED318
	mov r2, #0x84
_021ED318:
	mov r1, #0x3a
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	lsl r2, r2, #0x10
	ldr r3, _021ED328 ; =sub_021EA868
	mov r1, #0xe8
	asr r2, r2, #0x10
	bx r3
	.align 2, 0
_021ED328: .word sub_021EA868
	thumb_func_end sub_021ED308

	thumb_func_start ovy84_21ed32c
ovy84_21ed32c: ; 0x021ED32C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x8c
	add r1, r4, #0
	ldrb r0, [r0]
	add r1, #0x8d
	ldrb r1, [r1]
	sub r0, r0, #4
	mov r2, #0x2c
	mov r3, #0x84
	bl sub_020355E0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021ED308
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy84_21ed32c

	thumb_func_start ovy84_21ed358
ovy84_21ed358: ; 0x021ED358
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x8c
	ldrb r1, [r1]
	cmp r1, #0
	bne _021ED372
	mov r1, #0x39
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #9
	bl sub_0204C488
	pop {r3, pc}
_021ED372:
	mov r1, #0x39
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #7
	bl sub_0204C488
	pop {r3, pc}
	thumb_func_end ovy84_21ed358

	thumb_func_start ovy84_21ed380
ovy84_21ed380: ; 0x021ED380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl sub_0202B098
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0204C124
	cmp r4, #0
	beq _021ED3A8
	ldrh r1, [r5, #0xa]
	ldr r0, _021ED3C0 ; =0x0000FFFF
	cmp r1, r0
	beq _021ED3B0
_021ED3A8:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy84_21ed3d0
_021ED3B0:
	cmp r4, #0
	bne _021ED3BC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021ED3C4
_021ED3BC:
	pop {r3, r4, r5, pc}
	nop
_021ED3C0: .word 0x0000FFFF
	thumb_func_end ovy84_21ed380

	thumb_func_start sub_021ED3C4
sub_021ED3C4: ; 0x021ED3C4
	ldr r0, [r0, #0x1c]
	ldr r3, _021ED3CC ; =sub_0204C124
	bx r3
	nop
_021ED3CC: .word sub_0204C124
	thumb_func_end sub_021ED3C4

	thumb_func_start ovy84_21ed3d0
ovy84_21ed3d0: ; 0x021ED3D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	bl sub_0204C124
	mov r4, #0
_021ED3DE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #3
	blt _021ED3DE
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed3d0

	thumb_func_start ovy84_21ed3f4
ovy84_21ed3f4: ; 0x021ED3F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	mov r4, #0
	bl ovy84_21ed380
	add r0, r5, #0
	mov r1, #0
	bl sub_021ED3C4
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x30]
	bl sub_0202B0F4
	ldr r0, [r5, #0x48]
	bl sub_02048570
	ldr r0, [r5, #0x44]
	bl sub_02048570
	mov r0, #0xff
	strb r0, [r5, #1]
	ldr r0, [r5, #0x50]
	strb r4, [r5, #2]
	strb r4, [r5, #3]
	cmp r0, #0
	beq _021ED436
	bl sub_0203A870
	str r4, [r5, #0x50]
_021ED436:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021ED444
	bl sub_0203A870
	mov r0, #0
	str r0, [r5, #0x54]
_021ED444:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed3f4

	thumb_func_start ovy84_21ed448
ovy84_21ed448: ; 0x021ED448
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy84_21ed3f4
	strb r4, [r5, #1]
	strb r6, [r5, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed448

	thumb_func_start ovy84_21ed45c
ovy84_21ed45c: ; 0x021ED45C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021ED472
	bl sub_0203A870
	mov r0, #0
	str r0, [r5, #0x50]
_021ED472:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021ED48A
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl sub_021ED3C4
	ldr r0, [r5, #0x54]
	bl sub_0203A870
	str r7, [r5, #0x54]
_021ED48A:
	strb r4, [r5, #1]
	strb r6, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ed45c

	thumb_func_start ovy84_21ed490
ovy84_21ed490: ; 0x021ED490
	push {r3, r4, r5, r6}
	ldr r4, _021ED4BC ; =0x000001D1
	mov r6, #0
	mov r3, #0x58
_021ED498:
	add r2, r6, #0
	mul r2, r3
	add r5, r0, r2
	ldrb r5, [r5, r4]
	cmp r1, r5
	bne _021ED4B0
	mov r1, #0x1d
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, r0, r2
	pop {r3, r4, r5, r6}
	bx lr
_021ED4B0:
	add r6, r6, #1
	cmp r6, #5
	blt _021ED498
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_021ED4BC: .word 0x000001D1
	thumb_func_end ovy84_21ed490

	thumb_func_start ovy84_21ed4c0
ovy84_21ed4c0: ; 0x021ED4C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_02013D60
	add r6, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r0, [r4]
	mov r7, #0x41
	lsl r7, r7, #4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r6, #3
	add r1, r5, r1
	ldr r1, [r1, r7]
	bl sub_0204BA40
	mov r0, #0x20
	str r0, [sp]
	ldr r2, _021ED510 ; =0x021EEC1A
	ldrb r3, [r4]
	ldrb r2, [r2, r6]
	add r0, r5, #0
	add r7, #0x84
	add r0, #0xf8
	lsl r2, r2, #0x1c
	add r3, #9
	lsl r3, r3, #0x14
	ldr r1, [r5, r7]
	lsr r2, r2, #0x17
	add r1, r1, r2
	ldr r0, [r0]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ED510: .word 0x021EEC1A
	thumb_func_end ovy84_21ed4c0

	thumb_func_start ovy84_21ed514
ovy84_21ed514: ; 0x021ED514
	push {r4, lr}
	add r3, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r4, [r3, r0]
	ldrb r0, [r1]
	lsl r1, r2, #3
	add r2, r3, r1
	mov r1, #0x3b
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r2, r1]
	bl sub_0204BA40
	pop {r4, pc}
	thumb_func_end ovy84_21ed514

	thumb_func_start sub_021ED534
sub_021ED534: ; 0x021ED534
	ldrb r0, [r0, #6]
	sub r0, #0x14
	cmp r0, #3
	bhi _021ED558
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ED548: ; jump table
	.short _021ED554 - _021ED548 - 2 ; case 0
	.short _021ED550 - _021ED548 - 2 ; case 1
	.short _021ED554 - _021ED548 - 2 ; case 2
	.short _021ED550 - _021ED548 - 2 ; case 3
_021ED550:
	mov r0, #0
	bx lr
_021ED554:
	mov r0, #1
	bx lr
_021ED558:
	mov r0, #0
	bx lr
	thumb_func_end sub_021ED534

	thumb_func_start ovy84_21ed55c
ovy84_21ed55c: ; 0x021ED55C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x4a
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldrb r0, [r4, #7]
	add r6, r2, #0
	add r7, sp, #4
	lsl r0, r0, #5
	add r0, r1, r0
	add r1, r7, #0
	mov r2, #0xa
	blx sub_0207863C
	add r0, sp, #0xc
	add r0, #2
	add r1, r6, #0
	bl sub_02013D38
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0xc
	add r0, #2
	add r1, sp, #0x10
	mov r2, #1
	mov r3, #3
	bl sub_0202780C
	mov r0, #0xe
	str r0, [sp]
	ldrb r3, [r4]
	add r5, #0xf8
	ldr r0, [r5]
	add r3, r3, #4
	lsl r3, r3, #4
	add r3, r3, #1
	lsl r3, r3, #0x10
	add r1, r7, #0
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ed55c

	thumb_func_start ovy84_21ed5b8
ovy84_21ed5b8: ; 0x021ED5B8
	push {r3, r4, lr}
	sub sp, #4
	str r3, [sp]
	ldrb r3, [r1, #7]
	lsl r4, r3, #1
	ldr r3, _021ED5D0 ; =0x021EEC06
	ldrh r3, [r3, r4]
	bl ovy84_21ee8b4
	add sp, #4
	pop {r3, r4, pc}
	nop
_021ED5D0: .word 0x021EEC06
	thumb_func_end ovy84_21ed5b8

	thumb_func_start ovy84_21ed5d4
ovy84_21ed5d4: ; 0x021ED5D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrh r0, [r5, #0xc]
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0202CAA4
	ldr r1, _021ED630 ; =0x00002A30
	cmp r0, r1
	blo _021ED5EE
	mov r0, #1
	b _021ED5F0
_021ED5EE:
	mov r0, #0
_021ED5F0:
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r5, #5]
	cmp r1, r0
	bne _021ED5FE
	cmp r7, #0
	beq _021ED62E
_021ED5FE:
	strb r1, [r5, #5]
	cmp r1, #0
	str r4, [sp]
	beq _021ED61C
	ldrb r3, [r5, #7]
	ldr r2, [r5, #0x48]
	add r0, r6, #0
	add r3, r3, #2
	lsl r4, r3, #1
	ldr r3, _021ED634 ; =0x021EEC06
	add r1, r5, #0
	ldrh r3, [r3, r4]
	bl ovy84_21ee8b4
	pop {r3, r4, r5, r6, r7, pc}
_021ED61C:
	ldrb r3, [r5, #7]
	ldr r2, [r5, #0x48]
	add r0, r6, #0
	lsl r4, r3, #1
	ldr r3, _021ED634 ; =0x021EEC06
	add r1, r5, #0
	ldrh r3, [r3, r4]
	bl ovy84_21ee8b4
_021ED62E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ED630: .word 0x00002A30
_021ED634: .word 0x021EEC06
	thumb_func_end ovy84_21ed5d4

	thumb_func_start ovy84_21ed638
ovy84_21ed638: ; 0x021ED638
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	bl sub_02013D2C
	strb r0, [r4, #3]
	ldrb r0, [r4, #7]
	ldrb r6, [r4, #3]
	lsl r0, r0, #4
	add r0, #0x20
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r6, #0
	bne _021ED65C
	add r7, r2, #0
	mov r6, #5
	b _021ED662
_021ED65C:
	add r0, r2, #5
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_021ED662:
	mov r0, #0xa
	str r0, [sp]
	ldrb r3, [r4]
	mov r1, #0x4a
	add r0, r5, #0
	add r3, r3, #4
	lsl r1, r1, #4
	lsl r3, r3, #4
	add r0, #0xf8
	add r3, #8
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	lsl r2, r2, #1
	add r1, r1, r2
	ldr r0, [r0]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	lsl r0, r6, #0x11
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrb r3, [r4]
	mov r1, #0x4a
	add r0, r5, #0
	add r3, r3, #4
	lsl r1, r1, #4
	lsl r3, r3, #4
	add r0, #0xf8
	ldr r2, [r5, r1]
	add r3, #8
	lsl r1, r7, #1
	lsl r3, r3, #0x10
	add r1, r2, r1
	ldr r0, [r0]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02026E64
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ed638

	thumb_func_start sub_021ED6B4
sub_021ED6B4: ; 0x021ED6B4
	ldrb r1, [r0, #8]
	cmp r1, #0
	beq _021ED6C0
	ldrh r0, [r0, #0xa]
	cmp r0, #0xff
	blo _021ED6C4
_021ED6C0:
	mov r0, #1
	bx lr
_021ED6C4:
	mov r0, #0
	bx lr
	thumb_func_end sub_021ED6B4

	thumb_func_start ovy84_21ed6c8
ovy84_21ed6c8: ; 0x021ED6C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrb r0, [r5, #6]
	add r4, r2, #0
	add r0, #0xec
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021ED6EA
	ldr r0, _021ED740 ; =0x0000FFFF
	mov r1, #0
	strh r0, [r5, #0xa]
	add r0, r5, #0
	strb r1, [r5, #8]
	bl ovy84_21ed3d0
	pop {r3, r4, r5, r6, r7, pc}
_021ED6EA:
	add r0, r4, #0
	bl sub_02013DD0
	strb r0, [r5, #8]
	add r0, r4, #0
	bl sub_02013DC8
	strh r0, [r5, #0xa]
	add r0, r5, #0
	bl sub_021ED6B4
	cmp r0, #0
	ldr r0, [r5, #0x20]
	beq _021ED70A
	mov r1, #0x18
	b _021ED70C
_021ED70A:
	mov r1, #0x16
_021ED70C:
	bl sub_021EA87C
	ldr r7, _021ED744 ; =0x021EEBFE
	mov r4, #0
_021ED714:
	lsl r6, r4, #1
	add r1, r7, r6
	ldrb r0, [r5, #8]
	ldrh r1, [r1, #2]
	blx sub_0208D65C
	add r0, r1, #0
	ldrh r1, [r7, r6]
	blx sub_0208D65C
	add r1, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x24]
	lsr r1, r1, #0x10
	bl sub_0204C504
	add r4, r4, #1
	cmp r4, #3
	blt _021ED714
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021ED740: .word 0x0000FFFF
_021ED744: .word 0x021EEBFE
	thumb_func_end ovy84_21ed6c8

	thumb_func_start ovy84_21ed748
ovy84_21ed748: ; 0x021ED748
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	add r6, r2, #0
	str r0, [sp, #0x1c]
	add r4, r1, #0
	add r0, r6, #0
	add r7, r3, #0
	bl sub_02013D5C
	strh r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02013D80
	strb r0, [r4, #4]
	add r0, r6, #0
	bl sub_02013CC0
	strb r0, [r4, #6]
	add r0, r4, #0
	bl sub_021ED534
	strb r0, [r4, #7]
	ldr r1, [r4, #0x48]
	add r0, r6, #0
	bl sub_02013CAC
	ldr r0, [r4, #0x44]
	bl sub_02048570
	ldr r1, [r4, #0x44]
	add r0, r6, #0
	bl sub_02013DD8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy84_21ed638
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy84_21ed6c8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy84_21ed4c0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy84_21ed55c
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021ED832
	cmp r7, #0
	beq _021ED7C8
	cmp r7, #1
	beq _021ED80C
	cmp r7, #2
	beq _021ED826
	pop {r3, r4, r5, r6, r7, pc}
_021ED7C8:
	add r0, r6, #0
	bl sub_02013EAC
	cmp r0, #0x18
	beq _021ED7D8
	cmp r0, #0x31
	beq _021ED7E6
	b _021ED7FE
_021ED7D8:
	mov r7, #0x46
	lsl r7, r7, #2
	ldr r1, [r5, r7]
	add r0, r6, #0
	bl sub_02013DF4
	b _021ED7F2
_021ED7E6:
	mov r7, #0x46
	lsl r7, r7, #2
	ldr r1, [r5, r7]
	add r0, r6, #0
	bl sub_02013E14
_021ED7F2:
	ldr r2, [r5, r7]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy84_21ed5b8
_021ED7FE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ovy84_21ee6d8
	pop {r3, r4, r5, r6, r7, pc}
_021ED80C:
	ldr r2, [r4, #0x44]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy84_21ed5b8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy84_21ee6d8
	pop {r3, r4, r5, r6, r7, pc}
_021ED826:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy84_21ed5d4
_021ED832:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ed748

	thumb_func_start ovy84_21ed834
ovy84_21ed834: ; 0x021ED834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r0, #0
	ldr r0, [sp]
	strh r0, [r5, #0xe]
	ldr r0, [sp, #4]
	strh r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	bl sub_021EA868
	ldr r4, [sp, #4]
	ldr r1, [sp]
	add r4, #0x18
	add r1, #0x18
	lsl r1, r1, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5, #0x18]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_021EA868
	ldr r1, [sp]
	lsl r2, r4, #0x10
	add r1, #0x34
	lsl r1, r1, #0x10
	ldr r0, [r5, #0x1c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_021EA868
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r1, #0xbc
	add r2, #0xc
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x20]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_021EA868
	ldr r0, [sp, #4]
	ldr r6, [sp]
	add r0, #0x1c
	lsl r0, r0, #0x10
	mov r4, #0
	add r6, #0xc8
	asr r7, r0, #0x10
_021ED898:
	lsl r0, r4, #2
	lsl r1, r4, #3
	add r0, r5, r0
	sub r1, r6, r1
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x24]
	asr r1, r1, #0x10
	add r2, r7, #0
	bl sub_021EA868
	add r4, r4, #1
	cmp r4, #3
	blt _021ED898
	ldr r1, [sp]
	ldr r0, [r5, #0x30]
	add r1, #0x48
	str r1, [sp]
	ldr r2, [sp, #4]
	lsl r1, r1, #0x10
	add r2, #0x10
	str r2, [sp, #4]
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0202B230
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ed834

	thumb_func_start ovy84_21ed8d0
ovy84_21ed8d0: ; 0x021ED8D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x8e
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021ED91E
	add r6, r4, #0
_021ED8E0:
	add r1, r5, #0
	add r1, #0x8d
	ldrb r1, [r1]
	ldr r0, [r5, #0x48]
	add r1, r1, r4
	bl sub_02013A78
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy84_21ed490
	add r1, r0, #0
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _021ED908
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _021ED912
_021ED908:
	add r0, r5, #0
	add r2, r6, #0
	add r3, r6, #0
	bl ovy84_21ed5d4
_021ED912:
	add r0, r5, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021ED8E0
_021ED91E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21ed8d0

	thumb_func_start ovy84_21ed920
ovy84_21ed920: ; 0x021ED920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021ED9A8 ; =0x0000054B
	add r4, r1, #0
	add r7, r2, #0
	bl sub_021EA860
	cmp r4, #0
	bne _021ED950
	add r0, r5, #0
	add r0, #0x8d
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x8d
	ldrb r0, [r0]
	add r1, r0, #1
	b _021ED964
_021ED950:
	add r0, r5, #0
	add r0, #0x8d
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	add r0, #0x8d
	ldrb r0, [r0]
	sub r1, r0, #1
_021ED964:
	add r0, r5, #0
	add r0, #0x8d
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x8d
	ldrb r1, [r1]
	ldr r0, [r5, #0x40]
	bl sub_0202D7B8
	add r2, r5, #0
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x4c]
	add r2, #0x54
	add r3, r6, #0
	bl sub_02013B44
	ldr r0, [r5, #0x48]
	add r1, r6, #0
	bl sub_02013A78
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	lsl r3, r4, #0x18
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [r5, #0x4c]
	add r0, r5, #0
	lsr r3, r3, #0x18
	bl ovy84_21eda78
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED9A8: .word 0x0000054B
	thumb_func_end ovy84_21ed920

	thumb_func_start ovy84_21ed9ac
ovy84_21ed9ac: ; 0x021ED9AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r5, #0
	mov r1, #1
	add r0, #0xcc
	strb r1, [r0]
	mov r0, #0
	add r3, #0xcd
	strb r0, [r3]
	add r3, r5, #0
	add r3, #0xd0
	str r4, [r3]
	add r3, r5, #0
	add r3, #0xce
	strb r2, [r3]
	add r2, r5, #0
	add r2, #0xd4
	str r0, [r2]
	mov r0, #1
	add r0, #0xff
	ldr r0, [r5, r0]
	bl sub_021EA88C
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	bne _021ED9F0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x13
	b _021ED9F8
_021ED9F0:
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf
_021ED9F8:
	bl sub_021EA87C
	add r0, r5, #0
	mov r1, #4
	mov r2, #2
	bl ovy84_21eca40
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl ovy84_21ed920
	add r0, r5, #0
	bl ovy84_21ed32c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21ed9ac

	thumb_func_start ovy84_21eda18
ovy84_21eda18: ; 0x021EDA18
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	add r5, r0, #0
	str r7, [sp]
	add r0, #0x8c
	ldrb r0, [r0]
	add r6, r1, #0
	mov r2, #0x2c
	sub r0, r0, #4
	mov r3, #0x84
	bl sub_020355B8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021ED308
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, r4
	bne _021EDA48
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EDA48:
	add r0, r5, #0
	add r0, #0x94
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x8d
	ldrb r0, [r0]
	sub r1, r4, r0
	bpl _021EDA5A
	neg r1, r1
_021EDA5A:
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x8d
	ldrb r0, [r0]
	cmp r4, r0
	bge _021EDA6E
	mov r0, #1
	b _021EDA70
_021EDA6E:
	mov r0, #0
_021EDA70:
	add r5, #0x96
	strb r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21eda18

	thumb_func_start ovy84_21eda78
ovy84_21eda78: ; 0x021EDA78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	mov r1, #0xff
	add r5, r0, #0
	str r2, [sp, #0xc]
	add r7, r3, #0
	bl ovy84_21ed490
	add r6, r0, #0
	beq _021EDAEE
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	ldr r1, _021EDAF4 ; =ovy84_21edaf8
	mov r2, #0x18
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	blx sub_020787A8
	str r5, [r4, #0xc]
	strb r7, [r4, #1]
	add r0, sp, #0x28
	ldrb r0, [r0]
	mov r2, #0
	strb r0, [r4, #2]
	ldr r0, [sp, #0x2c]
	str r6, [r4, #8]
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0xf4
	str r0, [r4, #0x14]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xf4
	str r1, [r0]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ovy84_21ed448
	mov r0, #0
	str r0, [sp]
	add r4, #0x10
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	add r1, r6, #0
	str r4, [sp, #4]
	bl ovy84_21ed748
_021EDAEE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EDAF4: .word ovy84_21edaf8
	thumb_func_end ovy84_21eda78

	thumb_func_start ovy84_21edaf8
ovy84_21edaf8: ; 0x021EDAF8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r5, #0x10]
	ldr r4, [r5, #0xc]
	cmp r1, #0
	bgt _021EDB62
	ldrb r1, [r5]
	cmp r1, #0
	bne _021EDB52
	ldr r0, [r5, #8]
	mov r1, #1
	mov r6, #1
	bl ovy84_21ed380
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _021EDB32
	add r2, r5, #0
	ldr r1, [r5, #8]
	add r0, r4, #0
	add r2, #0x10
	bl ovy84_21edbec
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_021ED3C4
	b _021EDB48
_021EDB32:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x10
	str r0, [sp, #4]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	ldr r3, [r5, #8]
	add r0, r4, #0
	bl ovy84_21edb68
_021EDB48:
	ldrb r0, [r5]
	add sp, #8
	add r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EDB52:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _021EDB5E
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
_021EDB5E:
	bl sub_0203A870
_021EDB62:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21edaf8

	thumb_func_start ovy84_21edb68
ovy84_21edb68: ; 0x021EDB68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	add r7, r1, #0
	str r2, [sp, #8]
	add r4, r3, #0
	ldr r5, [sp, #0x28]
	str r0, [sp, #0x2c]
	beq _021EDBA8
	cmp r7, #0
	bne _021EDB84
	mov r0, #5
	b _021EDB86
_021EDB84:
	mov r0, #0
_021EDB86:
	strb r0, [r4, #2]
	ldrb r3, [r4, #2]
	mov r2, #1
	add r0, r4, #0
	sub r3, r2, r3
	mov r2, #1
	sub r2, #0x29
	mul r2, r3
	lsl r2, r2, #0x10
	mov r1, #8
	asr r2, r2, #0x10
	bl ovy84_21ed834
	add r0, r4, #0
	mov r1, #1
	bl ovy84_21ed380
_021EDBA8:
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r6, r0
	mov r4, #0
	str r0, [sp, #0xc]
_021EDBB2:
	mov r0, #0x58
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	beq _021EDBE0
	cmp r5, #0
	beq _021EDBCE
	ldrb r2, [r1]
	ldrb r0, [r5]
	cmp r2, r0
	beq _021EDBE0
_021EDBCE:
	ldr r0, [sp, #8]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl ovy84_21edc44
_021EDBE0:
	add r4, r4, #1
	cmp r4, #5
	blt _021EDBB2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21edb68

	thumb_func_start ovy84_21edbec
ovy84_21edbec: ; 0x021EDBEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #1
	mov r1, #1
	add r4, r2, #0
	strb r0, [r5, #2]
	add r0, r5, #0
	sub r1, #0xd9
	mov r2, #0
	mov r6, #0
	bl ovy84_21ed834
	add r0, r5, #0
	mov r1, #1
	bl ovy84_21ed380
	add r0, r7, #0
	add r0, #0x8c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EDC1C
	mov r6, #8
_021EDC1C:
	mov r0, #8
	str r0, [sp]
	lsl r3, r6, #0x18
	str r4, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #2
	lsr r3, r3, #0x18
	bl ovy84_21edc44
	str r5, [sp]
	add r0, r7, #0
	mov r1, #1
	mov r2, #8
	mov r3, #0
	str r4, [sp, #4]
	bl ovy84_21edb68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21edbec

	thumb_func_start ovy84_21edc44
ovy84_21edc44: ; 0x021EDC44
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	str r3, [sp]
	add r0, #0xec
	add r5, r1, #0
	add r7, r2, #0
	ldr r0, [r0]
	ldr r1, _021EDDE0 ; =ovy84_21edde4
	mov r2, #0x28
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	blx sub_020787A8
	strb r7, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _021EDC78
	ldrb r0, [r5, #2]
	sub r0, r0, #1
	b _021EDC80
_021EDC78:
	cmp r0, #1
	bne _021EDC82
	ldrb r0, [r5, #2]
	add r0, r0, #1
_021EDC80:
	strb r0, [r5, #2]
_021EDC82:
	str r6, [r4, #4]
	str r5, [r4, #8]
	mov r0, #8
	strh r0, [r4, #0x10]
	ldrb r1, [r5, #2]
	mov r0, #1
	sub r1, r0, r1
	sub r0, #0x29
	mul r0, r1
	strh r0, [r4, #0x12]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _021EDCB0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EDCBE
_021EDCB0:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EDCBE:
	blx sub_0208DA4C
	str r0, [r4, #0x14]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _021EDCDE
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EDCEC
_021EDCDE:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EDCEC:
	blx sub_0208DA4C
	str r0, [r4, #0x18]
	add r0, sp, #0x18
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldr r0, [sp]
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _021EDD14
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EDD22
_021EDD14:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EDD22:
	add r6, r0, #0
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	sub r0, r1, r0
	cmp r0, #0
	ble _021EDD44
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EDD52
_021EDD44:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EDD52:
	blx sub_0208DA4C
	add r7, r0, #0
	add r0, r6, #0
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r7, #0
	bl FX_Div
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _021EDD80
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EDD8E
_021EDD80:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EDD8E:
	add r6, r0, #0
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	sub r0, r1, r0
	cmp r0, #0
	ble _021EDDB0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EDDBE
_021EDDB0:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EDDBE:
	blx sub_0208DA4C
	add r5, r0, #0
	add r0, r6, #0
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r5, #0
	bl FX_Div
	ldr r1, [sp, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EDDE0: .word ovy84_21edde4
	thumb_func_end ovy84_21edc44

	thumb_func_start ovy84_21edde4
ovy84_21edde4: ; 0x021EDDE4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021EDDF4
	cmp r0, #1
	b _021EDE50
_021EDDF4:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _021EDE00
	sub r0, r0, #1
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, pc}
_021EDE00:
	ldrb r0, [r4, #0xf]
	add r0, r0, #1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xf]
	ldrb r0, [r4, #0xe]
	cmp r1, r0
	bhs _021EDE2E
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	add r3, r1, r0
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x20]
	str r3, [r4, #0x14]
	add r2, r1, r0
	str r2, [r4, #0x18]
	lsl r1, r3, #4
	lsl r2, r2, #4
	ldr r0, [r4, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ovy84_21ed834
	pop {r3, r4, r5, pc}
_021EDE2E:
	mov r1, #0x10
	mov r2, #0x12
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	bl ovy84_21ed834
	ldr r0, [r4, #8]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021EDE48
	cmp r0, #5
	bne _021EDE5C
_021EDE48:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021EDE50:
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x50]
	cmp r1, #0
	bne _021EDE6A
	bl ovy84_21ed3f4
_021EDE5C:
	ldr r1, [r4, #0x24]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r5, #0
	bl sub_0203A870
_021EDE6A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21edde4

	thumb_func_start ovy84_21ede6c
ovy84_21ede6c: ; 0x021EDE6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xec
	add r7, r1, #0
	ldr r0, [r0]
	ldr r1, _021EDF10 ; =ovy84_21edf18
	mov r2, #0x24
	mov r3, #0
	mov r4, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x24
	add r6, r0, #0
	blx sub_020787A8
	add r0, r5, #0
	str r5, [r6]
	add r0, #0xf4
	str r0, [r6, #0x20]
	add r0, r5, #0
	strb r7, [r6, #0x18]
	add r0, #0x8e
	ldrb r0, [r0]
	strb r0, [r6, #0x19]
	add r0, r5, #0
	add r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0
	ble _021EDED8
_021EDEAC:
	add r1, r5, #0
	add r1, #0x8d
	ldrb r1, [r1]
	ldr r0, [r5, #0x48]
	add r1, r1, r4
	bl sub_02013A78
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy84_21ed490
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #4]
	add r0, r5, #0
	add r0, #0x8e
	ldrb r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _021EDEAC
_021EDED8:
	add r0, r5, #0
	add r0, #0x8d
	add r1, r5, #0
	strb r7, [r0]
	add r1, #0x8d
	ldrb r1, [r1]
	ldr r0, [r5, #0x40]
	bl sub_0202D7B8
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_021EA88C
	add r0, r5, #0
	bl ovy84_21ed2b0
	ldr r0, _021EDF14 ; =0x0000054B
	bl sub_021EA860
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r5, #0xf4
	add r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EDF10: .word ovy84_21edf18
_021EDF14: .word 0x0000054B
	thumb_func_end ovy84_21ede6c

	thumb_func_start ovy84_21edf18
ovy84_21edf18: ; 0x021EDF18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r6, [r5]
	cmp r0, #0
	beq _021EDF32
	cmp r0, #1
	beq _021EDF56
	cmp r0, #2
	beq _021EDFCC
	b _021EDFD2
_021EDF32:
	ldrb r2, [r5, #0x19]
	mov r1, #0
	cmp r2, #0
	ble _021EDF4C
_021EDF3A:
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _021EDFF0
	add r1, r1, #1
	cmp r1, r2
	blt _021EDF3A
_021EDF4C:
	ldr r0, [r5, #0x14]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, r7, pc}
_021EDF56:
	ldrb r0, [r5, #0x19]
	mov r4, #0
	cmp r0, #0
	ble _021EDFC2
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x54
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x1c
	str r0, [sp, #0x10]
_021EDF6E:
	ldrb r1, [r5, #0x18]
	ldr r0, [r6, #0x48]
	add r1, r1, r4
	bl sub_02013A78
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r3, [r5, #0x18]
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x4c]
	ldr r2, [sp, #0xc]
	add r3, r3, r4
	bl sub_02013B44
	lsl r0, r4, #2
	add r7, r5, r0
	add r2, r4, #1
	lsl r2, r2, #0x18
	ldr r0, [r7, #4]
	ldr r1, [sp, #8]
	lsr r2, r2, #0x18
	bl ovy84_21ed45c
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r3, #2
	str r0, [sp, #4]
	ldr r1, [r7, #4]
	ldr r2, [r6, #0x4c]
	add r0, r6, #0
	bl ovy84_21ed748
	ldr r0, [r7, #4]
	mov r1, #1
	bl ovy84_21ed380
	ldrb r0, [r5, #0x19]
	add r4, r4, #1
	cmp r4, r0
	blt _021EDF6E
_021EDFC2:
	ldr r0, [r5, #0x14]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, r7, pc}
_021EDFCC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bgt _021EDFF0
_021EDFD2:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_021EA88C
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _021EDFEA
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021EDFEA:
	add r0, r4, #0
	bl sub_0203A870
_021EDFF0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21edf18

	thumb_func_start ovy84_21edff4
ovy84_21edff4: ; 0x021EDFF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl sub_02013EAC
	add r4, r0, #0
	cmp r7, #0
	beq _021EE026
	add r2, r5, #0
	mov r1, #0x11
	add r2, #0xe2
	lsl r1, r1, #4
	ldrh r2, [r2]
	ldr r1, [r5, r1]
	add r0, r6, #0
	bl sub_020140E0
	add r0, r5, #0
	mov r1, #0x16
	bl ovy84_21ee0bc
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE026:
	add r0, r6, #0
	bl sub_0202CF84
	cmp r0, #0
	beq _021EE034
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EE034:
	cmp r4, #0x12
	bgt _021EE040
	bge _021EE052
	cmp r4, #1
	beq _021EE04E
	b _021EE074
_021EE040:
	cmp r4, #0x18
	bgt _021EE048
	beq _021EE06A
	b _021EE074
_021EE048:
	cmp r4, #0x32
	beq _021EE05E
	b _021EE074
_021EE04E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EE052:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy84_21ee1a4
	pop {r3, r4, r5, r6, r7, pc}
_021EE05E:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy84_21ee1a4
	pop {r3, r4, r5, r6, r7, pc}
_021EE06A:
	ldr r0, [r5, #0x14]
	bl sub_0200C910
	bl sub_0215FDEC
_021EE074:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy84_21ee080
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21edff4

	thumb_func_start ovy84_21ee080
ovy84_21ee080: ; 0x021EE080
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r2, r5, #0
	mov r4, #0x11
	add r2, #0xe2
	add r6, r1, #0
	lsl r4, r4, #4
	ldrh r2, [r2]
	ldr r1, [r5, r4]
	add r0, r6, #0
	bl sub_020140E0
	add r0, r6, #0
	bl sub_021EAB38
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy84_21ed168
	add r4, #0xc
	add r0, r5, #0
	ldr r1, [r5, r4]
	add r5, #0xf4
	add r2, r5, #0
	bl ovy84_21ee0d8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy84_21ee080

	thumb_func_start ovy84_21ee0bc
ovy84_21ee0bc: ; 0x021EE0BC
	push {r4, lr}
	add r4, r0, #0
	bl ovy84_21ed168
	mov r1, #0x47
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r4, #0xf4
	add r2, r4, #0
	bl ovy84_21ee0d8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy84_21ee0bc

	thumb_func_start ovy84_21ee0d8
ovy84_21ee0d8: ; 0x021EE0D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xec
	add r7, r1, #0
	add r4, r2, #0
	ldr r0, [r0]
	ldr r1, _021EE124 ; =ovy84_21ee128
	mov r2, #0x10
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x10
	add r6, r0, #0
	blx sub_020787A8
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02048580
	str r5, [r6, #8]
	mov r0, #0x5a
	strb r0, [r6, #1]
	add r0, r5, #0
	mov r1, #4
	mov r2, #2
	bl ovy84_21eca40
	str r4, [r6, #0xc]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE124: .word ovy84_21ee128
	thumb_func_end ovy84_21ee0d8

	thumb_func_start ovy84_21ee128
ovy84_21ee128: ; 0x021EE128
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021EE1A2
	ldrb r1, [r5]
	cmp r1, #0
	beq _021EE142
	cmp r1, #1
	beq _021EE158
	cmp r1, #2
	beq _021EE170
	b _021EE196
_021EE142:
	mov r1, #0x12
	ldr r0, [r5, #8]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	add r2, r5, #4
	bl ovy84_21ed190
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EE158:
	ldr r0, [r5, #8]
	mov r1, #6
	add r0, #0xec
	ldr r0, [r0]
	mov r2, #0
	add r3, r5, #4
	bl sub_021EADA0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EE170:
	add r0, r5, #1
	mov r1, #6
	mov r4, #6
	bl sub_021EAADC
	cmp r0, #0
	beq _021EE1A2
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	mov r2, #1
	add r3, r5, #4
	bl sub_021EADA0
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
_021EE196:
	ldr r2, [r5, #0xc]
	ldr r1, [r2]
	sub r1, r1, #1
	str r1, [r2]
	bl sub_0203A870
_021EE1A2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21ee128

	thumb_func_start ovy84_21ee1a4
ovy84_21ee1a4: ; 0x021EE1A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r2, #0
	beq _021EE1B6
	add r0, r7, #0
	bl sub_02013F44
	b _021EE1BC
_021EE1B6:
	add r0, r7, #0
	bl sub_02013D98
_021EE1BC:
	add r4, r0, #0
	add r0, r4, #0
	bl sub_02013488
	cmp r0, #0
	bne _021EE1CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EE1CC:
	ldr r1, [r5, #0x30]
	add r0, r4, #0
	bl sub_02013560
	cmp r4, r0
	bne _021EE1DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EE1DC:
	mov r6, #0x46
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	add r0, r7, #0
	bl sub_02013CAC
	ldr r0, [r5, #0x40]
	ldr r2, [r5, r6]
	add r1, r4, #0
	bl sub_021EEACC
	add r2, r5, #0
	add r2, #0xe2
	sub r6, #8
	ldrh r2, [r2]
	ldr r1, [r5, r6]
	add r0, r7, #0
	bl sub_020140E0
	add r0, r5, #0
	add r5, #0xf4
	add r1, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl ovy84_21ee224
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy84_21ee1a4

	thumb_func_start ovy84_21ee214
ovy84_21ee214: ; 0x021EE214
	push {r3, lr}
	add r3, r0, #0
	mov r2, #1
	add r3, #0xf4
	bl ovy84_21ee224
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy84_21ee214

	thumb_func_start ovy84_21ee224
ovy84_21ee224: ; 0x021EE224
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, #0xec
	add r7, r1, #0
	add r4, r3, #0
	ldr r0, [r0]
	ldr r1, _021EE280 ; =ovy84_21ee284
	mov r2, #0x18
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x18
	add r6, r0, #0
	blx sub_020787A8
	add r0, r5, #0
	mov r1, #0x30
	add r0, #0x97
	strb r1, [r0]
	str r5, [r6, #0x10]
	mov r1, #0x5a
	strb r1, [r6, #2]
	str r7, [r6, #0xc]
	ldr r0, [sp]
	add r1, #0xb6
	strb r0, [r6, #3]
	ldr r0, [r5, r1]
	mov r1, #1
	add r2, r7, #0
	bl sub_0202472C
	add r0, r5, #0
	mov r1, #4
	mov r2, #2
	bl ovy84_21eca40
	str r4, [r6, #0x14]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE280: .word ovy84_21ee284
	thumb_func_end ovy84_21ee224

	thumb_func_start ovy84_21ee284
ovy84_21ee284: ; 0x021EE284
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #8]
	ldr r5, [r4, #0x10]
	cmp r0, #0
	ble _021EE294
	b _021EE408
_021EE294:
	ldrb r0, [r4]
	cmp r0, #6
	bls _021EE29C
	b _021EE3E4
_021EE29C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EE2A8: ; jump table
	.short _021EE2B6 - _021EE2A8 - 2 ; case 0
	.short _021EE2DA - _021EE2A8 - 2 ; case 1
	.short _021EE2F2 - _021EE2A8 - 2 ; case 2
	.short _021EE31E - _021EE2A8 - 2 ; case 3
	.short _021EE368 - _021EE2A8 - 2 ; case 4
	.short _021EE38E - _021EE2A8 - 2 ; case 5
	.short _021EE3A6 - _021EE2A8 - 2 ; case 6
_021EE2B6:
	ldrb r2, [r4, #3]
	ldr r1, _021EE40C ; =0x021EEBF4
	add r0, r5, #0
	ldrb r1, [r1, r2]
	bl ovy84_21ed168
	mov r1, #0x47
	lsl r1, r1, #2
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #8
	bl ovy84_21ed190
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE2DA:
	add r5, #0xec
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE2F2:
	mov r6, #1
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_021EA88C
	add r6, #0xc
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_021EA968
	add r0, r5, #0
	bl ovy84_21ed260
	add r0, r5, #0
	mov r1, #0
	bl ovy84_21ed27c
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE31E:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021EA9EC
	cmp r0, #0
	blt _021EE408
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _021EE33E
	cmp r0, #1
	beq _021EE34C
	cmp r0, #2
	beq _021EE362
	pop {r3, r4, r5, r6, r7, pc}
_021EE33E:
	add r0, r5, #0
	mov r1, #8
	bl sub_021EAF60
	mov r0, #3
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE34C:
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r0, #0x97
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #7
	bl sub_021EAF60
	mov r0, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE362:
	mov r0, #5
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE368:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _021EE37E
	mov r0, #0x30
	add r5, #0x97
	strb r0, [r5]
	mov r0, #3
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE37E:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021EAAA8
	mov r0, #6
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE38E:
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r1, [r4, #5]
	ldr r0, [r5, r0]
	bl sub_021EAA68
	cmp r0, #0
	beq _021EE408
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE3A6:
	ldrb r0, [r4, #3]
	cmp r0, #1
	ldr r0, [r5, #0x40]
	bne _021EE3B4
	bl ovy84_21eea9c
	b _021EE3B8
_021EE3B4:
	bl sub_021EEB0C
_021EE3B8:
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #1
	add r2, #8
	bl ovy84_21ed208
	add r0, r5, #0
	mov r1, #1
	bl ovy84_21ed27c
	add r5, #0xec
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #1
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE3E4:
	add r0, r5, #0
	mov r6, #4
	mov r1, #4
	mov r2, #0
	bl ovy84_21eca40
	add r6, #0xfc
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_021EA88C
	ldr r1, [r4, #0x14]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r7, #0
	bl sub_0203A870
_021EE408:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE40C: .word 0x021EEBF4
	thumb_func_end ovy84_21ee284

	thumb_func_start ovy84_21ee410
ovy84_21ee410: ; 0x021EE410
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xec
	add r6, r1, #0
	add r4, r2, #0
	ldr r0, [r0]
	ldr r1, _021EE490 ; =ovy84_21ee494
	mov r2, #0x50
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	mov r1, #0
	mov r2, #0x50
	add r7, r0, #0
	blx sub_020787A8
	add r0, r5, #0
	add r0, #0xa0
	bl sub_02014D40
	add r1, r5, #0
	add r3, r7, #0
	add r1, #0x9c
	mov r0, #0
	str r0, [r1]
	str r5, [r7, #0x48]
	mov r0, #0x5a
	strb r0, [r7, #2]
	add r3, #0xc
	mov r2, #5
_021EE450:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EE450
	ldr r0, [r6]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	mov r2, #2
	bl ovy84_21eca40
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy84_21eca40
	add r0, r5, #0
	mov r1, #2
	mov r2, #2
	bl ovy84_21eca40
	add r0, r5, #0
	mov r1, #3
	mov r2, #2
	bl ovy84_21eca40
	str r4, [r7, #0x4c]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE490: .word ovy84_21ee494
	thumb_func_end ovy84_21ee410

	thumb_func_start ovy84_21ee494
ovy84_21ee494: ; 0x021EE494
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #8]
	ldr r5, [r4, #0x48]
	cmp r0, #0
	bgt _021EE540
	ldrb r0, [r4]
	cmp r0, #6
	bls _021EE4AA
	b _021EE670
_021EE4AA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EE4B6: ; jump table
	.short _021EE4C4 - _021EE4B6 - 2 ; case 0
	.short _021EE4EE - _021EE4B6 - 2 ; case 1
	.short _021EE506 - _021EE4B6 - 2 ; case 2
	.short _021EE532 - _021EE4B6 - 2 ; case 3
	.short _021EE600 - _021EE4B6 - 2 ; case 4
	.short _021EE62C - _021EE4B6 - 2 ; case 5
	.short _021EE644 - _021EE4B6 - 2 ; case 6
_021EE4C4:
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	lsl r1, r1, #1
	lsr r1, r1, #0x1f
	add r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy84_21ed168
	mov r1, #0x47
	lsl r1, r1, #2
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, #8
	bl ovy84_21ed190
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE4EE:
	add r5, #0xec
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #0
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE506:
	mov r6, #1
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_021EA88C
	add r6, #0xc
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_021EA968
	add r0, r5, #0
	bl ovy84_21ed260
	add r0, r5, #0
	mov r1, #0
	bl ovy84_21ed27c
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE532:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021EA9EC
	cmp r0, #0
	bge _021EE542
_021EE540:
	b _021EE694
_021EE542:
	strb r0, [r4, #5]
	ldrb r2, [r4, #5]
	cmp r2, #0
	beq _021EE554
	cmp r2, #1
	beq _021EE5A8
	cmp r2, #2
	beq _021EE5F0
	pop {r3, r4, r5, r6, r7, pc}
_021EE554:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xc
	bl ovy84_21ee698
	add r3, r4, #0
	add r2, r5, #0
	add r6, r0, #0
	add r3, #0xc
	add r2, #0xa0
	mov r7, #5
_021EE56A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021EE56A
	ldr r0, [r3]
	str r0, [r2]
	ldrb r1, [r4, #5]
	add r0, r5, #0
	add r0, #0x98
	strb r1, [r0]
	cmp r6, #0
	beq _021EE586
	cmp r6, #3
	bne _021EE594
_021EE586:
	add r0, r5, #0
	mov r1, #0xd
	bl sub_021EAF60
	mov r0, #3
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE594:
	add r0, r5, #0
	add r0, #0x9c
	str r6, [r0]
	add r0, r5, #0
	mov r1, #0xc
	bl sub_021EAF60
	mov r0, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE5A8:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xc
	bl ovy84_21ee698
	add r3, r4, #0
	add r2, r5, #0
	add r6, r0, #0
	add r3, #0xc
	add r2, #0xa0
	mov r7, #5
_021EE5BE:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021EE5BE
	ldr r0, [r3]
	str r0, [r2]
	ldrb r1, [r4, #5]
	add r0, r5, #0
	add r0, #0x98
	strb r1, [r0]
	cmp r6, #0
	bne _021EE5DC
	add r0, r5, #0
	mov r1, #0xb
	b _021EE5E6
_021EE5DC:
	add r0, r5, #0
	add r0, #0x9c
	str r6, [r0]
	add r0, r5, #0
	mov r1, #0xc
_021EE5E6:
	bl sub_021EAF60
	mov r0, #4
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE5F0:
	add r1, r4, #0
	ldr r0, [r5, #0x24]
	add r1, #0xc
	bl sub_02014964
	mov r0, #5
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE600:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x7f
	beq _021EE61C
	add r5, #0xa0
	add r0, r5, #0
	bl sub_02014D40
	mov r0, #3
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE61C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_021EAAA8
	mov r0, #6
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE62C:
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r1, [r4, #5]
	ldr r0, [r5, r0]
	bl sub_021EAA68
	cmp r0, #0
	beq _021EE694
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE644:
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #1
	add r2, #8
	bl ovy84_21ed208
	add r0, r5, #0
	mov r1, #1
	bl ovy84_21ed27c
	add r5, #0xec
	add r3, r4, #0
	ldr r0, [r5]
	mov r1, #6
	mov r2, #1
	add r3, #8
	bl sub_021EADA0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EE670:
	add r0, r5, #0
	mov r6, #4
	mov r1, #4
	mov r2, #0
	bl ovy84_21eca40
	add r6, #0xfc
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_021EA88C
	ldr r1, [r4, #0x4c]
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	add r0, r7, #0
	bl sub_0203A870
_021EE694:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ee494

	thumb_func_start ovy84_21ee698
ovy84_21ee698: ; 0x021EE698
	push {r4, r5, r6, lr}
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02017394
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02014E3C
	cmp r0, #0
	bne _021EE6BA
	mov r0, #2
	cmp r4, #0
	beq _021EE6D6
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EE6BA:
	ldr r0, [r5, #8]
	lsl r0, r0, #2
	lsr r1, r0, #0x14
	beq _021EE6D4
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_020191AC
	cmp r0, #0
	bne _021EE6D4
	mov r0, #3
	pop {r4, r5, r6, pc}
_021EE6D4:
	mov r0, #0
_021EE6D6:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy84_21ee698

	thumb_func_start ovy84_21ee6d8
ovy84_21ee6d8: ; 0x021EE6D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r0, #0xec
	add r5, r1, #0
	str r2, [sp]
	add r7, r3, #0
	ldr r0, [r0]
	ldr r1, _021EE740 ; =ovy84_21ee744
	mov r2, #0x18
	mov r3, #0
	bl sub_0203A888
	str r0, [sp, #4]
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x18
	blx sub_020787A8
	str r6, [r4, #0x10]
	mov r0, #0x5a
	str r5, [r4, #8]
	strb r0, [r4, #1]
	ldr r0, [sp, #4]
	cmp r7, #0
	str r0, [r5, #0x54]
	beq _021EE716
	mov r0, #1
	b _021EE71C
_021EE716:
	ldr r0, [sp]
	bl sub_02013EAC
_021EE71C:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_020140CC
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ovy84_21ed514
	mov r1, #1
	cmp r7, #0
	beq _021EE736
	mov r1, #0
_021EE736:
	add r0, r5, #0
	bl sub_021ED3C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EE740: .word ovy84_21ee744
	thumb_func_end ovy84_21ee6d8

	thumb_func_start ovy84_21ee744
ovy84_21ee744: ; 0x021EE744
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _021EE77C
	ldrb r1, [r4, #1]
	sub r0, r1, #1
	strb r0, [r4, #1]
	cmp r1, #0
	bne _021EE796
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _021EE768
	cmp r0, #0x18
	beq _021EE768
	cmp r0, #0x31
	bne _021EE784
_021EE768:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	mov r2, #1
	mov r3, #0
	bl ovy84_21ed5d4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021EE77C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	bne _021EE796
_021EE784:
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0x54]
	ldr r0, [r4, #8]
	bl sub_021ED3C4
	add r0, r5, #0
	bl sub_0203A870
_021EE796:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21ee744

	thumb_func_start ovy84_21ee798
ovy84_21ee798: ; 0x021EE798
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x8d
	ldrb r2, [r2]
	ldr r0, [r4, #0x48]
	add r1, r1, r2
	bl sub_02013A78
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	bl ovy84_21ed490
	add r1, r0, #0
	add r0, r4, #0
	add r4, #0xf4
	add r2, r4, #0
	bl ovy84_21ee7cc
	ldr r0, _021EE7C8 ; =0x0000054C
	bl sub_021EA860
	pop {r4, pc}
	.align 2, 0
_021EE7C8: .word 0x0000054C
	thumb_func_end ovy84_21ee798

	thumb_func_start ovy84_21ee7cc
ovy84_21ee7cc: ; 0x021EE7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r0, #0xec
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [r0]
	ldr r1, _021EE82C ; =ovy84_21ee834
	mov r2, #0x14
	mov r3, #0
	bl sub_0203A888
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	blx sub_020787A8
	str r7, [r4, #0xc]
	str r6, [r4, #8]
	mov r0, #2
	strb r0, [r4, #2]
	ldrb r0, [r6]
	mov r1, #3
	mov r3, #0x10
	add r0, r0, #4
	lsl r0, r0, #4
	strb r0, [r4, #3]
	mov r0, #4
	str r0, [sp]
	ldr r0, _021EE830 ; =0x00007FFF
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, #3]
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_02027880
	cmp r5, #0
	beq _021EE826
	str r5, [r4, #0x10]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021EE826:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE82C: .word ovy84_21ee834
_021EE830: .word 0x00007FFF
	thumb_func_end ovy84_21ee7cc

	thumb_func_start ovy84_21ee834
ovy84_21ee834: ; 0x021EE834
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r3, [r4]
	add r5, r0, #0
	cmp r3, #2
	bhs _021EE882
	ldrb r1, [r4, #1]
	add r0, r1, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	cmp r1, r0
	blo _021EE8AC
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021EE8B0 ; =0x00007FFF
	mov r1, #3
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, #3]
	add r0, #0xf8
	ldr r0, [r0]
	mov r3, #0x10
	bl sub_02027880
	ldrb r0, [r4]
	add sp, #8
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_021EE882:
	mov r0, #0
	str r0, [sp]
	ldr r0, _021EE8B0 ; =0x00007FFF
	mov r1, #3
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldrb r2, [r4, #3]
	add r0, #0xf8
	ldr r0, [r0]
	mov r3, #0x10
	bl sub_02027880
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021EE8A6
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021EE8A6:
	add r0, r5, #0
	bl sub_0203A870
_021EE8AC:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EE8B0: .word 0x00007FFF
	thumb_func_end ovy84_21ee834

	thumb_func_start ovy84_21ee8b4
ovy84_21ee8b4: ; 0x021EE8B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r4, #0x30
	add r5, r0, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0x89
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EE8F4
	add r5, #0xfc
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0
	add r3, r7, #0
	bl sub_02021D28
	ldr r0, [r4]
	bl sub_0202B0F4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021EE8F4:
	add r0, r5, #0
	str r7, [sp]
	add r0, #0xfc
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #1
	str r6, [sp, #8]
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r4, #4]
	mov r3, #0
	bl sub_02021C7C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ovy84_21ee920
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy84_21ee8b4

	thumb_func_start ovy84_21ee920
ovy84_21ee920: ; 0x021EE920
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xec
	add r7, r1, #0
	add r5, r2, #0
	ldr r0, [r0]
	ldr r1, _021EE964 ; =ovy84_21ee968
	mov r2, #0x10
	mov r3, #0
	bl sub_0203A888
	str r0, [sp]
	bl sub_0203A910
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx sub_020787A8
	str r6, [r4, #8]
	add r0, r7, #0
	add r0, #0x30
	str r7, [r4]
	str r0, [r4, #4]
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r7, #0x50]
	beq _021EE960
	str r5, [r4, #0xc]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021EE960:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE964: .word ovy84_21ee968
	thumb_func_end ovy84_21ee920

	thumb_func_start ovy84_21ee968
ovy84_21ee968: ; 0x021EE968
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #1
	ldr r1, [r4, #8]
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	ldr r1, [r4, #4]
	ldr r1, [r1, #4]
	bl sub_02021C1C
	cmp r0, #0
	bne _021EE9A2
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_0202B0F4
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _021EE996
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
_021EE996:
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x50]
	add r0, r5, #0
	bl sub_0203A870
_021EE9A2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy84_21ee968

	thumb_func_start ovy84_21ee9a4
ovy84_21ee9a4: ; 0x021EE9A4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _021EEA58 ; =0x00000D9C
	str r2, [sp]
	add r4, r0, r1
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	bne _021EE9BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EE9BC:
	mov r5, #0
	cmp r0, #0
	ble _021EEA08
_021EE9C2:
	mov r0, #0x3c
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	ldr r1, [r0, #0x10]
	lsl r1, r1, #1
	lsr r1, r1, #0x1f
	beq _021EE9FC
	add r0, #0x10
	bl sub_02014E3C
	cmp r0, #0
	beq _021EE9FC
	ldr r0, [sp]
	add r1, r4, r6
	mov r2, #8
	bl sub_02048658
	add r3, r4, r6
	add r3, #0x10
	mov r2, #5
_021EE9EC:
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r2, r2, #1
	bne _021EE9EC
	ldr r0, [r3]
	str r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EE9FC:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021EE9C2
_021EEA08:
	mov r5, #0
	cmp r0, #0
	ble _021EEA4C
_021EEA0E:
	mov r0, #0x3c
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	add r0, #0x10
	bl sub_02014E3C
	cmp r0, #0
	beq _021EEA40
	ldr r0, [sp]
	add r1, r4, r6
	mov r2, #8
	bl sub_02048658
	add r3, r4, r6
	add r3, #0x10
	mov r2, #5
_021EEA30:
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	sub r2, r2, #1
	bne _021EEA30
	ldr r0, [r3]
	str r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EEA40:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r5, r5, #1
	cmp r5, r0
	blt _021EEA0E
_021EEA4C:
	ldr r0, [sp]
	bl sub_02048570
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEA58: .word 0x00000D9C
	thumb_func_end ovy84_21ee9a4

	thumb_func_start ovy84_21eea5c
ovy84_21eea5c: ; 0x021EEA5C
	push {r4, r5}
	ldr r3, _021EEA8C ; =0x00000B83
	mov r5, #0
	ldrb r2, [r0, r3]
	cmp r2, #0
	ble _021EEA78
	add r3, r3, #1
_021EEA6A:
	add r4, r0, r5
	ldrb r4, [r4, r3]
	cmp r1, r4
	beq _021EEA86
	add r5, r5, #1
	cmp r5, r2
	blt _021EEA6A
_021EEA78:
	ldr r3, _021EEA8C ; =0x00000B83
	add r2, r0, r2
	ldrb r4, [r0, r3]
	add r4, r4, #1
	strb r4, [r0, r3]
	add r0, r3, #1
	strb r1, [r2, r0]
_021EEA86:
	pop {r4, r5}
	bx lr
	nop
_021EEA8C: .word 0x00000B83
	thumb_func_end ovy84_21eea5c

	thumb_func_start sub_021EEA90
sub_021EEA90: ; 0x021EEA90
	ldr r1, _021EEA98 ; =0x00000B84
	ldrb r0, [r0, r1]
	bx lr
	nop
_021EEA98: .word 0x00000B84
	thumb_func_end sub_021EEA90

	thumb_func_start ovy84_21eea9c
ovy84_21eea9c: ; 0x021EEA9C
	push {r3, r4, r5, lr}
	ldr r4, _021EEAC8 ; =0x00000B83
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #0
	beq _021EEAC4
	sub r0, r0, #1
	strb r0, [r5, r4]
	ldrb r2, [r5, r4]
	add r0, r4, #2
	add r1, r4, #1
	add r0, r5, r0
	add r1, r5, r1
	blx sub_02078920
	ldrb r0, [r5, r4]
	mov r2, #0
	add r1, r5, r0
	add r0, r4, #1
	strb r2, [r1, r0]
_021EEAC4:
	pop {r3, r4, r5, pc}
	nop
_021EEAC8: .word 0x00000B83
	thumb_func_end ovy84_21eea9c

	thumb_func_start sub_021EEACC
sub_021EEACC: ; 0x021EEACC
	ldr r3, _021EEADC ; =0x00000B8C
	str r1, [r0, r3]
	add r1, r3, #4
	ldr r0, [r0, r1]
	ldr r3, _021EEAE0 ; =sub_02048580
	add r1, r2, #0
	bx r3
	nop
_021EEADC: .word 0x00000B8C
_021EEAE0: .word sub_02048580
	thumb_func_end sub_021EEACC

	thumb_func_start ovy84_21eeae4
ovy84_21eeae4: ; 0x021EEAE4
	push {r3, r4, r5, lr}
	ldr r4, _021EEB08 ; =0x00000B8C
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0x30
	beq _021EEAFE
	add r0, r1, #0
	add r1, r4, #4
	ldr r1, [r5, r1]
	bl sub_02048580
	ldr r0, [r5, r4]
	pop {r3, r4, r5, pc}
_021EEAFE:
	add r0, r1, #0
	bl sub_02048570
	mov r0, #0x30
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EEB08: .word 0x00000B8C
	thumb_func_end ovy84_21eeae4

	thumb_func_start sub_021EEB0C
sub_021EEB0C: ; 0x021EEB0C
	ldr r1, _021EEB1C ; =0x00000B8C
	mov r2, #0x30
	str r2, [r0, r1]
	add r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _021EEB20 ; =sub_02048570
	bx r3
	nop
_021EEB1C: .word 0x00000B8C
_021EEB20: .word sub_02048570
	thumb_func_end sub_021EEB0C
_021EEB24:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x31, 0x00, 0x01, 0x00, 0x41, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x07, 0x00, 0x01, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC0, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x84, 0xAC, 0x21, 0xA4, 0xAC, 0x24, 0xC4, 0xAC
	.byte 0x27, 0xE4, 0xAC, 0x2A, 0xE8, 0x18, 0x70, 0xE8, 0x90, 0x74, 0xE8, 0x2C, 0x75, 0xE8, 0x2C, 0x7B
	.byte 0x00, 0x98, 0x7A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x05, 0x62, 0x07, 0x62, 0x07, 0x62, 0x07, 0x51, 0x05, 0x01, 0x00
	.byte 0x0A, 0x00, 0x64, 0x00, 0xE8, 0x03, 0xA0, 0x10, 0x40, 0x04, 0xC0, 0x14, 0x60, 0x08, 0x18, 0x28
	.byte 0xE8, 0xF8, 0x90, 0xA0, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x03, 0x06, 0x05, 0x04, 0x05
	.byte 0x02, 0x00, 0x01, 0x03, 0x06, 0x05, 0x04, 0x07, 0x07, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x62, 0x65, 0x61, 0x63, 0x6F, 0x6E, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x5F, 0x73, 0x65, 0x74, 0x75
	.byte 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEB24
