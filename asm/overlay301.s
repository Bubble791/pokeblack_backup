    .include "macros/function.inc"
	.include "overlay301.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy301_219fbc0
ovy301_219fbc0: ; 0x0219FBC0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x7e
	lsl r2, r2, #0x10
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0x7e
	bl sub_0203AAEC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx sub_020787A8
	str r5, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy301_219fbc0

	thumb_func_start ovy301_219fbec
ovy301_219fbec: ; 0x0219FBEC
	push {r3, lr}
	add r0, r3, #0
	bl ovy301_219fc10
	cmp r0, #0
	bne _0219FBFC
	mov r0, #1
	pop {r3, pc}
_0219FBFC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy301_219fbec

	thumb_func_start ovy301_219fc00
ovy301_219fc00: ; 0x0219FC00
	push {r3, lr}
	bl sub_0203AB10
	mov r0, #0x7e
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy301_219fc00

	thumb_func_start ovy301_219fc10
ovy301_219fc10: ; 0x0219FC10
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	lsl r2, r1, #2
	ldr r1, _0219FC2C ; =0x021A0258
	ldr r1, [r1, r2]
	blx r1
	str r0, [r4, #0xc]
	cmp r0, #6
	beq _0219FC28
	mov r0, #1
	pop {r4, pc}
_0219FC28:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0219FC2C: .word 0x021A0258
	thumb_func_end ovy301_219fc10

	thumb_func_start ovy301_219fc30
ovy301_219fc30: ; 0x0219FC30
	push {r4, lr}
	sub sp, #0x30
	ldr r4, _0219FC54 ; =0x021A0310
	add r3, sp, #0
	mov r2, #6
_0219FC3A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219FC3A
	mov r0, #0
	bl sub_02046BE0
	add r0, sp, #0
	bl sub_02046C40
	add sp, #0x30
	pop {r4, pc}
	nop
_0219FC54: .word 0x021A0310
	thumb_func_end ovy301_219fc30

	thumb_func_start ovy301_219fc58
ovy301_219fc58: ; 0x0219FC58
	push {r3, lr}
	bl sub_02045A5C
	ldr r3, _0219FC6C ; =0x02FE0000
	ldr r1, _0219FC70 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_0219FC6C: .word 0x02FE0000
_0219FC70: .word 0x00003FF8
	thumb_func_end ovy301_219fc58

	thumb_func_start ovy301_219fc74
ovy301_219fc74: ; 0x0219FC74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219FC88 ; =ovy301_219fc58
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_0219FC88: .word ovy301_219fc58
	thumb_func_end ovy301_219fc74

	thumb_func_start sub_0219FC8C
sub_0219FC8C: ; 0x0219FC8C
	ldr r0, [r0, #4]
	ldr r3, _0219FC94 ; =sub_0203A6A8
	bx r3
	nop
_0219FC94: .word sub_0203A6A8
	thumb_func_end sub_0219FC8C

	thumb_func_start ovy301_219fc98
ovy301_219fc98: ; 0x0219FC98
	push {r4, r5, r6, lr}
	sub sp, #0xb0
	mov r0, #0x7e
	bl sub_020444A4
	ldr r4, _0219FDA0 ; =0x021A0248
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _0219FDA4 ; =0x021A0290
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #2
	bl sub_0204476C
	mov r0, #3
	bl sub_02045738
	ldr r4, _0219FDA8 ; =0x021A02B0
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	mov r5, #1
	mov r4, #0
	bl sub_0204476C
	ldr r6, _0219FDAC ; =0x00007FE0
	mov r0, #1
	add r3, r6, #0
	mov r1, #0x20
	add r2, r6, #0
	add r3, #0x9e
	bl sub_020450CC
	mov r0, #1
	lsr r1, r6, #5
	bl sub_02045790
	ldr r6, _0219FDB0 ; =0x021A02D0
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045738
	ldr r6, _0219FDB4 ; =0x021A02F0
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #2
	mov r6, #7
	bl sub_0204476C
	add r0, r6, #0
	bl sub_02045738
	ldr r6, _0219FDB8 ; =0x021A0270
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	add r2, r4, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	mov r0, #0xe
	add r1, r5, #0
	bl sub_02046CFC
	mov r0, #0xa
	add r1, r5, #0
	bl sub_02046D84
	add sp, #0xb0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219FDA0: .word 0x021A0248
_0219FDA4: .word 0x021A0290
_0219FDA8: .word 0x021A02B0
_0219FDAC: .word 0x00007FE0
_0219FDB0: .word 0x021A02D0
_0219FDB4: .word 0x021A02F0
_0219FDB8: .word 0x021A0270
	thumb_func_end ovy301_219fc98

	thumb_func_start ovy301_219fdbc
ovy301_219fdbc: ; 0x0219FDBC
	push {r3, lr}
	mov r0, #0xe
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0xa
	mov r1, #0
	bl sub_02046D84
	mov r0, #5
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #3
	bl sub_02044B84
	bl sub_02044528
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy301_219fdbc

	thumb_func_start ovy301_219fdf4
ovy301_219fdf4: ; 0x0219FDF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0219FF2C ; =0x0000807E
	add r4, r0, #0
	mov r0, #0x9d
	bl sub_0204AA30
	add r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_02008BF0
	cmp r0, #0
	bne _0219FE54
	mov r4, #0
	mov r3, #2
	lsl r7, r3, #0xd
	str r4, [sp]
	mov r6, #0x7e
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #2
	add r3, r7, #0
	bl sub_0204B0D4
	str r4, [sp]
	mov r3, #6
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #2
	lsl r3, r3, #0xc
	bl sub_0204B0D4
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #6
	add r3, r7, #0
	bl sub_0204B0D4
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x68
	b _0219FE96
_0219FE54:
	mov r4, #0
	mov r3, #2
	lsl r7, r3, #0xd
	str r4, [sp]
	mov r6, #0x7e
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #2
	add r3, r7, #0
	bl sub_0204B0D4
	str r4, [sp]
	mov r3, #6
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #2
	lsl r3, r3, #0xc
	bl sub_0204B0D4
	str r4, [sp]
	add r0, r5, #0
	mov r1, #0x69
	mov r2, #6
	add r3, r7, #0
	str r6, [sp, #4]
	bl sub_0204B0D4
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x69
_0219FE96:
	mov r3, #6
	mov r2, #6
	lsl r3, r3, #0xc
	bl sub_0204B0D4
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r6, #0x7e
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #0x6b
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #0x6b
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #0x6e
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #0x71
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #0x72
	mov r2, #7
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #5
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	add r0, r5, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219FF2C: .word 0x0000807E
	thumb_func_end ovy301_219fdf4

	thumb_func_start ovy301_219ff30
ovy301_219ff30: ; 0x0219FF30
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_02017934
	ldr r2, _0219FFEC ; =0x0000807E
	mov r1, #7
	add r6, r0, #0
	mov r4, #7
	bl sub_020074EC
	cmp r0, #1
	bne _0219FFE2
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02007678
	add r4, r0, #0
	beq _0219FFE2
	bl sub_0200F18C
	cmp r0, #1
	bne _0219FFE2
	add r0, r4, #0
	bl sub_0200F180
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0200F184
	mov r2, #6
	add r5, r0, #0
	mov r0, #1
	add r1, r7, #0
	lsl r2, r2, #0xc
	mov r3, #0
	bl sub_02045080
	mov r2, #1
	lsl r4, r2, #9
	mov r0, #1
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_02045320
	mov r0, #5
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_02045320
	add r0, r5, #0
	add r1, r4, #0
	blx sub_0207B0AC
	bl sub_02075E14
	mov r1, #1
	lsl r7, r1, #0xe
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02075E74
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	add r2, r4, #0
	bl sub_02075E74
	bl sub_02075EE8
	bl sub_02075FF8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02076008
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	add r2, r4, #0
	bl sub_02076008
	bl sub_02076064
_0219FFE2:
	add r0, r6, #0
	mov r1, #7
	bl sub_02007534
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FFEC: .word 0x0000807E
	thumb_func_end ovy301_219ff30

	thumb_func_start ovy301_219fff0
ovy301_219fff0: ; 0x0219FFF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mov r4, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r0, _021A0044 ; =0x04000050
	strh r4, [r0]
	ldr r0, _021A0048 ; =0x04001050
	strh r4, [r0]
	mov r0, #0
	bl sub_02046DF8
	bl ovy301_219fc30
	bl ovy301_219fc98
	add r0, r5, #0
	bl ovy301_219fdf4
	add r0, r5, #0
	bl ovy301_219ff30
	mov r0, #1
	mov r1, #0x7e
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add r0, r5, #0
	bl ovy301_219fc74
	mov r0, #0x7e
	bl sub_021AD78C
	mov r0, #2
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0044: .word 0x04000050
_021A0048: .word 0x04001050
	thumb_func_end ovy301_219fff0

	thumb_func_start ovy301_21a004c
ovy301_21a004c: ; 0x021A004C
	push {r3, lr}
	bl sub_0219FC8C
	bl ovy301_219fdbc
	ldr r0, _021A0070 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021A0074 ; =0x04001050
	strh r1, [r0]
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r0, #6
	pop {r3, pc}
	.align 2, 0
_021A0070: .word 0x04000050
_021A0074: .word 0x04001050
	thumb_func_end ovy301_21a004c

	thumb_func_start ovy301_21a0078
ovy301_21a0078: ; 0x021A0078
	push {r3, lr}
	bl sub_02027ACC
	cmp r0, #1
	bne _021A0086
	mov r0, #4
	pop {r3, pc}
_021A0086:
	mov r0, #2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy301_21a0078

	thumb_func_start ovy301_21a008c
ovy301_21a008c: ; 0x021A008C
	push {r3, lr}
	bl sub_02027ACC
	cmp r0, #1
	bne _021A009A
	mov r0, #1
	pop {r3, pc}
_021A009A:
	mov r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy301_21a008c

	thumb_func_start ovy301_21a00a0
ovy301_21a00a0: ; 0x021A00A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r1, [r5, #8]
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r1, r0
	bne _021A00B2
	mov r0, #5
	pop {r4, r5, r6, pc}
_021A00B2:
	add r0, r1, #1
	strh r0, [r5, #8]
	bl sub_0203DA2C
	cmp r0, #1
	bne _021A00C8
	mov r0, #1
	bl sub_0203D564
	mov r0, #5
	pop {r4, r5, r6, pc}
_021A00C8:
	bl sub_0203DEFC
	mov r4, #1
	tst r0, r4
	beq _021A00DC
	mov r0, #0
	bl sub_0203D564
	mov r0, #5
	pop {r4, r5, r6, pc}
_021A00DC:
	bl sub_0203DEFC
	mov r6, #2
	tst r0, r6
	beq _021A00FC
	mov r0, #0
	mov r4, #0
	bl sub_0203D564
	ldr r0, [r5]
	str r4, [r0, #8]
	mov r0, #0x7e
	bl sub_021AD7A8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021A00FC:
	bl sub_0203DEFC
	lsl r1, r6, #9
	tst r0, r1
	beq _021A011A
	mov r0, #0
	bl sub_0203D564
	ldr r0, [r5]
	str r4, [r0, #8]
	mov r0, #0x7e
	bl sub_021AD7A8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021A011A:
	mov r0, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy301_21a00a0

	thumb_func_start ovy301_21a0120
ovy301_21a0120: ; 0x021A0120
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #3
	bhi _021A0202
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0138: ; jump table
	.short _021A0140 - _021A0138 - 2 ; case 0
	.short _021A0188 - _021A0138 - 2 ; case 1
	.short _021A01C0 - _021A0138 - 2 ; case 2
	.short _021A01EA - _021A0138 - 2 ; case 3
_021A0140:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x1a
	bne _021A0158
	ldr r0, _021A0208 ; =0x0000063D
	bl sub_02006254
_021A014C:
	mov r0, #0
	strb r0, [r4, #0xa]
_021A0150:
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	b _021A0202
_021A0158:
	mov r0, #3
	mov r1, #5
	mov r2, #8
	bl sub_02045E1C
	mov r0, #1
	mov r1, #5
	mov r2, #8
	bl sub_02045E1C
	mov r0, #2
	mov r1, #5
	mov r2, #8
	bl sub_02045E1C
	mov r0, #5
	mov r1, #5
	mov r2, #8
	bl sub_02045E1C
	ldrb r0, [r4, #0xa]
_021A0182:
	add r0, r0, #1
	strb r0, [r4, #0xa]
	b _021A0202
_021A0188:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x20
	bne _021A01BE
	ldr r0, _021A020C ; =0x0000063E
	bl sub_02006254
	mov r0, #3
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	mov r0, #3
	mov r1, #0xc
	mov r2, #0x78
	bl sub_02045EA0
	mov r0, #7
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	mov r0, #7
	mov r1, #0xc
	mov r2, #0x60
	bl sub_02045EA0
	b _021A014C
_021A01BE:
	b _021A0182
_021A01C0:
	bl ovy301_21a0210
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bne _021A01E8
	mov r0, #6
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x7e
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r5, #0
	bl sub_020279B4
	strb r5, [r4, #0xa]
	b _021A0150
_021A01E8:
	b _021A0182
_021A01EA:
	bl ovy301_21a0210
	bl sub_02027ACC
	cmp r0, #1
	bne _021A0202
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #8]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021A0202:
	mov r0, #5
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021A0208: .word 0x0000063D
_021A020C: .word 0x0000063E
	thumb_func_end ovy301_21a0120

	thumb_func_start ovy301_21a0210
ovy301_21a0210: ; 0x021A0210
	push {r3, lr}
	mov r0, #3
	mov r1, #4
	mov r2, #0x80
	bl sub_02045E74
	mov r0, #3
	mov r1, #7
	mov r2, #0x80
	bl sub_02045E74
	mov r0, #7
	mov r1, #4
	mov r2, #0x80
	bl sub_02045E74
	mov r0, #7
	mov r1, #7
	mov r2, #0x80
	bl sub_02045E74
	pop {r3, pc}
	thumb_func_end ovy301_21a0210
_021A023C:
	.byte 0xC1, 0xFB, 0x19, 0x02
	.byte 0xED, 0xFB, 0x19, 0x02, 0x01, 0xFC, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF1, 0xFF, 0x19, 0x02, 0x4D, 0x00, 0x1A, 0x02
	.byte 0x79, 0x00, 0x1A, 0x02, 0x8D, 0x00, 0x1A, 0x02, 0xA1, 0x00, 0x1A, 0x02, 0x21, 0x01, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x01, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x01, 0x1C, 0x04, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x1A, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x01, 0x18, 0x04, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x1F, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A023C
