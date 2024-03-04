	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02078000
sub_02078000: ; 0x02078000
	push {r3, lr}
	bl sub_0207AC8C
	cmp r0, #0
	beq _0207800E
	bl sub_02078010
_0207800E:
	pop {r3, pc}
	thumb_func_end sub_02078000

	thumb_func_start sub_02078010
sub_02078010: ; 0x02078010
	bx pc
	nop
	thumb_func_end sub_02078010
_02078014:
	.byte 0x00, 0xC0, 0x9F, 0xE5, 0x1C, 0xFF, 0x2F, 0xE1, 0x19, 0x88, 0x76, 0x02

	thumb_func_start sub_02078020
sub_02078020: ; 0x02078020
	ldr r1, _02078028 ; =0x04000247
	strb r0, [r1]
	bx lr
	nop
_02078028: .word 0x04000247
	thumb_func_end sub_02078020

	thumb_func_start sub_0207802C
sub_0207802C: ; 0x0207802C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r1, r2, #0
	cmp r3, #0
	beq _02078078
	lsl r2, r0, #1
	add r2, r0, r2
	add r2, r2, #2
	lsl r5, r2, #2
	mov r2, #2
	ldr r4, _0207807C ; =0x040000B0
	lsl r2, r2, #0x1e
_02078044:
	ldr r6, [r5, r4]
	tst r6, r2
	bne _02078044
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _0207805C
	mov r2, #0x12
	str r2, [sp]
	lsr r6, r3, #2
	add r2, r7, #0
	mov r3, #0x85
	b _02078066
_0207805C:
	mov r2, #0x16
	str r2, [sp]
	lsr r6, r3, #2
	add r2, r7, #0
	mov r3, #5
_02078066:
	lsl r3, r3, #0x18
	orr r3, r6
	bl sub_01FF8BF0
	mov r0, #2
	lsl r0, r0, #0x1e
_02078072:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _02078072
_02078078:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0207807C: .word 0x040000B0
	thumb_func_end sub_0207802C

	thumb_func_start sub_02078080
sub_02078080: ; 0x02078080
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	beq _020780E0
	add r2, r6, #0
	mov r3, #0
	bl sub_020783E0
	lsl r0, r7, #1
	add r0, r7, r0
	add r0, r0, #2
	lsl r5, r0, #2
	mov r0, #2
	ldr r4, _020780E4 ; =0x040000B0
	lsl r0, r0, #0x1e
_020780A4:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _020780A4
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020780C0
	mov r0, #2
	str r0, [sp]
	add r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	lsr r6, r6, #2
	mov r3, #0x21
	b _020780CE
_020780C0:
	mov r0, #6
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r6, r6, #2
	mov r3, #1
_020780CE:
	lsl r3, r3, #0x1a
	orr r3, r6
	bl sub_01FF8BF0
	mov r0, #2
	lsl r0, r0, #0x1e
_020780DA:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _020780DA
_020780E0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020780E4: .word 0x040000B0
	thumb_func_end sub_02078080

	thumb_func_start sub_020780E8
sub_020780E8: ; 0x020780E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r6, r3, #0
	beq _02078146
	add r2, r6, #0
	mov r3, #0
	bl sub_020783E0
	lsl r0, r7, #1
	add r0, r7, r0
	add r0, r0, #2
	lsl r5, r0, #2
	mov r0, #2
	ldr r4, _0207814C ; =0x040000B0
	lsl r0, r0, #0x1e
_0207810C:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _0207810C
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0207812C
	mov r3, #2
	mov r0, #2
	str r0, [sp]
	lsr r6, r6, #1
	lsl r3, r3, #0x1e
	add r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	orr r3, r6
	b _02078138
_0207812C:
	mov r0, #6
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r7, #0
	lsr r3, r6, #1
_02078138:
	bl sub_01FF8BF0
	mov r0, #2
	lsl r0, r0, #0x1e
_02078140:
	ldr r1, [r5, r4]
	tst r1, r0
	bne _02078140
_02078146:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0207814C: .word 0x040000B0
	thumb_func_end sub_020780E8

	thumb_func_start sub_02078150
sub_02078150: ; 0x02078150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	add r5, r3, #0
	ldr r4, [sp, #0x20]
	bne _0207816C
	cmp r4, #0
	beq _020781EC
	ldr r0, [sp, #0x24]
	blx r4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207816C:
	bl sub_0207829C
	cmp r4, #0
	beq _020781B8
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02079DE4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0207819E
	mov r3, #0xc5
	mov r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207819E:
	mov r3, #0x45
	mov r0, #0x14
	str r0, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020781B8:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _020781D8
	mov r3, #0x85
	mov r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020781D8:
	mov r3, #0x14
	str r3, [sp]
	ldr r1, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x16
	add r0, r6, #0
	add r2, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
_020781EC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02078150

	thumb_func_start sub_020781F0
sub_020781F0: ; 0x020781F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r3, #0
	str r2, [sp, #4]
	add r2, r5, #0
	mov r3, #0
	add r6, r0, #0
	add r7, r1, #0
	ldr r4, [sp, #0x20]
	bl sub_020783E0
	cmp r5, #0
	bne _02078216
	cmp r4, #0
	beq _02078298
	ldr r0, [sp, #0x24]
	blx r4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02078216:
	add r0, r6, #0
	bl sub_0207829C
	cmp r4, #0
	beq _02078264
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02079DE4
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0207824A
	mov r3, #0x31
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x1a
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0207824A:
	mov r3, #0x11
	mov r0, #4
	str r0, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x1a
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02078264:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _02078284
	mov r3, #0x21
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x1a
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02078284:
	mov r3, #4
	str r3, [sp]
	ldr r2, [sp, #4]
	lsr r4, r5, #2
	lsl r3, r3, #0x18
	add r0, r6, #0
	add r1, r7, #0
	orr r3, r4
	bl sub_01FF8BF0
_02078298:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020781F0

	thumb_func_start sub_0207829C
sub_0207829C: ; 0x0207829C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	blx sub_0207C0E4
	mov r1, #0xc
	mov r2, #2
	ldr r3, _020782CC ; =0x040000B8
	mul r1, r4
	lsl r2, r2, #0x1e
_020782AE:
	ldr r5, [r1, r3]
	tst r5, r2
	bne _020782AE
	cmp r4, #0
	bne _020782C6
	ldr r2, _020782D0 ; =0x040000B0
	add r2, r1, r2
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	ldr r1, _020782D4 ; =0x81400001
	str r1, [r2, #8]
_020782C6:
	blx sub_0207C0F8
	pop {r3, r4, r5, pc}
	.align 2, 0
_020782CC: .word 0x040000B8
_020782D0: .word 0x040000B0
_020782D4: .word 0x81400001
	thumb_func_end sub_0207829C

	thumb_func_start sub_020782D8
sub_020782D8: ; 0x020782D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	blx sub_0207C0E4
	mov r1, #0xc
	ldr r3, _02078318 ; =0x040000B8
	mul r1, r4
	ldr r5, [r1, r3]
	ldr r2, _0207831C ; =0xC5FFFFFF
	and r2, r5
	str r2, [r1, r3]
	ldr r5, [r1, r3]
	ldr r2, _02078320 ; =0x7FFFFFFF
	and r2, r5
	str r2, [r1, r3]
	ldr r2, [r1, r3]
	cmp r4, #0
	ldr r2, [r1, r3]
	bne _02078310
	add r2, r3, #0
	sub r2, #8
	add r4, r1, r2
	mov r2, #0
	sub r3, #8
	str r2, [r1, r3]
	ldr r1, _02078324 ; =0x81400001
	str r2, [r4, #4]
	str r1, [r4, #8]
_02078310:
	blx sub_0207C0F8
	pop {r3, r4, r5, pc}
	nop
_02078318: .word 0x040000B8
_0207831C: .word 0xC5FFFFFF
_02078320: .word 0x7FFFFFFF
_02078324: .word 0x81400001
	thumb_func_end sub_020782D8

	thumb_func_start sub_02078328
sub_02078328: ; 0x02078328
	push {r3, lr}
	mov r0, #0
	bl sub_020782D8
	mov r0, #1
	bl sub_020782D8
	mov r0, #2
	bl sub_020782D8
	mov r0, #3
	bl sub_020782D8
	pop {r3, pc}
	thumb_func_end sub_02078328

	thumb_func_start sub_02078344
sub_02078344: ; 0x02078344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #2
	lsl r6, r6, #0x1a
	str r0, [sp]
	lsl r0, r6, #1
	str r0, [sp, #8]
	lsl r0, r6, #2
	str r0, [sp, #0x10]
	mov r0, #3
	lsl r0, r0, #0x1c
	lsr r0, r0, #1
	str r0, [sp, #0xc]
	lsl r0, r6, #1
	str r0, [sp, #0x14]
	str r0, [sp, #4]
	mov r0, #0xa
	add r5, r1, #0
	mov r4, #0
	lsl r7, r0, #0x1e
_0207836C:
	ldr r0, [sp]
	cmp r4, r0
	beq _020783D2
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020783DC ; =0x040000B8
	ldr r1, [r1, r0]
	add r0, r1, #0
	tst r0, r7
	beq _020783D2
	mov r0, #0xe
	lsl r0, r0, #0x1a
	and r0, r1
	cmp r0, r5
	beq _020783D2
	cmp r0, r6
	bne _02078396
	ldr r1, [sp, #4]
	cmp r5, r1
	beq _020783D2
_02078396:
	ldr r1, [sp, #8]
	cmp r0, r1
	bne _020783A0
	cmp r5, r6
	beq _020783D2
_020783A0:
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _020783CE
	ldr r1, [sp, #0x10]
	cmp r0, r1
	beq _020783CE
	mov r1, #0xa
	lsl r1, r1, #0x1a
	cmp r0, r1
	beq _020783CE
	mov r1, #3
	lsl r1, r1, #0x1c
	cmp r0, r1
	beq _020783CE
	mov r1, #0xe
	lsl r1, r1, #0x1a
	cmp r0, r1
	beq _020783CE
	cmp r0, r6
	beq _020783CE
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _020783D2
_020783CE:
	bl sub_0207C774
_020783D2:
	add r4, r4, #1
	cmp r4, #3
	blt _0207836C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_020783DC: .word 0x040000B8
	thumb_func_end sub_02078344

	thumb_func_start sub_020783E0
sub_020783E0: ; 0x020783E0
	push {r4, lr}
	cmp r0, #0
	bne _02078424
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	cmp r3, #0
	beq _020783FA
	mov r4, #2
	lsl r4, r4, #0x16
	cmp r3, r4
	beq _020783FE
	b _02078400
_020783FA:
	add r1, r1, r2
	b _02078400
_020783FE:
	sub r1, r1, r2
_02078400:
	mov r2, #0xff
	lsl r2, r2, #0x18
	add r3, r1, #0
	and r3, r2
	mov r2, #1
	lsl r2, r2, #0x1a
	cmp r0, r2
	beq _02078420
	lsl r1, r2, #1
	cmp r0, r1
	bhs _02078420
	cmp r3, r2
	beq _02078420
	add r0, r1, #0
	cmp r3, r0
	blo _02078424
_02078420:
	bl sub_0207C774
_02078424:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020783E0

	thumb_func_start sub_02078428
sub_02078428: ; 0x02078428
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r1, r3, #0
	cmp r2, #0
	bne _0207843E
	cmp r1, #0
	beq _020784BC
	ldr r0, [sp, #0x18]
	blx r1
	pop {r3, r4, r5, r6, r7, pc}
_0207843E:
	ldr r0, _020784C0 ; =0x0214C0AC
_02078440:
	ldr r3, [r0]
	cmp r3, #0
	bne _02078440
	mov r0, #7
	ldr r4, _020784C4 ; =0x04000600
	lsl r0, r0, #0x18
	mov r3, #2
_0207844E:
	ldr r6, [r4]
	and r6, r0
	lsr r6, r6, #0x18
	tst r6, r3
	beq _0207844E
	ldr r6, _020784C0 ; =0x0214C0AC
	mov r0, #1
	str r0, [r6]
	str r5, [r6, #4]
	str r7, [r6, #8]
	str r2, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	str r0, [r6, #0x14]
	add r0, r5, #0
	mov r3, #0
	bl sub_020783E0
	add r0, r5, #0
	bl sub_0207829C
	blx sub_0207C0E4
	add r7, r0, #0
	mov r0, #3
	ldr r1, [r4]
	lsl r0, r0, #0x1e
	and r0, r1
	lsr r0, r0, #0x1e
	str r0, [r6, #0x18]
	mov r0, #1
	lsl r5, r0, #0x15
	add r0, r5, #0
	bl sub_02079D88
	str r0, [r6, #0x1c]
	ldr r1, [r4]
	ldr r0, _020784C8 ; =0x3FFFFFFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [r4]
	ldr r1, _020784CC ; =sub_020784D0
	add r0, r5, #0
	bl sub_02079D20
	add r0, r5, #0
	bl sub_02079E70
	bl sub_020784D0
	add r0, r7, #0
	blx sub_0207C0F8
_020784BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020784C0: .word 0x0214C0AC
_020784C4: .word 0x04000600
_020784C8: .word 0x3FFFFFFF
_020784CC: .word sub_020784D0
	thumb_func_end sub_02078428

	thumb_func_start sub_020784D0
sub_020784D0: ; 0x020784D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0207853C ; =0x0214C0AC
	ldr r5, [r0, #0xc]
	cmp r5, #0
	beq _0207853A
	mov r0, #0x76
	lsl r0, r0, #2
	cmp r5, r0
	blo _020784E4
	add r5, r0, #0
_020784E4:
	ldr r6, _0207853C ; =0x0214C0AC
	ldr r0, [r6, #0xc]
	ldr r4, [r6, #8]
	sub r1, r0, r5
	add r0, r4, r5
	str r1, [r6, #0xc]
	str r0, [r6, #8]
	cmp r1, #0
	bne _0207851E
	ldr r0, [r6, #4]
	ldr r1, _02078540 ; =0x02078551
	mov r7, #0
	mov r2, #0
	bl sub_02079DE4
	str r7, [sp]
	add r1, r4, #0
	ldr r4, _02078544 ; =0x04000400
	ldr r3, _02078548 ; =0xC4400000
	lsr r5, r5, #2
	ldr r0, [r6, #4]
	add r2, r4, #0
	orr r3, r5
	bl sub_01FF8BF0
	lsl r0, r4, #0xb
	bl sub_02079EB8
	pop {r3, r4, r5, r6, r7, pc}
_0207851E:
	mov r0, #0
	add r1, r4, #0
	ldr r4, _02078544 ; =0x04000400
	str r0, [sp]
	ldr r3, _0207854C ; =0x84400000
	lsr r5, r5, #2
	ldr r0, [r6, #4]
	add r2, r4, #0
	orr r3, r5
	bl sub_01FF8BF0
	lsl r0, r4, #0xb
	bl sub_02079EB8
_0207853A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207853C: .word 0x0214C0AC
_02078540: .word 0x02078551
_02078544: .word 0x04000400
_02078548: .word 0xC4400000
_0207854C: .word 0x84400000
	thumb_func_end sub_020784D0
_02078550:
	.byte 0x38, 0xB5, 0x02, 0x25, 0x2D, 0x05, 0x28, 0x1C, 0x01, 0xF0, 0x9C, 0xFC, 0x0A, 0x4C, 0x0B, 0x4A
	.byte 0xA3, 0x69, 0x11, 0x68, 0x0A, 0x48, 0x01, 0x40, 0x98, 0x07, 0x08, 0x43, 0x10, 0x60, 0xE1, 0x69
	.byte 0x28, 0x1C, 0x01, 0xF0, 0xD5, 0xFB, 0x00, 0x20, 0x20, 0x60, 0x21, 0x69, 0x60, 0x69, 0x00, 0x29
	.byte 0x00, 0xD0, 0x88, 0x47, 0x38, 0xBD, 0xC0, 0x46, 0xAC, 0xC0, 0x14, 0x02, 0x00, 0x06, 0x00, 0x04
	.byte 0xFF, 0xFF, 0xFF, 0x3F

	thumb_func_start sub_02078594
sub_02078594: ; 0x02078594
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bne _020785A8
	cmp r3, #0
	beq _020785F8
	ldr r0, [sp, #0x18]
	blx r3
	pop {r3, r4, r5, r6, r7, pc}
_020785A8:
	ldr r0, _020785FC ; =0x0214C0AC
_020785AA:
	ldr r1, [r0]
	cmp r1, #0
	bne _020785AA
	ldr r0, _020785FC ; =0x0214C0AC
	mov r1, #1
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, [sp, #0x18]
	str r3, [r0, #0x10]
	str r1, [r0, #0x14]
	mov r1, #0xe
	add r0, r5, #0
	lsl r1, r1, #0x1a
	bl sub_02078344
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	mov r7, #0
	bl sub_020783E0
	add r0, r5, #0
	bl sub_0207829C
	ldr r1, _02078600 ; =0x0207860D
	add r0, r5, #0
	mov r2, #0
	bl sub_02079DE4
	ldr r3, _02078604 ; =0xFC400000
	lsr r4, r4, #2
	ldr r2, _02078608 ; =0x04000400
	add r0, r5, #0
	add r1, r6, #0
	orr r3, r4
	str r7, [sp]
	bl sub_01FF8BF0
_020785F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020785FC: .word 0x0214C0AC
_02078600: .word 0x0207860D
_02078604: .word 0xFC400000
_02078608: .word 0x04000400
	thumb_func_end sub_02078594
_0207860C:
	.byte 0x08, 0xB5, 0x04, 0x49
	.byte 0x00, 0x20, 0x08, 0x60, 0x48, 0x69, 0x09, 0x69, 0x00, 0x29, 0x00, 0xD0, 0x88, 0x47, 0x08, 0xBD
	.byte 0xAC, 0xC0, 0x14, 0x02

