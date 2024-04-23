    .include "macros/function.inc"
	.include "overlay177.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy177_219ad20
ovy177_219ad20: ; 0x0219AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	mov r2, #0x25
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x37
	lsl r2, r2, #0xc
	bl sub_0203A15C
	mov r6, #0xb1
	lsl r6, r6, #4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x37
	bl sub_0203AAEC
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	sub r0, r6, #4
	str r4, [r5, r0]
	add r0, r4, #0
	strb r7, [r0, #0x11]
	sub r1, r6, #4
	ldr r1, [r5, r1]
	ldr r0, _0219AEE4 ; =0x0000075C
	ldr r1, [r1, #4]
	add r0, r5, r0
	bl ovy177_219c2b4
	add r0, r5, #0
	mov r1, #0x37
	bl ovy177_219b03c
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x37
	bl ovy177_219b73c
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219AD88
	bl sub_02016B20
_0219AD88:
	mov r0, #0x1e
	str r0, [sp]
	mov r6, #5
	mov r4, #0x61
	str r6, [sp, #4]
	mov r7, #8
	str r7, [sp, #8]
	mov r0, #0x37
	lsl r4, r4, #2
	str r0, [sp, #0xc]
	add r0, r5, r4
	mov r1, #5
	mov r2, #1
	mov r3, #0x12
	bl ovy177_219b7cc
	ldr r2, [r5]
	ldr r0, [r5, r4]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #6
	bl sub_02024E80
	mov r0, #0x14
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x37
	ldr r6, _0219AEE8 ; =0x00000748
	str r0, [sp, #0x14]
	add r0, r5, r6
	mov r1, #7
	mov r2, #6
	mov r3, #3
	bl ovy177_219b834
	add r1, r4, #0
	sub r1, #0x10
	add r0, r5, r6
	add r1, r5, r1
	mov r6, #0x10
	mov r2, #0x10
	bl ovy177_219b964
	lsl r6, r6, #8
	mov r0, #7
	mov r1, #3
	add r2, r6, #0
	bl sub_02045E74
	mov r0, #7
	mov r1, #6
	add r2, r6, #0
	bl sub_02045E74
	mov r0, #7
	mov r1, #9
	mov r2, #0x80
	bl sub_02045EA0
	mov r0, #7
	mov r1, #0xc
	mov r2, #0x28
	bl sub_02045EA0
	ldr r6, _0219AEEC ; =0x00000A4C
	add r0, r5, r6
	bl sub_0219C968
	add r0, r6, #0
	add r0, #0x60
	add r0, r5, r0
	bl sub_0219C968
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r4, #0x14
	str r0, [sp, #4]
	add r0, r5, r4
	add r1, r5, #0
	mov r2, #0
	mov r3, #1
	bl ovy177_219c8d0
	add r0, r5, #0
	bl sub_0219B108
	add r7, r0, #0
	mov r0, #0x80
	add r0, #0xf4
	add r0, r5, r0
	bl sub_0219B7BC
	add r4, r0, #0
	mov r0, #0x80
	add r0, #0xf4
	add r0, r5, r0
	bl sub_0219B7C0
	mov r1, #0xd
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x37
	str r0, [sp, #0x10]
	mov r0, #2
	add r1, r7, #0
	mov r2, #1
	mov r3, #0xd
	bl sub_0219A89C
	add r1, r6, #0
	sub r1, #0x14
	str r0, [r5, r1]
	add r6, #0xc0
	ldr r0, [r5, r6]
	mov r1, #2
	ldr r0, [r0, #4]
	bl sub_02199B8C
	ldr r1, _0219AEF0 ; =ovy177_219bb24
	add r0, r5, #0
	bl sub_0219BAF8
	mov r0, #0x80
	lsl r2, r0, #0x13
	ldr r1, [r2]
	ldr r0, _0219AEF4 ; =0xFFFF1FFF
	and r1, r0
	mov r0, #0xc
	lsl r0, r0, #0xb
	orr r0, r1
	str r0, [r2]
	ldr r0, _0219AEF8 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1e
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0219AEFC ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x1e
	lsl r1, r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #0x1f
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	ldr r2, _0219AF00 ; =0x0000FF2C
	sub r1, #8
	strh r2, [r1]
	ldr r3, _0219AF04 ; =0x0000A8C0
	sub r1, r0, #4
	strh r3, [r1]
	sub r1, r0, #6
	mov r2, #0xff
	strh r2, [r1]
	sub r0, r0, #2
	strh r3, [r0]
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AEE4: .word 0x0000075C
_0219AEE8: .word 0x00000748
_0219AEEC: .word 0x00000A4C
_0219AEF0: .word ovy177_219bb24
_0219AEF4: .word 0xFFFF1FFF
_0219AEF8: .word 0x04000048
_0219AEFC: .word 0xFFFFC0FF
_0219AF00: .word 0x0000FF2C
_0219AF04: .word 0x0000A8C0
	thumb_func_end ovy177_219ad20

	thumb_func_start ovy177_219af08
ovy177_219af08: ; 0x0219AF08
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r7, r0, #0
	ldr r1, [r2]
	ldr r0, _0219AF64 ; =0xFFFF1FFF
	add r5, r3, #0
	and r0, r1
	str r0, [r2]
	ldr r0, _0219AF68 ; =0x00000A38
	ldr r0, [r5, r0]
	bl sub_0219A980
	mov r4, #0x66
	lsl r4, r4, #2
	add r0, r5, r4
	bl sub_0219C934
	ldr r6, _0219AF6C ; =0x00000748
	add r0, r5, r6
	bl ovy177_219b8a4
	add r0, r4, #0
	sub r0, #0x14
	add r0, r5, r0
	bl ovy177_219b8a4
	add r0, r5, #0
	bl ovy177_219b0ac
	sub r4, #0x24
	add r0, r5, r4
	bl ovy177_219b788
	add r6, #0x14
	add r0, r5, r6
	bl ovy177_219c2dc
	add r0, r7, #0
	bl sub_0203AB10
	mov r0, #0x37
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219AF64: .word 0xFFFF1FFF
_0219AF68: .word 0x00000A38
_0219AF6C: .word 0x00000748
	thumb_func_end ovy177_219af08

	thumb_func_start ovy177_219af70
ovy177_219af70: ; 0x0219AF70
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #6
	bhi _0219AFF0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219AF88: ; jump table
	.short _0219AF96 - _0219AF88 - 2 ; case 0
	.short _0219AF9C - _0219AF88 - 2 ; case 1
	.short _0219AFAC - _0219AF88 - 2 ; case 2
	.short _0219AFB8 - _0219AF88 - 2 ; case 3
	.short _0219AFD0 - _0219AF88 - 2 ; case 4
	.short _0219AFE0 - _0219AF88 - 2 ; case 5
	.short _0219AFEC - _0219AF88 - 2 ; case 6
_0219AF96:
	mov r0, #1
_0219AF98:
	str r0, [r5]
	b _0219AFF0
_0219AF9C:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #2
	b _0219AF98
_0219AFAC:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219AFF0
	mov r0, #3
	b _0219AF98
_0219AFB8:
	ldr r6, _0219B030 ; =0x0000072C
	add r0, r4, #0
	sub r2, r6, #4
	ldr r2, [r4, r2]
	add r1, r4, r6
	blx r2
	add r0, r6, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219AFF0
	mov r0, #4
	b _0219AF98
_0219AFD0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #5
	b _0219AF98
_0219AFE0:
	bl sub_0204E0E0
	cmp r0, #0
	bne _0219AFF0
	mov r0, #6
	b _0219AF98
_0219AFEC:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219AFF0:
	mov r5, #0x5d
	lsl r5, r5, #2
	add r0, r4, r5
	bl sub_0219B7B0
	cmp r0, #0
	beq _0219B014
	add r0, r5, #0
	add r0, #0x10
	add r0, r4, r0
	add r1, r4, r5
	bl ovy177_219b8c0
	ldr r0, _0219B034 ; =0x00000748
	add r1, r4, r5
	add r0, r4, r0
	bl ovy177_219b8c0
_0219B014:
	add r0, r4, #0
	bl ovy177_219b0d8
	ldr r5, _0219B038 ; =0x00000B0C
	ldr r0, [r4, r5]
	ldr r0, [r0, #4]
	bl sub_02199B90
	sub r5, #0xd4
	ldr r0, [r4, r5]
	bl sub_0219A9A4
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219B030: .word 0x0000072C
_0219B034: .word 0x00000748
_0219B038: .word 0x00000B0C
	thumb_func_end ovy177_219af70

	thumb_func_start ovy177_219b03c
ovy177_219b03c: ; 0x0219B03C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x5d
	lsl r6, r6, #2
	add r4, r1, #0
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219B0A4 ; =0x0219CA94
	add r0, r7, #0
	bl sub_02046C40
	mov r0, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	add r0, r5, #0
	add r0, #0xcc
	add r1, r7, #0
	add r2, r4, #0
	bl ovy177_219b2fc
	add r0, r5, #0
	add r1, r4, #0
	bl ovy177_219b130
	add r0, r5, #4
	add r1, r4, #0
	bl ovy177_219b428
	add r0, r6, #0
	sub r0, #0x14
	add r0, r5, r0
	add r1, r5, #4
	add r2, r4, #0
	bl ovy177_219c3d4
	ldr r0, _0219B0A8 ; =ovy177_219b11c
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	sub r1, r6, #4
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219B0A4: .word 0x0219CA94
_0219B0A8: .word ovy177_219b11c
	thumb_func_end ovy177_219b03c

	thumb_func_start ovy177_219b0ac
ovy177_219b0ac: ; 0x0219B0AC
	push {r3, r4, r5, lr}
	mov r4, #0x17
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0203A6A8
	sub r4, #0x10
	add r0, r5, r4
	bl sub_0219C400
	add r0, r5, #4
	bl ovy177_219b4c8
	add r0, r5, #0
	bl ovy177_219b2a8
	add r5, #0xcc
	add r0, r5, #0
	bl ovy177_219b3c8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy177_219b0ac

	thumb_func_start ovy177_219b0d8
ovy177_219b0d8: ; 0x0219B0D8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xcc
	bl sub_0219B40C
	add r0, r4, #4
	bl ovy177_219b4f0
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r4, r0
	bl ovy177_219c40c
	add r0, r4, #4
	bl sub_0219B504
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy177_219b0d8

	thumb_func_start sub_0219B0FC
sub_0219B0FC: ; 0x0219B0FC
	ldr r3, _0219B104 ; =sub_0219B41C
	add r0, #0xcc
	bx r3
	nop
	thumb_func_end sub_0219B0FC
_0219B104: .word sub_0219B41C

	thumb_func_start sub_0219B108
sub_0219B108: ; 0x0219B108
	ldr r3, _0219B110 ; =sub_0219B424
	add r0, #0xcc
	bx r3
	nop
	thumb_func_end sub_0219B108
_0219B110: .word sub_0219B424

	thumb_func_start sub_0219B114
sub_0219B114: ; 0x0219B114
	mov r1, #0x16
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0219B114

	thumb_func_start ovy177_219b11c
ovy177_219b11c: ; 0x0219B11C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219B2F4
	add r4, #0xcc
	add r0, r4, #0
	bl sub_0219B414
	pop {r4, pc}
	thumb_func_end ovy177_219b11c

	thumb_func_start ovy177_219b130
ovy177_219b130: ; 0x0219B130
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_020444A4
	add r0, r6, #0
	bl sub_02048080
	ldr r0, _0219B294 ; =0x0219CA0C
	bl sub_02044710
	ldr r7, _0219B298 ; =0x0219CA3C
	mov r4, #0
_0219B14E:
	ldr r1, _0219B29C ; =0x0219CAD0
	lsl r3, r4, #5
	add r1, r1, r3
	lsl r2, r4, #2
	ldr r5, [r7, r2]
	ldr r3, _0219B2A0 ; =0x0219CA58
	lsl r0, r5, #0x18
	ldr r2, [r3, r2]
	lsr r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045708
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r4, r4, #1
	cmp r4, #7
	blt _0219B14E
	mov r0, #0x5d
	add r1, r6, #0
	mov r7, #0x5d
	bl sub_0204AA30
	mov r5, #0
	str r5, [sp]
	str r6, [sp, #4]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r5, [sp]
	add r7, #0xc3
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B0D4
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	mov r7, #2
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #4
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	mov r2, #2
	mov r3, #0
	bl sub_0204ADA8
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #3
	mov r2, #3
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #4
	mov r2, #6
	add r3, r5, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #0x2d
	mov r2, #4
	add r3, r5, #0
	bl sub_0204AF50
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	add r2, r7, #0
	add r3, r5, #0
	str r6, [sp, #8]
	bl sub_0204AF50
	mov r0, #1
	add r1, r6, #0
	bl ovy177_219c820
	mov r0, #5
	add r1, r5, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_02045118
	str r5, [sp]
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #5
	add r3, r5, #0
	str r6, [sp, #4]
	bl sub_0204AE3C
	ldr r1, [sp, #0xc]
	str r0, [r1]
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #8
	str r0, [sp]
	ldr r0, _0219B2A4 ; =0x04000050
	mov r1, #5
	mov r2, #0xc
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B294: .word 0x0219CA0C
_0219B298: .word 0x0219CA3C
_0219B29C: .word 0x0219CAD0
_0219B2A0: .word 0x0219CA58
_0219B2A4: .word 0x04000050
	thumb_func_end ovy177_219b130

	thumb_func_start ovy177_219b2a8
ovy177_219b2a8: ; 0x0219B2A8
	push {r3, r4, r5, lr}
	ldr r1, _0219B2EC ; =0x04000050
	mov r5, #0
	strh r5, [r1]
	ldr r2, [r0]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #5
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r4, _0219B2F0 ; =0x0219CA3C
_0219B2CE:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blt _0219B2CE
	bl sub_020480A8
	bl sub_02044528
	pop {r3, r4, r5, pc}
	nop
_0219B2EC: .word 0x04000050
_0219B2F0: .word 0x0219CA3C
	thumb_func_end ovy177_219b2a8

	thumb_func_start sub_0219B2F4
sub_0219B2F4: ; 0x0219B2F4
	ldr r3, _0219B2F8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219B2F8: .word sub_02045A5C
	thumb_func_end sub_0219B2F4

	thumb_func_start ovy177_219b2fc
ovy177_219b2fc: ; 0x0219B2FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x94
	add r6, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, _0219B3C4 ; =0x02093F08
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r7, #0
	bl sub_0204BF1C
	str r0, [r6]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0x5d
	add r1, r7, #0
	bl sub_0204AA30
	str r7, [sp]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	add r5, r0, #0
	bl sub_0204BBA0
	str r0, [r6, #4]
	str r7, [sp]
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r6, #8]
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #9
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r6, #0xc]
	add r0, r5, #0
	bl sub_0204AB0C
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
_0219B380:
	lsl r0, r4, #2
	add r5, r6, r0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r6, #8]
	ldr r2, [r6, #4]
	ldr r3, [r6, #0xc]
	bl sub_0204C040
	str r0, [r5, #0x10]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl sub_0204C468
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_0204C488
	add r4, r4, #1
	cmp r4, #0x20
	blt _0219B380
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219B3C4: .word 0x02093F08
	thumb_func_end ovy177_219b2fc

	thumb_func_start ovy177_219b3c8
ovy177_219b3c8: ; 0x0219B3C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219B3CE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0219B3DC
	bl sub_0204C108
_0219B3DC:
	add r4, r4, #1
	cmp r4, #0x21
	blt _0219B3CE
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x94
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219b3c8

	thumb_func_start sub_0219B40C
sub_0219B40C: ; 0x0219B40C
	ldr r3, _0219B410 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219B410: .word sub_0204B794
	thumb_func_end sub_0219B40C

	thumb_func_start sub_0219B414
sub_0219B414: ; 0x0219B414
	ldr r3, _0219B418 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219B418: .word sub_0204B7C8
	thumb_func_end sub_0219B414

	thumb_func_start sub_0219B41C
sub_0219B41C: ; 0x0219B41C
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219B41C

	thumb_func_start sub_0219B424
sub_0219B424: ; 0x0219B424
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B424

	thumb_func_start ovy177_219b428
ovy177_219b428: ; 0x0219B428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r7, #0
	add r5, r0, #0
	add r4, r1, #0
	str r7, [sp]
	ldr r0, _0219B4AC ; =ovy177_219b518
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r6, #1
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	lsl r0, r6, #0x11
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r1, #6
	ldr r0, _0219B4B0 ; =0x0219C9E8
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219B4B4 ; =0x0219C9F4
	ldr r2, _0219B4B8 ; =0xFFFE8000
	str r0, [sp, #0x14]
	ldr r0, _0219B4BC ; =0x0219CA00
	ldr r3, _0219B4C0 ; =0xFFFE0000
	str r0, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r0, #2
	lsl r1, r1, #0xe
	bl sub_0204A5C8
	str r0, [r5]
	mov r0, #0x5d
	add r1, r4, #0
	bl sub_0204AA30
	add r6, r0, #0
	ldr r7, _0219B4C4 ; =0x0219C9D8
	add r0, r5, #4
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	str r4, [sp]
	bl ovy177_219b5bc
	add r5, #0x64
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #2
	str r4, [sp]
	bl ovy177_219b5bc
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
	thumb_func_end ovy177_219b428
_0219B4AC: .word ovy177_219b518
_0219B4B0: .word 0x0219C9E8
_0219B4B4: .word 0x0219C9F4
_0219B4B8: .word 0xFFFE8000
_0219B4BC: .word 0x0219CA00
_0219B4C0: .word 0xFFFE0000
_0219B4C4: .word 0x0219C9D8

	thumb_func_start ovy177_219b4c8
ovy177_219b4c8: ; 0x0219B4C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r5, #0
	add r4, r7, #4
	mov r6, #0x60
_0219B4D2:
	add r0, r5, #0
	mul r0, r6
	add r0, r4, r0
	bl ovy177_219b678
	add r5, r5, #1
	cmp r5, #2
	blt _0219B4D2
	ldr r0, [r7]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219b4c8

	thumb_func_start ovy177_219b4f0
ovy177_219b4f0: ; 0x0219B4F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	pop {r4, pc}
	thumb_func_end ovy177_219b4f0

	thumb_func_start sub_0219B504
sub_0219B504: ; 0x0219B504
	ldr r3, _0219B508 ; =sub_02049AA0
	bx r3
	.align 2, 0
_0219B508: .word sub_02049AA0
	thumb_func_end sub_0219B504

	thumb_func_start sub_0219B50C
sub_0219B50C: ; 0x0219B50C
	add r2, r0, #4
	mov r0, #0x60
	mul r0, r1
	add r0, r2, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219B50C

	thumb_func_start ovy177_219b518
ovy177_219b518: ; 0x0219B518
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _0219B5A4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _0219B5A8 ; =0xFFFFCFFD
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
	ldr r2, _0219B5AC ; =0x0000CFEF
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
	ldr r1, _0219B5B0 ; =0xBFFF0000
	ldr r0, _0219B5B4 ; =0x04000580
	str r1, [r0]
	ldr r5, _0219B5B8 ; =0x0219CA74
_0219B586:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _0219B586
	mov r0, #1
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_0219B5A4: .word 0x04000008
_0219B5A8: .word 0xFFFFCFFD
_0219B5AC: .word 0x0000CFEF
_0219B5B0: .word 0xBFFF0000
_0219B5B4: .word 0x04000580
_0219B5B8: .word 0x0219CA74
	thumb_func_end ovy177_219b518

	thumb_func_start ovy177_219b5bc
ovy177_219b5bc: ; 0x0219B5BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0
	mov r2, #0x60
	add r5, r0, #0
	str r3, [sp, #8]
	mov r6, #0
	blx MI_CpuFill8
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldrh r1, [r1]
	bl sub_02049384
	mov r1, #2
	str r0, [r5]
	bl sub_02049434
	cmp r0, #0
	beq _0219B5F0
	ldr r6, [r5]
	add r0, r6, #0
	bl sub_020494AC
_0219B5F0:
	ldr r0, [r5]
	mov r1, #1
	bl sub_02049434
	cmp r0, #0
	beq _0219B660
	ldr r0, [r5]
	mov r1, #0
	add r2, r6, #0
	mov r4, #0
	bl sub_0204972C
	str r0, [r5, #0xc]
	bl sub_02049808
	str r0, [sp, #0xc]
	add r6, r4, #0
_0219B612:
	ldr r1, [sp, #4]
	lsl r2, r4, #1
	add r1, r1, r2
	lsl r0, r4, #2
	add r7, r5, r0
	ldrh r1, [r1, #2]
	ldr r0, [sp]
	bl sub_02049384
	add r1, r0, #0
	str r1, [r7, #4]
	ldr r0, [r5, #0xc]
	add r2, r6, #0
	bl sub_0204980C
	add r4, r4, #1
	str r0, [r7, #0x14]
	cmp r4, #2
	blt _0219B612
	add r1, r5, #0
	ldr r0, [r5, #0xc]
	add r1, #0x14
	mov r2, #2
	bl sub_020498B8
	str r0, [r5, #0x10]
_0219B646:
	lsl r1, r6, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0x10
	bl sub_02049974
	add r6, r6, #1
	cmp r6, #2
	blt _0219B646
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [r0, #4]
	bl sub_020683EC
_0219B660:
	add r0, r5, #0
	add r0, #0x34
	blx MTX_Identity33_
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219b5bc

	thumb_func_start ovy177_219b678
ovy177_219b678: ; 0x0219B678
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02049934
	mov r5, #0
_0219B684:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0219B692
	bl sub_02049888
_0219B692:
	add r5, r5, #1
	cmp r5, #2
	blt _0219B684
	ldr r0, [r4, #0xc]
	bl sub_020497D4
	mov r5, #0
_0219B6A0:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl sub_02049404
	add r5, r5, #1
	cmp r5, #2
	blt _0219B6A0
	ldr r0, [r4]
	bl sub_02049404
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x60
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219b678

	thumb_func_start ovy177_219b6c4
ovy177_219b6c4: ; 0x0219B6C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	cmp r0, #0
	beq _0219B708
	mov r6, #1
	mov r4, #0
	lsl r6, r6, #0xc
_0219B6D6:
	lsl r1, r4, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_02049A64
	add r4, r4, #1
	cmp r4, #2
	blt _0219B6D6
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, sp, #0
	mov r4, #0
	bl sub_020499CC
	ldr r0, [sp]
	cmp r0, #0
	bne _0219B6FC
	mov r4, #1
_0219B6FC:
	str r4, [r5, #0x5c]
	ldr r0, [r5, #0x10]
	add r5, #0x1c
	add r1, r5, #0
	bl sub_02049B5C
_0219B708:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy177_219b6c4

	thumb_func_start sub_0219B70C
sub_0219B70C: ; 0x0219B70C
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_0219B70C

	thumb_func_start sub_0219B710
sub_0219B710: ; 0x0219B710
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end sub_0219B710

	thumb_func_start ovy177_219b720
ovy177_219b720: ; 0x0219B720
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r1, #0
	cmp r0, r4
	beq _0219B736
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_020499B4
	str r4, [r5, #0x58]
_0219B736:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy177_219b720

	thumb_func_start sub_0219B738
sub_0219B738: ; 0x0219B738
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end sub_0219B738

	thumb_func_start ovy177_219b73c
ovy177_219b73c: ; 0x0219B73C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	bl sub_020232D0
	cmp r6, #0
	bne _0219B766
	mov r0, #0x17
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	str r4, [sp]
	bl sub_02022D58
	str r0, [r5]
_0219B766:
	add r0, r4, #0
	bl sub_02021998
	str r0, [r5, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0x38
	add r3, r4, #0
	bl sub_0204875C
	str r0, [r5, #4]
	add r0, r4, #0
	bl sub_020241D4
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219b73c

	thumb_func_start ovy177_219b788
ovy177_219b788: ; 0x0219B788
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02024274
	ldr r0, [r4, #4]
	bl sub_020487D4
	ldr r0, [r4, #8]
	bl sub_02021A18
	ldr r0, [r4]
	bl sub_02022DA8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy177_219b788

	thumb_func_start sub_0219B7B0
sub_0219B7B0: ; 0x0219B7B0
	ldr r0, [r0, #8]
	ldr r3, _0219B7B8 ; =sub_02021A3C
	bx r3
	nop
_0219B7B8: .word sub_02021A3C
	thumb_func_end sub_0219B7B0

	thumb_func_start sub_0219B7BC
sub_0219B7BC: ; 0x0219B7BC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219B7BC

	thumb_func_start sub_0219B7C0
sub_0219B7C0: ; 0x0219B7C0
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0219B7C0

	thumb_func_start sub_0219B7C4
sub_0219B7C4: ; 0x0219B7C4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219B7C4

	thumb_func_start sub_0219B7C8
sub_0219B7C8: ; 0x0219B7C8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219B7C8

	thumb_func_start ovy177_219b7cc
ovy177_219b7cc: ; 0x0219B7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx MI_CpuFill8
	mov r0, #0xf
	add r4, sp, #0x28
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #4]
	add r1, r7, #0
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrb r3, [r4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020480C0
	str r0, [r5]
	ldrh r1, [r4, #0xc]
	mov r0, #0xff
	bl sub_02048530
	str r0, [r5, #0xc]
	ldr r0, [r5]
	str r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #8]
	add r0, r5, #0
	bl ovy177_219badc
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy177_219b7cc

	thumb_func_start ovy177_219b834
ovy177_219b834: ; 0x0219B834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x14
	add r5, r0, #0
	str r3, [sp, #0xc]
	blx MI_CpuFill8
	add r4, sp, #0x28
	ldrh r0, [r4, #0xc]
	add r1, r7, #0
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #4]
	str r0, [sp]
	ldrb r0, [r4, #8]
	str r0, [sp, #4]
	ldrb r0, [r4, #0x10]
	str r0, [sp, #8]
	ldrb r3, [r4]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl sub_020480C0
	str r0, [r5]
	ldrh r1, [r4, #0x14]
	mov r0, #0xff
	bl sub_02048530
	str r0, [r5, #0xc]
	ldr r0, [r5]
	mov r1, #0
	str r0, [r5, #4]
	strb r1, [r5, #8]
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r4, [r5]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy177_219b834

	thumb_func_start ovy177_219b8a4
ovy177_219b8a4: ; 0x0219B8A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02048564
	ldr r0, [r4]
	bl sub_02048210
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy177_219b8a4

	thumb_func_start ovy177_219b8c0
ovy177_219b8c0: ; 0x0219B8C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #8]
	ldr r4, [r1, #8]
	cmp r0, #0
	beq _0219B8E8
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B8E8
	ldr r0, [r5, #4]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, #8]
_0219B8E8:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0219B8F2
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219B8F2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219b8c0

	thumb_func_start ovy177_219b8f8
ovy177_219b8f8: ; 0x0219B8F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_0219B7C4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0219B7C0
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0219B7BC
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_020484F4
	ldrh r1, [r4, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r2, [r4, #0xc]
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	bl sub_02021C44
	ldr r0, [r4, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	add r5, sp, #0x28
	mov r3, #0
	ldrsh r3, [r5, r3]
	add r0, r7, #0
	asr r2, r2, #0x10
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219b8f8

	thumb_func_start ovy177_219b964
ovy177_219b964: ; 0x0219B964
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0219B7C4
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0219B7C0
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0219B7BC
	add r7, r0, #0
	ldr r0, [r5]
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5]
	bl sub_020484D8
	lsl r0, r0, #0x12
	lsr r6, r0, #0x10
	ldr r0, [r5]
	bl sub_020484DC
	lsl r0, r0, #0x12
	lsr r4, r0, #0x10
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x10]
	bl sub_02021C44
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, _0219BA08 ; =0x00003DC4
	str r7, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219BA08: .word 0x00003DC4
	thumb_func_end ovy177_219b964

	thumb_func_start ovy177_219ba0c
ovy177_219ba0c: ; 0x0219BA0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r2, [sp, #8]
	add r6, r3, #0
	bl sub_020484F4
	ldrh r1, [r5, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	add r0, r4, #0
	bl sub_0219B7C8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0219B7C4
	add r6, #0xc
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_020245A8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_0204898C
	add r6, r0, #0
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_02024920
	add r0, r6, #0
	bl sub_02048564
	add r0, r4, #0
	bl sub_0219B7C0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219B7BC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02021C44
	ldr r0, [r5, #4]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r4, sp, #0x28
	mov r3, #4
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r6, #0
	bl sub_02021C54
	mov r0, #1
	strb r0, [r5, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219ba0c

	thumb_func_start ovy177_219ba9c
ovy177_219ba9c: ; 0x0219BA9C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r3, _0219BAD8 ; =0x00000B0C
	ldr r3, [r1, r3]
	ldr r4, [r3]
	cmp r4, #0
	beq _0219BAC4
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r4, #0x37
	str r4, [sp, #8]
	mov r4, #0x5d
	lsl r4, r4, #2
	ldr r3, [r3, #8]
	add r1, r1, r4
	bl ovy177_219ba0c
	add sp, #0xc
	pop {r3, r4, pc}
_0219BAC4:
	mov r4, #0x5d
	lsl r4, r4, #2
	mov r3, #0
	add r1, r1, r4
	str r3, [sp]
	bl ovy177_219b8f8
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0219BAD8: .word 0x00000B0C
	thumb_func_end ovy177_219ba9c

	thumb_func_start ovy177_219badc
ovy177_219badc: ; 0x0219BADC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_020484F4
	ldrh r1, [r4, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4]
	bl sub_02048244
	pop {r4, pc}
	thumb_func_end ovy177_219badc

	thumb_func_start sub_0219BAF8
sub_0219BAF8: ; 0x0219BAF8
	ldr r2, _0219BB04 ; =0x00000728
	mov r3, #0
	str r1, [r0, r2]
	add r1, r2, #4
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
_0219BB04: .word 0x00000728
	thumb_func_end sub_0219BAF8

	thumb_func_start sub_0219BB08
sub_0219BB08: ; 0x0219BB08
	ldr r3, _0219BB14 ; =0x00000728
	str r1, [r0, r3]
	add r1, r3, #4
	strh r2, [r0, r1]
	bx lr
	nop
_0219BB14: .word 0x00000728
	thumb_func_end sub_0219BB08

	thumb_func_start sub_0219BB18
sub_0219BB18: ; 0x0219BB18
	mov r1, #0x73
	mov r2, #1
	lsl r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219BB18

	thumb_func_start ovy177_219bb24
ovy177_219bb24: ; 0x0219BB24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _0219BD18 ; =0x00000A3C
	add r5, r0, #0
	sub r0, r4, #4
	ldr r0, [r5, r0]
	str r1, [sp, #0xc]
	add r6, r5, r4
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BB4C
	add r4, #0xd0
	ldr r0, [r5, r4]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_0219BB18
	b _0219BCFC
_0219BB4C:
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0219AA3C
	cmp r0, #0
	bne _0219BB64
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0219BB66
	cmp r0, #1
	beq _0219BBF6
_0219BB64:
	b _0219BCFC
_0219BB66:
	add r0, r4, #0
	add r0, #0x10
	add r0, r5, r0
	bl sub_0219C9D4
	cmp r0, #0
	beq _0219BB86
	mov r1, #0x61
	lsl r1, r1, #2
	mov r3, #0
	add r0, r5, r1
	sub r1, #0x10
	str r3, [sp]
	add r1, r5, r1
	mov r2, #0x11
	b _0219BBBC
_0219BB86:
	add r4, #0xd0
	ldr r3, [r5, r4]
	ldr r0, [r3]
	cmp r0, #0
	beq _0219BBAC
	mov r2, #0
	str r2, [sp]
	mov r1, #0x61
	str r2, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	ldr r3, [r3, #8]
	add r1, r5, r1
	bl ovy177_219ba0c
	b _0219BBC0
_0219BBAC:
	mov r1, #0x61
	lsl r1, r1, #2
	mov r2, #0
	add r0, r5, r1
	sub r1, #0x10
	str r2, [sp]
	add r1, r5, r1
	mov r3, #0
_0219BBBC:
	bl ovy177_219b8f8
_0219BBC0:
	add r0, r5, #0
	bl sub_0219B114
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0219BBCC:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0219C460
	add r4, r4, #1
	cmp r4, #2
	blt _0219BBCC
	bl sub_02006280
	mov r0, #1
	mov r1, #0x37
	mov r4, #1
	bl ovy177_219c820
	mov r0, #0x1d
	lsl r0, r0, #6
	str r7, [r5, r0]
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	b _0219BCFC
_0219BBF6:
	ldr r0, _0219BD1C ; =0x0219CA1C
	add r1, r6, #0
	bl ovy177_219c514
	cmp r0, #0
	beq _0219BCB6
	mov r0, #0
	mov r1, #0x37
	mov r7, #0
	bl ovy177_219c820
	mov r0, #0x1d
	lsl r0, r0, #6
	str r0, [sp, #0x14]
	str r7, [r5, r0]
	add r0, r0, #4
	str r7, [r5, r0]
	add r0, r5, #0
	bl sub_0219B114
	str r0, [sp, #0x10]
	mov r1, #0
	mov r2, #1
	bl sub_0219C460
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	mov r1, #0
	bl ovy177_219c470
	ldr r0, [sp, #0x14]
	sub r0, #0xef
	str r0, [sp, #0x14]
	bl sub_02006254
	add r0, r4, #0
	add r0, #0x10
	add r0, r5, r0
	bl sub_0219C9D4
	cmp r0, #0
	beq _0219BC74
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	mov r2, #2
	add r3, r7, #0
	str r7, [sp]
	bl ovy177_219b8f8
	mov r0, #3
	mov r1, #0x37
	bl ovy177_219c820
	ldr r1, _0219BD20 ; =ovy177_219bd2c
	add r0, r5, #0
	mov r2, #1
	bl sub_0219BB08
	b _0219BCFC
_0219BC74:
	add r4, #0xd0
	ldr r3, [r5, r4]
	ldr r0, [r3]
	cmp r0, #0
	str r7, [sp]
	beq _0219BC9A
	mov r1, #0x61
	str r7, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	ldr r3, [r3, #8]
	add r1, r5, r1
	mov r2, #1
	bl ovy177_219ba0c
	b _0219BCAC
_0219BC9A:
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	mov r2, #1
	add r3, r7, #0
	bl ovy177_219b8f8
_0219BCAC:
	ldr r1, _0219BD20 ; =ovy177_219bd2c
	add r0, r5, #0
	bl sub_0219BAF8
	b _0219BCFC
_0219BCB6:
	add r4, #0x10
	add r0, r5, r4
	bl sub_0219C9D4
	cmp r0, #0
	bne _0219BCFC
	mov r1, #0x1d
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	add r0, r2, #1
	str r0, [r5, r1]
	cmp r2, #0xb4
	blo _0219BCFC
	mov r2, #0
	str r2, [r5, r1]
	add r0, r1, #4
	ldr r3, [r5, r0]
	mov r0, #1
	eor r3, r0
	add r0, r1, #4
	str r3, [r5, r0]
	cmp r3, #0
	beq _0219BCF0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0xb
	b _0219BCF8
_0219BCF0:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
_0219BCF8:
	bl ovy177_219ba9c
_0219BCFC:
	ldr r0, _0219BD24 ; =0x00000B0C
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219BD12
	ldr r1, _0219BD28 ; =ovy177_219c204
	add r0, r5, #0
	bl sub_0219BAF8
_0219BD12:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BD18: .word 0x00000A3C
_0219BD1C: .word 0x0219CA1C
_0219BD20: .word ovy177_219bd2c
_0219BD24: .word 0x00000B0C
_0219BD28: .word ovy177_219c204
	thumb_func_end ovy177_219bb24

	thumb_func_start ovy177_219bd2c
ovy177_219bd2c: ; 0x0219BD2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _0219BEC4 ; =0x00000A44
	add r5, r0, #0
	add r0, r5, r6
	str r0, [sp, #0xc]
	add r0, r6, #0
	sub r0, #0xc
	add r7, r6, #0
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r7, #8
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BD5C
	add r6, #0xc8
	ldr r0, [r5, r6]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_0219BB18
	b _0219BEA8
_0219BD5C:
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0219AA3C
	cmp r0, #0
	bne _0219BD7A
	ldrh r0, [r4]
	cmp r0, #0
	beq _0219BD7C
	cmp r0, #1
	beq _0219BE0C
	cmp r0, #2
	bne _0219BD7A
	b _0219BE98
_0219BD7A:
	b _0219BEA8
_0219BD7C:
	ldr r6, _0219BEC8 ; =0x0219CA1C
	add r1, sp, #0x10
	add r0, r6, #0
	bl ovy177_219c55c
	cmp r0, #0
	beq _0219BDD4
	add r0, r5, r7
	add r1, r6, #0
	bl ovy177_219c974
	cmp r0, #0
	beq _0219BDB6
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	mov r3, #0
	add r1, r5, r1
	mov r2, #2
	str r3, [sp]
	bl ovy177_219b8f8
	mov r0, #3
	mov r1, #0x37
	bl ovy177_219c820
	mov r0, #1
	strh r0, [r4]
_0219BDB6:
	add r0, r5, #0
	bl sub_0219B114
	mov r1, #0
	mov r2, #1
	add r4, r0, #0
	bl sub_0219C460
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0
	bl ovy177_219c470
	b _0219BEA8
_0219BDD4:
	add r0, r5, r7
	bl sub_0219C9D4
	cmp r0, #0
	beq _0219BE00
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	mov r3, #0
	add r1, r5, r1
	mov r2, #2
	str r3, [sp]
	bl ovy177_219b8f8
	mov r0, #3
	mov r1, #0x37
	bl ovy177_219c820
	mov r0, #1
	strh r0, [r4]
	b _0219BE06
_0219BE00:
	add r0, r5, r7
	bl sub_0219C968
_0219BE06:
	mov r0, #2
	strh r0, [r4]
	b _0219BEA8
_0219BE0C:
	ldr r0, _0219BECC ; =0x0219CA2C
	ldr r1, [sp, #0xc]
	bl ovy177_219c55c
	cmp r0, #0
	beq _0219BE8A
	mov r0, #0
	mov r1, #0x37
	mov r4, #0
	mov r7, #0x37
	bl ovy177_219c820
	add r6, #0xc8
	ldr r3, [r5, r6]
	ldr r0, [r3]
	cmp r0, #0
	str r4, [sp]
	beq _0219BE48
	str r4, [sp, #4]
	mov r1, #0x61
	str r7, [sp, #8]
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	ldr r3, [r3, #8]
	add r1, r5, r1
	mov r2, #1
	bl ovy177_219ba0c
	b _0219BE5A
_0219BE48:
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	mov r2, #1
	add r3, r4, #0
	bl ovy177_219b8f8
_0219BE5A:
	ldr r1, _0219BED0 ; =ovy177_219bee8
	add r0, r5, #0
	bl sub_0219BAF8
	add r0, r5, #0
	bl sub_0219B114
	mov r1, #1
	mov r2, #1
	add r4, r0, #0
	bl sub_0219C460
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0xc]
	ldr r2, [r2]
	ldr r3, [r3, #4]
	add r0, r4, #0
	mov r1, #1
	bl ovy177_219c470
	ldr r0, _0219BED4 ; =0x00000656
	bl sub_02006254
	b _0219BEA8
_0219BE8A:
	ldr r0, _0219BEC8 ; =0x0219CA1C
	add r1, sp, #0x10
	bl ovy177_219c55c
	cmp r0, #0
	bne _0219BEA8
	b _0219BE06
_0219BE98:
	ldr r0, _0219BED8 ; =0x00000738
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r1, _0219BEDC ; =ovy177_219bb24
	add r0, r5, #0
	bl sub_0219BAF8
_0219BEA8:
	ldr r0, _0219BEE0 ; =0x00000B0C
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219BEBE
	ldr r1, _0219BEE4 ; =ovy177_219c204
	add r0, r5, #0
	bl sub_0219BAF8
_0219BEBE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BEC4: .word 0x00000A44
_0219BEC8: .word 0x0219CA1C
_0219BECC: .word 0x0219CA2C
_0219BED0: .word ovy177_219bee8
_0219BED4: .word 0x00000656
_0219BED8: .word 0x00000738
_0219BEDC: .word ovy177_219bb24
_0219BEE0: .word 0x00000B0C
_0219BEE4: .word ovy177_219c204
	thumb_func_end ovy177_219bd2c

	thumb_func_start ovy177_219bee8
ovy177_219bee8: ; 0x0219BEE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0219BFC8 ; =0x00000AAC
	add r5, r0, #0
	add r0, r4, #0
	sub r0, #0x74
	ldr r0, [r5, r0]
	add r6, r1, #0
	bl sub_0219AA10
	cmp r0, #1
	bne _0219BF10
	add r4, #0x60
	ldr r0, [r5, r4]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	bl sub_0219BB18
	b _0219BFAE
_0219BF10:
	add r0, r4, #0
	sub r0, #0x74
	ldr r0, [r5, r0]
	bl sub_0219AA3C
	cmp r0, #0
	bne _0219BFAE
	ldrh r0, [r6]
	cmp r0, #0
	beq _0219BF2A
	cmp r0, #1
	beq _0219BF9E
	b _0219BFAE
_0219BF2A:
	ldr r7, _0219BFCC ; =0x0219CA2C
	add r1, sp, #4
	add r0, r7, #0
	bl ovy177_219c55c
	cmp r0, #0
	beq _0219BF84
	add r0, r5, r4
	add r1, r7, #0
	bl ovy177_219c974
	cmp r0, #0
	beq _0219BF66
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x10
	mov r3, #0
	add r1, r5, r1
	mov r2, #3
	str r3, [sp]
	bl ovy177_219b8f8
	ldr r0, _0219BFD0 ; =0x00000654
	bl sub_02006254
	ldr r1, _0219BFD4 ; =ovy177_219bfe8
	add r0, r5, #0
	bl sub_0219BAF8
_0219BF66:
	add r0, r5, #0
	bl sub_0219B114
	mov r1, #1
	mov r2, #1
	add r4, r0, #0
	bl sub_0219C460
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl ovy177_219c470
	b _0219BFAE
_0219BF84:
	add r0, r5, #0
	bl sub_0219B114
	mov r1, #1
	mov r2, #0
	mov r7, #1
	bl sub_0219C460
	add r0, r5, r4
	bl sub_0219C968
	strh r7, [r6]
	b _0219BFAE
_0219BF9E:
	ldr r0, _0219BFD8 ; =0x00000738
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r1, _0219BFDC ; =ovy177_219bb24
	add r0, r5, #0
	bl sub_0219BAF8
_0219BFAE:
	ldr r0, _0219BFE0 ; =0x00000B0C
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219BFC4
	ldr r1, _0219BFE4 ; =ovy177_219c204
	add r0, r5, #0
	bl sub_0219BAF8
_0219BFC4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219BFC8: .word 0x00000AAC
_0219BFCC: .word 0x0219CA2C
_0219BFD0: .word 0x00000654
_0219BFD4: .word ovy177_219bfe8
_0219BFD8: .word 0x00000738
_0219BFDC: .word ovy177_219bb24
_0219BFE0: .word 0x00000B0C
_0219BFE4: .word ovy177_219c204
	thumb_func_end ovy177_219bee8

	thumb_func_start ovy177_219bfe8
ovy177_219bfe8: ; 0x0219BFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1b4
	add r5, r1, #0
	add r4, r0, #0
	ldrh r0, [r5]
	cmp r0, #5
	bhs _0219C014
	ldr r6, _0219C1E0 ; =0x00000A38
	ldr r0, [r4, r6]
	bl sub_0219AA10
	cmp r0, #1
	bne _0219C014
	add r6, #0xd4
	ldr r0, [r4, r6]
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r4, #0
	bl sub_0219BB18
	add sp, #0x1b4
	pop {r4, r5, r6, r7, pc}
_0219C014:
	ldrh r0, [r5]
	cmp r0, #7
	bhi _0219C046
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219C026: ; jump table
	.short _0219C036 - _0219C026 - 2 ; case 0
	.short _0219C04E - _0219C026 - 2 ; case 1
	.short _0219C066 - _0219C026 - 2 ; case 2
	.short _0219C0F0 - _0219C026 - 2 ; case 3
	.short _0219C10C - _0219C026 - 2 ; case 4
	.short _0219C12C - _0219C026 - 2 ; case 5
	.short _0219C15A - _0219C026 - 2 ; case 6
	.short _0219C19E - _0219C026 - 2 ; case 7
_0219C036:
	ldr r0, _0219C1E4 ; =0x00000B0C
	mov r1, #4
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	bne _0219C048
_0219C046:
	b _0219C1A8
_0219C048:
	mov r0, #1
_0219C04A:
	strh r0, [r5]
	b _0219C1A8
_0219C04E:
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x10
	mov r3, #0
	add r1, r4, r1
	mov r2, #4
	str r3, [sp]
	bl ovy177_219b8f8
	mov r0, #2
	b _0219C04A
_0219C066:
	ldr r1, _0219C1E8 ; =0x00000A3C
	add r3, sp, #0xec
	add r0, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	str r0, [sp, #0xe0]
	add r0, r1, #0
	add r0, #8
	str r2, [sp, #0xdc]
	ldr r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r1, #0x10
	str r2, [sp, #0xe4]
	str r0, [sp, #0xe8]
	add r6, r4, r1
	mov r2, #0xc
_0219C08A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219C08A
	ldr r0, _0219C1EC ; =0x00000AAC
	add r3, sp, #0x14c
	add r6, r4, r0
	mov r2, #0xc
_0219C09A:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219C09A
	ldr r0, _0219C1F0 ; =0x00000738
	ldr r7, _0219C1E4 ; =0x00000B0C
	ldr r0, [r4, r0]
	str r0, [sp, #0x1ac]
	ldr r0, [r4, r7]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219C0DE
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200AFBC
	add r6, r0, #0
	ldr r0, [r4, r7]
	ldr r0, [r0, #8]
	add r0, #0xc
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0200B0F0
	cmp r0, #0
	bne _0219C0DA
	mov r0, #1
	b _0219C0DC
_0219C0DA:
	mov r0, #0
_0219C0DC:
	str r0, [sp, #0x1b0]
_0219C0DE:
	ldr r0, _0219C1F4 ; =0x0000075C
	add r1, sp, #0xdc
	add r0, r4, r0
	bl ovy177_219c2f8
	cmp r0, #0
	beq _0219C1A8
	mov r0, #3
	b _0219C04A
_0219C0F0:
	ldr r6, _0219C1E4 ; =0x00000B0C
	mov r1, #3
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199B8C
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199BE4
	cmp r0, #0
	beq _0219C1A8
	mov r0, #4
	b _0219C04A
_0219C10C:
	ldr r6, _0219C1E4 ; =0x00000B0C
	mov r1, #5
	ldr r0, [r4, r6]
	mov r7, #5
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219C1A8
	sub r6, #0xd4
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_0219AA60
	strh r7, [r5]
	b _0219C1A8
_0219C12C:
	ldr r6, _0219C1F8 ; =0x0000072E
	ldrh r0, [r4, r6]
	cmp r0, #0x3c
	blo _0219C1A8
	add r0, r6, #0
	sub r0, #0xe3
	bl sub_02006254
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x10
	mov r7, #0
	add r1, r4, r1
	mov r2, #5
	mov r3, #0
	str r7, [sp]
	bl ovy177_219b8f8
	add r6, #0xe
	str r7, [r4, r6]
	mov r0, #6
	b _0219C04A
_0219C15A:
	ldr r7, _0219C1FC ; =0x0000073C
	ldr r1, [r4, r7]
	add r0, r1, #1
	str r0, [r4, r7]
	cmp r1, #0x1e
	blo _0219C1DA
	add r0, r4, #0
	bl ovy177_219c5a4
	ldr r6, _0219C1E4 ; =0x00000B0C
	ldr r1, [r4, r6]
	strb r0, [r1, #0x10]
	add r0, r7, #0
	add r0, #0x20
	add r0, r4, r0
	add r1, sp, #4
	bl ovy177_219c380
	sub r0, r7, #4
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xd4]
	add r1, r1, r0
	ldr r0, [r4, r6]
	strb r1, [r0, #0x11]
	ldr r1, [sp, #0xd8]
	ldr r0, [r4, r6]
	add sp, #0x1b4
	strb r1, [r0, #0x12]
	ldr r0, [r4, r6]
	mov r1, #0
	str r1, [r0, #0xc]
	mov r0, #7
	strh r0, [r5]
	pop {r4, r5, r6, r7, pc}
_0219C19E:
	add r0, r4, #0
	bl sub_0219BB18
	add sp, #0x1b4
	pop {r4, r5, r6, r7, pc}
_0219C1A8:
	ldrh r0, [r5]
	cmp r0, #3
	bhs _0219C1C4
	ldr r0, _0219C1E4 ; =0x00000B0C
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	beq _0219C1C4
	ldr r1, _0219C200 ; =ovy177_219c204
	add r0, r4, #0
	bl sub_0219BAF8
_0219C1C4:
	ldrh r0, [r5]
	cmp r0, #1
	blo _0219C1DA
	cmp r0, #5
	bhi _0219C1DA
	ldr r0, _0219C1F8 ; =0x0000072E
	ldrh r1, [r4, r0]
	cmp r1, #0x3c
	bhi _0219C1DA
	add r1, r1, #1
	strh r1, [r4, r0]
_0219C1DA:
	add sp, #0x1b4
	pop {r4, r5, r6, r7, pc}
	nop
_0219C1E0: .word 0x00000A38
_0219C1E4: .word 0x00000B0C
_0219C1E8: .word 0x00000A3C
_0219C1EC: .word 0x00000AAC
_0219C1F0: .word 0x00000738
_0219C1F4: .word 0x0000075C
_0219C1F8: .word 0x0000072E
_0219C1FC: .word 0x0000073C
_0219C200: .word ovy177_219c204
	thumb_func_end ovy177_219bfe8

	thumb_func_start ovy177_219c204
ovy177_219c204: ; 0x0219C204
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldrh r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _0219C2AC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219C21E: ; jump table
	.short _0219C228 - _0219C21E - 2 ; case 0
	.short _0219C260 - _0219C21E - 2 ; case 1
	.short _0219C274 - _0219C21E - 2 ; case 2
	.short _0219C290 - _0219C21E - 2 ; case 3
	.short _0219C2A8 - _0219C21E - 2 ; case 4
_0219C228:
	ldr r6, _0219C2B0 ; =0x00000B0C
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	ble _0219C23E
	mov r0, #1
	add sp, #4
	strh r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219C23E:
	ldr r0, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_02199C40
	cmp r0, #0
	bge _0219C2AC
	ldr r0, [r4, r6]
	mov r1, #0
	strb r1, [r0, #0x10]
	ldr r0, [r4, r6]
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r4, #0
	bl sub_0219BB18
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0219C260:
	ldr r0, _0219C2B0 ; =0x00000B0C
	mov r2, #0
	ldr r1, [r4, r0]
	add sp, #4
	strb r2, [r1, #0x10]
	ldr r0, [r4, r0]
	mov r1, #2
	str r1, [r0, #0xc]
	strh r1, [r5]
	pop {r3, r4, r5, r6, pc}
_0219C274:
	mov r1, #0x61
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x10
	mov r3, #0
	add r1, r4, r1
	mov r2, #6
	str r3, [sp]
	bl ovy177_219b8f8
	mov r0, #3
	add sp, #4
	strh r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219C290:
	ldr r0, _0219C2B0 ; =0x00000B0C
	mov r1, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #4]
	bl sub_02199ACC
	cmp r0, #0
	beq _0219C2AC
	mov r0, #4
	add sp, #4
	strh r0, [r5]
	pop {r3, r4, r5, r6, pc}
_0219C2A8:
	bl sub_0219BB18
_0219C2AC:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219C2B0: .word 0x00000B0C
	thumb_func_end ovy177_219c204

	thumb_func_start ovy177_219c2b4
ovy177_219c2b4: ; 0x0219C2B4
	push {r3, r4, r5, lr}
	mov r2, #0xa5
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	blx MI_CpuFill8
	mov r1, #0xe
	str r4, [r5]
	ldr r2, _0219C2D8 ; =0x0219C9E0
	add r0, r4, #0
	lsl r1, r1, #8
	mov r3, #1
	str r5, [sp]
	bl sub_02199CB0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219C2D8: .word 0x0219C9E0
	thumb_func_end ovy177_219c2b4

	thumb_func_start ovy177_219c2dc
ovy177_219c2dc: ; 0x0219C2DC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xe
	ldr r0, [r4]
	lsl r1, r1, #8
	bl sub_02199CC8
	mov r2, #0xa5
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy177_219c2dc

	thumb_func_start ovy177_219c2f8
ovy177_219c2f8: ; 0x0219C2F8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r2, r1, #0
	cmp r0, #0
	beq _0219C310
	cmp r0, #1
	beq _0219C326
	cmp r0, #2
	beq _0219C362
	b _0219C378
_0219C310:
	mov r0, #0x6e
	lsl r0, r0, #2
	add r5, r4, r0
	mov r3, #0x1b
_0219C318:
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0219C318
	mov r0, #1
_0219C322:
	str r0, [r4, #4]
	b _0219C378
_0219C326:
	bl sub_02040440
	bl sub_02042A6C
	cmp r0, #0
	bne _0219C336
	mov r0, #1
	b _0219C338
_0219C336:
	mov r0, #0
_0219C338:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	mov r3, #0xd8
	str r0, [sp, #0xc]
	mov r1, #0xe
	add r3, #0xe0
	ldr r0, [r4]
	lsl r1, r1, #8
	mov r2, #0xd8
	add r3, r4, r3
	bl sub_02199C78
	cmp r0, #0
	beq _0219C378
	mov r0, #2
	b _0219C322
_0219C362:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0219C378
	mov r1, #0
	str r1, [r4, r0]
	add sp, #0x10
	str r1, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219C378:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219c2f8

	thumb_func_start ovy177_219c380
ovy177_219c380: ; 0x0219C380
	push {r3, r4}
	add r3, r0, #0
	add r4, r1, #0
	add r3, #8
	mov r2, #0x1b
_0219C38A:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0219C38A
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy177_219c380

	thumb_func_start ovy177_219c398
ovy177_219c398: ; 0x0219C398
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0219C3B8
	bl sub_0203FFC4
	cmp r5, r0
	beq _0219C3B8
	mov r0, #0x29
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_0219C3B8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219c398

	thumb_func_start ovy177_219c3bc
ovy177_219c3bc: ; 0x0219C3BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203FFC4
	cmp r5, r0
	bne _0219C3CE
	add r4, #0xe0
	b _0219C3D0
_0219C3CE:
	add r4, #8
_0219C3D0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy177_219c3bc

	thumb_func_start ovy177_219c3d4
ovy177_219c3d4: ; 0x0219C3D4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0
	mov r2, #0x10
	add r6, r0, #0
	mov r5, #0
	blx MI_CpuFill8
_0219C3E4:
	lsl r1, r5, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	lsl r4, r5, #2
	bl sub_0219B50C
	mov r1, #0
	str r0, [r6, r4]
	bl ovy177_219b720
	add r5, r5, #1
	cmp r5, #2
	blt _0219C3E4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy177_219c3d4

	thumb_func_start sub_0219C400
sub_0219C400: ; 0x0219C400
	ldr r3, _0219C408 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_0219C408: .word MI_CpuFill8
	thumb_func_end sub_0219C400

	thumb_func_start ovy177_219c40c
ovy177_219c40c: ; 0x0219C40C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219C412:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl ovy177_219b6c4
	add r4, r4, #1
	cmp r4, #2
	blt _0219C412
	ldr r0, [r5]
	bl sub_0219B738
	cmp r0, #0
	beq _0219C43A
	ldr r0, [r5]
	bl sub_0219B70C
	cmp r0, #0
	beq _0219C43A
	ldr r0, _0219C458 ; =0x00000651
	bl sub_02006254
_0219C43A:
	ldr r0, [r5, #4]
	bl sub_0219B738
	cmp r0, #0
	beq _0219C454
	ldr r0, [r5, #4]
	bl sub_0219B70C
	cmp r0, #0
	beq _0219C454
	ldr r0, _0219C45C ; =0x00000656
	bl sub_02006254
_0219C454:
	pop {r3, r4, r5, pc}
	nop
_0219C458: .word 0x00000651
_0219C45C: .word 0x00000656
	thumb_func_end ovy177_219c40c

	thumb_func_start sub_0219C460
sub_0219C460: ; 0x0219C460
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219C46C ; =ovy177_219b720
	add r1, r2, #0
	bx r3
	nop
_0219C46C: .word ovy177_219b720
	thumb_func_end sub_0219C460

	thumb_func_start ovy177_219c470
ovy177_219c470: ; 0x0219C470
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _0219C488
	cmp r4, #1
	beq _0219C4C6
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0219C488:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl sub_02067FA0
	add r0, sp, #0xc
	add r1, sp, #0x18
	add r2, sp, #0
	bl VEC_Subtract
	add r0, sp, #0
	add r1, r0, #0
	blx VEC_Normalize
	mov r0, #1
	add r2, sp, #0x18
	lsl r0, r0, #0x12
	add r1, sp, #0
	add r3, r2, #0
	blx VEC_MultAdd
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x18
	bl sub_0219B710
	add sp, #0x24
	str r6, [r5, #8]
	str r7, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_0219C4C6:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	sub r2, r6, r0
	lsl r2, r2, #1
	add r0, r0, r2
	sub r2, r7, r1
	lsl r2, r2, #1
	add r6, sp, #0xc
	add r7, sp, #0x18
	add r1, r1, r2
	add r2, r7, #0
	add r3, r6, #0
	bl sub_02067FA0
	add r0, r6, #0
	add r6, sp, #0
	add r1, r7, #0
	add r2, r6, #0
	bl VEC_Subtract
	add r0, r6, #0
	add r1, r6, #0
	blx VEC_Normalize
	mov r0, #1
	lsl r0, r0, #0x12
	add r1, r6, #0
	add r2, r7, #0
	add r3, r7, #0
	blx VEC_MultAdd
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0219B710
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219c470

	thumb_func_start ovy177_219c514
ovy177_219c514: ; 0x0219C514
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _0219C554
	ldr r3, [r5]
	ldr r0, [sp, #4]
	ldr r1, [r5, #8]
	sub r2, r0, r3
	sub r1, r1, r3
	cmp r2, r1
	bhs _0219C554
	ldr r3, [r5, #4]
	ldr r1, [sp]
	sub r2, r1, r3
	ldr r1, [r5, #0xc]
	sub r1, r1, r3
	cmp r2, r1
	bhs _0219C554
	cmp r4, #0
	beq _0219C54E
	str r0, [r4]
	ldr r0, [sp]
	str r0, [r4, #4]
_0219C54E:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219C554:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219c514

	thumb_func_start ovy177_219c55c
ovy177_219c55c: ; 0x0219C55C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	bl sub_0203DA84
	cmp r0, #0
	beq _0219C59C
	ldr r3, [r5]
	ldr r0, [sp, #4]
	ldr r1, [r5, #8]
	sub r2, r0, r3
	sub r1, r1, r3
	cmp r2, r1
	bhs _0219C59C
	ldr r3, [r5, #4]
	ldr r1, [sp]
	sub r2, r1, r3
	ldr r1, [r5, #0xc]
	sub r1, r1, r3
	cmp r2, r1
	bhs _0219C59C
	cmp r4, #0
	beq _0219C596
	str r0, [r4]
	ldr r0, [sp]
	str r0, [r4, #4]
_0219C596:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219C59C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy177_219c55c

	thumb_func_start ovy177_219c5a4
ovy177_219c5a4: ; 0x0219C5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1c0
	ldr r1, _0219C6B4 ; =0x00000A3C
	add r2, r0, #0
	add r0, r1, #4
	ldr r3, [r2, r1]
	ldr r0, [r2, r0]
	add r4, sp, #0xf8
	str r0, [sp, #0xec]
	add r0, r1, #0
	add r0, #8
	str r3, [sp, #0xe8]
	ldr r3, [r2, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r2, r0]
	add r1, #0x10
	str r3, [sp, #0xf0]
	str r0, [sp, #0xf4]
	add r5, r2, r1
	mov r3, #0xc
_0219C5CE:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0219C5CE
	ldr r0, _0219C6B8 ; =0x00000AAC
	add r4, sp, #0x158
	add r5, r2, r0
	mov r3, #0xc
_0219C5DE:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0219C5DE
	ldr r0, _0219C6BC ; =0x0000075C
	add r1, sp, #0x10
	add r0, r2, r0
	bl ovy177_219c380
	ldr r3, [sp, #0xe8]
	ldr r2, [sp, #0xec]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	sub r2, r2, r0
	sub r0, r3, r1
	str r1, [sp]
	add r1, r0, #0
	mul r1, r0
	add r0, r2, #0
	mul r0, r2
	str r3, [sp, #8]
	add r0, r1, r0
	beq _0219C618
	cmp r0, #0x40
	bhi _0219C618
	mov r4, #0x64
	b _0219C666
_0219C618:
	cmp r0, #0x40
	bls _0219C628
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bhi _0219C628
	mov r4, #0x50
	b _0219C666
_0219C628:
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bls _0219C63C
	mov r1, #9
	lsl r1, r1, #6
	cmp r0, r1
	bhi _0219C63C
	mov r4, #0x32
	b _0219C666
_0219C63C:
	mov r1, #9
	lsl r1, r1, #6
	cmp r0, r1
	bls _0219C650
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bhi _0219C650
	mov r4, #0x1e
	b _0219C666
_0219C650:
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bls _0219C664
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	bhi _0219C664
	mov r4, #0xa
	b _0219C666
_0219C664:
	mov r4, #0
_0219C666:
	add r0, sp, #0xf8
	add r2, sp, #0x20
	add r1, r0, #0
	add r3, r2, #0
	bl ovy177_219c6c0
	add r5, r0, #0
	add r0, sp, #0x158
	add r2, sp, #0x80
	add r1, r0, #0
	add r3, r2, #0
	bl ovy177_219c6c0
	mov r1, #0x14
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	blx sub_0208D868
	add r6, r0, #0
	mov r7, #0x28
	add r0, r4, #0
	mul r0, r7
	mov r1, #0x64
	blx sub_0208D868
	add r4, r0, #0
	add r0, r5, #0
	mul r0, r7
	mov r1, #0x64
	blx sub_0208D868
	add r0, r4, r0
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0x1c0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219C6B4: .word 0x00000A3C
_0219C6B8: .word 0x00000AAC
_0219C6BC: .word 0x0000075C
	thumb_func_end ovy177_219c5a4

	thumb_func_start ovy177_219c6c0
ovy177_219c6c0: ; 0x0219C6C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [r0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #8]
	ldr r0, [r2]
	str r3, [sp, #4]
	ldr r7, [r2, #4]
	mov r3, #0
	mov r1, #1
	mov ip, r4
	str r0, [sp, #0xc]
_0219C6DA:
	ldr r2, [sp]
	lsl r5, r1, #3
	ldr r0, [sp]
	ldr r4, [r2, r5]
	mov r2, ip
	add r0, r0, r5
	sub r2, r4, r2
	ldr r4, [r0, #4]
	ldr r0, [sp, #8]
	sub r0, r4, r0
	ldr r4, [sp, #4]
	add r6, r4, r5
	ldr r5, [r4, r5]
	ldr r4, [sp, #0xc]
	sub r4, r5, r4
	ldr r5, [r6, #4]
	sub r5, r5, r7
	cmp r0, #0
	bge _0219C702
	neg r0, r0
_0219C702:
	cmp r2, #0
	bge _0219C708
	neg r2, r2
_0219C708:
	add r0, r2, r0
	cmp r5, #0
	bge _0219C710
	neg r5, r5
_0219C710:
	cmp r4, #0
	bge _0219C716
	neg r4, r4
_0219C716:
	add r2, r4, r5
	cmp r0, r2
	bls _0219C720
	sub r0, r0, r2
	b _0219C722
_0219C720:
	sub r0, r2, r0
_0219C722:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0
	bne _0219C72E
	add r3, #0x64
	b _0219C748
_0219C72E:
	cmp r0, #1
	bne _0219C736
	add r3, #0x50
	b _0219C748
_0219C736:
	cmp r0, #2
	bne _0219C73E
	add r3, #0x32
	b _0219C748
_0219C73E:
	cmp r0, #3
	blo _0219C748
	cmp r0, #5
	bhi _0219C748
	add r3, #0x1e
_0219C748:
	add r1, r1, #1
	cmp r1, #0xa
	blt _0219C6DA
	add r0, r3, #0
	mov r1, #9
	blx sub_0208D868
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219c6c0

	thumb_func_start ovy177_219c760
ovy177_219c760: ; 0x0219C760
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r3, #0
	add r3, sp, #0x30
	ldrh r3, [r3, #0x28]
	ldr r6, _0219C81C ; =0x00007FFF
	add r5, r2, #0
	and r3, r6
	add r6, r6, #1
	orr r3, r6
	lsl r3, r3, #0x10
	ldr r2, [sp, #0x54]
	lsr r3, r3, #0x10
	bl sub_0204B600
	add r1, sp, #0x18
	add r7, r0, #0
	bl sub_02060338
	cmp r4, #0
	beq _0219C7BA
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045864
	cmp r0, #0
	bne _0219C7BA
	add r0, sp, #0x30
	ldrb r3, [r0, #0xc]
	ldrb r0, [r0, #8]
	ldr r2, [sp, #0x18]
	mov r1, #0
	mul r3, r0
	add r2, #0xc
	cmp r3, #0
	ble _0219C7BA
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_0219C7AC:
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	add r1, r1, #1
	add r6, r6, r4
	strh r6, [r2, r0]
	cmp r1, r3
	blt _0219C7AC
_0219C7BA:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02045814
	cmp r0, #0
	beq _0219C810
	add r4, sp, #0x30
	ldrb r0, [r4, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #4]
	ldrb r0, [r4]
	str r0, [sp, #8]
	ldrb r0, [r4, #4]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0xc]
	str r0, [sp, #0x14]
	lsl r0, r5, #0x18
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x18]
	lsr r0, r0, #0x18
	bl sub_020454D4
	ldrb r0, [r4, #0x1c]
	str r0, [sp]
	add r0, sp, #0x50
	ldrb r0, [r0]
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	ldrb r1, [r4, #0x10]
	ldrb r2, [r4, #0x14]
	ldrb r3, [r4, #0x18]
	lsr r0, r0, #0x18
	bl sub_0204566C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
_0219C810:
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219C81C: .word 0x00007FFF
	thumb_func_end ovy177_219c760

	thumb_func_start ovy177_219c820
ovy177_219c820: ; 0x0219C820
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	mov r0, #0x5d
	add r4, r1, #0
	bl sub_0204AA30
	mov r1, #1
	add r6, r0, #0
	tst r1, r5
	beq _0219C85E
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, #0x10
	str r2, [sp, #8]
	mov r1, #0x18
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r1, #9
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	mov r1, #7
	mov r2, #2
	str r4, [sp, #0x28]
	bl ovy177_219c760
	b _0219C876
_0219C85E:
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
_0219C876:
	mov r7, #2
	add r0, r5, #0
	tst r0, r7
	beq _0219C8A8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #0x10
	str r1, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #9
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	add r0, r6, #0
	mov r1, #8
	add r2, r7, #0
	str r4, [sp, #0x28]
	bl ovy177_219c760
	b _0219C8BE
_0219C8A8:
	mov r2, #0x10
	str r2, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	mov r3, #0
	bl sub_02045604
_0219C8BE:
	mov r0, #2
	bl sub_02045B7C
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy177_219c820

	thumb_func_start ovy177_219c8d0
ovy177_219c8d0: ; 0x0219C8D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	ldr r1, [sp, #0x24]
	str r2, [sp, #4]
	mov r2, #0x59
	str r1, [sp, #0x24]
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	add r6, r3, #0
	ldr r7, [sp, #0x20]
	mov r4, #0
	blx MI_CpuFill8
	mov r1, #0x59
	lsl r1, r1, #4
	ldr r0, [sp, #4]
	sub r1, #0x10
	str r0, [r5, r1]
	mov r0, #0x59
	lsl r0, r0, #4
	sub r0, #0xc
	str r6, [r5, r0]
	mov r0, #0x59
	lsl r0, r0, #4
	sub r0, #8
	str r4, [r5, r0]
	mov r0, #0x59
	lsl r0, r0, #4
	mov r1, #0xa
	sub r0, r0, #4
	str r1, [r5, r0]
_0219C912:
	ldr r0, [sp]
	add r1, r7, r4
	bl sub_0219B0FC
	add r1, r0, #0
	mov r0, #0x2c
	mul r0, r4
	ldr r3, [sp, #0x24]
	add r0, r5, r0
	add r2, r6, #0
	bl ovy177_219c944
	add r4, r4, #1
	cmp r4, #0x20
	blt _0219C912
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy177_219c8d0

	thumb_func_start sub_0219C934
sub_0219C934: ; 0x0219C934
	mov r2, #0x59
	ldr r3, _0219C940 ; =MI_CpuFill8
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	nop
_0219C940: .word MI_CpuFill8
	thumb_func_end sub_0219C934

	thumb_func_start ovy177_219c944
ovy177_219c944: ; 0x0219C944
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x2c
	add r5, r0, #0
	add r7, r3, #0
	blx MI_CpuFill8
	lsl r1, r6, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #1
	str r4, [r5]
	str r7, [r5, #4]
	bl sub_0204C378
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy177_219c944

	thumb_func_start sub_0219C968
sub_0219C968: ; 0x0219C968
	ldr r3, _0219C970 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x60
	bx r3
	.align 2, 0
_0219C970: .word MI_CpuFill8
	thumb_func_end sub_0219C968

	thumb_func_start ovy177_219c974
ovy177_219c974: ; 0x0219C974
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0219C982
	mov r0, #1
	pop {r4, pc}
_0219C982:
	ldr r2, [r4, #0x54]
	add r0, r2, #1
	str r0, [r4, #0x54]
	cmp r2, #0x96
	bls _0219C99C
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x48
	bl ovy177_219c55c
	mov r0, #1
	str r0, [r4, #0x5c]
	pop {r4, pc}
_0219C99C:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _0219C9C0
	add r0, r4, #0
	add r0, #0x50
	ldrh r2, [r0]
	add r0, r4, #0
	add r0, #0x50
	ldrh r0, [r0]
	add r3, r0, #1
	add r0, r4, #0
	add r0, #0x50
	strh r3, [r0]
	add r0, r1, #0
	lsl r1, r2, #3
	add r1, r4, r1
	bl ovy177_219c55c
_0219C9C0:
	ldr r1, [r4, #0x58]
	add r0, r1, #1
	str r0, [r4, #0x58]
	cmp r1, #0xf
	bls _0219C9CE
	mov r0, #0
	str r0, [r4, #0x58]
_0219C9CE:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy177_219c974

	thumb_func_start sub_0219C9D4
sub_0219C9D4: ; 0x0219C9D4
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end sub_0219C9D4
_0219C9D8:
	.byte 0x34, 0x00, 0x32, 0x00, 0x33, 0x00, 0x00, 0x00
	.byte 0x99, 0xC3, 0x19, 0x02, 0xBD, 0xC3, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x60, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x21, 0xAD, 0x19, 0x02, 0x71, 0xAF, 0x19, 0x02, 0x09, 0xAF, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x03, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x01, 0x03, 0x05, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219C9D8
