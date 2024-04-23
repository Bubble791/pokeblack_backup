    .include "macros/function.inc"
	.include "overlay307.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy307_21ddbc0
ovy307_21ddbc0: ; 0x021DDBC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #5
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x8f
	lsl r2, r2, #0x10
	mov r7, #0x8f
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x8c
	mov r2, #0x8f
	bl sub_0203AAEC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x8c
	mov r6, #0
	blx MI_CpuFill8
	strh r7, [r4]
	str r6, [r4, #0x10]
	mov r0, #5
	strb r0, [r4, #0x14]
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [r4, #0x20]
	bl ovy307_21de028
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de2c0
	mov r0, #3
	mov r1, #0x10
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	ldrh r0, [r4]
	bl sub_0203A970
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy307_21ddbc0

	thumb_func_start ovy307_21ddc2c
ovy307_21ddc2c: ; 0x021DDC2C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	add r5, r2, #0
	bl sub_0203A980
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE2D0
	ldr r0, [r4, #0x10]
	cmp r0, #0x11
	beq _021DDC54
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de104
_021DDC54:
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x8f
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy307_21ddc2c

	thumb_func_start ovy307_21ddc64
ovy307_21ddc64: ; 0x021DDC64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r2, #0
	bl sub_0203DEFC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0203A978
	cmp r0, #1
	bne _021DDC80
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DDC80:
	ldr r1, [r4, #0x10]
	cmp r1, #0x13
	bhi _021DDD5A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DDC92: ; jump table
	.short _021DDCBA - _021DDC92 - 2 ; case 0
	.short _021DDCDA - _021DDC92 - 2 ; case 1
	.short _021DDCF0 - _021DDC92 - 2 ; case 2
	.short _021DDD16 - _021DDC92 - 2 ; case 3
	.short _021DDD30 - _021DDC92 - 2 ; case 4
	.short _021DDD4C - _021DDC92 - 2 ; case 5
	.short _021DDD6A - _021DDC92 - 2 ; case 6
	.short _021DDDB8 - _021DDC92 - 2 ; case 7
	.short _021DDDD6 - _021DDC92 - 2 ; case 8
	.short _021DDDFA - _021DDC92 - 2 ; case 9
	.short _021DDE04 - _021DDC92 - 2 ; case 10
	.short _021DDE12 - _021DDC92 - 2 ; case 11
	.short _021DDE3A - _021DDC92 - 2 ; case 12
	.short _021DDE54 - _021DDC92 - 2 ; case 13
	.short _021DDE96 - _021DDC92 - 2 ; case 14
	.short _021DDEDE - _021DDC92 - 2 ; case 15
	.short _021DDF68 - _021DDC92 - 2 ; case 16
	.short _021DDFAE - _021DDC92 - 2 ; case 17
	.short _021DDF84 - _021DDC92 - 2 ; case 18
	.short _021DDF9E - _021DDC92 - 2 ; case 19
_021DDCBA:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _021DDCD4
	mov r0, #1
	mov r3, #0
	str r0, [r4, #0x10]
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	sub r3, #0x10
	bl sub_0204E060
	b _021DDFAE
_021DDCD4:
	sub r0, r0, #1
	strb r0, [r4, #0x14]
	b _021DDFAE
_021DDCDA:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021DDD5A
	mov r0, #2
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de270
	b _021DDFAE
_021DDCF0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE37C
	cmp r0, #0
	bne _021DDD5A
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de298
	cmp r0, #0
	beq _021DDD5A
	mov r0, #3
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de38c
	b _021DDFAE
_021DDD16:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE3A8
	cmp r0, #0
	bne _021DDD5A
	mov r0, #4
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de3b8
	b _021DDFAE
_021DDD30:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE3D4
	cmp r0, #0
	beq _021DDD5A
	mov r0, #5
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_021DEE4C
	b _021DDFAE
_021DDD4C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_021DEE54
	cmp r0, #0
	bne _021DDD5C
_021DDD5A:
	b _021DDFAE
_021DDD5C:
	mov r0, #6
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de3e4
	b _021DDFAE
_021DDD6A:
	mov r0, #7
	str r0, [r4, #0x10]
	ldr r0, [r5]
	bl sub_020171F4
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_0201736C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02017544
	bl sub_02018C80
	add r2, r0, #0
	ldrh r3, [r4]
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_0201CA00
	ldr r0, [r5]
	bl sub_0200D190
	ldr r1, [r5, #4]
	add r6, r0, #0
	bl sub_0200D72C
	ldr r1, [r5, #4]
	add r0, r6, #0
	bl sub_0200D568
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r1, [r5, #4]
	bl ovy307_21dee58
	b _021DDFAE
_021DDDB8:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy307_21dee94
	cmp r0, #0
	beq _021DDE9E
	mov r0, #8
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_021DEEA8
	b _021DDFAE
_021DDDD6:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_021DEEB4
	cmp r0, #0
	beq _021DDE9E
	mov r0, #9
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de56c
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de408
	b _021DDFAE
_021DDDFA:
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0xa
_021DDE00:
	str r0, [r4, #0x10]
	b _021DDFAE
_021DDE04:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ovy307_21de59c
	mov r0, #0xb
	b _021DDE00
_021DDE12:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de630
	cmp r0, #0
	beq _021DDE9E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE424
	cmp r0, #0
	bne _021DDE9E
	mov r0, #0xc
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ovy307_21de59c
	b _021DDFAE
_021DDE3A:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de630
	cmp r0, #0
	beq _021DDE9E
	mov r0, #0xd
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de704
	b _021DDFAE
_021DDE54:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE72C
	cmp r0, #0
	bne _021DDE80
	mov r0, #0x12
	str r0, [r4, #0x10]
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_0204E060
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de434
_021DDE78:
	mov r0, #0
	bl sub_0203D564
	b _021DDFAE
_021DDE80:
	cmp r0, #1
	bne _021DDE9E
	mov r0, #0xe
	str r0, [r4, #0x10]
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	b _021DDE78
_021DDE96:
	bl sub_0204E0E0
	cmp r0, #0
	beq _021DDEA0
_021DDE9E:
	b _021DDFAE
_021DDEA0:
	ldr r0, [r5]
	bl sub_02017934
	bl sub_0200C838
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de104
	mov r0, #0xf
	str r0, [r4, #0x10]
	str r6, [sp]
	ldrh r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #0xa
	mov r3, #0
	bl sub_02165A4C
	add r3, r0, #0
	add r0, r4, #0
	add r0, #0x84
	str r3, [r0]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r1, _021DE008 ; =0x00000118
	ldr r2, _021DE00C ; =0x021DD940
	bl sub_0203A988
	b _021DDFAE
_021DDEDE:
	cmp r0, #1
	beq _021DDF64
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02165B0C
	cmp r0, #0
	bne _021DDF4C
	ldrh r1, [r4]
	mov r0, #0x20
	bl sub_02048530
	add r7, r0, #0
	ldrh r1, [r4]
	mov r0, #0x20
	bl sub_02048530
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_02165AFC
	ldr r0, [r5, #4]
	mov r1, #0x73
	add r2, r6, #0
	bl sub_0201CCF8
	ldr r0, [r5, #4]
	mov r1, #0x73
	add r2, r7, #0
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_02165B10
	cmp r0, #0
	bne _021DDF40
	ldr r0, [r5]
	bl sub_02017994
	mov r1, #0x1e
	bl sub_020095A0
_021DDF40:
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
_021DDF4C:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02165AE8
	mov r0, #0x10
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de434
	b _021DDFAE
_021DDF64:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DDF68:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE444
	cmp r0, #0
	bne _021DDFAE
	mov r0, #0x11
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de454
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DDF84:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE444
	cmp r0, #0
	bne _021DDFAE
	mov r0, #0x13
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de454
	b _021DDFAE
_021DDF9E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021DDFAE
	mov r0, #0x14
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DDFAE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de2d4
	ldr r0, [r4, #0x10]
	cmp r0, #0xf
	beq _021DE004
	cmp r0, #0x10
	beq _021DE004
	cmp r0, #0x11
	beq _021DE004
	cmp r0, #0x14
	beq _021DE004
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE560
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de6d4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy307_21debe8
	ldr r0, [r4, #0xc]
	bl sub_02021A3C
	ldr r0, [r4, #4]
	bl ovy307_21de8d8
	ldr r0, [r4, #4]
	bl sub_021DE8EC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy307_21dee34
	ldr r0, [r4, #4]
	bl sub_021DE8F8
_021DE004:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE008: .word 0x00000118
_021DE00C: .word 0x021DD940
	thumb_func_end ovy307_21ddc64

	thumb_func_start ovy307_21de010
ovy307_21de010: ; 0x021DE010
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _021DE026
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #0
	str r0, [r4, #0x6c]
_021DE026:
	pop {r4, pc}
	thumb_func_end ovy307_21de010

	thumb_func_start ovy307_21de028
ovy307_21de028: ; 0x021DE028
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r4, #0
_021DE032:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02044C98
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #7
	bls _021DE032
	ldrh r1, [r5]
	mov r0, #1
	bl ovy307_21de7d4
	str r0, [r5, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0x17
	add r3, r7, #0
	bl sub_02022D58
	str r0, [r5, #8]
	ldrh r0, [r5]
	bl sub_02021998
	str r0, [r5, #0xc]
	ldr r0, _021DE0F8 ; =ovy307_21de010
	add r1, r5, #0
	mov r2, #1
	bl sub_020056FC
	str r0, [r5, #0x28]
	add r0, r6, #0
	add r1, r5, #0
	bl ovy307_21de154
	add r0, r6, #0
	add r1, r5, #0
	bl ovy307_21de1b4
	add r0, r6, #0
	add r1, r5, #0
	bl ovy307_21de468
	add r0, r6, #0
	add r1, r5, #0
	bl ovy307_21de688
	add r0, r7, #0
	mov r1, #2
	bl sub_02044BD8
	mov r0, #2
	mov r1, #1
	bl sub_02044BD8
	mov r0, #1
	add r1, r7, #0
	bl sub_02044BD8
	mov r0, #4
	add r1, r7, #0
	bl sub_02044BD8
	add r0, r7, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	ldr r0, _021DE0FC ; =0x04000050
	mov r1, #1
	mov r2, #0x2f
	add r3, r7, #0
	str r7, [sp]
	bl G2x_SetBlendAlpha_
	ldr r1, _021DE100 ; =0x00004210
	add r0, r7, #0
	bl sub_02045350
	mov r0, #4
	add r1, r7, #0
	bl sub_02045350
	ldrh r0, [r5]
	ldr r1, [r6, #4]
	bl ovy307_21deb28
	add r5, #0x80
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE0F8: .word ovy307_21de010
_021DE0FC: .word 0x04000050
_021DE100: .word 0x00004210
	thumb_func_end ovy307_21de028

	thumb_func_start ovy307_21de104
ovy307_21de104: ; 0x021DE104
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl ovy307_21debb8
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE6D0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de51c
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de240
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021DE1B0
	ldr r0, [r4, #0x28]
	bl GFL_TCBRemove
	ldr r0, [r4, #0xc]
	bl sub_02021C44
	ldr r0, [r4, #0xc]
	bl sub_02021A18
	ldr r0, [r4, #8]
	bl sub_02022DA8
	ldr r0, [r4, #4]
	bl ovy307_21de87c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy307_21de104

	thumb_func_start ovy307_21de154
ovy307_21de154: ; 0x021DE154
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldrh r1, [r5]
	mov r0, #0xba
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r5]
	mov r6, #0
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #3
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #4
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #2
	bl sub_02044F90
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy307_21de154

	thumb_func_start sub_021DE1B0
sub_021DE1B0: ; 0x021DE1B0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE1B0

	thumb_func_start ovy307_21de1b4
ovy307_21de1b4: ; 0x021DE1B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldrh r1, [r5]
	mov r0, #0xba
	bl sub_0204AA30
	mov r4, #0
	str r4, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #3
	add r6, r0, #0
	bl sub_0204BBB8
	str r0, [r5, #0x30]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B81C
	str r0, [r5, #0x2c]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl sub_0204BDE0
	str r0, [r5, #0x34]
	add r0, r6, #0
	bl sub_0204AB0C
	add r7, r4, #0
_021DE204:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r5, #4]
	bl sub_021DE904
	ldr r1, _021DE23C ; =0x021DF534
	lsl r2, r4, #3
	add r1, r1, r2
	str r1, [sp]
	str r7, [sp, #4]
	ldrh r1, [r5]
	str r1, [sp, #8]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, #0x34]
	bl sub_0204C040
	add r1, r7, #0
	str r0, [r6, #0x38]
	bl sub_0204C520
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021DE204
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DE23C: .word 0x021DF534
	thumb_func_end ovy307_21de1b4

	thumb_func_start ovy307_21de240
ovy307_21de240: ; 0x021DE240
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021DE246:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_0204C108
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021DE246
	ldr r0, [r5, #0x34]
	bl sub_0204BE64
	ldr r0, [r5, #0x2c]
	bl sub_0204B98C
	ldr r0, [r5, #0x30]
	bl sub_0204BCD0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy307_21de240

	thumb_func_start ovy307_21de270
ovy307_21de270: ; 0x021DE270
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r1, #0
	add r7, r4, #0
_021DE278:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	bl sub_0204C504
	ldr r0, [r5, #0x38]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021DE278
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy307_21de270

	thumb_func_start ovy307_21de298
ovy307_21de298: ; 0x021DE298
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r6, #1
	mov r4, #0
_021DE2A0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_0204C560
	cmp r0, #0
	beq _021DE2B2
	mov r6, #0
	b _021DE2BC
_021DE2B2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021DE2A0
_021DE2BC:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy307_21de298

	thumb_func_start ovy307_21de2c0
ovy307_21de2c0: ; 0x021DE2C0
	push {r4, lr}
	mov r0, #0x1e
	add r4, r1, #0
	bl sub_02005EA0
	mov r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ovy307_21de2c0

	thumb_func_start sub_021DE2D0
sub_021DE2D0: ; 0x021DE2D0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE2D0

	thumb_func_start ovy307_21de2d4
ovy307_21de2d4: ; 0x021DE2D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #7
	bhi _021DE370
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DE2EC: ; jump table
	.short _021DE370 - _021DE2EC - 2 ; case 0
	.short _021DE2FC - _021DE2EC - 2 ; case 1
	.short _021DE314 - _021DE2EC - 2 ; case 2
	.short _021DE322 - _021DE2EC - 2 ; case 3
	.short _021DE370 - _021DE2EC - 2 ; case 4
	.short _021DE336 - _021DE2EC - 2 ; case 5
	.short _021DE34A - _021DE2EC - 2 ; case 6
	.short _021DE360 - _021DE2EC - 2 ; case 7
_021DE2FC:
	bl sub_02005EC0
	cmp r0, #0
	bne _021DE370
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DE314:
	bl sub_02005FA8
	cmp r0, #0
	bne _021DE370
	mov r0, #0
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DE322:
	ldr r0, _021DE374 ; =0x000003F3
	add r1, #0x24
	mov r2, #0
	bl sub_02006424
	cmp r0, #0
	beq _021DE370
	mov r0, #4
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DE336:
	ldr r0, _021DE378 ; =0x00000519
	add r1, #0x24
	mov r2, #0
	bl sub_02006424
	cmp r0, #0
	beq _021DE370
	mov r0, #6
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DE34A:
	bl sub_02005FA8
	cmp r0, #0
	bne _021DE370
	add r0, r5, #0
	add r1, r4, #0
	bl ovy307_21de3f4
	mov r0, #4
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DE360:
	bl sub_02005EC0
	cmp r0, #0
	bne _021DE370
	bl sub_02005D8C
	mov r0, #0
	str r0, [r4, #0x18]
_021DE370:
	pop {r3, r4, r5, pc}
	nop
_021DE374: .word 0x000003F3
_021DE378: .word 0x00000519
	thumb_func_end ovy307_21de2d4

	thumb_func_start sub_021DE37C
sub_021DE37C: ; 0x021DE37C
	ldr r0, [r1, #0x18]
	cmp r0, #1
	bne _021DE386
	mov r0, #1
	bx lr
_021DE386:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE37C

	thumb_func_start ovy307_21de38c
ovy307_21de38c: ; 0x021DE38C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, _021DE3A0 ; =0x000003F2
	ldr r1, _021DE3A4 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #2
	str r0, [r4, #0x18]
	pop {r4, pc}
	nop
_021DE3A0: .word 0x000003F2
_021DE3A4: .word 0x0000FFFF
	thumb_func_end ovy307_21de38c

	thumb_func_start sub_021DE3A8
sub_021DE3A8: ; 0x021DE3A8
	ldr r0, [r1, #0x18]
	cmp r0, #2
	bne _021DE3B2
	mov r0, #1
	bx lr
_021DE3B2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE3A8

	thumb_func_start ovy307_21de3b8
ovy307_21de3b8: ; 0x021DE3B8
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, _021DE3D0 ; =0x000003F3
	add r1, #0x24
	mov r2, #1
	bl sub_02006424
	mov r0, #3
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
_021DE3D0: .word 0x000003F3
	thumb_func_end ovy307_21de3b8

	thumb_func_start sub_021DE3D4
sub_021DE3D4: ; 0x021DE3D4
	ldr r0, [r1, #0x18]
	cmp r0, #4
	bne _021DE3DE
	mov r0, #1
	bx lr
_021DE3DE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE3D4

	thumb_func_start ovy307_21de3e4
ovy307_21de3e4: ; 0x021DE3E4
	push {r3, lr}
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy307_21de3e4

	thumb_func_start ovy307_21de3f4
ovy307_21de3f4: ; 0x021DE3F4
	push {r3, lr}
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #6
	bl sub_02005E68
	pop {r3, pc}
	thumb_func_end ovy307_21de3f4

	thumb_func_start ovy307_21de408
ovy307_21de408: ; 0x021DE408
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, _021DE420 ; =0x00000519
	add r1, #0x24
	mov r2, #1
	bl sub_02006424
	mov r0, #5
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
_021DE420: .word 0x00000519
	thumb_func_end ovy307_21de408

	thumb_func_start sub_021DE424
sub_021DE424: ; 0x021DE424
	ldr r1, [r1, #0x18]
	mov r0, #1
	cmp r1, #5
	beq _021DE432
	cmp r1, #6
	beq _021DE432
	mov r0, #0
_021DE432:
	bx lr
	thumb_func_end sub_021DE424

	thumb_func_start ovy307_21de434
ovy307_21de434: ; 0x021DE434
	push {r4, lr}
	mov r0, #0x3c
	add r4, r1, #0
	bl sub_02005EA0
	mov r0, #7
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ovy307_21de434

	thumb_func_start sub_021DE444
sub_021DE444: ; 0x021DE444
	ldr r0, [r1, #0x18]
	cmp r0, #7
	bne _021DE44E
	mov r0, #1
	bx lr
_021DE44E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE444

	thumb_func_start ovy307_21de454
ovy307_21de454: ; 0x021DE454
	push {r3, lr}
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #0x3c
	bl sub_02005E68
	pop {r3, pc}
	thumb_func_end ovy307_21de454

	thumb_func_start ovy307_21de468
ovy307_21de468: ; 0x021DE468
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r3, #0x20
	add r5, r1, #0
	str r3, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	mov r4, #0
	bl sub_0204B0B8
	mov r6, #1
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_020480C0
	str r0, [r5, #0x5c]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x5c]
	bl sub_02048244
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r5, #0x58]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, #0x58]
	bl sub_02048244
	ldrh r3, [r5]
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_02024D20
	mov r2, #0x66
	str r0, [r5, #0x60]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #3
	lsl r2, r2, #2
	bl sub_0204875C
	str r0, [r5, #0x64]
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	str r0, [r5, #0x54]
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	mov r0, #1
	bl sub_02045B7C
	mov r0, #1
	mov r1, #0
	str r4, [r5, #0x50]
	str r4, [r5, #0x68]
	str r4, [r5, #0x6c]
	bl sub_02044C98
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy307_21de468

	thumb_func_start ovy307_21de51c
ovy307_21de51c: ; 0x021DE51C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021DE52A
	bl sub_020223CC
_021DE52A:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021DE534
	bl GFL_StrBufFree
_021DE534:
	ldr r0, [r4, #0x54]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x64]
	bl GFL_MsgDataFree
	ldr r2, [r4, #0x60]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r0, [r4, #0x58]
	bl sub_02048210
	ldr r0, [r4, #0x5c]
	bl sub_02048210
	pop {r4, pc}
	thumb_func_end ovy307_21de51c

	thumb_func_start sub_021DE560
sub_021DE560: ; 0x021DE560
	ldr r0, [r1, #0x54]
	ldr r3, _021DE568 ; =sub_0203A7F4
	bx r3
	nop
_021DE568: .word sub_0203A7F4
	thumb_func_end sub_021DE560

	thumb_func_start ovy307_21de56c
ovy307_21de56c: ; 0x021DE56C
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x58]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #2
	bl sub_02024E80
	ldr r4, [r4, #0x58]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21de56c

	thumb_func_start ovy307_21de59c
ovy307_21de59c: ; 0x021DE59C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x58]
	add r6, r2, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021DE5BC
	bl sub_020223CC
_021DE5BC:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021DE5C6
	bl GFL_StrBufFree
_021DE5C6:
	ldr r0, [r4, #0x64]
	add r1, r6, #0
	bl sub_0204898C
	add r6, r0, #0
	ldrh r0, [r4]
	bl sub_020241D4
	ldr r2, [r5, #4]
	mov r1, #0
	add r7, r0, #0
	bl sub_020243F4
	mov r0, #1
	ldrh r1, [r4]
	lsl r0, r0, #8
	bl sub_02048530
	add r1, r0, #0
	add r0, r7, #0
	add r2, r6, #0
	str r1, [r4, #0x68]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	add r0, r6, #0
	bl GFL_StrBufFree
	bl sub_02017BCC
	ldr r1, [r4, #8]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x54]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r4]
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x58]
	ldr r3, [r4, #0x68]
	bl sub_02022268
	str r0, [r4, #0x50]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy307_21de59c

	thumb_func_start ovy307_21de630
ovy307_21de630: ; 0x021DE630
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x50]
	mov r4, #0
	bl sub_020223B4
	cmp r0, #0
	beq _021DE64A
	cmp r0, #1
	beq _021DE666
	cmp r0, #2
	beq _021DE680
	b _021DE682
_021DE64A:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	bne _021DE65C
	bl sub_0203DA2C
	cmp r0, #0
	beq _021DE682
_021DE65C:
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl sub_020223E0
	b _021DE682
_021DE666:
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021DE678
	bl sub_0203DA48
	cmp r0, #0
	beq _021DE682
_021DE678:
	ldr r0, [r5, #0x50]
	bl sub_020223BC
	b _021DE682
_021DE680:
	mov r4, #1
_021DE682:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy307_21de630

	thumb_func_start ovy307_21de688
ovy307_21de688: ; 0x021DE688
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	lsl r7, r7, #8
	add r5, r1, #0
	mov r0, #1
	add r1, r7, #0
	mov r2, #1
	mov r4, #1
	bl sub_02044564
	add r6, r0, #0
	mov r0, #1
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02044668
	add r0, r5, #0
	add r0, #0x70
	strb r4, [r0]
	add r0, r5, #0
	mov r1, #0x18
	add r0, #0x71
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0xd
	add r0, #0x72
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x73
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x74
	strh r6, [r0]
	mov r0, #2
	str r0, [r5, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy307_21de688

	thumb_func_start sub_021DE6D0
sub_021DE6D0: ; 0x021DE6D0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE6D0

	thumb_func_start ovy307_21de6d4
ovy307_21de6d4: ; 0x021DE6D4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021DE700
	cmp r0, #1
	bne _021DE700
	ldr r0, [r4, #0x78]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021DE700
	cmp r0, #0
	bne _021DE6F8
	mov r0, #1
	b _021DE6FA
_021DE6F8:
	mov r0, #0
_021DE6FA:
	str r0, [r4, #0x7c]
	mov r0, #2
	str r0, [r4, #0x20]
_021DE700:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21de6d4

	thumb_func_start ovy307_21de704
ovy307_21de704: ; 0x021DE704
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r0, [r4]
	mov r2, #2
	mov r3, #0
	str r0, [sp]
	ldr r1, [r4, #0x60]
	add r0, r4, #0
	lsl r1, r1, #0x10
	add r0, #0x70
	lsr r1, r1, #0x10
	mov r5, #2
	bl sub_020254E0
	str r0, [r4, #0x78]
	mov r0, #1
	str r5, [r4, #0x7c]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy307_21de704

	thumb_func_start sub_021DE72C
sub_021DE72C: ; 0x021DE72C
	ldr r0, [r1, #0x7c]
	bx lr
	thumb_func_end sub_021DE72C

	thumb_func_start ovy307_21de730
ovy307_21de730: ; 0x021DE730
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _021DE7BC ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _021DE7C0 ; =0xFFFFCFFD
	mov r4, #0
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _021DE7C4 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0]
	add r1, r2, #0
	ldrh r3, [r0]
	add r1, #0xc
	sub r2, #0x10
	and r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r5, #2
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	mov r3, #0
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl G3X_SetFog
	mov r0, #0
	mov r1, #0
	lsr r2, r5, #0x11
	mov r3, #0x3f
	str r4, [sp]
	bl G3X_SetClearColor
	ldr r1, _021DE7C8 ; =0xBFFF0000
	ldr r0, _021DE7CC ; =0x04000580
	str r1, [r0]
	ldr r5, _021DE7D0 ; =0x021DF5B4
_021DE79E:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021DE79E
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_021DE7BC: .word 0x04000008
_021DE7C0: .word 0xFFFFCFFD
_021DE7C4: .word 0x0000CFEF
_021DE7C8: .word 0xBFFF0000
_021DE7CC: .word 0x04000580
_021DE7D0: .word 0x021DF5B4
	thumb_func_end ovy307_21de730

	thumb_func_start ovy307_21de7d4
ovy307_21de7d4: ; 0x021DE7D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021DE860 ; =0x000001D2
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021DE864 ; =0x021DF7E0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021DE868 ; =0x04000050
	ldr r0, _021DE86C ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021DE870 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021DE874 ; =0x021DF5D4
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
	bl ovy307_21de924
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy307_21de9c8
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy307_21dea38
	ldr r0, _021DE878 ; =ovy307_21de910
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE860: .word 0x000001D2
_021DE864: .word 0x021DF7E0
_021DE868: .word 0x04000050
_021DE86C: .word 0x04001050
_021DE870: .word 0xFFFF1FFF
_021DE874: .word 0x021DF5D4
_021DE878: .word ovy307_21de910
	thumb_func_end ovy307_21de7d4

	thumb_func_start ovy307_21de87c
ovy307_21de87c: ; 0x021DE87C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #8
	bl ovy307_21deaa4
	add r0, r4, #4
	bl ovy307_21dea08
	add r0, r4, #0
	bl ovy307_21de984
	bl sub_020232D8
	ldr r5, _021DE8CC ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021DE8D0 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021DE8D4 ; =0xFFFF1FFF
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
_021DE8CC: .word 0x04000050
_021DE8D0: .word 0x04001050
_021DE8D4: .word 0xFFFF1FFF
	thumb_func_end ovy307_21de87c

	thumb_func_start ovy307_21de8d8
ovy307_21de8d8: ; 0x021DE8D8
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021DEA24
	add r0, r4, #0
	bl sub_021DE9BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21de8d8

	thumb_func_start sub_021DE8EC
sub_021DE8EC: ; 0x021DE8EC
	ldr r3, _021DE8F4 ; =ovy307_21deab4
	add r0, #8
	bx r3
	nop
_021DE8F4: .word ovy307_21deab4
	thumb_func_end sub_021DE8EC

	thumb_func_start sub_021DE8F8
sub_021DE8F8: ; 0x021DE8F8
	ldr r3, _021DE900 ; =sub_021DEAC8
	add r0, #8
	bx r3
	nop
_021DE900: .word sub_021DEAC8
	thumb_func_end sub_021DE8F8

	thumb_func_start sub_021DE904
sub_021DE904: ; 0x021DE904
	ldr r3, _021DE90C ; =sub_021DEA34
	add r0, r0, #4
	bx r3
	nop
_021DE90C: .word sub_021DEA34
	thumb_func_end sub_021DE904

	thumb_func_start ovy307_21de910
ovy307_21de910: ; 0x021DE910
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021DE9C0
	add r0, r4, #4
	bl sub_021DEA2C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21de910

	thumb_func_start ovy307_21de924
ovy307_21de924: ; 0x021DE924
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
	ldr r0, _021DE97C ; =0x021DF588
	bl sub_02044710
	ldr r7, _021DE980 ; =0x021DF604
_021DE946:
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
	blo _021DE946
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE97C: .word 0x021DF588
_021DE980: .word 0x021DF604
	thumb_func_end ovy307_21de924

	thumb_func_start ovy307_21de984
ovy307_21de984: ; 0x021DE984
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021DE9B8 ; =0x021DF604
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021DE98E:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #6
	blo _021DE98E
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DE9B8: .word 0x021DF604
	thumb_func_end ovy307_21de984

	thumb_func_start sub_021DE9BC
sub_021DE9BC: ; 0x021DE9BC
	bx lr
	.align 2, 0
	thumb_func_end sub_021DE9BC

	thumb_func_start sub_021DE9C0
sub_021DE9C0: ; 0x021DE9C0
	ldr r3, _021DE9C4 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021DE9C4: .word sub_02045A5C
	thumb_func_end sub_021DE9C0

	thumb_func_start ovy307_21de9c8
ovy307_21de9c8: ; 0x021DE9C8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021DEA04 ; =0x021DF598
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
_021DEA04: .word 0x021DF598
	thumb_func_end ovy307_21de9c8

	thumb_func_start ovy307_21dea08
ovy307_21dea08: ; 0x021DEA08
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
	thumb_func_end ovy307_21dea08

	thumb_func_start sub_021DEA24
sub_021DEA24: ; 0x021DEA24
	ldr r3, _021DEA28 ; =sub_0204B794
	bx r3
	.align 2, 0
_021DEA28: .word sub_0204B794
	thumb_func_end sub_021DEA24

	thumb_func_start sub_021DEA2C
sub_021DEA2C: ; 0x021DEA2C
	ldr r3, _021DEA30 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021DEA30: .word sub_0204B7C8
	thumb_func_end sub_021DEA2C

	thumb_func_start sub_021DEA34
sub_021DEA34: ; 0x021DEA34
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021DEA34

	thumb_func_start ovy307_21dea38
ovy307_21dea38: ; 0x021DEA38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	str r6, [sp]
	ldr r0, _021DEA8C ; =ovy307_21de730
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r7, #1
	mov r3, #1
	bl sub_02048D28
	str r6, [sp]
	lsl r0, r7, #0xc
	str r0, [sp, #4]
	lsl r0, r7, #0x16
	str r0, [sp, #8]
	ldr r0, _021DEA90 ; =0x021DF570
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021DEA94 ; =0x021DF564
	ldr r3, _021DEA98 ; =0x02094A3C
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp, #0x14]
	ldr r0, _021DEA9C ; =0x021DF57C
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _021DEAA0 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DEA8C: .word ovy307_21de730
_021DEA90: .word 0x021DF570
_021DEA94: .word 0x021DF564
_021DEA98: .word 0x02094A3C
_021DEA9C: .word 0x021DF57C
_021DEAA0: .word 0x00001555
	thumb_func_end ovy307_21dea38

	thumb_func_start ovy307_21deaa4
ovy307_21deaa4: ; 0x021DEAA4
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy307_21deaa4

	thumb_func_start ovy307_21deab4
ovy307_21deab4: ; 0x021DEAB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	pop {r4, pc}
	thumb_func_end ovy307_21deab4

	thumb_func_start sub_021DEAC8
sub_021DEAC8: ; 0x021DEAC8
	ldr r3, _021DEACC ; =sub_02049AA0
	bx r3
	.align 2, 0
_021DEACC: .word sub_02049AA0
	thumb_func_end sub_021DEAC8

	thumb_func_start ovy307_21dead0
ovy307_21dead0: ; 0x021DEAD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _021DEB18 ; =0x0000011B
	ldr r3, _021DEB1C ; =0x021DF7F4
	str r1, [sp]
	mov r1, #0x44
	mul r1, r5
	mov r2, #1
	bl sub_0203A1FC
	add r6, r0, #0
	mov r4, #0
	cmp r5, #0
	bls _021DEB14
	add r7, r4, #0
_021DEAEE:
	mov r0, #0x44
	mul r0, r4
	add r0, r6, r0
	str r7, [r0, #4]
	str r7, [r0, #8]
	mov r1, #1
	str r7, [r0, #0xc]
	lsl r1, r1, #0xc
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	add r0, #0x1c
	blx MTX_Identity33_
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blo _021DEAEE
_021DEB14:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DEB18: .word 0x0000011B
_021DEB1C: .word 0x021DF7F4
	thumb_func_end ovy307_21dead0

	thumb_func_start sub_021DEB20
sub_021DEB20: ; 0x021DEB20
	ldr r3, _021DEB24 ; =sub_0203A24C
	bx r3
	.align 2, 0
_021DEB24: .word sub_0203A24C
	thumb_func_end sub_021DEB20

	thumb_func_start ovy307_21deb28
ovy307_21deb28: ; 0x021DEB28
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021DEBA4 ; =0x000001B1
	add r7, r1, #0
	ldr r3, _021DEBA8 ; =0x021DF7F4
	mov r1, #0x60
	mov r2, #1
	add r6, r0, #0
	str r4, [sp]
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	str r7, [r5, #4]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	mov r7, #5
	mov r6, #0
	bl sub_0201CCF8
	strh r0, [r5, #8]
	str r6, [r5, #0xc]
	str r6, [r5, #0x10]
	str r6, [r5, #0x14]
	str r6, [r5, #0x18]
	str r6, [r5, #0x1c]
	str r6, [r5, #0x24]
	ldr r0, _021DEBAC ; =0x021DEEC5
	str r6, [r5, #0x28]
	add r1, r5, #0
	mov r2, #1
	bl sub_020056FC
	str r0, [r5, #0x2c]
	add r0, r5, #0
	bl ovy307_21deec8
	add r0, r5, #0
	bl ovy307_21deefc
	ldrh r0, [r5, #8]
	add r4, #0x39
	cmp r0, r4
	ldrh r0, [r5]
	bne _021DEB88
	add r1, r7, #0
	ldr r2, _021DEBB0 ; =0x021DF750
	b _021DEB8C
_021DEB88:
	ldr r2, _021DEBB4 ; =0x021DF724
	mov r1, #3
_021DEB8C:
	bl ovy307_21df1c4
	str r0, [r5, #0x44]
	add r0, r5, #0
	bl ovy307_21df308
	add r0, r5, #0
	bl ovy307_21df374
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DEBA4: .word 0x000001B1
_021DEBA8: .word 0x021DF7F4
_021DEBAC: .word 0x021DEEC5
_021DEBB0: .word 0x021DF750
_021DEBB4: .word 0x021DF724
	thumb_func_end ovy307_21deb28

	thumb_func_start ovy307_21debb8
ovy307_21debb8: ; 0x021DEBB8
	push {r4, lr}
	add r4, r0, #0
	bl ovy307_21df438
	add r0, r4, #0
	bl sub_021DF328
	ldr r0, [r4, #0x44]
	bl ovy307_21df25c
	add r0, r4, #0
	bl ovy307_21df0bc
	add r0, r4, #0
	bl sub_021DEEF0
	ldr r0, [r4, #0x2c]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21debb8

	thumb_func_start ovy307_21debe8
ovy307_21debe8: ; 0x021DEBE8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bhi _021DEC1A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DEC00: ; jump table
	.short _021DEC14 - _021DEC00 - 2 ; case 0
	.short _021DEC32 - _021DEC00 - 2 ; case 1
	.short _021DED68 - _021DEC00 - 2 ; case 2
	.short _021DED74 - _021DEC00 - 2 ; case 3
	.short _021DED8A - _021DEC00 - 2 ; case 4
	.short _021DEDF6 - _021DEC00 - 2 ; case 5
	.short _021DED90 - _021DEC00 - 2 ; case 6
	.short _021DEDAE - _021DEC00 - 2 ; case 7
	.short _021DEDEA - _021DEC00 - 2 ; case 8
	.short _021DEDF6 - _021DEC00 - 2 ; case 9
_021DEC14:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _021DEC1C
_021DEC1A:
	b _021DEDF6
_021DEC1C:
	mov r2, #0
	mov r1, #1
	str r2, [r4, #0x18]
	mov r2, #1
	str r1, [r4, #0xc]
	bl ovy307_21df0dc
	ldr r0, [r4, #0x44]
	bl sub_021DF2FC
	b _021DEDF6
_021DEC32:
	ldrh r0, [r4, #8]
	ldr r5, _021DEE14 ; =0x000001EA
	cmp r0, r5
	bne _021DEC3E
	sub r5, #0xbe
	b _021DEC40
_021DEC3E:
	sub r5, #0x6e
_021DEC40:
	ldr r0, [r4, #0x18]
	ldrh r2, [r4, #8]
	add r0, r0, #1
	ldr r1, _021DEE14 ; =0x000001EA
	str r0, [r4, #0x18]
	cmp r2, r1
	bne _021DEC96
	ldr r1, [r4, #0x28]
	cmp r1, #3
	bhi _021DED4C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DEC60: ; jump table
	.short _021DEC68 - _021DEC60 - 2 ; case 0
	.short _021DEC78 - _021DEC60 - 2 ; case 1
	.short _021DEC8A - _021DEC60 - 2 ; case 2
	.short _021DED4C - _021DEC60 - 2 ; case 3
_021DEC68:
	cmp r0, #0xa
	bne _021DED4C
	ldr r0, _021DEE18 ; =0x000007A2
	bl GFL_SndSEPlay
	mov r0, #1
_021DEC74:
	str r0, [r4, #0x28]
	b _021DED4C
_021DEC78:
	bl sub_020062A8
	cmp r0, #0
	bne _021DED4C
	ldr r0, _021DEE1C ; =0x000007A7
	bl GFL_SndSEPlay
	mov r0, #2
	b _021DEC74
_021DEC8A:
	bl sub_020062A8
	cmp r0, #0
	bne _021DED4C
	mov r0, #3
	b _021DEC74
_021DEC96:
	cmp r0, #0x14
	bne _021DEC9C
	b _021DECA0
_021DEC9C:
	cmp r0, #0x6d
	bne _021DECA4
_021DECA0:
	ldr r0, _021DEE20 ; =0x000007A1
	b _021DECAC
_021DECA4:
	cmp r0, #0xda
	bne _021DECB0
	mov r0, #0x5d
	lsl r0, r0, #4
_021DECAC:
	bl GFL_SndSEPlay
_021DECB0:
	ldr r0, [r4, #0x18]
	cmp r0, #0xa
	bne _021DECB8
	b _021DECC8
_021DECB8:
	cmp r0, #0xf
	bne _021DECBE
	b _021DECC8
_021DECBE:
	cmp r0, #0x55
	bne _021DECC4
	b _021DECC8
_021DECC4:
	cmp r0, #0x5a
	bne _021DECCE
_021DECC8:
	ldr r0, _021DEE24 ; =0x000007AF
	bl GFL_SndSEPlay
_021DECCE:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DECFC
	ldr r0, [r4, #0x20]
	bl sub_02006294
	cmp r0, #0
	bne _021DECFC
	ldr r1, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	cmp r1, #0x96
	blo _021DECF2
	ldr r0, _021DEE28 ; =0x00000135
	cmp r1, r0
	bhs _021DECF2
	mov r0, #0x14
	b _021DECFA
_021DECF2:
	ldr r0, _021DEE28 ; =0x00000135
	cmp r1, r0
	bls _021DECFC
	mov r0, #0
_021DECFA:
	str r0, [r4, #0x24]
_021DECFC:
	ldr r0, [r4, #0x18]
	cmp r0, #0x96
	blo _021DED2E
	cmp r0, r5
	bhs _021DED2E
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _021DED4C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021DED28
	ldr r6, _021DEE2C ; =0x000007AE
	add r0, r6, #0
	bl sub_020061B8
	add r1, r0, #0
	add r0, r6, #0
	str r1, [r4, #0x20]
	bl sub_020061DC
	mov r0, #1
	b _021DED4A
_021DED28:
	sub r0, r0, #1
	str r0, [r4, #0x24]
	b _021DED4C
_021DED2E:
	cmp r0, r5
	bne _021DED4C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DED4C
	ldr r0, [r4, #0x20]
	bl sub_02006294
	cmp r0, #0
	beq _021DED4C
	ldr r0, [r4, #0x20]
	bl sub_02006268
	mov r0, #0
_021DED4A:
	str r0, [r4, #0x1c]
_021DED4C:
	ldr r0, [r4, #0x18]
	cmp r0, r5
	bne _021DEDF6
	add r0, r4, #0
	bl ovy307_21df168
	add r0, r4, #0
	bl sub_021DF508
	ldr r0, _021DEE30 ; =0x0000078E
	bl GFL_SndSEPlay
	mov r0, #2
	b _021DEDF4
_021DED68:
	bl ovy307_21df18c
	cmp r0, #0
	beq _021DEDF6
	mov r0, #3
	b _021DEDF4
_021DED74:
	bl sub_021DF510
	cmp r0, #0
	beq _021DEDF6
	add r0, r4, #0
	bl sub_021DF0D0
	mov r0, #1
	str r0, [r4, #0x14]
	mov r0, #4
	b _021DEDF4
_021DED8A:
	mov r0, #0
	str r0, [r4, #0x14]
	b _021DEDF6
_021DED90:
	ldr r1, [r4, #0x18]
	add r1, r1, #1
	str r1, [r4, #0x18]
	cmp r1, #0x78
	blo _021DEDF6
	bl ovy307_21df1a0
	add r0, r4, #0
	bl sub_021DF520
	mov r0, #7
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x18]
	b _021DEDF6
_021DEDAE:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0x41
	blo _021DEDF6
	mov r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #5
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	str r6, [sp]
	str r6, [sp, #4]
	add r1, r0, #0
	str r6, [sp, #8]
	add r0, r5, #0
	mov r2, #0x40
	mov r3, #0
	str r6, [sp, #0xc]
	bl sub_020069F4
	b _021DEDF6
_021DEDEA:
	bl sub_020066C0
	cmp r0, #0
	bne _021DEDF6
	mov r0, #9
_021DEDF4:
	str r0, [r4, #0xc]
_021DEDF6:
	add r0, r4, #0
	bl ovy307_21df12c
	ldr r0, [r4, #0x30]
	bl sub_02019AE8
	ldr r0, [r4, #0x44]
	bl ovy307_21df26c
	add r0, r4, #0
	bl ovy307_21df458
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021DEE14: .word 0x000001EA
_021DEE18: .word 0x000007A2
_021DEE1C: .word 0x000007A7
_021DEE20: .word 0x000007A1
_021DEE24: .word 0x000007AF
_021DEE28: .word 0x00000135
_021DEE2C: .word 0x000007AE
_021DEE30: .word 0x0000078E
	thumb_func_end ovy307_21debe8

	thumb_func_start ovy307_21dee34
ovy307_21dee34: ; 0x021DEE34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_02019C0C
	add r0, r4, #0
	bl ovy307_21df334
	ldr r0, [r4, #0x44]
	bl sub_021DF2F4
	pop {r4, pc}
	thumb_func_end ovy307_21dee34

	thumb_func_start sub_021DEE4C
sub_021DEE4C: ; 0x021DEE4C
	mov r1, #1
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DEE4C

	thumb_func_start sub_021DEE54
sub_021DEE54: ; 0x021DEE54
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021DEE54

	thumb_func_start ovy307_21dee58
ovy307_21dee58: ; 0x021DEE58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ovy307_21df0bc
	add r0, r4, #0
	str r5, [r4, #4]
	bl ovy307_21deefc
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl ovy307_21df0dc
	ldr r0, [r4, #0x34]
	bl sub_0201AD7C
	ldr r0, _021DEE90 ; =0x00007FFF
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x34]
	mov r2, #0x10
	mov r3, #0
	bl sub_0201AE2C
	mov r0, #5
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DEE90: .word 0x00007FFF
	thumb_func_end ovy307_21dee58

	thumb_func_start ovy307_21dee94
ovy307_21dee94: ; 0x021DEE94
	push {r3, lr}
	ldr r0, [r0, #0x34]
	bl sub_0201AEE8
	cmp r0, #0
	bne _021DEEA4
	mov r0, #1
	pop {r3, pc}
_021DEEA4:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy307_21dee94

	thumb_func_start sub_021DEEA8
sub_021DEEA8: ; 0x021DEEA8
	mov r1, #6
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DEEA8

	thumb_func_start sub_021DEEB4
sub_021DEEB4: ; 0x021DEEB4
	ldr r0, [r0, #0xc]
	cmp r0, #9
	blt _021DEEBE
	mov r0, #1
	bx lr
_021DEEBE:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DEEB4
_021DEEC4:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy307_21deec8
ovy307_21deec8: ; 0x021DEEC8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	mov r0, #1
	bl sub_020199E8
	mov r1, #3
	str r0, [r4, #0x30]
	lsl r1, r1, #0x10
	bl sub_0201AEFC
	ldr r0, [r4, #0x30]
	bl sub_0201AACC
	mov r0, #0
	str r0, [r4, #0x3c]
	add r4, #0x40
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21deec8

	thumb_func_start sub_021DEEF0
sub_021DEEF0: ; 0x021DEEF0
	ldr r0, [r0, #0x30]
	ldr r3, _021DEEF8 ; =sub_02019A88
	bx r3
	nop
_021DEEF8: .word sub_02019A88
	thumb_func_end sub_021DEEF0

	thumb_func_start ovy307_21deefc
ovy307_21deefc: ; 0x021DEEFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, _021DF09C ; =0xFFF42000
	mov r2, #0
	str r0, [sp]
	ldr r0, _021DF0A0 ; =0xFFCE0000
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #4]
	mov r4, #0
	bl sub_0201C14C
	mov r1, #1
	str r0, [r5, #0x34]
	bl sub_0201AECC
	ldr r0, [r5, #4]
	mov r1, #0xab
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, _021DF0A4 ; =0x0000028A
	cmp r0, r1
	beq _021DEFBE
	ldr r1, _021DF0A8 ; =0x021DF794
	mov r3, #0xc
_021DEF34:
	add r6, r4, #0
	mul r6, r3
	ldr r2, [r1, r6]
	cmp r0, r2
	bne _021DEFB4
	ldr r4, _021DF0AC ; =0x021DF798
	mov r1, #0
	ldr r0, [r4, r6]
	blx sub_0208D1D0
	ldr r0, _021DF0B0 ; =0x45800000
	bls _021DEF5E
	ldr r1, [r4, r6]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DEF6C
_021DEF5E:
	ldr r1, [r4, r6]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DEF6C:
	blx sub_0208DA4C
	ldr r4, _021DF0B4 ; =0x021DF79C
	str r0, [sp, #0x20]
	ldr r0, [r4, r6]
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021DF0B0 ; =0x45800000
	bls _021DEF92
	ldr r1, [r4, r6]
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DEFA0
_021DEF92:
	ldr r1, [r4, r6]
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DEFA0:
	blx sub_0208DA4C
	str r0, [sp, #0x24]
	ldr r0, _021DF0A0 ; =0xFFCE0000
	add r1, sp, #0x20
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x34]
	bl sub_0201AB24
	b _021DEFBE
_021DEFB4:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #4
	blo _021DEF34
_021DEFBE:
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	lsr r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x34]
	add r1, sp, #0x14
	bl sub_0201AB88
	ldr r0, [r5, #0x34]
	bl sub_0201ADE8
	blx sub_0208D3BC
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0201ADF8
	blx sub_0208D374
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0201ADF0
	blx sub_0208D374
	add r7, r0, #0
	ldr r1, _021DF0B8 ; =0x42C00000
	add r0, r4, #0
	blx sub_0208D1D0
	bls _021DF002
	ldr r4, _021DF0B8 ; =0x42C00000
_021DF002:
	ldr r0, _021DF0B8 ; =0x42C00000
	add r1, r4, #0
	blx sub_0208E144
	mov r1, #1
	lsl r1, r1, #0x1e
	blx sub_0208E3C8
	add r1, r6, #0
	blx sub_0208DF14
	add r4, r0, #0
	mov r0, #0
	add r1, r7, #0
	blx sub_0208E144
	mov r1, #0
	add r6, r0, #0
	blx sub_0208D1D0
	ldr r0, _021DF0B0 ; =0x45800000
	bls _021DF040
	add r1, r6, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DF04E
_021DF040:
	add r1, r6, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DF04E:
	blx sub_0208DA4C
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	blx sub_0208D1D0
	ldr r0, _021DF0B0 ; =0x45800000
	bls _021DF072
	add r1, r4, #0
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021DF080
_021DF072:
	add r1, r4, #0
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021DF080:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x34]
	add r1, sp, #8
	bl sub_0201AB54
	ldr r0, [r5, #0x34]
	bl sub_0201ACE0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF09C: .word 0xFFF42000
_021DF0A0: .word 0xFFCE0000
_021DF0A4: .word 0x0000028A
_021DF0A8: .word 0x021DF794
_021DF0AC: .word 0x021DF798
_021DF0B0: .word 0x45800000
_021DF0B4: .word 0x021DF79C
_021DF0B8: .word 0x42C00000
	thumb_func_end ovy307_21deefc

	thumb_func_start ovy307_21df0bc
ovy307_21df0bc: ; 0x021DF0BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0201AD7C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	bl sub_0201AA80
	pop {r4, pc}
	thumb_func_end ovy307_21df0bc

	thumb_func_start sub_021DF0D0
sub_021DF0D0: ; 0x021DF0D0
	ldr r0, [r0, #0x34]
	ldr r3, _021DF0D8 ; =sub_0201AD7C
	bx r3
	nop
_021DF0D8: .word sub_0201AD7C
	thumb_func_end sub_021DF0D0

	thumb_func_start ovy307_21df0dc
ovy307_21df0dc: ; 0x021DF0DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r2, #0
	bl sub_0201AF04
	ldr r0, [r5, #0x34]
	bl sub_0201ADC4
	add r6, r0, #0
	bl sub_020618C0
	ldr r0, [r5, #0x34]
	bl sub_0201AD28
	cmp r4, #0
	beq _021DF110
	ldr r3, _021DF118 ; =ovy307_21df11c
	add r0, r6, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_02060618
	mov r0, #0
	str r0, [r5, #0x38]
	pop {r4, r5, r6, pc}
_021DF110:
	ldr r0, [r5, #0x34]
	bl sub_0201C290
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DF118: .word ovy307_21df11c
	thumb_func_end ovy307_21df0dc

	thumb_func_start ovy307_21df11c
ovy307_21df11c: ; 0x021DF11C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0201ACE0
	mov r0, #1
	str r0, [r4, #0x38]
	pop {r4, pc}
	thumb_func_end ovy307_21df11c

	thumb_func_start ovy307_21df12c
ovy307_21df12c: ; 0x021DF12C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021DF166
	ldr r0, [r5, #0x34]
	bl sub_0201AE88
	add r1, r5, #0
	add r1, #0x40
	ldrb r1, [r1]
	cmp r0, r1
	bls _021DF14A
	sub r0, r0, #1
	b _021DF14C
_021DF14A:
	add r0, r0, #1
_021DF14C:
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	bl sub_0201AE98
	add r0, r5, #0
	add r0, #0x40
	ldrb r0, [r0]
	cmp r4, r0
	bne _021DF166
	mov r0, #0
	str r0, [r5, #0x3c]
_021DF166:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy307_21df12c

	thumb_func_start ovy307_21df168
ovy307_21df168: ; 0x021DF168
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0201ACE0
	ldr r0, _021DF188 ; =0x00007FFF
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x34]
	mov r2, #0x10
	mov r3, #0
	bl sub_0201AE2C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021DF188: .word 0x00007FFF
	thumb_func_end ovy307_21df168

	thumb_func_start ovy307_21df18c
ovy307_21df18c: ; 0x021DF18C
	push {r3, lr}
	ldr r0, [r0, #0x34]
	bl sub_0201AEE8
	cmp r0, #0
	bne _021DF19C
	mov r0, #1
	pop {r3, pc}
_021DF19C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy307_21df18c

	thumb_func_start ovy307_21df1a0
ovy307_21df1a0: ; 0x021DF1A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0201AD8C
	ldr r0, _021DF1C0 ; =0x00007FFF
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x34]
	mov r2, #0
	mov r3, #2
	bl sub_0201AE2C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021DF1C0: .word 0x00007FFF
	thumb_func_end ovy307_21df1a0

	thumb_func_start ovy307_21df1c4
ovy307_21df1c4: ; 0x021DF1C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	str r2, [sp, #4]
	add r2, sp, #8
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldr r1, _021DF24C ; =0x00000502
	ldr r5, _021DF250 ; =0x0000481C
	str r1, [sp]
	ldr r3, _021DF254 ; =0x021DF7F4
	add r1, r5, #0
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	add r1, r5, #0
	ldr r0, [sp, #4]
	strh r7, [r4, #4]
	str r0, [r4, #8]
	sub r1, #8
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #1
	sub r1, r0, #2
	sub r0, r5, #4
	str r1, [r4, r0]
	add r0, r6, #0
	bl sub_0204F918
	add r0, r4, #0
	add r1, r5, #0
	add r0, #0xc
	sub r1, #0x1c
	mov r2, #1
	add r3, r6, #0
	bl sub_0204F968
	add r1, r5, #0
	sub r1, #0x10
	str r0, [r4, r1]
	ldr r1, _021DF258 ; =0x021DF710
	add r2, r6, #0
	ldmia r1!, {r0, r1}
	bl sub_0204FDF8
	add r6, r0, #0
	bl sub_020503F0
	add r1, r5, #0
	sub r1, #0xc
	strb r0, [r4, r1]
	sub r5, #0x10
	ldr r0, [r4, r5]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl sub_0204FE04
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF24C: .word 0x00000502
_021DF250: .word 0x0000481C
_021DF254: .word 0x021DF7F4
_021DF258: .word 0x021DF710
	thumb_func_end ovy307_21df1c4

	thumb_func_start ovy307_21df25c
ovy307_21df25c: ; 0x021DF25C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204FB4C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy307_21df25c

	thumb_func_start ovy307_21df26c
ovy307_21df26c: ; 0x021DF26C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _021DF2E8 ; =0x00004814
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021DF2CA
	ldr r3, _021DF2EC ; =0x021DF7C4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r5, #2]
	ldrh r1, [r5, #4]
	cmp r0, r1
	bhs _021DF2C4
	add r6, r4, #0
	sub r6, #0xc
	sub r4, #8
_021DF296:
	ldr r3, [r5, #8]
	lsl r1, r0, #2
	ldrh r2, [r5]
	ldrh r0, [r3, r1]
	cmp r2, r0
	bne _021DF2C4
	add r1, r3, r1
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	add r2, r0, #0
	mul r2, r6
	add r0, r5, r2
	ldr r0, [r0, r4]
	add r2, r7, #0
	bl sub_0205006C
	ldrh r0, [r5, #2]
	ldrh r1, [r5, #4]
	add r0, r0, #1
	strh r0, [r5, #2]
	ldrh r0, [r5, #2]
	cmp r0, r1
	blo _021DF296
_021DF2C4:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_021DF2CA:
	ldr r0, _021DF2F0 ; =0x00004818
	ldr r1, [r5, r0]
	cmp r1, #0
	blt _021DF2E4
	bne _021DF2DC
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_020500B0
_021DF2DC:
	ldr r0, _021DF2F0 ; =0x00004818
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
_021DF2E4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF2E8: .word 0x00004814
_021DF2EC: .word 0x021DF7C4
_021DF2F0: .word 0x00004818
	thumb_func_end ovy307_21df26c

	thumb_func_start sub_021DF2F4
sub_021DF2F4: ; 0x021DF2F4
	ldr r3, _021DF2F8 ; =sub_0204F954
	bx r3
	.align 2, 0
_021DF2F8: .word sub_0204F954
	thumb_func_end sub_021DF2F4

	thumb_func_start sub_021DF2FC
sub_021DF2FC: ; 0x021DF2FC
	ldr r1, _021DF304 ; =0x00004814
	mov r2, #1
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_021DF304: .word 0x00004814
	thumb_func_end sub_021DF2FC

	thumb_func_start ovy307_21df308
ovy307_21df308: ; 0x021DF308
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #0
	mov r4, #0
	bl sub_02049214
	ldrh r2, [r5]
	mov r0, #4
	mov r1, #1
	bl sub_02049D24
	str r0, [r5, #0x48]
	add r5, #0x50
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy307_21df308

	thumb_func_start sub_021DF328
sub_021DF328: ; 0x021DF328
	ldr r0, [r0, #0x48]
	ldr r3, _021DF330 ; =sub_02049DDC
	bx r3
	nop
_021DF330: .word sub_02049DDC
	thumb_func_end sub_021DF328

	thumb_func_start ovy307_21df334
ovy307_21df334: ; 0x021DF334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021DF370
	mov r7, #0x44
_021DF344:
	add r0, r4, #0
	ldr r1, [r5, #0x54]
	mul r0, r7
	add r6, r1, r0
	ldr r0, [r6, #0x40]
	cmp r0, #0
	beq _021DF360
	ldrh r1, [r6]
	ldr r0, [r5, #0x48]
	bl sub_0204A5C0
	add r1, r6, #4
	bl sub_02049B5C
_021DF360:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r4, r0
	blo _021DF344
_021DF370:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy307_21df334

	thumb_func_start ovy307_21df374
ovy307_21df374: ; 0x021DF374
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	ldr r1, _021DF434 ; =0x021DF740
	bl sub_02049E00
	add r1, r5, #0
	add r1, #0x4c
	strh r0, [r1]
	add r0, r5, #0
	add r1, r5, #0
	mov r6, #1
	add r0, #0x50
	strh r6, [r0]
	add r1, #0x50
	ldrh r0, [r5]
	ldrh r1, [r1]
	bl ovy307_21dead0
	add r1, r5, #0
	add r1, #0x4c
	str r0, [r5, #0x54]
	ldrh r1, [r1]
	ldr r0, [r5, #0x48]
	bl sub_0204A5A8
	add r1, r5, #0
	mov r4, #0
	add r1, #0x4e
	strh r4, [r1]
	ldr r1, [r5, #0x54]
	strh r0, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	add r0, r5, #0
	str r6, [r1, #0x40]
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0
	bls _021DF3EE
	add r7, r4, #0
	mov r6, #0x44
_021DF3CA:
	add r1, r4, #0
	ldr r2, [r5, #0x54]
	mul r1, r6
	ldrh r1, [r2, r1]
	ldr r0, [r5, #0x48]
	bl sub_0204A5C0
	add r1, r7, #0
	bl sub_02049974
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r4, r0
	blo _021DF3CA
_021DF3EE:
	add r2, r5, #0
	add r2, #0x4e
	ldrh r3, [r2]
	mov r6, #0
	mov r2, #0x44
	ldr r1, [r5, #0x54]
	str r6, [r5, #0x58]
	mul r2, r3
	ldrh r1, [r1, r2]
	ldr r0, [r5, #0x48]
	bl sub_0204A5C0
	str r6, [sp]
	add r4, r0, #0
	mov r1, #1
	str r6, [r5, #0x5c]
	bl sub_02049974
	add r0, r4, #0
	mov r1, #2
	bl sub_02049974
	add r5, sp, #0
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_020499E4
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	bl sub_020499E4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF434: .word 0x021DF740
	thumb_func_end ovy307_21df374

	thumb_func_start ovy307_21df438
ovy307_21df438: ; 0x021DF438
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	ldr r0, [r4, #0x48]
	bl sub_02049F4C
	ldr r0, [r4, #0x54]
	bl sub_021DEB20
	mov r0, #0
	add r4, #0x50
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy307_21df438

	thumb_func_start ovy307_21df458
ovy307_21df458: ; 0x021DF458
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _021DF492
	add r7, r4, #0
	mov r6, #0x44
_021DF46A:
	add r1, r4, #0
	ldr r2, [r5, #0x54]
	mul r1, r6
	ldrh r1, [r2, r1]
	ldr r0, [r5, #0x48]
	bl sub_0204A5C0
	mov r2, #1
	add r1, r7, #0
	lsl r2, r2, #0xc
	bl sub_02049A64
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r4, r0
	blo _021DF46A
_021DF492:
	add r1, r5, #0
	add r1, #0x4e
	ldr r0, [r5, #0x58]
	ldrh r2, [r1]
	add r0, r0, #1
	mov r1, #0x44
	str r0, [r5, #0x58]
	ldr r3, [r5, #0x54]
	mul r1, r2
	ldrh r1, [r3, r1]
	ldr r0, [r5, #0x48]
	bl sub_0204A5C0
	ldr r1, [r5, #0x5c]
	add r6, r0, #0
	cmp r1, #1
	bne _021DF4DA
	mov r7, #5
	lsl r7, r7, #0xc
	mov r1, #1
	add r2, r7, #0
	bl sub_02049A28
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	mov r6, #2
	bl sub_02049A28
	cmp r4, #0
	bne _021DF500
	cmp r0, #0
	bne _021DF500
	str r6, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
_021DF4DA:
	cmp r1, #3
	bne _021DF500
	ldr r7, _021DF504 ; =0xFFFFE000
	mov r1, #1
	add r2, r7, #0
	bl sub_02049A28
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	bl sub_02049A28
	cmp r4, #0
	bne _021DF500
	cmp r0, #0
	bne _021DF500
	mov r0, #0
	str r0, [r5, #0x5c]
_021DF500:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF504: .word 0xFFFFE000
	thumb_func_end ovy307_21df458

	thumb_func_start sub_021DF508
sub_021DF508: ; 0x021DF508
	mov r1, #1
	str r1, [r0, #0x5c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DF508

	thumb_func_start sub_021DF510
sub_021DF510: ; 0x021DF510
	ldr r0, [r0, #0x5c]
	cmp r0, #2
	bne _021DF51A
	mov r0, #1
	bx lr
_021DF51A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021DF510

	thumb_func_start sub_021DF520
sub_021DF520: ; 0x021DF520
	mov r1, #3
	str r1, [r0, #0x5c]
	bx lr
	.align 2, 0
	thumb_func_end sub_021DF520
_021DF528:
	.byte 0xC1, 0xDB, 0x1D, 0x02, 0x65, 0xDC, 0x1D, 0x02
	.byte 0x2D, 0xDC, 0x1D, 0x02, 0x80, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x00, 0x60, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x80, 0x00, 0x60, 0x00, 0x02, 0x00, 0x00, 0x01, 0x80, 0x00, 0x60, 0x00
	.byte 0x03, 0x00, 0x00, 0x01, 0x80, 0x00, 0x60, 0x00, 0x04, 0x00, 0x00, 0x01, 0x80, 0x00, 0x60, 0x00
	.byte 0x05, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x40, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0xBA, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x7C, 0x01, 0x00, 0x00, 0x7C, 0x01, 0x00, 0x01, 0x7C, 0x01, 0x00, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0xF7, 0x1D, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x64, 0xF7, 0x1D, 0x02, 0x04, 0x00, 0x00, 0x00, 0x30, 0xF7, 0x1D, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x2C, 0x01, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x01
	.byte 0x2C, 0x01, 0x00, 0x02, 0xBA, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xBA, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBA, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBA, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x3E, 0xC3
	.byte 0xDA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x66, 0xE6, 0x3D, 0xC3, 0x68, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCD, 0xCC, 0x3D, 0xC3, 0x6B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x33, 0x33, 0x3E, 0xC3, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x67, 0x67, 0x5F, 0x64, 0x65, 0x6D, 0x6F, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63
	.byte 0x2E, 0x63, 0x00, 0x00, 0x65, 0x67, 0x67, 0x5F, 0x64, 0x65, 0x6D, 0x6F, 0x5F, 0x76, 0x69, 0x65
	.byte 0x77, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021DF528
