    .include "macros/function.inc"
	.include "overlay173.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy173_219ce80
ovy173_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	mov r2, #0x5a
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	str r3, [sp, #4]
	mov r7, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0219CEA2
	sub r0, r0, #1
	lsr r7, r0, #3
_0219CEA2:
	ldr r0, [sp, #0x30]
	ldr r2, [sp]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0x14
	str r4, [r5, #4]
	bl ovy173_219d6a0
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_0219D6E4
	add r0, r7, #0
	bl sub_0219E0F0
	add r2, sp, #8
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	strh r0, [r2, #4]
	ldrh r1, [r2, #2]
	strh r1, [r2, #6]
	ldrh r0, [r2, #4]
	add r2, r4, #0
	bl sub_021A8180
	ldr r6, _0219CF4C ; =0x00000588
	str r0, [r5, r6]
	add r0, r7, #0
	bl sub_0219E0FC
	add r1, r0, #0
	ldr r0, [r5, r6]
	bl sub_021A81E0
	mov r0, #0x30
	add r1, r4, #0
	bl sub_021A8260
	add r1, r6, #4
	str r0, [r5, r1]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy173_219d610
	add r0, r6, #0
	add r0, #0xc
	add r0, r5, r0
	bl sub_021A93B0
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ovy173_219d64c
	ldr r0, [r5, #0x10]
	ldr r2, [sp]
	ldr r3, [sp, #0x2c]
	add r1, r4, #0
	bl ovy173_219d6ec
	add r1, r6, #0
	sub r1, #0x14
	ldr r2, [sp]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	add r1, r5, r1
	bl ovy173_219deec
	mov r0, #0x80
	add r1, r4, #0
	bl sub_021A98CC
	add r6, #0x14
	str r0, [r5, r6]
	mov r0, #1
	str r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF4C: .word 0x00000588
	thumb_func_end ovy173_219ce80

	thumb_func_start ovy173_219cf50
ovy173_219cf50: ; 0x0219CF50
	push {r3, r4, r5, lr}
	ldr r5, _0219CFA8 ; =0x0000059C
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_021A9910
	add r0, r4, #0
	bl sub_0219D690
	add r1, r5, #0
	sub r1, #0x28
	add r0, r4, #0
	add r1, r4, r1
	bl ovy173_219df28
	add r0, r4, #0
	bl ovy173_219d460
	add r0, r4, #0
	bl sub_0219D63C
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_021A82A0
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl sub_021A81C4
	add r0, r4, #0
	add r0, #0x14
	bl ovy173_219d6b4
	ldr r0, [r4, #0x10]
	bl sub_0219D6E8
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CFA8: .word 0x0000059C
	thumb_func_end ovy173_219cf50

	thumb_func_start sub_0219CFAC
sub_0219CFAC: ; 0x0219CFAC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219CFAC

	thumb_func_start ovy173_219cfb0
ovy173_219cfb0: ; 0x0219CFB0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0219D060 ; =0x02FFFC3C
	ldr r1, [r0]
	lsl r1, r1, #0x1f
	beq _0219D006
	ldr r5, _0219D064 ; =0x0000058C
	ldr r0, [r4, r5]
	bl sub_021A82C8
	add r0, r4, #0
	bl ovy173_219d57c
	add r0, r4, #0
	bl ovy173_219d52c
	add r1, r5, #0
	sub r1, #0x1c
	ldr r1, [r4, r1]
	add r0, r5, #0
	add r0, #8
	ldr r1, [r1]
	add r0, r4, r0
	bl sub_021A9374
	add r0, r5, #0
	add r0, #0xc
	add r1, r5, #0
	add r1, #8
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl sub_021A9440
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_021A90FC
	add r0, r4, #0
	bl ovy173_219d5b0
	add r0, r4, #0
	bl sub_0219D864
_0219D006:
	add r0, r4, #0
	bl ovy173_219d488
	cmp r0, #1
	bne _0219D05A
	add r0, r4, #0
	bl ovy173_219d0ac
	add r0, r4, #0
	bl ovy173_219d8bc
	cmp r0, #1
	bne _0219D034
	add r0, r4, #0
	bl ovy173_219d828
	bl sub_0203DF20
	mov r1, #0x80
	tst r0, r1
	beq _0219D034
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D034:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219D05A
	add r0, r4, #0
	bl sub_0219D0D4
	cmp r0, #0
	beq _0219D04C
	mov r0, #2
	pop {r3, r4, r5, pc}
_0219D04C:
	add r0, r4, #0
	bl ovy173_219d4a4
	cmp r0, #1
	bne _0219D05A
	mov r0, #3
	pop {r3, r4, r5, pc}
_0219D05A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219D060: .word 0x02FFFC3C
_0219D064: .word 0x0000058C
	thumb_func_end ovy173_219cfb0

	thumb_func_start ovy173_219d068
ovy173_219d068: ; 0x0219D068
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl sub_021A8384
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219D0A8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy173_219d5d8
	add r5, r0, #0
	beq _0219D0A4
	bl sub_0219DADC
	cmp r0, #1
	bne _0219D0A2
	ldr r0, [r5]
	mov r1, #4
	bl sub_021A8384
	b _0219D0A6
_0219D0A2:
	b _0219D0A4
_0219D0A4:
	mov r0, #0
_0219D0A6:
	strb r0, [r4, #0xa]
_0219D0A8:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_219d068

	thumb_func_start ovy173_219d0ac
ovy173_219d0ac: ; 0x0219D0AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x30
	mov r7, #0x1c
_0219D0B8:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0219D0CC
	add r0, r5, #0
	add r1, r6, r1
	bl ovy173_219d068
_0219D0CC:
	add r4, r4, #1
	cmp r4, #0x30
	blt _0219D0B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d0ac

	thumb_func_start sub_0219D0D4
sub_0219D0D4: ; 0x0219D0D4
	mov r1, #0x57
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldrb r0, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D0D4

	thumb_func_start ovy173_219d0e0
ovy173_219d0e0: ; 0x0219D0E0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r5, #0x57
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	ldr r0, [r0]
	bl sub_021A84A4
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	add r5, #0x18
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r3, [r2, r1]
	ldr r0, [r4, r5]
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #6
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl sub_021A8244
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219d0e0

	thumb_func_start ovy173_219d12c
ovy173_219d12c: ; 0x0219D12C
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r5, #0x57
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	ldr r0, [r0]
	bl sub_021A84A4
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	add r5, #0x18
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r3, [r2, r1]
	ldr r0, [r4, r5]
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #6
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	asr r2, r2, #4
	add r2, r2, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_021A8244
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219d12c

	thumb_func_start ovy173_219d17c
ovy173_219d17c: ; 0x0219D17C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	bl sub_021A84A4
	add r4, sp, #0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	ldr r0, [r5, #4]
	bl sub_021A9238
	add r2, r0, #0
	mov r3, sp
	ldrh r1, [r4, #4]
	sub r3, r3, #4
	add r0, r6, #0
	strh r1, [r3]
	ldrh r1, [r4, #6]
	sub r2, r2, #2
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ovy173_219d870
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_021A922C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_219d17c

	thumb_func_start sub_0219D1C4
sub_0219D1C4: ; 0x0219D1C4
	ldr r0, [r1, #4]
	ldr r3, _0219D1CC ; =sub_021A922C
	mov r1, #1
	bx r3
	.align 2, 0
_0219D1CC: .word sub_021A922C
	thumb_func_end sub_0219D1C4

	thumb_func_start sub_0219D1D0
sub_0219D1D0: ; 0x0219D1D0
	ldr r3, _0219D1D4 ; =sub_0219D8B0
	bx r3
	.align 2, 0
_0219D1D4: .word sub_0219D8B0
	thumb_func_end sub_0219D1D0

	thumb_func_start sub_0219D1D8
sub_0219D1D8: ; 0x0219D1D8
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219D1D8

	thumb_func_start sub_0219D1DC
sub_0219D1DC: ; 0x0219D1DC
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0219D1DC

	thumb_func_start ovy173_219d1e0
ovy173_219d1e0: ; 0x0219D1E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	bl ovy173_219da48
	mov r4, #0x57
	add r6, r0, #0
	lsl r4, r4, #4
	add r0, r5, #0
	add r1, sp, #0xc
	str r6, [r5, r4]
	bl ovy173_219d9d8
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0xc
	mov r3, #0
	bl ovy173_219daa4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219DB08
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ovy173_219da70
	ldr r1, [r5, r4]
	add r0, r4, #0
	add r0, #0x24
	ldr r1, [r1]
	add r0, r5, r0
	bl sub_021A9374
	add r0, r4, #0
	add r0, #0x28
	add r4, #0x24
	ldr r0, [r5, r0]
	add r1, r5, r4
	bl sub_021A9440
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d1e0

	thumb_func_start ovy173_219d248
ovy173_219d248: ; 0x0219D248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r2, #0
	add r7, r1, #0
	bl ovy173_219da48
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x14
	sub r2, r6, #1
	bl ovy173_219d92c
	mov r0, #0x57
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D2A0
	ldr r0, [r0]
	bl sub_021A84A4
	add r1, sp, #0xc
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r2, #8
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	ldrsh r2, [r1, r2]
	cmp r0, r2
	bne _0219D2A0
	mov r0, #6
	mov r2, #0xa
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bne _0219D2A0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D2A0:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x14
	add r3, r6, #0
	bl ovy173_219daa4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DB28
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ovy173_219da70
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219d248

	thumb_func_start ovy173_219d2d4
ovy173_219d2d4: ; 0x0219D2D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl sub_021A8384
	ldr r0, _0219D30C ; =0x0219DE01
	mov r1, #0
	str r0, [r4, #0x10]
	ldr r0, _0219D310 ; =ovy173_219dbb4
	strh r1, [r4, #8]
	str r0, [r4, #0x18]
	mov r0, #2
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_021A91B8
	ldr r0, [r4, #4]
	bl sub_021A91BC
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	bl ovy173_219de94
	pop {r3, r4, r5, pc}
	nop
_0219D30C: .word 0x0219DE01
_0219D310: .word ovy173_219dbb4
	thumb_func_end ovy173_219d2d4

	thumb_func_start ovy173_219d314
ovy173_219d314: ; 0x0219D314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_021A90E4
	ldr r0, [r4]
	bl sub_021A8328
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy173_219d314

	thumb_func_start ovy173_219d330
ovy173_219d330: ; 0x0219D330
	push {r3, lr}
	ldr r0, [r0]
	mov r1, #4
	bl sub_021A8384
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ovy173_219d330

	thumb_func_start ovy173_219d340
ovy173_219d340: ; 0x0219D340
	push {r3, lr}
	ldr r0, [r0]
	mov r1, #6
	bl sub_021A8384
	bl sub_021A846C
	pop {r3, pc}
	thumb_func_end ovy173_219d340

	thumb_func_start ovy173_219d350
ovy173_219d350: ; 0x0219D350
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r2, #0
	str r0, [r5, #0x14]
	ldr r0, _0219D3BC ; =0x0219DE71
	mov r1, #4
	str r0, [r5, #0x10]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r0, #5
	strh r0, [r5, #0xc]
	ldr r0, [r5]
	bl sub_021A8384
	add r3, r0, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl ovy173_219de74
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_021A91B8
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_021A9244
	ldr r0, [r5]
	mov r1, #0
	bl sub_021A8384
	add r4, sp, #0
	strh r0, [r4]
	ldr r0, [r5]
	mov r1, #1
	bl sub_021A8384
	strh r0, [r4, #2]
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r4, #2]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl sub_021A91F4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D3BC: .word 0x0219DE71
	thumb_func_end ovy173_219d350

	thumb_func_start ovy173_219d3c0
ovy173_219d3c0: ; 0x0219D3C0
	push {r3, lr}
	cmp r1, #0
	beq _0219D3DE
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0219D3DE
	str r0, [r1, #0x10]
	mov r0, #0
	str r0, [r1, #0x14]
	ldrh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	ldr r0, [r1, #4]
	mov r1, #1
	bl sub_021A91B8
_0219D3DE:
	pop {r3, pc}
	thumb_func_end ovy173_219d3c0

	thumb_func_start ovy173_219d3e0
ovy173_219d3e0: ; 0x0219D3E0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0219DEBC
	cmp r0, #0
	bne _0219D3F6
	strb r4, [r5, #0xb]
	pop {r4, r5, r6, pc}
_0219D3F6:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ovy173_219ded0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_219d3e0

	thumb_func_start ovy173_219d404
ovy173_219d404: ; 0x0219D404
	push {r4, lr}
	add r4, r0, #0
	bl ovy173_219d4a4
	cmp r0, #1
	bne _0219D42C
	add r0, r4, #0
	bl ovy173_219d12c
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	sub r1, r1, #3
	lsl r1, r1, #0x18
	ldr r0, _0219D430 ; =0x00000574
	asr r1, r1, #0x18
	lsl r1, r1, #0x18
	add r0, r4, r0
	lsr r1, r1, #0x18
	bl ovy173_219e074
_0219D42C:
	pop {r4, pc}
	nop
_0219D430: .word 0x00000574
	thumb_func_end ovy173_219d404

	thumb_func_start sub_0219D434
sub_0219D434: ; 0x0219D434
	ldr r1, _0219D43C ; =0x00000574
	ldr r3, _0219D440 ; =ovy173_219e09c
	add r0, r0, r1
	bx r3
	.align 2, 0
_0219D43C: .word 0x00000574
_0219D440: .word ovy173_219e09c
	thumb_func_end sub_0219D434

	thumb_func_start ovy173_219d444
ovy173_219d444: ; 0x0219D444
	push {r3, lr}
	ldr r1, _0219D458 ; =0x02FFFC3C
	ldr r2, [r1]
	lsl r2, r2, #0x1f
	beq _0219D456
	ldr r1, _0219D45C ; =0x00000574
	add r1, r0, r1
	bl ovy173_219df40
_0219D456:
	pop {r3, pc}
	.align 2, 0
_0219D458: .word 0x02FFFC3C
_0219D45C: .word 0x00000574
	thumb_func_end ovy173_219d444

	thumb_func_start ovy173_219d460
ovy173_219d460: ; 0x0219D460
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x30
	mov r7, #0x1c
_0219D46C:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _0219D47E
	add r0, r6, r1
	bl ovy173_219d314
_0219D47E:
	add r4, r4, #1
	cmp r4, #0x30
	blt _0219D46C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219d460

	thumb_func_start ovy173_219d488
ovy173_219d488: ; 0x0219D488
	push {r3, lr}
	mov r1, #0x57
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #5
	ldr r0, [r0]
	bl sub_021A8384
	cmp r0, #0
	bne _0219D4A0
	mov r0, #1
	pop {r3, pc}
_0219D4A0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy173_219d488

	thumb_func_start ovy173_219d4a4
ovy173_219d4a4: ; 0x0219D4A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0x57
	add r6, r0, #0
	lsl r4, r4, #4
	ldr r0, [r6, r4]
	ldr r0, [r0]
	bl sub_021A84A4
	add r5, sp, #0
	strh r0, [r5, #4]
	lsr r0, r0, #0x10
	strh r0, [r5, #6]
	ldrh r0, [r5, #4]
	mov r1, #6
	strh r0, [r5, #0xc]
	ldrh r0, [r5, #6]
	strh r0, [r5, #0xe]
	ldr r0, [r6, r4]
	ldr r0, [r0]
	bl sub_021A8384
	add r7, r0, #0
	mov r1, sp
	ldrh r0, [r5, #0xc]
	sub r1, r1, #4
	strh r0, [r1]
	ldrh r0, [r5, #0xe]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r7, #0
	bl sub_021A8434
	strh r0, [r5]
	lsr r0, r0, #0x10
	strh r0, [r5, #2]
	ldrh r0, [r5]
	mov r1, #8
	add r4, #0x18
	strh r0, [r5, #8]
	ldrh r0, [r5, #2]
	strh r0, [r5, #0xa]
	ldrsh r2, [r5, r1]
	ldr r0, [r6, r4]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	mov r2, #0xa
	ldrsh r3, [r5, r2]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl sub_021A8244
	cmp r7, #0
	bne _0219D526
	cmp r0, #2
	bne _0219D526
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D526:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d4a4

	thumb_func_start ovy173_219d52c
ovy173_219d52c: ; 0x0219D52C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219D578 ; =0x0000059C
	add r1, sp, #8
	ldr r0, [r5, r0]
	bl sub_021A9960
	cmp r0, #1
	bne _0219D572
	ldr r7, _0219D578 ; =0x0000059C
	ldr r6, _0219D578 ; =0x0000059C
	ldr r4, _0219D578 ; =0x0000059C
	sub r7, #0x10
	sub r6, #0x14
	sub r4, #0x10
_0219D54C:
	ldr r0, [r5, r6]
	ldr r1, [r5, r4]
	add r2, sp, #8
	add r3, sp, #0
	bl sub_021A8D50
	cmp r0, #1
	bne _0219D564
	ldr r0, [r5, r7]
	add r1, sp, #0
	bl sub_021A82B4
_0219D564:
	ldr r0, _0219D578 ; =0x0000059C
	add r1, sp, #8
	ldr r0, [r5, r0]
	bl sub_021A9960
	cmp r0, #1
	beq _0219D54C
_0219D572:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D578: .word 0x0000059C
	thumb_func_end ovy173_219d52c

	thumb_func_start ovy173_219d57c
ovy173_219d57c: ; 0x0219D57C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r7, #0
	mov r5, #0
	add r6, #0x30
_0219D586:
	mov r0, #0x1c
	add r4, r5, #0
	mul r4, r0
	add r2, r7, r4
	ldr r0, [r2, #0x30]
	cmp r0, #0
	beq _0219D5A6
	ldr r2, [r2, #0x40]
	add r0, r7, #0
	add r1, r6, r4
	blx r2
	cmp r0, #1
	bne _0219D5A6
	add r0, r6, r4
	bl ovy173_219d314
_0219D5A6:
	add r5, r5, #1
	cmp r5, #0x30
	blt _0219D586
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219d57c

	thumb_func_start ovy173_219d5b0
ovy173_219d5b0: ; 0x0219D5B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x30
	mov r7, #0x1c
_0219D5BC:
	add r1, r4, #0
	mul r1, r7
	add r2, r5, r1
	ldr r0, [r2, #0x30]
	cmp r0, #0
	beq _0219D5D0
	ldr r2, [r2, #0x48]
	add r0, r5, #0
	add r1, r6, r1
	blx r2
_0219D5D0:
	add r4, r4, #1
	cmp r4, #0x30
	blt _0219D5BC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d5b0

	thumb_func_start ovy173_219d5d8
ovy173_219d5d8: ; 0x0219D5D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r1]
	ldr r1, _0219D60C ; =0x0000058C
	ldr r1, [r4, r1]
	bl sub_021A8584
	cmp r0, #0
	beq _0219D606
	mov r5, #0
	mov r1, #0x1c
_0219D5EE:
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r3
	ldr r2, [r2, #0x30]
	cmp r2, r0
	bne _0219D600
	add r4, #0x30
	add r0, r4, r3
	pop {r3, r4, r5, pc}
_0219D600:
	add r5, r5, #1
	cmp r5, #0x30
	blt _0219D5EE
_0219D606:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219D60C: .word 0x0000058C
	thumb_func_end ovy173_219d5d8

	thumb_func_start ovy173_219d610
ovy173_219d610: ; 0x0219D610
	push {r4, r5, lr}
	sub sp, #0xc
	add r3, r1, #0
	mov r1, #0
	str r1, [sp]
	add r4, r2, #0
	str r1, [sp, #4]
	add r5, r0, #0
	str r4, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r2, #0x30
	bl sub_021A8F70
	mov r1, #0x59
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #2
	add r2, r4, #0
	bl sub_021A9044
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy173_219d610

	thumb_func_start sub_0219D63C
sub_0219D63C: ; 0x0219D63C
	mov r1, #0x59
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r3, _0219D648 ; =sub_021A8FE8
	bx r3
	nop
_0219D648: .word sub_021A8FE8
	thumb_func_end sub_0219D63C

	thumb_func_start ovy173_219d64c
ovy173_219d64c: ; 0x0219D64C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _0219D688 ; =0x021A628C
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #0
	mov r1, #0xb
_0219D65A:
	ldrb r0, [r6]
	add r6, r6, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0219D65A
	add r1, sp, #0
	ldrb r2, [r1, #9]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	add r0, r2, r0
	strb r0, [r1, #9]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	add r2, sp, #0
	add r3, r4, #0
	bl sub_021A93D4
	ldr r1, _0219D68C ; =0x00000598
	str r0, [r5, r1]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0219D688: .word 0x021A628C
_0219D68C: .word 0x00000598
	thumb_func_end ovy173_219d64c

	thumb_func_start sub_0219D690
sub_0219D690: ; 0x0219D690
	ldr r1, _0219D698 ; =0x00000598
	ldr r3, _0219D69C ; =sub_021A942C
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_0219D698: .word 0x00000598
_0219D69C: .word sub_021A942C
	thumb_func_end sub_0219D690

	thumb_func_start ovy173_219d6a0
ovy173_219d6a0: ; 0x0219D6A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0219D6C4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219D6D4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219d6a0

	thumb_func_start ovy173_219d6b4
ovy173_219d6b4: ; 0x0219D6B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219D6DC
	add r0, r4, #0
	bl sub_0219D6CC
	pop {r4, pc}
	thumb_func_end ovy173_219d6b4

	thumb_func_start sub_0219D6C4
sub_0219D6C4: ; 0x0219D6C4
	ldr r3, _0219D6C8 ; =ovy173_219d730
	bx r3
	.align 2, 0
_0219D6C8: .word ovy173_219d730
	thumb_func_end sub_0219D6C4

	thumb_func_start sub_0219D6CC
sub_0219D6CC: ; 0x0219D6CC
	ldr r3, _0219D6D0 ; =ovy173_219d780
	bx r3
	.align 2, 0
_0219D6D0: .word ovy173_219d780
	thumb_func_end sub_0219D6CC

	thumb_func_start sub_0219D6D4
sub_0219D6D4: ; 0x0219D6D4
	ldr r3, _0219D6D8 ; =ovy173_219d798
	bx r3
	.align 2, 0
_0219D6D8: .word ovy173_219d798
	thumb_func_end sub_0219D6D4

	thumb_func_start sub_0219D6DC
sub_0219D6DC: ; 0x0219D6DC
	ldr r3, _0219D6E0 ; =ovy173_219d814
	bx r3
	.align 2, 0
_0219D6E0: .word ovy173_219d814
	thumb_func_end sub_0219D6DC

	thumb_func_start sub_0219D6E4
sub_0219D6E4: ; 0x0219D6E4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D6E4

	thumb_func_start sub_0219D6E8
sub_0219D6E8: ; 0x0219D6E8
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D6E8

	thumb_func_start ovy173_219d6ec
ovy173_219d6ec: ; 0x0219D6EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r0, #1
	add r5, r1, #0
	lsl r0, r0, #8
	str r0, [sp]
	lsl r0, r5, #0x10
	add r4, r3, #0
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl sub_0204B0B8
	mov r0, #0
	mov r1, #0
	bl sub_02045350
	str r6, [sp]
	lsl r0, r5, #0x10
	str r6, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204AD88
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy173_219d6ec

	thumb_func_start ovy173_219d730
ovy173_219d730: ; 0x0219D730
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x10
	add r6, r2, #0
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0
	mov r3, #0
	mov r7, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #8]
	mov r3, #0x16
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	lsl r3, r3, #4
	bl Oam_LoadNCLRFile
	lsl r3, r4, #0x10
	str r0, [r5, #0xc]
	add r0, r6, #0
	mov r1, #0x14
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl Oam_LoadNCERFile
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d730

	thumb_func_start ovy173_219d780
ovy173_219d780: ; 0x0219D780
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0xc]
	bl sub_0204BCD0
	ldr r0, [r4, #0x10]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy173_219d780

	thumb_func_start ovy173_219d798
ovy173_219d798: ; 0x0219D798
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #1
	add r6, sp, #0xc
	strh r0, [r6]
	strh r0, [r6, #2]
	mov r7, #0
	strh r7, [r6, #4]
	strb r7, [r6, #6]
	add r4, r1, #0
	strb r7, [r6, #7]
	add r0, sp, #0xc
	str r0, [sp]
	lsl r0, r4, #0x10
	str r7, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl Oam_CreateSprite
	str r0, [r5, #0x14]
	mov r0, #2
	strh r0, [r6, #4]
	mov r0, #0xfe
	strb r0, [r6, #6]
	mov r0, #3
	strb r0, [r6, #7]
	add r0, sp, #0xc
	str r0, [sp]
	lsl r0, r4, #0x10
	str r7, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl Oam_CreateSprite
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d798

	thumb_func_start ovy173_219d814
ovy173_219d814: ; 0x0219D814
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0204C108
	ldr r0, [r4, #0x18]
	bl sub_0204C108
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_219d814

	thumb_func_start ovy173_219d828
ovy173_219d828: ; 0x0219D828
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r4, r0, #0
	bl ovy173_219d9d8
	add r2, sp, #0
	mov r0, #4
	ldrsh r1, [r2, r0]
	add r1, #8
	strh r1, [r2, #4]
	mov r1, #6
	ldrsh r3, [r2, r1]
	add r3, #0x20
	strh r3, [r2, #6]
	ldrsh r0, [r2, r0]
	strh r0, [r2]
	ldrsh r0, [r2, r1]
	add r1, sp, #0
	strh r0, [r2, #2]
	ldr r0, [r4, #0x28]
	bl sub_0204C210
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0204C124
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_219d828

	thumb_func_start sub_0219D864
sub_0219D864: ; 0x0219D864
	ldr r0, [r0, #0x28]
	ldr r3, _0219D86C ; =sub_0204C124
	mov r1, #0
	bx r3
	.align 2, 0
_0219D86C: .word sub_0204C124
	thumb_func_end sub_0219D864

	thumb_func_start ovy173_219d870
ovy173_219d870: ; 0x0219D870
	push {r0, r1, r2, r3}
	thumb_func_end ovy173_219d870

	non_word_aligned_thumb_func_start ovy173_219d872
ovy173_219d872: ; 0x0219D872
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, sp, #0x14
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r4, r2, #0
	add r2, sp, #0
	add r1, #8
	strh r1, [r2]
	add r1, sp, #0x14
	add r1, #2
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	strh r0, [r2, #2]
	ldr r0, [r5, #0x2c]
	bl sub_0204C210
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x2c]
	lsr r1, r1, #0x18
	bl sub_0204C438
	ldr r0, [r5, #0x2c]
	mov r1, #1
	bl sub_0204C124
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy173_219d872

	thumb_func_start sub_0219D8B0
sub_0219D8B0: ; 0x0219D8B0
	ldr r0, [r0, #0x2c]
	ldr r3, _0219D8B8 ; =sub_0204C124
	mov r1, #0
	bx r3
	.align 2, 0
_0219D8B8: .word sub_0204C124
	thumb_func_end sub_0219D8B0

	thumb_func_start ovy173_219d8bc
ovy173_219d8bc: ; 0x0219D8BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x57
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219D8D2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219D8D2:
	ldr r0, [r0]
	bl sub_021A84A4
	add r6, sp, #0
	strh r0, [r6]
	lsr r0, r0, #0x10
	strh r0, [r6, #2]
	ldrh r0, [r6]
	mov r1, #6
	strh r0, [r6, #4]
	ldrh r0, [r6, #2]
	strh r0, [r6, #6]
	ldr r0, [r5, r4]
	ldr r0, [r0]
	bl sub_021A8384
	mov r1, #4
	ldrsh r2, [r6, r1]
	add r4, #0x18
	add r7, r0, #0
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	mov r2, #6
	ldrsh r3, [r6, r2]
	lsl r1, r1, #0xc
	ldr r0, [r5, r4]
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_021A8244
	cmp r0, #0xf
	bne _0219D926
	cmp r7, #1
	bne _0219D926
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D926:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219d8bc

	thumb_func_start ovy173_219d92c
ovy173_219d92c: ; 0x0219D92C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #7
	add r4, r2, #0
	and r4, r0
	ldr r1, [sp]
	ldr r0, _0219D9D4 ; =0x00000588
	lsr r6, r2, #3
	ldr r0, [r1, r0]
	bl sub_021A81D8
	add r5, r0, #0
	ldr r1, [sp]
	ldr r0, _0219D9D4 ; =0x00000588
	ldr r0, [r1, r0]
	bl sub_021A81DC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _0219D9D0
	add r0, r6, #3
	str r0, [sp, #0x14]
	add r0, r4, #7
	str r0, [sp, #0x10]
	ldr r1, [sp]
	ldr r0, _0219D9D4 ; =0x00000588
	add r0, r1, r0
	str r0, [sp, #0x18]
_0219D96E:
	mov r4, #0
	cmp r5, #0
	bls _0219D9C4
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_0219D982:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_021A8244
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne _0219D9BE
	ldr r1, [sp]
	ldr r0, _0219D9D4 ; =0x00000588
	add r2, r7, #0
	ldr r0, [r1, r0]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_021A8244
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _0219D9BE
	ldr r0, [sp, #4]
	lsl r1, r4, #4
	strh r1, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add sp, #0x1c
	strh r1, [r0, #2]
	pop {r4, r5, r6, r7, pc}
_0219D9BE:
	add r4, r4, #1
	cmp r4, r5
	blo _0219D982
_0219D9C4:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _0219D96E
_0219D9D0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D9D4: .word 0x00000588
	thumb_func_end ovy173_219d92c

	thumb_func_start ovy173_219d9d8
ovy173_219d9d8: ; 0x0219D9D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _0219DA44 ; =0x00000588
	str r1, [sp]
	ldr r0, [r7, r0]
	bl sub_021A81D8
	add r5, r0, #0
	ldr r0, _0219DA44 ; =0x00000588
	ldr r0, [r7, r0]
	bl sub_021A81DC
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _0219DA40
_0219D9FE:
	mov r4, #0
	cmp r5, #0
	bls _0219DA34
	ldr r0, [sp, #8]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_0219DA0A:
	ldr r0, _0219DA44 ; =0x00000588
	lsl r1, r4, #0x10
	ldr r0, [r7, r0]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_021A8244
	cmp r0, #0xf
	bne _0219DA2E
	ldr r0, [sp]
	lsl r1, r4, #4
	strh r1, [r0]
	ldr r0, [sp, #8]
	lsl r1, r0, #4
	ldr r0, [sp]
	add sp, #0xc
	strh r1, [r0, #2]
	pop {r4, r5, r6, r7, pc}
_0219DA2E:
	add r4, r4, #1
	cmp r4, r5
	blo _0219DA0A
_0219DA34:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _0219D9FE
_0219DA40:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DA44: .word 0x00000588
	thumb_func_end ovy173_219d9d8

	thumb_func_start ovy173_219da48
ovy173_219da48: ; 0x0219DA48
	push {r3, r4}
	mov r4, #0
	mov r1, #0x1c
_0219DA4E:
	add r3, r4, #0
	mul r3, r1
	add r2, r0, r3
	ldr r2, [r2, #0x30]
	cmp r2, #0
	bne _0219DA62
	add r0, #0x30
	add r0, r0, r3
	pop {r3, r4}
	bx lr
_0219DA62:
	add r4, r4, #1
	cmp r4, #0x30
	blt _0219DA4E
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy173_219da48

	thumb_func_start ovy173_219da70
ovy173_219da70: ; 0x0219DA70
	push {r3, r4, r5, lr}
	add r3, r0, #0
	mov r0, #0x59
	add r5, r1, #0
	lsl r0, r0, #4
	ldr r0, [r3, r0]
	ldr r1, [r5]
	ldr r3, [r3, #4]
	add r4, r2, #0
	bl sub_021A9060
	str r0, [r5, #4]
	cmp r4, #0
	bne _0219DAA0
	mov r1, #0
	bl sub_021A91B8
	ldr r0, [r5, #4]
	bl sub_021A91BC
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_021A9220
_0219DAA0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219da70

	thumb_func_start ovy173_219daa4
ovy173_219daa4: ; 0x0219DAA4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r5, sp, #0
	strh r1, [r5]
	mov r1, #2
	ldrsh r1, [r2, r1]
	strh r1, [r5, #2]
	ldr r1, [sp, #0x20]
	strh r3, [r5, #4]
	strh r1, [r5, #6]
	add r1, sp, #0x18
	ldrb r2, [r1, #4]
	strh r2, [r5, #8]
	ldrh r1, [r1]
	strh r1, [r5, #0xa]
	ldr r1, _0219DAD8 ; =0x0000058C
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl sub_021A82F8
	str r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219DAD8: .word 0x0000058C
	thumb_func_end ovy173_219daa4

	thumb_func_start sub_0219DADC
sub_0219DADC: ; 0x0219DADC
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	bhi _0219DB02
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DAEE: ; jump table
	.short _0219DAFA - _0219DAEE - 2 ; case 0
	.short _0219DAFE - _0219DAEE - 2 ; case 1
	.short _0219DAFE - _0219DAEE - 2 ; case 2
	.short _0219DAFA - _0219DAEE - 2 ; case 3
	.short _0219DAFA - _0219DAEE - 2 ; case 4
	.short _0219DAFE - _0219DAEE - 2 ; case 5
_0219DAFA:
	mov r0, #1
	bx lr
_0219DAFE:
	mov r0, #0
	bx lr
_0219DB02:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DADC

	thumb_func_start sub_0219DB08
sub_0219DB08: ; 0x0219DB08
	add r2, r1, #0
	ldr r1, _0219DB1C ; =ovy173_219dcf8
	ldr r3, _0219DB20 ; =ovy173_219de94
	str r1, [r2, #0x10]
	ldr r1, _0219DB24 ; =0x0219DBB1
	str r1, [r2, #0x18]
	mov r1, #0
	strh r1, [r2, #0xc]
	bx r3
	nop
_0219DB1C: .word ovy173_219dcf8
_0219DB20: .word ovy173_219de94
_0219DB24: .word 0x0219DBB1
	thumb_func_end sub_0219DB08

	thumb_func_start sub_0219DB28
sub_0219DB28: ; 0x0219DB28
	ldr r0, _0219DB3C ; =ovy173_219dda8
	str r0, [r1, #0x10]
	ldr r0, _0219DB40 ; =ovy173_219dbb4
	str r0, [r1, #0x18]
	mov r0, #0x2d
	strh r0, [r1, #8]
	mov r0, #1
	strh r0, [r1, #0xc]
	bx lr
	nop
_0219DB3C: .word ovy173_219dda8
_0219DB40: .word ovy173_219dbb4
	thumb_func_end sub_0219DB28

	thumb_func_start ovy173_219db44
ovy173_219db44: ; 0x0219DB44
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0219DB7C ; =ovy173_219de18
	add r5, r1, #0
	str r0, [r5, #0x10]
	ldr r0, _0219DB80 ; =0x0219DBB1
	mov r4, #1
	lsl r4, r4, #0xa
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl sub_02005748
	lsr r1, r4, #2
	add r0, r0, r1
	strh r0, [r5, #8]
	mov r0, #3
	strh r0, [r5, #0xc]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	bl ovy173_219de94
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_021A91B8
	pop {r4, r5, r6, pc}
	nop
_0219DB7C: .word ovy173_219de18
_0219DB80: .word 0x0219DBB1
	thumb_func_end ovy173_219db44

	thumb_func_start ovy173_219db84
ovy173_219db84: ; 0x0219DB84
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _0219DBA8 ; =0x0219DE59
	add r2, r4, #0
	str r1, [r4, #0x10]
	ldr r1, _0219DBAC ; =ovy173_219dc4c
	str r1, [r4, #0x18]
	mov r1, #0x1c
	strh r1, [r4, #8]
	mov r1, #4
	strh r1, [r4, #0xc]
	bl ovy173_219de94
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_021A91B8
	pop {r4, pc}
	.align 2, 0
_0219DBA8: .word 0x0219DE59
_0219DBAC: .word ovy173_219dc4c
	thumb_func_end ovy173_219db84
_0219DBB0:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy173_219dbb4
ovy173_219dbb4: ; 0x0219DBB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_021A91C8
	ldr r0, [r5, #4]
	bl sub_021A9214
	cmp r0, #0
	bne _0219DBD2
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_021A9220
_0219DBD2:
	ldr r0, [r5]
	mov r1, #0
	mov r6, #0
	bl sub_021A8384
	add r4, sp, #0
	strh r0, [r4, #4]
	ldr r0, [r5]
	mov r1, #1
	mov r7, #1
	bl sub_021A8384
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4]
	ldrh r0, [r4, #6]
	strh r0, [r4, #2]
	ldrh r0, [r5, #8]
	bl sub_02044304
	ldr r2, _0219DC48 ; =0xFFF40000
	asr r1, r0, #0x1f
	asr r3, r2, #0x14
	blx sub_0208D60C
	mov r2, #6
	lsl r3, r7, #0xb
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	lsl r0, r1, #4
	ldrsh r2, [r4, r2]
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r4, #6]
	mov r2, sp
	ldrh r1, [r4, #4]
	ldr r0, [r5, #4]
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r4, #6]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl sub_021A91F4
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r4, #2]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl sub_021A9278
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DC48: .word 0xFFF40000
	thumb_func_end ovy173_219dbb4

	thumb_func_start ovy173_219dc4c
ovy173_219dc4c: ; 0x0219DC4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5]
	mov r1, #0
	mov r6, #0
	bl sub_021A8384
	add r4, sp, #0
	strh r0, [r4, #4]
	ldr r0, [r5]
	mov r1, #1
	bl sub_021A8384
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4]
	ldrh r0, [r4, #6]
	strh r0, [r4, #2]
	mov r0, #8
	ldrsh r0, [r5, r0]
	sub r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r0, #0
	ble _0219DCC0
	mov r1, #6
	mov r7, #6
	blx sub_0208D65C
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
	mov r0, #0xb4
	mul r0, r1
	mov r1, #6
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02044304
	asr r1, r0, #0x1f
	lsr r3, r0, #0x12
	lsl r1, r1, #0xe
	orr r1, r3
	mov r3, #8
	lsl r0, r0, #0xe
	lsl r3, r3, #8
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	lsl r0, r1, #4
	ldrsh r2, [r4, r7]
	asr r0, r0, #0x10
	sub r0, r2, r0
	strh r0, [r4, #6]
_0219DCC0:
	add r4, sp, #0
	ldrh r1, [r4, #4]
	mov r2, sp
	ldr r0, [r5, #4]
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r4, #6]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl sub_021A91F4
	mov r2, sp
	ldrh r1, [r4]
	ldr r0, [r5, #4]
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r4, #2]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl sub_021A9278
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_021A9244
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219dc4c

	thumb_func_start ovy173_219dcf8
ovy173_219dcf8: ; 0x0219DCF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7]
	mov r1, #6
	bl sub_021A8384
	add r4, r0, #0
	ldr r0, [r7]
	mov r1, #4
	bl sub_021A8384
	add r6, r0, #0
	ldr r0, [r7]
	mov r1, #5
	bl sub_021A8384
	cmp r0, #0
	beq _0219DD22
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DD22:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _0219DD2C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219DD2C:
	bl sub_0203DF20
	mov r7, #2
	tst r0, r7
	beq _0219DD38
	mov r7, #3
_0219DD38:
	bl sub_0203DF20
	mov r1, #0x40
	tst r0, r1
	beq _0219DD50
	cmp r4, #0
	bne _0219DD48
	b _0219DD8E
_0219DD48:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	b _0219DD9C
_0219DD50:
	bl sub_0203DF20
	mov r1, #0x80
	tst r0, r1
	beq _0219DD68
	cmp r4, #1
	bne _0219DD60
	b _0219DD8E
_0219DD60:
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	b _0219DD9C
_0219DD68:
	bl sub_0203DF20
	mov r1, #0x20
	tst r0, r1
	beq _0219DD80
	cmp r4, #2
	bne _0219DD78
	b _0219DD8E
_0219DD78:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	b _0219DD9C
_0219DD80:
	bl sub_0203DF20
	mov r1, #0x10
	tst r0, r1
	beq _0219DDA2
	cmp r4, #3
	bne _0219DD96
_0219DD8E:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	b _0219DD9C
_0219DD96:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
_0219DD9C:
	add r3, r6, #0
	bl ovy173_219de74
_0219DDA2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219dcf8

	thumb_func_start ovy173_219dda8
ovy173_219dda8: ; 0x0219DDA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0219DDFA
	ldr r0, [r4, #4]
	bl sub_021A91D4
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_021A91B8
	mov r0, #0x57
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #4
	ldr r0, [r0]
	bl sub_021A8384
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #4
	bl sub_021A8384
	cmp r0, r6
	bne _0219DDF0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219DB08
	b _0219DDFA
_0219DDF0:
	ldrb r2, [r4, #0xb]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_219ded0
_0219DDFA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_219dda8
_0219DE00:
	.byte 0x08, 0x20, 0x0A, 0x5E, 0x52, 0x1C, 0x0A, 0x81, 0x08, 0x5E, 0x2D, 0x28, 0x01, 0xDD, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy173_219de18
ovy173_219de18: ; 0x0219DE18
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r5, #8
	add r6, r0, #0
	ldrsh r0, [r4, r5]
	sub r0, r0, #1
	strh r0, [r4, #8]
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bgt _0219DE54
	lsl r0, r5, #7
	bl sub_02005748
	add r5, #0xf8
	add r0, r0, r5
	strh r0, [r4, #8]
	mov r0, #4
	bl sub_02005748
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #4
	bl sub_021A8384
	add r3, r0, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	bl ovy173_219de74
_0219DE54:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_219de18
_0219DE58:
	.byte 0x08, 0x20, 0x0A, 0x5E, 0x52, 0x1E, 0x0A, 0x81
	.byte 0x08, 0x5E, 0x00, 0x28, 0x01, 0xDA, 0x1C, 0x20, 0x08, 0x81, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy173_219de74
ovy173_219de74: ; 0x0219DE74
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	ldr r1, _0219DE90 ; =0x0000059C
	strb r3, [r4, #3]
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl sub_021A9924
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219DE90: .word 0x0000059C
	thumb_func_end ovy173_219de74

	thumb_func_start ovy173_219de94
ovy173_219de94: ; 0x0219DE94
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, [r4]
	mov r1, #6
	bl sub_021A8384
	add r7, r0, #0
	ldr r0, [r4]
	mov r1, #4
	bl sub_021A8384
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy173_219de74
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219de94

	thumb_func_start sub_0219DEBC
sub_0219DEBC: ; 0x0219DEBC
	ldr r1, [r0, #0x18]
	ldr r0, _0219DECC ; =ovy173_219dbb4
	cmp r1, r0
	beq _0219DEC8
	mov r0, #1
	bx lr
_0219DEC8:
	mov r0, #0
	bx lr
	.align 2, 0
_0219DECC: .word ovy173_219dbb4
	thumb_func_end sub_0219DEBC

	thumb_func_start ovy173_219ded0
ovy173_219ded0: ; 0x0219DED0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	beq _0219DEDE
	cmp r4, #1
	beq _0219DEE4
	b _0219DEE8
_0219DEDE:
	bl ovy173_219db44
	b _0219DEE8
_0219DEE4:
	bl ovy173_219db84
_0219DEE8:
	strb r4, [r5, #0xb]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219ded0

	thumb_func_start ovy173_219deec
ovy173_219deec: ; 0x0219DEEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	add r6, r3, #0
	mov r7, #0
	blx MI_CpuFill8
	ldr r3, [r5, #4]
	add r0, r6, #0
	lsl r3, r3, #0x10
	mov r1, #9
	add r2, r4, #4
	lsr r3, r3, #0x10
	bl sub_0204B354
	str r0, [r4]
	mov r0, #0xf
	strb r7, [r4, #9]
	strb r0, [r4, #8]
	ldrb r0, [r4, #9]
	lsl r1, r0, #1
	ldr r0, _0219DF24 ; =0x021A6268
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DF24: .word 0x021A6268
	thumb_func_end ovy173_219deec

	thumb_func_start ovy173_219df28
ovy173_219df28: ; 0x0219DF28
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_219df28

	thumb_func_start ovy173_219df40
ovy173_219df40: ; 0x0219DF40
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ovy173_219df54
	add r0, r4, #0
	bl ovy173_219dfbc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_219df40

	thumb_func_start ovy173_219df54
ovy173_219df54: ; 0x0219DF54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0219DFB6
	ldrb r0, [r5, #9]
	mov r6, #2
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #9]
	ldrb r1, [r5, #9]
	ldr r0, _0219DFB8 ; =0x021A6268
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	cmp r1, #1
	strh r0, [r5, #0xa]
	beq _0219DF8A
	mov r6, #1
_0219DF8A:
	mov r4, #0
	mov r7, #1
_0219DF8E:
	add r0, r7, #0
	ldrb r1, [r5, #8]
	lsl r0, r4
	tst r0, r1
	beq _0219DFB0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219E044
	add r1, r4, #1
	lsl r1, r1, #1
	add r2, r0, #0
	mov r0, #0xf
	add r1, #0xe0
	mov r3, #2
	bl sub_0205FA10
_0219DFB0:
	add r4, r4, #1
	cmp r4, #4
	blt _0219DF8E
_0219DFB6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DFB8: .word 0x021A6268
	thumb_func_end ovy173_219df54

	thumb_func_start ovy173_219dfbc
ovy173_219dfbc: ; 0x0219DFBC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0xd]
	mov r0, #0
	mov r1, #0
	lsl r5, r3, #2
	ldr r3, _0219E034 ; =0x021A626C
	mov r2, #0
	ldrb r3, [r3, r5]
	cmp r3, #1
	bne _0219DFE2
	mov r3, #0xe
	ldrsh r5, [r4, r3]
	sub r5, r5, #1
	strh r5, [r4, #0xe]
	ldrsh r3, [r4, r3]
	cmp r3, #0
	bgt _0219DFEC
	b _0219DFEA
_0219DFE2:
	ldrb r3, [r4, #0x10]
	cmp r3, #0
	beq _0219DFEC
	strb r0, [r4, #0x10]
_0219DFEA:
	mov r2, #1
_0219DFEC:
	cmp r2, #0
	beq _0219E014
	ldrb r0, [r4, #0xd]
	add r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	blo _0219E004
	add r0, r4, #0
	bl sub_0219E050
	pop {r3, r4, r5, pc}
_0219E004:
	lsl r2, r0, #2
	ldr r0, _0219E038 ; =0x021A626D
	ldr r1, _0219E03C ; =0x021A626F
	ldrb r0, [r0, r2]
	ldrb r1, [r1, r2]
	strh r0, [r4, #0xe]
	ldr r0, _0219E040 ; =0x021A626E
	ldrb r0, [r0, r2]
_0219E014:
	cmp r0, #0
	beq _0219E030
	add r0, r4, #0
	bl sub_0219E044
	ldrb r1, [r4, #0xc]
	add r2, r0, #0
	mov r0, #0xf
	add r1, r1, #1
	lsl r1, r1, #1
	add r1, #0xe0
	mov r3, #2
	bl sub_0205FA10
_0219E030:
	pop {r3, r4, r5, pc}
	nop
_0219E034: .word 0x021A626C
_0219E038: .word 0x021A626D
_0219E03C: .word 0x021A626F
_0219E040: .word 0x021A626E
	thumb_func_end ovy173_219dfbc

	thumb_func_start sub_0219E044
sub_0219E044: ; 0x0219E044
	ldr r0, [r0, #4]
	ldr r2, [r0, #0xc]
	add r0, r1, #1
	lsl r0, r0, #1
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0219E044

	thumb_func_start sub_0219E050
sub_0219E050: ; 0x0219E050
	ldrb r1, [r0, #0xc]
	mov r2, #1
	ldrb r3, [r0, #8]
	lsl r2, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219E050

	thumb_func_start sub_0219E06C
sub_0219E06C: ; 0x0219E06C
	mov r1, #1
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E06C

	thumb_func_start ovy173_219e074
ovy173_219e074: ; 0x0219E074
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	beq _0219E084
	bl sub_0219E050
_0219E084:
	mov r0, #1
	lsl r0, r4
	lsl r0, r0, #0x18
	ldrb r1, [r5, #8]
	lsr r0, r0, #0x18
	strb r4, [r5, #0xc]
	eor r0, r1
	strb r0, [r5, #8]
	add r0, r5, #0
	bl sub_0219E06C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219e074

	thumb_func_start ovy173_219e09c
ovy173_219e09c: ; 0x0219E09C
	push {r3, lr}
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	beq _0219E0A8
	bl sub_0219E06C
_0219E0A8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy173_219e09c

	thumb_func_start sub_0219E0AC
sub_0219E0AC: ; 0x0219E0AC
	ldr r0, _0219E0B0 ; =0x021A6298
	bx lr
	.align 2, 0
_0219E0B0: .word 0x021A6298
	thumb_func_end sub_0219E0AC

	thumb_func_start sub_0219E0B4
sub_0219E0B4: ; 0x0219E0B4
	mov r0, #9
	bx lr
	thumb_func_end sub_0219E0B4

	thumb_func_start ovy173_219e0b8
ovy173_219e0b8: ; 0x0219E0B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0219E0AC
	add r4, r0, #0
	bl sub_0219E0B4
	add r2, r0, #0
	mov r0, #0xa
	lsl r0, r0, #8
	add r1, r4, #0
	add r3, r5, #0
	bl sub_02040C20
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219e0b8

	thumb_func_start sub_0219E0D8
sub_0219E0D8: ; 0x0219E0D8
	mov r0, #0xa
	ldr r3, _0219E0E0 ; =sub_02040C64
	lsl r0, r0, #8
	bx r3
	.align 2, 0
_0219E0E0: .word sub_02040C64
	thumb_func_end sub_0219E0D8
_0219E0E4:
	.byte 0x00, 0x2B, 0x70, 0x47, 0x00, 0x2B, 0x70, 0x47, 0x00, 0x2B, 0x70, 0x47

	thumb_func_start sub_0219E0F0
sub_0219E0F0: ; 0x0219E0F0
	lsl r1, r0, #2
	ldr r0, _0219E0F8 ; =0x021A62E0
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_0219E0F8: .word 0x021A62E0
	thumb_func_end sub_0219E0F0

	thumb_func_start sub_0219E0FC
sub_0219E0FC: ; 0x0219E0FC
	lsl r1, r0, #2
	ldr r0, _0219E104 ; =0x021A73C0
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_0219E104: .word 0x021A73C0
	thumb_func_end sub_0219E0FC

	thumb_func_start ovy173_219e108
ovy173_219e108: ; 0x0219E108
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_020232D8
	mov r0, #0x21
	str r0, [sp]
	ldr r1, _0219E130 ; =0x00001334
	ldr r0, _0219E134 ; =0x021A710A
	ldr r1, [r4, r1]
	mov r2, #0xe
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r3, #0
	mov r5, #0xe
	bl sub_020254E0
	add r5, #0xfa
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	nop
_0219E130: .word 0x00001334
_0219E134: .word 0x021A710A
	thumb_func_end ovy173_219e108

	thumb_func_start ovy173_219e138
ovy173_219e138: ; 0x0219E138
	push {r3, r4, r5, lr}
	mov r5, #0x42
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02025634
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0219E152
	mov r1, #0
	str r1, [r4, r5]
_0219E152:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219e138

	thumb_func_start ovy173_219e154
ovy173_219e154: ; 0x0219E154
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219E196
	ldr r0, [r5, #4]
	mov r2, #9
	bl sub_02009F80
	add r2, r5, #0
	add r2, #0xf0
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r2, [r2]
	add r1, r4, #0
	bl sub_0200A100
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xdc
	add r5, #0xf0
	ldr r0, [r0]
	ldr r2, [r5]
	mov r1, #0
	add r3, r6, #0
	bl sub_0202437C
_0219E196:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_219e154

	thumb_func_start ovy173_219e19c
ovy173_219e19c: ; 0x0219E19C
	push {r4, lr}
	add r4, r0, #0
	beq _0219E1AE
	mov r1, #0
	bl sub_02024EEC
	add r0, r4, #0
	bl sub_02048210
_0219E1AE:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_219e19c

	thumb_func_start ovy173_219e1b4
ovy173_219e1b4: ; 0x0219E1B4
	push {r3, r4, r5, lr}
	mov r5, #1
	add r4, r0, #0
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219E1CA
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_0219E1CA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219e1b4

	thumb_func_start ovy173_219e1cc
ovy173_219e1cc: ; 0x0219E1CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy173_219e1b4
	mov r5, #0x6e
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219E1E8
	ldr r0, [r4, r5]
	bl sub_02021C44
_0219E1E8:
	mov r5, #0x6f
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219E1FA
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, r5]
_0219E1FA:
	mov r5, #0x19
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl ovy173_219e19c
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219e1cc

	thumb_func_start ovy173_219e208
ovy173_219e208: ; 0x0219E208
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r6, #1
	cmp r1, #0
	beq _0219E252
	sub r0, #0x2c
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _0219E22A
	mov r0, #0x9b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202E8D8
_0219E22A:
	mov r4, #0x9b
	lsl r4, r4, #2
	add r1, r4, #0
	sub r1, #0xb0
	ldr r1, [r5, r1]
	add r0, r5, r4
	bl sub_0202E68C
	add r6, r0, #0
	beq _0219E252
	add r0, r4, #0
	sub r0, #0xb0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E252
	bl sub_020223CC
	mov r0, #0
	sub r4, #0xb0
	str r0, [r5, r4]
_0219E252:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_219e208

	thumb_func_start ovy173_219e258
ovy173_219e258: ; 0x0219E258
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	bl sub_02017BCC
	add r0, r5, #0
	bl ovy173_219e1b4
	mov r4, #0x19
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219E290
	add r4, #0x28
	ldr r0, [r5, r4]
	bl sub_02021C44
_0219E290:
	mov r4, #0x6f
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219E2A2
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, r4]
_0219E2A2:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #2
	mov r2, #0x13
	mov r3, #0x1b
	bl BmpWin_CreateDynamic
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	cmp r7, #0
	beq _0219E2CA
	add r0, r5, #0
	add r0, #0xe4
	b _0219E2CE
_0219E2CA:
	add r0, r5, #0
	add r0, #0xe0
_0219E2CE:
	add r2, r5, #0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0xdc
	add r1, #0xf4
	add r2, #0xf0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	mov r4, #0x19
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	mov r6, #0xff
	bl BmpWin_BitmapFill
	ldr r2, _0219E394 ; =0x00001334
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xe
	mov r7, #0xe
	bl sub_02024E80
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0219E33C
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xf4
	ldr r3, [r3]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
	b _0219E37A
_0219E33C:
	bl sub_02017BCC
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r0, [sp, #4]
	lsl r0, r7, #5
	ldr r0, [r5, r0]
	add r3, #0xf4
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x21
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [r5, r4]
	ldr r3, [r3]
	mov r1, #0
	mov r2, #0
	bl sub_02022268
	add r6, #0xbd
	add r4, #0xdc
	str r0, [r5, r6]
	add r0, r5, r4
	mov r1, #2
	bl sub_0202E678
_0219E37A:
	mov r4, #0x19
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	ldr r0, [r5, r4]
	bl sub_0204826C
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E394: .word 0x00001334
	thumb_func_end ovy173_219e258

	thumb_func_start ovy173_219e398
ovy173_219e398: ; 0x0219E398
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x67
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	add r7, r2, #0
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ovy173_219e258
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219e398

	thumb_func_start ovy173_219e3bc
ovy173_219e3bc: ; 0x0219E3BC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x67
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r1, #0
	add r7, r2, #0
	bl ovy173_219e19c
	str r0, [r5, r4]
	bl sub_020232D8
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ovy173_219e258
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219e3bc

	thumb_func_start ovy173_219e3e4
ovy173_219e3e4: ; 0x0219E3E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e1b4
	mov r4, #0x67
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0xc
	str r0, [r5, r1]
	mov r0, #0x10
	str r0, [sp]
	mov r7, #0xf
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #4
	mov r2, #4
	mov r3, #0x17
	bl BmpWin_CreateDynamic
	str r0, [r5, r4]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x21
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r7, #5
	bl sub_0204B0B8
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl sub_020484B4
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r2, _0219E4B8 ; =0x00001334
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe4
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r5, #0
	add r2, r5, #0
	add r0, #0xdc
	add r1, #0xf4
	add r2, #0xf0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	bl sub_020232D8
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xf4
	ldr r3, [r3]
	mov r1, #4
	mov r2, #4
	bl sub_02021CFC
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219E4B8: .word 0x00001334
	thumb_func_end ovy173_219e3e4

	thumb_func_start ovy173_219e4bc
ovy173_219e4bc: ; 0x0219E4BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202651C
	ldr r0, [r0, #8]
	bl sub_021A61D0
	cmp r0, #0
	bne _0219E4F4
	cmp r4, #4
	beq _0219E4D8
	cmp r4, #5
	bne _0219E4E6
_0219E4D8:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xf
	mov r3, #2
	bl sub_02025A70
	pop {r3, r4, r5, pc}
_0219E4E6:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_02025A70
	pop {r3, r4, r5, pc}
_0219E4F4:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl sub_02025A70
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219e4bc

	thumb_func_start ovy173_219e504
ovy173_219e504: ; 0x0219E504
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r7, r3, #0
	str r1, [sp, #0xc]
	add r6, r2, #0
	bl sub_02021C44
	bl sub_020232D8
	add r0, r7, #0
	mov r1, #0x21
	bl sub_02024F60
	add r1, r5, #0
	add r1, #0xb8
	mov r4, #0
	str r0, [r1]
	cmp r7, #0
	ble _0219E554
_0219E532:
	mov r0, #0x21
	lsl r2, r4, #3
	str r0, [sp]
	add r3, r6, r2
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb8
	add r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r6, r2]
	ldr r3, [r3, #4]
	bl sub_02024FBC
	add r4, r4, #1
	cmp r4, r7
	blt _0219E532
_0219E554:
	mov r4, #0x69
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	ldr r0, [sp, #0x28]
	mov r2, #5
	cmp r0, #5
	bne _0219E56A
	mov r2, #0xd
_0219E56A:
	lsl r0, r7, #0x19
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	ldr r3, [sp, #0x2c]
	mov r1, #0x1f
	sub r1, r1, r3
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	mov r0, #2
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BmpWin_CreateDynamic
	mov r4, #0x69
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl sub_0204826C
	ldr r2, _0219E670 ; =0x00001330
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
	add r0, r4, #0
	ldr r1, [r5, r4]
	add r0, #8
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r2, [r0]
	ldr r0, [sp, #0xc]
	str r2, [r0]
	add r0, r4, #0
	add r0, #0x10
	ldr r2, [r5, r0]
	ldr r0, [sp, #0xc]
	str r2, [r0, #0x28]
	add r0, r4, #0
	add r0, #8
	add r2, r5, r0
	ldr r0, [sp, #0xc]
	str r2, [r0, #0x24]
	add r0, r5, #0
	add r0, #0xe8
	ldr r2, [r0]
	ldr r0, [sp, #0xc]
	str r2, [r0, #0x2c]
	ldr r2, [sp, #0x28]
	str r5, [r0, #0x18]
	lsl r2, r2, #1
	add r3, r5, r2
	add r2, r4, #0
	add r2, #0x90
	ldrh r2, [r3, r2]
	mov r3, #0x21
	bl sub_020256F0
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219E622
	add r6, r4, #0
	add r6, #0x10
	add r4, #0x10
_0219E612:
	ldr r0, [r5, r6]
	bl sub_02021A3C
	ldr r0, [r5, r4]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _0219E612
_0219E622:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0x21
	bl sub_02026510
	mov r0, #2
	bl sub_02045B7C
	mov r4, #0x6e
	lsl r4, r4, #2
	add r0, r4, #0
	sub r0, #8
	ldrb r0, [r5, r0]
	ldr r6, [r5, r4]
	cmp r0, #0
	beq _0219E66A
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E66A
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	sub r4, #8
	strb r0, [r5, r4]
_0219E66A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E670: .word 0x00001330
	thumb_func_end ovy173_219e504

	thumb_func_start ovy173_219e674
ovy173_219e674: ; 0x0219E674
	push {r3, lr}
	sub sp, #8
	mov r1, #4
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	ldr r1, _0219E690 ; =0x021A74E0
	ldr r2, _0219E694 ; =0x021A7430
	mov r3, #5
	bl ovy173_219e504
	add sp, #8
	pop {r3, pc}
	nop
_0219E690: .word 0x021A74E0
_0219E694: .word 0x021A7430
	thumb_func_end ovy173_219e674

	thumb_func_start ovy173_219e698
ovy173_219e698: ; 0x0219E698
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	mov r0, #2
	ldr r5, _0219E834 ; =0x021A7190
	str r0, [sp, #0xc]
	add r3, sp, #0x10
	mov r2, #6
_0219E6A8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219E6A8
	ldr r0, [r5]
	str r0, [r3]
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219D0D4
	sub r0, r0, #1
	bl sub_021A5D98
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A16E0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	bl sub_021A61D0
	ldr r0, [r4, #8]
	bl sub_021A61D0
	mov r0, #2
	mov r1, #0x21
	bl sub_02024F60
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	mov r5, #0
	add r7, sp, #0x10
_0219E6F0:
	cmp r5, #0
	bne _0219E714
	cmp r6, #2
	beq _0219E714
	cmp r6, #5
	beq _0219E714
	cmp r6, #1
	beq _0219E714
	ldrh r0, [r7, #0xe]
	sub r0, r0, #1
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xc]
	sub r0, r0, #1
	strh r0, [r7, #0xc]
	ldr r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #0xc]
	b _0219E738
_0219E714:
	ldr r0, _0219E838 ; =0x021A7120
	lsl r3, r5, #3
	add r0, r0, r3
	mov ip, r0
	mov r0, #0x21
	ldr r2, _0219E838 ; =0x021A7120
	str r0, [sp]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xb8
	add r1, #0xe0
	ldr r2, [r2, r3]
	mov r3, ip
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r3, [r3, #4]
	bl sub_02024FBC
_0219E738:
	add r5, r5, #1
	cmp r5, #2
	blo _0219E6F0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	mov r5, #3
	lsl r0, r0, #0x19
	sub r2, r5, r2
	lsr r0, r0, #0x18
	lsl r2, r2, #1
	str r0, [sp]
	mov r3, #0xf
	add r2, #0xb
	lsl r2, r2, #0x18
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0x10
	lsr r2, r2, #0x18
	bl BmpWin_CreateDynamic
	mov r5, #0x69
	lsl r5, r5, #2
	ldr r2, _0219E83C ; =0x00001334
	str r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
	add r0, r5, #0
	ldr r1, [r4, r5]
	add r0, #8
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc
	strb r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r3, #0x21
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x3c]
	add r0, sp, #0x10
	bl sub_020256F0
	add r1, r4, #0
	add r1, #0xbc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219E7DE
	add r6, r5, #0
	add r6, #0x10
	add r5, #0x10
_0219E7CE:
	ldr r0, [r4, r6]
	bl sub_02021A3C
	ldr r0, [r4, r5]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _0219E7CE
_0219E7DE:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0x21
	bl sub_02026510
	mov r5, #0x69
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204826C
	mov r0, #2
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x14
	ldr r6, [r4, r0]
	add r0, r5, #0
	add r0, #0xc
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0219E830
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E830
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	add r5, #0xc
	strb r0, [r4, r5]
_0219E830:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E834: .word 0x021A7190
_0219E838: .word 0x021A7120
_0219E83C: .word 0x00001334
	thumb_func_end ovy173_219e698

	thumb_func_start ovy173_219e840
ovy173_219e840: ; 0x0219E840
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_02008DD0
	mov r7, #0x65
	lsl r7, r7, #2
	add r6, r0, #0
	ldr r0, [r5, r7]
	cmp r0, #0
	bne _0219E85C
	b _0219E9AC
_0219E85C:
	bl sub_020232D8
	add r0, r6, #0
	mov r1, #0x21
	bl sub_02008BB0
	add r4, r0, #0
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	add r0, r6, #0
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _0219E886
	mov r0, #5
	mov r1, #6
	b _0219E88A
_0219E886:
	mov r0, #3
	mov r1, #4
_0219E88A:
	mov r2, #0
	bl sub_020232E8
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	mov r2, #0
	str r1, [sp]
	mov r1, #0x20
	add r3, r4, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16E0
	add r4, r0, #0
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16EC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0xc
	bl ovy173_219f27c
	add r7, r0, #0
	cmp r6, #4
	bne _0219E922
	cmp r4, #4
	bne _0219E922
	bl sub_02151CB8
	mov r1, #0
	sub r1, r1, #1
	cmp r0, r1
	bne _0219E8E8
	b _0219E922
_0219E8E8:
	bl sub_02151CB8
	add r1, r0, #0
	ldr r0, [r5, #4]
	mov r2, #9
	bl sub_02009F80
	cmp r0, #0
	bne _0219E900
	mov r0, #5
	mov r1, #6
	b _0219E908
_0219E900:
	cmp r0, #1
	bne _0219E90E
	mov r0, #3
	mov r1, #4
_0219E908:
	mov r2, #0
	bl sub_020232E8
_0219E90E:
	bl sub_02151CB8
	add r2, r5, #0
	add r2, #0xf0
	add r1, r0, #0
	ldr r0, [r5, #4]
	ldr r2, [r2]
	bl sub_0200A100
	b _0219E934
_0219E922:
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
_0219E934:
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xf0
	ldr r3, [r3]
	mov r1, #0x66
	mov r2, #0
	bl sub_02021CFC
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	ldr r0, _0219E9B0 ; =0x00000898
	mov r1, #1
	add r0, r5, r0
	mov r2, #2
	mov r3, #1
	bl ovy173_21a1e58
	ldr r0, [r5, #8]
	bl sub_021A61D0
	cmp r0, #0
	beq _0219E978
	mov r0, #0xf
	b _0219E97A
_0219E978:
	mov r0, #0xb
_0219E97A:
	add r0, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219E9B0 ; =0x00000898
	mov r1, #1
	add r0, r5, r0
	mov r2, #0x1a
	mov r3, #1
	bl ovy173_21a1d68
	mov r4, #0x65
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_020484B4
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	mov r0, #3
	bl sub_02044F90
_0219E9AC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E9B0: .word 0x00000898
	thumb_func_end ovy173_219e840

	thumb_func_start ovy173_219e9b4
ovy173_219e9b4: ; 0x0219E9B4
	push {r4, r5, lr}
	sub sp, #0xc
	mov r4, #0x66
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	mov r0, #2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	mov r0, #3
	mov r1, #5
	mov r3, #0x16
	bl BmpWin_CreateDynamic
	str r0, [r5, r4]
	bl sub_0204826C
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf8
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x12
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy173_219e9b4

	thumb_func_start ovy173_219ea18
ovy173_219ea18: ; 0x0219EA18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy173_219e1cc
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219EA4E
	bl sub_02048210
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl sub_02025A10
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	add r0, r4, #0
	add r0, #0xb8
	str r5, [r0]
_0219EA4E:
	mov r5, #0x66
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EA60
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_0219EA60:
	mov r5, #0x19
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EA72
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_0219EA72:
	mov r5, #0x6a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EA84
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_0219EA84:
	mov r5, #0x65
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EA96
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_0219EA96:
	mov r5, #0x1a
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EAA8
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_0219EAA8:
	mov r5, #0x67
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EAC6
	bl sub_020484B4
	mov r0, #2
	bl sub_02045B7C
	ldr r0, [r4, r5]
	bl ovy173_219e19c
	mov r0, #0
	str r0, [r4, r5]
_0219EAC6:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EAE0
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl sub_02025A10
	add r0, r4, #0
	add r0, #0xb4
	str r5, [r0]
_0219EAE0:
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219EAF6
	bl sub_02024FAC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
_0219EAF6:
	mov r5, #0x42
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EB08
	bl sub_020256B0
	mov r0, #0
	str r0, [r4, r5]
_0219EB08:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219ea18

	thumb_func_start ovy173_219eb0c
ovy173_219eb0c: ; 0x0219EB0C
	push {r3, r4, r5, lr}
	mov r4, #0x5f
	lsl r4, r4, #2
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x21
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0xf4
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0x21
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0x21
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	mov r0, #0xb4
	mov r1, #0x21
	bl GFL_StrBufCreate
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	mov r0, #0x21
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x3c
	str r0, [r5, r1]
	mov r0, #0x21
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x38
	str r0, [r5, r1]
	mov r0, #0x21
	mov r1, #0x21
	mov r2, #2
	mov r3, #0
	bl GFL_TCBExMgrCreate
	add r4, #0x44
	str r0, [r5, r4]
	mov r0, #0xf
	mov r1, #1
	mov r2, #0
	mov r3, #0x21
	bl sub_0202E7A4
	mov r1, #0x9b
	lsl r1, r1, #4
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219eb0c

	thumb_func_start ovy173_219eb88
ovy173_219eb88: ; 0x0219EB88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy173_219ee34
	add r0, r5, #0
	bl ovy173_219ed90
	mov r0, #0x9b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202E818
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl GFL_StrBufFree
	mov r4, #0x6f
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219EBD0
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, r4]
_0219EBD0:
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl GFL_StrBufFree
	mov r4, #7
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl GFL_TCBExMgrFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02021C44
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02021C44
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02021A18
	mov r0, #0
	sub r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219eb88

	thumb_func_start ovy173_219ec14
ovy173_219ec14: ; 0x0219EC14
	push {r4, r5, r6, lr}
	ldr r4, _0219EC50 ; =0x000008ED
	add r5, r0, #0
	add r6, r1, #0
	ldrb r1, [r5, r4]
	ldr r0, [r5, #4]
	mov r2, #9
	sub r1, r1, #1
	bl sub_02009F80
	add r4, #0x6b
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r1, r6, #0
	bl ovy173_219ee8c
	mov r0, #2
	mov r1, #0
	bl sub_02046D84
	mov r0, #8
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219EC50: .word 0x000008ED
	thumb_func_end ovy173_219ec14

	thumb_func_start ovy173_219ec54
ovy173_219ec54: ; 0x0219EC54
	push {r4, r5, r6, lr}
	ldr r4, _0219ECD4 ; =0x000008ED
	add r5, r0, #0
	add r6, r1, #0
	ldrb r1, [r5, r4]
	ldr r0, [r5, #4]
	mov r2, #9
	sub r1, r1, #1
	bl sub_02009F80
	add r0, r4, #0
	sub r0, #0x2d
	ldr r2, [r5, r0]
	mov r0, #6
	add r1, r2, #0
	ldr r2, [r2, #8]
	add r1, #0xc
	mov r3, #0
	bl sub_02045060
	mov r0, #7
	bl sub_02045708
	add r0, r4, #0
	add r0, #0x6f
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r4, #0
	add r0, #0x6b
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r1, r6, #0
	bl ovy173_219ee8c
	mov r0, #7
	bl sub_02045B7C
	add r0, r4, #0
	add r0, #0x6f
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add r4, #0x6b
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	mov r0, #2
	mov r1, #0
	bl sub_02046D84
	mov r0, #8
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219ECD4: .word 0x000008ED
	thumb_func_end ovy173_219ec54

	thumb_func_start ovy173_219ecd8
ovy173_219ecd8: ; 0x0219ECD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	ldr r2, _0219ED8C ; =0x021A71C4
	add r6, r1, #0
	ldrh r3, [r2]
	add r1, sp, #0x10
	add r5, r0, #0
	strh r3, [r1]
	ldrh r3, [r2, #2]
	strh r3, [r1, #2]
	ldrh r3, [r2, #4]
	strh r3, [r1, #4]
	ldrh r2, [r2, #6]
	strh r2, [r1, #6]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _0219ED04
	bl ovy173_219ed90
_0219ED04:
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #8
	bl sub_02009F80
	bl sub_0202B5E8
	add r6, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02034060
	lsl r3, r4, #0x10
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	str r0, [sp, #0xc]
	bl sub_020340A4
	mov r7, #0x61
	lsl r7, r7, #2
	str r0, [r5, r7]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl sub_02034074
	add r1, r7, #4
	str r0, [r5, r1]
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_020340C8
	add r1, r7, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r7, #0
	sub r0, #0x74
	add r2, r7, #4
	add r3, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r7]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl Oam_CreateSprite
	sub r1, r7, #4
	str r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED8C: .word 0x021A71C4
	thumb_func_end ovy173_219ecd8

	thumb_func_start ovy173_219ed90
ovy173_219ed90: ; 0x0219ED90
	push {r3, r4, r5, lr}
	mov r4, #6
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219EDC2
	bl sub_0204C108
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204BE64
	mov r0, #0
	str r0, [r5, r4]
_0219EDC2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219ed90

	thumb_func_start ovy173_219edc4
ovy173_219edc4: ; 0x0219EDC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r3, _0219EE2C ; =0x021A727C
	add r2, sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _0219EE30 ; =0x000009AC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219EE28
	add r0, sp, #0
	mov r1, #0
	mov r4, #0x20
	mov r2, #0x20
	blx MI_CpuFill8
	mov r0, #1
	str r6, [sp]
	add r4, #0xf0
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	add r1, r7, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	add r0, sp, #0
	bl sub_02199AA0
	ldr r1, _0219EE30 ; =0x000009AC
	mov r2, #0
	str r0, [r5, r1]
	mov r1, #1
	bl sub_02199D38
_0219EE28:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EE2C: .word 0x021A727C
_0219EE30: .word 0x000009AC
	thumb_func_end ovy173_219edc4

	thumb_func_start ovy173_219ee34
ovy173_219ee34: ; 0x0219EE34
	push {r3, r4, r5, lr}
	ldr r5, _0219EE4C ; =0x000009AC
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219EE48
	bl sub_02199B5C
	mov r0, #0
	str r0, [r4, r5]
_0219EE48:
	pop {r3, r4, r5, pc}
	nop
_0219EE4C: .word 0x000009AC
	thumb_func_end ovy173_219ee34

	thumb_func_start ovy173_219ee50
ovy173_219ee50: ; 0x0219EE50
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x20
	mov r1, #0x21
	mov r6, #0x21
	bl sub_0204AA30
	ldr r1, _0219EE88 ; =0x000009A8
	mov r3, #0
	ldr r1, [r5, r1]
	add r4, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r1, #0x16
	mov r2, #4
	str r6, [sp, #0xc]
	bl sub_0204AFB0
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0219EE88: .word 0x000009A8
	thumb_func_end ovy173_219ee50

	thumb_func_start ovy173_219ee8c
ovy173_219ee8c: ; 0x0219EE8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r1, [sp, #0xc]
	bl sub_020232D8
	ldr r4, _0219F1E8 ; =0x000008ED
	mov r2, #9
	ldrb r0, [r5, r4]
	sub r6, r0, #1
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_02009F80
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r5, #0
	add r1, r6, #0
	bl ovy173_21a5d50
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x21
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	sub r0, #0x3d
	add r1, #0xf8
	add r2, #0xf0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	add r4, #0x6b
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0x19
	mov r2, #0
	bl sub_02021CFC
	add r0, r6, #0
	bl sub_021A5D98
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl sub_021A16E0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl sub_021A16EC
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x1c
	bl ovy173_219f27c
	add r1, r0, #0
	cmp r1, #0x8d
	blt _0219EF32
	cmp r1, #0x90
	bgt _0219EF32
	sub r1, #0x51
_0219EF32:
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	bl GFL_MsgDataLoadStrbuf
	ldr r7, _0219F1EC ; =0x00000958
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	mov r4, #0xf1
	str r1, [sp]
	lsl r4, r4, #6
	add r3, r5, #0
	str r4, [sp, #4]
	add r3, #0xf0
	ldr r3, [r3]
	mov r1, #0x60
	mov r2, #0
	bl sub_02021D28
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf8
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x23
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0x68
	mov r2, #0
	bl sub_02021D28
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #2
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x24
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r1, r5, #0
	add r2, r5, #0
	sub r0, #0xa8
	add r1, #0xf8
	add r2, #0xf0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0xb0
	mov r2, #0x18
	bl sub_02021D28
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #3
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x25
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r1, r5, #0
	add r2, r5, #0
	sub r0, #0xa8
	add r1, #0xf8
	add r2, #0xf0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0xb0
	mov r2, #0x28
	bl sub_02021D28
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf8
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x26
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0x68
	mov r2, #0x40
	bl sub_02021D28
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #4
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x27
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r1, r5, #0
	add r2, r5, #0
	sub r0, #0xa8
	add r1, #0xf8
	add r2, #0xf0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0xbc
	mov r2, #0x40
	bl sub_02021D28
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf8
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x2a
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #8
	mov r2, #0x60
	bl sub_02021D28
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #7
	bl sub_02009F80
	add r2, r0, #0
	beq _0219F1E2
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #2
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #5
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #6
	bl sub_02009F80
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	sub r0, #0xa8
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x2c
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	add r1, r5, #0
	add r2, r5, #0
	sub r0, #0xa8
	add r1, #0xf8
	add r2, #0xf0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	str r4, [sp, #4]
	add r3, #0xf8
	ldr r3, [r3]
	mov r1, #0x98
	mov r2, #0x60
	bl sub_02021D28
_0219F1E2:
	ldr r4, _0219F1F0 ; =0x0000095C
	b _0219F1F4
	nop
_0219F1E8: .word 0x000008ED
_0219F1EC: .word 0x00000958
_0219F1F0: .word 0x0000095C
_0219F1F4:
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204826C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #7
	bl sub_02045B7C
	ldr r0, [sp, #0x14]
	sub r4, #0xc4
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #6
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, r4
	mov r2, #2
	mov r3, #1
	bl ovy173_21a1e58
	ldr r0, [sp, #0x18]
	bl sub_021A624C
	cmp r0, #0
	beq _0219F23E
	mov r0, #0x2f
	b _0219F240
_0219F23E:
	mov r0, #0x2b
_0219F240:
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219F278 ; =0x00000898
	mov r1, #6
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #1
	bl ovy173_21a1d68
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy173_219ecd8
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy173_219edc4
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F278: .word 0x00000898
	thumb_func_end ovy173_219ee8c

	thumb_func_start ovy173_219f27c
ovy173_219f27c: ; 0x0219F27C
	push {r3, r4, r5, lr}
	sub sp, #0x40
	add r4, r1, #0
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r5, _0219F2B4 ; =0x021A737C
	add r3, sp, #0
	mov r2, #8
_0219F29C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219F29C
	cmp r4, #0xf
	bls _0219F2AA
	mov r4, #0xf
_0219F2AA:
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x40
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219F2B4: .word 0x021A737C
	thumb_func_end ovy173_219f27c

	thumb_func_start ovy173_219f2b8
ovy173_219f2b8: ; 0x0219F2B8
	push {r3, lr}
	sub sp, #8
	cmp r1, #0
	beq _0219F2E2
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	ldr r2, _0219F31C ; =0x021A7450
	add r1, r3, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r1, #0x83
	str r1, [r2, #0x60]
	add r1, r3, #0
	add r1, #0x22
	ldrb r1, [r1]
	add r3, #0x20
	add r1, #0x87
	str r1, [r2, #0x68]
	ldrb r3, [r3]
	b _0219F2FE
_0219F2E2:
	ldr r1, _0219F320 ; =0x0000134C
	ldr r2, _0219F31C ; =0x021A7450
	ldrh r3, [r0, r1]
	add r1, r1, #2
	add r3, #0x83
	str r3, [r2, #0x60]
	ldrh r1, [r0, r1]
	add r1, #0x87
	str r1, [r2, #0x68]
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	add r1, #0x48
	ldrb r3, [r1]
_0219F2FE:
	mov r1, #0x8a
	sub r1, r1, r3
	str r1, [r2, #0x70]
	mov r1, #0
	str r1, [sp]
	mov r1, #0x1e
	str r1, [sp, #4]
	ldr r1, _0219F324 ; =0x021A7548
	ldr r2, _0219F328 ; =0x021A74B0
	mov r3, #6
	bl ovy173_219e504
	add sp, #8
	pop {r3, pc}
	nop
_0219F31C: .word 0x021A7450
_0219F320: .word 0x0000134C
_0219F324: .word 0x021A7548
_0219F328: .word 0x021A74B0
	thumb_func_end ovy173_219f2b8

	thumb_func_start ovy173_219f32c
ovy173_219f32c: ; 0x0219F32C
	push {r3, lr}
	sub sp, #8
	ldr r1, _0219F34C ; =0x021A7510
	mov r3, #5
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	mov r1, #1
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	ldr r1, _0219F350 ; =0x021A7514
	ldr r2, _0219F354 ; =0x021A7458
	bl ovy173_219e504
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0219F34C: .word 0x021A7510
_0219F350: .word 0x021A7514
_0219F354: .word 0x021A7458
	thumb_func_end ovy173_219f32c

	thumb_func_start ovy173_219f358
ovy173_219f358: ; 0x0219F358
	push {r3, lr}
	sub sp, #8
	ldr r1, _0219F378 ; =0x021A7510
	mov r3, #3
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	mov r1, #2
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	ldr r1, _0219F37C ; =0x021A7514
	ldr r2, _0219F380 ; =0x021A73E0
	bl ovy173_219e504
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_0219F378: .word 0x021A7510
_0219F37C: .word 0x021A7514
_0219F380: .word 0x021A73E0
	thumb_func_end ovy173_219f358

	thumb_func_start ovy173_219f384
ovy173_219f384: ; 0x0219F384
	push {r3, lr}
	sub sp, #8
	ldr r1, _0219F3A4 ; =0x021A7510
	mov r3, #3
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	str r3, [sp]
	mov r1, #0x14
	str r1, [sp, #4]
	ldr r1, _0219F3A8 ; =0x021A7514
	ldr r2, _0219F3AC ; =0x021A73F8
	bl ovy173_219e504
	add sp, #8
	pop {r3, pc}
	nop
_0219F3A4: .word 0x021A7510
_0219F3A8: .word 0x021A7514
_0219F3AC: .word 0x021A73F8
	thumb_func_end ovy173_219f384

	thumb_func_start ovy173_219f3b0
ovy173_219f3b0: ; 0x0219F3B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r4, #0x1a
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	str r1, [sp, #0xc]
	cmp r0, #0
	bne _0219F3DA
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #2
	mov r2, #5
	mov r3, #0x1e
	str r1, [sp, #8]
	bl BmpWin_CreateDynamic
	str r0, [r5, r4]
_0219F3DA:
	ldr r2, _0219F56C ; =0x00001334
	mov r0, #0x1a
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
	mov r0, #0x40
	mov r1, #0x21
	bl GFL_StrBufCreate
	str r0, [sp, #0x1c]
	mov r0, #0x40
	mov r1, #0x21
	bl GFL_StrBufCreate
	add r4, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020484B4
	ldr r0, [sp, #0xc]
	bl sub_0201FDF8
	mov r7, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _0219F42E
	b _0219F544
_0219F42E:
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x2c]
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x28]
_0219F43E:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl sub_0201FF08
	mov r1, #0x4c
	mov r2, #0
	add r6, r0, #0
	bl sub_0201CCF8
	cmp r0, #0
	bne _0219F53A
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x20]
	add r0, r6, #0
	mov r1, #0xad
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x24]
	add r0, r6, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r1, #0x74
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0x28
	add r6, r7, #0
	mul r6, r0
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xec
	ldr r1, [r1]
	ldr r3, [sp, #0x1c]
	str r1, [sp]
	add r1, r6, #1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #0x20
	bl sub_02021CFC
	ldr r0, [sp, #0x14]
	cmp r0, #2
	beq _0219F53A
	ldr r0, [sp, #0x20]
	cmp r0, #0x1d
	beq _0219F4EC
	cmp r0, #0x20
	bne _0219F4F2
_0219F4EC:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0219F53A
_0219F4F2:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0219F50C
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r1, #0x75
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x2c]
	ldr r0, [r0]
	b _0219F520
_0219F50C:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	mov r1, #0x76
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
_0219F520:
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r6, #0x1e
	str r1, [sp]
	lsl r1, r6, #0x10
	asr r1, r1, #0x10
	mov r2, #0x10
	add r3, r4, #0
	bl sub_02021CFC
_0219F53A:
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	cmp r7, r0
	bge _0219F544
	b _0219F43E
_0219F544:
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r4, #0x1a
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	mov r0, #2
	bl sub_02045B7C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F56C: .word 0x00001334
	thumb_func_end ovy173_219f3b0

	thumb_func_start ovy173_219f570
ovy173_219f570: ; 0x0219F570
	push {r3, r4, r5, lr}
	mov r5, #0x1a
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219F594
	bl sub_020484B4
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_02024EEC
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
_0219F594:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219f570

	thumb_func_start ovy173_219f598
ovy173_219f598: ; 0x0219F598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp, #0xc]
	add r5, r2, #0
	str r3, [sp, #0x10]
	bl sub_0201FDF8
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _0219F66C
	lsl r0, r5, #2
	add r0, r6, r0
	str r0, [sp, #0x14]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x2c]
	sub r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x28]
	add r0, #0x30
	str r0, [sp, #0x28]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x24]
	add r0, #0x34
	str r0, [sp, #0x24]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	add r0, #0x38
	str r0, [sp, #0x20]
	mov r0, #0x46
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	add r0, #0x38
	str r0, [sp, #0x1c]
_0219F5EA:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl sub_0201FF08
	bl sub_0201D624
	mov r1, #0x28
	add r2, r4, #0
	mul r2, r1
	add r2, #0x16
	add r1, sp, #0x30
	strh r2, [r1]
	mov r2, #0x36
	strh r2, [r1, #2]
	mov r2, #0
	strh r2, [r1, #4]
	strb r2, [r1, #6]
	strb r2, [r1, #7]
	ldr r1, [sp, #0x14]
	lsl r2, r4, #2
	add r7, r0, #0
	add r5, r1, r2
	bl sub_02020F40
	add r1, r0, #0
	mov r0, #0x21
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #0
	mov r3, #0
	bl Oam_LoadNCGRFile
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, sp, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x24]
	ldr r0, [r6, r0]
	ldr r1, [r5, r1]
	ldr r2, [r6, r2]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x20]
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_020210C0
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #1
	ldr r0, [r5, r0]
	bl sub_0204C378
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blt _0219F5EA
_0219F66C:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219f598

	thumb_func_start ovy173_219f670
ovy173_219f670: ; 0x0219F670
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #7
	mov r6, #0x21
	mov r1, #0x21
	str r2, [sp, #4]
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_02021114
	str r6, [sp]
	mov r6, #0x16
	lsl r6, r6, #4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_0204BC48
	add r1, r6, #0
	sub r1, #0x18
	str r0, [r5, r1]
	bl sub_02021154
	str r0, [sp, #8]
	bl sub_02021190
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r4, #0
	mov r3, #0x21
	bl Oam_LoadNCERFile
	sub r6, #0x14
	str r0, [r5, r6]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r4, #0
	bl ovy173_219f598
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #6
	add r3, r4, #0
	bl ovy173_219f598
	add r0, r5, #0
	bl ovy173_219f7b4
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219f670

	thumb_func_start ovy173_219f6e4
ovy173_219f6e4: ; 0x0219F6E4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0219F732
	mov r7, #0x15
	lsl r7, r7, #4
	mov r4, #0
	sub r7, #0x38
_0219F6FA:
	lsl r0, r4, #2
	add r5, r6, r0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F712
	bl sub_0204C108
	ldr r0, [r5, r7]
	bl sub_0204B98C
_0219F712:
	mov r0, #0x15
	mov r1, #0
	lsl r0, r0, #4
	add r4, r4, #1
	str r1, [r5, r0]
	cmp r4, #0xc
	blt _0219F6FA
	add r4, r0, #0
	sub r4, #8
	ldr r0, [r6, r4]
	bl sub_0204BCD0
	add r0, r4, #4
	ldr r0, [r6, r0]
	bl sub_0204BE64
_0219F732:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219f6e4

	thumb_func_start ovy173_219f734
ovy173_219f734: ; 0x0219F734
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_0219F73C:
	lsl r0, r4, #2
	add r5, r6, r0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F770
	cmp r7, #0
	beq _0219F75E
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	b _0219F76C
_0219F75E:
	mov r1, #0
	bl sub_0204C520
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
_0219F76C:
	bl sub_0204C124
_0219F770:
	add r4, r4, #1
	cmp r4, #6
	blt _0219F73C
	mov r5, #6
_0219F778:
	lsl r0, r5, #2
	add r4, r6, r0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219F7AC
	cmp r7, #0
	beq _0219F79A
	mov r1, #0
	bl sub_0204C520
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	b _0219F7A8
_0219F79A:
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
_0219F7A8:
	bl sub_0204C124
_0219F7AC:
	add r5, r5, #1
	cmp r5, #0xc
	blt _0219F778
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_219f734

	thumb_func_start ovy173_219f7b4
ovy173_219f7b4: ; 0x0219F7B4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x15
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_0219F7BE:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0219F7D6
	mov r1, #0
	bl sub_0204C520
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0204C124
_0219F7D6:
	add r4, r4, #1
	cmp r4, #0xc
	blt _0219F7BE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_219f7b4

	thumb_func_start ovy173_219f7e0
ovy173_219f7e0: ; 0x0219F7E0
	push {r4, lr}
	sub sp, #8
	ldr r1, _0219F80C ; =0x021A7510
	mov r3, #2
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x12]
	mov r1, #5
	str r1, [sp]
	mov r1, #0x12
	str r1, [sp, #4]
	ldr r1, _0219F810 ; =0x021A7514
	ldr r2, _0219F814 ; =0x021A73D0
	add r4, r0, #0
	bl ovy173_219e504
	add r4, #0xbc
	ldr r0, [r4]
	mov r1, #1
	bl sub_02026520
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0219F80C: .word 0x021A7510
_0219F810: .word 0x021A7514
_0219F814: .word 0x021A73D0
	thumb_func_end ovy173_219f7e0

	thumb_func_start ovy173_219f818
ovy173_219f818: ; 0x0219F818
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #4
	add r7, r2, #0
	add r4, r3, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	cmp r7, #1
	bne _0219F830
	mov r7, #1
	b _0219F832
_0219F830:
	mov r7, #0
_0219F832:
	mov r6, #0x67
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl ovy173_219e19c
	str r0, [r5, r6]
	cmp r4, #1
	bne _0219F846
	mov r0, #0xc
	b _0219F848
_0219F846:
	mov r0, #0x10
_0219F848:
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #2
	mov r2, #5
	mov r3, #0x1a
	bl BmpWin_CreateDynamic
	str r0, [r5, r6]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020484B4
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0204826C
	ldr r6, _0219F9C8 ; =0x00001334
	mov r0, #0x67
	ldr r2, [r5, r6]
	lsl r0, r0, #2
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
	bl sub_020232D8
	add r0, r6, #0
	add r1, r5, #0
	add r0, #0x14
	add r1, #0xdc
	ldr r0, [r5, r0]
	ldr r1, [r1]
	mov r2, #0x21
	add r3, r7, #0
	bl sub_0201F8B4
	add r1, r6, #0
	add r1, #0x10
	str r0, [r5, r1]
	cmp r4, #0
	bne _0219F8EC
	add r6, #0x14
	ldr r0, [r5, r6]
	mov r1, #0x21
	bl sub_0200B55C
	add r6, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	mov r2, #0
	str r1, [sp]
	mov r1, #0
	add r3, r6, #0
	bl sub_02021CFC
	add r0, r6, #0
	bl GFL_StrBufFree
	b _0219F928
_0219F8EC:
	cmp r4, #1
	beq _0219F928
	mov r1, #0x66
	cmp r4, #2
	beq _0219F8F8
	mov r1, #0x67
_0219F8F8:
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xf0
	ldr r3, [r3]
	mov r1, #0
	mov r2, #0
	bl sub_02021CFC
_0219F928:
	cmp r4, #1
	bne _0219F930
	mov r0, #0
	str r0, [sp, #0x14]
_0219F930:
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x1c]
	ldr r0, _0219F9CC ; =0x00001344
	mov r4, #0
	add r0, r5, r0
	str r0, [sp, #0x18]
_0219F940:
	mov r1, #1
	lsl r1, r4
	ldr r0, [sp, #0xc]
	tst r0, r1
	beq _0219F94E
	mov r7, #0x41
	b _0219F950
_0219F94E:
	mov r7, #0x11
_0219F950:
	lsl r0, r4, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	lsl r1, r4, #1
	add r0, r0, r1
	lsl r0, r0, #3
	str r0, [sp, #0x20]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r7, r7, #6
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	lsl r2, r2, #0x10
	ldr r3, _0219F9CC ; =0x00001344
	str r7, [sp, #4]
	ldr r6, [r5, r3]
	ldr r3, [sp, #0x10]
	mov r1, #0
	add r3, r6, r3
	ldr r3, [r3, #4]
	asr r2, r2, #0x10
	bl sub_02021D28
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	lsl r2, r2, #0x10
	ldr r3, [sp, #0x18]
	str r7, [sp, #4]
	ldr r6, [r3]
	ldr r3, [sp, #0x10]
	mov r1, #0x70
	add r3, r6, r3
	ldr r3, [r3, #0x1c]
	asr r2, r2, #0x10
	bl sub_02021D28
	add r4, r4, #1
	cmp r4, #6
	blt _0219F940
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0219F9C8: .word 0x00001334
_0219F9CC: .word 0x00001344
	thumb_func_end ovy173_219f818

	thumb_func_start ovy173_219f9d0
ovy173_219f9d0: ; 0x0219F9D0
	push {r3, r4, r5, lr}
	ldr r5, _0219F9F0 ; =0x00001344
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0201F950
	mov r0, #0
	str r0, [r4, r5]
	mov r5, #0x67
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl ovy173_219e19c
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	nop
_0219F9F0: .word 0x00001344
	thumb_func_end ovy173_219f9d0

	thumb_func_start ovy173_219f9f4
ovy173_219f9f4: ; 0x0219F9F4
	push {r3, r4, r5, lr}
	mov r5, #1
	add r4, r0, #0
	lsl r5, r5, #8
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219FA0A
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_0219FA0A:
	mov r1, #7
	mov r0, #0x21
	lsl r1, r1, #6
	str r0, [sp]
	ldr r0, [r4, r1]
	sub r1, #0x30
	ldr r1, [r4, r1]
	mov r2, #0xf
	mov r3, #0x10
	mov r5, #0x10
	bl sub_02035660
	add r5, #0xf0
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219f9f4

	thumb_func_start ovy173_219fa28
ovy173_219fa28: ; 0x0219FA28
	push {r3, r4, r5, lr}
	mov r4, #0x69
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _0219FA66
	bl ovy173_219f6e4
	add r0, r5, #0
	bl ovy173_219f570
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	add r5, #0xb8
	str r4, [r5]
_0219FA66:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219fa28

	thumb_func_start ovy173_219fa68
ovy173_219fa68: ; 0x0219FA68
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219FAA4
	add r1, #0x45
	ldrb r0, [r1]
	cmp r0, #0
	beq _0219FAA4
	mov r0, #1
	bl sub_02151E40
	bl sub_021515A4
	bl sub_02151634
	add r0, r4, #0
	mov r1, #0x2a
	bl ovy173_21a5e84
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_021A6254
	pop {r4, pc}
_0219FAA4:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_021A6254
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_219fa68

	thumb_func_start ovy173_219fab0
ovy173_219fab0: ; 0x0219FAB0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02040440
	mov r1, #0
	mov r7, #0
	bl sub_02042A9C
	bl sub_02042BC4
	cmp r0, #0
	ldr r0, _0219FB20 ; =0x00001360
	bne _0219FAEA
	ldr r5, _0219FB24 ; =0x00000242
	mov r1, #3
	str r1, [r4, r0]
	ldrh r1, [r4, r5]
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0x5f
	add r2, r7, #0
	bl ovy173_219e398
	mov r0, #0x42
	b _0219FB18
_0219FAEA:
	ldr r5, _0219FB24 ; =0x00000242
	mov r1, #4
	str r1, [r4, r0]
	ldrh r1, [r4, r5]
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0x7e
	add r2, r7, #0
	bl ovy173_219e398
	add r0, r4, #0
	bl ovy173_219f9f4
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x49
_0219FB18:
	sub r5, #0x76
	str r0, [r4, r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FB20: .word 0x00001360
_0219FB24: .word 0x00000242
	thumb_func_end ovy173_219fab0

	thumb_func_start ovy173_219fb28
ovy173_219fb28: ; 0x0219FB28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _0219FB3A
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219FB3A:
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x43
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219fb28

	thumb_func_start ovy173_219fb4c
ovy173_219fb4c: ; 0x0219FB4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219FB68
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219FB68:
	cmp r0, #0
	bne _0219FB70
	mov r1, #0x44
	b _0219FB72
_0219FB70:
	mov r1, #0x4a
_0219FB72:
	ldr r0, _0219FB88 ; =0x00001353
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219FB88: .word 0x00001353
	thumb_func_end ovy173_219fb4c

	thumb_func_start ovy173_219fb8c
ovy173_219fb8c: ; 0x0219FB8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02040440
	mov r1, #0
	mov r7, #0
	bl sub_02042A9C
	bl sub_02042BC4
	cmp r0, #0
	ldr r0, _0219FBF8 ; =0x00001360
	beq _0219FBCA
	ldr r4, _0219FBFC ; =0x00000242
	mov r1, #3
	str r1, [r5, r0]
	ldrh r1, [r5, r4]
	add r0, r5, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0x60
	add r2, r7, #0
	bl ovy173_219e398
	mov r0, #0x45
	sub r4, #0x76
	str r0, [r5, r4]
	b _0219FBF2
_0219FBCA:
	mov r1, #4
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x4c
	add r2, r7, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x49
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219FBF2:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FBF8: .word 0x00001360
_0219FBFC: .word 0x00000242
	thumb_func_end ovy173_219fb8c

	thumb_func_start ovy173_219fc00
ovy173_219fc00: ; 0x0219FC00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _0219FC12
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219FC12:
	add r0, r5, #0
	bl ovy173_219e674
	mov r0, #0x73
	mov r1, #0x46
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219fc00

	thumb_func_start ovy173_219fc24
ovy173_219fc24: ; 0x0219FC24
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x6e
	lsl r5, r5, #2
	add r4, r0, #0
	add r0, r5, #0
	sub r0, #8
	ldrb r0, [r4, r0]
	add r6, r1, #0
	ldr r7, [r4, r5]
	cmp r0, #0
	beq _0219FC60
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219FC60
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	sub r5, #8
	strb r0, [r4, r5]
_0219FC60:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	add r5, r0, #0
	cmp r5, #4
	beq _0219FC74
	cmp r5, #5
	bne _0219FC86
_0219FC74:
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219FC86
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FC86:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0219FC94
	add r0, r4, #0
	bl ovy173_219e1cc
_0219FC94:
	add r0, r5, #2
	cmp r0, #9
	bhi _0219FD70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FCA6: ; jump table
	.short _0219FCBE - _0219FCA6 - 2 ; case 0
	.short _0219FCBA - _0219FCA6 - 2 ; case 1
	.short _0219FD70 - _0219FCA6 - 2 ; case 2
	.short _0219FD70 - _0219FCA6 - 2 ; case 3
	.short _0219FD70 - _0219FCA6 - 2 ; case 4
	.short _0219FD70 - _0219FCA6 - 2 ; case 5
	.short _0219FCC2 - _0219FCA6 - 2 ; case 6
	.short _0219FCEC - _0219FCA6 - 2 ; case 7
	.short _0219FD24 - _0219FCA6 - 2 ; case 8
	.short _0219FD68 - _0219FCA6 - 2 ; case 9
_0219FCBA:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FCBE:
	mov r1, #0x9b
	b _0219FD1C
_0219FCC2:
	mov r5, #0x92
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	add r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219FCE2
_0219FCD0:
	add r0, r4, #0
	mov r1, #0x8c
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x47
_0219FCDC:
	sub r5, #0x7c
	str r0, [r4, r5]
	b _0219FD70
_0219FCE2:
	ldr r0, _0219FD98 ; =0x00001353
	mov r1, #0x4b
	strb r1, [r4, r0]
	mov r0, #0x8a
	b _0219FCDC
_0219FCEC:
	mov r5, #0x92
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	add r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219FCFC
	b _0219FCD0
_0219FCFC:
	bl sub_020352E8
	cmp r0, #0
	bne _0219FD1A
	bl sub_020352E0
	cmp r0, #0
	beq _0219FD1A
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0xa4
	b _0219FCDC
_0219FD1A:
	mov r1, #0x4c
_0219FD1C:
	ldr r0, _0219FD98 ; =0x00001353
	strb r1, [r4, r0]
	mov r1, #0x8a
	b _0219FD6A
_0219FD24:
	add r0, r4, #0
	bl ovy173_21a1768
	cmp r0, #0
	bne _0219FD3C
	add r0, r4, #0
	mov r1, #0x79
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x47
	b _0219FD6A
_0219FD3C:
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	add r0, r3, #0
	add r0, #0x44
	add r3, #0x45
	ldrb r2, [r0]
	ldrb r0, [r3]
	cmp r2, r0
	beq _0219FD5E
	ldr r0, _0219FD9C ; =0x00001352
	mov r2, #6
	strb r2, [r4, r0]
	mov r0, #0x7d
_0219FD58:
	sub r1, #0x7c
	str r0, [r4, r1]
	b _0219FD70
_0219FD5E:
	ldr r0, _0219FD98 ; =0x00001353
	mov r2, #0x4d
	strb r2, [r4, r0]
	mov r0, #0x8a
	b _0219FD58
_0219FD68:
	mov r1, #0x4e
_0219FD6A:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r4, r0]
_0219FD70:
	mov r5, #0x69
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl ovy173_219e19c
	str r0, [r4, r5]
	add r0, r4, #0
	add r0, #0xbc
	add r5, #0x98
	ldr r0, [r0]
	mov r1, #0
	add r2, r4, r5
	bl sub_02025A10
	add r4, #0xb8
	ldr r0, [r4]
	bl sub_02024FAC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FD98: .word 0x00001353
_0219FD9C: .word 0x00001352
	thumb_func_end ovy173_219fc24

	thumb_func_start ovy173_219fda0
ovy173_219fda0: ; 0x0219FDA0
	push {r4, r5, r6, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r6, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _0219FDC6
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0xa5
	sub r4, #0xa8
	str r0, [r5, r4]
_0219FDC6:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_219fda0

	thumb_func_start ovy173_219fdcc
ovy173_219fdcc: ; 0x0219FDCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ovy173_219e138
	mov r4, #0x9d
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	bl ovy173_219d444
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0219FDEE
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FDEE:
	cmp r6, #0
	bne _0219FDF6
	mov r1, #0x4c
	b _0219FDF8
_0219FDF6:
	mov r1, #0x9b
_0219FDF8:
	ldr r0, _0219FE08 ; =0x00001353
	sub r4, #0xa8
	strb r1, [r5, r0]
	mov r0, #0x8a
	str r0, [r5, r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FE08: .word 0x00001353
	thumb_func_end ovy173_219fdcc

	thumb_func_start ovy173_219fe0c
ovy173_219fe0c: ; 0x0219FE0C
	push {r4, r5, r6, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r6, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _0219FE32
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0xa7
	sub r4, #0xa8
	str r0, [r5, r4]
_0219FE32:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_219fe0c

	thumb_func_start ovy173_219fe38
ovy173_219fe38: ; 0x0219FE38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ovy173_219e138
	mov r4, #0x9d
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	bl ovy173_219d444
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0219FE5A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FE5A:
	cmp r6, #0
	bne _0219FE6C
	mov r0, #0x52
	sub r4, #0xa8
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e1cc
	b _0219FE78
_0219FE6C:
	ldr r0, _0219FE7C ; =0x00001353
	mov r1, #0x90
	strb r1, [r5, r0]
	mov r0, #0x8a
	sub r4, #0xa8
	str r0, [r5, r4]
_0219FE78:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FE7C: .word 0x00001353
	thumb_func_end ovy173_219fe38

	thumb_func_start ovy173_219fe80
ovy173_219fe80: ; 0x0219FE80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _0219FE92
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219FE92:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219FEA2
	mov r0, #0x73
	mov r1, #0x44
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219FEA2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_219fe80

	thumb_func_start ovy173_219fea8
ovy173_219fea8: ; 0x0219FEA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r3, _0219FF18 ; =0x021A71CC
	add r2, sp, #0
	add r5, r0, #0
	add r7, r1, #0
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl sub_02042BC4
	cmp r0, #0
	bne _0219FEEC
	ldr r4, _0219FF1C ; =0x00000242
	add r0, r5, #0
	ldrh r1, [r5, r4]
	sub r1, r1, #1
	bl ovy173_219e154
	ldr r1, _0219FF20 ; =0x0000132C
	add r0, r5, #0
	ldrh r1, [r5, r1]
	mov r2, #0
	sub r1, #0x4b
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	bl ovy173_219e398
	mov r0, #0x4f
	sub r4, #0x76
	str r0, [r5, r4]
	b _0219FF10
_0219FEEC:
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x49
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219FF10:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219FF18: .word 0x021A71CC
_0219FF1C: .word 0x00000242
_0219FF20: .word 0x0000132C
	thumb_func_end ovy173_219fea8
_0219FF24:
	.byte 0x02, 0x4A, 0x4B, 0x23, 0x83, 0x52, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x2C, 0x13, 0x00, 0x00, 0xA9, 0xFE, 0x19, 0x02, 0x02, 0x4A, 0x4C, 0x23, 0x83, 0x52, 0x02, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x2C, 0x13, 0x00, 0x00, 0xA9, 0xFE, 0x19, 0x02, 0x02, 0x4A, 0x4D, 0x23
	.byte 0x83, 0x52, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x2C, 0x13, 0x00, 0x00, 0xA9, 0xFE, 0x19, 0x02

	thumb_func_start ovy173_219ff60
ovy173_219ff60: ; 0x0219FF60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _0219FF72
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219FF72:
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x50
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_219ff60

	thumb_func_start ovy173_219ff84
ovy173_219ff84: ; 0x0219FF84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219FFA0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219FFA0:
	cmp r0, #0
	bne _0219FFFA
	add r0, r5, #0
	bl ovy173_21a1768
	cmp r0, #0
	bne _0219FFC4
	ldr r0, _021A000C ; =0x0000132C
	ldrh r0, [r5, r0]
	cmp r0, #0x4d
	bne _0219FFC4
	add r0, r5, #0
	mov r1, #0x79
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x96
	b _021A0002
_0219FFC4:
	bl sub_020352E8
	cmp r0, #0
	bne _0219FFEA
	bl sub_020352E0
	cmp r0, #0
	beq _0219FFEA
	ldr r0, _021A000C ; =0x0000132C
	ldrh r0, [r5, r0]
	cmp r0, #0x4c
	bne _0219FFEA
	add r0, r5, #0
	mov r1, #0x95
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0xa6
	b _021A0002
_0219FFEA:
	mov r0, #0x73
	mov r1, #0x52
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	b _021A0008
_0219FFFA:
	ldr r0, _021A0010 ; =0x00001353
	mov r1, #0x90
	strb r1, [r5, r0]
	mov r1, #0x8a
_021A0002:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0008:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A000C: .word 0x0000132C
_021A0010: .word 0x00001353
	thumb_func_end ovy173_219ff84

	thumb_func_start ovy173_21a0014
ovy173_21a0014: ; 0x021A0014
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0026
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0026:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	bne _021A0032
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0032:
	ldr r0, _021A0054 ; =0x00001360
	ldr r1, [r5, r0]
	sub r1, r1, #3
	cmp r1, #1
	bhi _021A0040
	mov r1, #0x90
	b _021A0042
_021A0040:
	mov r1, #0x97
_021A0042:
	sub r0, #0xd
	strb r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A0054: .word 0x00001360
	thumb_func_end ovy173_21a0014

	thumb_func_start ovy173_21a0058
ovy173_21a0058: ; 0x021A0058
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _021A0084
	add r0, r5, #0
	mov r1, #0x73
	mov r2, #0
	mov r6, #0x73
	bl ovy173_219e398
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r1, #0x49
	lsl r0, r6, #2
	b _021A009A
_021A0084:
	add r0, r5, #0
	mov r1, #0x72
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x78
	lsl r0, r1, #2
	str r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8f
	lsl r0, r0, #2
_021A009A:
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a0058

	thumb_func_start ovy173_21a00a0
ovy173_21a00a0: ; 0x021A00A0
	push {r4, r5, r6, lr}
	mov r4, #0x1e
	add r5, r0, #0
	lsl r4, r4, #4
	add r6, r1, #0
	ldr r1, [r5, r4]
	sub r1, r1, #1
	str r1, [r5, r4]
	bl ovy173_219e208
	ldr r0, [r5, r4]
	cmp r0, #0
	bge _021A00C6
	ldr r0, _021A00CC ; =0x00001353
	mov r1, #0x79
	strb r1, [r5, r0]
	mov r0, #0x8a
	sub r4, #0x14
	str r0, [r5, r4]
_021A00C6:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021A00CC: .word 0x00001353
	thumb_func_end ovy173_21a00a0
_021A00D0:
	.byte 0x04, 0x4A, 0x51, 0x23, 0x83, 0x54, 0x73, 0x22, 0x8A, 0x23, 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C
	.byte 0x70, 0x47, 0xC0, 0x46, 0x53, 0x13, 0x00, 0x00, 0x04, 0x4A, 0x4A, 0x23, 0x83, 0x54, 0x73, 0x22
	.byte 0x8A, 0x23, 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C, 0x70, 0x47, 0xC0, 0x46, 0x53, 0x13, 0x00, 0x00
	.byte 0x04, 0x4A, 0x84, 0x23, 0x83, 0x54, 0x73, 0x22, 0x8A, 0x23, 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C
	.byte 0x70, 0x47, 0xC0, 0x46, 0x53, 0x13, 0x00, 0x00

	thumb_func_start ovy173_21a0118
ovy173_21a0118: ; 0x021A0118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r6, r1, #0
	bl ovy173_21a621c
	ldr r0, _021A01AC ; =0x00001351
	mov r1, #0
	strb r1, [r5, r0]
	sub r0, #0x25
	ldrh r0, [r5, r0]
	cmp r0, #0x4b
	beq _021A013C
	cmp r0, #0x4c
	beq _021A0140
	cmp r0, #0x4d
	beq _021A0144
	b _021A0146
_021A013C:
	mov r4, #4
	b _021A0146
_021A0140:
	mov r4, #5
	b _021A0146
_021A0144:
	mov r4, #6
_021A0146:
	cmp r0, #0x4b
	beq _021A0154
	cmp r0, #0x4c
	beq _021A0186
	cmp r0, #0x4d
	beq _021A0188
	b _021A019C
_021A0154:
	add r0, r5, #0
	bl ovy173_219fa68
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #0
	mov r7, #0
	bl ovy173_219e3bc
	add r0, r5, #0
	mov r1, #4
	mov r2, #4
	bl ovy173_21a52a8
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a5e84
	ldr r0, _021A01B0 ; =0x00001355
	mov r1, #0x10
	strb r7, [r5, r0]
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A019C
_021A0186:
	b _021A018E
_021A0188:
	add r0, r5, #0
	bl ovy173_219fa68
_021A018E:
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0x1d
	lsl r0, r0, #4
	str r4, [r5, r0]
	mov r6, #2
_021A019C:
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #0
	bl ovy173_21a52a8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A01AC: .word 0x00001351
_021A01B0: .word 0x00001355
	thumb_func_end ovy173_21a0118

	thumb_func_start ovy173_21a01b4
ovy173_21a01b4: ; 0x021A01B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	bl ovy173_219f2b8
	mov r0, #0x73
	mov r1, #0x54
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a01b4

	thumb_func_start ovy173_21a01cc
ovy173_21a01cc: ; 0x021A01CC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x6e
	lsl r4, r4, #2
	add r5, r0, #0
	add r0, r4, #0
	sub r0, #8
	ldrb r0, [r5, r0]
	add r7, r1, #0
	ldr r6, [r5, r4]
	cmp r0, #0
	beq _021A0208
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0208
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	sub r4, #8
	strb r0, [r5, r4]
_021A0208:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021A0220
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A0220:
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r4, #0x69
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r5, #0
	add r0, #0xbc
	add r2, r4, #0
	add r2, #0x90
	ldr r0, [r0]
	mov r1, #0
	add r2, r5, r2
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	mov r0, #0
	sub r0, r0, #2
	cmp r6, r0
	ldr r0, _021A02A0 ; =0x00001360
	bne _021A0284
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021A0280
	add r1, r4, #0
	add r1, #0x9e
	ldrh r1, [r5, r1]
	add r0, r5, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0x60
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x45
_021A027A:
	add r4, #0x28
	str r0, [r5, r4]
	b _021A029A
_021A0280:
	mov r0, #0x1c
	b _021A027A
_021A0284:
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021A028E
	b _021A0296
_021A028E:
	cmp r6, #0x5b
	bne _021A0296
	mov r0, #0x75
	b _021A027A
_021A0296:
	add r4, #0x28
	str r6, [r5, r4]
_021A029A:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A02A0: .word 0x00001360
	thumb_func_end ovy173_21a01cc

	thumb_func_start ovy173_21a02a4
ovy173_21a02a4: ; 0x021A02A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219f32c
	mov r0, #0x73
	mov r1, #0x56
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a02a4

	thumb_func_start ovy173_21a02bc
ovy173_21a02bc: ; 0x021A02BC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x6e
	lsl r4, r4, #2
	add r5, r0, #0
	add r0, r4, #0
	sub r0, #8
	ldrb r0, [r5, r0]
	add r7, r1, #0
	ldr r6, [r5, r4]
	cmp r0, #0
	beq _021A02F8
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A02F8
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	sub r4, #8
	strb r0, [r5, r4]
_021A02F8:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021A0322
	add r1, r1, #1
	cmp r0, r1
	bne _021A0314
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A0314:
	ldr r1, _021A035C ; =0x0000134C
	strh r0, [r5, r1]
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r1, #0x21
	strb r0, [r1]
_021A0322:
	mov r4, #0x73
	mov r0, #0x4e
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0x28
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xbc
	add r4, #0x6a
	ldr r0, [r0]
	mov r1, #0
	add r2, r5, r4
	bl sub_02025A10
	add r5, #0xb8
	ldr r0, [r5]
	bl sub_02024FAC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A035C: .word 0x0000134C
	thumb_func_end ovy173_21a02bc

	thumb_func_start ovy173_21a0360
ovy173_21a0360: ; 0x021A0360
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219f358
	mov r0, #0x73
	mov r1, #0x58
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a0360

	thumb_func_start ovy173_21a0378
ovy173_21a0378: ; 0x021A0378
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x6e
	lsl r4, r4, #2
	add r5, r0, #0
	add r0, r4, #0
	sub r0, #8
	ldrb r0, [r5, r0]
	add r7, r1, #0
	ldr r6, [r5, r4]
	cmp r0, #0
	beq _021A03B4
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A03B4
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	sub r4, #8
	strb r0, [r5, r4]
_021A03B4:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021A03DE
	add r1, r1, #1
	cmp r0, r1
	bne _021A03D0
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A03D0:
	ldr r1, _021A0418 ; =0x0000134E
	strh r0, [r5, r1]
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r1, #0x22
	strb r0, [r1]
_021A03DE:
	mov r4, #0x73
	mov r0, #0x4e
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0x28
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xbc
	add r4, #0x6c
	ldr r0, [r0]
	mov r1, #0
	add r2, r5, r4
	bl sub_02025A10
	add r5, #0xb8
	ldr r0, [r5]
	bl sub_02024FAC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0418: .word 0x0000134E
	thumb_func_end ovy173_21a0378

	thumb_func_start ovy173_21a041c
ovy173_21a041c: ; 0x021A041C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219f384
	mov r0, #0x73
	mov r1, #0x5a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a041c

	thumb_func_start ovy173_21a0434
ovy173_21a0434: ; 0x021A0434
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x6e
	lsl r4, r4, #2
	add r5, r0, #0
	add r0, r4, #0
	sub r0, #8
	ldrb r0, [r5, r0]
	add r7, r1, #0
	ldr r6, [r5, r4]
	cmp r0, #0
	beq _021A0470
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0470
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0
	sub r4, #8
	strb r0, [r5, r4]
_021A0470:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021A049A
	add r1, r1, #1
	cmp r0, r1
	bne _021A048C
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A048C:
	mov r1, #1
	sub r1, r1, r0
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x20
	strb r1, [r0]
_021A049A:
	mov r4, #0x73
	mov r0, #0x4e
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	sub r0, #0x28
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0x28
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xbc
	add r4, #0x6e
	ldr r0, [r0]
	mov r1, #0
	add r2, r5, r4
	bl sub_02025A10
	add r5, #0xb8
	ldr r0, [r5]
	bl sub_02024FAC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a0434

	thumb_func_start ovy173_21a04d4
ovy173_21a04d4: ; 0x021A04D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #0
	str r0, [r4]
	add r0, r1, #0
	bl sub_0201735C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0201F424
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a04d4

	thumb_func_start ovy173_21a04f0
ovy173_21a04f0: ; 0x021A04F0
	push {r4, lr}
	bl sub_02017934
	bl sub_0200C260
	add r4, r0, #0
	bl sub_0200C340
	cmp r0, #0
	bne _021A0508
	mov r0, #0
	pop {r4, pc}
_021A0508:
	add r0, r4, #0
	mov r1, #0x21
	bl sub_0200C28C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_21a04f0

	thumb_func_start ovy173_21a0514
ovy173_21a0514: ; 0x021A0514
	push {r3, lr}
	cmp r0, #0
	beq _021A051E
	bl GFL_HeapFree
_021A051E:
	pop {r3, pc}
	thumb_func_end ovy173_21a0514

	thumb_func_start ovy173_21a0520
ovy173_21a0520: ; 0x021A0520
	push {r4, lr}
	mov r3, #0
	mov r4, #4
	str r3, [r2]
	cmp r1, #0
	beq _021A0534
	bl sub_0201F424
	add r4, r0, #0
	b _021A0538
_021A0534:
	sub r0, r3, #1
	str r0, [r2]
_021A0538:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy173_21a0520

	thumb_func_start ovy173_21a053c
ovy173_21a053c: ; 0x021A053C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021A0548
	cmp r1, #1
	beq _021A055C
_021A0548:
	ldr r1, _021A05A4 ; =0x0000134C
	ldrh r0, [r5, r1]
	add r1, r1, #2
	ldrh r3, [r5, r1]
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r1, #0x48
	ldrb r6, [r1]
	b _021A0572
_021A055C:
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x21
	add r1, #0x22
	add r2, #0x20
	ldrb r0, [r0]
	ldrb r3, [r1]
	ldrb r6, [r2]
_021A0572:
	lsl r1, r3, #2
	add r0, r0, r1
	lsl r1, r0, #2
	ldr r0, _021A05A8 ; =0x021A7410
	ldr r4, [r0, r1]
	ldr r0, _021A05AC ; =0x00001348
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A0588
	bl GFL_HeapFree
_021A0588:
	add r0, r4, #0
	mov r1, #0x21
	bl sub_0201F734
	ldr r1, _021A05AC ; =0x00001348
	cmp r6, #0
	str r0, [r5, r1]
	beq _021A059E
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r4, r0
_021A059E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021A05A4: .word 0x0000134C
_021A05A8: .word 0x021A7410
_021A05AC: .word 0x00001348
	thumb_func_end ovy173_21a053c

	thumb_func_start sub_021A05B0
sub_021A05B0: ; 0x021A05B0
	ldr r3, _021A05B8 ; =ovy173_21a053c
	mov r1, #0
	bx r3
	nop
_021A05B8: .word ovy173_21a053c
	thumb_func_end sub_021A05B0

	thumb_func_start ovy173_21a05bc
ovy173_21a05bc: ; 0x021A05BC
	push {r4, r5, r6, r7}
	mov r2, #2
	lsl r2, r2, #0x1e
	tst r2, r1
	beq _021A05CA
	mov r3, #1
	b _021A05CC
_021A05CA:
	mov r3, #0
_021A05CC:
	mov r2, #0x92
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	mov r4, #0
	add r2, #0x48
	strb r3, [r2]
	add r3, r1, #0
	ldr r2, _021A0610 ; =0x0FFFFFFF
	ldr r1, _021A0614 ; =0x0000134C
	and r3, r2
	ldr r2, _021A0618 ; =0x021A7410
	add r1, r1, #2
_021A05E4:
	lsl r5, r4, #2
	ldr r5, [r2, r5]
	cmp r3, r5
	bne _021A0606
	lsr r7, r4, #0x1f
	lsl r6, r4, #0x1e
	sub r6, r6, r7
	mov r5, #0x1e
	ror r6, r5
	ldr r5, _021A0614 ; =0x0000134C
	add r6, r7, r6
	strh r6, [r0, r5]
	asr r5, r4, #1
	lsr r5, r5, #0x1e
	add r5, r4, r5
	asr r5, r5, #2
	strh r5, [r0, r1]
_021A0606:
	add r4, r4, #1
	cmp r4, #8
	blo _021A05E4
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021A0610: .word 0x0FFFFFFF
_021A0614: .word 0x0000134C
_021A0618: .word 0x021A7410
	thumb_func_end ovy173_21a05bc

	thumb_func_start ovy173_21a061c
ovy173_21a061c: ; 0x021A061C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021A06B0 ; =0x00001360
	add r5, r0, #0
	ldr r1, [r5, r1]
	cmp r1, #3
	beq _021A062E
	cmp r1, #1
	bne _021A0634
_021A062E:
	add r0, r5, #0
	mov r1, #1
	b _021A0636
_021A0634:
	mov r1, #0
_021A0636:
	bl ovy173_21a053c
	add r0, r5, #0
	bl ovy173_21a178c
	cmp r0, #0
	bne _021A065A
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x63
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A065A:
	ldr r0, _021A06B4 ; =0x00001352
	mov r1, #7
	strb r1, [r5, r0]
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	add r1, r3, #0
	add r1, #0x44
	add r3, #0x45
	ldrb r2, [r1]
	ldrb r1, [r3]
	cmp r2, r1
	beq _021A0678
	mov r1, #0x7d
	b _021A067A
_021A0678:
	mov r1, #0x81
_021A067A:
	sub r0, #0x7c
	str r1, [r5, r0]
	ldr r1, _021A06B8 ; =0x00000242
	add r0, r5, #0
	ldrh r1, [r5, r1]
	sub r1, r1, #1
	bl ovy173_219e154
	ldr r0, _021A06B0 ; =0x00001360
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021A069A
	add r0, r5, #0
	mov r1, #0xe
	b _021A069E
_021A069A:
	add r0, r5, #0
	mov r1, #0x4c
_021A069E:
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A06B0: .word 0x00001360
_021A06B4: .word 0x00001352
_021A06B8: .word 0x00000242
	thumb_func_end ovy173_21a061c

	thumb_func_start ovy173_21a06bc
ovy173_21a06bc: ; 0x021A06BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A06D2
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A06D2:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A0726
	add r0, r5, #0
	bl ovy173_219e1cc
	ldr r4, _021A072C ; =0x00001348
	add r1, r5, #0
	add r1, #0xc4
	ldr r0, [r5, r4]
	ldr r1, [r1]
	add r2, sp, #0
	bl ovy173_21a04d4
	add r4, #0x18
	ldr r0, [r5, r4]
	cmp r0, #3
	beq _021A06FC
	cmp r0, #1
	bne _021A070A
_021A06FC:
	mov r2, #0x92
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	ldr r1, [sp]
	add r2, #0x20
	b _021A0716
_021A070A:
	mov r2, #0x92
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, #0x48
_021A0716:
	ldrb r2, [r2]
	mov r3, #2
	bl ovy173_219f818
	mov r0, #0x73
	mov r1, #0x77
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0726:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A072C: .word 0x00001348
	thumb_func_end ovy173_21a06bc

	thumb_func_start ovy173_21a0730
ovy173_21a0730: ; 0x021A0730
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A07B8
	add r0, r5, #0
	bl ovy173_219f9d0
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r0]
	cmp r1, #0
	beq _021A078C
	ldr r4, _021A07C0 ; =0x00001348
	add r2, sp, #0
	ldr r0, [r5, r4]
	bl ovy173_21a0520
	add r4, #0x18
	ldr r0, [r5, r4]
	cmp r0, #3
	beq _021A0766
	cmp r0, #1
	bne _021A0774
_021A0766:
	mov r2, #0x92
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	ldr r1, [sp]
	add r2, #0x20
	b _021A0780
_021A0774:
	mov r2, #0x92
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, #0x48
_021A0780:
	ldrb r2, [r2]
	mov r3, #3
	bl ovy173_219f818
	mov r1, #0x78
	b _021A07B2
_021A078C:
	ldr r0, _021A07C4 ; =0x00001360
	ldr r1, [r5, r0]
	cmp r1, #2
	beq _021A07A2
	cmp r1, #3
	beq _021A079E
	cmp r1, #4
	beq _021A07A6
	b _021A07B0
_021A079E:
	mov r1, #0x4e
	b _021A07B2
_021A07A2:
	mov r1, #0x97
	b _021A07A8
_021A07A6:
	mov r1, #0x90
_021A07A8:
	sub r0, #0xd
	strb r1, [r5, r0]
	mov r1, #0x8a
	b _021A07B2
_021A07B0:
	mov r1, #0x72
_021A07B2:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A07B8:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021A07C0: .word 0x00001348
_021A07C4: .word 0x00001360
	thumb_func_end ovy173_21a0730

	thumb_func_start ovy173_21a07c8
ovy173_21a07c8: ; 0x021A07C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A080E
	add r0, r5, #0
	bl ovy173_219f9d0
	add r0, r5, #0
	bl ovy173_219e1cc
	ldr r0, _021A0814 ; =0x00001360
	ldr r1, [r5, r0]
	cmp r1, #2
	beq _021A07F8
	cmp r1, #3
	beq _021A07F4
	cmp r1, #4
	beq _021A07FC
	b _021A0806
_021A07F4:
	mov r1, #0x4e
	b _021A0808
_021A07F8:
	mov r1, #0x97
	b _021A07FE
_021A07FC:
	mov r1, #0x90
_021A07FE:
	sub r0, #0xd
	strb r1, [r5, r0]
	mov r1, #0x8a
	b _021A0808
_021A0806:
	mov r1, #0x72
_021A0808:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A080E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A0814: .word 0x00001360
	thumb_func_end ovy173_21a07c8

	thumb_func_start ovy173_21a0818
ovy173_21a0818: ; 0x021A0818
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	bl ovy173_21a053c
	mov r4, #0x92
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r2, #0x20
	ldrb r2, [r2]
	mov r1, #0
	mov r3, #0
	bl ovy173_219f818
	mov r0, #0x5d
	sub r4, #0x7c
	str r0, [r5, r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a0818

	thumb_func_start ovy173_21a0844
ovy173_21a0844: ; 0x021A0844
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A0860
	add r0, r5, #0
	bl ovy173_219f9d0
	mov r0, #0x73
	mov r1, #0x4e
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0860:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a0844

	thumb_func_start ovy173_21a0864
ovy173_21a0864: ; 0x021A0864
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02042BC4
	cmp r0, #0
	bne _021A08B8
	add r0, r5, #0
	bl sub_021A05B0
	mov r4, #0x92
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r2, #0x48
	ldrb r2, [r2]
	mov r1, #0
	mov r3, #1
	bl ovy173_219f818
	sub r1, r4, #6
	ldrh r1, [r5, r1]
	add r0, r5, #0
	sub r1, r1, #1
	bl ovy173_219e154
	ldr r2, _021A08E0 ; =0x0000134C
	add r0, r5, #0
	ldrh r1, [r5, r2]
	add r2, r2, #2
	ldrh r2, [r5, r2]
	add r1, #0x69
	mov r3, #1
	lsl r2, r2, #2
	add r1, r1, r2
	mov r2, #0
	bl ovy173_219e258
	mov r0, #0x7a
	sub r4, #0x7c
	str r0, [r5, r4]
	b _021A08DC
_021A08B8:
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x49
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A08DC:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A08E0: .word 0x0000134C
	thumb_func_end ovy173_21a0864

	thumb_func_start ovy173_21a08e4
ovy173_21a08e4: ; 0x021A08E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A08F6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A08F6:
	mov r0, #0x73
	mov r1, #0x7b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a08e4

	thumb_func_start ovy173_21a0904
ovy173_21a0904: ; 0x021A0904
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A0920
	add r0, r5, #0
	bl ovy173_219f9d0
	mov r0, #0x73
	mov r1, #0x7c
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0920:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a0904
_021A0924:
	.byte 0x73, 0x22, 0x60, 0x23, 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C, 0x70, 0x47
	.byte 0x08, 0x1C, 0x70, 0x47

	thumb_func_start ovy173_21a0934
ovy173_21a0934: ; 0x021A0934
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x61
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a0934

	thumb_func_start ovy173_21a094c
ovy173_21a094c: ; 0x021A094C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A0968
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0968:
	cmp r0, #0
	bne _021A097C
	mov r0, #0x73
	mov r1, #0x62
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	b _021A09A4
_021A097C:
	ldr r0, _021A09A8 ; =0x00001360
	ldr r1, [r5, r0]
	sub r1, r1, #1
	cmp r1, #1
	bhi _021A0996
	mov r1, #0x4a
	sub r0, #0xd
	strb r1, [r5, r0]
	add r0, r5, #0
	mov r2, #0
	bl ovy173_219e398
	b _021A099C
_021A0996:
	mov r1, #0x90
	sub r0, #0xd
	strb r1, [r5, r0]
_021A099C:
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A09A4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A09A8: .word 0x00001360
	thumb_func_end ovy173_21a094c

	thumb_func_start ovy173_21a09ac
ovy173_21a09ac: ; 0x021A09AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A09C8
	ldr r0, _021A09CC ; =0x00001353
	mov r1, #0x6e
	strb r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A09C8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A09CC: .word 0x00001353
	thumb_func_end ovy173_21a09ac

	thumb_func_start ovy173_21a09d0
ovy173_21a09d0: ; 0x021A09D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021A05B0
	add r0, r5, #0
	bl ovy173_21a178c
	cmp r0, #0
	bne _021A0A38
	ldr r0, _021A0A4C ; =0x00001360
	ldr r0, [r5, r0]
	cmp r0, #2
	beq _021A0A0C
	cmp r0, #3
	beq _021A09F6
	cmp r0, #4
	beq _021A0A0C
	b _021A0A22
_021A09F6:
	mov r0, #0x73
	mov r1, #0x9d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0A0C:
	mov r0, #0x73
	mov r1, #0x63
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0A22:
	mov r0, #0x73
	mov r1, #0x96
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0A38:
	ldr r0, _021A0A50 ; =0x00001353
	mov r1, #0x64
	strb r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A0A4C: .word 0x00001360
_021A0A50: .word 0x00001353
	thumb_func_end ovy173_21a09d0

	thumb_func_start ovy173_21a0a54
ovy173_21a0a54: ; 0x021A0A54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0A66
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0A66:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	bne _021A0A72
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0A72:
	ldr r0, _021A0A84 ; =0x00001353
	mov r1, #0x6e
	strb r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0A84: .word 0x00001353
	thumb_func_end ovy173_21a0a54

	thumb_func_start ovy173_21a0a88
ovy173_21a0a88: ; 0x021A0A88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
	bl sub_02042BC4
	cmp r0, #0
	bne _021A0A9A
	mov r4, #1
_021A0A9A:
	ldr r0, _021A0AF0 ; =0x00001348
	add r1, r5, #0
	add r1, #0xcc
	ldr r0, [r5, r0]
	ldr r1, [r1]
	add r2, sp, #0
	bl ovy173_21a0520
	cmp r0, #0
	beq _021A0ADA
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #0
	bne _021A0ADA
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201735C
	mov r6, #0x92
	lsl r6, r6, #2
	ldr r2, [r5, r6]
	lsl r1, r4, #2
	add r1, r2, r1
	ldr r1, [r1, #0x14]
	bl sub_020200AC
	mov r0, #0x67
	sub r6, #0x7c
	str r0, [r5, r6]
	b _021A0AEC
_021A0ADA:
	add r0, r5, #0
	mov r1, #0x71
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x65
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0AEC:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0AF0: .word 0x00001348
	thumb_func_end ovy173_21a0a88

	thumb_func_start ovy173_21a0af4
ovy173_21a0af4: ; 0x021A0AF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0B06
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0B06:
	ldr r0, _021A0B38 ; =0x00001354
	mov r1, #2
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219f7e0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201735C
	add r2, r5, #0
	add r2, #0xcc
	add r1, r0, #0
	ldr r2, [r2]
	add r0, r5, #0
	bl ovy173_219f670
	mov r0, #0x73
	mov r1, #0x66
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A0B38: .word 0x00001354
	thumb_func_end ovy173_21a0af4

	thumb_func_start ovy173_21a0b3c
ovy173_21a0b3c: ; 0x021A0B3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0x6e
	add r4, r0, #0
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	add r7, r1, #0
	str r0, [sp]
	add r0, r6, #0
	sub r0, #8
	ldrb r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	beq _021A0B7C
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0B7C
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	sub r6, #8
	strb r5, [r4, r6]
_021A0B7C:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xbc
	add r1, sp, #4
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #4
	bl sub_02025B04
	ldr r3, _021A0CA8 ; =0x00001354
	add r2, sp, #4
	ldrh r1, [r2]
	ldrb r0, [r4, r3]
	cmp r1, r0
	beq _021A0BD8
	strb r1, [r4, r3]
	ldrh r0, [r2]
	cmp r0, #0
	bne _021A0BC4
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201735C
	add r1, r0, #0
	add r0, r4, #0
	bl ovy173_219f3b0
	add r0, r4, #0
	mov r1, #1
	b _021A0BD4
_021A0BC4:
	add r1, r4, #0
	add r1, #0xcc
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy173_219f3b0
	add r0, r4, #0
	mov r1, #0
_021A0BD4:
	bl ovy173_219f734
_021A0BD8:
	bl sub_02042BC4
	cmp r0, #0
	bne _021A0BE2
	mov r5, #1
_021A0BE2:
	add r0, r6, #2
	cmp r0, #3
	bhi _021A0C94
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A0BF4: ; jump table
	.short _021A0C02 - _021A0BF4 - 2 ; case 0
	.short _021A0BFC - _021A0BF4 - 2 ; case 1
	.short _021A0C08 - _021A0BF4 - 2 ; case 2
	.short _021A0C46 - _021A0BF4 - 2 ; case 3
_021A0BFC:
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A0C02:
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A0C08:
	ldr r0, _021A0CAC ; =0x00001348
	add r1, r4, #0
	add r1, #0xc4
	ldr r0, [r4, r0]
	ldr r1, [r1]
	add r2, sp, #8
	bl ovy173_21a04d4
	cmp r0, #0
	beq _021A0C3A
	add r0, r4, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x6b
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy173_219fa28
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A0C3A:
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201735C
	b _021A0C7E
_021A0C46:
	ldr r0, _021A0CAC ; =0x00001348
	add r1, r4, #0
	add r1, #0xcc
	ldr r0, [r4, r0]
	ldr r1, [r1]
	add r2, sp, #8
	bl ovy173_21a0520
	cmp r0, #0
	beq _021A0C78
	add r0, r4, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x6c
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy173_219fa28
	add sp, #0xc
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_021A0C78:
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
_021A0C7E:
	mov r6, #0x92
	lsl r6, r6, #2
	ldr r2, [r4, r6]
	lsl r1, r5, #2
	add r1, r2, r1
	ldr r1, [r1, #0x14]
	bl sub_020200AC
	mov r0, #0x67
	sub r6, #0x7c
	str r0, [r4, r6]
_021A0C94:
	add r0, r4, #0
	bl ovy173_219fa28
	add r0, r4, #0
	bl ovy173_219e1cc
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A0CA8: .word 0x00001354
_021A0CAC: .word 0x00001348
	thumb_func_end ovy173_21a0b3c

	thumb_func_start ovy173_21a0cb0
ovy173_21a0cb0: ; 0x021A0CB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
	bl sub_02042BC4
	cmp r0, #0
	bne _021A0CC4
	mov r4, #1
_021A0CC4:
	bl sub_02040440
	add r6, r0, #0
	bl sub_0201FCF8
	add r3, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r0, r4, #2
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	ldr r2, _021A0D14 ; =0x00000A07
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xff
	mov r4, #0xff
	bl sub_02042C18
	cmp r0, #0
	beq _021A0D0E
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	mov r0, #0x98
	add r4, #0xcd
	str r0, [r5, r4]
_021A0D0E:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0D14: .word 0x00000A07
	thumb_func_end ovy173_21a0cb0

	thumb_func_start ovy173_21a0d18
ovy173_21a0d18: ; 0x021A0D18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A0D3A
	bl sub_02040440
	mov r1, #0x11
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x68
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0D3A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a0d18

	thumb_func_start ovy173_21a0d40
ovy173_21a0d40: ; 0x021A0D40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02040440
	mov r1, #0x11
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A0DAC
	ldr r7, _021A0DB0 ; =0x00001348
	mov r1, #2
	ldr r0, [r5, r7]
	bl sub_0200B574
	add r4, r0, #0
	ldr r0, [r5, r7]
	mov r1, #3
	bl sub_0200B574
	cmp r4, #3
	bne _021A0D76
	cmp r0, #3
	bne _021A0D76
	mov r1, #0x92
	b _021A0D90
_021A0D76:
	cmp r4, #4
	bne _021A0D82
	cmp r0, #4
	bne _021A0D82
	mov r1, #0x93
	b _021A0D90
_021A0D82:
	cmp r4, #6
	bne _021A0D8E
	cmp r0, #6
	bne _021A0D8E
	mov r1, #0x94
	b _021A0D90
_021A0D8E:
	mov r1, #0x91
_021A0D90:
	add r0, r5, #0
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	mov r1, #0x78
	lsl r0, r1, #2
	str r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x69
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0DAC:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0DB0: .word 0x00001348
	thumb_func_end ovy173_21a0d40

	thumb_func_start ovy173_21a0db4
ovy173_21a0db4: ; 0x021A0DB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A0DD6
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	sub r1, r2, #1
	str r1, [r5, r0]
	cmp r2, #0
	bge _021A0DD6
	mov r1, #0x6a
	sub r0, #0x14
	str r1, [r5, r0]
_021A0DD6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a0db4

	thumb_func_start ovy173_21a0ddc
ovy173_21a0ddc: ; 0x021A0DDC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy173_21a621c
	add r5, sp, #0
	ldr r3, _021A0E38 ; =0x00001351
	mov r0, #0
	ldr r6, _021A0E3C ; =0x021A72DC
	strb r0, [r4, r3]
	add r2, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r0, r3, #3
	ldrh r1, [r4, r0]
	sub r0, r3, #5
	ldrh r0, [r4, r0]
	lsl r0, r0, #1
	add r0, r1, r0
	lsl r0, r0, #2
	ldr r5, [r2, r0]
	mov r0, #0x1d
	lsl r0, r0, #4
	str r5, [r4, r0]
	add r0, r4, #0
	bl ovy173_219fa68
	add r0, r4, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	mov r1, #4
	add r2, r5, #0
	bl ovy173_21a52a8
	mov r0, #2
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021A0E38: .word 0x00001351
_021A0E3C: .word 0x021A72DC
	thumb_func_end ovy173_21a0ddc

	thumb_func_start ovy173_21a0e40
ovy173_21a0e40: ; 0x021A0E40
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0E56
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A0E56:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A0E8E
	add r0, r5, #0
	bl ovy173_219e1cc
	ldr r0, _021A0E94 ; =0x00001348
	add r1, r5, #0
	add r1, #0xc4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	add r2, sp, #0
	bl ovy173_21a04d4
	mov r4, #0x92
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	ldr r1, [sp]
	add r2, #0x48
	ldrb r2, [r2]
	add r0, r5, #0
	mov r3, #2
	bl ovy173_219f818
	mov r0, #0x6d
	sub r4, #0x7c
	str r0, [r5, r4]
_021A0E8E:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A0E94: .word 0x00001348
	thumb_func_end ovy173_21a0e40

	thumb_func_start ovy173_21a0e98
ovy173_21a0e98: ; 0x021A0E98
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0EAE
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021A0EAE:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A0EE6
	add r0, r5, #0
	bl ovy173_219e1cc
	ldr r0, _021A0EEC ; =0x00001348
	add r1, r5, #0
	add r1, #0xcc
	ldr r0, [r5, r0]
	ldr r1, [r1]
	add r2, sp, #0
	bl ovy173_21a0520
	mov r4, #0x92
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	ldr r1, [sp]
	add r2, #0x48
	ldrb r2, [r2]
	add r0, r5, #0
	mov r3, #3
	bl ovy173_219f818
	mov r0, #0x6d
	sub r4, #0x7c
	str r0, [r5, r4]
_021A0EE6:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A0EEC: .word 0x00001348
	thumb_func_end ovy173_21a0e98

	thumb_func_start ovy173_21a0ef0
ovy173_21a0ef0: ; 0x021A0EF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A0F16
	add r0, r5, #0
	bl ovy173_219f9d0
	add r0, r5, #0
	mov r1, #0x71
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x65
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0F16:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a0ef0

	thumb_func_start ovy173_21a0f1c
ovy173_21a0f1c: ; 0x021A0F1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0F2E
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A0F2E:
	bl sub_02042BC4
	cmp r0, #0
	bne _021A0F54
	ldr r4, _021A0F6C ; =0x00000242
	add r0, r5, #0
	ldrh r1, [r5, r4]
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0x77
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x6f
	sub r4, #0x76
	str r0, [r5, r4]
	b _021A0F68
_021A0F54:
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x49
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A0F68:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0F6C: .word 0x00000242
	thumb_func_end ovy173_21a0f1c

	thumb_func_start ovy173_21a0f70
ovy173_21a0f70: ; 0x021A0F70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A0F82
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0F82:
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x70
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a0f70

	thumb_func_start ovy173_21a0f94
ovy173_21a0f94: ; 0x021A0F94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A0FB0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A0FB0:
	cmp r0, #0
	bne _021A0FB8
	mov r1, #0x44
	b _021A0FBA
_021A0FB8:
	mov r1, #0x4a
_021A0FBA:
	ldr r0, _021A0FD0 ; =0x00001353
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A0FD0: .word 0x00001353
	thumb_func_end ovy173_21a0f94

	thumb_func_start ovy173_21a0fd4
ovy173_21a0fd4: ; 0x021A0FD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A1006
	ldr r0, _021A100C ; =0x00001357
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021A0FF8
	b _021A0FFA
_021A0FF8:
	mov r1, #0x15
_021A0FFA:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _021A100C ; =0x00001357
	mov r1, #0
	strb r1, [r5, r0]
_021A1006:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A100C: .word 0x00001357
	thumb_func_end ovy173_21a0fd4

	thumb_func_start ovy173_21a1010
ovy173_21a1010: ; 0x021A1010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A1032
	mov r0, #0x73
	mov r1, #0x48
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A1032:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1010

	thumb_func_start ovy173_21a1038
ovy173_21a1038: ; 0x021A1038
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	mov r2, #2
	add r5, r0, #0
	bl ovy173_21a52a8
	bl sub_02040440
	mov r1, #0x19
	mov r2, #0xa
	bl sub_02040624
	ldr r0, _021A1064 ; =0x00001360
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x9c
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1064: .word 0x00001360
	thumb_func_end ovy173_21a1038

	thumb_func_start ovy173_21a1068
ovy173_21a1068: ; 0x021A1068
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x19
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	bne _021A1082
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A1082:
	mov r0, #0
	mov r6, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	bl sub_02042BC4
	cmp r0, #0
	beq _021A109E
	add r0, r5, #0
	mov r1, #0x7c
	b _021A10A2
_021A109E:
	add r0, r5, #0
	mov r1, #0x7d
_021A10A2:
	add r2, r6, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x8e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a1068

	thumb_func_start ovy173_21a10b4
ovy173_21a10b4: ; 0x021A10B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	mov r2, #2
	add r5, r0, #0
	bl ovy173_21a52a8
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	mov r0, #0x73
	mov r1, #0xa9
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a10b4

	thumb_func_start ovy173_21a10dc
ovy173_21a10dc: ; 0x021A10DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021A110C ; =0x00001360
	add r5, r0, #0
	ldr r1, [r5, r1]
	sub r1, r1, #2
	cmp r1, #1
	bhi _021A10F0
	mov r1, #0x7d
	b _021A10F2
_021A10F0:
	mov r1, #0x7c
_021A10F2:
	mov r2, #0
	bl ovy173_219e398
	ldr r0, _021A110C ; =0x00001360
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A110C: .word 0x00001360
	thumb_func_end ovy173_21a10dc

	thumb_func_start ovy173_21a1110
ovy173_21a1110: ; 0x021A1110
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	mov r2, #2
	add r5, r0, #0
	bl ovy173_21a52a8
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	mov r0, #0x73
	mov r1, #0x99
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1110

	thumb_func_start ovy173_21a1138
ovy173_21a1138: ; 0x021A1138
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021A1168 ; =0x00001360
	add r5, r0, #0
	ldr r1, [r5, r1]
	sub r1, r1, #2
	cmp r1, #1
	bhi _021A114C
	mov r1, #0x7c
	b _021A114E
_021A114C:
	mov r1, #0x7d
_021A114E:
	mov r2, #0
	bl ovy173_219e398
	ldr r0, _021A1168 ; =0x00001360
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A1168: .word 0x00001360
	thumb_func_end ovy173_21a1138
_021A116C:
	.byte 0x73, 0x22, 0x15, 0x23
	.byte 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C, 0x70, 0x47

	thumb_func_start ovy173_21a1178
ovy173_21a1178: ; 0x021A1178
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	mov r2, #2
	add r5, r0, #0
	bl ovy173_21a52a8
	bl sub_02042BC4
	cmp r0, #0
	beq _021A1194
	add r0, r5, #0
	mov r1, #0x73
	b _021A1198
_021A1194:
	add r0, r5, #0
	mov r1, #0x72
_021A1198:
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x8e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1178

	thumb_func_start ovy173_21a11ac
ovy173_21a11ac: ; 0x021A11AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mov r6, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	mov r0, #0x1e
	lsl r0, r0, #4
	str r6, [r5, r0]
	mov r1, #0x91
	sub r0, #0x14
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a11ac

	thumb_func_start ovy173_21a11d0
ovy173_21a11d0: ; 0x021A11D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r0, #0x45
	ldrb r0, [r0]
	mov r1, #0x48
	cmp r0, #0
	bne _021A11E8
	mov r1, #0x49
_021A11E8:
	add r0, r5, #0
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x7e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a11d0

	thumb_func_start ovy173_21a11fc
ovy173_21a11fc: ; 0x021A11FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A120E
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A120E:
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x7f
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a11fc

	thumb_func_start ovy173_21a1220
ovy173_21a1220: ; 0x021A1220
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A123C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A123C:
	cmp r0, #0
	bne _021A1244
	mov r1, #0x80
	b _021A1246
_021A1244:
	mov r1, #0x86
_021A1246:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1220
_021A1258:
	.byte 0x04, 0x4A, 0x4A, 0x23, 0x83, 0x54, 0x73, 0x22
	.byte 0x8A, 0x23, 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C, 0x70, 0x47, 0xC0, 0x46, 0x53, 0x13, 0x00, 0x00

	thumb_func_start ovy173_21a1270
ovy173_21a1270: ; 0x021A1270
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #8]
	bl sub_021A16EC
	mov r4, #0x92
	add r7, sp, #0
	lsl r4, r4, #2
	strh r0, [r7]
	ldr r0, [r5, r4]
	add r0, #0x46
	ldrb r1, [r0]
	mov r0, #1
	sub r0, r0, r1
	strh r0, [r7, #2]
	bl sub_02040440
	ldr r1, _021A12B8 ; =0x00000A03
	mov r2, #4
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021A12B4
	mov r0, #0x81
	sub r4, #0x7c
	str r0, [r5, r4]
	ldrh r1, [r7, #2]
	ldr r0, [r5, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021A6254
_021A12B4:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A12B8: .word 0x00000A03
	thumb_func_end ovy173_21a1270

	thumb_func_start ovy173_21a12bc
ovy173_21a12bc: ; 0x021A12BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021A130C ; =0x00001352
	add r5, r0, #0
	ldrb r2, [r5, r1]
	cmp r2, #6
	bne _021A12D4
	add r0, r1, #1
	mov r2, #0x4d
	strb r2, [r5, r0]
	mov r1, #0x8a
	b _021A1302
_021A12D4:
	add r1, #0xe
	ldr r1, [r5, r1]
	cmp r1, #3
	beq _021A12E0
	cmp r1, #1
	bne _021A12E6
_021A12E0:
	add r0, r5, #0
	mov r1, #1
	b _021A12E8
_021A12E6:
	mov r1, #0
_021A12E8:
	bl ovy173_21a053c
	str r0, [sp]
	bl sub_02040440
	ldr r1, _021A1310 ; =0x00000A06
	mov r2, #4
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021A1308
	mov r1, #0x82
_021A1302:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A1308:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A130C: .word 0x00001352
_021A1310: .word 0x00000A06
	thumb_func_end ovy173_21a12bc
_021A1314:
	.byte 0x04, 0x4A, 0x5E, 0x23, 0x83, 0x54, 0x73, 0x22, 0x8A, 0x23, 0x92, 0x00
	.byte 0x83, 0x50, 0x08, 0x1C, 0x70, 0x47, 0xC0, 0x46, 0x53, 0x13, 0x00, 0x00

	thumb_func_start ovy173_21a132c
ovy173_21a132c: ; 0x021A132C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x8b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a132c

	thumb_func_start ovy173_21a134c
ovy173_21a134c: ; 0x021A134C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A137E
	bl sub_02040440
	ldr r3, _021A1384 ; =0x00001353
	ldr r1, _021A1388 ; =0x00000A05
	mov r2, #1
	add r3, r5, r3
	bl sub_02042BE8
	cmp r0, #0
	beq _021A137E
	mov r0, #0x73
	mov r1, #0x48
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A137E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A1384: .word 0x00001353
_021A1388: .word 0x00000A05
	thumb_func_end ovy173_21a134c

	thumb_func_start ovy173_21a138c
ovy173_21a138c: ; 0x021A138C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #1
	mov r2, #2
	add r5, r0, #0
	bl ovy173_21a52a8
	ldr r0, _021A13D0 ; =0x00001360
	mov r6, #0
	str r6, [r5, r0]
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	bl sub_02042BC4
	cmp r0, #0
	beq _021A13BA
	add r0, r5, #0
	mov r1, #0x73
	b _021A13BE
_021A13BA:
	add r0, r5, #0
	mov r1, #0x7c
_021A13BE:
	add r2, r6, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x8e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A13D0: .word 0x00001360
	thumb_func_end ovy173_21a138c

	thumb_func_start ovy173_21a13d4
ovy173_21a13d4: ; 0x021A13D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02040440
	mov r1, #0
	mov r7, #0
	bl sub_02042A9C
	bl sub_02042BC4
	cmp r0, #0
	ldr r5, _021A1438 ; =0x00000242
	bne _021A1408
	ldrh r1, [r4, r5]
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0x77
	add r2, r7, #0
	bl ovy173_219e398
	mov r0, #0xaa
	b _021A1430
_021A1408:
	ldrh r1, [r4, r5]
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0x4c
	add r2, r7, #0
	bl ovy173_219e398
	add r0, r4, #0
	bl ovy173_219f9f4
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x49
_021A1430:
	sub r5, #0x76
	str r0, [r4, r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A1438: .word 0x00000242
	thumb_func_end ovy173_21a13d4

	thumb_func_start ovy173_21a143c
ovy173_21a143c: ; 0x021A143C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A144E
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A144E:
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0xab
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a143c

	thumb_func_start ovy173_21a1460
ovy173_21a1460: ; 0x021A1460
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A147C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A147C:
	cmp r0, #0
	bne _021A1484
	mov r1, #0x44
	b _021A1486
_021A1484:
	mov r1, #0xa8
_021A1486:
	ldr r0, _021A149C ; =0x00001353
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A149C: .word 0x00001353
	thumb_func_end ovy173_21a1460

	thumb_func_start ovy173_21a14a0
ovy173_21a14a0: ; 0x021A14A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x18
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	bne _021A14BA
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A14BA:
	mov r0, #0x73
	mov r1, #0x79
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a14a0

	thumb_func_start ovy173_21a14c8
ovy173_21a14c8: ; 0x021A14C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #8]
	bl sub_021A16EC
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	beq _021A14E6
	cmp r4, #5
	beq _021A1514
	cmp r4, #6
	beq _021A151E
	b _021A152E
_021A14E6:
	bl sub_02042E84
	add r0, r5, #0
	bl ovy173_219fa68
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy173_21a5e84
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #0
	bl ovy173_219e3bc
	ldr r0, _021A159C ; =0x00001355
	mov r1, #0x10
	strb r4, [r5, r0]
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A1514:
	mov r0, #0x1d
	lsl r0, r0, #4
	str r4, [r5, r0]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A151E:
	add r0, r5, #0
	bl ovy173_219fa68
	mov r0, #0x1d
	lsl r0, r0, #4
	str r4, [r5, r0]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021A152E:
	bl sub_02040440
	mov r1, #0
	mov r7, #0
	bl sub_02042A9C
	bl sub_02042BC4
	cmp r0, #0
	beq _021A1582
	ldr r4, _021A15A0 ; =0x00001348
	add r1, r5, #0
	add r1, #0xc4
	ldr r0, [r5, r4]
	ldr r1, [r1]
	add r2, sp, #0
	bl ovy173_21a04d4
	cmp r0, #0
	beq _021A157E
	add r1, r5, #0
	add r1, #0xcc
	ldr r0, [r5, r4]
	ldr r1, [r1]
	add r2, sp, #0
	bl ovy173_21a0520
	cmp r0, #0
	beq _021A157E
	add r0, r5, #0
	mov r1, #0x68
	add r2, r7, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x74
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A157E:
	mov r1, #0x5b
	b _021A1590
_021A1582:
	bl sub_02040440
	mov r1, #0x1b
	mov r2, #0xa
	bl sub_02040624
	mov r1, #0x49
_021A1590:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A159C: .word 0x00001355
_021A15A0: .word 0x00001348
	thumb_func_end ovy173_21a14c8

	thumb_func_start ovy173_21a15a4
ovy173_21a15a4: ; 0x021A15A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A15B6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A15B6:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A15D2
	add r0, r5, #0
	bl ovy173_219e1cc
	ldr r0, _021A15D8 ; =0x00001353
	mov r1, #0x4a
	strb r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x8a
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A15D2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A15D8: .word 0x00001353
	thumb_func_end ovy173_21a15a4

	thumb_func_start ovy173_21a15dc
ovy173_21a15dc: ; 0x021A15DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #1
	bl ovy173_21a053c
	add r0, r5, #0
	bl ovy173_21a178c
	cmp r0, #0
	bne _021A160C
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x63
	lsl r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x20
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A160C:
	ldr r6, _021A1660 ; =0x021A72FC
	add r2, sp, #0
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r6, _021A1664 ; =0x0000134E
	add r0, r5, #0
	ldrh r2, [r5, r6]
	sub r6, r6, #2
	ldrh r6, [r5, r6]
	mov r7, #2
	mov r1, #2
	lsl r6, r6, #1
	add r2, r2, r6
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ovy173_21a52a8
	add r0, r5, #0
	sub r1, r7, #3
	bl ovy173_21a5da8
	mov r0, #0x73
	mov r1, #0x9e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #1
	bl ovy173_21a5db8
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1660: .word 0x021A72FC
_021A1664: .word 0x0000134E
	thumb_func_end ovy173_21a15dc

	thumb_func_start ovy173_21a1668
ovy173_21a1668: ; 0x021A1668
	push {r3, lr}
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_02017238
	bl sub_02009F7C
	pop {r3, pc}
	thumb_func_end ovy173_21a1668

	thumb_func_start ovy173_21a1678
ovy173_21a1678: ; 0x021A1678
	push {r3, lr}
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_02017238
	mov r1, #0
	bl sub_0200A0E4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1678

	thumb_func_start ovy173_21a168c
ovy173_21a168c: ; 0x021A168C
	push {r3, r4, r5, lr}
	add r2, #0xc4
	add r5, r0, #0
	ldr r0, [r2]
	add r4, r1, #0
	bl sub_02017238
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200A340
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a168c

	thumb_func_start ovy173_21a16a4
ovy173_21a16a4: ; 0x021A16A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021A16B8
	mov r1, #0x79
	lsl r1, r1, #0xc
	b _021A16BA
_021A16B8:
	ldr r1, _021A16D8 ; =0x0005E400
_021A16BA:
	ldr r0, _021A16DC ; =0x021A757C
	str r1, [r0, #0x48]
	cmp r4, #0
	beq _021A16CE
	ldr r0, _021A16DC ; =0x021A757C
	mov r1, #0
	add r2, r5, #0
	bl sub_020425EC
	pop {r3, r4, r5, pc}
_021A16CE:
	ldr r0, _021A16DC ; =0x021A757C
	bl sub_02042EFC
	pop {r3, r4, r5, pc}
	nop
_021A16D8: .word 0x0005E400
_021A16DC: .word 0x021A757C
	thumb_func_end ovy173_21a16a4

	thumb_func_start sub_021A16E0
sub_021A16E0: ; 0x021A16E0
	ldr r3, _021A16E8 ; =sub_021A61C0
	add r0, r1, #0
	bx r3
	nop
_021A16E8: .word sub_021A61C0
	thumb_func_end sub_021A16E0

	thumb_func_start sub_021A16EC
sub_021A16EC: ; 0x021A16EC
	ldr r3, _021A16F4 ; =sub_021A61C8
	add r0, r1, #0
	bx r3
	nop
_021A16F4: .word sub_021A61C8
	thumb_func_end sub_021A16EC

	thumb_func_start sub_021A16F8
sub_021A16F8: ; 0x021A16F8
	cmp r0, #0xe
	bhi _021A172A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1708: ; jump table
	.short _021A172A - _021A1708 - 2 ; case 0
	.short _021A172A - _021A1708 - 2 ; case 1
	.short _021A172A - _021A1708 - 2 ; case 2
	.short _021A172A - _021A1708 - 2 ; case 3
	.short _021A172A - _021A1708 - 2 ; case 4
	.short _021A172A - _021A1708 - 2 ; case 5
	.short _021A172A - _021A1708 - 2 ; case 6
	.short _021A1726 - _021A1708 - 2 ; case 7
	.short _021A1726 - _021A1708 - 2 ; case 8
	.short _021A1726 - _021A1708 - 2 ; case 9
	.short _021A1726 - _021A1708 - 2 ; case 10
	.short _021A1726 - _021A1708 - 2 ; case 11
	.short _021A1726 - _021A1708 - 2 ; case 12
	.short _021A1726 - _021A1708 - 2 ; case 13
	.short _021A1726 - _021A1708 - 2 ; case 14
_021A1726:
	mov r0, #1
	bx lr
_021A172A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A16F8

	thumb_func_start sub_021A1730
sub_021A1730: ; 0x021A1730
	cmp r0, #0xf
	bge _021A173C
	cmp r0, #3
	ble _021A173C
	mov r0, #1
	bx lr
_021A173C:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A1730

	thumb_func_start sub_021A1740
sub_021A1740: ; 0x021A1740
	cmp r0, #2
	bne _021A1748
	mov r0, #1
	bx lr
_021A1748:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A1740

	thumb_func_start ovy173_21a174c
ovy173_21a174c: ; 0x021A174C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_021A16F8
	cmp r0, #0
	beq _021A1762
	cmp r4, #4
	bne _021A1762
	mov r0, #1
	pop {r4, pc}
_021A1762:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_21a174c

	thumb_func_start ovy173_21a1768
ovy173_21a1768: ; 0x021A1768
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_02017364
	add r4, #0xc4
	ldr r0, [r4]
	bl sub_0201735C
	bl sub_0201FDFC
	cmp r0, #2
	blt _021A1788
	mov r0, #1
	pop {r4, pc}
_021A1788:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy173_21a1768

	thumb_func_start ovy173_21a178c
ovy173_21a178c: ; 0x021A178C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, _021A17C4 ; =0x00001348
	add r1, r5, #0
	add r1, #0xc4
	add r6, sp, #0
	ldr r0, [r5, r4]
	ldr r1, [r1]
	add r2, r6, #0
	bl ovy173_21a04d4
	cmp r0, #0
	beq _021A17BE
	ldr r0, [r5, r4]
	add r5, #0xcc
	ldr r1, [r5]
	add r2, r6, #0
	bl ovy173_21a0520
	cmp r0, #0
	beq _021A17BE
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021A17BE:
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021A17C4: .word 0x00001348
	thumb_func_end ovy173_21a178c

	thumb_func_start ovy173_21a17c8
ovy173_21a17c8: ; 0x021A17C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #1
	bne _021A17E2
	mov r0, #0
	bl sub_02042D8C
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a16a4
	b _021A17F4
_021A17E2:
	add r0, r4, #0
	add r1, r2, #0
	bl ovy173_21a174c
	cmp r0, #0
	beq _021A17F4
	mov r0, #1
	bl sub_02042D8C
_021A17F4:
	cmp r4, #6
	bhi _021A181E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1804: ; jump table
	.short _021A181E - _021A1804 - 2 ; case 0
	.short _021A181E - _021A1804 - 2 ; case 1
	.short _021A1812 - _021A1804 - 2 ; case 2
	.short _021A181E - _021A1804 - 2 ; case 3
	.short _021A181E - _021A1804 - 2 ; case 4
	.short _021A1812 - _021A1804 - 2 ; case 5
	.short _021A181E - _021A1804 - 2 ; case 6
_021A1812:
	bl sub_02040440
	mov r1, #1
	bl sub_02042A9C
	pop {r3, r4, r5, pc}
_021A181E:
	bl sub_02040440
	mov r1, #1
	bl sub_02042A9C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a17c8

	thumb_func_start ovy173_21a182c
ovy173_21a182c: ; 0x021A182C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021A183A
	bl GFL_TCBRemove
_021A183A:
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021A190C ; =0xFFFFE0FF
	mov r7, #0x21
	and r1, r0
	str r1, [r2]
	ldr r2, _021A1910 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #0x20
	mov r1, #0x21
	bl sub_0204AA30
	add r4, r0, #0
	mov r0, #0x21
	bl GFL_WordSetSystemCreateDefault
	add r1, r5, #0
	mov r6, #0x1a
	add r1, #0xdc
	str r0, [r1]
	lsl r6, r6, #4
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	mov r3, #0x21
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	add r6, #0x17
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	mov r3, #0x21
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl GFL_FontCreate
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	mov r0, #0x17
	mov r1, #3
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl GFL_FontCreate
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	mov r0, #1
	bl sub_02046DF8
	bl sub_021A19CC
	mov r0, #0x21
	bl ovy173_21a19dc
	mov r0, #0x21
	bl BmpWin_InitAllocator
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_21a1ed8
	ldr r0, _021A1914 ; =0x021A19C5
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r5]
	bl sub_021A1F50
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_21a1f54
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	add r0, r4, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A190C: .word 0xFFFFE0FF
_021A1910: .word 0x04001000
_021A1914: .word 0x021A19C5
	thumb_func_end ovy173_21a182c

	thumb_func_start ovy173_21a1918
ovy173_21a1918: ; 0x021A1918
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A1926
	bl GFL_TCBRemove
_021A1926:
	add r0, r4, #0
	bl ovy173_219ed90
	add r0, r4, #0
	bl ovy173_219ee34
	add r0, r4, #0
	bl ovy173_219ee50
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219CFAC
	cmp r0, #1
	bne _021A194C
	add r0, r4, #0
	bl ovy173_21a1c08
_021A194C:
	add r0, r4, #0
	bl sub_021A5424
	cmp r0, #1
	bne _021A195C
	add r0, r4, #0
	bl ovy173_21a54a0
_021A195C:
	ldr r0, _021A19C0 ; =0x00000898
	add r0, r4, r0
	bl ovy173_21a1d20
	mov r5, #0x45
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204BECC
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	bl ovy173_219ea18
	add r0, r4, #0
	bl sub_021A1ED4
	bl sub_020480A8
	bl sub_02044528
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_02022DA8
	add r4, #0xe8
	ldr r0, [r4]
	bl sub_02022DA8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A19C0: .word 0x00000898
	thumb_func_end ovy173_21a1918
_021A19C4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start sub_021A19CC
sub_021A19CC: ; 0x021A19CC
	ldr r0, _021A19D4 ; =0x021A7480
	ldr r3, _021A19D8 ; =GFL_BGSysSetVRAMBanks
	bx r3
	nop
_021A19D4: .word 0x021A7480
_021A19D8: .word GFL_BGSysSetVRAMBanks
	thumb_func_end sub_021A19CC

	thumb_func_start ovy173_21a19dc
ovy173_21a19dc: ; 0x021A19DC
	push {r3, r4, r5, lr}
	sub sp, #0x110
	bl GFL_BGSysCreate
	ldr r4, _021A1B8C ; =0x021A71E4
	add r3, sp, #0x100
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	ldr r4, _021A1B90 ; =0x021A735C
	add r3, sp, #0xe0
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
	mov r0, #0
	mov r2, #0
	mov r4, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045708
	mov r0, #0
	bl sub_02044F90
	ldr r5, _021A1B94 ; =0x021A721C
	add r3, sp, #0xc0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	bl sub_02045708
	mov r0, #1
	bl sub_02044F90
	ldr r5, _021A1B98 ; =0x021A723C
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #2
	bl sub_02045708
	mov r0, #2
	bl sub_02044F90
	ldr r5, _021A1B9C ; =0x021A725C
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	bl sub_02045708
	mov r0, #3
	bl sub_02044F90
	ldr r5, _021A1BA0 ; =0x021A729C
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	bl sub_02045708
	ldr r5, _021A1BA4 ; =0x021A72BC
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045708
	ldr r5, _021A1BA8 ; =0x021A731C
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	bl sub_02045708
	ldr r5, _021A1BAC ; =0x021A733C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r0, #7
	bl sub_02045708
_021A1B4E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02045718
	add r4, r4, #1
	cmp r4, #7
	blt _021A1B4E
	mov r0, #0
	mov r1, #3
	mov r4, #0
	bl sub_02044BD8
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #3
	mov r1, #1
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	ldr r0, _021A1BB0 ; =0x04000050
	strh r4, [r0]
	ldr r0, _021A1BB4 ; =0x04001050
	strh r4, [r0]
	add sp, #0x110
	pop {r3, r4, r5, pc}
	nop
_021A1B8C: .word 0x021A71E4
_021A1B90: .word 0x021A735C
_021A1B94: .word 0x021A721C
_021A1B98: .word 0x021A723C
_021A1B9C: .word 0x021A725C
_021A1BA0: .word 0x021A729C
_021A1BA4: .word 0x021A72BC
_021A1BA8: .word 0x021A731C
_021A1BAC: .word 0x021A733C
_021A1BB0: .word 0x04000050
_021A1BB4: .word 0x04001050
	thumb_func_end ovy173_21a19dc

	thumb_func_start ovy173_21a1bb8
ovy173_21a1bb8: ; 0x021A1BB8
	push {r4, r5}
	ldr r2, _021A1BDC ; =0x00000814
	mov r5, #0
_021A1BBE:
	lsl r3, r5, #2
	add r4, r0, r3
	ldr r3, [r4, r2]
	cmp r3, #0
	bne _021A1BD0
	ldr r0, _021A1BDC ; =0x00000814
	str r1, [r4, r0]
	pop {r4, r5}
	bx lr
_021A1BD0:
	add r5, r5, #1
	cmp r5, #0x21
	blt _021A1BBE
	pop {r4, r5}
	bx lr
	nop
_021A1BDC: .word 0x00000814
	thumb_func_end ovy173_21a1bb8

	thumb_func_start ovy173_21a1be0
ovy173_21a1be0: ; 0x021A1BE0
	push {r4, r5}
	ldr r2, _021A1C04 ; =0x00000814
	mov r5, #0
_021A1BE6:
	lsl r3, r5, #2
	add r4, r0, r3
	ldr r3, [r4, r2]
	cmp r3, r1
	bne _021A1BFA
	ldr r0, _021A1C04 ; =0x00000814
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, r5}
	bx lr
_021A1BFA:
	add r5, r5, #1
	cmp r5, #0x21
	blt _021A1BE6
	pop {r4, r5}
	bx lr
	.align 2, 0
_021A1C04: .word 0x00000814
	thumb_func_end ovy173_21a1be0

	thumb_func_start ovy173_21a1c08
ovy173_21a1c08: ; 0x021A1C08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy173_219cf50
	mov r4, #0
	ldr r7, _021A1C40 ; =0x00000814
	add r6, r4, #0
_021A1C1C:
	lsl r0, r4, #2
	add r0, r5, r0
	str r6, [r0, r7]
	add r0, r5, #0
	add r1, r4, #1
	bl sub_021A5A1C
	add r4, r4, #1
	cmp r4, #0x21
	blt _021A1C1C
	add r5, #0x50
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x20
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1C40: .word 0x00000814
	thumb_func_end ovy173_21a1c08

	thumb_func_start ovy173_21a1c44
ovy173_21a1c44: ; 0x021A1C44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021A1C4C:
	lsl r7, r4, #2
	ldr r0, _021A1C74 ; =0x00000814
	add r1, r5, r7
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021A1C68
	bl ovy173_219d330
	cmp r6, r0
	bne _021A1C68
	ldr r0, _021A1C74 ; =0x00000814
	add r1, r5, r7
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021A1C68:
	add r4, r4, #1
	cmp r4, #0x21
	blt _021A1C4C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A1C74: .word 0x00000814
	thumb_func_end ovy173_21a1c44

	thumb_func_start ovy173_21a1c78
ovy173_21a1c78: ; 0x021A1C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #0x80
	str r0, [sp]
	lsl r0, r4, #0x10
	mov r7, #4
	add r6, r1, #0
	lsr r0, r0, #0x10
	add r7, #0xfc
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	add r3, r7, #0
	bl sub_0204B0D4
	mov r0, #0x80
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #4
	mov r2, #4
	add r3, r7, #0
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #1
	mov r3, #0
	mov r7, #0xd
	bl sub_0204AE3C
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #6
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021A1D00
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r3, r5, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	add r3, #0xc
	bl sub_0204B2DC
	str r0, [r5, #8]
_021A1D00:
	ldr r0, [r5]
	cmp r0, #0
	bne _021A1D1A
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	add r3, r5, #4
	bl sub_0204B32C
	str r0, [r5]
_021A1D1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1c78

	thumb_func_start ovy173_21a1d20
ovy173_21a1d20: ; 0x021A1D20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021A1D32
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4]
_021A1D32:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A1D40
	bl GFL_HeapFree
	mov r0, #0
	str r0, [r4, #8]
_021A1D40:
	ldr r2, [r4, #0x10]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r4, #0x14]
	mov r0, #6
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1d20

	thumb_func_start ovy173_21a1d68
ovy173_21a1d68: ; 0x021A1D68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp]
	add r4, r0, #0
	str r3, [sp, #4]
	ldr r5, [r4, #4]
	add r0, r1, #0
	str r1, [sp, #0x18]
	add r5, #0xc
	bl sub_021A1E88
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xc
	lsr r2, r1, #4
	lsl r2, r2, #1
	str r2, [sp, #0x14]
	ldr r2, [r4, #4]
	lsl r1, r1, #0x1c
	ldrh r2, [r2]
	lsr r1, r1, #0x1b
	lsl r1, r1, #1
	lsr r2, r2, #3
	add r1, r5, r1
	str r2, [sp, #0x10]
	mov r4, #0
	str r1, [sp, #0xc]
	str r0, [sp, #8]
_021A1D9E:
	ldr r0, [sp, #0x14]
	mov r5, #0
	add r1, r0, r4
	ldr r0, [sp, #0x10]
	mul r1, r0
	ldr r0, [sp, #0xc]
	lsl r1, r1, #1
	add r7, r0, r1
_021A1DAE:
	lsl r3, r5, #1
	ldrh r6, [r7, r3]
	ldr r3, [sp, #8]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x18]
	add r1, r5, r1
	add r2, r4, r2
	lsr r3, r3, #0x10
	bl sub_0204694C
	add r5, r5, #1
	cmp r5, #2
	blt _021A1DAE
	add r4, r4, #1
	cmp r4, #2
	blt _021A1D9E
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1d68

	thumb_func_start ovy173_21a1de4
ovy173_21a1de4: ; 0x021A1DE4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0xf
	cmp r6, #6
	bhi _021A1E36
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A1DFC: ; jump table
	.short _021A1E30 - _021A1DFC - 2 ; case 0
	.short _021A1E36 - _021A1DFC - 2 ; case 1
	.short _021A1E2E - _021A1DFC - 2 ; case 2
	.short _021A1E32 - _021A1DFC - 2 ; case 3
	.short _021A1E0A - _021A1DFC - 2 ; case 4
	.short _021A1E16 - _021A1DFC - 2 ; case 5
	.short _021A1E22 - _021A1DFC - 2 ; case 6
_021A1E0A:
	cmp r5, #2
	bne _021A1E12
	mov r4, #4
	b _021A1E52
_021A1E12:
	mov r4, #3
	b _021A1E52
_021A1E16:
	cmp r5, #2
	bne _021A1E1E
	mov r4, #6
	b _021A1E52
_021A1E1E:
	mov r4, #5
	b _021A1E52
_021A1E22:
	cmp r5, #2
	bne _021A1E2A
	mov r4, #0xa
	b _021A1E52
_021A1E2A:
	mov r4, #9
	b _021A1E52
_021A1E2E:
	mov r4, #2
_021A1E30:
	b _021A1E52
_021A1E32:
	mov r4, #1
	b _021A1E52
_021A1E36:
	add r0, r6, #0
	bl sub_021A16F8
	cmp r0, #0
	beq _021A1E4C
	cmp r5, #2
	bne _021A1E48
	mov r4, #8
	b _021A1E52
_021A1E48:
	mov r4, #7
	b _021A1E52
_021A1E4C:
	cmp r6, #0xf
	blo _021A1E52
	mov r4, #0xe
_021A1E52:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1de4

	thumb_func_start ovy173_21a1e58
ovy173_21a1e58: ; 0x021A1E58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r6, r2, #0
	add r7, r3, #0
	bl ovy173_21a1de4
	ldr r1, [sp, #0x28]
	add r2, r6, #0
	add r0, r0, r1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ovy173_21a1d68
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1e58

	thumb_func_start sub_021A1E88
sub_021A1E88: ; 0x021A1E88
	mov r0, #8
	bx lr
	thumb_func_end sub_021A1E88

	thumb_func_start ovy173_21a1e8c
ovy173_21a1e8c: ; 0x021A1E8C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #0
	beq _021A1EAC
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
_021A1EAC:
	mov r5, #0x92
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	ldr r0, [r4, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A61D8
	ldr r1, [r4, r5]
	ldr r0, [r4, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A6254
	bl sub_021A4650
	mov r0, #9
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a1e8c

	thumb_func_start sub_021A1ED4
sub_021A1ED4: ; 0x021A1ED4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1ED4

	thumb_func_start ovy173_21a1ed8
ovy173_21a1ed8: ; 0x021A1ED8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xf
	mov r1, #1
	mov r6, #0xf
	bl sub_02046CFC
	mov r0, #0xd
	mov r1, #1
	bl sub_02046D84
	ldr r0, _021A1F48 ; =0x00000898
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x21
	mov r4, #0x21
	bl ovy173_21a1c78
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	lsl r3, r6, #5
	str r4, [sp, #4]
	bl sub_0204B0B8
	mov r0, #2
	mov r1, #0xe
	mov r2, #0
	mov r3, #0x21
	bl sub_02024D20
	ldr r4, _021A1F4C ; =0x00001330
	mov r1, #0xe
	str r0, [r5, r4]
	mov r0, #2
	mov r2, #0
	mov r3, #0x21
	bl sub_02024D20
	add r1, r4, #4
	str r0, [r5, r1]
	mov r0, #1
	mov r1, #0xe
	mov r2, #0
	mov r3, #0x21
	bl sub_02024D20
	add r4, #8
	str r0, [r5, r4]
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021A1F48: .word 0x00000898
_021A1F4C: .word 0x00001330
	thumb_func_end ovy173_21a1ed8

	thumb_func_start sub_021A1F50
sub_021A1F50: ; 0x021A1F50
	bx lr
	.align 2, 0
	thumb_func_end sub_021A1F50

	thumb_func_start ovy173_21a1f54
ovy173_21a1f54: ; 0x021A1F54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021A1F90 ; =0x021A7130
	ldr r1, _021A1F94 ; =0x021A7480
	mov r2, #0x21
	bl Oam_CreateSystem
	mov r0, #0x64
	mov r1, #0
	mov r2, #0x21
	mov r4, #0x64
	bl sub_0204BF1C
	mov r1, #0x64
	add r1, #0xac
	str r0, [r5, r1]
	ldr r0, _021A1F98 ; =0x021A714C
	mov r1, #2
	mov r2, #0x21
	bl sub_0204BE9C
	add r1, r0, #0
	mov r0, #0x64
	add r0, #0xb0
	add r4, #0xac
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	bl sub_0204C018
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A1F90: .word 0x021A7130
_021A1F94: .word 0x021A7480
_021A1F98: .word 0x021A714C
	thumb_func_end ovy173_21a1f54

	thumb_func_start ovy173_21a1f9c
ovy173_21a1f9c: ; 0x021A1F9C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x92
	add r5, r0, #0
	lsl r4, r4, #2
	add r6, r1, #0
	ldr r1, [r5, r4]
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021A201C
	mov r1, #4
	mov r7, #4
	bl sub_021A5EB4
	bl sub_02151CB8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0200A29C
	ldr r0, _021A2040 ; =0x00001360
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021A2006
	bl sub_02152000
	cmp r0, #0
	bne _021A2006
	bl sub_02151644
	add r0, r5, #0
	bl ovy173_21a2858
	ldr r0, [r5, r4]
	mov r2, #3
	add r0, #0x47
	ldrb r1, [r0]
	sub r0, r4, #6
	strh r1, [r5, r0]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a52a8
	bl sub_02040440
	mov r1, #0x18
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0xac
	sub r4, #0x7c
	str r0, [r5, r4]
	b _021A2028
_021A2006:
	bl sub_02040440
	mov r1, #0x12
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x93
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A2028
_021A201C:
	mov r1, #9
	sub r4, #0x7c
	str r1, [r5, r4]
	mov r1, #1
	bl sub_021A5EB4
_021A2028:
	bl sub_02005CA4
	ldr r1, _021A2044 ; =0x00000424
	cmp r0, r1
	beq _021A203A
	add r0, r1, #0
	ldr r1, _021A2048 ; =0x0000FFFF
	bl sub_02005DF4
_021A203A:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2040: .word 0x00001360
_021A2044: .word 0x00000424
_021A2048: .word 0x0000FFFF
	thumb_func_end ovy173_21a1f9c

	thumb_func_start ovy173_21a204c
ovy173_21a204c: ; 0x021A204C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #3
	bl sub_02044BD8
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #3
	mov r1, #1
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	mov r0, #0x73
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a204c

	thumb_func_start sub_021A2080
sub_021A2080: ; 0x021A2080
	ldr r0, [r0, #8]
	ldr r3, _021A2088 ; =sub_02151AB4
	mov r1, #0x20
	bx r3
	.align 2, 0
_021A2088: .word sub_02151AB4
	thumb_func_end sub_021A2080

	thumb_func_start ovy173_21a208c
ovy173_21a208c: ; 0x021A208C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r6, r1, #0
	add r7, r2, #0
	bl sub_0201736C
	ldr r1, [r5, #8]
	mov r2, #0x17
	strb r2, [r1, #0x15]
	ldr r1, [r5, #8]
	mov r2, #2
	strb r2, [r1, #0x16]
	add r4, r0, #0
	bl MyStatus_GetTrainerGender
	ldr r2, [r5, #8]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldrb r1, [r2, #0x1b]
	mov r0, #0xc
	bic r1, r0
	lsl r0, r3, #0x1e
	lsr r0, r0, #0x1c
	orr r0, r1
	strb r0, [r2, #0x1b]
	add r0, r4, #0
	bl sub_02008BF4
	ldr r1, [r5, #8]
	add r2, r7, #0
	strb r0, [r1, #0x14]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy173_21a52e8
	add r0, r4, #0
	bl sub_02008C0C
	ldr r1, [r5, #8]
	strb r0, [r1, #0x19]
	add r0, r4, #0
	bl sub_02008C10
	ldr r1, [r5, #8]
	mov r6, #0x92
	strb r0, [r1, #0x1a]
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	ldr r0, [r5, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A61D8
	ldr r1, [r5, r6]
	ldr r0, [r5, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A6254
	add r0, r4, #0
	bl sub_02008BD0
	ldr r1, [r5, #8]
	str r0, [r1, #4]
	add r0, r4, #0
	bl sub_02008BDC
	ldr r1, [r5, #8]
	str r0, [r1]
	add r0, r5, #0
	bl sub_021A2080
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a208c

	thumb_func_start ovy173_21a2124
ovy173_21a2124: ; 0x021A2124
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	mov r4, #0
	add r7, r6, #0
_021A212E:
	add r0, r5, r4
	strb r7, [r0, #0x10]
	ldr r0, _021A2184 ; =0x0000132A
	ldrh r0, [r5, r0]
	cmp r0, r4
	ble _021A2178
	add r0, r4, #0
	bl sub_021A5DA0
	cmp r0, #0
	beq _021A2178
	add r0, r4, #0
	bl sub_021A5D98
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021A16E0
	cmp r0, #0
	beq _021A2164
	cmp r0, #6
	bhs _021A2164
	add r0, r5, r6
	add r1, r4, #1
	strb r1, [r0, #0x10]
	add r6, r6, #1
	b _021A2178
_021A2164:
	add r0, r5, #0
	add r1, r4, #1
	bl sub_021A5A30
	cmp r0, #0
	beq _021A2178
	add r0, r5, #0
	add r1, r4, #1
	bl sub_021A5A1C
_021A2178:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021A212E
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2184: .word 0x0000132A
	thumb_func_end ovy173_21a2124

	thumb_func_start ovy173_21a2188
ovy173_21a2188: ; 0x021A2188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	mov r4, #0
_021A2194:
	add r0, r4, #0
	bl sub_021A5D98
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16E0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16EC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	bl sub_021A5DA0
	cmp r0, #0
	bne _021A21C6
	mov r0, #0
	str r0, [sp, #4]
_021A21C6:
	add r0, r5, r4
	add r0, #0x50
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _021A21EE
	add r0, r5, r4
	add r0, #0x70
	ldrb r1, [r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _021A21EE
	add r0, r6, #0
	bl sub_021A61D0
	add r1, r5, r4
	add r1, #0x90
	ldrb r1, [r1]
	cmp r1, r0
	beq _021A228E
_021A21EE:
	add r0, r5, #0
	add r1, r4, #1
	bl ovy173_21a1c44
	str r0, [sp, #8]
	cmp r0, #0
	beq _021A226C
	add r0, r5, r4
	add r0, #0x50
	ldrb r0, [r0]
	bl sub_021A1740
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_021A1740
	cmp r7, #1
	bne _021A2222
	cmp r0, #0
	bne _021A2222
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r1, [sp, #8]
	mov r2, #0
	b _021A2234
_021A2222:
	cmp r7, #0
	bne _021A2238
	cmp r0, #1
	bne _021A2238
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r1, [sp, #8]
	add r0, r5, r0
	mov r2, #1
_021A2234:
	bl ovy173_219d3e0
_021A2238:
	ldrb r3, [r6, #0x14]
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r2, #8
	bl sub_0200A034
	ldrb r3, [r6, #0x1b]
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r3, r3, #0x1c
	mov r2, #9
	lsr r3, r3, #0x1e
	bl sub_0200A034
	ldr r0, [r5, #4]
	ldr r3, [r6]
	add r1, r4, #0
	mov r2, #1
	bl sub_0200A034
	ldr r0, [r5, #4]
	ldr r3, [r6, #4]
	add r1, r4, #0
	mov r2, #0
	bl sub_0200A034
_021A226C:
	add r1, r5, r4
	ldr r0, [sp, #4]
	add r1, #0x50
	strb r0, [r1]
	add r1, r5, r4
	ldr r0, [sp]
	add r1, #0x70
	strb r0, [r1]
	add r0, r6, #0
	bl sub_021A61D0
	add r1, r5, r4
	add r1, #0x90
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021A228E:
	add r4, r4, #1
	cmp r4, #0x20
	bge _021A2296
	b _021A2194
_021A2296:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a2188

	thumb_func_start sub_021A229C
sub_021A229C: ; 0x021A229C
	bx lr
	.align 2, 0
	thumb_func_end sub_021A229C

	thumb_func_start ovy173_21a22a0
ovy173_21a22a0: ; 0x021A22A0
	push {r4, r5, r6, lr}
	mov r4, #0x1e
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	add r6, r1, #0
	cmp r0, #0
	ble _021A22B8
	sub r0, r0, #1
	str r0, [r5, r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A22B8:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A22E2
	add r0, r4, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0x44
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0x37
	mov r2, #0
	bl ovy173_219e398
	mov r0, #2
	sub r4, #0x14
	str r0, [r5, r4]
_021A22E2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a22a0

	thumb_func_start ovy173_21a22e8
ovy173_21a22e8: ; 0x021A22E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A2304
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A2304:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a22e8

	thumb_func_start ovy173_21a2308
ovy173_21a2308: ; 0x021A2308
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A231E
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A231E:
	cmp r0, #0
	bne _021A233A
	mov r0, #0
	bl sub_02042860
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #0x73
	mov r1, #4
	lsl r0, r0, #2
	b _021A2356
_021A233A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #0
	mov r6, #0
	bl sub_02042860
	mov r0, #0x1d
	lsl r0, r0, #4
	str r6, [r5, r0]
	mov r1, #0x1a
	sub r0, r0, #4
_021A2356:
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a2308

	thumb_func_start ovy173_21a2364
ovy173_21a2364: ; 0x021A2364
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	bl sub_02042AB8
	cmp r0, #0
	beq _021A2376
	b _021A247E
_021A2376:
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219CFAC
	cmp r0, #1
	bne _021A23A6
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	add r0, r4, #0
	bl ovy173_21a1c08
	bl sub_0204B7FC
_021A23A6:
	add r0, r4, #0
	bl sub_021A5424
	cmp r0, #1
	bne _021A23B6
	add r0, r4, #0
	bl ovy173_21a54a0
_021A23B6:
	mov r5, #0x66
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl ovy173_219e19c
	str r0, [r4, r5]
	mov r0, #3
	bl sub_02045708
	mov r0, #0x20
	mov r1, #0x21
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy173_21a1ed8
	add r0, r7, #0
	bl GFL_ArcToolFree
	ldr r0, _021A2484 ; =0x00001328
	mov r1, #1
	strh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021A241E
	add r5, #8
	ldr r0, [r4, r5]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl sub_02025A10
	add r0, r4, #0
	add r0, #0xb4
	str r5, [r0]
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_02024FAC
	add r0, r4, #0
	add r0, #0xb0
	str r5, [r0]
_021A241E:
	add r0, r4, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x70
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x90
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	add r0, r4, #0
	bl ovy173_219e9b4
	add r0, r4, #0
	mov r1, #0
	bl ovy173_21a16a4
	bl sub_020423E0
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #1
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r4, r0]
_021A247E:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A2484: .word 0x00001328
	thumb_func_end ovy173_21a2364

	thumb_func_start ovy173_21a2488
ovy173_21a2488: ; 0x021A2488
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A249A
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A249A:
	bl sub_02151F00
	cmp r0, #0
	beq _021A24B4
	mov r0, #0x73
	mov r1, #0x3c
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x1e
	mov r2, #1
	bl ovy173_219e398
_021A24B4:
	bl sub_02042220
	cmp r0, #0
	beq _021A24E8
	mov r4, #0x7a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A24CE
	mov r0, #7
_021A24C8:
	sub r4, #0x1c
	str r0, [r5, r4]
	b _021A24FE
_021A24CE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a208c
	add r0, r5, #0
	bl ovy173_21a2124
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a1e8c
	b _021A24C8
_021A24E8:
	bl sub_02042580
	cmp r0, #0
	bne _021A24F8
	bl sub_020420B4
	cmp r0, #3
	bne _021A24FE
_021A24F8:
	add r0, r5, #0
	bl sub_021A229C
_021A24FE:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a2488

	thumb_func_start ovy173_21a2504
ovy173_21a2504: ; 0x021A2504
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A2516
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A2516:
	bl sub_02151F00
	cmp r0, #0
	beq _021A2534
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201782C
	mov r0, #0x73
	mov r1, #0x3e
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A2534:
	bl sub_02042220
	cmp r0, #0
	beq _021A2568
	mov r4, #0x7a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A254E
	mov r0, #7
_021A2548:
	sub r4, #0x1c
	str r0, [r5, r4]
	b _021A257E
_021A254E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a208c
	add r0, r5, #0
	bl ovy173_21a2124
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a1e8c
	b _021A2548
_021A2568:
	bl sub_02042580
	cmp r0, #0
	bne _021A2578
	bl sub_020420B4
	cmp r0, #3
	bne _021A257E
_021A2578:
	add r0, r5, #0
	bl sub_021A229C
_021A257E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a2504

	thumb_func_start ovy173_21a2584
ovy173_21a2584: ; 0x021A2584
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02151F00
	cmp r0, #0
	beq _021A25AE
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_02017850
	cmp r0, #0
	beq _021A25AA
	cmp r0, #1
	beq _021A25AA
	bl sub_02151F14
	b _021A25AE
_021A25AA:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A25AE:
	bl sub_02042220
	cmp r0, #0
	beq _021A25E2
	mov r4, #0x7a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A25C8
	mov r0, #7
_021A25C2:
	sub r4, #0x1c
	str r0, [r5, r4]
	b _021A25F8
_021A25C8:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a208c
	add r0, r5, #0
	bl ovy173_21a2124
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a1e8c
	b _021A25C2
_021A25E2:
	bl sub_02042580
	cmp r0, #0
	bne _021A25F2
	bl sub_020420B4
	cmp r0, #3
	bne _021A25F8
_021A25F2:
	add r0, r5, #0
	bl sub_021A229C
_021A25F8:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a2584

	thumb_func_start ovy173_21a25fc
ovy173_21a25fc: ; 0x021A25FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _021A2614
	sub r1, r1, #1
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A2614:
	ldr r6, _021A26A0 ; =0x00001344
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021A2624
	bl sub_0201F950
	mov r0, #0
	str r0, [r5, r6]
_021A2624:
	bl sub_02042580
	cmp r0, #0
	bne _021A2634
	bl sub_020420B4
	cmp r0, #3
	bne _021A263C
_021A2634:
	add r0, r5, #0
	bl sub_021A229C
	b _021A269C
_021A263C:
	bl sub_0204223C
	cmp r0, #0
	beq _021A265A
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219CFAC
	cmp r0, #1
	bne _021A2658
	add r0, r5, #0
	bl ovy173_21a1c08
_021A2658:
	b _021A268E
_021A265A:
	bl sub_020420B4
	cmp r0, #4
	bge _021A2674
	bl sub_02042210
	cmp r0, #0
	bne _021A2674
	mov r0, #0xff
	bl sub_02042A80
	cmp r0, #0
	bne _021A269C
_021A2674:
	mov r0, #1
	bl sub_020421AC
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219CFAC
	cmp r0, #1
	bne _021A268E
	add r0, r5, #0
	bl ovy173_21a1c08
_021A268E:
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a1e8c
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
_021A269C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A26A0: .word 0x00001344
	thumb_func_end ovy173_21a25fc

	thumb_func_start ovy173_21a26a4
ovy173_21a26a4: ; 0x021A26A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e1cc
	bl sub_020352E0
	cmp r0, #0
	beq _021A26BC
	add r0, r5, #0
	mov r1, #0x2c
	b _021A26C0
_021A26BC:
	add r0, r5, #0
	mov r1, #0x13
_021A26C0:
	bl ovy173_219e3e4
	mov r0, #0x73
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0x1c
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a26a4

	thumb_func_start ovy173_21a26d8
ovy173_21a26d8: ; 0x021A26D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A2738
	ldr r0, [r5, #4]
	bl sub_0200A150
	cmp r0, #0
	bne _021A270C
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #1
	mov r4, #1
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x33
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0x14
	str r4, [r5, r0]
	b _021A2738
_021A270C:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a208c
	add r0, r5, #0
	bl ovy173_21a2124
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a1e8c
	mov r4, #0x73
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	sub r4, #0x30
	str r0, [r5, r4]
_021A2738:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a26d8

	thumb_func_start ovy173_21a273c
ovy173_21a273c: ; 0x021A273C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A2750
	bl sub_02048210
_021A2750:
	mov r0, #0x20
	mov r4, #0x1e
	str r0, [sp]
	mov r0, #0x21
	lsl r4, r4, #4
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B0B8
	add r0, r4, #0
	sub r0, #0x48
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0x48
	str r0, [r5, r1]
	mov r6, #2
	str r6, [sp]
	mov r7, #0xf
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #1
	mov r2, #1
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	sub r1, #0x4c
	str r0, [r5, r1]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #1
	mov r2, #1
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	add r1, r4, #0
	sub r1, #0x48
	sub r4, #0x4c
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	mov r4, #0xff
	bl BmpWin_BitmapFill
	mov r0, #0xff
	add r0, #0x95
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	mov r0, #0xff
	add r0, #0x99
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	mov r0, #0xff
	add r0, #0x99
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	ldr r2, _021A27FC ; =0x00001334
	add r4, #0x99
	ldr r2, [r5, r2]
	ldr r0, [r5, r4]
	lsl r2, r2, #0x10
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02024E80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A27FC: .word 0x00001334
	thumb_func_end ovy173_21a273c

	thumb_func_start ovy173_21a2800
ovy173_21a2800: ; 0x021A2800
	push {r3, r4, r5, lr}
	ldr r4, [r1, #8]
	bl sub_021A5D98
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021A61C0
	add r0, r5, #0
	bl sub_021A61C0
	add r0, r4, #0
	bl sub_021A61C8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021A61C8
	cmp r4, r0
	bne _021A282C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A282C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a2800

	thumb_func_start ovy173_21a2830
ovy173_21a2830: ; 0x021A2830
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042580
	cmp r0, #0
	bne _021A284A
	bl sub_0204223C
	cmp r0, #0
	bne _021A284A
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A284A:
	mov r0, #0x73
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a2830

	thumb_func_start ovy173_21a2858
ovy173_21a2858: ; 0x021A2858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021A2990 ; =ovy173_21a2800
	bl sub_021508C8
	mov r0, #0x20
	mov r1, #0x21
	bl sub_0204AA30
	add r6, r0, #0
	add r0, r5, #0
	bl ovy173_21a5388
	add r0, r5, #0
	bl ovy173_21a3c64
	add r0, r5, #0
	add r0, #0x30
	mov r1, #0
	mov r2, #0x20
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021A28C0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb4
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_02024FAC
	add r0, r5, #0
	add r0, #0xb0
	str r4, [r0]
_021A28C0:
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219CFAC
	cmp r0, #0
	bne _021A2924
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201736C
	bl MyStatus_GetTrainerGender
	mov r4, #0x10
	cmp r0, #0
	beq _021A28E4
	mov r4, #0x11
_021A28E4:
	ldr r0, [r5, #4]
	bl sub_0200A170
	ldr r1, _021A2994 ; =0x0000132A
	mov r7, #0x9d
	strh r0, [r5, r1]
	ldrh r0, [r5, r1]
	mov r1, #0x20
	lsl r7, r7, #2
	str r0, [sp]
	mov r0, #0x20
	str r1, [sp, #4]
	add r0, #0xf0
	ldr r0, [r5, r0]
	add r1, #0xf4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	mov r1, #0x21
	str r0, [sp, #0xc]
	add r0, r5, r7
	add r2, r6, #0
	add r3, r4, #0
	bl ovy173_219ce80
	add r0, r5, r7
	add r1, r4, #0
	bl ovy173_219d1e0
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_21a1bb8
_021A2924:
	add r0, r5, #0
	bl sub_021A5424
	cmp r0, #0
	bne _021A2938
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x21
	bl ovy173_21a5438
_021A2938:
	ldr r0, [r5, #8]
	bl ovy173_21a621c
	ldr r0, _021A2998 ; =0x00001351
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0x21
	mov r4, #0x21
	bl ovy173_21a5a3c
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	bl ovy173_21a2124
	add r0, r5, #0
	bl ovy173_21a273c
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a16a4
	mov r1, #0x21
	mov r0, #0x1f
	sub r1, #0x22
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r6, #0
	bl GFL_ArcToolFree
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #8]
	bl GFL_FadeScreenSet
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2990: .word ovy173_21a2800
_021A2994: .word 0x0000132A
_021A2998: .word 0x00001351
	thumb_func_end ovy173_21a2858

	thumb_func_start ovy173_21a299c
ovy173_21a299c: ; 0x021A299C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a2858
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a17c8
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_21a5de8
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a299c

	thumb_func_start ovy173_21a29d8
ovy173_21a29d8: ; 0x021A29D8
	push {r3, lr}
	bl sub_020420B4
	cmp r0, #1
	bne _021A29E6
	mov r0, #1
	pop {r3, pc}
_021A29E6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy173_21a29d8

	thumb_func_start ovy173_21a29ec
ovy173_21a29ec: ; 0x021A29EC
	push {r3, lr}
	bl sub_02151E08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A29FE
	mov r0, #1
	pop {r3, pc}
_021A29FE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy173_21a29ec

	thumb_func_start ovy173_21a2a04
ovy173_21a2a04: ; 0x021A2A04
	push {r3, lr}
	bl sub_020420B4
	cmp r0, #3
	beq _021A2A16
	cmp r0, #4
	beq _021A2A16
	cmp r0, #5
	bne _021A2A1A
_021A2A16:
	mov r0, #1
	pop {r3, pc}
_021A2A1A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy173_21a2a04

	thumb_func_start ovy173_21a2a20
ovy173_21a2a20: ; 0x021A2A20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ovy173_21a2124
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x30
	mov r2, #0x20
	bl sub_02043E98
	cmp r0, #0
	bne _021A2A48
	b _021A2B5C
_021A2A48:
	ldr r6, [sp, #4]
_021A2A4A:
	add r4, r5, r6
	add r2, r4, #0
	add r2, #0x30
	ldrb r2, [r2]
	mov r1, #0
	mov r0, #0
_021A2A56:
	add r3, r5, r0
	ldrb r3, [r3, #0x10]
	cmp r3, r2
	bne _021A2A62
	mov r1, #1
	b _021A2A68
_021A2A62:
	add r0, r0, #1
	cmp r0, #0x20
	blt _021A2A56
_021A2A68:
	cmp r1, #0
	bne _021A2AC0
	add r0, r4, #0
	add r0, #0x30
	ldrb r1, [r0]
	cmp r1, #0
	beq _021A2AC0
	add r0, r5, #0
	bl ovy173_21a1c44
	add r7, r0, #0
	beq _021A2AB4
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	bl ovy173_219d2d4
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a1be0
	add r1, r5, r6
	add r1, #0x30
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021A5A1C
	add r1, r5, r6
	add r1, #0x30
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #0x21
	bl ovy173_21a53f4
	mov r0, #1
	str r0, [sp]
	b _021A2AC0
_021A2AB4:
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_021A5A1C
_021A2AC0:
	ldrb r0, [r4, #0x10]
	mov r1, #0
	mov r2, #0
_021A2AC6:
	add r3, r5, r2
	add r3, #0x30
	ldrb r3, [r3]
	cmp r0, r3
	bne _021A2AD4
	mov r1, #1
	b _021A2ADA
_021A2AD4:
	add r2, r2, #1
	cmp r2, #0x20
	blt _021A2AC6
_021A2ADA:
	cmp r1, #0
	bne _021A2B22
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _021A2B22
	sub r0, r0, #1
	bl sub_021A5D98
	add r1, r0, #0
	add r2, r5, r6
	mov r0, #0x9d
	lsl r0, r0, #2
	ldrb r1, [r1, #0x14]
	ldrb r2, [r2, #0x10]
	add r0, r5, r0
	bl ovy173_219d248
	add r7, r0, #0
	beq _021A2B18
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #2
	bl sub_021A5A08
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a1bb8
	mov r0, #1
	str r0, [sp, #4]
	b _021A2B22
_021A2B18:
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #1
	bl sub_021A5A08
_021A2B22:
	add r6, r6, #1
	cmp r6, #0x20
	blt _021A2A4A
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x30
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021A2B42
	ldr r0, [sp]
	cmp r0, #0
	beq _021A2B48
_021A2B42:
	add r0, r5, #0
	bl sub_021A5A5C
_021A2B48:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021A2B50
	b _021A2B56
_021A2B50:
	ldr r0, [sp]
	cmp r0, #1
	bne _021A2B5C
_021A2B56:
	ldr r0, _021A2B64 ; =0x00000676
	bl GFL_SndSEPlay
_021A2B5C:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A2B64: .word 0x00000676
	thumb_func_end ovy173_21a2a20

	thumb_func_start ovy173_21a2b68
ovy173_21a2b68: ; 0x021A2B68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r6, #0
	add r7, r0, #0
_021A2B76:
	add r4, r5, r6
	ldrb r1, [r4, #0x10]
	cmp r1, #0
	beq _021A2BCC
	add r0, r5, #0
	bl ovy173_21a1c44
	cmp r0, #0
	bne _021A2BCC
	ldrb r0, [r4, #0x10]
	sub r0, r0, #1
	bl sub_021A5D98
	add r1, r0, #0
	mov r0, #0x9d
	lsl r0, r0, #2
	ldrb r1, [r1, #0x14]
	ldrb r2, [r4, #0x10]
	add r0, r5, r0
	bl ovy173_219d248
	str r0, [sp, #4]
	cmp r0, #0
	beq _021A2BCC
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	mov r2, #2
	bl sub_021A5A08
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy173_21a1bb8
	add r0, r4, #0
	add r0, #0x50
	strb r7, [r0]
	add r0, r4, #0
	add r0, #0x70
	strb r7, [r0]
	add r4, #0x90
	mov r0, #1
	strb r7, [r4]
	str r0, [sp]
_021A2BCC:
	add r6, r6, #1
	cmp r6, #0x20
	blt _021A2B76
	ldr r0, [sp]
	cmp r0, #1
	bne _021A2BDE
	ldr r0, _021A2BE4 ; =0x00000676
	bl GFL_SndSEPlay
_021A2BDE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A2BE4: .word 0x00000676
	thumb_func_end ovy173_21a2b68

	thumb_func_start ovy173_21a2be8
ovy173_21a2be8: ; 0x021A2BE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a2188
	cmp r0, #0
	ble _021A2C14
	ldr r0, _021A2C18 ; =0x000008EF
	ldrb r1, [r5, r0]
	cmp r1, #0
	beq _021A2C08
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_219ec14
	pop {r3, r4, r5, pc}
_021A2C08:
	mov r1, #1
	add r0, r0, #5
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_21a5a70
_021A2C14:
	pop {r3, r4, r5, pc}
	nop
_021A2C18: .word 0x000008EF
	thumb_func_end ovy173_21a2be8

	thumb_func_start ovy173_21a2c1c
ovy173_21a2c1c: ; 0x021A2C1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a2a20
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_21a2be8
	add r0, r5, #0
	bl ovy173_21a2b68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a2c1c

	thumb_func_start ovy173_21a2c38
ovy173_21a2c38: ; 0x021A2C38
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x9d
	ldr r7, _021A2C5C ; =0x00000814
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021A2C44:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r1, [r0, r7]
	cmp r1, #0
	beq _021A2C54
	add r0, r5, r6
	bl sub_0219D1C4
_021A2C54:
	add r4, r4, #1
	cmp r4, #0x21
	blt _021A2C44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A2C5C: .word 0x00000814
	thumb_func_end ovy173_21a2c38

	thumb_func_start ovy173_21a2c60
ovy173_21a2c60: ; 0x021A2C60
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	mov r0, #0
	ldr r1, _021A2F70 ; =0x00001356
	str r0, [sp]
	strb r0, [r4, r1]
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	bne _021A2C7A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2C7A:
	bl sub_02042580
	cmp r0, #0
	beq _021A2C8C
	add r0, r4, #0
	bl sub_021A229C
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2C8C:
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r0, [sp]
	ldr r2, [r4, r1]
	sub r0, r0, #1
	cmp r2, r0
	beq _021A2CBE
	add r0, r1, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	sub r1, #0x28
	add r2, r0, #1
	mov r0, #0xe1
	lsl r0, r0, #4
	str r2, [r4, r1]
	cmp r2, r0
	ble _021A2CBE
	ldr r0, [sp]
	ldr r3, _021A2F74 ; =0x000003F1
	add r1, r0, #0
	add r2, r0, #0
	bl sub_020424AC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2CBE:
	bl sub_020420B4
	cmp r0, #4
	bne _021A2CF8
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r4, #0
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #1
	bl sub_020421AC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2CF8:
	add r0, r4, #0
	mov r1, #0x21
	mov r5, #0x21
	bl ovy173_21a2c1c
	add r0, r4, #0
	bl ovy173_21a55cc
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0219D434
	add r0, r4, r6
	bl sub_0219D1DC
	cmp r0, #0
	bne _021A2DA6
	bl sub_02151E08
	sub r5, #0x22
	cmp r0, r5
	bne _021A2D6C
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _021A2D6C
	add r0, r4, #0
	bl ovy173_21a5348
	cmp r0, #0
	beq _021A2D42
	add r0, r4, #0
	mov r1, #0x39
	b _021A2D46
_021A2D42:
	add r0, r4, #0
	mov r1, #0x3a
_021A2D46:
	mov r2, #0
	bl ovy173_219e3bc
	ldr r0, _021A2F78 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy173_219e840
	mov r0, #0x73
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2D6C:
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a54e4
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy173_21a1c44
	add r1, r0, #0
	cmp r5, #0
	beq _021A2D96
	cmp r1, #0
	beq _021A2D94
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ovy173_219d17c
	b _021A2DA6
_021A2D94:
	b _021A2D96
_021A2D96:
	add r0, r4, #0
	bl ovy173_21a2c38
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219D1D0
_021A2DA6:
	ldr r0, _021A2F7C ; =0x0000135A
	ldrb r0, [r4, r0]
	cmp r0, #0xff
	beq _021A2E1C
	mov r6, #0
_021A2DB0:
	mov r0, #0x20
	bl sub_02005784
	add r5, r0, #0
	bl sub_021A5D98
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ovy173_21a61e8
	cmp r0, #0
	beq _021A2E16
	add r0, r5, #0
	bl sub_021A5D98
	bl sub_021A6264
	mov r1, #0x92
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, r1, r5
	add r1, #0x24
	ldrb r1, [r1]
	cmp r0, r1
	beq _021A2E16
	add r0, r5, #0
	bl sub_021A5D98
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A16E0
	add r0, r5, #0
	bl sub_021A5D98
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021A16EC
	add r0, r5, #1
	ldr r5, _021A2F80 ; =0x00000242
	mov r1, #0
	strh r0, [r4, r5]
	ldr r0, _021A2F84 ; =0x00000805
	bl sub_020061DC
	mov r0, #0x3f
	sub r5, #0x76
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2E16:
	add r6, r6, #1
	cmp r6, #0x20
	blt _021A2DB0
_021A2E1C:
	add r0, r4, #0
	bl ovy173_21a29d8
	cmp r0, #0
	beq _021A2E52
	mov r5, #0x1f
	lsl r5, r5, #4
	mov r0, #0
	ldr r1, [r4, r5]
	mvn r0, r0
	cmp r1, r0
	beq _021A2E52
	ldr r0, _021A2F84 ; =0x00000805
	mov r1, #0
	bl sub_020061DC
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	mov r0, #0x28
	sub r5, #0x24
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2E52:
	mov r6, #0x1f
	lsl r6, r6, #4
	mov r5, #0
	ldr r0, [r4, r6]
	mvn r5, r5
	cmp r0, r5
	bne _021A2E92
	bl sub_02151E08
	cmp r0, r5
	beq _021A2E92
	bl sub_02151E08
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r4, r6]
	bl ovy173_219e154
	ldr r0, _021A2F88 ; =0x00001351
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021A2E88
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl ovy173_219e398
_021A2E88:
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021A2EDE
_021A2E92:
	mov r5, #0x1f
	lsl r5, r5, #4
	mov r6, #0
	ldr r0, [r4, r5]
	mvn r6, r6
	cmp r0, r6
	beq _021A2EDE
	bl sub_02151E08
	cmp r0, r6
	bne _021A2EDE
	mov r0, #0
	bl sub_02151E40
	ldr r0, [r4, #8]
	bl sub_021A61D0
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_021A6254
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #1
	bl sub_020421AC
	mov r0, #0x13
	sub r5, #0x24
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2EDE:
	add r0, r4, #0
	bl ovy173_21a2a04
	cmp r0, #0
	beq _021A2F16
	mov r5, #0x1f
	lsl r5, r5, #4
	mov r0, #0
	ldr r1, [r4, r5]
	mvn r0, r0
	cmp r1, r0
	beq _021A2F16
	bl sub_02151E24
	add r1, r0, #0
	add r0, r4, #0
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	sub r5, #0x24
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2F16:
	bl ovy11_02151DEC
	cmp r0, #1
	bne _021A2F3E
	bl sub_02151E08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A2F3E
	mov r0, #0
	bl sub_02151E40
	ldr r0, [r4, #8]
	bl sub_021A61D0
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_021A6254
_021A2F3E:
	ldr r1, [r4, #8]
	add r0, r4, #0
	bl sub_021A16E0
	mov r6, #0x1f
	lsl r6, r6, #4
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r4, r6]
	mvn r0, r0
	cmp r1, r0
	bne _021A2FB4
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A2FA2
	add r0, r5, #0
	bl sub_021A1740
	cmp r0, #0
	beq _021A2FA2
	ldr r0, _021A2F78 ; =0x0000054C
	b _021A2F8C
	nop
_021A2F70: .word 0x00001356
_021A2F74: .word 0x000003F1
_021A2F78: .word 0x0000054C
_021A2F7C: .word 0x0000135A
_021A2F80: .word 0x00000242
_021A2F84: .word 0x00000805
_021A2F88: .word 0x00001351
_021A2F8C:
	bl GFL_SndSEPlay
	mov r0, #0x1f
	sub r6, #0x24
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a53bc
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2FA2:
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl ovy173_219cfb0
	str r0, [sp]
	add r0, r4, r6
	bl ovy173_219d444
_021A2FB4:
	ldr r0, [sp]
	cmp r0, #3
	bhi _021A3082
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A2FC6: ; jump table
	.short _021A2FCE - _021A2FC6 - 2 ; case 0
	.short _021A2FD2 - _021A2FC6 - 2 ; case 1
	.short _021A3042 - _021A2FC6 - 2 ; case 2
	.short _021A3010 - _021A2FC6 - 2 ; case 3
_021A2FCE:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A2FD2:
	ldr r0, _021A3088 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_021A1740
	cmp r0, #0
	beq _021A2FEC
	mov r0, #0x73
	mov r1, #0x1f
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021A3004
_021A2FEC:
	mov r0, #0x1d
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x31
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #1
	bl ovy173_219e398
_021A3004:
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3010:
	cmp r5, #1
	bne _021A3082
	ldr r5, _021A308C ; =0x00001360
	mov r0, #1
	str r0, [r4, r5]
	ldr r0, _021A3088 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl ovy173_219d404
	mov r0, #0x1c
	sub r6, #0xa8
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	mov r0, #0
	sub r5, #0xf
	strb r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3042:
	cmp r5, #1
	bne _021A3082
	mov r5, #0x9d
	lsl r5, r5, #2
	add r0, r4, r5
	bl sub_0219D0D4
	add r6, r0, #0
	ldr r0, _021A3090 ; =0x00000547
	bl GFL_SndSEPlay
	sub r0, r6, #1
	bl sub_021A5D98
	add r1, r5, #0
	sub r1, #0x28
	add r1, r4, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	mov r0, #0x22
	sub r5, #0xa8
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	ldr r0, _021A3094 ; =0x0000135A
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3082:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3088: .word 0x0000054C
_021A308C: .word 0x00001360
_021A3090: .word 0x00000547
_021A3094: .word 0x0000135A
	thumb_func_end ovy173_21a2c60

	thumb_func_start ovy173_21a3098
ovy173_21a3098: ; 0x021A3098
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x1f
	add r4, r0, #0
	lsl r1, r1, #4
	mov r0, #0
	str r0, [sp]
	ldr r2, [r4, r1]
	sub r0, r0, #1
	cmp r2, r0
	beq _021A30D2
	add r0, r1, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	sub r1, #0x28
	add r2, r0, #1
	mov r0, #0xe1
	lsl r0, r0, #4
	str r2, [r4, r1]
	cmp r2, r0
	ble _021A30D2
	ldr r0, [sp]
	ldr r3, _021A32F4 ; =0x000003F1
	add r1, r0, #0
	add r2, r0, #0
	bl sub_020424AC
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A30D2:
	add r0, r4, #0
	bl ovy173_219e208
	ldr r1, _021A32F8 ; =0x00001356
	mov r0, #0
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0x21
	mov r7, #0x21
	bl ovy173_21a2c1c
	add r0, r4, #0
	bl ovy173_21a55cc
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0219D434
	add r0, r4, #0
	bl ovy173_21a29d8
	cmp r0, #0
	beq _021A312C
	add r0, r6, #0
	sub r0, #0x84
	ldr r0, [r4, r0]
	sub r7, #0x22
	cmp r0, r7
	beq _021A312C
	ldr r0, _021A32FC ; =0x00000805
	mov r1, #0
	bl sub_020061DC
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	mov r0, #0x28
	sub r6, #0xa8
	str r0, [r4, r6]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A312C:
	add r0, r4, #0
	bl ovy173_21a2a04
	cmp r0, #0
	beq _021A3164
	mov r6, #0x1f
	lsl r6, r6, #4
	mov r0, #0
	ldr r1, [r4, r6]
	mvn r0, r0
	cmp r1, r0
	beq _021A3164
	bl sub_02151E24
	add r1, r0, #0
	add r0, r4, #0
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	sub r6, #0x24
	str r0, [r4, r6]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3164:
	mov r7, #0x1f
	lsl r7, r7, #4
	mov r6, #0
	ldr r0, [r4, r7]
	mvn r6, r6
	cmp r0, r6
	bne _021A31A4
	bl sub_02151E08
	cmp r0, r6
	beq _021A31A4
	bl sub_02151E08
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r4, r7]
	bl ovy173_219e154
	ldr r0, _021A3300 ; =0x00001351
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021A319A
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl ovy173_219e398
_021A319A:
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021A31D2
_021A31A4:
	bl sub_02151E24
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A31D2
	bl sub_02151E24
	add r1, r0, #0
	add r0, r4, #0
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A31D2:
	ldr r1, [r4, #8]
	add r0, r4, #0
	bl sub_021A16E0
	mov r7, #0x1f
	lsl r7, r7, #4
	add r6, r0, #0
	mov r0, #0
	ldr r1, [r4, r7]
	mvn r0, r0
	cmp r1, r0
	bne _021A3228
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A3216
	add r0, r6, #0
	bl sub_021A1740
	cmp r0, #0
	beq _021A3216
	ldr r0, _021A3304 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #0x1f
	sub r7, #0x24
	str r0, [r4, r7]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3216:
	mov r7, #0x9d
	lsl r7, r7, #2
	add r0, r4, r7
	bl ovy173_219cfb0
	str r0, [sp]
	add r0, r4, r7
	bl ovy173_219d444
_021A3228:
	ldr r0, [sp]
	cmp r0, #3
	bhi _021A32F0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A323A: ; jump table
	.short _021A3242 - _021A323A - 2 ; case 0
	.short _021A3246 - _021A323A - 2 ; case 1
	.short _021A32B0 - _021A323A - 2 ; case 2
	.short _021A3284 - _021A323A - 2 ; case 3
_021A3242:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3246:
	ldr r0, _021A3304 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r6, #0
	bl sub_021A1740
	cmp r0, #0
	beq _021A3260
	mov r0, #0x73
	mov r1, #0x1f
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021A3278
_021A3260:
	mov r0, #0x1d
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x31
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x19
	mov r2, #1
	bl ovy173_219e398
_021A3278:
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3284:
	cmp r6, #1
	bne _021A32F0
	ldr r0, _021A3308 ; =0x00001360
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _021A3304 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl ovy173_219d404
	mov r0, #0x1c
	sub r6, #0xa8
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A32B0:
	cmp r6, #1
	bne _021A32F0
	mov r6, #0x9d
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0219D0D4
	add r7, r0, #0
	ldr r0, _021A330C ; =0x00000547
	bl GFL_SndSEPlay
	sub r0, r7, #1
	bl sub_021A5D98
	add r1, r6, #0
	sub r1, #0x28
	add r1, r4, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	mov r0, #0x22
	sub r6, #0xa8
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #0x21
	bl ovy173_21a5410
	ldr r0, _021A3310 ; =0x0000135A
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A32F0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A32F4: .word 0x000003F1
_021A32F8: .word 0x00001356
_021A32FC: .word 0x00000805
_021A3300: .word 0x00001351
_021A3304: .word 0x0000054C
_021A3308: .word 0x00001360
_021A330C: .word 0x00000547
_021A3310: .word 0x0000135A
	thumb_func_end ovy173_21a3098

	thumb_func_start ovy173_21a3314
ovy173_21a3314: ; 0x021A3314
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021A33BC ; =0x00000242
	add r5, r0, #0
	ldrh r0, [r5, r7]
	add r6, r1, #0
	sub r4, r0, #1
	mov r0, #0
	bl sub_02006294
	cmp r0, #0
	beq _021A332E
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A332E:
	add r0, r4, #0
	bl sub_021A5D98
	bl sub_021A6264
	add r1, r7, #6
	ldr r1, [r5, r1]
	add r1, r1, r4
	add r1, #0x24
	strb r0, [r1]
	cmp r4, #0
	blt _021A33B0
	cmp r4, #0x20
	bge _021A33B0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_21a5da8
	cmp r0, #0
	beq _021A33B0
	add r1, r7, #0
	mov r0, #0xe1
	sub r1, #0x7e
	lsl r0, r0, #4
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl ovy173_21a17c8
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl ovy173_21a52a8
	add r0, r5, #0
	mov r1, #0x21
	bl ovy173_21a53bc
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_219e154
	add r1, r7, #0
	mov r0, #0xe1
	sub r1, #0x7e
	lsl r0, r0, #4
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0x5e
	mov r2, #0
	bl ovy173_219e3bc
	add r0, r5, #0
	bl ovy173_219f9f4
	add r0, r7, #0
	mov r1, #0x25
	sub r0, #0x76
	str r1, [r5, r0]
	ldrh r1, [r5, r7]
	ldr r0, _021A33C0 ; =0x00001350
	strb r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A33B0:
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A33BC: .word 0x00000242
_021A33C0: .word 0x00001350
	thumb_func_end ovy173_21a3314

	thumb_func_start ovy173_21a33c4
ovy173_21a33c4: ; 0x021A33C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A33E6
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_21a5de8
	add r0, r5, #0
	bl ovy173_219e1cc
_021A33E6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a33c4

	thumb_func_start ovy173_21a33ec
ovy173_21a33ec: ; 0x021A33EC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A348C ; =0x00000242
	add r5, r0, #0
	ldrh r0, [r5, r4]
	add r6, r1, #0
	sub r0, r0, #1
	bl sub_021A5D98
	add r7, r0, #0
	bl sub_021A61D0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_021A16E0
	add r1, r4, #0
	sub r1, #0x7e
	ldr r1, [r5, r1]
	sub r2, r1, #1
	add r1, r4, #0
	sub r1, #0x7e
	str r2, [r5, r1]
	cmp r2, #0
	bge _021A3424
	mov r0, #0x3d
_021A341E:
	sub r4, #0x76
	str r0, [r5, r4]
	b _021A3488
_021A3424:
	cmp r0, #1
	beq _021A3446
	cmp r0, #2
	beq _021A3446
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	b _021A341E
_021A3446:
	bl sub_020420B4
	cmp r0, #1
	bne _021A3488
	add r0, r5, #0
	bl ovy173_219e1cc
	ldr r0, [r5, #8]
	bl ovy173_21a621c
	ldr r7, _021A3490 ; =0x00001351
	mov r4, #0
	add r0, r5, #0
	mov r1, #4
	mov r2, #4
	strb r4, [r5, r7]
	bl ovy173_21a52a8
	add r0, r7, #4
	strb r4, [r5, r0]
	mov r0, #0x73
	mov r1, #0x10
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a5e84
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #0
	bl ovy173_219e3bc
_021A3488:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A348C: .word 0x00000242
_021A3490: .word 0x00001351
	thumb_func_end ovy173_21a33ec

	thumb_func_start ovy173_21a3494
ovy173_21a3494: ; 0x021A3494
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	mov r1, #4
	mov r2, #4
	bl ovy173_21a52a8
	mov r0, #0x73
	mov r1, #0xf
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3494

	thumb_func_start ovy173_21a34c8
ovy173_21a34c8: ; 0x021A34C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02042580
	cmp r0, #0
	beq _021A34E0
	add r0, r5, #0
	bl sub_021A229C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A34E0:
	bl sub_02151CB8
	cmp r0, #0
	bge _021A34FE
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021A34FE:
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A354C
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A3544
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #0
	mov r6, #0
	bl ovy173_219e3bc
	add r0, r5, #0
	mov r1, #4
	mov r2, #4
	bl ovy173_21a52a8
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a5e84
	ldr r0, _021A3550 ; =0x00001355
	mov r1, #0x10
	strb r6, [r5, r0]
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A354C
_021A3544:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_21a3554
_021A354C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A3550: .word 0x00001355
	thumb_func_end ovy173_21a34c8

	thumb_func_start ovy173_21a3554
ovy173_21a3554: ; 0x021A3554
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x13
	mov r2, #0xa
	bl sub_02040624
	bl sub_02151CB8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0200A29C
	mov r0, #0x73
	mov r1, #0x95
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3554

	thumb_func_start ovy173_21a3580
ovy173_21a3580: ; 0x021A3580
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02151DE4
	cmp r0, #0
	beq _021A35A8
	mov r0, #0x3c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A35C4 ; =0x00000898
	mov r1, #1
	add r0, r4, r0
	mov r2, #2
	mov r3, #1
	bl ovy173_21a1d68
	add sp, #8
	pop {r4, pc}
_021A35A8:
	mov r0, #0x33
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A35C4 ; =0x00000898
	mov r1, #1
	add r0, r4, r0
	mov r2, #2
	mov r3, #1
	bl ovy173_21a1d68
	add sp, #8
	pop {r4, pc}
	nop
_021A35C4: .word 0x00000898
	thumb_func_end ovy173_21a3580

	thumb_func_start ovy173_21a35c8
ovy173_21a35c8: ; 0x021A35C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02151CB8
	bl sub_021A5D98
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16E0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16EC
	add r0, r5, #0
	mov r1, #0x21
	bl ovy173_21a2c1c
	add r0, r5, #0
	bl ovy173_21a55cc
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021A3614
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	mov r6, #0x11
	bl ovy173_219e398
	mov r0, #0x73
	lsl r0, r0, #2
	str r6, [r5, r0]
	b _021A364E
_021A3614:
	ldr r0, _021A3654 ; =0x00001355
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021A3648
	add r0, r5, #0
	bl ovy173_219e1cc
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x3c
	lsl r0, r1, #3
	str r1, [r5, r0]
	mov r0, #0x73
	mov r1, #0x94
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A364E
_021A3648:
	add r0, r5, #0
	bl ovy173_21a3580
_021A364E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021A3654: .word 0x00001355
	thumb_func_end ovy173_21a35c8

	thumb_func_start ovy173_21a3658
ovy173_21a3658: ; 0x021A3658
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a3580
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A36A8
	ldr r0, _021A36AC ; =0x00001355
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021A369A
	add r0, r5, #0
	bl ovy173_219e1cc
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x3c
	lsl r0, r1, #3
	str r1, [r5, r0]
	mov r1, #0x94
	b _021A36A2
_021A369A:
	add r0, r5, #0
	bl ovy173_219e108
	mov r1, #0x12
_021A36A2:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A36A8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A36AC: .word 0x00001355
	thumb_func_end ovy173_21a3658

	thumb_func_start ovy173_21a36b0
ovy173_21a36b0: ; 0x021A36B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_21a3580
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A3708
	ldr r0, _021A3728 ; =0x00001355
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021A3722
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r4, #0x42
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_020256B0
	mov r0, #0
	str r0, [r5, r4]
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x3c
	lsl r0, r1, #3
	str r1, [r5, r0]
	mov r0, #0x94
	add r4, #0xc4
	str r0, [r5, r4]
	b _021A3722
_021A3708:
	cmp r0, #0
	bne _021A3710
	mov r1, #0x92
	b _021A371C
_021A3710:
	add r0, r5, #0
	mov r1, #0x7b
	mov r2, #0
	bl ovy173_219e3bc
	mov r1, #0x10
_021A371C:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A3722:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021A3728: .word 0x00001355
	thumb_func_end ovy173_21a36b0

	thumb_func_start ovy173_21a372c
ovy173_21a372c: ; 0x021A372C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A373E
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A373E:
	bl sub_02040440
	ldr r1, _021A3768 ; =0x00000A08
	mov r2, #0
	mov r3, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021A3764
	bl sub_02040440
	mov r1, #0x12
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x93
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A3764:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A3768: .word 0x00000A08
	thumb_func_end ovy173_21a372c

	thumb_func_start ovy173_21a376c
ovy173_21a376c: ; 0x021A376C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02151660
	cmp r0, #0
	bne _021A378E
	bl sub_02040440
	mov r1, #0x18
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0xac
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A378E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a376c

	thumb_func_start ovy173_21a3794
ovy173_21a3794: ; 0x021A3794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021A3810 ; =0x00001355
	mov r1, #0
	strb r1, [r5, r0]
	bl sub_02040440
	mov r1, #0x12
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	bne _021A37B8
	bl sub_02040474
	cmp r0, #2
	beq _021A380C
_021A37B8:
	ldr r0, _021A3814 ; =0x00001360
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021A37E2
	bl sub_02151644
	add r0, r5, #0
	mov r1, #0x7f
	bl ovy173_21a5e84
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #3
	mov r2, #3
	bl ovy173_21a52a8
	mov r1, #0x9a
	b _021A3806
_021A37E2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	bl sub_02040440
	mov r1, #0x15
	mov r2, #0xa
	bl sub_02040624
	mov r1, #0x9f
_021A3806:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A380C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A3810: .word 0x00001355
_021A3814: .word 0x00001360
	thumb_func_end ovy173_21a3794

	thumb_func_start ovy173_21a3818
ovy173_21a3818: ; 0x021A3818
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02040440
	mov r1, #0x15
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	bne _021A3836
	bl sub_02040474
	cmp r0, #2
	beq _021A385A
_021A3836:
	mov r4, #1
	mov r0, #1
	bl sub_020421AC
	sub r0, r4, #2
	mov r4, #0x1f
	lsl r4, r4, #4
	str r0, [r5, r4]
	add r0, r4, #0
	mov r1, #0x14
	sub r0, #0x10
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0x39
	sub r4, #0x24
	str r0, [r5, r4]
_021A385A:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3818

	thumb_func_start ovy173_21a3860
ovy173_21a3860: ; 0x021A3860
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A3872
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A3872:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	sub r0, r0, #1
	str r0, [r5, r4]
	bpl _021A3890
	bl sub_02040440
	mov r1, #0x12
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x93
	sub r4, #0x14
	str r0, [r5, r4]
_021A3890:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a3860

	thumb_func_start ovy173_21a3894
ovy173_21a3894: ; 0x021A3894
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02042580
	cmp r0, #0
	beq _021A38AC
	add r0, r5, #0
	bl sub_021A229C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A38AC:
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16E0
	cmp r0, #1
	beq _021A38C2
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
_021A38C2:
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A38D6
	mov r1, #0x1e
	lsl r0, r1, #4
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A38D6:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	sub r0, r0, #1
	str r0, [r5, r4]
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _021A38F0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A395C
_021A38F0:
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy173_21a16a4
	mov r4, #0x9d
	lsl r4, r4, #2
	add r0, r5, r4
	bl sub_0219CFAC
	cmp r0, #0
	bne _021A3924
	add r0, r4, #0
	mov r1, #0x14
	sub r0, #0x94
	str r1, [r5, r0]
	mov r0, #0x39
	sub r4, #0xa8
	str r0, [r5, r4]
	b _021A395C
_021A3924:
	add r0, r5, #0
	bl ovy173_21a5388
	add r0, r5, #0
	bl ovy173_219e840
	add r0, r4, #0
	sub r1, r7, #1
	sub r0, #0x84
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0xb
	sub r0, #0xa8
	str r1, [r5, r0]
	add r0, r5, r4
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_21a1c44
	add r1, r0, #0
	add r0, r5, r4
	bl ovy173_219d3c0
	add r0, r5, #0
	bl ovy173_21a5de8
_021A395C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a3894

	thumb_func_start ovy173_21a3960
ovy173_21a3960: ; 0x021A3960
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A3972
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A3972:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A39A0
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #1
	bl sub_020421AC
	mov r0, #0x1e
	mov r1, #0x14
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #0x39
	sub r0, #0x14
	str r1, [r5, r0]
_021A39A0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a3960

	thumb_func_start ovy173_21a39a4
ovy173_21a39a4: ; 0x021A39A4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x1e
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	add r6, r1, #0
	add r0, r0, #1
	str r0, [r5, r4]
	cmp r0, #0xf0
	bgt _021A39BC
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A39BC:
	add r0, r4, #0
	add r0, #0x94
	add r0, r5, r0
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_21a1c44
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x94
	add r0, r5, r0
	bl ovy173_219d3c0
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy173_21a16a4
	ldr r0, _021A3A40 ; =0x0000135A
	strb r7, [r5, r0]
	add r0, r4, #0
	add r0, #0x94
	add r0, r5, r0
	bl sub_0219CFAC
	cmp r0, #0
	bne _021A3A1A
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a1e8c
	sub r4, #0x14
	str r0, [r5, r4]
	b _021A3A3A
_021A3A1A:
	add r0, r5, #0
	bl ovy173_21a5388
	add r0, r5, #0
	bl ovy173_219e840
	add r0, r4, #0
	sub r1, r7, #1
	add r0, #0x10
	str r1, [r5, r0]
	mov r0, #0xb
	sub r4, #0x14
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_21a5de8
_021A3A3A:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3A40: .word 0x0000135A
	thumb_func_end ovy173_21a39a4

	thumb_func_start ovy173_21a3a44
ovy173_21a3a44: ; 0x021A3A44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02042580
	cmp r0, #0
	beq _021A3A5C
	add r0, r5, #0
	bl sub_021A229C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3A5C:
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A3A70
	mov r1, #0x1e
	lsl r0, r1, #4
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3A70:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	sub r0, r0, #1
	str r0, [r5, r4]
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	bne _021A3A8A
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A3B00
_021A3A8A:
	mov r4, #0x9d
	lsl r4, r4, #2
	add r0, r5, r4
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_21a1c44
	add r1, r0, #0
	add r0, r5, r4
	bl ovy173_219d3c0
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy173_21a16a4
	ldr r0, _021A3B04 ; =0x0000135A
	strb r7, [r5, r0]
	add r0, r5, r4
	bl sub_0219CFAC
	cmp r0, #0
	bne _021A3AE0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a1e8c
	sub r4, #0xa8
	str r0, [r5, r4]
	b _021A3B00
_021A3AE0:
	add r0, r5, #0
	bl ovy173_21a5388
	add r0, r5, #0
	bl ovy173_219e840
	add r0, r4, #0
	sub r1, r7, #1
	sub r0, #0x84
	str r1, [r5, r0]
	mov r0, #0xb
	sub r4, #0xa8
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_21a5de8
_021A3B00:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3B04: .word 0x0000135A
	thumb_func_end ovy173_21a3a44
_021A3B08:
	.byte 0x08, 0x1C, 0x70, 0x47, 0x08, 0x1C, 0x70, 0x47
	.byte 0x08, 0x1C, 0x70, 0x47

	thumb_func_start ovy173_21a3b14
ovy173_21a3b14: ; 0x021A3B14
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x1e
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r4, r1, #0
	cmp r0, #0
	ble _021A3B2C
	sub r0, r0, #1
	str r0, [r5, r6]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3B2C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A3B4C
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #1
	mov r7, #1
	bl ovy173_219e398
	add r0, r6, #0
	mov r1, #0x33
	sub r0, #0x14
	str r1, [r5, r0]
	str r7, [r5, r6]
_021A3B4C:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a3b14

	thumb_func_start ovy173_21a3b50
ovy173_21a3b50: ; 0x021A3B50
	push {r4, r5, r6, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r6, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x20
	sub r4, #0xa8
	str r0, [r5, r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a3b50

	thumb_func_start ovy173_21a3b74
ovy173_21a3b74: ; 0x021A3B74
	push {r4, r5, r6, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r6, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A3B9A
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x21
	sub r4, #0xa8
	str r0, [r5, r4]
_021A3B9A:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3b74

	thumb_func_start ovy173_21a3ba0
ovy173_21a3ba0: ; 0x021A3BA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ovy173_219e138
	mov r6, #0x9d
	lsl r6, r6, #2
	add r4, r0, #0
	add r0, r5, r6
	bl ovy173_219d444
	sub r6, #0x84
	ldr r0, [r5, r6]
	mov r6, #0
	mvn r6, r6
	cmp r0, r6
	bne _021A3BDE
	bl sub_02151E08
	cmp r0, r6
	beq _021A3BDE
	cmp r4, r6
	bne _021A3BDC
	mov r4, #0x42
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_020256B0
	mov r0, #0
	str r0, [r5, r4]
_021A3BDC:
	mov r4, #1
_021A3BDE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021A3BEA
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3BEA:
	cmp r4, #0
	bne _021A3C10
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	mov r1, #0
	bl ovy173_21a16a4
	add r0, r5, #0
	bl ovy173_21a5de8
	mov r1, #0xb
	b _021A3C1C
_021A3C10:
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ovy173_219e3bc
	mov r1, #0x9e
_021A3C1C:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3ba0

	thumb_func_start ovy173_21a3c28
ovy173_21a3c28: ; 0x021A3C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e674
	mov r0, #0x73
	mov r1, #0x83
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0xa8
	add r0, r5, r0
	bl ovy173_219d444
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3c28

	thumb_func_start ovy173_21a3c48
ovy173_21a3c48: ; 0x021A3C48
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #5
	mov r2, #0
	add r5, r0, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x1d
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3c48

	thumb_func_start ovy173_21a3c64
ovy173_21a3c64: ; 0x021A3C64
	push {r3, r4, r5, lr}
	mov r4, #0x69
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021A3C98
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r5, #0
	add r0, #0xbc
	add r4, #0x98
	ldr r0, [r0]
	mov r1, #0
	add r2, r5, r4
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	add r0, r5, #0
	bl ovy173_219e1cc
_021A3C98:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3c64

	thumb_func_start ovy173_21a3c9c
ovy173_21a3c9c: ; 0x021A3C9C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r7, r1, #0
	bl sub_02020100
	mov r5, #0x9d
	lsl r5, r5, #2
	add r0, r4, r5
	bl ovy173_219d444
	add r0, r4, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A3CC2
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3CC2:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	add r6, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	bhi _021A3CF8
	bhs _021A3D06
	cmp r6, #7
	bhi _021A3D00
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A3CE8: ; jump table
	.short _021A3E2A - _021A3CE8 - 2 ; case 0
	.short _021A3E2A - _021A3CE8 - 2 ; case 1
	.short _021A3E2A - _021A3CE8 - 2 ; case 2
	.short _021A3E2A - _021A3CE8 - 2 ; case 3
	.short _021A3D58 - _021A3CE8 - 2 ; case 4
	.short _021A3DD6 - _021A3CE8 - 2 ; case 5
	.short _021A3D84 - _021A3CE8 - 2 ; case 6
	.short _021A3D1C - _021A3CE8 - 2 ; case 7
_021A3CF8:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021A3D02
_021A3D00:
	b _021A3E2A
_021A3D02:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3D06:
	mov r0, #0xb
	sub r5, #0xa8
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy173_21a3c64
	add r0, r4, #0
	bl ovy173_21a5de8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3D1C:
	add r0, r4, #0
	bl ovy173_21a3c64
	add r0, r5, #0
	sub r0, #0x2c
	ldr r0, [r4, r0]
	add r1, r0, #0
	add r1, #0x21
	ldrb r2, [r1]
	ldr r1, _021A3E4C ; =0x0000134C
	strh r2, [r4, r1]
	add r2, r0, #0
	add r2, #0x22
	ldrb r2, [r2]
	add r1, r1, #2
	strh r2, [r4, r1]
	add r1, r0, #0
	add r1, #0x20
	ldrb r1, [r1]
	add r0, #0x48
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	bl ovy173_219f2b8
	mov r0, #0x54
	sub r5, #0xa8
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3D58:
	add r0, r5, #0
	sub r0, #0x2c
	ldr r0, [r4, r0]
	add r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A3D6A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3D6A:
	add r0, r4, #0
	bl ovy173_21a3c64
	mov r1, #1
	mvn r1, r1
	add r0, r4, #0
	add r1, r1, #1
	bl ovy173_21a5da8
	mov r0, #0x9e
	sub r5, #0xa8
	str r0, [r4, r5]
	b _021A3E2A
_021A3D84:
	add r0, r4, #0
	bl ovy173_21a1768
	cmp r0, #0
	bne _021A3DD4
	add r0, r5, #0
	sub r0, #0xd0
	ldr r0, [r4, r0]
	bl ovy173_219e19c
	add r1, r5, #0
	sub r1, #0xd0
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xbc
	add r2, r5, #0
	sub r2, #0x38
	ldr r0, [r0]
	mov r1, #0
	add r2, r4, r2
	bl sub_02025A10
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	add r0, r4, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	mov r1, #0x79
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x71
	sub r5, #0xa8
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3DD4:
	b _021A3D6A
_021A3DD6:
	add r0, r5, #0
	sub r0, #0x2c
	ldr r0, [r4, r0]
	add r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	bne _021A3DE8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3DE8:
	bl sub_020352E8
	cmp r0, #0
	bne _021A3E12
	bl sub_020352E0
	cmp r0, #0
	beq _021A3E12
	add r0, r4, #0
	bl ovy173_21a3c64
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0xa0
	sub r5, #0xa8
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3E12:
	add r0, r4, #0
	bl ovy173_21a3c64
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ovy173_21a5da8
	mov r0, #0x73
	mov r1, #0x9e
	lsl r0, r0, #2
	str r1, [r4, r0]
_021A3E2A:
	add r0, r4, #0
	mov r1, #1
	bl ovy173_21a5db8
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x66
	strh r6, [r4, r0]
	mov r0, #0xad
	sub r1, #0x14
	str r0, [r4, r1]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A3E4C: .word 0x0000134C
	thumb_func_end ovy173_21a3c9c

	thumb_func_start ovy173_21a3e50
ovy173_21a3e50: ; 0x021A3E50
	push {r4, r5, r6, lr}
	mov r4, #0x1e
	add r5, r0, #0
	lsl r4, r4, #4
	add r6, r1, #0
	ldr r1, [r5, r4]
	sub r1, r1, #1
	str r1, [r5, r4]
	bpl _021A3E74
	add r2, r4, #0
	add r2, #0x66
	ldrh r2, [r5, r2]
	mov r1, #2
	bl ovy173_21a52a8
	mov r0, #0x9e
	sub r4, #0x14
	str r0, [r5, r4]
_021A3E74:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a3e50

	thumb_func_start ovy173_21a3e78
ovy173_21a3e78: ; 0x021A3E78
	push {r4, r5, r6, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r6, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A3E9E
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0xa1
	sub r4, #0xa8
	str r0, [r5, r4]
_021A3E9E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3e78

	thumb_func_start ovy173_21a3ea4
ovy173_21a3ea4: ; 0x021A3EA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ovy173_219e138
	mov r4, #0x9d
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	bl ovy173_219d444
	mov r1, #0
	mvn r1, r1
	cmp r6, r1
	bne _021A3EC6
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A3EC6:
	cmp r6, #0
	bne _021A3EE6
	add r0, r5, #0
	bl ovy173_21a5da8
	add r0, r5, #0
	mov r1, #2
	mov r2, #5
	bl ovy173_21a52a8
	add r0, r5, #0
	mov r1, #1
	bl ovy173_21a5db8
	mov r0, #0x9e
	b _021A3EF4
_021A3EE6:
	add r0, r5, #0
	bl ovy173_21a5de8
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0xb
_021A3EF4:
	sub r4, #0xa8
	str r0, [r5, r4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a3ea4

	thumb_func_start ovy173_21a3efc
ovy173_21a3efc: ; 0x021A3EFC
	push {r4, r5, r6, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r6, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A3F22
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0xa3
	sub r4, #0xa8
	str r0, [r5, r4]
_021A3F22:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3efc

	thumb_func_start ovy173_21a3f28
ovy173_21a3f28: ; 0x021A3F28
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x93
	lsl r6, r6, #2
	add r5, r0, #0
	add r0, r6, #0
	add r0, #0x28
	add r0, r5, r0
	str r1, [sp]
	bl sub_0219D0D4
	add r7, r0, #0
	add r0, r5, #0
	bl ovy173_219e138
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a1c44
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0x28
	add r0, r5, r0
	bl ovy173_219d444
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021A3F66
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021A3F66:
	cmp r4, #0
	bne _021A3FAE
	ldr r0, _021A3FE8 ; =0x00001360
	mov r1, #2
	str r1, [r5, r0]
	add r0, r5, r6
	bl sub_021A61D0
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_021A61D0
	cmp r4, r0
	bne _021A3F8A
	mov r0, #0x76
	sub r6, #0x80
	str r0, [r5, r6]
	b _021A3FE4
_021A3F8A:
	ldr r0, [r5, #8]
	bl sub_021A61D0
	cmp r0, #0
	beq _021A3F9A
	add r0, r5, #0
	mov r1, #0x49
	b _021A3F9E
_021A3F9A:
	add r0, r5, #0
	mov r1, #0x48
_021A3F9E:
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x37
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A3FE4
_021A3FAE:
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	add r1, r6, #0
	mov r0, #0
	sub r1, #0x5c
	mvn r0, r0
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy173_21a5de8
	add r0, r6, #0
	mov r1, #0xb
	sub r0, #0x80
	str r1, [r5, r0]
	cmp r7, #0
	beq _021A3FE4
	add r6, #0x28
	add r0, r5, r6
	add r1, r7, #0
	bl ovy173_219d3c0
_021A3FE4:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A3FE8: .word 0x00001360
	thumb_func_end ovy173_21a3f28

	thumb_func_start ovy173_21a3fec
ovy173_21a3fec: ; 0x021A3FEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A3FFE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A3FFE:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _021A4032
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	mov r1, #1
	mov r4, #2
	mov r2, #2
	bl ovy173_21a52a8
	sub r0, r4, #3
	mov r4, #0x1f
	lsl r4, r4, #4
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_21a5de8
	mov r0, #0xb
	sub r4, #0x24
	str r0, [r5, r4]
_021A4032:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a3fec

	thumb_func_start ovy173_21a4038
ovy173_21a4038: ; 0x021A4038
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e1cc
	mov r0, #1
	bl sub_020421AC
	add r0, r5, #0
	mov r1, #1
	mov r4, #2
	mov r2, #2
	bl ovy173_21a52a8
	sub r0, r4, #3
	mov r4, #0x1f
	lsl r4, r4, #4
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_21a5de8
	mov r0, #0xb
	sub r4, #0x24
	str r0, [r5, r4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a4038

	thumb_func_start ovy173_21a406c
ovy173_21a406c: ; 0x021A406C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r7, r1, #0
	bl ovy173_219d444
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A408A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A408A:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_020258A4
	add r6, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _021A40A8
	add r0, r0, #1
	cmp r6, r0
	bne _021A40B6
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A40A8:
	ldr r0, _021A4120 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #0x1c
	sub r4, #0xa8
	str r0, [r5, r4]
	b _021A40D2
_021A40B6:
	ldr r0, _021A4120 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	bl ovy173_21a52a8
	mov r0, #0xb
	sub r4, #0xa8
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e1cc
_021A40D2:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0xb
	bne _021A40EE
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ovy173_21a5da8
	add r0, r5, #0
	mov r1, #1
	bl ovy173_21a5db8
_021A40EE:
	mov r4, #0x69
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r2, r4, #0
	add r4, #0x9c
	ldrh r3, [r5, r4]
	add r0, r5, #0
	add r0, #0xbc
	add r2, #0x90
	ldr r0, [r0]
	add r2, r5, r2
	lsl r3, r3, #1
	mov r1, #0
	add r2, r2, r3
	bl sub_02025A10
	add r5, #0xb8
	ldr r0, [r5]
	bl sub_02024FAC
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4120: .word 0x0000054C
	thumb_func_end ovy173_21a406c

	thumb_func_start ovy173_21a4124
ovy173_21a4124: ; 0x021A4124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	str r1, [sp]
	mov r5, #0
	bl sub_02040440
	mov r1, #0
	bl sub_02042A9C
	mov r0, #0x93
	lsl r0, r0, #2
	add r0, #0x28
	add r0, r4, r0
	bl sub_0219D0D4
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy173_21a1c44
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ovy173_21a1c44
	bl ovy173_219d340
	add r2, r0, #0
	mov r0, #0x93
	lsl r0, r0, #2
	add r0, #0x28
	add r0, r4, r0
	add r1, r6, #0
	bl ovy173_219d350
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl sub_021A16E0
	mov r1, #0x93
	lsl r0, r0, #0x10
	lsl r1, r1, #2
	lsr r7, r0, #0x10
	add r0, r4, #0
	add r1, r4, r1
	bl sub_021A16EC
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	cmp r6, #6
	bne _021A419E
	mov r5, #1
	b _021A41BA
_021A419E:
	cmp r6, #5
	bne _021A41A6
	mov r5, #2
	b _021A41BA
_021A41A6:
	cmp r6, #4
	bne _021A41AE
	mov r5, #3
	b _021A41BA
_021A41AE:
	add r0, r6, #0
	bl sub_021A16F8
	cmp r0, #0
	beq _021A41BA
	mov r5, #4
_021A41BA:
	cmp r7, #5
	bhi _021A420C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021A41CA: ; jump table
	.short _021A41D6 - _021A41CA - 2 ; case 0
	.short _021A41D8 - _021A41CA - 2 ; case 1
	.short _021A41EC - _021A41CA - 2 ; case 2
	.short _021A420C - _021A41CA - 2 ; case 3
	.short _021A4204 - _021A41CA - 2 ; case 4
	.short _021A420A - _021A41CA - 2 ; case 5
_021A41D6:
	b _021A420C
_021A41D8:
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy173_21a42cc
	ldr r0, [sp]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_021A41EC:
	ldr r6, _021A4224 ; =0x021A71F4
	add r3, sp, #0x1c
_021A41F0:
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	lsl r0, r5, #2
	ldr r1, [r2, r0]
	b _021A420E
_021A4204:
	ldr r6, _021A4228 ; =0x021A7208
	add r3, sp, #8
	b _021A41F0
_021A420A:
	b _021A420C
_021A420C:
	mov r1, #0x59
_021A420E:
	add r0, r4, #0
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x23
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4224: .word 0x021A71F4
_021A4228: .word 0x021A7208
	thumb_func_end ovy173_21a4124

	thumb_func_start ovy173_21a422c
ovy173_21a422c: ; 0x021A422C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x93
	add r4, r0, #0
	add r7, r1, #0
	lsl r5, r5, #2
	bl sub_02042580
	cmp r0, #0
	beq _021A4248
	add r0, r4, #0
	bl sub_021A229C
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4248:
	add r0, r5, #0
	add r0, #0x28
	add r0, r4, r0
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r4, #0
	bl ovy173_21a1c44
	str r0, [sp]
	add r0, r4, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A426A
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A426A:
	add r0, r4, #0
	add r1, r4, r5
	bl sub_021A16E0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r4, r5
	bl sub_021A16EC
	cmp r6, #5
	bhi _021A42B6
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A428C: ; jump table
	.short _021A42B6 - _021A428C - 2 ; case 0
	.short _021A4298 - _021A428C - 2 ; case 1
	.short _021A42A2 - _021A428C - 2 ; case 2
	.short _021A42B6 - _021A428C - 2 ; case 3
	.short _021A42B6 - _021A428C - 2 ; case 4
	.short _021A42A2 - _021A428C - 2 ; case 5
_021A4298:
	add r0, r4, #0
	bl ovy173_219e698
	mov r0, #0x40
	b _021A42B2
_021A42A2:
	bl sub_021A1730
	cmp r0, #0
	beq _021A42B6
	add r0, r4, #0
	bl ovy173_219e698
	mov r0, #0x24
_021A42B2:
	sub r5, #0x80
	b _021A42C6
_021A42B6:
	mov r5, #0x9d
	lsl r5, r5, #2
	ldr r1, [sp]
	add r0, r4, r5
	bl ovy173_219d3c0
	mov r0, #0x71
	sub r5, #0xa8
_021A42C6:
	str r0, [r4, r5]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a422c

	thumb_func_start ovy173_21a42cc
ovy173_21a42cc: ; 0x021A42CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x9d
	add r5, r0, #0
	lsl r6, r6, #2
	add r0, r5, r6
	bl sub_0219D0D4
	add r4, r0, #0
	add r0, r6, #0
	sub r0, #0x32
	strh r4, [r5, r0]
	cmp r4, #0
	beq _021A4388
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_02020100
	sub r0, r4, #1
	str r0, [sp]
	bl sub_021A5D98
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_021A16E0
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_021A61D0
	cmp r7, #6
	bne _021A4316
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4316:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ovy173_21a5da8
	cmp r0, #0
	beq _021A4370
	ldr r0, [sp]
	bl sub_021A5D98
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_021A6200
	mov r1, #0xe1
	add r0, r6, #0
	lsl r1, r1, #4
	sub r0, #0xb0
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #3
	mov r2, #3
	bl ovy173_21a17c8
	add r0, r5, #0
	mov r1, #3
	mov r2, #3
	bl ovy173_21a52a8
	add r0, r5, #0
	sub r1, r4, #1
	bl ovy173_219e154
	ldr r0, _021A4390 ; =0x00001351
	mov r1, #0xe
	strb r4, [r5, r0]
	add r0, r5, #0
	mov r2, #0
	bl ovy173_219e3bc
	add r0, r5, #0
	bl ovy173_219f9f4
	mov r0, #0x88
	b _021A4384
_021A4370:
	add r0, r5, #0
	sub r1, r4, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x15
_021A4384:
	sub r6, #0xa8
	str r0, [r5, r6]
_021A4388:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4390: .word 0x00001351
	thumb_func_end ovy173_21a42cc

	thumb_func_start ovy173_21a4394
ovy173_21a4394: ; 0x021A4394
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	bl sub_02151E08
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021A43B2
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r4, r0]
_021A43B2:
	ldr r5, _021A4464 ; =0x00000242
	ldrh r0, [r4, r5]
	sub r0, r0, #1
	bl sub_021A5DA0
	cmp r0, #0
	bne _021A43DE
	ldrh r1, [r4, r5]
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	sub r5, #0x76
	str r0, [r4, r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A43DE:
	add r0, r5, #0
	sub r0, #0x62
	ldr r0, [r4, r0]
	add r1, r5, #0
	add r0, r0, #1
	sub r1, #0x62
	str r0, [r4, r1]
	mov r1, #0xe1
	lsl r1, r1, #2
	blx sub_0208D65C
	cmp r1, #0
	bne _021A4412
	ldrh r0, [r4, r5]
	sub r0, r0, #1
	bl sub_021A5D98
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl sub_021A6200
	add r0, r4, #0
	mov r1, #3
	mov r2, #3
	bl ovy173_21a52a8
_021A4412:
	mov r5, #0x1e
	lsl r5, r5, #4
	mov r0, #0xe1
	ldr r1, [r4, r5]
	lsl r0, r0, #4
	cmp r1, r0
	ble _021A4442
	add r1, r5, #0
	add r1, #0x62
	ldrh r1, [r4, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	sub r5, #0x14
	str r0, [r4, r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A4442:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #2
	bne _021A4460
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl ovy173_219e398
	add r0, r4, #0
	bl ovy173_219e108
	mov r0, #0x89
	sub r5, #0x14
	str r0, [r4, r5]
_021A4460:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A4464: .word 0x00000242
	thumb_func_end ovy173_21a4394

	thumb_func_start ovy173_21a4468
ovy173_21a4468: ; 0x021A4468
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A447A
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A447A:
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A448C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A448C:
	cmp r0, #0
	bne _021A449E
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x15
	b _021A44B6
_021A449E:
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	mov r1, #0x88
_021A44B6:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a4468

	thumb_func_start ovy173_21a44c0
ovy173_21a44c0: ; 0x021A44C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xbc
	ldr r0, [r0]
	str r1, [sp]
	mov r6, #0
	bl sub_020258A4
	mov r4, #0x9d
	lsl r4, r4, #2
	str r0, [sp, #8]
	add r0, r5, r4
	bl sub_0219D0D4
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy173_21a1c44
	add r7, r0, #0
	bl sub_02042580
	cmp r0, #0
	beq _021A4532
	add r0, r4, #0
	sub r0, #0xd0
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0xd0
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	cmp r7, #0
	beq _021A4526
	add r0, r5, r4
	add r1, r7, #0
	bl ovy173_219d3c0
_021A4526:
	add r0, r5, #0
	bl sub_021A229C
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021A4532:
	ldr r0, [sp, #8]
	sub r1, r6, #2
	cmp r0, r1
	beq _021A45D6
	sub r1, r6, #1
	cmp r0, r1
	bne _021A45E0
	cmp r7, #0
	bne _021A4570
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r6, #0
	bl sub_02025A10
	ldr r1, [sp, #4]
	add r0, r5, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	add r2, r6, #0
	bl ovy173_219e398
	mov r0, #0x15
	sub r4, #0xa8
	str r0, [r5, r4]
_021A456C:
	mov r6, #1
	b _021A4604
_021A4570:
	ldr r0, [sp, #4]
	sub r0, r0, #1
	bl sub_021A5D98
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_021A16E0
	ldr r0, [sp, #0xc]
	bl sub_021A61D0
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl sub_021A16EC
	add r1, r4, #0
	sub r1, #0x28
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r5, r1
	bl sub_021A16EC
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021A45B2
	sub r4, #0x28
	add r0, r5, r4
	bl sub_021A61D0
	cmp r6, r0
	beq _021A45D0
_021A45B2:
	ldr r1, [sp, #4]
	add r0, r5, #0
	sub r1, r1, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A456C
_021A45D0:
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021A45D6:
	ldr r0, _021A4648 ; =0x00000551
	bl GFL_SndSEPlay
	mov r0, #0xb
	b _021A4600
_021A45E0:
	ldr r0, _021A464C ; =0x0000054C
	bl GFL_SndSEPlay
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021A45FA
	mov r0, #0xb
	sub r4, #0xa8
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_21a42cc
	b _021A4604
_021A45FA:
	cmp r0, #2
	bne _021A4604
	mov r0, #0x2e
_021A4600:
	sub r4, #0xa8
	str r0, [r5, r4]
_021A4604:
	cmp r6, #0
	bne _021A460E
	add r0, r5, #0
	bl ovy173_219e1cc
_021A460E:
	mov r4, #0x69
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl ovy173_219e19c
	str r0, [r5, r4]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	cmp r7, #0
	beq _021A4640
	add r4, #0xd0
	add r0, r5, r4
	add r1, r7, #0
	bl ovy173_219d3c0
_021A4640:
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021A4648: .word 0x00000551
_021A464C: .word 0x0000054C
	thumb_func_end ovy173_21a44c0

	thumb_func_start sub_021A4650
sub_021A4650: ; 0x021A4650
	ldr r3, _021A4658 ; =sub_02151E40
	mov r0, #0
	bx r3
	nop
_021A4658: .word sub_02151E40
	thumb_func_end sub_021A4650

	thumb_func_start ovy173_21a465c
ovy173_21a465c: ; 0x021A465C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xbc
	ldr r0, [r0]
	str r1, [sp]
	bl sub_020258A4
	add r6, r0, #0
	add r0, r5, #0
	bl ovy173_21a29ec
	cmp r0, #0
	beq _021A467A
	mov r6, #1
	mvn r6, r6
_021A467A:
	mov r4, #0x9d
	lsl r4, r4, #2
	add r0, r5, r4
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r4, #0
	sub r0, #0x32
	strh r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_21a1c44
	add r7, r0, #0
	bl sub_02042580
	cmp r0, #0
	beq _021A46DA
	add r0, r4, #0
	sub r0, #0xd0
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	add r1, r4, #0
	sub r1, #0xd0
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
	cmp r7, #0
	beq _021A46D0
	add r0, r5, r4
	add r1, r7, #0
	bl ovy173_219d3c0
_021A46D0:
	add r0, r5, #0
	bl sub_021A229C
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021A46DA:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021A470E
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	sub r0, #0xd0
	ldr r0, [r5, r0]
	bl ovy173_219e19c
	sub r4, #0xd0
	str r0, [r5, r4]
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0
	bl sub_02025A10
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_02024FAC
_021A470E:
	mov r0, #1
	mvn r0, r0
	cmp r6, r0
	beq _021A4720
	add r0, r0, #1
	cmp r6, r0
	bne _021A472A
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021A4720:
	ldr r0, _021A4824 ; =0x00000551
	bl GFL_SndSEPlay
	mov r1, #0xb
	b _021A4808
_021A472A:
	ldr r0, _021A4828 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl sub_021A16EC
	add r4, r0, #0
	cmp r4, #5
	bne _021A4768
	bl sub_020352E8
	cmp r0, #0
	bne _021A4768
	bl sub_020352E0
	cmp r0, #0
	beq _021A4768
	add r0, r5, #0
	mov r1, #0x95
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0xa2
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
_021A4768:
	cmp r4, #6
	bne _021A4784
	add r0, r5, #0
	bl ovy173_21a1768
	cmp r0, #0
	bne _021A4784
	add r0, r5, #0
	mov r1, #0x79
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x71
	b _021A4808
_021A4784:
	add r0, r4, #0
	bl sub_021A16F8
	cmp r0, #0
	beq _021A47CC
	sub r1, r4, #7
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r0, _021A482C ; =0x0000134C
	lsr r3, r1, #0x1f
	strh r2, [r5, r0]
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	add r0, r0, #2
	strh r1, [r5, r0]
	add r0, r5, #0
	bl sub_021A05B0
	add r0, r5, #0
	bl ovy173_21a178c
	cmp r0, #0
	bne _021A47CC
	add r0, r5, #0
	mov r1, #0x68
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x71
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A47CC:
	ldr r0, _021A4830 ; =0x00001360
	mov r1, #2
	str r1, [r5, r0]
	mov r0, #0x93
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_021A61D0
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_021A61D0
	cmp r4, r0
	bne _021A47EC
	mov r1, #0x76
	b _021A4808
_021A47EC:
	ldr r0, [r5, #8]
	bl sub_021A61D0
	cmp r0, #0
	beq _021A47FC
	add r0, r5, #0
	mov r1, #0x49
	b _021A4800
_021A47FC:
	add r0, r5, #0
	mov r1, #0x48
_021A4800:
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x37
_021A4808:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	cmp r7, #0
	beq _021A481E
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	bl ovy173_219d3c0
_021A481E:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4824: .word 0x00000551
_021A4828: .word 0x0000054C
_021A482C: .word 0x0000134C
_021A4830: .word 0x00001360
	thumb_func_end ovy173_21a465c

	thumb_func_start ovy173_21a4834
ovy173_21a4834: ; 0x021A4834
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xc8
	ldr r6, _021A4940 ; =0x00000242
	ldr r0, [r0]
	str r1, [sp]
	ldrh r4, [r5, r6]
	bl sub_02020100
	ldrh r0, [r5, r6]
	cmp r0, #0
	bne _021A485E
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x15
	sub r6, #0x76
	str r0, [r5, r6]
_021A485E:
	sub r0, r4, #1
	bl sub_021A5D98
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16E0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16EC
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_021A61D0
	mov r6, #0x93
	lsl r6, r6, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, r6
	bl sub_021A16E0
	cmp r7, r0
	bne _021A48B0
	add r0, r5, #0
	add r1, r5, r6
	bl sub_021A16EC
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021A48B0
	add r0, r5, r6
	bl sub_021A61D0
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021A48B0
	cmp r7, #6
	bne _021A48D0
_021A48B0:
	add r0, r5, #0
	sub r1, r4, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021A48D0:
	sub r0, r4, #1
	bl sub_021A5DA0
	add r0, r5, #0
	sub r1, r4, #1
	bl ovy173_21a5da8
	cmp r0, #0
	beq _021A4922
	mov r1, #0xe1
	add r0, r6, #0
	lsl r1, r1, #4
	sub r0, #0x88
	str r1, [r5, r0]
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	bl ovy173_21a17c8
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	bl ovy173_21a52a8
	add r0, r5, #0
	sub r1, r4, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ovy173_219e3bc
	add r0, r5, #0
	bl ovy173_219f9f4
	add r0, r6, #0
	sub r0, #0xa
	strh r4, [r5, r0]
	mov r0, #0x25
	b _021A4936
_021A4922:
	add r0, r5, #0
	sub r1, r4, #1
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x15
_021A4936:
	sub r6, #0x80
	str r0, [r5, r6]
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A4940: .word 0x00000242
	thumb_func_end ovy173_21a4834

	thumb_func_start ovy173_21a4944
ovy173_21a4944: ; 0x021A4944
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	mov r4, #0x71
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	sub r0, r0, #1
	str r0, [r5, r4]
	bpl _021A4982
	add r0, r4, #0
	add r0, #0xb0
	add r0, r5, r0
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_21a1c44
	add r1, r0, #0
	beq _021A4978
	add r4, #0xb0
	add r0, r5, r4
	bl ovy173_219d3c0
_021A4978:
	mov r1, #0x3d
_021A497A:
	mov r0, #0x73
	lsl r0, r0, #2
	str r1, [r5, r0]
	b _021A4A2C
_021A4982:
	bl sub_020420B4
	cmp r0, #5
	bne _021A49A8
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xf
_021A499A:
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	add r4, #8
	str r0, [r5, r4]
	b _021A4A2C
_021A49A8:
	bl sub_02151FD8
	cmp r0, #5
	bne _021A49C2
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xc
	b _021A499A
_021A49C2:
	bl sub_02151FD8
	cmp r0, #4
	beq _021A49D2
	bl sub_02042210
	cmp r0, #0
	beq _021A49EC
_021A49D2:
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r1, #0x13
	b _021A497A
_021A49EC:
	bl sub_020420B4
	cmp r0, #1
	bne _021A4A2C
	ldr r0, [r5, #8]
	bl ovy173_21a621c
	add r0, r5, #0
	bl sub_021A2080
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16E0
	mov r0, #0x29
	add r4, #8
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r5, #0
	bl ovy173_219e0b8
	mov r1, #0x1e
	lsl r0, r1, #4
	str r1, [r5, r0]
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
_021A4A2C:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a4944
_021A4A30:
	.byte 0x08, 0x1C, 0x70, 0x47, 0x08, 0x1C, 0x70, 0x47

	thumb_func_start ovy173_21a4a38
ovy173_21a4a38: ; 0x021A4A38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a5388
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	ldr r0, _021A4A78 ; =0x0000135A
	mov r6, #0
	strb r6, [r5, r0]
	mov r0, #1
	bl sub_020421AC
	mov r0, #0x1f
	sub r1, r6, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #0xb
	sub r0, #0x24
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_21a5de8
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021A4A78: .word 0x0000135A
	thumb_func_end ovy173_21a4a38
_021A4A7C:
	.byte 0x08, 0x1C, 0x70, 0x47
	.byte 0x08, 0x1C, 0x70, 0x47

	thumb_func_start ovy173_21a4a84
ovy173_21a4a84: ; 0x021A4A84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	mov r7, #0
	bl sub_02006294
	cmp r0, #0
	beq _021A4A9A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4A9A:
	bl sub_02151CB8
	bl sub_021A5DA0
	cmp r0, #0
	bne _021A4AC6
	mov r4, #0x1f
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xf
	add r2, r7, #0
	bl ovy173_219e398
	mov r0, #0x13
	sub r4, #0x24
	str r0, [r5, r4]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A4AC6:
	bl sub_02151CB8
	bl sub_021A5D98
	add r4, r0, #0
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16E0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021A16E0
	ldr r0, [r5, #8]
	bl sub_021A61D0
	bl sub_02151CB8
	add r1, r0, #1
	ldr r0, _021A4B28 ; =0x00000242
	strh r1, [r5, r0]
	ldr r0, _021A4B2C ; =0x00001351
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021A4B0E
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #8
	add r2, r7, #0
	bl ovy173_219e398
_021A4B0E:
	add r0, r5, #0
	bl ovy173_219e0b8
	mov r0, #0x73
	mov r1, #0x29
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x1e
	lsl r0, r1, #4
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A4B28: .word 0x00000242
_021A4B2C: .word 0x00001351
	thumb_func_end ovy173_21a4a84

	thumb_func_start ovy173_21a4b30
ovy173_21a4b30: ; 0x021A4B30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_020420B4
	cmp r0, #3
	blt _021A4B5A
	mov r5, #0x1f
	lsl r5, r5, #4
	ldr r1, [r4, r5]
	add r0, r4, #0
	bl ovy173_219e154
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
	sub r5, #0x24
	str r0, [r4, r5]
	b _021A4B6E
_021A4B5A:
	bl sub_02042580
	cmp r0, #0
	beq _021A4B6A
	add r0, r4, #0
	bl sub_021A229C
	b _021A4B6E
_021A4B6A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A4B6E:
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4b30

	thumb_func_start ovy173_21a4b7c
ovy173_21a4b7c: ; 0x021A4B7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	bl sub_020420B4
	cmp r0, #4
	bge _021A4B96
	bl sub_02042210
	cmp r0, #0
	beq _021A4BCA
_021A4B96:
	mov r1, #0x91
	lsl r1, r1, #2
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _021A4BA6
	add r0, r5, #0
	mov r1, #0x44
	b _021A4BB4
_021A4BA6:
	sub r1, #0x54
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xf
_021A4BB4:
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r5, r0]
	mov r1, #0x13
	sub r0, #0x78
	str r1, [r5, r0]
	b _021A4C5E
_021A4BCA:
	add r0, r5, #0
	bl ovy173_21a4b30
	cmp r0, #0
	bne _021A4C5E
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #1
	ble _021A4BE2
	sub r1, r1, #1
	str r1, [r5, r0]
_021A4BE2:
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021A4C30
	bl sub_02040440
	bl sub_0204044C
	cmp r0, #0
	beq _021A4C5E
	add r0, r4, #0
	add r0, #0x14
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x40
	mov r7, #0
	blx MI_CpuFill8
	bl sub_02040440
	mov r1, #0xe
	mov r2, #0xa
	bl sub_02040624
	add r0, r4, #0
	add r0, #0x64
	strh r7, [r5, r0]
	add r0, r5, #0
	mov r1, #0x45
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	mov r0, #0x2a
	sub r4, #0x14
	b _021A4C5C
_021A4C30:
	cmp r0, #1
	bne _021A4C5E
	bl sub_02040440
	bl sub_02042A6C
	cmp r0, #0
	beq _021A4C4A
	bl sub_02040504
	cmp r0, #1
	bne _021A4C5E
	b _021A4C5A
_021A4C4A:
	bl sub_02040474
	cmp r0, #0
	beq _021A4C5E
	bl sub_02040504
	cmp r0, #1
	bne _021A4C5E
_021A4C5A:
	mov r0, #0
_021A4C5C:
	str r0, [r5, r4]
_021A4C5E:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4b7c

	thumb_func_start ovy173_21a4c64
ovy173_21a4c64: ; 0x021A4C64
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021A4CA4
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r4, #0
	bl sub_02017378
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02008B34
	add r5, #0xc0
	ldr r0, [r5]
	bl sub_0200F6F4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02008BD0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0200F700
_021A4CA4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4c64
_021A4CA8:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy173_21a4cac
ovy173_21a4cac: ; 0x021A4CAC
	push {r4, lr}
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021A4CC0
	ldr r0, _021A4CC4 ; =0x00001355
	mov r1, #1
	strb r1, [r4, r0]
_021A4CC0:
	pop {r4, pc}
	nop
_021A4CC4: .word 0x00001355
	thumb_func_end ovy173_21a4cac
_021A4CC8:
	.byte 0x92, 0x22, 0x92, 0x00, 0x89, 0x58, 0x80, 0x00
	.byte 0x08, 0x18, 0x40, 0x69, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy173_21a4cd8
ovy173_21a4cd8: ; 0x021A4CD8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021A4D0A
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x48
	bne _021A4D06
	ldrb r1, [r5]
	ldr r0, _021A4D0C ; =0x00001357
	strb r1, [r4, r0]
	bl sub_02040440
	mov r1, #0x1a
	mov r2, #0xa
	bl sub_02040624
	pop {r3, r4, r5, pc}
_021A4D06:
	mov r1, #0x15
	str r1, [r4, r0]
_021A4D0A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A4D0C: .word 0x00001357
	thumb_func_end ovy173_21a4cd8

	thumb_func_start ovy173_21a4d10
ovy173_21a4d10: ; 0x021A4D10
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021A4D28
	ldr r1, [r5]
	add r0, r4, #0
	bl ovy173_21a05bc
_021A4D28:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4d10

	thumb_func_start ovy173_21a4d2c
ovy173_21a4d2c: ; 0x021A4D2C
	push {r3, r4, r5, lr}
	lsl r1, r0, #1
	add r4, r3, r1
	mov r1, #0x7d
	ldrh r5, [r2]
	lsl r1, r1, #2
	strh r5, [r4, r1]
	add r1, #0x54
	ldr r1, [r3, r1]
	ldrh r4, [r2, #2]
	add r0, r1, r0
	add r0, #0x44
	strb r4, [r0]
	ldr r1, [r2, #4]
	add r0, r3, #0
	bl ovy173_21a05bc
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a4d2c

	thumb_func_start ovy173_21a4d50
ovy173_21a4d50: ; 0x021A4D50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ovy173_21a4b30
	cmp r0, #0
	bne _021A4DA4
	bl sub_02040440
	mov r1, #0xe
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A4DA4
	bl sub_02040440
	add r7, r0, #0
	bl sub_02008B08
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201736C
	lsl r2, r4, #0x10
	add r3, r0, #0
	ldr r1, _021A4DA8 ; =0x00000A04
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_02042BE8
	cmp r0, #0
	beq _021A4DA4
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #0x73
	mov r1, #0x87
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A4DA4:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A4DA8: .word 0x00000A04
	thumb_func_end ovy173_21a4d50

	thumb_func_start ovy173_21a4dac
ovy173_21a4dac: ; 0x021A4DAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #8]
	bl sub_021A16E0
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16EC
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, _021A4E10 ; =0x00001356
	ldrb r2, [r5, r0]
	cmp r2, #0
	beq _021A4DD8
	sub r2, r2, #1
	strh r2, [r1, #2]
	mov r1, #0
	strb r1, [r5, r0]
	b _021A4DE4
_021A4DD8:
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, #0x46
	ldrb r0, [r0]
	strh r0, [r1, #2]
_021A4DE4:
	add r0, r5, #0
	mov r1, #1
	bl ovy173_21a053c
	str r0, [sp, #4]
	bl sub_02040440
	ldr r1, _021A4E14 ; =0x00000A03
	mov r2, #8
	add r3, sp, #0
	bl sub_02042BE8
	cmp r0, #0
	beq _021A4E08
	mov r0, #0x73
	mov r1, #0x2b
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A4E08:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021A4E10: .word 0x00001356
_021A4E14: .word 0x00000A03
	thumb_func_end ovy173_21a4dac

	thumb_func_start ovy173_21a4e18
ovy173_21a4e18: ; 0x021A4E18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r7, #0
	bl sub_02042BC4
	cmp r0, #0
	beq _021A4E2A
	mov r7, #1
_021A4E2A:
	add r0, r5, #0
	bl ovy173_21a4b30
	cmp r0, #0
	bne _021A4E80
	mov r4, #0x7d
	lsl r4, r4, #2
	add r6, r5, r4
	lsl r7, r7, #1
	ldrh r0, [r6, r7]
	cmp r0, #0
	beq _021A4E80
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16EC
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r0, [r6, r7]
	cmp r1, r0
	bne _021A4E64
	bl sub_02040440
	mov r1, #0xf
	mov r2, #0xa
	bl sub_02040624
	mov r0, #0x2c
	b _021A4E7C
_021A4E64:
	bl sub_02151CB8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_219e154
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ovy173_219e398
	mov r0, #0x13
_021A4E7C:
	sub r4, #0x28
	str r0, [r5, r4]
_021A4E80:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a4e18

	thumb_func_start ovy173_21a4e84
ovy173_21a4e84: ; 0x021A4E84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a4b30
	cmp r0, #0
	bne _021A4EC4
	bl sub_02040440
	mov r1, #0xf
	mov r2, #0xa
	mov r6, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A4EC4
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	bl sub_02040440
	mov r1, #0x12
	add r2, r6, #0
	bl sub_02040624
	mov r0, #0x73
	mov r1, #0x2d
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A4EC4:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a4e84

	thumb_func_start ovy173_21a4ec8
ovy173_21a4ec8: ; 0x021A4EC8
	push {r4, lr}
	add r4, r0, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A4ED8
	mov r0, #1
	pop {r4, pc}
_021A4ED8:
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021A4EE6
	mov r0, #1
	pop {r4, pc}
_021A4EE6:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4ec8

	thumb_func_start ovy173_21a4eec
ovy173_21a4eec: ; 0x021A4EEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_21a4b30
	cmp r0, #0
	bne _021A4F64
	bl sub_02040440
	mov r1, #0x12
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	beq _021A4F64
	add r0, r5, #0
	bl ovy173_21a4ec8
	cmp r0, #1
	bne _021A4F64
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_02017238
	mov r1, #0
	bl sub_0200A0E4
	bl sub_02011A28
	add r0, r5, #0
	bl ovy173_219e1cc
	bl sub_02151CB8
	bl sub_021A5D98
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16E0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021A16EC
	add r2, r0, #0
	cmp r2, #3
	bne _021A4F56
	mov r0, #0x73
	mov r1, #0x41
	lsl r0, r0, #2
	b _021A4F62
_021A4F56:
	add r0, r5, #0
	mov r1, #4
	bl ovy173_21a52a8
	mov r1, #0x73
	lsl r0, r1, #2
_021A4F62:
	str r1, [r5, r0]
_021A4F64:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a4eec

	thumb_func_start ovy173_21a4f68
ovy173_21a4f68: ; 0x021A4F68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #3
	add r4, r1, #0
	bl sub_02045708
	ldr r0, _021A4F8C ; =0x00001358
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ovy173_21a1e8c
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021A4F8C: .word 0x00001358
	thumb_func_end ovy173_21a4f68
_021A4F90:
	.byte 0x73, 0x22, 0x2F, 0x23, 0x92, 0x00, 0x83, 0x50, 0x08, 0x1C, 0x70, 0x47

	thumb_func_start ovy173_21a4f9c
ovy173_21a4f9c: ; 0x021A4F9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A4FAE
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A4FAE:
	add r0, r5, #0
	bl ovy173_21a29d8
	cmp r0, #0
	beq _021A4FC0
	mov r0, #0x73
	mov r1, #0x30
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A4FC0:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021A4FD2
	mov r0, #0x73
	mov r1, #0x30
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A4FD2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4f9c

	thumb_func_start ovy173_21a4fd8
ovy173_21a4fd8: ; 0x021A4FD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e1cc
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a4fd8

	thumb_func_start ovy173_21a4ff0
ovy173_21a4ff0: ; 0x021A4FF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A500C
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x32
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A500C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a4ff0

	thumb_func_start ovy173_21a5010
ovy173_21a5010: ; 0x021A5010
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A5022
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5022:
	add r0, r4, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A5034
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5034:
	cmp r0, #0
	bne _021A505A
	mov r5, #0x42
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #1
	mov r7, #1
	bl ovy173_219e398
	add r0, r5, #0
	mov r1, #0x33
	add r0, #0xc4
	str r1, [r4, r0]
	add r5, #0xd8
	str r7, [r4, r5]
	b _021A5074
_021A505A:
	mov r5, #0x42
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy173_219e1cc
	mov r0, #0xb
	add r5, #0xc4
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy173_21a5de8
_021A5074:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy173_21a5010

	thumb_func_start ovy173_21a5078
ovy173_21a5078: ; 0x021A5078
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A508A
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A508A:
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _021A509C
	mov r0, #0
	str r0, [r5, r1]
	bl sub_02042860
_021A509C:
	bl sub_02042788
	cmp r0, #0
	bne _021A50C2
	ldr r0, [r5, #4]
	bl sub_0200A258
	add r0, r5, #0
	mov r1, #0x1b
	mov r2, #1
	bl ovy173_219e398
	mov r0, #0x73
	mov r1, #0x34
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0x1e
	lsl r0, r1, #4
	str r1, [r5, r0]
_021A50C2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a5078

	thumb_func_start ovy173_21a50c8
ovy173_21a50c8: ; 0x021A50C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A50DA
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A50DA:
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	sub r0, r0, #1
	str r0, [r5, r1]
	bne _021A50FA
	add r0, r1, #0
	mov r2, #0
	sub r0, #0x10
	str r2, [r5, r0]
	mov r0, #0x1a
	sub r1, #0x14
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy173_219e1cc
_021A50FA:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a50c8

	thumb_func_start ovy173_21a5100
ovy173_21a5100: ; 0x021A5100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	mov r1, #0x10
	mov r2, #0xa
	bl sub_02040664
	cmp r0, #0
	bne _021A511A
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A511A:
	mov r0, #0
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
	add r0, r5, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A513E
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x36
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A513E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a5100

	thumb_func_start ovy173_21a5144
ovy173_21a5144: ; 0x021A5144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	bne _021A5156
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A5156:
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A5168
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021A5168:
	cmp r0, #0
	bne _021A5190
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl ovy173_219e398
	add r0, r5, #0
	bl ovy173_219f9f4
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	strh r1, [r5, r0]
	mov r1, #0x29
	sub r0, #0x78
	str r1, [r5, r0]
	mov r1, #0x1e
	lsl r0, r1, #4
	b _021A51A8
_021A5190:
	add r0, r5, #0
	bl ovy173_219e1cc
	mov r0, #1
	bl sub_020421AC
	mov r0, #0x1e
	mov r1, #0x14
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r1, #0x39
	sub r0, #0x14
_021A51A8:
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a5144

	thumb_func_start ovy173_21a51b0
ovy173_21a51b0: ; 0x021A51B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219e208
	cmp r0, #0
	beq _021A51CC
	add r0, r5, #0
	bl ovy173_219e108
	mov r0, #0x73
	mov r1, #0x38
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A51CC:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a51b0

	thumb_func_start ovy173_21a51d0
ovy173_21a51d0: ; 0x021A51D0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r7, r1, #0
	bl sub_0219D0D4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy173_21a1c44
	add r6, r0, #0
	bl sub_020232D8
	add r0, r5, #0
	bl ovy173_219e138
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A5200
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5200:
	cmp r0, #0
	bne _021A5242
	ldr r0, [r5, #8]
	bl sub_021A61D0
	add r2, r0, #0
	mov r1, #1
	sub r1, r1, r2
	lsl r1, r1, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	bl sub_021A61D8
	ldr r0, [r5, #8]
	bl sub_021A61D0
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_021A6254
	add r0, r4, #0
	sub r0, #0x2c
	ldr r0, [r5, r0]
	sub r4, #0xa8
	add r0, #0x46
	ldrb r1, [r0]
	mov r0, #2
	sub r1, r0, r1
	ldr r0, _021A528C ; =0x00001356
	strb r1, [r5, r0]
	mov r0, #0x76
	str r0, [r5, r4]
	b _021A5282
_021A5242:
	ldr r0, _021A5290 ; =0x00001360
	mov r1, #0
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a52a8
	ldr r0, _021A5290 ; =0x00001360
	sub r1, r0, #6
	mov r0, #0
	strb r0, [r5, r1]
	add r1, r4, #0
	sub r1, #0x84
	sub r0, r0, #1
	str r0, [r5, r1]
	cmp r6, #0
	beq _021A526E
	add r0, r5, r4
	add r1, r6, #0
	bl ovy173_219d3c0
_021A526E:
	add r0, r5, #0
	bl ovy173_21a5388
	add r0, r5, #0
	bl ovy173_219e840
	mov r0, #0x73
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r5, r0]
_021A5282:
	add r0, r5, #0
	bl ovy173_219e1cc
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A528C: .word 0x00001356
_021A5290: .word 0x00001360
	thumb_func_end ovy173_21a51d0

	thumb_func_start ovy173_21a5294
ovy173_21a5294: ; 0x021A5294
	push {r4, lr}
	add r4, r1, #0
	bl sub_02042788
	cmp r0, #0
	bne _021A52A2
	mov r4, #2
_021A52A2:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy173_21a5294

	thumb_func_start ovy173_21a52a8
ovy173_21a52a8: ; 0x021A52A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021A52E6
	cmp r4, #1
	bne _021A52C2
	cmp r6, #2
	bne _021A52C2
	bl ovy173_21a621c
_021A52C2:
	cmp r4, #4
	bne _021A52D6
	cmp r6, #3
	bge _021A52D6
	bl sub_02151CB8
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_0200A29C
_021A52D6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy173_21a52e8
	add r0, r5, #0
	bl sub_021A2080
_021A52E6:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy173_21a52a8

	thumb_func_start ovy173_21a52e8
ovy173_21a52e8: ; 0x021A52E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #8]
	add r6, r2, #0
	cmp r1, #0
	beq _021A5344
	bl sub_021A16E0
	add r7, r0, #0
	ldr r1, [r5, #8]
	add r0, r5, #0
	bl sub_021A16EC
	cmp r7, r4
	bne _021A530C
	cmp r0, r6
	beq _021A533E
_021A530C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy173_21a17c8
	lsl r1, r4, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	bl sub_021A61C4
	lsl r1, r6, #0x18
	ldr r0, [r5, #8]
	lsr r1, r1, #0x18
	bl sub_021A61CC
	cmp r6, #5
	bne _021A5332
	cmp r4, #4
	beq _021A533E
_021A5332:
	cmp r4, #4
	beq _021A533E
	add r0, r5, #0
	mov r1, #0x7f
	bl ovy173_21a5e84
_021A533E:
	add r0, r5, #0
	bl ovy173_219e840
_021A5344:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy173_21a52e8

	thumb_func_start ovy173_21a5348
ovy173_21a5348: ; 0x021A5348
	push {r3, r4, r5, lr}
	mov r4, #0x92
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	add r0, r2, #0
	add r0, #0x46
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x46
	sub r0, r0, r1
	strb r0, [r2]
	ldr r1, [r5, r4]
	ldr r0, [r5, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A61D8
	ldr r1, [r5, r4]
	ldr r0, [r5, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A6254
	add r0, r5, #0
	bl sub_021A2080
	ldr r0, [r5, #8]
	bl sub_021A61D0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a5348

	thumb_func_start ovy173_21a5388
ovy173_21a5388: ; 0x021A5388
	push {r3, r4, r5, lr}
	mov r1, #0x7f
	add r4, r0, #0
	bl ovy173_21a5e84
	mov r5, #0x92
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	ldr r0, [r4, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A61D8
	ldr r1, [r4, r5]
	ldr r0, [r4, #8]
	add r1, #0x46
	ldrb r1, [r1]
	bl sub_021A6254
	add r0, r4, #0
	bl sub_021A2080
	ldr r0, [r4, #8]
	bl sub_021A61D0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy173_21a5388

	thumb_func_start ovy173_21a53bc
ovy173_21a53bc: ; 0x021A53BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy173_219ed90
	add r0, r5, #0
	bl ovy173_219ee34
	add r0, r5, #0
	bl ovy173_219ee50
	add r0, r5, #0
	bl ovy173_21a5650
	add r0, r5, #0
	bl ovy173_21a2c38
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219D1D0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy173_21a5a3c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy173_21a53bc

	thumb_func_start ovy173_21a53f4
ovy173_21a53f4: ; 0x021A53F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021A5644
	cmp r4, r0
	bne _021A540C
	add r0, r5, #0
	add r1, r6, #0
	bl ovy173_21a53bc
_021A540C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a53f4

	thumb_func_start ovy173_21a5410
ovy173_21a5410: ; 0x021A5410
	push {r3, lr}
	ldr r2, _021A5420 ; =0x000008EF
	ldrb r2, [r0, r2]
	cmp r2, #0
	beq _021A541E
	bl ovy173_21a53bc
_021A541E:
	pop {r3, pc}
	.align 2, 0
_021A5420: .word 0x000008EF
	thumb_func_end ovy173_21a5410

	thumb_func_start sub_021A5424
sub_021A5424: ; 0x021A5424
	ldr r1, _021A5434 ; =0x000008C8
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021A5430
	mov r0, #1
	bx lr
_021A5430:
	mov r0, #0
	bx lr
	.align 2, 0
_021A5434: .word 0x000008C8
	thumb_func_end sub_021A5424

	thumb_func_start ovy173_21a5438
ovy173_21a5438: ; 0x021A5438
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x8b
	add r5, r0, #0
	lsl r4, r4, #4
	add r7, r1, #0
	add r6, r2, #0
	add r0, r5, r4
	mov r1, #0
	mov r2, #0xf4
	blx MI_CpuFill8
	mov r0, #7
	mov r1, #1
	bl sub_02046D84
	mov r0, #8
	mov r1, #0
	bl sub_02046D84
	ldr r0, _021A5498 ; =0x021A716C
	ldr r1, _021A549C ; =ovy173_21a567c
	add r2, r5, #0
	add r3, r6, #0
	bl ButtonSystem_Create
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl GFL_WordSetSystemCreateDefault
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ovy173_21a56fc
	add r4, #0x44
	mov r0, #1
	str r0, [r5, r4]
	add r0, r5, #0
	bl sub_021A5A6C
	add r0, r5, #0
	bl ovy173_21a5a70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A5498: .word 0x021A716C
_021A549C: .word ovy173_21a567c
	thumb_func_end ovy173_21a5438

	thumb_func_start ovy173_21a54a0
ovy173_21a54a0: ; 0x021A54A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021A5424
	cmp r0, #0
	beq _021A54DC
	add r0, r5, #0
	bl ovy173_21a5954
	ldr r4, _021A54E0 ; =0x000008C8
	ldr r0, [r5, r4]
	bl sub_020504DC
	mov r6, #0
	add r0, r4, #0
	str r6, [r5, r4]
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl GFL_WordSetSystemFree
	sub r4, #0x18
	mov r0, #1
	mov r1, #1
	str r6, [r5, r4]
	bl sub_02046D84
	mov r0, #0xe
	mov r1, #0
	bl sub_02046D84
_021A54DC:
	pop {r4, r5, r6, pc}
	nop
_021A54E0: .word 0x000008C8
	thumb_func_end ovy173_21a54a0

	thumb_func_start ovy173_21a54e4
ovy173_21a54e4: ; 0x021A54E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x9d
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r5, r4
	add r7, r1, #0
	bl ovy173_219d0e0
	add r6, r0, #0
	add r0, r5, r4
	bl ovy173_219d12c
	cmp r0, #3
	blo _021A5506
	cmp r0, #6
	bhi _021A5506
	add r6, r0, #0
_021A5506:
	cmp r6, #3
	blo _021A552A
	cmp r6, #6
	bhi _021A552A
	ldr r4, _021A55C0 ; =0x000008EC
	sub r0, r6, #3
	ldrb r1, [r5, r4]
	cmp r1, r0
	beq _021A552A
	strb r0, [r5, r4]
	add r0, r5, #0
	bl sub_021A5A6C
	add r0, r4, #5
	mov r1, #1
	strb r1, [r5, r0]
	add r4, #8
	str r1, [r5, r4]
_021A552A:
	ldr r0, _021A55C4 ; =0x000008EF
	ldrb r1, [r5, r0]
	cmp r1, #1
	bne _021A553E
	mov r1, #2
	strb r1, [r5, r0]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_219ec54
_021A553E:
	ldr r4, _021A55C4 ; =0x000008EF
	ldrb r0, [r5, r4]
	cmp r0, #0
	bne _021A557C
	add r0, r5, #0
	bl ovy173_219ed90
	add r0, r5, #0
	bl ovy173_219ee34
	add r0, r5, #0
	bl ovy173_219ee50
	add r0, r4, #0
	sub r0, #0x27
	ldr r0, [r5, r0]
	bl sub_020504F0
	add r0, r5, #0
	bl ovy173_21a56b4
	add r0, r4, #2
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021A557C
	add r0, r5, #0
	bl ovy173_21a5a70
	mov r1, #0
	add r0, r4, #2
	strb r1, [r5, r0]
_021A557C:
	ldr r4, _021A55C4 ; =0x000008EF
	ldrb r0, [r5, r4]
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021A55B8
	add r0, r5, #0
	bl ovy173_21a55f0
	cmp r0, #1
	bne _021A55B8
	mov r6, #0
	sub r0, r4, #2
	strb r6, [r5, r0]
	sub r0, r4, #1
	strb r6, [r5, r0]
	add r1, r4, #2
	mov r0, #1
	strb r0, [r5, r1]
	add r1, r4, #5
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy173_21a53bc
	strb r6, [r5, r4]
	add r1, r4, #5
	mov r0, #1
	str r0, [r5, r1]
_021A55B8:
	ldr r0, _021A55C8 ; =0x000008ED
	ldrb r0, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A55C0: .word 0x000008EC
_021A55C4: .word 0x000008EF
_021A55C8: .word 0x000008ED
	thumb_func_end ovy173_21a54e4

	thumb_func_start ovy173_21a55cc
ovy173_21a55cc: ; 0x021A55CC
	push {r3, r4, r5, lr}
	ldr r4, _021A55EC ; =0x000008EF
	add r5, r0, #0
	ldrb r1, [r5, r4]
	cmp r1, #0
	bne _021A55EA
	add r1, r4, #2
	ldrb r1, [r5, r1]
	cmp r1, #1
	bne _021A55EA
	bl ovy173_21a5a70
	mov r1, #0
	add r0, r4, #2
	strb r1, [r5, r0]
_021A55EA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A55EC: .word 0x000008EF
	thumb_func_end ovy173_21a55cc

	thumb_func_start ovy173_21a55f0
ovy173_21a55f0: ; 0x021A55F0
	push {r3, r4, r5, lr}
	ldr r4, _021A563C ; =0x000008EF
	add r5, r0, #0
	ldrb r0, [r5, r4]
	cmp r0, #3
	bne _021A5600
	mov r0, #0
	pop {r3, r4, r5, pc}
_021A5600:
	add r0, r4, #0
	add r0, #0xbd
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021A561E
	bl sub_02199B90
	add r4, #0xbd
	ldr r0, [r5, r4]
	bl sub_02199C08
	cmp r0, #1
	bne _021A561E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A561E:
	bl sub_0203DF20
	mov r1, #0xf0
	tst r0, r1
	bne _021A5632
	bl GCTX_HIDGetPressedKeys
	ldr r1, _021A5640 ; =0x00000403
	tst r0, r1
	beq _021A5636
_021A5632:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A5636:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021A563C: .word 0x000008EF
_021A5640: .word 0x00000403
	thumb_func_end ovy173_21a55f0

	thumb_func_start sub_021A5644
sub_021A5644: ; 0x021A5644
	ldr r1, _021A564C ; =0x000008ED
	ldrb r0, [r0, r1]
	bx lr
	nop
_021A564C: .word 0x000008ED
	thumb_func_end sub_021A5644

	thumb_func_start ovy173_21a5650
ovy173_21a5650: ; 0x021A5650
	push {r4, lr}
	add r4, r0, #0
	bl sub_021A5424
	cmp r0, #1
	bne _021A5674
	ldr r0, _021A5678 ; =0x000008ED
	mov r2, #0
	strb r2, [r4, r0]
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	strb r2, [r4, r1]
	add r1, r0, #4
	mov r2, #1
	strb r2, [r4, r1]
	add r0, r0, #7
	str r2, [r4, r0]
_021A5674:
	pop {r4, pc}
	nop
_021A5678: .word 0x000008ED
	thumb_func_end ovy173_21a5650

	thumb_func_start ovy173_21a567c
ovy173_21a567c: ; 0x021A567C
	push {r3, r4, r5, lr}
	ldr r4, _021A56AC ; =0x000008EC
	ldrb r3, [r2, r4]
	lsl r3, r3, #3
	add r0, r0, r3
	add r3, r4, #0
	add r5, r2, r0
	sub r3, #0x20
	ldrb r3, [r5, r3]
	cmp r3, #2
	bne _021A56AA
	add r3, r4, #1
	ldrb r3, [r2, r3]
	cmp r3, #0
	bne _021A56AA
	cmp r1, #0
	bne _021A56AA
	add r1, r0, #1
	add r0, r4, #1
	strb r1, [r2, r0]
	ldr r0, _021A56B0 ; =0x0000054C
	bl GFL_SndSEPlay
_021A56AA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A56AC: .word 0x000008EC
_021A56B0: .word 0x0000054C
	thumb_func_end ovy173_21a567c

	thumb_func_start ovy173_21a56b4
ovy173_21a56b4: ; 0x021A56B4
	push {r3, r4}
	ldr r1, _021A56F4 ; =0x000008ED
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _021A56F0
	add r2, r1, #5
	ldrb r3, [r0, r2]
	ldr r2, _021A56F8 ; =0x021A7110
	ldrb r3, [r2, r3]
	add r2, r1, #1
	strb r3, [r0, r2]
	add r2, r1, #5
	ldrb r2, [r0, r2]
	add r3, r2, #1
	add r2, r1, #5
	strb r3, [r0, r2]
	mov r2, #1
	add r3, r1, #4
	strb r2, [r0, r3]
	add r3, r1, #5
	ldrb r3, [r0, r3]
	cmp r3, #0x10
	blo _021A56F0
	mov r4, #0
	add r3, r1, #5
	strb r4, [r0, r3]
	add r3, r1, #1
	strb r4, [r0, r3]
	add r1, r1, #2
	strb r2, [r0, r1]
_021A56F0:
	pop {r3, r4}
	bx lr
	.align 2, 0
_021A56F4: .word 0x000008ED
_021A56F8: .word 0x021A7110
	thumb_func_end ovy173_21a56b4

	thumb_func_start ovy173_21a56fc
ovy173_21a56fc: ; 0x021A56FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x10]
	mov r0, #1
	add r5, r2, #0
	lsl r0, r0, #8
	str r0, [sp]
	lsl r0, r5, #0x10
	add r7, r1, #0
	lsr r0, r0, #0x10
	mov r3, #0
	str r0, [sp, #4]
	str r3, [sp, #0x20]
	add r0, r7, #0
	mov r1, #6
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	ldr r0, [sp, #0x20]
	mov r1, #0xe
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204AE3C
	ldr r4, _021A5948 ; =0x000009A8
	ldr r1, [sp, #0x10]
	mov r2, #6
	str r0, [r1, r4]
	ldr r0, [sp, #0x20]
	mov r1, #0xf
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x80
	bl sub_0204ADA8
	ldr r0, [sp, #0x10]
	mov r1, #0x16
	ldr r0, [r0, r4]
	mov r2, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r3, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0204AFB0
	lsl r0, r5, #0x10
	add r6, r4, #0
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [sp, #0x10]
	sub r6, #0xf0
	add r0, r7, #0
	mov r1, #0x17
	mov r2, #0
	add r3, r3, r6
	bl sub_0204B32C
	add r2, r4, #0
	ldr r1, [sp, #0x10]
	sub r2, #0xf4
	str r0, [r1, r2]
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	sub r1, #0xf0
	ldr r0, [r0, r1]
	mov r1, #0x80
	bl ovy173_21a59c8
	lsl r0, r5, #0x10
	add r6, r4, #0
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [sp, #0x10]
	sub r6, #0xe8
	add r0, r7, #0
	mov r1, #0x19
	mov r2, #0
	add r3, r3, r6
	bl sub_0204B32C
	add r2, r4, #0
	ldr r1, [sp, #0x10]
	sub r2, #0xec
	str r0, [r1, r2]
	add r0, r1, #0
	sub r4, #0xe8
	ldr r0, [r0, r4]
	mov r1, #0x80
	bl ovy173_21a59c8
	mov r0, #0x20
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r3, #0xf
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #4
	lsl r3, r3, #5
	bl sub_0204B0B8
_021A57EA:
	ldr r0, [sp, #0x20]
	mov r3, #9
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r1, r2, r1
	mov r0, #6
	add r7, r1, #0
	mul r7, r0
	ldr r0, [sp, #0x20]
	add r2, r7, #1
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x20]
	lsl r2, r2, #0x18
	add r1, r0, r1
	asr r0, r1, #2
	lsl r5, r0, #4
	ldr r0, [sp, #0x20]
	lsr r2, r2, #0x18
	lsl r1, r0, #2
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp]
	mov r0, #0xf
	add r1, r5, #4
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	mov r0, #7
	lsr r1, r1, #0x18
	bl BmpWin_CreateDynamic
	ldr r6, _021A594C ; =0x000008F8
	ldr r1, [sp, #0x14]
	str r0, [r1, r6]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x14]
	ldr r0, [r0, r6]
	bl BmpWin_FlushChar
	add r0, r7, #1
	add r1, r5, #1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x18
	lsl r2, r1, #3
	ldr r1, [sp, #0x10]
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r7, r6, #0
	add r1, r1, r2
	str r0, [sp, #0x28]
	add r0, #0x20
	str r1, [sp, #0x18]
	str r0, [sp, #0x28]
	add r7, #0x20
	add r6, #0x20
_021A5874:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #2
	add r5, r0, r1
	mov r1, #0xc
	add r2, r4, #0
	mul r2, r1
	ldr r1, [sp, #0x1c]
	mov r0, #3
	add r1, r1, r2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp, #8]
	ldr r2, [sp, #0x24]
	mov r0, #5
	lsr r1, r1, #0x18
	mov r3, #2
	bl BmpWin_CreateDynamic
	ldr r1, [sp, #0x28]
	str r0, [r5, r1]
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, r6]
	bl BmpWin_FlushChar
	add r4, r4, #1
	cmp r4, #2
	blt _021A5874
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #8
	blt _021A57EA
	mov r0, #2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	ldr r4, _021A5950 ; =0x00000958
	ldr r1, [sp, #0x10]
	str r0, [r1, r4]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r4]
	bl sub_0204826C
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r4]
	bl BmpWin_FlushChar
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #7
	mov r1, #1
	mov r2, #5
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	ldr r1, [sp, #0x10]
	add r2, r4, #4
	str r0, [r1, r2]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x10]
	add r1, r4, #4
	ldr r0, [r0, r1]
	bl sub_0204826C
	ldr r0, [sp, #0x10]
	add r1, r4, #4
	ldr r0, [r0, r1]
	bl BmpWin_FlushChar
	mov r0, #4
	bl sub_02044F90
	mov r0, #7
	bl sub_02044F90
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5948: .word 0x000009A8
_021A594C: .word 0x000008F8
_021A5950: .word 0x00000958
	thumb_func_end ovy173_21a56fc

	thumb_func_start ovy173_21a5954
ovy173_21a5954: ; 0x021A5954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _021A59C0 ; =0x00000918
	str r0, [sp]
	add r0, r6, #0
	str r0, [sp, #4]
	sub r0, #0x20
	mov r7, #0
	str r0, [sp, #4]
_021A5966:
	ldr r0, [sp]
	lsl r1, r7, #2
	add r1, r0, r1
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	bl sub_02048210
	ldr r0, [sp]
	lsl r1, r7, #3
	mov r4, #0
	add r5, r0, r1
_021A597C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #2
	blt _021A597C
	add r7, r7, #1
	cmp r7, #8
	blt _021A5966
	ldr r4, _021A59C4 ; =0x00000958
	ldr r0, [sp]
	ldr r0, [r0, r4]
	bl sub_02048210
	ldr r0, [sp]
	add r1, r4, #4
	ldr r0, [r0, r1]
	bl sub_02048210
	add r1, r4, #0
	ldr r0, [sp]
	sub r1, #0xa4
	ldr r0, [r0, r1]
	bl GFL_HeapFree
	ldr r0, [sp]
	sub r4, #0x9c
	ldr r0, [r0, r4]
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A59C0: .word 0x00000918
_021A59C4: .word 0x00000958
	thumb_func_end ovy173_21a5954

	thumb_func_start ovy173_21a59c8
ovy173_21a59c8: ; 0x021A59C8
	push {r4, r5, r6, r7}
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xc
	mov ip, r1
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsr r3, r1, #3
	lsr r7, r0, #3
	mov r1, #0
	cmp r7, #0
	ble _021A5A04
_021A59E0:
	mov r2, #0
	cmp r3, #0
	ble _021A59FE
	add r0, r1, #0
	mul r0, r3
	lsl r4, r0, #1
	mov r0, ip
	add r4, r0, r4
_021A59F0:
	lsl r0, r2, #1
	ldrh r6, [r4, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r4, r0]
	cmp r2, r3
	blt _021A59F0
_021A59FE:
	add r1, r1, #1
	cmp r1, r7
	blt _021A59E0
_021A5A04:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy173_21a59c8

	thumb_func_start sub_021A5A08
sub_021A5A08: ; 0x021A5A08
	add r3, r0, r1
	ldr r1, _021A5A18 ; =0x000008CB
	strb r2, [r3, r1]
	mov r2, #1
	add r1, #0x26
	strb r2, [r0, r1]
	bx lr
	nop
_021A5A18: .word 0x000008CB
	thumb_func_end sub_021A5A08

	thumb_func_start sub_021A5A1C
sub_021A5A1C: ; 0x021A5A1C
	add r2, r0, r1
	ldr r1, _021A5A2C ; =0x000008CB
	mov r3, #0
	strb r3, [r2, r1]
	mov r2, #1
	add r1, #0x26
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021A5A2C: .word 0x000008CB
	thumb_func_end sub_021A5A1C

	thumb_func_start sub_021A5A30
sub_021A5A30: ; 0x021A5A30
	add r1, r0, r1
	ldr r0, _021A5A38 ; =0x000008CB
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
_021A5A38: .word 0x000008CB
	thumb_func_end sub_021A5A30

	thumb_func_start ovy173_21a5a3c
ovy173_21a5a3c: ; 0x021A5A3C
	push {r3, lr}
	ldr r2, _021A5A58 ; =0x000008EF
	ldrb r3, [r0, r2]
	cmp r3, #0
	beq _021A5A4C
	bl ovy173_219ec54
	pop {r3, pc}
_021A5A4C:
	mov r3, #1
	add r1, r2, #5
	str r3, [r0, r1]
	bl ovy173_21a5a70
	pop {r3, pc}
	.align 2, 0
_021A5A58: .word 0x000008EF
	thumb_func_end ovy173_21a5a3c

	thumb_func_start sub_021A5A5C
sub_021A5A5C: ; 0x021A5A5C
	ldr r1, _021A5A68 ; =0x000008F4
	mov r2, #1
	str r2, [r0, r1]
	sub r1, r1, #3
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021A5A68: .word 0x000008F4
	thumb_func_end sub_021A5A5C

	thumb_func_start sub_021A5A6C
sub_021A5A6C: ; 0x021A5A6C
	bx lr
	.align 2, 0
	thumb_func_end sub_021A5A6C

	thumb_func_start ovy173_21a5a70
ovy173_21a5a70: ; 0x021A5A70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	ldr r0, _021A5BF0 ; =0x000008F4
	ldr r1, [r6, r0]
	cmp r1, #1
	bne _021A5A8E
	mov r1, #0
	str r1, [r6, r0]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #7
	bl sub_02045708
	b _021A5A92
_021A5A8E:
	mov r0, #0
	str r0, [sp, #0x18]
_021A5A92:
	mov r0, #0
	str r0, [sp, #0x1c]
_021A5A96:
	ldr r1, _021A5BF4 ; =0x000008EC
	ldrb r0, [r6, r1]
	sub r1, #0x21
	lsl r2, r0, #3
	ldr r0, [sp, #0x1c]
	add r0, r0, r2
	add r4, r0, #1
	add r0, r6, r4
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021A5AC2
	ldr r0, [r6, #4]
	sub r1, r4, #1
	mov r2, #9
	bl sub_02009F80
	cmp r0, #0
	bne _021A5ABE
	mov r7, #0
	b _021A5AC4
_021A5ABE:
	mov r7, #1
	b _021A5AC4
_021A5AC2:
	mov r7, #2
_021A5AC4:
	ldr r0, [sp, #0x1c]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x1c]
	add r1, r0, r1
	asr r3, r1, #2
	ldr r1, [sp, #0x1c]
	lsr r0, r0, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r0
	mov r1, #0x1e
	ror r2, r1
	add r1, r0, r2
	ldr r2, _021A5BF8 ; =0x000008ED
	ldrb r0, [r6, r2]
	cmp r4, r0
	bne _021A5AEC
	add r2, r2, #1
	ldrb r5, [r6, r2]
	b _021A5AEE
_021A5AEC:
	mov r5, #0
_021A5AEE:
	cmp r4, r0
	beq _021A5AFA
	ldr r0, _021A5BFC ; =0x000008F3
	ldrb r0, [r6, r0]
	cmp r4, r0
	bne _021A5AFE
_021A5AFA:
	mov r2, #1
	b _021A5B00
_021A5AFE:
	mov r2, #0
_021A5B00:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _021A5B0A
	cmp r2, #1
	bne _021A5BC2
_021A5B0A:
	mov r0, #6
	mul r0, r1
	str r0, [sp, #0xc]
	lsl r0, r3, #4
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r7, #0x18
	str r0, [sp]
	add r0, r6, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ovy173_21a5c04
	cmp r7, #2
	ldr r7, _021A5C00 ; =0x000008F8
	beq _021A5B76
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r1, [r1, r7]
	add r0, r6, #0
	add r3, r5, #0
	bl ovy173_21a5c54
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r7]
	bl sub_0204826C
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r7, #0x20
	str r0, [sp, #4]
	add r2, r6, r7
	lsl r1, r1, #3
	add r1, r2, r1
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ovy173_21a5cc8
	b _021A5BC2
_021A5B76:
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r4, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, r7]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #3
	add r0, r6, r0
	str r0, [sp, #0x14]
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, #0x20
	str r0, [sp, #0x20]
	add r7, #0x20
_021A5BA2:
	ldr r0, [sp, #0x14]
	lsl r1, r4, #2
	add r5, r0, r1
	ldr r0, [sp, #0x20]
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, r7]
	bl BmpWin_FlushChar
	add r4, r4, #1
	cmp r4, #2
	blt _021A5BA2
_021A5BC2:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	bge _021A5BCE
	b _021A5A96
_021A5BCE:
	mov r0, #7
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	mov r0, #2
	mov r1, #1
	bl sub_02046D84
	mov r0, #8
	mov r1, #1
	bl sub_02046D84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021A5BF0: .word 0x000008F4
_021A5BF4: .word 0x000008EC
_021A5BF8: .word 0x000008ED
_021A5BFC: .word 0x000008F3
_021A5C00: .word 0x000008F8
	thumb_func_end ovy173_21a5a70

	thumb_func_start ovy173_21a5c04
ovy173_21a5c04: ; 0x021A5C04
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r4, r0, #0
	cmp r3, #2
	bne _021A5C14
	mov r3, #0
	mov r5, #0x12
	b _021A5C24
_021A5C14:
	lsl r0, r3, #0x14
	lsr r3, r0, #0x10
	add r0, sp, #0x28
	ldrb r5, [r0]
	mov r0, #6
	mul r0, r5
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_021A5C24:
	mov r0, #6
	ldr r6, _021A5C50 ; =0x000008B8
	str r0, [sp]
	ldr r4, [r4, r6]
	lsl r3, r3, #0x18
	add r4, #0xc
	str r4, [sp, #4]
	lsr r3, r3, #0x18
	str r3, [sp, #8]
	lsl r3, r5, #0x18
	lsr r3, r3, #0x18
	str r3, [sp, #0xc]
	mov r3, #0x20
	str r3, [sp, #0x10]
	mov r3, #0x18
	str r3, [sp, #0x14]
	mov r3, #0x10
	bl sub_020454D4
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021A5C50: .word 0x000008B8
	thumb_func_end ovy173_21a5c04

	thumb_func_start ovy173_21a5c54
ovy173_21a5c54: ; 0x021A5C54
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r5, #0
	sub r1, r6, #1
	bl ovy173_21a5d50
	add r0, r5, #0
	add r2, r5, #0
	add r0, #0xe0
	add r2, #0xf0
	ldr r0, [r0]
	ldr r2, [r2]
	mov r1, #0x21
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0x8b
	add r1, r5, #0
	add r2, r5, #0
	lsl r0, r0, #4
	add r1, #0xf8
	add r2, #0xf0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl BmpWin_GetBitmap
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	add r5, #0xf8
	str r1, [sp]
	ldr r3, [r5]
	mov r1, #2
	mov r2, #8
	bl sub_02021CFC
	add r0, r4, #0
	bl BmpWin_FlushChar
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy173_21a5c54

	thumb_func_start ovy173_21a5cc8
ovy173_21a5cc8: ; 0x021A5CC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
	cmp r3, #0
	beq _021A5CD6
	mov r4, #0x10
_021A5CD6:
	sub r0, r2, #1
	bl sub_021A5D98
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_021A16E0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_021A16EC
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, _021A5D4C ; =0x00000898
	add r2, r2, #2
	add r3, r3, #2
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, r0
	mov r1, #6
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r4, [sp, #8]
	bl ovy173_21a1e58
	add r0, r7, #0
	bl sub_021A624C
	cmp r0, #0
	beq _021A5D1E
	mov r0, #0xf
	b _021A5D20
_021A5D1E:
	mov r0, #0xb
_021A5D20:
	add r0, r0, r4
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021A5D4C ; =0x00000898
	add r2, #0xc
	add r3, r3, #2
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, r0
	mov r1, #6
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ovy173_21a1d68
	mov r0, #7
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A5D4C: .word 0x00000898
	thumb_func_end ovy173_21a5cc8

	thumb_func_start ovy173_21a5d50
ovy173_21a5d50: ; 0x021A5D50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	beq _021A5D92
	ldr r0, [r5, #4]
	mov r2, #9
	bl sub_02009F80
	add r2, r5, #0
	add r2, #0xf0
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r2, [r2]
	add r1, r4, #0
	bl sub_0200A100
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x8b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r5, #0xf0
	ldr r2, [r5]
	mov r1, #0
	add r3, r6, #0
	bl sub_0202437C
_021A5D92:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy173_21a5d50

	thumb_func_start sub_021A5D98
sub_021A5D98: ; 0x021A5D98
	ldr r3, _021A5D9C ; =sub_02151ADC
	bx r3
	.align 2, 0
_021A5D9C: .word sub_02151ADC
	thumb_func_end sub_021A5D98

	thumb_func_start sub_021A5DA0
sub_021A5DA0: ; 0x021A5DA0
	ldr r3, _021A5DA4 ; =sub_02151AF0
	bx r3
	.align 2, 0
_021A5DA4: .word sub_02151AF0
	thumb_func_end sub_021A5DA0

	thumb_func_start ovy173_21a5da8
ovy173_21a5da8: ; 0x021A5DA8
	push {r4, lr}
	add r4, r1, #0
	bl ovy173_219e0b8
	add r0, r4, #0
	bl sub_02041FD0
	pop {r4, pc}
	thumb_func_end ovy173_21a5da8

	thumb_func_start ovy173_21a5db8
ovy173_21a5db8: ; 0x021A5DB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021A5DE4 ; =0x000009B4
	add r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021A5DE2
	mov r1, #1
	str r1, [r5, r0]
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0219D1D8
	cmp r4, #1
	bne _021A5DE2
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ovy173_219e3bc
_021A5DE2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A5DE4: .word 0x000009B4
	thumb_func_end ovy173_21a5db8

	thumb_func_start ovy173_21a5de8
ovy173_21a5de8: ; 0x021A5DE8
	push {r3, r4, r5, lr}
	ldr r1, _021A5E10 ; =0x000009B4
	add r5, r0, #0
	ldr r2, [r5, r1]
	cmp r2, #1
	bne _021A5E0C
	mov r4, #0
	str r4, [r5, r1]
	bl ovy173_219e1cc
	mov r0, #0x9d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0219D1D8
	ldr r0, _021A5E14 ; =0x00001360
	str r4, [r5, r0]
_021A5E0C:
	pop {r3, r4, r5, pc}
	nop
_021A5E10: .word 0x000009B4
_021A5E14: .word 0x00001360
	thumb_func_end ovy173_21a5de8

	thumb_func_start ovy173_21a5e18
ovy173_21a5e18: ; 0x021A5E18
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021A5E7C ; =0x00001343
	add r5, r0, #0
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A5E78
	sub r0, r0, #1
	strb r0, [r5, r6]
	ldrb r7, [r5, r6]
	cmp r7, #0
	beq _021A5E6A
	sub r0, r6, #1
	ldrb r4, [r5, r0]
	sub r0, r6, #2
	ldrb r0, [r5, r0]
	sub r0, r4, r0
	bpl _021A5E4A
	neg r0, r0
	mov r1, #6
	blx sub_0208D65C
	add r1, r0, #0
	mul r1, r7
	add r1, r4, r1
	b _021A5E56
_021A5E4A:
	mov r1, #6
	blx sub_0208D65C
	add r1, r0, #0
	mul r1, r7
	sub r1, r4, r1
_021A5E56:
	sub r0, r6, #3
	strb r1, [r5, r0]
	mov r1, #0x4d
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	ldr r0, _021A5E80 ; =0x0000FFFF
	bl sub_02005F94
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A5E6A:
	sub r0, r6, #1
	ldrb r1, [r5, r0]
	sub r0, r6, #3
	strb r1, [r5, r0]
	ldr r0, _021A5E80 ; =0x0000FFFF
	bl sub_02005F94
_021A5E78:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A5E7C: .word 0x00001343
_021A5E80: .word 0x0000FFFF
	thumb_func_end ovy173_21a5e18

	thumb_func_start ovy173_21a5e84
ovy173_21a5e84: ; 0x021A5E84
	push {r4, lr}
	ldr r2, _021A5EB0 ; =0x00001342
	add r4, r1, #0
	ldrb r1, [r0, r2]
	cmp r1, r4
	beq _021A5EAE
	sub r1, r2, #2
	ldrb r3, [r0, r1]
	sub r1, r2, #1
	strb r3, [r0, r1]
	mov r3, #6
	add r1, r2, #1
	strb r3, [r0, r1]
	strb r4, [r0, r2]
	add r0, r4, #0
	mov r1, #0x3f
	bl sub_02005D20
	add r0, r4, #0
	bl sub_020067A4
_021A5EAE:
	pop {r4, pc}
	.align 2, 0
_021A5EB0: .word 0x00001342
	thumb_func_end ovy173_21a5e84

	thumb_func_start sub_021A5EB4
sub_021A5EB4: ; 0x021A5EB4
	cmp r1, #4
	bne _021A5EBC
	mov r2, #0x2a
	b _021A5EBE
_021A5EBC:
	mov r2, #0x7f
_021A5EBE:
	ldr r1, _021A5ECC ; =0x00001342
	strb r2, [r0, r1]
	ldr r1, _021A5ECC ; =0x00001342
	ldrb r2, [r0, r1]
	sub r1, r1, #1
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021A5ECC: .word 0x00001342
	thumb_func_end sub_021A5EB4

	thumb_func_start ovy173_21a5ed0
ovy173_21a5ed0: ; 0x021A5ED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r2, #0x29
	add r4, r0, #0
	ldr r1, _021A5FE0 ; =0x00008021
	mov r0, #1
	lsl r2, r2, #0xe
	bl GFL_HeapCreateChild
	ldr r6, _021A5FE4 ; =0x00001364
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x21
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	add r2, r6, #0
	mov r7, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_02042DAC
	ldr r0, [r5]
	str r0, [r4, #8]
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0xc0
	str r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #4]
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl ovy173_21a04f0
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0201735C
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_02017238
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	bl sub_02008DDC
	add r1, r4, #0
	add r1, #0xd8
	str r0, [r1]
	mov r0, #0x76
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x49
	ldrb r1, [r0]
	sub r0, r6, #4
	sub r6, #0xa
	str r1, [r4, r0]
	strb r7, [r4, r6]
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021A5F6C
	str r7, [r5, #0xc]
	b _021A5F70
_021A5F6C:
	cmp r0, #0
	beq _021A5F76
_021A5F70:
	add r0, r4, #0
	mov r1, #4
	b _021A5F7A
_021A5F76:
	add r0, r4, #0
	mov r1, #1
_021A5F7A:
	bl sub_021A5EB4
	mov r7, #0x1d
	lsl r7, r7, #4
	mov r6, #0
	add r0, r7, #0
	str r6, [r4, r7]
	sub r1, r6, #1
	add r0, #0x20
	str r1, [r4, r0]
	add r0, r7, #0
	add r0, #0x78
	str r5, [r4, r0]
	mov r0, #0xf
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0xf
	mov r1, #0
	bl sub_02046D84
	add r0, r4, #0
	bl ovy173_219eb0c
	sub r0, r7, #4
	str r6, [r4, r0]
	add r0, r4, #0
	bl ovy173_21a182c
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021A5FC4
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ovy173_21a208c
_021A5FC4:
	bl sub_02042788
	cmp r0, #0
	beq _021A5FDA
	add r0, r4, #0
	bl ovy173_219e0b8
	mov r0, #1
	mov r1, #0x21
	bl sub_02042BA8
_021A5FDA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A5FE0: .word 0x00008021
_021A5FE4: .word 0x00001364
	thumb_func_end ovy173_21a5ed0

	thumb_func_start ovy173_21a5fe8
ovy173_21a5fe8: ; 0x021A5FE8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r3, #0
	bl sub_02042788
	cmp r0, #0
	beq _021A6062
	mov r0, #1
	mov r1, #1
	mov r6, #1
	bl sub_02152404
	cmp r0, #2
	beq _021A6046
	cmp r0, #4
	bne _021A6062
	add r0, r4, #0
	bl ovy173_219fa28
	add r0, r4, #0
	bl ovy173_219ea18
	mov r0, #0
	mov r5, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl ovy173_21a52a8
	ldr r0, _021A610C ; =0x0000135A
	mov r1, #0x14
	strb r5, [r4, r0]
	mov r0, #0x1e
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #0x39
	sub r0, #0x14
	str r1, [r4, r0]
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_021A6046:
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	add r0, r6, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #0x1d
	lsl r0, r0, #4
	str r6, [r4, r0]
	add sp, #0x10
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021A6062:
	bl sub_020120C8
	cmp r0, #0
	bne _021A60A4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _021A6110 ; =0x021A75EC
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _021A60A4
	ldr r1, [r5]
	add r0, r4, #0
	blx r2
	str r0, [r5]
	cmp r0, #2
	bne _021A60A4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x21
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021A60A4:
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A60B2
	bl sub_0204B794
_021A60B2:
	mov r5, #0x6e
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021A60F0
	add r0, sp, #0xc
	add r1, sp, #0xc
	add r0, #2
	add r1, #1
	add r2, sp, #0xc
	bl sub_02023370
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	bl sub_0203A7F4
	add r2, sp, #0xc
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl sub_020232E8
	ldr r0, [r4, r5]
	bl sub_02021A3C
_021A60F0:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A60FE
	bl sub_02021A3C
_021A60FE:
	add r0, r4, #0
	bl ovy173_21a5e18
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021A610C: .word 0x0000135A
_021A6110: .word 0x021A75EC
	thumb_func_end ovy173_21a5fe8

	thumb_func_start ovy173_21a6114
ovy173_21a6114: ; 0x021A6114
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r7, r0, #0
	add r0, r4, #0
	add r5, r2, #0
	bl ovy173_21a5e18
	cmp r0, #0
	bne _021A612A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A612A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	bne _021A6136
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A6136:
	bl sub_02042788
	cmp r0, #0
	beq _021A6144
	add r0, r4, #0
	bl sub_0219E0D8
_021A6144:
	ldr r6, _021A61B8 ; =0x00001360
	add r0, r5, #0
	ldr r1, [r4, r6]
	add r0, #0x49
	strb r1, [r0]
	add r0, r6, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021A616E
	ldr r1, [r5, #0x1c]
	bl sub_0200B524
	add r0, r6, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	bl GFL_HeapFree
	mov r0, #0
	sub r6, #0x18
	str r0, [r4, r6]
_021A616E:
	add r0, r4, #0
	bl ovy173_219fa28
	add r0, r4, #0
	bl ovy173_21a1918
	ldr r1, _021A61BC ; =0x00000242
	add r0, r5, #0
	ldrh r2, [r4, r1]
	add r0, #0x47
	sub r1, #0x72
	strb r2, [r0]
	ldr r0, [r4, r1]
	str r0, [r5, #0xc]
	bl sub_02042788
	cmp r0, #0
	beq _021A6198
	bl sub_02151CB8
	str r0, [r5, #0x10]
_021A6198:
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl ovy173_21a0514
	add r0, r4, #0
	bl ovy173_219eb88
	add r0, r7, #0
	bl sub_0203AB10
	mov r0, #0x21
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A61B8: .word 0x00001360
_021A61BC: .word 0x00000242
	thumb_func_end ovy173_21a6114

	thumb_func_start sub_021A61C0
sub_021A61C0: ; 0x021A61C0
	ldrb r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021A61C0

	thumb_func_start sub_021A61C4
sub_021A61C4: ; 0x021A61C4
	strb r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_021A61C4

	thumb_func_start sub_021A61C8
sub_021A61C8: ; 0x021A61C8
	ldrb r0, [r0, #0x17]
	bx lr
	thumb_func_end sub_021A61C8

	thumb_func_start sub_021A61CC
sub_021A61CC: ; 0x021A61CC
	strb r1, [r0, #0x17]
	bx lr
	thumb_func_end sub_021A61CC

	thumb_func_start sub_021A61D0
sub_021A61D0: ; 0x021A61D0
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_021A61D0

	thumb_func_start sub_021A61D8
sub_021A61D8: ; 0x021A61D8
	ldrb r3, [r0, #0x1b]
	mov r2, #2
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x1e
	orr r1, r3
	strb r1, [r0, #0x1b]
	bx lr
	thumb_func_end sub_021A61D8

	thumb_func_start ovy173_21a61e8
ovy173_21a61e8: ; 0x021A61E8
	push {r3, lr}
	add r0, #0xe
	add r1, #8
	mov r2, #6
	bl sub_02043E98
	cmp r0, #0
	bne _021A61FC
	mov r0, #1
	pop {r3, pc}
_021A61FC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy173_21a61e8

	thumb_func_start sub_021A6200
sub_021A6200: ; 0x021A6200
	add r2, r0, #0
	ldrb r0, [r2, #0x1c]
	add r1, #0xe
	ldr r3, _021A6218 ; =MI_CpuCopy8
	add r0, r0, #1
	strb r0, [r2, #0x1c]
	add r2, #8
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #6
	bx r3
	nop
_021A6218: .word MI_CpuCopy8
	thumb_func_end sub_021A6200

	thumb_func_start ovy173_21a621c
ovy173_21a621c: ; 0x021A621C
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	add r0, sp, #0
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	add r1, #8
	mov r2, #6
	blx MI_CpuCopy8
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy173_21a621c

	thumb_func_start ovy173_21A6240
ovy173_21A6240: ; 0x021A6240
	ldr r3, _021A6248 ; =OS_GetMacAddress
	add r0, #0xe
	bx r3
	nop
_021A6248: .word OS_GetMacAddress
	thumb_func_end ovy173_21A6240

	thumb_func_start sub_021A624C
sub_021A624C: ; 0x021A624C
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_021A624C

	thumb_func_start sub_021A6254
sub_021A6254: ; 0x021A6254
	ldrb r3, [r0, #0x1b]
	mov r2, #0x10
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x1b
	orr r1, r3
	strb r1, [r0, #0x1b]
	bx lr
	thumb_func_end sub_021A6254

	thumb_func_start sub_021A6264
sub_021A6264: ; 0x021A6264
	ldrb r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021A6264
_021A6268:
	.byte 0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x01, 0x02, 0x01, 0x00, 0x01, 0x04, 0x01, 0x01, 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x01, 0x02, 0x01, 0x01, 0x01, 0x04, 0x01, 0x00, 0x01, 0x03, 0x01, 0x01, 0x00, 0x00, 0x00, 0x1C
	.byte 0x00, 0x00, 0x03, 0x00, 0x20, 0x1A, 0x00, 0x00, 0xE5, 0xE0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xE9, 0xE0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0xED, 0xE0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x2D, 0x4D, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x65, 0x4C, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xD9, 0x4C, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x11, 0x4D, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0xA9, 0x4C, 0x1A, 0x02, 0xC9, 0x4C, 0x1A, 0x02, 0xAD, 0x4C, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x0B, 0x00, 0x10, 0x00, 0x0B, 0x00, 0x16, 0x00, 0x0B, 0x00, 0x1C, 0x00, 0x0B, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x64, 0x00, 0x02, 0x18, 0x0D, 0x0F, 0x15, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02
	.byte 0x5D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x64, 0x00, 0x64, 0x00, 0x64, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x77
	.byte 0x30, 0x5F, 0x00, 0x77, 0x60, 0x8F, 0x00, 0x77, 0x90, 0xBF, 0x00, 0x77, 0x00, 0x2F, 0x80, 0xFF
	.byte 0x30, 0x5F, 0x80, 0xFF, 0x60, 0x8F, 0x80, 0xFF, 0x90, 0xBF, 0x80, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x00, 0x10, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x38, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00
	.byte 0x62, 0x00, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0xD1, 0x5E, 0x1A, 0x02, 0xE9, 0x5F, 0x1A, 0x02
	.byte 0x15, 0x61, 0x1A, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00
	.byte 0x5A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1A, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1B, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xE8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1C, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x58, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x8D, 0x00, 0x00, 0x00, 0x8D, 0x00, 0x00, 0x00
	.byte 0x8E, 0x00, 0x00, 0x00, 0x8E, 0x00, 0x00, 0x00, 0x8F, 0x00, 0x00, 0x00, 0x8F, 0x00, 0x00, 0x00
	.byte 0x90, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF0, 0x62, 0x1A, 0x02, 0xB0, 0x65, 0x1A, 0x02, 0x70, 0x68, 0x1A, 0x02, 0x38, 0x6C, 0x1A, 0x02
	.byte 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x43, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x1B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x3D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x3F, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x3C, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00
	.byte 0x42, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00
	.byte 0x65, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBD, 0xE4, 0x19, 0x02, 0x05, 0x00, 0x05, 0x00
	.byte 0x00, 0x10, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x05, 0x00, 0x00, 0x10, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x06, 0x00, 0x00, 0x10, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8D, 0x16, 0x1A, 0x02, 0x79, 0x16, 0x1A, 0x02
	.byte 0x69, 0x16, 0x1A, 0x02, 0x00, 0xE4, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x0D, 0x00, 0xF0, 0x00, 0x00, 0x00, 0x02, 0x50, 0x10, 0x01
	.byte 0x00, 0x01, 0x01, 0x0A, 0x2C, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9D, 0x1F, 0x1A, 0x02
	.byte 0xA1, 0x22, 0x1A, 0x02, 0xE9, 0x22, 0x1A, 0x02, 0x09, 0x23, 0x1A, 0x02, 0x65, 0x23, 0x1A, 0x02
	.byte 0x4D, 0x20, 0x1A, 0x02, 0x89, 0x24, 0x1A, 0x02, 0xA5, 0x26, 0x1A, 0x02, 0xD9, 0x26, 0x1A, 0x02
	.byte 0x31, 0x28, 0x1A, 0x02, 0x9D, 0x29, 0x1A, 0x02, 0x61, 0x2C, 0x1A, 0x02, 0xC5, 0x33, 0x1A, 0x02
	.byte 0xED, 0x33, 0x1A, 0x02, 0x95, 0x34, 0x1A, 0x02, 0xC9, 0x34, 0x1A, 0x02, 0x55, 0x35, 0x1A, 0x02
	.byte 0x59, 0x36, 0x1A, 0x02, 0xB1, 0x36, 0x1A, 0x02, 0x95, 0x38, 0x1A, 0x02, 0x61, 0x39, 0x1A, 0x02
	.byte 0x45, 0x3A, 0x1A, 0x02, 0x09, 0x3B, 0x1A, 0x02, 0x0D, 0x3B, 0x1A, 0x02, 0x11, 0x3B, 0x1A, 0x02
	.byte 0x69, 0x4F, 0x1A, 0x02, 0x95, 0x52, 0x1A, 0x02, 0x15, 0x3B, 0x1A, 0x02, 0x29, 0x3C, 0x1A, 0x02
	.byte 0x9D, 0x3C, 0x1A, 0x02, 0x6D, 0x40, 0x1A, 0x02, 0x51, 0x3B, 0x1A, 0x02, 0x75, 0x3B, 0x1A, 0x02
	.byte 0xA1, 0x3B, 0x1A, 0x02, 0x25, 0x41, 0x1A, 0x02, 0x2D, 0x42, 0x1A, 0x02, 0x5D, 0x46, 0x1A, 0x02
	.byte 0x45, 0x49, 0x1A, 0x02, 0x7D, 0x4A, 0x1A, 0x02, 0x81, 0x4A, 0x1A, 0x02, 0x85, 0x4A, 0x1A, 0x02
	.byte 0x7D, 0x4B, 0x1A, 0x02, 0x51, 0x4D, 0x1A, 0x02, 0x19, 0x4E, 0x1A, 0x02, 0x85, 0x4E, 0x1A, 0x02
	.byte 0xED, 0x4E, 0x1A, 0x02, 0x91, 0x4F, 0x1A, 0x02, 0x9D, 0x4F, 0x1A, 0x02, 0xD9, 0x4F, 0x1A, 0x02
	.byte 0xF1, 0x4F, 0x1A, 0x02, 0x11, 0x50, 0x1A, 0x02, 0x79, 0x50, 0x1A, 0x02, 0xC9, 0x50, 0x1A, 0x02
	.byte 0x01, 0x51, 0x1A, 0x02, 0x45, 0x51, 0x1A, 0x02, 0xB1, 0x51, 0x1A, 0x02, 0xD1, 0x51, 0x1A, 0x02
	.byte 0xFD, 0x25, 0x1A, 0x02, 0x31, 0x4A, 0x1A, 0x02, 0x35, 0x4A, 0x1A, 0x02, 0x05, 0x25, 0x1A, 0x02
	.byte 0x39, 0x4A, 0x1A, 0x02, 0x85, 0x25, 0x1A, 0x02, 0x15, 0x33, 0x1A, 0x02, 0xC1, 0x44, 0x1A, 0x02
	.byte 0xB1, 0xFA, 0x19, 0x02, 0x29, 0xFB, 0x19, 0x02, 0x4D, 0xFB, 0x19, 0x02, 0x8D, 0xFB, 0x19, 0x02
	.byte 0x01, 0xFC, 0x19, 0x02, 0x25, 0xFC, 0x19, 0x02, 0x81, 0xFE, 0x19, 0x02, 0xD5, 0x0F, 0x1A, 0x02
	.byte 0x11, 0x10, 0x1A, 0x02, 0x11, 0x11, 0x1A, 0x02, 0x25, 0xFF, 0x19, 0x02, 0x39, 0xFF, 0x19, 0x02
	.byte 0x4D, 0xFF, 0x19, 0x02, 0xB5, 0x01, 0x1A, 0x02, 0x61, 0xFF, 0x19, 0x02, 0x85, 0xFF, 0x19, 0x02
	.byte 0x19, 0x01, 0x1A, 0x02, 0xD1, 0x00, 0x1A, 0x02, 0xE9, 0x00, 0x1A, 0x02, 0xCD, 0x01, 0x1A, 0x02
	.byte 0xA5, 0x02, 0x1A, 0x02, 0xBD, 0x02, 0x1A, 0x02, 0x61, 0x03, 0x1A, 0x02, 0x79, 0x03, 0x1A, 0x02
	.byte 0x1D, 0x04, 0x1A, 0x02, 0x35, 0x04, 0x1A, 0x02, 0x1D, 0x06, 0x1A, 0x02, 0x19, 0x08, 0x1A, 0x02
	.byte 0x45, 0x08, 0x1A, 0x02, 0x65, 0x08, 0x1A, 0x02, 0x31, 0x09, 0x1A, 0x02, 0x35, 0x09, 0x1A, 0x02
	.byte 0x4D, 0x09, 0x1A, 0x02, 0xD1, 0x09, 0x1A, 0x02, 0xBD, 0x06, 0x1A, 0x02, 0x89, 0x0A, 0x1A, 0x02
	.byte 0xF5, 0x0A, 0x1A, 0x02, 0x3D, 0x0B, 0x1A, 0x02, 0xB1, 0x0C, 0x1A, 0x02, 0x41, 0x0D, 0x1A, 0x02
	.byte 0xB5, 0x0D, 0x1A, 0x02, 0xDD, 0x0D, 0x1A, 0x02, 0x41, 0x0E, 0x1A, 0x02, 0x99, 0x0E, 0x1A, 0x02
	.byte 0xF1, 0x0E, 0x1A, 0x02, 0x1D, 0x0F, 0x1A, 0x02, 0x71, 0x0F, 0x1A, 0x02, 0x95, 0x0F, 0x1A, 0x02
	.byte 0xED, 0x3F, 0x1A, 0x02, 0x39, 0x40, 0x1A, 0x02, 0xC9, 0x14, 0x1A, 0x02, 0xA5, 0x15, 0x1A, 0x02
	.byte 0xDD, 0x15, 0x1A, 0x02, 0x35, 0x48, 0x1A, 0x02, 0x31, 0x07, 0x1A, 0x02, 0xC9, 0x07, 0x1A, 0x02
	.byte 0xD5, 0x13, 0x1A, 0x02, 0xE5, 0x08, 0x1A, 0x02, 0x05, 0x09, 0x1A, 0x02, 0x25, 0x09, 0x1A, 0x02
	.byte 0xD1, 0x11, 0x1A, 0x02, 0xFD, 0x11, 0x1A, 0x02, 0x21, 0x12, 0x1A, 0x02, 0x71, 0x12, 0x1A, 0x02
	.byte 0xBD, 0x12, 0x1A, 0x02, 0x15, 0x13, 0x1A, 0x02, 0x49, 0x3C, 0x1A, 0x02, 0x79, 0x11, 0x1A, 0x02
	.byte 0x01, 0x01, 0x1A, 0x02, 0x59, 0x12, 0x1A, 0x02, 0xAD, 0x4D, 0x1A, 0x02, 0x95, 0x43, 0x1A, 0x02
	.byte 0x69, 0x44, 0x1A, 0x02, 0x2D, 0x13, 0x1A, 0x02, 0x4D, 0x13, 0x1A, 0x02, 0xAD, 0x09, 0x1A, 0x02
	.byte 0x6D, 0x11, 0x1A, 0x02, 0xAD, 0x11, 0x1A, 0x02, 0xA1, 0x00, 0x1A, 0x02, 0x59, 0x00, 0x1A, 0x02
	.byte 0xA5, 0x39, 0x1A, 0x02, 0x2D, 0x37, 0x1A, 0x02, 0x95, 0x37, 0x1A, 0x02, 0x61, 0x38, 0x1A, 0x02
	.byte 0xC9, 0x35, 0x1A, 0x02, 0x15, 0x00, 0x1A, 0x02, 0x8D, 0x13, 0x1A, 0x02, 0x19, 0x0D, 0x1A, 0x02
	.byte 0x39, 0x11, 0x1A, 0x02, 0x6D, 0x37, 0x1A, 0x02, 0x39, 0x10, 0x1A, 0x02, 0x69, 0x10, 0x1A, 0x02
	.byte 0x55, 0x0A, 0x1A, 0x02, 0x99, 0x30, 0x1A, 0x02, 0x19, 0x38, 0x1A, 0x02, 0x79, 0x3E, 0x1A, 0x02
	.byte 0xA5, 0x3E, 0x1A, 0x02, 0xFD, 0x3E, 0x1A, 0x02, 0x29, 0x3F, 0x1A, 0x02, 0xA1, 0xFD, 0x19, 0x02
	.byte 0xCD, 0xFD, 0x19, 0x02, 0x0D, 0xFE, 0x19, 0x02, 0x39, 0xFE, 0x19, 0x02, 0xB5, 0x10, 0x1A, 0x02
	.byte 0xDD, 0x10, 0x1A, 0x02, 0x3D, 0x14, 0x1A, 0x02, 0x61, 0x14, 0x1A, 0x02, 0xA1, 0x14, 0x1A, 0x02
	.byte 0x51, 0x3E, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A6268
