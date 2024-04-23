    .include "macros/function.inc"
	.include "overlay208.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy208_21998c0
ovy208_21998c0: ; 0x021998C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r4, _02199A34 ; =0x000018F0
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _02199A38 ; =0x0219DDC0
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	add r2, r5, #0
	str r7, [r5, #4]
	mov r1, #7
	str r1, [r5, #0xc]
	mov r1, #0
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	str r1, [r5, #0x18]
	str r1, [r5, #0x30]
	str r1, [r5, #0x38]
	str r1, [r5, #0x3c]
	str r1, [r5, #0x40]
	add r2, #0x98
	str r1, [r2]
	add r2, r5, #0
	mov r3, #8
	add r2, #0xa4
	str r3, [r2]
	add r2, r4, #0
	sub r2, #0xc4
	strh r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0xb8
	strh r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0xb6
	strh r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0xb4
	str r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0x2a
	strb r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0x28
	str r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0x20
	str r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0x24
	str r1, [r5, r2]
	add r2, r4, #0
	mov r3, #0xff
	sub r2, #0x1c
	strh r3, [r5, r2]
	add r2, r4, #0
	sub r2, #0x2f
	strb r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0xbc
	str r1, [r5, r2]
	sub r2, r4, #4
	str r1, [r5, r2]
	add r2, r4, #0
	sub r2, #0xc2
	strh r1, [r5, r2]
	mov r6, #0xa
	str r6, [r5, #0x34]
	bl ovy208_219a16c
	add r0, r5, #0
	bl ovy208_219a364
	add r0, r5, #0
	bl ovy208_219a634
	add r0, r5, #0
	bl ovy208_219a6c0
	add r0, r5, #0
	bl ovy208_219d5a8
	add r0, r5, #0
	bl ovy208_219d308
	ldr r0, _02199A3C ; =ovy208_219a044
	add r1, r5, #0
	mov r2, #8
	bl sub_020056FC
	str r0, [r5, #8]
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldr r3, _02199A40 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r2, #1
	bl sub_020279B4
	add r0, r4, #0
	sub r0, #0xbc
	ldr r1, [r5, r0]
	mov r0, #6
	lsl r0, r0, #0xe
	add r0, r1, r0
	sub r4, #0x2e
	add r1, r5, #0
	strh r6, [r5, r4]
	add r1, #0xa8
	ldrh r2, [r1]
	ldr r1, _02199A44 ; =0x00001249
	add r3, r2, #0
	mul r3, r1
	cmp r0, r3
	blo _021999C0
	sub r0, r0, r3
	b _021999C0
_021999C0:
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r0, r5, #0
	mov r1, #8
	mov r4, #8
	bl ovy208_219c7e8
	add r0, r5, #0
	add r0, #0xa4
	str r4, [r0]
	add r0, r5, #0
	mov r6, #1
	add r0, #0x98
	str r6, [r0]
	add r0, r5, #0
	ldr r4, _02199A48 ; =0x0000182C
	mov r7, #0
	add r0, #0x9c
	str r7, [r0]
	ldrh r0, [r5, r4]
	ldr r1, _02199A44 ; =0x00001249
	blx sub_0208D65C
	lsl r0, r6, #0x10
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	str r1, [r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	bl sub_0200AF44
	cmp r0, #0
	bne _02199A18
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #8]
	bl sub_0200AF50
	add r4, #0x14
	str r6, [r5, r4]
	b _02199A1C
_02199A18:
	add r4, #0x14
	str r7, [r5, r4]
_02199A1C:
	ldr r0, _02199A4C ; =0x00000454
	ldr r1, _02199A50 ; =0x0000FFFF
	bl sub_02005DF4
	ldrh r1, [r5]
	mov r0, #0
	bl sub_02042BA8
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02199A34: .word 0x000018F0
_02199A38: .word 0x0219DDC0
_02199A3C: .word ovy208_219a044
_02199A40: .word 0x00007FFF
_02199A44: .word 0x00001249
_02199A48: .word 0x0000182C
_02199A4C: .word 0x00000454
_02199A50: .word 0x0000FFFF
	thumb_func_end ovy208_21998c0

	thumb_func_start ovy208_2199a54
ovy208_2199a54: ; 0x02199A54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	bl sub_0203D564
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	bl sub_0200AE14
	bl sub_02005D8C
	add r0, r5, #0
	bl ovy208_219d390
	add r0, r5, #0
	bl ovy208_219d6e4
	ldr r6, _02199B6C ; =0x0000184C
	ldr r0, [r5, r6]
	bl sub_0204C108
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	add r0, r6, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204C108
	mov r4, #0
	add r6, #0xc
_02199A94:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BCD0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	bls _02199A94
	ldr r6, _02199B70 ; =0x00001858
	mov r4, #3
_02199AAC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204B98C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	bls _02199AAC
	ldr r6, _02199B70 ; =0x00001858
	mov r4, #6
_02199AC4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204BE64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	bls _02199AC4
	ldr r0, _02199B74 ; =0x000018EC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02199AE4
	bl sub_02048210
_02199AE4:
	ldr r4, _02199B78 ; =0x00001848
	ldr r0, [r5, r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	bl ovy208_219ac58
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x34
	add r1, #0x38
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_021BBB88
	add r0, r4, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	bl sub_021BBA08
	ldr r0, [r5, #8]
	bl sub_0203A6A8
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	bl sub_0204E450
	add r4, #0x40
	ldr r0, [r5, r4]
	bl sub_0204A630
	bl sub_02048F44
	mov r0, #0
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	add r0, r5, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	.align 2, 0
_02199B6C: .word 0x0000184C
_02199B70: .word 0x00001858
_02199B74: .word 0x000018EC
_02199B78: .word 0x00001848
	thumb_func_end ovy208_2199a54

	thumb_func_start ovy208_2199b7c
ovy208_2199b7c: ; 0x02199B7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0xa
	bhi _02199BF4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02199B94: ; jump table
	.short _02199BFC - _02199B94 - 2 ; case 0
	.short _02199C02 - _02199B94 - 2 ; case 1
	.short _02199C08 - _02199B94 - 2 ; case 2
	.short _02199C4A - _02199B94 - 2 ; case 3
	.short _02199CC8 - _02199B94 - 2 ; case 4
	.short _02199CDA - _02199B94 - 2 ; case 5
	.short _02199C38 - _02199B94 - 2 ; case 6
	.short _02199BAA - _02199B94 - 2 ; case 7
	.short _02199BB4 - _02199B94 - 2 ; case 8
	.short _02199BE4 - _02199B94 - 2 ; case 9
	.short _02199C6A - _02199B94 - 2 ; case 10
_02199BAA:
	ldr r0, _02199EC8 ; =0x0000054E
	bl sub_02006254
	mov r0, #8
	str r0, [r4, #0xc]
_02199BB4:
	bl sub_02027ACC
	cmp r0, #1
	bne _02199BD2
	mov r0, #0x61
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02199BCE
	add r0, r4, #0
	bl ovy208_219cfd8
	b _02199BD2
_02199BCE:
	mov r0, #1
	str r0, [r4, #0xc]
_02199BD2:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #1
	bne _02199BF4
	add r0, r4, #0
	bl ovy208_219c1f0
	b _02199D0C
_02199BE4:
	bl sub_02027ACC
	cmp r0, #1
	bne _02199BF4
	bl sub_02005EC0
	cmp r0, #0
	beq _02199BF6
_02199BF4:
	b _02199D0C
_02199BF6:
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_02199BFC:
	bl ovy208_219d060
	b _02199D0C
_02199C02:
	bl ovy208_219ada0
	b _02199D0C
_02199C08:
	ldr r1, [r4, #0x10]
	add r1, r1, #6
	str r1, [r4, #0x10]
	cmp r1, #0xc0
	blt _02199C30
	mov r1, #1
	mov r2, #0
	mov r5, #0
	bl ovy208_219d3c8
	mov r0, #0xc0
	str r0, [r4, #0x10]
	mov r0, #3
	ldr r1, _02199ECC ; =0x00001838
	str r0, [r4, #0xc]
	strh r5, [r4, r1]
	add r0, r1, #2
	strh r5, [r4, r0]
	add r1, #0x8c
	strh r5, [r4, r1]
_02199C30:
	add r0, r4, #0
	bl ovy208_219c94c
	b _02199D0C
_02199C38:
	ldr r0, [r4, #0x10]
	sub r0, r0, #6
	str r0, [r4, #0x10]
	bpl _02199C48
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #0xc]
_02199C48:
	b _02199C30
_02199C4A:
	bl ovy208_219cbcc
	cmp r0, #2
	bne _02199D0C
	mov r0, #0xa
	str r0, [r4, #0xc]
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #6
	strb r1, [r4, r0]
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	b _02199D0C
_02199C6A:
	mov r5, #0x63
	lsl r5, r5, #6
	ldrb r1, [r4, r5]
	add r1, r1, #1
	strb r1, [r4, r5]
	bl ovy208_219cf44
	ldrb r0, [r4, r5]
	cmp r0, #0x3c
	bls _02199D0C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	cmp r0, #0
	bne _02199CAE
	mov r0, #0x12
	str r0, [sp]
	mov r6, #1
	str r6, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _02199ED0 ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	bl sub_020279B4
	mov r0, #0x3c
	bl sub_02005EA0
	mov r0, #9
	str r0, [r4, #0xc]
	add r5, #8
	str r6, [r4, r5]
	b _02199D0C
_02199CAE:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ovy208_219d3c8
	ldr r0, [r4, #4]
	mov r1, #0x45
	ldr r0, [r0]
	bl sub_021EF988
	mov r0, #4
_02199CC4:
	str r0, [r4, #0xc]
	b _02199D0C
_02199CC8:
	ldr r0, [r4, #4]
	mov r1, #0x45
	ldr r0, [r0]
	bl sub_021EF99C
	cmp r0, #1
	bne _02199D0C
	mov r0, #5
	b _02199CC4
_02199CDA:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl sub_021F0240
	cmp r0, #1
	bne _02199D0C
	mov r0, #0x12
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _02199ED0 ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	bl sub_020279B4
	mov r0, #0x3c
	bl sub_02005EA0
	mov r0, #9
	str r0, [r4, #0xc]
	ldr r0, _02199ED4 ; =0x000018C8
	str r5, [r4, r0]
_02199D0C:
	add r0, r4, #0
	bl ovy208_219d71c
	add r0, r4, #0
	bl ovy208_219c42c
	ldr r5, _02199ED8 ; =0x0000187C
	ldr r0, [r4, r5]
	bl sub_021BBA40
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_021BB438
	bl sub_0204B794
	bl sub_02049A98
	bl sub_02049AF0
	ldr r0, [r4, r5]
	bl sub_021BBA4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0
	mov r6, #0
	bl sub_0204EBB0
	bl sub_02049AA0
	add r0, r5, #0
	add r0, #0x45
	ldrb r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x45
	strb r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x45
	ldrb r0, [r4, r0]
	cmp r0, #1
	bls _02199D84
	add r5, #0x45
	mov r0, #3
	mov r1, #1
	mov r2, #1
	strb r6, [r4, r5]
	bl sub_02045E1C
	mov r0, #3
	mov r1, #5
	mov r2, #1
	bl sub_02045E1C
_02199D84:
	ldr r5, _02199ED4 ; =0x000018C8
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _02199E00
	sub r0, r5, #2
	ldrb r0, [r4, r0]
	cmp r0, #0x80
	bhs _02199D9C
	sub r0, r5, #2
	ldrb r1, [r4, r0]
	add r1, #8
	b _02199E9C
_02199D9C:
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02199DA8
	b _02199EBC
_02199DA8:
	add r0, r5, #0
	mov r6, #1
	add r0, #8
	str r6, [r4, r0]
	mov r0, #7
	mov r1, #0
	mov r7, #0
	bl sub_02045764
	mov r0, #4
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #7
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r6, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x24
	sub r5, #0x88
	str r0, [r4, r1]
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _02199DE6
	add r0, r4, #0
	bl ovy208_219d450
	b _02199DF0
_02199DE6:
	add r0, r4, #0
	mov r1, #6
	add r2, r7, #0
	bl ovy208_219d3c8
_02199DF0:
	ldr r0, _02199EDC ; =0x000018EC
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0x80
	mov r3, #0xc
	bl sub_02024E80
	b _02199EBC
_02199E00:
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02199E82
	add r0, r4, #0
	mov r1, #2
	bl sub_0219D888
	add r0, r5, #0
	mov r6, #0
	add r0, #8
	str r6, [r4, r0]
	mov r0, #7
	mov r1, #3
	bl sub_02044BD8
	mov r0, #4
	mov r1, #0
	bl sub_02044BD8
	mov r0, #5
	mov r1, #1
	bl sub_02044BD8
	mov r0, #6
	mov r1, #2
	bl sub_02044BD8
	add r0, r4, #0
	mov r1, #4
	bl sub_0219D888
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0xd
	mov r2, #7
	str r0, [sp, #8]
	mov r0, #0x2d
	mov r3, #0
	bl sub_0204AF18
	mov r0, #7
	bl sub_02045B7C
	add r0, r5, #4
	str r6, [r4, r0]
	add r0, r5, #0
	add r0, #0x20
	ldr r0, [r4, r0]
	bl sub_02021C44
	add r0, r5, #0
	add r0, #0x24
	ldr r0, [r4, r0]
	bl sub_02048210
	add r5, #0x24
	add r0, r4, #0
	mov r1, #6
	str r6, [r4, r5]
	bl sub_0219D888
	b _02199EBC
_02199E82:
	sub r0, r5, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _02199EBC
	add r1, #0x60
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0219D888
	sub r0, r5, #2
	ldrb r1, [r4, r0]
	sub r1, #8
_02199E9C:
	strb r1, [r4, r0]
	sub r2, r5, #2
	ldrb r3, [r4, r2]
	mov r2, #0x80
	mov r0, #6
	mov r1, #0
	sub r2, r2, r3
	bl sub_02045E1C
	sub r2, r5, #2
	ldrb r2, [r4, r2]
	mov r0, #5
	mov r1, #0
	sub r2, #0x80
	bl sub_02045E1C
_02199EBC:
	add r0, r4, #0
	mov r1, #8
	bl sub_0219D888
	ldr r5, _02199EE0 ; =0x000018CC
	b _02199EE4
	.align 2, 0
_02199EC8: .word 0x0000054E
_02199ECC: .word 0x00001838
_02199ED0: .word 0x00007FFF
_02199ED4: .word 0x000018C8
_02199ED8: .word 0x0000187C
_02199EDC: .word 0x000018EC
_02199EE0: .word 0x000018CC
_02199EE4:
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _02199F32
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _02199F32
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _02199F1A
	bl sub_0219D9CC
	add r1, r5, #0
	add r1, #8
	ldrh r1, [r4, r1]
	ldrh r0, [r0]
	cmp r1, r0
	beq _02199F1A
	ldr r1, [r4, #0x38]
	add r0, r4, #0
	bl ovy208_219d47c
	ldr r0, [r4, #0x38]
	bl sub_0219D9CC
	ldrh r0, [r0]
	add r5, #8
	b _02199F30
_02199F1A:
	ldr r5, _0219A030 ; =0x000018D4
	ldrh r0, [r4, r5]
	cmp r0, #0xff
	beq _02199F32
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _02199F32
	add r0, r4, #0
	bl ovy208_219d450
	mov r0, #0xff
_02199F30:
	strh r0, [r4, r5]
_02199F32:
	add r0, r4, #0
	mov r1, #0xa
	bl sub_0219D888
	ldr r5, _0219A034 ; =0x000018CC
	ldr r0, [r4, r5]
	cmp r0, #1
	bne _02199F8E
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	bl sub_02021C0C
	cmp r0, #1
	bne _02199F8E
	mov r0, #0
	str r0, [r4, r5]
	add r5, #0x20
	ldr r5, [r4, r5]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #4
	mov r1, #1
	bl sub_02044BD8
	mov r0, #5
	mov r1, #2
	bl sub_02044BD8
	mov r0, #6
	mov r1, #3
	bl sub_02044BD8
	mov r0, #7
	mov r1, #0
	bl sub_02044BD8
_02199F8E:
	add r0, r4, #0
	mov r1, #0xc
	bl sub_0219D888
	ldr r0, _0219A038 ; =0x000018E8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02199FA2
	bl sub_02021A3C
_02199FA2:
	add r0, r4, #0
	mov r1, #0xe
	bl sub_0219D888
	ldr r0, _0219A03C ; =0x000018C2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _02199FB6
	sub r1, r1, #1
	strh r1, [r4, r0]
_02199FB6:
	ldr r0, [r4, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219A020
	ldr r0, [r4, #0xc]
	cmp r0, #7
	beq _0219A020
	cmp r0, #8
	beq _0219A020
	cmp r0, #9
	beq _0219A020
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0219D888
	bl sub_020120C8
	cmp r0, #0
	beq _0219A018
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0219D888
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _0219A040 ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	bl sub_020279B4
	mov r0, #0x3c
	bl sub_02005EA0
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0219D888
	mov r0, #9
	str r0, [r4, #0xc]
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0219D888
	b _0219A020
_0219A018:
	add r0, r4, #0
	mov r1, #0x40
	bl sub_0219D888
_0219A020:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0219D888
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219A030: .word 0x000018D4
_0219A034: .word 0x000018CC
_0219A038: .word 0x000018E8
_0219A03C: .word 0x000018C2
_0219A040: .word 0x00007FFF
	thumb_func_end ovy208_2199b7c

	thumb_func_start ovy208_219a044
ovy208_219a044: ; 0x0219A044
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r7, _0219A160 ; =0x0000181C
	add r5, r1, #0
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	ldr r0, _0219A164 ; =0x00000000
	str r0, [sp, #0xc]
	beq _0219A090
	add r7, #0x68
_0219A05C:
	add r0, r4, #0
	bl sub_0219D9D8
	add r0, r4, #0
	bl sub_0219D9CC
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219D9D4
	add r2, r0, #0
	ldrh r1, [r6]
	ldrh r0, [r2]
	cmp r1, r0
	beq _0219A086
	ldr r1, [r5, r7]
	add r0, r4, #0
	bl ovy208_219d9ac
	mov r0, #1
	str r0, [sp, #0xc]
_0219A086:
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219A05C
_0219A090:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0219A09C
	add r0, r5, #0
	bl ovy208_219b1d8
_0219A09C:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219A150
	bl sub_0219D9CC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x50
	ldrh r1, [r0]
	ldrh r0, [r6]
	cmp r1, r0
	beq _0219A150
	ldr r4, _0219A168 ; =0x00001884
	ldr r0, [r5, r4]
	bl sub_021BB9B8
	add r7, r0, #0
	add r0, r5, #0
	ldrh r1, [r6]
	add r0, #0x50
	add r2, sp, #0x18
	strh r1, [r0]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x54]
	bl sub_0204E820
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r6, #4]
	add r2, sp, #0x14
	bl sub_0204E7F8
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x54]
	ldr r2, [sp, #0x14]
	bl sub_0204E808
	add r1, r5, #0
	add r1, #0x50
	ldrh r1, [r1]
	add r0, r7, #0
	bl sub_021EEF78
	bl sub_021EEF94
	add r1, sp, #0x10
	add r6, r0, #0
	add r1, #2
	add r2, sp, #0x10
	bl sub_0204E4D0
	str r6, [sp]
	add r1, sp, #0x10
	ldrh r0, [r1, #2]
	mov r3, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl sub_0204E664
	add r2, r5, #0
	add r2, #0x50
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrh r2, [r2]
	ldr r0, [r5, r4]
	ldr r1, [r5, #0x4c]
	add r3, r6, #0
	bl sub_021BB81C
	add r4, #8
	ldr r0, [r5, r4]
	ldr r1, [r5, #0x54]
	bl sub_0204E73C
	str r6, [r5, #0x54]
_0219A150:
	bl sub_0204B7C8
	ldr r0, _0219A168 ; =0x00001884
	ldr r0, [r5, r0]
	bl sub_021BB54C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219A160: .word 0x0000181C
_0219A164: .word 0x00000000
_0219A168: .word 0x00001884
	thumb_func_end ovy208_219a044

	thumb_func_start ovy208_219a16c
ovy208_219a16c: ; 0x0219A16C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r1, [r4]
	ldr r0, _0219A310 ; =0xFFFFE0FF
	ldr r6, _0219A314 ; =0x04001000
	and r1, r0
	str r1, [r4]
	ldr r1, [r6]
	mov r7, #0
	and r0, r1
	str r0, [r6]
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	mov r0, #0
	bl sub_02027B4C
	mov r0, #1
	bl sub_02027B4C
	add r0, r4, #0
	add r0, #0x50
	strh r7, [r0]
	add r6, #0x50
	ldr r2, _0219A318 ; =0x04000304
	strh r7, [r6]
	ldrh r1, [r2]
	ldr r0, _0219A31C ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	ldr r0, _0219A320 ; =0x0219DCD8
	bl sub_02046C40
	str r7, [sp]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #1
	str r7, [sp, #8]
	bl sub_02048D28
	mov r0, #0
	mov r1, #1
	bl sub_02049214
	mov r0, #2
	lsl r0, r0, #0xf
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xb
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r1, #3
	ldr r0, _0219A324 ; =0x0219DBB4
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219A328 ; =0x0219DBCC
	lsl r1, r1, #0xe
	str r0, [sp, #0x14]
	ldr r0, _0219A32C ; =0x0219DBC0
	mov r2, #0
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	mov r3, #0
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0204A5C8
	ldr r1, _0219A330 ; =0x00001888
	str r0, [r5, r1]
	bl sub_0204A638
	ldr r0, _0219A334 ; =0x0219DBD8
	bl G3X_SetEdgeColorTable
	add r4, #0x60
	ldrh r1, [r4]
	ldr r0, _0219A338 ; =0x0000CFDF
	and r0, r1
	strh r0, [r4]
	add r0, r7, #0
	add r1, r7, #0
	bl sub_02049214
	ldrh r0, [r5]
	bl sub_020444A4
	ldrh r0, [r5]
	bl sub_02048080
	ldr r0, _0219A33C ; =0x0219DBE8
	bl sub_02044710
	mov r0, #1
	bl sub_02044BB8
	ldr r0, _0219A340 ; =0x0219DBF8
	mov r1, #1
	bl ovy208_219a60c
	ldr r0, _0219A344 ; =0x0219DC18
	mov r1, #2
	bl ovy208_219a60c
	ldr r0, _0219A348 ; =0x0219DC38
	mov r1, #3
	bl ovy208_219a60c
	ldr r0, _0219A34C ; =0x0219DCB8
	mov r1, #7
	bl ovy208_219a60c
	ldr r0, _0219A350 ; =0x0219DC58
	mov r1, #4
	bl ovy208_219a60c
	ldr r0, _0219A354 ; =0x0219DC78
	mov r1, #5
	bl ovy208_219a60c
	ldr r0, _0219A358 ; =0x0219DC98
	mov r1, #6
	bl ovy208_219a60c
	add r0, r7, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0xf
	mov r3, #4
	bl G2x_SetBlendAlpha_
	ldr r4, _0219A35C ; =0x02093F08
	add r3, sp, #0x3c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r1, _0219A320 ; =0x0219DCD8
	str r0, [r3]
	mov r0, #0x10
	strb r0, [r2, #8]
	mov r0, #0x70
	strb r0, [r2, #9]
	add r0, r2, #0
	ldrh r2, [r5]
	bl sub_0204B6A8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	ldrh r2, [r5]
	mov r0, #0x18
	add r1, r7, #0
	bl sub_0204BF1C
	ldr r1, _0219A330 ; =0x00001888
	sub r1, #0x40
	str r0, [r5, r1]
	bl sub_0204C028
	ldr r4, _0219A360 ; =0x0219DD84
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldrh r1, [r5]
	add r0, r2, #0
	bl sub_0204E390
	ldr r1, _0219A330 ; =0x00001888
	add r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A310: .word 0xFFFFE0FF
_0219A314: .word 0x04001000
_0219A318: .word 0x04000304
_0219A31C: .word 0xFFFF7FFF
_0219A320: .word 0x0219DCD8
_0219A324: .word 0x0219DBB4
_0219A328: .word 0x0219DBCC
_0219A32C: .word 0x0219DBC0
_0219A330: .word 0x00001888
_0219A334: .word 0x0219DBD8
_0219A338: .word 0x0000CFDF
_0219A33C: .word 0x0219DBE8
_0219A340: .word 0x0219DBF8
_0219A344: .word 0x0219DC18
_0219A348: .word 0x0219DC38
_0219A34C: .word 0x0219DCB8
_0219A350: .word 0x0219DC58
_0219A354: .word 0x0219DC78
_0219A358: .word 0x0219DC98
_0219A35C: .word 0x02093F08
_0219A360: .word 0x0219DD84
	thumb_func_end ovy208_219a16c

	thumb_func_start ovy208_219a364
ovy208_219a364: ; 0x0219A364
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x2d
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #4
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xc
	mov r2, #3
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xb
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xa
	mov r2, #4
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #9
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x10
	mov r2, #4
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xe
	mov r2, #5
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xd
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	mov r7, #0xd
	bl sub_0204AF50
	mov r0, #6
	mov r1, #0
	mov r2, #0x80
	bl sub_02045E1C
	sub r7, #0x8d
	mov r0, #5
	mov r1, #0
	add r2, r7, #0
	bl sub_02045E1C
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204BBA0
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #8
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0x18
	add r1, #0xc
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x14
	bl sub_0204BDE0
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #1
	add r1, #0x18
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #1
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BBA0
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0
	add r1, #8
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #6
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0x17
	add r1, #0x14
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0204BDE0
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0
	add r1, #0x20
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #0
	mov r3, #0x40
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BBA0
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0
	add r1, r1, #4
	str r0, [r5, r1]
	ldrh r0, [r5]
	mov r1, #5
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	ldr r1, _0219A608 ; =0x00001858
	mov r2, #0x15
	add r1, #0x10
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0204BDE0
	ldr r1, _0219A608 ; =0x00001858
	ldr r3, _0219A608 ; =0x00001858
	add r1, #0x1c
	str r0, [r5, r1]
	ldr r1, _0219A608 ; =0x00001858
	mov r0, #0x20
	add r7, sp, #0xc
	strh r0, [r7]
	mov r0, #0xe0
	strh r0, [r7, #2]
	strh r6, [r7, #4]
	strb r6, [r7, #6]
	mov r0, #2
	strb r0, [r7, #7]
	add r0, sp, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	ldr r2, _0219A608 ; =0x00001858
	add r1, #0xc
	str r0, [sp, #8]
	ldr r0, _0219A608 ; =0x00001858
	add r3, #0x18
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, _0219A608 ; =0x00001858
	ldr r3, _0219A608 ; =0x00001858
	sub r1, #0xc
	str r0, [r5, r1]
	mov r0, #0xe0
	strh r0, [r7]
	strh r0, [r7, #2]
	mov r0, #1
	strh r0, [r7, #4]
	add r0, sp, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	ldr r1, _0219A608 ; =0x00001858
	ldr r2, _0219A608 ; =0x00001858
	str r0, [sp, #8]
	ldr r0, _0219A608 ; =0x00001858
	add r1, #0xc
	sub r0, #0x10
	add r3, #0x18
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, _0219A608 ; =0x00001858
	ldr r3, _0219A608 ; =0x00001858
	sub r1, #8
	str r0, [r5, r1]
	mov r0, #0x80
	strh r0, [r7]
	mov r0, #0x60
	strh r0, [r7, #2]
	mov r0, #2
	strh r0, [r7, #4]
	strb r6, [r7, #6]
	ldr r1, _0219A608 ; =0x00001858
	strb r6, [r7, #7]
	add r0, sp, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	ldr r2, _0219A608 ; =0x00001858
	add r1, #0xc
	str r0, [sp, #8]
	ldr r0, _0219A608 ; =0x00001858
	add r3, #0x18
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, _0219A608 ; =0x00001858
	sub r1, r1, #4
	str r0, [r5, r1]
	ldr r0, _0219A608 ; =0x00001858
	mov r1, #1
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldr r0, _0219A608 ; =0x00001858
	mov r1, #1
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldr r0, _0219A608 ; =0x00001858
	mov r1, #0
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0204C124
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #3
	bl sub_02044F90
	mov r0, #2
	bl sub_02044F90
	mov r0, #7
	bl sub_02044F90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219A608: .word 0x00001858
	thumb_func_end ovy208_219a364

	thumb_func_start ovy208_219a60c
ovy208_219a60c: ; 0x0219A60C
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl sub_02044F90
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy208_219a60c

	thumb_func_start ovy208_219a634
ovy208_219a634: ; 0x0219A634
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	bl sub_021BB9BC
	ldr r4, _0219A6B8 ; =0x0000187C
	mov r6, #5
	lsl r6, r6, #0x10
	str r0, [r5, r4]
	add r1, r6, #0
	bl sub_021BBC90
	ldr r0, [r5, r4]
	ldr r1, _0219A6BC ; =0x00003FE0
	bl sub_021BBC9C
	ldr r1, [r5, #4]
	ldr r0, [r5, r4]
	ldr r1, [r1, #4]
	mov r2, #0
	bl sub_021BBA5C
	add r1, r4, #4
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_021BBA40
	ldr r0, [r5, r4]
	bl sub_021BBA4C
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_021BBCB4
	mov r1, #2
	ldr r2, [r0]
	lsl r1, r1, #0x12
	sub r2, r1, r2
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp]
	ldr r1, [r0, #4]
	mov r0, #7
	lsl r0, r0, #0x10
	sub r1, r0, r1
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	lsr r0, r6, #1
	str r0, [sp, #8]
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_021BBBA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0219A6B8: .word 0x0000187C
_0219A6BC: .word 0x00003FE0
	thumb_func_end ovy208_219a634

	thumb_func_start ovy208_219a6c0
ovy208_219a6c0: ; 0x0219A6C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r4, r0, #0
	mov r5, #0
	add r0, #0xa8
	add r6, r4, #0
	strh r5, [r0]
	add r7, r5, #0
	add r6, #0xa8
_0219A6D2:
	ldr r0, [r4, #4]
	lsl r1, r5, #0x18
	ldr r0, [r0, #8]
	lsr r1, r1, #0x18
	bl sub_0200AD60
	cmp r0, #1
	bne _0219A73C
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r4, r0
	add r0, #0xac
	strh r5, [r0]
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r4, r0
	add r0, #0xb8
	str r7, [r0]
	ldr r0, [r4, #4]
	lsl r1, r5, #0x18
	ldr r0, [r0, #8]
	lsr r1, r1, #0x18
	bl sub_0200AD9C
	cmp r0, #1
	bne _0219A726
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	mov r0, #0x14
	mul r0, r1
	add r1, r4, r0
	add r1, #0xbc
	mov r0, #1
	str r0, [r1]
	b _0219A736
_0219A726:
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	mov r0, #0x14
	mul r0, r1
	add r0, r4, r0
	add r0, #0xbc
	str r7, [r0]
_0219A736:
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_0219A73C:
	add r5, r5, #1
	cmp r5, #0xfa
	blt _0219A6D2
	add r0, r4, #0
	add r0, #0xa8
	ldrh r6, [r0]
	mov r3, #0
	cmp r6, #0xfa
	bge _0219A792
	mov r2, #0xff
	add r1, r3, #0
	mov r0, #1
	mov r7, #0x14
_0219A756:
	add r6, r6, r3
	mov r5, #0x14
	mul r5, r6
	add r5, r4, r5
	add r5, #0xac
	strh r2, [r5]
	add r5, r4, #0
	add r5, #0xa8
	ldrh r5, [r5]
	add r6, r5, r3
	mov r5, #0x14
	mul r5, r6
	add r5, r4, r5
	add r5, #0xb8
	str r1, [r5]
	add r5, r4, #0
	add r5, #0xa8
	ldrh r5, [r5]
	add r3, r3, #1
	add r6, r5, #0
	mul r6, r7
	add r5, r4, r6
	add r5, #0xbc
	str r0, [r5]
	add r5, r4, #0
	add r5, #0xa8
	ldrh r6, [r5]
	add r5, r6, r3
	cmp r5, #0xfa
	blt _0219A756
_0219A792:
	ldr r5, _0219AB0C ; =0x0000188C
	ldrh r2, [r4]
	ldr r0, [r4, r5]
	mov r1, #0x98
	bl sub_021BB368
	sub r5, #8
	str r0, [r4, r5]
	bl sub_021BB9B8
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xa8
	ldrh r0, [r0]
	cmp r0, #0
	bgt _0219A7B8
	b _0219A8FC
_0219A7B8:
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	mul r1, r0
	add r0, r4, r1
	add r0, #0xac
	ldrh r0, [r0]
	str r1, [sp, #0x28]
	bl sub_021BB5E4
	str r0, [sp, #0x20]
	bl sub_020494AC
	ldr r0, [sp, #0x20]
	bl sub_020496D8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	bl sub_020496FC
	add r6, r0, #0
	ldr r0, _0219AB10 ; =0xFFFF0000
	ldr r3, _0219AB14 ; =0x0209B1B0
	and r0, r6
	lsr r0, r0, #0x10
	lsl r7, r0, #3
	ldr r3, [r3]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0
	mov r5, #0
	blx r3
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x14]
	add r1, r4, r1
	add r1, #0xac
	ldrh r1, [r1]
	ldr r0, [sp, #0x24]
	bl sub_021EEF78
	bl sub_021EEF94
	add r1, sp, #0x44
	str r0, [sp, #0x18]
	add r1, #2
	add r2, sp, #0x44
	bl sub_0204E4D0
	ldr r0, [sp, #0x18]
	add r1, sp, #0x40
	str r0, [sp]
	ldrh r0, [r1, #6]
	add r2, r6, #0
	mov r3, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1, #4]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _0219AB0C ; =0x0000188C
	ldr r0, [r4, r0]
	bl sub_0204E664
	ldr r1, [sp, #0x28]
	add r1, r4, r1
	add r1, #0xb0
	str r0, [r1]
	ldr r0, [sp, #0x20]
	bl sub_02049720
	add r3, r0, #0
	lsr r0, r7, #1
	str r0, [sp, #0x3c]
	beq _0219A890
	mov r0, #0x1f
	lsl r0, r0, #0xa
	lsr r0, r0, #5
	mov ip, r0
_0219A858:
	lsl r2, r5, #1
	ldrh r1, [r3, r2]
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r1
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	lsl r7, r0, #0xa
	mov r0, #0x1f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x1b
	mov r0, ip
	and r0, r1
	asr r0, r0, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	lsl r0, r0, #5
	orr r0, r6
	orr r0, r7
	strh r0, [r3, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x3c]
	cmp r5, r0
	blo _0219A858
_0219A890:
	ldr r0, [sp, #0x20]
	bl sub_02049430
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_02049620
	ldr r1, [sp, #0x14]
	add r6, r0, #0
	bl sub_020652C8
	ldr r1, [r5, #8]
	add r0, r5, #0
	blx DC_FlushRange
	add r0, r6, #0
	mov r1, #1
	bl sub_020652CC
	ldr r0, [sp, #0x18]
	add r1, sp, #0x40
	str r0, [sp]
	ldrh r0, [r1, #6]
	ldr r2, [sp, #0x14]
	mov r3, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1, #4]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _0219AB0C ; =0x0000188C
	ldr r0, [r4, r0]
	bl sub_0204E664
	ldr r1, [sp, #0x28]
	add r1, r4, r1
	add r1, #0xb4
	str r0, [r1]
	ldr r0, [sp, #0x20]
	bl sub_021BB5F4
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _0219A8FC
	b _0219A7B8
_0219A8FC:
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	mov r6, #0
	bl ovy208_219c7e8
	ldrh r0, [r4]
	mov r1, #0xe
	bl ovy208_219d88c
	ldr r1, _0219AB18 ; =0x0000181C
	str r0, [r4, r1]
	ldrh r0, [r4]
	mov r1, #0x80
	bl ovy208_219d88c
	ldr r1, _0219AB18 ; =0x0000181C
	add r1, r1, #4
	str r0, [r4, r1]
	ldrh r0, [r4]
	mov r1, #9
	bl ovy208_219d88c
	ldr r1, _0219AB18 ; =0x0000181C
	add r1, #8
	str r0, [r4, r1]
	ldrh r0, [r4]
	mov r1, #4
	bl ovy208_219d88c
	ldr r1, _0219AB18 ; =0x0000181C
	add r5, r6, #0
	add r1, #0xc
	str r0, [r4, r1]
	add r0, r4, #0
	str r0, [sp, #0x2c]
	add r0, #0xac
	str r0, [sp, #0x2c]
	ldr r0, _0219AB18 ; =0x0000181C
	str r0, [sp, #0x38]
	add r0, #0x68
	str r0, [sp, #0x38]
	ldr r0, _0219AB18 ; =0x0000181C
	str r0, [sp, #0x34]
	add r0, #0x68
	str r0, [sp, #0x34]
_0219A958:
	add r0, sp, #0x60
	ldr r1, [sp, #0x38]
	mov r2, #0x14
	add r3, r6, #0
	mul r3, r2
	ldr r2, [sp, #0x2c]
	str r5, [r0]
	add r2, r2, r3
	str r5, [r0, #4]
	str r5, [r0, #8]
	ldrh r0, [r4]
	ldr r1, [r4, r1]
	add r3, sp, #0x60
	bl ovy208_219d95c
	add r7, r0, #0
	ldr r0, _0219AB18 ; =0x0000181C
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0219D8C0
	add r0, r7, #0
	bl sub_0219D9D8
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	add r2, r5, #0
	ldr r0, [r4, r0]
	bl sub_021BB990
	add r6, r6, #1
	cmp r6, #0xe
	blt _0219A958
	add r0, sp, #0x54
	str r5, [r0]
	add r1, r4, #0
	str r5, [r0, #4]
	str r5, [r0, #8]
	add r0, r4, #0
	add r0, #0x50
	strh r5, [r0]
	add r1, #0x50
	ldrh r1, [r1]
	ldr r0, [sp, #0x24]
	bl sub_021EEF78
	bl sub_021EEF94
	add r1, sp, #0x40
	add r1, #2
	add r2, sp, #0x40
	add r7, r0, #0
	bl sub_0204E4D0
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	bl sub_021BB5E4
	add r6, r0, #0
	bl sub_020494AC
	add r0, r6, #0
	bl sub_020496D8
	str r0, [sp, #0x30]
	add r0, r6, #0
	bl sub_020496FC
	str r7, [sp]
	add r1, sp, #0x40
	add r2, r0, #0
	ldrh r0, [r1, #2]
	add r3, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r1]
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _0219AB0C ; =0x0000188C
	ldr r0, [r4, r0]
	bl sub_0204E664
	add r2, r0, #0
	ldr r0, _0219AB0C ; =0x0000188C
	add r1, r4, #0
	add r1, #0x50
	str r2, [r4, #0x54]
	sub r0, #8
	ldrh r1, [r1]
	ldr r0, [r4, r0]
	add r3, sp, #0x54
	bl sub_021BB6C4
	add r1, r0, #0
	ldr r0, _0219AB0C ; =0x0000188C
	str r1, [r4, #0x4c]
	sub r0, #8
	ldr r0, [r4, r0]
	add r2, r5, #0
	bl sub_021BB914
	ldr r0, _0219AB0C ; =0x0000188C
	mov r2, #1
	sub r0, #8
	lsl r2, r2, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x4c]
	add r3, r2, #0
	bl sub_021BB95C
	ldr r0, _0219AB0C ; =0x0000188C
	ldr r1, [r4, #0x4c]
	sub r0, #8
	ldr r0, [r4, r0]
	add r2, r6, #0
	bl sub_021BB888
	add r0, r6, #0
	bl sub_021BB5F4
	mov r0, #0x22
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0219AB0C ; =0x0000188C
	mov r1, #0x2d
	ldr r0, [r4, r0]
	mov r2, #0x19
	mov r3, #2
	bl sub_0204E614
	str r0, [r4, #0x58]
	ldr r0, _0219AB0C ; =0x0000188C
	mov r6, #0
	add r7, r4, r0
_0219AA70:
	add r0, sp, #0x48
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, _0219AB0C ; =0x0000188C
	mov r2, #1
	lsl r2, r2, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x58]
	add r3, r2, #0
	bl sub_0204E8CC
	add r1, r0, #0
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x5c]
	ldr r0, [r7]
	ldr r2, _0219AB1C ; =0x0219DBA0
	bl sub_0204EAC8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xe
	blo _0219AA70
	add r0, r4, #0
	add r0, #0x94
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl sub_0200AD44
	add r5, r0, #0
	mov r7, #6
_0219AABE:
	add r0, r6, #0
	mul r0, r7
	add r1, r5, r0
	ldrb r0, [r5, r0]
	cmp r0, #0xa
	beq _0219AAD2
	ldrh r1, [r1, #2]
	add r0, r4, #0
	bl ovy208_219ab28
_0219AAD2:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #8
	blo _0219AABE
	add r0, r4, #0
	bl ovy208_219b1d8
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	ldr r0, _0219AB20 ; =0x00001249
	mov r3, #0x48
	add r2, r1, #0
	mul r2, r0
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r2, r0
	ldr r0, _0219AB24 ; =0x00001834
	mov r2, #0
	str r1, [r4, r0]
	mov r0, #0x30
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl ovy208_219ae1c
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219AB0C: .word 0x0000188C
_0219AB10: .word 0xFFFF0000
_0219AB14: .word 0x0209B1B0
_0219AB18: .word 0x0000181C
_0219AB1C: .word 0x0219DBA0
_0219AB20: .word 0x00001249
_0219AB24: .word 0x00001834
	thumb_func_end ovy208_219a6c0

	thumb_func_start ovy208_219ab28
ovy208_219ab28: ; 0x0219AB28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xa8
	ldrh r2, [r0]
	add r3, r1, #0
	mov r7, #0
	mov r1, #0
	cmp r2, #0
	ble _0219AB5E
	mov r5, #0x14
_0219AB3E:
	add r0, r1, #0
	mul r0, r5
	add r6, r4, r0
	add r6, #0xac
	ldrh r6, [r6]
	cmp r3, r6
	bne _0219AB54
	add r1, r4, #0
	add r1, #0xac
	add r7, r1, r0
	b _0219AB5E
_0219AB54:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r2
	blt _0219AB3E
_0219AB5E:
	cmp r7, #0
	beq _0219AC10
	add r0, r4, #0
	add r1, sp, #0
	bl ovy208_219ac18
	ldr r0, [sp]
	cmp r0, #0
	ble _0219AB82
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219AB90
_0219AB82:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219AB90:
	blx sub_0208DA4C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0219ABAE
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219ABBC
_0219ABAE:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219ABBC:
	blx sub_0208DA4C
	ldr r5, _0219AC14 ; =0x00001820
	str r0, [sp, #0xc]
	ldr r0, [r4, r5]
	bl sub_0219D948
	lsl r1, r0, #0xa
	mov r0, #0xa
	lsl r0, r0, #0xc
	sub r0, r0, r1
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r1, #0x64
	ldrh r0, [r4]
	ldr r1, [r4, r1]
	add r2, r7, #0
	add r3, sp, #8
	bl ovy208_219d95c
	add r6, r0, #0
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl sub_0219D8C0
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0219D9DC
	add r0, r6, #0
	bl sub_0219D9D8
	mov r2, #1
	lsl r2, r2, #0xc
	add r5, #0x64
	add r1, r0, #0
	ldr r0, [r4, r5]
	add r3, r2, #0
	bl sub_021BB95C
	mov r0, #1
	str r0, [r7, #0xc]
_0219AC10:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219AC14: .word 0x00001820
	thumb_func_end ovy208_219ab28

	thumb_func_start ovy208_219ac18
ovy208_219ac18: ; 0x0219AC18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r4, #0xf0
	mov r6, #0x80
	mov r7, #0x54
_0219AC22:
	add r0, r4, #0
	bl sub_02005784
	add r0, #8
	str r0, [r5]
	add r0, r6, #0
	bl sub_02005784
	add r1, r0, #0
	ldr r0, [r5]
	add r1, #0x20
	str r1, [r5, #4]
	sub r0, #0x80
	sub r1, #0x50
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	ldr r3, _0219AC54 ; =0x3F3D37A7
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r7, #0
	bl ovy208_219c7b4
	cmp r0, #1
	beq _0219AC22
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AC54: .word 0x3F3D37A7
	thumb_func_end ovy208_219ac18

	thumb_func_start ovy208_219ac58
ovy208_219ac58: ; 0x0219AC58
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0219AD8C ; =0x0000181C
	add r5, r0, #0
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219AC80
	add r7, #0x68
_0219AC6A:
	add r0, r4, #0
	bl sub_0219D9C8
	add r6, r0, #0
	ldr r1, [r5, r7]
	add r0, r4, #0
	bl ovy208_219d998
	add r4, r6, #0
	cmp r6, #0
	bne _0219AC6A
_0219AC80:
	ldr r7, _0219AD90 ; =0x00001820
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219ACA4
	add r7, #0x64
_0219AC8E:
	add r0, r4, #0
	bl sub_0219D9C8
	add r6, r0, #0
	ldr r1, [r5, r7]
	add r0, r4, #0
	bl ovy208_219d998
	add r4, r6, #0
	cmp r6, #0
	bne _0219AC8E
_0219ACA4:
	ldr r7, _0219AD94 ; =0x00001824
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219ACC8
	add r7, #0x60
_0219ACB2:
	add r0, r4, #0
	bl sub_0219D9C8
	add r6, r0, #0
	ldr r1, [r5, r7]
	add r0, r4, #0
	bl ovy208_219d998
	add r4, r6, #0
	cmp r6, #0
	bne _0219ACB2
_0219ACC8:
	ldr r7, _0219AD98 ; =0x00001828
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219ACEC
	add r7, #0x5c
_0219ACD6:
	add r0, r4, #0
	bl sub_0219D9C8
	add r6, r0, #0
	ldr r1, [r5, r7]
	add r0, r4, #0
	bl ovy208_219d998
	add r4, r6, #0
	cmp r6, #0
	bne _0219ACD6
_0219ACEC:
	ldr r6, _0219AD9C ; =0x0000188C
	mov r4, #0
_0219ACF0:
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r0, [r5, r6]
	ldr r1, [r1, #0x5c]
	bl sub_0204E9D0
	add r4, r4, #1
	cmp r4, #0xe
	blt _0219ACF0
	ldr r0, _0219AD9C ; =0x0000188C
	ldr r1, [r5, #0x58]
	ldr r0, [r5, r0]
	bl sub_0204E70C
	ldr r0, _0219AD9C ; =0x0000188C
	ldr r1, [r5, #0x4c]
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_021BB7E8
	ldr r0, _0219AD9C ; =0x0000188C
	ldr r1, [r5, #0x54]
	ldr r0, [r5, r0]
	bl sub_0204E70C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _0219AD5E
	ldr r0, _0219AD9C ; =0x0000188C
	add r7, r5, r0
_0219AD32:
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	ldr r0, _0219AD9C ; =0x0000188C
	add r1, r5, r6
	add r1, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	bl sub_0204E70C
	add r1, r5, r6
	add r1, #0xb4
	ldr r0, [r7]
	ldr r1, [r1]
	bl sub_0204E70C
	add r0, r5, #0
	add r0, #0xa8
	ldrh r0, [r0]
	add r4, r4, #1
	cmp r4, r0
	blt _0219AD32
_0219AD5E:
	ldr r4, _0219AD8C ; =0x0000181C
	ldr r0, [r5, r4]
	bl sub_0219D8B8
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0219D8B8
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0219D8B8
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0219D8B8
	add r4, #0x68
	ldr r0, [r5, r4]
	bl sub_021BB3F0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AD8C: .word 0x0000181C
_0219AD90: .word 0x00001820
_0219AD94: .word 0x00001824
_0219AD98: .word 0x00001828
_0219AD9C: .word 0x0000188C
	thumb_func_end ovy208_219ac58

	thumb_func_start ovy208_219ada0
ovy208_219ada0: ; 0x0219ADA0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x98
	ldr r1, [r1]
	cmp r1, #1
	bne _0219ADB6
	bl ovy208_219c1f0
	b _0219ADC0
_0219ADB6:
	bl ovy208_219b230
	add r0, r4, #0
	bl ovy208_219c288
_0219ADC0:
	add r0, r4, #0
	bl ovy208_219c768
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0x5a
	blo _0219ADF6
	add r0, r4, #0
	mov r2, #0
	add r0, #0x94
	strh r2, [r0]
	mov r0, #0x30
	str r0, [sp]
	ldr r1, _0219AE18 ; =0x0000182C
	add r0, r4, #0
	ldrh r1, [r4, r1]
	mov r3, #0x48
	bl ovy208_219ae1c
_0219ADF6:
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0x2d
	bne _0219AE12
	mov r0, #0x30
	str r0, [sp]
	ldr r1, _0219AE18 ; =0x0000182C
	add r0, r4, #0
	ldrh r1, [r4, r1]
	mov r2, #0
	mov r3, #0x48
	bl ovy208_219ae1c
_0219AE12:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219AE18: .word 0x0000182C
	thumb_func_end ovy208_219ada0

	thumb_func_start ovy208_219ae1c
ovy208_219ae1c: ; 0x0219AE1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r1, [sp]
	add r4, r0, #0
	mov r0, #0
	ldr r7, _0219B168 ; =0x0000181C
	str r3, [sp, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r4, r7]
	add r5, r2, #0
	bl sub_0219D944
	add r1, r7, #0
	add r1, #0x18
	ldr r1, [r4, r1]
	add r6, r0, #0
	add r0, r7, #0
	add r1, r1, r5
	add r7, #0x18
	add r0, #0x18
	str r1, [r4, r7]
	cmp r1, #0
	bge _0219AE58
	add r2, r4, #0
	add r2, #0xa8
	ldrh r3, [r2]
	ldr r2, _0219B16C ; =0x00001249
	mul r2, r3
	add r1, r1, r2
	str r1, [r4, r0]
_0219AE58:
	add r0, r4, #0
	add r0, #0xa8
	ldrh r1, [r0]
	ldr r0, _0219B16C ; =0x00001249
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0219B170 ; =0x00001834
	ldr r1, [r4, r0]
	cmp r1, r2
	blt _0219AE70
	sub r1, r1, r2
	str r1, [r4, r0]
_0219AE70:
	ldr r0, _0219B174 ; =0x00001838
	ldr r1, _0219B178 ; =FX_SinCosTable_ ; 0x020946BC
	ldrh r0, [r4, r0]
	str r0, [sp, #0x28]
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r3, r2, #1
	mov r0, #0
	ldrsh r0, [r1, r0]
	ldrsh r3, [r1, r3]
	add r2, r2, #1
	lsl r2, r2, #1
	sub r0, r0, r3
	lsl r0, r0, #3
	str r0, [sp, #0x24]
	mov r0, #2
	ldrsh r3, [r1, r0]
	ldrsh r1, [r1, r2]
	ldr r0, _0219B17C ; =0x00008008
	lsl r1, r1, #3
	sub r0, r3, r0
	neg r1, r1
	sub r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, _0219B180 ; =0x000009C4
	cmp r5, r0
	bgt _0219AEAC
	ldr r0, _0219B184 ; =0xFFFFF63C
	cmp r5, r0
	bge _0219AEBE
_0219AEAC:
	ldr r0, _0219B188 ; =0x000018C2
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _0219AEBE
	mov r1, #0x1e
	strh r1, [r4, r0]
	ldr r0, _0219B18C ; =0x00000624
	bl sub_02006254
_0219AEBE:
	cmp r6, #0
	bne _0219AEC4
	b _0219B1C8
_0219AEC4:
	add r0, sp, #0x68
	ldrh r0, [r0]
	str r0, [sp, #0xc]
_0219AECA:
	ldr r0, [sp, #0x2c]
	mov r1, #0xe
	lsl r0, r0, #0x10
	blx sub_0208D65C
	ldr r1, [sp]
	add r0, r1, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r1, #0
	add r0, sp, #0x30
	strh r1, [r0]
	add r0, r6, #0
	bl sub_0219D9D8
	add r7, r0, #0
	asr r0, r5, #4
	ldr r1, _0219B178 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r2, r0, #2
	add r0, r1, r2
	ldrsh r1, [r1, r2]
	ldr r2, [sp, #4]
	mul r2, r1
	mov r1, #0x10
	lsl r1, r1, #0xf
	add r1, r2, r1
	str r1, [sp, #0x1c]
	mov r1, #2
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	mul r2, r0
	mov r0, #5
	lsl r0, r0, #0x10
	add r0, r2, r0
	str r0, [sp, #0x18]
	add r0, r6, #0
	bl sub_0219D9CC
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, _0219B170 ; =0x00001834
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r5, r0
	lsr r1, r0, #0x1f
	lsl r3, r0, #0x10
	sub r3, r3, r1
	mov r0, #0x10
	ror r3, r0
	add r0, r1, r3
	add r0, r2, r0
	bpl _0219AF50
	add r1, r4, #0
	add r1, #0xa8
	ldrh r2, [r1]
	ldr r1, _0219B16C ; =0x00001249
	mul r1, r2
_0219AF4C:
	add r0, r0, r1
	bmi _0219AF4C
_0219AF50:
	add r1, r4, #0
	add r1, #0xa8
	ldrh r1, [r1]
	ldr r2, _0219B16C ; =0x00001249
	str r1, [sp, #8]
	ldr r1, [sp, #8]
	mul r2, r1
	cmp r0, r2
	blt _0219AF68
_0219AF62:
	sub r0, r0, r2
	cmp r0, r2
	bge _0219AF62
_0219AF68:
	add r1, r4, #0
	add r1, #0x98
	ldr r1, [r1]
	cmp r1, #0
	beq _0219AF92
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	mov ip, r1
	mov r1, #6
	lsl r1, r1, #0xe
	sub r1, r1, r5
	lsr r2, r1, #0x1f
	lsl r3, r1, #0x10
	sub r3, r3, r2
	mov r1, #0x10
	ror r3, r1
	add r1, r2, r3
	mov r2, ip
	cmp r2, r1
	bls _0219AFD4
_0219AF92:
	ldr r1, _0219B190 ; =0x00000924
	add r0, r0, r1
	ldr r1, _0219B16C ; =0x00001249
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #8]
	cmp r1, r0
	blo _0219AFAC
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0219AFAC:
	lsl r0, r1, #2
	add r1, r4, r0
	ldr r0, _0219B194 ; =0x00001434
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	bl sub_0219D9D0
	ldr r0, [sp, #0x14]
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0219AFD4
	ldr r0, [r4, #0x38]
	cmp r6, r0
	bne _0219AFD4
	mov r0, #0
	str r0, [r4, #0x38]
_0219AFD4:
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r5, r0
	blo _0219AFE4
	lsl r0, r0, #1
	sub r0, r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0219AFE4:
	ldr r0, [sp, #0x1c]
	blx sub_0208D374
	ldr r1, _0219B198 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	blx sub_0208D374
	ldr r1, _0219B198 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r2, sp, #0x48
	add r0, r1, r0
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x4c]
	mov r0, #2
	lsl r0, r0, #0xe
	sub r1, r0, r5
	mov r0, #5
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x50]
	ldr r0, _0219B19C ; =0x00001884
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_021BB934
	ldr r0, _0219B19C ; =0x00001884
	ldr r2, [sp, #0x28]
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl sub_021BB97C
	add r0, r6, #0
	add r1, sp, #0x34
	bl sub_0219D9DC
	mov r0, #2
	lsl r0, r0, #0xe
	lsr r0, r0, #1
	cmp r5, r0
	bhs _0219B07A
	mov r0, #2
	lsl r0, r0, #0xe
	lsr r5, r0, #3
	add r0, sp, #0x30
	strh r5, [r0]
	ldr r0, _0219B19C ; =0x00001884
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r2, r5, #0
	add r3, r5, #0
	bl sub_021BB95C
	ldr r0, _0219B19C ; =0x00001884
	add r1, r7, #0
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_021BB914
	add r0, r6, #0
	add r1, r5, #0
	b _0219B0BE
_0219B07A:
	mov r0, #0x6e
	lsl r0, r0, #8
	cmp r5, r0
	bhs _0219B0C4
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0x2e
	lsr r0, r0, #5
	lsl r1, r1, #8
	blx sub_0208D65C
	mov r1, #2
	lsl r1, r1, #0xe
	lsr r1, r1, #4
	add r0, r0, r1
_0219B098:
	add r5, sp, #0x30
	strh r0, [r5]
	mov r0, #0
	ldrsh r2, [r5, r0]
	ldr r0, _0219B19C ; =0x00001884
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r3, r2, #0
	bl sub_021BB95C
	ldr r0, _0219B19C ; =0x00001884
	add r1, r7, #0
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_021BB914
	mov r1, #0
	ldrsh r1, [r5, r1]
	add r0, r6, #0
_0219B0BE:
	bl sub_0219DA04
	b _0219B0F4
_0219B0C4:
	ldr r0, _0219B1A0 ; =0x000078E0
	cmp r5, r0
	bhs _0219B0DA
	sub r0, r0, r5
	lsl r0, r0, #0x10
	mov r1, #0xae
	lsr r0, r0, #5
	lsl r1, r1, #4
	blx sub_0208D65C
	b _0219B098
_0219B0DA:
	ldr r0, _0219B19C ; =0x00001884
	add r1, r7, #0
	ldr r0, [r4, r0]
	mov r2, #0
	mov r5, #0
	bl sub_021BB914
	add r0, r6, #0
	mov r1, #0
	bl sub_0219DA04
	add r0, sp, #0x30
	strh r5, [r0]
_0219B0F4:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _0219B158
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0x2d
	bge _0219B158
	ldr r1, [sp, #0x48]
	ldr r7, _0219B1A4 ; =0x0000188C
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0x3c]
	mov r0, #2
	ldr r1, [sp, #0x4c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0x12
	sub r2, r0, r1
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x50]
	lsr r0, r0, #9
	add r0, r1, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	add r2, sp, #0x3c
	lsl r0, r0, #2
	add r5, r4, r0
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x5c]
	bl sub_0204EA28
	add r2, sp, #0x30
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x5c]
	add r3, r2, #0
	bl sub_0204EA5C
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x5c]
	ldr r2, _0219B1A8 ; =0x0219DBA8
	b _0219B1B0
_0219B158:
	ldr r1, [sp, #0x2c]
	ldr r0, _0219B1A4 ; =0x0000188C
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r4, r0]
	ldr r1, [r1, #0x5c]
	ldr r2, _0219B1AC ; =0x0219DBA4
	b _0219B1B0
	.align 2, 0
_0219B168: .word 0x0000181C
_0219B16C: .word 0x00001249
_0219B170: .word 0x00001834
_0219B174: .word 0x00001838
_0219B178: .word FX_SinCosTable_
_0219B17C: .word 0x00008008
_0219B180: .word 0x000009C4
_0219B184: .word 0xFFFFF63C
_0219B188: .word 0x000018C2
_0219B18C: .word 0x00000624
_0219B190: .word 0x00000924
_0219B194: .word 0x00001434
_0219B198: .word 0x45800000
_0219B19C: .word 0x00001884
_0219B1A0: .word 0x000078E0
_0219B1A4: .word 0x0000188C
_0219B1A8: .word 0x0219DBA8
_0219B1AC: .word 0x0219DBA4
_0219B1B0:
	bl sub_0204EAC8
	add r0, r6, #0
	bl sub_0219D9C8
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r6, #0
	beq _0219B1C8
	b _0219AECA
_0219B1C8:
	ldr r0, _0219B1D4 ; =0x0000181C
	ldr r0, [r4, r0]
	bl sub_0219D944
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219B1D4: .word 0x0000181C
	thumb_func_end ovy208_219ae1c

	thumb_func_start ovy208_219b1d8
ovy208_219b1d8: ; 0x0219B1D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0219B22C ; =0x0000181C
	add r6, r0, #0
	ldr r0, [r6, r7]
	bl sub_0219D944
	add r5, r0, #0
	beq _0219B22A
	add r0, r7, #0
	str r0, [sp]
	add r0, #0x68
	str r0, [sp]
	add r7, #0x68
_0219B1F2:
	add r0, r5, #0
	bl sub_0219D9CC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0219D9D8
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _0219B210
	ldr r0, [r6, r7]
	ldrh r2, [r4]
	ldr r3, [r4, #8]
	b _0219B218
_0219B210:
	ldr r0, [sp]
	ldrh r2, [r4]
	ldr r0, [r6, r0]
	ldr r3, [r4, #4]
_0219B218:
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_021BB81C
	add r0, r5, #0
	bl sub_0219D9C8
	add r5, r0, #0
	bne _0219B1F2
_0219B22A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B22C: .word 0x0000181C
	thumb_func_end ovy208_219b1d8

	thumb_func_start ovy208_219b230
ovy208_219b230: ; 0x0219B230
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219B49C ; =0x0000183C
	mov r6, #0
	ldr r0, [r5, r0]
	mov r7, #0
	mov r4, #0
	cmp r0, #0
	bne _0219B258
	bl sub_0203DA48
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x1c
	add r1, #0x20
	bl sub_0203DA84
	str r0, [r5, #0x18]
_0219B258:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0219B266
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0219B266
	b _0219B3AE
_0219B266:
	ldr r0, [r5, #0x20]
	cmp r0, #0xb0
	bls _0219B270
	mov r0, #0xb0
	str r0, [r5, #0x20]
_0219B270:
	ldr r0, [r5, #0x20]
	cmp r0, #0x10
	bhs _0219B27A
	mov r0, #0x10
	str r0, [r5, #0x20]
_0219B27A:
	ldr r0, [r5, #0x3c]
	cmp r0, #2
	bne _0219B290
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219B290
	add r0, r5, #0
	mov r1, #1
_0219B28A:
	bl ovy208_219b714
	b _0219B2CC
_0219B290:
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219B2CC
	ldr r1, _0219B4A0 ; =0x00001824
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #3
	bl ovy208_219b6c0
	add r4, r0, #0
	cmp r4, #1
	bne _0219B2C4
	ldr r0, _0219B4A0 ; =0x00001824
	ldr r1, [r5, #0x38]
	ldr r0, [r5, r0]
	bl ovy208_219d908
	ldr r0, _0219B4A0 ; =0x00001824
	ldr r1, [r5, #0x38]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219D8C0
	add r0, r5, #0
	mov r1, #0
	b _0219B28A
_0219B2C4:
	add r0, r5, #0
	bl ovy208_219c0f0
	add r7, r0, #0
_0219B2CC:
	cmp r4, #0
	bne _0219B37C
	cmp r7, #0
	bne _0219B37C
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0219B2E0
	ldr r0, [r5, #0x14]
	cmp r0, #1
	beq _0219B2E6
_0219B2E0:
	ldr r0, [r5, #0x3c]
	cmp r0, #1
	bne _0219B37C
_0219B2E6:
	ldr r0, [r5, #0x20]
	ldr r3, _0219B4A4 ; =0x3F09D89E
	sub r0, #0x50
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r5, #0x1c]
	add r1, r7, #0
	sub r0, #0x80
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r2, #0x1c
	bl ovy208_219c7b4
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r3, _0219B4A8 ; =0x3F3D37A7
	add r1, r7, #0
	mov r2, #0x44
	bl ovy208_219c7b4
	cmp r4, #0
	bne _0219B326
	cmp r0, #1
	bne _0219B326
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r7, #0
	mov r6, #1
	bl ovy208_219b4bc
	b _0219B366
_0219B326:
	cmp r4, #0
	bne _0219B32E
	cmp r0, #0
	beq _0219B336
_0219B32E:
	cmp r4, #1
	bne _0219B366
	cmp r0, #1
	bne _0219B366
_0219B336:
	ldr r4, _0219B4AC ; =0x00001820
	ldr r0, [r5, r4]
	bl sub_0219D94C
	cmp r0, #0
	bne _0219B366
	ldr r0, [r5, #0x3c]
	cmp r0, #1
	bne _0219B366
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219B366
	add r4, #0xe
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _0219B358
	neg r1, r1
_0219B358:
	mov r0, #0x5b
	lsl r0, r0, #2
	cmp r1, r0
	bge _0219B366
	add r0, r5, #0
	bl ovy208_219b900
_0219B366:
	cmp r6, #0
	bne _0219B37C
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219B37C
	ldr r1, _0219B4AC ; =0x00001820
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #2
	bl ovy208_219b6c0
_0219B37C:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0219B424
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0219B424
	ldr r0, [r5, #0x20]
	cmp r0, #0xa0
	bls _0219B424
	ldr r0, [r5, #0x1c]
	cmp r0, #0x60
	bls _0219B424
	cmp r0, #0xa0
	bhs _0219B424
	mov r0, #2
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, _0219B4B0 ; =0x00000622
	bl sub_02006254
	add r0, r5, #0
	bl ovy208_219d858
	b _0219B424
_0219B3AE:
	ldr r0, [r5, #0x28]
	ldr r3, _0219B4A4 ; =0x3F09D89E
	sub r0, #0x50
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	sub r0, #0x80
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r2, #0x1c
	bl ovy208_219c7b4
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r3, _0219B4A8 ; =0x3F3D37A7
	add r1, r7, #0
	mov r2, #0x44
	bl ovy208_219c7b4
	ldr r1, [r5, #0x3c]
	cmp r1, #2
	bne _0219B416
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _0219B416
	ldr r1, [r5, #0x34]
	cmp r1, #0xa
	beq _0219B3F2
	add r0, r5, #0
	bl ovy208_219bc04
	b _0219B416
_0219B3F2:
	cmp r4, #0
	bne _0219B404
	cmp r0, #1
	bne _0219B404
	add r0, r5, #0
	mov r1, #0
	bl ovy208_219baa8
	b _0219B416
_0219B404:
	cmp r4, #1
	bne _0219B410
	add r0, r5, #0
	bl ovy208_219be40
	b _0219B416
_0219B410:
	add r0, r5, #0
	bl ovy208_219ba14
_0219B416:
	mov r0, #0
	str r0, [r5, #0x30]
	str r0, [r5, #0x38]
	str r0, [r5, #0x3c]
	str r0, [r5, #0x40]
	mov r0, #0xa
	str r0, [r5, #0x34]
_0219B424:
	ldr r1, _0219B4B4 ; =0x0000182E
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0219B48E
	cmp r6, #0
	bne _0219B48E
	sub r1, r1, #2
	ldrh r2, [r5, r1]
	mov r1, #1
	lsl r1, r1, #0x10
	add r2, r2, r1
	sub r2, r2, r0
	bpl _0219B440
	add r2, r2, r1
_0219B440:
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r2, r0
	blt _0219B44A
	sub r2, r2, r0
_0219B44A:
	ldr r6, _0219B4B8 ; =0x0000182C
	mov r0, #0x30
	strh r2, [r5, r6]
	str r0, [sp]
	add r2, r6, #2
	ldrh r1, [r5, r6]
	ldrsh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #0x48
	mov r4, #0x48
	bl ovy208_219ae1c
	add r0, r6, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x80
	bgt _0219B470
	sub r4, #0xc8
	cmp r0, r4
	bge _0219B488
_0219B470:
	ldr r4, _0219B4B4 ; =0x0000182E
	ldrsh r0, [r5, r4]
	blx sub_0208D374
	mov r1, #0xfd
	lsl r1, r1, #0x16
	blx sub_0208DD34
	blx sub_0208DA4C
	strh r0, [r5, r4]
	b _0219B48E
_0219B488:
	mov r1, #0
	add r0, r6, #2
	strh r1, [r5, r0]
_0219B48E:
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x28]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219B49C: .word 0x0000183C
_0219B4A0: .word 0x00001824
_0219B4A4: .word 0x3F09D89E
_0219B4A8: .word 0x3F3D37A7
_0219B4AC: .word 0x00001820
_0219B4B0: .word 0x00000622
_0219B4B4: .word 0x0000182E
_0219B4B8: .word 0x0000182C
	thumb_func_end ovy208_219b230

	thumb_func_start ovy208_219b4bc
ovy208_219b4bc: ; 0x0219B4BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0x28]
	mov r6, #0x48
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x30
	blx sub_0208D868
	ldr r1, [r5, #0x20]
	add r4, r0, #0
	add r0, r1, #0
	mul r0, r6
	mov r1, #0x30
	blx sub_0208D868
	add r3, r0, #0
	mov r0, #0x80
	str r0, [sp]
	mov r0, #0x50
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x1c]
	add r1, r4, #0
	bl sub_020443D8
	add r6, r0, #0
	bpl _0219B4FA
	neg r0, r6
_0219B4FA:
	ldr r1, _0219B6A0 ; =0x00001830
	lsl r0, r0, #0x10
	ldrh r2, [r5, r1]
	lsr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r5, r1]
	ldr r0, [r5, #0x14]
	cmp r0, #1
	beq _0219B514
	ldrh r1, [r5, r1]
	ldr r0, _0219B6A4 ; =0x0000071C
	cmp r1, r0
	blo _0219B590
_0219B514:
	ldr r7, _0219B6A8 ; =0x0000181C
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219B52E
	ldr r0, [sp, #0xc]
	add r7, #0x12
	strh r0, [r5, r7]
_0219B52E:
	ldr r0, _0219B6A0 ; =0x00001830
	mov r1, #0
	strh r1, [r5, r0]
	str r1, [r5, #0x38]
	cmp r4, #0
	beq _0219B574
_0219B53A:
	add r0, r4, #0
	bl sub_0219D9CC
	add r7, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	add r0, r4, #0
	bl ovy208_219da1c
	cmp r0, #1
	bne _0219B562
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _0219B562
	mov r0, #1
	str r4, [r5, #0x38]
	str r0, [r5, #0x3c]
	mov r4, #0
_0219B562:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0219B570
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
_0219B570:
	cmp r4, #0
	bne _0219B53A
_0219B574:
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219B590
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0219B590
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0219B590
	mov r0, #1
	str r0, [r5, #0x3c]
	ldr r0, _0219B6AC ; =0x00000557
	bl sub_02006254
_0219B590:
	ldr r0, [r5, #0x30]
	cmp r0, #1
	bne _0219B696
	neg r0, r6
	cmp r6, #0
	blt _0219B59E
	add r0, r6, #0
_0219B59E:
	cmp r0, #0xe3
	ble _0219B690
	neg r0, r6
	cmp r6, #0
	blt _0219B5AA
	add r0, r6, #0
_0219B5AA:
	mov r1, #1
	lsl r1, r1, #0xe
	cmp r0, r1
	bge _0219B690
	ldr r0, _0219B6B0 ; =0x0000182C
	ldrh r2, [r5, r0]
	lsl r0, r1, #2
	add r0, r2, r0
	sub r2, r0, r6
	bpl _0219B5C2
	lsl r0, r1, #2
	add r2, r2, r0
_0219B5C2:
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r2, r0
	blt _0219B5CC
	sub r2, r2, r0
_0219B5CC:
	ldr r4, _0219B6B0 ; =0x0000182C
	mov r0, #0x30
	strh r2, [r5, r4]
	str r0, [sp]
	ldrh r1, [r5, r4]
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r2, r2, #0x10
	mov r3, #0x48
	bl ovy208_219ae1c
	cmp r6, #0
	blt _0219B600
	add r0, r4, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0219B600
	cmp r6, r0
	bge _0219B600
	add r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	add r0, r4, #2
	strh r1, [r5, r0]
	b _0219B620
_0219B600:
	cmp r6, #0
	bgt _0219B61C
	ldr r1, _0219B6B4 ; =0x0000182E
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0219B61C
	cmp r6, r0
	ble _0219B61C
	add r2, r0, r6
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	strh r0, [r5, r1]
	b _0219B620
_0219B61C:
	ldr r0, _0219B6B4 ; =0x0000182E
	strh r6, [r5, r0]
_0219B620:
	ldr r0, _0219B6B4 ; =0x0000182E
	ldrsh r1, [r5, r0]
	cmp r1, #0
	ble _0219B630
	add r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0219B63C
_0219B630:
	cmp r1, #0
	bge _0219B642
	ldr r0, _0219B6B8 ; =0x00001838
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0219B642
_0219B63C:
	mov r1, #0
	ldr r0, _0219B6B8 ; =0x00001838
	b _0219B694
_0219B642:
	cmp r1, #0
	ble _0219B668
	ldr r3, _0219B6B8 ; =0x00001838
	ldr r2, _0219B6BC ; =0xFFFFD000
	ldrsh r0, [r5, r3]
	cmp r0, r2
	ble _0219B668
	add r4, r1, #0
	mov r1, #0xf
	mov r2, #0xf
	sub r1, #0x19
	mul r4, r2
	mul r1, r0
	cmp r4, r1
	ble _0219B696
	add r2, #0xf1
	sub r0, r0, r2
_0219B664:
	strh r0, [r5, r3]
	b _0219B696
_0219B668:
	cmp r1, #0
	bge _0219B696
	ldr r3, _0219B6B8 ; =0x00001838
	mov r2, #3
	ldrsh r0, [r5, r3]
	lsl r2, r2, #0xc
	cmp r0, r2
	bge _0219B696
	mov r2, #0xe
	add r4, r1, #0
	mvn r2, r2
	mul r4, r2
	mov r1, #0xa
	add r2, r0, #0
	mul r2, r1
	cmp r4, r2
	ble _0219B696
	add r1, #0xf6
	add r0, r0, r1
	b _0219B664
_0219B690:
	ldr r0, _0219B6B4 ; =0x0000182E
	mov r1, #0
_0219B694:
	strh r1, [r5, r0]
_0219B696:
	mov r0, #1
	str r0, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B6A0: .word 0x00001830
_0219B6A4: .word 0x0000071C
_0219B6A8: .word 0x0000181C
_0219B6AC: .word 0x00000557
_0219B6B0: .word 0x0000182C
_0219B6B4: .word 0x0000182E
_0219B6B8: .word 0x00001838
_0219B6BC: .word 0xFFFFD000
	thumb_func_end ovy208_219b4bc

	thumb_func_start ovy208_219b6c0
ovy208_219b6c0: ; 0x0219B6C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r7, r2, #0
	bl sub_0219D944
	add r4, r0, #0
	beq _0219B70A
_0219B6D0:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	add r0, r4, #0
	bl ovy208_219da1c
	cmp r0, #1
	bne _0219B700
	add r0, r4, #0
	bl sub_0219D9E8
	add r6, r0, #0
	mov r0, #2
	str r0, [r5, #0x3c]
	ldr r0, _0219B710 ; =0x00000623
	str r4, [r5, #0x38]
	bl sub_02006254
	str r7, [r5, #0x40]
	ldr r0, [r6]
	str r0, [r5, #0x44]
	ldr r0, [r6, #4]
	str r0, [r5, #0x48]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B700:
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219B6D0
_0219B70A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B710: .word 0x00000623
	thumb_func_end ovy208_219b6c0

	thumb_func_start ovy208_219b714
ovy208_219b714: ; 0x0219B714
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r3, _0219B8EC ; =0x0219DD60
	add r5, r0, #0
	mov r0, #0xc
	add r4, sp, #8
	str r1, [sp]
	strh r0, [r4, #4]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r7, #0
	str r0, [r2]
	ldr r0, [r5, #0x34]
	str r0, [sp, #4]
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	sub r0, #0x80
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	add r2, sp, #0x10
	sub r0, #0x70
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r3, sp, #0xc
	bl ovy208_219c374
	add r1, r0, #0
	str r1, [r5, #0x34]
	cmp r1, #0xa
	beq _0219B7F0
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl sub_021BBCA8
	add r7, r0, #0
	ldr r1, [r7, #4]
	ldr r0, [r7, #0x10]
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219B8F0 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	add r0, #0x80
	str r0, [sp, #0x18]
	ldr r1, [r7, #8]
	ldr r0, [r7, #0x14]
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219B8F0 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	add r0, #0x60
	str r0, [sp, #0x1c]
	mov r0, #0x62
	lsl r0, r0, #6
	add r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #1
	ldrh r7, [r7, #0x36]
	bl sub_021BB990
	add r0, r6, #0
	bl sub_021BB5CC
	cmp r0, #1
	bne _0219B7BA
	mov r0, #0x1a
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
_0219B7BA:
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	bl ovy208_219c338
	cmp r0, #0
	bne _0219B7D2
	mov r0, #3
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x44]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x48]
_0219B7D2:
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x34]
	bl sub_0219DA14
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _0219B808
	ldr r0, [sp]
	cmp r0, #1
	bne _0219B808
	ldr r0, _0219B8F4 ; =0x00000627
	bl sub_02006254
	b _0219B808
_0219B7F0:
	mov r0, #0xa
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x1c]
	add r1, r6, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x20]
	add r2, r7, #0
	str r0, [sp, #0x1c]
	ldr r0, _0219B8F8 ; =0x00001884
	ldr r0, [r5, r0]
	bl sub_021BB990
_0219B808:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0219B820
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B82E
_0219B820:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B82E:
	blx sub_0208DA4C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _0219B84C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B85A
_0219B84C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B85A:
	blx sub_0208DA4C
	str r0, [sp, #0x24]
	ldr r0, _0219B8F8 ; =0x00001884
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x20
	bl sub_021BB934
	ldr r0, [r5, #0x38]
	add r1, sp, #0x18
	bl sub_0219D9DC
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r1, r0, #0
	ldr r0, _0219B8F8 ; =0x00001884
	add r2, r7, #0
	ldr r0, [r5, r0]
	bl sub_021BB97C
	ldr r0, _0219B8F8 ; =0x00001884
	add r2, sp, #8
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, #2
	add r3, sp, #8
	bl sub_021BB96C
	mov r1, #2
	ldrsh r2, [r4, r1]
	lsl r0, r1, #0xb
	cmp r2, r0
	blt _0219B8AA
	mov r0, #0
	ldrsh r2, [r4, r0]
	lsl r0, r1, #0xb
	cmp r2, r0
	bge _0219B8E6
_0219B8AA:
	mov r2, #2
	ldrsh r0, [r4, r2]
	ldr r1, _0219B8FC ; =0x0000019A
	add r0, r0, r1
	strh r0, [r4, #2]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4]
	ldrsh r1, [r4, r2]
	lsl r0, r2, #0xb
	cmp r1, r0
	ble _0219B8C6
	strh r0, [r4, #2]
_0219B8C6:
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _0219B8D4
	strh r0, [r4]
_0219B8D4:
	ldr r0, _0219B8F8 ; =0x00001884
	mov r2, #2
	mov r3, #0
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_021BB95C
_0219B8E6:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0219B8EC: .word 0x0219DD60
_0219B8F0: .word 0x45800000
_0219B8F4: .word 0x00000627
_0219B8F8: .word 0x00001884
_0219B8FC: .word 0x0000019A
	thumb_func_end ovy208_219b714

	thumb_func_start ovy208_219b900
ovy208_219b900: ; 0x0219B900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r3, _0219BA08 ; =0x0219DD78
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x38]
	bl sub_0219D9CC
	ldr r1, [r5, #0x1c]
	add r7, r0, #0
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x20]
	cmp r1, #0
	str r0, [sp, #0x10]
	beq _0219B938
	lsl r0, r1, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B946
_0219B938:
	lsl r0, r1, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B946:
	blx sub_0208DA4C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0219B964
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219B972
_0219B964:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219B972:
	blx sub_0208DA4C
	str r0, [sp, #0x18]
	ldr r1, _0219BA0C ; =0x00001884
	ldrh r0, [r5]
	ldr r1, [r5, r1]
	add r2, r7, #0
	add r3, sp, #0x14
	bl ovy208_219d95c
	add r4, r0, #0
	ldr r0, _0219BA0C ; =0x00001884
	add r1, r4, #0
	sub r0, #0x64
	ldr r0, [r5, r0]
	bl sub_0219D8C0
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_0219D9DC
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	str r0, [sp]
	add r0, r4, #0
	bl sub_0219D9D8
	str r0, [sp, #4]
	ldr r0, _0219BA0C ; =0x00001884
	add r2, sp, #8
	ldr r0, [r5, r0]
	ldr r1, [sp]
	add r2, #2
	add r3, sp, #8
	bl sub_021BB96C
	ldr r0, _0219BA0C ; =0x00001884
	add r3, sp, #8
	mov r2, #2
	mov r6, #0
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r6]
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl sub_021BB95C
	ldr r0, _0219BA0C ; =0x00001884
	ldr r1, [sp, #4]
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_021BB990
	ldr r0, [r5, #0x38]
	bl sub_0219D9E8
	mov r1, #1
	str r1, [r5, #0x40]
	ldr r2, [r0]
	str r2, [r5, #0x44]
	ldr r0, [r0, #4]
	str r0, [r5, #0x48]
	mov r0, #2
	str r0, [r5, #0x3c]
	str r4, [r5, #0x38]
	str r1, [r5, #0x40]
	add r0, r5, #0
	str r1, [r7, #0xc]
	bl ovy208_219b1d8
	ldr r0, _0219BA10 ; =0x00000625
	bl sub_02006254
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BA08: .word 0x0219DD78
_0219BA0C: .word 0x00001884
_0219BA10: .word 0x00000625
	thumb_func_end ovy208_219b900

	thumb_func_start ovy208_219ba14
ovy208_219ba14: ; 0x0219BA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	mov r4, #0xa
	lsl r4, r4, #0xc
	bl sub_0219D9D8
	add r6, r0, #0
	ldr r0, _0219BAA4 ; =0x00001820
	ldr r1, [r5, #0x38]
	str r0, [sp]
	ldr r0, [r5, r0]
	bl ovy208_219d908
	ldr r0, [sp]
	ldr r1, [r5, #0x38]
	ldr r0, [r5, r0]
	bl sub_0219D8E4
	ldr r0, [sp]
	mov r7, #1
	lsl r7, r7, #0xc
	add r0, #0x64
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_021BB95C
	ldr r0, [sp]
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r6, r0, #0
	beq _0219BA9E
	ldr r0, [sp]
	str r0, [sp, #8]
	add r0, #0x64
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, #0x64
	str r0, [sp]
	lsr r0, r7, #2
	str r0, [sp, #4]
_0219BA6E:
	add r0, r6, #0
	bl sub_0219D9D8
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0xc
	bl sub_021BB94C
	ldr r0, [sp]
	str r4, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, sp, #0xc
	bl sub_021BB934
	ldr r0, [sp, #4]
	sub r4, r4, r0
	add r0, r6, #0
	bl sub_0219D9C8
	add r6, r0, #0
	bne _0219BA6E
_0219BA9E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BAA4: .word 0x00001820
	thumb_func_end ovy208_219ba14

	thumb_func_start ovy208_219baa8
ovy208_219baa8: ; 0x0219BAA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219D9CC
	ldr r4, _0219BBF0 ; =0x00001820
	add r7, r0, #0
	ldr r0, [r5, r4]
	ldr r1, [r5, #0x38]
	bl ovy208_219d908
	add r4, #8
	ldr r0, [r5, r4]
	ldr r1, [r5, #0x38]
	bl sub_0219D8E4
	ldr r3, _0219BBF4 ; =0x0219DD48
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	ble _0219BB04
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BB12
_0219BB04:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BB12:
	blx sub_0208DA4C
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _0219BB30
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BB3E
_0219BB30:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BB3E:
	blx sub_0208DA4C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x38]
	add r1, sp, #8
	bl sub_0219D9EC
	ldr r4, _0219BBF8 ; =0x00001884
	add r1, r6, #0
	ldr r0, [r5, r4]
	add r2, sp, #0x10
	bl sub_021BB934
	add r1, r6, #0
	mov r6, #1
	lsl r6, r6, #0xc
	ldr r0, [r5, r4]
	add r2, r6, #0
	add r3, r6, #0
	bl sub_021BB95C
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl sub_0219DA04
	sub r4, #0x68
	ldr r0, [r5, r4]
	mov r6, #0
	bl sub_0219D944
	b _0219BB92
_0219BB7C:
	add r0, r4, #0
	bl sub_0219D9CC
	ldrh r1, [r0]
	ldrh r0, [r7]
	cmp r1, r0
	bne _0219BB8C
	add r6, r4, #0
_0219BB8C:
	add r0, r4, #0
	bl sub_0219D9C8
_0219BB92:
	add r4, r0, #0
	cmp r4, #0
	beq _0219BB9C
	cmp r6, #0
	beq _0219BB7C
_0219BB9C:
	cmp r6, #0
	beq _0219BBBA
	add r0, r6, #0
	bl sub_0219D9E8
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219D9DC
	add r0, r6, #0
	bl sub_0219DA08
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	b _0219BBD0
_0219BBBA:
	ldr r0, _0219BBFC ; =0x0219DD28
	add r1, sp, #0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x38]
	bl sub_0219D9DC
	ldr r0, [r5, #0x38]
	mov r1, #0
_0219BBD0:
	bl sub_0219D9FC
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	bl sub_0219DA0C
	mov r0, #0
	str r0, [r7, #0xc]
	add r0, r5, #0
	bl ovy208_219b1d8
	ldr r0, _0219BC00 ; =0x00000626
	bl sub_02006254
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219BBF0: .word 0x00001820
_0219BBF4: .word 0x0219DD48
_0219BBF8: .word 0x00001884
_0219BBFC: .word 0x0219DD28
_0219BC00: .word 0x00000626
	thumb_func_end ovy208_219baa8

	thumb_func_start ovy208_219bc04
ovy208_219bc04: ; 0x0219BC04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	str r0, [sp]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	bl ovy208_219c338
	cmp r0, #1
	bne _0219BC54
	ldr r0, [r5, #0x34]
	bl sub_021EF118
	add r6, r0, #0
	ldr r0, _0219BE2C ; =0x00001824
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219BC50
_0219BC38:
	add r0, r4, #0
	bl sub_0219DA18
	bl sub_021EF118
	cmp r6, r0
	beq _0219BC50
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219BC38
_0219BC50:
	cmp r4, #0
	bne _0219BC56
_0219BC54:
	b _0219BD74
_0219BC56:
	ldr r3, _0219BE30 ; =0x0219DD30
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	bl sub_0219D9D8
	add r1, sp, #0x14
	add r6, r0, #0
	bl sub_021BB9AC
	add r0, r5, #0
	add r1, sp, #0x1c
	bl ovy208_219ac18
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, _0219BE2C ; =0x00001824
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl ovy208_219d908
	sub r0, r7, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219D8E4
	add r0, r4, #0
	bl sub_0219D9E8
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ble _0219BCBC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BCCA
_0219BCBC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BCCA:
	blx sub_0208DA4C
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _0219BCE8
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BCF6
_0219BCE8:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BCF6:
	blx sub_0208DA4C
	str r0, [sp, #0x40]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0219D9EC
	ldr r0, _0219BE34 ; =0x00001884
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x3c
	bl sub_021BB934
	ldr r0, _0219BE34 ; =0x00001884
	add r1, r6, #0
	ldr r0, [r5, r0]
	mov r2, #0
	mov r7, #0
	bl sub_021BB97C
	add r0, r4, #0
	add r1, sp, #0x1c
	bl sub_0219D9DC
	add r0, r4, #0
	mov r1, #0xa
	bl sub_0219DA0C
	ldr r0, _0219BE34 ; =0x00001884
	sub r0, #0x64
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219BD74
	ldr r0, _0219BE34 ; =0x00001884
	add r0, r5, r0
	str r0, [sp, #4]
_0219BD42:
	add r0, r4, #0
	bl sub_0219D9D8
	add r6, r0, #0
	ldr r0, _0219BE34 ; =0x00001884
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x30
	bl sub_021BB94C
	ldr r0, [sp, #4]
	str r7, [sp, #0x38]
	ldr r0, [r0]
	add r1, r6, #0
	add r2, sp, #0x30
	bl sub_021BB934
	mov r0, #1
	lsl r0, r0, #0xa
	sub r7, r7, r0
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219BD42
_0219BD74:
	ldr r0, _0219BE38 ; =0x00001820
	ldr r1, [r5, #0x38]
	str r0, [sp, #8]
	ldr r0, [r5, r0]
	bl ovy208_219d908
	ldr r0, [sp, #8]
	ldr r1, [r5, #0x38]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219D8E4
	ldr r0, [sp, #8]
	mov r7, #1
	lsl r7, r7, #0xc
	add r0, #0x64
	ldr r0, [r5, r0]
	ldr r1, [sp]
	add r2, r7, #0
	add r3, r7, #0
	bl sub_021BB95C
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x34]
	bl sub_0219DA14
	ldr r0, [sp, #8]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r6, r0, #0
	ldr r4, _0219BE3C ; =0x00000000
	beq _0219BE26
	ldr r0, [sp, #8]
	str r0, [sp, #0x10]
	add r0, #0x64
	str r0, [sp, #0x10]
	lsr r0, r7, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x64
	str r0, [sp, #8]
_0219BDCA:
	add r0, r6, #0
	bl sub_0219D9D8
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x24
	bl sub_021BB94C
	add r0, r7, #0
	bl sub_021BB5CC
	cmp r0, #1
	bne _0219BDEC
	mov r0, #0x66
	b _0219BE06
_0219BDEC:
	add r0, r6, #0
	bl sub_0219DA18
	cmp r0, #7
	beq _0219BE00
	add r0, r6, #0
	bl sub_0219DA18
	cmp r0, #8
	bne _0219BE04
_0219BE00:
	mov r0, #0xde
	b _0219BE06
_0219BE04:
	mov r0, #0xca
_0219BE06:
	lsl r0, r0, #0xa
	add r0, r4, r0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x24
	bl sub_021BB934
	ldr r0, [sp, #0xc]
	sub r4, r4, r0
	add r0, r6, #0
	bl sub_0219D9C8
	add r6, r0, #0
	bne _0219BDCA
_0219BE26:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BE2C: .word 0x00001824
_0219BE30: .word 0x0219DD30
_0219BE34: .word 0x00001884
_0219BE38: .word 0x00001820
_0219BE3C: .word 0x00000000
	thumb_func_end ovy208_219bc04

	thumb_func_start ovy208_219be40
ovy208_219be40: ; 0x0219BE40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r1, [r5, #0x40]
	cmp r1, #2
	bne _0219BEF0
	ldr r3, _0219C0E0 ; =0x0219DD3C
	add r2, sp, #0x38
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	ble _0219BE80
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BE8E
_0219BE80:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BE8E:
	blx sub_0208DA4C
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _0219BEAC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BEBA
_0219BEAC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BEBA:
	blx sub_0208DA4C
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0x38]
	add r1, sp, #0x18
	bl sub_0219D9EC
	ldr r0, _0219C0E4 ; =0x00001884
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x38
	bl sub_021BB934
	add r1, r5, #0
	ldr r0, [r5, #0x38]
	add r1, #0x44
	bl sub_0219D9DC
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	bl sub_0219DA0C
	add r0, r5, #0
	bl ovy208_219ba14
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219BEF0:
	cmp r1, #3
	beq _0219BEF6
	b _0219C024
_0219BEF6:
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r7, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219DA18
	add r6, r0, #0
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_021BBCA8
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219C0E8 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	add r0, #0x80
	str r0, [sp, #8]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219C0E8 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	add r0, #0x60
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _0219BF5C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BF6A
_0219BF5C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BF6A:
	blx sub_0208DA4C
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0219BF88
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219BF96
_0219BF88:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219BF96:
	blx sub_0208DA4C
	str r0, [sp, #0x30]
	add r0, r7, #0
	bl sub_021BB5CC
	cmp r0, #1
	bne _0219BFAA
	mov r0, #0x66
	b _0219BFC4
_0219BFAA:
	ldr r0, [r5, #0x38]
	bl sub_0219DA18
	cmp r0, #7
	beq _0219BFBE
	ldr r0, [r5, #0x38]
	bl sub_0219DA18
	cmp r0, #8
	bne _0219BFC2
_0219BFBE:
	mov r0, #0xde
	b _0219BFC4
_0219BFC2:
	mov r0, #0xca
_0219BFC4:
	lsl r0, r0, #0xa
	str r0, [sp, #0x34]
	ldr r0, _0219C0E4 ; =0x00001884
	add r1, r7, #0
	ldr r0, [r5, r0]
	mov r2, #1
	ldrh r4, [r4, #0x36]
	bl sub_021BB990
	ldr r0, _0219C0E4 ; =0x00001884
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x2c
	bl sub_021BB934
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r1, r0, #0
	ldr r0, _0219C0E4 ; =0x00001884
	add r2, r4, #0
	ldr r0, [r5, r0]
	bl sub_021BB97C
	ldr r0, [r5, #0x38]
	add r1, sp, #8
	bl sub_0219D9DC
	ldr r0, [r5, #0x1c]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x38]
	bl sub_0219D9EC
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	mov r4, #0xa
	bl sub_0219DA0C
	add r0, r5, #0
	str r6, [r5, #0x34]
	bl ovy208_219bc04
	add sp, #0x44
	str r4, [r5, #0x34]
	pop {r4, r5, r6, r7, pc}
_0219C024:
	cmp r1, #1
	bne _0219C0D4
	ldr r0, [r5, #0x38]
	bl sub_0219D9F8
	ldr r3, _0219C0EC ; =0x0219DD6C
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	add r4, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x38]
	add r1, #0x44
	bl sub_0219D9DC
	ldr r0, [r5, #0x38]
	mov r1, #0xa
	bl sub_0219DA0C
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	ldr r0, [r5, #0x20]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	ble _0219C074
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C082
_0219C074:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C082:
	blx sub_0208DA4C
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _0219C0A0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C0AE
_0219C0A0:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C0AE:
	blx sub_0208DA4C
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x38]
	add r1, sp, #0
	bl sub_0219D9EC
	ldr r0, _0219C0E4 ; =0x00001884
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x20
	bl sub_021BB934
	add r0, r5, #0
	mov r1, #1
	bl ovy208_219baa8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0219C0D4:
	mov r1, #0
	bl ovy208_219baa8
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0219C0E0: .word 0x0219DD3C
_0219C0E4: .word 0x00001884
_0219C0E8: .word 0x45800000
_0219C0EC: .word 0x0219DD6C
	thumb_func_end ovy208_219be40

	thumb_func_start ovy208_219c0f0
ovy208_219c0f0: ; 0x0219C0F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #0x10
	add r0, sp, #4
	strh r1, [r0]
	ldr r0, _0219C1D8 ; =0x00001834
	ldr r1, [r5, r0]
	ldr r0, _0219C1DC ; =0x00019249
	add r0, r1, r0
	add r1, r5, #0
	add r1, #0xa8
	ldrh r2, [r1]
	ldr r1, _0219C1E0 ; =0x00001249
	add r3, r2, #0
	mul r3, r1
	cmp r0, r3
	blo _0219C118
	sub r0, r0, r3
	b _0219C118
_0219C118:
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #0x1c]
	mov r1, #0
	sub r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	add r2, sp, #8
	sub r0, #0x70
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r3, sp, #4
	mov r4, #0
	bl ovy208_219c374
	cmp r0, #0xa
	beq _0219C1D0
	bl sub_021EF118
	add r4, r0, #0
	cmp r4, #7
	bne _0219C14A
	mov r4, #6
_0219C14A:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	cmp r4, r0
	bne _0219C15C
	add r0, r5, #0
	mov r4, #8
	mov r1, #8
	b _0219C160
_0219C15C:
	add r0, r5, #0
	add r1, r4, #0
_0219C160:
	add r2, r6, #0
	bl ovy208_219c7e8
	add r0, r5, #0
	add r0, #0xa4
	add r1, r5, #0
	str r4, [r0]
	add r1, #0xa4
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy208_219d514
	add r0, r5, #0
	mov r4, #1
	add r0, #0x98
	str r4, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x9c
	str r1, [r0]
	ldr r0, _0219C1E4 ; =0x0000182C
	ldr r6, _0219C1E0 ; =0x00001249
	ldrh r0, [r5, r0]
	add r1, r6, #0
	blx sub_0208D65C
	lsl r0, r4, #0x10
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xa0
	str r1, [r0]
	lsl r0, r4, #0x10
	cmp r1, r0
	blo _0219C1B2
	ldr r0, _0219C1E8 ; =0x00010002
	cmp r1, r0
	bhi _0219C1B2
	add r0, r5, #0
	add r1, r1, r6
	add r0, #0xa0
	str r1, [r0]
_0219C1B2:
	mov r0, #0x30
	str r0, [sp]
	ldr r1, _0219C1E4 ; =0x0000182C
	add r0, r5, #0
	ldrh r1, [r5, r1]
	mov r2, #0
	mov r3, #0x48
	bl ovy208_219ae1c
	ldr r0, _0219C1EC ; =0x00000628
	bl sub_02006254
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219C1D0:
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0219C1D8: .word 0x00001834
_0219C1DC: .word 0x00019249
_0219C1E0: .word 0x00001249
_0219C1E4: .word 0x0000182C
_0219C1E8: .word 0x00010002
_0219C1EC: .word 0x00000628
	thumb_func_end ovy208_219c0f0

	thumb_func_start ovy208_219c1f0
ovy208_219c1f0: ; 0x0219C1F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xa0
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r7, #0xa
	sub r6, r1, r0
	add r0, r6, #0
	mov r1, #0xa
	blx sub_0208D868
	add r4, r0, #0
	mov r0, #0xa
	add r0, #0xf6
	cmp r4, r0
	bhs _0219C22C
	add r0, r7, #0
	add r0, #0xf6
	cmp r6, r0
	bhs _0219C228
	add r0, r5, #0
	mov r1, #0
	add r0, #0x98
	add r4, r6, #0
	str r1, [r0]
	b _0219C22C
_0219C228:
	add r4, r7, #0
	add r4, #0xf6
_0219C22C:
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r6, r0
	bls _0219C24A
	ldr r1, _0219C27C ; =0x00001838
	lsr r0, r0, #3
	ldrsh r2, [r5, r1]
	sub r0, r2, r0
	strh r0, [r5, r1]
	ldrsh r2, [r5, r1]
	ldr r0, _0219C280 ; =0xFFFFD000
	cmp r2, r0
	bge _0219C250
	strh r0, [r5, r1]
	b _0219C250
_0219C24A:
	add r0, r5, #0
	bl ovy208_219c288
_0219C250:
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	lsl r2, r4, #0x10
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0x9c
	str r1, [r0]
	ldr r1, _0219C284 ; =0x0000182C
	lsr r0, r2, #0x10
	ldrh r3, [r5, r1]
	asr r2, r2, #0x10
	sub r0, r3, r0
	strh r0, [r5, r1]
	mov r0, #0x30
	str r0, [sp]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	mov r3, #0x48
	bl ovy208_219ae1c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C27C: .word 0x00001838
_0219C280: .word 0xFFFFD000
_0219C284: .word 0x0000182C
	thumb_func_end ovy208_219c1f0

	thumb_func_start ovy208_219c288
ovy208_219c288: ; 0x0219C288
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0219C328 ; =0x0000182E
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bge _0219C296
	neg r1, r1
_0219C296:
	cmp r1, #0x30
	bge _0219C324
	ldr r1, _0219C32C ; =0x00001838
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bne _0219C2AA
	add r1, r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, #0
	beq _0219C324
_0219C2AA:
	ldr r2, _0219C32C ; =0x00001838
	add r1, r2, #2
	ldrsh r4, [r0, r2]
	ldrsh r3, [r0, r1]
	add r1, r4, r3
	strh r1, [r0, r2]
	ldrsh r1, [r0, r2]
	cmp r1, #0
	ble _0219C2D0
	cmp r3, #0
	ble _0219C2C8
	add r1, r2, #2
	ldrsh r3, [r0, r1]
	sub r3, #0x80
	b _0219C2E4
_0219C2C8:
	add r1, r2, #2
	ldrsh r3, [r0, r1]
	sub r3, #0x2a
	b _0219C2E4
_0219C2D0:
	bge _0219C2E6
	cmp r3, #0
	bge _0219C2DE
	add r1, r2, #2
	ldrsh r3, [r0, r1]
	add r3, #0x80
	b _0219C2E4
_0219C2DE:
	add r1, r2, #2
	ldrsh r3, [r0, r1]
	add r3, #0x2a
_0219C2E4:
	strh r3, [r0, r1]
_0219C2E6:
	ldr r1, _0219C32C ; =0x00001838
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _0219C2F0
	neg r2, r2
_0219C2F0:
	mov r1, #2
	lsl r1, r1, #8
	cmp r2, r1
	bge _0219C314
	ldr r1, _0219C330 ; =0x0000183A
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _0219C302
	neg r2, r2
_0219C302:
	mov r1, #2
	lsl r1, r1, #8
	cmp r2, r1
	bge _0219C314
	ldr r1, _0219C330 ; =0x0000183A
	mov r2, #0
	strh r2, [r0, r1]
	sub r1, r1, #2
	strh r2, [r0, r1]
_0219C314:
	mov r1, #0x30
	str r1, [sp]
	ldr r1, _0219C334 ; =0x0000182C
	mov r2, #0
	ldrh r1, [r0, r1]
	mov r3, #0x48
	bl ovy208_219ae1c
_0219C324:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0219C328: .word 0x0000182E
_0219C32C: .word 0x00001838
_0219C330: .word 0x0000183A
_0219C334: .word 0x0000182C
	thumb_func_end ovy208_219c288

	thumb_func_start ovy208_219c338
ovy208_219c338: ; 0x0219C338
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_021EF118
	add r4, r0, #0
	ldr r0, _0219C370 ; =0x00001824
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r5, r0, #0
	beq _0219C36C
_0219C350:
	add r0, r5, #0
	bl sub_0219DA18
	bl sub_021EF118
	cmp r4, r0
	bne _0219C362
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219C362:
	add r0, r5, #0
	bl sub_0219D9C8
	add r5, r0, #0
	bne _0219C350
_0219C36C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219C370: .word 0x00001824
	thumb_func_end ovy208_219c338

	thumb_func_start ovy208_219c374
ovy208_219c374: ; 0x0219C374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	ldrh r1, [r3]
	str r0, [sp]
	mov r5, #0
	add r0, r1, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0xa
	add r6, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #0x10]
	cmp r5, #9
	bge _0219C41A
_0219C396:
	cmp r7, #0
	bne _0219C39E
	mov r0, #1
	b _0219C3A6
_0219C39E:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_021BB598
_0219C3A6:
	str r0, [sp, #8]
	mov r0, #0x62
	ldr r1, [sp]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_021BBCA8
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _0219C414
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0219C414
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219C428 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	add r0, r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219C428 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	ldr r2, [r6]
	ldr r1, [sp, #0xc]
	sub r0, #0x10
	sub r1, r2, r1
	ldr r2, [r6, #4]
	sub r3, r2, r0
	add r2, r1, #0
	add r0, r3, #0
	mul r2, r1
	mul r0, r3
	add r1, r2, r0
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _0219C414
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
_0219C414:
	add r5, r5, #1
	cmp r5, #9
	blt _0219C396
_0219C41A:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C428: .word 0x45800000
	thumb_func_end ovy208_219c374

	thumb_func_start ovy208_219c42c
ovy208_219c42c: ; 0x0219C42C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r0, #0
	ldr r0, _0219C75C ; =0x00001828
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r4, r0, #0
	bne _0219C440
	b _0219C59C
_0219C440:
	ldr r0, _0219C75C ; =0x00001828
	str r0, [sp, #0x3c]
	add r0, #0x5c
	str r0, [sp, #0x3c]
	ldr r0, _0219C75C ; =0x00001828
	str r0, [sp, #0x38]
	add r0, #0x5c
	str r0, [sp, #0x38]
	ldr r0, _0219C75C ; =0x00001828
	str r0, [sp, #0x44]
	add r0, #0x5c
	str r0, [sp, #0x44]
	ldr r0, _0219C75C ; =0x00001828
	str r0, [sp, #0x40]
	add r0, #0x5c
	str r0, [sp, #0x40]
_0219C460:
	add r0, r4, #0
	str r4, [sp, #0x30]
	bl sub_0219D9D8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219DA10
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219D9F8
	str r0, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0219D9E8
	str r0, [sp, #0x28]
	add r0, r4, #0
	bl sub_0219DA00
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	sub r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	beq _0219C582
	mov r1, #1
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xc
	sub r1, r1, r0
	add r0, r1, #0
	mul r0, r6
	mov r1, #0xa
	blx sub_0208D65C
	ldr r1, [sp, #0x24]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r0, [sp, #0x3c]
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r3, r2, #0
	bl sub_021BB95C
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x70
	bl sub_021BB94C
	lsl r0, r6, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xa
	sub r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	sub r1, r1, r0
	ldr r0, [sp, #0x10]
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	ldr r1, [sp, #0x14]
	add r0, r1, r0
	cmp r0, #0
	ble _0219C50C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C51A
_0219C50C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C51A:
	blx sub_0208DA4C
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0xc]
	sub r1, r1, r0
	ldr r0, [sp, #0x10]
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	cmp r0, #0
	ble _0219C552
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C560
_0219C552:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C560:
	blx sub_0208DA4C
	str r0, [sp, #0x74]
	mov r0, #0x46
	lsl r0, r0, #0xc
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x40]
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x70
	bl sub_021BB934
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	bl sub_0219DA0C
	b _0219C596
_0219C582:
	ldr r0, _0219C75C ; =0x00001828
	ldr r1, [sp, #0x30]
	ldr r0, [r5, r0]
	bl ovy208_219d908
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x30]
	ldr r1, [r5, r1]
	bl ovy208_219d998
_0219C596:
	cmp r4, #0
	beq _0219C59C
	b _0219C460
_0219C59C:
	ldr r6, _0219C760 ; =0x00001820
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, r6]
	bl sub_0219D944
	add r4, r0, #0
	bne _0219C5BA
	mov r0, #1
	str r0, [sp, #0x20]
	add r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r4, r0, #0
_0219C5BA:
	cmp r4, #0
	bne _0219C5C0
	b _0219C756
_0219C5C0:
	ldr r0, _0219C764 ; =0x00001884
	add r0, r5, r0
	str r0, [sp, #0x4c]
	ldr r0, _0219C764 ; =0x00001884
	add r0, r5, r0
	str r0, [sp, #0x50]
	ldr r0, _0219C764 ; =0x00001884
	add r0, r5, r0
	str r0, [sp, #0x48]
	ldr r0, _0219C764 ; =0x00001884
	str r0, [sp, #0x54]
	sub r0, #0x60
	str r0, [sp, #0x54]
_0219C5DA:
	add r0, r4, #0
	bl sub_0219DA10
	str r0, [sp, #0x34]
	cmp r0, #0
	bne _0219C5E8
	b _0219C732
_0219C5E8:
	add r0, r4, #0
	bl sub_0219D9D8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219D9F8
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0219D9E8
	add r6, r0, #0
	ldr r0, [sp, #0x34]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	beq _0219C6B2
	ldr r0, _0219C764 ; =0x00001884
	add r1, r7, #0
	ldr r0, [r5, r0]
	add r2, sp, #0x64
	bl sub_021BB94C
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [r6]
	ldr r0, [r0]
	str r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #4]
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	ldr r1, [sp, #8]
	add r0, r1, r0
	cmp r0, #0
	ble _0219C64E
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C65C
_0219C64E:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C65C:
	blx sub_0208DA4C
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x18]
	ldr r1, [r6, #4]
	ldr r0, [r0, #4]
	str r0, [sp]
	sub r1, r1, r0
	ldr r0, [sp, #4]
	mul r0, r1
	mov r1, #0xa
	blx sub_0208D65C
	ldr r1, [sp]
	add r0, r1, r0
	cmp r0, #0
	ble _0219C690
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C69E
_0219C690:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C69E:
	blx sub_0208DA4C
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x48]
	add r1, r7, #0
	ldr r0, [r0]
	add r2, sp, #0x64
	bl sub_021BB934
	b _0219C72A
_0219C6B2:
	ldr r0, [sp, #0x4c]
	add r1, r7, #0
	ldr r0, [r0]
	add r2, sp, #0x58
	bl sub_021BB94C
	ldr r0, [r6]
	cmp r0, #0
	ble _0219C6D6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C6E4
_0219C6D6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C6E4:
	blx sub_0208DA4C
	str r0, [sp, #0x58]
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0219C702
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219C710
_0219C702:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219C710:
	blx sub_0208DA4C
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x50]
	add r1, r7, #0
	ldr r0, [r0]
	add r2, sp, #0x58
	bl sub_021BB934
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0219D9EC
_0219C72A:
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0219DA0C
_0219C732:
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219C750
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0219C750
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x54]
	ldr r0, [r5, r0]
	bl sub_0219D944
	add r4, r0, #0
_0219C750:
	cmp r4, #0
	beq _0219C756
	b _0219C5DA
_0219C756:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_0219C75C: .word 0x00001828
_0219C760: .word 0x00001820
_0219C764: .word 0x00001884
	thumb_func_end ovy208_219c42c

	thumb_func_start ovy208_219c768
ovy208_219c768: ; 0x0219C768
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _0219C780
	ldr r0, _0219C7B0 ; =0x00001884
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_021BB914
	pop {r3, r4, r5, pc}
_0219C780:
	bl sub_0219D9CC
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0219C7AC
	ldr r5, _0219C7B0 ; =0x00001884
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, r5]
	mov r2, #1
	bl sub_021BB914
	ldr r0, [r4, #0x38]
	bl sub_0219D9D8
	add r1, r0, #0
	ldr r0, [r4, r5]
	ldr r2, [r4, #0x4c]
	bl sub_021BB8D4
_0219C7AC:
	pop {r3, r4, r5, pc}
	nop
_0219C7B0: .word 0x00001884
	thumb_func_end ovy208_219c768

	thumb_func_start ovy208_219c7b4
ovy208_219c7b4: ; 0x0219C7B4
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	blx sub_0208D374
	add r1, r4, #0
	blx sub_0208DD34
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, r0, #0
	mul r1, r0
	add r0, r5, #0
	mul r0, r5
	add r1, r1, r0
	add r0, r6, #0
	mul r0, r6
	cmp r1, r0
	bge _0219C7E4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219C7E4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy208_219c7b4

	thumb_func_start ovy208_219c7e8
ovy208_219c7e8: ; 0x0219C7E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r2, [sp, #4]
	add r0, #0xa8
	str r1, [sp]
	ldrh r1, [r0]
	mov r4, #0
	cmp r1, #0
	bls _0219C828
	add r6, r5, #0
	ldr r7, _0219C8D4 ; =0x00001434
	add r6, #0xac
_0219C802:
	ldr r0, [sp, #4]
	add r0, r0, r4
	blx sub_0208D65C
	mov r0, #0x14
	lsl r1, r1, #0x10
	mul r0, r4
	lsr r1, r1, #0xe
	add r0, r6, r0
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0xa8
	ldrh r1, [r0]
	cmp r4, r1
	blo _0219C802
_0219C828:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	bls _0219C8D0
_0219C830:
	ldr r2, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r2, r0
	blx sub_0208D65C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, _0219C8D4 ; =0x00001434
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r2, r1]
	ldr r2, [sp]
	bl ovy208_219c8d8
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0xa8
	ldrh r1, [r0]
	cmp r4, r1
	bhs _0219C8A0
_0219C86C:
	ldr r0, [sp, #4]
	add r0, r0, r4
	blx sub_0208D65C
	lsl r0, r1, #0x10
	lsr r7, r0, #0x10
	lsl r1, r7, #2
	add r2, r5, r1
	ldr r1, _0219C8D4 ; =0x00001434
	add r0, r5, #0
	ldr r1, [r2, r1]
	ldr r2, [sp]
	bl ovy208_219c8d8
	cmp r6, r0
	bhs _0219C890
	add r6, r0, #0
	str r7, [sp, #0x10]
_0219C890:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0xa8
	ldrh r1, [r0]
	cmp r4, r1
	blo _0219C86C
_0219C8A0:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _0219C8BA
	lsl r1, r1, #2
	add r4, r5, r1
	ldr r2, _0219C8D4 ; =0x00001434
	ldr r0, [sp, #0xc]
	ldr r3, [r4, r2]
	ldr r0, [r0, r2]
	ldr r1, [sp, #0xc]
	str r3, [r1, r2]
	str r0, [r4, r2]
_0219C8BA:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xa8
	ldrh r1, [r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _0219C830
_0219C8D0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C8D4: .word 0x00001434
	thumb_func_end ovy208_219c7e8

	thumb_func_start ovy208_219c8d8
ovy208_219c8d8: ; 0x0219C8D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0219C938 ; =0x00001884
	ldrh r1, [r4]
	ldr r0, [r5, r0]
	add r7, r2, #0
	bl sub_021BB5B8
	add r6, r0, #0
	ldr r0, _0219C938 ; =0x00001884
	ldrh r1, [r4]
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl sub_021BB5A4
	cmp r6, #1
	bne _0219C90A
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _0219C906
	ldr r2, _0219C93C ; =0x00001770
	b _0219C92A
_0219C906:
	ldr r2, _0219C940 ; =0x00001388
	b _0219C92A
_0219C90A:
	cmp r0, #1
	ldr r0, [r4, #0x10]
	bne _0219C91E
	cmp r0, #1
	bne _0219C91A
	mov r2, #0xfa
_0219C916:
	lsl r2, r2, #4
	b _0219C92A
_0219C91A:
	ldr r2, _0219C944 ; =0x00000BB8
	b _0219C92A
_0219C91E:
	cmp r0, #1
	bne _0219C926
	mov r2, #0x7d
	b _0219C916
_0219C926:
	mov r2, #0xfa
	lsl r2, r2, #2
_0219C92A:
	ldrh r1, [r4]
	ldr r0, _0219C948 ; =0x000003E7
	sub r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C938: .word 0x00001884
_0219C93C: .word 0x00001770
_0219C940: .word 0x00001388
_0219C944: .word 0x00000BB8
_0219C948: .word 0x000003E7
	thumb_func_end ovy208_219c8d8

	thumb_func_start ovy208_219c94c
ovy208_219c94c: ; 0x0219C94C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r0, r4, #0
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _0219CBAC ; =0x3F2AAAAB
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0219CBB0 ; =0x42400000
	blx sub_0208DF14
	blx sub_0208DA80
	ldr r1, _0219CBB4 ; =0x0000182C
	str r0, [sp]
	str r1, [sp, #0x10]
	add r4, #0x48
	lsl r3, r4, #0x10
	ldrh r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy208_219ae1c
	ldr r0, [sp, #0x10]
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0219D944
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _0219C996
	b _0219CB54
_0219C996:
	ldr r0, [sp, #0x10]
	mov r7, #0x3f
	str r0, [sp, #0x14]
	add r0, #0x58
	str r0, [sp, #0x14]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r7, r7, #0x18
	add r0, #0x58
	str r0, [sp, #0x10]
_0219C9AE:
	ldr r0, [sp, #0xc]
	bl sub_0219D9E8
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_0219D9D8
	str r0, [sp, #8]
	ldr r0, [r6]
	sub r0, #0x80
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, [r6, #4]
	add r1, r4, #0
	sub r0, #0x50
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r6, #0
	mul r1, r4
	mul r0, r6
	add r0, r1, r0
	cmp r0, #0
	ble _0219C9EC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _0219C9F8
_0219C9EC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r7, #0
	blx sub_0208E144
_0219C9F8:
	blx sub_0208DA4C
	bl FX_Sqrt
	str r0, [sp, #4]
	cmp r4, #0
	ble _0219CA16
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _0219CA22
_0219CA16:
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r7, #0
	blx sub_0208E144
_0219CA22:
	add r4, r0, #0
	cmp r6, #0
	ble _0219CA38
	lsl r0, r6, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _0219CA44
_0219CA38:
	lsl r0, r6, #0xc
	blx sub_0208D374
	add r1, r7, #0
	blx sub_0208E144
_0219CA44:
	blx sub_0208DA4C
	add r6, r0, #0
	add r0, r4, #0
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Atan2Idx
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r0, [r5, r0]
	add r2, sp, #0x20
	bl sub_021BB94C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0219CA7C
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _0219CA88
_0219CA7C:
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r7, #0
	blx sub_0208E144
_0219CA88:
	blx sub_0208DA4C
	ldr r1, [sp, #4]
	add r2, r1, r0
	asr r0, r4, #4
	lsl r1, r0, #2
	ldr r0, _0219CBB8 ; =FX_SinCosTable_ ; 0x020946BC
	asr r3, r2, #0x1f
	add r6, r0, r1
	mov r0, #2
	ldrsh r0, [r6, r0]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _0219CBBC ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r4, [r5, #0x10]
	add r0, r4, #0
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _0219CBAC ; =0x3F2AAAAB
	blx sub_0208DD34
	mov r1, #0
	blx sub_0208D1D0
	bls _0219CAF2
	add r0, r4, #0
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _0219CBAC ; =0x3F2AAAAB
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0219CBC0 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208DF14
	b _0219CB0E
_0219CAF2:
	add r0, r4, #0
	blx sub_0208D374
	add r1, r0, #0
	ldr r0, _0219CBAC ; =0x3F2AAAAB
	blx sub_0208DD34
	add r1, r0, #0
	ldr r0, _0219CBC0 ; =0x45800000
	blx sub_0208DD34
	add r1, r7, #0
	blx sub_0208E144
_0219CB0E:
	blx sub_0208DA4C
	ldr r1, [sp, #4]
	add r2, r1, r0
	mov r0, #0
	ldrsh r0, [r6, r0]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _0219CBBC ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	mov r0, #5
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r5, r0]
	add r2, sp, #0x20
	bl sub_021BB934
	ldr r0, [sp, #0xc]
	bl sub_0219D9C8
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _0219CB54
	b _0219C9AE
_0219CB54:
	ldr r2, [r5, #0x10]
	mov r0, #2
	mov r1, #3
	neg r2, r2
	bl sub_02044CFC
	mov r1, #0x20
	add r0, sp, #0x1c
	strh r1, [r0]
	ldr r1, [r5, #0x10]
	mov r0, #0xc0
	sub r0, r0, r1
	cmp r0, #0x40
	blt _0219CB72
	mov r0, #0x40
_0219CB72:
	add r0, #0xa0
	add r4, sp, #0x1c
	strh r0, [r4, #2]
	ldr r0, _0219CBC4 ; =0x0000184C
	add r1, sp, #0x1c
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0204C140
	mov r0, #0xe0
	strh r0, [r4]
	ldr r1, [r5, #0x10]
	mov r0, #0xc0
	sub r1, r0, r1
	cmp r1, #0x40
	blt _0219CB94
	mov r1, #0x40
_0219CB94:
	add r1, #0xa0
	add r0, sp, #0x1c
	strh r1, [r0, #2]
	ldr r0, _0219CBC8 ; =0x00001850
	add r1, sp, #0x1c
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0204C140
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0219CBAC: .word 0x3F2AAAAB
_0219CBB0: .word 0x42400000
_0219CBB4: .word 0x0000182C
_0219CBB8: .word FX_SinCosTable_
_0219CBBC: .word 0x00000000
_0219CBC0: .word 0x45800000
_0219CBC4: .word 0x0000184C
_0219CBC8: .word 0x00001850
	thumb_func_end ovy208_219c94c

	thumb_func_start ovy208_219cbcc
ovy208_219cbcc: ; 0x0219CBCC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r3, _0219CC74 ; =0x0219DD54
	add r5, r0, #0
	add r2, sp, #0
	mov r1, #0xc
_0219CBD8:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0219CBD8
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x1c
	add r1, #0x20
	bl sub_0203DA84
	add r0, sp, #0
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0219CC60
	cmp r0, #0
	beq _0219CC08
	cmp r0, #1
	beq _0219CC20
	b _0219CC66
_0219CC08:
	add r0, r5, #0
	bl ovy208_219ce98
	ldr r0, _0219CC78 ; =0x0000054E
	bl sub_02006254
	add r0, r5, #0
	bl ovy208_219d858
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_0219CC20:
	mov r0, #6
	str r0, [r5, #0xc]
	mov r0, #0xc0
	str r0, [r5, #0x10]
	ldr r0, _0219CC7C ; =0x000007A9
	bl sub_02006254
	add r0, r5, #0
	bl ovy208_219cc80
	ldrh r0, [r5]
	bl sub_020241D4
	ldr r2, [r5, #4]
	add r4, r0, #0
	ldr r2, [r2, #4]
	mov r1, #0
	ldr r2, [r2, #4]
	bl sub_02024464
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy208_219d3c8
	add r0, r4, #0
	bl sub_02024274
	add r0, r5, #0
	bl ovy208_219d858
	b _0219CC66
_0219CC60:
	add r0, r5, #0
	bl ovy208_219ccec
_0219CC66:
	add r0, r5, #0
	bl ovy208_219c768
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219CC74: .word 0x0219DD54
_0219CC78: .word 0x0000054E
_0219CC7C: .word 0x000007A9
	thumb_func_end ovy208_219cbcc

	thumb_func_start ovy208_219cc80
ovy208_219cc80: ; 0x0219CC80
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r5, r0, #0
	add r0, r1, #0
	mov r2, #6
_0219CC8A:
	ldr r3, [r5, #4]
	ldr r4, [r3, #4]
	add r3, r1, #0
	add r1, r1, #1
	mul r3, r2
	lsl r1, r1, #0x18
	add r3, r4, r3
	lsr r1, r1, #0x18
	strh r0, [r3, #0x16]
	cmp r1, #9
	blo _0219CC8A
	ldr r7, _0219CCE8 ; =0x00001824
	ldr r0, [r5, r7]
	bl sub_0219D944
	add r4, r0, #0
	beq _0219CCE4
	add r0, r7, #0
	str r0, [sp]
	add r0, #0x5c
	str r0, [sp]
	add r7, #0x60
_0219CCB6:
	add r0, r4, #0
	bl sub_0219DA18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp]
	ldr r0, [r5, r0]
	bl sub_021BBCA8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219D9D8
	add r1, r0, #0
	ldrh r2, [r6, #0x36]
	ldr r0, [r5, r7]
	bl sub_021BB97C
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219CCB6
_0219CCE4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CCE8: .word 0x00001824
	thumb_func_end ovy208_219cc80

	thumb_func_start ovy208_219ccec
ovy208_219ccec: ; 0x0219CCEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x28]
	bl sub_0203DA48
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x1c
	add r1, #0x20
	bl sub_0203DA84
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _0219CD46
	ldr r0, _0219CD68 ; =0x00001824
	mov r6, #1
	ldr r0, [r5, r0]
	mov r7, #0
	lsl r6, r6, #8
	bl sub_0219D944
	add r4, r0, #0
	beq _0219CD40
_0219CD24:
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	add r0, r4, #0
	bl ovy208_219dae4
	cmp r6, r0
	bls _0219CD36
	add r7, r4, #0
	add r6, r0, #0
_0219CD36:
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	bne _0219CD24
_0219CD40:
	cmp r7, #0
	beq _0219CD46
	str r7, [r5, #0x38]
_0219CD46:
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0219CD58
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _0219CD58
	add r0, r5, #0
	bl ovy208_219cd6c
_0219CD58:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0219CD64
	mov r0, #0
	str r0, [r5, #0x30]
	str r0, [r5, #0x38]
_0219CD64:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CD68: .word 0x00001824
	thumb_func_end ovy208_219ccec

	thumb_func_start ovy208_219cd6c
ovy208_219cd6c: ; 0x0219CD6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219DA18
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_021BBCA8
	str r0, [sp]
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	ldr r0, [r5, #0x38]
	bl sub_0219D9E8
	ldr r6, [r0, #4]
	ldr r1, [r5, #0x1c]
	ldr r0, [r0]
	sub r0, r1, r0
	cmp r0, #0
	ble _0219CDB2
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219CDC0
_0219CDB2:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219CDC0:
	blx sub_0208DA4C
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	sub r0, r0, r6
	cmp r0, #0
	ble _0219CDE0
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219CDEE
_0219CDE0:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219CDEE:
	blx sub_0208DA4C
	add r1, r0, #0
	add r0, r7, #0
	bl FX_Atan2Idx
	add r7, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #1
	bne _0219CE7A
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	add r1, r0, r6
	mov r0, #0x16
	ldrsh r2, [r1, r0]
	ldrh r0, [r5, #0x2c]
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	ldr r0, _0219CE84 ; =0xFFFFF556
	cmp r4, r0
	bge _0219CE28
	add r4, r0, #0
_0219CE28:
	ldr r0, _0219CE88 ; =0x00000AAA
	cmp r4, r0
	ble _0219CE30
	add r4, r0, #0
_0219CE30:
	ldr r0, _0219CE8C ; =0x000018C4
	sub r2, r2, r4
	ldrsh r1, [r5, r0]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add r1, r1, r2
	strh r1, [r5, r0]
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0219CE46
	neg r1, r1
_0219CE46:
	ldr r0, _0219CE90 ; =0x0000071C
	cmp r1, r0
	ble _0219CE58
	ldr r1, _0219CE8C ; =0x000018C4
	mov r2, #0
	sub r0, #0xf3
	strh r2, [r5, r1]
	bl sub_02006254
_0219CE58:
	ldr r0, [r5, #0x38]
	bl sub_0219D9D8
	ldr r2, [sp]
	add r1, r0, #0
	ldrh r2, [r2, #0x36]
	ldr r0, _0219CE94 ; =0x00001884
	add r2, r2, r4
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl sub_021BB97C
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	add r0, r0, r6
	strh r4, [r0, #0x16]
_0219CE7A:
	mov r0, #1
	strh r7, [r5, #0x2c]
	str r0, [r5, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CE84: .word 0xFFFFF556
_0219CE88: .word 0x00000AAA
_0219CE8C: .word 0x000018C4
_0219CE90: .word 0x0000071C
_0219CE94: .word 0x00001884
	thumb_func_end ovy208_219cd6c

	thumb_func_start ovy208_219ce98
ovy208_219ce98: ; 0x0219CE98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #4]
	ldr r0, [r0, #8]
	bl sub_0200AD44
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	mov r5, #0
	ldr r0, [r0, #8]
	bl sub_0200AD20
	ldr r0, _0219CF40 ; =0x00001824
	str r0, [sp, #0xc]
	ldr r0, [r6, r0]
	bl sub_0219D944
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r0, #0x5c
	str r0, [sp, #0xc]
	b _0219CF34
_0219CEC6:
	add r0, r4, #0
	bl sub_0219DA18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r6, r0]
	bl sub_021BBCA8
	mov r0, #6
	ldr r1, [sp, #8]
	mul r0, r5
	add r1, r1, r0
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	strb r2, [r1, r0]
	add r0, r4, #0
	bl sub_0219D9CC
	ldrh r1, [r0]
	ldr r0, [sp]
	strh r1, [r0, #2]
	ldr r1, [sp, #4]
	mov r0, #6
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r6, #4]
	ldr r0, [r0, #4]
	add r1, r0, r7
	mov r0, #0x16
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	strh r1, [r0, #4]
	add r0, r4, #0
	bl sub_0219D9CC
	ldr r1, [r6, #4]
	ldrh r0, [r0]
	ldr r1, [r1, #4]
	add r1, r1, r7
	strh r0, [r1, #0x14]
	ldr r0, [r6, #4]
	ldr r0, [r0, #4]
	add r0, r0, r7
	strb r5, [r0, #0x18]
	add r0, r4, #0
	bl sub_0219D9C8
	add r4, r0, #0
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0219CF34:
	cmp r4, #0
	beq _0219CF3C
	cmp r5, #8
	blo _0219CEC6
_0219CF3C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF40: .word 0x00001824
	thumb_func_end ovy208_219ce98

	thumb_func_start ovy208_219cf44
ovy208_219cf44: ; 0x0219CF44
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x20
	add r1, sp, #8
	strh r0, [r1]
	mov r0, #0x63
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	lsl r0, r0, #1
	add r0, #0xa0
	strh r0, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xe0
	blt _0219CF68
	mov r0, #0xe0
	strh r0, [r1, #2]
_0219CF68:
	ldr r5, _0219CFD0 ; =0x0000184C
	add r1, sp, #8
	ldr r0, [r4, r5]
	mov r2, #0
	bl sub_0204C140
	mov r0, #0xe0
	add r2, sp, #8
	strh r0, [r2]
	add r5, #0x74
	ldrb r1, [r4, r5]
	lsl r1, r1, #1
	add r1, #0xa0
	strh r1, [r2, #2]
	mov r1, #2
	ldrsh r1, [r2, r1]
	cmp r1, #0xe0
	blt _0219CF8E
	strh r0, [r2, #2]
_0219CF8E:
	ldr r5, _0219CFD4 ; =0x00001850
	add r1, sp, #8
	ldr r0, [r4, r5]
	mov r2, #0
	bl sub_0204C140
	add r5, #0x70
	ldrb r1, [r4, r5]
	mov r0, #0x18
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D65C
	add r0, r0, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xb
	blo _0219CFB4
	mov r0, #3
_0219CFB4:
	mov r3, #0xc
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #0xa
	mov r2, #0x2c
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219CFD0: .word 0x0000184C
_0219CFD4: .word 0x00001850
	thumb_func_end ovy208_219cf44

	thumb_func_start ovy208_219cfd8
ovy208_219cfd8: ; 0x0219CFD8
	push {r3, r4}
	ldr r2, _0219D030 ; =0x0000183C
	mov r4, #1
	add r1, r2, #0
	str r4, [r0, r2]
	mov r3, #0
	add r1, #8
	strh r3, [r0, r1]
	add r2, #0xa
	strb r4, [r0, r2]
	add r4, r3, #0
	ldr r3, _0219D034 ; =0x00001434
	mov r1, #5
_0219CFF2:
	lsl r2, r1, #2
	add r2, r0, r2
	ldr r2, [r2, r3]
	ldr r2, [r2, #0xc]
	cmp r2, #1
	bne _0219D014
	add r2, r0, #0
	add r2, #0xa8
	add r1, r1, #1
	lsl r1, r1, #0x10
	ldrh r2, [r2]
	lsr r1, r1, #0x10
	cmp r1, r2
	bne _0219D010
	add r1, r4, #0
_0219D010:
	cmp r1, #5
	bne _0219CFF2
_0219D014:
	cmp r1, #0
	bne _0219D020
	add r1, r0, #0
	add r1, #0xa8
	ldrh r1, [r1]
	b _0219D020
_0219D020:
	sub r2, r1, #1
	ldr r1, _0219D038 ; =0x00001847
	strb r2, [r0, r1]
	mov r1, #0
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
	nop
_0219D030: .word 0x0000183C
_0219D034: .word 0x00001434
_0219D038: .word 0x00001847
	thumb_func_end ovy208_219cfd8

	thumb_func_start ovy208_219d03c
ovy208_219d03c: ; 0x0219D03C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219D05C ; =0x0000183C
	mov r1, #0
	str r1, [r4, r0]
	mov r2, #1
	str r2, [r4, #0xc]
	add r0, #0x18
	ldr r0, [r4, r0]
	bl sub_0204C124
	add r0, r4, #0
	bl ovy208_219d450
	pop {r4, pc}
	nop
_0219D05C: .word 0x0000183C
	thumb_func_end ovy208_219d03c

	thumb_func_start ovy208_219d060
ovy208_219d060: ; 0x0219D060
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r1, _0219D134 ; =0x00001846
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #9
	bhi _0219D112
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0219D07A: ; jump table
	.short _0219D112 - _0219D07A - 2 ; case 0
	.short _0219D08E - _0219D07A - 2 ; case 1
	.short _0219D0AA - _0219D07A - 2 ; case 2
	.short _0219D0B2 - _0219D07A - 2 ; case 3
	.short _0219D0CA - _0219D07A - 2 ; case 4
	.short _0219D0CC - _0219D07A - 2 ; case 5
	.short _0219D0EC - _0219D07A - 2 ; case 6
	.short _0219D0EE - _0219D07A - 2 ; case 7
	.short _0219D108 - _0219D07A - 2 ; case 8
	.short _0219D10A - _0219D07A - 2 ; case 9
_0219D08E:
	add r1, r1, #1
	ldrb r3, [r4, r1]
	ldr r1, _0219D138 ; =0x00001249
	add r2, r3, #0
	mul r2, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
_0219D09C:
	mov r5, #0xf
	mul r5, r3
	lsl r3, r5, #0x10
	lsr r3, r3, #0x10
	bl ovy208_219d150
	b _0219D112
_0219D0AA:
	mov r1, #0x1e
	bl ovy208_219d248
	b _0219D112
_0219D0B2:
	add r1, r1, #1
	ldrb r3, [r4, r1]
	ldr r1, _0219D138 ; =0x00001249
	add r2, r3, #0
	mul r2, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	neg r1, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	neg r2, r2
	b _0219D09C
_0219D0CA:
	b _0219D0AA
_0219D0CC:
	ldr r2, _0219D13C ; =0x0219DD18
	add r1, sp, #0x1c
	ldr r3, [r2]
	ldr r2, [r2, #4]
	str r3, [sp, #0x1c]
	ldr r3, _0219D140 ; =0x0219DD20
	str r2, [sp, #0x20]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	add r2, sp, #0x14
	str r5, [sp, #0x14]
	str r3, [sp, #0x18]
_0219D0E4:
	mov r3, #0x3c
	bl ovy208_219d280
	b _0219D112
_0219D0EC:
	b _0219D0AA
_0219D0EE:
	ldr r2, _0219D144 ; =0x0219DD10
	add r1, sp, #0xc
	ldr r3, [r2]
	ldr r2, [r2, #4]
	str r3, [sp, #0xc]
	ldr r3, _0219D148 ; =0x0219DD08
	str r2, [sp, #0x10]
	ldr r5, [r3]
	ldr r3, [r3, #4]
	add r2, sp, #4
	str r5, [sp, #4]
	str r3, [sp, #8]
	b _0219D0E4
_0219D108:
	b _0219D0AA
_0219D10A:
	bl ovy208_219d03c
	add sp, #0x24
	pop {r4, r5, pc}
_0219D112:
	ldr r1, [r4, #0x1c]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [r4, #0x20]
	mov r2, #0
	strh r1, [r0, #2]
	ldr r0, _0219D14C ; =0x00001854
	add r1, sp, #0
	ldr r0, [r4, r0]
	bl sub_0204C140
	add r0, r4, #0
	bl ovy208_219ada0
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0219D134: .word 0x00001846
_0219D138: .word 0x00001249
_0219D13C: .word 0x0219DD18
_0219D140: .word 0x0219DD20
_0219D144: .word 0x0219DD10
_0219D148: .word 0x0219DD08
_0219D14C: .word 0x00001854
	thumb_func_end ovy208_219d060

	thumb_func_start ovy208_219d150
ovy208_219d150: ; 0x0219D150
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0219D23C ; =0x00001854
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [r5, r4]
	add r6, r2, #0
	add r7, r3, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	add r1, r7, #0
	blx sub_0208D65C
	add r6, r0, #0
	add r0, r4, #0
	sub r0, #0x10
	ldrh r0, [r5, r0]
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	sub r1, r0, r1
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #4
	lsl r1, r1, #1
	str r1, [sp, #8]
	lsl r2, r1, #1
	ldr r1, _0219D240 ; =FX_SinCosTable_ ; 0x020946BC
	lsl r0, r0, #0xf
	ldrsh r1, [r1, r2]
	mov r2, #0x48
	mul r2, r1
	add r0, r2, r0
	blx sub_0208D374
	ldr r1, _0219D244 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA80
	str r0, [r5, #0x1c]
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0219D240 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #0x30
	add r2, r1, #0
	mul r2, r0
	mov r0, #5
	lsl r0, r0, #0x10
	add r0, r2, r0
	blx sub_0208D374
	ldr r1, _0219D244 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA80
	str r0, [r5, #0x20]
	add r0, r4, #0
	sub r0, #0x28
	ldrh r1, [r5, r0]
	lsl r2, r6, #0x10
	lsr r0, r2, #0x10
	sub r1, r1, r0
	add r0, r4, #0
	sub r0, #0x28
	strh r1, [r5, r0]
	mov r0, #0x30
	add r1, r4, #0
	str r0, [sp]
	sub r1, #0x28
	ldrh r1, [r5, r1]
	add r0, r5, #0
	asr r2, r2, #0x10
	mov r3, #0x48
	bl ovy208_219ae1c
	add r0, r4, #0
	sub r0, #0x10
	ldrh r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0x10
	strh r1, [r5, r0]
	add r0, r4, #0
	sub r0, #0x10
	ldrh r0, [r5, r0]
	cmp r0, r7
	bls _0219D236
	add r1, r4, #0
	sub r1, #0x10
	mov r0, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0xe
	ldrb r0, [r5, r0]
	sub r4, #0xe
	add r0, r0, #1
	strb r0, [r5, r4]
_0219D236:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D23C: .word 0x00001854
_0219D240: .word FX_SinCosTable_
_0219D244: .word 0x45800000
	thumb_func_end ovy208_219d150

	thumb_func_start ovy208_219d248
ovy208_219d248: ; 0x0219D248
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
	ldr r4, _0219D27C ; =0x00001844
	str r7, [r5, #0x18]
	str r7, [r5, #0x14]
	ldrh r0, [r5, r4]
	add r6, r1, #0
	mov r1, #0
	add r0, r0, #1
	strh r0, [r5, r4]
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldrh r0, [r5, r4]
	cmp r0, r6
	bls _0219D27A
	strh r7, [r5, r4]
	add r0, r4, #2
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #2
	strb r1, [r5, r0]
_0219D27A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D27C: .word 0x00001844
	thumb_func_end ovy208_219d248

	thumb_func_start ovy208_219d280
ovy208_219d280: ; 0x0219D280
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #4]
	mov r1, #1
	ldr r0, _0219D304 ; =0x00001844
	str r1, [r5, #0x18]
	ldrh r0, [r5, r0]
	str r2, [sp]
	cmp r0, #0
	bne _0219D29C
	str r1, [r5, #0x14]
	b _0219D2A0
_0219D29C:
	mov r0, #0
	str r0, [r5, #0x14]
_0219D2A0:
	ldr r0, [r4, #4]
	ldr r7, _0219D304 ; =0x00001844
	str r0, [sp, #8]
	ldr r0, [sp]
	ldrh r6, [r5, r7]
	ldr r1, [r0, #4]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	ldr r1, [sp, #4]
	mul r0, r6
	blx sub_0208D65C
	ldr r1, [sp, #8]
	ldr r4, [r4]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	sub r0, r0, r4
	mul r0, r6
	blx sub_0208D65C
	add r0, r4, r0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r0, [r5, #0x20]
	add r0, r7, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldrh r0, [r5, r7]
	add r0, r0, #1
	strh r0, [r5, r7]
	ldrh r1, [r5, r7]
	ldr r0, [sp, #4]
	cmp r1, r0
	bls _0219D2FE
	mov r0, #0
	strh r0, [r5, r7]
	add r0, r7, #2
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, r7, #2
	strb r1, [r5, r0]
_0219D2FE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D304: .word 0x00001844
	thumb_func_end ovy208_219d280

	thumb_func_start ovy208_219d308
ovy208_219d308: ; 0x0219D308
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	ldr r5, _0219D38C ; =0x000018E4
	mov r1, #2
	str r0, [r4, r5]
	ldrh r3, [r4]
	mov r0, #0
	mov r2, #0x23
	bl sub_0204875C
	add r1, r5, #0
	sub r1, #0xc
	str r0, [r4, r1]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x5d
	bl sub_0204875C
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x60
	bl sub_0204875C
	sub r1, r5, #4
	str r0, [r4, r1]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r4]
	mov r3, #7
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	lsl r3, r3, #6
	bl sub_0204B0B8
	ldrh r0, [r4]
	bl sub_02021998
	add r1, r5, #4
	str r0, [r4, r1]
	ldrh r0, [r4]
	mov r1, #0x80
	mov r2, #0xc
	str r0, [sp]
	mov r0, #7
	mov r3, #0
	bl sub_02024D00
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219D38C: .word 0x000018E4
	thumb_func_end ovy208_219d308

	thumb_func_start ovy208_219d390
ovy208_219d390: ; 0x0219D390
	push {r3, r4, r5, lr}
	ldr r5, _0219D3C4 ; =0x000018E8
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_02021A18
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl sub_020487D4
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl sub_020487D4
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_020487D4
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_02022DA8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D3C4: .word 0x000018E8
	thumb_func_end ovy208_219d390

	thumb_func_start ovy208_219d3c8
ovy208_219d3c8: ; 0x0219D3C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0219D448 ; =0x000018D8
	add r4, r0, #0
	ldr r0, [r4, r5]
	add r7, r2, #0
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02021C44
	add r5, #0x14
	ldr r0, [r4, r5]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	cmp r7, #0
	beq _0219D412
	ldrh r1, [r4]
	mov r0, #0x80
	bl sub_02048530
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl sub_02048564
	add r6, r5, #0
_0219D412:
	ldr r5, _0219D44C ; =0x000018EC
	ldr r0, [r4, r5]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	sub r0, #8
	ldr r0, [r4, r0]
	mov r2, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	sub r0, r5, #4
	ldr r0, [r4, r0]
	mov r3, #2
	bl sub_02021C7C
	add r0, r6, #0
	bl sub_02048564
	mov r0, #1
	sub r5, #0x20
	str r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D448: .word 0x000018D8
_0219D44C: .word 0x000018EC
	thumb_func_end ovy208_219d3c8

	thumb_func_start ovy208_219d450
ovy208_219d450: ; 0x0219D450
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	bl sub_020241D4
	ldr r2, [r5, #4]
	add r4, r0, #0
	ldr r2, [r2, #4]
	mov r1, #0
	ldr r2, [r2, #4]
	bl sub_02024464
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy208_219d3c8
	add r0, r4, #0
	bl sub_02024274
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy208_219d450

	thumb_func_start ovy208_219d47c
ovy208_219d47c: ; 0x0219D47C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0219D510 ; =0x00001884
	add r5, r0, #0
	ldr r0, [r5, r4]
	add r6, r1, #0
	bl sub_021BB9B8
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0219D9CC
	add r6, r0, #0
	ldrh r1, [r6]
	add r0, r7, #0
	bl sub_021EF17C
	str r0, [sp, #8]
	ldrh r0, [r5]
	bl sub_020241D4
	add r7, r0, #0
	add r0, r4, #0
	ldrh r1, [r6]
	add r0, #0x58
	ldr r0, [r5, r0]
	add r1, r1, #3
	bl sub_0204898C
	ldr r1, [sp, #8]
	add r4, #0x5c
	add r6, r0, #0
	add r1, #0x10
	ldr r0, [r5, r4]
	str r1, [sp, #8]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #1
	add r2, r4, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	mov r1, #3
	add r2, r7, #0
	bl ovy208_219d3c8
	add r0, r4, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02048564
	add r0, r7, #0
	bl sub_02024274
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D510: .word 0x00001884
	thumb_func_end ovy208_219d47c

	thumb_func_start ovy208_219d514
ovy208_219d514: ; 0x0219D514
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #8
	bne _0219D52A
	mov r1, #5
	mov r2, #0
	bl ovy208_219d3c8
	add sp, #8
	pop {r4, r5, r6, pc}
_0219D52A:
	mov r4, #0
	cmp r1, #7
	bhi _0219D562
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D53C: ; jump table
	.short _0219D54C - _0219D53C - 2 ; case 0
	.short _0219D54C - _0219D53C - 2 ; case 1
	.short _0219D550 - _0219D53C - 2 ; case 2
	.short _0219D554 - _0219D53C - 2 ; case 3
	.short _0219D558 - _0219D53C - 2 ; case 4
	.short _0219D55C - _0219D53C - 2 ; case 5
	.short _0219D560 - _0219D53C - 2 ; case 6
	.short _0219D560 - _0219D53C - 2 ; case 7
_0219D54C:
	mov r4, #0x10
	b _0219D562
_0219D550:
	mov r4, #0x11
	b _0219D562
_0219D554:
	mov r4, #0x17
	b _0219D562
_0219D558:
	mov r4, #0x14
	b _0219D562
_0219D55C:
	mov r4, #0x15
	b _0219D562
_0219D560:
	mov r4, #0x16
_0219D562:
	ldrh r0, [r5]
	bl sub_020241D4
	add r6, r0, #0
	ldr r0, _0219D5A4 ; =0x000018E0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	mov r1, #4
	add r2, r6, #0
	bl ovy208_219d3c8
	add r0, r4, #0
	bl sub_02048564
	add r0, r6, #0
	bl sub_02024274
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D5A4: .word 0x000018E0
	thumb_func_end ovy208_219d514

	thumb_func_start ovy208_219d5a8
ovy208_219d5a8: ; 0x0219D5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, _0219D6E0 ; =0x00001848
	mov r6, #0
	str r0, [sp, #0x28]
	add r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, _0219D6E0 ; =0x00001848
	add r7, r6, #0
	str r0, [sp, #0x24]
	add r0, #0x24
	str r0, [sp, #0x24]
	ldr r0, _0219D6E0 ; =0x00001848
	str r0, [sp, #0x20]
	add r0, #0x30
	str r0, [sp, #0x20]
	ldr r0, _0219D6E0 ; =0x00001848
	str r0, [sp, #0x1c]
	add r0, #0x48
	str r0, [sp, #0x1c]
	ldr r0, _0219D6E0 ; =0x00001848
	str r0, [sp, #0x18]
	add r0, #0x48
	str r0, [sp, #0x18]
	ldr r0, _0219D6E0 ; =0x00001848
	str r0, [sp, #0x14]
	add r0, #0x48
	str r0, [sp, #0x14]
	ldr r0, _0219D6E0 ; =0x00001848
	str r0, [sp, #0x10]
	add r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, _0219D6E0 ; =0x00001848
	str r0, [sp, #0xc]
	add r0, #0x70
	str r0, [sp, #0xc]
_0219D5F2:
	add r0, sp, #0x2c
	strh r7, [r0, #8]
	strh r7, [r0, #0xa]
	strh r7, [r0, #0xc]
	strb r7, [r0, #0xe]
	strb r7, [r0, #0xf]
	lsl r0, r6, #2
	add r4, r5, r0
	add r0, sp, #0x34
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, _0219D6E0 ; =0x00001848
	ldr r3, [sp, #0x20]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x1c]
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C318
	ldr r0, [sp, #0xc]
	add r1, r5, r6
	strb r7, [r1, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #8
	blo _0219D5F2
	mov r0, #0x80
	add r6, sp, #0x2c
	strh r0, [r6]
	mov r0, #0x60
	strh r0, [r6, #2]
	strh r7, [r6, #4]
	strb r7, [r6, #6]
	strb r7, [r6, #7]
	ldr r4, _0219D6E0 ; =0x00001848
	add r0, sp, #0x2c
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x14
	add r2, #0x20
	add r3, #0x2c
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x68
	str r0, [r5, r1]
	add r1, r7, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x68
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	mov r0, #2
	strh r0, [r6, #4]
	add r0, sp, #0x2c
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp, #8]
	add r1, #0x14
	add r2, #0x20
	add r3, #0x2c
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x6c
	str r0, [r5, r1]
	add r1, r7, #0
	bl sub_0204C124
	add r4, #0x6c
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D6E0: .word 0x00001848
	thumb_func_end ovy208_219d5a8

	thumb_func_start ovy208_219d6e4
ovy208_219d6e4: ; 0x0219D6E4
	push {r4, r5, r6, lr}
	ldr r6, _0219D714 ; =0x00001890
	add r5, r0, #0
	mov r4, #0
_0219D6EC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0219D6EC
	ldr r4, _0219D718 ; =0x000018B4
	ldr r0, [r5, r4]
	bl sub_0204C108
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	pop {r4, r5, r6, pc}
	nop
_0219D714: .word 0x00001890
_0219D718: .word 0x000018B4
	thumb_func_end ovy208_219d6e4

	thumb_func_start ovy208_219d71c
ovy208_219d71c: ; 0x0219D71C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, _0219D850 ; =0x00001890
	mov r4, #0
	str r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, _0219D850 ; =0x00001890
	add r7, sp, #0x18
	str r0, [sp, #0x10]
	add r0, #0x28
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xc]
	add r0, #0x90
	str r0, [sp, #0xc]
	ldr r0, _0219D850 ; =0x00001890
	str r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, _0219D850 ; =0x00001890
	str r0, [sp, #4]
	add r0, #0x28
	str r0, [sp, #4]
_0219D750:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	mov r0, #4
	bl sub_0204588C
	add r1, r0, #0
	ldr r0, _0219D850 ; =0x00001890
	ldr r0, [r5, r0]
	bl sub_0204C468
	ldr r0, _0219D850 ; =0x00001890
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C318
	ldr r0, [sp]
	add r6, r0, r4
	ldr r0, [sp, #4]
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _0219D812
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x38
	mov r3, #0
	blx sub_0208D60C
	strh r1, [r7]
	bl sub_02043F2C
	lsr r1, r0, #0x1f
	mov r0, #0
	lsl r0, r0, #1
	orr r0, r1
	cmp r0, #1
	bne _0219D7A8
	mov r0, #0
	ldrsh r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #8
	sub r0, r0, r1
	strh r0, [r7]
_0219D7A8:
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0xc0
	mov r3, #0
	blx sub_0208D60C
	strh r1, [r7, #2]
	ldr r0, _0219D850 ; =0x00001890
	add r1, sp, #0x18
	ldr r0, [r5, r0]
	mov r2, #1
	bl sub_0204C140
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0x5a
	ble _0219D7E0
	bl sub_02043F2C
	add r1, r0, #0
	ldr r0, _0219D850 ; =0x00001890
	lsr r2, r1, #0x1f
	mov r1, #0
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	orr r1, r2
	b _0219D7F4
_0219D7E0:
	bl sub_02043F2C
	add r1, r0, #0
	ldr r0, _0219D850 ; =0x00001890
	lsr r2, r1, #0x1f
	mov r1, #0
	lsl r1, r1, #1
	orr r1, r2
	ldr r0, [r5, r0]
	add r1, r1, #2
_0219D7F4:
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0xc8
	mov r3, #0
	blx sub_0208D60C
	ldr r0, [sp, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #8]
	b _0219D81A
_0219D812:
	ldr r0, [sp, #0x14]
	ldrb r0, [r6, r0]
	sub r1, r0, #1
	ldr r0, [sp, #0x10]
_0219D81A:
	strb r1, [r6, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0219D750
	ldr r4, _0219D854 ; =0x000018B4
	ldr r0, [sp]
	ldr r0, [r0, r4]
	bl sub_0204C138
	cmp r0, #1
	bne _0219D84A
	ldr r0, [sp]
	ldr r0, [r0, r4]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D84A
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, r4]
	bl sub_0204C124
_0219D84A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219D850: .word 0x00001890
_0219D854: .word 0x000018B4
	thumb_func_end ovy208_219d71c

	thumb_func_start ovy208_219d858
ovy208_219d858: ; 0x0219D858
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	add r0, sp, #0
	strh r1, [r0]
	ldr r1, [r4, #0x20]
	ldr r5, _0219D884 ; =0x000018B4
	strh r1, [r0, #2]
	ldr r0, [r4, r5]
	bl sub_0204C56C
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r5]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	pop {r3, r4, r5, pc}
	nop
_0219D884: .word 0x000018B4
	thumb_func_end ovy208_219d858

	thumb_func_start sub_0219D888
sub_0219D888: ; 0x0219D888
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D888

	thumb_func_start ovy208_219d88c
ovy208_219d88c: ; 0x0219D88C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0x4c
	str r1, [sp]
	ldr r3, _0219D8B4 ; =0x0219DDD0
	add r5, r0, #0
	mov r1, #0x10
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	strh r5, [r0]
	strh r6, [r0, #4]
	strh r4, [r0, #6]
	str r6, [r0, #8]
	str r6, [r0, #0xc]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219D8B4: .word 0x0219DDD0
	thumb_func_end ovy208_219d88c

	thumb_func_start sub_0219D8B8
sub_0219D8B8: ; 0x0219D8B8
	ldr r3, _0219D8BC ; =sub_0203A24C
	bx r3
	.align 2, 0
_0219D8BC: .word sub_0203A24C
	thumb_func_end sub_0219D8B8

	thumb_func_start sub_0219D8C0
sub_0219D8C0: ; 0x0219D8C0
	ldrh r3, [r0, #4]
	ldrh r2, [r0, #6]
	cmp r3, r2
	bhs _0219D8E2
	ldr r2, [r0, #8]
	cmp r2, #0
	bne _0219D8D2
	str r1, [r0, #8]
	b _0219D8D6
_0219D8D2:
	ldr r2, [r0, #0xc]
	str r1, [r2, #0x30]
_0219D8D6:
	str r1, [r0, #0xc]
	mov r2, #0
	str r2, [r1, #0x30]
	ldrh r1, [r0, #4]
	add r1, r1, #1
	strh r1, [r0, #4]
_0219D8E2:
	bx lr
	thumb_func_end sub_0219D8C0

	thumb_func_start sub_0219D8E4
sub_0219D8E4: ; 0x0219D8E4
	ldrh r3, [r0, #4]
	ldrh r2, [r0, #6]
	cmp r3, r2
	bhs _0219D906
	ldr r2, [r0, #8]
	cmp r2, #0
	bne _0219D8FC
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r2, #0
	str r2, [r1, #0x30]
	b _0219D900
_0219D8FC:
	str r2, [r1, #0x30]
	str r1, [r0, #8]
_0219D900:
	ldrh r1, [r0, #4]
	add r1, r1, #1
	strh r1, [r0, #4]
_0219D906:
	bx lr
	thumb_func_end sub_0219D8E4

	thumb_func_start ovy208_219d908
ovy208_219d908: ; 0x0219D908
	push {r3, r4}
	mov r3, #0
	ldr r4, [r0, #8]
	b _0219D914
_0219D910:
	add r3, r4, #0
	ldr r4, [r4, #0x30]
_0219D914:
	cmp r4, r1
	beq _0219D91C
	cmp r4, #0
	bne _0219D910
_0219D91C:
	cmp r4, #0
	beq _0219D93E
	cmp r3, #0
	ldr r2, [r4, #0x30]
	beq _0219D92A
	str r2, [r3, #0x30]
	b _0219D92C
_0219D92A:
	str r2, [r0, #8]
_0219D92C:
	ldr r2, [r0, #0xc]
	cmp r2, r1
	bne _0219D934
	str r3, [r0, #0xc]
_0219D934:
	mov r1, #0
	str r1, [r4, #0x30]
	ldrh r1, [r0, #4]
	sub r1, r1, #1
	strh r1, [r0, #4]
_0219D93E:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy208_219d908

	thumb_func_start sub_0219D944
sub_0219D944: ; 0x0219D944
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219D944

	thumb_func_start sub_0219D948
sub_0219D948: ; 0x0219D948
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219D948

	thumb_func_start sub_0219D94C
sub_0219D94C: ; 0x0219D94C
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #6]
	cmp r1, r0
	bne _0219D958
	mov r0, #1
	bx lr
_0219D958:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219D94C

	thumb_func_start ovy208_219d95c
ovy208_219d95c: ; 0x0219D95C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r3, #0
	mov r1, #0xcc
	add r5, r2, #0
	str r1, [sp]
	ldr r3, _0219D994 ; =0x0219DDD0
	mov r1, #0x34
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x30]
	str r5, [r4, #4]
	ldrh r1, [r5]
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_021BB6C4
	str r0, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0x1c]
	mov r0, #0xa
	str r0, [r4, #0x20]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D994: .word 0x0219DDD0
	thumb_func_end ovy208_219d95c

	thumb_func_start ovy208_219d998
ovy208_219d998: ; 0x0219D998
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldr r1, [r4, #0xc]
	bl sub_021BB7E8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy208_219d998

	thumb_func_start ovy208_219d9ac
ovy208_219d9ac: ; 0x0219D9AC
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	str r3, [r4, #4]
	ldrh r2, [r3]
	ldr r3, [r3, #4]
	add r0, r1, #0
	lsl r3, r3, #0x10
	ldr r1, [r4, #0xc]
	lsr r3, r3, #0x10
	bl sub_021BB81C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy208_219d9ac

	thumb_func_start sub_0219D9C8
sub_0219D9C8: ; 0x0219D9C8
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end sub_0219D9C8

	thumb_func_start sub_0219D9CC
sub_0219D9CC: ; 0x0219D9CC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219D9CC

	thumb_func_start sub_0219D9D0
sub_0219D9D0: ; 0x0219D9D0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0219D9D0

	thumb_func_start sub_0219D9D4
sub_0219D9D4: ; 0x0219D9D4
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219D9D4

	thumb_func_start sub_0219D9D8
sub_0219D9D8: ; 0x0219D9D8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219D9D8

	thumb_func_start sub_0219D9DC
sub_0219D9DC: ; 0x0219D9DC
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D9DC

	thumb_func_start sub_0219D9E8
sub_0219D9E8: ; 0x0219D9E8
	add r0, #0x10
	bx lr
	thumb_func_end sub_0219D9E8

	thumb_func_start sub_0219D9EC
sub_0219D9EC: ; 0x0219D9EC
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [r0, #0x24]
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D9EC

	thumb_func_start sub_0219D9F8
sub_0219D9F8: ; 0x0219D9F8
	add r0, #0x24
	bx lr
	thumb_func_end sub_0219D9F8

	thumb_func_start sub_0219D9FC
sub_0219D9FC: ; 0x0219D9FC
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0219D9FC

	thumb_func_start sub_0219DA00
sub_0219DA00: ; 0x0219DA00
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0219DA00

	thumb_func_start sub_0219DA04
sub_0219DA04: ; 0x0219DA04
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219DA04

	thumb_func_start sub_0219DA08
sub_0219DA08: ; 0x0219DA08
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0219DA08

	thumb_func_start sub_0219DA0C
sub_0219DA0C: ; 0x0219DA0C
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219DA0C

	thumb_func_start sub_0219DA10
sub_0219DA10: ; 0x0219DA10
	ldrh r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0219DA10

	thumb_func_start sub_0219DA14
sub_0219DA14: ; 0x0219DA14
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219DA14

	thumb_func_start sub_0219DA18
sub_0219DA18: ; 0x0219DA18
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219DA18

	thumb_func_start ovy208_219da1c
ovy208_219da1c: ; 0x0219DA1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r1, sp, #0x14
	str r2, [sp]
	bl sub_021BB9AC
	ldr r1, [r5, #0xc]
	mov r0, #0
	mov r4, #0
	bl sub_021BB9A4
	cmp r0, #1
	bne _0219DAA8
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	add r2, sp, #0x10
	bl sub_021BB988
	add r0, sp, #0x10
	ldrh r0, [r0]
	ldr r1, _0219DADC ; =FX_SinCosTable_ ; 0x020946BC
	ldr r6, [sp, #0x18]
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	ldrsh r4, [r1, r0]
	add r0, r2, #1
	lsl r0, r0, #1
	ldrsh r0, [r1, r0]
	ldr r1, [sp, #0x14]
	add r2, r1, #0
	str r0, [sp, #8]
	mul r2, r0
	add r0, r6, #0
	mul r0, r4
	sub r0, r2, r0
	str r1, [sp, #4]
	blx sub_0208D374
	ldr r1, _0219DAE0 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp, #8]
	mul r1, r4
	mul r0, r6
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219DAE0 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	ldr r2, [r5, #0x10]
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	sub r1, r1, r7
	ldr r2, [r5, #0x14]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	sub r2, r2, r0
	b _0219DAB2
_0219DAA8:
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x14]
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_0219DAB2:
	ldr r0, [sp]
	sub r0, r2, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	cmp r1, #0x10
	bge _0219DAD4
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	ble _0219DAD4
	cmp r2, #0x10
	bge _0219DAD4
	cmp r2, r0
	ble _0219DAD4
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219DAD4:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219DADC: .word FX_SinCosTable_
_0219DAE0: .word 0x45800000
	thumb_func_end ovy208_219da1c

	thumb_func_start ovy208_219dae4
ovy208_219dae4: ; 0x0219DAE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	add r1, sp, #0x14
	str r2, [sp]
	bl sub_021BB9AC
	ldr r1, [r5, #0xc]
	mov r0, #0
	mov r4, #0
	bl sub_021BB9A4
	cmp r0, #1
	bne _0219DB70
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	add r2, sp, #0x10
	bl sub_021BB988
	add r0, sp, #0x10
	ldrh r0, [r0]
	ldr r1, _0219DB90 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r6, [sp, #0x18]
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	ldrsh r4, [r1, r0]
	add r0, r2, #1
	lsl r0, r0, #1
	ldrsh r0, [r1, r0]
	ldr r1, [sp, #0x14]
	add r2, r1, #0
	str r0, [sp, #8]
	mul r2, r0
	add r0, r6, #0
	mul r0, r4
	sub r0, r2, r0
	str r1, [sp, #4]
	blx sub_0208D374
	ldr r1, _0219DB94 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp, #8]
	mul r1, r4
	mul r0, r6
	add r0, r1, r0
	blx sub_0208D374
	ldr r1, _0219DB94 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	ldr r2, [r5, #0x10]
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	sub r1, r1, r7
	ldr r2, [r5, #0x14]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	sub r2, r2, r0
	b _0219DB7A
_0219DB70:
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x14]
	sub r0, r0, r7
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
_0219DB7A:
	ldr r0, [sp]
	sub r0, r2, r0
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	add r2, r1, #0
	add r0, r3, #0
	mul r2, r1
	mul r0, r3
	add r0, r2, r0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DB90: .word FX_SinCosTable_
_0219DB94: .word 0x45800000
	thumb_func_end ovy208_219dae4
_0219DB98:
	.byte 0xE3, 0x00, 0x80, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x6E
	.byte 0xE0, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x12, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0xA2, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x60, 0x04, 0x00, 0x88, 0xC0, 0x00, 0x30, 0x88, 0xC0, 0xD8, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x60, 0x04, 0x00, 0x00, 0x02, 0xA0, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x64, 0x75, 0x70, 0x5F, 0x66, 0x69, 0x74, 0x74, 0x69, 0x6E, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x64, 0x75, 0x70, 0x5F, 0x66, 0x69, 0x74, 0x74, 0x69, 0x6E, 0x67, 0x5F, 0x69, 0x74, 0x65, 0x6D
	.byte 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219DB98
