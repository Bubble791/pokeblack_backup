    .include "macros/function.inc"
	.include "overlay209.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy209_21ba140
ovy209_21ba140: ; 0x021BA140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r6, #1
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	mov r1, #0x4a
	lsl r2, r6, #0x13
	mov r7, #0x4a
	bl sub_0203A15C
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0x4a
	bl sub_0203AAEC
	str r0, [sp, #0xc]
	strh r7, [r0]
	cmp r4, #0
	beq _021BA16A
	b _021BA360
_021BA16A:
	ldr r0, _021BA3DC ; =0x000000D3
	bl sub_0203CE0C
	ldr r0, _021BA3E0 ; =0x000000D2
	bl sub_0203CE0C
	mov r0, #0x72
	str r0, [sp]
	ldr r3, _021BA3E4 ; =0x021C300C
	add r0, r7, #0
	mov r1, #0x18
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	ldr r1, [sp, #0xc]
	mov r5, #0x1b
	str r0, [r1, #8]
	mov r0, #0x73
	lsl r5, r5, #4
	str r0, [sp]
	ldr r3, _021BA3E4 ; =0x021C300C
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0203A1FC
	ldr r1, [sp, #0xc]
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	str r4, [r0, #4]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	str r6, [r0, #8]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	ldr r7, [r0, #0xc]
	add r0, sp, #0x14
	bl sub_0204424C
	ldr r1, [r7]
	mov r0, #0x1f
	bic r1, r0
	mov r0, #3
	orr r1, r0
	ldr r0, _021BA3E8 ; =0xFFFFFE1F
	and r1, r0
	mov r0, #0x40
	orr r1, r0
	str r0, [sp, #0x10]
	ldr r0, _021BA3EC ; =0xFFFF01FF
	str r1, [r7]
	and r1, r0
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x10
	orr r1, r0
	ldr r0, _021BA3F0 ; =0xFFE0FFFF
	str r1, [r7]
	and r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xb
	orr r1, r0
	ldr r0, _021BA3F4 ; =0xF81FFFFF
	str r1, [r7]
	and r1, r0
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x1a
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r7]
	ldr r0, _021BA3F8 ; =0x000030DD
	add r1, r5, #0
	sub r1, #0x4c
	strh r0, [r7, r1]
	add r2, r0, #0
	add r1, r5, #0
	add r6, r0, #0
	add r3, r0, #0
	sub r2, #0x2c
	sub r1, #0x4a
	strh r2, [r7, r1]
	add r2, r0, #0
	add r1, r5, #0
	sub r2, #0x1a
	sub r1, #0x48
	strh r2, [r7, r1]
	add r1, r5, #0
	add r2, r5, #0
	sub r6, #0x1e
	sub r1, #0x46
	strh r6, [r7, r1]
	add r1, r0, #0
	add r1, #0x1f
	sub r2, #0x44
	strh r1, [r7, r2]
	mov ip, r1
	add r1, r5, #0
	add r3, #0xd
	sub r1, #0x42
	strh r3, [r7, r1]
	add r1, r5, #0
	add r2, r0, #5
	sub r1, #0x40
	strh r2, [r7, r1]
	add r2, r0, #0
	add r1, r5, #0
	add r2, #0x16
	sub r1, #0x3e
	strh r2, [r7, r1]
	add r1, r5, #0
	sub r0, #0x24
	sub r1, #0x3c
	strh r0, [r7, r1]
	add r0, r5, #0
	sub r0, #0x3a
	add r1, r5, #0
	strh r6, [r7, r0]
	sub r1, #0x38
	mov r0, ip
	strh r0, [r7, r1]
	add r0, r5, #0
	sub r0, #0x36
	strh r3, [r7, r0]
	bl sub_020486F4
	add r1, r5, #0
	sub r1, #0x34
	strh r0, [r7, r1]
	add r5, #0xd3
	add r0, r7, #0
	strh r5, [r7, #4]
	add r0, #0x5c
	strh r5, [r0]
	add r0, r7, #0
	add r0, #0xb4
	strh r5, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0xcc
	str r0, [sp, #0x10]
	strh r5, [r7, r0]
_021BA28A:
	mov r0, #0x58
	mul r0, r4
	ldr r2, _021BA3FC ; =0x000030C8
	add r1, r7, r0
	add r0, r2, #0
	strh r2, [r1, #0xc]
	add r0, #0x24
	strh r0, [r1, #0xe]
	add r0, r2, #0
	add r0, #0x34
	strh r0, [r1, #0x10]
	add r0, r2, #2
	strh r0, [r1, #0x12]
	ldr r0, _021BA400 ; =0x0000FF11
	mov r3, #0xff
	add r0, r4, r0
	strh r0, [r1, #0x14]
	mov r0, #0
	strh r0, [r1, #0x16]
	add r5, r0, #0
	mov r2, #0xa
_021BA2B4:
	lsl r6, r0, #3
	add r6, r1, r6
	add r0, r0, #1
	strh r3, [r6, #0x1c]
	lsl r0, r0, #0x18
	strh r5, [r6, #0x1e]
	add r6, #0x20
	lsr r0, r0, #0x18
	strb r2, [r6]
	cmp r0, #8
	blo _021BA2B4
	mov r0, #0x58
	mul r0, r4
	add r1, r7, r0
	mov r0, #0xb
	strh r0, [r1, #0x1c]
	add r2, r1, #0
	strh r5, [r1, #0x1e]
	mov r3, #7
	add r2, #0x20
	strb r3, [r2]
	strh r0, [r1, #0x24]
	add r2, r1, #0
	strh r5, [r1, #0x26]
	mov r3, #8
	add r2, #0x28
	strb r3, [r2]
	strh r0, [r1, #0x2c]
	add r2, r1, #0
	strh r5, [r1, #0x2e]
	mov r3, #6
	add r2, #0x30
	strb r3, [r2]
	strh r0, [r1, #0x34]
	add r2, r1, #0
	strh r5, [r1, #0x36]
	mov r3, #4
	add r2, #0x38
	strb r3, [r2]
	strh r0, [r1, #0x3c]
	add r2, r1, #0
	strh r5, [r1, #0x3e]
	mov r3, #2
	add r2, #0x40
	strb r3, [r2]
	add r2, r1, #0
	add r2, #0x44
	strh r0, [r2]
	add r2, r1, #0
	add r2, #0x46
	strh r5, [r2]
	add r2, r1, #0
	mov r6, #1
	add r2, #0x48
	strb r6, [r2]
	add r2, r1, #0
	add r2, #0x4c
	strh r0, [r2]
	add r0, r1, #0
	add r0, #0x4e
	strh r5, [r0]
	add r0, r4, #1
	lsl r0, r0, #0x18
	add r1, #0x50
	lsr r4, r0, #0x18
	strb r5, [r1]
	cmp r4, #4
	blo _021BA28A
	bl sub_0203DF20
	add r1, r6, #0
	add r1, #0xff
	tst r0, r1
	beq _021BA350
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	str r6, [r0]
	b _021BA356
_021BA350:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	str r5, [r0]
_021BA356:
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0x10]
	b _021BA36E
_021BA360:
	str r4, [r0, #8]
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021BA36E
	ldr r0, _021BA3E0 ; =0x000000D2
	bl sub_0203CE0C
_021BA36E:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021BA37E
	ldr r0, _021BA3DC ; =0x000000D3
	bl sub_0203CE0C
_021BA37E:
	ldr r0, _021BA404 ; =0x021BA4F5
	ldr r1, [sp, #0xc]
	mov r2, #0x40
	bl sub_020056FC
	ldr r1, [sp, #0xc]
	str r0, [r1, #4]
	add r0, r1, #0
	bl ovy209_21ba4fc
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #8]
	ldrh r1, [r1]
	ldr r0, [r0, #0xc]
	bl ovy209_21ba598
	ldr r1, [sp, #0xc]
	str r0, [r1, #0xc]
	add r0, r1, #0
	ldr r3, [r0, #8]
	ldrh r0, [r0]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x10]
	ldr r2, [r3]
	ldr r3, [r3, #0x14]
	bl ovy209_21bad2c
	ldr r1, [sp, #0xc]
	mov r2, #1
	str r0, [r1, #0x10]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldrh r0, [r0]
	mov r1, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_020279B4
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BA3DC: .word 0x000000D3
_021BA3E0: .word 0x000000D2
_021BA3E4: .word 0x021C300C
_021BA3E8: .word 0xFFFFFE1F
_021BA3EC: .word 0xFFFF01FF
_021BA3F0: .word 0xFFE0FFFF
_021BA3F4: .word 0xF81FFFFF
_021BA3F8: .word 0x000030DD
_021BA3FC: .word 0x000030C8
_021BA400: .word 0x0000FF11
_021BA404: .word 0x021BA4F5
	thumb_func_end ovy209_21ba140

	thumb_func_start ovy209_21ba408
ovy209_21ba408: ; 0x021BA408
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02027ACC
	cmp r0, #0
	bne _021BA41C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021BA41C:
	ldr r6, _021BA4A0 ; =0x0400006C
	mov r1, #0xf
	add r0, r6, #0
	mvn r1, r1
	bl GXx_SetMasterBrightness_
	mov r1, #0xf
	ldr r0, _021BA4A4 ; =0x0400106C
	mvn r1, r1
	bl GXx_SetMasterBrightness_
	mov r0, #0x1f
	sub r6, #0x1c
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0x1f
	bl G2x_SetBlendAlpha_
	ldr r0, [r4, #0x10]
	bl ovy209_21bada8
	ldr r0, [r4, #0xc]
	bl ovy209_21ba698
	add r0, r4, #0
	bl ovy209_21ba588
	ldr r0, [r4, #4]
	bl sub_0203A6A8
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021BA46A
	ldr r0, _021BA4A8 ; =0x000000D3
	bl sub_0203CDC8
_021BA46A:
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021BA478
	ldr r0, _021BA4AC ; =0x000000D2
	bl sub_0203CDC8
_021BA478:
	cmp r5, #0
	bne _021BA490
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl sub_0203A24C
	ldr r0, [r4, #8]
	bl sub_0203A24C
	ldr r0, _021BA4A8 ; =0x000000D3
	bl sub_0203CDC8
_021BA490:
	add r0, r7, #0
	bl sub_0203AB10
	mov r0, #0x4a
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BA4A0: .word 0x0400006C
_021BA4A4: .word 0x0400106C
_021BA4A8: .word 0x000000D3
_021BA4AC: .word 0x000000D2
	thumb_func_end ovy209_21ba408

	thumb_func_start ovy209_21ba4b0
ovy209_21ba4b0: ; 0x021BA4B0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r3, #0
	ldr r0, [r4, #0xc]
	bl ovy209_21ba6f8
	ldr r0, [r4, #0x10]
	bl ovy209_21badf8
	bl sub_0204B794
	ldr r0, [r4, #0x10]
	bl sub_021BAF90
	cmp r0, #1
	bne _021BA4EE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021BA4EE:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy209_21ba4b0
_021BA4F4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy209_21ba4fc
ovy209_21ba4fc: ; 0x021BA4FC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021BA570 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021BA574 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
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
	ldr r2, _021BA578 ; =0x04000304
	ldr r5, _021BA57C ; =0x021C2BFC
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl sub_02046C40
	ldrh r0, [r4]
	bl sub_020444A4
	ldrh r0, [r4]
	bl sub_02048080
	ldr r0, _021BA580 ; =0x021C2BEC
	bl sub_02044710
	ldrh r2, [r4]
	ldr r0, _021BA584 ; =0x02093F08
	add r1, r5, #0
	bl sub_0204B6A8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BA570: .word 0xFFFFE0FF
_021BA574: .word 0x04001000
_021BA578: .word 0x04000304
_021BA57C: .word 0x021C2BFC
_021BA580: .word 0x021C2BEC
_021BA584: .word 0x02093F08
	thumb_func_end ovy209_21ba4fc

	thumb_func_start ovy209_21ba588
ovy209_21ba588: ; 0x021BA588
	push {r3, lr}
	bl sub_0204B758
	bl sub_020480A8
	bl sub_02044528
	pop {r3, pc}
	thumb_func_end ovy209_21ba588

	thumb_func_start ovy209_21ba598
ovy209_21ba598: ; 0x021BA598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x85
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r3, _021BA694 ; =0x021C3020
	mov r1, #0x64
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	strh r1, [r0]
	ldr r1, [sp, #8]
	str r1, [r0, #4]
	mov r0, #0
	str r0, [sp, #0x14]
_021BA5BE:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	add r5, r0, #0
	mov r1, #0x58
	mul r5, r1
	ldr r0, [sp, #8]
	lsl r3, r2, #2
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #8]
	add r0, r0, r5
	add r4, r2, r3
	ldr r2, [r0, #8]
	add r1, r1, #6
	str r2, [sp]
	ldr r2, [sp, #0xc]
	str r2, [sp, #4]
	ldrh r3, [r1, r5]
	ldrh r0, [r0, #4]
	lsl r1, r3, #0x1e
	lsl r2, r3, #0x18
	lsl r3, r3, #0x1d
	lsr r1, r1, #0x1e
	lsr r2, r2, #0x1b
	lsr r3, r3, #0x1f
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_021EED30
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	mov r3, #0
	add r5, r0, r5
	mov r7, #0x1e
_021BA608:
	lsl r0, r3, #3
	add r2, r5, r0
	add r0, r2, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _021BA630
	mov r1, #6
	mul r1, r0
	ldr r6, [r4, #8]
	ldrh r0, [r2, #0x1c]
	add r6, r6, r1
	strh r0, [r6, #0x14]
	ldrsh r0, [r2, r7]
	ldr r2, [r4, #8]
	add r2, r2, r1
	strh r0, [r2, #0x16]
	ldr r0, [r4, #8]
	add r0, r0, r1
	strb r3, [r0, #0x18]
_021BA630:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #8
	blo _021BA608
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #4
	blo _021BA5BE
	ldr r0, [sp, #0x10]
	bl ovy209_21ba74c
	ldr r0, [sp, #0x10]
	bl ovy209_21ba9a8
	ldr r0, [sp, #0x10]
	bl ovy209_21bab9c
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldrh r0, [r0]
	bl ovy209_21bd778
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x28]
	ldr r1, [r1, #4]
	ldr r1, [r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy209_21bd804
	ldr r0, [sp, #0x10]
	mov r1, #0x80
	ldr r0, [r0, #0x2c]
	bl ovy209_21bde30
	ldr r0, [sp, #0x10]
	mov r1, #0x80
	ldr r0, [r0, #0x28]
	bl sub_021BD8EC
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BA694: .word 0x021C3020
	thumb_func_end ovy209_21ba598

	thumb_func_start ovy209_21ba698
ovy209_21ba698: ; 0x021BA698
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl ovy209_21bd4d0
	ldr r0, [r5, #0x28]
	bl ovy209_21bd7a0
	ldr r0, [r5, #0x2c]
	bl ovy209_21bd974
	ldr r0, [r5, #0x20]
	bl ovy209_21bba08
	ldr r0, [r5, #0x24]
	bl ovy209_21bb3f0
	ldr r0, [r5, #0x58]
	bl sub_02048210
	ldr r0, [r5, #0x54]
	bl sub_02048210
	ldr r0, [r5, #0x60]
	bl sub_02022DA8
	ldr r0, [r5, #0x5c]
	bl sub_02022DA8
	add r0, r5, #0
	bl ovy209_21ba978
	mov r4, #0
_021BA6DA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl sub_0203A24C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BA6DA
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21ba698

	thumb_func_start ovy209_21ba6f8
ovy209_21ba6f8: ; 0x021BA6F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl ovy209_21bd9b4
	ldr r0, [r4, #0x20]
	bl sub_021BBA40
	ldr r0, [r4, #0x40]
	bl ovy209_21bd504
	bl sub_02049A98
	bl sub_02049AF0
	ldr r0, [r4, #0x40]
	bl sub_021BD6C8
	ldr r0, [r4, #0x2c]
	bl ovy209_21bddf4
	ldr r0, [r4, #0x20]
	bl sub_021BBA4C
	ldr r0, [r4, #0x2c]
	bl ovy209_21bd9e0
	ldr r0, [r4, #0x28]
	bl ovy209_21bd7e0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	mov r2, #0
	bl sub_0204EBB0
	add r0, r4, #0
	bl sub_021BAD28
	bl sub_02049AA0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21ba6f8

	thumb_func_start ovy209_21ba74c
ovy209_21ba74c: ; 0x021BA74C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	mov r6, #0
	add r5, r0, #0
	str r6, [sp]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0
	mov r3, #4
	str r6, [sp, #8]
	bl sub_02048D28
	mov r0, #3
	mov r7, #3
	bl sub_02044BB8
	mov r0, #0
	mov r4, #1
	mov r1, #1
	bl sub_02049214
	lsl r0, r4, #0x10
	str r0, [sp]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	ldr r0, _021BA91C ; =0x021C2C3C
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021BA920 ; =0x021C2C48
	lsl r1, r7, #0xe
	str r0, [sp, #0x14]
	ldr r0, _021BA924 ; =0x021C2C30
	mov r2, #0
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	mov r3, #0
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0204A5C8
	str r0, [r5, #0x18]
	bl sub_0204A638
	ldr r0, _021BA928 ; =0x021C2C54
	bl G3X_SetEdgeColorTable
	ldr r4, _021BA92C ; =0x04000060
	ldr r0, _021BA930 ; =0x0000CFDF
	ldrh r1, [r4]
	and r0, r1
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r1, _021BA934 ; =0xFFFFCFFF
	add r2, r0, #0
	and r2, r1
	mov r0, #0x10
	orr r0, r2
	strh r0, [r4]
	ldrh r0, [r4]
	and r1, r0
	mov r0, #8
	orr r0, r1
	strh r0, [r4]
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	ldr r3, _021BA938 ; =0x021C2D04
	add r2, sp, #0x30
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021BA93C ; =0x021C2CE8
	str r0, [r2]
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r1, [r5]
	add r0, r7, #0
	bl sub_0204E390
	ldr r1, [sp, #0x20]
	str r0, [r5, #0x1c]
	bl sub_0204E488
	ldr r0, _021BA940 ; =0x021C2CA4
	mov r1, #1
	mov r2, #0
	bl ovy209_21ba954
	ldr r0, _021BA944 ; =0x021C2C64
	mov r1, #2
	mov r2, #0
	bl ovy209_21ba954
	ldr r0, _021BA948 ; =0x021C2C84
	mov r1, #3
	mov r2, #0
	bl ovy209_21ba954
	mov r0, #2
	mov r1, #3
	mov r2, #0xe0
	bl sub_02044CFC
	ldrh r1, [r5]
	mov r0, #0x2e
	bl sub_0204AA30
	str r6, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #3
	add r7, r0, #0
	bl sub_0204B124
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #9
	mov r2, #2
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #2
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0x20
	bl sub_0204B124
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #3
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xe
	mov r2, #3
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204AF50
	mov r0, #2
	bl sub_02044F90
	mov r0, #3
	bl sub_02044F90
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x10
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #0x20
	lsl r2, r0, #0x15
	ldr r1, [r2]
	ldr r0, _021BA94C ; =0xFFFF1FFF
	sub r4, #0x16
	and r1, r0
	mov r0, #0x20
	lsl r0, r0, #0xa
	orr r0, r1
	str r0, [r2]
	ldrh r1, [r4]
	ldr r0, _021BA950 ; =0xFFFFC0FF
	and r1, r0
	mov r0, #0x2e
	lsl r0, r0, #7
	orr r1, r0
	mov r0, #0x20
	lsl r0, r0, #8
	orr r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x1f
	orr r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r4]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BA91C: .word 0x021C2C3C
_021BA920: .word 0x021C2C48
_021BA924: .word 0x021C2C30
_021BA928: .word 0x021C2C54
_021BA92C: .word 0x04000060
_021BA930: .word 0x0000CFDF
_021BA934: .word 0xFFFFCFFF
_021BA938: .word 0x021C2D04
_021BA93C: .word 0x021C2CE8
_021BA940: .word 0x021C2CA4
_021BA944: .word 0x021C2C64
_021BA948: .word 0x021C2C84
_021BA94C: .word 0xFFFF1FFF
_021BA950: .word 0xFFFFC0FF
	thumb_func_end ovy209_21ba74c

	thumb_func_start ovy209_21ba954
ovy209_21ba954: ; 0x021BA954
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl sub_02044F90
	pop {r4, pc}
	thumb_func_end ovy209_21ba954

	thumb_func_start ovy209_21ba978
ovy209_21ba978: ; 0x021BA978
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	bl sub_02044B84
	mov r0, #1
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	ldr r0, [r4, #0x1c]
	bl sub_0204E450
	ldr r0, [r4, #0x18]
	bl sub_0204A630
	bl sub_02048F44
	mov r0, #0
	bl sub_02044B84
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21ba978

	thumb_func_start ovy209_21ba9a8
ovy209_21ba9a8: ; 0x021BA9A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	ldr r3, _021BAB6C ; =0x021C2CD0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021BAB70 ; =0x021C2CC4
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x3c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r4, #5
	str r0, [r2]
	ldrh r0, [r5]
	lsl r4, r4, #0x10
	bl ovy209_21bb9bc
	mov r1, #2
	lsl r1, r1, #0x10
	str r0, [r5, #0x20]
	bl sub_021BBC90
	ldrh r2, [r5]
	ldr r0, [r5, #0x1c]
	mov r1, #0x24
	bl ovy209_21bb368
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	str r0, [sp]
	ldrh r0, [r5]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0x24]
	mov r7, #0
	bl ovy209_21bd8f0
	str r0, [r5, #0x2c]
	add r6, r7, #0
_021BA9FC:
	lsl r0, r7, #2
	add r0, r5, r0
	str r6, [r0, #0x30]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _021BA9FC
	mov r7, #1
_021BAA0E:
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1, #8]
	bl ovy209_21bde60
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x30]
	ldr r0, [r5, #0x2c]
	bl ovy209_21be904
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	ldr r1, [r1, #0x30]
	add r2, r7, #0
	bl sub_021BE9A8
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021BAA0E
	ldr r0, [r5, #4]
	mov r6, #0x1e
	ldr r0, [r0]
	mov r1, #0
	lsl r0, r0, #0x17
	lsr r0, r0, #0x1c
	add r2, sp, #0x2c
	lsl r6, r6, #0xc
_021BAA50:
	add r3, r0, #0
	tst r3, r7
	bne _021BAA5C
	lsl r3, r1, #2
	str r4, [r2, r3]
	add r4, r4, r6
_021BAA5C:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsl r3, r7, #0x19
	lsr r1, r1, #0x18
	lsr r7, r3, #0x18
	cmp r1, #4
	blo _021BAA50
	mov r7, #0x1e
	mov r1, #1
	mov r2, #0
	add r3, sp, #0x2c
	lsl r7, r7, #0xc
_021BAA74:
	add r6, r0, #0
	tst r6, r1
	beq _021BAA80
	lsl r6, r2, #2
	str r4, [r3, r6]
	add r4, r4, r7
_021BAA80:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsl r1, r1, #0x19
	lsr r2, r2, #0x18
	lsr r1, r1, #0x18
	cmp r2, #4
	blo _021BAA74
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0
	mov r4, #0
	bl ovy209_21bd42c
	ldr r3, _021BAB74 ; =0x021C2CDC
	str r0, [r5, #0x40]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021BAAAA:
	lsl r6, r4, #2
	add r0, r5, r6
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	add r0, r5, #0
	ldr r2, [r2, #8]
	add r1, r4, #0
	ldrh r2, [r2, #8]
	bl ovy209_21bab78
	str r0, [sp, #0x3c]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	lsl r0, r0, #0x17
	lsr r1, r0, #0x1c
	ldr r0, [sp, #4]
	tst r0, r1
	beq _021BAB12
	add r3, sp, #0x14
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r7, r5, r6
	str r0, [r2]
	ldr r2, [r7, #8]
	add r0, r5, #0
	ldrh r2, [r2, #8]
	add r1, r4, #0
	bl ovy209_21bab78
	str r0, [sp, #0x48]
	mov r0, #0x9b
	lsl r0, r0, #0xc
	str r0, [sp, #0x4c]
	add r0, sp, #0x2c
	ldr r0, [r0, r6]
	add r2, sp, #0x48
	str r0, [sp, #0x50]
	ldr r0, [r5, #0x2c]
	ldr r1, [r7, #0x30]
	bl sub_021BE8A8
	ldr r0, [r5, #0x2c]
	ldr r1, [r7, #0x30]
	ldr r2, [sp, #0x10]
	bl sub_021BE8D8
	mov r0, #0x16
	lsl r0, r0, #0xe
	b _021BAB3C
_021BAB12:
	add r7, r5, r6
	ldr r2, [r7, #8]
	add r0, r5, #0
	ldrh r2, [r2, #8]
	add r1, r4, #0
	bl ovy209_21bab78
	str r0, [sp, #0x48]
	mov r0, #0x9b
	lsl r0, r0, #0xc
	str r0, [sp, #0x4c]
	add r0, sp, #0x2c
	ldr r0, [r0, r6]
	add r2, sp, #0x48
	str r0, [sp, #0x50]
	ldr r0, [r5, #0x2c]
	ldr r1, [r7, #0x30]
	bl sub_021BE8A8
	mov r0, #2
	lsl r0, r0, #0x12
_021BAB3C:
	str r0, [sp, #0x40]
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl ovy209_21bd6cc
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, sp, #0x3c
	str r1, [r0, #0x44]
	ldr r0, [r5, #0x40]
	bl sub_021BD748
	ldr r0, [sp, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BAAAA
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021BAB6C: .word 0x021C2CD0
_021BAB70: .word 0x021C2CC4
_021BAB74: .word 0x021C2CDC
	thumb_func_end ovy209_21ba9a8

	thumb_func_start ovy209_21bab78
ovy209_21bab78: ; 0x021BAB78
	push {r4, r5}
	sub sp, #0x10
	ldr r4, _021BAB98 ; =0x021C2CF4
	add r3, sp, #0
	add r5, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r0, [r2, r0]
	add sp, #0x10
	pop {r4, r5}
	bx lr
	nop
_021BAB98: .word 0x021C2CF4
	thumb_func_end ovy209_21bab78

	thumb_func_start ovy209_21bab9c
ovy209_21bab9c: ; 0x021BAB9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r7, #2
	str r7, [sp]
	mov r4, #0xa
	add r5, r0, #0
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0x18
	mov r2, #0x16
	mov r3, #8
	bl sub_020480C0
	str r0, [r5, #0x54]
	str r7, [sp]
	str r4, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x54]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x58]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r5, #0x5c]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	str r0, [r5, #0x60]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r1, #6
	bl sub_0204B0B8
	ldrh r1, [r5]
	mov r0, #0x80
	mov r6, #0x80
	bl sub_02048530
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	bl sub_020241D4
	add r4, r0, #0
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x63
	bl sub_0204875C
	mov r1, #0
	str r0, [sp, #0x10]
	bl sub_0204898C
	str r0, [sp, #0x14]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	add r0, r4, #0
	ldr r2, [r2]
	mov r1, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x19
	mov r3, #2
	bl sub_0202451C
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	add r0, r4, #0
	ldr r2, [r2]
	mov r1, #1
	lsl r2, r2, #0xb
	lsr r2, r2, #0x1b
	mov r3, #2
	bl sub_0202451C
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	add r0, r4, #0
	ldr r2, [r2]
	mov r1, #2
	lsl r2, r2, #5
	lsr r2, r2, #0x1a
	mov r3, #2
	bl sub_0202451C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_02024920
	ldr r0, [r5, #0x54]
	bl sub_020484F4
	ldr r1, [r5, #0x5c]
	ldr r3, [sp, #0xc]
	str r1, [sp]
	mov r1, #0xd6
	lsl r1, r1, #4
	str r1, [sp, #4]
	mov r1, #0
	mov r2, #0
	bl sub_02021D28
	ldr r0, [sp, #0xc]
	bl sub_02048564
	ldr r0, [sp, #0x14]
	bl sub_02048564
	add r0, r4, #0
	bl sub_02024274
	ldr r0, [sp, #0x10]
	bl sub_020487D4
	ldrh r1, [r5]
	mov r0, #0x25
	bl sub_02048530
	ldr r1, [r5, #4]
	add r6, #0xe4
	add r1, r1, r6
	add r4, r0, #0
	bl sub_02048614
	ldr r0, [r5, #0x58]
	bl sub_020484F4
	ldr r1, [r5, #0x60]
	mov r2, #0
	str r1, [sp]
	mov r1, #0xf1
	lsl r1, r1, #6
	str r1, [sp, #4]
	mov r1, #0
	add r3, r4, #0
	bl sub_02021D28
	add r0, r4, #0
	bl sub_02048564
	ldr r0, [r5, #0x54]
	bl sub_02048244
	ldr r0, [r5, #0x54]
	bl sub_0204826C
	ldr r0, [r5, #0x58]
	bl sub_02048244
	ldr r0, [r5, #0x58]
	bl sub_0204826C
	mov r0, #1
	bl sub_02044F90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bab9c

	thumb_func_start sub_021BAD28
sub_021BAD28: ; 0x021BAD28
	bx lr
	.align 2, 0
	thumb_func_end sub_021BAD28

	thumb_func_start ovy209_21bad2c
ovy209_21bad2c: ; 0x021BAD2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x8d
	str r0, [sp]
	add r0, sp, #0x20
	str r3, [sp, #4]
	add r7, r1, #0
	add r5, r2, #0
	ldrh r0, [r0]
	ldr r3, _021BADA4 ; =0x021C3034
	mov r1, #0x5c
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0]
	strh r0, [r4]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, [sp, #4]
	str r7, [r4, #0x14]
	str r0, [r4, #0x44]
	mov r0, #0
	str r0, [r4, #0x2c]
	strb r0, [r4, #8]
	cmp r5, #1
	bne _021BAD68
	b _021BAD6A
_021BAD68:
	mov r0, #1
_021BAD6A:
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy209_21bafa0
	add r0, r4, #0
	bl ovy209_21bb150
	ldrh r0, [r4]
	mov r1, #0xc
	str r0, [sp]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x38]
	mov r0, #4
	bl sub_0202E168
	str r0, [r4, #0x40]
	add r1, sp, #0x20
	ldrh r1, [r1]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BADA4: .word 0x021C3034
	thumb_func_end ovy209_21bad2c

	thumb_func_start ovy209_21bada8
ovy209_21bada8: ; 0x021BADA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0202E1DC
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021BADD0
	ldr r0, [r4, #0x4c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x50]
	bl sub_0204B98C
	ldr r0, [r4, #0x54]
	bl sub_0204BE64
	ldr r0, [r4, #0x58]
	bl sub_0204C108
_021BADD0:
	ldr r0, [r4, #0x48]
	bl sub_0204BF98
	add r0, r4, #0
	bl ovy209_21bb1f0
	mov r0, #4
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bada8

	thumb_func_start ovy209_21badf8
ovy209_21badf8: ; 0x021BADF8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #7
	bls _021BAE04
	b _021BAF0C
_021BAE04:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BAE10: ; jump table
	.short _021BAE20 - _021BAE10 - 2 ; case 0
	.short _021BAE2A - _021BAE10 - 2 ; case 1
	.short _021BAE48 - _021BAE10 - 2 ; case 2
	.short _021BAE56 - _021BAE10 - 2 ; case 3
	.short _021BAEB6 - _021BAE10 - 2 ; case 4
	.short _021BAECE - _021BAE10 - 2 ; case 5
	.short _021BAEFE - _021BAE10 - 2 ; case 6
	.short _021BAF0C - _021BAE10 - 2 ; case 7
_021BAE20:
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, _021BAF84 ; =0x0000062F
	bl sub_02006254
_021BAE2A:
	bl sub_02027ACC
	cmp r0, #1
	bne _021BAF0C
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021BAE44
	add r0, r4, #0
	mov r1, #3
	bl ovy209_21bb23c
	mov r0, #2
_021BAE42:
	b _021BAF0A
_021BAE44:
	mov r0, #5
	b _021BAE42
_021BAE48:
	ldr r1, [r4, #0x24]
	cmp r1, #0
	bne _021BAF0C
	bl ovy209_21bb304
	mov r0, #3
	b _021BAE42
_021BAE56:
	ldr r0, [r4, #0x3c]
	bl sub_0202DB70
	ldr r0, [r4, #0x3c]
	bl sub_0202DBE4
	cmp r0, #1
	bne _021BAEA6
	ldr r0, [r4, #0x3c]
	bl sub_0202DC00
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0202DA54
	cmp r5, #0
	bne _021BAE8A
	ldr r0, [r4, #0x14]
	bl sub_0200AD5C
	add r1, r0, #0
	mov r2, #0x1b
	ldr r0, [r4, #0x10]
	lsl r2, r2, #4
	blx MI_CpuCopy8
_021BAE8A:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021BAEA4
	mov r1, #4
	str r1, [r4, #4]
	mov r1, #0x47
	bl sub_021EF988
	add r0, r4, #0
	mov r1, #6
	bl ovy209_21bb2ac
	b _021BAF0C
_021BAEA4:
	b _021BAF08
_021BAEA6:
	bl sub_020120C8
	cmp r0, #0
	beq _021BAF0C
	ldr r0, [r4, #0x3c]
	bl sub_0202DA54
	b _021BAF08
_021BAEB6:
	ldr r0, [r4, #0x44]
	mov r1, #0x47
	bl sub_021EF99C
	cmp r0, #1
	bne _021BAEC4
	b _021BAF08
_021BAEC4:
	bl sub_020120C8
	cmp r0, #0
	beq _021BAF0C
	b _021BAF08
_021BAECE:
	bl sub_0203DEFC
	mov r1, #2
	tst r0, r1
	bne _021BAEE2
	ldr r0, _021BAF88 ; =0x021C2D20
	bl sub_0203DA0C
	cmp r0, #0
	bne _021BAF0C
_021BAEE2:
	ldr r0, _021BAF8C ; =0x00000551
	bl sub_02006254
	mov r0, #6
	str r0, [r4, #4]
	ldr r0, [r4, #0x58]
	mov r1, #9
	bl sub_0204C488
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl sub_0204C520
	b _021BAF0C
_021BAEFE:
	ldr r0, [r4, #0x58]
	bl sub_0204C560
	cmp r0, #0
	bne _021BAF0C
_021BAF08:
	mov r0, #7
_021BAF0A:
	str r0, [r4, #4]
_021BAF0C:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021BAF24
	bl sub_020223B4
	cmp r0, #2
	bne _021BAF24
	ldr r0, [r4, #0x24]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x24]
_021BAF24:
	ldr r0, [r4, #0x38]
	bl sub_02021A3C
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _021BAF56
	ldr r0, [r4, #0x38]
	bl sub_02021C0C
	cmp r0, #1
	bne _021BAF56
	mov r0, #0
	str r0, [r4, #0x30]
	ldrh r0, [r4]
	mov r2, #0xf
	mov r3, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	bl sub_02035660
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x1c]
	bl sub_02048244
_021BAF56:
	ldr r0, [r4, #0x18]
	bl sub_0203A7F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bls _021BAF80
	mov r0, #0
	strb r0, [r4, #8]
	mov r0, #7
	mov r1, #1
	mov r2, #1
	bl sub_02045E1C
	mov r0, #7
	mov r1, #5
	mov r2, #1
	bl sub_02045E1C
_021BAF80:
	pop {r3, r4, r5, pc}
	nop
_021BAF84: .word 0x0000062F
_021BAF88: .word 0x021C2D20
_021BAF8C: .word 0x00000551
	thumb_func_end ovy209_21badf8

	thumb_func_start sub_021BAF90
sub_021BAF90: ; 0x021BAF90
	ldr r0, [r0, #4]
	cmp r0, #7
	bne _021BAF9A
	mov r0, #1
	bx lr
_021BAF9A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021BAF90

	thumb_func_start ovy209_21bafa0
ovy209_21bafa0: ; 0x021BAFA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021BB120 ; =0x021C2D28
	mov r1, #4
	mov r2, #0
	mov r6, #0
	bl ovy209_21bb12c
	ldr r0, _021BB124 ; =0x021C2D48
	mov r1, #6
	mov r2, #0
	bl ovy209_21bb12c
	ldr r0, _021BB128 ; =0x021C2D68
	mov r1, #7
	mov r2, #0
	bl ovy209_21bb12c
	ldrh r2, [r5]
	mov r0, #8
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r5, #0x48]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	ldrh r1, [r5]
	mov r0, #0x2d
	mov r7, #0x2d
	bl sub_0204AA30
	str r6, [sp]
	ldrh r1, [r5]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #4
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #7
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xc
	mov r2, #7
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021BB11C
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	add r7, #0xf3
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_0204B0D4
	bl sub_0202D824
	str r6, [sp]
	str r6, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #6
	add r3, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204ADA8
	bl sub_0202D828
	str r6, [sp]
	str r6, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #6
	add r3, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204AF50
	mov r7, #3
	str r7, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #6
	add r1, r6, #0
	mov r2, #0x15
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #6
	bl sub_02044F90
	bl sub_0202D810
	str r6, [sp]
	str r7, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	add r3, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204BBB8
	str r0, [r5, #0x4c]
	bl sub_0202D814
	add r1, r0, #0
	ldrh r0, [r5]
	add r2, r6, #0
	mov r3, #1
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x50]
	add r0, r6, #0
	bl sub_0202D818
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0202D81C
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0x54]
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #0xe8
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0xa8
	strh r0, [r1, #2]
	mov r0, #1
	strh r0, [r1, #4]
	strb r6, [r1, #7]
	strb r6, [r1, #6]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0x48]
	ldr r1, [r5, #0x50]
	ldr r2, [r5, #0x4c]
	ldr r3, [r5, #0x54]
	bl sub_0204C040
	str r0, [r5, #0x58]
_021BB11C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BB120: .word 0x021C2D28
_021BB124: .word 0x021C2D48
_021BB128: .word 0x021C2D68
	thumb_func_end ovy209_21bafa0

	thumb_func_start ovy209_21bb12c
ovy209_21bb12c: ; 0x021BB12C
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl sub_02044F90
	pop {r4, pc}
	thumb_func_end ovy209_21bb12c

	thumb_func_start ovy209_21bb150
ovy209_21bb150: ; 0x021BB150
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #4
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r5, #0x1c]
	bl sub_02048244
	ldr r0, [r5, #0x1c]
	bl sub_0204826C
	mov r0, #4
	bl sub_02044F90
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r4, #0
	bl sub_02022D58
	str r0, [r5, #0x20]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x63
	bl sub_0204875C
	str r0, [r5, #0x28]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #0xb
	str r0, [sp]
	mov r0, #4
	mov r3, #0
	bl sub_02024D00
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r1, #6
	bl sub_0204B0B8
	bl sub_020232D8
	ldrh r0, [r5]
	mov r3, #3
	mov r2, #3
	add r1, r0, #0
	add r3, #0xfd
	bl sub_0203A78C
	str r0, [r5, #0x18]
	ldrh r0, [r5]
	str r4, [r5, #0x24]
	str r4, [r5, #0x2c]
	str r4, [r5, #0x30]
	str r4, [r5, #0x34]
	bl sub_02021998
	str r0, [r5, #0x38]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb150

	thumb_func_start ovy209_21bb1f0
ovy209_21bb1f0: ; 0x021BB1F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_02021C44
	ldr r0, [r4, #0x38]
	bl sub_02021A18
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021BB20E
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x34]
_021BB20E:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021BB218
	bl sub_020223CC
_021BB218:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021BB222
	bl sub_02048564
_021BB222:
	ldr r0, [r4, #0x28]
	bl sub_020487D4
	ldr r0, [r4, #0x1c]
	bl sub_02048210
	ldr r0, [r4, #0x20]
	bl sub_02022DA8
	ldr r0, [r4, #0x18]
	bl sub_0203A83C
	pop {r4, pc}
	thumb_func_end ovy209_21bb1f0

	thumb_func_start ovy209_21bb23c
ovy209_21bb23c: ; 0x021BB23C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	cmp r0, #0
	beq _021BB252
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, #0x24]
_021BB252:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021BB260
	bl sub_02048564
	mov r0, #0
	str r0, [r5, #0x2c]
_021BB260:
	ldr r0, [r5, #0x1c]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl sub_0204898C
	str r0, [r5, #0x2c]
	bl sub_02017BCC
	ldr r1, [r5, #0x20]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x2c]
	bl sub_02022268
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	mov r2, #1
	mov r3, #0xb
	bl sub_02024E80
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bb23c

	thumb_func_start ovy209_21bb2ac
ovy209_21bb2ac: ; 0x021BB2AC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r1, #0
	cmp r0, #0
	beq _021BB2C2
	bl sub_02048564
	mov r0, #0
	str r0, [r5, #0x2c]
_021BB2C2:
	ldr r0, [r5, #0x1c]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl sub_0204898C
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x1c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0x2c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0x20]
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x38]
	bl sub_02021C54
	mov r1, #1
	ldr r0, [r5, #0x1c]
	mov r2, #1
	mov r3, #0xb
	str r1, [r5, #0x30]
	bl sub_02024E80
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bb2ac

	thumb_func_start ovy209_21bb304
ovy209_21bb304: ; 0x021BB304
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldr r1, _021BB364 ; =0x000039E0
	add r0, sp, #0
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x24]
	mov r2, #0
	str r2, [sp, #0x1c]
	str r2, [sp, #0x28]
	ldrh r1, [r4]
	str r1, [sp]
	mov r1, #2
	strb r1, [r0, #4]
	add r1, sp, #0x14
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0x18
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	mov r1, #8
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	ldr r1, [r4, #0x40]
	add r0, sp, #0
	bl sub_0202D974
	str r0, [r4, #0x3c]
	ldr r0, [sp, #0x14]
	bl sub_02048564
	ldr r0, [sp, #0x20]
	bl sub_02048564
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
_021BB364: .word 0x000039E0
	thumb_func_end ovy209_21bb304

	thumb_func_start ovy209_21bb368
ovy209_21bb368: ; 0x021BB368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r2, [sp, #4]
	mov r0, #0x55
	str r0, [sp]
	add r6, r1, #0
	ldr r0, [sp, #4]
	ldr r3, _021BB3E8 ; =0x021C3044
	mov r1, #0x34
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	mov r0, #0x57
	str r0, [sp]
	mov r1, #0x24
	ldr r0, [sp, #4]
	ldr r3, _021BB3E8 ; =0x021C3044
	mul r1, r6
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	strh r0, [r5]
	strh r6, [r5, #0x10]
	str r7, [r5, #4]
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	ble _021BB3CA
	mov r7, #0x24
	mov r1, #1
	mov r2, #2
_021BB3AE:
	add r0, r4, #0
	ldr r6, [r5, #8]
	mul r0, r7
	ldrh r3, [r6, r0]
	add r4, r4, #1
	bic r3, r1
	strh r3, [r6, r0]
	ldr r6, [r5, #8]
	ldrh r3, [r6, r0]
	bic r3, r2
	strh r3, [r6, r0]
	ldrh r0, [r5, #0x10]
	cmp r4, r0
	blt _021BB3AE
_021BB3CA:
	ldr r0, [sp, #4]
	bl sub_021EEF38
	ldr r1, _021BB3EC ; =0x00005A56
	str r0, [r5, #0xc]
	mov r2, #0
_021BB3D6:
	lsl r0, r2, #1
	add r0, r5, r0
	add r2, r2, #1
	strh r1, [r0, #0x12]
	cmp r2, #0x10
	blt _021BB3D6
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB3E8: .word 0x021C3044
_021BB3EC: .word 0x00005A56
	thumb_func_end ovy209_21bb368

	thumb_func_start ovy209_21bb3f0
ovy209_21bb3f0: ; 0x021BB3F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0205F9C0
	ldr r0, [r5, #0xc]
	bl sub_021EEF64
	ldrh r0, [r5, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _021BB428
	mov r6, #0x24
_021BB408:
	add r1, r4, #0
	ldr r2, [r5, #8]
	mul r1, r6
	ldrh r0, [r2, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021BB420
	add r0, r5, #0
	add r1, r2, r1
	bl ovy209_21bb7e8
_021BB420:
	ldrh r0, [r5, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _021BB408
_021BB428:
	ldr r0, [r5, #8]
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb3f0

	thumb_func_start ovy209_21bb438
ovy209_21bb438: ; 0x021BB438
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _021BB544
	mov r0, #2
	str r0, [sp, #4]
_021BB44A:
	mov r0, #0x24
	mul r0, r6
	ldr r1, [r5, #8]
	str r0, [sp]
	add r4, r1, r0
	ldrh r1, [r1, r0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021BB53C
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021BB53C
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021BB4B6
	ldr r0, [r4, #0x20]
	add r1, sp, #0x10
	bl sub_021EEF84
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _021BB488
	mov r0, #0
	ldr r1, [sp, #0x10]
	mvn r0, r0
	mul r0, r1
	str r0, [sp, #0x10]
_021BB488:
	ldrh r0, [r4, #2]
	ldr r3, [sp, #0x10]
	ldr r1, _021BB548 ; =FX_SinCosTable_ ; 0x020946BC
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _021BB548 ; =FX_SinCosTable_ ; 0x020946BC
	mov ip, r3
	add r0, r0, r2
	ldrsh r2, [r1, r2]
	mov r1, #2
	ldrsh r7, [r0, r1]
	add r0, r3, #0
	ldr r1, [sp, #0x14]
	mul r0, r7
	add r3, r1, #0
	mul r3, r2
	sub r0, r0, r3
	mov r3, ip
	mul r2, r3
	add r3, r1, #0
	mul r3, r7
	add r1, r2, r3
	b _021BB4BA
_021BB4B6:
	mov r0, #0
	mov r1, #0
_021BB4BA:
	ldr r2, [r4, #0x10]
	sub r2, r2, r0
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x14]
	add r2, sp, #0x18
	sub r1, r0, r1
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl sub_0204EA28
	add r1, sp, #8
	add r0, r4, #0
	add r1, #1
	add r2, sp, #8
	bl ovy209_21bb570
	mov r0, #0x1c
	ldrsh r1, [r4, r0]
	add r0, sp, #8
	add r3, sp, #8
	ldrb r0, [r0, #1]
	add r2, r1, #0
	add r3, #2
	mul r2, r0
	add r0, sp, #8
	strh r2, [r0, #4]
	mov r0, #0x1e
	ldrsh r1, [r4, r0]
	add r0, sp, #8
	ldrb r0, [r0]
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #8
	strh r2, [r0, #2]
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	add r2, sp, #0xc
	bl sub_0204EA5C
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	add r2, r4, #2
	bl sub_0204EBA0
	ldr r2, [r5, #8]
	ldr r0, [sp]
	ldrh r1, [r2, r0]
	ldr r0, [sp, #4]
	bic r1, r0
	ldr r0, [sp]
	strh r1, [r2, r0]
_021BB53C:
	ldrh r0, [r5, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blt _021BB44A
_021BB544:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BB548: .word FX_SinCosTable_
	thumb_func_end ovy209_21bb438
_021BB54C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy209_21bb550
ovy209_21bb550: ; 0x021BB550
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2c
	bl sub_0204A9B8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #2
	cmp r4, r0
	blt _021BB568
	mov r0, #0x64
	pop {r4, pc}
_021BB568:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb550

	thumb_func_start ovy209_21bb570
ovy209_21bb570: ; 0x021BB570
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x20]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_021EEF94
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0204E4D0
	add r0, sp, #0
	ldrh r1, [r0, #2]
	lsr r1, r1, #5
	strb r1, [r5]
	ldrh r0, [r0]
	lsr r0, r0, #5
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb570
_021BB598:
	.byte 0x00, 0x6A, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x99, 0xEF, 0x1E, 0x02

	thumb_func_start ovy209_21bb5a4
ovy209_21bb5a4: ; 0x021BB5A4
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r2, #0
	bl sub_021EEF78
	add r1, r4, #0
	bl sub_021EF018
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb5a4

	thumb_func_start ovy209_21bb5b8
ovy209_21bb5b8: ; 0x021BB5B8
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r2, #0
	bl sub_021EEF78
	add r1, r4, #0
	bl sub_021EF088
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb5b8

	thumb_func_start sub_021BB5CC
sub_021BB5CC: ; 0x021BB5CC
	ldr r0, [r0, #0x20]
	ldr r3, _021BB5D4 ; =sub_021EF0F4
	bx r3
	nop
_021BB5D4: .word sub_021EF0F4
	thumb_func_end sub_021BB5CC

	thumb_func_start sub_021BB5D8
sub_021BB5D8: ; 0x021BB5D8
	ldr r0, [r0, #0x20]
	ldr r3, _021BB5E0 ; =sub_021EF104
	bx r3
	nop
_021BB5E0: .word sub_021EF104
	thumb_func_end sub_021BB5D8

	thumb_func_start ovy209_21bb5e4
ovy209_21bb5e4: ; 0x021BB5E4
	push {r3, lr}
	bl ovy209_21bb550
	add r1, r0, #0
	mov r0, #0x2c
	bl sub_02049344
	pop {r3, pc}
	thumb_func_end ovy209_21bb5e4

	thumb_func_start sub_021BB5F4
sub_021BB5F4: ; 0x021BB5F4
	ldr r3, _021BB5F8 ; =sub_02049404
	bx r3
	.align 2, 0
_021BB5F8: .word sub_02049404
	thumb_func_end sub_021BB5F4

	thumb_func_start ovy209_21bb5fc
ovy209_21bb5fc: ; 0x021BB5FC
	push {r3, r4}
	ldrh r1, [r0, #0x10]
	mov r3, #0
	cmp r1, #0
	ble _021BB61C
	ldr r4, [r0, #8]
	mov r0, #0x24
_021BB60A:
	add r2, r3, #0
	mul r2, r0
	ldrh r2, [r4, r2]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1f
	beq _021BB61C
	add r3, r3, #1
	cmp r3, r1
	blt _021BB60A
_021BB61C:
	cmp r3, r1
	bne _021BB626
	mov r0, #0
	pop {r3, r4}
	bx lr
_021BB626:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy209_21bb5fc

	thumb_func_start ovy209_21bb630
ovy209_21bb630: ; 0x021BB630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl ovy209_21bb5fc
	add r7, r0, #0
	mov r0, #0x24
	add r4, r7, #0
	mul r4, r0
	add r0, r6, #0
	bl ovy209_21bb550
	ldr r1, [r5, #8]
	add r1, r1, r4
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_021EEF78
	ldr r1, [r5, #8]
	add r1, r1, r4
	str r0, [r1, #0x20]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	bl sub_021EEF94
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, sp, #0x14
	add r0, r0, r4
	add r1, #1
	add r2, sp, #0x14
	bl ovy209_21bb570
	add r6, sp, #0x14
	ldrb r0, [r6, #1]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r6]
	mov r2, #0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_0204E5CC
	ldr r1, [r5, #8]
	add r1, r1, r4
	str r0, [r1, #4]
	ldr r0, [r5, #8]
	mov r1, #0x10
	ldrh r2, [r0, r4]
	orr r1, r2
	strh r1, [r0, r4]
	ldrb r0, [r6]
	lsl r1, r7, #0x10
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldrb r3, [r6, #1]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy209_21bb73c
	ldr r0, [r5, #8]
	add r0, r0, r4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bb630

	thumb_func_start ovy209_21bb6c4
ovy209_21bb6c4: ; 0x021BB6C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl ovy209_21bb5fc
	str r0, [sp, #8]
	add r4, r0, #0
	mov r1, #0x24
	add r0, r6, #0
	mul r4, r1
	bl ovy209_21bb550
	ldr r1, [r5, #8]
	add r1, r1, r4
	str r0, [r1, #0xc]
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_021EEF78
	ldr r1, [r5, #8]
	add r1, r1, r4
	str r0, [r1, #0x20]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldr r0, [r0, #0x20]
	bl sub_021EEF94
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	add r0, r0, r4
	add r1, #1
	add r2, sp, #0xc
	bl ovy209_21bb570
	ldr r0, [r5, #8]
	add r3, sp, #0xc
	add r0, r0, r4
	str r7, [r0, #4]
	ldr r2, [r5, #8]
	mov r0, #0x10
	ldrh r1, [r2, r4]
	bic r1, r0
	strh r1, [r2, r4]
	ldrb r0, [r3]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	str r0, [sp]
	lsl r1, r1, #0x10
	ldrb r3, [r3, #1]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy209_21bb73c
	ldr r0, [r5, #8]
	add r0, r0, r4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bb6c4

	thumb_func_start ovy209_21bb73c
ovy209_21bb73c: ; 0x021BB73C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r0, #0
	mov r0, #0x24
	add r4, r1, #0
	mul r4, r0
	str r6, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [r5, #8]
	mov r2, #1
	add r1, r1, r4
	ldr r0, [r5, #4]
	ldr r1, [r1, #4]
	lsl r2, r2, #0xc
	add r7, r3, #0
	add r3, r2, #0
	bl sub_0204E8CC
	ldr r1, [r5, #8]
	ldr r2, _021BB7E4 ; =0x021C2D90
	add r1, r1, r4
	str r0, [r1, #8]
	ldr r1, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r1, r4
	ldr r1, [r1, #8]
	bl sub_0204EAC8
	ldr r0, [r5, #8]
	mov r1, #1
	ldrh r2, [r0, r4]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0, r4]
	ldr r2, [r5, #8]
	mov r0, #2
	ldrh r1, [r2, r4]
	orr r0, r1
	strh r0, [r2, r4]
	ldr r2, [r5, #8]
	mov r0, #4
	ldrh r1, [r2, r4]
	orr r0, r1
	strh r0, [r2, r4]
	ldr r2, [r5, #8]
	mov r0, #8
	ldrh r1, [r2, r4]
	bic r1, r0
	strh r1, [r2, r4]
	ldr r0, [r5, #8]
	ldr r1, [r6]
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r6, #4]
	add r0, r0, r4
	str r1, [r0, #0x14]
	ldr r0, [r5, #8]
	ldr r1, [r6, #8]
	add r0, r0, r4
	str r1, [r0, #0x18]
	ldr r0, [r5, #8]
	add r1, sp, #0x28
	add r0, r0, r4
	strh r7, [r0, #0x1c]
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r5, #8]
	add r0, r0, r4
	strh r1, [r0, #0x1e]
	ldr r0, [r5, #8]
	add r1, r0, r4
	mov r0, #0
	strh r0, [r1, #2]
	ldr r0, [r5, #8]
	add r0, r0, r4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BB7E4: .word 0x021C2D90
	thumb_func_end ovy209_21bb73c

	thumb_func_start ovy209_21bb7e8
ovy209_21bb7e8: ; 0x021BB7E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl sub_0204E9D0
	ldrh r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021BB808
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl sub_0204E73C
_021BB808:
	ldrh r1, [r4]
	mov r0, #1
	bic r1, r0
	strh r1, [r4]
	ldrh r1, [r4]
	mov r0, #2
	bic r1, r0
	strh r1, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bb7e8

	thumb_func_start ovy209_21bb81c
ovy209_21bb81c: ; 0x021BB81C
	push {r0, r1, r2, r3}
	thumb_func_end ovy209_21bb81c

	non_word_aligned_thumb_func_start ovy209_21bb81e
ovy209_21bb81e: ; 0x021BB81E
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	bl ovy209_21bb550
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl sub_021EEF78
	str r0, [r4, #0x20]
	ldrh r1, [r4]
	mov r0, #8
	add r2, sp, #0x1c
	bic r1, r0
	strh r1, [r4]
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl sub_0204EA08
	ldrh r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021BB85C
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl sub_0204E73C
_021BB85C:
	ldrh r1, [r4]
	mov r0, #0x10
	bic r1, r0
	strh r1, [r4]
	add r0, sp, #0x1c
	ldrh r0, [r0]
	ldrh r1, [r4]
	str r0, [r4, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #2
	orr r0, r1
	strh r0, [r4]
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy209_21bb81e

	thumb_func_start ovy209_21bb888
ovy209_21bb888: ; 0x021BB888
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _021BB8CA
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	add r2, sp, #4
	bl sub_0204E7E8
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	add r2, sp, #0
	bl sub_0204E820
	add r5, #0x12
	add r2, r5, #0
	ldr r5, [sp]
	ldr r3, _021BB8D0 ; =0xFFFF0000
	ldr r1, [sp, #4]
	and r3, r5
	lsr r3, r3, #0x10
	mov r0, #1
	lsl r3, r3, #3
	bl sub_0205FA10
	ldrh r1, [r4]
	mov r0, #8
	orr r0, r1
	strh r0, [r4]
_021BB8CA:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021BB8D0: .word 0xFFFF0000
	thumb_func_end ovy209_21bb888
_021BB8D4:
	.byte 0x02, 0x20, 0x0B, 0x69, 0x00, 0x03, 0x1B, 0x18, 0x13, 0x61, 0x4B, 0x69
	.byte 0x1B, 0x18, 0x53, 0x61, 0x8B, 0x69, 0x80, 0x08, 0x18, 0x1A, 0x90, 0x61, 0x1C, 0x20, 0x08, 0x5E
	.byte 0x04, 0x23, 0x90, 0x83, 0x1E, 0x20, 0x08, 0x5E, 0xD0, 0x83, 0x48, 0x88, 0x50, 0x80, 0x09, 0x88
	.byte 0x10, 0x88, 0x49, 0x07, 0xC9, 0x0F, 0xC9, 0x07, 0x98, 0x43, 0x49, 0x0F, 0x08, 0x43, 0x10, 0x80
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy209_21bb914
ovy209_21bb914: ; 0x021BB914
	push {r0, r1, r2, r3}
	thumb_func_end ovy209_21bb914

	non_word_aligned_thumb_func_start ovy209_21bb916
ovy209_21bb916: ; 0x021BB916
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r0, #4]
	ldr r1, [r4, #8]
	add r2, sp, #0x10
	bl sub_0204EAC8
	ldrh r1, [r4]
	mov r0, #2
	orr r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy209_21bb916

	thumb_func_start sub_021BB934
sub_021BB934: ; 0x021BB934
	ldr r0, [r2]
	str r0, [r1, #0x10]
	ldr r0, [r2, #4]
	str r0, [r1, #0x14]
	ldr r0, [r2, #8]
	ldrh r2, [r1]
	str r0, [r1, #0x18]
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BB934

	thumb_func_start sub_021BB94C
sub_021BB94C: ; 0x021BB94C
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldr r0, [r1, #0x14]
	str r0, [r2, #4]
	ldr r0, [r1, #0x18]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BB94C

	thumb_func_start sub_021BB95C
sub_021BB95C: ; 0x021BB95C
	strh r2, [r1, #0x1c]
	ldrh r2, [r1]
	mov r0, #2
	strh r3, [r1, #0x1e]
	orr r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BB95C

	thumb_func_start sub_021BB96C
sub_021BB96C: ; 0x021BB96C
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	strh r0, [r2]
	mov r0, #0x1e
	ldrsh r0, [r1, r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BB96C

	thumb_func_start sub_021BB97C
sub_021BB97C: ; 0x021BB97C
	strh r2, [r1, #2]
	ldrh r2, [r1]
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	bx lr
	thumb_func_end sub_021BB97C
_021BB988:
	.byte 0x48, 0x88, 0x10, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x0B, 0x88, 0x04, 0x20, 0x83, 0x43, 0x10, 0x04, 0x00, 0x0C, 0xC0, 0x07, 0x40, 0x0F, 0x18, 0x43
	.byte 0x08, 0x80, 0x70, 0x47, 0x08, 0x88, 0x40, 0x07, 0xC0, 0x0F, 0x70, 0x47, 0x00, 0x6A, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x85, 0xEF, 0x1E, 0x02

	thumb_func_start sub_021BB9B8
sub_021BB9B8: ; 0x021BB9B8
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021BB9B8

	thumb_func_start ovy209_21bb9bc
ovy209_21bb9bc: ; 0x021BB9BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x4d
	str r1, [sp]
	ldr r1, _021BBA00 ; =0x00001168
	ldr r3, _021BBA04 ; =0x021C3054
	add r6, r0, #0
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	mov r0, #8
	add r1, r6, #0
	strh r6, [r5]
	bl ovy209_21bbe50
	str r0, [r5, #4]
	mov r0, #0x8b
	add r2, r4, #0
	lsl r0, r0, #2
_021BB9E6:
	add r1, r4, #0
	mul r1, r0
	add r1, r5, r1
	add r4, r4, #1
	str r2, [r1, #8]
	cmp r4, #8
	blt _021BB9E6
	ldr r0, [r5, #4]
	bl sub_021BCA74
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BBA00: .word 0x00001168
_021BBA04: .word 0x021C3054
	thumb_func_end ovy209_21bb9bc

	thumb_func_start ovy209_21bba08
ovy209_21bba08: ; 0x021BBA08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r7, #0x8b
	mov r4, #0
	add r6, #8
	lsl r7, r7, #2
_021BBA16:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021BBA2A
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21bbb88
_021BBA2A:
	add r4, r4, #1
	cmp r4, #8
	blt _021BBA16
	ldr r0, [r5, #4]
	bl ovy209_21bbe9c
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bba08

	thumb_func_start sub_021BBA40
sub_021BBA40: ; 0x021BBA40
	ldr r0, [r0, #4]
	ldr r3, _021BBA48 ; =ovy209_21bbed0
	bx r3
	nop
_021BBA48: .word ovy209_21bbed0
	thumb_func_end sub_021BBA40

	thumb_func_start sub_021BBA4C
sub_021BBA4C: ; 0x021BBA4C
	ldr r0, [r0, #4]
	ldr r1, _021BBA54 ; =ovy209_21bbcc4
	ldr r3, _021BBA58 ; =ovy209_21bbf14
	bx r3
	.align 2, 0
_021BBA54: .word ovy209_21bbcc4
_021BBA58: .word ovy209_21bbf14
	thumb_func_end sub_021BBA4C

	thumb_func_start ovy209_21bba5c
ovy209_21bba5c: ; 0x021BBA5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	mov r0, #0x8b
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #2
_021BBA6C:
	add r1, r4, #0
	mul r1, r0
	add r1, r5, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021BBA7E
	add r4, r4, #1
	cmp r4, #8
	blt _021BBA6C
_021BBA7E:
	mov r0, #0x8b
	add r1, r5, #0
	lsl r0, r0, #2
	add r7, r4, #0
	mul r7, r0
	add r1, #8
	mov r0, #1
	str r0, [r1, r7]
	add r6, r1, r7
	ldr r0, [sp, #0xc]
	add r1, sp, #0x24
	mov r2, #0
	bl ovy209_21bbd70
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	add r0, sp, #0x24
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy209_21bc974
	ldr r1, [sp, #0x14]
	str r0, [r1, r7]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021BBAFE
	ldr r0, [sp, #0xc]
	add r1, sp, #0x24
	mov r2, #1
	bl ovy209_21bbd70
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x18
	str r0, [sp, #0x18]
	mov r0, #0x8b
	lsl r0, r0, #2
	mul r0, r4
	str r0, [sp, #0x1c]
	add r0, sp, #0x24
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy209_21bc974
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	str r0, [r2, r1]
	bl sub_021BCB34
	b _021BBB04
_021BBAFE:
	add r1, r5, r7
	mov r0, #0
	str r0, [r1, #0x18]
_021BBB04:
	mov r0, #0x8b
	lsl r0, r0, #2
	add r6, r4, #0
	mul r6, r0
	mov r0, #1
	add r1, r5, r6
	str r0, [r1, #0xc]
	add r1, r5, #0
	str r1, [sp, #0x20]
	add r1, #0x10
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x14]
	mov r3, #0x38
	ldr r2, [r1, r7]
	ldr r1, [sp, #0x20]
	str r2, [r1, r6]
	lsl r1, r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x50]
	mov r0, #0
	str r1, [sp, #0x48]
	str r1, [sp, #0x4c]
	add r2, r5, r7
	add r1, r0, #0
_021BBB34:
	add r4, r0, #0
	mul r4, r3
	add r4, r2, r4
	add r0, r0, #1
	str r1, [r4, #0x1c]
	cmp r0, #9
	blt _021BBB34
	mov r2, #0x8b
	add r0, r5, r6
	lsl r2, r2, #2
	str r1, [r0, r2]
	add r3, r2, #4
	str r1, [r0, r3]
	add r3, r2, #0
	sub r3, #0x18
	str r1, [r0, r3]
	add r3, r2, #0
	sub r3, #0x14
	str r1, [r0, r3]
	add r3, r2, #0
	sub r3, #0x10
	str r1, [r0, r3]
	add r3, r2, #0
	sub r3, #0xc
	str r1, [r0, r3]
	add r3, r2, #0
	sub r3, #8
	str r1, [r0, r3]
	sub r2, r2, #4
	str r1, [r0, r2]
	add r5, #8
	add r0, r5, r6
	add r1, sp, #0x48
	bl sub_021BBBB4
	ldr r0, [sp, #0x20]
	ldr r0, [r0, r6]
	bl sub_021BCAE8
	add r0, r5, r6
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bba5c

	thumb_func_start ovy209_21bbb88
ovy209_21bbb88: ; 0x021BBB88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	add r5, r0, #0
	cmp r1, #0
	beq _021BBB9A
	ldr r0, [r5, #4]
	bl ovy209_21bca30
_021BBB9A:
	ldr r0, [r5, #4]
	ldr r1, [r4, #0xc]
	bl ovy209_21bca30
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bbb88

	thumb_func_start sub_021BBBA8
sub_021BBBA8: ; 0x021BBBA8
	ldr r0, [r0, #8]
	ldr r3, _021BBBB0 ; =sub_021BCA8C
	bx r3
	nop
_021BBBB0: .word sub_021BCA8C
	thumb_func_end sub_021BBBA8

	thumb_func_start sub_021BBBB4
sub_021BBBB4: ; 0x021BBBB4
	ldr r0, [r0, #8]
	ldr r3, _021BBBBC ; =sub_021BCAA4
	bx r3
	nop
_021BBBBC: .word sub_021BCAA4
	thumb_func_end sub_021BBBB4

	thumb_func_start sub_021BBBC0
sub_021BBBC0: ; 0x021BBBC0
	ldr r0, [r0, #8]
	ldr r3, _021BBBC8 ; =sub_021BCABC
	bx r3
	nop
_021BBBC8: .word sub_021BCABC
	thumb_func_end sub_021BBBC0

	thumb_func_start ovy209_21bbbcc
ovy209_21bbbcc: ; 0x021BBBCC
	push {r3, lr}
	cmp r1, #1
	ldr r0, [r0, #8]
	bne _021BBBDA
	bl sub_021BCB44
	pop {r3, pc}
_021BBBDA:
	bl sub_021BCB34
	pop {r3, pc}
	thumb_func_end ovy209_21bbbcc

	thumb_func_start ovy209_21bbbe0
ovy209_21bbbe0: ; 0x021BBBE0
	push {r3, lr}
	ldr r0, [r0, #8]
	bl sub_021BCB28
	cmp r0, #1
	beq _021BBBF0
	mov r0, #1
	pop {r3, pc}
_021BBBF0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy209_21bbbe0

	thumb_func_start ovy209_21bbbf4
ovy209_21bbbf4: ; 0x021BBBF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021BCAF8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BBC08
	bl sub_021BCAF8
_021BBC08:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bbbf4

	thumb_func_start ovy209_21bbc0c
ovy209_21bbc0c: ; 0x021BBC0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021BCAE8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BBC20
	bl sub_021BCAE8
_021BBC20:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bbc0c

	thumb_func_start sub_021BBC24
sub_021BBC24: ; 0x021BBC24
	ldr r0, [r0, #8]
	ldr r3, _021BBC2C ; =ovy209_21bcb08
	bx r3
	nop
_021BBC2C: .word ovy209_21bcb08
	thumb_func_end sub_021BBC24

	thumb_func_start ovy209_21bbc30
ovy209_21bbc30: ; 0x021BBC30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021BBC52
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl ovy209_21bcb54
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	bl sub_021BCB34
	pop {r4, pc}
_021BBC52:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl ovy209_21bcb54
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_021BCB34
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bbc30

	thumb_func_start ovy209_21bbc6c
ovy209_21bbc6c: ; 0x021BBC6C
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	beq _021BBC78
	bl ovy209_21bbc30
_021BBC78:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy209_21bbc6c

	thumb_func_start ovy209_21bbc7c
ovy209_21bbc7c: ; 0x021BBC7C
	push {r3, lr}
	cmp r1, #1
	ldr r0, [r0, #8]
	bne _021BBC8A
	bl sub_021BCAC4
	pop {r3, pc}
_021BBC8A:
	bl sub_021BCAD8
	pop {r3, pc}
	thumb_func_end ovy209_21bbc7c

	thumb_func_start sub_021BBC90
sub_021BBC90: ; 0x021BBC90
	ldr r0, [r0, #4]
	ldr r3, _021BBC98 ; =sub_021BCA84
	bx r3
	nop
_021BBC98: .word sub_021BCA84
	thumb_func_end sub_021BBC90
_021BBC9C:
	.byte 0x40, 0x68, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x89, 0xCA, 0x1B, 0x02

	thumb_func_start sub_021BBCA8
sub_021BBCA8: ; 0x021BBCA8
	mov r2, #0x38
	add r0, #0x14
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_021BBCA8

	thumb_func_start sub_021BBCB4
sub_021BBCB4: ; 0x021BBCB4
	mov r1, #0x83
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end sub_021BBCB4

	thumb_func_start sub_021BBCBC
sub_021BBCBC: ; 0x021BBCBC
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end sub_021BBCBC

	thumb_func_start ovy209_21bbcc4
ovy209_21bbcc4: ; 0x021BBCC4
	push {r4, r5}
	add r3, r1, #0
	cmp r0, #7
	blo _021BBD28
	sub r4, r0, #7
	mov r0, #0x38
	add r1, r4, #0
	mul r1, r0
	add r2, r2, r1
	mov r0, #1
	add r4, r2, #0
	add r5, r3, #0
	str r0, [r2, #0x14]
	ldmia r5!, {r0, r1}
	add r4, #0x18
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r3, #0
	str r0, [r4]
	add r5, #0xc
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r4, #0x24
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r3, #0
	str r0, [r4]
	add r0, r2, #0
	add r4, r2, #0
	ldrh r1, [r3, #0x30]
	add r0, #0x48
	add r5, #0x18
	strh r1, [r0]
	add r0, r2, #0
	ldrh r1, [r3, #0x32]
	add r0, #0x4a
	add r4, #0x30
	strh r1, [r0]
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r3, #0x24
	str r0, [r4]
	ldmia r3!, {r0, r1}
	add r2, #0x3c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	pop {r4, r5}
	bx lr
_021BBD28:
	cmp r0, #4
	bne _021BBD4C
	mov r1, #0x83
	ldr r4, [r3, #0x10]
	ldr r0, [r3, #0xc]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r1, #4
	str r4, [r2, r0]
	add r0, r1, #0
	mov r3, #0
	add r0, #8
	str r3, [r2, r0]
	mov r0, #1
	add r1, #0x18
	str r0, [r2, r1]
	pop {r4, r5}
	bx lr
_021BBD4C:
	cmp r0, #5
	bne _021BBD6C
	mov r1, #0x86
	ldr r4, [r3, #0x10]
	ldr r0, [r3, #0xc]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r1, #4
	str r4, [r2, r0]
	add r0, r1, #0
	mov r3, #0
	add r0, #8
	str r3, [r2, r0]
	mov r0, #1
	add r1, #0x10
	str r0, [r2, r1]
_021BBD6C:
	pop {r4, r5}
	bx lr
	thumb_func_end ovy209_21bbcc4

	thumb_func_start ovy209_21bbd70
ovy209_21bbd70: ; 0x021BBD70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [r7, #4]
	add r5, r1, #0
	str r2, [sp, #0xc]
	bl sub_0201D624
	ldrh r0, [r7, #8]
	ldrb r1, [r7, #0xb]
	str r0, [sp, #0x18]
	bl sub_0201EFBC
	add r1, r0, #0
	ldrb r0, [r7, #0xa]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r7, #8]
	ldrb r6, [r7, #0xc]
	mov r4, #0
	bl sub_0201EFE4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _021BBDA8
	mov r4, #1
_021BBDA8:
	mov r0, #0x33
	str r0, [r5]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bcf9c
	str r0, [r5, #4]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bcfd4
	str r0, [r5, #8]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bd010
	str r0, [r5, #0xc]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bd044
	str r0, [r5, #0x10]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bd078
	str r0, [r5, #0x14]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bd0ac
	str r0, [r5, #0x18]
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl ovy209_21bd0e0
	str r0, [r5, #0x1c]
	ldr r0, [r7, #0x10]
	str r0, [r5, #0x20]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bbd70

	thumb_func_start ovy209_21bbe50
ovy209_21bbe50: ; 0x021BBE50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x84
	str r0, [sp]
	ldr r3, _021BBE94 ; =0x021C3064
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #1
	mov r7, #1
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4]
	str r6, [r4, #0x14]
	mov r0, #0x89
	str r0, [sp]
	ldr r3, _021BBE94 ; =0x021C3064
	add r0, r6, #0
	lsl r1, r5, #2
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r4, #4]
	ldr r0, _021BBE98 ; =0x02FFFC3C
	ldr r0, [r0]
	str r0, [r4, #0x18]
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	lsl r0, r7, #0xc
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBE94: .word 0x021C3064
_021BBE98: .word 0x02FFFC3C
	thumb_func_end ovy209_21bbe50

	thumb_func_start ovy209_21bbe9c
ovy209_21bbe9c: ; 0x021BBE9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _021BBEC0
_021BBEA8:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021BBEB8
	add r0, r5, #0
	bl ovy209_21bca30
_021BBEB8:
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _021BBEA8
_021BBEC0:
	ldr r0, [r5, #4]
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bbe9c

	thumb_func_start ovy209_21bbed0
ovy209_21bbed0: ; 0x021BBED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021BBF10 ; =0x02FFFC3C
	mov r4, #0
	ldr r7, [r0]
	ldr r0, [r5, #0x18]
	sub r1, r7, r0
	ldr r0, [r5]
	cmp r0, #0
	ble _021BBF0C
	lsl r6, r1, #0xc
_021BBEE6:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BBF04
	add r1, r0, #0
	add r1, #0xec
	ldr r1, [r1]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	bne _021BBF04
	add r0, #0x28
	add r1, r6, #0
	bl sub_020616D8
_021BBF04:
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _021BBEE6
_021BBF0C:
	str r7, [r5, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBF10: .word 0x02FFFC3C
	thumb_func_end ovy209_21bbed0

	thumb_func_start ovy209_21bbf14
ovy209_21bbf14: ; 0x021BBF14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x58
	ldr r3, _021BC27C ; =0x04000444
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [r3]
	sub r2, r3, #4
	str r0, [r2]
	str r1, [sp, #0x28]
	str r0, [r3, #8]
	mov r1, #3
	str r1, [r2]
	str r0, [r3, #0x10]
	mov r1, #2
	str r1, [r2]
	ldr r1, [sp, #0x24]
	ldr r1, [r1, #8]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	str r0, [sp]
	bne _021BBF48
	ldr r0, _021BC280 ; =0x02143C4C
	ldr r1, _021BC284 ; =0x02143C58
	ldr r2, _021BC288 ; =0x02143C64
	b _021BBF4E
_021BBF48:
	ldr r0, _021BC28C ; =0x021C2DA0
	ldr r1, _021BC290 ; =0x021C2DAC
	ldr r2, _021BC294 ; =0x021C2D94
_021BBF4E:
	mov r3, #1
	bl G3i_LookAt_
	add r4, sp, #0x1b8
	ldr r0, _021BC298 ; =0x02143A58
	add r1, r4, #0
	blx MTX_Inverse43
	add r0, r4, #0
	add r4, sp, #0x194
	add r1, r4, #0
	blx MI_Copy36B
	add r0, r4, #0
	add r1, sp, #0x1e8
	blx MTX_Copy33To44_
	mov r0, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x24]
	ldr r0, [r0]
	cmp r0, #0
	bgt _021BBF7E
	b _021BC71A
_021BBF7E:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x58]
	ldr r1, [r1, #4]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021BBF96
	add r1, #0xec
	ldr r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _021BBF98
_021BBF96:
	b _021BC708
_021BBF98:
	ldr r1, _021BC27C ; =0x04000444
	mov r2, #0
	ldr r3, [sp, #0x24]
	str r2, [r1]
	ldr r3, [r3, #4]
	ldr r4, [r3, r0]
	add r0, r4, #0
	str r0, [sp, #0x5c]
	add r0, #0x90
	str r0, [sp, #0x5c]
	add r0, r4, #0
	add r3, r4, #0
	str r3, [sp, #0x50]
	add r3, #0x68
	add r0, #0x28
	str r2, [sp, #0xb8]
	str r3, [sp, #0x50]
	ldr r3, [r0, #0x1c]
	ldr r3, [r3, #4]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	beq _021BBFCE
	cmp r3, #1
	beq _021BBFE6
	cmp r3, #2
	beq _021BBFF6
	b _021BC014
_021BBFCE:
	ldr r0, [r0]
	lsr r1, r1, #0xe
	ldr r0, [r0]
	ldrh r3, [r0]
	add r0, sp, #0x244
	strh r3, [r0]
	strh r2, [r0, #2]
	str r1, [sp, #0x248]
	str r1, [sp, #0x24c]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	b _021BC014
_021BBFE6:
	ldr r0, [r0]
	add r2, sp, #0x244
	ldr r3, [r0]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	b _021BC014
_021BBFF6:
	ldr r0, [r0]
	add r3, sp, #0x244
	ldr r0, [r0]
	lsr r1, r1, #0xe
	ldrh r5, [r0]
	strh r5, [r3]
	strh r2, [r3, #2]
	str r1, [sp, #0x248]
	str r1, [sp, #0x24c]
	mov r1, #4
	ldrsh r1, [r0, r1]
	strh r1, [r3, #0xc]
	mov r1, #6
	ldrsh r0, [r0, r1]
	strh r0, [r3, #0xe]
_021BC014:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r5, sp, #0x244
	str r0, [sp, #0x228]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	str r0, [sp, #0x22c]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	str r0, [sp, #0x230]
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021BC048
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	lsl r6, r0, #8
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	neg r0, r0
	lsl r5, r0, #8
	b _021BC11C
_021BC048:
	mov r0, #6
	lsl r0, r0, #0x10
	mov r3, #2
	lsl r3, r3, #0x12
	ldr r1, _021BC29C ; =0xFFFFF000
	str r0, [sp, #0x128]
	mov r2, #0
	ldr r0, _021BC2A0 ; =0xFFFA0000
	add r6, sp, #0x154
	str r0, [sp, #0x130]
	lsr r0, r3, #7
	str r0, [sp, #0x140]
	ldr r0, _021BC298 ; =0x02143A58
	str r1, [sp, #0x13c]
	str r1, [sp, #0x150]
	add r1, r6, #0
	str r3, [sp, #0x114]
	str r2, [sp, #0x118]
	str r2, [sp, #0x11c]
	str r3, [sp, #0x120]
	str r2, [sp, #0x124]
	str r2, [sp, #0x12c]
	str r2, [sp, #0x134]
	str r2, [sp, #0x138]
	str r2, [sp, #0x144]
	str r2, [sp, #0x148]
	str r2, [sp, #0x14c]
	blx MTX_Copy43To44_
	ldr r1, _021BC2A4 ; =0x02143A14
	add r0, r6, #0
	add r2, r6, #0
	blx MTX_Concat44
	add r7, sp, #0x228
	add r1, r6, #0
	add r6, sp, #0xb4
	add r0, r7, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy209_21bce64
	ldr r0, [sp, #0x228]
	ldr r1, [sp, #0xb4]
	bl FX_Div
	str r0, [sp, #0x228]
	ldr r0, [sp, #0x22c]
	ldr r1, [sp, #0xb4]
	bl FX_Div
	str r0, [sp, #0x22c]
	add r0, r7, #0
	add r1, sp, #0x114
	add r2, r7, #0
	add r3, r6, #0
	bl ovy209_21bce64
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _021BC0D6
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BC0E4
_021BC0D6:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BC0E4:
	blx sub_0208DA4C
	add r6, r0, #0
	add r1, sp, #0x244
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	neg r0, r0
	cmp r0, #0
	ble _021BC108
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BC116
_021BC108:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BC116:
	blx sub_0208DA4C
	add r5, r0, #0
_021BC11C:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	str r0, [sp, #0x230]
	mov r0, #0
	str r0, [sp, #0x3c]
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	bge _021BC13C
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
_021BC13C:
	ldr r3, [sp, #0x230]
	ldr r2, [sp, #0x22c]
	ldr r1, [sp, #0x228]
	ldr r0, _021BC2A8 ; =0x04000470
	str r1, [r0]
	str r2, [r0]
	str r3, [r0]
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021BC15A
	add r0, sp, #0x1e8
	bl G3_MultMtx44
_021BC15A:
	ldr r1, _021BC2A8 ; =0x04000470
	mov r0, #0
	str r6, [r1]
	str r5, [r1]
	str r0, [r1]
	ldr r0, [sp, #0x3c]
	mov r1, #1
	tst r0, r1
	add r0, sp, #0x244
	beq _021BC176
	ldrh r2, [r0, #2]
	lsl r0, r1, #0x10
	sub r0, r0, r2
	b _021BC178
_021BC176:
	ldrh r0, [r0, #2]
_021BC178:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BC2AC ; =FX_SinCosTable_ ; 0x020946BC
	mov r6, #2
	add r2, r0, r1
	ldrsh r0, [r0, r1]
	ldrsh r1, [r2, r6]
	neg r0, r0
	bl G3_RotZ
	add r2, r4, #0
	add r2, #0xd8
	ldr r0, [sp, #0x24c]
	ldr r2, [r2]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #0
	str r2, [sp, #0x54]
	lsl r2, r6, #0xa
	add r2, r0, r2
	ldr r0, [sp, #0x54]
	adc r1, r0
	lsr r5, r2, #0xc
	add r2, r4, #0
	lsl r0, r1, #0x14
	add r2, #0xd4
	orr r5, r0
	ldr r0, [sp, #0x248]
	ldr r2, [r2]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	lsl r2, r6, #0xa
	add r2, r0, r2
	ldr r0, [sp, #0x54]
	ldr r3, _021BC2AC ; =FX_SinCosTable_ ; 0x020946BC
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, _021BC2B0 ; =0x0400046C
	str r1, [r0]
	str r5, [r0]
	lsr r1, r0, #0xe
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldrh r0, [r0]
	str r1, [sp, #0x64]
	add r5, sp, #0xf0
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BC2AC ; =FX_SinCosTable_ ; 0x020946BC
	add r2, r0, r1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r2, r6]
	add r0, r5, #0
	neg r1, r1
	bl MTX_RotZ33_
	ldr r0, _021BC2B0 ; =0x0400046C
	add r1, r5, #0
	mov r5, #0x43
	lsr r0, r0, #0x12
	lsl r5, r5, #2
	add r0, r4, r0
	add r2, r4, r5
	blx MTX_MultVec33
	add r0, r5, #0
	sub r0, #0xc
	add r1, r4, r5
	add r0, r4, r0
	add r2, r1, #0
	bl VEC_Subtract
	add r1, r4, #0
	add r1, #0xd4
	ldr r0, [r4, r5]
	ldr r1, [r1]
	bl FX_Div
	add r1, r4, #0
	str r0, [r4, r5]
	add r0, r5, #4
	add r1, #0xd8
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FX_Div
	add r1, r5, #4
	str r0, [r4, r1]
	ldr r0, _021BC2B0 ; =0x0400046C
	mov r1, #0x1d
	sub r0, #0x20
	str r1, [r0]
	bl sub_021BCE44
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x5c]
	ldr r2, [r0, #0x1c]
	ldr r6, [r3, #0x14]
	ldr r1, [r0, #0x10]
	lsl r3, r2, #0x1d
	ldr r0, [r0, #0xc]
	lsl r2, r1, #0x17
	lsl r1, r0, #0x14
	ldr r0, [sp, #0x5c]
	lsl r6, r6, #0x1a
	ldr r0, [r0]
	lsr r0, r0, #3
	orr r6, r0
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r6, r0
	orr r1, r6
	orr r2, r1
	mov r1, #0xf
	lsl r1, r1, #0x10
	orr r1, r2
	add r2, r3, #0
	orr r2, r1
	ldr r1, _021BC2B0 ; =0x0400046C
	b _021BC2B4
	nop
_021BC27C: .word 0x04000444
_021BC280: .word 0x02143C4C
_021BC284: .word 0x02143C58
_021BC288: .word 0x02143C64
_021BC28C: .word 0x021C2DA0
_021BC290: .word 0x021C2DAC
_021BC294: .word 0x021C2D94
_021BC298: .word 0x02143A58
_021BC29C: .word 0xFFFFF000
_021BC2A0: .word 0xFFFA0000
_021BC2A4: .word 0x02143A14
_021BC2A8: .word 0x04000470
_021BC2AC: .word FX_SinCosTable_
_021BC2B0: .word 0x0400046C
_021BC2B4:
	str r2, [r1, #0x3c]
	add r2, sp, #0x244
	ldr r1, [r4, #0x6c]
	ldrh r2, [r2]
	ldr r1, [r1, #4]
	lsl r3, r2, #3
	add r2, r1, r3
	ldrh r1, [r1, r3]
	cmp r1, #0
	bgt _021BC2CA
	b _021BC702
_021BC2CA:
	lsr r1, r0, #0x13
	str r1, [sp, #0x94]
	str r1, [sp, #0x90]
	str r1, [sp, #0x8c]
	str r1, [sp, #0x88]
	str r1, [sp, #0x84]
	str r1, [sp, #0x80]
	lsr r1, r0, #0x16
	str r1, [sp, #0xac]
	add r1, r5, #0
	str r1, [sp, #0xa8]
	sub r1, #8
	str r1, [sp, #0xa8]
	sub r1, r5, #4
	str r1, [sp, #0xa4]
	lsr r1, r0, #0x13
	lsr r0, r0, #0x16
	str r1, [sp, #0xa0]
	str r1, [sp, #0x9c]
	str r0, [sp, #0x98]
_021BC2F2:
	ldr r0, [sp, #0x54]
	ldr r2, [r2, #4]
	lsl r0, r0, #3
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x50]
	add r1, r2, r1
	ldrh r2, [r1, #6]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	asr r2, r1, #8
	mov r1, #0x5c
	ldr r0, [r0]
	mul r1, r2
	add r1, r0, r1
	ldr r0, [r1, #0x1c]
	ldr r0, [r0, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021BC326
	cmp r0, #1
	beq _021BC340
	cmp r0, #2
	beq _021BC350
	b _021BC374
_021BC326:
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r1, [r0]
	add r0, sp, #0x234
	strh r1, [r0]
	mov r1, #0
	strh r1, [r0, #2]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x238]
	str r0, [sp, #0x23c]
	add r0, sp, #0x234
	strh r1, [r0, #0xc]
	b _021BC372
_021BC340:
	ldr r0, [r1]
	add r2, sp, #0x234
	ldr r3, [r0]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	b _021BC374
_021BC350:
	ldr r0, [r1]
	add r1, sp, #0x234
	ldr r0, [r0]
	ldrh r2, [r0]
	strh r2, [r1]
	mov r2, #0
	strh r2, [r1, #2]
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x238]
	str r1, [sp, #0x23c]
	mov r1, #4
	ldrsh r2, [r0, r1]
	add r1, sp, #0x234
	strh r2, [r1, #0xc]
	mov r1, #6
	ldrsh r1, [r0, r1]
	add r0, sp, #0x234
_021BC372:
	strh r1, [r0, #0xe]
_021BC374:
	ldr r0, [r4, #0x20]
	add r2, r0, #4
	add r0, sp, #0x234
	ldrh r1, [r0]
	mov r0, #0x38
	mul r0, r1
	add r0, r2, r0
	ldr r3, [r0, #0x20]
	str r0, [sp, #0x60]
	cmp r3, #0
	beq _021BC3E6
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021BC3A8
	ldr r0, [sp, #0x60]
	ldr r1, [r0, #0x24]
	str r1, [sp]
	ldr r0, [r0, #0x28]
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x2c]
	add r0, r0, r1
	b _021BC3B8
_021BC3A8:
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x28]
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x2c]
_021BC3B8:
	str r0, [sp, #8]
	add r0, sp, #0x234
	str r0, [sp, #0xc]
	add r0, sp, #0x244
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x60]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x60]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [sp, #0x18]
	add r0, sp, #0xb8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x20]
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #0x1c]
	add r0, r4, #0
	bl ovy209_21bc734
_021BC3E6:
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x60]
	ldr r0, [r0, #0xc]
	ldr r2, [sp, #0x60]
	str r0, [sp]
	ldr r0, [sp, #0x60]
	ldr r3, [sp, #0x60]
	ldr r0, [r0, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0x60]
	ldr r0, [r0, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0x234
	str r0, [sp, #0xc]
	add r0, sp, #0x244
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [sp, #0x18]
	add r0, sp, #0xb8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x20]
	ldr r1, [r1]
	ldr r2, [r2, #4]
	ldr r3, [r3, #8]
	add r0, r4, #0
	bl ovy209_21bc734
	mov r0, #0
	str r0, [sp, #0x4c]
_021BC42C:
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x4c]
	add r0, r1, r0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _021BC43C
	b _021BC6E6
_021BC43C:
	add r1, sp, #0x244
	ldrh r1, [r1, #2]
	str r1, [sp, #0x38]
	add r1, sp, #0x234
	ldrh r2, [r1, #2]
	ldr r1, [sp, #0x38]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x48]
	mov r1, #0x14
	mul r1, r0
	str r1, [sp, #0x2c]
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #0x2c]
	add r1, r1, r0
	ldr r0, [r1, #8]
	str r0, [sp, #0x44]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0xb0]
	ldr r0, [sp, #0x48]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BC728 ; =FX_SinCosTable_ ; 0x020946BC
	add r2, r0, r1
	ldrsh r5, [r0, r1]
	mov r0, #2
	ldrsh r6, [r2, r0]
	ldr r0, [sp, #0x248]
	ldr r2, [sp, #0x238]
	str r0, [sp, #0x68]
	asr r0, r0, #0x1f
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x24c]
	ldr r1, [sp, #0x6c]
	str r0, [sp, #0x70]
	asr r0, r0, #0x1f
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x68]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r7, r0, #0
	ldr r0, [sp, #0x44]
	add r3, r1, #0
	add r2, r0, #0
	ldr r0, [sp, #0xb0]
	mul r2, r6
	add r1, r0, #0
	mul r1, r5
	sub r0, r2, r1
	ldr r2, [sp, #0x94]
	asr r1, r0, #0x1f
	add r7, r7, r2
	ldr r2, _021BC72C ; =0x00000000
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r7, r7, #0xc
	orr r7, r2
	asr r3, r7, #0x1f
	add r2, r7, #0
	blx sub_0208D60C
	ldr r2, [sp, #0x90]
	add r2, r0, r2
	ldr r0, _021BC72C ; =0x00000000
	adc r1, r0
	lsr r0, r2, #0xc
	ldr r2, [sp, #0x23c]
	lsl r1, r1, #0x14
	str r0, [sp, #0x78]
	orr r0, r1
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r3, r1, #0
	ldr r1, [sp, #0x44]
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [sp, #0xb0]
	mul r0, r5
	add r5, r1, #0
	mul r5, r6
	add r0, r0, r5
	ldr r5, [sp, #0x8c]
	asr r1, r0, #0x1f
	add r5, r2, r5
	ldr r2, _021BC72C ; =0x00000000
	adc r3, r2
	lsl r3, r3, #0x14
	lsr r2, r5, #0xc
	orr r2, r3
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x88]
	add r2, r0, r2
	ldr r0, _021BC72C ; =0x00000000
	adc r1, r0
	lsr r0, r2, #0xc
	lsl r1, r1, #0x14
	str r0, [sp, #0x7c]
	orr r0, r1
	str r0, [sp, #0x7c]
	ldr r0, [r4, #0x6c]
	add r2, sp, #0x244
	ldr r1, [r0, #4]
	add r0, sp, #0x244
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x34]
	add r0, r0, r1
	mov r1, #2
	ldrsh r3, [r0, r1]
	mov r1, #0xc
	ldrsh r1, [r2, r1]
	add r1, r3, r1
	str r1, [sp, #0x40]
	mov r1, #4
	ldrsh r2, [r0, r1]
	add r1, sp, #0x244
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	ldr r3, [sp, #0x6c]
	add r7, r2, r0
	ldr r0, [sp, #0x38]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BC728 ; =FX_SinCosTable_ ; 0x020946BC
	add r2, r0, r1
	ldrsh r5, [r0, r1]
	mov r0, #2
	ldrsh r0, [r2, r0]
	ldr r1, [sp, #0x40]
	add r2, r1, #0
	str r0, [sp, #0x30]
	mul r2, r0
	add r0, r7, #0
	mul r0, r5
	sub r0, r2, r0
	ldr r2, [sp, #0x68]
	asr r1, r0, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x84]
	ldr r3, [sp, #0x74]
	add r2, r0, r2
	ldr r0, _021BC72C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x78]
	ldr r2, [sp, #0x70]
	add r6, r0, r1
	ldr r0, [sp, #0x40]
	add r1, r0, #0
	ldr r0, [sp, #0x30]
	mul r1, r5
	mul r0, r7
	add r0, r1, r0
	asr r1, r0, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x80]
	add r2, r0, r2
	ldr r0, _021BC72C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0x7c]
	add r5, r0, r1
	add r1, sp, #0x234
	mov r0, #0xc
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021BC5BC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BC5CA
_021BC5BC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BC5CA:
	blx sub_0208DA4C
	add r6, r6, r0
	add r1, sp, #0x234
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021BC5EC
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BC5FA
_021BC5EC:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BC5FA:
	blx sub_0208DA4C
	add r2, sp, #0xbc
	add r3, sp, #0x228
	add r5, r5, r0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	asr r1, r6, #0x1f
	str r0, [r2]
	ldr r0, [sp, #0xc0]
	add r2, r4, #0
	neg r0, r0
	str r0, [sp, #0xc0]
	add r2, #0xd4
	ldr r2, [r2]
	add r0, r6, #0
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	asr r2, r3, #4
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0xa0]
	add r2, r0, r2
	ldr r0, _021BC72C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r2, r4, #0
	str r1, [sp, #0xc8]
	add r2, #0xd8
	ldr r3, [r2]
	asr r1, r5, #0x1f
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	asr r2, r2, #4
	add r0, r5, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x9c]
	add r2, r0, r2
	ldr r0, _021BC72C ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, [sp, #0xb8]
	str r1, [sp, #0xcc]
	str r0, [sp, #0xd0]
	ldr r0, [sp, #0x98]
	add r2, sp, #0xe0
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r4, #0
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xfc
	ldrh r1, [r0]
	add r0, sp, #0xb4
	add r3, #0xd4
	strh r1, [r0, #0x38]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xd4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, [sp, #0x28]
	str r0, [r2]
	add r2, r4, #0
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #0x2c]
	add r2, #0xf8
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	lsl r1, r0, #0xb
	ldr r0, [sp, #0x48]
	add r1, r0, r1
	add r0, sp, #0xb4
	strh r1, [r0, #0x3a]
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #0x2c]
	ldr r2, [r2]
	add r0, r1, r0
	ldr r0, [r0, #4]
	add r1, r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	blx r3
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r0, #5
	bne _021BC6D6
	ldr r2, [sp, #0xcc]
	ldr r1, [sp, #0xc8]
	ldr r0, [sp, #0xac]
	str r1, [r4, r0]
	ldr r0, [sp, #0xa8]
	mov r1, #0
	str r2, [r4, r0]
	ldr r0, [sp, #0xa4]
	str r1, [r4, r0]
_021BC6D6:
	ldr r0, [sp, #0x4c]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	cmp r0, #8
	bhs _021BC6E6
	b _021BC42C
_021BC6E6:
	ldr r0, [sp, #0x54]
	add r0, r0, #1
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x6c]
	ldr r1, [r0, #4]
	add r0, sp, #0x244
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r2, r1, r0
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0x54]
	cmp r0, r1
	bge _021BC702
	b _021BC2F2
_021BC702:
	ldr r0, _021BC730 ; =0x04000448
	mov r1, #1
	str r1, [r0]
_021BC708:
	ldr r0, [sp, #0x58]
	add r0, r0, #1
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x24]
	ldr r1, [r0]
	ldr r0, [sp, #0x58]
	cmp r0, r1
	bge _021BC71A
	b _021BBF7E
_021BC71A:
	ldr r0, _021BC730 ; =0x04000448
	mov r1, #1
	str r1, [r0]
	add sp, #0x1fc
	add sp, #0x58
	pop {r4, r5, r6, r7, pc}
	nop
_021BC728: .word FX_SinCosTable_
_021BC72C: .word 0x00000000
_021BC730: .word 0x04000448
	thumb_func_end ovy209_21bbf14

	thumb_func_start ovy209_21bc734
ovy209_21bc734: ; 0x021BC734
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [sp, #0x44]
	str r1, [sp, #0x14]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x58]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0x4c]
	ldr r7, [sp, #0x5c]
	ldr r6, [sp, #0x60]
	cmp r0, #0
	beq _021BC77A
	mov r1, #1
	lsl r1, r1, #0xc
	mov r0, #0xfa
	str r1, [sp]
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #6
	ldr r1, _021BC94C ; =0xFFFA1000
	ldr r2, _021BC950 ; =0xFFF81000
	lsl r0, r0, #0x10
	lsl r3, r3, #0x13
	bl G3i_OrthoW_
	ldr r0, _021BC954 ; =0x04000440
	mov r1, #2
	str r1, [r0]
_021BC77A:
	ldr r0, _021BC958 ; =0x04000450
	mov r1, #0x1d
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #1
	cmp r0, #2
	beq _021BC78E
	mov r1, #0
_021BC78E:
	add r0, r4, #0
	add r0, #0xbc
	mov r3, #4
	ldr r0, [r0]
	sub r1, r3, r1
	lsr r0, r1
	ldr r1, _021BC95C ; =0x040004AC
	ldr r2, [sp, #0x50]
	str r0, [r1]
	ldr r0, _021BC960 ; =0x001F00C0
	sub r1, #8
	str r0, [r1]
	ldr r1, [r4, #0x6c]
	ldrh r2, [r2]
	ldr r0, [sp, #0x54]
	ldr r1, [r1, #4]
	lsl r2, r2, #3
	add r1, r1, r2
	ldr r2, [r1, #4]
	lsl r0, r0, #3
	mov r1, #0xc
	add r0, r2, r0
	mov r2, #2
	ldrsh r2, [r0, r2]
	ldrsh r1, [r5, r1]
	ldrsh r0, [r0, r3]
	add r1, r1, r2
	lsl r1, r1, #8
	str r1, [sp, #0x24]
	mov r1, #0xe
	ldrsh r1, [r5, r1]
	add r0, r1, r0
	neg r0, r0
	lsl r0, r0, #8
	str r0, [sp, #0x20]
	cmp r6, #0
	bne _021BC7DE
	add r4, #0xfc
	ldrh r0, [r4]
	b _021BC7F2
_021BC7DE:
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _021BC7F4
	add r4, #0xfc
	ldrh r1, [r4]
	lsl r0, r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
_021BC7F2:
	str r0, [sp, #0x28]
_021BC7F4:
	ldr r0, [sp, #0x28]
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r2, r1, #1
	ldr r0, _021BC964 ; =FX_SinCosTable_ ; 0x020946BC
	add r1, r1, #1
	ldrsh r0, [r0, r2]
	lsl r2, r1, #1
	ldr r1, _021BC964 ; =FX_SinCosTable_ ; 0x020946BC
	neg r0, r0
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	ldr r1, [r7]
	ldr r4, _021BC968 ; =0x04000470
	ldr r0, [sp, #0x24]
	str r0, [r4]
	ldr r0, [sp, #0x20]
	str r0, [r4]
	str r1, [r4]
	ldrh r0, [r5, #2]
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r2, r1, #1
	ldr r0, _021BC964 ; =FX_SinCosTable_ ; 0x020946BC
	add r1, r1, #1
	ldrsh r0, [r0, r2]
	lsl r2, r1, #1
	ldr r1, _021BC964 ; =FX_SinCosTable_ ; 0x020946BC
	neg r0, r0
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	cmp r6, #0
	bne _021BC860
	ldr r2, [r5, #8]
	ldr r0, [r5, #4]
	sub r1, r4, #4
	str r0, [r1]
	str r2, [r1]
	lsr r0, r4, #0xe
	ldr r2, [sp, #0x14]
	str r0, [r1]
	str r2, [r4]
	ldr r2, [sp, #0x18]
	str r2, [r4]
	mov r2, #0
	str r2, [r4]
	ldr r2, [sp, #0x1c]
	str r2, [r1]
	ldr r2, [sp, #0x40]
	str r2, [r1]
	str r0, [r1]
	b _021BC8A6
_021BC860:
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _021BC8A6
	ldr r2, [r5, #4]
	ldr r1, [r5, #8]
	neg r2, r2
	sub r3, r4, #4
	str r2, [r3]
	str r1, [r3]
	ldr r1, [sp, #0x14]
	lsl r2, r0, #0xc
	str r2, [r3]
	neg r1, r1
	str r1, [r4]
	ldr r1, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r1, [r4]
	mov r1, #0
	str r1, [r4]
	str r5, [r3]
	ldr r5, [sp, #0x40]
	str r5, [r3]
	str r2, [r3]
	mov r2, #0xff
	mvn r2, r2
	str r2, [r4]
	str r1, [r4]
	str r1, [r4]
	lsl r1, r0, #0x15
	ldr r0, [sp, #0x44]
	sub r1, r1, r0
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	str r0, [sp, #0x44]
_021BC8A6:
	ldr r5, _021BC96C ; =0x04000500
	mov r0, #1
	ldr r6, [sp, #0x48]
	str r0, [r5]
	lsl r0, r6, #8
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r4, r0, #0x10
	ldr r0, [sp, #0x44]
	add r3, r5, #0
	lsl r0, r0, #8
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov ip, r0
	add r2, r5, #0
	orr r0, r4
	sub r3, #0x78
	str r0, [r3]
	sub r2, #0x74
	mov r0, #0
	str r0, [r2]
	str r0, [r2]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	lsl r0, r0, #8
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r0, #0
	orr r1, r4
	str r1, [r3]
	lsr r1, r5, #0x12
	str r1, [r2]
	mov r1, #0
	str r1, [r2]
	ldr r1, [sp, #0x40]
	add r1, r6, r1
	lsl r1, r1, #8
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [r3]
	ldr r0, _021BC970 ; =0xFF000100
	str r0, [r2]
	mov r0, #0
	str r0, [r2]
	mov r0, ip
	orr r0, r1
	str r0, [r3]
	mov r0, #0xff
	lsl r0, r0, #0x18
	str r0, [r2]
	mov r0, #0
	str r0, [r2]
	add r1, r5, #0
	str r0, [r5, #4]
	sub r1, #0xc0
	str r0, [r1]
	sub r5, #0xb0
	str r0, [r5]
	mov r2, #2
	ldr r0, [sp, #0x58]
	str r2, [r1]
	cmp r0, #0
	bne _021BC93E
	ldr r0, [r7]
	add r2, #0xfe
	sub r0, r0, r2
	add sp, #0x2c
	str r0, [r7]
	pop {r4, r5, r6, r7, pc}
_021BC93E:
	ldr r1, [r7]
	lsl r0, r2, #9
	sub r0, r1, r0
	str r0, [r7]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021BC94C: .word 0xFFFA1000
_021BC950: .word 0xFFF81000
_021BC954: .word 0x04000440
_021BC958: .word 0x04000450
_021BC95C: .word 0x040004AC
_021BC960: .word 0x001F00C0
_021BC964: .word FX_SinCosTable_
_021BC968: .word 0x04000470
_021BC96C: .word 0x04000500
_021BC970: .word 0xFF000100
	thumb_func_end ovy209_21bc734

	thumb_func_start ovy209_21bc974
ovy209_21bc974: ; 0x021BC974
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r2, [r5]
	add r7, r1, #0
	mov r4, #0
	str r3, [sp, #8]
	cmp r2, #0
	ble _021BCA1E
	ldr r1, [r5, #4]
_021BC98A:
	lsl r6, r4, #2
	ldr r0, [r1, r6]
	cmp r0, #0
	bne _021BCA18
	ldr r0, _021BCA28 ; =0x000002FB
	mov r1, #0x49
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r3, _021BCA2C ; =0x021C3064
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	mov r2, #1
	bl sub_0203A1FC
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x20]
	str r0, [r1, r6]
	ldr r0, [r5, #4]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, r6]
	add r0, #0xf0
	str r4, [r0]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x14]
	ldr r0, [r0, r6]
	add r0, #0xf4
	str r1, [r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, r6]
	add r0, #0xc8
	str r7, [r0]
	ldr r0, [r5, #4]
	ldr r1, [r0, r6]
	ldr r0, [sp, #4]
	add r1, #0xcc
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [r0, r6]
	ldr r0, [sp, #8]
	add r1, #0xd0
	str r0, [r1]
	ldr r0, [r5, #4]
	mov r1, #0
	ldr r0, [r0, r6]
	add r0, #0xfc
	strh r1, [r0]
	ldr r1, [r5, #4]
	mov r0, #1
	ldr r1, [r1, r6]
	lsl r0, r0, #0xc
	add r1, #0xd4
	str r0, [r1]
	ldr r1, [r5, #4]
	ldr r1, [r1, r6]
	add r1, #0xd8
	str r0, [r1]
	ldr r1, [r5, #4]
	ldr r1, [r1, r6]
	add r1, #0xdc
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r6]
	add r0, #0xf8
	str r1, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy209_21bcc10
	b _021BCA1E
_021BCA18:
	add r4, r4, #1
	cmp r4, r2
	blt _021BC98A
_021BCA1E:
	ldr r1, [r5, #4]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BCA28: .word 0x000002FB
_021BCA2C: .word 0x021C3064
	thumb_func_end ovy209_21bc974

	thumb_func_start ovy209_21bca30
ovy209_21bca30: ; 0x021BCA30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl sub_0203A24C
	ldr r0, [r4, #0x10]
	bl sub_0203A24C
	ldr r0, [r4, #8]
	bl sub_0203A24C
	ldr r0, [r4, #0x18]
	bl sub_0203A24C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_0203A24C
	ldr r0, [r4, #0x20]
	bl sub_0203A24C
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	ldr r1, [r5, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bca30

	thumb_func_start sub_021BCA74
sub_021BCA74: ; 0x021BCA74
	ldr r2, [r0, #8]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BCA74

	thumb_func_start sub_021BCA84
sub_021BCA84: ; 0x021BCA84
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021BCA84
_021BCA88:
	.byte 0x01, 0x61, 0x70, 0x47

	thumb_func_start sub_021BCA8C
sub_021BCA8C: ; 0x021BCA8C
	add r2, r0, #0
	ldr r3, [r1]
	add r2, #0xc8
	str r3, [r2]
	add r2, r0, #0
	ldr r3, [r1, #4]
	add r2, #0xcc
	str r3, [r2]
	ldr r1, [r1, #8]
	add r0, #0xd0
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BCA8C

	thumb_func_start sub_021BCAA4
sub_021BCAA4: ; 0x021BCAA4
	add r2, r0, #0
	ldr r3, [r1]
	add r2, #0xd4
	str r3, [r2]
	add r2, r0, #0
	ldr r3, [r1, #4]
	add r2, #0xd8
	str r3, [r2]
	ldr r1, [r1, #8]
	add r0, #0xdc
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BCAA4

	thumb_func_start sub_021BCABC
sub_021BCABC: ; 0x021BCABC
	add r0, #0xfc
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BCABC

	thumb_func_start sub_021BCAC4
sub_021BCAC4: ; 0x021BCAC4
	add r1, r0, #0
	add r1, #0xec
	ldr r2, [r1]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BCAC4

	thumb_func_start sub_021BCAD8
sub_021BCAD8: ; 0x021BCAD8
	add r1, r0, #0
	add r1, #0xec
	ldr r2, [r1]
	mov r1, #1
	bic r2, r1
	add r0, #0xec
	str r2, [r0]
	bx lr
	thumb_func_end sub_021BCAD8

	thumb_func_start sub_021BCAE8
sub_021BCAE8: ; 0x021BCAE8
	add r1, r0, #0
	add r1, #0xec
	ldr r2, [r1]
	mov r1, #2
	orr r1, r2
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BCAE8

	thumb_func_start sub_021BCAF8
sub_021BCAF8: ; 0x021BCAF8
	add r1, r0, #0
	add r1, #0xec
	ldr r2, [r1]
	mov r1, #2
	bic r2, r1
	add r0, #0xec
	str r2, [r0]
	bx lr
	thumb_func_end sub_021BCAF8

	thumb_func_start ovy209_21bcb08
ovy209_21bcb08: ; 0x021BCB08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_02060114
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ovy209_21bcdf4
	add r5, #0x28
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020614A8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bcb08

	thumb_func_start sub_021BCB28
sub_021BCB28: ; 0x021BCB28
	add r0, #0xec
	ldr r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
	thumb_func_end sub_021BCB28

	thumb_func_start sub_021BCB34
sub_021BCB34: ; 0x021BCB34
	add r1, r0, #0
	add r1, #0xec
	ldr r2, [r1]
	mov r1, #4
	orr r1, r2
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BCB34

	thumb_func_start sub_021BCB44
sub_021BCB44: ; 0x021BCB44
	add r1, r0, #0
	add r1, #0xec
	ldr r2, [r1]
	mov r1, #4
	bic r2, r1
	add r0, #0xec
	str r2, [r0]
	bx lr
	thumb_func_end sub_021BCB44

	thumb_func_start ovy209_21bcb54
ovy209_21bcb54: ; 0x021BCB54
	push {r4, r5}
	add r3, r0, #0
	add r5, r3, #0
	add r2, r1, #0
	add r5, #0xc8
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r4, #0xc8
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r3, #0
	str r0, [r4]
	add r5, #0xd4
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r4, #0xd4
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r3, #0
	str r0, [r4]
	add r5, #0xe0
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r4, #0xe0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	add r0, r2, #0
	add r0, #0xec
	ldr r1, [r0]
	mov r0, #1
	bic r1, r0
	add r0, r3, #0
	add r0, #0xec
	ldr r0, [r0]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	mov r0, #1
	and r4, r0
	orr r1, r4
	add r4, r2, #0
	add r4, #0xec
	str r1, [r4]
	mov r4, #2
	bic r1, r4
	add r4, r3, #0
	add r4, #0xec
	ldr r4, [r4]
	add r0, #0xff
	lsl r4, r4, #0x1e
	lsr r4, r4, #0x1f
	lsl r4, r4, #0x1f
	lsr r4, r4, #0x1e
	orr r1, r4
	add r4, r2, #0
	add r4, #0xec
	str r1, [r4]
	mov r4, #4
	bic r1, r4
	add r4, r3, #0
	add r4, #0xec
	ldr r4, [r4]
	lsl r4, r4, #0x1d
	lsr r4, r4, #0x1f
	lsl r4, r4, #0x1f
	lsr r4, r4, #0x1d
	orr r4, r1
	add r1, r2, #0
	add r1, #0xec
	str r4, [r1]
	add r1, r3, #0
	add r1, #0xfc
	ldrh r4, [r1]
	add r1, r2, #0
	add r1, #0xfc
	strh r4, [r1]
	mov r1, #1
	add r1, #0xff
	add r5, r3, r1
	add r4, r2, r0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r0, #0x43
	lsl r0, r0, #2
	add r3, r3, r0
	add r2, r2, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ovy209_21bcb54

	thumb_func_start ovy209_21bcc10
ovy209_21bcc10: ; 0x021BCC10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r7, #4]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	add r6, r2, #0
	add r0, r4, #0
	add r0, #0xec
	ldr r1, [r0]
	mov r0, #4
	orr r1, r0
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x90
	str r3, [sp, #8]
	bl sub_02060B30
	add r0, r4, #0
	add r0, #0xb4
	bl sub_02060B64
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	mov r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0xc]
	add r3, r4, #4
	bl sub_0204B3A4
	str r0, [r4]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x10]
	mov r2, #1
	add r3, #0x14
	bl sub_0204B3F4
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x14]
	mov r2, #0
	add r3, #0xc
	bl sub_0204B444
	str r0, [r4, #8]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r3, r4, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #0x18]
	mov r2, #0
	add r3, #0x1c
	bl sub_0204B494
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02060114
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ovy209_21bcdf4
	add r0, r4, #0
	add r0, #0x28
	add r1, r5, #0
	bl sub_020614A8
	add r2, r4, #0
	add r2, #0xf4
	ldr r2, [r2]
	ldr r0, [r6]
	lsl r2, r2, #0x10
	ldr r1, [r6, #0x1c]
	lsr r2, r2, #0x10
	bl sub_0204A934
	str r0, [r4, #0x20]
	ldr r2, [r0]
	add r1, r0, #4
	mov r0, #0x38
	mul r0, r2
	add r0, r1, r0
	str r0, [r4, #0x24]
	mov r0, #0x45
	lsl r0, r0, #4
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	ldr r3, _021BCD8C ; =0x021C3064
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x24
	mov r2, #1
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x90
	str r0, [r5, #8]
	add r0, r4, #0
	add r0, #0xb4
	str r0, [r5, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [r7, #0xc]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [r7, #0x10]
	lsl r0, r0, #5
	add r0, r1, r0
	str r0, [r5, #0x1c]
	add r0, r4, #0
	str r4, [r5, #0x20]
	add r0, #0xf4
	ldr r0, [r0]
	mov r2, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r6, #4]
	add r3, r5, #0
	bl sub_0204B264
	str r0, [r5, #0x10]
	add r4, #0xf4
	ldr r3, [r4]
	ldr r0, [r6]
	lsl r3, r3, #0x10
	ldr r1, [r6, #8]
	add r2, r5, #4
	lsr r3, r3, #0x10
	bl sub_0204B354
	str r0, [r5, #0x14]
	ldr r1, [r6, #0x1c]
	ldr r0, _021BCD90 ; =0x00001994
	cmp r1, r0
	bne _021BCD6C
	ldr r0, [r5]
	ldr r1, [r6, #0x20]
	ldr r0, [r0, #0x14]
	bl sub_0201C1B4
_021BCD6C:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021BCD80
	ldr r0, _021BCD94 ; =ovy209_21bcd98
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021BCD80:
	mov r0, #0
	add r1, r5, #0
	bl ovy209_21bcd98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BCD8C: .word 0x021C3064
_021BCD90: .word 0x00001994
_021BCD94: .word ovy209_21bcd98
	thumb_func_end ovy209_21bcc10

	thumb_func_start ovy209_21bcd98
ovy209_21bcd98: ; 0x021BCD98
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x20]
	add r5, r0, #0
	cmp r2, #0
	beq _021BCDB2
	add r0, r2, #0
	add r0, #0xec
	ldr r1, [r0]
	mov r0, #4
	bic r1, r0
	add r2, #0xec
	str r1, [r2]
_021BCDB2:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BCDCA
	ldr r0, [r4]
	ldr r1, [r4, #0x18]
	ldr r3, [r4, #8]
	mov r2, #0
	bl sub_02060CDC
	ldr r0, [r4, #0x10]
	bl sub_0203A24C
_021BCDCA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021BCDE0
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	mov r2, #0
	bl sub_02060F24
	ldr r0, [r4, #0x14]
	bl sub_0203A24C
_021BCDE0:
	add r0, r4, #0
	bl sub_0203A24C
	cmp r5, #0
	beq _021BCDF0
	add r0, r5, #0
	bl sub_0203A6A8
_021BCDF0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bcd98

	thumb_func_start ovy209_21bcdf4
ovy209_21bcdf4: ; 0x021BCDF4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_02061630
	add r1, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	ldr r3, _021BCE40 ; =0x021C3064
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_0203A1FC
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	ldr r0, [r5, #0xc]
	add r1, r5, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r1, #0x8c
	add r0, r5, #0
	ldr r1, [r1]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #4]
	add r0, #0x28
	bl sub_02061530
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021BCE40: .word 0x021C3064
	thumb_func_end ovy209_21bcdf4

	thumb_func_start sub_021BCE44
sub_021BCE44: ; 0x021BCE44
	ldr r0, _021BCE58 ; =0x4210FFFF
	ldr r1, _021BCE5C ; =0x040004C0
	str r0, [r1]
	lsr r0, r0, #0x10
	str r0, [r1, #4]
	ldr r0, _021BCE60 ; =0x001F00C0
	sub r1, #0x1c
	str r0, [r1]
	bx lr
	nop
_021BCE58: .word 0x4210FFFF
_021BCE5C: .word 0x040004C0
_021BCE60: .word 0x001F00C0
	thumb_func_end sub_021BCE44

	thumb_func_start ovy209_21bce64
ovy209_21bce64: ; 0x021BCE64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	ldr r1, [r0, #4]
	add r6, r2, #0
	str r1, [sp, #4]
	asr r1, r1, #0x1f
	str r1, [sp, #8]
	ldr r1, [r0]
	ldr r0, [r0, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	asr r0, r0, #0x1f
	asr r1, r1, #0x1f
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	ldr r2, [r4, #0x20]
	str r3, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4]
	str r0, [sp, #0x1c]
	add r7, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	str r0, [sp, #0x20]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x20]
	add r2, r2, r0
	ldr r0, [sp, #0x1c]
	adc r5, r1
	add r1, r0, r2
	adc r7, r5
	ldr r2, [r4, #0x24]
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x30]
	asr r3, r2, #0x1f
	add r0, r1, r0
	str r0, [r6]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	blx sub_0208D60C
	ldr r2, [r4, #4]
	str r0, [sp, #0x24]
	add r7, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x14]
	str r0, [sp, #0x28]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x28]
	add r2, r2, r0
	ldr r0, [sp, #0x24]
	adc r5, r1
	add r1, r0, r2
	adc r7, r5
	ldr r2, [r4, #0x28]
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x34]
	asr r3, r2, #0x1f
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	blx sub_0208D60C
	ldr r2, [r4, #8]
	str r0, [sp, #0x2c]
	add r7, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x18]
	str r0, [sp, #0x30]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x30]
	add r2, r2, r0
	ldr r0, [sp, #0x2c]
	adc r5, r1
	add r1, r0, r2
	adc r7, r5
	ldr r2, [r4, #0x2c]
	lsl r0, r7, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x38]
	asr r3, r2, #0x1f
	add r0, r1, r0
	str r0, [r6, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	blx sub_0208D60C
	ldr r2, [r4, #0xc]
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r4, #0x1c]
	str r0, [sp, #0x34]
	add r5, r1, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x34]
	add r0, r2, r0
	adc r5, r1
	add r1, r7, r0
	adc r6, r5
	lsl r0, r6, #0x14
	lsr r1, r1, #0xc
	orr r1, r0
	ldr r0, [r4, #0x3c]
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bce64

	thumb_func_start ovy209_21bcf9c
ovy209_21bcf9c: ; 0x021BCF9C
	push {r4, lr}
	sub sp, #0x30
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	add r4, sp, #0x2c
	str r4, [sp, #0xc]
	add r4, sp, #0x28
	str r4, [sp, #0x10]
	add r4, sp, #0x24
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x24]
	add r0, r1, r0
	add r0, r0, #2
	add r0, r2, r0
	add sp, #0x30
	pop {r4, pc}
	thumb_func_end ovy209_21bcf9c

	thumb_func_start ovy209_21bcfd4
ovy209_21bcfd4: ; 0x021BCFD4
	push {r3, r4, r5, lr}
	sub sp, #0x30
	mov r4, #0
	ldr r5, [sp, #0x40]
	str r4, [sp, #0x24]
	str r5, [sp]
	ldr r5, [sp, #0x44]
	str r5, [sp, #4]
	ldr r5, [sp, #0x48]
	str r5, [sp, #8]
	add r5, sp, #0x2c
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	add r5, sp, #0x28
	str r5, [sp, #0x18]
	add r5, sp, #0x24
	str r5, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021BD00C
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r1, #0x12
	add r0, r1, r0
_021BD00C:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bcfd4

	thumb_func_start ovy209_21bd010
ovy209_21bd010: ; 0x021BD010
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	add r4, sp, #0x28
	str r4, [sp, #0xc]
	add r4, sp, #0x24
	str r4, [sp, #0x10]
	mov r4, #0
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	add r0, r0, #4
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd010

	thumb_func_start ovy209_21bd044
ovy209_21bd044: ; 0x021BD044
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	add r4, sp, #0x28
	str r4, [sp, #0xc]
	add r4, sp, #0x24
	str r4, [sp, #0x10]
	mov r4, #0
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	add r0, r0, #5
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd044

	thumb_func_start ovy209_21bd078
ovy209_21bd078: ; 0x021BD078
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	add r4, sp, #0x28
	str r4, [sp, #0xc]
	add r4, sp, #0x24
	str r4, [sp, #0x10]
	mov r4, #0
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	add r0, r0, #6
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd078

	thumb_func_start ovy209_21bd0ac
ovy209_21bd0ac: ; 0x021BD0AC
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	add r4, sp, #0x28
	str r4, [sp, #0xc]
	add r4, sp, #0x24
	str r4, [sp, #0x10]
	mov r4, #0
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	add r0, r0, #7
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd0ac

	thumb_func_start ovy209_21bd0e0
ovy209_21bd0e0: ; 0x021BD0E0
	push {r3, r4, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x38]
	str r4, [sp]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x40]
	str r4, [sp, #8]
	add r4, sp, #0x28
	str r4, [sp, #0xc]
	add r4, sp, #0x24
	str r4, [sp, #0x10]
	mov r4, #0
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	str r4, [sp, #0x20]
	bl ovy209_21bd114
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	add r0, #8
	add sp, #0x2c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd0e0

	thumb_func_start ovy209_21bd114
ovy209_21bd114: ; 0x021BD114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r0, [sp]
	mov r0, #0x14
	add r7, r6, #0
	mul r7, r0
	ldr r0, [sp, #0x2c]
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _021BD130
	mov r0, #0
	b _021BD132
_021BD130:
	mov r0, #9
_021BD132:
	str r0, [sp, #8]
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _021BD148
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _021BD144
	mov r0, #0
	b _021BD154
_021BD144:
	mov r0, #9
	b _021BD154
_021BD148:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _021BD152
	mov r0, #2
	b _021BD154
_021BD152:
	mov r0, #0xb
_021BD154:
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021BD172
	ldr r0, _021BD228 ; =0x000001EA
	mov r1, #1
	cmp r6, r0
	beq _021BD166
	mov r1, #0
_021BD166:
	ldr r0, _021BD22C ; =0x0000028A
	add r1, r1, r0
	mov r0, #0x14
	add r7, r1, #0
	mul r7, r0
	b _021BD1DC
_021BD172:
	cmp r5, #0
	beq _021BD1DC
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	mov r2, #0x1f
	bl sub_0201F06C
	str r0, [sp, #0x10]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	mov r2, #0x23
	bl sub_0201F06C
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	mov r2, #0x20
	bl sub_0201F06C
	cmp r5, r0
	blt _021BD1A4
	mov r5, #0
_021BD1A4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _021BD1C8
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _021BD1DC
	cmp r5, #0
	beq _021BD1DC
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x28]
	add r2, r2, r5
	sub r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _021BD230 ; =0x000037AD
	add r2, r3, r2
	add r0, r0, r2
	str r0, [r1]
	b _021BD1DC
_021BD1C8:
	cmp r5, #0
	beq _021BD1DC
	ldr r0, [sp, #0x10]
	add r0, r0, r5
	sub r1, r0, #1
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021BD234 ; =0x000032F0
	add r7, r2, r0
_021BD1DC:
	cmp r4, #0
	beq _021BD200
	cmp r4, #1
	beq _021BD1EA
	cmp r4, #2
	beq _021BD1FE
	b _021BD200
_021BD1EA:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r1, r7, r1
	add r1, r1, #1
	bl sub_0204AA04
	mov r4, #1
	cmp r0, #0
	bne _021BD200
	b _021BD1FE
_021BD1FE:
	mov r4, #0
_021BD200:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021BD208
	str r7, [r0]
_021BD208:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _021BD212
	ldr r0, [sp, #8]
	str r0, [r1]
_021BD212:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _021BD21A
	str r4, [r0]
_021BD21A:
	ldr r1, [sp, #0x40]
	cmp r1, #0
	beq _021BD224
	ldr r0, [sp, #0x28]
	str r0, [r1]
_021BD224:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD228: .word 0x000001EA
_021BD22C: .word 0x0000028A
_021BD230: .word 0x000037AD
_021BD234: .word 0x000032F0
	thumb_func_end ovy209_21bd114

	thumb_func_start ovy209_21bd238
ovy209_21bd238: ; 0x021BD238
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #0x4f
	str r1, [sp]
	ldr r3, _021BD274 ; =0x021C3074
	mov r1, #0x94
	mov r2, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_0203A1FC
	strh r5, [r0]
	str r6, [r0, #4]
	strh r4, [r0, #2]
	add r3, r4, #0
	mov r1, #0x1c
_021BD25A:
	add r2, r4, #0
	mul r2, r1
	add r2, r0, r2
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #5
	blo _021BD25A
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BD274: .word 0x021C3074
	thumb_func_end ovy209_21bd238

	thumb_func_start ovy209_21bd278
ovy209_21bd278: ; 0x021BD278
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #8
	mov r7, #0x1c
_021BD284:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021BD298
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21bd3d4
_021BD298:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021BD284
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd278

	thumb_func_start ovy209_21bd2ac
ovy209_21bd2ac: ; 0x021BD2AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #8
	mov r7, #0x1c
_021BD2B8:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021BD2CC
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21bd2d4
_021BD2CC:
	add r4, r4, #1
	cmp r4, #5
	blt _021BD2B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bd2ac

	thumb_func_start ovy209_21bd2d4
ovy209_21bd2d4: ; 0x021BD2D4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _021BD33E
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _021BD2FA
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BD308
_021BD2FA:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BD308:
	blx sub_0208DA4C
	ldr r1, [r4, #8]
	add r2, sp, #0
	sub r1, r1, r0
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp]
	mov r0, #3
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x18]
	bl sub_0204EA28
	mov r0, #0
	str r0, [r4, #4]
_021BD33E:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd2d4

	thumb_func_start ovy209_21bd344
ovy209_21bd344: ; 0x021BD344
	push {r4, r5}
	strh r1, [r0, #2]
	mov r5, #0
	mov r3, #1
	mov r2, #0x1c
_021BD34E:
	add r1, r5, #0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r4, #8]
	cmp r1, #1
	bne _021BD35C
	str r3, [r4, #0xc]
_021BD35C:
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, #5
	blo _021BD34E
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy209_21bd344

	thumb_func_start ovy209_21bd36c
ovy209_21bd36c: ; 0x021BD36C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x1c
_021BD376:
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _021BD38C
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #5
	blo _021BD376
_021BD38C:
	add r3, r5, #0
	mov r1, #0x1c
	add r3, #8
	mul r1, r0
	mov r2, #1
	add r4, r3, r1
	str r2, [r3, r1]
	str r2, [r4, #4]
	mov r1, #0
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	add r0, r4, #0
	lsl r2, r2, #0xc
	str r1, [r4, #0x10]
	add r0, #8
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x14]
	add r3, r2, #0
	bl sub_0204E8CC
	add r1, r0, #0
	str r1, [r4, #0x18]
	ldr r0, [r5, #4]
	ldr r2, _021BD3D0 ; =0x021C2DB8
	bl sub_0204EAC8
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BD3D0: .word 0x021C2DB8
	thumb_func_end ovy209_21bd36c

	thumb_func_start ovy209_21bd3d4
ovy209_21bd3d4: ; 0x021BD3D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x18]
	bl sub_0204E9D0
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x14]
	bl sub_0204E70C
	mov r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bd3d4

	thumb_func_start sub_021BD3F0
sub_021BD3F0: ; 0x021BD3F0
	ldr r0, [r2]
	str r0, [r1, #8]
	ldr r0, [r2, #4]
	str r0, [r1, #0xc]
	ldr r0, [r2, #8]
	str r0, [r1, #0x10]
	mov r0, #1
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD3F0

	thumb_func_start sub_021BD404
sub_021BD404: ; 0x021BD404
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r0, [r1, #0xc]
	str r0, [r2, #4]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD404

	thumb_func_start ovy209_21bd414
ovy209_21bd414: ; 0x021BD414
	push {r0, r1, r2, r3}
	thumb_func_end ovy209_21bd414

	non_word_aligned_thumb_func_start ovy209_21bd416
ovy209_21bd416: ; 0x021BD416
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r1, [r1, #0x18]
	add r2, sp, #0x10
	bl sub_0204EAC8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy209_21bd416

	thumb_func_start ovy209_21bd42c
ovy209_21bd42c: ; 0x021BD42C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x57
	str r1, [sp]
	ldr r3, _021BD4CC ; =0x021C3084
	mov r1, #0xb8
	mov r2, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	str r7, [r5, #4]
	add r6, r4, #0
_021BD44A:
	lsl r0, r4, #5
	add r0, r5, r0
	str r6, [r0, #8]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BD44A
	add r0, r5, #0
	add r0, #0x88
	str r6, [r0]
	ldrh r2, [r5]
	mov r0, #5
	add r1, r6, #0
	bl sub_0204BF1C
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204C028
	ldrh r1, [r5]
	mov r0, #0x2e
	bl sub_0204AA30
	ldrh r1, [r5]
	add r2, r6, #0
	add r3, r6, #0
	str r1, [sp]
	mov r1, #4
	add r4, r0, #0
	bl sub_0204BBA0
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	ldrh r0, [r5]
	mov r1, #0xa
	add r2, r6, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0x17
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD4CC: .word 0x021C3084
	thumb_func_end ovy209_21bd42c

	thumb_func_start ovy209_21bd4d0
ovy209_21bd4d0: ; 0x021BD4D0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0204BCD0
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0204B98C
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0204BE64
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204BF98
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd4d0

	thumb_func_start ovy209_21bd504
ovy209_21bd504: ; 0x021BD504
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #8
_021BD50E:
	lsl r1, r4, #5
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021BD520
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21bd534
_021BD520:
	add r4, r4, #1
	cmp r4, #4
	blt _021BD50E
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021BD532
	add r0, r5, #0
	bl ovy209_21bd5bc
_021BD532:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21bd504

	thumb_func_start ovy209_21bd534
ovy209_21bd534: ; 0x021BD534
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	bne _021BD544
	mov r0, #0x80
	b _021BD548
_021BD544:
	bl sub_021C0334
_021BD548:
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r4]
	cmp r0, #1
	bne _021BD5B4
	ldr r0, [r4, #8]
	blx sub_0208D374
	ldr r1, _021BD5B8 ; =0x45800000
	blx sub_0208E3C8
	add r7, r0, #0
	add r0, r6, #0
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r7, #0
	blx sub_0208E144
	blx sub_0208DA4C
	add r6, sp, #0
	strh r0, [r6]
	ldr r0, [r4, #0xc]
	blx sub_0208D374
	ldr r1, _021BD5B8 ; =0x45800000
	blx sub_0208E3C8
	blx sub_0208DA4C
	strh r0, [r6, #2]
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	mov r2, #0
	mov r6, #0
	bl sub_0204C140
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021BD5AC
	bl sub_021C0348
	cmp r0, #4
	beq _021BD5AC
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	bl sub_0204C124
	pop {r3, r4, r5, r6, r7, pc}
_021BD5AC:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C124
_021BD5B4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD5B8: .word 0x45800000
	thumb_func_end ovy209_21bd534

	thumb_func_start ovy209_21bd5bc
ovy209_21bd5bc: ; 0x021BD5BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _021BD622
	ldr r0, [r5, #4]
	bl sub_021C0348
	cmp r0, #4
	beq _021BD622
	add r0, r5, #0
	mov r1, #1
	add r0, #0x88
	str r1, [r0]
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0, #4]
	mov r1, #0x60
	strh r1, [r0, #6]
	mov r2, #0
	strh r2, [r0, #8]
	strb r2, [r0, #0xa]
	mov r1, #2
	strb r1, [r0, #0xb]
	add r0, sp, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	ldrh r0, [r5]
	add r1, r5, #0
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r5, #0
	add r0, #0xa8
	add r1, #0xb0
	add r2, #0xac
	add r3, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl sub_0204C040
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	mov r1, #1
	bl sub_0204C124
_021BD622:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	bne _021BD6C0
	ldr r0, [r5, #4]
	bl sub_021C0348
	cmp r0, #4
	bne _021BD64A
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0204C108
	mov r0, #0
	add r5, #0x88
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021BD64A:
	ldr r0, [r5, #4]
	bl sub_021C02D0
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_021C0348
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl sub_021C02D4
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_021C0334
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x18
	bl sub_021BE898
	ldr r0, [sp, #0x18]
	blx sub_0208D374
	ldr r6, _021BD6C4 ; =0x45800000
	add r1, r6, #0
	blx sub_0208E3C8
	add r4, r0, #0
	add r0, r7, #0
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E144
	blx sub_0208DA4C
	add r4, sp, #0xc
	strh r0, [r4]
	ldr r0, [sp, #0x1c]
	blx sub_0208D374
	add r1, r6, #0
	blx sub_0208E3C8
	mov r1, #0x42
	lsl r1, r1, #0x18
	blx sub_0208E144
	blx sub_0208DA4C
	add r5, #0xa4
	strh r0, [r4, #2]
	ldr r0, [r5]
	add r1, sp, #0xc
	mov r2, #0
	bl sub_0204C140
_021BD6C0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD6C4: .word 0x45800000
	thumb_func_end ovy209_21bd5bc

	thumb_func_start sub_021BD6C8
sub_021BD6C8: ; 0x021BD6C8
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD6C8

	thumb_func_start ovy209_21bd6cc
ovy209_21bd6cc: ; 0x021BD6CC
	push {r3, r4, lr}
	sub sp, #0x14
	add r3, r0, #0
	mov r4, #0
_021BD6D4:
	lsl r0, r4, #5
	add r0, r3, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021BD6E8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BD6D4
_021BD6E8:
	add r2, r3, #0
	add r2, #8
	lsl r0, r4, #5
	str r1, [r2, r0]
	add r4, r2, r0
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #4]
	strb r2, [r0, #6]
	mov r1, #2
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	str r2, [sp, #4]
	ldrh r0, [r3]
	add r1, r3, #0
	add r2, r3, #0
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0xa8
	add r1, #0xb0
	add r2, #0xac
	add r3, #0xb4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	bl sub_0204C040
	mov r1, #1
	str r0, [r4, #0x1c]
	bl sub_0204C124
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ovy209_21bd6cc

	thumb_func_start ovy209_21bd738
ovy209_21bd738: ; 0x021BD738
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	bl sub_0204C108
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ovy209_21bd738

	thumb_func_start sub_021BD748
sub_021BD748: ; 0x021BD748
	ldr r0, [r2]
	str r0, [r1, #8]
	ldr r0, [r2, #4]
	str r0, [r1, #0xc]
	ldr r0, [r2, #8]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD748

	thumb_func_start sub_021BD758
sub_021BD758: ; 0x021BD758
	ldr r0, [r1, #8]
	str r0, [r2]
	ldr r0, [r1, #0xc]
	str r0, [r2, #4]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD758

	thumb_func_start sub_021BD768
sub_021BD768: ; 0x021BD768
	strh r2, [r1, #4]
	strb r3, [r1, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD768

	thumb_func_start sub_021BD770
sub_021BD770: ; 0x021BD770
	str r2, [r1, #0x14]
	str r3, [r1, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BD770

	thumb_func_start ovy209_21bd778
ovy209_21bd778: ; 0x021BD778
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0x51
	str r1, [sp]
	ldr r3, _021BD79C ; =0x021C30D0
	add r5, r0, #0
	mov r1, #0x40
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	strh r5, [r0]
	str r4, [r0, #4]
	strh r6, [r0, #8]
	str r6, [r0, #0x1c]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021BD79C: .word 0x021C30D0
	thumb_func_end ovy209_21bd778

	thumb_func_start ovy209_21bd7a0
ovy209_21bd7a0: ; 0x021BD7A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	beq _021BD7AE
	bl ovy209_21bd89c
_021BD7AE:
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd7a0

	thumb_func_start ovy209_21bd7b8
ovy209_21bd7b8: ; 0x021BD7B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021BD7DC
	mov r6, #1
	mov r4, #0
	lsl r6, r6, #0xc
_021BD7C8:
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02049A64
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021BD7C8
_021BD7DC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd7b8

	thumb_func_start ovy209_21bd7e0
ovy209_21bd7e0: ; 0x021BD7E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021BD7F8
	ldr r0, _021BD7FC ; =0x021C30AC
	blx MTX_Identity33_
	ldr r0, [r4, #0x3c]
	ldr r1, _021BD800 ; =0x021C3094
	bl sub_02049B5C
_021BD7F8:
	pop {r4, pc}
	nop
_021BD7FC: .word 0x021C30AC
_021BD800: .word 0x021C3094
	thumb_func_end ovy209_21bd7e0

	thumb_func_start ovy209_21bd804
ovy209_21bd804: ; 0x021BD804
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	beq _021BD814
	bl ovy209_21bd89c
_021BD814:
	add r1, r4, #0
	mov r0, #0x2e
	add r1, #0x1e
	bl sub_02049344
	add r1, r4, #0
	str r0, [r5, #0x1c]
	mov r0, #0x2e
	add r1, #0x24
	bl sub_02049344
	add r1, r4, #0
	str r0, [r5, #0x20]
	mov r0, #0x2e
	add r1, #0x2e
	bl sub_02049344
	add r4, #0x29
	str r0, [r5, #0x24]
	mov r0, #0x2e
	add r1, r4, #0
	bl sub_02049344
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x1c]
	bl sub_020494AC
	cmp r0, #0
	beq _021BD898
	ldr r0, [r5, #0x1c]
	mov r1, #0
	add r2, r0, #0
	mov r6, #0
	bl sub_0204972C
	str r0, [r5, #0x2c]
	add r4, r6, #0
_021BD85E:
	lsl r0, r6, #2
	add r7, r5, r0
	ldr r0, [r5, #0x2c]
	ldr r1, [r7, #0x20]
	add r2, r4, #0
	bl sub_0204980C
	str r0, [r7, #0x30]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #3
	blo _021BD85E
	add r1, r5, #0
	ldr r0, [r5, #0x2c]
	add r1, #0x30
	mov r2, #3
	bl sub_020498B8
	str r0, [r5, #0x3c]
_021BD886:
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl sub_02049974
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021BD886
_021BD898:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd804

	thumb_func_start ovy209_21bd89c
ovy209_21bd89c: ; 0x021BD89C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02049934
	mov r5, #0
_021BD8A8:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x30]
	bl sub_02049888
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021BD8A8
	ldr r0, [r4, #0x2c]
	bl sub_020497D4
	mov r5, #0
_021BD8C4:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	bl sub_02049404
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021BD8C4
	ldr r0, [r4, #0x1c]
	bl sub_02049534
	ldr r0, [r4, #0x1c]
	bl sub_02049404
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd89c

	thumb_func_start sub_021BD8EC
sub_021BD8EC: ; 0x021BD8EC
	strh r1, [r0, #8]
	bx lr
	thumb_func_end sub_021BD8EC

	thumb_func_start ovy209_21bd8f0
ovy209_21bd8f0: ; 0x021BD8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0x93
	str r3, [sp, #0x10]
	str r1, [sp]
	mov r1, #0x11
	str r2, [sp, #0xc]
	ldr r3, _021BD96C ; =0x021C30E0
	lsl r1, r1, #6
	mov r2, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	ldr r0, [sp, #0xc]
	str r7, [r5, #4]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	str r0, [r5, #0x10]
	mov r0, #0x11
	lsl r0, r0, #6
	sub r0, #0xc
	strh r4, [r5, r0]
	ldr r0, [sp, #0x28]
	str r0, [r5, #8]
	mov r0, #0x11
	lsl r0, r0, #6
	sub r0, r0, #4
	strb r4, [r5, r0]
	mov r0, #0x42
	lsl r0, r0, #2
_021BD936:
	add r1, r4, #0
	mul r1, r0
	add r1, r5, r1
	str r2, [r1, #0x14]
	str r2, [r1, #0x18]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #4
	blo _021BD936
	mov r0, #0x33
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	mov r1, #0x2e
	mov r2, #0x1d
	mov r3, #3
	bl sub_0204E614
	ldr r1, _021BD970 ; =0x00000438
	str r0, [r5, r1]
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021BD96C: .word 0x021C30E0
_021BD970: .word 0x00000438
	thumb_func_end ovy209_21bd8f0

	thumb_func_start ovy209_21bd974
ovy209_21bd974: ; 0x021BD974
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r7, #0x42
	mov r4, #0
	add r6, #0x14
	lsl r7, r7, #2
_021BD982:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021BD996
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21bdff4
_021BD996:
	add r4, r4, #1
	cmp r4, #4
	blt _021BD982
	ldr r1, _021BD9B0 ; =0x00000438
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	bl sub_0204E70C
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD9B0: .word 0x00000438
	thumb_func_end ovy209_21bd974

	thumb_func_start ovy209_21bd9b4
ovy209_21bd9b4: ; 0x021BD9B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r7, #0x42
	mov r4, #0
	add r6, #0x14
	lsl r7, r7, #2
_021BD9C2:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021BD9D6
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21bda58
_021BD9D6:
	add r4, r4, #1
	cmp r4, #4
	blt _021BD9C2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd9b4

	thumb_func_start ovy209_21bd9e0
ovy209_21bd9e0: ; 0x021BD9E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	add r7, r5, #0
	str r0, [sp, #8]
	sub r0, #0x10
	add r7, #0x14
	str r0, [sp, #8]
_021BD9F8:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r6, r1, #0
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021BDA42
	add r0, r5, #0
	add r1, r7, r6
	bl ovy209_21bdb80
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021BDA42
	mov r4, #0
	bl sub_021C0374
	cmp r0, #0
	bls _021BDA42
	add r0, r5, r6
	str r0, [sp]
_021BDA24:
	mov r0, #0x46
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	cmp r2, #0
	beq _021BDA36
	add r0, r5, #0
	add r1, r7, r6
	blx r2
_021BDA36:
	ldr r0, [r5, #4]
	add r4, r4, #1
	bl sub_021C0374
	cmp r4, r0
	blo _021BDA24
_021BDA42:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _021BD9F8
	ldr r0, [r5, #0x10]
	bl ovy209_21bb438
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bd9e0

	thumb_func_start ovy209_21bda58
ovy209_21bda58: ; 0x021BDA58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r1, #0
	ldr r0, [r5, #0x58]
	bl sub_021BBCB4
	add r4, r0, #0
	ldr r0, [r5, #0x58]
	bl sub_021BBCBC
	add r6, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x18
	add r1, #0x30
	add r2, sp, #0x3c
	bl VEC_Add
	add r0, r5, #0
	add r0, #0x48
	ldrh r1, [r0]
	mov r7, #0
	ldr r2, _021BDB7C ; =FX_SinCosTable_ ; 0x020946BC
	str r7, [sp, #0x24]
	ldr r0, [r6, #4]
	add r6, sp, #0
	str r0, [sp, #0x28]
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	add r3, r3, #1
	ldrsh r1, [r2, r1]
	lsl r3, r3, #1
	ldrsh r2, [r2, r3]
	add r0, r6, #0
	neg r1, r1
	bl MTX_RotZ33_
	add r2, r5, #0
	add r0, sp, #0x24
	add r1, r6, #0
	add r2, #0x3c
	blx MTX_MultVec33
	add r1, r5, #0
	add r1, #0x3c
	add r0, sp, #0x24
	add r2, r1, #0
	bl VEC_Subtract
	ldr r1, [sp, #0x3c]
	ldr r0, [r4]
	sub r1, r1, r0
	ldr r0, [r5, #0x3c]
	sub r1, r1, r0
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	ldr r0, [r4, #4]
	ldr r2, [r5, #0x40]
	sub r0, r1, r0
	add r1, r2, r0
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0x40]
	ldr r0, [r5, #0x58]
	add r1, sp, #0x3c
	bl sub_021BBBA8
	add r1, r5, #0
	add r1, #0x48
	ldrh r1, [r1]
	ldr r0, [r5, #0x58]
	bl sub_021BBBC0
	ldr r0, [r5, #0x24]
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	ldr r1, [r5, #0x28]
	lsl r1, r1, #4
	str r1, [sp, #0x34]
	ldr r1, [r5, #0x2c]
	lsl r1, r1, #4
	str r1, [sp, #0x38]
	ldr r1, [r5, #0x54]
	cmp r1, #1
	bne _021BDB1C
	sub r1, r7, #1
	mul r1, r0
	str r1, [sp, #0x30]
_021BDB1C:
	ldr r0, [r5, #0x58]
	add r1, sp, #0x30
	bl sub_021BBBB4
	mov r4, #0
	ldr r0, [r5, #0x4c]
	str r4, [r5, #4]
	cmp r0, #1
	bne _021BDB76
	mov r0, #2
	bl sub_02005748
	add r1, r5, #0
	add r1, #0x50
	lsl r0, r0, #0x10
	ldrh r1, [r1]
	lsr r0, r0, #0x10
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0x78
	ldr r0, [r5, #0x58]
	bls _021BDB56
	mov r1, #1
	b _021BDB58
_021BDB56:
	add r1, r4, #0
_021BDB58:
	bl ovy209_21bbc7c
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0x7d
	bls _021BDB76
	mov r0, #0x78
	bl sub_02005748
	mov r1, #3
	blx sub_0208D868
	add r5, #0x50
	strh r0, [r5]
_021BDB76:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BDB7C: .word FX_SinCosTable_
	thumb_func_end ovy209_21bda58

	thumb_func_start ovy209_21bdb80
ovy209_21bdb80: ; 0x021BDB80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x13
	str r0, [sp, #0x18]
	mov r0, #5
	lsl r0, r0, #0xd
	str r0, [sp, #0x20]
	mov r0, #5
	lsl r0, r0, #0xe
	add r5, r1, #0
	mov r7, #0
	str r0, [sp, #0x1c]
_021BDB9C:
	ldr r0, [r5, #0x54]
	str r7, [sp, #0x14]
	cmp r0, #1
	bne _021BDBC4
	cmp r7, #7
	bne _021BDBAC
	mov r0, #8
	b _021BDBC2
_021BDBAC:
	cmp r7, #8
	bne _021BDBB4
	mov r0, #7
	b _021BDBC2
_021BDBB4:
	cmp r7, #0
	bne _021BDBBC
	mov r0, #1
	b _021BDBC2
_021BDBBC:
	cmp r7, #1
	bne _021BDBC4
	mov r0, #0
_021BDBC2:
	str r0, [sp, #0x14]
_021BDBC4:
	lsl r4, r7, #2
	add r0, r5, r4
	add r0, #0x84
	ldr r1, [r0]
	cmp r1, #0
	beq _021BDBF8
	add r0, r5, r4
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #1
	bne _021BDBF8
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021BDBE6
	ldr r0, [r5, #8]
	cmp r0, #1
	beq _021BDBE8
_021BDBE6:
	b _021BDDA2
_021BDBE8:
	ldr r0, [r5, #0x58]
	ldr r1, [sp, #0x14]
	bl sub_021BBCA8
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #1
	beq _021BDBFA
_021BDBF8:
	b _021BDDAC
_021BDBFA:
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bge _021BDC04
	mov r0, #1
	b _021BDC06
_021BDC04:
	mov r0, #0
_021BDC06:
	str r0, [sp, #4]
	ldrh r1, [r6, #0x34]
	mov r0, #1
	lsl r0, r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #1
	ldrh r1, [r6, #0x36]
	lsl r0, r0, #0x10
	add r0, r1, r0
	add r1, r5, r4
	add r1, #0xa8
	ldr r2, [r1]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r0, r0, r1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x58]
	bl sub_021BBCB4
	ldr r0, [r6, #0x1c]
	ldr r1, _021BDDEC ; =FX_SinCosTable_ ; 0x020946BC
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _021BDDEC ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r1, r2]
	add r3, r0, r2
	mov r2, #2
	ldrsh r2, [r3, r2]
	add r0, sp, #0x3c
	neg r1, r1
	bl MTX_RotZ33_
	add r0, r6, #0
	add r0, #0x10
	add r1, sp, #0x3c
	add r2, sp, #0x24
	blx MTX_MultVec33
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021BDC80
	mov r1, #1
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_021BDC80:
	add r0, r5, r4
	add r0, #0x84
	ldr r0, [r0]
	bl sub_021BB5D8
	cmp r0, #0
	bne _021BDC9A
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021BDC9A
	ldr r0, [sp, #0xc]
	neg r0, r0
	str r0, [sp, #0xc]
_021BDC9A:
	add r0, r6, #0
	add r0, #0x28
	add r1, sp, #0x3c
	add r2, sp, #0x30
	blx MTX_MultVec33
	add r0, r6, #0
	add r1, sp, #0x30
	add r0, #0x28
	add r2, r1, #0
	bl VEC_Subtract
	ldr r1, [sp]
	ldr r0, _021BDDF0 ; =0x00000434
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021BDCCE
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BDCDC
_021BDCCE:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BDCDC:
	blx sub_0208DA4C
	ldr r2, [r6, #4]
	ldr r1, [sp, #0x24]
	add r2, r2, r1
	ldr r1, [sp, #0x18]
	add r1, r2, r1
	add r0, r1, r0
	str r0, [sp, #0x60]
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x28]
	add r1, r1, r0
	mov r0, #6
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x64]
	add r0, r5, r4
	add r0, #0x84
	ldr r0, [r0]
	bl sub_021BB5CC
	cmp r0, #1
	bne _021BDD12
	ldr r1, [r5, #0x20]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	b _021BDD32
_021BDD12:
	ldr r0, [sp, #0x14]
	ldr r1, [r5, #0x20]
	sub r0, r0, #7
	cmp r0, #1
	bhi _021BDD20
	ldr r0, [sp, #0x20]
	b _021BDD24
_021BDD20:
	mov r0, #5
	lsl r0, r0, #0xc
_021BDD24:
	add r0, r1, r0
	add r1, r5, r4
	add r1, #0xa8
	ldr r1, [r1]
	ldrb r1, [r1, #4]
	lsl r1, r1, #0xb
	sub r0, r0, r1
_021BDD32:
	str r0, [sp, #0x68]
	ldr r0, [sp]
	add r1, r5, r4
	add r1, #0x84
	ldr r0, [r0, #0x10]
	ldr r1, [r1]
	add r2, sp, #0x60
	bl sub_021BB934
	ldr r0, [sp]
	add r1, r5, r4
	add r1, #0x84
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r0, [r0, #0x10]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	ldr r1, [r1]
	lsr r2, r2, #0x10
	bl sub_021BB97C
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	asr r2, r2, #3
	lsr r3, r2, #0x1c
	ldr r2, [sp, #0xc]
	add r1, r5, r4
	add r3, r2, r3
	asr r3, r3, #4
	asr r2, r3, #1
	lsr r2, r2, #0x1e
	add r2, r3, r2
	ldr r6, [r6, #0x20]
	add r1, #0x84
	asr r3, r6, #3
	lsr r3, r3, #0x1c
	add r3, r6, r3
	asr r6, r3, #4
	asr r3, r6, #1
	lsr r3, r3, #0x1e
	add r3, r6, r3
	lsl r2, r2, #0xe
	lsl r3, r3, #0xe
	ldr r0, [r0, #0x10]
	ldr r1, [r1]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_021BB95C
	ldr r0, [sp]
	add r1, r5, r4
	add r1, #0x84
	ldr r0, [r0, #0x10]
	ldr r1, [r1]
	mov r2, #1
	b _021BDDA8
_021BDDA2:
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0x10]
_021BDDA8:
	bl ovy209_21bb914
_021BDDAC:
	add r7, r7, #1
	cmp r7, #9
	bge _021BDDB4
	b _021BDB9C
_021BDDB4:
	ldr r0, [r5, #0x58]
	bl sub_021BBCB4
	ldr r1, [r5, #0x18]
	add r2, sp, #0x60
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0x60]
	mov r0, #3
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0x64]
	mov r0, #0x32
	str r0, [sp, #0x68]
	ldr r0, [sp]
	ldr r1, [r5, #0x5c]
	ldr r0, [r0, #8]
	bl sub_0204EA28
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BDDEC: .word FX_SinCosTable_
_021BDDF0: .word 0x00000434
	thumb_func_end ovy209_21bdb80

	thumb_func_start ovy209_21bddf4
ovy209_21bddf4: ; 0x021BDDF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r5, #0
	mov r4, #0
	add r7, #0x14
_021BDDFE:
	mov r0, #0x42
	lsl r0, r0, #2
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r6
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021BDE22
	add r0, r5, #0
	add r1, r7, r6
	bl sub_021BE974
	cmp r0, #1
	bne _021BDE22
	add r0, r5, #0
	add r1, r7, r6
	bl sub_021BDE2C
_021BDE22:
	add r4, r4, #1
	cmp r4, #4
	blt _021BDDFE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bddf4

	thumb_func_start sub_021BDE2C
sub_021BDE2C: ; 0x021BDE2C
	bx lr
	.align 2, 0
	thumb_func_end sub_021BDE2C

	thumb_func_start ovy209_21bde30
ovy209_21bde30: ; 0x021BDE30
	push {r4, r5}
	ldr r2, _021BDE5C ; =0x00000434
	mov r5, #0
	strh r1, [r0, r2]
	mov r2, #0x42
	mov r3, #1
	lsl r2, r2, #2
_021BDE3E:
	add r1, r5, #0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r4, #0x14]
	cmp r1, #1
	bne _021BDE4C
	str r3, [r4, #0x18]
_021BDE4C:
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, #9
	blo _021BDE3E
	pop {r4, r5}
	bx lr
	nop
_021BDE5C: .word 0x00000434
	thumb_func_end ovy209_21bde30

	thumb_func_start ovy209_21bde60
ovy209_21bde60: ; 0x021BDE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r2, #0x42
	str r1, [sp, #0x10]
	add r5, r0, #0
	mov r1, #0
	lsl r2, r2, #2
_021BDE6E:
	add r0, r1, #0
	mul r0, r2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021BDE84
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #9
	blo _021BDE6E
_021BDE84:
	mov r0, #0x42
	add r3, r5, #0
	lsl r0, r0, #2
	add r2, r1, #0
	add r3, #0x14
	mul r2, r0
	add r1, r3, r2
	mov r6, #1
	str r6, [r3, r2]
	str r1, [sp, #0x14]
	str r6, [r1, #4]
	str r6, [r1, #8]
	ldr r2, [sp, #0x14]
	mov r1, #0
	str r1, [r2, #0xc]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	sub r2, r0, #4
	ldr r0, [sp, #0x14]
	str r1, [r0, r2]
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ovy209_21bba5c
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x58]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldrh r0, [r0, #8]
	ldrb r1, [r1, #0xb]
	ldrh r2, [r5]
	bl sub_02020274
	mov r1, #0x10
	add r4, r0, #0
	bl sub_020202AC
	cmp r0, #1
	bne _021BDED8
	ldr r0, [sp, #0x14]
	str r6, [r0, #0x10]
_021BDED8:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_020202AC
	cmp r0, #1
	bne _021BDEEA
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r1, [r0, #0x14]
_021BDEEA:
	add r0, r4, #0
	bl sub_020202A4
	ldr r0, [sp, #0x14]
	mov r6, #0
	str r6, [r0, #0x18]
	str r6, [r0, #0x1c]
	str r6, [r0, #0x20]
	str r6, [r0, #0x30]
	str r6, [r0, #0x34]
	mov r4, #1
	str r6, [r0, #0x38]
	lsl r4, r4, #0xc
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	str r4, [r0, #0x2c]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldrh r2, [r2, #8]
	add r0, r5, #0
	bl sub_021BE040
	ldr r0, [sp, #0x14]
	add r0, #0x48
	strh r6, [r0]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	lsr r0, r4, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x14
	str r0, [sp, #0x18]
_021BDF30:
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	lsl r2, r6, #2
	add r0, r0, r1
	ldrh r7, [r0, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, [sp, #0x14]
	add r4, r1, r2
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	cmp r7, #0xff
	beq _021BDF90
	add r1, r4, #0
	add r1, #0xcc
	mov r0, #1
	str r0, [r1]
	add r0, r7, #0
	bl ovy209_21bb5e4
	add r2, r0, #0
	str r2, [r4, #0x60]
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x1c]
	add r1, r7, #0
	bl ovy209_21bb630
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r1, r4, #0
	add r1, #0x84
	ldr r2, [sp, #0x20]
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	add r3, r2, #0
	bl sub_021BB95C
	add r4, #0x84
	ldr r0, [r5, #0x10]
	ldr r1, [r4]
	mov r2, #0
	bl ovy209_21bb914
	b _021BDF9E
_021BDF90:
	add r1, r4, #0
	add r1, #0xcc
	mov r0, #0
	str r0, [r1]
	str r0, [r4, #0x60]
	add r4, #0x84
	str r0, [r4]
_021BDF9E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #9
	blo _021BDF30
	ldr r0, [sp, #0x14]
	mov r3, #3
	add r0, #0x18
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _021BDFF0 ; =0x00000438
	ldr r0, [r5, #8]
	ldr r1, [r5, r2]
	sub r2, #0x38
	lsl r3, r3, #8
	bl sub_0204E8CC
	ldr r1, [sp, #0x14]
	mov r4, #1
	str r0, [r1, #0x5c]
	str r4, [sp, #0x24]
	ldr r0, [r5, #8]
	ldr r1, [r1, #0x5c]
	add r2, sp, #0x24
	bl sub_0204EAC8
	mov r0, #0x96
	bl sub_02005748
	lsr r1, r0, #1
	ldr r0, [sp, #0x14]
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	str r4, [r0, #0x4c]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BDFF0: .word 0x00000438
	thumb_func_end ovy209_21bde60

	thumb_func_start ovy209_21bdff4
ovy209_21bdff4: ; 0x021BDFF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [r6, #8]
	ldr r1, [r7, #0x5c]
	bl sub_0204E9D0
	mov r4, #0
_021BE004:
	lsl r0, r4, #2
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x84
	ldr r1, [r0]
	cmp r1, #0
	beq _021BE026
	ldr r0, [r6, #0x10]
	bl ovy209_21bb7e8
	ldr r0, [r5, #0x60]
	bl sub_021BB5F4
	mov r0, #0
	str r0, [r5, #0x60]
	add r5, #0x84
	str r0, [r5]
_021BE026:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #9
	blo _021BE004
	ldr r0, [r6, #0xc]
	ldr r1, [r7, #0x58]
	bl ovy209_21bbb88
	mov r0, #0
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21bdff4

	thumb_func_start sub_021BE040
sub_021BE040: ; 0x021BE040
	cmp r2, #0xe8
	bne _021BE04A
	ldr r0, _021BE1E8 ; =0x00000FB3
	str r0, [r1, #0x24]
	bx lr
_021BE04A:
	mov r0, #0x61
	lsl r0, r0, #2
	cmp r2, r0
	beq _021BE05A
	add r3, r0, #0
	add r3, #0x78
	cmp r2, r3
	bne _021BE062
_021BE05A:
	mov r0, #0x3f
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	bx lr
_021BE062:
	cmp r2, #0x4b
	beq _021BE06E
	cmp r2, #0xcd
	beq _021BE06E
	cmp r2, #0xf5
	bne _021BE074
_021BE06E:
	ldr r0, _021BE1EC ; =0x00000FCC
	str r0, [r1, #0x24]
	bx lr
_021BE074:
	cmp r2, #0x2d
	beq _021BE080
	add r3, r0, #0
	sub r3, #0x42
	cmp r2, r3
	bne _021BE088
_021BE080:
	mov r0, #0x41
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	bx lr
_021BE088:
	cmp r2, #9
	beq _021BE0FC
	cmp r2, #0x21
	beq _021BE0FC
	cmp r2, #0x3d
	beq _021BE0FC
	cmp r2, #0x41
	beq _021BE0FC
	cmp r2, #0x4c
	beq _021BE0FC
	cmp r2, #0x7a
	beq _021BE0FC
	cmp r2, #0x7b
	beq _021BE0FC
	cmp r2, #0x8d
	beq _021BE0FC
	cmp r2, #0xd6
	beq _021BE0FC
	cmp r2, #0xeb
	beq _021BE0FC
	cmp r2, #0xfd
	beq _021BE0FC
	add r3, r0, #0
	sub r3, #0x84
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	sub r3, #0x7c
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	sub r3, #0x6f
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	sub r3, #0x66
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	sub r3, #0x49
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	sub r3, #0x29
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	add r3, #0x2e
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	add r3, #0x38
	cmp r2, r3
	beq _021BE0FC
	add r3, r0, #0
	add r3, #0xf2
	cmp r2, r3
	bne _021BE102
_021BE0FC:
	ldr r0, _021BE1EC ; =0x00000FCC
	str r0, [r1, #0x28]
	bx lr
_021BE102:
	cmp r2, #0x25
	beq _021BE126
	cmp r2, #0xd7
	beq _021BE126
	cmp r2, #0xdb
	beq _021BE126
	add r3, r0, #0
	sub r3, #0x1a
	cmp r2, r3
	beq _021BE126
	add r3, r0, #0
	add r3, #0xcc
	cmp r2, r3
	beq _021BE126
	add r3, r0, #0
	add r3, #0xe0
	cmp r2, r3
	bne _021BE12C
_021BE126:
	ldr r0, _021BE1F0 ; =0x00000FD9
	str r0, [r1, #0x28]
	bx lr
_021BE12C:
	cmp r2, #0x12
	beq _021BE1AA
	cmp r2, #0x35
	beq _021BE1AA
	cmp r2, #0x7e
	beq _021BE1AA
	cmp r2, #0x80
	beq _021BE1AA
	cmp r2, #0x9c
	beq _021BE1AA
	cmp r2, #0x9d
	beq _021BE1AA
	cmp r2, #0xb5
	beq _021BE1AA
	cmp r2, #0xd0
	beq _021BE1AA
	cmp r2, #0xf6
	beq _021BE1AA
	cmp r2, #0xf8
	beq _021BE1AA
	add r3, r0, #0
	sub r3, #0x50
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	sub r3, #0x22
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	sub r3, #0xa
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #5
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0xa
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0x1f
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0x48
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0x9e
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0xad
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0xeb
	cmp r2, r3
	beq _021BE1AA
	add r3, r0, #0
	add r3, #0xff
	cmp r2, r3
	bne _021BE1B0
_021BE1AA:
	ldr r0, _021BE1F4 ; =0x00000FE6
	str r0, [r1, #0x28]
	bx lr
_021BE1B0:
	cmp r2, #0x26
	beq _021BE1BC
	add r3, r0, #0
	sub r3, #0x64
	cmp r2, r3
	bne _021BE1C2
_021BE1BC:
	ldr r0, _021BE1F8 ; =0x00000FF3
	str r0, [r1, #0x28]
	bx lr
_021BE1C2:
	add r3, r0, #0
	add r3, #0x3d
	cmp r2, r3
	bne _021BE1D6
	mov r0, #0x41
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	sub r0, #0x74
	str r0, [r1, #0x28]
	bx lr
_021BE1D6:
	add r0, #0xea
	cmp r2, r0
	bne _021BE1E6
	mov r0, #0x3f
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	add r0, #0xc
	str r0, [r1, #0x28]
_021BE1E6:
	bx lr
	.align 2, 0
_021BE1E8: .word 0x00000FB3
_021BE1EC: .word 0x00000FCC
_021BE1F0: .word 0x00000FD9
_021BE1F4: .word 0x00000FE6
_021BE1F8: .word 0x00000FF3
	thumb_func_end sub_021BE040

	thumb_func_start ovy209_21be1fc
ovy209_21be1fc: ; 0x021BE1FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	lsl r6, r2, #2
	add r5, r0, #0
	add r0, r4, r6
	add r0, #0x84
	ldr r0, [r0]
	str r2, [sp]
	cmp r0, #0
	beq _021BE2B6
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	cmp r0, #0
	bne _021BE2B6
	ldr r0, [r5, #0x10]
	bl sub_021BB9B8
	add r1, r4, r6
	add r1, #0xa8
	ldr r1, [r1]
	ldrh r1, [r1]
	bl sub_021EF170
	add r6, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	mov r2, #0
	add r0, #0xf0
	strh r2, [r0]
	ldr r0, [sp]
	add r1, #0xf4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xf8
	str r2, [r0]
	ldr r0, _021BE2B8 ; =0x021C2DBC
	lsl r1, r6, #2
	ldr r0, [r0, r1]
	mov r1, #2
	bl sub_020061DC
	ldr r0, _021BE2BC ; =0x0000043C
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	cmp r6, #4
	bhi _021BE2B6
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BE268: ; jump table
	.short _021BE272 - _021BE268 - 2 ; case 0
	.short _021BE280 - _021BE268 - 2 ; case 1
	.short _021BE28E - _021BE268 - 2 ; case 2
	.short _021BE29C - _021BE268 - 2 ; case 3
	.short _021BE2AA - _021BE268 - 2 ; case 4
_021BE272:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021BE2E8
	ldr r0, _021BE2C0 ; =ovy209_21be2ec
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BE280:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy209_21be340
	ldr r0, _021BE2C4 ; =ovy209_21be3fc
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BE28E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy209_21be4e4
	ldr r0, _021BE2C8 ; =ovy209_21be584
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BE29C:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy209_21be680
	ldr r0, _021BE2CC ; =ovy209_21be720
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BE2AA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021BE7FC
	ldr r0, _021BE2D0 ; =ovy209_21be800
	str r0, [r4, r7]
_021BE2B6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE2B8: .word 0x021C2DBC
_021BE2BC: .word 0x0000043C
_021BE2C0: .word ovy209_21be2ec
_021BE2C4: .word ovy209_21be3fc
_021BE2C8: .word ovy209_21be584
_021BE2CC: .word ovy209_21be720
_021BE2D0: .word ovy209_21be800
	thumb_func_end ovy209_21be1fc

	thumb_func_start sub_021BE2D4
sub_021BE2D4: ; 0x021BE2D4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BE2E2
	mov r0, #1
	bx lr
_021BE2E2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE2D4

	thumb_func_start sub_021BE2E8
sub_021BE2E8: ; 0x021BE2E8
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE2E8

	thumb_func_start ovy209_21be2ec
ovy209_21be2ec: ; 0x021BE2EC
	push {r3, r4, r5, lr}
	add r2, r1, #0
	add r2, #0xf0
	ldr r2, [r2, #4]
	lsl r2, r2, #2
	add r2, r1, r2
	add r2, #0xa8
	ldr r5, [r2]
	mov r2, #2
	ldrsh r4, [r5, r2]
	lsl r3, r2, #0xb
	add r3, r4, r3
	strh r3, [r5, #2]
	add r3, r1, #0
	add r3, #0xf0
	ldrh r3, [r3]
	add r4, r3, #1
	add r3, r1, #0
	add r3, #0xf0
	strh r4, [r3]
	add r3, r1, #0
	add r3, #0xf0
	ldrh r3, [r3]
	cmp r3, #0xc0
	blo _021BE33A
	mov r3, #0x41
	mov r4, #0
	lsl r3, r3, #2
	str r4, [r1, r3]
	ldr r1, _021BE33C ; =0x0000043C
	ldrb r3, [r0, r1]
	sub r3, r3, #1
	strb r3, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021BE33A
	add r0, r2, #0
	bl sub_02006268
_021BE33A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BE33C: .word 0x0000043C
	thumb_func_end ovy209_21be2ec

	thumb_func_start ovy209_21be340
ovy209_21be340: ; 0x021BE340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r5, r1, #0
	add r4, r5, #0
	ldr r0, [r6, #4]
	add r4, #0xf0
	bl sub_021C02F0
	add r1, r5, #0
	add r1, #0xf4
	str r0, [sp]
	ldr r0, [r5, #0x58]
	ldr r1, [r1]
	bl sub_021BBCA8
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0x35
	bl ovy209_21c040c
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021BE3B2
	ldr r0, [r7]
	cmp r0, #1
	bne _021BE3B2
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	add r2, sp, #4
	bl sub_021BB94C
	ldr r1, [sp, #4]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	mov r0, #3
	ldr r1, [sp, #8]
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #8]
	mov r0, #1
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	b _021BE3EA
_021BE3B2:
	ldr r0, [r5, #0x58]
	bl sub_021BBCBC
	add r5, #0x18
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #4
	bl VEC_Add
	ldr r1, [sp, #4]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	mov r0, #3
	ldr r1, [sp, #8]
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #8]
	mov r0, #7
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	sub r0, r1, r0
_021BE3EA:
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, sp, #4
	bl ovy209_21c04a4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21be340

	thumb_func_start ovy209_21be3fc
ovy209_21be3fc: ; 0x021BE3FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r1, #0xf4
	add r5, r0, #0
	add r4, r6, #0
	ldr r0, [r6, #0x58]
	ldr r1, [r1]
	add r4, #0xf0
	bl sub_021BBCA8
	ldr r1, [r6, #8]
	cmp r1, #1
	bne _021BE458
	ldr r0, [r0]
	cmp r0, #1
	bne _021BE458
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #2
	add r1, r6, r1
	add r1, #0x84
	ldr r1, [r1]
	add r2, sp, #0
	bl sub_021BB94C
	ldr r1, [sp]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp]
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	b _021BE490
_021BE458:
	ldr r0, [r6, #0x58]
	bl sub_021BBCBC
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x18
	add r2, sp, #0
	bl VEC_Add
	ldr r1, [sp]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp]
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	mov r0, #7
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r0, r1, r0
_021BE490:
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, sp, #0
	bl ovy209_21c0500
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0xb4
	blo _021BE4DC
	ldr r0, [r5, #4]
	bl sub_021C02F0
	add r7, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0
	bl ovy209_21c04e4
	ldr r1, [r4, #8]
	add r0, r7, #0
	bl ovy209_21c0488
	mov r1, #0x41
	lsl r1, r1, #2
	mov r0, #0
	str r0, [r6, r1]
	ldr r0, _021BE4E0 ; =0x0000043C
	ldrb r1, [r5, r0]
	sub r1, r1, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021BE4DC
	mov r0, #2
	bl sub_02006268
_021BE4DC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BE4E0: .word 0x0000043C
	thumb_func_end ovy209_21be3fc

	thumb_func_start ovy209_21be4e4
ovy209_21be4e4: ; 0x021BE4E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, #0xf4
	add r6, r0, #0
	add r4, r5, #0
	ldr r0, [r5, #0x58]
	ldr r1, [r1]
	add r4, #0xf0
	bl sub_021BBCA8
	add r2, r5, #0
	add r2, #0xf4
	ldr r2, [r2]
	mov r1, #0
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0xcc
	str r1, [r2]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021BE516
	ldr r0, [r0]
	cmp r0, #0
	bne _021BE546
_021BE516:
	ldr r0, [r5, #0x58]
	bl sub_021BBCBC
	add r1, r0, #0
	add r0, r5, #0
	add r7, sp, #0
	add r0, #0x18
	add r2, r7, #0
	bl VEC_Add
	mov r0, #7
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	add r2, r7, #0
	bl sub_021BB934
_021BE546:
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	mov r2, #1
	mov r7, #1
	bl ovy209_21bb914
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	mov r2, #0
	bl sub_021BB97C
	ldr r1, [r4, #4]
	lsl r2, r7, #0xa
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r1, [r1]
	add r3, r2, #0
	bl sub_021BB95C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21be4e4

	thumb_func_start ovy209_21be584
ovy209_21be584: ; 0x021BE584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xf0
	ldrh r0, [r0]
	add r6, r5, #0
	add r6, #0xf0
	str r0, [sp]
	lsl r0, r0, #9
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BE674 ; =FX_SinCosTable_ ; 0x020946BC
	add r2, sp, #8
	ldrsh r7, [r0, r1]
	ldr r1, [r6, #4]
	ldr r0, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	bl sub_021BB94C
	ldr r0, [sp]
	mov r1, #3
	blx sub_0208D65C
	mov r1, #0xcd
	add r2, r0, #0
	mul r2, r1
	str r1, [sp, #4]
	asr r1, r2, #0x1f
	add r0, r2, #0
	asr r3, r7, #0x1f
	add r2, r7, #0
	blx sub_0208D60C
	mov ip, r0
	mov r0, #0x10
	add r2, r1, #0
	lsl r0, r0, #7
	mov r3, ip
	add r3, r3, r0
	ldr r0, _021BE678 ; =0x00000000
	ldr r1, [sp, #8]
	adc r2, r0
	lsl r0, r2, #0x14
	lsr r2, r3, #0xc
	orr r2, r0
	add r0, r1, r2
	str r0, [sp, #8]
	mov r0, #3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xa
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	add r2, sp, #8
	bl sub_021BB934
	ldr r1, [r6, #4]
	lsl r2, r7, #0xf
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r0, [r4, #0x10]
	ldr r1, [r1]
	lsr r2, r2, #0x10
	bl sub_021BB97C
	add r0, r5, #0
	add r0, #0xf0
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xf0
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0xf0
	ldrh r0, [r0]
	cmp r0, #0xb4
	blo _021BE670
	ldr r1, [r6, #4]
	ldr r0, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	mov r2, #0
	bl ovy209_21bb914
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x37
	str r0, [sp, #4]
	str r1, [r5, r0]
	ldr r0, _021BE67C ; =0x0000043C
	ldrb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021BE670
	mov r0, #2
	bl sub_02006268
_021BE670:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BE674: .word FX_SinCosTable_
_021BE678: .word 0x00000000
_021BE67C: .word 0x0000043C
	thumb_func_end ovy209_21be584

	thumb_func_start ovy209_21be680
ovy209_21be680: ; 0x021BE680
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, #0xf4
	add r6, r0, #0
	add r4, r5, #0
	ldr r0, [r5, #0x58]
	ldr r1, [r1]
	add r4, #0xf0
	bl sub_021BBCA8
	add r2, r5, #0
	add r2, #0xf4
	ldr r2, [r2]
	mov r1, #0
	lsl r2, r2, #2
	add r2, r5, r2
	add r2, #0xcc
	str r1, [r2]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _021BE6B2
	ldr r0, [r0]
	cmp r0, #0
	bne _021BE6D8
_021BE6B2:
	ldr r0, [r5, #0x58]
	bl sub_021BBCBC
	add r1, r0, #0
	add r0, r5, #0
	add r7, sp, #0
	add r0, #0x18
	add r2, r7, #0
	bl VEC_Add
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	add r2, r7, #0
	bl sub_021BB934
_021BE6D8:
	ldr r1, [r4, #4]
	ldr r0, _021BE71C ; =0xFFFFD000
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r4, #0xc]
	add r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r1, [r1]
	mov r2, #1
	mov r7, #1
	bl ovy209_21bb914
	ldr r1, [r4, #4]
	ldr r0, [r6, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r1, [r1]
	mov r2, #0
	bl sub_021BB97C
	ldr r1, [r4, #4]
	lsl r2, r7, #0xa
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r1, [r1]
	add r3, r2, #0
	bl sub_021BB95C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BE71C: .word 0xFFFFD000
	thumb_func_end ovy209_21be680

	thumb_func_start ovy209_21be720
ovy209_21be720: ; 0x021BE720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r4, #0
	add r6, #0xf0
	ldr r1, [r6, #4]
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0x84
	add r7, sp, #4
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	add r2, r7, #0
	bl sub_021BB94C
	ldr r0, [r6, #0xc]
	ldr r1, _021BE7F4 ; =0x00000B33
	add r0, #0xa4
	str r0, [r6, #0xc]
	ldr r2, [sp, #4]
	sub r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r7, #0
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #0xe
	str r0, [sp, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0x84
	ldr r1, [r1]
	bl sub_021BB934
	ldr r1, [r6, #4]
	add r2, sp, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0x84
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	add r2, #2
	add r3, sp, #0
	bl sub_021BB96C
	add r3, sp, #0
	mov r0, #2
	ldrsh r0, [r3, r0]
	mov r7, #0
	mov r2, #2
	add r0, #0xc
	strh r0, [r3, #2]
	ldrsh r0, [r3, r7]
	add r0, #0xc
	strh r0, [r3]
	ldr r1, [r6, #4]
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0x84
	ldrsh r3, [r3, r7]
	ldr r0, [r5, #0x10]
	ldr r1, [r1]
	bl sub_021BB95C
	add r0, r4, #0
	add r0, #0xf0
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldrh r0, [r0]
	cmp r0, #0xb4
	blo _021BE7EE
	ldr r1, [r6, #4]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0x84
	ldr r1, [r1]
	add r2, r7, #0
	bl ovy209_21bb914
	mov r0, #0x41
	lsl r0, r0, #2
	str r7, [r4, r0]
	ldr r0, _021BE7F8 ; =0x0000043C
	ldrb r1, [r5, r0]
	sub r1, r1, #1
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021BE7EE
	mov r0, #2
	bl sub_02006268
_021BE7EE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BE7F4: .word 0x00000B33
_021BE7F8: .word 0x0000043C
	thumb_func_end ovy209_21be720

	thumb_func_start sub_021BE7FC
sub_021BE7FC: ; 0x021BE7FC
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE7FC

	thumb_func_start ovy209_21be800
ovy209_21be800: ; 0x021BE800
	push {r4, r5, r6, lr}
	add r2, r1, #0
	add r3, r2, #0
	add r3, #0xf0
	ldrh r5, [r3]
	add r1, #0xf0
	lsl r3, r5, #0xb
	lsr r6, r3, #0x1f
	lsl r4, r3, #0x10
	sub r4, r4, r6
	mov r3, #0x10
	ror r4, r3
	add r4, r6, r4
	add r6, r5, #1
	add r5, r2, #0
	add r5, #0xf0
	strh r6, [r5]
	add r5, r2, #0
	add r5, #0xf0
	lsl r4, r4, #0x10
	ldrh r5, [r5]
	lsr r4, r4, #0x10
	cmp r5, #0xb4
	blo _021BE84C
	mov r1, #0
	add r3, #0xf4
	str r1, [r2, r3]
	ldr r1, _021BE890 ; =0x0000043C
	ldrb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021BE88C
	mov r0, #2
	bl sub_02006268
	pop {r4, r5, r6, pc}
_021BE84C:
	ldr r1, [r1, #4]
	asr r4, r4, #4
	lsl r1, r1, #2
	add r1, r2, r1
	lsl r4, r4, #1
	lsl r2, r4, #1
	ldr r5, _021BE894 ; =FX_SinCosTable_ ; 0x020946BC
	add r4, r4, #1
	ldrsh r2, [r5, r2]
	lsl r4, r4, #1
	ldrsh r5, [r5, r4]
	asr r6, r2, #2
	lsr r6, r6, #0x1d
	add r6, r2, r6
	asr r4, r5, #2
	lsr r4, r4, #0x1d
	add r4, r5, r4
	lsl r2, r3, #6
	asr r6, r6, #3
	add r1, #0x84
	add r2, r6, r2
	lsl r2, r2, #0x10
	asr r4, r4, #3
	lsl r3, r3, #6
	add r3, r4, r3
	lsl r3, r3, #0x10
	ldr r0, [r0, #0x10]
	ldr r1, [r1]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_021BB95C
_021BE88C:
	pop {r4, r5, r6, pc}
	nop
_021BE890: .word 0x0000043C
_021BE894: .word FX_SinCosTable_
	thumb_func_end ovy209_21be800

	thumb_func_start sub_021BE898
sub_021BE898: ; 0x021BE898
	ldr r0, [r1, #0x18]
	str r0, [r2]
	ldr r0, [r1, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r1, #0x20]
	str r0, [r2, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE898

	thumb_func_start sub_021BE8A8
sub_021BE8A8: ; 0x021BE8A8
	ldr r0, [r2]
	str r0, [r1, #0x18]
	ldr r0, [r2, #4]
	str r0, [r1, #0x1c]
	ldr r0, [r2, #8]
	str r0, [r1, #0x20]
	mov r0, #1
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE8A8

	thumb_func_start sub_021BE8BC
sub_021BE8BC: ; 0x021BE8BC
	add r0, r1, #0
	add r0, #0x48
	strh r2, [r0]
	ldr r0, [r1, #0x10]
	cmp r0, #1
	bne _021BE8D0
	add r0, r1, #0
	mov r2, #0
	add r0, #0x48
	strh r2, [r0]
_021BE8D0:
	mov r0, #1
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BE8BC

	thumb_func_start sub_021BE8D8
sub_021BE8D8: ; 0x021BE8D8
	ldr r0, [r2]
	str r0, [r1, #0x30]
	ldr r0, [r2, #4]
	str r0, [r1, #0x34]
	ldr r0, [r2, #8]
	str r0, [r1, #0x38]
	ldr r0, [r1, #0x10]
	cmp r0, #1
	bne _021BE8EE
	mov r0, #0
	str r0, [r1, #0x34]
_021BE8EE:
	mov r0, #1
	str r0, [r1, #4]
	bx lr
	thumb_func_end sub_021BE8D8

	thumb_func_start ovy209_21be8f4
ovy209_21be8f4: ; 0x021BE8F4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x58]
	bl ovy209_21bbbf4
	mov r0, #1
	str r0, [r4, #0x4c]
	pop {r4, pc}
	thumb_func_end ovy209_21be8f4

	thumb_func_start ovy209_21be904
ovy209_21be904: ; 0x021BE904
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x58]
	bl ovy209_21bbc0c
	mov r1, #0
	ldr r0, [r4, #0x58]
	str r1, [r4, #0x4c]
	bl ovy209_21bbc7c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21be904

	thumb_func_start sub_021BE91C
sub_021BE91C: ; 0x021BE91C
	ldr r0, [r1, #0x58]
	ldr r3, _021BE924 ; =sub_021BBC24
	add r1, r2, #0
	bx r3
	.align 2, 0
_021BE924: .word sub_021BBC24
	thumb_func_end sub_021BE91C

	thumb_func_start ovy209_21be928
ovy209_21be928: ; 0x021BE928
	push {r0, r1, r2, r3}
	thumb_func_end ovy209_21be928

	non_word_aligned_thumb_func_start ovy209_21be92a
ovy209_21be92a: ; 0x021BE92A
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r7, [sp, #0x20]
	add r6, r0, #0
	ldr r0, [r5, #0x58]
	add r1, r7, #0
	bl ovy209_21bbbcc
	mov r4, #0
_021BE93C:
	lsl r2, r4, #2
	add r0, r5, r2
	add r0, #0x84
	ldr r1, [r0]
	cmp r1, #0
	beq _021BE95A
	add r0, r5, r2
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #1
	bne _021BE95A
	ldr r0, [r6, #0x10]
	add r2, r7, #0
	bl ovy209_21bb914
_021BE95A:
	add r4, r4, #1
	cmp r4, #9
	blt _021BE93C
	ldr r0, [r6, #8]
	ldr r1, [r5, #0x5c]
	add r2, sp, #0x20
	bl sub_0204EAC8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy209_21be92a

	thumb_func_start sub_021BE974
sub_021BE974: ; 0x021BE974
	ldr r0, [r1, #0x58]
	ldr r3, _021BE97C ; =ovy209_21bbbe0
	bx r3
	nop
_021BE97C: .word ovy209_21bbbe0
	thumb_func_end sub_021BE974

	thumb_func_start sub_021BE980
sub_021BE980: ; 0x021BE980
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _021BE98C
	mov r0, #0
	str r0, [r1, #0x54]
	b _021BE98E
_021BE98C:
	str r2, [r1, #0x54]
_021BE98E:
	mov r0, #1
	str r0, [r1, #4]
	bx lr
	thumb_func_end sub_021BE980

	thumb_func_start ovy209_21be994
ovy209_21be994: ; 0x021BE994
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x58]
	add r1, r2, #0
	str r2, [r4, #8]
	bl ovy209_21bbc6c
	mov r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ovy209_21be994

	thumb_func_start sub_021BE9A8
sub_021BE9A8: ; 0x021BE9A8
	mov r0, #1
	str r2, [r1, #0xc]
	str r0, [r1, #4]
	bx lr
	thumb_func_end sub_021BE9A8

	thumb_func_start ovy209_21be9b0
ovy209_21be9b0: ; 0x021BE9B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _021BEB60 ; =0x0000011A
	add r5, r0, #0
	str r1, [sp]
	ldr r3, _021BEB64 ; =0x021C30F0
	add r0, r6, #0
	add r1, #0xd6
	mov r2, #1
	mov r7, #1
	bl sub_0203A1FC
	add r4, r0, #0
	strh r6, [r4]
	str r5, [r4, #0x30]
	mov r5, #0
	strh r5, [r4, #2]
	mov r0, #0x7f
	strh r0, [r4, #4]
	mov r1, #0x80
	strh r1, [r4, #6]
	add r0, r4, #0
	strh r5, [r4, #8]
	add r0, #0xb4
	str r5, [r0]
	str r5, [r4, #0x1c]
	add r1, #0xe4
	str r5, [r4, r1]
	str r7, [r4, #0xc]
	str r5, [r4, #0x14]
	str r5, [r4, #0x10]
	str r5, [r4, #0x24]
	str r5, [r4, #0x28]
	ldr r0, _021BEB68 ; =0x021BEEC5
	str r5, [r4, #0x2c]
	add r1, r4, #0
	mov r2, #0x40
	bl sub_020056FC
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x30]
	ldr r0, [r1]
	cmp r0, #0
	bne _021BEA2A
_021BEA08:
	lsl r0, r5, #2
	add r0, r1, r0
	ldr r0, [r0, #4]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BEA18
	strb r5, [r4, #0xa]
	b _021BEA22
_021BEA18:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021BEA08
_021BEA22:
	cmp r5, #4
	bne _021BEA30
	mov r0, #1
	b _021BEA2E
_021BEA2A:
	bl sub_021F0470
_021BEA2E:
	strb r0, [r4, #0xa]
_021BEA30:
	mov r1, #0
	add r5, r1, #0
_021BEA34:
	add r0, r4, r1
	add r0, #0xf7
	strb r5, [r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _021BEA34
	add r0, r4, #0
	bl ovy209_21bfb20
	add r0, r4, #0
	mov r1, #1
	add r0, #0xec
	str r1, [r0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0xf0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf1
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xf2
	strb r1, [r0]
	mov r0, #0x47
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r1, r0, #2
	strh r5, [r4, r1]
	add r1, r0, #0
	add r1, #0x40
	str r5, [r4, r1]
	add r1, r0, #0
	add r1, #0x4c
	add r2, r0, #0
	add r3, r0, #0
	strh r5, [r4, r1]
	mov r6, #0
	add r2, #8
	add r3, #0x20
	add r0, #0x24
_021BEA88:
	lsl r1, r5, #2
	add r1, r4, r1
	add r1, #0xfc
	str r6, [r1]
	lsl r1, r5, #1
	add r1, r4, r1
	strh r6, [r1, r2]
	lsl r1, r5, #3
	add r1, r4, r1
	str r6, [r1, r3]
	str r6, [r1, r0]
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, #4
	blo _021BEA88
	ldrh r1, [r4]
	mov r0, #0x2e
	bl sub_0204AA30
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ovy209_21beecc
	add r0, r4, #0
	bl ovy209_21bf104
	add r0, r4, #0
	bl ovy209_21bf7fc
	add r0, r4, #0
	bl ovy209_21bf2f4
	add r0, r4, #0
	bl ovy209_21bf388
	add r0, r4, #0
	bl ovy209_21bf3b8
	ldrh r0, [r4]
	add r1, r4, #0
	bl ovy209_21bd42c
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	ldrh r0, [r4]
	ldr r2, [r4, #0x30]
	add r1, r4, #0
	bl ovy209_21c051c
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	ldrb r2, [r4, #0xa]
	ldr r3, [r4, #0x30]
	ldrh r0, [r4]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r2, [r2, #4]
	add r1, r4, #0
	bl ovy209_21c0ae0
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	ldrh r0, [r4]
	add r1, r4, #0
	bl ovy209_21c1024
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1]
	add r0, r4, #0
	bl ovy209_21c0224
	ldrh r1, [r4]
	add r0, r6, #0
	bl sub_02042BA8
	add r0, r4, #0
	add r1, r6, #0
	bl ovy209_21bf2b8
	ldr r0, [r4, #0x30]
	mov r1, #0x77
	ldr r0, [r0, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, #0x14]
	str r0, [r4, r1]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x18]
	ldr r2, [r0, #0x18]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	add r0, r1, #0
	add r0, #8
	str r2, [r4, r0]
	ldr r0, _021BEB6C ; =0x02FFFC3C
	add r1, #0x10
	ldr r0, [r0]
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BEB60: .word 0x0000011A
_021BEB64: .word 0x021C30F0
_021BEB68: .word 0x021BEEC5
_021BEB6C: .word 0x02FFFC3C
	thumb_func_end ovy209_21be9b0

	thumb_func_start ovy209_21beb70
ovy209_21beb70: ; 0x021BEB70
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _021BEB80
	bl sub_02005D8C
_021BEB80:
	ldr r0, [r5, #0x28]
	cmp r0, #1
	bne _021BEB8A
	bl sub_02006574
_021BEB8A:
	ldr r0, [r5, #0x24]
	cmp r0, #1
	bne _021BEB94
	bl sub_02006588
_021BEB94:
	ldr r4, _021BECC0 ; =0x0400006C
	mov r6, #0xf
	mvn r6, r6
	add r0, r4, #0
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _021BECC4 ; =0x0400106C
	add r1, r6, #0
	bl GXx_SetMasterBrightness_
	add r0, r4, #0
	mov r3, #0x1f
	sub r0, #0x1c
	mov r1, #0
	mov r2, #0
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	sub r4, #0x6c
	ldr r1, [r4]
	ldr r0, _021BECC8 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r4]
	add r0, r5, #0
	bl sub_021C0238
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl ovy209_21c1088
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	beq _021BEBE2
	bl sub_02048564
_021BEBE2:
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl sub_020487D4
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02048210
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl sub_0203A83C
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy209_21c0b7c
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ovy209_21c057c
	ldr r0, [r5, #0x3c]
	bl ovy209_21bd7a0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ovy209_21bd4d0
	ldr r0, [r5, #0x6c]
	bl ovy209_21c03c4
	ldr r0, [r5, #0x54]
	bl ovy209_21bd278
	ldr r0, [r5, #0x40]
	bl ovy209_21bd974
	ldr r0, [r5, #0x34]
	bl ovy209_21bba08
	ldr r0, [r5, #0x38]
	bl ovy209_21bb3f0
	bl sub_0204B758
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0204E450
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
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
	mov r0, #5
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	bl sub_020480A8
	bl sub_02044528
	ldr r0, [r5, #0x20]
	bl sub_0203A6A8
	ldr r0, [r5, #0x18]
	bl sub_0204AB0C
	add r0, r5, #0
	bl sub_0203A24C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021BECC0: .word 0x0400006C
_021BECC4: .word 0x0400106C
_021BECC8: .word 0xFFFF1FFF
	thumb_func_end ovy209_21beb70

	thumb_func_start ovy209_21beccc
ovy209_21beccc: ; 0x021BECCC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _021BEEBC ; =0x02FFFC3C
	mov r5, #0x7b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r1]
	ldr r2, [r4, r5]
	sub r3, r1, r2
	sub r2, r5, #4
	str r3, [r4, r2]
	str r1, [r4, r5]
	ldr r1, [r4, #0x1c]
	cmp r1, #7
	bhi _021BEDD4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BECF6: ; jump table
	.short _021BED06 - _021BECF6 - 2 ; case 0
	.short _021BED22 - _021BECF6 - 2 ; case 1
	.short _021BED42 - _021BECF6 - 2 ; case 2
	.short _021BED66 - _021BECF6 - 2 ; case 3
	.short _021BED74 - _021BECF6 - 2 ; case 4
	.short _021BED82 - _021BECF6 - 2 ; case 5
	.short _021BED9E - _021BECF6 - 2 ; case 6
	.short _021BEDC2 - _021BECF6 - 2 ; case 7
_021BED06:
	mov r0, #6
	str r0, [sp]
	mov r5, #1
	str r5, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	str r5, [r4, #0x1c]
	b _021BEDD4
_021BED22:
	bl sub_02027ACC
	cmp r0, #1
	bne _021BEDD4
	ldr r1, [r4, #0x30]
	ldr r0, [r1]
	cmp r0, #0
	beq _021BED40
	mov r0, #7
	str r0, [r4, #0x1c]
	ldr r0, [r1]
	mov r1, #0xc8
	bl sub_021EF988
	b _021BEDD4
_021BED40:
	b _021BEDD0
_021BED42:
	bl sub_020062A8
	cmp r0, #0
	bne _021BEDD4
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	mov r0, #3
_021BED64:
	b _021BEDD2
_021BED66:
	bl sub_02027ACC
	cmp r0, #1
	bne _021BEDD4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021BED74:
	ldrh r1, [r4, #2]
	add r0, r1, #1
	strh r0, [r4, #2]
	cmp r1, #0x3c
	blo _021BEDD4
	mov r0, #5
	b _021BED64
_021BED82:
	sub r5, #0x88
	ldr r1, [r4, r5]
	cmp r1, #0
	bne _021BEDD4
	ldr r1, [r4, #0x30]
	ldr r1, [r1, #0x18]
	ldr r2, [r1, #0xc]
	add r1, r4, #0
	add r1, #0xb4
	str r2, [r1]
	bl ovy209_21bf610
	mov r0, #6
	b _021BED64
_021BED9E:
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_021C12AC
	cmp r0, #0
	bne _021BEDD4
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	sub r5, #0x88
	str r1, [r0]
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021BEDBE
	mov r0, #2
	b _021BED64
_021BEDBE:
	mov r0, #0xff
	b _021BED64
_021BEDC2:
	ldr r0, [r4, #0x30]
	mov r1, #0xc8
	ldr r0, [r0]
	bl sub_021EF99C
	cmp r0, #1
	bne _021BEDD4
_021BEDD0:
	mov r0, #4
_021BEDD2:
	str r0, [r4, #0x1c]
_021BEDD4:
	add r0, r4, #0
	bl ovy209_21bf3d8
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl ovy209_21c0bfc
	add r0, r4, #0
	bl ovy209_21bfcc4
	ldr r0, _021BEEC0 ; =ovy209_21c3240
	ldr r0, [r0]
	cmp r0, #0
	bne _021BEDFC
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl ovy209_21c1108
_021BEDFC:
	ldr r0, [r4, #0x3c]
	bl ovy209_21bd7b8
	ldr r0, [r4, #0x40]
	bl ovy209_21bd9b4
	ldr r0, [r4, #0x54]
	bl ovy209_21bd2ac
	ldr r0, [r4, #0x6c]
	bl sub_021C03FC
	add r0, r4, #0
	bl ovy209_21bf8a4
	ldr r0, [r4, #0x34]
	bl sub_021BBA40
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ovy209_21bd504
	add r0, r4, #0
	bl ovy209_21bfa28
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ovy209_21c0594
	add r0, r4, #0
	bl ovy209_21bf6fc
	bl sub_02049A98
	bl sub_02049AF0
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_021BD6C8
	ldr r0, [r4, #0x40]
	bl ovy209_21bddf4
	ldr r0, [r4, #0x34]
	bl sub_021BBA4C
	ldr r0, [r4, #0x40]
	bl ovy209_21bd9e0
	ldr r0, [r4, #0x3c]
	bl ovy209_21bd7e0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xac
	add r1, #0xa8
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0
	bl sub_0204EBB0
	ldr r0, [r4, #0x6c]
	bl sub_021C0404
	add r0, r4, #0
	bl sub_021C037C
	bl sub_02049AA0
	bl sub_0204B794
	ldr r0, [r4, #0x30]
	ldr r0, [r0]
	cmp r0, #0
	beq _021BEEB6
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021BEEB6
	cmp r0, #1
	beq _021BEEB6
	cmp r0, #2
	beq _021BEEB6
	cmp r0, #3
	beq _021BEEB6
	bl sub_020120C8
	cmp r0, #0
	beq _021BEEB6
	mov r0, #2
	str r0, [r4, #0x1c]
_021BEEB6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021BEEBC: .word 0x02FFFC3C
_021BEEC0: .word 0x021c3240
	thumb_func_end ovy209_21beccc
_021BEEC4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy209_21beecc
ovy209_21beecc: ; 0x021BEECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	bl sub_02046CF0
	bl sub_02046D78
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r1, [r4]
	ldr r0, _021BF0A8 ; =0xFFFFE0FF
	ldr r2, _021BF0AC ; =0x04001000
	and r1, r0
	str r1, [r4]
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
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
	ldr r2, _021BF0B0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021BF0B4 ; =0x021C2EF8
	bl sub_02046C40
	ldrh r0, [r5]
	bl sub_020444A4
	ldrh r0, [r5]
	bl sub_02048080
	ldr r0, _021BF0B8 ; =0x021C2DF8
	bl sub_02044710
	ldr r0, _021BF0BC ; =0x021C2E98
	mov r1, #1
	mov r2, #0
	bl ovy209_21bf2d0
	ldr r0, _021BF0C0 ; =0x021C2EB8
	mov r1, #2
	mov r2, #0
	bl ovy209_21bf2d0
	ldr r0, _021BF0C4 ; =0x021C2ED8
	mov r1, #3
	mov r2, #0
	bl ovy209_21bf2d0
	ldr r0, _021BF0C8 ; =0x021C2E18
	mov r1, #5
	mov r2, #0
	bl ovy209_21bf2d0
	ldr r0, _021BF0CC ; =0x021C2E38
	mov r1, #6
	mov r2, #0
	mov r7, #6
	bl ovy209_21bf2d0
	ldr r0, _021BF0D0 ; =0x021C2E58
	mov r1, #4
	mov r2, #0
	mov r6, #4
	bl ovy209_21bf2d0
	ldr r0, _021BF0D4 ; =0x021C2E78
	mov r1, #7
	mov r2, #0
	bl ovy209_21bf2d0
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0
	add r3, r6, #0
	str r0, [sp, #8]
	bl sub_02048D28
	mov r0, #3
	bl sub_02044BB8
	mov r0, #0
	mov r1, #1
	bl sub_02049214
	lsl r0, r6, #0xe
	str r0, [sp]
	lsl r0, r6, #0xa
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021BF0D8 ; =0x021C2DEC
	lsl r1, r7, #0xd
	str r0, [sp, #0x10]
	ldr r0, _021BF0DC ; =0x021C2DD4
	mov r2, #0
	str r0, [sp, #0x14]
	ldr r0, _021BF0E0 ; =0x021C2DE0
	mov r3, #0
	str r0, [sp, #0x18]
	ldrh r0, [r5]
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0204A5C8
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1]
	bl sub_0204A638
	ldr r0, _021BF0E4 ; =0x021C2E08
	bl G3X_SetEdgeColorTable
	add r0, r4, #0
	add r0, #0x60
	ldrh r2, [r0]
	ldr r1, _021BF0E8 ; =0x0000CFDF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021BF0EC ; =0xFFFFCFFF
	add r3, r2, #0
	and r3, r1
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #8
	orr r1, r2
	strh r1, [r0]
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	ldr r3, _021BF0F0 ; =0x021C2F50
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021BF0F4 ; =0x021C2F2C
	str r0, [r2]
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r1, [r5]
	add r0, r6, #0
	bl sub_0204E390
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	add r1, r7, #0
	bl sub_0204E488
	ldrh r2, [r5]
	ldr r0, _021BF0F8 ; =0x02093F08
	ldr r1, _021BF0B4 ; =0x021C2EF8
	bl sub_0204B6A8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x50
	mov r1, #8
	mov r2, #1
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r1, [r4]
	ldr r0, _021BF0FC ; =0xFFFF1FFF
	and r1, r0
	mov r0, #8
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r4]
	add r4, #0x4a
	ldrh r1, [r4]
	ldr r0, _021BF100 ; =0xFFFFC0FF
	and r1, r0
	mov r0, #0x17
	lsl r0, r0, #8
	orr r1, r0
	mov r0, #8
	lsl r0, r0, #0xa
	orr r0, r1
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x1f
	orr r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r4]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF0A8: .word 0xFFFFE0FF
_021BF0AC: .word 0x04001000
_021BF0B0: .word 0x04000304
_021BF0B4: .word 0x021C2EF8
_021BF0B8: .word 0x021C2DF8
_021BF0BC: .word 0x021C2E98
_021BF0C0: .word 0x021C2EB8
_021BF0C4: .word 0x021C2ED8
_021BF0C8: .word 0x021C2E18
_021BF0CC: .word 0x021C2E38
_021BF0D0: .word 0x021C2E58
_021BF0D4: .word 0x021C2E78
_021BF0D8: .word 0x021C2DEC
_021BF0DC: .word 0x021C2DD4
_021BF0E0: .word 0x021C2DE0
_021BF0E4: .word 0x021C2E08
_021BF0E8: .word 0x0000CFDF
_021BF0EC: .word 0xFFFFCFFF
_021BF0F0: .word 0x021C2F50
_021BF0F4: .word 0x021C2F2C
_021BF0F8: .word 0x02093F08
_021BF0FC: .word 0xFFFF1FFF
_021BF100: .word 0xFFFFC0FF
	thumb_func_end ovy209_21beecc

	thumb_func_start ovy209_21bf104
ovy209_21bf104: ; 0x021BF104
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	mov r7, #0x20
	str r7, [sp]
	add r5, r0, #0
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #2
	mov r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r2, #0
	mov r3, #0x20
	bl sub_0204B124
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #8
	mov r2, #3
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xe
	mov r2, #3
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #3
	mov r2, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r3, #0
	bl sub_0204B124
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #9
	mov r2, #2
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xf
	mov r2, #2
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r3, #0
	mov r6, #5
	bl sub_0204B0D4
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xd
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	add r3, r4, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x11
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	add r3, r4, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xc
	mov r2, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	add r3, r4, #0
	bl sub_0204ADA8
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x10
	mov r2, #6
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	add r3, r4, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0xb
	mov r2, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	add r3, r4, #0
	bl sub_0204ADA8
	ldr r6, _021BF2B0 ; =0x05000400
	ldr r1, _021BF2B4 ; =0x0000016A
	add r0, r6, #0
	add r1, r5, r1
	add r2, r7, #0
	blx MIi_CpuCopy16
	add r6, #0x20
	add r0, r6, #0
	add r1, sp, #0x18
	add r2, r7, #0
	blx MIi_CpuCopy16
	ldr r0, _021BF2B4 ; =0x0000016A
	ldr r7, _021BF2B4 ; =0x0000016A
	add r0, #0x20
	mov ip, r0
	ldr r0, _021BF2B4 ; =0x0000016A
	add r7, #0x40
	str r0, [sp, #0x14]
	add r0, #0x30
	str r0, [sp, #0x14]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0x10]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
_021BF236:
	lsl r0, r4, #1
	ldr r1, _021BF2B4 ; =0x0000016A
	add r2, r5, r0
	ldrh r2, [r2, r1]
	add r1, sp, #0x18
	ldrh r6, [r1, r0]
	mov r0, #0x1f
	mov r3, #0x1f
	and r0, r6
	and r3, r2
	lsl r0, r0, #0x18
	lsl r3, r3, #0x18
	lsr r0, r0, #0x18
	lsr r3, r3, #0x18
	sub r3, r0, r3
	add r1, r5, r4
	mov r0, ip
	strb r3, [r1, r0]
	mov r0, #0x3e
	mov r3, #0x3e
	lsl r0, r0, #4
	lsl r3, r3, #4
	and r0, r6
	and r3, r2
	lsl r0, r0, #0x13
	lsl r3, r3, #0x13
	lsr r0, r0, #0x18
	lsr r3, r3, #0x18
	sub r3, r0, r3
	ldr r0, [sp, #0x14]
	strb r3, [r1, r0]
	ldr r0, [sp, #0x10]
	and r0, r6
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0xc]
	and r0, r2
	asr r0, r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r3, r0
	strb r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x10
	blo _021BF236
	mov r0, #3
	bl sub_02044F90
	mov r0, #5
	bl sub_02044F90
	ldrh r0, [r5]
	add r1, r5, #0
	bl ovy209_21bd778
	str r0, [r5, #0x3c]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF2B0: .word 0x05000400
_021BF2B4: .word 0x0000016A
	thumb_func_end ovy209_21bf104

	thumb_func_start ovy209_21bf2b8
ovy209_21bf2b8: ; 0x021BF2B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x14]
	bl sub_02152614
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ovy209_21bd804
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bf2b8

	thumb_func_start ovy209_21bf2d0
ovy209_21bf2d0: ; 0x021BF2D0
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0204476C
	add r0, r4, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02045708
	add r0, r4, #0
	bl sub_02044F90
	pop {r4, pc}
	thumb_func_end ovy209_21bf2d0

	thumb_func_start ovy209_21bf2f4
ovy209_21bf2f4: ; 0x021BF2F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r3, _021BF384 ; =0x021C2F38
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldrh r0, [r5]
	bl ovy209_21bb9bc
	mov r1, #2
	lsl r1, r1, #0x10
	str r0, [r5, #0x34]
	bl sub_021BBC90
	add r0, r5, #0
	add r0, #0xac
	ldrh r2, [r5]
	ldr r0, [r0]
	mov r1, #0x24
	bl ovy209_21bb368
	str r0, [r5, #0x38]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	add r1, r5, #0
	str r0, [sp]
	ldrh r0, [r5]
	ldr r2, [r5, #0x34]
	ldr r3, [r5, #0x38]
	bl ovy209_21bd8f0
	mov r1, #0
	str r0, [r5, #0x40]
	add r4, r1, #0
_021BF340:
	lsl r0, r1, #2
	add r0, r5, r0
	str r4, [r0, #0x44]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _021BF340
	mov r7, #0x1e
	lsl r7, r7, #0xc
_021BF354:
	ldr r1, [r5, #0x30]
	lsl r2, r4, #2
	add r1, r1, r2
	ldr r0, [r5, #0x40]
	ldr r1, [r1, #4]
	add r6, r5, r2
	bl ovy209_21bde60
	add r1, r0, #0
	str r1, [r6, #0x44]
	ldr r0, [r5, #0x40]
	add r2, sp, #4
	bl sub_021BE8A8
	ldr r0, [sp, #0xc]
	sub r0, r0, r7
	str r0, [sp, #0xc]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BF354
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF384: .word 0x021C2F38
	thumb_func_end ovy209_21bf2f4

	thumb_func_start ovy209_21bf388
ovy209_21bf388: ; 0x021BF388
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r2, #0
	add r0, sp, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	add r1, r2, #0
_021BF39A:
	lsl r0, r2, #2
	add r0, r4, r0
	add r2, r2, #1
	str r1, [r0, #0x58]
	cmp r2, #5
	blt _021BF39A
	add r1, r4, #0
	add r1, #0xac
	ldrh r0, [r4]
	ldr r1, [r1]
	bl ovy209_21bd238
	str r0, [r4, #0x54]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy209_21bf388

	thumb_func_start ovy209_21bf3b8
ovy209_21bf3b8: ; 0x021BF3B8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	bl ovy209_21c0380
	mov r2, #0
	str r0, [r4, #0x6c]
	add r1, r2, #0
_021BF3C8:
	lsl r0, r2, #2
	add r0, r4, r0
	add r2, r2, #1
	str r1, [r0, #0x70]
	cmp r2, #8
	blt _021BF3C8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21bf3b8

	thumb_func_start ovy209_21bf3d8
ovy209_21bf3d8: ; 0x021BF3D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl sub_0203DF20
	mov r1, #0x10
	tst r0, r1
	beq _021BF3FC
	ldrh r0, [r5, #6]
	add r2, r0, #2
	add r0, r1, #0
	add r0, #0xf0
	cmp r2, r0
	bge _021BF3F8
	strh r2, [r5, #6]
	b _021BF3FC
_021BF3F8:
	add r1, #0xf0
	strh r1, [r5, #6]
_021BF3FC:
	bl sub_0203DF20
	mov r1, #0x20
	tst r0, r1
	beq _021BF414
	ldrh r0, [r5, #6]
	sub r0, r0, #2
	cmp r0, #0
	ble _021BF410
	b _021BF412
_021BF410:
	mov r0, #0
_021BF412:
	strh r0, [r5, #6]
_021BF414:
	bl sub_0203DF20
	mov r1, #0x30
	tst r0, r1
	bne _021BF4A4
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021BF4A4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021BF4A4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021BF4A4
	add r0, r5, #0
	add r0, #0xf2
	ldrb r1, [r0]
	cmp r1, #4
	bne _021BF45A
	add r0, r5, #0
	add r0, #0xf1
	ldrb r0, [r0]
	cmp r0, #4
	bne _021BF446
	ldrb r0, [r5, #0xa]
_021BF446:
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r1, [r0, #0x44]
	cmp r1, #0
	beq _021BF48A
	ldr r0, [r5, #0x40]
	add r2, sp, #0x18
	bl sub_021BE898
	b _021BF46E
_021BF45A:
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x18
	bl sub_021BD758
_021BF46E:
	ldr r0, [sp, #0x18]
	blx sub_0208D374
	ldr r1, _021BF604 ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0x43
	lsl r1, r1, #0x18
	blx sub_0208E144
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_021BF48A:
	mov r0, #1
	lsl r0, r0, #8
	cmp r4, r0
	ble _021BF496
	add r4, r0, #0
	b _021BF49C
_021BF496:
	cmp r4, #0
	bge _021BF49C
	mov r4, #0
_021BF49C:
	ldrh r0, [r5, #4]
	cmp r4, r0
	beq _021BF4A4
	strh r4, [r5, #6]
_021BF4A4:
	ldrh r3, [r5, #6]
	ldrh r2, [r5, #4]
	cmp r3, r2
	bne _021BF4AE
	b _021BF5EA
_021BF4AE:
	ldr r6, _021BF608 ; =0x021C2F44
	add r4, sp, #0xc
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r6]
	add r1, sp, #0
	str r0, [r4]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r2, r3
	bls _021BF4D8
	cmp r2, #4
	bls _021BF4D6
	sub r0, r2, #4
	cmp r0, r3
	ble _021BF4D6
_021BF4D2:
	strh r0, [r5, #4]
	b _021BF4E6
_021BF4D6:
	b _021BF4E4
_021BF4D8:
	cmp r2, r3
	bhs _021BF4E6
	add r0, r2, #4
	cmp r0, r3
	bge _021BF4E4
	b _021BF4D2
_021BF4E4:
	strh r3, [r5, #4]
_021BF4E6:
	ldrh r4, [r5, #4]
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r6, _021BF60C ; =0x41800000
	add r1, r6, #0
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _021BF51E
	add r0, r4, #0
	blx sub_0208D3BC
	add r1, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021BF604 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BF53A
_021BF51E:
	add r0, r4, #0
	blx sub_0208D3BC
	add r1, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021BF604 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BF53A:
	blx sub_0208DA4C
	str r0, [sp, #0xc]
	ldrh r4, [r5, #4]
	add r0, r4, #0
	blx sub_0208D3BC
	ldr r6, _021BF60C ; =0x41800000
	add r1, r6, #0
	blx sub_0208E3C8
	mov r1, #0
	blx sub_0208D1D0
	bls _021BF578
	add r0, r4, #0
	blx sub_0208D3BC
	add r1, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021BF604 ; =0x45800000
	blx sub_0208DD34
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021BF594
_021BF578:
	add r0, r4, #0
	blx sub_0208D3BC
	add r1, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	ldr r0, _021BF604 ; =0x45800000
	blx sub_0208DD34
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021BF594:
	blx sub_0208DA4C
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, sp, #0xc
	bl sub_0204A65C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, sp, #0
	bl sub_0204A69C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_0204A638
	ldrh r2, [r5, #4]
	mov r0, #2
	mov r1, #0
	bl sub_02044CFC
	ldrh r1, [r5, #4]
	ldr r0, [r5, #0x3c]
	bl sub_021BD8EC
	ldrh r1, [r5, #4]
	ldr r0, [r5, #0x40]
	bl ovy209_21bde30
	ldrh r1, [r5, #4]
	ldr r0, [r5, #0x54]
	bl ovy209_21bd344
	add r0, r5, #0
	add r0, #0xb8
	ldrh r1, [r5, #4]
	ldr r0, [r0]
	bl ovy209_21c0aac
_021BF5EA:
	ldrh r0, [r5, #8]
	cmp r0, #0xe0
	bne _021BF5F4
	mov r0, #0
	str r0, [r5, #0xc]
_021BF5F4:
	ldrh r2, [r5, #8]
	mov r0, #2
	mov r1, #3
	bl sub_02044CFC
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021BF604: .word 0x45800000
_021BF608: .word 0x021C2F44
_021BF60C: .word 0x41800000
	thumb_func_end ovy209_21bf3d8

	thumb_func_start ovy209_21bf610
ovy209_21bf610: ; 0x021BF610
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021BF66C ; =0x021C2F28
	add r6, r0, #0
	add r0, #0xb4
	ldr r5, [r0]
	ldrb r2, [r1]
	add r0, sp, #0
	add r7, sp, #0
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r1, [r1, #3]
	mov r2, #1
	strb r1, [r0, #3]
	add r0, r6, #0
	add r0, #0xb0
	ldr r1, [r5]
	ldr r0, [r0]
	add r1, r5, r1
	bl ovy209_21c11a4
	mov r4, #0
_021BF640:
	ldrb r0, [r7, r4]
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [r5]
	cmp r0, r1
	beq _021BF660
	add r2, r6, #0
	add r0, r6, #0
	add r2, #0xb4
	add r0, #0xb0
	ldr r2, [r2]
	ldr r0, [r0]
	add r1, r2, r1
	mov r2, #1
	bl ovy209_21c11a4
_021BF660:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BF640
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF66C: .word 0x021C2F28
	thumb_func_end ovy209_21bf610

	thumb_func_start ovy209_21bf670
ovy209_21bf670: ; 0x021BF670
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r3, [r5]
	ldr r0, [r5, #0x18]
	add r4, r2, #0
	add r1, #0x37
	mov r2, #0
	mov r6, #0
	bl sub_0204B600
	add r1, r0, #0
	ldr r2, [r5, #0x30]
	lsl r0, r4, #2
	add r0, r2, r0
	ldr r0, [r0, #4]
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0x46
	blo _021BF6AA
	mov r3, #1
	lsl r3, r4
	add r5, #0xb0
	lsl r3, r3, #0x18
	ldr r0, [r5]
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ovy209_21c123c
	pop {r4, r5, r6, pc}
_021BF6AA:
	cmp r0, #0x28
	blo _021BF6C2
	mov r3, #1
	lsl r3, r4
	add r5, #0xb0
	lsl r3, r3, #0x18
	ldr r0, [r5]
	mov r2, #1
	lsr r3, r3, #0x18
	bl ovy209_21c123c
	pop {r4, r5, r6, pc}
_021BF6C2:
	mov r3, #1
	lsl r3, r4
	add r5, #0xb0
	lsl r3, r3, #0x18
	ldr r0, [r5]
	mov r2, #2
	lsr r3, r3, #0x18
	bl ovy209_21c123c
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21bf670

	thumb_func_start ovy209_21bf6d8
ovy209_21bf6d8: ; 0x021BF6D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r3, [r5]
	ldr r0, [r5, #0x18]
	add r4, r2, #0
	add r1, #0x4b
	mov r2, #0
	bl sub_0204B600
	add r5, #0xb0
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #0
	add r3, r4, #0
	bl ovy209_21c123c
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21bf6d8

	thumb_func_start ovy209_21bf6fc
ovy209_21bf6fc: ; 0x021BF6FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0x5a
	lsl r1, r1, #2
	ldrh r3, [r0, r1]
	str r0, [sp]
	add r0, r1, #0
	sub r0, #8
	add r2, r3, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r2, r0
	blt _021BF71C
	ldr r0, _021BF7F0 ; =0x0000FEA0
	sub r2, r3, r0
	b _021BF722
_021BF71C:
	add r0, r1, #0
	sub r0, #8
	add r2, r3, r0
_021BF722:
	ldr r0, [sp]
	strh r2, [r0, r1]
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [sp]
	str r0, [sp, #4]
	ldrh r0, [r1, r0]
	mov r3, #0
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021BF7F4 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r4, r0, #1
	ldr r0, [sp, #4]
	add r0, r0, #2
	mov ip, r0
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	add r0, #0x42
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x22
	str r0, [sp, #0x10]
	mov r0, #0x1f
	lsl r0, r0, #0xa
	lsr r0, r0, #5
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #8]
	add r0, #0x32
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x52
	str r0, [sp, #4]
_021BF772:
	ldr r0, [sp]
	lsl r1, r3, #1
	ldr r5, [sp, #0x14]
	add r2, r0, r3
	add r7, r0, r1
	mov r0, ip
	ldrh r1, [r7, r0]
	ldrsb r5, [r2, r5]
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r1
	mul r5, r4
	asr r0, r0, #0xa
	asr r5, r5, #0xc
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	asr r5, r5, #0x18
	add r0, r0, r5
	ldr r5, [sp, #0x10]
	lsl r6, r0, #0xa
	ldrsb r5, [r2, r5]
	mov r0, #0x1f
	and r0, r1
	mul r5, r4
	asr r5, r5, #0xc
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	asr r5, r5, #0x18
	add r0, r0, r5
	ldr r5, [sp, #0xc]
	and r1, r5
	lsl r1, r1, #0x13
	lsr r5, r1, #0x18
	ldr r1, [sp, #8]
	ldrsb r1, [r2, r1]
	mul r1, r4
	asr r1, r1, #0xc
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	add r1, r5, r1
	lsl r1, r1, #5
	orr r0, r1
	add r1, r6, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r7, r0]
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x10
	blo _021BF772
	ldr r3, _021BF7F8 ; =0x000001BA
	ldr r2, [sp]
	mov r0, #0x1f
	add r2, r2, r3
	mov r1, #0
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BF7F0: .word 0x0000FEA0
_021BF7F4: .word FX_SinCosTable_
_021BF7F8: .word 0x000001BA
	thumb_func_end ovy209_21bf6fc

	thumb_func_start ovy209_21bf7fc
ovy209_21bf7fc: ; 0x021BF7FC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	mov r1, #4
	str r1, [sp]
	mov r6, #0xf
	add r5, r0, #0
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	mov r2, #0x14
	mov r3, #0x18
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	bl sub_02048244
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0204826C
	mov r0, #1
	bl sub_02044F90
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r4, #0
	bl sub_02022D58
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1]
	ldr r0, [r5, #0x30]
	ldrh r1, [r5]
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #8]
	bl sub_020487FC
	add r1, r5, #0
	add r1, #0xdc
	str r0, [r1]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r6, #5
	bl sub_0204B0B8
	ldrh r0, [r5]
	mov r3, #3
	mov r2, #3
	add r1, r0, #0
	add r3, #0xfd
	bl sub_0203A78C
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xd8
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xe0
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xe4
	str r4, [r0]
	ldrh r0, [r5]
	bl sub_02021998
	add r5, #0xe8
	str r0, [r5]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy209_21bf7fc

	thumb_func_start ovy209_21bf8a4
ovy209_21bf8a4: ; 0x021BF8A4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl sub_0203A7F4
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BF8D4
	bl sub_020223B4
	cmp r0, #2
	bne _021BF8D4
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	bl sub_020223CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0]
_021BF8D4:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	bne _021BF906
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021A3C
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021C0C
	cmp r0, #1
	bne _021BF906
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02048244
	mov r0, #0
	add r4, #0xe4
	str r0, [r4]
_021BF906:
	pop {r4, pc}
	thumb_func_end ovy209_21bf8a4

	thumb_func_start ovy209_21bf908
ovy209_21bf908: ; 0x021BF908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _021BF926
	bl sub_020223CC
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0]
_021BF926:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	beq _021BF93C
	bl sub_02048564
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
_021BF93C:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	mov r7, #0
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1]
	cmp r4, #0xff
	beq _021BF99C
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	add r3, r5, #0
	str r0, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0xcc
	ldr r0, [r0]
	add r3, #0xe0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r7, [sp, #0x14]
	add r0, #0xd0
	ldr r0, [r0]
	ldr r3, [r3]
	bl sub_02022268
	add r5, #0xd8
	add sp, #0x18
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021BF99C:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02021C54
	add r0, r5, #0
	mov r1, #1
	add r0, #0xe4
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_02048564
	add r5, #0xe0
	str r7, [r5]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bf908

	thumb_func_start ovy209_21bf9e0
ovy209_21bf9e0: ; 0x021BF9E0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021BF9F8
	bl sub_020223CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0]
_021BF9F8:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	beq _021BFA0E
	bl sub_02048564
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe0
	str r1, [r0]
_021BFA0E:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r4, #0xd0
	ldr r0, [r4]
	bl sub_02048244
	pop {r4, pc}
	thumb_func_end ovy209_21bf9e0

	thumb_func_start ovy209_21bfa28
ovy209_21bfa28: ; 0x021BFA28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	bne _021BFAFA
	mov r7, #0
	mov r6, #0
	add r4, r7, #0
_021BFA3A:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021C0A88
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021BFA3A
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0xff
	bl sub_021C0A9C
	add r0, r5, #0
	mov r1, #4
	add r0, #0xf1
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xf2
	strb r1, [r0]
_021BFA6C:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021BFA80
	add r0, r7, #1
	lsl r0, r0, #0x18
	str r4, [sp]
	lsr r7, r0, #0x18
_021BFA80:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BFA6C
	mov r0, #0x47
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #4
	bhs _021BFAA8
_021BFA94:
	add r0, r5, #0
	add r0, #0xf1
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r2, #1
	bl sub_021C0A88
	b _021BFAF4
_021BFAA8:
	add r0, r5, #0
	add r0, #0xf0
	ldrb r1, [r0]
	cmp r1, #4
	bhs _021BFAB4
	b _021BFA94
_021BFAB4:
	cmp r7, #1
	bne _021BFACE
	add r1, r5, #0
	ldr r0, [sp]
	add r1, #0xf2
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	ldr r1, [sp]
	bl sub_021C0A9C
	b _021BFAF4
_021BFACE:
	mov r4, #0
	mov r6, #1
_021BFAD2:
	add r0, r5, r4
	add r0, #0xf3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021BFAEA
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_021C0A88
_021BFAEA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BFAD2
_021BFAF4:
	mov r0, #0
	add r5, #0xec
	str r0, [r5]
_021BFAFA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bfa28

	thumb_func_start sub_021BFAFC
sub_021BFAFC: ; 0x021BFAFC
	cmp r2, #1
	bne _021BFB08
	add r2, r0, #0
	add r2, #0xf0
	strb r1, [r2]
	b _021BFB10
_021BFB08:
	add r1, r0, #0
	mov r2, #4
	add r1, #0xf0
	strb r2, [r1]
_021BFB10:
	mov r1, #1
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BFAFC

	thumb_func_start sub_021BFB18
sub_021BFB18: ; 0x021BFB18
	mov r1, #1
	add r0, #0xec
	str r1, [r0]
	bx lr
	thumb_func_end sub_021BFB18

	thumb_func_start ovy209_21bfb20
ovy209_21bfb20: ; 0x021BFB20
	push {r4, r5, r6, r7}
	mov r2, #0
	add r6, r2, #0
_021BFB26:
	add r1, r0, r2
	add r1, #0xf3
	strb r6, [r1]
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #4
	blo _021BFB26
	mov r3, #0
_021BFB38:
	ldr r2, [r0, #0x30]
	lsl r1, r6, #2
	add r1, r2, r1
	ldr r1, [r1, #4]
	add r4, r3, #0
	add r1, #0x4a
	ldrh r2, [r1]
	add r1, r0, r6
	add r1, #0xf7
	ldrb r1, [r1]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	add r1, r0, r6
	add r1, #0xf3
_021BFB56:
	cmp r6, r4
	beq _021BFB7C
	ldr r7, [r0, #0x30]
	lsl r2, r4, #2
	add r2, r7, r2
	ldr r2, [r2, #4]
	add r7, r0, r4
	add r2, #0x4a
	add r7, #0xf7
	ldrh r2, [r2]
	ldrb r7, [r7]
	add r2, r2, r7
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, r5
	bls _021BFB7C
	ldrb r2, [r1]
	add r2, r2, #1
	strb r2, [r1]
_021BFB7C:
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #4
	blo _021BFB56
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	cmp r6, #4
	blo _021BFB38
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ovy209_21bfb20

	thumb_func_start sub_021BFB94
sub_021BFB94: ; 0x021BFB94
	add r2, r1, #0
	mov r1, #0x77
	add r3, r0, #0
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r3, #0x24]
	ldr r0, [r3, r1]
	add r1, r1, #4
	ldr r1, [r3, r1]
	ldr r3, _021BFBAC ; =sub_020064B8
	bx r3
	nop
_021BFBAC: .word sub_020064B8
	thumb_func_end sub_021BFB94

	thumb_func_start sub_021BFBB0
sub_021BFBB0: ; 0x021BFBB0
	mov r2, #1
	str r2, [r0, #0x28]
	ldr r3, _021BFBBC ; =sub_02006564
	add r0, r1, #0
	bx r3
	nop
_021BFBBC: .word sub_02006564
	thumb_func_end sub_021BFBB0

	thumb_func_start sub_021BFBC0
sub_021BFBC0: ; 0x021BFBC0
	ldr r3, _021BFBC8 ; =sub_02006574
	mov r1, #0
	str r1, [r0, #0x28]
	bx r3
	.align 2, 0
_021BFBC8: .word sub_02006574
	thumb_func_end sub_021BFBC0

	thumb_func_start ovy209_21bfbcc
ovy209_21bfbcc: ; 0x021BFBCC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0x79
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	bl sub_02006528
	pop {r4, pc}
	thumb_func_end ovy209_21bfbcc

	thumb_func_start sub_021BFBE0
sub_021BFBE0: ; 0x021BFBE0
	mov r2, #1
	str r2, [r0, #0x2c]
	add r0, r1, #0
	ldr r1, _021BFBEC ; =0x0000FFFF
	ldr r3, _021BFBF0 ; =sub_02005DF4
	bx r3
	.align 2, 0
_021BFBEC: .word 0x0000FFFF
_021BFBF0: .word sub_02005DF4
	thumb_func_end sub_021BFBE0

	thumb_func_start sub_021BFBF4
sub_021BFBF4: ; 0x021BFBF4
	ldr r3, _021BFBFC ; =sub_02005D8C
	mov r1, #0
	str r1, [r0, #0x2c]
	bx r3
	.align 2, 0
_021BFBFC: .word sub_02005D8C
	thumb_func_end sub_021BFBF4

	thumb_func_start ovy209_21bfc00
ovy209_21bfc00: ; 0x021BFC00
	push {r3, r4, r5, lr}
	ldr r3, [r0, #0x30]
	mov r2, #0xff
	mov r1, #0
_021BFC08:
	lsl r4, r1, #2
	add r4, r3, r4
	ldr r4, [r4, #4]
	add r4, #0x4a
	ldrh r5, [r4]
	add r4, r0, r1
	add r4, #0xf7
	ldrb r4, [r4]
	add r4, r5, r4
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	cmp r2, r4
	ble _021BFC26
	lsl r2, r4, #0x18
	lsr r2, r2, #0x18
_021BFC26:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _021BFC08
	cmp r2, #0x46
	blo _021BFC3C
	ldr r0, _021BFC54 ; =0x0000062A
	bl sub_02006254
	pop {r3, r4, r5, pc}
_021BFC3C:
	cmp r2, #0x1e
	blo _021BFC48
	ldr r0, _021BFC58 ; =0x0000062B
	bl sub_02006254
	pop {r3, r4, r5, pc}
_021BFC48:
	cmp r2, #1
	blo _021BFC52
	ldr r0, _021BFC5C ; =0x0000062C
	bl sub_02006254
_021BFC52:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BFC54: .word 0x0000062A
_021BFC58: .word 0x0000062B
_021BFC5C: .word 0x0000062C
	thumb_func_end ovy209_21bfc00

	thumb_func_start ovy209_21bfc60
ovy209_21bfc60: ; 0x021BFC60
	push {r3, lr}
	add r2, r1, #0
	ldr r1, [r0, #0x30]
	ldr r1, [r1]
	cmp r1, #0
	bne _021BFC74
	ldrb r1, [r0, #0xa]
	bl sub_021BFC84
	pop {r3, pc}
_021BFC74:
	mov r1, #0x57
	mov r3, #1
	lsl r1, r1, #2
	str r3, [r0, r1]
	add r1, r1, #4
	str r2, [r0, r1]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy209_21bfc60

	thumb_func_start sub_021BFC84
sub_021BFC84: ; 0x021BFC84
	lsl r1, r1, #2
	add r1, r0, r1
	add r0, r1, #0
	mov r3, #1
	add r0, #0xfc
	str r3, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	str r2, [r1, r0]
	bx lr
	thumb_func_end sub_021BFC84

	thumb_func_start sub_021BFC98
sub_021BFC98: ; 0x021BFC98
	ldrb r1, [r0, #0xa]
	ldr r3, _021BFCA0 ; =ovy209_21bfca4
	bx r3
	nop
_021BFCA0: .word ovy209_21bfca4
	thumb_func_end sub_021BFC98

	thumb_func_start ovy209_21bfca4
ovy209_21bfca4: ; 0x021BFCA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r1, r5, r4
	ldr r0, [r5, #0x40]
	ldr r1, [r1, #0x44]
	bl sub_021BE2D4
	cmp r0, #1
	bne _021BFCBC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021BFCBC:
	add r0, r5, r4
	add r0, #0xfc
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21bfca4

	thumb_func_start ovy209_21bfcc4
ovy209_21bfcc4: ; 0x021BFCC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r7, #0
	bl ovy209_21bff78
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	cmp r0, #0
	beq _021BFCF4
	mov r4, #0x57
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #1
	bne _021BFCF4
	add r1, r4, #4
	ldr r1, [r5, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021F0460
	cmp r0, #1
	bne _021BFCF4
	str r7, [r5, r4]
_021BFCF4:
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BFDC4
	mov r0, #0x43
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, #0x34
	str r0, [sp, #4]
	mov r0, #0x43
	lsl r0, r0, #2
	str r0, [sp]
	add r0, #0x30
	mov r4, #0
	str r0, [sp]
_021BFD12:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #1
	bne _021BFD6C
	mov r2, #0x43
	lsl r2, r2, #2
	ldr r0, [r5, #0x40]
	ldr r1, [r6, #0x44]
	ldr r2, [r6, r2]
	bl ovy209_21be1fc
	add r0, sp, #8
	strb r4, [r0, r7]
	add r0, r7, #1
	lsl r0, r0, #0x18
	add r1, r6, #0
	lsr r7, r0, #0x18
	add r1, #0xfc
	mov r0, #0
	str r0, [r1]
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #7
	bne _021BFD54
	lsl r0, r4, #3
	add r2, r5, r0
	mov r1, #1
	ldr r0, [sp]
	b _021BFD60
_021BFD54:
	cmp r0, #8
	bne _021BFD62
	lsl r0, r4, #3
	add r2, r5, r0
	ldr r0, [sp, #4]
	mov r1, #1
_021BFD60:
	str r1, [r2, r0]
_021BFD62:
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl ovy209_21c0008
_021BFD6C:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BFD12
	cmp r7, #0
	beq _021BFE6E
	mov r0, #0x47
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #4
	bne _021BFD88
	mov r1, #1
	b _021BFD8A
_021BFD88:
	mov r1, #0
_021BFD8A:
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0xb4
	mov r4, #0xb4
	add r0, #0x6a
	strh r4, [r5, r0]
	add r0, r7, #0
	bl sub_02005784
	add r1, sp, #8
	ldrb r1, [r1, r0]
	mov r0, #0xb4
	add r0, #0x68
	strb r1, [r5, r0]
	mov r0, #0xb4
	add r0, #0x68
	ldrb r0, [r5, r0]
	add r4, #0x69
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xb4
	add r0, #0x58
	ldr r0, [r1, r0]
	mov r1, #1
	strb r0, [r5, r4]
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0]
	b _021BFE6E
_021BFDC4:
	bl sub_021F0598
	add r1, r0, #0
	cmp r1, #4
	bhs _021BFE0C
	mov r0, #0x47
	lsl r0, r0, #2
	ldrb r2, [r5, r0]
	cmp r2, #4
	bne _021BFDDC
	mov r2, #1
	b _021BFDDE
_021BFDDC:
	mov r2, #0
_021BFDDE:
	add r0, r0, #4
	str r2, [r5, r0]
	mov r0, #0xb4
	mov r4, #0xb4
	add r0, #0x6a
	strh r4, [r5, r0]
	mov r0, #0xb4
	add r0, #0x68
	strb r1, [r5, r0]
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	bl sub_021F053C
	add r4, #0x69
	strb r0, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xec
	str r1, [r0]
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	bl sub_021F05B4
_021BFE0C:
	mov r0, #5
	lsl r0, r0, #6
	mov r4, #0
	sub r7, r0, #4
_021BFE14:
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_021F053C
	add r6, r0, #0
	cmp r6, #0xa
	beq _021BFE64
	lsl r1, r4, #2
	add r1, r5, r1
	ldr r0, [r5, #0x40]
	ldr r1, [r1, #0x44]
	add r2, r6, #0
	bl ovy209_21be1fc
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	ldr r0, [r0]
	bl sub_021F056C
	cmp r6, #7
	bne _021BFE4A
	lsl r0, r4, #3
	add r1, r5, r0
	mov r0, #1
	str r0, [r1, r7]
	b _021BFE5A
_021BFE4A:
	cmp r6, #8
	bne _021BFE5A
	lsl r0, r4, #3
	add r2, r5, r0
	mov r0, #5
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r2, r0]
_021BFE5A:
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	bl ovy209_21c0008
_021BFE64:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BFE14
_021BFE6E:
	ldr r4, _021BFF1C ; =0x0000011E
	ldrh r1, [r5, r4]
	cmp r1, #0
	beq _021BFF16
	add r0, r4, #0
	add r0, #0xca
	ldr r0, [r5, r0]
	cmp r1, r0
	bls _021BFE8C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r1, r0
	add sp, #0xc
	strh r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_021BFE8C:
	mov r0, #0
	strh r0, [r5, r4]
	add r0, r4, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021BFF08
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BFECC
	sub r1, r4, #2
	sub r2, r4, #1
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r5, #0
	bl ovy209_21bff24
	sub r3, r4, #2
	ldrb r3, [r5, r3]
	ldr r1, [r5, #0x30]
	mov r2, #1
	lsl r3, r3, #2
	add r1, r1, r3
	sub r3, r4, #1
	ldrb r3, [r5, r3]
	ldr r1, [r1, #4]
	lsl r3, r3, #2
	add r1, r1, r3
	str r2, [r1, #0x54]
	bl sub_02006254
	b _021BFF08
_021BFECC:
	bl sub_02042BC4
	cmp r0, #1
	bne _021BFF08
	sub r1, r4, #2
	sub r2, r4, #1
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r5, #0
	bl ovy209_21bff24
	ldr r1, _021BFF20 ; =0x0000062C
	cmp r0, r1
	ldr r0, [r5, #0x30]
	bne _021BFEF8
	sub r1, r4, #2
	sub r2, r4, #1
	ldr r0, [r0]
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	mov r3, #1
	b _021BFF04
_021BFEF8:
	sub r1, r4, #2
	sub r2, r4, #1
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	ldr r0, [r0]
	mov r3, #2
_021BFF04:
	bl sub_021F05C0
_021BFF08:
	mov r0, #0x47
	mov r1, #4
	lsl r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	add r5, #0xec
	str r0, [r5]
_021BFF16:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BFF1C: .word 0x0000011E
_021BFF20: .word 0x0000062C
	thumb_func_end ovy209_21bfcc4

	thumb_func_start ovy209_21bff24
ovy209_21bff24: ; 0x021BFF24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021C033C
	ldr r2, [r5, #0x30]
	lsl r1, r4, #2
	add r1, r2, r1
	ldr r2, [r1, #4]
	mov r1, #6
	mul r1, r6
	add r1, r2, r1
	ldrh r1, [r1, #0x14]
	bl sub_021EF164
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x18
	bl sub_02152644
	add r1, r5, #0
	add r1, #0xf7
	add r6, r0, #0
	ldrb r0, [r1, r4]
	add r0, r0, r6
	strb r0, [r1, r4]
	add r0, r5, #0
	bl ovy209_21bfb20
	ldr r0, _021BFF70 ; =0x0000062B
	cmp r6, #7
	bhs _021BFF6C
	ldr r0, _021BFF74 ; =0x0000062C
_021BFF6C:
	pop {r4, r5, r6, pc}
	nop
_021BFF70: .word 0x0000062B
_021BFF74: .word 0x0000062C
	thumb_func_end ovy209_21bff24

	thumb_func_start ovy209_21bff78
ovy209_21bff78: ; 0x021BFF78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	cmp r0, #0
	beq _021BFF8E
	bl sub_02042BC4
	cmp r0, #1
	bne _021C0004
_021BFF8E:
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r7, #0x4b
	mov r6, #0x4b
	str r0, [sp]
	sub r0, #8
	lsl r7, r7, #2
	lsl r6, r6, #2
	mov r4, #0
	str r0, [sp]
	sub r7, #8
	sub r6, #8
_021BFFB0:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r1, [r0, r6]
	cmp r1, #0
	beq _021BFFFA
	ldr r1, [sp, #4]
	ldrh r1, [r0, r1]
	sub r2, r1, #1
	ldr r1, [sp]
	strh r2, [r0, r1]
	ldrh r0, [r0, r7]
	cmp r0, #0
	bne _021BFFFA
	ldr r0, [r5, #0x30]
	ldr r0, [r0]
	cmp r0, #0
	bne _021BFFE6
	lsl r2, r4, #2
	add r3, r5, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021BFC84
	b _021BFFFA
_021BFFE6:
	lsl r2, r4, #2
	add r3, r5, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_021F0510
_021BFFFA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021BFFB0
_021C0004:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21bff78

	thumb_func_start ovy209_21c0008
ovy209_21c0008: ; 0x021C0008
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r2, [sp, #4]
	ldr r0, [r5, #0x30]
	str r1, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _021C0024
	bl sub_02042BC4
	cmp r0, #1
	beq _021C0024
	b _021C021A
_021C0024:
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	add r0, #8
	str r0, [sp, #0x20]
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #0x1c
	str r0, [sp, #0x14]
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp, #0x30]
	add r0, #8
	str r0, [sp, #0x30]
	ldr r0, _021C0220 ; =0x0000FFFF
	mov r6, #0
	sub r0, r0, #2
	str r0, [sp, #0x2c]
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	ldr r0, _021C0220 ; =0x0000FFFF
	sub r0, r0, #1
	str r0, [sp, #0x24]
	mov r0, #0x49
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	add r0, #8
	str r0, [sp, #0x1c]
	ldr r0, _021C0220 ; =0x0000FFFF
	sub r0, r0, #2
	str r0, [sp, #0x18]
_021C0074:
	mov r1, #0
	add r0, sp, #0x34
	str r1, [r0]
	str r1, [r0, #4]
	lsl r0, r6, #2
	ldr r1, [r5, #0x30]
	str r0, [sp, #8]
	add r0, r1, r0
	ldr r4, [r0, #4]
	ldr r0, [r4]
	cmp r0, #2
	bne _021C0122
	add r0, r5, #0
	add r1, r6, #0
	bl ovy209_21bfca4
	cmp r0, #1
	beq _021C0122
	lsl r0, r6, #1
	add r1, r5, r0
	mov r0, #0x49
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	str r1, [sp, #0xc]
	cmp r0, #0
	bne _021C0122
	ldrh r0, [r4, #0x3e]
	cmp r0, #0xff
	beq _021C00BE
	lsl r0, r6, #3
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021C00BE
	mov r0, #1
	str r0, [sp, #0x34]
_021C00BE:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _021C00D8
	lsl r0, r6, #3
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021C00D8
	mov r0, #1
	str r0, [sp, #0x38]
_021C00D8:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	bne _021C00E4
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _021C0122
_021C00E4:
	cmp r1, #1
	bne _021C00F0
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021C00F0
	b _021C010E
_021C00F0:
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne _021C00FC
	cmp r1, #0
	bne _021C00FC
	b _021C0112
_021C00FC:
	bl sub_02043F2C
	lsr r1, r0, #0x1f
	mov r0, #0
	lsl r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _021C0112
_021C010E:
	mov r7, #7
	b _021C0114
_021C0112:
	mov r7, #8
_021C0114:
	ldr r0, [sp]
	cmp r0, #0
	beq _021C01CE
	cmp r0, #1
	beq _021C0124
	cmp r0, #2
	beq _021C0154
_021C0122:
	b _021C020E
_021C0124:
	add r4, #0x78
	ldrh r1, [r4]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne _021C020E
	ldr r0, [sp, #4]
	cmp r6, r0
	bne _021C020E
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x1e
	mov r3, #0
	blx sub_0208D60C
	mov r0, #0x49
	ldr r2, [sp, #0xc]
	add r1, #0x1e
	lsl r0, r0, #2
	strh r1, [r2, r0]
	ldr r0, [sp, #8]
	add r1, r5, r0
	ldr r0, [sp, #0x1c]
	b _021C020C
_021C0154:
	add r0, r4, #0
	add r0, #0x78
	ldrh r1, [r0]
	ldr r0, _021C0220 ; =0x0000FFFF
	cmp r1, r0
	bne _021C0192
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x64
	mov r3, #0
	blx sub_0208D60C
	cmp r1, #0x32
	bhs _021C0192
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x3c
	mov r3, #0
	blx sub_0208D60C
	mov r0, #0x49
	ldr r2, [sp, #0xc]
	add r1, #0x3c
	lsl r0, r0, #2
	strh r1, [r2, r0]
	ldr r0, [sp, #8]
	add r1, r5, r0
	ldr r0, [sp, #0x20]
	str r7, [r1, r0]
_021C0192:
	add r4, #0x78
	ldrh r1, [r4]
	ldr r0, [sp, #0x24]
	cmp r1, r0
	bne _021C020E
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x64
	mov r3, #0
	blx sub_0208D60C
	cmp r1, #0x19
	bhs _021C020E
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x3c
	mov r3, #0
	blx sub_0208D60C
	mov r0, #0x49
	ldr r2, [sp, #0xc]
	add r1, #0x3c
	lsl r0, r0, #2
	strh r1, [r2, r0]
	ldr r0, [sp, #8]
	add r1, r5, r0
	ldr r0, [sp, #0x28]
	b _021C020C
_021C01CE:
	add r0, r4, #0
	add r0, #0x78
	ldrh r1, [r0]
	cmp r1, #0
	beq _021C020E
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bhs _021C020E
	bl sub_02043F2C
	mov r1, #0
	mov r2, #0x79
	mov r3, #0
	blx sub_0208D60C
	add r4, #0x78
	sub r1, #0x3c
	lsl r0, r1, #0x18
	ldrh r2, [r4]
	asr r0, r0, #0x18
	add r2, r2, r0
	bpl _021C01FE
	mov r2, #0
	b _021C01FE
_021C01FE:
	ldr r1, [sp, #0xc]
	mov r0, #0x49
	lsl r0, r0, #2
	strh r2, [r1, r0]
	ldr r0, [sp, #8]
	add r1, r5, r0
	ldr r0, [sp, #0x30]
_021C020C:
	str r7, [r1, r0]
_021C020E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	bhs _021C021A
	b _021C0074
_021C021A:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021C0220: .word 0x0000FFFF
	thumb_func_end ovy209_21c0008

	thumb_func_start ovy209_21c0224
ovy209_21c0224: ; 0x021C0224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	mov r1, #0x36
	bl ovy209_21c040c
	add r4, #0xbc
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21c0224

	thumb_func_start sub_021C0238
sub_021C0238: ; 0x021C0238
	add r1, r0, #0
	ldr r0, [r1, #0x6c]
	add r1, #0xbc
	ldr r1, [r1]
	ldr r3, _021C0244 ; =ovy209_21c0488
	bx r3
	.align 2, 0
_021C0244: .word ovy209_21c0488
	thumb_func_end sub_021C0238

	thumb_func_start ovy209_21c0248
ovy209_21c0248: ; 0x021C0248
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	add r6, sp, #0
	ldr r0, [r5, #0x40]
	ldr r1, [r1, #0x44]
	add r2, r6, #0
	bl sub_021BE898
	ldr r1, [sp]
	mov r4, #0
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	sub r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0x12
	sub r1, r0, r1
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0x2d
	lsl r0, r0, #0xe
	str r0, [sp, #8]
_021C028A:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, r4, #0
	add r2, r6, #0
	bl ovy209_21c04a4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021C028A
	ldr r0, _021C02AC ; =0x000007A8
	bl sub_02006254
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021C02AC: .word 0x000007A8
	thumb_func_end ovy209_21c0248

	thumb_func_start sub_021C02B0
sub_021C02B0: ; 0x021C02B0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r3, _021C02BC ; =ovy209_21c0fe8
	mov r1, #1
	bx r3
	nop
_021C02BC: .word ovy209_21c0fe8
	thumb_func_end sub_021C02B0

	thumb_func_start sub_021C02C0
sub_021C02C0: ; 0x021C02C0
	add r0, #0xa4
	ldr r0, [r0]
	ldr r3, _021C02CC ; =ovy209_21c0fe8
	mov r1, #0
	bx r3
	nop
_021C02CC: .word ovy209_21c0fe8
	thumb_func_end sub_021C02C0

	thumb_func_start sub_021C02D0
sub_021C02D0: ; 0x021C02D0
	ldr r0, [r0, #0x40]
	bx lr
	thumb_func_end sub_021C02D0

	thumb_func_start sub_021C02D4
sub_021C02D4: ; 0x021C02D4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end sub_021C02D4

	thumb_func_start sub_021C02DC
sub_021C02DC: ; 0x021C02DC
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_021C02DC

	thumb_func_start sub_021C02E0
sub_021C02E0: ; 0x021C02E0
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end sub_021C02E0

	thumb_func_start sub_021C02E8
sub_021C02E8: ; 0x021C02E8
	lsl r2, r2, #2
	add r0, r0, r2
	str r1, [r0, #0x58]
	bx lr
	thumb_func_end sub_021C02E8

	thumb_func_start sub_021C02F0
sub_021C02F0: ; 0x021C02F0
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end sub_021C02F0

	thumb_func_start sub_021C02F4
sub_021C02F4: ; 0x021C02F4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x70]
	bx lr
	thumb_func_end sub_021C02F4

	thumb_func_start sub_021C02FC
sub_021C02FC: ; 0x021C02FC
	lsl r2, r2, #2
	add r0, r0, r2
	str r1, [r0, #0x70]
	bx lr
	thumb_func_end sub_021C02FC

	thumb_func_start sub_021C0304
sub_021C0304: ; 0x021C0304
	add r0, #0x90
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0304

	thumb_func_start sub_021C030C
sub_021C030C: ; 0x021C030C
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x94
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C030C

	thumb_func_start sub_021C0318
sub_021C0318: ; 0x021C0318
	lsl r2, r2, #2
	add r0, r0, r2
	add r0, #0x94
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0318

	thumb_func_start sub_021C0324
sub_021C0324: ; 0x021C0324
	add r0, #0xb8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0324

	thumb_func_start sub_021C032C
sub_021C032C: ; 0x021C032C
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_021C032C

	thumb_func_start sub_021C0330
sub_021C0330: ; 0x021C0330
	strh r1, [r0, #8]
	bx lr
	thumb_func_end sub_021C0330

	thumb_func_start sub_021C0334
sub_021C0334: ; 0x021C0334
	ldrh r0, [r0, #4]
	bx lr
	thumb_func_end sub_021C0334

	thumb_func_start sub_021C0338
sub_021C0338: ; 0x021C0338
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_021C0338

	thumb_func_start sub_021C033C
sub_021C033C: ; 0x021C033C
	ldr r0, [r0, #0x38]
	ldr r3, _021C0344 ; =sub_021BB9B8
	bx r3
	nop
_021C0344: .word sub_021BB9B8
	thumb_func_end sub_021C033C

	thumb_func_start sub_021C0348
sub_021C0348: ; 0x021C0348
	mov r1, #0x47
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end sub_021C0348

	thumb_func_start sub_021C0350
sub_021C0350: ; 0x021C0350
	ldr r2, [r0, #0x30]
	lsl r0, r1, #2
	add r0, r2, r0
	ldr r0, [r0, #4]
	add r0, #0x4a
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0350

	thumb_func_start sub_021C0364
sub_021C0364: ; 0x021C0364
	add r0, r0, r1
	add r0, #0xf7
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_021C0364

	thumb_func_start sub_021C036C
sub_021C036C: ; 0x021C036C
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021C036C

	thumb_func_start sub_021C0370
sub_021C0370: ; 0x021C0370
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_021C0370

	thumb_func_start sub_021C0374
sub_021C0374: ; 0x021C0374
	mov r1, #0x7a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end sub_021C0374

	thumb_func_start sub_021C037C
sub_021C037C: ; 0x021C037C
	bx lr
	.align 2, 0
	thumb_func_end sub_021C037C

	thumb_func_start ovy209_21c0380
ovy209_21c0380: ; 0x021C0380
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021C03BC ; =0x00024244
	mov r1, #0x4c
	str r1, [sp]
	ldr r3, _021C03C0 ; =0x021C3100
	add r6, r0, #0
	add r1, r7, #0
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, r6, #0
	strh r6, [r5]
	bl sub_0204F918
	add r0, r4, #0
	lsr r1, r7, #3
_021C03A4:
	add r2, r4, #0
	mul r2, r1
	add r2, r5, r2
	str r0, [r2, #4]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #8
	blo _021C03A4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C03BC: .word 0x00024244
_021C03C0: .word 0x021C3100
	thumb_func_end ovy209_21c0380

	thumb_func_start ovy209_21c03c4
ovy209_21c03c4: ; 0x021C03C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021C03F8 ; =0x00004848
	mov r4, #0
	add r6, r5, #4
_021C03CE:
	add r1, r4, #0
	mul r1, r7
	add r0, r5, r1
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021C03E2
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21c0488
_021C03E2:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021C03CE
	bl sub_0204FB4C
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C03F8: .word 0x00004848
	thumb_func_end ovy209_21c03c4

	thumb_func_start sub_021C03FC
sub_021C03FC: ; 0x021C03FC
	ldr r3, _021C0400 ; =sub_02050044
	bx r3
	.align 2, 0
_021C0400: .word sub_02050044
	thumb_func_end sub_021C03FC

	thumb_func_start sub_021C0404
sub_021C0404: ; 0x021C0404
	ldr r3, _021C0408 ; =sub_0205001C
	bx r3
	.align 2, 0
_021C0408: .word sub_0205001C
	thumb_func_end sub_021C0404

	thumb_func_start ovy209_21c040c
ovy209_21c040c: ; 0x021C040C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r3, _021C0484 ; =0x00004848
	str r1, [sp]
	mov r4, #0
	mov r2, #0
	add r0, r7, #4
_021C041A:
	add r1, r2, #0
	mul r1, r3
	add r5, r7, r1
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _021C0428
	add r4, r0, r1
_021C0428:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #8
	blo _021C041A
	mov r6, #0x12
	lsl r6, r6, #0xa
	ldrh r3, [r7]
	add r0, r4, #4
	add r1, r6, #0
	mov r2, #0
	mov r5, #0
	bl sub_0204F968
	add r1, r6, #4
	str r0, [r4, r1]
	ldrh r2, [r7]
	ldr r1, [sp]
	mov r0, #0x2e
	bl sub_0204FDF8
	add r7, r0, #0
	bl sub_02005718
	add r3, r0, #0
	add r0, r6, #4
	ldr r0, [r4, r0]
	add r1, r7, #0
	mov r2, #0
	bl sub_0204FE04
	add r1, r5, #0
	add r6, #8
_021C046A:
	lsl r0, r5, #4
	add r0, r4, r0
	str r1, [r0, r6]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C046A
	mov r0, #1
	str r0, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0484: .word 0x00004848
	thumb_func_end ovy209_21c040c

	thumb_func_start ovy209_21c0488
ovy209_21c0488: ; 0x021C0488
	push {r3, r4, r5, lr}
	ldr r5, _021C04A0 ; =0x00004804
	add r4, r1, #0
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, r5]
	bl sub_020500B0
	ldr r0, [r4, r5]
	bl sub_0204FA84
	pop {r3, r4, r5, pc}
	.align 2, 0
_021C04A0: .word 0x00004804
	thumb_func_end ovy209_21c0488

	thumb_func_start ovy209_21c04a4
ovy209_21c04a4: ; 0x021C04A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021C04DC ; =0x00004804
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r6, r2, #0
	bl sub_0205006C
	cmp r0, #0
	beq _021C04BC
	cmp r4, #4
	bhs _021C04D8
_021C04BC:
	lsl r1, r4, #4
	ldr r2, _021C04E0 ; =0x00004808
	add r1, r5, r1
	str r0, [r1, r2]
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	ldr r3, [r6]
	add r0, r2, #4
	str r3, [r1, r0]
	add r0, r2, #0
	add r0, #8
	str r4, [r1, r0]
	add r2, #0xc
	str r5, [r1, r2]
_021C04D8:
	pop {r4, r5, r6, pc}
	nop
_021C04DC: .word 0x00004804
_021C04E0: .word 0x00004808
	thumb_func_end ovy209_21c04a4

	thumb_func_start ovy209_21c04e4
ovy209_21c04e4: ; 0x021C04E4
	push {r3, lr}
	lsl r1, r1, #4
	ldr r2, _021C04FC ; =0x00004808
	add r1, r0, r1
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _021C04FA
	sub r2, r2, #4
	ldr r0, [r0, r2]
	bl sub_020500BC
_021C04FA:
	pop {r3, pc}
	.align 2, 0
_021C04FC: .word 0x00004808
	thumb_func_end ovy209_21c04e4

	thumb_func_start ovy209_21c0500
ovy209_21c0500: ; 0x021C0500
	push {r3, lr}
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _021C0518 ; =0x00004808
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021C0514
	add r1, r2, #0
	bl sub_02050208
_021C0514:
	pop {r3, pc}
	nop
_021C0518: .word 0x00004808
	thumb_func_end ovy209_21c0500

	thumb_func_start ovy209_21c051c
ovy209_21c051c: ; 0x021C051C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x73
	str r1, [sp]
	mov r1, #0xf9
	str r2, [sp, #4]
	ldr r3, _021C0578 ; =0x021C3114
	lsl r1, r1, #2
	mov r2, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	bl sub_021C0600
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy209_21c0608
	mov r1, #0x7a
	lsl r1, r1, #2
	add r0, r1, #0
	str r7, [r5, r1]
	add r0, #0x18
	str r4, [r5, r0]
	add r0, r4, #0
	add r1, r1, #4
_021C0558:
	lsl r2, r4, #2
	add r2, r5, r2
	str r0, [r2, r1]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #4
	blo _021C0558
	mov r0, #0xff
	mov r1, #0xff
	add r0, #0xfd
	strb r1, [r5, r0]
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0578: .word 0x021C3114
	thumb_func_end ovy209_21c051c

	thumb_func_start ovy209_21c057c
ovy209_21c057c: ; 0x021C057C
	push {r4, lr}
	add r4, r0, #0
	bl sub_021C07A8
	add r0, r4, #0
	bl sub_021C0604
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21c057c

	thumb_func_start ovy209_21c0594
ovy209_21c0594: ; 0x021C0594
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x7a
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_021C032C
	cmp r0, #0
	bne _021C05E0
	mov r0, #0xa
	bl sub_02005784
	cmp r0, #0
	bne _021C05FC
	add r6, #0x1c
	mov r4, #0
	add r7, r5, r6
_021C05B6:
	mov r0, #4
	bl sub_02005784
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r0, #0x3c
	bl sub_02005784
	lsl r1, r0, #0x18
	lsr r1, r1, #0x15
	add r0, r5, #0
	add r1, r7, r1
	add r2, r6, #0
	bl ovy209_21c08d8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021C05B6
	pop {r3, r4, r5, r6, r7, pc}
_021C05E0:
	add r0, r6, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021C05F6
	add r0, r5, #0
	bl ovy209_21c09dc
	mov r0, #0
	add r6, #0x18
	str r0, [r5, r6]
_021C05F6:
	add r0, r5, #0
	bl ovy209_21c07ac
_021C05FC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c0594

	thumb_func_start sub_021C0600
sub_021C0600: ; 0x021C0600
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0600

	thumb_func_start sub_021C0604
sub_021C0604: ; 0x021C0604
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0604

	thumb_func_start ovy209_21c0608
ovy209_21c0608: ; 0x021C0608
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	mov r7, #0
	add r0, sp, #0x24
	str r1, [sp]
	strb r7, [r0]
	strb r7, [r0, #1]
	strb r7, [r0, #2]
	strb r7, [r0, #3]
	mov r6, #0
	mov r4, #0
_021C0620:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	bl sub_0215250C
	add r1, sp, #0x28
	strb r0, [r1, r4]
	add r0, r1, #0
	ldrb r0, [r0, r4]
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021C0620
	mov r4, #0
_021C0644:
	add r0, sp, #0x28
	ldrb r1, [r0, r4]
	mov r0, #0x3c
	mul r0, r1
	add r1, r7, #0
	blx sub_0208D65C
	add r1, sp, #0x24
	strb r0, [r1, r4]
	add r0, r1, #0
	ldrb r0, [r0, r4]
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021C0644
	cmp r6, #0x3c
	bhs _021C0688
	mov r7, #4
	add r4, r1, #0
_021C0672:
	add r0, r7, #0
	bl sub_02005784
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0x3c
	blo _021C0672
_021C0688:
	mov r3, #0
	mov r6, #0
	add r0, sp, #0x2c
	add r7, r3, #0
	add r1, sp, #0x24
_021C0692:
	ldrb r4, [r1, r6]
	add r2, r7, #0
	cmp r4, #0
	bls _021C06AC
_021C069A:
	add r2, r2, #1
	strb r6, [r0, r3]
	add r3, r3, #1
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	cmp r2, r4
	blo _021C069A
_021C06AC:
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, #4
	blo _021C0692
	mov r0, #0
	str r0, [sp, #4]
	mov r7, #0x3c
	add r6, sp, #0x2c
_021C06BE:
	mov r4, #0
_021C06C0:
	add r0, r7, #0
	bl sub_02005784
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldrb r1, [r6, r4]
	ldrb r0, [r6, r2]
	strb r0, [r6, r4]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	strb r1, [r6, r2]
	cmp r4, #0x3c
	blo _021C06C0
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r0, #3
	blo _021C06BE
	mov r0, #0
	str r0, [sp, #0xc]
_021C06EE:
	ldr r0, [sp, #0xc]
	mov r1, #0xc
	mul r1, r0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x10]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r0, #6
	str r0, [sp, #0x20]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r0, #7
	str r0, [sp, #0x1c]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r0, #2
	str r0, [sp, #0x18]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r0, #1
	mov r4, #0
	str r1, [sp, #8]
	str r0, [sp, #0x14]
_021C0720:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r7, r0, #3
	add r6, r5, r7
	add r2, r4, #2
	strb r2, [r6, r1]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	strb r2, [r6, r1]
	add r1, sp, #0x2c
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x18]
	strb r1, [r6, r0]
	mov r0, #0x3c
	bl sub_02005784
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	strb r1, [r6, r0]
	mov r0, #0x81
	mov r1, #0xff
	lsl r0, r0, #2
	strb r1, [r6, r0]
	cmp r4, #2
	bhs _021C0762
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, r1, r7
	mov r2, #3
	b _021C0786
_021C0762:
	cmp r4, #4
	bhs _021C0770
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, r1, r7
	mov r2, #2
	b _021C0786
_021C0770:
	cmp r4, #6
	bhs _021C077E
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, r1, r7
	mov r2, #1
	b _021C0786
_021C077E:
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, r1, r7
	mov r2, #0
_021C0786:
	bl ovy209_21c08d8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _021C0720
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #5
	blo _021C06EE
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c0608

	thumb_func_start sub_021C07A8
sub_021C07A8: ; 0x021C07A8
	bx lr
	.align 2, 0
	thumb_func_end sub_021C07A8

	thumb_func_start ovy209_21c07ac
ovy209_21c07ac: ; 0x021C07AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	mov r4, #0
	add r6, r5, r0
_021C07B8:
	lsl r1, r4, #3
	add r0, r5, #0
	add r1, r6, r1
	bl ovy209_21c07d0
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x3c
	blo _021C07B8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21c07ac

	thumb_func_start ovy209_21c07d0
ovy209_21c07d0: ; 0x021C07D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _021C07E2
	sub r0, r0, #1
	strb r0, [r4, #1]
_021C07E2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _021C08CA
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _021C0824
	mov r0, #0x7f
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0xff
	bne _021C0824
	ldr r0, _021C08D0 ; =0x0000FFFF
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	cmp r0, #2
	bhs _021C080A
_021C0802:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	b _021C08BC
_021C080A:
	cmp r0, #4
	bhs _021C0810
	b _021C08B6
_021C0810:
	cmp r0, #6
	bhs _021C081C
_021C0814:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	b _021C08BC
_021C081C:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	b _021C08BC
_021C0824:
	mov r6, #0x7a
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	bl sub_021C0334
	ldrb r0, [r4, #6]
	mov r1, #3
	lsl r0, r0, #5
	sub r0, #0x40
	lsl r0, r0, #2
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrb r0, [r4]
	cmp r0, #0xff
	ldr r0, [r5, r6]
	beq _021C0862
	bl sub_021C02D0
	str r0, [sp]
	ldrb r1, [r4]
	ldr r0, [r5, r6]
	bl sub_021C02D4
	add r1, r0, #0
	ldr r0, [sp]
	add r2, sp, #8
	bl sub_021BE898
	b _021C087C
_021C0862:
	bl sub_021C0304
	str r0, [sp, #4]
	ldr r0, [r5, r6]
	add r6, #0x14
	ldrb r1, [r5, r6]
	bl sub_021C030C
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r2, sp, #8
	bl sub_021BD758
_021C087C:
	ldr r0, [sp, #8]
	blx sub_0208D374
	ldr r1, _021C08D4 ; =0x45800000
	blx sub_0208E3C8
	add r6, r0, #0
	add r0, r7, #0
	blx sub_0208D3BC
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208E144
	blx sub_0208DA4C
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #0x3f
	mvn r0, r0
	cmp r1, r0
	bge _021C08AA
	b _021C081C
_021C08AA:
	cmp r1, #0x40
	ble _021C08B0
	b _021C0802
_021C08B0:
	cmp r1, #0
	bge _021C08B6
	b _021C0814
_021C08B6:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
_021C08BC:
	bl ovy209_21c08d8
	mov r0, #0x3c
	bl sub_02005784
	add r0, r0, #1
	strb r0, [r4, #1]
_021C08CA:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021C08D0: .word 0x0000FFFF
_021C08D4: .word 0x45800000
	thumb_func_end ovy209_21c07d0

	thumb_func_start ovy209_21c08d8
ovy209_21c08d8: ; 0x021C08D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r0, #0
	add r4, r1, #0
	str r0, [sp, #0x18]
	cmp r2, #3
	bhi _021C0938
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021C08F2: ; jump table
	.short _021C092E - _021C08F2 - 2 ; case 0
	.short _021C0922 - _021C08F2 - 2 ; case 1
	.short _021C090C - _021C08F2 - 2 ; case 2
	.short _021C08FA - _021C08F2 - 2 ; case 3
_021C08FA:
	mov r0, #1
	str r0, [sp, #0x18]
	ldrb r0, [r4, #2]
	lsl r1, r0, #1
	ldr r0, _021C09D4 ; =0x021C2F6E
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0xa
	b _021C091A
_021C090C:
	mov r0, #1
	str r0, [sp, #0x18]
	ldrb r0, [r4, #2]
	lsl r1, r0, #1
	ldr r0, _021C09D4 ; =0x021C2F6E
	ldrh r1, [r0, r1]
	ldr r0, _021C09D8 ; =0x00000404
_021C091A:
	add r0, r1, r0
_021C091C:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _021C0936
_021C0922:
	ldrb r0, [r4, #2]
	lsl r1, r0, #1
	ldr r0, _021C09D4 ; =0x021C2F6E
	ldrh r0, [r0, r1]
	add r0, r0, #4
	b _021C091C
_021C092E:
	ldrb r0, [r4, #2]
	lsl r1, r0, #1
	ldr r0, _021C09D4 ; =0x021C2F6E
	ldrh r0, [r0, r1]
_021C0936:
	str r0, [sp, #0x14]
_021C0938:
	mov r7, #0
_021C093A:
	lsl r0, r7, #5
	mov r5, #0
	str r0, [sp, #0x10]
_021C0940:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021C0952
	mov r0, #3
	sub r1, r0, r5
	ldrb r0, [r4, #6]
	lsl r0, r0, #2
	add r0, r1, r0
	b _021C0958
_021C0952:
	ldrb r0, [r4, #6]
	lsl r0, r0, #2
	add r0, r5, r0
_021C0958:
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x14]
	add r2, r6, #0
	add r1, r0, r5
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r3, [r4, #7]
	ldr r1, [sp, #0xc]
	mov r0, #4
	lsl r3, r3, #2
	add r3, r7, r3
	add r3, r3, #2
	lsl r1, r1, #0x10
	lsl r3, r3, #0x18
	lsr r1, r1, #0x10
	lsr r3, r3, #0x18
	bl sub_02045604
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r3, [r4, #7]
	ldr r1, [sp, #0xc]
	mov r0, #6
	lsl r3, r3, #2
	add r3, r7, r3
	add r3, r3, #5
	lsl r1, r1, #0x10
	lsl r3, r3, #0x18
	lsr r1, r1, #0x10
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl sub_02045604
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C0940
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _021C093A
	mov r0, #4
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021C09D4: .word 0x021C2F6E
_021C09D8: .word 0x00000404
	thumb_func_end ovy209_21c08d8

	thumb_func_start ovy209_21c09dc
ovy209_21c09dc: ; 0x021C09DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r3, #0x7b
	mov r4, #0
	add r0, sp, #4
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	mov r1, #0
	lsl r3, r3, #2
_021C09F4:
	lsl r2, r1, #2
	add r2, r7, r2
	ldr r2, [r2, r3]
	cmp r2, #1
	bne _021C0A06
	add r2, r4, #1
	lsl r2, r2, #0x18
	strb r1, [r0, r4]
	lsr r4, r2, #0x18
_021C0A06:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _021C09F4
	cmp r4, #0
	bne _021C0A1E
	add r0, r7, #0
	bl ovy209_21c0a58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021C0A1E:
	ldr r0, _021C0A54 ; =0x00000205
	mov r5, #0
	sub r0, r0, #1
	str r0, [sp]
_021C0A26:
	lsl r0, r5, #3
	add r6, r7, r0
	mov r0, #0x3c
	bl sub_02005784
	add r1, r0, #1
	ldr r0, _021C0A54 ; =0x00000205
	strb r1, [r6, r0]
	add r0, r4, #0
	bl sub_02005784
	add r1, sp, #4
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	strb r1, [r6, r0]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x3c
	blo _021C0A26
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0A54: .word 0x00000205
	thumb_func_end ovy209_21c09dc

	thumb_func_start ovy209_21c0a58
ovy209_21c0a58: ; 0x021C0A58
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _021C0A84 ; =0x00000205
	mov r4, #0
	sub r6, r0, #1
_021C0A62:
	lsl r0, r4, #3
	add r5, r7, r0
	mov r0, #0x3c
	bl sub_02005784
	add r1, r0, #1
	ldr r0, _021C0A84 ; =0x00000205
	strb r1, [r5, r0]
	mov r0, #0xff
	strb r0, [r5, r6]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x3c
	blo _021C0A62
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0A84: .word 0x00000205
	thumb_func_end ovy209_21c0a58

	thumb_func_start sub_021C0A88
sub_021C0A88: ; 0x021C0A88
	lsl r1, r1, #2
	add r3, r0, r1
	mov r1, #0x7b
	lsl r1, r1, #2
	str r2, [r3, r1]
	mov r2, #1
	lsl r1, r2, #9
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0A88

	thumb_func_start sub_021C0A9C
sub_021C0A9C: ; 0x021C0A9C
	mov r2, #0x7f
	lsl r2, r2, #2
	strb r1, [r0, r2]
	mov r2, #1
	lsl r1, r2, #9
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021C0A9C

	thumb_func_start ovy209_21c0aac
ovy209_21c0aac: ; 0x021C0AAC
	push {r4, lr}
	lsl r1, r1, #7
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r0, r0, #8
	add r0, #0x40
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #4
	mov r1, #0
	add r2, r4, #0
	bl sub_02044CFC
	mov r0, #6
	mov r1, #0
	add r2, r4, #0
	bl sub_02044CFC
	mov r0, #5
	mov r1, #0
	add r2, r4, #0
	bl sub_02044CFC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21c0aac

	thumb_func_start ovy209_21c0ae0
ovy209_21c0ae0: ; 0x021C0AE0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x57
	add r5, r2, #0
	str r1, [sp]
	ldr r3, _021C0B6C ; =0x021C3128
	mov r1, #0x60
	mov r2, #0
	add r6, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	strh r6, [r4]
	str r7, [r4, #4]
	str r5, [r4, #8]
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	mov r1, #2
	str r1, [r4, #0x14]
	add r1, r4, #0
	ldrh r2, [r5, #0x3e]
	add r1, #0x48
	strh r2, [r1]
	ldr r1, [r4, #8]
	add r1, #0x44
	ldrh r2, [r1]
	add r1, r4, #0
	add r1, #0x4a
	strh r2, [r1]
	mov r1, #0
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	bl ovy209_21c0d10
	ldr r0, _021C0B70 ; =0x04001000
	ldr r1, _021C0B74 ; =0xFFFF1FFF
	ldr r2, [r0]
	add r5, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	add r5, #0x48
	str r1, [r0]
	ldrh r1, [r5]
	mov r2, #0x3f
	mov r3, #0x1f
	bic r1, r2
	add r6, r1, #0
	orr r6, r3
	mov r1, #0x20
	orr r1, r6
	strh r1, [r5]
	add r1, r0, #0
	add r1, #0x4a
	ldrh r5, [r1]
	bic r5, r2
	add r2, r5, #0
	orr r2, r3
	strh r2, [r1]
	add r1, r0, #0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _021C0B78 ; =0x000080C0
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0B6C: .word 0x021C3128
_021C0B70: .word 0x04001000
_021C0B74: .word 0xFFFF1FFF
_021C0B78: .word 0x000080C0
	thumb_func_end ovy209_21c0ae0

	thumb_func_start ovy209_21c0b7c
ovy209_21c0b7c: ; 0x021C0B7C
	push {r4, lr}
	ldr r2, _021C0BF4 ; =0x04001000
	add r4, r0, #0
	ldr r1, [r2]
	ldr r0, _021C0BF8 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _021C0B9A
	ldr r0, [r4, #0x4c]
	bl sub_0204C108
_021C0B9A:
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _021C0BAA
	ldr r0, [r4, #0x50]
	bl sub_0204C108
_021C0BAA:
	ldr r0, [r4, #0x5c]
	bl sub_0204C108
	ldr r0, [r4, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x28]
	bl sub_0204B98C
	ldr r0, [r4, #0x34]
	bl sub_0204BE64
	ldr r0, [r4, #0x20]
	bl sub_0204BCD0
	ldr r0, [r4, #0x2c]
	bl sub_0204B98C
	ldr r0, [r4, #0x38]
	bl sub_0204BE64
	ldr r0, [r4, #0x24]
	bl sub_0204BCD0
	ldr r0, [r4, #0x30]
	bl sub_0204B98C
	ldr r0, [r4, #0x3c]
	bl sub_0204BE64
	ldr r0, [r4, #0x18]
	bl sub_0204BF98
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
_021C0BF4: .word 0x04001000
_021C0BF8: .word 0xFFFF1FFF
	thumb_func_end ovy209_21c0b7c

	thumb_func_start ovy209_21c0bfc
ovy209_21c0bfc: ; 0x021C0BFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021C0CA2
	ldr r3, _021C0D08 ; =0x021C2F78
	add r2, sp, #4
	mov r1, #0xc
_021C0C0E:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021C0C0E
	add r0, sp, #4
	bl sub_0203DA0C
	add r4, r0, #0
	ldr r0, _021C0D0C ; =0x04001050
	mov r1, #0x10
	mov r6, #0
	mov r2, #0
	bl G2x_SetBlendBrightness_
	sub r0, r6, #1
	cmp r4, r0
	beq _021C0CA2
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _021C0CA2
	add r6, r5, #0
	add r6, #0x40
	lsl r7, r4, #2
	ldr r0, [r6, r7]
	cmp r0, #0
	bne _021C0CA2
	cmp r4, #0
	ldr r0, [r5, #4]
	bne _021C0C56
	mov r1, #7
	b _021C0C58
_021C0C56:
	mov r1, #8
_021C0C58:
	bl ovy209_21bfc60
	mov r2, #0x10
	ldr r0, _021C0D0C ; =0x04001050
	mov r1, #0x10
	sub r2, #0x18
	bl G2x_SetBlendBrightness_
	mov r1, #1
	str r1, [r6, r7]
	mov r0, #0
	str r1, [r5, #0x10]
	mov r1, #0x20
	str r0, [r5, #0xc]
	str r4, [r5, #0x14]
	cmp r4, #0
	beq _021C0C7C
	mov r1, #0xe0
_021C0C7C:
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x80
	strh r1, [r0, #2]
	ldr r0, [r5, #0x5c]
	bl sub_0204C56C
	ldr r0, [r5, #0x5c]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, #0x5c]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	mov r0, #1
	bl sub_0203D564
_021C0CA2:
	ldr r0, [r5, #0x14]
	cmp r0, #2
	beq _021C0CE6
	ldr r0, [r5, #4]
	bl sub_021BFC98
	cmp r0, #0
	ldr r0, [r5, #0x10]
	bne _021C0CDE
	cmp r0, #0
	bne _021C0CE6
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x4c]
	bl sub_0204C124
	ldr r0, [r5, #0x14]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x54]
	bl sub_0204C124
	mov r0, #2
	str r0, [r5, #0x14]
	b _021C0CE6
_021C0CDE:
	cmp r0, #1
	bne _021C0CE6
	mov r0, #0
	str r0, [r5, #0x10]
_021C0CE6:
	ldr r0, [r5, #0x5c]
	bl sub_0204C138
	cmp r0, #1
	bne _021C0D02
	ldr r0, [r5, #0x5c]
	bl sub_0204C560
	cmp r0, #0
	bne _021C0D02
	ldr r0, [r5, #0x5c]
	mov r1, #0
	bl sub_0204C124
_021C0D02:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C0D08: .word 0x021C2F78
_021C0D0C: .word 0x04001050
	thumb_func_end ovy209_21c0bfc

	thumb_func_start ovy209_21c0d10
ovy209_21c0d10: ; 0x021C0D10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_021C033C
	str r0, [sp, #0x10]
	ldrh r2, [r5]
	mov r0, #5
	mov r1, #0
	mov r4, #0
	bl sub_0204BF1C
	str r0, [r5, #0x18]
	bl sub_0204C028
	ldrh r1, [r5]
	mov r0, #0x2e
	bl sub_0204AA30
	str r4, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #1
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #0
	add r6, r0, #0
	mov r7, #1
	bl sub_0204BBB8
	str r0, [r5, #0x1c]
	ldrh r0, [r5]
	mov r1, #6
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x28]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0x15
	bl sub_0204BDE0
	str r0, [r5, #0x34]
	str r4, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0x40
	bl sub_0204BBB8
	str r0, [r5, #0x20]
	ldrh r0, [r5]
	mov r1, #7
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x2c]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0x13
	mov r2, #0x16
	bl sub_0204BDE0
	str r0, [r5, #0x38]
	add r0, r6, #0
	bl sub_0204AB0C
	ldrh r1, [r5]
	mov r0, #0x2d
	bl sub_0204AA30
	ldrh r1, [r5]
	mov r2, #1
	mov r3, #0x60
	str r1, [sp]
	mov r1, #0
	add r6, r0, #0
	bl sub_0204BBA0
	str r0, [r5, #0x24]
	ldrh r0, [r5]
	mov r1, #0x1a
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x30]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0x16
	bl sub_0204BDE0
	str r0, [r5, #0x3c]
	add r0, r6, #0
	bl sub_0204AB0C
	add r7, sp, #0x18
_021C0DF0:
	lsl r0, r4, #1
	str r0, [sp, #0x14]
	add r0, r5, r0
	add r0, #0x48
	ldrh r1, [r0]
	cmp r1, #0xff
	beq _021C0E82
	ldr r0, [sp, #0x10]
	bl sub_021EEF78
	bl sub_021EEF94
	str r0, [sp, #0xc]
	cmp r4, #0
	bne _021C0E12
	mov r0, #0x20
	b _021C0E14
_021C0E12:
	mov r0, #0xe0
_021C0E14:
	strh r0, [r7, #8]
	mov r0, #0xa0
	strh r0, [r7, #0xa]
	strh r4, [r7, #0xc]
	mov r0, #0xa
	strb r0, [r7, #0xe]
	mov r0, #0
	strb r0, [r7, #0xf]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	bl sub_0204C040
	str r0, [r6, #0x4c]
	mov r0, #0
	strh r0, [r7, #0xc]
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0x38]
	bl sub_0204C040
	str r0, [r6, #0x54]
	ldr r0, [r6, #0x4c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r6, #0x54]
	mov r1, #0
	bl sub_0204C124
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0xc]
	add r2, r5, r2
	add r2, #0x48
	ldrh r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy209_21c0ecc
_021C0E82:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021C0DF0
	mov r1, #0x80
	add r0, sp, #0x18
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x30]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x3c]
	bl sub_0204C040
	str r0, [r5, #0x5c]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, #0x5c]
	mov r1, #1
	bl sub_0204C520
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c0d10

	thumb_func_start ovy209_21c0ecc
ovy209_21c0ecc: ; 0x021C0ECC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	str r1, [sp]
	add r5, r3, #0
	add r1, r2, #0
	mov r2, #0
	str r2, [sp, #0x14]
	ldrh r3, [r7]
	mov r0, #0x2c
	mov r2, #0
	bl sub_0204B4E4
	str r0, [sp, #0x30]
	bl sub_02068664
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #1
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0xc]
	ldr r6, [r4, #0x38]
	lsl r0, r0, #3
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x30]
	lsl r0, r0, #3
	str r0, [sp, #0x28]
	ldr r0, [r7, #0x28]
	bl sub_0204BB80
	ldr r1, [sp]
	lsl r1, r1, #0xb
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	add r0, r4, r6
	blx sub_0207B0AC
	ldr r1, [sp]
	ldr r2, [sp, #0x28]
	add r0, r4, r6
	lsl r1, r1, #5
	bl sub_0207560C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	blx sub_0207B0AC
	cmp r5, #0x22
	beq _021C0F3C
	cmp r5, #0x23
	beq _021C0F3E
	cmp r5, #0x32
	beq _021C0F48
	b _021C0F56
_021C0F3C:
	b _021C0F56
_021C0F3E:
	mov r0, #2
	str r0, [sp, #0x10]
	mov r5, #4
	mov r0, #8
_021C0F46:
	b _021C0F62
_021C0F48:
	ldr r0, [sp, #0x14]
	mov r5, #8
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r0, #4
	b _021C0F46
_021C0F56:
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x14]
	mov r5, #4
	mov r0, #4
_021C0F62:
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _021C0FDE
_021C0F6E:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	lsl r0, r0, #8
	str r0, [sp, #8]
	add r0, r1, #0
	lsl r0, r0, #5
	mul r0, r5
	str r0, [sp, #4]
_021C0F84:
	mov r4, #0
	cmp r5, #0
	bls _021C0FC0
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	lsl r7, r0, #2
	mul r1, r5
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r6, r0, r1
_021C0F98:
	lsl r0, r4, #2
	add r1, r0, r6
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	add r1, r4, r1
	lsl r2, r1, #5
	ldr r1, [sp, #8]
	add r1, r2, r1
	add r2, r7, r1
	ldr r1, [sp, #0x24]
	add r1, r1, r2
	mov r2, #4
	bl sub_02075768
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r5
	blo _021C0F98
_021C0FC0:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, #8
	blo _021C0F84
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	blo _021C0F6E
_021C0FDE:
	ldr r0, [sp, #0x30]
	bl sub_0203A24C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c0ecc

	thumb_func_start ovy209_21c0fe8
ovy209_21c0fe8: ; 0x021C0FE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x48
	ldrh r0, [r0]
	add r4, r1, #0
	cmp r0, #0xff
	beq _021C1004
	ldr r0, [r5, #0x4c]
	bl sub_0204C124
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	bl sub_0204C124
_021C1004:
	add r0, r5, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0xff
	beq _021C101E
	ldr r0, [r5, #0x50]
	add r1, r4, #0
	bl sub_0204C124
	ldr r0, [r5, #0x58]
	add r1, r4, #0
	bl sub_0204C124
_021C101E:
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy209_21c0fe8

	thumb_func_start ovy209_21c1024
ovy209_21c1024: ; 0x021C1024
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x3f
	str r1, [sp]
	ldr r3, _021C1084 ; =0x021C313C
	mov r1, #0x44
	mov r2, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	mov r0, #0x10
	str r7, [r5, #0x34]
	bl sub_0203A584
	add r1, r0, #0
	mov r0, #0x43
	str r0, [sp]
	ldrh r0, [r5]
	ldr r3, _021C1084 ; =0x021C313C
	mov r2, #0
	bl sub_0203A1FC
	add r1, r0, #0
	str r1, [r5, #8]
	mov r0, #0x10
	bl sub_0203A58C
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	bl sub_0205EA3C
	add r1, r4, #0
_021C106E:
	lsl r0, r4, #2
	add r0, r5, r0
	str r1, [r0, #0xc]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021C106E
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1084: .word 0x021C313C
	thumb_func_end ovy209_21c1024

	thumb_func_start ovy209_21c1088
ovy209_21c1088: ; 0x021C1088
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021C1090:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021C10C0
	ldr r0, [r0, #4]
	bl sub_02015924
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl sub_020158F8
	ldr r0, [r5, #0xc]
	mov r1, #8
	ldrh r2, [r0, #0x16]
	tst r1, r2
	beq _021C10B8
	ldr r0, [r0, #0xc]
	bl sub_0203A24C
_021C10B8:
	ldr r0, [r5, #0xc]
	bl sub_0203A24C
	str r7, [r5, #0xc]
_021C10C0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xa
	blo _021C1090
	add r0, r6, #0
	add r0, #0x38
	mov r1, #0
	bl sub_0205EB30
	add r4, r0, #0
	beq _021C10F4
	add r7, r6, #0
	add r7, #0x38
_021C10DC:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0205EB30
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy209_21c1328
	add r4, r5, #0
	cmp r5, #0
	bne _021C10DC
_021C10F4:
	ldr r0, [r6, #4]
	bl sub_0203A610
	ldr r0, [r6, #8]
	bl sub_0203A24C
	add r0, r6, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c1088

	thumb_func_start ovy209_21c1108
ovy209_21c1108: ; 0x021C1108
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	bl sub_021C0374
	str r0, [sp]
	cmp r0, #0
	beq _021C119E
_021C111E:
	mov r6, #0
	add r7, r6, #0
_021C1122:
	lsl r0, r6, #2
	add r4, r5, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _021C1152
	add r0, r5, #0
	bl ovy209_21c125c
	cmp r0, #1
	ldr r0, [r4, #0xc]
	bne _021C1140
	bl sub_0203A24C
	str r7, [r4, #0xc]
	b _021C1152
_021C1140:
	ldrh r1, [r0, #0x16]
	mov r0, #2
	tst r0, r1
	beq _021C1152
	mov r0, #4
	tst r0, r1
	bne _021C1152
	mov r0, #0
	str r0, [sp, #4]
_021C1152:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0xa
	blo _021C1122
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021C1190
	mov r2, #0
	mov r7, #4
	mov r3, #4
	mov r4, #2
_021C116A:
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _021C1186
	ldrh r0, [r1, #0x16]
	add r6, r0, #0
	tst r6, r4
	beq _021C1186
	add r6, r0, #0
	tst r6, r3
	beq _021C1186
	eor r0, r7
	strh r0, [r1, #0x16]
_021C1186:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	blo _021C116A
_021C1190:
	ldr r0, [r5, #4]
	bl sub_0203A5D0
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	bne _021C111E
_021C119E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1108

	thumb_func_start ovy209_21c11a4
ovy209_21c11a4: ; 0x021C11A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r5, #0
_021C11B0:
	lsl r0, r5, #2
	add r0, r7, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021C11C4
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xa
	blo _021C11B0
_021C11C4:
	mov r0, #0xc4
	str r0, [sp]
	ldrh r0, [r7]
	add r6, r7, #0
	ldr r3, _021C1234 ; =0x021C313C
	mov r1, #0x1c
	mov r2, #0
	lsl r4, r5, #2
	add r6, #0xc
	bl sub_0203A1FC
	ldr r1, [sp, #4]
	str r0, [r6, r4]
	str r1, [r0, #8]
	ldr r1, [r6, r4]
	mov r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r6, r4]
	strh r0, [r1, #0x14]
	ldr r1, [r6, r4]
	str r0, [r1, #0x10]
	ldr r1, [r6, r4]
	strh r0, [r1, #0x16]
	ldr r1, [r6, r4]
	strb r0, [r1, #0x18]
	ldr r0, [r6, r4]
	strb r5, [r0, #0x19]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021C120A
	ldr r2, [r6, r4]
	mov r0, #2
	ldrh r1, [r2, #0x16]
	orr r0, r1
	strh r0, [r2, #0x16]
_021C120A:
	ldr r0, [r6, r4]
	ldr r1, _021C1238 ; =0x021C2F84
	str r7, [r0]
	ldrh r0, [r7]
	bl sub_020158AC
	ldr r1, [r6, r4]
	str r0, [r1, #4]
	ldr r1, [r6, r4]
	ldr r0, [r1, #4]
	bl sub_02015900
	ldr r1, [r6, r4]
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bl sub_02015910
	ldr r0, [r6, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021C1234: .word 0x021C313C
_021C1238: .word 0x021C2F84
	thumb_func_end ovy209_21c11a4

	thumb_func_start ovy209_21c123c
ovy209_21c123c: ; 0x021C123C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	lsl r1, r2, #2
	ldr r1, [r5, r1]
	mov r2, #0
	add r1, r5, r1
	add r4, r3, #0
	bl ovy209_21c11a4
	str r5, [r0, #0xc]
	ldrh r2, [r0, #0x16]
	mov r1, #8
	orr r1, r2
	strh r1, [r0, #0x16]
	strb r4, [r0, #0x18]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c123c

	thumb_func_start ovy209_21c125c
ovy209_21c125c: ; 0x021C125C
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021C126A
	sub r0, r0, #1
	strh r0, [r4, #0x14]
_021C126A:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _021C12A2
	ldrh r1, [r4, #0x16]
	mov r0, #4
	tst r0, r1
	bne _021C12A2
	ldr r0, [r4, #4]
	bl sub_0201592C
	ldrh r1, [r4, #0x16]
	lsl r1, r1, #0x1f
	beq _021C12A2
	ldr r0, [r4, #4]
	bl sub_02015924
	ldr r0, [r4, #4]
	bl sub_020158F8
	ldrh r1, [r4, #0x16]
	mov r0, #8
	tst r0, r1
	beq _021C129E
	ldr r0, [r4, #0xc]
	bl sub_0203A24C
_021C129E:
	mov r0, #1
	pop {r4, pc}
_021C12A2:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy209_21c125c

	thumb_func_start sub_021C12AC
sub_021C12AC: ; 0x021C12AC
	mov r3, #0
	mov r2, #0
_021C12B0:
	lsl r1, r2, #2
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _021C12C0
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
_021C12C0:
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #0xa
	blo _021C12B0
	add r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021C12AC

	thumb_func_start ovy209_21c12d0
ovy209_21c12d0: ; 0x021C12D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021C1320 ; =0x00000115
	str r3, [sp, #4]
	str r0, [sp]
	add r7, r1, #0
	add r6, r2, #0
	ldrh r0, [r5]
	ldr r3, _021C1324 ; =0x021C313C
	mov r1, #0x10
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r3, [sp, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0203A614
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _021C1312
	add r5, #0x38
	add r0, r5, #0
	add r1, r4, #0
	str r6, [r4, #8]
	bl sub_0205EA64
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C1312:
	add r0, r4, #0
	bl sub_0203A24C
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1320: .word 0x00000115
_021C1324: .word 0x021C313C
	thumb_func_end ovy209_21c12d0

	thumb_func_start ovy209_21c1328
ovy209_21c1328: ; 0x021C1328
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	bl sub_0203A24C
	ldr r0, [r4, #0xc]
	bl sub_0203A6A8
	add r5, #0x38
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205EAF4
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c1328

	thumb_func_start ovy209_21c134c
ovy209_21c134c: ; 0x021C134C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xc]
	ldrh r3, [r0, #0xe]
	cmp r3, r1
	blo _021C1366
	ldr r0, [r0, #8]
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C1366:
	ldr r4, [r0, #4]
	ldr r0, [r0, #8]
	sub r2, r0, r4
	add r0, r2, #0
	mul r0, r3
	blx sub_0208D65C
	add r0, r4, r0
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c134c

	thumb_func_start ovy209_21c137c
ovy209_21c137c: ; 0x021C137C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x2a]
	add r4, r1, #0
	add r0, r0, #1
	strh r0, [r5, #0x2a]
	ldrh r1, [r5, #0x2a]
	ldrh r0, [r5, #0x28]
	cmp r1, r0
	blo _021C13A0
	ldr r0, [r5, #0x10]
	str r0, [r4]
	ldr r0, [r5, #0x14]
	str r0, [r4, #4]
	ldr r0, [r5, #0x18]
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021C13A0:
	cmp r1, #0
	beq _021C13B6
	lsl r0, r1, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021C13C4
_021C13B6:
	lsl r0, r1, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021C13C4:
	blx sub_0208DA4C
	add r1, r5, #0
	add r1, #0x1c
	add r2, r5, #4
	add r3, r4, #0
	blx VEC_MultAdd
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c137c

	thumb_func_start ovy209_21c13d8
ovy209_21c13d8: ; 0x021C13D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_021C02D0
	add r6, sp, #0
	ldr r1, [r5, #4]
	add r2, r6, #0
	bl sub_021BE898
	add r1, r5, #0
	add r0, r6, #0
	add r1, #8
	add r2, r4, #0
	bl VEC_Add
	ldrh r0, [r5, #0x16]
	add r0, r0, #1
	strh r0, [r5, #0x16]
	ldrh r1, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	cmp r1, r0
	blo _021C1410
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021C1410:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21c13d8

	thumb_func_start sub_021C1418
sub_021C1418: ; 0x021C1418
	ldr r1, [r0, #4]
	add r2, r1, #1
	ldr r1, [r0, #8]
	str r2, [r0, #4]
	cmp r2, r1
	blo _021C1438
	ldr r1, [r0, #0xc]
	sub r2, r1, #1
	ldr r1, _021C143C ; =0x00000000
	str r2, [r0, #0xc]
	str r1, [r0, #4]
	bne _021C1434
	mov r0, #2
	bx lr
_021C1434:
	mov r0, #1
	bx lr
_021C1438:
	mov r0, #0
	bx lr
	.align 2, 0
_021C143C: .word 0x00000000
	thumb_func_end sub_021C1418
_021C1440:
	.byte 0xCA, 0x8A, 0x01, 0x20, 0x02, 0x43, 0xCA, 0x82, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy209_21c144c
ovy209_21c144c: ; 0x021C144C
	push {r3, lr}
	ldr r0, [r1, #4]
	bl sub_02015A04
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy209_21c144c

	thumb_func_start ovy209_21c1458
ovy209_21c1458: ; 0x021C1458
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	strh r0, [r4, #0x14]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy209_21c1458

	thumb_func_start ovy209_21c1468
ovy209_21c1468: ; 0x021C1468
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	ldr r1, [r4, #0x10]
	cmp r1, r0
	blo _021C147C
	mov r0, #0
	pop {r4, pc}
_021C147C:
	sub r0, r0, r1
	strh r0, [r4, #0x14]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy209_21c1468

	thumb_func_start ovy209_21c1484
ovy209_21c1484: ; 0x021C1484
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	ldrh r1, [r4, #0x16]
	mov r0, #2
	tst r0, r1
	beq _021C149C
	mov r0, #4
	orr r0, r1
	strh r0, [r4, #0x16]
_021C149C:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy209_21c1484

	thumb_func_start ovy209_21c14a0
ovy209_21c14a0: ; 0x021C14A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r0, [r6, #4]
	ldr r4, [r6]
	bl sub_02015A04
	add r7, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	str r0, [sp]
	ldrh r0, [r4]
	ldr r3, _021C1504 ; =0x021C3150
	mov r1, #0x18
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	str r4, [r5, #0x10]
	ldr r0, [r4, #0x34]
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #0xe]
	ldr r0, [r4, #0x34]
	bl sub_021C032C
	str r0, [r5, #4]
	mov r1, #0xe0
	str r1, [r5, #8]
	sub r1, r1, r0
	bpl _021C14DE
	neg r1, r1
_021C14DE:
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r5, #0xc]
	ldr r1, _021C1508 ; =ovy209_21c160c
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r5, #0x14]
	cmp r7, #1
	bne _021C1500
	ldrh r0, [r5, #0xc]
	strh r0, [r6, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C1500:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1504: .word 0x021C3150
_021C1508: .word ovy209_21c160c
	thumb_func_end ovy209_21c14a0

	thumb_func_start ovy209_21c150c
ovy209_21c150c: ; 0x021C150C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r0, [r6, #4]
	ldr r4, [r6]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, _021C1574 ; =0x000001C5
	ldr r3, _021C1578 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #0x18
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	str r4, [r5, #0x10]
	ldr r0, [r4, #0x34]
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #0xe]
	ldr r0, [r4, #0x34]
	bl sub_021C032C
	str r0, [r5, #4]
	mov r1, #0
	str r1, [r5, #8]
	sub r1, r1, r0
	bpl _021C1548
	neg r1, r1
_021C1548:
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r5, #0xc]
	ldr r1, _021C157C ; =ovy209_21c160c
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x34]
	bl ovy209_21bfc00
	cmp r7, #1
	bne _021C1570
	ldrh r0, [r5, #0xc]
	strh r0, [r6, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C1570:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1574: .word 0x000001C5
_021C1578: .word 0x021C3150
_021C157C: .word ovy209_21c160c
	thumb_func_end ovy209_21c150c

	thumb_func_start ovy209_21c1580
ovy209_21c1580: ; 0x021C1580
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r0, [r6, #4]
	ldr r5, [r6]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r6, #4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	cmp r7, #0
	bne _021C15B2
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_021C0330
	b _021C15FA
_021C15B2:
	ldr r0, _021C1600 ; =0x000001ED
	ldr r3, _021C1604 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x18
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x34]
	bl sub_021C032C
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	ldr r1, _021C1608 ; =ovy209_21c160c
	str r0, [r4, #8]
	strh r7, [r4, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021C15FA
	ldrh r0, [r4, #0xc]
	add sp, #0xc
	strh r0, [r6, #0x14]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C15FA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C1600: .word 0x000001ED
_021C1604: .word 0x021C3150
_021C1608: .word ovy209_21c160c
	thumb_func_end ovy209_21c1580

	thumb_func_start ovy209_21c160c
ovy209_21c160c: ; 0x021C160C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r1, sp, #0
	bl ovy209_21c134c
	ldr r1, [sp]
	add r4, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r5]
	lsr r1, r1, #0x10
	bl sub_021C0330
	cmp r4, #1
	bne _021C1632
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl ovy209_21c1328
_021C1632:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c160c

	thumb_func_start ovy209_21c1634
ovy209_21c1634: ; 0x021C1634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r0, [r6, #4]
	ldr r5, [r6]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r6, #4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	cmp r7, #0
	bne _021C1666
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_021C0338
	b _021C16AE
_021C1666:
	ldr r0, _021C16B4 ; =0x00000229
	ldr r3, _021C16B8 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x18
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #0xe]
	ldr r0, [r5, #0x34]
	bl sub_021C0334
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	ldr r1, _021C16BC ; =ovy209_21c16c0
	str r0, [r4, #8]
	strh r7, [r4, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021C16AE
	ldrh r0, [r4, #0xc]
	add sp, #0xc
	strh r0, [r6, #0x14]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C16AE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C16B4: .word 0x00000229
_021C16B8: .word 0x021C3150
_021C16BC: .word ovy209_21c16c0
	thumb_func_end ovy209_21c1634

	thumb_func_start ovy209_21c16c0
ovy209_21c16c0: ; 0x021C16C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r1, sp, #0
	bl ovy209_21c134c
	ldr r1, [sp]
	add r4, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r5]
	lsr r1, r1, #0x10
	bl sub_021C0338
	cmp r4, #1
	bne _021C16EE
	ldr r0, [r5]
	mov r1, #0
	bl sub_021C0370
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl ovy209_21c1328
_021C16EE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c16c0

	thumb_func_start ovy209_21c16f0
ovy209_21c16f0: ; 0x021C16F0
	push {r3, lr}
	ldr r0, [r1, #4]
	bl sub_02015A04
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy209_21c16f0

	thumb_func_start ovy209_21c16fc
ovy209_21c16fc: ; 0x021C16FC
	push {r4, lr}
	ldr r4, [r1]
	ldr r0, [r4, #0x34]
	bl sub_021C02B0
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r2, #0
	bl ovy209_21c0008
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy209_21c16fc

	thumb_func_start ovy209_21c1714
ovy209_21c1714: ; 0x021C1714
	push {r3, lr}
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	bl sub_021C02C0
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1714

	thumb_func_start sub_021C1724
sub_021C1724: ; 0x021C1724
	mov r2, #0
	mvn r2, r2
	cmp r1, r2
	bne _021C1730
	ldrb r0, [r0, #0x18]
	bx lr
_021C1730:
	mov r0, #1
	lsl r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_021C1724

	thumb_func_start ovy209_21c1738
ovy209_21c1738: ; 0x021C1738
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	str r0, [sp]
	mov r5, #0
_021C1760:
	mov r0, #1
	lsl r0, r5
	tst r0, r6
	beq _021C177A
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r7, #0
	bl ovy209_21be928
_021C177A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1760
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c1738

	thumb_func_start ovy209_21c1788
ovy209_21c1788: ; 0x021C1788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	str r0, [sp]
	mov r5, #0
_021C17B0:
	mov r0, #1
	lsl r0, r5
	tst r0, r7
	beq _021C17D0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	mov r2, #0
	cmp r6, #0
	beq _021C17CA
	mov r2, #1
_021C17CA:
	ldr r0, [sp]
	bl sub_021BE980
_021C17D0:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C17B0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1788

	thumb_func_start ovy209_21c17e0
ovy209_21c17e0: ; 0x021C17E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r0, r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	ldr r5, [r1]
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_021C1724
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x34]
	bl sub_021C02D0
	str r0, [sp, #0x14]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	mov r7, #0
	str r0, [sp, #0x24]
_021C183C:
	mov r1, #1
	lsl r1, r7
	ldr r0, [sp, #0x1c]
	tst r0, r1
	beq _021C18E2
	ldr r0, [r5, #0x34]
	add r1, r7, #0
	bl sub_021C02D4
	str r0, [sp, #0x20]
	cmp r6, #0
	bne _021C186C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc]
	add r2, sp, #0x34
	str r0, [sp, #0x38]
	ldr r0, [sp, #8]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x14]
	bl sub_021BE8A8
	b _021C18E2
_021C186C:
	ldr r0, _021C1904 ; =0x000002DE
	ldr r3, _021C1908 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, [sp, #0x20]
	str r5, [r4, #0x30]
	str r0, [r4]
	ldr r0, [r5, #0x34]
	ldr r1, [sp, #0x20]
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldr r0, [sp, #0x14]
	add r2, #8
	bl sub_021BE898
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	str r0, [r4, #0x14]
	ldr r0, [sp, #0xc]
	add r1, #8
	str r0, [r4, #0x18]
	ldr r0, [sp, #8]
	add r2, sp, #0x28
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x24]
	strh r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x14
	bl VEC_Subtract
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x28]
	ldr r1, _021C190C ; =ovy209_21c1a58
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x34]
_021C18E2:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	blo _021C183C
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021C18FC
	ldr r0, [sp, #4]
	add sp, #0x40
	strh r6, [r0, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C18FC:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C1904: .word 0x000002DE
_021C1908: .word 0x021C3150
_021C190C: .word ovy209_21c1a58
	thumb_func_end ovy209_21c17e0

	thumb_func_start ovy209_21c1910
ovy209_21c1910: ; 0x021C1910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r0, r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	ldr r6, [r1]
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_021C1724
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x34]
	bl sub_021C02D0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
_021C196E:
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r1, r0
	ldr r0, [sp, #0x20]
	tst r0, r1
	beq _021C1A28
	ldr r0, [r6, #0x34]
	ldr r1, [sp, #0xc]
	bl sub_021C02D4
	add r5, r0, #0
	cmp r7, #0
	bne _021C19B6
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r2, sp, #0x28
	bl sub_021BE898
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x28
	add r0, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #8]
	add r1, r5, #0
	bl sub_021BE8A8
	b _021C1A28
_021C19B6:
	ldr r0, _021C1A4C ; =0x0000031F
	ldr r3, _021C1A50 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r6]
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r6, [r4, #0x30]
	str r5, [r4]
	ldr r0, [r6, #0x34]
	add r2, r4, #0
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldr r0, [sp, #8]
	add r1, r5, #0
	add r2, #8
	bl sub_021BE898
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	ldr r3, [r4, #8]
	add r0, r2, r0
	ldr r2, [sp, #0x1c]
	add r2, r3, r2
	str r2, [r4, #0x14]
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	strh r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	blx sub_0208D65C
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	blx sub_0208D65C
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	blx sub_0208D65C
	str r0, [r4, #0x28]
	ldr r1, _021C1A54 ; =ovy209_21c1a58
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x34]
_021C1A28:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #4
	blo _021C196E
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021C1A46
	ldr r0, [sp, #4]
	add sp, #0x34
	strh r7, [r0, #0x14]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C1A46:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C1A4C: .word 0x0000031F
_021C1A50: .word 0x021C3150
_021C1A54: .word ovy209_21c1a58
	thumb_func_end ovy209_21c1910

	thumb_func_start ovy209_21c1a58
ovy209_21c1a58: ; 0x021C1A58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_021C02D0
	add r7, sp, #0
	add r6, r0, #0
	add r0, r5, #4
	add r1, r7, #0
	bl ovy209_21c137c
	add r4, r0, #0
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021BE8A8
	cmp r4, #1
	bne _021C1A88
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x34]
	bl ovy209_21c1328
_021C1A88:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c1a58

	thumb_func_start ovy209_21c1a8c
ovy209_21c1a8c: ; 0x021C1A8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	add r7, r0, #0
	mov r5, #0
_021C1AAC:
	mov r0, #1
	lsl r0, r5
	tst r0, r6
	beq _021C1AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	add r0, r7, #0
	bl ovy209_21be904
_021C1AC4:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1AAC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1a8c

	thumb_func_start ovy209_21c1ad4
ovy209_21c1ad4: ; 0x021C1AD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	add r7, r0, #0
	mov r5, #0
_021C1AF4:
	mov r0, #1
	lsl r0, r5
	tst r0, r6
	beq _021C1B0C
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	add r0, r7, #0
	bl ovy209_21be8f4
_021C1B0C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1AF4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1ad4

	thumb_func_start ovy209_21c1b1c
ovy209_21c1b1c: ; 0x021C1B1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	str r0, [sp]
	lsl r0, r7, #0x18
	mov r5, #0
	lsr r7, r0, #0x18
_021C1B48:
	mov r0, #1
	lsl r0, r5
	tst r0, r6
	beq _021C1B62
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	ldr r0, [sp]
	add r2, r7, #0
	bl sub_021BE91C
_021C1B62:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1B48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c1b1c

	thumb_func_start ovy209_21c1b70
ovy209_21c1b70: ; 0x021C1B70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	str r0, [sp]
	mov r5, #0
_021C1B98:
	mov r0, #1
	lsl r0, r5
	tst r0, r7
	beq _021C1BB8
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	mov r2, #1
	cmp r6, #0
	bne _021C1BB2
	mov r2, #0
_021C1BB2:
	ldr r0, [sp]
	bl ovy209_21be994
_021C1BB8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1B98
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1b70

	thumb_func_start ovy209_21c1bc8
ovy209_21c1bc8: ; 0x021C1BC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	str r0, [sp]
	mov r5, #0
_021C1BF0:
	mov r0, #1
	lsl r0, r5
	tst r0, r7
	beq _021C1C10
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	mov r2, #1
	cmp r6, #0
	bne _021C1C0A
	mov r2, #0
_021C1C0A:
	ldr r0, [sp]
	bl sub_021BE9A8
_021C1C10:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1BF0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1bc8

	thumb_func_start ovy209_21c1c20
ovy209_21c1c20: ; 0x021C1C20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	mov r5, #0
	mov r7, #1
_021C1C40:
	add r0, r7, #0
	lsl r0, r5
	tst r0, r6
	beq _021C1C58
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ovy209_21c0248
_021C1C58:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1C40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1c20

	thumb_func_start ovy209_21c1c68
ovy209_21c1c68: ; 0x021C1C68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	mov r5, #0
	mov r7, #1
_021C1C82:
	add r0, r7, #0
	lsl r0, r5
	tst r0, r6
	beq _021C1C94
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	add r2, r7, #0
	bl sub_021BFAFC
_021C1C94:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1C82
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c1c68

	thumb_func_start ovy209_21c1ca4
ovy209_21c1ca4: ; 0x021C1CA4
	push {r4, lr}
	ldr r4, [r1]
	mov r1, #0
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl sub_021BFAFC
	ldr r0, [r4, #0x34]
	mov r1, #1
	mov r2, #0
	bl sub_021BFAFC
	ldr r0, [r4, #0x34]
	mov r1, #2
	mov r2, #0
	bl sub_021BFAFC
	ldr r0, [r4, #0x34]
	mov r1, #3
	mov r2, #0
	bl sub_021BFAFC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy209_21c1ca4

	thumb_func_start ovy209_21c1cd4
ovy209_21c1cd4: ; 0x021C1CD4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6, #4]
	ldr r5, [r6]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r6, #4]
	bl sub_02015A04
	add r1, r0, #0
	lsl r1, r1, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ovy209_21bf670
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x34]
	mov r1, #1
	lsr r2, r2, #0x18
	bl ovy209_21c0008
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c1cd4

	thumb_func_start ovy209_21c1d08
ovy209_21c1d08: ; 0x021C1D08
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r5, #0
	bl sub_021C1724
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r1, r0, #0
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r4, #0x34]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ovy209_21bf6d8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c1d08

	thumb_func_start ovy209_21c1d38
ovy209_21c1d38: ; 0x021C1D38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r0, r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	ldr r5, [r1]
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_021C1724
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x34]
	bl sub_021C02D0
	mov r6, #0
_021C1D82:
	mov r1, #1
	lsl r1, r6
	ldr r0, [sp, #0x14]
	tst r0, r1
	beq _021C1DCA
	ldr r0, _021C1DF0 ; =0x00000447
	ldr r3, _021C1DF4 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x20
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4, #0x18]
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl sub_021C02D4
	str r0, [r4, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, _021C1DF8 ; =ovy209_21c1dfc
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x34]
	add r2, r4, #0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	mov r3, #0xa
	str r0, [r4, #8]
	add r0, r5, #0
	str r7, [r4, #0xc]
	bl ovy209_21c12d0
	str r0, [r4, #0x1c]
_021C1DCA:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021C1D82
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021C1DEA
	ldr r0, [sp, #8]
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add sp, #0x18
	strh r1, [r0, #0x14]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021C1DEA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C1DF0: .word 0x00000447
_021C1DF4: .word 0x021C3150
_021C1DF8: .word ovy209_21c1dfc
	thumb_func_end ovy209_21c1d38

	thumb_func_start ovy209_21c1dfc
ovy209_21c1dfc: ; 0x021C1DFC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r0, [r5]
	bl sub_021C02D0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021C1418
	cmp r0, #2
	bne _021C1E32
	add r2, sp, #0xc
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	bl sub_021BE8D8
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl ovy209_21c1328
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021C1E32:
	mov r6, #0
	str r6, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	lsl r0, r0, #0xf
	blx sub_0208D868
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021C1E74 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r2, [r5, #0x14]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	add r2, sp, #0
	bl sub_021BE8D8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_021C1E74: .word FX_SinCosTable_
	thumb_func_end ovy209_21c1dfc

	thumb_func_start ovy209_21c1e78
ovy209_21c1e78: ; 0x021C1E78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r0, r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	ldr r5, [r1]
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_021C1724
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	bl sub_021C02D0
	add r0, r7, r4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
_021C1ECE:
	mov r1, #1
	lsl r1, r6
	ldr r0, [sp, #0x14]
	tst r0, r1
	beq _021C1F16
	ldr r0, _021C1F38 ; =0x00000497
	ldr r3, _021C1F3C ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x24
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4, #0x1c]
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl sub_021C02D4
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x34]
	ldr r1, _021C1F40 ; =ovy209_21c1f44
	str r0, [r4]
	ldr r0, [sp, #8]
	str r7, [r4, #4]
	str r0, [r4, #8]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	strh r0, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0xe]
	add r0, r5, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x20]
_021C1F16:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021C1ECE
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _021C1F32
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x1c
	strh r1, [r0, #0x14]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021C1F32:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021C1F38: .word 0x00000497
_021C1F3C: .word 0x021C3150
_021C1F40: .word ovy209_21c1f44
	thumb_func_end ovy209_21c1e78

	thumb_func_start ovy209_21c1f44
ovy209_21c1f44: ; 0x021C1F44
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	bl sub_021C02D0
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl ovy209_21c134c
	cmp r0, #1
	bne _021C1F80
	ldr r0, [r5, #8]
	mov r1, #0x5a
	lsl r0, r0, #0x10
	lsl r1, r1, #2
	blx sub_0208D65C
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_021BE8BC
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	bl ovy209_21c1328
	pop {r3, r4, r5, pc}
_021C1F80:
	ldr r0, [sp]
	mov r1, #0x5a
	lsl r0, r0, #0x10
	lsl r1, r1, #2
	blx sub_0208D65C
	add r2, r0, #0
	lsl r2, r2, #0x10
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_021BE8BC
	pop {r3, r4, r5, pc}
	thumb_func_end ovy209_21c1f44

	thumb_func_start ovy209_21c1f9c
ovy209_21c1f9c: ; 0x021C1F9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r0, r1, #0
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	ldr r4, [r1]
	bl sub_02015A04
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02015A04
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x34]
	bl sub_021C02D0
	str r0, [sp, #0x20]
	mov r0, #0
	add r1, sp, #0x30
	str r0, [sp, #0x10]
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	mov r6, #0
	mov r5, #0
_021C1FD2:
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C0364
	add r7, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C0350
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r6, r0
	bhs _021C1FF0
	add r6, r0, #0
_021C1FF0:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1FD2
	mov r5, #0
_021C1FFC:
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C0364
	add r7, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C0350
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r6, r0
	bne _021C201A
	str r5, [sp, #0x1c]
_021C201A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C1FFC
	mov r5, #0
	add r7, sp, #0x34
	add r6, sp, #0x40
_021C202A:
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl sub_021C02D4
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	add r2, r7, #0
	bl sub_021BE898
	ldr r1, [sp, #0x34]
	lsl r0, r5, #2
	str r1, [r6, r0]
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _021C204A
	str r1, [sp, #0x14]
_021C204A:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C202A
	mov r5, #0
	add r0, sp, #0x40
_021C2058:
	lsl r3, r5, #2
	ldr r2, [r0, r3]
	ldr r1, [sp, #0x14]
	sub r1, r2, r1
	str r1, [r0, r3]
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	cmp r5, #4
	blo _021C2058
	mov r5, #0
_021C206E:
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	beq _021C20DC
	add r2, sp, #0x30
	mov r1, #0
	add r0, sp, #0x40
	lsl r6, r5, #2
	add r3, r2, r5
	ldr r2, [r0, r6]
	add r7, r1, #0
_021C2082:
	cmp r5, r1
	beq _021C20B4
	cmp r2, #0
	ble _021C209C
	lsl r6, r1, #2
	ldr r6, [r0, r6]
	cmp r6, #0
	blt _021C209C
	cmp r2, r6
	ble _021C209C
	ldrsb r6, [r3, r7]
	add r6, r6, #1
	b _021C20B2
_021C209C:
	cmp r2, #0
	bge _021C20B4
	lsl r6, r1, #2
	ldr r6, [r0, r6]
	cmp r6, #0
	bgt _021C20B4
	cmp r2, r6
	bge _021C20B4
	mov r6, #0
	ldrsb r6, [r3, r6]
	sub r6, r6, #1
_021C20B2:
	strb r6, [r3]
_021C20B4:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #4
	blo _021C2082
	mov r0, #0
	ldrsb r2, [r3, r0]
	neg r1, r2
	cmp r2, #0
	blt _021C20CA
	add r1, r2, #0
_021C20CA:
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bge _021C20DC
	cmp r2, #0
	bge _021C20D6
	neg r2, r2
_021C20D6:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
_021C20DC:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021C206E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _021C228C ; =0x0000054F
	mov r7, #0
	str r0, [sp, #0x2c]
	sub r0, #0x1b
	str r0, [sp, #0x2c]
_021C20F4:
	ldr r0, [sp, #0x2c]
	ldr r3, _021C2290 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r5, r0, #0
	str r4, [r5, #0x30]
	ldr r0, [r4, #0x34]
	add r1, r7, #0
	bl sub_021C02D4
	add r1, r0, #0
	str r1, [r5]
	ldr r0, [r4, #0x34]
	add r2, r5, #0
	str r0, [r5, #4]
	mov r0, #0
	strh r0, [r5, #0x2e]
	ldr r0, [sp, #0x20]
	add r2, #8
	bl sub_021BE898
	add r0, sp, #0x30
	ldrsb r0, [r0, r7]
	ldr r1, [sp, #0x14]
	lsl r2, r0, #0x12
	add r1, r1, r2
	str r1, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r0, #0
	str r1, [r5, #0x18]
	ldr r1, [r5, #0x10]
	str r1, [r5, #0x1c]
	bge _021C2140
	neg r0, r0
_021C2140:
	ldr r1, [sp, #0x28]
	mul r0, r1
	ldr r1, [sp, #0x10]
	blx sub_0208D65C
	strh r0, [r5, #0x2c]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #8]
	sub r0, r1, r0
	ldrh r1, [r5, #0x2c]
	blx sub_0208D65C
	str r0, [r5, #0x20]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0xc]
	sub r0, r1, r0
	ldrh r1, [r5, #0x2c]
	blx sub_0208D65C
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x10]
	sub r0, r1, r0
	ldrh r1, [r5, #0x2c]
	blx sub_0208D65C
	str r0, [r5, #0x28]
	ldr r1, _021C2294 ; =ovy209_21c1a58
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r5, #0x34]
	ldrh r0, [r5, #0x2c]
	cmp r0, #0
	beq _021C21F2
	ldr r0, _021C228C ; =0x0000054F
	ldr r3, _021C2290 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #0x20
	mov r2, #0
	bl sub_0203A1FC
	add r6, r0, #0
	ldrh r0, [r5, #0x2c]
	mov r1, #0xf
	str r0, [sp, #0xc]
	blx sub_0208D65C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	beq _021C21B0
	mov r0, #1
	b _021C21B2
_021C21B0:
	mov r0, #0
_021C21B2:
	str r0, [sp, #8]
	str r4, [r6, #0x18]
	ldr r0, [r4, #0x34]
	add r1, r7, #0
	bl sub_021C02D4
	str r0, [r6, #0x10]
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [r6, #0x14]
	ldr r0, [r4, #0x34]
	mov r1, #0xf
	str r0, [r6]
	mov r0, #0
	str r0, [r6, #4]
	mov r0, #0xf
	str r0, [r6, #8]
	ldr r0, [sp, #0xc]
	blx sub_0208D65C
	ldr r1, [sp, #8]
	add r2, r6, #0
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r6, #0xc]
	ldr r1, _021C2298 ; =ovy209_21c1dfc
	add r0, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r6, #0x1c]
_021C21F2:
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x18]
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #4
	bhs _021C2206
	b _021C20F4
_021C2206:
	ldr r0, _021C229C ; =0x00000567
	ldr r3, _021C2290 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #0x18
	mov r2, #0
	mov r6, #0
	bl sub_0203A1FC
	add r5, r0, #0
	str r4, [r5, #0x10]
	ldr r0, [r4, #0x34]
	str r0, [r5]
	strh r6, [r5, #0xe]
	ldr r0, [r4, #0x34]
	bl sub_021C0334
	str r0, [r5, #4]
	ldr r0, [sp, #0x18]
	asr r0, r0, #1
	lsr r1, r0, #0x1e
	ldr r0, [sp, #0x18]
	add r1, r0, r1
	asr r0, r1, #2
	blx sub_0208D374
	ldr r1, _021C22A0 ; =0x45800000
	blx sub_0208E3C8
	mov r1, #0x43
	lsl r1, r1, #0x18
	blx sub_0208E144
	blx sub_0208DA4C
	str r0, [r5, #8]
	ldr r0, [sp, #0x28]
	ldr r1, _021C22A4 ; =ovy209_21c16c0
	strh r0, [r5, #0xc]
	add r0, r4, #0
	add r2, r5, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x34]
	mov r1, #1
	mov r5, #1
	bl sub_021C0370
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_021C036C
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _021C2284
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #4]
	add sp, #0x50
	strh r1, [r0, #0x14]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021C2284:
	add r0, r6, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021C228C: .word 0x0000054F
_021C2290: .word 0x021C3150
_021C2294: .word ovy209_21c1a58
_021C2298: .word ovy209_21c1dfc
_021C229C: .word 0x00000567
_021C22A0: .word 0x45800000
_021C22A4: .word ovy209_21c16c0
	thumb_func_end ovy209_21c1f9c

	thumb_func_start ovy209_21c22a8
ovy209_21c22a8: ; 0x021C22A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	mov r1, #0
	strb r1, [r5, #0x18]
	cmp r7, #1
	bne _021C22D8
	ldrb r1, [r5, #0x18]
	add r1, r1, #1
	strb r1, [r5, #0x18]
_021C22D8:
	cmp r6, #1
	bne _021C22E2
	ldrb r1, [r5, #0x18]
	add r1, r1, #2
	strb r1, [r5, #0x18]
_021C22E2:
	cmp r4, #1
	bne _021C22EC
	ldrb r1, [r5, #0x18]
	add r1, r1, #4
	strb r1, [r5, #0x18]
_021C22EC:
	cmp r0, #1
	bne _021C22F6
	ldrb r0, [r5, #0x18]
	add r0, #8
	strb r0, [r5, #0x18]
_021C22F6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c22a8

	thumb_func_start ovy209_21c22fc
ovy209_21c22fc: ; 0x021C22FC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02DC
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy209_21bd36c
	add r1, r0, #0
	lsl r2, r6, #0x18
	ldr r0, [r5, #0x34]
	lsr r2, r2, #0x18
	bl sub_021C02E8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c22fc

	thumb_func_start ovy209_21c2330
ovy209_21c2330: ; 0x021C2330
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	ldr r0, [r1, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02DC
	add r6, r0, #0
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02E0
	add r1, r0, #0
	add r0, r6, #0
	bl ovy209_21bd3d4
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x34]
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_021C02E8
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2330

	thumb_func_start ovy209_21c2368
ovy209_21c2368: ; 0x021C2368
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	ldr r0, [r1, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02DC
	add r6, r0, #0
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02E0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #1
	bl ovy209_21bd414
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c2368

	thumb_func_start ovy209_21c2394
ovy209_21c2394: ; 0x021C2394
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	ldr r0, [r1, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02DC
	add r6, r0, #0
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02E0
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl ovy209_21bd414
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c2394

	thumb_func_start ovy209_21c23c0
ovy209_21c23c0: ; 0x021C23C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02DC
	ldr r1, [sp, #4]
	str r0, [sp, #0x10]
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02E0
	str r0, [sp, #0x14]
	cmp r6, #0
	bne _021C2420
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	add r2, sp, #0x24
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x2c]
	bl sub_021BD3F0
	b _021C2492
_021C2420:
	ldr r0, _021C2498 ; =0x00000605
	ldr r3, _021C249C ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, [sp, #0x14]
	str r5, [r4, #0x30]
	str r0, [r4]
	ldr r0, [r5, #0x34]
	ldr r1, [sp, #0x14]
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldr r0, [sp, #0x10]
	add r2, #8
	bl sub_021BD404
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [r4, #0x14]
	ldr r0, [sp, #0xc]
	add r1, #8
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	add r0, r4, #0
	strh r6, [r4, #0x2c]
	add r0, #0x14
	add r2, sp, #0x18
	bl VEC_Subtract
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x28]
	ldr r1, _021C24A0 ; =ovy209_21c24a4
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x34]
_021C2492:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2498: .word 0x00000605
_021C249C: .word 0x021C3150
_021C24A0: .word ovy209_21c24a4
	thumb_func_end ovy209_21c23c0

	thumb_func_start ovy209_21c24a4
ovy209_21c24a4: ; 0x021C24A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_021C02DC
	add r7, sp, #0
	add r6, r0, #0
	add r0, r5, #4
	add r1, r7, #0
	bl ovy209_21c137c
	add r4, r0, #0
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021BD3F0
	cmp r4, #1
	bne _021C24D4
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x34]
	bl ovy209_21c1328
_021C24D4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c24a4

	thumb_func_start ovy209_21c24d8
ovy209_21c24d8: ; 0x021C24D8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02F0
	add r4, #0x33
	add r1, r4, #0
	bl ovy209_21c040c
	add r1, r0, #0
	lsl r2, r6, #0x18
	ldr r0, [r5, #0x34]
	lsr r2, r2, #0x18
	bl sub_021C02FC
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c24d8

	thumb_func_start ovy209_21c250c
ovy209_21c250c: ; 0x021C250C
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	ldr r0, [r1, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C02F0
	add r6, r0, #0
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02F4
	add r1, r0, #0
	add r0, r6, #0
	bl ovy209_21c0488
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x34]
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_021C02FC
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy209_21c250c

	thumb_func_start ovy209_21c2544
ovy209_21c2544: ; 0x021C2544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r6, [r5]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	str r0, [sp]
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r5, r0, #0
	lsl r1, r7, #0x18
	ldr r0, [r6, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02F4
	asr r1, r4, #3
	lsr r1, r1, #0x1c
	add r1, r4, r1
	asr r1, r1, #4
	str r1, [sp, #8]
	mov r2, #3
	ldr r1, [sp, #4]
	lsl r2, r2, #0x12
	sub r2, r2, r1
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #0xc]
	ldr r1, [sp]
	add r2, sp, #8
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r5, [sp, #0x10]
	bl ovy209_21c04a4
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2544

	thumb_func_start ovy209_21c25b0
ovy209_21c25b0: ; 0x021C25B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r4, r0, #0
	lsl r1, r6, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02F4
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy209_21c04e4
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c25b0

	thumb_func_start ovy209_21c25dc
ovy209_21c25dc: ; 0x021C25DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl sub_02015A04
	ldr r1, [sp, #4]
	str r0, [sp, #0x20]
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C02F4
	str r0, [sp, #0x24]
	ldr r0, _021C269C ; =0x00000695
	ldr r3, _021C26A0 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	str r5, [r4, #0x30]
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	strh r0, [r4, #0x2c]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [r4, #0x14]
	str r6, [r4, #0x18]
	sub r0, r1, r0
	str r7, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, _021C26A4 ; =ovy209_21c26a8
	sub r0, r0, r6
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x20]
	mov r3, #0xa
	sub r0, r0, r7
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x34]
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #8]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ovy209_21c12d0
	str r0, [r4, #0x34]
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C269C: .word 0x00000695
_021C26A0: .word 0x021C3150
_021C26A4: .word ovy209_21c26a8
	thumb_func_end ovy209_21c25dc

	thumb_func_start ovy209_21c26a8
ovy209_21c26a8: ; 0x021C26A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021C1418
	cmp r0, #2
	bne _021C26C4
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	bl ovy209_21c1328
	add sp, #0xc
	pop {r3, r4, pc}
_021C26C4:
	cmp r0, #1
	bne _021C2700
	ldr r0, [r4, #0x20]
	bl sub_02005784
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	lsr r0, r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x24]
	bl sub_02005784
	ldr r1, [r4, #0x18]
	add r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0x12
	sub r0, r0, r1
	lsr r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	bl sub_02005784
	ldr r1, [r4, #0x1c]
	add r2, sp, #0
	add r0, r1, r0
	str r0, [sp, #8]
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4, #0x10]
	bl ovy209_21c04a4
_021C2700:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy209_21c26a8

	thumb_func_start ovy209_21c2704
ovy209_21c2704: ; 0x021C2704
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C0304
	mov r1, #1
	add r4, r0, #0
	bl ovy209_21bd6cc
	str r0, [sp]
	ldr r1, [sp]
	ldr r2, _021C2758 ; =0x000003FF
	add r0, r4, #0
	mov r3, #0x10
	bl sub_021BD768
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_021BD770
	lsl r2, r6, #0x18
	ldr r0, [r5, #0x34]
	ldr r1, [sp]
	lsr r2, r2, #0x18
	bl sub_021C0318
	ldr r0, [r5, #0x34]
	bl sub_021BFB18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2758: .word 0x000003FF
	thumb_func_end ovy209_21c2704

	thumb_func_start ovy209_21c275c
ovy209_21c275c: ; 0x021C275C
	push {r4, r5, r6, lr}
	ldr r5, [r1]
	ldr r0, [r1, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C0304
	add r6, r0, #0
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C030C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy209_21bd738
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x34]
	mov r1, #0
	lsr r2, r2, #0x18
	bl sub_021C0318
	ldr r0, [r5, #0x34]
	bl sub_021BFB18
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c275c

	thumb_func_start ovy209_21c2798
ovy209_21c2798: ; 0x021C2798
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C0304
	ldr r1, [sp, #4]
	str r0, [sp, #0x10]
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C030C
	str r0, [sp, #0x14]
	cmp r6, #0
	bne _021C27F8
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	add r2, sp, #0x24
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x2c]
	bl sub_021BD748
	b _021C286A
_021C27F8:
	ldr r0, _021C2870 ; =0x00000708
	ldr r3, _021C2874 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x38
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, [sp, #0x14]
	str r5, [r4, #0x30]
	str r0, [r4]
	ldr r0, [r5, #0x34]
	ldr r1, [sp, #0x14]
	str r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #0x2e]
	ldr r0, [sp, #0x10]
	add r2, #8
	bl sub_021BD758
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [r4, #0x14]
	ldr r0, [sp, #0xc]
	add r1, #8
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	add r0, r4, #0
	strh r6, [r4, #0x2c]
	add r0, #0x14
	add r2, sp, #0x18
	bl VEC_Subtract
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	blx sub_0208D65C
	str r0, [r4, #0x28]
	ldr r1, _021C2878 ; =ovy209_21c287c
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0xa
	bl ovy209_21c12d0
	str r0, [r4, #0x34]
_021C286A:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C2870: .word 0x00000708
_021C2874: .word 0x021C3150
_021C2878: .word ovy209_21c287c
	thumb_func_end ovy209_21c2798

	thumb_func_start ovy209_21c287c
ovy209_21c287c: ; 0x021C287C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_021C0304
	add r7, sp, #0
	add r6, r0, #0
	add r0, r5, #4
	add r1, r7, #0
	bl ovy209_21c137c
	add r4, r0, #0
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021BD748
	cmp r4, #1
	bne _021C28AC
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x34]
	bl ovy209_21c1328
_021C28AC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c287c

	thumb_func_start ovy209_21c28b0
ovy209_21c28b0: ; 0x021C28B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021C1724
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	bl sub_021C0304
	str r0, [sp, #0x18]
	lsl r1, r6, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C030C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x34]
	bl sub_021C02D0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	mov r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
_021C2916:
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	bl sub_021C02D4
	mov r1, #1
	add r7, r0, #0
	lsl r1, r6
	ldr r0, [sp, #0x20]
	tst r0, r1
	beq _021C29A4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021C295C
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	add r2, sp, #0x34
	bl sub_021BE898
	ldr r0, [sp, #0xc]
	add r1, sp, #0x28
	str r0, [sp, #0x28]
	ldr r0, [sp, #8]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x30]
	add r0, sp, #0x34
	add r2, r0, #0
	bl VEC_Add
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x34
	bl sub_021BD748
	b _021C29A4
_021C295C:
	ldr r0, [r5, #0x34]
	bl sub_021C0324
	ldr r0, _021C29B4 ; =0x00000751
	ldr r3, _021C29B8 ; =0x021C3150
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0x30
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4, #0x28]
	ldr r0, [sp, #0x14]
	strb r6, [r4]
	str r0, [r4, #4]
	ldr r0, [r5, #0x34]
	ldr r1, _021C29BC ; =ovy209_21c29c0
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0x1e]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	mov r3, #7
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	strh r0, [r4, #0x1c]
	add r0, r5, #0
	bl ovy209_21c12d0
	str r0, [r4, #0x2c]
_021C29A4:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021C2916
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021C29B4: .word 0x00000751
_021C29B8: .word 0x021C3150
_021C29BC: .word ovy209_21c29c0
	thumb_func_end ovy209_21c28b0

	thumb_func_start ovy209_21c29c0
ovy209_21c29c0: ; 0x021C29C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #8]
	bl sub_021C0304
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_021C0324
	add r0, r5, #0
	add r7, sp, #0
	add r0, #8
	add r1, r7, #0
	bl ovy209_21c13d8
	add r4, r0, #0
	ldr r1, [r5, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_021BD748
	cmp r4, #1
	bne _021C29F8
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl ovy209_21c1328
_021C29F8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c29c0

	thumb_func_start ovy209_21c29fc
ovy209_21c29fc: ; 0x021C29FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp]
	ldr r0, [r4, #4]
	bl sub_02015A04
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_021C0304
	str r0, [sp, #8]
	lsl r1, r6, #0x18
	ldr r0, [r5, #0x34]
	lsr r1, r1, #0x18
	bl sub_021C030C
	ldr r2, [sp, #4]
	ldr r5, [sp]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r3, r2, #0xa
	lsl r2, r7, #0x18
	lsl r5, r5, #0x18
	add r1, r0, #0
	lsr r2, r2, #0x18
	lsr r5, r5, #0x13
	orr r2, r5
	orr r2, r3
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	ldr r0, [sp, #8]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_021BD768
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy209_21c29fc

	thumb_func_start ovy209_21c2a6c
ovy209_21c2a6c: ; 0x021C2A6C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r2, r0, #0
	lsl r1, r6, #0x10
	ldr r0, [r4, #0x34]
	lsr r1, r1, #0x10
	bl ovy209_21bf908
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c2a6c

	thumb_func_start ovy209_21c2a90
ovy209_21c2a90: ; 0x021C2A90
	push {r3, lr}
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	bl ovy209_21bf9e0
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2a90

	thumb_func_start ovy209_21c2aa0
ovy209_21c2aa0: ; 0x021C2AA0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02015A04
	add r2, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r6, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl sub_020232E8
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy209_21c2aa0

	thumb_func_start ovy209_21c2ad0
ovy209_21c2ad0: ; 0x021C2AD0
	push {r4, lr}
	ldr r0, [r1, #4]
	ldr r4, [r1]
	bl sub_02015A04
	bl ovy209_21c2b88
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x34]
	lsr r1, r1, #0x10
	bl sub_021BFB94
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2ad0

	thumb_func_start ovy209_21c2af0
ovy209_21c2af0: ; 0x021C2AF0
	push {r4, lr}
	ldr r0, [r1, #4]
	ldr r4, [r1]
	bl sub_02015A04
	bl ovy209_21c2b88
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x34]
	lsr r1, r1, #0x10
	bl sub_021BFBB0
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2af0

	thumb_func_start ovy209_21c2b10
ovy209_21c2b10: ; 0x021C2B10
	push {r3, lr}
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	bl sub_021BFBC0
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2b10

	thumb_func_start ovy209_21c2b20
ovy209_21c2b20: ; 0x021C2B20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	bl sub_02015A04
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl sub_02015A04
	add r4, r0, #0
	add r0, r7, #0
	bl ovy209_21c2b88
	bl ovy209_21c2b5c
	add r1, r0, #0
	lsl r2, r6, #0x10
	lsl r3, r4, #0x10
	ldr r0, [r5, #0x34]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy209_21bfbcc
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy209_21c2b20

	thumb_func_start ovy209_21c2b5c
ovy209_21c2b5c: ; 0x021C2B5C
	push {r3, lr}
	bl sub_0206CC4C
	ldrh r0, [r0, #4]
	bl sub_0206CCE4
	ldr r1, _021C2B84 ; =0x0000FFFF
	mov r3, #0
_021C2B6C:
	lsl r2, r3, #1
	add r2, r0, r2
	ldrh r2, [r2, #4]
	cmp r2, r1
	beq _021C2B7A
	add r0, r2, #0
	pop {r3, pc}
_021C2B7A:
	add r3, r3, #1
	cmp r3, #4
	blt _021C2B6C
	ldr r0, _021C2B84 ; =0x0000FFFF
	pop {r3, pc}
	.align 2, 0
_021C2B84: .word 0x0000FFFF
	thumb_func_end ovy209_21c2b5c

	thumb_func_start ovy209_21c2b88
ovy209_21c2b88: ; 0x021C2B88
	push {r4, r5}
	sub sp, #0x48
	ldr r5, _021C2BC0 ; =0x021C2F9C
	add r2, r0, #0
	add r4, sp, #0
	mov r3, #9
_021C2B94:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021C2B94
	mov r4, #0
	add r1, sp, #0
_021C2BA0:
	lsl r3, r4, #3
	ldr r0, [r1, r3]
	cmp r2, r0
	bne _021C2BB2
	add r0, sp, #4
	add sp, #0x48
	ldr r0, [r0, r3]
	pop {r4, r5}
	bx lr
_021C2BB2:
	add r4, r4, #1
	cmp r4, #9
	blo _021C2BA0
	add r0, r2, #0
	add sp, #0x48
	pop {r4, r5}
	bx lr
	.align 2, 0
_021C2BC0: .word 0x021C2F9C
	thumb_func_end ovy209_21c2b88

	thumb_func_start ovy209_21c2bc4
ovy209_21c2bc4: ; 0x021C2BC4
	push {r4, lr}
	ldr r4, [r1]
	ldr r0, [r1, #4]
	bl sub_02015A04
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_021BFBE0
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2bc4

	thumb_func_start ovy209_21c2bdc
ovy209_21c2bdc: ; 0x021C2BDC
	push {r3, lr}
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	bl sub_021BFBF4
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy209_21c2bdc
_021C2BEC:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x33, 0x33, 0x03, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x0A, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x04, 0x00, 0x80, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x09, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x80, 0x0C, 0x00
	.byte 0x00, 0x00, 0x04, 0x00, 0x00, 0xB0, 0x09, 0x00, 0x00, 0xA0, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xD0, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x12, 0x00
	.byte 0x00, 0x00, 0x16, 0x00, 0x80, 0x00, 0x80, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0xE8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x01, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x31, 0x06, 0x00, 0x00
	.byte 0x32, 0x06, 0x00, 0x00, 0x33, 0x06, 0x00, 0x00, 0xE6, 0x05, 0x00, 0x00, 0x34, 0x06, 0x00, 0x00
	.byte 0x02, 0x00, 0x60, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x12, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0C, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0A, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x09, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x09, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x0A, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x0E, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x03, 0x04, 0x05, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0A, 0x00
	.byte 0x00, 0xA0, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x12, 0x00
	.byte 0x80, 0x00, 0x80, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x03, 0x00, 0x10, 0x00
	.byte 0x90, 0x00, 0x08, 0x00, 0x88, 0x00, 0x00, 0x00, 0x90, 0xB0, 0x10, 0x30, 0x90, 0xB0, 0xD0, 0xF0
	.byte 0xFF, 0x00, 0x00, 0x00, 0x10, 0x00, 0x08, 0x00, 0x64, 0x31, 0x1C, 0x02, 0x36, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x04, 0x00, 0x00
	.byte 0x55, 0x04, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00, 0x56, 0x04, 0x00, 0x00, 0x57, 0x04, 0x00, 0x00
	.byte 0x57, 0x04, 0x00, 0x00, 0x58, 0x04, 0x00, 0x00, 0x58, 0x04, 0x00, 0x00, 0x59, 0x04, 0x00, 0x00
	.byte 0x59, 0x04, 0x00, 0x00, 0x96, 0x04, 0x00, 0x00, 0x94, 0x04, 0x00, 0x00, 0x97, 0x04, 0x00, 0x00
	.byte 0x95, 0x04, 0x00, 0x00, 0x98, 0x04, 0x00, 0x00, 0x96, 0x04, 0x00, 0x00, 0x99, 0x04, 0x00, 0x00
	.byte 0x97, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x41, 0xA1, 0x1B, 0x02, 0xB1, 0xA4, 0x1B, 0x02, 0x09, 0xA4, 0x1B, 0x02, 0x6D, 0x75, 0x73, 0x69
	.byte 0x63, 0x61, 0x6C, 0x5F, 0x73, 0x68, 0x6F, 0x74, 0x5F, 0x73, 0x79, 0x73, 0x2E, 0x63, 0x00, 0x00
	.byte 0x6D, 0x75, 0x73, 0x5F, 0x73, 0x68, 0x6F, 0x74, 0x5F, 0x70, 0x68, 0x6F, 0x74, 0x6F, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x6D, 0x75, 0x73, 0x5F, 0x73, 0x68, 0x6F, 0x74, 0x5F, 0x69, 0x6E, 0x66
	.byte 0x6F, 0x2E, 0x63, 0x00, 0x6D, 0x75, 0x73, 0x5F, 0x69, 0x74, 0x65, 0x6D, 0x5F, 0x64, 0x72, 0x61
	.byte 0x77, 0x2E, 0x63, 0x00, 0x6D, 0x75, 0x73, 0x5F, 0x70, 0x6F, 0x6B, 0x65, 0x5F, 0x64, 0x72, 0x61
	.byte 0x77, 0x2E, 0x63, 0x00, 0x6D, 0x75, 0x73, 0x69, 0x63, 0x61, 0x6C, 0x5F, 0x6D, 0x63, 0x73, 0x73
	.byte 0x2E, 0x63, 0x00, 0x00, 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F, 0x6F, 0x62, 0x6A, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F, 0x6C, 0x69, 0x67, 0x68
	.byte 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0xA0, 0xFF, 0xFF
	.byte 0x33, 0x03, 0x00, 0x00, 0x33, 0x03, 0x00, 0x00, 0x33, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F, 0x62, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F, 0x70, 0x6F, 0x6B, 0x65, 0x2E, 0x63, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x69, 0x6E, 0x67, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F, 0x65, 0x66, 0x66, 0x65, 0x63, 0x74, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F, 0x61, 0x75, 0x64, 0x69
	.byte 0x65, 0x6E, 0x63, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x73, 0x74, 0x61, 0x5F, 0x61, 0x63, 0x74, 0x5F
	.byte 0x62, 0x75, 0x74, 0x74, 0x6F, 0x6E, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x73, 0x74, 0x61, 0x5F
	.byte 0x61, 0x63, 0x74, 0x5F, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x5F, 0x63, 0x6F, 0x6D, 0x6D, 0x61, 0x6E, 0x64, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x41, 0x14, 0x1C, 0x02, 0x59, 0x14, 0x1C, 0x02, 0x69, 0x14, 0x1C, 0x02
	.byte 0x85, 0x14, 0x1C, 0x02, 0xA1, 0x14, 0x1C, 0x02, 0x0D, 0x15, 0x1C, 0x02, 0x81, 0x15, 0x1C, 0x02
	.byte 0x35, 0x16, 0x1C, 0x02, 0xF1, 0x16, 0x1C, 0x02, 0x39, 0x17, 0x1C, 0x02, 0x89, 0x17, 0x1C, 0x02
	.byte 0xE1, 0x17, 0x1C, 0x02, 0x11, 0x19, 0x1C, 0x02, 0x8D, 0x1A, 0x1C, 0x02, 0xD5, 0x1A, 0x1C, 0x02
	.byte 0x1D, 0x1B, 0x1C, 0x02, 0x39, 0x1D, 0x1C, 0x02, 0xA9, 0x22, 0x1C, 0x02, 0xFD, 0x22, 0x1C, 0x02
	.byte 0x31, 0x23, 0x1C, 0x02, 0x69, 0x23, 0x1C, 0x02, 0x95, 0x23, 0x1C, 0x02, 0xC1, 0x23, 0x1C, 0x02
	.byte 0xD9, 0x24, 0x1C, 0x02, 0x0D, 0x25, 0x1C, 0x02, 0x45, 0x25, 0x1C, 0x02, 0xB1, 0x25, 0x1C, 0x02
	.byte 0xDD, 0x25, 0x1C, 0x02, 0x05, 0x27, 0x1C, 0x02, 0x5D, 0x27, 0x1C, 0x02, 0x99, 0x27, 0x1C, 0x02
	.byte 0xB1, 0x28, 0x1C, 0x02, 0xFD, 0x29, 0x1C, 0x02, 0x6D, 0x2A, 0x1C, 0x02, 0x91, 0x2A, 0x1C, 0x02
	.byte 0xA1, 0x2A, 0x1C, 0x02, 0xF1, 0x2A, 0x1C, 0x02, 0x11, 0x2B, 0x1C, 0x02, 0x79, 0x1E, 0x1C, 0x02
	.byte 0x71, 0x1B, 0x1C, 0x02, 0xC9, 0x1B, 0x1C, 0x02, 0x21, 0x1C, 0x1C, 0x02, 0x69, 0x1C, 0x1C, 0x02
	.byte 0xA5, 0x1C, 0x1C, 0x02, 0xFD, 0x16, 0x1C, 0x02, 0x15, 0x17, 0x1C, 0x02, 0x9D, 0x1F, 0x1C, 0x02
	.byte 0x4D, 0x14, 0x1C, 0x02, 0xC5, 0x2B, 0x1C, 0x02, 0xDD, 0x2B, 0x1C, 0x02, 0xD5, 0x1C, 0x1C, 0x02
	.byte 0x09, 0x1D, 0x1C, 0x02, 0x21, 0x2B, 0x1C, 0x02, 0xD1, 0x2A, 0x1C, 0x02, 0x00, 0x00, 0x00, 0x00
	; 0x021C2BEC
