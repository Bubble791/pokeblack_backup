	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0206B8D4
sub_0206B8D4: ; 0x0206B8D4
	push {r3, lr}
	ldr r0, _0206B91C ; =0x02146980
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0206B91A
	mov r1, #1
	str r1, [r0, #0xc]
	bl sub_0207D670
	ldr r1, _0206B920 ; =sub_0206BA44
	ldr r0, _0206B91C ; =0x02146980
	mov r2, #0
	str r1, [r0, #0x10]
	ldr r1, _0206B924 ; =sub_0206BA6C
	str r2, [r0, #0x14]
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	ldr r0, _0206B928 ; =0x02146990
	bl sub_0207F5E8
	ldr r0, _0206B92C ; =0x021469A0
	bl sub_0207F600
	bl sub_0206BB0C
	bl sub_0206C838
	bl sub_0206BFB4
	mov r1, #0
	ldr r0, _0206B91C ; =0x02146980
	mvn r1, r1
	strb r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
_0206B91A:
	pop {r3, pc}
	.align 2, 0
_0206B91C: .word 0x02146980
_0206B920: .word sub_0206BA44
_0206B924: .word sub_0206BA6C
_0206B928: .word 0x02146990
_0206B92C: .word 0x021469A0
	thumb_func_end sub_0206B8D4

	thumb_func_start sub_0206B930
sub_0206B930: ; 0x0206B930
	push {r4, lr}
	mov r4, #0
_0206B934:
	add r0, r4, #0
	bl sub_0207D73C
	cmp r0, #0
	bne _0206B934
	bl sub_0206C02C
	bl sub_0206C84C
	bl sub_0206DDAC
	mov r0, #0
	bl sub_0207D864
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206B930

	thumb_func_start sub_0206B954
sub_0206B954: ; 0x0206B954
	ldr r3, _0206B958 ; =sub_0207D5A0
	bx r3
	.align 2, 0
_0206B958: .word sub_0207D5A0
	thumb_func_end sub_0206B954

	thumb_func_start sub_0206B95C
sub_0206B95C: ; 0x0206B95C
	push {r3, lr}
	cmp r0, #0
	beq _0206B96A
	mov r0, #0x40
	bl sub_0207D5D0
	pop {r3, pc}
_0206B96A:
	bl sub_0207D5E4
	pop {r3, pc}
	thumb_func_end sub_0206B95C

	thumb_func_start sub_0206B970
sub_0206B970: ; 0x0206B970
	push {r4, lr}
	ldr r0, _0206BA00 ; =0x02146980
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0206B9EA
	mov r4, #0
_0206B97C:
	add r0, r4, #0
	bl sub_0207D73C
	cmp r0, #0
	bne _0206B97C
	ldr r0, _0206BA00 ; =0x02146980
	ldr r0, [r0, #8]
	bl sub_0207D9D0
	cmp r0, #0
	bne _0206B996
	mov r0, #0
	pop {r4, pc}
_0206B996:
	ldr r1, _0206BA00 ; =0x02146980
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0206B9A4
	mov r0, #1
	strb r0, [r1]
_0206B9A4:
	ldr r1, _0206BA00 ; =0x02146980
	mov r0, #0
	ldrsb r1, [r1, r0]
	ldr r0, _0206BA04 ; =0x000011E0
	ldr r2, _0206BA08 ; =0x021469C0
	mul r0, r1
	add r0, r2, r0
	bl sub_0207D5F8
	bl sub_0207D9B0
	ldr r1, _0206BA00 ; =0x02146980
	str r0, [r1, #8]
	mov r0, #0
	ldrsb r2, [r1, r0]
	cmp r2, #0
	bne _0206B9CA
	mov r0, #1
	b _0206B9CA
_0206B9CA:
	strb r0, [r1]
	ldr r1, _0206BA00 ; =0x02146980
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, _0206BA04 ; =0x000011E0
	ldr r3, _0206BA08 ; =0x021469C0
	add r2, r0, #0
	mul r2, r1
	add r0, r3, r2
	blx sub_0207B074
	mov r0, #0
	bl sub_0207D864
	mov r0, #1
	pop {r4, pc}
_0206B9EA:
	ldr r0, _0206BA08 ; =0x021469C0
	bl sub_0207D5F8
	bl sub_0207D9B0
	ldr r1, _0206BA00 ; =0x02146980
	str r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #4]
	pop {r4, pc}
	nop
_0206BA00: .word 0x02146980
_0206BA04: .word 0x000011E0
_0206BA08: .word 0x021469C0
	thumb_func_end sub_0206B970

	thumb_func_start sub_0206BA0C
sub_0206BA0C: ; 0x0206BA0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0206BA38 ; =0x02146980
	mov r0, #0
	ldrsb r1, [r1, r0]
	add r3, r2, #0
	cmp r1, #0
	blt _0206BA26
	ldr r0, _0206BA3C ; =0x000011E0
	ldr r2, _0206BA40 ; =0x021469C0
	mul r0, r1
	add r0, r2, r0
_0206BA26:
	cmp r0, #0
	bne _0206BA2E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206BA2E:
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0207DC0C
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206BA38: .word 0x02146980
_0206BA3C: .word 0x000011E0
_0206BA40: .word 0x021469C0
	thumb_func_end sub_0206BA0C

	thumb_func_start sub_0206BA44
sub_0206BA44: ; 0x0206BA44
	push {r4, lr}
	bl sub_0206C930
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0207D410
	bl sub_0207D9B0
	add r4, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r4, #0
	bl sub_0207D96C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206BA44

	thumb_func_start sub_0206BA6C
sub_0206BA6C: ; 0x0206BA6C
	ldr r3, _0206BA70 ; =sub_0206C96C
	bx r3
	.align 2, 0
_0206BA70: .word sub_0206C96C
	thumb_func_end sub_0206BA6C

	thumb_func_start sub_0206BA74
sub_0206BA74: ; 0x0206BA74
	push {r4, lr}
	add r4, r0, #0
	bne _0206BA7E
	mov r0, #1
	pop {r4, pc}
_0206BA7E:
	ldr r1, _0206BA9C ; =0x02148D80
	ldr r1, [r1, #8]
	tst r1, r4
	beq _0206BA8A
	mov r0, #0
	pop {r4, pc}
_0206BA8A:
	mov r1, #0
	bl sub_0207D4AC
	ldr r0, _0206BA9C ; =0x02148D80
	ldr r1, [r0, #8]
	orr r1, r4
	str r1, [r0, #8]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
_0206BA9C: .word 0x02148D80
	thumb_func_end sub_0206BA74

	thumb_func_start sub_0206BAA0
sub_0206BAA0: ; 0x0206BAA0
	push {r4, lr}
	add r4, r0, #0
	beq _0206BAB6
	mov r1, #0
	bl sub_0207D4C4
	ldr r0, _0206BAB8 ; =0x02148D80
	mvn r1, r4
	ldr r2, [r0, #8]
	and r1, r2
	str r1, [r0, #8]
_0206BAB6:
	pop {r4, pc}
	.align 2, 0
_0206BAB8: .word 0x02148D80
	thumb_func_end sub_0206BAA0

	thumb_func_start sub_0206BABC
sub_0206BABC: ; 0x0206BABC
	ldr r1, _0206BAC8 ; =0x02148D80
	mvn r0, r0
	ldr r2, [r1]
	and r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0206BAC8: .word 0x02148D80
	thumb_func_end sub_0206BABC

	thumb_func_start sub_0206BACC
sub_0206BACC: ; 0x0206BACC
	ldr r1, _0206BAF4 ; =0x02148D80
	mov r3, #1
	ldr r2, [r1, #4]
	mov r0, #0
_0206BAD4:
	add r1, r2, #0
	tst r1, r3
	bne _0206BAE4
	ldr r1, _0206BAF4 ; =0x02148D80
	ldr r2, [r1, #4]
	orr r2, r3
	str r2, [r1, #4]
	bx lr
_0206BAE4:
	add r0, r0, #1
	lsl r3, r3, #1
	cmp r0, #8
	blt _0206BAD4
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_0206BAF4: .word 0x02148D80
	thumb_func_end sub_0206BACC

	thumb_func_start sub_0206BAF8
sub_0206BAF8: ; 0x0206BAF8
	ldr r1, _0206BB08 ; =0x02148D80
	mov r2, #1
	lsl r2, r0
	ldr r3, [r1, #4]
	mvn r0, r2
	and r0, r3
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0206BB08: .word 0x02148D80
	thumb_func_end sub_0206BAF8

	thumb_func_start sub_0206BB0C
sub_0206BB0C: ; 0x0206BB0C
	ldr r0, _0206BB18 ; =0x02148D80
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0206BB18: .word 0x02148D80
	thumb_func_end sub_0206BB0C

	thumb_func_start sub_0206BB1C
sub_0206BB1C: ; 0x0206BB1C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	lsl r0, r4
	bl sub_0206BA74
	cmp r0, #0
	bne _0206BB30
	mov r0, #0
	pop {r4, pc}
_0206BB30:
	ldr r2, _0206BB44 ; =0x02148D8C
	mov r0, #0x14
	add r1, r4, #0
	mul r1, r0
	add r0, r2, r1
	str r4, [r2, r1]
	mov r1, #0
	str r1, [r0, #8]
	pop {r4, pc}
	nop
_0206BB44: .word 0x02148D8C
	thumb_func_end sub_0206BB1C

	thumb_func_start sub_0206BB48
sub_0206BB48: ; 0x0206BB48
	mov r2, #1
	ldr r1, [r0]
	add r0, r2, #0
	ldr r3, _0206BB54 ; =sub_0206BAA0
	lsl r0, r1
	bx r3
	.align 2, 0
_0206BB54: .word sub_0206BAA0
	thumb_func_end sub_0206BB48

	thumb_func_start sub_0206BB58
sub_0206BB58: ; 0x0206BB58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r6, r1, #0
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	beq _0206BB70
	cmp r6, #1
	beq _0206BB7C
	cmp r6, #2
	beq _0206BB88
	b _0206BB92
_0206BB70:
	ldr r0, [sp, #0x38]
	asr r5, r0, #2
	ldr r0, [sp, #0x3c]
	asr r0, r0, #2
	sub r7, r0, r5
	b _0206BB92
_0206BB7C:
	ldr r0, [sp, #0x38]
	asr r5, r0, #1
	ldr r0, [sp, #0x3c]
	asr r0, r0, #1
	sub r7, r0, r5
	b _0206BB92
_0206BB88:
	ldr r0, [sp, #0x38]
	asr r5, r0, #3
	ldr r0, [sp, #0x3c]
	asr r0, r0, #3
	sub r7, r0, r5
_0206BB92:
	ldr r2, [sp, #0x40]
	ldr r0, _0206BC14 ; =0xD87F8000
	mov r1, #0x7f
	asr r3, r2, #0x1f
	blx sub_0208D5C4
	ldr r2, [sp, #0x48]
	asr r3, r2, #0x1f
	blx sub_0208D5C4
	mov r2, #0x10
	mov r3, #0
	sub r2, r0, r2
	mov ip, r1
	mov r2, ip
	sbc r2, r3
	bhs _0206BBB8
	mov r0, #0x10
	b _0206BBC4
_0206BBB8:
	mov r3, #0
	ldr r2, _0206BC18 ; =0x0000FFFF
	sub r2, r2, r0
	sbc r3, r1
	bhs _0206BBC4
	ldr r0, _0206BC18 ; =0x0000FFFF
_0206BBC4:
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _0206BBCE
	mov r3, #1
	b _0206BBD0
_0206BBCE:
	mov r3, #2
_0206BBD0:
	str r5, [sp]
	ldr r1, [sp, #0x44]
	str r7, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_0207D524
	ldr r1, [r4]
	mov r0, #1
	lsl r0, r1
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0207D3F4
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	bl sub_0207D9B0
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x40]
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206BC14: .word 0xD87F8000
_0206BC18: .word 0x0000FFFF
	thumb_func_end sub_0206BB58

	thumb_func_start sub_0206BC1C
sub_0206BC1C: ; 0x0206BC1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0206BC3A
	ldr r1, [r4]
	mov r0, #1
	lsl r0, r1
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0207D410
	mov r0, #0
	str r0, [r4, #8]
_0206BC3A:
	pop {r4, pc}
	thumb_func_end sub_0206BC1C

	thumb_func_start sub_0206BC3C
sub_0206BC3C: ; 0x0206BC3C
	push {r3, lr}
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0206BC52
	mov r3, #1
	ldr r2, [r0]
	add r0, r3, #0
	lsl r0, r2
	mov r2, #0
	bl sub_0207D4F4
_0206BC52:
	pop {r3, pc}
	thumb_func_end sub_0206BC3C

	thumb_func_start sub_0206BC54
sub_0206BC54: ; 0x0206BC54
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r5, r1, #0
	cmp r0, #0
	beq _0206BCA0
	ldr r2, [r4, #4]
	ldr r0, _0206BCA4 ; =0xD87F8000
	mov r1, #0x7f
	asr r3, r2, #0x1f
	blx sub_0208D5C4
	asr r3, r5, #0x1f
	add r2, r5, #0
	blx sub_0208D5C4
	add r2, r0, #0
	mov r3, #0x10
	mov r0, #0
	sub r3, r2, r3
	mov ip, r1
	mov r3, ip
	sbc r3, r0
	bhs _0206BC88
	mov r2, #0x10
	b _0206BC94
_0206BC88:
	mov r3, #0
	ldr r0, _0206BCA8 ; =0x0000FFFF
	sub r0, r0, r2
	sbc r3, r1
	bhs _0206BC94
	ldr r2, _0206BCA8 ; =0x0000FFFF
_0206BC94:
	ldr r1, [r4]
	mov r0, #1
	lsl r0, r1
	add r1, r2, #0
	bl sub_0207D4DC
_0206BCA0:
	pop {r3, r4, r5, pc}
	nop
_0206BCA4: .word 0xD87F8000
_0206BCA8: .word 0x0000FFFF
	thumb_func_end sub_0206BC54

	thumb_func_start sub_0206BCAC
sub_0206BCAC: ; 0x0206BCAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0206BCBA
	mov r0, #0
	pop {r4, pc}
_0206BCBA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0206BCD2
	ldr r0, [r4, #0x10]
	bl sub_0207D9D0
	cmp r0, #0
	bne _0206BCCE
	mov r0, #1
	pop {r4, pc}
_0206BCCE:
	mov r0, #1
	str r0, [r4, #0xc]
_0206BCD2:
	bl sub_0207DBD0
	mov r2, #1
	ldr r1, [r4]
	add r3, r2, #0
	lsl r3, r1
	tst r0, r3
	beq _0206BCE6
	add r0, r2, #0
	pop {r4, pc}
_0206BCE6:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end sub_0206BCAC

	thumb_func_start sub_0206BCEC
sub_0206BCEC: ; 0x0206BCEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0206BD18
	bl sub_0207DBD0
	ldr r1, [r5]
	mov r2, #1
	lsl r2, r1
	tst r0, r2
	beq _0206BD38
	bl sub_0207D9B0
	add r4, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r4, #0
	bl sub_0207D96C
	pop {r3, r4, r5, pc}
_0206BD18:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0206BD28
	ldr r0, [r5, #0x10]
	bl sub_0207D96C
	mov r0, #1
	str r0, [r5, #0xc]
_0206BD28:
	mov r4, #1
_0206BD2A:
	bl sub_0207DBD0
	ldr r1, [r5]
	add r2, r4, #0
	lsl r2, r1
	tst r0, r2
	bne _0206BD2A
_0206BD38:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206BCEC

	thumb_func_start sub_0206BD3C
sub_0206BD3C: ; 0x0206BD3C
	mov r2, #0x24
	mul r2, r0
	ldr r0, _0206BD48 ; =0x02149344
	strb r1, [r0, r2]
	bx lr
	nop
_0206BD48: .word 0x02149344
	thumb_func_end sub_0206BD3C

	thumb_func_start sub_0206BD4C
sub_0206BD4C: ; 0x0206BD4C
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x24
	mul r1, r0
	ldr r0, _0206BD5C ; =0x0214933C
	str r2, [r0, r1]
	bx lr
	nop
_0206BD5C: .word 0x0214933C
	thumb_func_end sub_0206BD4C

	thumb_func_start sub_0206BD60
sub_0206BD60: ; 0x0206BD60
	mov r2, #0x24
	mul r2, r0
	ldr r0, _0206BD6C ; =0x02149340
	str r1, [r0, r2]
	bx lr
	nop
_0206BD6C: .word 0x02149340
	thumb_func_end sub_0206BD60

	thumb_func_start sub_0206BD70
sub_0206BD70: ; 0x0206BD70
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r6, #0
	mov r3, #0
	ldr r2, _0206BDC8 ; =sub_0206C40C
	add r1, #0x14
	str r3, [sp]
	bl sub_0206D0DC
	add r4, r0, #0
	bne _0206BD92
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206BD92:
	mov r0, #0
	str r0, [r4, #0xc]
	str r5, [r4, #0x10]
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0x14
	add r1, r6, #0
	bl sub_0206D010
	cmp r0, #0
	bne _0206BDAE
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206BDAE:
	str r0, [r4, #8]
	mov r0, #0x24
	ldr r1, _0206BDCC ; =0x02149324
	mul r0, r5
	add r0, r1, r0
	add r0, #0xc
	add r1, r4, #0
	bl sub_0205EA64
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0206BDC8: .word sub_0206C40C
_0206BDCC: .word 0x02149324
	thumb_func_end sub_0206BD70

	thumb_func_start sub_0206BDD0
sub_0206BDD0: ; 0x0206BDD0
	ldr r3, _0206BDD8 ; =sub_0206C1F0
	ldr r0, [r0]
	bx r3
	nop
_0206BDD8: .word sub_0206C1F0
	thumb_func_end sub_0206BDD0

	thumb_func_start sub_0206BDDC
sub_0206BDDC: ; 0x0206BDDC
	ldr r3, _0206BDE4 ; =sub_0206C228
	ldr r0, [r0]
	bx r3
	nop
_0206BDE4: .word sub_0206C228
	thumb_func_end sub_0206BDDC

	thumb_func_start sub_0206BDE8
sub_0206BDE8: ; 0x0206BDE8
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0206BDE8

	thumb_func_start sub_0206BDF0
sub_0206BDF0: ; 0x0206BDF0
	ldr r1, [r0]
	cmp r1, #0
	beq _0206BDFE
	ldr r1, [r0]
	mov r2, #0
	str r2, [r1]
	str r2, [r0]
_0206BDFE:
	bx lr
	thumb_func_end sub_0206BDF0

	thumb_func_start sub_0206BE00
sub_0206BE00: ; 0x0206BE00
	mov r1, #0x24
	mul r1, r0
	ldr r0, _0206BE0C ; =0x0214932C
	ldrh r0, [r0, r1]
	bx lr
	nop
_0206BE0C: .word 0x0214932C
	thumb_func_end sub_0206BE00

	thumb_func_start sub_0206BE10
sub_0206BE10: ; 0x0206BE10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	ldr r0, _0206BE40 ; =0x02148ED8
	add r1, r4, #0
	bl sub_0205EB30
	add r1, r0, #0
	beq _0206BE3C
	ldr r6, _0206BE40 ; =0x02148ED8
_0206BE24:
	ldrh r0, [r1, #0x34]
	cmp r0, #1
	bne _0206BE32
	ldrh r0, [r1, #0x38]
	cmp r0, r5
	bne _0206BE32
	add r4, r4, #1
_0206BE32:
	add r0, r6, #0
	bl sub_0205EB30
	add r1, r0, #0
	bne _0206BE24
_0206BE3C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206BE40: .word 0x02148ED8
	thumb_func_end sub_0206BE10

	thumb_func_start sub_0206BE44
sub_0206BE44: ; 0x0206BE44
	ldr r2, [r0]
	cmp r2, #0
	beq _0206BE50
	ldr r0, [r0]
	add r0, #0x41
	strb r1, [r0]
_0206BE50:
	bx lr
	.align 2, 0
	thumb_func_end sub_0206BE44

	thumb_func_start sub_0206BE54
sub_0206BE54: ; 0x0206BE54
	ldr r2, [r0]
	cmp r2, #0
	beq _0206BE60
	ldr r0, [r0]
	add r0, #0x40
	strb r1, [r0]
_0206BE60:
	bx lr
	.align 2, 0
	thumb_func_end sub_0206BE54

	thumb_func_start sub_0206BE64
sub_0206BE64: ; 0x0206BE64
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BE80
	ldr r0, [r0]
	add r3, r0, #0
	add r3, #0x2c
	ldrb r3, [r3]
	cmp r3, #2
	beq _0206BE80
	add r0, #0x1c
	lsl r1, r1, #8
	bl sub_0206ED3C
_0206BE80:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0206BE64

	thumb_func_start sub_0206BE84
sub_0206BE84: ; 0x0206BE84
	push {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0206BE96
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D37C
_0206BE96:
	pop {r3, pc}
	thumb_func_end sub_0206BE84

	thumb_func_start sub_0206BE98
sub_0206BE98: ; 0x0206BE98
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BEAA
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D474
_0206BEAA:
	pop {r3, pc}
	thumb_func_end sub_0206BE98

	thumb_func_start sub_0206BEAC
sub_0206BEAC: ; 0x0206BEAC
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BEBE
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D494
_0206BEBE:
	pop {r3, pc}
	thumb_func_end sub_0206BEAC

	thumb_func_start sub_0206BEC0
sub_0206BEC0: ; 0x0206BEC0
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BED8
	ldr r0, [r0]
	lsl r3, r2, #1
	ldr r2, _0206BEDC ; =0x0209888C
	add r0, #0x3c
	ldrb r0, [r0]
	ldrsh r2, [r2, r3]
	bl sub_0207D38C
_0206BED8:
	pop {r3, pc}
	nop
_0206BEDC: .word 0x0209888C
	thumb_func_end sub_0206BEC0

	thumb_func_start sub_0206BEE0
sub_0206BEE0: ; 0x0206BEE0
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BEF2
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D39C
_0206BEF2:
	pop {r3, pc}
	thumb_func_end sub_0206BEE0

	thumb_func_start sub_0206BEF4
sub_0206BEF4: ; 0x0206BEF4
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BF06
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D3AC
_0206BF06:
	pop {r3, pc}
	thumb_func_end sub_0206BEF4

	thumb_func_start sub_0206BF08
sub_0206BF08: ; 0x0206BF08
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BF1A
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D3BC
_0206BF1A:
	pop {r3, pc}
	thumb_func_end sub_0206BF08

	thumb_func_start sub_0206BF1C
sub_0206BF1C: ; 0x0206BF1C
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BF2E
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D3CC
_0206BF2E:
	pop {r3, pc}
	thumb_func_end sub_0206BF1C

	thumb_func_start sub_0206BF30
sub_0206BF30: ; 0x0206BF30
	push {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0206BF42
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D35C
_0206BF42:
	pop {r3, pc}
	thumb_func_end sub_0206BF30

	thumb_func_start sub_0206BF44
sub_0206BF44: ; 0x0206BF44
	ldr r2, [r0]
	cmp r2, #0
	beq _0206BF54
	ldr r2, [r0]
	mov r3, #1
	strh r3, [r2, #0x34]
	ldr r0, [r0]
	strh r1, [r0, #0x38]
_0206BF54:
	bx lr
	.align 2, 0
	thumb_func_end sub_0206BF44

	thumb_func_start sub_0206BF58
sub_0206BF58: ; 0x0206BF58
	push {r3, r4}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BF6E
	ldr r3, [r0]
	mov r4, #2
	strh r4, [r3, #0x34]
	ldr r3, [r0]
	strh r1, [r3, #0x38]
	ldr r0, [r0]
	strh r2, [r0, #0x3a]
_0206BF6E:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_0206BF58

	thumb_func_start sub_0206BF74
sub_0206BF74: ; 0x0206BF74
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _0206BF80
	mov r0, #0
	pop {r3, pc}
_0206BF80:
	ldr r1, [r0]
	add r0, r1, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0206BF96
	add r1, #0x3c
	ldrb r0, [r1]
	bl sub_0207DBE8
	pop {r3, pc}
_0206BF96:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0206BF74

	thumb_func_start sub_0206BF9C
sub_0206BF9C: ; 0x0206BF9C
	push {r3, lr}
	ldr r3, [r0]
	cmp r3, #0
	beq _0206BFB0
	ldr r0, [r0]
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0206BA0C
	pop {r3, pc}
_0206BFB0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206BF9C

	thumb_func_start sub_0206BFB4
sub_0206BFB4: ; 0x0206BFB4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0206C01C ; =0x02148ED8
	mov r1, #0x14
	bl sub_0205EA3C
	ldr r0, _0206C020 ; =0x02148ECC
	mov r1, #0x14
	bl sub_0205EA3C
	mov r4, #0
	ldr r5, _0206C024 ; =0x02148EE4
	ldr r7, _0206C020 ; =0x02148ECC
	add r6, r4, #0
_0206BFCE:
	add r0, r5, #0
	add r0, #0x2c
	strb r6, [r0]
	add r0, r5, #0
	add r0, #0x3c
	strb r4, [r0]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205EA64
	add r4, r4, #1
	add r5, #0x44
	cmp r4, #0x10
	blt _0206BFCE
	ldr r4, _0206C028 ; =0x02149324
	mov r5, #0
	mov r6, #0x7f
	mov r7, #1
_0206BFF2:
	add r0, r4, #0
	mov r1, #0xc
	bl sub_0205EA3C
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0
	bl sub_0205EA3C
	add r0, r4, #0
	add r0, #0x20
	strb r6, [r0]
	str r7, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, #0x24
	cmp r5, #0x20
	blt _0206BFF2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C01C: .word 0x02148ED8
_0206C020: .word 0x02148ECC
_0206C024: .word 0x02148EE4
_0206C028: .word 0x02149324
	thumb_func_end sub_0206BFB4

	thumb_func_start sub_0206C02C
sub_0206C02C: ; 0x0206C02C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_0207DBB8
	str r0, [sp, #4]
	ldr r0, _0206C134 ; =0x02148ED8
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	beq _0206C130
	ldr r6, _0206C138 ; =0x0209888C
_0206C044:
	ldr r0, _0206C134 ; =0x02148ED8
	add r1, r4, #0
	bl sub_0205EB30
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0206C06A
	ldr r0, [r4, #0x30]
	bl sub_0207D9D0
	cmp r0, #0
	beq _0206C06A
	add r1, r4, #0
	add r1, #0x2d
	mov r0, #1
	strb r0, [r1]
_0206C06A:
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0206C08E
	add r0, r4, #0
	add r0, #0x3c
	ldrb r1, [r0]
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	ldr r0, [sp, #4]
	tst r0, r2
	bne _0206C08E
	add r0, r4, #0
	bl sub_0206C3B8
	b _0206C12A
_0206C08E:
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0206ED74
	add r0, r4, #0
	add r0, #0x41
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldrsh r0, [r6, r0]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x40
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldrsh r7, [r6, r0]
	ldr r0, [r4, #4]
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldrsh r5, [r6, r0]
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0206ED54
	asr r0, r0, #8
	lsl r0, r0, #1
	ldr r1, [sp]
	ldrsh r0, [r6, r0]
	add r1, r7, r1
	add r1, r5, r1
	add r5, r0, r1
	ldr r0, _0206C13C ; =0xFFFF8000
	cmp r5, r0
	bge _0206C0D6
	add r5, r0, #0
	b _0206C0DE
_0206C0D6:
	lsr r0, r0, #0x11
	cmp r5, r0
	ble _0206C0DE
	ldr r5, _0206C140 ; =0x00007FFF
_0206C0DE:
	mov r0, #0x3e
	ldrsh r0, [r4, r0]
	cmp r5, r0
	beq _0206C0F4
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	add r1, r5, #0
	bl sub_0207D36C
	strh r5, [r4, #0x3e]
_0206C0F4:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _0206C110
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0206ED84
	cmp r0, #0
	beq _0206C110
	add r0, r4, #0
	bl sub_0206C33C
_0206C110:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0206C12A
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D330
	add r4, #0x2f
	mov r0, #0
	strb r0, [r4]
_0206C12A:
	ldr r4, [sp, #8]
	add r0, r4, #0
	bne _0206C044
_0206C130:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0206C134: .word 0x02148ED8
_0206C138: .word 0x0209888C
_0206C13C: .word 0xFFFF8000
_0206C140: .word 0x00007FFF
	thumb_func_end sub_0206C02C

	thumb_func_start sub_0206C144
sub_0206C144: ; 0x0206C144
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0x24
	add r5, r0, #0
	mul r2, r1
	ldr r3, _0206C1A4 ; =0x02149324
	ldr r1, [r5]
	add r4, r3, r2
	cmp r1, #0
	beq _0206C15C
	bl sub_0206BDF0
_0206C15C:
	ldrh r1, [r4, #8]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blo _0206C186
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EB30
	cmp r0, #0
	bne _0206C174
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206C174:
	add r1, r0, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r6, r1
	bge _0206C182
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206C182:
	bl sub_0206C33C
_0206C186:
	add r0, r6, #0
	bl sub_0206C36C
	add r6, r0, #0
	bne _0206C194
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206C194:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0206C2C8
	str r5, [r6]
	str r6, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206C1A4: .word 0x02149324
	thumb_func_end sub_0206C144

	thumb_func_start sub_0206C1A8
sub_0206C1A8: ; 0x0206C1A8
	ldr r3, _0206C1AC ; =sub_0206C3B8
	bx r3
	.align 2, 0
_0206C1AC: .word sub_0206C3B8
	thumb_func_end sub_0206C1A8

	thumb_func_start sub_0206C1B0
sub_0206C1B0: ; 0x0206C1B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x3c
	ldrb r0, [r0]
	ldr r4, [r5, #4]
	bl sub_0207D314
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	beq _0206C1D0
	add r0, r5, #0
	add r0, #0x3c
	ldrb r0, [r0]
	ldr r1, _0206C1EC ; =0x0000FFFF
	bl sub_0207D3DC
_0206C1D0:
	add r0, r5, #0
	bl sub_0206C288
	bl sub_0207D9B0
	str r0, [r5, #0x30]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x2f
	strb r1, [r0]
	add r5, #0x2c
	strb r1, [r5]
	pop {r3, r4, r5, pc}
	nop
_0206C1EC: .word 0x0000FFFF
	thumb_func_end sub_0206C1B0

	thumb_func_start sub_0206C1F0
sub_0206C1F0: ; 0x0206C1F0
	push {r4, lr}
	add r4, r0, #0
	add r2, r1, #0
	cmp r4, #0
	beq _0206C224
	add r1, r4, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _0206C224
	cmp r2, #0
	bne _0206C20E
	bl sub_0206C33C
	pop {r4, pc}
_0206C20E:
	add r0, #0x1c
	mov r1, #0
	bl sub_0206ED3C
	add r0, r4, #0
	mov r1, #0
	bl sub_0206C440
	mov r0, #2
	add r4, #0x2c
	strb r0, [r4]
_0206C224:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206C1F0

	thumb_func_start sub_0206C228
sub_0206C228: ; 0x0206C228
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _0206C248
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r4, r0
	beq _0206C248
	add r0, r5, #0
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D344
	add r5, #0x2e
	strb r4, [r5]
_0206C248:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206C228

	thumb_func_start sub_0206C24C
sub_0206C24C: ; 0x0206C24C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r7, _0206C284 ; =0x02149324
	mov r1, #0x24
	add r5, r0, #0
	mul r5, r1
	add r0, r7, r5
	add r0, #0xc
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	bne _0206C26A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206C26A:
	add r0, r7, r5
	add r0, #0xc
	add r1, r4, #0
	bl sub_0205EAF4
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	ldr r0, [r4, #8]
	bl sub_0206D06C
	ldr r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C284: .word 0x02149324
	thumb_func_end sub_0206C24C

	thumb_func_start sub_0206C288
sub_0206C288: ; 0x0206C288
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r0, #0x2e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2f
	strb r1, [r0]
	strh r1, [r4, #0x34]
	add r0, r4, #0
	strh r1, [r4, #0x3e]
	mov r1, #0x7f
	add r0, #0x40
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x41
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0206ED30
	add r4, #0x1c
	mov r1, #0x7f
	add r0, r4, #0
	lsl r1, r1, #8
	mov r2, #1
	bl sub_0206ED3C
	pop {r4, pc}
	thumb_func_end sub_0206C288

	thumb_func_start sub_0206C2C8
sub_0206C2C8: ; 0x0206C2C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl sub_0205EB30
	add r1, r0, #0
	beq _0206C2F2
_0206C2D8:
	add r0, r4, #0
	add r0, #0x3d
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x3d
	ldrb r0, [r0]
	cmp r2, r0
	blo _0206C2F2
	add r0, r5, #0
	bl sub_0205EB30
	add r1, r0, #0
	bne _0206C2D8
_0206C2F2:
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0205EABC
	str r5, [r4, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206C2C8

	thumb_func_start sub_0206C300
sub_0206C300: ; 0x0206C300
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0206C338 ; =0x02148ED8
	mov r1, #0
	bl sub_0205EB30
	add r1, r0, #0
	beq _0206C32C
	ldr r4, _0206C338 ; =0x02148ED8
_0206C312:
	add r0, r5, #0
	add r0, #0x3d
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x3d
	ldrb r0, [r0]
	cmp r2, r0
	blo _0206C32C
	add r0, r4, #0
	bl sub_0205EB30
	add r1, r0, #0
	bne _0206C312
_0206C32C:
	ldr r0, _0206C338 ; =0x02148ED8
	add r2, r5, #0
	bl sub_0205EABC
	pop {r3, r4, r5, pc}
	nop
_0206C338: .word 0x02148ED8
	thumb_func_end sub_0206C300

	thumb_func_start sub_0206C33C
sub_0206C33C: ; 0x0206C33C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bne _0206C354
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	ldr r1, _0206C368 ; =0xFFFFFD2D
	bl sub_0207D36C
_0206C354:
	add r0, r4, #0
	add r0, #0x3c
	ldrb r0, [r0]
	bl sub_0207D300
	add r0, r4, #0
	bl sub_0206C3B8
	pop {r4, pc}
	nop
_0206C368: .word 0xFFFFFD2D
	thumb_func_end sub_0206C33C

	thumb_func_start sub_0206C36C
sub_0206C36C: ; 0x0206C36C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0206C3B0 ; =0x02148ECC
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	bne _0206C398
	ldr r0, _0206C3B4 ; =0x02148ED8
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r5, r1
	bge _0206C394
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206C394:
	bl sub_0206C33C
_0206C398:
	ldr r0, _0206C3B0 ; =0x02148ECC
	add r1, r4, #0
	bl sub_0205EAF4
	add r0, r4, #0
	add r0, #0x3d
	strb r5, [r0]
	add r0, r4, #0
	bl sub_0206C300
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206C3B0: .word 0x02148ECC
_0206C3B4: .word 0x02148ED8
	thumb_func_end sub_0206C36C

	thumb_func_start sub_0206C3B8
sub_0206C3B8: ; 0x0206C3B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _0206C3C8
	mov r0, #0
	str r0, [r1]
	str r0, [r5]
_0206C3C8:
	ldr r4, [r5, #4]
	add r1, r5, #0
	add r0, r4, #0
	bl sub_0205EAF4
	mov r0, #0
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0206C3EC
	add r4, #0xc
	add r0, r4, #0
	bl sub_0205EA64
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r5, #8]
_0206C3EC:
	ldr r0, _0206C404 ; =0x02148ED8
	add r1, r5, #0
	bl sub_0205EAF4
	ldr r0, _0206C408 ; =0x02148ECC
	add r1, r5, #0
	bl sub_0205EA64
	mov r0, #0
	add r5, #0x2c
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206C404: .word 0x02148ED8
_0206C408: .word 0x02148ECC
	thumb_func_end sub_0206C3B8

	thumb_func_start sub_0206C40C
sub_0206C40C: ; 0x0206C40C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0206C438
	bl sub_0206D05C
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0206C426
	mov r0, #0
	str r0, [r1, #8]
	pop {r4, pc}
_0206C426:
	ldr r1, [r4, #0x10]
	mov r0, #0x24
	mul r0, r1
	ldr r2, _0206C43C ; =0x02149324
	add r1, r4, #0
	add r0, r2, r0
	add r0, #0xc
	bl sub_0205EAF4
_0206C438:
	pop {r4, pc}
	nop
_0206C43C: .word 0x02149324
	thumb_func_end sub_0206C40C

	thumb_func_start sub_0206C440
sub_0206C440: ; 0x0206C440
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #4]
	add r6, r1, #0
	cmp r4, #0
	beq _0206C458
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EAF4
	mov r0, #0
	str r0, [r5, #4]
_0206C458:
	ldr r0, _0206C47C ; =0x02148ED8
	add r1, r5, #0
	bl sub_0205EAF4
	add r0, r5, #0
	add r0, #0x3d
	strb r6, [r0]
	cmp r4, #0
	beq _0206C472
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206C2C8
_0206C472:
	add r0, r5, #0
	bl sub_0206C300
	pop {r4, r5, r6, pc}
	nop
_0206C47C: .word 0x02148ED8
	thumb_func_end sub_0206C440

	thumb_func_start sub_0206C480
sub_0206C480: ; 0x0206C480
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0206C4BC ; =0x021497A4
	ldr r0, [r0]
	cmp r0, #0
	bne _0206C49A
	ldr r0, _0206C4C0 ; =0x021497A8
	mov r1, #0
	bl sub_0205EA3C
	ldr r0, _0206C4BC ; =0x021497A4
	mov r1, #1
	str r1, [r0]
_0206C49A:
	ldr r0, _0206C4C4 ; =sub_0206C7C8
	str r0, [r4, #8]
	ldr r0, _0206C4C8 ; =sub_0206C7F8
	str r4, [r4, #0xc]
	str r0, [r4, #0x18]
	str r4, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bic r1, r0
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0x2c]
	pop {r4, pc}
	nop
_0206C4BC: .word 0x021497A4
_0206C4C0: .word 0x021497A8
_0206C4C4: .word sub_0206C7C8
_0206C4C8: .word sub_0206C7F8
	thumb_func_end sub_0206C480

	thumb_func_start sub_0206C4CC
sub_0206C4CC: ; 0x0206C4CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r1, r2, #0
	add r0, r4, #0
	cmp r6, #0
	ble _0206C4F4
	mov r7, #1
_0206C4DE:
	ldrb r3, [r1, r0]
	add r2, r5, r0
	add r2, #0x54
	strb r3, [r2]
	ldrb r2, [r1, r0]
	add r3, r7, #0
	add r0, r0, #1
	lsl r3, r2
	orr r4, r3
	cmp r0, r6
	blt _0206C4DE
_0206C4F4:
	add r0, r4, #0
	bl sub_0206BA74
	cmp r0, #0
	bne _0206C502
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206C502:
	str r6, [r5, #0x50]
	str r4, [r5, #0x4c]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206C4CC

	thumb_func_start sub_0206C50C
sub_0206C50C: ; 0x0206C50C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0206C520
	bl sub_0206BAA0
	mov r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
_0206C520:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206C50C

	thumb_func_start sub_0206C524
sub_0206C524: ; 0x0206C524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x44]
	add r5, r0, #0
	str r1, [sp, #0x44]
	ldr r1, [r5, #0x2c]
	str r2, [sp, #0x1c]
	lsl r1, r1, #0x1f
	add r4, r3, #0
	asr r1, r1, #0x1f
	beq _0206C540
	bl sub_0206C670
_0206C540:
	ldr r1, [sp, #0x44]
	ldr r2, [r5, #0x50]
	lsl r1, r1, #5
	add r0, r4, #0
	mul r1, r2
	blx sub_0208D868
	ldr r1, [sp, #0x44]
	mul r1, r0
	lsl r2, r1, #5
	ldr r0, [sp, #0x18]
	str r2, [r5, #0x30]
	cmp r0, #1
	bne _0206C55E
	lsr r2, r2, #1
_0206C55E:
	ldr r1, [sp, #0x40]
	add r0, r1, #0
	ldr r1, [sp, #0x44]
	mul r0, r2
	blx sub_0208D868
	str r0, [sp, #0x24]
	bl sub_0206BACC
	str r0, [r5, #0x48]
	cmp r0, #0
	bge _0206C57C
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206C57C:
	ldr r0, [r5, #0x50]
	mov r4, #0
	cmp r0, #0
	ble _0206C5D2
	ldr r0, [sp, #0x40]
	ldr r7, _0206C62C ; =0x021497F4
	lsl r0, r0, #5
	str r0, [sp, #0x20]
_0206C58C:
	add r0, r5, r4
	add r0, #0x54
	ldrb r3, [r0]
	ldr r6, [r5, #0x30]
	add r0, r6, #0
	lsl r2, r3, #3
	ldr r6, [sp, #0x1c]
	mul r0, r4
	add r0, r6, r0
	str r0, [r7, r2]
	add r1, r7, r2
	mov r0, #0
	str r0, [r1, #4]
	str r0, [sp]
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x18]
	lsr r0, r0, #2
	str r0, [sp, #4]
	mov r0, #0x7f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	mov r0, #0x40
	str r0, [sp, #0x14]
	add r0, r3, #0
	ldr r2, [r7, r2]
	mov r3, #1
	bl sub_0207D524
	ldr r0, [r5, #0x50]
	add r4, r4, #1
	cmp r4, r0
	blt _0206C58C
_0206C5D2:
	str r5, [sp]
	ldr r1, [sp, #0x24]
	ldr r0, [r5, #0x48]
	ldr r3, _0206C630 ; =sub_0206C754
	add r2, r1, #0
	bl sub_0207D450
	ldr r0, _0206C634 ; =0x021497A8
	add r1, r5, #0
	bl sub_0205EA64
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x48]
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x4c]
	str r0, [r5, #0x3c]
	mov r0, #0
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	ldr r1, [r5, #0x2c]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r5, #0x2c]
	blx OS_DisableInterrupts
	add r4, r0, #0
	mov r0, #1
	str r0, [r5, #0x34]
	add r0, r5, #0
	mov r1, #0
	bl sub_0206C760
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x34]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206C62C: .word 0x021497F4
_0206C630: .word sub_0206C754
_0206C634: .word 0x021497A8
	thumb_func_end sub_0206C524

	thumb_func_start sub_0206C638
sub_0206C638: ; 0x0206C638
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r4, #0x48]
	mov r2, #1
	ldr r0, [r4, #0x4c]
	mov r1, #0
	lsl r2, r3
	add r3, r1, #0
	bl sub_0207D3F4
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	bne _0206C66C
	add r0, r4, #0
	add r0, #8
	bl sub_0207F5E8
	add r0, r4, #0
	add r0, #0x18
	bl sub_0207F600
	ldr r1, [r4, #0x2c]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x2c]
_0206C66C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206C638

	thumb_func_start sub_0206C670
sub_0206C670: ; 0x0206C670
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r1, r1, #0x1f
	asr r1, r1, #0x1f
	beq _0206C67E
	bl sub_0206C6E4
_0206C67E:
	pop {r3, pc}
	thumb_func_end sub_0206C670

	thumb_func_start sub_0206C680
sub_0206C680: ; 0x0206C680
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [r5, #0x44]
	ldr r0, [r5, #0x50]
	mov r4, #0
	cmp r0, #0
	ble _0206C6BC
	ldr r7, _0206C6C0 ; =0x021497F4
_0206C690:
	add r0, r5, r4
	add r0, #0x54
	ldrb r6, [r0]
	ldr r0, [r5, #0x44]
	lsl r1, r6, #3
	add r1, r7, r1
	ldr r1, [r1, #4]
	add r0, r0, r1
	bl sub_0207DD2C
	add r2, r0, #0
	lsl r1, r2, #0x18
	mov r0, #1
	lsl r0, r6
	lsr r1, r1, #0x18
	asr r2, r2, #8
	bl sub_0207D4F4
	ldr r0, [r5, #0x50]
	add r4, r4, #1
	cmp r4, r0
	blt _0206C690
_0206C6BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C6C0: .word 0x021497F4
	thumb_func_end sub_0206C680

	thumb_func_start sub_0206C6C4
sub_0206C6C4: ; 0x0206C6C4
	push {r3, lr}
	ldr r3, [r0, #0x50]
	sub r3, r3, #1
	cmp r1, r3
	bgt _0206C6E0
	add r0, r0, r1
	add r0, #0x54
	ldrb r1, [r0]
	mov r3, #1
	add r0, r3, #0
	lsl r0, r1
	add r1, r2, #0
	bl sub_0207D50C
_0206C6E0:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0206C6C4

	thumb_func_start sub_0206C6E4
sub_0206C6E4: ; 0x0206C6E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _0206C72A
	ldr r3, [r4, #0x48]
	mov r2, #1
	ldr r0, [r4, #0x4c]
	mov r1, #0
	lsl r2, r3
	add r3, r1, #0
	bl sub_0207D410
	add r0, r4, #0
	add r0, #8
	bl sub_0207F62C
	add r0, r4, #0
	add r0, #0x18
	bl sub_0207F63C
	ldr r1, [r4, #0x2c]
	mov r0, #2
	bic r1, r0
	str r1, [r4, #0x2c]
	bl sub_0207D9B0
	add r5, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r5, #0
	bl sub_0207D96C
_0206C72A:
	add r0, r4, #0
	bl sub_0206C734
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206C6E4

	thumb_func_start sub_0206C734
sub_0206C734: ; 0x0206C734
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_0206BAF8
	ldr r0, _0206C750 ; =0x021497A8
	add r1, r4, #0
	bl sub_0205EAF4
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
_0206C750: .word 0x021497A8
	thumb_func_end sub_0206C734

	thumb_func_start sub_0206C754
sub_0206C754: ; 0x0206C754
	ldr r3, _0206C75C ; =sub_0206C760
	mov r1, #1
	bx r3
	nop
_0206C75C: .word sub_0206C760
	thumb_func_end sub_0206C754

	thumb_func_start sub_0206C760
sub_0206C760: ; 0x0206C760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	blx sub_0208D868
	add r3, r0, #0
	ldr r0, [r4, #0x40]
	add r2, r3, #0
	ldr r1, [r4, #0x50]
	mul r2, r0
	mov r5, #0
	cmp r1, #0
	ble _0206C79A
	ldr r6, _0206C7C0 ; =0x021497B4
	ldr r0, _0206C7C4 ; =0x021497F4
_0206C784:
	add r1, r4, r5
	add r1, #0x54
	ldrb r1, [r1]
	add r5, r5, #1
	lsl r1, r1, #3
	ldr r1, [r0, r1]
	add r1, r1, r2
	stmia r6!, {r1}
	ldr r1, [r4, #0x50]
	cmp r5, r1
	blt _0206C784
_0206C79A:
	ldr r0, [r4, #0x28]
	ldr r2, _0206C7C0 ; =0x021497B4
	str r0, [sp]
	ldr r0, [r4, #0x3c]
	str r0, [sp, #4]
	ldr r5, [r4, #0x38]
	add r0, r7, #0
	blx r5
	ldr r0, [r4, #0x40]
	add r1, r0, #1
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	blt _0206C7BA
	mov r0, #0
	str r0, [r4, #0x40]
_0206C7BA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206C7C0: .word 0x021497B4
_0206C7C4: .word 0x021497F4
	thumb_func_end sub_0206C760

	thumb_func_start sub_0206C7C8
sub_0206C7C8: ; 0x0206C7C8
	push {r4, lr}
	add r3, r0, #0
	ldr r0, [r3, #0x2c]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _0206C7F6
	ldr r0, [r3, #0x4c]
	ldr r3, [r3, #0x48]
	mov r2, #1
	mov r1, #0
	lsl r2, r3
	add r3, r1, #0
	bl sub_0207D410
	bl sub_0207D9B0
	add r4, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r4, #0
	bl sub_0207D96C
_0206C7F6:
	pop {r4, pc}
	thumb_func_end sub_0206C7C8

	thumb_func_start sub_0206C7F8
sub_0206C7F8: ; 0x0206C7F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _0206C836
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _0206C826
	mov r6, #1
_0206C80C:
	blx OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0206C760
	add r0, r4, #0
	blx OS_RestoreInterrupts
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _0206C80C
_0206C826:
	ldr r3, [r5, #0x48]
	mov r2, #1
	ldr r0, [r5, #0x4c]
	mov r1, #0
	lsl r2, r3
	add r3, r1, #0
	bl sub_0207D3F4
_0206C836:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206C7F8

	thumb_func_start sub_0206C838
sub_0206C838: ; 0x0206C838
	ldr r0, _0206C844 ; =0x02149874
	mov r1, #0
	str r1, [r0]
	ldr r0, _0206C848 ; =0x021498BC
	str r1, [r0]
	bx lr
	.align 2, 0
_0206C844: .word 0x02149874
_0206C848: .word 0x021498BC
	thumb_func_end sub_0206C838

	thumb_func_start sub_0206C84C
sub_0206C84C: ; 0x0206C84C
	push {r3, r4, r5, lr}
	ldr r4, _0206C898 ; =0x021498BC
	ldr r0, [r4]
	cmp r0, #0
	beq _0206C896
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0206C896
	add r5, r4, #0
	add r5, #0x3c
	add r0, r5, #0
	bl sub_0206ED74
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0206C87C
	add r0, r5, #0
	bl sub_0206ED84
	cmp r0, #0
	beq _0206C87C
	bl sub_0206C89C
	pop {r3, r4, r5, pc}
_0206C87C:
	add r0, r5, #0
	bl sub_0206ED54
	asr r5, r0, #8
	ldr r0, [r4, #0x50]
	cmp r5, r0
	beq _0206C896
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	mov r2, #0
	bl sub_0207D4F4
	str r5, [r4, #0x50]
_0206C896:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206C898: .word 0x021498BC
	thumb_func_end sub_0206C84C

	thumb_func_start sub_0206C89C
sub_0206C89C: ; 0x0206C89C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206C928 ; =0x021498BC
	ldr r0, [r4]
	cmp r0, #0
	beq _0206C926
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	blt _0206C8B0
	mov r5, #1
	b _0206C8B2
_0206C8B0:
	mov r5, #0
_0206C8B2:
	cmp r5, #0
	beq _0206C8BE
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	b _0206C8C0
_0206C8BE:
	mov r2, #0
_0206C8C0:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	mov r3, #0
	bl sub_0207D410
	cmp r5, #0
	beq _0206C8F2
	bl sub_0207D9B0
	add r6, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r6, #0
	bl sub_0207D96C
	ldr r6, _0206C92C ; =0x0214987C
	mov r7, #0
_0206C8E4:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r7, #0
	bl sub_0207AD34
	cmp r0, #0
	bne _0206C8E4
_0206C8F2:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0206C8FC
	bl sub_0206BABC
_0206C8FC:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0206C906
	bl sub_0206BAA0
_0206C906:
	cmp r5, #0
	beq _0206C910
	ldr r0, [r4, #0x2c]
	bl sub_0206BAF8
_0206C910:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0206C922
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0207D5B4
_0206C922:
	mov r0, #0
	str r0, [r4]
_0206C926:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206C928: .word 0x021498BC
_0206C92C: .word 0x0214987C
	thumb_func_end sub_0206C89C

	thumb_func_start sub_0206C930
sub_0206C930: ; 0x0206C930
	push {r4, lr}
	ldr r3, _0206C968 ; =0x021498BC
	ldr r0, [r3]
	cmp r0, #0
	beq _0206C966
	ldr r1, [r3, #0x2c]
	cmp r1, #0
	blt _0206C948
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	b _0206C94A
_0206C948:
	mov r2, #0
_0206C94A:
	ldr r0, [r3, #0x24]
	ldr r1, [r3, #0x28]
	mov r3, #0
	bl sub_0207D410
	bl sub_0207D9B0
	add r4, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r4, #0
	bl sub_0207D96C
_0206C966:
	pop {r4, pc}
	.align 2, 0
_0206C968: .word 0x021498BC
	thumb_func_end sub_0206C930

	thumb_func_start sub_0206C96C
sub_0206C96C: ; 0x0206C96C
	push {r4, lr}
	ldr r4, _0206C9B8 ; =0x021498BC
	ldr r0, [r4]
	cmp r0, #0
	beq _0206C9B6
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x14]
	blx MIi_CpuClear32
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, #0
	blx MIi_CpuClear32
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	blx sub_0207B0AC
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	blx sub_0207B0AC
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	blt _0206C9AA
	mov r0, #1
	add r2, r0, #0
	lsl r2, r1
	b _0206C9AC
_0206C9AA:
	mov r2, #0
_0206C9AC:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	mov r3, #0
	bl sub_0207D3F4
_0206C9B6:
	pop {r4, pc}
	.align 2, 0
_0206C9B8: .word 0x021498BC
	thumb_func_end sub_0206C96C

	thumb_func_start sub_0206C9BC
sub_0206C9BC: ; 0x0206C9BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r2, r5, #0
	mov r0, #0
	add r2, #0x90
	str r0, [r2]
	add r2, r5, #0
	add r2, #0x88
	str r0, [r2]
	add r2, r5, #0
	add r2, #0x8c
	str r0, [r2]
	add r2, r5, #0
	add r2, #0x94
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x7c
	add r6, r3, #0
	bl sub_02070CC8
	cmp r0, #0
	bne _0206C9EE
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206C9EE:
	add r0, r5, #0
	add r0, #0x34
	bl sub_02070C7C
	add r3, r5, #0
	add r3, #0x7c
	add r0, r5, #0
	ldmia r3!, {r1, r2}
	add r0, #0x34
	bl sub_02070D38
	cmp r0, #0
	bne _0206CA0C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206CA0C:
	mov r0, #1
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0206CA30
	cmp r0, #0
	bne _0206CA22
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206CA22:
	ldr r0, _0206CA2C ; =0x02149910
	str r5, [r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0206CA2C: .word 0x02149910
	thumb_func_end sub_0206C9BC

	thumb_func_start sub_0206CA30
sub_0206CA30: ; 0x0206CA30
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	add r6, r2, #0
	add r0, #0x34
	add r2, r1, #0
	bl sub_02070E28
	cmp r0, #0
	bne _0206CA4E
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CA4E:
	add r0, r5, #0
	add r0, #0x34
	add r1, r5, #0
	mov r2, #0x30
	bl sub_02070E40
	cmp r0, #0x30
	beq _0206CA64
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CA64:
	cmp r4, #0
	bne _0206CA6A
	b _0206CB7A
_0206CA6A:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x1c]
	ldr r2, _0206CB80 ; =sub_0206CFF8
	add r0, r4, #0
	add r3, r5, #0
	bl sub_0206D0DC
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _0206CA90
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CA90:
	add r0, r5, #0
	ldr r1, [r5, #0x18]
	add r0, #0x34
	mov r2, #0
	bl sub_02070E28
	cmp r0, #0
	bne _0206CAA6
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CAA6:
	add r1, r5, #0
	add r1, #0x90
	add r0, r5, #0
	ldr r1, [r1]
	ldr r2, [r5, #0x1c]
	add r0, #0x34
	bl sub_02070E40
	ldr r1, [r5, #0x1c]
	cmp r0, r1
	beq _0206CAC2
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CAC2:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x24]
	ldr r2, _0206CB84 ; =sub_0206D000
	add r0, r4, #0
	add r3, r5, #0
	bl sub_0206D0DC
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _0206CAE8
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CAE8:
	add r0, r5, #0
	ldr r1, [r5, #0x20]
	add r0, #0x34
	mov r2, #0
	bl sub_02070E28
	cmp r0, #0
	bne _0206CAFE
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CAFE:
	add r1, r5, #0
	add r1, #0x88
	add r0, r5, #0
	ldr r1, [r1]
	ldr r2, [r5, #0x24]
	add r0, #0x34
	bl sub_02070E40
	ldr r1, [r5, #0x24]
	cmp r0, r1
	beq _0206CB1A
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CB1A:
	cmp r6, #0
	beq _0206CB7A
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0206CB7A
	mov r0, #0
	str r0, [sp]
	ldr r2, _0206CB88 ; =sub_0206D008
	add r0, r4, #0
	add r3, r5, #0
	bl sub_0206D0DC
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _0206CB48
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CB48:
	add r0, r5, #0
	ldr r1, [r5, #0x10]
	add r0, #0x34
	mov r2, #0
	bl sub_02070E28
	cmp r0, #0
	bne _0206CB5E
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CB5E:
	add r1, r5, #0
	add r1, #0x8c
	add r0, r5, #0
	ldr r1, [r1]
	ldr r2, [r5, #0x14]
	add r0, #0x34
	bl sub_02070E40
	ldr r1, [r5, #0x14]
	cmp r0, r1
	beq _0206CB7A
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0206CB7A:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0206CB80: .word sub_0206CFF8
_0206CB84: .word sub_0206D000
_0206CB88: .word sub_0206D008
	thumb_func_end sub_0206CA30

	thumb_func_start sub_0206CB8C
sub_0206CB8C: ; 0x0206CB8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x30
	blx MIi_CpuCopy32
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _0206CBA6
	mov r1, #0
	b _0206CBA8
_0206CBA6:
	add r1, r4, r0
_0206CBA8:
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _0206CBB8
	mov r1, #0
	b _0206CBBA
_0206CBB8:
	add r1, r4, r0
_0206CBBA:
	add r0, r5, #0
	add r0, #0x88
	str r1, [r0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0206CBCA
	mov r1, #0
	b _0206CBCC
_0206CBCA:
	add r1, r4, r0
_0206CBCC:
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0]
	add r1, r5, #0
	mov r0, #0
	add r1, #0x94
	str r0, [r1]
	add r1, r5, #0
	add r1, #0x88
	ldr r2, [r1]
	ldr r1, [r2, #8]
	cmp r1, #0
	bls _0206CC0C
	add r1, r0, #0
	add r6, r0, #0
_0206CBEA:
	add r2, #0xc
	add r3, r2, r1
	ldr r2, [r2, r1]
	cmp r2, #0
	bne _0206CBF8
	add r2, r6, #0
	b _0206CBFA
_0206CBF8:
	add r2, r4, r2
_0206CBFA:
	str r2, [r3, #8]
	add r2, r5, #0
	add r2, #0x88
	ldr r2, [r2]
	add r0, r0, #1
	ldr r3, [r2, #8]
	add r1, #0x10
	cmp r0, r3
	blo _0206CBEA
_0206CC0C:
	mov r0, #0
	str r0, [r5, #0x30]
	ldr r0, _0206CC18 ; =0x02149910
	str r5, [r0]
	pop {r4, r5, r6, pc}
	nop
_0206CC18: .word 0x02149910
	thumb_func_end sub_0206CB8C

	thumb_func_start sub_0206CC1C
sub_0206CC1C: ; 0x0206CC1C
	ldr r1, _0206CC28 ; =0x02149910
	ldr r2, [r1]
	str r0, [r1]
	add r0, r2, #0
	bx lr
	nop
_0206CC28: .word 0x02149910
	thumb_func_end sub_0206CC1C

	thumb_func_start sub_0206CC2C
sub_0206CC2C: ; 0x0206CC2C
	ldr r0, _0206CC34 ; =0x02149910
	ldr r0, [r0]
	bx lr
	nop
_0206CC34: .word 0x02149910
	thumb_func_end sub_0206CC2C

	thumb_func_start sub_0206CC38
sub_0206CC38: ; 0x0206CC38
	push {r3, lr}
	bl sub_0206CC4C
	cmp r0, #0
	bne _0206CC46
	mov r0, #0
	pop {r3, pc}
_0206CC46:
	add r0, r0, #4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0206CC38

	thumb_func_start sub_0206CC4C
sub_0206CC4C: ; 0x0206CC4C
	ldr r1, _0206CC94 ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #8]
	cmp r2, #0
	bne _0206CC60
	mov r3, #0
	b _0206CC62
_0206CC60:
	add r3, r3, r2
_0206CC62:
	cmp r3, #0
	bne _0206CC6A
	mov r0, #0
	bx lr
_0206CC6A:
	cmp r0, #0
	bge _0206CC72
	mov r0, #0
	bx lr
_0206CC72:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CC7C
	mov r0, #0
	bx lr
_0206CC7C:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CC8E
	mov r0, #0
	bx lr
_0206CC8E:
	add r0, r0, r2
	bx lr
	nop
_0206CC94: .word 0x02149910
	thumb_func_end sub_0206CC4C

	thumb_func_start sub_0206CC98
sub_0206CC98: ; 0x0206CC98
	ldr r1, _0206CCE0 ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0xc]
	cmp r2, #0
	bne _0206CCAC
	mov r3, #0
	b _0206CCAE
_0206CCAC:
	add r3, r3, r2
_0206CCAE:
	cmp r3, #0
	bne _0206CCB6
	mov r0, #0
	bx lr
_0206CCB6:
	cmp r0, #0
	bge _0206CCBE
	mov r0, #0
	bx lr
_0206CCBE:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CCC8
	mov r0, #0
	bx lr
_0206CCC8:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CCDA
	mov r0, #0
	bx lr
_0206CCDA:
	add r0, r0, r2
	bx lr
	nop
_0206CCE0: .word 0x02149910
	thumb_func_end sub_0206CC98

	thumb_func_start sub_0206CCE4
sub_0206CCE4: ; 0x0206CCE4
	ldr r1, _0206CD2C ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bne _0206CCF8
	mov r3, #0
	b _0206CCFA
_0206CCF8:
	add r3, r3, r2
_0206CCFA:
	cmp r3, #0
	bne _0206CD02
	mov r0, #0
	bx lr
_0206CD02:
	cmp r0, #0
	bge _0206CD0A
	mov r0, #0
	bx lr
_0206CD0A:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CD14
	mov r0, #0
	bx lr
_0206CD14:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CD26
	mov r0, #0
	bx lr
_0206CD26:
	add r0, r0, r2
	bx lr
	nop
_0206CD2C: .word 0x02149910
	thumb_func_end sub_0206CCE4

	thumb_func_start sub_0206CD30
sub_0206CD30: ; 0x0206CD30
	ldr r1, _0206CD78 ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0x14]
	cmp r2, #0
	bne _0206CD44
	mov r3, #0
	b _0206CD46
_0206CD44:
	add r3, r3, r2
_0206CD46:
	cmp r3, #0
	bne _0206CD4E
	mov r0, #0
	bx lr
_0206CD4E:
	cmp r0, #0
	bge _0206CD56
	mov r0, #0
	bx lr
_0206CD56:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CD60
	mov r0, #0
	bx lr
_0206CD60:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CD72
	mov r0, #0
	bx lr
_0206CD72:
	add r0, r0, r2
	bx lr
	nop
_0206CD78: .word 0x02149910
	thumb_func_end sub_0206CD30

	thumb_func_start sub_0206CD7C
sub_0206CD7C: ; 0x0206CD7C
	ldr r1, _0206CDC4 ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0x24]
	cmp r2, #0
	bne _0206CD90
	mov r3, #0
	b _0206CD92
_0206CD90:
	add r3, r3, r2
_0206CD92:
	cmp r3, #0
	bne _0206CD9A
	mov r0, #0
	bx lr
_0206CD9A:
	cmp r0, #0
	bge _0206CDA2
	mov r0, #0
	bx lr
_0206CDA2:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CDAC
	mov r0, #0
	bx lr
_0206CDAC:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CDBE
	mov r0, #0
	bx lr
_0206CDBE:
	add r0, r0, r2
	bx lr
	nop
_0206CDC4: .word 0x02149910
	thumb_func_end sub_0206CD7C

	thumb_func_start sub_0206CDC8
sub_0206CDC8: ; 0x0206CDC8
	ldr r1, _0206CE10 ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0x18]
	cmp r2, #0
	bne _0206CDDC
	mov r3, #0
	b _0206CDDE
_0206CDDC:
	add r3, r3, r2
_0206CDDE:
	cmp r3, #0
	bne _0206CDE6
	mov r0, #0
	bx lr
_0206CDE6:
	cmp r0, #0
	bge _0206CDEE
	mov r0, #0
	bx lr
_0206CDEE:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CDF8
	mov r0, #0
	bx lr
_0206CDF8:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CE0A
	mov r0, #0
	bx lr
_0206CE0A:
	add r0, r0, r2
	bx lr
	nop
_0206CE10: .word 0x02149910
	thumb_func_end sub_0206CDC8

	thumb_func_start sub_0206CE14
sub_0206CE14: ; 0x0206CE14
	ldr r1, _0206CE5C ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0x20]
	cmp r2, #0
	bne _0206CE28
	mov r3, #0
	b _0206CE2A
_0206CE28:
	add r3, r3, r2
_0206CE2A:
	cmp r3, #0
	bne _0206CE32
	mov r0, #0
	bx lr
_0206CE32:
	cmp r0, #0
	bge _0206CE3A
	mov r0, #0
	bx lr
_0206CE3A:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CE44
	mov r0, #0
	bx lr
_0206CE44:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CE56
	mov r0, #0
	bx lr
_0206CE56:
	add r0, r0, r2
	bx lr
	nop
_0206CE5C: .word 0x02149910
	thumb_func_end sub_0206CE14

	thumb_func_start sub_0206CE60
sub_0206CE60: ; 0x0206CE60
	ldr r1, _0206CEA8 ; =0x02149910
	ldr r1, [r1]
	add r2, r1, #0
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, [r3, #0x1c]
	cmp r2, #0
	bne _0206CE74
	mov r3, #0
	b _0206CE76
_0206CE74:
	add r3, r3, r2
_0206CE76:
	cmp r3, #0
	bne _0206CE7E
	mov r0, #0
	bx lr
_0206CE7E:
	cmp r0, #0
	bge _0206CE86
	mov r0, #0
	bx lr
_0206CE86:
	ldr r2, [r3]
	cmp r0, r2
	blo _0206CE90
	mov r0, #0
	bx lr
_0206CE90:
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r2, [r0, #4]
	add r1, #0x90
	ldr r0, [r1]
	cmp r2, #0
	bne _0206CEA2
	mov r0, #0
	bx lr
_0206CEA2:
	add r0, r0, r2
	bx lr
	nop
_0206CEA8: .word 0x02149910
	thumb_func_end sub_0206CE60

	thumb_func_start sub_0206CEAC
sub_0206CEAC: ; 0x0206CEAC
	ldr r1, _0206CEC8 ; =0x02149910
	ldr r1, [r1]
	add r1, #0x88
	ldr r2, [r1]
	ldr r1, [r2, #8]
	cmp r0, r1
	blo _0206CEBE
	mov r0, #0
	bx lr
_0206CEBE:
	lsl r0, r0, #4
	add r0, r2, r0
	ldr r0, [r0, #0xc]
	bx lr
	nop
_0206CEC8: .word 0x02149910
	thumb_func_end sub_0206CEAC

	thumb_func_start sub_0206CECC
sub_0206CECC: ; 0x0206CECC
	ldr r1, _0206CEE8 ; =0x02149910
	ldr r1, [r1]
	add r1, #0x88
	ldr r2, [r1]
	ldr r1, [r2, #8]
	cmp r0, r1
	blo _0206CEDE
	mov r0, #0
	bx lr
_0206CEDE:
	lsl r0, r0, #4
	add r0, r2, r0
	ldr r0, [r0, #0x10]
	bx lr
	nop
_0206CEE8: .word 0x02149910
	thumb_func_end sub_0206CECC

	thumb_func_start sub_0206CEEC
sub_0206CEEC: ; 0x0206CEEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	ldr r1, _0206CF8C ; =0x02149910
	str r2, [sp]
	ldr r1, [r1]
	add r6, r3, #0
	str r1, [sp, #4]
	add r1, #0x88
	ldr r2, [r1]
	ldr r1, [r2, #8]
	cmp r0, r1
	blo _0206CF0E
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0206CF0E:
	add r2, #0xc
	lsl r0, r0, #4
	add r0, r2, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r0, #0x94
	ldr r0, [r0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _0206CF26
	ldr r0, [sp]
	str r0, [sp, #8]
_0206CF26:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0206CF84
	ldr r0, [sp, #4]
	add r0, #0x34
	str r0, [sp, #4]
_0206CF34:
	ldr r0, [sp]
	sub r5, r0, r4
	ldr r0, [sp, #8]
	cmp r5, r0
	ble _0206CF40
	add r5, r0, #0
_0206CF40:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	sub r0, r0, r6
	cmp r5, r0
	bls _0206CF4C
	add r5, r0, #0
_0206CF4C:
	cmp r5, #0
	beq _0206CF84
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, r6
	bl sub_02070E28
	cmp r0, #0
	bne _0206CF6A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0206CF6A:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02070E40
	cmp r0, #0
	blt _0206CF86
	add r4, r4, r0
	add r6, r6, r0
	add r7, r7, r0
	ldr r0, [sp]
	cmp r4, r0
	blt _0206CF34
_0206CF84:
	add r0, r4, #0
_0206CF86:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206CF8C: .word 0x02149910
	thumb_func_end sub_0206CEEC

	thumb_func_start sub_0206CF90
sub_0206CF90: ; 0x0206CF90
	ldr r1, _0206CFA0 ; =0x02149910
	ldr r1, [r1]
	ldr r2, [r1, #0x7c]
	add r1, #0x80
	ldr r1, [r1]
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_0206CFA0: .word 0x02149910
	thumb_func_end sub_0206CF90

	thumb_func_start sub_0206CFA4
sub_0206CFA4: ; 0x0206CFA4
	ldr r0, _0206CFB0 ; =0x02149910
	ldr r0, [r0]
	add r0, #0x84
	ldr r0, [r0]
	bx lr
	nop
_0206CFB0: .word 0x02149910
	thumb_func_end sub_0206CFA4

	thumb_func_start sub_0206CFB4
sub_0206CFB4: ; 0x0206CFB4
	ldr r1, _0206CFD0 ; =0x02149910
	ldr r1, [r1]
	add r1, #0x88
	ldr r2, [r1]
	ldr r1, [r2, #8]
	cmp r0, r1
	blo _0206CFC6
	mov r0, #0
	bx lr
_0206CFC6:
	lsl r0, r0, #4
	add r0, r2, r0
	ldr r0, [r0, #0x14]
	bx lr
	nop
_0206CFD0: .word 0x02149910
	thumb_func_end sub_0206CFB4

	thumb_func_start sub_0206CFD4
sub_0206CFD4: ; 0x0206CFD4
	ldr r2, _0206CFE4 ; =0x02149910
	lsl r0, r0, #4
	ldr r2, [r2]
	add r2, #0x88
	ldr r2, [r2]
	add r0, r2, r0
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
_0206CFE4: .word 0x02149910
	thumb_func_end sub_0206CFD4

	thumb_func_start sub_0206CFE8
sub_0206CFE8: ; 0x0206CFE8
	ldr r1, _0206CFF4 ; =0x02149910
	ldr r1, [r1]
	add r1, #0x94
	str r0, [r1]
	bx lr
	nop
_0206CFF4: .word 0x02149910
	thumb_func_end sub_0206CFE8

	thumb_func_start sub_0206CFF8
sub_0206CFF8: ; 0x0206CFF8
	mov r0, #0
	add r2, #0x90
	str r0, [r2]
	bx lr
	thumb_func_end sub_0206CFF8

	thumb_func_start sub_0206D000
sub_0206D000: ; 0x0206D000
	mov r0, #0
	add r2, #0x88
	str r0, [r2]
	bx lr
	thumb_func_end sub_0206D000

	thumb_func_start sub_0206D008
sub_0206D008: ; 0x0206D008
	mov r0, #0
	add r2, #0x8c
	str r0, [r2]
	bx lr
	thumb_func_end sub_0206D008

	thumb_func_start sub_0206D010
sub_0206D010: ; 0x0206D010
	push {r3, r4, r5, lr}
	add r2, r0, r1
	mov r1, #3
	add r4, r0, #3
	bic r4, r1
	cmp r4, r2
	bls _0206D022
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206D022:
	sub r1, r2, r4
	cmp r1, #0x10
	bhs _0206D02C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206D02C:
	add r0, r4, #0
	add r0, #0x10
	sub r1, #0x10
	mov r2, #0
	bl sub_0205F250
	add r5, r0, #0
	bne _0206D040
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206D040:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206D1FC
	cmp r0, #0
	bne _0206D056
	add r0, r5, #0
	bl sub_0205F270
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206D056:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206D010

	thumb_func_start sub_0206D05C
sub_0206D05C: ; 0x0206D05C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206D06C
	ldr r0, [r4]
	bl sub_0205F270
	pop {r4, pc}
	thumb_func_end sub_0206D05C

	thumb_func_start sub_0206D06C
sub_0206D06C: ; 0x0206D06C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	str r0, [sp]
	add r0, r0, #4
	add r1, r7, #0
	bl sub_0205EB40
	add r4, r0, #0
	beq _0206D0C2
_0206D07E:
	add r0, r4, #0
	mov r1, #0
	bl sub_0205EB40
	add r5, r0, #0
	beq _0206D0AA
_0206D08A:
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _0206D09E
	add r0, r5, #0
	ldr r1, [r5, #8]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, #0x20
	blx r6
	mov r7, #1
_0206D09E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EB40
	add r5, r0, #0
	bne _0206D08A
_0206D0AA:
	ldr r0, [sp]
	add r1, r4, #0
	add r0, r0, #4
	bl sub_0205EAF4
	ldr r0, [sp]
	mov r1, #0
	add r0, r0, #4
	bl sub_0205EB40
	add r4, r0, #0
	bne _0206D07E
_0206D0C2:
	ldr r0, [sp]
	mov r1, #3
	ldr r0, [r0]
	bl sub_0205F29C
	cmp r7, #0
	beq _0206D0D4
	bl sub_0206D248
_0206D0D4:
	ldr r0, [sp]
	bl sub_0206D220
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D06C

	thumb_func_start sub_0206D0DC
sub_0206D0DC: ; 0x0206D0DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r1, #0x1f
	mov r2, #0x1f
	bic r1, r2
	ldr r0, [r5]
	add r1, #0x20
	mov r2, #0x20
	str r3, [sp]
	bl sub_0205F278
	add r4, r0, #0
	bne _0206D0FE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D0FE:
	add r0, r5, #4
	mov r1, #0
	bl sub_0205EB40
	str r6, [r4, #8]
	ldr r1, [sp]
	str r7, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r1, [sp, #0x18]
	str r1, [r4, #0x14]
	add r1, r4, #0
	bl sub_0205EA64
	add r4, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D0DC

	thumb_func_start sub_0206D120
sub_0206D120: ; 0x0206D120
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0xc]
	ldr r0, [r4]
	bl sub_0205F2BC
	cmp r0, #0
	bne _0206D136
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_0206D136:
	add r0, r4, #0
	bl sub_0206D220
	cmp r0, #0
	bne _0206D14E
	ldr r0, [r4]
	mov r1, #0
	bl sub_0205F2EC
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_0206D14E:
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206D120

	thumb_func_start sub_0206D154
sub_0206D154: ; 0x0206D154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r5, #0
	add r7, r5, #0
	str r0, [sp]
	str r1, [sp, #4]
	cmp r1, #0
	bne _0206D16C
	bl sub_0206D06C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206D16C:
	ldrh r1, [r0, #0xc]
	ldr r0, [sp, #4]
	cmp r0, r1
	bge _0206D1BE
_0206D174:
	ldr r0, [sp]
	mov r1, #0
	add r0, r0, #4
	bl sub_0205EB40
	add r1, r5, #0
	add r4, r0, #0
	bl sub_0205EB40
	add r5, r0, #0
	beq _0206D1AA
_0206D18A:
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _0206D19E
	add r0, r5, #0
	ldr r1, [r5, #8]
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, #0x20
	blx r6
	mov r7, #1
_0206D19E:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0205EB40
	add r5, r0, #0
	bne _0206D18A
_0206D1AA:
	ldr r0, [sp]
	add r1, r4, #0
	add r0, r0, #4
	bl sub_0205EAF4
	ldr r0, [sp]
	ldrh r1, [r0, #0xc]
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _0206D174
_0206D1BE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	bl sub_0205F2EC
	cmp r7, #0
	beq _0206D1D0
	bl sub_0206D248
_0206D1D0:
	ldr r1, [sp]
	ldr r0, [sp]
	ldrh r1, [r1, #0xc]
	ldr r0, [r0]
	bl sub_0205F2BC
	ldr r0, [sp]
	bl sub_0206D220
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D154

	thumb_func_start sub_0206D1E8
sub_0206D1E8: ; 0x0206D1E8
	ldrh r0, [r0, #0xc]
	sub r0, r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0206D1E8

	thumb_func_start sub_0206D1F0
sub_0206D1F0: ; 0x0206D1F0
	ldr r3, _0206D1F8 ; =sub_0205EA3C
	mov r1, #0
	bx r3
	nop
_0206D1F8: .word sub_0205EA3C
	thumb_func_end sub_0206D1F0

	thumb_func_start sub_0206D1FC
sub_0206D1FC: ; 0x0206D1FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r5, #4
	mov r1, #0xc
	bl sub_0205EA3C
	add r0, r5, #0
	str r4, [r5]
	bl sub_0206D220
	cmp r0, #0
	beq _0206D21A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206D21A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206D1FC

	thumb_func_start sub_0206D220
sub_0206D220: ; 0x0206D220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0x14
	mov r2, #4
	bl sub_0205F278
	add r4, r0, #0
	bne _0206D236
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206D236:
	bl sub_0206D1F0
	add r0, r5, #4
	add r1, r4, #0
	bl sub_0205EA64
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206D220

	thumb_func_start sub_0206D248
sub_0206D248: ; 0x0206D248
	push {r4, lr}
	bl sub_0207D9B0
	add r4, r0, #0
	mov r0, #1
	bl sub_0207D864
	add r0, r4, #0
	bl sub_0207D96C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206D248

	thumb_func_start sub_0206D260
sub_0206D260: ; 0x0206D260
	push {r3, lr}
	bl sub_0206D2C4
	cmp r0, #0
	bne _0206D26E
	mov r0, #1
	pop {r3, pc}
_0206D26E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0206D260

	thumb_func_start sub_0206D274
sub_0206D274: ; 0x0206D274
	push {r3, lr}
	add r2, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r1, #0xff
	mov r3, #1
	bl sub_0206D35C
	cmp r0, #0
	bne _0206D28C
	mov r0, #1
	pop {r3, pc}
_0206D28C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206D274

	thumb_func_start sub_0206D290
sub_0206D290: ; 0x0206D290
	push {r3, lr}
	add r2, r1, #0
	mov r1, #0
	str r1, [sp]
	mov r1, #0xff
	mov r3, #1
	bl sub_0206D4B0
	cmp r0, #0
	bne _0206D2A8
	mov r0, #1
	pop {r3, pc}
_0206D2A8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206D290

	thumb_func_start sub_0206D2AC
sub_0206D2AC: ; 0x0206D2AC
	push {r3, lr}
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	bl sub_0206D35C
	cmp r0, #0
	bne _0206D2C0
	mov r0, #1
	pop {r3, pc}
_0206D2C0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206D2AC

	thumb_func_start sub_0206D2C4
sub_0206D2C4: ; 0x0206D2C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_0206CE60
	add r7, r0, #0
	bne _0206D2D4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206D2D4:
	ldr r0, [r7]
	mov r6, #0
	cmp r0, #0
	bls _0206D358
	add r4, r7, #4
_0206D2DE:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _0206D34E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206D2F0: ; jump table
	.short _0206D2F8 - _0206D2F0 - 2 ; case 0
	.short _0206D324 - _0206D2F0 - 2 ; case 1
	.short _0206D33A - _0206D2F0 - 2 ; case 2
	.short _0206D30E - _0206D2F0 - 2 ; case 3
_0206D2F8:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r4, #1]
	ldr r0, [r4, #4]
	add r2, r5, #0
	mov r3, #1
	bl sub_0206D35C
	cmp r0, #0
	beq _0206D34E
	pop {r3, r4, r5, r6, r7, pc}
_0206D30E:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r4, #1]
	ldr r0, [r4, #4]
	add r2, r5, #0
	mov r3, #1
	bl sub_0206D3AC
	cmp r0, #0
	beq _0206D34E
	pop {r3, r4, r5, r6, r7, pc}
_0206D324:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r4, #1]
	ldr r0, [r4, #4]
	add r2, r5, #0
	mov r3, #1
	bl sub_0206D3E8
	cmp r0, #0
	beq _0206D34E
	pop {r3, r4, r5, r6, r7, pc}
_0206D33A:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r4, #1]
	ldr r0, [r4, #4]
	add r2, r5, #0
	mov r3, #1
	bl sub_0206D4B0
	cmp r0, #0
	bne _0206D35A
_0206D34E:
	ldr r0, [r7]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blo _0206D2DE
_0206D358:
	mov r0, #0
_0206D35A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D2C4

	thumb_func_start sub_0206D35C
sub_0206D35C: ; 0x0206D35C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0206CC4C
	add r4, r0, #0
	bne _0206D370
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0206D370:
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r4, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0206D3E8
	cmp r0, #0
	bne _0206D3AA
	mov r0, #1
	tst r0, r5
	ldr r0, [r4]
	beq _0206D39C
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0206D570
	cmp r0, #0
	bne _0206D3A0
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0206D39C:
	bl sub_0206CFB4
_0206D3A0:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0206D3A8
	str r0, [r1]
_0206D3A8:
	mov r0, #0
_0206D3AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D35C

	thumb_func_start sub_0206D3AC
sub_0206D3AC: ; 0x0206D3AC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0206CC98
	cmp r0, #0
	bne _0206D3C0
	mov r0, #3
	pop {r4, r5, r6, pc}
_0206D3C0:
	mov r1, #8
	tst r1, r5
	ldr r0, [r0]
	beq _0206D3D8
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0206D5B4
	cmp r0, #0
	bne _0206D3DC
	mov r0, #7
	pop {r4, r5, r6, pc}
_0206D3D8:
	bl sub_0206CFB4
_0206D3DC:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _0206D3E4
	str r0, [r1]
_0206D3E4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D3AC

	thumb_func_start sub_0206D3E8
sub_0206D3E8: ; 0x0206D3E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_0206CCE4
	add r5, r0, #0
	bne _0206D400
	add sp, #0x18
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0206D400:
	ldr r0, [sp, #4]
	mov r1, #2
	tst r0, r1
	ldr r0, [r5]
	beq _0206D41C
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl sub_0206D5F8
	add r6, r0, #0
	bne _0206D422
	add sp, #0x18
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206D41C:
	bl sub_0206CFB4
	add r6, r0, #0
_0206D422:
	ldr r0, [sp, #4]
	mov r1, #4
	and r0, r1
	mov r4, #0
	str r0, [sp, #0x10]
_0206D42C:
	ldrh r0, [r5, #4]
	ldr r1, _0206D4AC ; =0x0000FFFF
	cmp r0, r1
	beq _0206D496
	bl sub_0206CD30
	add r7, r0, #0
	bne _0206D442
	add sp, #0x18
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0206D442:
	add r0, sp, #0x14
	str r0, [sp]
	ldrh r0, [r5, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_0206D4B0
	cmp r0, #0
	bne _0206D4A8
	ldr r0, [r7]
	lsr r1, r0, #0x18
	mov r0, #1
	tst r0, r1
	beq _0206D484
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0206D484
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	ldr r3, [r7]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #8
	add r2, r4, #0
	lsr r3, r3, #8
	bl sub_0206D8AC
	cmp r0, #0
	bne _0206D484
	add sp, #0x18
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_0206D484:
	cmp r6, #0
	beq _0206D496
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _0206D496
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207DD80
_0206D496:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0206D42C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0206D4A6
	str r6, [r0]
_0206D4A6:
	mov r0, #0
_0206D4A8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D4AC: .word 0x0000FFFF
	thumb_func_end sub_0206D3E8

	thumb_func_start sub_0206D4B0
sub_0206D4B0: ; 0x0206D4B0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0206CD30
	cmp r0, #0
	bne _0206D4C4
	mov r0, #5
	pop {r4, r5, r6, pc}
_0206D4C4:
	mov r1, #4
	tst r1, r5
	beq _0206D4F6
	ldr r1, [r0]
	mov r0, #1
	lsr r2, r1, #0x18
	tst r0, r2
	beq _0206D4E2
	lsl r0, r1, #8
	lsr r0, r0, #8
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0206D680
	b _0206D4EE
_0206D4E2:
	lsl r0, r1, #8
	lsr r0, r0, #8
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0206D63C
_0206D4EE:
	cmp r0, #0
	bne _0206D500
	mov r0, #9
	pop {r4, r5, r6, pc}
_0206D4F6:
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #8
	bl sub_0206CFB4
_0206D500:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _0206D508
	str r0, [r1]
_0206D508:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D4B0

	thumb_func_start sub_0206D50C
sub_0206D50C: ; 0x0206D50C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0206CECC
	add r4, r0, #0
	bne _0206D526
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D526:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0206D532
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D532:
	add r1, r4, #0
	add r1, #0x20
	add r2, r6, #0
	add r3, r7, #0
	str r5, [sp]
	bl sub_0206D0DC
	add r5, r0, #0
	bne _0206D54A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D54A:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_0206CEEC
	cmp r4, r0
	beq _0206D560
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D560:
	add r0, r5, #0
	add r1, r4, #0
	blx sub_0207B090
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D50C

	thumb_func_start sub_0206D570
sub_0206D570: ; 0x0206D570
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0206CFB4
	add r4, r0, #0
	bne _0206D5AC
	cmp r5, #0
	beq _0206D58C
	bl sub_0206CC2C
	add r2, r0, #0
	b _0206D58E
_0206D58C:
	mov r2, #0
_0206D58E:
	ldr r1, _0206D5B0 ; =sub_0206D784
	add r0, r7, #0
	add r3, r7, #0
	str r6, [sp]
	bl sub_0206D50C
	add r4, r0, #0
	cmp r5, #0
	beq _0206D5AC
	cmp r4, #0
	beq _0206D5AC
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206CFD4
_0206D5AC:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D5B0: .word sub_0206D784
	thumb_func_end sub_0206D570

	thumb_func_start sub_0206D5B4
sub_0206D5B4: ; 0x0206D5B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0206CFB4
	add r4, r0, #0
	bne _0206D5F0
	cmp r5, #0
	beq _0206D5D0
	bl sub_0206CC2C
	add r2, r0, #0
	b _0206D5D2
_0206D5D0:
	mov r2, #0
_0206D5D2:
	ldr r1, _0206D5F4 ; =sub_0206D784
	add r0, r7, #0
	add r3, r7, #0
	str r6, [sp]
	bl sub_0206D50C
	add r4, r0, #0
	cmp r5, #0
	beq _0206D5F0
	cmp r4, #0
	beq _0206D5F0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206CFD4
_0206D5F0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D5F4: .word sub_0206D784
	thumb_func_end sub_0206D5B4

	thumb_func_start sub_0206D5F8
sub_0206D5F8: ; 0x0206D5F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0206CFB4
	add r4, r0, #0
	bne _0206D634
	cmp r5, #0
	beq _0206D614
	bl sub_0206CC2C
	add r2, r0, #0
	b _0206D616
_0206D614:
	mov r2, #0
_0206D616:
	ldr r1, _0206D638 ; =sub_0206D79C
	add r0, r7, #0
	add r3, r7, #0
	str r6, [sp]
	bl sub_0206D50C
	add r4, r0, #0
	cmp r5, #0
	beq _0206D634
	cmp r4, #0
	beq _0206D634
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206CFD4
_0206D634:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D638: .word sub_0206D79C
	thumb_func_end sub_0206D5F8

	thumb_func_start sub_0206D63C
sub_0206D63C: ; 0x0206D63C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0206CFB4
	add r4, r0, #0
	bne _0206D678
	cmp r5, #0
	beq _0206D658
	bl sub_0206CC2C
	add r2, r0, #0
	b _0206D65A
_0206D658:
	mov r2, #0
_0206D65A:
	ldr r1, _0206D67C ; =sub_0206D7BC
	add r0, r7, #0
	add r3, r7, #0
	str r6, [sp]
	bl sub_0206D50C
	add r4, r0, #0
	cmp r5, #0
	beq _0206D678
	cmp r4, #0
	beq _0206D678
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206CFD4
_0206D678:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D67C: .word sub_0206D7BC
	thumb_func_end sub_0206D63C

	thumb_func_start sub_0206D680
sub_0206D680: ; 0x0206D680
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp, #4]
	add r7, r2, #0
	bl sub_0206CFB4
	add r4, r0, #0
	bne _0206D734
	ldr r1, _0206D73C ; =0x02149914
	add r0, r5, #0
	mov r2, #0x3c
	mov r3, #0
	bl sub_0206CEEC
	cmp r0, #0x3c
	beq _0206D6A8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206D6A8:
	ldr r0, _0206D740 ; =0x02149914
	ldr r0, [r0, #0x38]
	lsl r6, r0, #2
	lsl r0, r6, #1
	str r0, [sp, #8]
	add r0, #0x3c
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0206D6C2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206D6C2:
	cmp r7, #0
	beq _0206D6CE
	bl sub_0206CC2C
	add r3, r0, #0
	b _0206D6D0
_0206D6CE:
	mov r3, #0
_0206D6D0:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r2, _0206D744 ; =sub_0206D7DC
	add r1, #0x20
	str r5, [sp]
	bl sub_0206D0DC
	add r4, r0, #0
	bne _0206D6E8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206D6E8:
	add r2, r6, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, #0x3c
	mov r3, #0
	bl sub_0206CEEC
	add r1, r6, #0
	add r1, #0x3c
	cmp r0, r1
	beq _0206D704
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206D704:
	ldr r1, [r4, #0x38]
	add r0, r4, #0
	add r0, #0x3c
	lsl r1, r1, #2
	add r1, r0, r1
	add r2, r6, #0
	blx MI_CpuCopy8
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	ldr r1, [sp, #8]
	add r0, r4, #0
	blx sub_0207B090
	cmp r7, #0
	beq _0206D734
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0206CFD4
_0206D734:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0206D73C: .word 0x02149914
_0206D740: .word 0x02149914
_0206D744: .word sub_0206D7DC
	thumb_func_end sub_0206D680

	thumb_func_start sub_0206D748
sub_0206D748: ; 0x0206D748
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	beq _0206D780
	blx OS_DisableInterrupts
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0206CC1C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0206CFB4
	cmp r5, r0
	bne _0206D774
	add r0, r6, #0
	mov r1, #0
	bl sub_0206CFD4
_0206D774:
	add r0, r4, #0
	bl sub_0206CC1C
	add r0, r7, #0
	blx OS_RestoreInterrupts
_0206D780:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D748

	thumb_func_start sub_0206D784
sub_0206D784: ; 0x0206D784
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	add r2, r3, #0
	bl sub_0206D748
	add r0, r5, #0
	add r1, r5, r4
	bl sub_0207D558
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D784

	thumb_func_start sub_0206D79C
sub_0206D79C: ; 0x0206D79C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	add r2, r3, #0
	bl sub_0206D748
	add r0, r5, #0
	add r1, r5, r4
	bl sub_0207D570
	add r0, r5, #0
	bl sub_0207DDFC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206D79C

	thumb_func_start sub_0206D7BC
sub_0206D7BC: ; 0x0206D7BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	add r2, r3, #0
	bl sub_0206D748
	add r0, r5, #0
	add r1, r5, r4
	bl sub_0207D588
	add r0, r5, #0
	bl sub_0207DE50
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206D7BC

	thumb_func_start sub_0206D7DC
sub_0206D7DC: ; 0x0206D7DC
	push {r4, lr}
	add r1, r2, #0
	add r4, r0, #0
	add r2, r3, #0
	bl sub_0206D748
	add r0, r4, #0
	bl sub_0207DE50
	pop {r4, pc}
	thumb_func_end sub_0206D7DC

	thumb_func_start sub_0206D7F0
sub_0206D7F0: ; 0x0206D7F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r7, r3, #0
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0207DFA4
	cmp r5, r0
	bne _0206D810
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_0207DF84
_0206D810:
	add r0, r5, #0
	add r1, r5, r4
	bl sub_0207D588
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D7F0

	thumb_func_start sub_0206D81C
sub_0206D81C: ; 0x0206D81C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0207DFA4
	cmp r0, #0
	beq _0206D836
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206D836:
	add r0, r5, #0
	bl sub_0207DF80
	ldr r1, [r5, #0x38]
	sub r0, r0, #1
	add r1, r1, r4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r7, [r1, #0x3c]
	cmp r4, r0
	bhs _0206D850
	ldr r0, [r1, #0x40]
	b _0206D852
_0206D850:
	ldr r0, [r5, #8]
_0206D852:
	sub r6, r0, r7
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0206D860
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D860:
	add r1, r6, #0
	ldr r2, _0206D8A8 ; =sub_0206D7F0
	add r1, #0x20
	add r3, r5, #0
	str r4, [sp]
	bl sub_0206D0DC
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _0206D87A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D87A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0206CEEC
	cmp r6, r0
	beq _0206D890
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D890:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	blx sub_0207B090
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207DF84
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206D8A8: .word sub_0206D7F0
	thumb_func_end sub_0206D81C

	thumb_func_start sub_0206D8AC
sub_0206D8AC: ; 0x0206D8AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	add r0, sp, #8
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #4]
	ldr r7, [sp, #0x38]
	bl sub_0207DE7C
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r2, sp, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r5, #0
	bne _0206D8D4
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206D8D4:
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_0207DE8C
	cmp r0, #0
	beq _0206D912
	add r4, sp, #8
_0206D8E2:
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _0206D904
	ldrh r0, [r4, #0x14]
	cmp r6, r0
	bne _0206D904
	ldrh r1, [r4, #0x12]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r3, r7, #0
	bl sub_0206D81C
	cmp r0, #0
	bne _0206D904
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206D904:
	add r0, r5, #0
	add r1, sp, #0x18
	add r2, sp, #0x10
	bl sub_0207DE8C
	cmp r0, #0
	bne _0206D8E2
_0206D912:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D8AC

	thumb_func_start sub_0206D918
sub_0206D918: ; 0x0206D918
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0206CC2C
	mov r6, #0
_0206D922:
	add r0, r6, #0
	bl sub_0206CDC8
	add r4, r0, #0
	beq _0206D968
	ldrb r1, [r4]
	add r0, r6, #0
	bl sub_0206BD4C
	ldrh r1, [r4, #2]
	add r0, r6, #0
	bl sub_0206BD60
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0206D968
	cmp r7, #0
	beq _0206D968
	ldrb r0, [r4]
	mov r5, #0
	cmp r0, #0
	ble _0206D968
_0206D94E:
	ldr r2, [r4, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0206BD70
	cmp r0, #0
	bne _0206D960
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D960:
	ldrb r0, [r4]
	add r5, r5, #1
	cmp r5, r0
	blt _0206D94E
_0206D968:
	add r6, r6, #1
	cmp r6, #0x20
	blt _0206D922
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D918

	thumb_func_start sub_0206D974
sub_0206D974: ; 0x0206D974
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0206CC4C
	add r3, r0, #0
	bne _0206D98C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206D98C:
	str r3, [sp]
	str r4, [sp, #4]
	ldrb r1, [r3, #9]
	ldrh r2, [r3, #4]
	ldrb r3, [r3, #8]
	add r0, r5, #0
	bl sub_0206DA38
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D974

	thumb_func_start sub_0206D9A0
sub_0206D9A0: ; 0x0206D9A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0206CC4C
	cmp r0, #0
	bne _0206D9BC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D9BC:
	cmp r6, #0
	bge _0206D9C2
	ldrb r6, [r0, #8]
_0206D9C2:
	cmp r4, #0
	bge _0206D9C8
	ldrh r4, [r0, #4]
_0206D9C8:
	cmp r5, #0
	bge _0206D9CE
	ldrb r5, [r0, #9]
_0206D9CE:
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0206DA38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D9A0

	thumb_func_start sub_0206D9E4
sub_0206D9E4: ; 0x0206D9E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0206CC98
	cmp r0, #0
	bne _0206D9FE
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206D9FE:
	ldr r0, [r0]
	bl sub_0206CFB4
	add r6, r0, #0
	bne _0206DA0E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DA0E:
	add r1, r4, #0
	bl sub_0206ED04
	add r3, r0, #0
	bne _0206DA1E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DA1E:
	str r3, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r1, [r3, #9]
	ldrh r2, [r3, #4]
	ldrb r3, [r3, #8]
	add r0, r7, #0
	bl sub_0206DACC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0206D9E4

	thumb_func_start sub_0206DA38
sub_0206DA38: ; 0x0206DA38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp, #4]
	add r2, r3, #0
	add r6, r0, #0
	add r7, r1, #0
	ldr r5, [sp, #0x28]
	bl sub_0206C144
	add r4, r0, #0
	bne _0206DA54
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DA54:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0206C24C
	add r7, r0, #0
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #6
	add r2, r7, #0
	mov r3, #0
	bl sub_0206D3E8
	cmp r0, #0
	beq _0206DA7E
	add r0, r4, #0
	bl sub_0206C1A8
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DA7E:
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	add r2, r7, #0
	mov r3, #0
	bl sub_0206D35C
	cmp r0, #0
	beq _0206DA9E
	add r0, r4, #0
	bl sub_0206C1A8
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DA9E:
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r1, [r2, #0x18]
	add r0, r4, #0
	add r1, r2, r1
	mov r2, #0
	bl sub_0206C1B0
	ldrb r1, [r5, #6]
	add r0, r6, #0
	bl sub_0206BE54
	ldrb r1, [r5, #7]
	add r0, r6, #0
	bl sub_0206BE84
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	bl sub_0206BF44
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206DA38

	thumb_func_start sub_0206DACC
sub_0206DACC: ; 0x0206DACC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	add r2, r3, #0
	add r5, r0, #0
	add r7, r1, #0
	ldr r4, [sp, #0x20]
	bl sub_0206C144
	add r6, r0, #0
	bne _0206DAE8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206DAE8:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0206C24C
	add r2, r0, #0
	add r0, sp, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #6
	mov r3, #0
	bl sub_0206D3E8
	cmp r0, #0
	beq _0206DB10
	add r0, r6, #0
	bl sub_0206C1A8
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0206DB10:
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #8]
	ldr r1, [r2, #0x18]
	add r0, r6, #0
	add r1, r2, r1
	ldr r2, [r4]
	bl sub_0206C1B0
	ldrb r1, [r4, #6]
	add r0, r5, #0
	bl sub_0206BE54
	ldrb r1, [r4, #7]
	add r0, r5, #0
	bl sub_0206BE84
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0206BF58
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206DACC

	thumb_func_start sub_0206DB40
sub_0206DB40: ; 0x0206DB40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, _0206DBEC ; =0x02149950
	str r1, [sp, #4]
	ldr r1, [r0]
	cmp r1, #0
	beq _0206DB5A
	ldr r0, [sp, #4]
	bl sub_0206DC08
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206DB5A:
	mov r1, #1
	str r1, [r0]
	ldr r0, _0206DBF0 ; =0x0214995C
	mov r1, #0
	bl sub_0205EA3C
	mov r5, #0
	ldr r7, _0206DBF0 ; =0x0214995C
	ldr r4, _0206DBF4 ; =0x02149980
	mov r6, #0x30
	b _0206DB7E
_0206DB70:
	add r1, r5, #0
	mul r1, r6
	add r0, r7, #0
	add r1, r4, r1
	bl sub_0205EA64
	add r5, r5, #1
_0206DB7E:
	cmp r5, #8
	blt _0206DB70
	ldr r0, _0206DBF8 ; =0x02149968
	bl sub_0207AE4C
	ldr r1, _0206DBFC ; =0x02149B00
	ldr r0, _0206DBEC ; =0x02149950
	mov r4, #0
	str r1, [r0, #8]
	ldr r7, _0206DC00 ; =0x02149D00
	mov r6, #1
	b _0206DBD4
_0206DB96:
	mov r0, #0x5f
	lsl r0, r0, #2
	mul r0, r4
	add r5, r7, r0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	bic r1, r6
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x64
	bl sub_02070C7C
	add r0, r5, #0
	bl sub_0206C480
	mov r0, #0x15
	lsl r0, r0, #4
	str r4, [r5, r0]
	mov r1, #0
	sub r0, #0x24
	strb r1, [r5, r0]
	mov r0, #0x4d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r4, r4, #1
_0206DBD4:
	cmp r4, #4
	blt _0206DB96
	ldr r0, [sp, #4]
	bl sub_0206DC08
	ldr r0, _0206DC04 ; =0x0214A2F0
	ldr r1, [sp]
	bl sub_0206E278
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206DBEC: .word 0x02149950
_0206DBF0: .word 0x0214995C
_0206DBF4: .word 0x02149980
_0206DBF8: .word 0x02149968
_0206DBFC: .word 0x02149B00
_0206DC00: .word 0x02149D00
_0206DC04: .word 0x0214A2F0
	thumb_func_end sub_0206DB40

	thumb_func_start sub_0206DC08
sub_0206DC08: ; 0x0206DC08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0206DC88 ; =0x02149D00
	str r0, [sp, #4]
	mov r4, #0
_0206DC12:
	add r0, r4, #0
	bl sub_0206CE14
	cmp r0, #0
	beq _0206DC76
	ldrb r2, [r0]
	mov r1, #0x4b
	lsl r1, r1, #2
	strb r2, [r5, r1]
	ldrb r2, [r0]
	mov r1, #0
	cmp r2, #0
	ble _0206DC3E
	ldr r2, _0206DC8C ; =0x0000012E
_0206DC2E:
	add r3, r0, r1
	ldrb r6, [r3, #1]
	add r3, r5, r1
	add r1, r1, #1
	strb r6, [r3, r2]
	ldrb r3, [r0]
	cmp r1, r3
	blt _0206DC2E
_0206DC3E:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0206DC76
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	ldr r2, _0206DC90 ; =sub_0206E390
	add r3, r5, #0
	lsl r6, r0, #0xb
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0206D0DC
	add r7, r0, #0
	bne _0206DC66
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DC66:
	add r0, r5, #0
	bl sub_0206E17C
	mov r0, #0x4d
	lsl r0, r0, #2
	str r7, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
_0206DC76:
	mov r0, #0x5f
	lsl r0, r0, #2
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #4
	blt _0206DC12
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206DC88: .word 0x02149D00
_0206DC8C: .word 0x0000012E
_0206DC90: .word sub_0206E390
	thumb_func_end sub_0206DC08

	thumb_func_start sub_0206DC94
sub_0206DC94: ; 0x0206DC94
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0206CD7C
	add r1, r0, #0
	bne _0206DCAE
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206DCAE:
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #5]
	add r0, r6, #0
	bl sub_0206DF34
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0206DC94

	thumb_func_start sub_0206DCCC
sub_0206DCCC: ; 0x0206DCCC
	ldr r1, [r0]
	cmp r1, #0
	beq _0206DCE0
	ldr r3, [r0]
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	mov r0, #4
	orr r0, r2
	str r0, [r3, r1]
_0206DCE0:
	bx lr
	.align 2, 0
	thumb_func_end sub_0206DCCC

	thumb_func_start sub_0206DCE4
sub_0206DCE4: ; 0x0206DCE4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206DC94
	cmp r0, #0
	bne _0206DCF4
	mov r0, #0
	pop {r4, pc}
_0206DCF4:
	add r0, r4, #0
	bl sub_0206DCCC
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206DCE4

	thumb_func_start sub_0206DD00
sub_0206DD00: ; 0x0206DD00
	push {r3, lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0206DD0E
	ldr r0, [r0]
	bl sub_0206E13C
_0206DD0E:
	pop {r3, pc}
	thumb_func_end sub_0206DD00

	thumb_func_start sub_0206DD10
sub_0206DD10: ; 0x0206DD10
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0206DD10

	thumb_func_start sub_0206DD18
sub_0206DD18: ; 0x0206DD18
	ldr r3, [r0]
	cmp r3, #0
	beq _0206DD28
	mov r1, #0x55
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r3, r1]
	str r2, [r0]
_0206DD28:
	bx lr
	.align 2, 0
	thumb_func_end sub_0206DD18

	thumb_func_start sub_0206DD2C
sub_0206DD2C: ; 0x0206DD2C
	push {r4, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _0206DD38
	mov r0, #0
	pop {r4, pc}
_0206DD38:
	ldr r4, [r0]
	mov r0, #0x5a
	lsl r0, r0, #2
	mov r1, #0
	mov r2, #0xfa
	ldr r0, [r4, r0]
	lsl r2, r2, #2
	add r3, r1, #0
	blx sub_0208D60C
	add r4, #0xcc
	ldrh r2, [r4]
	mov r3, #0
	blx sub_0208D5C4
	pop {r4, pc}
	thumb_func_end sub_0206DD2C

	thumb_func_start sub_0206DD58
sub_0206DD58: ; 0x0206DD58
	push {r3, lr}
	mov r2, #0x5f
	ldr r3, _0206DD90 ; =0x02149D00
	lsl r2, r2, #2
	add r1, r0, #0
	mul r1, r2
	add r0, r3, r1
	add r1, r2, #0
	sub r1, #0x64
	ldr r1, [r0, r1]
	lsl r1, r1, #0x1f
	asr r1, r1, #0x1f
	beq _0206DD76
	mov r0, #0
	pop {r3, pc}
_0206DD76:
	add r1, r2, #0
	sub r1, #0x50
	ldrb r1, [r0, r1]
	sub r2, #0x4e
	add r2, r0, r2
	bl sub_0206E234
	cmp r0, #0
	beq _0206DD8C
	mov r0, #1
	pop {r3, pc}
_0206DD8C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_0206DD90: .word 0x02149D00
	thumb_func_end sub_0206DD58

	thumb_func_start sub_0206DD94
sub_0206DD94: ; 0x0206DD94
	mov r1, #0x5f
	lsl r1, r1, #2
	ldr r2, _0206DDA4 ; =0x02149D00
	mul r1, r0
	ldr r3, _0206DDA8 ; =sub_0206E25C
	add r0, r2, r1
	bx r3
	nop
_0206DDA4: .word 0x02149D00
_0206DDA8: .word sub_0206E25C
	thumb_func_end sub_0206DD94

	thumb_func_start sub_0206DDAC
sub_0206DDAC: ; 0x0206DDAC
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #4
	ldr r4, _0206DE88 ; =0x02149D00
	ldr r7, _0206DE8C ; =0x0209888C
	mov r6, #0
	str r0, [sp]
_0206DDB8:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	lsl r0, r1, #0x1f
	asr r0, r0, #0x1f
	beq _0206DE78
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0206DDD6
	add r0, r4, #0
	bl sub_0206E17C
	b _0206DE78
_0206DDD6:
	lsl r0, r1, #0x1d
	asr r0, r0, #0x1f
	beq _0206DE08
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0206DE08
	add r0, r4, #0
	bl sub_0206C638
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #2
	orr r1, r0
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	ldr r0, [sp]
	bic r1, r0
	mov r0, #0x46
	lsl r0, r0, #2
	str r1, [r4, r0]
_0206DE08:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _0206DE78
	add r0, r4, #0
	add r0, #0xf0
	bl sub_0206ED74
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #1
	ldrsh r5, [r7, r0]
	add r0, r4, #0
	add r0, #0xf0
	bl sub_0206ED54
	asr r1, r0, #8
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r1, r1, #1
	lsl r0, r0, #1
	ldrsh r1, [r7, r1]
	ldrsh r0, [r7, r0]
	add r1, r1, r5
	add r5, r0, r1
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	beq _0206DE5A
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206C680
	mov r0, #0x59
	lsl r0, r0, #2
	str r5, [r4, r0]
_0206DE5A:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1c
	asr r0, r0, #0x1f
	beq _0206DE78
	add r0, r4, #0
	add r0, #0xf0
	bl sub_0206ED84
	cmp r0, #0
	beq _0206DE78
	add r0, r4, #0
	bl sub_0206E17C
_0206DE78:
	mov r0, #0x5f
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	cmp r6, #4
	blt _0206DDB8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206DE88: .word 0x02149D00
_0206DE8C: .word 0x0209888C
	thumb_func_end sub_0206DDAC

	thumb_func_start sub_0206DE90
sub_0206DE90: ; 0x0206DE90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5]
	add r6, r2, #0
	cmp r1, #0
	beq _0206DEA2
	bl sub_0206DD18
_0206DEA2:
	mov r1, #0x5f
	ldr r2, _0206DF00 ; =0x02149D00
	lsl r1, r1, #2
	add r0, r4, #0
	mul r0, r1
	add r4, r2, r0
	add r0, r1, #0
	sub r0, #0x48
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0206DEBC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206DEBC:
	add r0, r1, #0
	sub r0, #0x64
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1f
	asr r0, r0, #0x1f
	beq _0206DEDA
	sub r1, #0x24
	ldr r0, [r4, r1]
	cmp r6, r0
	bge _0206DED4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206DED4:
	add r0, r4, #0
	bl sub_0206E17C
_0206DEDA:
	mov r0, #0x56
	lsl r0, r0, #2
	add r1, r0, #0
	str r6, [r4, r0]
	sub r1, #0x40
	ldr r2, [r4, r1]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r2, r1
	add r1, r0, #0
	sub r1, #0x40
	str r2, [r4, r1]
	sub r0, r0, #4
	str r5, [r4, r0]
	str r4, [r5]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0206DF00: .word 0x02149D00
	thumb_func_end sub_0206DE90

	thumb_func_start sub_0206DF04
sub_0206DF04: ; 0x0206DF04
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	cmp r3, #0
	beq _0206DF14
	mov r2, #0
	str r2, [r3]
	str r2, [r0, r1]
_0206DF14:
	mov r2, #0x46
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r1, #1
	bic r3, r1
	str r3, [r0, r2]
	ldr r3, [r0, r2]
	mov r1, #4
	bic r3, r1
	str r3, [r0, r2]
	ldr r3, [r0, r2]
	mov r1, #2
	bic r3, r1
	str r3, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0206DF04

	thumb_func_start sub_0206DF34
sub_0206DF34: ; 0x0206DF34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0206DE90
	add r4, r0, #0
	bne _0206DF4C
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DF4C:
	ldr r1, [r6]
	bl sub_0206EB70
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r1, [r6]
	ldr r2, [r4, r2]
	add r0, r4, #0
	blx r2
	cmp r0, #0
	bne _0206DF6E
	add r0, r4, #0
	bl sub_0206DF04
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206DF6E:
	add r0, r4, #0
	add r0, #0xcc
	ldrh r0, [r0]
	mov r1, #0
	ldr r2, [sp, #0x2c]
	add r3, r1, #0
	blx sub_0208D60C
	mov r2, #0xfa
	lsl r2, r2, #2
	mov r3, #0
	blx sub_0208D5C4
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0206DFAE
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #2
	bne _0206DFAE
	add r0, r1, #0
	sub r0, #0x50
	ldr r2, [r4, r0]
	mov r0, #0x10
	orr r0, r2
	sub r1, #0x50
	str r0, [r4, r1]
	b _0206DFBA
_0206DFAE:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x10
	bic r2, r0
	str r2, [r4, r1]
_0206DFBA:
	mov r0, #0x47
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	mov r1, #0x20
	bic r2, r1
	sub r1, r0, #4
	str r2, [r4, r1]
	ldr r2, [r4, r1]
	mov r1, #2
	bic r2, r1
	sub r1, r0, #4
	str r2, [r4, r1]
	mov r2, #0
	add r1, r0, #4
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	mov r3, #4
	bic r1, r3
	sub r3, r0, #4
	str r1, [r4, r3]
	add r1, r3, #0
	ldr r1, [r4, r1]
	mov r3, #8
	bic r1, r3
	sub r3, r0, #4
	str r1, [r4, r3]
	add r1, r0, #0
	add r1, #8
	str r2, [r4, r1]
	add r1, r0, #0
	ldr r3, [sp, #0x30]
	add r1, #0x20
	str r3, [r4, r1]
	add r1, r0, #0
	ldr r3, [sp, #0x34]
	add r1, #0x24
	str r3, [r4, r1]
	add r1, r0, #0
	ldr r3, [sp, #0x38]
	add r1, #0x28
	str r3, [r4, r1]
	add r1, r0, #0
	ldr r3, [sp, #0x3c]
	add r1, #0x2c
	str r3, [r4, r1]
	add r1, r0, #0
	ldr r3, [sp, #0x28]
	add r1, #0x30
	str r3, [r4, r1]
	add r1, r0, #0
	add r1, #0x48
	str r2, [r4, r1]
	ldrb r1, [r6, #4]
	add r0, #0x40
	str r1, [r4, r0]
	mov r1, #0x7f
	add r0, r1, #0
	add r0, #0xe1
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xf0
	bl sub_0206ED30
	add r0, r4, #0
	mov r1, #0x7f
	add r0, #0xf0
	lsl r1, r1, #8
	mov r2, #1
	bl sub_0206ED3C
	add r0, r4, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0206E062
	cmp r0, #1
	beq _0206E066
	cmp r0, #2
	beq _0206E066
	b _0206E068
_0206E062:
	mov r7, #0
	b _0206E068
_0206E066:
	mov r7, #1
_0206E068:
	add r0, r4, #0
	add r0, #0xca
	ldrb r5, [r0]
	ldrb r1, [r6, #7]
	mov r0, #1
	tst r0, r1
	beq _0206E078
	mov r5, #2
_0206E078:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r5, r0
	ble _0206E084
	add r5, r0, #0
_0206E084:
	cmp r5, #1
	bne _0206E08C
	mov r3, #1
	b _0206E08E
_0206E08C:
	mov r3, #0
_0206E08E:
	mov r2, #0x46
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	mov r1, #0x40
	bic r0, r1
	lsl r1, r3, #0x1f
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r2]
	add r2, #0x16
	add r0, r4, #0
	add r1, r5, #0
	add r2, r4, r2
	bl sub_0206E234
	cmp r0, #0
	bne _0206E0C6
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
	add r0, r4, #0
	bl sub_0206DF04
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206E0C6:
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	sub r1, #0xc
	add r0, r2, #0
	ldrb r1, [r4, r1]
	mul r0, r5
	blx sub_0208D868
	add r3, r0, #0
	add r0, r4, #0
	add r0, #0xce
	ldrh r0, [r0]
	mov r2, #0x4d
	lsl r2, r2, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0206E138 ; =sub_0206E408
	add r1, r7, #0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl sub_0206C524
	cmp r0, #0
	bne _0206E11A
	add r0, r4, #0
	bl sub_0206E25C
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
	add r0, r4, #0
	bl sub_0206DF04
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0206E11A:
	cmp r5, #2
	bne _0206E132
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0206C6C4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x7f
	bl sub_0206C6C4
_0206E132:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206E138: .word sub_0206E408
	thumb_func_end sub_0206DF34

	thumb_func_start sub_0206E13C
sub_0206E13C: ; 0x0206E13C
	push {r4, lr}
	add r2, r1, #0
	mov r1, #0x46
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r1, r1, #0x1e
	asr r1, r1, #0x1f
	bne _0206E154
	bl sub_0206E17C
	pop {r4, pc}
_0206E154:
	cmp r2, #0
	bne _0206E15E
	bl sub_0206E17C
	pop {r4, pc}
_0206E15E:
	add r0, #0xf0
	mov r1, #0
	bl sub_0206ED3C
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	add r1, #0x40
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206E13C

	thumb_func_start sub_0206E17C
sub_0206E17C: ; 0x0206E17C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0206E1DC ; =0x0214B3B8
	bl sub_0207AE68
	ldr r0, _0206E1E0 ; =0x02149950
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206E196
	ldr r0, _0206E1E4 ; =0x000010C8
	add r0, r1, r0
	bl sub_0207AE68
_0206E196:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1e
	asr r0, r0, #0x1f
	beq _0206E1A8
	add r0, r4, #0
	bl sub_0206C670
_0206E1A8:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #0x1f
	asr r0, r0, #0x1f
	beq _0206E1BC
	add r1, #0x60
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
_0206E1BC:
	add r0, r4, #0
	bl sub_0206E1E8
	ldr r0, _0206E1DC ; =0x0214B3B8
	bl sub_0207AEA4
	ldr r0, _0206E1E0 ; =0x02149950
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206E1D8
	ldr r0, _0206E1E4 ; =0x000010C8
	add r0, r1, r0
	bl sub_0207AEA4
_0206E1D8:
	pop {r4, pc}
	nop
_0206E1DC: .word 0x0214B3B8
_0206E1E0: .word 0x02149950
_0206E1E4: .word 0x000010C8
	thumb_func_end sub_0206E17C

	thumb_func_start sub_0206E1E8
sub_0206E1E8: ; 0x0206E1E8
	push {r4, lr}
	mov r1, #0x46
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r1, r1, #0x1f
	asr r1, r1, #0x1f
	beq _0206E226
	bl sub_0206E25C
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	blx r1
	ldr r0, _0206E228 ; =0x0214B3D0
	add r1, r4, #0
	bl sub_0206E2CC
	ldr r0, _0206E22C ; =0x02149950
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206E220
	ldr r0, _0206E230 ; =0x000010E0
	add r0, r1, r0
	add r1, r4, #0
	bl sub_0206E2CC
_0206E220:
	add r0, r4, #0
	bl sub_0206DF04
_0206E226:
	pop {r4, pc}
	.align 2, 0
_0206E228: .word 0x0214B3D0
_0206E22C: .word 0x02149950
_0206E230: .word 0x000010E0
	thumb_func_end sub_0206E1E8

	thumb_func_start sub_0206E234
sub_0206E234: ; 0x0206E234
	push {r4, lr}
	mov r3, #0x4a
	add r4, r0, #0
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	cmp r3, #0
	bne _0206E24E
	bl sub_0206C4CC
	cmp r0, #0
	bne _0206E24E
	mov r0, #0
	pop {r4, pc}
_0206E24E:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206E234

	thumb_func_start sub_0206E25C
sub_0206E25C: ; 0x0206E25C
	push {r3, lr}
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0206E276
	sub r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _0206E276
	bl sub_0206C50C
_0206E276:
	pop {r3, pc}
	thumb_func_end sub_0206E25C

	thumb_func_start sub_0206E278
sub_0206E278: ; 0x0206E278
	push {r4, lr}
	sub sp, #8
	mov r3, #1
	lsl r3, r3, #0xc
	str r3, [sp]
	add r4, r0, #0
	str r1, [sp, #4]
	add r3, #0xc0
	ldr r1, _0206E2BC ; =sub_0206ECC0
	add r2, r4, #0
	add r3, r4, r3
	bl sub_0207A588
	ldr r0, _0206E2C0 ; =0x000010E0
	mov r1, #0
	add r0, r4, r0
	bl sub_0205EA3C
	ldr r0, _0206E2C4 ; =0x000010C8
	add r0, r4, r0
	bl sub_0207AE4C
	ldr r0, _0206E2C8 ; =0x000010C4
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl sub_0207A8E4
	add sp, #8
	pop {r4, pc}
	nop
_0206E2BC: .word sub_0206ECC0
_0206E2C0: .word 0x000010E0
_0206E2C4: .word 0x000010C8
_0206E2C8: .word 0x000010C4
	thumb_func_end sub_0206E278

	thumb_func_start sub_0206E2CC
sub_0206E2CC: ; 0x0206E2CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	beq _0206E308
_0206E2E4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EB30
	add r6, r0, #0
	ldr r0, [r4, #8]
	cmp r0, r7
	bne _0206E302
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EAF4
	add r0, r4, #0
	bl sub_0206E370
_0206E302:
	add r4, r6, #0
	cmp r6, #0
	bne _0206E2E4
_0206E308:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E2CC

	thumb_func_start sub_0206E310
sub_0206E310: ; 0x0206E310
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	beq _0206E33A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EAF4
	mov r0, #0x49
	ldr r2, [r4, #8]
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	sub r1, r1, #1
	str r1, [r2, r0]
_0206E33A:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E310

	thumb_func_start sub_0206E344
sub_0206E344: ; 0x0206E344
	push {r3, r4, r5, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0206E36C ; =0x0214995C
	mov r1, #0
	bl sub_0205EB30
	add r5, r0, #0
	beq _0206E360
	ldr r0, _0206E36C ; =0x0214995C
	add r1, r5, #0
	bl sub_0205EAF4
_0206E360:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_0206E36C: .word 0x0214995C
	thumb_func_end sub_0206E344

	thumb_func_start sub_0206E370
sub_0206E370: ; 0x0206E370
	push {r3, r4, r5, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0206E38C ; =0x0214995C
	add r1, r5, #0
	bl sub_0205EA64
	add r0, r4, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, pc}
	nop
_0206E38C: .word 0x0214995C
	thumb_func_end sub_0206E370

	thumb_func_start sub_0206E390
sub_0206E390: ; 0x0206E390
	push {r4, lr}
	mov r1, #0x4d
	add r4, r2, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	bne _0206E3F8
	ldr r0, _0206E3FC ; =0x0214B3B8
	bl sub_0207AE68
	ldr r0, _0206E400 ; =0x02149950
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206E3B4
	ldr r0, _0206E404 ; =0x000010C8
	add r0, r1, r0
	bl sub_0207AE68
_0206E3B4:
	add r0, r4, #0
	bl sub_0206E17C
	mov r1, #0x4d
	lsl r1, r1, #2
	mov r2, #0
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #8
	sub r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	cmp r0, #0
	ble _0206E3E2
	add r0, r4, #0
	bl sub_0206C50C
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0206E3E2:
	ldr r0, _0206E3FC ; =0x0214B3B8
	bl sub_0207AEA4
	ldr r0, _0206E400 ; =0x02149950
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0206E3F8
	ldr r0, _0206E404 ; =0x000010C8
	add r0, r1, r0
	bl sub_0207AEA4
_0206E3F8:
	pop {r4, pc}
	nop
_0206E3FC: .word 0x0214B3B8
_0206E400: .word 0x02149950
_0206E404: .word 0x000010C8
	thumb_func_end sub_0206E390

	thumb_func_start sub_0206E408
sub_0206E408: ; 0x0206E408
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0x49
	ldr r7, [sp, #0x2c]
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #2
	blt _0206E47C
	ldr r0, _0206E4DC ; =0x0214B3D0
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	beq _0206E440
	ldr r6, _0206E4DC ; =0x0214B3D0
_0206E42E:
	ldr r0, [r4, #8]
	cmp r0, r7
	beq _0206E440
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0205EB30
	add r4, r0, #0
	bne _0206E42E
_0206E440:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _0206E464
	add r6, r4, #0
_0206E44C:
	ldr r0, [r6, #0x14]
	ldr r2, [r4, #0x2c]
	mov r1, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0206E44C
_0206E464:
	ldr r0, _0206E4DC ; =0x0214B3D0
	add r1, r4, #0
	bl sub_0205EAF4
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	sub r1, r1, #1
	str r1, [r7, r0]
	add r0, r4, #0
	bl sub_0206E370
_0206E47C:
	bl sub_0206E344
	add r1, r0, #0
	ldr r0, [sp]
	str r7, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	str r0, [r1, #0x10]
	mov r0, #0
	cmp r2, #0
	ble _0206E4A6
	add r3, r1, #0
_0206E496:
	ldr r2, [r5]
	add r0, r0, #1
	str r2, [r3, #0x14]
	ldr r2, [sp, #4]
	add r5, r5, #4
	add r3, r3, #4
	cmp r0, r2
	blt _0206E496
_0206E4A6:
	ldr r0, [sp, #8]
	ldr r4, _0206E4E0 ; =0x0214A2F0
	str r0, [r1, #0x2c]
	ldr r0, [sp]
	cmp r0, #0
	bne _0206E4BC
	ldr r0, _0206E4E4 ; =0x02149950
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0206E4BC
	add r4, r0, #0
_0206E4BC:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r2, [r7, r0]
	add r2, r2, #1
	str r2, [r7, r0]
	ldr r0, _0206E4E8 ; =0x000010E0
	add r0, r4, r0
	bl sub_0205EA64
	mov r0, #0x43
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0207A89C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206E4DC: .word 0x0214B3D0
_0206E4E0: .word 0x0214A2F0
_0206E4E4: .word 0x02149950
_0206E4E8: .word 0x000010E0
	thumb_func_end sub_0206E408

	thumb_func_start sub_0206E4EC
sub_0206E4EC: ; 0x0206E4EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0x15
	lsl r4, r4, #4
	add r5, r0, #0
	ldr r0, [r5, r4]
	add r3, r4, #0
	str r0, [sp, #8]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	sub r3, #8
	str r0, [sp, #0xc]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	sub r4, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r5, r3]
	ldr r4, [r5, r4]
	add r1, sp, #8
	add r2, sp, #0
	blx r4
	cmp r0, #0
	beq _0206E5DC
	ldr r0, [sp]
	bl sub_0206CD7C
	add r6, r0, #0
	beq _0206E5DC
	add r0, r5, #0
	add r0, #0xc8
	mov r1, #0x17
	ldrb r4, [r0]
	add r0, r5, #0
	lsl r1, r1, #4
	add r0, #0xcc
	ldrh r7, [r0]
	ldr r1, [r5, r1]
	add r0, r5, #0
	blx r1
	ldr r1, [r6]
	add r0, r5, #0
	bl sub_0206EB70
	mov r2, #0x5b
	lsl r2, r2, #2
	ldr r1, [r6]
	ldr r2, [r5, r2]
	add r0, r5, #0
	blx r2
	cmp r0, #0
	beq _0206E5DC
	add r0, r5, #0
	add r0, #0xcc
	ldrh r0, [r0]
	cmp r7, r0
	bne _0206E5DC
	cmp r4, #0
	bne _0206E56E
	add r0, r5, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0206E5DC
_0206E56E:
	cmp r4, #0
	beq _0206E57C
	add r0, r5, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0206E5DC
_0206E57C:
	mov r0, #0x53
	ldr r1, [sp]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xcc
	mov r1, #0
	ldrh r0, [r0]
	ldr r2, [sp, #4]
	add r3, r1, #0
	blx sub_0208D60C
	mov r2, #0xfa
	lsl r2, r2, #2
	mov r3, #0
	blx sub_0208D5C4
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0206E5C4
	add r0, r5, #0
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #2
	bne _0206E5C4
	add r0, r1, #0
	sub r0, #0x50
	ldr r2, [r5, r0]
	mov r0, #0x10
	orr r0, r2
	sub r1, #0x50
	str r0, [r5, r1]
	b _0206E5D0
_0206E5C4:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0x10
	bic r2, r0
	str r2, [r5, r1]
_0206E5D0:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0x20
	bic r2, r0
	str r2, [r5, r1]
_0206E5DC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E4EC

	thumb_func_start sub_0206E5E0
sub_0206E5E0: ; 0x0206E5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r0, [sp, #8]
	ldr r0, [r0, #8]
	mov r2, #0x46
	lsl r2, r2, #2
	str r0, [sp, #0x48]
	ldr r0, [r0, r2]
	lsl r0, r0, #0x1a
	asr r0, r0, #0x1f
	beq _0206E60A
	ldr r0, [sp, #0x48]
	add r1, r2, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _0206E60A
	ldr r0, [sp, #0x48]
	ldr r0, [r0, r1]
	sub r3, r0, #1
	ldr r0, [sp, #0x48]
	str r3, [r0, r1]
_0206E60A:
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _0206E64E
_0206E618:
	mov r1, #0x46
	ldr r0, [sp, #0x48]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1a
	asr r0, r0, #0x1f
	beq _0206E650
	ldr r0, [sp, #8]
	mov r4, #0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _0206E64E
	ldr r5, [sp, #8]
	add r6, r4, #0
_0206E634:
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x3c]
	add r0, r1, r0
	add r1, r6, #0
	blx MI_CpuFill8
	ldr r0, [sp, #8]
	add r4, r4, #1
	ldr r0, [r0, #0x10]
	add r5, r5, #4
	cmp r4, r0
	blt _0206E634
_0206E64E:
	b _0206EB00
_0206E650:
	ldr r0, [sp, #0x48]
	add r1, #0x50
	add r0, #0xe4
	ldr r4, [r0]
	ldr r0, [sp, #0x48]
	ldr r5, [r0, r1]
	add r1, r4, #0
	add r0, r5, #0
	blx sub_0208D868
	ldr r1, [sp, #0x48]
	add r1, #0xdc
	ldr r1, [r1]
	sub r1, r1, #1
	cmp r0, r1
	bhs _0206E67C
	ldr r1, [sp, #0x48]
	add r1, #0xe0
	ldr r1, [r1]
	str r1, [sp, #0x38]
	add r1, r4, #0
	b _0206E68A
_0206E67C:
	ldr r1, [sp, #0x48]
	add r1, #0xe8
	ldr r1, [r1]
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x48]
	add r1, #0xec
	ldr r1, [r1]
_0206E68A:
	add r2, r0, #0
	mul r2, r4
	sub r2, r5, r2
	str r2, [sp, #0x34]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x48]
	add r2, #0xc8
	ldrb r2, [r2]
	cmp r2, #0
	beq _0206E6A6
	ldr r2, [sp, #0x3c]
	lsr r2, r2, #1
	str r2, [sp, #0x2c]
_0206E6A6:
	mov r3, #0x46
	ldr r2, [sp, #0x48]
	lsl r3, r3, #2
	ldr r4, [r2, r3]
	lsl r2, r4, #0x1b
	asr r2, r2, #0x1f
	beq _0206E6CA
	ldr r2, [sp, #0x34]
	cmp r2, #0
	bne _0206E6C4
	mov r2, #0x10
	bic r4, r2
	ldr r2, [sp, #0x48]
	str r4, [r2, r3]
	b _0206E6CA
_0206E6C4:
	str r2, [sp, #0x2c]
	mov r2, #0
	str r2, [sp, #0x34]
_0206E6CA:
	mov r2, #0
	str r2, [sp, #0x44]
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	add r2, r3, r2
	cmp r2, r1
	blo _0206E70A
	add r2, r3, #0
	sub r1, r1, r2
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x48]
	add r1, #0xdc
	ldr r1, [r1]
	sub r1, r1, #1
	cmp r0, r1
	blo _0206E70A
	ldr r1, [sp, #0x48]
	add r1, #0xc9
	ldrb r1, [r1]
	cmp r1, #0
	beq _0206E6FA
	mov r1, #1
	str r1, [sp, #0x44]
	b _0206E70A
_0206E6FA:
	mov r2, #0x46
	ldr r1, [sp, #0x48]
	lsl r2, r2, #2
	ldr r3, [r1, r2]
	mov r1, #0x20
	orr r3, r1
	ldr r1, [sp, #0x48]
	str r3, [r1, r2]
_0206E70A:
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x48]
	add r2, #0xc8
	ldrb r2, [r2]
	cmp r2, #0
	beq _0206E724
	cmp r2, #1
	beq _0206E72A
	cmp r2, #2
	beq _0206E736
	b _0206E75A
_0206E724:
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0x24]
	b _0206E75A
_0206E72A:
	ldr r2, [sp, #0x2c]
	lsl r1, r1, #1
	lsl r2, r2, #1
	str r2, [sp, #0x28]
	str r2, [sp, #0x24]
	b _0206E75A
_0206E736:
	ldr r3, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	lsr r1, r1, #1
	add r2, r3, r2
	add r2, r2, #1
	lsr r2, r2, #1
	sub r2, r2, r1
	str r2, [sp, #0x24]
	add r2, r3, #0
	bne _0206E752
	ldr r2, [sp, #0x24]
	add r2, r2, #4
	str r2, [sp, #0x24]
	b _0206E754
_0206E752:
	add r1, r1, #4
_0206E754:
	ldr r2, [sp, #0x28]
	lsl r2, r2, #1
	str r2, [sp, #0x28]
_0206E75A:
	ldr r2, [sp, #0x48]
	add r2, #0xca
	ldrb r3, [r2]
	ldr r2, [sp, #0x48]
	add r2, #0xe0
	ldr r2, [r2]
	mul r2, r0
	add r0, r3, #0
	mul r0, r2
	add r1, r1, r0
	ldr r0, [sp, #0x48]
	add r0, #0xd8
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _0206E816
	ldr r0, [sp, #8]
	mov r1, #1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	lsl r1, r1, #8
	add r6, r0, r1
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x34]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #1
	str r0, [sp, #0x10]
	bic r0, r1
	str r0, [sp, #0x10]
_0206E7AA:
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x40]
	add r1, r1, r0
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x20]
	add r0, #0xca
	ldrb r2, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r2
	blt _0206E7C2
	b _0206EA32
_0206E7C2:
	ldr r0, [sp, #0x48]
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #2
	bne _0206E7D6
	ldr r0, _0206EAA0 ; =0x02149968
	bl sub_0207AE68
	ldr r0, _0206EAA4 ; =0x02149950
	ldr r1, [r0, #8]
_0206E7D6:
	ldr r4, [sp, #0xc]
	ldr r3, [sp, #0x38]
	add r5, r4, #0
	mul r5, r3
	ldr r3, [sp, #0x30]
	mov r4, #0x5d
	ldr r0, [sp, #0x48]
	add r3, r3, r5
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r2, [sp, #0x24]
	ldr r4, [r5, r4]
	blx r4
	ldr r1, [sp, #0x24]
	cmp r0, r1
	beq _0206E820
	mov r0, #0
	mov r1, #0x46
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp, #0x48]
	str r2, [r0, r1]
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #2
	beq _0206E818
_0206E816:
	b _0206EA74
_0206E818:
	ldr r0, _0206EAA0 ; =0x02149968
	bl sub_0207AEA4
	b _0206EA74
_0206E820:
	ldr r0, [sp, #0x48]
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #2
	beq _0206E82C
	b _0206EA5A
_0206E82C:
	ldr r0, _0206EAA4 ; =0x02149950
	ldr r1, [r0, #8]
	ldr r0, [sp, #0x34]
	add r7, r1, #0
	cmp r0, #0
	bne _0206E842
	ldrh r0, [r1]
	add r7, r1, #4
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
_0206E842:
	ldr r0, [sp, #0x34]
	mov ip, r0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0206E8C4
	ldrb r0, [r7]
	ldrb r4, [r6, #2]
	asr r1, r0, #4
	mov r0, #0xf
	and r0, r1
	mov r1, #0
	ldrsh r2, [r6, r1]
	ldr r1, _0206EAA8 ; =0x0209448C
	lsl r3, r4, #1
	ldrsh r5, [r1, r3]
	mov r3, #4
	asr r1, r5, #3
	tst r3, r0
	beq _0206E86A
	add r1, r1, r5
_0206E86A:
	mov r3, #2
	tst r3, r0
	beq _0206E874
	asr r3, r5, #1
	add r1, r1, r3
_0206E874:
	mov r3, #1
	tst r3, r0
	beq _0206E87E
	asr r3, r5, #2
	add r1, r1, r3
_0206E87E:
	mov r3, #8
	tst r3, r0
	beq _0206E890
	sub r2, r2, r1
	ldr r1, _0206EAAC ; =0xFFFF8000
	cmp r2, r1
	bge _0206E89A
	add r2, r1, #0
	b _0206E89A
_0206E890:
	add r2, r2, r1
	ldr r1, _0206EAB0 ; =0x00007FFF
	cmp r2, r1
	ble _0206E89A
	add r2, r1, #0
_0206E89A:
	ldr r1, _0206EAB4 ; =0x0209447C
	ldrsb r0, [r1, r0]
	add r4, r4, r0
	bpl _0206E8A6
	mov r4, #0
	b _0206E8AC
_0206E8A6:
	cmp r4, #0x58
	ble _0206E8AC
	mov r4, #0x58
_0206E8AC:
	lsl r0, r2, #0x10
	asr r1, r0, #0x10
	strh r1, [r6]
	ldr r0, [sp, #0x20]
	strb r4, [r6, #2]
	strh r1, [r0]
	add r0, r0, #2
	str r0, [sp, #0x20]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	add r7, r7, #1
_0206E8C4:
	ldr r0, [sp, #0x10]
	mov r1, ip
	cmp r1, r0
	bhs _0206E9B8
_0206E8CC:
	ldrb r1, [r7]
	mov r0, #0xf
	ldrb r2, [r6, #2]
	and r0, r1
	mov r1, #0
	ldrsh r3, [r6, r1]
	ldr r1, _0206EAA8 ; =0x0209448C
	lsl r4, r2, #1
	ldrsh r4, [r1, r4]
	mov r5, #4
	asr r1, r4, #3
	tst r5, r0
	beq _0206E8E8
	add r1, r1, r4
_0206E8E8:
	mov r5, #2
	tst r5, r0
	beq _0206E8F2
	asr r5, r4, #1
	add r1, r1, r5
_0206E8F2:
	mov r5, #1
	tst r5, r0
	beq _0206E8FC
	asr r4, r4, #2
	add r1, r1, r4
_0206E8FC:
	mov r4, #8
	tst r4, r0
	beq _0206E90E
	sub r3, r3, r1
	ldr r1, _0206EAAC ; =0xFFFF8000
	cmp r3, r1
	bge _0206E918
	add r3, r1, #0
	b _0206E918
_0206E90E:
	add r3, r3, r1
	ldr r1, _0206EAB0 ; =0x00007FFF
	cmp r3, r1
	ble _0206E918
	add r3, r1, #0
_0206E918:
	ldr r1, _0206EAB4 ; =0x0209447C
	ldrsb r0, [r1, r0]
	add r2, r2, r0
	bpl _0206E924
	mov r2, #0
	b _0206E92A
_0206E924:
	cmp r2, #0x58
	ble _0206E92A
	mov r2, #0x58
_0206E92A:
	lsl r0, r3, #0x10
	asr r1, r0, #0x10
	strh r1, [r6]
	ldr r0, [sp, #0x20]
	strb r2, [r6, #2]
	strh r1, [r0]
	ldrb r0, [r7]
	ldrb r2, [r6, #2]
	mov r5, #4
	asr r1, r0, #4
	mov r0, #0xf
	and r0, r1
	mov r1, #0
	ldrsh r3, [r6, r1]
	ldr r1, _0206EAA8 ; =0x0209448C
	lsl r4, r2, #1
	ldrsh r4, [r1, r4]
	asr r1, r4, #3
	tst r5, r0
	beq _0206E954
	add r1, r1, r4
_0206E954:
	mov r5, #2
	tst r5, r0
	beq _0206E95E
	asr r5, r4, #1
	add r1, r1, r5
_0206E95E:
	mov r5, #1
	tst r5, r0
	beq _0206E968
	asr r4, r4, #2
	add r1, r1, r4
_0206E968:
	mov r4, #8
	tst r4, r0
	beq _0206E97A
	sub r3, r3, r1
	ldr r1, _0206EAAC ; =0xFFFF8000
	cmp r3, r1
	bge _0206E984
	add r3, r1, #0
	b _0206E984
_0206E97A:
	add r3, r3, r1
	ldr r1, _0206EAB0 ; =0x00007FFF
	cmp r3, r1
	ble _0206E984
	add r3, r1, #0
_0206E984:
	ldr r1, _0206EAB4 ; =0x0209447C
	ldrsb r0, [r1, r0]
	add r2, r2, r0
	bpl _0206E990
	mov r2, #0
	b _0206E996
_0206E990:
	cmp r2, #0x58
	ble _0206E996
	mov r2, #0x58
_0206E996:
	lsl r0, r3, #0x10
	asr r0, r0, #0x10
	strh r0, [r6]
	ldr r1, [sp, #0x20]
	strb r2, [r6, #2]
	add r2, r1, #2
	strh r0, [r2]
	mov r0, ip
	add r0, r0, #2
	add r1, r1, #4
	mov ip, r0
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r1, ip
	add r7, r7, #1
	cmp r1, r0
	blo _0206E8CC
_0206E9B8:
	ldr r0, [sp, #0x18]
	mov r1, ip
	cmp r1, r0
	bhs _0206EA2A
	ldrb r1, [r7]
	mov r0, #0xf
	ldrb r2, [r6, #2]
	and r0, r1
	mov r1, #0
	ldrsh r3, [r6, r1]
	ldr r1, _0206EAA8 ; =0x0209448C
	lsl r4, r2, #1
	ldrsh r4, [r1, r4]
	mov r5, #4
	asr r1, r4, #3
	tst r5, r0
	beq _0206E9DC
	add r1, r1, r4
_0206E9DC:
	mov r5, #2
	tst r5, r0
	beq _0206E9E6
	asr r5, r4, #1
	add r1, r1, r5
_0206E9E6:
	mov r5, #1
	tst r5, r0
	beq _0206E9F0
	asr r4, r4, #2
	add r1, r1, r4
_0206E9F0:
	mov r4, #8
	tst r4, r0
	beq _0206EA02
	sub r3, r3, r1
	ldr r1, _0206EAAC ; =0xFFFF8000
	cmp r3, r1
	bge _0206EA0C
	add r3, r1, #0
	b _0206EA0C
_0206EA02:
	add r3, r3, r1
	ldr r1, _0206EAB0 ; =0x00007FFF
	cmp r3, r1
	ble _0206EA0C
	add r3, r1, #0
_0206EA0C:
	ldr r1, _0206EAB4 ; =0x0209447C
	ldrsb r0, [r1, r0]
	add r2, r2, r0
	bpl _0206EA18
	mov r2, #0
	b _0206EA1E
_0206EA18:
	cmp r2, #0x58
	ble _0206EA1E
	mov r2, #0x58
_0206EA1E:
	lsl r0, r3, #0x10
	asr r1, r0, #0x10
	strh r1, [r6]
	ldr r0, [sp, #0x20]
	strb r2, [r6, #2]
	strh r1, [r0]
_0206EA2A:
	ldr r0, _0206EAA0 ; =0x02149968
	bl sub_0207AEA4
	b _0206EA5A
_0206EA32:
	mov r0, #0x46
	ldr r2, [sp, #0x48]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x19
	asr r0, r0, #0x1f
	beq _0206EA4C
	ldr r2, [sp, #0x28]
	add r0, r1, #0
	mov r1, #0
	blx MI_CpuFill8
	b _0206EA5A
_0206EA4C:
	ldr r0, [sp, #8]
	ldr r2, [r0, #0x14]
	ldr r0, [sp, #0x40]
	add r0, r2, r0
	ldr r2, [sp, #0x28]
	blx MI_CpuCopy8
_0206EA5A:
	ldr r0, [sp, #0x1c]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bge _0206EA74
	b _0206E7AA
_0206EA74:
	mov r0, #0x46
	ldr r1, [sp, #0x48]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	lsl r1, r2, #0x1b
	asr r1, r1, #0x1f
	beq _0206EA8C
	mov r1, #0x10
	bic r2, r1
	ldr r1, [sp, #0x48]
	str r2, [r1, r0]
	b _0206EAF8
_0206EA8C:
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _0206EAB8
	ldr r1, [sp, #0x48]
	add r0, #0x50
	add r1, #0xd0
	ldr r2, [r1]
	ldr r1, [sp, #0x48]
	b _0206EAC8
	nop
_0206EAA0: .word 0x02149968
_0206EAA4: .word 0x02149950
_0206EAA8: .word 0x0209448C
_0206EAAC: .word 0xFFFF8000
_0206EAB0: .word 0x00007FFF
_0206EAB4: .word 0x0209447C
_0206EAB8:
	add r2, r0, #0
	ldr r1, [sp, #0x48]
	add r2, #0x50
	ldr r2, [r1, r2]
	ldr r1, [sp, #0x2c]
	add r0, #0x50
	add r2, r2, r1
	ldr r1, [sp, #0x48]
_0206EAC8:
	str r2, [r1, r0]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	sub r0, r1, r0
	str r0, [sp, #0x3c]
	mov r1, #0x46
	ldr r0, [sp, #0x48]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1a
	asr r0, r0, #0x1f
	beq _0206EAF8
	ldr r0, [sp, #0x48]
	add r1, #0x2c
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0206EAF8
	ldr r0, [sp, #0x48]
	bl sub_0206E4EC
_0206EAF8:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0206EB00
	b _0206E618
_0206EB00:
	mov r1, #0x4f
	ldr r0, [sp, #0x48]
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	cmp r4, #0
	beq _0206EB38
	add r0, #0xc8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0206EB18
	mov r0, #0
	b _0206EB1A
_0206EB18:
	mov r0, #1
_0206EB1A:
	str r0, [sp]
	mov r1, #5
	ldr r0, [sp, #0x48]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	ldr r2, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0xc]
	ldr r1, [r1, #0x10]
	ldr r3, [r3, #0x2c]
	add r2, #0x14
	blx r4
_0206EB38:
	ldr r0, [sp, #8]
	mov r5, #0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _0206EB5A
	ldr r4, [sp, #8]
_0206EB44:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x2c]
	blx sub_0207B0AC
	ldr r0, [sp, #8]
	add r5, r5, #1
	ldr r0, [r0, #0x10]
	add r4, r4, #4
	cmp r5, r0
	blt _0206EB44
_0206EB5A:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0206EB6C
	mov r1, #0x12
	ldr r0, [sp, #0x48]
	mov r2, #1
	lsl r1, r1, #4
	str r2, [r0, r1]
_0206EB6C:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E5E0

	thumb_func_start sub_0206EB70
sub_0206EB70: ; 0x0206EB70
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0206CFB4
	cmp r0, #0
	bne _0206EB9C
	mov r1, #0x5b
	ldr r0, _0206EBBC ; =sub_0206EBDC
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _0206EBC0 ; =sub_0206EC40
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _0206EBC4 ; =sub_0206EC4C
	add r0, #8
	str r2, [r4, r0]
	ldr r0, _0206EBC8 ; =sub_0206EC74
	add r1, #0xc
	str r0, [r4, r1]
	pop {r4, pc}
_0206EB9C:
	mov r1, #0x5b
	ldr r0, _0206EBCC ; =sub_0206EC80
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _0206EBD0 ; =sub_0206ECA4
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, _0206EBD4 ; =sub_0206ECA8
	add r0, #8
	str r2, [r4, r0]
	ldr r0, _0206EBD8 ; =sub_0206ECBC
	add r1, #0xc
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0206EBBC: .word sub_0206EBDC
_0206EBC0: .word sub_0206EC40
_0206EBC4: .word sub_0206EC4C
_0206EBC8: .word sub_0206EC74
_0206EBCC: .word sub_0206EC80
_0206EBD0: .word sub_0206ECA4
_0206EBD4: .word sub_0206ECA8
_0206EBD8: .word sub_0206ECBC
	thumb_func_end sub_0206EB70

	thumb_func_start sub_0206EBDC
sub_0206EBDC: ; 0x0206EBDC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0xb0
	mov r2, #0x40
	mov r3, #0
	bl sub_0206CEEC
	cmp r0, #0x40
	beq _0206EBFC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206EBFC:
	add r0, sp, #0
	bl sub_0206CF90
	add r3, sp, #0
	add r0, r5, #0
	ldmia r3!, {r1, r2}
	add r0, #0x64
	bl sub_02070D38
	cmp r0, #0
	bne _0206EC2E
	bl sub_0206CFA4
	add r1, r0, #0
	beq _0206EC2E
	add r0, r5, #0
	add r0, #0x64
	mov r2, #1
	bl sub_02070D68
	cmp r0, #0
	bne _0206EC2E
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206EC2E:
	add r0, r4, #0
	bl sub_0206CEAC
	add r5, #0xac
	str r0, [r5]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_0206EBDC

	thumb_func_start sub_0206EC40
sub_0206EC40: ; 0x0206EC40
	ldr r3, _0206EC48 ; =sub_02070DB4
	add r0, #0x64
	bx r3
	nop
_0206EC48: .word sub_02070DB4
	thumb_func_end sub_0206EC40

	thumb_func_start sub_0206EC4C
sub_0206EC4C: ; 0x0206EC4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xac
	ldr r1, [r1]
	add r6, r2, #0
	add r0, #0x64
	add r1, r1, r3
	mov r2, #0
	bl sub_02070E28
	add r5, #0x64
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02070E40
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_0206EC4C

	thumb_func_start sub_0206EC74
sub_0206EC74: ; 0x0206EC74
	ldr r3, _0206EC7C ; =sub_02070C98
	add r0, #0x64
	bx r3
	nop
_0206EC7C: .word sub_02070C98
	thumb_func_end sub_0206EC74

	thumb_func_start sub_0206EC80
sub_0206EC80: ; 0x0206EC80
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_0206CFB4
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xac
	add r4, #0xb0
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #0x40
	blx MI_CpuCopy8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_0206EC80

	thumb_func_start sub_0206ECA4
sub_0206ECA4: ; 0x0206ECA4
	bx lr
	.align 2, 0
	thumb_func_end sub_0206ECA4

	thumb_func_start sub_0206ECA8
sub_0206ECA8: ; 0x0206ECA8
	push {r4, lr}
	add r0, #0xac
	ldr r0, [r0]
	add r4, r2, #0
	add r0, r0, r3
	blx MI_CpuCopy8
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206ECA8

	thumb_func_start sub_0206ECBC
sub_0206ECBC: ; 0x0206ECBC
	bx lr
	.align 2, 0
	thumb_func_end sub_0206ECBC

	thumb_func_start sub_0206ECC0
sub_0206ECC0: ; 0x0206ECC0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0206ED00 ; =0x000010C8
	add r5, r0, #0
	add r7, r6, #0
	add r7, #0x18
_0206ECCA:
	mov r0, #0x43
	lsl r0, r0, #6
	add r0, r5, r0
	bl sub_0207A868
_0206ECD4:
	add r0, r5, r6
	bl sub_0207AE68
	add r0, r5, r7
	bl sub_0206E310
	add r4, r0, #0
	bne _0206ECEC
	add r0, r5, r6
	bl sub_0207AEA4
	b _0206ECCA
_0206ECEC:
	bl sub_0206E5E0
	add r0, r4, #0
	bl sub_0206E370
	add r0, r5, r6
	bl sub_0207AEA4
	b _0206ECD4
	nop
_0206ED00: .word 0x000010C8
	thumb_func_end sub_0206ECC0

	thumb_func_start sub_0206ED04
sub_0206ED04: ; 0x0206ED04
	cmp r1, #0
	bge _0206ED0C
	mov r0, #0
	bx lr
_0206ED0C:
	ldr r2, [r0, #0x1c]
	cmp r1, r2
	blo _0206ED16
	mov r0, #0
	bx lr
_0206ED16:
	mov r2, #0xc
	add r3, r1, #0
	mul r3, r2
	add r0, #0x20
	add r1, r0, r3
	ldr r0, [r0, r3]
	sub r2, #0xd
	cmp r0, r2
	bne _0206ED2A
	mov r1, #0
_0206ED2A:
	add r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0206ED04

	thumb_func_start sub_0206ED30
sub_0206ED30: ; 0x0206ED30
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_0206ED30

	thumb_func_start sub_0206ED3C
sub_0206ED3C: ; 0x0206ED3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0206ED54
	str r0, [r5]
	str r4, [r5, #4]
	str r6, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206ED3C

	thumb_func_start sub_0206ED54
sub_0206ED54: ; 0x0206ED54
	push {r4, lr}
	ldr r1, [r0, #0xc]
	ldr r2, [r0, #8]
	cmp r2, r1
	blt _0206ED62
	ldr r0, [r0, #4]
	pop {r4, pc}
_0206ED62:
	ldr r4, [r0]
	ldr r0, [r0, #4]
	sub r0, r0, r4
	mul r0, r2
	blx sub_0208D65C
	add r0, r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206ED54

	thumb_func_start sub_0206ED74
sub_0206ED74: ; 0x0206ED74
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bge _0206ED80
	add r1, r2, #1
	str r1, [r0, #8]
_0206ED80:
	bx lr
	.align 2, 0
	thumb_func_end sub_0206ED74

	thumb_func_start sub_0206ED84
sub_0206ED84: ; 0x0206ED84
	ldr r1, [r0, #8]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _0206ED90
	mov r0, #1
	bx lr
_0206ED90:
	mov r0, #0
	bx lr
	thumb_func_end sub_0206ED84

	thumb_func_start sub_0206ED94
sub_0206ED94: ; 0x0206ED94
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	blx r1
	cmp r0, #0
	beq _0206EDB0
	add r0, r4, #0
	mov r1, #1
	bl sub_0207C864
	add sp, #4
	pop {r3, r4, pc}
_0206EDB0:
	str r4, [sp]
	add r4, #0xc
	mov r2, #0xc0
	ldr r3, _0206EDC8 ; =sub_0206ED94
	add r0, r4, #0
	mov r1, #0xc0
	add r2, #0x47
	bl sub_0207BF08
	add sp, #4
	pop {r3, r4, pc}
	nop
_0206EDC8: .word sub_0206ED94
	thumb_func_end sub_0206ED94

	thumb_func_start sub_0206EDCC
sub_0206EDCC: ; 0x0206EDCC
	push {r3, lr}
	ldrh r0, [r0]
	bl sub_0207A1A8
	cmp r0, #0
	bne _0206EDDC
	mov r0, #1
	pop {r3, pc}
_0206EDDC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206EDCC

	thumb_func_start sub_0206EDE0
sub_0206EDE0: ; 0x0206EDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0206EE8C ; =0x0214B440
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0206EE88
	mov r0, #1
	str r0, [r5, #4]
	bl OS_GetBootType
	cmp r0, #1
	bne _0206EE04
	mov r2, #0x16
	ldr r0, _0206EE90 ; =0x02FFFE00
	ldr r1, _0206EE94 ; =0x02FFFA80
	lsl r2, r2, #4
	blx MI_CpuCopy8
_0206EE04:
	ldr r4, _0206EE98 ; =0x000004FC
	mov r6, #0
	str r6, [r5, r4]
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r6, [r5, r0]
	add r0, r4, #0
	sub r1, r6, #1
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x10
	str r6, [r5, r0]
	mov r0, #9
	lsl r0, r0, #0xa
	str r0, [r5, #0x10]
	ldr r0, _0206EE9C ; =0x0214BA80
	add r7, r4, #0
	sub r7, #0xfc
	str r6, [r0]
	mov r0, #4
	str r7, [r5, #0xc]
	str r0, [r5, #8]
	bl sub_0206F0A8
	add r0, r4, #0
	sub r0, #0x10
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #0xc
	str r6, [r5, r0]
	sub r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	sub r0, #8
	str r6, [r5, r0]
	str r7, [sp]
	ldr r0, [r5, #8]
	sub r4, #0x14
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r1, _0206EEA0 ; =sub_0206F188
	add r0, #0x28
	mov r2, #0
	add r3, r5, r4
	bl sub_0207A588
	add r5, #0x28
	add r0, r5, #0
	bl sub_0207A8E4
	bl sub_0206F0C0
	bl sub_0206FE54
	bl OS_GetBootType
	cmp r0, #1
	bne _0206EE84
	mov r0, #1
	bl sub_0206EEC0
_0206EE84:
	bl sub_0206FED8
_0206EE88:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206EE8C: .word 0x0214B440
_0206EE90: .word 0x02FFFE00
_0206EE94: .word 0x02FFFA80
_0206EE98: .word 0x000004FC
_0206EE9C: .word 0x0214BA80
_0206EEA0: .word sub_0206F188
	thumb_func_end sub_0206EDE0

	thumb_func_start sub_0206EEA4
sub_0206EEA4: ; 0x0206EEA4
	ldr r0, _0206EEAC ; =0x0214B3DC
	ldr r0, [r0]
	bx lr
	nop
_0206EEAC: .word 0x0214B3DC
	thumb_func_end sub_0206EEA4

	thumb_func_start sub_0206EEB0
sub_0206EEB0: ; 0x0206EEB0
	push {r3, lr}
	bl sub_0206EEA4
	cmp r0, #0
	bne _0206EEBE
	bl sub_0207C774
_0206EEBE:
	pop {r3, pc}
	thumb_func_end sub_0206EEB0

	thumb_func_start sub_0206EEC0
sub_0206EEC0: ; 0x0206EEC0
	ldr r1, _0206EEC8 ; =0x0214B3DC
	str r0, [r1]
	bx lr
	nop
_0206EEC8: .word 0x0214B3DC
	thumb_func_end sub_0206EEC0

	thumb_func_start sub_0206EECC
sub_0206EECC: ; 0x0206EECC
	ldr r0, _0206EED4 ; =0x0214B440
	ldr r0, [r0]
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0206EED4: .word 0x0214B440
	thumb_func_end sub_0206EECC

	thumb_func_start sub_0206EED8
sub_0206EED8: ; 0x0206EED8
	ldr r0, _0206EEDC ; =0x02FFFA80
	bx lr
	.align 2, 0
_0206EEDC: .word 0x02FFFA80
	thumb_func_end sub_0206EED8

	thumb_func_start sub_0206EEE0
sub_0206EEE0: ; 0x0206EEE0
	ldr r0, _0206EEE4 ; =0x02FFFE00
	bx lr
	.align 2, 0
_0206EEE4: .word 0x02FFFE00
	thumb_func_end sub_0206EEE0

	thumb_func_start sub_0206EEE8
sub_0206EEE8: ; 0x0206EEE8
	ldr r0, _0206EEEC ; =0x02FFE000
	bx lr
	.align 2, 0
_0206EEEC: .word 0x02FFE000
	thumb_func_end sub_0206EEE8

	thumb_func_start sub_0206EEF0
sub_0206EEF0: ; 0x0206EEF0
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #0x40
	add r0, sp, #0x48
	ldrh r0, [r0]
	mov r1, #1
	bl sub_0206EF74
	add r4, sp, #0
	add r0, r4, #0
	bl sub_0207C7F4
	add r0, sp, #0xc
	bl sub_0207BEFC
	ldr r0, _0206EF34 ; =sub_0206EDCC
	str r0, [sp, #0x34]
	add r0, sp, #0x48
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl sub_0206ED94
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_0207C800
	add sp, #0x40
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_0206EF34: .word sub_0206EDCC
	thumb_func_end sub_0206EEF0

	thumb_func_start sub_0206EF38
sub_0206EF38: ; 0x0206EF38
	push {r4, lr}
	add r4, r0, #0
	bl sub_0207A18C
	add r0, r4, #0
	mov r1, #1
	bl sub_0206EFC8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206EF38

	thumb_func_start sub_0206EF4C
sub_0206EF4C: ; 0x0206EF4C
	ldr r3, _0206EF54 ; =sub_0206EF74
	mov r1, #2
	bx r3
	nop
_0206EF54: .word sub_0206EF74
	thumb_func_end sub_0206EF4C

	thumb_func_start sub_0206EF58
sub_0206EF58: ; 0x0206EF58
	push {r4, lr}
	add r4, r0, #0
	bl sub_0206F890
	cmp r0, #0
	bne _0206EF68
	bl sub_0206F888
_0206EF68:
	add r0, r4, #0
	mov r1, #2
	bl sub_0206EFC8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206EF58

	thumb_func_start sub_0206EF74
sub_0206EF74: ; 0x0206EF74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, _0206EFC4 ; =0x0214B440
	add r7, r0, #0
	str r1, [sp]
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	cmp r0, r7
	bne _0206EF98
	ldr r1, [r5, #0x24]
	ldr r0, [sp]
	cmp r1, r0
	beq _0206EFB4
	bl sub_0207C774
	b _0206EFB4
_0206EF98:
	add r4, r5, #0
	mov r6, #2
	add r4, #0x1c
	mvn r6, r6
	b _0206EFA8
_0206EFA2:
	add r0, r4, #0
	bl sub_0207A868
_0206EFA8:
	ldr r0, [r5, #0x14]
	cmp r0, r6
	bne _0206EFA2
	ldr r0, [sp]
	str r7, [r5, #0x14]
	str r0, [r5, #0x24]
_0206EFB4:
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206EFC4: .word 0x0214B440
	thumb_func_end sub_0206EF74

	thumb_func_start sub_0206EFC8
sub_0206EFC8: ; 0x0206EFC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0206F014 ; =0x0214B440
	add r5, r0, #0
	add r6, r1, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, r5
	bne _0206EFE2
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0206EFE8
_0206EFE2:
	bl sub_0207C774
	b _0206F00C
_0206EFE8:
	ldr r0, [r4, #0x24]
	cmp r0, r6
	beq _0206EFF2
	bl sub_0207C774
_0206EFF2:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _0206F00C
	mov r0, #2
	mvn r0, r0
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x24]
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0207A89C
_0206F00C:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206F014: .word 0x0214B440
	thumb_func_end sub_0206EFC8

	thumb_func_start sub_0206F018
sub_0206F018: ; 0x0206F018
	push {r4, lr}
	mov r4, #0
	bl OS_GetBootType
	cmp r0, #1
	bne _0206F028
_0206F024:
	mov r4, #7
	b _0206F076
_0206F028:
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0206F032
	b _0206F024
_0206F032:
	bl sub_0206EEE8
	mov r2, #0x6d
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	add r1, r4, #0
	lsl r3, r2, #0x17
	lsr r3, r3, #0x1f
	beq _0206F04A
	mov r1, #4
	orr r4, r1
	b _0206F050
_0206F04A:
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	beq _0206F052
_0206F050:
	mov r1, #1
_0206F052:
	cmp r1, #0
	beq _0206F076
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1f
	beq _0206F066
	mov r1, #1
	orr r4, r1
_0206F066:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1f
	beq _0206F076
	mov r0, #2
	orr r4, r0
_0206F076:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206F018

	thumb_func_start sub_0206F07C
sub_0206F07C: ; 0x0206F07C
	push {r3, lr}
	ldr r0, _0206F08C ; =0x0214B440
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_0206F1C0
	pop {r3, pc}
	.align 2, 0
_0206F08C: .word 0x0214B440
	thumb_func_end sub_0206F07C

	thumb_func_start sub_0206F090
sub_0206F090: ; 0x0206F090
	ldr r0, _0206F0A4 ; =0x0214B440
	ldr r1, [r0, #4]
	mov r0, #4
	tst r0, r1
	bne _0206F09E
	mov r0, #1
	bx lr
_0206F09E:
	mov r0, #0
	bx lr
	nop
_0206F0A4: .word 0x0214B440
	thumb_func_end sub_0206F090

	thumb_func_start sub_0206F0A8
sub_0206F0A8: ; 0x0206F0A8
	mov r0, #2
	ldr r1, _0206F0BC ; =0x0214B440
	mvn r0, r0
	str r0, [r1, #0x14]
	mov r0, #0
	str r0, [r1, #0x18]
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	str r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_0206F0BC: .word 0x0214B440
	thumb_func_end sub_0206F0A8

	thumb_func_start sub_0206F0C0
sub_0206F0C0: ; 0x0206F0C0
	push {r4, lr}
	ldr r4, _0206F0E4 ; =0x0214B3E0
	ldr r0, _0206F0E8 ; =0x0214B440
	add r1, r4, #0
	str r4, [r0]
	mov r0, #0
	mov r2, #0x60
	blx MIi_CpuClearFast
	add r0, r4, #0
	mov r1, #0x60
	blx sub_0207B0AC
	ldr r1, _0206F0EC ; =sub_0206F2E4
	mov r0, #0xb
	bl PXI_SetFifoRecvCallback
	pop {r4, pc}
	.align 2, 0
_0206F0E4: .word 0x0214B3E0
_0206F0E8: .word 0x0214B440
_0206F0EC: .word sub_0206F2E4
	thumb_func_end sub_0206F0C0

	thumb_func_start sub_0206F0F0
sub_0206F0F0: ; 0x0206F0F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r0, _0206F12C ; =0x0214B960
	ldr r4, _0206F130 ; =0x0214B960
	ldr r5, [r0]
	cmp r5, #0
	beq _0206F122
_0206F106:
	ldr r3, [r5, #8]
	cmp r3, #0
	beq _0206F114
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r7, #0
	blx r3
_0206F114:
	ldr r0, [r4]
	cmp r0, r5
	bne _0206F11C
	add r4, r0, #0
_0206F11C:
	ldr r5, [r4]
	cmp r5, #0
	bne _0206F106
_0206F122:
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F12C: .word 0x0214B960
_0206F130: .word 0x0214B960
	thumb_func_end sub_0206F0F0

	thumb_func_start sub_0206F134
sub_0206F134: ; 0x0206F134
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _0206F180 ; =0x0214B440
	beq _0206F15E
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x28
	bl sub_0207A998
	ldr r0, _0206F184 ; =0x000004E8
	str r5, [r4, r0]
	ldr r1, [r4, #4]
	mov r0, #8
	orr r0, r1
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x28
	bl sub_0207A8E4
	b _0206F168
_0206F15E:
	add r0, r4, #0
	blx r5
	add r0, r4, #0
	bl sub_0206F224
_0206F168:
	cmp r6, #0
	beq _0206F170
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206F170:
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0206F17C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206F17C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206F180: .word 0x0214B440
_0206F184: .word 0x000004E8
	thumb_func_end sub_0206F134

	thumb_func_start sub_0206F188
sub_0206F188: ; 0x0206F188
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _0206F1B8 ; =0x0214B440
	mov r6, #0
	mov r4, #8
_0206F190:
	blx OS_DisableInterrupts
	add r7, r0, #0
_0206F196:
	ldr r0, [r5, #4]
	tst r0, r4
	bne _0206F1A4
	add r0, r6, #0
	bl sub_0207A868
	b _0206F196
_0206F1A4:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	ldr r0, _0206F1BC ; =0x000004E8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0206F134
	b _0206F190
	nop
_0206F1B8: .word 0x0214B440
_0206F1BC: .word 0x000004E8
	thumb_func_end sub_0206F188

	thumb_func_start sub_0206F1C0
sub_0206F1C0: ; 0x0206F1C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	blx OS_DisableInterrupts
	str r0, [sp, #8]
	ldr r1, [r5, #4]
	mov r0, #4
	tst r0, r1
	beq _0206F1EA
	ldr r4, _0206F21C ; =0x000004F4
	mov r6, #4
_0206F1DE:
	add r0, r5, r4
	bl sub_0207A868
	ldr r0, [r5, #4]
	tst r0, r6
	bne _0206F1DE
_0206F1EA:
	cmp r7, #0
	beq _0206F202
	ldr r1, [r5, #4]
	mov r0, #4
	orr r0, r1
	str r0, [r5, #4]
	ldr r1, _0206F220 ; =0x000004EC
	ldr r0, [sp]
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	add r1, r1, #4
	str r0, [r5, r1]
_0206F202:
	ldr r0, [sp, #8]
	blx OS_RestoreInterrupts
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	bne _0206F216
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0206F216:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0206F21C: .word 0x000004F4
_0206F220: .word 0x000004EC
	thumb_func_end sub_0206F1C0

	thumb_func_start sub_0206F224
sub_0206F224: ; 0x0206F224
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0206F258 ; =0x000004EC
	add r5, r0, #0
	add r0, r6, #4
	ldr r4, [r5, r6]
	ldr r7, [r5, r0]
	blx OS_DisableInterrupts
	str r0, [sp]
	ldr r1, [r5, #4]
	mov r0, #0x4c
	bic r1, r0
	add r6, #8
	add r0, r5, r6
	str r1, [r5, #4]
	bl sub_0207A89C
	ldr r0, [sp]
	blx OS_RestoreInterrupts
	cmp r4, #0
	beq _0206F254
	add r0, r7, #0
	blx r4
_0206F254:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F258: .word 0x000004EC
	thumb_func_end sub_0206F224

	thumb_func_start sub_0206F25C
sub_0206F25C: ; 0x0206F25C
	push {r4, lr}
	mov r1, #0x10
	mov r4, #0
	tst r1, r0
	beq _0206F26A
	mov r2, #1
	b _0206F26C
_0206F26A:
	add r2, r4, #0
_0206F26C:
	mov r1, #0x10
	bic r0, r1
	cmp r0, #3
	bhi _0206F28C
	cmp r2, #0
	bne _0206F27C
	ldr r4, _0206F290 ; =0x02094540
	b _0206F28C
_0206F27C:
	bl OS_IsRunOnTwl
	cmp r0, #0
	bne _0206F28A
	bl sub_0207C774
	b _0206F28C
_0206F28A:
	ldr r4, _0206F294 ; =0x027674A0
_0206F28C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0206F290: .word 0x02094540
_0206F294: .word 0x027674A0
	thumb_func_end sub_0206F25C

	thumb_func_start sub_0206F298
sub_0206F298: ; 0x0206F298
	push {r3, lr}
	cmp r1, r2
	blo _0206F2A4
	blx sub_0207B0DC
	pop {r3, pc}
_0206F2A4:
	blx sub_0207B0E8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end sub_0206F298

	thumb_func_start sub_0206F2AC
sub_0206F2AC: ; 0x0206F2AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, r2
	blo _0206F2BC
	blx sub_0207B040
	pop {r3, r4, r5, pc}
_0206F2BC:
	mov r0, #0x1f
	and r0, r5
	beq _0206F2D6
	sub r5, r5, r0
	add r0, r5, #0
	mov r1, #0x20
	blx sub_0207B090
	add r0, r5, r4
	mov r1, #0x20
	blx sub_0207B090
	add r4, #0x20
_0206F2D6:
	add r0, r5, #0
	add r1, r4, #0
	blx sub_0207B074
	blx sub_0207B0D0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206F2AC

	thumb_func_start sub_0206F2E4
sub_0206F2E4: ; 0x0206F2E4
	push {r3, lr}
	cmp r0, #0xb
	bne _0206F300
	cmp r2, #0
	beq _0206F300
	ldr r1, _0206F304 ; =0x0214B440
	mov r0, #0x20
	ldr r2, [r1, #4]
	bic r2, r0
	ldr r0, _0206F308 ; =0x0214B940
	str r2, [r1, #4]
	ldr r0, [r0, #0x1c]
	bl sub_0207A8E4
_0206F300:
	pop {r3, pc}
	nop
_0206F304: .word 0x0214B440
_0206F308: .word 0x0214B940
	thumb_func_end sub_0206F2E4

	thumb_func_start sub_0206F30C
sub_0206F30C: ; 0x0206F30C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	mov r0, #2
	str r2, [sp]
	tst r1, r0
	bne _0206F350
	ldr r1, [r5, #4]
	orr r0, r1
	str r0, [r5, #4]
	mov r0, #0xb
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	bne _0206F346
	mov r6, #0x32
	mov r7, #0xb
_0206F334:
	add r0, r6, #0
	bl OS_SpinWaitSysCycles
	add r0, r7, #0
	mov r1, #1
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _0206F334
_0206F346:
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl sub_0206F30C
_0206F350:
	ldr r0, [r5]
	mov r1, #0x60
	blx sub_0207B0AC
	blx sub_0207B0D0
	ldr r0, _0206F3D8 ; =0x0214C22C
	mov r7, #0xb
	ldr r1, [r0, #4]
	ldr r0, _0206F3DC ; =0x0000051C
	str r1, [r5, r0]
_0206F366:
	ldr r1, [r5, #4]
	mov r0, #0x20
	orr r0, r1
	str r0, [r5, #4]
_0206F36E:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0207CA6C
	cmp r0, #0
	blt _0206F36E
	cmp r4, #0
	bne _0206F390
	ldr r6, [r5]
_0206F382:
	mov r0, #0xb
	add r1, r6, #0
	mov r2, #1
	bl sub_0207CA6C
	cmp r0, #0
	blt _0206F382
_0206F390:
	blx OS_DisableInterrupts
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	mov r0, #0x20
	tst r0, r1
	beq _0206F3AC
	mov r6, #0x20
_0206F3A0:
	mov r0, #0
	bl sub_0207A868
	ldr r0, [r5, #4]
	tst r0, r6
	bne _0206F3A0
_0206F3AC:
	ldr r0, [sp, #4]
	blx OS_RestoreInterrupts
	ldr r0, [r5]
	mov r1, #0x60
	blx sub_0207B074
	ldr r0, [r5]
	ldr r1, [r0]
	cmp r1, #4
	bne _0206F3CC
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	cmp r0, #0
	bgt _0206F366
_0206F3CC:
	mov r0, #1
	cmp r1, #0
	beq _0206F3D4
	mov r0, #0
_0206F3D4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206F3D8: .word 0x0214C22C
_0206F3DC: .word 0x0000051C
	thumb_func_end sub_0206F30C

	thumb_func_start sub_0206F3E0
sub_0206F3E0: ; 0x0206F3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x51
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #8
	ldr r6, [r4, r0]
	add r0, r1, #4
	ldr r0, [r4, r0]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, _0206F528 ; =0x02005094
	blx sub_02004EB0
	ldr r0, [sp, #8]
	cmp r0, #0xb
	bne _0206F412
	bl sub_0206F87C
	b _0206F41C
_0206F412:
	cmp r0, #0xf
	bne _0206F41E
	ldr r0, _0206F52C ; =0x0214B440
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
_0206F41C:
	str r0, [sp]
_0206F41E:
	ldr r0, _0206F530 ; =0x000004FC
	ldr r7, _0206F534 ; =0x0214B980
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, _0206F530 ; =0x000004FC
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	ldr r0, _0206F530 ; =0x000004FC
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, _0206F530 ; =0x000004FC
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _0206F530 ; =0x000004FC
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, _0206F530 ; =0x000004FC
	str r0, [sp, #0x14]
	add r0, #8
	str r0, [sp, #0x14]
_0206F448:
	ldr r0, [sp, #0x14]
	ldr r5, [r4, r0]
	ldr r0, [sp]
	cmp r0, r5
	bhs _0206F454
	add r5, r0, #0
_0206F454:
	ldr r0, [r4]
	str r5, [r0, #0x14]
	ldr r1, [r4, #4]
	mov r0, #0x40
	tst r0, r1
	beq _0206F472
	ldr r1, [r4, #4]
	mov r0, #0x40
	bic r1, r0
	str r1, [r4, #4]
	ldr r0, [r4]
	mov r1, #7
	str r1, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0206F472:
	cmp r6, #3
	bhi _0206F4D0
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206F482: ; jump table
	.short _0206F48A - _0206F482 - 2 ; case 0
	.short _0206F4A0 - _0206F482 - 2 ; case 1
	.short _0206F4A0 - _0206F482 - 2 ; case 2
	.short _0206F4C0 - _0206F482 - 2 ; case 3
_0206F48A:
	add r0, r7, #0
	add r1, r5, #0
	blx sub_0207B074
	ldr r0, _0206F530 ; =0x000004FC
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0xc]
	ldr r0, [r4]
	str r7, [r0, #0x10]
	b _0206F4D0
_0206F4A0:
	ldr r0, _0206F530 ; =0x000004FC
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r2, r5, #0
	blx MI_CpuCopy8
	add r0, r7, #0
	add r1, r5, #0
	blx sub_0207B0AC
	blx sub_0207B0D0
	ldr r0, [r4]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x18]
	b _0206F4CA
_0206F4C0:
	ldr r0, _0206F530 ; =0x000004FC
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x1c]
_0206F4CA:
	ldr r1, [r4, r0]
	ldr r0, [r4]
	str r1, [r0, #0x10]
_0206F4D0:
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r4, #0
	bl sub_0206F30C
	cmp r0, #0
	beq _0206F522
	cmp r6, #2
	bne _0206F4F2
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	bl sub_0206F30C
	cmp r0, #0
	beq _0206F522
	b _0206F502
_0206F4F2:
	cmp r6, #0
	bne _0206F502
	ldr r1, [sp, #0x20]
	add r0, r7, #0
	ldr r1, [r4, r1]
	add r2, r5, #0
	blx MI_CpuCopy8
_0206F502:
	ldr r0, _0206F530 ; =0x000004FC
	ldr r0, [r4, r0]
	add r1, r0, r5
	ldr r0, _0206F530 ; =0x000004FC
	str r1, [r4, r0]
	ldr r0, [sp, #0x10]
	ldr r0, [r4, r0]
	add r1, r0, r5
	ldr r0, [sp, #0x10]
	str r1, [r4, r0]
	ldr r0, [sp, #0xc]
	ldr r0, [r4, r0]
	sub r1, r0, r5
	ldr r0, [sp, #0xc]
	str r1, [r4, r0]
	bne _0206F448
_0206F522:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0206F528: .word 0x02005094
_0206F52C: .word 0x0214B440
_0206F530: .word 0x000004FC
_0206F534: .word 0x0214B980
	thumb_func_end sub_0206F3E0

	thumb_func_start sub_0206F538
sub_0206F538: ; 0x0206F538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0206F780 ; =0x0214B440
	mov r1, #0
	ldr r4, [r0]
	mov r2, #0x48
	add r0, r4, #0
	add r0, #0x18
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, _0206F784 ; =0x0000203F
	str r5, [r4, #4]
	str r0, [r4, #0x58]
	cmp r5, #0
	bne _0206F55A
	b _0206F77C
_0206F55A:
	asr r0, r5, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r7, #1
	lsl r7, r0
	lsl r0, r5, #0x18
	lsr r2, r0, #0x18
	asr r0, r5, #0x10
	lsl r0, r0, #0x18
	add r5, r4, #0
	lsr r1, r0, #0x18
	str r7, [r4, #0x18]
	mov r0, #0xff
	add r5, #0x54
	mov r3, #1
	strb r0, [r5]
	cmp r2, #1
	bne _0206F600
	lsl r1, r3, #0xd
	cmp r7, r1
	bhi _0206F592
	add r0, r1, #0
	cmp r7, r0
	bhs _0206F5BC
	lsl r0, r3, #9
	cmp r7, r0
	beq _0206F5A8
	b _0206F76E
_0206F592:
	lsl r1, r3, #0x10
	cmp r7, r1
	bhi _0206F5A0
	add r0, r1, #0
	cmp r7, r0
	beq _0206F5C4
	b _0206F76E
_0206F5A0:
	lsl r1, r3, #0x11
	cmp r7, r1
	beq _0206F5D0
	b _0206F76E
_0206F5A8:
	mov r0, #0x10
	str r0, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #0xf0
	add r0, #0x54
	strb r1, [r0]
	b _0206F5E2
_0206F5BC:
	mov r0, #0x20
	str r0, [r4, #0x24]
	mov r0, #2
	b _0206F5D6
_0206F5C4:
	mov r0, #0x80
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0xa
	b _0206F5DA
_0206F5D0:
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #3
_0206F5D6:
	str r0, [r4, #0x28]
	mov r0, #5
_0206F5DA:
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
_0206F5E2:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0x58]
	mov r0, #0x40
	add r2, r1, #0
	mov r1, #0x40
	orr r2, r0
	add r1, #0xc0
	orr r2, r1
	lsl r1, r0, #3
	orr r1, r2
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_0206F600:
	cmp r2, #2
	beq _0206F606
	b _0206F734
_0206F606:
	lsl r2, r3, #0x14
	cmp r7, r2
	bhi _0206F624
	add r0, r2, #0
	cmp r7, r0
	bhs _0206F640
	lsl r0, r3, #0x12
	cmp r7, r0
	bhi _0206F61C
	beq _0206F640
	b _0206F76E
_0206F61C:
	lsl r0, r3, #0x13
	cmp r7, r0
	beq _0206F640
	b _0206F76E
_0206F624:
	lsl r2, r3, #0x16
	cmp r7, r2
	bhi _0206F638
	add r1, r2, #0
	cmp r7, r1
	bhs _0206F68E
	lsl r1, r3, #0x15
	cmp r7, r1
	beq _0206F65A
	b _0206F76E
_0206F638:
	lsl r0, r3, #0x17
	cmp r7, r0
	beq _0206F6C0
	b _0206F76E
_0206F640:
	mov r0, #0x19
	str r0, [r4, #0x30]
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [r4, #0x34]
	str r0, [r4, #0x50]
	ldr r0, _0206F788 ; =0x00001388
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x58]
	mov r0, #0x80
	orr r1, r0
	lsl r0, r0, #3
_0206F658:
	b _0206F704
_0206F65A:
	mov r1, #0x17
	str r1, [r4, #0x30]
	add r1, r0, #0
	add r1, #0x2d
	str r1, [r4, #0x34]
	add r0, #0xf5
	str r0, [r4, #0x40]
	ldr r0, _0206F788 ; =0x00001388
	str r0, [r4, #0x44]
	lsl r0, r0, #1
	str r0, [r4, #0x38]
	ldr r0, _0206F78C ; =0x0000EA60
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
	ldr r1, [r4, #0x58]
	mov r0, #0x80
	add r2, r1, #0
	orr r2, r0
	lsl r1, r0, #3
	orr r2, r1
	lsl r1, r0, #5
	orr r1, r2
	lsl r0, r0, #7
	b _0206F658
_0206F68E:
	mov r0, #0x96
	lsl r0, r0, #2
	str r0, [r4, #0x40]
	ldr r0, _0206F790 ; =0x00000BB8
	str r0, [r4, #0x44]
	mov r0, #0x46
	str r0, [r4, #0x48]
	mov r0, #0x96
	str r0, [r4, #0x4c]
	ldr r0, _0206F794 ; =0x000059D8
	str r0, [r4, #0x38]
	ldr r0, _0206F798 ; =0x000C3500
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
	lsl r0, r3, #0xc
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x58]
	lsl r0, r3, #0xf
	orr r1, r0
	lsl r0, r3, #0xc
	orr r1, r0
	lsl r0, r3, #0xe
	b _0206F658
_0206F6C0:
	cmp r1, #0
	bne _0206F6DE
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [r4, #0x40]
	ldr r0, _0206F790 ; =0x00000BB8
	str r0, [r4, #0x44]
	ldr r0, _0206F79C ; =0x000109A0
	str r0, [r4, #0x38]
	ldr r0, _0206F7A0 ; =0x00027100
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r6, [r0]
	b _0206F6FC
_0206F6DE:
	cmp r1, #1
	bne _0206F708
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [r4, #0x40]
	ldr r0, _0206F790 ; =0x00000BB8
	mov r1, #0x84
	str r0, [r4, #0x44]
	ldr r0, _0206F79C ; =0x000109A0
	str r0, [r4, #0x38]
	ldr r0, _0206F7A0 ; =0x00027100
	str r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x54
	strb r1, [r0]
_0206F6FC:
	ldr r1, [r4, #0x58]
	lsl r0, r3, #0xc
	orr r1, r0
	lsl r0, r3, #0xe
_0206F704:
	orr r0, r1
	str r0, [r4, #0x58]
_0206F708:
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0x1c]
	lsr r0, r0, #8
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x58]
	mov r0, #0x40
	add r2, r1, #0
	mov r1, #0x40
	orr r2, r0
	add r1, #0xc0
	orr r2, r1
	lsl r1, r0, #3
	orr r1, r2
	lsl r0, r0, #5
	orr r0, r1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_0206F734:
	cmp r2, #3
	bne _0206F76E
	lsl r0, r3, #0xd
	cmp r7, r0
	beq _0206F744
	lsl r0, r3, #0xf
	cmp r7, r0
	bne _0206F76E
_0206F744:
	str r7, [r4, #0x24]
	str r7, [r4, #0x1c]
	mov r0, #2
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x54
	strb r1, [r0]
	ldr r1, [r4, #0x58]
	mov r0, #0x40
	add r2, r1, #0
	mov r1, #0x40
	orr r2, r0
	add r1, #0xc0
	orr r2, r1
	lsl r1, r0, #3
	orr r1, r2
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, r6, r7, pc}
_0206F76E:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x18]
	ldr r0, _0206F780 ; =0x0214B440
	mov r1, #3
	ldr r0, [r0]
	str r1, [r0]
_0206F77C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F780: .word 0x0214B440
_0206F784: .word 0x0000203F
_0206F788: .word 0x00001388
_0206F78C: .word 0x0000EA60
_0206F790: .word 0x00000BB8
_0206F794: .word 0x000059D8
_0206F798: .word 0x000C3500
_0206F79C: .word 0x000109A0
_0206F7A0: .word 0x00027100
	thumb_func_end sub_0206F538

	thumb_func_start sub_0206F7A4
sub_0206F7A4: ; 0x0206F7A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #2
	mov r2, #1
	mov r4, #1
	bl sub_0206F30C
	ldr r0, [r5]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r1, _0206F7D0 ; =0x0214B980
	ldr r0, [r5]
	mov r2, #1
	str r1, [r0, #0x10]
	ldr r0, [r5]
	mov r1, #6
	str r4, [r0, #0x14]
	add r0, r5, #0
	bl sub_0206F30C
	pop {r3, r4, r5, pc}
	nop
_0206F7D0: .word 0x0214B980
	thumb_func_end sub_0206F7A4

	thumb_func_start sub_0206F7D4
sub_0206F7D4: ; 0x0206F7D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0206F804 ; =0x02005094
	add r4, r1, #0
	add r6, r2, #0
	blx sub_02004EB0
	bl sub_0206EEB0
	bl sub_0206F018
	and r0, r5
	cmp r5, r0
	beq _0206F7F4
	bl sub_0207C774
_0206F7F4:
	ldr r0, _0206F808 ; =0x0214B440
	mov r1, #1
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0206F1C0
	pop {r4, r5, r6, pc}
	nop
_0206F804: .word 0x02005094
_0206F808: .word 0x0214B440
	thumb_func_end sub_0206F7D4

	thumb_func_start sub_0206F80C
sub_0206F80C: ; 0x0206F80C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	bne _0206F81E
	mov r0, #1
	b _0206F820
_0206F81E:
	mov r0, #2
_0206F820:
	ldr r2, [sp, #0x10]
	add r1, r3, #0
	bl sub_0206F7D4
	ldr r0, _0206F848 ; =0x0214B8C0
	ldr r1, [sp, #0x18]
	str r5, [r0, #0x7c]
	ldr r0, _0206F84C ; =0x0214B940
	str r4, [r0]
	str r6, [r0, #4]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x20]
	str r1, [r0, #0x18]
	ldr r0, _0206F850 ; =sub_0206F3E0
	ldr r1, [sp, #0x14]
	bl sub_0206F134
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206F848: .word 0x0214B8C0
_0206F84C: .word 0x0214B940
_0206F850: .word sub_0206F3E0
	thumb_func_end sub_0206F80C

	thumb_func_start sub_0206F854
sub_0206F854: ; 0x0206F854
	push {r4, lr}
	add r4, r0, #0
	bne _0206F85E
	bl sub_0207C774
_0206F85E:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_0206F7D4
	add r0, r4, #0
	bl sub_0206F538
	ldr r0, _0206F878 ; =sub_0206F7A4
	mov r1, #0
	bl sub_0206F134
	pop {r4, pc}
	.align 2, 0
_0206F878: .word sub_0206F7A4
	thumb_func_end sub_0206F854

	thumb_func_start sub_0206F87C
sub_0206F87C: ; 0x0206F87C
	ldr r0, _0206F884 ; =0x0214B440
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0
_0206F884: .word 0x0214B440
	thumb_func_end sub_0206F87C

	thumb_func_start sub_0206F888
sub_0206F888: ; 0x0206F888
	ldr r3, _0206F88C ; =sub_0206F07C
	bx r3
	.align 2, 0
_0206F88C: .word sub_0206F07C
	thumb_func_end sub_0206F888

	thumb_func_start sub_0206F890
sub_0206F890: ; 0x0206F890
	ldr r3, _0206F894 ; =sub_0206F090
	bx r3
	.align 2, 0
_0206F894: .word sub_0206F090
	thumb_func_end sub_0206F890

	thumb_func_start sub_0206F898
sub_0206F898: ; 0x0206F898
	push {r3, lr}
	blx OS_DisableInterrupts
	ldr r2, _0206F8B0 ; =0x0214B440
	mov r1, #0x40
	ldr r3, [r2, #4]
	orr r1, r3
	str r1, [r2, #4]
	blx OS_RestoreInterrupts
	pop {r3, pc}
	nop
_0206F8B0: .word 0x0214B440
	thumb_func_end sub_0206F898

	thumb_func_start sub_0206F8B4
sub_0206F8B4: ; 0x0206F8B4
	push {r4, r5, r6, r7}
	lsr r2, r1, #8
	lsl r0, r0, #0x18
	add r6, r2, #0
	orr r6, r0
	mov r0, #2
	ldr r3, _0206F91C ; =0x040001A4
	lsl r1, r1, #0x18
	lsl r0, r0, #0x1e
_0206F8C6:
	ldr r2, [r3]
	tst r2, r0
	bne _0206F8C6
	ldr r0, _0206F920 ; =0x040001A0
	ldr r2, _0206F924 ; =0xFFFFDFFF
	ldrh r3, [r0]
	lsl r5, r6, #0x18
	and r3, r2
	mov r2, #3
	lsl r2, r2, #0xe
	orr r2, r3
	strh r2, [r0]
	mov r2, #0xff
	lsl r2, r2, #8
	add r3, r6, #0
	and r3, r2
	lsl r4, r3, #8
	lsl r3, r2, #0x10
	and r3, r6
	lsl r7, r2, #8
	and r6, r7
	lsr r3, r3, #0x18
	lsr r6, r6, #8
	orr r3, r6
	orr r3, r4
	orr r3, r5
	str r3, [r0, #8]
	add r3, r1, #0
	and r3, r2
	lsl r4, r3, #8
	lsl r3, r2, #0x10
	and r3, r1
	lsl r2, r2, #8
	lsl r5, r1, #0x18
	and r1, r2
	lsr r3, r3, #0x18
	lsr r1, r1, #8
	orr r1, r3
	orr r1, r4
	orr r1, r5
	str r1, [r0, #0xc]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0206F91C: .word 0x040001A4
_0206F920: .word 0x040001A0
_0206F924: .word 0xFFFFDFFF
	thumb_func_end sub_0206F8B4

	thumb_func_start sub_0206F928
sub_0206F928: ; 0x0206F928
	push {r4, lr}
	bl sub_0206EEE8
	add r4, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0206F956
	bl OS_GetBootType
	cmp r0, #1
	beq _0206F956
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	beq _0206F956
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1f
	bne _0206F956
	mov r0, #1
	pop {r4, pc}
_0206F956:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0206F928

	thumb_func_start sub_0206F95C
sub_0206F95C: ; 0x0206F95C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xb7
	bl sub_0206F928
	cmp r0, #0
	beq _0206F96C
	mov r4, #0
_0206F96C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0206F8B4
	ldr r0, _0206F988 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206F98C ; =0xF8FFFFFF
	and r1, r0
	mov r0, #0xa1
	lsl r0, r0, #0x18
	orr r1, r0
	ldr r0, _0206F990 ; =0x040001A4
	str r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0206F988: .word 0x02FFFAE0
_0206F98C: .word 0xF8FFFFFF
_0206F990: .word 0x040001A4
	thumb_func_end sub_0206F95C

	thumb_func_start sub_0206F994
sub_0206F994: ; 0x0206F994
	push {r4, lr}
	mov r4, #0xb8
	bl sub_0206F928
	cmp r0, #0
	beq _0206F9A2
	mov r4, #0x90
_0206F9A2:
	add r0, r4, #0
	mov r1, #0
	bl sub_0206F8B4
	ldr r0, _0206F9D4 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206F9D8 ; =0xF8FFFFFF
	add r2, r1, #0
	mov r1, #0xa7
	and r2, r0
	lsl r1, r1, #0x18
	orr r1, r2
	lsl r0, r0, #0xd
	ldr r2, _0206F9DC ; =0x040001A4
	and r0, r1
	str r0, [r2]
	mov r0, #2
	lsl r0, r0, #0x16
_0206F9C6:
	ldr r1, [r2]
	tst r1, r0
	beq _0206F9C6
	ldr r0, _0206F9E0 ; =0x04100010
	ldr r0, [r0]
	pop {r4, pc}
	nop
_0206F9D4: .word 0x02FFFAE0
_0206F9D8: .word 0xF8FFFFFF
_0206F9DC: .word 0x040001A4
_0206F9E0: .word 0x04100010
	thumb_func_end sub_0206F994

	thumb_func_start sub_0206F9E4
sub_0206F9E4: ; 0x0206F9E4
	push {r4, lr}
	ldr r0, _0206FA24 ; =0x02FFFC00
	mov r4, #2
	ldr r0, [r0]
	lsl r4, r4, #0x1c
	tst r0, r4
	bne _0206F9F6
	mov r0, #0x20
	pop {r4, pc}
_0206F9F6:
	mov r0, #0xd6
	mov r1, #0
	bl sub_0206F8B4
	ldr r0, _0206FA28 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206FA2C ; =0xF8FFFFFF
	add r2, r1, #0
	mov r1, #0xa7
	and r2, r0
	lsl r1, r1, #0x18
	orr r1, r2
	lsl r0, r0, #0xd
	ldr r2, _0206FA30 ; =0x040001A4
	and r0, r1
	str r0, [r2]
	lsr r0, r4, #6
_0206FA18:
	ldr r1, [r2]
	tst r1, r0
	beq _0206FA18
	ldr r0, _0206FA34 ; =0x04100010
	ldr r0, [r0]
	pop {r4, pc}
	.align 2, 0
_0206FA24: .word 0x02FFFC00
_0206FA28: .word 0x02FFFAE0
_0206FA2C: .word 0xF8FFFFFF
_0206FA30: .word 0x040001A4
_0206FA34: .word 0x04100010
	thumb_func_end sub_0206F9E4

	thumb_func_start sub_0206FA38
sub_0206FA38: ; 0x0206FA38
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0206F9E4
	tst r0, r4
	beq _0206FA74
	bl sub_0206FA7C
	bl sub_0206F9E4
	mov r1, #0x20
	tst r0, r1
	bne _0206FA74
	ldr r5, _0206FA78 ; =0x0214C21C
	mov r6, #1
	add r4, r1, #0
_0206FA58:
	ldr r0, [r5]
	cmp r0, #0
	beq _0206FA6C
	bl sub_0207BC18
	cmp r0, #0
	beq _0206FA6C
	add r0, r6, #0
	bl sub_0207AA04
_0206FA6C:
	bl sub_0206F9E4
	tst r0, r4
	beq _0206FA58
_0206FA74:
	pop {r4, r5, r6, pc}
	nop
_0206FA78: .word 0x0214C21C
	thumb_func_end sub_0206FA38

	thumb_func_start sub_0206FA7C
sub_0206FA7C: ; 0x0206FA7C
	push {r3, lr}
	mov r0, #0xb5
	mov r1, #0
	bl sub_0206F8B4
	ldr r0, _0206FAA8 ; =0x02FFFAE0
	ldr r1, [r0]
	ldr r0, _0206FAAC ; =0xF8FFFFFF
	add r2, r1, #0
	mov r1, #0xa
	and r2, r0
	lsl r1, r1, #0x1c
	orr r2, r1
	lsl r0, r0, #0xd
	and r0, r2
	ldr r2, _0206FAB0 ; =0x040001A4
	str r0, [r2]
	lsl r0, r1, #2
_0206FAA0:
	ldr r1, [r2]
	tst r1, r0
	bne _0206FAA0
	pop {r3, pc}
	.align 2, 0
_0206FAA8: .word 0x02FFFAE0
_0206FAAC: .word 0xF8FFFFFF
_0206FAB0: .word 0x040001A4
	thumb_func_end sub_0206FA7C

	thumb_func_start sub_0206FAB4
sub_0206FAB4: ; 0x0206FAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0206FB78 ; =0x0209B500
	add r5, r3, #0
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, _0206FB7C ; =0x040001A4
	str r2, [sp, #4]
	lsr r0, r0, #0x11
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	b _0206FB5E
_0206FACE:
	ldr r1, _0206FB80 ; =0xFFFFFE00
	ldr r0, [sp, #4]
	ldr r4, [sp]
	and r1, r0
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x14]
	str r1, [sp, #8]
	cmp r1, r0
	bne _0206FAE4
	ldr r4, _0206FB84 ; =0x0214BB40
	b _0206FB2C
_0206FAE4:
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _0206FAF8
	mov r1, #3
	add r0, r4, #0
	tst r0, r1
	bne _0206FAF8
	add r0, r7, #0
	cmp r5, r0
	bhs _0206FAFE
_0206FAF8:
	ldr r0, [sp, #8]
	ldr r4, _0206FB84 ; =0x0214BB40
	str r0, [sp, #0xc]
_0206FAFE:
	ldr r0, [sp, #8]
	bl sub_0206F95C
	mov r0, #2
	lsl r0, r0, #0x1e
	mov r6, #0
	lsr r0, r0, #8
_0206FB0C:
	ldr r1, _0206FB7C ; =0x040001A4
	ldr r3, [r1]
	add r1, r3, #0
	tst r1, r0
	beq _0206FB24
	ldr r1, _0206FB88 ; =0x04100010
	cmp r6, #0x80
	ldr r2, [r1]
	bhs _0206FB24
	lsl r1, r6, #2
	add r6, r6, #1
	str r2, [r4, r1]
_0206FB24:
	mov r1, #2
	lsl r1, r1, #0x1e
	tst r1, r3
	bne _0206FB0C
_0206FB2C:
	ldr r0, _0206FB84 ; =0x0214BB40
	cmp r4, r0
	bne _0206FB50
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	sub r1, r1, r0
	mov r0, #2
	lsl r0, r0, #8
	sub r7, r0, r1
	cmp r5, r7
	bhi _0206FB44
	add r7, r5, #0
_0206FB44:
	ldr r0, _0206FB84 ; =0x0214BB40
	add r2, r7, #0
	add r0, r0, r1
	ldr r1, [sp]
	blx MI_CpuCopy8
_0206FB50:
	ldr r0, [sp]
	sub r5, r5, r7
	add r0, r0, r7
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, r7
	str r0, [sp, #4]
_0206FB5E:
	cmp r5, #0
	bne _0206FACE
	bl sub_0206F994
	bl sub_0206FFCC
	ldr r1, _0206FB78 ; =0x0209B500
	ldr r0, [sp, #0xc]
	str r0, [r1, #4]
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206FB78: .word 0x0209B500
_0206FB7C: .word 0x040001A4
_0206FB80: .word 0xFFFFFE00
_0206FB84: .word 0x0214BB40
_0206FB88: .word 0x04100010
	thumb_func_end sub_0206FAB4

	thumb_func_start sub_0206FB8C
sub_0206FB8C: ; 0x0206FB8C
	push {r4, r5, r6, lr}
	ldr r6, _0206FBE8 ; =0x0214BA80
	ldr r4, [r6, #0xc]
	cmp r4, #0
	beq _0206FBE4
	mov r5, #2
	ldr r0, [r4, #0xc]
	lsl r5, r5, #8
	add r0, r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	sub r0, r0, r5
	str r0, [r4, #0x14]
	beq _0206FBB6
	ldr r0, [r4, #0xc]
	bl sub_0206F95C
	pop {r4, r5, r6, pc}
_0206FBB6:
	ldr r1, _0206FBEC ; =0x0214B940
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	ldr r1, [r1, #4]
	blx r1
	lsl r5, r5, #0xa
	add r0, r5, #0
	bl sub_02079E94
	add r0, r5, #0
	bl sub_02079EB8
	mov r0, #0
	str r0, [r6, #0xc]
	bl sub_0206F994
	bl sub_0206FFCC
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0206FBE4
	ldr r0, [r4, #8]
	blx r1
_0206FBE4:
	pop {r4, r5, r6, pc}
	nop
_0206FBE8: .word 0x0214BA80
_0206FBEC: .word 0x0214B940
	thumb_func_end sub_0206FB8C

	thumb_func_start sub_0206FBF0
sub_0206FBF0: ; 0x0206FBF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0206FC34 ; =0x0214BA80
	mov r6, #2
	lsl r6, r6, #0x12
	str r5, [r0, #0xc]
	ldr r1, _0206FC38 ; =sub_0206FB8C
	add r0, r6, #0
	bl sub_02079D20
	add r0, r6, #0
	bl sub_02079EB8
	add r0, r6, #0
	bl sub_02079E70
	add r0, r4, #0
	blx OS_RestoreInterrupts
	ldr r4, _0206FC3C ; =0x0214B940
	ldr r1, _0206FC40 ; =0x04100010
	ldr r0, [r4, #8]
	ldr r4, [r4, #0xc]
	ldr r2, [r5, #0x10]
	ldr r4, [r4]
	lsr r3, r6, #0xa
	blx r4
	ldr r0, [r5, #0xc]
	bl sub_0206F95C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0206FC34: .word 0x0214BA80
_0206FC38: .word sub_0206FB8C
_0206FC3C: .word 0x0214B940
_0206FC40: .word 0x04100010
	thumb_func_end sub_0206FBF0

	thumb_func_start sub_0206FC44
sub_0206FC44: ; 0x0206FC44
	push {r3, lr}
	bl sub_0206F994
	bl sub_0206FFCC
	mov r0, #8
	bl sub_0206FA38
	ldr r0, _0206FC64 ; =0x0214B440
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1]
	bl sub_0206F224
	pop {r3, pc}
	nop
_0206FC64: .word 0x0214B440
	thumb_func_end sub_0206FC44

	thumb_func_start sub_0206FC68
sub_0206FC68: ; 0x0206FC68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	str r1, [sp, #4]
	str r2, [sp]
	add r4, r3, #0
	mov r7, #0
	mov r1, #0
	cmp r0, #3
	bhi _0206FCA2
	cmp r4, #0
	beq _0206FCA2
	mov r0, #0x1f
	tst r0, r5
	bne _0206FCA2
	ldr r2, _0206FCE0 ; =0x01FF8000
	add r3, r5, r4
	mov r0, #1
	cmp r3, r2
	bls _0206FC9C
	mov r2, #2
	lsl r2, r2, #0x18
	cmp r5, r2
	bhs _0206FC9C
	ldr r0, [sp, #4]
_0206FC9C:
	cmp r0, #0
	beq _0206FCA2
	mov r1, #1
_0206FCA2:
	cmp r1, #0
	beq _0206FCC6
	mov r6, #1
	blx sub_0207B79C
	add r1, r5, r4
	cmp r1, r0
	bls _0206FCC0
	blx sub_0207B79C
	lsl r1, r6, #0xe
	add r0, r0, r1
	cmp r5, r0
	bhs _0206FCC0
	mov r6, #0
_0206FCC0:
	cmp r6, #0
	beq _0206FCC6
	mov r7, #1
_0206FCC6:
	cmp r7, #0
	beq _0206FCDA
	ldr r0, [sp]
	add r1, r0, #0
	ldr r0, _0206FCE4 ; =0x000001FF
	orr r1, r4
	tst r0, r1
	bne _0206FCDA
	mov r0, #1
	str r0, [sp, #4]
_0206FCDA:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0206FCE0: .word 0x01FF8000
_0206FCE4: .word 0x000001FF
	thumb_func_end sub_0206FC68

	thumb_func_start sub_0206FCE8
sub_0206FCE8: ; 0x0206FCE8
	push {r3, r4, r5, lr}
	mov r5, #5
	add r3, r0, #0
	lsl r5, r5, #8
	sub r2, r5, #4
	ldr r1, [r3, r5]
	add r5, r5, #4
	ldr r2, [r3, r2]
	ldr r3, [r3, r5]
	ldr r5, _0206FD1C ; =0x0214BA80
	mov r0, #0
	ldr r5, [r5, #4]
	mov r4, #0
	blx r5
	bl sub_0206F994
	bl sub_0206FFCC
	mov r0, #8
	bl sub_0206FA38
	ldr r0, _0206FD20 ; =0x0214B440
	ldr r0, [r0]
	str r4, [r0]
	pop {r3, r4, r5, pc}
	nop
_0206FD1C: .word 0x0214BA80
_0206FD20: .word 0x0214B440
	thumb_func_end sub_0206FCE8

	thumb_func_start sub_0206FD24
sub_0206FD24: ; 0x0206FD24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	add r6, r2, #0
	add r7, r3, #0
	ldr r5, _0206FE2C ; =0x0214B440
	bl sub_0206EEB0
	bl sub_0206F018
	mov r1, #4
	tst r0, r1
	bne _0206FD42
	bl sub_0207C774
_0206FD42:
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	mov r1, #1
	bl sub_0206F1C0
	add r0, r4, #0
	bl sub_0206F25C
	ldr r1, _0206FE30 ; =0x0000050C
	cmp r0, #0
	str r0, [r5, r1]
	beq _0206FD62
	mov r0, #3
	and r0, r4
	b _0206FD66
_0206FD62:
	mov r0, #1
	sub r0, r0, #2
_0206FD66:
	ldr r1, _0206FE34 ; =0x00000508
	cmp r0, #3
	str r0, [r5, r1]
	bhi _0206FD76
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r1, [r1, #4]
	blx r1
_0206FD76:
	ldr r0, _0206FE38 ; =0x0214BA80
	ldr r4, _0206FE3C ; =0x000004FC
	ldr r1, [r0]
	ldr r0, [sp]
	add r2, r0, r1
	str r2, [r5, r4]
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r7, [r5, r0]
	ldr r1, _0206FE40 ; =sub_0206FC44
	ldr r0, _0206FE38 ; =0x0214BA80
	str r1, [r0, #0x14]
	ldr r1, _0206FE38 ; =0x0214BA80
	mov r0, #0
	str r0, [r1, #0x18]
	str r2, [r1, #0x1c]
	str r6, [r1, #0x20]
	str r7, [r1, #0x24]
	str r0, [r1, #0x28]
	add r0, r1, #0
	ldr r1, [r0, #4]
	ldr r0, _0206FE44 ; =sub_0206FAB4
	cmp r1, r0
	bne _0206FE08
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r3, r7, #0
	bl sub_0206FC68
	cmp r0, #0
	beq _0206FE08
	blx OS_DisableInterrupts
	add r6, r0, #0
	ldr r0, _0206FE38 ; =0x0214BA80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0206FDD8
	add r0, r4, #4
	add r4, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, #0xc]
	bl sub_0206F298
_0206FDD8:
	ldr r0, _0206FE48 ; =0x0209B500
	ldr r0, [r0]
	cmp r0, #0
	beq _0206FDF0
	mov r1, #5
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, #0x10]
	bl sub_0206F2AC
_0206FDF0:
	add r0, r6, #0
	blx OS_RestoreInterrupts
	ldr r0, _0206FE4C ; =0x0214BA90
	bl sub_0206FBF0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0206FE28
	bl sub_0206FEC8
	pop {r3, r4, r5, r6, r7, pc}
_0206FE08:
	ldr r0, _0206FE38 ; =0x0214BA80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0206FE20
	mov r1, #5
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, #0xc]
	bl sub_0206F298
_0206FE20:
	ldr r0, _0206FE50 ; =sub_0206FCE8
	ldr r1, [sp, #0x20]
	bl sub_0206F134
_0206FE28:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206FE2C: .word 0x0214B440
_0206FE30: .word 0x0000050C
_0206FE34: .word 0x00000508
_0206FE38: .word 0x0214BA80
_0206FE3C: .word 0x000004FC
_0206FE40: .word sub_0206FC44
_0206FE44: .word sub_0206FAB4
_0206FE48: .word 0x0209B500
_0206FE4C: .word 0x0214BA90
_0206FE50: .word sub_0206FCE8
	thumb_func_end sub_0206FD24

	thumb_func_start sub_0206FE54
sub_0206FE54: ; 0x0206FE54
	push {r4, lr}
	ldr r1, _0206FEAC ; =sub_0206FAB4
	ldr r0, _0206FEB0 ; =0x0214BA80
	str r1, [r0, #4]
	bl OS_GetBootType
	cmp r0, #1
	bne _0206FE9E
	bl sub_0206EEE0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0206FE9E
	blx sub_0207A208
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r4, #0
	bl sub_0206EEF0
	bl sub_0206EEE0
	add r2, r0, #0
	add r2, #0x80
	ldr r1, _0206FEB4 ; =0x0214BAAC
	ldr r2, [r2]
	mov r0, #0
	mov r3, #0x88
	bl sub_0206FAB4
	add r0, r4, #0
	bl sub_0206EF38
	add r0, r4, #0
	blx sub_0207A260
_0206FE9E:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _0206FEAA
	bl sub_0206FEB8
_0206FEAA:
	pop {r4, pc}
	.align 2, 0
_0206FEAC: .word sub_0206FAB4
_0206FEB0: .word 0x0214BA80
_0206FEB4: .word 0x0214BAAC
	thumb_func_end sub_0206FE54

	thumb_func_start sub_0206FEB8
sub_0206FEB8: ; 0x0206FEB8
	bx pc
	nop
	thumb_func_end sub_0206FEB8

