    .include "macros/function.inc"
	.include "overlay185.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy185_219ce80
ovy185_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0x58
	str r0, [sp]
	lsl r0, r7, #0x10
	ldr r6, _0219CECC ; =0x00001E50
	str r1, [sp, #4]
	ldr r3, _0219CED0 ; =0x021A7460
	lsr r0, r0, #0x10
	add r1, r6, #0
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #4]
	str r0, [r4]
	add r0, r7, #0
	bl sub_0202A0CC
	str r0, [r4, #4]
	add r1, r5, #0
	sub r6, #0xe2
_0219CEB0:
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, r6]
	cmp r5, #0xe2
	blt _0219CEB0
	add r0, r4, #0
	bl ovy185_219cee8
	add r0, r4, #0
	bl ovy185_219d180
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CECC: .word 0x00001E50
_0219CED0: .word 0x021A7460
	thumb_func_end ovy185_219ce80

	thumb_func_start ovy185_219ced4
ovy185_219ced4: ; 0x0219CED4
	push {r4, lr}
	add r4, r0, #0
	beq _0219CEE6
	ldr r0, [r4, #4]
	bl sub_0202A114
	add r0, r4, #0
	bl sub_0203A24C
_0219CEE6:
	pop {r4, pc}
	thumb_func_end ovy185_219ced4

	thumb_func_start ovy185_219cee8
ovy185_219cee8: ; 0x0219CEE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	str r0, [sp, #4]
	add r0, #0x68
	mov r7, #0
	mov r4, #0
	str r0, [sp, #4]
_0219CEF8:
	ldr r0, [sp, #8]
	lsl r1, r7, #2
	add r0, r0, r1
	str r0, [sp]
	str r4, [r0, #0x38]
	mov r0, #0xc
	mul r0, r7
	ldr r1, _0219CF30 ; =0x021A5760
	mov ip, r0
	add r2, r1, r0
	ldr r1, [r2, #4]
	ldr r3, [sp, #4]
	lsl r5, r4, #1
	add r3, r3, r5
	ldr r5, _0219CF30 ; =0x021A5760
	mov r6, ip
	ldr r0, [sp, #8]
	ldr r2, [r2, #8]
	ldr r5, [r5, r6]
	blx r5
	ldr r1, [sp]
	add r7, r7, #1
	add r4, r4, r0
	str r0, [r1, #8]
	cmp r7, #0xc
	blt _0219CEF8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF30: .word 0x021A5760
	thumb_func_end ovy185_219cee8

	thumb_func_start ovy185_219cf34
ovy185_219cf34: ; 0x0219CF34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0]
	add r7, r1, #0
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02029A6C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	bls _0219CF94
_0219CF54:
	lsl r6, r4, #1
	ldrh r1, [r7, r6]
	ldr r0, [sp, #0xc]
	bl sub_0200D7F4
	cmp r0, #0
	beq _0219CF8C
	ldrh r2, [r7, r6]
	ldr r0, [sp]
	mov r3, #7
	lsr r1, r2, #3
	add r6, r2, #0
	add r1, r0, r1
	ldr r0, _0219CF9C ; =0x00001D6E
	and r6, r3
	mov r3, #1
	lsl r3, r6
	lsl r3, r3, #0x18
	ldrb r0, [r1, r0]
	lsr r3, r3, #0x18
	orr r3, r0
	ldr r0, _0219CF9C ; =0x00001D6E
	strb r3, [r1, r0]
	ldr r0, [sp, #8]
	strh r2, [r5]
	add r0, r0, #1
	add r5, r5, #2
	str r0, [sp, #8]
_0219CF8C:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _0219CF54
_0219CF94:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CF9C: .word 0x00001D6E
	thumb_func_end ovy185_219cf34

	thumb_func_start ovy185_219cfa0
ovy185_219cfa0: ; 0x0219CFA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0]
	add r5, r1, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02029A74
	cmp r0, #0
	beq _0219CFF4
	ldr r0, [sp, #4]
	mov r2, #0
	cmp r0, #0
	bls _0219CFEE
_0219CFBE:
	ldrh r1, [r5]
	ldr r0, [sp]
	add r2, r2, #1
	lsr r3, r1, #3
	add r0, r0, r3
	ldr r3, _0219CFFC ; =0x00001D6E
	add r6, r1, #0
	ldrb r7, [r0, r3]
	mov r3, #7
	and r6, r3
	mov r3, #1
	lsl r3, r6
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	add r6, r7, #0
	orr r6, r3
	ldr r3, _0219CFFC ; =0x00001D6E
	add r5, r5, #2
	strb r6, [r0, r3]
	strh r1, [r4]
	ldr r0, [sp, #4]
	add r4, r4, #2
	cmp r2, r0
	blo _0219CFBE
_0219CFEE:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219CFF4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CFFC: .word 0x00001D6E
	thumb_func_end ovy185_219cfa0

	thumb_func_start ovy185_219d000
ovy185_219d000: ; 0x0219D000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [r0]
	add r7, r1, #0
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02029A70
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp, #0xc]
	mov r0, #0xa4
	mov r1, #0
	bl sub_0202A1AC
	str r0, [sp, #8]
	add r0, r0, #7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	bls _0219D082
_0219D032:
	lsl r6, r4, #1
	ldrh r1, [r7, r6]
	ldr r0, [sp, #8]
	cmp r1, r0
	blo _0219D050
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhi _0219D050
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x14]
	sub r1, r1, r2
	bl sub_0202A2B8
	cmp r0, #0
	beq _0219D07A
_0219D050:
	ldrh r2, [r7, r6]
	ldr r0, [sp]
	mov r3, #7
	lsr r1, r2, #3
	add r6, r2, #0
	add r1, r0, r1
	ldr r0, _0219D088 ; =0x00001D6E
	and r6, r3
	mov r3, #1
	lsl r3, r6
	lsl r3, r3, #0x18
	ldrb r0, [r1, r0]
	lsr r3, r3, #0x18
	orr r3, r0
	ldr r0, _0219D088 ; =0x00001D6E
	strb r3, [r1, r0]
	ldr r0, [sp, #0xc]
	strh r2, [r5]
	add r0, r0, #1
	add r5, r5, #2
	str r0, [sp, #0xc]
_0219D07A:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _0219D032
_0219D082:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D088: .word 0x00001D6E
	thumb_func_end ovy185_219d000

	thumb_func_start ovy185_219d08c
ovy185_219d08c: ; 0x0219D08C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_02029A84
	cmp r0, #0
	bne _0219D0A8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219D0A8:
	ldr r0, [sp, #8]
	mov r2, #0
	mov r3, #0
	cmp r0, #0
	bls _0219D0E4
	ldr r7, _0219D0EC ; =0x00001D6E
_0219D0B4:
	ldr r0, [sp, #4]
	lsl r1, r2, #1
	ldrh r6, [r0, r1]
	ldr r0, [sp]
	mov r5, #7
	lsr r1, r6, #3
	and r6, r5
	mov r5, #1
	add r1, r0, r1
	lsl r5, r6
	lsl r5, r5, #0x18
	ldrb r0, [r1, r7]
	lsr r5, r5, #0x18
	add r3, r3, #1
	orr r0, r5
	strb r0, [r1, r7]
	ldr r0, _0219D0F0 ; =0x00000801
	add r0, r2, r0
	strh r0, [r4]
	ldr r0, [sp, #8]
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, r0
	blo _0219D0B4
_0219D0E4:
	add r0, r3, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D0EC: .word 0x00001D6E
_0219D0F0: .word 0x00000801
	thumb_func_end ovy185_219d08c

	thumb_func_start ovy185_219d0f4
ovy185_219d0f4: ; 0x0219D0F4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r4, r1, #0
	mov ip, r0
	str r2, [sp]
	mov lr, r3
	add r0, r2, #0
	beq _0219D172
_0219D106:
	ldrh r2, [r4]
	ldr r0, _0219D178 ; =0x0000FFFE
	cmp r2, r0
	bne _0219D142
	add r0, r4, #2
	ldrh r1, [r0]
	add r4, r4, #4
	cmp r1, #0
	beq _0219D138
	ldr r7, _0219D17C ; =0x00001D6E
_0219D11A:
	ldrh r3, [r4]
	mov r2, #7
	add r4, r4, #2
	lsr r0, r3, #3
	and r3, r2
	mov r2, #1
	add r0, r6, r0
	lsl r2, r3
	lsl r2, r2, #0x18
	ldrb r5, [r0, r7]
	lsr r2, r2, #0x18
	orr r2, r5
	strb r2, [r0, r7]
	sub r1, r1, #1
	bne _0219D11A
_0219D138:
	sub r0, r4, #2
	ldrh r1, [r0]
	mov r0, lr
	strh r1, [r0]
	b _0219D160
_0219D142:
	lsr r0, r2, #3
	add r3, r6, r0
	mov r0, #7
	ldr r7, _0219D17C ; =0x00001D6E
	mov r1, #1
	and r0, r2
	lsl r1, r0
	lsl r0, r1, #0x18
	ldrb r5, [r3, r7]
	lsr r0, r0, #0x18
	add r4, r4, #2
	orr r0, r5
	strb r0, [r3, r7]
	mov r0, lr
	strh r2, [r0]
_0219D160:
	mov r0, lr
	add r0, r0, #2
	mov lr, r0
	mov r0, ip
	add r1, r0, #1
	ldr r0, [sp]
	mov ip, r1
	cmp r1, r0
	blo _0219D106
_0219D172:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D178: .word 0x0000FFFE
_0219D17C: .word 0x00001D6E
	thumb_func_end ovy185_219d0f4

	thumb_func_start ovy185_219d180
ovy185_219d180: ; 0x0219D180
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219D1D0 ; =0x00000F58
	mov r4, #0
	str r0, [sp, #8]
	sub r0, #0x6c
	str r0, [sp, #8]
	ldr r0, _0219D1D0 ; =0x00000F58
	mov r6, #0
	str r0, [sp, #4]
	sub r0, #0xd8
	str r0, [sp, #4]
	ldr r0, _0219D1D0 ; =0x00000F58
	str r0, [sp]
	sub r0, #0xd8
	str r0, [sp]
_0219D1A2:
	ldr r2, _0219D1D4 ; =0x021A5568
	lsl r1, r6, #2
	add r7, r5, r1
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _0219D1D0 ; =0x00000F58
	str r4, [r7, r0]
	add r0, r5, #0
	add r2, r5, r2
	add r3, r4, #0
	bl ovy185_219d1d8
	ldr r1, [sp, #4]
	add r6, r6, #1
	str r0, [r7, r1]
	ldr r0, [sp]
	ldr r0, [r7, r0]
	add r4, r4, r0
	cmp r6, #0x1b
	blo _0219D1A2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D1D0: .word 0x00000F58
_0219D1D4: .word 0x021A5568
	thumb_func_end ovy185_219d180

	thumb_func_start ovy185_219d1d8
ovy185_219d1d8: ; 0x0219D1D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	mov r0, #0
	mov ip, r0
	ldrh r2, [r5]
	ldr r0, _0219D270 ; =0x0000FFFF
	mov lr, r3
	cmp r2, r0
	beq _0219D26C
_0219D1EE:
	ldr r0, _0219D274 ; =0x0000FFFE
	cmp r2, r0
	bne _0219D23A
	add r0, r5, #2
	ldrh r6, [r0]
	add r5, r5, #4
	mov r4, #0
	cmp r6, #0
	bls _0219D234
_0219D200:
	lsl r0, r4, #1
	ldrh r3, [r5, r0]
	mov r0, #7
	mov r2, #1
	and r0, r3
	lsl r2, r0
	lsr r0, r3, #3
	add r1, r7, r0
	ldr r0, _0219D278 ; =0x00001D6E
	ldrb r0, [r1, r0]
	tst r0, r2
	beq _0219D22E
	mov r0, lr
	lsl r1, r0, #1
	mov r0, lr
	add r0, r0, #1
	mov lr, r0
	ldr r0, [sp]
	strh r3, [r0, r1]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	b _0219D234
_0219D22E:
	add r4, r4, #1
	cmp r4, r6
	blo _0219D200
_0219D234:
	lsl r0, r6, #1
	add r5, r5, r0
	b _0219D264
_0219D23A:
	mov r0, #7
	and r0, r2
	mov r3, #1
	lsl r3, r0
	lsr r0, r2, #3
	add r1, r7, r0
	ldr r0, _0219D278 ; =0x00001D6E
	ldrb r0, [r1, r0]
	tst r0, r3
	beq _0219D262
	mov r1, lr
	add r1, r1, #1
	mov r0, lr
	mov lr, r1
	ldr r1, [sp]
	lsl r0, r0, #1
	strh r2, [r1, r0]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
_0219D262:
	add r5, r5, #2
_0219D264:
	ldrh r2, [r5]
	ldr r0, _0219D270 ; =0x0000FFFF
	cmp r2, r0
	bne _0219D1EE
_0219D26C:
	mov r0, ip
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D270: .word 0x0000FFFF
_0219D274: .word 0x0000FFFE
_0219D278: .word 0x00001D6E
	thumb_func_end ovy185_219d1d8

	thumb_func_start sub_0219D27C
sub_0219D27C: ; 0x0219D27C
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219D27C

	thumb_func_start ovy185_219d284
ovy185_219d284: ; 0x0219D284
	push {r4, lr}
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #0x38]
	ldr r0, [r4, #4]
	add r1, r1, r2
	lsl r1, r1, #1
	add r1, r4, r1
	add r1, #0x68
	ldrh r1, [r1]
	add r2, r3, #0
	bl sub_0202A134
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219d284

	thumb_func_start sub_0219D2A4
sub_0219D2A4: ; 0x0219D2A4
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r1, [r1, #0x38]
	add r1, r1, r2
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x68
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D2A4

	thumb_func_start ovy185_219d2b8
ovy185_219d2b8: ; 0x0219D2B8
	push {r3, lr}
	mov r3, #0
	bl ovy185_219d1d8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_219d2b8

	thumb_func_start sub_0219D2C4
sub_0219D2C4: ; 0x0219D2C4
	add r1, r0, #4
	ldrh r0, [r0, #2]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0219D2C4

	thumb_func_start ovy185_219d2d0
ovy185_219d2d0: ; 0x0219D2D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0219D310 ; =0x021A5568
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r6, r2, #0
	ldrh r2, [r0]
	ldr r7, _0219D314 ; =0x0000FFFF
	mov r5, #0
	cmp r2, r7
	beq _0219D30C
	sub r4, r7, #1
_0219D2E6:
	cmp r5, r6
	bne _0219D2F8
	ldr r1, _0219D318 ; =0x0000FFFE
	cmp r2, r1
	bne _0219D2F4
	bl sub_0219D2C4
_0219D2F4:
	ldrh r0, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219D2F8:
	cmp r2, r4
	bne _0219D302
	bl sub_0219D2C4
	b _0219D302
_0219D302:
	add r0, r0, #2
	ldrh r2, [r0]
	add r5, r5, #1
	cmp r2, r7
	bne _0219D2E6
_0219D30C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D310: .word 0x021A5568
_0219D314: .word 0x0000FFFF
_0219D318: .word 0x0000FFFE
	thumb_func_end ovy185_219d2d0

	thumb_func_start sub_0219D31C
sub_0219D31C: ; 0x0219D31C
	ldr r0, [r0, #4]
	ldr r3, _0219D324 ; =sub_0202A134
	bx r3
	nop
_0219D324: .word sub_0202A134
	thumb_func_end sub_0219D31C

	thumb_func_start sub_0219D328
sub_0219D328: ; 0x0219D328
	ldr r0, _0219D32C ; =0x0000FFFF
	bx lr
	.align 2, 0
_0219D32C: .word 0x0000FFFF
	thumb_func_end sub_0219D328

	thumb_func_start ovy185_219d330
ovy185_219d330: ; 0x0219D330
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xdf
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _0219D3E4 ; =0x021A7500
	mov r0, #0x2a
	mov r1, #0x90
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	add r4, r0, #0
	beq _0219D3E0
	str r5, [r4, #0x64]
	str r5, [r4, #0x7c]
	str r6, [r4, #0x18]
	str r7, [r4, #0x1c]
	add r0, r6, #0
	bl sub_021A2FB4
	str r0, [r4, #0x78]
	ldr r0, _0219D3E8 ; =0x02093F08
	ldr r1, _0219D3EC ; =0x021A6FF4
	mov r2, #0x2a
	bl sub_0204B6A8
	mov r0, #0x80
	add r1, r5, #0
	mov r2, #0x2a
	mov r7, #0x80
	bl sub_0204BF1C
	str r0, [r4, #0x20]
	mov r0, #0x2a
	bl sub_020444A4
	mov r0, #0x2a
	bl sub_02048080
	sub r7, #0x90
	ldr r0, _0219D3F0 ; =0x0400006C
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _0219D3F4 ; =0x0400106C
	add r1, r7, #0
	bl GXx_SetMasterBrightness_
	add r0, r6, #0
	bl sub_021A30B0
	ldr r1, _0219D3F8 ; =ovy185_219d48c
	add r2, r4, #0
	mov r3, #2
	bl sub_0203A614
	str r0, [r4]
	ldr r0, _0219D3FC ; =ovy185_219d4b0
	add r1, r4, #0
	mov r2, #1
	bl sub_0219D484
	str r0, [r4, #4]
	add r0, r5, #0
_0219D3B2:
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #8]
	cmp r5, #4
	blt _0219D3B2
	add r1, r4, #0
	str r0, [r4, #0x70]
	add r1, #0x74
	strb r0, [r1]
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	mov r0, #0x2a
	mov r1, #0x2a
	bl sub_0204AA30
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
_0219D3E0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D3E4: .word 0x021A7500
_0219D3E8: .word 0x02093F08
_0219D3EC: .word 0x021A6FF4
_0219D3F0: .word 0x0400006C
_0219D3F4: .word 0x0400106C
_0219D3F8: .word ovy185_219d48c
_0219D3FC: .word ovy185_219d4b0
	thumb_func_end ovy185_219d330

	thumb_func_start ovy185_219d400
ovy185_219d400: ; 0x0219D400
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	beq _0219D482
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204AB0C
	mov r4, #0
_0219D410:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0219D41E
	bl GFL_TCBRemove
_0219D41E:
	add r4, r4, #1
	cmp r4, #4
	blt _0219D410
	ldr r0, [r5]
	bl GFL_TCBRemove
	ldr r0, [r5, #4]
	bl GFL_TCBRemove
	ldr r0, [r5, #0x64]
	bl ovy185_21a0310
	ldr r0, [r5, #0x20]
	bl sub_0204BF98
	mov r6, #0
	mov r7, #0xc
_0219D440:
	add r0, r6, #0
	mul r0, r7
	add r4, r5, r0
	ldr r0, [r4, #0x24]
	bl sub_0204BCD0
	ldr r0, [r4, #0x28]
	bl sub_0204B98C
	ldr r0, [r4, #0x2c]
	bl sub_0204BE64
	ldr r0, [r4, #0x3c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x40]
	bl sub_0204B98C
	ldr r0, [r4, #0x44]
	bl sub_0204BE64
	add r6, r6, #1
	cmp r6, #2
	blt _0219D440
	bl sub_0204B758
	bl sub_020480A8
	bl sub_02044528
	add r0, r5, #0
	bl sub_0203A24C
_0219D482:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_219d400

	thumb_func_start sub_0219D484
sub_0219D484: ; 0x0219D484
	ldr r3, _0219D488 ; =GFL_VBlankTCBAdd
	bx r3
	.align 2, 0
_0219D488: .word GFL_VBlankTCBAdd
	thumb_func_end sub_0219D484

	thumb_func_start ovy185_219d48c
ovy185_219d48c: ; 0x0219D48C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0204B794
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0219D49E
	bl ovy185_21a0364
_0219D49E:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0219D4AE
	bl sub_02021A3C
	add r0, r4, #0
	bl ovy185_219e6c8
_0219D4AE:
	pop {r4, pc}
	thumb_func_end ovy185_219d48c

	thumb_func_start ovy185_219d4b0
ovy185_219d4b0: ; 0x0219D4B0
	push {r3, lr}
	add r0, r1, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D4C2
	mov r0, #0
	add r1, #0x84
	str r0, [r1]
_0219D4C2:
	bl sub_02045A5C
	bl sub_0204B7C8
	pop {r3, pc}
	thumb_func_end ovy185_219d4b0

	thumb_func_start ovy185_219d4cc
ovy185_219d4cc: ; 0x0219D4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	ldr r4, _0219D548 ; =0x021A7474
	add r5, r0, #0
	str r1, [sp, #4]
	add r3, sp, #8
	mov r2, #0x11
_0219D4DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219D4DA
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [sp, #4]
	cmp r0, #0x23
	bge _0219D542
	ldr r0, _0219D54C ; =0x000001ED
	ldr r3, _0219D550 ; =0x021A7500
	str r0, [sp]
	mov r0, #0x2a
	mov r1, #0x18
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r7, r0, #0
	beq _0219D542
	ldr r0, [sp, #4]
	str r4, [r7, #0x14]
	str r0, [r7, #0xc]
	str r5, [r7]
	ldr r0, [r5, #0x18]
	str r0, [r7, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r7, #8]
_0219D512:
	lsl r6, r4, #2
	add r0, r5, r6
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0219D53C
	str r4, [r7, #0x10]
	ldr r0, [r5, #0x18]
	bl sub_021A30B0
	ldr r1, [sp, #4]
	mov r3, #1
	lsl r2, r1, #2
	add r1, sp, #8
	ldr r1, [r1, r2]
	add r2, r7, #0
	bl sub_0203A614
	add r1, r5, r6
	str r0, [r1, #8]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
_0219D53C:
	add r4, r4, #1
	cmp r4, #4
	blt _0219D512
_0219D542:
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	nop
_0219D548: .word 0x021A7474
_0219D54C: .word 0x000001ED
_0219D550: .word 0x021A7500
	thumb_func_end ovy185_219d4cc

	thumb_func_start sub_0219D554
sub_0219D554: ; 0x0219D554
	mov r2, #0
_0219D556:
	lsl r1, r2, #2
	add r1, r0, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0219D564
	mov r0, #0
	bx lr
_0219D564:
	add r2, r2, #1
	cmp r2, #4
	blt _0219D556
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D554

	thumb_func_start ovy185_219d570
ovy185_219d570: ; 0x0219D570
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0219D578:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0219D590
	bl sub_0203A6D0
	ldr r0, [r0, #0xc]
	cmp r0, r6
	bne _0219D590
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219D590:
	add r4, r4, #1
	cmp r4, #4
	blt _0219D578
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_219d570

	thumb_func_start ovy185_219d59c
ovy185_219d59c: ; 0x0219D59C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	bl GFL_TCBRemove
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	lsl r0, r0, #2
	mov r2, #0
	add r0, r1, r0
	str r2, [r0, #8]
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219d59c

	thumb_func_start ovy185_219d5c4
ovy185_219d5c4: ; 0x0219D5C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0219D7FC ; =0x04000050
	mov r0, #0
	strh r0, [r4]
	ldr r6, _0219D800 ; =0x04001050
	sub r4, #0x50
	strh r0, [r6]
	add r5, r1, #0
	ldr r1, [r4]
	ldr r0, _0219D804 ; =0xFFFF1FFF
	sub r6, #0x50
	and r1, r0
	str r1, [r4]
	ldr r1, [r6]
	and r0, r1
	str r0, [r6]
	mov r0, #0
	bl sub_02046BE0
	bl sub_02046CF0
	bl sub_02046D78
	ldr r1, [r4]
	ldr r0, _0219D808 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r4]
	ldr r1, [r6]
	and r0, r1
	str r0, [r6]
	mov r0, #0x2a
	mov r1, #0x2a
	mov r6, #0x2a
	bl sub_0204AA30
	add r4, r0, #0
	add r0, r5, #0
	bl ovy185_219d950
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_219d814
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl ovy185_219f53c
	ldr r1, [r5]
	str r0, [r1, #0x54]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #0x54]
	bl ovy185_219f640
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl ovy185_219eb70
	ldr r1, [r5]
	str r0, [r1, #0x58]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #0x58]
	bl ovy185_219ec08
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl ovy185_21a3124
	ldr r1, [r5]
	str r0, [r1, #0x5c]
	ldr r0, [r5]
	ldr r0, [r0, #0x5c]
	bl ovy185_21a31d4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	mov r7, #5
	bl sub_0204AF50
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x12
	add r2, r7, #0
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #6
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #6
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #4
	mov r3, #0x80
	bl sub_0204B124
	ldr r0, [r5]
	ldr r1, _0219D80C ; =0x0000294B
	add r0, #0x68
	strh r1, [r0]
	ldr r2, [r5]
	mov r0, #0x1f
	mov r1, #0xbc
	add r2, #0x68
	mov r3, #2
	bl sub_0205FA10
	ldr r0, [r5]
	ldr r1, _0219D810 ; =0x00005694
	add r0, #0x6a
	strh r1, [r0]
	ldr r2, [r5]
	mov r0, #0x1f
	mov r1, #0xbe
	add r2, #0x6a
	mov r3, #2
	bl sub_0205FA10
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #7
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #7
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x20
	str r0, [sp]
	mov r0, #7
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r7, [sp, #4]
	bl sub_0204566C
	mov r0, #7
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	mov r1, #3
	add r2, r7, #0
	mov r3, #0x1a
	bl sub_020480C0
	ldr r1, [r5]
	str r0, [r1, #0x6c]
	ldr r0, [r5]
	ldr r0, [r0, #0x6c]
	bl sub_020484F4
	mov r1, #7
	bl sub_0204713C
	ldr r1, [r5]
	mov r0, #0
	str r0, [r1, #0x70]
	ldr r0, [r5, #4]
	bl sub_021A30A4
	cmp r0, #0
	bne _0219D77A
	ldr r0, [r5, #4]
	bl sub_021A2FB8
	cmp r0, #2
	beq _0219D780
_0219D77A:
	add r0, r5, #0
	mov r1, #1
	b _0219D784
_0219D780:
	add r0, r5, #0
	mov r1, #0
_0219D784:
	bl ovy185_219e648
	ldr r0, [r5]
	mov r1, #0
	mov r6, #0
	bl ovy185_219e60c
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl ovy185_21a0270
	ldr r1, [r5]
	str r0, [r1, #0x64]
	ldr r0, [r5]
	ldr r0, [r0, #0x64]
	bl ovy185_21a0430
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	bl GX_DispOn
	str r6, [sp]
	str r6, [sp, #4]
	mov r7, #0x2a
	str r7, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #3
	mov r3, #0x60
	str r7, [sp, #8]
	bl sub_0204ADA8
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, r5, #0
	bl ovy185_219d59c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D7FC: .word 0x04000050
_0219D800: .word 0x04001050
_0219D804: .word 0xFFFF1FFF
_0219D808: .word 0xFFFFE0FF
_0219D80C: .word 0x0000294B
_0219D810: .word 0x00005694
	thumb_func_end ovy185_219d5c4

	thumb_func_start ovy185_219d814
ovy185_219d814: ; 0x0219D814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, [r0]
	add r6, r1, #0
	str r0, [sp, #4]
	mov r4, #0
	mov r7, #0x2a
_0219D822:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	str r7, [sp]
	add r5, r0, r1
	add r0, r6, #0
	mov r1, #7
	add r2, r4, #0
	mov r3, #0
	bl sub_0204BBA0
	str r0, [r5, #0x24]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x28]
	add r0, r6, #0
	mov r1, #0x24
	add r2, r7, #0
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0x2c]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	mov r3, #0xe0
	bl sub_0204BBA0
	str r0, [r5, #0x3c]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0x2e
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x40]
	add r0, r6, #0
	mov r1, #0x22
	mov r2, #0x28
	add r3, r7, #0
	bl sub_0204BDE0
	add r4, r4, #1
	str r0, [r5, #0x44]
	cmp r4, #2
	blt _0219D822
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219d814

	thumb_func_start ovy185_219d894
ovy185_219d894: ; 0x0219D894
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _0219D8AA
	cmp r0, #1
	beq _0219D8CC
	add sp, #0xc
	pop {r4, r5, pc}
_0219D8AA:
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r0, [r5, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, pc}
_0219D8CC:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D946
	ldr r0, [r5]
	ldr r0, [r0, #0x6c]
	bl sub_02048210
	ldr r0, [r5]
	ldr r0, [r0, #0x54]
	bl ovy185_219f5d0
	ldr r0, [r5]
	ldr r0, [r0, #0x58]
	bl ovy185_219ebac
	ldr r0, [r5]
	ldr r0, [r0, #0x5c]
	bl ovy185_21a319c
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02022DA8
	ldr r0, [r4, #0x7c]
	bl sub_02021C44
	ldr r0, [r4, #0x7c]
	bl sub_02021A18
	mov r0, #0
	str r0, [r4, #0x7c]
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	ldr r2, _0219D94C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl ovy185_219d59c
_0219D946:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219D94C: .word 0x04000304
	thumb_func_end ovy185_219d894

	thumb_func_start ovy185_219d950
ovy185_219d950: ; 0x0219D950
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _0219DA00 ; =0x04000304
	ldr r6, [r0]
	ldrh r1, [r2]
	ldr r0, _0219DA04 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	ldr r0, _0219DA08 ; =0x021A6FF4
	bl sub_02046C40
	ldr r0, _0219DA0C ; =0x021A6EE4
	bl sub_02044710
	ldr r1, _0219DA10 ; =0x021A6F74
	mov r0, #0
	mov r2, #0
	mov r5, #0
	bl sub_0204476C
	ldr r1, _0219DA14 ; =0x021A6F94
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219DA18 ; =0x021A6F54
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219DA1C ; =0x021A6EF4
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219DA20 ; =0x021A6FD4
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219DA24 ; =0x021A6FB4
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219DA28 ; =0x021A6F34
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219DA2C ; =0x021A6F14
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r4, #1
_0219D9C0:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045738
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl sub_02044C98
	add r5, r5, #1
	cmp r5, #7
	ble _0219D9C0
	mov r0, #0x2a
	str r0, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FontCreate
	add r1, r6, #0
	add r1, #0x80
	str r0, [r1]
	mov r0, #5
	lsl r0, r0, #8
	mov r1, #0x2a
	bl sub_020219A8
	str r0, [r6, #0x7c]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219DA00: .word 0x04000304
_0219DA04: .word 0xFFFF7FFF
_0219DA08: .word 0x021A6FF4
_0219DA0C: .word 0x021A6EE4
_0219DA10: .word 0x021A6F74
_0219DA14: .word 0x021A6F94
_0219DA18: .word 0x021A6F54
_0219DA1C: .word 0x021A6EF4
_0219DA20: .word 0x021A6FD4
_0219DA24: .word 0x021A6FB4
_0219DA28: .word 0x021A6F34
_0219DA2C: .word 0x021A6F14
	thumb_func_end ovy185_219d950

	thumb_func_start ovy185_219da30
ovy185_219da30: ; 0x0219DA30
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0219DA42
	cmp r0, #1
	beq _0219DA62
	b _0219DA74
_0219DA42:
	mov r0, #5
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	ldr r0, [r4, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, pc}
_0219DA62:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219DA7A
	ldr r0, [r4, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, pc}
_0219DA74:
	add r0, r4, #0
	bl ovy185_219d59c
_0219DA7A:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219da30

	thumb_func_start ovy185_219da80
ovy185_219da80: ; 0x0219DA80
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	mov r1, #0
	add r0, r4, #0
	add r0, #0x74
	strb r1, [r0]
	ldr r0, [r4, #0x54]
	bl ovy185_219fb1c
	ldr r0, [r5, #4]
	bl sub_021A2FF4
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl ovy185_21a000c
	ldr r0, [r4, #0x64]
	bl ovy185_21a0588
	ldr r0, [r4, #0x64]
	bl ovy185_21a0624
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219da80

	thumb_func_start ovy185_219dab8
ovy185_219dab8: ; 0x0219DAB8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ovy185_219e704
	add r0, r4, #0
	bl ovy185_219d59c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219dab8

	thumb_func_start ovy185_219dad0
ovy185_219dad0: ; 0x0219DAD0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ovy185_219e774
	add r0, r4, #0
	bl ovy185_219d59c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219dad0

	thumb_func_start ovy185_219dae8
ovy185_219dae8: ; 0x0219DAE8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl sub_0219E7B0
	add r0, r4, #0
	bl ovy185_219d59c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219dae8

	thumb_func_start ovy185_219db00
ovy185_219db00: ; 0x0219DB00
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	mov r1, #1
	add r0, r4, #0
	add r0, #0x74
	strb r1, [r0]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl ovy185_219ffe4
	ldr r0, [r4, #0x54]
	bl sub_021A0004
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy185_21a085c
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219db00

	thumb_func_start ovy185_219db38
ovy185_219db38: ; 0x0219DB38
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	mov r1, #1
	add r0, r4, #0
	add r0, #0x74
	strb r1, [r0]
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl ovy185_219ffe4
	ldr r0, [r4, #0x54]
	bl sub_021A0004
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ovy185_21a085c
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219db38

	thumb_func_start ovy185_219db70
ovy185_219db70: ; 0x0219DB70
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	mov r1, #0
	add r0, r4, #0
	add r0, #0x74
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ovy185_21a085c
	ldr r0, [r4, #0x54]
	bl sub_021A0008
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl ovy185_219ffe4
	ldr r0, [r5, #4]
	bl sub_021A2FF4
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl ovy185_21a000c
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219db70

	thumb_func_start ovy185_219dbb8
ovy185_219dbb8: ; 0x0219DBB8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r5, [r6]
	cmp r0, #0
	beq _0219DBCE
	cmp r0, #1
	beq _0219DBEC
	cmp r0, #2
	beq _0219DC42
	pop {r4, r5, r6, pc}
_0219DBCE:
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ovy185_219ffe4
	ldr r0, [r6, #4]
	bl sub_021A2FF4
	add r1, r0, #0
	ldr r0, [r5, #0x54]
	bl ovy185_21a000c
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DBEC:
	ldr r0, [r6, #4]
	bl sub_021A30C0
	ldr r0, [r5, #0x64]
	bl ovy185_21a0538
	ldr r0, [r5, #0x54]
	bl sub_0219FFCC
	ldr r0, [r5, #0x54]
	bl sub_021A0004
	ldr r0, [r5, #0x58]
	bl ovy185_219f04c
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl ovy185_219f7d4
	ldr r0, [r6, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _0219DC22
	ldr r0, [r5, #0x58]
	bl ovy185_219f238
_0219DC22:
	ldr r0, [r6, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219DC32
	add r0, r6, #0
	mov r1, #2
	b _0219DC36
_0219DC32:
	add r0, r6, #0
	mov r1, #4
_0219DC36:
	bl ovy185_219e648
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DC42:
	ldr r0, [r5, #0x58]
	bl ovy185_219f064
	add r4, r0, #0
	ldr r0, [r5, #0x54]
	bl ovy185_219f834
	cmp r4, #0
	beq _0219DC74
	cmp r0, #0
	beq _0219DC74
	ldr r0, [r5, #0x18]
	bl sub_021A3004
	add r1, r0, #0
	ldr r0, [r5, #0x58]
	bl ovy185_219ef80
	ldr r0, [r5, #0x58]
	mov r1, #1
	bl ovy185_219ef38
	add r0, r6, #0
	bl ovy185_219d59c
_0219DC74:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_219dbb8

	thumb_func_start ovy185_219dc78
ovy185_219dc78: ; 0x0219DC78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _0219DC8E
	cmp r0, #1
	beq _0219DC92
	cmp r0, #2
	beq _0219DCBC
	pop {r3, r4, r5, pc}
_0219DC8E:
	add r0, r0, #1
	str r0, [r5, #0x14]
_0219DC92:
	ldr r0, [r4, #0x64]
	bl ovy185_21a0538
	ldr r0, [r4, #0x58]
	bl ovy185_219f1b8
	ldr r0, [r4, #0x58]
	bl ovy185_219f198
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _0219DCB4
	ldr r0, [r4, #0x58]
	bl ovy185_219f238
_0219DCB4:
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219DCBC:
	ldr r0, [r4, #0x58]
	bl sub_0219F234
	cmp r0, #0
	beq _0219DCCC
	add r0, r5, #0
	bl ovy185_219d59c
_0219DCCC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219dc78

	thumb_func_start ovy185_219dcd0
ovy185_219dcd0: ; 0x0219DCD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _0219DDAA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DCE8: ; jump table
	.short _0219DCF0 - _0219DCE8 - 2 ; case 0
	.short _0219DD08 - _0219DCE8 - 2 ; case 1
	.short _0219DD7C - _0219DCE8 - 2 ; case 2
	.short _0219DD8E - _0219DCE8 - 2 ; case 3
_0219DCF0:
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ovy185_21a07c4
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ovy185_219f2a0
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DD08:
	ldr r0, [r4, #0x58]
	mov r1, #0
	mov r7, #0
	bl ovy185_219f3ec
	add r6, r0, #0
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ovy185_21a0818
	cmp r6, #0
	beq _0219DDAA
	cmp r0, #0
	beq _0219DDAA
	ldr r0, [r4, #0x64]
	mov r1, #1
	bl ovy185_21a0850
	ldr r0, [r5, #4]
	bl sub_021A30C0
	ldr r0, [r4, #0x64]
	bl ovy185_21a0538
	ldr r0, [r4, #0x58]
	add r1, r7, #0
	bl ovy185_219ef38
	ldr r0, [r4, #0x58]
	bl ovy185_219f1b8
	ldr r0, [r4, #0x58]
	bl ovy185_219f198
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _0219DD5C
	ldr r0, [r4, #0x58]
	bl ovy185_219f238
_0219DD5C:
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219DD6C
	add r0, r5, #0
	mov r1, #2
	b _0219DD70
_0219DD6C:
	add r0, r5, #0
	mov r1, #4
_0219DD70:
	bl ovy185_219e648
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DD7C:
	ldr r0, [r4, #0x58]
	bl sub_0219F234
	cmp r0, #0
	beq _0219DDAA
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DD8E:
	ldr r0, [r4, #0x18]
	bl sub_021A3004
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl ovy185_219ef80
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl ovy185_219ef38
	add r0, r5, #0
	bl ovy185_219d59c
_0219DDAA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_219dcd0

	thumb_func_start ovy185_219ddac
ovy185_219ddac: ; 0x0219DDAC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r4, [r6]
	cmp r0, #3
	bhi _0219DEA2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DDC4: ; jump table
	.short _0219DDCC - _0219DDC4 - 2 ; case 0
	.short _0219DDF4 - _0219DDC4 - 2 ; case 1
	.short _0219DE2C - _0219DDC4 - 2 ; case 2
	.short _0219DE74 - _0219DDC4 - 2 ; case 3
_0219DDCC:
	ldr r0, [r6, #4]
	bl sub_021A2FBC
	cmp r0, #1
	ldr r0, [r4, #0x64]
	bne _0219DDE8
	mov r1, #0
	bl ovy185_21a07c4
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ovy185_219f2a0
	b _0219DDEC
_0219DDE8:
	bl ovy185_21a08e0
_0219DDEC:
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DDF4:
	ldr r0, [r6, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _0219DE12
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ovy185_219f3ec
	add r5, r0, #0
	ldr r0, [r4, #0x64]
	mov r1, #0
	bl ovy185_21a0818
	b _0219DE1C
_0219DE12:
	ldr r0, [r4, #0x64]
	bl ovy185_21a0908
	add r5, r0, #0
	mov r0, #1
_0219DE1C:
	cmp r5, #0
	beq _0219DEA2
	cmp r0, #0
	beq _0219DEA2
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DE2C:
	ldr r0, [r4, #0x64]
	bl ovy185_21a0430
	ldr r0, [r4, #0x58]
	mov r1, #0
	mov r5, #0
	bl ovy185_219ef38
	ldr r0, [r4, #0x58]
	bl ovy185_219f080
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl ovy185_219f7d4
	ldr r0, [r6, #4]
	bl sub_021A30A4
	cmp r0, #0
	bne _0219DE5E
	ldr r0, [r6, #4]
	bl sub_021A2FB8
	cmp r0, #2
	beq _0219DE64
_0219DE5E:
	add r0, r6, #0
	mov r1, #1
	b _0219DE68
_0219DE64:
	add r0, r6, #0
	add r1, r5, #0
_0219DE68:
	bl ovy185_219e648
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DE74:
	ldr r0, [r4, #0x58]
	bl ovy185_219f098
	add r5, r0, #0
	ldr r0, [r4, #0x54]
	bl ovy185_219f834
	cmp r5, #0
	beq _0219DEA2
	cmp r0, #0
	beq _0219DEA2
	ldr r0, [r4, #0x54]
	bl sub_021A0008
	ldr r0, [r4, #0x54]
	bl sub_0219FFD8
	mov r0, #0
	add r4, #0x74
	strb r0, [r4]
	add r0, r6, #0
	bl ovy185_219d59c
_0219DEA2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy185_219ddac

	thumb_func_start ovy185_219dea4
ovy185_219dea4: ; 0x0219DEA4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r4, [r6]
	cmp r0, #4
	bhi _0219DF98
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DEBC: ; jump table
	.short _0219DEC6 - _0219DEBC - 2 ; case 0
	.short _0219DECC - _0219DEBC - 2 ; case 1
	.short _0219DEEE - _0219DEBC - 2 ; case 2
	.short _0219DF10 - _0219DEBC - 2 ; case 3
	.short _0219DF5A - _0219DEBC - 2 ; case 4
_0219DEC6:
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DECC:
	ldr r0, [r4, #0x58]
	bl ovy185_219f4f0
	cmp r0, #0
	beq _0219DF98
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ovy185_219ef38
	ldr r0, [r4, #0x64]
	mov r1, #3
	bl ovy185_21a07c4
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DEEE:
	ldr r0, [r4, #0x64]
	mov r1, #3
	bl ovy185_21a0818
	cmp r0, #0
	beq _0219DF98
	ldr r0, [r4, #0x58]
	bl ovy185_219f118
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ovy185_219f2a0
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DF10:
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ovy185_219f3ec
	add r5, r0, #0
	ldr r0, [r4, #0x58]
	bl ovy185_219f134
	cmp r5, #0
	beq _0219DF98
	cmp r0, #0
	beq _0219DF98
	ldr r0, [r4, #0x64]
	bl ovy185_21a0568
	ldr r0, [r4, #0x5c]
	bl ovy185_21a32d0
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3380
	ldr r0, [r6, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219DF4A
	add r0, r6, #0
	mov r1, #3
	b _0219DF4E
_0219DF4A:
	add r0, r6, #0
	mov r1, #5
_0219DF4E:
	bl ovy185_219e648
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219DF5A:
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3438
	cmp r0, #0
	beq _0219DF98
	ldr r0, [r4, #0x18]
	bl ovy185_21a3064
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3544
	ldr r0, [r4, #0x18]
	bl sub_021A308C
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_021A3098
	add r2, r0, #0
	ldr r0, [r4, #0x5c]
	add r1, r5, #0
	bl ovy185_21a3690
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl ovy185_21a3500
	add r0, r6, #0
	bl ovy185_219d59c
_0219DF98:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_219dea4

	thumb_func_start ovy185_219df9c
ovy185_219df9c: ; 0x0219DF9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_021A30DC
	add r7, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #6
	bhi _0219E0AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DFBC: ; jump table
	.short _0219DFCA - _0219DFBC - 2 ; case 0
	.short _0219DFD8 - _0219DFBC - 2 ; case 1
	.short _0219DFEA - _0219DFBC - 2 ; case 2
	.short _0219DFF8 - _0219DFBC - 2 ; case 3
	.short _0219E00E - _0219DFBC - 2 ; case 4
	.short _0219E026 - _0219DFBC - 2 ; case 5
	.short _0219E070 - _0219DFBC - 2 ; case 6
_0219DFCA:
	ldr r0, [r5, #0x64]
	bl ovy185_21a08e0
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DFD8:
	ldr r0, [r5, #0x64]
	bl ovy185_21a0908
	cmp r0, #0
	beq _0219E0AA
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DFEA:
	ldr r0, [r5, #0x64]
	bl ovy185_21a0538
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219DFF8:
	ldr r0, [r5, #0x5c]
	mov r1, #0
	bl ovy185_21a3500
	ldr r0, [r5, #0x5c]
	bl ovy185_21a345c
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219E00E:
	ldr r0, [r5, #0x5c]
	bl ovy185_21a3480
	cmp r0, #0
	beq _0219E0AA
	ldr r0, [r5, #0x58]
	bl ovy185_219f198
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219E026:
	ldr r0, [r4]
	mov r1, #0
	mov r6, #0
	bl ovy185_219e60c
	ldr r0, [r5, #0x58]
	bl ovy185_219f150
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219E042
	b _0219E048
_0219E042:
	cmp r7, #0
	beq _0219E048
	mov r6, #1
_0219E048:
	ldr r0, [r5, #0x58]
	add r1, r6, #0
	bl ovy185_219f2a0
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219E060
	add r0, r4, #0
	mov r1, #2
	b _0219E064
_0219E060:
	add r0, r4, #0
	mov r1, #4
_0219E064:
	bl ovy185_219e648
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0219E070:
	ldr r0, [r5, #0x58]
	bl sub_0219F18C
	add r6, r0, #0
	mov r1, #1
	cmp r7, #0
	bne _0219E080
	mov r1, #0
_0219E080:
	ldr r0, [r5, #0x58]
	bl ovy185_219f3ec
	cmp r6, #0
	beq _0219E0AA
	cmp r0, #0
	beq _0219E0AA
	ldr r0, [r5, #0x18]
	bl sub_021A3004
	add r1, r0, #0
	ldr r0, [r5, #0x58]
	bl ovy185_219ef80
	ldr r0, [r5, #0x58]
	mov r1, #1
	bl ovy185_219ef38
	add r0, r4, #0
	bl ovy185_219d59c
_0219E0AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_219df9c

	thumb_func_start ovy185_219e0ac
ovy185_219e0ac: ; 0x0219E0AC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r4, [r6]
	cmp r0, #4
	bhi _0219E1A0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219E0C4: ; jump table
	.short _0219E0CE - _0219E0C4 - 2 ; case 0
	.short _0219E0D4 - _0219E0C4 - 2 ; case 1
	.short _0219E102 - _0219E0C4 - 2 ; case 2
	.short _0219E158 - _0219E0C4 - 2 ; case 3
	.short _0219E170 - _0219E0C4 - 2 ; case 4
_0219E0CE:
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219E0D4:
	ldr r0, [r4, #0x5c]
	bl ovy185_21a39dc
	cmp r0, #0
	beq _0219E1A0
	ldr r0, [r4, #0x64]
	bl ovy185_21a0430
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ovy185_21a3500
	ldr r0, [r4, #0x5c]
	bl ovy185_21a345c
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl ovy185_219f7d4
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219E102:
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3480
	add r5, r0, #0
	ldr r0, [r4, #0x54]
	bl ovy185_219f834
	cmp r5, #0
	beq _0219E1A0
	cmp r0, #0
	beq _0219E1A0
	ldr r0, [r4, #0x58]
	bl sub_0219F0E4
	ldr r0, [r6]
	mov r1, #0
	mov r5, #0
	bl ovy185_219e60c
	ldr r0, [r4, #0x58]
	bl ovy185_219f150
	ldr r0, [r6, #4]
	bl sub_021A30A4
	cmp r0, #0
	bne _0219E142
	ldr r0, [r6, #4]
	bl sub_021A2FB8
	cmp r0, #2
	beq _0219E148
_0219E142:
	add r0, r6, #0
	mov r1, #1
	b _0219E14C
_0219E148:
	add r0, r6, #0
	add r1, r5, #0
_0219E14C:
	bl ovy185_219e648
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219E158:
	ldr r0, [r4, #0x58]
	bl sub_0219F18C
	cmp r0, #0
	beq _0219E1A0
	ldr r0, [r4, #0x58]
	bl ovy185_219f0f4
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, pc}
_0219E170:
	ldr r0, [r4, #0x58]
	bl sub_0219F10C
	cmp r0, #0
	beq _0219E1A0
	ldr r0, [r4, #0x54]
	bl ovy185_219fb1c
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl ovy185_219ffe4
	ldr r0, [r4, #0x54]
	bl sub_021A0008
	ldr r0, [r4, #0x54]
	bl sub_0219FFD8
	mov r0, #0
	add r4, #0x74
	strb r0, [r4]
	add r0, r6, #0
	bl ovy185_219d59c
_0219E1A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_219e0ac

	thumb_func_start ovy185_219e1a4
ovy185_219e1a4: ; 0x0219E1A4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #3
	bhi _0219E236
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219E1BC: ; jump table
	.short _0219E1C4 - _0219E1BC - 2 ; case 0
	.short _0219E1DA - _0219E1BC - 2 ; case 1
	.short _0219E200 - _0219E1BC - 2 ; case 2
	.short _0219E218 - _0219E1BC - 2 ; case 3
_0219E1C4:
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ovy185_21a3500
	ldr r0, [r4, #0x5c]
	bl ovy185_21a345c
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E1DA:
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3480
	cmp r0, #0
	beq _0219E236
	ldr r0, [r4, #0x58]
	bl sub_0219F0E4
	ldr r0, [r5]
	mov r1, #0
	bl ovy185_219e60c
	ldr r0, [r4, #0x58]
	bl ovy185_219f150
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E200:
	ldr r0, [r4, #0x58]
	bl sub_0219F18C
	cmp r0, #0
	beq _0219E236
	ldr r0, [r4, #0x58]
	bl ovy185_219f0f4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E218:
	ldr r0, [r4, #0x58]
	bl sub_0219F10C
	cmp r0, #0
	beq _0219E236
	ldr r0, [r4, #0x54]
	bl ovy185_219fb1c
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl ovy185_219ffe4
	add r0, r5, #0
	bl ovy185_219d59c
_0219E236:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e1a4

	thumb_func_start ovy185_219e238
ovy185_219e238: ; 0x0219E238
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl sub_021A2FF4
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl ovy185_21a000c
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e238

	thumb_func_start ovy185_219e254
ovy185_219e254: ; 0x0219E254
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy185_21a085c
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e254

	thumb_func_start ovy185_219e278
ovy185_219e278: ; 0x0219E278
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl sub_021A3004
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl ovy185_219ef80
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e278

	thumb_func_start ovy185_219e294
ovy185_219e294: ; 0x0219E294
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl ovy185_21a3064
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3544
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e294

	thumb_func_start ovy185_219e2b0
ovy185_219e2b0: ; 0x0219E2B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _0219E2C2
	cmp r0, #1
	beq _0219E2D8
	pop {r3, r4, r5, pc}
_0219E2C2:
	ldr r0, [r4, #0x18]
	bl sub_021A3080
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3584
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E2D8:
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3640
	cmp r0, #0
	beq _0219E2E8
	add r0, r5, #0
	bl ovy185_219d59c
_0219E2E8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e2b0

	thumb_func_start ovy185_219e2ec
ovy185_219e2ec: ; 0x0219E2EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy185_21a089c
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e2ec
_0219E310:
	.byte 0x01, 0x4B, 0x08, 0x1C, 0x18, 0x47, 0xC0, 0x46, 0x9D, 0xD5, 0x19, 0x02

	thumb_func_start ovy185_219e31c
ovy185_219e31c: ; 0x0219E31C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #1
	beq _0219E332
	ldr r0, [r1, #0x54]
	bl sub_0219FFD8
_0219E332:
	add r0, r4, #0
	bl ovy185_219d59c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219e31c
_0219E33C:
	.byte 0x01, 0x4B, 0x08, 0x1C
	.byte 0x18, 0x47, 0xC0, 0x46, 0x9D, 0xD5, 0x19, 0x02, 0x01, 0x4B, 0x08, 0x1C, 0x18, 0x47, 0xC0, 0x46
	.byte 0x9D, 0xD5, 0x19, 0x02, 0x01, 0x4B, 0x08, 0x1C, 0x18, 0x47, 0xC0, 0x46, 0x9D, 0xD5, 0x19, 0x02
	.byte 0x01, 0x4B, 0x08, 0x1C, 0x18, 0x47, 0xC0, 0x46, 0x9D, 0xD5, 0x19, 0x02

	thumb_func_start ovy185_219e36c
ovy185_219e36c: ; 0x0219E36C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_021A30DC
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0219E38A
	cmp r0, #1
	beq _0219E3AC
	cmp r0, #2
	beq _0219E3C6
	pop {r4, r5, r6, pc}
_0219E38A:
	ldr r0, [r4, #0x64]
	bl ovy185_21a0660
	ldr r0, [r4, #0x58]
	bl ovy185_219f238
	mov r1, #1
	cmp r6, #0
	bne _0219E39E
	mov r1, #0
_0219E39E:
	ldr r0, [r4, #0x58]
	bl ovy185_219f2a0
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0219E3AC:
	mov r1, #1
	cmp r6, #0
	bne _0219E3B4
	mov r1, #0
_0219E3B4:
	ldr r0, [r4, #0x58]
	bl ovy185_219f3ec
	cmp r0, #0
	beq _0219E3CC
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0219E3C6:
	add r0, r5, #0
	bl ovy185_219d59c
_0219E3CC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_219e36c

	thumb_func_start ovy185_219e3d0
ovy185_219e3d0: ; 0x0219E3D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r5]
	ldr r0, [r4, #0x18]
	bl sub_021A308C
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	bl ovy185_21a3320
	add r0, r5, #0
	bl ovy185_219d59c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e3d0

	thumb_func_start ovy185_219e3ec
ovy185_219e3ec: ; 0x0219E3EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _0219E3FE
	cmp r0, #1
	beq _0219E40E
	pop {r3, r4, r5, pc}
_0219E3FE:
	ldr r0, [r4, #0x64]
	mov r1, #2
	bl ovy185_21a07c4
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E40E:
	ldr r0, [r4, #0x64]
	mov r1, #2
	bl ovy185_21a0818
	cmp r0, #0
	beq _0219E44E
	ldr r0, [r4, #0x78]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219E43E
	ldr r0, [r4, #0x18]
	bl sub_021A3004
	cmp r0, #0xfd
	bne _0219E43E
	ldr r0, [r4, #0x18]
	bl sub_021A300C
	cmp r0, #0xfd
	bne _0219E43E
	ldr r0, [r4, #0x64]
	mov r1, #1
	mov r2, #1
	b _0219E444
_0219E43E:
	ldr r0, [r4, #0x64]
	mov r1, #0
	mov r2, #0
_0219E444:
	bl ovy185_21a085c
	add r0, r5, #0
	bl ovy185_219d59c
_0219E44E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e3ec

	thumb_func_start ovy185_219e450
ovy185_219e450: ; 0x0219E450
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _0219E462
	cmp r0, #1
	beq _0219E478
	pop {r3, r4, r5, pc}
_0219E462:
	ldr r0, [r4, #0x18]
	bl sub_021A3004
	add r1, r0, #0
	ldr r0, [r4, #0x58]
	bl ovy185_219f464
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E478:
	ldr r0, [r4, #0x58]
	bl ovy185_219f4f0
	cmp r0, #0
	beq _0219E488
	add r0, r5, #0
	bl ovy185_219d59c
_0219E488:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e450

	thumb_func_start ovy185_219e48c
ovy185_219e48c: ; 0x0219E48C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r5]
	cmp r0, #0
	beq _0219E49E
	cmp r0, #1
	beq _0219E4B4
	pop {r3, r4, r5, pc}
_0219E49E:
	ldr r0, [r4, #0x18]
	bl ovy185_21a3064
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	bl ovy185_21a398c
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
_0219E4B4:
	ldr r0, [r4, #0x5c]
	bl ovy185_21a39dc
	cmp r0, #0
	beq _0219E4C4
	add r0, r5, #0
	bl ovy185_219d59c
_0219E4C4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e48c

	thumb_func_start sub_0219E4C8
sub_0219E4C8: ; 0x0219E4C8
	ldr r0, [r0, #0x54]
	ldr r3, _0219E4D0 ; =sub_0219FFBC
	bx r3
	nop
_0219E4D0: .word sub_0219FFBC
	thumb_func_end sub_0219E4C8

	thumb_func_start sub_0219E4D4
sub_0219E4D4: ; 0x0219E4D4
	ldr r0, [r0, #0x54]
	ldr r3, _0219E4DC ; =sub_0219FFC0
	bx r3
	nop
_0219E4DC: .word sub_0219FFC0
	thumb_func_end sub_0219E4D4

	thumb_func_start sub_0219E4E0
sub_0219E4E0: ; 0x0219E4E0
	ldr r0, [r0, #0x54]
	ldr r3, _0219E4E8 ; =sub_0219FC00
	bx r3
	nop
_0219E4E8: .word sub_0219FC00
	thumb_func_end sub_0219E4E0

	thumb_func_start ovy185_219e4ec
ovy185_219e4ec: ; 0x0219E4EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	bl sub_021A08D0
	cmp r0, #0
	beq _0219E50A
	mov r0, #1
	pop {r4, pc}
_0219E50A:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ovy185_219e4ec

	thumb_func_start sub_0219E510
sub_0219E510: ; 0x0219E510
	ldr r0, [r0, #0x64]
	ldr r3, _0219E518 ; =ovy185_21a07f8
	bx r3
	nop
_0219E518: .word ovy185_21a07f8
	thumb_func_end sub_0219E510

	thumb_func_start sub_0219E51C
sub_0219E51C: ; 0x0219E51C
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end sub_0219E51C

	thumb_func_start sub_0219E520
sub_0219E520: ; 0x0219E520
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_0219E520

	thumb_func_start sub_0219E524
sub_0219E524: ; 0x0219E524
	add r0, #0x80
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E524

	thumb_func_start sub_0219E52C
sub_0219E52C: ; 0x0219E52C
	ldr r0, [r0, #0x7c]
	bx lr
	thumb_func_end sub_0219E52C

	thumb_func_start sub_0219E530
sub_0219E530: ; 0x0219E530
	add r3, r1, #0
	mov r1, #0xc
	mul r1, r2
	add r2, r0, r1
	add r2, #0x3c
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0219E530

	thumb_func_start sub_0219E544
sub_0219E544: ; 0x0219E544
	add r3, r1, #0
	mov r1, #0xc
	mul r1, r2
	add r2, r0, r1
	add r2, #0x24
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end sub_0219E544

	thumb_func_start ovy185_219e558
ovy185_219e558: ; 0x0219E558
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, sp, #0xc
	add r6, r1, #0
	strh r2, [r0]
	ldr r1, [sp, #0x28]
	strh r3, [r0, #2]
	strb r1, [r0, #6]
	mov r1, #0
	strb r1, [r0, #7]
	strh r1, [r0, #4]
	ldr r0, [sp, #0x2c]
	cmp r0, #2
	bne _0219E578
	mov r1, #1
_0219E578:
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	blx OS_DisableInterrupts
	add r7, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [r6, #4]
	ldr r2, [r6]
	ldr r3, [r6, #8]
	bl sub_0204C040
	add r4, r0, #0
	add r0, r7, #0
	blx OS_RestoreInterrupts
	cmp r4, #0
	beq _0219E5B6
	add r0, r4, #0
	mov r5, #1
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	lsl r1, r5, #0xc
	bl sub_0204C53C
_0219E5B6:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy185_219e558

	thumb_func_start ovy185_219e5bc
ovy185_219e5bc: ; 0x0219E5BC
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r0, #0x5c]
	add r1, sp, #0
	add r4, r2, #0
	bl ovy185_21a3674
	cmp r0, #0
	bne _0219E5D4
	add sp, #4
	mov r0, #3
	pop {r3, r4, pc}
_0219E5D4:
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	cmp r4, r1
	bhs _0219E5E4
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_0219E5E4:
	cmp r4, r1
	bhi _0219E5F0
	mov r0, #0
	cmp r4, r1
	beq _0219E5F0
	mov r0, #3
_0219E5F0:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy185_219e5bc

	thumb_func_start sub_0219E5F4
sub_0219E5F4: ; 0x0219E5F4
	ldr r0, [r0, #0x5c]
	ldr r3, _0219E5FC ; =ovy185_21a3704
	bx r3
	nop
_0219E5FC: .word ovy185_21a3704
	thumb_func_end sub_0219E5F4

	thumb_func_start sub_0219E600
sub_0219E600: ; 0x0219E600
	ldr r0, [r0, #0x5c]
	ldr r3, _0219E608 ; =ovy185_21a3740
	bx r3
	nop
_0219E608: .word ovy185_21a3740
	thumb_func_end sub_0219E600

	thumb_func_start ovy185_219e60c
ovy185_219e60c: ; 0x0219E60C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	beq _0219E61C
	mov r1, #0x1d
	mov r0, #0x60
	b _0219E620
_0219E61C:
	mov r1, #0x1c
	mov r0, #0
_0219E620:
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x2a
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r2, #3
	bl sub_0204AFD8
	add r0, r5, #0
	add r5, #0x88
	mov r1, #1
	add r0, #0x84
	str r1, [r0]
	str r4, [r5]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e60c

	thumb_func_start ovy185_219e648
ovy185_219e648: ; 0x0219E648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _0219E6C0 ; =0x021A7024
	add r2, sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	ldr r0, [r0, #0x6c]
	bl sub_020484F4
	mov r1, #7
	bl sub_0204713C
	mov r0, #0
	mov r1, #2
	mov r2, #0x9f
	mov r3, #0x2a
	bl GFL_MsgSysLoadData
	lsl r1, r4, #2
	ldr r1, [r6, r1]
	add r7, r0, #0
	bl sub_0204898C
	ldr r4, [r5]
	add r6, r0, #0
	ldr r0, [r4, #0x6c]
	bl sub_020484F4
	str r6, [sp]
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	mov r2, #2
	str r0, [sp, #4]
	ldr r0, _0219E6C4 ; =0x000039E7
	mov r3, #4
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0, #0x7c]
	bl sub_02021C7C
	ldr r0, [r5]
	mov r1, #1
	str r1, [r0, #0x70]
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_MsgDataFree
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E6C0: .word 0x021A7024
_0219E6C4: .word 0x000039E7
	thumb_func_end ovy185_219e648

	thumb_func_start ovy185_219e6c8
ovy185_219e6c8: ; 0x0219E6C8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0219E700
	ldr r0, [r4, #0x6c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x7c]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E700
	ldr r5, [r4, #0x6c]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, #0x70]
_0219E700:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e6c8

	thumb_func_start ovy185_219e704
ovy185_219e704: ; 0x0219E704
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	ldr r0, [r0]
	cmp r0, #1
	bne _0219E72E
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl ovy185_219ffe4
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ovy185_21a085c
	pop {r4, pc}
_0219E72E:
	add r0, r4, #0
	add r0, #0x74
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, [r4, #0x54]
	bne _0219E756
	mov r1, #0
	bl ovy185_219ffe4
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ovy185_21a085c
	pop {r4, pc}
_0219E756:
	mov r1, #1
	bl ovy185_219ffe4
	ldr r0, [r4, #0x18]
	bl sub_021A2FFC
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x64]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ovy185_21a085c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219e704

	thumb_func_start ovy185_219e774
ovy185_219e774: ; 0x0219E774
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r1, #0
	mov r1, #1
	bl ovy185_219ef38
	ldr r0, [r5, #0x78]
	ldr r0, [r0]
	cmp r0, #1
	bne _0219E7A0
	add r0, r4, #0
	bl sub_021A2FBC
	cmp r0, #1
	bne _0219E7AE
	ldr r0, [r5, #0x64]
	mov r1, #0
	mov r2, #0
	bl ovy185_21a085c
	pop {r3, r4, r5, pc}
_0219E7A0:
	ldr r0, [r5, #0x18]
	bl sub_021A3004
	add r1, r0, #0
	ldr r0, [r5, #0x58]
	bl ovy185_219ef80
_0219E7AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219e774

	thumb_func_start sub_0219E7B0
sub_0219E7B0: ; 0x0219E7B0
	ldr r0, [r0, #0x5c]
	ldr r3, _0219E7B8 ; =ovy185_21a3500
	mov r1, #1
	bx r3
	.align 2, 0
_0219E7B8: .word ovy185_21a3500
	thumb_func_end sub_0219E7B0

	thumb_func_start ovy185_219e7bc
ovy185_219e7bc: ; 0x0219E7BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #0x89
	str r0, [sp]
	ldr r1, _0219E820 ; =0x00000AF4
	ldr r3, _0219E824 ; =0x021A7514
	add r0, r6, #0
	mov r2, #1
	bl sub_0203A1FC
	add r5, r0, #0
	str r4, [r5]
	str r7, [r5, #4]
	strh r6, [r5, #8]
	bl ovy185_219e8c4
	ldr r7, _0219E828 ; =0x021A7050
	mov r4, #0
_0219E7E4:
	lsl r2, r4, #1
	ldrh r2, [r7, r2]
	mov r0, #1
	mov r1, #2
	add r3, r6, #0
	bl GFL_MsgSysLoadData
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0xc]
	cmp r4, #0x1b
	blt _0219E7E4
	ldrh r2, [r5, #8]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0x1b
	bl sub_0219A438
	str r0, [r5, #0x78]
	mov r0, #0x1b
	add r1, r6, #0
	bl GFL_StrBufCreate
	mov r1, #0xad
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E820: .word 0x00000AF4
_0219E824: .word 0x021A7514
_0219E828: .word 0x021A7050
	thumb_func_end ovy185_219e7bc

	thumb_func_start ovy185_219e82c
ovy185_219e82c: ; 0x0219E82C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xad
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	ldr r0, [r5, #0x78]
	bl sub_0219A490
	mov r4, #0
_0219E842:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl GFL_MsgDataFree
	add r4, r4, #1
	cmp r4, #0x1b
	blt _0219E842
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219e82c

	thumb_func_start ovy185_219e85c
ovy185_219e85c: ; 0x0219E85C
	push {r3, r4}
	mov r3, #0xaf
	lsl r3, r3, #4
	ldrb r2, [r0, r3]
	lsl r2, r2, #1
	add r4, r0, r2
	add r2, r3, #0
	sub r2, #0x1c
	strh r1, [r4, r2]
	ldrb r1, [r0, r3]
	add r2, r1, #1
	cmp r2, #0xc
	ble _0219E87A
	mov r2, #0xc
	b _0219E880
_0219E87A:
	cmp r2, #0
	bge _0219E880
	mov r2, #0
_0219E880:
	mov r1, #0xaf
	lsl r1, r1, #4
	strb r2, [r0, r1]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy185_219e85c

	thumb_func_start sub_0219E88C
sub_0219E88C: ; 0x0219E88C
	mov r2, #0xaf
	lsl r2, r2, #4
	ldrb r3, [r0, r2]
	cmp r3, #0
	bne _0219E89A
	mov r0, #0
	bx lr
_0219E89A:
	sub r1, r2, #4
	ldrh r1, [r0, r1]
	cmp r1, #0xff
	bne _0219E8A6
	sub r1, r3, #1
	strb r1, [r0, r2]
_0219E8A6:
	mov r1, #0xaf
	lsl r1, r1, #4
	ldrb r2, [r0, r1]
	mov r3, #0xff
	sub r1, #0x1c
	lsl r2, r2, #1
	add r0, r0, r2
	strh r3, [r0, r1]
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E88C

	thumb_func_start sub_0219E8BC
sub_0219E8BC: ; 0x0219E8BC
	mov r1, #0xaf
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end sub_0219E8BC

	thumb_func_start ovy185_219e8c4
ovy185_219e8c4: ; 0x0219E8C4
	push {r3, r4}
	ldr r1, _0219E8E8 ; =0x00000AD4
	mov r4, #0
	mov r3, #0xff
_0219E8CC:
	lsl r2, r4, #1
	add r2, r0, r2
	add r4, r4, #1
	strh r3, [r2, r1]
	cmp r4, #0xd
	blt _0219E8CC
	mov r1, #0xaf
	mov r2, #0
	lsl r1, r1, #4
	strb r2, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0219E8E8: .word 0x00000AD4
	thumb_func_end ovy185_219e8c4

	thumb_func_start ovy185_219e8ec
ovy185_219e8ec: ; 0x0219E8EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp]
	mov r4, #0
	add r7, sp, #4
_0219E8F8:
	lsl r6, r4, #1
	ldr r0, _0219E930 ; =0x00000AD4
	add r1, r5, r6
	ldrh r0, [r1, r0]
	cmp r0, #0xff
	bne _0219E90E
	bl sub_020486F4
	add r1, sp, #4
	strh r0, [r1, r6]
	b _0219E91C
_0219E90E:
	bl sub_0219EAF4
	add r1, r6, #0
	add r4, r4, #1
	strh r0, [r7, r1]
	cmp r4, #0xd
	blt _0219E8F8
_0219E91C:
	bl sub_020486F4
	add r1, sp, #4
	strh r0, [r1, #0x1a]
	ldr r0, [sp]
	add r1, sp, #4
	bl sub_02048614
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E930: .word 0x00000AD4
	thumb_func_end ovy185_219e8ec

	thumb_func_start ovy185_219e934
ovy185_219e934: ; 0x0219E934
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x3c
	ldr r4, _0219EA8C ; =0x00000AD4
	add r5, r0, #0
	ldrh r0, [r5, r4]
	str r0, [sp, #8]
	cmp r0, #0x1b
	blo _0219E956
	add sp, #0x1fc
	add sp, #0x1fc
	mov r0, #0
	add r4, #0x1d
	add sp, #0x3c
	strb r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_0219E956:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02048570
	sub r1, r4, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy185_219e8ec
	ldr r0, [sp, #8]
	cmp r0, #0x1a
	bne _0219EA0C
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl sub_020489E8
	str r0, [sp, #0xc]
	add r1, sp, #0x220
	ldr r0, _0219EA90 ; =0x00000109
	mov r6, #0
	add r1, #2
_0219E982:
	strh r6, [r1]
	add r1, r1, #2
	sub r0, r0, #1
	bne _0219E982
	ldr r0, [sp, #0xc]
	mov r7, #0
	cmp r0, #0
	bls _0219E9D6
	ldr r4, _0219EA94 ; =0x021A703C
_0219E994:
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl ovy185_219d2d0
	mov r3, #0
	mov r1, #0
_0219E9A2:
	lsl r2, r1, #1
	ldrh r2, [r4, r2]
	cmp r0, r2
	bne _0219E9AE
	mov r3, #1
	b _0219E9B4
_0219E9AE:
	add r1, r1, #1
	cmp r1, #0xa
	blo _0219E9A2
_0219E9B4:
	cmp r3, #0
	bne _0219E9CE
	lsl r1, r6, #3
	add r2, r5, r1
	ldr r1, [sp, #8]
	str r1, [r2, #0x7c]
	add r2, #0x80
	add r1, sp, #0x220
	str r7, [r2]
	lsl r2, r6, #1
	add r1, #2
	strh r0, [r1, r2]
	add r6, r6, #1
_0219E9CE:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	cmp r7, r0
	blo _0219E994
_0219E9D6:
	ldr r0, [r5, #4]
	bl sub_0219D328
	add r1, sp, #0x220
	lsl r2, r6, #1
	add r1, #2
	strh r0, [r1, r2]
	ldr r2, _0219EA98 ; =0x000008BC
	ldr r0, [r5, #4]
	add r2, r5, r2
	bl ovy185_219d2b8
	ldr r1, _0219EA9C ; =0x00000AF1
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r0, #0
	beq _0219EA02
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219EA02:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x3c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219EA0C:
	ldr r1, _0219EA90 ; =0x00000109
	add r2, sp, #0x10
	mov r0, #0
_0219EA12:
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0219EA12
	add r0, r5, #0
	add r0, #0x7c
	str r0, [sp]
	mov r0, #0x42
	lsl r0, r0, #2
	mov r3, #0xad
	str r0, [sp, #4]
	lsl r3, r3, #4
	ldr r0, [r5, #0x78]
	ldr r1, [sp, #8]
	ldr r3, [r5, r3]
	mov r2, #0
	mov r4, #0
	bl sub_0219A4A4
	add r6, r0, #0
	beq _0219EA58
	add r7, sp, #0x10
_0219EA3E:
	lsl r2, r4, #3
	add r2, r5, r2
	add r2, #0x80
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	ldr r2, [r2]
	bl ovy185_219d2d0
	lsl r1, r4, #1
	add r4, r4, #1
	strh r0, [r7, r1]
	cmp r4, r6
	blo _0219EA3E
_0219EA58:
	ldr r0, [r5, #4]
	bl sub_0219D328
	lsl r2, r6, #1
	add r1, sp, #0x10
	strh r0, [r1, r2]
	ldr r2, _0219EA98 ; =0x000008BC
	ldr r0, [r5, #4]
	add r2, r5, r2
	bl ovy185_219d2b8
	ldr r1, _0219EA9C ; =0x00000AF1
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	cmp r0, #0
	beq _0219EA82
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219EA82:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219EA8C: .word 0x00000AD4
_0219EA90: .word 0x00000109
_0219EA94: .word 0x021A703C
_0219EA98: .word 0x000008BC
_0219EA9C: .word 0x00000AF1
	thumb_func_end ovy185_219e934

	thumb_func_start sub_0219EAA0
sub_0219EAA0: ; 0x0219EAA0
	ldr r1, _0219EAA8 ; =0x00000AF1
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219EAA8: .word 0x00000AF1
	thumb_func_end sub_0219EAA0

	thumb_func_start sub_0219EAAC
sub_0219EAAC: ; 0x0219EAAC
	add r3, r0, #0
	lsl r1, r1, #1
	ldr r0, [r3, #4]
	add r3, r3, r1
	ldr r1, _0219EABC ; =0x000008BC
	ldrh r1, [r3, r1]
	ldr r3, _0219EAC0 ; =sub_0219D31C
	bx r3
	.align 2, 0
_0219EABC: .word 0x000008BC
_0219EAC0: .word sub_0219D31C
	thumb_func_end sub_0219EAAC

	thumb_func_start sub_0219EAC4
sub_0219EAC4: ; 0x0219EAC4
	lsl r1, r1, #1
	add r1, r0, r1
	ldr r0, _0219EAD0 ; =0x000008BC
	ldrh r0, [r1, r0]
	bx lr
	nop
_0219EAD0: .word 0x000008BC
	thumb_func_end sub_0219EAC4

	thumb_func_start sub_0219EAD4
sub_0219EAD4: ; 0x0219EAD4
	mov r0, #0x1b
	bx lr
	thumb_func_end sub_0219EAD4

	thumb_func_start sub_0219EAD8
sub_0219EAD8: ; 0x0219EAD8
	add r3, r0, #0
	add r0, r1, #0
	mov r1, #0xa
	mul r1, r3
	ldr r2, _0219EAEC ; =0x021A7088
	ldr r3, _0219EAF0 ; =sub_02048658
	add r1, r2, r1
	mov r2, #2
	bx r3
	nop
_0219EAEC: .word 0x021A7088
_0219EAF0: .word sub_02048658
	thumb_func_end sub_0219EAD8

	thumb_func_start sub_0219EAF4
sub_0219EAF4: ; 0x0219EAF4
	mov r1, #0xa
	mul r1, r0
	ldr r0, _0219EB00 ; =0x021A7088
	ldrh r0, [r0, r1]
	bx lr
	nop
_0219EB00: .word 0x021A7088
	thumb_func_end sub_0219EAF4

	thumb_func_start sub_0219EB04
sub_0219EB04: ; 0x0219EB04
	mov r3, #0xa
	mul r3, r0
	ldr r0, _0219EB18 ; =0x021A708A
	ldrb r0, [r0, r3]
	str r0, [r1]
	ldr r0, _0219EB1C ; =0x021A708B
	ldrb r0, [r0, r3]
	str r0, [r2]
	bx lr
	nop
_0219EB18: .word 0x021A708A
_0219EB1C: .word 0x021A708B
	thumb_func_end sub_0219EB04

	thumb_func_start sub_0219EB20
sub_0219EB20: ; 0x0219EB20
	mov r1, #0xa
	mul r1, r0
	ldr r0, _0219EB2C ; =0x021A708C
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219EB2C: .word 0x021A708C
	thumb_func_end sub_0219EB20

	thumb_func_start sub_0219EB30
sub_0219EB30: ; 0x0219EB30
	mov r1, #0xa
	mul r1, r0
	ldr r0, _0219EB3C ; =0x021A708D
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219EB3C: .word 0x021A708D
	thumb_func_end sub_0219EB30

	thumb_func_start sub_0219EB40
sub_0219EB40: ; 0x0219EB40
	mov r1, #0xa
	mul r1, r0
	ldr r0, _0219EB4C ; =0x021A708E
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219EB4C: .word 0x021A708E
	thumb_func_end sub_0219EB40

	thumb_func_start sub_0219EB50
sub_0219EB50: ; 0x0219EB50
	mov r1, #0xa
	mul r1, r0
	ldr r0, _0219EB5C ; =0x021A708F
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219EB5C: .word 0x021A708F
	thumb_func_end sub_0219EB50

	thumb_func_start sub_0219EB60
sub_0219EB60: ; 0x0219EB60
	mov r1, #0xa
	mul r1, r0
	ldr r0, _0219EB6C ; =0x021A7091
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219EB6C: .word 0x021A7091
	thumb_func_end sub_0219EB60

	thumb_func_start ovy185_219eb70
ovy185_219eb70: ; 0x0219EB70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xde
	add r5, r1, #0
	add r7, r2, #0
	str r0, [sp]
	ldr r3, _0219EBA8 ; =0x021A7524
	mov r0, #0x2a
	mov r1, #0xa4
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r6, [r4]
	str r5, [r4, #4]
	str r7, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	add r0, r5, #0
	bl sub_021A2FB4
	str r0, [r4, #0x5c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EBA8: .word 0x021A7524
	thumb_func_end ovy185_219eb70

	thumb_func_start ovy185_219ebac
ovy185_219ebac: ; 0x0219EBAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0219EBBA
	bl sub_0204C108
_0219EBBA:
	mov r4, #0
_0219EBBC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _0219EBCA
	bl sub_02048210
_0219EBCA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _0219EBBC
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EBE2
	bl sub_02048210
_0219EBE2:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EBF0
	bl sub_02048210
_0219EBF0:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EBFE
	bl sub_02048210
_0219EBFE:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219ebac

	thumb_func_start ovy185_219ec08
ovy185_219ec08: ; 0x0219EC08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	str r6, [sp]
	add r4, r1, #0
	add r5, r0, #0
	str r6, [sp, #4]
	mov r7, #0x2a
	str r7, [sp, #8]
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #1
	mov r3, #0
	str r7, [sp, #8]
	mov r4, #0xf
	bl sub_0204ADA8
	add r1, r0, #0
	add r0, r5, #0
	lsr r1, r1, #5
	bl ovy185_219ecd4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy185_219edd4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy185_219ee80
	add r0, r5, #0
	bl ovy185_219eec0
	sub r4, #0x13
	mov r0, #1
	mov r1, #0
	add r2, r4, #0
	bl sub_02044CFC
	mov r0, #1
	mov r1, #3
	mov r2, #0x10
	bl sub_02044CFC
	add r0, r5, #0
	bl ovy185_219eefc
	ldr r4, _0219ECCC ; =0x04000050
	mov r2, #2
	add r0, r4, #0
	mov r1, #2
	sub r2, #0xc
	bl G2x_SetBlendBrightness_
	add r3, r4, #0
	sub r3, #8
	ldrh r2, [r3]
	mov r1, #0x3f
	mov r0, #0x1f
	bic r2, r1
	orr r0, r2
	mov r2, #0x20
	orr r0, r2
	strh r0, [r3]
	sub r3, r4, #6
	ldrh r5, [r3]
	mov r0, #0x1d
	bic r5, r1
	orr r0, r5
	orr r0, r2
	strh r0, [r3]
	add r0, r4, #0
	mov r1, #0xff
	sub r0, #0x10
	strh r1, [r0]
	mov r0, #0xa8
	sub r4, #0xc
	strh r0, [r4]
	lsl r3, r2, #0x15
	ldr r1, [r3]
	ldr r0, _0219ECD0 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r2, #8
	orr r0, r1
	str r0, [r3]
	mov r0, #1
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219ECCC: .word 0x04000050
_0219ECD0: .word 0xFFFF1FFF
	thumb_func_end ovy185_219ec08

	thumb_func_start ovy185_219ecd4
ovy185_219ecd4: ; 0x0219ECD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0xc]
	ldr r0, [r0]
	str r1, [sp, #0x10]
	bl sub_0219E524
	str r0, [sp, #0x14]
	mov r0, #0
	mov r1, #2
	mov r2, #0x9e
	mov r3, #0x2a
	mov r5, #0
	bl GFL_MsgSysLoadData
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #9
	str r0, [sp, #0x1c]
_0219ECFC:
	cmp r5, #0
	beq _0219ED16
	add r0, r5, #0
	mov r1, #3
	blx sub_0208D65C
	cmp r1, #0
	bne _0219ED16
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #3
	str r0, [sp, #0x1c]
_0219ED16:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #8]
	bl sub_0219D27C
	cmp r0, #0
	beq _0219ED36
	ldr r1, _0219EDD0 ; =0x021A71A4
	ldr r0, [sp, #0x18]
	ldrb r1, [r1, r5]
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #1
	mov r1, #2
	b _0219ED44
_0219ED36:
	ldr r0, [sp, #0x18]
	mov r1, #0xd
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #3
	mov r1, #4
_0219ED44:
	mov r2, #0xf
	bl sub_020232E8
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xc
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #1
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #9
	str r0, [sp, #8]
	bl sub_020480C0
	add r4, r0, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	mov r2, #0
	bl sub_02022888
	mov r1, #0x48
	sub r7, r1, r0
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [sp, #0x14]
	mov r2, #0
	str r1, [sp]
	lsl r1, r7, #0xf
	asr r1, r1, #0x10
	add r3, r6, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_02048244
	add r0, r6, #0
	bl GFL_StrBufFree
	lsl r1, r5, #2
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, r0, r1
	str r4, [r0, #0x60]
	ldr r0, [sp, #0x10]
	add r0, #0x12
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r0, #0xa
	str r0, [sp, #0x20]
	cmp r5, #0xc
	blt _0219ECFC
	ldr r0, [sp, #0x18]
	bl GFL_MsgDataFree
	ldr r0, [sp, #0x10]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219EDD0: .word 0x021A71A4
	thumb_func_end ovy185_219ecd4

	thumb_func_start ovy185_219edd4
ovy185_219edd4: ; 0x0219EDD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	ldr r0, [r0]
	str r1, [sp, #0x10]
	bl sub_0219E524
	add r7, r0, #0
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #8
	mov r3, #0x1e
	str r0, [sp, #8]
	bl sub_020480C0
	add r6, r0, #0
	mov r0, #4
	mov r1, #0x2a
	bl GFL_StrBufCreate
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	bl sub_0219EAD4
	mov r5, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bls _0219EE5E
_0219EE1E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219EAD8
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl sub_0219EB04
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	add r0, r6, #0
	bl sub_020484F4
	str r7, [sp]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	add r1, r1, #5
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl sub_02021CFC
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blo _0219EE1E
_0219EE5E:
	add r0, r6, #0
	bl sub_02048244
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	mov r1, #0x69
	add r0, #0x90
	str r0, [sp, #0xc]
	str r6, [r0]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219edd4

	thumb_func_start ovy185_219ee80
ovy185_219ee80: ; 0x0219EE80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	add r6, r1, #0
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0xa
	mov r2, #3
	mov r3, #0xb
	bl sub_020480C0
	add r4, r0, #0
	bl sub_020484F4
	mov r1, #1
	bl sub_0204713C
	add r0, r4, #0
	bl sub_02048244
	add r5, #0x94
	add r6, #0x16
	str r4, [r5]
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_219ee80

	thumb_func_start ovy185_219eec0
ovy185_219eec0: ; 0x0219EEC0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0x16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #6
	mov r2, #1
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	add r5, r0, #0
	bl sub_0204826C
	mov r0, #6
	bl sub_02044F90
	mov r2, #3
	mov r0, #6
	mov r1, #3
	sub r2, #0xc3
	bl sub_02044CFC
	add r4, #0x98
	str r5, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy185_219eec0

	thumb_func_start ovy185_219eefc
ovy185_219eefc: ; 0x0219EEFC
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, sp, #8
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0219E544
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0x30
	mov r3, #0x40
	bl ovy185_219e558
	str r0, [r5, #0x54]
	mov r1, #4
	bl sub_0204C488
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ovy185_219eefc

	thumb_func_start ovy185_219ef38
ovy185_219ef38: ; 0x0219EF38
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0219EF74
	ldr r0, [r4, #0x5c]
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x54]
	bne _0219EF6C
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #0
	ldr r0, [r4, #0x54]
	bne _0219EF64
	mov r1, #4
	bl sub_0204C488
	pop {r4, pc}
_0219EF64:
	mov r1, #6
	bl sub_0204C488
	pop {r4, pc}
_0219EF6C:
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
_0219EF74:
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219ef38

	thumb_func_start ovy185_219ef80
ovy185_219ef80: ; 0x0219EF80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219F048 ; =0x021A71B0
	add r4, r1, #0
	ldrh r1, [r0]
	add r6, sp, #0
	strh r1, [r6, #8]
	ldrh r0, [r0, #2]
	strh r0, [r6, #0xa]
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219EFC6
	cmp r4, #0xfe
	beq _0219EFC6
	add r0, r4, #0
	mov r1, #3
	blx sub_0208D868
	mov r0, #0x50
	mul r0, r1
	add r0, #0x30
	strh r0, [r6, #8]
	add r0, r4, #0
	mov r1, #3
	blx sub_0208D868
	mov r1, #0x18
	mul r1, r0
	add r1, #0x40
	strh r1, [r6, #0xa]
	mov r6, #4
	b _0219F030
_0219EFC6:
	ldr r0, [r5]
	bl sub_0219E51C
	mov r6, #0x10
	cmp r4, #0xfc
	bne _0219EFEA
	ldr r1, [r5, #0x5c]
	ldr r1, [r1]
	cmp r1, #0
	bne _0219EFE0
	mov r1, #0
_0219EFDC:
	mov r2, #1
	b _0219EFE4
_0219EFE0:
	mov r1, #0
	mov r2, #0
_0219EFE4:
	bl ovy185_21a085c
	b _0219F030
_0219EFEA:
	cmp r4, #0xfd
	bne _0219EFFC
	ldr r1, [r5, #0x5c]
	ldr r1, [r1]
	cmp r1, #0
	bne _0219EFFA
	mov r1, #1
	b _0219EFDC
_0219EFFA:
	b _0219EFE0
_0219EFFC:
	cmp r4, #0xfe
	bne _0219F00E
	ldr r1, [r5, #0x5c]
	ldr r1, [r1]
	cmp r1, #0
	bne _0219F00C
	mov r1, #2
	b _0219EFDC
_0219F00C:
	b _0219EFE0
_0219F00E:
	mov r1, #0
	mov r2, #0
	bl ovy185_21a085c
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0219EB04
	ldr r1, [sp, #4]
	add r0, sp, #0
	add r1, #0x12
	strh r1, [r0, #8]
	ldr r1, [sp]
	mov r6, #6
	add r1, #0x38
	strh r1, [r0, #0xa]
_0219F030:
	ldr r0, [r5, #0x54]
	add r1, sp, #8
	mov r2, #0
	bl sub_0204C140
	lsl r1, r6, #0x10
	ldr r0, [r5, #0x54]
	lsr r1, r1, #0x10
	bl sub_0204C488
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219F048: .word 0x021A71B0
	thumb_func_end ovy185_219ef80

	thumb_func_start ovy185_219f04c
ovy185_219f04c: ; 0x0219F04C
	push {r3, lr}
	mov r3, #0
	str r3, [r0, #0x10]
	mov r1, #0x10
	mov r2, #2
	str r1, [sp]
	add r0, #0x18
	mov r1, #2
	sub r2, #0xc
	bl ovy185_21a01dc
	pop {r3, pc}
	thumb_func_end ovy185_219f04c

	thumb_func_start ovy185_219f064
ovy185_219f064: ; 0x0219F064
	push {r3, lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _0219F07A
	add r0, #0x18
	bl ovy185_21a021c
	cmp r0, #0
	beq _0219F07A
	mov r0, #1
	pop {r3, pc}
_0219F07A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_219f064

	thumb_func_start ovy185_219f080
ovy185_219f080: ; 0x0219F080
	push {r3, lr}
	mov r3, #0
	str r3, [r0, #0x10]
	mov r1, #6
	str r1, [sp]
	add r0, #0x38
	mov r1, #1
	mov r2, #1
	bl ovy185_21a006c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_219f080

	thumb_func_start ovy185_219f098
ovy185_219f098: ; 0x0219F098
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0219F0AA
	cmp r0, #1
	beq _0219F0D2
	b _0219F0DE
_0219F0AA:
	add r0, r4, #0
	add r0, #0x38
	bl ovy185_21a00bc
	cmp r0, #0
	beq _0219F0DE
	mov r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	add r0, #0x18
	mov r1, #2
	mov r2, #0
	sub r3, #0xa
	bl ovy185_21a01dc
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0219F0DE
_0219F0D2:
	add r4, #0x18
	add r0, r4, #0
	bl ovy185_21a021c
	add sp, #4
	pop {r3, r4, pc}
_0219F0DE:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy185_219f098

	thumb_func_start sub_0219F0E4
sub_0219F0E4: ; 0x0219F0E4
	ldr r3, _0219F0F0 ; =sub_02044CFC
	mov r0, #1
	mov r1, #3
	mov r2, #0x10
	bx r3
	nop
_0219F0F0: .word sub_02044CFC
	thumb_func_end sub_0219F0E4

	thumb_func_start ovy185_219f0f4
ovy185_219f0f4: ; 0x0219F0F4
	push {r3, lr}
	mov r1, #0x10
	mov r3, #0
	str r1, [sp]
	add r0, #0x18
	mov r1, #2
	mov r2, #0
	sub r3, #0xa
	bl ovy185_21a01dc
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_219f0f4

	thumb_func_start sub_0219F10C
sub_0219F10C: ; 0x0219F10C
	ldr r3, _0219F114 ; =ovy185_21a021c
	add r0, #0x18
	bx r3
	nop
_0219F114: .word ovy185_21a021c
	thumb_func_end sub_0219F10C

	thumb_func_start ovy185_219f118
ovy185_219f118: ; 0x0219F118
	push {r3, lr}
	sub sp, #8
	mov r1, #0
	str r1, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	add r0, #0x18
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0x7c
	bl ovy185_21a0148
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy185_219f118

	thumb_func_start ovy185_219f134
ovy185_219f134: ; 0x0219F134
	push {r3, lr}
	add r0, #0x18
	bl ovy185_21a0178
	cmp r0, #0
	beq _0219F14C
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #1
	pop {r3, pc}
_0219F14C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy185_219f134

	thumb_func_start ovy185_219f150
ovy185_219f150: ; 0x0219F150
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0219F188 ; =0x04000050
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x7c
	str r0, [sp]
	mov r0, #0xc
	add r4, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0
	bl ovy185_21a0148
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0219F188: .word 0x04000050
	thumb_func_end ovy185_219f150

	thumb_func_start sub_0219F18C
sub_0219F18C: ; 0x0219F18C
	ldr r3, _0219F194 ; =ovy185_21a0178
	add r0, #0x18
	bx r3
	nop
_0219F194: .word ovy185_21a0178
	thumb_func_end sub_0219F18C

	thumb_func_start ovy185_219f198
ovy185_219f198: ; 0x0219F198
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219F1AA
	mov r2, #3
	mvn r2, r2
	b _0219F1AC
_0219F1AA:
	mov r2, #0
_0219F1AC:
	mov r0, #1
	mov r1, #0
	bl sub_02045E1C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_219f198

	thumb_func_start ovy185_219f1b8
ovy185_219f1b8: ; 0x0219F1B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x2a
	mov r1, #0x2a
	mov r7, #0x2a
	bl sub_0204AA30
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219F1FC
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	add r0, r6, #0
	mov r1, #0x1b
	mov r2, #1
	mov r3, #0
	str r7, [sp, #0xc]
	bl sub_0204AFD8
_0219F1EA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	bl sub_0204826C
	add r4, r4, #1
	cmp r4, #0xc
	blt _0219F1EA
	b _0219F222
_0219F1FC:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #1
	str r7, [sp, #0xc]
	bl sub_0204AFD8
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0204826C
	add r5, #0x94
	ldr r0, [r5]
	bl sub_0204826C
_0219F222:
	add r0, r6, #0
	bl sub_0204AB0C
	mov r0, #1
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219f1b8

	thumb_func_start sub_0219F234
sub_0219F234: ; 0x0219F234
	mov r0, #1
	bx lr
	thumb_func_end sub_0219F234

	thumb_func_start ovy185_219f238
ovy185_219f238: ; 0x0219F238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl sub_0219E524
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r4, [r0]
	mov r0, #0xe
	mov r1, #0x2a
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_021A30B4
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #1
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #1
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	str r7, [sp]
	bl sub_02021CFC
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_02048244
	mov r0, #1
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219f238

	thumb_func_start ovy185_219f2a0
ovy185_219f2a0: ; 0x0219F2A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_021A30DC
	add r1, r0, #0
	cmp r1, #0x16
	bls _0219F2B4
	mov r1, #0x16
_0219F2B4:
	cmp r4, #0
	beq _0219F2C0
	add r0, r5, #0
	bl ovy185_219f2f0
	pop {r3, r4, r5, pc}
_0219F2C0:
	add r0, r5, #0
	bl ovy185_219f2c8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219f2a0

	thumb_func_start ovy185_219f2c8
ovy185_219f2c8: ; 0x0219F2C8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #6
	bl sub_02044E74
	mov r1, #6
	sub r1, #0xc6
	sub r3, r1, r0
	mov r0, #8
	add r4, #0x38
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	bl ovy185_21a006c
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219f2c8

	thumb_func_start ovy185_219f2f0
ovy185_219f2f0: ; 0x0219F2F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5]
	str r1, [sp, #0xc]
	bl sub_0219E52C
	str r0, [sp, #0x14]
	ldr r0, [r5]
	bl sub_0219E524
	str r0, [sp, #0x10]
	mov r0, #0xf
	mov r1, #0x2a
	bl GFL_StrBufCreate
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0x98
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r5, #0
	mov r4, #0
	add r0, #0xa0
	strb r4, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bls _0219F394
_0219F33C:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0219F34E
	mov r6, #8
	b _0219F350
_0219F34E:
	mov r6, #0x80
_0219F350:
	ldr r0, [r5, #4]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021A30F4
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r3, r3, #1
	lsl r2, r6, #0x10
	lsl r3, r3, #0x14
	ldr r0, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, _0219F3E8 ; =0x0000044F
	asr r2, r2, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0xa0
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _0219F33C
_0219F394:
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #6
	bl sub_02044E74
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	add r3, #0xc0
	add r0, r0, #1
	lsr r0, r0, #1
	lsl r4, r0, #4
	add r4, #8
	cmp r4, #0xc0
	ble _0219F3B6
	mov r4, #0xc0
	b _0219F3BC
_0219F3B6:
	cmp r4, #0x30
	bge _0219F3BC
	mov r4, #0x30
_0219F3BC:
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x38
	mov r1, #6
	mov r2, #1
	sub r3, r4, r3
	bl ovy185_21a006c
	add r5, #0x98
	ldr r0, [r5]
	bl sub_0204826C
	mov r0, #6
	bl sub_02045B7C
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F3E8: .word 0x0000044F
	thumb_func_end ovy185_219f2f0

	thumb_func_start ovy185_219f3ec
ovy185_219f3ec: ; 0x0219F3EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	bl sub_0219E52C
	add r7, r0, #0
	mov r4, #1
	cmp r6, #0
	beq _0219F440
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219F432
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219F432
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02048244
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strb r1, [r0]
_0219F432:
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #0
	beq _0219F440
	mov r4, #0
_0219F440:
	add r5, #0x38
	add r0, r5, #0
	bl ovy185_21a00bc
	cmp r4, #0
	beq _0219F460
	cmp r0, #0
	beq _0219F460
	cmp r6, #0
	bne _0219F45C
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
_0219F45C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F460:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_219f3ec

	thumb_func_start ovy185_219f464
ovy185_219f464: ; 0x0219F464
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	bl sub_0204C138
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _0219F4B0
	cmp r4, #0xfe
	beq _0219F4B0
	add r0, r4, #0
	mov r1, #3
	blx sub_0208D868
	mov r0, #0x50
	mul r0, r1
	add r0, #0x30
	add r6, sp, #0
	strh r0, [r6, #8]
	add r0, r4, #0
	mov r1, #3
	blx sub_0208D868
	mov r1, #0x18
	mul r1, r0
	add r1, #0x40
	strh r1, [r6, #0xa]
	mov r6, #0x1f
	b _0219F4D8
_0219F4B0:
	mov r6, #0x10
	cmp r4, #0xfc
	beq _0219F4D8
	cmp r4, #0xfd
	beq _0219F4D8
	cmp r4, #0xfe
	beq _0219F4D8
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0219EB04
	ldr r1, [sp, #4]
	add r0, sp, #0
	add r1, #0x12
	strh r1, [r0, #8]
	ldr r1, [sp]
	mov r6, #0x1e
	add r1, #0x38
	strh r1, [r0, #0xa]
_0219F4D8:
	ldr r0, [r5, #0x54]
	add r1, sp, #8
	mov r2, #0
	bl sub_0204C140
	lsl r1, r6, #0x10
	ldr r0, [r5, #0x54]
	lsr r1, r1, #0x10
	bl sub_0204C488
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy185_219f464

	thumb_func_start ovy185_219f4f0
ovy185_219f4f0: ; 0x0219F4F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_0204C4A0
	cmp r0, #0x1f
	beq _0219F506
	cmp r0, #0x1e
	beq _0219F506
	mov r0, #1
	pop {r4, pc}
_0219F506:
	ldr r0, [r4, #0x54]
	bl sub_0204C560
	cmp r0, #0
	bne _0219F538
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	bl sub_0204C124
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	mov r1, #4
	cmp r0, #0
	beq _0219F526
	mov r1, #6
_0219F526:
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x54]
	lsr r1, r1, #0x10
	bl sub_0204C488
	mov r0, #0
	str r0, [r4, #0x58]
	mov r0, #1
	pop {r4, pc}
_0219F538:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy185_219f4f0

	thumb_func_start ovy185_219f53c
ovy185_219f53c: ; 0x0219F53C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0xd3
	add r7, r0, #0
	str r2, [sp, #4]
	mov r5, #0xd3
	ldr r3, _0219F5CC ; =0x021A7538
	mov r0, #0x2a
	add r1, #0xe9
	mov r2, #1
	str r5, [sp]
	bl sub_0203A1FC
	add r4, r0, #0
	str r7, [r4]
	ldr r0, [sp, #4]
	str r6, [r4, #4]
	str r0, [r4, #8]
	add r0, r6, #0
	bl sub_021A2FB4
	mov r1, #0xd3
	add r1, #0xcd
	str r0, [r4, r1]
	mov r6, #0
	str r6, [r4, #0x14]
	mov r0, #0xd3
	str r6, [r4, #0x18]
	add r0, #0xd1
	str r6, [r4, r0]
	mov r0, #0x80
	mov r1, #0x2a
	bl GFL_StrBufCreate
	str r0, [r4, #0x30]
	mov r0, #0
	mov r1, #2
	mov r2, #0x9f
	mov r3, #0x2a
	mov r7, #0x9f
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x2c]
	mov r0, #0x2a
	bl sub_02026528
	str r0, [r4, #0x34]
	mov r0, #0x9f
	add r0, #0xf9
	strh r6, [r4, r0]
	add r7, #0xfb
	mov r0, #0xd3
	strh r6, [r4, r7]
	add r0, #0xd5
	str r6, [r4, r0]
	mov r0, #0xd3
	add r0, #0xd9
	str r6, [r4, r0]
	mov r0, #0xd3
	add r0, #0xdd
	str r6, [r4, r0]
	mov r0, #1
	mov r1, #1
	mov r2, #0x2a
	bl sub_020330C8
	add r5, #0xe1
	str r0, [r4, r5]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F5CC: .word 0x021A7538
	thumb_func_end ovy185_219f53c

	thumb_func_start ovy185_219f5d0
ovy185_219f5d0: ; 0x0219F5D0
	push {r3, r4, r5, lr}
	mov r5, #0x6d
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02033120
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219F5EA
	bl GFL_TCBRemove
_0219F5EA:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219F5F8
	bl GFL_TCBRemove
_0219F5F8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0219F602
	bl sub_0202654C
_0219F602:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0219F60C
	bl sub_0204C108
_0219F60C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0219F616
	bl sub_0204C108
_0219F616:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0219F620
	bl GFL_MsgDataFree
_0219F620:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0219F62A
	bl GFL_StrBufFree
_0219F62A:
	ldr r0, [r4, #0xc]
	bl sub_02048210
	ldr r0, [r4, #0x10]
	bl sub_02048210
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219f5d0

	thumb_func_start ovy185_219f640
ovy185_219f640: ; 0x0219F640
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	bl ovy185_219f948
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x19
	mov r2, #0
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x19
	mov r2, #4
	mov r3, #0
	bl sub_0204AF50
	mov r0, #4
	ldr r4, _0219F75C ; =0x0000019A
	sub r0, #0xc4
	strh r0, [r5, r4]
	ldrsh r2, [r5, r4]
	mov r0, #4
	mov r1, #3
	bl sub_02044CFC
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0xe
	mov r2, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0xe
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #3
	mov r2, #1
	mov r3, #0x1c
	bl sub_020480C0
	str r0, [r5, #0xc]
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #3
	mov r2, #1
	mov r3, #0x1c
	bl sub_020480C0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_0204826C
	ldr r0, [r5, #0x10]
	bl sub_0204826C
	add r0, r5, #0
	bl ovy185_219fa00
	add r0, r5, #0
	bl ovy185_219fa40
	add r0, r5, #0
	bl ovy185_219fb1c
	add r0, r5, #0
	bl ovy185_219fa98
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x1a
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_02033150
	add r0, r4, #0
	str r6, [sp]
	add r0, #0x1a
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #0x19
	bl sub_02033224
	add r0, r4, #0
	add r0, #0x1a
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02033254
	add r0, r4, #0
	add r0, #0x1a
	ldr r0, [r5, r0]
	ldr r2, [r5, #0xc]
	mov r1, #0
	bl sub_020335C4
	add r0, r4, #0
	add r0, #0x1a
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02033360
	add r4, #0x1e
	str r6, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F75C: .word 0x0000019A
	thumb_func_end ovy185_219f640
_0219F760:
	.byte 0x01, 0x48, 0x00, 0x88, 0x70, 0x47, 0xC0, 0x46, 0x06, 0x00, 0x00, 0x04

	thumb_func_start ovy185_219f76c
ovy185_219f76c: ; 0x0219F76C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r5, #0x6a
	lsl r5, r5, #2
	add r4, r1, #0
	mov r7, #0
	str r7, [r4, r5]
	add r0, r5, #4
	str r7, [r4, r0]
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219F7D0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02045604
	add r3, r5, #0
	sub r3, #0x10
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r0, #0xc
	neg r3, r3
	asr r6, r3, #2
	lsr r6, r6, #0x1d
	add r6, r3, r6
	lsl r3, r6, #0x15
	ldr r0, [r4, r0]
	add r1, r7, #0
	add r2, r7, #0
	asr r3, r3, #0x18
	bl sub_02033254
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl sub_02033360
	add r5, #0x10
	str r7, [r4, r5]
_0219F7D0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy185_219f76c

	thumb_func_start ovy185_219f7d4
ovy185_219f7d4: ; 0x0219F7D4
	push {r4, lr}
	mov r2, #0x67
	add r4, r0, #0
	mov r0, #0
	lsl r2, r2, #2
	strb r0, [r4, r2]
	add r0, r2, #1
	add r2, #8
	strb r1, [r4, r0]
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _0219F7F0
	bl GFL_TCBRemove
_0219F7F0:
	ldr r0, _0219F82C ; =0x0219F761
	add r1, r4, #0
	mov r2, #1
	bl sub_02005680
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	add r1, #0xc
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0219F818
	bl GFL_TCBRemove
_0219F818:
	ldr r0, _0219F830 ; =ovy185_219f76c
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0219F82C: .word 0x0219F761
_0219F830: .word ovy185_219f76c
	thumb_func_end ovy185_219f7d4

	thumb_func_start ovy185_219f834
ovy185_219f834: ; 0x0219F834
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #5
	bls _0219F84A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219F84A:
	ldr r0, [sp]
	add r1, r1, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0219F85A
	mov r0, #7
	mvn r0, r0
	b _0219F85C
_0219F85A:
	mov r0, #8
_0219F85C:
	str r0, [sp, #4]
	ldr r2, _0219F944 ; =0x0000019A
	ldr r0, [sp]
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r0, [sp]
	strh r1, [r0, r2]
	sub r1, r2, #2
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #4]
	add r3, r1, r0
	ldr r0, [sp]
	sub r1, r2, #2
	strh r3, [r0, r1]
	ldr r3, [sp]
	mov r0, #4
	ldrsh r2, [r3, r2]
	mov r1, #3
	bl sub_02044CFC
	mov r0, #0
	str r0, [sp, #8]
_0219F88A:
	ldr r0, [sp, #8]
	mov r2, #1
	lsl r1, r0, #2
	ldr r0, [sp]
	add r7, r0, r1
	ldr r1, [sp, #8]
	ldr r0, [r7, #0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C1DC
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r7, #0x14]
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_0204C1A8
	ldr r0, [sp, #8]
	mov r5, #0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0219F8BE:
	lsl r0, r5, #3
	add r6, r7, r0
	ldr r0, [r6, #0x1c]
	add r1, r4, #0
	mov r2, #1
	bl sub_0204C1DC
	ldr r1, [sp, #4]
	add r2, r4, #0
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	ldr r0, [r6, #0x1c]
	mov r3, #1
	bl sub_0204C1A8
	add r5, r5, #1
	cmp r5, #2
	blt _0219F8BE
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _0219F88A
	mov r4, #0x67
	ldr r0, [sp]
	lsl r4, r4, #2
	ldrb r0, [r0, r4]
	add r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0, r4]
	add r1, r4, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0219F932
	ldr r0, [sp]
	ldrb r0, [r0, r4]
	cmp r0, #7
	bne _0219F932
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #8
	ldr r0, [r0, r1]
	bl GFL_TCBRemove
	add r1, r4, #0
	ldr r0, [sp]
	mov r5, #0
	add r1, #8
	str r5, [r0, r1]
	add r1, r4, #0
	add r1, #0x14
	ldr r0, [r0, r1]
	bl GFL_TCBRemove
	ldr r0, [sp]
	add r4, #0x14
	str r5, [r0, r4]
_0219F932:
	mov r1, #0x6e
	ldr r0, [sp]
	mov r2, #1
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219F944: .word 0x0000019A
	thumb_func_end ovy185_219f834

	thumb_func_start ovy185_219f948
ovy185_219f948: ; 0x0219F948
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #7
	add r6, r1, #0
	lsl r0, r0, #6
	str r0, [sp]
	mov r7, #0x2a
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	str r7, [sp, #4]
	bl sub_0204B0D4
	mov r4, #0xa0
	str r4, [sp]
	add r0, r6, #0
	mov r1, #4
	mov r2, #4
	mov r3, #0
	str r7, [sp, #4]
	bl sub_0204B0D4
	add r0, r6, #0
	mov r1, #6
	add r2, sp, #8
	mov r3, #0x2a
	bl sub_0204B37C
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r4, #0xa0
	ldr r0, [r0, #0xc]
	add r1, #0x58
	add r2, r4, #0
	blx MIi_CpuCopy16
	add r5, #0x58
	add r0, r5, #0
	add r1, r4, #0
	blx DC_FlushRange
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219f948

	thumb_func_start ovy185_219f9ac
ovy185_219f9ac: ; 0x0219F9AC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FB8
	cmp r0, #2
	bne _0219F9E6
	ldr r0, [r4, #4]
	bl sub_021A2FC4
	cmp r0, #5
	bhs _0219F9E6
	ldr r0, [r4, #4]
	bl sub_021A2FC4
	add r0, r0, #1
	add r4, #0x58
	lsl r5, r0, #5
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, pc}
_0219F9E6:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	add r4, #0x58
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_219f9ac

	thumb_func_start ovy185_219fa00
ovy185_219fa00: ; 0x0219FA00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FB8
	cmp r0, #0
	beq _0219FA18
	cmp r0, #1
	beq _0219FA26
	cmp r0, #2
	beq _0219FA3A
	pop {r4, pc}
_0219FA18:
	mov r0, #0x68
	strh r0, [r4, #0x38]
	mov r0, #0x10
	strh r0, [r4, #0x3a]
	mov r0, #1
	str r0, [r4, #0x44]
	pop {r4, pc}
_0219FA26:
	mov r0, #0x30
	strh r0, [r4, #0x38]
	mov r1, #0x10
	mov r0, #0xa0
	strh r0, [r4, #0x3c]
	mov r0, #2
	strh r1, [r4, #0x3a]
	strh r1, [r4, #0x3e]
	str r0, [r4, #0x44]
	pop {r4, pc}
_0219FA3A:
	mov r0, #0
	str r0, [r4, #0x44]
	pop {r4, pc}
	thumb_func_end ovy185_219fa00

	thumb_func_start ovy185_219fa40
ovy185_219fa40: ; 0x0219FA40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #8]
_0219FA4A:
	ldr r0, [r6]
	ldr r2, [sp, #8]
	add r1, sp, #0x10
	bl sub_0219E530
	ldr r0, [sp, #8]
	mov r4, #0
	lsl r0, r0, #2
	add r7, r6, r0
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #0xc]
_0219FA62:
	lsl r0, r4, #3
	add r5, r7, r0
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x10
	str r0, [sp, #4]
	ldr r0, [r6]
	mov r2, #0
	mov r3, #0
	bl ovy185_219e558
	mov r1, #0
	str r0, [r5, #0x1c]
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _0219FA62
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _0219FA4A
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219fa40

	thumb_func_start ovy185_219fa98
ovy185_219fa98: ; 0x0219FA98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _0219FAB0
	add r0, r5, #0
	add r0, #0x38
	add r1, sp, #8
	bl sub_0219FE58
	b _0219FABA
_0219FAB0:
	mov r1, #0x80
	add r0, sp, #8
	strh r1, [r0]
	mov r1, #0x18
	strh r1, [r0, #2]
_0219FABA:
	ldr r0, [r5]
	add r1, sp, #0xc
	mov r2, #1
	mov r4, #0
	mov r3, #0
	bl sub_0219E544
	str r4, [sp]
	mov r7, #2
	str r7, [sp, #4]
	add r6, sp, #8
	ldrsh r3, [r6, r7]
	ldrsh r2, [r6, r4]
	ldr r0, [r5]
	add r1, sp, #0xc
	add r3, #0xc0
	bl ovy185_219e558
	str r0, [r5, #0x18]
	mov r1, #1
	bl sub_0204C488
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0204C468
	ldr r0, [r5]
	add r1, sp, #0xc
	mov r2, #0
	mov r3, #0
	bl sub_0219E544
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrsh r2, [r6, r4]
	ldrsh r3, [r6, r7]
	ldr r0, [r5]
	add r1, sp, #0xc
	bl ovy185_219e558
	str r0, [r5, #0x14]
	add r0, r5, #0
	mov r1, #1
	bl ovy185_219ff7c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219fa98

	thumb_func_start ovy185_219fb1c
ovy185_219fb1c: ; 0x0219FB1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy185_219f9ac
	mov r7, #0
_0219FB26:
	lsl r0, r7, #2
	mov r4, #0
	add r6, r5, r0
_0219FB2C:
	lsl r0, r4, #3
	add r0, r6, r0
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0219FB3C
	mov r1, #0
	bl sub_0204C124
_0219FB3C:
	add r4, r4, #1
	cmp r4, #2
	blt _0219FB2C
	ldr r0, [r6, #0xc]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, #4]
	bl sub_021A2FB8
	cmp r0, #0
	beq _0219FB62
	cmp r0, #1
	beq _0219FB8C
	cmp r0, #2
	beq _0219FBD6
	b _0219FBE4
_0219FB62:
	lsl r0, r7, #2
	add r4, r5, r0
	add r1, r5, #0
	ldr r0, [r4, #0xc]
	add r1, #0x38
	bl ovy185_219fe6c
	ldr r0, [r5, #4]
	mov r1, #0
	bl ovy185_21a2fd0
	add r3, r0, #0
	ldr r0, [r4, #0x1c]
	add r2, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	add r2, #0x38
_0219FB86:
	bl ovy185_219fe9c
	b _0219FBE4
_0219FB8C:
	lsl r0, r7, #2
	add r4, r5, r0
	add r1, r5, #0
	ldr r0, [r4, #0xc]
	add r1, #0x38
	bl ovy185_219fe6c
	add r1, r5, #0
	ldr r0, [r4, #0xc]
	add r1, #0x3c
	bl ovy185_219fe6c
	ldr r0, [r5, #4]
	mov r1, #0
	bl ovy185_21a2fd0
	add r3, r0, #0
	ldr r0, [r4, #0x1c]
	add r2, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	add r2, #0x38
	bl ovy185_219fe9c
	ldr r0, [r5, #4]
	mov r1, #1
	bl ovy185_21a2fd0
	add r3, r0, #0
	ldr r0, [r4, #0x24]
	add r2, r5, #0
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r2, #0x3c
	b _0219FB86
_0219FBD6:
	lsl r2, r7, #0x18
	ldr r1, [r6, #0xc]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl ovy185_219fc20
	str r0, [r5, #0x44]
_0219FBE4:
	ldr r0, [r6, #0xc]
	bl sub_02048244
	add r7, r7, #1
	cmp r7, #2
	blt _0219FB26
	mov r0, #0
	bl sub_02045B7C
	mov r0, #4
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219fb1c

	thumb_func_start sub_0219FC00
sub_0219FC00: ; 0x0219FC00
	lsl r2, r2, #2
	add r2, r0, r2
	mov r0, #0x38
	ldrsh r0, [r2, r0]
	sub r0, #0x18
	strb r0, [r1, #2]
	ldrb r0, [r1, #2]
	add r0, #0x60
	strb r0, [r1, #3]
	mov r0, #0x3a
	ldrsh r0, [r2, r0]
	strb r0, [r1]
	ldrb r0, [r1]
	add r0, #0x10
	strb r0, [r1, #1]
	bx lr
	thumb_func_end sub_0219FC00

	thumb_func_start ovy185_219fc20
ovy185_219fc20: ; 0x0219FC20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r0, [r4, #4]
	mov r1, #0x2a
	bl sub_021A2FE8
	str r0, [sp, #0x1c]
	ldr r0, [r4]
	bl sub_0219E524
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x48
	add r1, r4, #0
	mov r6, #0
	mov r7, #0
	mov r5, #0
	bl ovy185_219fd38
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x38
	str r0, [sp, #0x28]
	add r0, r4, #0
	str r0, [sp, #0x20]
	add r0, #0x48
	str r0, [sp, #0x20]
_0219FC68:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl ovy185_219fd70
	cmp r0, #3
	bhi _0219FD1C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FC80: ; jump table
	.short _0219FC88 - _0219FC80 - 2 ; case 0
	.short _0219FCB8 - _0219FC80 - 2 ; case 1
	.short _0219FD12 - _0219FC80 - 2 ; case 2
	.short _0219FD18 - _0219FC80 - 2 ; case 3
_0219FC88:
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldr r0, [sp, #4]
	bl sub_020484F4
	ldr r1, [sp, #0x10]
	lsl r2, r7, #0x10
	str r1, [sp]
	lsl r1, r5, #0x10
	ldr r3, [sp, #0x1c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl sub_02022888
	add r5, r5, r0
	b _0219FD1C
_0219FCB8:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	ldr r2, [sp, #0x28]
	str r0, [sp, #0x18]
	lsl r0, r6, #1
	add r1, r4, r0
	ldr r0, [sp, #0x18]
	add r1, #0x40
	strh r0, [r1]
	lsl r0, r6, #2
	add r1, r5, #0
	str r0, [sp, #0x24]
	add r0, r4, r0
	add r1, #0x32
	strh r1, [r0, #0x38]
	add r1, r7, #0
	add r1, #8
	strh r1, [r0, #0x3a]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #4]
	add r1, r2, r1
	bl ovy185_219fe6c
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	bl ovy185_21a2fd0
	mov ip, r0
	ldr r0, [sp, #0xc]
	lsl r1, r6, #3
	add r0, r0, r1
	ldr r0, [r0, #0x1c]
	ldr r3, [sp, #0x28]
	ldr r2, [sp, #0x24]
	str r0, [sp]
	add r2, r3, r2
	ldr r1, [sp, #4]
	add r0, r4, #0
	mov r3, ip
	bl ovy185_219fe9c
	add r6, r6, #1
	add r5, #0x64
	b _0219FD1C
_0219FD12:
	add r7, #0x10
	mov r5, #0
	b _0219FD1C
_0219FD18:
	mov r0, #0
	str r0, [sp, #0x14]
_0219FD1C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0219FC68
	add r4, #0x48
	add r0, r4, #0
	bl sub_0219FD64
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	add r0, r6, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_219fc20

	thumb_func_start ovy185_219fd38
ovy185_219fd38: ; 0x0219FD38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	mov r1, #0x2a
	bl sub_021A2FE8
	str r0, [r4]
	bl sub_020486F0
	str r0, [r4, #4]
	ldrh r1, [r0]
	mov r0, #0xf
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _0219FD5C
	mov r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_0219FD5C:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_219fd38

	thumb_func_start sub_0219FD64
sub_0219FD64: ; 0x0219FD64
	ldr r0, [r0]
	ldr r3, _0219FD6C ; =GFL_StrBufFree
	bx r3
	nop
_0219FD6C: .word GFL_StrBufFree
	thumb_func_end sub_0219FD64

	thumb_func_start ovy185_219fd70
ovy185_219fd70: ; 0x0219FD70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp]
	mov ip, r0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _0219FE0A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219FD8C: ; jump table
	.short _0219FD94 - _0219FD8C - 2 ; case 0
	.short _0219FDEA - _0219FD8C - 2 ; case 1
	.short _0219FE00 - _0219FD8C - 2 ; case 2
	.short _0219FE0A - _0219FD8C - 2 ; case 3
_0219FD94:
	cmp r0, #0
	bne _0219FDD0
	ldr r7, _0219FE40 ; =0x0000FFFE
	mov r6, #0xf
	mov r0, #1
	mov r1, #3
	mov r2, #2
	add r3, r7, #1
	lsl r6, r6, #0xc
_0219FDA6:
	ldr r5, [r4, #4]
	ldrh r5, [r5]
	cmp r5, r6
	beq _0219FDC0
	cmp r5, r7
	beq _0219FDB8
	cmp r5, r3
	beq _0219FDBC
	b _0219FDC4
_0219FDB8:
	str r2, [r4, #8]
	b _0219FDCA
_0219FDBC:
	str r1, [r4, #8]
	b _0219FDCA
_0219FDC0:
	str r0, [r4, #8]
	b _0219FDCA
_0219FDC4:
	ldr r5, [r4, #4]
	add r5, r5, #2
	str r5, [r4, #4]
_0219FDCA:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _0219FDA6
_0219FDD0:
	ldr r3, [r4, #4]
	mov r2, ip
	sub r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	ldr r0, [sp]
	mov r1, ip
	add r2, r2, #1
	bl sub_02048658
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FDEA:
	mov r0, ip
	mov r1, #0
	bl sub_02022BDC
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02022BF4
	str r0, [r4, #4]
	mov r0, #1
	b _0219FE0E
_0219FE00:
	mov r0, ip
	add r0, r0, #2
	str r0, [r4, #4]
	mov r0, #2
	b _0219FE0E
_0219FE0A:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0219FE0E:
	ldr r1, [r4, #4]
	ldrh r2, [r1]
	mov r1, #0xf
	lsl r1, r1, #0xc
	cmp r2, r1
	beq _0219FE34
	ldr r1, _0219FE40 ; =0x0000FFFE
	cmp r2, r1
	beq _0219FE28
	add r1, r1, #1
	cmp r2, r1
	beq _0219FE2E
	b _0219FE3A
_0219FE28:
	mov r1, #2
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0219FE2E:
	mov r1, #3
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0219FE34:
	mov r1, #1
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0219FE3A:
	mov r1, #0
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FE40: .word 0x0000FFFE
	thumb_func_end ovy185_219fd70

	thumb_func_start sub_0219FE44
sub_0219FE44: ; 0x0219FE44
	mov r2, #0
	ldrsh r2, [r0, r2]
	sub r2, #0x30
	strh r2, [r1]
	mov r2, #2
	ldrsh r0, [r0, r2]
	sub r0, #8
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FE44

	thumb_func_start sub_0219FE58
sub_0219FE58: ; 0x0219FE58
	mov r2, #0
	ldrsh r2, [r0, r2]
	add r2, #0x18
	strh r2, [r1]
	mov r2, #2
	ldrsh r0, [r0, r2]
	add r0, #8
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FE58

	thumb_func_start ovy185_219fe6c
ovy185_219fe6c: ; 0x0219FE6C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #8
	bl sub_0219FE44
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0xe
	str r1, [sp, #4]
	add r3, sp, #8
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x60
	bl sub_020470F8
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy185_219fe6c

	thumb_func_start ovy185_219fe9c
ovy185_219fe9c: ; 0x0219FE9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r2, [sp, #4]
	add r6, r3, #0
	ldr r7, [sp, #0x30]
	bl sub_0219E524
	str r0, [sp, #0xc]
	ldr r0, _0219FF78 ; =0x0000FFFF
	cmp r6, r0
	beq _0219FF72
	ldr r0, [sp, #4]
	add r1, sp, #0x14
	bl sub_0219FE44
	add r0, r6, #0
	bl sub_02029E2C
	cmp r0, #0
	beq _0219FF44
	add r0, r6, #0
	bl sub_02029E44
	sub r0, r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_020484D4
	bl sub_0219FFB0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020484E8
	add r6, sp, #0x10
	mov r1, #4
	ldrsh r1, [r6, r1]
	lsl r0, r0, #3
	add r0, r1, r0
	strh r0, [r6]
	add r0, r4, #0
	bl sub_020484EC
	mov r1, #6
	ldrsh r1, [r6, r1]
	lsl r0, r0, #3
	add r0, r1, r0
	strh r0, [r6, #2]
	cmp r5, #1
	bne _0219FF0E
	mov r0, #2
	ldrsh r0, [r6, r0]
	add r0, #0xc0
	strh r0, [r6, #2]
_0219FF0E:
	ldr r1, [sp, #8]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	lsl r2, r5, #0x10
	add r0, r7, #0
	add r1, sp, #0x10
	lsr r2, r2, #0x10
	bl sub_0204C140
	add r0, r7, #0
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	bl sub_020484D4
	bl sub_0204588C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0204C468
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219FF44:
	ldr r1, [r5, #0x30]
	add r0, r6, #0
	mov r2, #0x2a
	bl sub_0202A15C
	mov r0, #3
	mov r1, #4
	mov r2, #0xe
	mov r6, #4
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [sp, #0xc]
	add r3, sp, #0x10
	str r1, [sp]
	mov r2, #6
	ldrsh r1, [r3, r6]
	ldrsh r2, [r3, r2]
	ldr r3, [r5, #0x30]
	bl sub_02021CFC
_0219FF72:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FF78: .word 0x0000FFFF
	thumb_func_end ovy185_219fe9c

	thumb_func_start ovy185_219ff7c
ovy185_219ff7c: ; 0x0219FF7C
	push {r3, lr}
	ldr r2, [r0, #0x44]
	cmp r2, #0
	beq _0219FF9A
	cmp r1, #0
	ldr r0, [r0, #0x14]
	beq _0219FF92
	mov r1, #0
	bl sub_0204C488
	pop {r3, pc}
_0219FF92:
	mov r1, #1
	bl sub_0204C488
	pop {r3, pc}
_0219FF9A:
	cmp r1, #0
	ldr r0, [r0, #0x14]
	beq _0219FFA8
	mov r1, #0xe
	bl sub_0204C488
	pop {r3, pc}
_0219FFA8:
	mov r1, #0xf
	bl sub_0204C488
	pop {r3, pc}
	thumb_func_end ovy185_219ff7c

	thumb_func_start sub_0219FFB0
sub_0219FFB0: ; 0x0219FFB0
	cmp r0, #4
	blo _0219FFB8
	mov r0, #1
	bx lr
_0219FFB8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219FFB0

	thumb_func_start sub_0219FFBC
sub_0219FFBC: ; 0x0219FFBC
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end sub_0219FFBC

	thumb_func_start sub_0219FFC0
sub_0219FFC0: ; 0x0219FFC0
	lsl r1, r1, #1
	add r0, r0, r1
	add r0, #0x40
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219FFC0

	thumb_func_start sub_0219FFCC
sub_0219FFCC: ; 0x0219FFCC
	ldr r3, _0219FFD4 ; =ovy185_219ff7c
	mov r1, #0
	bx r3
	nop
_0219FFD4: .word ovy185_219ff7c
	thumb_func_end sub_0219FFCC

	thumb_func_start sub_0219FFD8
sub_0219FFD8: ; 0x0219FFD8
	ldr r3, _0219FFE0 ; =ovy185_219ff7c
	mov r1, #1
	bx r3
	nop
_0219FFE0: .word ovy185_219ff7c
	thumb_func_end sub_0219FFD8

	thumb_func_start ovy185_219ffe4
ovy185_219ffe4: ; 0x0219FFE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0204C124
	add r0, r5, #0
	mov r1, #1
	bl ovy185_219ff7c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_219ffe4

	thumb_func_start sub_021A0004
sub_021A0004: ; 0x021A0004
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0004

	thumb_func_start sub_021A0008
sub_021A0008: ; 0x021A0008
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0008

	thumb_func_start ovy185_21a000c
ovy185_21a000c: ; 0x021A000C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021A0036
	add r2, r5, #0
	lsl r0, r1, #2
	add r2, #0x38
	add r0, r2, r0
	add r1, sp, #0
	bl sub_0219FE58
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	strh r0, [r1, #4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	strh r0, [r1, #6]
	b _021A0040
_021A0036:
	mov r1, #0x80
	add r0, sp, #0
	strh r1, [r0, #4]
	mov r1, #0x18
	strh r1, [r0, #6]
_021A0040:
	add r4, sp, #4
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	mov r2, #0
	bl sub_0204C140
	add r1, sp, #0
	mov r0, #6
	ldrsh r0, [r1, r0]
	mov r2, #1
	add r0, #0xc0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0204C140
	add r0, r5, #0
	mov r1, #1
	bl ovy185_219ff7c
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a000c

	thumb_func_start ovy185_21a006c
ovy185_21a006c: ; 0x021A006C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	str r1, [r5]
	cmp r2, #0
	bne _021A0086
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_02045828
	str r0, [r5, #8]
	mov r0, #0
	b _021A0092
_021A0086:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_0204583C
	str r0, [r5, #8]
	mov r0, #3
_021A0092:
	ldr r1, [r5, #8]
	str r0, [r5, #4]
	ldr r0, _021A00B8 ; =0x000001FF
	add r2, r1, r4
	and r0, r2
	str r0, [r5, #0xc]
	lsl r0, r1, #0xc
	str r0, [r5, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r4, #0xc
	blx sub_0208D65C
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	strh r0, [r5, #0x14]
	mov r0, #0
	strh r0, [r5, #0x16]
	pop {r3, r4, r5, pc}
	nop
_021A00B8: .word 0x000001FF
	thumb_func_end ovy185_21a006c

	thumb_func_start ovy185_21a00bc
ovy185_21a00bc: ; 0x021A00BC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021A00D0
	cmp r0, #1
	beq _021A00E4
	cmp r0, #2
	beq _021A00FA
	b _021A00FE
_021A00D0:
	ldr r0, _021A0104 ; =ovy185_21a0108
	add r1, r4, #0
	mov r2, #0
	bl sub_0219D484
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	b _021A00FE
_021A00E4:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _021A00FE
	ldr r0, [r4, #0x18]
	bl GFL_TCBRemove
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	strh r0, [r4, #0x16]
	mov r0, #1
	pop {r4, pc}
_021A00FA:
	mov r0, #1
	pop {r4, pc}
_021A00FE:
	mov r0, #0
	pop {r4, pc}
	nop
_021A0104: .word ovy185_21a0108
	thumb_func_end ovy185_21a00bc

	thumb_func_start ovy185_21a0108
ovy185_21a0108: ; 0x021A0108
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021A0134
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	add r2, r1, r0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	str r2, [r4, #8]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	asr r2, r2, #0xc
	bl sub_02044CFC
	ldrh r0, [r4, #0x14]
	sub r0, r0, #1
	strh r0, [r4, #0x14]
	pop {r4, pc}
_021A0134:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	ldr r2, [r4, #0xc]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044CFC
	pop {r4, pc}
	thumb_func_end ovy185_21a0108

	thumb_func_start ovy185_21a0148
ovy185_21a0148: ; 0x021A0148
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [sp, #8]
	str r1, [r4]
	ldr r1, [sp, #0xc]
	sub r0, r0, r3
	str r2, [r4, #4]
	str r1, [r4, #0x14]
	str r3, [r4, #8]
	blx sub_0208D65C
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [r4, #0xc]
	ldr r0, _021A0174 ; =ovy185_21a01a0
	add r1, r4, #0
	str r2, [r4, #0x18]
	bl sub_0219D484
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
_021A0174: .word ovy185_21a01a0
	thumb_func_end ovy185_21a0148

	thumb_func_start ovy185_21a0178
ovy185_21a0178: ; 0x021A0178
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021A0198
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021A019C
	ldr r0, [r4, #0x1c]
	bl GFL_TCBRemove
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_021A0198:
	mov r0, #1
	pop {r4, pc}
_021A019C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy185_21a0178

	thumb_func_start ovy185_21a01a0
ovy185_21a01a0: ; 0x021A01A0
	push {r3, r4, lr}
	sub sp, #4
	add r2, r1, #0
	ldr r4, [r2, #0x14]
	cmp r4, #0
	beq _021A01BC
	ldr r1, [r2, #8]
	ldr r0, [r2, #0x10]
	add r0, r1, r0
	str r0, [r2, #8]
	asr r3, r0, #3
	sub r0, r4, #1
	str r0, [r2, #0x14]
	b _021A01C0
_021A01BC:
	ldr r0, [r2, #0xc]
	asr r3, r0, #3
_021A01C0:
	cmp r3, #0x10
	ble _021A01C6
	mov r3, #0x10
_021A01C6:
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021A01D8 ; =0x04000050
	ldmia r2!, {r1, r2}
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021A01D8: .word 0x04000050
	thumb_func_end ovy185_21a01a0

	thumb_func_start ovy185_21a01dc
ovy185_21a01dc: ; 0x021A01DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021A0214 ; =0x04000050
	add r6, r2, #0
	add r7, r3, #0
	add r4, r1, #0
	bl G2x_SetBlendBrightness_
	ldr r1, [sp, #0x18]
	lsl r2, r6, #0xc
	lsl r0, r7, #0xc
	str r0, [r5, #0xc]
	sub r0, r0, r2
	str r4, [r5]
	str r1, [r5, #0x14]
	str r2, [r5, #8]
	blx sub_0208D65C
	str r0, [r5, #0x10]
	mov r2, #0
	ldr r0, _021A0218 ; =0x021A0245
	add r1, r5, #0
	str r2, [r5, #0x18]
	bl sub_0219D484
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0214: .word 0x04000050
_021A0218: .word 0x021A0245
	thumb_func_end ovy185_21a01dc

	thumb_func_start ovy185_21a021c
ovy185_21a021c: ; 0x021A021C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021A023C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021A0240
	ldr r0, [r4, #0x1c]
	bl GFL_TCBRemove
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_021A023C:
	mov r0, #1
	pop {r4, pc}
_021A0240:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy185_21a021c
_021A0244:
	.byte 0x4B, 0x69, 0x00, 0x2B, 0x07, 0xD0, 0x8A, 0x68, 0x08, 0x69, 0x10, 0x18
	.byte 0x88, 0x60, 0x02, 0x13, 0x58, 0x1E, 0x48, 0x61, 0x01, 0xE0, 0xC8, 0x68, 0x02, 0x13, 0x02, 0x48
	.byte 0x09, 0x68, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x50, 0x00, 0x00, 0x04, 0x89, 0x4A, 0x07, 0x02

	thumb_func_start ovy185_21a0270
ovy185_21a0270: ; 0x021A0270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021A0308 ; =0x00000135
	add r5, r1, #0
	add r7, r2, #0
	str r0, [sp]
	ldr r3, _021A030C ; =0x021A7548
	mov r0, #0x2a
	mov r1, #0xbc
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	str r6, [r4]
	str r5, [r4, #4]
	str r7, [r4, #8]
	add r0, r5, #0
	bl sub_021A2FB4
	str r0, [r4, #0xc]
	mov r0, #0
	mov r1, #2
	mov r2, #0x9f
	mov r3, #0x2a
	mov r5, #0
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x30]
	mov r7, #0x2a
_021A02AC:
	ldr r0, [r4]
	bl sub_0219E524
	add r6, r0, #0
	ldr r0, [r4]
	bl sub_0219E52C
	add r3, r0, #0
	mov r0, #0
	mov r1, #8
	add r2, r6, #0
	str r7, [sp]
	bl sub_0202E168
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #0x34]
	cmp r5, #3
	blt _021A02AC
	mov r0, #0x40
	str r0, [sp]
	mov r3, #7
	add r0, r7, #0
	mov r1, #9
	mov r2, #0
	lsl r3, r3, #6
	str r7, [sp, #4]
	bl sub_0204B0B8
	add r0, r4, #0
	bl ovy185_21a0a74
	add r0, r4, #0
	bl ovy185_21a0924
	add r0, r4, #0
	bl ovy185_21a09f4
	add r0, r4, #0
	bl ovy185_21a0bd0
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0308: .word 0x00000135
_021A030C: .word 0x021A7548
	thumb_func_end ovy185_21a0270

	thumb_func_start ovy185_21a0310
ovy185_21a0310: ; 0x021A0310
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy185_21a03b8
	ldr r0, [r5, #0x28]
	bl sub_0204C108
	ldr r0, [r5, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r5, #0x20]
	bl sub_0204B98C
	ldr r0, [r5, #0x24]
	bl sub_0204BE64
	mov r4, #0
_021A0332:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl sub_0202E1DC
	add r4, r4, #1
	cmp r4, #3
	blt _021A0332
	add r0, r5, #0
	bl sub_021A0C24
	add r0, r5, #0
	bl ovy185_21a0a54
	add r0, r5, #0
	bl ovy185_21a09b4
	ldr r0, [r5, #0x30]
	bl GFL_MsgDataFree
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0310

	thumb_func_start ovy185_21a0364
ovy185_21a0364: ; 0x021A0364
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A036A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _021A0378
	bl sub_0202E37C
_021A0378:
	add r4, r4, #1
	cmp r4, #3
	blt _021A036A
	ldr r0, [r5, #0x2c]
	cmp r0, #3
	bhi _021A03AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0390: ; jump table
	.short _021A03AE - _021A0390 - 2 ; case 0
	.short _021A0398 - _021A0390 - 2 ; case 1
	.short _021A039C - _021A0390 - 2 ; case 2
	.short _021A03AA - _021A0390 - 2 ; case 3
_021A0398:
	mov r0, #2
	str r0, [r5, #0x2c]
_021A039C:
	ldr r0, [r5, #0x28]
	bl sub_0204C560
	cmp r0, #0
	bne _021A03AE
	mov r0, #3
	b _021A03AC
_021A03AA:
	mov r0, #0
_021A03AC:
	str r0, [r5, #0x2c]
_021A03AE:
	add r0, r5, #0
	bl ovy185_21a0c28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0364

	thumb_func_start ovy185_21a03b8
ovy185_21a03b8: ; 0x021A03B8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	add r7, r4, #0
_021A03C2:
	mov r0, #0xc
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021A03DA
	bl GFL_StrBufFree
	mov r0, #0xc
	mul r0, r4
	add r0, r5, r0
	str r6, [r0, #0x40]
_021A03DA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _021A03EE
	bl sub_0202E34C
	lsl r0, r4, #2
	add r0, r5, r0
	str r7, [r0, #0x64]
_021A03EE:
	add r4, r4, #1
	cmp r4, #3
	blt _021A03C2
	mov r6, #0
	add r4, r6, #0
_021A03F8:
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x70]
	add r1, r4, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #8
	blt _021A03F8
	mov r6, #0
_021A040C:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _021A040C
	add r0, r6, #0
	bl sub_02044F90
	ldr r0, [r5, #0x28]
	add r1, r6, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a03b8

	thumb_func_start ovy185_21a0430
ovy185_21a0430: ; 0x021A0430
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ovy185_21a03b8
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x40
	mov r4, #0
	str r0, [sp, #8]
_021A0444:
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r1, r4, #0
	ldr r0, [r5, #0x30]
	add r6, r5, r7
	add r1, #0xe
	bl sub_0204898C
	str r0, [r6, #0x40]
	add r1, r6, #0
	ldr r0, _021A052C ; =0x000039E3
	add r1, #0x44
	strh r0, [r1]
	mov r0, #1
	cmp r4, #1
	beq _021A0468
	mov r0, #0
_021A0468:
	str r0, [r6, #0x48]
	lsl r0, r4, #2
	lsl r3, r4, #1
	add r6, r5, r0
	mov r0, #9
	add r3, r4, r3
	str r0, [sp]
	mov r0, #0x2a
	ldr r1, [sp, #8]
	add r3, #0x12
	str r0, [sp, #4]
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x34]
	add r1, r1, r7
	mov r2, #0x17
	lsr r3, r3, #0x18
	bl sub_0202E1F0
	str r0, [r6, #0x64]
	ldr r0, _021A0530 ; =0x00007B2C
	ldr r3, _021A0534 ; =0x00003545
	str r0, [sp]
	ldr r0, [r6, #0x64]
	ldr r1, [r6, #0x34]
	mov r2, #8
	bl sub_0202E4B4
	add r4, r4, #1
	cmp r4, #2
	blt _021A0444
	add r0, r5, #0
	bl ovy185_21a0624
	mov r0, #0
	mov r4, #0
	bl sub_02044F90
	ldr r0, [r5, #4]
	bl sub_021A30A4
	cmp r0, #0
	bne _021A0520
	ldr r0, [r5, #4]
	bl sub_021A2FB8
	cmp r0, #2
	bne _021A0520
	ldr r0, [r5, #0x70]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x78]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x7c]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	mov r6, #1
_021A050C:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #2
	blt _021A050C
_021A0520:
	add r0, r5, #0
	bl ovy185_21a0588
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A052C: .word 0x000039E3
_021A0530: .word 0x00007B2C
_021A0534: .word 0x00003545
	thumb_func_end ovy185_21a0430

	thumb_func_start ovy185_21a0538
ovy185_21a0538: ; 0x021A0538
	push {r4, lr}
	add r4, r0, #0
	bl ovy185_21a03b8
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _021A055E
	add r0, r4, #0
	bl ovy185_21a0b28
	pop {r4, pc}
_021A055E:
	add r0, r4, #0
	bl ovy185_21a0b44
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0538

	thumb_func_start ovy185_21a0568
ovy185_21a0568: ; 0x021A0568
	push {r4, lr}
	add r4, r0, #0
	bl ovy185_21a03b8
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C488
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0568

	thumb_func_start ovy185_21a0588
ovy185_21a0588: ; 0x021A0588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	bl sub_021A2FC4
	ldr r7, _021A061C ; =0x021A71BF
	add r6, r0, #0
	mov r5, #1
_021A05A2:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	bl sub_0204C4A0
	lsl r1, r5, #1
	add r1, r7, r1
	ldrb r1, [r1, #1]
	cmp r0, r1
	bne _021A05BA
	str r5, [sp, #4]
	b _021A05C0
_021A05BA:
	add r5, r5, #1
	cmp r5, #5
	ble _021A05A2
_021A05C0:
	mov r1, #0
_021A05C2:
	cmp r1, r6
	bne _021A05CE
	ldr r0, _021A0620 ; =0x021A71B4
	ldrb r0, [r0, r1]
	str r0, [sp]
	b _021A05D4
_021A05CE:
	add r1, r1, #1
	cmp r1, #5
	blt _021A05C2
_021A05D4:
	ldr r0, [sp, #4]
	cmp r0, #0
	blt _021A05E8
	add r1, r0, #0
	ldr r0, [sp]
	cmp r1, r0
	beq _021A05E8
	add r0, r4, #0
	bl sub_021A0D50
_021A05E8:
	ldr r7, _021A0620 ; =0x021A71B4
	mov r5, #0
_021A05EC:
	mov r2, #1
	cmp r5, r6
	beq _021A05F4
	mov r2, #0
_021A05F4:
	ldrb r1, [r7, r5]
	add r0, r4, #0
	bl sub_021A09D8
	add r5, r5, #1
	cmp r5, #5
	blt _021A05EC
	ldr r0, [sp]
	cmp r0, #0
	blt _021A0616
	ldr r1, [sp, #4]
	cmp r1, r0
	beq _021A0616
	ldr r1, [sp]
	add r0, r4, #0
	bl ovy185_21a0d28
_021A0616:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A061C: .word 0x021A71BF
_021A0620: .word 0x021A71B4
	thumb_func_end ovy185_21a0588

	thumb_func_start ovy185_21a0624
ovy185_21a0624: ; 0x021A0624
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A3104
	cmp r0, #0
	ldr r0, _021A0658 ; =0x00007B2C
	ldr r3, _021A065C ; =0x00003545
	beq _021A0648
	str r0, [sp]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x34]
	mov r2, #8
	bl sub_0202E4B4
	add sp, #4
	pop {r3, r4, pc}
_021A0648:
	str r0, [sp]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x34]
	mov r2, #0xe
	bl sub_0202E4B4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021A0658: .word 0x00007B2C
_021A065C: .word 0x00003545
	thumb_func_end ovy185_21a0624

	thumb_func_start ovy185_21a0660
ovy185_21a0660: ; 0x021A0660
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A30DC
	cmp r0, #0
	ldr r0, _021A06B8 ; =0x00007B2C
	ldr r3, _021A06BC ; =0x00003545
	beq _021A067E
	str r0, [sp]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x34]
	mov r2, #8
	b _021A0686
_021A067E:
	str r0, [sp]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x34]
	mov r2, #0xe
_021A0686:
	bl sub_0202E4B4
	ldr r0, [r4, #4]
	bl sub_021A30E8
	cmp r0, #0
	ldr r0, _021A06B8 ; =0x00007B2C
	ldr r3, _021A06BC ; =0x00003545
	beq _021A06A8
	str r0, [sp]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x38]
	mov r2, #8
	bl sub_0202E4B4
	add sp, #4
	pop {r3, r4, pc}
_021A06A8:
	str r0, [sp]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x38]
	mov r2, #0xe
	bl sub_0202E4B4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021A06B8: .word 0x00007B2C
_021A06BC: .word 0x00003545
	thumb_func_end ovy185_21a0660

	thumb_func_start ovy185_21a06c0
ovy185_21a06c0: ; 0x021A06C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _021A06D8
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ovy185_21a089c
_021A06D8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a06c0

	thumb_func_start ovy185_21a06dc
ovy185_21a06dc: ; 0x021A06DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _021A06FE
	add r0, r4, #0
	mov r1, #2
	bl sub_021A08D0
	cmp r0, #0
	beq _021A06FA
	mov r0, #1
	pop {r4, pc}
_021A06FA:
	mov r0, #0
	pop {r4, pc}
_021A06FE:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a06dc

	thumb_func_start sub_021A0704
sub_021A0704: ; 0x021A0704
	ldr r3, _021A070C ; =sub_021A09D8
	mov r1, #7
	mov r2, #1
	bx r3
	.align 2, 0
_021A070C: .word sub_021A09D8
	thumb_func_end sub_021A0704

	thumb_func_start ovy185_21a0710
ovy185_21a0710: ; 0x021A0710
	push {r3, lr}
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _021A0722
	mov r0, #1
	pop {r3, pc}
_021A0722:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0710

	thumb_func_start sub_021A0728
sub_021A0728: ; 0x021A0728
	ldr r3, _021A0730 ; =sub_021A09D8
	mov r1, #7
	mov r2, #0
	bx r3
	.align 2, 0
_021A0730: .word sub_021A09D8
	thumb_func_end sub_021A0728

	thumb_func_start ovy185_21a0734
ovy185_21a0734: ; 0x021A0734
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _021A074C
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl ovy185_21a089c
_021A074C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0734

	thumb_func_start ovy185_21a0750
ovy185_21a0750: ; 0x021A0750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _021A0776
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl sub_021A08D0
	cmp r0, #0
	beq _021A077A
	ldr r0, [r5, #0x68]
	bl sub_0202E4AC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0776:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A077A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0750

	thumb_func_start ovy185_21a0780
ovy185_21a0780: ; 0x021A0780
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _021A0798
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ovy185_21a089c
_021A0798:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0780

	thumb_func_start ovy185_21a079c
ovy185_21a079c: ; 0x021A079C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A2FBC
	cmp r0, #1
	bne _021A07BE
	add r0, r4, #0
	mov r1, #0
	mov r4, #0
	bl sub_021A08D0
	cmp r0, #0
	beq _021A07BA
	mov r4, #1
_021A07BA:
	add r0, r4, #0
	pop {r4, pc}
_021A07BE:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a079c

	thumb_func_start ovy185_21a07c4
ovy185_21a07c4: ; 0x021A07C4
	push {r3, lr}
	cmp r1, #3
	bhi _021A07F4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A07D6: ; jump table
	.short _021A07DE - _021A07D6 - 2 ; case 0
	.short _021A07E4 - _021A07D6 - 2 ; case 1
	.short _021A07EA - _021A07D6 - 2 ; case 2
	.short _021A07F0 - _021A07D6 - 2 ; case 3
_021A07DE:
	bl ovy185_21a06c0
	pop {r3, pc}
_021A07E4:
	bl sub_021A0704
	pop {r3, pc}
_021A07EA:
	bl ovy185_21a0734
	pop {r3, pc}
_021A07F0:
	bl ovy185_21a0780
_021A07F4:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a07c4

	thumb_func_start ovy185_21a07f8
ovy185_21a07f8: ; 0x021A07F8
	push {r3, lr}
	cmp r1, #0
	beq _021A0804
	cmp r1, #1
	beq _021A080E
	pop {r3, pc}
_021A0804:
	mov r1, #0
	mov r2, #1
	bl sub_021A09D8
	pop {r3, pc}
_021A080E:
	mov r1, #6
	mov r2, #1
	bl sub_021A09D8
	pop {r3, pc}
	thumb_func_end ovy185_21a07f8

	thumb_func_start ovy185_21a0818
ovy185_21a0818: ; 0x021A0818
	push {r3, lr}
	cmp r1, #3
	bhi _021A084A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A082A: ; jump table
	.short _021A0832 - _021A082A - 2 ; case 0
	.short _021A0838 - _021A082A - 2 ; case 1
	.short _021A083E - _021A082A - 2 ; case 2
	.short _021A0844 - _021A082A - 2 ; case 3
_021A0832:
	bl ovy185_21a06dc
	pop {r3, pc}
_021A0838:
	bl ovy185_21a0710
	pop {r3, pc}
_021A083E:
	bl ovy185_21a0750
	pop {r3, pc}
_021A0844:
	bl ovy185_21a079c
	pop {r3, pc}
_021A084A:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0818

	thumb_func_start ovy185_21a0850
ovy185_21a0850: ; 0x021A0850
	push {r3, lr}
	cmp r1, #1
	bne _021A085A
	bl sub_021A0728
_021A085A:
	pop {r3, pc}
	thumb_func_end ovy185_21a0850

	thumb_func_start ovy185_21a085c
ovy185_21a085c: ; 0x021A085C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r5, #0
	lsl r0, r1, #2
	add r7, #0x64
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	str r2, [sp]
	cmp r0, #0
	beq _021A0896
	mov r4, #0
	add r6, r4, #0
_021A0876:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _021A0886
	add r1, r6, #0
	bl sub_0202E41C
_021A0886:
	add r4, r4, #1
	cmp r4, #3
	blt _021A0876
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r7, r0]
	bl sub_0202E41C
_021A0896:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_21a085c

	thumb_func_start ovy185_21a089c
ovy185_21a089c: ; 0x021A089C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r6, r4, #0
_021A08A8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _021A08B8
	add r1, r6, #0
	bl sub_0202E41C
_021A08B8:
	add r4, r4, #1
	cmp r4, #3
	blt _021A08A8
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, #0x64]
	cmp r0, #0
	beq _021A08CE
	ldr r1, [sp]
	bl sub_0202E430
_021A08CE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a089c

	thumb_func_start sub_021A08D0
sub_021A08D0: ; 0x021A08D0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x64]
	ldr r3, _021A08DC ; =sub_0202E438
	bx r3
	nop
_021A08DC: .word sub_0202E438
	thumb_func_end sub_021A08D0

	thumb_func_start ovy185_21a08e0
ovy185_21a08e0: ; 0x021A08E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0204C138
	cmp r0, #0
	beq _021A0902
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _021A0902
	ldr r0, [r4, #0x28]
	mov r1, #9
	bl sub_0204C488
	mov r0, #1
	str r0, [r4, #0x2c]
	pop {r4, pc}
_021A0902:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a08e0

	thumb_func_start ovy185_21a0908
ovy185_21a0908: ; 0x021A0908
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0204C138
	cmp r0, #0
	beq _021A0920
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	beq _021A0920
	mov r0, #0
	pop {r4, pc}
_021A0920:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy185_21a0908

	thumb_func_start ovy185_21a0924
ovy185_21a0924: ; 0x021A0924
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x2a
	mov r1, #0x2a
	mov r7, #0x2a
	bl sub_0204AA30
	add r6, r0, #0
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #0x10
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_0219E544
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x14]
	add r0, r6, #0
	mov r1, #0x23
	mov r2, #0x29
	mov r3, #0x2a
	bl sub_0204BDE0
	str r0, [r5, #0x18]
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x10
	add r7, r4, #0
	str r0, [sp, #8]
_021A0974:
	mov r0, #0x18
	mul r0, r4
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	cmp r4, #7
	bne _021A0982
	mov r2, #0
_021A0982:
	lsl r0, r4, #2
	add r6, r5, r0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [sp, #8]
	mov r3, #0xa8
	bl ovy185_219e558
	str r0, [r6, #0x70]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_021A09D8
	ldr r0, [r6, #0x70]
	add r1, r7, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #8
	blt _021A0974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a0924

	thumb_func_start ovy185_21a09b4
ovy185_21a09b4: ; 0x021A09B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A09BA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x70]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #8
	blt _021A09BA
	ldr r0, [r5, #0x14]
	bl sub_0204B98C
	ldr r0, [r5, #0x18]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a09b4

	thumb_func_start sub_021A09D8
sub_021A09D8: ; 0x021A09D8
	lsl r3, r1, #2
	add r0, r0, r3
	lsl r3, r1, #1
	ldr r1, _021A09EC ; =0x021A71BF
	ldr r0, [r0, #0x70]
	add r1, r1, r3
	ldrb r1, [r2, r1]
	ldr r3, _021A09F0 ; =sub_0204C488
	bx r3
	nop
_021A09EC: .word 0x021A71BF
_021A09F0: .word sub_0204C488
	thumb_func_end sub_021A09D8

	thumb_func_start ovy185_21a09f4
ovy185_21a09f4: ; 0x021A09F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r0, [sp, #8]
	add r0, #0x10
	mov r4, #0
	str r0, [sp, #8]
_021A0A02:
	lsl r0, r4, #1
	add r3, r4, r0
	ldr r0, _021A0A50 ; =0x021A71B9
	ldr r2, _021A0A50 ; =0x021A71B9
	add r7, r0, r3
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	ldrb r2, [r2, r3]
	str r0, [sp, #4]
	ldrb r3, [r7, #1]
	ldr r0, [r5]
	ldr r1, [sp, #8]
	lsl r6, r4, #2
	bl ovy185_219e558
	add r1, r5, r6
	add r1, #0x90
	str r0, [r1]
	add r0, r5, r6
	add r0, #0x90
	ldrb r1, [r7, #2]
	ldr r0, [r0]
	bl sub_0204C488
	add r0, r5, r6
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A0A02
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A0A50: .word 0x021A71B9
	thumb_func_end ovy185_21a09f4

	thumb_func_start ovy185_21a0a54
ovy185_21a0a54: ; 0x021A0A54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021A0A5A:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021A0A5A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0a54

	thumb_func_start ovy185_21a0a74
ovy185_21a0a74: ; 0x021A0A74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_0202D7E0
	mov r1, #0x2a
	mov r6, #0x2a
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_0202D810
	mov r7, #0
	add r1, r0, #0
	mov r3, #3
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r2, #0
	lsl r3, r3, #7
	bl sub_0204BBB8
	str r0, [r5, #0x1c]
	bl sub_0202D814
	add r1, r0, #0
	str r6, [sp]
	add r0, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x20]
	mov r0, #1
	bl sub_0202D818
	str r0, [sp, #0xc]
	mov r0, #1
	bl sub_0202D81C
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0x2a
	bl sub_0204BDE0
	str r0, [r5, #0x24]
	add r0, r4, #0
	bl sub_0204AB0C
	add r4, sp, #0x10
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #0xe8
	add r1, sp, #0x10
	strh r0, [r1]
	mov r0, #0xa8
	strh r0, [r1, #2]
	mov r0, #1
	strh r0, [r1, #4]
	strb r7, [r1, #6]
	mov r0, #3
	strb r0, [r1, #7]
	ldr r0, [r5]
	bl sub_0219E520
	str r4, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	bl sub_0204C040
	str r0, [r5, #0x28]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl sub_0204C124
	str r7, [r5, #0x2c]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a0a74

	thumb_func_start ovy185_21a0b28
ovy185_21a0b28: ; 0x021A0B28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C488
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0b28

	thumb_func_start ovy185_21a0b44
ovy185_21a0b44: ; 0x021A0B44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r0, [sp, #8]
	add r0, #0x40
	mov r4, #0
	str r0, [sp, #8]
_021A0B52:
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r1, r4, #0
	ldr r0, [r6, #0x30]
	add r5, r6, r7
	add r1, #0x12
	bl sub_0204898C
	str r0, [r5, #0x40]
	add r1, r5, #0
	ldr r0, _021A0BC4 ; =0x000039E3
	add r1, #0x44
	strh r0, [r1]
	mov r0, #1
	cmp r4, #2
	beq _021A0B76
	mov r0, #0
_021A0B76:
	str r0, [r5, #0x48]
	lsl r0, r4, #2
	lsl r2, r4, #3
	add r5, r6, r0
	mov r0, #9
	add r2, r4, r2
	str r0, [sp]
	mov r0, #0x2a
	ldr r1, [sp, #8]
	add r2, r2, #5
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x34]
	add r1, r1, r7
	lsr r2, r2, #0x18
	mov r3, #0x15
	bl sub_0202E1F0
	str r0, [r5, #0x64]
	ldr r0, _021A0BC8 ; =0x00007B2C
	ldr r3, _021A0BCC ; =0x00003545
	str r0, [sp]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x34]
	mov r2, #8
	bl sub_0202E4B4
	add r4, r4, #1
	cmp r4, #3
	blt _021A0B52
	add r0, r6, #0
	bl ovy185_21a0660
	mov r0, #0
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A0BC4: .word 0x000039E3
_021A0BC8: .word 0x00007B2C
_021A0BCC: .word 0x00003545
	thumb_func_end ovy185_21a0b44

	thumb_func_start ovy185_21a0bd0
ovy185_21a0bd0: ; 0x021A0BD0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x2a
	mov r1, #7
	add r2, sp, #0
	mov r3, #0x2a
	bl sub_0204B354
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	ldr r4, [r0, #0xc]
	add r1, #0x98
	add r0, r4, #0
	add r0, #0x96
	mov r2, #0xa
	blx MI_CpuCopy8
	add r4, #0x76
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0xa2
	mov r2, #0xa
	blx MI_CpuCopy8
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x98
	add r1, #0xac
	mov r2, #0xa
	blx MI_CpuCopy8
	mov r0, #0
	add r5, #0xb8
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0bd0

	thumb_func_start sub_021A0C24
sub_021A0C24: ; 0x021A0C24
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0C24

	thumb_func_start ovy185_21a0c28
ovy185_21a0c28: ; 0x021A0C28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #0xb8
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xa
	add r3, r0, r1
	lsl r0, r1, #6
	cmp r3, r0
	blt _021A0C4C
	add r0, r2, #0
	add r0, #0xb8
	ldr r1, [r0]
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r1, r1, r0
	b _021A0C54
_021A0C4C:
	add r0, r2, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r0, r1
_021A0C54:
	add r0, r2, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r2, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r3, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A0D24 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r4, r0, #0x10
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #4]
_021A0C88:
	lsl r7, r3, #1
	add r0, r2, r7
	add r0, #0x98
	ldrh r5, [r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r2, r7
	add r0, #0xa2
	ldrh r1, [r0]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, ip
	and r0, r5
	ldr r5, [sp, #4]
	asr r0, r0, #0xa
	and r5, r1
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r4
	asr r5, r5, #0xc
	add r0, r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0xa
	mov r5, #0x3e
	str r0, [sp, #8]
	mov r0, #0x1f
	and r0, r1
	lsl r5, r5, #4
	and r1, r5
	lsl r1, r1, #0x13
	lsr r5, r1, #0x18
	ldr r1, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r1, r5, r1
	sub r0, r0, r6
	mul r1, r4
	mul r0, r4
	asr r5, r1, #0xc
	ldr r1, [sp]
	asr r0, r0, #0xc
	add r0, r6, r0
	add r1, r1, r5
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	orr r1, r0
	ldr r0, [sp, #8]
	orr r1, r0
	add r0, r2, r7
	add r0, #0xac
	strh r1, [r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #5
	blo _021A0C88
	mov r0, #0xe
	mov r1, #0x56
	add r2, #0xac
	mov r3, #0xa
	bl sub_0205FA10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A0D24: .word FX_SinCosTable_
	thumb_func_end ovy185_21a0c28

	thumb_func_start ovy185_21a0d28
ovy185_21a0d28: ; 0x021A0D28
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #0x70]
	mov r1, #2
	mov r2, #1
	bl sub_0204C378
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x98
	add r1, #0xac
	mov r2, #0xa
	blx MI_CpuCopy8
	mov r0, #0
	add r4, #0xb8
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy185_21a0d28

	thumb_func_start sub_021A0D50
sub_021A0D50: ; 0x021A0D50
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x70]
	ldr r3, _021A0D60 ; =sub_0204C378
	mov r1, #6
	mov r2, #1
	bx r3
	nop
_021A0D60: .word sub_0204C378
	thumb_func_end sub_021A0D50

	thumb_func_start ovy185_21a0d64
ovy185_21a0d64: ; 0x021A0D64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r7, r2, #0
	cmp r0, #0
	beq _021A0D7C
	cmp r0, #1
	beq _021A0DB4
	cmp r0, #2
	beq _021A0DE2
	b _021A0E02
_021A0D7C:
	ldr r0, _021A0E0C ; =0x0000008B
	bl sub_0203CE0C
	mov r2, #6
	mov r0, #1
	mov r1, #0x29
	lsl r2, r2, #0xe
	bl GFL_HeapCreateChild
	mov r2, #0x32
	mov r0, #1
	mov r1, #0x2a
	lsl r2, r2, #0xc
	bl GFL_HeapCreateChild
	add r0, r6, #0
	add r1, r7, #0
	bl ovy185_21a0ea4
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
_021A0DA8:
	bl ovy185_219d4cc
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021A0E02
_021A0DB4:
	add r4, r3, #0
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A0E02
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021A0DD4
	ldr r0, [r4, #0x14]
	bl sub_0219E4C8
	add r1, r4, #0
	add r1, #0x68
	strb r0, [r1]
	b _021A0DDC
_021A0DD4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x68
	strb r1, [r0]
_021A0DDC:
	ldr r0, [r4, #0x14]
	mov r1, #4
	b _021A0DA8
_021A0DE2:
	add r4, r3, #0
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A0E02
	ldr r1, _021A0E10 ; =ovy185_21a1174
	add r0, r4, #0
	bl ovy185_21a1080
	mov r0, #1
	mov r1, #0x2a
	bl sub_02042BA8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A0E02:
	ldr r0, [r4, #0x7c]
	bl sub_0203A5D0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0E0C: .word 0x0000008B
_021A0E10: .word ovy185_21a1174
	thumb_func_end ovy185_21a0d64

	thumb_func_start ovy185_21a0e14
ovy185_21a0e14: ; 0x021A0E14
	push {r3, r4, r5, lr}
	add r4, r3, #0
	bl GCTX_HIDGetPressedKeys
	strh r0, [r4, #0x34]
	bl sub_0203DF20
	strh r0, [r4, #0x36]
	bl sub_0203DF44
	strh r0, [r4, #0x38]
	ldr r0, [r4, #0x44]
	bl sub_020504F0
	ldr r2, [r4, #0x30]
	cmp r2, #0
	beq _021A0E42
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x2c
	blx r2
	mov r5, #0
	b _021A0E4E
_021A0E42:
	add r1, r4, #0
	ldr r2, [r4, #0x24]
	add r0, r4, #0
	add r1, #0x20
	blx r2
	add r5, r0, #0
_021A0E4E:
	ldr r0, [r4, #0x7c]
	bl sub_0203A5D0
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a0e14
_021A0E58:
	.byte 0x03, 0x29, 0x0E, 0xD8, 0x49, 0x18, 0x79, 0x44
	.byte 0xC9, 0x88, 0x09, 0x04, 0x09, 0x14, 0x8F, 0x44, 0x06, 0x00, 0x0A, 0x00, 0x14, 0x00, 0x0A, 0x00
	.byte 0xD0, 0x63, 0x70, 0x47, 0x01, 0x20, 0xD0, 0x63, 0x70, 0x47, 0x01, 0x20, 0xD0, 0x63, 0x70, 0x47

	thumb_func_start ovy185_21a0e80
ovy185_21a0e80: ; 0x021A0E80
	push {r3, lr}
	add r1, r0, #0
	add r0, r3, #0
	bl ovy185_21a1044
	mov r0, #0x29
	bl sub_0203A1D0
	mov r0, #0x2a
	bl sub_0203A1D0
	ldr r0, _021A0EA0 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
_021A0EA0: .word 0x0000008B
	thumb_func_end ovy185_21a0e80

	thumb_func_start ovy185_21a0ea4
ovy185_21a0ea4: ; 0x021A0EA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x80
	mov r2, #0x29
	bl GFL_ProcInitSubsystem
	add r5, r0, #0
	str r4, [r5]
	add r0, r4, #0
	bl sub_02029A68
	str r0, [r5, #4]
	ldr r0, [r5]
	bl sub_02029B40
	str r0, [r5, #0x70]
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, [r5]
	add r1, #0x10
	add r2, #8
	bl sub_02029A8C
	ldr r0, [r5, #4]
	cmp r0, #2
	bne _021A0EE4
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x64
	add r1, #8
	bl ovy185_21a0f70
_021A0EE4:
	mov r0, #5
	bl sub_0203A584
	add r1, r0, #0
	ldr r0, _021A0F5C ; =0x00000253
	ldr r3, _021A0F60 ; =0x021A7558
	str r0, [sp]
	mov r0, #0x29
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r1, r0, #0
	str r1, [r5, #0x78]
	mov r0, #5
	bl sub_0203A58C
	str r0, [r5, #0x7c]
	ldr r1, [r5]
	mov r0, #0x29
	bl ovy185_219ce80
	add r1, r0, #0
	str r1, [r5, #0x18]
	add r0, r5, #0
	bl ovy185_219d330
	str r0, [r5, #0x14]
	ldr r0, _021A0F64 ; =0x021A71E8
	ldr r1, _021A0F68 ; =0x021A0E59
	add r2, r5, #0
	mov r3, #0x29
	bl ButtonSystem_Create
	str r0, [r5, #0x44]
	add r0, r5, #0
	add r0, #0x69
	strb r4, [r0]
	str r4, [r5, #0x30]
	add r0, r5, #0
	str r4, [r5, #0x2c]
	add r0, #0x4a
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0x48
	strh r4, [r0]
	mov r0, #1
	str r0, [r5, #0x3c]
	ldr r1, [r5, #0x18]
	add r0, r5, #0
	mov r2, #0x29
	bl ovy185_219e7bc
	str r0, [r5, #0x1c]
	ldr r1, _021A0F6C ; =ovy185_21a2de8
	add r0, r5, #0
	bl sub_021A2DD8
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0F5C: .word 0x00000253
_021A0F60: .word 0x021A7558
_021A0F64: .word 0x021A71E8
_021A0F68: .word 0x021A0E59
_021A0F6C: .word ovy185_21a2de8
	thumb_func_end ovy185_21a0ea4

	thumb_func_start ovy185_21a0f70
ovy185_21a0f70: ; 0x021A0F70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02029E50
	strh r0, [r5]
	mov r0, #0
	ldrsh r0, [r5, r0]
	bl sub_02029EA8
	strb r0, [r5, #3]
	add r0, r4, #0
	bl sub_02029E54
	strb r0, [r5, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a0f70

	thumb_func_start ovy185_21a0f94
ovy185_21a0f94: ; 0x021A0F94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	ldrsb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, #2]
	ldrsb r1, [r5, r0]
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _021A0FC8
	mov r1, #0
	strb r1, [r5, #2]
	ldrsh r0, [r5, r1]
	add r0, r0, #1
	strh r0, [r5]
	ldrsh r0, [r5, r1]
	cmp r0, #5
	blt _021A0FBE
	strh r1, [r5]
_021A0FBE:
	mov r0, #0
	ldrsh r0, [r5, r0]
	bl sub_02029EA8
	strb r0, [r5, #3]
_021A0FC8:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsb r2, [r5, r2]
	add r0, r4, #0
	bl sub_02029EBC
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a0f94

	thumb_func_start ovy185_21a0fd8
ovy185_21a0fd8: ; 0x021A0FD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	ldrsb r1, [r5, r0]
	sub r1, r1, #1
	strb r1, [r5, #2]
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _021A1010
	mov r0, #0
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _021A0FFE
	mov r0, #4
	strh r0, [r5]
_021A0FFE:
	mov r0, #0
	ldrsh r0, [r5, r0]
	bl sub_02029EA8
	strb r0, [r5, #3]
	mov r0, #3
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	strb r0, [r5, #2]
_021A1010:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsb r2, [r5, r2]
	add r0, r4, #0
	bl sub_02029EBC
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a0fd8

	thumb_func_start ovy185_21a1020
ovy185_21a1020: ; 0x021A1020
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #0
	strb r6, [r5, #2]
	strh r2, [r5]
	ldrsh r0, [r5, r6]
	add r4, r1, #0
	bl sub_02029EA8
	strb r0, [r5, #3]
	mov r2, #2
	ldrsh r1, [r5, r6]
	ldrsb r2, [r5, r2]
	add r0, r4, #0
	bl sub_02029EBC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_21a1020

	thumb_func_start ovy185_21a1044
ovy185_21a1044: ; 0x021A1044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #0x70]
	bl sub_02029B48
	ldr r0, [r5, #0x44]
	bl sub_020504DC
	ldr r0, [r5, #0x14]
	bl ovy185_219d400
	ldr r0, [r5, #0x7c]
	bl sub_0203A610
	ldr r0, [r5, #0x78]
	bl sub_0203A24C
	ldr r0, [r5, #0x18]
	bl ovy185_219ced4
	ldr r0, [r5, #0x1c]
	bl ovy185_219e82c
	add r0, r4, #0
	bl sub_0203AB10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a1044

	thumb_func_start ovy185_21a1080
ovy185_21a1080: ; 0x021A1080
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0
	ldr r0, _021A10D0 ; =ovy185_21a1174
	str r1, [r4, #0x24]
	str r2, [r4, #0x20]
	cmp r1, r0
	bne _021A10A0
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r1, r4, #0
	bl ovy185_219e704
	ldr r0, _021A10D4 ; =0x021A1189
	str r0, [r4, #0x74]
	pop {r4, pc}
_021A10A0:
	ldr r0, _021A10D8 ; =ovy185_21a1da0
	cmp r1, r0
	bne _021A10B6
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r1, r4, #0
	bl ovy185_219e774
	ldr r0, _021A10DC ; =0x021A1199
	str r0, [r4, #0x74]
	pop {r4, pc}
_021A10B6:
	ldr r0, _021A10E0 ; =ovy185_21a26cc
	cmp r1, r0
	bne _021A10CC
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	add r1, r4, #0
	bl sub_0219E7B0
	ldr r0, _021A10E4 ; =0x021A11A9
	str r0, [r4, #0x74]
	pop {r4, pc}
_021A10CC:
	str r2, [r4, #0x74]
	pop {r4, pc}
	.align 2, 0
_021A10D0: .word ovy185_21a1174
_021A10D4: .word 0x021A1189
_021A10D8: .word ovy185_21a1da0
_021A10DC: .word 0x021A1199
_021A10E0: .word ovy185_21a26cc
_021A10E4: .word 0x021A11A9
	thumb_func_end ovy185_21a1080

	thumb_func_start ovy185_21a10e8
ovy185_21a10e8: ; 0x021A10E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x70]
	add r4, r1, #0
	cmp r0, #1
	bne _021A111C
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A1100
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1100:
	bl sub_0203DF20
	cmp r0, #0
	beq _021A1144
	ldr r2, [r5, #0x74]
	mov r0, #0
	str r0, [r5, #0x70]
	cmp r2, #0
	beq _021A1118
	add r0, r5, #0
	add r1, r4, #0
	blx r2
_021A1118:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A111C:
	bl sub_0203DF20
	cmp r0, #0
	beq _021A1128
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1128:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021A1144
	ldr r2, [r5, #0x74]
	mov r0, #1
	str r0, [r5, #0x70]
	cmp r2, #0
	beq _021A1140
	add r0, r5, #0
	add r1, r4, #0
	blx r2
_021A1140:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A1144:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a10e8

	thumb_func_start ovy185_21a1148
ovy185_21a1148: ; 0x021A1148
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A116C ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x54
	add r1, r4, #0
	bl ovy185_21a2664
	ldr r0, _021A1170 ; =ovy185_21a26cc
	mov r1, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x14]
	bl ovy185_219d4cc
	pop {r4, pc}
	nop
_021A116C: .word 0x0000054C
_021A1170: .word ovy185_21a26cc
	thumb_func_end ovy185_21a1148

	thumb_func_start ovy185_21a1174
ovy185_21a1174: ; 0x021A1174
	push {r3, lr}
	ldr r2, [r0, #4]
	lsl r3, r2, #2
	ldr r2, _021A1184 ; =0x021A7200
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_021A1184: .word 0x021A7200
	thumb_func_end ovy185_21a1174
_021A1188:
	.byte 0x01, 0x1C, 0x48, 0x69, 0x8A, 0x69, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x05, 0xE7, 0x19, 0x02, 0x01, 0x1C, 0x48, 0x69, 0x8A, 0x69, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x75, 0xE7, 0x19, 0x02, 0x01, 0x1C, 0x48, 0x69, 0x8A, 0x69, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0xB1, 0xE7, 0x19, 0x02

	thumb_func_start ovy185_21a11b8
ovy185_21a11b8: ; 0x021A11B8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #6
	bhi _021A11E8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A11D0: ; jump table
	.short _021A11DE - _021A11D0 - 2 ; case 0
	.short _021A1262 - _021A11D0 - 2 ; case 1
	.short _021A130E - _021A11D0 - 2 ; case 2
	.short _021A1316 - _021A11D0 - 2 ; case 3
	.short _021A131C - _021A11D0 - 2 ; case 4
	.short _021A132E - _021A11D0 - 2 ; case 5
	.short _021A131E - _021A11D0 - 2 ; case 6
_021A11DE:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	bne _021A11EA
_021A11E8:
	b _021A1340
_021A11EA:
	ldrh r0, [r4, #0x34]
	mov r1, #0x40
	tst r1, r0
	beq _021A120C
	ldr r0, _021A1344 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r6, #1
	add r0, #0x48
	strh r6, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl ovy185_219d4cc
	str r6, [r5]
	b _021A1340
_021A120C:
	mov r1, #0x88
	tst r1, r0
	beq _021A122E
	ldr r0, _021A1344 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl ovy185_219d4cc
_021A1228:
	mov r0, #1
_021A122A:
	str r0, [r5]
	b _021A1340
_021A122E:
	mov r1, #2
	tst r1, r0
	beq _021A1244
	ldr r0, _021A1348 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
_021A123C:
	ldr r1, _021A134C ; =ovy185_21a2ee8
_021A123E:
	bl sub_021A2DD8
	b _021A1340
_021A1244:
	mov r1, #1
	tst r0, r1
	beq _021A1340
	ldr r0, _021A1350 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A310C
	ldr r0, [r4, #0x14]
	mov r1, #0xa
	bl ovy185_219d4cc
	mov r0, #5
_021A1260:
	b _021A122A
_021A1262:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1340
	ldrh r0, [r4, #0x34]
	mov r1, #0x40
	tst r1, r0
	beq _021A12A0
	ldr r0, _021A1344 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A129E
_021A1284:
	add r0, r4, #0
	add r0, #0x48
	ldrh r1, [r0]
	mov r0, #1
	eor r1, r0
_021A128E:
	add r0, r4, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x11
	bl ovy185_219d4cc
	b _021A1340
_021A129E:
	b _021A12B6
_021A12A0:
	mov r1, #0x80
	tst r1, r0
	beq _021A12C4
	ldr r0, _021A1344 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A12C2
_021A12B6:
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ovy185_219d4cc
	mov r0, #0
	b _021A1260
_021A12C2:
	b _021A1284
_021A12C4:
	mov r1, #8
	tst r1, r0
	beq _021A12D4
	ldr r0, _021A1344 ; =0x00000548
	bl GFL_SndSEPlay
	mov r1, #0
	b _021A128E
_021A12D4:
	mov r1, #1
	tst r1, r0
	beq _021A1306
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	bne _021A12FC
	add r0, r4, #0
	bl ovy185_21a2f60
	cmp r0, #0
	beq _021A12F2
	ldr r0, _021A1350 ; =0x0000054C
	b _021A12F4
_021A12F2:
	ldr r0, _021A1354 ; =0x00000557
_021A12F4:
	bl GFL_SndSEPlay
	mov r0, #2
	b _021A1260
_021A12FC:
	ldr r0, _021A1348 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #3
	b _021A122A
_021A1306:
	mov r1, #2
	tst r0, r1
	beq _021A1340
	b _021A12FC
_021A130E:
	mov r1, #4
	str r1, [r5]
	ldr r1, _021A1358 ; =ovy185_21a2e1c
	b _021A123E
_021A1316:
	mov r1, #4
	str r1, [r5]
	b _021A123C
_021A131C:
	b _021A1228
_021A131E:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1340
	add r0, r4, #0
	ldr r1, _021A135C ; =ovy185_21a1c98
	b _021A133C
_021A132E:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1340
	ldr r1, _021A1360 ; =ovy185_21a1da0
	add r0, r4, #0
_021A133C:
	bl ovy185_21a1080
_021A1340:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A1344: .word 0x00000548
_021A1348: .word 0x00000551
_021A134C: .word ovy185_21a2ee8
_021A1350: .word 0x0000054C
_021A1354: .word 0x00000557
_021A1358: .word ovy185_21a2e1c
_021A135C: .word ovy185_21a1c98
_021A1360: .word ovy185_21a1da0
	thumb_func_end ovy185_21a11b8

	thumb_func_start sub_021A1364
sub_021A1364: ; 0x021A1364
	ldr r0, _021A136C ; =0x021A7218
	ldr r3, _021A1370 ; =sub_0203DA0C
	bx r3
	nop
_021A136C: .word 0x021A7218
_021A1370: .word sub_0203DA0C
	thumb_func_end sub_021A1364

	thumb_func_start sub_021A1374
sub_021A1374: ; 0x021A1374
	ldr r0, _021A137C ; =0x021A7228
	ldr r3, _021A1380 ; =sub_0203DA0C
	bx r3
	nop
_021A137C: .word 0x021A7228
_021A1380: .word sub_0203DA0C
	thumb_func_end sub_021A1374

	thumb_func_start ovy185_21a1384
ovy185_21a1384: ; 0x021A1384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _021A1428 ; =0x021A71D0
	add r5, r0, #0
	add r2, sp, #0
	mov r1, #8
_021A1390:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A1390
	bl sub_0203DA48
	cmp r0, #0
	bne _021A13AC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021A13AC:
	ldr r0, _021A142C ; =0x021A723C
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A13DC
	ldr r0, [r5]
	bl sub_02029A7C
	cmp r0, #0
	beq _021A13D6
	sub r0, r4, #2
	cmp r0, #3
	bhi _021A13D0
	mov r4, #0
	mvn r4, r4
_021A13D0:
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A13D6:
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A13DC:
	ldr r0, [r5, #0x14]
	bl sub_0219E4C8
	add r6, r0, #0
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	mov r4, #0
	cmp r6, #0
	ble _021A141E
	add r7, sp, #0
_021A13F4:
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl sub_0219E4E0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, #0
	bl sub_0203DADC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A1418
	add sp, #0x10
	add r0, r4, #6
	pop {r3, r4, r5, r6, r7, pc}
_021A1418:
	add r4, r4, #1
	cmp r4, r6
	blt _021A13F4
_021A141E:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1428: .word 0x021A71D0
_021A142C: .word 0x021A723C
	thumb_func_end ovy185_21a1384

	thumb_func_start ovy185_21a1430
ovy185_21a1430: ; 0x021A1430
	push {r3, lr}
	sub sp, #8
	ldr r0, [r0]
	bl sub_02029A7C
	cmp r0, #0
	beq _021A1446
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, pc}
_021A1446:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	bne _021A145A
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, pc}
_021A145A:
	ldr r0, [sp]
	cmp r0, #0xa8
	bls _021A1470
	ldr r0, [sp, #4]
	mov r1, #0x18
	blx sub_0208D868
	sub r0, r0, #1
	bmi _021A1470
	cmp r0, #5
	blt _021A1474
_021A1470:
	mov r0, #0
	mvn r0, r0
_021A1474:
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy185_21a1430

	thumb_func_start ovy185_21a1478
ovy185_21a1478: ; 0x021A1478
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #5
	bhi _021A1534
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A1490: ; jump table
	.short _021A149C - _021A1490 - 2 ; case 0
	.short _021A149C - _021A1490 - 2 ; case 1
	.short _021A150A - _021A1490 - 2 ; case 2
	.short _021A1516 - _021A1490 - 2 ; case 3
	.short _021A151E - _021A1490 - 2 ; case 4
	.short _021A1522 - _021A1490 - 2 ; case 5
_021A149C:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021A14A8
	bl sub_021A1364
	b _021A14AC
_021A14A8:
	bl sub_021A1374
_021A14AC:
	add r6, r0, #0
	cmp r6, #3
	bhi _021A1534
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A14BE: ; jump table
	.short _021A14C6 - _021A14BE - 2 ; case 0
	.short _021A14E0 - _021A14BE - 2 ; case 1
	.short _021A14EA - _021A14BE - 2 ; case 2
	.short _021A14EA - _021A14BE - 2 ; case 3
_021A14C6:
	add r0, r5, #0
	bl ovy185_21a2f60
	cmp r0, #0
	beq _021A14D4
	ldr r0, _021A1538 ; =0x0000054C
	b _021A14D6
_021A14D4:
	ldr r0, _021A153C ; =0x00000557
_021A14D6:
	bl GFL_SndSEPlay
	mov r0, #2
_021A14DC:
	str r0, [r4]
	b _021A1534
_021A14E0:
	ldr r0, _021A1540 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #3
	b _021A14DC
_021A14EA:
	ldr r0, _021A1538 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021A310C
	add r0, r5, #0
	sub r1, r6, #2
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	bl ovy185_219d4cc
	mov r0, #5
	b _021A14DC
_021A150A:
	mov r1, #4
	str r1, [r4]
	ldr r1, _021A1544 ; =ovy185_21a2e1c
_021A1510:
	bl sub_021A2DD8
	b _021A1534
_021A1516:
	mov r1, #4
	str r1, [r4]
	ldr r1, _021A1548 ; =ovy185_21a2ee8
	b _021A1510
_021A151E:
	mov r0, #0
	b _021A14DC
_021A1522:
	ldr r0, [r5, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1534
	ldr r1, _021A154C ; =ovy185_21a1da0
	add r0, r5, #0
	bl ovy185_21a1080
_021A1534:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A1538: .word 0x0000054C
_021A153C: .word 0x00000557
_021A1540: .word 0x00000551
_021A1544: .word ovy185_21a2e1c
_021A1548: .word ovy185_21a2ee8
_021A154C: .word ovy185_21a1da0
	thumb_func_end ovy185_21a1478

	thumb_func_start ovy185_21a1550
ovy185_21a1550: ; 0x021A1550
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #1
	bhi _021A1574
	bl ovy185_21a10e8
	cmp r0, #0
	beq _021A1574
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A1574
	ldr r0, _021A1590 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1574:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A1584
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a11b8
	pop {r3, r4, r5, pc}
_021A1584:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a1478
	pop {r3, r4, r5, pc}
	nop
_021A1590: .word 0x00000548
	thumb_func_end ovy185_21a1550

	thumb_func_start ovy185_21a1594
ovy185_21a1594: ; 0x021A1594
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #6
	bhi _021A163E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A15AC: ; jump table
	.short _021A15BA - _021A15AC - 2 ; case 0
	.short _021A1688 - _021A15AC - 2 ; case 1
	.short _021A1734 - _021A15AC - 2 ; case 2
	.short _021A173C - _021A15AC - 2 ; case 3
	.short _021A1742 - _021A15AC - 2 ; case 4
	.short _021A1754 - _021A15AC - 2 ; case 5
	.short _021A1744 - _021A15AC - 2 ; case 6
_021A15BA:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A163E
	ldrh r0, [r4, #0x34]
	mov r1, #0x40
	tst r1, r0
	beq _021A15E6
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r6, #1
	add r0, #0x48
	strh r6, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl ovy185_219d4cc
	str r6, [r5]
	b _021A1766
_021A15E6:
	mov r1, #0x88
	tst r1, r0
	beq _021A1608
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl ovy185_219d4cc
_021A1602:
	mov r0, #1
_021A1604:
	str r0, [r5]
	b _021A1766
_021A1608:
	mov r1, #0x20
	tst r1, r0
	beq _021A162C
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A163E
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x10
_021A162A:
	b _021A16BE
_021A162C:
	mov r6, #0x10
	add r1, r0, #0
	tst r1, r6
	beq _021A1654
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A1640
_021A163E:
	b _021A1766
_021A1640:
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #1
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	add r1, r6, #0
	b _021A162A
_021A1654:
	mov r1, #2
	tst r1, r0
	beq _021A166A
	ldr r0, _021A1770 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
_021A1662:
	ldr r1, _021A1774 ; =ovy185_21a2ee8
_021A1664:
	bl sub_021A2DD8
	b _021A1766
_021A166A:
	mov r1, #1
	tst r0, r1
	beq _021A1766
	ldr r0, _021A1778 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A310C
	ldr r0, [r4, #0x14]
	mov r1, #0xa
	bl ovy185_219d4cc
	mov r0, #5
_021A1686:
	b _021A1604
_021A1688:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1766
	ldrh r0, [r4, #0x34]
	mov r1, #0x40
	tst r1, r0
	beq _021A16C6
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A16C4
_021A16AA:
	add r0, r4, #0
	add r0, #0x48
	ldrh r1, [r0]
	mov r0, #1
	eor r1, r0
_021A16B4:
	add r0, r4, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x11
_021A16BE:
	bl ovy185_219d4cc
	b _021A1766
_021A16C4:
	b _021A16DC
_021A16C6:
	mov r1, #0x80
	tst r1, r0
	beq _021A16EA
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A16E8
_021A16DC:
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ovy185_219d4cc
	mov r0, #0
	b _021A1686
_021A16E8:
	b _021A16AA
_021A16EA:
	mov r1, #8
	tst r1, r0
	beq _021A16FA
	ldr r0, _021A176C ; =0x00000548
	bl GFL_SndSEPlay
	mov r1, #0
	b _021A16B4
_021A16FA:
	mov r1, #1
	tst r1, r0
	beq _021A172C
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	bne _021A1722
	add r0, r4, #0
	bl ovy185_21a2f60
	cmp r0, #0
	beq _021A1718
	ldr r0, _021A1778 ; =0x0000054C
	b _021A171A
_021A1718:
	ldr r0, _021A177C ; =0x00000557
_021A171A:
	bl GFL_SndSEPlay
	mov r0, #2
	b _021A1686
_021A1722:
	ldr r0, _021A1770 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #3
	b _021A1604
_021A172C:
	mov r1, #2
	tst r0, r1
	beq _021A1766
	b _021A1722
_021A1734:
	mov r1, #4
	str r1, [r5]
	ldr r1, _021A1780 ; =ovy185_21a2e1c
	b _021A1664
_021A173C:
	mov r1, #4
	str r1, [r5]
	b _021A1662
_021A1742:
	b _021A1602
_021A1744:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1766
	add r0, r4, #0
	ldr r1, _021A1784 ; =ovy185_21a1c98
	b _021A1762
_021A1754:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1766
	ldr r1, _021A1788 ; =ovy185_21a1da0
	add r0, r4, #0
_021A1762:
	bl ovy185_21a1080
_021A1766:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A176C: .word 0x00000548
_021A1770: .word 0x00000551
_021A1774: .word ovy185_21a2ee8
_021A1778: .word 0x0000054C
_021A177C: .word 0x00000557
_021A1780: .word ovy185_21a2e1c
_021A1784: .word ovy185_21a1c98
_021A1788: .word ovy185_21a1da0
	thumb_func_end ovy185_21a1594

	thumb_func_start ovy185_21a178c
ovy185_21a178c: ; 0x021A178C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #1
	bhi _021A17B0
	bl ovy185_21a10e8
	cmp r0, #0
	beq _021A17B0
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A17B0
	ldr r0, _021A17CC ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A17B0:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A17C0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a1594
	pop {r3, r4, r5, pc}
_021A17C0:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a1478
	pop {r3, r4, r5, pc}
	nop
_021A17CC: .word 0x00000548
	thumb_func_end ovy185_21a178c

	thumb_func_start ovy185_21a17d0
ovy185_21a17d0: ; 0x021A17D0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #8
	bhi _021A185E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A17E8: ; jump table
	.short _021A17FA - _021A17E8 - 2 ; case 0
	.short _021A180A - _021A17E8 - 2 ; case 1
	.short _021A196E - _021A17E8 - 2 ; case 2
	.short _021A195E - _021A17E8 - 2 ; case 3
	.short _021A1A3E - _021A17E8 - 2 ; case 4
	.short _021A1A46 - _021A17E8 - 2 ; case 5
	.short _021A1A4C - _021A17E8 - 2 ; case 6
	.short _021A1A4E - _021A17E8 - 2 ; case 7
	.short _021A1A5E - _021A17E8 - 2 ; case 8
_021A17FA:
	ldr r0, [r4, #0x14]
	bl sub_0219E4C8
	add r1, r4, #0
	add r1, #0x68
	strb r0, [r1]
	mov r0, #1
	str r0, [r5]
_021A180A:
	ldr r0, [r4]
	bl sub_02029A7C
	cmp r0, #0
	beq _021A1822
	ldrh r1, [r4, #0x38]
	mov r0, #0x20
	tst r0, r1
	bne _021A185E
	mov r0, #0x10
	tst r0, r1
	bne _021A185E
_021A1822:
	ldrh r1, [r4, #0x34]
	mov r0, #0x40
	tst r0, r1
	beq _021A1874
	ldr r0, _021A1A74 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x4a
	ldrh r1, [r0]
	cmp r1, #0
	bne _021A1850
	mov r1, #1
_021A183C:
	add r0, r4, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #7
	bl ovy185_219d4cc
_021A184A:
	mov r0, #2
_021A184C:
	str r0, [r5]
	b _021A1A70
_021A1850:
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #1
	bls _021A185E
	cmp r1, #0
	bne _021A1860
_021A185E:
	b _021A1A70
_021A1860:
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	sub r1, r0, #1
_021A1868:
	add r0, r4, #0
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	b _021A19A4
_021A1874:
	mov r0, #0x80
	tst r0, r1
	beq _021A18A4
	ldr r0, _021A1A74 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x68
	ldrb r2, [r0]
	cmp r2, #1
	bls _021A18A0
	add r0, r4, #0
	add r0, #0x4a
	ldrh r1, [r0]
	sub r0, r2, #1
	cmp r1, r0
	bge _021A18A0
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	add r1, r0, #1
	b _021A1868
_021A18A0:
	mov r1, #0
	b _021A183C
_021A18A4:
	mov r0, #8
	tst r0, r1
	bne _021A18BC
	mov r0, #1
	add r2, r1, #0
	and r2, r0
	beq _021A18C4
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A18C4
_021A18BC:
	ldr r0, _021A1A74 ; =0x00000548
	bl GFL_SndSEPlay
	b _021A18A0
_021A18C4:
	ldrh r0, [r4, #0x38]
	mov r3, #0x20
	tst r3, r0
	beq _021A18FC
	ldr r0, _021A1A78 ; =0x00000664
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ovy185_21a0fd8
	ldr r0, [r4, #0x14]
	mov r1, #3
	mov r6, #3
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #0
_021A18F4:
	bl sub_0219E510
_021A18F8:
	str r6, [r5]
	b _021A1A70
_021A18FC:
	mov r3, #0x10
	tst r0, r3
	beq _021A192C
	ldr r0, _021A1A78 ; =0x00000664
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ovy185_21a0f94
	ldr r0, [r4, #0x14]
	mov r1, #3
	mov r6, #3
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #1
	b _021A18F4
_021A192C:
	mov r0, #2
	tst r0, r1
	beq _021A1942
	ldr r0, _021A1A7C ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #0
_021A193A:
	ldr r1, _021A1A80 ; =ovy185_21a2ee8
_021A193C:
	bl sub_021A2DD8
	b _021A1A70
_021A1942:
	cmp r2, #0
	beq _021A196A
	ldr r0, _021A1A84 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A310C
	ldr r0, [r4, #0x14]
	mov r1, #0xa
	bl ovy185_219d4cc
	mov r0, #8
_021A195C:
	b _021A184C
_021A195E:
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ovy185_219d570
	cmp r0, #0
	bne _021A196C
_021A196A:
	b _021A1A70
_021A196C:
	b _021A19C6
_021A196E:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1A70
	ldrh r0, [r4, #0x34]
	mov r1, #0x40
	tst r1, r0
	beq _021A19CA
	ldr r0, _021A1A74 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A19AA
_021A1990:
	add r0, r4, #0
	add r0, #0x48
	ldrh r1, [r0]
	mov r0, #1
	eor r1, r0
_021A199A:
	add r0, r4, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x11
_021A19A4:
	bl ovy185_219d4cc
	b _021A1A70
_021A19AA:
	add r0, r4, #0
	add r0, #0x68
	ldrb r0, [r0]
	sub r1, r0, #1
	cmp r0, #0
	bne _021A19B8
	mov r1, #0
_021A19B8:
	add r0, r4, #0
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ovy185_219d4cc
_021A19C6:
	mov r0, #0
	b _021A195C
_021A19CA:
	mov r1, #0x80
	tst r1, r0
	beq _021A19F4
	ldr r0, _021A1A74 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A19F2
	add r0, r4, #0
	mov r6, #0
	add r0, #0x4a
	strh r6, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ovy185_219d4cc
	b _021A18F8
_021A19F2:
	b _021A1990
_021A19F4:
	mov r1, #8
	tst r1, r0
	beq _021A1A04
	ldr r0, _021A1A74 ; =0x00000548
	bl GFL_SndSEPlay
	mov r1, #0
	b _021A199A
_021A1A04:
	mov r1, #1
	tst r1, r0
	beq _021A1A36
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	bne _021A1A2C
	add r0, r4, #0
	bl ovy185_21a2f60
	cmp r0, #0
	beq _021A1A22
	ldr r0, _021A1A84 ; =0x0000054C
	b _021A1A24
_021A1A22:
	ldr r0, _021A1A88 ; =0x00000557
_021A1A24:
	bl GFL_SndSEPlay
	mov r0, #4
	b _021A195C
_021A1A2C:
	ldr r0, _021A1A7C ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #5
	b _021A184C
_021A1A36:
	mov r1, #2
	tst r0, r1
	beq _021A1A70
	b _021A1A2C
_021A1A3E:
	mov r1, #6
	str r1, [r5]
	ldr r1, _021A1A8C ; =ovy185_21a2e1c
	b _021A193C
_021A1A46:
	mov r1, #6
	str r1, [r5]
	b _021A193A
_021A1A4C:
	b _021A184A
_021A1A4E:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1A70
	add r0, r4, #0
	ldr r1, _021A1A90 ; =ovy185_21a1c98
	b _021A1A6C
_021A1A5E:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1A70
	ldr r1, _021A1A94 ; =ovy185_21a1da0
	add r0, r4, #0
_021A1A6C:
	bl ovy185_21a1080
_021A1A70:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A1A74: .word 0x00000548
_021A1A78: .word 0x00000664
_021A1A7C: .word 0x00000551
_021A1A80: .word ovy185_21a2ee8
_021A1A84: .word 0x0000054C
_021A1A88: .word 0x00000557
_021A1A8C: .word ovy185_21a2e1c
_021A1A90: .word ovy185_21a1c98
_021A1A94: .word ovy185_21a1da0
	thumb_func_end ovy185_21a17d0

	thumb_func_start ovy185_21a1a98
ovy185_21a1a98: ; 0x021A1A98
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #8
	bhi _021A1B16
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A1AB0: ; jump table
	.short _021A1AC2 - _021A1AB0 - 2 ; case 0
	.short _021A1AD2 - _021A1AB0 - 2 ; case 1
	.short _021A1AD2 - _021A1AB0 - 2 ; case 2
	.short _021A1BE2 - _021A1AB0 - 2 ; case 3
	.short _021A1BF2 - _021A1AB0 - 2 ; case 4
	.short _021A1BFE - _021A1AB0 - 2 ; case 5
	.short _021A1C06 - _021A1AB0 - 2 ; case 6
	.short _021A1C0A - _021A1AB0 - 2 ; case 7
	.short _021A1C1A - _021A1AB0 - 2 ; case 8
_021A1AC2:
	ldr r0, [r4, #0x14]
	bl sub_0219E4C8
	add r1, r4, #0
	add r1, #0x68
	strb r0, [r1]
	mov r0, #1
	str r0, [r5]
_021A1AD2:
	add r0, r4, #0
	bl ovy185_21a1430
	add r2, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	ble _021A1B0A
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ovy185_21a1020
	ldr r0, [r4, #0x14]
	mov r1, #3
	mov r4, #3
	bl ovy185_219d4cc
	ldr r0, _021A1C30 ; =0x00000548
	bl GFL_SndSEPlay
	str r4, [r5]
	b _021A1C2C
_021A1B0A:
	add r0, r4, #0
	bl ovy185_21a1384
	add r6, r0, #0
	cmp r6, #7
	bls _021A1B18
_021A1B16:
	b _021A1C2C
_021A1B18:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1B24: ; jump table
	.short _021A1B34 - _021A1B24 - 2 ; case 0
	.short _021A1B5E - _021A1B24 - 2 ; case 1
	.short _021A1B68 - _021A1B24 - 2 ; case 2
	.short _021A1B98 - _021A1B24 - 2 ; case 3
	.short _021A1B68 - _021A1B24 - 2 ; case 4
	.short _021A1B98 - _021A1B24 - 2 ; case 5
	.short _021A1BC2 - _021A1B24 - 2 ; case 6
	.short _021A1BC2 - _021A1B24 - 2 ; case 7
_021A1B34:
	add r0, r4, #0
	bl ovy185_21a2f60
	cmp r0, #0
	beq _021A1B42
	ldr r0, _021A1C34 ; =0x0000054C
	b _021A1B44
_021A1B42:
	ldr r0, _021A1C38 ; =0x00000557
_021A1B44:
	bl GFL_SndSEPlay
	mov r1, #0
_021A1B4A:
	add r0, r4, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #8
	bl ovy185_219d4cc
	add r0, r6, #4
_021A1B5A:
	str r0, [r5]
	b _021A1C2C
_021A1B5E:
	ldr r0, _021A1C3C ; =0x00000551
	bl GFL_SndSEPlay
	mov r1, #1
	b _021A1B4A
_021A1B68:
	ldr r0, _021A1C40 ; =0x00000664
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ovy185_21a0fd8
	ldr r0, [r4, #0x14]
	mov r1, #3
	mov r6, #3
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #0
_021A1B90:
	bl sub_0219E510
	str r6, [r5]
	b _021A1C2C
_021A1B98:
	ldr r0, _021A1C40 ; =0x00000664
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ovy185_21a0f94
	ldr r0, [r4, #0x14]
	mov r1, #3
	mov r6, #3
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #1
	b _021A1B90
_021A1BC2:
	ldr r0, _021A1C34 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl sub_021A310C
	add r0, r4, #0
	sub r1, r6, #6
	add r0, #0x4a
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xa
	bl ovy185_219d4cc
	mov r0, #8
	b _021A1B5A
_021A1BE2:
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ovy185_219d570
	cmp r0, #0
	beq _021A1C2C
	mov r0, #0
	b _021A1B5A
_021A1BF2:
	mov r1, #6
	str r1, [r5]
	ldr r1, _021A1C44 ; =ovy185_21a2e1c
_021A1BF8:
	bl sub_021A2DD8
	b _021A1C2C
_021A1BFE:
	mov r1, #6
	str r1, [r5]
	ldr r1, _021A1C48 ; =ovy185_21a2ee8
	b _021A1BF8
_021A1C06:
	mov r0, #2
	b _021A1B5A
_021A1C0A:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1C2C
	add r0, r4, #0
	ldr r1, _021A1C4C ; =ovy185_21a1c98
	b _021A1C28
_021A1C1A:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1C2C
	ldr r1, _021A1C50 ; =ovy185_21a1da0
	add r0, r4, #0
_021A1C28:
	bl ovy185_21a1080
_021A1C2C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A1C30: .word 0x00000548
_021A1C34: .word 0x0000054C
_021A1C38: .word 0x00000557
_021A1C3C: .word 0x00000551
_021A1C40: .word 0x00000664
_021A1C44: .word ovy185_21a2e1c
_021A1C48: .word ovy185_21a2ee8
_021A1C4C: .word ovy185_21a1c98
_021A1C50: .word ovy185_21a1da0
	thumb_func_end ovy185_21a1a98

	thumb_func_start ovy185_21a1c54
ovy185_21a1c54: ; 0x021A1C54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #2
	bhi _021A1C78
	bl ovy185_21a10e8
	cmp r0, #0
	beq _021A1C78
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A1C78
	ldr r0, _021A1C94 ; =0x00000548
	bl GFL_SndSEPlay
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A1C78:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A1C88
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a17d0
	pop {r3, r4, r5, pc}
_021A1C88:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a1a98
	pop {r3, r4, r5, pc}
	nop
_021A1C94: .word 0x00000548
	thumb_func_end ovy185_21a1c54

	thumb_func_start ovy185_21a1c98
ovy185_21a1c98: ; 0x021A1C98
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #5
	bhi _021A1D86
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A1CB0: ; jump table
	.short _021A1CBC - _021A1CB0 - 2 ; case 0
	.short _021A1D5E - _021A1CB0 - 2 ; case 1
	.short _021A1D6A - _021A1CB0 - 2 ; case 2
	.short _021A1D72 - _021A1CB0 - 2 ; case 3
	.short _021A1D72 - _021A1CB0 - 2 ; case 4
	.short _021A1D74 - _021A1CB0 - 2 ; case 5
_021A1CBC:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1D86
	ldrh r0, [r4, #0x34]
	mov r1, #0x40
	tst r1, r0
	beq _021A1D06
	ldr r0, _021A1D8C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A1CF8
_021A1CDE:
	add r0, r4, #0
	add r0, #0x48
	ldrh r1, [r0]
	mov r0, #1
	eor r1, r0
_021A1CE8:
	add r0, r4, #0
	add r0, #0x48
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x11
	bl ovy185_219d4cc
	b _021A1D86
_021A1CF8:
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ovy185_219d4cc
_021A1D00:
	mov r0, #0
_021A1D02:
	str r0, [r5]
	b _021A1D86
_021A1D06:
	mov r1, #0x80
	tst r1, r0
	beq _021A1D20
	ldr r0, _021A1D8C ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A1D1E
	b _021A1CF8
_021A1D1E:
	b _021A1CDE
_021A1D20:
	mov r1, #8
	tst r1, r0
	beq _021A1D30
	ldr r0, _021A1D8C ; =0x00000548
	bl GFL_SndSEPlay
	mov r1, #0
	b _021A1CE8
_021A1D30:
	mov r6, #1
	add r1, r0, #0
	tst r1, r6
	beq _021A1D4E
	ldr r0, _021A1D90 ; =0x0000054C
	bl GFL_SndSEPlay
	add r4, #0x48
	ldrh r0, [r4]
	cmp r0, #0
	bne _021A1D4A
	str r6, [r5]
	b _021A1D86
_021A1D4A:
	mov r0, #2
	b _021A1D02
_021A1D4E:
	mov r4, #2
	tst r0, r4
	beq _021A1D86
	ldr r0, _021A1D90 ; =0x0000054C
	bl GFL_SndSEPlay
	str r4, [r5]
	b _021A1D86
_021A1D5E:
	mov r1, #3
	str r1, [r5]
	ldr r1, _021A1D94 ; =ovy185_21a2e1c
_021A1D64:
	bl sub_021A2DD8
	b _021A1D86
_021A1D6A:
	mov r1, #4
	str r1, [r5]
	ldr r1, _021A1D98 ; =ovy185_21a2ee8
	b _021A1D64
_021A1D72:
	b _021A1D00
_021A1D74:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1D86
	ldr r1, _021A1D9C ; =ovy185_21a1174
	add r0, r4, #0
	bl ovy185_21a1080
_021A1D86:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A1D8C: .word 0x00000548
_021A1D90: .word 0x0000054C
_021A1D94: .word ovy185_21a2e1c
_021A1D98: .word ovy185_21a2ee8
_021A1D9C: .word ovy185_21a1174
	thumb_func_end ovy185_21a1c98

	thumb_func_start ovy185_21a1da0
ovy185_21a1da0: ; 0x021A1DA0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bhi _021A1E58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1DB8: ; jump table
	.short _021A1DC2 - _021A1DB8 - 2 ; case 0
	.short _021A1DF0 - _021A1DB8 - 2 ; case 1
	.short _021A1E16 - _021A1DB8 - 2 ; case 2
	.short _021A1E34 - _021A1DB8 - 2 ; case 3
	.short _021A1E48 - _021A1DB8 - 2 ; case 4
_021A1DC2:
	ldr r0, [r4, #0x14]
	mov r1, #0x12
	bl ovy185_219d570
	cmp r0, #0
	beq _021A1E58
	ldr r0, [r4, #0x14]
	mov r1, #0x21
	bl ovy185_219d570
	cmp r0, #0
	beq _021A1E58
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	bl ovy185_219d570
	cmp r0, #0
	beq _021A1E58
	add r0, r4, #0
	add r1, r5, #0
	bl ovy185_21a23bc
	b _021A1E58
_021A1DF0:
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	bl ovy185_219d570
	cmp r0, #0
	beq _021A1E58
	add r0, r4, #0
	add r0, #0x50
	ldrh r1, [r0]
	cmp r1, #0xfd
	beq _021A1E14
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x12
	bl ovy185_219d4cc
_021A1E14:
	b _021A1E54
_021A1E16:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1E58
	ldr r1, [r4, #0x28]
	ldr r0, _021A1E5C ; =ovy185_21a1174
	cmp r1, r0
	bne _021A1E30
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl ovy185_219d4cc
_021A1E30:
	mov r0, #3
	b _021A1E56
_021A1E34:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A1E58
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	bl ovy185_21a1080
	b _021A1E58
_021A1E48:
	ldr r0, [r4, #0x14]
	mov r1, #0x19
	bl ovy185_219d570
	cmp r0, #0
	beq _021A1E58
_021A1E54:
	mov r0, #0
_021A1E56:
	str r0, [r5]
_021A1E58:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1E5C: .word ovy185_21a1174
	thumb_func_end ovy185_21a1da0

	thumb_func_start ovy185_21a1e60
ovy185_21a1e60: ; 0x021A1E60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x34]
	add r4, r1, #0
	mov r1, #8
	tst r1, r0
	beq _021A1EA6
	add r1, r5, #0
	add r1, #0x69
	ldrb r1, [r1]
	cmp r1, #1
	bne _021A1EA6
	add r0, r5, #0
	mov r1, #0xfc
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x1c]
	bl ovy185_219e934
	cmp r0, #0
	beq _021A1E96
	add r0, r5, #0
	bl ovy185_21a1148
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A1E96:
	ldr r0, _021A207C ; =0x00000557
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x12
	bl ovy185_219d4cc
	pop {r3, r4, r5, r6, r7, pc}
_021A1EA6:
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _021A1EB2
	mov r1, #4
	tst r1, r0
	beq _021A1EDC
_021A1EB2:
	ldr r0, _021A2080 ; =0x0000054B
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x69
	strb r1, [r0]
	add r0, r5, #0
	bl sub_021A310C
	ldr r0, [r5, #0x14]
	mov r1, #0x19
	bl ovy185_219d4cc
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A1EDC:
	mov r6, #2
	add r1, r0, #0
	tst r1, r6
	beq _021A1F7C
	add r0, r5, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A1F40
	ldr r0, [r5, #0x1c]
	bl sub_0219E88C
	cmp r0, #0
	beq _021A1F40
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x50
	strh r1, [r0]
	mov r0, #1
	str r0, [r4]
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0xfd
	beq _021A1F22
	add r0, r5, #0
	mov r1, #0xfd
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x12
	bl ovy185_219d4cc
_021A1F22:
	ldr r0, _021A2084 ; =0x00000553
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x20
	bl ovy185_219d4cc
	ldr r0, [r5, #0x1c]
	bl ovy185_219e934
	ldr r0, [r5, #0x14]
	mov r1, #0x1e
	bl ovy185_219d4cc
	pop {r3, r4, r5, r6, r7, pc}
_021A1F40:
	add r0, r5, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A1F64
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0xfe
	beq _021A1F64
	add r0, r5, #0
	mov r1, #0xfe
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x12
	bl ovy185_219d4cc
_021A1F64:
	ldr r0, _021A2088 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0xb
	bl ovy185_219d4cc
	ldr r0, _021A208C ; =ovy185_21a1174
	str r0, [r5, #0x28]
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A1F7C:
	mov r7, #1
	tst r0, r7
	beq _021A2060
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0xfc
	bne _021A1FA8
	ldr r0, [r5, #0x1c]
	bl ovy185_219e934
	cmp r0, #0
	beq _021A1FA0
	add r0, r5, #0
	bl ovy185_21a1148
	str r6, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A1FA0:
	ldr r0, _021A207C ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_021A1FA8:
	cmp r1, #0xfd
	bne _021A1FF4
	add r0, r5, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A1FEC
	ldr r0, [r5, #0x1c]
	bl sub_0219E88C
	cmp r0, #0
	beq _021A1FEC
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	add r0, r5, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, _021A2084 ; =0x00000553
	str r7, [r4]
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x20
	bl ovy185_219d4cc
	ldr r0, [r5, #0x1c]
	bl ovy185_219e934
	ldr r0, [r5, #0x14]
	mov r1, #0x1e
	bl ovy185_219d4cc
	pop {r3, r4, r5, r6, r7, pc}
_021A1FEC:
	ldr r0, _021A207C ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_021A1FF4:
	cmp r1, #0xfe
	bne _021A200E
	ldr r0, _021A2088 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0xb
	bl ovy185_219d4cc
	ldr r0, _021A208C ; =ovy185_21a1174
	str r0, [r5, #0x28]
	str r6, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A200E:
	add r0, r5, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A203C
	ldr r0, [r5, #0x14]
	mov r1, #0x21
	bl ovy185_219d4cc
	add r0, r5, #0
	bl ovy185_21a2424
	cmp r0, #0
	beq _021A2034
	add r0, r5, #0
	bl ovy185_21a1148
	str r6, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021A2034:
	ldr r0, _021A207C ; =0x00000557
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_021A203C:
	ldr r0, [r5, #0x1c]
	bl ovy185_219e85c
	ldr r0, _021A2090 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x1c]
	bl ovy185_219e934
	ldr r0, [r5, #0x14]
	mov r1, #0x1e
	bl ovy185_219d4cc
	ldr r0, [r5, #0x14]
	mov r1, #0x21
	bl ovy185_219d4cc
	pop {r3, r4, r5, r6, r7, pc}
_021A2060:
	add r0, r5, #0
	bl ovy185_21a2440
	cmp r0, #0
	beq _021A2078
	ldr r0, _021A2094 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x12
	bl ovy185_219d4cc
_021A2078:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A207C: .word 0x00000557
_021A2080: .word 0x0000054B
_021A2084: .word 0x00000553
_021A2088: .word 0x00000551
_021A208C: .word ovy185_21a1174
_021A2090: .word 0x0000054C
_021A2094: .word 0x00000548
	thumb_func_end ovy185_21a1e60

	thumb_func_start ovy185_21a2098
ovy185_21a2098: ; 0x021A2098
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021A20CC ; =0x021A720C
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A20AE
	mov r0, #0
	pop {r4, pc}
_021A20AE:
	cmp r0, #0
	beq _021A20B8
	cmp r0, #1
	beq _021A20BC
	b _021A20C6
_021A20B8:
	mov r0, #1
	pop {r4, pc}
_021A20BC:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _021A20C6
	mov r0, #2
	pop {r4, pc}
_021A20C6:
	mov r0, #0
	pop {r4, pc}
	nop
_021A20CC: .word 0x021A720C
	thumb_func_end ovy185_21a2098

	thumb_func_start sub_021A20D0
sub_021A20D0: ; 0x021A20D0
	ldr r0, _021A20D8 ; =0x021A71F8
	ldr r3, _021A20DC ; =sub_0203DA0C
	bx r3
	nop
_021A20D8: .word 0x021A71F8
_021A20DC: .word sub_0203DA0C
	thumb_func_end sub_021A20D0

	thumb_func_start ovy185_21a20e0
ovy185_21a20e0: ; 0x021A20E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021A216C ; =0x021A7290
	add r2, sp, #4
	mov r1, #8
_021A20EA:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A20EA
	bl sub_0203DA48
	cmp r0, #0
	bne _021A2106
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_021A2106:
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DAC8
	mov r0, #0
	mov r6, #0x50
	str r0, [sp]
	mov r7, #0x50
	add r4, sp, #4
	sub r6, #0x51
_021A211A:
	ldr r1, [sp]
	mov r0, #0x18
	mul r0, r1
	add r0, #0x38
	strb r0, [r4]
	ldrb r0, [r4]
	mov r5, #0
	add r0, #0x10
	strb r0, [r4, #1]
_021A212C:
	add r0, r5, #0
	mul r0, r7
	add r0, #0xc
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	add r0, #0x48
	strb r0, [r4, #3]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, sp, #4
	bl sub_0203DADC
	cmp r0, r6
	beq _021A2154
	ldr r0, [sp]
	add sp, #0x14
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r5, r0
	pop {r4, r5, r6, r7, pc}
_021A2154:
	add r5, r5, #1
	cmp r5, #3
	blt _021A212C
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #4
	blt _021A211A
	mov r0, #0
	mvn r0, r0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A216C: .word 0x021A7290
	thumb_func_end ovy185_21a20e0

	thumb_func_start ovy185_21a2170
ovy185_21a2170: ; 0x021A2170
	push {r3, lr}
	sub sp, #0x10
	ldr r3, _021A2190 ; =0x021A72A4
	add r2, sp, #0
	mov r1, #0x10
_021A217A:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A217A
	add r0, sp, #0
	bl sub_0203DA0C
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021A2190: .word 0x021A72A4
	thumb_func_end ovy185_21a2170

	thumb_func_start ovy185_21a2194
ovy185_21a2194: ; 0x021A2194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	bl sub_0219EAD4
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _021A2206
	ldr r3, _021A2210 ; =0x021A71D8
	add r2, sp, #0
	mov r1, #8
_021A21AA:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A21AA
	mov r7, #0
	add r4, sp, #0
	mvn r7, r7
_021A21BC:
	add r3, sp, #0
	add r2, sp, #0x10
	mov r1, #8
_021A21C2:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A21C2
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0219EB04
	ldr r1, [sp, #8]
	add r0, r1, #0
	add r0, #0x30
	strb r0, [r4, #0x10]
	add r1, #0x40
	strb r1, [r4, #0x11]
	ldr r1, [sp, #0xc]
	add r0, r1, #0
	add r0, #8
	strb r0, [r4, #0x12]
	add r1, #0x18
	add r0, sp, #0x10
	strb r1, [r4, #0x13]
	bl sub_0203DA0C
	cmp r0, r7
	beq _021A2200
	add sp, #0x18
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2200:
	add r5, r5, #1
	cmp r5, r6
	blt _021A21BC
_021A2206:
	mov r0, #0
	mvn r0, r0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2210: .word 0x021A71D8
	thumb_func_end ovy185_21a2194

	thumb_func_start ovy185_21a2214
ovy185_21a2214: ; 0x021A2214
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ovy185_21a2098
	cmp r0, #1
	beq _021A2228
	cmp r0, #2
	beq _021A2240
	b _021A226A
_021A2228:
	ldr r0, _021A23A4 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	bl ovy185_219d4cc
	ldr r0, _021A23A8 ; =ovy185_21a1174
	str r0, [r4, #0x28]
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021A2240:
	ldr r0, _021A23AC ; =0x0000054B
	bl GFL_SndSEPlay
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x69
	strb r1, [r0]
	add r0, r4, #0
	bl sub_021A310C
	ldr r0, [r4, #0x14]
	mov r1, #0x19
	bl ovy185_219d4cc
	mov r0, #4
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021A226A:
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A22B6
	add r0, r4, #0
	bl ovy185_21a20e0
	add r6, r0, #0
	bpl _021A2280
	b _021A23A0
_021A2280:
	add r0, r4, #0
	add r0, #0x4c
	strh r6, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x21
	bl ovy185_219d4cc
	cmp r6, #0xc
	bge _021A22A2
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	ldr r0, [r4, #0x18]
	bl sub_0219D27C
	cmp r0, #0
	bne _021A22AA
_021A22A2:
	ldr r0, _021A23B0 ; =0x00000557
	bl GFL_SndSEPlay
	pop {r4, r5, r6, pc}
_021A22AA:
	add r0, r4, #0
	bl ovy185_21a1148
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021A22B6:
	add r0, r4, #0
	bl ovy185_21a2194
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	ble _021A22F4
	add r1, r4, #0
	add r1, #0x4c
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	ldr r0, [r4, #0x1c]
	bl ovy185_219e85c
	ldr r0, [r4, #0x1c]
	bl ovy185_219e934
	ldr r0, [r4, #0x14]
	mov r1, #0x1e
	bl ovy185_219d4cc
	ldr r0, _021A23B4 ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0x21
	bl ovy185_219d4cc
	pop {r4, r5, r6, pc}
_021A22F4:
	add r0, r4, #0
	bl ovy185_21a2170
	add r0, r0, #1
	cmp r0, #3
	bhi _021A23A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A230C: ; jump table
	.short _021A23A0 - _021A230C - 2 ; case 0
	.short _021A2314 - _021A230C - 2 ; case 1
	.short _021A233A - _021A230C - 2 ; case 2
	.short _021A2382 - _021A230C - 2 ; case 3
_021A2314:
	add r0, r4, #0
	mov r1, #0xfc
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	bl ovy185_219e934
	cmp r0, #0
	beq _021A2332
	add r0, r4, #0
	bl ovy185_21a1148
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021A2332:
	ldr r0, _021A23B0 ; =0x00000557
	bl GFL_SndSEPlay
	pop {r4, r5, r6, pc}
_021A233A:
	add r0, r4, #0
	mov r1, #0xfd
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	bl sub_0219E88C
	cmp r0, #0
	beq _021A237A
	add r0, r4, #0
	add r0, #0x4c
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x50
	strh r1, [r0]
	mov r0, #1
	str r0, [r5]
	ldr r0, _021A23B8 ; =0x00000553
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0x20
	bl ovy185_219d4cc
	ldr r0, [r4, #0x1c]
	bl ovy185_219e934
	ldr r0, [r4, #0x14]
	mov r1, #0x1e
	bl ovy185_219d4cc
	pop {r4, r5, r6, pc}
_021A237A:
	ldr r0, _021A23B0 ; =0x00000557
	bl GFL_SndSEPlay
	pop {r4, r5, r6, pc}
_021A2382:
	add r0, r4, #0
	mov r1, #0xfe
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, _021A23A4 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0xb
	bl ovy185_219d4cc
	ldr r0, _021A23A8 ; =ovy185_21a1174
	str r0, [r4, #0x28]
	mov r0, #2
	str r0, [r5]
_021A23A0:
	pop {r4, r5, r6, pc}
	nop
_021A23A4: .word 0x00000551
_021A23A8: .word ovy185_21a1174
_021A23AC: .word 0x0000054B
_021A23B0: .word 0x00000557
_021A23B4: .word 0x0000054C
_021A23B8: .word 0x00000553
	thumb_func_end ovy185_21a2214

	thumb_func_start ovy185_21a23bc
ovy185_21a23bc: ; 0x021A23BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy185_21a10e8
	cmp r0, #0
	beq _021A23F8
	add r0, r5, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r5, #0x70]
	bne _021A23EC
	cmp r0, #0
	bne _021A23F8
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	bne _021A23F8
	ldr r0, _021A2420 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021A23EC:
	cmp r0, #0
	bne _021A23F8
	ldr r0, _021A2420 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021A23F8:
	ldr r0, [r5, #0x14]
	mov r1, #0x1e
	bl ovy185_219d570
	cmp r0, #0
	beq _021A241C
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A2414
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a1e60
	pop {r3, r4, r5, pc}
_021A2414:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a2214
_021A241C:
	pop {r3, r4, r5, pc}
	nop
_021A2420: .word 0x00000548
	thumb_func_end ovy185_21a23bc

	thumb_func_start ovy185_21a2424
ovy185_21a2424: ; 0x021A2424
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x18]
	add r1, #0x4c
	ldrh r1, [r1]
	bl sub_0219D27C
	cmp r0, #0
	beq _021A243A
	mov r0, #1
	pop {r3, pc}
_021A243A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a2424

	thumb_func_start ovy185_21a2440
ovy185_21a2440: ; 0x021A2440
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x69
	ldrb r1, [r1]
	lsl r2, r1, #2
	ldr r1, _021A2454 ; =0x021A71F0
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_021A2454: .word 0x021A71F0
	thumb_func_end ovy185_21a2440
_021A2458:
	.byte 0x01, 0x1C, 0x4C, 0x31, 0x0B, 0x88, 0x1A, 0x1C
	.byte 0xFE, 0x2B, 0x00, 0xD1, 0x0C, 0x22, 0xFE, 0x2B, 0x2B, 0xD0, 0x01, 0x1C, 0x4E, 0x31, 0x0B, 0x80
	.byte 0x01, 0x8F, 0x40, 0x23, 0x0B, 0x42, 0x06, 0xD0, 0x1D, 0x49, 0x92, 0x00, 0x89, 0x5C, 0x4C, 0x30
	.byte 0x01, 0x80, 0x01, 0x20, 0x70, 0x47, 0x80, 0x23, 0x0B, 0x42, 0x06, 0xD0, 0x19, 0x49, 0x92, 0x00
	.byte 0x89, 0x5C, 0x4C, 0x30, 0x01, 0x80, 0x01, 0x20, 0x70, 0x47, 0x20, 0x23, 0x0B, 0x42, 0x06, 0xD0
	.byte 0x15, 0x49, 0x92, 0x00, 0x89, 0x5C, 0x4C, 0x30, 0x01, 0x80, 0x01, 0x20, 0x70, 0x47, 0x10, 0x23
	.byte 0x19, 0x42, 0x1B, 0xD0, 0x11, 0x49, 0x92, 0x00, 0x89, 0x5C, 0x4C, 0x30, 0x01, 0x80, 0x01, 0x20
	.byte 0x70, 0x47, 0x01, 0x1C, 0xFE, 0x22, 0x4E, 0x31, 0x0A, 0x80, 0x02, 0x8F, 0x40, 0x21, 0x11, 0x42
	.byte 0x04, 0xD0, 0x0B, 0x21, 0x4C, 0x30, 0x01, 0x80, 0x01, 0x20, 0x70, 0x47, 0x80, 0x21, 0x11, 0x42
	.byte 0x04, 0xD0, 0x02, 0x21, 0x4C, 0x30, 0x01, 0x80, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
	.byte 0x58, 0x72, 0x1A, 0x02, 0x59, 0x72, 0x1A, 0x02, 0x5A, 0x72, 0x1A, 0x02, 0x5B, 0x72, 0x1A, 0x02

	thumb_func_start ovy185_21a2500
ovy185_21a2500: ; 0x021A2500
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0xfe
	beq _021A2562
	cmp r0, #0xfc
	beq _021A2562
	cmp r0, #0xfd
	beq _021A2562
	ldrh r1, [r4, #0x38]
	mov r3, #0x40
	mov r2, #0xff
	tst r3, r1
	beq _021A2524
	bl sub_0219EB20
	b _021A2546
_021A2524:
	mov r3, #0x80
	tst r3, r1
	beq _021A2530
	bl sub_0219EB30
	b _021A2546
_021A2530:
	mov r3, #0x10
	tst r3, r1
	beq _021A253C
	bl sub_0219EB50
	b _021A2546
_021A253C:
	mov r3, #0x20
	tst r1, r3
	beq _021A2548
	bl sub_0219EB40
_021A2546:
	add r2, r0, #0
_021A2548:
	cmp r2, #0xff
	bne _021A254E
	b _021A2660
_021A254E:
	add r0, r4, #0
	add r0, #0x4c
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	add r4, #0x4c
	strh r2, [r4]
	mov r0, #1
	pop {r4, pc}
_021A2562:
	ldrh r1, [r4, #0x38]
	mov r2, #0x40
	tst r2, r1
	beq _021A25C2
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0x1a
	bhi _021A257A
	bl sub_0219EB60
	b _021A257C
_021A257A:
	mov r0, #0xff
_021A257C:
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0xfc
	bne _021A2594
	cmp r0, #0x14
	blt _021A2590
	cmp r0, #0x17
	bgt _021A2590
	b _021A25BA
_021A2590:
	mov r0, #0x16
	b _021A25BA
_021A2594:
	cmp r1, #0xfd
	bne _021A25AA
	cmp r0, #0x18
	beq _021A25A4
	cmp r0, #0x19
	beq _021A25A4
	cmp r0, #0x10
	bne _021A25A6
_021A25A4:
	b _021A25BA
_021A25A6:
	mov r0, #0x19
	b _021A25BA
_021A25AA:
	cmp r0, #0x11
	beq _021A25B6
	cmp r0, #0x12
	beq _021A25B6
	cmp r0, #0x1a
	bne _021A25B8
_021A25B6:
	b _021A25BA
_021A25B8:
	mov r0, #0x1a
_021A25BA:
	add r4, #0x4c
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021A25C2:
	mov r2, #0x80
	tst r2, r1
	beq _021A2618
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0x1a
	bhi _021A25D8
	bl sub_0219EB60
	b _021A25DA
_021A25D8:
	mov r0, #0xff
_021A25DA:
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0xfc
	bne _021A25F2
	cmp r0, #0
	blt _021A25EE
	cmp r0, #3
	bgt _021A25EE
	b _021A2610
_021A25EE:
	mov r0, #2
	b _021A2610
_021A25F2:
	cmp r1, #0xfd
	bne _021A2604
	cmp r0, #4
	blt _021A2600
	cmp r0, #6
	bgt _021A2600
	b _021A2610
_021A2600:
	mov r0, #5
	b _021A2610
_021A2604:
	cmp r0, #7
	blt _021A260E
	cmp r0, #9
	bgt _021A260E
	b _021A2610
_021A260E:
	mov r0, #8
_021A2610:
	add r4, #0x4c
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021A2618:
	mov r2, #0x20
	tst r2, r1
	beq _021A263C
	cmp r0, #0xfc
	beq _021A2632
	cmp r0, #0xfd
	beq _021A262E
	cmp r0, #0xfe
	bne _021A2638
	mov r0, #0xfd
	b _021A2634
_021A262E:
	mov r0, #0xfc
	b _021A2634
_021A2632:
	mov r0, #0xfe
_021A2634:
	add r4, #0x4c
	strh r0, [r4]
_021A2638:
	mov r0, #1
	pop {r4, pc}
_021A263C:
	mov r2, #0x10
	tst r1, r2
	beq _021A2660
	cmp r0, #0xfc
	beq _021A2656
	cmp r0, #0xfd
	beq _021A2652
	cmp r0, #0xfe
	bne _021A265C
	mov r0, #0xfc
	b _021A2658
_021A2652:
	mov r0, #0xfe
	b _021A2658
_021A2656:
	mov r0, #0xfd
_021A2658:
	add r4, #0x4c
	strh r0, [r4]
_021A265C:
	mov r0, #1
	pop {r4, pc}
_021A2660:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy185_21a2500

	thumb_func_start ovy185_21a2664
ovy185_21a2664: ; 0x021A2664
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r0, r1, #0
	strh r4, [r5]
	strb r4, [r5, #6]
	strb r4, [r5, #7]
	bl ovy185_21a3014
	strh r0, [r5, #4]
	ldrh r2, [r5, #4]
	ldr r0, _021A26A0 ; =0x0000FFFF
	str r4, [r5, #8]
	strh r4, [r5, #0xc]
	strh r0, [r5, #0xe]
	cmp r2, #0xe
	bls _021A269A
	add r1, r2, #0
	sub r1, #0xe
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #1
	and r0, r2
	add r0, r1, r0
	strh r0, [r5, #2]
	pop {r3, r4, r5, pc}
_021A269A:
	strh r4, [r5, #2]
	pop {r3, r4, r5, pc}
	nop
_021A26A0: .word 0x0000FFFF
	thumb_func_end ovy185_21a2664

	thumb_func_start sub_021A26A4
sub_021A26A4: ; 0x021A26A4
	ldrb r1, [r0, #6]
	ldrb r0, [r0, #7]
	lsl r0, r0, #1
	add r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A26A4

	thumb_func_start ovy185_21a26b0
ovy185_21a26b0: ; 0x021A26B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A26A4
	ldrh r1, [r4]
	lsl r1, r1, #1
	add r0, r1, r0
	pop {r4, pc}
	thumb_func_end ovy185_21a26b0

	thumb_func_start sub_021A26C0
sub_021A26C0: ; 0x021A26C0
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021A26C0

	thumb_func_start sub_021A26C4
sub_021A26C4: ; 0x021A26C4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_021A26C4

	thumb_func_start sub_021A26C8
sub_021A26C8: ; 0x021A26C8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end sub_021A26C8

	thumb_func_start ovy185_21a26cc
ovy185_21a26cc: ; 0x021A26CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r2, [r5]
	add r4, r0, #0
	cmp r2, #4
	bhi _021A273C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021A26E4: ; jump table
	.short _021A26EE - _021A26E4 - 2 ; case 0
	.short _021A26F4 - _021A26E4 - 2 ; case 1
	.short _021A2702 - _021A26E4 - 2 ; case 2
	.short _021A2718 - _021A26E4 - 2 ; case 3
	.short _021A2726 - _021A26E4 - 2 ; case 4
_021A26EE:
	bl ovy185_21a2aa4
	b _021A273C
_021A26F4:
	ldr r0, [r4, #0x14]
	mov r1, #0x14
	bl ovy185_219d570
	cmp r0, #0
	beq _021A273C
	b _021A2738
_021A2702:
	ldr r0, [r4, #0x14]
	mov r1, #0x14
	bl ovy185_219d570
	cmp r0, #0
	beq _021A273C
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ovy185_219d4cc
	b _021A2738
_021A2718:
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ovy185_219d570
	cmp r0, #0
	beq _021A273C
	b _021A2738
_021A2726:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A273C
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	bl ovy185_21a1080
_021A2738:
	mov r0, #0
	str r0, [r5]
_021A273C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a26cc

	thumb_func_start ovy185_21a2740
ovy185_21a2740: ; 0x021A2740
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5, #0x38]
	add r0, #0x54
	bl ovy185_21a2ae8
	cmp r0, #1
	beq _021A275C
	cmp r0, #2
	beq _021A276C
	cmp r0, #3
	beq _021A2780
	b _021A279C
_021A275C:
	ldr r0, _021A2814 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x13
	bl ovy185_219d4cc
	pop {r3, r4, r5, pc}
_021A276C:
	ldr r0, _021A2814 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x14
	bl ovy185_219d4cc
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A2780:
	ldr r0, _021A2814 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0x14
	bl ovy185_219d4cc
	ldr r0, [r5, #0x14]
	mov r1, #0x13
	bl ovy185_219d4cc
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A279C:
	ldrh r1, [r5, #0x34]
	mov r0, #2
	tst r0, r1
	beq _021A27BC
	ldr r0, _021A2818 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl ovy185_219d4cc
	ldr r0, _021A281C ; =ovy185_21a1da0
	str r0, [r5, #0x28]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A27BC:
	mov r0, #1
	tst r0, r1
	beq _021A2810
	add r0, r5, #0
	add r0, #0x60
	ldrh r0, [r0]
	cmp r0, #0
	beq _021A27E4
	ldr r0, _021A2818 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl ovy185_219d4cc
	ldr r0, _021A281C ; =ovy185_21a1da0
	str r0, [r5, #0x28]
	mov r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A27E4:
	ldr r0, _021A2820 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	ldr r1, _021A2824 ; =0x0000FFFF
	add r0, #0x62
	strh r1, [r0]
	add r0, r5, #0
	bl ovy185_21a2d24
	ldr r0, [r5, #0x14]
	mov r1, #0x22
	bl ovy185_219d4cc
	ldr r0, [r5, #0x14]
	mov r1, #0xe
	bl ovy185_219d4cc
	ldr r0, _021A2828 ; =ovy185_21a1174
	str r0, [r5, #0x28]
	mov r0, #4
	str r0, [r4]
_021A2810:
	pop {r3, r4, r5, pc}
	nop
_021A2814: .word 0x00000548
_021A2818: .word 0x00000551
_021A281C: .word ovy185_21a1da0
_021A2820: .word 0x0000054C
_021A2824: .word 0x0000FFFF
_021A2828: .word ovy185_21a1174
	thumb_func_end ovy185_21a2740

	thumb_func_start ovy185_21a282c
ovy185_21a282c: ; 0x021A282C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _021A2960 ; =0x021A7288
	add r6, r0, #0
	add r2, sp, #8
	mov r1, #8
_021A2838:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021A2838
	ldr r0, _021A2964 ; =0x021A71E0
	bl sub_0203DA0C
	cmp r0, #0
	bne _021A28C6
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_0203DAC8
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl ovy185_219e5bc
	cmp r0, #3
	bhi _021A28C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2870: ; jump table
	.short _021A2878 - _021A2870 - 2 ; case 0
	.short _021A288A - _021A2870 - 2 ; case 1
	.short _021A28A8 - _021A2870 - 2 ; case 2
	.short _021A28C6 - _021A2870 - 2 ; case 3
_021A2878:
	mov r0, #1
	add r6, #0x6a
	strb r0, [r6]
	ldr r0, _021A2968 ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A288A:
	add r0, r6, #0
	mov r1, #1
	add r0, #0x6a
	strb r1, [r0]
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x10]
	bl sub_0219E5F4
	ldr r0, [r6, #0x14]
	add r6, #0x54
	add r1, r6, #0
	bl ovy185_21a2c80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A28A8:
	add r0, r6, #0
	mov r1, #1
	add r0, #0x6a
	strb r1, [r0]
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x10]
	bl sub_0219E5F4
	ldr r0, [r6, #0x14]
	add r6, #0x54
	add r1, r6, #0
	bl ovy185_21a2cb4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021A28C6:
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_0203DAC8
	add r0, r6, #0
	add r0, #0x54
	ldrh r0, [r0]
	lsl r0, r0, #0x11
	lsr r5, r0, #0x10
	mov r0, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
_021A28E0:
	ldr r0, [sp, #4]
	mov r1, #0x18
	mul r1, r0
	add r1, #0xd
	add r7, sp, #8
	strb r1, [r7]
	ldrb r0, [r7]
	mov r4, #0
	add r0, #0x16
	strb r0, [r7, #1]
_021A28F4:
	mov r0, #0x70
	mul r0, r4
	add r0, #0x10
	strb r0, [r7, #2]
	ldrb r0, [r7, #2]
	add r0, #0x66
	strb r0, [r7, #3]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, sp, #8
	bl sub_0203DADC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A292C
	add r0, r6, #0
	add r0, #0x62
	strh r5, [r0]
	add r0, r6, #0
	add r0, #0x5a
	strb r4, [r0]
	ldr r0, [sp, #4]
	add r6, #0x5b
	strb r0, [r6]
	add sp, #0x18
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021A292C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	add r0, #0x58
	ldrh r0, [r0]
	sub r0, r0, #2
	cmp r5, r0
	blt _021A2944
	mov r0, #1
	str r0, [sp]
	b _021A294A
_021A2944:
	add r4, r4, #1
	cmp r4, #2
	blt _021A28F4
_021A294A:
	ldr r0, [sp]
	cmp r0, #0
	bne _021A295A
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #6
	blt _021A28E0
_021A295A:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2960: .word 0x021A7288
_021A2964: .word 0x021A71E0
_021A2968: .word 0x00000548
	thumb_func_end ovy185_21a282c

	thumb_func_start ovy185_21a296c
ovy185_21a296c: ; 0x021A296C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #1
	bne _021A2996
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #1
	bne _021A2996
	ldr r0, [r4, #0x14]
	ldr r1, [sp]
	bl sub_0219E5F4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021A2996:
	mov r0, #0
	add r4, #0x6a
	strb r0, [r4]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy185_21a296c

	thumb_func_start ovy185_21a29a0
ovy185_21a29a0: ; 0x021A29A0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_021A20D0
	cmp r0, #0
	bne _021A29C6
	ldr r0, _021A2A90 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	bl ovy185_219d4cc
	ldr r0, _021A2A94 ; =ovy185_21a1da0
	str r0, [r4, #0x28]
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A29C6:
	add r0, r4, #0
	bl ovy185_21a296c
	cmp r0, #1
	bne _021A2A08
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x54
	bl ovy185_21a2ce8
	cmp r0, #2
	beq _021A29E4
	cmp r0, #3
	beq _021A29F2
	pop {r3, r4, r5, pc}
_021A29E4:
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ovy185_219d4cc
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A29F2:
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ovy185_219d4cc
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A2A08:
	add r0, r4, #0
	bl ovy185_21a282c
	cmp r0, #5
	bhi _021A2A8E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2A1E: ; jump table
	.short _021A2A8E - _021A2A1E - 2 ; case 0
	.short _021A2A50 - _021A2A1E - 2 ; case 1
	.short _021A2A60 - _021A2A1E - 2 ; case 2
	.short _021A2A74 - _021A2A1E - 2 ; case 3
	.short _021A2A8E - _021A2A1E - 2 ; case 4
	.short _021A2A2A - _021A2A1E - 2 ; case 5
_021A2A2A:
	ldr r0, _021A2A98 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy185_21a2d24
	ldr r0, _021A2A9C ; =ovy185_21a1174
	mov r1, #0x22
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x14]
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #0xe
	bl ovy185_219d4cc
	mov r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A2A50:
	ldr r0, _021A2AA0 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ovy185_219d4cc
	pop {r3, r4, r5, pc}
_021A2A60:
	ldr r0, _021A2AA0 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0x1f
	bl ovy185_219d4cc
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021A2A74:
	ldr r0, _021A2AA0 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x14]
	mov r1, #0x14
	bl ovy185_219d4cc
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ovy185_219d4cc
	mov r0, #2
	str r0, [r5]
_021A2A8E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2A90: .word 0x00000551
_021A2A94: .word ovy185_21a1da0
_021A2A98: .word 0x0000054C
_021A2A9C: .word ovy185_21a1174
_021A2AA0: .word 0x00000548
	thumb_func_end ovy185_21a29a0

	thumb_func_start ovy185_21a2aa4
ovy185_21a2aa4: ; 0x021A2AA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy185_21a10e8
	cmp r0, #0
	beq _021A2ACA
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A2ACA
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	bne _021A2ACA
	ldr r0, _021A2AE4 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_021A2ACA:
	ldr r0, [r5, #0x70]
	cmp r0, #0
	bne _021A2ADA
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a2740
	pop {r3, r4, r5, pc}
_021A2ADA:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy185_21a29a0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2AE4: .word 0x00000548
	thumb_func_end ovy185_21a2aa4

	thumb_func_start ovy185_21a2ae8
ovy185_21a2ae8: ; 0x021A2AE8
	push {r3, r4, r5, lr}
	mov r2, #0x80
	add r4, r0, #0
	tst r2, r1
	beq _021A2B68
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	beq _021A2AFC
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2AFC:
	ldrb r1, [r4, #7]
	cmp r1, #5
	bhs _021A2B3C
	add r1, r1, #1
	strb r1, [r4, #7]
	bl ovy185_21a26b0
	ldrh r1, [r4, #4]
	sub r1, r1, #2
	cmp r0, r1
	bhs _021A2B16
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2B16:
	cmp r0, r1
	bne _021A2B32
	mov r1, #1
	tst r0, r1
	beq _021A2B28
	mov r0, #0
	strb r0, [r4, #6]
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021A2B28:
	ldrb r0, [r4, #7]
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2B32:
	ldrb r0, [r4, #7]
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2B3C:
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	cmp r2, r1
	bhs _021A2B64
	mov r1, #1
	str r1, [r4, #8]
	add r1, r2, #1
	strh r1, [r4]
	bl ovy185_21a26b0
	ldrh r1, [r4, #4]
	sub r1, r1, #2
	cmp r0, r1
	bhs _021A2B5C
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A2B5C:
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021A2B64:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2B68:
	mov r2, #0x40
	add r3, r1, #0
	tst r3, r2
	beq _021A2BA2
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _021A2B7E
	mov r0, #0
	strh r0, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2B7E:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _021A2B8C
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A2B8C:
	ldrh r0, [r4]
	cmp r0, #0
	beq _021A2B9E
	sub r2, #0x41
	sub r0, r0, #1
	strh r0, [r4]
	str r2, [r4, #8]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A2B9E:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2BA2:
	mov r2, #0x20
	tst r2, r1
	beq _021A2BCE
	ldrb r1, [r4, #6]
	cmp r1, #1
	bne _021A2BCA
	mov r5, #1
	eor r1, r5
	strb r1, [r4, #6]
	bl ovy185_21a26b0
	ldrh r1, [r4, #4]
	sub r1, r1, #2
	cmp r0, r1
	bhs _021A2BC4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021A2BC4:
	ldrb r0, [r4, #6]
	eor r0, r5
	strb r0, [r4, #6]
_021A2BCA:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2BCE:
	mov r3, #0x10
	add r2, r1, #0
	tst r2, r3
	beq _021A2BFC
	ldrb r1, [r4, #6]
	cmp r1, #0
	bne _021A2BF8
	mov r5, #1
	eor r1, r5
	strb r1, [r4, #6]
	bl ovy185_21a26b0
	ldrh r1, [r4, #4]
	sub r1, r1, #2
	cmp r0, r1
	bhs _021A2BF2
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021A2BF2:
	ldrb r0, [r4, #6]
	eor r0, r5
	strb r0, [r4, #6]
_021A2BF8:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021A2BFC:
	lsl r2, r3, #5
	tst r2, r1
	beq _021A2C08
	bl sub_021A2C18
	pop {r3, r4, r5, pc}
_021A2C08:
	add r3, #0xf0
	tst r1, r3
	beq _021A2C14
	bl ovy185_21a2c40
	pop {r3, r4, r5, pc}
_021A2C14:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a2ae8

	thumb_func_start sub_021A2C18
sub_021A2C18: ; 0x021A2C18
	ldrh r1, [r0]
	cmp r1, #0
	beq _021A2C3A
	cmp r1, #6
	blo _021A2C2E
	sub r1, r1, #6
	strh r1, [r0]
	mov r1, #5
	mvn r1, r1
	str r1, [r0, #8]
	b _021A2C36
_021A2C2E:
	neg r1, r1
	str r1, [r0, #8]
	mov r1, #0
	strh r1, [r0]
_021A2C36:
	mov r0, #2
	bx lr
_021A2C3A:
	mov r0, #4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2C18

	thumb_func_start ovy185_21a2c40
ovy185_21a2c40: ; 0x021A2C40
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #2]
	ldrh r0, [r4]
	cmp r0, r2
	bhs _021A2C7A
	add r1, r0, #6
	cmp r1, r2
	bgt _021A2C5A
	mov r0, #6
	str r0, [r4, #8]
	strh r1, [r4]
	b _021A2C60
_021A2C5A:
	sub r0, r2, r0
	str r0, [r4, #8]
	strh r2, [r4]
_021A2C60:
	add r0, r4, #0
	bl ovy185_21a26b0
	ldrh r1, [r4, #4]
	sub r1, r1, #2
	cmp r0, r1
	bge _021A2C72
	mov r0, #2
	pop {r4, pc}
_021A2C72:
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #3
	pop {r4, pc}
_021A2C7A:
	mov r0, #4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a2c40

	thumb_func_start ovy185_21a2c80
ovy185_21a2c80: ; 0x021A2C80
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r1, [r5]
	cmp r1, #0
	beq _021A2CAE
	ldrh r1, [r5, #2]
	bl sub_0219E600
	strh r0, [r5]
	mov r4, #0
	add r0, r5, #0
	str r4, [r5, #8]
	bl ovy185_21a26b0
	ldrh r1, [r5, #4]
	sub r1, r1, #2
	cmp r0, r1
	bge _021A2CA8
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A2CA8:
	strb r4, [r5, #6]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021A2CAE:
	mov r0, #4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a2c80

	thumb_func_start ovy185_21a2cb4
ovy185_21a2cb4: ; 0x021A2CB4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r1, [r5, #2]
	ldrh r2, [r5]
	cmp r2, r1
	bhs _021A2CE2
	bl sub_0219E600
	strh r0, [r5]
	mov r4, #0
	add r0, r5, #0
	str r4, [r5, #8]
	bl ovy185_21a26b0
	ldrh r1, [r5, #4]
	sub r1, r1, #2
	cmp r0, r1
	bge _021A2CDC
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A2CDC:
	strb r4, [r5, #6]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021A2CE2:
	mov r0, #4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a2cb4

	thumb_func_start ovy185_21a2ce8
ovy185_21a2ce8: ; 0x021A2CE8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r4, [r5]
	ldrh r1, [r5, #2]
	bl sub_0219E600
	strh r0, [r5]
	mov r0, #0
	str r0, [r5, #8]
	ldrh r0, [r5]
	cmp r4, r0
	beq _021A2D06
	ldr r0, _021A2D20 ; =0x00000548
	bl GFL_SndSEPlay
_021A2D06:
	add r0, r5, #0
	bl ovy185_21a26b0
	ldrh r1, [r5, #4]
	sub r1, r1, #2
	cmp r0, r1
	bge _021A2D18
	mov r0, #2
	pop {r3, r4, r5, pc}
_021A2D18:
	mov r0, #0
	strb r0, [r5, #6]
	mov r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2D20: .word 0x00000548
	thumb_func_end ovy185_21a2ce8

	thumb_func_start ovy185_21a2d24
ovy185_21a2d24: ; 0x021A2D24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x62
	ldrh r2, [r0]
	ldr r0, _021A2DA0 ; =0x0000FFFF
	cmp r2, r0
	bne _021A2D3C
	add r0, r5, #0
	add r0, #0x54
	bl ovy185_21a26b0
	add r2, r0, #0
_021A2D3C:
	add r0, r5, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A2D54
	add r1, r5, #0
	add r1, #0x4c
	ldrh r1, [r1]
	ldr r0, [r5, #0x18]
	bl sub_0219D2A4
	b _021A2D5C
_021A2D54:
	ldr r0, [r5, #0x1c]
	add r1, r2, #0
	bl sub_0219EAC4
_021A2D5C:
	add r4, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021A2D6E
	cmp r0, #1
	beq _021A2D72
	cmp r0, #2
	beq _021A2D80
	b _021A2D98
_021A2D6E:
	strh r4, [r5, #0x10]
	b _021A2D98
_021A2D72:
	add r0, r5, #0
	add r0, #0x4a
	ldrh r0, [r0]
	lsl r0, r0, #1
	add r0, r5, r0
	strh r4, [r0, #0x10]
	b _021A2D98
_021A2D80:
	add r1, r5, #0
	add r1, #0x4a
	ldrh r1, [r1]
	ldr r0, [r5, #0x14]
	bl sub_0219E4D4
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	add r2, r4, #0
	bl sub_02029EC4
_021A2D98:
	add r0, r5, #0
	bl ovy185_21a2f60
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A2DA0: .word 0x0000FFFF
	thumb_func_end ovy185_21a2d24

	thumb_func_start ovy185_21a2da4
ovy185_21a2da4: ; 0x021A2DA4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021A2DB4
	cmp r1, #1
	beq _021A2DC4
	b _021A2DD2
_021A2DB4:
	ldr r0, [r0, #0x14]
	mov r1, #1
	bl ovy185_219d4cc
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021A2DD2
_021A2DC4:
	ldr r0, [r0, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A2DD2
	mov r0, #1
	pop {r4, pc}
_021A2DD2:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a2da4

	thumb_func_start sub_021A2DD8
sub_021A2DD8: ; 0x021A2DD8
	str r1, [r0, #0x30]
	mov r1, #0
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021A2DD8

	thumb_func_start sub_021A2DE0
sub_021A2DE0: ; 0x021A2DE0
	mov r1, #0
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2DE0

	thumb_func_start ovy185_21a2de8
ovy185_21a2de8: ; 0x021A2DE8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A2DFA
	cmp r0, #1
	beq _021A2E0A
	pop {r3, r4, r5, pc}
_021A2DFA:
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl ovy185_219d4cc
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021A2E0A:
	ldr r0, [r5, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A2E1A
	add r0, r5, #0
	bl sub_021A2DE0
_021A2E1A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a2de8

	thumb_func_start ovy185_21a2e1c
ovy185_21a2e1c: ; 0x021A2E1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #3
	bhi _021A2EE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2E34: ; jump table
	.short _021A2E3C - _021A2E34 - 2 ; case 0
	.short _021A2E78 - _021A2E34 - 2 ; case 1
	.short _021A2EC2 - _021A2E34 - 2 ; case 2
	.short _021A2ED0 - _021A2E34 - 2 ; case 3
_021A2E3C:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A2EE0
	add r0, r4, #0
	bl ovy185_21a2f60
	cmp r0, #0
	beq _021A2E72
	add r0, r4, #0
	add r0, #0x6b
	mov r1, #1
	mov r2, #0
	mov r6, #1
	mov r7, #0
	bl sub_021A2FAC
	add r0, r4, #0
	add r0, #0x48
	strh r7, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0x15
	bl ovy185_219d4cc
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A2E72:
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A2E78:
	ldr r0, [r4, #0x14]
	bl ovy185_219e4ec
	cmp r0, #0
	beq _021A2E88
	cmp r0, #1
	beq _021A2E96
	pop {r3, r4, r5, r6, r7, pc}
_021A2E88:
	ldr r0, [r4, #0x14]
	mov r1, #0x17
	bl ovy185_219d4cc
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A2E96:
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021A2EA6
	add r0, r4, #0
	add r0, #8
	mov r1, #0x2a
	bl sub_02029ED0
_021A2EA6:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	add r2, #8
	bl sub_02029B04
	ldr r1, _021A2EE4 ; =ovy185_21a2da4
	add r0, r4, #0
	bl ovy185_21a1080
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A2EC2:
	ldrh r1, [r4, #0x34]
	mov r0, #0xf3
	tst r0, r1
	beq _021A2EE0
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A2ED0:
	ldr r0, [r4, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A2EE0
	add r0, r4, #0
	bl sub_021A2DE0
_021A2EE0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2EE4: .word ovy185_21a2da4
	thumb_func_end ovy185_21a2e1c

	thumb_func_start ovy185_21a2ee8
ovy185_21a2ee8: ; 0x021A2EE8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A2EFE
	cmp r0, #1
	beq _021A2F1E
	cmp r0, #2
	beq _021A2F4A
	pop {r4, r5, r6, pc}
_021A2EFE:
	add r0, r5, #0
	add r0, #0x6b
	mov r1, #1
	mov r2, #1
	mov r6, #1
	bl sub_021A2FAC
	add r0, r5, #0
	add r0, #0x48
	strh r6, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x15
	bl ovy185_219d4cc
	str r6, [r4]
	pop {r4, r5, r6, pc}
_021A2F1E:
	ldr r0, [r5, #0x14]
	bl ovy185_219e4ec
	cmp r0, #0
	beq _021A2F2E
	cmp r0, #1
	beq _021A2F3C
	pop {r4, r5, r6, pc}
_021A2F2E:
	ldr r0, [r5, #0x14]
	mov r1, #0x17
	bl ovy185_219d4cc
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A2F3C:
	ldr r1, _021A2F5C ; =ovy185_21a2da4
	add r0, r5, #0
	bl ovy185_21a1080
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021A2F4A:
	ldr r0, [r5, #0x14]
	bl sub_0219D554
	cmp r0, #0
	beq _021A2F5A
	add r0, r5, #0
	bl sub_021A2DE0
_021A2F5A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A2F5C: .word ovy185_21a2da4
	thumb_func_end ovy185_21a2ee8

	thumb_func_start ovy185_21a2f60
ovy185_21a2f60: ; 0x021A2F60
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021A2F72
	cmp r1, #1
	beq _021A2F82
	cmp r1, #2
	beq _021A2F98
	b _021A2FA2
_021A2F72:
	ldrh r1, [r0, #0x10]
	ldr r0, _021A2FA8 ; =0x0000FFFF
	cmp r1, r0
	beq _021A2F7E
	mov r0, #1
	pop {r3, pc}
_021A2F7E:
	mov r0, #0
	pop {r3, pc}
_021A2F82:
	ldrh r2, [r0, #0x10]
	ldr r1, _021A2FA8 ; =0x0000FFFF
	cmp r2, r1
	beq _021A2F94
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	beq _021A2F94
	mov r0, #1
	pop {r3, pc}
_021A2F94:
	mov r0, #0
	pop {r3, pc}
_021A2F98:
	add r0, #8
	mov r1, #0x2a
	bl sub_02029D88
	pop {r3, pc}
_021A2FA2:
	mov r0, #0
	pop {r3, pc}
	nop
_021A2FA8: .word 0x0000FFFF
	thumb_func_end ovy185_21a2f60

	thumb_func_start sub_021A2FAC
sub_021A2FAC: ; 0x021A2FAC
	strb r2, [r0]
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2FAC

	thumb_func_start sub_021A2FB4
sub_021A2FB4: ; 0x021A2FB4
	add r0, #0x70
	bx lr
	thumb_func_end sub_021A2FB4

	thumb_func_start sub_021A2FB8
sub_021A2FB8: ; 0x021A2FB8
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A2FB8

	thumb_func_start sub_021A2FBC
sub_021A2FBC: ; 0x021A2FBC
	add r0, #0x69
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2FBC

	thumb_func_start sub_021A2FC4
sub_021A2FC4: ; 0x021A2FC4
	ldr r3, _021A2FCC ; =sub_02029E50
	add r0, #8
	bx r3
	nop
_021A2FCC: .word sub_02029E50
	thumb_func_end sub_021A2FC4

	thumb_func_start ovy185_21a2fd0
ovy185_21a2fd0: ; 0x021A2FD0
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r2, #2
	bne _021A2FE0
	add r0, #8
	bl sub_02029E14
	pop {r3, pc}
_021A2FE0:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end ovy185_21a2fd0

	thumb_func_start sub_021A2FE8
sub_021A2FE8: ; 0x021A2FE8
	ldr r3, _021A2FF0 ; =sub_02029D40
	add r0, #8
	bx r3
	nop
_021A2FF0: .word sub_02029D40
	thumb_func_end sub_021A2FE8

	thumb_func_start sub_021A2FF4
sub_021A2FF4: ; 0x021A2FF4
	add r0, #0x4a
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2FF4

	thumb_func_start sub_021A2FFC
sub_021A2FFC: ; 0x021A2FFC
	add r0, #0x48
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A2FFC

	thumb_func_start sub_021A3004
sub_021A3004: ; 0x021A3004
	add r0, #0x4c
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3004

	thumb_func_start sub_021A300C
sub_021A300C: ; 0x021A300C
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A300C

	thumb_func_start ovy185_21a3014
ovy185_21a3014: ; 0x021A3014
	push {r3, lr}
	add r1, r0, #0
	add r0, #0x69
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A302E
	ldr r0, [r1, #0x18]
	add r1, #0x4c
	ldrh r1, [r1]
	bl sub_0219D27C
	add r0, r0, #2
	pop {r3, pc}
_021A302E:
	ldr r0, [r1, #0x1c]
	bl sub_0219EAA0
	add r0, r0, #2
	pop {r3, pc}
	thumb_func_end ovy185_21a3014

	thumb_func_start ovy185_21a3038
ovy185_21a3038: ; 0x021A3038
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x69
	ldrb r0, [r0]
	add r4, r1, #0
	add r3, r2, #0
	cmp r0, #0
	bne _021A3056
	ldr r0, [r5, #0x18]
	add r5, #0x4c
	ldrh r1, [r5]
	add r2, r4, #0
	bl ovy185_219d284
	pop {r3, r4, r5, pc}
_021A3056:
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x1c]
	lsr r1, r1, #0x18
	bl sub_0219EAAC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3038

	thumb_func_start ovy185_21a3064
ovy185_21a3064: ; 0x021A3064
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x60
	ldrh r1, [r1]
	cmp r1, #0
	beq _021A3076
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021A3076:
	add r0, #0x54
	bl sub_021A26A4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3064

	thumb_func_start sub_021A3080
sub_021A3080: ; 0x021A3080
	ldr r3, _021A3088 ; =sub_021A26C0
	add r0, #0x54
	bx r3
	nop
_021A3088: .word sub_021A26C0
	thumb_func_end sub_021A3080

	thumb_func_start sub_021A308C
sub_021A308C: ; 0x021A308C
	ldr r3, _021A3094 ; =sub_021A26C4
	add r0, #0x54
	bx r3
	nop
_021A3094: .word sub_021A26C4
	thumb_func_end sub_021A308C

	thumb_func_start sub_021A3098
sub_021A3098: ; 0x021A3098
	ldr r3, _021A30A0 ; =sub_021A26C8
	add r0, #0x54
	bx r3
	nop
_021A30A0: .word sub_021A26C8
	thumb_func_end sub_021A3098

	thumb_func_start sub_021A30A4
sub_021A30A4: ; 0x021A30A4
	ldr r0, [r0]
	ldr r3, _021A30AC ; =sub_02029A7C
	bx r3
	nop
_021A30AC: .word sub_02029A7C
	thumb_func_end sub_021A30A4

	thumb_func_start sub_021A30B0
sub_021A30B0: ; 0x021A30B0
	ldr r0, [r0, #0x7c]
	bx lr
	thumb_func_end sub_021A30B0

	thumb_func_start sub_021A30B4
sub_021A30B4: ; 0x021A30B4
	ldr r0, [r0, #0x1c]
	ldr r3, _021A30BC ; =ovy185_219e8ec
	bx r3
	nop
_021A30BC: .word ovy185_219e8ec
	thumb_func_end sub_021A30B4

	thumb_func_start sub_021A30C0
sub_021A30C0: ; 0x021A30C0
	ldr r0, [r0, #0x1c]
	ldr r3, _021A30C8 ; =ovy185_219e8c4
	bx r3
	nop
_021A30C8: .word ovy185_219e8c4
	thumb_func_end sub_021A30C0

	thumb_func_start sub_021A30CC
sub_021A30CC: ; 0x021A30CC
	add r3, r0, #0
	add r3, #0x54
	ldrh r3, [r3]
	add r0, #0x56
	ldrh r0, [r0]
	strh r3, [r1]
	strh r0, [r2]
	bx lr
	thumb_func_end sub_021A30CC

	thumb_func_start sub_021A30DC
sub_021A30DC: ; 0x021A30DC
	ldr r0, [r0, #0x1c]
	ldr r3, _021A30E4 ; =sub_0219EAA0
	bx r3
	nop
_021A30E4: .word sub_0219EAA0
	thumb_func_end sub_021A30DC

	thumb_func_start sub_021A30E8
sub_021A30E8: ; 0x021A30E8
	ldr r0, [r0, #0x1c]
	ldr r3, _021A30F0 ; =sub_0219E8BC
	bx r3
	nop
_021A30F0: .word sub_0219E8BC
	thumb_func_end sub_021A30E8

	thumb_func_start sub_021A30F4
sub_021A30F4: ; 0x021A30F4
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x1c]
	ldr r3, _021A3100 ; =sub_0219EAAC
	lsr r1, r1, #0x18
	bx r3
	nop
_021A3100: .word sub_0219EAAC
	thumb_func_end sub_021A30F4

	thumb_func_start sub_021A3104
sub_021A3104: ; 0x021A3104
	ldr r3, _021A3108 ; =ovy185_21a2f60
	bx r3
	.align 2, 0
_021A3108: .word ovy185_21a2f60
	thumb_func_end sub_021A3104

	thumb_func_start sub_021A310C
sub_021A310C: ; 0x021A310C
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4c
	strh r2, [r1]
	add r1, r0, #0
	mov r2, #0xff
	add r1, #0x4e
	strh r2, [r1]
	mov r1, #0xfd
	add r0, #0x50
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021A310C

	thumb_func_start ovy185_21a3124
ovy185_21a3124: ; 0x021A3124
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x9a
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp]
	ldr r3, _021A3198 ; =0x021A7564
	mov r0, #0x2a
	mov r1, #0xa0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	mov r0, #0x20
	mov r1, #0x2a
	mov r5, #0x20
	bl GFL_StrBufCreate
	str r0, [r4, #0x48]
	str r5, [sp]
	mov r5, #0xd
	str r5, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	mov r0, #2
	mov r1, #3
	mov r2, #0
	mov r3, #0x1a
	bl sub_020480C0
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0xc
	bl sub_020480C0
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	bl sub_021A2FB4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A3198: .word 0x021A7564
	thumb_func_end ovy185_21a3124

	thumb_func_start ovy185_21a319c
ovy185_21a319c: ; 0x021A319C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021A31AA
	bl sub_0204C108
_021A31AA:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021A31B4
	bl sub_0204C108
_021A31B4:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021A31BE
	bl GFL_StrBufFree
_021A31BE:
	ldr r0, [r4, #0x10]
	bl sub_02048210
	ldr r0, [r4, #0xc]
	bl sub_02048210
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a319c

	thumb_func_start ovy185_21a31d4
ovy185_21a31d4: ; 0x021A31D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #2
	mov r5, #0x20
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x2a
	bl sub_020450CC
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	ldr r0, [r4, #0xc]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r4, #0xc]
	bl sub_0204826C
	ldr r0, [r4, #0xc]
	bl sub_02048244
	mov r0, #2
	bl sub_02044F90
	add r0, r4, #0
	bl ovy185_21a322c
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy185_21a31d4

	thumb_func_start ovy185_21a322c
ovy185_21a322c: ; 0x021A322C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, sp, #0x14
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_0219E544
	mov r0, #4
	str r0, [sp]
	mov r6, #1
	str r6, [sp, #4]
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #0x3e
	mov r3, #0x18
	bl ovy185_219e558
	str r0, [r5, #0x14]
	mov r1, #8
	bl sub_0204C488
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0204C124
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #0xf4
	mov r3, #0x12
	bl ovy185_219e558
	str r0, [r5, #0x1c]
	mov r1, #0x12
	bl sub_0204C488
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_0204C124
	add r7, r4, #0
_021A328A:
	ldr r0, [r5]
	add r1, sp, #8
	add r2, r7, #0
	bl sub_0219E530
	lsl r0, r4, #2
	add r6, r5, r0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #8
	add r2, r7, #0
	add r3, r7, #0
	bl ovy185_219e558
	lsl r1, r4, #0x10
	str r0, [r6, #0x20]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r6, #0x20]
	add r1, r7, #0
	bl sub_0204C124
	ldr r0, [r6, #0x20]
	mov r1, #1
	bl sub_0204C468
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A328A
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_21a322c

	thumb_func_start ovy185_21a32d0
ovy185_21a32d0: ; 0x021A32D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r6, #0
	bl sub_021A3840
	ldr r0, [r6, #4]
	bl ovy185_21a3014
	add r7, r0, #0
	cmp r7, #0x10
	bls _021A32F4
	mov r7, #0x10
_021A32F4:
	add r0, r6, #0
	add r0, #0x94
	mov r5, #0
	ldr r4, [r0]
	cmp r7, #0
	bls _021A3318
_021A3300:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy185_21a385c
	mov r0, #1
	tst r0, r5
	beq _021A3312
	add r4, #0x18
_021A3312:
	add r5, r5, #1
	cmp r5, r7
	blo _021A3300
_021A3318:
	ldr r0, [r6, #0xc]
	bl sub_02048244
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a32d0

	thumb_func_start ovy185_21a3320
ovy185_21a3320: ; 0x021A3320
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	add r4, r1, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r6, #0
	bl sub_021A3840
	add r0, r6, #0
	lsl r1, r4, #1
	add r0, #0x98
	str r1, [r0]
	ldr r0, [r6, #4]
	bl ovy185_21a3014
	add r7, r0, #0
	cmp r7, #0x10
	bls _021A334E
	mov r7, #0x10
_021A334E:
	add r0, r6, #0
	add r0, #0x94
	mov r5, #0
	ldr r4, [r0]
	cmp r7, #0
	bls _021A3378
_021A335A:
	add r1, r6, #0
	add r1, #0x98
	ldr r1, [r1]
	add r0, r6, #0
	add r1, r1, r5
	add r2, r4, #0
	bl ovy185_21a385c
	mov r0, #1
	tst r0, r5
	beq _021A3372
	add r4, #0x18
_021A3372:
	add r5, r5, #1
	cmp r5, r7
	blo _021A335A
_021A3378:
	ldr r0, [r6, #0xc]
	bl sub_02048244
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a3320

	thumb_func_start ovy185_21a3380
ovy185_21a3380: ; 0x021A3380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #1
	bl ovy185_219e60c
	mov r0, #0x10
	ldr r4, _021A342C ; =0x04000050
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0
	mov r6, #4
	mov r7, #0
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	sub r0, #8
	ldrh r2, [r0]
	ldr r1, _021A3430 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x1f
	lsl r1, r1, #8
	orr r1, r2
	mov r2, #2
	lsl r2, r2, #0xc
	orr r1, r2
	strh r1, [r0]
	sub r2, r4, #6
	add r0, r5, #0
	ldrb r1, [r2]
	add r0, #0x8c
	strb r1, [r0]
	lsl r1, r6, #0x18
	mov r0, #0xe
	ldr r3, [r1]
	lsl r0, r0, #0xc
	and r0, r3
	lsr r3, r0, #0xd
	add r0, r5, #0
	add r0, #0x90
	str r3, [r0]
	ldrh r0, [r2]
	mov r3, #0x3f
	bic r0, r3
	mov r3, #0x1b
	orr r3, r0
	mov r0, #0x20
	orr r3, r0
	strh r3, [r2]
	add r2, r4, #0
	mov r3, #0xff
	sub r2, #0xe
	strh r3, [r2]
	mov r2, #0xa8
	sub r4, #0xa
	strh r2, [r4]
	ldr r3, [r1]
	ldr r2, _021A3434 ; =0xFFFF1FFF
	lsl r0, r0, #9
	and r2, r3
	orr r0, r2
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x88
	str r7, [r0]
	mov r0, #0x7c
	str r0, [sp]
	mov r0, #0xc
	add r5, #0x4c
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0
	bl ovy185_21a0148
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A342C: .word 0x04000050
_021A3430: .word 0xFFFFC0FF
_021A3434: .word 0xFFFF1FFF
	thumb_func_end ovy185_21a3380

	thumb_func_start ovy185_21a3438
ovy185_21a3438: ; 0x021A3438
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	bne _021A3456
	add r0, #0x4c
	bl ovy185_21a0178
	cmp r0, #0
	beq _021A3452
	mov r0, #1
	pop {r3, pc}
_021A3452:
	mov r0, #0
	pop {r3, pc}
_021A3456:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3438

	thumb_func_start ovy185_21a345c
ovy185_21a345c: ; 0x021A345C
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r2, #0
	add r1, #0x88
	str r2, [r1]
	str r2, [sp]
	mov r1, #0xc
	str r1, [sp, #4]
	add r0, #0x4c
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0x7c
	bl ovy185_21a0148
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a345c

	thumb_func_start ovy185_21a3480
ovy185_21a3480: ; 0x021A3480
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _021A34EE
	add r0, r5, #0
	add r0, #0x4c
	bl ovy185_21a0178
	cmp r0, #0
	beq _021A34F2
	mov r4, #0
	add r6, r4, #0
_021A349C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	add r1, r6, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0xa
	blt _021A349C
	mov r0, #2
	add r1, r6, #0
	bl sub_02044C98
	ldr r0, _021A34F8 ; =0x0400004A
	ldrh r2, [r0]
	mov r0, #0x3f
	bic r2, r0
	add r0, r5, #0
	add r0, #0x8c
	ldrb r0, [r0]
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1b
	lsl r0, r0, #0x1a
	orr r1, r2
	lsr r0, r0, #0x1f
	beq _021A34D4
	mov r0, #0x20
	orr r1, r0
_021A34D4:
	ldr r2, _021A34F8 ; =0x0400004A
	ldr r0, _021A34FC ; =0xFFFF1FFF
	strh r1, [r2]
	sub r2, #0x4a
	ldr r1, [r2]
	add r5, #0x90
	and r1, r0
	ldr r0, [r5]
	lsl r0, r0, #0xd
	orr r0, r1
	str r0, [r2]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A34EE:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A34F2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A34F8: .word 0x0400004A
_021A34FC: .word 0xFFFF1FFF
	thumb_func_end ovy185_21a3480

	thumb_func_start ovy185_21a3500
ovy185_21a3500: ; 0x021A3500
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021A3534
	add r0, #0x9c
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x14]
	bne _021A3518
	mov r1, #1
	b _021A351A
_021A3518:
	mov r1, #0
_021A351A:
	bl sub_0204C124
	ldr r0, [r4, #4]
	bl ovy185_21a3014
	mov r1, #1
	cmp r0, #0xe
	bhi _021A352C
	mov r1, #0
_021A352C:
	ldr r0, [r4, #0x1c]
	bl sub_0204C124
	pop {r4, pc}
_021A3534:
	ldr r0, [r4, #0x14]
	bl sub_0204C124
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C124
	pop {r4, pc}
	thumb_func_end ovy185_21a3500

	thumb_func_start ovy185_21a3544
ovy185_21a3544: ; 0x021A3544
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021A357E
	mov r0, #1
	add r2, r1, #0
	and r2, r0
	mov r0, #0x70
	mul r0, r2
	add r0, #0x3e
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r1, #1
	add r1, r0, #1
	mov r0, #0x18
	mul r0, r1
	strh r0, [r2, #2]
	ldr r0, [r4, #0x14]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r4, #0x14]
	mov r1, #8
	bl sub_0204C488
_021A357E:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3544

	thumb_func_start ovy185_21a3584
ovy185_21a3584: ; 0x021A3584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	add r7, r0, #0
	bl ovy185_21a37b0
	ldr r0, [sp, #4]
	mov r1, #0x18
	lsl r6, r0, #1
	add r0, r7, #0
	add r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r0, r0, r6
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mul r1, r0
	add r0, r7, #0
	add r0, #0x94
	ldr r0, [r0]
	str r1, [sp, #8]
	add r1, r0, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _021A35CC
	ldr r0, [sp, #0x10]
	ldr r5, [sp, #0x14]
	str r0, [sp, #0xc]
	add r0, r1, #0
	neg r0, r0
	neg r6, r6
	str r0, [sp, #4]
	b _021A35E8
_021A35CC:
	add r0, #0xc0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0xc]
	add r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r7, #4]
	bl ovy185_21a3014
	ldr r1, [sp, #0xc]
	add r1, r6, r1
	cmp r1, r0
	bls _021A35E8
	sub r6, r6, #1
_021A35E8:
	mov r4, #0
	cmp r6, #0
	ble _021A360C
_021A35EE:
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r1, r1, r4
	add r2, r5, #0
	bl ovy185_21a385c
	mov r0, #1
	tst r0, r4
	beq _021A3606
	add r5, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
_021A3606:
	add r4, r4, #1
	cmp r4, r6
	blt _021A35EE
_021A360C:
	add r1, r7, #0
	ldr r0, [sp, #0x14]
	add r1, #0x94
	str r0, [r1]
	add r1, r7, #0
	ldr r0, [sp, #0x10]
	add r1, #0x98
	str r0, [r1]
	ldr r0, [r7, #0xc]
	bl sub_02048244
	ldr r0, [r7, #0xc]
	bl sub_0204826C
	ldr r0, [sp, #4]
	add r7, #0x6c
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r7, #0
	mov r1, #2
	mov r2, #1
	bl ovy185_21a006c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3584

	thumb_func_start ovy185_21a3640
ovy185_21a3640: ; 0x021A3640
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x6c
	bl ovy185_21a00bc
	cmp r0, #0
	beq _021A366E
	add r1, sp, #0
	ldr r0, [r4, #4]
	add r1, #2
	add r2, sp, #0
	bl sub_021A30CC
	add r2, sp, #0
	ldrh r1, [r2, #2]
	ldrh r2, [r2]
	add r0, r4, #0
	bl ovy185_21a3690
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021A366E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy185_21a3640

	thumb_func_start ovy185_21a3674
ovy185_21a3674: ; 0x021A3674
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl sub_0204C138
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	mov r2, #0
	bl sub_0204C178
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy185_21a3674

	thumb_func_start ovy185_21a3690
ovy185_21a3690: ; 0x021A3690
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	mov r0, #0xf4
	add r6, sp, #4
	add r4, r2, #0
	strh r0, [r6]
	cmp r5, #0
	bne _021A36A6
	b _021A36F0
_021A36A6:
	cmp r5, r4
	bne _021A36AE
_021A36AA:
	mov r0, #0x95
	b _021A36F2
_021A36AE:
	cmp r4, #0
	beq _021A36F0
	mov r0, #0x84
	mul r0, r5
	add r1, r4, #1
	blx sub_0208D868
	add r7, r0, #0
	add r1, r5, #1
	mov r0, #0x84
	mul r0, r1
	add r1, r4, #1
	blx sub_0208D868
	add r7, #0x12
	add r0, #0x11
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r6, #2]
	mov r0, #2
	ldrsh r0, [r6, r0]
	cmp r0, #0x12
	bge _021A36EA
	b _021A36F0
_021A36EA:
	cmp r0, #0x95
	ble _021A36F4
	b _021A36AA
_021A36F0:
	mov r0, #0x12
_021A36F2:
	strh r0, [r6, #2]
_021A36F4:
	ldr r0, [sp]
	add r1, sp, #4
	ldr r0, [r0, #0x1c]
	mov r2, #0
	bl sub_0204C140
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a3690

	thumb_func_start ovy185_21a3704
ovy185_21a3704: ; 0x021A3704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C178
	add r1, sp, #0
	strh r4, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0x12
	bge _021A3724
	mov r0, #0x12
	strh r0, [r1, #2]
_021A3724:
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0x95
	ble _021A3732
	mov r0, #0x95
	strh r0, [r1, #2]
_021A3732:
	ldr r0, [r5, #0x1c]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3704

	thumb_func_start ovy185_21a3740
ovy185_21a3740: ; 0x021A3740
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r1, sp, #4
	bl ovy185_21a3674
	cmp r6, #0
	beq _021A37A6
	add r1, sp, #4
	mov r0, #2
	ldrsh r7, [r1, r0]
	cmp r7, #0x12
	bne _021A375C
	b _021A37A6
_021A375C:
	cmp r7, #0x95
	bne _021A3764
	str r6, [sp]
	b _021A37AA
_021A3764:
	mov r4, #0
_021A3766:
	mov r0, #0x84
	mul r0, r4
	add r1, r6, #1
	blx sub_0208D868
	add r0, #0x12
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r1, r4, #1
	mov r0, #0x84
	mul r0, r1
	add r1, r6, #1
	blx sub_0208D868
	add r0, #0x11
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r5, r0
	ble _021A378E
	add r0, r5, #0
_021A378E:
	cmp r5, r7
	bgt _021A379A
	cmp r7, r0
	bgt _021A379A
	str r4, [sp]
	b _021A37AA
_021A379A:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r6
	bls _021A3766
	b _021A37AA
_021A37A6:
	mov r0, #0
	str r0, [sp]
_021A37AA:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a3740

	thumb_func_start ovy185_21a37b0
ovy185_21a37b0: ; 0x021A37B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	cmp r1, #0
	ble _021A37D0
	add r0, #0x94
	ldr r0, [r0]
	add r0, #0xc0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0x18
	mul r0, r1
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _021A37DE
_021A37D0:
	add r0, #0x94
	ldr r5, [r0]
	mov r0, #0x18
	mul r0, r1
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021A37DE:
	cmp r4, r5
	ldr r0, [r6, #0xc]
	bge _021A3802
	bl sub_020484F4
	sub r1, r5, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r2, r4, #0x10
	str r1, [sp]
	mov r1, #0
	asr r2, r2, #0x10
	mov r3, #0xd0
	str r1, [sp, #4]
	bl sub_020470F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021A3802:
	bl sub_020484F4
	mov r1, #1
	lsl r1, r1, #8
	sub r1, r1, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r7, #0
	lsl r2, r4, #0x10
	str r7, [sp, #4]
	mov r1, #0
	asr r2, r2, #0x10
	mov r3, #0xd0
	bl sub_020470F8
	ldr r0, [r6, #0xc]
	bl sub_020484F4
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0
	mov r2, #0
	mov r3, #0xd0
	str r7, [sp, #4]
	bl sub_020470F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_21a37b0

	thumb_func_start sub_021A3840
sub_021A3840: ; 0x021A3840
	add r1, r0, #0
	mov r2, #0
	add r1, #0x94
	add r0, #0x98
	str r2, [r1]
	str r2, [r0]
	ldr r3, _021A3858 ; =sub_02044CFC
	mov r0, #2
	mov r1, #3
	mov r2, #8
	bx r3
	nop
_021A3858: .word sub_02044CFC
	thumb_func_end sub_021A3840

	thumb_func_start ovy185_21a385c
ovy185_21a385c: ; 0x021A385C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0219E524
	str r0, [sp, #0x14]
	cmp r4, #2
	blo _021A387C
	ldr r0, [r5, #4]
	bl ovy185_21a3014
	cmp r4, r0
	blo _021A387E
_021A387C:
	b _021A3982
_021A387E:
	ldr r0, [r5, #4]
	bl sub_021A2FBC
	cmp r0, #0
	bne _021A38C2
	ldr r0, [r5, #4]
	bl sub_021A3004
	cmp r0, #0xb
	bne _021A38C2
	sub r1, r4, #2
	mov r0, #1
	add r2, r1, #0
	and r2, r0
	mov r0, #0x70
	add r3, r2, #0
	mul r3, r0
	lsl r4, r1, #2
	add r3, #0x18
	add r0, sp, #0x1c
	strh r3, [r0]
	sub r6, #8
	add r5, #0x20
	strh r6, [r0, #2]
	ldr r0, [r5, r4]
	add r1, sp, #0x1c
	bl sub_0204C210
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021A38C2:
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x48]
	sub r1, r4, #2
	bl ovy185_21a3038
	bl sub_020232D8
	cmp r6, #0xf0
	bhi _021A38FA
	ldr r0, [r5, #0xc]
	bl sub_020484F4
	ldr r1, [sp, #0x14]
	sub r2, r4, #2
	str r1, [sp]
	mov r1, #1
	and r2, r1
	mov r1, #0x70
	mul r1, r2
	lsl r1, r1, #0x10
	lsl r2, r6, #0x10
	ldr r3, [r5, #0x48]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021A38FA:
	mov r0, #1
	lsl r0, r0, #8
	sub r7, r0, r6
	ldr r0, [r5, #0x10]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x10]
	bl sub_020484F4
	ldr r1, [sp, #0x14]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x48]
	mov r1, #0
	bl sub_02021CFC
	sub r1, r4, #2
	mov r0, #1
	and r1, r0
	mov r0, #0x70
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r5, #0x10]
	bl sub_020484F4
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	bl sub_020484F4
	str r4, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldr r0, _021A3988 ; =0x0000FFFF
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r2, #0
	mov r3, #0
	bl sub_02047008
	ldr r0, [r5, #0x10]
	bl sub_020484F4
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #0x10
	sub r0, r0, r7
	str r0, [sp, #0xc]
	ldr r0, _021A3988 ; =0x0000FFFF
	mov r2, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r3, r7, #0
	bl sub_02047008
_021A3982:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3988: .word 0x0000FFFF
	thumb_func_end ovy185_21a385c

	thumb_func_start ovy185_21a398c
ovy185_21a398c: ; 0x021A398C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	bl sub_0204C138
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	mov r6, #1
	mov r1, #1
	bl sub_0204C124
	sub r0, r6, #2
	cmp r4, r0
	beq _021A39D6
	add r1, r4, #0
	and r1, r6
	mov r0, #0x70
	mul r0, r1
	add r0, #0x3e
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r4, #1
	add r2, r0, #1
	mov r0, #0x18
	mul r0, r2
	strh r0, [r1, #2]
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r5, #0x14]
	mov r1, #0x1c
	bl sub_0204C488
_021A39D6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_21a398c

	thumb_func_start ovy185_21a39dc
ovy185_21a39dc: ; 0x021A39DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0204C4A0
	cmp r0, #0x1c
	beq _021A39EE
	mov r0, #1
	pop {r4, pc}
_021A39EE:
	ldr r0, [r4, #0x14]
	bl sub_0204C560
	cmp r0, #0
	bne _021A3A10
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	mov r1, #8
	bl sub_0204C488
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_021A3A10:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy185_21a39dc

	thumb_func_start ovy185_21a3a14
ovy185_21a3a14: ; 0x021A3A14
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021A3AB8 ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	mov r6, #0xf
	mvn r6, r6
	ldr r0, _021A3ABC ; =0x0400006C
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _021A3AC0 ; =0x0400106C
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	mov r2, #7
	mov r0, #1
	mov r1, #0x51
	lsl r2, r2, #0xe
	mov r6, #0x51
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0xb0
	mov r2, #0x51
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xb0
	blx MI_CpuFill8
	strh r6, [r4, #4]
	ldr r0, [r5]
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	bl sub_0202A2AC
	str r0, [r4, #0x20]
	str r5, [r4]
	ldrh r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x58]
	ldrh r3, [r4, #4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x9f
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x60]
	ldrh r0, [r4, #4]
	bl sub_02021998
	str r0, [r4, #0x5c]
	ldrh r0, [r4, #4]
	bl sub_0203A970
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x94
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r4, #0
	bl ovy185_21a3d70
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A3AB8: .word 0x0000008B
_021A3ABC: .word 0x0400006C
_021A3AC0: .word 0x0400106C
	thumb_func_end ovy185_21a3a14

	thumb_func_start ovy185_21a3ac4
ovy185_21a3ac4: ; 0x021A3AC4
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy185_21a3e90
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0203A980
	ldr r0, [r4, #0x5c]
	bl sub_02021C44
	ldr r0, [r4, #0x5c]
	bl sub_02021A18
	ldr r0, [r4, #0x60]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x58]
	bl sub_02022DA8
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x51
	bl sub_0203A1D0
	ldr r0, _021A3B08 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A3B08: .word 0x0000008B
	thumb_func_end ovy185_21a3ac4

	thumb_func_start ovy185_21a3b0c
ovy185_21a3b0c: ; 0x021A3B0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl PrintSystem_IsTextPrintActive
	cmp r0, #0
	beq _021A3B2A
	add r4, #0x8c
	ldr r0, [r4]
	bl sub_020342F4
	cmp r0, #0
	beq _021A3B2A
	mov r0, #1
	pop {r4, pc}
_021A3B2A:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3b0c

	thumb_func_start sub_021A3B30
sub_021A3B30: ; 0x021A3B30
	str r2, [r0]
	mov r0, #0
	add r1, #0x9c
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A3B30

	thumb_func_start ovy185_21a3b3c
ovy185_21a3b3c: ; 0x021A3B3C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	add r5, r1, #0
	bl sub_0203A978
	cmp r0, #1
	bne _021A3B54
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3B54:
	ldr r1, [r5]
	cmp r1, #0x10
	bhi _021A3C08
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A3B66: ; jump table
	.short _021A3B88 - _021A3B66 - 2 ; case 0
	.short _021A3BB6 - _021A3B66 - 2 ; case 1
	.short _021A3BCC - _021A3B66 - 2 ; case 2
	.short _021A3BE0 - _021A3B66 - 2 ; case 3
	.short _021A3BF0 - _021A3B66 - 2 ; case 4
	.short _021A3C0C - _021A3B66 - 2 ; case 5
	.short _021A3C20 - _021A3B66 - 2 ; case 6
	.short _021A3C30 - _021A3B66 - 2 ; case 7
	.short _021A3C46 - _021A3B66 - 2 ; case 8
	.short _021A3C5C - _021A3B66 - 2 ; case 9
	.short _021A3C72 - _021A3B66 - 2 ; case 10
	.short _021A3C8C - _021A3B66 - 2 ; case 11
	.short _021A3CAA - _021A3B66 - 2 ; case 12
	.short _021A3CB4 - _021A3B66 - 2 ; case 13
	.short _021A3CCE - _021A3B66 - 2 ; case 14
	.short _021A3CEA - _021A3B66 - 2 ; case 15
	.short _021A3D16 - _021A3B66 - 2 ; case 16
_021A3B88:
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r6, #0
	bl sub_0202A234
	ldrh r1, [r4, #4]
	bl sub_02029D88
	cmp r0, #0
	bne _021A3BAE
	add r0, r4, #0
	add r0, #0x95
	strb r6, [r0]
_021A3BA2:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xd
_021A3BA8:
	bl sub_021A3B30
	b _021A3D1A
_021A3BAE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
_021A3BB4:
	b _021A3BA8
_021A3BB6:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4c0c
	cmp r0, #0
	beq _021A3C08
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	b _021A3BB4
_021A3BCC:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	b _021A3BB4
_021A3BE0:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A3C08
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	b _021A3BB4
_021A3BF0:
	add r0, r4, #0
	bl ovy185_21a3b0c
	cmp r0, #0
	beq _021A3C08
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4c1c
	cmp r0, #0
	bne _021A3C0A
_021A3C08:
	b _021A3D1A
_021A3C0A:
	b _021A3C80
_021A3C0C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	b _021A3BB4
_021A3C20:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A3D1A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #7
	b _021A3BB4
_021A3C30:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4d20
	cmp r0, #0
	beq _021A3D1A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	b _021A3BB4
_021A3C46:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4d30
	cmp r0, #0
	beq _021A3D1A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #9
	b _021A3BB4
_021A3C5C:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4d64
	cmp r0, #0
	beq _021A3D1A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xa
	b _021A3BB4
_021A3C72:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4dc0
	cmp r0, #0
	beq _021A3D1A
_021A3C80:
	add r2, r4, #0
	add r2, #0xa0
	add r0, r5, #0
	add r1, r4, #0
	ldr r2, [r2]
	b _021A3BB4
_021A3C8C:
	add r0, r4, #0
	bl ovy185_21a3b0c
	cmp r0, #0
	beq _021A3D1A
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xc
	b _021A3BB4
_021A3CAA:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021A3D1A
	b _021A3BA2
_021A3CB4:
	add r0, r4, #0
	bl ovy185_21a3e90
	ldr r0, _021A3D6C ; =0x0000008B
	bl sub_0203CDC8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xe
	bl sub_021A3B30
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3CCE:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4e2c
	cmp r0, #0
	beq _021A3CE6
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xf
	bl sub_021A3B30
_021A3CE6:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3CEA:
	cmp r0, #1
	beq _021A3D12
	add r0, r4, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ovy185_21a4e94
	cmp r0, #0
	beq _021A3D12
	ldr r0, _021A3D6C ; =0x0000008B
	bl sub_0203CE0C
	add r0, r4, #0
	bl ovy185_21a3d70
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_021A3B30
_021A3D12:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A3D16:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A3D1A:
	ldr r0, [r4, #0x5c]
	bl sub_02021A3C
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021A3D54
	ldr r0, [r4, #0x48]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A3D54
	ldr r5, [r4, #0x48]
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, #0x4c]
_021A3D54:
	add r0, r4, #0
	bl ovy185_21a4a34
	add r0, r4, #0
	bl sub_021A4518
	ldr r0, [r4, #0x50]
	bl ovy185_21a4fe4
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021A3D6C: .word 0x0000008B
	thumb_func_end ovy185_21a3b3c

	thumb_func_start ovy185_21a3d70
ovy185_21a3d70: ; 0x021A3D70
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r0, #0x99
	ldrb r1, [r0]
	mov r0, #1
	mov r4, #1
	bic r1, r0
	add r0, r5, #0
	add r0, #0x99
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	str r4, [r0]
	bl sub_0203D554
	cmp r0, #1
	beq _021A3D96
	mov r4, #0
_021A3D96:
	add r0, r5, #0
	add r0, #0xa8
	str r4, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	strb r1, [r0]
	cmp r1, #0xff
	bne _021A3DC6
	cmp r4, #0
	beq _021A3DB8
	add r0, r5, #0
	mov r1, #0
	add r0, #0x96
	b _021A3DD0
_021A3DB8:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x96
	b _021A3DD0
_021A3DC6:
	cmp r4, #0
	beq _021A3DD2
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x95
_021A3DD0:
	strb r1, [r0]
_021A3DD2:
	ldrh r1, [r5, #4]
	mov r0, #0
	mov r4, #0
	bl ovy185_21a4ef0
	str r0, [r5, #0x50]
	bl sub_021A4FF8
	add r6, r0, #0
	mov r0, #0x2a
	str r0, [sp, #0x10]
	mov r0, #7
	str r0, [sp, #0x14]
	mov r0, #0xd
	str r0, [sp, #0x18]
	mov r0, #0x23
	str r0, [sp, #0x1c]
	mov r0, #0x29
	str r0, [sp, #0x20]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	add r0, sp, #8
	strb r4, [r0, #0x1c]
	strb r4, [r0, #0x1d]
	mov r1, #5
	strb r1, [r0, #0x1e]
	add r0, r5, #0
	ldrh r3, [r5, #4]
	add r0, #0xc
	add r1, sp, #8
	add r2, r6, #0
	bl sub_021999C8
	mov r3, #0x10
	str r3, [sp]
	ldrh r0, [r5, #4]
	add r1, r6, #0
	mov r2, #0xf0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc
	bl sub_02199A5C
	str r0, [r5, #8]
	mov r1, #1
	bl sub_0204C468
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #0x60]
	str r0, [sp]
	add r0, r5, #0
	ldrh r1, [r5, #4]
	ldr r2, [r5, #0x58]
	ldr r3, [r5, #0x5c]
	add r0, #0x24
	bl ovy185_21a3eec
	add r0, r5, #0
	add r0, #0x24
	bl sub_021A42C0
	add r0, r5, #0
	add r0, #0x44
	strb r4, [r0]
	ldr r0, [r5, #0x50]
	str r4, [r5, #0x40]
	bl sub_021A4FF8
	add r1, r0, #0
	ldrh r2, [r5, #4]
	add r0, r5, #0
	bl ovy185_21a4334
	str r0, [r5, #0x54]
	ldrh r0, [r5, #4]
	mov r1, #0xc
	str r0, [sp]
	ldr r2, [r5, #0x58]
	ldr r3, [r5, #0x5c]
	mov r0, #0
	bl sub_0202E168
	str r0, [r5, #0x64]
	add r0, r5, #0
	bl ovy185_21a4434
	ldrh r1, [r5, #4]
	mov r0, #1
	bl sub_02042BA8
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end ovy185_21a3d70

	thumb_func_start ovy185_21a3e90
ovy185_21a3e90: ; 0x021A3E90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl sub_02021C44
	mov r1, #0
	add r4, r1, #0
_021A3E9E:
	lsl r0, r1, #2
	add r0, r5, r0
	str r4, [r0, #0x7c]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _021A3E9E
	add r0, r5, #0
	add r0, #0xc
	str r4, [r5, #0x4c]
	bl sub_02199A44
	add r0, r5, #0
	bl sub_021A4394
	ldr r0, [r5, #0x64]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy185_21a44f8
	add r0, r5, #0
	add r0, #0x24
	bl ovy185_21a40c8
	ldr r0, [r5, #0x50]
	bl ovy185_21a4f90
	add r5, #0xa8
	ldr r0, [r5]
	cmp r0, #0
	beq _021A3EE2
	mov r4, #1
_021A3EE2:
	add r0, r4, #0
	bl sub_0203D564
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a3e90

	thumb_func_start ovy185_21a3eec
ovy185_21a3eec: ; 0x021A3EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x2a
	add r4, r1, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r7, #0x2a
	bl sub_0204AA30
	mov r1, #0x2a
	str r1, [sp, #0x18]
	add r1, #0xf6
	str r1, [sp]
	str r1, [sp, #0x18]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	add r6, r0, #0
	str r4, [sp, #4]
	bl sub_0204B0D4
	add r7, #0xd6
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0
	str r4, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	ldr r3, [sp, #0x18]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	str r4, [sp, #4]
	bl sub_0204B0B8
	ldr r0, _021A40B8 ; =0x00007FFF
	mov r1, #0x4f
	add r2, r5, #0
	strh r0, [r5, #0x14]
	mov r0, #0xf
	lsl r1, r1, #2
	add r2, #0x14
	mov r3, #2
	bl sub_0205FA10
	ldr r0, _021A40B8 ; =0x00007FFF
	mov r1, #0x4f
	lsl r1, r1, #2
	add r2, r5, #0
	strh r0, [r5, #0x16]
	mov r0, #0xf
	sub r1, r1, #2
	add r2, #0x16
	mov r3, #2
	bl sub_0205FA10
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #4
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #4
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #3
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #3
	mov r3, #0
	str r4, [sp, #0xc]
	bl sub_0204AFB0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #2
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	add r3, r5, #0
	str r4, [sp]
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	add r3, #8
	bl sub_0204B32C
	str r0, [r5, #4]
	str r7, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #4
	mov r2, #4
	mov r3, #0x80
	str r4, [sp, #8]
	bl sub_0204B124
	ldr r0, _021A40BC ; =0x0000294B
	mov r1, #0x1f
	add r2, r5, #0
	strh r0, [r5, #0x18]
	mov r0, #0x1f
	add r1, #0xfd
	add r2, #0x18
	mov r3, #2
	mov r7, #0x1f
	bl sub_0205FA10
	ldr r0, _021A40C0 ; =0x00005694
	add r7, #0xff
	add r2, r5, #0
	strh r0, [r5, #0x1a]
	mov r0, #0x1f
	add r1, r7, #0
	add r2, #0x1a
	mov r3, #2
	bl sub_0205FA10
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #5
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #5
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x20
	str r0, [sp]
	mov r4, #8
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r4, [sp, #4]
	bl sub_0204566C
	mov r0, #7
	str r0, [sp]
	str r4, [sp, #4]
	mov r7, #1
	str r7, [sp, #8]
	mov r0, #5
	mov r1, #3
	mov r2, #5
	mov r3, #0x1a
	bl sub_020480C0
	str r0, [r5, #0x24]
	bl sub_020484F4
	mov r1, #7
	bl sub_0204713C
	ldr r0, [sp, #0x30]
	mov r1, #0x15
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, _021A40C4 ; =0x000039E7
	mov r2, #2
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #4
	bl sub_02021C7C
	add r0, r4, #0
	str r7, [r5, #0x28]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021A40B8: .word 0x00007FFF
_021A40BC: .word 0x0000294B
_021A40C0: .word 0x00005694
_021A40C4: .word 0x000039E7
	thumb_func_end ovy185_21a3eec

	thumb_func_start ovy185_21a40c8
ovy185_21a40c8: ; 0x021A40C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02048210
	ldr r2, [r4]
	mov r0, #3
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r0, [r4, #4]
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy185_21a40c8

	thumb_func_start ovy185_21a40ec
ovy185_21a40ec: ; 0x021A40EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x1c]
	ldr r4, [r0, #8]
	str r0, [sp, #0x18]
	ldrh r0, [r4]
	lsr r0, r0, #3
	mov ip, r0
	ldrh r0, [r4, #2]
	add r4, #0xc
	lsr r7, r0, #3
	cmp r3, #0
	beq _021A4108
	mov r2, #5
_021A4108:
	mov r0, ip
	add r3, r0, #0
	mul r3, r7
	mov r1, #0
	cmp r3, #0
	ble _021A412A
	add r0, r2, #2
	ldr r6, _021A4168 ; =0x00000FFF
	lsl r2, r0, #0xc
_021A411A:
	lsl r0, r1, #1
	ldrh r5, [r4, r0]
	add r1, r1, #1
	and r5, r6
	add r5, r5, r2
	strh r5, [r4, r0]
	cmp r1, r3
	blt _021A411A
_021A412A:
	mov r2, #6
	ldr r0, [sp, #0x18]
	str r2, [sp]
	ldr r0, [r0, #8]
	mov r1, #0
	add r0, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, ip
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	lsl r0, r7, #0x18
	str r3, [sp, #0x10]
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r4, [sp, #0x1c]
	mov r0, #2
	mul r2, r4
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4168: .word 0x00000FFF
	thumb_func_end ovy185_21a40ec

	thumb_func_start ovy185_21a416c
ovy185_21a416c: ; 0x021A416C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r3, [sp, #8]
	str r1, [sp]
	mov r1, #1
	ldrh r3, [r0]
	lsl r1, r1, #0xa
	str r2, [sp, #4]
	add r2, r3, r1
	lsl r1, r1, #6
	cmp r2, r1
	blt _021A418E
	mov r1, #0x3f
	lsl r1, r1, #0xa
	sub r1, r3, r1
	strh r1, [r0]
	b _021A4190
_021A418E:
	strh r2, [r0]
_021A4190:
	ldrh r0, [r0]
	mov r4, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021A4268 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r6, r0, #0x10
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _021A4262
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x14]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x10]
_021A41C0:
	ldr r1, [sp, #4]
	lsl r0, r4, #3
	add r7, r1, r0
	ldrh r5, [r7, #4]
	str r0, [sp, #0xc]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r3, r0, #0x18
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrh r2, [r7, #6]
	and r0, r5
	lsl r5, r4, #1
	mov ip, r5
	ldr r5, [sp, #0x10]
	asr r0, r0, #0xa
	and r5, r2
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r6
	asr r5, r5, #0xc
	add r0, r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r5, r0, #0xa
	mov r0, #0x1f
	and r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r1
	mul r0, r6
	asr r0, r0, #0xc
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r2
	lsl r0, r0, #0x13
	lsr r0, r0, #0x18
	sub r0, r0, r3
	mul r0, r6
	asr r0, r0, #0xc
	add r0, r3, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x13
	orr r0, r1
	add r2, r5, #0
	orr r2, r0
	ldr r1, [sp]
	mov r0, ip
	strh r2, [r1, r0]
	ldr r2, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp]
	ldrh r1, [r2, r1]
	ldrh r2, [r7, #2]
	mov r0, #0xf
	lsl r1, r1, #5
	lsl r2, r2, #1
	add r1, r1, r2
	mov r2, ip
	add r2, r3, r2
	mov r3, #2
	bl sub_0205FA10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #8]
	cmp r4, r0
	blo _021A41C0
_021A4262:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4268: .word FX_SinCosTable_
	thumb_func_end ovy185_21a416c

	thumb_func_start ovy185_21a426c
ovy185_21a426c: ; 0x021A426C
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	beq _021A42AC
	add r2, r1, #0
	add r2, #0x20
	ldrb r2, [r2]
	mov r0, #1
	cmp r2, #0x10
	bhs _021A429E
	lsr r0, r2, #2
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r3
	mov r0, #0x1f
	ror r2, r0
	add r0, r3, r2
	add r2, r1, #0
	add r2, #0x20
	ldrb r2, [r2]
	add r3, r2, #1
	add r2, r1, #0
	add r2, #0x20
	strb r3, [r2]
_021A429E:
	cmp r0, #0
	beq _021A42A6
	mov r0, #0x3f
	b _021A42A8
_021A42A6:
	mov r0, #0x1f
_021A42A8:
	lsl r0, r0, #0xa
	strh r0, [r1, #0xc]
_021A42AC:
	add r0, r1, #0
	ldr r2, _021A42BC ; =0x021A72C0
	add r0, #0xc
	add r1, #0xe
	mov r3, #3
	bl ovy185_21a416c
	pop {r3, pc}
	.align 2, 0
_021A42BC: .word 0x021A72C0
	thumb_func_end ovy185_21a426c

	thumb_func_start sub_021A42C0
sub_021A42C0: ; 0x021A42C0
	mov r1, #0
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A42C0

	thumb_func_start ovy185_21a42c8
ovy185_21a42c8: ; 0x021A42C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, [r0, #8]
	str r0, [sp, #0x18]
	ldrh r0, [r3]
	mov r2, #0
	lsr r7, r0, #3
	ldrh r0, [r3, #2]
	add r4, r7, #0
	add r3, #0xc
	lsr r0, r0, #3
	mul r4, r0
	mov ip, r0
	cmp r4, #0
	ble _021A42FC
	add r0, r1, #2
	ldr r6, _021A4330 ; =0x00000FFF
	lsl r1, r0, #0xc
_021A42EC:
	lsl r0, r2, #1
	ldrh r5, [r3, r0]
	add r2, r2, #1
	and r5, r6
	add r5, r5, r1
	strh r5, [r3, r0]
	cmp r2, r4
	blt _021A42EC
_021A42FC:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #8]
	mov r2, #0
	add r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	lsl r0, r7, #0x18
	lsr r3, r0, #0x18
	mov r0, ip
	lsl r0, r0, #0x18
	str r3, [sp, #0x10]
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #2
	bl sub_020454D4
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A4330: .word 0x00000FFF
	thumb_func_end ovy185_21a42c8

	thumb_func_start ovy185_21a4334
ovy185_21a4334: ; 0x021A4334
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, sp, #0x20
	add r3, r1, #0
	add r6, r2, #0
	add r2, r7, #0
	mov r0, #0
	mov r1, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r5, _021A4390 ; =0x021A72D8
	add r4, sp, #0
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	mov r1, #1
	mov r0, #0xe
	str r0, [sp, #0x30]
	mov r0, #5
	str r0, [sp, #0x34]
	str r1, [sp, #0x24]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x38]
	add r0, r7, #0
	add r1, r6, #0
	str r2, [sp, #0x20]
	str r3, [sp, #0x28]
	bl sub_02199AA0
	mov r1, #1
	mov r2, #1
	add r4, r0, #0
	bl sub_02199D48
	add r0, r4, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4390: .word 0x021A72D8
	thumb_func_end ovy185_21a4334

	thumb_func_start sub_021A4394
sub_021A4394: ; 0x021A4394
	ldr r0, [r0, #0x54]
	ldr r3, _021A439C ; =sub_02199B5C
	bx r3
	nop
_021A439C: .word sub_02199B5C
	thumb_func_end sub_021A4394

	thumb_func_start sub_021A43A0
sub_021A43A0: ; 0x021A43A0
	ldr r3, _021A43A4 ; =sub_02199B90
	bx r3
	.align 2, 0
_021A43A4: .word sub_02199B90
	thumb_func_end sub_021A43A0

	thumb_func_start ovy185_21a43a8
ovy185_21a43a8: ; 0x021A43A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	mov r4, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r5, r4, #0
_021A43B6:
	ldr r1, _021A441C ; =0x021A7574
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r0, sp, #0xc
	add r6, r0, r7
	ldrb r1, [r1, r4]
	ldr r0, [sp, #4]
	bl sub_0204898C
	add r1, sp, #0xc
	str r0, [r1, r7]
	ldr r0, _021A4420 ; =0x000039E3
	add r4, r4, #1
	strh r0, [r6, #4]
	str r5, [r6, #8]
	cmp r4, #3
	blo _021A43B6
	mov r3, #1
	str r3, [sp, #0x2c]
	ldr r0, [sp, #8]
	mov r2, #3
	str r0, [sp, #0x30]
	add r0, sp, #0x30
	str r1, [sp, #0x38]
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
	strb r1, [r0, #0x11]
	mov r1, #0xd
	strb r1, [r0, #0x12]
	ldr r1, [sp]
	strb r2, [r0, #4]
	str r3, [sp, #0x3c]
	strb r2, [r0, #0x13]
	bl sub_0202D974
	add r7, r0, #0
	add r4, sp, #0xc
	mov r6, #0xc
_021A4406:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	add r5, r5, #1
	cmp r5, #3
	blo _021A4406
	add r0, r7, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A441C: .word 0x021A7574
_021A4420: .word 0x000039E3
	thumb_func_end ovy185_21a43a8

	thumb_func_start sub_021A4424
sub_021A4424: ; 0x021A4424
	ldr r3, _021A4428 ; =sub_0202DA54
	bx r3
	.align 2, 0
_021A4428: .word sub_0202DA54
	thumb_func_end sub_021A4424

	thumb_func_start sub_021A442C
sub_021A442C: ; 0x021A442C
	ldr r3, _021A4430 ; =sub_0202DB70
	bx r3
	.align 2, 0
_021A4430: .word sub_0202DB70
	thumb_func_end sub_021A442C

	thumb_func_start ovy185_21a4434
ovy185_21a4434: ; 0x021A4434
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	bl sub_021A4FF8
	mov r1, #8
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	ldrh r1, [r5, #4]
	mov r4, #0
	str r1, [sp, #8]
	ldr r2, [r5, #0x5c]
	ldr r3, [r5, #0x58]
	mov r1, #0
	bl sub_02034168
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x97
	add r6, r5, #0
	strb r4, [r0]
	add r6, #0x97
_021A4468:
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl sub_0202A234
	ldrh r1, [r5, #4]
	bl sub_02029D88
	cmp r0, #0
	beq _021A4486
	ldrb r0, [r6]
	add r4, r4, #1
	add r0, r0, #1
	strb r0, [r6]
	cmp r4, #0x14
	blt _021A4468
_021A4486:
	add r0, r5, #0
	add r0, #0x97
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	strb r1, [r0]
	cmp r1, #0x14
	bhs _021A44A4
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	strb r1, [r0]
_021A44A4:
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	mov r1, #1
	cmp r0, #3
	bhi _021A44B2
	mov r1, #0
_021A44B2:
	ldr r0, [r5, #8]
	bl sub_0204C124
	mov r4, #0
	mov r6, #4
	mov r7, #9
_021A44BE:
	mov r2, #6
	mul r2, r4
	str r6, [sp]
	add r2, r2, #2
	lsl r2, r2, #0x18
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #2
	lsr r2, r2, #0x18
	mov r3, #0x19
	bl sub_020480C0
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x6c]
	cmp r4, #4
	blt _021A44BE
	add r0, r5, #0
	bl sub_021A4524
	add r0, r5, #0
	mov r1, #1
	bl ovy185_21a4614
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a4434

	thumb_func_start ovy185_21a44f8
ovy185_21a44f8: ; 0x021A44F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_02034264
	mov r4, #0
_021A4506:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x6c]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #4
	blt _021A4506
	pop {r3, r4, r5, pc}
	thumb_func_end ovy185_21a44f8

	thumb_func_start sub_021A4518
sub_021A4518: ; 0x021A4518
	add r0, #0x8c
	ldr r0, [r0]
	ldr r3, _021A4520 ; =sub_02034220
	bx r3
	.align 2, 0
_021A4520: .word sub_02034220
	thumb_func_end sub_021A4518

	thumb_func_start sub_021A4524
sub_021A4524: ; 0x021A4524
	ldr r3, _021A452C ; =ovy185_21a4544
	mov r1, #0
	bx r3
	nop
_021A452C: .word ovy185_21a4544
	thumb_func_end sub_021A4524

	thumb_func_start ovy185_21a4530
ovy185_21a4530: ; 0x021A4530
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ovy185_21a4544
	add r4, #0x24
	add r0, r4, #0
	bl sub_021A42C0
	pop {r4, pc}
	thumb_func_end ovy185_21a4530

	thumb_func_start ovy185_21a4544
ovy185_21a4544: ; 0x021A4544
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021A4558
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_020342F4
	cmp r0, #0
	beq _021A4612
_021A4558:
	mov r0, #2
	mov r1, #0
	bl sub_02045790
	add r0, r5, #0
	add r0, #0x96
	ldrb r1, [r0]
	cmp r1, #0
	beq _021A4584
	sub r1, r1, #1
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0x18
	bl sub_0202A234
	bl sub_02029E50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x24
	bl ovy185_21a42c8
_021A4584:
	mov r4, #0
	add r6, r4, #0
_021A4588:
	add r0, r5, #0
	add r0, #0x8c
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl sub_02034320
	cmp r0, #0
	beq _021A45AA
	add r0, r5, #0
	add r0, #0x8c
	lsl r1, r4, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl sub_020342F8
_021A45AA:
	add r4, r4, #1
	cmp r4, #4
	blt _021A4588
	mov r4, #0
	add r7, r4, #0
	mov r6, #1
	b _021A45D6
_021A45B8:
	lsl r0, r1, #0x18
	lsr r2, r0, #0x18
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	add r3, r6, #0
	cmp r2, r0
	beq _021A45CA
	add r3, r7, #0
_021A45CA:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy185_21a4b2c
	add r4, r4, #1
_021A45D6:
	add r0, r5, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	cmp r1, r0
	bge _021A45EC
	cmp r4, #4
	blt _021A45B8
_021A45EC:
	cmp r0, #0x14
	bhs _021A4612
	cmp r4, #4
	bge _021A4612
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	mov r3, #1
	cmp r1, r0
	beq _021A4606
	mov r3, #0
_021A4606:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ovy185_21a4a98
_021A4612:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a4544

	thumb_func_start ovy185_21a4614
ovy185_21a4614: ; 0x021A4614
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #8]
	add r7, r1, #0
	bl sub_0204C138
	cmp r0, #0
	beq _021A46C0
	add r0, r6, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r4, r0, #2
	add r0, r6, #0
	add r0, #0x96
	ldrb r5, [r0]
	cmp r7, #0
	bne _021A4680
	ldr r0, [r6, #8]
	mov r1, #1
	bl sub_0204C234
	add r7, r0, #0
	mov r0, #0x89
	mul r0, r5
	add r1, r4, #0
	blx sub_0208D65C
	str r0, [sp]
	add r0, #0x10
	str r0, [sp]
	add r1, r5, #1
	mov r0, #0x89
	mul r0, r1
	add r1, r4, #0
	blx sub_0208D65C
	add r0, #0x10
	cmp r5, #0
	bne _021A4668
	cmp r7, r0
	bge _021A4680
	pop {r3, r4, r5, r6, r7, pc}
_021A4668:
	sub r1, r4, #1
	cmp r5, r1
	bne _021A4676
	ldr r0, [sp]
	cmp r7, r0
	blt _021A4680
	pop {r3, r4, r5, r6, r7, pc}
_021A4676:
	ldr r1, [sp]
	cmp r1, r7
	bgt _021A4680
	cmp r7, r0
	blt _021A46C0
_021A4680:
	cmp r5, #0
	bne _021A4688
	mov r1, #0x10
	b _021A46B8
_021A4688:
	sub r0, r4, #1
	cmp r5, r0
	bne _021A4690
	b _021A46B6
_021A4690:
	add r0, r6, #0
	add r0, #0x96
	ldrb r1, [r0]
	mov r0, #0x89
	mul r0, r1
	add r1, r4, #0
	blx sub_0208D65C
	add r5, r0, #0
	mov r0, #0x89
	lsl r1, r4, #1
	blx sub_0208D65C
	add r5, #0x10
	add r0, r5, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	cmp r1, #0x98
	ble _021A46B8
_021A46B6:
	mov r1, #0x98
_021A46B8:
	ldr r0, [r6, #8]
	mov r2, #1
	bl sub_0204C228
_021A46C0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4614

	thumb_func_start ovy185_21a46c4
ovy185_21a46c4: ; 0x021A46C4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0204C138
	cmp r0, #0
	bne _021A46DA
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021A46DA:
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	bne _021A46EC
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021A46EC:
	ldr r0, [sp, #4]
	cmp r0, #0xf0
	blo _021A4716
	cmp r0, #0xf7
	bhi _021A4716
	ldr r0, [sp]
	cmp r0, #0x9f
	bhi _021A4716
	cmp r0, #8
	blo _021A4716
	add r0, r4, #0
	add r0, #0x99
	ldrb r1, [r0]
	mov r0, #1
	add r4, #0x99
	bic r1, r0
	mov r0, #1
	orr r1, r0
	add sp, #8
	strb r1, [r4]
	pop {r4, pc}
_021A4716:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy185_21a46c4

	thumb_func_start ovy185_21a471c
ovy185_21a471c: ; 0x021A471C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	sub r6, r1, #2
	add r5, r0, #0
	mov r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r6, #0
	ble _021A477A
	sub r0, r6, #1
	str r0, [sp, #0xc]
_021A4732:
	mov r0, #0x89
	mul r0, r4
	str r0, [sp, #8]
	add r1, r6, #0
	blx sub_0208D65C
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r1, r6, #0
	add r0, #0x89
	add r7, #0x10
	str r0, [sp, #8]
	blx sub_0208D65C
	add r0, #0x10
	cmp r4, #0
	bne _021A475E
	cmp r5, r0
	bhs _021A4774
_021A4758:
	ldr r0, [sp]
	strh r4, [r0]
	b _021A477A
_021A475E:
	ldr r1, [sp, #0xc]
	cmp r4, r1
	bne _021A476A
	cmp r5, r7
	blo _021A4774
	b _021A4758
_021A476A:
	cmp r7, r5
	bhi _021A4774
	cmp r5, r0
	bhs _021A4774
	b _021A4758
_021A4774:
	add r4, r4, #1
	cmp r4, r6
	blt _021A4732
_021A477A:
	cmp r5, #0x98
	bls _021A4782
	mov r5, #0x98
	b _021A4788
_021A4782:
	cmp r5, #0x10
	bhs _021A4788
	mov r5, #0x10
_021A4788:
	ldr r0, [sp, #4]
	strh r5, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a471c

	thumb_func_start ovy185_21a4790
ovy185_21a4790: ; 0x021A4790
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	cmp r0, #0
	bne _021A47B6
	add r0, r5, #0
	add r0, #0x99
	ldrb r1, [r0]
	mov r0, #1
	add r5, #0x99
	bic r1, r0
	add sp, #0xc
	strb r1, [r5]
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021A47B6:
	add r1, r5, #0
	add r1, #0x98
	ldrb r1, [r1]
	add r2, sp, #0
	ldr r0, [sp, #4]
	add r2, #2
	add r3, sp, #0
	bl ovy185_21a471c
	add r4, sp, #0
	mov r7, #0
	ldrsh r1, [r4, r7]
	ldr r0, [r5, #8]
	mov r2, #1
	mov r6, #1
	bl sub_0204C228
	add r0, r5, #0
	add r0, #0x96
	ldrh r1, [r4, #2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _021A47EE
	add r5, #0x96
	add sp, #0xc
	strb r1, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_021A47EE:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy185_21a4790

	thumb_func_start ovy185_21a47f4
ovy185_21a47f4: ; 0x021A47F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x99
	ldrb r0, [r0]
	mov r6, #0
	mov r4, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A486E
	add r7, r6, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	bic r0, r1
	beq _021A4814
	add r7, r4, #0
_021A4814:
	cmp r7, #0
	beq _021A486E
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _021A486E
	add r0, r5, #0
	add r0, #0x94
	ldrb r1, [r0]
	cmp r1, #0xff
	bne _021A483A
	add r0, r5, #0
	add r0, #0x96
	ldrb r1, [r0]
_021A4832:
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	b _021A4852
_021A483A:
	add r0, r5, #0
	add r0, #0x96
	ldrb r2, [r0]
	cmp r2, r1
	bhi _021A484C
	add r0, r2, #3
	cmp r1, r0
	bge _021A484C
	b _021A4832
_021A484C:
	add r0, r5, #0
	add r0, #0x95
	strb r2, [r0]
_021A4852:
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x94
	strb r1, [r0]
	add r0, r5, #0
	mov r4, #0
	add r0, #0xa8
	str r4, [r0]
	ldr r0, _021A4A30 ; =0x00000548
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy185_21a4530
_021A486E:
	cmp r4, #0
	beq _021A4960
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _021A4960
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A4960
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021A4896
	add r6, r1, #0
	b _021A4958
_021A4896:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _021A48F4
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	cmp r1, #0
	beq _021A48F2
	add r0, r5, #0
	add r0, #0x94
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r1, r0
	bne _021A48DE
	add r0, r5, #0
	add r0, #0x96
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x96
	strb r1, [r0]
_021A48DE:
	add r0, r5, #0
	mov r1, #0
	bl ovy185_21a4614
	add r0, r5, #0
	bl ovy185_21a4530
	ldr r0, _021A4A30 ; =0x00000548
	bl GFL_SndSEPlay
_021A48F2:
	b _021A4958
_021A48F4:
	bl sub_0203DF44
	mov r1, #0x80
	tst r0, r1
	beq _021A4960
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _021A4958
	add r0, r5, #0
	add r0, #0x94
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r0, r0, #3
	cmp r1, r0
	bne _021A4944
	add r0, r5, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x96
	strb r1, [r0]
_021A4944:
	add r0, r5, #0
	mov r1, #0
	bl ovy185_21a4614
	add r0, r5, #0
	bl ovy185_21a4530
	ldr r0, _021A4A30 ; =0x00000548
	bl GFL_SndSEPlay
_021A4958:
	add r0, r5, #0
	mov r4, #0
	add r0, #0xa8
	str r4, [r0]
_021A4960:
	cmp r4, #0
	beq _021A4A2C
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021A4988
	add r0, r5, #0
	bl ovy185_21a4790
	cmp r0, #0
	beq _021A4986
	add r0, r5, #0
	bl ovy185_21a4530
	ldr r0, _021A4A30 ; =0x00000548
	bl GFL_SndSEPlay
_021A4986:
	b _021A4A26
_021A4988:
	bl ovy185_21a4bd8
	mov r2, #0
	mvn r2, r2
	cmp r0, r2
	beq _021A49A2
	add r1, r5, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r1, r1, #1
	cmp r0, r1
	ble _021A49A2
	add r0, r2, #0
_021A49A2:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A49D2
	add r1, r5, #0
	add r1, #0x95
	ldrb r2, [r1]
	add r1, r5, #0
	add r1, #0x94
	strb r2, [r1]
	add r1, r5, #0
	add r1, #0x96
	ldrb r1, [r1]
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	bl ovy185_21a4530
	mov r6, #1
	add r5, #0xa8
	str r6, [r5]
	b _021A4A2C
_021A49D2:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A49E4
	add r0, r5, #0
	bl ovy185_21a46c4
_021A49E4:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021A4A2C
	add r0, r5, #0
	bl ovy185_21a4790
	cmp r0, #0
	bne _021A4A06
	add r0, r5, #0
	add r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _021A4A20
_021A4A06:
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	bl ovy185_21a4530
_021A4A20:
	ldr r0, _021A4A30 ; =0x00000548
	bl GFL_SndSEPlay
_021A4A26:
	mov r0, #1
	add r5, #0xa8
	str r0, [r5]
_021A4A2C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4A30: .word 0x00000548
	thumb_func_end ovy185_21a47f4

	thumb_func_start ovy185_21a4a34
ovy185_21a4a34: ; 0x021A4A34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x7c
_021A4A3E:
	lsl r2, r4, #2
	add r1, r5, r2
	ldr r0, [r5, #0x5c]
	ldr r1, [r1, #0x6c]
	add r2, r6, r2
	bl ovy185_21a4a54
	add r4, r4, #1
	cmp r4, #4
	blt _021A4A3E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy185_21a4a34

	thumb_func_start ovy185_21a4a54
ovy185_21a4a54: ; 0x021A4A54
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021A4A92
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A4A92
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	add r0, r5, #0
	bl sub_020484D4
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A4A92:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4a54

	thumb_func_start ovy185_21a4a98
ovy185_21a4a98: ; 0x021A4A98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x60]
	add r4, r1, #0
	mov r1, #0x11
	add r6, r3, #0
	bl sub_0204898C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x24
	add r1, r4, #0
	mov r2, #6
	add r3, r6, #0
	bl ovy185_21a40ec
	cmp r6, #0
	beq _021A4AD2
	lsl r4, r4, #2
	add r0, r5, r4
	ldr r0, [r0, #0x6c]
	bl sub_020484F4
	mov r1, #0xe
	bl sub_0204713C
	ldr r7, _021A4B24 ; =0x0000044E
	b _021A4AE4
_021A4AD2:
	lsl r4, r4, #2
	add r0, r5, r4
	ldr r0, [r0, #0x6c]
	bl sub_020484F4
	mov r1, #0xd
	bl sub_0204713C
	ldr r7, _021A4B28 ; =0x0000044D
_021A4AE4:
	add r6, r5, #0
	add r6, #0x6c
	ldr r0, [r6, r4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x58]
	mov r3, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #0x5c]
	bl sub_02021C7C
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [r6, r4]
	bl sub_0204826C
	ldr r0, [r6, r4]
	bl sub_020484D4
	bl sub_02045B7C
	mov r1, #1
	add r0, r5, r4
	str r1, [r0, #0x7c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4B24: .word 0x0000044E
_021A4B28: .word 0x0000044D
	thumb_func_end ovy185_21a4a98

	thumb_func_start ovy185_21a4b2c
ovy185_21a4b2c: ; 0x021A4B2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0202A234
	str r0, [sp]
	bl sub_02029E50
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x24
	add r1, r4, #0
	add r3, r6, #0
	bl ovy185_21a40ec
	cmp r6, #0
	beq _021A4B7E
	add r0, r5, #0
	lsl r6, r4, #2
	add r0, #0x6c
	add r7, r0, r6
	ldr r0, [r0, r6]
	bl sub_020484F4
	mov r1, #0xe
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, _021A4BD0 ; =0x0000044E
	bl sub_020344C0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0xe
	b _021A4BA6
_021A4B7E:
	add r0, r5, #0
	lsl r6, r4, #2
	add r0, #0x6c
	add r7, r0, r6
	ldr r0, [r0, r6]
	bl sub_020484F4
	mov r1, #0xd
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, _021A4BD4 ; =0x0000044D
	bl sub_020344C0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0xd
_021A4BA6:
	bl sub_020344B8
	ldrh r1, [r5, #4]
	ldr r0, [sp]
	bl sub_02029D88
	cmp r0, #1
	bne _021A4BCC
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [r7]
	ldr r2, [sp]
	add r3, r4, #0
	bl sub_020342A4
	mov r1, #1
	add r0, r5, r6
	str r1, [r0, #0x7c]
_021A4BCC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4BD0: .word 0x0000044E
_021A4BD4: .word 0x0000044D
	thumb_func_end ovy185_21a4b2c

	thumb_func_start ovy185_21a4bd8
ovy185_21a4bd8: ; 0x021A4BD8
	push {r3, lr}
	sub sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _021A4C02
	ldr r0, [sp, #4]
	cmp r0, #0xe8
	bhs _021A4C02
	ldr r0, [sp]
	cmp r0, #8
	blo _021A4C02
	lsr r0, r0, #3
	sub r0, r0, #1
	mov r1, #6
	blx sub_0208D868
	cmp r0, #3
	blo _021A4C06
_021A4C02:
	mov r0, #0
	mvn r0, r0
_021A4C06:
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4bd8

	thumb_func_start ovy185_21a4c0c
ovy185_21a4c0c: ; 0x021A4C0C
	push {r3, lr}
	ldr r0, [r1, #0x54]
	mov r1, #1
	bl sub_02199C90
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4c0c

	thumb_func_start ovy185_21a4c1c
ovy185_21a4c1c: ; 0x021A4C1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r4, #0
	add r0, #0x24
	mvn r4, r4
	mov r6, #0
	bl ovy185_21a426c
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _021A4CE2
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r7, r6, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021A4C9C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A4C50
	mov r0, #1
	b _021A4C52
_021A4C50:
	add r0, r6, #0
_021A4C52:
	bl sub_0203D564
	ldr r0, [r5, #0x54]
	bl sub_021A43A0
	ldr r0, [r5, #0x54]
	bl sub_02199C30
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A4C72
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa4
	str r1, [r0]
_021A4C72:
	ldr r0, [r5, #0x54]
	bl sub_02199C08
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A4C8A
	add r0, r5, #0
	mov r1, #1
	add r0, #0xa4
	str r1, [r0]
_021A4C8A:
	bl sub_0203D554
	mov r1, #1
	cmp r0, #1
	beq _021A4C96
	mov r1, #0
_021A4C96:
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
_021A4C9C:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A4CC0
	cmp r4, #1
	beq _021A4CAC
	cmp r4, #7
	b _021A4CC0
_021A4CAC:
	ldr r1, [r5]
	mov r0, #1
	str r0, [r1, #4]
	ldr r1, [r5]
	mov r2, #0
	str r2, [r1, #8]
	mov r1, #5
	add r5, #0xa0
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021A4CC0:
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	beq _021A4CD2
	add r0, r5, #0
	bl ovy185_21a47f4
	add r7, r0, #0
_021A4CD2:
	cmp r7, #0
	beq _021A4CEE
	ldr r0, _021A4D1C ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #1
	str r0, [r5, #0x40]
	b _021A4CEE
_021A4CE2:
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _021A4CEE
	mov r6, #1
_021A4CEE:
	cmp r6, #0
	beq _021A4D16
	add r1, r5, #0
	add r1, #0x95
	ldrb r1, [r1]
	ldr r0, [r5, #0x20]
	bl sub_0202A234
	ldrh r1, [r5, #4]
	bl sub_02029D88
	cmp r0, #0
	beq _021A4D0C
	mov r0, #8
	b _021A4D0E
_021A4D0C:
	mov r0, #0xb
_021A4D0E:
	add r5, #0xa0
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A4D16:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4D1C: .word 0x0000054C
	thumb_func_end ovy185_21a4c1c

	thumb_func_start ovy185_21a4d20
ovy185_21a4d20: ; 0x021A4D20
	push {r3, lr}
	ldr r0, [r1, #0x54]
	mov r1, #0
	bl sub_02199C90
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4d20

	thumb_func_start ovy185_21a4d30
ovy185_21a4d30: ; 0x021A4D30
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021A4D42
	mov r0, #1
	b _021A4D44
_021A4D42:
	mov r0, #0
_021A4D44:
	bl sub_0203D564
	ldrh r2, [r4, #4]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x60]
	bl ovy185_21a43a8
	str r0, [r4, #0x68]
	mov r0, #7
	mvn r0, r0
	mov r1, #0x1e
	mov r2, #1
	bl sub_02029884
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy185_21a4d30

	thumb_func_start ovy185_21a4d64
ovy185_21a4d64: ; 0x021A4D64
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x68]
	bl sub_021A442C
	ldr r0, [r4, #0x68]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021A4DBA
	ldr r0, [r4, #0x68]
	bl sub_0202DC00
	cmp r0, #0
	beq _021A4D8C
	cmp r0, #1
	beq _021A4DAC
	cmp r0, #2
	beq _021A4DB0
	b _021A4DB6
_021A4D8C:
	add r0, r4, #0
	mov r1, #5
	add r0, #0xa0
	str r1, [r0]
	add r1, r4, #0
	add r1, #0x95
	ldrb r1, [r1]
	ldr r0, [r4, #0x20]
	bl sub_0202A234
	ldr r1, [r4]
	str r0, [r1, #8]
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #4]
	b _021A4DB6
_021A4DAC:
	mov r0, #0xb
	b _021A4DB2
_021A4DB0:
	mov r0, #4
_021A4DB2:
	add r4, #0xa0
	str r0, [r4]
_021A4DB6:
	mov r0, #1
	pop {r4, pc}
_021A4DBA:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4d64

	thumb_func_start ovy185_21a4dc0
ovy185_21a4dc0: ; 0x021A4DC0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x68]
	bl sub_021A4424
	bl sub_0203D554
	mov r1, #1
	cmp r0, #1
	beq _021A4DD6
	mov r1, #0
_021A4DD6:
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #4
	bne _021A4E26
	mov r0, #0
	mov r1, #0x1e
	mov r2, #1
	mov r4, #0
	bl sub_02029884
	add r0, r5, #0
	add r0, #0x24
	bl sub_021A42C0
	add r0, r5, #0
	add r0, #0x44
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	str r4, [r5, #0x40]
	cmp r0, #0
	beq _021A4E26
	add r0, r5, #0
	add r0, #0x95
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x95
	strb r1, [r0]
	add r0, r5, #0
	bl ovy185_21a4530
_021A4E26:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4dc0

	thumb_func_start ovy185_21a4e2c
ovy185_21a4e2c: ; 0x021A4E2C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r0]
	cmp r1, #0
	beq _021A4E3E
	cmp r1, #1
	beq _021A4E44
	b _021A4E8A
_021A4E3E:
	add r1, r1, #1
	str r1, [r0]
	b _021A4E8A
_021A4E44:
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp]
	ldrh r0, [r5, #4]
	mov r2, #0
	mov r3, #1
	str r0, [sp, #4]
	mov r0, #2
	mov r6, #1
	bl sub_02029968
	add r1, r5, #0
	add r1, #0x95
	add r4, r0, #0
	ldrb r1, [r1]
	ldr r0, [r5, #0x20]
	bl sub_0202A234
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02029A2C
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	ldr r2, _021A4E90 ; =0x021A7298
	sub r1, r6, #2
	add r3, r4, #0
	bl sub_0203A988
	add r5, #0x90
	add sp, #8
	str r4, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A4E8A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A4E90: .word 0x021A7298
	thumb_func_end ovy185_21a4e2c

	thumb_func_start ovy185_21a4e94
ovy185_21a4e94: ; 0x021A4E94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _021A4EA8
	cmp r0, #1
	beq _021A4EE2
	b _021A4EE8
_021A4EA8:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_02029A44
	cmp r0, #0
	beq _021A4ED2
	add r0, r4, #0
	add r0, #0x90
	add r6, sp, #0
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_02029A58
	add r1, r4, #0
	add r1, #0x95
	ldrb r1, [r1]
	ldr r0, [r4, #0x20]
	add r2, r6, #0
	bl sub_0202A23C
_021A4ED2:
	add r4, #0x90
	ldr r0, [r4]
	bl sub_02029A20
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021A4EE8
_021A4EE2:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A4EE8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4e94

	thumb_func_start ovy185_21a4ef0
ovy185_21a4ef0: ; 0x021A4EF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021A4F74 ; =0x00000151
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021A4F78 ; =0x021A7578
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021A4F7C ; =0x04000050
	ldr r0, _021A4F80 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021A4F84 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021A4F88 ; =0x021A7324
	add r0, r7, #0
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy185_21a5018
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy185_21a50bc
	ldr r0, _021A4F8C ; =ovy185_21a5004
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4F74: .word 0x00000151
_021A4F78: .word 0x021A7578
_021A4F7C: .word 0x04000050
_021A4F80: .word 0x04001050
_021A4F84: .word 0xFFFF1FFF
_021A4F88: .word 0x021A7324
_021A4F8C: .word ovy185_21a5004
	thumb_func_end ovy185_21a4ef0

	thumb_func_start ovy185_21a4f90
ovy185_21a4f90: ; 0x021A4F90
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy185_21a50fc
	add r0, r4, #0
	bl ovy185_21a5078
	bl sub_020232D8
	ldr r5, _021A4FD8 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A4FDC ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A4FE0 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_021A4FD8: .word 0x04000050
_021A4FDC: .word 0x04001050
_021A4FE0: .word 0xFFFF1FFF
	thumb_func_end ovy185_21a4f90

	thumb_func_start ovy185_21a4fe4
ovy185_21a4fe4: ; 0x021A4FE4
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021A5118
	add r0, r4, #0
	bl sub_021A50B0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a4fe4

	thumb_func_start sub_021A4FF8
sub_021A4FF8: ; 0x021A4FF8
	ldr r3, _021A5000 ; =sub_021A5128
	add r0, r0, #4
	bx r3
	nop
_021A5000: .word sub_021A5128
	thumb_func_end sub_021A4FF8

	thumb_func_start ovy185_21a5004
ovy185_21a5004: ; 0x021A5004
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A50B4
	add r0, r4, #4
	bl sub_021A5120
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a5004

	thumb_func_start ovy185_21a5018
ovy185_21a5018: ; 0x021A5018
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl sub_020444A4
	add r0, r5, #0
	bl sub_02048080
	ldr r0, _021A5070 ; =0x021A72F8
	bl sub_02044710
	ldr r7, _021A5074 ; =0x021A7354
_021A503A:
	mov r0, #0x2c
	mul r0, r4
	add r6, r7, r0
	ldr r5, [r7, r0]
	ldr r2, [r6, #0x24]
	lsl r0, r5, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #4
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	ldr r1, [r6, #0x28]
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #6
	blo _021A503A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A5070: .word 0x021A72F8
_021A5074: .word 0x021A7354
	thumb_func_end ovy185_21a5018

	thumb_func_start ovy185_21a5078
ovy185_21a5078: ; 0x021A5078
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A50AC ; =0x021A7354
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021A5082:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #6
	blo _021A5082
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A50AC: .word 0x021A7354
	thumb_func_end ovy185_21a5078

	thumb_func_start sub_021A50B0
sub_021A50B0: ; 0x021A50B0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A50B0

	thumb_func_start sub_021A50B4
sub_021A50B4: ; 0x021A50B4
	ldr r3, _021A50B8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021A50B8: .word sub_02045A5C
	thumb_func_end sub_021A50B4

	thumb_func_start ovy185_21a50bc
ovy185_21a50bc: ; 0x021A50BC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021A50F8 ; =0x021A7308
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A50F8: .word 0x021A7308
	thumb_func_end ovy185_21a50bc

	thumb_func_start ovy185_21a50fc
ovy185_21a50fc: ; 0x021A50FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy185_21a50fc

	thumb_func_start sub_021A5118
sub_021A5118: ; 0x021A5118
	ldr r3, _021A511C ; =sub_0204B794
	bx r3
	.align 2, 0
_021A511C: .word sub_0204B794
	thumb_func_end sub_021A5118

	thumb_func_start sub_021A5120
sub_021A5120: ; 0x021A5120
	ldr r3, _021A5124 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021A5124: .word sub_0204B7C8
	thumb_func_end sub_021A5120

	thumb_func_start sub_021A5128
sub_021A5128: ; 0x021A5128
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A5128
_021A512C:
	.byte 0x01, 0x03, 0x07, 0x08
	.byte 0x09, 0x00, 0xB2, 0x00, 0x20, 0x04, 0xFF, 0xFF, 0xC3, 0x00, 0x8B, 0x04, 0xEE, 0x02, 0x2C, 0x05
	.byte 0x81, 0x04, 0x9C, 0x00, 0x6F, 0x04, 0xD3, 0x00, 0xFF, 0xFF, 0xCD, 0x06, 0xC4, 0x06, 0xC7, 0x06
	.byte 0xC9, 0x06, 0xC5, 0x06, 0xC6, 0x06, 0xC8, 0x06, 0xCC, 0x06, 0xCB, 0x06, 0xCA, 0x06, 0xFF, 0xFF
	.byte 0x51, 0x02, 0x27, 0x00, 0x81, 0x01, 0xF9, 0x05, 0x87, 0x00, 0x53, 0x02, 0x4D, 0x04, 0xA6, 0x02
	.byte 0xBD, 0x00, 0x67, 0x05, 0x7C, 0x00, 0xFF, 0xFF, 0x4F, 0x01, 0x4C, 0x03, 0x91, 0x00, 0x0B, 0x02
	.byte 0x84, 0x02, 0x38, 0x04, 0x6E, 0x05, 0x07, 0x01, 0x3B, 0x02, 0x3A, 0x02, 0x29, 0x00, 0x7A, 0x02
	.byte 0xFF, 0xFF, 0xCC, 0x05, 0xC4, 0x05, 0xCA, 0x05, 0xCD, 0x06, 0xC4, 0x06, 0xC7, 0x06, 0xC9, 0x06
	.byte 0xC5, 0x06, 0xC6, 0x06, 0xC8, 0x06, 0xCC, 0x06, 0xCB, 0x06, 0xCA, 0x06, 0xFF, 0xFF, 0xE9, 0x06
	.byte 0xF0, 0x05, 0x32, 0x02, 0xC1, 0x00, 0xD5, 0x01, 0xA5, 0x03, 0x06, 0x07, 0xD2, 0x06, 0xE9, 0x05
	.byte 0xE8, 0x05, 0xD0, 0x05, 0x0F, 0x06, 0xF1, 0x05, 0xFE, 0xFF, 0x02, 0x00, 0xB3, 0x05, 0xA0, 0x05
	.byte 0xFF, 0xFF, 0xEC, 0x06, 0xC5, 0x00, 0x3A, 0x05, 0xDB, 0x06, 0x21, 0x05, 0xA3, 0x05, 0x09, 0x02
	.byte 0xC0, 0x06, 0xA6, 0x06, 0x4C, 0x05, 0xC9, 0x00, 0x89, 0x03, 0xD3, 0x06, 0xD9, 0x00, 0x73, 0x06
	.byte 0xFD, 0x03, 0xE0, 0x01, 0xFF, 0xFF, 0xBB, 0x06, 0xB6, 0x06, 0xB0, 0x06, 0xB7, 0x06, 0xB5, 0x06
	.byte 0xBA, 0x06, 0xB8, 0x06, 0xAF, 0x06, 0xB2, 0x06, 0xAB, 0x06, 0xB4, 0x06, 0xBE, 0x06, 0xBF, 0x06
	.byte 0xAA, 0x06, 0xAC, 0x06, 0xBD, 0x06, 0xC2, 0x06, 0xB3, 0x06, 0xAE, 0x06, 0xB1, 0x06, 0xC1, 0x06
	.byte 0xB9, 0x06, 0xC0, 0x06, 0xBC, 0x06, 0xAD, 0x06, 0xC3, 0x06, 0xFF, 0xFF, 0xD9, 0x04, 0x4A, 0x03
	.byte 0xE0, 0x00, 0x2B, 0x00, 0xC8, 0x03, 0x00, 0x07, 0xE7, 0x06, 0xCE, 0x06, 0xE4, 0x06, 0xE3, 0x06
	.byte 0xFE, 0xFF, 0x02, 0x00, 0x04, 0x07, 0xDD, 0x06, 0xE2, 0x05, 0xAC, 0x05, 0x8A, 0x00, 0x8B, 0x00
	.byte 0x5E, 0x04, 0x5F, 0x00, 0xE6, 0x06, 0x9E, 0x05, 0xF5, 0x01, 0x54, 0x03, 0x5B, 0x05, 0x0E, 0x05
	.byte 0xC7, 0x03, 0xE1, 0x04, 0xFF, 0xFF, 0x00, 0x00, 0x9C, 0x06, 0x9E, 0x06, 0x9D, 0x06, 0x8A, 0x06
	.byte 0x91, 0x06, 0x92, 0x06, 0x8E, 0x06, 0x8D, 0x06, 0x98, 0x06, 0x99, 0x06, 0x96, 0x06, 0x8C, 0x06
	.byte 0xA5, 0x06, 0x90, 0x06, 0x8F, 0x06, 0x9A, 0x06, 0x9B, 0x06, 0x94, 0x06, 0xA7, 0x06, 0xA3, 0x06
	.byte 0xA4, 0x06, 0xA2, 0x06, 0x95, 0x06, 0x9F, 0x06, 0x8B, 0x06, 0xA0, 0x06, 0xA1, 0x06, 0xA8, 0x06
	.byte 0x93, 0x06, 0xA9, 0x06, 0x97, 0x06, 0xA6, 0x06, 0xFF, 0xFF, 0x00, 0x00, 0x8C, 0x00, 0x8D, 0x00
	.byte 0x40, 0x00, 0x0E, 0x00, 0x73, 0x00, 0x8E, 0x02, 0x4C, 0x02, 0x60, 0x01, 0x00, 0x05, 0x87, 0x02
	.byte 0xFE, 0xFF, 0x02, 0x00, 0xBE, 0x05, 0xB5, 0x05, 0x53, 0x06, 0x12, 0x03, 0xE6, 0x00, 0x63, 0x00
	.byte 0x19, 0x01, 0x58, 0x02, 0x57, 0x02, 0x59, 0x02, 0x34, 0x05, 0xA6, 0x03, 0x6D, 0x00, 0x62, 0x00
	.byte 0x91, 0x01, 0x92, 0x01, 0x28, 0x02, 0x29, 0x02, 0x7E, 0x01, 0x86, 0x02, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x58, 0x06, 0x26, 0x04, 0x47, 0x02, 0x46, 0x02, 0x48, 0x02, 0x86, 0x00, 0x1F, 0x02, 0x31, 0x00
	.byte 0x30, 0x00, 0x66, 0x04, 0x03, 0x00, 0x85, 0x05, 0xA0, 0x01, 0x49, 0x01, 0x97, 0x02, 0xEE, 0x01
	.byte 0x83, 0x05, 0x6F, 0x05, 0x47, 0x00, 0x0C, 0x06, 0x20, 0x01, 0x2D, 0x00, 0xA2, 0x02, 0x80, 0x02
	.byte 0x15, 0x05, 0x75, 0x03, 0xBC, 0x06, 0x39, 0x01, 0x7D, 0x02, 0xD7, 0x04, 0x64, 0x00, 0x95, 0x04
	.byte 0xE4, 0x03, 0x75, 0x02, 0x25, 0x00, 0xFF, 0xFF, 0x39, 0x06, 0x42, 0x06, 0x2D, 0x04, 0xB1, 0x00
	.byte 0xEB, 0x04, 0xF7, 0x03, 0x95, 0x06, 0x97, 0x03, 0xBA, 0x03, 0x7F, 0x06, 0x3A, 0x06, 0x77, 0x06
	.byte 0x22, 0x00, 0x1F, 0x00, 0x1D, 0x00, 0x20, 0x00, 0x1E, 0x00, 0x21, 0x00, 0xA7, 0x04, 0x37, 0x03
	.byte 0xF1, 0x02, 0x1C, 0x04, 0x22, 0x01, 0x26, 0x00, 0x23, 0x01, 0xE6, 0x05, 0x73, 0x05, 0xA4, 0x00
	.byte 0x7C, 0x05, 0x30, 0x05, 0x77, 0x05, 0xCF, 0x05, 0xCE, 0x05, 0xBC, 0x04, 0x2D, 0x05, 0x2B, 0x01
	.byte 0xFE, 0xFF, 0x02, 0x00, 0x85, 0x06, 0xEF, 0x05, 0x42, 0x01, 0x12, 0x01, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x7A, 0x05, 0x7D, 0x05, 0x74, 0x05, 0x91, 0x05, 0x88, 0x05, 0x89, 0x05, 0x7B, 0x05, 0x7F, 0x05
	.byte 0x79, 0x05, 0x9A, 0x05, 0x9C, 0x05, 0x92, 0x05, 0x93, 0x05, 0x86, 0x05, 0x8C, 0x05, 0x8D, 0x05
	.byte 0x90, 0x05, 0x99, 0x05, 0x8E, 0x05, 0x97, 0x05, 0x82, 0x05, 0x72, 0x05, 0x9D, 0x05, 0x73, 0x05
	.byte 0x7C, 0x05, 0x77, 0x05, 0x98, 0x05, 0x95, 0x05, 0x87, 0x05, 0x75, 0x05, 0x94, 0x05, 0x84, 0x05
	.byte 0x96, 0x05, 0x78, 0x05, 0x81, 0x05, 0x8A, 0x05, 0x7E, 0x05, 0x8B, 0x05, 0x80, 0x05, 0x8F, 0x05
	.byte 0x85, 0x05, 0x83, 0x05, 0x9B, 0x05, 0x76, 0x05, 0xFF, 0xFF, 0x00, 0x00, 0xA6, 0x05, 0xBB, 0x05
	.byte 0xAA, 0x05, 0xBD, 0x05, 0xA5, 0x05, 0xA7, 0x05, 0xC0, 0x05, 0xB0, 0x05, 0xA4, 0x05, 0xBA, 0x05
	.byte 0xAF, 0x05, 0xAE, 0x05, 0xA2, 0x05, 0xA9, 0x05, 0xB1, 0x05, 0xB2, 0x05, 0xFE, 0xFF, 0x04, 0x00
	.byte 0xC2, 0x05, 0x9F, 0x05, 0xBF, 0x05, 0xC3, 0x05, 0xFE, 0xFF, 0x02, 0x00, 0xBE, 0x05, 0xB5, 0x05
	.byte 0xAD, 0x05, 0xA1, 0x05, 0xB6, 0x05, 0xB7, 0x05, 0xB8, 0x05, 0xAC, 0x05, 0x9E, 0x05, 0xAB, 0x05
	.byte 0xBC, 0x05, 0xC1, 0x05, 0xB4, 0x05, 0xA8, 0x05, 0xA3, 0x05, 0xB9, 0x05, 0xFE, 0xFF, 0x02, 0x00
	.byte 0xB3, 0x05, 0xA0, 0x05, 0xFF, 0xFF, 0x00, 0x00, 0xCC, 0x05, 0xC6, 0x05, 0xEA, 0x05, 0xEC, 0x05
	.byte 0xE4, 0x05, 0xC7, 0x05, 0xE1, 0x05, 0xD9, 0x05, 0xD7, 0x05, 0xE3, 0x05, 0xDB, 0x05, 0xD5, 0x05
	.byte 0xC8, 0x05, 0xED, 0x05, 0xC5, 0x05, 0xD1, 0x05, 0xD3, 0x05, 0xE7, 0x05, 0xEE, 0x05, 0xC9, 0x05
	.byte 0xDA, 0x05, 0xDD, 0x05, 0xD2, 0x05, 0xEB, 0x05, 0xE6, 0x05, 0xCF, 0x05, 0xCE, 0x05, 0xEF, 0x05
	.byte 0xE2, 0x05, 0xDE, 0x05, 0xF3, 0x05, 0xE0, 0x05, 0xD8, 0x05, 0xDF, 0x05, 0xCD, 0x05, 0xDC, 0x05
	.byte 0xF2, 0x05, 0xD6, 0x05, 0xE5, 0x05, 0xF0, 0x05, 0xE9, 0x05, 0xE8, 0x05, 0xD0, 0x05, 0xF1, 0x05
	.byte 0xC4, 0x05, 0xCA, 0x05, 0xFF, 0xFF, 0x00, 0x00, 0xFE, 0xFF, 0x04, 0x00, 0xC2, 0x05, 0x9F, 0x05
	.byte 0xBF, 0x05, 0xC3, 0x05, 0xCA, 0x04, 0xB9, 0x03, 0xC6, 0x02, 0x40, 0x05, 0x33, 0x04, 0x94, 0x02
	.byte 0x30, 0x04, 0xB8, 0x04, 0xD9, 0x03, 0x50, 0x03, 0xF4, 0x05, 0xAE, 0x00, 0xF0, 0x04, 0x3A, 0x01
	.byte 0x62, 0x05, 0xDE, 0x04, 0x6E, 0x06, 0x63, 0x05, 0xAA, 0x03, 0xDA, 0x05, 0x8A, 0x04, 0x6A, 0x06
	.byte 0x88, 0x01, 0x91, 0x04, 0x64, 0x05, 0x20, 0x06, 0xB4, 0x06, 0x9F, 0x03, 0xF4, 0x04, 0xDC, 0x04
	.byte 0x9B, 0x06, 0xE3, 0x04, 0x99, 0x05, 0x6D, 0x05, 0xDA, 0x03, 0x26, 0x05, 0x46, 0x04, 0x73, 0x03
	.byte 0x37, 0x06, 0xDD, 0x05, 0x02, 0x00, 0xFF, 0xFF, 0x70, 0x06, 0x6F, 0x06, 0x65, 0x06, 0x88, 0x06
	.byte 0x5B, 0x06, 0x6D, 0x06, 0x5F, 0x06, 0x61, 0x06, 0x63, 0x06, 0x86, 0x06, 0x5C, 0x06, 0x69, 0x06
	.byte 0x82, 0x06, 0x60, 0x06, 0x6C, 0x06, 0x74, 0x06, 0x7C, 0x06, 0x72, 0x06, 0x75, 0x06, 0x68, 0x06
	.byte 0x7B, 0x06, 0x79, 0x06, 0x66, 0x06, 0x6E, 0x06, 0x6A, 0x06, 0x6B, 0x06, 0x87, 0x06, 0x84, 0x06
	.byte 0x7F, 0x06, 0x77, 0x06, 0x85, 0x06, 0x83, 0x06, 0x5E, 0x06, 0x67, 0x06, 0x7A, 0x06, 0x62, 0x06
	.byte 0x81, 0x06, 0x64, 0x06, 0x76, 0x06, 0x89, 0x06, 0x5D, 0x06, 0x7E, 0x06, 0x7D, 0x06, 0x78, 0x06
	.byte 0x71, 0x06, 0x73, 0x06, 0x80, 0x06, 0xFF, 0xFF, 0x24, 0x59, 0x1A, 0x02, 0x2C, 0x5B, 0x1A, 0x02
	.byte 0xFC, 0x5F, 0x1A, 0x02, 0xE8, 0x5B, 0x1A, 0x02, 0xD4, 0x55, 0x1A, 0x02, 0xD0, 0x59, 0x1A, 0x02
	.byte 0x7C, 0x5A, 0x1A, 0x02, 0x3C, 0x5E, 0x1A, 0x02, 0xA8, 0x54, 0x1A, 0x02, 0x60, 0x51, 0x1A, 0x02
	.byte 0xAC, 0x52, 0x1A, 0x02, 0xD0, 0x56, 0x1A, 0x02, 0xF0, 0x60, 0x1A, 0x02, 0x38, 0x53, 0x1A, 0x02
	.byte 0x2C, 0x52, 0x1A, 0x02, 0x18, 0x5F, 0x1A, 0x02, 0x38, 0x51, 0x1A, 0x02, 0x88, 0x58, 0x1A, 0x02
	.byte 0x64, 0x63, 0x1A, 0x02, 0xA4, 0x5C, 0x1A, 0x02, 0xD2, 0x51, 0x1A, 0x02, 0xF0, 0x52, 0x1A, 0x02
	.byte 0xF0, 0x57, 0x1A, 0x02, 0x32, 0x51, 0x1A, 0x02, 0xAE, 0x51, 0x1A, 0x02, 0x78, 0x51, 0x1A, 0x02
	.byte 0x92, 0x51, 0x1A, 0x02, 0xFD, 0x04, 0x2A, 0x04, 0xE5, 0x02, 0x9A, 0x05, 0x9C, 0x05, 0x7D, 0x04
	.byte 0xE8, 0x06, 0x5B, 0x02, 0x5C, 0x02, 0x85, 0x00, 0xE8, 0x04, 0x05, 0x03, 0xDF, 0x06, 0x17, 0x00
	.byte 0x7D, 0x00, 0xD2, 0x01, 0xC8, 0x04, 0x35, 0x01, 0x72, 0x04, 0x65, 0x00, 0x9B, 0x04, 0x8C, 0x06
	.byte 0xEF, 0x00, 0x5D, 0x02, 0x01, 0x04, 0xC0, 0x02, 0xF4, 0x01, 0x92, 0x05, 0x4B, 0x02, 0x8B, 0x01
	.byte 0x6F, 0x03, 0xA7, 0x03, 0x57, 0x03, 0x7C, 0x06, 0x28, 0x04, 0x72, 0x06, 0xF4, 0x00, 0x7A, 0x04
	.byte 0xBA, 0x06, 0xA5, 0x06, 0xA8, 0x03, 0x4D, 0x02, 0xC4, 0x00, 0x31, 0x06, 0xC0, 0x05, 0x12, 0x02
	.byte 0x75, 0x06, 0xE1, 0x05, 0x66, 0x00, 0x67, 0x00, 0x25, 0x03, 0x27, 0x01, 0xD2, 0x03, 0x81, 0x03
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xCF, 0x06, 0xDE, 0x06, 0xD0, 0x06, 0xF5, 0x06, 0x01, 0x07, 0xF0, 0x06
	.byte 0x09, 0x07, 0xE0, 0x06, 0xDC, 0x06, 0xDA, 0x06, 0xE8, 0x06, 0xDF, 0x06, 0xEA, 0x06, 0xEB, 0x06
	.byte 0xF4, 0x06, 0xE5, 0x06, 0xFD, 0x06, 0xE1, 0x06, 0xFC, 0x06, 0xED, 0x06, 0xFE, 0xFF, 0x02, 0x00
	.byte 0xE2, 0x06, 0xFB, 0x06, 0xF1, 0x06, 0xF6, 0x06, 0xD5, 0x06, 0xFE, 0x06, 0xFE, 0xFF, 0x02, 0x00
	.byte 0xD1, 0x06, 0xF2, 0x06, 0xFA, 0x06, 0x05, 0x07, 0xD4, 0x06, 0xF8, 0x06, 0x03, 0x07, 0x02, 0x07
	.byte 0xF7, 0x06, 0x00, 0x07, 0xE7, 0x06, 0xCE, 0x06, 0xE4, 0x06, 0xE3, 0x06, 0xFE, 0xFF, 0x02, 0x00
	.byte 0x04, 0x07, 0xDD, 0x06, 0xE6, 0x06, 0xD7, 0x06, 0xF3, 0x06, 0xD9, 0x06, 0xF9, 0x06, 0xFF, 0x06
	.byte 0xEF, 0x06, 0xEC, 0x06, 0xDB, 0x06, 0xD3, 0x06, 0x0A, 0x07, 0x07, 0x07, 0xEE, 0x06, 0xD6, 0x06
	.byte 0xFE, 0xFF, 0x02, 0x00, 0x08, 0x07, 0xD8, 0x06, 0xE9, 0x06, 0x06, 0x07, 0xD2, 0x06, 0xFF, 0xFF
	.byte 0x31, 0x01, 0x05, 0x07, 0x60, 0x02, 0x85, 0x02, 0xAB, 0x00, 0x83, 0x00, 0x7C, 0x02, 0xF6, 0x00
	.byte 0x0F, 0x04, 0x7C, 0x01, 0x7D, 0x01, 0x94, 0x06, 0x40, 0x04, 0xE8, 0x03, 0xD6, 0x01, 0x33, 0x05
	.byte 0x41, 0x04, 0xA4, 0x04, 0x1E, 0x02, 0xA6, 0x00, 0xA5, 0x00, 0x19, 0x03, 0xD5, 0x02, 0xB7, 0x02
	.byte 0x8E, 0x05, 0x1E, 0x06, 0xD4, 0x06, 0xD2, 0x05, 0x30, 0x06, 0xA7, 0x06, 0xE7, 0x04, 0x06, 0x03
	.byte 0xCF, 0x01, 0x6C, 0x00, 0xFE, 0x01, 0x55, 0x06, 0x54, 0x05, 0xEC, 0x04, 0xFD, 0x02, 0x6B, 0x06
	.byte 0x59, 0x01, 0x25, 0x02, 0xFA, 0x01, 0xD4, 0x04, 0x08, 0x01, 0x0D, 0x05, 0x5F, 0x02, 0x53, 0x03
	.byte 0xF8, 0x06, 0x0F, 0x01, 0x59, 0x06, 0xAC, 0x01, 0x97, 0x05, 0x0E, 0x01, 0x26, 0x01, 0x1A, 0x03
	.byte 0x87, 0x06, 0xCF, 0x02, 0x76, 0x04, 0xC0, 0x01, 0x09, 0x04, 0x10, 0x01, 0xF9, 0x00, 0xC9, 0x01
	.byte 0x59, 0x04, 0x51, 0x01, 0xB3, 0x03, 0x72, 0x01, 0x94, 0x01, 0x95, 0x01, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x35, 0xCF, 0x19, 0x02, 0xD0, 0x69, 0x1A, 0x02, 0x89, 0x02, 0x00, 0x00, 0xF5, 0xD0, 0x19, 0x02
	.byte 0xF8, 0x61, 0x1A, 0x02, 0xB5, 0x00, 0x00, 0x00, 0xA1, 0xCF, 0x19, 0x02, 0x7C, 0x65, 0x1A, 0x02
	.byte 0x28, 0x02, 0x00, 0x00, 0xF5, 0xD0, 0x19, 0x02, 0x90, 0x53, 0x1A, 0x02, 0x2C, 0x00, 0x00, 0x00
	.byte 0xF5, 0xD0, 0x19, 0x02, 0xF6, 0x51, 0x1A, 0x02, 0x1A, 0x00, 0x00, 0x00, 0x01, 0xD0, 0x19, 0x02
	.byte 0x48, 0x54, 0x1A, 0x02, 0x2E, 0x00, 0x00, 0x00, 0xF5, 0xD0, 0x19, 0x02, 0x44, 0x56, 0x1A, 0x02
	.byte 0x39, 0x00, 0x00, 0x00, 0xF5, 0xD0, 0x19, 0x02, 0xEC, 0x53, 0x1A, 0x02, 0x21, 0x00, 0x00, 0x00
	.byte 0xF5, 0xD0, 0x19, 0x02, 0x6C, 0x5D, 0x1A, 0x02, 0x67, 0x00, 0x00, 0x00, 0xF5, 0xD0, 0x19, 0x02
	.byte 0x08, 0x55, 0x1A, 0x02, 0x2F, 0x00, 0x00, 0x00, 0xF5, 0xD0, 0x19, 0x02, 0x68, 0x52, 0x1A, 0x02
	.byte 0x20, 0x00, 0x00, 0x00, 0x8D, 0xD0, 0x19, 0x02, 0x4A, 0x51, 0x1A, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x07, 0x07, 0x07, 0x40, 0x01, 0x41, 0x01, 0xF2, 0x03, 0x18, 0x06, 0x6D, 0x01, 0x80, 0x06
	.byte 0x08, 0x00, 0xF9, 0x01, 0xC6, 0x04, 0xD8, 0x04, 0x0B, 0x03, 0xC3, 0x02, 0x92, 0x04, 0xEC, 0x03
	.byte 0xE6, 0x03, 0xCF, 0x03, 0xF6, 0x04, 0x9B, 0x05, 0x52, 0x05, 0xC3, 0x03, 0xCD, 0x01, 0x0D, 0x00
	.byte 0xEE, 0x06, 0x46, 0x00, 0x6E, 0x00, 0xFE, 0xFF, 0x02, 0x00, 0xD4, 0x05, 0xF2, 0x05, 0xD6, 0x05
	.byte 0xE5, 0x05, 0x23, 0x02, 0x20, 0x02, 0x86, 0x03, 0x9E, 0x02, 0x54, 0x01, 0x25, 0x01, 0x16, 0x05
	.byte 0xB9, 0x05, 0xD6, 0x06, 0x61, 0x04, 0xAD, 0x06, 0x28, 0x00, 0x9C, 0x04, 0x91, 0x03, 0x9D, 0x02
	.byte 0x16, 0x01, 0x76, 0x05, 0x45, 0x06, 0xC3, 0x06, 0x9D, 0x03, 0xFA, 0x02, 0xCA, 0x00, 0xE6, 0x04
	.byte 0x64, 0x04, 0x60, 0x05, 0x0F, 0x02, 0x50, 0x04, 0xC2, 0x00, 0x14, 0x06, 0x19, 0x06, 0x9A, 0x04
	.byte 0x5A, 0x06, 0x9D, 0x01, 0x10, 0x04, 0xFE, 0xFF, 0x02, 0x00, 0x08, 0x07, 0xD8, 0x06, 0xAF, 0x02
	.byte 0x06, 0x04, 0x09, 0x01, 0x68, 0x01, 0xFF, 0xFF, 0x56, 0x06, 0xEF, 0x02, 0x68, 0x04, 0x1A, 0x00
	.byte 0xF3, 0x00, 0x7C, 0x03, 0xF9, 0x04, 0x18, 0x01, 0x99, 0x01, 0x4E, 0x00, 0x71, 0x03, 0x83, 0x06
	.byte 0x14, 0x00, 0x13, 0x00, 0x68, 0x05, 0x80, 0x01, 0xD7, 0x02, 0xA2, 0x04, 0x99, 0x02, 0x45, 0x05
	.byte 0x5E, 0x06, 0xF5, 0x02, 0xA2, 0x03, 0xFF, 0x02, 0x8D, 0x04, 0xAB, 0x03, 0xF3, 0x05, 0x5D, 0x05
	.byte 0x7A, 0x01, 0xE6, 0x01, 0x79, 0x01, 0x7B, 0x01, 0x67, 0x06, 0x71, 0x01, 0xDF, 0x00, 0xA8, 0x06
	.byte 0x83, 0x02, 0x28, 0x03, 0x8E, 0x04, 0x64, 0x03, 0x43, 0x02, 0xA3, 0x03, 0x3F, 0x03, 0x94, 0x05
	.byte 0x70, 0x00, 0x6F, 0x00, 0xD0, 0x01, 0xBF, 0x01, 0xC1, 0x05, 0x1C, 0x05, 0xBA, 0x02, 0x57, 0x04
	.byte 0xC1, 0x04, 0xEA, 0x03, 0x3B, 0x04, 0x12, 0x05, 0x19, 0x04, 0x29, 0x03, 0x85, 0x03, 0xE4, 0x02
	.byte 0xC9, 0x03, 0x43, 0x04, 0x7A, 0x06, 0x0C, 0x02, 0x9C, 0x03, 0xA7, 0x02, 0x59, 0x03, 0xD7, 0x06
	.byte 0xEF, 0x03, 0x3B, 0x01, 0x97, 0x01, 0xC2, 0x06, 0xDF, 0x01, 0xE5, 0x04, 0x7C, 0x04, 0x73, 0x02
	.byte 0xFF, 0x04, 0xFF, 0xFF, 0xCF, 0x06, 0xCC, 0x01, 0x3F, 0x00, 0x67, 0x01, 0xD3, 0x02, 0x69, 0x02
	.byte 0x7A, 0x05, 0xBF, 0x02, 0x23, 0x03, 0x77, 0x04, 0x8C, 0x04, 0xFB, 0x03, 0x28, 0x05, 0x70, 0x06
	.byte 0xA6, 0x05, 0x47, 0x06, 0xD8, 0x03, 0x3D, 0x03, 0x8E, 0x00, 0x37, 0x05, 0x7B, 0x04, 0x32, 0x01
	.byte 0xED, 0x02, 0xDE, 0x06, 0xD0, 0x06, 0xBE, 0x00, 0xC6, 0x03, 0x19, 0x05, 0x1F, 0x04, 0xF5, 0x06
	.byte 0x41, 0x00, 0x6F, 0x06, 0xBB, 0x05, 0x82, 0x04, 0x52, 0x02, 0x4E, 0x01, 0xA8, 0x01, 0x11, 0x03
	.byte 0x4F, 0x02, 0xB5, 0x00, 0x61, 0x05, 0x82, 0x03, 0x65, 0x06, 0x20, 0x05, 0x01, 0x07, 0xF8, 0x05
	.byte 0x0E, 0x06, 0x5B, 0x01, 0xFE, 0xFF, 0x02, 0x00, 0x88, 0x06, 0x38, 0x05, 0x51, 0x04, 0x14, 0x04
	.byte 0x1D, 0x04, 0x18, 0x00, 0x3B, 0x00, 0xED, 0x01, 0x36, 0x02, 0x37, 0x02, 0x14, 0x05, 0xA8, 0x00
	.byte 0x5C, 0x01, 0xB0, 0x03, 0xC4, 0x03, 0x30, 0x01, 0x90, 0x00, 0x9E, 0x03, 0x00, 0x04, 0xC2, 0x03
	.byte 0x7D, 0x05, 0x52, 0x04, 0x61, 0x03, 0x13, 0x02, 0xAA, 0x05, 0x18, 0x04, 0xCA, 0x02, 0x67, 0x04
	.byte 0xF5, 0x05, 0x2F, 0x04, 0x62, 0x02, 0xE2, 0x01, 0xB8, 0x00, 0x2A, 0x01, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x93, 0x03, 0x45, 0x03, 0x51, 0x06, 0x88, 0x03, 0xC5, 0x03, 0x5A, 0x03, 0xB0, 0x05, 0x53, 0x00
	.byte 0x44, 0x06, 0xA4, 0x05, 0x16, 0x00, 0xB5, 0x03, 0x5D, 0x01, 0xF8, 0x03, 0xA0, 0x00, 0x55, 0x02
	.byte 0x56, 0x02, 0x4C, 0x06, 0xB4, 0x04, 0x93, 0x05, 0xBD, 0x04, 0x86, 0x05, 0x3C, 0x05, 0x8F, 0x04
	.byte 0xC8, 0x01, 0xC5, 0x04, 0x0A, 0x03, 0x34, 0x04, 0x93, 0x04, 0x93, 0x02, 0xDF, 0x02, 0x2E, 0x06
	.byte 0xE6, 0x02, 0xB4, 0x00, 0x3B, 0x03, 0xFE, 0x04, 0x6D, 0x04, 0x74, 0x04, 0xC1, 0x02, 0x38, 0x03
	.byte 0x16, 0x04, 0x57, 0x05, 0x88, 0x00, 0x20, 0x03, 0x3A, 0x04, 0xDF, 0x04, 0x90, 0x03, 0x02, 0x04
	.byte 0xA3, 0x01, 0x47, 0x05, 0x3F, 0x06, 0x9F, 0x02, 0x4A, 0x01, 0xBE, 0x04, 0x27, 0x04, 0x00, 0x03
	.byte 0x94, 0x03, 0x8C, 0x05, 0x96, 0x03, 0x4E, 0x02, 0x17, 0x04, 0x08, 0x05, 0x4D, 0x03, 0x39, 0x05
	.byte 0xD9, 0x05, 0xCD, 0x00, 0x78, 0x04, 0x63, 0x02, 0xDE, 0x03, 0xBA, 0x05, 0xB8, 0x06, 0x51, 0x05
	.byte 0x50, 0x02, 0x44, 0x05, 0xDE, 0x01, 0x98, 0x04, 0x66, 0x03, 0xA2, 0x00, 0xAB, 0x02, 0x5E, 0x03
	.byte 0x26, 0x03, 0xBB, 0x04, 0xBA, 0x04, 0x84, 0x03, 0xFF, 0xFF, 0x00, 0x00, 0xBC, 0x01, 0xAF, 0x05
	.byte 0xDB, 0x01, 0x54, 0x02, 0x13, 0x06, 0xAF, 0x06, 0x39, 0x02, 0xBD, 0x01, 0x1A, 0x01, 0x5C, 0x00
	.byte 0x08, 0x04, 0xA7, 0x01, 0xAC, 0x04, 0x89, 0x02, 0x5E, 0x00, 0x8D, 0x05, 0x4A, 0x00, 0xB2, 0x06
	.byte 0xC3, 0x04, 0xBB, 0x01, 0x56, 0x03, 0x2C, 0x04, 0x0E, 0x02, 0xEA, 0x06, 0xCB, 0x00, 0xE7, 0x01
	.byte 0xAE, 0x05, 0xD7, 0x05, 0xD7, 0x01, 0xB1, 0x04, 0x6A, 0x01, 0xAF, 0x01, 0x15, 0x03, 0xCF, 0x00
	.byte 0xD8, 0x01, 0x2C, 0x00, 0x1F, 0x05, 0xE3, 0x05, 0x2A, 0x00, 0x76, 0x00, 0x37, 0x00, 0x4C, 0x00
	.byte 0x6E, 0x02, 0x6F, 0x02, 0xDB, 0x05, 0x90, 0x05, 0x70, 0x01, 0x90, 0x06, 0x3E, 0x02, 0x40, 0x02
	.byte 0x3F, 0x02, 0x12, 0x06, 0xD2, 0x00, 0xA2, 0x05, 0xA9, 0x05, 0xC7, 0x04, 0x4B, 0x04, 0x94, 0x04
	.byte 0xCC, 0x03, 0x4B, 0x00, 0xF0, 0x03, 0xD5, 0x05, 0x58, 0x00, 0x84, 0x01, 0x7F, 0x01, 0xC0, 0x04
	.byte 0x8F, 0x06, 0xFD, 0x00, 0xB9, 0x02, 0x3A, 0x00, 0xD6, 0x02, 0xAC, 0x03, 0x46, 0x01, 0xAB, 0x06
	.byte 0x62, 0x04, 0x0D, 0x04, 0x98, 0x02, 0x3C, 0x01, 0x45, 0x04, 0x15, 0x02, 0x9C, 0x02, 0x0B, 0x05
	.byte 0xEB, 0x06, 0x82, 0x00, 0x1B, 0x06, 0xF4, 0x03, 0xFF, 0xFF, 0x00, 0x00, 0xBD, 0x05, 0x48, 0x05
	.byte 0x9C, 0x06, 0x74, 0x05, 0x73, 0x01, 0x49, 0x06, 0x57, 0x01, 0x62, 0x01, 0x53, 0x01, 0x18, 0x03
	.byte 0xFC, 0x02, 0x26, 0x02, 0x9B, 0x01, 0x02, 0x06, 0x6E, 0x03, 0x91, 0x05, 0xD1, 0x04, 0x9E, 0x06
	.byte 0x9D, 0x06, 0xBB, 0x06, 0x99, 0x00, 0x66, 0x02, 0x87, 0x03, 0x0B, 0x01, 0x5B, 0x06, 0x0F, 0x00
	.byte 0x5E, 0x02, 0x76, 0x01, 0xB6, 0x00, 0x45, 0x00, 0x47, 0x03, 0x90, 0x04, 0x90, 0x01, 0x1A, 0x06
	.byte 0x01, 0x03, 0x8F, 0x01, 0x5E, 0x05, 0xA0, 0x02, 0x2B, 0x06, 0x71, 0x02, 0xB8, 0x02, 0xBF, 0x03
	.byte 0x09, 0x00, 0x0F, 0x05, 0xB7, 0x03, 0x01, 0x01, 0xF2, 0x00, 0x0A, 0x02, 0xC7, 0x02, 0xDB, 0x03
	.byte 0xB3, 0x04, 0xF0, 0x06, 0x48, 0x06, 0xAE, 0x02, 0x0D, 0x02, 0xB2, 0x04, 0x09, 0x03, 0x27, 0x03
	.byte 0x52, 0x03, 0xC6, 0x05, 0xB6, 0x01, 0x09, 0x07, 0xE0, 0x06, 0x4A, 0x06, 0x6D, 0x06, 0x72, 0x02
	.byte 0xE0, 0x03, 0xA5, 0x05, 0x29, 0x04, 0x74, 0x02, 0x1E, 0x01, 0xA4, 0x03, 0xF6, 0x03, 0xB5, 0x01
	.byte 0xB4, 0x01, 0xA7, 0x05, 0x1D, 0x03, 0xC9, 0x02, 0x96, 0x01, 0xC2, 0x04, 0x4E, 0x04, 0x21, 0x04
	.byte 0xA2, 0x01, 0x01, 0x00, 0xDF, 0x03, 0x97, 0x04, 0x2E, 0x04, 0xD7, 0x03, 0xAB, 0x01, 0x9C, 0x01
	.byte 0x0C, 0x00, 0xEA, 0x05, 0xEC, 0x05, 0xFF, 0xFF, 0x23, 0x06, 0xD3, 0x04, 0x2C, 0x06, 0x86, 0x06
	.byte 0xCC, 0x04, 0x1B, 0x04, 0xEB, 0x01, 0x5C, 0x04, 0x2B, 0x02, 0x2A, 0x02, 0x2F, 0x06, 0x49, 0x02
	.byte 0x4E, 0x05, 0x53, 0x04, 0xFB, 0x02, 0x4D, 0x05, 0x3C, 0x04, 0x79, 0x02, 0x2D, 0x01, 0xE1, 0x00
	.byte 0x5C, 0x06, 0x82, 0x01, 0x69, 0x06, 0x33, 0x06, 0x98, 0x06, 0x4E, 0x03, 0x51, 0x03, 0x57, 0x00
	.byte 0xF6, 0x01, 0xE3, 0x01, 0x27, 0x06, 0x82, 0x06, 0xE7, 0x02, 0x99, 0x06, 0x32, 0x00, 0xBE, 0x02
	.byte 0x60, 0x06, 0x3F, 0x04, 0x6C, 0x06, 0x84, 0x00, 0xAF, 0x03, 0x1E, 0x03, 0x55, 0x00, 0x54, 0x00
	.byte 0xE8, 0x00, 0xED, 0x03, 0xB5, 0x06, 0xB2, 0x02, 0x56, 0x04, 0xA4, 0x02, 0x8F, 0x02, 0xF4, 0x02
	.byte 0x25, 0x05, 0x96, 0x06, 0x3E, 0x04, 0xCB, 0x04, 0x94, 0x00, 0x6D, 0x03, 0xDD, 0x03, 0xE9, 0x03
	.byte 0x95, 0x00, 0x22, 0x04, 0xDE, 0x02, 0x23, 0x04, 0x99, 0x04, 0x25, 0x04, 0xC4, 0x01, 0x93, 0x00
	.byte 0x52, 0x06, 0x16, 0x03, 0xAA, 0x01, 0xA9, 0x01, 0x11, 0x02, 0xCD, 0x02, 0x9D, 0x04, 0xCF, 0x04
	.byte 0x74, 0x06, 0x13, 0x05, 0x60, 0x00, 0x6D, 0x02, 0x24, 0x05, 0x9E, 0x04, 0x44, 0x02, 0x33, 0x00
	.byte 0xCE, 0x00, 0x42, 0x02, 0x78, 0x02, 0x64, 0x01, 0xDD, 0x01, 0x63, 0x01, 0x0D, 0x01, 0x2D, 0x02
	.byte 0x6B, 0x03, 0xFF, 0xFF, 0xAD, 0x02, 0xC1, 0x06, 0xB2, 0x03, 0x14, 0x01, 0xA9, 0x04, 0xB3, 0x02
	.byte 0xFA, 0x03, 0xB0, 0x02, 0x8B, 0x05, 0x80, 0x05, 0x01, 0x06, 0x72, 0x00, 0x1A, 0x05, 0xD1, 0x01
	.byte 0x99, 0x03, 0x80, 0x00, 0x24, 0x06, 0x78, 0x06, 0x32, 0x05, 0xD8, 0x00, 0xB6, 0x03, 0x69, 0x04
	.byte 0x59, 0x05, 0xF0, 0x02, 0x34, 0x06, 0x48, 0x00, 0x49, 0x00, 0xF2, 0x01, 0x71, 0x05, 0x7F, 0x02
	.byte 0x32, 0x06, 0xCD, 0x05, 0xDC, 0x05, 0xFF, 0x06, 0xFC, 0x04, 0x34, 0x03, 0xB1, 0x02, 0x1A, 0x02
	.byte 0xE3, 0x02, 0xE1, 0x02, 0x32, 0x04, 0x95, 0x02, 0xE0, 0x02, 0xE2, 0x02, 0x82, 0x02, 0xCD, 0x03
	.byte 0x14, 0x02, 0x3B, 0x05, 0x34, 0x02, 0xA9, 0x06, 0x10, 0x06, 0xD4, 0x01, 0xAF, 0x00, 0xB0, 0x00
	.byte 0xF6, 0x05, 0xFF, 0x00, 0x44, 0x01, 0x8F, 0x03, 0x81, 0x02, 0x10, 0x05, 0x85, 0x01, 0x9E, 0x00
	.byte 0x71, 0x06, 0x28, 0x06, 0x97, 0x06, 0xE8, 0x02, 0x56, 0x05, 0xC6, 0x01, 0x12, 0x04, 0x04, 0x06
	.byte 0xF1, 0x04, 0x35, 0x06, 0x8F, 0x05, 0x1C, 0x06, 0x08, 0x02, 0x1C, 0x03, 0x48, 0x01, 0x2A, 0x06
	.byte 0x29, 0x06, 0xFC, 0x00, 0x2D, 0x03, 0x9B, 0x03, 0x3D, 0x04, 0xB9, 0x06, 0x33, 0x03, 0x65, 0x01
	.byte 0x03, 0x05, 0x38, 0x02, 0x04, 0x04, 0x70, 0x05, 0x83, 0x01, 0xEF, 0x06, 0xB5, 0x02, 0x7B, 0x03
	.byte 0x17, 0x02, 0x5A, 0x02, 0x9D, 0x00, 0xF8, 0x00, 0xEC, 0x00, 0xFF, 0xFF, 0x47, 0x06, 0xF8, 0x05
	.byte 0x0E, 0x06, 0xF5, 0x05, 0x49, 0x06, 0x02, 0x06, 0x1A, 0x06, 0x2B, 0x06, 0x48, 0x06, 0x4A, 0x06
	.byte 0x0B, 0x06, 0x06, 0x06, 0x2D, 0x06, 0x00, 0x06, 0x1D, 0x06, 0x4D, 0x06, 0x3E, 0x06, 0x08, 0x06
	.byte 0x57, 0x06, 0x23, 0x06, 0x2C, 0x06, 0x2F, 0x06, 0x33, 0x06, 0x27, 0x06, 0x52, 0x06, 0x31, 0x06
	.byte 0x51, 0x06, 0x44, 0x06, 0x4C, 0x06, 0x2E, 0x06, 0x3F, 0x06, 0x13, 0x06, 0x12, 0x06, 0x1B, 0x06
	.byte 0x11, 0x06, 0x41, 0x06, 0x43, 0x06, 0x1F, 0x06, 0x50, 0x06, 0xFB, 0x05, 0xF4, 0x05, 0x20, 0x06
	.byte 0x37, 0x06, 0xF9, 0x05, 0x53, 0x06, 0x1E, 0x06, 0x30, 0x06, 0x55, 0x06, 0x59, 0x06, 0x4B, 0x06
	.byte 0x17, 0x06, 0xFE, 0x05, 0xFC, 0x05, 0x05, 0x06, 0x39, 0x06, 0x42, 0x06, 0x3A, 0x06, 0x3D, 0x06
	.byte 0x36, 0x06, 0x54, 0x06, 0x03, 0x06, 0xF7, 0x05, 0xFF, 0x05, 0x3B, 0x06, 0x4F, 0x06, 0x56, 0x06
	.byte 0x0A, 0x06, 0x09, 0x06, 0x16, 0x06, 0x21, 0x06, 0x07, 0x06, 0x25, 0x06, 0xFA, 0x05, 0x26, 0x06
	.byte 0x0D, 0x06, 0x22, 0x06, 0x40, 0x06, 0x15, 0x06, 0x4E, 0x06, 0x46, 0x06, 0x3C, 0x06, 0x38, 0x06
	.byte 0xFD, 0x05, 0x01, 0x06, 0x24, 0x06, 0x34, 0x06, 0x32, 0x06, 0x10, 0x06, 0xF6, 0x05, 0x28, 0x06
	.byte 0x04, 0x06, 0x35, 0x06, 0x1C, 0x06, 0x2A, 0x06, 0x29, 0x06, 0x58, 0x06, 0x0C, 0x06, 0x18, 0x06
	.byte 0x45, 0x06, 0x14, 0x06, 0x19, 0x06, 0x5A, 0x06, 0x0F, 0x06, 0xFF, 0xFF, 0x11, 0x06, 0xF4, 0x06
	.byte 0x8E, 0x03, 0xC8, 0x05, 0x9A, 0x06, 0xF3, 0x03, 0x68, 0x06, 0xB8, 0x01, 0x7B, 0x06, 0xF6, 0x02
	.byte 0x29, 0x01, 0x58, 0x05, 0x79, 0x06, 0x5D, 0x00, 0x64, 0x02, 0xFE, 0x02, 0xA9, 0x02, 0xAB, 0x04
	.byte 0x55, 0x04, 0x63, 0x03, 0x05, 0x04, 0x50, 0x05, 0xF5, 0x03, 0x54, 0x04, 0x85, 0x04, 0x66, 0x06
	.byte 0x9F, 0x04, 0x13, 0x04, 0xA3, 0x04, 0x77, 0x02, 0x22, 0x05, 0xE5, 0x01, 0x8D, 0x03, 0x53, 0x05
	.byte 0x70, 0x04, 0xE5, 0x06, 0xFD, 0x06, 0xE1, 0x06, 0xFC, 0x06, 0xED, 0x05, 0xFE, 0xFF, 0x02, 0x00
	.byte 0xCB, 0x05, 0xC5, 0x05, 0x9A, 0x03, 0xB1, 0x05, 0xD6, 0x00, 0xFB, 0x01, 0xD1, 0x05, 0xD3, 0x05
	.byte 0x41, 0x06, 0x43, 0x06, 0x86, 0x04, 0xF1, 0x06, 0xFE, 0xFF, 0x02, 0x00, 0xE2, 0x06, 0xFB, 0x06
	.byte 0xED, 0x06, 0xE7, 0x05, 0x79, 0x03, 0x14, 0x03, 0xB2, 0x05, 0xC1, 0x01, 0xC2, 0x01, 0xEE, 0x05
	.byte 0x6B, 0x00, 0x6A, 0x00, 0xED, 0x00, 0xF6, 0x06, 0xD5, 0x06, 0x1F, 0x06, 0xFE, 0x06, 0xC9, 0x05
	.byte 0x50, 0x06, 0xFB, 0x05, 0xAE, 0x01, 0x60, 0x04, 0x43, 0x05, 0xFA, 0x00, 0xA3, 0x00, 0xBB, 0x00
	.byte 0xAA, 0x02, 0xAC, 0x02, 0xA0, 0x04, 0x74, 0x00, 0xE5, 0x00, 0xE4, 0x00, 0xDC, 0x03, 0xF2, 0x04
	.byte 0xFE, 0xFF, 0x02, 0x00, 0xD1, 0x06, 0xF2, 0x06, 0xFA, 0x06, 0x6F, 0x01, 0xAA, 0x04, 0x04, 0x05
	.byte 0x2A, 0x05, 0x7B, 0x02, 0xC0, 0x03, 0xC4, 0x02, 0xCB, 0x02, 0x01, 0x05, 0x2A, 0x03, 0xBC, 0x03
	.byte 0x61, 0x00, 0xEB, 0x02, 0xFF, 0xFF, 0x00, 0x00, 0xA1, 0x01, 0x68, 0x03, 0xE4, 0x01, 0x18, 0x02
	.byte 0x03, 0x02, 0xFF, 0x01, 0x01, 0x02, 0x2E, 0x00, 0x2F, 0x00, 0xDE, 0x05, 0xAB, 0x05, 0x98, 0x05
	.byte 0x3D, 0x06, 0x9F, 0x06, 0x8B, 0x06, 0xF8, 0x01, 0x70, 0x02, 0xFF, 0x03, 0x92, 0x02, 0xCC, 0x02
	.byte 0x17, 0x01, 0x4F, 0x03, 0x35, 0x00, 0xBC, 0x05, 0xDC, 0x02, 0x24, 0x02, 0xAA, 0x06, 0xE7, 0x00
	.byte 0xE9, 0x01, 0x36, 0x06, 0xAC, 0x00, 0x49, 0x05, 0x02, 0x05, 0x12, 0x00, 0x11, 0x00, 0x10, 0x00
	.byte 0x07, 0x02, 0xF3, 0x01, 0x19, 0x00, 0xDD, 0x00, 0xCC, 0x00, 0xB6, 0x02, 0x7F, 0x00, 0x89, 0x01
	.byte 0xA0, 0x06, 0x54, 0x06, 0x03, 0x06, 0xF7, 0x05, 0xF9, 0x03, 0x06, 0x05, 0x37, 0x01, 0xFF, 0x05
	.byte 0x95, 0x05, 0xBF, 0x04, 0xBD, 0x03, 0x17, 0x03, 0x27, 0x05, 0x1A, 0x04, 0xF3, 0x04, 0xD9, 0x02
	.byte 0xB4, 0x02, 0xE2, 0x03, 0x5C, 0x05, 0xA1, 0x06, 0xAC, 0x06, 0xBD, 0x06, 0xBA, 0x00, 0x3C, 0x00
	.byte 0x3D, 0x00, 0x3E, 0x00, 0x4D, 0x00, 0x05, 0x01, 0x3B, 0x06, 0x89, 0x00, 0xE9, 0x00, 0xDA, 0x01
	.byte 0x8D, 0x02, 0x41, 0x03, 0x87, 0x05, 0x24, 0x04, 0x63, 0x04, 0x0C, 0x04, 0x07, 0x04, 0x42, 0x04
	.byte 0x6B, 0x05, 0x75, 0x05, 0x65, 0x03, 0xFB, 0x04, 0x39, 0x00, 0x8A, 0x01, 0xDC, 0x01, 0x4F, 0x06
	.byte 0x42, 0x03, 0xC8, 0x02, 0xFE, 0xFF, 0x02, 0x00, 0xC9, 0x04, 0xEA, 0x02, 0xEE, 0x03, 0x37, 0x04
	.byte 0x03, 0x04, 0x80, 0x03, 0x36, 0x00, 0x65, 0x04, 0xA8, 0x04, 0x21, 0x03, 0x0E, 0x04, 0xF7, 0x00
	.byte 0x17, 0x05, 0xFD, 0x01, 0x70, 0x03, 0xB0, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0x4B, 0x01, 0x4C, 0x01
	.byte 0xE7, 0x03, 0x0B, 0x06, 0x43, 0x01, 0xB1, 0x03, 0x49, 0x04, 0x06, 0x06, 0xC7, 0x01, 0x35, 0x02
	.byte 0x3E, 0x01, 0x0C, 0x01, 0x5F, 0x01, 0x0A, 0x00, 0xFB, 0x00, 0x8A, 0x06, 0x88, 0x05, 0x89, 0x05
	.byte 0x61, 0x02, 0x2D, 0x06, 0x71, 0x00, 0x98, 0x03, 0x4F, 0x04, 0x06, 0x00, 0x58, 0x03, 0x04, 0x00
	.byte 0x05, 0x00, 0xB6, 0x06, 0xB9, 0x01, 0x4C, 0x04, 0xE4, 0x05, 0xA5, 0x01, 0xA4, 0x01, 0x98, 0x00
	.byte 0x86, 0x01, 0x66, 0x01, 0xAA, 0x00, 0xB1, 0x01, 0x7E, 0x04, 0x00, 0x06, 0xEF, 0x04, 0xC7, 0x05
	.byte 0x3D, 0x02, 0x89, 0x04, 0x0C, 0x03, 0x6E, 0x01, 0x1D, 0x06, 0x58, 0x01, 0xEA, 0x04, 0x7F, 0x04
	.byte 0x24, 0x00, 0x23, 0x00, 0xAD, 0x00, 0x5F, 0x06, 0xFE, 0x03, 0xDA, 0x04, 0x5B, 0x00, 0x7E, 0x02
	.byte 0x33, 0x02, 0x75, 0x04, 0x91, 0x06, 0xDD, 0x04, 0xB0, 0x06, 0x9F, 0x01, 0x00, 0x01, 0x7B, 0x05
	.byte 0x90, 0x02, 0x4D, 0x06, 0x92, 0x06, 0xDB, 0x04, 0x3E, 0x06, 0xF9, 0x02, 0xE9, 0x02, 0x16, 0x02
	.byte 0xB7, 0x06, 0x10, 0x03, 0x4B, 0x05, 0x08, 0x06, 0x2C, 0x03, 0x3C, 0x03, 0x8E, 0x06, 0x61, 0x06
	.byte 0x0B, 0x04, 0x55, 0x01, 0xDE, 0x00, 0xCE, 0x03, 0x22, 0x02, 0xA6, 0x04, 0x3E, 0x03, 0xD0, 0x02
	.byte 0x7F, 0x05, 0xE3, 0x03, 0x24, 0x03, 0x5A, 0x01, 0x98, 0x01, 0x56, 0x01, 0x57, 0x06, 0xE8, 0x01
	.byte 0xDC, 0x06, 0x79, 0x05, 0xC5, 0x01, 0xA9, 0x00, 0x9F, 0x00, 0x7A, 0x03, 0x44, 0x04, 0x7E, 0x03
	.byte 0xBE, 0x03, 0x5A, 0x04, 0x2E, 0x02, 0x67, 0x02, 0x65, 0x02, 0x68, 0x00, 0x3A, 0x03, 0x4F, 0x05
	.byte 0x9B, 0x02, 0x8D, 0x06, 0x05, 0x05, 0xDA, 0x06, 0x63, 0x06, 0x9B, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x44, 0x00, 0x4B, 0x06, 0x43, 0x00, 0x42, 0x00, 0x43, 0x03, 0x17, 0x06, 0xF0, 0x00, 0xDB, 0x00
	.byte 0xE5, 0x03, 0x69, 0x05, 0xA1, 0x03, 0x2F, 0x05, 0x6A, 0x04, 0x81, 0x00, 0xF5, 0x04, 0x7E, 0x00
	.byte 0x5B, 0x04, 0xD3, 0x01, 0x51, 0x00, 0x47, 0x04, 0x52, 0x00, 0xF7, 0x04, 0x15, 0x04, 0xCE, 0x01
	.byte 0x6A, 0x03, 0xA3, 0x06, 0x28, 0x01, 0xD9, 0x01, 0xEA, 0x01, 0x76, 0x02, 0x36, 0x01, 0x38, 0x00
	.byte 0xE2, 0x00, 0xCA, 0x01, 0x2C, 0x02, 0xB3, 0x00, 0xB7, 0x00, 0x69, 0x00, 0x03, 0x01, 0x0C, 0x05
	.byte 0x1C, 0x01, 0x82, 0x05, 0x72, 0x05, 0x2F, 0x01, 0xAD, 0x05, 0x60, 0x03, 0x34, 0x01, 0xEC, 0x02
	.byte 0x33, 0x01, 0xEB, 0x05, 0x0A, 0x04, 0xD4, 0x02, 0x6C, 0x03, 0xA5, 0x02, 0x9A, 0x00, 0x91, 0x02
	.byte 0x88, 0x02, 0x92, 0x03, 0x34, 0x00, 0xE1, 0x01, 0xA4, 0x06, 0x84, 0x06, 0x78, 0x01, 0xFC, 0x03
	.byte 0x74, 0x03, 0xCB, 0x03, 0x77, 0x01, 0x0B, 0x00, 0xC1, 0x03, 0x02, 0x03, 0x97, 0x00, 0x96, 0x00
	.byte 0x6B, 0x02, 0x6C, 0x02, 0x06, 0x01, 0x5C, 0x03, 0x5E, 0x01, 0xF1, 0x00, 0xB7, 0x01, 0xF2, 0x02
	.byte 0x3C, 0x02, 0x36, 0x03, 0xF7, 0x02, 0x38, 0x01, 0x07, 0x05, 0xF1, 0x03, 0x7F, 0x03, 0x03, 0x03
	.byte 0x39, 0x04, 0xC8, 0x00, 0xAD, 0x01, 0xA2, 0x06, 0xC2, 0x02, 0xB4, 0x03, 0x03, 0x07, 0x35, 0x05
	.byte 0x92, 0x00, 0xFE, 0x05, 0x87, 0x01, 0x5A, 0x05, 0x78, 0x03, 0x76, 0x03, 0xA1, 0x05, 0x9E, 0x01
	.byte 0x1B, 0x05, 0x9D, 0x05, 0xFC, 0x05, 0x66, 0x05, 0xB6, 0x05, 0x7A, 0x00, 0xB7, 0x05, 0x36, 0x04
	.byte 0xD6, 0x03, 0x02, 0x01, 0xE1, 0x03, 0x49, 0x03, 0xB8, 0x03, 0x02, 0x07, 0xF7, 0x06, 0x59, 0x00
	.byte 0xBE, 0x06, 0x55, 0x05, 0x46, 0x05, 0x65, 0x05, 0xBE, 0x01, 0x05, 0x02, 0xC6, 0x00, 0x06, 0x02
	.byte 0x05, 0x06, 0xBF, 0x06, 0xB8, 0x05, 0xFF, 0xFF, 0x28, 0x05, 0x37, 0x05, 0x19, 0x05, 0x61, 0x05
	.byte 0x20, 0x05, 0x38, 0x05, 0x14, 0x05, 0x48, 0x05, 0xD1, 0x04, 0x5E, 0x05, 0x0F, 0x05, 0xC2, 0x04
	.byte 0xEF, 0x04, 0xEA, 0x04, 0xDA, 0x04, 0xDD, 0x04, 0xDB, 0x04, 0x4B, 0x05, 0x4F, 0x05, 0x05, 0x05
	.byte 0xD3, 0x04, 0xCC, 0x04, 0x4E, 0x05, 0x4D, 0x05, 0x25, 0x05, 0xCB, 0x04, 0xCF, 0x04, 0x13, 0x05
	.byte 0x24, 0x05, 0xFD, 0x04, 0xE8, 0x04, 0xC8, 0x04, 0xBD, 0x04, 0x3C, 0x05, 0xC5, 0x04, 0xFE, 0x04
	.byte 0x57, 0x05, 0xDF, 0x04, 0x47, 0x05, 0xBE, 0x04, 0x08, 0x05, 0x39, 0x05, 0x51, 0x05, 0x44, 0x05
	.byte 0xC3, 0x04, 0x1F, 0x05, 0xC7, 0x04, 0xC0, 0x04, 0x0B, 0x05, 0x58, 0x05, 0x50, 0x05, 0x22, 0x05
	.byte 0x53, 0x05, 0x43, 0x05, 0xF2, 0x04, 0x04, 0x05, 0x2A, 0x05, 0x01, 0x05, 0xCA, 0x04, 0x40, 0x05
	.byte 0xF0, 0x04, 0x62, 0x05, 0xDE, 0x04, 0x63, 0x05, 0x64, 0x05, 0xF4, 0x04, 0xDC, 0x04, 0xE3, 0x04
	.byte 0x6D, 0x05, 0x26, 0x05, 0x67, 0x05, 0x00, 0x05, 0x34, 0x05, 0x33, 0x05, 0xE7, 0x04, 0x54, 0x05
	.byte 0xEC, 0x04, 0xD4, 0x04, 0x0D, 0x05, 0x69, 0x05, 0x2F, 0x05, 0xF5, 0x04, 0xF7, 0x04, 0x0C, 0x05
	.byte 0x07, 0x05, 0x35, 0x05, 0x5A, 0x05, 0x1B, 0x05, 0x66, 0x05, 0x55, 0x05, 0x46, 0x05, 0x65, 0x05
	.byte 0xEB, 0x04, 0x30, 0x05, 0xBC, 0x04, 0x2D, 0x05, 0xD9, 0x04, 0x5B, 0x05, 0x0E, 0x05, 0xE1, 0x04
	.byte 0x49, 0x05, 0x02, 0x05, 0x06, 0x05, 0xBF, 0x04, 0x27, 0x05, 0xF3, 0x04, 0x5C, 0x05, 0x6B, 0x05
	.byte 0xFB, 0x04, 0xC9, 0x04, 0x17, 0x05, 0x2C, 0x05, 0xF9, 0x04, 0x68, 0x05, 0x45, 0x05, 0x5D, 0x05
	.byte 0x1C, 0x05, 0xC1, 0x04, 0x12, 0x05, 0xE5, 0x04, 0xFF, 0x04, 0x6C, 0x05, 0x5F, 0x05, 0xFA, 0x04
	.byte 0xD5, 0x04, 0x6A, 0x05, 0x3E, 0x05, 0xED, 0x04, 0xE4, 0x04, 0x0A, 0x05, 0x4A, 0x05, 0x18, 0x05
	.byte 0xE0, 0x04, 0x23, 0x05, 0x29, 0x05, 0x3D, 0x05, 0x2E, 0x05, 0x1E, 0x05, 0x42, 0x05, 0x2B, 0x05
	.byte 0x41, 0x05, 0xF8, 0x04, 0xD0, 0x04, 0x31, 0x05, 0xD6, 0x04, 0x1D, 0x05, 0xC4, 0x04, 0xCE, 0x04
	.byte 0x09, 0x05, 0x3F, 0x05, 0xD2, 0x04, 0xE2, 0x04, 0x36, 0x05, 0x11, 0x05, 0xEE, 0x04, 0xE9, 0x04
	.byte 0x1A, 0x05, 0x32, 0x05, 0x59, 0x05, 0x71, 0x05, 0xFC, 0x04, 0x3B, 0x05, 0x10, 0x05, 0x56, 0x05
	.byte 0xF1, 0x04, 0x03, 0x05, 0x70, 0x05, 0x3A, 0x05, 0x21, 0x05, 0x4C, 0x05, 0x6F, 0x05, 0x15, 0x05
	.byte 0xD7, 0x04, 0xC6, 0x04, 0xD8, 0x04, 0xF6, 0x04, 0x52, 0x05, 0x16, 0x05, 0xE6, 0x04, 0x60, 0x05
	.byte 0x6E, 0x05, 0xFF, 0xFF, 0x2E, 0x01, 0x69, 0x03, 0xA1, 0x04, 0x62, 0x06, 0x67, 0x03, 0x75, 0x01
	.byte 0xF7, 0x01, 0xA8, 0x02, 0x6C, 0x05, 0x27, 0x02, 0x5F, 0x05, 0x1B, 0x00, 0x1C, 0x00, 0x55, 0x03
	.byte 0xFA, 0x04, 0xD4, 0x03, 0xD5, 0x04, 0x6A, 0x05, 0x81, 0x06, 0x1B, 0x02, 0x4A, 0x02, 0x83, 0x04
	.byte 0x44, 0x03, 0xFE, 0x00, 0x0A, 0x06, 0x09, 0x06, 0xD4, 0x00, 0x21, 0x02, 0x30, 0x02, 0x2F, 0x02
	.byte 0x3E, 0x05, 0x96, 0x02, 0xF3, 0x02, 0x7B, 0x00, 0x75, 0x00, 0x77, 0x00, 0x6C, 0x01, 0xAD, 0x04
	.byte 0xAE, 0x03, 0x1E, 0x04, 0x5D, 0x04, 0x11, 0x01, 0x56, 0x00, 0xE0, 0x05, 0xD1, 0x02, 0x19, 0x02
	.byte 0x04, 0x03, 0x84, 0x05, 0xA1, 0x00, 0xED, 0x04, 0x96, 0x05, 0xF1, 0x01, 0x16, 0x06, 0xF0, 0x01
	.byte 0x50, 0x01, 0x1C, 0x02, 0x83, 0x03, 0x31, 0x04, 0x5F, 0x04, 0xD1, 0x03, 0x35, 0x04, 0xE4, 0x04
	.byte 0x3F, 0x01, 0x2B, 0x03, 0xEC, 0x01, 0x24, 0x01, 0x0A, 0x05, 0xD5, 0x03, 0x4A, 0x05, 0x74, 0x01
	.byte 0x18, 0x05, 0x5A, 0x00, 0xA6, 0x01, 0x84, 0x04, 0x68, 0x02, 0xE0, 0x04, 0x9A, 0x01, 0x88, 0x04
	.byte 0x13, 0x01, 0x93, 0x01, 0xEB, 0x03, 0x21, 0x06, 0x07, 0x06, 0x1D, 0x01, 0xD5, 0x00, 0x61, 0x01
	.byte 0xB4, 0x05, 0xF3, 0x06, 0x31, 0x02, 0xD0, 0x03, 0x0A, 0x01, 0xCA, 0x03, 0x04, 0x02, 0x00, 0x02
	.byte 0x02, 0x02, 0xFE, 0xFF, 0x02, 0x00, 0x64, 0x06, 0x23, 0x05, 0x79, 0x04, 0xBB, 0x02, 0xB3, 0x06
	.byte 0xA8, 0x05, 0xE3, 0x00, 0x32, 0x03, 0x76, 0x06, 0x29, 0x05, 0xA9, 0x03, 0xBC, 0x00, 0x2C, 0x01
	.byte 0xC3, 0x01, 0x0E, 0x03, 0xB3, 0x01, 0x1B, 0x03, 0x87, 0x04, 0xD3, 0x03, 0xBB, 0x03, 0x21, 0x01
	.byte 0x1F, 0x01, 0xA1, 0x02, 0x2F, 0x03, 0xDB, 0x02, 0x62, 0x03, 0x50, 0x00, 0xC7, 0x00, 0x4F, 0x00
	.byte 0x3D, 0x05, 0x08, 0x03, 0x48, 0x03, 0x6E, 0x04, 0xDA, 0x00, 0x6B, 0x04, 0xEB, 0x00, 0x95, 0x03
	.byte 0x89, 0x06, 0x07, 0x03, 0xF8, 0x02, 0xEE, 0x00, 0xAD, 0x03, 0xD7, 0x00, 0xD9, 0x06, 0x2E, 0x05
	.byte 0xEF, 0x01, 0x39, 0x03, 0x8F, 0x00, 0xF9, 0x06, 0x69, 0x01, 0xCB, 0x01, 0x1E, 0x05, 0x42, 0x05
	.byte 0xD1, 0x00, 0x73, 0x04, 0x13, 0x03, 0x25, 0x06, 0xD8, 0x02, 0x2B, 0x05, 0x41, 0x05, 0x41, 0x02
	.byte 0x52, 0x01, 0xFA, 0x05, 0x26, 0x06, 0xBD, 0x02, 0xD8, 0x05, 0xDF, 0x05, 0xF8, 0x04, 0x58, 0x04
	.byte 0x5D, 0x03, 0x15, 0x00, 0x0D, 0x06, 0xD0, 0x04, 0x6B, 0x01, 0x35, 0x03, 0x0F, 0x03, 0x4B, 0x03
	.byte 0xAE, 0x06, 0xA7, 0x00, 0x47, 0x01, 0x78, 0x05, 0xBA, 0x01, 0x40, 0x03, 0x8B, 0x03, 0x22, 0x03
	.byte 0x45, 0x01, 0x1F, 0x03, 0x22, 0x06, 0x40, 0x06, 0x07, 0x00, 0x31, 0x05, 0xEA, 0x00, 0x8E, 0x01
	.byte 0x8D, 0x01, 0x8C, 0x01, 0x79, 0x00, 0x78, 0x00, 0xD6, 0x04, 0x1D, 0x05, 0x4A, 0x04, 0xA5, 0x04
	.byte 0xC4, 0x04, 0xD0, 0x00, 0x5F, 0x03, 0xCE, 0x04, 0x09, 0x05, 0x8A, 0x03, 0xA3, 0x02, 0x48, 0x04
	.byte 0x15, 0x06, 0x80, 0x04, 0x3F, 0x05, 0x6C, 0x04, 0x4E, 0x06, 0xFC, 0x01, 0x5D, 0x06, 0x81, 0x05
	.byte 0xD2, 0x02, 0xDD, 0x02, 0x8A, 0x05, 0x31, 0x03, 0x96, 0x04, 0x46, 0x06, 0x3C, 0x06, 0x6A, 0x02
	.byte 0xB2, 0x01, 0xDA, 0x02, 0xD2, 0x04, 0xCE, 0x02, 0x30, 0x03, 0x7E, 0x06, 0xB1, 0x06, 0x11, 0x04
	.byte 0xE2, 0x04, 0xB9, 0x00, 0xF5, 0x00, 0x38, 0x06, 0xC0, 0x00, 0xBF, 0x00, 0x7D, 0x03, 0x2E, 0x03
	.byte 0x36, 0x05, 0xA0, 0x03, 0xBC, 0x02, 0xC5, 0x02, 0x7D, 0x06, 0x7E, 0x05, 0x1B, 0x01, 0x4D, 0x01
	.byte 0x1D, 0x02, 0x5B, 0x03, 0x8C, 0x03, 0x3D, 0x01, 0x04, 0x01, 0x45, 0x02, 0x11, 0x05, 0x46, 0x03
	.byte 0xFD, 0x05, 0x72, 0x03, 0x15, 0x01, 0x0D, 0x03, 0xEE, 0x04, 0xDC, 0x00, 0x2B, 0x04, 0x10, 0x02
	.byte 0x9A, 0x02, 0xE9, 0x04, 0x71, 0x04, 0x77, 0x03, 0x93, 0x06, 0xFF, 0xFF, 0xD3, 0x02, 0xBF, 0x02
	.byte 0x23, 0x03, 0x77, 0x04, 0x8C, 0x04, 0xFB, 0x03, 0xD8, 0x03, 0x3D, 0x03, 0x7B, 0x04, 0xED, 0x02
	.byte 0xC6, 0x03, 0x1F, 0x04, 0x82, 0x04, 0x11, 0x03, 0x82, 0x03, 0x51, 0x04, 0x14, 0x04, 0x1D, 0x04
	.byte 0xB0, 0x03, 0xC4, 0x03, 0x9E, 0x03, 0x00, 0x04, 0xC2, 0x03, 0x52, 0x04, 0x61, 0x03, 0x18, 0x04
	.byte 0xCA, 0x02, 0x67, 0x04, 0x2F, 0x04, 0x18, 0x03, 0xFC, 0x02, 0x6E, 0x03, 0x87, 0x03, 0x47, 0x03
	.byte 0x90, 0x04, 0x01, 0x03, 0xA0, 0x02, 0xB8, 0x02, 0xBF, 0x03, 0xB7, 0x03, 0xC7, 0x02, 0xDB, 0x03
	.byte 0xB3, 0x04, 0xAE, 0x02, 0xB2, 0x04, 0x09, 0x03, 0x27, 0x03, 0x52, 0x03, 0xE0, 0x03, 0x29, 0x04
	.byte 0xA4, 0x03, 0xF6, 0x03, 0x1D, 0x03, 0xC9, 0x02, 0x4E, 0x04, 0x21, 0x04, 0xDF, 0x03, 0x97, 0x04
	.byte 0x2E, 0x04, 0xD7, 0x03, 0xE7, 0x03, 0xB1, 0x03, 0x49, 0x04, 0x98, 0x03, 0x4F, 0x04, 0x58, 0x03
	.byte 0x4C, 0x04, 0x7E, 0x04, 0x89, 0x04, 0x0C, 0x03, 0x7F, 0x04, 0xFE, 0x03, 0x75, 0x04, 0x90, 0x02
	.byte 0xF9, 0x02, 0xE9, 0x02, 0x10, 0x03, 0x2C, 0x03, 0x3C, 0x03, 0x0B, 0x04, 0xCE, 0x03, 0xA6, 0x04
	.byte 0x3E, 0x03, 0xD0, 0x02, 0xE3, 0x03, 0x24, 0x03, 0x7A, 0x03, 0x44, 0x04, 0x7E, 0x03, 0xBE, 0x03
	.byte 0x5A, 0x04, 0x3A, 0x03, 0x9B, 0x02, 0x1B, 0x04, 0x5C, 0x04, 0x53, 0x04, 0xFB, 0x02, 0x3C, 0x04
	.byte 0x4E, 0x03, 0x51, 0x03, 0xE7, 0x02, 0xBE, 0x02, 0x3F, 0x04, 0xAF, 0x03, 0x1E, 0x03, 0xED, 0x03
	.byte 0xB2, 0x02, 0x56, 0x04, 0xA4, 0x02, 0x8F, 0x02, 0xF4, 0x02, 0x3E, 0x04, 0x6D, 0x03, 0xDD, 0x03
	.byte 0xE9, 0x03, 0x22, 0x04, 0xDE, 0x02, 0x23, 0x04, 0x99, 0x04, 0x25, 0x04, 0x16, 0x03, 0xCD, 0x02
	.byte 0x9D, 0x04, 0x9E, 0x04, 0x6B, 0x03, 0x2A, 0x04, 0xE5, 0x02, 0x7D, 0x04, 0x05, 0x03, 0x72, 0x04
	.byte 0x9B, 0x04, 0x01, 0x04, 0xC0, 0x02, 0x6F, 0x03, 0xA7, 0x03, 0x57, 0x03, 0x28, 0x04, 0x7A, 0x04
	.byte 0xA8, 0x03, 0x25, 0x03, 0xD2, 0x03, 0x81, 0x03, 0x93, 0x03, 0x45, 0x03, 0x88, 0x03, 0xC5, 0x03
	.byte 0x5A, 0x03, 0xB5, 0x03, 0xF8, 0x03, 0xB4, 0x04, 0x8F, 0x04, 0x0A, 0x03, 0x34, 0x04, 0x93, 0x04
	.byte 0x93, 0x02, 0xDF, 0x02, 0xE6, 0x02, 0x3B, 0x03, 0x6D, 0x04, 0x74, 0x04, 0xC1, 0x02, 0x38, 0x03
	.byte 0x16, 0x04, 0x20, 0x03, 0x3A, 0x04, 0x90, 0x03, 0x02, 0x04, 0x9F, 0x02, 0x27, 0x04, 0x00, 0x03
	.byte 0x94, 0x03, 0x96, 0x03, 0x17, 0x04, 0x4D, 0x03, 0x78, 0x04, 0xDE, 0x03, 0x98, 0x04, 0x66, 0x03
	.byte 0xAB, 0x02, 0x5E, 0x03, 0x26, 0x03, 0xBB, 0x04, 0xBA, 0x04, 0x84, 0x03, 0x08, 0x04, 0xAC, 0x04
	.byte 0x56, 0x03, 0x2C, 0x04, 0xB1, 0x04, 0x15, 0x03, 0x4B, 0x04, 0x94, 0x04, 0xCC, 0x03, 0xF0, 0x03
	.byte 0xB9, 0x02, 0xD6, 0x02, 0xAC, 0x03, 0x62, 0x04, 0x0D, 0x04, 0x98, 0x02, 0x45, 0x04, 0x9C, 0x02
	.byte 0xF4, 0x03, 0x8E, 0x03, 0xF3, 0x03, 0xF6, 0x02, 0xFE, 0x02, 0xA9, 0x02, 0xAB, 0x04, 0x55, 0x04
	.byte 0x63, 0x03, 0x05, 0x04, 0xF5, 0x03, 0x54, 0x04, 0x85, 0x04, 0x9F, 0x04, 0x13, 0x04, 0xA3, 0x04
	.byte 0x8D, 0x03, 0x70, 0x04, 0x9A, 0x03, 0x86, 0x04, 0x79, 0x03, 0x14, 0x03, 0x60, 0x04, 0xAA, 0x02
	.byte 0xAC, 0x02, 0xA0, 0x04, 0xDC, 0x03, 0xAA, 0x04, 0xC0, 0x03, 0xC4, 0x02, 0xCB, 0x02, 0x2A, 0x03
	.byte 0xBC, 0x03, 0xEB, 0x02, 0xB9, 0x03, 0xC6, 0x02, 0x33, 0x04, 0x94, 0x02, 0x30, 0x04, 0xB8, 0x04
	.byte 0xD9, 0x03, 0x50, 0x03, 0xAA, 0x03, 0x8A, 0x04, 0x91, 0x04, 0x9F, 0x03, 0xDA, 0x03, 0x46, 0x04
	.byte 0x73, 0x03, 0x4D, 0x04, 0xA6, 0x02, 0x8E, 0x02, 0x12, 0x03, 0xA6, 0x03, 0x0F, 0x04, 0x40, 0x04
	.byte 0xE8, 0x03, 0x41, 0x04, 0xA4, 0x04, 0x19, 0x03, 0xD5, 0x02, 0xB7, 0x02, 0x06, 0x03, 0xFD, 0x02
	.byte 0x53, 0x03, 0x1A, 0x03, 0xCF, 0x02, 0x76, 0x04, 0x09, 0x04, 0x59, 0x04, 0xB3, 0x03, 0x43, 0x03
	.byte 0xE5, 0x03, 0xA1, 0x03, 0x6A, 0x04, 0x5B, 0x04, 0x47, 0x04, 0x15, 0x04, 0x6A, 0x03, 0x60, 0x03
	.byte 0xEC, 0x02, 0x0A, 0x04, 0xD4, 0x02, 0x6C, 0x03, 0xA5, 0x02, 0x91, 0x02, 0x92, 0x03, 0xFC, 0x03
	.byte 0x74, 0x03, 0xCB, 0x03, 0xC1, 0x03, 0x02, 0x03, 0x5C, 0x03, 0xF2, 0x02, 0x36, 0x03, 0xF7, 0x02
	.byte 0xF1, 0x03, 0x7F, 0x03, 0x03, 0x03, 0x39, 0x04, 0xC2, 0x02, 0xB4, 0x03, 0x78, 0x03, 0x76, 0x03
	.byte 0x36, 0x04, 0xD6, 0x03, 0xE1, 0x03, 0x49, 0x03, 0xB8, 0x03, 0x2D, 0x04, 0xF7, 0x03, 0x97, 0x03
	.byte 0xBA, 0x03, 0xA7, 0x04, 0x37, 0x03, 0xF1, 0x02, 0x1C, 0x04, 0x4A, 0x03, 0xC8, 0x03, 0x5E, 0x04
	.byte 0x54, 0x03, 0xC7, 0x03, 0x68, 0x03, 0xFF, 0x03, 0x92, 0x02, 0xCC, 0x02, 0x4F, 0x03, 0xDC, 0x02
	.byte 0xB6, 0x02, 0xF9, 0x03, 0xBD, 0x03, 0x17, 0x03, 0x1A, 0x04, 0xD9, 0x02, 0xB4, 0x02, 0xE2, 0x03
	.byte 0x8D, 0x02, 0x41, 0x03, 0x24, 0x04, 0x63, 0x04, 0x0C, 0x04, 0x07, 0x04, 0x42, 0x04, 0x65, 0x03
	.byte 0x42, 0x03, 0xC8, 0x02, 0xEA, 0x02, 0xEE, 0x03, 0x37, 0x04, 0x03, 0x04, 0x80, 0x03, 0x65, 0x04
	.byte 0xA8, 0x04, 0x21, 0x03, 0x0E, 0x04, 0x70, 0x03, 0x8B, 0x04, 0xEE, 0x02, 0x81, 0x04, 0x6F, 0x04
	.byte 0xEF, 0x02, 0x68, 0x04, 0x7C, 0x03, 0x71, 0x03, 0xD7, 0x02, 0xA2, 0x04, 0x99, 0x02, 0xF5, 0x02
	.byte 0xA2, 0x03, 0xFF, 0x02, 0x8D, 0x04, 0xAB, 0x03, 0x28, 0x03, 0x8E, 0x04, 0x64, 0x03, 0xA3, 0x03
	.byte 0x3F, 0x03, 0xBA, 0x02, 0x57, 0x04, 0xEA, 0x03, 0x3B, 0x04, 0x19, 0x04, 0x29, 0x03, 0x85, 0x03
	.byte 0xE4, 0x02, 0xC9, 0x03, 0x43, 0x04, 0x9C, 0x03, 0xA7, 0x02, 0x59, 0x03, 0xEF, 0x03, 0x7C, 0x04
	.byte 0x69, 0x03, 0xA1, 0x04, 0x67, 0x03, 0xA8, 0x02, 0x55, 0x03, 0xD4, 0x03, 0x83, 0x04, 0x44, 0x03
	.byte 0x96, 0x02, 0xF3, 0x02, 0xAD, 0x04, 0xAE, 0x03, 0x1E, 0x04, 0x5D, 0x04, 0xD1, 0x02, 0x04, 0x03
	.byte 0x83, 0x03, 0x31, 0x04, 0x5F, 0x04, 0xD1, 0x03, 0x35, 0x04, 0x2B, 0x03, 0xD5, 0x03, 0x84, 0x04
	.byte 0x88, 0x04, 0xEB, 0x03, 0xD0, 0x03, 0xCA, 0x03, 0x79, 0x04, 0xBB, 0x02, 0x32, 0x03, 0xA9, 0x03
	.byte 0x0E, 0x03, 0x1B, 0x03, 0x87, 0x04, 0xD3, 0x03, 0xBB, 0x03, 0xA1, 0x02, 0x2F, 0x03, 0xDB, 0x02
	.byte 0x62, 0x03, 0x08, 0x03, 0x48, 0x03, 0x6E, 0x04, 0x6B, 0x04, 0x95, 0x03, 0x07, 0x03, 0xF8, 0x02
	.byte 0xAD, 0x03, 0x39, 0x03, 0x73, 0x04, 0x13, 0x03, 0xD8, 0x02, 0xBD, 0x02, 0x58, 0x04, 0x5D, 0x03
	.byte 0x35, 0x03, 0x0F, 0x03, 0x4B, 0x03, 0x40, 0x03, 0x8B, 0x03, 0x22, 0x03, 0x1F, 0x03, 0x4A, 0x04
	.byte 0xA5, 0x04, 0x5F, 0x03, 0x8A, 0x03, 0xA3, 0x02, 0x48, 0x04, 0x80, 0x04, 0x6C, 0x04, 0xD2, 0x02
	.byte 0xDD, 0x02, 0x31, 0x03, 0x96, 0x04, 0xDA, 0x02, 0xCE, 0x02, 0x30, 0x03, 0x11, 0x04, 0x7D, 0x03
	.byte 0x2E, 0x03, 0xA0, 0x03, 0xBC, 0x02, 0xC5, 0x02, 0x5B, 0x03, 0x8C, 0x03, 0x46, 0x03, 0x72, 0x03
	.byte 0x0D, 0x03, 0x2B, 0x04, 0x9A, 0x02, 0x71, 0x04, 0x77, 0x03, 0xAD, 0x02, 0xB2, 0x03, 0xA9, 0x04
	.byte 0xB3, 0x02, 0xFA, 0x03, 0xB0, 0x02, 0x99, 0x03, 0xB6, 0x03, 0x69, 0x04, 0xF0, 0x02, 0x34, 0x03
	.byte 0xB1, 0x02, 0xE3, 0x02, 0xE1, 0x02, 0x32, 0x04, 0x95, 0x02, 0xE0, 0x02, 0xE2, 0x02, 0xCD, 0x03
	.byte 0x8F, 0x03, 0xE8, 0x02, 0x12, 0x04, 0x1C, 0x03, 0x2D, 0x03, 0x9B, 0x03, 0x3D, 0x04, 0x33, 0x03
	.byte 0x04, 0x04, 0xB5, 0x02, 0x7B, 0x03, 0x89, 0x03, 0xFD, 0x03, 0x26, 0x04, 0x66, 0x04, 0x97, 0x02
	.byte 0xA2, 0x02, 0x75, 0x03, 0x95, 0x04, 0xE4, 0x03, 0xF2, 0x03, 0x0B, 0x03, 0xC3, 0x02, 0x92, 0x04
	.byte 0xEC, 0x03, 0xE6, 0x03, 0xCF, 0x03, 0xC3, 0x03, 0x86, 0x03, 0x9E, 0x02, 0x61, 0x04, 0x9C, 0x04
	.byte 0x91, 0x03, 0x9D, 0x02, 0x9D, 0x03, 0xFA, 0x02, 0x64, 0x04, 0x50, 0x04, 0x9A, 0x04, 0x10, 0x04
	.byte 0xAF, 0x02, 0x06, 0x04, 0x20, 0x04, 0xA5, 0x03, 0x4C, 0x03, 0x38, 0x04, 0xFF, 0xFF, 0x00, 0x00
	.byte 0xCC, 0x01, 0x3F, 0x00, 0x67, 0x01, 0x69, 0x02, 0x8E, 0x00, 0x32, 0x01, 0xBE, 0x00, 0x41, 0x00
	.byte 0x52, 0x02, 0x4E, 0x01, 0xA8, 0x01, 0x4F, 0x02, 0xB5, 0x00, 0x5B, 0x01, 0x18, 0x00, 0x3B, 0x00
	.byte 0xED, 0x01, 0x36, 0x02, 0x37, 0x02, 0xA8, 0x00, 0x5C, 0x01, 0x30, 0x01, 0x90, 0x00, 0x13, 0x02
	.byte 0x62, 0x02, 0xE2, 0x01, 0xB8, 0x00, 0x2A, 0x01, 0x73, 0x01, 0x57, 0x01, 0x62, 0x01, 0x53, 0x01
	.byte 0x26, 0x02, 0x9B, 0x01, 0x99, 0x00, 0x66, 0x02, 0x0B, 0x01, 0x0F, 0x00, 0x5E, 0x02, 0x76, 0x01
	.byte 0xB6, 0x00, 0x45, 0x00, 0x90, 0x01, 0x8F, 0x01, 0x71, 0x02, 0x09, 0x00, 0x01, 0x01, 0xF2, 0x00
	.byte 0x0A, 0x02, 0x0D, 0x02, 0xB6, 0x01, 0x72, 0x02, 0x74, 0x02, 0x1E, 0x01, 0xB5, 0x01, 0xB4, 0x01
	.byte 0x96, 0x01, 0xA2, 0x01, 0x01, 0x00, 0xAB, 0x01, 0x9C, 0x01, 0x0C, 0x00, 0x4B, 0x01, 0x4C, 0x01
	.byte 0x43, 0x01, 0xC7, 0x01, 0x35, 0x02, 0x3E, 0x01, 0x0C, 0x01, 0x5F, 0x01, 0x0A, 0x00, 0xFB, 0x00
	.byte 0x61, 0x02, 0x71, 0x00, 0x06, 0x00, 0x04, 0x00, 0x05, 0x00, 0xB9, 0x01, 0xA5, 0x01, 0xA4, 0x01
	.byte 0x98, 0x00, 0x86, 0x01, 0x66, 0x01, 0xAA, 0x00, 0xB1, 0x01, 0x3D, 0x02, 0x6E, 0x01, 0x58, 0x01
	.byte 0x24, 0x00, 0x23, 0x00, 0xAD, 0x00, 0x5B, 0x00, 0x7E, 0x02, 0x33, 0x02, 0x9F, 0x01, 0x00, 0x01
	.byte 0x16, 0x02, 0x55, 0x01, 0xDE, 0x00, 0x22, 0x02, 0x5A, 0x01, 0x98, 0x01, 0x56, 0x01, 0xE8, 0x01
	.byte 0xC5, 0x01, 0xA9, 0x00, 0x9F, 0x00, 0x2E, 0x02, 0x67, 0x02, 0x65, 0x02, 0x68, 0x00, 0x9B, 0x00
	.byte 0xEB, 0x01, 0x2B, 0x02, 0x2A, 0x02, 0x49, 0x02, 0x79, 0x02, 0x2D, 0x01, 0xE1, 0x00, 0x82, 0x01
	.byte 0x57, 0x00, 0xF6, 0x01, 0xE3, 0x01, 0x32, 0x00, 0x84, 0x00, 0x55, 0x00, 0x54, 0x00, 0xE8, 0x00
	.byte 0x94, 0x00, 0x95, 0x00, 0xC4, 0x01, 0x93, 0x00, 0xAA, 0x01, 0xA9, 0x01, 0x11, 0x02, 0x60, 0x00
	.byte 0x6D, 0x02, 0x44, 0x02, 0x33, 0x00, 0xCE, 0x00, 0x42, 0x02, 0x78, 0x02, 0x64, 0x01, 0xDD, 0x01
	.byte 0x63, 0x01, 0x0D, 0x01, 0x2D, 0x02, 0x5B, 0x02, 0x5C, 0x02, 0x85, 0x00, 0x17, 0x00, 0x7D, 0x00
	.byte 0xD2, 0x01, 0x35, 0x01, 0x65, 0x00, 0xEF, 0x00, 0x5D, 0x02, 0xF4, 0x01, 0x4B, 0x02, 0x8B, 0x01
	.byte 0xF4, 0x00, 0x4D, 0x02, 0xC4, 0x00, 0x12, 0x02, 0x66, 0x00, 0x67, 0x00, 0x27, 0x01, 0x53, 0x00
	.byte 0x16, 0x00, 0x5D, 0x01, 0xA0, 0x00, 0x55, 0x02, 0x56, 0x02, 0xC8, 0x01, 0xB4, 0x00, 0x88, 0x00
	.byte 0xA3, 0x01, 0x4A, 0x01, 0x4E, 0x02, 0xCD, 0x00, 0x63, 0x02, 0x50, 0x02, 0xDE, 0x01, 0xA2, 0x00
	.byte 0xBC, 0x01, 0xDB, 0x01, 0x54, 0x02, 0x39, 0x02, 0xBD, 0x01, 0x1A, 0x01, 0x5C, 0x00, 0xA7, 0x01
	.byte 0x89, 0x02, 0x5E, 0x00, 0x4A, 0x00, 0xBB, 0x01, 0x0E, 0x02, 0xCB, 0x00, 0xE7, 0x01, 0xD7, 0x01
	.byte 0x6A, 0x01, 0xAF, 0x01, 0xCF, 0x00, 0xD8, 0x01, 0x2C, 0x00, 0x2A, 0x00, 0x76, 0x00, 0x37, 0x00
	.byte 0x4C, 0x00, 0x6E, 0x02, 0x6F, 0x02, 0x70, 0x01, 0x3E, 0x02, 0x40, 0x02, 0x3F, 0x02, 0xD2, 0x00
	.byte 0x4B, 0x00, 0x58, 0x00, 0x84, 0x01, 0x7F, 0x01, 0xFD, 0x00, 0x3A, 0x00, 0x46, 0x01, 0x3C, 0x01
	.byte 0x15, 0x02, 0x82, 0x00, 0xB8, 0x01, 0x29, 0x01, 0x5D, 0x00, 0x64, 0x02, 0x77, 0x02, 0xE5, 0x01
	.byte 0xD6, 0x00, 0xFB, 0x01, 0xC1, 0x01, 0xC2, 0x01, 0x6B, 0x00, 0x6A, 0x00, 0xED, 0x00, 0xAE, 0x01
	.byte 0xFA, 0x00, 0xA3, 0x00, 0xBB, 0x00, 0x74, 0x00, 0xE5, 0x00, 0xE4, 0x00, 0x6F, 0x01, 0x7B, 0x02
	.byte 0x61, 0x00, 0xAE, 0x00, 0x3A, 0x01, 0x88, 0x01, 0x02, 0x00, 0x51, 0x02, 0x27, 0x00, 0x81, 0x01
	.byte 0x87, 0x00, 0x53, 0x02, 0xBD, 0x00, 0x7C, 0x00, 0x8C, 0x00, 0x8D, 0x00, 0x40, 0x00, 0x0E, 0x00
	.byte 0x73, 0x00, 0x4C, 0x02, 0x60, 0x01, 0x87, 0x02, 0xE6, 0x00, 0x63, 0x00, 0x19, 0x01, 0x58, 0x02
	.byte 0x57, 0x02, 0x59, 0x02, 0x6D, 0x00, 0x62, 0x00, 0x91, 0x01, 0x92, 0x01, 0x28, 0x02, 0x29, 0x02
	.byte 0x7E, 0x01, 0x86, 0x02, 0x31, 0x01, 0x60, 0x02, 0x85, 0x02, 0xAB, 0x00, 0x83, 0x00, 0x7C, 0x02
	.byte 0xF6, 0x00, 0x7C, 0x01, 0x7D, 0x01, 0xD6, 0x01, 0x1E, 0x02, 0xA6, 0x00, 0xA5, 0x00, 0xCF, 0x01
	.byte 0x6C, 0x00, 0xFE, 0x01, 0x59, 0x01, 0x25, 0x02, 0xFA, 0x01, 0x08, 0x01, 0x5F, 0x02, 0x0F, 0x01
	.byte 0xAC, 0x01, 0x0E, 0x01, 0x26, 0x01, 0xC0, 0x01, 0x10, 0x01, 0xF9, 0x00, 0xC9, 0x01, 0x51, 0x01
	.byte 0x72, 0x01, 0x94, 0x01, 0x95, 0x01, 0x44, 0x00, 0x43, 0x00, 0x42, 0x00, 0xF0, 0x00, 0xDB, 0x00
	.byte 0x81, 0x00, 0x7E, 0x00, 0xD3, 0x01, 0x51, 0x00, 0x52, 0x00, 0xCE, 0x01, 0x28, 0x01, 0xD9, 0x01
	.byte 0xEA, 0x01, 0x76, 0x02, 0x36, 0x01, 0x38, 0x00, 0xE2, 0x00, 0xCA, 0x01, 0x2C, 0x02, 0xB3, 0x00
	.byte 0xB7, 0x00, 0x69, 0x00, 0x03, 0x01, 0x1C, 0x01, 0x2F, 0x01, 0x34, 0x01, 0x33, 0x01, 0x9A, 0x00
	.byte 0x88, 0x02, 0x34, 0x00, 0xE1, 0x01, 0x78, 0x01, 0x77, 0x01, 0x0B, 0x00, 0x97, 0x00, 0x96, 0x00
	.byte 0x6B, 0x02, 0x6C, 0x02, 0x06, 0x01, 0x5E, 0x01, 0xF1, 0x00, 0xB7, 0x01, 0x3C, 0x02, 0x38, 0x01
	.byte 0xC8, 0x00, 0xAD, 0x01, 0x92, 0x00, 0x87, 0x01, 0x9E, 0x01, 0x7A, 0x00, 0x02, 0x01, 0x59, 0x00
	.byte 0xBE, 0x01, 0x05, 0x02, 0xC6, 0x00, 0x06, 0x02, 0xB1, 0x00, 0x22, 0x00, 0x1F, 0x00, 0x1D, 0x00
	.byte 0x20, 0x00, 0x1E, 0x00, 0x21, 0x00, 0x22, 0x01, 0x26, 0x00, 0x23, 0x01, 0xA4, 0x00, 0x2B, 0x01
	.byte 0x42, 0x01, 0x12, 0x01, 0xE0, 0x00, 0x2B, 0x00, 0x8A, 0x00, 0x8B, 0x00, 0x5F, 0x00, 0xF5, 0x01
	.byte 0xA1, 0x01, 0xE4, 0x01, 0x18, 0x02, 0x03, 0x02, 0xFF, 0x01, 0x01, 0x02, 0x2E, 0x00, 0x2F, 0x00
	.byte 0xF8, 0x01, 0x70, 0x02, 0x17, 0x01, 0x35, 0x00, 0x24, 0x02, 0xE7, 0x00, 0xE9, 0x01, 0xAC, 0x00
	.byte 0x12, 0x00, 0x11, 0x00, 0x10, 0x00, 0x07, 0x02, 0xF3, 0x01, 0x19, 0x00, 0xDD, 0x00, 0xCC, 0x00
	.byte 0x7F, 0x00, 0x89, 0x01, 0x37, 0x01, 0xBA, 0x00, 0x3C, 0x00, 0x3D, 0x00, 0x3E, 0x00, 0x4D, 0x00
	.byte 0x05, 0x01, 0x89, 0x00, 0xE9, 0x00, 0xDA, 0x01, 0x39, 0x00, 0x8A, 0x01, 0xDC, 0x01, 0x36, 0x00
	.byte 0xF7, 0x00, 0xFD, 0x01, 0xB0, 0x01, 0xC3, 0x00, 0x9C, 0x00, 0xD3, 0x00, 0x1A, 0x00, 0xF3, 0x00
	.byte 0x18, 0x01, 0x99, 0x01, 0x4E, 0x00, 0x14, 0x00, 0x13, 0x00, 0x80, 0x01, 0x7A, 0x01, 0xE6, 0x01
	.byte 0x79, 0x01, 0x7B, 0x01, 0x71, 0x01, 0xDF, 0x00, 0x83, 0x02, 0x43, 0x02, 0x70, 0x00, 0x6F, 0x00
	.byte 0xD0, 0x01, 0xBF, 0x01, 0x0C, 0x02, 0x3B, 0x01, 0x97, 0x01, 0xDF, 0x01, 0x73, 0x02, 0x2E, 0x01
	.byte 0x75, 0x01, 0xF7, 0x01, 0x27, 0x02, 0x1B, 0x00, 0x1C, 0x00, 0x1B, 0x02, 0x4A, 0x02, 0xFE, 0x00
	.byte 0xD4, 0x00, 0x21, 0x02, 0x30, 0x02, 0x2F, 0x02, 0x7B, 0x00, 0x75, 0x00, 0x77, 0x00, 0x6C, 0x01
	.byte 0x11, 0x01, 0x56, 0x00, 0x19, 0x02, 0xA1, 0x00, 0xF1, 0x01, 0xF0, 0x01, 0x50, 0x01, 0x1C, 0x02
	.byte 0x3F, 0x01, 0xEC, 0x01, 0x24, 0x01, 0x74, 0x01, 0x5A, 0x00, 0xA6, 0x01, 0x68, 0x02, 0x9A, 0x01
	.byte 0x13, 0x01, 0x93, 0x01, 0x1D, 0x01, 0xD5, 0x00, 0x61, 0x01, 0x31, 0x02, 0x0A, 0x01, 0x04, 0x02
	.byte 0x00, 0x02, 0x02, 0x02, 0xE3, 0x00, 0xBC, 0x00, 0x2C, 0x01, 0xC3, 0x01, 0xB3, 0x01, 0x21, 0x01
	.byte 0x1F, 0x01, 0x50, 0x00, 0xC7, 0x00, 0x4F, 0x00, 0xDA, 0x00, 0xEB, 0x00, 0xEE, 0x00, 0xD7, 0x00
	.byte 0xEF, 0x01, 0x8F, 0x00, 0x69, 0x01, 0xCB, 0x01, 0xD1, 0x00, 0x41, 0x02, 0x52, 0x01, 0x15, 0x00
	.byte 0x6B, 0x01, 0xA7, 0x00, 0x47, 0x01, 0xBA, 0x01, 0x45, 0x01, 0x07, 0x00, 0xEA, 0x00, 0x8E, 0x01
	.byte 0x8D, 0x01, 0x8C, 0x01, 0x79, 0x00, 0x78, 0x00, 0xD0, 0x00, 0xFC, 0x01, 0x6A, 0x02, 0xB2, 0x01
	.byte 0xB9, 0x00, 0xF5, 0x00, 0xC0, 0x00, 0xBF, 0x00, 0x1B, 0x01, 0x4D, 0x01, 0x1D, 0x02, 0x3D, 0x01
	.byte 0x04, 0x01, 0x45, 0x02, 0x15, 0x01, 0xDC, 0x00, 0x10, 0x02, 0x14, 0x01, 0x72, 0x00, 0xD1, 0x01
	.byte 0x80, 0x00, 0xD8, 0x00, 0x48, 0x00, 0x49, 0x00, 0xF2, 0x01, 0x7F, 0x02, 0x1A, 0x02, 0x82, 0x02
	.byte 0x14, 0x02, 0x34, 0x02, 0xD4, 0x01, 0xAF, 0x00, 0xB0, 0x00, 0xFF, 0x00, 0x44, 0x01, 0x81, 0x02
	.byte 0x85, 0x01, 0x9E, 0x00, 0xC6, 0x01, 0x08, 0x02, 0x48, 0x01, 0xFC, 0x00, 0x65, 0x01, 0x38, 0x02
	.byte 0x83, 0x01, 0x17, 0x02, 0x5A, 0x02, 0x9D, 0x00, 0xF8, 0x00, 0xEC, 0x00, 0xC5, 0x00, 0x09, 0x02
	.byte 0xC9, 0x00, 0xD9, 0x00, 0xE0, 0x01, 0x47, 0x02, 0x46, 0x02, 0x48, 0x02, 0x86, 0x00, 0x1F, 0x02
	.byte 0x31, 0x00, 0x30, 0x00, 0x03, 0x00, 0xA0, 0x01, 0x49, 0x01, 0xEE, 0x01, 0x47, 0x00, 0x20, 0x01
	.byte 0x2D, 0x00, 0x80, 0x02, 0x39, 0x01, 0x7D, 0x02, 0x64, 0x00, 0x75, 0x02, 0x25, 0x00, 0x40, 0x01
	.byte 0x41, 0x01, 0x6D, 0x01, 0x08, 0x00, 0xF9, 0x01, 0xCD, 0x01, 0x0D, 0x00, 0x46, 0x00, 0x6E, 0x00
	.byte 0x23, 0x02, 0x20, 0x02, 0x54, 0x01, 0x25, 0x01, 0x28, 0x00, 0x16, 0x01, 0xCA, 0x00, 0x0F, 0x02
	.byte 0xC2, 0x00, 0x9D, 0x01, 0x09, 0x01, 0x68, 0x01, 0xB2, 0x00, 0x32, 0x02, 0xC1, 0x00, 0xD5, 0x01
	.byte 0x4F, 0x01, 0x91, 0x00, 0x0B, 0x02, 0x84, 0x02, 0x07, 0x01, 0x3B, 0x02, 0x3A, 0x02, 0x29, 0x00
	.byte 0x7A, 0x02, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x02, 0x00, 0x50, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x07, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1B, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0xC4, 0x06, 0xC5, 0x06
	.byte 0xC6, 0x06, 0xC7, 0x06, 0xC8, 0x06, 0xC9, 0x06, 0xCA, 0x06, 0xCB, 0x06, 0xCC, 0x06, 0xCD, 0x06
	.byte 0x71, 0x00, 0x72, 0x00, 0x73, 0x00, 0x74, 0x00, 0x75, 0x00, 0x76, 0x00, 0x77, 0x00, 0x78, 0x00
	.byte 0x79, 0x00, 0x7A, 0x00, 0x7B, 0x00, 0x7C, 0x00, 0x7D, 0x00, 0x7E, 0x00, 0x7F, 0x00, 0x80, 0x00
	.byte 0x81, 0x00, 0x82, 0x00, 0x83, 0x00, 0x84, 0x00, 0x85, 0x00, 0x86, 0x00, 0x87, 0x00, 0x88, 0x00
	.byte 0x89, 0x00, 0x8A, 0x00, 0x8B, 0x00, 0x00, 0x00, 0x41, 0x00, 0x05, 0x18, 0xFC, 0x0A, 0x09, 0x01
	.byte 0x00, 0x14, 0x42, 0x00, 0x1D, 0x18, 0xFC, 0x0B, 0x00, 0x02, 0x01, 0x15, 0x43, 0x00, 0x35, 0x18
	.byte 0xFC, 0x0C, 0x01, 0x03, 0x02, 0x16, 0x44, 0x00, 0x4D, 0x18, 0xFC, 0x0D, 0x02, 0x04, 0x03, 0x17
	.byte 0x45, 0x00, 0x65, 0x18, 0xFD, 0x0E, 0x03, 0x05, 0x04, 0x18, 0x46, 0x00, 0x7D, 0x18, 0xFD, 0x0F
	.byte 0x04, 0x06, 0x05, 0x19, 0x47, 0x00, 0x95, 0x18, 0xFD, 0x10, 0x05, 0x07, 0x06, 0x10, 0x48, 0x00
	.byte 0xAD, 0x18, 0xFE, 0x11, 0x06, 0x08, 0x07, 0x11, 0x49, 0x00, 0xC5, 0x18, 0xFE, 0x12, 0x07, 0x09
	.byte 0x08, 0x12, 0x4A, 0x00, 0xDD, 0x18, 0xFE, 0x13, 0x08, 0x00, 0x09, 0x1A, 0x4B, 0x00, 0x05, 0x30
	.byte 0x00, 0x14, 0x13, 0x0B, 0x00, 0x14, 0x4C, 0x00, 0x1D, 0x30, 0x01, 0x15, 0x0A, 0x0C, 0x01, 0x15
	.byte 0x4D, 0x00, 0x35, 0x30, 0x02, 0x16, 0x0B, 0x0D, 0x02, 0x16, 0x4E, 0x00, 0x4D, 0x30, 0x03, 0x17
	.byte 0x0C, 0x0E, 0x03, 0x17, 0x4F, 0x00, 0x65, 0x30, 0x04, 0x18, 0x0D, 0x0F, 0x04, 0x18, 0x50, 0x00
	.byte 0x7D, 0x30, 0x05, 0x19, 0x0E, 0x10, 0x05, 0x19, 0x51, 0x00, 0x95, 0x30, 0x06, 0xFD, 0x0F, 0x11
	.byte 0x06, 0x10, 0x52, 0x00, 0xAD, 0x30, 0x07, 0xFE, 0x10, 0x12, 0x07, 0x11, 0x53, 0x00, 0xC5, 0x30
	.byte 0x08, 0xFE, 0x11, 0x13, 0x08, 0x12, 0x54, 0x00, 0xDD, 0x30, 0x09, 0x1A, 0x12, 0x0A, 0x09, 0x1A
	.byte 0x55, 0x00, 0x05, 0x48, 0x0A, 0xFC, 0x1A, 0x15, 0x00, 0x14, 0x56, 0x00, 0x1D, 0x48, 0x0B, 0xFC
	.byte 0x14, 0x16, 0x01, 0x15, 0x57, 0x00, 0x35, 0x48, 0x0C, 0xFC, 0x15, 0x17, 0x02, 0x16, 0x58, 0x00
	.byte 0x4D, 0x48, 0x0D, 0xFC, 0x16, 0x18, 0x03, 0x17, 0x59, 0x00, 0x65, 0x48, 0x0E, 0xFD, 0x17, 0x19
	.byte 0x04, 0x18, 0x5A, 0x00, 0x7D, 0x48, 0x0F, 0xFD, 0x18, 0x1A, 0x05, 0x19, 0x21, 0x00, 0xDD, 0x48
	.byte 0x13, 0xFE, 0x19, 0x14, 0x06, 0x1A, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00
	.byte 0x3F, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x0B, 0x05, 0x0C, 0x06, 0x07, 0x08, 0x0A, 0x09
	.byte 0x90, 0x01, 0x2C, 0x01, 0x01, 0x02, 0x03, 0x04, 0x05, 0x08, 0x14, 0x11, 0xF0, 0x14, 0x12, 0x00
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x04, 0xA3, 0xEC, 0xFB, 0xFF, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x00, 0x30, 0xFF, 0x00, 0x00, 0x00
	.byte 0x59, 0x24, 0x1A, 0x02, 0x01, 0x25, 0x1A, 0x02, 0xA8, 0xBF, 0xE8, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x51, 0x15, 0x1A, 0x02, 0x8D, 0x17, 0x1A, 0x02, 0x55, 0x1C, 0x1A, 0x02, 0xA8, 0xC0, 0xE8, 0x00
	.byte 0xA8, 0xC0, 0x00, 0x28, 0xFF, 0x00, 0x00, 0x00, 0x90, 0xA8, 0xB8, 0xFF, 0xA8, 0xC0, 0xB8, 0xFF
	.byte 0x10, 0x20, 0x50, 0xB0, 0xFF, 0x00, 0x00, 0x00, 0x90, 0xA8, 0xB8, 0xFF, 0xA8, 0xC0, 0xB8, 0xFF
	.byte 0x10, 0x20, 0x18, 0x78, 0x10, 0x20, 0x88, 0xE8, 0xFF, 0x00, 0x00, 0x00, 0x90, 0xA8, 0xB8, 0xFF
	.byte 0xA8, 0xC0, 0xB8, 0xFF, 0xA8, 0xC0, 0x00, 0x18, 0xA8, 0xC0, 0x90, 0xA8, 0x08, 0x27, 0x00, 0x13
	.byte 0x08, 0x27, 0xEC, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x09, 0x03, 0x02, 0x01, 0x0A, 0x04, 0x00, 0x02
	.byte 0x0B, 0x05, 0x01, 0x00, 0x00, 0x06, 0x05, 0x04, 0x01, 0x07, 0x03, 0x05, 0x02, 0x08, 0x04, 0x03
	.byte 0x03, 0x09, 0x08, 0x07, 0x04, 0x0A, 0x06, 0x08, 0x05, 0x0B, 0x07, 0x06, 0x06, 0x00, 0x0B, 0x0A
	.byte 0x07, 0x01, 0x09, 0x0B, 0x08, 0x02, 0x0A, 0x09, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x65, 0x0D, 0x1A, 0x02, 0x15, 0x0E, 0x1A, 0x02
	.byte 0x81, 0x0E, 0x1A, 0x02, 0xA8, 0xC0, 0x28, 0x70, 0xA8, 0xC0, 0x70, 0xB8, 0xA8, 0xC0, 0xB8, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x15, 0x3A, 0x1A, 0x02, 0x3D, 0x3B, 0x1A, 0x02, 0xC5, 0x3A, 0x1A, 0x02
	.byte 0x07, 0x00, 0x05, 0x00, 0x80, 0x7E, 0xEF, 0x7F, 0x07, 0x00, 0x09, 0x00, 0x64, 0x51, 0x22, 0x7F
	.byte 0x07, 0x00, 0x0A, 0x00, 0xEA, 0x69, 0xA5, 0x7F, 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x6D, 0x73, 0x5F, 0x69, 0x6E, 0x70, 0x75, 0x74, 0x5F, 0x64, 0x61, 0x74, 0x61, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0xC5, 0xD5, 0x19, 0x02, 0x95, 0xD8, 0x19, 0x02, 0x31, 0xDA, 0x19, 0x02
	.byte 0x81, 0xDA, 0x19, 0x02, 0xB9, 0xDA, 0x19, 0x02, 0xD1, 0xDA, 0x19, 0x02, 0xE9, 0xDA, 0x19, 0x02
	.byte 0x01, 0xDB, 0x19, 0x02, 0x39, 0xDB, 0x19, 0x02, 0x71, 0xDB, 0x19, 0x02, 0xB9, 0xDB, 0x19, 0x02
	.byte 0xAD, 0xDD, 0x19, 0x02, 0xA5, 0xDE, 0x19, 0x02, 0x9D, 0xDF, 0x19, 0x02, 0xAD, 0xE0, 0x19, 0x02
	.byte 0xA5, 0xE1, 0x19, 0x02, 0x39, 0xE2, 0x19, 0x02, 0x55, 0xE2, 0x19, 0x02, 0x79, 0xE2, 0x19, 0x02
	.byte 0x95, 0xE2, 0x19, 0x02, 0xB1, 0xE2, 0x19, 0x02, 0xED, 0xE2, 0x19, 0x02, 0x11, 0xE3, 0x19, 0x02
	.byte 0x1D, 0xE3, 0x19, 0x02, 0x79, 0xDC, 0x19, 0x02, 0xD1, 0xDC, 0x19, 0x02, 0x3D, 0xE3, 0x19, 0x02
	.byte 0x49, 0xE3, 0x19, 0x02, 0x55, 0xE3, 0x19, 0x02, 0x61, 0xE3, 0x19, 0x02, 0x6D, 0xE3, 0x19, 0x02
	.byte 0xD1, 0xE3, 0x19, 0x02, 0xED, 0xE3, 0x19, 0x02, 0x51, 0xE4, 0x19, 0x02, 0x8D, 0xE4, 0x19, 0x02
	.byte 0x70, 0x6D, 0x73, 0x5F, 0x69, 0x6E, 0x70, 0x75, 0x74, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x6D, 0x73, 0x69, 0x5F, 0x73, 0x65, 0x61, 0x72, 0x63, 0x68, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x70, 0x6D, 0x73, 0x69, 0x76, 0x5F, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6F
	.byte 0x72, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6D, 0x73, 0x69, 0x76, 0x5F, 0x65, 0x64
	.byte 0x69, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6D, 0x73, 0x69, 0x76, 0x5F, 0x6D, 0x65
	.byte 0x6E, 0x75, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6D, 0x73, 0x5F, 0x69, 0x6E, 0x70, 0x75
	.byte 0x74, 0x2E, 0x63, 0x00, 0x70, 0x6D, 0x73, 0x69, 0x76, 0x5F, 0x77, 0x6F, 0x72, 0x64, 0x77, 0x69
	.byte 0x6E, 0x2E, 0x63, 0x00, 0x0D, 0x10, 0x0F, 0x00, 0x70, 0x6D, 0x73, 0x5F, 0x73, 0x65, 0x6C, 0x65
	.byte 0x63, 0x74, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A512C
