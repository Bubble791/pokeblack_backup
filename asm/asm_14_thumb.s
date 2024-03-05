	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02039A80
sub_02039A80: ; 0x02039A80
	ldr r1, _02039A98 ; =0x0214181C
	ldr r2, [r1, #4]
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _02039A8E
	mov r0, #0
	bx lr
_02039A8E:
	ldr r1, [r1]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	nop
_02039A98: .word 0x0214181C
	thumb_func_end sub_02039A80

	thumb_func_start sub_02039A9C
sub_02039A9C: ; 0x02039A9C
	ldr r1, _02039AB4 ; =0x0214181C
	ldr r2, [r1, #4]
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _02039AAA
	mov r0, #0
	bx lr
_02039AAA:
	ldr r1, [r1]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_02039AB4: .word 0x0214181C
	thumb_func_end sub_02039A9C

	thumb_func_start sub_02039AB8
sub_02039AB8: ; 0x02039AB8
	ldr r1, _02039AD0 ; =0x0214181C
	ldr r2, [r1, #4]
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _02039AC6
	mov r0, #0
	bx lr
_02039AC6:
	ldr r1, [r1]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_02039AD0: .word 0x0214181C
	thumb_func_end sub_02039AB8

	thumb_func_start sub_02039AD4
sub_02039AD4: ; 0x02039AD4
	ldr r1, _02039AEC ; =0x0214181C
	ldr r2, [r1, #4]
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _02039AE2
	mov r0, #0
	bx lr
_02039AE2:
	ldr r1, [r1]
	lsl r0, r0, #4
	add r0, r1, r0
	ldrh r0, [r0, #0xc]
	bx lr
	.align 2, 0
_02039AEC: .word 0x0214181C
	thumb_func_end sub_02039AD4

	thumb_func_start sub_02039AF0
sub_02039AF0: ; 0x02039AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	str r2, [sp, #4]
	ldr r6, [sp]
	add r5, r0, #0
	ldr r0, [sp, #4]
	add r6, #0x18
	cmp r0, r6
	bhs _02039B0A
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
_02039B0A:
	cmp r3, #0
	beq _02039B28
	mov r0, #3
	tst r0, r3
	beq _02039B1E
	mov r0, #3
_02039B16:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _02039B16
_02039B1E:
	mov r0, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_0207B424
_02039B28:
	mov r0, #0
	lsl r1, r6, #4
	mov r2, #4
	mov r4, #0
	bl sub_0207B424
	ldr r2, _02039BD8 ; =0x0214181C
	cmp r6, #0
	str r0, [r2]
	bls _02039B62
	add r0, r4, #0
_02039B3E:
	ldr r3, [r2]
	lsl r1, r4, #4
	str r0, [r3, r1]
	ldr r3, [r2]
	add r4, r4, #1
	add r3, r3, r1
	str r0, [r3, #4]
	ldr r3, [r2]
	add r3, r3, r1
	str r0, [r3, #8]
	ldr r3, [r2]
	add r3, r3, r1
	strh r0, [r3, #0xc]
	ldr r3, [r2]
	add r1, r3, r1
	strb r0, [r1, #0xe]
	cmp r4, r6
	blo _02039B3E
_02039B62:
	ldr r1, [sp, #4]
	mov r0, #0
	mov r2, #4
	mov r4, #0
	bl sub_0207B424
	ldr r1, _02039BD8 ; =0x0214181C
	str r0, [r1, #4]
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _02039B86
	mov r2, #0xff
_02039B7A:
	ldr r0, [r1, #4]
	strb r2, [r0, r4]
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _02039B7A
_02039B86:
	ldr r7, _02039BD8 ; =0x0214181C
	ldr r0, [sp, #4]
	mov r4, #0
	strh r0, [r7, #8]
	ldr r0, [sp]
	strh r0, [r7, #0xa]
	strh r6, [r7, #0xc]
	strh r4, [r7, #0xe]
	ldr r0, [sp]
	cmp r0, #0
	bls _02039BD2
_02039B9C:
	lsl r6, r4, #3
	ldr r1, [r5, r6]
	mov r0, #0
	mov r2, #4
	bl sub_0207B424
	cmp r0, #0
	beq _02039BC0
	ldr r1, [r5, r6]
	mov r2, #0
	bl sub_0205EF58
	ldr r2, [r7]
	lsl r1, r4, #4
	str r0, [r2, r1]
	ldr r0, [r7, #4]
	strb r4, [r0, r4]
	b _02039BCA
_02039BC0:
	ldr r0, _02039BD8 ; =0x0214181C
	add sp, #8
	strh r4, [r0, #0xe]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02039BCA:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blo _02039B9C
_02039BD2:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02039BD8: .word 0x0214181C
	thumb_func_end sub_02039AF0

	thumb_func_start sub_02039BDC
sub_02039BDC: ; 0x02039BDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #2
	lsl r1, r1, #0xe
	add r6, r2, #0
	tst r1, r5
	beq _02039BF0
	mov r4, #3
	mvn r4, r4
	b _02039BF2
_02039BF0:
	mov r4, #4
_02039BF2:
	ldr r7, _02039C40 ; =0x0214181C
	ldr r1, _02039C44 ; =0x00007FFF
	ldr r2, [r7, #4]
	and r5, r1
	ldrb r2, [r2, r5]
	cmp r2, #0xff
	beq _02039C06
	mov r0, #1
_02039C02:
	strh r0, [r7, #0xe]
	b _02039C3C
_02039C06:
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02039A80
	str r0, [sp]
	cmp r0, #0
	bne _02039C1A
	mov r0, #2
	b _02039C02
_02039C1A:
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0205EF80
	add r2, r0, #0
	bne _02039C2A
	mov r0, #3
	b _02039C02
_02039C2A:
	ldr r0, [sp]
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02039C90
	cmp r0, #0
	beq _02039C3C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02039C3C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02039C40: .word 0x0214181C
_02039C44: .word 0x00007FFF
	thumb_func_end sub_02039BDC

	thumb_func_start sub_02039C48
sub_02039C48: ; 0x02039C48
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _02039C88 ; =0x00007FFF
	add r5, r2, #0
	ldr r4, _02039C8C ; =0x0214181C
	and r5, r0
	ldr r0, [r4, #4]
	add r3, r1, #0
	ldrb r0, [r0, r5]
	cmp r0, #0xff
	beq _02039C64
	mov r0, #1
	strh r0, [r4, #0xe]
	b _02039C82
_02039C64:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02039C90
	cmp r0, #0
	beq _02039C82
	ldr r1, [r4, #4]
	ldr r2, [r4]
	ldrb r1, [r1, r5]
	mov r0, #1
	lsl r1, r1, #4
	add r1, r2, r1
	strb r0, [r1, #0xe]
	pop {r4, r5, r6, pc}
_02039C82:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02039C88: .word 0x00007FFF
_02039C8C: .word 0x0214181C
	thumb_func_end sub_02039C48

	thumb_func_start sub_02039C90
sub_02039C90: ; 0x02039C90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _02039D00 ; =0x0214181C
	str r1, [sp, #4]
	str r0, [sp]
	ldrh r4, [r6, #0xa]
	ldrh r0, [r6, #0xc]
	add r7, r2, #0
	str r3, [sp, #8]
	cmp r4, r0
	bge _02039CF2
_02039CA6:
	ldr r0, [r6]
	lsl r5, r4, #4
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _02039CEA
	ldr r1, [sp, #8]
	add r0, r7, #0
	mov r2, #0
	bl sub_0205EF58
	ldr r1, [r6]
	str r0, [r1, r5]
	ldr r1, [r6]
	ldr r0, [r1, r5]
	cmp r0, #0
	bne _02039CCC
	mov r0, #5
	strh r0, [r6, #0xe]
	b _02039CEA
_02039CCC:
	ldr r0, [sp]
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r1, _02039D00 ; =0x0214181C
	ldr r0, [r1]
	add r0, r0, r5
	str r7, [r0, #8]
	ldr r0, [sp, #4]
	ldr r2, [r1, #4]
	add sp, #0xc
	strb r4, [r2, r0]
	mov r0, #0
	strh r0, [r1, #0xe]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02039CEA:
	ldrh r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _02039CA6
_02039CF2:
	ldr r0, _02039D00 ; =0x0214181C
	mov r1, #4
	strh r1, [r0, #0xe]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02039D00: .word 0x0214181C
	thumb_func_end sub_02039C90

	thumb_func_start sub_02039D04
sub_02039D04: ; 0x02039D04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02039D94 ; =0x00007FFF
	and r5, r0
	add r0, r5, #0
	bl sub_02039A80
	str r0, [sp]
	cmp r0, #0
	bne _02039D20
	ldr r0, _02039D98 ; =0x0214181C
	mov r1, #1
	strh r1, [r0, #0xe]
	b _02039D8E
_02039D20:
	add r0, r5, #0
	bl sub_02039A9C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02039AB8
	add r7, r0, #0
	ldr r0, _02039D98 ; =0x0214181C
	ldr r0, [r0, #4]
	ldrb r4, [r0, r5]
	ldr r0, [sp]
	bl sub_0205EF78
	cmp r6, #0
	beq _02039D44
	cmp r7, #0
	bne _02039D5A
_02039D44:
	ldr r0, _02039D98 ; =0x0214181C
	lsl r1, r4, #4
	ldr r2, [r0]
	add r1, r2, r1
	ldrb r1, [r1, #0xe]
	cmp r1, #0
	bne _02039D62
	mov r1, #2
	strh r1, [r0, #0xe]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02039D5A:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0205F088
_02039D62:
	ldr r2, _02039D98 ; =0x0214181C
	lsl r1, r4, #4
	ldr r3, [r2]
	mov r0, #0
	str r0, [r3, r1]
	ldr r3, [r2]
	add r3, r3, r1
	str r0, [r3, #4]
	ldr r3, [r2]
	add r3, r3, r1
	str r0, [r3, #8]
	ldr r3, [r2]
	add r3, r3, r1
	strh r0, [r3, #0xc]
	ldr r3, [r2]
	add r1, r3, r1
	strb r0, [r1, #0xe]
	ldr r0, [r2, #4]
	mov r1, #0xff
	strb r1, [r0, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02039D8E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02039D94: .word 0x00007FFF
_02039D98: .word 0x0214181C
	thumb_func_end sub_02039D04

	thumb_func_start sub_02039D9C
sub_02039D9C: ; 0x02039D9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	add r7, r1, #0
	tst r0, r5
	beq _02039DB2
	mov r4, #3
	mvn r4, r4
	b _02039DB4
_02039DB2:
	mov r4, #4
_02039DB4:
	ldr r0, _02039E20 ; =0x00007FFF
	ldr r6, _02039E24 ; =0x0214181C
	and r5, r0
	ldrh r0, [r6, #8]
	cmp r5, r0
	blo _02039DC6
	mov r0, #1
_02039DC2:
	strh r0, [r6, #0xe]
	b _02039E18
_02039DC6:
	add r0, r5, #0
	bl sub_02039A80
	str r0, [sp, #4]
	cmp r0, #0
	bne _02039DD6
	mov r0, #2
	b _02039DC2
_02039DD6:
	blx sub_0207C0E4
	str r0, [sp]
	add r7, #0x1c
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0205EF80
	add r4, r0, #0
	bne _02039DF0
	mov r0, #3
	b _02039E0A
_02039DF0:
	ldr r0, _02039E28 ; =0x0000194E
	strh r0, [r4, #2]
	strh r5, [r4]
	ldr r1, [r6, #4]
	ldr r0, [r6]
	ldrb r1, [r1, r5]
	add r0, #0xc
	add r4, #0x1c
	lsl r2, r1, #4
	ldrh r1, [r0, r2]
	add r1, r1, #1
	strh r1, [r0, r2]
	mov r0, #0
_02039E0A:
	strh r0, [r6, #0xe]
	ldr r0, [sp]
	blx sub_0207C0F8
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02039E18:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02039E20: .word 0x00007FFF
_02039E24: .word 0x0214181C
_02039E28: .word 0x0000194E
	thumb_func_end sub_02039D9C

	thumb_func_start sub_02039E2C
sub_02039E2C: ; 0x02039E2C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	sub r4, #0x1c
	sub r0, #0x1c
	ldrh r5, [r0]
	ldrh r1, [r4, #2]
	ldr r0, _02039EA8 ; =0x0000194E
	cmp r1, r0
	beq _02039E46
	ldr r0, _02039EAC ; =0x0214181C
	mov r1, #1
	strh r1, [r0, #0xe]
	b _02039EA2
_02039E46:
	ldr r6, _02039EAC ; =0x0214181C
	ldrh r0, [r6, #8]
	cmp r5, r0
	blo _02039E54
	mov r0, #2
_02039E50:
	strh r0, [r6, #0xe]
	b _02039EA2
_02039E54:
	add r0, r5, #0
	bl sub_02039A80
	add r7, r0, #0
	bne _02039E62
	mov r0, #3
	b _02039E50
_02039E62:
	add r0, r5, #0
	bl sub_02039AD4
	cmp r0, #0
	bne _02039E70
	mov r0, #4
	b _02039E50
_02039E70:
	blx sub_0207C0E4
	ldr r1, [r6, #4]
	str r0, [sp]
	ldrb r1, [r1, r5]
	ldr r0, [r6]
	add r0, #0xc
	lsl r2, r1, #4
	ldrh r1, [r0, r2]
	sub r1, r1, #1
	strh r1, [r0, r2]
	ldr r0, _02039EA8 ; =0x0000194E
	add r1, r4, #0
	sub r0, r0, #1
	strh r0, [r4, #2]
	add r0, r7, #0
	bl sub_0205F088
	ldr r0, [sp]
	blx sub_0207C0F8
	mov r0, #0
	strh r0, [r6, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02039EA2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02039EA8: .word 0x0000194E
_02039EAC: .word 0x0214181C
	thumb_func_end sub_02039E2C

	thumb_func_start sub_02039EB0
sub_02039EB0: ; 0x02039EB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bpl _02039EBA
	neg r4, r4
_02039EBA:
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _02039EC4
	neg r4, r4
_02039EC4:
	ldr r0, _02039EF0 ; =0x00007FFF
	ldr r6, _02039EF4 ; =0x0214181C
	and r0, r1
	ldrh r1, [r6, #8]
	cmp r0, r1
	blo _02039ED6
	mov r0, #1
	strh r0, [r6, #0xe]
	b _02039EEC
_02039ED6:
	bl sub_02039A80
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0205F3EC
	mov r0, #0
	strh r0, [r6, #0xe]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02039EEC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02039EF0: .word 0x00007FFF
_02039EF4: .word 0x0214181C
	thumb_func_end sub_02039EB0

	thumb_func_start sub_02039EF8
sub_02039EF8: ; 0x02039EF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02039F5C ; =0x0214181C
	add r7, r0, #0
	sub r0, #0x1c
	add r5, r1, #0
	ldrh r0, [r0]
	ldrh r1, [r6, #8]
	sub r7, #0x1c
	cmp r0, r1
	blo _02039F12
	mov r0, #2
_02039F0E:
	strh r0, [r6, #0xe]
	b _02039F56
_02039F12:
	bl sub_02039A80
	str r0, [sp]
	cmp r0, #0
	bne _02039F20
	mov r0, #3
	b _02039F0E
_02039F20:
	add r0, r7, #0
	bl sub_0205F164
	add r4, r0, #0
	add r2, r5, #0
	ldr r0, [sp]
	add r1, r7, #0
	add r2, #0x1c
	bl sub_0205EFA0
	mov r1, #0
	add r5, #0x1c
	mov r2, #1
	strh r1, [r6, #0xe]
	cmp r4, r5
	bhs _02039F48
	cmp r0, #0
	bne _02039F52
	mov r0, #4
	b _02039F4E
_02039F48:
	cmp r0, r4
	bne _02039F52
	mov r0, #5
_02039F4E:
	strh r0, [r6, #0xe]
	add r2, r1, #0
_02039F52:
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
_02039F56:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02039F5C: .word 0x0214181C
	thumb_func_end sub_02039EF8

	thumb_func_start sub_02039F60
sub_02039F60: ; 0x02039F60
	push {r3, lr}
	ldr r1, _02039F88 ; =0x00007FFF
	and r0, r1
	ldr r1, _02039F8C ; =0x0214181C
	ldrh r2, [r1, #8]
	cmp r0, r2
	blo _02039F74
	mov r0, #1
	strh r0, [r1, #0xe]
	b _02039F82
_02039F74:
	mov r2, #0
	strh r2, [r1, #0xe]
	bl sub_02039A80
	bl sub_0205F0B4
	pop {r3, pc}
_02039F82:
	mov r0, #0
	pop {r3, pc}
	nop
_02039F88: .word 0x00007FFF
_02039F8C: .word 0x0214181C
	thumb_func_end sub_02039F60

	thumb_func_start sub_02039F90
sub_02039F90: ; 0x02039F90
	push {r3, lr}
	ldr r1, _02039FB8 ; =0x00007FFF
	and r0, r1
	ldr r1, _02039FBC ; =0x0214181C
	ldrh r2, [r1, #8]
	cmp r0, r2
	blo _02039FA4
	mov r0, #1
	strh r0, [r1, #0xe]
	b _02039FB4
_02039FA4:
	mov r2, #0
	strh r2, [r1, #0xe]
	bl sub_02039A80
	mov r1, #4
	bl sub_0205F0CC
	pop {r3, pc}
_02039FB4:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02039FB8: .word 0x00007FFF
_02039FBC: .word 0x0214181C
	thumb_func_end sub_02039F90

	thumb_func_start sub_02039FC0
sub_02039FC0: ; 0x02039FC0
	push {r4, lr}
	ldr r1, _02039FEC ; =0x00007FFF
	ldr r4, _02039FF0 ; =0x0214181C
	and r0, r1
	ldrh r1, [r4, #8]
	cmp r0, r1
	blo _02039FD4
	mov r0, #1
	strh r0, [r4, #0xe]
	b _02039FE6
_02039FD4:
	bl sub_02039A80
	cmp r0, #0
	beq _02039FE6
	ldr r2, [r0, #0x1c]
	mov r1, #0
	strh r1, [r4, #0xe]
	sub r0, r2, r0
	pop {r4, pc}
_02039FE6:
	mov r0, #0
	pop {r4, pc}
	nop
_02039FEC: .word 0x00007FFF
_02039FF0: .word 0x0214181C
	thumb_func_end sub_02039FC0

	thumb_func_start sub_02039FF4
sub_02039FF4: ; 0x02039FF4
	push {r3, lr}
	ldr r1, _0203A018 ; =0x00007FFF
	and r0, r1
	ldr r1, _0203A01C ; =0x0214181C
	ldrh r2, [r1, #8]
	cmp r0, r2
	blo _0203A008
	mov r0, #1
	strh r0, [r1, #0xe]
	b _0203A012
_0203A008:
	mov r2, #0
	strh r2, [r1, #0xe]
	bl sub_02039A80
	pop {r3, pc}
_0203A012:
	mov r0, #0
	pop {r3, pc}
	nop
_0203A018: .word 0x00007FFF
_0203A01C: .word 0x0214181C
	thumb_func_end sub_02039FF4

	thumb_func_start sub_0203A020
sub_0203A020: ; 0x0203A020
	push {r3, lr}
	ldr r1, _0203A048 ; =0x00007FFF
	and r0, r1
	ldr r1, _0203A04C ; =0x0214181C
	ldrh r2, [r1, #8]
	cmp r0, r2
	blo _0203A034
	mov r0, #1
	strh r0, [r1, #0xe]
	b _0203A042
_0203A034:
	mov r2, #0
	strh r2, [r1, #0xe]
	bl sub_02039AD4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_0203A042:
	ldr r0, _0203A050 ; =0x0000FFFF
	pop {r3, pc}
	nop
_0203A048: .word 0x00007FFF
_0203A04C: .word 0x0214181C
_0203A050: .word 0x0000FFFF
	thumb_func_end sub_0203A020

	thumb_func_start sub_0203A054
sub_0203A054: ; 0x0203A054
	sub r0, #0x1c
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A054

	thumb_func_start sub_0203A05C
sub_0203A05C: ; 0x0203A05C
	sub r0, #0x1c
	add r0, r0, #4
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A05C

	thumb_func_start sub_0203A064
sub_0203A064: ; 0x0203A064
	push {r4, lr}
	ldr r1, _0203A090 ; =0x00007FFF
	ldr r4, _0203A094 ; =0x0214181C
	and r0, r1
	ldrh r1, [r4, #8]
	cmp r0, r1
	blo _0203A078
	mov r0, #1
_0203A074:
	strh r0, [r4, #0xe]
	b _0203A08C
_0203A078:
	bl sub_02039A80
	cmp r0, #0
	bne _0203A084
	mov r0, #2
	b _0203A074
_0203A084:
	mov r0, #0
	strh r0, [r4, #0xe]
	mov r0, #1
	pop {r4, pc}
_0203A08C:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0203A090: .word 0x00007FFF
_0203A094: .word 0x0214181C
	thumb_func_end sub_0203A064

	thumb_func_start sub_0203A098
sub_0203A098: ; 0x0203A098
	ldr r0, _0203A0A0 ; =0x0214181C
	ldrh r0, [r0, #0xe]
	bx lr
	nop
_0203A0A0: .word 0x0214181C
	thumb_func_end sub_0203A098

	thumb_func_start sub_0203A0A4
sub_0203A0A4: ; 0x0203A0A4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0xbe
	add r4, r0, #0
	lsl r5, r5, #6
	cmp r4, r5
	bls _0203A0B4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203A0B4:
	mov r0, #4
	bl sub_0207B2A4
	add r6, r0, #0
	ldr r1, _0203A0FC ; =0x02FE0000
	add r5, #0x80
	mov r0, #4
	add r1, r1, r5
	bl sub_0207B40C
	mov r0, #4
	add r1, r6, #0
	add r2, r6, r4
	mov r3, #1
	mov r5, #1
	bl sub_0207B5DC
	add r7, r0, #0
	mov r0, #4
	add r1, r7, #0
	bl sub_0207B418
	mov r0, #4
	add r1, r7, #0
	add r2, r6, r4
	bl sub_0207B650
	ldr r1, _0203A100 ; =0x0214182C
	str r0, [r1, #4]
	sub r1, r5, #2
	cmp r0, r1
	bne _0203A0F6
	mov r5, #0
_0203A0F6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203A0FC: .word 0x02FE0000
_0203A100: .word 0x0214182C
	thumb_func_end sub_0203A0A4

	thumb_func_start sub_0203A104
sub_0203A104: ; 0x0203A104
	ldr r1, _0203A110 ; =0x0214182C
	add r2, r0, #0
	ldr r1, [r1, #4]
	ldr r3, _0203A114 ; =sub_0207B4F4
	mov r0, #4
	bx r3
	.align 2, 0
_0203A110: .word 0x0214182C
_0203A114: .word sub_0207B4F4
	thumb_func_end sub_0203A104

	thumb_func_start sub_0203A118
sub_0203A118: ; 0x0203A118
	push {r3, lr}
	ldr r1, _0203A12C ; =0x0214182C
	add r2, r0, #0
	ldr r1, [r1, #4]
	mov r0, #4
	bl sub_0207B598
	mov r0, #1
	pop {r3, pc}
	nop
_0203A12C: .word 0x0214182C
	thumb_func_end sub_0203A118

	thumb_func_start sub_0203A130
sub_0203A130: ; 0x0203A130
	push {r4, lr}
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02039AF0
	add r4, r0, #0
	mov r0, #0
	bl sub_0207B2A4
	mov r0, #0
	bl sub_0207B298
	cmp r4, #0
	bne _0203A158
	bl sub_0203A098
	bl sub_0207C774
_0203A158:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A130

	thumb_func_start sub_0203A15C
sub_0203A15C: ; 0x0203A15C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02039BDC
	cmp r0, #0
	bne _0203A176
	bl sub_0203A098
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203A194
_0203A176:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203A15C

	thumb_func_start sub_0203A178
sub_0203A178: ; 0x0203A178
	push {r4, lr}
	add r4, r2, #0
	bl sub_02039C48
	cmp r0, #0
	bne _0203A190
	bl sub_0203A098
	mov r1, #0
	add r2, r4, #0
	bl sub_0203A194
_0203A190:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A178

	thumb_func_start sub_0203A194
sub_0203A194: ; 0x0203A194
	push {r3, lr}
	cmp r0, #5
	bhi _0203A1CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203A1A6: ; jump table
	.short _0203A1CE - _0203A1A6 - 2 ; case 0
	.short _0203A1B2 - _0203A1A6 - 2 ; case 1
	.short _0203A1B8 - _0203A1A6 - 2 ; case 2
	.short _0203A1BE - _0203A1A6 - 2 ; case 3
	.short _0203A1C4 - _0203A1A6 - 2 ; case 4
	.short _0203A1CA - _0203A1A6 - 2 ; case 5
_0203A1B2:
	bl sub_0207C774
	pop {r3, pc}
_0203A1B8:
	bl sub_0207C774
	pop {r3, pc}
_0203A1BE:
	bl sub_0207C774
	pop {r3, pc}
_0203A1C4:
	bl sub_0207C774
	pop {r3, pc}
_0203A1CA:
	bl sub_0207C774
_0203A1CE:
	pop {r3, pc}
	thumb_func_end sub_0203A194

	thumb_func_start sub_0203A1D0
sub_0203A1D0: ; 0x0203A1D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A408
	add r0, r4, #0
	bl sub_02039D04
	cmp r0, #0
	bne _0203A1FA
	bl sub_0203A098
	cmp r0, #1
	beq _0203A1F0
	cmp r0, #2
	beq _0203A1F6
	pop {r4, pc}
_0203A1F0:
	bl sub_0207C774
	pop {r4, pc}
_0203A1F6:
	bl sub_0207C774
_0203A1FA:
	pop {r4, pc}
	thumb_func_end sub_0203A1D0

	thumb_func_start sub_0203A1FC
sub_0203A1FC: ; 0x0203A1FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl sub_02039D9C
	add r4, r0, #0
	bne _0203A226
	bl sub_0203A098
	add r3, sp, #0x18
	ldrh r3, [r3]
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203A354
	bl sub_0207C774
	b _0203A248
_0203A226:
	add r2, sp, #0x18
	ldrh r2, [r2]
	ldr r1, [sp]
	bl sub_0203A2E0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0203A3CC
	cmp r7, #0
	beq _0203A248
	mov r0, #0
	add r1, r4, #0
	add r2, r5, #0
	blx sub_02078658
_0203A248:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203A1FC

	thumb_func_start sub_0203A24C
sub_0203A24C: ; 0x0203A24C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A3E8
	add r0, r4, #0
	bl sub_02039E2C
	pop {r4, pc}
	thumb_func_end sub_0203A24C

	thumb_func_start sub_0203A25C
sub_0203A25C: ; 0x0203A25C
	push {r3, lr}
	bl sub_02039EB0
	cmp r0, #0
	bne _0203A26A
	bl sub_0207C774
_0203A26A:
	pop {r3, pc}
	thumb_func_end sub_0203A25C

	thumb_func_start sub_0203A26C
sub_0203A26C: ; 0x0203A26C
	push {r3, lr}
	bl sub_02039EF8
	cmp r0, #0
	bne _0203A2A6
	bl sub_0203A098
	cmp r0, #5
	bhi _0203A2A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203A28A: ; jump table
	.short _0203A2A6 - _0203A28A - 2 ; case 0
	.short _0203A296 - _0203A28A - 2 ; case 1
	.short _0203A29C - _0203A28A - 2 ; case 2
	.short _0203A2A2 - _0203A28A - 2 ; case 3
	.short _0203A2A6 - _0203A28A - 2 ; case 4
	.short _0203A2A6 - _0203A28A - 2 ; case 5
_0203A296:
	bl sub_0207C774
	pop {r3, pc}
_0203A29C:
	bl sub_0207C774
	pop {r3, pc}
_0203A2A2:
	bl sub_0207C774
_0203A2A6:
	pop {r3, pc}
	thumb_func_end sub_0203A26C

	thumb_func_start sub_0203A2A8
sub_0203A2A8: ; 0x0203A2A8
	push {r4, lr}
	bl sub_02039F60
	add r4, r0, #0
	bne _0203A2B6
	bl sub_0207C774
_0203A2B6:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A2A8

	thumb_func_start sub_0203A2BC
sub_0203A2BC: ; 0x0203A2BC
	push {r4, lr}
	bl sub_0203A064
	add r4, r0, #0
	bne _0203A2DA
	bl sub_0203A098
	cmp r0, #1
	beq _0203A2DA
	cmp r0, #2
	beq _0203A2DA
	cmp r0, #3
	bne _0203A2DA
	bl sub_0207C774
_0203A2DA:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A2BC

	thumb_func_start sub_0203A2E0
sub_0203A2E0: ; 0x0203A2E0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203A05C
	mov r2, #0
_0203A2EC:
	ldrsb r1, [r5, r2]
	strb r1, [r0, r2]
	cmp r1, #0
	beq _0203A2FA
	add r2, r2, #1
	cmp r2, #0x12
	blt _0203A2EC
_0203A2FA:
	strh r4, [r0, #0x12]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203A2E0

	thumb_func_start sub_0203A300
sub_0203A300: ; 0x0203A300
	mov r3, #0
_0203A302:
	ldrsb r2, [r1, r3]
	cmp r2, #0
	beq _0203A310
	strb r2, [r0, r3]
	add r3, r3, #1
	cmp r3, #0x12
	blt _0203A302
_0203A310:
	mov r2, #0
	strb r2, [r0, r3]
	cmp r3, #0
	bne _0203A31C
	add r0, r2, #0
	bx lr
_0203A31C:
	ble _0203A332
_0203A31E:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _0203A328
	cmp r1, #0x7e
	bls _0203A32C
_0203A328:
	mov r0, #0
	bx lr
_0203A32C:
	add r2, r2, #1
	cmp r2, r3
	blt _0203A31E
_0203A332:
	cmp r3, #0x12
	bge _0203A350
	mov r2, #0
	cmp r3, #0
	ble _0203A348
_0203A33C:
	ldrb r1, [r0, r2]
	cmp r1, #0x2e
	beq _0203A348
	add r2, r2, #1
	cmp r2, r3
	blt _0203A33C
_0203A348:
	cmp r2, r3
	bne _0203A350
	mov r0, #0
	bx lr
_0203A350:
	mov r0, #1
	bx lr
	thumb_func_end sub_0203A300

	thumb_func_start sub_0203A354
sub_0203A354: ; 0x0203A354
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02039FF4
	add r4, r0, #0
	bl sub_0205F0B4
	add r0, r4, #0
	mov r1, #4
	bl sub_0205F0CC
	add r0, r5, #0
	bl sub_0203A4A0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203A354

	thumb_func_start sub_0203A374
sub_0203A374: ; 0x0203A374
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0203A05C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A054
	bl sub_0203A020
	add r0, sp, #0
	add r1, r4, #0
	bl sub_0203A300
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203A374

	thumb_func_start sub_0203A398
sub_0203A398: ; 0x0203A398
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0203A05C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A054
	add r6, r0, #0
	bl sub_0203A020
	add r0, sp, #0
	add r1, r4, #0
	bl sub_0203A300
	sub r5, #0x1c
	add r0, r5, #0
	bl sub_0205F164
	add r0, r6, #0
	bl sub_02039F60
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203A398

	thumb_func_start sub_0203A3CC
sub_0203A3CC: ; 0x0203A3CC
	push {r3, lr}
	ldr r3, _0203A3E4 ; =0x0209A858
	ldr r3, [r3]
	cmp r3, #0
	blt _0203A3E2
	cmp r0, r3
	bne _0203A3E2
	add r0, r1, #0
	add r1, r2, #0
	bl sub_0203A374
_0203A3E2:
	pop {r3, pc}
	.align 2, 0
_0203A3E4: .word 0x0209A858
	thumb_func_end sub_0203A3CC

	thumb_func_start sub_0203A3E8
sub_0203A3E8: ; 0x0203A3E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A054
	ldr r1, _0203A404 ; =0x0209A858
	ldr r1, [r1]
	cmp r1, #0
	blt _0203A402
	cmp r0, r1
	bne _0203A402
	add r0, r4, #0
	bl sub_0203A398
_0203A402:
	pop {r4, pc}
	.align 2, 0
_0203A404: .word 0x0209A858
	thumb_func_end sub_0203A3E8

	thumb_func_start sub_0203A408
sub_0203A408: ; 0x0203A408
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A020
	cmp r0, #0
	beq _0203A41A
	add r0, r4, #0
	bl sub_0203A4A0
_0203A41A:
	pop {r4, pc}
	thumb_func_end sub_0203A408

	thumb_func_start sub_0203A41C
sub_0203A41C: ; 0x0203A41C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r6, #0
	add r5, #0x1c
	add r0, r5, #0
	bl sub_0203A05C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205F164
	ldr r1, _0203A494 ; =0x02141838
	str r0, [r1, #8]
	str r5, [r1, #4]
	add r5, sp, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203A300
	cmp r0, #0
	bne _0203A456
	ldr r0, _0203A498 ; =0x0209A85C
	add r1, r5, #0
	mov r2, #0xd
	blx sub_02078920
	mov r5, #0
	b _0203A458
_0203A456:
	ldrh r5, [r4, #0x12]
_0203A458:
	add r4, sp, #0
	add r0, r4, #0
	bl sub_02043EC0
	add r2, r0, #0
	ldr r1, _0203A49C ; =0x02141844
	add r0, r4, #0
	add r2, r2, #1
	blx sub_02078920
	ldr r0, _0203A494 ; =0x02141838
	strh r5, [r0]
	add r0, r4, #0
	bl sub_02043EC0
	mov r1, #0x12
	sub r1, r1, r0
	mov r2, #0
	cmp r1, #0
	ble _0203A48A
	mov r0, #0x20
_0203A482:
	strb r0, [r4, r2]
	add r2, r2, #1
	cmp r2, r1
	blt _0203A482
_0203A48A:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, r2]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0203A494: .word 0x02141838
_0203A498: .word 0x0209A85C
_0203A49C: .word 0x02141844
	thumb_func_end sub_0203A41C

	thumb_func_start sub_0203A4A0
sub_0203A4A0: ; 0x0203A4A0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039FC0
	add r0, r4, #0
	bl sub_02039F60
	add r0, r4, #0
	bl sub_02039F90
	add r0, r4, #0
	bl sub_0203A020
	mov r0, #1
	blx sub_020828AC
	add r0, r4, #0
	bl sub_02039FF4
	ldr r1, _0203A4D8 ; =sub_0203A41C
	mov r2, #0
	bl sub_0205F144
	mov r0, #0
	blx sub_020828AC
	pop {r4, pc}
	nop
_0203A4D8: .word sub_0203A41C
	thumb_func_end sub_0203A4A0

	thumb_func_start sub_0203A4DC
sub_0203A4DC: ; 0x0203A4DC
	push {r3, lr}
	bl sub_0203A0A4
	cmp r0, #0
	bne _0203A4EA
	bl sub_0207C774
_0203A4EA:
	pop {r3, pc}
	thumb_func_end sub_0203A4DC

	thumb_func_start sub_0203A4EC
sub_0203A4EC: ; 0x0203A4EC
	ldr r3, _0203A4F0 ; =sub_0203A104
	bx r3
	.align 2, 0
_0203A4F0: .word sub_0203A104
	thumb_func_end sub_0203A4EC

	thumb_func_start sub_0203A4F4
sub_0203A4F4: ; 0x0203A4F4
	ldr r3, _0203A4F8 ; =sub_0203A118
	bx r3
	.align 2, 0
_0203A4F8: .word sub_0203A118
	thumb_func_end sub_0203A4F4

	thumb_func_start sub_0203A4FC
sub_0203A4FC: ; 0x0203A4FC
	push {r4, r5, r6, r7}
	ldr r1, [r0]
	mov r4, #0
	cmp r1, #0
	bls _0203A534
	add r2, r0, #0
	add r2, #8
	add r1, r4, #0
	mov r5, #0x1c
_0203A50E:
	add r3, r4, #0
	ldr r6, [r0, #0x28]
	mul r3, r5
	add r7, r6, r3
	str r0, [r6, r3]
	str r2, [r7, #8]
	str r2, [r7, #4]
	str r1, [r7, #0xc]
	str r1, [r7, #0x10]
	str r1, [r7, #0x14]
	ldr r6, [r0, #0x28]
	add r7, r6, r3
	lsl r3, r4, #2
	ldr r6, [r0, #0x24]
	add r4, r4, #1
	str r7, [r6, r3]
	ldr r3, [r0]
	cmp r4, r3
	blo _0203A50E
_0203A534:
	mov r1, #0
	str r1, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0203A4FC

	thumb_func_start sub_0203A53C
sub_0203A53C: ; 0x0203A53C
	ldr r3, [r0, #4]
	ldr r1, [r0]
	cmp r3, r1
	bne _0203A548
	mov r0, #0
	bx lr
_0203A548:
	ldr r2, [r0, #0x24]
	lsl r1, r3, #2
	ldr r2, [r2, r1]
	add r1, r3, #1
	str r1, [r0, #4]
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A53C

	thumb_func_start sub_0203A558
sub_0203A558: ; 0x0203A558
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0203A562
	mov r0, #0
	bx lr
_0203A562:
	add r2, r0, #0
	add r2, #8
	str r0, [r1]
	str r2, [r1, #8]
	str r2, [r1, #4]
	mov r2, #0
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldr r2, [r0, #4]
	sub r3, r2, #1
	ldr r2, [r0, #0x24]
	str r3, [r0, #4]
	lsl r0, r3, #2
	str r1, [r2, r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0203A558

	thumb_func_start sub_0203A584
sub_0203A584: ; 0x0203A584
	lsl r0, r0, #5
	add r0, #0x38
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A584

	thumb_func_start sub_0203A58C
sub_0203A58C: ; 0x0203A58C
	push {r4, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0x38
	lsl r1, r0, #2
	str r0, [r4]
	mov r0, #0
	add r1, r2, r1
	str r0, [r4, #4]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	str r2, [r4, #0x24]
	str r1, [r4, #0x28]
	bl sub_0203A5B0
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A58C

	thumb_func_start sub_0203A5B0
sub_0203A5B0: ; 0x0203A5B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A4FC
	mov r0, #0
	add r1, r4, #0
	add r1, #8
	str r4, [r4, #8]
	str r1, [r4, #0x10]
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A5B0

	thumb_func_start sub_0203A5D0
sub_0203A5D0: ; 0x0203A5D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _0203A60E
	ldr r1, [r5, #0x10]
	add r4, r5, #0
	add r4, #8
	str r1, [r5, #0x30]
	cmp r1, r4
	beq _0203A60A
	mov r6, #0
_0203A5E8:
	ldr r0, [r1, #8]
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0203A600
	ldr r2, [r0, #0x14]
	cmp r2, #0
	beq _0203A602
	ldr r1, [r0, #0x10]
	blx r2
	b _0203A602
_0203A600:
	str r6, [r0, #0x18]
_0203A602:
	ldr r1, [r5, #0x34]
	str r1, [r5, #0x30]
	cmp r1, r4
	bne _0203A5E8
_0203A60A:
	mov r0, #0
	str r0, [r1, #0x14]
_0203A60E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203A5D0

	thumb_func_start sub_0203A610
sub_0203A610: ; 0x0203A610
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A610

	thumb_func_start sub_0203A614
sub_0203A614: ; 0x0203A614
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #1
	str r5, [r4, #0x2c]
	bl sub_0203A628
	mov r1, #0
	str r1, [r4, #0x2c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203A614

	thumb_func_start sub_0203A628
sub_0203A628: ; 0x0203A628
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0203A53C
	cmp r0, #0
	bne _0203A63E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203A63E:
	str r4, [r0, #0xc]
	str r7, [r0, #0x10]
	str r6, [r0, #0x14]
	ldr r2, [r5, #0x30]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0203A658
	ldr r1, [r2, #0xc]
	cmp r1, r4
	bhi _0203A656
	mov r1, #1
	b _0203A65A
_0203A656:
	b _0203A658
_0203A658:
	mov r1, #0
_0203A65A:
	str r1, [r0, #0x18]
	add r2, r5, #0
	ldr r3, [r5, #0x10]
	add r2, #8
	cmp r3, r2
	beq _0203A68A
	ldr r4, [r0, #0xc]
_0203A668:
	ldr r1, [r3, #0xc]
	cmp r1, r4
	bls _0203A684
	ldr r1, [r3, #4]
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r1, [r3, #4]
	str r0, [r1, #8]
	str r0, [r3, #4]
	ldr r1, [r5, #0x34]
	cmp r3, r1
	bne _0203A6A6
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0203A684:
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0203A668
_0203A68A:
	add r1, r5, #0
	ldr r2, [r5, #0x34]
	add r1, #8
	cmp r2, r1
	bne _0203A696
	str r0, [r5, #0x34]
_0203A696:
	ldr r1, [r5, #0xc]
	str r1, [r0, #4]
	add r1, r5, #0
	add r1, #8
	str r1, [r0, #8]
	ldr r1, [r5, #0xc]
	str r0, [r1, #8]
	str r0, [r5, #0xc]
_0203A6A6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203A628

	thumb_func_start sub_0203A6A8
sub_0203A6A8: ; 0x0203A6A8
	add r1, r0, #0
	ldr r2, [r1]
	ldr r0, [r2, #0x34]
	cmp r0, r1
	bne _0203A6B6
	ldr r0, [r1, #8]
	str r0, [r2, #0x34]
_0203A6B6:
	ldr r2, [r1, #8]
	ldr r0, [r1, #4]
	ldr r3, _0203A6C8 ; =sub_0203A558
	str r2, [r0, #8]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	str r2, [r0, #4]
	ldr r0, [r1]
	bx r3
	.align 2, 0
_0203A6C8: .word sub_0203A558
	thumb_func_end sub_0203A6A8

	thumb_func_start sub_0203A6CC
sub_0203A6CC: ; 0x0203A6CC
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_0203A6CC

	thumb_func_start sub_0203A6D0
sub_0203A6D0: ; 0x0203A6D0
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0203A6D0

	thumb_func_start sub_0203A6D4
sub_0203A6D4: ; 0x0203A6D4
	ldr r2, [r0, #0x14]
	ldr r0, [r0, #4]
	add r0, #0x18
	mul r0, r1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0203A6D4

	thumb_func_start sub_0203A6E0
sub_0203A6E0: ; 0x0203A6E0
	ldr r2, [r0, #0x34]
	cmp r2, #0
	bne _0203A6EA
	mov r0, #0
	bx lr
_0203A6EA:
	ldr r1, [r2, #8]
	str r1, [r0, #0x34]
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _0203A6F8
	mov r0, #0
	str r0, [r1, #4]
_0203A6F8:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0203A6E0

	thumb_func_start sub_0203A6FC
sub_0203A6FC: ; 0x0203A6FC
	ldr r3, [r0, #0x34]
	mov r2, #0
	str r2, [r1, #4]
	str r3, [r1, #8]
	cmp r3, #0
	beq _0203A70A
	str r1, [r3, #4]
_0203A70A:
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A6FC

	thumb_func_start sub_0203A710
sub_0203A710: ; 0x0203A710
	str r0, [r1]
	add r0, #0x18
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A710

	thumb_func_start sub_0203A724
sub_0203A724: ; 0x0203A724
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0203A736
	bl sub_0203A24C
_0203A736:
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r1, [r0, #4]
	ldr r0, [r4]
	add r1, r4, #0
	bl sub_0203A6FC
	pop {r4, pc}
	thumb_func_end sub_0203A724

	thumb_func_start sub_0203A74C
sub_0203A74C: ; 0x0203A74C
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0203A756
	add r1, r0, #0
	add r1, #0x18
_0203A756:
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0203A74C

	thumb_func_start sub_0203A75C
sub_0203A75C: ; 0x0203A75C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	bls _0203A78A
_0203A768:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203A6D4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203A710
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203A6FC
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blo _0203A768
_0203A78A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203A75C

	thumb_func_start sub_0203A78C
sub_0203A78C: ; 0x0203A78C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r6, r3, #0
	add r5, r2, #0
	str r0, [sp, #4]
	mov r1, #0xc7
	str r1, [sp]
	ldr r3, _0203A7F0 ; =0x0209A86C
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	strh r7, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #3
	add r2, r6, #3
	bic r2, r0
	mov r0, #0xcf
	add r2, #0x18
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _0203A7F0 ; =0x0209A86C
	mul r1, r5
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x34]
	add r0, r4, #0
	bl sub_0203A75C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x18
	bl sub_0203A710
	mov r0, #0
	str r0, [r4, #0x30]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203A7F0: .word 0x0209A86C
	thumb_func_end sub_0203A78C

	thumb_func_start sub_0203A7F4
sub_0203A7F4: ; 0x0203A7F4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r4, #0
	add r6, #0x18
	ldr r0, [r6, #8]
	str r0, [r4, #0x30]
	cmp r0, r6
	beq _0203A834
	mov r7, #0
_0203A806:
	ldr r5, [r4, #0x30]
	str r7, [r4, #0x10]
	add r0, r5, #0
	bl sub_0203A74C
	add r1, r0, #0
	ldr r2, [r5, #0x14]
	add r0, r5, #0
	blx r2
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r4, #0x30]
	beq _0203A82A
	ldr r5, [r0, #8]
	bl sub_0203A724
	str r5, [r4, #0x30]
	b _0203A82E
_0203A82A:
	ldr r0, [r0, #8]
	str r0, [r4, #0x30]
_0203A82E:
	ldr r0, [r4, #0x30]
	cmp r0, r6
	bne _0203A806
_0203A834:
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0203A7F4

	thumb_func_start sub_0203A83C
sub_0203A83C: ; 0x0203A83C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203A83C

	thumb_func_start sub_0203A850
sub_0203A850: ; 0x0203A850
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r6, #0
	add r4, #0x18
	ldr r0, [r4, #8]
	str r0, [r6, #0x30]
	cmp r0, r4
	beq _0203A86E
_0203A860:
	ldr r5, [r0, #8]
	bl sub_0203A724
	str r5, [r6, #0x30]
	add r0, r5, #0
	cmp r5, r4
	bne _0203A860
_0203A86E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203A850

	thumb_func_start sub_0203A870
sub_0203A870: ; 0x0203A870
	push {r3, lr}
	ldr r2, [r0]
	ldr r1, [r2, #0x30]
	cmp r1, r0
	bne _0203A880
	mov r0, #1
	str r0, [r2, #0x10]
	pop {r3, pc}
_0203A880:
	bl sub_0203A724
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203A870

	thumb_func_start sub_0203A888
sub_0203A888: ; 0x0203A888
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r6, #0
	str r1, [sp, #4]
	add r7, r2, #0
	str r3, [sp, #8]
	add r5, #0x18
	bl sub_0203A6E0
	add r4, r0, #0
	bne _0203A8A6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0203A8A6:
	ldr r0, [sp, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	str r0, [r4, #0x14]
	ldr r0, [r6, #4]
	cmp r7, r0
	bhi _0203A8B8
	mov r0, #0
	b _0203A8C8
_0203A8B8:
	ldr r0, _0203A908 ; =0x00000145
	ldr r3, _0203A90C ; =0x0209A86C
	str r0, [sp]
	ldrh r0, [r6, #8]
	add r1, r7, #0
	mov r2, #0
	bl sub_0203A1FC
_0203A8C8:
	str r0, [r4, #0x10]
	ldr r1, [r5, #8]
	cmp r1, r5
	beq _0203A8F0
	ldr r2, [r4, #0xc]
_0203A8D2:
	ldr r0, [r1, #0xc]
	cmp r0, r2
	bls _0203A8EA
	ldr r0, [r1, #4]
	add sp, #0xc
	str r0, [r4, #4]
	str r1, [r4, #8]
	ldr r0, [r1, #4]
	str r4, [r0, #8]
	str r4, [r1, #4]
	add r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0203A8EA:
	ldr r1, [r1, #8]
	cmp r1, r5
	bne _0203A8D2
_0203A8F0:
	ldr r0, [r6, #0x1c]
	str r0, [r4, #4]
	add r0, r6, #0
	add r0, #0x18
	str r0, [r4, #8]
	ldr r0, [r6, #0x1c]
	str r4, [r0, #8]
	str r4, [r6, #0x1c]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203A908: .word 0x00000145
_0203A90C: .word 0x0209A86C
	thumb_func_end sub_0203A888

	thumb_func_start sub_0203A910
sub_0203A910: ; 0x0203A910
	ldr r3, _0203A914 ; =sub_0203A74C
	bx r3
	.align 2, 0
_0203A914: .word sub_0203A74C
	thumb_func_end sub_0203A910

	thumb_func_start sub_0203A918
sub_0203A918: ; 0x0203A918
	push {r3, lr}
	bl sub_0203A990
	ldr r1, _0203A924 ; =0x02141858
	str r0, [r1]
	pop {r3, pc}
	.align 2, 0
_0203A924: .word 0x02141858
	thumb_func_end sub_0203A918

	thumb_func_start sub_0203A928
sub_0203A928: ; 0x0203A928
	ldr r0, _0203A930 ; =0x02141858
	ldr r3, _0203A934 ; =sub_0203A9E4
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0203A930: .word 0x02141858
_0203A934: .word sub_0203A9E4
	thumb_func_end sub_0203A928

	thumb_func_start sub_0203A938
sub_0203A938: ; 0x0203A938
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0203A950 ; =0x02141858
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203AA88
	pop {r3, r4, r5, pc}
	nop
_0203A950: .word 0x02141858
	thumb_func_end sub_0203A938

	thumb_func_start sub_0203A954
sub_0203A954: ; 0x0203A954
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0203A96C ; =0x02141858
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203AA78
	pop {r3, r4, r5, pc}
	nop
_0203A96C: .word 0x02141858
	thumb_func_end sub_0203A954

	thumb_func_start sub_0203A970
sub_0203A970: ; 0x0203A970
	ldr r3, _0203A974 ; =sub_0203A990
	bx r3
	.align 2, 0
_0203A974: .word sub_0203A990
	thumb_func_end sub_0203A970

	thumb_func_start sub_0203A978
sub_0203A978: ; 0x0203A978
	ldr r3, _0203A97C ; =sub_0203A9E4
	bx r3
	.align 2, 0
_0203A97C: .word sub_0203A9E4
	thumb_func_end sub_0203A978

	thumb_func_start sub_0203A980
sub_0203A980: ; 0x0203A980
	ldr r3, _0203A984 ; =sub_0203AA60
	bx r3
	.align 2, 0
_0203A984: .word sub_0203AA60
	thumb_func_end sub_0203A980

	thumb_func_start sub_0203A988
sub_0203A988: ; 0x0203A988
	push {r3, lr}
	bl sub_0203AA88
	pop {r3, pc}
	thumb_func_end sub_0203A988

	thumb_func_start sub_0203A990
sub_0203A990: ; 0x0203A990
	push {r3, r4, r5, lr}
	mov r1, #0xc5
	str r1, [sp]
	ldr r3, _0203A9B8 ; =0x0209A874
	add r5, r0, #0
	mov r1, #0x20
	mov r4, #0
	mov r2, #0
	bl sub_0203A1FC
	strh r5, [r0]
	sub r1, r4, #1
	str r1, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r1, [r0, #0x14]
	str r4, [r0, #0x18]
	str r4, [r0, #0x1c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0203A9B8: .word 0x0209A874
	thumb_func_end sub_0203A990

	thumb_func_start sub_0203A9BC
sub_0203A9BC: ; 0x0203A9BC
	push {r4, lr}
	add r4, r0, #0
	ldrh r3, [r4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl sub_0203AAB0
	ldr r1, [r4, #8]
	str r1, [r0, #0x18]
	ldr r1, [r4, #8]
	str r0, [r1, #0x1c]
	mov r1, #0
	str r0, [r4, #8]
	sub r0, r1, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_0203A9BC

	thumb_func_start sub_0203A9E4
sub_0203A9E4: ; 0x0203A9E4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _0203A9F2
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203A9F2:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0203A9FC
	bl sub_0203A9BC
_0203A9FC:
	ldr r0, [r4, #8]
	bl sub_0203AB20
	add r6, r0, #0
	cmp r6, #1
	bne _0203AA4C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _0203AA3C
	ldr r5, [r0, #0x18]
	bl sub_0203AAE4
	ldrh r3, [r4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl sub_0203AAB0
	str r0, [r4, #8]
	cmp r5, #0
	beq _0203AA2A
	str r0, [r5, #0x1c]
_0203AA2A:
	ldr r0, [r4, #8]
	mov r1, #0
	str r5, [r0, #0x18]
	sub r0, r1, #1
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	b _0203AA4C
_0203AA3C:
	ldr r5, [r0, #0x18]
	bl sub_0203AAE4
	str r5, [r4, #8]
	cmp r5, #0
	beq _0203AA4C
	mov r0, #0
	str r0, [r5, #0x1c]
_0203AA4C:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0203AA56
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203AA56:
	mov r0, #2
	cmp r6, #1
	beq _0203AA5E
	mov r0, #1
_0203AA5E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203A9E4

	thumb_func_start sub_0203AA60
sub_0203AA60: ; 0x0203AA60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0203AA6E
	blx sub_0207C7E8
_0203AA6E:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203AA60

	thumb_func_start sub_0203AA78
sub_0203AA78: ; 0x0203AA78
	push {r3, r4}
	mov r4, #1
	str r4, [r0, #0x10]
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	str r3, [r0, #0x1c]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0203AA78

	thumb_func_start sub_0203AA88
sub_0203AA88: ; 0x0203AA88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0203AAA2
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldrh r3, [r4]
	bl sub_0203AAB0
	str r0, [r4, #8]
	pop {r4, pc}
_0203AAA2:
	mov r0, #1
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	str r2, [r4, #0x18]
	str r3, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203AA88

	thumb_func_start sub_0203AAB0
sub_0203AAB0: ; 0x0203AAB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0203AADC ; =0x00000162
	add r4, r1, #0
	str r0, [sp]
	add r0, r3, #0
	add r6, r2, #0
	ldr r3, _0203AAE0 ; =0x0209A874
	mov r1, #0x20
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	str r4, [r0]
	str r5, [r0, #4]
	str r7, [r0, #8]
	str r7, [r0, #0xc]
	str r6, [r0, #0x10]
	str r7, [r0, #0x14]
	str r7, [r0, #0x18]
	str r7, [r0, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203AADC: .word 0x00000162
_0203AAE0: .word 0x0209A874
	thumb_func_end sub_0203AAB0

	thumb_func_start sub_0203AAE4
sub_0203AAE4: ; 0x0203AAE4
	ldr r3, _0203AAE8 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0203AAE8: .word sub_0203A24C
	thumb_func_end sub_0203AAE4

	thumb_func_start sub_0203AAEC
sub_0203AAEC: ; 0x0203AAEC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0203AB08 ; =0x00000186
	ldr r3, _0203AB0C ; =0x0209A874
	str r0, [sp]
	add r0, r2, #0
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0203AB08: .word 0x00000186
_0203AB0C: .word 0x0209A874
	thumb_func_end sub_0203AAEC

	thumb_func_start sub_0203AB10
sub_0203AB10: ; 0x0203AB10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end sub_0203AB10

	thumb_func_start sub_0203AB20
sub_0203AB20: ; 0x0203AB20
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #3
	bhi _0203ABA8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203AB36: ; jump table
	.short _0203AB3E - _0203AB36 - 2 ; case 0
	.short _0203AB50 - _0203AB36 - 2 ; case 1
	.short _0203AB6E - _0203AB36 - 2 ; case 2
	.short _0203AB84 - _0203AB36 - 2 ; case 3
_0203AB3E:
	mov r1, #0
	ldr r0, [r4, #4]
	mvn r1, r1
	cmp r0, r1
	beq _0203AB4C
	bl sub_0203CE0C
_0203AB4C:
	mov r0, #1
	str r0, [r4, #8]
_0203AB50:
	ldr r5, [r4]
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r5, [r5]
	add r0, r4, #0
	add r1, #0xc
	blx r5
	cmp r0, #1
	bne _0203ABA8
	mov r0, #2
_0203AB66:
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	b _0203ABA8
_0203AB6E:
	ldr r5, [r4]
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r5, [r5, #4]
	add r1, #0xc
	blx r5
	cmp r0, #1
	bne _0203ABA8
	mov r0, #3
	b _0203AB66
_0203AB84:
	ldr r5, [r4]
	add r1, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r5, [r5, #8]
	add r1, #0xc
	blx r5
	cmp r0, #1
	bne _0203ABA8
	mov r1, #0
	ldr r0, [r4, #4]
	mvn r1, r1
	cmp r0, r1
	beq _0203ABA4
	bl sub_0203CDC8
_0203ABA4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203ABA8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203AB20

	thumb_func_start sub_0203ABAC
sub_0203ABAC: ; 0x0203ABAC
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x21
	add r6, r1, #0
	mov r1, #0xdf
	lsl r0, r0, #0x10
	add r7, r2, #0
	lsl r5, r5, #4
	str r1, [sp]
	ldr r3, _0203ABF8 ; =0x0209A880
	lsr r0, r0, #0x10
	add r1, r5, #0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r0, #0
	ldr r4, _0203ABFC ; =0x0214185C
	mov r0, #0
	str r1, [r4]
	add r2, r5, #0
	blx sub_02078658
	ldr r0, [r4]
	ldr r1, _0203AC00 ; =0x00001021
	add r0, r0, #4
	bl sub_020778D8
	ldr r0, _0203AC00 ; =0x00001021
	ldr r1, [r4]
	lsr r0, r0, #3
	str r6, [r1, r0]
	ldr r0, [r4]
	sub r5, #8
	str r7, [r0, r5]
	bl sub_0203BF7C
	ldr r1, [r4]
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203ABF8: .word 0x0209A880
_0203ABFC: .word 0x0214185C
_0203AC00: .word 0x00001021
	thumb_func_end sub_0203ABAC

	thumb_func_start sub_0203AC04
sub_0203AC04: ; 0x0203AC04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0203AD18 ; =0x0214185C
	add r6, r1, #0
	ldr r0, [r0]
	add r7, r3, #0
	str r2, [sp, #0xc]
	cmp r0, #0
	bne _0203AC22
	ldr r0, _0203AD1C ; =0x0209A890
	ldr r2, _0203AD20 ; =0x0209A894
	mov r1, #0
	bl sub_0203CB80
_0203AC22:
	ldr r1, _0203AD24 ; =0x0000010E
	lsl r0, r6, #0x10
	str r1, [sp]
	ldr r3, _0203AD28 ; =0x0209A880
	lsr r0, r0, #0x10
	add r1, #0x46
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [r5, #8]
	str r0, [r4]
	ldr r0, [r5, #0xc]
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	str r0, [r4, #8]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0203AC5C
	ldr r0, [r4, #8]
	cmp r7, r0
	bhs _0203AC5C
	ldr r0, _0203AD1C ; =0x0209A890
	ldr r2, _0203AD2C ; =0x0209A8A4
	mov r1, #0
	bl sub_0203CB80
_0203AC5C:
	ldr r2, [r5, #4]
	mov r0, #5
	lsl r1, r2, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r1, #1
	tst r1, r2
	beq _0203AC72
	ldr r1, [r4, r0]
	add r1, r1, #2
	str r1, [r4, r0]
_0203AC72:
	ldr r0, [r5, #4]
	add r0, r0, #2
	lsr r1, r0, #4
	lsl r2, r1, #2
	mov r1, #0x4f
	lsl r1, r1, #2
	str r2, [r4, r1]
	mov r2, #0xf
	tst r0, r2
	beq _0203AC8C
	ldr r0, [r4, r1]
	add r0, r0, #4
	str r0, [r4, r1]
_0203AC8C:
	ldr r7, _0203AD30 ; =0x00000125
	lsl r0, r6, #0x10
	add r1, r7, #0
	str r7, [sp]
	add r1, #0x17
	ldr r1, [r4, r1]
	ldr r3, _0203AD28 ; =0x0209A880
	lsr r0, r0, #0x10
	mov r2, #1
	bl sub_0203A1FC
	add r1, r7, #0
	add r1, #0x13
	str r0, [r4, r1]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r7, #0
	add r0, #0x1b
	ldr r0, [r4, r0]
	ldr r1, [r5]
	str r0, [sp, #8]
	lsl r0, r6, #0x10
	ldr r2, [r5, #4]
	ldr r3, [r4, #8]
	lsr r0, r0, #0x10
	bl sub_0203C1F4
	str r0, [r4, #0x2c]
	bl sub_0203C3E0
	str r0, [r4, #0x30]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0203ACEC
	add r7, #0xc
	str r7, [sp]
	lsl r0, r6, #0x10
	ldr r1, [r4, #8]
	ldr r3, _0203AD28 ; =0x0209A880
	lsr r0, r0, #0x10
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #0x34]
	mov r0, #1
	b _0203ACF0
_0203ACEC:
	str r0, [r4, #0x34]
	mov r0, #0
_0203ACF0:
	strb r0, [r4, #0x1d]
	mov r0, #0
	strb r0, [r4, #0x1c]
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0203AD08
	add r0, r4, #0
	bl sub_0203AD94
	b _0203AD10
_0203AD08:
	add r0, r4, #0
	mov r1, #1
	bl sub_0203BE8C
_0203AD10:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203AD18: .word 0x0214185C
_0203AD1C: .word 0x0209A890
_0203AD20: .word 0x0209A894
_0203AD24: .word 0x0000010E
_0203AD28: .word 0x0209A880
_0203AD2C: .word 0x0209A8A4
_0203AD30: .word 0x00000125
	thumb_func_end sub_0203AC04

	thumb_func_start sub_0203AD34
sub_0203AD34: ; 0x0203AD34
	push {r3, lr}
	mov r2, #1
	str r2, [sp]
	mov r2, #0
	mov r3, #0
	bl sub_0203AC04
	pop {r3, pc}
	thumb_func_end sub_0203AD34

	thumb_func_start sub_0203AD44
sub_0203AD44: ; 0x0203AD44
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_0203AC04
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0203AD44

	thumb_func_start sub_0203AD54
sub_0203AD54: ; 0x0203AD54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_0203C250
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A24C
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	bne _0203AD74
	ldr r0, [r4, #0x34]
	bl sub_0203A24C
_0203AD74:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_0203AD54

	thumb_func_start sub_0203AD7C
sub_0203AD7C: ; 0x0203AD7C
	ldr r2, [r0, #0x30]
	str r2, [r1]
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_0203AD7C

	thumb_func_start sub_0203AD84
sub_0203AD84: ; 0x0203AD84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_0203C384
	ldr r1, [r4, #0x34]
	add r0, r1, r0
	pop {r4, pc}
	thumb_func_end sub_0203AD84

	thumb_func_start sub_0203AD94
sub_0203AD94: ; 0x0203AD94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x2c]
	bl sub_0203C264
	add r0, r4, #0
	mov r1, #1
	bl sub_0203BE8C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203AD94

	thumb_func_start sub_0203ADAC
sub_0203ADAC: ; 0x0203ADAC
	ldr r3, _0203ADB0 ; =sub_0203B798
	bx r3
	.align 2, 0
_0203ADB0: .word sub_0203B798
	thumb_func_end sub_0203ADAC

	thumb_func_start sub_0203ADB4
sub_0203ADB4: ; 0x0203ADB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	str r0, [sp]
	lsl r0, r1, #0x10
	mov r1, #1
	ldr r3, _0203AE44 ; =0x0209A880
	lsr r0, r0, #0x10
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	add r7, r0, #0
	mov r0, #1
	bl sub_0203D10C
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BD0C
	ldr r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	beq _0203ADEE
	add r0, r5, #0
	mov r1, #2
	bl sub_0203BD0C
_0203ADEE:
	mov r0, #0
	mov r2, #1
	mvn r0, r0
	add r1, r7, #0
	lsl r2, r2, #0xc
	blx sub_02078658
	ldr r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	bls _0203AE28
_0203AE04:
	ldr r3, _0203AE48 ; =0x0214185C
	ldr r0, [r5]
	ldr r6, [r3]
	mov r3, #0x82
	lsl r3, r3, #2
	mov r2, #1
	ldr r3, [r6, r3]
	add r0, r4, r0
	add r1, r7, #0
	lsl r2, r2, #0xc
	bl sub_0203BFD4
	mov r0, #1
	lsl r0, r0, #0xc
	add r4, r4, r0
	ldr r0, [r5, #8]
	cmp r4, r0
	blo _0203AE04
_0203AE28:
	add r0, r7, #0
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_0203AD94
	mov r0, #0
	strb r0, [r5, #0x1c]
	mov r0, #1
	bl sub_0203D134
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203AE44: .word 0x0209A880
_0203AE48: .word 0x0214185C
	thumb_func_end sub_0203ADB4

	thumb_func_start sub_0203AE4C
sub_0203AE4C: ; 0x0203AE4C
	push {r4, lr}
	ldr r2, _0203AEB0 ; =0x0214185C
	add r4, r0, #0
	ldr r2, [r2]
	ldr r2, [r2]
	cmp r2, #0
	bne _0203AE5E
	mov r0, #4
	pop {r4, pc}
_0203AE5E:
	ldr r3, [r4]
	ldr r2, [r4, #4]
	cmp r3, r2
	beq _0203AE70
	mov r2, #0
	mov r3, #0
	bl sub_0203B170
	b _0203AE78
_0203AE70:
	mov r1, #0
	mov r2, #0
	bl sub_0203B598
_0203AE78:
	cmp r0, #4
	bhi _0203AEAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203AE88: ; jump table
	.short _0203AEA4 - _0203AE88 - 2 ; case 0
	.short _0203AE92 - _0203AE88 - 2 ; case 1
	.short _0203AE98 - _0203AE88 - 2 ; case 2
	.short _0203AEA0 - _0203AE88 - 2 ; case 3
	.short _0203AEA8 - _0203AE88 - 2 ; case 4
_0203AE92:
	mov r0, #1
	strb r0, [r4, #0x1c]
	pop {r4, pc}
_0203AE98:
	mov r0, #1
	strb r0, [r4, #0x1c]
	mov r0, #2
	pop {r4, pc}
_0203AEA0:
	mov r0, #3
	pop {r4, pc}
_0203AEA4:
	mov r0, #0
	pop {r4, pc}
_0203AEA8:
	mov r0, #4
	pop {r4, pc}
_0203AEAC:
	mov r0, #4
	pop {r4, pc}
	.align 2, 0
_0203AEB0: .word 0x0214185C
	thumb_func_end sub_0203AE4C

	thumb_func_start sub_0203AEB4
sub_0203AEB4: ; 0x0203AEB4
	push {r3, lr}
	ldr r1, _0203AEC8 ; =0x0214185C
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #0
	beq _0203AEC6
	mov r1, #1
	bl sub_0203B774
_0203AEC6:
	pop {r3, pc}
	.align 2, 0
_0203AEC8: .word 0x0214185C
	thumb_func_end sub_0203AEB4

	thumb_func_start sub_0203AECC
sub_0203AECC: ; 0x0203AECC
	push {r3, r4, r5, lr}
	ldr r1, _0203AEFC ; =0x0214185C
	add r4, r0, #0
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #0
	bne _0203AEDE
	mov r0, #3
	pop {r3, r4, r5, pc}
_0203AEDE:
	add r1, sp, #0
	bl sub_0203B9BC
	add r5, r0, #0
	beq _0203AEF6
	cmp r5, #1
	beq _0203AEF6
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_0203BCD0
_0203AEF6:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0203AEFC: .word 0x0214185C
	thumb_func_end sub_0203AECC

	thumb_func_start sub_0203AF00
sub_0203AF00: ; 0x0203AF00
	ldr r3, _0203AF04 ; =sub_0203BCEC
	bx r3
	.align 2, 0
_0203AF04: .word sub_0203BCEC
	thumb_func_end sub_0203AF00

	thumb_func_start sub_0203AF08
sub_0203AF08: ; 0x0203AF08
	str r2, [r0, #0x20]
	mov r3, #0
	mov r2, #2
	strb r3, [r0, #0x1e]
	strb r2, [r0, #0x1f]
	strb r3, [r1, #0x1e]
	strb r2, [r1, #0x1f]
	bx lr
	thumb_func_end sub_0203AF08

	thumb_func_start sub_0203AF18
sub_0203AF18: ; 0x0203AF18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r5, r1, #0
	ldrb r1, [r4, #0x1e]
	cmp r1, #5
	bhi _0203B010
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0203AF32: ; jump table
	.short _0203AF3E - _0203AF32 - 2 ; case 0
	.short _0203AF4E - _0203AF32 - 2 ; case 1
	.short _0203AF7C - _0203AF32 - 2 ; case 2
	.short _0203AF86 - _0203AF32 - 2 ; case 3
	.short _0203AFC0 - _0203AF32 - 2 ; case 4
	.short _0203AFEA - _0203AF32 - 2 ; case 5
_0203AF3E:
	add r0, r5, #0
	mov r1, #1
_0203AF42:
	bl sub_0203B774
_0203AF46:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
_0203AF4A:
	strb r0, [r4, #0x1e]
	b _0203B010
_0203AF4E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203B9BC
	add r6, r0, #0
	beq _0203AF74
	cmp r6, #1
	beq _0203AF74
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_0203BCD0
	cmp r6, #3
	bne _0203AF72
	add sp, #4
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0203AF72:
	b _0203AFE4
_0203AF74:
	ldr r0, [sp]
	cmp r0, #1
	bne _0203B010
	b _0203AFE4
_0203AF7C:
	ldr r2, [r5, #0x28]
	ldr r1, [r4, #0x20]
	str r2, [r1]
	mov r1, #0
	b _0203AF42
_0203AF86:
	add r1, sp, #0
	bl sub_0203B9BC
	add r6, r0, #0
	beq _0203AFB8
	cmp r6, #1
	beq _0203AFB8
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	mov r4, #1
	bl sub_0203BCD0
	ldr r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	beq _0203AFB2
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0203BCD0
_0203AFB2:
	add sp, #4
	mov r0, #3
	pop {r3, r4, r5, r6, pc}
_0203AFB8:
	ldr r0, [sp]
	cmp r0, #1
	bne _0203B010
	b _0203AFE4
_0203AFC0:
	ldr r2, [r5]
	ldr r0, [r5, #4]
	cmp r2, r0
	beq _0203AFE6
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0203B9BC
	add r6, r0, #0
	beq _0203B010
	cmp r6, #1
	beq _0203B010
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_0203BCD0
	strb r6, [r5, #0x1f]
_0203AFE4:
	b _0203AF46
_0203AFE6:
	add r0, r1, #1
	b _0203AF4A
_0203AFEA:
	add r1, sp, #0
	bl sub_0203B9BC
	add r6, r0, #0
	beq _0203B010
	cmp r6, #1
	beq _0203B010
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_0203BCD0
	ldrb r0, [r5, #0x1f]
	cmp r0, #3
	bne _0203B00A
	mov r6, #3
_0203B00A:
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_0203B010:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203AF18

	thumb_func_start sub_0203B018
sub_0203B018: ; 0x0203B018
	push {r4, r5, r6, lr}
	ldr r3, _0203B07C ; =0x0214185C
	add r4, r0, #0
	ldr r3, [r3]
	add r6, r2, #0
	ldr r3, [r3]
	cmp r3, #0
	bne _0203B02C
	mov r0, #4
	pop {r4, r5, r6, pc}
_0203B02C:
	ldr r5, [r4]
	ldr r3, [r4, #4]
	cmp r5, r3
	beq _0203B03E
	mov r2, #1
	add r3, r6, #0
	bl sub_0203B170
	b _0203B044
_0203B03E:
	mov r1, #1
	bl sub_0203B598
_0203B044:
	cmp r0, #4
	bhi _0203B078
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203B054: ; jump table
	.short _0203B070 - _0203B054 - 2 ; case 0
	.short _0203B05E - _0203B054 - 2 ; case 1
	.short _0203B064 - _0203B054 - 2 ; case 2
	.short _0203B06C - _0203B054 - 2 ; case 3
	.short _0203B074 - _0203B054 - 2 ; case 4
_0203B05E:
	mov r0, #1
	strb r0, [r4, #0x1c]
	pop {r4, r5, r6, pc}
_0203B064:
	mov r0, #1
	strb r0, [r4, #0x1c]
	mov r0, #2
	pop {r4, r5, r6, pc}
_0203B06C:
	mov r0, #3
	pop {r4, r5, r6, pc}
_0203B070:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203B074:
	mov r0, #4
	pop {r4, r5, r6, pc}
_0203B078:
	mov r0, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203B07C: .word 0x0214185C
	thumb_func_end sub_0203B018

	thumb_func_start sub_0203B080
sub_0203B080: ; 0x0203B080
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_0203B080

	thumb_func_start sub_0203B088
sub_0203B088: ; 0x0203B088
	ldr r3, _0203B08C ; =sub_0203C1E8
	bx r3
	.align 2, 0
_0203B08C: .word sub_0203C1E8
	thumb_func_end sub_0203B088

	thumb_func_start sub_0203B090
sub_0203B090: ; 0x0203B090
	add r3, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r3, r0]
	ldr r3, [r3, #0x30]
	ldr r0, _0203B0AC ; =0x0214185C
	sub r3, #0x10
	ldr r0, [r0]
	sub r3, r3, r2
	add r1, r1, r3
	ldr r3, _0203B0B0 ; =sub_02077A10
	add r0, r0, #4
	bx r3
	nop
_0203B0AC: .word 0x0214185C
_0203B0B0: .word sub_02077A10
	thumb_func_end sub_0203B090

	thumb_func_start sub_0203B0B4
sub_0203B0B4: ; 0x0203B0B4
	ldr r2, [r0, #4]
	ldr r0, [r0]
	cmp r0, r2
	beq _0203B0C4
	cmp r1, #2
	beq _0203B0C2
	add r2, r0, #0
_0203B0C2:
	add r0, r2, #0
_0203B0C4:
	bx lr
	.align 2, 0
	thumb_func_end sub_0203B0B4

	thumb_func_start sub_0203B0C8
sub_0203B0C8: ; 0x0203B0C8
	mov r1, #5
	ldr r2, [r0, #0x30]
	lsl r1, r1, #6
	ldr r3, [r0, #0x34]
	ldr r0, [r0, r1]
	sub r2, #0x10
	sub r0, r2, r0
	add r0, r3, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0203B0C8

	thumb_func_start sub_0203B0DC
sub_0203B0DC: ; 0x0203B0DC
	ldr r0, [r0, #0x30]
	sub r0, #0x10
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0203B0DC

	thumb_func_start sub_0203B0E4
sub_0203B0E4: ; 0x0203B0E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0203B0DC
	add r4, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	beq _0203B0FC
	mov r0, #2
	pop {r4, r5, r6, pc}
_0203B0FC:
	ldr r1, [r4, #8]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _0203B108
	mov r0, #2
	pop {r4, r5, r6, pc}
_0203B108:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0203B090
	ldrh r1, [r4, #0xe]
	cmp r1, r0
	beq _0203B11A
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203B11A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203B0E4

	thumb_func_start sub_0203B120
sub_0203B120: ; 0x0203B120
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0203B0DC
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	add r1, r6, #0
	str r0, [r4]
	ldr r0, [r5, #0x30]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_0203B090
	strh r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203B120

	thumb_func_start sub_0203B144
sub_0203B144: ; 0x0203B144
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end sub_0203B144

	thumb_func_start sub_0203B148
sub_0203B148: ; 0x0203B148
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	str r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203B0DC
	add r7, r0, #0
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203B0E4
	str r0, [r5]
	ldr r0, [r7]
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0203B148

	thumb_func_start sub_0203B170
sub_0203B170: ; 0x0203B170
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #0x28]
	add r7, r3, #0
	bl sub_0203BE74
	ldr r0, [r5, #0x34]
	ldr r3, _0203B428 ; =0x0209A880
	str r0, [sp, #0x1c]
	ldr r0, _0203B42C ; =0x00000429
	mov r2, #0
	str r0, [sp]
	lsl r0, r4, #0x10
	ldr r1, [r5, #0x30]
	lsr r0, r0, #0x10
	bl sub_0203A1FC
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r1, #1
	bl sub_0203B0B4
	ldr r3, _0203B430 ; =0x0214185C
	ldr r1, [sp, #0x1c]
	ldr r4, [r3]
	mov r3, #0x81
	lsl r3, r3, #2
	ldr r2, [r5, #0x30]
	ldr r3, [r4, r3]
	bl sub_0203BFF8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0203B0B4
	ldr r3, _0203B430 ; =0x0214185C
	ldr r1, [sp, #0x18]
	ldr r6, [r3]
	mov r3, #0x81
	lsl r3, r3, #2
	ldr r2, [r5, #0x30]
	ldr r3, [r6, r3]
	bl sub_0203BFF8
	cmp r4, #0
	bne _0203B1F4
	cmp r0, #0
	bne _0203B1F4
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	ldr r1, [sp, #0x1c]
	ldr r2, [r5, #0x30]
	mov r0, #0
	blx sub_02078658
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0203B1F4:
	cmp r4, #1
	bne _0203B20A
	cmp r0, #0
	bne _0203B20A
	add r0, r5, #0
	mov r1, #2
	bl sub_0203BE8C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	b _0203B21E
_0203B20A:
	cmp r4, #0
	bne _0203B224
	cmp r0, #1
	bne _0203B224
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
_0203B21E:
	ldr r2, [r5, #0x30]
	blx sub_0207863C
_0203B224:
	ldr r2, [sp, #0x1c]
	add r0, sp, #0x44
	add r1, r5, #0
	mov r3, #0
	bl sub_0203B148
	ldr r2, [sp, #0x18]
	add r0, sp, #0x4c
	add r1, r5, #0
	mov r3, #1
	bl sub_0203B148
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _0203B256
	ldr r0, [sp, #0x48]
	cmp r0, r7
	beq _0203B24C
	mov r0, #2
	str r0, [sp, #0x44]
_0203B24C:
	ldr r0, [sp, #0x50]
	cmp r0, r7
	beq _0203B256
	mov r0, #2
	str r0, [sp, #0x4c]
_0203B256:
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _0203B2A0
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _0203B310
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #2
	bl sub_0203BDBC
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #2
	bl sub_0203BDBC
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x18]
	sub r0, #0x10
	sub r3, r0, r2
	ldr r0, [sp, #0x1c]
	add r0, r0, r3
_0203B296:
	add r1, r1, r3
	add r2, #0x10
	blx sub_0207863C
	b _0203B310
_0203B2A0:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _0203B2E0
	cmp r1, #0
	beq _0203B310
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0203BDBC
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #1
	bl sub_0203BDBC
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x1c]
	sub r0, #0x10
	sub r3, r0, r2
	ldr r0, [sp, #0x18]
	add r0, r0, r3
	b _0203B296
_0203B2E0:
	cmp r1, #1
	beq _0203B2E8
	cmp r0, #1
	bne _0203B2FC
_0203B2E8:
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	add sp, #0x54
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0203B2FC:
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0203B310:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0203B348
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _0203B326
	mov r2, #0
	ldr r1, [sp, #0x50]
	mvn r2, r2
	cmp r1, r2
	beq _0203B332
_0203B326:
	ldr r1, [sp, #0x50]
	cmp r0, r1
	bhs _0203B332
	ldr r2, [sp, #0x4c]
	cmp r2, #0
	beq _0203B348
_0203B332:
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x34]
	str r2, [sp, #0x3c]
	mov r2, #1
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x18]
	str r1, [sp, #0x38]
	str r2, [sp, #0x40]
	mov r2, #2
	str r2, [sp, #0x30]
	b _0203B360
_0203B348:
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x3c]
	mov r0, #2
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x38]
_0203B360:
	mov r0, #0
	str r0, [sp, #8]
_0203B364:
	ldr r0, [sp, #8]
	mov r4, #0
	lsl r1, r0, #2
	add r0, sp, #0x3c
	ldr r0, [r0, r1]
	ldr r1, [r5, #0x30]
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	sub r1, #0x10
	sub r1, r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	cmp r0, #0
	bhi _0203B38E
	b _0203B49C
_0203B38E:
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C384
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C3B0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, r1, r0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	add r7, r1, r0
	ldr r1, [sp, #0x18]
	mov r2, #0
	add r6, r1, r0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDBC
	lsl r0, r4, #1
	ldr r1, [sp, #0x14]
	ldrh r2, [r7, #2]
	ldrh r1, [r1, r0]
	str r0, [sp, #0x24]
	cmp r2, r1
	beq _0203B3CE
	ldrh r0, [r6, #2]
	cmp r0, r1
	bne _0203B49C
_0203B3CE:
	cmp r2, r1
	bne _0203B3EC
	ldr r0, _0203B430 ; =0x0214185C
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	add r0, r0, #4
	bl sub_02077A10
	ldrh r1, [r7, #2]
	cmp r1, r0
	beq _0203B3F6
	b _0203B3EC
_0203B3EC:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0203BDBC
_0203B3F6:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x24]
	ldrh r0, [r6, #2]
	ldrh r1, [r2, r1]
	cmp r0, r1
	bne _0203B434
	ldr r0, _0203B430 ; =0x0214185C
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	add r0, r0, #4
	bl sub_02077A10
	ldrh r1, [r6, #2]
	cmp r1, r0
	beq _0203B44A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	cmp r0, #1
	beq _0203B49C
	b _0203B440
	.align 2, 0
_0203B428: .word 0x0209A880
_0203B42C: .word 0x00000429
_0203B430: .word 0x0214185C
_0203B434:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	cmp r0, #1
	beq _0203B49C
_0203B440:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_0203BDBC
_0203B44A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	cmp r0, #0
	bne _0203B48E
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, r0]
	ldrh r0, [r7]
	cmp r1, r0
	beq _0203B46C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0203BDBC
_0203B46C:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, r0]
	ldrh r0, [r6]
	cmp r1, r0
	beq _0203B48E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	cmp r0, #1
	beq _0203B49C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_0203BDBC
_0203B48E:
	ldr r0, [r5, #0x2c]
	add r4, r4, #1
	bl sub_0203C3DC
	cmp r4, r0
	bhs _0203B49C
	b _0203B38E
_0203B49C:
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B4D6
	ldr r0, [sp, #8]
	mov r1, #1
	eor r0, r1
	lsl r1, r0, #2
	add r0, sp, #0x2c
	ldr r4, [r0, r1]
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	add r2, r4, #0
	bl sub_0203BDBC
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0203BDBC
	b _0203B4E2
_0203B4D6:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	bhs _0203B4E2
	b _0203B364
_0203B4E2:
	ldr r0, [sp, #8]
	cmp r0, #2
	blo _0203B4FC
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	add sp, #0x54
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0203B4FC:
	mov r0, #5
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	ldr r0, [r5, #0x30]
	ldr r3, [sp, #0x1c]
	sub r0, #0x10
	sub r1, r0, r2
	ldr r0, [sp, #8]
	add r2, #0x10
	lsl r7, r0, #2
	add r0, sp, #0x3c
	ldr r0, [r0, r7]
	add r0, r0, r1
	add r1, r3, r1
	blx sub_0207863C
	ldr r0, [r5, #0x2c]
	mov r4, #0
	bl sub_0203C3DC
	cmp r0, #0
	bls _0203B562
_0203B528:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	cmp r0, #1
	bne _0203B556
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C384
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C3B0
	add r2, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r0, r0, r6
	add r1, r1, r6
	add r2, r2, #4
	blx sub_0207863C
_0203B556:
	ldr r0, [r5, #0x2c]
	add r4, r4, #1
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B528
_0203B562:
	add r1, sp, #0x34
	ldr r1, [r1, r7]
	add r0, r5, #0
	bl sub_0203B144
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	ldr r0, [r5, #0x2c]
	mov r4, #0
	bl sub_0203C3DC
	cmp r0, #0
	bls _0203B592
_0203B57E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	ldr r0, [r5, #0x2c]
	add r4, r4, #1
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B57E
_0203B592:
	mov r0, #1
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0203B170

	thumb_func_start sub_0203B598
sub_0203B598: ; 0x0203B598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_0203BE74
	ldr r0, [r5, #0x34]
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0203B0B4
	ldr r3, _0203B710 ; =0x0214185C
	ldr r1, [sp, #8]
	ldr r6, [r3]
	mov r3, #0x81
	lsl r3, r3, #2
	ldr r2, [r5, #0x30]
	ldr r3, [r6, r3]
	bl sub_0203BFF8
	cmp r0, #0
	bne _0203B5E0
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	ldr r1, [sp, #8]
	ldr r2, [r5, #0x30]
	mov r0, #0
	blx sub_02078658
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203B5E0:
	ldr r2, [sp, #8]
	add r0, sp, #0x10
	add r1, r5, #0
	mov r3, #0
	bl sub_0203B148
	cmp r4, #1
	bne _0203B5FA
	ldr r0, [sp, #0x14]
	cmp r0, r7
	beq _0203B5FA
	mov r0, #2
	str r0, [sp, #0x10]
_0203B5FA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0203B620
	cmp r0, #1
	bne _0203B612
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0203B612:
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203B620:
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x30]
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	sub r1, #0x10
	sub r1, r1, r0
	ldr r0, [sp, #8]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	cmp r0, #0
	bls _0203B6A4
_0203B642:
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C384
	add r7, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C3B0
	str r0, [sp, #0xc]
	add r1, r7, r0
	ldr r0, [sp, #8]
	mov r2, #0
	add r6, r0, r1
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDBC
	ldr r0, [sp, #4]
	lsl r1, r4, #1
	ldrh r1, [r0, r1]
	ldrh r0, [r6, #2]
	cmp r0, r1
	bne _0203B6A4
	cmp r0, r1
	bne _0203B698
	ldr r0, _0203B710 ; =0x0214185C
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	add r0, r0, #4
	add r1, r1, r7
	bl sub_02077A10
	ldrh r1, [r6, #2]
	cmp r1, r0
	beq _0203B698
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0203BDBC
	b _0203B6A4
_0203B698:
	ldr r0, [r5, #0x2c]
	add r4, r4, #1
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B642
_0203B6A4:
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B6D2
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #1
	bl sub_0203BDBC
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl sub_0203BDBC
	b _0203B6E0
_0203B6D2:
	add r0, r5, #0
	mov r1, #1
	bl sub_0203BE8C
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0203B6E0:
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0203B144
	ldr r0, [r5, #0x2c]
	mov r4, #0
	bl sub_0203C3DC
	cmp r0, #0
	bls _0203B708
_0203B6F4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	ldr r0, [r5, #0x2c]
	add r4, r4, #1
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B6F4
_0203B708:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203B710: .word 0x0214185C
	thumb_func_end sub_0203B598

	thumb_func_start sub_0203B714
sub_0203B714: ; 0x0203B714
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r4, [r7, #0x30]
	bl sub_0203B0B4
	add r6, r4, r0
	ldr r5, [r7, #0x34]
	add r0, r7, #0
	add r1, r5, #0
	sub r6, #0x10
	bl sub_0203B120
	sub r4, #0x10
	ldr r3, _0203B744 ; =0x0214185C
	add r1, r5, r4
	ldr r4, [r3]
	mov r3, #0x82
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	add r0, r6, #0
	mov r2, #0xf
	bl sub_0203C07C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203B744: .word 0x0214185C
	thumb_func_end sub_0203B714

	thumb_func_start sub_0203B748
sub_0203B748: ; 0x0203B748
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x30]
	bl sub_0203B0B4
	add r0, r4, r0
	ldr r3, _0203B770 ; =0x0214185C
	sub r1, r4, #1
	ldr r4, [r3]
	mov r3, #0x82
	ldr r2, [r5, #0x34]
	lsl r3, r3, #2
	add r1, r2, r1
	ldr r3, [r4, r3]
	sub r0, r0, #1
	mov r2, #1
	bl sub_0203C07C
	pop {r3, r4, r5, pc}
	nop
_0203B770: .word 0x0214185C
	thumb_func_end sub_0203B748

	thumb_func_start sub_0203B774
sub_0203B774: ; 0x0203B774
	push {r3, lr}
	ldr r2, [r0, #0x28]
	mov r3, #0
	str r2, [r0, #0x10]
	add r2, r2, #1
	str r2, [r0, #0x28]
	mov r2, #0x51
	lsl r2, r2, #2
	strb r3, [r0, #0x18]
	str r3, [r0, #0x14]
	strb r3, [r0, #0x19]
	str r3, [r0, r2]
	cmp r1, #1
	bne _0203B796
	mov r0, #1
	bl sub_0203D10C
_0203B796:
	pop {r3, pc}
	thumb_func_end sub_0203B774

	thumb_func_start sub_0203B798
sub_0203B798: ; 0x0203B798
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #1
	str r2, [sp, #0x10]
	mov r4, #0
	bl sub_0203D10C
	ldr r0, [sp, #0xc]
	add r7, sp, #0x1c
	str r4, [r0]
	ldr r0, [sp, #0x10]
	str r4, [r0]
	str r4, [sp, #0x20]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x18]
_0203B7BA:
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C3B0
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	add r1, r0, r6
	ldr r0, [sp, #0x10]
	str r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BDA0
	cmp r0, #0
	bne _0203B7FA
_0203B7DA:
	str r7, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, sp, #0x14
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	add r3, sp, #0x20
	bl sub_0203B81C
	cmp r0, #2
	bne _0203B7F6
	mov r6, #0
_0203B7F6:
	cmp r0, #0
	beq _0203B7DA
_0203B7FA:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	ldr r0, [r0]
	add r1, r0, r6
	ldr r0, [sp, #0xc]
	str r1, [r0]
	ldr r0, [r5, #0x2c]
	bl sub_0203C3DC
	cmp r4, r0
	blo _0203B7BA
	mov r0, #1
	bl sub_0203D134
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0203B798

	thumb_func_start sub_0203B81C
sub_0203B81C: ; 0x0203B81C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, [sp, #0x34]
	str r0, [sp]
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x38]
	str r3, [sp, #4]
	str r1, [sp, #0x38]
	add r1, r2, #0
	ldr r7, [sp, #0x30]
	bl sub_0203B0B4
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl sub_0203C384
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r4, [r0]
	cmp r4, #0
	bne _0203B860
	ldr r0, [sp]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl sub_0203C3B0
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	b _0203B86C
_0203B860:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	str r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0xc]
_0203B86C:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0203AD84
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0]
	ldr r0, [sp, #0x34]
	str r1, [r0]
	ldr r0, [sp, #0x38]
	str r1, [r0]
	ldr r0, [sp]
	add r0, #0x38
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xb
	str r0, [sp, #0x10]
_0203B890:
	mov r0, #1
	lsl r0, r0, #8
	cmp r4, r0
	bls _0203B89E
	add r5, r0, #0
	sub r4, r4, r0
	b _0203B8A2
_0203B89E:
	add r5, r4, #0
	mov r4, #0
_0203B8A2:
	ldr r0, [r7]
	add r1, r0, r5
	ldr r0, [sp, #0x10]
	str r1, [r7]
	cmp r1, r0
	bls _0203B8B8
	ldr r0, [sp, #0x38]
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	str r0, [r7]
_0203B8B8:
	ldr r3, _0203B928 ; =0x0214185C
	ldr r0, [sp, #0xc]
	ldr r6, [r3]
	mov r3, #0x81
	lsl r3, r3, #2
	ldr r1, [sp]
	ldr r3, [r6, r3]
	add r2, r5, #0
	bl sub_0203BFF8
	cmp r0, #0
	bne _0203B8D6
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203B8D6:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r0, [sp]
	add r1, r2, r1
	add r2, r5, #0
	bl sub_02043E98
	cmp r0, #0
	beq _0203B8EE
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203B8EE:
	ldr r0, [sp, #0x14]
	add r0, r0, r5
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r0, r5
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	ldr r0, [r0]
	cmp r0, #1
	bne _0203B91C
	cmp r4, #0
	bne _0203B90C
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203B90C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x34]
	str r4, [r0]
	ldr r0, [sp, #0x14]
	add sp, #0x18
	str r0, [r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203B91C:
	cmp r4, #0
	bne _0203B890
	mov r0, #2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203B928: .word 0x0214185C
	thumb_func_end sub_0203B81C

	thumb_func_start sub_0203B92C
sub_0203B92C: ; 0x0203B92C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_0203B0C8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203BD6C
	lsl r1, r4, #1
	strh r0, [r6, r1]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0203B0B4
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C384
	add r7, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl sub_0203C3B0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203AD84
	ldr r3, _0203B984 ; =0x0214185C
	ldr r2, [sp]
	ldr r4, [r3]
	mov r3, #0x82
	lsl r3, r3, #2
	add r1, r0, #0
	ldr r3, [r4, r3]
	add r0, r6, r7
	add r2, r2, #4
	bl sub_0203C07C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203B984: .word 0x0214185C
	thumb_func_end sub_0203B92C

	thumb_func_start sub_0203B988
sub_0203B988: ; 0x0203B988
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203B0B4
	ldr r1, [r5, #0x30]
	mov r4, #5
	add r1, r1, r0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	sub r1, #0x10
	sub r6, r1, r0
	add r0, r5, #0
	bl sub_0203B0C8
	ldr r3, _0203B9B8 ; =0x0214185C
	ldr r2, [r5, r4]
	add r1, r0, #0
	ldr r3, [r3]
	add r4, #0xc8
	ldr r3, [r3, r4]
	add r0, r6, #0
	bl sub_0203C07C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203B9B8: .word 0x0214185C
	thumb_func_end sub_0203B988

	thumb_func_start sub_0203B9BC
sub_0203B9BC: ; 0x0203B9BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0
	add r4, r0, #0
	str r1, [r5]
	ldrb r0, [r4, #0x18]
	ldr r7, _0203BCC4 ; =0x0214185C
	cmp r0, #0xb
	bls _0203B9D2
	b _0203BCBC
_0203B9D2:
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0203B9DE: ; jump table
	.short _0203B9F6 - _0203B9DE - 2 ; case 0
	.short _0203BA0A - _0203B9DE - 2 ; case 1
	.short _0203BA9A - _0203B9DE - 2 ; case 2
	.short _0203BAA0 - _0203B9DE - 2 ; case 3
	.short _0203BAFA - _0203B9DE - 2 ; case 4
	.short _0203BB46 - _0203B9DE - 2 ; case 5
	.short _0203BB80 - _0203B9DE - 2 ; case 6
	.short _0203BBB2 - _0203B9DE - 2 ; case 7
	.short _0203BBF0 - _0203B9DE - 2 ; case 8
	.short _0203BC2A - _0203B9DE - 2 ; case 9
	.short _0203BC50 - _0203B9DE - 2 ; case 10
	.short _0203BCB6 - _0203B9DE - 2 ; case 11
_0203B9F6:
	mov r2, #0x52
	lsl r2, r2, #2
	str r1, [r4, r2]
	add r0, r2, #4
	str r1, [r4, r0]
	add r2, #8
	str r1, [r4, r2]
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_0203BA0A:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x53
	lsl r0, r0, #2
	add r1, r0, #4
	add r6, r4, r0
	sub r0, r0, #4
	add r5, r4, #0
	add r7, r4, r1
	str r0, [sp, #0xc]
	add r5, #0x14
_0203BA20:
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0203BA2C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203BA2C:
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl sub_0203BDA0
	cmp r0, #0
	bne _0203BA78
	str r6, [sp]
	str r7, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	mov r2, #1
	add r3, r4, r3
	bl sub_0203B81C
	cmp r0, #1
	bne _0203BA5E
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	mov r2, #1
	bl sub_0203BDBC
	b _0203BA78
_0203BA5E:
	cmp r0, #0
	bne _0203BA80
	ldr r0, [sp, #0x10]
	cmp r0, #1
	beq _0203BA72
	ldr r0, _0203BCC8 ; =0x0209A890
	ldr r2, _0203BCCC ; =0x0209A8C4
	mov r1, #0
	bl sub_0203CB80
_0203BA72:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203BA78:
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl sub_0203BD48
_0203BA80:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [r4, #0x2c]
	bl sub_0203C3DC
	ldr r1, [r4, #0x14]
	cmp r1, r0
	blo _0203BA20
_0203BA92:
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
_0203BA96:
	strb r0, [r4, #0x18]
	b _0203BCBC
_0203BA9A:
	add r0, r0, #1
	str r1, [r4, #0x14]
	strb r0, [r4, #0x18]
_0203BAA0:
	ldr r0, [r4, #0x2c]
	ldr r6, [r4, #0x14]
	bl sub_0203C3DC
	cmp r6, r0
	bhs _0203BAE6
	add r5, r4, #0
	add r5, #0x14
_0203BAB0:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203BDA0
	add r2, r0, #0
	beq _0203BAD6
	ldrb r3, [r4, #0x19]
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	bl sub_0203B92C
	mov r1, #0x83
	ldr r2, [r7]
	lsl r1, r1, #2
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _0203BAE6
_0203BAD6:
	ldr r0, [r5]
	add r6, r0, #1
	ldr r0, [r4, #0x2c]
	str r6, [r5]
	bl sub_0203C3DC
	cmp r6, r0
	blo _0203BAB0
_0203BAE6:
	ldr r0, [r4, #0x2c]
	bl sub_0203C3DC
	ldr r1, [r4, #0x14]
	cmp r1, r0
	blo _0203BB96
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #5
_0203BAF8:
	b _0203BA96
_0203BAFA:
	mov r5, #0x83
	lsl r5, r5, #2
	ldr r3, [r7]
	sub r2, r5, #4
	ldrh r0, [r3, r5]
	ldr r2, [r3, r2]
	add r1, sp, #0x14
	bl sub_0203C11C
	cmp r0, #0
	beq _0203BB96
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0203BB28
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0203BB22
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0203BB22:
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203BB28:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	bl sub_0203C3B0
	add r1, r5, #0
	sub r1, #0xc8
	ldr r1, [r4, r1]
	sub r5, #0xc8
	add r0, r1, r0
	str r0, [r4, r5]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	mov r0, #3
	b _0203BAF8
_0203BB46:
	ldr r0, [r4, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203BDA0
	add r5, r0, #0
	bne _0203BB6A
	ldr r0, [r4, #0x2c]
	mov r5, #1
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl sub_0203BDBC
_0203BB6A:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203B988
	mov r1, #0x83
	ldr r2, [r7]
	lsl r1, r1, #2
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_0203BB80:
	mov r2, #0x83
	ldr r3, [r7]
	lsl r2, r2, #2
	ldrh r0, [r3, r2]
	sub r2, r2, #4
	ldr r2, [r3, r2]
	add r1, sp, #0x14
	bl sub_0203C11C
	cmp r0, #0
	bne _0203BB98
_0203BB96:
	b _0203BCBC
_0203BB98:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0203BBB0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0203BBAA
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0203BBAA:
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203BBB0:
	b _0203BA92
_0203BBB2:
	ldr r0, [r4, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #1
	bl sub_0203BDA0
	add r5, r0, #0
	bne _0203BBDA
	ldr r0, [r4, #0x2c]
	mov r5, #1
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #1
	mov r2, #1
	bl sub_0203BDBC
_0203BBDA:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203B714
	mov r1, #0x83
	ldr r2, [r7]
	lsl r1, r1, #2
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_0203BBF0:
	mov r2, #0x83
	ldr r3, [r7]
	lsl r2, r2, #2
	ldrh r0, [r3, r2]
	sub r2, r2, #4
	ldr r2, [r3, r2]
	add r1, sp, #0x14
	bl sub_0203C11C
	cmp r0, #0
	beq _0203BCBC
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0203BC1E
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0203BC18
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0203BC18:
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203BC1E:
	ldrb r0, [r4, #0x18]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203BC2A:
	ldr r0, [r4, #0x2c]
	bl sub_0203C3DC
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #1
	bl sub_0203BDA0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203B748
	mov r1, #0x83
	ldr r2, [r7]
	lsl r1, r1, #2
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_0203BC50:
	mov r2, #0x83
	ldr r3, [r7]
	lsl r2, r2, #2
	ldrh r0, [r3, r2]
	sub r2, r2, #4
	ldr r2, [r3, r2]
	add r1, sp, #0x14
	bl sub_0203C11C
	cmp r0, #0
	beq _0203BCBC
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldrb r0, [r4, #0x19]
	bne _0203BC7E
	cmp r0, #0
	bne _0203BC78
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0203BC78:
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203BC7E:
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _0203BCA4
	ldr r1, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _0203BCA4
	add r0, r4, #0
	bl sub_0203BDF0
	mov r0, #2
	strb r0, [r4, #0x18]
	mov r0, #1
	str r0, [r5]
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203BCA4:
	add r0, r4, #0
	bl sub_0203BE74
	ldrb r0, [r4, #0x18]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203BCB6:
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0203BCBC:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203BCC4: .word 0x0214185C
_0203BCC8: .word 0x0209A890
_0203BCCC: .word 0x0209A8C4
	thumb_func_end sub_0203B9BC

	thumb_func_start sub_0203BCD0
sub_0203BCD0: ; 0x0203BCD0
	push {r3, lr}
	cmp r1, #3
	bne _0203BCDC
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x28]
	b _0203BCE0
_0203BCDC:
	mov r1, #1
	strb r1, [r0, #0x1c]
_0203BCE0:
	cmp r2, #1
	bne _0203BCEA
	mov r0, #1
	bl sub_0203D134
_0203BCEA:
	pop {r3, pc}
	thumb_func_end sub_0203BCD0

	thumb_func_start sub_0203BCEC
sub_0203BCEC: ; 0x0203BCEC
	push {r3, lr}
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x28]
	ldr r0, _0203BD08 ; =0x0214185C
	ldr r1, [r0]
	mov r0, #0x83
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	bl sub_0203C18C
	mov r0, #1
	bl sub_0203D134
	pop {r3, pc}
	.align 2, 0
_0203BD08: .word 0x0214185C
	thumb_func_end sub_0203BCEC

	thumb_func_start sub_0203BD0C
sub_0203BD0C: ; 0x0203BD0C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0xff
	mov r2, #0x10
	blx sub_020787A8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203B0B4
	ldr r3, _0203BD44 ; =0x0214185C
	ldr r1, [r5, #0x30]
	ldr r4, [r3]
	add r0, r1, r0
	mov r3, #0x82
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	sub r0, #0x10
	add r1, r6, #0
	mov r2, #0x10
	bl sub_0203BFD4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203BD44: .word 0x0214185C
	thumb_func_end sub_0203BD0C

	thumb_func_start sub_0203BD48
sub_0203BD48: ; 0x0203BD48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r6, r1, #0
	bl sub_0203C384
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0203C3B0
	ldr r2, [r5, #0x34]
	add r1, r4, r0
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	ldrh r0, [r2, r1]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203BD48

	thumb_func_start sub_0203BD6C
sub_0203BD6C: ; 0x0203BD6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r6, r1, #0
	bl sub_0203C384
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0203C3B0
	add r2, r0, #0
	ldr r1, [r5, #0x34]
	add r0, r4, r2
	add r5, r1, r0
	ldr r0, _0203BD9C ; =0x0214185C
	add r1, r1, r4
	ldr r0, [r0]
	add r0, r0, #4
	bl sub_02077A10
	strh r0, [r5, #2]
	ldrh r0, [r5, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203BD9C: .word 0x0214185C
	thumb_func_end sub_0203BD6C

	thumb_func_start sub_0203BDA0
sub_0203BDA0: ; 0x0203BDA0
	mov r2, #0x4e
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsr r0, r1, #4
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1b
	add r1, r2, #0
	lsr r1, r0
	mov r0, #3
	and r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_0203BDA0

	thumb_func_start sub_0203BDBC
sub_0203BDBC: ; 0x0203BDBC
	push {r4, r5, r6, r7}
	lsl r3, r1, #0x1c
	lsr r1, r1, #4
	lsl r5, r1, #2
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	lsr r6, r3, #0x1b
	mov r1, #3
	mov r7, #3
	lsl r1, r6
	sub r7, r7, #4
	ldr r3, [r4, r5]
	eor r1, r7
	and r1, r3
	str r1, [r4, r5]
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	add r0, r2, #0
	ldr r1, [r3, r5]
	lsl r0, r6
	orr r0, r1
	str r0, [r3, r5]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0203BDBC

	thumb_func_start sub_0203BDF0
sub_0203BDF0: ; 0x0203BDF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_0203C3DC
	add r0, r0, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r2, #0
	mov r3, #0
	cmp r0, #0
	bls _0203BE70
	mov r0, #0x4e
	ldr r1, [sp]
	lsl r0, r0, #2
	add r0, r1, r0
	mov ip, r0
_0203BE18:
	mov r0, ip
	ldr r6, [r0]
	lsl r5, r2, #2
	ldr r0, [r6, r5]
	add r1, r0, #0
	lsr r1, r3
	mov r0, #3
	add r4, r1, #0
	and r4, r0
	beq _0203BE5A
	cmp r4, #1
	bne _0203BE34
	mov r4, #2
	b _0203BE3A
_0203BE34:
	cmp r4, #2
	bne _0203BE3A
	mov r4, #1
_0203BE3A:
	mov r1, #3
	mov r0, #3
	lsl r1, r3
	sub r0, r0, #4
	eor r0, r1
	ldr r7, [r6, r5]
	ldr r1, [sp]
	and r0, r7
	str r0, [r6, r5]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r4, r3
	ldr r0, [r1, r5]
	orr r0, r4
	str r0, [r1, r5]
_0203BE5A:
	add r3, r3, #2
	cmp r3, #0x20
	blo _0203BE64
	sub r3, #0x20
	add r2, r2, #1
_0203BE64:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blo _0203BE18
_0203BE70:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0203BDF0

	thumb_func_start sub_0203BE74
sub_0203BE74: ; 0x0203BE74
	mov r2, #0x4e
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r1, [r3, r2]
	add r2, r2, #4
	ldr r2, [r3, r2]
	ldr r3, _0203BE88 ; =sub_02078658
	mov r0, #0
	bx r3
	nop
_0203BE88: .word sub_02078658
	thumb_func_end sub_0203BE74

	thumb_func_start sub_0203BE8C
sub_0203BE8C: ; 0x0203BE8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x4e
	ldr r2, [sp]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #0x4e
	lsl r2, r2, #2
	add r3, r2, #4
	ldr r2, [sp]
	mov r0, #0
	ldr r2, [r2, r3]
	mov r4, #0
	blx sub_02078658
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_0203C3DC
	add r7, r0, #2
	mov r3, #0
	mov r5, #0
	cmp r7, #0
	bls _0203BEE4
_0203BEC0:
	mov r0, #0x4e
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	ldr r6, [sp, #4]
	lsl r1, r4, #2
	lsl r6, r3
	ldr r0, [r2, r1]
	add r3, r3, #2
	orr r0, r6
	str r0, [r2, r1]
	cmp r3, #0x20
	blo _0203BEDE
	sub r3, #0x20
	add r4, r4, #1
_0203BEDE:
	add r5, r5, #1
	cmp r5, r7
	blo _0203BEC0
_0203BEE4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203BE8C

	thumb_func_start sub_0203BEE8
sub_0203BEE8: ; 0x0203BEE8
	push {r4, lr}
	ldr r3, _0203BEFC ; =0x0214185C
	ldr r4, [r3]
	mov r3, #0x82
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	bl sub_0203BFD4
	pop {r4, pc}
	nop
_0203BEFC: .word 0x0214185C
	thumb_func_end sub_0203BEE8

	thumb_func_start sub_0203BF00
sub_0203BF00: ; 0x0203BF00
	push {r4, lr}
	ldr r3, _0203BF14 ; =0x0214185C
	ldr r4, [r3]
	mov r3, #0x82
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	bl sub_0203C07C
	pop {r4, pc}
	nop
_0203BF14: .word 0x0214185C
	thumb_func_end sub_0203BF00

	thumb_func_start sub_0203BF18
sub_0203BF18: ; 0x0203BF18
	ldr r2, _0203BF28 ; =0x0214185C
	ldr r3, [r2]
	mov r2, #0x82
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r3, _0203BF2C ; =sub_0203C11C
	bx r3
	nop
_0203BF28: .word 0x0214185C
_0203BF2C: .word sub_0203C11C
	thumb_func_end sub_0203BF18

	thumb_func_start sub_0203BF30
sub_0203BF30: ; 0x0203BF30
	push {r4, lr}
	ldr r3, _0203BF44 ; =0x0214185C
	ldr r4, [r3]
	mov r3, #0x81
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	bl sub_0203BFF8
	pop {r4, pc}
	nop
_0203BF44: .word 0x0214185C
	thumb_func_end sub_0203BF30

	thumb_func_start sub_0203BF48
sub_0203BF48: ; 0x0203BF48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r1, r2, #1
	add r7, r3, #0
	bl sub_0203B0B4
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	bl sub_0203C384
	ldr r3, _0203BF78 ; =0x0214185C
	add r0, r4, r0
	ldr r4, [r3]
	mov r3, #0x81
	lsl r3, r3, #2
	ldr r2, [sp, #0x18]
	ldr r3, [r4, r3]
	add r1, r7, #0
	bl sub_0203BFF8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203BF78: .word 0x0214185C
	thumb_func_end sub_0203BF48

	thumb_func_start sub_0203BF7C
sub_0203BF7C: ; 0x0203BF7C
	push {r3, r4, r5, lr}
	blx sub_0207A208
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _0203BF96
	ldr r0, _0203BFC8 ; =0x0209A8DC
	ldr r2, _0203BFCC ; =0x0209A8E0
	mov r1, #0
	bl sub_0203CB80
_0203BF96:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF4C
	ldr r5, _0203BFD0 ; =0x00FF1302
	add r0, r5, #0
	bl sub_0206F854
	cmp r0, #0
	bne _0203BFAC
	mov r5, #0
_0203BFAC:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF58
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	blx sub_0207A260
	mov r0, #1
	cmp r5, #0
	bne _0203BFC4
	mov r0, #0
_0203BFC4:
	pop {r3, r4, r5, pc}
	nop
_0203BFC8: .word 0x0209A8DC
_0203BFCC: .word 0x0209A8E0
_0203BFD0: .word 0x00FF1302
	thumb_func_end sub_0203BF7C

	thumb_func_start sub_0203BFD4
sub_0203BFD4: ; 0x0203BFD4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r3, #0
	bl sub_0203C07C
	add r4, r0, #0
	add r6, sp, #0
_0203BFE2:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0203C11C
	cmp r0, #0
	beq _0203BFE2
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203BFD4

	thumb_func_start sub_0203BFF8
sub_0203BFF8: ; 0x0203BFF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x14]
	add r5, r3, #0
	blx sub_0207A208
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _0203C01C
	ldr r0, _0203C068 ; =0x0209A8DC
	ldr r2, _0203C06C ; =0x0209A8E0
	mov r1, #0
	bl sub_0203CB80
_0203C01C:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF4C
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r1, r7, #0
	mov r3, #0
	bl sub_0206F80C
	bl sub_0206F888
	add r6, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF58
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	blx sub_0207A260
	cmp r6, #0
	bne _0203C060
	cmp r5, #0
	beq _0203C060
	blx r5
_0203C060:
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C068: .word 0x0209A8DC
_0203C06C: .word 0x0209A8E0
	thumb_func_end sub_0203BFF8

	thumb_func_start sub_0203C070
sub_0203C070: ; 0x0203C070
	ldr r0, _0203C078 ; =0x0209A8D8
	mov r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_0203C078: .word 0x0209A8D8
	thumb_func_end sub_0203C070

	thumb_func_start sub_0203C07C
sub_0203C07C: ; 0x0203C07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x14]
	blx sub_0207A208
	add r4, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r4, r0
	bne _0203C0A0
	ldr r0, _0203C108 ; =0x0209A8DC
	ldr r2, _0203C10C ; =0x0209A8E0
	mov r1, #0
	bl sub_0203CB80
_0203C0A0:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0206EF4C
	ldr r1, _0203C110 ; =0x02141860
	mov r0, #1
	str r0, [r1]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #0
	add r1, sp, #0x18
	mov r2, #4
	mov r3, #0
	bl sub_0206F80C
	cmp r0, #0
	bne _0203C0DA
	lsl r0, r4, #0x10
	ldr r2, [sp, #0x14]
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0203C1C0
_0203C0DA:
	ldr r0, _0203C114 ; =0x0209A8D8
	mov r1, #0
	str r1, [r0]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r3, _0203C118 ; =sub_0203C070
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0206F80C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0203C108: .word 0x0209A8DC
_0203C10C: .word 0x0209A8E0
_0203C110: .word 0x02141860
_0203C114: .word 0x0209A8D8
_0203C118: .word sub_0203C070
	thumb_func_end sub_0203C07C

	thumb_func_start sub_0203C11C
sub_0203C11C: ; 0x0203C11C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _0203C184 ; =0x0209A8D8
	add r6, r0, #0
	ldr r1, [r1]
	add r4, r2, #0
	cmp r1, #1
	bne _0203C17E
	bl sub_0206EF58
	add r0, r6, #0
	blx sub_0207A260
	ldr r0, _0203C188 ; =0x02141860
	mov r6, #0
	str r6, [r0]
	bl sub_0206EECC
	cmp r0, #7
	bhi _0203C166
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203C150: ; jump table
	.short _0203C160 - _0203C150 - 2 ; case 0
	.short _0203C166 - _0203C150 - 2 ; case 1
	.short _0203C166 - _0203C150 - 2 ; case 2
	.short _0203C166 - _0203C150 - 2 ; case 3
	.short _0203C166 - _0203C150 - 2 ; case 4
	.short _0203C166 - _0203C150 - 2 ; case 5
	.short _0203C170 - _0203C150 - 2 ; case 6
	.short _0203C166 - _0203C150 - 2 ; case 7
_0203C160:
	mov r0, #1
	str r0, [r5]
	b _0203C17A
_0203C166:
	mov r0, #0
	str r0, [r5]
	cmp r4, #0
	beq _0203C17A
	b _0203C178
_0203C170:
	str r6, [r5]
	cmp r4, #0
	beq _0203C17A
	mov r0, #1
_0203C178:
	blx r4
_0203C17A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203C17E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0203C184: .word 0x0209A8D8
_0203C188: .word 0x02141860
	thumb_func_end sub_0203C11C

	thumb_func_start sub_0203C18C
sub_0203C18C: ; 0x0203C18C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0206F890
	cmp r0, #0
	bne _0203C1A0
	bl sub_0206F898
	bl sub_0206F888
_0203C1A0:
	ldr r5, _0203C1BC ; =0x02141860
	ldr r0, [r5]
	cmp r0, #1
	bne _0203C1B8
	add r0, r4, #0
	bl sub_0206EF58
	add r0, r4, #0
	blx sub_0207A260
	mov r0, #0
	str r0, [r5]
_0203C1B8:
	pop {r3, r4, r5, pc}
	nop
_0203C1BC: .word 0x02141860
	thumb_func_end sub_0203C18C

	thumb_func_start sub_0203C1C0
sub_0203C1C0: ; 0x0203C1C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0206EF58
	add r0, r5, #0
	blx sub_0207A260
	mov r1, #0
	ldr r0, _0203C1E4 ; =0x02141860
	cmp r4, #0
	str r1, [r0]
	beq _0203C1E0
	add r0, r6, #0
	blx r4
_0203C1E0:
	pop {r4, r5, r6, pc}
	nop
_0203C1E4: .word 0x02141860
	thumb_func_end sub_0203C1C0

	thumb_func_start sub_0203C1E8
sub_0203C1E8: ; 0x0203C1E8
	ldr r0, _0203C1F0 ; =0x02141860
	ldr r0, [r0]
	bx lr
	nop
_0203C1F0: .word 0x02141860
	thumb_func_end sub_0203C1E8

	thumb_func_start sub_0203C1F4
sub_0203C1F4: ; 0x0203C1F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r7, r3, #0
	add r5, r2, #0
	str r0, [sp, #4]
	mov r1, #0x49
	str r1, [sp]
	ldr r3, _0203C24C ; =0x0209A8FC
	mov r1, #0x1c
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1c
	blx sub_02078658
	str r6, [r4]
	str r5, [r4, #4]
	mov r1, #0xc
	ldr r0, [sp, #0x20]
	str r7, [r4, #0x10]
	str r0, [r4, #8]
	mov r0, #0x4f
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _0203C24C ; =0x0209A8FC
	mul r1, r5
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl sub_0203C2E8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C24C: .word 0x0209A8FC
	thumb_func_end sub_0203C1F4

	thumb_func_start sub_0203C250
sub_0203C250: ; 0x0203C250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203C250

	thumb_func_start sub_0203C264
sub_0203C264: ; 0x0203C264
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r1]
	str r1, [sp]
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r2, [sp]
	ldr r0, [r0, #4]
	ldr r2, [r2, #0x10]
	str r0, [sp, #4]
	mov r0, #0
	add r1, r6, #0
	mov r4, #0
	blx sub_02078658
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _0203C2B4
_0203C28A:
	mov r0, #0xc
	add r5, r4, #0
	mul r5, r0
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	add r2, r0, r5
	ldr r7, [r2, #8]
	ldr r2, [r2, #4]
	mov r0, #0
	add r1, r6, r7
	blx sub_02078658
	ldr r1, [sp, #8]
	add r0, r6, r7
	add r1, r1, r5
	ldr r1, [r1, #8]
	blx r1
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _0203C28A
_0203C2B4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0203C264

	thumb_func_start sub_0203C2B8
sub_0203C2B8: ; 0x0203C2B8
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r0, [r0, #4]
	add r5, r1, #0
	cmp r5, r0
	blo _0203C2CE
	ldr r0, _0203C2E0 ; =0x0209A908
	ldr r2, _0203C2E4 ; =0x0209A90C
	mov r1, #0
	bl sub_0203CB80
_0203C2CE:
	mov r0, #0xc
	mul r0, r5
	add r0, r4, r0
	ldr r0, [r0, #4]
	blx r0
	mov r1, #3
	add r0, r0, #3
	bic r0, r1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0203C2E0: .word 0x0209A908
_0203C2E4: .word 0x0209A90C
	thumb_func_end sub_0203C2B8

	thumb_func_start sub_0203C2E8
sub_0203C2E8: ; 0x0203C2E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	ldr r7, [r0]
	ldr r0, [r0, #0x14]
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	mov r5, #0
	ldr r0, [r0, #4]
	mov r4, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _0203C354
_0203C304:
	mov r0, #0xc
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r7, r6]
	cmp r4, r0
	beq _0203C31A
	ldr r0, _0203C378 ; =0x0209A908
	ldr r2, _0203C37C ; =0x0209A924
	mov r1, #0
	bl sub_0203CB80
_0203C31A:
	ldr r0, [sp, #0x14]
	ldr r1, [r7, r6]
	add r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	str r1, [r0, r6]
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0203C2B8
	ldr r1, [sp, #0xc]
	str r0, [r1, #4]
	str r5, [r1, #8]
	ldr r1, [sp, #8]
	add r2, r1, r0
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	beq _0203C346
	mov r0, #1
	lsl r0, r0, #8
	sub r0, r0, r1
	b _0203C348
_0203C346:
	mov r0, #0
_0203C348:
	add r0, r2, r0
	add r5, r5, r0
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blo _0203C304
_0203C354:
	ldr r0, [sp, #4]
	ldr r1, [r0, #8]
	ldr r0, [r0, #0x18]
	add r0, r5, r0
	add r3, r1, r0
	ldr r0, [sp, #4]
	str r3, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r3, r0
	bls _0203C374
	str r0, [sp]
	ldr r0, _0203C378 ; =0x0209A908
	ldr r2, _0203C380 ; =0x0209A93C
	mov r1, #0
	bl sub_0203CB94
_0203C374:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203C378: .word 0x0209A908
_0203C37C: .word 0x0209A924
_0203C380: .word 0x0209A93C
	thumb_func_end sub_0203C2E8

	thumb_func_start sub_0203C384
sub_0203C384: ; 0x0203C384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r4, r0
	blo _0203C39A
	ldr r0, _0203C3A8 ; =0x0209A908
	ldr r2, _0203C3AC ; =0x0209A970
	mov r1, #0
	bl sub_0203CB80
_0203C39A:
	mov r0, #0xc
	ldr r1, [r5, #0x14]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
	nop
_0203C3A8: .word 0x0209A908
_0203C3AC: .word 0x0209A970
	thumb_func_end sub_0203C384

	thumb_func_start sub_0203C3B0
sub_0203C3B0: ; 0x0203C3B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r4, r0
	blo _0203C3C6
	ldr r0, _0203C3D4 ; =0x0209A908
	ldr r2, _0203C3D8 ; =0x0209A970
	mov r1, #0
	bl sub_0203CB80
_0203C3C6:
	mov r0, #0xc
	ldr r1, [r5, #0x14]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
	nop
_0203C3D4: .word 0x0209A908
_0203C3D8: .word 0x0209A970
	thumb_func_end sub_0203C3B0

	thumb_func_start sub_0203C3DC
sub_0203C3DC: ; 0x0203C3DC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0203C3DC

	thumb_func_start sub_0203C3E0
sub_0203C3E0: ; 0x0203C3E0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0203C3E0

	thumb_func_start sub_0203C3E4
sub_0203C3E4: ; 0x0203C3E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #7
	tst r0, r5
	beq _0203C3F2
	mov r2, #1
	b _0203C3F4
_0203C3F2:
	mov r2, #0
_0203C3F4:
	lsr r0, r5, #3
	add r3, r0, r2
	mov r0, #3
	tst r0, r3
	beq _0203C408
	mov r0, #3
_0203C400:
	add r3, r3, #1
	add r2, r3, #0
	tst r2, r0
	bne _0203C400
_0203C408:
	lsl r0, r3, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x94
	str r0, [sp]
	add r0, r1, #0
	add r1, r4, #0
	ldr r3, _0203C440 ; =0x0209A98C
	add r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	add r6, r0, #0
	strh r5, [r6]
	add r0, #0xc
	strh r4, [r6, #2]
	add r2, r0, r4
	ldr r1, _0203C444 ; =0x573C765A
	str r2, [r6, #4]
	str r1, [r2]
	mov r1, #0
	add r2, r4, #0
	str r7, [r6, #8]
	blx sub_020787A8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C440: .word 0x0209A98C
_0203C444: .word 0x573C765A
	thumb_func_end sub_0203C3E4

	thumb_func_start sub_0203C448
sub_0203C448: ; 0x0203C448
	ldr r3, _0203C44C ; =sub_0203A24C
	bx r3
	.align 2, 0
_0203C44C: .word sub_0203A24C
	thumb_func_end sub_0203C448

	thumb_func_start sub_0203C450
sub_0203C450: ; 0x0203C450
	push {r3, lr}
	ldrh r2, [r0]
	add r3, r1, #0
	mov r1, #0
	bl sub_0203C460
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203C450

	thumb_func_start sub_0203C460
sub_0203C460: ; 0x0203C460
	push {r3, r4, r5, lr}
	cmp r2, r3
	blo _0203C46E
	ldrh r4, [r0]
	add r5, r1, r3
	cmp r5, r4
	bls _0203C474
_0203C46E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0203C474:
	cmp r3, #8
	bhs _0203C47E
	bl sub_0203C484
	pop {r3, r4, r5, pc}
_0203C47E:
	bl sub_0203C560
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C460

	thumb_func_start sub_0203C484
sub_0203C484: ; 0x0203C484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r0, r1, r2
	add r5, r3, #0
	add r0, r0, #1
	sub r0, r0, r5
	str r0, [sp]
	asr r0, r0, #2
	lsr r2, r0, #0x1d
	ldr r0, [sp]
	lsr r4, r1, #3
	add r2, r0, r2
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	mov r0, #7
	and r1, r0
	add r0, r1, r5
	asr r6, r2, #3
	cmp r0, #8
	bhi _0203C4C8
	add r0, r7, r4
	ldrb r0, [r0, #0xc]
	add r2, r5, #0
	bl sub_0203C8B4
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _0203C4C8
_0203C4C0:
	lsl r1, r4, #3
	add r0, r0, r1
_0203C4C4:
	str r0, [sp, #4]
	b _0203C512
_0203C4C8:
	cmp r4, r6
	bgt _0203C512
_0203C4CC:
	add r1, r7, r4
	ldrb r0, [r1, #0xc]
	ldr r2, _0203C554 ; =0x02093160
	ldrb r2, [r2, r0]
	cmp r2, r5
	blo _0203C4EA
	mov r1, #0
	add r2, r5, #0
	bl sub_0203C8B4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0203C50C
	b _0203C4C0
_0203C4EA:
	ldr r2, _0203C558 ; =0x02093060
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0203C50C
	cmp r4, r6
	bge _0203C50C
	ldrb r2, [r1, #0xd]
	ldr r1, _0203C55C ; =0x02092F60
	ldrb r2, [r1, r2]
	sub r1, r5, r0
	cmp r2, r1
	blo _0203C50C
	mov r1, #8
	lsl r2, r4, #3
	sub r0, r1, r0
	add r0, r2, r0
	b _0203C4C4
_0203C50C:
	add r4, r4, #1
	cmp r4, r6
	ble _0203C4CC
_0203C512:
	mov r4, #0
	ldr r0, [sp, #4]
	mvn r4, r4
	cmp r0, r4
	beq _0203C54A
	add r1, r0, #0
	ldr r0, [sp]
	cmp r1, r0
	bgt _0203C54A
	add r0, r7, #0
	add r2, r5, #0
	bl sub_0203C944
	cmp r0, #0
	bne _0203C536
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203C536:
	mov r3, #0x5f
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r5, #0
	lsl r3, r3, #2
	bl sub_0203CA14
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0203C54A:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C554: .word 0x02093160
_0203C558: .word 0x02093060
_0203C55C: .word 0x02092F60
	thumb_func_end sub_0203C484

	thumb_func_start sub_0203C560
sub_0203C560: ; 0x0203C560
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r3, r1, r2
	ldr r2, [sp]
	add r5, r0, #0
	sub r2, r3, r2
	lsr r7, r2, #3
	mov r2, #7
	lsr r0, r1, #3
	and r2, r1
	mov r1, #8
	sub r1, r1, r2
	add r2, r5, r0
	ldrb r3, [r2, #0xc]
	ldr r2, _0203C620 ; =0x02093060
	ldrb r2, [r2, r3]
	cmp r2, r1
	bge _0203C586
	add r1, r2, #0
_0203C586:
	cmp r0, r7
	bgt _0203C618
_0203C58A:
	cmp r1, #0
	beq _0203C606
	ldr r2, [sp]
	sub r3, r2, r1
	asr r2, r3, #2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	lsr r6, r3, #0x1f
	lsl r4, r3, #0x1d
	sub r4, r4, r6
	mov r3, #0x1d
	ror r4, r3
	add r3, r6, r4
	asr r2, r2, #3
	add r6, r0, #1
	cmp r2, #0
	beq _0203C5BA
_0203C5AC:
	add r4, r5, r6
	ldrb r4, [r4, #0xc]
	cmp r4, #0
	bne _0203C5BA
	add r6, r6, #1
	sub r2, r2, #1
	bne _0203C5AC
_0203C5BA:
	cmp r2, #0
	bne _0203C606
	mov r4, #0
	mvn r4, r4
	cmp r3, #0
	bne _0203C5C8
	b _0203C5D4
_0203C5C8:
	add r2, r5, r6
	ldrb r6, [r2, #0xc]
	ldr r2, _0203C624 ; =0x02092F60
	ldrb r2, [r2, r6]
	cmp r2, r3
	blt _0203C5DC
_0203C5D4:
	mov r2, #8
	sub r3, r2, r1
	lsl r2, r0, #3
	add r4, r3, r2
_0203C5DC:
	mov r6, #0
	mvn r6, r6
	cmp r4, r6
	beq _0203C606
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203C944
	cmp r0, #0
	bne _0203C5F6
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203C5F6:
	ldr r2, [sp]
	ldr r3, _0203C628 ; =0x000001DB
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203CA14
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203C606:
	add r0, r0, #1
	cmp r0, r7
	bgt _0203C614
	add r1, r5, r0
	ldrb r2, [r1, #0xc]
	ldr r1, _0203C620 ; =0x02093060
	ldrb r1, [r1, r2]
_0203C614:
	cmp r0, r7
	ble _0203C58A
_0203C618:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203C620: .word 0x02093060
_0203C624: .word 0x02092F60
_0203C628: .word 0x000001DB
	thumb_func_end sub_0203C560

	thumb_func_start sub_0203C62C
sub_0203C62C: ; 0x0203C62C
	push {r4, r5, r6, lr}
	add r5, r3, #0
	add r6, r0, #0
	cmp r2, r5
	bhs _0203C63C
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0203C63C:
	cmp r5, #8
	bhs _0203C646
	bl sub_0203C660
	b _0203C64A
_0203C646:
	bl sub_0203C730
_0203C64A:
	add r4, r0, #0
	mov r3, #0x23
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	lsl r3, r3, #4
	bl sub_0203CA14
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203C62C

	thumb_func_start sub_0203C660
sub_0203C660: ; 0x0203C660
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	sub r0, r1, r2
	add r0, r0, #1
	str r0, [sp, #4]
	asr r0, r0, #2
	lsr r2, r0, #0x1d
	ldr r0, [sp, #4]
	lsr r4, r1, #3
	add r2, r0, r2
	mov r0, #7
	str r0, [sp, #8]
	and r1, r0
	mov r0, #7
	str r0, [sp]
	sub r0, #8
	add r5, r3, #0
	asr r6, r2, #3
	str r0, [sp]
	cmp r1, #0
	beq _0203C6A8
	add r0, r7, r4
	ldrb r0, [r0, #0xc]
	add r2, r5, #0
	bl sub_0203C8F0
	ldr r1, [sp, #8]
	sub r1, #8
	str r1, [sp, #8]
	cmp r0, r1
	beq _0203C6A8
_0203C6A0:
	lsl r1, r4, #3
	add r0, r0, r1
_0203C6A4:
	str r0, [sp]
	b _0203C6F4
_0203C6A8:
	cmp r4, r6
	blt _0203C6F4
_0203C6AC:
	add r1, r7, r4
	ldrb r0, [r1, #0xc]
	ldr r2, _0203C724 ; =0x02093160
	ldrb r2, [r2, r0]
	cmp r2, r5
	blo _0203C6CA
	mov r1, #7
	add r2, r5, #0
	bl sub_0203C8F0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0203C6EE
	b _0203C6A0
_0203C6CA:
	ldr r2, _0203C728 ; =0x02092F60
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0203C6EE
	cmp r4, r6
	ble _0203C6EE
	ldrb r2, [r1, #0xb]
	ldr r1, _0203C72C ; =0x02093060
	sub r0, r5, r0
	ldrb r1, [r1, r2]
	cmp r1, r0
	blo _0203C6EE
	mov r1, #8
	sub r1, r1, r0
	sub r0, r4, #1
	lsl r0, r0, #3
	add r0, r1, r0
	b _0203C6A4
_0203C6EE:
	sub r4, r4, #1
	cmp r4, r6
	bge _0203C6AC
_0203C6F4:
	mov r4, #0
	ldr r0, [sp]
	mvn r4, r4
	cmp r0, r4
	beq _0203C71A
	add r1, r0, #0
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _0203C71A
	add r0, r7, #0
	add r2, r5, #0
	bl sub_0203C944
	cmp r0, #0
	bne _0203C714
	str r4, [sp]
_0203C714:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0203C71A:
	mov r0, #0
	mvn r0, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203C724: .word 0x02093160
_0203C728: .word 0x02092F60
_0203C72C: .word 0x02093060
	thumb_func_end sub_0203C660

	thumb_func_start sub_0203C730
sub_0203C730: ; 0x0203C730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	sub r2, r1, r2
	add r2, r2, #1
	mov ip, r2
	mov r4, #7
	lsr r2, r1, #3
	and r1, r4
	add r1, r1, #1
	str r1, [sp, #4]
	add r1, r0, r2
	ldrb r4, [r1, #0xc]
	ldr r1, _0203C7FC ; =0x02092F60
	str r3, [sp]
	ldrb r4, [r1, r4]
	mov r3, ip
	ldr r1, [sp, #4]
	lsr r3, r3, #3
	cmp r4, r1
	bge _0203C75A
	str r4, [sp, #4]
_0203C75A:
	cmp r2, r3
	blt _0203C7F4
_0203C75E:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0203C7E0
	ldr r4, [sp]
	sub r4, r4, r1
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	lsr r5, r4, #0x1f
	lsl r6, r4, #0x1d
	sub r6, r6, r5
	mov r4, #0x1d
	ror r6, r4
	asr r1, r1, #3
	add r6, r5, r6
	sub r4, r2, #1
	cmp r1, #0
	beq _0203C794
_0203C782:
	cmp r4, r3
	blt _0203C794
	add r5, r0, r4
	ldrb r5, [r5, #0xc]
	cmp r5, #0
	bne _0203C794
	sub r4, r4, #1
	sub r1, r1, #1
	bne _0203C782
_0203C794:
	cmp r1, #0
	bne _0203C7E0
	mov r7, #0
	mvn r7, r7
	cmp r6, #0
	bne _0203C7A6
	add r1, r4, #1
	lsl r7, r1, #3
	b _0203C7BE
_0203C7A6:
	cmp r4, r3
	blt _0203C7BE
	add r1, r0, r4
	ldrb r5, [r1, #0xc]
	ldr r1, _0203C800 ; =0x02093060
	ldrb r1, [r1, r5]
	cmp r1, r6
	blt _0203C7BE
	mov r1, #8
	sub r5, r1, r6
	lsl r1, r4, #3
	add r7, r5, r1
_0203C7BE:
	mov r4, #0
	mvn r4, r4
	cmp r7, r4
	beq _0203C7E0
	mov r1, ip
	cmp r7, r1
	blo _0203C7E0
	ldr r2, [sp]
	add r1, r7, #0
	bl sub_0203C944
	cmp r0, #0
	bne _0203C7DA
	add r7, r4, #0
_0203C7DA:
	add sp, #8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203C7E0:
	sub r2, r2, #1
	cmp r2, r3
	blt _0203C7F0
	add r1, r0, r2
	ldrb r4, [r1, #0xc]
	ldr r1, _0203C7FC ; =0x02092F60
	ldrb r1, [r1, r4]
	str r1, [sp, #4]
_0203C7F0:
	cmp r2, r3
	bge _0203C75E
_0203C7F4:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203C7FC: .word 0x02092F60
_0203C800: .word 0x02093060
	thumb_func_end sub_0203C730

	thumb_func_start sub_0203C804
sub_0203C804: ; 0x0203C804
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203C944
	cmp r0, #0
	bne _0203C818
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203C818:
	ldr r3, _0203C828 ; =0x00000301
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203CA14
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203C828: .word 0x00000301
	thumb_func_end sub_0203C804

	thumb_func_start sub_0203C82C
sub_0203C82C: ; 0x0203C82C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #7
	add r3, r1, #0
	and r1, r0
	lsr r0, r3, #3
	add r3, r1, r2
	cmp r3, #8
	bhi _0203C84A
	add r3, r4, #0
	add r3, #0xc
	add r0, r3, r0
	bl sub_0203C924
	b _0203C8A4
_0203C84A:
	mov r3, #8
	sub r6, r3, r1
	sub r3, r2, r6
	asr r1, r3, #2
	lsr r1, r1, #0x1d
	add r1, r3, r1
	asr r2, r1, #3
	add r7, r4, #0
	lsr r1, r3, #0x1f
	lsl r5, r3, #0x1d
	sub r5, r5, r1
	mov r3, #0x1d
	ror r5, r3
	add r7, #0xc
	add r5, r1, r5
	ldrb r1, [r7, r0]
	add r3, r0, #1
	mov ip, r1
	ldr r1, _0203C8AC ; =0x02092F55
	ldrb r1, [r1, r6]
	mov r6, ip
	mvn r1, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	and r1, r6
	sub r6, r2, #1
	strb r1, [r7, r0]
	cmp r2, #0
	beq _0203C890
	mov r1, #0
_0203C886:
	add r0, r4, r3
	add r3, r3, #1
	strb r1, [r0, #0xc]
	sub r6, r6, #1
	bhs _0203C886
_0203C890:
	ldr r2, _0203C8B0 ; =0x02092F4C
	add r1, r4, #0
	ldrb r2, [r2, r5]
	add r1, #0xc
	ldrb r0, [r1, r3]
	mvn r2, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	and r0, r2
	strb r0, [r1, r3]
_0203C8A4:
	add r0, r4, #0
	bl sub_0203C9F0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203C8AC: .word 0x02092F55
_0203C8B0: .word 0x02092F4C
	thumb_func_end sub_0203C82C

	thumb_func_start sub_0203C8B4
sub_0203C8B4: ; 0x0203C8B4
	push {r3, r4}
	cmp r2, #8
	bhi _0203C8E2
	ldr r3, _0203C8EC ; =0x02092F4C
	ldrb r3, [r3, r2]
	asr r3, r1
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	mov r3, #8
	sub r3, r3, r2
	cmp r1, r3
	bhi _0203C8E2
_0203C8CC:
	add r2, r0, #0
	tst r2, r4
	bne _0203C8D8
	add r0, r1, #0
	pop {r3, r4}
	bx lr
_0203C8D8:
	lsl r2, r4, #0x17
	add r1, r1, #1
	lsr r4, r2, #0x18
	cmp r1, r3
	bls _0203C8CC
_0203C8E2:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	nop
_0203C8EC: .word 0x02092F4C
	thumb_func_end sub_0203C8B4

	thumb_func_start sub_0203C8F0
sub_0203C8F0: ; 0x0203C8F0
	cmp r2, #8
	bhs _0203C918
	ldr r3, _0203C920 ; =0x02092F4C
	add r1, r1, #1
	sub r1, r1, r2
	ldrb r2, [r3, r2]
	asr r2, r1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r1, #0
	blt _0203C918
_0203C906:
	add r2, r0, #0
	tst r2, r3
	bne _0203C910
	add r0, r1, #0
	bx lr
_0203C910:
	lsl r2, r3, #0x19
	lsr r3, r2, #0x18
	sub r1, r1, #1
	bpl _0203C906
_0203C918:
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_0203C920: .word 0x02092F4C
	thumb_func_end sub_0203C8F0

	thumb_func_start sub_0203C924
sub_0203C924: ; 0x0203C924
	push {r3, r4}
	ldr r4, _0203C940 ; =0x02092F4C
	ldrb r3, [r0]
	ldrb r2, [r4, r2]
	asr r2, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	mvn r1, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	and r1, r3
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0203C940: .word 0x02092F4C
	thumb_func_end sub_0203C924

	thumb_func_start sub_0203C944
sub_0203C944: ; 0x0203C944
	push {r3, r4, r5, r6, r7, lr}
	add r3, r0, #0
	add r0, r1, #0
	ldrh r1, [r3]
	add r4, r0, r2
	cmp r4, r1
	bls _0203C956
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203C956:
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1d
	sub r4, r4, r5
	mov r1, #0x1d
	ror r4, r1
	add r4, r5, r4
	asr r5, r0, #2
	mov r1, #8
	lsr r5, r5, #0x1d
	add r5, r0, r5
	sub r1, r1, r4
	asr r0, r5, #3
	cmp r1, r2
	blo _0203C980
	ldr r1, _0203C9E4 ; =0x02092F4C
	mov r6, #0
	ldrb r1, [r1, r2]
	mov r2, #0
	add r5, r1, #0
	asr r5, r4
	b _0203C98C
_0203C980:
	ldr r4, _0203C9E8 ; =0x02092F55
	sub r2, r2, r1
	ldrb r5, [r4, r1]
	mov r1, #7
	lsr r6, r2, #3
	and r2, r1
_0203C98C:
	add r1, r3, #0
	add r1, #0xc
	ldrb r7, [r1, r0]
	add r4, r1, r0
	add r1, r5, #0
	tst r1, r7
	beq _0203C9B2
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0203C9AE
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0203C9EC
	ldrb r0, [r4]
	bl sub_0203C9EC
_0203C9AE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203C9B2:
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	orr r1, r7
	strb r1, [r4]
	add r1, r6, #0
	add r0, r0, #1
	sub r6, r6, #1
	cmp r1, #0
	beq _0203C9D0
	mov r4, #0xff
_0203C9C6:
	add r1, r3, r0
	add r0, r0, #1
	strb r4, [r1, #0xc]
	sub r6, r6, #1
	bhs _0203C9C6
_0203C9D0:
	cmp r2, #0
	beq _0203C9E0
	ldr r1, _0203C9E4 ; =0x02092F4C
	add r3, #0xc
	ldrb r4, [r3, r0]
	ldrb r1, [r1, r2]
	orr r1, r4
	strb r1, [r3, r0]
_0203C9E0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203C9E4: .word 0x02092F4C
_0203C9E8: .word 0x02092F55
	thumb_func_end sub_0203C944

	thumb_func_start sub_0203C9EC
sub_0203C9EC: ; 0x0203C9EC
	bx lr
	.align 2, 0
	thumb_func_end sub_0203C9EC

	thumb_func_start sub_0203C9F0
sub_0203C9F0: ; 0x0203C9F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0203CA12
	ldrh r0, [r5, #2]
	mov r4, #0
	cmp r0, #0
	ble _0203CA12
_0203CA02:
	add r0, r5, r4
	ldrb r0, [r0, #0xc]
	bl sub_0203C9EC
	ldrh r0, [r5, #2]
	add r4, r4, #1
	cmp r4, r0
	blt _0203CA02
_0203CA12:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C9F0

	thumb_func_start sub_0203CA14
sub_0203CA14: ; 0x0203CA14
	push {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203CA20
	bl sub_0203C9F0
_0203CA20:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203CA14

	thumb_func_start sub_0203CA24
sub_0203CA24: ; 0x0203CA24
	push {r4, r5}
	ldr r4, _0203CA48 ; =0x02093288
	mov r2, #0
	mov r1, #0
_0203CA2C:
	lsl r3, r1, #3
	add r5, r4, r3
	ldr r3, [r4, r3]
	tst r3, r0
	beq _0203CA3A
	ldr r3, [r5, #4]
	add r2, r2, r3
_0203CA3A:
	add r1, r1, #1
	cmp r1, #9
	blo _0203CA2C
	lsl r0, r2, #0xa
	pop {r4, r5}
	bx lr
	nop
_0203CA48: .word 0x02093288
	thumb_func_end sub_0203CA24

	thumb_func_start sub_0203CA4C
sub_0203CA4C: ; 0x0203CA4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r3, #0
	add r7, r2, #0
	str r0, [sp, #4]
	mov r1, #0x7a
	str r1, [sp]
	ldr r3, _0203CA98 ; =0x0209A998
	mov r1, #8
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0203CA24
	sub r7, r0, r5
	cmp r6, #1
	bne _0203CA7C
	ldr r0, [sp, #0x20]
	bl sub_0203CAB0
	b _0203CA7E
_0203CA7C:
	mov r0, #0x20
_0203CA7E:
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	add r0, r7, #0
	blx sub_0208D868
	ldr r1, [sp, #4]
	bl sub_0203C3E4
	str r0, [r4]
	strh r5, [r4, #6]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203CA98: .word 0x0209A998
	thumb_func_end sub_0203CA4C

	thumb_func_start sub_0203CA9C
sub_0203CA9C: ; 0x0203CA9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0203C448
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203CA9C

	thumb_func_start sub_0203CAB0
sub_0203CAB0: ; 0x0203CAB0
	push {r3, r4}
	ldr r2, _0203CAD4 ; =0x02093260
	mov r4, #0
_0203CAB6:
	lsl r3, r4, #3
	ldr r1, [r2, r3]
	cmp r0, r1
	bne _0203CAC6
	ldr r0, _0203CAD8 ; =0x02093264
	ldr r0, [r0, r3]
	pop {r3, r4}
	bx lr
_0203CAC6:
	add r4, r4, #1
	cmp r4, #5
	blo _0203CAB6
	mov r0, #0x20
	pop {r3, r4}
	bx lr
	nop
_0203CAD4: .word 0x02093260
_0203CAD8: .word 0x02093264
	thumb_func_end sub_0203CAB0

	thumb_func_start sub_0203CADC
sub_0203CADC: ; 0x0203CADC
	mov r1, #0
	mvn r1, r1
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203CADC

	thumb_func_start sub_0203CAE8
sub_0203CAE8: ; 0x0203CAE8
	mov r1, #0
	ldr r2, [r0]
	mvn r1, r1
	cmp r2, r1
	bne _0203CAFC
	ldr r0, [r0, #4]
	cmp r0, r1
	bne _0203CAFC
	mov r0, #1
	bx lr
_0203CAFC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203CAE8

	thumb_func_start sub_0203CB00
sub_0203CB00: ; 0x0203CB00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #4]
	add r7, r1, #0
	add r6, r2, #0
	str r0, [sp]
	ldr r1, [sp]
	add r0, r7, #0
	blx sub_0208D868
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	blx sub_0208D868
	cmp r1, #0
	beq _0203CB24
	add r4, r4, #1
_0203CB24:
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0203C450
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0203CB3C
	str r0, [r6]
	str r4, [r6, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203CB3C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203CB00

	thumb_func_start sub_0203CB40
sub_0203CB40: ; 0x0203CB40
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	bl sub_0203C82C
	add r0, r4, #0
	bl sub_0203CADC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203CB40

	thumb_func_start sub_0203CB58
sub_0203CB58: ; 0x0203CB58
	ldrh r2, [r0, #6]
	ldrh r0, [r0, #4]
	ldr r1, [r1]
	mul r0, r1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0203CB58

	thumb_func_start sub_0203CB64
sub_0203CB64: ; 0x0203CB64
	ldr r3, _0203CB70 ; =0x02141864
	str r0, [r3, #8]
	str r1, [r3, #4]
	str r2, [r3]
	bx lr
	nop
_0203CB70: .word 0x02141864
	thumb_func_end sub_0203CB64

	thumb_func_start sub_0203CB74
sub_0203CB74: ; 0x0203CB74
	ldr r1, _0203CB7C ; =0x02141864
	str r0, [r1, #0xc]
	bx lr
	nop
_0203CB7C: .word 0x02141864
	thumb_func_end sub_0203CB74

	thumb_func_start sub_0203CB80
sub_0203CB80: ; 0x0203CB80
	push {r3, lr}
	ldr r0, _0203CB90 ; =0x02141864
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203CB8C
	blx r0
_0203CB8C:
	pop {r3, pc}
	nop
_0203CB90: .word 0x02141864
	thumb_func_end sub_0203CB80

	thumb_func_start sub_0203CB94
sub_0203CB94: ; 0x0203CB94
	push {r0, r1, r2, r3}
	push {r3, lr}
	ldr r0, _0203CBAC ; =0x02141864
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0203CBA2
	blx r0
_0203CBA2:
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_0203CBAC: .word 0x02141864
	thumb_func_end sub_0203CB94

	thumb_func_start sub_0203CBB0
sub_0203CBB0: ; 0x0203CBB0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0203CC80 ; =0x04000208
	mov r6, #0
	ldrh r0, [r4]
	lsl r5, r4, #0x17
	strh r6, [r4]
	ldr r1, [r5]
	ldr r0, _0203CC84 ; =0xFFFFE0FF
	and r0, r1
	str r0, [r5]
	bl sub_02076C40
	mov r0, #1
	mov r7, #1
	bl sub_02076550
	add r4, #0xfc
	ldrh r1, [r4]
	ldr r0, _0203CC88 ; =0xFFFF7FFF
	mov r2, #0
	and r0, r1
	strh r0, [r4]
	mov r0, #1
	mov r1, #0
	bl sub_02074910
	ldr r4, _0203CC8C ; =0x04000050
	mov r1, #0
	add r0, r4, #0
	strh r6, [r4]
	add r0, #0x1c
	bl sub_02074970
	ldr r1, [r5]
	ldr r0, _0203CC90 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r5]
	ldr r2, [r5]
	ldr r1, _0203CC84 ; =0xFFFFE0FF
	lsr r0, r0, #0x11
	and r2, r1
	lsr r1, r4, #0x12
	orr r1, r2
	str r1, [r5]
	ldr r1, [r5]
	ldr r2, _0203CC94 ; =0xC7FFFFFF
	and r1, r2
	str r1, [r5]
	ldr r1, [r5]
	asr r2, r2, #3
	and r1, r2
	str r1, [r5]
	add r1, r4, #0
	sub r1, #0x48
	ldrh r3, [r1]
	mov r2, #0x43
	sub r4, #0x40
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r1]
	ldrh r3, [r1]
	mov r2, #3
	bic r3, r2
	strh r3, [r1]
	ldr r1, _0203CC98 ; =0x05000002
	str r6, [r4]
	strh r0, [r1]
	ldr r0, _0203CC9C ; =0x000060E1
	strh r0, [r1, #2]
	mov r0, #0
	bl sub_0204DCA4
	mov r0, #0x20
	mov r1, #8
	mov r2, #0x20
	mov r3, #0
	mov r4, #0x20
	bl sub_02046E28
	ldr r2, _0203CCA0 ; =0x02141874
	mov r1, #0xf
	str r0, [r2]
	strh r6, [r2, #4]
	strh r6, [r2, #6]
	strb r7, [r2, #8]
	strb r7, [r2, #9]
	ldrb r3, [r2, #0xa]
	bic r3, r1
	add r1, r3, #0
	orr r1, r7
	strb r1, [r2, #0xa]
	ldrb r3, [r2, #0xa]
	mov r1, #0xf0
	bic r3, r1
	add r1, r3, #0
	orr r1, r4
	strb r1, [r2, #0xa]
	mov r1, #2
	strb r6, [r2, #0xb]
	bl sub_0204713C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203CC80: .word 0x04000208
_0203CC84: .word 0xFFFFE0FF
_0203CC88: .word 0xFFFF7FFF
_0203CC8C: .word 0x04000050
_0203CC90: .word 0xFFFF1FFF
_0203CC94: .word 0xC7FFFFFF
_0203CC98: .word 0x05000002
_0203CC9C: .word 0x000060E1
_0203CCA0: .word 0x02141874
	thumb_func_end sub_0203CBB0

	thumb_func_start sub_0203CCA4
sub_0203CCA4: ; 0x0203CCA4
	push {r4, lr}
	ldr r1, _0203CCDC ; =0x02141874
	add r4, r0, #0
	bl sub_0204DDD4
	mov r3, #0
	ldrsb r0, [r4, r3]
	cmp r0, #0
	beq _0203CCCC
	add r0, r3, #0
	add r1, r3, #0
_0203CCBA:
	ldrsb r2, [r4, r1]
	add r4, r4, #1
	cmp r2, #0xa
	bne _0203CCC6
	mov r3, #1
	b _0203CCCC
_0203CCC6:
	ldrsb r2, [r4, r0]
	cmp r2, #0
	bne _0203CCBA
_0203CCCC:
	cmp r3, #0
	bne _0203CCD8
	ldr r0, _0203CCE0 ; =0x0209A9A0
	ldr r1, _0203CCDC ; =0x02141874
	bl sub_0204DDD4
_0203CCD8:
	pop {r4, pc}
	nop
_0203CCDC: .word 0x02141874
_0203CCE0: .word 0x0209A9A0
	thumb_func_end sub_0203CCA4

	thumb_func_start sub_0203CCE4
sub_0203CCE4: ; 0x0203CCE4
	push {r3, r4, r5, lr}
	bl sub_02075100
	mov r5, #0
	mov r4, #0
	add r2, r5, #0
_0203CCF0:
	add r3, r2, #0
_0203CCF2:
	lsl r1, r3, #1
	strh r5, [r0, r1]
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #0x20
	blt _0203CCF2
	add r4, r4, #1
	add r0, #0x40
	cmp r4, #8
	blt _0203CCF0
	ldr r0, _0203CD2C ; =0x02141874
	ldr r0, [r0]
	bl sub_02046EF4
	mov r4, #2
	lsl r4, r4, #0xc
	add r5, r0, #0
	add r1, r4, #0
	blx sub_0207B0AC
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02075B54
	bl sub_0207C774
	pop {r3, r4, r5, pc}
	nop
_0203CD2C: .word 0x02141874
	thumb_func_end sub_0203CCE4

	thumb_func_start sub_0203CD30
sub_0203CD30: ; 0x0203CD30
	ldr r0, _0203CD3C ; =sub_0203CBB0
	ldr r1, _0203CD40 ; =sub_0203CCA4
	ldr r2, _0203CD44 ; =sub_0203CCE4
	ldr r3, _0203CD48 ; =sub_0203CB64
	bx r3
	nop
_0203CD3C: .word sub_0203CBB0
_0203CD40: .word sub_0203CCA4
_0203CD44: .word sub_0203CCE4
_0203CD48: .word sub_0203CB64
	thumb_func_end sub_0203CD30

	thumb_func_start sub_0203CD4C
sub_0203CD4C: ; 0x0203CD4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r2, r5, r4
	add r1, r3, #0
	add r1, r1, r2
	lsl r7, r1, #3
	str r3, [sp, #4]
	mov r1, #0x6c
	add r7, #0x10
	str r1, [sp]
	ldr r3, _0203CDAC ; =0x0209A9A4
	add r1, r7, #0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r0, #0
	ldr r6, _0203CDB0 ; =0x02141880
	mov r0, #0
	str r1, [r6]
	add r2, r7, #0
	blx sub_02078658
	ldr r0, [r6]
	strb r5, [r0]
	ldr r0, [r6]
	strb r4, [r0, #1]
	ldr r1, [r6]
	ldr r0, [sp, #4]
	strb r0, [r1, #2]
	ldr r1, [r6]
	add r0, r1, #0
	add r0, #0x10
	str r0, [r1, #4]
	ldr r2, [r6]
	lsl r0, r5, #3
	ldr r1, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #8]
	ldr r2, [r6]
	lsl r0, r4, #3
	ldr r1, [r2, #8]
	add r0, r1, r0
	str r0, [r2, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203CDAC: .word 0x0209A9A4
_0203CDB0: .word 0x02141880
	thumb_func_end sub_0203CD4C

	thumb_func_start sub_0203CDB4
sub_0203CDB4: ; 0x0203CDB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #0
	mov r4, #0
	bl sub_020712E0
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203CDB4

	thumb_func_start sub_0203CDC8
sub_0203CDC8: ; 0x0203CDC8
	push {r4, r5, r6, lr}
	mov r1, #0
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	beq _0203CE0A
	bl sub_0203CF94
	add r6, r0, #0
	bl sub_0203CF3C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203CF64
	mov r1, #0
	cmp r0, #0
	ble _0203CE0A
_0203CDEC:
	lsl r2, r1, #3
	add r3, r4, r2
	ldr r2, [r3, #4]
	cmp r2, #1
	bne _0203CE04
	ldr r2, [r3]
	cmp r5, r2
	bne _0203CE04
	add r0, r3, #0
	bl sub_0203CDB4
	pop {r4, r5, r6, pc}
_0203CE04:
	add r1, r1, #1
	cmp r1, r0
	blt _0203CDEC
_0203CE0A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203CDC8

	thumb_func_start sub_0203CE0C
sub_0203CE0C: ; 0x0203CE0C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	add r5, r0, #0
	mvn r7, r7
	cmp r5, r7
	bne _0203CE1C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203CE1C:
	bl sub_0203CEA4
	cmp r0, #0
	bne _0203CE28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203CE28:
	add r0, r5, #0
	bl sub_0203CF94
	add r6, r0, #0
	bl sub_0203CF3C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203CF64
	add r2, r0, #0
	mov r3, #0
	cmp r2, #0
	ble _0203CE5C
_0203CE44:
	lsl r0, r3, #3
	add r1, r4, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0203CE56
	mov r0, #1
	str r0, [r1, #4]
	str r5, [r1]
	b _0203CE5C
_0203CE56:
	add r3, r3, #1
	cmp r3, r2
	blt _0203CE44
_0203CE5C:
	cmp r3, r2
	blt _0203CE6E
	ldr r0, _0203CE9C ; =0x0209A9B4
	ldr r2, _0203CEA0 ; =0x0209A9B8
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203CE6E:
	sub r4, r6, #1
	cmp r4, #1
	bhi _0203CE7E
	mov r0, #0
	mvn r0, r0
	bl sub_02072324
	add r7, r0, #0
_0203CE7E:
	mov r0, #0
	add r1, r5, #0
	bl sub_020712B0
	add r5, r0, #0
	cmp r4, #1
	bhi _0203CE92
	add r0, r7, #0
	bl sub_02072324
_0203CE92:
	mov r0, #0
	cmp r5, #0
	beq _0203CE9A
	mov r0, #1
_0203CE9A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203CE9C: .word 0x0209A9B4
_0203CEA0: .word 0x0209A9B8
	thumb_func_end sub_0203CE0C

	thumb_func_start sub_0203CEA4
sub_0203CEA4: ; 0x0203CEA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r1, sp, #0xc
	add r2, sp, #8
	add r4, r0, #0
	bl sub_0203CFD8
	cmp r0, #0
	bne _0203CEBC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203CEBC:
	add r0, r4, #0
	bl sub_0203CF94
	add r4, r0, #0
	bl sub_0203CF3C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0203CF64
	add r4, r0, #0
	mov r5, #0
	cmp r4, #0
	ble _0203CF2C
	add r7, sp, #4
_0203CEDA:
	lsl r0, r5, #3
	add r1, r6, r0
	ldr r0, [r1, #4]
	cmp r0, #1
	bne _0203CF26
	ldr r0, [r1]
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0203CFD8
	cmp r0, #1
	bne _0203CF26
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	cmp r2, r1
	blo _0203CF00
	ldr r0, [sp]
	cmp r2, r0
	blo _0203CF16
_0203CF00:
	ldr r3, [sp, #8]
	cmp r3, r1
	bls _0203CF0C
	ldr r0, [sp]
	cmp r3, r0
	bls _0203CF16
_0203CF0C:
	cmp r2, r1
	bhi _0203CF26
	ldr r0, [sp]
	cmp r3, r0
	blo _0203CF26
_0203CF16:
	ldr r0, _0203CF34 ; =0x0209A9B4
	ldr r2, _0203CF38 ; =0x0209A9B8
	mov r1, #0
	bl sub_0203CB80
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203CF26:
	add r5, r5, #1
	cmp r5, r4
	blt _0203CEDA
_0203CF2C:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203CF34: .word 0x0209A9B4
_0203CF38: .word 0x0209A9B8
	thumb_func_end sub_0203CEA4

	thumb_func_start sub_0203CF3C
sub_0203CF3C: ; 0x0203CF3C
	cmp r0, #0
	beq _0203CF48
	cmp r0, #1
	beq _0203CF50
	cmp r0, #2
	beq _0203CF58
_0203CF48:
	ldr r0, _0203CF60 ; =0x02141880
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bx lr
_0203CF50:
	ldr r0, _0203CF60 ; =0x02141880
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx lr
_0203CF58:
	ldr r0, _0203CF60 ; =0x02141880
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0203CF60: .word 0x02141880
	thumb_func_end sub_0203CF3C

	thumb_func_start sub_0203CF64
sub_0203CF64: ; 0x0203CF64
	cmp r0, #0
	beq _0203CF72
	cmp r0, #1
	beq _0203CF7A
	cmp r0, #2
	beq _0203CF82
	b _0203CF8A
_0203CF72:
	ldr r0, _0203CF90 ; =0x02141880
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
_0203CF7A:
	ldr r0, _0203CF90 ; =0x02141880
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	bx lr
_0203CF82:
	ldr r0, _0203CF90 ; =0x02141880
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	bx lr
_0203CF8A:
	mov r0, #0
	bx lr
	nop
_0203CF90: .word 0x02141880
	thumb_func_end sub_0203CF64

	thumb_func_start sub_0203CF94
sub_0203CF94: ; 0x0203CF94
	push {lr}
	sub sp, #0x2c
	add r2, r0, #0
	add r0, sp, #0
	mov r1, #0
	bl sub_02070F58
	mov r0, #2
	ldr r2, [sp, #4]
	lsl r0, r0, #0x18
	cmp r2, r0
	bhi _0203CFB8
	lsr r0, r0, #1
	cmp r2, r0
	blo _0203CFB8
	add sp, #0x2c
	mov r0, #1
	pop {pc}
_0203CFB8:
	mov r0, #1
	ldr r1, _0203CFD4 ; =0x02FE0000
	lsl r0, r0, #0xe
	add r0, r1, r0
	cmp r2, r0
	bhi _0203CFCE
	cmp r2, r1
	blo _0203CFCE
	add sp, #0x2c
	mov r0, #2
	pop {pc}
_0203CFCE:
	mov r0, #0
	add sp, #0x2c
	pop {pc}
	.align 2, 0
_0203CFD4: .word 0x02FE0000
	thumb_func_end sub_0203CF94

	thumb_func_start sub_0203CFD8
sub_0203CFD8: ; 0x0203CFD8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r3, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	add r2, r3, #0
	mov r6, #0
	bl sub_02070F58
	cmp r0, #0
	bne _0203CFF8
	add sp, #0x2c
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_0203CFF8:
	ldr r2, [sp, #4]
	str r2, [r5]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r4]
	mov r0, #1
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0203CFD8

	thumb_func_start sub_0203D00C
sub_0203D00C: ; 0x0203D00C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0x3a
	str r1, [sp]
	ldr r3, _0203D094 ; =0x0209A9BC
	mov r1, #0x44
	mov r2, #0
	add r6, r0, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x44
	add r4, r0, #0
	blx sub_020787A8
	add r0, r6, #0
	bl sub_0203DC44
	str r0, [r4]
	add r0, r6, #0
	bl sub_0203D6D8
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x3c
	strb r7, [r0]
	add r0, r4, #0
	mov r1, #0x3c
	add r0, #0x3d
	strb r1, [r0]
	ldr r0, _0203D098 ; =0x02141884
	mov r1, #5
	str r4, [r0]
	add r0, r4, #0
	add r0, #0x40
	strb r5, [r0]
	add r0, r4, #0
	add r0, #0x3f
	strb r1, [r0]
	cmp r5, #0
	bne _0203D072
	add r0, r7, #0
	add r1, sp, #8
	bl sub_0207F068
	add r0, r4, #0
	ldr r1, [sp, #8]
	add r0, #0x3b
	strb r1, [r0]
_0203D072:
	cmp r5, #1
	bne _0203D090
	mov r0, #0
	add r1, sp, #4
	bl sub_0207F068
	ldr r0, [sp, #4]
	add r4, #0x3b
	strb r0, [r4]
	mov r0, #0x10
	bl sub_0203D10C
	mov r0, #4
	bl sub_0203D254
_0203D090:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0203D094: .word 0x0209A9BC
_0203D098: .word 0x02141884
	thumb_func_end sub_0203D00C

	thumb_func_start sub_0203D09C
sub_0203D09C: ; 0x0203D09C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x3e
	strb r1, [r0]
	bl sub_0203D348
	bl sub_0203DD50
	bl sub_0203D8E4
	bl sub_0203D440
	add r0, r4, #0
	bl sub_0203D5F8
	bl sub_0203DF20
	mov r1, #0xc3
	lsl r1, r1, #2
	and r0, r1
	cmp r0, r1
	bne _0203D0EA
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _0203D0EA
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0203D0E4
	ldr r0, [r4, #0xc]
	blx r1
_0203D0E4:
	mov r0, #0
	bl sub_0203D4F8
_0203D0EA:
	pop {r4, pc}
	thumb_func_end sub_0203D09C

	thumb_func_start sub_0203D0EC
sub_0203D0EC: ; 0x0203D0EC
	ldr r0, _0203D0F4 ; =0x02141884
	ldr r3, _0203D0F8 ; =sub_0203D09C
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0203D0F4: .word 0x02141884
_0203D0F8: .word sub_0203D09C
	thumb_func_end sub_0203D0EC

	thumb_func_start sub_0203D0FC
sub_0203D0FC: ; 0x0203D0FC
	add r2, r0, #0
	add r2, #0x38
	ldrb r2, [r2]
	add r0, #0x38
	orr r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D0FC

	thumb_func_start sub_0203D10C
sub_0203D10C: ; 0x0203D10C
	add r1, r0, #0
	ldr r0, _0203D118 ; =0x02141884
	ldr r3, _0203D11C ; =sub_0203D0FC
	ldr r0, [r0]
	bx r3
	nop
_0203D118: .word 0x02141884
_0203D11C: .word sub_0203D0FC
	thumb_func_end sub_0203D10C

	thumb_func_start sub_0203D120
sub_0203D120: ; 0x0203D120
	add r2, r0, #0
	add r2, #0x38
	mvn r1, r1
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x18
	add r0, #0x38
	and r1, r2
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0203D120

	thumb_func_start sub_0203D134
sub_0203D134: ; 0x0203D134
	add r1, r0, #0
	ldr r0, _0203D140 ; =0x02141884
	ldr r3, _0203D144 ; =sub_0203D120
	ldr r0, [r0]
	bx r3
	nop
_0203D140: .word 0x02141884
_0203D144: .word sub_0203D120
	thumb_func_end sub_0203D134

	thumb_func_start sub_0203D148
sub_0203D148: ; 0x0203D148
	add r0, #0x38
	ldrb r0, [r0]
	tst r0, r1
	beq _0203D154
	mov r0, #1
	bx lr
_0203D154:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203D148

	thumb_func_start sub_0203D158
sub_0203D158: ; 0x0203D158
	add r1, r0, #0
	ldr r0, _0203D164 ; =0x02141884
	ldr r3, _0203D168 ; =sub_0203D148
	ldr r0, [r0]
	bx r3
	nop
_0203D164: .word 0x02141884
_0203D168: .word sub_0203D148
	thumb_func_end sub_0203D158

	thumb_func_start sub_0203D16C
sub_0203D16C: ; 0x0203D16C
	str r1, [r0, #0x14]
	str r2, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D16C

	thumb_func_start sub_0203D174
sub_0203D174: ; 0x0203D174
	add r3, r0, #0
	ldr r0, _0203D184 ; =0x02141884
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, [r0]
	ldr r3, _0203D188 ; =sub_0203D16C
	bx r3
	nop
_0203D184: .word 0x02141884
_0203D188: .word sub_0203D16C
	thumb_func_end sub_0203D174

	thumb_func_start sub_0203D18C
sub_0203D18C: ; 0x0203D18C
	str r1, [r0, #0x10]
	str r2, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D18C

	thumb_func_start sub_0203D194
sub_0203D194: ; 0x0203D194
	add r3, r0, #0
	ldr r0, _0203D1A4 ; =0x02141884
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, [r0]
	ldr r3, _0203D1A8 ; =sub_0203D18C
	bx r3
	nop
_0203D1A4: .word 0x02141884
_0203D1A8: .word sub_0203D18C
	thumb_func_end sub_0203D194

	thumb_func_start sub_0203D1AC
sub_0203D1AC: ; 0x0203D1AC
	ldr r2, _0203D1B8 ; =0x02141884
	ldr r3, [r2]
	str r0, [r3, #0x24]
	ldr r0, [r2]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0
_0203D1B8: .word 0x02141884
	thumb_func_end sub_0203D1AC

	thumb_func_start sub_0203D1BC
sub_0203D1BC: ; 0x0203D1BC
	str r1, [r0, #0x1c]
	str r2, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D1BC

	thumb_func_start sub_0203D1C4
sub_0203D1C4: ; 0x0203D1C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0203D204 ; =0x02141884
	add r4, r2, #0
	ldr r2, [r0]
	add r6, r1, #0
	add r0, r2, #0
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203D1EC
	ldr r1, [r2, #0x18]
	cmp r1, #0
	beq _0203D1E4
	ldr r0, [r2, #0x2c]
	blx r1
_0203D1E4:
	cmp r5, #0
	beq _0203D1EC
	add r0, r4, #0
	blx r5
_0203D1EC:
	ldr r7, _0203D204 ; =0x02141884
	add r1, r5, #0
	ldr r0, [r7]
	add r2, r4, #0
	bl sub_0203D1BC
	ldr r0, [r7]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0203D21C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203D204: .word 0x02141884
	thumb_func_end sub_0203D1C4

	thumb_func_start sub_0203D208
sub_0203D208: ; 0x0203D208
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0203D208

	thumb_func_start sub_0203D20C
sub_0203D20C: ; 0x0203D20C
	ldr r0, _0203D214 ; =0x02141884
	ldr r3, _0203D218 ; =sub_0203D208
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0203D214: .word 0x02141884
_0203D218: .word sub_0203D208
	thumb_func_end sub_0203D20C

	thumb_func_start sub_0203D21C
sub_0203D21C: ; 0x0203D21C
	str r1, [r0, #0x18]
	str r2, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D21C

	thumb_func_start sub_0203D224
sub_0203D224: ; 0x0203D224
	str r1, [r0, #0x20]
	str r2, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D224

	thumb_func_start sub_0203D22C
sub_0203D22C: ; 0x0203D22C
	add r3, r0, #0
	ldr r0, _0203D23C ; =0x02141884
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, [r0]
	ldr r3, _0203D240 ; =sub_0203D224
	bx r3
	nop
_0203D23C: .word 0x02141884
_0203D240: .word sub_0203D224
	thumb_func_end sub_0203D22C

	thumb_func_start sub_0203D244
sub_0203D244: ; 0x0203D244
	add r2, r0, #0
	add r2, #0x39
	ldrb r2, [r2]
	add r0, #0x39
	orr r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D244

	thumb_func_start sub_0203D254
sub_0203D254: ; 0x0203D254
	add r1, r0, #0
	ldr r0, _0203D260 ; =0x02141884
	ldr r3, _0203D264 ; =sub_0203D244
	ldr r0, [r0]
	bx r3
	nop
_0203D260: .word 0x02141884
_0203D264: .word sub_0203D244
	thumb_func_end sub_0203D254

	thumb_func_start sub_0203D268
sub_0203D268: ; 0x0203D268
	add r2, r0, #0
	add r2, #0x39
	mvn r1, r1
	lsl r1, r1, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x18
	add r0, #0x39
	and r1, r2
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0203D268

	thumb_func_start sub_0203D27C
sub_0203D27C: ; 0x0203D27C
	add r1, r0, #0
	ldr r0, _0203D288 ; =0x02141884
	ldr r3, _0203D28C ; =sub_0203D268
	ldr r0, [r0]
	bx r3
	nop
_0203D288: .word 0x02141884
_0203D28C: .word sub_0203D268
	thumb_func_end sub_0203D27C

	thumb_func_start sub_0203D290
sub_0203D290: ; 0x0203D290
	add r0, #0x39
	ldrb r0, [r0]
	tst r0, r1
	beq _0203D29C
	mov r0, #1
	bx lr
_0203D29C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203D290

	thumb_func_start sub_0203D2A0
sub_0203D2A0: ; 0x0203D2A0
	add r1, r0, #0
	ldr r0, _0203D2AC ; =0x02141884
	ldr r3, _0203D2B0 ; =sub_0203D290
	ldr r0, [r0]
	bx r3
	nop
_0203D2AC: .word 0x02141884
_0203D2B0: .word sub_0203D290
	thumb_func_end sub_0203D2A0

	thumb_func_start sub_0203D2B4
sub_0203D2B4: ; 0x0203D2B4
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D2B4

	thumb_func_start sub_0203D2BC
sub_0203D2BC: ; 0x0203D2BC
	add r3, r0, #0
	ldr r0, _0203D2CC ; =0x02141884
	add r2, r1, #0
	add r1, r3, #0
	ldr r0, [r0]
	ldr r3, _0203D2D0 ; =sub_0203D2B4
	bx r3
	nop
_0203D2CC: .word 0x02141884
_0203D2D0: .word sub_0203D2B4
	thumb_func_end sub_0203D2BC

	thumb_func_start sub_0203D2D4
sub_0203D2D4: ; 0x0203D2D4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0203D2D4

	thumb_func_start sub_0203D2D8
sub_0203D2D8: ; 0x0203D2D8
	push {r3, lr}
	ldr r0, _0203D2EC ; =0x02141884
	ldr r0, [r0]
	cmp r0, #0
	bne _0203D2E6
	bl sub_0207C774
_0203D2E6:
	ldr r0, _0203D2EC ; =0x02141884
	ldr r0, [r0]
	pop {r3, pc}
	.align 2, 0
_0203D2EC: .word 0x02141884
	thumb_func_end sub_0203D2D8

	thumb_func_start sub_0203D2F0
sub_0203D2F0: ; 0x0203D2F0
	push {r3, lr}
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0203D2FC
	ldr r0, [r0, #0x28]
	blx r1
_0203D2FC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203D2F0

	thumb_func_start sub_0203D300
sub_0203D300: ; 0x0203D300
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0203D30C
	ldr r0, [r0, #0x28]
	blx r1
_0203D30C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203D300

	thumb_func_start sub_0203D310
sub_0203D310: ; 0x0203D310
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _0203D324
	ldr r0, [r4, #0x2c]
	blx r1
	mov r0, #1
	add r4, #0x41
	strb r0, [r4]
_0203D324:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203D310

	thumb_func_start sub_0203D328
sub_0203D328: ; 0x0203D328
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0203D344
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203D344
	ldr r0, [r4, #0x2c]
	blx r1
	mov r0, #0
	add r4, #0x41
	strb r0, [r4]
_0203D344:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203D328

	thumb_func_start sub_0203D348
sub_0203D348: ; 0x0203D348
	push {r3, lr}
	sub sp, #8
	ldr r0, _0203D3AC ; =0x02FFFC3C
	mov r1, #0x96
	ldr r0, [r0]
	lsl r1, r1, #2
	blx sub_0208D868
	cmp r1, #1
	bne _0203D3A6
	bl sub_0207AC8C
	cmp r0, #0
	beq _0203D37E
	add r0, sp, #0
	bl sub_0207F040
	cmp r0, #0
	bne _0203D3A6
	add r0, sp, #0
	ldrh r1, [r0]
	ldr r0, _0203D3B0 ; =0x02141884
	add sp, #8
	ldr r0, [r0]
	add r0, #0x3f
	strb r1, [r0]
	pop {r3, pc}
_0203D37E:
	add r0, sp, #4
	bl sub_0207F018
	cmp r0, #0
	bne _0203D3A6
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0203D39C
	ldr r0, _0203D3B0 ; =0x02141884
	mov r1, #5
	ldr r0, [r0]
	add sp, #8
	add r0, #0x3f
	strb r1, [r0]
	pop {r3, pc}
_0203D39C:
	ldr r0, _0203D3B0 ; =0x02141884
	mov r1, #1
	ldr r0, [r0]
	add r0, #0x3f
	strb r1, [r0]
_0203D3A6:
	add sp, #8
	pop {r3, pc}
	nop
_0203D3AC: .word 0x02FFFC3C
_0203D3B0: .word 0x02141884
	thumb_func_end sub_0203D348

	thumb_func_start sub_0203D3B4
sub_0203D3B4: ; 0x0203D3B4
	ldr r0, _0203D3CC ; =0x02FFFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _0203D3C6
	mov r0, #1
	bx lr
_0203D3C6:
	mov r0, #0
	bx lr
	nop
_0203D3CC: .word 0x02FFFFA8
	thumb_func_end sub_0203D3B4

	thumb_func_start sub_0203D3D0
sub_0203D3D0: ; 0x0203D3D0
	push {r3, lr}
	bl sub_0203D5E8
	cmp r0, #2
	bgt _0203D3DE
	mov r0, #1
	pop {r3, pc}
_0203D3DE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203D3D0

	thumb_func_start sub_0203D3E4
sub_0203D3E4: ; 0x0203D3E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0203D3FC
	bl sub_0203D3D0
	cmp r0, #0
	beq _0203D3FC
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x20]
	blx r1
_0203D3FC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203D3E4

	thumb_func_start sub_0203D400
sub_0203D400: ; 0x0203D400
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x38
	ldrb r1, [r1]
	cmp r1, #0
	beq _0203D410
	mov r0, #1
	pop {r3, pc}
_0203D410:
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _0203D41C
	ldr r0, [r0, #0x34]
	blx r1
	pop {r3, pc}
_0203D41C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203D400

	thumb_func_start sub_0203D420
sub_0203D420: ; 0x0203D420
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xfa
	add r5, r0, #0
	mov r4, #0
	mov r7, #2
	lsl r6, r6, #2
_0203D42C:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207EF0C
	cmp r0, #0
	beq _0203D43E
	add r4, r4, #1
	cmp r4, r6
	blt _0203D42C
_0203D43E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D420

	thumb_func_start sub_0203D440
sub_0203D440: ; 0x0203D440
	push {r3, r4, r5, lr}
	bl sub_0203D2D8
	ldr r1, _0203D4F4 ; =0x02FFFFA8
	add r5, r0, #0
	ldrh r2, [r1]
	mov r1, #2
	lsl r1, r1, #0xe
	and r1, r2
	asr r1, r1, #0xf
	beq _0203D4CA
	bl sub_0203D400
	cmp r0, #0
	bne _0203D4A4
	bl sub_0203DB7C
	add r0, r5, #0
	bl sub_0203D2F0
	mov r0, #0xc
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_0207F17C
	add r0, r5, #0
	bl sub_0203D3E4
	add r0, r5, #0
	bl sub_0203D328
	add r0, r5, #0
	bl sub_0203D300
	bl sub_0203DB44
	add r0, r5, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203D4F0
	add r0, r5, #0
	add r0, #0x43
	add r5, #0x3b
	strb r4, [r0]
	ldrb r0, [r5]
	bl sub_0203D420
	pop {r3, r4, r5, pc}
_0203D4A4:
	add r0, r5, #0
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _0203D4F0
	add r0, r5, #0
	mov r1, #1
	add r0, #0x43
	strb r1, [r0]
	mov r0, #0
	bl sub_0203D420
	add r0, r5, #0
	bl sub_0203D310
	add r0, r5, #0
	bl sub_0203D2F0
	pop {r3, r4, r5, pc}
_0203D4CA:
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203D4F0
	add r0, r5, #0
	mov r1, #0
	add r0, #0x43
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3b
	ldrb r0, [r0]
	bl sub_0203D420
	add r0, r5, #0
	bl sub_0203D300
	add r0, r5, #0
	bl sub_0203D328
_0203D4F0:
	pop {r3, r4, r5, pc}
	nop
_0203D4F4: .word 0x02FFFFA8
	thumb_func_end sub_0203D440

	thumb_func_start sub_0203D4F8
sub_0203D4F8: ; 0x0203D4F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203D2D8
	add r4, r0, #0
	ldr r0, _0203D54C ; =0x0400006C
	mov r1, #0x10
	bl sub_02074970
	ldr r0, _0203D550 ; =0x0400106C
	mov r1, #0x10
	bl sub_02074970
	mov r0, #0
	bl sub_02042860
	mov r6, #1
_0203D51A:
	bl sub_02042AB8
	cmp r0, #0
	beq _0203D53A
	bl sub_0206F890
	cmp r0, #0
	beq _0203D53A
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	bl sub_0203D420
	add r0, r5, #0
	blx sub_0207C29C
_0203D53A:
	add r0, r6, #0
	add r1, r6, #0
	blx sub_02079BB0
	bl sub_020428E0
	bl sub_0204DFD4
	b _0203D51A
	.align 2, 0
_0203D54C: .word 0x0400006C
_0203D550: .word 0x0400106C
	thumb_func_end sub_0203D4F8

	thumb_func_start sub_0203D554
sub_0203D554: ; 0x0203D554
	ldr r0, _0203D560 ; =0x02141884
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bx lr
	nop
_0203D560: .word 0x02141884
	thumb_func_end sub_0203D554

	thumb_func_start sub_0203D564
sub_0203D564: ; 0x0203D564
	ldr r1, _0203D570 ; =0x02141884
	ldr r1, [r1]
	add r1, #0x3c
	strb r0, [r1]
	bx lr
	nop
_0203D570: .word 0x02141884
	thumb_func_end sub_0203D564

	thumb_func_start sub_0203D574
sub_0203D574: ; 0x0203D574
	mov r1, #0
	add r0, #0x3e
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0203D574

	thumb_func_start sub_0203D57C
sub_0203D57C: ; 0x0203D57C
	ldr r0, _0203D588 ; =0x02141884
	ldr r0, [r0]
	add r0, #0x3d
	strb r1, [r0]
	bx lr
	nop
_0203D588: .word 0x02141884
	thumb_func_end sub_0203D57C

	thumb_func_start sub_0203D58C
sub_0203D58C: ; 0x0203D58C
	add r0, #0x3d
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D58C

	thumb_func_start sub_0203D594
sub_0203D594: ; 0x0203D594
	add r1, r0, #0
	ldr r0, _0203D5A0 ; =0x02141884
	ldr r3, _0203D5A4 ; =sub_0203D57C
	ldr r0, [r0]
	bx r3
	nop
_0203D5A0: .word 0x02141884
_0203D5A4: .word sub_0203D57C
	thumb_func_end sub_0203D594

	thumb_func_start sub_0203D5A8
sub_0203D5A8: ; 0x0203D5A8
	ldr r0, _0203D5B0 ; =0x02141884
	ldr r3, _0203D5B4 ; =sub_0203D58C
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0203D5B0: .word 0x02141884
_0203D5B4: .word sub_0203D58C
	thumb_func_end sub_0203D5A8

	thumb_func_start sub_0203D5B8
sub_0203D5B8: ; 0x0203D5B8
	ldr r0, _0203D5C0 ; =0x02141884
	ldr r3, _0203D5C4 ; =sub_0203D574
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0203D5C0: .word 0x02141884
_0203D5C4: .word sub_0203D574
	thumb_func_end sub_0203D5B8

	thumb_func_start sub_0203D5C8
sub_0203D5C8: ; 0x0203D5C8
	push {r4, lr}
	ldr r4, _0203D5E4 ; =0x02141884
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_0203D57C
	ldr r0, [r4]
	bl sub_0203DF78
	ldr r0, [r4]
	bl sub_0203DBB4
	pop {r4, pc}
	nop
_0203D5E4: .word 0x02141884
	thumb_func_end sub_0203D5C8

	thumb_func_start sub_0203D5E8
sub_0203D5E8: ; 0x0203D5E8
	ldr r0, _0203D5F4 ; =0x02141884
	ldr r0, [r0]
	add r0, #0x3f
	ldrb r0, [r0]
	bx lr
	nop
_0203D5F4: .word 0x02141884
	thumb_func_end sub_0203D5E8

	thumb_func_start sub_0203D5F8
sub_0203D5F8: ; 0x0203D5F8
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _0203D658 ; =0x02141884
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _0203D654
	add r0, sp, #0x10
	add r1, sp, #4
	blx r2
	cmp r0, #0
	beq _0203D654
	add r5, sp, #4
	ldrh r1, [r5, #0xc]
	ldrh r2, [r5]
	add r0, r4, #0
	bl sub_0203DF90
	ldrh r1, [r5, #0xe]
	ldrh r2, [r5, #2]
	add r0, r4, #0
	bl sub_0203DFA0
	ldrh r1, [r5, #0x10]
	ldrh r2, [r5, #4]
	add r0, r4, #0
	bl sub_0203DFB0
	ldrh r0, [r5, #8]
	str r0, [sp]
	ldrh r1, [r5, #0x12]
	ldrh r2, [r5, #0x14]
	ldrh r3, [r5, #6]
	add r0, r4, #0
	bl sub_0203DBEC
	ldrb r1, [r5, #0x16]
	ldrb r2, [r5, #0xa]
	add r0, r4, #0
	bl sub_0203DC14
	ldrb r1, [r5, #0x17]
	ldrb r2, [r5, #0xb]
	add r0, r4, #0
	bl sub_0203DC2C
_0203D654:
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_0203D658: .word 0x02141884
	thumb_func_end sub_0203D5F8

	thumb_func_start sub_0203D65C
sub_0203D65C: ; 0x0203D65C
	ldr r0, _0203D664 ; =0x0214188C
	ldr r0, [r0]
	bx lr
	nop
_0203D664: .word 0x0214188C
	thumb_func_end sub_0203D65C

	thumb_func_start sub_0203D668
sub_0203D668: ; 0x0203D668
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D65C
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203D67E
	add r0, #0x64
	ldrh r0, [r0]
	pop {r4, pc}
_0203D67E:
	add r0, #0x5c
	ldrh r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0203D668

	thumb_func_start sub_0203D684
sub_0203D684: ; 0x0203D684
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D65C
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203D69A
	add r0, #0x66
	ldrh r0, [r0]
	pop {r4, pc}
_0203D69A:
	add r0, #0x5e
	ldrh r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0203D684

	thumb_func_start sub_0203D6A0
sub_0203D6A0: ; 0x0203D6A0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D65C
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203D6B6
	add r0, #0x6a
	ldrh r0, [r0]
	pop {r4, pc}
_0203D6B6:
	add r0, #0x62
	ldrh r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0203D6A0

	thumb_func_start sub_0203D6BC
sub_0203D6BC: ; 0x0203D6BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D65C
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203D6D2
	add r0, #0x68
	ldrh r0, [r0]
	pop {r4, pc}
_0203D6D2:
	add r0, #0x60
	ldrh r0, [r0]
	pop {r4, pc}
	thumb_func_end sub_0203D6BC

	thumb_func_start sub_0203D6D8
sub_0203D6D8: ; 0x0203D6D8
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x83
	str r1, [sp]
	ldr r3, _0203D748 ; =0x0209A9C4
	mov r1, #0x7c
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x7c
	blx sub_020787A8
	add r0, r4, #0
	add r0, #0x58
	strh r5, [r0]
	add r0, r4, #0
	add r0, #0x5a
	strh r5, [r0]
	bl sub_0207E13C
	add r5, sp, #4
	add r0, r5, #0
	bl sub_0207E180
	cmp r0, #1
	bne _0203D714
	b _0203D726
_0203D714:
	ldr r1, _0203D74C ; =0x000002AE
	add r0, sp, #4
	strh r1, [r0]
	ldr r1, _0203D750 ; =0x0000058C
	strh r1, [r0, #2]
	ldr r1, _0203D754 ; =0x00000E25
	strh r1, [r0, #4]
	ldr r1, _0203D758 ; =0x00001208
	strh r1, [r0, #6]
_0203D726:
	add r0, r5, #0
	bl sub_0207E1FC
	add r0, r4, #0
	mov r1, #4
	add r0, #0x75
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x76
	strb r1, [r0]
	ldr r0, _0203D75C ; =0x0214188C
	str r4, [r0]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0203D748: .word 0x0209A9C4
_0203D74C: .word 0x000002AE
_0203D750: .word 0x0000058C
_0203D754: .word 0x00000E25
_0203D758: .word 0x00001208
_0203D75C: .word 0x0214188C
	thumb_func_end sub_0203D6D8

	thumb_func_start sub_0203D760
sub_0203D760: ; 0x0203D760
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r6, #0
	bl sub_0203D65C
	add r4, r0, #0
	bne _0203D772
	b _0203D8DC
_0203D772:
	ldr r1, _0203D8E0 ; =0x02FFFFA8
	ldrh r2, [r1]
	mov r1, #2
	lsl r1, r1, #0xe
	and r1, r2
	asr r1, r1, #0xf
	beq _0203D78C
	add r1, r6, #0
	mov r2, #0x7c
	blx sub_020787A8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0203D78C:
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _0203D7CA
	add r5, r6, #0
	bl sub_0207E29C
	add r7, sp, #0xc
	add r0, r7, #0
	bl sub_0207E2FC
	cmp r0, #0
	beq _0203D7D0
_0203D7A6:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x20
	blo _0203D7BA
	mov r1, #3
	add r0, sp, #4
	mov r6, #1
	strh r1, [r0, #6]
	b _0203D7D0
_0203D7BA:
	bl sub_0207E29C
	add r0, r7, #0
	bl sub_0207E2FC
	cmp r0, #0
	bne _0203D7A6
	b _0203D7D0
_0203D7CA:
	add r0, sp, #0xc
	bl sub_0207E43C
_0203D7D0:
	cmp r6, #0
	bne _0203D7DC
	add r0, sp, #4
	add r1, sp, #0xc
	bl sub_0207E694
_0203D7DC:
	add r1, sp, #4
	ldrh r2, [r1, #6]
	cmp r2, #0
	bne _0203D7F6
	ldrh r2, [r1]
	add r0, r4, #0
	add r0, #0x5c
	strh r2, [r0]
_0203D7EC:
	ldrh r1, [r1, #2]
	add r0, r4, #0
	add r0, #0x5e
_0203D7F2:
	strh r1, [r0]
	b _0203D81A
_0203D7F6:
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	cmp r0, #0
	beq _0203D816
	cmp r2, #1
	beq _0203D80C
	cmp r2, #2
	beq _0203D80E
	cmp r2, #3
	b _0203D81A
_0203D80C:
	b _0203D7EC
_0203D80E:
	add r0, r4, #0
	ldrh r1, [r1]
	add r0, #0x5c
	b _0203D7F2
_0203D816:
	mov r0, #0
	strh r0, [r1, #4]
_0203D81A:
	add r0, r4, #0
	add r1, sp, #4
	add r0, #0x62
	ldrh r2, [r1, #4]
	ldrh r0, [r0]
	eor r0, r2
	and r2, r0
	add r0, r4, #0
	add r0, #0x60
	strh r2, [r0]
	add r0, r4, #0
	ldrh r1, [r1, #4]
	add r0, #0x62
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x60
	ldrh r0, [r0]
	orr r1, r0
	add r0, r4, #0
	add r0, #0x70
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x62
	ldrh r0, [r0]
	orr r1, r0
	add r0, r4, #0
	add r0, #0x72
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x5e
	ldrh r1, [r0]
	cmp r1, #0
	beq _0203D86E
	add r0, r4, #0
	add r0, #0x6e
	strh r1, [r0]
_0203D86E:
	add r0, r4, #0
	add r0, #0x5c
	ldrh r1, [r0]
	cmp r1, #0
	beq _0203D87E
	add r0, r4, #0
	add r0, #0x6c
	strh r1, [r0]
_0203D87E:
	ldr r0, [sp]
	add r0, #0x3e
	str r0, [sp]
	ldrb r0, [r0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0203D8DC
	add r0, r4, #0
	add r0, #0x6c
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x64
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x66
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x6a
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x6c
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6e
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	strh r1, [r0]
	add r4, #0x72
	strh r1, [r4]
_0203D8DC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0203D8E0: .word 0x02FFFFA8
	thumb_func_end sub_0203D760

	thumb_func_start sub_0203D8E4
sub_0203D8E4: ; 0x0203D8E4
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203D760
	pop {r3, pc}
	thumb_func_end sub_0203D8E4

	thumb_func_start sub_0203D8F0
sub_0203D8F0: ; 0x0203D8F0
	push {r3, r4}
	ldrb r3, [r0, #1]
	sub r4, r3, r1
	ldrb r1, [r0, #2]
	sub r3, r1, r2
	ldrb r2, [r0, #3]
	add r1, r4, #0
	add r0, r3, #0
	mul r1, r4
	mul r0, r3
	add r1, r1, r0
	add r0, r2, #0
	mul r0, r2
	cmp r1, r0
	bhs _0203D914
	mov r0, #1
	pop {r3, r4}
	bx lr
_0203D914:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D8F0

	thumb_func_start sub_0203D91C
sub_0203D91C: ; 0x0203D91C
	push {r3, r4}
	ldrb r4, [r0, #2]
	sub r3, r1, r4
	ldrb r1, [r0, #3]
	sub r1, r1, r4
	cmp r3, r1
	bhi _0203D93C
	ldrb r3, [r0]
	ldrb r0, [r0, #1]
	sub r1, r2, r3
	sub r0, r0, r3
	cmp r1, r0
	bhi _0203D93C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0203D93C:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0203D91C

	thumb_func_start sub_0203D944
sub_0203D944: ; 0x0203D944
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	cmp r0, #0xff
	beq _0203D98E
_0203D954:
	lsl r1, r4, #2
	ldrb r0, [r5, r1]
	cmp r0, #0xfd
	beq _0203D984
	cmp r0, #0xfe
	bne _0203D972
	add r0, r5, r1
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0203D8F0
	cmp r0, #0
	beq _0203D984
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203D972:
	add r0, r5, r1
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0203D91C
	cmp r0, #0
	beq _0203D984
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203D984:
	add r4, r4, #1
	lsl r0, r4, #2
	ldrb r0, [r5, r0]
	cmp r0, #0xff
	bne _0203D954
_0203D98E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203D944

	thumb_func_start sub_0203D994
sub_0203D994: ; 0x0203D994
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D65C
	add r0, r5, #0
	bl sub_0203D6A0
	cmp r0, #0
	beq _0203D9C2
	add r0, r5, #0
	bl sub_0203D668
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203D684
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203D944
	pop {r4, r5, r6, pc}
_0203D9C2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203D994

	thumb_func_start sub_0203D9C8
sub_0203D9C8: ; 0x0203D9C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D2D8
	add r1, r4, #0
	bl sub_0203D994
	pop {r4, pc}
	thumb_func_end sub_0203D9C8

	thumb_func_start sub_0203D9D8
sub_0203D9D8: ; 0x0203D9D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D65C
	add r0, r5, #0
	bl sub_0203D6BC
	cmp r0, #0
	beq _0203DA06
	add r0, r5, #0
	bl sub_0203D668
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203D684
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0203D944
	pop {r4, r5, r6, pc}
_0203DA06:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203D9D8

	thumb_func_start sub_0203DA0C
sub_0203DA0C: ; 0x0203DA0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D2D8
	add r1, r4, #0
	bl sub_0203D9D8
	pop {r4, pc}
	thumb_func_end sub_0203DA0C

	thumb_func_start sub_0203DA1C
sub_0203DA1C: ; 0x0203DA1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D65C
	add r0, r4, #0
	bl sub_0203D6A0
	pop {r4, pc}
	thumb_func_end sub_0203DA1C

	thumb_func_start sub_0203DA2C
sub_0203DA2C: ; 0x0203DA2C
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DA1C
	pop {r3, pc}
	thumb_func_end sub_0203DA2C

	thumb_func_start sub_0203DA38
sub_0203DA38: ; 0x0203DA38
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D65C
	add r0, r4, #0
	bl sub_0203D6BC
	pop {r4, pc}
	thumb_func_end sub_0203DA38

	thumb_func_start sub_0203DA48
sub_0203DA48: ; 0x0203DA48
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DA38
	pop {r3, pc}
	thumb_func_end sub_0203DA48

	thumb_func_start sub_0203DA54
sub_0203DA54: ; 0x0203DA54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203D65C
	add r0, r5, #0
	bl sub_0203D6A0
	cmp r0, #0
	beq _0203DA7E
	add r0, r5, #0
	bl sub_0203D668
	str r0, [r4]
	add r0, r5, #0
	bl sub_0203D684
	str r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203DA7E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203DA54

	thumb_func_start sub_0203DA84
sub_0203DA84: ; 0x0203DA84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D2D8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203DA54
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DA84

	thumb_func_start sub_0203DA98
sub_0203DA98: ; 0x0203DA98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203D65C
	add r0, r5, #0
	bl sub_0203D6BC
	cmp r0, #0
	beq _0203DAC2
	add r0, r5, #0
	bl sub_0203D668
	str r0, [r4]
	add r0, r5, #0
	bl sub_0203D684
	str r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203DAC2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0203DA98

	thumb_func_start sub_0203DAC8
sub_0203DAC8: ; 0x0203DAC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D2D8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203DA98
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DAC8

	thumb_func_start sub_0203DADC
sub_0203DADC: ; 0x0203DADC
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, _0203DAE8 ; =sub_0203D944
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bx r3
	.align 2, 0
_0203DAE8: .word sub_0203D944
	thumb_func_end sub_0203DADC

	thumb_func_start sub_0203DAEC
sub_0203DAEC: ; 0x0203DAEC
	push {r3, lr}
	add r0, #0x58
	ldrh r0, [r0]
	cmp r0, #0
	bne _0203DAFA
	mov r0, #1
	pop {r3, pc}
_0203DAFA:
	bl sub_0207E3D8
	mov r0, #4
	bl sub_0207E740
	mov r0, #4
	bl sub_0207E750
	cmp r0, #0
	beq _0203DB12
	mov r0, #2
	pop {r3, pc}
_0203DB12:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203DAEC

	thumb_func_start sub_0203DB18
sub_0203DB18: ; 0x0203DB18
	push {r4, lr}
	bl sub_0203D65C
	add r4, r0, #0
	beq _0203DB40
	add r1, r4, #0
	add r1, #0x5a
	ldrh r1, [r1]
	cmp r1, #0
	beq _0203DB40
	add r1, r4, #0
	add r1, #0x58
	ldrh r1, [r1]
	cmp r1, #0
	beq _0203DB40
	bl sub_0203DB88
	mov r0, #0
	add r4, #0x5a
	strh r0, [r4]
_0203DB40:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203DB18

	thumb_func_start sub_0203DB44
sub_0203DB44: ; 0x0203DB44
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DB18
	pop {r3, pc}
	thumb_func_end sub_0203DB44

	thumb_func_start sub_0203DB50
sub_0203DB50: ; 0x0203DB50
	push {r4, lr}
	bl sub_0203D65C
	add r4, r0, #0
	beq _0203DB78
	add r1, r4, #0
	add r1, #0x5a
	ldrh r1, [r1]
	cmp r1, #1
	beq _0203DB78
	add r1, r4, #0
	add r1, #0x58
	ldrh r1, [r1]
	cmp r1, #0
	beq _0203DB78
	bl sub_0203DAEC
	mov r0, #1
	add r4, #0x5a
	strh r0, [r4]
_0203DB78:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203DB50

	thumb_func_start sub_0203DB7C
sub_0203DB7C: ; 0x0203DB7C
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DB50
	pop {r3, pc}
	thumb_func_end sub_0203DB7C

	thumb_func_start sub_0203DB88
sub_0203DB88: ; 0x0203DB88
	push {r4, lr}
	add r2, r0, #0
	add r1, r2, #0
	add r1, #0x75
	ldrb r1, [r1]
	mov r0, #0
	add r2, #0xc
	mov r3, #9
	bl sub_0207E32C
	mov r0, #2
	mov r4, #2
	bl sub_0207E740
	mov r0, #2
	bl sub_0207E750
	cmp r0, #0
	bne _0203DBB0
	mov r4, #1
_0203DBB0:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0203DB88

	thumb_func_start sub_0203DBB4
sub_0203DBB4: ; 0x0203DBB4
	push {r3, lr}
	bl sub_0203D65C
	add r2, r0, #0
	mov r1, #0
	add r2, #0x64
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x66
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x68
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x6a
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x6c
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x6e
	strh r1, [r2]
	add r2, r0, #0
	add r2, #0x70
	strh r1, [r2]
	add r0, #0x72
	strh r1, [r0]
	pop {r3, pc}
	thumb_func_end sub_0203DBB4

	thumb_func_start sub_0203DBEC
sub_0203DBEC: ; 0x0203DBEC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203D65C
	add r1, r0, #0
	add r1, #0x64
	strh r6, [r1]
	add r1, sp, #0x10
	ldrh r2, [r1]
	add r1, r0, #0
	add r1, #0x66
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x5c
	strh r5, [r1]
	add r0, #0x5e
	strh r4, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203DBEC

	thumb_func_start sub_0203DC14
sub_0203DC14: ; 0x0203DC14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D65C
	add r1, r0, #0
	add r1, #0x68
	strh r4, [r1]
	add r0, #0x60
	strh r5, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203DC14

	thumb_func_start sub_0203DC2C
sub_0203DC2C: ; 0x0203DC2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D65C
	add r1, r0, #0
	add r1, #0x6a
	strh r4, [r1]
	add r0, #0x62
	strh r5, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203DC2C

	thumb_func_start sub_0203DC44
sub_0203DC44: ; 0x0203DC44
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x44
	str r1, [sp]
	ldr r3, _0203DC70 ; =0x0209A9D4
	mov r1, #0x4c
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	blx sub_020787A8
	mov r0, #8
	str r0, [r4, #0x40]
	mov r0, #0xf
	str r0, [r4, #0x44]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0203DC70: .word 0x0209A9D4
	thumb_func_end sub_0203DC44

	thumb_func_start sub_0203DC74
sub_0203DC74: ; 0x0203DC74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203D2D4
	add r4, r0, #0
	ldr r0, _0203DD48 ; =0x02FFFFA8
	mov r1, #2
	ldrh r2, [r0]
	lsl r1, r1, #0xe
	and r1, r2
	asr r1, r1, #0xf
	beq _0203DC9C
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	str r0, [r4, #0x2c]
	pop {r3, r4, r5, pc}
_0203DC9C:
	ldr r1, _0203DD4C ; =0x04000130
	ldrh r2, [r1]
	ldrh r1, [r0]
	orr r2, r1
	lsr r1, r0, #0xc
	eor r1, r2
	lsr r0, r0, #0xc
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r2, #0x40
	mov r0, #0x20
	and r2, r1
	and r0, r1
	lsl r2, r2, #1
	asr r0, r0, #1
	mvn r2, r2
	mvn r0, r0
	and r1, r2
	and r0, r1
	lsl r0, r0, #0x10
	ldr r1, [r4, #0xc]
	lsr r0, r0, #0x10
	eor r1, r0
	and r1, r0
	str r1, [r4, #0x10]
	ldr r1, [r4, #0xc]
	eor r1, r0
	and r1, r0
	str r1, [r4, #0x14]
	cmp r0, #0
	beq _0203DCF0
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _0203DCF0
	ldr r1, [r4, #0x3c]
	sub r1, r1, #1
	str r1, [r4, #0x3c]
	bne _0203DCF4
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x40]
	b _0203DCF2
_0203DCF0:
	ldr r1, [r4, #0x44]
_0203DCF2:
	str r1, [r4, #0x3c]
_0203DCF4:
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r1, [r4, #0x1c]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl sub_0203DD5C
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x1c]
	add r5, #0x3e
	orr r0, r1
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x18]
	orr r0, r1
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x20]
	orr r0, r1
	str r0, [r4, #0x38]
	ldrb r0, [r5]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0203DD44
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x2c]
	mov r0, #0
	str r0, [r4, #0x34]
	str r0, [r4, #0x30]
	str r0, [r4, #0x38]
_0203DD44:
	pop {r3, r4, r5, pc}
	nop
_0203DD48: .word 0x02FFFFA8
_0203DD4C: .word 0x04000130
	thumb_func_end sub_0203DC74

	thumb_func_start sub_0203DD50
sub_0203DD50: ; 0x0203DD50
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DC74
	pop {r3, pc}
	thumb_func_end sub_0203DD50

	thumb_func_start sub_0203DD5C
sub_0203DD5C: ; 0x0203DD5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r2, r0, #0
	ldr r3, [r2]
	cmp r3, #0
	bne _0203DD6A
	b _0203DE9C
_0203DD6A:
	ldr r1, [r2, #8]
	mov r0, #0xc
	mul r0, r1
	add r1, r3, r0
	add r3, r2, #0
	add r0, r2, #0
	add r7, r2, #0
	str r3, [sp, #0x1c]
	add r3, #0x20
	add r0, #0x1c
	add r7, #0x18
	str r3, [sp, #0x1c]
_0203DD82:
	ldrb r3, [r1, #8]
	cmp r3, #3
	bls _0203DD8A
	b _0203DE98
_0203DD8A:
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0203DD96: ; jump table
	.short _0203DD9E - _0203DD96 - 2 ; case 0
	.short _0203DDA2 - _0203DD96 - 2 ; case 1
	.short _0203DDD4 - _0203DD96 - 2 ; case 2
	.short _0203DE6E - _0203DD96 - 2 ; case 3
_0203DD9E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_0203DDA2:
	ldr r4, [r2, #0x1c]
	ldr r3, [r1]
	tst r3, r4
	beq _0203DDB2
	ldr r4, [r0]
	ldr r3, [r1, #4]
	orr r3, r4
	str r3, [r0]
_0203DDB2:
	ldr r4, [r2, #0x18]
	ldr r3, [r1]
	tst r3, r4
	beq _0203DDC2
	ldr r4, [r7]
	ldr r3, [r1, #4]
	orr r3, r4
	str r3, [r7]
_0203DDC2:
	ldr r4, [r2, #0x20]
	ldr r3, [r1]
	tst r3, r4
	beq _0203DE98
	ldr r3, [sp, #0x1c]
	ldr r4, [r3]
	ldr r3, [r1, #4]
	orr r4, r3
	b _0203DE94
_0203DDD4:
	ldr r3, [r2, #0x1c]
	ldr r6, [r1]
	mov r5, #0
	str r3, [sp, #0x14]
	tst r3, r6
	beq _0203DDE4
	ldr r4, [r1, #4]
	orr r5, r4
_0203DDE4:
	ldr r3, [r1, #4]
	ldr r4, [sp, #0x14]
	str r3, [sp, #0x10]
	tst r3, r4
	beq _0203DDF0
	orr r5, r6
_0203DDF0:
	ldr r3, [r0]
	add r4, r6, #0
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x10]
	orr r4, r3
	ldr r3, _0203DEA0 ; =0x0000FFFF
	eor r4, r3
	ldr r3, [sp, #0x18]
	and r3, r4
	orr r3, r5
	str r3, [r0]
	ldr r3, [r2, #0x18]
	ldr r6, [r1]
	mov r5, #0
	str r3, [sp, #0xc]
	tst r3, r6
	beq _0203DE16
	ldr r4, [r1, #4]
	orr r5, r4
_0203DE16:
	ldr r3, [r1, #4]
	ldr r4, [sp, #0xc]
	str r3, [sp, #8]
	tst r3, r4
	beq _0203DE22
	orr r5, r6
_0203DE22:
	ldr r3, [r7]
	add r4, r6, #0
	mov lr, r3
	ldr r3, [sp, #8]
	orr r4, r3
	ldr r3, _0203DEA0 ; =0x0000FFFF
	eor r3, r4
	mov r4, lr
	and r3, r4
	orr r3, r5
	str r3, [r7]
	ldr r3, [r2, #0x20]
	ldr r6, [r1]
	mov r5, #0
	str r3, [sp, #4]
	tst r3, r6
	beq _0203DE48
	ldr r4, [r1, #4]
	orr r5, r4
_0203DE48:
	ldr r3, [r1, #4]
	ldr r4, [sp, #4]
	str r3, [sp]
	tst r3, r4
	beq _0203DE54
	orr r5, r6
_0203DE54:
	ldr r3, [sp, #0x1c]
	add r4, r6, #0
	ldr r3, [r3]
	mov ip, r3
	ldr r3, [sp]
	orr r4, r3
	ldr r3, _0203DEA0 ; =0x0000FFFF
	eor r3, r4
	mov r4, ip
	and r3, r4
	add r4, r3, #0
	orr r4, r5
	b _0203DE94
_0203DE6E:
	ldr r4, [r1]
	ldr r3, _0203DEA0 ; =0x0000FFFF
	ldr r5, [r0]
	eor r3, r4
	and r3, r5
	str r3, [r0]
	ldr r4, [r1]
	ldr r3, _0203DEA0 ; =0x0000FFFF
	ldr r5, [r7]
	eor r3, r4
	and r3, r5
	str r3, [r7]
	ldr r3, [sp, #0x1c]
	ldr r4, [r1]
	ldr r5, [r3]
	ldr r3, _0203DEA0 ; =0x0000FFFF
	eor r3, r4
	add r4, r5, #0
	and r4, r3
_0203DE94:
	ldr r3, [sp, #0x1c]
	str r4, [r3]
_0203DE98:
	add r1, #0xc
	b _0203DD82
_0203DE9C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203DEA0: .word 0x0000FFFF
	thumb_func_end sub_0203DD5C

	thumb_func_start sub_0203DEA4
sub_0203DEA4: ; 0x0203DEA4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D2D4
	str r5, [r0, #0x40]
	str r4, [r0, #0x44]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DEA4

	thumb_func_start sub_0203DEB4
sub_0203DEB4: ; 0x0203DEB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D2D8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203DEA4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DEB4

	thumb_func_start sub_0203DEC8
sub_0203DEC8: ; 0x0203DEC8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203D2D4
	str r4, [r0]
	pop {r4, pc}
	thumb_func_end sub_0203DEC8

	thumb_func_start sub_0203DED4
sub_0203DED4: ; 0x0203DED4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D2D8
	add r1, r4, #0
	bl sub_0203DEC8
	pop {r4, pc}
	thumb_func_end sub_0203DED4

	thumb_func_start sub_0203DEE4
sub_0203DEE4: ; 0x0203DEE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D2D4
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203DEF8
	ldr r0, [r0, #0x28]
	pop {r4, pc}
_0203DEF8:
	ldr r0, [r0, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_0203DEE4

	thumb_func_start sub_0203DEFC
sub_0203DEFC: ; 0x0203DEFC
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DEE4
	pop {r3, pc}
	thumb_func_end sub_0203DEFC

	thumb_func_start sub_0203DF08
sub_0203DF08: ; 0x0203DF08
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D2D4
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203DF1C
	ldr r0, [r0, #0x24]
	pop {r4, pc}
_0203DF1C:
	ldr r0, [r0, #0x18]
	pop {r4, pc}
	thumb_func_end sub_0203DF08

	thumb_func_start sub_0203DF20
sub_0203DF20: ; 0x0203DF20
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DF08
	pop {r3, pc}
	thumb_func_end sub_0203DF20

	thumb_func_start sub_0203DF2C
sub_0203DF2C: ; 0x0203DF2C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203D2D4
	add r4, #0x3d
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0203DF40
	ldr r0, [r0, #0x2c]
	pop {r4, pc}
_0203DF40:
	ldr r0, [r0, #0x20]
	pop {r4, pc}
	thumb_func_end sub_0203DF2C

	thumb_func_start sub_0203DF44
sub_0203DF44: ; 0x0203DF44
	push {r3, lr}
	bl sub_0203D2D8
	bl sub_0203DF2C
	pop {r3, pc}
	thumb_func_end sub_0203DF44

	thumb_func_start sub_0203DF50
sub_0203DF50: ; 0x0203DF50
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D2D4
	ldr r1, [r0, #0x40]
	str r1, [r5]
	ldr r0, [r0, #0x44]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DF50

	thumb_func_start sub_0203DF64
sub_0203DF64: ; 0x0203DF64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D2D8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203DF50
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DF64

	thumb_func_start sub_0203DF78
sub_0203DF78: ; 0x0203DF78
	push {r3, lr}
	bl sub_0203D2D4
	mov r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x38]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203DF78

	thumb_func_start sub_0203DF90
sub_0203DF90: ; 0x0203DF90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D2D4
	str r4, [r0, #0x28]
	str r5, [r0, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DF90

	thumb_func_start sub_0203DFA0
sub_0203DFA0: ; 0x0203DFA0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D2D4
	str r4, [r0, #0x24]
	str r5, [r0, #0x18]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DFA0

	thumb_func_start sub_0203DFB0
sub_0203DFB0: ; 0x0203DFB0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0203D2D4
	str r4, [r0, #0x2c]
	str r5, [r0, #0x20]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203DFB0

	thumb_func_start sub_0203DFC0
sub_0203DFC0: ; 0x0203DFC0
	str r1, [r0]
	lsl r1, r2, #0x10
	asr r1, r1, #0x10
	str r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0203DFC0

	thumb_func_start sub_0203DFD0
sub_0203DFD0: ; 0x0203DFD0
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0203E130
	ldr r1, [sp]
	cmp r0, r1
	bgt _0203DFE8
	bl sub_02040158
	pop {r3, r4, r5, r6, r7, pc}
_0203DFE8:
	mov r0, #0xe
	ldrsh r4, [r5, r0]
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	mov r6, #0
	add r0, r1, r0
	cmp r4, r0
	bge _0203E024
_0203DFF8:
	cmp r7, #0
	bne _0203E006
	ldr r0, _0203E030 ; =0x0209A9DC
	ldr r2, _0203E034 ; =0x0209A9E0
	mov r1, #0
	bl sub_0203CB80
_0203E006:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203E120
	ldrb r2, [r7, r6]
	ldr r1, [r5]
	add r4, r4, #1
	strb r2, [r1, r0]
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r1, r0
	cmp r4, r0
	blt _0203DFF8
_0203E024:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203E120
	strh r0, [r5, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203E030: .word 0x0209A9DC
_0203E034: .word 0x0209A9E0
	thumb_func_end sub_0203DFD0

	thumb_func_start sub_0203E038
sub_0203E038: ; 0x0203E038
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203E09C
	mov r1, #0xc
	add r4, r0, #0
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, r4
	bl sub_0203E120
	strh r0, [r5, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E038

	thumb_func_start sub_0203E054
sub_0203E054: ; 0x0203E054
	push {r3, lr}
	add r1, sp, #0
	mov r2, #1
	mov r3, #1
	bl sub_0203E038
	cmp r0, #1
	bne _0203E06A
	add r0, sp, #0
	ldrb r0, [r0]
	pop {r3, pc}
_0203E06A:
	ldr r0, _0203E078 ; =0x0209A9DC
	ldr r2, _0203E07C ; =0x0209A9EC
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0203E078: .word 0x0209A9DC
_0203E07C: .word 0x0209A9EC
	thumb_func_end sub_0203E054

	thumb_func_start sub_0203E080
sub_0203E080: ; 0x0203E080
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E054
	lsl r0, r0, #0x18
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl sub_0203E054
	orr r0, r5
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203E080

	thumb_func_start sub_0203E09C
sub_0203E09C: ; 0x0203E09C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xc
	ldrsh r4, [r5, r0]
	add r7, r2, #0
	str r1, [sp]
	add r0, r4, r7
	str r3, [sp, #4]
	mov r6, #0
	cmp r4, r0
	bge _0203E0EE
_0203E0B4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203E120
	mov r1, #0xe
	ldrsh r1, [r5, r1]
	cmp r1, r0
	beq _0203E0CA
	ldr r0, [sp, #4]
	cmp r6, r0
	bne _0203E0D0
_0203E0CA:
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203E0D0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203E120
	ldr r1, [r5]
	add r4, r4, #1
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	strb r1, [r0, r6]
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	add r6, r6, #1
	add r0, r0, r7
	cmp r4, r0
	blt _0203E0B4
_0203E0EE:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203E09C

	thumb_func_start sub_0203E0F4
sub_0203E0F4: ; 0x0203E0F4
	mov r1, #0xc
	ldrsh r3, [r0, r1]
	mov r1, #0xe
	ldrsh r2, [r0, r1]
	cmp r3, r2
	ble _0203E10A
	ldr r2, [r0, #4]
	ldrsh r0, [r0, r1]
	add r0, r2, r0
	sub r0, r0, r3
	bx lr
_0203E10A:
	ldrsh r0, [r0, r1]
	sub r0, r0, r3
	bx lr
	thumb_func_end sub_0203E0F4

	thumb_func_start sub_0203E110
sub_0203E110: ; 0x0203E110
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203E0F4
	ldr r1, [r4, #4]
	sub r0, r1, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203E110

	thumb_func_start sub_0203E120
sub_0203E120: ; 0x0203E120
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #4]
	blx sub_0208D65C
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0203E120

	thumb_func_start sub_0203E130
sub_0203E130: ; 0x0203E130
	mov r1, #0xc
	ldrsh r3, [r0, r1]
	mov r1, #0xe
	ldrsh r2, [r0, r1]
	cmp r3, r2
	ble _0203E144
	ldrsh r1, [r0, r1]
	ldr r2, [r0, #4]
	add r1, r2, r1
	b _0203E146
_0203E144:
	ldrsh r1, [r0, r1]
_0203E146:
	ldr r0, [r0, #4]
	sub r1, r1, r3
	sub r0, r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_0203E130

	thumb_func_start sub_0203E150
sub_0203E150: ; 0x0203E150
	bx lr
	.align 2, 0
	thumb_func_end sub_0203E150

	thumb_func_start sub_0203E154
sub_0203E154: ; 0x0203E154
	ldr r3, [r0, #0x1c]
	mov r2, #0
	ldr r1, [r0, #0x18]
	cmp r3, #0
	ble _0203E170
_0203E15E:
	ldrh r0, [r1, #0xe]
	cmp r0, #0
	bne _0203E168
	add r0, r1, #0
	bx lr
_0203E168:
	add r2, r2, #1
	add r1, #0x14
	cmp r2, r3
	blt _0203E15E
_0203E170:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203E154

	thumb_func_start sub_0203E174
sub_0203E174: ; 0x0203E174
	push {r3, lr}
	bl sub_0203E188
	cmp r0, #0
	bne _0203E182
	mov r0, #1
	pop {r3, pc}
_0203E182:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0203E174

	thumb_func_start sub_0203E188
sub_0203E188: ; 0x0203E188
	push {r3, r4}
	ldr r4, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	mov r3, #0
	mov r2, #0
	cmp r4, #0
	ble _0203E1A6
_0203E196:
	ldrh r0, [r1, #0xe]
	cmp r0, #0
	beq _0203E19E
	add r3, r3, #1
_0203E19E:
	add r2, r2, #1
	add r1, #0x14
	cmp r2, r4
	blt _0203E196
_0203E1A6:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0203E188

	thumb_func_start sub_0203E1AC
sub_0203E1AC: ; 0x0203E1AC
	ldr r1, [r0]
	cmp r1, #0
	beq _0203E1CA
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0203E1C0
	str r1, [r0]
	mov r0, #0
	str r0, [r1, #4]
	b _0203E1C6
_0203E1C0:
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
_0203E1C6:
	mov r0, #1
	bx lr
_0203E1CA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0203E1AC

	thumb_func_start sub_0203E1D0
sub_0203E1D0: ; 0x0203E1D0
	ldr r2, [r0]
	strb r1, [r2]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldrh r1, [r0, #4]
	sub r1, r1, #1
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0203E1D0

	thumb_func_start sub_0203E1E4
sub_0203E1E4: ; 0x0203E1E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	asr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203E1D0
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203E1D0
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	asr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203E1D0
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203E1D0
	ldrb r1, [r5, #0x10]
	add r0, r4, #0
	bl sub_0203E1D0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203E1E4

	thumb_func_start sub_0203E22C
sub_0203E22C: ; 0x0203E22C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x11]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	bne _0203E254
	cmp r3, #0
	beq _0203E24C
	ldrh r0, [r5, #0xc]
	ldrh r1, [r4, #4]
	add r0, r0, #5
	cmp r1, r0
	bge _0203E24C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203E24C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203E1E4
_0203E254:
	ldrh r3, [r5, #0xc]
	ldrh r2, [r4, #4]
	cmp r2, r3
	ldr r0, [r5]
	bhs _0203E28E
	cmp r0, #0
	bne _0203E26E
	ldr r1, [r4]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203E038
	b _0203E27C
_0203E26E:
	ldr r1, [r4]
	blx sub_02078920
	ldrh r0, [r4, #4]
	ldr r1, [r5]
	add r0, r1, r0
	str r0, [r5]
_0203E27C:
	ldrh r1, [r5, #0xc]
	ldrh r0, [r4, #4]
	sub r0, r1, r0
	strh r0, [r5, #0xc]
	ldr r0, _0203E2BC ; =0x0000FFFF
	strh r0, [r4, #4]
	mov r0, #1
	strb r0, [r5, #0x11]
	pop {r4, r5, r6, pc}
_0203E28E:
	cmp r0, #0
	bne _0203E29E
	ldr r1, [r4]
	add r0, r6, #0
	add r2, r3, #0
	bl sub_0203E038
	b _0203E2A6
_0203E29E:
	ldr r1, [r4]
	add r2, r3, #0
	blx sub_02078920
_0203E2A6:
	ldrh r0, [r5, #0xc]
	ldr r1, [r4]
	add r0, r1, r0
	str r0, [r4]
	ldrh r1, [r4, #4]
	ldrh r0, [r5, #0xc]
	sub r0, r1, r0
	strh r0, [r4, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0203E2BC: .word 0x0000FFFF
	thumb_func_end sub_0203E22C

	thumb_func_start sub_0203E2C0
sub_0203E2C0: ; 0x0203E2C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0203E154
	add r4, r0, #0
	bne _0203E2E0
	ldr r0, _0203E354 ; =0x0209A9F0
	ldr r2, _0203E358 ; =0x0209A9F4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203E2E0:
	lsl r0, r6, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0203E35C ; =0x00007FFF
	cmp r1, r0
	blo _0203E2F4
	ldr r0, _0203E354 ; =0x0209A9F0
	ldr r2, _0203E360 ; =0x0209A9F8
	mov r1, #0
	bl sub_0203CB80
_0203E2F4:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0203E32A
	ldr r0, [r5, #0x14]
	bl sub_0203E110
	add r1, r6, #5
	cmp r1, r0
	blt _0203E314
	ldr r0, _0203E354 ; =0x0209A9F0
	ldr r2, _0203E358 ; =0x0209A9F4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203E314:
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0203DFD0
	ldr r0, [r5, #0x14]
	bl sub_0203E150
	mov r0, #0
	str r0, [r4]
	b _0203E32C
_0203E32A:
	str r7, [r4]
_0203E32C:
	ldr r0, [sp]
	strh r6, [r4, #0xc]
	strh r0, [r4, #0xe]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0x10]
	mov r0, #0
	strb r0, [r4, #0x11]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0203E346
	str r4, [r5, #4]
	str r4, [r5]
	b _0203E34E
_0203E346:
	str r4, [r0, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	str r4, [r5, #4]
_0203E34E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E354: .word 0x0209A9F0
_0203E358: .word 0x0209A9F4
_0203E35C: .word 0x00007FFF
_0203E360: .word 0x0209A9F8
	thumb_func_end sub_0203E2C0

	thumb_func_start sub_0203E364
sub_0203E364: ; 0x0203E364
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0203E36E
	add r0, r1, #0
	bx lr
_0203E36E:
	ldr r1, [r0]
	cmp r1, #0
	beq _0203E378
	add r0, r1, #0
	bx lr
_0203E378:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0203E380
	mov r0, #0
_0203E380:
	bx lr
	.align 2, 0
	thumb_func_end sub_0203E364

	thumb_func_start sub_0203E384
sub_0203E384: ; 0x0203E384
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _0203E394
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
_0203E394:
	bl sub_0203E1AC
	cmp r0, #0
	bne _0203E3B2
	add r4, #8
	add r0, r4, #0
	bl sub_0203E1AC
	cmp r0, #0
	bne _0203E3B2
	ldr r0, _0203E3B4 ; =0x0209A9F0
	ldr r2, _0203E3B8 ; =0x0209AA10
	mov r1, #0
	bl sub_0203CB80
_0203E3B2:
	pop {r4, pc}
	.align 2, 0
_0203E3B4: .word 0x0209A9F0
_0203E3B8: .word 0x0209AA10
	thumb_func_end sub_0203E384

	thumb_func_start sub_0203E3BC
sub_0203E3BC: ; 0x0203E3BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #4]
	mov r7, #0
	cmp r0, #0
	beq _0203E40E
_0203E3CA:
	add r0, r5, #0
	bl sub_0203E364
	add r6, r0, #0
	beq _0203E40E
	add r0, r5, #0
	bl sub_0203E384
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_0203E22C
	cmp r0, #0
	bne _0203E3EE
	str r6, [r5, #0x10]
	b _0203E40E
_0203E3EE:
	ldrh r1, [r4, #4]
	ldr r0, _0203E414 ; =0x0000FFFF
	mov r7, #1
	cmp r1, r0
	bne _0203E3FE
	str r6, [r5, #0x10]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203E3FE:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x14
	blx sub_020787A8
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _0203E3CA
_0203E40E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E414: .word 0x0000FFFF
	thumb_func_end sub_0203E3BC

	thumb_func_start sub_0203E418
sub_0203E418: ; 0x0203E418
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x28
	add r5, r0, #0
	add r7, r3, #0
	blx sub_020787A8
	ldr r0, _0203E444 ; =0x00000173
	mov r1, #0x14
	str r0, [sp]
	ldr r3, _0203E448 ; =0x0209AA14
	add r0, r7, #0
	mul r1, r4
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r6, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203E444: .word 0x00000173
_0203E448: .word 0x0209AA14
	thumb_func_end sub_0203E418

	thumb_func_start sub_0203E44C
sub_0203E44C: ; 0x0203E44C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r3, [r5, #0x1c]
	mov r2, #0x14
	ldr r0, [r5, #0x18]
	mov r1, #0
	mul r2, r3
	mov r4, #0
	blx sub_020787A8
	str r4, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r4, [r5, #0xc]
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E44C

	thumb_func_start sub_0203E46C
sub_0203E46C: ; 0x0203E46C
	ldr r0, [r0, #0x18]
	ldr r3, _0203E474 ; =sub_0203A24C
	bx r3
	nop
_0203E474: .word sub_0203A24C
	thumb_func_end sub_0203E46C

	thumb_func_start sub_0203E478
sub_0203E478: ; 0x0203E478
	push {r3, r4}
	ldr r4, [r0, #0x1c]
	mov r2, #0
	ldr r3, [r0, #0x18]
	cmp r4, #0
	ble _0203E498
_0203E484:
	ldrh r0, [r3, #0xe]
	cmp r0, r1
	bne _0203E490
	mov r0, #1
	pop {r3, r4}
	bx lr
_0203E490:
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r4
	blt _0203E484
_0203E498:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0203E478

	thumb_func_start sub_0203E4A0
sub_0203E4A0: ; 0x0203E4A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x1c]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	bne _0203E4CE
	mov r0, #0x64
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0203E514 ; =0x00007FFF
	ldr r3, _0203E518 ; =0x0209AA20
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
_0203E4CE:
	strh r6, [r4, #4]
	ldr r0, _0203E51C ; =0x02141890
	strh r7, [r4, #6]
	ldrh r1, [r0]
	cmp r1, #0
	beq _0203E4E4
	strh r1, [r4, #4]
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	strh r0, [r4, #6]
_0203E4E4:
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r0, [sp, #0x18]
	strb r0, [r4, #0xc]
	ldr r0, [sp, #0x24]
	strb r0, [r4, #0xe]
	ldr r0, [sp, #0x20]
	strb r0, [r4, #0xd]
	mov r0, #0
	strb r0, [r4, #0xf]
	mov r0, #7
	lsl r0, r0, #0x18
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl sub_0203E5AC
	lsl r2, r5, #0x10
	ldrb r1, [r4, #0xc]
	lsr r2, r2, #0x10
	bl sub_0203E6CC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203E514: .word 0x00007FFF
_0203E518: .word 0x0209AA20
_0203E51C: .word 0x02141890
	thumb_func_end sub_0203E4A0

	thumb_func_start sub_0203E520
sub_0203E520: ; 0x0203E520
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203E5AC
	ldr r1, [r4]
	add r5, r0, #0
	bl sub_0203E5EC
	cmp r5, #1
	bne _0203E53A
	mov r2, #7
	lsl r2, r2, #0x18
	b _0203E53C
_0203E53A:
	ldr r2, _0203E5A0 ; =0x07000400
_0203E53C:
	ldrb r1, [r4, #0xf]
	cmp r1, #1
	bne _0203E55E
	ldrh r3, [r4, #6]
	ldrh r1, [r4, #4]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	ldr r3, _0203E5A4 ; =0x40000800
	lsl r1, r1, #0x17
	lsr r1, r1, #7
	orr r3, r5
	orr r1, r3
	str r1, [r2]
	mov r1, #0xe
	lsl r1, r1, #0xc
	orr r1, r0
	b _0203E564
_0203E55E:
	ldr r1, _0203E5A8 ; =0x40000200
	str r1, [r2]
	mov r1, #0
_0203E564:
	strh r1, [r2, #4]
	ldrh r3, [r4, #6]
	ldrh r1, [r4, #4]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x18
	mov r3, #1
	lsl r1, r1, #0x17
	lsl r3, r3, #0x1e
	lsr r1, r1, #7
	orr r3, r5
	orr r1, r3
	str r1, [r2, #8]
	mov r1, #0xe
	lsl r1, r1, #0xc
	orr r0, r1
	strh r0, [r2, #0xc]
	ldr r0, [r4, #0x10]
	cmp r2, r0
	beq _0203E59E
	ldr r5, _0203E5A8 ; =0x40000200
	mov r3, #0
	str r5, [r0]
	strh r3, [r0, #4]
	ldr r0, [r4, #0x10]
	add r1, r0, #0
	add r1, #8
	str r5, [r0, #8]
	strh r3, [r1, #4]
	str r2, [r4, #0x10]
_0203E59E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0203E5A0: .word 0x07000400
_0203E5A4: .word 0x40000800
_0203E5A8: .word 0x40000200
	thumb_func_end sub_0203E520

	thumb_func_start sub_0203E5AC
sub_0203E5AC: ; 0x0203E5AC
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	beq _0203E5B8
	cmp r0, #2
	beq _0203E5CE
	b _0203E5E4
_0203E5B8:
	ldr r0, _0203E5E8 ; =0x04000304
	ldrh r1, [r0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #1
	bne _0203E5CA
	mov r0, #1
	bx lr
_0203E5CA:
	mov r0, #2
	bx lr
_0203E5CE:
	ldr r0, _0203E5E8 ; =0x04000304
	ldrh r1, [r0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #1
	bne _0203E5E0
	mov r0, #2
	bx lr
_0203E5E0:
	mov r0, #1
	bx lr
_0203E5E4:
	mov r0, #1
	bx lr
	.align 2, 0
_0203E5E8: .word 0x04000304
	thumb_func_end sub_0203E5AC

	thumb_func_start sub_0203E5EC
sub_0203E5EC: ; 0x0203E5EC
	push {r4, lr}
	add r4, r1, #0
	cmp r0, #1
	bne _0203E5FE
	bl sub_02076EEC
	mov r0, #1
	lsl r0, r0, #0x1a
	b _0203E604
_0203E5FE:
	bl sub_02076F1C
	ldr r0, _0203E644 ; =0x04001000
_0203E604:
	ldr r1, [r0]
	ldr r0, _0203E648 ; =0x00300010
	and r1, r0
	ldr r0, _0203E64C ; =0x00100010
	cmp r1, r0
	bgt _0203E618
	bge _0203E62C
	cmp r1, #0x10
	beq _0203E628
	b _0203E634
_0203E618:
	ldr r0, _0203E650 ; =0x00200010
	cmp r1, r0
	bgt _0203E622
	beq _0203E630
	b _0203E634
_0203E622:
	ldr r0, _0203E648 ; =0x00300010
	cmp r1, r0
	b _0203E634
_0203E628:
	lsl r0, r4, #2
	pop {r4, pc}
_0203E62C:
	lsl r0, r4, #1
	pop {r4, pc}
_0203E630:
	add r0, r4, #0
	pop {r4, pc}
_0203E634:
	ldr r0, _0203E654 ; =0x0209AA2C
	ldr r2, _0203E658 ; =0x0209AA30
	mov r1, #0
	bl sub_0203CB80
	add r0, r4, #0
	pop {r4, pc}
	nop
_0203E644: .word 0x04001000
_0203E648: .word 0x00300010
_0203E64C: .word 0x00100010
_0203E650: .word 0x00200010
_0203E654: .word 0x0209AA2C
_0203E658: .word 0x0209AA30
	thumb_func_end sub_0203E5EC

	thumb_func_start sub_0203E65C
sub_0203E65C: ; 0x0203E65C
	cmp r1, #4
	bge _0203E662
	str r1, [r0]
_0203E662:
	bx lr
	thumb_func_end sub_0203E65C

	thumb_func_start sub_0203E664
sub_0203E664: ; 0x0203E664
	mov r1, #7
	ldr r3, _0203E688 ; =0x40000200
	lsl r1, r1, #0x18
	str r3, [r1]
	mov r2, #0
	strh r2, [r1, #4]
	str r3, [r1, #8]
	strh r2, [r1, #0xc]
	ldrb r1, [r0, #0xe]
	cmp r1, #0
	beq _0203E684
	ldr r1, _0203E68C ; =0x07000400
	str r3, [r1]
	strh r2, [r1, #4]
	str r3, [r1, #8]
	strh r2, [r1, #0xc]
_0203E684:
	ldr r3, _0203E690 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0203E688: .word 0x40000200
_0203E68C: .word 0x07000400
_0203E690: .word sub_0203A24C
	thumb_func_end sub_0203E664

	thumb_func_start sub_0203E694
sub_0203E694: ; 0x0203E694
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	cmp r1, #0
	bne _0203E6A2
	mov r0, #2
_0203E6A2:
	strb r0, [r5, #0xd]
	mov r0, #1
	strb r0, [r5, #0xe]
	add r0, r5, #0
	bl sub_0203E5AC
	ldrb r1, [r5, #0xc]
	add r2, r4, #0
	bl sub_0203E6CC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203E694

	thumb_func_start sub_0203E6B8
sub_0203E6B8: ; 0x0203E6B8
	push {r3, lr}
	cmp r0, #1
	bne _0203E6C4
	bl sub_02076EEC
	b _0203E6C8
_0203E6C4:
	bl sub_02076F1C
_0203E6C8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203E6B8

	thumb_func_start sub_0203E6CC
sub_0203E6CC: ; 0x0203E6CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	bl sub_020116AC
	ldr r1, _0203E748 ; =0x00007FFF
	add r2, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r7, r0, #0
	add r0, sp, #0x10
	bl sub_020116B0
	cmp r6, #1
	bne _0203E6FE
	mov r2, #1
	mov r0, #0
	b _0203E702
_0203E6FE:
	mov r2, #5
	mov r0, #1
_0203E702:
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp]
	str r5, [sp, #4]
	mov r3, #7
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	lsl r3, r3, #6
	bl sub_0204B0D4
	cmp r4, #0
	bne _0203E71E
	mov r4, #1
	b _0203E720
_0203E71E:
	mov r4, #0
_0203E720:
	add r0, r6, #0
	bl sub_0203E6B8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	lsl r2, r4, #2
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	bl sub_0204AEB8
	add r0, r7, #0
	bl sub_0204AB0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0203E748: .word 0x00007FFF
	thumb_func_end sub_0203E6CC

	thumb_func_start sub_0203E74C
sub_0203E74C: ; 0x0203E74C
	push {r4, lr}
	ldr r4, _0203E768 ; =0x020932D0
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x20
	bl sub_02075678
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020756CC
	pop {r4, pc}
	nop
_0203E768: .word 0x020932D0
	thumb_func_end sub_0203E74C

	thumb_func_start sub_0203E76C
sub_0203E76C: ; 0x0203E76C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r5, r2, #0
	str r3, [sp, #0x1c]
	bl sub_0203E74C
	ldr r0, _0203E7D8 ; =0x02141890
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203E7B0
	ldrb r4, [r0, #0xe]
	ldrb r7, [r0, #0xd]
	ldr r6, [r0]
	bl sub_0203E7DC
	ldr r0, _0203E7D8 ; =0x02141890
	str r5, [sp]
	ldr r0, [r0, #4]
	ldr r2, [sp, #0x14]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, #0
	bl sub_0203E4A0
	ldr r1, _0203E7D8 ; =0x02141890
	add sp, #0x20
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0203E7B0:
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, _0203E7D8 ; =0x02141890
	mov r1, #3
	ldrh r0, [r0, #2]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1e
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	bl sub_0203E4A0
	ldr r1, _0203E7D8 ; =0x02141890
	str r0, [r1, #4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203E7D8: .word 0x02141890
	thumb_func_end sub_0203E76C

	thumb_func_start sub_0203E7DC
sub_0203E7DC: ; 0x0203E7DC
	push {r4, lr}
	bl sub_0203E74C
	ldr r4, _0203E7F4 ; =0x02141890
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0203E7F2
	bl sub_0203E664
	mov r0, #0
	str r0, [r4, #4]
_0203E7F2:
	pop {r4, pc}
	.align 2, 0
_0203E7F4: .word 0x02141890
	thumb_func_end sub_0203E7DC

	thumb_func_start sub_0203E7F8
sub_0203E7F8: ; 0x0203E7F8
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0203E80C ; =0x02141890
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203E808
	bl sub_0203E65C
_0203E808:
	pop {r3, pc}
	nop
_0203E80C: .word 0x02141890
	thumb_func_end sub_0203E7F8

	thumb_func_start sub_0203E810
sub_0203E810: ; 0x0203E810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	cmp r5, #0
	bne _0203E81E
	mov r0, #2
_0203E81E:
	bl sub_0203E890
	ldr r0, _0203E834 ; =0x02141890
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203E832
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0203E694
_0203E832:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0203E834: .word 0x02141890
	thumb_func_end sub_0203E810

	thumb_func_start sub_0203E838
sub_0203E838: ; 0x0203E838
	push {r3, lr}
	ldr r0, _0203E848 ; =0x02141890
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203E846
	bl sub_0203E520
_0203E846:
	pop {r3, pc}
	.align 2, 0
_0203E848: .word 0x02141890
	thumb_func_end sub_0203E838

	thumb_func_start sub_0203E84C
sub_0203E84C: ; 0x0203E84C
	ldr r0, _0203E85C ; =0x02141890
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0203E858
	mov r0, #1
	strb r0, [r1, #0xf]
_0203E858:
	bx lr
	nop
_0203E85C: .word 0x02141890
	thumb_func_end sub_0203E84C

	thumb_func_start sub_0203E860
sub_0203E860: ; 0x0203E860
	ldr r0, _0203E870 ; =0x02141890
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0203E86C
	mov r0, #0
	strb r0, [r1, #0xf]
_0203E86C:
	bx lr
	nop
_0203E870: .word 0x02141890
	thumb_func_end sub_0203E860

	thumb_func_start sub_0203E874
sub_0203E874: ; 0x0203E874
	ldr r2, _0203E888 ; =0x02141890
	strh r0, [r2]
	ldrh r3, [r2, #2]
	ldr r0, _0203E88C ; =0xFFFFC000
	and r3, r0
	lsr r0, r0, #0x12
	and r0, r1
	orr r0, r3
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0203E888: .word 0x02141890
_0203E88C: .word 0xFFFFC000
	thumb_func_end sub_0203E874

	thumb_func_start sub_0203E890
sub_0203E890: ; 0x0203E890
	ldr r2, _0203E8A8 ; =0x02141890
	lsl r0, r0, #0x10
	ldrh r3, [r2, #2]
	ldr r1, _0203E8AC ; =0xFFFF3FFF
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	and r1, r3
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #2]
	bx lr
	nop
_0203E8A8: .word 0x02141890
_0203E8AC: .word 0xFFFF3FFF
	thumb_func_end sub_0203E890

	thumb_func_start sub_0203E8B0
sub_0203E8B0: ; 0x0203E8B0
	push {r3, lr}
	ldr r0, _0203E8C4 ; =0x02141890
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0203E8C0
	bl sub_0203E5AC
	pop {r3, pc}
_0203E8C0:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_0203E8C4: .word 0x02141890
	thumb_func_end sub_0203E8B0

	thumb_func_start sub_0203E8C8
sub_0203E8C8: ; 0x0203E8C8
	ldr r1, _0203E8D0 ; =0x0209AA54
	strb r0, [r1]
	bx lr
	nop
_0203E8D0: .word 0x0209AA54
	thumb_func_end sub_0203E8C8

	thumb_func_start sub_0203E8D4
sub_0203E8D4: ; 0x0203E8D4
	ldr r1, _0203E8E4 ; =0x0000FFFF
	mov r2, #0
	strh r2, [r0, #0xc]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	str r2, [r0, #4]
	str r2, [r0]
	bx lr
	.align 2, 0
_0203E8E4: .word 0x0000FFFF
	thumb_func_end sub_0203E8D4

	thumb_func_start sub_0203E8E8
sub_0203E8E8: ; 0x0203E8E8
	push {r4, lr}
	bl sub_02042E78
	add r1, r0, #0
	add r1, #0x64
	ldrb r1, [r1]
	cmp r1, #0
	beq _0203E900
	add r0, #0x6c
	ldrh r0, [r0]
	cmp r0, #0
	bne _0203E90C
_0203E900:
	bl sub_02042DE8
	add r4, r0, #0
	bl sub_02042DC0
	mul r0, r4
_0203E90C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203E8E8

	thumb_func_start sub_0203E910
sub_0203E910: ; 0x0203E910
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _0203EA54 ; =0x02141898
	add r5, r1, #0
	ldr r0, [r0]
	str r2, [sp, #4]
	cmp r0, #0
	beq _0203E924
	b _0203EA3C
_0203E924:
	bl sub_02042DC0
	str r0, [sp, #8]
	bl sub_0203E8E8
	mov r4, #0x1f
	add r6, r0, #0
	mov r0, #0xdd
	lsl r4, r4, #4
	str r0, [sp]
	ldr r3, _0203EA58 ; =0x0209AA58
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, _0203EA54 ; =0x02141898
	str r0, [r1]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0203E958
	add r1, r6, #0
	add r1, #0x40
	sub r4, #0x10
	str r1, [r0, r4]
	b _0203E95E
_0203E958:
	add r7, #0x40
	sub r4, #0x10
	str r7, [r0, r4]
_0203E95E:
	mov r2, #0xe6
	str r2, [sp]
	ldr r4, _0203EA54 ; =0x02141898
	add r2, #0xfa
	ldr r1, [r4]
	ldr r3, _0203EA58 ; =0x0209AA58
	ldr r2, [r1, r2]
	add r0, r5, #0
	lsl r1, r2, #1
	add r1, r2, r1
	mov r2, #1
	mov r7, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	mov r2, #0xe8
	str r0, [r1, #0x14]
	str r2, [sp]
	ldr r1, [r4]
	add r2, #0xf8
	ldr r1, [r1, r2]
	ldr r3, _0203EA58 ; =0x0209AA58
	add r0, r5, #0
	lsl r1, r1, #1
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	mov r2, #0xe9
	str r0, [r1, #0x18]
	str r2, [sp]
	ldr r1, [r4]
	add r2, #0xf7
	ldr r1, [r1, r2]
	ldr r2, [sp, #8]
	ldr r3, _0203EA58 ; =0x0209AA58
	mul r1, r2
	add r0, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	str r0, [r1, #0x10]
	bl sub_02042DE8
	add r1, r0, #0
	mov r0, #0xec
	str r0, [sp]
	ldr r3, _0203EA58 ; =0x0209AA58
	add r0, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	str r0, [r1]
	bl sub_02042DE8
	add r2, r0, #0
	mov r0, #0xed
	mov r1, #0xf
	str r0, [sp]
	mul r1, r2
	ldr r3, _0203EA58 ; =0x0209AA58
	add r0, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	ldr r3, _0203EA58 ; =0x0209AA58
	str r0, [r1, #4]
	mov r0, #0xee
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	ldr r3, _0203EA58 ; =0x0209AA58
	str r0, [r1, #8]
	mov r0, #0xef
	str r0, [sp]
	add r0, r5, #0
	lsl r1, r6, #1
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r4]
	add r3, r5, #0
	str r0, [r1, #0xc]
	ldr r2, [r4]
	mov r1, #0x64
	add r0, r2, #0
	add r0, #0xcc
	add r2, #0x1c
	bl sub_0203E418
	ldr r2, [r4]
	mov r1, #0xb4
	add r0, r2, #0
	add r0, #0xf4
	add r2, #0x3c
	add r3, r5, #0
	mov r6, #0xb4
	bl sub_0203E418
	ldr r0, [r4]
	add r6, #0xf8
	str r7, [r0, r6]
	bl sub_0203EA5C
_0203EA3C:
	ldr r1, _0203EA54 ; =0x02141898
	mov r0, #0x79
	ldr r2, [r1]
	mov r3, #0
	lsl r0, r0, #2
	strh r3, [r2, r0]
	ldr r1, [r1]
	add r0, r0, #3
	strb r3, [r1, r0]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0203EA54: .word 0x02141898
_0203EA58: .word 0x0209AA58
	thumb_func_end sub_0203E910

	thumb_func_start sub_0203EA5C
sub_0203EA5C: ; 0x0203EA5C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02042DC0
	add r5, r0, #0
	bl sub_0203E8E8
	add r7, r0, #0
	bl sub_02042DE8
	add r6, r0, #0
	ldr r0, _0203EBD8 ; =0x02141898
	mov r2, #0x1e
	ldr r3, [r0]
	lsl r2, r2, #4
	ldr r2, [r3, r2]
	ldr r0, [r3, #0x10]
	add r3, r2, #0
	mul r3, r5
	mov r1, #0
	add r2, r3, #0
	mov r4, #0
	blx sub_020787A8
	cmp r5, #0
	ble _0203EAC8
	mov r0, #0x1e
	lsl r0, r0, #4
	str r0, [sp]
	sub r0, #9
	str r0, [sp]
_0203EA98:
	ldr r0, _0203EBD8 ; =0x02141898
	ldr r1, [r0]
	mov r0, #0x1e
	lsl r0, r0, #4
	add r3, r1, #0
	ldr r2, [r1, r0]
	add r3, #0x4c
	lsl r0, r4, #4
	add r0, r3, r0
	ldr r3, [r1, #0x10]
	add r1, r4, #0
	mul r1, r2
	add r1, r3, r1
	bl sub_0203DFC0
	ldr r0, _0203EBD8 ; =0x02141898
	mov r1, #0
	ldr r0, [r0]
	add r2, r0, r4
	ldr r0, [sp]
	add r4, r4, #1
	strb r1, [r2, r0]
	cmp r4, r5
	blt _0203EA98
_0203EAC8:
	ldr r4, _0203EBD8 ; =0x02141898
	mov r1, #0
	ldr r0, [r4]
	lsl r2, r7, #1
	ldr r0, [r0, #0xc]
	mov r5, #0
	blx sub_020787A8
	ldr r1, [r4]
	lsl r2, r7, #1
	add r0, r1, #0
	ldr r1, [r1, #0xc]
	add r0, #0x3c
	bl sub_0203DFC0
	cmp r7, #0
	ble _0203EAF8
	add r1, r5, #0
_0203EAEC:
	ldr r0, [r4]
	ldr r0, [r0, #8]
	strb r1, [r0, r5]
	add r5, r5, #1
	cmp r5, r7
	blt _0203EAEC
_0203EAF8:
	ldr r0, [r4]
	mov r5, #0xf
	add r2, r6, #0
	ldr r0, [r0, #4]
	mov r1, #0
	mul r2, r5
	blx sub_020787A8
	ldr r1, [r4]
	add r2, r6, #0
	add r0, r1, #0
	ldr r1, [r1, #4]
	add r0, #0x1c
	mul r2, r5
	bl sub_0203DFC0
	ldr r0, [r4]
	mov r1, #0xff
	ldr r0, [r0]
	mov r2, #1
	strb r1, [r0]
	cmp r6, #1
	ble _0203EB34
	mov r1, #0
_0203EB28:
	ldr r0, [r4]
	ldr r0, [r0]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, r6
	blt _0203EB28
_0203EB34:
	ldr r2, [r4]
	mov r6, #0x1e
	lsl r6, r6, #4
	ldr r3, [r2, r6]
	ldr r0, [r2, #0x14]
	lsl r2, r3, #1
	mov r1, #0
	add r2, r3, r2
	mov r5, #0
	blx sub_020787A8
	ldr r2, [r4]
	add r0, r2, #0
	ldr r3, [r2, r6]
	ldr r1, [r2, #0x14]
	lsl r2, r3, #1
	add r0, #0x2c
	add r2, r3, r2
	bl sub_0203DFC0
	add r7, r6, #0
	sub r7, #0xc4
	sub r6, #0x2c
_0203EB62:
	ldr r0, [r4]
	add r1, r0, r7
	lsl r0, r5, #4
	add r0, r1, r0
	bl sub_0203E8D4
	lsl r0, r5, #2
	ldr r1, [r4]
	add r5, r5, #1
	add r1, r1, r0
	mov r0, #0
	str r0, [r1, r6]
	cmp r5, #8
	blt _0203EB62
	mov r5, #0x1b
	ldr r1, [r4]
	lsl r5, r5, #4
	str r0, [r1, r5]
	add r0, r5, #0
	ldr r1, [r4]
	sub r0, #0x14
	add r0, r1, r0
	bl sub_0203E8D4
	add r1, r5, #0
	mov r0, #4
	sub r1, #0x76
	mov r6, #4
	bl sub_0203E8C8
	ldr r0, _0203EBDC ; =0x0209AA54
	strb r6, [r0, #1]
	ldr r0, [r4]
	add r0, #0xcc
	bl sub_0203E44C
	ldr r0, [r4]
	add r0, #0xf4
	bl sub_0203E44C
	add r1, r5, #0
	ldr r2, [r4]
	add r1, #0x38
	mov r0, #0
	strb r0, [r2, r1]
	add r0, r5, #0
	ldr r1, [r4]
	mov r2, #1
	add r0, #0x3b
	strb r2, [r1, r0]
	add r1, r5, #0
	ldr r2, [r4]
	add r1, #0x3a
	mov r0, #0
	strb r0, [r2, r1]
	ldr r1, [r4]
	add r5, #0x3d
	strb r0, [r1, r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203EBD8: .word 0x02141898
_0203EBDC: .word 0x0209AA54
	thumb_func_end sub_0203EA5C

	thumb_func_start sub_0203EBE0
sub_0203EBE0: ; 0x0203EBE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r5, #8
	blt _0203EBF2
	ldr r0, _0203EC38 ; =0x0209AA68
	ldr r2, _0203EC3C ; =0x0209AA6C
	mov r1, #0
	bl sub_0203CB80
_0203EBF2:
	ldr r7, _0203EC40 ; =0x02141898
	mov r4, #0x6d
	ldr r1, [r7]
	lsl r0, r5, #2
	add r1, r1, r0
	lsl r4, r4, #2
	mov r0, #0
	str r0, [r1, r4]
	ldr r1, [r7]
	add r0, r4, #0
	add r0, #0x2c
	ldr r2, [r1, r0]
	add r0, r1, #0
	ldr r3, [r1, #0x10]
	add r1, r5, #0
	mul r1, r2
	lsl r6, r5, #4
	add r0, #0x4c
	add r0, r0, r6
	add r1, r3, r1
	bl sub_0203DFC0
	add r1, r4, #0
	ldr r0, [r7]
	add r1, #0x23
	add r2, r0, r5
	mov r0, #0
	strb r0, [r2, r1]
	ldr r0, [r7]
	sub r4, #0x98
	add r0, r0, r4
	add r0, r0, r6
	bl sub_0203E8D4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203EC38: .word 0x0209AA68
_0203EC3C: .word 0x0209AA6C
_0203EC40: .word 0x02141898
	thumb_func_end sub_0203EBE0

	thumb_func_start sub_0203EC44
sub_0203EC44: ; 0x0203EC44
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	add r5, r0, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203EC6C
	add r0, r5, #0
	add r0, #0x6c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0203EC6C
	mov r2, #1
	b _0203EC6E
_0203EC6C:
	mov r2, #0
_0203EC6E:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0203E910
	add r4, #0x56
	ldrh r0, [r4]
	mov r4, #0xd3
	lsl r4, r4, #2
	add r6, r4, #0
	sub r6, #0xc
	ldr r6, [r5, r6]
	ldr r3, [r5, r4]
	ldr r6, [r6, #4]
	add r1, r5, #0
	mov r2, #0
	blx r6
	add r1, r4, #0
	sub r1, #0xc
	ldr r1, [r5, r1]
	mov r0, #0
	ldr r1, [r1, #8]
	blx r1
	sub r4, #0xc
	ldr r1, [r5, r4]
	ldr r0, _0203ECA8 ; =sub_0203F7F0
	ldr r1, [r1, #0x68]
	blx r1
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203ECA8: .word sub_0203F7F0
	thumb_func_end sub_0203EC44

	thumb_func_start sub_0203ECAC
sub_0203ECAC: ; 0x0203ECAC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	add r2, r0, #0
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r4, #0
	add r1, #0x90
	ldr r1, [r1]
	blx r1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0203ECAC

	thumb_func_start sub_0203ECC8
sub_0203ECC8: ; 0x0203ECC8
	ldr r3, _0203ECCC ; =sub_0203F348
	bx r3
	.align 2, 0
_0203ECCC: .word sub_0203F348
	thumb_func_end sub_0203ECC8

	thumb_func_start sub_0203ECD0
sub_0203ECD0: ; 0x0203ECD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x66
	mov r1, #0xd
	strb r5, [r0]
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	ldr r0, _0203ED14 ; =sub_0203ECC8
	ldr r1, [r1, #0x68]
	blx r1
	add r4, #0x56
	ldrh r1, [r4]
	mov r0, #0x80
	mov r2, #0
	bl sub_0203E910
	mov r0, #0
	bl sub_0203EBE0
	mov r0, #1
	bl sub_0203EBE0
	mov r0, #2
	bl sub_0203EBE0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0203ED14: .word sub_0203ECC8
	thumb_func_end sub_0203ECD0

	thumb_func_start sub_0203ED18
sub_0203ED18: ; 0x0203ED18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203EBE0
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0203ED3E
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, #0
	blx r2
_0203ED3E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203ED18

	thumb_func_start sub_0203ED40
sub_0203ED40: ; 0x0203ED40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203EBE0
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0203ED66
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, #0
	blx r2
_0203ED66:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203ED40

	thumb_func_start sub_0203ED68
sub_0203ED68: ; 0x0203ED68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	add r4, #0x66
	strb r6, [r4]
	mov r4, #0xd
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r1, [r5, r4]
	ldr r0, _0203EDD8 ; =sub_0203ED18
	ldr r1, [r1, #0x3c]
	blx r1
	ldr r1, [r5, r4]
	ldr r0, _0203EDDC ; =sub_0203F7F0
	ldr r1, [r1, #0x68]
	blx r1
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203EDB0
	add r0, r5, #0
	add r0, #0x6c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0203EDB0
	mov r4, #1
	b _0203EDB2
_0203EDB0:
	mov r4, #0
_0203EDB2:
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x56
	ldrh r1, [r1]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203E910
	mov r2, #0xd
	lsl r2, r2, #6
	ldr r2, [r5, r2]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x40]
	blx r2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203EDD8: .word sub_0203ED18
_0203EDDC: .word sub_0203F7F0
	thumb_func_end sub_0203ED68

	thumb_func_start sub_0203EDE0
sub_0203EDE0: ; 0x0203EDE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02042E78
	mov r6, #0xd
	add r4, r0, #0
	lsl r6, r6, #6
	ldr r1, [r4, r6]
	ldr r0, _0203EE44 ; =sub_0203ED40
	ldr r1, [r1, #0x3c]
	blx r1
	ldr r2, [r4, r6]
	add r0, r5, #0
	ldr r2, [r2, #0x44]
	mov r1, #0
	blx r2
	add r5, r0, #0
	cmp r5, #1
	bne _0203EE40
	ldr r1, [r4, r6]
	ldr r0, _0203EE48 ; =sub_0203F8F8
	ldr r1, [r1, #0x68]
	blx r1
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203EE26
	add r4, #0x6c
	ldrh r0, [r4]
	cmp r0, #0
	beq _0203EE26
	mov r4, #1
	b _0203EE28
_0203EE26:
	mov r4, #0
_0203EE28:
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x56
	ldrh r1, [r1]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0203E910
	ldr r0, _0203EE4C ; =0x0209AA54
	mov r1, #4
	strb r1, [r0, #1]
_0203EE40:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203EE44: .word sub_0203ED40
_0203EE48: .word sub_0203F8F8
_0203EE4C: .word 0x0209AA54
	thumb_func_end sub_0203EDE0

	thumb_func_start sub_0203EE50
sub_0203EE50: ; 0x0203EE50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02042E78
	mov r7, #0xd
	add r4, r0, #0
	lsl r7, r7, #6
	ldr r1, [r4, r7]
	ldr r0, _0203EE98 ; =sub_0203ED40
	ldr r1, [r1, #0x3c]
	blx r1
	ldr r0, [r4, r7]
	add r0, #0xbc
	ldr r0, [r0]
	blx r0
	add r6, r0, #0
	cmp r6, #1
	bne _0203EE94
	ldr r1, [r4, r7]
	ldr r0, _0203EE9C ; =sub_0203F8F8
	ldr r1, [r1, #0x68]
	blx r1
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x56
	ldrh r1, [r1]
	add r0, r5, #0
	mov r2, #0
	bl sub_0203E910
	ldr r0, _0203EEA0 ; =0x0209AA54
	mov r1, #4
	strb r1, [r0, #1]
_0203EE94:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203EE98: .word sub_0203ED40
_0203EE9C: .word sub_0203F8F8
_0203EEA0: .word 0x0209AA54
	thumb_func_end sub_0203EE50

	thumb_func_start sub_0203EEA4
sub_0203EEA4: ; 0x0203EEA4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0203EEBE
	add r1, #0xc0
	ldr r1, [r1]
	add r0, r4, #0
	blx r1
_0203EEBE:
	pop {r4, pc}
	thumb_func_end sub_0203EEA4

	thumb_func_start sub_0203EEC0
sub_0203EEC0: ; 0x0203EEC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r7, r3, #0
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042E84
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	ldr r0, _0203EF30 ; =sub_0203F8F8
	ldr r1, [r1, #0x68]
	blx r1
	cmp r5, #0
	beq _0203EF18
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203EEFE
	add r0, r4, #0
	add r0, #0x6c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0203EEFE
	mov r6, #1
	b _0203EF00
_0203EEFE:
	mov r6, #0
_0203EF00:
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x56
	ldrh r1, [r1]
	ldr r0, [sp, #8]
	add r2, r6, #0
	bl sub_0203E910
	ldr r0, _0203EF34 ; =0x0209AA54
	mov r1, #4
	strb r1, [r0, #1]
_0203EF18:
	add r0, r5, #0
	mov r5, #0xd
	str r7, [sp]
	lsl r5, r5, #6
	ldr r4, [r4, r5]
	ldr r1, [sp, #4]
	ldr r4, [r4, #0x48]
	mov r2, #0
	mov r3, #0
	blx r4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0203EF30: .word sub_0203F8F8
_0203EF34: .word 0x0209AA54
	thumb_func_end sub_0203EEC0

	thumb_func_start sub_0203EF38
sub_0203EF38: ; 0x0203EF38
	push {r4, lr}
	bl sub_02042E78
	bl sub_02042E84
	ldr r4, _0203EF9C ; =0x02141898
	ldr r0, [r4]
	cmp r0, #0
	beq _0203EF9A
	ldr r0, [r0, #0x14]
	bl sub_0203A24C
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl sub_0203A24C
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	bl sub_0203A24C
	ldr r0, [r4]
	add r0, #0xf4
	bl sub_0203E46C
	ldr r0, [r4]
	add r0, #0xcc
	bl sub_0203E46C
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0203A24C
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_0203A24C
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_0203A24C
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_0203A24C
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
_0203EF9A:
	pop {r4, pc}
	.align 2, 0
_0203EF9C: .word 0x02141898
	thumb_func_end sub_0203EF38

	thumb_func_start sub_0203EFA0
sub_0203EFA0: ; 0x0203EFA0
	push {r3, lr}
	ldr r0, _0203EFCC ; =0x02141898
	ldr r1, [r0]
	mov r0, #0x7b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203EFCA
	bl sub_0203FFC4
	cmp r0, #0
	bne _0203EFC6
	bl sub_0204001C
	cmp r0, #0
	bne _0203EFCA
	bl sub_0203EF38
	pop {r3, pc}
_0203EFC6:
	bl sub_0203EF38
_0203EFCA:
	pop {r3, pc}
	.align 2, 0
_0203EFCC: .word 0x02141898
	thumb_func_end sub_0203EFA0

	thumb_func_start sub_0203EFD0
sub_0203EFD0: ; 0x0203EFD0
	push {r3, lr}
	ldr r1, _0203EFE4 ; =0x02141898
	ldr r1, [r1]
	cmp r1, #0
	beq _0203EFE2
	cmp r0, #8
	bhs _0203EFE2
	bl sub_0203EBE0
_0203EFE2:
	pop {r3, pc}
	.align 2, 0
_0203EFE4: .word 0x02141898
	thumb_func_end sub_0203EFD0

	thumb_func_start sub_0203EFE8
sub_0203EFE8: ; 0x0203EFE8
	push {r3, r4, r5, lr}
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042E84
	add r5, r0, #0
	ldr r0, _0203F0F0 ; =0x02141898
	ldr r0, [r0]
	cmp r0, #0
	bne _0203F012
	cmp r4, #0
	beq _0203F00E
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0
	ldr r1, [r1, #0xc]
	blx r1
_0203F00E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203F012:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0203F026
	blx r0
	bl sub_0203E7F8
_0203F026:
	ldr r0, _0203F0F0 ; =0x02141898
	ldr r1, [r0]
	ldr r0, _0203F0F4 ; =0x000001EA
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0203F0DE
	bl sub_0204003C
	cmp r0, #0
	bne _0203F0DE
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _0203F058
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203F052
	cmp r0, #5
	bne _0203F058
_0203F052:
	bl sub_0203F234
	b _0203F0B0
_0203F058:
	add r0, r5, #0
	add r0, #0x65
	ldrb r1, [r0]
	add r0, r1, #0
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0203F070
	bl sub_0203F2CC
	b _0203F0B0
_0203F070:
	add r1, #0xff
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0203F080
	bl sub_0203F46C
	b _0203F0B0
_0203F080:
	bl sub_0203F4F0
	bl sub_0203FDBC
	bl sub_0203FFC4
	cmp r0, #0
	bne _0203F0A8
	mov r0, #0
	bl sub_0203FE74
	cmp r0, #0
	beq _0203F0A8
	add r0, r5, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203F0A8
	bl sub_0203F6A8
_0203F0A8:
	bl sub_0203FFC4
	cmp r0, #0
	bne _0203F0B4
_0203F0B0:
	bl sub_0203FE00
_0203F0B4:
	add r5, #0x65
	ldrb r0, [r5]
	cmp r0, #1
	beq _0203F0D4
	cmp r0, #2
	beq _0203F0D4
	ldr r0, _0203F0F0 ; =0x02141898
	ldr r1, [r0]
	mov r0, #0x79
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	ldr r1, [r1, #0xc]
	blx r1
_0203F0D4:
	bl sub_020410DC
	bl sub_0203EFA0
	b _0203F0EA
_0203F0DE:
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0
	ldr r1, [r1, #0xc]
	blx r1
_0203F0EA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0203F0F0: .word 0x02141898
_0203F0F4: .word 0x000001EA
	thumb_func_end sub_0203EFE8

	thumb_func_start sub_0203F0F8
sub_0203F0F8: ; 0x0203F0F8
	push {r3, lr}
	ldr r0, _0203F108 ; =0x02141898
	ldr r0, [r0]
	cmp r0, #0
	beq _0203F106
	bl sub_0203EA5C
_0203F106:
	pop {r3, pc}
	.align 2, 0
_0203F108: .word 0x02141898
	thumb_func_end sub_0203F0F8

	thumb_func_start sub_0203F10C
sub_0203F10C: ; 0x0203F10C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0203F190 ; =0x0209AA54
	mov r5, #0
	ldrb r1, [r7, #1]
	cmp r1, #4
	beq _0203F11C
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F11C:
	cmp r0, #0
	beq _0203F162
	ldr r7, _0203F194 ; =0x02141898
	mov r4, #0x1b
	ldr r6, [r7]
	lsl r4, r4, #4
	ldr r0, [r6, r4]
	cmp r0, #0
	ble _0203F132
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F132:
	bl sub_02042DE8
	add r3, r4, #0
	add r3, #0x25
	add r2, r0, #0
	add r1, r6, #0
	ldrb r3, [r6, r3]
	ldr r0, [r6]
	add r1, #0xcc
	bl sub_0203FA28
	cmp r0, #0
	beq _0203F15A
	add r0, r4, #0
	ldr r1, [r7]
	add r0, #0x25
	ldrb r0, [r1, r0]
	add r4, #0x25
	add r0, r0, #1
	strb r0, [r1, r4]
_0203F15A:
	ldr r0, _0203F190 ; =0x0209AA54
	mov r1, #0
	strb r1, [r0, #1]
	b _0203F18A
_0203F162:
	ldr r0, _0203F194 ; =0x02141898
	ldr r4, [r0]
	bl sub_02042DE8
	ldr r6, _0203F198 ; =0x000001D5
	add r2, r0, #0
	add r1, r4, #0
	ldrb r3, [r4, r6]
	ldr r0, [r4]
	add r1, #0xcc
	bl sub_0203FA28
	cmp r0, #0
	beq _0203F18C
	ldr r0, _0203F194 ; =0x02141898
	ldr r1, [r0]
	ldrb r0, [r1, r6]
	add r0, r0, #1
	strb r0, [r1, r6]
	strb r5, [r7, #1]
_0203F18A:
	mov r5, #1
_0203F18C:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203F190: .word 0x0209AA54
_0203F194: .word 0x02141898
_0203F198: .word 0x000001D5
	thumb_func_end sub_0203F10C

	thumb_func_start sub_0203F19C
sub_0203F19C: ; 0x0203F19C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02042E78
	add r5, r0, #0
	bl sub_02042DE8
	add r4, r0, #0
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	beq _0203F226
	bl sub_0203FFC4
	bl sub_0203FE74
	cmp r0, #0
	beq _0203F226
	ldr r6, _0203F228 ; =0x0209AA54
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0203F226
	bl sub_0203FFC4
	cmp r0, #0
	beq _0203F200
	ldr r7, _0203F22C ; =0x02141898
	add r1, r4, #0
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r0, [r7]
	ldr r4, [r5, r4]
	ldr r0, [r0]
	ldr r3, _0203F230 ; =sub_0203F9C0
	ldr r4, [r4, #0x64]
	mov r2, #0
	blx r4
	cmp r0, #0
	beq _0203F226
	mov r0, #2
	strb r0, [r6, #1]
	mov r0, #0x1b
	ldr r2, [r7]
	lsl r0, r0, #4
	ldr r1, [r2, r0]
	add r1, r1, #1
	str r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0203F200:
	mov r0, #2
	strb r0, [r6, #1]
	mov r0, #1
	bl sub_0203F9C0
	ldr r5, _0203F22C ; =0x02141898
	lsl r2, r4, #0x10
	ldr r1, [r5]
	mov r0, #0
	ldr r1, [r1]
	lsr r2, r2, #0x10
	bl sub_0203F7F0
	mov r0, #0x1b
	ldr r2, [r5]
	lsl r0, r0, #4
	ldr r1, [r2, r0]
	add r1, r1, #1
	str r1, [r2, r0]
_0203F226:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203F228: .word 0x0209AA54
_0203F22C: .word 0x02141898
_0203F230: .word sub_0203F9C0
	thumb_func_end sub_0203F19C

	thumb_func_start sub_0203F234
sub_0203F234: ; 0x0203F234
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02042E78
	add r5, r0, #0
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x58]
	blx r0
	cmp r0, #0
	beq _0203F2BC
	ldr r0, _0203F2C0 ; =0x02141898
	ldr r1, [r0]
	ldr r0, _0203F2C4 ; =0x000001EB
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203F25C
	mov r0, #1
	bl sub_0203F10C
_0203F25C:
	ldr r4, _0203F2C0 ; =0x02141898
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r4]
	ldr r1, [r5, r1]
	ldr r0, [r0]
	ldr r1, [r1, #0x5c]
	blx r1
	cmp r0, #1
	bne _0203F2B4
	ldr r0, _0203F2C8 ; =0x0209AA54
	mov r1, #4
	strb r1, [r0, #1]
	ldr r1, [r4]
	ldr r0, _0203F2C4 ; =0x000001EB
	mov r2, #1
	strb r2, [r1, r0]
	bl sub_02042DE8
	add r7, r0, #0
	bl sub_02042DC0
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0203F2BC
	lsl r0, r7, #0x10
	lsr r7, r0, #0x10
_0203F294:
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r4, #0
	ldr r1, [r1, #0x60]
	blx r1
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r2, r7, #0
	bl sub_0203F7F0
	add r4, r4, #1
	cmp r4, r6
	blt _0203F294
	pop {r3, r4, r5, r6, r7, pc}
_0203F2B4:
	ldr r1, [r4]
	ldr r0, _0203F2C4 ; =0x000001EB
	mov r2, #0
	strb r2, [r1, r0]
_0203F2BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203F2C0: .word 0x02141898
_0203F2C4: .word 0x000001EB
_0203F2C8: .word 0x0209AA54
	thumb_func_end sub_0203F234

	thumb_func_start sub_0203F2CC
sub_0203F2CC: ; 0x0203F2CC
	push {r4, r5, r6, lr}
	bl sub_02042E78
	add r5, r0, #0
	ldr r0, _0203F340 ; =0x02141898
	ldr r0, [r0]
	add r0, #0xcc
	bl sub_0203E174
	cmp r0, #0
	beq _0203F2F0
	bl sub_02040440
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
_0203F2F0:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _0203F300
	blx r0
_0203F300:
	mov r6, #0xd
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	ldr r0, [r0, #0x6c]
	blx r0
	cmp r0, #1
	bne _0203F33C
	bl sub_02042DE8
	add r4, r0, #0
	ldr r0, [r5, r6]
	add r0, #0xa0
	ldr r0, [r0]
	blx r0
	cmp r0, #1
	bne _0203F33C
	mov r0, #0
	bl sub_0203F10C
	cmp r0, #0
	beq _0203F33C
	ldr r0, _0203F340 ; =0x02141898
	add r1, r4, #0
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_0203F3F0
	ldr r0, _0203F344 ; =0x0209AA54
	mov r1, #4
	strb r1, [r0, #1]
_0203F33C:
	pop {r4, r5, r6, pc}
	nop
_0203F340: .word 0x02141898
_0203F344: .word 0x0209AA54
	thumb_func_end sub_0203F2CC

	thumb_func_start sub_0203F348
sub_0203F348: ; 0x0203F348
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02042E84
	bl sub_02042DE8
	ldrb r0, [r4, #4]
	cmp r0, #0xff
	bne _0203F362
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F362:
	ldr r1, _0203F3E8 ; =0x02141898
	ldr r2, [r1]
	lsl r1, r5, #4
	add r1, r2, r1
	ldr r1, [r1, #0x54]
	cmp r1, #0
	bne _0203F37A
	mov r1, #2
	tst r0, r1
	beq _0203F37A
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F37A:
	add r0, r4, #2
	sub r1, r6, #2
	bl sub_0204405C
	lsl r1, r0, #0x18
	ldrb r2, [r4]
	lsr r1, r1, #0x18
	cmp r2, r1
	bne _0203F39A
	mov r1, #0xff
	lsl r1, r1, #8
	and r0, r1
	asr r1, r0, #8
	ldrb r0, [r4, #1]
	cmp r1, r0
	beq _0203F39E
_0203F39A:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F39E:
	ldr r0, _0203F3E8 ; =0x02141898
	ldr r1, [r0]
	ldr r0, _0203F3EC ; =0x000001D7
	add r1, r1, r0
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _0203F3BC
	ldrb r2, [r4, #5]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r0
	beq _0203F3BC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F3BC:
	ldrb r0, [r4, #5]
	strb r0, [r1, r5]
	ldrb r1, [r4, #4]
	mov r0, #8
	ldrb r2, [r4, #2]
	tst r0, r1
	beq _0203F3CC
	add r2, #0xff
_0203F3CC:
	ldr r6, _0203F3E8 ; =0x02141898
	lsl r5, r5, #4
	ldr r0, [r6]
	add r1, r4, #7
	add r0, #0x4c
	add r0, r0, r5
	bl sub_0203DFD0
	ldr r1, [r6]
	mov r0, #1
	add r1, r1, r5
	str r0, [r1, #0x54]
	pop {r4, r5, r6, pc}
	nop
_0203F3E8: .word 0x02141898
_0203F3EC: .word 0x000001D7
	thumb_func_end sub_0203F348

	thumb_func_start sub_0203F3F0
sub_0203F3F0: ; 0x0203F3F0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r7, r1, #0
	bl sub_02042E84
	bl sub_02042E78
	mov r5, #0xd
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	add r0, #0xa4
	ldr r0, [r0]
	blx r0
	cmp r0, #0
	beq _0203F41C
	ldr r0, [r4, r5]
	add r0, #0xac
	ldr r0, [r0]
	blx r0
	cmp r0, #0
	bne _0203F428
_0203F41C:
	ldr r0, _0203F460 ; =0x0209AA68
	ldr r2, _0203F464 ; =0x0209AA88
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_0203F428:
	ldr r0, _0203F468 ; =0x0209AA54
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0203F45E
	ldr r6, [r4, r5]
	ldr r0, [sp]
	ldr r6, [r6, #0x64]
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	blx r6
	ldr r0, [r4, r5]
	add r0, #0x80
	ldr r0, [r0]
	blx r0
	lsl r0, r0, #0x10
	lsl r2, r7, #0x10
	ldr r1, [sp]
	lsr r0, r0, #0x10
	lsr r2, r2, #0x10
	bl sub_0203F348
	add r5, #0xcc
	mov r0, #4
	add r1, r5, #0
	bl sub_0203E8C8
_0203F45E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203F460: .word 0x0209AA68
_0203F464: .word 0x0209AA88
_0203F468: .word 0x0209AA54
	thumb_func_end sub_0203F3F0

	thumb_func_start sub_0203F46C
sub_0203F46C: ; 0x0203F46C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02042E84
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042DE8
	add r6, r0, #0
	ldr r0, _0203F4E4 ; =0x02141898
	ldr r7, _0203F4E8 ; =0x000001E7
	ldr r5, [r0]
	ldrb r0, [r5, r7]
	cmp r0, #0
	beq _0203F4E0
	add r0, r7, #6
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0203F4B6
	bl sub_02042DE8
	add r3, r7, #0
	sub r3, #0x12
	add r2, r0, #0
	add r1, r5, #0
	ldrb r3, [r5, r3]
	ldr r0, [r5]
	add r1, #0xcc
	bl sub_0203FA28
	cmp r0, #0
	beq _0203F4B6
	ldr r0, _0203F4E4 ; =0x02141898
	mov r2, #1
	ldr r1, [r0]
	add r0, r7, #6
	strb r2, [r1, r0]
_0203F4B6:
	ldr r7, _0203F4E4 ; =0x02141898
	ldr r0, _0203F4EC ; =0x000001ED
	ldr r1, [r7]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0203F4E0
	ldr r0, [r1]
	add r1, r6, #0
	mov r6, #0xd
	lsl r6, r6, #6
	ldr r4, [r4, r6]
	mov r2, #0
	ldr r4, [r4, #0x64]
	mov r3, #0
	mov r5, #0
	blx r4
	cmp r0, #0
	beq _0203F4E0
	ldr r1, [r7]
	ldr r0, _0203F4EC ; =0x000001ED
	strb r5, [r1, r0]
_0203F4E0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203F4E4: .word 0x02141898
_0203F4E8: .word 0x000001E7
_0203F4EC: .word 0x000001ED
	thumb_func_end sub_0203F46C

	thumb_func_start sub_0203F4F0
sub_0203F4F0: ; 0x0203F4F0
	push {r3, lr}
	bl sub_02042E84
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	beq _0203F51E
	bl sub_0203FFC4
	bl sub_0203FE74
	cmp r0, #0
	beq _0203F51E
	mov r0, #1
	bl sub_0203F10C
	bl sub_0203F19C
_0203F51E:
	pop {r3, pc}
	thumb_func_end sub_0203F4F0

	thumb_func_start sub_0203F520
sub_0203F520: ; 0x0203F520
	push {r4, r5, r6, lr}
	bl sub_02042E78
	add r5, r0, #0
	bl sub_02042DC0
	ldr r0, _0203F620 ; =0x0209AA54
	ldrb r0, [r0]
	cmp r0, #1
	bne _0203F5C6
	bl sub_0203FF6C
	cmp r0, #1
	ble _0203F5C6
	ldr r6, _0203F624 ; =0x0000046A
	mov r0, #2
	add r1, r6, #0
	bl sub_0203E8C8
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	beq _0203F578
	bl sub_0203E8E8
	add r1, r0, #0
	ldr r0, _0203F628 ; =0x02141898
	ldr r4, [r5, r4]
	ldr r0, [r0]
	ldr r3, _0203F62C ; =sub_0203F9F0
	ldr r0, [r0, #8]
	ldr r4, [r4, #0x64]
	mov r2, #0
	blx r4
	cmp r0, #0
	bne _0203F5C6
	mov r0, #1
	add r1, r6, #4
_0203F572:
	bl sub_0203E8C8
	b _0203F5C6
_0203F578:
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	beq _0203F590
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203F5C6
_0203F590:
	mov r6, #0xd
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	add r0, #0xa0
	ldr r0, [r0]
	blx r0
	cmp r0, #0
	bne _0203F5A6
	mov r0, #1
	ldr r1, _0203F630 ; =0x00000475
	b _0203F572
_0203F5A6:
	ldr r4, _0203F628 ; =0x02141898
	ldr r0, [r4]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0203F61E
	bl sub_02042DE8
	add r1, r0, #0
	ldr r0, [r4]
	ldr r4, [r5, r6]
	ldr r0, [r0, #8]
	ldr r4, [r4, #0x64]
	mov r2, #0x64
	mov r3, #0
	blx r4
_0203F5C6:
	ldr r0, _0203F620 ; =0x0209AA54
	ldrb r0, [r0]
	cmp r0, #2
	bne _0203F5F0
	bl sub_0203F670
	bl sub_0203E8E8
	add r2, r0, #0
	ldr r1, _0203F628 ; =0x02141898
	lsl r2, r2, #0x10
	ldr r1, [r1]
	mov r0, #0
	ldr r1, [r1, #8]
	lsr r2, r2, #0x10
	bl sub_0203F8F8
	ldr r1, _0203F634 ; =0x0000048D
	mov r0, #3
	bl sub_0203E8C8
_0203F5F0:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	beq _0203F616
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	beq _0203F616
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203F61E
_0203F616:
	ldr r1, _0203F638 ; =0x00000492
	mov r0, #4
	bl sub_0203E8C8
_0203F61E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203F620: .word 0x0209AA54
_0203F624: .word 0x0000046A
_0203F628: .word 0x02141898
_0203F62C: .word sub_0203F9F0
_0203F630: .word 0x00000475
_0203F634: .word 0x0000048D
_0203F638: .word 0x00000492
	thumb_func_end sub_0203F520

	thumb_func_start sub_0203F63C
sub_0203F63C: ; 0x0203F63C
	push {r4, r5, r6, lr}
	mov r6, #0x6d
	ldr r4, _0203F66C ; =0x02141898
	mov r5, #0
	lsl r6, r6, #2
_0203F646:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_0203FE74
	cmp r0, #0
	beq _0203F662
	ldr r1, [r4]
	lsl r0, r5, #2
	add r0, r1, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	ble _0203F662
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F662:
	add r5, r5, #1
	cmp r5, #8
	blt _0203F646
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0203F66C: .word 0x02141898
	thumb_func_end sub_0203F63C

	thumb_func_start sub_0203F670
sub_0203F670: ; 0x0203F670
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02042DC0
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0203F6A2
	mov r6, #0x6d
	ldr r7, _0203F6A4 ; =0x02141898
	lsl r6, r6, #2
_0203F684:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0203FE74
	cmp r0, #0
	beq _0203F69C
	ldr r1, [r7]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, [r1, r6]
	add r0, r0, #1
	str r0, [r1, r6]
_0203F69C:
	add r4, r4, #1
	cmp r4, r5
	blt _0203F684
_0203F6A2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203F6A4: .word 0x02141898
	thumb_func_end sub_0203F670

	thumb_func_start sub_0203F6A8
sub_0203F6A8: ; 0x0203F6A8
	push {r4, r5, r6, lr}
	bl sub_02042E78
	add r5, r0, #0
	bl sub_02042E84
	add r4, r0, #0
	add r0, #0x65
	ldrb r1, [r0]
	add r0, r1, #0
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0203F73E
	mov r0, #0
	mov r6, #0
	bl sub_0203FE74
	cmp r0, #0
	beq _0203F7CC
	add r4, #0x64
	ldrb r0, [r4]
	cmp r0, #0
	beq _0203F6E4
	ldr r0, _0203F7D0 ; =0x0209AA68
	ldr r2, _0203F7D4 ; =0x0209AA8C
	add r1, r6, #0
	bl sub_0203CB80
_0203F6E4:
	ldr r0, _0203F7D8 ; =0x0209AA54
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203F70A
	ldr r0, _0203F7DC ; =0x02141898
	ldr r1, [r0]
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0203F70A
	bl sub_0203F63C
	cmp r0, #0
	beq _0203F70A
	ldr r1, _0203F7E0 ; =0x000004DA
	mov r0, #1
	bl sub_0203E8C8
_0203F70A:
	ldr r0, _0203F7D8 ; =0x0209AA54
	ldrb r0, [r0]
	cmp r0, #1
	bne _0203F7CC
	bl sub_0203E8E8
	add r1, r0, #0
	ldr r0, _0203F7DC ; =0x02141898
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r0, [r0]
	ldr r4, [r5, r4]
	ldr r0, [r0, #8]
	ldr r4, [r4, #0x64]
	mov r2, #0
	mov r3, #0
	blx r4
	cmp r0, #0
	beq _0203F7CC
	ldr r1, _0203F7E4 ; =0x000004E1
	mov r0, #4
	bl sub_0203E8C8
	bl sub_0203F670
	pop {r4, r5, r6, pc}
_0203F73E:
	add r1, #0xfd
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0203F780
	ldr r0, _0203F7D8 ; =0x0209AA54
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203F77A
	ldr r6, _0203F7DC ; =0x02141898
	ldr r5, [r6]
	bl sub_0203E8E8
	mov r4, #0x75
	lsl r4, r4, #2
	add r2, r0, #0
	add r1, r5, #0
	ldrb r3, [r5, r4]
	ldr r0, [r5, #8]
	add r1, #0xf4
	bl sub_0203FA28
	ldr r1, [r6]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	ldr r1, _0203F7E8 ; =0x000004F4
	mov r0, #1
	bl sub_0203E8C8
_0203F77A:
	bl sub_0203F520
	pop {r4, r5, r6, pc}
_0203F780:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	beq _0203F7CC
	bl sub_0203F63C
	cmp r0, #0
	beq _0203F7CC
	ldr r0, _0203F7D8 ; =0x0209AA54
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203F7C8
	ldr r6, _0203F7DC ; =0x02141898
	ldr r5, [r6]
	bl sub_0203E8E8
	mov r4, #0x75
	lsl r4, r4, #2
	add r2, r0, #0
	add r1, r5, #0
	ldrb r3, [r5, r4]
	ldr r0, [r5, #8]
	add r1, #0xf4
	bl sub_0203FA28
	ldr r1, [r6]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	ldr r1, _0203F7EC ; =0x00000501
	mov r0, #1
	bl sub_0203E8C8
_0203F7C8:
	bl sub_0203F520
_0203F7CC:
	pop {r4, r5, r6, pc}
	nop
_0203F7D0: .word 0x0209AA68
_0203F7D4: .word 0x0209AA8C
_0203F7D8: .word 0x0209AA54
_0203F7DC: .word 0x02141898
_0203F7E0: .word 0x000004DA
_0203F7E4: .word 0x000004E1
_0203F7E8: .word 0x000004F4
_0203F7EC: .word 0x00000501
	thumb_func_end sub_0203F6A8

	thumb_func_start sub_0203F7F0
sub_0203F7F0: ; 0x0203F7F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02042DE8
	cmp r4, #0
	bne _0203F804
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F804:
	ldr r7, _0203F8E8 ; =0x02141898
	mov r2, #0x6d
	ldr r0, [r7]
	lsl r2, r2, #2
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r3, [r1, r0]
	sub r3, r3, #1
	str r3, [r1, r0]
	cmp r5, #0
	bne _0203F822
	ldrb r1, [r4, #3]
	ldr r0, [r7]
	add r2, #0x30
	strh r1, [r0, r2]
_0203F822:
	ldrb r0, [r4, #4]
	cmp r0, #0xff
	bne _0203F82C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F82C:
	ldr r1, _0203F8E8 ; =0x02141898
	ldr r2, [r1]
	lsl r1, r5, #4
	add r1, r2, r1
	ldr r1, [r1, #0x54]
	cmp r1, #0
	bne _0203F844
	mov r1, #2
	tst r0, r1
	beq _0203F844
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F844:
	add r0, r4, #2
	sub r1, r6, #2
	bl sub_0204405C
	lsl r1, r0, #0x18
	ldrb r2, [r4]
	lsr r1, r1, #0x18
	cmp r2, r1
	bne _0203F864
	mov r1, #0xff
	lsl r1, r1, #8
	and r0, r1
	asr r1, r0, #8
	ldrb r0, [r4, #1]
	cmp r1, r0
	beq _0203F884
_0203F864:
	bl sub_02040158
	bl sub_02042540
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0203F880
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	ldr r3, _0203F8EC ; =0x000003F2
	bl sub_020424AC
_0203F880:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F884:
	ldr r0, _0203F8E8 ; =0x02141898
	ldr r1, [r0]
	ldr r0, _0203F8F0 ; =0x000001D7
	add r1, r1, r0
	ldrb r0, [r1, r5]
	cmp r0, #0
	beq _0203F8BE
	ldrb r2, [r4, #5]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r0
	beq _0203F8BE
	bl sub_02040158
	bl sub_02042540
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0203F8BA
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	ldr r3, _0203F8F4 ; =0x000003F3
	bl sub_020424AC
_0203F8BA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203F8BE:
	ldrb r0, [r4, #5]
	strb r0, [r1, r5]
	ldrb r1, [r4, #4]
	mov r0, #8
	ldrb r2, [r4, #2]
	tst r0, r1
	beq _0203F8CE
	add r2, #0xff
_0203F8CE:
	ldr r6, _0203F8E8 ; =0x02141898
	lsl r5, r5, #4
	ldr r0, [r6]
	add r1, r4, #7
	add r0, #0x4c
	add r0, r0, r5
	bl sub_0203DFD0
	ldr r1, [r6]
	mov r0, #1
	add r1, r1, r5
	str r0, [r1, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203F8E8: .word 0x02141898
_0203F8EC: .word 0x000003F2
_0203F8F0: .word 0x000001D7
_0203F8F4: .word 0x000003F3
	thumb_func_end sub_0203F7F0

	thumb_func_start sub_0203F8F8
sub_0203F8F8: ; 0x0203F8F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02042E84
	bl sub_02042DE8
	ldr r2, _0203F9B4 ; =0x02141898
	mov r1, #0x1b
	ldr r0, [r2]
	lsl r1, r1, #4
	ldr r3, [r0, r1]
	sub r3, r3, #1
	str r3, [r0, r1]
	cmp r4, #0
	bne _0203F91E
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F91E:
	cmp r5, #0
	bne _0203F92A
	ldrb r3, [r4, #3]
	ldr r0, [r2]
	add r1, #0x34
	strh r3, [r0, r1]
_0203F92A:
	ldrb r1, [r4, #4]
	cmp r1, #0xff
	bne _0203F934
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F934:
	ldr r0, _0203F9B4 ; =0x02141898
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _0203F948
	mov r0, #2
	tst r0, r1
	beq _0203F948
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F948:
	add r0, r4, #2
	sub r1, r6, #2
	bl sub_0204405C
	lsl r1, r0, #0x18
	ldrb r2, [r4]
	lsr r1, r1, #0x18
	cmp r2, r1
	bne _0203F968
	mov r1, #0xff
	lsl r1, r1, #8
	and r0, r1
	asr r1, r0, #8
	ldrb r0, [r4, #1]
	cmp r1, r0
	beq _0203F988
_0203F968:
	bl sub_02040158
	bl sub_02042540
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0203F984
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	ldr r3, _0203F9B8 ; =0x000003F2
	bl sub_020424AC
_0203F984:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203F988:
	ldr r0, _0203F9B4 ; =0x02141898
	ldrb r2, [r4, #5]
	ldr r1, [r0]
	ldr r0, _0203F9BC ; =0x000001D6
	strb r2, [r1, r0]
	ldrb r1, [r4, #4]
	mov r0, #8
	ldrb r2, [r4, #2]
	tst r0, r1
	beq _0203F99E
	add r2, #0xff
_0203F99E:
	ldr r5, _0203F9B4 ; =0x02141898
	add r1, r4, #7
	ldr r0, [r5]
	add r0, #0x2c
	bl sub_0203DFD0
	ldr r1, [r5]
	mov r0, #1
	str r0, [r1, #0x34]
	pop {r4, r5, r6, pc}
	nop
_0203F9B4: .word 0x02141898
_0203F9B8: .word 0x000003F2
_0203F9BC: .word 0x000001D6
	thumb_func_end sub_0203F8F8

	thumb_func_start sub_0203F9C0
sub_0203F9C0: ; 0x0203F9C0
	push {r3, lr}
	cmp r0, #0
	beq _0203F9D4
	ldr r0, _0203F9E4 ; =0x0209AA54
	ldrb r1, [r0, #1]
	cmp r1, #2
	bne _0203F9D4
	mov r1, #4
	strb r1, [r0, #1]
	b _0203F9DE
_0203F9D4:
	ldr r0, _0203F9E8 ; =0x0209AA68
	ldr r2, _0203F9EC ; =0x0209AA88
	mov r1, #0
	bl sub_0203CB80
_0203F9DE:
	mov r0, #1
	pop {r3, pc}
	nop
_0203F9E4: .word 0x0209AA54
_0203F9E8: .word 0x0209AA68
_0203F9EC: .word 0x0209AA88
	thumb_func_end sub_0203F9C0

	thumb_func_start sub_0203F9F0
sub_0203F9F0: ; 0x0203F9F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042DE8
	bl sub_02042DC0
	bl sub_02042E84
	cmp r4, #0
	beq _0203FA0E
	ldr r1, _0203FA1C ; =0x000005D4
	mov r0, #4
	bl sub_0203E8C8
	b _0203FA18
_0203FA0E:
	ldr r0, _0203FA20 ; =0x0209AA68
	ldr r2, _0203FA24 ; =0x0209AA88
	mov r1, #0
	bl sub_0203CB80
_0203FA18:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_0203FA1C: .word 0x000005D4
_0203FA20: .word 0x0209AA68
_0203FA24: .word 0x0209AA88
	thumb_func_end sub_0203F9F0

	thumb_func_start sub_0203FA28
sub_0203FA28: ; 0x0203FA28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	str r3, [sp]
	bl sub_02042E84
	str r0, [sp, #4]
	bl sub_02042E78
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	blx sub_020787A8
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bne _0203FA54
	mov r0, #1
	b _0203FA56
_0203FA54:
	mov r0, #2
_0203FA56:
	strb r0, [r5, #4]
	mov r0, #0
	str r0, [r6, #0x24]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	ldr r0, [r0, #0x7c]
	blx r0
	strb r0, [r5, #3]
	add r0, r6, #0
	bl sub_0203E174
	cmp r0, #0
	bne _0203FA94
	ldr r0, [sp, #4]
	add r0, #0x65
	str r0, [sp, #4]
	ldrb r0, [r0]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0203FA9E
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	add r0, #0xb0
	ldr r0, [r0]
	blx r0
	cmp r0, #1
	bne _0203FA9E
_0203FA94:
	mov r0, #0xff
	strb r0, [r5, #4]
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203FA9E:
	sub r1, r4, #7
	add r0, sp, #8
	strh r1, [r0, #4]
	add r0, r5, #7
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, sp, #8
	bl sub_0203E3BC
	cmp r0, #0
	bne _0203FAB8
	mov r0, #1
	str r0, [r6, #0x24]
_0203FAB8:
	add r0, sp, #8
	ldrh r1, [r0, #4]
	ldr r0, _0203FAF8 ; =0x0000FFFF
	cmp r1, r0
	beq _0203FAC8
	sub r0, r4, r1
	sub r2, r0, #7
	b _0203FACA
_0203FAC8:
	sub r2, r4, #7
_0203FACA:
	cmp r2, #0xff
	ble _0203FAD8
	ldrb r1, [r5, #4]
	mov r0, #8
	add r2, r2, #1
	orr r0, r1
	strb r0, [r5, #4]
_0203FAD8:
	strb r2, [r5, #2]
	ldr r0, [sp]
	sub r1, r4, #2
	strb r0, [r5, #5]
	add r0, r5, #2
	bl sub_0204405C
	mov r1, #0xff
	lsl r1, r1, #8
	strb r0, [r5]
	and r0, r1
	asr r0, r0, #8
	strb r0, [r5, #1]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203FAF8: .word 0x0000FFFF
	thumb_func_end sub_0203FA28

	thumb_func_start sub_0203FAFC
sub_0203FAFC: ; 0x0203FAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x10]
	add r5, r2, #0
	add r7, r3, #0
	mov r4, #1
	cmp r0, #0
	beq _0203FB12
	mov r4, #0
_0203FB12:
	bl sub_02042E84
	add r6, r0, #0
	ldr r0, _0203FBB4 ; =0x02141898
	ldr r0, [r0]
	cmp r0, #0
	bne _0203FB26
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0203FB26:
	bl sub_02040078
	cmp r0, #0
	bne _0203FB36
	bl sub_02042494
	cmp r0, #0
	beq _0203FB3C
_0203FB36:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0203FB3C:
	bl sub_02040198
	cmp r0, #0
	bne _0203FB4A
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0203FB4A:
	ldr r0, _0203FBB4 ; =0x02141898
	mov r1, #0x1e
	ldr r0, [r0]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	cmp r5, r1
	blt _0203FB5E
	cmp r4, #1
	bne _0203FB5E
	mov r4, #0
_0203FB5E:
	add r6, #0x64
	ldrb r1, [r6]
	cmp r1, #0
	beq _0203FB70
	ldr r1, [sp, #0x28]
	cmp r1, #0xff
	bne _0203FB70
	add r0, #0xf4
	b _0203FB72
_0203FB70:
	add r0, #0xcc
_0203FB72:
	str r7, [sp]
	ldr r1, [sp, #0x2c]
	str r4, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r3, r5, #0
	bl sub_0203E2C0
	cmp r0, #0
	beq _0203FB8E
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203FB8E:
	bl sub_02040158
	bl sub_02042540
	add r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0203FBAC
	mov r3, #0xfd
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	lsl r3, r3, #2
	bl sub_020424AC
_0203FBAC:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0203FBB4: .word 0x02141898
	thumb_func_end sub_0203FAFC

	thumb_func_start sub_0203FBB8
sub_0203FBB8: ; 0x0203FBB8
	ldr r0, _0203FBC4 ; =0x02141898
	ldr r3, _0203FBC8 ; =sub_0203E0F4
	ldr r0, [r0]
	add r0, #0x1c
	bx r3
	nop
_0203FBC4: .word 0x02141898
_0203FBC8: .word sub_0203E0F4
	thumb_func_end sub_0203FBB8

	thumb_func_start sub_0203FBCC
sub_0203FBCC: ; 0x0203FBCC
	ldr r0, _0203FBD8 ; =0x02141898
	ldr r3, _0203FBDC ; =sub_0203E0F4
	ldr r0, [r0]
	add r0, #0x3c
	bx r3
	nop
_0203FBD8: .word 0x02141898
_0203FBDC: .word sub_0203E0F4
	thumb_func_end sub_0203FBCC

	thumb_func_start sub_0203FBE0
sub_0203FBE0: ; 0x0203FBE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	bl sub_02042E84
	bl sub_0203FFC4
	bl sub_02040414
	str r6, [sp]
	str r0, [sp, #4]
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	add r2, r5, #0
	add r3, r7, #0
	bl sub_02040D78
	bl sub_0203FFC4
	cmp r0, #0
	bne _0203FC2A
	mov r0, #0xff
	bl sub_02040414
	cmp r5, #0x11
	bge _0203FC2A
	str r6, [sp]
	str r0, [sp, #4]
	ldrb r0, [r4, #0xe]
	ldrb r1, [r4, #0xf]
	add r2, r5, #0
	add r3, r7, #0
	bl sub_02040D78
_0203FC2A:
	add r0, r4, #0
	bl sub_0203E8D4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203FBE0

	thumb_func_start sub_0203FC34
sub_0203FC34: ; 0x0203FC34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	ldr r6, [sp, #0x30]
	bl sub_02042E84
	add r0, r5, #0
	bl sub_0203E0F4
	cmp r0, #0
	bne _0203FC52
	b _0203FDAC
_0203FC52:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	sub r0, r6, #7
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #8
	str r0, [sp, #0x18]
_0203FC64:
	ldrh r6, [r4, #0xc]
	cmp r6, #0
	bne _0203FC80
	add r0, r5, #0
	bl sub_0203E080
	add r6, r0, #0
	bne _0203FC80
	ldr r0, _0203FDB0 ; =0x0209AA68
	ldr r2, _0203FDB4 ; =0x0209AA88
	mov r1, #0
	bl sub_0203CB80
	b _0203FDA0
_0203FC80:
	mov r0, #0xc
	ldrsh r7, [r5, r0]
	ldrh r1, [r4, #0xa]
	ldr r0, _0203FDB8 ; =0x0000FFFF
	strh r6, [r4, #0xc]
	cmp r1, r0
	bne _0203FCB8
	add r0, r5, #0
	bl sub_0203E0F4
	cmp r0, #3
	bge _0203FC9E
	add sp, #0x1c
	strh r7, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_0203FC9E:
	add r0, r5, #0
	bl sub_0203E080
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0xe]
	add r0, r5, #0
	bl sub_0203E054
	strb r0, [r4, #0xf]
_0203FCB8:
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_02040DD4
	cmp r0, #0
	beq _0203FCEC
	ldrb r0, [r4, #0xf]
	bl sub_02040C94
	cmp r0, #0
	beq _0203FCEC
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0203FCE4
	ldrb r1, [r4, #0xe]
	ldrh r2, [r4, #0xa]
	add r0, r6, #0
	bl sub_02040DE8
	str r0, [r4, #4]
_0203FCE4:
	ldr r1, [r4, #4]
	ldr r0, [r4]
	add r0, r1, r0
	b _0203FCF0
_0203FCEC:
	ldr r0, [sp]
	str r0, [r4, #4]
_0203FCF0:
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0xf]
	bl sub_02040C94
	cmp r0, #0
	bne _0203FD00
	mov r0, #0
	str r0, [sp, #0xc]
_0203FD00:
	add r0, r6, #0
	bl sub_02040DD4
	cmp r0, #0
	bne _0203FD14
	ldrh r2, [r4, #8]
	add r0, r5, #0
	ldr r1, [sp]
	add r3, r2, #0
	b _0203FD1C
_0203FD14:
	ldrh r2, [r4, #8]
	ldr r1, [sp]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
_0203FD1C:
	bl sub_0203E038
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	str r7, [sp, #4]
	ldrh r1, [r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r1, r0
	ldr r0, [sp, #0x18]
	strh r1, [r0]
	ldrh r0, [r4, #0xa]
	ldr r1, [r4]
	cmp r0, r1
	ble _0203FD54
	sub r0, r0, r1
	str r0, [sp, #4]
	cmp r0, r7
	ble _0203FD44
	str r7, [sp, #4]
_0203FD44:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0203FD54
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	blx sub_02078920
_0203FD54:
	ldr r1, [r4]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [r4]
	ldrh r0, [r4, #8]
	cmp r0, #0
	bne _0203FD70
	ldrh r1, [r4, #0xa]
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0203FBE0
	b _0203FDA0
_0203FD70:
	add r0, r6, #0
	bl sub_02040DC0
	cmp r0, #0
	beq _0203FDAC
	add r0, r6, #0
	bl sub_02040DD4
	cmp r0, #0
	bne _0203FDAC
	ldrb r0, [r4, #0xf]
	bl sub_02040C94
	cmp r0, #0
	beq _0203FDAC
	ldrh r1, [r4, #8]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	strh r0, [r4, #8]
	ldr r0, [sp, #8]
	add sp, #0x1c
	strh r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_0203FDA0:
	add r0, r5, #0
	bl sub_0203E0F4
	cmp r0, #0
	beq _0203FDAC
	b _0203FC64
_0203FDAC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0203FDB0: .word 0x0209AA68
_0203FDB4: .word 0x0209AA88
_0203FDB8: .word 0x0000FFFF
	thumb_func_end sub_0203FC34

	thumb_func_start sub_0203FDBC
sub_0203FDBC: ; 0x0203FDBC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0203FDFC ; =0x02141898
	ldr r0, [r6]
	cmp r0, #0
	beq _0203FDFA
	add r0, #0x2c
	bl sub_0203E150
	mov r7, #0x67
	mov r4, #0
	lsl r7, r7, #2
_0203FDD2:
	ldr r0, [r6]
	add r0, #0x2c
	bl sub_0203E0F4
	cmp r0, #0
	ble _0203FDFA
	ldr r5, [r6]
	bl sub_0203E8E8
	str r0, [sp]
	add r0, r5, #0
	ldr r2, [r5, #0x18]
	add r0, #0x2c
	mov r1, #0xff
	add r3, r5, r7
	bl sub_0203FC34
	add r4, r4, #1
	cmp r4, #4
	blt _0203FDD2
_0203FDFA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0203FDFC: .word 0x02141898
	thumb_func_end sub_0203FDBC

	thumb_func_start sub_0203FE00
sub_0203FE00: ; 0x0203FE00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_02042DE8
	str r0, [sp, #4]
	ldr r0, _0203FE70 ; =0x02141898
	ldr r0, [r0]
	cmp r0, #0
	beq _0203FE6A
	bl sub_02042DC0
	mov r7, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0203FE6A
_0203FE1E:
	ldr r0, _0203FE70 ; =0x02141898
	lsl r5, r7, #4
	ldr r0, [r0]
	add r0, #0x4c
	add r0, r0, r5
	bl sub_0203E150
	mov r4, #0
_0203FE2E:
	ldr r0, _0203FE70 ; =0x02141898
	ldr r0, [r0]
	add r0, #0x4c
	add r0, r0, r5
	bl sub_0203E0F4
	cmp r0, #0
	ble _0203FE5C
	ldr r0, _0203FE70 ; =0x02141898
	mov r3, #0x47
	ldr r6, [r0]
	ldr r0, [sp, #4]
	lsl r3, r3, #2
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x4c
	add r3, r6, r3
	ldr r2, [r6, #0x18]
	add r0, r0, r5
	add r1, r7, #0
	add r3, r3, r5
	bl sub_0203FC34
_0203FE5C:
	add r4, r4, #1
	cmp r4, #4
	blt _0203FE2E
	ldr r0, [sp, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _0203FE1E
_0203FE6A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203FE70: .word 0x02141898
	thumb_func_end sub_0203FE00

	thumb_func_start sub_0203FE74
sub_0203FE74: ; 0x0203FE74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042E84
	ldr r7, _0203FF64 ; =0x02141898
	add r6, r0, #0
	ldr r1, [r7]
	cmp r1, #0
	bne _0203FE90
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203FE90:
	add r0, #0x65
	ldrb r0, [r0]
	add r2, r0, #0
	add r2, #0xff
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, #1
	bhi _0203FED0
	ldr r0, _0203FF68 ; =0x000001E7
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203FECC
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, #0x80
	ldr r0, [r0]
	blx r0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0203FECC
	cmp r5, #0
	bne _0203FEC4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203FEC4:
	cmp r5, #1
	bne _0203FECC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203FECC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203FED0:
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0203FEF8
	cmp r5, #2
	blo _0203FEE2
	cmp r5, #0xff
	bne _0203FEF4
_0203FEE2:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	beq _0203FEF4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203FEF4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203FEF8:
	bl sub_0203FF8C
	cmp r0, #0
	bne _0203FF04
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203FF04:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x70]
	blx r0
	cmp r0, #0
	bne _0203FF16
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203FF16:
	bl sub_0203FFC4
	cmp r5, r0
	bne _0203FF22
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203FF22:
	bl sub_0203FFC4
	cmp r0, #0
	beq _0203FF32
	add r6, #0x64
	ldrb r0, [r6]
	cmp r0, #0
	bne _0203FF4C
_0203FF32:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x7c]
	blx r0
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	lsl r1, r5
	mov r0, #1
	tst r1, r2
	beq _0203FF5E
	pop {r3, r4, r5, r6, r7, pc}
_0203FF4C:
	mov r0, #0x79
	ldr r1, [r7]
	lsl r0, r0, #2
	ldrh r2, [r1, r0]
	mov r1, #1
	lsl r1, r5
	mov r0, #1
	tst r1, r2
	bne _0203FF60
_0203FF5E:
	mov r0, #0
_0203FF60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203FF64: .word 0x02141898
_0203FF68: .word 0x000001E7
	thumb_func_end sub_0203FE74

	thumb_func_start sub_0203FF6C
sub_0203FF6C: ; 0x0203FF6C
	push {r3, r4, r5, lr}
	mov r4, #0
	mov r5, #0
_0203FF72:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_0203FE74
	cmp r0, #0
	beq _0203FF80
	add r4, r4, #1
_0203FF80:
	add r5, r5, #1
	cmp r5, #8
	blt _0203FF72
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0203FF6C

	thumb_func_start sub_0203FF8C
sub_0203FF8C: ; 0x0203FF8C
	push {r4, lr}
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042E84
	ldr r1, _0203FFC0 ; =0x02141898
	ldr r1, [r1]
	cmp r1, #0
	beq _0203FFB2
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _0203FFB2
	mov r0, #1
	pop {r4, pc}
_0203FFB2:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x6c]
	blx r0
	pop {r4, pc}
	nop
_0203FFC0: .word 0x02141898
	thumb_func_end sub_0203FF8C

	thumb_func_start sub_0203FFC4
sub_0203FFC4: ; 0x0203FFC4
	push {r4, lr}
	ldr r0, _02040018 ; =0x02141898
	ldr r0, [r0]
	cmp r0, #0
	beq _02040012
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02040000
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, #0x80
	ldr r0, [r0]
	blx r0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02040012
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02040000:
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r0, #0x80
	ldr r0, [r0]
	blx r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_02040012:
	mov r0, #0
	pop {r4, pc}
	nop
_02040018: .word 0x02141898
	thumb_func_end sub_0203FFC4

	thumb_func_start sub_0204001C
sub_0204001C: ; 0x0204001C
	push {r3, lr}
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x7c]
	blx r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02040038 ; =0x0000FFFE
	and r0, r1
	pop {r3, pc}
	nop
_02040038: .word 0x0000FFFE
	thumb_func_end sub_0204001C

	thumb_func_start sub_0204003C
sub_0204003C: ; 0x0204003C
	push {r3, lr}
	bl sub_02042E78
	ldr r1, _02040070 ; =0x02141898
	ldr r2, [r1]
	cmp r2, #0
	beq _02040056
	ldr r1, _02040074 ; =0x000001E9
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02040056
	mov r0, #1
	pop {r3, pc}
_02040056:
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	add r0, #0x88
	ldr r0, [r0]
	blx r0
	cmp r0, #0
	beq _0204006A
	mov r0, #1
	pop {r3, pc}
_0204006A:
	mov r0, #0
	pop {r3, pc}
	nop
_02040070: .word 0x02141898
_02040074: .word 0x000001E9
	thumb_func_end sub_0204003C

	thumb_func_start sub_02040078
sub_02040078: ; 0x02040078
	push {r3, lr}
	bl sub_02042E78
	mov r1, #0
	cmp r0, #0
	beq _02040096
	mov r2, #0xd
	lsl r2, r2, #6
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02040096
	add r0, #0x88
	ldr r0, [r0]
	blx r0
	add r1, r0, #0
_02040096:
	cmp r1, #0
	bne _020400AC
	ldr r0, _020400B0 ; =0x02141898
	ldr r2, [r0]
	cmp r2, #0
	beq _020400AC
	ldr r0, _020400B4 ; =0x000001E9
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _020400AC
	mov r1, #1
_020400AC:
	add r0, r1, #0
	pop {r3, pc}
	.align 2, 0
_020400B0: .word 0x02141898
_020400B4: .word 0x000001E9
	thumb_func_end sub_02040078

	thumb_func_start sub_020400B8
sub_020400B8: ; 0x020400B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042E84
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _020400DC
	cmp r4, #0xff
	bne _020400DC
	ldr r0, _020400EC ; =0x02141898
	add r1, r5, #0
	ldr r0, [r0]
	add r0, #0xf4
	bl sub_0203E478
	pop {r3, r4, r5, pc}
_020400DC:
	ldr r0, _020400EC ; =0x02141898
	add r1, r5, #0
	ldr r0, [r0]
	add r0, #0xcc
	bl sub_0203E478
	pop {r3, r4, r5, pc}
	nop
_020400EC: .word 0x02141898
	thumb_func_end sub_020400B8

	thumb_func_start sub_020400F0
sub_020400F0: ; 0x020400F0
	ldr r0, _020400FC ; =0x02141898
	ldr r3, _02040100 ; =sub_0203E174
	ldr r0, [r0]
	add r0, #0xcc
	bx r3
	nop
_020400FC: .word 0x02141898
_02040100: .word sub_0203E174
	thumb_func_end sub_020400F0

	thumb_func_start sub_02040104
sub_02040104: ; 0x02040104
	ldr r1, _02040110 ; =0x02141898
	ldr r2, [r1]
	ldr r1, _02040114 ; =0x000001E7
	strb r0, [r2, r1]
	bx lr
	nop
_02040110: .word 0x02141898
_02040114: .word 0x000001E7
	thumb_func_end sub_02040104

	thumb_func_start sub_02040118
sub_02040118: ; 0x02040118
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02040152
	ldr r2, _02040154 ; =0x02141898
	mov r1, #0x6b
	ldr r0, [r2]
	lsl r1, r1, #2
	str r4, [r0, r1]
	cmp r4, #0
	beq _02040152
	ldr r3, [r2]
	mov r4, #0
	add r0, r1, #4
	str r4, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2]
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2]
	add r1, #0xc
	str r4, [r0, r1]
_02040152:
	pop {r4, pc}
	.align 2, 0
_02040154: .word 0x02141898
	thumb_func_end sub_02040118

	thumb_func_start sub_02040158
sub_02040158: ; 0x02040158
	ldr r0, _02040164 ; =0x02141898
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _02040168 ; =0x000001E9
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
_02040164: .word 0x02141898
_02040168: .word 0x000001E9
	thumb_func_end sub_02040158

	thumb_func_start sub_0204016C
sub_0204016C: ; 0x0204016C
	ldr r0, _02040178 ; =0x02141898
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _0204017C ; =0x000001E9
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
_02040178: .word 0x02141898
_0204017C: .word 0x000001E9
	thumb_func_end sub_0204016C

	thumb_func_start sub_02040180
sub_02040180: ; 0x02040180
	ldr r0, _02040190 ; =0x02141898
	ldr r2, [r0]
	cmp r2, #0
	beq _0204018E
	ldr r0, _02040194 ; =0x000001EA
	mov r1, #1
	strb r1, [r2, r0]
_0204018E:
	bx lr
	.align 2, 0
_02040190: .word 0x02141898
_02040194: .word 0x000001EA
	thumb_func_end sub_02040180

	thumb_func_start sub_02040198
sub_02040198: ; 0x02040198
	push {r3, lr}
	ldr r0, _020401CC ; =0x02141898
	ldr r0, [r0]
	cmp r0, #0
	beq _020401C6
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x64
	ldrb r1, [r1]
	cmp r1, #0
	bne _020401C6
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _020401BC
	cmp r0, #5
	bne _020401C6
_020401BC:
	ldr r0, _020401CC ; =0x02141898
	ldr r1, [r0]
	ldr r0, _020401D0 ; =0x000001EB
	ldrb r0, [r1, r0]
	pop {r3, pc}
_020401C6:
	mov r0, #1
	pop {r3, pc}
	nop
_020401CC: .word 0x02141898
_020401D0: .word 0x000001EB
	thumb_func_end sub_02040198

	thumb_func_start sub_020401D4
sub_020401D4: ; 0x020401D4
	cmp r0, #8
	blt _020401DA
	mov r0, #0xff
_020401DA:
	bx lr
	thumb_func_end sub_020401D4

	thumb_func_start sub_020401DC
sub_020401DC: ; 0x020401DC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042E78
	mov r0, #0xff
	mov r5, #0xff
	bl sub_02040414
	cmp r0, r4
	bne _020401F4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_020401F4:
	mov r5, #0
_020401F6:
	add r0, r5, #0
	bl sub_02040414
	cmp r0, r4
	bne _02040204
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02040204:
	add r5, r5, #1
	cmp r5, #9
	blt _020401F6
	ldr r0, _0204021C ; =0x0209AAA0
	ldr r2, _02040220 ; =0x0209AAA4
	mov r1, #0
	mov r4, #0
	bl sub_0203CB80
	sub r0, r4, #1
	pop {r3, r4, r5, pc}
	nop
_0204021C: .word 0x0209AAA0
_02040220: .word 0x0209AAA4
	thumb_func_end sub_020401DC

	thumb_func_start sub_02040224
sub_02040224: ; 0x02040224
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #0xff
	beq _02040242
	add r0, #0x40
	ldrh r0, [r0]
	mov r2, #0
	strh r2, [r5, #0x3e]
	bl sub_02040A2C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
_02040242:
	mov r4, #0
_02040244:
	lsl r6, r4, #2
	add r7, r5, r6
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _02040256
	mov r1, #0
	mov r2, #0x10
	blx sub_020787A8
_02040256:
	ldr r1, [r7, #8]
	add r0, sp, #4
	add r4, r4, #1
	str r1, [r0, r6]
	cmp r4, #8
	blt _02040244
	ldr r0, [r5]
	cmp r0, #0
	beq _02040270
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5]
_02040270:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x50
	mov r4, #0
	blx sub_020787A8
	add r2, sp, #4
_0204027E:
	lsl r0, r4, #2
	ldr r1, [r2, r0]
	add r0, r5, r0
	add r4, r4, #1
	str r1, [r0, #8]
	cmp r4, #8
	blt _0204027E
	ldr r0, [sp]
	bl sub_0203EFD0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02040224

	thumb_func_start sub_02040298
sub_02040298: ; 0x02040298
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	beq _020402B4
	add r0, #0x40
	ldrh r0, [r0]
	mov r2, #0
	strh r2, [r5, #0x3e]
	bl sub_02040A2C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
_020402B4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020402C6
	mov r1, #0
	mov r2, #0x10
	blx sub_020787A8
_020402C6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02040298

	thumb_func_start sub_020402C8
sub_020402C8: ; 0x020402C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_02042E84
	add r6, r0, #0
	bl sub_02042E78
	add r0, r7, #0
	bl sub_02040414
	add r4, r0, #0
	cmp r7, #0xff
	bne _020402F8
	mov r5, #0
_020402E4:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020402F2
	bl sub_0203A24C
_020402F2:
	add r5, r5, #1
	cmp r5, #8
	blt _020402E4
_020402F8:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x50
	mov r5, #0
	blx sub_020787A8
	cmp r7, #0xff
	bne _02040328
	mov r7, #0xc7
_0204030A:
	add r0, r6, #0
	str r7, [sp]
	add r0, #0x56
	ldrh r0, [r0]
	ldr r3, _02040348 ; =0x0209AAA8
	mov r1, #0x10
	mov r2, #1
	bl sub_0203A1FC
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #8]
	cmp r5, #8
	blt _0204030A
_02040328:
	add r0, r4, #0
	mov r2, #0
	add r0, #0x4a
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x49
	strb r2, [r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02040348: .word 0x0209AAA8
	thumb_func_end sub_020402C8

	thumb_func_start sub_0204034C
sub_0204034C: ; 0x0204034C
	push {r3, r4, r5, lr}
	bl sub_02042E84
	add r4, r0, #0
	mov r5, #0
_02040356:
	add r0, r5, #0
	bl sub_020402C8
	add r5, r5, #1
	cmp r5, #8
	blt _02040356
	mov r0, #0xff
	bl sub_020402C8
	ldr r0, _02040394 ; =0x0214189C
	ldr r0, [r0]
	cmp r0, #0
	beq _0204037A
	ldr r0, _02040398 ; =0x0209AAA0
	ldr r2, _0204039C ; =0x0209AAB8
	mov r1, #0
	bl sub_0203CB80
_0204037A:
	mov r0, #0xe5
	add r4, #0x56
	str r0, [sp]
	ldrh r0, [r4]
	ldr r3, _020403A0 ; =0x0209AAA8
	mov r1, #0x20
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, _02040394 ; =0x0214189C
	str r0, [r1]
	pop {r3, r4, r5, pc}
	nop
_02040394: .word 0x0214189C
_02040398: .word 0x0209AAA0
_0204039C: .word 0x0209AAB8
_020403A0: .word 0x0209AAA8
	thumb_func_end sub_0204034C

	thumb_func_start sub_020403A4
sub_020403A4: ; 0x020403A4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
_020403A8:
	add r0, r4, #0
	bl sub_02040414
	add r1, r4, #0
	bl sub_02040224
	add r4, r4, #1
	cmp r4, #8
	blt _020403A8
	mov r0, #0xff
	bl sub_02040414
	mov r5, #0
	add r6, r0, #0
	add r7, r5, #0
_020403C6:
	lsl r0, r5, #2
	add r4, r6, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _020403D6
	bl sub_0203A24C
	str r7, [r4, #8]
_020403D6:
	add r5, r5, #1
	cmp r5, #8
	blt _020403C6
	mov r0, #0xff
	bl sub_02040414
	mov r1, #0xff
	bl sub_02040224
	ldr r0, _02040408 ; =0x0214189C
	ldr r0, [r0]
	cmp r0, #0
	bne _020403FA
	ldr r0, _0204040C ; =0x0209AAA0
	ldr r2, _02040410 ; =0x0209AAC4
	mov r1, #0
	bl sub_0203CB80
_020403FA:
	ldr r4, _02040408 ; =0x0214189C
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02040408: .word 0x0214189C
_0204040C: .word 0x0209AAA0
_02040410: .word 0x0209AAC4
	thumb_func_end sub_020403A4

	thumb_func_start sub_02040414
sub_02040414: ; 0x02040414
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	cmp r0, #0
	beq _0204043A
	cmp r4, #0xff
	bne _0204042C
	mov r1, #0x2f
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r4, pc}
_0204042C:
	cmp r4, #9
	bge _0204043A
	mov r1, #0x50
	add r0, #0x70
	mul r1, r4
	add r0, r0, r1
	pop {r4, pc}
_0204043A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02040414

	thumb_func_start sub_02040440
sub_02040440: ; 0x02040440
	push {r3, lr}
	bl sub_0203FFC4
	bl sub_02040414
	pop {r3, pc}
	thumb_func_end sub_02040440

	thumb_func_start sub_0204044C
sub_0204044C: ; 0x0204044C
	cmp r0, #0
	beq _02040460
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #5
	bne _0204045C
	mov r0, #1
	bx lr
_0204045C:
	mov r0, #0
	bx lr
_02040460:
	mov r0, #0
	bx lr
	thumb_func_end sub_0204044C

	thumb_func_start sub_02040464
sub_02040464: ; 0x02040464
	cmp r0, #0
	beq _0204046E
	add r0, #0x4a
	ldrb r0, [r0]
	bx lr
_0204046E:
	mov r0, #8
	bx lr
	.align 2, 0
	thumb_func_end sub_02040464

	thumb_func_start sub_02040474
sub_02040474: ; 0x02040474
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r5, #0
	cmp r0, #0
	beq _02040498
	add r4, r5, #0
_02040482:
	add r0, r4, #0
	bl sub_02040414
	bl sub_0204044C
	cmp r0, #0
	beq _02040492
	add r5, r5, #1
_02040492:
	add r4, r4, #1
	cmp r4, #8
	blt _02040482
_02040498:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02040474

	thumb_func_start sub_0204049C
sub_0204049C: ; 0x0204049C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _020404BE
	mov r0, #0xff
	bl sub_02040414
	lsl r2, r4, #1
	add r1, r0, r2
	add r1, #0x2c
	add r0, r0, r2
	strb r4, [r1]
	mov r1, #1
	add r0, #0x2d
	strb r1, [r0]
_020404BE:
	pop {r4, pc}
	thumb_func_end sub_0204049C

	thumb_func_start sub_020404C0
sub_020404C0: ; 0x020404C0
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203FFC4
	cmp r0, #0
	bne _02040502
	mov r0, #0xff
	bl sub_02040414
	add r4, r0, #0
	add r7, r4, #0
	mov r5, #0
	add r7, #0x2c
_020404D8:
	lsl r6, r5, #1
	add r0, r4, r6
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _020404FC
	add r0, r4, #0
	mov r1, #5
	mov r2, #2
	add r3, r7, r6
	bl sub_02042BE8
	cmp r0, #0
	beq _020404FC
	add r1, r4, r6
	add r1, #0x2d
	mov r0, #0
	strb r0, [r1]
_020404FC:
	add r5, r5, #1
	cmp r5, #8
	blt _020404D8
_02040502:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020404C0

	thumb_func_start sub_02040504
sub_02040504: ; 0x02040504
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_02040440
	add r5, r0, #0
	bl sub_020401DC
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	bl sub_02042E78
	bl sub_02042E84
	add r4, r0, #0
	bl sub_0203FFC4
	bl sub_0203FE74
	cmp r0, #0
	beq _0204056E
	add r0, r5, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #2
	bne _02040560
	add r7, sp, #0
	add r0, r7, #0
	bl sub_0207C33C
	add r0, r4, #0
	add r1, sp, #0
	strb r6, [r1, #6]
	add r0, #0x67
	ldrb r0, [r0]
	add r4, #0x6e
	mov r2, #9
	strb r0, [r1, #7]
	ldrh r0, [r4]
	add r3, r7, #0
	strb r0, [r1, #8]
	add r0, r5, #0
	mov r1, #3
	bl sub_02042BE8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02040560:
	bhs _0204056E
	add r0, r5, #0
	add r0, #0x4a
	ldrb r0, [r0]
	add r5, #0x4a
	add r0, r0, #1
	strb r0, [r5]
_0204056E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02040504

	thumb_func_start sub_02040574
sub_02040574: ; 0x02040574
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	ldrh r6, [r2]
	ldrb r5, [r2, #2]
	bl sub_020401DC
	cmp r0, #0xff
	bne _020405E6
	cmp r7, #0xff
	beq _020405E6
	ldr r0, _020405E8 ; =0x0214189C
	mov r4, #0
	ldr r1, [r0]
	lsl r0, r7, #1
	strh r6, [r1, r0]
	ldr r0, _020405E8 ; =0x0214189C
	ldr r0, [r0]
	add r0, r0, r7
	strb r5, [r0, #0x10]
_0204059C:
	add r0, r4, #0
	bl sub_02040414
	bl sub_0204044C
	cmp r0, #0
	beq _020405CA
	ldr r0, _020405E8 ; =0x0214189C
	ldr r0, [r0]
	add r1, r0, r4
	ldrb r1, [r1, #0x10]
	cmp r5, r1
	bne _020405C0
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	cmp r6, r0
	beq _020405D6
	pop {r3, r4, r5, r6, r7, pc}
_020405C0:
	mov r0, #1
	lsl r0, r4
	tst r0, r5
	beq _020405D6
	pop {r3, r4, r5, r6, r7, pc}
_020405CA:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0203FE74
	cmp r0, #1
	beq _020405E6
_020405D6:
	add r4, r4, #1
	cmp r4, #8
	blt _0204059C
	ldr r0, _020405E8 ; =0x0214189C
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, r7
	strb r1, [r0, #0x18]
_020405E6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020405E8: .word 0x0214189C
	thumb_func_end sub_02040574

	thumb_func_start sub_020405EC
sub_020405EC: ; 0x020405EC
	ldr r0, [sp]
	ldrh r1, [r2]
	add r0, #0x44
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_020405EC

	thumb_func_start sub_020405F8
sub_020405F8: ; 0x020405F8
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x46
	strh r1, [r2]
	add r1, r4, #0
	mov r2, #0xff
	add r1, #0x48
	strb r2, [r1]
	bl sub_020401DC
	cmp r0, #0xff
	bne _0204061A
	mov r0, #0
	add r4, #0x49
	strb r0, [r4]
	pop {r4, pc}
_0204061A:
	mov r0, #1
	add r4, #0x49
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020405F8

	thumb_func_start sub_02040624
sub_02040624: ; 0x02040624
	push {r4, lr}
	add r4, r0, #0
	beq _02040652
	lsl r2, r2, #8
	add r2, r1, r2
	add r1, r4, #0
	add r1, #0x46
	strh r2, [r1]
	add r1, r4, #0
	mov r2, #0xff
	add r1, #0x48
	strb r2, [r1]
	bl sub_020401DC
	cmp r0, #0xff
	bne _0204064C
	mov r0, #0
	add r4, #0x49
	strb r0, [r4]
	pop {r4, pc}
_0204064C:
	mov r0, #1
	add r4, #0x49
	strb r0, [r4]
_02040652:
	pop {r4, pc}
	thumb_func_end sub_02040624

	thumb_func_start sub_02040654
sub_02040654: ; 0x02040654
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, r1
	bne _02040660
	mov r0, #1
	bx lr
_02040660:
	mov r0, #0
	bx lr
	thumb_func_end sub_02040654

	thumb_func_start sub_02040664
sub_02040664: ; 0x02040664
	cmp r0, #0
	bne _0204066C
	mov r0, #1
	bx lr
_0204066C:
	add r0, #0x44
	ldrh r3, [r0]
	lsl r0, r2, #8
	add r0, r1, r0
	cmp r3, r0
	bne _0204067C
	mov r0, #1
	bx lr
_0204067C:
	mov r0, #0
	bx lr
	thumb_func_end sub_02040664

	thumb_func_start sub_02040680
sub_02040680: ; 0x02040680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	mov r7, #1
_0204068A:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _020406D0
	ldrh r0, [r5, #0x3e]
	add r1, r4, #0
	bl sub_02040A6C
	cmp r0, #0
	bne _020406D0
	ldr r0, [r6, #8]
	mov r1, #0xff
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x10
	str r7, [sp, #0xc]
	bl sub_02042C18
	cmp r0, #0
	beq _020406CA
	ldrh r0, [r5, #0x3e]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02040A2C
	b _020406D0
_020406CA:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020406D0:
	add r4, r4, #1
	cmp r4, #8
	blt _0204068A
	mov r0, #0
	strh r0, [r5, #0x3e]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040680

	thumb_func_start sub_020406E0
sub_020406E0: ; 0x020406E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r5, #0
_020406E6:
	add r0, r5, #0
	bl sub_020401D4
	add r4, r0, #0
	bl sub_02040414
	add r6, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0203FE74
	cmp r0, #0
	bne _02040706
	add r0, r6, #0
	bl sub_0204044C
_02040706:
	add r5, r5, #1
	cmp r5, #8
	blt _020406E6
	bl sub_020404C0
	bl sub_02042BC4
	cmp r0, #0
	beq _0204076E
	mov r0, #0xff
	bl sub_02040414
	mov r5, #0
	ldr r4, _02040874 ; =0x0214189C
	add r6, r0, #0
	add r7, r5, #0
_02040726:
	ldr r0, [r4]
	add r1, r0, r5
	ldrb r2, [r1, #0x18]
	cmp r2, #1
	bne _02040768
	lsl r2, r5, #1
	add r0, r0, r2
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	ldrb r1, [r1, #0x10]
	add r0, r6, #0
	mov r2, #8
	mov r3, #2
	bl sub_02042C9C
	cmp r0, #0
	beq _02040768
	ldr r0, [r4]
	add r0, r0, r5
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _02040760
	ldr r0, _02040878 ; =0x0209AAA0
	ldr r2, _0204087C ; =0x0209AAD0
	add r1, r7, #0
	bl sub_0203CB80
_02040760:
	ldr r0, [r4]
	add r1, r0, r5
	mov r0, #0
	strb r0, [r1, #0x18]
_02040768:
	add r5, r5, #1
	cmp r5, #8
	blt _02040726
_0204076E:
	mov r5, #0
	add r6, r5, #0
	mov r7, #7
_02040774:
	add r0, r5, #0
	bl sub_020401D4
	bl sub_02040414
	add r4, r0, #0
	bl sub_02042BD8
	cmp r0, #0
	beq _020407B2
	add r0, r4, #0
	add r0, #0x49
	ldrb r0, [r0]
	cmp r0, #0
	beq _020407B2
	add r0, r4, #0
	bl sub_020401DC
	cmp r0, #0xff
	beq _020407B2
	add r3, r4, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #4
	add r3, #0x46
	bl sub_02042BE8
	cmp r0, #0
	beq _020407B2
	add r4, #0x49
	strb r6, [r4]
_020407B2:
	add r5, r5, #1
	cmp r5, #9
	blt _02040774
	bl sub_0203FFC4
	cmp r0, #0
	bne _02040812
	mov r0, #0xff
	bl sub_02040414
	add r5, r0, #0
	beq _02040812
	mov r4, #0
	mov r6, #1
_020407CE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0204080C
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _0204080C
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r1, r4, #0
	bl sub_02040A6C
	cmp r0, #0
	bne _0204080C
	add r0, r5, #0
	bl sub_02040680
	cmp r0, #0
	beq _0204080C
	add r0, r5, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02040A2C
	add r1, r5, #0
	add r1, #0x40
	strh r0, [r1]
_0204080C:
	add r4, r4, #1
	cmp r4, #8
	blt _020407CE
_02040812:
	bl sub_02042E84
	add r4, r0, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #4
	beq _0204086E
	bl sub_02040440
	add r5, r0, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #1
	bne _0204086E
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02040868
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02040868
	bl sub_02042D94
	ldr r1, [r4, #0x14]
	blx r1
	add r6, r0, #0
	bl sub_02042D94
	ldr r1, [r4, #0x10]
	blx r1
	lsl r2, r6, #0x10
	add r3, r0, #0
	add r0, r5, #0
	mov r1, #0xa
	lsr r2, r2, #0x10
	bl sub_02042BE8
	cmp r0, #0
	beq _0204086E
	mov r0, #0
	add r5, #0x4e
	add sp, #0x10
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02040868:
	mov r0, #0
	add r5, #0x4e
	strb r0, [r5]
_0204086E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040874: .word 0x0214189C
_02040878: .word 0x0209AAA0
_0204087C: .word 0x0209AAD0
	thumb_func_end sub_020406E0

	thumb_func_start sub_02040880
sub_02040880: ; 0x02040880
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	ldr r4, [sp, #0x18]
	bl sub_02042E84
	add r6, r0, #0
	mov r0, #0xff
	bl sub_02040414
	cmp r0, r4
	bne _02040922
	lsl r0, r7, #2
	add r0, r4, r0
	ldr r4, [r0, #8]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _02040928
	mov r0, #1
	strb r0, [r4, #0xd]
	add r0, r5, #0
	add r1, r4, #6
	mov r2, #6
	blx sub_02078920
	ldrb r0, [r5, #6]
	strb r0, [r4, #0xc]
	add r0, r4, #0
	bl sub_0207C33C
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02040916
	ldrb r1, [r5, #6]
	cmp r1, #0
	beq _020408E8
	add r2, r6, #0
	add r2, #0x67
	ldrb r3, [r5, #7]
	ldrb r2, [r2]
	cmp r3, r2
	beq _020408E8
	add r2, r6, #0
	add r2, #0x6e
	ldrh r2, [r2]
	cmp r2, r0
	bne _020408E8
	strb r2, [r4, #0xf]
	add r6, #0x6e
	ldrh r0, [r6]
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_020408E8:
	cmp r1, #0
	bne _0204090C
	add r1, r6, #0
	add r1, #0x67
	ldrb r2, [r5, #7]
	ldrb r1, [r1]
	cmp r2, r1
	bne _0204090C
	add r1, r6, #0
	add r1, #0x6e
	ldrh r1, [r1]
	cmp r1, r0
	bne _0204090C
	strb r1, [r4, #0xf]
	add r6, #0x6e
	ldrh r0, [r6]
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0204090C:
	mov r0, #0xff
	strb r0, [r4, #0xf]
	mov r0, #0
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02040916:
	add r6, #0x67
	ldrb r0, [r6]
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #7]
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02040922:
	mov r0, #1
	add r4, #0x4e
	strb r0, [r4]
_02040928:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02040880

	thumb_func_start sub_0204092C
sub_0204092C: ; 0x0204092C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	ldr r1, _02040958 ; =0x00000352
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0204094E
	add r0, r4, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #5
	beq _02040954
	mov r0, #7
	add r4, #0x4a
	strb r0, [r4]
	pop {r4, pc}
_0204094E:
	mov r0, #7
	add r4, #0x4a
	strb r0, [r4]
_02040954:
	pop {r4, pc}
	nop
_02040958: .word 0x00000352
	thumb_func_end sub_0204092C

	thumb_func_start sub_0204095C
sub_0204095C: ; 0x0204095C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x20]
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02042E84
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020401DC
	cmp r0, #0xff
	bne _02040980
	mov r0, #5
	add r4, #0x4a
	add sp, #8
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02040980:
	add r0, r6, #0
	add r0, #0x6e
	ldrh r1, [r0]
	cmp r1, #0
	beq _020409A4
	ldrb r0, [r5, #0xf]
	cmp r1, r0
	beq _02040996
	add r0, r4, #0
	bl sub_0204092C
_02040996:
	add r0, r6, #0
	add r0, #0x6e
	ldrh r1, [r0]
	ldrb r0, [r5, #0xe]
	cmp r1, r0
	beq _020409C8
	b _020409C2
_020409A4:
	add r0, r6, #0
	add r0, #0x67
	ldrb r1, [r0]
	ldrb r0, [r5, #0xf]
	cmp r1, r0
	beq _020409B6
	add r0, r4, #0
	bl sub_0204092C
_020409B6:
	add r0, r6, #0
	add r0, #0x67
	ldrb r1, [r0]
	ldrb r0, [r5, #0xe]
	cmp r1, r0
	beq _020409C8
_020409C2:
	add r0, r4, #0
	bl sub_0204092C
_020409C8:
	add r0, sp, #0
	bl sub_0207C33C
	add r0, r5, #6
	add r1, sp, #0
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _020409EE
	add r0, r4, #0
	bl sub_020401DC
	ldrb r1, [r5, #0xc]
	cmp r1, r0
	beq _020409EE
	add r0, r4, #0
	bl sub_0204092C
_020409EE:
	add r4, #0x4a
	ldrb r0, [r4]
	cmp r0, #7
	beq _02040A1A
	ldrb r0, [r5, #0xc]
	bl sub_02040414
	mov r1, #5
	add r0, #0x4a
	strb r1, [r0]
	ldr r2, [r6, #0xc]
	cmp r2, #0
	beq _02040A0E
	ldrb r1, [r5, #0xc]
	add r0, r7, #0
	blx r2
_02040A0E:
	add r0, r5, #6
	bl sub_020430BC
	add r0, r5, #0
	bl sub_020430BC
_02040A1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204095C

	thumb_func_start sub_02040A20
sub_02040A20: ; 0x02040A20
	ldrb r0, [r2]
	ldr r3, _02040A28 ; =sub_02040A9C
	bx r3
	nop
_02040A28: .word sub_02040A9C
	thumb_func_end sub_02040A20

	thumb_func_start sub_02040A2C
sub_02040A2C: ; 0x02040A2C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xff
	bne _02040A42
	ldr r0, _02040A64 ; =0x0209AAA0
	ldr r2, _02040A68 ; =0x0209AAEC
	mov r1, #0
	bl sub_0203CB80
_02040A42:
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r6, #0
	beq _02040A52
	orr r5, r0
	b _02040A5E
_02040A52:
	mvn r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	and r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_02040A5E:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02040A64: .word 0x0209AAA0
_02040A68: .word 0x0209AAEC
	thumb_func_end sub_02040A2C

	thumb_func_start sub_02040A6C
sub_02040A6C: ; 0x02040A6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	bne _02040A80
	ldr r0, _02040A94 ; =0x0209AAA0
	ldr r2, _02040A98 ; =0x0209AAEC
	mov r1, #0
	bl sub_0203CB80
_02040A80:
	mov r1, #1
	lsl r1, r4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r0, #1
	tst r1, r5
	bne _02040A90
	mov r0, #0
_02040A90:
	pop {r3, r4, r5, pc}
	nop
_02040A94: .word 0x0209AAA0
_02040A98: .word 0x0209AAEC
	thumb_func_end sub_02040A6C

	thumb_func_start sub_02040A9C
sub_02040A9C: ; 0x02040A9C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0xff
	bne _02040AAE
	ldr r0, _02040AC8 ; =0x0209AAA0
	ldr r2, _02040ACC ; =0x0209AAEC
	mov r1, #0
	bl sub_0203CB80
_02040AAE:
	add r0, r4, #0
	bl sub_02040414
	add r1, r4, #0
	bl sub_02040224
	mov r0, #0xff
	bl sub_02040414
	add r1, r4, #0
	bl sub_02040298
	pop {r4, pc}
	.align 2, 0
_02040AC8: .word 0x0209AAA0
_02040ACC: .word 0x0209AAEC
	thumb_func_end sub_02040A9C

	thumb_func_start sub_02040AD0
sub_02040AD0: ; 0x02040AD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl sub_02042E84
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_020401DC
	cmp r0, #0xff
	beq _02040B2A
	cmp r5, #9
	blt _02040AF6
	ldr r0, _02040B2C ; =0x0209AAA0
	ldr r2, _02040B30 ; =0x0209AB08
	mov r1, #0
	bl sub_0203CB80
_02040AF6:
	add r0, r5, #0
	bl sub_02040414
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _02040B08
	bl sub_0203A24C
_02040B08:
	mov r0, #0xf6
	lsl r0, r0, #2
	add r6, #0x56
	str r0, [sp]
	ldrh r0, [r6]
	ldr r3, _02040B34 ; =0x0209AAA8
	add r1, r4, #0
	mov r2, #1
	bl sub_0203A1FC
	add r1, r0, #0
	str r1, [r5]
	add r0, r7, #0
	add r2, r4, #0
	str r4, [r5, #4]
	blx sub_02078920
_02040B2A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02040B2C: .word 0x0209AAA0
_02040B30: .word 0x0209AB08
_02040B34: .word 0x0209AAA8
	thumb_func_end sub_02040AD0

	thumb_func_start sub_02040B38
sub_02040B38: ; 0x02040B38
	push {r4, lr}
	add r4, r0, #0
	beq _02040B64
	lsl r2, r2, #8
	add r2, r1, r2
	add r1, r4, #0
	add r1, #0x46
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x48
	strb r3, [r1]
	bl sub_020401DC
	cmp r0, #0xff
	bne _02040B5E
	mov r0, #0
	add r4, #0x49
	strb r0, [r4]
	pop {r4, pc}
_02040B5E:
	mov r0, #1
	add r4, #0x49
	strb r0, [r4]
_02040B64:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02040B38

	thumb_func_start sub_02040B68
sub_02040B68: ; 0x02040B68
	push {r3, r4}
	cmp r0, #0
	beq _02040B8E
	lsl r1, r1, #0x18
	mov r2, #0
	lsr r1, r1, #0x18
_02040B74:
	lsl r3, r2, #2
	add r3, r0, r3
	ldr r4, [r3, #8]
	cmp r4, #0
	beq _02040B88
	ldrb r3, [r4, #0xd]
	cmp r3, #0
	beq _02040B88
	strb r1, [r4, #0xe]
	strb r1, [r4, #0xf]
_02040B88:
	add r2, r2, #1
	cmp r2, #9
	blt _02040B74
_02040B8E:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02040B68

	thumb_func_start sub_02040B94
sub_02040B94: ; 0x02040B94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02040BF0 ; =0x021418A0
	add r6, r1, #0
	ldr r0, [r0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _02040BBC
	mov r0, #0x96
	mov r1, #0x8b
	str r0, [sp]
	ldr r3, _02040BF4 ; =0x0209AB34
	mov r0, #0
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, _02040BF0 ; =0x021418A0
	str r0, [r1]
_02040BBC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02040C20
	ldr r0, _02040BF8 ; =0x0209AB24
	ldr r1, _02040BF0 ; =0x021418A0
	str r4, [r0, #8]
	mov r4, #0
	mov r0, #0x22
	add r3, r4, #0
	lsl r0, r0, #4
_02040BD6:
	ldr r2, [r1]
	add r2, r2, r4
	add r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #8
	blt _02040BD6
	ldr r0, _02040BF0 ; =0x021418A0
	ldr r1, [r0]
	mov r0, #0x8a
	lsl r0, r0, #2
	strb r3, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040BF0: .word 0x021418A0
_02040BF4: .word 0x0209AB34
_02040BF8: .word 0x0209AB24
	thumb_func_end sub_02040B94

	thumb_func_start sub_02040BFC
sub_02040BFC: ; 0x02040BFC
	push {r3, r4, r5, lr}
	ldr r4, _02040C1C ; =0x021418A0
	ldr r0, [r4]
	cmp r0, #0
	beq _02040C1A
	mov r2, #0x8b
	mov r1, #0
	lsl r2, r2, #2
	mov r5, #0
	blx sub_020787A8
	ldr r0, [r4]
	bl sub_0203A24C
	str r5, [r4]
_02040C1A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02040C1C: .word 0x021418A0
	thumb_func_end sub_02040BFC

	thumb_func_start sub_02040C20
sub_02040C20: ; 0x02040C20
	push {r4, r5, r6, r7}
	ldr r4, _02040C60 ; =0x021418A0
	ldr r5, [r4]
	cmp r5, #0
	beq _02040C5A
	mov r4, #0
_02040C2C:
	lsl r6, r4, #4
	add r7, r5, r6
	ldr r7, [r7, #0xc]
	cmp r7, #0
	beq _02040C3A
	cmp r0, r7
	bne _02040C54
_02040C3A:
	add r4, r5, r6
	str r0, [r4, #0xc]
	ldr r0, _02040C60 ; =0x021418A0
	ldr r4, [r0]
	str r1, [r4, r6]
	ldr r1, [r0]
	add r1, r1, r6
	str r2, [r1, #4]
	ldr r0, [r0]
	add r0, r0, r6
	str r3, [r0, #8]
	pop {r4, r5, r6, r7}
	bx lr
_02040C54:
	add r4, r4, #1
	cmp r4, #4
	blt _02040C2C
_02040C5A:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02040C60: .word 0x021418A0
	thumb_func_end sub_02040C20

	thumb_func_start sub_02040C64
sub_02040C64: ; 0x02040C64
	push {r4, lr}
	ldr r1, _02040C90 ; =0x021418A0
	ldr r4, [r1]
	cmp r4, #0
	beq _02040C8C
	mov r3, #0
_02040C70:
	lsl r1, r3, #4
	add r2, r4, r1
	ldr r1, [r2, #0xc]
	cmp r0, r1
	bne _02040C86
	add r0, r2, #0
	mov r1, #0
	mov r2, #0x10
	blx sub_020787A8
	pop {r4, pc}
_02040C86:
	add r3, r3, #1
	cmp r3, #4
	blt _02040C70
_02040C8C:
	pop {r4, pc}
	nop
_02040C90: .word 0x021418A0
	thumb_func_end sub_02040C64

	thumb_func_start sub_02040C94
sub_02040C94: ; 0x02040C94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r5, #0xff
	bne _02040CA0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02040CA0:
	bl sub_0203FFC4
	mov r1, #1
	lsl r1, r0
	add r0, r5, #0
	mov r4, #1
	tst r0, r1
	beq _02040CB4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02040CB4:
	bl sub_0203FFC4
	cmp r0, #0
	bne _02040CC6
	mov r0, #0x80
	tst r0, r5
	beq _02040CC6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02040CC6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02040C94

	thumb_func_start sub_02040CCC
sub_02040CCC: ; 0x02040CCC
	push {r3, r4, r5, lr}
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r1, #0
	bne _02040CF2
	ldr r0, _02040D18 ; =0x0209AB24
	ldr r0, [r0, #4]
	cmp r0, r2
	bgt _02040CEE
	ldr r0, _02040D1C ; =0x0209AB44
	ldr r2, _02040D20 ; =0x0209AB48
	mov r1, #0
	bl sub_0203CB80
_02040CEE:
	ldr r0, _02040D24 ; =0x0209AB24
	pop {r3, r4, r5, pc}
_02040CF2:
	ldr r0, _02040D28 ; =0x021418A0
	mov r4, #0
	ldr r5, [r0]
_02040CF8:
	lsl r0, r4, #4
	add r0, r5, r0
	ldr r3, [r0, #0xc]
	cmp r1, r3
	bne _02040D0C
	ldr r1, [r0, #4]
	cmp r1, r2
	bgt _02040D14
	mov r0, #0
	pop {r3, r4, r5, pc}
_02040D0C:
	add r4, r4, #1
	cmp r4, #4
	blt _02040CF8
	mov r0, #0
_02040D14:
	pop {r3, r4, r5, pc}
	nop
_02040D18: .word 0x0209AB24
_02040D1C: .word 0x0209AB44
_02040D20: .word 0x0209AB48
_02040D24: .word 0x0209AB24
_02040D28: .word 0x021418A0
	thumb_func_end sub_02040CCC

	thumb_func_start sub_02040D2C
sub_02040D2C: ; 0x02040D2C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040CCC
	cmp r0, #0
	beq _02040D42
	ldr r1, [r0]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x15
	ldr r0, [r1, r0]
	pop {r4, pc}
_02040D42:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02040D2C

	thumb_func_start sub_02040D48
sub_02040D48: ; 0x02040D48
	push {r3, lr}
	bl sub_02040CCC
	cmp r0, #0
	beq _02040D56
	ldr r0, [r0, #8]
	pop {r3, pc}
_02040D56:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02040D48

	thumb_func_start sub_02040D5C
sub_02040D5C: ; 0x02040D5C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040CCC
	cmp r0, #0
	beq _02040D74
	ldr r1, [r0]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x15
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r4, pc}
_02040D74:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02040D5C

	thumb_func_start sub_02040D78
sub_02040D78: ; 0x02040D78
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02040C94
	cmp r0, #0
	beq _02040DBE
	ldr r0, [sp, #0x1c]
	mov r5, #1
	bl sub_0204044C
	cmp r0, #0
	bne _02040D9C
	cmp r4, #0x11
	blt _02040D9C
	mov r5, #0
_02040D9C:
	cmp r5, #0
	beq _02040DBE
	add r0, r4, #0
	bl sub_02040D2C
	add r5, r0, #0
	beq _02040DBE
	add r0, r4, #0
	bl sub_02040D48
	add r3, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	blx r5
_02040DBE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040D78

	thumb_func_start sub_02040DC0
sub_02040DC0: ; 0x02040DC0
	push {r3, lr}
	bl sub_02040D2C
	cmp r0, #0
	beq _02040DCE
	mov r0, #1
	pop {r3, pc}
_02040DCE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02040DC0

	thumb_func_start sub_02040DD4
sub_02040DD4: ; 0x02040DD4
	push {r3, lr}
	bl sub_02040D5C
	cmp r0, #0
	beq _02040DE2
	mov r0, #1
	pop {r3, pc}
_02040DE2:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02040DD4

	thumb_func_start sub_02040DE8
sub_02040DE8: ; 0x02040DE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02040D5C
	add r4, r0, #0
	beq _02040E08
	add r0, r5, #0
	bl sub_02040D48
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
_02040E08:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02040DE8

	thumb_func_start sub_02040E0C
sub_02040E0C: ; 0x02040E0C
	bx lr
	.align 2, 0
	thumb_func_end sub_02040E0C

	thumb_func_start sub_02040E10
sub_02040E10: ; 0x02040E10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r4, r6, #0
	str r2, [sp, #8]
	cmp r6, #0xff
	bne _02040E22
	mov r4, #8
_02040E22:
	bl sub_02040440
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bne _02040EB4
	mov r0, #0x14
	add r5, r4, #0
	mul r5, r0
	ldr r0, _02040EB8 ; =0x021418A0
	ldr r3, [r0]
	add r0, r3, r5
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	beq _02040EB4
	add r0, r3, r5
	add r0, #0xbc
	ldr r2, [r0]
	cmp r2, #0
	beq _02040E62
	add r1, r3, r5
	add r3, r3, r5
	add r1, #0xc4
	add r3, #0xc2
	ldrh r1, [r1]
	ldrh r3, [r3]
	ldr r0, [sp, #8]
	mul r3, r1
	add r1, r2, r3
	add r2, r7, #0
	blx sub_02078920
_02040E62:
	ldr r0, _02040EB8 ; =0x021418A0
	ldr r2, [r0]
	add r2, #0xc4
	ldrh r1, [r2, r5]
	add r1, r1, #1
	strh r1, [r2, r5]
	ldr r3, [r0]
	add r0, r3, r5
	add r0, #0xc4
	ldrh r1, [r0]
	add r0, r3, r5
	add r0, #0xc6
	ldrh r0, [r0]
	cmp r1, r0
	bne _02040EB4
	add r0, r3, r5
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _02040EA8
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r3, r5
	add r2, r3, r5
	str r0, [sp, #4]
	add r1, #0xc8
	add r2, #0xc0
	add r3, r3, r5
	add r3, #0xb8
	ldrh r1, [r1]
	ldrh r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	bl sub_02040D78
_02040EA8:
	ldr r0, _02040EB8 ; =0x021418A0
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r5
	add r0, #0xca
	strb r1, [r0]
_02040EB4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02040EB8: .word 0x021418A0
	thumb_func_end sub_02040E10

	thumb_func_start sub_02040EBC
sub_02040EBC: ; 0x02040EBC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	add r7, r6, #0
	cmp r6, #0xff
	bne _02040ECA
	mov r7, #8
_02040ECA:
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _02040F70
	ldrh r0, [r5, #6]
	ldr r2, [r5]
	add r1, r6, #0
	bl sub_02040DE8
	cmp r0, #0
	beq _02040F70
	mov r0, #0x14
	add r4, r7, #0
	mul r4, r0
	ldr r0, _02040F74 ; =0x021418A0
	ldr r0, [r0]
	add r0, r0, r4
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	beq _02040F00
	ldr r0, _02040F78 ; =0x0209AB44
	ldr r2, _02040F7C ; =0x0209AB60
	mov r1, #0
	bl sub_0203CB80
_02040F00:
	ldr r7, _02040F74 ; =0x021418A0
	mov r1, #1
	ldr r0, [r7]
	ldr r2, [r5]
	add r0, r0, r4
	add r0, #0xca
	strb r1, [r0]
	ldr r0, [r7]
	add r1, r6, #0
	add r0, r0, r4
	add r0, #0xb8
	str r2, [r0]
	ldrh r0, [r5, #6]
	bl sub_02040DE8
	ldr r1, [r7]
	add r1, r1, r4
	add r1, #0xbc
	str r0, [r1]
	ldr r0, [r7]
	add r0, r0, r4
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _02040F3C
	ldr r0, _02040F78 ; =0x0209AB44
	ldr r2, _02040F80 ; =0x0209AB90
	mov r1, #0
	bl sub_0203CB80
_02040F3C:
	ldr r1, _02040F74 ; =0x021418A0
	ldrh r2, [r5, #6]
	ldr r0, [r1]
	add r0, r0, r4
	add r0, #0xc0
	strh r2, [r0]
	ldr r0, [r1]
	ldrh r2, [r5, #8]
	add r0, r0, r4
	add r0, #0xc2
	strh r2, [r0]
	ldr r0, [r1]
	ldrh r2, [r5, #0xa]
	add r0, r0, r4
	add r0, #0xc8
	strh r2, [r0]
	ldr r0, [r1]
	ldrh r2, [r5, #4]
	add r0, r0, r4
	add r0, #0xc6
	strh r2, [r0]
	ldr r0, [r1]
	mov r2, #0
	add r0, r0, r4
	add r0, #0xc4
	strh r2, [r0]
_02040F70:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02040F74: .word 0x021418A0
_02040F78: .word 0x0209AB44
_02040F7C: .word 0x0209AB60
_02040F80: .word 0x0209AB90
	thumb_func_end sub_02040EBC

	thumb_func_start sub_02040F84
sub_02040F84: ; 0x02040F84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_02042E84
	add r7, r0, #0
	ldr r0, _0204103C ; =0x021418A0
	mov r1, #0
	ldr r2, [r0]
	mov r3, #0x18
	add r0, r2, #0
	add r0, #0x57
_02040FA2:
	add r5, r1, #0
	mul r5, r3
	ldrb r5, [r0, r5]
	lsl r6, r5, #0x18
	lsr r6, r6, #0x1c
	bne _02040FB4
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1c
	beq _02040FBA
_02040FB4:
	add r1, r1, #1
	cmp r1, #5
	blt _02040FA2
_02040FBA:
	cmp r1, #5
	bne _02040FC4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02040FC4:
	mov r0, #0x18
	add r2, #0x40
	mul r0, r1
	add r5, r2, r0
	add r0, r7, #0
	str r4, [r5, #4]
	add r0, #0x61
	ldrb r0, [r0]
	sub r0, #0xc
	cmp r0, #0
	bgt _02040FE4
	ldr r0, _02041040 ; =0x0209AB44
	ldr r2, _02041044 ; =0x0209ABB8
	mov r1, #0
	bl sub_0203CB80
_02040FE4:
	add r7, #0x61
	ldrb r0, [r7]
	sub r0, #0xc
	strh r0, [r5, #0xe]
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	blx sub_0208D868
	strh r0, [r5, #0x14]
	ldrh r1, [r5, #0xe]
	add r0, r4, #0
	blx sub_0208D868
	strh r1, [r5, #0x10]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _0204100C
	ldrh r0, [r5, #0x14]
	add r0, r0, #1
	strh r0, [r5, #0x14]
_0204100C:
	mov r0, #0
	strh r0, [r5, #0x12]
	ldr r0, [sp, #8]
	strh r0, [r5, #0xc]
	ldr r0, [sp, #4]
	strb r0, [r5, #0x16]
	ldr r0, [sp, #0x20]
	str r0, [r5, #8]
	ldr r0, [sp]
	bl sub_020401DC
	str r0, [r5]
	ldrb r1, [r5, #0x17]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0204103C: .word 0x021418A0
_02041040: .word 0x0209AB44
_02041044: .word 0x0209ABB8
	thumb_func_end sub_02040F84

	thumb_func_start sub_02041048
sub_02041048: ; 0x02041048
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r0, _020410D8 ; =0x021418A0
	mov r1, #0
	ldr r0, [r0]
	mov r2, #0x18
	add r0, #0x40
_02041056:
	add r3, r1, #0
	mul r3, r2
	add r5, r0, r3
	ldrb r3, [r5, #0x17]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x1c
	beq _020410CA
	ldrh r1, [r5, #0x14]
	add r0, sp, #0xc
	mov r2, #0xc
	strh r1, [r0, #4]
	ldr r1, [r5, #4]
	mov r3, #1
	str r1, [sp, #0xc]
	ldrh r1, [r5, #0xc]
	mov r4, #1
	strh r1, [r0, #6]
	ldrh r1, [r5, #0xe]
	strh r1, [r0, #8]
	ldrb r1, [r5, #0x16]
	strh r1, [r0, #0xa]
	ldr r0, [r5]
	add r1, sp, #0xc
	str r0, [sp]
	ldrb r0, [r5, #0x16]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xd
	bl sub_0203FAFC
	ldrb r1, [r5, #0x17]
	mov r2, #0xf
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0xf
	and r0, r2
	orr r0, r1
	strb r0, [r5, #0x17]
	ldrb r2, [r5, #0x17]
	mov r1, #0xf0
	add sp, #0x18
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1c
	sub r1, r4, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #0x17]
	ldrb r0, [r5, #0x17]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r3, r4, r5, pc}
_020410CA:
	add r1, r1, #1
	cmp r1, #5
	blt _02041056
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_020410D8: .word 0x021418A0
	thumb_func_end sub_02041048

	thumb_func_start sub_020410DC
sub_020410DC: ; 0x020410DC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _02041150 ; =0x021418A0
	mov r1, #0
	ldr r2, [r0]
	mov r3, #0x18
_020410E8:
	add r0, r1, #0
	mul r0, r3
	add r4, r2, r0
	add r4, #0x57
	ldrb r4, [r4]
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x1c
	beq _02041142
	add r2, #0x40
	add r4, r2, r0
	ldrh r2, [r4, #0xe]
	ldrh r0, [r4, #0x12]
	ldr r5, [r4, #8]
	add r1, r2, #0
	mul r1, r0
	add r3, r0, #1
	ldrh r0, [r4, #0x14]
	cmp r3, r0
	bne _02041110
	ldrh r2, [r4, #0x10]
_02041110:
	ldr r0, [r4]
	mov r3, #1
	str r0, [sp]
	ldrb r0, [r4, #0x16]
	add r1, r5, r1
	str r0, [sp, #4]
	mov r0, #0xc
	str r3, [sp, #8]
	bl sub_0203FAFC
	cmp r0, #0
	beq _0204112E
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_0204112E:
	ldrh r1, [r4, #0x12]
	ldrh r0, [r4, #0x14]
	cmp r1, r0
	bne _0204114C
	ldrb r1, [r4, #0x17]
	mov r0, #0xf
	add sp, #0xc
	bic r1, r0
	strb r1, [r4, #0x17]
	pop {r4, r5, pc}
_02041142:
	add r1, r1, #1
	cmp r1, #5
	blt _020410E8
	bl sub_02041048
_0204114C:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02041150: .word 0x021418A0
	thumb_func_end sub_020410DC

	thumb_func_start sub_02041154
sub_02041154: ; 0x02041154
	str r1, [r0, #8]
	add r0, #0x46
	strh r2, [r0]
	bx lr
	thumb_func_end sub_02041154

	thumb_func_start sub_0204115C
sub_0204115C: ; 0x0204115C
	ldr r3, _02041160 ; =sub_02041154
	bx r3
	.align 2, 0
_02041160: .word sub_02041154
	thumb_func_end sub_0204115C

	thumb_func_start sub_02041164
sub_02041164: ; 0x02041164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020411B4 ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	beq _0204117A
	ldr r0, _020411B8 ; =0x0209ABE8
	ldr r2, _020411BC ; =0x0209ABEC
	mov r1, #0
	bl sub_0203CB80
_0204117A:
	mov r0, #0xb9
	str r0, [sp]
	ldr r3, _020411C0 ; =0x0209AC00
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #1
	mov r4, #1
	bl sub_0203A1FC
	ldr r1, _020411B4 ; =0x021418A4
	mov r2, #0x32
	str r0, [r1]
	add r0, #0x46
	strh r2, [r0]
	ldr r0, [r1]
	add r0, #0x4c
	strb r4, [r0]
	ldr r0, [r1]
	add r0, #0xc
	bl sub_020411C4
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r5, [sp]
	bl sub_02040B94
	pop {r3, r4, r5, pc}
	.align 2, 0
_020411B4: .word 0x021418A4
_020411B8: .word 0x0209ABE8
_020411BC: .word 0x0209ABEC
_020411C0: .word 0x0209AC00
	thumb_func_end sub_02041164

	thumb_func_start sub_020411C4
sub_020411C4: ; 0x020411C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02043F2C
	add r4, r0, #0
	mov r6, #0
	bl sub_02043F2C
	mov r1, #0
	add r0, r1, r0
	str r0, [r5]
	ldr r0, _020411F0 ; =0x6C078965
	ldr r1, _020411F4 ; =0x5D588B65
	str r0, [r5, #8]
	ldr r0, _020411F8 ; =0x00269EC3
	adc r4, r6
	str r4, [r5, #4]
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	pop {r4, r5, r6, pc}
	nop
_020411F0: .word 0x6C078965
_020411F4: .word 0x5D588B65
_020411F8: .word 0x00269EC3
	thumb_func_end sub_020411C4

	thumb_func_start sub_020411FC
sub_020411FC: ; 0x020411FC
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x74]
	blx r0
	cmp r0, #0
	beq _02041230
	bl sub_02040BFC
	bl sub_0203E7DC
	bl sub_0203EF38
	ldr r4, _02041234 ; =0x021418A4
	ldr r0, [r4]
	ldr r5, [r0, #0x28]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	cmp r5, #0
	beq _02041230
	blx r5
_02041230:
	pop {r3, r4, r5, pc}
	nop
_02041234: .word 0x021418A4
	thumb_func_end sub_020411FC

	thumb_func_start sub_02041238
sub_02041238: ; 0x02041238
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x65
	ldrb r1, [r1]
	cmp r1, #1
	beq _0204126A
	cmp r1, #2
	beq _0204126A
	mov r6, #0xd3
	lsl r6, r6, #2
	ldr r3, [r4, r6]
	add r0, #0x56
	sub r6, #0xc
	add r1, r4, #0
	ldr r4, [r4, r6]
	ldrh r0, [r0]
	ldr r4, [r4, #4]
	mov r2, #0
	blx r4
_0204126A:
	bl sub_0203F0F8
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _02041280
	bl sub_02042D94
	ldr r1, [r5, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r5, #0x2c]
_02041280:
	ldr r0, _02041290 ; =0x021418A4
	ldr r1, _02041294 ; =sub_02041DF8
	ldr r0, [r0]
	ldr r3, _02041298 ; =0x00000125
	mov r2, #0
	bl sub_0204115C
	pop {r4, r5, r6, pc}
	.align 2, 0
_02041290: .word 0x021418A4
_02041294: .word sub_02041DF8
_02041298: .word 0x00000125
	thumb_func_end sub_02041238

	thumb_func_start sub_0204129C
sub_0204129C: ; 0x0204129C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r4, r1, #0
	bl sub_0203D10C
	add r0, r5, #0
	bl sub_02041164
	ldr r0, _020412C4 ; =0x021418A4
	ldr r3, _020412C8 ; =0x00000135
	ldr r1, [r0]
	mov r2, #0
	str r4, [r1, #0x2c]
	ldr r0, [r0]
	ldr r1, _020412CC ; =sub_02041238
	bl sub_0204115C
	pop {r3, r4, r5, pc}
	nop
_020412C4: .word 0x021418A4
_020412C8: .word 0x00000135
_020412CC: .word sub_02041238
	thumb_func_end sub_0204129C

	thumb_func_start sub_020412D0
sub_020412D0: ; 0x020412D0
	bx lr
	.align 2, 0
	thumb_func_end sub_020412D0

	thumb_func_start sub_020412D4
sub_020412D4: ; 0x020412D4
	ldr r0, _020412E8 ; =0x021418A4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	add r1, #0x46
	add r0, #0x3c
	strh r0, [r1]
	bx lr
	nop
_020412E8: .word 0x021418A4
	thumb_func_end sub_020412D4

	thumb_func_start sub_020412EC
sub_020412EC: ; 0x020412EC
	push {r4, lr}
	mov r4, #2
	add r1, r0, #0
	lsl r4, r4, #8
	ldr r3, _02041318 ; =sub_020412D4
	mov r0, #0
	add r1, #0x40
	add r2, r4, #0
	bl sub_0203EEC0
	cmp r0, #0
	beq _02041314
	ldr r0, _0204131C ; =0x021418A4
	sub r4, #0xa1
	ldr r0, [r0]
	ldr r1, _02041320 ; =sub_020412D0
	mov r2, #0xa
	add r3, r4, #0
	bl sub_0204115C
_02041314:
	pop {r4, pc}
	nop
_02041318: .word sub_020412D4
_0204131C: .word 0x021418A4
_02041320: .word sub_020412D0
	thumb_func_end sub_020412EC

	thumb_func_start sub_02041324
sub_02041324: ; 0x02041324
	push {r3, lr}
	bl sub_02042E84
	mov r0, #1
	lsl r1, r0, #9
	bl sub_0203EDE0
	cmp r0, #0
	beq _02041344
	ldr r0, _02041348 ; =0x021418A4
	ldr r1, _0204134C ; =sub_020412EC
	ldr r0, [r0]
	ldr r3, _02041350 ; =0x00000172
	mov r2, #0
	bl sub_0204115C
_02041344:
	pop {r3, pc}
	nop
_02041348: .word 0x021418A4
_0204134C: .word sub_020412EC
_02041350: .word 0x00000172
	thumb_func_end sub_02041324

	thumb_func_start sub_02041354
sub_02041354: ; 0x02041354
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020413A8 ; =0x021418A4
	add r4, r1, #0
	ldr r1, [r0]
	mov r0, #1
	add r1, #0x40
	tst r0, r1
	beq _02041370
	ldr r0, _020413AC ; =0x0209ABE8
	ldr r2, _020413B0 ; =0x0209AC0C
	mov r1, #0
	bl sub_0203CB80
_02041370:
	cmp r5, #0
	beq _02041382
	ldr r1, _020413A8 ; =0x021418A4
	add r0, r5, #0
	ldr r1, [r1]
	mov r2, #6
	add r1, #0x40
	blx sub_02078920
_02041382:
	cmp r4, #0
	beq _02041396
	ldr r0, _020413A8 ; =0x021418A4
	ldr r1, _020413B4 ; =sub_02041324
	ldr r0, [r0]
	ldr r3, _020413B8 ; =0x00000186
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, pc}
_02041396:
	ldr r0, _020413A8 ; =0x021418A4
	ldr r1, _020413BC ; =sub_020412EC
	ldr r0, [r0]
	ldr r3, _020413C0 ; =0x00000189
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, pc}
	nop
_020413A8: .word 0x021418A4
_020413AC: .word 0x0209ABE8
_020413B0: .word 0x0209AC0C
_020413B4: .word sub_02041324
_020413B8: .word 0x00000186
_020413BC: .word sub_020412EC
_020413C0: .word 0x00000189
	thumb_func_end sub_02041354

	thumb_func_start sub_020413C4
sub_020413C4: ; 0x020413C4
	bx lr
	.align 2, 0
	thumb_func_end sub_020413C4

	thumb_func_start sub_020413C8
sub_020413C8: ; 0x020413C8
	push {r3, lr}
	mov r0, #1
	lsl r1, r0, #9
	bl sub_0203EDE0
	cmp r0, #0
	beq _020413E6
	ldr r0, _020413E8 ; =0x021418A4
	mov r3, #0x69
	ldr r0, [r0]
	ldr r1, _020413EC ; =sub_020413C4
	mov r2, #0
	lsl r3, r3, #2
	bl sub_0204115C
_020413E6:
	pop {r3, pc}
	.align 2, 0
_020413E8: .word 0x021418A4
_020413EC: .word sub_020413C4
	thumb_func_end sub_020413C8

	thumb_func_start sub_020413F0
sub_020413F0: ; 0x020413F0
	push {r3, lr}
	ldr r0, _02041404 ; =0x021418A4
	ldr r1, _02041408 ; =sub_020413C8
	ldr r0, [r0]
	ldr r3, _0204140C ; =0x000001B2
	mov r2, #0
	bl sub_0204115C
	pop {r3, pc}
	nop
_02041404: .word 0x021418A4
_02041408: .word sub_020413C8
_0204140C: .word 0x000001B2
	thumb_func_end sub_020413F0

	thumb_func_start sub_02041410
sub_02041410: ; 0x02041410
	push {r3, lr}
	ldr r0, _0204143C ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	bne _0204141E
	mov r0, #1
	pop {r3, pc}
_0204141E:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02041426
	blx r1
_02041426:
	ldr r0, _0204143C ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	bne _02041432
	mov r0, #1
	pop {r3, pc}
_02041432:
	bl sub_02042450
	mov r0, #0
	pop {r3, pc}
	nop
_0204143C: .word 0x021418A4
	thumb_func_end sub_02041410

	thumb_func_start sub_02041440
sub_02041440: ; 0x02041440
	bx lr
	.align 2, 0
	thumb_func_end sub_02041440

	thumb_func_start sub_02041444
sub_02041444: ; 0x02041444
	bx lr
	.align 2, 0
	thumb_func_end sub_02041444

	thumb_func_start sub_02041448
sub_02041448: ; 0x02041448
	push {r3, lr}
	ldr r0, _0204145C ; =0x021418A4
	ldr r1, _02041460 ; =sub_02041440
	ldr r0, [r0]
	ldr r3, _02041464 ; =0x000001EA
	mov r2, #0
	bl sub_0204115C
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_0204145C: .word 0x021418A4
_02041460: .word sub_02041440
_02041464: .word 0x000001EA
	thumb_func_end sub_02041448

	thumb_func_start sub_02041468
sub_02041468: ; 0x02041468
	push {r3, lr}
	bl sub_02042E84
	mov r0, #1
	ldr r3, _02041490 ; =sub_02041448
	lsl r1, r0, #9
	mov r2, #1
	bl sub_0203ED68
	cmp r0, #0
	beq _0204148C
	ldr r0, _02041494 ; =0x021418A4
	ldr r1, _02041498 ; =sub_02041444
	ldr r0, [r0]
	ldr r3, _0204149C ; =0x000001FB
	mov r2, #0
	bl sub_0204115C
_0204148C:
	pop {r3, pc}
	nop
_02041490: .word sub_02041448
_02041494: .word 0x021418A4
_02041498: .word sub_02041444
_0204149C: .word 0x000001FB
	thumb_func_end sub_02041468

	thumb_func_start sub_020414A0
sub_020414A0: ; 0x020414A0
	push {r3, lr}
	ldr r0, _020414B4 ; =0x021418A4
	ldr r1, _020414B8 ; =sub_02041444
	ldr r0, [r0]
	ldr r3, _020414BC ; =0x0000020A
	mov r2, #0
	bl sub_0204115C
	pop {r3, pc}
	nop
_020414B4: .word 0x021418A4
_020414B8: .word sub_02041444
_020414BC: .word 0x0000020A
	thumb_func_end sub_020414A0

	thumb_func_start sub_020414C0
sub_020414C0: ; 0x020414C0
	push {r3, lr}
	ldr r0, _020414D4 ; =0x021418A4
	mov r3, #0x86
	ldr r0, [r0]
	ldr r1, _020414D8 ; =sub_02041468
	mov r2, #0
	lsl r3, r3, #2
	bl sub_0204115C
	pop {r3, pc}
	.align 2, 0
_020414D4: .word 0x021418A4
_020414D8: .word sub_02041468
	thumb_func_end sub_020414C0

	thumb_func_start sub_020414DC
sub_020414DC: ; 0x020414DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	blx sub_0208D60C
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	str r3, [r4, #0x10]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x28
	mov r3, #0
	blx sub_0208D60C
	add r1, #0x3c
	add r0, r1, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020414DC

	thumb_func_start sub_0204150C
sub_0204150C: ; 0x0204150C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	blx sub_0208D60C
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0x20]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	mov r0, #0
	lsr r1, r3, #0x1b
	lsl r0, r0, #5
	orr r0, r1
	str r3, [r4, #0x10]
	add r0, #0xb4
	pop {r4, pc}
	thumb_func_end sub_0204150C

	thumb_func_start sub_02041534
sub_02041534: ; 0x02041534
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x78]
	blx r0
	cmp r0, #0
	beq _020415A8
	add r0, r4, #0
	add r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	beq _02041586
	add r0, r4, #0
	add r0, #0x56
	ldrb r0, [r0]
	cmp r0, #1
	beq _02041586
	mov r0, #1
	add r1, r4, #0
	ldr r3, _020415AC ; =sub_020412D4
	add r1, #0x57
	lsl r2, r0, #9
	bl sub_0203EEC0
	cmp r0, #0
	beq _020415A8
	add r0, r4, #0
	bl sub_020414DC
	add r2, r0, #0
	ldr r0, _020415B0 ; =0x021418A4
	ldr r1, _020415B4 ; =sub_02041940
	ldr r0, [r0]
	ldr r3, _020415B8 ; =0x0000023B
	bl sub_0204115C
	pop {r4, pc}
_02041586:
	mov r0, #1
	lsl r1, r0, #9
	bl sub_0203EDE0
	cmp r0, #0
	beq _020415A8
	add r0, r4, #0
	bl sub_0204150C
	add r2, r0, #0
	ldr r0, _020415B0 ; =0x021418A4
	mov r3, #9
	ldr r0, [r0]
	ldr r1, _020415B4 ; =sub_02041940
	lsl r3, r3, #6
	bl sub_0204115C
_020415A8:
	pop {r4, pc}
	nop
_020415AC: .word sub_020412D4
_020415B0: .word 0x021418A4
_020415B4: .word sub_02041940
_020415B8: .word 0x0000023B
	thumb_func_end sub_02041534

	thumb_func_start sub_020415BC
sub_020415BC: ; 0x020415BC
	push {r4, lr}
	bl sub_02042E78
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r0, [r0, r4]
	ldr r0, [r0, #0x78]
	blx r0
	cmp r0, #0
	beq _020415E0
	ldr r0, _020415E4 ; =0x021418A4
	sub r4, #0xed
	ldr r0, [r0]
	ldr r1, _020415E8 ; =sub_02041534
	mov r2, #0
	add r3, r4, #0
	bl sub_0204115C
_020415E0:
	pop {r4, pc}
	nop
_020415E4: .word 0x021418A4
_020415E8: .word sub_02041534
	thumb_func_end sub_020415BC

	thumb_func_start sub_020415EC
sub_020415EC: ; 0x020415EC
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r4, #0xd
	add r2, r0, #0
	lsl r4, r4, #6
	ldr r2, [r2, r4]
	mov r0, #1
	ldr r2, [r2, #0x10]
	mov r1, #0
	mov r5, #0
	blx r2
	cmp r0, #0
	beq _02041618
	ldr r0, _0204161C ; =0x021418A4
	sub r4, #0xe5
	ldr r0, [r0]
	ldr r1, _02041620 ; =sub_020415BC
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0204115C
_02041618:
	pop {r3, r4, r5, pc}
	nop
_0204161C: .word 0x021418A4
_02041620: .word sub_020415BC
	thumb_func_end sub_020415EC

	thumb_func_start sub_02041624
sub_02041624: ; 0x02041624
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r4, #0xd
	add r2, r0, #0
	lsl r4, r4, #6
	ldr r2, [r2, r4]
	mov r0, #1
	ldr r2, [r2, #0x10]
	mov r1, #0
	mov r5, #0
	blx r2
	cmp r0, #0
	beq _02041650
	ldr r0, _02041654 ; =0x021418A4
	sub r4, #0xc8
	ldr r0, [r0]
	ldr r1, _02041658 ; =sub_02041534
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0204115C
_02041650:
	pop {r3, r4, r5, pc}
	nop
_02041654: .word 0x021418A4
_02041658: .word sub_02041534
	thumb_func_end sub_02041624

	thumb_func_start sub_0204165C
sub_0204165C: ; 0x0204165C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E84
	bl sub_0204003C
	cmp r0, #0
	bne _020416B6
	bl sub_0204001C
	cmp r0, #0
	bne _02041684
	ldr r0, _020416B8 ; =0x021418A4
	ldr r1, _020416BC ; =sub_02041624
	ldr r0, [r0]
	ldr r3, _020416C0 ; =0x0000028D
	mov r2, #0
	bl sub_0204115C
	pop {r4, pc}
_02041684:
	bl sub_02040474
	cmp r0, #0
	beq _020416B6
	bl sub_02040504
	cmp r0, #0
	beq _020416B6
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _020416A6
	bl sub_02042D94
	ldr r1, [r4, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r4, #0x2c]
_020416A6:
	ldr r0, _020416B8 ; =0x021418A4
	mov r3, #0xa7
	ldr r0, [r0]
	ldr r1, _020416C4 ; =sub_02041DF8
	mov r2, #0
	lsl r3, r3, #2
	bl sub_0204115C
_020416B6:
	pop {r4, pc}
	.align 2, 0
_020416B8: .word 0x021418A4
_020416BC: .word sub_02041624
_020416C0: .word 0x0000028D
_020416C4: .word sub_02041DF8
	thumb_func_end sub_0204165C

	thumb_func_start sub_020416C8
sub_020416C8: ; 0x020416C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r6, r0, #0
	bl sub_0204001C
	cmp r0, #0
	beq _020416FA
	bl sub_02042E84
	add r0, #0x56
	ldrh r0, [r0]
	bl sub_020414A0
	bl sub_02042E18
	ldr r0, _02041740 ; =0x021418A4
	ldr r1, _02041744 ; =sub_0204165C
	ldr r0, [r0]
	ldr r3, _02041748 ; =0x000002B7
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_020416FA:
	add r0, r5, #0
	add r0, #0x56
	ldrb r0, [r0]
	cmp r0, #1
	beq _0204173E
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r1, [r6, r4]
	mov r0, #0
	ldr r1, [r1, #0x38]
	mov r7, #0
	blx r1
	cmp r0, #0
	beq _0204173E
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	beq _0204172E
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	add r5, #0x46
	sub r0, r0, #1
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0204172E:
	ldr r0, _02041740 ; =0x021418A4
	sub r4, #0x77
	ldr r0, [r0]
	ldr r1, _0204174C ; =sub_020415EC
	add r2, r7, #0
	add r3, r4, #0
	bl sub_0204115C
_0204173E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02041740: .word 0x021418A4
_02041744: .word sub_0204165C
_02041748: .word 0x000002B7
_0204174C: .word sub_020415EC
	thumb_func_end sub_020416C8

	thumb_func_start sub_02041750
sub_02041750: ; 0x02041750
	push {r3, lr}
	bl sub_0204150C
	add r2, r0, #0
	ldr r0, _02041768 ; =0x021418A4
	ldr r1, _0204176C ; =sub_020416C8
	ldr r0, [r0]
	ldr r3, _02041770 ; =0x000002D6
	bl sub_0204115C
	pop {r3, pc}
	nop
_02041768: .word 0x021418A4
_0204176C: .word sub_020416C8
_02041770: .word 0x000002D6
	thumb_func_end sub_02041750

	thumb_func_start sub_02041774
sub_02041774: ; 0x02041774
	push {r4, lr}
	ldr r4, _02041790 ; =0x021418A4
	ldr r0, [r4]
	bl sub_0204150C
	add r2, r0, #0
	mov r3, #0xb7
	ldr r0, [r4]
	ldr r1, _02041794 ; =sub_020416C8
	lsl r3, r3, #2
	bl sub_0204115C
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_02041790: .word 0x021418A4
_02041794: .word sub_020416C8
	thumb_func_end sub_02041774

	thumb_func_start sub_02041798
sub_02041798: ; 0x02041798
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x78]
	blx r0
	cmp r0, #0
	beq _020417D8
	mov r4, #2
	lsl r4, r4, #8
	ldr r3, _020417DC ; =sub_02041774
	mov r0, #0
	add r1, r4, #0
	mov r2, #0
	mov r6, #0
	bl sub_0203ED68
	cmp r0, #0
	beq _020417D8
	add r5, #0x4c
	ldr r0, _020417E0 ; =0x021418A4
	strb r6, [r5]
	add r4, #0xf2
	ldr r0, [r0]
	ldr r1, _020417E4 ; =sub_02041750
	mov r2, #0x1e
	add r3, r4, #0
	bl sub_0204115C
_020417D8:
	pop {r4, r5, r6, pc}
	nop
_020417DC: .word sub_02041774
_020417E0: .word 0x021418A4
_020417E4: .word sub_02041750
	thumb_func_end sub_02041798

	thumb_func_start sub_020417E8
sub_020417E8: ; 0x020417E8
	push {r3, lr}
	bl sub_02042E84
	bl sub_02040504
	cmp r0, #0
	beq _02041806
	ldr r0, _02041808 ; =0x021418A4
	mov r3, #0xc1
	ldr r0, [r0]
	ldr r1, _0204180C ; =sub_02041810
	mov r2, #0
	lsl r3, r3, #2
	bl sub_0204115C
_02041806:
	pop {r3, pc}
	.align 2, 0
_02041808: .word 0x021418A4
_0204180C: .word sub_02041810
	thumb_func_end sub_020417E8

	thumb_func_start sub_02041810
sub_02041810: ; 0x02041810
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E84
	bl sub_02040440
	bl sub_0204044C
	cmp r0, #0
	beq _02041844
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02041836
	bl sub_02042D94
	ldr r1, [r4, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r4, #0x2c]
_02041836:
	ldr r0, _02041848 ; =0x021418A4
	ldr r1, _0204184C ; =sub_02041DF8
	ldr r0, [r0]
	ldr r3, _02041850 ; =0x0000031B
	mov r2, #0
	bl sub_0204115C
_02041844:
	pop {r4, pc}
	nop
_02041848: .word 0x021418A4
_0204184C: .word sub_02041DF8
_02041850: .word 0x0000031B
	thumb_func_end sub_02041810

	thumb_func_start sub_02041854
sub_02041854: ; 0x02041854
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E84
	mov r0, #0xff
	bl sub_02040414
	bl sub_02040440
	bl sub_02040474
	cmp r0, #2
	blt _02041892
	bl sub_0203FFC4
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02041884
	bl sub_02042D94
	ldr r1, [r4, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r4, #0x2c]
_02041884:
	ldr r0, _02041894 ; =0x021418A4
	ldr r1, _02041898 ; =sub_02041DF8
	ldr r0, [r0]
	ldr r3, _0204189C ; =0x00000335
	mov r2, #0
	bl sub_0204115C
_02041892:
	pop {r4, pc}
	.align 2, 0
_02041894: .word 0x021418A4
_02041898: .word sub_02041DF8
_0204189C: .word 0x00000335
	thumb_func_end sub_02041854

	thumb_func_start sub_020418A0
sub_020418A0: ; 0x020418A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042E84
	bl sub_02042E78
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r0, [r0, r4]
	add r0, #0xa8
	ldr r0, [r0]
	blx r0
	cmp r0, #1
	bne _020418FE
	bl sub_02040504
	cmp r0, #0
	beq _020418FE
	bl sub_02043068
	cmp r0, #1
	bne _020418DE
	ldr r0, _02041900 ; =0x021418A4
	add r4, #0xa
	ldr r0, [r0]
	ldr r1, _02041904 ; =sub_02041854
	mov r2, #0
	add r3, r4, #0
	bl sub_0204115C
	pop {r3, r4, r5, pc}
_020418DE:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _020418F0
	bl sub_02042D94
	ldr r1, [r5, #0x2c]
	blx r1
	mov r0, #0
	str r0, [r5, #0x2c]
_020418F0:
	ldr r0, _02041900 ; =0x021418A4
	ldr r1, _02041908 ; =sub_02041DF8
	ldr r0, [r0]
	ldr r3, _0204190C ; =0x00000351
	mov r2, #0
	bl sub_0204115C
_020418FE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02041900: .word 0x021418A4
_02041904: .word sub_02041854
_02041908: .word sub_02041DF8
_0204190C: .word 0x00000351
	thumb_func_end sub_020418A0

	thumb_func_start sub_02041910
sub_02041910: ; 0x02041910
	push {r4, lr}
	bl sub_02042E78
	mov r4, #0xd
	lsl r4, r4, #6
	ldr r0, [r0, r4]
	ldr r0, [r0, #0x78]
	blx r0
	cmp r0, #0
	beq _02041934
	ldr r0, _02041938 ; =0x021418A4
	add r4, #0x27
	ldr r0, [r0]
	ldr r1, _0204193C ; =sub_02041798
	mov r2, #0
	add r3, r4, #0
	bl sub_0204115C
_02041934:
	pop {r4, pc}
	nop
_02041938: .word 0x021418A4
_0204193C: .word sub_02041798
	thumb_func_end sub_02041910

	thumb_func_start sub_02041940
sub_02041940: ; 0x02041940
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203FFC4
	cmp r0, #0
	beq _0204195C
	ldr r0, _02041994 ; =0x021418A4
	ldr r1, _02041998 ; =sub_020417E8
	ldr r0, [r0]
	ldr r3, _0204199C ; =0x00000379
	mov r2, #0
	bl sub_0204115C
	pop {r4, pc}
_0204195C:
	add r0, r4, #0
	add r0, #0x56
	ldrb r0, [r0]
	cmp r0, #2
	beq _02041992
	add r0, r4, #0
	add r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	beq _0204197E
	add r0, r4, #0
	add r0, #0x46
	ldrh r0, [r0]
	add r4, #0x46
	sub r0, r0, #1
	strh r0, [r4]
	pop {r4, pc}
_0204197E:
	ldr r0, _02041994 ; =0x021418A4
	ldr r1, _020419A0 ; =sub_02041BC8
	ldr r0, [r0]
	ldr r3, _020419A4 ; =0x00000386
	mov r2, #0
	bl sub_0204115C
	add r0, r4, #0
	bl sub_02041BC8
_02041992:
	pop {r4, pc}
	.align 2, 0
_02041994: .word 0x021418A4
_02041998: .word sub_020417E8
_0204199C: .word 0x00000379
_020419A0: .word sub_02041BC8
_020419A4: .word 0x00000386
	thumb_func_end sub_02041940

	thumb_func_start sub_020419A8
sub_020419A8: ; 0x020419A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E78
	mov r4, #0xd
	add r6, r0, #0
	lsl r4, r4, #6
	ldr r0, [r6, r4]
	add r0, #0xac
	ldr r0, [r0]
	blx r0
	cmp r0, #1
	bne _020419DC
	ldr r0, [r6, r4]
	add r0, #0xb4
	ldr r0, [r0]
	blx r0
	ldr r0, _02041A28 ; =0x021418A4
	add r4, #0x5b
	ldr r0, [r0]
	ldr r1, _02041A2C ; =sub_020418A0
	mov r2, #0
	add r3, r4, #0
	bl sub_0204115C
	pop {r4, r5, r6, pc}
_020419DC:
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	cmp r0, #0
	bne _02041A1A
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	blx sub_0208D60C
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	str r3, [r5, #0x10]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x1e
	mov r3, #0
	blx sub_0208D60C
	add r1, #0xf
	add r5, #0x46
	strh r1, [r5]
	ldr r1, [r6, r4]
	mov r0, #0
	ldr r1, [r1, #8]
	blx r1
	pop {r4, r5, r6, pc}
_02041A1A:
	add r0, r5, #0
	add r0, #0x46
	ldrh r0, [r0]
	add r5, #0x46
	sub r0, r0, #1
	strh r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_02041A28: .word 0x021418A4
_02041A2C: .word sub_020418A0
	thumb_func_end sub_020419A8

	thumb_func_start sub_02041A30
sub_02041A30: ; 0x02041A30
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r1, #0
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	mov r0, #0
	add r1, r6, #0
	mov r2, #0
	mov r7, #0
	bl sub_02041B70
	add r4, #0x65
	ldrb r0, [r4]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02041AA0
	add r0, r7, #0
	bl sub_0203ECD0
	ldr r0, _02041AE4 ; =0x021418A4
	ldr r1, [r0]
	str r5, [r1, #0x2c]
	ldr r5, [r0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x1e
	add r3, r7, #0
	blx sub_0208D60C
	add r2, r1, #0
	mov r3, #0xef
	ldr r1, _02041AE8 ; =sub_020419A8
	add r0, r5, #0
	lsl r3, r3, #2
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_02041AA0:
	ldr r0, _02041AE4 ; =0x021418A4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	beq _02041AC6
	add r0, r1, #0
	add r0, #0x56
	ldrb r0, [r0]
	cmp r0, #1
	beq _02041AC6
	mov r0, #1
	ldr r3, _02041AEC ; =sub_020412D4
	add r1, #0x57
	lsl r2, r0, #9
	bl sub_0203EEC0
	b _02041ACE
_02041AC6:
	mov r0, #1
	lsl r1, r0, #9
	bl sub_0203EDE0
_02041ACE:
	ldr r0, _02041AE4 ; =0x021418A4
	mov r3, #0xf2
	ldr r1, [r0]
	mov r2, #0x1e
	str r5, [r1, #0x2c]
	ldr r0, [r0]
	ldr r1, _02041AF0 ; =sub_02041940
	lsl r3, r3, #2
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02041AE4: .word 0x021418A4
_02041AE8: .word sub_020419A8
_02041AEC: .word sub_020412D4
_02041AF0: .word sub_02041940
	thumb_func_end sub_02041A30

	thumb_func_start sub_02041AF4
sub_02041AF4: ; 0x02041AF4
	push {r4, r5, r6, lr}
	bl sub_02042E78
	ldr r4, _02041B58 ; =0x021418A4
	add r2, r0, #0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, #0x56
	ldrb r0, [r0]
	cmp r0, #2
	bne _02041B34
	ldr r1, [r1, #8]
	ldr r0, _02041B5C ; =sub_02041940
	cmp r1, r0
	bne _02041B34
	mov r5, #0xd
	lsl r5, r5, #6
	ldr r2, [r2, r5]
	mov r0, #1
	ldr r2, [r2, #0x10]
	mov r1, #0
	mov r6, #0
	blx r2
	cmp r0, #0
	beq _02041B34
	add r5, #0x96
	ldr r0, [r4]
	ldr r1, _02041B60 ; =sub_02041910
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0204115C
_02041B34:
	ldr r0, _02041B58 ; =0x021418A4
	ldr r0, [r0]
	add r1, r0, #0
	add r1, #0x56
	ldrb r1, [r1]
	cmp r1, #1
	bne _02041B54
	ldr r2, [r0, #8]
	ldr r1, _02041B64 ; =sub_020416C8
	cmp r2, r1
	bne _02041B54
	ldr r1, _02041B68 ; =sub_020415EC
	ldr r3, _02041B6C ; =0x000003DF
	mov r2, #0
	bl sub_0204115C
_02041B54:
	pop {r4, r5, r6, pc}
	nop
_02041B58: .word 0x021418A4
_02041B5C: .word sub_02041940
_02041B60: .word sub_02041910
_02041B64: .word sub_020416C8
_02041B68: .word sub_020415EC
_02041B6C: .word 0x000003DF
	thumb_func_end sub_02041AF4

	thumb_func_start sub_02041B70
sub_02041B70: ; 0x02041B70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02042E78
	ldr r1, _02041BC0 ; =0x021418A4
	ldr r0, [r1]
	add r0, #0x53
	strb r6, [r0]
	ldr r0, [r1]
	add r0, #0x56
	strb r5, [r0]
	cmp r4, #0
	beq _02041B9C
	ldr r1, [r1]
	add r0, r4, #0
	add r1, #0x57
	mov r2, #6
	blx sub_02078920
	b _02041BA8
_02041B9C:
	ldr r0, [r1]
	mov r1, #0xff
	add r0, #0x57
	mov r2, #6
	blx sub_020787A8
_02041BA8:
	ldr r4, _02041BC0 ; =0x021418A4
	mov r3, #0xff
	ldr r0, [r4]
	ldr r1, _02041BC4 ; =sub_02041AF4
	mov r2, #0
	lsl r3, r3, #2
	bl sub_0204115C
	ldr r0, [r4]
	bl sub_02041AF4
	pop {r4, r5, r6, pc}
	.align 2, 0
_02041BC0: .word 0x021418A4
_02041BC4: .word sub_02041AF4
	thumb_func_end sub_02041B70

	thumb_func_start sub_02041BC8
sub_02041BC8: ; 0x02041BC8
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r4, #0xd
	add r2, r0, #0
	lsl r4, r4, #6
	ldr r2, [r2, r4]
	mov r0, #1
	ldr r2, [r2, #0x10]
	mov r1, #0
	mov r5, #0
	blx r2
	cmp r0, #0
	beq _02041BF4
	ldr r0, _02041BF8 ; =0x021418A4
	add r4, #0xc7
	ldr r0, [r0]
	ldr r1, _02041BFC ; =sub_02041910
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0204115C
_02041BF4:
	pop {r3, r4, r5, pc}
	nop
_02041BF8: .word 0x021418A4
_02041BFC: .word sub_02041910
	thumb_func_end sub_02041BC8

	thumb_func_start sub_02041C00
sub_02041C00: ; 0x02041C00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02042E78
	ldr r1, _02041C70 ; =0x021418A4
	ldr r0, [r1]
	add r0, #0x53
	strb r6, [r0]
	ldr r0, [r1]
	add r0, #0x56
	strb r5, [r0]
	cmp r4, #0
	beq _02041C2C
	ldr r1, [r1]
	add r0, r4, #0
	add r1, #0x57
	mov r2, #6
	blx sub_02078920
	b _02041C38
_02041C2C:
	ldr r0, [r1]
	mov r1, #0xff
	add r0, #0x57
	mov r2, #6
	blx sub_020787A8
_02041C38:
	ldr r0, _02041C70 ; =0x021418A4
	ldr r0, [r0]
	add r1, r0, #0
	add r1, #0x56
	ldrb r1, [r1]
	cmp r1, #2
	bne _02041C50
	ldr r1, _02041C74 ; =sub_020415EC
	ldr r3, _02041C78 ; =0x00000426
	mov r2, #0
	bl sub_0204115C
_02041C50:
	ldr r4, _02041C70 ; =0x021418A4
	ldr r0, [r4]
	add r1, r0, #0
	add r1, #0x56
	ldrb r1, [r1]
	cmp r1, #1
	bne _02041C6E
	ldr r1, _02041C7C ; =sub_02041BC8
	ldr r3, _02041C80 ; =0x0000042E
	mov r2, #0
	bl sub_0204115C
	ldr r0, [r4]
	bl sub_02041BC8
_02041C6E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02041C70: .word 0x021418A4
_02041C74: .word sub_020415EC
_02041C78: .word 0x00000426
_02041C7C: .word sub_02041BC8
_02041C80: .word 0x0000042E
	thumb_func_end sub_02041C00

	thumb_func_start sub_02041C84
sub_02041C84: ; 0x02041C84
	push {r4, lr}
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E78
	add r4, #0x65
	ldrb r1, [r4]
	add r1, #0xfd
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _02041CB6
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	add r0, #0xac
	ldr r0, [r0]
	blx r0
	cmp r0, #0
	bne _02041CD0
	mov r0, #0
	bl sub_02042860
	pop {r4, pc}
_02041CB6:
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x7c]
	blx r0
	ldr r1, _02041CD4 ; =0x0000FFFE
	tst r0, r1
	bne _02041CD0
	mov r0, #0
	bl sub_02042860
_02041CD0:
	pop {r4, pc}
	nop
_02041CD4: .word 0x0000FFFE
	thumb_func_end sub_02041C84

	thumb_func_start sub_02041CD8
sub_02041CD8: ; 0x02041CD8
	push {r4, lr}
	ldr r0, [sp, #8]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_02042BE8
	bl sub_0203FFC4
	cmp r0, #0
	bne _02041CFE
	ldr r0, _02041D00 ; =0x021418A4
	ldr r1, _02041D04 ; =sub_02041C84
	ldr r0, [r0]
	ldr r3, _02041D08 ; =0x00000462
	add r2, r4, #0
	bl sub_0204115C
_02041CFE:
	pop {r4, pc}
	.align 2, 0
_02041D00: .word 0x021418A4
_02041D04: .word sub_02041C84
_02041D08: .word 0x00000462
	thumb_func_end sub_02041CD8

	thumb_func_start sub_02041D0C
sub_02041D0C: ; 0x02041D0C
	push {r3, lr}
	bl sub_0203FFC4
	cmp r0, #0
	beq _02041D1C
	mov r0, #0
	bl sub_02042860
_02041D1C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02041D0C

	thumb_func_start sub_02041D20
sub_02041D20: ; 0x02041D20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E84
	bl sub_02042E78
	mov r6, #0xd
	add r4, r0, #0
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	ldr r0, [r0, #0x78]
	blx r0
	cmp r0, #0
	beq _02041D50
	ldr r1, [r4, r6]
	mov r0, #0
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	beq _02041D6C
	add r0, r5, #0
	bl sub_020411FC
	pop {r4, r5, r6, pc}
_02041D50:
	ldr r0, [r4, r6]
	ldr r0, [r0, #0x6c]
	blx r0
	cmp r0, #0
	bne _02041D6C
	ldr r1, [r4, r6]
	mov r0, #0
	ldr r1, [r1, #0x14]
	blx r1
	cmp r0, #0
	beq _02041D6C
	add r0, r5, #0
	bl sub_020411FC
_02041D6C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02041D20

	thumb_func_start sub_02041D70
sub_02041D70: ; 0x02041D70
	push {r4, lr}
	bl sub_02042E78
	mov r2, #0xd
	add r3, r0, #0
	lsl r2, r2, #6
	ldr r2, [r3, r2]
	mov r0, #1
	ldr r2, [r2, #0x10]
	mov r1, #0
	mov r4, #0
	blx r2
	cmp r0, #0
	beq _02041D9A
	ldr r0, _02041D9C ; =0x021418A4
	ldr r1, _02041DA0 ; =sub_02041D20
	ldr r0, [r0]
	ldr r3, _02041DA4 ; =0x0000049A
	add r2, r4, #0
	bl sub_0204115C
_02041D9A:
	pop {r4, pc}
	.align 2, 0
_02041D9C: .word 0x021418A4
_02041DA0: .word sub_02041D20
_02041DA4: .word 0x0000049A
	thumb_func_end sub_02041D70

	thumb_func_start sub_02041DA8
sub_02041DA8: ; 0x02041DA8
	push {r3, lr}
	ldr r1, _02041DD8 ; =0x021418A4
	ldr r2, [r1]
	cmp r2, #0
	beq _02041DBC
	add r1, r2, #0
	add r1, #0x51
	ldrb r1, [r1]
	cmp r1, #0
	bne _02041DD4
_02041DBC:
	str r0, [r2, #0x28]
	ldr r0, _02041DD8 ; =0x021418A4
	mov r2, #1
	ldr r1, [r0]
	ldr r3, _02041DDC ; =0x000004AD
	add r1, #0x51
	strb r2, [r1]
	ldr r0, [r0]
	ldr r1, _02041DE0 ; =sub_02041D70
	mov r2, #5
	bl sub_0204115C
_02041DD4:
	pop {r3, pc}
	nop
_02041DD8: .word 0x021418A4
_02041DDC: .word 0x000004AD
_02041DE0: .word sub_02041D70
	thumb_func_end sub_02041DA8

	thumb_func_start sub_02041DE4
sub_02041DE4: ; 0x02041DE4
	ldr r0, _02041DF4 ; =0x021418A4
	ldr r1, [r0]
	cmp r1, #0
	beq _02041DF2
	mov r0, #0
	add r1, #0x51
	strb r0, [r1]
_02041DF2:
	bx lr
	.align 2, 0
_02041DF4: .word 0x021418A4
	thumb_func_end sub_02041DE4

	thumb_func_start sub_02041DF8
sub_02041DF8: ; 0x02041DF8
	bx lr
	.align 2, 0
	thumb_func_end sub_02041DF8

	thumb_func_start sub_02041DFC
sub_02041DFC: ; 0x02041DFC
	push {r3, lr}
	mov r0, #2
	lsl r0, r0, #8
	bl sub_0203EE50
	ldr r0, _02041E18 ; =0x021418A4
	mov r3, #0x4d
	ldr r0, [r0]
	ldr r1, _02041E1C ; =sub_02041DF8
	mov r2, #0
	lsl r3, r3, #4
	bl sub_0204115C
	pop {r3, pc}
	.align 2, 0
_02041E18: .word 0x021418A4
_02041E1C: .word sub_02041DF8
	thumb_func_end sub_02041DFC

	thumb_func_start sub_02041E20
sub_02041E20: ; 0x02041E20
	push {r4, lr}
	add r4, r2, #0
	bl sub_02042E84
	ldrb r1, [r4]
	add r0, #0x64
	strb r1, [r0]
	pop {r4, pc}
	thumb_func_end sub_02041E20

	thumb_func_start sub_02041E30
sub_02041E30: ; 0x02041E30
	bx lr
	.align 2, 0
	thumb_func_end sub_02041E30

	thumb_func_start sub_02041E34
sub_02041E34: ; 0x02041E34
	bx lr
	.align 2, 0
	thumb_func_end sub_02041E34

	thumb_func_start sub_02041E38
sub_02041E38: ; 0x02041E38
	bx lr
	.align 2, 0
	thumb_func_end sub_02041E38

	thumb_func_start sub_02041E3C
sub_02041E3C: ; 0x02041E3C
	push {r4, lr}
	bl sub_02042E78
	mov r1, #0xd
	add r2, r0, #0
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	mov r0, #0
	ldr r1, [r1, #0xc]
	mov r4, #0
	blx r1
	cmp r0, #0
	bge _02041E64
	ldr r0, _02041E68 ; =0x021418A4
	ldr r1, _02041E6C ; =sub_02041E30
	ldr r0, [r0]
	ldr r3, _02041E70 ; =0x00000522
	add r2, r4, #0
	bl sub_0204115C
_02041E64:
	pop {r4, pc}
	nop
_02041E68: .word 0x021418A4
_02041E6C: .word sub_02041E30
_02041E70: .word 0x00000522
	thumb_func_end sub_02041E3C

	thumb_func_start sub_02041E74
sub_02041E74: ; 0x02041E74
	push {r4, lr}
	bl sub_02042E78
	add r4, r0, #0
	mov r0, #1
	bl sub_02040104
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0
	ldr r1, [r1, #0xc]
	blx r1
	pop {r4, pc}
	thumb_func_end sub_02041E74

	thumb_func_start sub_02041E90
sub_02041E90: ; 0x02041E90
	ldr r2, _02041EA0 ; =0x000003ED
	sub r2, r1, r2
	cmp r2, #1
	bls _02041E9A
	neg r1, r1
_02041E9A:
	add r0, #0x4e
	strb r1, [r0]
	bx lr
	.align 2, 0
_02041EA0: .word 0x000003ED
	thumb_func_end sub_02041E90

	thumb_func_start sub_02041EA4
sub_02041EA4: ; 0x02041EA4
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02041F4C ; =0x021418A4
	str r0, [sp]
	bl sub_02042E78
	mov r4, #0xd
	add r7, r0, #0
	lsl r4, r4, #6
	ldr r1, [r7, r4]
	mov r0, #0
	ldr r1, [r1, #0xc]
	blx r1
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xa8
	cmp r5, r0
	bne _02041ED4
	ldr r0, [r6]
	ldr r1, _02041F50 ; =sub_02041E74
	ldr r3, _02041F54 ; =0x00000571
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_02041ED4:
	ldr r0, [r7, r4]
	add r0, #0xac
	ldr r0, [r0]
	blx r0
	cmp r0, #0
	beq _02041EEE
	ldr r0, [r6]
	ldr r1, _02041F50 ; =sub_02041E74
	ldr r3, _02041F58 ; =0x00000575
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_02041EEE:
	add r0, r4, #0
	add r0, #0xaf
	cmp r5, r0
	beq _02041F4A
	add r0, r4, #0
	add r0, #0xa9
	cmp r5, r0
	bne _02041F0C
	ldr r0, [r6]
	ldr r1, _02041F5C ; =sub_02041E34
	ldr r3, _02041F60 ; =0x0000057B
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_02041F0C:
	add r4, #0xaa
	cmp r5, r4
	bne _02041F20
	ldr r0, [r6]
	ldr r1, _02041F64 ; =sub_02041E38
	ldr r3, _02041F68 ; =0x0000057E
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_02041F20:
	cmp r5, #0xa
	blt _02041F32
	ldr r0, [r6]
	ldr r1, _02041F64 ; =sub_02041E38
	ldr r3, _02041F6C ; =0x00000582
	mov r2, #0
	bl sub_0204115C
	pop {r3, r4, r5, r6, r7, pc}
_02041F32:
	cmp r5, #0
	bge _02041F4A
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_02041E90
	ldr r0, [r6]
	ldr r1, _02041F70 ; =sub_02041E30
	ldr r3, _02041F74 ; =0x00000586
	mov r2, #0
	bl sub_0204115C
_02041F4A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02041F4C: .word 0x021418A4
_02041F50: .word sub_02041E74
_02041F54: .word 0x00000571
_02041F58: .word 0x00000575
_02041F5C: .word sub_02041E34
_02041F60: .word 0x0000057B
_02041F64: .word sub_02041E38
_02041F68: .word 0x0000057E
_02041F6C: .word 0x00000582
_02041F70: .word sub_02041E30
_02041F74: .word 0x00000586
	thumb_func_end sub_02041EA4

	thumb_func_start sub_02041F78
sub_02041F78: ; 0x02041F78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042E78
	add r5, r0, #0
	bl sub_02042E84
	add r1, r0, #0
	mov r3, #0xd
	lsl r3, r3, #6
	mov r0, #0x48
	add r1, #0x60
	ldr r3, [r5, r3]
	ldrsb r0, [r4, r0]
	ldrb r1, [r1]
	ldr r3, [r3, #0x50]
	mov r2, #0
	mov r4, #0
	blx r3
	cmp r0, #0
	bne _02041FC0
	bl sub_0203F0F8
	add r0, r5, #0
	bl sub_020403A4
	add r0, r5, #0
	bl sub_0204034C
	ldr r0, _02041FC4 ; =0x021418A4
	ldr r1, _02041FC8 ; =sub_02041EA4
	ldr r0, [r0]
	ldr r3, _02041FCC ; =0x000005A2
	add r2, r4, #0
	bl sub_0204115C
_02041FC0:
	pop {r3, r4, r5, pc}
	nop
_02041FC4: .word 0x021418A4
_02041FC8: .word sub_02041EA4
_02041FCC: .word 0x000005A2
	thumb_func_end sub_02041F78

	thumb_func_start sub_02041FD0
sub_02041FD0: ; 0x02041FD0
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	cmp r4, r1
	beq _02041FE8
	bl sub_0203ECAC
	cmp r0, #0
	bne _02041FE8
	mov r0, #0
	pop {r4, pc}
_02041FE8:
	ldr r0, _02042000 ; =0x021418A4
	ldr r3, _02042004 ; =0x000005BA
	ldr r1, [r0]
	mov r2, #0
	add r1, #0x48
	strb r4, [r1]
	ldr r0, [r0]
	ldr r1, _02042008 ; =sub_02041F78
	bl sub_0204115C
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_02042000: .word 0x021418A4
_02042004: .word 0x000005BA
_02042008: .word sub_02041F78
	thumb_func_end sub_02041FD0

	thumb_func_start sub_0204200C
sub_0204200C: ; 0x0204200C
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r1, #1
	ldr r5, _02042040 ; =0x021418A4
	add r4, r0, #0
	ldr r0, [r5]
	mvn r1, r1
	add r0, #0x48
	strb r1, [r0]
	bl sub_0203F0F8
	add r0, r4, #0
	bl sub_020403A4
	add r0, r4, #0
	bl sub_0204034C
	ldr r0, [r5]
	ldr r1, _02042044 ; =sub_02041EA4
	ldr r3, _02042048 ; =0x000005CF
	mov r2, #0
	bl sub_0204115C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02042040: .word 0x021418A4
_02042044: .word sub_02041EA4
_02042048: .word 0x000005CF
	thumb_func_end sub_0204200C

	thumb_func_start sub_0204204C
sub_0204204C: ; 0x0204204C
	push {r3, r4, r5, lr}
	bl sub_02042E78
	mov r1, #1
	ldr r5, _02042080 ; =0x021418A4
	add r4, r0, #0
	ldr r0, [r5]
	mvn r1, r1
	add r0, #0x48
	strb r1, [r0]
	bl sub_0203F0F8
	add r0, r4, #0
	bl sub_020403A4
	add r0, r4, #0
	bl sub_0204034C
	ldr r0, [r5]
	ldr r1, _02042084 ; =sub_02041EA4
	ldr r3, _02042088 ; =0x000005F3
	mov r2, #0
	bl sub_0204115C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02042080: .word 0x021418A4
_02042084: .word sub_02041EA4
_02042088: .word 0x000005F3
	thumb_func_end sub_0204204C

	thumb_func_start sub_0204208C
sub_0204208C: ; 0x0204208C
	push {r3, lr}
	ldr r0, _020420A8 ; =0x021418A4
	mov r2, #0
	ldr r1, [r0]
	mvn r2, r2
	add r1, #0x48
	strb r2, [r1]
	ldr r0, [r0]
	ldr r1, _020420AC ; =sub_02041F78
	ldr r3, _020420B0 ; =0x00000603
	mov r2, #0
	bl sub_0204115C
	pop {r3, pc}
	.align 2, 0
_020420A8: .word 0x021418A4
_020420AC: .word sub_02041F78
_020420B0: .word 0x00000603
	thumb_func_end sub_0204208C

	thumb_func_start sub_020420B4
sub_020420B4: ; 0x020420B4
	ldr r0, _020420F0 ; =0x021418A4
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, _020420F4 ; =sub_02041EA4
	cmp r1, r0
	bne _020420C4
	mov r0, #0
	bx lr
_020420C4:
	ldr r0, _020420F8 ; =sub_02041E74
	cmp r1, r0
	bne _020420CE
	mov r0, #1
	bx lr
_020420CE:
	ldr r0, _020420FC ; =sub_02041E3C
	cmp r1, r0
	bne _020420D8
	mov r0, #3
	bx lr
_020420D8:
	ldr r0, _02042100 ; =sub_02041E34
	cmp r1, r0
	bne _020420E2
	mov r0, #4
	bx lr
_020420E2:
	ldr r0, _02042104 ; =sub_02041E38
	cmp r1, r0
	bne _020420EC
	mov r0, #5
	bx lr
_020420EC:
	mov r0, #2
	bx lr
	.align 2, 0
_020420F0: .word 0x021418A4
_020420F4: .word sub_02041EA4
_020420F8: .word sub_02041E74
_020420FC: .word sub_02041E3C
_02042100: .word sub_02041E34
_02042104: .word sub_02041E38
	thumb_func_end sub_020420B4

	thumb_func_start sub_02042108
sub_02042108: ; 0x02042108
	push {r3, lr}
	bl sub_02042E78
	ldr r0, _02042120 ; =0x021418A4
	ldr r1, _02042124 ; =sub_02041EA4
	ldr r0, [r0]
	ldr r3, _02042128 ; =0x0000062D
	mov r2, #0
	bl sub_0204115C
	pop {r3, pc}
	nop
_02042120: .word 0x021418A4
_02042124: .word sub_02041EA4
_02042128: .word 0x0000062D
	thumb_func_end sub_02042108

	thumb_func_start sub_0204212C
sub_0204212C: ; 0x0204212C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	mov r0, #0
	mov r6, #0
	bl sub_02040104
	add r5, #0x4b
	ldrb r0, [r5]
	cmp r0, #0
	bne _02042148
	mov r6, #1
_02042148:
	mov r5, #0xd
	lsl r5, r5, #6
	ldr r2, [r4, r5]
	add r0, r6, #0
	ldr r2, [r2, #0x54]
	mov r1, #0
	mov r6, #0
	blx r2
	cmp r0, #0
	beq _0204217C
	bl sub_0203F0F8
	add r0, r4, #0
	bl sub_020403A4
	add r0, r4, #0
	bl sub_0204034C
	ldr r0, _02042198 ; =0x021418A4
	ldr r1, _0204219C ; =sub_02042108
	ldr r0, [r0]
	ldr r3, _020421A0 ; =0x00000645
	add r2, r6, #0
	bl sub_0204115C
	pop {r4, r5, r6, pc}
_0204217C:
	ldr r1, [r4, r5]
	add r0, r6, #0
	ldr r1, [r1, #0xc]
	blx r1
	cmp r0, #0
	bge _02042196
	ldr r0, _02042198 ; =0x021418A4
	ldr r1, _020421A4 ; =sub_02041E30
	ldr r0, [r0]
	ldr r3, _020421A8 ; =0x0000064B
	add r2, r6, #0
	bl sub_0204115C
_02042196:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02042198: .word 0x021418A4
_0204219C: .word sub_02042108
_020421A0: .word 0x00000645
_020421A4: .word sub_02041E30
_020421A8: .word 0x0000064B
	thumb_func_end sub_0204212C

	thumb_func_start sub_020421AC
sub_020421AC: ; 0x020421AC
	push {r4, lr}
	ldr r4, _020421EC ; =0x021418A4
	ldr r1, [r4]
	cmp r1, #0
	beq _020421EA
	cmp r0, #0
	beq _020421D0
	bl sub_0203FFC4
	cmp r0, #0
	bne _020421CC
	mov r1, #0
_020421C4:
	ldr r0, [r4]
	add r0, #0x4b
	strb r1, [r0]
	b _020421D6
_020421CC:
	mov r1, #1
	b _020421C4
_020421D0:
	mov r0, #0
	add r1, #0x4b
	strb r0, [r1]
_020421D6:
	ldr r4, _020421EC ; =0x021418A4
	ldr r1, _020421F0 ; =sub_0204212C
	ldr r0, [r4]
	ldr r3, _020421F4 ; =0x00000667
	mov r2, #0
	bl sub_0204115C
	ldr r0, [r4]
	bl sub_0204212C
_020421EA:
	pop {r4, pc}
	.align 2, 0
_020421EC: .word 0x021418A4
_020421F0: .word sub_0204212C
_020421F4: .word 0x00000667
	thumb_func_end sub_020421AC

	thumb_func_start sub_020421F8
sub_020421F8: ; 0x020421F8
	push {r4, lr}
	mov r0, #1
	mov r4, #1
	bl sub_020421AC
	ldr r0, _0204220C ; =0x021418A4
	ldr r0, [r0]
	add r0, #0x4a
	strb r4, [r0]
	pop {r4, pc}
	.align 2, 0
_0204220C: .word 0x021418A4
	thumb_func_end sub_020421F8

	thumb_func_start sub_02042210
sub_02042210: ; 0x02042210
	ldr r0, _0204221C ; =0x021418A4
	ldr r0, [r0]
	add r0, #0x4a
	ldrb r0, [r0]
	bx lr
	nop
_0204221C: .word 0x021418A4
	thumb_func_end sub_02042210

	thumb_func_start sub_02042220
sub_02042220: ; 0x02042220
	ldr r0, _02042234 ; =0x021418A4
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, _02042238 ; =sub_02041EA4
	cmp r1, r0
	bne _02042230
	mov r0, #1
	bx lr
_02042230:
	mov r0, #0
	bx lr
	.align 2, 0
_02042234: .word 0x021418A4
_02042238: .word sub_02041EA4
	thumb_func_end sub_02042220

	thumb_func_start sub_0204223C
sub_0204223C: ; 0x0204223C
	ldr r0, _02042258 ; =0x021418A4
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, _0204225C ; =sub_02041EA4
	cmp r1, r0
	beq _0204224E
	ldr r0, _02042260 ; =sub_02042108
	cmp r1, r0
	bne _02042252
_0204224E:
	mov r0, #1
	bx lr
_02042252:
	mov r0, #0
	bx lr
	nop
_02042258: .word 0x021418A4
_0204225C: .word sub_02041EA4
_02042260: .word sub_02042108
	thumb_func_end sub_0204223C

	thumb_func_start sub_02042264
sub_02042264: ; 0x02042264
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02042E84
	bl sub_02042E78
	mov r4, #0xd
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r1, [r5, r4]
	mov r0, #1
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x78]
	blx r0
	cmp r0, #0
	beq _02042298
	ldr r1, [r5, r4]
	mov r0, #0
	ldr r1, [r1, #0x14]
	blx r1
	add r0, r6, #0
	bl sub_020411FC
	pop {r4, r5, r6, pc}
_02042298:
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x6c]
	blx r0
	cmp r0, #0
	bne _020422B2
	ldr r1, [r5, r4]
	mov r0, #0
	ldr r1, [r1, #0x14]
	blx r1
	add r0, r6, #0
	bl sub_020411FC
	pop {r4, r5, r6, pc}
_020422B2:
	ldr r0, [r5, r4]
	ldr r0, [r0, #0x74]
	blx r0
	cmp r0, #0
	beq _020422CA
	ldr r1, [r5, r4]
	mov r0, #0
	ldr r1, [r1, #0x14]
	blx r1
	add r0, r6, #0
	bl sub_020411FC
_020422CA:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02042264

	thumb_func_start sub_020422CC
sub_020422CC: ; 0x020422CC
	push {r4, r5, r6, lr}
	bl sub_02042E78
	mov r4, #0xd
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r1, [r5, r4]
	mov r0, #0
	ldr r1, [r1, #0xc]
	mov r6, #0
	blx r1
	ldr r2, [r5, r4]
	mov r0, #1
	ldr r2, [r2, #0x10]
	mov r1, #0
	blx r2
	cmp r0, #0
	beq _020422FE
	ldr r0, _02042300 ; =0x021418A4
	ldr r1, _02042304 ; =sub_02042264
	ldr r0, [r0]
	ldr r3, _02042308 ; =0x000006F8
	add r2, r6, #0
	bl sub_0204115C
_020422FE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02042300: .word 0x021418A4
_02042304: .word sub_02042264
_02042308: .word 0x000006F8
	thumb_func_end sub_020422CC

	thumb_func_start sub_0204230C
sub_0204230C: ; 0x0204230C
	push {r4, r5, r6, lr}
	ldr r6, _02042344 ; =0x021418A4
	add r5, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _02042342
	bl sub_02042E78
	add r4, r0, #0
	mov r0, #1
	bl sub_0203D27C
	ldr r0, [r6]
	mov r2, #0xd
	str r5, [r0, #0x28]
	lsl r2, r2, #6
	ldr r2, [r4, r2]
	mov r0, #1
	ldr r2, [r2, #0x54]
	mov r1, #0
	blx r2
	ldr r0, [r6]
	ldr r1, _02042348 ; =sub_020422CC
	ldr r3, _0204234C ; =0x0000070F
	mov r2, #5
	bl sub_0204115C
_02042342:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02042344: .word 0x021418A4
_02042348: .word sub_020422CC
_0204234C: .word 0x0000070F
	thumb_func_end sub_0204230C

	thumb_func_start sub_02042350
sub_02042350: ; 0x02042350
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	add r2, r0, #0
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	mov r0, #0
	ldr r1, [r1, #0xc]
	mov r4, #0
	blx r1
	add r1, r0, #0
	bpl _02042382
	add r0, r5, #0
	bl sub_02041E90
	ldr r0, _02042398 ; =0x021418A4
	ldr r1, _0204239C ; =sub_02041E30
	ldr r0, [r0]
	ldr r3, _020423A0 ; =0x00000724
	add r2, r4, #0
	bl sub_0204115C
	pop {r3, r4, r5, pc}
_02042382:
	cmp r1, #0
	ble _02042394
	ldr r0, _02042398 ; =0x021418A4
	ldr r1, _020423A4 ; =sub_02042108
	ldr r0, [r0]
	ldr r3, _020423A8 ; =0x0000072D
	add r2, r4, #0
	bl sub_0204115C
_02042394:
	pop {r3, r4, r5, pc}
	nop
_02042398: .word 0x021418A4
_0204239C: .word sub_02041E30
_020423A0: .word 0x00000724
_020423A4: .word sub_02042108
_020423A8: .word 0x0000072D
	thumb_func_end sub_02042350

	thumb_func_start sub_020423AC
sub_020423AC: ; 0x020423AC
	push {r3, lr}
	bl sub_02042E84
	add r1, r0, #0
	add r1, #0x56
	mov r0, #2
	ldrh r1, [r1]
	lsl r0, r0, #8
	bl sub_0203EC44
	cmp r0, #0
	beq _020423D4
	ldr r0, _020423D8 ; =0x021418A4
	mov r3, #0x1d
	ldr r0, [r0]
	ldr r1, _020423DC ; =sub_02042350
	mov r2, #0
	lsl r3, r3, #6
	bl sub_0204115C
_020423D4:
	pop {r3, pc}
	nop
_020423D8: .word 0x021418A4
_020423DC: .word sub_02042350
	thumb_func_end sub_020423AC

	thumb_func_start sub_020423E0
sub_020423E0: ; 0x020423E0
	push {r3, lr}
	bl sub_0203FF8C
	cmp r0, #0
	bne _02042402
	bl sub_02042E84
	mov r0, #1
	bl sub_0203D254
	ldr r0, _02042404 ; =0x021418A4
	ldr r1, _02042408 ; =sub_020423AC
	ldr r0, [r0]
	ldr r3, _0204240C ; =0x00000756
	mov r2, #0
	bl sub_0204115C
_02042402:
	pop {r3, pc}
	.align 2, 0
_02042404: .word 0x021418A4
_02042408: .word sub_020423AC
_0204240C: .word 0x00000756
	thumb_func_end sub_020423E0

	thumb_func_start sub_02042410
sub_02042410: ; 0x02042410
	ldr r1, _02042420 ; =0x021418A4
	ldr r1, [r1]
	cmp r1, #0
	beq _0204241C
	add r1, #0x4f
	strb r0, [r1]
_0204241C:
	bx lr
	nop
_02042420: .word 0x021418A4
	thumb_func_end sub_02042410

	thumb_func_start sub_02042424
sub_02042424: ; 0x02042424
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	add r2, r0, #0
	ldr r0, _0204244C ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	beq _0204243A
	add r0, #0x50
	strb r4, [r0]
_0204243A:
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	blx r1
	pop {r4, pc}
	nop
_0204244C: .word 0x021418A4
	thumb_func_end sub_02042424

	thumb_func_start sub_02042450
sub_02042450: ; 0x02042450
	bx lr
	.align 2, 0
	thumb_func_end sub_02042450

	thumb_func_start sub_02042454
sub_02042454: ; 0x02042454
	push {r3, lr}
	ldr r1, _02042474 ; =0x021418A4
	ldr r1, [r1]
	cmp r1, #0
	beq _0204246E
	add r1, #0x4d
	strb r0, [r1]
	bl sub_02040158
	bl sub_02040180
	mov r0, #1
	pop {r3, pc}
_0204246E:
	mov r0, #0
	pop {r3, pc}
	nop
_02042474: .word 0x021418A4
	thumb_func_end sub_02042454

	thumb_func_start sub_02042478
sub_02042478: ; 0x02042478
	push {r3, lr}
	ldr r0, _02042490 ; =0x021418A4
	ldr r1, [r0]
	cmp r1, #0
	beq _0204248C
	mov r0, #0
	add r1, #0x4d
	strb r0, [r1]
	bl sub_0204016C
_0204248C:
	pop {r3, pc}
	nop
_02042490: .word 0x021418A4
	thumb_func_end sub_02042478

	thumb_func_start sub_02042494
sub_02042494: ; 0x02042494
	ldr r0, _020424A8 ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	beq _020424A2
	add r0, #0x4d
	ldrb r0, [r0]
	bx lr
_020424A2:
	mov r0, #0
	bx lr
	nop
_020424A8: .word 0x021418A4
	thumb_func_end sub_02042494

	thumb_func_start sub_020424AC
sub_020424AC: ; 0x020424AC
	push {r3, r4, r5, lr}
	ldr r4, _020424DC ; =0x021418A4
	ldr r5, [r4]
	cmp r5, #0
	beq _020424D8
	ldr r4, _020424E0 ; =0x000003ED
	sub r4, r0, r4
	cmp r4, #1
	bls _020424C0
	neg r0, r0
_020424C0:
	str r0, [r5, #0x30]
	ldr r0, _020424DC ; =0x021418A4
	cmp r3, #0
	ldr r4, [r0]
	str r1, [r4, #0x34]
	ldr r1, [r0]
	str r2, [r1, #0x38]
	ldr r0, [r0]
	str r3, [r0, #0x3c]
	beq _020424D8
	bl sub_02040158
_020424D8:
	pop {r3, r4, r5, pc}
	nop
_020424DC: .word 0x021418A4
_020424E0: .word 0x000003ED
	thumb_func_end sub_020424AC

	thumb_func_start sub_020424E4
sub_020424E4: ; 0x020424E4
	push {r3, lr}
	ldr r0, _02042534 ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	beq _02042532
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	mov r1, #0
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #5
	bhi _02042510
	mov r3, #1
	lsl r3, r0
	mov r0, #0x23
	mov r2, #1
	tst r0, r3
	beq _02042510
	add r1, r2, #0
_02042510:
	cmp r1, #0
	bne _0204251E
	ldr r0, _02042538 ; =0x0209ABE8
	ldr r2, _0204253C ; =0x0209AC30
	mov r1, #0
	bl sub_0203CB80
_0204251E:
	ldr r0, _02042534 ; =0x021418A4
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0x30]
	ldr r1, [r0]
	str r2, [r1, #0x34]
	ldr r1, [r0]
	str r2, [r1, #0x38]
	ldr r0, [r0]
	str r2, [r0, #0x3c]
_02042532:
	pop {r3, pc}
	.align 2, 0
_02042534: .word 0x021418A4
_02042538: .word 0x0209ABE8
_0204253C: .word 0x0209AC30
	thumb_func_end sub_020424E4

	thumb_func_start sub_02042540
sub_02042540: ; 0x02042540
	push {r3, lr}
	ldr r0, _0204255C ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	bne _02042554
	ldr r0, _02042560 ; =0x0209ABE8
	ldr r2, _02042564 ; =0x0209ACB4
	mov r1, #0
	bl sub_0203CB80
_02042554:
	ldr r0, _0204255C ; =0x021418A4
	ldr r0, [r0]
	add r0, #0x30
	pop {r3, pc}
	.align 2, 0
_0204255C: .word 0x021418A4
_02042560: .word 0x0209ABE8
_02042564: .word 0x0209ACB4
	thumb_func_end sub_02042540

	thumb_func_start sub_02042568
sub_02042568: ; 0x02042568
	ldr r0, _02042574 ; =0x0209ABE8
	ldr r2, _02042578 ; =0x0209ACC0
	ldr r3, _0204257C ; =sub_0203CB80
	mov r1, #0
	bx r3
	nop
_02042574: .word 0x0209ABE8
_02042578: .word 0x0209ACC0
_0204257C: .word sub_0203CB80
	thumb_func_end sub_02042568

	thumb_func_start sub_02042580
sub_02042580: ; 0x02042580
	ldr r0, _02042598 ; =0x021418A4
	ldr r0, [r0]
	cmp r0, #0
	beq _02042594
	ldr r1, [r0, #8]
	ldr r0, _0204259C ; =sub_02042568
	cmp r1, r0
	bne _02042594
	mov r0, #1
	bx lr
_02042594:
	mov r0, #0
	bx lr
	.align 2, 0
_02042598: .word 0x021418A4
_0204259C: .word sub_02042568
	thumb_func_end sub_02042580

	thumb_func_start sub_020425A0
sub_020425A0: ; 0x020425A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #1
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_020116C0
	add r2, r0, #0
	beq _020425BC
	ldr r2, [r2]
	add r0, r6, #0
	add r1, r7, #0
	blx r2
_020425BC:
	mov r0, #1
	bl sub_02011778
	cmp r5, r4
	beq _020425D4
	ldr r0, _020425E4 ; =0x021418A8
	ldr r2, _020425E8 ; =0x00009E80
	strh r4, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203A15C
_020425D4:
	mov r0, #0
	mov r1, #0
	bl sub_0203E874
	bl sub_0203E7DC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020425E4: .word 0x021418A8
_020425E8: .word 0x00009E80
	thumb_func_end sub_020425A0

	thumb_func_start sub_020425EC
sub_020425EC: ; 0x020425EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02042770 ; =0x021418A8
	str r1, [sp, #4]
	ldrh r0, [r0]
	add r7, r2, #0
	cmp r0, #0
	beq _02042600
	b _02042606
_02042600:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
_02042606:
	add r1, r4, #0
	add r1, #0x56
	ldrh r1, [r1]
	mov r2, #0x1e
	lsl r2, r2, #0xa
	bl sub_0203A15C
	mov r0, #0x6a
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x56
	mov r6, #0xd5
	lsl r6, r6, #2
	ldrh r0, [r0]
	ldr r3, _02042774 ; =0x0209ACE4
	add r1, r6, #0
	mov r2, #1
	bl sub_0203A1FC
	add r5, r0, #0
	ldr r0, _02042770 ; =0x021418A8
	sub r1, r6, #2
	str r5, [r0, #8]
	mov r0, #1
	strb r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	bl sub_020116C0
	add r1, r6, #0
	sub r1, #0x14
	sub r6, #0x14
	str r0, [r5, r1]
	ldr r0, [r5, r6]
	cmp r0, #0
	bne _0204265A
	ldr r0, _02042778 ; =0x0209ACEC
	ldr r2, _0204277C ; =0x0209ACF0
	mov r1, #0
	bl sub_0203CB80
_0204265A:
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #4
	bne _0204266E
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02042F74
	add r4, r0, #0
_0204266E:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x70
	blx sub_02078920
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #6
	bhi _020426FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204268E: ; jump table
	.short _0204270A - _0204268E - 2 ; case 0
	.short _0204269C - _0204268E - 2 ; case 1
	.short _0204269C - _0204268E - 2 ; case 2
	.short _020426C8 - _0204268E - 2 ; case 3
	.short _020426C8 - _0204268E - 2 ; case 4
	.short _0204270A - _0204268E - 2 ; case 5
	.short _0204269C - _0204268E - 2 ; case 6
_0204269C:
	mov r2, #0xd
	add r0, r4, #0
	lsl r2, r2, #6
	add r0, #0x54
	ldr r2, [r5, r2]
	ldrh r0, [r0]
	ldr r2, [r2]
	mov r1, #0
	blx r2
	add r1, r4, #0
	add r1, #0x58
	ldrh r2, [r1]
	mov r1, #2
	lsl r1, r1, #0xe
	orr r1, r2
	add r0, r4, #0
	add r0, #0x54
	lsl r1, r1, #0x10
	ldrh r0, [r0]
	lsr r1, r1, #0x10
	ldr r2, [r4, #0x48]
	b _020426EE
_020426C8:
	add r0, r4, #0
	add r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0x80
	bls _020426DC
	ldr r0, _02042778 ; =0x0209ACEC
	ldr r2, _02042780 ; =0x0209AD00
	mov r1, #0
	bl sub_0203CB80
_020426DC:
	ldr r0, _02042770 ; =0x021418A8
	ldrh r0, [r0]
	cmp r0, #0
	beq _020426F4
_020426E4:
	add r1, r4, #0
	add r1, #0x5a
	ldrh r1, [r1]
	mov r2, #0x1b
	lsl r2, r2, #8
_020426EE:
	bl sub_0203A15C
	b _0204270A
_020426F4:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	b _020426E4
_020426FC:
	ldr r0, _02042778 ; =0x0209ACEC
	ldr r2, _02042784 ; =0x0209AD30
	mov r1, #0
	bl sub_0203CB80
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0204270A:
	mov r6, #0xd3
	lsl r6, r6, #2
	add r0, r4, #0
	str r7, [r5, r6]
	add r0, #0x56
	ldrh r0, [r0]
	ldr r1, [sp, #4]
	bl sub_0204129C
	add r0, r5, #0
	bl sub_0204034C
	add r0, r4, #0
	add r0, #0x56
	ldrh r0, [r0]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r3, [r5, r6]
	lsl r0, r0, #8
	bl sub_02040B94
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	beq _0204276C
	cmp r0, #4
	beq _0204276C
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	cmp r0, #1
	bhi _02042758
	mov r2, #1
_02042758:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x5e
	add r4, #0x56
	ldrh r0, [r0]
	ldrh r1, [r1]
	ldrh r3, [r4]
	bl sub_0203E76C
_0204276C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02042770: .word 0x021418A8
_02042774: .word 0x0209ACE4
_02042778: .word 0x0209ACEC
_0204277C: .word 0x0209ACF0
_02042780: .word 0x0209AD00
_02042784: .word 0x0209AD30
	thumb_func_end sub_020425EC

	thumb_func_start sub_02042788
sub_02042788: ; 0x02042788
	push {r3, lr}
	bl sub_02042E78
	cmp r0, #0
	bne _02042796
	mov r0, #0
	pop {r3, pc}
_02042796:
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x6c]
	blx r0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02042788

	thumb_func_start sub_020427A4
sub_020427A4: ; 0x020427A4
	push {r3, lr}
	bl sub_02042E78
	cmp r0, #0
	bne _020427B2
	mov r0, #1
	pop {r3, pc}
_020427B2:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020427A4

	thumb_func_start sub_020427B8
sub_020427B8: ; 0x020427B8
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02042E78
	add r4, r0, #0
	add r0, #0x56
	ldrh r0, [r0]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x58
	ldrh r7, [r0]
	add r0, r4, #0
	add r0, #0x5a
	ldrh r6, [r0]
	add r0, r4, #0
	add r0, #0x65
	ldrb r5, [r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _020427E8
	add r0, r0, #4
	ldr r0, [r4, r0]
	blx r1
_020427E8:
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _020427F6
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	blx r1
_020427F6:
	add r0, r4, #0
	bl sub_020403A4
	add r0, r5, #0
	bl sub_02011778
	add r0, r4, #0
	bl sub_0203A24C
	mov r1, #0
	ldr r0, _02042854 ; =0x021418A8
	cmp r5, #6
	str r1, [r0, #8]
	bhi _02042838
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204281E: ; jump table
	.short _02042844 - _0204281E - 2 ; case 0
	.short _0204282C - _0204281E - 2 ; case 1
	.short _0204282C - _0204281E - 2 ; case 2
	.short _02042834 - _0204281E - 2 ; case 3
	.short _02042834 - _0204281E - 2 ; case 4
	.short _02042844 - _0204281E - 2 ; case 5
	.short _0204282C - _0204281E - 2 ; case 6
_0204282C:
	add r0, r7, #0
_0204282E:
	bl sub_0203A1D0
	b _02042844
_02042834:
	add r0, r6, #0
	b _0204282E
_02042838:
	ldr r0, _02042858 ; =0x0209ACEC
	ldr r2, _0204285C ; =0x0209AD30
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, r6, r7, pc}
_02042844:
	ldr r0, [sp]
	bl sub_0203A1D0
	mov r0, #4
	bl sub_0203D134
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02042854: .word 0x021418A8
_02042858: .word 0x0209ACEC
_0204285C: .word 0x0209AD30
	thumb_func_end sub_020427B8

	thumb_func_start sub_02042860
sub_02042860: ; 0x02042860
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02043048
	cmp r4, #0
	beq _02042898
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	str r5, [r4, r0]
	cmp r1, #1
	bne _0204288A
	ldr r0, _0204289C ; =sub_020427B8
	bl sub_0204230C
	b _02042890
_0204288A:
	ldr r0, _0204289C ; =sub_020427B8
	bl sub_02041DA8
_02042890:
	bl sub_0203E7DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_02042898:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204289C: .word sub_020427B8
	thumb_func_end sub_02042860

	thumb_func_start sub_020428A0
sub_020428A0: ; 0x020428A0
	ldr r3, _020428A4 ; =sub_02041DE4
	bx r3
	.align 2, 0
_020428A4: .word sub_02041DE4
	thumb_func_end sub_020428A0

	thumb_func_start sub_020428A8
sub_020428A8: ; 0x020428A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	add r2, r0, #0
	bne _020428B8
	mov r0, #0
	pop {r4, pc}
_020428B8:
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r4, #0
	ldr r1, [r1, #0x28]
	blx r1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020428A8

	thumb_func_start sub_020428C8
sub_020428C8: ; 0x020428C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	add r2, r0, #0
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	add r0, r4, #0
	ldr r1, [r1, #0x2c]
	blx r1
	pop {r4, pc}
	thumb_func_end sub_020428C8

	thumb_func_start sub_020428E0
sub_020428E0: ; 0x020428E0
	push {r4, lr}
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02043B44
	bl sub_020431CC
	bl sub_02041410
	cmp r0, #0
	beq _020428FC
	mov r0, #1
	pop {r4, pc}
_020428FC:
	cmp r4, #0
	bne _02042904
	mov r0, #1
	pop {r4, pc}
_02042904:
	bl sub_0203E838
	bl sub_020406E0
	bl sub_0203EFE8
	bl sub_02040198
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020428E0

	thumb_func_start sub_02042918
sub_02042918: ; 0x02042918
	push {r3, r4, r5, lr}
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02041410
	cmp r0, #0
	bne _0204294E
	cmp r4, #0
	beq _0204294E
	mov r5, #0xd
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0204294E
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	beq _0204294E
	cmp r0, #2
	beq _0204294E
	ldr r1, [r4, r5]
	mov r0, #0
	ldr r1, [r1, #0xc]
	blx r1
_0204294E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042918

	thumb_func_start sub_02042950
sub_02042950: ; 0x02042950
	ldr r3, _02042958 ; =sub_02041354
	mov r1, #1
	bx r3
	nop
_02042958: .word sub_02041354
	thumb_func_end sub_02042950

	thumb_func_start sub_0204295C
sub_0204295C: ; 0x0204295C
	ldr r3, _02042964 ; =sub_02041354
	mov r1, #0
	bx r3
	nop
_02042964: .word sub_02041354
	thumb_func_end sub_0204295C

	thumb_func_start sub_02042968
sub_02042968: ; 0x02042968
	ldr r3, _0204296C ; =sub_020413F0
	bx r3
	.align 2, 0
_0204296C: .word sub_020413F0
	thumb_func_end sub_02042968

	thumb_func_start sub_02042970
sub_02042970: ; 0x02042970
	push {r3, lr}
	bl sub_02042E78
	add r1, r0, #0
	add r1, #0x65
	ldrb r1, [r1]
	cmp r1, #5
	bhi _020429A6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0204298C: ; jump table
	.short _0204299E - _0204298C - 2 ; case 0
	.short _02042998 - _0204298C - 2 ; case 1
	.short _02042998 - _0204298C - 2 ; case 2
	.short _020429A6 - _0204298C - 2 ; case 3
	.short _020429A6 - _0204298C - 2 ; case 4
	.short _0204299E - _0204298C - 2 ; case 5
_02042998:
	bl sub_0204208C
	pop {r3, pc}
_0204299E:
	add r0, #0x56
	ldrh r0, [r0]
	bl sub_020414C0
_020429A6:
	pop {r3, pc}
	thumb_func_end sub_02042970

	thumb_func_start sub_020429A8
sub_020429A8: ; 0x020429A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02042E78
	add r4, r0, #0
	bl sub_02043068
	cmp r0, #1
	bne _020429CA
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02043088
	add r5, r0, #0
_020429CA:
	add r4, #0x56
	ldrh r0, [r4]
	add r1, r5, #0
	mov r2, #1
	bl sub_02041A30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020429A8

	thumb_func_start sub_020429D8
sub_020429D8: ; 0x020429D8
	ldr r3, _020429DC ; =sub_02043834
	bx r3
	.align 2, 0
_020429DC: .word sub_02043834
	thumb_func_end sub_020429D8

	thumb_func_start sub_020429E0
sub_020429E0: ; 0x020429E0
	ldr r3, _020429E4 ; =sub_0204313C
	bx r3
	.align 2, 0
_020429E4: .word sub_0204313C
	thumb_func_end sub_020429E0

	thumb_func_start sub_020429E8
sub_020429E8: ; 0x020429E8
	ldr r3, _020429EC ; =sub_0204307C
	bx r3
	.align 2, 0
_020429EC: .word sub_0204307C
	thumb_func_end sub_020429E8

	thumb_func_start sub_020429F0
sub_020429F0: ; 0x020429F0
	ldr r3, _020429F4 ; =sub_02043028
	bx r3
	.align 2, 0
_020429F4: .word sub_02043028
	thumb_func_end sub_020429F0

	thumb_func_start sub_020429F8
sub_020429F8: ; 0x020429F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	add r0, #0x56
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #1
	bl sub_02041A30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020429F8

	thumb_func_start sub_02042A10
sub_02042A10: ; 0x02042A10
	push {r3, lr}
	bl sub_02042E78
	bl sub_02041DFC
	pop {r3, pc}
	thumb_func_end sub_02042A10

	thumb_func_start sub_02042A1C
sub_02042A1C: ; 0x02042A1C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _02042A2E
	add r0, r4, #0
	bl sub_0203EEA4
_02042A2E:
	pop {r4, pc}
	thumb_func_end sub_02042A1C

	thumb_func_start sub_02042A30
sub_02042A30: ; 0x02042A30
	ldr r3, _02042A34 ; =sub_02041C00
	bx r3
	.align 2, 0
_02042A34: .word sub_02041C00
	thumb_func_end sub_02042A30

	thumb_func_start sub_02042A38
sub_02042A38: ; 0x02042A38
	ldr r3, _02042A3C ; =sub_020437A0
	bx r3
	.align 2, 0
_02042A3C: .word sub_020437A0
	thumb_func_end sub_02042A38

	thumb_func_start sub_02042A40
sub_02042A40: ; 0x02042A40
	ldr r3, _02042A44 ; =sub_020437DC
	bx r3
	.align 2, 0
_02042A44: .word sub_020437DC
	thumb_func_end sub_02042A40

	thumb_func_start sub_02042A48
sub_02042A48: ; 0x02042A48
	ldr r3, _02042A4C ; =sub_0204381C
	bx r3
	.align 2, 0
_02042A4C: .word sub_0204381C
	thumb_func_end sub_02042A48

	thumb_func_start sub_02042A50
sub_02042A50: ; 0x02042A50
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02042A6A
	add r1, #0xc4
	ldr r1, [r1]
	add r0, r4, #0
	blx r1
_02042A6A:
	pop {r4, pc}
	thumb_func_end sub_02042A50

	thumb_func_start sub_02042A6C
sub_02042A6C: ; 0x02042A6C
	push {r3, lr}
	bl sub_020401DC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end sub_02042A6C

	thumb_func_start sub_02042A78
sub_02042A78: ; 0x02042A78
	ldr r3, _02042A7C ; =sub_02040474
	bx r3
	.align 2, 0
_02042A7C: .word sub_02040474
	thumb_func_end sub_02042A78

	thumb_func_start sub_02042A80
sub_02042A80: ; 0x02042A80
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	cmp r0, #0
	bne _02042A90
	mov r0, #0
	pop {r4, pc}
_02042A90:
	add r0, r4, #0
	bl sub_02040414
	bl sub_0204044C
	pop {r4, pc}
	thumb_func_end sub_02042A80

	thumb_func_start sub_02042A9C
sub_02042A9C: ; 0x02042A9C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	add r0, #0xb8
	ldr r1, [r0]
	cmp r1, #0
	beq _02042AB6
	add r0, r4, #0
	blx r1
_02042AB6:
	pop {r4, pc}
	thumb_func_end sub_02042A9C

	thumb_func_start sub_02042AB8
sub_02042AB8: ; 0x02042AB8
	push {r3, lr}
	ldr r0, _02042AE0 ; =0x021418A8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02042AC6
	mov r0, #1
	pop {r3, pc}
_02042AC6:
	bl sub_02042E78
	mov r1, #0xd
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x6c]
	blx r0
	cmp r0, #0
	bne _02042ADC
	mov r0, #1
	pop {r3, pc}
_02042ADC:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02042AE0: .word 0x021418A8
	thumb_func_end sub_02042AB8

	thumb_func_start sub_02042AE4
sub_02042AE4: ; 0x02042AE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042E84
	cmp r0, #0
	beq _02042AFC
	add r1, r0, #0
	add r1, #0x5c
	strh r5, [r1]
	add r0, #0x5e
	strh r4, [r0]
_02042AFC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02042AE4

	thumb_func_start sub_02042B00
sub_02042B00: ; 0x02042B00
	push {r3, lr}
	bl sub_02042E78
	cmp r0, #0
	beq _02042B1C
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02042B1C
	mov r0, #1
	pop {r3, pc}
_02042B1C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042B00

	thumb_func_start sub_02042B20
sub_02042B20: ; 0x02042B20
	push {r3, lr}
	bl sub_02042E78
	cmp r0, #0
	beq _02042B3C
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02042B3C
	mov r0, #1
	pop {r3, pc}
_02042B3C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042B20

	thumb_func_start sub_02042B40
sub_02042B40: ; 0x02042B40
	push {r3, r4, r5, lr}
	bl sub_02042E84
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	bl sub_0203C1E8
	cmp r0, #1
	bne _02042B62
	ldr r0, _02042BA0 ; =0x0209ACEC
	ldr r2, _02042BA4 ; =0x0209AD30
	mov r1, #0
	bl sub_0203CB80
	pop {r3, r4, r5, pc}
_02042B62:
	cmp r4, #0
	beq _02042B98
	add r5, #0x65
	ldrb r0, [r5]
	cmp r0, #3
	beq _02042B98
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	mov r2, #0
	add r0, #0xff
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02042B82
	mov r2, #1
_02042B82:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x5c
	add r1, #0x5e
	add r4, #0x56
	ldrh r0, [r0]
	ldrh r1, [r1]
	ldrh r3, [r4]
	bl sub_0203E76C
	pop {r3, r4, r5, pc}
_02042B98:
	bl sub_0203E7DC
	pop {r3, r4, r5, pc}
	nop
_02042BA0: .word 0x0209ACEC
_02042BA4: .word 0x0209AD30
	thumb_func_end sub_02042B40

	thumb_func_start sub_02042BA8
sub_02042BA8: ; 0x02042BA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xf0
	mov r1, #0
	bl sub_02042AE4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203E810
	bl sub_02042B40
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02042BA8

	thumb_func_start sub_02042BC4
sub_02042BC4: ; 0x02042BC4
	push {r4, lr}
	mov r4, #0
	bl sub_0203FFC4
	cmp r0, #0
	bne _02042BD2
	mov r4, #1
_02042BD2:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02042BC4

	thumb_func_start sub_02042BD8
sub_02042BD8: ; 0x02042BD8
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #5
	bne _02042BE4
	mov r0, #1
	bx lr
_02042BE4:
	mov r0, #0
	bx lr
	thumb_func_end sub_02042BD8

	thumb_func_start sub_02042BE8
sub_02042BE8: ; 0x02042BE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02042E84
	add r0, r5, #0
	bl sub_020401DC
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r3, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0203FAFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02042BE8

	thumb_func_start sub_02042C18
sub_02042C18: ; 0x02042C18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp, #0xc]
	bl sub_02042E84
	add r0, r7, #0
	mov r6, #0xff
	bl sub_02042BD8
	cmp r0, #0
	bne _02042C3E
	cmp r4, #0x11
	blo _02042C3E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02042C3E:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02042C5C
	add r0, r7, #0
	bl sub_020401DC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020400B8
	cmp r0, #0
	beq _02042C5C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02042C5C:
	cmp r5, #0xff
	beq _02042C76
	cmp r5, #7
	blo _02042C6E
	ldr r0, _02042C94 ; =0x0209ACEC
	ldr r2, _02042C98 ; =0x0209AD34
	mov r1, #0
	bl sub_0203CB80
_02042C6E:
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02042C76:
	add r0, r7, #0
	bl sub_020401DC
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x2c]
	add r0, r4, #0
	bl sub_0203FAFC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02042C94: .word 0x0209ACEC
_02042C98: .word 0x0209AD34
	thumb_func_end sub_02042C18

	thumb_func_start sub_02042C9C
sub_02042C9C: ; 0x02042C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_02042E84
	add r0, r5, #0
	bl sub_02042BD8
	cmp r0, #0
	bne _02042CC0
	cmp r4, #0x11
	blo _02042CC0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02042CC0:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02042CDE
	add r0, r5, #0
	bl sub_020401DC
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020400B8
	cmp r0, #0
	beq _02042CDE
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02042CDE:
	add r0, r5, #0
	bl sub_020401DC
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	add r0, r4, #0
	add r2, r7, #0
	bl sub_0203FAFC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02042C9C

	thumb_func_start sub_02042CFC
sub_02042CFC: ; 0x02042CFC
	ldr r3, _02042D00 ; =sub_020400F0
	bx r3
	.align 2, 0
_02042D00: .word sub_020400F0
	thumb_func_end sub_02042CFC

	thumb_func_start sub_02042D04
sub_02042D04: ; 0x02042D04
	ldr r3, _02042D08 ; =sub_020405F8
	bx r3
	.align 2, 0
_02042D08: .word sub_020405F8
	thumb_func_end sub_02042D04

	thumb_func_start sub_02042D0C
sub_02042D0C: ; 0x02042D0C
	ldr r3, _02042D10 ; =sub_02040654
	bx r3
	.align 2, 0
_02042D10: .word sub_02040654
	thumb_func_end sub_02042D0C

	thumb_func_start sub_02042D14
sub_02042D14: ; 0x02042D14
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	bl sub_02042E84
	add r0, #0x67
	strb r4, [r0]
	mov r0, #0xff
	bl sub_02040414
	add r1, r4, #0
	bl sub_02040B68
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02042D14

	thumb_func_start sub_02042D34
sub_02042D34: ; 0x02042D34
	push {r3, lr}
	bl sub_02042E84
	cmp r0, #0
	beq _02042D44
	add r0, #0x67
	ldrb r0, [r0]
	pop {r3, pc}
_02042D44:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02042D34

	thumb_func_start sub_02042D48
sub_02042D48: ; 0x02042D48
	push {r3, lr}
	bl sub_02042E78
	ldr r2, [r0, #0x44]
	cmp r2, #0
	beq _02042D5E
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	blx r2
	pop {r3, pc}
_02042D5E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02042D48

	thumb_func_start sub_02042D64
sub_02042D64: ; 0x02042D64
	push {r3, lr}
	bl sub_02042E78
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _02042D7A
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	blx r2
	pop {r3, pc}
_02042D7A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02042D64

	thumb_func_start sub_02042D80
sub_02042D80: ; 0x02042D80
	push {r3, lr}
	bl sub_02042E78
	add r0, #0x62
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02042D80

	thumb_func_start sub_02042D8C
sub_02042D8C: ; 0x02042D8C
	ldr r3, _02042D90 ; =sub_02040118
	bx r3
	.align 2, 0
_02042D90: .word sub_02040118
	thumb_func_end sub_02042D8C

	thumb_func_start sub_02042D94
sub_02042D94: ; 0x02042D94
	push {r3, lr}
	bl sub_02042E78
	cmp r0, #0
	beq _02042DA6
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
_02042DA6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02042D94

	thumb_func_start sub_02042DAC
sub_02042DAC: ; 0x02042DAC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	cmp r0, #0
	beq _02042DBE
	mov r1, #0xd3
	lsl r1, r1, #2
	str r4, [r0, r1]
_02042DBE:
	pop {r4, pc}
	thumb_func_end sub_02042DAC

	thumb_func_start sub_02042DC0
sub_02042DC0: ; 0x02042DC0
	push {r4, lr}
	bl sub_02042E78
	add r4, r0, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #8
	bls _02042DDA
	ldr r0, _02042DE0 ; =0x0209ACEC
	ldr r2, _02042DE4 ; =0x0209AD40
	mov r1, #0
	bl sub_0203CB80
_02042DDA:
	add r4, #0x60
	ldrb r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02042DE0: .word 0x0209ACEC
_02042DE4: .word 0x0209AD40
	thumb_func_end sub_02042DC0

	thumb_func_start sub_02042DE8
sub_02042DE8: ; 0x02042DE8
	push {r3, lr}
	bl sub_02042E78
	add r0, #0x61
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02042DE8

	thumb_func_start sub_02042DF4
sub_02042DF4: ; 0x02042DF4
	push {r4, lr}
	bl sub_02042E78
	add r4, r0, #0
	bne _02042E08
	ldr r0, _02042E10 ; =0x0209ACEC
	ldr r2, _02042E14 ; =0x0209AD74
	mov r1, #0
	bl sub_0203CB80
_02042E08:
	add r4, #0x6c
	ldrh r0, [r4]
	pop {r4, pc}
	nop
_02042E10: .word 0x0209ACEC
_02042E14: .word 0x0209AD74
	thumb_func_end sub_02042DF4

	thumb_func_start sub_02042E18
sub_02042E18: ; 0x02042E18
	push {r3, lr}
	bl sub_02042E78
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _02042E2C
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	blx r2
_02042E2C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02042E18

	thumb_func_start sub_02042E30
sub_02042E30: ; 0x02042E30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02042E50
	bl sub_02040440
	mov r2, #0xd3
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x28]
	add r1, r5, #0
	blx r3
_02042E50:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02042E30

	thumb_func_start sub_02042E54
sub_02042E54: ; 0x02042E54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042E78
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _02042E74
	bl sub_02040440
	mov r2, #0xd3
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x24]
	add r1, r5, #0
	blx r3
_02042E74:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02042E54

	thumb_func_start sub_02042E78
sub_02042E78: ; 0x02042E78
	ldr r0, _02042E80 ; =0x021418A8
	ldr r0, [r0, #8]
	bx lr
	nop
_02042E80: .word 0x021418A8
	thumb_func_end sub_02042E78

	thumb_func_start sub_02042E84
sub_02042E84: ; 0x02042E84
	ldr r0, _02042E90 ; =0x021418A8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02042E8E
	mov r0, #0
_02042E8E:
	bx lr
	.align 2, 0
_02042E90: .word 0x021418A8
	thumb_func_end sub_02042E84

	thumb_func_start sub_02042E94
sub_02042E94: ; 0x02042E94
	ldr r3, _02042E98 ; =sub_02042410
	bx r3
	.align 2, 0
_02042E98: .word sub_02042410
	thumb_func_end sub_02042E94

	thumb_func_start sub_02042E9C
sub_02042E9C: ; 0x02042E9C
	ldr r3, _02042EA0 ; =sub_02042424
	bx r3
	.align 2, 0
_02042EA0: .word sub_02042424
	thumb_func_end sub_02042E9C

	thumb_func_start sub_02042EA4
sub_02042EA4: ; 0x02042EA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	add r1, #0x24
	mov r2, #0x1f
	bic r1, r2
	str r3, [sp]
	add r1, #0x20
	mov r2, #1
	add r3, r4, #0
	bl sub_0203A1FC
	add r2, r0, #0
	add r2, #0x20
	mov r1, #0x1f
	bic r2, r1
	sub r1, r2, #4
	str r0, [r1]
	add r0, r2, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02042EA4

	thumb_func_start sub_02042ED0
sub_02042ED0: ; 0x02042ED0
	push {r3, lr}
	cmp r0, #0
	beq _02042EDE
	sub r0, r0, #4
	ldr r0, [r0]
	bl sub_0203A24C
_02042EDE:
	pop {r3, pc}
	thumb_func_end sub_02042ED0

	thumb_func_start sub_02042EE0
sub_02042EE0: ; 0x02042EE0
	ldr r2, _02042EE8 ; =0x021418A8
	str r0, [r2, #0xc]
	str r1, [r2, #4]
	bx lr
	.align 2, 0
_02042EE8: .word 0x021418A8
	thumb_func_end sub_02042EE0

	thumb_func_start sub_02042EEC
sub_02042EEC: ; 0x02042EEC
	ldr r2, _02042EF8 ; =0x021418A8
	ldr r3, [r2, #0xc]
	str r3, [r0]
	ldr r0, [r2, #4]
	str r0, [r1]
	bx lr
	.align 2, 0
_02042EF8: .word 0x021418A8
	thumb_func_end sub_02042EEC

	thumb_func_start sub_02042EFC
sub_02042EFC: ; 0x02042EFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042E78
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x70
	blx sub_02078920
	pop {r4, pc}
	thumb_func_end sub_02042EFC

	thumb_func_start sub_02042F10
sub_02042F10: ; 0x02042F10
	push {r3, lr}
	bl sub_02042E78
	cmp r0, #0
	beq _02042F20
	mov r1, #0
	str r1, [r0, #0x2c]
	str r1, [r0, #0x1c]
_02042F20:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02042F10

	thumb_func_start sub_02042F24
sub_02042F24: ; 0x02042F24
	ldr r3, _02042F28 ; =sub_02040078
	bx r3
	.align 2, 0
_02042F28: .word sub_02040078
	thumb_func_end sub_02042F24

	thumb_func_start sub_02042F2C
sub_02042F2C: ; 0x02042F2C
	push {r3, lr}
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl sub_0203E874
	bl sub_02042B40
	pop {r3, pc}
	thumb_func_end sub_02042F2C

	thumb_func_start sub_02042F40
sub_02042F40: ; 0x02042F40
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_0203E874
	bl sub_02042B40
	pop {r3, pc}
	thumb_func_end sub_02042F40

	thumb_func_start sub_02042F50
sub_02042F50: ; 0x02042F50
	ldr r1, _02042F6C ; =0x021418A8
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02042F68
	cmp r0, #1
	ldr r0, _02042F70 ; =0x00000352
	bne _02042F64
	mov r1, #1
	strb r1, [r2, r0]
	bx lr
_02042F64:
	mov r1, #0
	strb r1, [r2, r0]
_02042F68:
	bx lr
	nop
_02042F6C: .word 0x021418A8
_02042F70: .word 0x00000352
	thumb_func_end sub_02042F50

	thumb_func_start sub_02042F74
sub_02042F74: ; 0x02042F74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0204300C ; =0x021418B8
	add r4, r0, #0
	ldr r2, [r1]
	cmp r2, #0
	beq _02042F8A
	ldr r1, _02043010 ; =0x00000101
	ldrb r1, [r2, r1]
	cmp r1, #1
	beq _0204300A
_02042F8A:
	add r0, r4, #0
	add r0, #0x54
	ldrh r2, [r0]
	ldr r0, _02043014 ; =0x00007FFF
	mov r1, #0x72
	and r2, r0
	add r0, r0, #1
	orr r0, r2
	lsl r0, r0, #0x10
	str r1, [sp]
	ldr r3, _02043018 ; =0x0209AD7C
	lsr r0, r0, #0x10
	add r1, #0x9a
	mov r2, #1
	bl sub_0203A1FC
	add r6, r0, #0
	add r5, r4, #0
	add r3, r6, #0
	mov r2, #0xe
_02042FB2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02042FB2
	add r0, r6, #0
	ldr r1, [r4, #0x2c]
	str r7, [r6, #0x70]
	add r0, #0x80
	str r1, [r0]
	ldr r0, [r4, #0x18]
	mov r1, #3
	str r0, [r6, #0x78]
	ldr r0, [r4, #0x1c]
	mov r2, #0
	str r0, [r6, #0x7c]
	add r0, r6, #0
	add r0, #0x65
	strb r1, [r0]
	ldr r0, _0204301C ; =sub_020431A8
	ldr r4, _0204300C ; =0x021418B8
	str r0, [r6, #0x2c]
	ldr r0, _02043020 ; =sub_02043720
	str r0, [r6, #0x18]
	ldr r0, _02043024 ; =sub_02043748
	str r0, [r6, #0x1c]
	add r0, r6, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0x41
	lsl r0, r0, #2
	strb r1, [r6, r0]
	add r1, r6, #0
	add r1, #0x64
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0x60
	ldrb r1, [r1]
	add r0, r0, #3
	strb r1, [r6, r0]
	mov r0, #0x20
	str r6, [r4]
	bl sub_0203D10C
	ldr r0, [r4]
_0204300A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204300C: .word 0x021418B8
_02043010: .word 0x00000101
_02043014: .word 0x00007FFF
_02043018: .word 0x0209AD7C
_0204301C: .word sub_020431A8
_02043020: .word sub_02043720
_02043024: .word sub_02043748
	thumb_func_end sub_02042F74

	thumb_func_start sub_02043028
sub_02043028: ; 0x02043028
	push {r4, lr}
	ldr r4, _02043044 ; =0x021418B8
	ldr r0, [r4]
	cmp r0, #0
	beq _02043042
	mov r0, #0x20
	bl sub_0203D134
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
_02043042:
	pop {r4, pc}
	.align 2, 0
_02043044: .word 0x021418B8
	thumb_func_end sub_02043028

	thumb_func_start sub_02043048
sub_02043048: ; 0x02043048
	push {r3, lr}
	ldr r0, _02043060 ; =0x021418B8
	ldr r1, [r0]
	cmp r1, #0
	beq _0204305E
	ldr r0, _02043064 ; =0x00000101
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0204305E
	bl sub_02043028
_0204305E:
	pop {r3, pc}
	.align 2, 0
_02043060: .word 0x021418B8
_02043064: .word 0x00000101
	thumb_func_end sub_02043048

	thumb_func_start sub_02043068
sub_02043068: ; 0x02043068
	ldr r0, _02043078 ; =0x021418B8
	ldr r0, [r0]
	cmp r0, #0
	beq _02043074
	mov r0, #1
	bx lr
_02043074:
	mov r0, #0
	bx lr
	.align 2, 0
_02043078: .word 0x021418B8
	thumb_func_end sub_02043068

	thumb_func_start sub_0204307C
sub_0204307C: ; 0x0204307C
	ldr r1, _02043084 ; =0x021418B8
	ldr r1, [r1]
	str r0, [r1, #0x74]
	bx lr
	.align 2, 0
_02043084: .word 0x021418B8
	thumb_func_end sub_0204307C

	thumb_func_start sub_02043088
sub_02043088: ; 0x02043088
	ldr r3, _020430B4 ; =0x021418B8
	ldr r3, [r3]
	cmp r3, #0
	beq _020430B2
	cmp r0, #0
	beq _02043098
	add r3, #0x84
	str r0, [r3]
_02043098:
	cmp r1, #0
	beq _020430A4
	ldr r0, _020430B4 ; =0x021418B8
	ldr r0, [r0]
	add r0, #0x88
	str r1, [r0]
_020430A4:
	cmp r2, #0
	beq _020430B0
	ldr r0, _020430B4 ; =0x021418B8
	ldr r0, [r0]
	add r0, #0x8c
	str r2, [r0]
_020430B0:
	ldr r0, _020430B8 ; =sub_02043170
_020430B2:
	bx lr
	.align 2, 0
_020430B4: .word 0x021418B8
_020430B8: .word sub_02043170
	thumb_func_end sub_02043088

	thumb_func_start sub_020430BC
sub_020430BC: ; 0x020430BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _02043138 ; =0x021418B8
	add r5, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _02043134
	mov r4, #0
	mov r7, #6
_020430CE:
	ldr r2, [r6]
	lsl r1, r4, #3
	add r2, #0x94
	add r1, r2, r1
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02043E98
	cmp r0, #0
	beq _02043134
	add r4, r4, #1
	cmp r4, #4
	blt _020430CE
	mov r4, #0
	add r0, sp, #0
	ldr r7, _02043138 ; =0x021418B8
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0, #4]
	strb r4, [r0, #5]
_020430FA:
	ldr r1, [r7]
	lsl r6, r4, #3
	add r1, #0x94
	add r0, sp, #0
	add r1, r1, r6
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _02043128
	add r0, r5, #0
	ldr r5, _02043138 ; =0x021418B8
	mov r2, #6
	ldr r1, [r5]
	add r1, #0x94
	add r1, r1, r6
	blx sub_02078920
	ldr r0, [r5]
	add sp, #8
	add r0, #0x90
	str r4, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02043128:
	add r4, r4, #1
	cmp r4, #4
	blt _020430FA
	mov r0, #1
	bl sub_02042454
_02043134:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02043138: .word 0x021418B8
	thumb_func_end sub_020430BC

	thumb_func_start sub_0204313C
sub_0204313C: ; 0x0204313C
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _02043164 ; =0x021418B8
	ldr r2, [r0]
	cmp r2, #0
	beq _02043158
	lsl r0, r1, #3
	add r2, #0x94
	add r0, r2, r0
	add r1, r3, #0
	mov r2, #6
	blx sub_02078920
	pop {r3, pc}
_02043158:
	ldr r0, _02043168 ; =0x0209AD90
	ldr r2, _0204316C ; =0x0209AD94
	mov r1, #0
	bl sub_0203CB80
	pop {r3, pc}
	.align 2, 0
_02043164: .word 0x021418B8
_02043168: .word 0x0209AD90
_0204316C: .word 0x0209AD94
	thumb_func_end sub_0204313C

	thumb_func_start sub_02043170
sub_02043170: ; 0x02043170
	push {r3, r4, r5, lr}
	ldr r4, _020431A0 ; =0x021418B8
	ldr r1, [r4]
	cmp r1, #0
	beq _0204319C
	ldr r5, _020431A4 ; =0x00000102
	mov r0, #1
	strb r0, [r1, r5]
	ldr r2, [r4]
	add r0, r5, #4
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _02043192
	sub r1, r0, #1
	add r0, r5, #3
	strb r1, [r2, r0]
	pop {r3, r4, r5, pc}
_02043192:
	bl sub_0203FFC4
	ldr r2, [r4]
	add r1, r5, #3
	strb r0, [r2, r1]
_0204319C:
	pop {r3, r4, r5, pc}
	nop
_020431A0: .word 0x021418B8
_020431A4: .word 0x00000102
	thumb_func_end sub_02043170

	thumb_func_start sub_020431A8
sub_020431A8: ; 0x020431A8
	ldr r0, _020431B8 ; =0x021418B8
	ldr r2, [r0]
	cmp r2, #0
	beq _020431B6
	ldr r0, _020431BC ; =0x00000103
	mov r1, #1
	strb r1, [r2, r0]
_020431B6:
	bx lr
	.align 2, 0
_020431B8: .word 0x021418B8
_020431BC: .word 0x00000103
	thumb_func_end sub_020431A8

	thumb_func_start sub_020431C0
sub_020431C0: ; 0x020431C0
	ldr r2, _020431C8 ; =0x00000109
	strb r1, [r0, r2]
	bx lr
	nop
_020431C8: .word 0x00000109
	thumb_func_end sub_020431C0

	thumb_func_start sub_020431CC
sub_020431CC: ; 0x020431CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _02043494 ; =0x021418B8
	ldr r6, [r5]
	cmp r6, #0
	bne _020431DA
	b _0204370C
_020431DA:
	ldr r4, _02043498 ; =0x00000109
	ldrb r0, [r6, r4]
	cmp r0, #0x12
	bhi _02043296
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020431EE: ; jump table
	.short _02043214 - _020431EE - 2 ; case 0
	.short _0204323A - _020431EE - 2 ; case 1
	.short _02043256 - _020431EE - 2 ; case 2
	.short _020432A4 - _020431EE - 2 ; case 3
	.short _02043356 - _020431EE - 2 ; case 4
	.short _02043396 - _020431EE - 2 ; case 5
	.short _020433C8 - _020431EE - 2 ; case 6
	.short _020433F6 - _020431EE - 2 ; case 7
	.short _02043422 - _020431EE - 2 ; case 8
	.short _02043446 - _020431EE - 2 ; case 9
	.short _020434C2 - _020431EE - 2 ; case 10
	.short _02043512 - _020431EE - 2 ; case 11
	.short _0204355E - _020431EE - 2 ; case 12
	.short _02043596 - _020431EE - 2 ; case 13
	.short _020435D6 - _020431EE - 2 ; case 14
	.short _0204360A - _020431EE - 2 ; case 15
	.short _0204363A - _020431EE - 2 ; case 16
	.short _02043664 - _020431EE - 2 ; case 17
	.short _0204369C - _020431EE - 2 ; case 18
_02043214:
	sub r0, r4, #7
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _02043296
	mov r0, #1
	sub r4, #8
	strb r0, [r6, r4]
	bl sub_02040440
	mov r1, #3
	mov r2, #0
	bl sub_02040624
	add r0, r6, #0
	mov r1, #1
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204323A:
	bl sub_02040440
	mov r1, #3
	mov r2, #0
	bl sub_02040664
	cmp r0, #0
	beq _02043296
	add r0, r6, #0
	mov r1, #2
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043256:
	bl sub_0203FFC4
	cmp r0, #0
	bne _02043284
	bl sub_02040440
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _02043296
	add r0, r6, #0
	mov r1, #3
	bl sub_020431C0
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0x38
	add sp, #0xc
	strb r1, [r6, r0]
	pop {r4, r5, r6, r7, pc}
_02043284:
	bl sub_02040440
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	bne _02043298
_02043296:
	b _0204370C
_02043298:
	add r0, r6, #0
	mov r1, #3
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020432A4:
	add r0, r4, #0
	sub r0, #9
	ldrb r0, [r6, r0]
	sub r4, #9
	sub r0, r0, #1
	strb r0, [r6, r4]
	bl sub_02042AB8
	cmp r0, #0
	beq _02043342
	ldr r2, [r5]
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	cmp r1, #0
	beq _020432C8
	ldr r0, [r2, #0x70]
	blx r1
_020432C8:
	ldr r1, _0204349C ; =0x0000010A
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _020432FA
	add r0, r6, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #4
	bne _020432FA
	sub r0, r1, #5
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _020432FA
	add r0, r6, #0
	mov r1, #0xe
	mov r4, #0xe
	bl sub_020431C0
	mov r0, #0xe
	add r0, #0xfa
	ldrb r0, [r6, r0]
	add r4, #0xfa
	add r0, r0, #1
	strb r0, [r6, r4]
	b _02043342
_020432FA:
	ldr r1, _020434A0 ; =0x00000105
	ldrb r0, [r6, r1]
	cmp r0, #0
	bne _0204332E
	add r0, r6, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #4
	bne _0204332E
	add r0, r1, #3
	ldrb r0, [r6, r0]
	add r2, r0, #1
	add r0, r1, #3
	strb r2, [r6, r0]
	mov r0, #0
	bl sub_02042860
	add r2, r6, #0
	add r2, #0x88
	ldr r0, [r6, #0x70]
	ldr r2, [r2]
	mov r1, #1
	blx r2
	add r0, r6, #0
	mov r1, #4
	b _0204333E
_0204332E:
	add r2, r6, #0
	add r2, #0x88
	ldr r0, [r6, #0x70]
	ldr r2, [r2]
	mov r1, #0
	blx r2
	add r0, r6, #0
	mov r1, #9
_0204333E:
	bl sub_020431C0
_02043342:
	mov r0, #1
	lsl r0, r0, #8
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _0204339E
	mov r0, #0
	bl sub_02042860
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043356:
	bl sub_02042788
	cmp r0, #0
	bne _0204339E
	add r0, r6, #0
	mov r1, #3
	add r0, #0x65
	strb r1, [r0]
	ldr r0, _020434A4 ; =sub_020431A8
	str r0, [r6, #0x2c]
	add r0, r4, #2
	ldrb r1, [r6, r0]
	cmp r1, #0
	beq _02043378
	add r0, r6, #0
	add r0, #0x67
	strb r1, [r0]
_02043378:
	ldr r0, _020434A8 ; =0x00000102
	mov r1, #0
	strb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r6, r0]
	ldr r2, [r6, #0x70]
	add r0, r6, #0
	bl sub_020425EC
	add r0, r6, #0
	mov r1, #5
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043396:
	bl sub_02042788
	cmp r0, #1
	beq _020433A0
_0204339E:
	b _0204370C
_020433A0:
	bl sub_02042E78
	mov r1, #0xd
	add r2, r0, #0
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	ldr r0, [r5]
	add r1, #0xc8
	ldr r0, [r0, #0x74]
	ldr r1, [r1]
	blx r1
	ldr r0, _020434AC ; =sub_02043170
	bl sub_020429F8
	add r0, r6, #0
	mov r1, #6
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020433C8:
	sub r0, r4, #7
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _020434CA
	mov r0, #1
	sub r4, #8
	strb r0, [r6, r4]
	bl sub_02040440
	ldr r3, [r5]
	mov r1, #9
	mov r2, #0x24
	add r3, #0x90
	bl sub_02042BE8
	cmp r0, #0
	beq _020434CA
	add r0, r6, #0
	mov r1, #7
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020433F6:
	sub r0, r4, #7
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _020434CA
	bl sub_02040440
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _020434CA
	mov r0, #0xc8
	bl sub_02042A50
	add r0, r6, #0
	mov r1, #8
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043422:
	bl sub_02042AB8
	cmp r0, #0
	beq _020434CA
	ldr r2, [r5]
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	cmp r1, #0
	beq _0204343A
	ldr r0, [r2, #0x70]
	blx r1
_0204343A:
	add r0, r6, #0
	mov r1, #9
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043446:
	bl sub_02042AB8
	cmp r0, #0
	beq _020434CA
	add r0, r4, #2
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _02043468
	add r0, r6, #0
	mov r1, #0
	add r0, #0x6e
	strh r1, [r0]
	add r0, r4, #2
	ldrb r1, [r6, r0]
	add r0, r6, #0
	add r0, #0x67
	strb r1, [r0]
_02043468:
	add r0, r6, #0
	mov r4, #0
	add r0, #0x65
	strb r4, [r0]
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r5, #0x41
	str r0, [r6, #0x2c]
	lsl r5, r5, #2
	add r0, r6, #0
	ldrb r1, [r6, r5]
	add r0, #0x64
	strb r1, [r0]
	ldr r2, [r6, #0x70]
	add r0, r6, #0
	mov r1, #0
	bl sub_020425EC
	ldr r0, _02043494 ; =0x021418B8
	b _020434B0
	nop
_02043494: .word 0x021418B8
_02043498: .word 0x00000109
_0204349C: .word 0x0000010A
_020434A0: .word 0x00000105
_020434A4: .word sub_020431A8
_020434A8: .word 0x00000102
_020434AC: .word sub_02043170
_020434B0:
	ldr r1, [r0]
	sub r0, r5, #3
	strb r4, [r1, r0]
	add r0, r6, #0
	mov r1, #0xa
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020434C2:
	bl sub_02042788
	cmp r0, #1
	beq _020434CC
_020434CA:
	b _0204370C
_020434CC:
	sub r0, r4, #4
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _020434E4
	bl sub_02042970
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020434E4:
	add r0, r6, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #4
	bne _020434FE
	bl sub_02042968
	add r0, r6, #0
	mov r1, #0xb
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020434FE:
	add r0, r6, #0
	add r0, #0x94
	bl sub_02042950
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043512:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #4
	bl sub_0207C33C
	mov r7, #6
_0204351E:
	ldr r0, [sp]
	bl sub_020428A8
	cmp r0, #0
	beq _020435DE
	mov r5, #0
	add r4, r0, #4
_0204352C:
	lsl r1, r5, #3
	add r0, sp, #4
	add r1, r4, r1
	add r2, r7, #0
	bl sub_02043E98
	cmp r0, #0
	bne _02043550
	ldr r0, [sp]
	bl sub_020428C8
	bl sub_0204295C
	add r0, r6, #0
	mov r1, #0xc
	bl sub_020431C0
	b _02043556
_02043550:
	add r5, r5, #1
	cmp r5, #4
	blt _0204352C
_02043556:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	b _0204351E
_0204355E:
	sub r0, r4, #4
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _02043582
	bl sub_02040474
	cmp r0, #0
	beq _020435DE
	bl sub_02040504
	cmp r0, #1
	bne _020435DE
	add r0, r6, #0
	mov r1, #0xd
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043582:
	bl sub_02040504
	cmp r0, #1
	bne _020435DE
	add r0, r6, #0
	mov r1, #0xd
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043596:
	sub r0, r4, #4
	ldrb r0, [r6, r0]
	cmp r0, #0
	beq _020435B4
	add r0, r6, #0
	add r0, #0x84
	ldr r1, [r0]
	cmp r1, #0
	beq _020435AC
	ldr r0, [r6, #0x70]
	blx r1
_020435AC:
	bl sub_02043048
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020435B4:
	bl sub_02040474
	sub r1, r4, #2
	ldrb r1, [r6, r1]
	cmp r0, r1
	blt _020435DE
	add r0, r6, #0
	add r0, #0x84
	ldr r1, [r0]
	cmp r1, #0
	beq _020435CE
	ldr r0, [r6, #0x70]
	blx r1
_020435CE:
	bl sub_02043048
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020435D6:
	bl sub_02042788
	cmp r0, #0
	beq _020435E0
_020435DE:
	b _0204370C
_020435E0:
	add r0, r6, #0
	mov r2, #3
	add r0, #0x65
	strb r2, [r0]
	ldr r0, _02043710 ; =sub_020431A8
	mov r1, #0
	str r0, [r6, #0x2c]
	add r2, #0xff
	strb r1, [r6, r2]
	sub r0, r4, #6
	strb r1, [r6, r0]
	ldr r2, [r6, #0x70]
	add r0, r6, #0
	bl sub_020425EC
	add r0, r6, #0
	mov r1, #0xf
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204360A:
	bl sub_02042788
	cmp r0, #1
	bne _0204370C
	bl sub_02042E78
	mov r1, #0xd
	add r2, r0, #0
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	ldr r0, [r5]
	add r1, #0xc8
	ldr r0, [r0, #0x74]
	ldr r1, [r1]
	blx r1
	ldr r0, _02043714 ; =sub_02043170
	bl sub_020429F8
	add r0, r6, #0
	mov r1, #0x10
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0204363A:
	sub r0, r4, #7
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0204370C
	bl sub_02040440
	mov r1, #3
	mov r2, #0
	mov r4, #3
	bl sub_02040624
	ldr r0, [r5]
	mov r1, #1
	add r4, #0xfe
	strb r1, [r0, r4]
	add r0, r6, #0
	mov r1, #0x11
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043664:
	bl sub_02040440
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl sub_02040664
	cmp r0, #0
	beq _0204370C
	bl sub_02040440
	mov r1, #1
	add r2, r4, #0
	add r3, r4, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _0204370C
	add r0, r6, #0
	mov r1, #0x12
	bl sub_020431C0
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0x38
	add sp, #0xc
	strb r1, [r6, r0]
	pop {r4, r5, r6, r7, pc}
_0204369C:
	add r0, r4, #0
	sub r0, #9
	ldrb r0, [r6, r0]
	sub r1, r0, #1
	add r0, r4, #0
	sub r0, #9
	strb r1, [r6, r0]
	bl sub_02042AB8
	cmp r0, #0
	bne _020436BA
	sub r4, #9
	ldrb r0, [r6, r4]
	cmp r0, #0
	bne _0204370C
_020436BA:
	ldr r0, _02043718 ; =0x021418B8
	ldr r2, [r0]
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	cmp r1, #0
	beq _020436CC
	ldr r0, [r2, #0x70]
	blx r1
_020436CC:
	ldr r1, _0204371C ; =0x0000010A
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _02043704
	sub r0, r1, #2
	ldrb r0, [r6, r0]
	cmp r0, #3
	bhs _02043704
	sub r0, r1, #2
	ldrb r0, [r6, r0]
	add r2, r0, #1
	sub r0, r1, #2
	strb r2, [r6, r0]
	ldrb r0, [r6, r0]
	cmp r0, #3
	blo _020436F8
	add r0, r6, #0
	mov r1, #9
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020436F8:
	add r0, r6, #0
	mov r1, #0xe
	bl sub_020431C0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02043704:
	add r0, r6, #0
	mov r1, #9
	bl sub_020431C0
_0204370C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02043710: .word sub_020431A8
_02043714: .word sub_02043170
_02043718: .word 0x021418B8
_0204371C: .word 0x0000010A
	thumb_func_end sub_020431CC

	thumb_func_start sub_02043720
sub_02043720: ; 0x02043720
	push {r4, lr}
	ldr r1, _02043744 ; =0x021418B8
	ldr r4, [r1]
	cmp r4, #0
	bne _0204372E
	mov r0, #0
	pop {r4, pc}
_0204372E:
	ldr r1, [r4, #0x78]
	blx r1
	add r1, r4, #0
	add r1, #0xb4
	mov r2, #0x4c
	blx sub_02078920
	add r4, #0x90
	add r0, r4, #0
	pop {r4, pc}
	nop
_02043744: .word 0x021418B8
	thumb_func_end sub_02043720

	thumb_func_start sub_02043748
sub_02043748: ; 0x02043748
	push {r3, lr}
	ldr r1, _02043760 ; =0x021418B8
	ldr r1, [r1]
	cmp r1, #0
	bne _02043756
	mov r0, #0
	pop {r3, pc}
_02043756:
	ldr r1, [r1, #0x7c]
	blx r1
	add r0, #0x24
	pop {r3, pc}
	nop
_02043760: .word 0x021418B8
	thumb_func_end sub_02043748

	thumb_func_start sub_02043764
sub_02043764: ; 0x02043764
	push {r4, r5, r6, lr}
	add r6, r2, #0
	ldr r0, [r6]
	cmp r0, #4
	blt _02043778
	ldr r0, _02043798 ; =0x0209AD90
	ldr r2, _0204379C ; =0x0209AD98
	mov r1, #0
	bl sub_0203CB80
_02043778:
	ldr r5, [r6]
	cmp r5, #4
	ble _02043780
	mov r5, #4
_02043780:
	mov r4, #0
	cmp r5, #0
	ble _02043796
	add r6, r6, #4
_02043788:
	lsl r0, r4, #3
	add r0, r6, r0
	bl sub_020430BC
	add r4, r4, #1
	cmp r4, r5
	blt _02043788
_02043796:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02043798: .word 0x0209AD90
_0204379C: .word 0x0209AD98
	thumb_func_end sub_02043764

	thumb_func_start sub_020437A0
sub_020437A0: ; 0x020437A0
	push {r3, r4, r5, lr}
	ldr r5, _020437D4 ; =0x021418B8
	ldr r0, [r5]
	cmp r0, #0
	bne _020437AE
	mov r0, #0
	pop {r3, r4, r5, pc}
_020437AE:
	ldr r4, _020437D8 ; =0x00000109
	ldrb r1, [r0, r4]
	cmp r1, #0x10
	bne _020437D0
	sub r1, r4, #1
	ldrb r1, [r0, r1]
	add r2, r1, #1
	sub r1, r4, #2
	strb r2, [r0, r1]
	mov r0, #0
	bl sub_02042860
	ldr r0, [r5]
	mov r1, #9
	strb r1, [r0, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_020437D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_020437D4: .word 0x021418B8
_020437D8: .word 0x00000109
	thumb_func_end sub_020437A0

	thumb_func_start sub_020437DC
sub_020437DC: ; 0x020437DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0204380C ; =0x021418B8
	ldr r0, [r0]
	cmp r0, #0
	bne _020437F2
	ldr r0, _02043810 ; =0x0209AD90
	ldr r2, _02043814 ; =0x0209ADB4
	mov r1, #0
	bl sub_0203CB80
_020437F2:
	ldr r1, _0204380C ; =0x021418B8
	ldr r3, [r1]
	cmp r3, #0
	beq _02043808
	ldr r0, _02043818 ; =0x00000106
	add r2, r4, #1
	strb r2, [r3, r0]
	ldr r1, [r1]
	mov r2, #1
	add r0, r0, #4
	strb r2, [r1, r0]
_02043808:
	pop {r4, pc}
	nop
_0204380C: .word 0x021418B8
_02043810: .word 0x0209AD90
_02043814: .word 0x0209ADB4
_02043818: .word 0x00000106
	thumb_func_end sub_020437DC

	thumb_func_start sub_0204381C
sub_0204381C: ; 0x0204381C
	ldr r0, _02043830 ; =0x021418B8
	ldr r1, [r0]
	cmp r1, #0
	bne _02043828
	mov r0, #0
	bx lr
_02043828:
	mov r0, #0x42
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
_02043830: .word 0x021418B8
	thumb_func_end sub_0204381C

	thumb_func_start sub_02043834
sub_02043834: ; 0x02043834
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02043858 ; =0x021418B8
	ldr r0, [r0]
	cmp r0, #0
	bne _0204384A
	ldr r0, _0204385C ; =0x0209AD90
	ldr r2, _02043860 ; =0x0209ADB4
	mov r1, #0
	bl sub_0203CB80
_0204384A:
	ldr r0, _02043858 ; =0x021418B8
	ldr r1, [r0]
	cmp r1, #0
	beq _02043856
	ldr r0, _02043864 ; =0x0000010B
	strb r4, [r1, r0]
_02043856:
	pop {r4, pc}
	.align 2, 0
_02043858: .word 0x021418B8
_0204385C: .word 0x0209AD90
_02043860: .word 0x0209ADB4
_02043864: .word 0x0000010B
	thumb_func_end sub_02043834

	thumb_func_start sub_02043868
sub_02043868: ; 0x02043868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020438CC ; =0x021418BC
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _02043880
	ldr r0, _020438D0 ; =0x0209ADC0
	ldr r2, _020438D4 ; =0x0209ADC4
	mov r1, #0
	bl sub_0203CB80
_02043880:
	mov r0, #0x67
	str r0, [sp]
	add r0, r5, #0
	ldr r3, _020438D8 ; =0x0209ADDC
	mov r1, #0x48
	mov r2, #1
	mov r5, #1
	bl sub_0203A1FC
	ldr r2, _020438CC ; =0x021418BC
	mov r1, #0
	str r0, [r2]
	str r1, [r0, #0x20]
	ldr r0, [r2]
	str r1, [r0, #0x24]
	ldr r0, [r2]
	str r1, [r0, #0x44]
	ldr r0, [r2]
	str r1, [r0, #0x30]
	ldr r0, [r2]
	str r1, [r0, #0x34]
	ldr r0, [r2]
	str r4, [r0, #0x38]
	ldr r0, [r2]
	add r4, r1, #0
	str r5, [r0, #0x3c]
	ldr r0, [r2]
	str r1, [r0, #0x40]
_020438B8:
	ldr r3, [r2]
	lsl r0, r1, #2
	str r4, [r3, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #8
	blo _020438B8
	pop {r3, r4, r5, pc}
	nop
_020438CC: .word 0x021418BC
_020438D0: .word 0x0209ADC0
_020438D4: .word 0x0209ADC4
_020438D8: .word 0x0209ADDC
	thumb_func_end sub_02043868

	thumb_func_start sub_020438DC
sub_020438DC: ; 0x020438DC
	push {r4, r5, r6, lr}
	ldr r0, _02043930 ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	bne _020438F0
	ldr r0, _02043934 ; =0x0209ADC0
	ldr r2, _02043938 ; =0x0209ADF0
	mov r1, #0
	bl sub_0203CB80
_020438F0:
	ldr r6, _02043930 ; =0x021418BC
	mov r4, #0
_020438F4:
	ldr r0, [r6]
	lsl r5, r4, #2
	ldr r1, [r0, r5]
	cmp r1, #0
	beq _02043916
	ldrb r0, [r1, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0204390E
	ldr r0, [r1]
	bl sub_0203A24C
_0204390E:
	ldr r0, [r6]
	ldr r0, [r0, r5]
	bl sub_0203A24C
_02043916:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _020438F4
	ldr r4, _02043930 ; =0x021418BC
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_02043930: .word 0x021418BC
_02043934: .word 0x0209ADC0
_02043938: .word 0x0209ADF0
	thumb_func_end sub_020438DC

	thumb_func_start sub_0204393C
sub_0204393C: ; 0x0204393C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02043994 ; =0x021418BC
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _02043958
	ldr r0, _02043998 ; =0x0209ADC0
	ldr r2, _0204399C ; =0x0209ADF0
	mov r1, #0
	bl sub_0203CB80
_02043958:
	ldr r0, _02043994 ; =0x021418BC
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _0204396C
	ldr r0, _02043998 ; =0x0209ADC0
	ldr r2, _020439A0 ; =0x0209AE08
	mov r1, #0
	bl sub_0203CB80
_0204396C:
	ldr r0, _02043994 ; =0x021418BC
	mov r3, #0
	ldr r1, [r0]
	mov r2, #1
	str r5, [r1, #0x20]
	ldr r1, [r0]
	str r4, [r1, #0x24]
	ldr r1, [r0]
	add r1, #0x28
	strb r6, [r1]
	ldr r1, [r0]
	str r7, [r1, #0x2c]
	ldr r1, [r0]
	str r3, [r1, #0x44]
	ldr r1, [r0]
	str r2, [r1, #0x34]
	ldr r0, [r0]
	str r3, [r0, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02043994: .word 0x021418BC
_02043998: .word 0x0209ADC0
_0204399C: .word 0x0209ADF0
_020439A0: .word 0x0209AE08
	thumb_func_end sub_0204393C

	thumb_func_start sub_020439A4
sub_020439A4: ; 0x020439A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02043A08 ; =0x021418BC
	add r5, r1, #0
	ldr r0, [r0]
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0
	bne _020439C0
	ldr r0, _02043A0C ; =0x0209ADC0
	ldr r2, _02043A10 ; =0x0209ADF0
	mov r1, #0
	bl sub_0203CB80
_020439C0:
	ldr r0, _02043A08 ; =0x021418BC
	lsl r5, r5, #2
	ldr r0, [r0]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _020439D6
	ldr r0, _02043A0C ; =0x0209ADC0
	ldr r2, _02043A14 ; =0x0209AE28
	mov r1, #0
	bl sub_0203CB80
_020439D6:
	mov r0, #0xd2
	str r0, [sp]
	ldr r3, _02043A18 ; =0x0209ADDC
	add r0, r7, #0
	mov r1, #0x48
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, _02043A08 ; =0x021418BC
	ldr r2, [r1]
	str r0, [r2, r5]
	ldr r0, [r1]
	ldr r0, [r0, r5]
	str r6, [r0]
	ldr r0, [r1]
	ldr r0, [r0, r5]
	str r4, [r0, #4]
	ldr r0, [r1]
	ldr r2, [r0, r5]
	mov r0, #2
	ldrb r1, [r2, #0x10]
	bic r1, r0
	strb r1, [r2, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02043A08: .word 0x021418BC
_02043A0C: .word 0x0209ADC0
_02043A10: .word 0x0209ADF0
_02043A14: .word 0x0209AE28
_02043A18: .word 0x0209ADDC
	thumb_func_end sub_020439A4

	thumb_func_start sub_02043A1C
sub_02043A1C: ; 0x02043A1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02043A70 ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	bne _02043A32
	ldr r0, _02043A74 ; =0x0209ADC0
	ldr r2, _02043A78 ; =0x0209ADF0
	mov r1, #0
	bl sub_0203CB80
_02043A32:
	ldr r0, _02043A70 ; =0x021418BC
	lsl r4, r4, #2
	ldr r0, [r0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _02043A48
	ldr r0, _02043A74 ; =0x0209ADC0
	ldr r2, _02043A7C ; =0x0209AE50
	mov r1, #0
	bl sub_0203CB80
_02043A48:
	ldr r0, _02043A70 ; =0x021418BC
	ldr r0, [r0]
	ldr r1, [r0, r4]
	ldrb r0, [r1, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02043A5E
	ldr r0, [r1]
	bl sub_0203A24C
_02043A5E:
	ldr r5, _02043A70 ; =0x021418BC
	ldr r0, [r5]
	ldr r0, [r0, r4]
	bl sub_0203A24C
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02043A70: .word 0x021418BC
_02043A74: .word 0x0209ADC0
_02043A78: .word 0x0209ADF0
_02043A7C: .word 0x0209AE50
	thumb_func_end sub_02043A1C

	thumb_func_start sub_02043A80
sub_02043A80: ; 0x02043A80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02043AB8 ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	bne _02043A96
	ldr r0, _02043ABC ; =0x0209ADC0
	ldr r2, _02043AC0 ; =0x0209ADF0
	mov r1, #0
	bl sub_0203CB80
_02043A96:
	ldr r0, _02043AB8 ; =0x021418BC
	lsl r4, r4, #2
	ldr r0, [r0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _02043AAC
	ldr r0, _02043ABC ; =0x0209ADC0
	ldr r2, _02043AC4 ; =0x0209AE50
	mov r1, #0
	bl sub_0203CB80
_02043AAC:
	ldr r0, _02043AB8 ; =0x021418BC
	ldr r0, [r0]
	ldr r0, [r0, r4]
	ldr r0, [r0]
	pop {r4, pc}
	nop
_02043AB8: .word 0x021418BC
_02043ABC: .word 0x0209ADC0
_02043AC0: .word 0x0209ADF0
_02043AC4: .word 0x0209AE50
	thumb_func_end sub_02043A80

	thumb_func_start sub_02043AC8
sub_02043AC8: ; 0x02043AC8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02043B00 ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	bne _02043ADE
	ldr r0, _02043B04 ; =0x0209ADC0
	ldr r2, _02043B08 ; =0x0209ADF0
	mov r1, #0
	bl sub_0203CB80
_02043ADE:
	ldr r0, _02043B00 ; =0x021418BC
	lsl r4, r4, #2
	ldr r0, [r0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _02043AF4
	ldr r0, _02043B04 ; =0x0209ADC0
	ldr r2, _02043B0C ; =0x0209AE50
	mov r1, #0
	bl sub_0203CB80
_02043AF4:
	ldr r0, _02043B00 ; =0x021418BC
	ldr r0, [r0]
	ldr r0, [r0, r4]
	ldr r0, [r0, #0xc]
	pop {r4, pc}
	nop
_02043B00: .word 0x021418BC
_02043B04: .word 0x0209ADC0
_02043B08: .word 0x0209ADF0
_02043B0C: .word 0x0209AE50
	thumb_func_end sub_02043AC8

	thumb_func_start sub_02043B10
sub_02043B10: ; 0x02043B10
	ldr r0, _02043B20 ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	bne _02043B1C
	mov r0, #0
	bx lr
_02043B1C:
	ldr r0, [r0, #0x30]
	bx lr
	.align 2, 0
_02043B20: .word 0x021418BC
	thumb_func_end sub_02043B10

	thumb_func_start sub_02043B24
sub_02043B24: ; 0x02043B24
	ldr r1, _02043B40 ; =0x021418BC
	ldr r1, [r1]
	cmp r1, #0
	beq _02043B34
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02043B38
_02043B34:
	mov r0, #0
	bx lr
_02043B38:
	ldrb r0, [r0, #0x10]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
_02043B40: .word 0x021418BC
	thumb_func_end sub_02043B24

	thumb_func_start sub_02043B44
sub_02043B44: ; 0x02043B44
	push {r3, r4, r5, lr}
	ldr r4, _02043C18 ; =0x021418BC
	ldr r0, [r4]
	cmp r0, #0
	beq _02043C14
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02043C14
	bl sub_02042788
	cmp r0, #1
	bne _02043C14
	ldr r2, [r4]
	ldr r0, [r2, #0x34]
	cmp r0, #1
	bne _02043B76
	mov r0, #0
	mov r5, #0
	bl sub_02043D10
	cmp r0, #1
	bne _02043BFA
	ldr r0, [r4]
	str r5, [r0, #0x34]
	b _02043BFA
_02043B76:
	ldr r1, [r2, #0x44]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	bhs _02043BDE
	ldr r0, [r2, #0x3c]
	cmp r0, #1
	bne _02043BFA
	bl sub_02042E84
	add r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	cmp r0, #1
	bne _02043B9C
	bl sub_0203FBCC
	add r5, #0x6c
	ldrh r1, [r5]
	b _02043BA4
_02043B9C:
	bl sub_0203FBB8
	add r5, #0x61
	ldrb r1, [r5]
_02043BA4:
	sub r4, r1, r0
	sub r4, #0x10
	cmp r4, #0x10
	ble _02043BFA
	ldr r0, _02043C18 ; =0x021418BC
	ldr r0, [r0]
	ldr r2, [r0, #0x44]
	ldr r1, [r0, #0x24]
	add r0, r2, r4
	cmp r0, r1
	bls _02043BBC
	sub r4, r1, r2
_02043BBC:
	add r0, r4, #0
	bl sub_02043C1C
	cmp r0, #1
	bne _02043BFA
	ldr r0, _02043C18 ; =0x021418BC
	ldr r2, [r0]
	ldr r1, [r2, #0x44]
	add r1, r1, r4
	str r1, [r2, #0x44]
	ldr r1, [r0]
	ldr r0, [r1, #0x38]
	cmp r0, #1
	bne _02043BFA
	mov r0, #0
	str r0, [r1, #0x3c]
	b _02043BFA
_02043BDE:
	ldr r0, [r2, #0x30]
	cmp r0, #0
	bne _02043BFA
	mov r0, #1
	mov r5, #1
	bl sub_02043D10
	cmp r0, #1
	bne _02043BFA
	ldr r0, [r4]
	mov r1, #0
	str r5, [r0, #0x30]
	ldr r0, [r4]
	str r1, [r0, #0x20]
_02043BFA:
	ldr r4, _02043C18 ; =0x021418BC
	ldr r0, [r4]
	ldr r0, [r0, #0x40]
	cmp r0, #1
	bne _02043C14
	mov r0, #2
	bl sub_02043D10
	cmp r0, #1
	bne _02043C14
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x40]
_02043C14:
	pop {r3, r4, r5, pc}
	nop
_02043C18: .word 0x021418BC
	thumb_func_end sub_02043B44

	thumb_func_start sub_02043C1C
sub_02043C1C: ; 0x02043C1C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02043C60 ; =0x021418BC
	ldr r2, [r0]
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x44]
	add r4, r1, r0
	ldr r0, [r2, #0x2c]
	cmp r0, #1
	bne _02043C3A
	mov r0, #0xff
	bl sub_02040414
	b _02043C3E
_02043C3A:
	bl sub_02040440
_02043C3E:
	str r4, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _02043C60 ; =0x021418BC
	mov r2, #0xe
	ldr r1, [r1]
	add r3, r5, #0
	add r1, #0x28
	ldrb r1, [r1]
	bl sub_02042C9C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02043C60: .word 0x021418BC
	thumb_func_end sub_02043C1C

	thumb_func_start sub_02043C64
sub_02043C64: ; 0x02043C64
	push {r3, r4, r5, lr}
	cmp r0, #0xff
	bne _02043C6C
	mov r0, #0
_02043C6C:
	ldr r5, _02043C9C ; =0x021418BC
	ldr r1, [r5]
	cmp r1, #0
	beq _02043C98
	lsl r4, r0, #2
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02043C98
	bl sub_02042E84
	ldr r0, [r5]
	cmp r0, #0
	beq _02043C8C
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _02043C90
_02043C8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02043C90:
	ldr r1, [r0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	pop {r3, r4, r5, pc}
_02043C98:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02043C9C: .word 0x021418BC
	thumb_func_end sub_02043C64

	thumb_func_start sub_02043CA0
sub_02043CA0: ; 0x02043CA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0xff
	bne _02043CAC
	mov r5, #0
_02043CAC:
	ldr r0, _02043D0C ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	beq _02043D08
	lsl r4, r5, #2
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02043D08
	bl sub_02042E84
	add r6, r0, #0
	ldr r0, _02043D0C ; =0x021418BC
	ldr r0, [r0]
	cmp r0, #0
	beq _02043D08
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02043D08
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	beq _02043CE2
	add r6, #0x64
	ldrb r0, [r6]
	cmp r0, #0
	beq _02043D08
_02043CE2:
	ldr r6, _02043D0C ; =0x021418BC
	ldr r0, [r6]
	ldr r1, [r0, r4]
	ldr r0, [r1, #0xc]
	add r0, r0, r7
	str r0, [r1, #0xc]
	ldr r0, [r6]
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _02043D08
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02043D08
	ldr r0, [r6]
	mov r1, #1
	str r1, [r0, #0x40]
_02043D08:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02043D0C: .word 0x021418BC
	thumb_func_end sub_02043CA0

	thumb_func_start sub_02043D10
sub_02043D10: ; 0x02043D10
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _02043D68 ; =0x021418BC
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	cmp r0, #1
	bne _02043D28
	mov r0, #0xff
	bl sub_02040414
	b _02043D2C
_02043D28:
	bl sub_02040440
_02043D2C:
	ldr r3, [sp, #0x10]
	mov r1, #3
	bic r3, r1
	mov r2, #3
	add r1, r4, #0
	and r1, r2
	orr r3, r1
	ldr r1, _02043D68 ; =0x021418BC
	str r3, [sp, #0x10]
	ldr r1, [r1]
	and r3, r2
	ldr r2, [r1, #0x24]
	add r1, #0x28
	lsl r2, r2, #2
	orr r2, r3
	str r2, [sp, #0x10]
	add r2, sp, #0x10
	str r2, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldrb r1, [r1]
	mov r2, #0xf
	mov r3, #4
	bl sub_02042C9C
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_02043D68: .word 0x021418BC
	thumb_func_end sub_02043D10

	thumb_func_start sub_02043D6C
sub_02043D6C: ; 0x02043D6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r2, #0
	ldr r6, _02043E34 ; =0x021418BC
	cmp r5, #0xff
	bne _02043D7C
	mov r5, #0
_02043D7C:
	ldr r0, [r6]
	cmp r0, #0
	beq _02043E2E
	lsl r4, r5, #2
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02043E2E
	bl sub_02042E84
	str r0, [sp, #4]
	ldr r0, [r6]
	cmp r0, #0
	beq _02043E2E
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02043E2E
	bl sub_02040440
	ldr r1, [sp, #0x20]
	cmp r1, r0
	beq _02043DB2
	ldr r0, [sp, #4]
	add r0, #0x64
	str r0, [sp, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _02043E2E
_02043DB2:
	ldr r0, [r7]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _02043DC6
	cmp r1, #1
	beq _02043E00
	cmp r1, #2
	beq _02043E1C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02043DC6:
	ldr r1, [r6]
	lsr r0, r0, #2
	ldr r1, [r1, r4]
	ldr r3, [r1, #4]
	cmp r0, r3
	bls _02043DDE
	str r0, [sp]
	ldr r0, _02043E38 ; =0x0209ADC0
	ldr r2, _02043E3C ; =0x0209AE78
	mov r1, #0
	bl sub_0203CB94
_02043DDE:
	ldr r0, [r7]
	add sp, #8
	lsr r1, r0, #2
	ldr r0, [r6]
	ldr r0, [r0, r4]
	str r1, [r0, #8]
	ldr r0, [r6]
	mov r1, #0
	ldr r0, [r0, r4]
	str r1, [r0, #0xc]
	ldr r0, [r6]
	ldr r2, [r0, r4]
	mov r0, #1
	ldrb r1, [r2, #0x10]
	bic r1, r0
	strb r1, [r2, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02043E00:
	ldr r0, [r6]
	ldr r2, [r0, r4]
	ldr r1, [r2, #0xc]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _02043E2E
	ldrb r1, [r2, #0x10]
	mov r0, #1
	add sp, #8
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r2, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02043E1C:
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _02043E2E
	ldr r0, [r6]
	mov r1, #1
	str r1, [r0, #0x3c]
_02043E2E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02043E34: .word 0x021418BC
_02043E38: .word 0x0209ADC0
_02043E3C: .word 0x0209AE78
	thumb_func_end sub_02043D6C

	thumb_func_start sub_02043E40
sub_02043E40: ; 0x02043E40
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x31
	str r1, [sp]
	ldr r1, _02043E80 ; =0x00000BCC
	ldr r3, _02043E84 ; =0x0209AE9C
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	ldr r2, _02043E88 ; =0x021418C0
	mov r1, #0x27
	ldr r3, _02043E8C ; =0x00000271
	str r0, [r2]
	lsl r1, r1, #6
	str r3, [r0, r1]
	ldr r3, [r2]
	add r0, r1, #4
	str r4, [r3, r0]
	add r0, r1, #0
	ldr r4, _02043E90 ; =0x9908B0DF
	ldr r3, [r2]
	add r0, #8
	str r4, [r3, r0]
	ldr r0, [r2]
	add r1, #0xc
	add r0, r0, r1
	ldr r1, _02043E94 ; =0x00001021
	bl sub_020778D8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02043E80: .word 0x00000BCC
_02043E84: .word 0x0209AE9C
_02043E88: .word 0x021418C0
_02043E8C: .word 0x00000271
_02043E90: .word 0x9908B0DF
_02043E94: .word 0x00001021
	thumb_func_end sub_02043E40

	thumb_func_start sub_02043E98
sub_02043E98: ; 0x02043E98
	push {r3, r4}
	add r4, r2, #0
	sub r4, r4, #1
	cmp r2, #0
	beq _02043EB8
_02043EA2:
	ldrb r3, [r1]
	ldrb r2, [r0]
	cmp r2, r3
	beq _02043EB0
	sub r0, r2, r3
	pop {r3, r4}
	bx lr
_02043EB0:
	add r0, r0, #1
	add r1, r1, #1
	sub r4, r4, #1
	bhs _02043EA2
_02043EB8:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02043E98

	thumb_func_start sub_02043EC0
sub_02043EC0: ; 0x02043EC0
	mov r2, #0
_02043EC2:
	ldrb r1, [r0]
	cmp r1, #0
	bne _02043ECC
	add r0, r2, #0
	bx lr
_02043ECC:
	add r0, r0, #1
	add r2, r2, #1
	b _02043EC2
	thumb_func_end sub_02043EC0

	non_word_aligned_thumb_func_start sub_02043ED2
sub_02043ED2: ; 0x02043ED2
	bx lr
	thumb_func_end sub_02043ED2

	thumb_func_start sub_02043ED4
sub_02043ED4: ; 0x02043ED4
	ldr r3, _02043ED8 ; =sub_0207F95C
	bx r3
	.align 2, 0
_02043ED8: .word sub_0207F95C
	thumb_func_end sub_02043ED4

	thumb_func_start sub_02043EDC
sub_02043EDC: ; 0x02043EDC
	push {r4, r5, r6, r7}
	ldr r1, _02043F24 ; =0x021418C0
	mov r6, #0x27
	ldr r2, [r1]
	lsl r6, r6, #6
	str r0, [r2]
	ldr r0, [r1]
	mov r2, #1
	str r2, [r0, r6]
	ldr r0, [r1]
	ldr r3, [r0, r6]
	lsr r0, r6, #2
	cmp r3, r0
	bge _02043F20
	add r5, r0, #0
_02043EFA:
	ldr r2, [r1]
	lsl r0, r3, #2
	add r4, r2, r0
	sub r4, r4, #4
	ldr r7, [r4]
	lsr r4, r7, #0x1e
	eor r7, r4
	ldr r4, _02043F28 ; =0x6C078965
	mul r4, r7
	add r3, r3, r4
	str r3, [r2, r0]
	ldr r2, [r1]
	ldr r0, [r2, r6]
	add r0, r0, #1
	str r0, [r2, r6]
	ldr r0, [r1]
	ldr r3, [r0, r6]
	cmp r3, r5
	blt _02043EFA
_02043F20:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02043F24: .word 0x021418C0
_02043F28: .word 0x6C078965
	thumb_func_end sub_02043EDC

	thumb_func_start sub_02043F2C
sub_02043F2C: ; 0x02043F2C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02044038 ; =0x021418C0
	ldr r1, [r0]
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	lsr r0, r0, #2
	cmp r1, r0
	blt _02044002
	ldr r0, _0204403C ; =0x00000271
	cmp r1, r0
	bne _02043F4A
	ldr r0, _02044040 ; =0x00001571
	bl sub_02043EDC
_02043F4A:
	mov r1, #2
	lsl r1, r1, #0x1e
	mov r0, #0
	sub r1, r1, #1
_02043F52:
	ldr r2, _02044038 ; =0x021418C0
	lsl r4, r0, #2
	ldr r6, [r2]
	mov r2, #2
	ldr r3, [r6, r4]
	lsl r2, r2, #0x1e
	add r5, r6, r4
	and r3, r2
	ldr r2, [r5, #4]
	ldr r7, _02044044 ; =0x00000634
	and r2, r1
	orr r3, r2
	lsr r2, r3, #1
	ldr r5, [r5, r7]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1d
	eor r2, r5
	add r5, r6, r3
	ldr r3, _02044048 ; =0x000009C4
	add r0, r0, #1
	ldr r3, [r5, r3]
	eor r2, r3
	str r2, [r6, r4]
	cmp r0, #0xe3
	blt _02043F52
	ldr r1, _0204404C ; =0x0000026F
	cmp r0, r1
	bge _02043FC8
	mov r1, #2
	lsl r1, r1, #0x1e
	sub r1, r1, #1
_02043F90:
	ldr r2, _02044038 ; =0x021418C0
	lsl r4, r0, #2
	ldr r6, [r2]
	mov r2, #2
	ldr r3, [r6, r4]
	lsl r2, r2, #0x1e
	add r5, r6, r4
	and r3, r2
	ldr r2, [r5, #4]
	mov r7, #0xe3
	and r2, r1
	lsl r7, r7, #2
	orr r3, r2
	sub r5, r5, r7
	lsr r2, r3, #1
	ldr r5, [r5]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1d
	eor r2, r5
	add r5, r6, r3
	ldr r3, _02044048 ; =0x000009C4
	add r0, r0, #1
	ldr r3, [r5, r3]
	eor r2, r3
	str r2, [r6, r4]
	ldr r2, _0204404C ; =0x0000026F
	cmp r0, r2
	blt _02043F90
_02043FC8:
	ldr r4, _02044038 ; =0x021418C0
	mov r0, #2
	ldr r1, [r4]
	ldr r3, _02044050 ; =0x000009BC
	lsl r0, r0, #0x1e
	ldr r2, [r1, r3]
	add r5, r2, #0
	and r5, r0
	ldr r2, [r1]
	sub r0, r0, #1
	and r0, r2
	orr r5, r0
	mov r0, #0x63
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	lsr r0, r5, #1
	eor r0, r2
	lsl r2, r5, #0x1f
	lsr r2, r2, #0x1d
	add r5, r1, r2
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	eor r0, r2
	str r0, [r1, r3]
	ldr r1, [r4]
	mov r2, #0
	add r0, r3, #4
	str r2, [r1, r0]
_02044002:
	ldr r0, _02044038 ; =0x021418C0
	ldr r3, [r0]
	mov r0, #0x27
	lsl r0, r0, #6
	ldr r2, [r3, r0]
	add r1, r2, #1
	str r1, [r3, r0]
	ldr r0, _02044038 ; =0x021418C0
	ldr r1, [r0]
	lsl r0, r2, #2
	ldr r1, [r1, r0]
	lsr r0, r1, #0xb
	add r2, r1, #0
	eor r2, r0
	ldr r0, _02044054 ; =0x9D2C5680
	lsl r1, r2, #7
	and r0, r1
	eor r2, r0
	ldr r0, _02044058 ; =0xEFC60000
	lsl r1, r2, #0xf
	and r0, r1
	add r1, r2, #0
	eor r1, r0
	lsr r0, r1, #0x12
	eor r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02044038: .word 0x021418C0
_0204403C: .word 0x00000271
_02044040: .word 0x00001571
_02044044: .word 0x00000634
_02044048: .word 0x000009C4
_0204404C: .word 0x0000026F
_02044050: .word 0x000009BC
_02044054: .word 0x9D2C5680
_02044058: .word 0xEFC60000
	thumb_func_end sub_02043F2C

	thumb_func_start sub_0204405C
sub_0204405C: ; 0x0204405C
	push {r3, lr}
	add r2, r1, #0
	add r3, r0, #0
	cmp r2, #2
	bhs _02044080
	ldrb r1, [r3]
	add r0, sp, #0
	mov r2, #2
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r0, _02044090 ; =0x021418C0
	ldr r1, [r0]
	ldr r0, _02044094 ; =0x000009CC
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02077A10
	pop {r3, pc}
_02044080:
	ldr r0, _02044090 ; =0x021418C0
	ldr r1, [r0]
	ldr r0, _02044094 ; =0x000009CC
	add r0, r1, r0
	add r1, r3, #0
	bl sub_02077A10
	pop {r3, pc}
	.align 2, 0
_02044090: .word 0x021418C0
_02044094: .word 0x000009CC
	thumb_func_end sub_0204405C

	thumb_func_start sub_02044098
sub_02044098: ; 0x02044098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r4, sp, #0x1c
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0207C6D0
	add r6, sp, #0x3c
	add r0, r6, #0
	bl sub_02077510
	add r7, sp, #8
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x14
	bl sub_02077544
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x20
	bl sub_02077544
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020775C8
	add r4, sp, #0
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	blx sub_02078920
	add r0, r5, #0
	ldmia r4!, {r2, r3}
	stmia r0!, {r2, r3}
	ldr r0, _020440F4 ; =0x6C078965
	ldr r1, _020440F8 ; =0x5D588B65
	str r0, [r5, #8]
	ldr r0, _020440FC ; =0x00269EC3
	str r1, [r5, #0xc]
	mov r1, #0
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_020440F4: .word 0x6C078965
_020440F8: .word 0x5D588B65
_020440FC: .word 0x00269EC3
	thumb_func_end sub_02044098

	thumb_func_start sub_02044100
sub_02044100: ; 0x02044100
	push {r3, r4}
	mov r3, #0
	mov r4, #0
	cmp r1, #0
	bls _02044114
_0204410A:
	ldrb r2, [r0, r4]
	add r4, r4, #1
	add r3, r3, r2
	cmp r4, r1
	blo _0204410A
_02044114:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02044100

	thumb_func_start sub_0204411C
sub_0204411C: ; 0x0204411C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	lsr r6, r1, #1
	beq _0204413E
	add r7, sp, #0x20
_0204412A:
	add r0, r7, #0
	bl sub_02044150
	lsl r1, r4, #1
	ldrh r2, [r5, r1]
	add r4, r4, #1
	eor r0, r2
	strh r0, [r5, r1]
	cmp r4, r6
	blo _0204412A
_0204413E:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_0204411C

	thumb_func_start sub_02044148
sub_02044148: ; 0x02044148
	ldr r3, _0204414C ; =sub_0204411C
	bx r3
	.align 2, 0
_0204414C: .word sub_0204411C
	thumb_func_end sub_02044148

	thumb_func_start sub_02044150
sub_02044150: ; 0x02044150
	ldr r2, [r0]
	ldr r1, _02044168 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0204416C ; =0x00006073
	add r1, r3, r1
	str r1, [r0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_02044168: .word 0x41C64E6D
_0204416C: .word 0x00006073
	thumb_func_end sub_02044150

	thumb_func_start sub_02044170
sub_02044170: ; 0x02044170
	push {r3, r4, r5, lr}
	bl sub_0207CB88
	ldr r5, _02044194 ; =0x021418C4
	mov r4, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x48
	blx sub_020787A8
	str r4, [r5]
	str r4, [r5, #4]
	add r0, r5, #0
	str r4, [r5, #8]
	bl sub_020441F0
	pop {r3, r4, r5, pc}
	nop
_02044194: .word 0x021418C4
	thumb_func_end sub_02044170

	thumb_func_start sub_02044198
sub_02044198: ; 0x02044198
	push {r3, lr}
	ldr r0, _020441B8 ; =0x021418C4
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020441B4
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0xa
	ble _020441B4
	mov r1, #0
	str r1, [r0, #8]
	bl sub_020441F0
_020441B4:
	pop {r3, pc}
	nop
_020441B8: .word 0x021418C4
	thumb_func_end sub_02044198

	thumb_func_start sub_020441BC
sub_020441BC: ; 0x020441BC
	push {r3, r4}
	add r2, r1, #0
	add r4, r2, #0
	str r0, [r2, #0xc]
	mov r0, #1
	add r3, r2, #0
	add r4, #0x2c
	str r0, [r2]
	ldmia r4!, {r0, r1}
	add r3, #0x10
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r2, #0
	add r4, #0x3c
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	add r3, #0x20
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #0
	str r0, [r2, #4]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_020441BC

	thumb_func_start sub_020441F0
sub_020441F0: ; 0x020441F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, _0204420C ; =sub_020441BC
	add r0, #0x2c
	add r1, #0x3c
	add r3, r4, #0
	bl sub_0207CCA4
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
_0204420C: .word sub_020441BC
	thumb_func_end sub_020441F0

	thumb_func_start sub_02044210
sub_02044210: ; 0x02044210
	push {r3, r4}
	ldr r2, _02044230 ; =0x021418D4
	add r4, r0, #0
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	ldr r2, _02044234 ; =0x021418E4
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	nop
_02044230: .word 0x021418D4
_02044234: .word 0x021418E4
	thumb_func_end sub_02044210

	thumb_func_start sub_02044238
sub_02044238: ; 0x02044238
	ldr r2, _02044248 ; =0x021418E4
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	nop
_02044248: .word 0x021418E4
	thumb_func_end sub_02044238

	thumb_func_start sub_0204424C
sub_0204424C: ; 0x0204424C
	ldr r2, _0204425C ; =0x021418D4
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	bx lr
	nop
_0204425C: .word 0x021418D4
	thumb_func_end sub_0204424C

	thumb_func_start sub_02044260
sub_02044260: ; 0x02044260
	push {r3, r4}
	ldr r4, _02044280 ; =0x021418E4
	mov r0, #0x3c
	ldr r1, [r4, #4]
	ldr r3, [r4, #8]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0xe1
	ldr r1, [r4]
	lsl r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	add r0, r3, r0
	pop {r3, r4}
	bx lr
	nop
_02044280: .word 0x021418E4
	thumb_func_end sub_02044260

	thumb_func_start sub_02044284
sub_02044284: ; 0x02044284
	ldr r0, _0204428C ; =0x021418D4
	ldr r1, _02044290 ; =0x021418E4
	ldr r3, _02044294 ; =sub_0207D12C
	bx r3
	.align 2, 0
_0204428C: .word 0x021418D4
_02044290: .word 0x021418E4
_02044294: .word sub_0207D12C
	thumb_func_end sub_02044284

	thumb_func_start sub_02044298
sub_02044298: ; 0x02044298
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r2, [r5, #4]
	ldr r0, _02044300 ; =0x02093376
	lsl r1, r2, #1
	ldrh r0, [r0, r1]
	ldr r3, [r5, #8]
	add r4, r3, r0
	cmp r2, #3
	blo _020442DA
	ldr r6, [r5]
	mov r0, #0x1e
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _020442CA
	add r0, r6, #0
	mov r1, #0x64
	blx sub_0208D65C
	cmp r1, #0
	bne _020442D8
_020442CA:
	mov r1, #0x19
	add r0, r6, #0
	lsl r1, r1, #4
	blx sub_0208D65C
	cmp r1, #0
	bne _020442DA
_020442D8:
	add r4, r4, #1
_020442DA:
	add r6, r5, #0
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r2, #0
	bl sub_0207D0B4
	add r0, r5, #0
	bl sub_0207D0B4
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02044300: .word 0x02093376
	thumb_func_end sub_02044298

	thumb_func_start sub_02044304
sub_02044304: ; 0x02044304
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _02044312
	mov r0, #0
	pop {r3, pc}
_02044312:
	ldr r2, _02044328 ; =0x0000FFFF
	mul r2, r0
	add r0, r2, #0
	blx sub_0208D65C
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0204432C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	pop {r3, pc}
	nop
_02044328: .word 0x0000FFFF
_0204432C: .word FX_SinCosTable_
	thumb_func_end sub_02044304

	thumb_func_start sub_02044330
sub_02044330: ; 0x02044330
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0204433E
	mov r0, #0
	pop {r3, pc}
_0204433E:
	ldr r2, _02044358 ; =0x0000FFFF
	mul r2, r0
	add r0, r2, #0
	blx sub_0208D65C
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0204435C ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	pop {r3, pc}
	nop
_02044358: .word 0x0000FFFF
_0204435C: .word FX_SinCosTable_
	thumb_func_end sub_02044330

	thumb_func_start sub_02044360
sub_02044360: ; 0x02044360
	push {r4, lr}
	mov r4, #0x5a
	lsl r4, r4, #2
	add r1, r4, #0
	blx sub_0208D65C
	ldr r0, _02044380 ; =0x0000FFFF
	mul r0, r1
	add r1, r4, #0
	blx sub_0208D65C
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02044384 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_02044380: .word 0x0000FFFF
_02044384: .word FX_SinCosTable_
	thumb_func_end sub_02044360

	thumb_func_start sub_02044388
sub_02044388: ; 0x02044388
	push {r4, lr}
	mov r4, #0x5a
	lsl r4, r4, #2
	add r1, r4, #0
	blx sub_0208D65C
	ldr r0, _020443AC ; =0x0000FFFF
	mul r0, r1
	add r1, r4, #0
	blx sub_0208D65C
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _020443B0 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_020443AC: .word 0x0000FFFF
_020443B0: .word FX_SinCosTable_
	thumb_func_end sub_02044388

	thumb_func_start sub_020443B4
sub_020443B4: ; 0x020443B4
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _020443C2
	mov r0, #0
	pop {r3, pc}
_020443C2:
	ldr r2, _020443D4 ; =0x0000FFFF
	mul r2, r0
	add r0, r2, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	nop
_020443D4: .word 0x0000FFFF
	thumb_func_end sub_020443B4

	thumb_func_start sub_020443D8
sub_020443D8: ; 0x020443D8
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02044404
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, _02044400 ; =0x0000323D
	lsl r0, r0, #0xd
	blx FX_MulFunc
	asr r1, r0, #0xc
	lsl r0, r4, #0x10
	blx sub_0208D65C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02044400: .word 0x0000323D
	thumb_func_end sub_020443D8

	thumb_func_start sub_02044404
sub_02044404: ; 0x02044404
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	lsl r0, r1, #0xc
	str r0, [sp, #0x34]
	lsl r0, r2, #0xc
	str r0, [sp, #0x24]
	lsl r0, r3, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x50]
	add r7, sp, #0x30
	mov r5, #0
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x54]
	add r4, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r7, #0
	str r5, [sp, #0x38]
	str r5, [sp, #0x2c]
	str r5, [sp, #8]
	bl VEC_Subtract
	add r6, sp, #0x24
	add r0, r6, #0
	add r1, r4, #0
	add r2, r6, #0
	bl VEC_Subtract
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	blx FX_MulFunc
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x34]
	blx FX_MulFunc
	sub r2, r4, r0
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x14]
	add r0, r1, r0
	add r4, r2, r0
	ldr r0, [sp, #0x34]
	str r5, [sp, #0x20]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	add r1, r0, #0
	blx VEC_Normalize
	add r5, sp, #0xc
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl VEC_Subtract
	add r0, sp, #0x18
	add r1, r5, #0
	blx VEC_DotProduct
	asr r0, r0, #0xc
	bpl _02044494
	neg r0, r0
_02044494:
	cmp r4, #0
	bgt _0204449E
	mov r1, #0
	mvn r1, r1
	mul r0, r1
_0204449E:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02044404

	thumb_func_start sub_020444A4
sub_020444A4: ; 0x020444A4
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x1d
	mov r1, #0x86
	lsl r6, r6, #4
	str r1, [sp]
	ldr r3, _02044520 ; =0x0209AEAC
	add r1, r6, #0
	mov r2, #0
	add r7, r0, #0
	mov r5, #0
	bl sub_0203A1FC
	ldr r4, _02044524 ; =0x0214190C
	mov r1, #0
	str r0, [r4]
	add r2, r6, #0
	blx sub_020787A8
	ldr r0, [r4]
	add r1, r7, #0
	strh r7, [r0]
	ldr r0, [r4]
	strh r5, [r0, #4]
	ldr r0, [r4]
	strh r5, [r0, #6]
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_0203C3E4
	add r1, r6, #0
	ldr r2, [r4]
	sub r1, #0x68
	str r0, [r2, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl sub_0203C3E4
	add r1, r6, #0
	add r3, r6, #0
	ldr r2, [r4]
	sub r1, #0x64
	str r0, [r2, r1]
	add r2, r6, #0
	add r0, r5, #0
	sub r2, #0x60
	sub r3, #0x40
	sub r6, #0x20
_02044504:
	ldr r7, [r4]
	lsl r1, r5, #2
	add r7, r7, r1
	str r0, [r7, r2]
	ldr r7, [r4]
	add r5, r5, #1
	add r7, r7, r1
	str r0, [r7, r3]
	ldr r7, [r4]
	add r1, r7, r1
	str r0, [r1, r6]
	cmp r5, #8
	blt _02044504
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02044520: .word 0x0209AEAC
_02044524: .word 0x0214190C
	thumb_func_end sub_020444A4

	thumb_func_start sub_02044528
sub_02044528: ; 0x02044528
	push {r3, r4, r5, lr}
	mov r4, #0
_0204452C:
	add r0, r4, #0
	bl sub_02044B84
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _0204452C
	ldr r4, _02044560 ; =0x0214190C
	mov r5, #0x5a
	ldr r0, [r4]
	lsl r5, r5, #2
	ldr r0, [r0, r5]
	bl sub_0203C448
	ldr r1, [r4]
	add r0, r5, #4
	ldr r0, [r1, r0]
	bl sub_0203C448
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02044560: .word 0x0214190C
	thumb_func_end sub_02044528

	thumb_func_start sub_02044564
sub_02044564: ; 0x02044564
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_02045878
	add r5, r0, #0
	ldr r0, _02044620 ; =0x0214190C
	lsl r6, r7, #2
	ldr r4, [r0]
	mov r0, #0x17
	lsl r0, r0, #4
	add r1, r4, r6
	str r0, [sp, #0x14]
	ldr r0, [r1, r0]
	add r1, r5, #0
	blx sub_0208D868
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r4, r6
	add r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [r1, r0]
	add r1, r5, #0
	blx sub_0208D868
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r1, r5, #0
	blx sub_0208D868
	cmp r1, #0
	beq _020445B2
	mov r0, #1
	b _020445B4
_020445B2:
	mov r0, #0
_020445B4:
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, r5, #0
	blx sub_0208D868
	add r3, r0, #0
	cmp r7, #4
	bhs _020445C8
	mov r0, #0x5a
	b _020445CA
_020445C8:
	mov r0, #0x5b
_020445CA:
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r1, #0
	bne _020445E2
	ldr r4, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r3, r3, r4
	bl sub_0203C460
	b _020445F4
_020445E2:
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r4, [sp, #8]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	sub r1, r1, #1
	add r3, r3, r4
	bl sub_0203C62C
_020445F4:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02044618
	add r1, r0, #0
	ldr r0, _02044620 ; =0x0214190C
	mul r1, r5
	ldr r0, [r0]
	add r2, r0, r6
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	sub r0, r1, r0
	add r1, r5, #0
	blx sub_0208D868
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02044618:
	add r0, r1, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02044620: .word 0x0214190C
	thumb_func_end sub_02044564

	thumb_func_start sub_02044624
sub_02044624: ; 0x02044624
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r7, r1, #0
	str r2, [sp]
	bl sub_02045878
	add r1, r0, #0
	ldr r0, _02044664 ; =0x0214190C
	mov r4, #0x17
	ldr r6, [r0]
	lsl r0, r5, #2
	add r0, r6, r0
	lsl r4, r4, #4
	ldr r0, [r0, r4]
	blx sub_0208D868
	add r1, r0, #0
	cmp r5, #4
	bhs _02044654
	sub r4, #8
	ldr r0, [r6, r4]
	b _02044658
_02044654:
	sub r0, r4, #4
	ldr r0, [r6, r0]
_02044658:
	ldr r2, [sp]
	add r1, r1, r7
	bl sub_0203C804
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02044664: .word 0x0214190C
	thumb_func_end sub_02044624

	thumb_func_start sub_02044668
sub_02044668: ; 0x02044668
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r7, r1, #0
	str r2, [sp]
	bl sub_02045878
	add r5, r0, #0
	ldr r0, _0204470C ; =0x0214190C
	ldr r6, [r0]
	lsl r0, r4, #2
	add r1, r6, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	add r0, r7, #0
	mul r0, r5
	add r0, r1, r0
	add r1, r5, #0
	blx sub_0208D868
	add r7, r0, #0
	cmp r4, #7
	bhi _02044708
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020446A6: ; jump table
	.short _020446B6 - _020446A6 - 2 ; case 0
	.short _020446B6 - _020446A6 - 2 ; case 1
	.short _020446B6 - _020446A6 - 2 ; case 2
	.short _020446B6 - _020446A6 - 2 ; case 3
	.short _020446E0 - _020446A6 - 2 ; case 4
	.short _020446E0 - _020446A6 - 2 ; case 5
	.short _020446E0 - _020446A6 - 2 ; case 6
	.short _020446E0 - _020446A6 - 2 ; case 7
_020446B6:
	ldr r0, [sp]
	add r1, r5, #0
	blx sub_0208D868
	mov r4, #1
	cmp r1, #0
	bne _020446C6
	mov r4, #0
_020446C6:
	ldr r0, [sp]
	add r1, r5, #0
	blx sub_0208D868
	add r2, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	add r2, r2, r4
	bl sub_0203C82C
	pop {r3, r4, r5, r6, r7, pc}
_020446E0:
	ldr r0, [sp]
	add r1, r5, #0
	blx sub_0208D868
	mov r4, #1
	cmp r1, #0
	bne _020446F0
	mov r4, #0
_020446F0:
	ldr r0, [sp]
	add r1, r5, #0
	blx sub_0208D868
	add r2, r0, #0
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, #0
	add r2, r2, r4
	bl sub_0203C82C
_02044708:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204470C: .word 0x0214190C
	thumb_func_end sub_02044668

	thumb_func_start sub_02044710
sub_02044710: ; 0x02044710
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl sub_02074910
	ldr r0, [r4, #8]
	bl sub_0207495C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02044744 ; =0xC7FFFFFF
	and r1, r0
	str r1, [r2]
	ldr r1, [r2]
	asr r0, r0, #3
	and r0, r1
	str r0, [r2]
	bl sub_02046CD0
	bl sub_02046D58
	pop {r4, pc}
	nop
_02044744: .word 0xC7FFFFFF
	thumb_func_end sub_02044710

	thumb_func_start sub_02044748
sub_02044748: ; 0x02044748
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _02044760
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	bl sub_02074910
	bl sub_02046CF0
	pop {r3, pc}
_02044760:
	ldr r0, [r2, #8]
	bl sub_0207495C
	bl sub_02046D78
	pop {r3, pc}
	thumb_func_end sub_02044748

	thumb_func_start sub_0204476C
sub_0204476C: ; 0x0204476C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r4, r1, #0
	str r2, [sp, #8]
	ldrb r0, [r4, #0x10]
	ldr r1, [sp, #8]
	bl sub_02046064
	ldr r1, [sp, #4]
	cmp r1, #7
	bls _02044786
	b _02044A44
_02044786:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02044792: ; jump table
	.short _020447A2 - _02044792 - 2 ; case 0
	.short _020447F0 - _02044792 - 2 ; case 1
	.short _02044830 - _02044792 - 2 ; case 2
	.short _02044898 - _02044792 - 2 ; case 3
	.short _020448FA - _02044792 - 2 ; case 4
	.short _0204493A - _02044792 - 2 ; case 5
	.short _0204497A - _02044792 - 2 ; case 6
	.short _020449DC - _02044792 - 2 ; case 7
_020447A2:
	ldrb r5, [r4, #0x18]
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r5, #0xd
	lsl r5, r3, #2
	lsl r1, r1, #7
	str r1, [sp, #0xc]
	ldr r3, _02044AC4 ; =0x04000008
	lsl r7, r2, #8
	ldrh r2, [r3]
	mov r1, #0x43
	lsl r0, r0, #0xe
	and r1, r2
	orr r1, r0
	ldr r0, [sp, #0xc]
	orr r0, r1
	orr r0, r7
	orr r0, r5
	orr r0, r6
	strh r0, [r3]
	ldrh r1, [r3]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x19]
	orr r0, r1
	strh r0, [r3]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020447E6
_020447DE:
	ldrh r1, [r3]
	mov r0, #0x40
	orr r0, r1
	b _020447EC
_020447E6:
	ldrh r1, [r3]
	ldr r0, _02044AC8 ; =0x0000FFBF
	and r0, r1
_020447EC:
	strh r0, [r3]
	b _02044A44
_020447F0:
	ldrb r5, [r4, #0x18]
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r5, #0xd
	lsl r5, r3, #2
	lsl r1, r1, #7
	str r1, [sp, #0x10]
	ldr r3, _02044ACC ; =0x0400000A
	lsl r7, r2, #8
	ldrh r2, [r3]
	mov r1, #0x43
	lsl r0, r0, #0xe
	and r1, r2
	orr r1, r0
	ldr r0, [sp, #0x10]
	orr r0, r1
	orr r0, r7
	orr r0, r5
	orr r0, r6
	strh r0, [r3]
	ldrh r1, [r3]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x19]
	orr r0, r1
	strh r0, [r3]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0204482E
	b _020447DE
_0204482E:
	b _020447E6
_02044830:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0204483E
	cmp r1, #1
	beq _0204484C
	cmp r1, #2
	beq _0204485A
_0204483E:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r3, #2
	lsl r5, r2, #8
	lsl r3, r1, #7
	b _02044866
_0204484C:
	ldrb r3, [r4, #0x13]
	ldrb r1, [r4, #0x1a]
	ldrb r2, [r4, #0x12]
	lsl r5, r3, #2
	lsl r6, r1, #0xd
	lsl r3, r2, #8
	b _02044866
_0204485A:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x1a]
	lsl r3, r3, #2
	lsl r5, r2, #8
	lsl r6, r1, #0xd
_02044866:
	ldr r7, _02044AD0 ; =0x0400000C
	mov r1, #0x43
	ldrh r2, [r7]
	lsl r0, r0, #0xe
	and r1, r2
	orr r0, r1
	orr r0, r3
	orr r0, r5
	orr r0, r6
	strh r0, [r7]
	ldr r0, _02044AD0 ; =0x0400000C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x19]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _02044896
_0204488E:
	ldrh r2, [r0]
	mov r1, #0x40
	orr r1, r2
	b _02044A42
_02044896:
	b _02044A3C
_02044898:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _020448A6
	cmp r1, #1
	beq _020448B4
	cmp r1, #2
	beq _020448C2
_020448A6:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r3, #2
	lsl r5, r2, #8
	lsl r3, r1, #7
	b _020448CE
_020448B4:
	ldrb r3, [r4, #0x13]
	ldrb r1, [r4, #0x1a]
	ldrb r2, [r4, #0x12]
	lsl r5, r3, #2
	lsl r6, r1, #0xd
	lsl r3, r2, #8
	b _020448CE
_020448C2:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x1a]
	lsl r3, r3, #2
	lsl r5, r2, #8
	lsl r6, r1, #0xd
_020448CE:
	ldr r7, _02044AD4 ; =0x0400000E
	mov r1, #0x43
	ldrh r2, [r7]
	lsl r0, r0, #0xe
	and r1, r2
	orr r0, r1
	orr r0, r3
	orr r0, r5
	orr r0, r6
	strh r0, [r7]
	ldr r0, _02044AD4 ; =0x0400000E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x19]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _020448F8
	b _0204488E
_020448F8:
	b _02044A3C
_020448FA:
	ldrb r5, [r4, #0x18]
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r5, #0xd
	lsl r5, r3, #2
	lsl r1, r1, #7
	str r1, [sp, #0x14]
	ldr r3, _02044AD8 ; =0x04001008
	lsl r7, r2, #8
	ldrh r2, [r3]
	mov r1, #0x43
	lsl r0, r0, #0xe
	and r1, r2
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	orr r0, r7
	orr r0, r5
	orr r0, r6
	strh r0, [r3]
	ldrh r1, [r3]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x19]
	orr r0, r1
	strh r0, [r3]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02044938
	b _020447DE
_02044938:
	b _020447E6
_0204493A:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r3, #2
	ldr r3, _02044ADC ; =0x0400100A
	lsl r7, r2, #8
	lsl r1, r1, #7
	mov ip, r1
	ldrh r2, [r3]
	mov r1, #0x43
	ldrb r5, [r4, #0x18]
	and r1, r2
	lsl r0, r0, #0xe
	orr r0, r1
	mov r1, ip
	orr r0, r1
	orr r0, r7
	lsl r5, r5, #0xd
	orr r0, r6
	orr r0, r5
	strh r0, [r3]
	ldrh r1, [r3]
	mov r0, #3
	bic r1, r0
	ldrb r0, [r4, #0x19]
	orr r0, r1
	strh r0, [r3]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02044978
	b _020447DE
_02044978:
	b _020447E6
_0204497A:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _02044988
	cmp r1, #1
	beq _02044996
	cmp r1, #2
	beq _020449A4
_02044988:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r3, #2
	lsl r5, r2, #8
	lsl r3, r1, #7
	b _020449B0
_02044996:
	ldrb r3, [r4, #0x13]
	ldrb r1, [r4, #0x1a]
	ldrb r2, [r4, #0x12]
	lsl r5, r3, #2
	lsl r6, r1, #0xd
	lsl r3, r2, #8
	b _020449B0
_020449A4:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x1a]
	lsl r3, r3, #2
	lsl r5, r2, #8
	lsl r6, r1, #0xd
_020449B0:
	ldr r7, _02044AE0 ; =0x0400100C
	mov r1, #0x43
	ldrh r2, [r7]
	lsl r0, r0, #0xe
	and r1, r2
	orr r0, r1
	orr r0, r3
	orr r0, r5
	orr r0, r6
	strh r0, [r7]
	ldr r0, _02044AE0 ; =0x0400100C
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x19]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _020449DA
	b _0204488E
_020449DA:
	b _02044A3C
_020449DC:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _020449EA
	cmp r1, #1
	beq _020449F8
	cmp r1, #2
	beq _02044A06
_020449EA:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x11]
	lsl r6, r3, #2
	lsl r5, r2, #8
	lsl r3, r1, #7
	b _02044A12
_020449F8:
	ldrb r3, [r4, #0x13]
	ldrb r1, [r4, #0x1a]
	ldrb r2, [r4, #0x12]
	lsl r5, r3, #2
	lsl r6, r1, #0xd
	lsl r3, r2, #8
	b _02044A12
_02044A06:
	ldrb r3, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	ldrb r1, [r4, #0x1a]
	lsl r3, r3, #2
	lsl r5, r2, #8
	lsl r6, r1, #0xd
_02044A12:
	ldr r7, _02044AE4 ; =0x0400100E
	mov r1, #0x43
	ldrh r2, [r7]
	lsl r0, r0, #0xe
	and r1, r2
	orr r0, r1
	orr r0, r3
	orr r0, r5
	orr r0, r6
	strh r0, [r7]
	ldr r0, _02044AE4 ; =0x0400100E
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	ldrb r1, [r4, #0x19]
	orr r1, r2
	strh r1, [r0]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _02044A3C
	b _0204488E
_02044A3C:
	ldrh r2, [r0]
	ldr r1, _02044AC8 ; =0x0000FFBF
	and r1, r2
_02044A42:
	strh r1, [r0]
_02044A44:
	ldr r0, [sp, #4]
	ldr r6, _02044AE8 ; =0x0214190C
	add r5, r0, #0
	mov r1, #0x2c
	ldr r0, [r6]
	mul r5, r1
	mov r7, #0
	add r0, r0, r5
	strh r7, [r0, #0x20]
	ldr r1, [r6]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r5
	str r0, [r1, #0x24]
	ldr r1, [r6]
	add r1, r1, r5
	str r0, [r1, #0x28]
	ldr r0, [r6]
	ldr r1, [r4, #8]
	add r0, r0, r5
	str r7, [r0, #0x2c]
	ldr r0, [r6]
	add r0, r0, r5
	str r7, [r0, #0x30]
	cmp r1, #0
	beq _02044AAE
	ldr r0, _02044AEC ; =0x00000231
	ldr r3, _02044AF0 ; =0x0209AEAC
	str r0, [sp]
	ldr r0, [r6]
	add r2, r7, #0
	ldrh r0, [r0]
	bl sub_0203A1FC
	ldr r1, [r6]
	ldr r2, [r4, #8]
	add r1, r1, r5
	str r0, [r1, #8]
	ldr r1, [r6]
	add r0, r7, #0
	add r1, r1, r5
	ldr r1, [r1, #8]
	blx sub_02078624
	ldr r0, [r6]
	ldr r1, [r4, #8]
	add r0, r0, r5
	str r1, [r0, #0xc]
	ldr r0, [r6]
	ldr r1, [r4, #0xc]
	add r0, r0, r5
	str r1, [r0, #0x10]
	b _02044AC0
_02044AAE:
	ldr r0, [r6]
	add r0, r0, r5
	str r7, [r0, #8]
	ldr r0, [r6]
	add r0, r0, r5
	str r7, [r0, #0xc]
	ldr r0, [r6]
	add r0, r0, r5
	str r7, [r0, #0x10]
_02044AC0:
	ldr r1, _02044AE8 ; =0x0214190C
	b _02044AF4
	.align 2, 0
_02044AC4: .word 0x04000008
_02044AC8: .word 0x0000FFBF
_02044ACC: .word 0x0400000A
_02044AD0: .word 0x0400000C
_02044AD4: .word 0x0400000E
_02044AD8: .word 0x04001008
_02044ADC: .word 0x0400100A
_02044AE0: .word 0x0400100C
_02044AE4: .word 0x0400100E
_02044AE8: .word 0x0214190C
_02044AEC: .word 0x00000231
_02044AF0: .word 0x0209AEAC
_02044AF4:
	ldrb r2, [r4, #0x10]
	ldr r0, [r1]
	add r0, r0, r5
	strb r2, [r0, #0x1d]
	ldr r0, [r1]
	add r2, r0, r5
	ldr r0, [sp, #8]
	strb r0, [r2, #0x1c]
	ldr r0, [r1]
	ldrb r2, [r4, #0x11]
	add r0, r0, r5
	strb r2, [r0, #0x1e]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02044B20
	cmp r2, #0
	bne _02044B20
	ldr r0, [r1]
	mov r2, #0x20
	add r0, r0, r5
	strb r2, [r0, #0x1f]
	b _02044B2A
_02044B20:
	ldr r0, _02044B80 ; =0x0214190C
	mov r1, #0x40
	ldr r0, [r0]
	add r0, r0, r5
	strb r1, [r0, #0x1f]
_02044B2A:
	ldr r0, [sp, #4]
	ldr r2, [r4]
	mov r1, #0
	bl sub_02044CFC
	ldr r0, [sp, #4]
	ldr r2, [r4, #4]
	mov r1, #3
	bl sub_02044CFC
	ldr r0, [sp, #4]
	bl sub_0204616C
	ldr r0, [sp, #4]
	mov r3, #0x17
	lsl r1, r0, #2
	ldrb r0, [r4, #0x13]
	ldr r5, _02044B80 ; =0x0214190C
	lsl r3, r3, #4
	lsl r2, r0, #0xe
	ldr r0, [r5]
	add r0, r0, r1
	str r2, [r0, r3]
	ldrb r0, [r4, #0x12]
	ldr r2, [r5]
	add r6, r2, r1
	add r2, r3, #0
	lsl r0, r0, #0xb
	add r2, #0x20
	str r0, [r6, r2]
	ldr r0, [r5]
	ldr r2, [r4, #0x14]
	add r0, r0, r1
	add r3, #0x40
	str r2, [r0, r3]
	ldr r0, [sp, #4]
	ldr r2, [r4, #8]
	mov r1, #0
	bl sub_0204697C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02044B80: .word 0x0214190C
	thumb_func_end sub_0204476C

	thumb_func_start sub_02044B84
sub_02044B84: ; 0x02044B84
	push {r4, r5, r6, lr}
	ldr r4, _02044BB4 ; =0x0214190C
	mov r1, #0x2c
	add r5, r0, #0
	ldr r2, [r4]
	mul r5, r1
	add r2, r2, r5
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _02044BB2
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r6, #0
	bl sub_020469FC
	ldr r0, [r4]
	add r0, r0, r5
	ldr r0, [r0, #8]
	bl sub_0203A24C
	ldr r0, [r4]
	add r0, r0, r5
	str r6, [r0, #8]
_02044BB2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02044BB4: .word 0x0214190C
	thumb_func_end sub_02044B84

	thumb_func_start sub_02044BB8
sub_02044BB8: ; 0x02044BB8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r1, _02044BD4 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	add r0, r2, #0
	orr r0, r4
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_02044BD4: .word 0x04000008
	thumb_func_end sub_02044BB8

	thumb_func_start sub_02044BD8
sub_02044BD8: ; 0x02044BD8
	cmp r0, #7
	bhi _02044C76
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02044BE8: ; jump table
	.short _02044BF8 - _02044BE8 - 2 ; case 0
	.short _02044C08 - _02044BE8 - 2 ; case 1
	.short _02044C18 - _02044BE8 - 2 ; case 2
	.short _02044C28 - _02044BE8 - 2 ; case 3
	.short _02044C38 - _02044BE8 - 2 ; case 4
	.short _02044C48 - _02044BE8 - 2 ; case 5
	.short _02044C58 - _02044BE8 - 2 ; case 6
	.short _02044C68 - _02044BE8 - 2 ; case 7
_02044BF8:
	ldr r2, _02044C78 ; =0x04000008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C08:
	ldr r2, _02044C7C ; =0x0400000A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C18:
	ldr r2, _02044C80 ; =0x0400000C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C28:
	ldr r2, _02044C84 ; =0x0400000E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C38:
	ldr r2, _02044C88 ; =0x04001008
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C48:
	ldr r2, _02044C8C ; =0x0400100A
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C58:
	ldr r2, _02044C90 ; =0x0400100C
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
	bx lr
_02044C68:
	ldr r2, _02044C94 ; =0x0400100E
	mov r0, #3
	ldrh r3, [r2]
	bic r3, r0
	add r0, r3, #0
	orr r0, r1
	strh r0, [r2]
_02044C76:
	bx lr
	.align 2, 0
_02044C78: .word 0x04000008
_02044C7C: .word 0x0400000A
_02044C80: .word 0x0400000C
_02044C84: .word 0x0400000E
_02044C88: .word 0x04001008
_02044C8C: .word 0x0400100A
_02044C90: .word 0x0400100C
_02044C94: .word 0x0400100E
	thumb_func_end sub_02044BD8

	thumb_func_start sub_02044C98
sub_02044C98: ; 0x02044C98
	push {r3, lr}
	cmp r0, #7
	bhi _02044CF8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02044CAA: ; jump table
	.short _02044CBA - _02044CAA - 2 ; case 0
	.short _02044CC2 - _02044CAA - 2 ; case 1
	.short _02044CCA - _02044CAA - 2 ; case 2
	.short _02044CD2 - _02044CAA - 2 ; case 3
	.short _02044CDA - _02044CAA - 2 ; case 4
	.short _02044CE2 - _02044CAA - 2 ; case 5
	.short _02044CEA - _02044CAA - 2 ; case 6
	.short _02044CF2 - _02044CAA - 2 ; case 7
_02044CBA:
	mov r0, #1
	bl sub_02046CFC
	pop {r3, pc}
_02044CC2:
	mov r0, #2
	bl sub_02046CFC
	pop {r3, pc}
_02044CCA:
	mov r0, #4
	bl sub_02046CFC
	pop {r3, pc}
_02044CD2:
	mov r0, #8
	bl sub_02046CFC
	pop {r3, pc}
_02044CDA:
	mov r0, #1
	bl sub_02046D84
	pop {r3, pc}
_02044CE2:
	mov r0, #2
	bl sub_02046D84
	pop {r3, pc}
_02044CEA:
	mov r0, #4
	bl sub_02046D84
	pop {r3, pc}
_02044CF2:
	mov r0, #8
	bl sub_02046D84
_02044CF8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02044C98

	thumb_func_start sub_02044CFC
sub_02044CFC: ; 0x02044CFC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02044E34 ; =0x0214190C
	add r4, r0, #0
	ldr r0, [r7]
	mov r5, #0x2c
	add r6, r4, #0
	mul r6, r5
	add r0, #8
	add r0, r0, r6
	bl sub_02046128
	ldr r2, [r7]
	add r1, r2, r6
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	cmp r4, #7
	bls _02044D20
	b _02044E30
_02044D20:
	add r3, r4, r4
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02044D2C: ; jump table
	.short _02044D3C - _02044D2C - 2 ; case 0
	.short _02044D52 - _02044D2C - 2 ; case 1
	.short _02044D6C - _02044D2C - 2 ; case 2
	.short _02044D92 - _02044D2C - 2 ; case 3
	.short _02044DB8 - _02044D2C - 2 ; case 4
	.short _02044DCE - _02044D2C - 2 ; case 5
	.short _02044DE4 - _02044D2C - 2 ; case 6
	.short _02044E0A - _02044D2C - 2 ; case 7
_02044D3C:
	ldr r2, _02044E38 ; =0x000001FF
	add r3, r0, #0
	and r3, r2
	lsl r1, r1, #0x10
	lsl r0, r2, #0x10
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _02044E3C ; =0x04000010
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044D52:
	ldr r2, _02044E38 ; =0x000001FF
	add r4, r0, #0
	and r4, r2
	lsl r3, r1, #0x10
	lsl r2, r2, #0x10
	and r2, r3
	add r3, r4, #0
	orr r3, r2
	ldr r2, _02044E40 ; =0x04000014
	str r3, [r2]
	bl sub_02042EE0
	pop {r3, r4, r5, r6, r7, pc}
_02044D6C:
	add r2, #0x74
	ldrb r2, [r2]
	cmp r2, #0
	bne _02044D8A
	ldr r2, _02044E38 ; =0x000001FF
	add r3, r0, #0
	and r3, r2
	lsl r1, r1, #0x10
	lsl r0, r2, #0x10
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _02044E44 ; =0x04000018
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044D8A:
	mov r0, #2
	bl sub_0204616C
	pop {r3, r4, r5, r6, r7, pc}
_02044D92:
	add r2, #0xa0
	ldrb r2, [r2]
	cmp r2, #0
	bne _02044DB0
	ldr r2, _02044E38 ; =0x000001FF
	add r3, r0, #0
	and r3, r2
	lsl r1, r1, #0x10
	lsl r0, r2, #0x10
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _02044E48 ; =0x0400001C
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044DB0:
	mov r0, #3
	bl sub_0204616C
	pop {r3, r4, r5, r6, r7, pc}
_02044DB8:
	ldr r2, _02044E38 ; =0x000001FF
	add r3, r0, #0
	and r3, r2
	lsl r1, r1, #0x10
	lsl r0, r2, #0x10
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _02044E4C ; =0x04001010
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044DCE:
	ldr r2, _02044E38 ; =0x000001FF
	add r3, r0, #0
	and r3, r2
	lsl r1, r1, #0x10
	lsl r0, r2, #0x10
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _02044E50 ; =0x04001014
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044DE4:
	add r5, #0xf8
	ldrb r2, [r2, r5]
	cmp r2, #0
	bne _02044E02
	ldr r2, _02044E38 ; =0x000001FF
	add r3, r0, #0
	and r3, r2
	lsl r1, r1, #0x10
	lsl r0, r2, #0x10
	and r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, _02044E54 ; =0x04001018
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044E02:
	mov r0, #6
	bl sub_0204616C
	pop {r3, r4, r5, r6, r7, pc}
_02044E0A:
	mov r3, #0x15
	lsl r3, r3, #4
	ldrb r2, [r2, r3]
	cmp r2, #0
	bne _02044E2A
	add r2, r0, #0
	add r3, #0xaf
	ldr r0, _02044E58 ; =0x01FF0000
	lsl r1, r1, #0x10
	and r2, r3
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02044E5C ; =0x0400101C
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02044E2A:
	mov r0, #7
	bl sub_0204616C
_02044E30:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02044E34: .word 0x0214190C
_02044E38: .word 0x000001FF
_02044E3C: .word 0x04000010
_02044E40: .word 0x04000014
_02044E44: .word 0x04000018
_02044E48: .word 0x0400001C
_02044E4C: .word 0x04001010
_02044E50: .word 0x04001014
_02044E54: .word 0x04001018
_02044E58: .word 0x01FF0000
_02044E5C: .word 0x0400101C
	thumb_func_end sub_02044CFC

	thumb_func_start sub_02044E60
sub_02044E60: ; 0x02044E60
	ldr r1, _02044E70 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02044E70: .word 0x0214190C
	thumb_func_end sub_02044E60

	thumb_func_start sub_02044E74
sub_02044E74: ; 0x02044E74
	ldr r1, _02044E84 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #0x18]
	bx lr
	nop
_02044E84: .word 0x0214190C
	thumb_func_end sub_02044E74

	thumb_func_start sub_02044E88
sub_02044E88: ; 0x02044E88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02044EAC ; =0x0214190C
	add r4, r3, #0
	ldr r3, [r0]
	mov r0, #0x2c
	add r3, #8
	mul r0, r5
	add r0, r3, r0
	bl sub_02046128
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02044EB0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02044EAC: .word 0x0214190C
	thumb_func_end sub_02044E88

	thumb_func_start sub_02044EB0
sub_02044EB0: ; 0x02044EB0
	push {r4, lr}
	sub sp, #8
	cmp r0, #7
	bhi _02044F40
	add r4, r0, r0
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_02044EC4: ; jump table
	.short _02044F40 - _02044EC4 - 2 ; case 0
	.short _02044F40 - _02044EC4 - 2 ; case 1
	.short _02044ED4 - _02044EC4 - 2 ; case 2
	.short _02044EF0 - _02044EC4 - 2 ; case 3
	.short _02044F40 - _02044EC4 - 2 ; case 4
	.short _02044F40 - _02044EC4 - 2 ; case 5
	.short _02044F0C - _02044EC4 - 2 ; case 6
	.short _02044F28 - _02044EC4 - 2 ; case 7
_02044ED4:
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02044F44 ; =0x0214190C
	ldr r0, [r0]
	add r4, r0, r4
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _02044F48 ; =0x04000020
	blx sub_020749CC
	add sp, #8
	pop {r4, pc}
_02044EF0:
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02044F44 ; =0x0214190C
	ldr r0, [r0]
	add r4, r0, r4
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _02044F4C ; =0x04000030
	blx sub_020749CC
	add sp, #8
	pop {r4, pc}
_02044F0C:
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02044F44 ; =0x0214190C
	ldr r0, [r0]
	add r4, r0, r4
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _02044F50 ; =0x04001020
	blx sub_020749CC
	add sp, #8
	pop {r4, pc}
_02044F28:
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02044F44 ; =0x0214190C
	ldr r0, [r0]
	add r4, r0, r4
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x18]
	str r0, [sp, #4]
	ldr r0, _02044F54 ; =0x04001030
	blx sub_020749CC
_02044F40:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02044F44: .word 0x0214190C
_02044F48: .word 0x04000020
_02044F4C: .word 0x04000030
_02044F50: .word 0x04001020
_02044F54: .word 0x04001030
	thumb_func_end sub_02044EB0

	thumb_func_start sub_02044F58
sub_02044F58: ; 0x02044F58
	push {r3, r4, r5, lr}
	cmp r2, #0
	bne _02044F64
	blx sub_0207909C
	pop {r3, r4, r5, pc}
_02044F64:
	mov r4, #3
	add r3, r0, #0
	tst r3, r4
	bne _02044F8A
	add r3, r1, #0
	tst r3, r4
	bne _02044F8A
	lsl r3, r2, #0x10
	lsr r3, r3, #0x10
	lsr r4, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r4
	mov r3, #0x1e
	ror r5, r3
	add r3, r4, r5
	bne _02044F8A
	blx sub_0207866C
	pop {r3, r4, r5, pc}
_02044F8A:
	blx sub_0207863C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02044F58

	thumb_func_start sub_02044F90
sub_02044F90: ; 0x02044F90
	push {r3, lr}
	mov r1, #0x2c
	add r2, r0, #0
	mul r2, r1
	ldr r1, _02044FAC ; =0x0214190C
	ldr r1, [r1]
	add r3, r1, r2
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	bl sub_02044FB0
	pop {r3, pc}
	nop
_02044FAC: .word 0x0214190C
	thumb_func_end sub_02044F90

	thumb_func_start sub_02044FB0
sub_02044FB0: ; 0x02044FB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	cmp r6, #0
	bne _02045038
	ldr r0, _02045044 ; =0x0214190C
	mov r1, #0x2c
	ldr r0, [r0]
	mul r1, r5
	str r1, [sp, #4]
	add r1, r0, r1
	ldr r1, [r1, #8]
	str r1, [sp, #8]
	cmp r1, #0
	beq _02044FF4
	add r0, r4, #0
	bl sub_02044F58
	ldr r0, _02045044 ; =0x0214190C
	ldr r2, [sp, #4]
	ldr r3, [r0]
	ldr r1, [sp, #8]
	add r3, r3, r2
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0xc]
	add r0, r5, #0
	lsl r2, r2, #1
	bl sub_02046198
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02044FF4:
	ldr r1, [r4]
	ldr r3, _02045048 ; =0x0209AEAC
	lsr r1, r1, #8
	str r1, [sp, #0xc]
	ldr r1, _0204504C ; =0x000004E4
	mov r2, #0
	str r1, [sp]
	ldrh r1, [r0]
	ldr r0, _02045050 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsr r0, r0, #0x10
	bl sub_0203A1FC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02044F58
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	lsl r2, r7, #1
	bl sub_02046198
	ldr r0, [sp, #0x10]
	bl sub_0203A24C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02045038:
	lsl r2, r7, #1
	add r3, r6, #0
	bl sub_02046198
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02045044: .word 0x0214190C
_02045048: .word 0x0209AEAC
_0204504C: .word 0x000004E4
_02045050: .word 0x00007FFF
	thumb_func_end sub_02044FB0

	thumb_func_start sub_02045054
sub_02045054: ; 0x02045054
	push {r3, lr}
	mov r3, #0
	bl sub_02045060
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02045054

	thumb_func_start sub_02045060
sub_02045060: ; 0x02045060
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldr r1, _0204507C ; =0x0214190C
	ldr r5, [r1]
	mov r1, #0x2c
	mul r1, r4
	add r1, r5, r1
	ldr r4, [r1, #8]
	lsl r1, r3, #1
	add r1, r4, r1
	bl sub_02044F58
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204507C: .word 0x0214190C
	thumb_func_end sub_02045060

	thumb_func_start sub_02045080
sub_02045080: ; 0x02045080
	push {r3, r4, r5, lr}
	ldr r4, _020450A4 ; =0x0214190C
	ldr r5, [r4]
	mov r4, #0x2c
	mul r4, r0
	add r4, r5, r4
	ldrb r4, [r4, #0x1e]
	cmp r4, #0
	bne _0204509A
	lsl r3, r3, #5
	bl sub_0204622C
	pop {r3, r4, r5, pc}
_0204509A:
	lsl r3, r3, #6
	bl sub_0204622C
	pop {r3, r4, r5, pc}
	nop
_020450A4: .word 0x0214190C
	thumb_func_end sub_02045080

	thumb_func_start sub_020450A8
sub_020450A8: ; 0x020450A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02044564
	add r4, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	add r2, r7, #0
	lsl r3, r4, #5
	bl sub_0204622C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020450A8

	thumb_func_start sub_020450CC
sub_020450CC: ; 0x020450CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0204510C ; =0x00000552
	add r7, r2, #0
	str r0, [sp]
	add r2, r3, #0
	ldr r0, _02045110 ; =0x00007FFF
	ldr r3, _02045114 ; =0x0209AEAC
	and r2, r0
	add r0, r0, #1
	orr r0, r2
	lsl r0, r0, #0x10
	add r5, r1, #0
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	blx sub_020787A8
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r5, #0
	bl sub_0204629C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204510C: .word 0x00000552
_02045110: .word 0x00007FFF
_02045114: .word 0x0209AEAC
	thumb_func_end sub_020450CC

	thumb_func_start sub_02045118
sub_02045118: ; 0x02045118
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r7, r3, #0
	str r2, [sp, #4]
	cmp r4, #7
	bhi _020451CC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02045134: ; jump table
	.short _02045144 - _02045134 - 2 ; case 0
	.short _02045144 - _02045134 - 2 ; case 1
	.short _02045144 - _02045134 - 2 ; case 2
	.short _02045144 - _02045134 - 2 ; case 3
	.short _02045184 - _02045134 - 2 ; case 4
	.short _02045184 - _02045134 - 2 ; case 5
	.short _02045184 - _02045134 - 2 ; case 6
	.short _02045184 - _02045134 - 2 ; case 7
_02045144:
	ldr r0, _02045254 ; =0x0214190C
	ldr r3, [r0]
	mov r0, #0x2c
	mul r0, r4
	add r0, r3, r0
	ldrb r6, [r0, #0x1f]
	cmp r6, #0x20
	bne _02045170
	mov r0, #0x5a
	lsl r0, r0, #2
	mov ip, r0
	lsl r1, r4, #2
	ldr r0, [r3, r0]
	add r3, r3, r1
	mov r1, ip
	add r1, #8
	ldr r1, [r3, r1]
	add r3, r7, #0
	mul r3, r6
_0204516A:
	add r1, r1, r3
	lsr r1, r1, #5
	b _020451C8
_02045170:
	mov r1, #0x5a
	lsl r1, r1, #2
	lsl r2, r4, #2
	ldr r0, [r3, r1]
	add r2, r3, r2
	add r1, #8
	ldr r2, [r2, r1]
	add r1, r7, #0
	mul r1, r6
	b _020451C0
_02045184:
	ldr r0, _02045254 ; =0x0214190C
	ldr r6, [r0]
	mov r0, #0x2c
	mul r0, r4
	add r0, r6, r0
	ldrb r3, [r0, #0x1f]
	cmp r3, #0x20
	bne _020451AA
	mov r0, #0x5b
	lsl r0, r0, #2
	lsl r1, r4, #2
	ldr r0, [r6, r0]
	add r6, r6, r1
	mov r1, #0x5b
	lsl r1, r1, #2
	add r1, r1, #4
	ldr r1, [r6, r1]
	mul r3, r7
	b _0204516A
_020451AA:
	mov r2, #0x5b
	mov r0, #0x5b
	lsl r1, r4, #2
	lsl r2, r2, #2
	lsl r0, r0, #2
	add r1, r6, r1
	add r2, r2, #4
	ldr r2, [r1, r2]
	add r1, r7, #0
	ldr r0, [r6, r0]
	mul r1, r3
_020451C0:
	add r1, r2, r1
	ldr r2, [sp, #4]
	lsr r1, r1, #5
	lsl r2, r2, #1
_020451C8:
	bl sub_0203C804
_020451CC:
	mov r0, #0x2c
	add r6, r4, #0
	mul r6, r0
	ldr r0, _02045254 ; =0x0214190C
	ldr r3, _02045258 ; =0x0209AEAC
	ldr r0, [r0]
	add r1, r0, r6
	ldrb r2, [r1, #0x1f]
	ldr r1, [sp, #4]
	mul r2, r1
	ldr r1, _0204525C ; =0x0000058D
	str r2, [sp, #8]
	str r1, [sp]
	ldrh r1, [r0]
	ldr r0, _02045260 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	add r1, r2, #0
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_0203A1FC
	str r0, [sp, #0xc]
	ldr r0, _02045254 ; =0x0214190C
	ldr r0, [r0]
	add r0, r0, r6
	ldrb r0, [r0, #0x1f]
	cmp r0, #0x20
	bne _0204521E
	lsl r2, r5, #0xc
	lsl r1, r5, #8
	lsl r0, r5, #4
	orr r1, r2
	orr r0, r1
	add r1, r5, #0
	orr r1, r0
	lsl r0, r1, #0x10
	add r5, r1, #0
	b _02045228
_0204521E:
	lsl r2, r5, #0x18
	lsl r1, r5, #0x10
	lsl r0, r5, #8
	orr r1, r2
	orr r0, r1
_02045228:
	orr r5, r0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r5, #0
	blx sub_0207869C
	ldr r2, _02045254 ; =0x0214190C
	lsl r0, r4, #0x18
	ldr r2, [r2]
	ldr r1, [sp, #0xc]
	add r2, r2, r6
	ldrb r2, [r2, #0x1f]
	ldr r3, [sp, #8]
	lsr r0, r0, #0x18
	mul r2, r7
	bl sub_0204629C
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02045254: .word 0x0214190C
_02045258: .word 0x0209AEAC
_0204525C: .word 0x0000058D
_02045260: .word 0x00007FFF
	thumb_func_end sub_02045118

	thumb_func_start sub_02045264
sub_02045264: ; 0x02045264
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r3, r1, #0
	add r1, r2, #0
	cmp r4, #7
	bhi _0204531A
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204527C: ; jump table
	.short _0204528C - _0204527C - 2 ; case 0
	.short _0204528C - _0204527C - 2 ; case 1
	.short _0204528C - _0204527C - 2 ; case 2
	.short _0204528C - _0204527C - 2 ; case 3
	.short _020452D4 - _0204527C - 2 ; case 4
	.short _020452D4 - _0204527C - 2 ; case 5
	.short _020452D4 - _0204527C - 2 ; case 6
	.short _020452D4 - _0204527C - 2 ; case 7
_0204528C:
	ldr r0, _0204531C ; =0x0214190C
	ldr r5, [r0]
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x20
	bne _020452B8
	mov r6, #0x5a
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r0, [r5, r6]
	add r4, r5, r4
	add r6, #8
	ldr r4, [r4, r6]
	mul r2, r1
	add r1, r4, r2
	lsr r1, r1, #5
	add r2, r3, #0
	bl sub_0203C82C
	pop {r4, r5, r6, pc}
_020452B8:
	mov r6, #0x5a
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r0, [r5, r6]
	add r4, r5, r4
	add r6, #8
	ldr r4, [r4, r6]
	mul r2, r1
	add r1, r4, r2
	lsr r1, r1, #5
	lsl r2, r3, #1
	bl sub_0203C82C
	pop {r4, r5, r6, pc}
_020452D4:
	ldr r0, _0204531C ; =0x0214190C
	ldr r5, [r0]
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x20
	bne _02045300
	mov r6, #0x5b
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r0, [r5, r6]
	add r5, r5, r4
	add r4, r6, #4
	ldr r4, [r5, r4]
	mul r2, r1
	add r1, r4, r2
	lsr r1, r1, #5
	add r2, r3, #0
	bl sub_0203C82C
	pop {r4, r5, r6, pc}
_02045300:
	mov r6, #0x5b
	lsl r6, r6, #2
	lsl r4, r4, #2
	ldr r0, [r5, r6]
	add r5, r5, r4
	add r4, r6, #4
	ldr r4, [r5, r4]
	mul r2, r1
	add r1, r4, r2
	lsr r1, r1, #5
	lsl r2, r3, #1
	bl sub_0203C82C
_0204531A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0204531C: .word 0x0214190C
	thumb_func_end sub_02045264

	thumb_func_start sub_02045320
sub_02045320: ; 0x02045320
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	blx sub_0207B0AC
	cmp r6, #4
	bhs _02045342
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_020754B8
	pop {r3, r4, r5, r6, r7, pc}
_02045342:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02075534
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02045320

	thumb_func_start sub_02045350
sub_02045350: ; 0x02045350
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r1, sp, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_02045320
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_02045350

	thumb_func_start sub_02045368
sub_02045368: ; 0x02045368
	cmp r2, #5
	bhi _020453D6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02045378: ; jump table
	.short _02045384 - _02045378 - 2 ; case 0
	.short _0204538E - _02045378 - 2 ; case 1
	.short _0204538E - _02045378 - 2 ; case 2
	.short _02045398 - _02045378 - 2 ; case 3
	.short _020453AE - _02045378 - 2 ; case 4
	.short _020453D4 - _02045378 - 2 ; case 5
_02045384:
	lsl r1, r1, #4
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0204538E:
	lsl r1, r1, #5
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02045398:
	mov r2, #0x1f
	add r3, r0, #0
	and r3, r2
	mov r2, #0x1f
	bic r0, r2
	add r0, r1, r0
	lsl r0, r0, #5
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020453AE:
	asr r2, r1, #5
	asr r3, r0, #5
	lsl r2, r2, #1
	add r2, r3, r2
	mov r3, #0x1f
	and r3, r0
	lsl r0, r1, #0x1b
	lsl r2, r2, #0x10
	lsr r0, r0, #0x16
	lsr r2, r2, #0x10
	add r0, r3, r0
	lsl r2, r2, #0x1a
	lsl r0, r0, #0x10
	lsr r2, r2, #0x10
	lsr r0, r0, #0x10
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_020453D4:
	mov r0, #0
_020453D6:
	bx lr
	thumb_func_end sub_02045368

	thumb_func_start sub_020453D8
sub_020453D8: ; 0x020453D8
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	str r3, [sp]
	add r6, r2, #0
	ldr r5, [sp]
	add r4, r6, #0
	sub r4, #0x20
	sub r5, #0x20
	lsl r4, r4, #0x10
	lsl r5, r5, #0x10
	mov r2, #0
	mov r3, #0
	asr r4, r4, #0x10
	asr r7, r5, #0x10
	lsr r5, r0, #5
	beq _020453FE
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_020453FE:
	lsr r5, r1, #5
	beq _02045408
	add r2, r2, #2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_02045408:
	cmp r2, #3
	bhi _020454A2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02045418: ; jump table
	.short _02045420 - _02045418 - 2 ; case 0
	.short _02045438 - _02045418 - 2 ; case 1
	.short _0204545A - _02045418 - 2 ; case 2
	.short _0204547C - _02045418 - 2 ; case 3
_02045420:
	cmp r4, #0
	blt _02045430
	lsl r1, r1, #5
	add r0, r0, r1
_02045428:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r3, r0
	b _0204549E
_02045430:
	add r2, r1, #0
	mul r2, r6
	add r0, r0, r2
	b _02045428
_02045438:
	cmp r7, #0
	blt _02045442
	mov r2, #1
	lsl r2, r2, #0xa
	b _02045448
_02045442:
	ldr r2, [sp]
	lsl r2, r2, #0x15
	lsr r2, r2, #0x10
_02045448:
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	add r0, r1, #0
	mul r0, r4
	add r0, r2, r0
	b _02045428
_0204545A:
	lsl r2, r6, #0x15
	lsr r2, r2, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r4, #0
	blt _02045470
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	add r0, r0, r1
	b _02045498
_02045470:
	mov r3, #0x1f
	and r1, r3
	add r3, r1, #0
	mul r3, r6
	add r0, r0, r3
	b _02045498
_0204547C:
	add r2, r6, r7
	lsl r2, r2, #0x15
	lsr r2, r2, #0x10
	add r2, r3, r2
	add r5, r0, #0
	mov r3, #0x1f
	add r0, r1, #0
	and r0, r3
	add r1, r0, #0
	lsl r2, r2, #0x10
	and r5, r3
	mul r1, r4
	lsr r2, r2, #0x10
	add r0, r5, r1
_02045498:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r2, r0
_0204549E:
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
_020454A2:
	add r0, r3, #0
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_020453D8

	thumb_func_start sub_020454AC
sub_020454AC: ; 0x020454AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, sp, #0x28
	ldrb r4, [r5, #4]
	str r4, [sp]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r5, [r5]
	add r1, r2, #0
	add r2, r3, #0
	str r5, [sp, #0x10]
	add r3, r5, #0
	str r4, [sp, #0x14]
	bl sub_020454D4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020454AC

	thumb_func_start sub_020454D4
sub_020454D4: ; 0x020454D4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02045568 ; =0x0214190C
	ldr r0, [r0]
	add r5, r0, r4
	ldrb r5, [r5, #0x1c]
	cmp r5, #0
	bne _02045512
	add r5, sp, #0x30
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldr r6, [sp, #0x34]
	str r6, [sp, #4]
	ldrb r6, [r5, #8]
	str r6, [sp, #8]
	ldrb r6, [r5, #0xc]
	str r6, [sp, #0xc]
	ldrb r6, [r5, #0x10]
	str r6, [sp, #0x10]
	ldrb r5, [r5, #0x14]
	str r5, [sp, #0x14]
	mov r5, #0
	str r5, [sp, #0x18]
	bl sub_02046330
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_02045512:
	cmp r5, #1
	add r5, sp, #0x30
	bne _02045540
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldr r6, [sp, #0x34]
	str r6, [sp, #4]
	ldrb r6, [r5, #8]
	str r6, [sp, #8]
	ldrb r6, [r5, #0xc]
	str r6, [sp, #0xc]
	ldrb r6, [r5, #0x10]
	str r6, [sp, #0x10]
	ldrb r5, [r5, #0x14]
	str r5, [sp, #0x14]
	mov r5, #0
	str r5, [sp, #0x18]
	bl sub_020464A8
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_02045540:
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldr r6, [sp, #0x34]
	str r6, [sp, #4]
	ldrb r6, [r5, #8]
	str r6, [sp, #8]
	ldrb r6, [r5, #0xc]
	str r6, [sp, #0xc]
	ldrb r6, [r5, #0x10]
	str r6, [sp, #0x10]
	ldrb r5, [r5, #0x14]
	str r5, [sp, #0x14]
	mov r5, #0
	str r5, [sp, #0x18]
	bl sub_02046608
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02045568: .word 0x0214190C
	thumb_func_end sub_020454D4

	thumb_func_start sub_0204556C
sub_0204556C: ; 0x0204556C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02045600 ; =0x0214190C
	ldr r0, [r0]
	add r5, r0, r4
	ldrb r5, [r5, #0x1c]
	cmp r5, #0
	bne _020455AA
	add r5, sp, #0x30
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldr r6, [sp, #0x34]
	str r6, [sp, #4]
	ldrb r6, [r5, #8]
	str r6, [sp, #8]
	ldrb r6, [r5, #0xc]
	str r6, [sp, #0xc]
	ldrb r6, [r5, #0x10]
	str r6, [sp, #0x10]
	ldrb r5, [r5, #0x14]
	str r5, [sp, #0x14]
	mov r5, #1
	str r5, [sp, #0x18]
	bl sub_02046330
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_020455AA:
	cmp r5, #1
	add r5, sp, #0x30
	bne _020455D8
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldr r6, [sp, #0x34]
	str r6, [sp, #4]
	ldrb r6, [r5, #8]
	str r6, [sp, #8]
	ldrb r6, [r5, #0xc]
	str r6, [sp, #0xc]
	ldrb r6, [r5, #0x10]
	str r6, [sp, #0x10]
	ldrb r5, [r5, #0x14]
	str r5, [sp, #0x14]
	mov r5, #1
	str r5, [sp, #0x18]
	bl sub_020464A8
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_020455D8:
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldr r6, [sp, #0x34]
	str r6, [sp, #4]
	ldrb r6, [r5, #8]
	str r6, [sp, #8]
	ldrb r6, [r5, #0xc]
	str r6, [sp, #0xc]
	ldrb r6, [r5, #0x10]
	str r6, [sp, #0x10]
	ldrb r5, [r5, #0x14]
	str r5, [sp, #0x14]
	mov r5, #1
	str r5, [sp, #0x18]
	bl sub_02046608
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02045600: .word 0x0214190C
	thumb_func_end sub_0204556C

	thumb_func_start sub_02045604
sub_02045604: ; 0x02045604
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r4, #0x2c
	mul r4, r0
	ldr r0, _02045668 ; =0x0214190C
	ldr r0, [r0]
	add r5, r0, r4
	ldrb r5, [r5, #0x1c]
	cmp r5, #0
	bne _02045632
	add r5, sp, #0x20
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldrb r6, [r5, #4]
	str r6, [sp, #4]
	ldrb r5, [r5, #8]
	str r5, [sp, #8]
	bl sub_0204677C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02045632:
	cmp r5, #1
	add r5, sp, #0x20
	bne _02045650
	ldrb r6, [r5]
	add r0, #8
	lsl r1, r1, #0x18
	str r6, [sp]
	ldrb r5, [r5, #4]
	add r0, r0, r4
	lsr r1, r1, #0x18
	str r5, [sp, #4]
	bl sub_0204682C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02045650:
	ldrb r6, [r5]
	add r0, #8
	add r0, r0, r4
	str r6, [sp]
	ldrb r6, [r5, #4]
	str r6, [sp, #4]
	ldrb r5, [r5, #8]
	str r5, [sp, #8]
	bl sub_020468A0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02045668: .word 0x0214190C
	thumb_func_end sub_02045604

	thumb_func_start sub_0204566C
sub_0204566C: ; 0x0204566C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	mov r1, #0x2c
	mul r1, r0
	ldr r0, _02045700 ; =0x0214190C
	str r1, [sp, #4]
	ldr r1, [r0]
	ldr r0, [sp, #4]
	add r6, r2, #0
	add r0, r1, r0
	ldr r4, [r0, #8]
	add r5, r3, #0
	cmp r4, #0
	beq _020456FA
	ldrb r0, [r0, #0x1d]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_020460D8
	add r1, sp, #0x28
	ldrb r0, [r1]
	add r0, r6, r0
	str r0, [sp, #8]
	cmp r6, r0
	bge _020456FA
	ldrb r0, [r1, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, r0, r5
_020456AC:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r6, r0
	bhs _020456FA
	ldr r5, [sp]
	add r0, r5, #0
	cmp r0, r7
	bge _020456EE
_020456BC:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _020456EE
	ldr r2, _02045700 ; =0x0214190C
	add r0, r5, #0
	ldr r3, [r2]
	ldr r2, [sp, #4]
	add r1, r6, #0
	add r2, r2, r3
	ldrb r2, [r2, #0x1d]
	bl sub_02045368
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	ldr r1, _02045704 ; =0x00000FFF
	and r2, r1
	ldr r1, [sp, #0xc]
	orr r1, r2
	strh r1, [r4, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r7
	blt _020456BC
_020456EE:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #8]
	cmp r6, r0
	blt _020456AC
_020456FA:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02045700: .word 0x0214190C
_02045704: .word 0x00000FFF
	thumb_func_end sub_0204566C

	thumb_func_start sub_02045708
sub_02045708: ; 0x02045708
	push {r4, lr}
	add r4, r0, #0
	bl sub_02045718
	add r0, r4, #0
	bl sub_02045738
	pop {r4, pc}
	thumb_func_end sub_02045708

	thumb_func_start sub_02045718
sub_02045718: ; 0x02045718
	push {r3, lr}
	ldr r1, _02045734 ; =0x0214190C
	ldr r3, [r1]
	lsl r1, r0, #2
	add r2, r3, r1
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	ldrh r3, [r3]
	mov r2, #0
	bl sub_020450CC
	pop {r3, pc}
	nop
_02045734: .word 0x0214190C
	thumb_func_end sub_02045718

	thumb_func_start sub_02045738
sub_02045738: ; 0x02045738
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2c
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02045760 ; =0x0214190C
	ldr r0, [r0]
	add r2, r0, r1
	ldr r1, [r2, #8]
	cmp r1, #0
	beq _0204575C
	ldr r2, [r2, #0xc]
	mov r0, #0
	blx sub_02078624
	add r0, r4, #0
	bl sub_02044F90
_0204575C:
	pop {r4, pc}
	nop
_02045760: .word 0x0214190C
	thumb_func_end sub_02045738

	thumb_func_start sub_02045764
sub_02045764: ; 0x02045764
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2c
	add r2, r4, #0
	mul r2, r0
	ldr r0, _0204578C ; =0x0214190C
	ldr r0, [r0]
	add r3, r0, r2
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _0204578A
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r3, #0xc]
	blx sub_02078624
	add r0, r4, #0
	bl sub_02044F90
_0204578A:
	pop {r4, pc}
	.align 2, 0
_0204578C: .word 0x0214190C
	thumb_func_end sub_02045764

	thumb_func_start sub_02045790
sub_02045790: ; 0x02045790
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2c
	add r2, r4, #0
	mul r2, r0
	ldr r0, _020457B8 ; =0x0214190C
	ldr r0, [r0]
	add r3, r0, r2
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _020457B6
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r3, #0xc]
	blx sub_02078624
	add r0, r4, #0
	bl sub_02045B7C
_020457B6:
	pop {r4, pc}
	.align 2, 0
_020457B8: .word 0x0214190C
	thumb_func_end sub_02045790

	thumb_func_start sub_020457BC
sub_020457BC: ; 0x020457BC
	push {r3, lr}
	cmp r0, #7
	bhi _0204580E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020457CE: ; jump table
	.short _020457DE - _020457CE - 2 ; case 0
	.short _020457E4 - _020457CE - 2 ; case 1
	.short _020457EA - _020457CE - 2 ; case 2
	.short _020457F0 - _020457CE - 2 ; case 3
	.short _020457F6 - _020457CE - 2 ; case 4
	.short _020457FC - _020457CE - 2 ; case 5
	.short _02045802 - _020457CE - 2 ; case 6
	.short _02045808 - _020457CE - 2 ; case 7
_020457DE:
	bl sub_02075360
	pop {r3, pc}
_020457E4:
	bl sub_020753A0
	pop {r3, pc}
_020457EA:
	bl sub_020753E0
	pop {r3, pc}
_020457F0:
	bl sub_02075448
	pop {r3, pc}
_020457F6:
	bl sub_02075388
	pop {r3, pc}
_020457FC:
	bl sub_020753C8
	pop {r3, pc}
_02045802:
	bl sub_0207541C
	pop {r3, pc}
_02045808:
	bl sub_02075488
	pop {r3, pc}
_0204580E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020457BC

	thumb_func_start sub_02045814
sub_02045814: ; 0x02045814
	ldr r1, _02045824 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #8]
	bx lr
	nop
_02045824: .word 0x0214190C
	thumb_func_end sub_02045814

	thumb_func_start sub_02045828
sub_02045828: ; 0x02045828
	ldr r1, _02045838 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02045838: .word 0x0214190C
	thumb_func_end sub_02045828

	thumb_func_start sub_0204583C
sub_0204583C: ; 0x0204583C
	ldr r1, _0204584C ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #0x18]
	bx lr
	nop
_0204584C: .word 0x0214190C
	thumb_func_end sub_0204583C

	thumb_func_start sub_02045850
sub_02045850: ; 0x02045850
	ldr r1, _02045860 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldrb r0, [r0, #0x1c]
	bx lr
	nop
_02045860: .word 0x0214190C
	thumb_func_end sub_02045850

	thumb_func_start sub_02045864
sub_02045864: ; 0x02045864
	ldr r1, _02045874 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldrb r0, [r0, #0x1e]
	bx lr
	nop
_02045874: .word 0x0214190C
	thumb_func_end sub_02045864

	thumb_func_start sub_02045878
sub_02045878: ; 0x02045878
	ldr r1, _02045888 ; =0x0214190C
	ldr r2, [r1]
	mov r1, #0x2c
	mul r1, r0
	add r0, r2, r1
	ldrb r0, [r0, #0x1f]
	bx lr
	nop
_02045888: .word 0x0214190C
	thumb_func_end sub_02045878

	thumb_func_start sub_0204588C
sub_0204588C: ; 0x0204588C
	sub sp, #0x20
	add r1, sp, #0
	cmp r0, #7
	bls _02045896
	b _02045A32
_02045896:
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020458A2: ; jump table
	.short _020458B2 - _020458A2 - 2 ; case 0
	.short _020458C4 - _020458A2 - 2 ; case 1
	.short _020458D6 - _020458A2 - 2 ; case 2
	.short _02045924 - _020458A2 - 2 ; case 3
	.short _02045972 - _020458A2 - 2 ; case 4
	.short _02045984 - _020458A2 - 2 ; case 5
	.short _02045996 - _020458A2 - 2 ; case 6
	.short _020459E4 - _020458A2 - 2 ; case 7
_020458B2:
	ldr r0, _02045A38 ; =0x04000008
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x1e]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020458C4:
	ldr r0, _02045A3C ; =0x0400000A
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x1c]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020458D6:
	ldr r2, _02045A40 ; =0x0214190C
	ldr r3, [r2]
	mov r2, #0x2c
	mul r2, r0
	add r0, r3, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _020458EE
	cmp r0, #1
	beq _02045900
	cmp r0, #2
	beq _02045912
_020458EE:
	ldr r0, _02045A44 ; =0x0400000C
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x1a]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045900:
	ldr r0, _02045A44 ; =0x0400000C
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x18]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045912:
	ldr r0, _02045A44 ; =0x0400000C
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x16]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045924:
	ldr r2, _02045A40 ; =0x0214190C
	ldr r3, [r2]
	mov r2, #0x2c
	mul r2, r0
	add r0, r3, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _0204593C
	cmp r0, #1
	beq _0204594E
	cmp r0, #2
	beq _02045960
_0204593C:
	ldr r0, _02045A48 ; =0x0400000E
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x14]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0204594E:
	ldr r0, _02045A48 ; =0x0400000E
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x12]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045960:
	ldr r0, _02045A48 ; =0x0400000E
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045972:
	ldr r0, _02045A4C ; =0x04001008
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0xe]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045984:
	ldr r0, _02045A50 ; =0x0400100A
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045996:
	ldr r2, _02045A40 ; =0x0214190C
	ldr r3, [r2]
	mov r2, #0x2c
	mul r2, r0
	add r0, r3, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _020459AE
	cmp r0, #1
	beq _020459C0
	cmp r0, #2
	beq _020459D2
_020459AE:
	ldr r0, _02045A54 ; =0x0400100C
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020459C0:
	ldr r0, _02045A54 ; =0x0400100C
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #8]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020459D2:
	ldr r0, _02045A54 ; =0x0400100C
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #6]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020459E4:
	ldr r2, _02045A40 ; =0x0214190C
	ldr r3, [r2]
	mov r2, #0x2c
	mul r2, r0
	add r0, r3, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _020459FC
	cmp r0, #1
	beq _02045A0E
	cmp r0, #2
	beq _02045A20
_020459FC:
	ldr r0, _02045A58 ; =0x0400100E
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045A0E:
	ldr r0, _02045A58 ; =0x0400100E
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1, #2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045A20:
	ldr r0, _02045A58 ; =0x0400100E
	add sp, #0x20
	ldrh r0, [r0]
	strh r0, [r1]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02045A32:
	mov r0, #0
	add sp, #0x20
	bx lr
	.align 2, 0
_02045A38: .word 0x04000008
_02045A3C: .word 0x0400000A
_02045A40: .word 0x0214190C
_02045A44: .word 0x0400000C
_02045A48: .word 0x0400000E
_02045A4C: .word 0x04001008
_02045A50: .word 0x0400100A
_02045A54: .word 0x0400100C
_02045A58: .word 0x0400100E
	thumb_func_end sub_0204588C

	thumb_func_start sub_02045A5C
sub_02045A5C: ; 0x02045A5C
	push {r4, lr}
	ldr r4, _02045A7C ; =0x0214190C
	ldr r0, [r4]
	cmp r0, #0
	beq _02045A78
	bl sub_02045B94
	bl sub_02045A80
	ldr r0, [r4]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r0, [r4]
	strh r1, [r0, #6]
_02045A78:
	pop {r4, pc}
	nop
_02045A7C: .word 0x0214190C
	thumb_func_end sub_02045A5C

	thumb_func_start sub_02045A80
sub_02045A80: ; 0x02045A80
	push {r3, r4, r5, lr}
	ldr r4, _02045B78 ; =0x0214190C
	ldr r3, [r4]
	ldrh r1, [r3, #6]
	lsl r1, r1, #0x1f
	beq _02045A9A
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #8]
	ldr r3, [r3, #0xc]
	mov r0, #0
	lsl r2, r2, #1
	bl sub_02046198
_02045A9A:
	ldr r3, [r4]
	mov r0, #2
	ldrh r1, [r3, #6]
	tst r0, r1
	beq _02045AB2
	ldr r2, [r3, #0x3c]
	ldr r1, [r3, #0x34]
	ldr r3, [r3, #0x38]
	mov r0, #1
	lsl r2, r2, #1
	bl sub_02046198
_02045AB2:
	ldr r3, [r4]
	mov r0, #4
	ldrh r1, [r3, #6]
	tst r0, r1
	beq _02045ACA
	ldr r2, [r3, #0x68]
	ldr r1, [r3, #0x60]
	ldr r3, [r3, #0x64]
	mov r0, #2
	lsl r2, r2, #1
	bl sub_02046198
_02045ACA:
	ldr r3, [r4]
	mov r0, #8
	ldrh r1, [r3, #6]
	tst r0, r1
	beq _02045AEC
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0x94
	add r1, #0x8c
	ldr r2, [r2]
	add r3, #0x90
	ldr r1, [r1]
	ldr r3, [r3]
	mov r0, #3
	lsl r2, r2, #1
	bl sub_02046198
_02045AEC:
	ldr r3, [r4]
	mov r0, #0x10
	ldrh r1, [r3, #6]
	tst r0, r1
	beq _02045B0E
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xc0
	add r1, #0xb8
	ldr r2, [r2]
	add r3, #0xbc
	ldr r1, [r1]
	ldr r3, [r3]
	mov r0, #4
	lsl r2, r2, #1
	bl sub_02046198
_02045B0E:
	ldr r3, [r4]
	mov r0, #0x20
	ldrh r1, [r3, #6]
	tst r0, r1
	beq _02045B30
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xec
	add r1, #0xe4
	ldr r2, [r2]
	add r3, #0xe8
	ldr r1, [r1]
	ldr r3, [r3]
	mov r0, #5
	lsl r2, r2, #1
	bl sub_02046198
_02045B30:
	ldr r5, [r4]
	mov r3, #0x40
	ldrh r0, [r5, #6]
	tst r0, r3
	beq _02045B52
	add r2, r3, #0
	add r1, r3, #0
	add r2, #0xd8
	add r1, #0xd0
	ldr r2, [r5, r2]
	add r3, #0xd4
	ldr r1, [r5, r1]
	ldr r3, [r5, r3]
	mov r0, #6
	lsl r2, r2, #1
	bl sub_02046198
_02045B52:
	ldr r3, [r4]
	mov r4, #0x80
	ldrh r0, [r3, #6]
	tst r0, r4
	beq _02045B74
	add r2, r4, #0
	add r1, r4, #0
	add r2, #0xc4
	add r1, #0xbc
	ldr r2, [r3, r2]
	add r4, #0xc0
	ldr r1, [r3, r1]
	ldr r3, [r3, r4]
	mov r0, #7
	lsl r2, r2, #1
	bl sub_02046198
_02045B74:
	pop {r3, r4, r5, pc}
	nop
_02045B78: .word 0x0214190C
	thumb_func_end sub_02045A80

	thumb_func_start sub_02045B7C
sub_02045B7C: ; 0x02045B7C
	ldr r1, _02045B90 ; =0x0214190C
	ldr r3, [r1]
	mov r1, #1
	lsl r1, r0
	lsl r0, r1, #0x10
	ldrh r2, [r3, #6]
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_02045B90: .word 0x0214190C
	thumb_func_end sub_02045B7C

	thumb_func_start sub_02045B94
sub_02045B94: ; 0x02045B94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r5, _02045DE4 ; =0x0214190C
	ldr r1, [r5]
	ldrh r2, [r1, #4]
	lsl r2, r2, #0x1f
	beq _02045BB6
	ldr r0, [r1, #0x14]
	ldr r2, _02045DE8 ; =0x000001FF
	ldr r1, [r1, #0x18]
	and r0, r2
	lsl r3, r1, #0x10
	lsl r1, r2, #0x10
	and r1, r3
	orr r1, r0
	ldr r0, _02045DEC ; =0x04000010
	str r1, [r0]
_02045BB6:
	ldr r1, [r5]
	mov r0, #2
	ldrh r2, [r1, #4]
	tst r0, r2
	beq _02045BDE
	ldr r0, [r1, #0x40]
	ldr r2, _02045DE8 ; =0x000001FF
	ldr r1, [r1, #0x44]
	and r0, r2
	lsl r3, r1, #0x10
	lsl r1, r2, #0x10
	and r1, r3
	orr r1, r0
	ldr r0, _02045DF0 ; =0x04000014
	str r1, [r0]
	ldr r1, [r5]
	ldr r0, [r1, #0x40]
	ldr r1, [r1, #0x44]
	bl sub_02042EE0
_02045BDE:
	ldr r3, [r5]
	mov r0, #4
	ldrh r1, [r3, #4]
	tst r0, r1
	beq _02045C3C
	add r0, r3, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	bne _02045C08
	ldr r2, [r3, #0x70]
	ldr r0, [r3, #0x6c]
	ldr r1, _02045DE8 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _02045DF4 ; =0x04000018
	str r1, [r0]
	b _02045C3C
_02045C08:
	mov r0, #2
	add r1, r3, #0
	str r0, [sp]
	add r1, #0x78
	ldr r2, [r3, #0x7c]
	add r3, #0x80
	add r4, sp, #0x38
	ldrh r1, [r1]
	ldr r3, [r3]
	add r0, r4, #0
	bl sub_02050610
	ldr r3, [r5]
	add r1, r4, #0
	ldr r0, [r3, #0x6c]
	add r2, r3, #0
	str r0, [sp]
	ldr r0, [r3, #0x70]
	add r2, #0x84
	str r0, [sp, #4]
	add r3, #0x88
	ldr r0, _02045DF8 ; =0x04000020
	ldr r2, [r2]
	ldr r3, [r3]
	blx sub_020749CC
_02045C3C:
	ldr r3, [r5]
	mov r0, #8
	ldrh r1, [r3, #4]
	tst r0, r1
	beq _02045CAC
	add r0, r3, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _02045C6C
	add r0, r3, #0
	add r0, #0x98
	add r3, #0x9c
	ldr r2, [r3]
	ldr r0, [r0]
	ldr r1, _02045DE8 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _02045DFC ; =0x0400001C
	str r1, [r0]
	b _02045CAC
_02045C6C:
	mov r0, #2
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp]
	add r1, #0xa4
	add r2, #0xa8
	add r3, #0xac
	add r4, sp, #0x28
	ldrh r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r4, #0
	bl sub_02050610
	ldr r3, [r5]
	add r1, r4, #0
	add r0, r3, #0
	add r0, #0x98
	ldr r0, [r0]
	add r2, r3, #0
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x9c
	ldr r0, [r0]
	add r2, #0xb0
	str r0, [sp, #4]
	add r3, #0xb4
	ldr r0, _02045E00 ; =0x04000030
	ldr r2, [r2]
	ldr r3, [r3]
	blx sub_020749CC
_02045CAC:
	ldr r1, [r5]
	mov r0, #0x10
	ldrh r2, [r1, #4]
	tst r0, r2
	beq _02045CD0
	add r0, r1, #0
	add r1, #0xc8
	add r0, #0xc4
	ldr r1, [r1]
	ldr r2, _02045DE8 ; =0x000001FF
	ldr r0, [r0]
	lsl r3, r1, #0x10
	lsl r1, r2, #0x10
	and r0, r2
	and r1, r3
	orr r1, r0
	ldr r0, _02045E04 ; =0x04001010
	str r1, [r0]
_02045CD0:
	ldr r1, [r5]
	mov r0, #0x20
	ldrh r2, [r1, #4]
	tst r0, r2
	beq _02045CF4
	add r0, r1, #0
	add r1, #0xf4
	add r0, #0xf0
	ldr r1, [r1]
	ldr r2, _02045DE8 ; =0x000001FF
	ldr r0, [r0]
	lsl r3, r1, #0x10
	lsl r1, r2, #0x10
	and r0, r2
	and r1, r3
	orr r1, r0
	ldr r0, _02045E08 ; =0x04001014
	str r1, [r0]
_02045CF4:
	ldr r6, [r5]
	mov r4, #0x40
	ldrh r0, [r6, #4]
	tst r0, r4
	beq _02045D66
	add r0, r4, #0
	add r0, #0xe4
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _02045D24
	ldr r1, _02045DE8 ; =0x000001FF
	add r4, #0xdc
	add r2, r1, #0
	sub r2, #0xdf
	ldr r0, [r6, r4]
	ldr r2, [r6, r2]
	and r0, r1
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _02045E0C ; =0x04001018
	str r1, [r0]
	b _02045D66
_02045D24:
	mov r0, #2
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp]
	add r1, #0xe8
	add r2, #0xec
	add r3, #0xf0
	add r7, sp, #0x18
	ldrh r1, [r6, r1]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	add r0, r7, #0
	bl sub_02050610
	add r0, r4, #0
	add r2, r4, #0
	ldr r3, [r5]
	add r0, #0xdc
	ldr r0, [r3, r0]
	add r2, #0xf4
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r3, r0]
	add r4, #0xf8
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _02045E10 ; =0x04001020
	ldr r3, [r3, r4]
	add r1, r7, #0
	blx sub_020749CC
_02045D66:
	ldr r6, [r5]
	mov r4, #0x80
	ldrh r0, [r6, #4]
	tst r0, r4
	beq _02045DDE
	add r0, r4, #0
	add r0, #0xd0
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _02045D9C
	add r4, #0xc8
	ldr r1, [r6, r4]
	ldr r0, _02045DE8 ; =0x000001FF
	add r2, r1, #0
	add r1, r0, #0
	sub r1, #0xb3
	ldr r1, [r6, r1]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02045E14 ; =0x0400101C
	add sp, #0x48
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02045D9C:
	mov r0, #2
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	str r0, [sp]
	add r1, #0xd4
	add r2, #0xd8
	add r3, #0xdc
	add r7, sp, #8
	ldrh r1, [r6, r1]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	add r0, r7, #0
	bl sub_02050610
	add r0, r4, #0
	add r2, r4, #0
	ldr r3, [r5]
	add r0, #0xc8
	ldr r0, [r3, r0]
	add r2, #0xe0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r3, r0]
	add r4, #0xe4
	str r0, [sp, #4]
	ldr r2, [r3, r2]
	ldr r0, _02045E18 ; =0x04001030
	ldr r3, [r3, r4]
	add r1, r7, #0
	blx sub_020749CC
_02045DDE:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02045DE4: .word 0x0214190C
_02045DE8: .word 0x000001FF
_02045DEC: .word 0x04000010
_02045DF0: .word 0x04000014
_02045DF4: .word 0x04000018
_02045DF8: .word 0x04000020
_02045DFC: .word 0x0400001C
_02045E00: .word 0x04000030
_02045E04: .word 0x04001010
_02045E08: .word 0x04001014
_02045E0C: .word 0x04001018
_02045E10: .word 0x04001020
_02045E14: .word 0x0400101C
_02045E18: .word 0x04001030
	thumb_func_end sub_02045B94

	thumb_func_start sub_02045E1C
sub_02045E1C: ; 0x02045E1C
	push {r3, r4, r5, lr}
	ldr r4, _02045E44 ; =0x0214190C
	add r5, r0, #0
	ldr r3, [r4]
	mov r0, #0x2c
	add r3, #8
	mul r0, r5
	add r0, r3, r0
	bl sub_02046128
	ldr r2, [r4]
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x10
	ldrh r1, [r2, #4]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #4]
	pop {r3, r4, r5, pc}
	nop
_02045E44: .word 0x0214190C
	thumb_func_end sub_02045E1C

	thumb_func_start sub_02045E48
sub_02045E48: ; 0x02045E48
	push {r3, r4, r5, lr}
	ldr r4, _02045E70 ; =0x0214190C
	add r5, r0, #0
	ldr r3, [r4]
	mov r0, #0x2c
	add r3, #8
	mul r0, r5
	add r0, r3, r0
	bl sub_02046B28
	ldr r2, [r4]
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x10
	ldrh r1, [r2, #4]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #4]
	pop {r3, r4, r5, pc}
	nop
_02045E70: .word 0x0214190C
	thumb_func_end sub_02045E48

	thumb_func_start sub_02045E74
sub_02045E74: ; 0x02045E74
	push {r3, r4, r5, lr}
	ldr r4, _02045E9C ; =0x0214190C
	add r5, r0, #0
	ldr r3, [r4]
	mov r0, #0x2c
	add r3, #8
	mul r0, r5
	add r0, r3, r0
	bl sub_02046B4C
	ldr r2, [r4]
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x10
	ldrh r1, [r2, #4]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #4]
	pop {r3, r4, r5, pc}
	nop
_02045E9C: .word 0x0214190C
	thumb_func_end sub_02045E74

	thumb_func_start sub_02045EA0
sub_02045EA0: ; 0x02045EA0
	push {r3, r4, r5, lr}
	ldr r4, _02045EC8 ; =0x0214190C
	add r5, r0, #0
	ldr r3, [r4]
	mov r0, #0x2c
	add r3, #8
	mul r0, r5
	add r0, r3, r0
	bl sub_02046B98
	ldr r2, [r4]
	mov r0, #1
	lsl r0, r5
	lsl r0, r0, #0x10
	ldrh r1, [r2, #4]
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r2, #4]
	pop {r3, r4, r5, pc}
	nop
_02045EC8: .word 0x0214190C
	thumb_func_end sub_02045EA0

	thumb_func_start sub_02045ECC
sub_02045ECC: ; 0x02045ECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	mov r0, #0x2c
	mul r0, r7
	str r0, [sp, #8]
	ldr r0, _0204604C ; =0x0214190C
	add r4, r1, #0
	ldr r1, [r0]
	ldr r0, [sp, #8]
	add r5, r2, #0
	add r2, r1, r0
	ldr r0, [r2, #8]
	str r3, [sp, #4]
	cmp r0, #0
	bne _02045EF2
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02045EF2:
	ldrb r2, [r2, #0x1d]
	lsl r0, r4, #0x15
	lsl r1, r5, #0x15
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02045368
	add r6, r0, #0
	add r0, r7, #0
	bl sub_020457BC
	add r7, r0, #0
	mov r1, #7
	add r0, r4, #0
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r5, #0
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, _0204604C ; =0x0214190C
	ldr r1, [sp, #8]
	ldr r0, [r0]
	add r1, r0, r1
	ldrb r2, [r1, #0x1e]
	cmp r2, #0
	bne _02045FBA
	ldr r1, [r1, #8]
	ldr r3, _02046050 ; =0x0209AEAC
	str r1, [sp, #0xc]
	ldr r1, _02046054 ; =0x00000A77
	mov r2, #0
	str r1, [sp]
	ldrh r1, [r0]
	ldr r0, _02046058 ; =0x00007FFF
	mov r4, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x40
	bl sub_0203A1FC
	add r5, r0, #0
	lsl r0, r6, #1
	ldr r1, [sp, #0xc]
	mov ip, r0
	ldrh r0, [r1, r0]
	mov r6, #0xf
	lsl r0, r0, #0x16
	lsr r0, r0, #0x11
	add r2, r7, r0
_02045F62:
	ldrb r3, [r2, r4]
	lsl r0, r4, #1
	add r1, r5, r0
	and r3, r6
	strb r3, [r5, r0]
	ldrb r0, [r2, r4]
	asr r0, r0, #4
	strb r0, [r1, #1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _02045F62
	ldr r1, [sp, #0xc]
	mov r0, ip
	ldrh r0, [r1, r0]
	ldr r2, _0204604C ; =0x0214190C
	ldr r2, [r2]
	asr r1, r0, #0xa
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	ldrh r2, [r2]
	lsr r0, r0, #0x18
	add r1, r5, #0
	bl sub_02046A7C
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r4, [r5, r0]
	add r0, r5, #0
	bl sub_0203A24C
	ldr r0, [sp, #4]
	mov r1, #1
	ldrh r2, [r0]
	lsl r1, r4
	mov r0, #1
	tst r1, r2
	beq _02046044
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02045FBA:
	ldrb r2, [r1, #0x1c]
	cmp r2, #1
	beq _0204601A
	ldr r4, [r1, #8]
	ldr r1, _0204605C ; =0x00000A8F
	ldr r3, _02046050 ; =0x0209AEAC
	str r1, [sp]
	ldrh r1, [r0]
	ldr r0, _02046058 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x40
	bl sub_0203A1FC
	lsl r6, r6, #1
	ldrh r1, [r4, r6]
	mov r2, #0x40
	add r5, r0, #0
	lsl r1, r1, #0x16
	lsr r1, r1, #0x10
	add r1, r7, r1
	blx sub_02078920
	ldrh r0, [r4, r6]
	ldr r2, _0204604C ; =0x0214190C
	ldr r2, [r2]
	asr r1, r0, #0xa
	mov r0, #3
	and r0, r1
	lsl r0, r0, #0x18
	ldrh r2, [r2]
	lsr r0, r0, #0x18
	add r1, r5, #0
	bl sub_02046A7C
	ldr r0, [sp, #0x10]
	lsl r1, r0, #3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r4, [r5, r0]
	add r0, r5, #0
	bl sub_0203A24C
	b _0204602C
_0204601A:
	ldr r1, [r1, #8]
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r6]
	lsl r0, r0, #3
	lsl r2, r1, #6
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r0, r0, r1
	ldrb r4, [r7, r0]
_0204602C:
	ldr r0, [sp, #4]
	ldrh r2, [r0]
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02046060 ; =0x0000FFFF
_02046036:
	cmp r2, r0
	beq _02046044
	cmp r4, r1
	bne _02046036
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02046044:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204604C: .word 0x0214190C
_02046050: .word 0x0209AEAC
_02046054: .word 0x00000A77
_02046058: .word 0x00007FFF
_0204605C: .word 0x00000A8F
_02046060: .word 0x0000FFFF
	thumb_func_end sub_02045ECC

	thumb_func_start sub_02046064
sub_02046064: ; 0x02046064
	cmp r1, #0
	beq _02046072
	cmp r1, #1
	beq _02046092
	cmp r1, #2
	beq _020460B2
	b _020460D2
_02046072:
	cmp r0, #1
	bne _0204607A
	mov r0, #0
	bx lr
_0204607A:
	cmp r0, #2
	bne _02046082
	mov r0, #2
	bx lr
_02046082:
	cmp r0, #3
	bne _0204608A
	mov r0, #1
	bx lr
_0204608A:
	cmp r0, #4
	bne _020460D2
	mov r0, #3
	bx lr
_02046092:
	cmp r0, #0
	bne _0204609A
	mov r0, #0
	bx lr
_0204609A:
	cmp r0, #1
	bne _020460A2
	mov r0, #1
	bx lr
_020460A2:
	cmp r0, #4
	bne _020460AA
	mov r0, #2
	bx lr
_020460AA:
	cmp r0, #5
	bne _020460D2
	mov r0, #3
	bx lr
_020460B2:
	cmp r0, #0
	bne _020460BA
	mov r0, #0
	bx lr
_020460BA:
	cmp r0, #1
	bne _020460C2
	mov r0, #1
	bx lr
_020460C2:
	cmp r0, #4
	bne _020460CA
	mov r0, #2
	bx lr
_020460CA:
	cmp r0, #5
	bne _020460D2
	mov r0, #3
	bx lr
_020460D2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_02046064

	thumb_func_start sub_020460D8
sub_020460D8: ; 0x020460D8
	cmp r0, #5
	bhi _02046126
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020460E8: ; jump table
	.short _020460F4 - _020460E8 - 2 ; case 0
	.short _020460FC - _020460E8 - 2 ; case 1
	.short _02046104 - _020460E8 - 2 ; case 2
	.short _0204610E - _020460E8 - 2 ; case 3
	.short _02046118 - _020460E8 - 2 ; case 4
	.short _02046120 - _020460E8 - 2 ; case 5
_020460F4:
	mov r0, #0x10
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_020460FC:
	mov r0, #0x20
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_02046104:
	mov r0, #0x20
	strb r0, [r1]
	mov r0, #0x40
	strb r0, [r2]
	bx lr
_0204610E:
	mov r0, #0x40
	strb r0, [r1]
	mov r0, #0x20
	strb r0, [r2]
	bx lr
_02046118:
	mov r0, #0x40
	strb r0, [r1]
	strb r0, [r2]
	bx lr
_02046120:
	mov r0, #0x80
	strb r0, [r1]
	strb r0, [r2]
_02046126:
	bx lr
	thumb_func_end sub_020460D8

	thumb_func_start sub_02046128
sub_02046128: ; 0x02046128
	cmp r1, #5
	bhi _0204616A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02046138: ; jump table
	.short _02046144 - _02046138 - 2 ; case 0
	.short _02046148 - _02046138 - 2 ; case 1
	.short _02046150 - _02046138 - 2 ; case 2
	.short _02046158 - _02046138 - 2 ; case 3
	.short _0204615C - _02046138 - 2 ; case 4
	.short _02046164 - _02046138 - 2 ; case 5
_02046144:
	str r2, [r0, #0xc]
	bx lr
_02046148:
	ldr r1, [r0, #0xc]
	add r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_02046150:
	ldr r1, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_02046158:
	str r2, [r0, #0x10]
	bx lr
_0204615C:
	ldr r1, [r0, #0x10]
	add r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
_02046164:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
_0204616A:
	bx lr
	thumb_func_end sub_02046128

	thumb_func_start sub_0204616C
sub_0204616C: ; 0x0204616C
	push {r4, r5, lr}
	sub sp, #0x14
	mov r2, #1
	add r4, r0, #0
	mov r0, #0
	lsl r2, r2, #0xc
	add r5, sp, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_02050610
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0
	bl sub_02044EB0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204616C

	thumb_func_start sub_02046198
sub_02046198: ; 0x02046198
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	blx sub_0207B0AC
	cmp r7, #7
	bhi _02046228
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020461BA: ; jump table
	.short _020461CA - _020461BA - 2 ; case 0
	.short _020461D6 - _020461BA - 2 ; case 1
	.short _020461E2 - _020461BA - 2 ; case 2
	.short _020461EE - _020461BA - 2 ; case 3
	.short _020461FA - _020461BA - 2 ; case 4
	.short _02046206 - _020461BA - 2 ; case 5
	.short _02046212 - _020461BA - 2 ; case 6
	.short _0204621E - _020461BA - 2 ; case 7
_020461CA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020757B4
	pop {r3, r4, r5, r6, r7, pc}
_020461D6:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0207589C
	pop {r3, r4, r5, r6, r7, pc}
_020461E2:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075984
	pop {r3, r4, r5, r6, r7, pc}
_020461EE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075A6C
	pop {r3, r4, r5, r6, r7, pc}
_020461FA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075828
	pop {r3, r4, r5, r6, r7, pc}
_02046206:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075910
	pop {r3, r4, r5, r6, r7, pc}
_02046212:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_020759F8
	pop {r3, r4, r5, r6, r7, pc}
_0204621E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075AE0
_02046228:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02046198

	thumb_func_start sub_0204622C
sub_0204622C: ; 0x0204622C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #4]
	add r4, r2, #0
	str r3, [sp, #8]
	bne _02046280
	ldr r0, [r5]
	ldr r3, _0204628C ; =0x0209AEAC
	lsr r6, r0, #8
	ldr r0, _02046290 ; =0x00000B93
	mov r2, #0
	str r0, [sp]
	ldr r0, _02046294 ; =0x0214190C
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _02046298 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl sub_0203A1FC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02044F58
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	add r1, r7, #0
	add r3, r6, #0
	bl sub_0204629C
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02046280:
	add r2, r3, #0
	add r3, r4, #0
	bl sub_0204629C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0204628C: .word 0x0209AEAC
_02046290: .word 0x00000B93
_02046294: .word 0x0214190C
_02046298: .word 0x00007FFF
	thumb_func_end sub_0204622C

	thumb_func_start sub_0204629C
sub_0204629C: ; 0x0204629C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r5, r2, #0
	blx sub_0207B0AC
	cmp r7, #7
	bhi _0204632C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020462BE: ; jump table
	.short _020462CE - _020462BE - 2 ; case 0
	.short _020462DA - _020462BE - 2 ; case 1
	.short _020462E6 - _020462BE - 2 ; case 2
	.short _020462F2 - _020462BE - 2 ; case 3
	.short _020462FE - _020462BE - 2 ; case 4
	.short _0204630A - _020462BE - 2 ; case 5
	.short _02046316 - _020462BE - 2 ; case 6
	.short _02046322 - _020462BE - 2 ; case 7
_020462CE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075B54
	pop {r3, r4, r5, r6, r7, pc}
_020462DA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075C04
	pop {r3, r4, r5, r6, r7, pc}
_020462E6:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075CB4
	pop {r3, r4, r5, r6, r7, pc}
_020462F2:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075D64
	pop {r3, r4, r5, r6, r7, pc}
_020462FE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075BAC
	pop {r3, r4, r5, r6, r7, pc}
_0204630A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075C5C
	pop {r3, r4, r5, r6, r7, pc}
_02046316:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075D0C
	pop {r3, r4, r5, r6, r7, pc}
_02046322:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02075DBC
_0204632C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204629C

	thumb_func_start sub_02046330
sub_02046330: ; 0x02046330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _02046354
	b _020464A2
_02046354:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_020460D8
	add r0, sp, #0x58
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _02046408
	mov r1, #0
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x58]
	cmp r1, #0
	bhi _02046374
	b _020464A2
_02046374:
	ldrb r1, [r0, #0xc]
	ldrb r0, [r0, #8]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x18]
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x14]
_02046384:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30]
	add r0, sp, #0x40
	ldrb r1, [r0]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bhs _020463F4
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	lsl r1, r0, #0x18
	lsr r2, r1, #0x18
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bhs _020463F4
	mov r5, #0
	cmp r6, #0
	bls _020463F4
	mul r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x10]
_020463BA:
	ldr r0, [sp]
	add r1, sp, #0x40
	add r0, r0, r5
	lsl r0, r0, #0x18
	ldrb r1, [r1, #1]
	lsr r0, r0, #0x18
	cmp r0, r1
	bhs _020463EA
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r4
	bhs _020463EA
	ldrb r2, [r7, #0x15]
	ldr r1, [sp, #0x30]
	bl sub_02045368
	ldr r1, [sp, #0x10]
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	lsl r2, r0, #1
	ldr r0, [sp, #0x2c]
	strh r1, [r0, r2]
_020463EA:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _020463BA
_020463F4:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02046384
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_02046408:
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x58]
	cmp r1, #0
	bls _020464A2
	ldrb r1, [r0, #0xc]
	ldrb r0, [r0, #8]
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
_0204641A:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _020464A2
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _020464A2
	mov r5, #0
	cmp r6, #0
	bls _02046492
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_02046446:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _02046492
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _02046492
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_02045368
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020453D8
	lsl r1, r0, #1
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x38]
	lsl r2, r1, #1
	ldr r1, [sp, #0x2c]
	strh r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02046446
_02046492:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _0204641A
_020464A2:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02046330

	thumb_func_start sub_020464A8
sub_020464A8: ; 0x020464A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r3, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _020464CC
	b _02046604
_020464CC:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #1
	add r2, sp, #0x40
	bl sub_020460D8
	add r0, sp, #0x58
	ldrb r1, [r0, #0x18]
	cmp r1, #0
	bne _0204656E
	mov r1, #0
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x58]
	cmp r1, #0
	bhi _020464EC
	b _02046604
_020464EC:
	ldrb r1, [r0, #0xc]
	ldrb r0, [r0, #8]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x14]
_020464FA:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	bge _02046604
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _02046604
	mov r5, #0
	cmp r6, #0
	bls _0204655A
	ldr r1, [sp, #0x14]
	mul r2, r4
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_02046528:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _0204655A
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _0204655A
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl sub_02045368
	ldr r1, [sp, #0x10]
	ldrb r2, [r1, r5]
	ldr r1, [sp, #0x2c]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02046528
_0204655A:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _020464FA
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0204656E:
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x58]
	cmp r1, #0
	bls _02046604
	ldrb r1, [r0, #0xc]
	ldrb r0, [r0, #8]
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
_02046580:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0]
	cmp r1, r0
	bge _02046604
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _02046604
	mov r5, #0
	cmp r6, #0
	bls _020465F4
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_020465AC:
	add r1, sp, #0x40
	ldr r0, [sp]
	ldrb r1, [r1, #1]
	add r0, r0, r5
	cmp r0, r1
	bge _020465F4
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _020465F4
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl sub_02045368
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020453D8
	ldr r1, [sp, #0x5c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	strb r2, [r1, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _020465AC
_020465F4:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02046580
_02046604:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020464A8

	thumb_func_start sub_02046608
sub_02046608: ; 0x02046608
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r2, [sp]
	add r7, r1, #0
	ldr r1, [sp, #0x50]
	add r6, r3, #0
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r4, [sp, #0x60]
	str r1, [sp, #0x54]
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x64]
	ldr r1, [r0]
	str r1, [sp, #0x34]
	cmp r1, #0
	bne _0204662A
	b _02046776
_0204662A:
	ldrb r0, [r0, #0x15]
	add r1, sp, #0x38
	add r1, #1
	add r2, sp, #0x38
	bl sub_020460D8
	add r1, sp, #0x50
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _020466E2
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bhi _0204664A
	b _02046776
_0204664A:
	add r0, sp, #0x38
	ldrb r2, [r0]
	str r2, [sp, #0x1c]
	ldrb r5, [r0, #1]
	ldrb r0, [r1, #8]
	ldrb r2, [r1, #0xc]
	str r0, [sp, #0x14]
	lsl r1, r0, #1
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	lsl r1, r7, #1
	add r0, r0, r1
	str r0, [sp, #0xc]
_0204666A:
	ldr r1, [sp]
	mov r0, ip
	add r3, r1, r0
	lsl r0, r3, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bhs _020466CE
	ldr r1, [sp, #0x18]
	mov r0, ip
	add r2, r1, r0
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x64]
	cmp r1, r0
	bhs _020466CE
	mov r1, #0
	cmp r6, #0
	bls _020466CE
	add r0, r4, #0
	mul r0, r2
	lsl r2, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	str r0, [sp, #8]
	add r0, r5, #0
	mul r0, r3
	lsl r2, r0, #1
	ldr r0, [sp, #0xc]
	add r3, r0, r2
_020466A6:
	add r0, r7, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	bhs _020466C4
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r4
	bhs _020466C4
	ldr r2, [sp, #8]
	lsl r0, r1, #1
	ldrh r2, [r2, r0]
	strh r2, [r3, r0]
_020466C4:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r6
	blo _020466A6
_020466CE:
	mov r0, ip
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x50]
	mov ip, r1
	cmp r1, r0
	blo _0204666A
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_020466E2:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bls _02046776
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x2c]
	ldrb r0, [r1, #8]
	lsl r1, r7, #1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	add r0, r0, r1
	str r0, [sp, #0x24]
_020466FC:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x20]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	bge _02046776
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, [sp, #0x64]
	cmp r1, r0
	bge _02046776
	mov r5, #0
	cmp r6, #0
	bls _02046766
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30]
_02046726:
	add r0, sp, #0x38
	ldrb r0, [r0, #1]
	add r1, r7, r5
	cmp r1, r0
	bge _02046766
	ldr r0, [sp, #0x28]
	add r0, r0, r5
	cmp r0, r4
	bge _02046766
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x64]
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_020453D8
	lsl r1, r0, #1
	ldr r0, [sp, #0x54]
	ldrh r0, [r0, r1]
	add r1, sp, #0x38
	ldrb r2, [r1, #1]
	ldr r1, [sp, #0x20]
	mul r1, r2
	add r1, r5, r1
	lsl r2, r1, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, r2]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _02046726
_02046766:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #4]
	ldr r0, [sp, #0x50]
	cmp r1, r0
	blo _020466FC
_02046776:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02046608

	thumb_func_start sub_0204677C
sub_0204677C: ; 0x0204677C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [r0]
	add r7, r1, #0
	str r0, [sp]
	ldr r6, [sp, #0x38]
	cmp r4, #0
	beq _02046826
	ldrb r0, [r0, #0x15]
	add r1, sp, #0x18
	add r1, #1
	add r2, sp, #0x18
	bl sub_020460D8
	add r0, sp, #0x30
	ldrb r2, [r0, #4]
	ldr r1, [sp, #8]
	add r1, r1, r2
	ldr r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, r1
	bge _02046826
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	lsl r1, r6, #0xc
	add r0, r0, r2
	add r1, r1, r7
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
_020467BE:
	add r0, sp, #0x18
	ldrb r1, [r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	bhs _02046826
	ldr r5, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	cmp r1, r0
	bge _02046816
_020467D2:
	add r0, sp, #0x18
	ldrb r0, [r0, #1]
	cmp r5, r0
	bhs _02046816
	ldr r2, [sp]
	ldr r1, [sp, #8]
	ldrb r2, [r2, #0x15]
	add r0, r5, #0
	bl sub_02045368
	cmp r6, #0x11
	bne _020467F0
	lsl r0, r0, #1
	strh r7, [r4, r0]
	b _0204680A
_020467F0:
	cmp r6, #0x10
	bne _02046804
	lsl r0, r0, #1
	ldrh r2, [r4, r0]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r1, r2
	add r1, r7, r1
	strh r1, [r4, r0]
	b _0204680A
_02046804:
	lsl r1, r0, #1
	ldr r0, [sp, #0x14]
	strh r0, [r4, r1]
_0204680A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _020467D2
_02046816:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _020467BE
_02046826:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204677C

	thumb_func_start sub_0204682C
sub_0204682C: ; 0x0204682C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	ldr r0, [r7]
	add r5, r3, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _0204689C
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x10
	add r1, #1
	add r2, sp, #0x10
	bl sub_020460D8
	add r1, sp, #0x28
	ldrb r0, [r1, #4]
	add r0, r5, r0
	str r0, [sp, #8]
	cmp r5, r0
	bge _0204689C
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	add r6, r0, r1
_0204685E:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0204689C
	ldr r4, [sp, #4]
	add r0, r4, #0
	cmp r0, r6
	bge _02046890
_0204686E:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	cmp r4, r0
	bhs _02046890
	ldrb r2, [r7, #0x15]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02045368
	ldr r2, [sp]
	ldr r1, [sp, #0xc]
	strb r2, [r1, r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _0204686E
_02046890:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #8]
	cmp r5, r0
	blt _0204685E
_0204689C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204682C

	thumb_func_start sub_020468A0
sub_020468A0: ; 0x020468A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp]
	str r3, [sp, #4]
	add r6, r1, #0
	ldr r1, [r0]
	ldr r4, [sp, #0x38]
	str r1, [sp, #0x10]
	cmp r1, #0
	beq _02046948
	ldrb r0, [r0, #0x15]
	add r1, sp, #0x18
	add r1, #1
	add r2, sp, #0x18
	bl sub_020460D8
	add r0, sp, #0x30
	ldrb r2, [r0, #4]
	ldr r1, [sp, #4]
	add r1, r1, r2
	ldr r2, [sp, #4]
	str r1, [sp, #8]
	cmp r2, r1
	bge _02046948
	add r2, sp, #0x18
	ldrb r1, [r2]
	str r1, [sp, #0xc]
	ldrb r1, [r2, #1]
	str r1, [sp, #0x14]
	lsl r1, r4, #0xc
	add r2, r1, r6
	ldrb r1, [r0]
	ldr r0, [sp]
	add r7, r0, r1
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	mov ip, r0
_020468EA:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bhs _02046948
	ldr r3, [sp]
	add r0, r3, #0
	cmp r0, r7
	bge _02046938
	ldr r0, [sp, #0x14]
	mul r1, r0
	ldr r0, [sp, #0x10]
	lsl r1, r1, #1
	add r5, r0, r1
_02046904:
	ldr r0, [sp, #0x14]
	cmp r3, r0
	bhs _02046938
	cmp r4, #0x11
	bne _02046914
	lsl r0, r3, #1
	strh r6, [r5, r0]
	b _0204692E
_02046914:
	cmp r4, #0x10
	bne _02046928
	lsl r2, r3, #1
	ldrh r1, [r5, r2]
	mov r0, #0xf
	lsl r0, r0, #0xc
	and r0, r1
	add r0, r6, r0
	strh r0, [r5, r2]
	b _0204692E
_02046928:
	lsl r1, r3, #1
	mov r0, ip
	strh r0, [r5, r1]
_0204692E:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r7
	blt _02046904
_02046938:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blt _020468EA
_02046948:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020468A0

	thumb_func_start sub_0204694C
sub_0204694C: ; 0x0204694C
	push {r3, r4, r5, lr}
	add r5, r3, #0
	mov r3, #0x2c
	mul r3, r0
	ldr r0, _02046978 ; =0x0214190C
	ldr r0, [r0]
	add r0, r0, r3
	ldr r4, [r0, #8]
	ldrb r3, [r0, #0x1d]
	cmp r4, #0
	beq _02046976
	lsl r0, r1, #0x18
	lsl r1, r2, #0x18
	lsl r2, r3, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_02045368
	lsl r0, r0, #1
	strh r5, [r4, r0]
_02046976:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02046978: .word 0x0214190C
	thumb_func_end sub_0204694C

	thumb_func_start sub_0204697C
sub_0204697C: ; 0x0204697C
	push {r4, r5, r6, lr}
	add r3, r0, #0
	cmp r3, #7
	bhi _020469F6
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02046990: ; jump table
	.short _020469A0 - _02046990 - 2 ; case 0
	.short _020469A0 - _02046990 - 2 ; case 1
	.short _020469A0 - _02046990 - 2 ; case 2
	.short _020469A0 - _02046990 - 2 ; case 3
	.short _020469CC - _02046990 - 2 ; case 4
	.short _020469CC - _02046990 - 2 ; case 5
	.short _020469CC - _02046990 - 2 ; case 6
	.short _020469CC - _02046990 - 2 ; case 7
_020469A0:
	mov r0, #0x1f
	tst r0, r2
	beq _020469AA
	mov r5, #1
	b _020469AC
_020469AA:
	mov r5, #0
_020469AC:
	ldr r0, _020469F8 ; =0x0214190C
	mov r6, #0x5a
	ldr r4, [r0]
	lsl r6, r6, #2
	lsl r3, r3, #2
	ldr r0, [r4, r6]
	add r3, r4, r3
	add r6, #0x28
	ldr r3, [r3, r6]
	lsr r2, r2, #5
	add r1, r1, r3
	lsr r1, r1, #5
	add r2, r2, r5
	bl sub_0203C804
	pop {r4, r5, r6, pc}
_020469CC:
	mov r0, #0x1f
	tst r0, r2
	beq _020469D6
	mov r5, #1
	b _020469D8
_020469D6:
	mov r5, #0
_020469D8:
	ldr r0, _020469F8 ; =0x0214190C
	mov r6, #0x5b
	ldr r4, [r0]
	lsl r6, r6, #2
	lsl r3, r3, #2
	ldr r0, [r4, r6]
	add r3, r4, r3
	add r6, #0x24
	ldr r3, [r3, r6]
	lsr r2, r2, #5
	add r1, r1, r3
	lsr r1, r1, #5
	add r2, r2, r5
	bl sub_0203C804
_020469F6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_020469F8: .word 0x0214190C
	thumb_func_end sub_0204697C

	thumb_func_start sub_020469FC
sub_020469FC: ; 0x020469FC
	push {r4, r5, r6, lr}
	add r3, r0, #0
	cmp r3, #7
	bhi _02046A76
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02046A10: ; jump table
	.short _02046A20 - _02046A10 - 2 ; case 0
	.short _02046A20 - _02046A10 - 2 ; case 1
	.short _02046A20 - _02046A10 - 2 ; case 2
	.short _02046A20 - _02046A10 - 2 ; case 3
	.short _02046A4C - _02046A10 - 2 ; case 4
	.short _02046A4C - _02046A10 - 2 ; case 5
	.short _02046A4C - _02046A10 - 2 ; case 6
	.short _02046A4C - _02046A10 - 2 ; case 7
_02046A20:
	mov r0, #0x1f
	tst r0, r2
	beq _02046A2A
	mov r5, #1
	b _02046A2C
_02046A2A:
	mov r5, #0
_02046A2C:
	ldr r0, _02046A78 ; =0x0214190C
	mov r6, #0x5a
	ldr r4, [r0]
	lsl r6, r6, #2
	lsl r3, r3, #2
	ldr r0, [r4, r6]
	add r3, r4, r3
	add r6, #0x28
	ldr r3, [r3, r6]
	lsr r2, r2, #5
	add r1, r1, r3
	lsr r1, r1, #5
	add r2, r2, r5
	bl sub_0203C82C
	pop {r4, r5, r6, pc}
_02046A4C:
	mov r0, #0x1f
	tst r0, r2
	beq _02046A56
	mov r5, #1
	b _02046A58
_02046A56:
	mov r5, #0
_02046A58:
	ldr r0, _02046A78 ; =0x0214190C
	mov r6, #0x5b
	ldr r4, [r0]
	lsl r6, r6, #2
	lsl r3, r3, #2
	ldr r0, [r4, r6]
	add r3, r4, r3
	add r6, #0x24
	ldr r3, [r3, r6]
	lsr r2, r2, #5
	add r1, r1, r3
	lsr r1, r1, #5
	add r2, r2, r5
	bl sub_0203C82C
_02046A76:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02046A78: .word 0x0214190C
	thumb_func_end sub_020469FC

	thumb_func_start sub_02046A7C
sub_02046A7C: ; 0x02046A7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	add r7, r1, #0
	cmp r0, #0
	beq _02046B18
	ldr r0, _02046B1C ; =0x00000D48
	ldr r3, _02046B20 ; =0x0209AEAC
	str r0, [sp]
	lsl r0, r2, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02046B24 ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x40
	mov r5, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #4]
	mov r1, #1
	tst r0, r1
	beq _02046AE2
	mov r3, #7
_02046AB6:
	lsl r2, r5, #3
	add r1, r7, r2
	mov r0, #0
	add r2, r4, r2
_02046ABE:
	sub r6, r3, r0
	ldrb r6, [r1, r6]
	strb r6, [r2, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #8
	blo _02046ABE
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _02046AB6
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	blx sub_02078920
_02046AE2:
	ldr r0, [sp, #4]
	mov r1, #2
	tst r0, r1
	beq _02046B12
	mov r5, #0
	mov r6, #7
_02046AEE:
	sub r1, r6, r5
	lsl r0, r5, #3
	lsl r1, r1, #3
	add r0, r4, r0
	add r1, r7, r1
	mov r2, #8
	blx sub_02078920
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _02046AEE
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0x40
	blx sub_02078920
_02046B12:
	add r0, r4, #0
	bl sub_0203A24C
_02046B18:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02046B1C: .word 0x00000D48
_02046B20: .word 0x0209AEAC
_02046B24: .word 0x00007FFF
	thumb_func_end sub_02046A7C

	thumb_func_start sub_02046B28
sub_02046B28: ; 0x02046B28
	cmp r1, #0
	beq _02046B36
	cmp r1, #1
	beq _02046B3A
	cmp r1, #2
	beq _02046B42
	bx lr
_02046B36:
	strh r2, [r0, #0x18]
	bx lr
_02046B3A:
	ldrh r1, [r0, #0x18]
	add r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
_02046B42:
	ldrh r1, [r0, #0x18]
	sub r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_02046B28

	thumb_func_start sub_02046B4C
sub_02046B4C: ; 0x02046B4C
	cmp r1, #8
	bhi _02046B94
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02046B5C: ; jump table
	.short _02046B94 - _02046B5C - 2 ; case 0
	.short _02046B94 - _02046B5C - 2 ; case 1
	.short _02046B94 - _02046B5C - 2 ; case 2
	.short _02046B6E - _02046B5C - 2 ; case 3
	.short _02046B72 - _02046B5C - 2 ; case 4
	.short _02046B7A - _02046B5C - 2 ; case 5
	.short _02046B82 - _02046B5C - 2 ; case 6
	.short _02046B86 - _02046B5C - 2 ; case 7
	.short _02046B8E - _02046B5C - 2 ; case 8
_02046B6E:
	str r2, [r0, #0x1c]
	bx lr
_02046B72:
	ldr r1, [r0, #0x1c]
	add r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_02046B7A:
	ldr r1, [r0, #0x1c]
	sub r1, r1, r2
	str r1, [r0, #0x1c]
	bx lr
_02046B82:
	str r2, [r0, #0x20]
	bx lr
_02046B86:
	ldr r1, [r0, #0x20]
	add r1, r1, r2
	str r1, [r0, #0x20]
	bx lr
_02046B8E:
	ldr r1, [r0, #0x20]
	sub r1, r1, r2
	str r1, [r0, #0x20]
_02046B94:
	bx lr
	.align 2, 0
	thumb_func_end sub_02046B4C

	thumb_func_start sub_02046B98
sub_02046B98: ; 0x02046B98
	sub r1, #9
	cmp r1, #5
	bhi _02046BDC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02046BAA: ; jump table
	.short _02046BB6 - _02046BAA - 2 ; case 0
	.short _02046BBA - _02046BAA - 2 ; case 1
	.short _02046BC2 - _02046BAA - 2 ; case 2
	.short _02046BCA - _02046BAA - 2 ; case 3
	.short _02046BCE - _02046BAA - 2 ; case 4
	.short _02046BD6 - _02046BAA - 2 ; case 5
_02046BB6:
	str r2, [r0, #0x24]
	bx lr
_02046BBA:
	ldr r1, [r0, #0x24]
	add r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_02046BC2:
	ldr r1, [r0, #0x24]
	sub r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_02046BCA:
	str r2, [r0, #0x28]
	bx lr
_02046BCE:
	ldr r1, [r0, #0x28]
	add r1, r1, r2
	str r1, [r0, #0x28]
	bx lr
_02046BD6:
	ldr r1, [r0, #0x28]
	sub r1, r1, r2
	str r1, [r0, #0x28]
_02046BDC:
	bx lr
	.align 2, 0
	thumb_func_end sub_02046B98

	thumb_func_start sub_02046BE0
sub_02046BE0: ; 0x02046BE0
	push {r4, lr}
	ldr r1, _02046C34 ; =0x0000FFFF
	add r2, r0, #0
	eor r2, r1
	lsr r0, r1, #7
	and r0, r2
	bl sub_02076AC4
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	blx sub_0207869C
	bl sub_02076E7C
	mov r4, #1
	mov r1, #7
	lsl r4, r4, #0xa
	mov r0, #0xc0
	lsl r1, r1, #0x18
	add r2, r4, #0
	blx sub_0207869C
	mov r1, #5
	mov r0, #0
	lsl r1, r1, #0x18
	add r2, r4, #0
	blx sub_0207869C
	ldr r1, _02046C38 ; =0x07000400
	mov r0, #0xc0
	add r2, r4, #0
	blx sub_0207869C
	ldr r1, _02046C3C ; =0x05000400
	mov r0, #0
	add r2, r4, #0
	blx sub_0207869C
	pop {r4, pc}
	.align 2, 0
_02046C34: .word 0x0000FFFF
_02046C38: .word 0x07000400
_02046C3C: .word 0x05000400
	thumb_func_end sub_02046BE0

	thumb_func_start sub_02046C40
sub_02046C40: ; 0x02046C40
	push {r4, lr}
	add r4, r0, #0
	bl sub_02076C40
	bl sub_02076C60
	bl sub_02076CD0
	bl sub_02076CF0
	bl sub_02076C50
	bl sub_02076C80
	bl sub_02076CE0
	bl sub_02076D10
	bl sub_02076CA0
	bl sub_02076CB0
	ldr r0, [r4]
	bl sub_02076550
	ldr r0, [r4, #4]
	bl sub_02076758
	ldr r0, [r4, #8]
	bl sub_02076ADC
	ldr r0, [r4, #0xc]
	bl sub_02076B7C
	ldr r0, [r4, #0x10]
	bl sub_020766A0
	ldr r0, [r4, #0x14]
	bl sub_020767F4
	ldr r0, [r4, #0x18]
	bl sub_02076B38
	ldr r0, [r4, #0x1c]
	bl sub_02076BCC
	ldr r0, [r4, #0x20]
	bl sub_02076860
	ldr r0, [r4, #0x24]
	bl sub_0207695C
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02046CC8 ; =0xFFCFFFEF
	ldr r3, [r4, #0x28]
	and r1, r0
	orr r1, r3
	str r1, [r2]
	ldr r2, _02046CCC ; =0x04001000
	ldr r3, [r4, #0x2c]
	ldr r1, [r2]
	and r0, r1
	orr r0, r3
	str r0, [r2]
	pop {r4, pc}
	nop
_02046CC8: .word 0xFFCFFFEF
_02046CCC: .word 0x04001000
	thumb_func_end sub_02046C40

	thumb_func_start sub_02046CD0
sub_02046CD0: ; 0x02046CD0
	ldr r1, _02046CDC ; =0x02141910
	mov r0, #0x10
	ldr r2, [r1, #4]
	and r0, r2
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_02046CDC: .word 0x02141910
	thumb_func_end sub_02046CD0

	thumb_func_start sub_02046CE0
sub_02046CE0: ; 0x02046CE0
	ldr r1, _02046CEC ; =0x02141910
	mov r0, #0xf
	ldr r2, [r1, #4]
	and r0, r2
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_02046CEC: .word 0x02141910
	thumb_func_end sub_02046CE0

	thumb_func_start sub_02046CF0
sub_02046CF0: ; 0x02046CF0
	push {r3, lr}
	bl sub_02046CD0
	bl sub_02046CE0
	pop {r3, pc}
	thumb_func_end sub_02046CF0

	thumb_func_start sub_02046CFC
sub_02046CFC: ; 0x02046CFC
	cmp r1, #1
	bne _02046D0A
	ldr r1, _02046D30 ; =0x02141910
	ldr r1, [r1, #4]
	tst r1, r0
	beq _02046D12
	bx lr
_02046D0A:
	ldr r1, _02046D30 ; =0x02141910
	ldr r1, [r1, #4]
	tst r1, r0
	beq _02046D2C
_02046D12:
	ldr r1, _02046D30 ; =0x02141910
	ldr r2, [r1, #4]
	add r3, r2, #0
	eor r3, r0
	mov r2, #1
	lsl r2, r2, #0x1a
	str r3, [r1, #4]
	ldr r1, [r2]
	ldr r0, _02046D34 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2]
_02046D2C:
	bx lr
	nop
_02046D30: .word 0x02141910
_02046D34: .word 0xFFFFE0FF
	thumb_func_end sub_02046CFC

	thumb_func_start sub_02046D38
sub_02046D38: ; 0x02046D38
	ldr r1, _02046D50 ; =0x02141910
	mov r3, #1
	str r0, [r1, #4]
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _02046D54 ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	nop
_02046D50: .word 0x02141910
_02046D54: .word 0xFFFFE0FF
	thumb_func_end sub_02046D38

	thumb_func_start sub_02046D58
sub_02046D58: ; 0x02046D58
	ldr r1, _02046D64 ; =0x02141910
	mov r0, #0x10
	ldr r2, [r1]
	and r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_02046D64: .word 0x02141910
	thumb_func_end sub_02046D58

	thumb_func_start sub_02046D68
sub_02046D68: ; 0x02046D68
	ldr r1, _02046D74 ; =0x02141910
	mov r0, #0xf
	ldr r2, [r1]
	and r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_02046D74: .word 0x02141910
	thumb_func_end sub_02046D68

	thumb_func_start sub_02046D78
sub_02046D78: ; 0x02046D78
	push {r3, lr}
	bl sub_02046D58
	bl sub_02046D68
	pop {r3, pc}
	thumb_func_end sub_02046D78

	thumb_func_start sub_02046D84
sub_02046D84: ; 0x02046D84
	cmp r1, #1
	bne _02046D92
	ldr r1, _02046DB4 ; =0x02141910
	ldr r1, [r1]
	tst r1, r0
	beq _02046D9A
	bx lr
_02046D92:
	ldr r1, _02046DB4 ; =0x02141910
	ldr r1, [r1]
	tst r1, r0
	beq _02046DB2
_02046D9A:
	ldr r1, _02046DB4 ; =0x02141910
	ldr r2, [r1]
	add r3, r2, #0
	eor r3, r0
	ldr r2, _02046DB8 ; =0x04001000
	str r3, [r1]
	ldr r1, [r2]
	ldr r0, _02046DBC ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2]
_02046DB2:
	bx lr
	.align 2, 0
_02046DB4: .word 0x02141910
_02046DB8: .word 0x04001000
_02046DBC: .word 0xFFFFE0FF
	thumb_func_end sub_02046D84

	thumb_func_start sub_02046DC0
sub_02046DC0: ; 0x02046DC0
	ldr r1, _02046DD4 ; =0x02141910
	ldr r3, _02046DD8 ; =0x04001000
	str r0, [r1]
	ldr r2, [r3]
	ldr r1, _02046DDC ; =0xFFFFE0FF
	lsl r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_02046DD4: .word 0x02141910
_02046DD8: .word 0x04001000
_02046DDC: .word 0xFFFFE0FF
	thumb_func_end sub_02046DC0

	thumb_func_start sub_02046DE0
sub_02046DE0: ; 0x02046DE0
	push {r3, lr}
	bl sub_020748D4
	ldr r2, _02046DF4 ; =0x04001000
	mov r0, #1
	ldr r1, [r2]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_02046DF4: .word 0x04001000
	thumb_func_end sub_02046DE0

	thumb_func_start sub_02046DF8
sub_02046DF8: ; 0x02046DF8
	ldr r3, _02046E08 ; =0x04000304
	ldr r1, _02046E0C ; =0xFFFF7FFF
	ldrh r2, [r3]
	lsl r0, r0, #0xf
	and r1, r2
	orr r0, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_02046E08: .word 0x04000304
_02046E0C: .word 0xFFFF7FFF
	thumb_func_end sub_02046DF8

	thumb_func_start sub_02046E10
sub_02046E10: ; 0x02046E10
	ldr r0, _02046E18 ; =0x02141910
	ldr r0, [r0, #4]
	bx lr
	nop
_02046E18: .word 0x02141910
	thumb_func_end sub_02046E10

	thumb_func_start sub_02046E1C
sub_02046E1C: ; 0x02046E1C
	ldr r0, _02046E24 ; =0x02141910
	ldr r0, [r0]
	bx lr
	nop
_02046E24: .word 0x02141910
	thumb_func_end sub_02046E1C

	thumb_func_start sub_02046E28
sub_02046E28: ; 0x02046E28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r3, [sp, #4]
	mov r0, #0x61
	str r0, [sp]
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, [sp, #4]
	ldr r3, _02046E70 ; =0x0209AEB8
	mov r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	lsl r0, r5, #3
	strh r0, [r4, #4]
	lsl r0, r6, #3
	strh r0, [r4, #6]
	add r1, r5, #0
	mul r1, r6
	strh r7, [r4, #8]
	mov r0, #0x67
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _02046E70 ; =0x0209AEB8
	mul r1, r7
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #0xa]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02046E70: .word 0x0209AEB8
	thumb_func_end sub_02046E28

	thumb_func_start sub_02046E74
sub_02046E74: ; 0x02046E74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x7b
	str r0, [sp]
	add r0, sp, #0x18
	add r7, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	ldrh r0, [r0]
	ldr r3, _02046EA4 ; =0x0209AEB8
	mov r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	lsl r1, r4, #3
	strh r1, [r0, #4]
	lsl r1, r6, #3
	strh r1, [r0, #6]
	str r5, [r0]
	strh r7, [r0, #8]
	mov r1, #1
	strh r1, [r0, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02046EA4: .word 0x0209AEB8
	thumb_func_end sub_02046E74

	thumb_func_start sub_02046EA8
sub_02046EA8: ; 0x02046EA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x94
	str r0, [sp]
	add r0, sp, #0x18
	add r7, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	ldrh r0, [r0]
	ldr r3, _02046ED8 ; =0x0209AEB8
	mov r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	lsl r1, r4, #3
	strh r1, [r0, #4]
	lsl r1, r6, #3
	strh r1, [r0, #6]
	str r5, [r0]
	strh r7, [r0, #8]
	mov r1, #2
	strh r1, [r0, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02046ED8: .word 0x0209AEB8
	thumb_func_end sub_02046EA8

	thumb_func_start sub_02046EDC
sub_02046EDC: ; 0x02046EDC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _02046EEC
	ldr r0, [r4]
	bl sub_0203A24C
_02046EEC:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_02046EDC

	thumb_func_start sub_02046EF4
sub_02046EF4: ; 0x02046EF4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_02046EF4

	thumb_func_start sub_02046EF8
sub_02046EF8: ; 0x02046EF8
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_02046EF8

	thumb_func_start sub_02046EFC
sub_02046EFC: ; 0x02046EFC
	ldrh r0, [r0, #6]
	bx lr
	thumb_func_end sub_02046EFC

	thumb_func_start sub_02046F00
sub_02046F00: ; 0x02046F00
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #6]
	lsr r2, r2, #3
	add r3, r2, #0
	mul r3, r0
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	mul r0, r1
	bx lr
	thumb_func_end sub_02046F00

	thumb_func_start sub_02046F18
sub_02046F18: ; 0x02046F18
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02046F00
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02046F00
	cmp r0, r6
	bhs _02046F30
	add r6, r0, #0
_02046F30:
	ldr r0, [r5]
	ldr r1, [r4]
	add r2, r6, #0
	blx sub_0207866C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02046F18

	thumb_func_start sub_02046F3C
sub_02046F3C: ; 0x02046F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _02046FA0 ; =0x0000010A
	add r5, r3, #0
	add r7, r1, #0
	str r2, [sp, #4]
	str r0, [sp]
	ldr r3, _02046FA4 ; =0x0209AEB8
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r6, #0
	ldr r6, _02046FA8 ; =0x00007FFF
	add r3, r5, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #4]
	add r1, r7, #0
	lsr r3, r3, #0x10
	bl sub_0204B4E4
	add r1, sp, #8
	add r6, r0, #0
	bl sub_020602A8
	cmp r0, #0
	bne _02046F88
	bl sub_0207C774
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02046F88:
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	bl sub_02046FAC
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02046FA0: .word 0x0000010A
_02046FA4: .word 0x0209AEB8
_02046FA8: .word 0x00007FFF
	thumb_func_end sub_02046F3C

	thumb_func_start sub_02046FAC
sub_02046FAC: ; 0x02046FAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #2]
	ldr r3, _02046FF8 ; =0x0209AEB8
	mov r6, #0
	lsl r0, r0, #3
	strh r0, [r5, #4]
	ldrh r0, [r4]
	lsl r0, r0, #3
	strh r0, [r5, #6]
	ldr r0, _02046FFC ; =0x00000141
	str r0, [sp]
	add r0, r2, #0
	ldr r1, [r4, #0x10]
	mov r2, #0
	bl sub_0203A1FC
	strh r6, [r5, #0xa]
	str r0, [r5]
	ldr r0, [r4, #4]
	cmp r0, #3
	beq _02046FE2
	cmp r0, #4
	beq _02046FE6
	b _02046FEA
_02046FE2:
	mov r0, #0x20
	b _02046FE8
_02046FE6:
	mov r0, #0x40
_02046FE8:
	strh r0, [r5, #8]
_02046FEA:
	ldr r0, [r4, #0x14]
	ldr r1, [r5]
	ldr r2, [r4, #0x10]
	blx sub_0207866C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02046FF8: .word 0x0209AEB8
_02046FFC: .word 0x00000141
	thumb_func_end sub_02046FAC

	thumb_func_start sub_02047000
sub_02047000: ; 0x02047000
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_02047000

	thumb_func_start sub_02047008
sub_02047008: ; 0x02047008
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	str r2, [sp, #0x14]
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	ldr r6, [sp, #0x30]
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x40]
	ldr r7, [sp, #0x34]
	str r4, [sp, #0x40]
	ldrh r4, [r0, #8]
	ldrh r5, [r1, #8]
	mov ip, r4
	cmp r4, r5
	bne _020470C8
	ldrh r4, [r1, #0xa]
	cmp r4, #2
	beq _02047062
	mov r4, ip
	cmp r4, #0x20
	str r6, [sp]
	bne _0204704C
	ldr r4, [sp, #0x38]
	str r7, [sp, #4]
	str r4, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x40]
	str r4, [sp, #0x10]
	bl sub_02047168
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0204704C:
	ldr r4, [sp, #0x38]
	str r7, [sp, #4]
	str r4, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x40]
	str r4, [sp, #0x10]
	bl sub_020473D0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02047062:
	mov r2, ip
	cmp r2, #0x20
	bne _0204709A
	lsl r2, r6, #0x10
	asr r2, r2, #0x10
	str r2, [sp]
	lsl r2, r7, #0x10
	asr r2, r2, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x38]
	lsl r3, r3, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #8]
	ldr r2, [sp, #0x3c]
	lsr r3, r3, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204783C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0204709A:
	lsl r2, r6, #0x10
	asr r2, r2, #0x10
	str r2, [sp]
	lsl r2, r7, #0x10
	asr r2, r2, #0x10
	str r2, [sp, #4]
	ldr r2, [sp, #0x38]
	lsl r3, r3, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #8]
	ldr r2, [sp, #0x3c]
	lsr r3, r3, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x14]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_02047AD8
_020470C8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02047008

	thumb_func_start sub_020470CC
sub_020470CC: ; 0x020470CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x30]
	str r4, [sp, #8]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0xc]
	add r4, sp, #0x28
	ldrh r5, [r4, #0x10]
	str r5, [sp, #0x10]
	ldrh r4, [r4, #0x14]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x14]
	bl sub_020475EC
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020470CC

	thumb_func_start sub_020470F8
sub_020470F8: ; 0x020470F8
	push {r4, r5, r6, lr}
	sub sp, #8
	ldrh r6, [r0, #0xa]
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	cmp r6, #2
	ldrh r6, [r0, #8]
	beq _02047122
	cmp r6, #0x20
	str r5, [sp]
	bne _02047118
	str r4, [sp, #4]
	bl sub_02047CD4
	add sp, #8
	pop {r4, r5, r6, pc}
_02047118:
	str r4, [sp, #4]
	bl sub_02047D94
	add sp, #8
	pop {r4, r5, r6, pc}
_02047122:
	cmp r6, #0x20
	str r5, [sp]
	bne _02047132
	str r4, [sp, #4]
	bl sub_02047E28
	add sp, #8
	pop {r4, r5, r6, pc}
_02047132:
	str r4, [sp, #4]
	bl sub_02047F20
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020470F8

	thumb_func_start sub_0204713C
sub_0204713C: ; 0x0204713C
	push {r4, lr}
	add r2, r0, #0
	ldrh r3, [r2, #8]
	cmp r3, #0x20
	bne _02047152
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_02047152:
	ldrh r4, [r2, #4]
	ldr r0, [r2]
	ldrh r2, [r2, #6]
	lsr r4, r4, #3
	lsr r2, r2, #3
	mul r2, r4
	mul r2, r3
	blx sub_020787A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204713C

	thumb_func_start sub_02047168
sub_02047168: ; 0x02047168
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	ldr r0, [sp, #0x60]
	str r2, [sp, #8]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x64]
	ldr r2, [sp]
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x68]
	ldrh r4, [r2, #4]
	str r1, [sp, #4]
	ldr r1, [sp, #0x6c]
	add r2, r0, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	cmp r2, r4
	bls _02047190
	add r0, r4, #0
_02047190:
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x60]
	ldrh r2, [r2, #4]
	cmp r3, r2
	bge _020471A0
	neg r5, r0
	cmp r3, r5
	bgt _020471A4
_020471A0:
	mov r0, #0
	b _02047206
_020471A4:
	ldr r3, [sp]
	ldrh r5, [r3, #6]
	ldr r3, [sp, #0x6c]
	cmp r3, r5
	bls _020471B0
	add r1, r5, #0
_020471B0:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0x64]
	ldrh r3, [r3, #6]
	cmp r5, r3
	bge _020471C0
	neg r6, r1
	cmp r5, r6
	bgt _020471C2
_020471C0:
	b _020471A0
_020471C2:
	ldr r5, [sp, #0x60]
	cmp r5, #0
	bge _020471D8
	add r2, r5, #0
	ldr r5, [sp, #8]
	add r0, r0, r2
	sub r2, r5, r2
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0x60]
	b _020471E2
_020471D8:
	add r5, r5, r0
	cmp r5, r2
	bls _020471E2
	sub r2, r5, r2
	sub r0, r0, r2
_020471E2:
	ldr r2, [sp, #0x64]
	cmp r2, #0
	bge _020471F6
	ldr r3, [sp, #0xc]
	add r1, r1, r2
	sub r2, r3, r2
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x64]
	b _02047200
_020471F6:
	add r2, r2, r1
	cmp r2, r3
	bls _02047200
	sub r2, r2, r3
	sub r1, r1, r2
_02047200:
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	mov r0, #1
_02047206:
	cmp r0, #0
	bne _0204720C
	b _020473C4
_0204720C:
	mov r1, #7
	add r0, r4, #0
	and r0, r1
	add r0, r4, r0
	asr r0, r0, #3
	str r0, [sp, #0x38]
	ldr r0, [sp, #4]
	ldrh r2, [r0, #4]
	add r0, r2, #0
	and r0, r1
	add r0, r2, r0
	asr r0, r0, #3
	str r0, [sp, #0x34]
	add r0, sp, #0x60
	ldrh r0, [r0, #0x10]
	ldr r1, _020473C8 ; =0x0000FFFF
	str r0, [sp, #0x2c]
	cmp r0, r1
	bne _020472FC
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	bhi _0204723E
	b _020473C4
_0204723E:
	ldr r0, [sp, #0x68]
	mov r2, #0
	ldr r3, [sp, #0x60]
	ldr r4, [sp, #8]
	cmp r0, #0
	bls _020472DE
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x34]
	lsl r1, r0, #2
	ldr r0, _020473CC ; =0x00003FE0
	add r5, r1, #0
	and r5, r0
	ldr r0, [sp, #0x38]
	mul r0, r5
	str r0, [sp, #0x1c]
	mov r0, #0x1c
	and r1, r0
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x64]
	lsl r5, r1, #2
	ldr r1, _020473CC ; =0x00003FE0
	and r0, r5
	and r1, r5
	mul r6, r1
	str r6, [sp, #0x14]
	str r0, [sp, #0x40]
_02047272:
	ldr r0, [sp, #4]
	asr r1, r3, #1
	ldr r5, [r0]
	mov r0, #3
	and r0, r1
	add r5, r5, r0
	ldr r0, _020473CC ; =0x00003FE0
	lsl r1, r3, #2
	and r0, r1
	add r1, r5, r0
	ldr r5, [sp]
	asr r6, r4, #1
	ldr r7, [r5]
	mov r5, #3
	and r5, r6
	str r5, [sp, #0x3c]
	ldr r5, _020473CC ; =0x00003FE0
	lsl r6, r4, #2
	and r6, r5
	ldr r5, [sp, #0x3c]
	ldr r0, [sp, #0x14]
	add r5, r7, r5
	add r6, r6, r5
	ldr r5, [sp, #0x1c]
	add r1, r1, r0
	add r6, r5, r6
	ldr r5, [sp, #0x18]
	lsl r0, r3, #0x1f
	ldrb r6, [r5, r6]
	lsl r5, r4, #0x1f
	lsr r5, r5, #0x1d
	asr r6, r5
	mov r5, #0xf
	and r5, r6
	add r6, r5, #0
	ldr r5, [sp, #0x40]
	lsr r0, r0, #0x1d
	ldrb r5, [r1, r5]
	lsl r6, r0
	mov lr, r5
	mov r5, #0xf0
	asr r5, r0
	mov r0, lr
	and r0, r5
	add r5, r6, #0
	orr r5, r0
	ldr r0, [sp, #0x40]
	add r2, r2, #1
	strb r5, [r1, r0]
	ldr r0, [sp, #0x68]
	add r4, r4, #1
	add r3, r3, #1
	cmp r2, r0
	blo _02047272
_020472DE:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x6c]
	cmp r1, r0
	blo _0204723E
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_020472FC:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	bls _020473C4
_02047306:
	ldr r0, [sp, #0x68]
	mov r1, #0
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #8]
	cmp r0, #0
	bls _020473AA
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #0x34]
	lsl r4, r0, #2
	ldr r0, _020473CC ; =0x00003FE0
	add r5, r4, #0
	and r5, r0
	ldr r0, [sp, #0x38]
	mul r0, r5
	str r0, [sp, #0x28]
	mov r0, #0x1c
	and r4, r0
	str r4, [sp, #0x24]
	ldr r4, [sp, #0x64]
	lsl r5, r4, #2
	ldr r4, _020473CC ; =0x00003FE0
	and r0, r5
	and r4, r5
	mul r6, r4
	str r6, [sp, #0x20]
	str r0, [sp, #0x44]
_0204733A:
	ldr r0, [sp, #4]
	asr r4, r2, #1
	ldr r5, [r0]
	mov r0, #3
	and r0, r4
	add r5, r5, r0
	ldr r0, _020473CC ; =0x00003FE0
	lsl r4, r2, #2
	and r0, r4
	add r4, r5, r0
	ldr r0, [sp, #0x20]
	asr r5, r3, #1
	add r0, r4, r0
	ldr r4, [sp]
	add r7, r5, #0
	ldr r6, [r4]
	mov r4, #3
	and r7, r4
	ldr r4, _020473CC ; =0x00003FE0
	lsl r5, r3, #2
	and r4, r5
	add r5, r6, r7
	add r5, r4, r5
	ldr r4, [sp, #0x28]
	add r5, r4, r5
	ldr r4, [sp, #0x24]
	ldrb r5, [r4, r5]
	lsl r4, r3, #0x1f
	lsr r4, r4, #0x1d
	asr r5, r4
	mov r4, #0xf
	and r5, r4
	ldr r4, [sp, #0x2c]
	cmp r5, r4
	beq _0204739E
	add r6, r5, #0
	ldr r5, [sp, #0x44]
	lsl r4, r2, #0x1f
	ldrb r5, [r0, r5]
	lsr r4, r4, #0x1d
	lsl r6, r4
	mov ip, r5
	mov r5, #0xf0
	asr r5, r4
	mov r4, ip
	and r4, r5
	add r5, r6, #0
	orr r5, r4
	ldr r4, [sp, #0x44]
	strb r5, [r0, r4]
_0204739E:
	ldr r0, [sp, #0x68]
	add r1, r1, #1
	add r3, r3, #1
	add r2, r2, #1
	cmp r1, r0
	blo _0204733A
_020473AA:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x6c]
	cmp r1, r0
	blo _02047306
_020473C4:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020473C8: .word 0x0000FFFF
_020473CC: .word 0x00003FE0
	thumb_func_end sub_02047168

	thumb_func_start sub_020473D0
sub_020473D0: ; 0x020473D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	ldr r0, [sp, #0x50]
	str r2, [sp, #8]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	ldr r2, [sp]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x58]
	ldrh r4, [r2, #4]
	str r1, [sp, #4]
	ldr r1, [sp, #0x5c]
	add r2, r0, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x58]
	str r1, [sp, #0x5c]
	cmp r2, r4
	bls _020473F8
	add r0, r4, #0
_020473F8:
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x50]
	ldrh r2, [r2, #4]
	cmp r3, r2
	bge _02047408
	neg r5, r0
	cmp r3, r5
	bgt _0204740C
_02047408:
	mov r0, #0
	b _0204746E
_0204740C:
	ldr r3, [sp]
	ldrh r5, [r3, #6]
	ldr r3, [sp, #0x5c]
	cmp r3, r5
	bls _02047418
	add r1, r5, #0
_02047418:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0x54]
	ldrh r3, [r3, #6]
	cmp r5, r3
	bge _02047428
	neg r6, r1
	cmp r5, r6
	bgt _0204742A
_02047428:
	b _02047408
_0204742A:
	ldr r5, [sp, #0x50]
	cmp r5, #0
	bge _02047440
	add r2, r5, #0
	ldr r5, [sp, #8]
	add r0, r0, r2
	sub r2, r5, r2
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0x50]
	b _0204744A
_02047440:
	add r5, r5, r0
	cmp r5, r2
	bls _0204744A
	sub r2, r5, r2
	sub r0, r0, r2
_0204744A:
	ldr r2, [sp, #0x54]
	cmp r2, #0
	bge _0204745E
	ldr r3, [sp, #0xc]
	add r1, r1, r2
	sub r2, r3, r2
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x54]
	b _02047468
_0204745E:
	add r2, r2, r1
	cmp r2, r3
	bls _02047468
	sub r2, r2, r3
	sub r1, r1, r2
_02047468:
	str r0, [sp, #0x58]
	str r1, [sp, #0x5c]
	mov r0, #1
_0204746E:
	cmp r0, #0
	bne _02047474
	b _020475E0
_02047474:
	mov r1, #7
	add r0, r4, #0
	and r0, r1
	add r0, r4, r0
	asr r0, r0, #3
	mov ip, r0
	ldr r0, [sp, #4]
	ldrh r2, [r0, #4]
	add r0, r2, #0
	and r0, r1
	add r0, r2, r0
	asr r0, r0, #3
	mov lr, r0
	add r0, sp, #0x50
	ldrh r0, [r0, #0x10]
	ldr r1, _020475E4 ; =0x0000FFFF
	str r0, [sp, #0x34]
	cmp r0, r1
	bne _0204753E
	mov r0, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bhi _020474A6
	b _020475E0
_020474A6:
	ldr r0, [sp, #0x58]
	mov r2, #0
	ldr r3, [sp, #0x50]
	ldr r4, [sp, #8]
	cmp r0, #0
	bls _02047520
	ldr r0, [sp, #0xc]
	mov r1, ip
	lsl r5, r0, #3
	ldr r0, _020475E8 ; =0x00007FC0
	mov r6, #0x38
	and r0, r5
	mul r1, r0
	add r0, r5, #0
	and r0, r6
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x20]
	lsl r5, r0, #3
	ldr r0, _020475E8 ; =0x00007FC0
	mov r1, lr
	and r0, r5
	mul r1, r0
	add r0, r5, #0
	and r0, r6
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
_020474DC:
	ldr r0, [sp]
	add r6, r4, #0
	ldr r5, [r0]
	mov r0, #7
	and r6, r0
	lsl r1, r4, #3
	ldr r0, _020475E8 ; =0x00007FC0
	add r2, r2, #1
	and r0, r1
	add r1, r5, r6
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r6, r3, #0
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	ldrb r7, [r0, r1]
	ldr r0, [sp, #4]
	lsl r1, r3, #3
	ldr r5, [r0]
	mov r0, #7
	and r6, r0
	ldr r0, _020475E8 ; =0x00007FC0
	add r3, r3, #1
	and r0, r1
	add r1, r5, r6
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	strb r7, [r0, r1]
	ldr r0, [sp, #0x58]
	cmp r2, r0
	blo _020474DC
_02047520:
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x54]
	add r0, r0, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x5c]
	cmp r1, r0
	blo _020474A6
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0204753E:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bls _020475E0
_02047548:
	ldr r0, [sp, #0x58]
	mov r2, #0
	ldr r3, [sp, #0x50]
	ldr r4, [sp, #8]
	cmp r0, #0
	bls _020475C6
	ldr r0, [sp, #0xc]
	mov r1, ip
	lsl r5, r0, #3
	ldr r0, _020475E8 ; =0x00007FC0
	mov r6, #0x38
	and r0, r5
	mul r1, r0
	add r0, r5, #0
	and r0, r6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x30]
	lsl r5, r0, #3
	ldr r0, _020475E8 ; =0x00007FC0
	mov r1, lr
	and r0, r5
	mul r1, r0
	add r0, r5, #0
	and r0, r6
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_0204757E:
	ldr r0, [sp, #4]
	mov r1, #7
	ldr r0, [r0]
	and r1, r3
	add r5, r0, r1
	ldr r0, _020475E8 ; =0x00007FC0
	lsl r1, r3, #3
	and r0, r1
	add r1, r5, r0
	ldr r0, [sp, #0x28]
	add r6, r4, #0
	add r7, r1, r0
	ldr r0, [sp]
	lsl r1, r4, #3
	ldr r5, [r0]
	mov r0, #7
	and r6, r0
	ldr r0, _020475E8 ; =0x00007FC0
	and r0, r1
	add r1, r5, r6
	add r1, r0, r1
	ldr r0, [sp, #0x30]
	add r1, r0, r1
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	beq _020475BA
	ldr r1, [sp, #0x24]
	strb r0, [r7, r1]
_020475BA:
	ldr r0, [sp, #0x58]
	add r2, r2, #1
	add r4, r4, #1
	add r3, r3, #1
	cmp r2, r0
	blo _0204757E
_020475C6:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x54]
	add r0, r0, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x5c]
	cmp r1, r0
	blo _02047548
_020475E0:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020475E4: .word 0x0000FFFF
_020475E8: .word 0x00007FC0
	thumb_func_end sub_020473D0

	thumb_func_start sub_020475EC
sub_020475EC: ; 0x020475EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	ldr r0, [sp, #0x60]
	str r2, [sp, #8]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x64]
	ldr r2, [sp]
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x68]
	ldrh r4, [r2, #4]
	str r1, [sp, #4]
	ldr r1, [sp, #0x6c]
	add r2, r0, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	cmp r2, r4
	bls _02047614
	add r0, r4, #0
_02047614:
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x60]
	ldrh r2, [r2, #4]
	cmp r3, r2
	bge _02047624
	neg r5, r0
	cmp r3, r5
	bgt _02047628
_02047624:
	mov r0, #0
	b _0204768A
_02047628:
	ldr r3, [sp]
	ldrh r5, [r3, #6]
	ldr r3, [sp, #0x6c]
	cmp r3, r5
	bls _02047634
	add r1, r5, #0
_02047634:
	ldr r3, [sp, #4]
	ldr r5, [sp, #0x64]
	ldrh r3, [r3, #6]
	cmp r5, r3
	bge _02047644
	neg r6, r1
	cmp r5, r6
	bgt _02047646
_02047644:
	b _02047624
_02047646:
	ldr r5, [sp, #0x60]
	cmp r5, #0
	bge _0204765C
	add r2, r5, #0
	ldr r5, [sp, #8]
	add r0, r0, r2
	sub r2, r5, r2
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0x60]
	b _02047666
_0204765C:
	add r5, r5, r0
	cmp r5, r2
	bls _02047666
	sub r2, r5, r2
	sub r0, r0, r2
_02047666:
	ldr r2, [sp, #0x64]
	cmp r2, #0
	bge _0204767A
	ldr r3, [sp, #0xc]
	add r1, r1, r2
	sub r2, r3, r2
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x64]
	b _02047684
_0204767A:
	add r2, r2, r1
	cmp r2, r3
	bls _02047684
	sub r2, r2, r3
	sub r1, r1, r2
_02047684:
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	mov r0, #1
_0204768A:
	cmp r0, #0
	bne _02047690
	b _02047830
_02047690:
	mov r1, #7
	add r0, r4, #0
	and r0, r1
	add r0, r4, r0
	asr r0, r0, #3
	str r0, [sp, #0x44]
	ldr r0, [sp, #4]
	ldrh r2, [r0, #4]
	add r0, r2, #0
	and r0, r1
	add r0, r2, r0
	add r1, sp, #0x60
	asr r0, r0, #3
	str r0, [sp, #0x40]
	ldrh r2, [r1, #0x10]
	ldr r0, _02047834 ; =0x0000FFFF
	cmp r2, r0
	bne _02047776
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	bhi _020476C0
	b _02047830
_020476C0:
	ldrb r0, [r1, #0x14]
	str r0, [sp, #0x24]
_020476C4:
	ldr r0, [sp, #0x68]
	mov r3, #0
	ldr r4, [sp, #0x60]
	ldr r5, [sp, #8]
	cmp r0, #0
	bls _02047758
	ldr r0, [sp, #0xc]
	ldr r1, _02047838 ; =0x00003FE0
	lsl r0, r0, #2
	add r2, r0, #0
	and r2, r1
	ldr r1, [sp, #0x44]
	mul r1, r2
	str r1, [sp, #0x20]
	mov r1, #0x1c
	and r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x64]
	ldr r1, _02047838 ; =0x00003FE0
	lsl r0, r0, #3
	lsl r1, r1, #1
	add r2, r0, #0
	and r2, r1
	ldr r1, [sp, #0x40]
	mul r1, r2
	str r1, [sp, #0x18]
	mov r1, #0x38
	and r0, r1
	str r0, [sp, #0x14]
	ldr r0, _02047838 ; =0x00003FE0
	lsl r0, r0, #1
	mov lr, r0
_02047704:
	ldr r0, [sp, #4]
	lsl r2, r4, #3
	ldr r1, [r0]
	mov r0, #7
	and r0, r4
	add r0, r1, r0
	mov r1, lr
	and r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	add r2, r1, r0
	ldr r0, [sp]
	asr r1, r5, #1
	ldr r7, [r0]
	add r6, r1, #0
	mov r0, #3
	and r6, r0
	ldr r0, _02047838 ; =0x00003FE0
	lsl r1, r5, #2
	and r0, r1
	add r1, r7, r6
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r1, [r0, r1]
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	beq _02047748
	ldr r1, [sp, #0x24]
	add r0, r0, r1
_02047748:
	ldr r1, [sp, #0x14]
	add r3, r3, #1
	strb r0, [r2, r1]
	ldr r0, [sp, #0x68]
	add r5, r5, #1
	add r4, r4, #1
	cmp r3, r0
	blo _02047704
_02047758:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x6c]
	cmp r1, r0
	blo _020476C4
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
_02047776:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	bls _02047830
	ldrb r0, [r1, #0x14]
	str r0, [sp, #0x38]
_02047784:
	ldr r0, [sp, #0x68]
	mov r3, #0
	ldr r4, [sp, #0x60]
	ldr r5, [sp, #8]
	cmp r0, #0
	bls _02047816
	ldr r0, [sp, #0xc]
	ldr r1, _02047838 ; =0x00003FE0
	lsl r0, r0, #2
	add r2, r0, #0
	and r2, r1
	ldr r1, [sp, #0x44]
	mul r1, r2
	str r1, [sp, #0x34]
	mov r1, #0x1c
	and r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x64]
	ldr r1, _02047838 ; =0x00003FE0
	lsl r0, r0, #3
	lsl r1, r1, #1
	add r2, r0, #0
	and r2, r1
	ldr r1, [sp, #0x40]
	mul r1, r2
	str r1, [sp, #0x2c]
	mov r1, #0x38
	and r0, r1
	str r0, [sp, #0x28]
	ldr r0, _02047838 ; =0x00003FE0
	lsl r0, r0, #1
	mov ip, r0
_020477C4:
	ldr r0, [sp, #4]
	lsl r2, r4, #3
	ldr r1, [r0]
	mov r0, #7
	and r0, r4
	add r0, r1, r0
	mov r1, ip
	and r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x2c]
	add r2, r1, r0
	lsl r0, r5, #0x1f
	lsr r7, r0, #0x1d
	asr r1, r5, #1
	mov r0, #3
	and r0, r1
	ldr r1, [sp]
	ldr r1, [r1]
	add r6, r1, r0
	ldr r0, _02047838 ; =0x00003FE0
	lsl r1, r5, #2
	and r0, r1
	add r1, r6, r0
	ldr r0, [sp, #0x34]
	add r1, r1, r0
	ldr r0, [sp, #0x30]
	ldrb r0, [r1, r0]
	mov r1, #0xf
	asr r0, r7
	and r1, r0
	beq _0204780A
	ldr r0, [sp, #0x38]
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	strb r1, [r2, r0]
_0204780A:
	ldr r0, [sp, #0x68]
	add r3, r3, #1
	add r5, r5, #1
	add r4, r4, #1
	cmp r3, r0
	blo _020477C4
_02047816:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x6c]
	cmp r1, r0
	blo _02047784
_02047830:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02047834: .word 0x0000FFFF
_02047838: .word 0x00003FE0
	thumb_func_end sub_020475EC

	thumb_func_start sub_0204783C
sub_0204783C: ; 0x0204783C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r2, [sp, #8]
	str r0, [sp]
	str r3, [sp, #0xc]
	add r2, sp, #0x60
	mov r0, #0
	ldrsh r0, [r2, r0]
	str r1, [sp, #4]
	ldrh r2, [r2, #8]
	str r0, [sp, #0x14]
	add r0, r1, #0
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x14]
	sub r3, r0, r1
	cmp r3, r2
	bge _02047864
	ldr r1, [sp, #8]
	add r1, r1, r3
	b _02047868
_02047864:
	ldr r1, [sp, #8]
	add r1, r2, r1
_02047868:
	mov ip, r1
	add r2, sp, #0x60
	mov r1, #4
	ldrsh r1, [r2, r1]
	ldrh r2, [r2, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [sp, #4]
	ldrh r3, [r1, #6]
	ldr r1, [sp, #0x10]
	sub r3, r3, r1
	cmp r3, r2
	bge _02047886
	ldr r1, [sp, #0xc]
	add r1, r1, r3
	b _0204788A
_02047886:
	ldr r1, [sp, #0xc]
	add r1, r2, r1
_0204788A:
	mov lr, r1
	ldr r1, [sp]
	mov r2, #7
	ldrh r3, [r1, #4]
	add r1, r3, #0
	and r1, r2
	add r1, r3, r1
	asr r1, r1, #3
	str r1, [sp, #0x40]
	add r1, r0, #0
	and r1, r2
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x3c]
	add r0, sp, #0x60
	ldrh r0, [r0, #0x10]
	ldr r1, _02047AD0 ; =0x0000FFFF
	str r0, [sp, #0x38]
	cmp r0, r1
	beq _020478B4
	b _020479BE
_020478B4:
	ldr r1, [sp, #0xc]
	mov r0, lr
	cmp r1, r0
	bge _020478C2
	mov r0, lr
	cmp r1, r0
	blt _020478C4
_020478C2:
	b _02047ACA
_020478C4:
	ldr r1, [sp, #8]
	mov r0, ip
	add r3, r1, #0
	ldr r2, [sp, #0x14]
	cmp r3, r0
	bge _020479A6
	mov r0, ip
	cmp r3, r0
	bge _020479A6
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #0x40]
	lsl r3, r0, #2
	ldr r0, _02047AD4 ; =0x00003FE0
	mov r5, #0x1c
	and r0, r3
	mul r4, r0
	add r0, r3, #0
	and r0, r5
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x24]
	lsl r3, r0, #2
	ldr r0, _02047AD4 ; =0x00003FE0
	ldr r4, [sp, #0x3c]
	and r0, r3
	mul r4, r0
	add r0, r3, #0
	and r0, r5
	str r4, [sp, #0x1c]
	str r0, [sp, #0x18]
_02047900:
	cmp r2, #0
	blt _0204799C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _0204799C
	ldr r0, [sp]
	asr r4, r1, #1
	mov r3, #3
	and r3, r4
	ldr r0, [r0]
	lsl r4, r1, #2
	add r0, r0, r3
	ldr r3, _02047AD4 ; =0x00003FE0
	and r3, r4
	add r3, r0, r3
	ldr r0, [sp, #0x24]
	asr r4, r2, #1
	add r0, r3, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #4]
	mov r3, #3
	and r3, r4
	ldr r0, [r0]
	lsl r4, r2, #2
	add r0, r0, r3
	ldr r3, _02047AD4 ; =0x00003FE0
	and r3, r4
	add r3, r0, r3
	ldr r0, [sp, #0x1c]
	add r3, r3, r0
	ldr r0, [sp, #0x18]
	add r3, r3, r0
	mov r0, #1
	tst r0, r3
	beq _0204794C
	sub r3, r3, #1
	mov r5, #1
	b _0204794E
_0204794C:
	mov r5, #0
_0204794E:
	ldrh r0, [r3]
	lsl r4, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r6, r4, #0x10
	lsr r7, r0, #0x10
	ldr r4, [sp, #0x20]
	ldr r0, [sp, #0x44]
	ldrb r4, [r0, r4]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1d
	asr r4, r0
	mov r0, #0xf
	and r4, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1d
	cmp r5, #0
	bne _02047988
	add r5, r4, #0
	mov r4, #0xf0
	asr r4, r0
	lsl r5, r0
	add r0, r7, #0
	and r0, r4
	lsl r6, r6, #8
	orr r0, r5
	orr r0, r6
	b _0204799A
_02047988:
	add r5, r4, #0
	mov r4, #0xf0
	asr r4, r0
	lsl r5, r0
	add r0, r6, #0
	and r0, r4
	orr r0, r5
	lsl r0, r0, #8
	orr r0, r7
_0204799A:
	strh r0, [r3]
_0204799C:
	add r1, r1, #1
	mov r0, ip
	add r2, r2, #1
	cmp r1, r0
	blt _02047900
_020479A6:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0x10]
	mov r0, lr
	cmp r1, r0
	blt _020478C4
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_020479BE:
	ldr r1, [sp, #0xc]
	mov r0, lr
	cmp r1, r0
	blt _020479C8
	b _02047ACA
_020479C8:
	mov r0, lr
	cmp r1, r0
	bge _02047ACA
_020479CE:
	ldr r1, [sp, #8]
	mov r0, ip
	add r3, r1, #0
	ldr r2, [sp, #0x14]
	cmp r3, r0
	bge _02047AB6
	mov r0, ip
	cmp r3, r0
	bge _02047AB6
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #0x40]
	lsl r3, r0, #2
	ldr r0, _02047AD4 ; =0x00003FE0
	mov r5, #0x1c
	and r0, r3
	mul r4, r0
	add r0, r3, #0
	and r0, r5
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x34]
	lsl r3, r0, #2
	ldr r0, _02047AD4 ; =0x00003FE0
	ldr r4, [sp, #0x3c]
	and r0, r3
	mul r4, r0
	add r0, r3, #0
	and r0, r5
	str r4, [sp, #0x2c]
	str r0, [sp, #0x28]
_02047A0A:
	cmp r2, #0
	blt _02047AAC
	ldr r0, [sp, #0x10]
	cmp r0, #0
	blt _02047AAC
	ldr r0, [sp]
	asr r4, r1, #1
	mov r3, #3
	and r3, r4
	ldr r0, [r0]
	lsl r4, r1, #2
	add r0, r0, r3
	ldr r3, _02047AD4 ; =0x00003FE0
	and r3, r4
	add r3, r0, r3
	ldr r0, [sp, #0x34]
	asr r4, r2, #1
	add r0, r3, r0
	str r0, [sp, #0x48]
	ldr r0, [sp, #4]
	mov r3, #3
	and r3, r4
	ldr r0, [r0]
	lsl r4, r2, #2
	add r0, r0, r3
	ldr r3, _02047AD4 ; =0x00003FE0
	and r3, r4
	add r3, r0, r3
	ldr r0, [sp, #0x2c]
	add r3, r3, r0
	ldr r0, [sp, #0x28]
	add r3, r3, r0
	mov r0, #1
	tst r0, r3
	beq _02047A56
	sub r3, r3, #1
	mov r5, #1
	b _02047A58
_02047A56:
	mov r5, #0
_02047A58:
	ldrh r0, [r3]
	lsl r4, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r6, r4, #0x10
	lsr r7, r0, #0x10
	ldr r4, [sp, #0x30]
	ldr r0, [sp, #0x48]
	ldrb r4, [r0, r4]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1d
	asr r4, r0
	mov r0, #0xf
	and r4, r0
	ldr r0, [sp, #0x38]
	cmp r4, r0
	beq _02047AAC
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1d
	cmp r5, #0
	bne _02047A98
	add r5, r4, #0
	mov r4, #0xf0
	asr r4, r0
	lsl r5, r0
	add r0, r7, #0
	and r0, r4
	lsl r6, r6, #8
	orr r0, r5
	orr r0, r6
	b _02047AAA
_02047A98:
	add r5, r4, #0
	mov r4, #0xf0
	asr r4, r0
	lsl r5, r0
	add r0, r6, #0
	and r0, r4
	orr r0, r5
	lsl r0, r0, #8
	orr r0, r7
_02047AAA:
	strh r0, [r3]
_02047AAC:
	add r1, r1, #1
	mov r0, ip
	add r2, r2, #1
	cmp r1, r0
	blt _02047A0A
_02047AB6:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0x10]
	mov r0, lr
	cmp r1, r0
	blt _020479CE
_02047ACA:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02047AD0: .word 0x0000FFFF
_02047AD4: .word 0x00003FE0
	thumb_func_end sub_0204783C

	thumb_func_start sub_02047AD8
sub_02047AD8: ; 0x02047AD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r2, [sp, #8]
	str r0, [sp]
	str r3, [sp, #0xc]
	add r2, sp, #0x50
	mov r0, #0
	ldrsh r0, [r2, r0]
	str r1, [sp, #4]
	ldrh r2, [r2, #8]
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x10]
	sub r3, r0, r1
	cmp r3, r2
	bge _02047B00
	ldr r1, [sp, #8]
	add r7, r1, r3
	b _02047B04
_02047B00:
	ldr r1, [sp, #8]
	add r7, r2, r1
_02047B04:
	add r2, sp, #0x50
	mov r1, #4
	ldrsh r6, [r2, r1]
	ldr r1, [sp, #4]
	ldrh r2, [r2, #0xc]
	ldrh r1, [r1, #6]
	sub r3, r1, r6
	cmp r3, r2
	bge _02047B1C
	ldr r1, [sp, #0xc]
	add r1, r1, r3
	b _02047B20
_02047B1C:
	ldr r1, [sp, #0xc]
	add r1, r2, r1
_02047B20:
	mov ip, r1
	ldr r1, [sp]
	mov r2, #7
	ldrh r3, [r1, #4]
	add r1, r3, #0
	and r1, r2
	add r1, r3, r1
	asr r1, r1, #3
	mov lr, r1
	add r1, r0, #0
	and r1, r2
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x34]
	add r0, sp, #0x50
	ldrh r0, [r0, #0x10]
	ldr r1, _02047CCC ; =0x0000FFFF
	str r0, [sp, #0x30]
	cmp r0, r1
	bne _02047C06
	ldr r1, [sp, #0xc]
	mov r0, ip
	cmp r1, r0
	bge _02047B56
	mov r0, ip
	cmp r1, r0
	blt _02047B58
_02047B56:
	b _02047CC6
_02047B58:
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	add r0, r3, #0
	cmp r0, r7
	bge _02047BF2
	cmp r0, r7
	bge _02047BF2
	ldr r0, [sp, #0xc]
	mov r1, lr
	lsl r2, r0, #3
	ldr r0, _02047CD0 ; =0x00007FC0
	mov r5, #0x38
	and r0, r2
	mul r1, r0
	add r0, r2, #0
	and r0, r5
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _02047CD0 ; =0x00007FC0
	lsl r2, r6, #3
	ldr r1, [sp, #0x34]
	and r0, r2
	mul r1, r0
	add r0, r2, #0
	and r0, r5
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
_02047B8E:
	cmp r4, #0
	blt _02047BEA
	cmp r6, #0
	blt _02047BEA
	ldr r0, [sp]
	mov r1, #7
	ldr r0, [r0]
	and r1, r3
	add r2, r0, r1
	ldr r0, _02047CD0 ; =0x00007FC0
	lsl r1, r3, #3
	and r0, r1
	add r1, r2, r0
	ldr r0, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	add r2, r1, r0
	ldr r0, [sp, #4]
	mov r1, #7
	ldr r0, [r0]
	and r1, r4
	add r5, r0, r1
	ldr r0, _02047CD0 ; =0x00007FC0
	lsl r1, r4, #3
	and r0, r1
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	add r1, r1, r0
	ldr r0, [sp, #0x38]
	add r0, r1, r0
	mov r1, #1
	tst r1, r0
	beq _02047BDC
	ldrb r1, [r2]
	sub r2, r2, #1
	sub r0, r0, #1
	lsl r1, r1, #8
	ldrb r2, [r2]
	b _02047BE2
_02047BDC:
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	lsl r2, r2, #8
_02047BE2:
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	strh r1, [r0]
_02047BEA:
	add r3, r3, #1
	add r4, r4, #1
	cmp r3, r7
	blt _02047B8E
_02047BF2:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, ip
	cmp r1, r0
	blt _02047B58
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_02047C06:
	ldr r1, [sp, #0xc]
	mov r0, ip
	cmp r1, r0
	bge _02047CC6
	mov r0, ip
	cmp r1, r0
	bge _02047CC6
_02047C14:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r2, #0
	cmp r0, r7
	bge _02047CB6
	cmp r0, r7
	bge _02047CB6
	ldr r0, [sp, #0xc]
	mov r1, lr
	lsl r4, r0, #3
	ldr r0, _02047CD0 ; =0x00007FC0
	mov r5, #0x38
	and r0, r4
	mul r1, r0
	add r0, r4, #0
	and r0, r5
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldr r0, _02047CD0 ; =0x00007FC0
	lsl r4, r6, #3
	ldr r1, [sp, #0x34]
	and r0, r4
	mul r1, r0
	add r0, r4, #0
	and r0, r5
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
_02047C4A:
	cmp r3, #0
	blt _02047CAE
	cmp r6, #0
	blt _02047CAE
	ldr r0, [sp]
	mov r1, #7
	ldr r0, [r0]
	and r1, r2
	add r4, r0, r1
	ldr r0, _02047CD0 ; =0x00007FC0
	lsl r1, r2, #3
	and r0, r1
	add r1, r4, r0
	ldr r0, [sp, #0x2c]
	mov r4, #7
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	and r4, r3
	add r0, r1, r0
	ldr r1, [sp, #4]
	ldr r1, [r1]
	add r5, r1, r4
	ldr r1, _02047CD0 ; =0x00007FC0
	lsl r4, r3, #3
	and r1, r4
	add r4, r5, r1
	ldr r1, [sp, #0x24]
	add r4, r4, r1
	ldr r1, [sp, #0x20]
	add r4, r4, r1
	mov r1, #1
	tst r1, r4
	beq _02047C9A
	ldrb r1, [r0]
	sub r0, r0, #1
	ldrb r0, [r0]
	lsl r5, r1, #8
	sub r4, r4, #1
	orr r0, r5
	b _02047CA2
_02047C9A:
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #8
	orr r0, r1
_02047CA2:
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp, #0x30]
	cmp r1, r0
	beq _02047CAE
	strh r5, [r4]
_02047CAE:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r7
	blt _02047C4A
_02047CB6:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, ip
	cmp r1, r0
	blt _02047C14
_02047CC6:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02047CCC: .word 0x0000FFFF
_02047CD0: .word 0x00007FC0
	thumb_func_end sub_02047AD8

	thumb_func_start sub_02047CD4
sub_02047CD4: ; 0x02047CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r5, r2, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	add r6, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r6, r0
	ble _02047CF0
	add r6, r0, #0
_02047CF0:
	add r1, sp, #0x28
	ldrh r1, [r1]
	add r1, r5, r1
	mov ip, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, ip
	cmp r1, r2
	ble _02047D04
	mov ip, r2
_02047D04:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	mov lr, r0
	mov r0, ip
	cmp r5, r0
	bge _02047D8C
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #4
	str r0, [sp, #8]
_02047D1A:
	ldr r1, [sp, #4]
	add r0, r1, #0
	cmp r0, r6
	bge _02047D84
	ldr r0, _02047D90 ; =0x00003FE0
	lsl r3, r5, #2
	and r0, r3
	mov r2, lr
	mul r2, r0
	str r2, [sp, #0xc]
	mov r0, #0x1c
	add r2, r3, #0
	and r2, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02047D3A:
	cmp r1, #0
	blt _02047D7E
	cmp r5, #0
	blt _02047D7E
	ldr r0, [sp]
	asr r3, r1, #1
	ldr r4, [r0]
	mov r0, #3
	and r0, r3
	add r4, r4, r0
	ldr r0, _02047D90 ; =0x00003FE0
	lsl r3, r1, #2
	and r0, r3
	add r3, r4, r0
	ldr r0, [sp, #0xc]
	add r0, r3, r0
	mov r3, #1
	tst r3, r1
	ldrb r4, [r0, r2]
	beq _02047D70
	mov r3, #0xf
	and r3, r4
	strb r3, [r0, r2]
	ldrb r3, [r0, r2]
	orr r3, r7
	strb r3, [r0, r2]
	b _02047D7E
_02047D70:
	mov r3, #0xf0
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x2c]
	orr r3, r4
	strb r3, [r0, r2]
_02047D7E:
	add r1, r1, #1
	cmp r1, r6
	blt _02047D3A
_02047D84:
	add r5, r5, #1
	mov r0, ip
	cmp r5, r0
	blt _02047D1A
_02047D8C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02047D90: .word 0x00003FE0
	thumb_func_end sub_02047CD4

	thumb_func_start sub_02047D94
sub_02047D94: ; 0x02047D94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r5, r2, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	add r6, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r6, r0
	ble _02047DB0
	add r6, r0, #0
_02047DB0:
	add r1, sp, #0x20
	ldrh r1, [r1]
	add r1, r5, r1
	mov ip, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, ip
	cmp r1, r2
	ble _02047DC4
	mov ip, r2
_02047DC4:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	mov lr, r0
	mov r0, ip
	cmp r5, r0
	bge _02047E20
_02047DD4:
	ldr r4, [sp, #4]
	add r0, r4, #0
	cmp r0, r6
	bge _02047E18
	ldr r0, _02047E24 ; =0x00007FC0
	lsl r2, r5, #3
	and r0, r2
	mov r1, lr
	mul r1, r0
	mov r0, #0x38
	add r7, r2, #0
	str r1, [sp, #8]
	and r7, r0
_02047DEE:
	cmp r4, #0
	blt _02047E12
	cmp r5, #0
	blt _02047E12
	ldr r0, [sp]
	add r2, r4, #0
	ldr r3, [r0]
	mov r0, #7
	and r2, r0
	ldr r0, _02047E24 ; =0x00007FC0
	lsl r1, r4, #3
	and r0, r1
	add r1, r3, r2
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, [sp, #0x24]
	strb r0, [r7, r1]
_02047E12:
	add r4, r4, #1
	cmp r4, r6
	blt _02047DEE
_02047E18:
	add r5, r5, #1
	mov r0, ip
	cmp r5, r0
	blt _02047DD4
_02047E20:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02047E24: .word 0x00007FC0
	thumb_func_end sub_02047D94

	thumb_func_start sub_02047E28
sub_02047E28: ; 0x02047E28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r2, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r3
	mov ip, r0
	ldr r0, [sp]
	mov r1, ip
	ldrh r0, [r0, #4]
	cmp r1, r0
	ble _02047E44
	mov ip, r0
_02047E44:
	add r1, sp, #0x30
	ldrh r2, [r1]
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	mov lr, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, lr
	cmp r1, r2
	ble _02047E5A
	mov lr, r2
_02047E5A:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, lr
	cmp r0, r1
	bge _02047F18
	add r0, sp, #0x30
	ldrb r7, [r0, #4]
_02047E70:
	ldr r2, [sp, #4]
	mov r0, ip
	add r1, r2, #0
	cmp r1, r0
	bge _02047F0A
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, _02047F1C ; =0x00003FE0
	and r0, r1
	mul r3, r0
	mov r0, #0x1c
	and r0, r1
	str r3, [sp, #0xc]
	str r0, [sp, #8]
_02047E8E:
	cmp r2, #0
	blt _02047F02
	ldr r0, [sp, #0x14]
	cmp r0, #0
	blt _02047F02
	ldr r0, [sp]
	asr r3, r2, #1
	mov r1, #3
	and r1, r3
	ldr r0, [r0]
	lsl r3, r2, #2
	add r0, r0, r1
	ldr r1, _02047F1C ; =0x00003FE0
	and r1, r3
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #8]
	add r3, r1, r0
	mov r0, #1
	tst r0, r3
	beq _02047EC0
	sub r3, r3, #1
	mov r4, #1
	b _02047EC2
_02047EC0:
	mov r4, #0
_02047EC2:
	ldrh r0, [r3]
	lsl r1, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	lsl r0, r2, #0x1f
	lsr r1, r1, #0x10
	lsr r0, r0, #0x1d
	cmp r4, #0
	bne _02047EEE
	lsl r6, r1, #8
	mov r1, #0xf0
	asr r1, r0
	add r4, r5, #0
	and r4, r1
	add r1, r7, #0
	lsl r1, r0
	add r0, r4, #0
	orr r0, r1
	orr r0, r6
	b _02047F00
_02047EEE:
	mov r4, #0xf0
	asr r4, r0
	and r4, r1
	add r1, r7, #0
	lsl r1, r0
	add r0, r4, #0
	orr r0, r1
	lsl r0, r0, #8
	orr r0, r5
_02047F00:
	strh r0, [r3]
_02047F02:
	add r2, r2, #1
	mov r0, ip
	cmp r2, r0
	blt _02047E8E
_02047F0A:
	ldr r0, [sp, #0x14]
	mov r1, lr
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blt _02047E70
_02047F18:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02047F1C: .word 0x00003FE0
	thumb_func_end sub_02047E28

	thumb_func_start sub_02047F20
sub_02047F20: ; 0x02047F20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r5, r2, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	add r6, r0, r3
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r6, r0
	ble _02047F3C
	add r6, r0, #0
_02047F3C:
	add r1, sp, #0x20
	ldrh r1, [r1]
	add r1, r5, r1
	mov ip, r1
	ldr r1, [sp]
	ldrh r2, [r1, #6]
	mov r1, ip
	cmp r1, r2
	ble _02047F50
	mov ip, r2
_02047F50:
	mov r1, #7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #3
	mov lr, r0
	mov r0, ip
	cmp r5, r0
	bge _02047FAC
_02047F60:
	ldr r4, [sp, #4]
	add r0, r4, #0
	cmp r0, r6
	bge _02047FA4
	ldr r0, _02047FB0 ; =0x00007FC0
	lsl r2, r5, #3
	and r0, r2
	mov r1, lr
	mul r1, r0
	mov r0, #0x38
	add r7, r2, #0
	str r1, [sp, #8]
	and r7, r0
_02047F7A:
	cmp r4, #0
	blt _02047F9E
	cmp r5, #0
	blt _02047F9E
	ldr r0, [sp]
	add r2, r4, #0
	ldr r3, [r0]
	mov r0, #7
	and r2, r0
	ldr r0, _02047FB0 ; =0x00007FC0
	lsl r1, r4, #3
	and r0, r1
	add r1, r3, r2
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, [sp, #0x24]
	strb r0, [r7, r1]
_02047F9E:
	add r4, r4, #1
	cmp r4, r6
	blt _02047F7A
_02047FA4:
	add r5, r5, #1
	mov r0, ip
	cmp r5, r0
	blt _02047F60
_02047FAC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02047FB0: .word 0x00007FC0
	thumb_func_end sub_02047F20

	thumb_func_start sub_02047FB4
sub_02047FB4: ; 0x02047FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldrh r0, [r0, #8]
	add r3, r2, #0
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	lsl r0, r0, #0xd
	lsr r6, r0, #0x10
	ldr r0, [sp]
	ldr r2, [sp, #0xc]
	ldrh r0, [r0, #6]
	lsl r0, r0, #0xd
	lsr r4, r0, #0x10
	ldr r0, [sp]
	add r1, r4, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	bl sub_02046E28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	mov r5, #0
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mul r1, r4
	mul r1, r0
	str r1, [sp, #0x14]
	cmp r1, #0
	ble _02048060
	ldr r0, [sp, #0x10]
	add r1, r0, #0
	mul r1, r6
	str r1, [sp, #0x18]
_02047FFC:
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	blx sub_0208D65C
	add r4, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	blx sub_0208D65C
	add r7, r1, #0
	add r0, r7, #0
	add r1, r6, #0
	blx sub_0208D65C
	str r1, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	blx sub_0208D65C
	add r7, r0, #0
	ldr r0, [sp]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1d
	ldr r3, [r0]
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	add r1, r0, #0
	asr r2, r4, #2
	ldr r0, [sp, #8]
	lsr r2, r2, #0x1d
	add r2, r4, r2
	add r0, r3, r0
	asr r3, r2, #3
	ldr r2, [sp, #0x10]
	mul r1, r6
	mul r2, r3
	add r3, r7, r2
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	mul r3, r2
	ldrb r1, [r3, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, r5]
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blt _02047FFC
_02048060:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02048078
	ldr r0, [sp, #0x1c]
	ldr r1, [sp]
	bl sub_02046F18
	ldr r0, [sp, #0x1c]
	bl sub_02046EDC
	mov r0, #0
	str r0, [sp, #0x1c]
_02048078:
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02047FB4

	thumb_func_start sub_02048080
sub_02048080: ; 0x02048080
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x4f
	str r1, [sp]
	ldr r3, _020480A0 ; =0x0209AEC0
	mov r1, #4
	mov r2, #0
	add r4, r0, #0
	bl sub_0203A1FC
	ldr r1, _020480A4 ; =0x02141918
	str r0, [r1]
	strh r4, [r0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_020480A0: .word 0x0209AEC0
_020480A4: .word 0x02141918
	thumb_func_end sub_02048080

	thumb_func_start sub_020480A8
sub_020480A8: ; 0x020480A8
	push {r4, lr}
	ldr r4, _020480BC ; =0x02141918
	ldr r0, [r4]
	cmp r0, #0
	beq _020480BA
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
_020480BA:
	pop {r4, pc}
	.align 2, 0
_020480BC: .word 0x02141918
	thumb_func_end sub_020480A8

	thumb_func_start sub_020480C0
sub_020480C0: ; 0x020480C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02045864
	cmp r0, #0
	add r0, sp, #0x28
	bne _020480E0
	ldrb r0, [r0]
	add r1, r5, #0
	mov r4, #0
	mul r1, r0
	b _020480E8
_020480E0:
	ldrb r0, [r0]
	mov r4, #1
	mul r0, r5
	lsl r1, r0, #1
_020480E8:
	add r2, sp, #0x28
	ldrb r2, [r2, #8]
	add r0, r6, #0
	lsl r1, r1, #5
	bl sub_02044564
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0204811C
	add r1, sp, #0x28
	ldrb r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r1, sp, #0x28
	ldrb r1, [r1, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02048180
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0204811C:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020480C0

	thumb_func_start sub_02048124
sub_02048124: ; 0x02048124
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02045864
	cmp r0, #0
	add r0, sp, #0x28
	bne _02048144
	ldrb r0, [r0]
	add r2, r5, #0
	mov r4, #0
	mul r2, r0
	b _0204814C
_02048144:
	ldrb r0, [r0]
	mov r4, #1
	mul r0, r5
	lsl r2, r0, #1
_0204814C:
	ldr r1, [sp, #0x30]
	add r0, r6, #0
	bl sub_02044624
	cmp r0, #0
	beq _02048178
	add r0, sp, #0x28
	ldrb r1, [r0]
	add r3, r5, #0
	str r1, [sp]
	ldrb r0, [r0, #4]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	bl sub_02048180
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02048178:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02048124

	thumb_func_start sub_02048180
sub_02048180: ; 0x02048180
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r7, r0, #0
	str r2, [sp, #8]
	add r0, sp, #0x20
	ldrb r0, [r0, #0xc]
	add r5, r3, #0
	mov r6, #0x20
	cmp r0, #0
	beq _02048198
	mov r6, #0x40
_02048198:
	mov r0, #0xd5
	str r0, [sp]
	ldr r0, _02048200 ; =0x02141918
	ldr r3, _02048204 ; =0x0209AEC0
	ldr r0, [r0]
	mov r1, #0x10
	ldrh r0, [r0]
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _02048208 ; =0xFFFF8000
	ldr r3, _02048208 ; =0xFFFF8000
	and r1, r0
	ldr r0, _0204820C ; =0x00007FB2
	sub r3, r3, #1
	orr r0, r1
	strh r0, [r4]
	strb r7, [r4, #2]
	ldr r0, [sp, #4]
	strb r0, [r4, #3]
	ldr r0, [sp, #8]
	strb r0, [r4, #4]
	strb r5, [r4, #5]
	add r0, sp, #0x20
	ldrb r1, [r0]
	strb r1, [r4, #6]
	strb r5, [r4, #7]
	strb r1, [r4, #8]
	ldrb r2, [r0, #4]
	strb r2, [r4, #9]
	ldr r2, [sp, #0x28]
	strh r2, [r4, #0xa]
	ldrb r0, [r0, #0xc]
	ldrh r2, [r4]
	lsl r0, r0, #0x1f
	and r2, r3
	lsr r0, r0, #0x10
	orr r0, r2
	strh r0, [r4]
	ldr r3, _02048200 ; =0x02141918
	add r0, r5, #0
	ldr r3, [r3]
	add r2, r6, #0
	ldrh r3, [r3]
	bl sub_02046E28
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02048200: .word 0x02141918
_02048204: .word 0x0209AEC0
_02048208: .word 0xFFFF8000
_0204820C: .word 0x00007FB2
	thumb_func_end sub_02048180

	thumb_func_start sub_02048210
sub_02048210: ; 0x02048210
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	ldrb r1, [r4, #5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _02048226
	ldrb r0, [r4, #6]
	add r2, r1, #0
	mul r2, r0
	b _0204822C
_02048226:
	ldrb r0, [r4, #6]
	mul r0, r1
	lsl r2, r0, #1
_0204822C:
	ldrb r0, [r4, #2]
	ldrh r1, [r4, #0xa]
	lsl r2, r2, #5
	bl sub_02044668
	ldr r0, [r4, #0xc]
	bl sub_02046EDC
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_02048210

	thumb_func_start sub_02048244
sub_02048244: ; 0x02048244
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #2]
	bl sub_02045878
	ldrb r2, [r5, #5]
	ldrb r1, [r5, #6]
	mul r1, r2
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5, #0xc]
	bl sub_02046EF4
	add r1, r0, #0
	ldrb r0, [r5, #2]
	ldrh r3, [r5, #0xa]
	add r2, r4, #0
	bl sub_02045080
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048244

	thumb_func_start sub_0204826C
sub_0204826C: ; 0x0204826C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x18]
	ldrb r1, [r0, #5]
	ldrb r0, [r0, #6]
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #0x18]
	ldrh r4, [r0, #0xa]
	ldrb r0, [r0, #9]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #2]
	bl sub_02045850
	cmp r0, #1
	beq _020482D4
	ldr r0, _02048344 ; =0x00000133
	ldr r3, _02048348 ; =0x0209AEC0
	str r0, [sp]
	ldr r0, _0204834C ; =0x02141918
	mov r2, #0
	ldr r0, [r0]
	mov r5, #0
	ldrh r1, [r0]
	ldr r0, _02048350 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r6, #1
	bl sub_0203A1FC
	add r7, r0, #0
	cmp r6, #0
	ble _0204830A
_020482BC:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	orr r1, r0
	lsl r0, r5, #1
	strh r1, [r7, r0]
	add r0, r4, #1
	lsl r0, r0, #0x10
	add r5, r5, #1
	lsr r4, r0, #0x10
	cmp r5, r6
	blt _020482BC
	b _0204830A
_020482D4:
	ldr r0, _02048354 ; =0x0000013E
	ldr r3, _02048348 ; =0x0209AEC0
	str r0, [sp]
	ldr r0, _0204834C ; =0x02141918
	mov r2, #0
	ldr r0, [r0]
	mov r5, #0
	ldrh r1, [r0]
	ldr r0, _02048350 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl sub_0203A1FC
	add r7, r0, #0
	cmp r6, #0
	ble _0204830A
_020482FC:
	add r0, r4, #1
	strb r4, [r7, r5]
	lsl r0, r0, #0x10
	add r5, r5, #1
	lsr r4, r0, #0x10
	cmp r5, r6
	blt _020482FC
_0204830A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	ldrb r0, [r0, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #5]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #6]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldrb r1, [r1, #3]
	ldrb r0, [r0, #2]
	ldrb r2, [r2, #4]
	ldrb r3, [r3, #7]
	bl sub_020454D4
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02048344: .word 0x00000133
_02048348: .word 0x0209AEC0
_0204834C: .word 0x02141918
_02048350: .word 0x00007FFF
_02048354: .word 0x0000013E
	thumb_func_end sub_0204826C

	thumb_func_start sub_02048358
sub_02048358: ; 0x02048358
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #2]
	add r7, r1, #0
	add r4, r2, #0
	bl sub_02045850
	cmp r0, #1
	beq _02048372
	lsl r0, r4, #0x1c
	lsr r4, r0, #0x10
	b _02048374
_02048372:
	mov r4, #0
_02048374:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldrb r2, [r5, #3]
	ldrb r3, [r5, #4]
	add r1, r4, #0
	orr r1, r7
	sub r2, r2, #1
	sub r3, r3, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldrb r0, [r5, #2]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02045604
	ldrb r0, [r5, #7]
	add r1, r7, #1
	orr r1, r4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldrb r3, [r5, #4]
	lsl r1, r1, #0x10
	ldrb r0, [r5, #2]
	sub r3, r3, #1
	lsl r3, r3, #0x18
	ldrb r2, [r5, #3]
	lsr r1, r1, #0x10
	lsr r3, r3, #0x18
	bl sub_02045604
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	add r1, r7, #2
	orr r1, r4
	lsl r1, r1, #0x10
	ldrb r3, [r5, #3]
	ldrb r2, [r5, #7]
	ldrb r0, [r5, #2]
	lsr r1, r1, #0x10
	add r2, r3, r2
	ldrb r3, [r5, #4]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	sub r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02045604
	mov r0, #1
	str r0, [sp]
	ldrb r0, [r5, #8]
	add r1, r7, #3
	orr r1, r4
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldrb r2, [r5, #3]
	lsl r1, r1, #0x10
	ldrb r0, [r5, #2]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	ldrb r3, [r5, #4]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_02045604
	mov r0, #1
	str r0, [sp]
	ldrb r0, [r5, #8]
	add r1, r7, #4
	orr r1, r4
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r1, r1, #0x10
	ldrb r3, [r5, #3]
	ldrb r2, [r5, #7]
	ldrb r0, [r5, #2]
	lsr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x18
	ldrb r3, [r5, #4]
	lsr r2, r2, #0x18
	bl sub_02045604
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldrb r2, [r5, #3]
	add r1, r7, #5
	orr r1, r4
	sub r2, r2, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	ldrb r6, [r5, #4]
	ldrb r3, [r5, #8]
	ldrb r0, [r5, #2]
	lsr r1, r1, #0x10
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02045604
	ldrb r0, [r5, #7]
	add r1, r7, #6
	orr r1, r4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r1, r1, #0x10
	ldrb r6, [r5, #4]
	ldrb r3, [r5, #8]
	ldrb r0, [r5, #2]
	ldrb r2, [r5, #3]
	add r3, r6, r3
	lsl r3, r3, #0x18
	lsr r1, r1, #0x10
	lsr r3, r3, #0x18
	bl sub_02045604
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	add r1, r7, #7
	orr r1, r4
	lsl r1, r1, #0x10
	ldrb r3, [r5, #3]
	ldrb r2, [r5, #7]
	ldrb r4, [r5, #4]
	ldrb r0, [r5, #2]
	add r2, r3, r2
	ldrb r3, [r5, #8]
	lsl r2, r2, #0x18
	lsr r1, r1, #0x10
	add r3, r4, r3
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02048358

	thumb_func_start sub_020484B4
sub_020484B4: ; 0x020484B4
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	ldrb r0, [r3, #5]
	mov r1, #0
	str r0, [sp]
	ldrb r0, [r3, #6]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrb r0, [r3, #2]
	ldrb r2, [r3, #3]
	ldrb r3, [r3, #4]
	bl sub_02045604
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_020484B4

	thumb_func_start sub_020484D4
sub_020484D4: ; 0x020484D4
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_020484D4

	thumb_func_start sub_020484D8
sub_020484D8: ; 0x020484D8
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_020484D8

	thumb_func_start sub_020484DC
sub_020484DC: ; 0x020484DC
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_020484DC

	thumb_func_start sub_020484E0
sub_020484E0: ; 0x020484E0
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end sub_020484E0

	thumb_func_start sub_020484E4
sub_020484E4: ; 0x020484E4
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end sub_020484E4

	thumb_func_start sub_020484E8
sub_020484E8: ; 0x020484E8
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end sub_020484E8

	thumb_func_start sub_020484EC
sub_020484EC: ; 0x020484EC
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_020484EC

	thumb_func_start sub_020484F0
sub_020484F0: ; 0x020484F0
	ldrh r0, [r0, #0xa]
	bx lr
	thumb_func_end sub_020484F0

	thumb_func_start sub_020484F4
sub_020484F4: ; 0x020484F4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020484F4

	thumb_func_start sub_020484F8
sub_020484F8: ; 0x020484F8
	ldrb r0, [r0, #9]
	bx lr
	thumb_func_end sub_020484F8

	thumb_func_start sub_020484FC
sub_020484FC: ; 0x020484FC
	strb r1, [r0, #3]
	bx lr
	thumb_func_end sub_020484FC

	thumb_func_start sub_02048500
sub_02048500: ; 0x02048500
	strb r1, [r0, #4]
	bx lr
	thumb_func_end sub_02048500

	thumb_func_start sub_02048504
sub_02048504: ; 0x02048504
	strb r1, [r0, #8]
	bx lr
	thumb_func_end sub_02048504

	thumb_func_start sub_02048508
sub_02048508: ; 0x02048508
	strb r1, [r0, #9]
	bx lr
	thumb_func_end sub_02048508

	thumb_func_start sub_0204850C
sub_0204850C: ; 0x0204850C
	ldr r1, _02048514 ; =0x0209AECC
	strh r0, [r1]
	bx lr
	nop
_02048514: .word 0x0209AECC
	thumb_func_end sub_0204850C

	thumb_func_start sub_02048518
sub_02048518: ; 0x02048518
	cmp r0, #0
	beq _02048528
	ldr r1, [r0, #4]
	ldr r0, _0204852C ; =0xB6F8D2EC
	cmp r1, r0
	bne _02048528
	mov r0, #1
	bx lr
_02048528:
	mov r0, #0
	bx lr
	.align 2, 0
_0204852C: .word 0xB6F8D2EC
	thumb_func_end sub_02048518

	thumb_func_start sub_02048530
sub_02048530: ; 0x02048530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x64
	str r0, [sp]
	add r0, r1, #0
	lsl r1, r5, #1
	ldr r3, _02048558 ; =0x0209AED0
	add r1, #0xa
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	ldr r1, _0204855C ; =0xB6F8D2EC
	str r1, [r0, #4]
	strh r5, [r0]
	ldr r1, _02048560 ; =0x0209AECC
	strh r4, [r0, #2]
	ldrh r1, [r1]
	strh r1, [r0, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02048558: .word 0x0209AED0
_0204855C: .word 0xB6F8D2EC
_02048560: .word 0x0209AECC
	thumb_func_end sub_02048530

	thumb_func_start sub_02048564
sub_02048564: ; 0x02048564
	ldr r3, _0204856C ; =sub_0203A24C
	mov r1, #0
	str r1, [r0, #4]
	bx r3
	.align 2, 0
_0204856C: .word sub_0203A24C
	thumb_func_end sub_02048564

	thumb_func_start sub_02048570
sub_02048570: ; 0x02048570
	mov r1, #0
	strh r1, [r0, #2]
	ldr r1, _0204857C ; =0x0209AECC
	ldrh r1, [r1]
	strh r1, [r0, #8]
	bx lr
	.align 2, 0
_0204857C: .word 0x0209AECC
	thumb_func_end sub_02048570

	thumb_func_start sub_02048580
sub_02048580: ; 0x02048580
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r2, [r4, #2]
	ldrh r0, [r5]
	cmp r0, r2
	bls _020485A2
	add r0, r4, #0
	add r1, r5, #0
	add r2, r2, #1
	add r0, #8
	add r1, #8
	lsl r2, r2, #1
	blx sub_02078920
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
_020485A2:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048580

	thumb_func_start sub_020485A4
sub_020485A4: ; 0x020485A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	add r0, r0, #1
	bl sub_02048530
	add r1, r4, #0
	add r5, r0, #0
	bl sub_02048580
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020485A4

	thumb_func_start sub_020485BC
sub_020485BC: ; 0x020485BC
	push {r3, r4, r5, r6}
	ldrh r4, [r0, #8]
	ldrh r3, [r1, #8]
	mov r2, #0
	cmp r4, r3
	bne _020485EC
	ldr r3, _020485F4 ; =0x0209AECC
	ldrh r3, [r3]
_020485CC:
	lsl r4, r2, #1
	add r4, r0, r4
	ldrh r4, [r4, #8]
	cmp r3, r4
	bne _020485DC
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_020485DC:
	add r2, r2, #1
	lsl r6, r2, #1
	add r4, r0, r6
	ldrh r5, [r4, #8]
	add r4, r1, r6
	ldrh r4, [r4, #8]
	cmp r5, r4
	beq _020485CC
_020485EC:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_020485F4: .word 0x0209AECC
	thumb_func_end sub_020485BC

	thumb_func_start sub_020485F8
sub_020485F8: ; 0x020485F8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_020485F8

	thumb_func_start sub_020485FC
sub_020485FC: ; 0x020485FC
	ldrh r2, [r0, #2]
	cmp r1, r2
	bhs _0204860E
	ldr r2, _02048610 ; =0x0209AECC
	ldrh r3, [r2]
	lsl r2, r1, #1
	add r2, r0, r2
	strh r3, [r2, #8]
	strh r1, [r0, #2]
_0204860E:
	bx lr
	.align 2, 0
_02048610: .word 0x0209AECC
	thumb_func_end sub_020485FC

	thumb_func_start sub_02048614
sub_02048614: ; 0x02048614
	push {r4, r5}
	mov r2, #0
	strh r2, [r0, #2]
	ldr r4, _02048654 ; =0x0209AECC
	ldrh r2, [r1]
	ldrh r3, [r4]
	cmp r2, r3
	beq _02048646
_02048624:
	ldrh r5, [r0]
	ldrh r2, [r0, #2]
	sub r5, r5, #1
	cmp r2, r5
	bge _02048646
	add r3, r2, #0
	add r3, r3, #1
	strh r3, [r0, #2]
	ldrh r3, [r1]
	lsl r2, r2, #1
	add r2, r0, r2
	strh r3, [r2, #8]
	add r1, r1, #2
	ldrh r3, [r4]
	ldrh r2, [r1]
	cmp r2, r3
	bne _02048624
_02048646:
	ldrh r1, [r0, #2]
	lsl r1, r1, #1
	add r0, r0, r1
	strh r3, [r0, #8]
	pop {r4, r5}
	bx lr
	nop
_02048654: .word 0x0209AECC
	thumb_func_end sub_02048614

	thumb_func_start sub_02048658
sub_02048658: ; 0x02048658
	push {r4, r5, r6, r7}
	ldrh r3, [r0]
	cmp r2, r3
	bhi _0204868E
	mov r4, #0
	sub r3, r2, #1
	beq _0204867C
	ldr r5, _02048694 ; =0x0209AECC
_02048668:
	lsl r7, r4, #1
	add r6, r0, r7
	ldrh r7, [r1, r7]
	strh r7, [r6, #8]
	ldrh r6, [r5]
	cmp r6, r7
	beq _0204867C
	add r4, r4, #1
	cmp r4, r3
	blo _02048668
_0204867C:
	sub r3, r2, #1
	strh r4, [r0, #2]
	cmp r4, r3
	bne _0204868E
	ldr r1, _02048694 ; =0x0209AECC
	ldrh r2, [r1]
	lsl r1, r3, #1
	add r0, r0, r1
	strh r2, [r0, #8]
_0204868E:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02048694: .word 0x0209AECC
	thumb_func_end sub_02048658

	thumb_func_start sub_02048698
sub_02048698: ; 0x02048698
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	beq _020486B6
	ldrh r0, [r5]
	cmp r4, r0
	bhi _020486B6
	add r0, r1, #0
	add r1, r5, #0
	add r1, #8
	lsl r2, r4, #1
	blx sub_02078920
	sub r0, r4, #1
	strh r0, [r5, #2]
_020486B6:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048698

	thumb_func_start sub_020486B8
sub_020486B8: ; 0x020486B8
	push {r4, r5, r6, r7}
	mov r3, #0
	cmp r2, #0
	bls _020486D6
	ldr r4, _020486EC ; =0x0209AECC
_020486C2:
	lsl r7, r3, #1
	add r5, r0, r7
	ldrh r6, [r5, #8]
	strh r6, [r1, r7]
	ldrh r5, [r4]
	cmp r5, r6
	beq _020486D6
	add r3, r3, #1
	cmp r3, r2
	blo _020486C2
_020486D6:
	cmp r3, r2
	bne _020486E6
	ldr r0, _020486EC ; =0x0209AECC
	ldrh r3, [r0]
	lsl r0, r2, #1
	add r0, r1, r0
	sub r0, r0, #2
	strh r3, [r0]
_020486E6:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_020486EC: .word 0x0209AECC
	thumb_func_end sub_020486B8

	thumb_func_start sub_020486F0
sub_020486F0: ; 0x020486F0
	add r0, #8
	bx lr
	thumb_func_end sub_020486F0

	thumb_func_start sub_020486F4
sub_020486F4: ; 0x020486F4
	ldr r0, _020486FC ; =0x0209AECC
	ldrh r0, [r0]
	bx lr
	nop
_020486FC: .word 0x0209AECC
	thumb_func_end sub_020486F4

	thumb_func_start sub_02048700
sub_02048700: ; 0x02048700
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r2, [r4, #2]
	ldrh r1, [r5, #2]
	add r0, r1, r2
	add r3, r0, #1
	ldrh r0, [r5]
	cmp r3, r0
	bgt _02048730
	add r3, r5, #0
	add r0, r4, #0
	add r2, r2, #1
	add r3, #8
	lsl r1, r1, #1
	add r0, #8
	add r1, r3, r1
	lsl r2, r2, #1
	blx sub_02078920
	ldrh r1, [r5, #2]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r5, #2]
_02048730:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_02048700

	thumb_func_start sub_02048734
sub_02048734: ; 0x02048734
	push {r3, r4}
	ldrh r4, [r0, #2]
	ldrh r2, [r0]
	add r3, r4, #1
	cmp r3, r2
	bge _02048754
	lsl r2, r4, #1
	strh r3, [r0, #2]
	add r2, r0, r2
	strh r1, [r2, #8]
	ldr r1, _02048758 ; =0x0209AECC
	ldrh r2, [r1]
	ldrh r1, [r0, #2]
	lsl r1, r1, #1
	add r0, r0, r1
	strh r2, [r0, #8]
_02048754:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02048758: .word 0x0209AECC
	thumb_func_end sub_02048734

	thumb_func_start sub_0204875C
sub_0204875C: ; 0x0204875C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r2, [sp, #4]
	add r5, r3, #0
	mov r0, #0x68
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _020487D0 ; =0x0209AEDC
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	strh r5, [r4, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0204AA30
	str r0, [r4, #0x14]
	ldr r1, [sp, #4]
	bl sub_0204AD14
	add r1, r0, #0
	str r1, [r4, #0x10]
	strb r6, [r4, #0x1b]
	ldrh r2, [r4, #0x18]
	ldr r0, [r4, #0x14]
	bl sub_02048AAC
	str r0, [r4]
	bl sub_02048B64
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _020487AE
	mov r0, #0
	str r0, [r4, #4]
	b _020487C8
_020487AE:
	mov r0, #0x7b
	str r0, [sp]
	ldr r1, [r4]
	ldrh r0, [r4, #0x18]
	ldr r1, [r1, #4]
	ldr r3, _020487D0 ; =0x0209AEDC
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r4, #4]
	add r0, r4, #0
	bl sub_02048B00
_020487C8:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020487D0: .word 0x0209AEDC
	thumb_func_end sub_0204875C

	thumb_func_start sub_020487D4
sub_020487D4: ; 0x020487D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _020487F4
	ldr r0, [r4]
	bl sub_0203A24C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020487EE
	bl sub_0203A24C
_020487EE:
	ldr r0, [r4, #0x14]
	bl sub_0204AB0C
_020487F4:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_020487D4

	thumb_func_start sub_020487FC
sub_020487FC: ; 0x020487FC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xa6
	str r0, [sp]
	ldr r3, _02048834 ; =0x0209AEDC
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	add r4, r0, #0
	strh r5, [r4, #0x18]
	str r7, [r4, #0x14]
	str r7, [r4, #0x10]
	mov r0, #1
	strb r0, [r4, #0x1b]
	str r6, [r4]
	add r0, r6, #0
	bl sub_02048B64
	strb r0, [r4, #0x1a]
	add r0, r4, #0
	bl sub_02048B00
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02048834: .word 0x0209AEDC
	thumb_func_end sub_020487FC

	thumb_func_start sub_02048838
sub_02048838: ; 0x02048838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5]
	str r2, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r6, r1
	blo _02048854
	add r0, r2, #0
	bl sub_02048570
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02048854:
	bl sub_02048B44
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	bne _0204888A
	ldrb r2, [r5, #0x1a]
	ldr r3, [r5]
	ldr r1, [r5, #0x10]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r2, [r2, #0xc]
	ldr r0, [r5, #0x14]
	add r2, r1, r2
	lsl r1, r6, #3
	add r1, r1, #4
	add r1, r2, r1
	bl sub_0204AD74
	add r2, r5, #0
	ldr r0, [r5, #0x14]
	mov r1, #8
	add r2, #8
	bl sub_0204AD64
	add r4, r5, #0
	add r4, #8
	b _02048892
_0204888A:
	ldr r0, [r5, #4]
	add r1, r0, #4
	lsl r0, r6, #3
	add r4, r1, r0
_02048892:
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	bne _020488F4
	ldrh r0, [r4, #4]
	ldr r3, _02048910 ; =0x0209AEDC
	mov r2, #0
	lsl r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0xd6
	str r0, [sp]
	ldrh r1, [r5, #0x18]
	ldr r0, _02048914 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r1, [sp, #8]
	lsr r0, r0, #0x10
	bl sub_0203A1FC
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _02048902
	ldrb r3, [r5, #0x1a]
	ldr r7, [r5]
	ldr r1, [r5, #0x10]
	lsl r3, r3, #2
	add r3, r7, r3
	ldr r3, [r3, #0xc]
	ldr r2, [r4]
	add r1, r1, r3
	ldr r0, [r5, #0x14]
	add r1, r2, r1
	bl sub_0204AD74
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_0204AD64
	ldrh r2, [r4, #4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl sub_02048698
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	b _02048902
_020488F4:
	ldr r2, [r5, #4]
	ldr r1, [r4]
	ldr r0, [sp, #4]
	add r1, r2, r1
	ldrh r2, [r4, #4]
	bl sub_02048698
_02048902:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_02048918
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02048910: .word 0x0209AEDC
_02048914: .word 0x00007FFF
	thumb_func_end sub_02048838

	thumb_func_start sub_02048918
sub_02048918: ; 0x02048918
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020485F8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020486F0
	add r1, r4, #1
	add r2, r6, #0
	bl sub_0204893C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020485FC
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02048918

	thumb_func_start sub_0204893C
sub_0204893C: ; 0x0204893C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020486F4
	ldr r1, _02048988 ; =0x00002983
	add r2, r6, #3
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r3, #0
	cmp r4, #0
	bls _02048984
	mov r6, #0xe
	lsl r6, r6, #0xc
_0204895C:
	ldrh r1, [r5]
	eor r1, r2
	strh r1, [r5]
	ldrh r1, [r5]
	cmp r1, r0
	bne _0204896C
	add r0, r3, #0
	pop {r4, r5, r6, pc}
_0204896C:
	add r1, r2, #0
	and r1, r6
	lsl r2, r2, #0x13
	asr r1, r1, #0xd
	lsr r2, r2, #0x10
	orr r1, r2
	lsl r1, r1, #0x10
	add r3, r3, #1
	add r5, r5, #2
	lsr r2, r1, #0x10
	cmp r3, r4
	blo _0204895C
_02048984:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02048988: .word 0x00002983
	thumb_func_end sub_0204893C

	thumb_func_start sub_0204898C
sub_0204898C: ; 0x0204898C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02048B44
	ldrb r0, [r5, #0x1b]
	cmp r0, #0
	bne _020489C8
	ldrb r2, [r5, #0x1a]
	ldr r3, [r5]
	ldr r1, [r5, #0x10]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r2, [r2, #0xc]
	ldr r0, [r5, #0x14]
	add r2, r1, r2
	lsl r1, r4, #3
	add r1, r1, #4
	add r1, r2, r1
	bl sub_0204AD74
	add r2, r5, #0
	ldr r0, [r5, #0x14]
	mov r1, #8
	add r2, #8
	bl sub_0204AD64
	add r0, r5, #0
	add r0, #8
	b _020489D0
_020489C8:
	ldr r0, [r5, #4]
	add r1, r0, #4
	lsl r0, r4, #3
	add r0, r1, r0
_020489D0:
	ldrh r0, [r0, #4]
	ldrh r1, [r5, #0x18]
	bl sub_02048530
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02048838
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204898C

	thumb_func_start sub_020489E8
sub_020489E8: ; 0x020489E8
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_020489E8

	thumb_func_start sub_020489F0
sub_020489F0: ; 0x020489F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02048B44
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	bne _02048A34
	ldrb r3, [r6, #0x1a]
	ldr r1, [r6]
	ldr r2, [r6, #0x10]
	lsl r3, r3, #2
	add r1, r1, r3
	ldr r1, [r1, #0xc]
	ldr r0, [r6, #0x14]
	add r1, r2, r1
	ldr r2, [sp]
	lsl r2, r2, #3
	add r2, r2, #4
	add r1, r1, r2
	bl sub_0204AD74
	add r2, r6, #0
	ldr r0, [r6, #0x14]
	mov r1, #8
	add r2, #8
	bl sub_0204AD64
	add r1, r6, #0
	add r1, #8
	b _02048A3E
_02048A34:
	ldr r0, [r6, #4]
	add r1, r0, #4
	ldr r0, [sp]
	lsl r0, r0, #3
	add r1, r1, r0
_02048A3E:
	ldrh r4, [r1, #4]
	cmp r4, r7
	bls _02048A46
	add r4, r7, #0
_02048A46:
	ldrb r0, [r6, #0x1b]
	cmp r0, #0
	bne _02048A7C
	lsl r0, r4, #1
	lsl r2, r7, #1
	str r0, [sp, #4]
	cmp r0, r2
	bls _02048A58
	str r2, [sp, #4]
_02048A58:
	ldrb r3, [r6, #0x1a]
	ldr r2, [r1]
	ldr r7, [r6]
	lsl r3, r3, #2
	add r3, r7, r3
	ldr r1, [r6, #0x10]
	ldr r3, [r3, #0xc]
	ldr r0, [r6, #0x14]
	add r1, r1, r3
	add r1, r2, r1
	bl sub_0204AD74
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl sub_0204AD64
	b _02048A94
_02048A7C:
	ldr r2, [r6, #4]
	ldr r0, [r1]
	mov r3, #0
	add r2, r2, r0
	cmp r4, #0
	bls _02048A94
_02048A88:
	lsl r1, r3, #1
	ldrh r0, [r2, r1]
	add r3, r3, #1
	strh r0, [r5, r1]
	cmp r3, r4
	blo _02048A88
_02048A94:
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204893C
	add r4, r0, #0
	bl sub_020486F4
	lsl r1, r4, #1
	strh r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020489F0

	thumb_func_start sub_02048AAC
sub_02048AAC: ; 0x02048AAC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r2, #0
	bl sub_0204AD74
	add r6, sp, #4
	add r0, r4, #0
	mov r1, #0xc
	add r2, r6, #0
	bl sub_0204AD64
	ldr r0, _02048AF8 ; =0x000001F3
	ldr r3, _02048AFC ; =0x0209AEDC
	str r0, [sp]
	ldrh r1, [r6]
	add r0, r5, #0
	mov r2, #0
	lsl r1, r1, #2
	add r1, #0xc
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0xc
	blx sub_02078920
	ldrh r1, [r5]
	add r2, r5, #0
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, #0xc
	bl sub_0204AD64
	add r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02048AF8: .word 0x000001F3
_02048AFC: .word 0x0209AEDC
	thumb_func_end sub_02048AAC

	thumb_func_start sub_02048B00
sub_02048B00: ; 0x02048B00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x1a]
	ldr r1, [r5]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r4, [r0, #0xc]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02048B3C
	ldr r1, [r5, #0x10]
	add r1, r1, r4
	bl sub_0204AD74
	ldr r0, [r5, #0x14]
	mov r1, #4
	add r2, sp, #0
	bl sub_0204AD64
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	add r1, r1, r4
	bl sub_0204AD74
	ldr r0, [r5, #0x14]
	ldr r1, [sp]
	ldr r2, [r5, #4]
	bl sub_0204AD64
	pop {r3, r4, r5, pc}
_02048B3C:
	ldr r0, [r5]
	add r0, r0, r4
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02048B00

	thumb_func_start sub_02048B44
sub_02048B44: ; 0x02048B44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02048B64
	ldrb r1, [r4, #0x1a]
	cmp r1, r0
	beq _02048B62
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	bne _02048B62
	add r0, r4, #0
	bl sub_02048B00
_02048B62:
	pop {r4, pc}
	thumb_func_end sub_02048B44

	thumb_func_start sub_02048B64
sub_02048B64: ; 0x02048B64
	push {r4, lr}
	add r4, r0, #0
	bl sub_02048B84
	ldrh r1, [r4]
	cmp r0, r1
	blt _02048B74
	mov r0, #0
_02048B74:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02048B64

	thumb_func_start sub_02048B78
sub_02048B78: ; 0x02048B78
	ldr r1, _02048B80 ; =0x0214191C
	strb r0, [r1]
	bx lr
	nop
_02048B80: .word 0x0214191C
	thumb_func_end sub_02048B78

	thumb_func_start sub_02048B84
sub_02048B84: ; 0x02048B84
	ldr r0, _02048B8C ; =0x0214191C
	ldrb r0, [r0]
	bx lr
	nop
_02048B8C: .word 0x0214191C
	thumb_func_end sub_02048B84

	thumb_func_start sub_02048B90
sub_02048B90: ; 0x02048B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r4, _02048C20 ; =0x02141920
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _02048C1A
	ldr r7, _02048C24 ; =0x0209AEE8
	mov r0, #0x44
	str r0, [sp]
	mov r0, #0
	mov r1, #0x10
	mov r2, #0
	add r3, r7, #0
	mov r6, #0
	bl sub_0203A1FC
	str r0, [r4]
	cmp r5, #0
	beq _02048C0A
	add r0, sp, #4
	bl sub_02070C7C
	add r0, sp, #4
	add r1, r5, #0
	bl sub_02070EA0
	cmp r0, #1
	bne _02048BFA
	add r0, sp, #4
	bl sub_02070EAC
	add r5, r0, #0
	mov r0, #0x4d
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0203A1FC
	ldr r1, [r4]
	add r2, r5, #0
	str r0, [r1]
	ldr r1, [r4]
	add r0, sp, #4
	ldr r1, [r1]
	bl sub_02070E40
	add r0, sp, #4
	bl sub_02070DB4
	b _02048BFE
_02048BFA:
	bl sub_0207C774
_02048BFE:
	ldr r0, _02048C20 ; =0x02141920
	mov r1, #0
	ldr r0, [r0]
	add sp, #0x4c
	str r1, [r0, #0xc]
	pop {r4, r5, r6, r7, pc}
_02048C0A:
	ldr r1, _02048C28 ; =0x02093390
	str r1, [r0]
	ldr r1, [r4]
	mov r0, #1
	str r0, [r1, #0xc]
	mov r1, #0xf
	bl sub_02048CD0
_02048C1A:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02048C20: .word 0x02141920
_02048C24: .word 0x0209AEE8
_02048C28: .word 0x02093390
	thumb_func_end sub_02048B90

	thumb_func_start sub_02048C2C
sub_02048C2C: ; 0x02048C2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, _02048C90 ; =0x02141920
	str r1, [sp, #4]
	ldr r0, [r0]
	ldr r5, [sp, #4]
	ldr r2, [r0]
	ldr r7, [r0, #8]
	ldr r1, [r2]
	mov r6, #0
	add r3, r2, r1
	ldr r1, [sp]
	lsl r2, r1, #5
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	asr r1, r1, #2
	add r4, r3, r1
	ldr r1, [r0, #4]
	str r1, [sp, #8]
_02048C56:
	ldrb r0, [r4]
	add r4, r4, #1
	bl sub_02048C94
	ldr r1, [sp, #8]
	mov r2, #0
	mvn r2, r2
	and r1, r0
	eor r0, r2
	and r0, r7
	orr r0, r1
	add r6, r6, #1
	stmia r5!, {r0}
	cmp r6, #8
	blt _02048C56
	ldr r0, _02048C90 ; =0x02141920
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r1, #4]
	add r1, r1, r0
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	ldr r0, [sp, #4]
	add r0, #0x20
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02048C90: .word 0x02141920
	thumb_func_end sub_02048C2C

	thumb_func_start sub_02048C94
sub_02048C94: ; 0x02048C94
	push {r3, r4, r5, r6}
	mov r4, #0xf
	mov r2, #0
	mov r1, #0
	lsl r4, r4, #0x1c
	mov r6, #1
_02048CA0:
	add r3, r6, #0
	lsl r3, r1
	tst r3, r0
	beq _02048CB0
	lsl r3, r1, #2
	add r5, r4, #0
	lsr r5, r3
	orr r2, r5
_02048CB0:
	add r1, r1, #1
	cmp r1, #8
	blt _02048CA0
	add r0, r2, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_02048C94

	thumb_func_start sub_02048CBC
sub_02048CBC: ; 0x02048CBC
	ldr r0, _02048CC8 ; =0x02141920
	ldr r0, [r0]
	ldr r0, [r0]
	ldrb r0, [r0, #0xd]
	bx lr
	nop
_02048CC8: .word 0x02141920
	thumb_func_end sub_02048CBC

	thumb_func_start sub_02048CCC
sub_02048CCC: ; 0x02048CCC
	mov r0, #7
	bx lr
	thumb_func_end sub_02048CCC

	thumb_func_start sub_02048CD0
sub_02048CD0: ; 0x02048CD0
	push {r4, r5, r6, r7}
	add r6, r1, #0
	lsl r1, r0, #0x14
	mov ip, r1
	lsl r2, r0, #0x1c
	lsl r1, r0, #0x18
	orr r1, r2
	mov r2, ip
	orr r1, r2
	lsl r7, r0, #0x10
	orr r1, r7
	lsl r3, r0, #0xc
	orr r1, r3
	lsl r4, r0, #8
	orr r1, r4
	lsl r5, r0, #4
	orr r1, r5
	orr r1, r0
	ldr r0, _02048D24 ; =0x02141920
	lsl r7, r6, #0x1c
	ldr r0, [r0]
	lsl r5, r6, #0x18
	str r1, [r0, #4]
	lsl r0, r6, #0x14
	orr r5, r7
	lsl r1, r6, #0x10
	orr r0, r5
	orr r0, r1
	lsl r2, r6, #0xc
	lsl r3, r6, #8
	orr r0, r2
	lsl r4, r6, #4
	orr r0, r3
	orr r0, r4
	add r1, r6, #0
	orr r1, r0
	ldr r0, _02048D24 ; =0x02141920
	ldr r0, [r0]
	str r1, [r0, #8]
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02048D24: .word 0x02141920
	thumb_func_end sub_02048CD0

	thumb_func_start sub_02048D28
sub_02048D28: ; 0x02048D28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r6, r0, #0
	add r0, sp, #0x68
	ldrh r7, [r0, #4]
	add r4, r3, #0
	mov r0, #0x5c
	add r5, r1, #0
	str r2, [sp, #4]
	str r0, [sp]
	ldr r3, _02048F14 ; =0x0209AEF8
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0203A1FC
	ldr r1, _02048F18 ; =0x02141924
	str r0, [r1]
	strh r7, [r0, #0x18]
	ldr r0, [r1]
	add r0, #0x8c
	str r6, [r0]
	ldr r1, [r1]
	ldr r0, [sp, #4]
	add r1, #0x90
	str r0, [r1]
	bl sub_02067DF8
	bl sub_02074DC0
	bl sub_02065698
	add r0, sp, #0x68
	ldrh r0, [r0]
	cmp r0, #0
	beq _02048D82
	mov r1, #6
	lsl r1, r1, #0xa
	cmp r0, r1
	bls _02048D7A
	add r0, r1, #0
_02048D7A:
	bl sub_0203A4EC
	bl sub_02067B74
_02048D82:
	ldr r0, _02048F1C ; =0x04000540
	mov r1, #2
	ldr r7, _02048F18 ; =0x02141924
	str r1, [r0]
	ldr r0, [r7]
	mov r2, #4
	ldrh r1, [r0, #0x18]
	bl sub_0203A25C
	cmp r6, #0
	bne _02048DCA
	lsl r0, r5, #7
	bl sub_0205FCD4
	add r6, r0, #0
	mov r0, #0x7e
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, _02048F14 ; =0x0209AEF8
	ldrh r0, [r0, #0x18]
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	ldr r1, [r7]
	add r3, r6, #0
	str r0, [r1, #0x14]
	mov r0, #1
	str r0, [sp]
	ldr r2, [r7]
	lsl r0, r5, #0x11
	ldr r2, [r2, #0x14]
	mov r1, #0
	bl sub_0205FCD8
	b _02048DDA
_02048DCA:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0205F458
	ldr r0, [r7]
	mov r1, #0
	str r1, [r0, #0x14]
_02048DDA:
	ldr r0, [sp, #4]
	ldr r5, _02048F18 ; =0x02141924
	cmp r0, #0
	bne _02048E10
	lsl r0, r4, #9
	bl sub_0205FEF8
	add r6, r0, #0
	mov r0, #0x8d
	str r0, [sp]
	ldr r0, [r5]
	ldr r3, _02048F14 ; =0x0209AEF8
	ldrh r0, [r0, #0x18]
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	ldr r1, [r5]
	add r2, r6, #0
	str r0, [r1, #0x10]
	ldr r1, [r5]
	lsl r0, r4, #0xe
	ldr r1, [r1, #0x10]
	mov r3, #1
	bl sub_0205FEFC
	b _02048E20
_02048E10:
	lsl r0, r4, #0x1e
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0205F458
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #0x14]
_02048E20:
	ldr r4, _02048F20 ; =0x02093DC8
	add r3, sp, #0x34
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _02048F24 ; =0x02094A3C
	mov r0, #0xc
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x38]
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x3c]
	add r0, r2, #0
	bl sub_02048FBC
	ldr r1, _02048F28 ; =0x02093DC0
	add r0, sp, #8
	ldrh r2, [r1]
	add r4, sp, #8
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	mov r0, #0
	add r1, r4, #0
	bl sub_02049100
	mov r0, #1
	add r1, r4, #0
	bl sub_02049100
	mov r0, #2
	add r1, r4, #0
	bl sub_02049100
	mov r0, #3
	add r1, r4, #0
	bl sub_02049100
	ldr r4, _02048F2C ; =0x02093DE8
	add r3, sp, #0x10
	mov r2, #4
_02048E86:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02048E86
	ldr r0, [r4]
	str r0, [r3]
	add r0, sp, #0x10
	bl sub_02049188
	mov r0, #0
	mov r1, #1
	mov r6, #0
	bl sub_02049214
	mov r0, #0
	bl sub_02049248
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _02048EB2
	blx r0
	b _02048F00
_02048EB2:
	ldr r0, _02048F30 ; =0x04000060
	ldr r4, _02048F34 ; =0xFFFFCFFD
	ldrh r1, [r0]
	ldr r2, _02048F38 ; =0x0000CFEF
	and r1, r4
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	and r1, r3
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #8
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	add r3, r6, #0
	and r1, r2
	strh r1, [r0]
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02074E78
	add r0, r6, #0
	add r1, r6, #0
	lsr r2, r4, #0x11
	mov r3, #0x3f
	str r6, [sp]
	bl sub_02074F24
	ldr r1, _02048F3C ; =0xBFFF0000
	ldr r0, _02048F40 ; =0x04000580
	str r1, [r0]
_02048F00:
	ldr r0, [r5]
	mov r1, #0
	add r0, #0x98
	str r1, [r0]
	ldr r0, [r5]
	add r0, #0x9c
	str r1, [r0]
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_02048F14: .word 0x0209AEF8
_02048F18: .word 0x02141924
_02048F1C: .word 0x04000540
_02048F20: .word 0x02093DC8
_02048F24: .word 0x02094A3C
_02048F28: .word 0x02093DC0
_02048F2C: .word 0x02093DE8
_02048F30: .word 0x04000060
_02048F34: .word 0xFFFFCFFD
_02048F38: .word 0x0000CFEF
_02048F3C: .word 0xBFFF0000
_02048F40: .word 0x04000580
	thumb_func_end sub_02048D28

	thumb_func_start sub_02048F44
sub_02048F44: ; 0x02048F44
	push {r4, lr}
	ldr r0, _02048F80 ; =0x02141924
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02048F54
	bl sub_0203A24C
_02048F54:
	ldr r0, _02048F80 ; =0x02141924
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _02048F62
	bl sub_0203A24C
_02048F62:
	bl sub_02067B60
	cmp r0, #1
	bne _02048F72
	bl sub_02067B88
	bl sub_0203A4F4
_02048F72:
	ldr r4, _02048F80 ; =0x02141924
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02048F80: .word 0x02141924
	thumb_func_end sub_02048F44

	thumb_func_start sub_02048F84
sub_02048F84: ; 0x02048F84
	ldr r1, _02048FB8 ; =0x02141924
	ldr r2, [r1]
	ldr r2, [r2, #0x1c]
	str r2, [r0]
	ldr r2, [r1]
	ldr r2, [r2, #0x20]
	str r2, [r0, #4]
	ldr r2, [r1]
	ldr r2, [r2, #0x24]
	str r2, [r0, #8]
	ldr r2, [r1]
	ldr r2, [r2, #0x28]
	str r2, [r0, #0xc]
	ldr r2, [r1]
	ldr r2, [r2, #0x2c]
	str r2, [r0, #0x10]
	ldr r2, [r1]
	ldr r2, [r2, #0x30]
	str r2, [r0, #0x14]
	ldr r2, [r1]
	ldr r2, [r2, #0x34]
	str r2, [r0, #0x18]
	ldr r1, [r1]
	ldr r1, [r1, #0x38]
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
_02048FB8: .word 0x02141924
	thumb_func_end sub_02048F84

	thumb_func_start sub_02048FBC
sub_02048FBC: ; 0x02048FBC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r2, _020490F4 ; =0x02141924
	ldr r5, [r0]
	ldr r3, [r2]
	ldr r4, _020490F8 ; =0x02143A8C
	str r5, [r3, #0x1c]
	ldr r5, [r0, #4]
	ldr r3, [r2]
	ldr r1, _020490FC ; =0x02143A14
	str r5, [r3, #0x20]
	ldr r5, [r0, #8]
	ldr r3, [r2]
	str r5, [r3, #0x24]
	ldr r5, [r0, #0xc]
	ldr r3, [r2]
	str r5, [r3, #0x28]
	ldr r5, [r0, #0x10]
	ldr r3, [r2]
	str r5, [r3, #0x2c]
	ldr r5, [r0, #0x14]
	ldr r3, [r2]
	str r5, [r3, #0x30]
	ldr r5, [r0, #0x18]
	ldr r3, [r2]
	str r5, [r3, #0x34]
	ldr r3, [r0, #0x1c]
	ldr r0, [r2]
	str r3, [r0, #0x38]
	ldr r3, [r2]
	ldr r0, [r3, #0x1c]
	cmp r0, #0
	beq _0204900A
	cmp r0, #1
	beq _02049052
	cmp r0, #2
	beq _020490A2
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0204900A:
	ldr r2, [r3, #0x38]
	ldr r0, [r3, #0x34]
	cmp r2, #0
	bne _02049034
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r3, #0x20]
	ldr r1, [r3, #0x24]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x30]
	blx MTX_PerspectiveW
	ldr r1, [r4, #0x7c]
	mov r0, #0x50
	bic r1, r0
	add sp, #0x10
	str r1, [r4, #0x7c]
	pop {r3, r4, r5, pc}
_02049034:
	str r0, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r3, #0x20]
	ldr r1, [r3, #0x24]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x30]
	blx MTX_PerspectiveW
	ldr r1, [r4, #0x7c]
	mov r0, #0x50
	bic r1, r0
	add sp, #0x10
	str r1, [r4, #0x7c]
	pop {r3, r4, r5, pc}
_02049052:
	ldr r2, [r3, #0x38]
	ldr r0, [r3, #0x30]
	cmp r2, #0
	bne _02049080
	str r0, [sp]
	ldr r0, [r3, #0x34]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r3, #0x20]
	ldr r1, [r3, #0x24]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	blx MTX_FrustumW
	ldr r1, [r4, #0x7c]
	mov r0, #0x50
	bic r1, r0
	add sp, #0x10
	str r1, [r4, #0x7c]
	pop {r3, r4, r5, pc}
_02049080:
	str r0, [sp]
	ldr r0, [r3, #0x34]
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r3, #0x20]
	ldr r1, [r3, #0x24]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	blx MTX_FrustumW
	ldr r1, [r4, #0x7c]
	mov r0, #0x50
	bic r1, r0
	add sp, #0x10
	str r1, [r4, #0x7c]
	pop {r3, r4, r5, pc}
_020490A2:
	ldr r2, [r3, #0x38]
	ldr r0, [r3, #0x30]
	cmp r2, #0
	bne _020490D0
	str r0, [sp]
	ldr r0, [r3, #0x34]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r3, #0x20]
	ldr r1, [r3, #0x24]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	blx MTX_OrthoW
	ldr r1, [r4, #0x7c]
	mov r0, #0x50
	bic r1, r0
	add sp, #0x10
	str r1, [r4, #0x7c]
	pop {r3, r4, r5, pc}
_020490D0:
	str r0, [sp]
	ldr r0, [r3, #0x34]
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r3, #0x20]
	ldr r1, [r3, #0x24]
	ldr r2, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	blx MTX_OrthoW
	ldr r1, [r4, #0x7c]
	mov r0, #0x50
	bic r1, r0
	str r1, [r4, #0x7c]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_020490F4: .word 0x02141924
_020490F8: .word 0x02143A8C
_020490FC: .word 0x02143A14
	thumb_func_end sub_02048FBC

	thumb_func_start sub_02049100
sub_02049100: ; 0x02049100
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02049148 ; =0x02141924
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, [r7]
	lsl r4, r5, #3
	add r3, r1, r4
	ldrh r1, [r6]
	ldrh r2, [r6, #4]
	strh r1, [r3, #0x3c]
	ldrh r1, [r6, #2]
	strh r1, [r3, #0x3e]
	add r1, r3, #0
	add r1, #0x40
	strh r2, [r1]
	ldrh r1, [r6, #6]
	add r3, #0x42
	mov r2, #0x3e
	strh r1, [r3]
	ldr r1, [r7]
	mov r3, #0x40
	add r6, r1, r4
	mov r1, #0x3c
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldrsh r3, [r6, r3]
	bl sub_020658EC
	ldr r1, [r7]
	add r0, r5, #0
	add r1, r1, r4
	add r1, #0x42
	ldrh r1, [r1]
	bl sub_0206591C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02049148: .word 0x02141924
	thumb_func_end sub_02049100

	thumb_func_start sub_0204914C
sub_0204914C: ; 0x0204914C
	push {r4, r5}
	add r3, r0, #0
	ldr r0, _02049184 ; =0x02141924
	add r4, r3, #0
	ldr r2, [r0]
	add r5, r2, #0
	add r5, #0x5c
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r2, #0
	str r0, [r4]
	add r4, r3, #0
	add r5, #0x68
	ldmia r5!, {r0, r1}
	add r4, #0xc
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r2, #0x74
	str r0, [r4]
	ldmia r2!, {r0, r1}
	add r3, #0x18
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	pop {r4, r5}
	bx lr
	nop
_02049184: .word 0x02141924
	thumb_func_end sub_0204914C

	thumb_func_start sub_02049188
sub_02049188: ; 0x02049188
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _020491FC ; =0x02141924
	add r3, r6, #0
	ldr r5, [r0]
	ldmia r3!, {r0, r1}
	add r2, r5, #0
	add r2, #0x5c
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r6, #0
	str r0, [r2]
	add r2, r5, #0
	add r3, #0xc
	add r2, #0x68
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, #0x18
	str r0, [r2]
	add r5, #0x74
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	ldr r3, _02049200 ; =0x02143C4C
	str r0, [r5]
	add r5, r4, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r5, r7, #0
	str r0, [r3]
	ldr r3, _02049204 ; =0x02143C58
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r5, r2, #0
	str r0, [r3]
	ldr r3, _02049208 ; =0x02143C64
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r7, #0
	str r0, [r3]
	ldr r3, _0204920C ; =0x02143A58
	add r0, r4, #0
	blx MTX_LookAt
	ldr r1, _02049210 ; =0x02143A8C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020491FC: .word 0x02141924
_02049200: .word 0x02143C4C
_02049204: .word 0x02143C58
_02049208: .word 0x02143C64
_0204920C: .word 0x02143A58
_02049210: .word 0x02143A8C
	thumb_func_end sub_02049188

	thumb_func_start sub_02049214
sub_02049214: ; 0x02049214
	ldr r2, _02049224 ; =0x02141924
	ldr r3, [r2]
	add r3, #0x80
	str r0, [r3]
	ldr r0, [r2]
	add r0, #0x84
	str r1, [r0]
	bx lr
	.align 2, 0
_02049224: .word 0x02141924
	thumb_func_end sub_02049214

	thumb_func_start sub_02049228
sub_02049228: ; 0x02049228
	ldr r0, _02049234 ; =0x02141924
	ldr r0, [r0]
	add r0, #0x8c
	ldr r0, [r0]
	bx lr
	nop
_02049234: .word 0x02141924
	thumb_func_end sub_02049228

	thumb_func_start sub_02049238
sub_02049238: ; 0x02049238
	ldr r0, _02049244 ; =0x02141924
	ldr r0, [r0]
	add r0, #0x90
	ldr r0, [r0]
	bx lr
	nop
_02049244: .word 0x02141924
	thumb_func_end sub_02049238

	thumb_func_start sub_02049248
sub_02049248: ; 0x02049248
	cmp r0, #0
	beq _02049254
	cmp r0, #1
	beq _02049260
	cmp r0, #2
	beq _0204926C
_02049254:
	ldr r0, _02049278 ; =0x02141924
	ldr r1, _0204927C ; =sub_02049288
	ldr r0, [r0]
	add r0, #0x88
	str r1, [r0]
	bx lr
_02049260:
	ldr r0, _02049278 ; =0x02141924
	ldr r1, _02049280 ; =sub_020657B4
	ldr r0, [r0]
	add r0, #0x88
	str r1, [r0]
	bx lr
_0204926C:
	ldr r0, _02049278 ; =0x02141924
	ldr r1, _02049284 ; =sub_02065808
	ldr r0, [r0]
	add r0, #0x88
	str r1, [r0]
	bx lr
	.align 2, 0
_02049278: .word 0x02141924
_0204927C: .word sub_02049288
_02049280: .word sub_020657B4
_02049284: .word sub_02065808
	thumb_func_end sub_02049248

	thumb_func_start sub_02049288
sub_02049288: ; 0x02049288
	ldr r3, _0204928C ; =sub_0206578C
	bx r3
	.align 2, 0
_0204928C: .word sub_0206578C
	thumb_func_end sub_02049288

	thumb_func_start sub_02049290
sub_02049290: ; 0x02049290
	mov r0, #8
	bx lr
	thumb_func_end sub_02049290

	thumb_func_start sub_02049294
sub_02049294: ; 0x02049294
	cmp r1, #1
	beq _020492A2
	cmp r1, #2
	beq _020492A6
	cmp r1, #3
	beq _020492AA
	b _020492AE
_020492A2:
	mov r1, #2
	b _020492AC
_020492A6:
	mov r1, #3
	b _020492AC
_020492AA:
	mov r1, #4
_020492AC:
	strh r1, [r0, #2]
_020492AE:
	ldr r1, _020492B8 ; =0x000048BF
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	nop
_020492B8: .word 0x000048BF
	thumb_func_end sub_02049294

	thumb_func_start sub_020492BC
sub_020492BC: ; 0x020492BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, _02049324 ; =0x30415642
	cmp r0, r1
	bhi _020492E4
	bhs _02049312
	ldr r1, _02049328 ; =0x30414D42
	cmp r0, r1
	bhi _020492DC
	bhs _02049312
	ldr r1, _0204932C ; =0x30414342
	cmp r0, r1
	beq _02049312
	b _02049316
_020492DC:
	ldr r1, _02049330 ; =0x30415442
	cmp r0, r1
	beq _02049312
	b _02049316
_020492E4:
	ldr r1, _02049334 ; =0x30505442
	cmp r0, r1
	bhi _020492F4
	bhs _02049312
	ldr r1, _02049338 ; =0x30444D42
	cmp r0, r1
	beq _020492FC
	b _02049316
_020492F4:
	ldr r1, _0204933C ; =0x30585442
	cmp r0, r1
	beq _0204930E
	b _02049316
_020492FC:
	add r0, r4, #0
	bl sub_02068664
	cmp r0, #0
	bne _0204930A
	mov r0, #2
	b _02049318
_0204930A:
	mov r0, #1
	b _02049318
_0204930E:
	mov r0, #3
	b _02049318
_02049312:
	mov r0, #4
	b _02049318
_02049316:
	mov r0, #0
_02049318:
	strh r0, [r5, #2]
	ldr r0, _02049340 ; =0x000048BF
	str r4, [r5, #4]
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_02049324: .word 0x30415642
_02049328: .word 0x30414D42
_0204932C: .word 0x30414342
_02049330: .word 0x30415442
_02049334: .word 0x30505442
_02049338: .word 0x30444D42
_0204933C: .word 0x30585442
_02049340: .word 0x000048BF
	thumb_func_end sub_020492BC

	thumb_func_start sub_02049344
sub_02049344: ; 0x02049344
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r7, _0204937C ; =0x02141924
	str r0, [sp]
	ldr r0, [r7]
	add r6, r1, #0
	ldrh r0, [r0, #0x18]
	ldr r3, _02049380 ; =0x0209AEF8
	mov r1, #8
	mov r2, #0
	bl sub_0203A1FC
	ldr r2, [r7]
	add r4, r0, #0
	ldrh r2, [r2, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0204A934
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020492BC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204937C: .word 0x02141924
_02049380: .word 0x0209AEF8
	thumb_func_end sub_02049344

	thumb_func_start sub_02049384
sub_02049384: ; 0x02049384
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xb2
	lsl r0, r0, #2
	ldr r7, _020493BC ; =0x02141924
	str r0, [sp]
	ldr r0, [r7]
	add r6, r1, #0
	ldrh r0, [r0, #0x18]
	ldr r3, _020493C0 ; =0x0209AEF8
	mov r1, #8
	mov r2, #0
	bl sub_0203A1FC
	ldr r2, [r7]
	add r4, r0, #0
	ldrh r2, [r2, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0204AB1C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020492BC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020493BC: .word 0x02141924
_020493C0: .word 0x0209AEF8
	thumb_func_end sub_02049384

	thumb_func_start sub_020493C4
sub_020493C4: ; 0x020493C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r7, _020493FC ; =0x02141924
	str r0, [sp]
	ldr r0, [r7]
	add r6, r1, #0
	ldrh r0, [r0, #0x18]
	ldr r3, _02049400 ; =0x0209AEF8
	mov r1, #8
	mov r2, #0
	bl sub_0203A1FC
	ldr r2, [r7]
	add r4, r0, #0
	ldrh r2, [r2, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0204A960
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020492BC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020493FC: .word 0x02141924
_02049400: .word 0x0209AEF8
	thumb_func_end sub_020493C4

	thumb_func_start sub_02049404
sub_02049404: ; 0x02049404
	push {r4, lr}
	add r4, r0, #0
	beq _0204942A
	ldrh r1, [r4]
	ldr r0, _0204942C ; =0x000048BF
	cmp r1, r0
	bne _0204942A
	sub r0, r0, #1
	strh r0, [r4]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02049424
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #4]
_02049424:
	add r0, r4, #0
	bl sub_0203A24C
_0204942A:
	pop {r4, pc}
	.align 2, 0
_0204942C: .word 0x000048BF
	thumb_func_end sub_02049404

	thumb_func_start sub_02049430
sub_02049430: ; 0x02049430
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02049430

	thumb_func_start sub_02049434
sub_02049434: ; 0x02049434
	ldrh r2, [r0, #2]
	cmp r1, #3
	bhi _02049486
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049446: ; jump table
	.short _0204944E - _02049446 - 2 ; case 0
	.short _02049458 - _02049446 - 2 ; case 1
	.short _0204946C - _02049446 - 2 ; case 2
	.short _0204947C - _02049446 - 2 ; case 3
_0204944E:
	mov r0, #1
	cmp r2, #0
	beq _02049488
	mov r0, #0
	bx lr
_02049458:
	ldr r0, _0204948C ; =0x0000FFFF
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02049468
	mov r0, #1
	bx lr
_02049468:
	mov r0, #0
	bx lr
_0204946C:
	cmp r2, #1
	beq _02049474
	cmp r2, #3
	bne _02049478
_02049474:
	mov r0, #1
	bx lr
_02049478:
	mov r0, #0
	bx lr
_0204947C:
	mov r0, #1
	cmp r2, #4
	beq _02049488
	mov r0, #0
	bx lr
_02049486:
	mov r0, #0
_02049488:
	bx lr
	nop
_0204948C: .word 0x0000FFFF
	thumb_func_end sub_02049434

	thumb_func_start sub_02049490
sub_02049490: ; 0x02049490
	push {r4, lr}
	ldr r4, [r0, #4]
	add r0, r4, #0
	bl sub_02068664
	add r2, r0, #0
	ldr r1, [r2, #0x14]
	add r0, r4, #0
	add r1, r2, r1
	sub r1, r1, r4
	bl sub_0203A26C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02049490

	thumb_func_start sub_020494AC
sub_020494AC: ; 0x020494AC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, [r0, #4]
	add r0, r5, #0
	bl sub_02068664
	add r4, r0, #0
	beq _02049510
	add r1, sp, #8
	add r2, sp, #4
	bl sub_0204962C
	cmp r0, #0
	bne _020494CE
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_020494CE:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02049680
	cmp r0, #0
	bne _020494E0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_020494E0:
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl sub_020651FC
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_020652C8
	ldr r1, [r5, #8]
	add r0, r5, #0
	blx sub_0207B0AC
	add r0, r4, #0
	mov r1, #1
	bl sub_0206520C
	add r0, r4, #0
	mov r1, #1
	bl sub_020652CC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02049510:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020494AC

	thumb_func_start sub_02049518
sub_02049518: ; 0x02049518
	push {r4, lr}
	add r4, r0, #0
	bl sub_020494AC
	cmp r0, #0
	bne _02049528
	mov r0, #0
	pop {r4, pc}
_02049528:
	add r0, r4, #0
	bl sub_02049490
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_02049518

	thumb_func_start sub_02049534
sub_02049534: ; 0x02049534
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	bl sub_02068664
	add r4, r0, #0
	ldrh r1, [r4, #0x10]
	mov r0, #1
	mov r6, #0
	mov r5, #0
	tst r1, r0
	beq _0204954E
	add r6, r0, #0
_0204954E:
	ldrh r1, [r4, #0x20]
	mov r0, #1
	tst r1, r0
	beq _02049558
	add r5, r0, #0
_02049558:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02065288
	cmp r6, #0
	beq _0204956E
	ldr r1, _02049598 ; =0x0209B1AC
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
_0204956E:
	cmp r5, #0
	beq _0204957A
	ldr r1, _02049598 ; =0x0209B1AC
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
_0204957A:
	ldrh r1, [r4, #0x32]
	lsl r1, r1, #0x1f
	beq _02049592
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _02049592
	add r0, r4, #0
	bl sub_020652FC
	ldr r1, _0204959C ; =0x0209B1B4
	ldr r1, [r1]
	blx r1
_02049592:
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02049598: .word 0x0209B1AC
_0204959C: .word 0x0209B1B4
	thumb_func_end sub_02049534

	thumb_func_start sub_020495A0
sub_020495A0: ; 0x020495A0
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [r0, #4]
	bl sub_02068664
	add r4, r0, #0
	beq _020495EA
	add r1, sp, #8
	add r2, sp, #4
	bl sub_0204962C
	cmp r0, #0
	bne _020495C0
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_020495C0:
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02049680
	cmp r0, #0
	bne _020495D2
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_020495D2:
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl sub_020651FC
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_020652C8
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_020495EA:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_020495A0

	thumb_func_start sub_020495F0
sub_020495F0: ; 0x020495F0
	push {r3, r4, r5, lr}
	ldr r5, [r0, #4]
	add r0, r5, #0
	bl sub_02068664
	add r4, r0, #0
	beq _0204961A
	ldr r1, [r5, #8]
	add r0, r5, #0
	blx sub_0207B0AC
	add r0, r4, #0
	mov r1, #1
	bl sub_0206520C
	add r0, r4, #0
	mov r1, #1
	bl sub_020652CC
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204961A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_020495F0

	thumb_func_start sub_02049620
sub_02049620: ; 0x02049620
	ldr r0, [r0, #4]
	ldr r3, _02049628 ; =sub_02068664
	bx r3
	nop
_02049628: .word sub_02068664
	thumb_func_end sub_02049620

	thumb_func_start sub_0204962C
sub_0204962C: ; 0x0204962C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_020651DC
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020651EC
	add r7, r0, #0
	cmp r4, #0
	beq _0204965C
	ldr r3, _0204967C ; =0x0209B1A8
	add r0, r4, #0
	ldr r3, [r3]
	mov r1, #0
	mov r2, #0
	blx r3
	str r0, [r5]
	cmp r0, #0
	bne _0204965C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204965C:
	cmp r7, #0
	beq _02049678
	ldr r3, _0204967C ; =0x0209B1A8
	add r0, r4, #0
	ldr r3, [r3]
	mov r1, #1
	mov r2, #0
	mov r4, #0
	blx r3
	str r0, [r6]
	cmp r0, #0
	bne _02049678
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02049678:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204967C: .word 0x0209B1A8
	thumb_func_end sub_0204962C

	thumb_func_start sub_02049680
sub_02049680: ; 0x02049680
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_020652B8
	cmp r0, #0
	beq _020496AA
	ldrh r2, [r4, #0x20]
	ldr r3, _020496B0 ; =0x0209B1B0
	mov r1, #2
	lsl r1, r1, #0xe
	and r1, r2
	ldr r3, [r3]
	mov r2, #0
	mov r4, #0
	blx r3
	str r0, [r5]
	cmp r0, #0
	bne _020496AA
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_020496AA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020496B0: .word 0x0209B1B0
	thumb_func_end sub_02049680

	thumb_func_start sub_020496B4
sub_020496B4: ; 0x020496B4
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02068664
	ldrh r2, [r0, #0x10]
	mov r1, #1
	tst r2, r1
	bne _020496D0
	ldrh r2, [r0, #0x20]
	tst r2, r1
	bne _020496D0
	ldrh r0, [r0, #0x32]
	tst r0, r1
	beq _020496D4
_020496D0:
	mov r0, #1
	pop {r3, pc}
_020496D4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_020496B4

	thumb_func_start sub_020496D8
sub_020496D8: ; 0x020496D8
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02068664
	ldrh r2, [r0, #0x10]
	mov r1, #1
	tst r2, r1
	beq _020496EC
	ldr r0, [r0, #8]
	pop {r3, pc}
_020496EC:
	ldrh r2, [r0, #0x20]
	tst r1, r2
	beq _020496F6
	ldr r0, [r0, #0x18]
	pop {r3, pc}
_020496F6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020496D8

	thumb_func_start sub_020496FC
sub_020496FC: ; 0x020496FC
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02068664
	ldrh r2, [r0, #0x32]
	lsl r2, r2, #0x1f
	beq _0204970E
	ldr r0, [r0, #0x2c]
	pop {r3, pc}
_0204970E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020496FC

	thumb_func_start sub_02049714
sub_02049714: ; 0x02049714
	push {r3, lr}
	bl sub_02049620
	ldr r1, [r0, #0x14]
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_02049714

	thumb_func_start sub_02049720
sub_02049720: ; 0x02049720
	push {r3, lr}
	bl sub_02049620
	ldr r1, [r0, #0x38]
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_02049720

	thumb_func_start sub_0204972C
sub_0204972C: ; 0x0204972C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, [r0, #4]
	add r4, r1, #0
	add r5, r2, #0
	mov r7, #0
	bl sub_0206865C
	cmp r0, #0
	beq _0204976A
	add r2, r0, #0
	add r2, #8
	beq _0204975E
	ldrb r1, [r0, #9]
	cmp r4, r1
	bhs _0204975E
	ldrh r3, [r0, #0xe]
	add r1, r2, r3
	ldrh r2, [r2, r3]
	add r1, r1, #4
	add r3, r2, #0
	mul r3, r4
	add r1, r1, r3
	b _02049760
_0204975E:
	mov r1, #0
_02049760:
	cmp r1, #0
	beq _0204976A
	ldr r1, [r1]
	add r6, r0, r1
	b _0204976C
_0204976A:
	mov r6, #0
_0204976C:
	cmp r5, #0
	beq _02049778
	ldr r0, [r5, #4]
	bl sub_02068664
	add r7, r0, #0
_02049778:
	ldr r0, _020497C4 ; =0x00000608
	ldr r3, _020497C8 ; =0x0209AEF8
	str r0, [sp]
	ldr r0, _020497CC ; =0x02141924
	mov r1, #0x10
	ldr r0, [r0]
	mov r2, #0
	ldrh r0, [r0, #0x18]
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, _020497D0 ; =0x00007A14
	strh r0, [r4]
	ldr r0, [sp, #4]
	str r0, [r4, #8]
	ldr r0, _020497CC ; =0x02141924
	str r5, [r4, #0xc]
	ldr r0, [r0]
	bl sub_0206818C
	str r0, [r4, #4]
	cmp r7, #0
	beq _020497B6
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020653FC
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02065524
_020497B6:
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_02065028
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020497C4: .word 0x00000608
_020497C8: .word 0x0209AEF8
_020497CC: .word 0x02141924
_020497D0: .word 0x00007A14
	thumb_func_end sub_0204972C

	thumb_func_start sub_020497D4
sub_020497D4: ; 0x020497D4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	beq _020497F6
	ldrh r0, [r4]
	ldr r5, _020497F8 ; =0x00007A14
	cmp r0, r5
	bne _020497F6
	ldr r0, _020497FC ; =0x02141924
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl sub_02068198
	sub r0, r5, #1
	strh r0, [r4]
	add r0, r4, #0
	bl sub_0203A24C
_020497F6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_020497F8: .word 0x00007A14
_020497FC: .word 0x02141924
	thumb_func_end sub_020497D4

	thumb_func_start sub_02049800
sub_02049800: ; 0x02049800
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_02049800

	thumb_func_start sub_02049804
sub_02049804: ; 0x02049804
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_02049804

	thumb_func_start sub_02049808
sub_02049808: ; 0x02049808
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02049808

	thumb_func_start sub_0204980C
sub_0204980C: ; 0x0204980C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02049878 ; =0x000006D2
	add r7, r2, #0
	str r0, [sp]
	ldr r0, _0204987C ; =0x02141924
	mov r2, #0
	ldr r0, [r0]
	ldr r3, _02049880 ; =0x0209AEF8
	add r6, r1, #0
	str r2, [sp, #4]
	ldrh r0, [r0, #0x18]
	mov r1, #0xc
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, _02049884 ; =0x000059D1
	add r1, r7, #0
	strh r0, [r4]
	ldr r0, [r6, #4]
	str r6, [r4, #8]
	bl sub_0206868C
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r6, [r0, #4]
	add r0, r5, #0
	bl sub_02049804
	cmp r0, #0
	beq _02049858
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_02068664
	str r0, [sp, #4]
_02049858:
	ldr r0, _0204987C ; =0x02141924
	add r1, r7, #0
	ldr r0, [r0]
	add r2, r6, #0
	bl sub_020681A0
	ldr r3, [sp, #4]
	add r1, r7, #0
	add r2, r6, #0
	str r0, [r4, #4]
	bl sub_02064FC4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02049878: .word 0x000006D2
_0204987C: .word 0x02141924
_02049880: .word 0x0209AEF8
_02049884: .word 0x000059D1
	thumb_func_end sub_0204980C

	thumb_func_start sub_02049888
sub_02049888: ; 0x02049888
	push {r3, r4, r5, lr}
	add r4, r0, #0
	beq _020498AA
	ldrh r0, [r4]
	ldr r5, _020498AC ; =0x000059D1
	cmp r0, r5
	bne _020498AA
	ldr r0, _020498B0 ; =0x02141924
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl sub_020681B8
	sub r0, r5, #1
	strh r0, [r4]
	add r0, r4, #0
	bl sub_0203A24C
_020498AA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_020498AC: .word 0x000059D1
_020498B0: .word 0x02141924
	thumb_func_end sub_02049888

	thumb_func_start sub_020498B4
sub_020498B4: ; 0x020498B4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_020498B4

	thumb_func_start sub_020498B8
sub_020498B8: ; 0x020498B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _02049924 ; =0x0000075A
	add r7, r1, #0
	str r0, [sp, #8]
	str r0, [sp]
	ldr r0, _02049928 ; =0x02141924
	add r6, r2, #0
	ldr r0, [r0]
	ldr r3, _0204992C ; =0x0209AEF8
	ldrh r0, [r0, #0x18]
	mov r1, #0xc
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, _02049930 ; =0x00002185
	cmp r6, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #4]
	str r0, [r4]
	strh r6, [r4, #8]
	bne _020498EE
	str r5, [r4, #4]
	b _0204991E
_020498EE:
	ldr r0, [sp, #8]
	ldr r3, _0204992C ; =0x0209AEF8
	add r0, #0xa
	str r0, [sp, #8]
	str r0, [sp]
	ldr r0, _02049928 ; =0x02141924
	lsl r1, r6, #2
	ldr r0, [r0]
	mov r2, #1
	ldrh r0, [r0, #0x18]
	bl sub_0203A1FC
	str r0, [r4, #4]
	cmp r7, #0
	beq _0204991E
	cmp r6, #0
	ble _0204991E
_02049910:
	lsl r2, r5, #2
	ldr r1, [r7, r2]
	ldr r0, [r4, #4]
	add r5, r5, #1
	str r1, [r0, r2]
	cmp r5, r6
	blt _02049910
_0204991E:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02049924: .word 0x0000075A
_02049928: .word 0x02141924
_0204992C: .word 0x0209AEF8
_02049930: .word 0x00002185
	thumb_func_end sub_020498B8

	thumb_func_start sub_02049934
sub_02049934: ; 0x02049934
	push {r4, lr}
	add r4, r0, #0
	beq _0204995A
	ldrh r1, [r4, #0xa]
	ldr r0, _0204995C ; =0x00002185
	cmp r1, r0
	bne _0204995A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02049950
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #4]
_02049950:
	ldr r0, _02049960 ; =0x00002184
	strh r0, [r4, #0xa]
	add r0, r4, #0
	bl sub_0203A24C
_0204995A:
	pop {r4, pc}
	.align 2, 0
_0204995C: .word 0x00002185
_02049960: .word 0x00002184
	thumb_func_end sub_02049934

	thumb_func_start sub_02049964
sub_02049964: ; 0x02049964
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_02049964

	thumb_func_start sub_02049968
sub_02049968: ; 0x02049968
	ldr r2, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	bx lr
	thumb_func_end sub_02049968

	thumb_func_start sub_02049970
sub_02049970: ; 0x02049970
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_02049970

	thumb_func_start sub_02049974
sub_02049974: ; 0x02049974
	push {r3, lr}
	ldr r2, [r0, #4]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _02049984
	mov r0, #0
	pop {r3, pc}
_02049984:
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	bl sub_0206510C
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02049974

	thumb_func_start sub_02049994
sub_02049994: ; 0x02049994
	push {r3, lr}
	ldr r2, [r0, #4]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _020499A4
	mov r0, #0
	pop {r3, pc}
_020499A4:
	ldr r0, [r0]
	ldr r1, [r1, #4]
	ldr r0, [r0, #4]
	bl sub_020651A4
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_02049994

	thumb_func_start sub_020499B4
sub_020499B4: ; 0x020499B4
	ldr r2, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _020499C2
	mov r0, #0
	bx lr
_020499C2:
	ldr r0, [r0, #4]
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	bx lr
	thumb_func_end sub_020499B4

	thumb_func_start sub_020499CC
sub_020499CC: ; 0x020499CC
	ldr r3, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _020499DA
	mov r0, #0
	bx lr
_020499DA:
	ldr r0, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	mov r0, #1
	bx lr
	thumb_func_end sub_020499CC

	thumb_func_start sub_020499E4
sub_020499E4: ; 0x020499E4
	ldr r3, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _020499F2
	mov r0, #0
	bx lr
_020499F2:
	ldr r3, [r0, #4]
	ldr r0, [r3, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [r2]
	cmp r0, r1
	blt _02049A04
	str r1, [r3]
	b _02049A06
_02049A04:
	str r0, [r3]
_02049A06:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_020499E4

	thumb_func_start sub_02049A0C
sub_02049A0C: ; 0x02049A0C
	ldr r3, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _02049A1A
	mov r0, #0
	bx lr
_02049A1A:
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	str r0, [r2]
	mov r0, #1
	bx lr
	thumb_func_end sub_02049A0C

	thumb_func_start sub_02049A28
sub_02049A28: ; 0x02049A28
	ldr r3, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _02049A36
	mov r0, #0
	bx lr
_02049A36:
	ldr r1, [r0, #4]
	ldr r0, [r1]
	add r3, r0, r2
	str r3, [r1]
	ldr r0, [r1, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r3, r2
	blt _02049A54
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r2, r0
	str r0, [r1]
	mov r0, #0
	bx lr
_02049A54:
	cmp r3, #0
	bge _02049A5E
	mov r0, #0
	str r0, [r1]
	bx lr
_02049A5E:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_02049A28

	thumb_func_start sub_02049A64
sub_02049A64: ; 0x02049A64
	ldr r3, [r0, #4]
	lsl r0, r1, #2
	ldr r0, [r3, r0]
	cmp r0, #0
	bne _02049A72
	mov r0, #0
	bx lr
_02049A72:
	ldr r3, [r0, #4]
	ldr r0, [r3]
	add r1, r0, r2
	str r1, [r3]
	ldr r0, [r3, #8]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _02049A8A
	mov r0, #0
	str r0, [r3]
	bx lr
_02049A8A:
	cmp r1, #0
	bge _02049A94
	str r0, [r3]
	mov r0, #0
	bx lr
_02049A94:
	mov r0, #1
	bx lr
	thumb_func_end sub_02049A64

	thumb_func_start sub_02049A98
sub_02049A98: ; 0x02049A98
	ldr r3, _02049A9C ; =sub_02074D54
	bx r3
	.align 2, 0
_02049A9C: .word sub_02074D54
	thumb_func_end sub_02049A98

	thumb_func_start sub_02049AA0
sub_02049AA0: ; 0x02049AA0
	push {r3, lr}
	bl sub_02067B9C
	ldr r0, _02049AB4 ; =0x02141924
	mov r1, #1
	ldr r0, [r0]
	add r0, #0x94
	str r1, [r0]
	pop {r3, pc}
	nop
_02049AB4: .word 0x02141924
	thumb_func_end sub_02049AA0

	thumb_func_start sub_02049AB8
sub_02049AB8: ; 0x02049AB8
	ldr r1, _02049AE8 ; =0x02141924
	ldr r2, [r1]
	cmp r2, #0
	beq _02049AE4
	add r0, r2, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #1
	bne _02049AE4
	add r0, r2, #0
	add r0, #0x84
	ldr r0, [r0]
	add r2, #0x80
	ldr r2, [r2]
	lsl r0, r0, #1
	orr r2, r0
	ldr r0, _02049AEC ; =0x04000540
	str r2, [r0]
	ldr r0, [r1]
	mov r2, #0
	add r0, #0x94
	str r2, [r0]
_02049AE4:
	bx lr
	nop
_02049AE8: .word 0x02141924
_02049AEC: .word 0x04000540
	thumb_func_end sub_02049AB8

	thumb_func_start sub_02049AF0
sub_02049AF0: ; 0x02049AF0
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02049B44 ; =0x02141924
	ldr r5, _02049B48 ; =0x02143C4C
	ldr r4, [r7]
	add r3, r4, #0
	add r2, r4, #0
	add r4, #0x5c
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r2, #0x68
	str r0, [r5]
	add r6, r2, #0
	ldr r5, _02049B4C ; =0x02143C58
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r3, #0x74
	str r0, [r5]
	add r6, r3, #0
	ldr r5, _02049B50 ; =0x02143C64
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [r5]
	ldr r3, _02049B54 ; =0x02143A58
	add r0, r4, #0
	blx MTX_LookAt
	ldr r1, _02049B58 ; =0x02143A8C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	ldr r0, [r7]
	str r2, [r1, #0x7c]
	add r0, #0x88
	ldr r0, [r0]
	blx r0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02049B44: .word 0x02141924
_02049B48: .word 0x02143C4C
_02049B4C: .word 0x02143C58
_02049B50: .word 0x02143C64
_02049B54: .word 0x02143A58
_02049B58: .word 0x02143A8C
	thumb_func_end sub_02049AF0

	thumb_func_start sub_02049B5C
sub_02049B5C: ; 0x02049B5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02049964
	bl sub_02049808
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020658A4
	add r0, r5, #0
	ldr r1, _02049BA0 ; =0x02143AC8
	add r0, #0x18
	blx sub_0207873C
	ldr r1, _02049BA4 ; =0x02143A8C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	add r5, #0xc
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl sub_020658C8
	ldr r0, _02049BA8 ; =0x02141924
	ldr r0, [r0]
	add r0, #0x88
	ldr r0, [r0]
	blx r0
	add r0, r4, #0
	bl sub_02049CDC
	pop {r3, r4, r5, pc}
	nop
_02049BA0: .word 0x02143AC8
_02049BA4: .word 0x02143A8C
_02049BA8: .word 0x02141924
	thumb_func_end sub_02049B5C

	thumb_func_start sub_02049BAC
sub_02049BAC: ; 0x02049BAC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02049964
	bl sub_02049808
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020658A4
	add r0, r4, #0
	ldr r1, _02049C00 ; =0x02143AC8
	add r0, #0x18
	blx sub_0207873C
	ldr r1, _02049C04 ; =0x02143A8C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	add r4, #0xc
	bic r2, r0
	add r0, r4, #0
	str r2, [r1, #0x7c]
	bl sub_020658C8
	ldr r0, _02049C08 ; =0x02141924
	ldr r0, [r0]
	add r0, #0x88
	ldr r0, [r0]
	blx r0
	add r0, r5, #0
	bl sub_02049C0C
	add r4, r0, #0
	cmp r4, #1
	bne _02049BFA
	add r0, r6, #0
	bl sub_02049CDC
_02049BFA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02049C00: .word 0x02143AC8
_02049C04: .word 0x02143A8C
_02049C08: .word 0x02141924
	thumb_func_end sub_02049BAC

	thumb_func_start sub_02049C0C
sub_02049C0C: ; 0x02049C0C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r4, #1
	bl sub_02049964
	bl sub_02049808
	ldr r5, [r0, #4]
	cmp r5, #0
	beq _02049C24
	add r5, #0x14
	b _02049C26
_02049C24:
	mov r5, #0
_02049C26:
	mov r0, #0x18
	ldrsh r1, [r5, r0]
	add r0, sp, #0
	mov r2, #0
	strh r1, [r0, #0x10]
	mov r1, #0x1a
	ldrsh r1, [r5, r1]
	mov r6, #0
	strh r1, [r0, #0x12]
	mov r1, #0x1c
	ldrsh r1, [r5, r1]
	strh r1, [r0, #0x14]
	mov r1, #0x1e
	ldrsh r1, [r5, r1]
	strh r1, [r0, #0x16]
	mov r1, #0x20
	ldrsh r1, [r5, r1]
	strh r1, [r0, #0x18]
	mov r1, #0x22
	ldrsh r1, [r5, r1]
	strh r1, [r0, #0x1a]
	mov r0, #0x11
	mov r1, #0
	bl sub_02067D1C
	ldr r0, [r5, #0x24]
	add r1, sp, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x1b
	mov r2, #3
	bl sub_02067D1C
	add r0, sp, #0x10
	bl sub_02049C88
	cmp r0, #0
	bne _02049C76
	add r4, r6, #0
_02049C76:
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_02067D1C
	add r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02049C0C

	thumb_func_start sub_02049C88
sub_02049C88: ; 0x02049C88
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _02049CD8 ; =0x000030C1
	add r1, sp, #4
	str r0, [sp, #4]
	mov r0, #0x29
	mov r2, #1
	bl sub_02067D1C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	add r1, sp, #0
	mov r2, #1
	bl sub_02067D1C
	mov r0, #0x41
	mov r1, #0
	mov r2, #0
	bl sub_02067D1C
	mov r0, #0x70
	add r1, r4, #0
	mov r2, #3
	bl sub_02067D1C
	bl sub_02067B9C
	add r4, sp, #8
_02049CC8:
	add r0, r4, #0
	bl sub_0207504C
	cmp r0, #0
	bne _02049CC8
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02049CD8: .word 0x000030C1
	thumb_func_end sub_02049C88

	thumb_func_start sub_02049CDC
sub_02049CDC: ; 0x02049CDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #4]
	ldr r1, _02049D10 ; =0x02141924
	ldrh r2, [r5, #0x26]
	ldr r3, [r1, #4]
	add r2, r3, r2
	str r2, [r1, #4]
	ldrh r2, [r5, #0x24]
	ldr r3, [r1, #8]
	add r2, r3, r2
	str r2, [r1, #8]
	ldr r3, [r1]
	add r1, r3, #0
	add r1, #0x98
	ldr r2, [r1]
	cmp r2, #0
	beq _02049D06
	add r3, #0x9c
	ldr r1, [r3]
	blx r2
_02049D06:
	add r0, r4, #0
	bl sub_02066300
	pop {r3, r4, r5, pc}
	nop
_02049D10: .word 0x02141924
	thumb_func_end sub_02049CDC

	thumb_func_start sub_02049D14
sub_02049D14: ; 0x02049D14
	ldr r0, _02049D20 ; =0x02141924
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	nop
_02049D20: .word 0x02141924
	thumb_func_end sub_02049D14

	thumb_func_start sub_02049D24
sub_02049D24: ; 0x02049D24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x5c
	mov r1, #0x86
	str r0, [sp]
	ldr r3, _02049DD4 ; =0x0209AF08
	add r0, r7, #0
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	sub r0, r0, #2
	strh r7, [r4, r0]
	mov r0, #0x61
	str r0, [sp]
	ldr r3, _02049DD4 ; =0x0209AF08
	add r0, r7, #0
	lsl r1, r5, #2
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4]
	mov r0, #0x62
	str r0, [sp]
	ldr r3, _02049DD4 ; =0x0209AF08
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #4]
	mov r2, #0
	strh r5, [r4, #8]
	cmp r5, #0
	ble _02049D80
	add r1, r2, #0
_02049D76:
	ldr r0, [r4, #4]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, r5
	blt _02049D76
_02049D80:
	ldr r5, _02049DD4 ; =0x0209AF08
	mov r0, #0x69
	str r0, [sp]
	add r0, r7, #0
	lsl r1, r6, #2
	mov r2, #1
	add r3, r5, #0
	bl sub_0203A1FC
	str r0, [r4, #0xc]
	mov r0, #0x6a
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_0203A1FC
	str r0, [r4, #0x10]
	mov r2, #0
	strh r6, [r4, #0x14]
	cmp r6, #0
	ble _02049DBA
	add r1, r2, #0
_02049DB0:
	ldr r0, [r4, #0x10]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, r6
	blt _02049DB0
_02049DBA:
	ldr r0, _02049DD8 ; =0x0000FFFF
	mov r2, #0
_02049DBE:
	lsl r1, r2, #3
	add r1, r4, r1
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	strh r0, [r1, #0x1a]
	add r2, r2, #1
	strh r0, [r1, #0x1c]
	cmp r2, #0x40
	blt _02049DBE
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02049DD4: .word 0x0209AF08
_02049DD8: .word 0x0000FFFF
	thumb_func_end sub_02049D24

	thumb_func_start sub_02049DDC
sub_02049DDC: ; 0x02049DDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0203A24C
	ldr r0, [r4, #0xc]
	bl sub_0203A24C
	ldr r0, [r4, #4]
	bl sub_0203A24C
	ldr r0, [r4]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_02049DDC

	thumb_func_start sub_02049E00
sub_02049E00: ; 0x02049E00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02049E64 ; =0x0000FFFF
	add r7, r1, #0
	mov r3, #0
	mov r6, #0
	mov r4, #0
_02049E0E:
	lsl r1, r4, #3
	add r2, r5, r1
	ldrh r1, [r2, #0x16]
	cmp r1, r0
	bne _02049E48
	ldrh r0, [r7, #4]
	strh r3, [r2, #0x16]
	lsl r1, r4, #0x10
	strh r0, [r2, #0x18]
	ldrh r0, [r7, #0xc]
	strh r6, [r2, #0x1a]
	ldr r6, _02049E68 ; =0x00000216
	strh r0, [r2, #0x1c]
	ldrh r3, [r5, r6]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02049F74
	lsl r1, r4, #0x10
	ldrh r3, [r5, r6]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0204A104
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02049E48:
	ldrh r3, [r2, #0x18]
	add r4, r4, #1
	add r1, r1, r3
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	ldrh r1, [r2, #0x1a]
	ldrh r2, [r2, #0x1c]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	cmp r4, #0x40
	blt _02049E0E
	ldr r0, _02049E64 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02049E64: .word 0x0000FFFF
_02049E68: .word 0x00000216
	thumb_func_end sub_02049E00

	thumb_func_start sub_02049E6C
sub_02049E6C: ; 0x02049E6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02049ED0 ; =0x0000FFFF
	add r7, r1, #0
	mov r3, #0
	mov r6, #0
	mov r4, #0
_02049E7A:
	lsl r1, r4, #3
	add r2, r5, r1
	ldrh r1, [r2, #0x16]
	cmp r1, r0
	bne _02049EB4
	ldrh r0, [r7, #4]
	strh r3, [r2, #0x16]
	lsl r1, r4, #0x10
	strh r0, [r2, #0x18]
	ldrh r0, [r7, #0xc]
	strh r6, [r2, #0x1a]
	ldr r6, _02049ED4 ; =0x00000216
	strh r0, [r2, #0x1c]
	ldrh r3, [r5, r6]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02049F74
	lsl r1, r4, #0x10
	ldrh r3, [r5, r6]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0204A3C0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02049EB4:
	ldrh r3, [r2, #0x18]
	add r4, r4, #1
	add r1, r1, r3
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	ldrh r1, [r2, #0x1a]
	ldrh r2, [r2, #0x1c]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	cmp r4, #0x40
	blt _02049E7A
	ldr r0, _02049ED0 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02049ED0: .word 0x0000FFFF
_02049ED4: .word 0x00000216
	thumb_func_end sub_02049E6C

	thumb_func_start sub_02049ED8
sub_02049ED8: ; 0x02049ED8
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _02049F44 ; =0x0000FFFF
	mov ip, r2
	add r5, r0, #0
	add r7, r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
_02049EE8:
	lsl r0, r4, #3
	add r1, r5, r0
	ldrh r0, [r1, #0x16]
	cmp r0, r6
	bne _02049F26
	ldrh r0, [r7, #4]
	strh r2, [r1, #0x16]
	ldr r6, _02049F48 ; =0x00000216
	strh r0, [r1, #0x18]
	ldrh r0, [r7, #0xc]
	strh r3, [r1, #0x1a]
	add r2, r7, #0
	strh r0, [r1, #0x1c]
	mov r0, ip
	str r0, [sp]
	lsl r1, r4, #0x10
	ldrh r3, [r5, r6]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0204A074
	lsl r1, r4, #0x10
	ldrh r3, [r5, r6]
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0204A3C0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02049F26:
	ldrh r2, [r1, #0x18]
	add r4, r4, #1
	add r0, r0, r2
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldrh r0, [r1, #0x1a]
	ldrh r1, [r1, #0x1c]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r4, #0x40
	blt _02049EE8
	ldr r0, _02049F44 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02049F44: .word 0x0000FFFF
_02049F48: .word 0x00000216
	thumb_func_end sub_02049ED8

	thumb_func_start sub_02049F4C
sub_02049F4C: ; 0x02049F4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0204A4F8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0204A0B0
	lsl r0, r5, #3
	ldr r1, _02049F70 ; =0x0000FFFF
	add r0, r4, r0
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	pop {r3, r4, r5, pc}
	nop
_02049F70: .word 0x0000FFFF
	thumb_func_end sub_02049F4C

	thumb_func_start sub_02049F74
sub_02049F74: ; 0x02049F74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	lsl r0, r1, #3
	add r1, r4, r0
	ldrh r0, [r1, #0x16]
	str r2, [sp, #4]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r1, #0x18]
	str r0, [sp, #8]
	cmp r0, #0
	ble _0204A068
	ldr r0, _0204A06C ; =0x00000163
	str r0, [sp, #0x14]
	sub r0, #0xd
	str r0, [sp, #0x14]
	ldr r0, _0204A06C ; =0x00000163
	str r0, [sp, #0x2c]
	add r0, #0xb3
	str r0, [sp, #0x2c]
	ldr r0, _0204A06C ; =0x00000163
	str r0, [sp, #0x28]
	add r0, #0xb3
	str r0, [sp, #0x28]
	ldr r0, _0204A06C ; =0x00000163
	str r0, [sp, #0x24]
	add r0, #0xb3
	str r0, [sp, #0x24]
	ldr r0, _0204A06C ; =0x00000163
	str r0, [sp, #0x20]
	add r0, #0xb3
	str r0, [sp, #0x20]
_02049FB8:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	lsl r7, r0, #2
	ldr r0, [sp, #4]
	mov r1, #0xc
	ldr r0, [r0]
	mul r1, r2
	add r5, r0, r1
	ldr r0, [r5, #8]
	ldr r6, [r4]
	cmp r0, #3
	bhi _0204A05C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02049FE0: ; jump table
	.short _02049FE8 - _02049FE0 - 2 ; case 0
	.short _02049FF2 - _02049FE0 - 2 ; case 1
	.short _02049FFC - _02049FE0 - 2 ; case 2
	.short _0204A02C - _02049FE0 - 2 ; case 3
_02049FE8:
	ldrh r1, [r5, #4]
	ldr r0, [r5]
	bl sub_02049344
	b _0204A05A
_02049FF2:
	ldrh r1, [r5, #4]
	ldr r0, [r5]
	bl sub_020493C4
	b _0204A05A
_02049FFC:
	bl sub_02049290
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r3, _0204A070 ; =0x0209AF08
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #0
	ldrh r0, [r4, r0]
	bl sub_0203A1FC
	ldr r2, [sp, #0x20]
	str r0, [sp, #0x18]
	ldrh r1, [r5, #4]
	ldrh r2, [r4, r2]
	ldr r0, [r5]
	bl sub_0204A934
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_020492BC
	ldr r0, [sp, #0x18]
	b _0204A05A
_0204A02C:
	bl sub_02049290
	add r1, r0, #0
	ldr r0, _0204A06C ; =0x00000163
	ldr r3, _0204A070 ; =0x0209AF08
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r2, #0
	ldrh r0, [r4, r0]
	bl sub_0203A1FC
	ldr r2, [sp, #0x28]
	str r0, [sp, #0x1c]
	ldrh r1, [r5, #4]
	ldrh r2, [r4, r2]
	ldr r0, [r5]
	bl sub_0204A960
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_020492BC
	ldr r0, [sp, #0x1c]
_0204A05A:
	str r0, [r6, r7]
_0204A05C:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02049FB8
_0204A068:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204A06C: .word 0x00000163
_0204A070: .word 0x0209AF08
	thumb_func_end sub_02049F74

	thumb_func_start sub_0204A074
sub_0204A074: ; 0x0204A074
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #0x18]
	lsl r0, r1, #3
	add r1, r5, r0
	ldrh r6, [r1, #0x18]
	mov r4, #0
	ldrh r0, [r1, #0x16]
	cmp r6, #0
	ble _0204A0AE
	lsl r7, r0, #2
_0204A08E:
	ldr r1, [sp]
	mov r2, #0xc
	ldr r1, [r1]
	mul r2, r4
	add r1, r1, r2
	ldrh r1, [r1, #4]
	ldr r0, [sp, #0x18]
	bl sub_02049384
	ldr r1, [r5]
	lsl r2, r4, #2
	add r1, r7, r1
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, r6
	blt _0204A08E
_0204A0AE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A074

	thumb_func_start sub_0204A0B0
sub_0204A0B0: ; 0x0204A0B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	lsl r0, r1, #3
	add r0, r6, r0
	ldrh r7, [r0, #0x16]
	ldrh r0, [r0, #0x18]
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _0204A100
	lsl r0, r7, #2
	str r0, [sp, #4]
_0204A0CA:
	ldr r2, [r6]
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r5, [r1, r0]
	cmp r5, #0
	beq _0204A0F8
	ldr r0, [r6, #4]
	add r1, r7, r0
	mov r0, #0
	strb r0, [r4, r1]
	add r0, r5, #0
	mov r1, #2
	bl sub_02049434
	cmp r0, #1
	bne _0204A0F2
	add r0, r5, #0
	bl sub_02049534
_0204A0F2:
	add r0, r5, #0
	bl sub_02049404
_0204A0F8:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0204A0CA
_0204A100:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A0B0

	thumb_func_start sub_0204A104
sub_0204A104: ; 0x0204A104
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r0, #0
	lsl r0, r1, #3
	add r1, r4, r0
	ldrh r0, [r1, #0x16]
	str r2, [sp, #4]
	str r0, [sp, #0x20]
	ldrh r0, [r1, #0x1a]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r1, #0x1c]
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _0204A126
	b _0204A3A6
_0204A126:
	ldr r0, [sp, #0x20]
	add r1, r3, #0
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, _0204A3AC ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
_0204A13E:
	ldr r0, [sp, #4]
	ldr r2, [r4, #4]
	ldr r1, [r0, #8]
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r5, r1, r0
	ldrh r0, [r1, r0]
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _0204A1EA
	ldr r1, [sp, #4]
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r0
	add r6, r2, r1
	ldr r0, [r6, #8]
	cmp r0, #3
	bhi _0204A1E6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204A172: ; jump table
	.short _0204A17A - _0204A172 - 2 ; case 0
	.short _0204A186 - _0204A172 - 2 ; case 1
	.short _0204A190 - _0204A172 - 2 ; case 2
	.short _0204A1B8 - _0204A172 - 2 ; case 3
_0204A17A:
	ldrh r1, [r6, #4]
	ldr r0, [r6]
	bl sub_02049344
_0204A182:
	str r0, [sp, #0x30]
	b _0204A1E6
_0204A186:
	ldrh r1, [r6, #4]
	ldr r0, [r6]
	bl sub_020493C4
	b _0204A182
_0204A190:
	bl sub_02049290
	ldr r7, _0204A3B0 ; =0x00000156
	add r1, r0, #0
	add r0, r7, #0
	str r7, [sp]
	add r0, #0xc0
	ldrh r0, [r4, r0]
	ldr r3, _0204A3B4 ; =0x0209AF08
	mov r2, #0
	bl sub_0203A1FC
	add r7, #0xc0
	str r0, [sp, #0x30]
	ldrh r1, [r6, #4]
	ldrh r2, [r4, r7]
	ldr r0, [r6]
	bl sub_0204A934
	b _0204A1DE
_0204A1B8:
	bl sub_02049290
	ldr r7, _0204A3B8 ; =0x00000163
	add r1, r0, #0
	add r0, r7, #0
	str r7, [sp]
	add r0, #0xb3
	ldrh r0, [r4, r0]
	ldr r3, _0204A3B4 ; =0x0209AF08
	mov r2, #0
	bl sub_0203A1FC
	add r7, #0xb3
	str r0, [sp, #0x30]
	ldrh r1, [r6, #4]
	ldrh r2, [r4, r7]
	ldr r0, [r6]
	bl sub_0204A960
_0204A1DE:
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	bl sub_020492BC
_0204A1E6:
	mov r0, #1
	b _0204A1FC
_0204A1EA:
	mov r1, #1
	strb r1, [r2, r0]
	lsl r1, r0, #2
	ldr r2, [r4]
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	ldr r0, [r1, r0]
	str r0, [sp, #0x30]
	mov r0, #0
_0204A1FC:
	cmp r0, #1
	bne _0204A212
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, [sp, #8]
	ldrb r2, [r0, r1]
	mov r1, #1
	orr r2, r1
	ldr r1, [sp, #8]
	strb r2, [r0, r1]
_0204A212:
	ldrh r1, [r5, #4]
	ldrh r0, [r5]
	cmp r1, r0
	beq _0204A30C
	ldr r2, [r4]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	mov r1, #1
	mov r6, #1
	bl sub_02049434
	cmp r0, #1
	bne _0204A2FC
	ldrh r0, [r5, #4]
	ldr r2, [r4, #4]
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _0204A2D2
	ldr r1, [sp, #4]
	ldr r2, [r1]
	mov r1, #0xc
	mul r1, r0
	add r6, r2, r1
	ldr r0, [r6, #8]
	cmp r0, #3
	bhi _0204A2CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204A25A: ; jump table
	.short _0204A262 - _0204A25A - 2 ; case 0
	.short _0204A26E - _0204A25A - 2 ; case 1
	.short _0204A278 - _0204A25A - 2 ; case 2
	.short _0204A2A0 - _0204A25A - 2 ; case 3
_0204A262:
	ldrh r1, [r6, #4]
	ldr r0, [r6]
	bl sub_02049344
_0204A26A:
	str r0, [sp, #0x2c]
	b _0204A2CE
_0204A26E:
	ldrh r1, [r6, #4]
	ldr r0, [r6]
	bl sub_020493C4
	b _0204A26A
_0204A278:
	bl sub_02049290
	ldr r7, _0204A3B0 ; =0x00000156
	add r1, r0, #0
	add r0, r7, #0
	str r7, [sp]
	add r0, #0xc0
	ldrh r0, [r4, r0]
	ldr r3, _0204A3B4 ; =0x0209AF08
	mov r2, #0
	bl sub_0203A1FC
	add r7, #0xc0
	str r0, [sp, #0x2c]
	ldrh r1, [r6, #4]
	ldrh r2, [r4, r7]
	ldr r0, [r6]
	bl sub_0204A934
	b _0204A2C6
_0204A2A0:
	bl sub_02049290
	ldr r7, _0204A3B8 ; =0x00000163
	add r1, r0, #0
	add r0, r7, #0
	str r7, [sp]
	add r0, #0xb3
	ldrh r0, [r4, r0]
	ldr r3, _0204A3B4 ; =0x0209AF08
	mov r2, #0
	bl sub_0203A1FC
	add r7, #0xb3
	str r0, [sp, #0x2c]
	ldrh r1, [r6, #4]
	ldrh r2, [r4, r7]
	ldr r0, [r6]
	bl sub_0204A960
_0204A2C6:
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl sub_020492BC
_0204A2CE:
	mov r0, #1
	b _0204A2E2
_0204A2D2:
	strb r6, [r2, r0]
	lsl r1, r0, #2
	ldr r2, [r4]
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
	mov r0, #0
_0204A2E2:
	cmp r0, #1
	bne _0204A31E
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, [sp, #8]
	ldrb r2, [r0, r1]
	mov r1, #2
	orr r2, r1
	ldr r1, [sp, #8]
	strb r2, [r0, r1]
	ldr r0, [sp, #0x2c]
	b _0204A31A
_0204A2FC:
	ldrh r0, [r5, #4]
	ldr r2, [r4]
	lsl r1, r0, #2
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
	b _0204A31A
_0204A30C:
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	bl sub_020496B4
	cmp r0, #0
	bne _0204A31E
	ldr r0, [sp, #0x30]
_0204A31A:
	bl sub_020494AC
_0204A31E:
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	bl sub_0204972C
	str r0, [sp, #0x28]
	ldr r0, _0204A3BC ; =0x00000216
	ldr r3, _0204A3B4 ; =0x0209AF08
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldrh r1, [r5, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	ldrh r2, [r5, #0xc]
	mov r6, #0
	str r0, [sp, #0x24]
	cmp r2, #0
	ble _0204A37E
_0204A34A:
	lsl r0, r6, #2
	str r0, [sp, #0x34]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x34]
	add r7, r0, r1
	ldrh r1, [r0, r1]
	cmp r1, #0xff
	bne _0204A35E
	mov r0, #0
	b _0204A370
_0204A35E:
	lsl r3, r1, #2
	ldr r2, [r4]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r1, r1, r2
	ldrh r2, [r7, #2]
	ldr r1, [r3, r1]
	bl sub_0204980C
_0204A370:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x34]
	add r6, r6, #1
	str r0, [r2, r1]
	ldrh r2, [r5, #0xc]
	cmp r6, r2
	blt _0204A34A
_0204A37E:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	bl sub_020498B8
	ldr r1, [sp, #8]
	ldr r3, [r4, #0xc]
	lsl r2, r1, #2
	ldr r1, [sp, #0x10]
	add r1, r1, r3
	str r0, [r2, r1]
	ldr r0, [sp, #0x24]
	bl sub_0203A24C
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	bge _0204A3A6
	b _0204A13E
_0204A3A6:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204A3AC: .word 0x00007FFF
_0204A3B0: .word 0x00000156
_0204A3B4: .word 0x0209AF08
_0204A3B8: .word 0x00000163
_0204A3BC: .word 0x00000216
	thumb_func_end sub_0204A104

	thumb_func_start sub_0204A3C0
sub_0204A3C0: ; 0x0204A3C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	lsl r0, r1, #3
	str r2, [sp, #4]
	add r2, r7, r0
	mov r1, #0
	ldrh r0, [r2, #0x16]
	str r1, [sp, #8]
	ldrh r1, [r2, #0x1c]
	str r0, [sp, #0x1c]
	ldrh r0, [r2, #0x1a]
	str r1, [sp, #0xc]
	cmp r1, #0
	bgt _0204A3E0
	b _0204A4E8
_0204A3E0:
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #2
	lsl r1, r1, #2
	str r1, [sp, #0x18]
	ldr r1, _0204A4EC ; =0x00007FFF
	add r2, r3, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
_0204A3F6:
	ldr r0, [sp, #4]
	ldr r5, [r7, #4]
	ldr r3, [r0, #8]
	ldr r0, [sp, #8]
	mov r6, #1
	lsl r2, r0, #4
	ldr r0, [sp, #0x1c]
	ldrh r1, [r3, r2]
	add r0, r0, r5
	add r4, r3, r2
	strb r6, [r1, r0]
	ldr r5, [r7]
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r0, r0, r5
	ldr r5, [r0, r1]
	ldrh r1, [r4, #4]
	ldrh r2, [r3, r2]
	cmp r1, r2
	beq _0204A452
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	bl sub_02049434
	cmp r0, #1
	bne _0204A442
	ldrh r0, [r4, #4]
	ldr r2, [r7, #4]
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	strb r6, [r0, r1]
	lsl r1, r0, #2
	ldr r2, [r7]
	ldr r0, [sp, #0x18]
	add r0, r0, r2
	ldr r6, [r1, r0]
	b _0204A464
_0204A442:
	ldrh r0, [r4, #4]
	ldr r2, [r7]
	lsl r1, r0, #2
	ldr r0, [sp, #0x18]
	add r0, r0, r2
	ldr r6, [r1, r0]
	add r0, r6, #0
	b _0204A460
_0204A452:
	add r0, r5, #0
	add r6, r5, #0
	bl sub_020496B4
	cmp r0, #0
	bne _0204A464
	add r0, r5, #0
_0204A460:
	bl sub_020494AC
_0204A464:
	ldrh r1, [r4, #2]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_0204972C
	str r0, [sp, #0x24]
	ldr r0, _0204A4F0 ; =0x00000261
	ldr r3, _0204A4F4 ; =0x0209AF08
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldrh r1, [r4, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	ldrh r2, [r4, #0xc]
	mov r5, #0
	str r0, [sp, #0x20]
	cmp r2, #0
	ble _0204A4C2
_0204A490:
	ldr r1, [r4, #8]
	lsl r0, r5, #2
	add r2, r1, r0
	ldrh r1, [r1, r0]
	str r0, [sp, #0x28]
	cmp r1, #0xff
	bne _0204A4A2
	mov r0, #0
	b _0204A4B4
_0204A4A2:
	lsl r3, r1, #2
	ldr r6, [r7]
	ldr r1, [sp, #0x18]
	ldrh r2, [r2, #2]
	add r1, r1, r6
	ldr r0, [sp, #0x24]
	ldr r1, [r3, r1]
	bl sub_0204980C
_0204A4B4:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x28]
	add r5, r5, #1
	str r0, [r2, r1]
	ldrh r2, [r4, #0xc]
	cmp r5, r2
	blt _0204A490
_0204A4C2:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	bl sub_020498B8
	ldr r1, [sp, #8]
	ldr r3, [r7, #0xc]
	lsl r2, r1, #2
	ldr r1, [sp, #0x10]
	add r1, r1, r3
	str r0, [r2, r1]
	ldr r0, [sp, #0x20]
	bl sub_0203A24C
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0204A3F6
_0204A4E8:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0204A4EC: .word 0x00007FFF
_0204A4F0: .word 0x00000261
_0204A4F4: .word 0x0209AF08
	thumb_func_end sub_0204A3C0

	thumb_func_start sub_0204A4F8
sub_0204A4F8: ; 0x0204A4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	lsl r1, r1, #3
	add r1, r0, r1
	str r0, [sp]
	ldrh r0, [r1, #0x1a]
	mov r7, #0
	str r0, [sp, #0xc]
	ldrh r0, [r1, #0x1c]
	str r0, [sp, #4]
	cmp r0, #0
	ble _0204A59C
	ldr r0, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #8]
_0204A516:
	ldr r0, [sp]
	lsl r1, r7, #2
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, r2
	ldr r4, [r1, r0]
	add r0, r4, #0
	bl sub_02049964
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_02049970
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0204A54C
_0204A538:
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl sub_02049968
	bl sub_02049888
	add r5, r5, #1
	cmp r5, r6
	blt _0204A538
_0204A54C:
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldrb r1, [r7, r0]
	mov r0, #0xfd
	tst r0, r1
	beq _0204A56E
	ldr r0, [sp, #0x10]
	bl sub_02049804
	add r5, r0, #0
	bl sub_02049534
	add r0, r5, #0
	bl sub_02049404
_0204A56E:
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldrb r1, [r7, r0]
	mov r0, #0xfe
	tst r0, r1
	beq _0204A588
	ldr r0, [sp, #0x10]
	bl sub_02049800
	bl sub_02049404
_0204A588:
	ldr r0, [sp, #0x10]
	bl sub_020497D4
	add r0, r4, #0
	bl sub_02049934
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _0204A516
_0204A59C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204A4F8

	thumb_func_start sub_0204A5A0
sub_0204A5A0: ; 0x0204A5A0
	lsl r1, r1, #3
	add r0, r0, r1
	ldrh r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0204A5A0

	thumb_func_start sub_0204A5A8
sub_0204A5A8: ; 0x0204A5A8
	lsl r1, r1, #3
	add r0, r0, r1
	ldrh r0, [r0, #0x1a]
	bx lr
	thumb_func_end sub_0204A5A8

	thumb_func_start sub_0204A5B0
sub_0204A5B0: ; 0x0204A5B0
	lsl r1, r1, #3
	add r0, r0, r1
	ldrh r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0204A5B0

	thumb_func_start sub_0204A5B8
sub_0204A5B8: ; 0x0204A5B8
	ldr r2, [r0]
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	bx lr
	thumb_func_end sub_0204A5B8

	thumb_func_start sub_0204A5C0
sub_0204A5C0: ; 0x0204A5C0
	ldr r2, [r0, #0xc]
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	bx lr
	thumb_func_end sub_0204A5C0

	thumb_func_start sub_0204A5C8
sub_0204A5C8: ; 0x0204A5C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x38
	str r0, [sp]
	add r0, sp, #0x18
	add r7, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	ldrh r0, [r0, #0x1c]
	ldr r3, _0204A62C ; =0x0209AF14
	mov r1, #0x44
	mov r2, #0
	bl sub_0203A1FC
	add r2, r0, #0
	str r5, [r2]
	str r4, [r2, #4]
	str r6, [r2, #8]
	add r3, r2, #0
	ldr r0, [sp, #0x18]
	str r7, [r2, #0xc]
	str r0, [r2, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0x28]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x20]
	add r3, #0x20
	str r0, [r2, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r2, #0x1c]
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, [sp, #0x2c]
	str r0, [r3]
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	add r3, #0x2c
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, [sp, #0x30]
	str r0, [r3]
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	add r3, #0x38
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204A62C: .word 0x0209AF14
	thumb_func_end sub_0204A5C8

	thumb_func_start sub_0204A630
sub_0204A630: ; 0x0204A630
	ldr r3, _0204A634 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0204A634: .word sub_0203A24C
	thumb_func_end sub_0204A630

	thumb_func_start sub_0204A638
sub_0204A638: ; 0x0204A638
	push {r4, lr}
	add r4, r0, #0
	bl sub_02048FBC
	add r4, #0x20
	add r0, r4, #0
	bl sub_02049188
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204A638

	thumb_func_start sub_0204A64C
sub_0204A64C: ; 0x0204A64C
	add r2, r0, #0
	add r2, #0x20
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0204A64C

	thumb_func_start sub_0204A65C
sub_0204A65C: ; 0x0204A65C
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0204A65C

	thumb_func_start sub_0204A66C
sub_0204A66C: ; 0x0204A66C
	add r2, r0, #0
	add r2, #0x2c
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0204A66C

	thumb_func_start sub_0204A67C
sub_0204A67C: ; 0x0204A67C
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0204A67C

	thumb_func_start sub_0204A68C
sub_0204A68C: ; 0x0204A68C
	add r2, r0, #0
	add r2, #0x38
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0204A68C

	thumb_func_start sub_0204A69C
sub_0204A69C: ; 0x0204A69C
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0204A69C

	thumb_func_start sub_0204A6AC
sub_0204A6AC: ; 0x0204A6AC
	ldr r0, [r0, #0x14]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A6AC

	thumb_func_start sub_0204A6B4
sub_0204A6B4: ; 0x0204A6B4
	ldr r1, [r1]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A6B4

	thumb_func_start sub_0204A6BC
sub_0204A6BC: ; 0x0204A6BC
	ldr r1, [r1]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A6BC

	thumb_func_start sub_0204A6C4
sub_0204A6C4: ; 0x0204A6C4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0204A6C4

	thumb_func_start sub_0204A6C8
sub_0204A6C8: ; 0x0204A6C8
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0204A6C8

	thumb_func_start sub_0204A6CC
sub_0204A6CC: ; 0x0204A6CC
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A6CC

	thumb_func_start sub_0204A6D4
sub_0204A6D4: ; 0x0204A6D4
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0204A6D4

	thumb_func_start sub_0204A6D8
sub_0204A6D8: ; 0x0204A6D8
	ldr r0, [r0, #4]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A6D8

	thumb_func_start sub_0204A6E0
sub_0204A6E0: ; 0x0204A6E0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0204A6E0

	thumb_func_start sub_0204A6E4
sub_0204A6E4: ; 0x0204A6E4
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A6E4

	thumb_func_start sub_0204A6EC
sub_0204A6EC: ; 0x0204A6EC
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0204A6EC

	thumb_func_start sub_0204A6F0
sub_0204A6F0: ; 0x0204A6F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0x2b
	str r0, [sp]
	add r0, r1, #0
	ldr r3, _0204A738 ; =0x0209AF24
	mov r1, #0x20
	mov r2, #1
	bl sub_0203A1FC
	ldrb r1, [r4, #4]
	mov r3, #0
	cmp r1, #0
	ble _0204A734
	mov r5, #0xa
_0204A70E:
	add r1, r3, #0
	ldr r6, [r4]
	mul r1, r5
	add r2, r6, r1
	ldrb r1, [r6, r1]
	ldrh r6, [r2, #2]
	add r3, r3, #1
	lsl r7, r1, #3
	strh r6, [r0, r7]
	ldrh r6, [r2, #4]
	add r1, r0, r7
	strh r6, [r1, #2]
	ldrh r6, [r2, #6]
	strh r6, [r1, #4]
	ldrh r2, [r2, #8]
	strh r2, [r1, #6]
	ldrb r1, [r4, #4]
	cmp r3, r1
	blt _0204A70E
_0204A734:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204A738: .word 0x0209AF24
	thumb_func_end sub_0204A6F0

	thumb_func_start sub_0204A73C
sub_0204A73C: ; 0x0204A73C
	ldr r3, _0204A740 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0204A740: .word sub_0203A24C
	thumb_func_end sub_0204A73C

	thumb_func_start sub_0204A744
sub_0204A744: ; 0x0204A744
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0204A74A:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blt _0204A74A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204A744

	thumb_func_start sub_0204A760
sub_0204A760: ; 0x0204A760
	lsl r3, r1, #3
	add r1, r0, r3
	ldrh r0, [r0, r3]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	ldrh r0, [r1, #4]
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A760

	thumb_func_start sub_0204A774
sub_0204A774: ; 0x0204A774
	push {r3, r4}
	lsl r4, r1, #3
	ldrh r1, [r2]
	add r3, r0, r4
	strh r1, [r0, r4]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	ldrh r0, [r2, #4]
	strh r0, [r3, #4]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A774

	thumb_func_start sub_0204A78C
sub_0204A78C: ; 0x0204A78C
	lsl r1, r1, #3
	add r0, r0, r1
	ldrh r0, [r0, #6]
	strh r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A78C

	thumb_func_start sub_0204A798
sub_0204A798: ; 0x0204A798
	ldrh r2, [r2]
	lsl r1, r1, #3
	add r0, r0, r1
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204A798

	thumb_func_start sub_0204A7A4
sub_0204A7A4: ; 0x0204A7A4
	ldr r2, _0204A7B0 ; =0x02141930
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, #0
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_0204A7B0: .word 0x02141930
	thumb_func_end sub_0204A7A4

	thumb_func_start sub_0204A7B4
sub_0204A7B4: ; 0x0204A7B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, sp, #0
	add r5, r0, #0
	add r0, r7, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0204A838
	ldr r3, [sp, #0x60]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204A870
	add r2, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02070E40
	add r0, r7, #0
	bl sub_02070DB4
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204A7B4

	thumb_func_start sub_0204A7E8
sub_0204A7E8: ; 0x0204A7E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r0, #0
	add r5, r1, #0
	add r0, sp, #4
	add r1, r6, #0
	add r4, r2, #0
	add r7, r3, #0
	bl sub_0204A838
	ldr r3, [sp, #0x60]
	add r0, sp, #4
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0204A870
	add r5, r0, #0
	mov r0, #0xbb
	str r0, [sp]
	ldr r3, _0204A834 ; =0x0209AF30
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, sp, #4
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02070E40
	add r0, sp, #4
	bl sub_02070DB4
	add r0, r4, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0204A834: .word 0x0209AF30
	thumb_func_end sub_0204A7E8

	thumb_func_start sub_0204A838
sub_0204A838: ; 0x0204A838
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02070C7C
	ldr r1, _0204A86C ; =0x02141930
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _0204A858
	ldr r2, [r1]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	add r0, r5, #0
	bl sub_02070EA0
	pop {r3, r4, r5, pc}
_0204A858:
	ldr r1, [r1]
	lsl r2, r4, #3
	add r0, r1, r2
	ldr r0, [r0, #4]
	ldr r1, [r1, r2]
	sub r2, r0, r1
	add r0, r5, #0
	bl sub_02072108
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204A86C: .word 0x02141930
	thumb_func_end sub_0204A838

	thumb_func_start sub_0204A870
sub_0204A870: ; 0x0204A870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	mov r1, #0
	str r2, [sp, #4]
	str r1, [sp, #0x10]
	add r5, r0, #0
	mov r1, #0xc
	mov r2, #0
	add r7, r3, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #0x10
	mov r2, #2
	bl sub_02070E40
	ldr r4, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #0x14
	mov r2, #6
	bl sub_02070E40
	add r0, sp, #0x10
	ldrh r3, [r0, #8]
	cmp r3, r6
	bhi _0204A8BC
	ldr r0, _0204A920 ; =0x0209AF3C
	ldr r2, _0204A924 ; =0x0209AF40
	mov r1, #0
	str r6, [sp]
	bl sub_0203CB94
_0204A8BC:
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, #4
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #0x10
	mov r2, #4
	bl sub_02070E40
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r4, #0xc
	add r0, r0, r1
	lsl r1, r6, #3
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #0x1c
	mov r2, #8
	bl sub_02070E40
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x1c]
	add r1, #8
	str r1, [sp, #8]
	add r2, r1, r2
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, r2
	mov r2, #0
	bl sub_02070E28
	cmp r7, #0
	bne _0204A918
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	sub r7, r1, r0
_0204A918:
	add r0, r7, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0204A920: .word 0x0209AF3C
_0204A924: .word 0x0209AF40
	thumb_func_end sub_0204A870

	thumb_func_start sub_0204A928
sub_0204A928: ; 0x0204A928
	push {r3, lr}
	mov r3, #0
	str r3, [sp]
	bl sub_0204A7B4
	pop {r3, pc}
	thumb_func_end sub_0204A928

	thumb_func_start sub_0204A934
sub_0204A934: ; 0x0204A934
	push {r3, lr}
	mov r3, #0
	str r3, [sp]
	bl sub_0204A7E8
	pop {r3, pc}
	thumb_func_end sub_0204A934

	thumb_func_start sub_0204A940
sub_0204A940: ; 0x0204A940
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_0204A7B4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0204A940

	thumb_func_start sub_0204A950
sub_0204A950: ; 0x0204A950
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_0204A7E8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0204A950

	thumb_func_start sub_0204A960
sub_0204A960: ; 0x0204A960
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, sp, #4
	add r5, r0, #0
	add r0, r7, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02070C7C
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02070EA0
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204A870
	add r4, r0, #0
	ldr r0, _0204A9B0 ; =0x00000182
	ldr r3, _0204A9B4 ; =0x0209AF30
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02070E40
	add r0, r7, #0
	bl sub_02070DB4
	add r0, r5, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0204A9B0: .word 0x00000182
_0204A9B4: .word 0x0209AF30
	thumb_func_end sub_0204A960

	thumb_func_start sub_0204A9B8
sub_0204A9B8: ; 0x0204A9B8
	push {r3, r4, lr}
	sub sp, #0x54
	add r1, r0, #0
	mov r0, #0
	add r4, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204A838
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02070E28
	add r0, r4, #0
	add r1, sp, #8
	mov r2, #2
	bl sub_02070E40
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r1, r1, #4
	mov r2, #0
	bl sub_02070E28
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #6
	bl sub_02070E40
	add r0, r4, #0
	bl sub_02070DB4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	add sp, #0x54
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_0204A9B8

	thumb_func_start sub_0204AA04
sub_0204AA04: ; 0x0204AA04
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r2, r0, #0
	add r5, sp, #0
	add r4, r1, #0
	add r0, r5, #0
	add r1, r2, #0
	bl sub_0204A838
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204A870
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02070DB4
	add r0, r4, #0
	add sp, #0x48
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204AA04

	thumb_func_start sub_0204AA30
sub_0204AA30: ; 0x0204AA30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0204AA58 ; =0x00000209
	ldr r3, _0204AA5C ; =0x0209AF30
	str r0, [sp]
	add r0, r1, #0
	mov r1, #0x50
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0204A838
	add r0, r5, #0
	bl sub_0204AA9C
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0204AA58: .word 0x00000209
_0204AA5C: .word 0x0209AF30
	thumb_func_end sub_0204AA30

	thumb_func_start sub_0204AA60
sub_0204AA60: ; 0x0204AA60
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _0204AA94 ; =0x0000021F
	add r6, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _0204AA98 ; =0x0209AF30
	mov r1, #0x50
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	bl sub_02070C7C
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02072108
	add r0, r4, #0
	bl sub_0204AA9C
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0204AA94: .word 0x0000021F
_0204AA98: .word 0x0209AF30
	thumb_func_end sub_0204AA60

	thumb_func_start sub_0204AA9C
sub_0204AA9C: ; 0x0204AA9C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, r5, #0
	mov r2, #0
	add r1, #0x4c
	strh r2, [r1]
	mov r1, #0xc
	mov r2, #0
	bl sub_02070E28
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x4c
	mov r2, #2
	bl sub_02070E40
	add r1, r5, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r0, r5, #0
	mov r2, #0
	add r1, r1, #4
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #0
	mov r2, #6
	bl sub_02070E40
	add r0, sp, #0
	ldrh r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x4e
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	ldr r0, [sp]
	mov r2, #0
	add r4, r1, r0
	add r0, r5, #0
	add r1, r4, #4
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #8
	mov r2, #4
	bl sub_02070E40
	ldr r0, [sp, #8]
	add r0, r4, r0
	str r0, [r5, #0x48]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204AA9C

	thumb_func_start sub_0204AB0C
sub_0204AB0C: ; 0x0204AB0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02070DB4
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_0204AB0C

	thumb_func_start sub_0204AB1C
sub_0204AB1C: ; 0x0204AB1C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x4e
	ldrh r3, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, r4
	bhi _0204AB3A
	ldr r0, _0204AB94 ; =0x0209AF3C
	ldr r2, _0204AB98 ; =0x0209AF6C
	mov r1, #0
	str r4, [sp]
	bl sub_0203CB94
_0204AB3A:
	add r1, r5, #0
	add r1, #0x4c
	ldrh r2, [r1]
	lsl r1, r4, #3
	add r0, r5, #0
	add r2, #0xc
	add r1, r2, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #8
	bl sub_02070E40
	ldr r2, [r5, #0x48]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_02070E28
	ldr r0, _0204AB9C ; =0x0000026B
	ldr r3, _0204ABA0 ; =0x0209AF30
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r0, r6, #0
	sub r1, r2, r1
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	beq _0204AB8E
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	sub r2, r3, r2
	bl sub_02070E40
_0204AB8E:
	add r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0204AB94: .word 0x0209AF3C
_0204AB98: .word 0x0209AF6C
_0204AB9C: .word 0x0000026B
_0204ABA0: .word 0x0209AF30
	thumb_func_end sub_0204AB1C

	thumb_func_start sub_0204ABA4
sub_0204ABA4: ; 0x0204ABA4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x4e
	ldrh r3, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, r4
	bhi _0204ABC2
	ldr r0, _0204AC04 ; =0x0209AF3C
	ldr r2, _0204AC08 ; =0x0209AF6C
	mov r1, #0
	str r4, [sp]
	bl sub_0203CB94
_0204ABC2:
	add r1, r5, #0
	add r1, #0x4c
	ldrh r2, [r1]
	lsl r1, r4, #3
	add r0, r5, #0
	add r2, #0xc
	add r1, r2, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #8
	bl sub_02070E40
	ldr r2, [r5, #0x48]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	bl sub_02070E28
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r3, r2
	bl sub_02070E40
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0204AC04: .word 0x0209AF3C
_0204AC08: .word 0x0209AF6C
	thumb_func_end sub_0204ABA4

	thumb_func_start sub_0204AC0C
sub_0204AC0C: ; 0x0204AC0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x4e
	ldrh r3, [r0]
	add r4, r1, #0
	cmp r3, r4
	bhi _0204AC28
	ldr r0, _0204AC50 ; =0x0209AF3C
	ldr r2, _0204AC54 ; =0x0209AF6C
	mov r1, #0
	str r4, [sp]
	bl sub_0203CB94
_0204AC28:
	add r1, r5, #0
	add r1, #0x4c
	ldrh r2, [r1]
	lsl r1, r4, #3
	add r0, r5, #0
	add r2, #0xc
	add r1, r2, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #8
	bl sub_02070E40
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0204AC50: .word 0x0209AF3C
_0204AC54: .word 0x0209AF6C
	thumb_func_end sub_0204AC0C

	thumb_func_start sub_0204AC58
sub_0204AC58: ; 0x0204AC58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x4e
	add r7, r3, #0
	ldrh r3, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, r4
	bhi _0204AC78
	ldr r0, _0204ACB8 ; =0x0209AF3C
	ldr r2, _0204ACBC ; =0x0209AF6C
	mov r1, #0
	str r4, [sp]
	bl sub_0203CB94
_0204AC78:
	add r1, r5, #0
	add r1, #0x4c
	ldrh r2, [r1]
	lsl r1, r4, #3
	add r0, r5, #0
	add r2, #0xc
	add r1, r2, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_02070E40
	ldr r2, [r5, #0x48]
	ldr r1, [sp, #4]
	add r2, #8
	add r1, r2, r1
	add r0, r5, #0
	add r1, r6, r1
	mov r2, #0
	bl sub_02070E28
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02070E40
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204ACB8: .word 0x0209AF3C
_0204ACBC: .word 0x0209AF6C
	thumb_func_end sub_0204AC58

	thumb_func_start sub_0204ACC0
sub_0204ACC0: ; 0x0204ACC0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x4e
	ldrh r3, [r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, r4
	bhi _0204ACDE
	ldr r0, _0204AD0C ; =0x0209AF3C
	ldr r2, _0204AD10 ; =0x0209AF6C
	mov r1, #0
	str r4, [sp]
	bl sub_0203CB94
_0204ACDE:
	add r1, r5, #0
	add r1, #0x4c
	ldrh r2, [r1]
	lsl r1, r4, #3
	add r0, r5, #0
	add r2, #0xc
	add r1, r2, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_02070E40
	ldr r1, [r5, #0x48]
	ldr r0, [sp, #4]
	add r1, #8
	add r0, r1, r0
	str r0, [r6]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0204AD0C: .word 0x0209AF3C
_0204AD10: .word 0x0209AF6C
	thumb_func_end sub_0204ACC0

	thumb_func_start sub_0204AD14
sub_0204AD14: ; 0x0204AD14
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x4e
	ldrh r3, [r0]
	add r4, r1, #0
	cmp r3, r4
	bhi _0204AD30
	ldr r0, _0204AD5C ; =0x0209AF3C
	ldr r2, _0204AD60 ; =0x0209AF6C
	mov r1, #0
	str r4, [sp]
	bl sub_0203CB94
_0204AD30:
	add r1, r5, #0
	add r1, #0x4c
	ldrh r2, [r1]
	lsl r1, r4, #3
	add r0, r5, #0
	add r2, #0xc
	add r1, r2, r1
	mov r2, #0
	bl sub_02070E28
	add r0, r5, #0
	add r1, sp, #4
	mov r2, #4
	bl sub_02070E40
	ldr r1, [r5, #0x48]
	ldr r0, [sp, #4]
	add r1, #8
	add r0, r1, r0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0204AD5C: .word 0x0209AF3C
_0204AD60: .word 0x0209AF6C
	thumb_func_end sub_0204AD14

	thumb_func_start sub_0204AD64
sub_0204AD64: ; 0x0204AD64
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0204AD70 ; =sub_02070E40
	bx r3
	nop
_0204AD70: .word sub_02070E40
	thumb_func_end sub_0204AD64

	thumb_func_start sub_0204AD74
sub_0204AD74: ; 0x0204AD74
	ldr r3, _0204AD7C ; =sub_02070E28
	mov r2, #0
	bx r3
	nop
_0204AD7C: .word sub_02070E28
	thumb_func_end sub_0204AD74

	thumb_func_start sub_0204AD80
sub_0204AD80: ; 0x0204AD80
	add r0, #0x4e
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204AD80

	thumb_func_start sub_0204AD88
sub_0204AD88: ; 0x0204AD88
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	add r5, r2, #0
	ldrh r3, [r3, #8]
	ldr r2, [sp, #0x14]
	bl sub_0204B4E4
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204ADC8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204AD88

	thumb_func_start sub_0204ADA8
sub_0204ADA8: ; 0x0204ADA8
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	add r5, r2, #0
	ldrh r3, [r3, #8]
	ldr r2, [sp, #0x14]
	bl sub_0204B600
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204ADC8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204ADA8

	thumb_func_start sub_0204ADC8
sub_0204ADC8: ; 0x0204ADC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r1, sp, #0
	add r6, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_020602A8
	cmp r0, #0
	beq _0204ADF4
	cmp r4, #0
	bne _0204ADE4
	ldr r0, [sp]
	ldr r4, [r0, #0x10]
_0204ADE4:
	ldr r1, [sp]
	lsl r0, r5, #0x18
	ldr r1, [r1, #0x14]
	lsr r0, r0, #0x18
	add r2, r4, #0
	add r3, r7, #0
	bl sub_02045080
_0204ADF4:
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204ADC8

	thumb_func_start sub_0204AE00
sub_0204AE00: ; 0x0204AE00
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3, #4]
	ldr r6, _0204AE38 ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x10]
	lsr r3, r3, #0x10
	bl sub_0204B4E4
	add r6, r0, #0
	beq _0204AE34
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204AE78
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0204AE34:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0204AE38: .word 0x00007FFF
	thumb_func_end sub_0204AE00

	thumb_func_start sub_0204AE3C
sub_0204AE3C: ; 0x0204AE3C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3, #4]
	ldr r6, _0204AE74 ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x10]
	lsr r3, r3, #0x10
	bl sub_0204B600
	add r6, r0, #0
	beq _0204AE70
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204AE78
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0204AE70:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0204AE74: .word 0x00007FFF
	thumb_func_end sub_0204AE3C

	thumb_func_start sub_0204AE78
sub_0204AE78: ; 0x0204AE78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, sp, #0
	add r4, r2, #0
	bl sub_020602A8
	cmp r0, #0
	beq _0204AEB2
	cmp r4, #0
	bne _0204AE90
	ldr r0, [sp]
	ldr r4, [r0, #0x10]
_0204AE90:
	ldr r1, [sp]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r2, r4, #0
	bl sub_020450A8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0204AEB2
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	pop {r3, r4, r5, pc}
_0204AEB2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204AE78

	thumb_func_start sub_0204AEB8
sub_0204AEB8: ; 0x0204AEB8
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	add r5, r2, #0
	ldrh r3, [r3, #8]
	ldr r2, [sp, #0x14]
	bl sub_0204B600
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204AED4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204AEB8

	thumb_func_start sub_0204AED4
sub_0204AED4: ; 0x0204AED4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r1, sp, #0
	add r6, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02060278
	cmp r0, #0
	beq _0204AF0A
	cmp r4, #0
	bne _0204AEF0
	ldr r0, [sp]
	ldr r4, [r0, #0x10]
_0204AEF0:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	blx sub_0207B0AC
	ldr r0, [sp]
	ldr r3, _0204AF14 ; =0x02093E1C
	lsl r5, r5, #2
	ldr r0, [r0, #0x14]
	ldr r3, [r3, r5]
	add r1, r7, #0
	add r2, r4, #0
	blx r3
_0204AF0A:
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204AF14: .word 0x02093E1C
	thumb_func_end sub_0204AED4

	thumb_func_start sub_0204AF18
sub_0204AF18: ; 0x0204AF18
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r3, #0
	add r3, sp, #0x18
	ldrh r3, [r3, #8]
	ldr r6, _0204AF4C ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x1c]
	lsr r3, r3, #0x10
	bl sub_0204B4E4
	ldr r1, [sp, #0x18]
	mov r3, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	str r3, [sp, #4]
	bl sub_0204B000
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0204AF4C: .word 0x00007FFF
	thumb_func_end sub_0204AF18

	thumb_func_start sub_0204AF50
sub_0204AF50: ; 0x0204AF50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r3, #0
	add r3, sp, #0x18
	ldrh r3, [r3, #8]
	ldr r6, _0204AF84 ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x1c]
	lsr r3, r3, #0x10
	bl sub_0204B600
	ldr r1, [sp, #0x18]
	mov r3, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	str r3, [sp, #4]
	bl sub_0204B000
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0204AF84: .word 0x00007FFF
	thumb_func_end sub_0204AF50

	thumb_func_start sub_0204AF88
sub_0204AF88: ; 0x0204AF88
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r3, #0
	add r3, sp, #0x18
	add r5, r2, #0
	ldrh r3, [r3, #0xc]
	ldr r2, [sp, #0x20]
	bl sub_0204B4E4
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204B000
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204AF88

	thumb_func_start sub_0204AFB0
sub_0204AFB0: ; 0x0204AFB0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r3, #0
	add r3, sp, #0x18
	add r5, r2, #0
	ldrh r3, [r3, #0xc]
	ldr r2, [sp, #0x20]
	bl sub_0204B600
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204B000
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204AFB0

	thumb_func_start sub_0204AFD8
sub_0204AFD8: ; 0x0204AFD8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r3, #0
	add r3, sp, #0x18
	add r5, r2, #0
	ldrh r3, [r3, #0xc]
	ldr r2, [sp, #0x20]
	bl sub_0204B600
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204B000
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204AFD8

	thumb_func_start sub_0204B000
sub_0204B000: ; 0x0204B000
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r1, sp, #8
	str r0, [sp]
	str r2, [sp, #4]
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	bl sub_02060338
	cmp r0, #0
	beq _0204B0AE
	cmp r4, #0
	bne _0204B020
	ldr r0, [sp, #8]
	ldr r4, [r0, #8]
_0204B020:
	cmp r5, #0
	beq _0204B068
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_02045864
	cmp r0, #0
	bne _0204B04E
	ldr r2, [sp, #8]
	mov r1, #0
	add r2, #0xc
	lsr r3, r4, #1
	beq _0204B068
	lsl r0, r5, #0x10
	lsr r5, r0, #0x10
_0204B03E:
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	add r1, r1, #1
	add r6, r6, r5
	strh r6, [r2, r0]
	cmp r1, r3
	blo _0204B03E
	b _0204B068
_0204B04E:
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, #0xc
	cmp r4, #0
	bls _0204B068
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
_0204B05C:
	ldrb r3, [r1, r0]
	add r3, r3, r2
	strb r3, [r1, r0]
	add r0, r0, #1
	cmp r0, r4
	blo _0204B05C
_0204B068:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_02045814
	cmp r0, #0
	beq _0204B09E
	ldr r1, [sp, #8]
	lsl r0, r7, #0x18
	ldr r3, [sp, #4]
	lsr r0, r0, #0x18
	add r1, #0xc
	add r2, r4, #0
	bl sub_02045060
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0204B094
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	b _0204B0AE
_0204B094:
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	b _0204B0AE
_0204B09E:
	ldr r1, [sp, #8]
	lsl r0, r7, #0x18
	ldr r3, [sp, #4]
	lsr r0, r0, #0x18
	add r1, #0xc
	add r2, r4, #0
	bl sub_02044FB0
_0204B0AE:
	ldr r0, [sp]
	bl sub_0203A24C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204B000

	thumb_func_start sub_0204B0B8
sub_0204B0B8: ; 0x0204B0B8
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	add r3, sp, #0x10
	ldrh r3, [r3, #4]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_0204B0F0
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end sub_0204B0B8

	thumb_func_start sub_0204B0D4
sub_0204B0D4: ; 0x0204B0D4
	push {lr}
	sub sp, #0xc
	str r3, [sp]
	ldr r3, [sp, #0x10]
	str r3, [sp, #4]
	add r3, sp, #0x10
	ldrh r3, [r3, #4]
	str r3, [sp, #8]
	mov r3, #0
	bl sub_0204B124
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end sub_0204B0D4

	thumb_func_start sub_0204B0F0
sub_0204B0F0: ; 0x0204B0F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r3, #0
	add r3, sp, #0x18
	ldrh r3, [r3, #8]
	ldr r6, _0204B120 ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204B4E4
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204B158
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0204B120: .word 0x00007FFF
	thumb_func_end sub_0204B0F0

	thumb_func_start sub_0204B124
sub_0204B124: ; 0x0204B124
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r3, #0
	add r3, sp, #0x18
	ldrh r3, [r3, #8]
	ldr r6, _0204B154 ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204B600
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0204B158
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0204B154: .word 0x00007FFF
	thumb_func_end sub_0204B124

	thumb_func_start sub_0204B158
sub_0204B158: ; 0x0204B158
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp]
	ldr r5, [sp, #0x28]
	cmp r7, #0
	beq _0204B25C
	add r1, sp, #8
	bl sub_02060300
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020602D8
	cmp r0, #0
	beq _0204B256
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r2, #0xc]
	add r0, r1, r0
	str r0, [r2, #0xc]
	cmp r5, #0
	bne _0204B1B4
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0204B198
	ldr r0, [sp, #0xc]
	ldr r5, [r0, #8]
	b _0204B1B0
_0204B198:
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	cmp r0, #3
	bne _0204B1A4
	mov r1, #0x20
	b _0204B1A8
_0204B1A4:
	mov r1, #2
	lsl r1, r1, #8
_0204B1A8:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r5, r0, #0
	mul r5, r1
_0204B1B0:
	ldr r0, [sp]
	sub r5, r5, r0
_0204B1B4:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	blx sub_0207B0AC
	cmp r4, #7
	bhi _0204B246
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204B1CE: ; jump table
	.short _0204B246 - _0204B1CE - 2 ; case 0
	.short _0204B246 - _0204B1CE - 2 ; case 1
	.short _0204B1DE - _0204B1CE - 2 ; case 2
	.short _0204B212 - _0204B1CE - 2 ; case 3
	.short _0204B246 - _0204B1CE - 2 ; case 4
	.short _0204B246 - _0204B1CE - 2 ; case 5
	.short _0204B1F8 - _0204B1CE - 2 ; case 6
	.short _0204B22C - _0204B1CE - 2 ; case 7
_0204B1DE:
	bl sub_02075E14
	ldr r0, [sp, #0xc]
	ldr r3, _0204B260 ; =0x02093E24
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_02075EE8
	b _0204B256
_0204B1F8:
	bl sub_02075FF8
	ldr r0, [sp, #0xc]
	ldr r3, _0204B260 ; =0x02093E24
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_02076064
	b _0204B256
_0204B212:
	bl sub_02075F30
	ldr r0, [sp, #0xc]
	ldr r3, _0204B260 ; =0x02093E24
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_02075FC0
	b _0204B256
_0204B22C:
	bl sub_02076098
	ldr r0, [sp, #0xc]
	ldr r3, _0204B260 ; =0x02093E24
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
	bl sub_02076104
	b _0204B256
_0204B246:
	ldr r0, [sp, #0xc]
	ldr r3, _0204B260 ; =0x02093E24
	lsl r4, r4, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0
	add r2, r5, #0
	blx r3
_0204B256:
	add r0, r7, #0
	bl sub_0203A24C
_0204B25C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204B260: .word 0x02093E24
	thumb_func_end sub_0204B158

	thumb_func_start sub_0204B264
sub_0204B264: ; 0x0204B264
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B288
	add r1, r4, #0
	bl sub_020602A8
	cmp r0, #0
	bne _0204B288
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B288:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B264

	thumb_func_start sub_0204B28C
sub_0204B28C: ; 0x0204B28C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B2B0
	add r1, r4, #0
	bl sub_020602A8
	cmp r0, #0
	bne _0204B2B0
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B2B0:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B28C

	thumb_func_start sub_0204B2B4
sub_0204B2B4: ; 0x0204B2B4
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B2D8
	add r1, r4, #0
	bl sub_02060278
	cmp r0, #0
	bne _0204B2D8
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B2D8:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B2B4

	thumb_func_start sub_0204B2DC
sub_0204B2DC: ; 0x0204B2DC
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B300
	add r1, r4, #0
	bl sub_02060278
	cmp r0, #0
	bne _0204B300
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B300:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B2DC

	thumb_func_start sub_0204B304
sub_0204B304: ; 0x0204B304
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B328
	add r1, r4, #0
	bl sub_02060338
	cmp r0, #0
	bne _0204B328
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B328:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B304

	thumb_func_start sub_0204B32C
sub_0204B32C: ; 0x0204B32C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B350
	add r1, r4, #0
	bl sub_02060338
	cmp r0, #0
	bne _0204B350
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B350:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B32C

	thumb_func_start sub_0204B354
sub_0204B354: ; 0x0204B354
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0
	mov r6, #0
	bl sub_0204B4E4
	add r4, r0, #0
	beq _0204B378
	add r1, r5, #0
	bl sub_020602D8
	cmp r0, #0
	bne _0204B378
	add r0, r4, #0
	bl sub_0203A24C
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_0204B378:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B354

	thumb_func_start sub_0204B37C
sub_0204B37C: ; 0x0204B37C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0
	mov r6, #0
	bl sub_0204B600
	add r4, r0, #0
	beq _0204B3A0
	add r1, r5, #0
	bl sub_020602D8
	cmp r0, #0
	bne _0204B3A0
	add r0, r4, #0
	bl sub_0203A24C
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_0204B3A0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204B37C

	thumb_func_start sub_0204B3A4
sub_0204B3A4: ; 0x0204B3A4
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B3C8
	add r1, r4, #0
	bl sub_02060150
	cmp r0, #0
	bne _0204B3C8
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B3C8:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B3A4

	thumb_func_start sub_0204B3CC
sub_0204B3CC: ; 0x0204B3CC
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B3F0
	add r1, r4, #0
	bl sub_02060150
	cmp r0, #0
	bne _0204B3F0
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B3F0:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B3CC

	thumb_func_start sub_0204B3F4
sub_0204B3F4: ; 0x0204B3F4
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B418
	add r1, r4, #0
	bl sub_0206004C
	cmp r0, #0
	bne _0204B418
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B418:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B3F4

	thumb_func_start sub_0204B41C
sub_0204B41C: ; 0x0204B41C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B440
	add r1, r4, #0
	bl sub_0206004C
	cmp r0, #0
	bne _0204B440
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B440:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B41C

	thumb_func_start sub_0204B444
sub_0204B444: ; 0x0204B444
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B468
	add r1, r4, #0
	bl sub_020601EC
	cmp r0, #0
	bne _0204B468
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B468:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B444

	thumb_func_start sub_0204B46C
sub_0204B46C: ; 0x0204B46C
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B490
	add r1, r4, #0
	bl sub_020601EC
	cmp r0, #0
	bne _0204B490
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B490:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B46C

	thumb_func_start sub_0204B494
sub_0204B494: ; 0x0204B494
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B4E4
	add r5, r0, #0
	beq _0204B4B8
	add r1, r4, #0
	bl sub_02060054
	cmp r0, #0
	bne _0204B4B8
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B4B8:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B494

	thumb_func_start sub_0204B4BC
sub_0204B4BC: ; 0x0204B4BC
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r3, sp, #0x10
	ldrh r3, [r3]
	bl sub_0204B600
	add r5, r0, #0
	beq _0204B4E0
	add r1, r4, #0
	bl sub_02060054
	cmp r0, #0
	bne _0204B4E0
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0204B4E0:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204B4BC

	thumb_func_start sub_0204B4E4
sub_0204B4E4: ; 0x0204B4E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp, #4]
	cmp r5, #0
	beq _0204B50E
	bl sub_0204AA04
	add r1, r0, #0
	ldr r0, _0204B55C ; =0x0000063F
	add r2, r6, #0
	str r0, [sp]
	ldr r0, _0204B560 ; =0x00007FFF
	and r2, r0
	add r0, r0, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _0204B51A
_0204B50E:
	bl sub_0204AA04
	add r1, r0, #0
	ldr r0, _0204B564 ; =0x00000643
	str r0, [sp]
	add r0, r6, #0
_0204B51A:
	ldr r3, _0204B568 ; =0x0209AF84
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204A928
	cmp r5, #0
	beq _0204B556
	ldr r0, _0204B56C ; =0x0000064B
	ldr r3, _0204B568 ; =0x0209AF84
	str r0, [sp]
	ldr r1, [r4]
	add r0, r6, #0
	lsr r1, r1, #8
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	blx sub_0207909C
	add r0, r4, #0
	bl sub_0203A24C
	add r4, r5, #0
_0204B556:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204B55C: .word 0x0000063F
_0204B560: .word 0x00007FFF
_0204B564: .word 0x00000643
_0204B568: .word 0x0209AF84
_0204B56C: .word 0x0000064B
	thumb_func_end sub_0204B4E4

	thumb_func_start sub_0204B570
sub_0204B570: ; 0x0204B570
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x20]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204AA04
	str r0, [r5]
	cmp r6, #0
	beq _0204B59C
	ldr r0, _0204B5EC ; =0x0000066A
	add r1, r7, #0
	str r0, [sp]
	ldr r0, _0204B5F0 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _0204B5A2
_0204B59C:
	ldr r0, _0204B5F4 ; =0x0000066E
	str r0, [sp]
	add r0, r7, #0
_0204B5A2:
	ldr r1, [r5]
	ldr r3, _0204B5F8 ; =0x0209AF84
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl sub_0204A928
	cmp r6, #0
	beq _0204B5E4
	ldr r0, [r4]
	ldr r3, _0204B5F8 ; =0x0209AF84
	lsr r0, r0, #8
	str r0, [r5]
	ldr r0, _0204B5FC ; =0x00000678
	mov r2, #0
	str r0, [sp]
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	blx sub_0207909C
	add r0, r4, #0
	bl sub_0203A24C
	add r4, r5, #0
_0204B5E4:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0204B5EC: .word 0x0000066A
_0204B5F0: .word 0x00007FFF
_0204B5F4: .word 0x0000066E
_0204B5F8: .word 0x0209AF84
_0204B5FC: .word 0x00000678
	thumb_func_end sub_0204B570

	thumb_func_start sub_0204B600
sub_0204B600: ; 0x0204B600
	push {r4, lr}
	sub sp, #8
	add r4, sp, #4
	str r4, [sp]
	bl sub_0204B610
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_0204B600

	thumb_func_start sub_0204B610
sub_0204B610: ; 0x0204B610
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x20]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r7, r2, #0
	add r6, r3, #0
	bl sub_0204AC0C
	str r0, [r5]
	cmp r7, #0
	beq _0204B63C
	ldr r0, _0204B694 ; =0x000006AD
	str r0, [sp]
	lsl r0, r6, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0204B698 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	b _0204B642
_0204B63C:
	ldr r0, _0204B69C ; =0x000006B1
	str r0, [sp]
	lsl r0, r6, #0x10
_0204B642:
	ldr r1, [r5]
	ldr r3, _0204B6A0 ; =0x0209AF84
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	cmp r4, #0
	beq _0204B68E
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r4, #0
	bl sub_0204ABA4
	cmp r7, #0
	beq _0204B68E
	ldr r0, [r4]
	ldr r3, _0204B6A0 ; =0x0209AF84
	lsr r0, r0, #8
	str r0, [r5]
	ldr r0, _0204B6A4 ; =0x000006BD
	mov r2, #0
	str r0, [sp]
	lsl r0, r6, #0x10
	ldr r1, [r5]
	lsr r0, r0, #0x10
	bl sub_0203A1FC
	add r5, r0, #0
	beq _0204B68C
	add r0, r4, #0
	add r1, r5, #0
	blx sub_0207909C
	add r0, r4, #0
	bl sub_0203A24C
_0204B68C:
	add r4, r5, #0
_0204B68E:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0204B694: .word 0x000006AD
_0204B698: .word 0x00007FFF
_0204B69C: .word 0x000006B1
_0204B6A0: .word 0x0209AF84
_0204B6A4: .word 0x000006BD
	thumb_func_end sub_0204B610

	thumb_func_start sub_0204B6A8
sub_0204B6A8: ; 0x0204B6A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r2, [sp, #8]
	ldr r0, _0204B74C ; =0x0000029F
	mov r7, #0x49
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r7, r7, #2
	str r1, [sp, #4]
	ldr r3, _0204B750 ; =0x0209AFD8
	add r1, r7, #0
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	ldr r6, _0204B754 ; =0x0214193C
	mov r1, #0
	add r2, r7, #0
	str r0, [r6]
	blx sub_020787A8
	ldrh r1, [r5, #0x10]
	add r0, sp, #0xc
	sub r7, #0x20
	strh r1, [r0]
	ldrh r1, [r5, #0x12]
	ldr r2, [sp, #4]
	add r3, sp, #0xc
	strh r1, [r0, #2]
	ldrh r1, [r5, #0x14]
	strh r1, [r0, #4]
	ldrh r1, [r5, #0x16]
	strh r1, [r0, #6]
	ldrh r1, [r5, #0x18]
	strh r1, [r0, #8]
	ldrh r1, [r5, #0x1a]
	strh r1, [r0, #0xa]
	ldr r0, [r6]
	ldr r1, [sp, #8]
	add r0, r0, r7
	bl sub_0204D68C
	ldrb r0, [r5, #0xb]
	ldrb r1, [r5, #8]
	ldrb r2, [r5, #9]
	str r0, [sp]
	ldrb r3, [r5, #0xa]
	ldr r0, [r6]
	bl sub_0204C758
	ldr r0, [r6]
	ldr r2, [sp, #8]
	add r0, #0x40
	add r1, r5, #0
	bl sub_0204C5E4
	ldr r1, [r5, #0xc]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	ldr r2, [sp, #8]
	add r0, #0xe0
	lsr r1, r1, #0x18
	bl sub_0204CDA4
	add r2, r4, #0
_0204B72C:
	ldr r1, [r6]
	lsl r0, r4, #1
	add r0, r1, r0
	add r0, #0xf0
	add r4, r4, #1
	strh r2, [r0]
	cmp r4, #2
	blt _0204B72C
	mov r0, #1
	bl sub_0204C614
	mov r0, #1
	bl sub_0204C640
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204B74C: .word 0x0000029F
_0204B750: .word 0x0209AFD8
_0204B754: .word 0x0214193C
	thumb_func_end sub_0204B6A8

	thumb_func_start sub_0204B758
sub_0204B758: ; 0x0204B758
	push {r3, r4, r5, lr}
	mov r0, #0
	mov r5, #0
	bl sub_0204C614
	ldr r4, _0204B790 ; =0x0214193C
	ldr r0, [r4]
	bl sub_0204C784
	ldr r0, [r4]
	add r0, #0x40
	bl sub_0204C884
	ldr r0, [r4]
	add r0, #0xe0
	bl sub_0204CDF8
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	add r0, r1, r0
	bl sub_0204D6F8
	ldr r0, [r4]
	bl sub_0203A24C
	str r5, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204B790: .word 0x0214193C
	thumb_func_end sub_0204B758

	thumb_func_start sub_0204B794
sub_0204B794: ; 0x0204B794
	push {r4, lr}
	ldr r4, _0204B7C4 ; =0x0214193C
	ldr r0, [r4]
	cmp r0, #0
	beq _0204B7C0
	mov r0, #0
	bl sub_0204C614
	bl sub_0204C66C
	bl sub_0204C690
	ldr r0, [r4]
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _0204B7BA
	bl sub_02062CE8
_0204B7BA:
	mov r0, #1
	bl sub_0204C614
_0204B7C0:
	pop {r4, pc}
	nop
_0204B7C4: .word 0x0214193C
	thumb_func_end sub_0204B794

	thumb_func_start sub_0204B7C8
sub_0204B7C8: ; 0x0204B7C8
	push {r4, lr}
	ldr r4, _0204B7F8 ; =0x0214193C
	ldr r0, [r4]
	cmp r0, #0
	beq _0204B7F4
	bl sub_0204C628
	cmp r0, #0
	beq _0204B7F4
	ldr r0, [r4]
	bl sub_0204C798
	ldr r0, [r4]
	add r0, #0xe0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0204B7EE
	bl sub_0204CE6C
_0204B7EE:
	mov r0, #1
	bl sub_0204C640
_0204B7F4:
	pop {r4, pc}
	nop
_0204B7F8: .word 0x0214193C
	thumb_func_end sub_0204B7C8

	thumb_func_start sub_0204B7FC
sub_0204B7FC: ; 0x0204B7FC
	push {r3, lr}
	ldr r0, _0204B818 ; =0x0214193C
	ldr r0, [r0]
	cmp r0, #0
	beq _0204B816
	mov r0, #0
	bl sub_0204C614
	bl sub_0204C66C
	mov r0, #1
	bl sub_0204C614
_0204B816:
	pop {r3, pc}
	.align 2, 0
_0204B818: .word 0x0214193C
	thumb_func_end sub_0204B7FC

	thumb_func_start sub_0204B81C
sub_0204B81C: ; 0x0204B81C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, _0204B8B8 ; =0x0214193C
	str r3, [sp, #4]
	ldr r3, [r1]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r3, r1
	mov ip, r2
	ldrh r2, [r1, #0x14]
	mov r4, #0
	cmp r2, #0
	bls _0204B84C
	ldr r2, [r1, #8]
_0204B83A:
	lsl r5, r4, #6
	add r5, r2, r5
	ldr r5, [r5, #0x3c]
	lsr r5, r5, #0x1f
	bne _0204B850
	ldrh r5, [r1, #0x14]
	add r4, r4, #1
	cmp r4, r5
	blo _0204B83A
_0204B84C:
	mov r4, #0
	mvn r4, r4
_0204B850:
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	beq _0204B8B0
	mov r7, #0x43
	lsl r7, r7, #2
	ldr r2, [r3, r7]
	lsl r1, r4, #6
	add r5, r2, r1
	add r3, sp, #0x20
	add r1, r6, #0
	mov r6, #0
	mvn r6, r6
	ldrh r3, [r3]
	lsr r6, r6, #0x11
	mov r2, ip
	and r6, r3
	mov r3, #2
	lsl r3, r3, #0xe
	orr r3, r6
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_0204D7B0
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0204B8B8 ; =0x0214193C
	sub r7, #8
	ldr r0, [r0]
	ldr r3, [sp, #4]
	add r0, r0, r7
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204DC68
	add r0, r6, #0
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x3c]
	mov r0, #1
	bic r1, r0
	add sp, #8
	str r1, [r5, #0x3c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204B8B0:
	add r0, r1, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204B8B8: .word 0x0214193C
	thumb_func_end sub_0204B81C

	thumb_func_start sub_0204B8BC
sub_0204B8BC: ; 0x0204B8BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	ldr r0, _0204B97C ; =0x0214193C
	mov ip, r2
	ldr r2, [r0]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r2, r0
	str r1, [sp, #4]
	ldrh r1, [r0, #0x14]
	mov r4, #0
	cmp r1, #0
	bls _0204B8EC
	ldr r1, [r0, #8]
_0204B8DA:
	lsl r3, r4, #6
	add r3, r1, r3
	ldr r3, [r3, #0x3c]
	lsr r3, r3, #0x1f
	bne _0204B8F0
	ldrh r3, [r0, #0x14]
	add r4, r4, #1
	cmp r4, r3
	blo _0204B8DA
_0204B8EC:
	mov r4, #0
	mvn r4, r4
_0204B8F0:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0204B976
	mov r6, #0x43
	lsl r6, r6, #2
	ldr r1, [r2, r6]
	lsl r0, r4, #6
	add r2, sp, #0xc
	ldr r3, _0204B980 ; =0x02093EF0
	add r5, r1, r0
	str r2, [sp, #8]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0204B984 ; =0x00300010
	str r7, [sp, #0x1c]
	and r0, r1
	str r0, [sp, #0x14]
	mov r0, #0x3e
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	lsr r0, r0, #0x11
	mov r1, ip
	and r1, r0
	lsr r0, r2, #0xb
	orr r0, r1
	lsl r0, r0, #0x10
	ldr r3, _0204B988 ; =0x0209AFD8
	lsr r0, r0, #0x10
	add r1, r7, #0
	mov r2, #1
	bl sub_0203A1FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	sub r6, #8
	str r0, [sp]
	ldr r0, _0204B97C ; =0x0214193C
	ldr r2, [sp, #8]
	ldr r0, [r0]
	add r1, r4, #0
	add r0, r0, r6
	mov r6, #0
	mov r3, #0
	bl sub_0204D868
	ldr r1, [r5, #0x3c]
	sub r0, r6, #1
	lsr r0, r0, #1
	and r1, r0
	mov r0, #1
	str r6, [r5, #0x24]
	bic r1, r0
	str r1, [r5, #0x3c]
	ldr r0, [sp, #0x20]
	bl sub_0203A24C
	add r0, r4, #0
_0204B976:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0204B97C: .word 0x0214193C
_0204B980: .word 0x02093EF0
_0204B984: .word 0x00300010
_0204B988: .word 0x0209AFD8
	thumb_func_end sub_0204B8BC

	thumb_func_start sub_0204B98C
sub_0204B98C: ; 0x0204B98C
	push {r4, r5, r6, lr}
	ldr r4, _0204BA38 ; =0x0214193C
	lsl r5, r0, #6
	mov r6, #0x43
	ldr r0, [r4]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	add r0, r0, r5
	add r0, #0x2c
	bl sub_0203CAE8
	cmp r0, #0
	bne _0204B9B8
	add r0, r6, #0
	ldr r1, [r4]
	sub r0, #8
	ldr r0, [r1, r0]
	ldr r1, [r1, r6]
	add r1, r1, r5
	add r1, #0x2c
	bl sub_0203CB40
_0204B9B8:
	mov r6, #0x43
	ldr r0, [r4]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	add r0, r0, r5
	add r0, #0x34
	bl sub_0203CAE8
	cmp r0, #0
	bne _0204B9DC
	ldr r1, [r4]
	sub r0, r6, #4
	ldr r0, [r1, r0]
	ldr r1, [r1, r6]
	add r1, r1, r5
	add r1, #0x34
	bl sub_0203CB40
_0204B9DC:
	mov r0, #0x43
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r0, r5
	ldr r0, [r1, #0x24]
	cmp r0, #0
	beq _0204BA0E
	ldr r2, [r1, #0x3c]
	lsl r3, r2, #0x1f
	lsr r3, r3, #0x1f
	bne _0204B9FA
	bl sub_0203A24C
	b _0204BA00
_0204B9FA:
	mov r0, #1
	bic r2, r0
	str r2, [r1, #0x3c]
_0204BA00:
	mov r0, #0x43
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r2, #0
	add r0, r0, r5
	str r2, [r0, #0x24]
_0204BA0E:
	mov r3, #0x43
	ldr r0, [r4]
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r1, _0204BA3C ; =0x7FFFFFFF
	add r0, r0, r5
	ldr r2, [r0, #0x3c]
	add r6, r2, #0
	and r6, r1
	add r2, r1, #1
	orr r2, r6
	str r2, [r0, #0x3c]
	ldr r0, [r4]
	ldr r0, [r0, r3]
	add r3, r0, r5
	ldr r2, [r3, #0x3c]
	add r0, r1, #2
	and r0, r2
	str r0, [r3, #0x3c]
	pop {r4, r5, r6, pc}
	nop
_0204BA38: .word 0x0214193C
_0204BA3C: .word 0x7FFFFFFF
	thumb_func_end sub_0204B98C

	thumb_func_start sub_0204BA40
sub_0204BA40: ; 0x0204BA40
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0204BAB4 ; =0x0214193C
	lsl r4, r0, #6
	mov r7, #0x43
	ldr r0, [r6]
	lsl r7, r7, #2
	ldr r0, [r0, r7]
	add r5, r1, #0
	add r0, r0, r4
	mov r1, #1
	bl sub_02060B50
	cmp r0, #0
	beq _0204BA7C
	ldr r0, [r6]
	mov r1, #1
	ldr r0, [r0, r7]
	add r0, r0, r4
	bl sub_02060B48
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x10]
	blx sub_0207B0AC
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x10]
	add r1, r6, #0
	bl sub_0207571C
_0204BA7C:
	ldr r6, _0204BAB4 ; =0x0214193C
	mov r7, #0x43
	ldr r0, [r6]
	lsl r7, r7, #2
	ldr r0, [r0, r7]
	mov r1, #2
	add r0, r0, r4
	bl sub_02060B50
	cmp r0, #0
	beq _0204BAB2
	ldr r0, [r6]
	mov r1, #2
	ldr r0, [r0, r7]
	add r0, r0, r4
	bl sub_02060B48
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x10]
	blx sub_0207B0AC
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x10]
	add r1, r4, #0
	bl sub_02075768
_0204BAB2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204BAB4: .word 0x0214193C
	thumb_func_end sub_0204BA40

	thumb_func_start sub_0204BAB8
sub_0204BAB8: ; 0x0204BAB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _0204BACC
	cmp r0, #2
	bne _0204BB0C
_0204BACC:
	ldr r0, _0204BB54 ; =0x0214193C
	lsl r4, r5, #6
	ldr r1, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	add r0, r0, r4
	bl sub_02060B50
	cmp r0, #0
	beq _0204BB0C
	ldr r0, _0204BB54 ; =0x0214193C
	ldr r1, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	add r0, r0, r4
	bl sub_02060B48
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	blx sub_0207B0AC
	ldr r1, [sp]
	add r0, r6, #0
	add r1, r4, r1
	add r2, r7, #0
	bl sub_0207571C
_0204BB0C:
	ldr r0, [sp, #0x18]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0204BB52
	lsl r4, r5, #6
	ldr r5, _0204BB54 ; =0x0214193C
	mov r0, #0x43
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r0, r0, r4
	bl sub_02060B50
	cmp r0, #0
	beq _0204BB52
	mov r0, #0x43
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r0, r0, r4
	bl sub_02060B48
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	blx sub_0207B0AC
	ldr r1, [sp]
	add r0, r6, #0
	add r1, r4, r1
	add r2, r7, #0
	bl sub_02075768
_0204BB52:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204BB54: .word 0x0214193C
	thumb_func_end sub_0204BAB8

	thumb_func_start sub_0204BB58
sub_0204BB58: ; 0x0204BB58
	push {r3, r4}
	add r2, r1, #0
	ldr r1, _0204BB7C ; =0x0214193C
	lsl r0, r0, #6
	ldr r3, [r1]
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	mov r3, #4
	add r4, r1, r0
_0204BB6C:
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _0204BB6C
	ldr r0, [r4]
	str r0, [r2]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0204BB7C: .word 0x0214193C
	thumb_func_end sub_0204BB58

	thumb_func_start sub_0204BB80
sub_0204BB80: ; 0x0204BB80
	push {r4, r5, lr}
	sub sp, #0x24
	mov r5, #1
	cmp r1, #0
	beq _0204BB8C
	mov r5, #2
_0204BB8C:
	add r4, sp, #0
	add r1, r4, #0
	bl sub_0204BB58
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02060B48
	add sp, #0x24
	pop {r4, r5, pc}
	thumb_func_end sub_0204BB80

	thumb_func_start sub_0204BBA0
sub_0204BBA0: ; 0x0204BBA0
	push {r3, r4, lr}
	sub sp, #0xc
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrh r4, [r4]
	str r4, [sp, #8]
	bl sub_0204BBB8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0204BBA0

	thumb_func_start sub_0204BBB8
sub_0204BBB8: ; 0x0204BBB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	ldr r1, _0204BC44 ; =0x0214193C
	str r2, [sp, #0xc]
	ldr r2, [r1]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r2, [r1, #0x16]
	add r5, r3, #0
	mov r4, #0
	cmp r2, #0
	bls _0204BBEC
	ldr r2, [r1, #0xc]
	mov r3, #0x18
_0204BBD8:
	add r6, r4, #0
	mul r6, r3
	add r6, r2, r6
	ldr r6, [r6, #0x14]
	lsr r6, r6, #0x1f
	bne _0204BBF0
	ldrh r6, [r1, #0x16]
	add r4, r4, #1
	cmp r4, r6
	blo _0204BBD8
_0204BBEC:
	mov r4, #0
	mvn r4, r4
_0204BBF0:
	mov r2, #0
	mvn r2, r2
	cmp r4, r2
	beq _0204BC3C
	add r1, r7, #0
	add r7, sp, #0x28
	ldrh r3, [r7, #8]
	lsr r2, r2, #0x11
	and r3, r2
	mov r2, #2
	lsl r2, r2, #0xe
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204AB1C
	add r6, r0, #0
	str r5, [sp]
	ldrh r0, [r7]
	ldr r3, [sp, #0xc]
	add r2, r6, #0
	str r0, [sp, #4]
	ldrh r0, [r7, #4]
	str r0, [sp, #8]
	ldr r0, _0204BC44 ; =0x0214193C
	ldr r1, [r0]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r1, r0
	add r1, r4, #0
	bl sub_0204D9F4
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204BC3C:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BC44: .word 0x0214193C
	thumb_func_end sub_0204BBB8

	thumb_func_start sub_0204BC48
sub_0204BC48: ; 0x0204BC48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, _0204BCCC ; =0x0214193C
	str r2, [sp, #4]
	ldr r2, [r1]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r2, [r1, #0x16]
	add r5, r3, #0
	mov r4, #0
	cmp r2, #0
	bls _0204BC7C
	ldr r2, [r1, #0xc]
	mov r3, #0x18
_0204BC68:
	add r6, r4, #0
	mul r6, r3
	add r6, r2, r6
	ldr r6, [r6, #0x14]
	lsr r6, r6, #0x1f
	bne _0204BC80
	ldrh r6, [r1, #0x16]
	add r4, r4, #1
	cmp r4, r6
	blo _0204BC68
_0204BC7C:
	mov r4, #0
	mvn r4, r4
_0204BC80:
	mov r2, #0
	mvn r2, r2
	cmp r4, r2
	beq _0204BCC4
	add r3, sp, #0x20
	ldrh r3, [r3]
	lsr r2, r2, #0x11
	add r1, r7, #0
	and r3, r2
	mov r2, #2
	lsl r2, r2, #0xe
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204AB1C
	add r6, r0, #0
	ldr r0, _0204BCCC ; =0x0214193C
	str r5, [sp]
	ldr r1, [r0]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r3, [sp, #4]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204DB2C
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204BCC4:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BCCC: .word 0x0214193C
	thumb_func_end sub_0204BC48

	thumb_func_start sub_0204BCD0
sub_0204BCD0: ; 0x0204BCD0
	push {r3, r4, r5, r6}
	ldr r5, _0204BD08 ; =0x0214193C
	add r1, r0, #0
	mov r0, #0x18
	ldr r2, [r5]
	add r0, #0xf8
	mov r4, #0x18
	ldr r0, [r2, r0]
	mul r1, r4
	add r0, r0, r1
	ldr r3, [r0, #0x14]
	ldr r2, _0204BD0C ; =0x7FFFFFFF
	add r6, r3, #0
	and r6, r2
	add r3, r2, #1
	orr r3, r6
	str r3, [r0, #0x14]
	ldr r0, [r5]
	add r4, #0xf8
	ldr r0, [r0, r4]
	add r3, r0, r1
	ldr r1, [r3, #0x14]
	add r0, r2, #1
	and r0, r1
	str r0, [r3, #0x14]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0204BD08: .word 0x0214193C
_0204BD0C: .word 0x7FFFFFFF
	thumb_func_end sub_0204BCD0

	thumb_func_start sub_0204BD10
sub_0204BD10: ; 0x0204BD10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	lsl r6, r2, #5
	cmp r2, #0
	bne _0204BD1C
	ldr r6, [r5, #8]
_0204BD1C:
	add r4, r0, #0
	ldr r0, _0204BD98 ; =0x0214193C
	mov r7, #0x18
	ldr r1, [r0]
	mov r0, #0x18
	add r0, #0xf8
	ldr r0, [r1, r0]
	mul r4, r7
	add r0, r0, r4
	mov r1, #1
	bl sub_02060B84
	cmp r0, #0
	beq _0204BD5C
	ldr r0, _0204BD98 ; =0x0214193C
	add r7, #0xf8
	ldr r0, [r0]
	mov r1, #1
	ldr r0, [r0, r7]
	add r0, r0, r4
	bl sub_02060B7C
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	blx sub_0207B0AC
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020755A0
_0204BD5C:
	ldr r7, _0204BD98 ; =0x0214193C
	mov r0, #0x11
	ldr r1, [r7]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	add r0, r0, r4
	bl sub_02060B84
	cmp r0, #0
	beq _0204BD96
	mov r0, #0x11
	ldr r1, [r7]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	add r0, r0, r4
	bl sub_02060B7C
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	blx sub_0207B0AC
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0207560C
_0204BD96:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204BD98: .word 0x0214193C
	thumb_func_end sub_0204BD10

	thumb_func_start sub_0204BD9C
sub_0204BD9C: ; 0x0204BD9C
	add r2, r1, #0
	ldr r1, _0204BDBC ; =0x0214193C
	ldr r3, [r1]
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r3, [r3, r1]
	mov r1, #0x18
	mul r1, r0
	add r3, r3, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	.align 2, 0
_0204BDBC: .word 0x0214193C
	thumb_func_end sub_0204BD9C

	thumb_func_start sub_0204BDC0
sub_0204BDC0: ; 0x0204BDC0
	push {r4, r5, lr}
	sub sp, #0x14
	mov r5, #1
	cmp r1, #0
	beq _0204BDCC
	mov r5, #2
_0204BDCC:
	add r4, sp, #0
	add r1, r4, #0
	bl sub_0204BD9C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02060B7C
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end sub_0204BDC0

	thumb_func_start sub_0204BDE0
sub_0204BDE0: ; 0x0204BDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, _0204BE60 ; =0x0214193C
	str r3, [sp, #8]
	str r2, [sp, #4]
	ldr r2, [r0]
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r2, r0
	mov ip, r1
	ldrh r1, [r0, #0x18]
	mov r4, #0
	cmp r1, #0
	bls _0204BE16
	ldr r1, [r0, #0x10]
	mov r3, #0x14
_0204BE02:
	add r5, r4, #0
	mul r5, r3
	add r5, r1, r5
	ldr r5, [r5, #0x10]
	cmp r5, #0
	bne _0204BE1A
	ldrh r5, [r0, #0x18]
	add r4, r4, #1
	cmp r4, r5
	blo _0204BE02
_0204BE16:
	mov r4, #0
	mvn r4, r4
_0204BE1A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r5, [r2, r0]
	mov r0, #0x14
	add r7, r4, #0
	mul r7, r0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r2, [sp, #8]
	mov r1, ip
	add r6, r5, r7
	bl sub_0204AB1C
	str r0, [r5, r7]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_0204AB1C
	str r0, [r6, #4]
	ldr r0, _0204BE60 ; =0x0214193C
	ldr r2, [r5, r7]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	ldr r3, [r6, #4]
	add r0, #0xf0
	str r0, [sp, #0xc]
	add r0, r1, r0
	add r1, r4, #0
	bl sub_0204DC2C
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BE60: .word 0x0214193C
	thumb_func_end sub_0204BDE0

	thumb_func_start sub_0204BE64
sub_0204BE64: ; 0x0204BE64
	push {r4, lr}
	ldr r1, _0204BE98 ; =0x0214193C
	ldr r2, [r1]
	mov r1, #0x45
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	mov r1, #0x14
	mul r1, r0
	ldr r0, [r2, r1]
	add r4, r2, r1
	cmp r0, #0
	beq _0204BE84
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
_0204BE84:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0204BE92
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #4]
_0204BE92:
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
_0204BE98: .word 0x0214193C
	thumb_func_end sub_0204BE64

	thumb_func_start sub_0204BE9C
sub_0204BE9C: ; 0x0204BE9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0204BEC4 ; =0x0000064B
	add r4, r2, #0
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _0204BEC8 ; =0x0209AFD8
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #1
	bl sub_0203A1FC
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	add r7, r0, #0
	bl sub_0204C800
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204BEC4: .word 0x0000064B
_0204BEC8: .word 0x0209AFD8
	thumb_func_end sub_0204BE9C

	thumb_func_start sub_0204BECC
sub_0204BECC: ; 0x0204BECC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204C884
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_0204BECC

	thumb_func_start sub_0204BEDC
sub_0204BEDC: ; 0x0204BEDC
	push {r4, r5}
	mov r3, #2
	mov r5, #0
	ldrsh r4, [r2, r3]
	ldrsh r2, [r2, r5]
	add r0, #0x98
	ldr r3, [r0]
	mov r0, #0x48
	mul r0, r1
	lsl r2, r2, #0xc
	add r1, r3, r0
	str r2, [r3, r0]
	lsl r0, r4, #0xc
	str r0, [r1, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0204BEDC

	thumb_func_start sub_0204BEFC
sub_0204BEFC: ; 0x0204BEFC
	add r0, #0x98
	ldr r3, [r0]
	mov r0, #0x48
	mul r0, r1
	add r1, r3, r0
	ldr r0, [r3, r0]
	asr r0, r0, #0xc
	strh r0, [r2]
	ldr r0, [r1, #4]
	asr r0, r0, #0xc
	strh r0, [r2, #2]
	bx lr
	thumb_func_end sub_0204BEFC

	thumb_func_start sub_0204BF14
sub_0204BF14: ; 0x0204BF14
	ldr r3, _0204BF18 ; =sub_0204C890
	bx r3
	.align 2, 0
_0204BF18: .word sub_0204C890
	thumb_func_end sub_0204BF14

	thumb_func_start sub_0204BF1C
sub_0204BF1C: ; 0x0204BF1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r2, [sp, #4]
	ldr r0, _0204BF90 ; =0x00000703
	add r7, r1, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _0204BF94 ; =0x0209AFD8
	mov r1, #0x18
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	blx sub_020787A8
	ldr r0, _0204BF90 ; =0x00000703
	mov r1, #0xe4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _0204BF94 ; =0x0209AFD8
	mul r1, r6
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r4]
	strh r6, [r4, #0xc]
	strb r7, [r4, #0xf]
	cmp r6, #0
	ble _0204BF74
	mov r7, #0xe4
_0204BF62:
	add r0, r5, #0
	ldr r1, [r4]
	mul r0, r7
	add r0, r1, r0
	bl sub_0204D040
	add r5, r5, #1
	cmp r5, r6
	blt _0204BF62
_0204BF74:
	add r0, r4, #0
	bl sub_0204C028
	add r0, r4, #0
	mov r1, #1
	bl sub_0204BFD4
	add r0, r4, #0
	bl sub_0204C6D8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204BF90: .word 0x00000703
_0204BF94: .word 0x0209AFD8
	thumb_func_end sub_0204BF1C

	thumb_func_start sub_0204BF98
sub_0204BF98: ; 0x0204BF98
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0204C724
	ldrh r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0204BFC4
	mov r6, #0xe4
_0204BFAA:
	add r1, r4, #0
	ldr r2, [r5]
	mul r1, r6
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _0204BFBC
	add r0, r2, r1
	bl sub_0204C108
_0204BFBC:
	ldrh r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _0204BFAA
_0204BFC4:
	ldr r0, [r5]
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0204BF98

	thumb_func_start sub_0204BFD4
sub_0204BFD4: ; 0x0204BFD4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0, #0xe]
	mov r2, #0x10
	lsr r1, r1, #0x1b
	bic r3, r2
	orr r1, r3
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0204BFD4

	thumb_func_start sub_0204BFE8
sub_0204BFE8: ; 0x0204BFE8
	ldrb r0, [r0, #0xe]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0204BFE8

	thumb_func_start sub_0204BFF0
sub_0204BFF0: ; 0x0204BFF0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0, #0xe]
	mov r2, #0x20
	lsr r1, r1, #0x1a
	bic r3, r2
	orr r1, r3
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0204BFF0

	thumb_func_start sub_0204C004
sub_0204C004: ; 0x0204C004
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0, #0xe]
	mov r2, #0x40
	lsr r1, r1, #0x19
	bic r3, r2
	orr r1, r3
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0204C004

	thumb_func_start sub_0204C018
sub_0204C018: ; 0x0204C018
	ldrb r2, [r0, #0xe]
	str r1, [r0, #8]
	mov r1, #0xf
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strb r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0204C018

	thumb_func_start sub_0204C028
sub_0204C028: ; 0x0204C028
	ldr r1, _0204C03C ; =0x0214193C
	ldrb r2, [r0, #0xe]
	ldr r1, [r1]
	add r1, #0x40
	str r1, [r0, #8]
	mov r1, #0xf
	bic r2, r1
	strb r2, [r0, #0xe]
	bx lr
	nop
_0204C03C: .word 0x0214193C
	thumb_func_end sub_0204C028

	thumb_func_start sub_0204C040
sub_0204C040: ; 0x0204C040
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x14
	add r7, r3, #0
	mul r7, r0
	ldr r0, _0204C0A0 ; =0x0214193C
	add r4, r1, #0
	ldr r3, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r6, [r3, r0]
	sub r0, r0, #4
	ldr r1, [r3, r0]
	add r0, r2, #0
	mov r5, #0x18
	mul r0, r5
	add r0, r1, r0
	add r1, r6, r7
	str r0, [sp]
	ldr r0, [r1, #8]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	ldr r0, [r1, #0xc]
	lsl r1, r4, #0x10
	str r0, [sp, #8]
	add r5, #0xf4
	ldr r5, [r3, r5]
	add r6, sp, #0x10
	lsl r3, r4, #6
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r5, r3
	bl sub_0204D11C
	add r3, sp, #0x48
	ldrh r0, [r3, #8]
	ldr r1, [sp, #0x48]
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #4]
	ldr r0, [sp, #0xc]
	bl sub_0204D138
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204C0A0: .word 0x0214193C
	thumb_func_end sub_0204C040

	thumb_func_start sub_0204C0A4
sub_0204C0A4: ; 0x0204C0A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0xc]
	mov r0, #0x14
	add r7, r3, #0
	mul r7, r0
	ldr r0, _0204C104 ; =0x0214193C
	add r4, r1, #0
	ldr r3, [r0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r6, [r3, r0]
	sub r0, r0, #4
	ldr r1, [r3, r0]
	add r0, r2, #0
	mov r5, #0x18
	mul r0, r5
	add r0, r1, r0
	add r1, r6, r7
	str r0, [sp]
	ldr r0, [r1, #8]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	ldr r0, [r1, #0xc]
	lsl r1, r4, #0x10
	str r0, [sp, #8]
	add r5, #0xf4
	ldr r5, [r3, r5]
	add r6, sp, #0x10
	lsl r3, r4, #6
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r5, r3
	bl sub_0204D11C
	add r3, sp, #0x48
	ldrh r0, [r3, #8]
	ldr r1, [sp, #0x48]
	add r2, r6, #0
	str r0, [sp]
	ldrh r3, [r3, #4]
	ldr r0, [sp, #0xc]
	bl sub_0204D17C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204C104: .word 0x0214193C
	thumb_func_end sub_0204C0A4

	thumb_func_start sub_0204C108
sub_0204C108: ; 0x0204C108
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r1, r4, #0
	bl sub_0204CFD8
	add r0, r4, #0
	add r0, #0x68
	bl sub_0204D1F4
	add r0, r4, #0
	bl sub_0204D040
	pop {r4, pc}
	thumb_func_end sub_0204C108

	thumb_func_start sub_0204C124
sub_0204C124: ; 0x0204C124
	ldr r3, [r0, #0x60]
	ldr r2, _0204C134 ; =0xFBFFFFFF
	lsl r1, r1, #0x1f
	and r2, r3
	lsr r1, r1, #5
	orr r1, r2
	str r1, [r0, #0x60]
	bx lr
	.align 2, 0
_0204C134: .word 0xFBFFFFFF
	thumb_func_end sub_0204C124

	thumb_func_start sub_0204C138
sub_0204C138: ; 0x0204C138
	ldr r0, [r0, #0x60]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0204C138

	thumb_func_start sub_0204C140
sub_0204C140: ; 0x0204C140
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, r2, #0
	add r2, sp, #4
	add r5, r0, #0
	bl sub_0204D0FC
	mov r0, #0
	ldrsh r2, [r4, r0]
	add r1, sp, #0
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1]
	mov r0, #2
	ldrsh r2, [r4, r0]
	mov r0, #6
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1, #2]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0204C210
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204C140

	thumb_func_start sub_0204C178
sub_0204C178: ; 0x0204C178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	add r2, sp, #0
	bl sub_0204D0FC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204C21C
	mov r0, #0
	add r1, sp, #0
	ldrsh r2, [r4, r0]
	ldrsh r0, [r1, r0]
	sub r0, r2, r0
	strh r0, [r4]
	mov r0, #2
	ldrsh r2, [r4, r0]
	ldrsh r0, [r1, r0]
	sub r0, r2, r0
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204C178

	thumb_func_start sub_0204C1A8
sub_0204C1A8: ; 0x0204C1A8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r1, r2, #0
	add r2, sp, #0
	add r6, r0, #0
	add r4, r3, #0
	bl sub_0204D0FC
	cmp r4, #0
	add r1, sp, #0
	bne _0204C1C4
	mov r0, #0
	b _0204C1C6
_0204C1C4:
	mov r0, #2
_0204C1C6:
	ldrsh r0, [r1, r0]
	add r2, r4, #0
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0204C228
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204C1A8

	thumb_func_start sub_0204C1DC
sub_0204C1DC: ; 0x0204C1DC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r2, sp, #0
	bl sub_0204D0FC
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204C234
	cmp r4, #0
	add r2, sp, #0
	bne _0204C202
	mov r1, #0
	ldrsh r1, [r2, r1]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_0204C202:
	mov r1, #2
	ldrsh r1, [r2, r1]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204C1DC

	thumb_func_start sub_0204C210
sub_0204C210: ; 0x0204C210
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	strh r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C210

	thumb_func_start sub_0204C21C
sub_0204C21C: ; 0x0204C21C
	ldrh r2, [r0, #0xc]
	ldrh r0, [r0, #0xe]
	strh r2, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C21C

	thumb_func_start sub_0204C228
sub_0204C228: ; 0x0204C228
	cmp r2, #0
	bne _0204C230
	strh r1, [r0, #0xc]
	bx lr
_0204C230:
	strh r1, [r0, #0xe]
	bx lr
	thumb_func_end sub_0204C228

	thumb_func_start sub_0204C234
sub_0204C234: ; 0x0204C234
	cmp r1, #0
	bne _0204C23E
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	bx lr
_0204C23E:
	mov r1, #0xe
	ldrsh r0, [r0, r1]
	bx lr
	thumb_func_end sub_0204C234

	thumb_func_start sub_0204C244
sub_0204C244: ; 0x0204C244
	ldr r3, [r0, #0x60]
	ldr r2, _0204C254 ; =0xFFF3FFFF
	lsl r1, r1, #0x1e
	and r2, r3
	lsr r1, r1, #0xc
	orr r1, r2
	str r1, [r0, #0x60]
	bx lr
	.align 2, 0
_0204C254: .word 0xFFF3FFFF
	thumb_func_end sub_0204C244

	thumb_func_start sub_0204C258
sub_0204C258: ; 0x0204C258
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	strh r2, [r0, #0x10]
	strh r1, [r0, #0x12]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C258

	thumb_func_start sub_0204C264
sub_0204C264: ; 0x0204C264
	cmp r2, #0
	bne _0204C26C
	strh r1, [r0, #0x10]
	bx lr
_0204C26C:
	strh r1, [r0, #0x12]
	bx lr
	thumb_func_end sub_0204C264

	thumb_func_start sub_0204C270
sub_0204C270: ; 0x0204C270
	ldr r2, [r1]
	ldr r1, [r1, #4]
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C270

	thumb_func_start sub_0204C27C
sub_0204C27C: ; 0x0204C27C
	ldr r2, [r0, #0x14]
	ldr r0, [r0, #0x18]
	str r2, [r1]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C27C

	thumb_func_start sub_0204C288
sub_0204C288: ; 0x0204C288
	cmp r2, #0
	bne _0204C290
	str r1, [r0, #0x14]
	bx lr
_0204C290:
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_0204C288

	thumb_func_start sub_0204C294
sub_0204C294: ; 0x0204C294
	cmp r1, #0
	bne _0204C29C
	ldr r0, [r0, #0x14]
	bx lr
_0204C29C:
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_0204C294

	thumb_func_start sub_0204C2A0
sub_0204C2A0: ; 0x0204C2A0
	add r0, #0x58
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C2A0

	thumb_func_start sub_0204C2A8
sub_0204C2A8: ; 0x0204C2A8
	add r0, #0x58
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C2A8

	thumb_func_start sub_0204C2B0
sub_0204C2B0: ; 0x0204C2B0
	push {r3, r4}
	mov r3, #1
	cmp r1, #0
	beq _0204C2BA
	mov r3, #2
_0204C2BA:
	cmp r2, #0
	ldr r2, [r0, #0x60]
	ldr r1, _0204C2EC ; =0xFFCFFFFF
	bne _0204C2D8
	and r1, r2
	lsl r2, r2, #0xa
	lsr r4, r2, #0x1e
	mvn r2, r3
	and r2, r4
	lsl r2, r2, #0x1e
	lsr r2, r2, #0xa
	orr r1, r2
	str r1, [r0, #0x60]
	pop {r3, r4}
	bx lr
_0204C2D8:
	and r1, r2
	lsl r2, r2, #0xa
	lsr r2, r2, #0x1e
	orr r2, r3
	lsl r2, r2, #0x1e
	lsr r2, r2, #0xa
	orr r1, r2
	str r1, [r0, #0x60]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0204C2EC: .word 0xFFCFFFFF
	thumb_func_end sub_0204C2B0

	thumb_func_start sub_0204C2F0
sub_0204C2F0: ; 0x0204C2F0
	mov r2, #0
	cmp r1, #0
	ldr r0, [r0, #0x60]
	bne _0204C306
	lsl r0, r0, #0xa
	lsr r1, r0, #0x1e
	mov r0, #1
	tst r1, r0
	beq _0204C312
	add r2, r0, #0
	b _0204C312
_0204C306:
	lsl r0, r0, #0xa
	lsr r1, r0, #0x1e
	mov r0, #2
	tst r0, r1
	beq _0204C312
	mov r2, #1
_0204C312:
	add r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C2F0

	thumb_func_start sub_0204C318
sub_0204C318: ; 0x0204C318
	push {r3, r4}
	ldr r4, [r0, #0x60]
	ldr r2, _0204C368 ; =0xFF3FFFFF
	add r3, r0, #0
	and r4, r2
	lsl r2, r1, #0x1e
	lsr r2, r2, #8
	orr r2, r4
	add r3, #0x60
	str r2, [r0, #0x60]
	cmp r1, #0
	bne _0204C350
	lsl r0, r2, #0x14
	lsr r4, r0, #0x1c
	mov r1, #8
	add r0, r4, #0
	tst r0, r1
	beq _0204C364
	ldr r0, _0204C36C ; =0xFFFFF0FF
	and r2, r0
	add r0, r4, #0
	eor r0, r1
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x14
	orr r0, r2
	str r0, [r3]
	pop {r3, r4}
	bx lr
_0204C350:
	ldr r0, _0204C36C ; =0xFFFFF0FF
	lsl r1, r2, #0x14
	and r0, r2
	lsr r2, r1, #0x1c
	mov r1, #8
	orr r1, r2
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x14
	orr r0, r1
	str r0, [r3]
_0204C364:
	pop {r3, r4}
	bx lr
	.align 2, 0
_0204C368: .word 0xFF3FFFFF
_0204C36C: .word 0xFFFFF0FF
	thumb_func_end sub_0204C318

	thumb_func_start sub_0204C370
sub_0204C370: ; 0x0204C370
	ldr r0, [r0, #0x60]
	lsl r0, r0, #8
	lsr r0, r0, #0x1e
	bx lr
	thumb_func_end sub_0204C370

	thumb_func_start sub_0204C378
sub_0204C378: ; 0x0204C378
	push {r3, r4}
	ldr r4, [r0, #0x60]
	ldr r3, _0204C394 ; =0xFFFF0FFF
	lsl r1, r1, #0x1c
	and r3, r4
	lsr r1, r1, #0x10
	orr r3, r1
	ldr r1, _0204C398 ; =0x7FFFFFFF
	and r3, r1
	lsl r1, r2, #0x1f
	orr r1, r3
	str r1, [r0, #0x60]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0204C394: .word 0xFFFF0FFF
_0204C398: .word 0x7FFFFFFF
	thumb_func_end sub_0204C378

	thumb_func_start sub_0204C39C
sub_0204C39C: ; 0x0204C39C
	ldr r0, [r0, #0x60]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0204C39C

	thumb_func_start sub_0204C3A8
sub_0204C3A8: ; 0x0204C3A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_02060B84
	add r0, r5, #0
	mov r1, #2
	bl sub_02060B84
	ldmia r5!, {r0, r1}
	add r4, #0x40
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204C3A8

	thumb_func_start sub_0204C3D0
sub_0204C3D0: ; 0x0204C3D0
	add r2, r0, #0
	add r2, #0x40
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0204C3D0

	thumb_func_start sub_0204C3E4
sub_0204C3E4: ; 0x0204C3E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_02060B50
	add r0, r4, #0
	mov r1, #2
	bl sub_02060B50
	add r5, #0x1c
	mov r2, #4
_0204C3FE:
	ldmia r4!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r2, r2, #1
	bne _0204C3FE
	ldr r0, [r4]
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204C3E4

	thumb_func_start sub_0204C40C
sub_0204C40C: ; 0x0204C40C
	push {r3, r4}
	add r3, r0, #0
	add r4, r1, #0
	add r3, #0x1c
	mov r2, #4
_0204C416:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0204C416
	ldr r0, [r3]
	str r0, [r4]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C40C

	thumb_func_start sub_0204C428
sub_0204C428: ; 0x0204C428
	add r0, #0x5c
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C428

	thumb_func_start sub_0204C430
sub_0204C430: ; 0x0204C430
	add r0, #0x5e
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C430

	thumb_func_start sub_0204C438
sub_0204C438: ; 0x0204C438
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x60]
	mov r0, #0xff
	bic r2, r0
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	orr r0, r2
	str r0, [r4, #0x60]
	ldr r0, [r4, #8]
	add r1, r4, #0
	bl sub_0204CFD8
	ldr r0, [r4, #8]
	add r1, r4, #0
	bl sub_0204CF70
	pop {r4, pc}
	thumb_func_end sub_0204C438

	thumb_func_start sub_0204C45C
sub_0204C45C: ; 0x0204C45C
	ldr r0, [r0, #0x60]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0204C45C

	thumb_func_start sub_0204C468
sub_0204C468: ; 0x0204C468
	ldr r3, [r0, #0x60]
	ldr r2, _0204C478 ; =0xFFFCFFFF
	lsl r1, r1, #0x1e
	and r2, r3
	lsr r1, r1, #0xe
	orr r1, r2
	str r1, [r0, #0x60]
	bx lr
	.align 2, 0
_0204C478: .word 0xFFFCFFFF
	thumb_func_end sub_0204C468

	thumb_func_start sub_0204C47C
sub_0204C47C: ; 0x0204C47C
	ldr r0, [r0, #0x60]
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0204C47C

	thumb_func_start sub_0204C488
sub_0204C488: ; 0x0204C488
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5a
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	bl sub_0204D348
	add r0, r4, #0
	bl sub_0204C540
	pop {r4, pc}
	thumb_func_end sub_0204C488

	thumb_func_start sub_0204C4A0
sub_0204C4A0: ; 0x0204C4A0
	add r0, #0x5a
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C4A0

	thumb_func_start sub_0204C4A8
sub_0204C4A8: ; 0x0204C4A8
	push {r3, lr}
	add r0, #0x68
	bl sub_0204D610
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204C4A8

	thumb_func_start sub_0204C4B8
sub_0204C4B8: ; 0x0204C4B8
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x5a
	ldrh r2, [r2]
	cmp r1, r2
	beq _0204C4D0
	bl sub_0204C488
	add r0, r4, #0
	bl sub_0204C540
_0204C4D0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204C4B8

	thumb_func_start sub_0204C4D4
sub_0204C4D4: ; 0x0204C4D4
	ldr r3, _0204C4DC ; =sub_0204D3A4
	add r0, #0x68
	bx r3
	nop
_0204C4DC: .word sub_0204D3A4
	thumb_func_end sub_0204C4D4

	thumb_func_start sub_0204C4E0
sub_0204C4E0: ; 0x0204C4E0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x68
	bl sub_0204D46C
	add r4, #0x68
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_0204D3BC
	pop {r4, pc}
	thumb_func_end sub_0204C4E0

	thumb_func_start sub_0204C4F8
sub_0204C4F8: ; 0x0204C4F8
	push {r3, lr}
	add r0, #0x68
	bl sub_0204D414
	ldr r0, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end sub_0204C4F8

	thumb_func_start sub_0204C504
sub_0204C504: ; 0x0204C504
	ldr r3, _0204C50C ; =sub_0204D434
	add r0, #0x68
	bx r3
	nop
_0204C50C: .word sub_0204D434
	thumb_func_end sub_0204C504

	thumb_func_start sub_0204C510
sub_0204C510: ; 0x0204C510
	push {r3, lr}
	add r0, #0x68
	bl sub_0204D414
	bl sub_02060590
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204C510

	thumb_func_start sub_0204C520
sub_0204C520: ; 0x0204C520
	ldr r3, [r0, #0x60]
	ldr r2, _0204C530 ; =0xFDFFFFFF
	lsl r1, r1, #0x1f
	and r2, r3
	lsr r1, r1, #6
	orr r1, r2
	str r1, [r0, #0x60]
	bx lr
	.align 2, 0
_0204C530: .word 0xFDFFFFFF
	thumb_func_end sub_0204C520

	thumb_func_start sub_0204C534
sub_0204C534: ; 0x0204C534
	ldr r0, [r0, #0x60]
	lsl r0, r0, #6
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0204C534

	thumb_func_start sub_0204C53C
sub_0204C53C: ; 0x0204C53C
	str r1, [r0, #0x54]
	bx lr
	thumb_func_end sub_0204C53C

	thumb_func_start sub_0204C540
sub_0204C540: ; 0x0204C540
	push {r3, lr}
	add r0, #0x68
	bl sub_0204D3F4
	mov r1, #1
	str r1, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204C540

	thumb_func_start sub_0204C550
sub_0204C550: ; 0x0204C550
	push {r3, lr}
	add r0, #0x68
	bl sub_0204D3F4
	mov r1, #0
	str r1, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204C550

	thumb_func_start sub_0204C560
sub_0204C560: ; 0x0204C560
	push {r3, lr}
	add r0, #0x68
	bl sub_0204D414
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	thumb_func_end sub_0204C560

	thumb_func_start sub_0204C56C
sub_0204C56C: ; 0x0204C56C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x68
	bl sub_0204D3F4
	mov r1, #1
	add r4, #0x68
	str r1, [r0, #0xc]
	add r0, r4, #0
	bl sub_0204D4A4
	pop {r4, pc}
	thumb_func_end sub_0204C56C

	thumb_func_start sub_0204C584
sub_0204C584: ; 0x0204C584
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r0, #0x60]
	ldr r1, _0204C5AC ; =0x87FFFFFF
	and r2, r1
	lsl r1, r4, #0x1c
	lsr r1, r1, #1
	orr r1, r2
	str r1, [r0, #0x60]
	add r0, #0x68
	bl sub_0204D3F4
	cmp r4, #0
	bne _0204C5A8
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0x18]
	pop {r4, pc}
_0204C5A8:
	str r4, [r0, #0x18]
	pop {r4, pc}
	.align 2, 0
_0204C5AC: .word 0x87FFFFFF
	thumb_func_end sub_0204C584

	thumb_func_start sub_0204C5B0
sub_0204C5B0: ; 0x0204C5B0
	ldr r3, _0204C5B8 ; =sub_0204D63C
	add r0, #0x68
	bx r3
	nop
_0204C5B8: .word sub_0204D63C
	thumb_func_end sub_0204C5B0

	thumb_func_start sub_0204C5BC
sub_0204C5BC: ; 0x0204C5BC
	ldr r3, _0204C5C4 ; =sub_0204D678
	add r0, #0x68
	bx r3
	nop
_0204C5C4: .word sub_0204D678
	thumb_func_end sub_0204C5BC

	thumb_func_start sub_0204C5C8
sub_0204C5C8: ; 0x0204C5C8
	cmp r1, #0
	ldr r2, [r0, #0x64]
	beq _0204C5D6
	mov r1, #1
	bic r2, r1
	str r2, [r0, #0x64]
	bx lr
_0204C5D6:
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0x64]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204C5C8

	thumb_func_start sub_0204C5E4
sub_0204C5E4: ; 0x0204C5E4
	push {r3, r4, r5, lr}
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r1, r2]
	ldr r5, _0204C60C ; =0x0209AF90
	strh r2, [r5, #0x28]
	mov r2, #2
	ldrsh r4, [r1, r2]
	strh r4, [r5, #0x2a]
	mov r4, #4
	ldrsh r4, [r1, r4]
	strh r4, [r5, #0x38]
	mov r4, #6
	ldrsh r1, [r1, r4]
	strh r1, [r5, #0x3a]
	ldr r1, _0204C610 ; =0x0209AFB8
	bl sub_0204C800
	pop {r3, r4, r5, pc}
	nop
_0204C60C: .word 0x0209AF90
_0204C610: .word 0x0209AFB8
	thumb_func_end sub_0204C5E4

	thumb_func_start sub_0204C614
sub_0204C614: ; 0x0204C614
	ldr r1, _0204C624 ; =0x0214193C
	ldr r1, [r1]
	cmp r1, #0
	beq _0204C620
	add r1, #0xf8
	str r0, [r1]
_0204C620:
	bx lr
	nop
_0204C624: .word 0x0214193C
	thumb_func_end sub_0204C614

	thumb_func_start sub_0204C628
sub_0204C628: ; 0x0204C628
	ldr r0, _0204C63C ; =0x0214193C
	ldr r0, [r0]
	cmp r0, #0
	beq _0204C636
	add r0, #0xf8
	ldr r0, [r0]
	bx lr
_0204C636:
	mov r0, #0
	bx lr
	nop
_0204C63C: .word 0x0214193C
	thumb_func_end sub_0204C628

	thumb_func_start sub_0204C640
sub_0204C640: ; 0x0204C640
	ldr r1, _0204C650 ; =0x0214193C
	ldr r1, [r1]
	cmp r1, #0
	beq _0204C64C
	add r1, #0xfc
	str r0, [r1]
_0204C64C:
	bx lr
	nop
_0204C650: .word 0x0214193C
	thumb_func_end sub_0204C640

	thumb_func_start sub_0204C654
sub_0204C654: ; 0x0204C654
	ldr r0, _0204C668 ; =0x0214193C
	ldr r0, [r0]
	cmp r0, #0
	beq _0204C662
	add r0, #0xfc
	ldr r0, [r0]
	bx lr
_0204C662:
	mov r0, #0
	bx lr
	nop
_0204C668: .word 0x0214193C
	thumb_func_end sub_0204C654

	thumb_func_start sub_0204C66C
sub_0204C66C: ; 0x0204C66C
	push {r4, lr}
	ldr r4, _0204C68C ; =0x0214193C
	ldr r0, [r4]
	cmp r0, #0
	beq _0204C68A
	bl sub_0204C654
	cmp r0, #0
	beq _0204C68A
	ldr r0, [r4]
	bl sub_0204C7B0
	mov r0, #0
	bl sub_0204C640
_0204C68A:
	pop {r4, pc}
	.align 2, 0
_0204C68C: .word 0x0214193C
	thumb_func_end sub_0204C66C

	thumb_func_start sub_0204C690
sub_0204C690: ; 0x0204C690
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0204C6D0 ; =0x0214193C
	mov r7, #1
	ldr r0, [r6]
	lsl r7, r7, #8
	ldr r5, [r0, r7]
	cmp r5, #0
	beq _0204C6CE
	ldr r4, _0204C6D4 ; =0x0209AFA8
_0204C6A2:
	ldrb r2, [r5, #0xe]
	lsl r0, r2, #0x1b
	lsr r0, r0, #0x1f
	beq _0204C6C4
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0204C6C4
	lsl r1, r2, #0x1a
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	lsr r1, r1, #0x1f
	lsl r2, r2, #1
	add r1, r1, r2
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	blx r1
_0204C6C4:
	ldr r0, [r6]
	ldr r5, [r5, #0x10]
	ldr r0, [r0, r7]
	cmp r5, r0
	bne _0204C6A2
_0204C6CE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204C6D0: .word 0x0214193C
_0204C6D4: .word 0x0209AFA8
	thumb_func_end sub_0204C690

	thumb_func_start sub_0204C6D8
sub_0204C6D8: ; 0x0204C6D8
	push {r4, r5}
	ldr r2, _0204C720 ; =0x0214193C
	mov r1, #1
	ldr r5, [r2]
	lsl r1, r1, #8
	ldr r3, [r5, r1]
	cmp r3, #0
	bne _0204C6FA
	str r0, [r5, r1]
	ldr r3, [r2]
	ldr r3, [r3, r1]
	str r0, [r3, #0x10]
	ldr r2, [r2]
	ldr r1, [r2, r1]
	str r0, [r1, #0x14]
	pop {r4, r5}
	bx lr
_0204C6FA:
	ldrb r4, [r0, #0xf]
	add r1, r5, r1
_0204C6FE:
	ldrb r2, [r3, #0xf]
	cmp r2, r4
	bhi _0204C70C
	ldr r3, [r3, #0x10]
	ldr r2, [r1]
	cmp r3, r2
	bne _0204C6FE
_0204C70C:
	ldr r2, [r3, #0x14]
	str r2, [r0, #0x14]
	ldr r1, [r2, #0x10]
	str r1, [r0, #0x10]
	ldr r1, [r2, #0x10]
	str r0, [r1, #0x14]
	str r0, [r2, #0x10]
	pop {r4, r5}
	bx lr
	nop
_0204C720: .word 0x0214193C
	thumb_func_end sub_0204C6D8

	thumb_func_start sub_0204C724
sub_0204C724: ; 0x0204C724
	ldr r1, _0204C754 ; =0x0214193C
	ldr r3, [r1]
	mov r1, #1
	lsl r1, r1, #8
	ldr r2, [r3, r1]
	cmp r2, r0
	bne _0204C73E
	ldr r2, [r0, #0x10]
	cmp r2, r0
	bne _0204C73C
	mov r2, #0
	b _0204C73C
_0204C73C:
	str r2, [r3, r1]
_0204C73E:
	ldr r2, [r0, #0x14]
	ldr r1, [r0, #0x10]
	str r2, [r1, #0x14]
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	str r2, [r1, #0x10]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	nop
_0204C754: .word 0x0214193C
	thumb_func_end sub_0204C724

	thumb_func_start sub_0204C758
sub_0204C758: ; 0x0204C758
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02060670
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0204C7C8
	add r2, sp, #0x18
	add r5, #0x20
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #1
	bl sub_0204C7C8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204C758

	thumb_func_start sub_0204C784
sub_0204C784: ; 0x0204C784
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204C7B0
	add r0, r4, #0
	bl sub_0204C798
	bl sub_02060670
	pop {r4, pc}
	thumb_func_end sub_0204C784

	thumb_func_start sub_0204C798
sub_0204C798: ; 0x0204C798
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0204C79E:
	lsl r0, r4, #5
	add r0, r5, r0
	bl sub_0204C7E0
	add r4, r4, #1
	cmp r4, #2
	blt _0204C79E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204C798

	thumb_func_start sub_0204C7B0
sub_0204C7B0: ; 0x0204C7B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0204C7B6:
	lsl r0, r4, #5
	add r0, r5, r0
	bl sub_0204C7F0
	add r4, r4, #1
	cmp r4, #2
	blt _0204C7B6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204C7B0

	thumb_func_start sub_0204C7C8
sub_0204C7C8: ; 0x0204C7C8
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	bne _0204C7D6
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, pc}
_0204C7D6:
	bl sub_02060704
	mov r0, #1
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end sub_0204C7C8

	thumb_func_start sub_0204C7E0
sub_0204C7E0: ; 0x0204C7E0
	push {r3, lr}
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0204C7EC
	bl sub_020608FC
_0204C7EC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204C7E0

	thumb_func_start sub_0204C7F0
sub_0204C7F0: ; 0x0204C7F0
	push {r3, lr}
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0204C7FC
	bl sub_02060A5C
_0204C7FC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204C7F0

	thumb_func_start sub_0204C800
sub_0204C800: ; 0x0204C800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp, #4]
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02062238
	add r0, r6, #0
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	ldr r0, _0204C87C ; =0x0000101C
	mov r1, #0x48
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _0204C880 ; =0x0209AFD8
	mul r1, r7
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r1, r6, #0
	add r1, #0x98
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x9c
	strh r7, [r0]
	cmp r7, #0
	bls _0204C868
_0204C83C:
	mov r0, #0x48
	add r5, r4, #0
	mul r5, r0
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	ldr r1, [sp, #4]
	lsl r2, r4, #4
	add r0, r0, r5
	add r1, r1, r2
	bl sub_0204C8D0
	add r1, r6, #0
	add r1, #0x98
	ldr r1, [r1]
	add r0, r6, #0
	add r1, r1, r5
	bl sub_020622C4
	add r4, r4, #1
	cmp r4, r7
	blo _0204C83C
_0204C868:
	add r0, r6, #0
	add r0, #0x9c
	ldrh r0, [r0]
	cmp r0, #1
	bne _0204C878
	mov r0, #2
	add r6, #0x9e
	strh r0, [r6]
_0204C878:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204C87C: .word 0x0000101C
_0204C880: .word 0x0209AFD8
	thumb_func_end sub_0204C800

	thumb_func_start sub_0204C884
sub_0204C884: ; 0x0204C884
	add r0, #0x98
	ldr r0, [r0]
	ldr r3, _0204C88C ; =sub_0203A24C
	bx r3
	.align 2, 0
_0204C88C: .word sub_0203A24C
	thumb_func_end sub_0204C884

	thumb_func_start sub_0204C890
sub_0204C890: ; 0x0204C890
	push {r4, r5}
	cmp r1, #0
	beq _0204C89A
	ldr r2, _0204C8CC ; =sub_0204CB8C
	b _0204C8A0
_0204C89A:
	mov r1, #1
	mov r2, #0
	str r1, [r0, #0x30]
_0204C8A0:
	add r3, r0, #0
	add r3, #0x9c
	ldrh r3, [r3]
	mov r1, #0
	cmp r3, #0
	ble _0204C8C8
	mov r4, #0x48
_0204C8AE:
	add r3, r0, #0
	add r3, #0x98
	ldr r5, [r3]
	add r3, r1, #0
	mul r3, r4
	add r3, r5, r3
	str r2, [r3, #0x40]
	add r3, r0, #0
	add r3, #0x9c
	ldrh r3, [r3]
	add r1, r1, #1
	cmp r1, r3
	blt _0204C8AE
_0204C8C8:
	pop {r4, r5}
	bx lr
	.align 2, 0
_0204C8CC: .word sub_0204CB8C
	thumb_func_end sub_0204C890

	thumb_func_start sub_0204C8D0
sub_0204C8D0: ; 0x0204C8D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020622CC
	mov r0, #2
	ldrsh r1, [r4, r0]
	mov r0, #0
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r5]
	lsl r0, r1, #0xc
	str r0, [r5, #4]
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #8]
	lsl r0, r1, #0xc
	str r0, [r5, #0xc]
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_0204C93C
	ldr r1, [r4, #8]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0204C934 ; =0x02093ED8
	add r3, r0, r2
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0xc]
	lsl r1, r0, #2
	ldr r0, _0204C938 ; =0x02093EB4
	ldr r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [sp]
	str r0, [r5, #0x28]
	ldr r0, [sp, #4]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r5, #0x34]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0204C934: .word 0x02093ED8
_0204C938: .word 0x02093EB4
	thumb_func_end sub_0204C8D0

	thumb_func_start sub_0204C93C
sub_0204C93C: ; 0x0204C93C
	lsl r2, r1, #1
	ldr r1, _0204C948 ; =0x02093E48
	ldrh r1, [r1, r2]
	str r1, [r0, #0x14]
	bx lr
	nop
_0204C948: .word 0x02093E48
	thumb_func_end sub_0204C93C

	thumb_func_start sub_0204C94C
sub_0204C94C: ; 0x0204C94C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, sp, #0
	mov r2, #8
	add r4, r3, #0
	blx sub_02078920
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0204C97E
	add r1, sp, #4
	ldr r2, [r1]
	ldr r0, _0204C9A0 ; =0xFFFF0FFF
	and r0, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	add r2, r2, r4
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r0, r2
	str r0, [r1]
	b _0204C990
_0204C97E:
	cmp r0, #1
	bne _0204C990
	ldr r1, [sp, #4]
	ldr r0, _0204C9A0 ; =0xFFFF0FFF
	and r1, r0
	lsl r0, r4, #0x1c
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [sp, #4]
_0204C990:
	add r0, r5, #0
	add r1, sp, #0
	add r2, r6, #0
	bl sub_020607E8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0204C9A0: .word 0xFFFF0FFF
	thumb_func_end sub_0204C94C

	thumb_func_start sub_0204C9A4
sub_0204C9A4: ; 0x0204C9A4
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _0204C9C4 ; =0x0214193C
	add r2, r1, #0
	ldr r0, [r0]
	add r1, r0, #0
	add r1, #0xf4
	ldr r1, [r1]
	str r1, [sp]
	add r1, r3, #0
	add r3, r0, #0
	add r3, #0xf0
	ldrh r3, [r3]
	bl sub_0204C94C
	pop {r3, pc}
	.align 2, 0
_0204C9C4: .word 0x0214193C
	thumb_func_end sub_0204C9A4

	thumb_func_start sub_0204C9C8
sub_0204C9C8: ; 0x0204C9C8
	push {r3, r4, lr}
	sub sp, #4
	add r3, r0, #0
	ldr r0, _0204C9F0 ; =0x0214193C
	add r2, r1, #0
	ldr r4, [r0]
	add r1, r3, #0
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	str r0, [sp]
	add r0, r4, #0
	add r4, #0xf2
	ldrh r3, [r4]
	add r0, #0x20
	bl sub_0204C94C
	add sp, #4
	pop {r3, r4, pc}
	nop
_0204C9F0: .word 0x0214193C
	thumb_func_end sub_0204C9C8

	thumb_func_start sub_0204C9F4
sub_0204C9F4: ; 0x0204C9F4
	add r1, r0, #0
	ldr r0, _0204CA00 ; =0x0214193C
	ldr r3, _0204CA04 ; =sub_0206087C
	ldr r0, [r0]
	bx r3
	nop
_0204CA00: .word 0x0214193C
_0204CA04: .word sub_0206087C
	thumb_func_end sub_0204C9F4

	thumb_func_start sub_0204CA08
sub_0204CA08: ; 0x0204CA08
	add r1, r0, #0
	ldr r0, _0204CA14 ; =0x0214193C
	ldr r3, _0204CA18 ; =sub_0206087C
	ldr r0, [r0]
	add r0, #0x20
	bx r3
	.align 2, 0
_0204CA14: .word 0x0214193C
_0204CA18: .word sub_0206087C
	thumb_func_end sub_0204CA08

	thumb_func_start sub_0204CA1C
sub_0204CA1C: ; 0x0204CA1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r2, #0
	ldrh r2, [r0, #2]
	add r1, r0, #0
	mov r0, #0x3f
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1a
	ldr r6, [r5, #0x10]
	ldr r3, [r4]
	add r1, #8
	sub r3, r6, r3
	str r3, [sp, #0x10]
	ldr r6, [r5, #0x14]
	ldr r3, [r4, #4]
	lsr r0, r0, #0x18
	sub r7, r6, r3
	asr r3, r2, #0xb
	mov r2, #1
	and r2, r3
	cmp r2, #1
	bne _0204CA6C
	mov r0, #6
	ldrsh r0, [r1, r0]
	lsl r6, r0, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #4
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	b _0204CA76
_0204CA6C:
	neg r1, r0
	lsl r6, r1, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	str r6, [sp, #8]
_0204CA76:
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	add r0, r6, #0
	blx FX_MulFunc
	str r0, [sp, #0x14]
	ldr r1, [r5, #0xc]
	add r0, r6, #0
	blx FX_MulFunc
	ldr r1, [sp, #0x14]
	add r0, r1, r0
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	blx FX_MulFunc
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0xc]
	blx FX_MulFunc
	add r0, r6, r0
	add r6, r7, r0
	ldr r0, [sp, #8]
	ldr r1, [r5]
	blx FX_MulFunc
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [r5, #8]
	blx FX_MulFunc
	add r1, r7, r0
	ldr r0, [sp, #0x10]
	add r7, r0, r1
	ldr r0, [sp, #4]
	ldr r1, [r5]
	blx FX_MulFunc
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [r5, #8]
	blx FX_MulFunc
	ldr r1, [sp, #0x18]
	add r1, r1, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	ldr r1, [sp]
	cmp r6, r1
	bge _0204CAE6
	add r1, r6, #0
	ldr r6, [sp]
	str r1, [sp]
_0204CAE6:
	cmp r0, r7
	bge _0204CAF0
	add r1, r0, #0
	add r0, r7, #0
	add r7, r1, #0
_0204CAF0:
	cmp r6, #0
	ble _0204CB0C
	ldr r2, [r4, #0xc]
	ldr r1, [sp]
	cmp r1, r2
	bge _0204CB0C
	cmp r0, #0
	ble _0204CB0C
	ldr r0, [r4, #8]
	cmp r7, r0
	bge _0204CB0C
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0204CB0C:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204CA1C

	thumb_func_start sub_0204CB14
sub_0204CB14: ; 0x0204CB14
	push {r4, r5, r6, r7}
	ldrh r3, [r0, #2]
	ldr r6, [r1, #0x10]
	add r4, r0, #0
	ldr r5, [r2]
	mov r0, #0x3f
	and r0, r3
	sub r5, r6, r5
	ldr r6, [r1, #0x14]
	ldr r1, [r2, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r1, r6, r1
	asr r6, r3, #0xb
	mov r3, #1
	lsl r0, r0, #0x1a
	and r3, r6
	add r4, #8
	lsr r0, r0, #0x18
	cmp r3, #1
	bne _0204CB58
	mov r0, #6
	ldrsh r0, [r4, r0]
	lsl r3, r0, #0xc
	mov r0, #2
	ldrsh r0, [r4, r0]
	lsl r6, r0, #0xc
	mov r0, #4
	ldrsh r0, [r4, r0]
	lsl r7, r0, #0xc
	mov r0, #0
	ldrsh r0, [r4, r0]
	lsl r4, r0, #0xc
	b _0204CB62
_0204CB58:
	neg r3, r0
	lsl r3, r3, #0xc
	lsl r6, r0, #0xc
	add r7, r3, #0
	add r4, r6, #0
_0204CB62:
	add r0, r3, r1
	add r1, r6, r1
	add r6, r7, r5
	add r3, r4, r5
	cmp r1, #0
	ble _0204CB84
	ldr r1, [r2, #0xc]
	cmp r0, r1
	bge _0204CB84
	cmp r3, #0
	ble _0204CB84
	ldr r0, [r2, #8]
	cmp r6, r0
	bge _0204CB84
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0204CB84:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_0204CB14

	thumb_func_start sub_0204CB8C
sub_0204CB8C: ; 0x0204CB8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r2, [r4, #0x38]
	add r7, r4, #0
	add r0, r2, #0
	ldr r5, _0204CC48 ; =0xC000C000
	lsl r2, r2, #7
	lsr r2, r2, #0x17
	add r6, r1, #0
	ldr r1, [sp, #0x30]
	add r7, #0x38
	and r0, r5
	add r3, r2, #0
	cmp r2, #0xff
	ble _0204CBB0
	asr r3, r5, #0x16
	orr r3, r2
_0204CBB0:
	lsl r2, r2, #0x10
	lsl r3, r3, #0xc
	asr r2, r2, #0x10
	mov ip, r3
	cmp r2, #0xff
	ble _0204CBC2
	mov r3, #0xff
	mvn r3, r3
	orr r2, r3
_0204CBC2:
	mov r5, #3
	mov r3, #3
	lsl r5, r5, #0x1e
	lsl r3, r3, #0x1e
	and r3, r0
	lsr r5, r5, #0x10
	and r0, r5
	asr r0, r0, #0xe
	lsr r3, r3, #0x1e
	lsl r0, r0, #3
	ldr r5, _0204CC4C ; =0x020942B0
	str r0, [sp, #0x10]
	lsl r3, r3, #1
	add r0, r5, r0
	ldrh r0, [r3, r0]
	add r0, r2, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, r0, #0
	cmp r0, #0x7f
	ble _0204CBFA
	mov r2, #3
	lsl r2, r2, #0x1e
	asr r2, r2, #0x16
	orr r2, r0
_0204CBFA:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r5, r2, #0xc
	cmp r0, #0x7f
	ble _0204CC0A
	mov r2, #0xff
	mvn r2, r2
	orr r0, r2
_0204CC0A:
	str r5, [sp]
	ldr r5, _0204CC50 ; =0x02094298
	ldr r2, [sp, #0x10]
	add r2, r5, r2
	ldrh r2, [r3, r2]
	ldr r3, [sp, #0x14]
	add r0, r0, r2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldr r2, [r1, #0x10]
	ldr r0, [r6]
	sub r0, r2, r0
	ldr r2, [r1, #0x14]
	ldr r1, [r6, #4]
	sub r1, r2, r1
	mov r2, ip
	bl sub_0204CC54
	cmp r0, #0
	beq _0204CC3E
	mov r0, #1
	add sp, #0x18
	str r0, [r4, #0x30]
	pop {r3, r4, r5, r6, r7, pc}
_0204CC3E:
	mov r0, #0
	str r0, [r4, #0x30]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204CC48: .word 0xC000C000
_0204CC4C: .word 0x020942B0
_0204CC50: .word 0x02094298
	thumb_func_end sub_0204CB8C

	thumb_func_start sub_0204CC54
sub_0204CC54: ; 0x0204CC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x40]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #4]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	ldr r1, [r5]
	str r0, [sp, #0x44]
	add r0, r2, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	blx FX_MulFunc
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [r5, #8]
	blx FX_MulFunc
	add r4, r4, r0
	ldr r0, [sp, #8]
	ldr r1, [r5]
	str r4, [sp, #0x10]
	blx FX_MulFunc
	add r6, r0, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [r5, #8]
	blx FX_MulFunc
	add r0, r6, r0
	cmp r0, r4
	bge _0204CCA0
	add r4, r0, #0
	b _0204CCA6
_0204CCA0:
	cmp r0, r4
	ble _0204CCA6
	str r0, [sp, #0x10]
_0204CCA6:
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	blx FX_MulFunc
	add r6, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [r5, #8]
	blx FX_MulFunc
	add r1, r6, r0
	cmp r1, r4
	bge _0204CCC2
	add r4, r1, #0
	b _0204CCCA
_0204CCC2:
	ldr r0, [sp, #0x10]
	cmp r1, r0
	ble _0204CCCA
	str r1, [sp, #0x10]
_0204CCCA:
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	blx FX_MulFunc
	add r6, r0, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [r5, #8]
	blx FX_MulFunc
	add r1, r6, r0
	cmp r1, r4
	bge _0204CCE6
	add r4, r1, #0
	b _0204CCEE
_0204CCE6:
	ldr r0, [sp, #0x10]
	cmp r1, r0
	ble _0204CCEE
	str r1, [sp, #0x10]
_0204CCEE:
	ldr r0, [sp, #8]
	ldr r1, [r5, #4]
	blx FX_MulFunc
	add r6, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [r5, #0xc]
	blx FX_MulFunc
	add r6, r6, r0
	ldr r0, [sp, #8]
	ldr r1, [r5, #4]
	add r7, r6, #0
	blx FX_MulFunc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	ldr r1, [r5, #0xc]
	blx FX_MulFunc
	ldr r1, [sp, #0x14]
	add r0, r1, r0
	cmp r0, r6
	bge _0204CD22
	add r6, r0, #0
	b _0204CD28
_0204CD22:
	cmp r0, r6
	ble _0204CD28
	add r7, r0, #0
_0204CD28:
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	blx FX_MulFunc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldr r1, [r5, #0xc]
	blx FX_MulFunc
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	cmp r0, r6
	bge _0204CD46
	add r6, r0, #0
	b _0204CD4C
_0204CD46:
	cmp r0, r7
	ble _0204CD4C
	add r7, r0, #0
_0204CD4C:
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	blx FX_MulFunc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	ldr r1, [r5, #0xc]
	blx FX_MulFunc
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	cmp r0, r6
	bge _0204CD6A
	add r6, r0, #0
	b _0204CD70
_0204CD6A:
	cmp r0, r7
	ble _0204CD70
	add r7, r0, #0
_0204CD70:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #4]
	add r2, r4, r0
	add r1, r1, r0
	ldr r0, [sp, #4]
	add r3, r7, r3
	add r0, r6, r0
	cmp r3, #0
	ble _0204CD9E
	ldr r3, [sp, #0x44]
	ldr r3, [r3, #0xc]
	cmp r0, r3
	bge _0204CD9E
	cmp r1, #0
	ble _0204CD9E
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #8]
	cmp r2, r0
	bge _0204CD9E
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0204CD9E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204CC54

	thumb_func_start sub_0204CDA4
sub_0204CDA4: ; 0x0204CDA4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _0204CDBA
	mov r0, #0
	add sp, #4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, pc}
_0204CDBA:
	ldr r0, _0204CDEC ; =0x00001370
	str r4, [r5, #8]
	mov r1, #0x30
	str r0, [sp]
	ldr r3, _0204CDF0 ; =0x0209AFD8
	add r0, r6, #0
	mul r1, r4
	mov r2, #0
	bl sub_0203A1FC
	ldr r2, _0204CDF4 ; =sub_0204CEC8
	add r1, r4, #0
	str r0, [r5]
	bl sub_02062CA8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0204CE18
	mov r0, #1
	str r0, [r5, #0xc]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0204CDEC: .word 0x00001370
_0204CDF0: .word 0x0209AFD8
_0204CDF4: .word sub_0204CEC8
	thumb_func_end sub_0204CDA4

	thumb_func_start sub_0204CDF8
sub_0204CDF8: ; 0x0204CDF8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0204CE14
	ldr r0, [r4]
	bl sub_0203A24C
	mov r5, #0
	add r0, r4, #0
	str r5, [r4]
	bl sub_0204CE5C
	str r5, [r4, #0xc]
_0204CE14:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204CDF8

	thumb_func_start sub_0204CE18
sub_0204CE18: ; 0x0204CE18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0204CE54 ; =0x000013B4
	ldr r3, _0204CE58 ; =0x0209AFD8
	str r0, [sp]
	add r0, r2, #0
	lsl r1, r1, #4
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	cmp r0, #0
	bls _0204CE50
	add r6, r4, #0
	mov r7, #0x10
_0204CE3A:
	ldr r1, [r5, #4]
	lsl r0, r4, #4
	add r0, r1, r0
	add r1, r6, #0
	add r2, r7, #0
	blx sub_020787A8
	ldr r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _0204CE3A
_0204CE50:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204CE54: .word 0x000013B4
_0204CE58: .word 0x0209AFD8
	thumb_func_end sub_0204CE18

	thumb_func_start sub_0204CE5C
sub_0204CE5C: ; 0x0204CE5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_0204CE5C

	thumb_func_start sub_0204CE6C
sub_0204CE6C: ; 0x0204CE6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	bls _0204CE9E
	add r7, r4, #0
_0204CE7A:
	ldr r1, [r5, #4]
	lsl r6, r4, #4
	ldr r0, [r1, r6]
	cmp r0, #0
	beq _0204CE96
	add r0, r1, r6
	bl sub_0204CF14
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r0, r0, r6
	mov r2, #0x10
	blx sub_020787A8
_0204CE96:
	ldr r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blo _0204CE7A
_0204CE9E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204CE6C

	thumb_func_start sub_0204CEA0
sub_0204CEA0: ; 0x0204CEA0
	push {r3, r4}
	ldr r4, [r0, #8]
	mov r2, #0
	cmp r4, #0
	bls _0204CEC0
	ldr r3, [r0, #4]
_0204CEAC:
	lsl r1, r2, #4
	ldr r0, [r3, r1]
	cmp r0, #0
	bne _0204CEBA
	add r0, r3, r1
	pop {r3, r4}
	bx lr
_0204CEBA:
	add r2, r2, #1
	cmp r2, r4
	blo _0204CEAC
_0204CEC0:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0204CEA0

	thumb_func_start sub_0204CEC8
sub_0204CEC8: ; 0x0204CEC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0204CF04 ; =0x0214193C
	add r7, r1, #0
	ldr r0, [r0]
	str r2, [sp, #4]
	add r0, #0xe0
	add r4, r3, #0
	bl sub_0204CEA0
	cmp r5, #0x13
	bne _0204CEE6
	mov r6, #0
	b _0204CEEC
_0204CEE6:
	cmp r5, #0x23
	bne _0204CEEC
	mov r6, #1
_0204CEEC:
	cmp r4, #0
	beq _0204CEFC
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	str r4, [sp]
	bl sub_0204CF08
_0204CEFC:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204CF04: .word 0x0214193C
	thumb_func_end sub_0204CEC8

	thumb_func_start sub_0204CF08
sub_0204CF08: ; 0x0204CF08
	str r1, [r0, #0xc]
	ldr r1, [sp]
	str r2, [r0, #4]
	str r3, [r0]
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0204CF08

	thumb_func_start sub_0204CF14
sub_0204CF14: ; 0x0204CF14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #8]
	blx sub_0207B0AC
	ldr r3, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsl r4, r3, #2
	ldr r3, _0204CF34 ; =0x02093E4C
	ldr r3, [r3, r4]
	blx r3
	pop {r4, pc}
	nop
_0204CF34: .word 0x02093E4C
	thumb_func_end sub_0204CF14

	thumb_func_start sub_0204CF38
sub_0204CF38: ; 0x0204CF38
	push {r3, r4, r5, lr}
	ldrh r5, [r0, #0xc]
	mov r3, #0
	cmp r5, #0
	ble _0204CF5A
	ldr r4, [r0]
	mov r0, #0xe4
_0204CF46:
	add r2, r3, #0
	mul r2, r0
	ldr r1, [r4, r2]
	cmp r1, #0
	bne _0204CF54
	add r0, r4, r2
	pop {r3, r4, r5, pc}
_0204CF54:
	add r3, r3, #1
	cmp r3, r5
	blt _0204CF46
_0204CF5A:
	ldr r0, _0204CF68 ; =0x0209AFE0
	ldr r2, _0204CF6C ; =0x0209AFE4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204CF68: .word 0x0209AFE0
_0204CF6C: .word 0x0209AFE4
	thumb_func_end sub_0204CF38

	thumb_func_start sub_0204CF70
sub_0204CF70: ; 0x0204CF70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	bne _0204CF86
	str r4, [r5, #4]
	str r4, [r4]
	ldr r0, [r5, #4]
	str r4, [r0, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0204CF86:
	add r0, r4, #0
	bl sub_0204C45C
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_0204C45C
	add r7, r0, #0
	cmp r6, r7
	ldr r0, [r5, #4]
	bhs _0204CFA2
	ldr r0, [r0, #4]
	str r4, [r5, #4]
	b _0204CFC8
_0204CFA2:
	ldr r0, [r0, #4]
	bl sub_0204C45C
	add r1, r7, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	cmp r0, r6
	ldr r0, [r5, #4]
	blo _0204CFC0
	add r1, r6, #0
	bl sub_0204D000
	b _0204CFC8
_0204CFC0:
	ldr r0, [r0, #4]
	add r1, r6, #0
	bl sub_0204D020
_0204CFC8:
	str r0, [r4, #4]
	ldr r1, [r0]
	str r1, [r4]
	ldr r1, [r0]
	str r4, [r1, #4]
	str r4, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204CF70

	thumb_func_start sub_0204CFD8
sub_0204CFD8: ; 0x0204CFD8
	ldr r2, [r0, #4]
	cmp r2, r1
	bne _0204CFEA
	ldr r2, [r1]
	cmp r2, r1
	bne _0204CFE8
	mov r2, #0
	b _0204CFE8
_0204CFE8:
	str r2, [r0, #4]
_0204CFEA:
	ldr r2, [r1, #4]
	ldr r0, [r1]
	str r2, [r0, #4]
	ldr r2, [r1]
	ldr r0, [r1, #4]
	str r2, [r0]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204CFD8

	thumb_func_start sub_0204D000
sub_0204D000: ; 0x0204D000
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r5, #0
_0204D008:
	add r0, r4, #0
	bl sub_0204C45C
	cmp r0, r6
	bls _0204D016
	ldr r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0204D016:
	ldr r4, [r4]
	cmp r4, r5
	bne _0204D008
	ldr r0, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D000

	thumb_func_start sub_0204D020
sub_0204D020: ; 0x0204D020
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r5, #0
_0204D028:
	add r0, r4, #0
	bl sub_0204C45C
	cmp r0, r6
	bhi _0204D036
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0204D036:
	ldr r4, [r4, #4]
	cmp r4, r5
	bne _0204D028
	ldr r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204D020

	thumb_func_start sub_0204D040
sub_0204D040: ; 0x0204D040
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #0xe4
	blx sub_020787A8
	mov r4, #1
	add r0, r5, #0
	lsl r4, r4, #0xc
	add r0, #0x1c
	str r4, [r5, #0x54]
	bl sub_02060B30
	add r0, r5, #0
	add r0, #0x40
	bl sub_02060B64
	ldr r1, [r5, #0x60]
	ldr r0, _0204D088 ; =0xFFFFF0FF
	str r4, [r5, #0x14]
	and r0, r1
	lsl r1, r1, #0x14
	lsr r2, r1, #0x1c
	mov r1, #1
	orr r1, r2
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x14
	orr r1, r0
	ldr r0, _0204D08C ; =0x7FFFFFFF
	str r4, [r5, #0x18]
	and r1, r0
	ldr r0, _0204D090 ; =0xFFF3FFFF
	and r0, r1
	str r0, [r5, #0x60]
	pop {r3, r4, r5, pc}
	nop
_0204D088: .word 0xFFFFF0FF
_0204D08C: .word 0x7FFFFFFF
_0204D090: .word 0xFFF3FFFF
	thumb_func_end sub_0204D040

	thumb_func_start sub_0204D094
sub_0204D094: ; 0x0204D094
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r3, #0
	ldrsh r1, [r4, r3]
	add r5, r0, #0
	add r6, r2, #0
	bl sub_0204C1A8
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_0204C1A8
	ldr r1, [r5, #0x60]
	mov r0, #0xff
	bic r1, r0
	ldrb r0, [r4, #6]
	orr r0, r1
	str r0, [r5, #0x60]
	ldrb r1, [r4, #7]
	add r0, r5, #0
	bl sub_0204C468
	ldrh r1, [r4, #4]
	add r0, r5, #0
	bl sub_0204C488
	add r0, r5, #0
	bl sub_0204C540
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0204D094

	thumb_func_start sub_0204D0D8
sub_0204D0D8: ; 0x0204D0D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	bl sub_0204C3E4
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_0204C3A8
	add r0, r5, #0
	ldrh r1, [r4]
	add r0, #0x5c
	add r5, #0x5e
	strh r1, [r0]
	ldrh r0, [r4, #2]
	strh r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204D0D8

	thumb_func_start sub_0204D0FC
sub_0204D0FC: ; 0x0204D0FC
	push {r3, lr}
	ldr r3, _0204D118 ; =0x0000FFFF
	cmp r1, r3
	beq _0204D10E
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl sub_0204BEFC
	pop {r3, pc}
_0204D10E:
	mov r0, #0
	strh r0, [r2]
	strh r0, [r2, #2]
	pop {r3, pc}
	nop
_0204D118: .word 0x0000FFFF
	thumb_func_end sub_0204D0FC

	thumb_func_start sub_0204D11C
sub_0204D11C: ; 0x0204D11C
	strh r1, [r0]
	ldr r1, [sp]
	strh r2, [r0, #2]
	str r1, [r0, #8]
	ldr r1, [sp, #4]
	str r3, [r0, #4]
	str r1, [r0, #0xc]
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0204D11C

	thumb_func_start sub_0204D138
sub_0204D138: ; 0x0204D138
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_0204CF38
	add r4, r0, #0
	str r5, [r4, #8]
	add r2, sp, #0x18
	ldrh r2, [r2]
	add r0, #0x68
	add r1, r6, #0
	bl sub_0204D1CC
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204D094
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0204D0D8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204CF70
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D138

	thumb_func_start sub_0204D17C
sub_0204D17C: ; 0x0204D17C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, sp, #0x18
	ldrh r4, [r4]
	add r5, r1, #0
	str r4, [sp]
	bl sub_0204D138
	mov r6, #8
	ldrsh r1, [r5, r6]
	mov r2, #0
	add r4, r0, #0
	bl sub_0204C264
	ldrsh r1, [r5, r6]
	add r0, r4, #0
	mov r2, #1
	bl sub_0204C264
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	mov r2, #0
	bl sub_0204C288
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	mov r2, #1
	bl sub_0204C288
	ldrh r1, [r5, #0x14]
	add r0, r4, #0
	bl sub_0204C2A0
	ldrh r1, [r5, #0x16]
	add r0, r4, #0
	bl sub_0204C244
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0204D17C

	thumb_func_start sub_0204D1CC
sub_0204D1CC: ; 0x0204D1CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0204D214
	add r3, r0, #0
	add r1, r4, #0
	str r3, [r5]
	lsl r4, r3, #2
	ldr r3, _0204D1F0 ; =0x02093E90
	add r0, r5, #0
	ldr r3, [r3, r4]
	add r2, r6, #0
	blx r3
	pop {r4, r5, r6, pc}
	nop
_0204D1F0: .word 0x02093E90
	thumb_func_end sub_0204D1CC

	thumb_func_start sub_0204D1F4
sub_0204D1F4: ; 0x0204D1F4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	lsl r2, r1, #2
	ldr r1, _0204D210 ; =0x02093E9C
	ldr r1, [r1, r2]
	blx r1
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x7c
	blx sub_020787A8
	pop {r4, pc}
	nop
_0204D210: .word 0x02093E9C
	thumb_func_end sub_0204D1F4

	thumb_func_start sub_0204D214
sub_0204D214: ; 0x0204D214
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0204D21E
	mov r0, #1
	bx lr
_0204D21E:
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0204D228
	mov r0, #2
	bx lr
_0204D228:
	mov r0, #0
	bx lr
	thumb_func_end sub_0204D214

	thumb_func_start sub_0204D22C
sub_0204D22C: ; 0x0204D22C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0xc]
	str r0, [r4, #4]
	ldr r0, [r1, #0x10]
	mov r1, #0
	str r0, [r4, #8]
	bl sub_02060114
	add r1, r0, #0
	add r0, r4, #0
	ldr r2, [r4, #4]
	add r0, #0xc
	bl sub_02061208
	pop {r4, pc}
	thumb_func_end sub_0204D22C

	thumb_func_start sub_0204D24C
sub_0204D24C: ; 0x0204D24C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #0x10]
	str r0, [r5, #8]
	bl sub_02062DB0
	str r0, [r5, #0x64]
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r6, [r4, #0x1c]
	bl sub_02060114
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02060B48
	add r7, r0, #0
	ldr r0, [r4, #4]
	mov r4, #2
	mov r1, #2
	bl sub_02060B48
	sub r1, r4, #3
	str r1, [sp]
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x64]
	add r0, #0xc
	bl sub_02061230
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204D24C

	thumb_func_start sub_0204D2A8
sub_0204D2A8: ; 0x0204D2A8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	add r4, r2, #0
	str r0, [r5, #4]
	ldr r0, [r1, #0x10]
	mov r6, #1
	str r0, [r5, #8]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	str r0, [r5, #0x70]
	str r1, [r5, #0x74]
	mov r1, #1
	bl sub_02061630
	add r1, r0, #0
	ldr r0, _0204D304 ; =0x0000181F
	ldr r3, _0204D308 ; =0x0209AFD8
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r5, #0x78]
	ldr r0, [r5, #0x70]
	str r0, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	ldr r1, [r5, #0x78]
	ldr r2, [r5, #8]
	ldr r3, [r5, #4]
	add r0, #0xc
	bl sub_02061530
	ldr r0, [r5, #0x74]
	mov r1, #0
	bl sub_02060114
	add r5, #0xc
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020614A8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0204D304: .word 0x0000181F
_0204D308: .word 0x0209AFD8
	thumb_func_end sub_0204D2A8

	thumb_func_start sub_0204D30C
sub_0204D30C: ; 0x0204D30C
	ldr r3, _0204D314 ; =sub_020787A8
	mov r1, #0
	mov r2, #0x7c
	bx r3
	.align 2, 0
_0204D314: .word sub_020787A8
	thumb_func_end sub_0204D30C

	thumb_func_start sub_0204D318
sub_0204D318: ; 0x0204D318
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	bl sub_02062DE8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x7c
	blx sub_020787A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204D318

	thumb_func_start sub_0204D330
sub_0204D330: ; 0x0204D330
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	bl sub_0203A24C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x7c
	blx sub_020787A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204D330

	thumb_func_start sub_0204D348
sub_0204D348: ; 0x0204D348
	push {r3, lr}
	ldr r2, [r0]
	lsl r3, r2, #2
	ldr r2, _0204D358 ; =0x02093E78
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_0204D358: .word 0x02093E78
	thumb_func_end sub_0204D348

	thumb_func_start sub_0204D35C
sub_0204D35C: ; 0x0204D35C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02060114
	add r4, #0xc
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206127C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204D35C

	thumb_func_start sub_0204D374
sub_0204D374: ; 0x0204D374
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02060114
	add r4, #0xc
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0206127C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204D374

	thumb_func_start sub_0204D38C
sub_0204D38C: ; 0x0204D38C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_02060114
	add r4, #0xc
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020614A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204D38C

	thumb_func_start sub_0204D3A4
sub_0204D3A4: ; 0x0204D3A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0204D3F4
	str r4, [r0, #0x10]
	add r0, r5, #0
	mov r1, #0
	bl sub_0204D3BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204D3A4

	thumb_func_start sub_0204D3BC
sub_0204D3BC: ; 0x0204D3BC
	push {r3, lr}
	ldr r2, [r0]
	lsl r3, r2, #2
	ldr r2, _0204D3CC ; =0x02093ECC
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_0204D3CC: .word 0x02093ECC
	thumb_func_end sub_0204D3BC

	thumb_func_start sub_0204D3D0
sub_0204D3D0: ; 0x0204D3D0
	ldr r3, _0204D3D8 ; =sub_0206128C
	add r0, #0xc
	bx r3
	nop
_0204D3D8: .word sub_0206128C
	thumb_func_end sub_0204D3D0

	thumb_func_start sub_0204D3DC
sub_0204D3DC: ; 0x0204D3DC
	ldr r3, _0204D3E4 ; =sub_0206128C
	add r0, #0xc
	bx r3
	nop
_0204D3E4: .word sub_0206128C
	thumb_func_end sub_0204D3DC

	thumb_func_start sub_0204D3E8
sub_0204D3E8: ; 0x0204D3E8
	ldr r3, _0204D3F0 ; =sub_020616D8
	add r0, #0xc
	bx r3
	nop
_0204D3F0: .word sub_020616D8
	thumb_func_end sub_0204D3E8

	thumb_func_start sub_0204D3F4
sub_0204D3F4: ; 0x0204D3F4
	push {r3, lr}
	ldr r1, [r0]
	lsl r2, r1, #2
	ldr r1, _0204D404 ; =0x02093EC0
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0204D404: .word 0x02093EC0
	thumb_func_end sub_0204D3F4

	thumb_func_start sub_0204D408
sub_0204D408: ; 0x0204D408
	add r0, #0xc
	bx lr
	thumb_func_end sub_0204D408

	thumb_func_start sub_0204D40C
sub_0204D40C: ; 0x0204D40C
	add r0, #0xc
	bx lr
	thumb_func_end sub_0204D40C

	thumb_func_start sub_0204D410
sub_0204D410: ; 0x0204D410
	add r0, #0xc
	bx lr
	thumb_func_end sub_0204D410

	thumb_func_start sub_0204D414
sub_0204D414: ; 0x0204D414
	push {r3, lr}
	ldr r1, [r0]
	lsl r2, r1, #2
	ldr r1, _0204D424 ; =0x02093E60
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0204D424: .word 0x02093E60
	thumb_func_end sub_0204D414

	thumb_func_start sub_0204D428
sub_0204D428: ; 0x0204D428
	add r0, #0xc
	bx lr
	thumb_func_end sub_0204D428

	thumb_func_start sub_0204D42C
sub_0204D42C: ; 0x0204D42C
	add r0, #0xc
	bx lr
	thumb_func_end sub_0204D42C

	thumb_func_start sub_0204D430
sub_0204D430: ; 0x0204D430
	add r0, #0xc
	bx lr
	thumb_func_end sub_0204D430

	thumb_func_start sub_0204D434
sub_0204D434: ; 0x0204D434
	push {r3, lr}
	ldr r2, [r0]
	lsl r3, r2, #2
	ldr r2, _0204D444 ; =0x02093E54
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_0204D444: .word 0x02093E54
	thumb_func_end sub_0204D434

	thumb_func_start sub_0204D448
sub_0204D448: ; 0x0204D448
	ldr r3, _0204D450 ; =sub_020612A0
	add r0, #0xc
	bx r3
	nop
_0204D450: .word sub_020612A0
	thumb_func_end sub_0204D448

	thumb_func_start sub_0204D454
sub_0204D454: ; 0x0204D454
	ldr r3, _0204D45C ; =sub_020612A0
	add r0, #0xc
	bx r3
	nop
_0204D45C: .word sub_020612A0
	thumb_func_end sub_0204D454

	thumb_func_start sub_0204D460
sub_0204D460: ; 0x0204D460
	ldr r3, _0204D468 ; =sub_02061778
	add r0, #0xc
	bx r3
	nop
_0204D468: .word sub_02061778
	thumb_func_end sub_0204D460

	thumb_func_start sub_0204D46C
sub_0204D46C: ; 0x0204D46C
	push {r3, lr}
	ldr r2, [r0]
	lsl r3, r2, #2
	ldr r2, _0204D47C ; =0x0209AF90
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_0204D47C: .word 0x0209AF90
	thumb_func_end sub_0204D46C

	thumb_func_start sub_0204D480
sub_0204D480: ; 0x0204D480
	ldr r3, _0204D488 ; =sub_020612C8
	add r0, #0xc
	bx r3
	nop
_0204D488: .word sub_020612C8
	thumb_func_end sub_0204D480

	thumb_func_start sub_0204D48C
sub_0204D48C: ; 0x0204D48C
	ldr r3, _0204D494 ; =sub_020612C8
	add r0, #0xc
	bx r3
	nop
_0204D494: .word sub_020612C8
	thumb_func_end sub_0204D48C

	thumb_func_start sub_0204D498
sub_0204D498: ; 0x0204D498
	ldr r3, _0204D4A0 ; =sub_02061800
	add r0, #0xc
	bx r3
	nop
_0204D4A0: .word sub_02061800
	thumb_func_end sub_0204D498

	thumb_func_start sub_0204D4A4
sub_0204D4A4: ; 0x0204D4A4
	push {r3, lr}
	ldr r1, [r0]
	lsl r2, r1, #2
	ldr r1, _0204D4B4 ; =0x0209AF9C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0204D4B4: .word 0x0209AF9C
	thumb_func_end sub_0204D4A4

	thumb_func_start sub_0204D4B8
sub_0204D4B8: ; 0x0204D4B8
	ldr r3, _0204D4C0 ; =sub_020612B4
	add r0, #0xc
	bx r3
	nop
_0204D4C0: .word sub_020612B4
	thumb_func_end sub_0204D4B8

	thumb_func_start sub_0204D4C4
sub_0204D4C4: ; 0x0204D4C4
	ldr r3, _0204D4CC ; =sub_020612B4
	add r0, #0xc
	bx r3
	nop
_0204D4CC: .word sub_020612B4
	thumb_func_end sub_0204D4C4

	thumb_func_start sub_0204D4D0
sub_0204D4D0: ; 0x0204D4D0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204D4B8
	add r4, #0x40
	add r0, r4, #0
	bl sub_02061864
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204D4D0

	thumb_func_start sub_0204D4E4
sub_0204D4E4: ; 0x0204D4E4
	ldr r0, [r0, #8]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _0204D4F4
	ldr r2, [r3]
	ldr r0, _0204D520 ; =0x55414154
	cmp r2, r0
	beq _0204D4F6
_0204D4F4:
	mov r3, #0
_0204D4F6:
	cmp r3, #0
	beq _0204D4FE
	add r3, #8
	b _0204D500
_0204D4FE:
	mov r3, #0
_0204D500:
	cmp r3, #0
	beq _0204D51C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldrh r0, [r3]
	cmp r2, r0
	bhs _0204D518
	mov r0, #0xc
	ldr r1, [r3, #4]
	mul r0, r2
	add r0, r1, r0
	bx lr
_0204D518:
	mov r0, #0
	bx lr
_0204D51C:
	mov r0, #0
	bx lr
	.align 2, 0
_0204D520: .word 0x55414154
	thumb_func_end sub_0204D4E4

	thumb_func_start sub_0204D524
sub_0204D524: ; 0x0204D524
	ldr r0, [r0, #8]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _0204D534
	ldr r2, [r3]
	ldr r0, _0204D560 ; =0x55414154
	cmp r2, r0
	beq _0204D536
_0204D534:
	mov r3, #0
_0204D536:
	cmp r3, #0
	beq _0204D53E
	add r3, #8
	b _0204D540
_0204D53E:
	mov r3, #0
_0204D540:
	cmp r3, #0
	beq _0204D55C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldrh r0, [r3]
	cmp r2, r0
	bhs _0204D558
	mov r0, #0xc
	ldr r1, [r3, #4]
	mul r0, r2
	add r0, r1, r0
	bx lr
_0204D558:
	mov r0, #0
	bx lr
_0204D55C:
	mov r0, #0
	bx lr
	.align 2, 0
_0204D560: .word 0x55414154
	thumb_func_end sub_0204D524

	thumb_func_start sub_0204D564
sub_0204D564: ; 0x0204D564
	ldr r0, [r0, #0x74]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _0204D574
	ldr r2, [r3]
	ldr r0, _0204D5A0 ; =0x55414154
	cmp r2, r0
	beq _0204D576
_0204D574:
	mov r3, #0
_0204D576:
	cmp r3, #0
	beq _0204D57E
	add r3, #8
	b _0204D580
_0204D57E:
	mov r3, #0
_0204D580:
	cmp r3, #0
	beq _0204D59C
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	ldrh r0, [r3]
	cmp r2, r0
	bhs _0204D598
	mov r0, #0xc
	ldr r1, [r3, #4]
	mul r0, r2
	add r0, r1, r0
	bx lr
_0204D598:
	mov r0, #0
	bx lr
_0204D59C:
	mov r0, #0
	bx lr
	.align 2, 0
_0204D5A0: .word 0x55414154
	thumb_func_end sub_0204D564

	thumb_func_start sub_0204D5A4
sub_0204D5A4: ; 0x0204D5A4
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0204D5B4
	ldr r2, [r0]
	ldr r1, _0204D5C4 ; =0x55434154
	cmp r2, r1
	beq _0204D5B6
_0204D5B4:
	mov r0, #0
_0204D5B6:
	cmp r0, #0
	beq _0204D5BE
	add r0, #8
	bx lr
_0204D5BE:
	mov r0, #0
	bx lr
	nop
_0204D5C4: .word 0x55434154
	thumb_func_end sub_0204D5A4

	thumb_func_start sub_0204D5C8
sub_0204D5C8: ; 0x0204D5C8
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0204D5D8
	ldr r2, [r0]
	ldr r1, _0204D5E8 ; =0x55434154
	cmp r2, r1
	beq _0204D5DA
_0204D5D8:
	mov r0, #0
_0204D5DA:
	cmp r0, #0
	beq _0204D5E2
	add r0, #8
	bx lr
_0204D5E2:
	mov r0, #0
	bx lr
	nop
_0204D5E8: .word 0x55434154
	thumb_func_end sub_0204D5C8

	thumb_func_start sub_0204D5EC
sub_0204D5EC: ; 0x0204D5EC
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0204D5FC
	ldr r2, [r0]
	ldr r1, _0204D60C ; =0x55434154
	cmp r2, r1
	beq _0204D5FE
_0204D5FC:
	mov r0, #0
_0204D5FE:
	cmp r0, #0
	beq _0204D606
	add r0, #8
	bx lr
_0204D606:
	mov r0, #0
	bx lr
	nop
_0204D60C: .word 0x55434154
	thumb_func_end sub_0204D5EC

	thumb_func_start sub_0204D610
sub_0204D610: ; 0x0204D610
	push {r3, lr}
	ldr r1, [r0]
	lsl r2, r1, #2
	ldr r1, _0204D620 ; =0x02093E84
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0204D620: .word 0x02093E84
	thumb_func_end sub_0204D610

	thumb_func_start sub_0204D624
sub_0204D624: ; 0x0204D624
	ldr r0, [r0, #8]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204D624

	thumb_func_start sub_0204D62C
sub_0204D62C: ; 0x0204D62C
	ldr r0, [r0, #8]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204D62C

	thumb_func_start sub_0204D634
sub_0204D634: ; 0x0204D634
	ldr r0, [r0, #0x74]
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204D634

	thumb_func_start sub_0204D63C
sub_0204D63C: ; 0x0204D63C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0204D3F4
	ldrh r1, [r4]
	cmp r1, #0
	beq _0204D654
	cmp r1, #1
	beq _0204D66C
	cmp r1, #2
	beq _0204D660
	pop {r4, pc}
_0204D654:
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	mov r1, #1
	bl sub_02060618
	pop {r4, pc}
_0204D660:
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	mov r1, #3
	bl sub_02060618
	pop {r4, pc}
_0204D66C:
	ldrh r3, [r4, #2]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_02060624
	pop {r4, pc}
	thumb_func_end sub_0204D63C

	thumb_func_start sub_0204D678
sub_0204D678: ; 0x0204D678
	push {r3, lr}
	bl sub_0204D3F4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02060618
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204D678

	thumb_func_start sub_0204D68C
sub_0204D68C: ; 0x0204D68C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r2, #0
	ldrh r3, [r4, #8]
	add r5, r0, #0
	ldr r0, [r6, #0x28]
	add r7, r1, #0
	str r0, [sp]
	ldr r2, [r6, #0x10]
	add r0, r7, #0
	mov r1, #1
	lsl r3, r3, #5
	bl sub_0203CA4C
	ldrh r3, [r4, #0xa]
	str r0, [r5]
	ldr r0, [r6, #0x2c]
	ldr r2, [r6, #0x18]
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	lsl r3, r3, #5
	bl sub_0203CA4C
	str r0, [r5, #4]
	ldrh r1, [r4]
	add r0, r7, #0
	bl sub_0204D810
	str r0, [r5, #8]
	ldrh r1, [r4, #2]
	add r0, r7, #0
	bl sub_0204D9B0
	str r0, [r5, #0xc]
	ldrh r1, [r4, #4]
	add r0, r7, #0
	bl sub_0204DBF4
	str r0, [r5, #0x10]
	ldrh r0, [r4]
	strh r0, [r5, #0x14]
	ldrh r0, [r4, #2]
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #4]
	strh r0, [r5, #0x18]
	ldrh r0, [r4, #6]
	strh r0, [r5, #0x1a]
	ldrh r0, [r4, #8]
	strh r0, [r5, #0x1c]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0x1e]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204D68C

	thumb_func_start sub_0204D6F8
sub_0204D6F8: ; 0x0204D6F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x14]
	mov r4, #0
	cmp r0, #0
	bls _0204D71E
_0204D704:
	ldr r1, [r5, #8]
	lsl r0, r4, #6
	add r0, r1, r0
	ldr r0, [r0, #0x3c]
	lsr r0, r0, #0x1f
	bne _0204D716
	add r0, r4, #0
	bl sub_0204B98C
_0204D716:
	ldrh r0, [r5, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blo _0204D704
_0204D71E:
	ldrh r0, [r5, #0x18]
	mov r4, #0
	cmp r0, #0
	bls _0204D744
	mov r6, #0x14
_0204D728:
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	mul r0, r6
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0204D73C
	add r0, r4, #0
	bl sub_0204BE64
_0204D73C:
	ldrh r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _0204D728
_0204D744:
	ldrh r0, [r5, #0x16]
	mov r4, #0
	cmp r0, #0
	bls _0204D76A
	mov r6, #0x18
_0204D74E:
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	mul r0, r6
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	lsr r0, r0, #0x1f
	bne _0204D762
	add r0, r4, #0
	bl sub_0204BCD0
_0204D762:
	ldrh r0, [r5, #0x16]
	add r4, r4, #1
	cmp r4, r0
	blo _0204D74E
_0204D76A:
	ldr r0, [r5, #8]
	bl sub_0204D984
	ldr r0, [r5, #0xc]
	bl sub_0204DBEC
	ldr r0, [r5, #0x10]
	bl sub_0204DC60
	ldr r0, [r5, #4]
	bl sub_0203CA9C
	ldr r0, [r5]
	bl sub_0203CA9C
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0204D6F8

	thumb_func_start sub_0204D798
sub_0204D798: ; 0x0204D798
	cmp r0, #2
	beq _0204D7A0
	cmp r1, #2
	bne _0204D7A4
_0204D7A0:
	mov r0, #1
	bx lr
_0204D7A4:
	cmp r0, r1
	bne _0204D7AC
	mov r0, #1
	bx lr
_0204D7AC:
	mov r0, #0
	bx lr
	thumb_func_end sub_0204D798

	thumb_func_start sub_0204D7B0
sub_0204D7B0: ; 0x0204D7B0
	push {r3, r4, r5, lr}
	add r5, r3, #0
	cmp r2, #0
	ldr r2, _0204D804 ; =0x00007FFF
	beq _0204D7EE
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204AB1C
	add r4, r0, #0
	ldr r0, _0204D808 ; =0x00001CA7
	ldr r3, _0204D80C ; =0x0209AFD8
	str r0, [sp]
	ldr r1, [r4]
	add r0, r5, #0
	lsr r1, r1, #8
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	blx sub_0207909C
	add r0, r4, #0
	bl sub_0203A24C
	b _0204D7FE
_0204D7EE:
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0204AB1C
	add r5, r0, #0
_0204D7FE:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0204D804: .word 0x00007FFF
_0204D808: .word 0x00001CA7
_0204D80C: .word 0x0209AFD8
	thumb_func_end sub_0204D7B0

	thumb_func_start sub_0204D810
sub_0204D810: ; 0x0204D810
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0x73
	lsl r1, r1, #6
	str r1, [sp]
	ldr r3, _0204D860 ; =0x0209AFD8
	lsl r1, r6, #6
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r7, r0, #0
	cmp r6, #0
	bls _0204D85A
	ldr r0, _0204D864 ; =0x7FFFFFFF
	add r0, r0, #1
	str r0, [sp, #4]
_0204D834:
	lsl r0, r4, #6
	add r5, r7, r0
	ldr r1, [r5, #0x3c]
	ldr r0, _0204D864 ; =0x7FFFFFFF
	and r1, r0
	ldr r0, [sp, #4]
	orr r0, r1
	str r0, [r5, #0x3c]
	add r0, r5, #0
	add r0, #0x2c
	bl sub_0203CADC
	add r5, #0x34
	add r0, r5, #0
	bl sub_0203CADC
	add r4, r4, #1
	cmp r4, r6
	blo _0204D834
_0204D85A:
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204D860: .word 0x0209AFD8
_0204D864: .word 0x7FFFFFFF
	thumb_func_end sub_0204D810

	thumb_func_start sub_0204D868
sub_0204D868: ; 0x0204D868
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r2, #0
	ldr r2, [r6, #8]
	lsl r0, r1, #6
	add r4, r2, r0
	cmp r3, #0
	bne _0204D882
	ldr r0, [r5, #0x10]
	mov r7, #0
	str r0, [sp]
	b _0204D89A
_0204D882:
	ldr r0, [r3, #0xc]
	mov r1, #1
	cmp r0, #0
	bne _0204D88C
	mov r1, #0
_0204D88C:
	cmp r1, #0
	beq _0204D894
	ldr r0, [r0]
	b _0204D896
_0204D894:
	mov r0, #0
_0204D896:
	str r0, [sp]
	mov r7, #1
_0204D89A:
	add r0, r4, #0
	bl sub_02060B30
	ldr r0, [sp, #0x20]
	mov r1, #0
	bl sub_0204D798
	cmp r0, #0
	beq _0204D902
	add r2, r4, #0
	ldr r0, [r6]
	ldr r1, [sp]
	add r2, #0x2c
	bl sub_0203CB00
	cmp r0, #0
	beq _0204D902
	add r1, r4, #0
	ldr r0, [r6]
	add r1, #0x2c
	bl sub_0203CB58
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0204D98C
	cmp r7, #0
	beq _0204D8E2
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_02060E1C
	b _0204D902
_0204D8E2:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0204D8F6
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_02060B9C
	b _0204D902
_0204D8F6:
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_02060CDC
_0204D902:
	ldr r0, [sp, #0x20]
	mov r1, #1
	bl sub_0204D798
	cmp r0, #0
	beq _0204D964
	add r2, r4, #0
	ldr r0, [r6, #4]
	ldr r1, [sp]
	add r2, #0x34
	bl sub_0203CB00
	cmp r0, #0
	beq _0204D964
	add r1, r4, #0
	ldr r0, [r6, #4]
	add r1, #0x34
	bl sub_0203CB58
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0204D98C
	cmp r7, #0
	beq _0204D944
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_02060E1C
	b _0204D964
_0204D944:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0204D958
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_02060B9C
	b _0204D964
_0204D958:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	add r3, r4, #0
	bl sub_02060CDC
_0204D964:
	cmp r7, #0
	bne _0204D96A
	mov r5, #0
_0204D96A:
	str r5, [r4, #0x28]
	ldr r1, [r4, #0x3c]
	ldr r0, _0204D980 ; =0x80000001
	and r1, r0
	ldr r0, [sp]
	lsl r0, r0, #2
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r4, #0x3c]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204D980: .word 0x80000001
	thumb_func_end sub_0204D868

	thumb_func_start sub_0204D984
sub_0204D984: ; 0x0204D984
	ldr r3, _0204D988 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0204D988: .word sub_0203A24C
	thumb_func_end sub_0204D984

	thumb_func_start sub_0204D98C
sub_0204D98C: ; 0x0204D98C
	cmp r1, #1
	bne _0204D996
	mov r1, #1
	lsl r1, r1, #0x1a
	b _0204D998
_0204D996:
	ldr r1, _0204D9A8 ; =0x04001000
_0204D998:
	ldr r2, [r1]
	ldr r1, _0204D9AC ; =0x00300010
	and r2, r1
	ldr r1, [r0, #8]
	cmp r1, r2
	beq _0204D9A6
	str r2, [r0, #8]
_0204D9A6:
	bx lr
	.align 2, 0
_0204D9A8: .word 0x04001000
_0204D9AC: .word 0x00300010
	thumb_func_end sub_0204D98C

	thumb_func_start sub_0204D9B0
sub_0204D9B0: ; 0x0204D9B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0204D9E8 ; =0x00001D5A
	ldr r3, _0204D9EC ; =0x0209AFD8
	str r1, [sp]
	mov r1, #0x18
	mul r1, r5
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	cmp r5, #0
	bls _0204D9E4
	ldr r3, _0204D9F0 ; =0x7FFFFFFF
	mov r2, #0x18
	add r6, r3, #1
_0204D9D0:
	add r1, r4, #0
	mul r1, r2
	add r1, r0, r1
	ldr r7, [r1, #0x14]
	add r4, r4, #1
	and r7, r3
	orr r7, r6
	str r7, [r1, #0x14]
	cmp r4, r5
	blo _0204D9D0
_0204D9E4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204D9E8: .word 0x00001D5A
_0204D9EC: .word 0x0209AFD8
_0204D9F0: .word 0x7FFFFFFF
	thumb_func_end sub_0204D9B0

	thumb_func_start sub_0204D9F4
sub_0204D9F4: ; 0x0204D9F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0x18
	add r6, r1, #0
	mul r6, r0
	ldr r0, [sp]
	mov r7, #2
	ldr r0, [r0, #0xc]
	ldr r5, [sp, #0x30]
	lsl r7, r7, #8
	str r2, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0x10]
	cmp r5, r7
	bhs _0204DA1C
	mov r0, #0x10
	mov r4, #0
	str r0, [sp, #0xc]
	b _0204DA2E
_0204DA1C:
	sub r0, r5, r7
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	mov r0, #1
	mov r4, #1
	str r0, [sp, #0xc]
	add r0, #0xff
	str r0, [sp, #0xc]
	lsl r7, r4, #0xd
_0204DA2E:
	ldr r0, [sp, #4]
	add r1, sp, #0x14
	bl sub_02060300
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	bl sub_020602D8
	cmp r0, #0
	beq _0204DB22
	ldr r0, [sp, #0x10]
	add r0, r0, r6
	bl sub_02060B64
	add r0, sp, #0x30
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0204DA6A
	lsl r1, r0, #5
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #8]
	cmp r1, r2
	bhs _0204DA6A
	ldr r2, [r0, #0xc]
	add r2, r2, r1
	str r2, [r0, #0xc]
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #8]
	sub r1, r2, r1
	str r1, [r0, #8]
_0204DA6A:
	add r1, sp, #0x30
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0204DA88
	ldrh r1, [r1, #4]
	add r2, r1, r0
	ldr r1, [sp, #0xc]
	cmp r2, r1
	bgt _0204DA88
	ldr r1, [sp, #0x18]
	lsl r2, r0, #5
	ldr r0, [r1, #8]
	cmp r2, r0
	bhs _0204DA88
	str r2, [r1, #8]
_0204DA88:
	cmp r5, #0
	beq _0204DA9A
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #8]
	add r1, r1, r5
	cmp r1, r7
	bls _0204DA9A
	sub r1, r7, r5
	str r1, [r0, #8]
_0204DA9A:
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_0204D798
	cmp r0, #0
	beq _0204DACC
	bl sub_02076EF8
	add r7, r0, #0
	cmp r4, #0
	beq _0204DAB4
	bl sub_02076AC4
_0204DAB4:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	mov r2, #1
	add r3, r3, r6
	bl sub_02060F24
	cmp r4, #0
	beq _0204DACC
	add r0, r7, #0
	bl sub_020767F4
_0204DACC:
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_0204D798
	cmp r0, #0
	beq _0204DAFE
	bl sub_02076F28
	add r7, r0, #0
	cmp r4, #0
	beq _0204DAE6
	bl sub_02076AC4
_0204DAE6:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	mov r2, #2
	add r3, r3, r6
	bl sub_02060F24
	cmp r4, #0
	beq _0204DAFE
	add r0, r7, #0
	bl sub_02076BCC
_0204DAFE:
	ldr r0, [sp]
	ldr r2, _0204DB28 ; =0x7FFFFFFF
	ldr r0, [r0, #0xc]
	add r1, r0, r6
	ldr r0, [r1, #0x14]
	and r0, r2
	str r0, [r1, #0x14]
	ldr r0, [sp]
	add r1, r2, #1
	ldr r0, [r0, #0xc]
	add r0, r0, r6
	ldr r3, [r0, #0x14]
	and r3, r1
	ldr r1, [sp, #0x18]
	ldr r1, [r1, #8]
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x14]
_0204DB22:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0204DB28: .word 0x7FFFFFFF
	thumb_func_end sub_0204D9F4

	thumb_func_start sub_0204DB2C
sub_0204DB2C: ; 0x0204DB2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	mov r0, #0x18
	mul r0, r1
	ldr r1, [r7, #0xc]
	ldr r5, [sp, #0x38]
	str r0, [sp, #0xc]
	add r6, r1, r0
	mov r0, #2
	lsl r0, r0, #8
	str r2, [sp, #4]
	str r3, [sp, #8]
	cmp r5, r0
	bhs _0204DB4E
	mov r4, #0
	b _0204DB56
_0204DB4E:
	sub r0, r5, r0
	lsl r0, r0, #0x10
	mov r4, #1
	lsr r5, r0, #0x10
_0204DB56:
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	bl sub_02060300
	ldr r0, [sp, #4]
	add r1, sp, #0x1c
	bl sub_020602D8
	cmp r0, #0
	beq _0204DBE2
	add r0, r6, #0
	bl sub_02060B64
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_0204D798
	cmp r0, #0
	beq _0204DBA2
	bl sub_02076EF8
	str r0, [sp, #0x14]
	cmp r4, #0
	beq _0204DB8A
	bl sub_02076AC4
_0204DB8A:
	str r6, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r5, #0
	mov r3, #1
	bl sub_02060FC0
	cmp r4, #0
	beq _0204DBA2
	ldr r0, [sp, #0x14]
	bl sub_020767F4
_0204DBA2:
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_0204D798
	cmp r0, #0
	beq _0204DBD4
	bl sub_02076F28
	str r0, [sp, #0x10]
	cmp r4, #0
	beq _0204DBBC
	bl sub_02076AC4
_0204DBBC:
	str r6, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r5, #0
	mov r3, #2
	bl sub_02060FC0
	cmp r4, #0
	beq _0204DBD4
	ldr r0, [sp, #0x10]
	bl sub_02076BCC
_0204DBD4:
	ldr r1, [r7, #0xc]
	ldr r0, [sp, #0xc]
	add r2, r1, r0
	ldr r1, [r2, #0x14]
	ldr r0, _0204DBE8 ; =0x7FFFFFFF
	and r0, r1
	str r0, [r2, #0x14]
_0204DBE2:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204DBE8: .word 0x7FFFFFFF
	thumb_func_end sub_0204DB2C

	thumb_func_start sub_0204DBEC
sub_0204DBEC: ; 0x0204DBEC
	ldr r3, _0204DBF0 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0204DBF0: .word sub_0203A24C
	thumb_func_end sub_0204DBEC

	thumb_func_start sub_0204DBF4
sub_0204DBF4: ; 0x0204DBF4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, _0204DC24 ; =0x00001E48
	ldr r3, _0204DC28 ; =0x0209AFD8
	str r1, [sp]
	mov r1, #0x14
	mul r1, r5
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	cmp r5, #0
	bls _0204DC20
	mov r3, #1
	mov r1, #0x14
_0204DC12:
	add r2, r4, #0
	mul r2, r1
	add r2, r0, r2
	add r4, r4, #1
	str r3, [r2, #0x10]
	cmp r4, r5
	blo _0204DC12
_0204DC20:
	pop {r3, r4, r5, pc}
	nop
_0204DC24: .word 0x00001E48
_0204DC28: .word 0x0209AFD8
	thumb_func_end sub_0204DBF4

	thumb_func_start sub_0204DC2C
sub_0204DC2C: ; 0x0204DC2C
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r3, [r0, #0x10]
	mov r0, #0x14
	mul r0, r1
	add r4, r3, r0
	add r1, r4, #0
	add r0, r2, #0
	add r1, #8
	bl sub_02060150
	cmp r0, #0
	beq _0204DC5C
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xc
	bl sub_0206004C
	cmp r0, #0
	beq _0204DC5C
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0204DC5C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204DC2C

	thumb_func_start sub_0204DC60
sub_0204DC60: ; 0x0204DC60
	ldr r3, _0204DC64 ; =sub_0203A24C
	bx r3
	.align 2, 0
_0204DC64: .word sub_0203A24C
	thumb_func_end sub_0204DC60

	thumb_func_start sub_0204DC68
sub_0204DC68: ; 0x0204DC68
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, sp, #4
	add r6, r3, #0
	bl sub_02060278
	cmp r0, #0
	beq _0204DC9A
	str r6, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204D868
	ldr r1, [r5, #8]
	lsl r0, r4, #6
	add r2, r1, r0
	ldr r1, [r2, #0x3c]
	ldr r0, _0204DCA0 ; =0x7FFFFFFF
	and r0, r1
	str r0, [r2, #0x3c]
_0204DC9A:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0204DCA0: .word 0x7FFFFFFF
	thumb_func_end sub_0204DC68

	thumb_func_start sub_0204DCA4
sub_0204DCA4: ; 0x0204DCA4
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _0204DCCC ; =0x02141940
	ldr r1, [r4]
	cmp r1, #0
	bne _0204DCC6
	bl sub_02048B90
	mov r0, #0x33
	str r0, [sp]
	ldr r3, _0204DCD0 ; =0x0209AFE8
	mov r0, #0
	mov r1, #0x26
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r4]
_0204DCC6:
	add sp, #4
	pop {r3, r4, pc}
	nop
_0204DCCC: .word 0x02141940
_0204DCD0: .word 0x0209AFE8
	thumb_func_end sub_0204DCA4

	thumb_func_start sub_0204DCD4
sub_0204DCD4: ; 0x0204DCD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02048CBC
	add r7, r0, #0
	bl sub_02048CCC
	str r0, [sp, #0x14]
	ldr r4, _0204DDD0 ; =0x02141940
	ldrh r1, [r5, #4]
	ldr r0, [r4]
	strh r1, [r0, #0x22]
	ldrh r1, [r5, #6]
	ldr r0, [r4]
	strh r1, [r0, #0x24]
	ldrb r1, [r5, #0xa]
	lsl r0, r1, #0x1c
	lsl r1, r1, #0x18
	lsr r0, r0, #0x1c
	lsr r1, r1, #0x1c
	bl sub_02048CD0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #1
	mov r3, #0x20
	bl sub_02046E74
	str r0, [sp, #0x18]
	bl sub_020486F4
	str r0, [sp, #0x1c]
	ldrh r0, [r6]
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	beq _0204DDB6
	ldr r1, [sp, #0x14]
	lsr r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x20]
_0204DD2E:
	add r6, r6, #2
	cmp r0, #1
	beq _0204DD3E
	cmp r0, #2
	beq _0204DD56
	cmp r0, #3
	beq _0204DD62
	b _0204DD6A
_0204DD3E:
	ldrh r1, [r5, #4]
	ldr r0, [r4]
	strh r1, [r0, #0x22]
	ldrb r2, [r5, #9]
	ldr r1, [r4]
	add r2, r7, r2
	lsl r2, r2, #0x10
	ldrh r0, [r1, #0x24]
	lsr r2, r2, #0x10
	add r0, r0, r2
	strh r0, [r1, #0x24]
	b _0204DDAE
_0204DD56:
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldrh r2, [r0, #0x22]
_0204DD5C:
	add r1, r2, r1
	strh r1, [r0, #0x22]
	b _0204DDAE
_0204DD62:
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldrh r2, [r0, #0x22]
	b _0204DD5C
_0204DD6A:
	sub r0, r0, #4
	lsl r0, r0, #0x10
	ldr r1, [r4]
	lsr r0, r0, #0x10
	bl sub_02048C2C
	ldr r1, [r4]
	mov r2, #0
	ldrh r0, [r1, #0x22]
	mov r3, #0
	str r0, [sp]
	ldrh r0, [r1, #0x24]
	add r1, #0x20
	str r0, [sp, #4]
	ldrb r0, [r1]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [r5]
	bl sub_02047008
	ldr r3, [r4]
	add r0, r3, #0
	add r0, #0x20
	ldrb r1, [r0]
	ldrb r0, [r5, #8]
	ldrh r2, [r3, #0x22]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r3, #0x22]
_0204DDAE:
	ldrh r0, [r6]
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _0204DD2E
_0204DDB6:
	ldr r0, _0204DDD0 ; =0x02141940
	ldr r1, [r0]
	ldrh r1, [r1, #0x22]
	strh r1, [r5, #4]
	ldr r0, [r0]
	ldrh r0, [r0, #0x24]
	strh r0, [r5, #6]
	ldr r0, [sp, #0x18]
	bl sub_02046EDC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0204DDD0: .word 0x02141940
	thumb_func_end sub_0204DCD4

	thumb_func_start sub_0204DDD4
sub_0204DDD4: ; 0x0204DDD4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	add r5, r0, #0
	mov r0, #0xae
	str r0, [sp]
	lsl r7, r7, #8
	add r6, r1, #0
	ldr r3, _0204DE0C ; =0x0209AFE8
	mov r0, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r7, #1
	bl sub_0204DE10
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0204DCD4
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204DE0C: .word 0x0209AFE8
	thumb_func_end sub_0204DDD4

	thumb_func_start sub_0204DE10
sub_0204DE10: ; 0x0204DE10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
	sub r7, r2, #1
	b _0204DE50
_0204DE1C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r5, r5, #1
	cmp r0, #0x81
	blo _0204DE2A
	cmp r0, #0x9f
	bls _0204DE2E
_0204DE2A:
	cmp r0, #0xe0
	blo _0204DE40
_0204DE2E:
	lsl r1, r0, #8
	ldrb r0, [r5]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0204DEE0
	add r5, r5, #1
	b _0204DE44
_0204DE40:
	bl sub_0204DE68
_0204DE44:
	ldr r1, _0204DE64 ; =0x0000FFFE
	cmp r0, r1
	beq _0204DE50
	strh r0, [r4]
	add r4, r4, #2
	add r6, r6, #1
_0204DE50:
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0204DE5C
	cmp r6, r7
	blt _0204DE1C
_0204DE5C:
	bl sub_020486F4
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204DE64: .word 0x0000FFFE
	thumb_func_end sub_0204DE10

	thumb_func_start sub_0204DE68
sub_0204DE68: ; 0x0204DE68
	push {r3, r4}
	cmp r0, #0x61
	blo _0204DE7C
	cmp r0, #0x7a
	bhi _0204DE7C
	add r0, #0x79
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_0204DE7C:
	cmp r0, #0x41
	blo _0204DE8E
	cmp r0, #0x5a
	bhi _0204DE8E
	add r0, #0x7f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_0204DE8E:
	cmp r0, #0x30
	blo _0204DEA0
	cmp r0, #0x39
	bhi _0204DEA0
	add r0, #0x86
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_0204DEA0:
	cmp r0, #0x21
	blo _0204DEB2
	cmp r0, #0x2f
	bhi _0204DEB2
	add r0, #0xd3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_0204DEB2:
	ldr r2, _0204DED4 ; =0x02093F40
	mov r4, #0
_0204DEB6:
	lsl r3, r4, #2
	ldrb r1, [r2, r3]
	cmp r0, r1
	bne _0204DEC6
	ldr r0, _0204DED8 ; =0x02093F42
	ldrh r0, [r0, r3]
	pop {r3, r4}
	bx lr
_0204DEC6:
	add r4, r4, #1
	cmp r4, #0x10
	blo _0204DEB6
	ldr r0, _0204DEDC ; =0x00000101
	pop {r3, r4}
	bx lr
	nop
_0204DED4: .word 0x02093F40
_0204DED8: .word 0x02093F42
_0204DEDC: .word 0x00000101
	thumb_func_end sub_0204DE68

	thumb_func_start sub_0204DEE0
sub_0204DEE0: ; 0x0204DEE0
	ldr r2, _0204DF88 ; =0x0000829F
	cmp r0, r2
	blo _0204DEF8
	add r1, r2, #0
	add r1, #0x52
	cmp r0, r1
	bhi _0204DEF8
	sub r1, r2, #4
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0204DEF8:
	ldr r2, _0204DF8C ; =0x00008340
	cmp r0, r2
	blo _0204DF10
	add r1, r2, #0
	add r1, #0x53
	cmp r0, r1
	bhi _0204DF10
	sub r2, #0x57
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0204DF10:
	ldr r2, _0204DF90 ; =0x00008281
	cmp r0, r2
	blo _0204DF28
	add r1, r2, #0
	add r1, #0x19
	cmp r0, r1
	bhi _0204DF28
	sub r2, #0xda
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0204DF28:
	ldr r2, _0204DF94 ; =0x00008260
	cmp r0, r2
	blo _0204DF40
	add r1, r2, #0
	add r1, #0x19
	cmp r0, r1
	bhi _0204DF40
	sub r2, #0xc0
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0204DF40:
	ldr r2, _0204DF98 ; =0x0000824F
	cmp r0, r2
	blo _0204DF58
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bhi _0204DF58
	sub r2, #0xac
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0204DF58:
	ldr r2, _0204DF9C ; =0x00008189
	cmp r0, r2
	bne _0204DF62
	mov r0, #0xcc
	bx lr
_0204DF62:
	add r1, r2, #1
	cmp r0, r1
	bne _0204DF6C
	mov r0, #0xc5
	bx lr
_0204DF6C:
	add r1, r2, #0
	sub r1, #0x49
	cmp r0, r1
	bne _0204DF78
	mov r0, #2
	bx lr
_0204DF78:
	sub r2, #0x2e
	cmp r0, r2
	bne _0204DF82
	mov r0, #0x51
	bx lr
_0204DF82:
	ldr r0, _0204DFA0 ; =0x00000101
	bx lr
	nop
_0204DF88: .word 0x0000829F
_0204DF8C: .word 0x00008340
_0204DF90: .word 0x00008281
_0204DF94: .word 0x00008260
_0204DF98: .word 0x0000824F
_0204DF9C: .word 0x00008189
_0204DFA0: .word 0x00000101
	thumb_func_end sub_0204DEE0

	thumb_func_start sub_0204DFA4
sub_0204DFA4: ; 0x0204DFA4
	push {r3, lr}
	mov r1, #0x32
	lsl r0, r0, #0x10
	str r1, [sp]
	ldr r3, _0204DFCC ; =0x0209AFF4
	lsr r0, r0, #0x10
	mov r1, #0x20
	mov r2, #0
	bl sub_0203A1FC
	ldr r1, _0204DFD0 ; =0x02141944
	mov r2, #0x20
	str r0, [r1]
	mov r1, #0
	blx sub_020787A8
	bl sub_0204E050
	pop {r3, pc}
	nop
_0204DFCC: .word 0x0209AFF4
_0204DFD0: .word 0x02141944
	thumb_func_end sub_0204DFA4

	thumb_func_start sub_0204DFD4
sub_0204DFD4: ; 0x0204DFD4
	push {r3, lr}
	ldr r2, _0204E034 ; =0x02141944
	ldr r0, [r2]
	cmp r0, #0
	beq _0204E030
	ldr r3, [r0]
	mov r1, #0xf
	tst r1, r3
	beq _0204E030
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0204DFF2
	sub r1, r1, #1
	str r1, [r0, #0x10]
	pop {r3, pc}
_0204DFF2:
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r3, [r2]
	ldr r1, [r3, #8]
	ldr r0, [r3, #0x18]
	add r0, r1, r0
	str r0, [r3, #8]
	ldr r3, [r2]
	ldr r1, [r3, #0xc]
	ldr r2, [r3, #8]
	cmp r2, r1
	blt _0204E010
	ldr r0, [r3, #0x18]
	cmp r0, #0
	bgt _0204E01A
_0204E010:
	cmp r2, r1
	bgt _0204E01C
	ldr r0, [r3, #0x18]
	cmp r0, #0
	bge _0204E01C
_0204E01A:
	str r1, [r3, #8]
_0204E01C:
	bl sub_0204E0F8
	ldr r0, _0204E034 ; =0x02141944
	ldr r2, [r0]
	ldr r1, [r2, #8]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	bne _0204E030
	mov r0, #0
	str r0, [r2]
_0204E030:
	pop {r3, pc}
	nop
_0204E034: .word 0x02141944
	thumb_func_end sub_0204DFD4

	thumb_func_start sub_0204E038
sub_0204E038: ; 0x0204E038
	ldr r0, _0204E040 ; =0x02141944
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0
_0204E040: .word 0x02141944
	thumb_func_end sub_0204E038

	thumb_func_start sub_0204E044
sub_0204E044: ; 0x0204E044
	ldr r1, _0204E04C ; =0x02141944
	ldr r1, [r1]
	str r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_0204E04C: .word 0x02141944
	thumb_func_end sub_0204E044

	thumb_func_start sub_0204E050
sub_0204E050: ; 0x0204E050
	ldr r0, _0204E05C ; =0x02141944
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #0x1c]
	bx lr
	nop
_0204E05C: .word 0x02141944
	thumb_func_end sub_0204E050

	thumb_func_start sub_0204E060
sub_0204E060: ; 0x0204E060
	push {r4, r5, r6, lr}
	ldr r4, _0204E0DC ; =0x02141944
	add r5, r3, #0
	ldr r3, [r4]
	str r0, [r3]
	ldr r0, [r4]
	str r1, [r0, #4]
	ldr r0, [r4]
	str r2, [r0, #0xc]
	bpl _0204E08E
	neg r0, r5
	cmp r5, #0
	blt _0204E07C
	add r0, r5, #0
_0204E07C:
	add r1, r0, #1
	ldr r0, [r4]
	str r1, [r0, #0x18]
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4]
	str r1, [r0, #0x14]
	b _0204E09C
_0204E08E:
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0x18]
	ldr r0, [r4]
	str r5, [r0, #0x10]
	ldr r0, [r4]
	str r5, [r0, #0x14]
_0204E09C:
	ldr r2, [r4]
	ldr r1, [r2, #0x18]
	ldr r0, [r2, #0x1c]
	mul r0, r1
	str r0, [r2, #0x18]
	cmp r5, #0
	ble _0204E0BA
	ldr r6, [r4]
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x1c]
	blx sub_0208D65C
	str r0, [r6, #0x10]
	ldr r0, [r4]
	str r5, [r0, #0x14]
_0204E0BA:
	ldr r2, [r4]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	ble _0204E0CE
	mov r0, #0
	ldr r1, [r2, #0x18]
	mvn r0, r0
	mul r0, r1
	str r0, [r2, #0x18]
_0204E0CE:
	ldr r1, [r4]
	ldr r0, [r1, #4]
	str r0, [r1, #8]
	bl sub_0204E0F8
	pop {r4, r5, r6, pc}
	nop
_0204E0DC: .word 0x02141944
	thumb_func_end sub_0204E060

	thumb_func_start sub_0204E0E0
sub_0204E0E0: ; 0x0204E0E0
	ldr r0, _0204E0F4 ; =0x02141944
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0204E0EE
	mov r0, #1
	bx lr
_0204E0EE:
	mov r0, #0
	bx lr
	nop
_0204E0F4: .word 0x02141944
	thumb_func_end sub_0204E0E0

	thumb_func_start sub_0204E0F8
sub_0204E0F8: ; 0x0204E0F8
	push {r3, lr}
	ldr r0, _0204E150 ; =0x02141944
	ldr r2, [r0]
	ldr r1, [r2]
	lsl r1, r1, #0x1f
	beq _0204E10E
	ldr r1, [r2, #8]
	ldr r0, _0204E154 ; =0x0400006C
	neg r1, r1
	bl sub_02074970
_0204E10E:
	ldr r0, _0204E150 ; =0x02141944
	ldr r2, [r0]
	mov r0, #2
	ldr r1, [r2]
	tst r0, r1
	beq _0204E124
	ldr r1, [r2, #8]
	ldr r0, _0204E158 ; =0x0400106C
	neg r1, r1
	bl sub_02074970
_0204E124:
	ldr r0, _0204E150 ; =0x02141944
	ldr r2, [r0]
	mov r0, #4
	ldr r1, [r2]
	tst r0, r1
	beq _0204E138
	ldr r0, _0204E154 ; =0x0400006C
	ldr r1, [r2, #8]
	bl sub_02074970
_0204E138:
	ldr r0, _0204E150 ; =0x02141944
	ldr r2, [r0]
	mov r0, #8
	ldr r1, [r2]
	tst r0, r1
	beq _0204E14C
	ldr r0, _0204E158 ; =0x0400106C
	ldr r1, [r2, #8]
	bl sub_02074970
_0204E14C:
	pop {r3, pc}
	nop
_0204E150: .word 0x02141944
_0204E154: .word 0x0400006C
_0204E158: .word 0x0400106C
	thumb_func_end sub_0204E0F8

	thumb_func_start sub_0204E15C
sub_0204E15C: ; 0x0204E15C
	push {r3, r4, r5, lr}
	mov r1, #0x3f
	str r1, [sp]
	ldr r3, _0204E188 ; =0x0209AFFC
	mov r1, #0x6c
	mov r2, #1
	add r5, r0, #0
	mov r4, #1
	bl sub_0203A1FC
	ldr r1, _0204E18C ; =0x02141948
	mov r2, #0
	str r0, [r1]
	strh r5, [r0]
	ldr r0, [r1]
	str r4, [r0, #4]
	ldr r0, [r1]
	str r2, [r0, #8]
	bl sub_0204E190
	pop {r3, r4, r5, pc}
	nop
_0204E188: .word 0x0209AFFC
_0204E18C: .word 0x02141948
	thumb_func_end sub_0204E15C

	thumb_func_start sub_0204E190
sub_0204E190: ; 0x0204E190
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0204E234 ; =0x04001000
	mov r0, #0x60
	ldr r2, [r1]
	mov r4, #0
	bic r2, r0
	mov r0, #0x20
	orr r0, r2
	str r0, [r1]
	add r0, r4, #0
	ldr r3, _0204E238 ; =0x02141948
	mov r1, #0
	mov ip, r0
_0204E1AA:
	ldr r2, [r3]
	lsl r0, r1, #3
	add r5, r2, r0
	mov r2, ip
	str r2, [r5, #0xc]
	ldr r2, [r3]
	add r1, r1, #1
	add r2, r2, r0
	mov r0, ip
	str r0, [r2, #0x10]
	cmp r1, #0xc
	blt _0204E1AA
_0204E1C2:
	mov r0, ip
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0204E23C ; =0xC0000C00
	add r7, r1, #0
	orr r7, r0
	mov r0, ip
	asr r0, r0, #2
	lsr r1, r0, #0x1d
	mov r0, ip
	add r1, r0, r1
	asr r0, r1, #3
	mov r3, #0
	lsl r6, r0, #5
_0204E1DE:
	ldr r0, _0204E238 ; =0x02141948
	lsl r5, r3, #0x17
	ldr r1, [r0]
	lsr r5, r5, #7
	lsl r0, r4, #3
	add r1, #0xc
	orr r5, r7
	add r2, r1, r0
	str r5, [r1, r0]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	add r1, r0, r6
	mov r0, #0xf
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r2, #4]
	mov r0, #1
	add r3, #0x40
	lsl r0, r0, #8
	add r4, r4, #1
	cmp r3, r0
	blt _0204E1DE
	mov r0, ip
	add r0, #0x40
	mov ip, r0
	cmp r0, #0xc0
	blt _0204E1C2
	ldr r4, _0204E238 ; =0x02141948
	mov r1, #0x60
	ldr r0, [r4]
	add r0, #0xc
	blx sub_0207B0AC
	ldr r0, [r4]
	mov r1, #0x3a
	add r0, #0xc
	lsl r1, r1, #4
	mov r2, #0x60
	bl sub_020756CC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204E234: .word 0x04001000
_0204E238: .word 0x02141948
_0204E23C: .word 0xC0000C00
	thumb_func_end sub_0204E190

	thumb_func_start sub_0204E240
sub_0204E240: ; 0x0204E240
	push {r4, lr}
	bl sub_02076E7C
	bl sub_02076E8C
	bl sub_02076E9C
	ldr r4, _0204E25C ; =0x02141948
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_0204E25C: .word 0x02141948
	thumb_func_end sub_0204E240

	thumb_func_start sub_0204E260
sub_0204E260: ; 0x0204E260
	ldr r0, _0204E268 ; =0x02141948
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_0204E268: .word 0x02141948
	thumb_func_end sub_0204E260

	thumb_func_start sub_0204E26C
sub_0204E26C: ; 0x0204E26C
	ldr r0, _0204E278 ; =0x02141948
	mov r1, #1
	ldr r0, [r0]
	str r1, [r0, #8]
	bx lr
	nop
_0204E278: .word 0x02141948
	thumb_func_end sub_0204E26C

	thumb_func_start sub_0204E27C
sub_0204E27C: ; 0x0204E27C
	push {r3, lr}
	ldr r0, _0204E2B8 ; =0x04000606
	ldrh r0, [r0]
	cmp r0, #0
	bne _0204E2B4
	ldr r0, _0204E2BC ; =0x02141948
	ldr r1, [r0]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0204E2B4
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0204E29C
	bl sub_0204E334
	b _0204E2A0
_0204E29C:
	bl sub_0204E2C0
_0204E2A0:
	ldr r0, _0204E2BC ; =0x02141948
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #8]
	ldr r1, [r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0204E2B2
	mov r2, #1
_0204E2B2:
	str r2, [r1, #4]
_0204E2B4:
	pop {r3, pc}
	nop
_0204E2B8: .word 0x04000606
_0204E2BC: .word 0x02141948
	thumb_func_end sub_0204E27C

	thumb_func_start sub_0204E2C0
sub_0204E2C0: ; 0x0204E2C0
	push {r3, lr}
	ldr r2, _0204E318 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bl sub_02076CE0
	mov r0, #4
	bl sub_02076ADC
	mov r0, #8
	bl sub_02076AC4
	ldr r1, _0204E31C ; =0x80330010
	ldr r0, _0204E320 ; =0x04000064
	mov r2, #1
	str r1, [r0]
	mov r0, #1
	mov r1, #0
	bl sub_02074910
	mov r0, #5
	bl sub_0207495C
	ldr r0, _0204E324 ; =0x04001000
	ldr r1, _0204E328 ; =0xFFFFE0FF
	ldr r2, [r0]
	and r2, r1
	lsr r1, r0, #0x10
	orr r1, r2
	str r1, [r0]
	add r0, #0xc
	ldrh r2, [r0]
	mov r1, #0x43
	and r2, r1
	ldr r1, _0204E32C ; =0x00004084
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0204E330 ; =0x0000FFBF
	and r1, r2
	strh r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0204E318: .word 0x04000304
_0204E31C: .word 0x80330010
_0204E320: .word 0x04000064
_0204E324: .word 0x04001000
_0204E328: .word 0xFFFFE0FF
_0204E32C: .word 0x00004084
_0204E330: .word 0x0000FFBF
	thumb_func_end sub_0204E2C0

	thumb_func_start sub_0204E334
sub_0204E334: ; 0x0204E334
	push {r3, lr}
	ldr r2, _0204E378 ; =0x04000304
	ldr r0, _0204E37C ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bl sub_02076CD0
	mov r0, #8
	bl sub_02076B38
	mov r0, #4
	bl sub_02076AC4
	ldr r1, _0204E380 ; =0x80320010
	ldr r0, _0204E384 ; =0x04000064
	mov r2, #1
	str r1, [r0]
	mov r0, #1
	mov r1, #0
	bl sub_02074910
	mov r0, #5
	bl sub_0207495C
	ldr r2, _0204E388 ; =0x04001000
	ldr r0, _0204E38C ; =0xFFFFE0FF
	ldr r1, [r2]
	and r1, r0
	lsr r0, r2, #0xe
	orr r0, r1
	str r0, [r2]
	pop {r3, pc}
	nop
_0204E378: .word 0x04000304
_0204E37C: .word 0xFFFF7FFF
_0204E380: .word 0x80320010
_0204E384: .word 0x04000064
_0204E388: .word 0x04001000
_0204E38C: .word 0xFFFFE0FF
	thumb_func_end sub_0204E334

	thumb_func_start sub_0204E390
sub_0204E390: ; 0x0204E390
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0204E448 ; =0x0209B00C
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x99
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x3c
	mov r2, #1
	add r3, r7, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	strh r6, [r4]
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0x28
	str r0, [r2]
	mov r0, #0x9f
	str r0, [sp]
	ldrh r2, [r4, #0xc]
	add r0, r6, #0
	add r3, r7, #0
	mul r1, r2
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #4]
	mov r0, #0xa1
	str r0, [sp]
	ldrh r2, [r4, #0xe]
	mov r1, #0x1c
	add r0, r6, #0
	mul r1, r2
	mov r2, #1
	add r3, r7, #0
	bl sub_0203A1FC
	str r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	mov r1, #0
	cmp r0, #0
	ble _0204E410
	add r0, r1, #0
	mov r5, #5
	mov r2, #0x28
_0204E3FA:
	add r6, r1, #0
	ldr r3, [r4, #4]
	mul r6, r2
	str r0, [r3, r6]
	ldr r3, [r4, #4]
	add r1, r1, #1
	add r3, r3, r6
	str r5, [r3, #0x14]
	ldrh r3, [r4, #0xc]
	cmp r1, r3
	blt _0204E3FA
_0204E410:
	ldrh r0, [r4, #0xe]
	mov r2, #0
	cmp r0, #0
	ble _0204E434
	ldr r5, _0204E44C ; =0xFFFFC000
	mov r3, #0x1c
	lsr r6, r5, #0x12
_0204E41E:
	add r0, r2, #0
	ldr r1, [r4, #8]
	mul r0, r3
	ldrh r7, [r1, r0]
	add r2, r2, #1
	and r7, r5
	orr r7, r6
	strh r7, [r1, r0]
	ldrh r0, [r4, #0xe]
	cmp r2, r0
	blt _0204E41E
_0204E434:
	mov r0, #0
	str r0, [r4, #0x2c]
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x34]
	str r0, [r4, #0x28]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204E448: .word 0x0209B00C
_0204E44C: .word 0xFFFFC000
	thumb_func_end sub_0204E390

	thumb_func_start sub_0204E450
sub_0204E450: ; 0x0204E450
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204E7B8
	ldr r0, [r4, #8]
	bl sub_0203A24C
	ldr r0, [r4, #4]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end sub_0204E450

	thumb_func_start sub_0204E46C
sub_0204E46C: ; 0x0204E46C
	push {r3, r4}
	mov r2, #1
	str r2, [r0, #0x2c]
	mov r2, #4
	ldrsh r4, [r1, r2]
	mov r2, #2
	ldrsh r3, [r1, r2]
	mov r2, #0
	ldrsh r1, [r1, r2]
	strh r1, [r0, #0x30]
	strh r3, [r0, #0x32]
	strh r4, [r0, #0x34]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0204E46C

	thumb_func_start sub_0204E488
sub_0204E488: ; 0x0204E488
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0204E488

	thumb_func_start sub_0204E498
sub_0204E498: ; 0x0204E498
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E498

	thumb_func_start sub_0204E4A0
sub_0204E4A0: ; 0x0204E4A0
	ldrh r1, [r1]
	strh r1, [r0, #0x1e]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E4A0

	thumb_func_start sub_0204E4A8
sub_0204E4A8: ; 0x0204E4A8
	ldrh r1, [r1]
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E4A8

	thumb_func_start sub_0204E4B0
sub_0204E4B0: ; 0x0204E4B0
	ldrh r1, [r1]
	strh r1, [r0, #0x22]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E4B0

	thumb_func_start sub_0204E4B8
sub_0204E4B8: ; 0x0204E4B8
	ldrb r1, [r1]
	add r0, #0x24
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0204E4B8

	thumb_func_start sub_0204E4C0
sub_0204E4C0: ; 0x0204E4C0
	add r0, #0x25
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E4C0

	thumb_func_start sub_0204E4C8
sub_0204E4C8: ; 0x0204E4C8
	strh r1, [r0, #0x36]
	strh r2, [r0, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E4C8

	thumb_func_start sub_0204E4D0
sub_0204E4D0: ; 0x0204E4D0
	push {r3, r4}
	cmp r1, #0
	beq _0204E4E4
	mov r3, #0x70
	and r3, r0
	asr r3, r3, #4
	mov r4, #1
	add r3, r3, #3
	lsl r4, r3
	strh r4, [r1]
_0204E4E4:
	cmp r2, #0
	beq _0204E4F4
	mov r1, #7
	and r0, r1
	add r0, r0, #3
	mov r1, #1
	lsl r1, r0
	strh r1, [r2]
_0204E4F4:
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0204E4D0

	thumb_func_start sub_0204E4F8
sub_0204E4F8: ; 0x0204E4F8
	push {r3, r4, r5, r6}
	ldrh r3, [r0, #0xc]
	mov r2, #0
	cmp r3, #0
	ble _0204E526
	ldr r0, [r0, #4]
	mov r4, #0x28
_0204E506:
	add r5, r2, #0
	mul r5, r4
	add r6, r0, r5
	ldr r5, [r0, r5]
	cmp r5, #0
	bne _0204E520
	ldr r5, [r6, #0x14]
	cmp r5, #5
	bne _0204E520
	str r2, [r1]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_0204E520:
	add r2, r2, #1
	cmp r2, r3
	blt _0204E506
_0204E526:
	mov r0, #0
	str r0, [r1]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E4F8

	thumb_func_start sub_0204E530
sub_0204E530: ; 0x0204E530
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	str r5, [r4]
	bl sub_020494AC
	cmp r0, #0
	bne _0204E54A
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_0204E54A:
	add r0, r5, #0
	bl sub_020496D8
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_020496FC
	ldr r1, [r4, #0x20]
	str r0, [r4, #0x24]
	lsl r1, r1, #0x10
	lsr r1, r1, #0xd
	lsl r0, r0, #0x10
	str r1, [r4, #0xc]
	lsr r0, r0, #0xd
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204E530

	thumb_func_start sub_0204E56C
sub_0204E56C: ; 0x0204E56C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0204E5C0 ; =0x02093F80
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	strb r3, [r4, #8]
	str r0, [r4, #0x14]
	mov r0, #0x70
	and r0, r2
	asr r1, r0, #4
	lsl r5, r1, #3
	ldr r0, _0204E5C4 ; =0x02093F94
	add r1, r1, #3
	ldr r0, [r0, r5]
	str r0, [r4, #0x18]
	mov r0, #7
	and r0, r2
	lsl r5, r0, #3
	ldr r2, _0204E5C8 ; =0x02093F98
	add r0, r0, #3
	ldr r2, [r2, r5]
	mov r5, #1
	lsl r5, r1
	mov r1, #1
	lsl r1, r0
	strh r1, [r4, #6]
	str r2, [r4, #0x1c]
	strh r5, [r4, #4]
	add r0, sp, #0x10
	ldrb r0, [r0]
	ldrb r1, [r4, #8]
	strb r0, [r4, #9]
	ldrh r0, [r4, #4]
	blx sub_0208D65C
	strb r0, [r4, #0xa]
	ldrh r0, [r4, #6]
	ldrb r1, [r4, #9]
	blx sub_0208D65C
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204E5C0: .word 0x02093F80
_0204E5C4: .word 0x02093F94
_0204E5C8: .word 0x02093F98
	thumb_func_end sub_0204E56C

	thumb_func_start sub_0204E5CC
sub_0204E5CC: ; 0x0204E5CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204E4F8
	cmp r0, #1
	bne _0204E60C
	ldr r2, [sp, #4]
	mov r1, #0x28
	ldr r0, [r5, #4]
	mul r1, r2
	add r0, r0, r1
	add r1, r4, #0
	bl sub_0204E530
	add r3, sp, #0x20
	ldrb r0, [r3, #4]
	str r0, [sp]
	ldr r1, [sp, #4]
	mov r0, #0x28
	mul r0, r1
	ldr r2, [r5, #4]
	ldrb r3, [r3]
	add r0, r2, r0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0204E56C
_0204E60C:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204E5CC

	thumb_func_start sub_0204E614
sub_0204E614: ; 0x0204E614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204E4F8
	cmp r0, #1
	bne _0204E65E
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02049344
	add r1, r0, #0
	ldr r0, [sp, #4]
	ldr r3, [r5, #4]
	mov r4, #0x28
	add r2, r0, #0
	mul r2, r4
	add r0, r3, r2
	bl sub_0204E530
	add r3, sp, #0x20
	ldrb r0, [r3, #8]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [r5, #4]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	ldrb r3, [r3, #4]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl sub_0204E56C
_0204E65E:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E614

	thumb_func_start sub_0204E664
sub_0204E664: ; 0x0204E664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #4
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0204E4F8
	cmp r0, #1
	bne _0204E6DE
	ldr r2, [sp, #4]
	ldr r1, [r5, #4]
	add r0, r2, #0
	mov r3, #0x28
	mul r0, r3
	mov r2, #0
	str r2, [r1, r0]
	ldr r0, [sp, #4]
	ldr r2, [r5, #4]
	add r1, r0, #0
	mul r1, r3
	add r0, r2, r1
	str r4, [r0, #0x20]
	ldr r0, [sp, #4]
	ldr r2, [r5, #4]
	add r1, r0, #0
	mul r1, r3
	add r0, r2, r1
	str r6, [r0, #0x24]
	ldr r0, [sp, #4]
	add r4, sp, #0x20
	add r1, r0, #0
	ldr r0, [r5, #4]
	mul r1, r3
	add r1, r0, r1
	ldr r0, [r1, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	str r0, [r1, #0xc]
	ldr r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [r5, #4]
	mul r1, r3
	add r1, r0, r1
	ldr r0, [r1, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	str r0, [r1, #0x10]
	ldrb r0, [r4, #8]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [r5, #4]
	add r1, r0, #0
	mul r1, r3
	add r0, r2, r1
	ldrb r3, [r4, #4]
	ldr r2, [sp, #0x20]
	add r1, r7, #0
	bl sub_0204E56C
_0204E6DE:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E664

	thumb_func_start sub_0204E6E4
sub_0204E6E4: ; 0x0204E6E4
	push {r3, r4, r5, lr}
	ldr r2, [r0, #4]
	mov r0, #0x28
	mul r0, r1
	ldr r5, [r2, r0]
	add r0, r5, #0
	bl sub_02049430
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02049620
	add r2, r0, #0
	ldr r1, [r2, #0x14]
	add r0, r4, #0
	add r1, r2, r1
	sub r1, r1, r4
	bl sub_0203A26C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204E6E4

	thumb_func_start sub_0204E70C
sub_0204E70C: ; 0x0204E70C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x28
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0204E730
	bl sub_02049534
	ldr r0, [r5, #4]
	ldr r0, [r0, r4]
	bl sub_02049404
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, r4]
_0204E730:
	ldr r0, [r5, #4]
	mov r1, #5
	add r0, r0, r4
	str r1, [r0, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204E70C

	thumb_func_start sub_0204E73C
sub_0204E73C: ; 0x0204E73C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x28
	ldr r1, [r5, #4]
	mul r4, r0
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _0204E76A
	add r0, r1, r4
	ldr r1, _0204E774 ; =0x0209B1AC
	ldr r0, [r0, #0x20]
	ldr r1, [r1]
	blx r1
	ldr r0, [r5, #4]
	ldr r1, _0204E778 ; =0x0209B1B4
	add r0, r0, r4
	ldr r0, [r0, #0x24]
	ldr r1, [r1]
	blx r1
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, r4]
_0204E76A:
	ldr r0, [r5, #4]
	mov r1, #5
	add r0, r0, r4
	str r1, [r0, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204E774: .word 0x0209B1AC
_0204E778: .word 0x0209B1B4
	thumb_func_end sub_0204E73C

	thumb_func_start sub_0204E77C
sub_0204E77C: ; 0x0204E77C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x28
	mul r4, r0
	ldr r0, [r5, #4]
	ldr r1, _0204E7B0 ; =0x0209B1AC
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	ldr r1, [r1]
	blx r1
	ldr r0, [r5, #4]
	ldr r1, _0204E7B4 ; =0x0209B1B4
	add r0, r0, r4
	ldr r0, [r0, #0x24]
	ldr r1, [r1]
	blx r1
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, r4]
	ldr r0, [r5, #4]
	mov r1, #5
	add r0, r0, r4
	str r1, [r0, #0x14]
	pop {r3, r4, r5, pc}
	nop
_0204E7B0: .word 0x0209B1AC
_0204E7B4: .word 0x0209B1B4
	thumb_func_end sub_0204E77C

	thumb_func_start sub_0204E7B8
sub_0204E7B8: ; 0x0204E7B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _0204E7D4
_0204E7C4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204E70C
	ldrh r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _0204E7C4
_0204E7D4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204E7B8

	thumb_func_start sub_0204E7D8
sub_0204E7D8: ; 0x0204E7D8
	ldr r3, [r0, #4]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	ldr r0, [r0, #0xc]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E7D8

	thumb_func_start sub_0204E7E8
sub_0204E7E8: ; 0x0204E7E8
	ldr r3, [r0, #4]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	ldr r0, [r0, #0x10]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E7E8

	thumb_func_start sub_0204E7F8
sub_0204E7F8: ; 0x0204E7F8
	ldr r3, [r0, #4]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	ldr r0, [r0, #0x20]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E7F8

	thumb_func_start sub_0204E808
sub_0204E808: ; 0x0204E808
	mov r3, #0x28
	mul r3, r1
	ldr r1, [r0, #4]
	add r1, r1, r3
	str r2, [r1, #0x20]
	ldr r0, [r0, #4]
	add r1, r0, r3
	ldr r0, [r1, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	str r0, [r1, #0xc]
	bx lr
	thumb_func_end sub_0204E808

	thumb_func_start sub_0204E820
sub_0204E820: ; 0x0204E820
	ldr r3, [r0, #4]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	ldr r0, [r0, #0x24]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204E820

	thumb_func_start sub_0204E830
sub_0204E830: ; 0x0204E830
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r6, r2, #0
	mov r2, #0x28
	ldr r1, [r5, #4]
	mul r2, r0
	add r5, r1, r2
	ldr r0, [r5, #0x14]
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r0, #6
	bhi _0204E890
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204E858: ; jump table
	.short _0204E890 - _0204E858 - 2 ; case 0
	.short _0204E86E - _0204E858 - 2 ; case 1
	.short _0204E876 - _0204E858 - 2 ; case 2
	.short _0204E866 - _0204E858 - 2 ; case 3
	.short _0204E86E - _0204E858 - 2 ; case 4
	.short _0204E890 - _0204E858 - 2 ; case 5
	.short _0204E86E - _0204E858 - 2 ; case 6
_0204E866:
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	lsl r0, r0, #5
	b _0204E87C
_0204E86E:
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	lsl r0, r0, #6
	b _0204E87C
_0204E876:
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	lsl r0, r0, #4
_0204E87C:
	asr r2, r0, #2
	lsr r2, r2, #0x1d
	add r2, r0, r2
	asr r0, r2, #3
	mul r0, r1
	asr r1, r0, #2
	lsr r1, r1, #0x1d
	add r1, r0, r1
	asr r0, r1, #3
	str r0, [r4]
_0204E890:
	add r0, sp, #0x20
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0204E8A2
	ldr r0, [r4]
	add sp, #8
	mul r0, r6
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
_0204E8A2:
	ldrh r0, [r5, #4]
	str r0, [sp]
	ldr r1, [sp]
	add r0, r6, #0
	blx sub_0208D65C
	str r0, [sp, #4]
	ldr r1, [sp]
	add r0, r6, #0
	blx sub_0208D65C
	ldr r2, [r4]
	ldr r0, [sp, #4]
	add r3, r2, #0
	mul r3, r0
	ldrb r0, [r5, #8]
	mul r1, r0
	add r0, r3, r1
	str r0, [r7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0204E830

	thumb_func_start sub_0204E8CC
sub_0204E8CC: ; 0x0204E8CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r5, [r4, #0xe]
	mov ip, r3
	mov r3, #0
	str r1, [sp]
	mov lr, r2
	cmp r5, #0
	ble _0204E9B0
	ldr r0, [r4, #8]
	ldr r7, _0204E9B4 ; =0x00003FFF
_0204E8E2:
	mov r1, #0x1c
	add r2, r3, #0
	mul r2, r1
	ldrh r6, [r0, r2]
	lsl r1, r6, #0x12
	lsr r1, r1, #0x12
	cmp r1, r7
	bne _0204E9AA
	ldr r1, [sp]
	ldr r7, _0204E9B8 ; =0xFFFFC000
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	lsr r1, r7, #0x12
	and r6, r7
	and r1, r5
	orr r1, r6
	strh r1, [r0, r2]
	ldr r5, [r4, #8]
	ldr r0, _0204E9BC ; =0xFFFF3FFF
	ldrh r1, [r5, r2]
	mov r7, #0
	ldr r6, [sp, #0x18]
	and r0, r1
	ldr r1, [sp, #0x24]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r5, r2]
	ldr r0, [r4, #8]
	add r1, r0, r2
	mov r0, lr
	strh r0, [r1, #0x12]
	ldr r0, [r4, #8]
	add r1, r0, r2
	mov r0, ip
	strh r0, [r1, #0x14]
	ldr r0, [r4, #8]
	add r0, r0, r2
	strh r7, [r0, #0x16]
	ldr r0, [r4, #8]
	add r0, r0, r2
	add r5, r0, #4
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	ldr r0, [r4, #8]
	add r6, r0, r2
	ldrh r5, [r6, #0x18]
	mov r0, #0x1f
	bic r5, r0
	add r0, sp, #0x18
	ldrb r1, [r0, #4]
	mov r0, #0x1f
	and r0, r1
	orr r0, r5
	strh r0, [r6, #0x18]
	ldr r0, [r4, #8]
	ldr r1, _0204E9C0 ; =0xFFFFFE1F
	add r0, r0, r2
	ldrh r5, [r0, #0x18]
	and r5, r1
	strh r5, [r0, #0x18]
	ldr r0, [r4, #8]
	sub r1, #0x20
	add r0, r0, r2
	ldrh r5, [r0, #0x18]
	and r1, r5
	strh r1, [r0, #0x18]
	ldr r0, [r4, #8]
	add r1, r0, r2
	ldrh r5, [r1, #0x18]
	ldr r0, _0204E9C4 ; =0xFFFF0FFF
	and r0, r5
	ldr r5, [sp, #0x20]
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x10
	orr r0, r5
	strh r0, [r1, #0x18]
	ldr r0, [r4, #8]
	add r5, r0, r2
	ldrh r1, [r5, #0x18]
	ldr r0, _0204E9C8 ; =0xFFFFFBFF
	and r0, r1
	strh r0, [r5, #0x18]
	ldr r0, [r4, #8]
	add r5, r0, r2
	ldrh r1, [r5, #0x18]
	ldr r0, _0204E9CC ; =0xFFFFF7FF
	and r0, r1
	strh r0, [r5, #0x18]
	ldr r0, [r4, #8]
	add r0, r0, r2
	strh r7, [r0, #0x10]
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
_0204E9AA:
	add r3, r3, #1
	cmp r3, r5
	blt _0204E8E2
_0204E9B0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204E9B4: .word 0x00003FFF
_0204E9B8: .word 0xFFFFC000
_0204E9BC: .word 0xFFFF3FFF
_0204E9C0: .word 0xFFFFFE1F
_0204E9C4: .word 0xFFFF0FFF
_0204E9C8: .word 0xFFFFFBFF
_0204E9CC: .word 0xFFFFF7FF
	thumb_func_end sub_0204E8CC

	thumb_func_start sub_0204E9D0
sub_0204E9D0: ; 0x0204E9D0
	push {r3, r4}
	ldr r2, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	ldrh r4, [r2, r0]
	ldr r3, _0204E9F0 ; =0x00003FFF
	lsl r1, r4, #0x12
	lsr r1, r1, #0x12
	cmp r1, r3
	beq _0204E9EC
	ldr r1, _0204E9F4 ; =0xFFFFC000
	and r1, r4
	orr r1, r3
	strh r1, [r2, r0]
_0204E9EC:
	pop {r3, r4}
	bx lr
	.align 2, 0
_0204E9F0: .word 0x00003FFF
_0204E9F4: .word 0xFFFFC000
	thumb_func_end sub_0204E9D0

	thumb_func_start sub_0204E9F8
sub_0204E9F8: ; 0x0204E9F8
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	ldrh r0, [r3, r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	strh r0, [r2]
	bx lr
	thumb_func_end sub_0204E9F8

	thumb_func_start sub_0204EA08
sub_0204EA08: ; 0x0204EA08
	push {r3, r4}
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	ldrh r4, [r3, r0]
	ldr r1, _0204EA24 ; =0xFFFFC000
	ldrh r2, [r2]
	and r4, r1
	lsr r1, r1, #0x12
	and r1, r2
	orr r1, r4
	strh r1, [r3, r0]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0204EA24: .word 0xFFFFC000
	thumb_func_end sub_0204EA08

	thumb_func_start sub_0204EA28
sub_0204EA28: ; 0x0204EA28
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r3, r0
	add r3, r0, #4
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0204EA28

	thumb_func_start sub_0204EA3C
sub_0204EA3C: ; 0x0204EA3C
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r3, r0
	ldrh r0, [r0, #0x10]
	strh r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204EA3C

	thumb_func_start sub_0204EA4C
sub_0204EA4C: ; 0x0204EA4C
	ldrh r3, [r2]
	ldr r2, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	strh r3, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204EA4C

	thumb_func_start sub_0204EA5C
sub_0204EA5C: ; 0x0204EA5C
	push {r4, r5}
	mov r4, #0x1c
	mul r4, r1
	mov r1, #0
	ldrsh r5, [r2, r1]
	ldr r2, [r0, #8]
	ldrsh r1, [r3, r1]
	add r2, r2, r4
	strh r5, [r2, #0x12]
	ldr r0, [r0, #8]
	add r0, r0, r4
	strh r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	thumb_func_end sub_0204EA5C

	thumb_func_start sub_0204EA78
sub_0204EA78: ; 0x0204EA78
	push {r3, r4}
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r4, r3, r0
	ldrh r3, [r4, #0x18]
	mov r0, #0x1f
	ldrb r1, [r2]
	bic r3, r0
	mov r0, #0x1f
	and r0, r1
	orr r0, r3
	strh r0, [r4, #0x18]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0204EA78

	thumb_func_start sub_0204EA98
sub_0204EA98: ; 0x0204EA98
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r3, r0
	ldrh r3, [r0, #0x18]
	ldr r1, _0204EAB4 ; =0xFFFFFE1F
	and r3, r1
	ldrb r1, [r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x17
	orr r1, r3
	strh r1, [r0, #0x18]
	bx lr
	nop
_0204EAB4: .word 0xFFFFFE1F
	thumb_func_end sub_0204EA98

	thumb_func_start sub_0204EAB8
sub_0204EAB8: ; 0x0204EAB8
	ldr r2, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0204EAB8

	thumb_func_start sub_0204EAC8
sub_0204EAC8: ; 0x0204EAC8
	ldr r2, [r2]
	cmp r2, #1
	ldr r2, [r0, #8]
	bne _0204EAE2
	mov r0, #0x1c
	mul r0, r1
	add r2, r2, r0
	ldrh r1, [r2, #0x18]
	mov r0, #2
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r2, #0x18]
	bx lr
_0204EAE2:
	mov r0, #0x1c
	mul r0, r1
	add r2, r2, r0
	ldrh r1, [r2, #0x18]
	ldr r0, _0204EAF4 ; =0xFFFFFDFF
	and r0, r1
	strh r0, [r2, #0x18]
	bx lr
	nop
_0204EAF4: .word 0xFFFFFDFF
	thumb_func_end sub_0204EAC8

	thumb_func_start sub_0204EAF8
sub_0204EAF8: ; 0x0204EAF8
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r1, r3, r0
	ldrh r3, [r1, #0x18]
	ldr r0, _0204EB1C ; =0xFFFF0FFF
	lsl r2, r2, #0x10
	and r0, r3
	lsl r3, r3, #0x10
	lsr r3, r3, #0x1c
	lsr r2, r2, #0x10
	orr r2, r3
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r0, r2
	strh r0, [r1, #0x18]
	bx lr
	nop
_0204EB1C: .word 0xFFFF0FFF
	thumb_func_end sub_0204EAF8

	thumb_func_start sub_0204EB20
sub_0204EB20: ; 0x0204EB20
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r1, r3, r0
	ldrh r3, [r1, #0x18]
	ldr r0, _0204EB44 ; =0xFFFF0FFF
	mvn r2, r2
	and r0, r3
	lsl r3, r3, #0x10
	lsl r2, r2, #0x10
	lsr r3, r3, #0x1c
	lsr r2, r2, #0x10
	and r2, r3
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r0, r2
	strh r0, [r1, #0x18]
	bx lr
	.align 2, 0
_0204EB44: .word 0xFFFF0FFF
	thumb_func_end sub_0204EB20

	thumb_func_start sub_0204EB48
sub_0204EB48: ; 0x0204EB48
	ldr r2, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #0x18]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0204EB48

	thumb_func_start sub_0204EB58
sub_0204EB58: ; 0x0204EB58
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r3, r0
	ldrh r3, [r0, #0x18]
	ldr r1, _0204EB78 ; =0xFFFFFBFF
	and r3, r1
	ldr r1, [r2]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x15
	orr r1, r3
	strh r1, [r0, #0x18]
	bx lr
	nop
_0204EB78: .word 0xFFFFFBFF
	thumb_func_end sub_0204EB58

	thumb_func_start sub_0204EB7C
sub_0204EB7C: ; 0x0204EB7C
	ldr r3, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r3, r0
	ldrh r3, [r0, #0x18]
	ldr r1, _0204EB9C ; =0xFFFFF7FF
	and r3, r1
	ldr r1, [r2]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x14
	orr r1, r3
	strh r1, [r0, #0x18]
	bx lr
	nop
_0204EB9C: .word 0xFFFFF7FF
	thumb_func_end sub_0204EB7C

	thumb_func_start sub_0204EBA0
sub_0204EBA0: ; 0x0204EBA0
	ldrh r3, [r2]
	ldr r2, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	strh r3, [r0, #0x16]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204EBA0

	thumb_func_start sub_0204EBB0
sub_0204EBB0: ; 0x0204EBB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1d4
	str r0, [sp, #4]
	str r0, [sp, #0x4c]
	add r0, #0xc
	add r4, r1, #0
	add r5, r2, #0
	str r0, [sp, #0x4c]
	bl sub_02074D54
	ldr r0, [sp, #4]
	mov r1, #0
	str r1, [r0, #0x28]
	add r6, sp, #0x138
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0204A64C
	add r7, sp, #0x12c
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204A66C
	add r0, r4, #0
	add r4, sp, #0x120
	add r1, r4, #0
	bl sub_0204A68C
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _0204EC02
	add r0, sp, #0xe4
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_02074B80
	b _0204EC0E
_0204EC02:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, sp, #0xe4
	blx MTX_LookAt
_0204EC0E:
	add r4, sp, #0xb4
	add r0, sp, #0xe4
	add r1, r4, #0
	blx MTX_Inverse43
	add r0, r4, #0
	add r1, sp, #0x144
	blx sub_0207873C
	add r4, sp, #0x138
	add r6, sp, #0x120
	add r7, sp, #0xa8
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl VEC_Subtract
	mov r0, #0
	str r0, [sp, #0xac]
	add r0, r7, #0
	add r1, r7, #0
	blx VEC_Normalize
	add r7, sp, #0x168
	add r0, r7, #0
	blx MTX_Identity33_
	ldr r1, [sp, #0xa8]
	ldr r2, [sp, #0xb0]
	add r0, r7, #0
	bl MTX_RotY33_
	ldr r1, [sp, #0xa8]
	ldr r2, [sp, #0xb0]
	add r0, sp, #0x1b0
	bl MTX_RotY33_
	add r0, sp, #0x18c
	blx MTX_Identity33_
	add r0, r4, #0
	add r4, sp, #0x114
	add r1, r6, #0
	add r2, r4, #0
	bl VEC_Subtract
	add r0, r4, #0
	add r1, r4, #0
	blx VEC_Normalize
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x2c]
	cmp r0, #1
	bne _0204EC92
	ldr r0, [sp, #4]
	mov r1, #0x30
	ldrsh r0, [r0, r1]
	mov r1, #0x32
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	ldrsh r0, [r0, r1]
	mov r1, #0x34
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	ldrsh r0, [r0, r1]
	b _0204ECA8
_0204EC92:
	ldr r0, [sp, #0x114]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x118]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x11c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0204ECA8:
	str r0, [sp, #0x24]
	cmp r5, #0
	beq _0204ED02
	ldr r7, _0204EFD4 ; =0x040004C8
	mov r4, #0
	add r6, sp, #0x94
_0204ECB4:
	lsl r1, r4, #0x18
	add r2, sp, #0x94
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, #2
	bl sub_0204A760
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, sp, #0x94
	bl sub_0204A78C
	mov r0, #6
	ldrsh r0, [r6, r0]
	lsl r2, r4, #0x1e
	add r4, r4, #1
	asr r0, r0, #3
	lsl r0, r0, #0x16
	lsr r1, r0, #2
	mov r0, #2
	ldrsh r0, [r6, r0]
	asr r3, r0, #3
	ldr r0, _0204EFD8 ; =0x000003FF
	and r0, r3
	mov r3, #4
	ldrsh r3, [r6, r3]
	asr r3, r3, #3
	lsl r3, r3, #0x16
	lsr r3, r3, #0xc
	orr r0, r3
	orr r0, r1
	orr r0, r2
	str r0, [r7]
	ldrh r0, [r6]
	orr r0, r2
	str r0, [r7, #4]
	cmp r4, #4
	blt _0204ECB4
_0204ED02:
	ldr r0, _0204EFDC ; =0x04000440
	mov r1, #1
	str r1, [r0]
	ldr r0, [sp, #0x4c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x48]
	ldr r0, _0204EFDC ; =0x04000440
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x50]
	add r0, #0x2c
	str r1, [r0]
	str r1, [r0]
	str r0, [sp, #0x50]
	str r1, [r0]
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x4c]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bgt _0204ED2C
	b _0204F0F2
_0204ED2C:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	asr r2, r1, #3
	ldr r1, _0204EFD8 ; =0x000003FF
	asr r0, r0, #3
	and r2, r1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x16
	asr r1, r1, #3
	lsl r1, r1, #0x16
	lsr r1, r1, #0xc
	lsr r0, r0, #2
	orr r1, r2
	orr r0, r1
	str r0, [sp, #0x20]
	ldr r0, _0204EFDC ; =0x04000440
	ldr r7, _0204EFDC ; =0x04000440
	lsr r0, r0, #0xe
	str r0, [sp, #0x54]
	ldr r0, _0204EFDC ; =0x04000440
	ldr r5, _0204EFDC ; =0x04000440
	str r0, [sp, #0x58]
	add r0, #0x68
	str r0, [sp, #0x58]
	ldr r0, _0204EFDC ; =0x04000440
	add r7, #0x48
	str r0, [sp, #0x5c]
	add r0, #0x6c
	str r0, [sp, #0x5c]
	ldr r0, _0204EFDC ; =0x04000440
	add r5, #0x4c
	str r0, [sp, #0x60]
	add r0, #0x80
	str r0, [sp, #0x60]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x64]
	add r0, #0x84
	str r0, [sp, #0x64]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x68]
	add r0, #0x64
	str r0, [sp, #0x68]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x6c]
	add r0, #0xc0
	str r0, [sp, #0x6c]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x74]
	add r0, #0x40
	str r0, [sp, #0x74]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x70]
	add r0, #0x44
	str r0, [sp, #0x70]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x78]
	add r0, #0xc4
	str r0, [sp, #0x78]
	ldr r0, _0204EFDC ; =0x04000440
	str r0, [sp, #0x7c]
	add r0, #8
	str r0, [sp, #0x7c]
	ldr r0, _0204EFDC ; =0x04000440
	lsl r0, r0, #0x18
	str r0, [sp, #0x88]
	ldr r0, _0204EFDC ; =0x04000440
	lsl r0, r0, #0x17
	str r0, [sp, #0x84]
	ldr r0, _0204EFE0 ; =0x00007FFF
	add r0, r0, #1
	str r0, [sp, #0x90]
	ldr r0, _0204EFE0 ; =0x00007FFF
	str r0, [sp, #0x8c]
	add r0, #0xc1
	str r0, [sp, #0x8c]
	ldr r0, _0204EFE0 ; =0x00007FFF
	lsr r0, r0, #1
	str r0, [sp, #0x80]
_0204EDC8:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [r0, #8]
	mov r0, #0x1c
	mul r0, r1
	add r4, r2, r0
	ldrh r0, [r2, r0]
	lsl r0, r0, #0x12
	lsr r2, r0, #0x12
	ldr r0, [sp, #0x80]
	cmp r2, r0
	beq _0204EDE8
	ldrh r1, [r4, #0x18]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	bne _0204EDEA
_0204EDE8:
	b _0204F0E0
_0204EDEA:
	ldr r0, [sp, #4]
	mov r3, #0x28
	ldr r0, [r0, #4]
	mul r3, r2
	add r6, r0, r3
	lsl r0, r1, #0x15
	lsr r0, r0, #0x1f
	ldrb r0, [r6, #0xa]
	beq _0204EE2A
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0x10]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldrb r0, [r6, #8]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	blx sub_0208D65C
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #4]
	mul r1, r0
	lsl r0, r1, #0xc
	mov r1, #0x36
	ldrsh r1, [r2, r1]
	add r0, r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x3c]
	add r0, r0, r1
	str r0, [sp, #0x44]
	b _0204EE4E
_0204EE2A:
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0x10]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldrb r0, [r6, #8]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	blx sub_0208D65C
	ldr r0, [sp, #0x18]
	mul r1, r0
	lsl r0, r1, #0xc
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x18]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x44]
	add r0, r0, r1
	str r0, [sp, #0x3c]
_0204EE4E:
	ldrh r0, [r4, #0x18]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	ldrb r0, [r6, #9]
	beq _0204EE7E
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	blx sub_0208D65C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	mul r0, r1
	mov r1, #0x38
	ldrsh r1, [r2, r1]
	lsl r0, r0, #0xc
	add r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x40]
	b _0204EE9A
_0204EE7E:
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	blx sub_0208D65C
	ldr r1, [sp, #8]
	mul r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, r1, #0
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x40]
	add r0, r0, r1
	str r0, [sp, #0x38]
_0204EE9A:
	ldr r0, _0204EFDC ; =0x04000440
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x48]
	bl FX_Div
	str r0, [sp, #0x9c]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x48]
	bl FX_Div
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x48]
	bl FX_Div
	str r0, [sp, #0xa4]
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x1e
	add r2, r1, #0
	mov r0, #0x24
	mul r2, r0
	add r0, sp, #0x144
	add r0, r0, r2
	add r1, sp, #0x9c
	bl sub_02074C78
	ldrh r0, [r4, #0x16]
	ldr r1, _0204EFE4 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r2, _0204EFE4 ; =FX_SinCosTable_ ; 0x020946BC
	asr r0, r0, #4
	lsl r0, r0, #2
	add r1, r1, r0
	ldrsh r0, [r2, r0]
	mov r2, #2
	ldrsh r1, [r1, r2]
	neg r0, r0
	bl sub_02074BF4
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1e
	cmp r0, #3
	bne _0204EF0A
	mov r0, #0x14
	mov r1, #0x12
	ldrsh r2, [r4, r1]
	ldrsh r0, [r4, r0]
	ldr r1, [sp, #0x50]
	str r2, [r1]
	ldr r2, [sp, #0x54]
	str r2, [r1]
	str r0, [r1]
	b _0204EF1E
_0204EF0A:
	mov r0, #0x14
	mov r1, #0x12
	ldrsh r2, [r4, r1]
	ldrsh r0, [r4, r0]
	ldr r1, [sp, #0x50]
	str r2, [r1]
	str r0, [r1]
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x50]
	str r1, [r0]
_0204EF1E:
	ldr r2, [r6, #0x1c]
	ldr r0, [r6, #0x18]
	lsl r2, r2, #0x17
	ldr r1, [r6, #0x14]
	mov ip, r2
	lsl r2, r0, #0x14
	ldr r0, [r6, #0xc]
	lsl r1, r1, #0x1a
	lsr r0, r0, #3
	orr r1, r0
	ldr r0, [sp, #0x88]
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, ip
	orr r1, r0
	ldr r0, [sp, #0x84]
	mov r2, #1
	orr r1, r0
	ldr r0, [sp, #0x58]
	str r1, [r0]
	ldr r0, [r6, #0x14]
	cmp r0, #2
	beq _0204EF50
	mov r2, #0
_0204EF50:
	mov r0, #4
	ldr r1, [r6, #0x10]
	sub r0, r0, r2
	lsr r1, r0
	ldr r0, [sp, #0x5c]
	str r1, [r0]
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, [sp, #0x90]
	orr r1, r0
	ldr r0, [sp, #0x60]
	str r1, [r0]
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0, #0x14]
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, [sp, #0x64]
	str r1, [r0]
	ldrh r1, [r4, #0x18]
	lsl r0, r1, #0x1b
	lsl r3, r1, #0x17
	lsr r0, r0, #0x1b
	lsl r2, r0, #0x10
	ldr r0, [sp, #0x4c]
	lsr r3, r3, #0x1c
	ldrb r0, [r0, #0x18]
	lsl r1, r1, #0x10
	add r0, r0, r3
	lsr r3, r1, #0x1c
	ldr r1, [sp, #0x8c]
	lsl r0, r0, #0x18
	orr r1, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #0x68]
	mov r2, #6
	str r1, [r0]
	ldr r0, [sp, #0x4c]
	ldrb r0, [r0, #0x19]
	lsl r1, r0, #3
	ldr r0, _0204EFE8 ; =0x02093FD4
	add r3, r0, r1
	ldrsh r2, [r3, r2]
	ldrsh r0, [r0, r1]
	mov r1, #2
	ldrsh r6, [r3, r1]
	mov r1, #4
	str r2, [sp, #0x34]
	ldrsh r1, [r3, r1]
	ldr r2, [sp, #0x6c]
	mov r3, #1
	str r3, [r2]
	ldrh r2, [r4, #0x18]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	beq _0204EFD0
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x70]
	b _0204EFEE
_0204EFD0:
	ldr r3, _0204EFE0 ; =0x00007FFF
	b _0204EFEC
	.align 2, 0
_0204EFD4: .word 0x040004C8
_0204EFD8: .word 0x000003FF
_0204EFDC: .word 0x04000440
_0204EFE0: .word 0x00007FFF
_0204EFE4: .word FX_SinCosTable_
_0204EFE8: .word 0x02093FD4
_0204EFEC:
	ldr r2, [sp, #0x74]
_0204EFEE:
	str r3, [r2]
	ldrh r2, [r4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1e
	cmp r2, #3
	bne _0204F05C
	ldr r2, [sp, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #8
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r3, r2, #0x10
	ldr r2, [sp, #0x44]
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	add r4, r2, #0
	orr r4, r3
	str r4, [r7]
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x38]
	lsr r1, r1, #0x10
	lsl r0, r0, #8
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [r5]
	lsl r0, r0, #0x10
	str r4, [r5]
	orr r2, r0
	str r2, [r7]
	str r1, [r5]
	lsl r1, r6, #0x10
	lsr r2, r1, #0x10
	ldr r1, [sp, #0x3c]
	str r2, [r5]
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r7]
	ldr r0, [sp, #0x34]
	orr r1, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r5]
	str r2, [r5]
	str r1, [r7]
	str r0, [r5]
	str r4, [r5]
	b _0204F0D4
_0204F05C:
	ldr r2, [sp, #0x40]
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r3, r2, #0x10
	ldr r2, [sp, #0x44]
	lsr r0, r0, #0x10
	lsl r2, r2, #8
	asr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	add r4, r2, #0
	orr r4, r3
	lsl r1, r1, #0x10
	str r4, [r7]
	lsr r4, r1, #0x10
	lsl r0, r0, #0x10
	add r1, r4, #0
	orr r1, r0
	str r1, [r5]
	mov r1, #0
	str r1, [r5]
	ldr r1, [sp, #0x38]
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	orr r2, r1
	str r2, [r7]
	lsl r2, r6, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	orr r4, r2
	str r4, [r5]
	mov r4, #0
	str r4, [r5]
	ldr r4, [sp, #0x3c]
	lsl r4, r4, #8
	asr r4, r4, #0x10
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	orr r1, r4
	str r1, [r7]
	ldr r1, [sp, #0x34]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r2, r1
	str r2, [r5]
	mov r2, #0
	str r2, [r5]
	add r2, r4, #0
	orr r2, r3
	str r2, [r7]
	orr r0, r1
	str r0, [r5]
	mov r0, #0
	str r0, [r5]
_0204F0D4:
	ldr r0, [sp, #0x78]
	mov r1, #0
	str r1, [r0]
	ldr r0, [sp, #0x7c]
	mov r1, #1
	str r1, [r0]
_0204F0E0:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0, #2]
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bge _0204F0F2
	b _0204EDC8
_0204F0F2:
	add sp, #0x1d4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204EBB0

	thumb_func_start sub_0204F0F8
sub_0204F0F8: ; 0x0204F0F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r5, r3, #0
	mov r0, #0x5e
	add r7, r1, #0
	str r2, [sp, #4]
	str r0, [sp]
	ldr r3, _0204F1C8 ; =0x0209B018
	add r0, r5, #0
	mov r1, #0x24
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r3, sp, #8
	ldr r0, [sp, #4]
	strh r5, [r4]
	str r0, [r4, #8]
	strh r6, [r4, #0x10]
	ldr r6, _0204F1CC ; =0x0209401C
	strh r7, [r4, #0x1c]
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldrh r1, [r4, #0x10]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r1, [r4, #0x1c]
	strh r1, [r0, #2]
	add r0, r2, #0
	add r1, r5, #0
	bl sub_0204E390
	str r0, [r4, #4]
	mov r0, #0x77
	str r0, [sp]
	ldrh r1, [r4, #0x10]
	ldr r3, _0204F1C8 ; =0x0209B018
	add r0, r5, #0
	lsl r1, r1, #3
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_0203C3E4
	str r0, [r4, #0x14]
	mov r0, #0x7b
	str r0, [sp]
	ldrh r2, [r4, #0x1c]
	mov r1, #0x28
	ldr r3, _0204F1C8 ; =0x0209B018
	mul r1, r2
	add r0, r5, #0
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0x1c]
	add r1, r5, #0
	bl sub_0203C3E4
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _0204F1A2
_0204F190:
	ldr r1, [r4, #0xc]
	lsl r0, r5, #3
	add r0, r1, r0
	bl sub_0204F228
	ldrh r0, [r4, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _0204F190
_0204F1A2:
	ldrh r0, [r4, #0x1c]
	mov r5, #0
	cmp r0, #0
	ble _0204F1C0
	mov r6, #0x28
_0204F1AC:
	add r0, r5, #0
	ldr r1, [r4, #0x18]
	mul r0, r6
	add r0, r1, r0
	bl sub_0204F244
	ldrh r0, [r4, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blt _0204F1AC
_0204F1C0:
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0204F1C8: .word 0x0209B018
_0204F1CC: .word 0x0209401C
	thumb_func_end sub_0204F0F8

	thumb_func_start sub_0204F1D0
sub_0204F1D0: ; 0x0204F1D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _0204F1FA
	ldr r6, _0204F220 ; =0x0000FFFF
	mov r7, #0x28
_0204F1E0:
	add r0, r4, #0
	ldr r1, [r5, #0x18]
	mul r0, r7
	ldr r1, [r1, r0]
	cmp r1, r6
	beq _0204F1F2
	ldr r0, [r5, #4]
	bl sub_0204E9D0
_0204F1F2:
	ldrh r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _0204F1E0
_0204F1FA:
	ldr r0, [r5, #0x20]
	bl sub_0203C448
	ldr r0, [r5, #0x18]
	bl sub_0203A24C
	ldr r0, [r5, #0x14]
	bl sub_0203C448
	ldr r0, [r5, #0xc]
	bl sub_0203A24C
	ldr r0, [r5, #4]
	bl sub_0204E450
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204F220: .word 0x0000FFFF
	thumb_func_end sub_0204F1D0

	thumb_func_start sub_0204F224
sub_0204F224: ; 0x0204F224
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0204F224

	thumb_func_start sub_0204F228
sub_0204F228: ; 0x0204F228
	ldr r1, _0204F234 ; =0x0000FFFF
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	nop
_0204F234: .word 0x0000FFFF
	thumb_func_end sub_0204F228

	thumb_func_start sub_0204F238
sub_0204F238: ; 0x0204F238
	mov r1, #0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0204F238

	thumb_func_start sub_0204F244
sub_0204F244: ; 0x0204F244
	push {r3, r4, r5, lr}
	ldr r1, _0204F260 ; =0x0000FFFF
	add r4, r0, #0
	mov r5, #0
	str r1, [r4]
	str r5, [r4, #8]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	bl sub_0204F238
	str r5, [r4, #0x18]
	str r5, [r4, #0x20]
	str r5, [r4, #0x24]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204F260: .word 0x0000FFFF
	thumb_func_end sub_0204F244

	thumb_func_start sub_0204F264
sub_0204F264: ; 0x0204F264
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r1, r2, #0
	bl sub_0203C450
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	bls _0204F30E
	ldr r0, [sp, #0x10]
	lsl r4, r0, #3
_0204F284:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r3, r0, r1
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _0204F29E
	cmp r0, #1
	beq _0204F2C2
	cmp r0, #2
	beq _0204F2F2
	b _0204F306
_0204F29E:
	ldrb r0, [r3, #6]
	ldr r1, [r3]
	ldrb r2, [r3, #4]
	str r0, [sp]
	ldrb r0, [r3, #7]
	ldrb r3, [r3, #5]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_0204E5CC
	ldr r2, [r5, #0xc]
	lsl r1, r6, #3
	add r2, r4, r2
	strh r0, [r1, r2]
	ldr r0, [r5, #0xc]
	add r0, r4, r0
	add r1, r1, r0
	b _0204F2EE
_0204F2C2:
	ldrb r0, [r3, #6]
	ldr r1, [r3]
	ldrb r2, [r3, #4]
	str r0, [sp]
	ldrb r0, [r3, #7]
	ldrb r3, [r3, #5]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_0204E5CC
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_0204E6E4
	ldr r1, [r5, #0xc]
	lsl r0, r6, #3
	add r1, r4, r1
	strh r7, [r0, r1]
	ldr r1, [r5, #0xc]
	add r1, r4, r1
	add r1, r0, r1
_0204F2EE:
	mov r0, #0
	b _0204F304
_0204F2F2:
	ldr r0, [r5, #0xc]
	lsl r1, r6, #3
	add r2, r4, r0
	ldr r0, _0204F318 ; =0x0000FFFF
	strh r0, [r1, r2]
	ldr r2, [r5, #0xc]
	ldr r0, [r3]
	add r2, r4, r2
	add r1, r1, r2
_0204F304:
	str r0, [r1, #4]
_0204F306:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blo _0204F284
_0204F30E:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0204F318: .word 0x0000FFFF
	thumb_func_end sub_0204F264

	thumb_func_start sub_0204F31C
sub_0204F31C: ; 0x0204F31C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl sub_0203C450
	lsl r2, r0, #3
	ldr r1, [r5, #0xc]
	lsl r0, r0, #0x10
	strh r4, [r1, r2]
	ldr r1, [r5, #0xc]
	lsr r0, r0, #0x10
	add r1, r1, r2
	str r6, [r1, #4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0204F31C

	thumb_func_start sub_0204F340
sub_0204F340: ; 0x0204F340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r4, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r0, r2, #0
	beq _0204F38E
	ldr r0, [sp]
	lsl r7, r0, #3
_0204F354:
	ldr r0, [r5, #0xc]
	lsl r6, r4, #3
	add r0, r7, r0
	ldrh r1, [r6, r0]
	ldr r0, _0204F39C ; =0x0000FFFF
	cmp r1, r0
	beq _0204F368
	ldr r0, [r5, #4]
	bl sub_0204E70C
_0204F368:
	ldr r0, [r5, #0xc]
	add r0, r7, r0
	add r0, r6, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0204F378
	bl sub_02049404
_0204F378:
	ldr r0, [sp]
	ldr r1, [r5, #0xc]
	add r0, r0, r4
	lsl r0, r0, #3
	add r0, r1, r0
	bl sub_0204F228
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _0204F354
_0204F38E:
	ldr r0, [r5, #0x14]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl sub_0203C82C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204F39C: .word 0x0000FFFF
	thumb_func_end sub_0204F340

	thumb_func_start sub_0204F3A0
sub_0204F3A0: ; 0x0204F3A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	lsl r0, r4, #3
	add r0, r1, r0
	bl sub_0204F228
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	mov r2, #1
	bl sub_0203C82C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204F3A0

	thumb_func_start sub_0204F3BC
sub_0204F3BC: ; 0x0204F3BC
	ldr r2, [r0, #0xc]
	lsl r0, r1, #3
	ldrh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0204F3BC

	thumb_func_start sub_0204F3C4
sub_0204F3C4: ; 0x0204F3C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x10]
	str r0, [sp, #0x48]
	ldr r0, [r7, #0x20]
	add r1, r3, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl sub_0203C450
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x1c]
	cmp r0, r1
	bne _0204F3EC
	add sp, #0x30
	lsr r0, r1, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0204F3EC:
	ldr r0, [sp, #0x18]
	mov r6, #0
	cmp r0, #0
	bls _0204F474
	lsr r0, r1, #0x12
	str r0, [sp, #0x2c]
_0204F3F8:
	ldr r0, [r7, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r0, r6
	mov r0, #0x28
	mul r0, r1
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r5, r1, r0
	mov r0, #0x24
	mul r0, r6
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x28]
	add r4, r1, r0
	add r0, r5, #0
	bl sub_0204F244
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	mov r3, #4
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x10]
	ldrsh r3, [r4, r3]
	add r0, r0, r1
	strh r0, [r5, #4]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0xc]
	ldrh r2, [r5, #4]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #4]
	lsl r2, r2, #3
	ldrh r1, [r1, r2]
	mov r2, #2
	ldrsh r2, [r4, r2]
	bl sub_0204E8CC
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r2, r0]
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x20]
	add r4, #8
	str r0, [r5, #0x24]
	ldr r0, [r7, #4]
	add r2, r4, #0
	bl sub_0204EAC8
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	strh r0, [r5, #0x1c]
	ldr r0, [sp, #0x18]
	cmp r6, r0
	blo _0204F3F8
_0204F474:
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204F3C4

	thumb_func_start sub_0204F480
sub_0204F480: ; 0x0204F480
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r4, _0204F4C8 ; =0x00000000
	beq _0204F4BA
	mov r0, #0x28
	mul r0, r6
	str r0, [sp]
_0204F492:
	mov r1, #0x28
	add r2, r4, #0
	mul r2, r1
	ldr r3, [r5, #0x18]
	ldr r1, [sp]
	ldr r0, [r5, #4]
	add r1, r1, r3
	ldr r1, [r2, r1]
	bl sub_0204E9D0
	ldr r0, [r5, #0x18]
	add r2, r6, r4
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	bl sub_0204F244
	add r4, r4, #1
	cmp r4, r7
	blo _0204F492
_0204F4BA:
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0203C82C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204F4C8: .word 0x00000000
	thumb_func_end sub_0204F480

	thumb_func_start sub_0204F4CC
sub_0204F4CC: ; 0x0204F4CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x1c]
	mov r4, #0
	cmp r0, #0
	ble _0204F506
	ldr r7, _0204F508 ; =0x0000FFFF
_0204F4DA:
	mov r0, #0x28
	ldr r1, [r5, #0x18]
	mul r0, r4
	add r6, r1, r0
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _0204F4FE
	ldr r3, [r6, #0x20]
	cmp r3, #0
	beq _0204F4F6
	ldr r2, [r6, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	blx r3
_0204F4F6:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0204F50C
_0204F4FE:
	ldrh r0, [r5, #0x1c]
	add r4, r4, #1
	cmp r4, r0
	blt _0204F4DA
_0204F506:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204F508: .word 0x0000FFFF
	thumb_func_end sub_0204F4CC

	thumb_func_start sub_0204F50C
sub_0204F50C: ; 0x0204F50C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #8]
	add r6, r0, #0
	cmp r1, #0
	beq _0204F5DC
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0204F5DC
	ldrh r0, [r5, #0x12]
	cmp r0, #0
	beq _0204F52E
	sub r0, r0, #1
	add sp, #0xc
	strh r0, [r5, #0x12]
	pop {r4, r5, r6, r7, pc}
_0204F52E:
	ldrh r0, [r5, #0xe]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldrh r0, [r5, #0x10]
	lsl r0, r0, #2
	add r4, r1, r0
	add r0, r4, #0
	bl sub_0204F78C
	cmp r0, #0
	beq _0204F568
_0204F544:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0204F7A4
	cmp r0, #0
	bne _0204F5DC
	ldrh r0, [r5, #0xe]
	ldr r1, [r5, #8]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldrh r0, [r5, #0x10]
	lsl r0, r0, #2
	add r4, r1, r0
	add r0, r4, #0
	bl sub_0204F78C
	cmp r0, #0
	bne _0204F544
_0204F568:
	ldrh r0, [r5, #0x10]
	add r2, sp, #0
	add r0, r0, #1
	strh r0, [r5, #0x10]
	ldrh r0, [r4]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	strh r0, [r2]
	ldrh r0, [r5, #4]
	ldrh r7, [r4, #2]
	lsl r1, r0, #3
	ldr r0, [r6, #0xc]
	add r1, r0, r1
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0204F592
	ldrh r2, [r2]
	add r0, r6, #0
	bl sub_0204F5E0
	b _0204F59C
_0204F592:
	ldr r0, [r6, #4]
	ldr r1, [r5]
	add r2, sp, #0
	bl sub_0204EA4C
_0204F59C:
	ldrh r0, [r4]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	beq _0204F5A8
	mov r0, #1
	b _0204F5AA
_0204F5A8:
	mov r0, #0
_0204F5AA:
	str r0, [sp, #8]
	ldrh r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _0204F5B8
	mov r0, #1
	b _0204F5BA
_0204F5B8:
	mov r0, #0
_0204F5BA:
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	ldr r1, [r5]
	add r2, sp, #8
	bl sub_0204EB58
	ldr r0, [r6, #4]
	ldr r1, [r5]
	add r2, sp, #4
	bl sub_0204EB7C
	cmp r7, #0
	beq _0204F5DA
	sub r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_0204F5DA:
	strh r7, [r5, #0x12]
_0204F5DC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0204F50C

	thumb_func_start sub_0204F5E0
sub_0204F5E0: ; 0x0204F5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r7, r2, #0
	bl sub_02049714
	add r6, r0, #0
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	add r2, sp, #0x10
	bl sub_0204E7D8
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	add r2, r7, #0
	add r3, sp, #0xc
	bl sub_0204E830
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0204F622
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #8]
	mov r0, #0
	add r2, r6, r2
	blx r4
_0204F622:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0204F5E0

	thumb_func_start sub_0204F628
sub_0204F628: ; 0x0204F628
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_02049720
	add r6, r0, #0
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	add r2, sp, #0
	bl sub_0204E7E8
	ldr r4, [r5, #8]
	cmp r4, #0
	beq _0204F652
	ldr r1, [sp]
	mov r0, #1
	add r2, r6, #0
	mov r3, #0x20
	blx r4
_0204F652:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0204F628

	thumb_func_start sub_0204F658
sub_0204F658: ; 0x0204F658
	ldr r0, [r0, #4]
	ldr r3, _0204F660 ; =sub_0204EBB0
	bx r3
	nop
_0204F660: .word sub_0204EBB0
	thumb_func_end sub_0204F658

	thumb_func_start sub_0204F664
sub_0204F664: ; 0x0204F664
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #4]
	ldr r3, [r2, #0x18]
	mov r2, #0x28
	mul r2, r1
	ldr r1, [r3, r2]
	add r2, sp, #0x10
	bl sub_0204EAC8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end sub_0204F664

	thumb_func_start sub_0204F684
sub_0204F684: ; 0x0204F684
	add r2, r0, #0
	ldr r0, [r2, #4]
	ldr r3, [r2, #0x18]
	mov r2, #0x28
	mul r2, r1
	ldr r1, [r3, r2]
	ldr r3, _0204F694 ; =sub_0204EAB8
	bx r3
	.align 2, 0
_0204F694: .word sub_0204EAB8
	thumb_func_end sub_0204F684

	thumb_func_start sub_0204F698
sub_0204F698: ; 0x0204F698
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	lsl r4, r3
	cmp r2, #0
	ldr r0, [r5, #4]
	beq _0204F6B6
	mov r2, #0x28
	ldr r3, [r5, #0x18]
	mul r2, r1
	ldr r1, [r3, r2]
	add r2, r4, #0
	bl sub_0204EAF8
	pop {r3, r4, r5, pc}
_0204F6B6:
	mov r2, #0x28
	ldr r3, [r5, #0x18]
	mul r2, r1
	ldr r1, [r3, r2]
	add r2, r4, #0
	bl sub_0204EB20
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204F698

	thumb_func_start sub_0204F6C8
sub_0204F6C8: ; 0x0204F6C8
	ldr r3, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	str r2, [r0, #0x18]
	bx lr
	thumb_func_end sub_0204F6C8

	thumb_func_start sub_0204F6D4
sub_0204F6D4: ; 0x0204F6D4
	push {r4, lr}
	ldr r4, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r4, r0
	str r2, [r0, #8]
	strh r3, [r0, #0xc]
	mov r1, #0
	strh r1, [r0, #0xe]
	bl sub_0204F238
	pop {r4, pc}
	thumb_func_end sub_0204F6D4

	thumb_func_start sub_0204F6EC
sub_0204F6EC: ; 0x0204F6EC
	ldr r3, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	ldr r3, _0204F6FC ; =sub_0204F238
	strh r2, [r0, #0xe]
	bx r3
	nop
_0204F6FC: .word sub_0204F238
	thumb_func_end sub_0204F6EC

	thumb_func_start sub_0204F700
sub_0204F700: ; 0x0204F700
	ldr r2, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_0204F700

	thumb_func_start sub_0204F70C
sub_0204F70C: ; 0x0204F70C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r5, r2, r0
	add r0, r5, #0
	bl sub_0204F238
	strh r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204F70C

	thumb_func_start sub_0204F724
sub_0204F724: ; 0x0204F724
	ldr r2, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0204F724

	thumb_func_start sub_0204F730
sub_0204F730: ; 0x0204F730
	push {r3, r4, r5, lr}
	mov r4, #0x28
	ldr r5, [r0, #0x18]
	mul r4, r1
	add r1, r5, r4
	ldrh r1, [r1, #4]
	ldr r3, [r0, #0xc]
	lsl r2, r2, #3
	add r2, r3, r2
	lsl r1, r1, #3
	ldr r2, [r2, #4]
	add r1, r3, r1
	str r2, [r1, #4]
	bl sub_0204F628
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0204F730

	thumb_func_start sub_0204F750
sub_0204F750: ; 0x0204F750
	ldr r2, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	ldr r0, [r2, r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0204F750

	thumb_func_start sub_0204F75C
sub_0204F75C: ; 0x0204F75C
	ldr r2, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_0204F75C

	thumb_func_start sub_0204F768
sub_0204F768: ; 0x0204F768
	ldr r3, [r0, #0x18]
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	ldrh r1, [r0, #0x1c]
	ldr r0, _0204F788 ; =0x0000C004
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r1, [r2]
	cmp r0, #3
	bhi _0204F784
	mov r0, #1
	bx lr
_0204F784:
	mov r0, #0
	bx lr
	.align 2, 0
_0204F788: .word 0x0000C004
	thumb_func_end sub_0204F768

	thumb_func_start sub_0204F78C
sub_0204F78C: ; 0x0204F78C
	push {r3, lr}
	ldrh r0, [r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bl sub_0204F7C8
	cmp r0, #0
	beq _0204F7A0
	mov r0, #1
	pop {r3, pc}
_0204F7A0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0204F78C

	thumb_func_start sub_0204F7A4
sub_0204F7A4: ; 0x0204F7A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	bl sub_0204F7C8
	add r2, r0, #0
	ldrh r0, [r4]
	add r1, r4, #0
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	strh r0, [r5, #0x1c]
	add r0, r5, #0
	blx r2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0204F7A4

	thumb_func_start sub_0204F7C8
sub_0204F7C8: ; 0x0204F7C8
	ldr r1, _0204F7F8 ; =0x00003FFC
	sub r0, r0, r1
	cmp r0, #3
	bhi _0204F7F4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0204F7DC: ; jump table
	.short _0204F7F0 - _0204F7DC - 2 ; case 0
	.short _0204F7EC - _0204F7DC - 2 ; case 1
	.short _0204F7E8 - _0204F7DC - 2 ; case 2
	.short _0204F7E4 - _0204F7DC - 2 ; case 3
_0204F7E4:
	ldr r0, _0204F7FC ; =sub_0204F80C
	bx lr
_0204F7E8:
	ldr r0, _0204F800 ; =sub_0204F810
	bx lr
_0204F7EC:
	ldr r0, _0204F804 ; =sub_0204F820
	bx lr
_0204F7F0:
	ldr r0, _0204F808 ; =sub_0204F858
	bx lr
_0204F7F4:
	mov r0, #0
	bx lr
	.align 2, 0
_0204F7F8: .word 0x00003FFC
_0204F7FC: .word sub_0204F80C
_0204F800: .word sub_0204F810
_0204F804: .word sub_0204F820
_0204F808: .word sub_0204F858
	thumb_func_end sub_0204F7C8

	thumb_func_start sub_0204F80C
sub_0204F80C: ; 0x0204F80C
	mov r0, #1
	bx lr
	thumb_func_end sub_0204F80C

	thumb_func_start sub_0204F810
sub_0204F810: ; 0x0204F810
	push {r3, lr}
	ldrh r1, [r1, #2]
	strh r1, [r0, #0xe]
	bl sub_0204F238
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0204F810

	thumb_func_start sub_0204F820
sub_0204F820: ; 0x0204F820
	push {r3, r4}
	ldrh r4, [r1, #2]
	ldrh r2, [r0, #0x14]
	lsl r1, r4, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r4
	asr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r2, r1
	bge _0204F846
	mov r1, #0
	strh r1, [r0, #0x12]
	add r1, r2, #1
	strh r3, [r0, #0x10]
	strh r1, [r0, #0x14]
	b _0204F852
_0204F846:
	mov r1, #0
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x12]
	ldrh r1, [r0, #0x10]
	add r1, r1, #1
	strh r1, [r0, #0x10]
_0204F852:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0204F820

	thumb_func_start sub_0204F858
sub_0204F858: ; 0x0204F858
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x10]
	mov r1, #0
	strh r1, [r0, #0x12]
	mov r0, #0
	bx lr
	thumb_func_end sub_0204F858

	thumb_func_start sub_0204F864
sub_0204F864: ; 0x0204F864
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0204F8C4 ; =0x0214194C
	ldr r0, [r6]
	cmp r0, #0
	beq _0204F8C2
	mov r0, #4
	mov r4, #0
	mov r7, #1
	str r0, [sp]
_0204F876:
	ldr r0, [r6]
	lsl r5, r4, #4
	add r0, r0, r5
	ldr r1, [r0, #0xc]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	beq _0204F8A4
	bic r1, r7
	str r1, [r0, #0xc]
	ldr r0, [r6]
	add r0, r0, r5
	ldr r0, [r0, #8]
	lsr r0, r0, #0xb
	beq _0204F8A4
	add r0, r4, #0
	bl sub_0204F8C8
	ldr r0, [r6]
	mov r1, #2
	add r0, r0, r5
	ldr r2, [r0, #0xc]
	orr r1, r2
	str r1, [r0, #0xc]
_0204F8A4:
	ldr r0, [r6]
	add r0, r0, r5
	ldr r2, [r0, #0xc]
	lsl r1, r2, #0x1d
	lsr r1, r1, #0x1f
	beq _0204F8BC
	ldr r1, [sp]
	bic r2, r1
	str r2, [r0, #0xc]
	add r0, r4, #0
	bl sub_0204F8C8
_0204F8BC:
	add r4, r4, #1
	cmp r4, #4
	blt _0204F876
_0204F8C2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204F8C4: .word 0x0214194C
	thumb_func_end sub_0204F864

	thumb_func_start sub_0204F8C8
sub_0204F8C8: ; 0x0204F8C8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	blx sub_0207C0E4
	ldr r1, _0204F910 ; =0x0214194C
	ldr r2, [r1]
	lsl r1, r4, #4
	add r1, r2, r1
	ldr r5, [r1, #8]
	lsl r1, r5, #0x15
	lsr r1, r1, #0x1e
	lsl r3, r1, #0x15
	lsl r1, r5, #0x17
	lsr r1, r1, #0x1e
	lsl r2, r1, #0x17
	lsl r1, r5, #0x1e
	lsr r6, r5, #0xb
	lsl r5, r5, #0x1a
	lsr r1, r1, #0x1f
	lsr r5, r5, #0x1f
	lsl r1, r1, #0x1e
	lsl r5, r5, #0x1a
	orr r1, r5
	orr r1, r2
	orr r1, r3
	add r3, r6, #0
	orr r3, r1
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, _0204F914 ; =0x040000B8
	str r3, [r2, r1]
	blx sub_0207C0F8
	pop {r4, r5, r6, pc}
	nop
_0204F910: .word 0x0214194C
_0204F914: .word 0x040000B8
	thumb_func_end sub_0204F8C8

	thumb_func_start sub_0204F918
sub_0204F918: ; 0x0204F918
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xbe
	str r1, [sp]
	ldr r3, _0204F94C ; =0x0209B028
	mov r1, #0x48
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	ldr r1, _0204F950 ; =0x02141950
	add r3, r4, #0
	str r0, [r1]
_0204F932:
	ldr r2, [r1]
	lsl r0, r4, #2
	add r4, r4, #1
	str r3, [r2, r0]
	cmp r4, #0x10
	blt _0204F932
	ldr r0, _0204F950 ; =0x02141950
	ldr r1, [r0]
	str r3, [r1, #0x40]
	ldr r0, [r0]
	str r3, [r0, #0x44]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0204F94C: .word 0x0209B028
_0204F950: .word 0x02141950
	thumb_func_end sub_0204F918

	thumb_func_start sub_0204F954
sub_0204F954: ; 0x0204F954
	push {r3, lr}
	bl sub_0204FFFC
	cmp r0, #0
	beq _0204F966
	bl sub_0205001C
	bl sub_02050044
_0204F966:
	pop {r3, pc}
	thumb_func_end sub_0204F954

	thumb_func_start sub_0204F968
sub_0204F968: ; 0x0204F968
	push {r3, r4, lr}
	sub sp, #0xc
	mov r4, #6
	str r4, [sp]
	mov r4, #0x3f
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r3, #5
	bl sub_0204F980
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_0204F968

	thumb_func_start sub_0204F980
sub_0204F980: ; 0x0204F980
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, _0204FA68 ; =0x02141950
	add r7, r1, #0
	ldr r1, [r0]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r5, #0
_0204F992:
	lsl r0, r5, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0204F9A0
	add r5, r5, #1
	cmp r5, #0x10
	blt _0204F992
_0204F9A0:
	cmp r5, #0x10
	blt _0204F9AA
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0204F9AA:
	ldr r0, _0204FA6C ; =0x0000011D
	mov r1, #0x26
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r3, _0204FA70 ; =0x0209B028
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #4
	mov r2, #0
	bl sub_0203A1FC
	mov r2, #0x26
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	blx sub_020787A8
	ldr r3, _0204FA74 ; =0x02094050
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _0204FA78 ; =0x02094044
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _0204FA7C ; =0x02094038
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x4c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r1, [r4, #0x32]
	mov r0, #1
	add r2, r7, #0
	bic r1, r0
	strh r1, [r4, #0x32]
	add r0, r6, #0
	mov r1, #0
	blx sub_020787A8
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r6, r7
	str r0, [r4, #0x14]
	mov r0, #0x26
	lsl r0, r0, #4
	sub r0, r0, #6
	strb r5, [r4, r0]
	ldr r0, _0204FA68 ; =0x02141950
	lsl r5, r5, #2
	ldr r0, [r0]
	str r4, [r0, r5]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0204FA3E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_020500CC
_0204FA3E:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsl r3, r3, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0204FA80 ; =0x02094068
	mov r1, #0x18
	ldr r0, [r0, r5]
	mov r2, #0xc8
	lsr r3, r3, #0x10
	blx sub_02051340
	str r0, [r4]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0204FA68: .word 0x02141950
_0204FA6C: .word 0x0000011D
_0204FA70: .word 0x0209B028
_0204FA74: .word 0x02094050
_0204FA78: .word 0x02094044
_0204FA7C: .word 0x02094038
_0204FA80: .word 0x02094068
	thumb_func_end sub_0204F980

	thumb_func_start sub_0204FA84
sub_0204FA84: ; 0x0204FA84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_020500B0
	mov r0, #0x96
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _0204FAA2
	add r0, r5, #0
	add r0, #0x58
	bl sub_0205F610
	b _0204FAC2
_0204FAA2:
	mov r0, #2
	tst r0, r1
	beq _0204FAC2
	mov r4, #0
	add r7, r4, #0
_0204FAAC:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x58]
	cmp r0, #0
	beq _0204FABC
	bl sub_0205FD74
	str r7, [r6, #0x58]
_0204FABC:
	add r4, r4, #1
	cmp r4, #0x40
	blt _0204FAAC
_0204FAC2:
	mov r0, #0x96
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r0, #4
	tst r0, r1
	beq _0204FADA
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0205F718
	b _0204FAFE
_0204FADA:
	mov r0, #8
	tst r0, r1
	beq _0204FAFE
	mov r7, #0x56
	mov r4, #0
	lsl r7, r7, #2
_0204FAE6:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _0204FAF8
	bl sub_0205FFB8
	mov r0, #0
	str r0, [r6, r7]
_0204FAF8:
	add r4, r4, #1
	cmp r4, #0x40
	blt _0204FAE6
_0204FAFE:
	mov r0, #0x96
	mov r4, #0
	lsl r0, r0, #2
	strb r4, [r5, r0]
	ldr r0, [r5, #4]
	str r4, [r5, #8]
	cmp r0, #0
	beq _0204FB1C
	ldrh r1, [r5, #0x32]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _0204FB1C
	bl sub_0203A24C
	str r4, [r5, #4]
_0204FB1C:
	ldr r0, _0204FB48 ; =0x02141950
	mov r2, #0
	ldr r3, [r0]
_0204FB22:
	lsl r1, r2, #2
	ldr r0, [r3, r1]
	cmp r0, r5
	bne _0204FB30
	mov r0, #0
	str r0, [r3, r1]
	b _0204FB36
_0204FB30:
	add r2, r2, #1
	cmp r2, #0x10
	blt _0204FB22
_0204FB36:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0204FB40
	bl sub_0204A630
_0204FB40:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0204FB48: .word 0x02141950
	thumb_func_end sub_0204FA84

	thumb_func_start sub_0204FB4C
sub_0204FB4C: ; 0x0204FB4C
	push {r3, r4, r5, lr}
	ldr r5, _0204FB74 ; =0x02141950
	mov r4, #0
_0204FB52:
	ldr r1, [r5]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0204FB60
	bl sub_0204FA84
_0204FB60:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0204FB52
	ldr r4, _0204FB74 ; =0x02141950
	ldr r0, [r4]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0204FB74: .word 0x02141950
	thumb_func_end sub_0204FB4C

	thumb_func_start sub_0204FB78
sub_0204FB78: ; 0x0204FB78
	push {r3, r4}
	ldr r1, _0204FB9C ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FB92
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FB92:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FB9C: .word 0x02141950
	thumb_func_end sub_0204FB78

	thumb_func_start sub_0204FBA0
sub_0204FBA0: ; 0x0204FBA0
	push {r3, r4}
	ldr r1, _0204FBC4 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #4]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FBBA
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FBBA:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FBC4: .word 0x02141950
	thumb_func_end sub_0204FBA0

	thumb_func_start sub_0204FBC8
sub_0204FBC8: ; 0x0204FBC8
	push {r3, r4}
	ldr r1, _0204FBEC ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #8]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FBE2
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FBE2:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FBEC: .word 0x02141950
	thumb_func_end sub_0204FBC8

	thumb_func_start sub_0204FBF0
sub_0204FBF0: ; 0x0204FBF0
	push {r3, r4}
	ldr r1, _0204FC14 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0xc]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FC0A
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FC0A:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FC14: .word 0x02141950
	thumb_func_end sub_0204FBF0

	thumb_func_start sub_0204FC18
sub_0204FC18: ; 0x0204FC18
	push {r3, r4}
	ldr r1, _0204FC3C ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x10]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FC32
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FC32:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FC3C: .word 0x02141950
	thumb_func_end sub_0204FC18

	thumb_func_start sub_0204FC40
sub_0204FC40: ; 0x0204FC40
	push {r3, r4}
	ldr r1, _0204FC64 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x14]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FC5A
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FC5A:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FC64: .word 0x02141950
	thumb_func_end sub_0204FC40

	thumb_func_start sub_0204FC68
sub_0204FC68: ; 0x0204FC68
	push {r3, r4}
	ldr r1, _0204FC8C ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x18]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FC82
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FC82:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FC8C: .word 0x02141950
	thumb_func_end sub_0204FC68

	thumb_func_start sub_0204FC90
sub_0204FC90: ; 0x0204FC90
	push {r3, r4}
	ldr r1, _0204FCB4 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x1c]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FCAA
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FCAA:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FCB4: .word 0x02141950
	thumb_func_end sub_0204FC90

	thumb_func_start sub_0204FCB8
sub_0204FCB8: ; 0x0204FCB8
	push {r3, r4}
	ldr r1, _0204FCDC ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x20]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FCD2
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FCD2:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FCDC: .word 0x02141950
	thumb_func_end sub_0204FCB8

	thumb_func_start sub_0204FCE0
sub_0204FCE0: ; 0x0204FCE0
	push {r3, r4}
	ldr r1, _0204FD04 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x24]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FCFA
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FCFA:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FD04: .word 0x02141950
	thumb_func_end sub_0204FCE0

	thumb_func_start sub_0204FD08
sub_0204FD08: ; 0x0204FD08
	push {r3, r4}
	ldr r1, _0204FD2C ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x28]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FD22
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FD22:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FD2C: .word 0x02141950
	thumb_func_end sub_0204FD08

	thumb_func_start sub_0204FD30
sub_0204FD30: ; 0x0204FD30
	push {r3, r4}
	ldr r1, _0204FD54 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x2c]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FD4A
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FD4A:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FD54: .word 0x02141950
	thumb_func_end sub_0204FD30

	thumb_func_start sub_0204FD58
sub_0204FD58: ; 0x0204FD58
	push {r3, r4}
	ldr r1, _0204FD7C ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x30]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FD72
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FD72:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FD7C: .word 0x02141950
	thumb_func_end sub_0204FD58

	thumb_func_start sub_0204FD80
sub_0204FD80: ; 0x0204FD80
	push {r3, r4}
	ldr r1, _0204FDA4 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x34]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FD9A
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FD9A:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FDA4: .word 0x02141950
	thumb_func_end sub_0204FD80

	thumb_func_start sub_0204FDA8
sub_0204FDA8: ; 0x0204FDA8
	push {r3, r4}
	ldr r1, _0204FDCC ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x38]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FDC2
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FDC2:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FDCC: .word 0x02141950
	thumb_func_end sub_0204FDA8

	thumb_func_start sub_0204FDD0
sub_0204FDD0: ; 0x0204FDD0
	push {r3, r4}
	ldr r1, _0204FDF4 ; =0x02141950
	ldr r1, [r1]
	ldr r2, [r1, #0x3c]
	ldr r4, [r2, #0x10]
	add r3, r4, r0
	mov r0, #3
	add r1, r3, #0
	and r1, r0
	beq _0204FDEA
	mov r0, #4
	sub r0, r0, r1
	add r3, r3, r0
_0204FDEA:
	str r3, [r2, #0x10]
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	nop
_0204FDF4: .word 0x02141950
	thumb_func_end sub_0204FDD0

	thumb_func_start sub_0204FDF8
sub_0204FDF8: ; 0x0204FDF8
	lsl r2, r2, #0x10
	ldr r3, _0204FE00 ; =sub_0204A934
	lsr r2, r2, #0x10
	bx r3
	.align 2, 0
_0204FE00: .word sub_0204A934
	thumb_func_end sub_0204FDF8

	thumb_func_start sub_0204FE04
sub_0204FE04: ; 0x0204FE04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02049228
	mov r4, #1
	cmp r0, #1
	beq _0204FE1A
	mov r4, #2
_0204FE1A:
	bl sub_02049238
	cmp r0, #1
	bne _0204FE26
	mov r0, #4
	b _0204FE28
_0204FE26:
	mov r0, #8
_0204FE28:
	orr r4, r0
	mov r0, #0x96
	lsl r0, r0, #2
	strb r4, [r5, r0]
	mov r0, #1
	tst r0, r4
	beq _0204FE44
	add r0, r5, #0
	add r0, #0x58
	bl sub_0205F5E8
	ldr r0, _0204FEC8 ; =sub_0205036C
	str r0, [r5, #0x18]
	b _0204FE64
_0204FE44:
	mov r0, #2
	tst r0, r4
	beq _0204FE64
	mov r1, #0
	add r0, r1, #0
_0204FE4E:
	lsl r2, r1, #2
	add r2, r5, r2
	add r1, r1, #1
	str r0, [r2, #0x58]
	cmp r1, #0x40
	blt _0204FE4E
	ldr r1, _0204FECC ; =sub_0205037C
	str r1, [r5, #0x18]
	mov r1, #0x97
	lsl r1, r1, #2
	strh r0, [r5, r1]
_0204FE64:
	mov r0, #4
	tst r0, r4
	beq _0204FE7A
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0205F708
	ldr r0, _0204FED0 ; =sub_020503AC
	str r0, [r5, #0x1c]
	b _0204FE9C
_0204FE7A:
	mov r0, #8
	tst r0, r4
	beq _0204FE9C
	mov r1, #0
	mov r2, #0x56
	add r0, r1, #0
	lsl r2, r2, #2
_0204FE88:
	lsl r3, r1, #2
	add r3, r5, r3
	add r1, r1, #1
	str r0, [r3, r2]
	cmp r1, #0x40
	blt _0204FE88
	ldr r1, _0204FED4 ; =sub_020503BC
	str r1, [r5, #0x1c]
	ldr r1, _0204FED8 ; =0x0000025E
	strh r0, [r5, r1]
_0204FE9C:
	ldr r0, [sp]
	ldr r1, [sp]
	str r0, [r5, #4]
	ldr r0, [r5]
	blx sub_02050FC8
	cmp r7, #1
	bne _0204FEB4
	add r0, r5, #0
	bl sub_0204FF04
	pop {r3, r4, r5, r6, r7, pc}
_0204FEB4:
	cmp r6, #0
	beq _0204FEC4
	ldr r1, _0204FEDC ; =sub_0204FF40
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_0203A614
_0204FEC4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204FEC8: .word sub_0205036C
_0204FECC: .word sub_0205037C
_0204FED0: .word sub_020503AC
_0204FED4: .word sub_020503BC
_0204FED8: .word 0x0000025E
_0204FEDC: .word sub_0204FF40
	thumb_func_end sub_0204FE04

	thumb_func_start sub_0204FEE0
sub_0204FEE0: ; 0x0204FEE0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204FE04
	ldrh r1, [r4, #0x32]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4, #0x32]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204FEE0

	thumb_func_start sub_0204FEF8
sub_0204FEF8: ; 0x0204FEF8
	push {r3, lr}
	mov r2, #0
	mov r3, #0
	bl sub_0204FE04
	pop {r3, pc}
	thumb_func_end sub_0204FEF8

	thumb_func_start sub_0204FF04
sub_0204FF04: ; 0x0204FF04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0204FF3C ; =0x02141950
	ldr r0, [r0]
	str r4, [r0, #0x44]
	ldr r1, [r4, #0x18]
	ldr r0, [r4]
	cmp r1, #0
	bne _0204FF1C
	blx sub_02050E34
	b _0204FF20
_0204FF1C:
	blx sub_02050EFC
_0204FF20:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4]
	cmp r1, #0
	bne _0204FF2E
	blx sub_02050E20
	b _0204FF32
_0204FF2E:
	blx sub_02050E48
_0204FF32:
	ldr r0, _0204FF3C ; =0x02141950
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x44]
	pop {r4, pc}
	.align 2, 0
_0204FF3C: .word 0x02141950
	thumb_func_end sub_0204FF04

	thumb_func_start sub_0204FF40
sub_0204FF40: ; 0x0204FF40
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0204FF04
	add r0, r4, #0
	bl sub_0203A6A8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0204FF40

	thumb_func_start sub_0204FF54
sub_0204FF54: ; 0x0204FF54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0204FFB8
	add r0, sp, #0x60
	bl sub_02048F84
	add r0, sp, #0x3c
	bl sub_0204914C
	ldr r3, _0204FFE0 ; =0x0209405C
	add r2, sp, #0x30
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, sp, #0
	str r0, [r2]
	mov r0, #0
	add r7, sp, #0xc
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	add r0, r7, #0
	blx MTX_Identity33_
	add r0, r6, #0
	bl sub_020658A4
	ldr r1, _0204FFE4 ; =0x02143AC8
	add r0, r7, #0
	blx sub_0207873C
	ldr r1, _0204FFE8 ; =0x02143A8C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	add r0, r4, #0
	bl sub_020658C8
	ldr r0, [r5, #0x20]
	bl sub_0204A638
	bl sub_02049AF0
	bl sub_02067B9C
_0204FFB8:
	ldr r0, [r5]
	ldr r1, _0204FFEC ; =0x02143A58
	blx sub_02050C20
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _0204FFDA
	add r0, sp, #0x60
	bl sub_02048FBC
	add r0, sp, #0x3c
	bl sub_02049188
	bl sub_02049AF0
	bl sub_02067B9C
_0204FFDA:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0204FFE0: .word 0x0209405C
_0204FFE4: .word 0x02143AC8
_0204FFE8: .word 0x02143A8C
_0204FFEC: .word 0x02143A58
	thumb_func_end sub_0204FF54

	thumb_func_start sub_0204FFF0
sub_0204FFF0: ; 0x0204FFF0
	ldr r0, [r0]
	ldr r3, _0204FFF8 ; =sub_02050CE8
	bx r3
	nop
_0204FFF8: .word sub_02050CE8
	thumb_func_end sub_0204FFF0

	thumb_func_start sub_0204FFFC
sub_0204FFFC: ; 0x0204FFFC
	ldr r1, _02050018 ; =0x02141950
	mov r0, #0
	ldr r3, [r1]
	mov r2, #0
_02050004:
	lsl r1, r2, #2
	ldr r1, [r3, r1]
	cmp r1, #0
	beq _0205000E
	add r0, r0, #1
_0205000E:
	add r2, r2, #1
	cmp r2, #0x10
	blt _02050004
	bx lr
	nop
_02050018: .word 0x02141950
	thumb_func_end sub_0204FFFC

	thumb_func_start sub_0205001C
sub_0205001C: ; 0x0205001C
	push {r4, r5, r6, lr}
	ldr r6, _02050040 ; =0x02141950
	mov r5, #0
	mov r4, #0
_02050024:
	ldr r1, [r6]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02050034
	bl sub_0204FF54
	add r5, r5, #1
_02050034:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02050024
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02050040: .word 0x02141950
	thumb_func_end sub_0205001C

	thumb_func_start sub_02050044
sub_02050044: ; 0x02050044
	push {r4, r5, r6, lr}
	ldr r6, _02050068 ; =0x02141950
	mov r5, #0
	mov r4, #0
_0205004C:
	ldr r1, [r6]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0205005C
	bl sub_0204FFF0
	add r5, r5, #1
_0205005C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0205004C
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02050068: .word 0x02141950
	thumb_func_end sub_02050044

	thumb_func_start sub_0205006C
sub_0205006C: ; 0x0205006C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	blx sub_02050BAC
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0205006C

	thumb_func_start sub_0205007C
sub_0205007C: ; 0x0205007C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0x18
	blt _0205008E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0205008E:
	ldr r5, _020500A4 ; =0x02141950
	ldr r0, [r5]
	str r3, [r0, #0x40]
	ldr r0, [r4]
	blx sub_02050B18
	ldr r1, [r5]
	mov r2, #0
	str r2, [r1, #0x40]
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_020500A4: .word 0x02141950
	thumb_func_end sub_0205007C

	thumb_func_start sub_020500A8
sub_020500A8: ; 0x020500A8
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_020500A8

	thumb_func_start sub_020500B0
sub_020500B0: ; 0x020500B0
	ldr r0, [r0]
	ldr r3, _020500B8 ; =sub_02050A40
	bx r3
	nop
_020500B8: .word sub_02050A40
	thumb_func_end sub_020500B0

	thumb_func_start sub_020500BC
sub_020500BC: ; 0x020500BC
	ldr r0, [r0]
	ldr r3, _020500C4 ; =sub_02050A84
	bx r3
	nop
_020500C4: .word sub_02050A84
	thumb_func_end sub_020500BC

	thumb_func_start sub_020500C8
sub_020500C8: ; 0x020500C8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_020500C8

	thumb_func_start sub_020500CC
sub_020500CC: ; 0x020500CC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	ldr r6, [sp, #0x30]
	ldr r1, [sp, #0x34]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	strh r2, [r5, #0x30]
	cmp r3, #0
	bne _020500E8
	ldr r3, _02050164 ; =0x02094050
_020500E8:
	cmp r6, #0
	bne _020500EE
	ldr r6, _02050168 ; =0x02094044
_020500EE:
	cmp r1, #0
	bne _020500F4
	ldr r1, _0205016C ; =0x02094038
_020500F4:
	cmp r4, #0
	beq _0205012E
	ldr r2, [r4]
	ldr r0, _02050170 ; =0x0000025B
	strb r2, [r5, r0]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0x14]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	lsl r0, r0, #0x10
	str r1, [sp, #0x18]
	lsr r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_0204A5C8
	add sp, #0x20
	str r0, [r5, #0x20]
	pop {r4, r5, r6, pc}
_0205012E:
	ldr r2, _02050170 ; =0x0000025B
	mov r0, #0
	strb r0, [r5, r2]
	mov r2, #1
	str r0, [sp]
	lsl r2, r2, #0xc
	str r2, [sp, #4]
	mov r2, #0xe1
	lsl r2, r2, #0xe
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x38]
	ldr r3, _02050174 ; =0x00001555
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x1c]
	mov r1, #0xb5
	lsl r1, r1, #4
	add r2, r1, #0
	bl sub_0204A5C8
	str r0, [r5, #0x20]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_02050164: .word 0x02094050
_02050168: .word 0x02094044
_0205016C: .word 0x02094038
_02050170: .word 0x0000025B
_02050174: .word 0x00001555
	thumb_func_end sub_020500CC

	thumb_func_start sub_02050178
sub_02050178: ; 0x02050178
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0204A630
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	thumb_func_end sub_02050178

	thumb_func_start sub_02050188
sub_02050188: ; 0x02050188
	ldr r0, _02050190 ; =0x02141950
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	bx lr
	.align 2, 0
_02050190: .word 0x02141950
	thumb_func_end sub_02050188

	thumb_func_start sub_02050194
sub_02050194: ; 0x02050194
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_02050194

	thumb_func_start sub_02050198
sub_02050198: ; 0x02050198
	add r2, r0, #0
	add r2, #0x34
	add r3, r1, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_02050198

	thumb_func_start sub_020501A8
sub_020501A8: ; 0x020501A8
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_020501A8

	thumb_func_start sub_020501B8
sub_020501B8: ; 0x020501B8
	add r2, r0, #0
	add r2, #0x50
	ldrh r2, [r2]
	strh r2, [r1]
	add r2, r0, #0
	add r2, #0x52
	ldrh r2, [r2]
	add r0, #0x54
	strh r2, [r1, #2]
	ldrh r0, [r0]
	strh r0, [r1, #4]
	bx lr
	thumb_func_end sub_020501B8

	thumb_func_start sub_020501D0
sub_020501D0: ; 0x020501D0
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_020501D0

	thumb_func_start sub_020501D4
sub_020501D4: ; 0x020501D4
	str r1, [r0, #0x5c]
	bx lr
	thumb_func_end sub_020501D4

	thumb_func_start sub_020501D8
sub_020501D8: ; 0x020501D8
	ldr r0, [r0, #0x60]
	bx lr
	thumb_func_end sub_020501D8

	thumb_func_start sub_020501DC
sub_020501DC: ; 0x020501DC
	str r1, [r0, #0x60]
	bx lr
	thumb_func_end sub_020501DC

	thumb_func_start sub_020501E0
sub_020501E0: ; 0x020501E0
	ldr r0, [r0, #0x64]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bx lr
	thumb_func_end sub_020501E0

	thumb_func_start sub_020501E8
sub_020501E8: ; 0x020501E8
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end sub_020501E8

	thumb_func_start sub_020501EC
sub_020501EC: ; 0x020501EC
	ldr r0, [r0, #0x68]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bx lr
	thumb_func_end sub_020501EC

	thumb_func_start sub_020501F4
sub_020501F4: ; 0x020501F4
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end sub_020501F4

	thumb_func_start sub_020501F8
sub_020501F8: ; 0x020501F8
	ldr r0, [r0, #0x6c]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bx lr
	thumb_func_end sub_020501F8

	thumb_func_start sub_02050200
sub_02050200: ; 0x02050200
	add r0, #0x70
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02050200

	thumb_func_start sub_02050208
sub_02050208: ; 0x02050208
	push {r3, r4}
	ldr r2, [r0, #0x20]
	ldr r4, [r1]
	ldr r3, [r2]
	ldr r3, [r3, #4]
	add r3, r4, r3
	str r3, [r0, #0x28]
	ldr r3, [r2]
	ldr r4, [r1, #4]
	ldr r3, [r3, #8]
	add r3, r4, r3
	str r3, [r0, #0x2c]
	ldr r3, [r1, #8]
	ldr r1, [r2]
	ldr r1, [r1, #0xc]
	add r1, r3, r1
	str r1, [r0, #0x30]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02050208

	thumb_func_start sub_02050230
sub_02050230: ; 0x02050230
	ldrh r3, [r1]
	add r2, r0, #0
	add r2, #0x50
	strh r3, [r2]
	add r2, r0, #0
	ldrh r3, [r1, #2]
	add r2, #0x52
	ldrh r1, [r1, #4]
	add r0, #0x54
	strh r3, [r2]
	strh r1, [r0]
	bx lr
	thumb_func_end sub_02050230

	thumb_func_start sub_02050248
sub_02050248: ; 0x02050248
	str r1, [r0, #0x6c]
	bx lr
	thumb_func_end sub_02050248

	thumb_func_start sub_0205024C
sub_0205024C: ; 0x0205024C
	add r0, #0x70
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205024C

	thumb_func_start sub_02050254
sub_02050254: ; 0x02050254
	push {r4, r5, r6, r7}
	ldr r0, [r0, #0x20]
	add r4, r1, #0
	ldrh r2, [r0, #0x1c]
	cmp r2, #0
	bne _02050266
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02050266:
	mov r1, #0
	cmp r2, #0
	ble _020502F0
	ldr r3, [r0, #0x18]
	ldr r7, _020502F8 ; =sub_02056844
_02050270:
	lsl r0, r1, #3
	add r0, r3, r0
	beq _020502EA
	cmp r4, #5
	bhi _020502E4
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02050286: ; jump table
	.short _02050292 - _02050286 - 2 ; case 0
	.short _0205029E - _02050286 - 2 ; case 1
	.short _020502AC - _02050286 - 2 ; case 2
	.short _020502BA - _02050286 - 2 ; case 3
	.short _020502C8 - _02050286 - 2 ; case 4
	.short _020502D6 - _02050286 - 2 ; case 5
_02050292:
	ldr r5, [r0]
	cmp r5, r7
	bne _020502EA
	ldr r0, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0205029E:
	ldr r6, [r0]
	ldr r5, _020502FC ; =sub_0205677C
	cmp r6, r5
	bne _020502EA
	ldr r0, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020502AC:
	ldr r6, [r0]
	ldr r5, _02050300 ; =sub_020566F8
	cmp r6, r5
	bne _020502EA
	ldr r0, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020502BA:
	ldr r6, [r0]
	ldr r5, _02050304 ; =sub_02056620
	cmp r6, r5
	bne _020502EA
	ldr r0, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020502C8:
	ldr r6, [r0]
	ldr r5, _02050308 ; =sub_02056504
	cmp r6, r5
	bne _020502EA
	ldr r0, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020502D6:
	ldr r6, [r0]
	ldr r5, _0205030C ; =sub_02056470
	cmp r6, r5
	bne _020502EA
	ldr r0, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020502E4:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020502EA:
	add r1, r1, #1
	cmp r1, r2
	blt _02050270
_020502F0:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_020502F8: .word sub_02056844
_020502FC: .word sub_0205677C
_02050300: .word sub_020566F8
_02050304: .word sub_02056620
_02050308: .word sub_02056504
_0205030C: .word sub_02056470
	thumb_func_end sub_02050254

	thumb_func_start sub_02050310
sub_02050310: ; 0x02050310
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02050254
	add r2, r0, #0
	beq _02050326
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
_02050326:
	pop {r4, pc}
	thumb_func_end sub_02050310

	thumb_func_start sub_02050328
sub_02050328: ; 0x02050328
	push {r4, lr}
	add r4, r1, #0
	mov r1, #3
	bl sub_02050254
	cmp r0, #0
	beq _0205033A
	ldrh r1, [r4]
	strh r1, [r0, #2]
_0205033A:
	pop {r4, pc}
	thumb_func_end sub_02050328

	thumb_func_start sub_0205033C
sub_0205033C: ; 0x0205033C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02050254
	add r2, r0, #0
	beq _02050352
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
_02050352:
	pop {r4, pc}
	thumb_func_end sub_0205033C

	thumb_func_start sub_02050354
sub_02050354: ; 0x02050354
	add r0, #0x90
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02050354

	thumb_func_start sub_0205035C
sub_0205035C: ; 0x0205035C
	add r0, #0x94
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0205035C

	thumb_func_start sub_02050364
sub_02050364: ; 0x02050364
	add r0, #0x94
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02050364

	thumb_func_start sub_0205036C
sub_0205036C: ; 0x0205036C
	push {r3, lr}
	mov r2, #0
	bl sub_0205F500
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0205036C

	thumb_func_start sub_0205037C
sub_0205037C: ; 0x0205037C
	push {r4, lr}
	ldr r3, _020503A4 ; =0x0209B1A8
	mov r2, #0
	ldr r3, [r3]
	blx r3
	ldr r1, _020503A8 ; =0x02141950
	ldr r1, [r1]
	ldr r4, [r1, #0x44]
	mov r1, #0x97
	lsl r1, r1, #2
	ldrh r3, [r4, r1]
	add r2, r3, #1
	strh r2, [r4, r1]
	lsl r1, r3, #2
	add r1, r4, r1
	str r0, [r1, #0x58]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_020503A4: .word 0x0209B1A8
_020503A8: .word 0x02141950
	thumb_func_end sub_0205037C

	thumb_func_start sub_020503AC
sub_020503AC: ; 0x020503AC
	push {r3, lr}
	mov r2, #1
	bl sub_0205F638
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020503AC

	thumb_func_start sub_020503BC
sub_020503BC: ; 0x020503BC
	push {r4, lr}
	ldr r3, _020503E4 ; =0x0209B1B0
	mov r2, #0
	ldr r3, [r3]
	blx r3
	ldr r1, _020503E8 ; =0x02141950
	ldr r1, [r1]
	ldr r4, [r1, #0x44]
	ldr r1, _020503EC ; =0x0000025E
	ldrh r3, [r4, r1]
	add r2, r3, #1
	strh r2, [r4, r1]
	lsl r1, r3, #2
	add r2, r4, r1
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r2, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	.align 2, 0
_020503E4: .word 0x0209B1B0
_020503E8: .word 0x02141950
_020503EC: .word 0x0000025E
	thumb_func_end sub_020503BC

	thumb_func_start sub_020503F0
sub_020503F0: ; 0x020503F0
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_020503F0

	thumb_func_start sub_020503F4
sub_020503F4: ; 0x020503F4
	push {r3, lr}
	cmp r0, #7
	bhi _02050446
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02050406: ; jump table
	.short _02050416 - _02050406 - 2 ; case 0
	.short _0205041C - _02050406 - 2 ; case 1
	.short _02050422 - _02050406 - 2 ; case 2
	.short _02050428 - _02050406 - 2 ; case 3
	.short _0205042E - _02050406 - 2 ; case 4
	.short _02050434 - _02050406 - 2 ; case 5
	.short _0205043A - _02050406 - 2 ; case 6
	.short _02050440 - _02050406 - 2 ; case 7
_02050416:
	bl sub_02075360
	pop {r3, pc}
_0205041C:
	bl sub_020753A0
	pop {r3, pc}
_02050422:
	bl sub_020753E0
	pop {r3, pc}
_02050428:
	bl sub_02075448
	pop {r3, pc}
_0205042E:
	bl sub_02075388
	pop {r3, pc}
_02050434:
	bl sub_020753C8
	pop {r3, pc}
_0205043A:
	bl sub_0207541C
	pop {r3, pc}
_02050440:
	bl sub_02075488
	pop {r3, pc}
_02050446:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_020503F4

	thumb_func_start sub_0205044C
sub_0205044C: ; 0x0205044C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r5, #0
_0205045A:
	lsl r0, r5, #2
	ldrb r0, [r7, r0]
	cmp r0, #0xff
	beq _02050468
	add r5, r5, #1
	cmp r5, #0xff
	blt _0205045A
_02050468:
	mov r0, #0x6b
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _020504CC ; =0x0209B034
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x14
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r6, r0, #0
	beq _020504C6
	str r7, [r6]
	ldr r0, [sp, #4]
	str r5, [r6, #4]
	str r0, [r6, #8]
	ldr r0, [sp, #8]
	ldr r3, _020504CC ; =0x0209B034
	str r0, [r6, #0xc]
	mov r0, #0x73
	str r0, [sp]
	ldr r0, [sp, #0xc]
	lsl r1, r5, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r2, r4, #0
	bl sub_0203A1FC
	str r0, [r6, #0x10]
	cmp r0, #0
	beq _020504BE
	cmp r5, #0
	bls _020504C6
_020504AC:
	ldr r1, [r6, #0x10]
	lsl r0, r4, #2
	add r0, r1, r0
	bl sub_020504D0
	add r4, r4, #1
	cmp r4, r5
	blo _020504AC
	b _020504C6
_020504BE:
	add r0, r6, #0
	bl sub_0203A24C
	add r6, r4, #0
_020504C6:
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020504CC: .word 0x0209B034
	thumb_func_end sub_0205044C

	thumb_func_start sub_020504D0
sub_020504D0: ; 0x020504D0
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_020504D0

	thumb_func_start sub_020504DC
sub_020504DC: ; 0x020504DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020504DC

	thumb_func_start sub_020504F0
sub_020504F0: ; 0x020504F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	bl sub_0203DA2C
	str r0, [sp, #4]
	cmp r0, #0
	beq _0205055C
	ldr r0, [r5]
	bl sub_0203D9C8
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_0203DA0C
	add r4, r0, #0
	bl sub_0203DA48
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp]
	cmp r0, #0
	bls _02050578
_02050522:
	ldr r0, [r5, #0x10]
	lsl r3, r1, #2
	add r2, r0, r3
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0205053A
	mov r0, #1
	cmp r6, r1
	beq _02050536
	mov r0, #0
_02050536:
	strb r0, [r2, #1]
	b _02050552
_0205053A:
	mov r0, #1
	cmp r4, r1
	beq _02050542
	mov r0, #0
_02050542:
	strb r0, [r2, #1]
	ldr r0, [r5, #0x10]
	add r0, r0, r3
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _02050552
	mov r0, #1
	str r0, [sp]
_02050552:
	ldr r0, [r5, #4]
	add r1, r1, #1
	cmp r1, r0
	blo _02050522
	b _02050578
_0205055C:
	ldr r7, [sp]
	ldr r0, [r5, #4]
	add r2, r7, #0
	cmp r0, #0
	bls _02050578
	mov r1, #0
_02050568:
	ldr r3, [r5, #0x10]
	lsl r0, r2, #2
	add r0, r3, r0
	strb r1, [r0, #1]
	ldr r0, [r5, #4]
	add r2, r2, #1
	cmp r2, r0
	blo _02050568
_02050578:
	mov r4, #0
	cmp r0, #0
	bls _020505AC
_0205057E:
	ldr r6, [r5, #0x10]
	lsl r3, r4, #2
	add r0, r6, r3
	ldrb r3, [r6, r3]
	ldr r1, [sp, #4]
	add r2, r7, #0
	lsl r6, r3, #2
	ldr r3, _020505B4 ; =0x020940A8
	ldr r3, [r3, r6]
	blx r3
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _020505A4
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r4, #0
	blx r3
_020505A4:
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _0205057E
_020505AC:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020505B4: .word 0x020940A8
	thumb_func_end sub_020504F0

	thumb_func_start sub_020505B8
sub_020505B8: ; 0x020505B8
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _020505CE
	cmp r2, #0
	beq _020505CE
	mov r1, #1
	bl sub_02050608
	mov r0, #0
	pop {r3, pc}
_020505CE:
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
	thumb_func_end sub_020505B8

	thumb_func_start sub_020505D4
sub_020505D4: ; 0x020505D4
	push {r3, lr}
	ldrb r2, [r0, #1]
	cmp r2, #0
	beq _020505EC
	ldrh r2, [r0, #2]
	ldr r1, _02050604 ; =0x0000FFFF
	cmp r2, r1
	bhs _020505E8
	add r1, r2, #1
	strh r1, [r0, #2]
_020505E8:
	mov r0, #2
	pop {r3, pc}
_020505EC:
	cmp r1, #0
	beq _020505FA
	mov r1, #0
	bl sub_02050608
	mov r0, #3
	pop {r3, pc}
_020505FA:
	mov r1, #0
	bl sub_02050608
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_02050604: .word 0x0000FFFF
	thumb_func_end sub_020505D4

	thumb_func_start sub_02050608
sub_02050608: ; 0x02050608
	strb r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	bx lr
	thumb_func_end sub_02050608

	thumb_func_start sub_02050610
sub_02050610: ; 0x02050610
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0]
	add r5, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _02050628
	ldr r0, _02050670 ; =0x0000FFFF
	mul r0, r1
	lsl r0, r0, #8
	b _0205063A
_02050628:
	cmp r0, #2
	bne _0205063C
	ldr r0, _02050670 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	blx sub_0208D868
	lsl r0, r0, #0x10
_0205063A:
	lsr r1, r0, #0x10
_0205063C:
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _02050674 ; =FX_SinCosTable_ ; 0x020946BC
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r4, #0
	bl MTX_Rot22_
	add r0, r5, #0
	bl FX_Inv
	add r5, r0, #0
	add r0, r6, #0
	bl FX_Inv
	add r3, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r2, r5, #0
	bl MTX_ScaleApply22
	pop {r4, r5, r6, pc}
	nop
_02050670: .word 0x0000FFFF
_02050674: .word FX_SinCosTable_
	thumb_func_end sub_02050610

	thumb_func_start sub_02050678
sub_02050678: ; 0x02050678
	push {r4, r5}
	add r4, r1, #0
	add r5, r0, #0
	ldmia r4!, {r0, r1}
	add r3, r5, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	str r2, [r5, #0xc]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end sub_02050678

	thumb_func_start sub_02050690
sub_02050690: ; 0x02050690
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, #0xc
	add r1, r6, #0
	add r2, sp, #0x18
	bl VEC_Subtract
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0xc
	bl VEC_Subtract
	add r0, sp, #0x18
	add r1, sp, #0xc
	blx VEC_DotProduct
	add r7, r0, #0
	add r0, sp, #0x18
	add r1, r0, #0
	blx VEC_DotProduct
	add r1, r0, #0
	add r0, r7, #0
	bl FX_Div
	add r1, r0, #0
	bmi _02050702
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	bgt _02050702
	add r0, sp, #0x18
	add r2, r0, #0
	bl sub_02050784
	add r7, sp, #0
	add r0, sp, #0x18
	add r1, sp, #0xc
	add r2, r7, #0
	bl VEC_Subtract
	add r0, r7, #0
	blx VEC_Mag
	ldr r2, [r5, #0xc]
	ldr r1, [r6, #0x18]
	str r0, [sp, #0x34]
	add r1, r2, r1
	cmp r0, r1
	bgt _0205073E
	b _0205073A
_02050702:
	add r6, #0xc
	add r1, r6, #0
	add r6, sp, #0
	add r0, r5, #0
	add r2, r6, #0
	bl VEC_Subtract
	add r0, r6, #0
	blx VEC_Mag
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x34]
	cmp r0, r1
	bgt _02050720
	b _0205073A
_02050720:
	add r3, sp, #0xc
	ldmia r3!, {r0, r1}
	add r2, r6, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r6, #0
	blx VEC_Mag
	ldr r1, [r5, #0xc]
	str r0, [sp, #0x34]
	cmp r0, r1
	bgt _0205073E
_0205073A:
	mov r0, #1
	str r0, [sp, #0x24]
_0205073E:
	cmp r4, #0
	beq _02050758
	add r0, sp, #0
	add r1, sp, #0x28
	blx VEC_Normalize
	add r2, sp, #0x24
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_02050758:
	ldr r0, [sp, #0x24]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_02050690

	thumb_func_start sub_02050760
sub_02050760: ; 0x02050760
	push {r3, r4, r5, r6}
	add r6, r1, #0
	add r4, r0, #0
	ldmia r6!, {r0, r1}
	add r5, r4, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	add r5, r4, #0
	ldmia r2!, {r0, r1}
	add r5, #0xc
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
	str r3, [r4, #0x18]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end sub_02050760

	thumb_func_start sub_02050784
sub_02050784: ; 0x02050784
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	add r6, r1, #0
	blx FX_MulFunc
	str r0, [r4]
	ldr r0, [r5, #4]
	add r1, r6, #0
	blx FX_MulFunc
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r1, r6, #0
	blx FX_MulFunc
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_02050784

	thumb_func_start sub_020507AC
sub_020507AC: ; 0x020507AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	add r6, r1, #0
	bl FX_Div
	str r0, [r4]
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl FX_Div
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl FX_Div
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020507AC

	thumb_func_start sub_020507D4
sub_020507D4: ; 0x020507D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r3, #0
	add r4, r0, #0
	add r0, r7, #0
	add r5, r1, #0
	add r6, r2, #0
	blx MTX_Identity33_
	asr r0, r4, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r4, _02050840 ; =FX_SinCosTable_ ; 0x020946BC
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, r7, #0
	bl MTX_RotX33_
	asr r0, r5, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	add r5, sp, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	bl MTX_RotY33_
	add r0, r7, #0
	add r1, r5, #0
	add r2, r7, #0
	blx MTX_Concat33
	asr r0, r6, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	bl MTX_RotZ33_
	add r0, r7, #0
	add r1, r5, #0
	add r2, r7, #0
	blx MTX_Concat33
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02050840: .word FX_SinCosTable_
	thumb_func_end sub_020507D4

	thumb_func_start sub_02050844
sub_02050844: ; 0x02050844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	add r4, r5, #0
	add r6, r1, #0
	add r3, sp, #0x48
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #0
	str r0, [sp, #0x4c]
	add r0, r2, #0
	blx VEC_Mag
	add r1, r0, #0
	ldr r0, [r5, #4]
	neg r0, r0
	bl FX_Atan2Idx
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r4, _020508B4 ; =FX_SinCosTable_ ; 0x020946BC
	add r2, r2, #1
	lsl r2, r2, #1
	add r7, sp, #0x24
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, r7, #0
	bl MTX_RotX33_
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl FX_Atan2Idx
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	add r5, sp, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	bl MTX_RotY33_
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	blx MTX_Concat33
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_020508B4: .word FX_SinCosTable_
	thumb_func_end sub_02050844

	thumb_func_start sub_020508B8
sub_020508B8: ; 0x020508B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	mov r4, #0
	mov r5, #0
	add r0, r2, #0
	beq _020508F4
_020508CA:
	mov r0, #0
	str r0, [sp, #4]
	lsl r0, r4, #1
	add r0, r6, r0
	add r1, r7, r5
	add r2, sp, #4
	bl sub_020508F8
	cmp r0, #1
	bne _020508E4
	add r4, r4, #1
	add r5, r5, #2
	b _020508E8
_020508E4:
	add r4, r4, #1
	add r5, r5, #1
_020508E8:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _020508F4
	ldr r0, [sp]
	cmp r4, r0
	blo _020508CA
_020508F4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020508B8

	thumb_func_start sub_020508F8
sub_020508F8: ; 0x020508F8
	push {r3, r4, r5, r6, r7, lr}
	ldrh r4, [r0]
	add r5, r1, #0
	add r7, r2, #0
	mov r6, #0
	bl sub_020486F4
	cmp r4, r0
	bne _02050916
	strb r6, [r5]
	cmp r7, #0
	beq _02050A04
	mov r0, #1
	str r0, [r7]
	b _02050A04
_02050916:
	cmp r4, #0x20
	blo _02050922
	cmp r4, #0x7e
	bhi _02050922
	strb r4, [r5]
	b _02050A04
_02050922:
	ldr r0, _02050A08 ; =0x00003041
	cmp r4, r0
	blo _02050944
	add r0, #0x52
	cmp r4, r0
	bhi _02050944
	ldr r0, _02050A0C ; =0x0000525E
_02050930:
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	asr r0, r0, #8
	strb r0, [r5]
	strb r1, [r5, #1]
	b _020509CC
_02050944:
	ldr r0, _02050A10 ; =0x000030A1
	cmp r4, r0
	blo _02050954
	add r0, #0x3e
	cmp r4, r0
	bhi _02050954
	ldr r0, _02050A14 ; =0x0000529F
	b _02050930
_02050954:
	ldr r0, _02050A18 ; =0x000030E0
	cmp r4, r0
	blo _02050964
	add r0, #0x13
	cmp r4, r0
	bhi _02050964
	ldr r0, _02050A1C ; =0x000052A0
	b _02050930
_02050964:
	ldr r1, _02050A20 ; =0x0000FF21
	cmp r4, r1
	blo _02050988
	add r0, r1, #0
	add r0, #0x19
	cmp r4, r0
	bhi _02050988
	ldr r0, _02050A24 ; =0x00007CC1
	sub r1, #0x21
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0205097C:
	add r0, r2, #0
	and r0, r1
	asr r0, r0, #8
	strb r0, [r5]
	strb r2, [r5, #1]
	b _020509CC
_02050988:
	ldr r1, _02050A28 ; =0x0000FF41
	cmp r4, r1
	blo _020509A2
	add r0, r1, #0
	add r0, #0x19
	cmp r4, r0
	bhi _020509A2
	ldr r0, _02050A2C ; =0x00007CC0
	sub r1, #0x41
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	b _0205097C
_020509A2:
	ldr r1, _02050A30 ; =0x0000FF10
	cmp r4, r1
	blo _020509BC
	add r0, r1, #0
	add r0, #9
	cmp r4, r0
	bhi _020509BC
	ldr r0, _02050A24 ; =0x00007CC1
	sub r1, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	b _0205097C
_020509BC:
	ldr r0, _02050A34 ; =0x000030FC
	cmp r4, r0
	bne _020509D0
	mov r0, #0x7e
	mvn r0, r0
	strb r0, [r5]
	mov r0, #0x5b
_020509CA:
	strb r0, [r5, #1]
_020509CC:
	mov r6, #1
	b _02050A04
_020509D0:
	ldr r0, _02050A38 ; =0x00008140
	cmp r4, r0
	bne _020509E0
	mov r0, #0x7e
	mvn r0, r0
	strb r0, [r5]
	mov r0, #0x40
	b _020509CA
_020509E0:
	ldr r0, _02050A3C ; =0x00002642
	cmp r4, r0
	bne _020509F0
	mov r0, #0x7e
	mvn r0, r0
	strb r0, [r5]
	add r0, #8
	b _020509CA
_020509F0:
	sub r0, r0, #2
	cmp r4, r0
	bne _02050A00
	mov r0, #0x7e
	mvn r0, r0
	strb r0, [r5]
	add r0, #9
	b _020509CA
_02050A00:
	mov r0, #0x3f
	strb r0, [r5]
_02050A04:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02050A08: .word 0x00003041
_02050A0C: .word 0x0000525E
_02050A10: .word 0x000030A1
_02050A14: .word 0x0000529F
_02050A18: .word 0x000030E0
_02050A1C: .word 0x000052A0
_02050A20: .word 0x0000FF21
_02050A24: .word 0x00007CC1
_02050A28: .word 0x0000FF41
_02050A2C: .word 0x00007CC0
_02050A30: .word 0x0000FF10
_02050A34: .word 0x000030FC
_02050A38: .word 0x00008140
_02050A3C: .word 0x00002642
	thumb_func_end sub_020508F8

