    .include "macros/function.inc"
	.include "overlay309.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy309_219ce80
ovy309_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0219D018 ; =0x0000008B
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0xa7
	lsl r2, r2, #0x10
	bl GFL_HeapCreateChild
	mov r5, #0x23
	lsl r5, r5, #4
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa7
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #0xa7
	strh r0, [r4]
	add r0, r5, #0
	sub r0, #0x88
	str r6, [r4, r0]
	ldr r0, [r6, #4]
	bl sub_02017238
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	ldrh r1, [r4]
	mov r0, #0
	bl ovy309_219e9dc
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	ldrh r0, [r4]
	bl GFL_WordSetSystemCreateDefault
	add r1, r5, #0
	sub r1, #0xa4
	str r0, [r4, r1]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x27
	mov r6, #0x27
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x98
	str r7, [r0]
	ldrh r0, [r4]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	ldrh r0, [r4]
	mov r2, #0x20
	mov r3, #0x20
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	add r1, r5, #0
	sub r1, #0x9c
	str r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0xa0
	str r7, [r4, r0]
	add r0, r5, #0
	sub r0, #0x98
	str r7, [r4, r0]
	add r0, r5, #0
	sub r0, #0x90
	add r0, r4, r0
	mov r1, #6
	bl sub_0202E678
	ldrh r3, [r4]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	bl sub_0202E7A4
	add r1, r5, #0
	sub r1, #0x94
	str r0, [r4, r1]
	ldrh r0, [r4]
	bl sub_02170AC4
	add r1, r5, #0
	sub r1, #0x84
	str r0, [r4, r1]
	add r6, #0xfa
	ldrh r1, [r4]
	add r0, r6, #0
	bl sub_0204AA30
	add r1, r5, #0
	sub r1, #0x80
	str r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0x80
	ldrh r1, [r4]
	ldr r0, [r4, r0]
	bl ovy27_2170b50
	add r1, r5, #0
	sub r1, #0x7c
	str r0, [r4, r1]
	ldrh r0, [r4]
	bl sub_02014AA0
	add r1, r5, #0
	sub r1, #0x5c
	str r0, [r4, r1]
	ldrh r0, [r4]
	bl ovy309_219fbc0
	add r1, r5, #0
	sub r1, #0x58
	str r0, [r4, r1]
	add r0, r5, #0
	sub r0, #0x88
	ldr r0, [r4, r0]
	add r1, r5, #0
	sub r1, #0x78
	ldr r0, [r0, #0xc]
	add r1, r4, r1
	bl sub_020145EC
	add r0, r4, #0
	bl ovy309_219d1d0
	mov r0, #0xf
	str r0, [sp]
	ldr r0, _0219D01C ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #0xf
	str r0, [sp]
	ldr r0, _0219D020 ; =0x04001050
	mov r1, #4
	mov r2, #8
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	sub r5, #0x28
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _0219CFF8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	add r0, r7, #0
	add r3, r7, #0
	b _0219D00C
_0219CFF8:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _0219D024 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	add r0, r7, #0
	mov r2, #1
_0219D00C:
	bl GFL_FadeScreenSet
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D018: .word 0x0000008B
_0219D01C: .word 0x04000050
_0219D020: .word 0x04001050
_0219D024: .word 0x00007FFF
	thumb_func_end ovy309_219ce80

	thumb_func_start ovy309_219d028
ovy309_219d028: ; 0x0219D028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	str r0, [sp]
	add r0, r5, #0
	bl ovy309_219d2ec
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	mov r4, #0
	add r7, r4, #0
_0219D042:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D058
	bl GFL_MsgDataFree
	add r0, r5, r6
	add r0, #0x94
	str r7, [r0]
_0219D058:
	add r4, r4, #1
	cmp r4, #2
	blt _0219D042
	mov r4, #0x63
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_02170B00
	add r0, r4, #0
	mov r1, #0
	add r0, #0x20
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	bl GFL_ArcToolFree
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0x48
	ldr r0, [r5, r0]
	bl sub_02014AC8
	add r0, r4, #0
	add r0, #0x4c
	ldr r0, [r5, r0]
	bl ovy309_219fbf8
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0202E818
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_02021A18
	add r4, #8
	ldr r0, [r5, r4]
	bl GFL_TCBExMgrFree
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ovy309_219ea84
	ldrh r4, [r5]
	ldr r0, [sp]
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219D0EC ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D0EC: .word 0x0000008B
	thumb_func_end ovy309_219d028

	thumb_func_start ovy309_219d0f0
ovy309_219d0f0: ; 0x0219D0F0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #3
	bhi _0219D186
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D10A: ; jump table
	.short _0219D112 - _0219D10A - 2 ; case 0
	.short _0219D122 - _0219D10A - 2 ; case 1
	.short _0219D13E - _0219D10A - 2 ; case 2
	.short _0219D178 - _0219D10A - 2 ; case 3
_0219D112:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D186
_0219D11A:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0219D186
_0219D122:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0219D1C8 ; =0x00002710
	cmp r1, r0
	bne _0219D186
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219D186
	b _0219D11A
_0219D13E:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0219D15E
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
	b _0219D172
_0219D15E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _0219D1CC ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
_0219D172:
	bl GFL_FadeScreenSet
	b _0219D11A
_0219D178:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D186
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219D186:
	add r0, r4, #0
	bl sub_0219D2C4
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0203A7F4
	add r0, r4, #0
	bl ovy309_219d328
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ovy309_219eae0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0219EAF4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0219EB00
	add r4, #0x88
	ldr r0, [r4]
	bl sub_02012BE4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D1C8: .word 0x00002710
_0219D1CC: .word 0x00007FFF
	thumb_func_end ovy309_219d0f0

	thumb_func_start ovy309_219d1d0
ovy309_219d1d0: ; 0x0219D1D0
	push {r4, r5, r6, lr}
	mov r5, #0x81
	lsl r5, r5, #2
	add r4, r0, #0
	mov r1, #0
	add r0, r5, #0
	str r1, [r4, r5]
	sub r0, #0x5c
	ldr r0, [r4, r0]
	add r3, r5, #0
	ldr r2, [r0, #8]
	add r0, r5, #4
	str r2, [r4, r0]
	add r0, r5, #0
	add r0, #8
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xc
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x10
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x14
	add r2, r5, #0
	str r1, [r4, r0]
	sub r0, r1, #1
	add r2, #0x18
	str r0, [r4, r2]
	add r2, r5, #0
	add r2, #0x1c
	str r0, [r4, r2]
	add r2, r5, #0
	add r2, #0x20
	str r0, [r4, r2]
	add r2, r5, #0
	add r2, #0x24
	str r0, [r4, r2]
	add r0, r5, #0
	sub r0, #0xc
	str r1, [r4, r0]
	add r0, r5, #0
	sub r0, #8
	str r1, [r4, r0]
	sub r0, r5, #4
	str r1, [r4, r0]
	add r0, r5, #0
	add r2, r5, #0
	sub r0, #0x28
	str r1, [r4, r0]
	add r0, r1, #0
	sub r2, #0x24
	sub r3, #0x20
	sub r5, #0x1e
_0219D23C:
	lsl r6, r1, #3
	add r6, r4, r6
	str r0, [r6, r2]
	strh r0, [r6, r3]
	add r1, r1, #1
	strh r0, [r6, r5]
	cmp r1, #3
	blt _0219D23C
	mov r1, #0
_0219D24E:
	lsl r2, r0, #3
	add r2, r4, r2
	add r2, #0x9c
	add r0, r0, #1
	str r1, [r2]
	cmp r0, #0x1e
	blt _0219D24E
	mov r0, #0
_0219D25E:
	lsl r2, r1, #2
	add r2, r4, r2
	add r1, r1, #1
	str r0, [r2, #0x30]
	cmp r1, #0x14
	blt _0219D25E
	mov r2, #0
_0219D26C:
	lsl r1, r0, #2
	add r1, r4, r1
	add r0, r0, #1
	str r2, [r1, #0x28]
	cmp r0, #2
	blt _0219D26C
	add r0, r4, #0
	add r0, #0x80
	str r2, [r0]
	ldrh r2, [r4]
	ldr r0, _0219D2BC ; =0x0000010E
	mov r1, #0xe
	bl sub_0204A934
	mov r5, #0x8b
	lsl r5, r5, #2
	add r1, r5, #0
	str r0, [r4, r5]
	sub r1, #0x24
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ovy309_219ecd8
	add r1, r5, #0
	sub r1, #0x24
	ldr r1, [r4, r1]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0219D2C0 ; =0x021A06E0
	ldr r1, [r1, r2]
	blx r1
	add r0, r5, #0
	sub r0, #0x20
	ldr r1, [r4, r0]
	mov r0, #1
	orr r0, r1
	sub r5, #0x20
	str r0, [r4, r5]
	pop {r4, r5, r6, pc}
	nop
_0219D2BC: .word 0x0000010E
_0219D2C0: .word 0x021A06E0
	thumb_func_end ovy309_219d1d0

	thumb_func_start sub_0219D2C4
sub_0219D2C4: ; 0x0219D2C4
	ldr r3, _0219D2C8 ; =ovy309_219d2cc
	bx r3
	.align 2, 0
_0219D2C8: .word ovy309_219d2cc
	thumb_func_end sub_0219D2C4

	thumb_func_start ovy309_219d2cc
ovy309_219d2cc: ; 0x0219D2CC
	push {r3, lr}
	mov r1, #0x82
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	blt _0219D2E4
	cmp r1, #2
	bge _0219D2E4
	lsl r2, r1, #2
	ldr r1, _0219D2E8 ; =0x021A06E8
	ldr r1, [r1, r2]
	blx r1
_0219D2E4:
	pop {r3, pc}
	nop
_0219D2E8: .word 0x021A06E8
	thumb_func_end ovy309_219d2cc

	thumb_func_start ovy309_219d2ec
ovy309_219d2ec: ; 0x0219D2EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ovy309_219ecfc
	mov r4, #0x7e
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _0219D306
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r6, r4]
_0219D306:
	mov r7, #0x1e
	mov r4, #0
	lsl r7, r7, #4
_0219D30C:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0219D31E
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r5, r7]
_0219D31E:
	add r4, r4, #1
	cmp r4, #3
	blt _0219D30C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219d2ec

	thumb_func_start ovy309_219d328
ovy309_219d328: ; 0x0219D328
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_02021A3C
	mov r6, #0
_0219D336:
	lsl r4, r6, #3
	add r0, r5, r4
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _0219D374
	add r1, r5, #0
	add r1, #0x90
	ldr r7, [r1]
	add r1, r5, r4
	add r1, #0xa0
	ldrb r1, [r1]
	cmp r1, #0
	beq _0219D374
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D374
	add r0, r5, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r5, r4
	add r1, #0xa0
	mov r0, #0
	strb r0, [r1]
_0219D374:
	add r6, r6, #1
	cmp r6, #0x1e
	blt _0219D336
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219d328

	thumb_func_start ovy309_219d37c
ovy309_219d37c: ; 0x0219D37C
	push {r4, r5, r6, lr}
	mov r4, #0x83
	add r5, r0, #0
	lsl r4, r4, #2
	mov r6, #1
	ldr r0, [r5, r4]
	lsl r6, r6, #8
	tst r0, r6
	bne _0219D3B0
	add r2, r4, #4
	ldr r2, [r5, r2]
	mov r0, #5
	mov r1, #0
	asr r2, r2, #8
	bl sub_02044CFC
	add r1, r4, #4
	add r0, r1, #0
	ldr r2, [r5, r0]
	add r2, #0x80
	str r2, [r5, r0]
	lsl r0, r6, #9
	cmp r2, r0
	blt _0219D3B0
	sub r0, r2, r0
	str r0, [r5, r1]
_0219D3B0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy309_219d37c
_0219D3B4:
	.byte 0x6E, 0x22, 0x92, 0x00, 0x81, 0x5C, 0x01, 0x29, 0x06, 0xD8, 0x11, 0x1C
	.byte 0x54, 0x31, 0x43, 0x58, 0x04, 0x21, 0x19, 0x43, 0x54, 0x32, 0x81, 0x50, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy309_219d3d0
ovy309_219d3d0: ; 0x0219D3D0
	push {r3, r4, r5, lr}
	mov r5, #0x81
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	cmp r1, #0x64
	bgt _0219D3E6
	bge _0219D3F8
	cmp r1, #0
	beq _0219D3F4
	b _0219D410
_0219D3E6:
	cmp r1, #0xc8
	bgt _0219D3EE
	beq _0219D400
	b _0219D410
_0219D3EE:
	ldr r0, _0219D42C ; =0x00002710
	cmp r1, r0
	b _0219D410
_0219D3F4:
	mov r0, #0x64
	str r0, [r4, r5]
_0219D3F8:
	add r0, r4, #0
	bl ovy309_219d430
	b _0219D410
_0219D400:
	mov r1, #1
	mov r2, #0
	bl ovy309_219f388
	cmp r0, #0
	bne _0219D410
	ldr r0, _0219D42C ; =0x00002710
	str r0, [r4, r5]
_0219D410:
	add r0, r4, #0
	bl ovy309_219d7a8
	add r0, r4, #0
	bl ovy309_219d60c
	add r0, r4, #0
	bl ovy309_219d37c
	add r0, r4, #0
	bl sub_0219E934
	pop {r3, r4, r5, pc}
	nop
_0219D42C: .word 0x00002710
	thumb_func_end ovy309_219d3d0

	thumb_func_start ovy309_219d430
ovy309_219d430: ; 0x0219D430
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
	bl sub_0219F624
	cmp r0, #0
	bne _0219D440
	b _0219D44A
_0219D440:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219D44C
_0219D44A:
	mov r5, #1
_0219D44C:
	cmp r5, #1
	bne _0219D46A
	mov r0, #0x81
	mov r1, #0xc8
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #9
	bl ovy309_219f2f0
	ldr r0, _0219D490 ; =0x00000551
	bl GFL_SndSEPlay
_0219D46A:
	mov r5, #0x83
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	mov r0, #1
	tst r0, r1
	beq _0219D48E
	add r0, r4, #0
	bl ovy309_219d494
	add r0, r4, #0
	bl ovy309_219d514
	ldr r1, [r4, r5]
	mov r0, #2
	orr r1, r0
	mov r0, #1
	bic r1, r0
	str r1, [r4, r5]
_0219D48E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D490: .word 0x00000551
	thumb_func_end ovy309_219d430

	thumb_func_start ovy309_219d494
ovy309_219d494: ; 0x0219D494
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x83
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r7, #2
	tst r1, r7
	bne _0219D4EA
	mov r1, #4
	str r1, [sp]
	mov r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	str r4, [sp, #4]
	mov r6, #1
	bl ovy309_219df5c
	add r0, r5, #0
	add r1, r7, #0
	bl ovy309_219f5ec
	add r0, r5, #0
	mov r1, #0
	bl ovy309_219e660
	str r4, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	mov r3, #0x30
	bl ovy309_219df5c
	str r4, [sp]
	add r0, r5, #0
	mov r1, #8
	mov r2, #7
	mov r3, #0x30
	str r6, [sp, #4]
	bl ovy309_219df5c
_0219D4EA:
	add r0, r5, #0
	mov r1, #5
	bl ovy309_219ef78
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	mov r2, #5
	mov r3, #0x30
	bl ovy309_219df5c
	add r0, r5, #0
	mov r1, #0
	bl ovy309_219e23c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219d494

	thumb_func_start ovy309_219d514
ovy309_219d514: ; 0x0219D514
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x83
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #2
	tst r1, r2
	bne _0219D534
	mov r1, #0
	str r1, [sp]
	mov r2, #0xc
	mov r3, #0
	str r1, [sp, #4]
	bl ovy309_219df5c
_0219D534:
	add r0, r5, #0
	bl ovy309_219d784
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #4
	tst r0, r1
	bne _0219D608
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4d
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #0xf1
	str r6, [sp]
	mov r4, #0
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r6, #0
	bl GFL_StrBufFree
	str r4, [sp]
	mov r7, #1
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xd
	mov r3, #0x40
	str r7, [sp, #4]
	bl ovy309_219df5c
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4e
	bl sub_0204898C
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xf1
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r6, #0
	bl GFL_StrBufFree
	str r4, [sp]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0xe
	mov r3, #0x98
	str r7, [sp, #4]
	bl ovy309_219df5c
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4f
	bl sub_0204898C
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xf1
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r6, #0
	bl GFL_StrBufFree
	str r4, [sp]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0xb
	mov r3, #0
	str r4, [sp, #4]
	bl ovy309_219df5c
	str r4, [sp]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0xf
	mov r3, #0x40
	str r7, [sp, #4]
	bl ovy309_219df5c
_0219D608:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219d514

	thumb_func_start ovy309_219d60c
ovy309_219d60c: ; 0x0219D60C
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x81
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	ldr r0, _0219D778 ; =0x00002710
	cmp r1, r0
	bne _0219D61E
	b _0219D774
_0219D61E:
	add r0, r5, #0
	sub r0, #0x5c
	ldr r0, [r4, r0]
	add r1, r5, #0
	sub r1, #0x4c
	ldr r0, [r0, #0xc]
	add r1, r4, r1
	bl sub_020145EC
	add r0, r5, #0
	add r0, #0x18
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219D6A0
	add r0, r5, #0
	sub r0, #0x5c
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_020145DC
	add r5, #0x18
	ldr r1, [r4, r5]
	add r6, r0, #0
	cmp r1, r6
	beq _0219D6A0
	mov r1, #0x3c
	blx sub_0208D65C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x3c
	blx sub_0208D65C
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	lsl r3, r7, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	asr r3, r3, #0x10
	mov r5, #0
	bl ovy309_219f4cc
	cmp r6, #0xa
	bhs _0219D69A
	add r7, r5, #0
_0219D67C:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #3
	mov r3, #1
	bl ovy309_219f3d0
	add r0, r5, #1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	cmp r5, #5
	blt _0219D67C
	mov r0, #0x55
	lsl r0, r0, #4
	bl GFL_SndSEPlay
_0219D69A:
	mov r0, #0x87
	lsl r0, r0, #2
	str r6, [r4, r0]
_0219D6A0:
	mov r0, #0x6e
	lsl r0, r0, #2
	add r1, r0, #0
	add r1, #0x68
	ldrb r5, [r4, r0]
	ldr r1, [r4, r1]
	cmp r1, r5
	beq _0219D710
	cmp r5, #1
	bgt _0219D6E8
	add r1, r0, #0
	add r1, #0x54
	ldr r1, [r4, r1]
	mov r2, #4
	add r3, r1, #0
	add r1, r0, #0
	orr r3, r2
	add r1, #0x54
	str r3, [r4, r1]
	add r1, r0, #0
	add r2, #0xfc
	orr r2, r3
	add r1, #0x54
	str r2, [r4, r1]
	mov r1, #0
	add r0, #0x58
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x10
	bl ovy309_219ef78
	add r0, r4, #0
	mov r1, #0x11
	bl ovy309_219ef78
	b _0219D700
_0219D6E8:
	add r1, r0, #0
	add r1, #0x54
	ldr r2, [r4, r1]
	mov r1, #4
	bic r2, r1
	add r1, r0, #0
	add r1, #0x54
	str r2, [r4, r1]
	ldr r1, _0219D77C ; =0xFFFFFEFF
	add r0, #0x54
	and r1, r2
	str r1, [r4, r0]
_0219D700:
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	add r1, #0x14
	str r5, [r4, r1]
_0219D710:
	mov r2, #0x6f
	lsl r2, r2, #2
	add r1, r2, #0
	add r1, #0x68
	ldrsh r0, [r4, r2]
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _0219D734
	add r1, r2, #0
	add r1, #0x50
	ldr r3, [r4, r1]
	mov r1, #1
	orr r3, r1
	add r1, r2, #0
	add r1, #0x50
	str r3, [r4, r1]
	add r2, #0x68
	str r0, [r4, r2]
_0219D734:
	ldr r2, _0219D780 ; =0x000001BA
	add r1, r2, #0
	add r1, #0x6e
	ldrsh r0, [r4, r2]
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _0219D756
	add r1, r2, #0
	add r1, #0x52
	ldr r3, [r4, r1]
	mov r1, #1
	orr r3, r1
	add r1, r2, #0
	add r1, #0x52
	str r3, [r4, r1]
	add r2, #0x6e
	str r0, [r4, r2]
_0219D756:
	mov r5, #0x6a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	ldr r0, [r0, #0xc]
	bl sub_02014A4C
	cmp r0, #1
	bne _0219D774
	add r0, r5, #0
	add r0, #0x64
	ldr r1, [r4, r0]
	mov r0, #1
	orr r0, r1
	add r5, #0x64
	str r0, [r4, r5]
_0219D774:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D778: .word 0x00002710
_0219D77C: .word 0xFFFFFEFF
_0219D780: .word 0x000001BA
	thumb_func_end ovy309_219d60c

	thumb_func_start ovy309_219d784
ovy309_219d784: ; 0x0219D784
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _0219D7A4 ; =0x021A0164
	add r5, r0, #0
	sub r7, r4, #1
_0219D78E:
	lsl r0, r4, #1
	ldrsh r1, [r6, r0]
	cmp r1, r7
	beq _0219D7A2
	add r0, r5, #0
	bl ovy309_219ef78
	add r4, r4, #1
	cmp r4, #0x20
	blt _0219D78E
_0219D7A2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D7A4: .word 0x021A0164
	thumb_func_end ovy309_219d784

	thumb_func_start ovy309_219d7a8
ovy309_219d7a8: ; 0x0219D7A8
	push {r4, r5, r6, lr}
	mov r6, #0x81
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r2, [r5, r6]
	ldr r1, _0219D81C ; =0x00002710
	mov r4, #0
	cmp r2, r1
	beq _0219D818
	bl ovy309_219e44c
	add r0, r6, #0
	add r0, #8
	ldr r1, [r5, r0]
	mov r0, #4
	tst r1, r0
	bne _0219D818
	add r6, #0xc
	ldr r1, [r5, r6]
	cmp r1, #0
	beq _0219D7D8
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _0219D818
_0219D7D8:
	cmp r1, #0
	bne _0219D7E0
	mov r0, #1
	orr r4, r0
_0219D7E0:
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r1, r0
	bne _0219D7EC
	mov r0, #2
	orr r4, r0
_0219D7EC:
	mov r0, #2
	tst r0, r4
	beq _0219D802
	add r0, r5, #0
	mov r1, #0x10
	bl ovy309_219ef78
	add r0, r5, #0
	mov r1, #0x10
	bl ovy309_219e2f8
_0219D802:
	mov r0, #1
	tst r0, r4
	beq _0219D818
	add r0, r5, #0
	mov r1, #0x11
	bl ovy309_219ef78
	add r0, r5, #0
	mov r1, #0x11
	bl ovy309_219e2f8
_0219D818:
	pop {r4, r5, r6, pc}
	nop
_0219D81C: .word 0x00002710
	thumb_func_end ovy309_219d7a8

	thumb_func_start ovy309_219d820
ovy309_219d820: ; 0x0219D820
	push {r4, r5, r6, lr}
	mov r4, #0x6a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r0, [r0, #4]
	bl sub_02017934
	bl sub_02010DEC
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy309_219f34c
	add r0, r4, #0
	add r0, #0x10
	ldrb r0, [r5, r0]
	cmp r0, #1
	bhi _0219D858
	add r0, r4, #0
	add r0, #0x64
	ldr r1, [r5, r0]
	mov r0, #4
	orr r0, r1
	add r4, #0x64
	str r0, [r5, r4]
_0219D858:
	mov r4, #0x6a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r1, r4, #0
	add r1, #0x18
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	bl ovy309_219fc8c
	add r0, r4, #0
	add r0, #0x18
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0219D8AC
	add r0, r4, #0
	add r0, #0x64
	ldr r1, [r5, r0]
	mov r0, #8
	orr r1, r0
	add r0, r4, #0
	add r0, #0x64
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x24
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0219D8AC
	add r1, r4, #0
	add r1, #0x22
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ovy309_219fb48
	cmp r0, #0
	ble _0219D8AC
	add r0, r4, #0
	add r0, #0x64
	ldr r1, [r5, r0]
	mov r0, #0x80
	orr r0, r1
	add r4, #0x64
	str r0, [r5, r4]
_0219D8AC:
	ldr r1, _0219D970 ; =0x000001CE
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _0219D8C2
	add r0, r1, #0
	add r0, #0x3e
	ldr r2, [r5, r0]
	mov r0, #0x10
	orr r0, r2
	add r1, #0x3e
	str r0, [r5, r1]
_0219D8C2:
	mov r4, #0x1d
	lsl r4, r4, #4
	ldrh r1, [r5, r4]
	cmp r1, #0
	beq _0219D8FE
	add r0, r4, #0
	add r0, #0x3c
	ldr r0, [r5, r0]
	mov r6, #0x20
	add r2, r0, #0
	add r0, r4, #0
	orr r2, r6
	add r0, #0x3c
	str r2, [r5, r0]
	add r0, r4, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0219D8FE
	add r0, r5, #0
	bl ovy309_219fb48
	cmp r0, #0
	ble _0219D8FE
	add r0, r4, #0
	add r0, #0x3c
	ldr r1, [r5, r0]
	lsl r0, r6, #6
	orr r0, r1
	add r4, #0x3c
	str r0, [r5, r4]
_0219D8FE:
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0219D91C
	add r0, r1, #0
	add r0, #0x64
	ldr r2, [r5, r0]
	mov r0, #0x40
	orr r0, r2
	add r1, #0x64
	str r0, [r5, r1]
_0219D91C:
	ldr r1, _0219D974 ; =0x000001C3
	ldrb r0, [r5, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0219D938
	add r0, r1, #0
	add r0, #0x49
	ldr r2, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	orr r0, r2
	add r1, #0x49
	str r0, [r5, r1]
_0219D938:
	ldr r1, _0219D978 ; =0x000001C2
	ldrb r0, [r5, r1]
	cmp r0, #0
	beq _0219D950
	add r0, r1, #0
	add r0, #0x4a
	ldr r2, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	orr r0, r2
	add r1, #0x4a
	str r0, [r5, r1]
_0219D950:
	ldr r1, _0219D974 ; =0x000001C3
	ldrb r0, [r5, r1]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0219D96C
	add r0, r1, #0
	add r0, #0x49
	ldr r2, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	orr r0, r2
	add r1, #0x49
	str r0, [r5, r1]
_0219D96C:
	pop {r4, r5, r6, pc}
	nop
_0219D970: .word 0x000001CE
_0219D974: .word 0x000001C3
_0219D978: .word 0x000001C2
	thumb_func_end ovy309_219d820

	thumb_func_start ovy309_219d97c
ovy309_219d97c: ; 0x0219D97C
	push {r4, r5, r6, lr}
	mov r4, #0x81
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0x69
	bgt _0219D99A
	bge _0219D9B8
	cmp r1, #0
	bgt _0219D994
	beq _0219D9AC
	b _0219DAE6
_0219D994:
	cmp r1, #0x64
	beq _0219D9B0
	b _0219DAE6
_0219D99A:
	cmp r1, #0xc8
	bgt _0219D9A6
	bge _0219DA42
	cmp r1, #0x6e
	beq _0219D9EE
	b _0219DAE6
_0219D9A6:
	ldr r0, _0219DAF4 ; =0x00002710
	cmp r1, r0
	b _0219DAE6
_0219D9AC:
	mov r0, #0x64
	str r0, [r5, r4]
_0219D9B0:
	add r0, r5, #0
	bl ovy309_219db04
	b _0219DAE6
_0219D9B8:
	add r1, r4, #0
	add r1, #8
	mov r6, #2
	ldr r1, [r5, r1]
	lsl r6, r6, #0x14
	tst r1, r6
	beq _0219D9CE
	bl ovy309_219e918
	cmp r0, #0
	beq _0219D9D0
_0219D9CE:
	b _0219DAE6
_0219D9D0:
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	ldr r0, _0219DAF8 ; =0xFFDFFFFF
	and r1, r0
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
	lsl r0, r6, #1
	orr r1, r0
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
	mov r0, #0x6e
	b _0219DA0E
_0219D9EE:
	add r1, r4, #0
	add r1, #8
	ldr r3, [r5, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	add r2, r3, #0
	tst r2, r1
	beq _0219DA12
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #8
	ldr r2, [r5, r0]
	lsr r0, r1, #7
	orr r0, r2
_0219DA0C:
	add r4, #8
_0219DA0E:
	str r0, [r5, r4]
	b _0219DAE6
_0219DA12:
	lsr r1, r1, #7
	tst r1, r3
	beq _0219DA1E
	mov r1, #1
	bl ovy309_219fb78
_0219DA1E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DAE6
	mov r4, #0x83
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	ldr r0, _0219DAFC ; =0xFFBFFFFF
	and r0, r1
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy309_219e74c
	mov r0, #0xc8
	sub r4, #8
	str r0, [r5, r4]
	b _0219DAE0
_0219DA42:
	bl ovy309_219fa6c
	cmp r0, #0
	bne _0219DAE6
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	mov r6, #2
	lsl r6, r6, #0x1c
	add r1, r0, #0
	tst r1, r6
	beq _0219DA90
	lsr r1, r6, #8
	tst r0, r1
	beq _0219DA88
	add r0, r5, #0
	bl ovy309_219e918
	cmp r0, #0
	bne _0219DAE6
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	ldr r0, _0219DAF8 ; =0xFFDFFFFF
	and r1, r0
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
_0219DA7A:
	lsr r0, r6, #7
	orr r1, r0
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
	mov r0, #0x64
	b _0219DA0E
_0219DA88:
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	b _0219DA7A
_0219DA90:
	lsr r1, r6, #8
	tst r1, r0
	beq _0219DAB6
	add r0, r5, #0
	bl ovy309_219e918
	cmp r0, #0
	bne _0219DAE6
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	ldr r0, _0219DAF8 ; =0xFFDFFFFF
	and r1, r0
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
	lsr r0, r6, #7
	orr r0, r1
	b _0219DA0C
_0219DAB6:
	lsr r1, r6, #7
	tst r0, r1
	beq _0219DAC4
	add r0, r5, #0
	mov r1, #1
	bl ovy309_219fb78
_0219DAC4:
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DAE6
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _0219DAFC ; =0xFFBFFFFF
	and r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy309_219e74c
_0219DAE0:
	ldr r0, _0219DB00 ; =0x00000547
	bl GFL_SndSEPlay
_0219DAE6:
	add r0, r5, #0
	bl ovy309_219e6b4
	add r0, r5, #0
	bl sub_0219E934
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219DAF4: .word 0x00002710
_0219DAF8: .word 0xFFDFFFFF
_0219DAFC: .word 0xFFBFFFFF
_0219DB00: .word 0x00000547
	thumb_func_end ovy309_219d97c

	thumb_func_start ovy309_219db04
ovy309_219db04: ; 0x0219DB04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DB2C
	mov r0, #0x83
	lsl r0, r0, #2
	mov r1, #2
	ldr r2, [r5, r0]
	lsl r1, r1, #0x1c
	tst r1, r2
	beq _0219DB2C
	ldr r1, _0219DB70 ; =0x00002710
	sub r0, #8
	str r1, [r5, r0]
	ldr r0, _0219DB74 ; =0x00000547
	bl GFL_SndSEPlay
_0219DB2C:
	mov r4, #0x83
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r0, #1
	tst r0, r1
	beq _0219DB50
	add r0, r5, #0
	bl ovy309_219db7c
	add r0, r5, #0
	bl ovy309_219dd7c
	ldr r1, [r5, r4]
	mov r0, #1
	bic r1, r0
	ldr r0, _0219DB78 ; =0xFFE0FFFF
	and r0, r1
	str r0, [r5, r4]
_0219DB50:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	add r1, r2, #0
	tst r1, r0
	beq _0219DB6E
	lsr r0, r0, #7
	tst r0, r2
	beq _0219DB6E
	add r0, r5, #0
	mov r1, #1
	bl ovy309_219fb78
_0219DB6E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DB70: .word 0x00002710
_0219DB74: .word 0x00000547
_0219DB78: .word 0xFFE0FFFF
	thumb_func_end ovy309_219db04

	thumb_func_start ovy309_219db7c
ovy309_219db7c: ; 0x0219DB7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x83
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #1
	lsl r1, r1, #0x10
	mov r6, #0
	tst r1, r2
	beq _0219DC5E
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r6, #0
	add r3, r6, #0
	str r6, [sp, #4]
	bl ovy309_219df5c
	add r0, r5, #0
	mov r1, #1
	bl ovy309_219f5ec
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x47
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r4, #0xf1
	str r6, [sp, #4]
	lsl r4, r4, #6
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r6, #0
	str r4, [sp, #8]
	bl ovy309_219ef40
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy309_219f34c
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x70
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r6, #0
	str r4, [sp, #8]
	bl ovy309_219ef40
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x49
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r6, #0
	add r3, r6, #0
	str r4, [sp, #8]
	bl ovy309_219ef40
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0219DC5E
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x53
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	add r2, r6, #0
	add r3, r6, #0
	str r4, [sp, #8]
	bl ovy309_219ef40
	add r0, r7, #0
	bl GFL_StrBufFree
_0219DC5E:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x10
	tst r0, r1
	beq _0219DC86
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	mov r2, #5
	mov r3, #0x30
	bl ovy309_219df5c
	ldr r0, _0219DD70 ; =0x00000848
	bl GFL_SndSEPlay
_0219DC86:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x12
	tst r0, r1
	beq _0219DCAE
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r2, #6
	mov r3, #0x30
	bl ovy309_219df5c
	ldr r0, _0219DD70 ; =0x00000848
	bl GFL_SndSEPlay
_0219DCAE:
	mov r4, #0x83
	lsl r4, r4, #2
	mov r0, #2
	ldr r1, [r5, r4]
	lsl r0, r0, #0x12
	tst r0, r1
	beq _0219DD6C
	add r0, r5, #0
	mov r1, #1
	bl ovy309_219e23c
	add r2, r4, #0
	sub r2, #0x64
	ldr r2, [r5, r2]
	add r1, r4, #0
	ldr r2, [r2, #0x10]
	sub r1, #0x58
	ldr r2, [r2]
	ldr r1, [r5, r1]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x19
	mov r2, #0x2c
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #9]
	add r0, r5, #0
	add r0, #0x94
	lsl r2, r1, #3
	ldr r1, _0219DD74 ; =0x021A01AA
	ldr r0, [r0]
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0x30
	mov r3, #0
	bl ovy309_219ef40
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r1, [r5, r4]
	mov r0, #0x40
	tst r0, r1
	beq _0219DD3C
	sub r4, #0x44
	ldrh r4, [r5, r4]
	mov r1, #0x3c
	add r0, r4, #0
	blx sub_0208D65C
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	str r1, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	add r3, r7, #0
	bl ovy309_219f4cc
_0219DD3C:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0219DD58
	add r0, r5, #0
	mov r1, #0
	mov r2, #0xb
	mov r3, #1
	mov r6, #1
	bl ovy309_219f34c
_0219DD58:
	cmp r6, #0
	bne _0219DD66
	ldr r0, _0219DD70 ; =0x00000848
	bl GFL_SndSEPlay
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219DD66:
	ldr r0, _0219DD78 ; =0x00000849
	bl GFL_SndSEPlay
_0219DD6C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DD70: .word 0x00000848
_0219DD74: .word 0x021A01AA
_0219DD78: .word 0x00000849
	thumb_func_end ovy309_219db7c

	thumb_func_start ovy309_219dd7c
ovy309_219dd7c: ; 0x0219DD7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x83
	add r4, r0, #0
	lsl r7, r7, #2
	mov r0, #1
	ldr r1, [r4, r7]
	lsl r0, r0, #0x14
	tst r0, r1
	bne _0219DD92
	b _0219DF56
_0219DD92:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4d
	bl sub_0204898C
	add r5, r0, #0
	mov r0, #0xf1
	str r5, [sp]
	mov r6, #0
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r5, #0
	bl GFL_StrBufFree
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0xf
	mov r3, #0x40
	mov r5, #0x40
	bl ovy309_219df5c
	ldr r1, [r4, r7]
	lsl r0, r5, #8
	tst r0, r1
	beq _0219DDE6
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	mov r3, #1
	bl ovy309_219f34c
_0219DDE6:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4e
	bl sub_0204898C
	add r5, r0, #0
	mov r7, #0xf1
	str r5, [sp]
	mov r6, #0
	str r6, [sp, #4]
	lsl r7, r7, #6
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0
	str r7, [sp, #8]
	bl ovy309_219ef40
	add r0, r5, #0
	bl GFL_StrBufFree
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x10
	mov r3, #0x98
	mov r5, #4
	bl ovy309_219df5c
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	tst r0, r5
	bne _0219DE78
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4f
	bl sub_0204898C
	add r5, r0, #0
	str r5, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	add r2, r6, #0
	add r3, r6, #0
	str r7, [sp, #8]
	bl ovy309_219ef40
	add r0, r5, #0
	bl GFL_StrBufFree
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xb
	add r3, r6, #0
	bl ovy309_219df5c
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x11
	mov r3, #0x40
	bl ovy309_219df5c
_0219DE78:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #8
	tst r0, r1
	beq _0219DEC2
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4a
	bl sub_0204898C
	add r5, r0, #0
	mov r0, #0xf1
	str r5, [sp]
	mov r6, #0
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r5, #0
	bl GFL_StrBufFree
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0x12
	mov r3, #0x80
	bl ovy309_219df5c
_0219DEC2:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0219DF0C
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x54
	bl sub_0204898C
	add r5, r0, #0
	mov r0, #0xf1
	str r5, [sp]
	mov r6, #0
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r5, #0
	bl GFL_StrBufFree
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x13
	mov r3, #0x30
	bl ovy309_219df5c
_0219DF0C:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0219DF56
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x55
	bl sub_0204898C
	add r5, r0, #0
	mov r0, #0xf1
	str r5, [sp]
	mov r6, #0
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r5, #0
	bl GFL_StrBufFree
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x14
	mov r3, #0x80
	bl ovy309_219df5c
_0219DF56:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219dd7c

	thumb_func_start ovy309_219df5c
ovy309_219df5c: ; 0x0219DF5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x6a
	add r5, r0, #0
	lsl r4, r4, #2
	add r0, r1, #0
	ldr r1, [r5, r4]
	str r2, [sp, #0xc]
	ldr r2, [r1, #0x10]
	str r3, [sp, #0x10]
	ldr r2, [r2]
	lsl r3, r2, #0x19
	lsl r2, r2, #0x16
	lsr r7, r3, #0x19
	lsr r2, r2, #0x1d
	cmp r0, #0
	bne _0219DF9C
	ldrh r1, [r5]
	add r0, r4, #0
	sub r0, #0xa8
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r2, [r5, r4]
	add r0, r4, #4
	ldrh r3, [r5]
	ldr r0, [r5, r0]
	ldr r2, [r2, #0x10]
	add r1, r6, #0
	bl ovy27_2170d90
	b _0219E216
_0219DF9C:
	cmp r0, #1
	bne _0219DFBC
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r2, [r5, r4]
	add r0, r4, #4
	ldrh r3, [r5]
	ldr r0, [r5, r0]
	ldr r2, [r2, #0x10]
	add r1, r6, #0
	bl sub_02170D04
	b _0219E216
_0219DFBC:
	cmp r0, #2
	bne _0219E018
	mov r0, #0x2c
	add r1, r7, #0
	mul r1, r0
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	lsl r2, r2, #2
	add r3, r0, r1
	ldrb r7, [r3, #9]
	mov r0, #0
	add r2, r3, r2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x1c
	ldrb r2, [r2, #0x1e]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	mov r0, #0x40
_0219DFEE:
	ldrh r1, [r5]
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r1, _0219E238 ; =0x021A01AA
	lsl r2, r7, #3
	ldrsh r1, [r1, r2]
	ldr r0, [r0]
_0219E002:
	bl sub_0204898C
	add r7, r0, #0
	sub r4, #0x1c
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	b _0219E212
_0219E018:
	cmp r0, #3
	bne _0219E04A
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, #0x10
	sub r0, #0x1c
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r3, #3
	bl StringSetNumber
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x4b
	b _0219E002
_0219E04A:
	cmp r0, #4
	bne _0219E09A
	add r0, r4, #0
	add r0, #0x11
	ldrb r6, [r5, r0]
	mov r7, #0
	add r2, r4, #0
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, #0x10
	sub r0, #0x1c
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r6, #0
	mov r3, #3
	bl StringSetNumber
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x52
	b _0219E002
_0219E09A:
	cmp r0, #5
	bne _0219E0CA
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r7
	add r0, r1, r0
	ldrb r7, [r0, #9]
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, #0x12
	sub r0, #0x1c
	ldrh r2, [r5, r2]
	ldr r0, [r5, r0]
_0219E0C0:
	mov r3, #4
	bl StringSetNumber
	mov r0, #0x80
	b _0219DFEE
_0219E0CA:
	cmp r0, #6
	bne _0219E108
	ldr r0, [r1, #0xc]
	add r1, r4, #0
	add r1, #0x2c
	ldr r1, [r5, r1]
	bl sub_02014A78
	add r0, r4, #0
	add r0, #0x2c
	ldr r2, [r5, r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _0219E122
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r7
	add r0, r1, r0
	ldrb r7, [r0, #9]
	mov r0, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	ldrh r2, [r2, #4]
	b _0219E0C0
_0219E108:
	cmp r0, #7
	bne _0219E140
	ldr r0, [r1, #0xc]
	add r1, r4, #0
	add r1, #0x2c
	ldr r1, [r5, r1]
	bl sub_02014A78
	add r4, #0x2c
	ldr r0, [r5, r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219E124
_0219E122:
	b _0219E234
_0219E124:
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0xc]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x28]
	add r0, r5, #0
	bl ovy309_219ef40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219E140:
	cmp r0, #8
	bne _0219E164
	add r4, #0xc
	mov r1, #0x2c
	ldr r2, [r5, r4]
	mul r1, r7
	add r1, r2, r1
	ldrb r1, [r1, #9]
	add r0, r5, #0
	add r0, #0x94
	lsl r2, r1, #3
	ldr r1, _0219E238 ; =0x021A01AA
	ldr r0, [r0]
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	add r6, r0, #0
	b _0219E216
_0219E164:
	cmp r0, #9
	bne _0219E186
	add r4, #0x24
	ldrh r4, [r5, r4]
	mov r3, #1
	cmp r4, #1
	bne _0219E174
	mov r3, #0
_0219E174:
	mov r7, #0x63
	mov r6, #0
	lsl r7, r7, #2
	str r6, [sp]
	add r2, r7, #0
	ldr r0, [r5, r7]
	mov r1, #0
	add r2, #0x3e
	b _0219E1D8
_0219E186:
	cmp r0, #0xa
	bne _0219E1B8
	mov r1, #0
	add r2, r4, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, #0x26
	sub r0, #0x1c
	ldrh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r3, #2
	bl StringSetNumber
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x57
	b _0219E002
_0219E1B8:
	cmp r0, #0xb
	bne _0219E216
	add r4, #0x2a
	ldrh r4, [r5, r4]
	mov r3, #1
	cmp r4, #1
	bne _0219E1C8
	mov r3, #0
_0219E1C8:
	mov r6, #0
	mov r7, #0x63
	lsl r7, r7, #2
	str r6, [sp]
	add r2, r7, #0
	ldr r0, [r5, r7]
	mov r1, #0
	add r2, #0x44
_0219E1D8:
	ldrh r2, [r5, r2]
	bl sub_020244E0
	str r6, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r5, r7]
	add r2, r4, #0
	mov r3, #2
	bl StringSetNumber
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x56
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, r7]
	add r1, r6, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
_0219E212:
	bl GFL_StrBufFree
_0219E216:
	ldr r0, [sp, #0x2c]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x28]
	add r0, r5, #0
	bl ovy309_219ef40
	add r0, r6, #0
	bl GFL_StrBufFree
_0219E234:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E238: .word 0x021A01AA
	thumb_func_end ovy309_219df5c

	thumb_func_start ovy309_219e23c
ovy309_219e23c: ; 0x0219E23C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x6d
	lsl r4, r4, #2
	add r2, r4, #0
	add r5, r0, #0
	sub r2, #0xc
	ldr r2, [r5, r2]
	add r7, r1, #0
	ldr r2, [r2, #0x10]
	add r0, #0x94
	ldr r2, [r2]
	ldr r1, [r5, r4]
	lsl r2, r2, #0x19
	lsr r3, r2, #0x19
	mov r2, #0x2c
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #9]
	ldr r0, [r0]
	lsl r2, r1, #3
	ldr r1, _0219E2F4 ; =0x021A01AA
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	mov r2, #0
	str r0, [sp, #0x10]
	bl sub_02022888
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x18
	sub r6, r0, r1
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	cmp r7, #0
	bne _0219E2C0
	add r0, r5, #0
	mov r1, #8
	bl sub_0219EF98
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #9
	bl sub_0219EF98
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r7, r6
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r4, #8
	ldrh r3, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	bl ovy309_219f418
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219E2C0:
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0219EF98
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0219EF98
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r7, r6
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r4, #0x10
	ldr r3, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #7
	bl ovy309_219f418
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219E2F4: .word 0x021A01AA
	thumb_func_end ovy309_219e23c

	thumb_func_start ovy309_219e2f8
ovy309_219e2f8: ; 0x0219E2F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0x6d
	lsl r4, r4, #2
	str r1, [sp, #0xc]
	add r1, r4, #0
	add r5, r0, #0
	sub r1, #0xc
	ldr r1, [r5, r1]
	ldr r0, [r5, r4]
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	lsl r1, r1, #0x19
	lsr r2, r1, #0x19
	mov r1, #0x2c
	add r3, r2, #0
	mul r3, r1
	add r0, r0, r3
	ldrb r0, [r0, #9]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x28
	ldr r3, [r5, r0]
	cmp r3, #0
	bne _0219E32C
	b _0219E442
_0219E32C:
	add r0, r4, #0
	add r0, #0x44
	ldr r7, [r5, r0]
	cmp r7, #0
	bne _0219E35E
	add r0, r4, #0
	add r0, #0x2c
	ldrh r1, [r5]
	ldr r0, [r5, r0]
	bl sub_020485A4
	add r1, r4, #0
	add r1, #0x44
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x30
	ldrh r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x48
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x32
	ldrh r0, [r5, r0]
	add r4, #0x4c
	b _0219E3B8
_0219E35E:
	sub r1, #0x2d
	mov r0, #0
	cmp r3, #0
	ble _0219E382
	add r2, r4, #0
	add r2, #0x4c
	ldr r2, [r5, r2]
	add r4, #0x32
_0219E36E:
	lsl r6, r0, #3
	add r6, r5, r6
	ldrh r6, [r6, r4]
	cmp r2, r6
	bne _0219E37C
	add r1, r0, #0
	b _0219E382
_0219E37C:
	add r0, r0, #1
	cmp r0, r3
	blt _0219E36E
_0219E382:
	add r4, r1, #1
	cmp r4, r3
	blt _0219E38A
	mov r4, #0
_0219E38A:
	add r0, r7, #0
	bl GFL_StrBufFree
	lsl r6, r4, #3
	mov r4, #0x1e
	add r0, r5, r6
	lsl r4, r4, #4
	ldrh r1, [r5]
	ldr r0, [r0, r4]
	bl sub_020485A4
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	add r2, r5, r6
	add r0, r4, #4
	ldrh r1, [r2, r0]
	add r0, r4, #0
	add r0, #0x1c
	str r1, [r5, r0]
	add r0, r4, #6
	ldrh r0, [r2, r0]
	add r4, #0x20
_0219E3B8:
	str r0, [r5, r4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	lsl r2, r1, #3
	ldr r1, _0219E448 ; =0x021A01AC
	add r0, #0x94
	ldrsh r1, [r1, r2]
	ldr r0, [r0]
	bl sub_0204898C
	mov r4, #1
	add r6, r0, #0
	mov r2, #0x63
	lsl r2, r2, #2
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x63
	lsl r0, r0, #2
	add r2, #0x6c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0
	mov r3, #0
	mov r7, #0
	bl sub_0202437C
	mov r2, #0x63
	str r7, [sp]
	mov r0, #0x63
	lsl r2, r2, #2
	str r4, [sp, #4]
	lsl r0, r0, #2
	add r2, #0x70
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #1
	mov r3, #4
	bl StringSetNumber
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r4, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	mov r0, #0xf1
	str r7, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
_0219E442:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219E448: .word 0x021A01AC
	thumb_func_end ovy309_219e2f8

	thumb_func_start ovy309_219e44c
ovy309_219e44c: ; 0x0219E44C
	push {r4, r5, r6, lr}
	mov r4, #0x6a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r0, [r0, #0xc]
	bl sub_020146FC
	add r4, #0x30
	ldr r1, [r5, r4]
	bl ovy309_219fc1c
	mov r4, #0
	mov r6, #2
_0219E468:
	add r0, r5, #0
	sub r1, r6, r4
	bl ovy309_219e49c
	add r4, r4, #1
	cmp r4, #3
	blt _0219E468
	ldr r0, _0219E498 ; =0x000001E6
	mov r2, #0
	mov r3, #0
_0219E47C:
	lsl r1, r3, #3
	add r1, r5, r1
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0219E488
	add r2, r2, #1
_0219E488:
	add r3, r3, #1
	cmp r3, #3
	blt _0219E47C
	mov r0, #0x77
	lsl r0, r0, #2
	str r2, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_0219E498: .word 0x000001E6
	thumb_func_end ovy309_219e44c

	thumb_func_start ovy309_219e49c
ovy309_219e49c: ; 0x0219E49C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #0x76
	add r5, r0, #0
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	lsl r6, r1, #3
	add r0, r0, r6
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	bne _0219E4B4
	b _0219E5F0
_0219E4B4:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r7, #0
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
	add r0, r5, r7
	mov r4, #0
	str r0, [sp, #4]
	add r7, #0xe
_0219E4CA:
	lsl r0, r4, #3
	add r1, r5, r0
	ldr r0, [sp, #4]
	ldr r0, [r0]
	add r3, r6, r0
	ldrh r2, [r3, #0xa]
	ldrh r0, [r1, r7]
	cmp r2, r0
	bne _0219E4EE
	ldr r2, [sp, #8]
	ldr r0, [r3, #4]
	ldr r1, [r1, r2]
	bl sub_020485BC
	cmp r0, #1
	bne _0219E4EE
	str r4, [sp]
	b _0219E4F4
_0219E4EE:
	add r4, r4, #1
	cmp r4, #3
	blt _0219E4CA
_0219E4F4:
	ldr r0, [sp]
	cmp r0, #0
	bne _0219E53E
	mov r2, #0x76
	lsl r2, r2, #2
	lsl r4, r0, #3
	ldr r0, [r5, r2]
	add r1, r2, #0
	add r0, r0, r6
	ldrh r3, [r0, #0xa]
	add r0, r5, r4
	add r1, #0xe
	strh r3, [r0, r1]
	ldr r1, [r5, r2]
	add r1, r1, r6
	ldrh r3, [r1, #8]
	add r1, r2, #0
	add r2, #8
	add r1, #0xc
	add r7, r5, r2
	strh r3, [r0, r1]
	ldr r0, [r7, r4]
	cmp r0, #0
	beq _0219E528
	bl GFL_StrBufFree
_0219E528:
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrh r1, [r5]
	add r0, r0, r6
	ldr r0, [r0, #4]
	bl sub_020485A4
	add sp, #0xc
	str r0, [r7, r4]
	pop {r4, r5, r6, r7, pc}
_0219E53E:
	cmp r0, #1
	bne _0219E588
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy309_219e5fc
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r3, r0, r6
	add r0, r1, #0
	ldrh r2, [r3, #0xa]
	add r0, #0xe
	strh r2, [r5, r0]
	add r0, r1, #0
	ldrh r2, [r3, #8]
	add r0, #0xc
	add r1, #8
	strh r2, [r5, r0]
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0219E570
	bl GFL_StrBufFree
_0219E570:
	mov r4, #0x76
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldrh r1, [r5]
	add r0, r0, r6
	ldr r0, [r0, #4]
	bl sub_020485A4
	add r4, #8
	add sp, #0xc
	str r0, [r5, r4]
	pop {r4, r5, r6, r7, pc}
_0219E588:
	cmp r0, #2
	beq _0219E594
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219E5F0
_0219E594:
	ldr r0, _0219E5F4 ; =0x000001EE
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0219E5A6
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ovy309_219e5fc
_0219E5A6:
	ldr r0, _0219E5F8 ; =0x000001E6
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0219E5B8
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ovy309_219e5fc
_0219E5B8:
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r3, r0, r6
	ldrh r2, [r3, #0xa]
	add r0, r1, #0
	add r0, #0xe
	strh r2, [r5, r0]
	add r0, r1, #0
	ldrh r2, [r3, #8]
	add r0, #0xc
	add r1, #8
	strh r2, [r5, r0]
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0219E5DC
	bl GFL_StrBufFree
_0219E5DC:
	mov r4, #0x76
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldrh r1, [r5]
	add r0, r0, r6
	ldr r0, [r0, #4]
	bl sub_020485A4
	add r4, #8
	str r0, [r5, r4]
_0219E5F0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E5F4: .word 0x000001EE
_0219E5F8: .word 0x000001E6
	thumb_func_end ovy309_219e49c

	thumb_func_start ovy309_219e5fc
ovy309_219e5fc: ; 0x0219E5FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0219E624
	lsl r0, r2, #3
	add r2, r5, r0
	ldr r0, _0219E65C ; =0x000001E6
	mov r3, #0
	strh r3, [r2, r0]
	sub r1, r0, #2
	strh r3, [r2, r1]
	sub r0, r0, #6
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0219E658
	bl GFL_StrBufFree
	pop {r3, r4, r5, r6, r7, pc}
_0219E624:
	lsl r6, r2, #3
	lsl r4, r1, #3
	ldr r2, _0219E65C ; =0x000001E6
	add r1, r5, r4
	ldrh r3, [r1, r2]
	add r0, r5, r6
	strh r3, [r0, r2]
	sub r3, r2, #2
	ldrh r3, [r1, r3]
	sub r1, r2, #2
	strh r3, [r0, r1]
	sub r0, r2, #6
	add r7, r5, r0
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _0219E648
	bl GFL_StrBufFree
_0219E648:
	mov r0, #0x1e
	add r1, r5, r4
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldrh r1, [r5]
	bl sub_020485A4
	str r0, [r7, r6]
_0219E658:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E65C: .word 0x000001E6
	thumb_func_end ovy309_219e5fc

	thumb_func_start ovy309_219e660
ovy309_219e660: ; 0x0219E660
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
_0219E668:
	ldr r0, _0219E6B0 ; =0x021A0174
	lsl r1, r4, #2
	add r6, r0, r1
	ldrsh r1, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0219E6AA
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_0204898C
	add r7, r0, #0
	mov r1, #2
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldrsh r1, [r6, r1]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0
	bl ovy309_219ef40
	add r0, r7, #0
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #0x20
	blt _0219E668
_0219E6AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219E6B0: .word 0x021A0174
	thumb_func_end ovy309_219e660

	thumb_func_start ovy309_219e6b4
ovy309_219e6b4: ; 0x0219E6B4
	push {r3, r4, r5, lr}
	mov r5, #0x81
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	ldr r1, _0219E744 ; =0x00002710
	cmp r2, r1
	beq _0219E742
	add r1, r5, #0
	add r1, #8
	ldr r2, [r4, r1]
	sub r1, r5, #4
	tst r1, r2
	bne _0219E742
	add r1, r5, #0
	add r1, #0x10
	ldr r1, [r4, r1]
	add r2, r5, #0
	add r1, r1, #1
	add r2, #0x10
	str r1, [r4, r2]
	add r2, r5, #0
	add r2, #0x14
	ldr r2, [r4, r2]
	lsl r3, r2, #1
	ldr r2, _0219E748 ; =0x021A0156
	ldrsh r3, [r2, r3]
	cmp r1, r3
	blt _0219E742
	add r1, r5, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	add r3, r5, #0
	add r1, r1, #1
	add r3, #0x14
	str r1, [r4, r3]
	lsl r3, r1, #1
	ldrsh r3, [r2, r3]
	mov r2, #0
	mvn r2, r2
	cmp r3, r2
	bne _0219E722
	add r1, r5, #0
	add r1, #8
	ldr r2, [r4, r1]
	sub r1, r5, #4
	orr r2, r1
	add r1, r5, #0
	add r1, #8
	str r2, [r4, r1]
	bl ovy309_219e74c
	mov r0, #0x69
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_0219E722:
	add r0, r5, #0
	add r0, #8
	ldr r3, [r4, r0]
	add r1, #0xf
	mov r0, #1
	lsl r0, r1
	add r1, r3, #0
	orr r1, r0
	add r0, r5, #0
	add r0, #8
	str r1, [r4, r0]
	mov r2, #1
	add r0, r1, #0
	orr r0, r2
	add r5, #8
	str r0, [r4, r5]
_0219E742:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E744: .word 0x00002710
_0219E748: .word 0x021A0156
	thumb_func_end ovy309_219e6b4

	thumb_func_start ovy309_219e74c
ovy309_219e74c: ; 0x0219E74C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x83
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r7, #1
	lsl r7, r7, #0x18
	add r2, r1, #0
	tst r2, r7
	bne _0219E79E
	mov r2, #8
	tst r1, r2
	beq _0219E770
	mov r1, #1
	mov r6, #0
	bl ovy309_219e8e4
	b _0219E780
_0219E770:
	mov r1, #2
	mov r6, #1
	bl ovy309_219e8e4
	ldr r1, [r5, r4]
	lsl r0, r7, #5
	orr r0, r1
	str r0, [r5, r4]
_0219E780:
	add r0, r5, #0
	mov r1, #0x15
	add r2, r6, #0
	mov r3, #0
	bl ovy309_219faa8
	mov r1, #0x83
	lsl r1, r1, #2
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x18
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E79E:
	lsl r2, r7, #1
	tst r2, r1
	bne _0219E7F6
	mov r2, #0x80
	add r3, r1, #0
	tst r3, r2
	beq _0219E7B6
	mov r1, #0
	mov r6, #2
	bl ovy309_219e8e4
	b _0219E7BE
_0219E7B6:
	lsl r0, r2, #0xf
	orr r0, r1
	mov r6, #3
	str r0, [r5, r4]
_0219E7BE:
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r3, #0x20
	add r1, r0, #0
	tst r1, r3
	bne _0219E7D8
	lsl r1, r3, #5
	tst r1, r0
	bne _0219E7D8
	lsl r1, r3, #0x18
	orr r0, r1
	str r0, [r5, r2]
_0219E7D8:
	add r0, r5, #0
	mov r1, #0x15
	add r2, r6, #0
	mov r3, #1
	bl ovy309_219faa8
	mov r1, #0x83
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x18
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E7F6:
	lsl r2, r7, #2
	tst r2, r1
	bne _0219E828
	mov r2, #0x20
	add r3, r1, #0
	tst r3, r2
	beq _0219E822
	mov r1, #0x15
	mov r2, #4
	mov r3, #1
	mov r6, #4
	mov r7, #1
	bl ovy309_219faa8
	ldr r1, [r5, r4]
	lsl r0, r6, #0x18
	orr r1, r0
	lsl r0, r7, #0x16
	orr r0, r1
	str r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E822:
	lsl r0, r2, #0x15
	orr r0, r1
	str r0, [r5, r4]
_0219E828:
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r3, #2
	lsl r3, r3, #0x1a
	add r1, r0, #0
	tst r1, r3
	bne _0219E892
	mov r1, #0x20
	add r4, r0, #0
	tst r4, r1
	beq _0219E88E
	lsl r1, r1, #6
	tst r1, r0
	beq _0219E852
	add r0, r5, #0
	mov r1, #0
	mov r4, #7
	bl ovy309_219e8e4
	b _0219E85A
_0219E852:
	mov r4, #8
	lsl r1, r4, #0x13
	orr r0, r1
	str r0, [r5, r2]
_0219E85A:
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #1
	lsl r0, r0, #0xa
	add r3, r2, #0
	tst r3, r0
	bne _0219E870
	lsl r0, r0, #0x13
	orr r0, r2
	str r0, [r5, r1]
_0219E870:
	add r0, r5, #0
	mov r1, #0x15
	add r2, r4, #0
	mov r3, #1
	bl ovy309_219faa8
	mov r1, #0x83
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x1a
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E88E:
	orr r0, r3
	str r0, [r5, r2]
_0219E892:
	mov r2, #0x83
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r3, #1
	lsl r3, r3, #0x1c
	add r1, r0, #0
	tst r1, r3
	bne _0219E8DE
	lsr r1, r3, #0x12
	tst r1, r0
	beq _0219E8D4
	mov r1, #4
	tst r0, r1
	beq _0219E8B2
	mov r2, #5
	b _0219E8B4
_0219E8B2:
	mov r2, #6
_0219E8B4:
	add r0, r5, #0
	mov r1, #0x15
	mov r3, #1
	bl ovy309_219faa8
	mov r1, #0x83
	lsl r1, r1, #2
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x1c
	orr r2, r0
	lsl r0, r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E8D4:
	add r1, r0, #0
	orr r1, r3
	lsl r0, r3, #1
	orr r0, r1
	str r0, [r5, r2]
_0219E8DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219e74c

	thumb_func_start ovy309_219e8e4
ovy309_219e8e4: ; 0x0219E8E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	mov r6, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _0219E910 ; =0x021A0150
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	ldr r1, _0219E914 ; =0x0000FFFF
	bl sub_02005DF4
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	lsl r0, r6, #0x15
	orr r0, r2
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E910: .word 0x021A0150
_0219E914: .word 0x0000FFFF
	thumb_func_end ovy309_219e8e4

	thumb_func_start ovy309_219e918
ovy309_219e918: ; 0x0219E918
	push {r4, lr}
	mov r4, #1
	bl sub_02005FA8
	cmp r0, #0
	bne _0219E930
	bl sub_02005F0C
	mov r0, #0
	mov r4, #0
	bl sub_02005E54
_0219E930:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy309_219e918

	thumb_func_start sub_0219E934
sub_0219E934: ; 0x0219E934
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E934

	thumb_func_start ovy309_219e938
ovy309_219e938: ; 0x0219E938
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	bl sub_02046CFC
	ldr r0, _0219E9C4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _0219E9C8 ; =0xFFFFCFFD
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
	ldr r2, _0219E9CC ; =0x0000CFEF
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
	ldr r1, _0219E9D0 ; =0xBFFF0000
	ldr r0, _0219E9D4 ; =0x04000580
	str r1, [r0]
	ldr r5, _0219E9D8 ; =0x021A022C
_0219E9A6:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _0219E9A6
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_0219E9C4: .word 0x04000008
_0219E9C8: .word 0xFFFFCFFD
_0219E9CC: .word 0x0000CFEF
_0219E9D0: .word 0xBFFF0000
_0219E9D4: .word 0x04000580
_0219E9D8: .word 0x021A022C
	thumb_func_end ovy309_219e938

	thumb_func_start ovy309_219e9dc
ovy309_219e9dc: ; 0x0219E9DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219EA68 ; =0x000001BE
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219EA6C ; =0x021A06F0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219EA70 ; =0x04000050
	ldr r0, _0219EA74 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219EA78 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219EA7C ; =0x021A024C
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
	bl ovy309_219eb2c
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy309_219ebd0
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy309_219ec40
	ldr r0, _0219EA80 ; =ovy309_219eb18
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EA68: .word 0x000001BE
_0219EA6C: .word 0x021A06F0
_0219EA70: .word 0x04000050
_0219EA74: .word 0x04001050
_0219EA78: .word 0xFFFF1FFF
_0219EA7C: .word 0x021A024C
_0219EA80: .word ovy309_219eb18
	thumb_func_end ovy309_219e9dc

	thumb_func_start ovy309_219ea84
ovy309_219ea84: ; 0x0219EA84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #8
	bl ovy309_219ecac
	add r0, r4, #4
	bl ovy309_219ec10
	add r0, r4, #0
	bl ovy309_219eb8c
	bl sub_020232D8
	ldr r5, _0219EAD4 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219EAD8 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219EADC ; =0xFFFF1FFF
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
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	nop
_0219EAD4: .word 0x04000050
_0219EAD8: .word 0x04001050
_0219EADC: .word 0xFFFF1FFF
	thumb_func_end ovy309_219ea84

	thumb_func_start ovy309_219eae0
ovy309_219eae0: ; 0x0219EAE0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219EC2C
	add r0, r4, #0
	bl sub_0219EBC4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy309_219eae0

	thumb_func_start sub_0219EAF4
sub_0219EAF4: ; 0x0219EAF4
	ldr r3, _0219EAFC ; =ovy309_219ecbc
	add r0, #8
	bx r3
	nop
_0219EAFC: .word ovy309_219ecbc
	thumb_func_end sub_0219EAF4

	thumb_func_start sub_0219EB00
sub_0219EB00: ; 0x0219EB00
	ldr r3, _0219EB08 ; =sub_0219ECD0
	add r0, #8
	bx r3
	nop
_0219EB08: .word sub_0219ECD0
	thumb_func_end sub_0219EB00

	thumb_func_start sub_0219EB0C
sub_0219EB0C: ; 0x0219EB0C
	ldr r3, _0219EB14 ; =sub_0219EC3C
	add r0, r0, #4
	bx r3
	nop
_0219EB14: .word sub_0219EC3C
	thumb_func_end sub_0219EB0C

	thumb_func_start ovy309_219eb18
ovy309_219eb18: ; 0x0219EB18
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219EBC8
	add r0, r4, #4
	bl sub_0219EC34
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy309_219eb18

	thumb_func_start ovy309_219eb2c
ovy309_219eb2c: ; 0x0219EB2C
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
	ldr r0, _0219EB84 ; =0x021A0200
	bl sub_02044710
	ldr r7, _0219EB88 ; =0x021A027C
_0219EB4E:
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
	cmp r4, #8
	blo _0219EB4E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EB84: .word 0x021A0200
_0219EB88: .word 0x021A027C
	thumb_func_end ovy309_219eb2c

	thumb_func_start ovy309_219eb8c
ovy309_219eb8c: ; 0x0219EB8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219EBC0 ; =0x021A027C
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219EB96:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219EB96
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EBC0: .word 0x021A027C
	thumb_func_end ovy309_219eb8c

	thumb_func_start sub_0219EBC4
sub_0219EBC4: ; 0x0219EBC4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EBC4

	thumb_func_start sub_0219EBC8
sub_0219EBC8: ; 0x0219EBC8
	ldr r3, _0219EBCC ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219EBCC: .word sub_02045A5C
	thumb_func_end sub_0219EBC8

	thumb_func_start ovy309_219ebd0
ovy309_219ebd0: ; 0x0219EBD0
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219EC0C ; =0x021A0210
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
_0219EC0C: .word 0x021A0210
	thumb_func_end ovy309_219ebd0

	thumb_func_start ovy309_219ec10
ovy309_219ec10: ; 0x0219EC10
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
	thumb_func_end ovy309_219ec10

	thumb_func_start sub_0219EC2C
sub_0219EC2C: ; 0x0219EC2C
	ldr r3, _0219EC30 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219EC30: .word sub_0204B794
	thumb_func_end sub_0219EC2C

	thumb_func_start sub_0219EC34
sub_0219EC34: ; 0x0219EC34
	ldr r3, _0219EC38 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219EC38: .word sub_0204B7C8
	thumb_func_end sub_0219EC34

	thumb_func_start sub_0219EC3C
sub_0219EC3C: ; 0x0219EC3C
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219EC3C

	thumb_func_start ovy309_219ec40
ovy309_219ec40: ; 0x0219EC40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r6, #0
	add r5, r0, #0
	add r4, r1, #0
	str r6, [sp]
	ldr r0, _0219EC94 ; =ovy309_219e938
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r7, #1
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	str r6, [sp]
	lsl r0, r7, #0xc
	str r0, [sp, #4]
	lsl r0, r7, #0x16
	str r0, [sp, #8]
	ldr r0, _0219EC98 ; =0x021A01E8
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0219EC9C ; =0x021A01DC
	ldr r3, _0219ECA0 ; =0x02094A3C
	mov r1, #0xc
	mov r2, #0xe
	str r0, [sp, #0x14]
	ldr r0, _0219ECA4 ; =0x021A01F4
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _0219ECA8 ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EC94: .word ovy309_219e938
_0219EC98: .word 0x021A01E8
_0219EC9C: .word 0x021A01DC
_0219ECA0: .word 0x02094A3C
_0219ECA4: .word 0x021A01F4
_0219ECA8: .word 0x00001555
	thumb_func_end ovy309_219ec40

	thumb_func_start ovy309_219ecac
ovy309_219ecac: ; 0x0219ECAC
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy309_219ecac

	thumb_func_start ovy309_219ecbc
ovy309_219ecbc: ; 0x0219ECBC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	pop {r4, pc}
	thumb_func_end ovy309_219ecbc

	thumb_func_start sub_0219ECD0
sub_0219ECD0: ; 0x0219ECD0
	ldr r3, _0219ECD4 ; =sub_02049AA0
	bx r3
	.align 2, 0
_0219ECD4: .word sub_02049AA0
	thumb_func_end sub_0219ECD0

	thumb_func_start ovy309_219ecd8
ovy309_219ecd8: ; 0x0219ECD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy309_219ed4c
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	bl ovy309_219ee08
	add r0, r5, #0
	add r1, r4, #0
	bl ovy309_219eeac
	add r0, r5, #0
	bl ovy309_219f1d4
	pop {r3, r4, r5, pc}
	thumb_func_end ovy309_219ecd8

	thumb_func_start ovy309_219ecfc
ovy309_219ecfc: ; 0x0219ECFC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_0219ED04:
	lsl r6, r4, #3
	add r0, r5, r6
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _0219ED1A
	bl sub_02048210
	add r0, r5, r6
	add r0, #0x9c
	str r7, [r0]
_0219ED1A:
	add r4, r4, #1
	cmp r4, #0x1e
	blt _0219ED04
	mov r4, #0x66
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219ED32
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r5, r4]
_0219ED32:
	mov r4, #0x19
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219ED44
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, r4]
_0219ED44:
	add r0, r5, #0
	bl ovy309_219f260
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219ecfc

	thumb_func_start ovy309_219ed4c
ovy309_219ed4c: ; 0x0219ED4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0xc]
	ldr r0, _0219EDF8 ; =0x021A0704
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	ldrh r1, [r7]
	ldr r0, _0219EDFC ; =0x0000010E
	ldr r6, _0219EE00 ; =0x021A0454
	ldr r5, _0219EE04 ; =0x021A04A8
	bl sub_0204AA30
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
_0219ED6C:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _0219ED98
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r4, #3]
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldrb r3, [r4, #2]
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x10]
	lsl r3, r3, #5
	bl sub_0204B124
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #8
	blt _0219ED6C
_0219ED98:
	mov r4, #0
_0219ED9A:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _0219EDBE
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r6, #1]
	ldrb r3, [r6, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_0204ADA8
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #8
	blt _0219ED9A
_0219EDBE:
	mov r4, #0
	add r6, r4, #0
_0219EDC2:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _0219EDEC
	ldrb r1, [r5, #3]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0219EDE4
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_0204AF50
_0219EDE4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0219EDC2
_0219EDEC:
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EDF8: .word 0x021A0704
_0219EDFC: .word 0x0000010E
_0219EE00: .word 0x021A0454
_0219EE04: .word 0x021A04A8
	thumb_func_end ovy309_219ed4c

	thumb_func_start ovy309_219ee08
ovy309_219ee08: ; 0x0219EE08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r6, r2, #0
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	str r0, [sp, #0x10]
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r4, #0
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	lsl r3, r6, #5
	bl sub_0204B0D4
	bl sub_0202D824
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	ldr r2, [sp, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_0204ADA8
	bl sub_0202D828
	str r4, [sp]
	str r4, [sp, #4]
	add r1, r0, #0
	ldrh r0, [r5]
	ldr r2, [sp, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_0204AF50
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045814
	add r1, r0, #0
	lsl r0, r6, #0x1c
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r7, r4, #0
_0219EE7E:
	lsl r0, r4, #6
	add r2, r7, #0
	add r3, r1, r0
_0219EE84:
	lsl r0, r2, #1
	ldrh r6, [r3, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r3, r0]
	cmp r2, #0x20
	blt _0219EE84
	add r4, r4, #1
	cmp r4, #0x18
	blt _0219EE7E
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219ee08

	thumb_func_start ovy309_219eeac
ovy309_219eeac: ; 0x0219EEAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0219EF3C ; =0x021A070C
	lsl r1, r1, #2
	ldr r5, [r0, r1]
	mov r7, #0
_0219EEBA:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219EEFE
	ldrb r1, [r5, #4]
	lsl r4, r7, #3
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	bl BmpWin_CreateDynamic
	add r1, r6, r4
	add r1, #0x9c
	str r0, [r1]
	add r0, r6, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_0204826C
	add r0, r6, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020484D4
	bl sub_02044F90
	add r7, r7, #1
	add r5, r5, #6
	cmp r7, #0x1e
	blt _0219EEBA
_0219EEFE:
	ldrh r1, [r6]
	mov r0, #0x17
	bl sub_0204AA30
	mov r7, #0x20
	str r7, [sp]
	ldrh r1, [r6]
	mov r5, #6
	add r5, #0xfa
	str r1, [sp, #4]
	mov r1, #6
	mov r2, #0
	add r3, r5, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r6]
	mov r1, #6
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r5, #0
	bl sub_0204B0D4
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219EF3C: .word 0x021A070C
	thumb_func_end ovy309_219eeac

	thumb_func_start ovy309_219ef40
ovy309_219ef40: ; 0x0219EF40
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r5, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x20
	ldrh r0, [r0, #8]
	lsl r3, r3, #0x10
	add r4, #0x90
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r5, #0x9c
	str r0, [sp, #0xc]
	lsl r0, r1, #3
	ldr r1, [r4]
	add r0, r5, r0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ovy309_219ef40

	thumb_func_start ovy309_219ef78
ovy309_219ef78: ; 0x0219EF78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #3
	add r0, r5, r4
	add r0, #0x9c
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, r4
	mov r1, #1
	add r0, #0xa0
	strb r1, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy309_219ef78

	thumb_func_start sub_0219EF98
sub_0219EF98: ; 0x0219EF98
	cmp r1, #0x1c
	blo _0219EFA0
	mov r0, #0
	bx lr
_0219EFA0:
	mov r2, #0x8b
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219EF98

	thumb_func_start ovy309_219efac
ovy309_219efac: ; 0x0219EFAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0219EB0C
	str r0, [sp, #0x20]
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r2, #6
	ldrsh r2, [r4, r2]
	mov r0, #0
	ldrsh r3, [r4, r0]
	str r2, [sp, #0x10]
	mov r2, #8
	mov r0, #2
	mov r1, #4
	ldrsh r2, [r4, r2]
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	cmp r2, #0
	bne _0219EFEC
	add r6, r7, #0
	add r6, #0x30
	b _0219EFFE
_0219EFEC:
	cmp r2, #1
	bne _0219EFF6
	add r6, r7, #0
	add r6, #0x28
	b _0219EFFE
_0219EFF6:
	cmp r2, #2
	bne _0219EFFE
	add r6, r7, #0
	add r6, #0x80
_0219EFFE:
	mov r2, #0
	str r2, [sp, #0x24]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _0219F0CA
	lsl r0, r0, #2
	add r0, r7, r0
	lsl r1, r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, r7, r1
	str r1, [sp, #0x1c]
	lsl r1, r3, #2
	lsl r0, r0, #0x10
	add r1, r7, r1
	lsr r0, r0, #0x10
	str r1, [sp, #0x18]
	str r0, [sp, #0x2c]
_0219F022:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219F0CA
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219EF98
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_0219EF98
	ldr r2, [sp, #0x28]
	add r1, sp, #0x30
	strh r2, [r1]
	strh r0, [r1, #2]
	ldrb r1, [r5]
	add r0, sp, #0x30
	ldr r2, [sp, #0x18]
	strh r1, [r0, #4]
	ldrb r1, [r5, #1]
	ldr r3, [sp, #0x1c]
	strb r1, [r0, #6]
	ldrb r1, [r5, #2]
	strb r1, [r0, #7]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	lsl r4, r0, #2
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldrh r0, [r7]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	ldr r3, [r3, #4]
	bl sub_0204C040
	str r0, [r6, r4]
	ldrb r0, [r5, #3]
	mov r1, #0
	cmp r0, #1
	bne _0219F082
	mov r1, #1
_0219F082:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219F092
	mov r1, #1
_0219F092:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _0219F0AA
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219F0AA:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _0219F0BC
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219F0BC:
	ldr r0, [sp, #0x24]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _0219F022
_0219F0CA:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219efac

	thumb_func_start ovy309_219f0d0
ovy309_219f0d0: ; 0x0219F0D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	ldr r0, _0219F150 ; =0x0000010E
	add r4, r2, #0
	bl sub_0204AA30
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0219EB0C
	mov r1, #0
	str r1, [sp]
	ldrh r0, [r4, #6]
	ldrsh r1, [r4, r1]
	ldrh r3, [r4, #4]
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	bl sub_0204BBB8
	mov r1, #2
	ldrsh r1, [r4, r1]
	mov r2, #1
	add r3, r7, #0
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldrh r0, [r5]
	mov r1, #8
	ldrsh r1, [r4, r1]
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	mov r2, #0x18
	ldrsh r2, [r4, r2]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldrh r3, [r5]
	add r0, r6, #0
	bl sub_0204BDE0
	mov r1, #0x12
	ldrsh r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F150: .word 0x0000010E
	thumb_func_end ovy309_219f0d0

	thumb_func_start ovy309_219f154
ovy309_219f154: ; 0x0219F154
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0219EB0C
	bl sub_0202D810
	add r7, r0, #0
	bl sub_0202D814
	str r0, [sp, #0xc]
	mov r0, #2
	bl sub_0202D818
	str r0, [sp, #0x10]
	mov r0, #2
	bl sub_0202D81C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204BBB8
	str r0, [r5, #0x10]
	ldrh r0, [r5]
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204B81C
	str r0, [r5, #0x14]
	ldrh r3, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #0x18]
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219f154

	thumb_func_start ovy309_219f1d4
ovy309_219f1d4: ; 0x0219F1D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0219EB0C
	mov r6, #0x82
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldr r2, _0219F240 ; =0x021A0468
	lsl r1, r0, #2
	ldr r0, _0219F244 ; =0x021A0714
	ldr r4, [r0, r1]
	add r0, r5, #0
	mov r1, #1
	bl ovy309_219f0d0
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy309_219f154
	ldr r3, _0219F248 ; =0x021A03EC
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy309_219efac
	ldr r2, _0219F24C ; =0x021A0432
	ldr r3, _0219F250 ; =0x021A03F6
	add r0, r5, #0
	mov r1, #0
	bl ovy309_219efac
	ldr r0, [r5, r6]
	cmp r0, #1
	bne _0219F236
	ldr r2, _0219F254 ; =0x021A0488
	add r0, r5, #0
	add r1, r7, #0
	bl ovy309_219f0d0
	ldr r2, _0219F258 ; =0x021A0704
	ldr r3, _0219F25C ; =0x021A0400
	ldr r2, [r2, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy309_219efac
_0219F236:
	ldrh r1, [r5]
	mov r0, #0
	bl sub_02042BA8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F240: .word 0x021A0468
_0219F244: .word 0x021A0714
_0219F248: .word 0x021A03EC
_0219F24C: .word 0x021A0432
_0219F250: .word 0x021A03F6
_0219F254: .word 0x021A0488
_0219F258: .word 0x021A0704
_0219F25C: .word 0x021A0400
	thumb_func_end ovy309_219f1d4

	thumb_func_start ovy309_219f260
ovy309_219f260: ; 0x0219F260
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_0219F268:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0219F278
	bl sub_0204C108
	str r7, [r6, #0x30]
_0219F278:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0219F268
	mov r4, #0
	add r7, r4, #0
_0219F282:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _0219F292
	bl sub_0204C108
	str r7, [r6, #0x28]
_0219F292:
	add r4, r4, #1
	cmp r4, #2
	blt _0219F282
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0219F2AE
	bl sub_0204C108
	add r0, r5, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_0219F2AE:
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5, #0x10]
	bl sub_0204BCD0
	ldr r0, [r5, #0x14]
	bl sub_0204B98C
	ldr r0, [r5, #0x18]
	bl sub_0204BE64
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219F2EE
	ldr r0, [r5, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r5, #0x20]
	bl sub_0204B98C
	ldr r0, [r5, #0x24]
	bl sub_0204BE64
_0219F2EE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219f260

	thumb_func_start ovy309_219f2f0
ovy309_219f2f0: ; 0x0219F2F0
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _0219F310
	add r4, r0, #0
	add r4, #0x30
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219F310:
	cmp r1, #1
	bne _0219F32E
	add r4, r0, #0
	add r4, #0x28
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219F32E:
	cmp r1, #2
	bne _0219F34A
	add r4, r0, #0
	add r4, #0x80
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
_0219F34A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy309_219f2f0

	thumb_func_start ovy309_219f34c
ovy309_219f34c: ; 0x0219F34C
	push {r3, lr}
	cmp r1, #0
	bne _0219F360
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x30]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219F360:
	cmp r1, #1
	bne _0219F372
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219F372:
	cmp r1, #2
	bne _0219F384
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x80
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
_0219F384:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy309_219f34c

	thumb_func_start ovy309_219f388
ovy309_219f388: ; 0x0219F388
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _0219F3A0
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x30]
	bl sub_0204C560
	cmp r0, #0
	bne _0219F3CA
	b _0219F3C8
_0219F3A0:
	cmp r1, #1
	bne _0219F3B4
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	bl sub_0204C560
	cmp r0, #0
	bne _0219F3CA
	b _0219F3C8
_0219F3B4:
	cmp r1, #2
	bne _0219F3CA
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x80
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219F3CA
_0219F3C8:
	mov r4, #0
_0219F3CA:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy309_219f388

	thumb_func_start ovy309_219f3d0
ovy309_219f3d0: ; 0x0219F3D0
	push {r3, lr}
	cmp r1, #0
	bne _0219F3E8
	lsl r1, r2, #2
	add r0, r0, r1
	lsl r1, r3, #0x18
	ldr r0, [r0, #0x30]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	pop {r3, pc}
_0219F3E8:
	cmp r1, #1
	bne _0219F3FE
	lsl r1, r2, #2
	add r0, r0, r1
	lsl r1, r3, #0x18
	ldr r0, [r0, #0x28]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	pop {r3, pc}
_0219F3FE:
	cmp r1, #2
	bne _0219F414
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x80
	lsl r1, r3, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
_0219F414:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy309_219f3d0

	thumb_func_start ovy309_219f418
ovy309_219f418: ; 0x0219F418
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r5, r3, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	ldr r6, [sp, #0x30]
	str r0, [sp, #0x38]
	mov r3, #0
	str r2, [sp, #4]
	sub r2, r3, #1
	add r0, sp, #0xc
_0219F432:
	lsl r1, r3, #2
	add r3, r3, #1
	str r2, [r0, r1]
	cmp r3, #4
	blt _0219F432
	ldr r0, [sp, #0x38]
	add r1, sp, #8
	strh r0, [r1]
	ldr r0, [sp, #0x3c]
	mov r4, #0
	strh r0, [r1, #2]
	cmp r6, #0
	ble _0219F46E
	mov r7, #0xa
_0219F44E:
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208D65C
	lsl r2, r4, #2
	add r0, sp, #0xc
	str r1, [r0, r2]
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208D65C
	add r5, r0, #0
	beq _0219F46E
	add r4, r4, #1
	cmp r4, r6
	blt _0219F44E
_0219F46E:
	ldr r0, [sp, #4]
	mov r5, #0
	add r6, sp, #0xc
	add r7, r0, #3
_0219F476:
	ldr r0, [sp, #0x34]
	mov r1, #1
	cmp r0, #0
	bne _0219F48E
	lsl r0, r5, #2
	ldr r3, [r6, r0]
	sub r2, r1, #2
	cmp r3, r2
	bne _0219F48E
	mov r2, #0
	mov r1, #0
	str r2, [r6, r0]
_0219F48E:
	sub r0, r7, r5
	lsl r2, r0, #2
	ldr r0, [sp]
	add r4, r0, r2
	ldr r0, [r4, #0x30]
	bl sub_0204C124
	lsl r1, r5, #2
	ldr r1, [r6, r1]
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C504
	mov r0, #3
	sub r0, r0, r5
	lsl r1, r0, #3
	ldr r0, [sp, #0x38]
	mov r2, #1
	add r1, r0, r1
	add r0, sp, #8
	strh r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, sp, #8
	bl sub_0204C140
	add r5, r5, #1
	cmp r5, #4
	blt _0219F476
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219f418

	thumb_func_start ovy309_219f4cc
ovy309_219f4cc: ; 0x0219F4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0
	add r6, sp, #0x10
	str r0, [sp]
	add r5, r3, #0
	add r4, r1, #0
_0219F4DA:
	lsl r0, r1, #2
	add r1, r1, #1
	str r4, [r6, r0]
	cmp r1, #4
	blt _0219F4DA
	ldr r1, [sp]
	lsl r0, r2, #2
	str r0, [sp, #4]
	add r0, r1, r0
	ldr r0, [r0, #0x30]
	add r1, sp, #0xc
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r0, [r1, r0]
	mov r7, #0xa
	str r0, [sp, #8]
_0219F500:
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208D65C
	mov r0, #1
	sub r0, r0, r4
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r5, #0
	add r1, r7, #0
	blx sub_0208D65C
	add r5, r0, #0
	beq _0219F522
	add r4, r4, #1
	cmp r4, #2
	blt _0219F500
_0219F522:
	ldr r5, [sp, #0x38]
	add r7, sp, #0x10
	mov r4, #0
	mov r6, #0xa
_0219F52A:
	add r0, r5, #0
	add r1, r6, #0
	blx sub_0208D65C
	mov r0, #3
	sub r0, r0, r4
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r0, r5, #0
	add r1, r6, #0
	blx sub_0208D65C
	add r5, r0, #0
	beq _0219F54C
	add r4, r4, #1
	cmp r4, #2
	blt _0219F52A
_0219F54C:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r5, #0
	add r6, r1, r0
_0219F554:
	lsl r7, r5, #2
	add r4, r6, r7
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl sub_0204C124
	add r1, sp, #0x10
	ldr r1, [r1, r7]
	ldr r0, [r4, #0x30]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C504
	ldr r0, [sp, #8]
	lsl r1, r5, #3
	add r1, r0, r1
	add r0, sp, #0xc
	strh r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, sp, #0xc
	mov r2, #1
	bl sub_0204C140
	add r5, r5, #1
	cmp r5, #2
	blt _0219F554
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, #0x38
	ldr r0, [r1, r0]
	str r1, [sp]
	mov r1, #1
	bl sub_0204C124
	ldr r1, [sp, #8]
	add r0, sp, #0xc
	add r1, #0x10
	strh r1, [r0]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	mov r2, #1
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl sub_0204C140
	mov r5, #0
_0219F5B0:
	lsl r7, r5, #2
	add r4, r6, r7
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_0204C124
	add r1, sp, #0x10
	add r1, r1, r7
	ldr r1, [r1, #8]
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C504
	add r0, r5, #3
	lsl r1, r0, #3
	ldr r0, [sp, #8]
	mov r2, #1
	add r1, r0, r1
	add r0, sp, #0xc
	strh r1, [r0]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0xc
	bl sub_0204C140
	add r5, r5, #1
	cmp r5, #2
	blt _0219F5B0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219f4cc

	thumb_func_start ovy309_219f5ec
ovy309_219f5ec: ; 0x0219F5EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldr r0, [r0, #0x10]
	mov r1, #1
	ldr r0, [r0]
	lsl r0, r0, #0x16
	lsr r6, r0, #0x1d
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x30]
	bl sub_0204C124
	add r2, r4, #0
	ldr r3, _0219F620 ; =0x021A03E4
	lsl r4, r6, #1
	ldrsh r3, [r3, r4]
	add r0, r5, #0
	mov r1, #0
	bl ovy309_219f2f0
	pop {r4, r5, r6, pc}
	nop
_0219F620: .word 0x021A03E4
	thumb_func_end ovy309_219f5ec

	thumb_func_start sub_0219F624
sub_0219F624: ; 0x0219F624
	ldr r0, _0219F62C ; =0x021A03DC
	ldr r3, _0219F630 ; =sub_0203DA0C
	bx r3
	nop
_0219F62C: .word 0x021A03DC
_0219F630: .word sub_0203DA0C
	thumb_func_end sub_0219F624

	thumb_func_start ovy309_219f634
ovy309_219f634: ; 0x0219F634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	mov r6, #0x19
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r4, r2, #0
	ldr r7, _0219F990 ; =0x021A0442
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _0219F652
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, r6]
_0219F652:
	mov r6, #0x66
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0219F664
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [r5, r6]
_0219F664:
	cmp r4, #2
	bne _0219F754
	mov r6, #0x6a
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r7, r0, #0
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	bl sub_02008BA0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x28]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	add r1, r6, #0
	add r1, #0x22
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ovy309_219fb48
	add r1, r6, #0
	add r1, #0x24
	add r6, #0x26
	ldrh r2, [r5, r1]
	ldrh r1, [r5, r6]
	add r7, r2, r1
	cmp r7, r0
	ble _0219F6BE
	add r7, r0, #0
_0219F6BE:
	mov r6, #0
	mov r0, #1
	str r6, [sp]
	str r0, [sp, #0x20]
	str r0, [sp, #4]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, r7, #0
	mov r3, #3
	bl StringSetNumber
	cmp r7, #1
	bne _0219F6DE
	str r6, [sp, #0x20]
_0219F6DE:
	mov r6, #0x63
	lsl r6, r6, #2
	mov r0, #0
	add r2, r6, #0
	str r0, [sp]
	add r2, #0x3e
	mov r1, #1
	str r1, [sp, #0x2c]
	ldrh r2, [r5, r2]
	ldr r0, [r5, r6]
	ldr r3, [sp, #0x20]
	mov r1, #1
	bl sub_020244E0
	ldr r0, [sp, #0x2c]
	ldrh r1, [r5]
	add r0, #0xff
	str r0, [sp, #0x2c]
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, _0219F990 ; =0x021A0442
	lsl r2, r4, #1
	ldrsh r1, [r1, r2]
	ldr r0, [r0]
	bl sub_0204898C
	add r4, r0, #0
	add r1, r6, #0
	add r1, #0xc
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02017354
	add r6, #0x3e
	ldrh r1, [r5, r6]
	lsl r2, r7, #0x10
_0219F74A:
	ldrh r3, [r5]
	lsr r2, r2, #0x10
	bl sub_02008268
	b _0219FA2C
_0219F754:
	cmp r4, #3
	bne _0219F79A
	mov r6, #0x63
	lsl r6, r6, #2
	add r2, r6, #0
	add r2, #0x3e
	ldrh r2, [r5, r2]
	ldr r0, [r5, r6]
	mov r1, #0
	bl sub_020244D0
	add r0, r6, #0
	ldrh r1, [r5]
	sub r0, #0x8c
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r5, #0
	lsl r1, r4, #1
	add r0, #0x94
	ldrsh r1, [r7, r1]
	ldr r0, [r0]
	bl sub_0204898C
	add r4, r0, #0
	ldr r0, [r5, r6]
	add r6, #0xc
	ldr r1, [r5, r6]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
_0219F798:
	b _0219F982
_0219F79A:
	cmp r4, #7
	bne _0219F872
	mov r4, #0x6a
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	ldr r0, [r0, #4]
	bl sub_0201736C
	add r6, r0, #0
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	add r0, r6, #0
	bl sub_02008BA0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x24]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	add r1, r4, #0
	add r1, #0x28
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ovy309_219fb48
	add r4, #0x2a
	ldrh r4, [r5, r4]
	cmp r4, r0
	ble _0219F7EC
	add r4, r0, #0
_0219F7EC:
	mov r6, #0
	mov r0, #1
	str r6, [sp]
	str r0, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, r4, #0
	mov r3, #3
	bl StringSetNumber
	cmp r4, #1
	bne _0219F80C
	str r6, [sp, #0x1c]
_0219F80C:
	mov r6, #0x63
	lsl r6, r6, #2
	mov r0, #0
	add r2, r6, #0
	str r0, [sp]
	add r2, #0x44
	ldrh r2, [r5, r2]
	ldr r0, [r5, r6]
	ldr r3, [sp, #0x1c]
	mov r1, #1
	mov r7, #1
	bl sub_020244E0
	add r7, #0xff
	ldrh r1, [r5]
	add r0, r7, #0
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x69
	bl sub_0204898C
	add r7, r0, #0
	add r1, r6, #0
	add r1, #0xc
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02017354
	add r6, #0x44
	ldrh r1, [r5, r6]
	lsl r2, r4, #0x10
	b _0219F74A
_0219F872:
	cmp r4, #8
	bne _0219F8B6
	mov r4, #0x63
	lsl r4, r4, #2
	add r2, r4, #0
	add r2, #0x44
	ldrh r2, [r5, r2]
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_020244D0
	add r0, r4, #0
	ldrh r1, [r5]
	sub r0, #0x8c
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0x6a
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, r4]
	add r4, #0xc
	ldr r1, [r5, r4]
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	b _0219F798
_0219F8B6:
	cmp r4, #5
	bne _0219F988
	mov r6, #0x6a
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldr r0, [r0, #4]
	bl sub_0201736C
	str r0, [sp, #0x30]
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl sub_02008BA0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x34]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
	add r1, r6, #0
	add r1, #0x19
	ldrb r1, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	add r1, r1, #7
	lsl r1, r1, #1
	ldrsh r1, [r7, r1]
	ldr r0, [r0]
	bl sub_0204898C
	str r0, [sp, #0x38]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x38]
	mov r1, #1
	mov r3, #0
	bl sub_0202437C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r2, r6, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, #0x1a
	sub r0, #0x1c
	mov r3, #3
	str r3, [sp, #0x3c]
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #2
	mov r3, #3
	bl StringSetNumber
	ldr r0, [sp, #0x3c]
	ldrh r1, [r5]
	add r0, #0xfd
	str r0, [sp, #0x3c]
	bl GFL_StrBufCreate
	add r1, r6, #0
	sub r1, #0x10
	str r0, [r5, r1]
	add r0, r5, #0
	lsl r1, r4, #1
	add r0, #0x94
	ldrsh r1, [r7, r1]
	ldr r0, [r0]
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	sub r0, #0x1c
	sub r6, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r6]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x38]
_0219F97C:
	bl GFL_StrBufFree
	add r0, r4, #0
_0219F982:
	bl GFL_StrBufFree
	b _0219FA2C
_0219F988:
	cmp r4, #6
	bne _0219FA18
	ldr r6, _0219F994 ; =0x000001C1
	b _0219F998
	.align 2, 0
_0219F990: .word 0x021A0442
_0219F994: .word 0x000001C1
_0219F998:
	add r0, r5, #0
	ldrb r1, [r5, r6]
	add r0, #0x94
	ldr r0, [r0]
	add r1, r1, #7
	lsl r1, r1, #1
	ldrsh r1, [r7, r1]
	bl sub_0204898C
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	sub r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x40]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r6, #1
	sub r0, #0x35
	mov r3, #3
	str r3, [sp, #0x44]
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #1
	mov r3, #3
	bl StringSetNumber
	ldr r0, [sp, #0x44]
	ldrh r1, [r5]
	add r0, #0xfd
	str r0, [sp, #0x44]
	bl GFL_StrBufCreate
	add r1, r6, #0
	sub r1, #0x29
	str r0, [r5, r1]
	add r0, r5, #0
	lsl r1, r4, #1
	add r0, #0x94
	ldrsh r1, [r7, r1]
	ldr r0, [r0]
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	sub r0, #0x35
	sub r6, #0x29
	ldr r0, [r5, r0]
	ldr r1, [r5, r6]
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x40]
	b _0219F97C
_0219FA18:
	add r0, r5, #0
	lsl r1, r4, #1
	add r0, #0x94
	ldrsh r1, [r7, r1]
	ldr r0, [r0]
	bl sub_0204898C
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
_0219FA2C:
	bl sub_02017BCC
	add r1, r5, #0
	add r1, #0x8c
	ldr r1, [r1]
	mov r4, #0x65
	str r1, [sp]
	lsl r4, r4, #2
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	add r3, r4, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r3, [r5, r3]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_02022268
	sub r1, r4, #4
	str r0, [r5, r1]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219f634

	thumb_func_start ovy309_219fa6c
ovy309_219fa6c: ; 0x0219FA6C
	push {r3, r4, r5, lr}
	mov r4, #0x19
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	cmp r1, #0
	bne _0219FA7E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219FA7E:
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc
	sub r2, #0x4c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl sub_0202E8D8
	add r0, r4, #0
	add r0, #0x10
	ldr r1, [r5, r4]
	add r0, r5, r0
	bl sub_0202E68C
	cmp r0, #1
	beq _0219FAA2
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219FAA2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy309_219fa6c

	thumb_func_start ovy309_219faa8
ovy309_219faa8: ; 0x0219FAA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldrh r0, [r6]
	add r7, r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp]
	mov r0, #5
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl sub_02024D00
	add r5, r6, #0
	add r5, #0x9c
	lsl r4, r7, #3
	ldr r0, [r5, r4]
	mov r1, #0
	mov r2, #1
	mov r3, #4
	bl sub_02024E80
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0219FB34
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	lsl r2, r1, #1
	ldr r1, _0219FB44 ; =0x021A0442
	add r0, #0x94
	ldrsh r1, [r1, r2]
	ldr r0, [r0]
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x78
	mov r3, #0
	bl ovy309_219ef40
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219FB34:
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy309_219f634
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219FB44: .word 0x021A0442
	thumb_func_end ovy309_219faa8

	thumb_func_start ovy309_219fb48
ovy309_219fb48: ; 0x0219FB48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0219FB54
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219FB54:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02008848
	add r6, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #4]
	bl sub_02017354
	lsl r1, r4, #0x10
	ldrh r2, [r5]
	lsr r1, r1, #0x10
	bl BagSave_GetItemCountByID
	sub r0, r6, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy309_219fb48

	thumb_func_start ovy309_219fb78
ovy309_219fb78: ; 0x0219FB78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _0219FBA0
	mov r5, #0x51
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x58
	ldr r0, [r4, r0]
	mov r2, #0xf
	bl sub_0202E870
	ldr r0, [r4, r5]
	bl BmpWin_FlushChar
	pop {r3, r4, r5, pc}
_0219FBA0:
	mov r5, #0x51
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x58
	ldr r0, [r4, r0]
	mov r2, #0xf
	bl sub_0202E82C
	ldr r0, [r4, r5]
	bl BmpWin_FlushChar
	pop {r3, r4, r5, pc}
	thumb_func_end ovy309_219fb78

	thumb_func_start ovy309_219fbc0
ovy309_219fbc0: ; 0x0219FBC0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x37
	str r1, [sp]
	ldr r3, _0219FBF4 ; =0x021A0720
	mov r1, #0x1c
	mov r2, #1
	add r6, r0, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r5, #0
	mov r7, #8
_0219FBD8:
	add r0, r7, #0
	add r1, r6, #0
	bl GFL_StrBufCreate
	lsl r1, r5, #3
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #4]
	cmp r5, #3
	blt _0219FBD8
	mov r0, #0
	str r0, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FBF4: .word 0x021A0720
	thumb_func_end ovy309_219fbc0

	thumb_func_start ovy309_219fbf8
ovy309_219fbf8: ; 0x0219FBF8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0219FC00:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, #4]
	bl GFL_StrBufFree
	add r4, r4, #1
	str r7, [r5, #4]
	cmp r4, #3
	blt _0219FC00
	add r0, r6, #0
	str r7, [r6]
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy309_219fbf8

	thumb_func_start ovy309_219fc1c
ovy309_219fc1c: ; 0x0219FC1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r4, #0
	add r7, r0, #0
	str r4, [r5]
	add r6, r5, #4
_0219FC28:
	lsl r0, r4, #3
	add r0, r6, r0
	bl ovy309_219fc78
	add r4, r4, #1
	cmp r4, #3
	blt _0219FC28
	ldr r0, _0219FC74 ; =0x000004ED
	ldrb r0, [r7, r0]
	cmp r0, #0
	bne _0219FC42
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219FC42:
	sub r4, r0, #1
	bmi _0219FC70
	add r6, r5, #4
_0219FC48:
	ldr r0, [r5]
	lsl r1, r0, #3
	mov r0, #0x2a
	mul r0, r4
	add r0, r7, r0
	ldrh r3, [r0, #0x22]
	add r2, r6, r1
	strh r3, [r2, #6]
	ldrh r3, [r0, #0x28]
	strh r3, [r2, #4]
	ldr r1, [r6, r1]
	bl sub_02015018
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	cmp r0, #3
	bge _0219FC70
	sub r4, r4, #1
	bpl _0219FC48
_0219FC70:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FC74: .word 0x000004ED
	thumb_func_end ovy309_219fc1c

	thumb_func_start ovy309_219fc78
ovy309_219fc78: ; 0x0219FC78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02048570
	mov r0, #0
	strh r0, [r4, #6]
	strh r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy309_219fc78

	thumb_func_start ovy309_219fc8c
ovy309_219fc8c: ; 0x0219FC8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [r0, #4]
	add r6, r1, #0
	bl sub_02017934
	add r4, r0, #0
	bl sub_02010DEC
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl sub_02017394
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200FB40
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	ldr r0, [sp]
	mov r1, #4
	bl sub_020147A8
	ldr r0, [sp]
	add r1, r6, #4
	bl sub_020148A8
	strb r0, [r6]
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsl r1, r0, #1
	lsr r1, r1, #0x1f
	bne _0219FD58
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _0219FD06
	ldr r4, _0219FF60 ; =0x00000986
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020191AC
	cmp r0, #0
	bne _0219FD06
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020191D8
	ldr r1, _0219FF64 ; =0x0000404D
	add r0, r5, #0
	bl sub_02019294
	ldrb r1, [r6]
	add r1, r1, #2
	strh r1, [r0]
_0219FD06:
	ldr r1, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x50]
	ldr r2, [r6, #4]
	ldr r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02010ED4
	ldrb r1, [r6, #3]
	mov r2, #1
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #1
	and r0, r2
	orr r0, r1
	strb r0, [r6, #3]
	ldr r1, [sp]
	ldr r2, [sp]
	ldr r1, [r1, #0x50]
	ldrh r2, [r2, #0x3c]
	ldr r1, [r1]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02010F2C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r6, #3]
	mov r2, #2
	lsr r0, r0, #0x1e
	bic r1, r2
	orr r0, r1
	strb r0, [r6, #3]
_0219FD58:
	ldr r0, [sp]
	bl sub_0201494C
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_0201494C
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x18
	bl sub_02010E80
	cmp r4, #0xa
	blt _0219FD8A
	ldr r0, [sp, #0x18]
	mov r1, #0xdd
	bl sub_0200F98C
	cmp r4, #0x1e
	blt _0219FD8A
	ldr r0, [sp, #0x18]
	mov r1, #0xde
	bl sub_0200F98C
_0219FD8A:
	cmp r4, #1
	ble _0219FD9E
	ldr r0, [sp]
	bl sub_02014A54
	cmp r0, #0
	beq _0219FD9E
	ldr r0, [sp, #0x1c]
	bl sub_02010E9C
_0219FD9E:
	ldr r0, [sp]
	ldr r0, [r0, #0x44]
	strh r0, [r6, #8]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0219FDAC
	b _021A00BA
_0219FDAC:
	ldr r0, [sp, #0x1c]
	bl sub_02010E58
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r2, [r0]
	lsl r0, r2, #1
	lsr r0, r0, #0x1f
	bne _0219FDE2
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	lsl r2, r2, #0x16
	lsl r1, r1, #0x18
	lsr r2, r2, #0x1d
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x18
	add r2, r2, #1
	bl sub_02010F80
	ldr r0, [sp]
	ldr r0, [r0, #0x54]
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0219FDE2
	add r0, r5, #0
	bl sub_020191D8
_0219FDE2:
	ldr r0, [sp]
	mov r5, #0
	ldrh r4, [r0, #0x3c]
	bl sub_0201494C
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x16
	strh r0, [r6, #0xa]
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #4]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x19
	strh r0, [r6, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	str r0, [sp, #4]
	ldr r0, [r0, #8]
	lsr r0, r0, #0x1e
	cmp r0, #1
	beq _0219FE18
	cmp r0, #2
	beq _0219FEAE
	b _0219FFC8
_0219FE18:
	ldrh r0, [r6, #8]
	cmp r0, #0
	beq _0219FE30
	lsl r0, r0, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219FE3E
_0219FE30:
	lsl r0, r0, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219FE3E:
	blx sub_0208DA4C
	mov r1, #0xf
	lsl r1, r1, #0xc
	bl FX_Div
	add r7, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1d
	add r0, r0, #1
	beq _0219FE6C
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219FE7A
_0219FE6C:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219FE7A:
	blx sub_0208DA4C
	add r2, r0, #0
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #3
	lsl r1, r1, #0xc
	bl FX_Div
	asr r0, r0, #0xc
	strh r0, [r6, #0xe]
	ldrh r0, [r6, #0xe]
	add r0, r0, r4
	strh r0, [r6, #0xe]
	b _0219FFC8
_0219FEAE:
	cmp r4, #0
	beq _0219FEC4
	lsl r0, r4, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219FED2
_0219FEC4:
	lsl r0, r4, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219FED2:
	blx sub_0208DA4C
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	mov r7, #0
	sub r4, r0, r4
_0219FEDE:
	ldr r1, _0219FF68 ; =0x021A06A4
	lsl r2, r7, #3
	ldr r0, _0219FF68 ; =0x021A06A4
	ldr r1, [r1, r2]
	add r0, r0, r2
	cmp r4, r1
	ble _0219FF3C
	ldr r0, [r0, #4]
	sub r5, r4, r1
	str r0, [sp, #8]
	cmp r5, #0
	ble _0219FF08
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219FF16
_0219FF08:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219FF16:
	blx sub_0208DA4C
	ldr r2, [sp, #8]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0219FF6C ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	ldr r0, [sp, #0x14]
	orr r2, r1
	add r0, r0, r2
	str r0, [sp, #0x14]
	sub r4, r4, r5
_0219FF3C:
	add r7, r7, #1
	cmp r7, #5
	blo _0219FEDE
	ldr r0, [sp, #4]
	ldr r0, [r0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1d
	add r0, r0, #1
	beq _0219FF70
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _0219FF7E
	.align 2, 0
_0219FF60: .word 0x00000986
_0219FF64: .word 0x0000404D
_0219FF68: .word 0x021A06A4
_0219FF6C: .word 0x00000000
_0219FF70:
	lsl r0, r0, #0xc
	blx sub_0208D3BC
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_0219FF7E:
	blx sub_0208DA4C
	add r2, r0, #0
	ldr r0, [sp, #0x14]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx sub_0208D60C
	mov r2, #2
	mov r5, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #3
	lsl r1, r1, #0xc
	bl FX_Div
	asr r0, r0, #0xc
	strh r0, [r6, #0xe]
	ldr r0, [sp]
	ldr r2, [r0, #0x50]
	ldr r0, [r2]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1d
	cmp r0, #2
	blo _0219FFC8
	ldr r0, [r2, #4]
	ldr r1, [r6, #4]
	lsl r0, r0, #1
	lsr r0, r0, #0x12
	lsl r0, r0, #1
	cmp r1, r0
	blo _0219FFC8
	mov r5, #1
_0219FFC8:
	ldrh r0, [r6, #0xe]
	cmp r0, #0x63
	bls _0219FFD2
	mov r0, #0x63
	strh r0, [r6, #0xe]
_0219FFD2:
	ldr r0, [sp]
	ldr r2, [r0, #0x50]
	ldr r0, [r2, #0xc]
	lsr r1, r0, #0x16
	beq _0219FFF6
	ldrh r0, [r2, #0x10]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	beq _0219FFF6
	cmp r5, #0
	beq _0219FFF6
	ldr r0, [sp]
	strh r1, [r6, #0x10]
	ldr r0, [r0, #0x50]
	ldrh r0, [r0, #0x10]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	strh r0, [r6, #0x12]
_0219FFF6:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl sub_02017208
	ldr r1, [sp]
	str r0, [sp, #0xc]
	ldr r1, [r1, #0x50]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1]
	lsr r1, r1, #0x1f
	bl sub_02010FD4
	ldr r1, [r6, #4]
	add r5, r0, r1
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r5, r0
	bls _021A001C
	add r5, r0, #0
_021A001C:
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsr r0, r0, #0x1f
	bne _021A002E
	ldr r0, [sp, #0xc]
	bl sub_0200C5DC
	b _021A0034
_021A002E:
	ldr r0, [sp, #0xc]
	bl sub_0200C5E0
_021A0034:
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
_021A003A:
	add r1, r7, #1
	lsl r0, r1, #2
	add r4, r1, r0
	cmp r4, #0x32
	ble _021A0046
	mov r4, #0x32
_021A0046:
	add r0, r5, #0
	add r1, r4, #0
	blx sub_0208D868
	cmp r0, #0
	ble _021A0064
	ldr r1, [sp, #0x10]
	sub r5, r5, r4
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x10]
	add r1, r7, #1
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
_021A0064:
	cmp r0, #0
	bne _021A003A
	ldr r0, [sp, #0x10]
	cmp r0, #0xa
	blo _021A0074
	mov r0, #0xa
	str r0, [sp, #0x10]
	mov r5, #0
_021A0074:
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsr r0, r0, #0x1f
	strb r0, [r6, #1]
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	ldr r0, [r0]
	lsr r0, r0, #0x1f
	bne _021A0092
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_0200C5E4
	b _021A009A
_021A0092:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_0200C608
_021A009A:
	ldr r1, [sp]
	strb r0, [r6, #2]
	ldr r1, [r1, #0x50]
	lsl r2, r5, #0x10
	ldr r1, [r1]
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x1f
	lsr r2, r2, #0x10
	bl sub_02010FE4
	ldr r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r1, r6, #0
	bl ovy309_21a00c0
_021A00BA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_219fc8c

	thumb_func_start ovy309_21a00c0
ovy309_21a00c0: ; 0x021A00C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r3, #0
	str r2, [sp]
	cmp r0, #0x64
	blo _021A00EA
	add r0, r2, #0
	mov r1, #0xdf
	bl sub_0200F98C
	mov r0, #0xfa
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	cmp r1, r0
	blo _021A00EA
	ldr r0, [sp]
	mov r1, #0xe0
	bl sub_0200F98C
_021A00EA:
	ldrb r0, [r4]
	cmp r0, #0
	beq _021A0148
	add r0, r6, #0
	bl sub_02010E50
	add r4, r0, #0
	cmp r4, #0x1e
	blo _021A0110
	ldr r0, [sp]
	mov r1, #0xe5
	bl sub_0200F98C
	cmp r4, #0x64
	blo _021A0110
	ldr r0, [sp]
	mov r1, #0xe6
	bl sub_0200F98C
_021A0110:
	mov r7, #1
	mov r4, #1
_021A0114:
	ldr r1, [r5, #0x20]
	lsl r0, r4, #2
	add r0, r1, r0
	ldrb r0, [r0, #1]
	cmp r0, #3
	bhs _021A0136
	cmp r7, r0
	beq _021A0136
	cmp r4, #0x2c
	beq _021A0136
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02010F6C
	cmp r0, #0
	beq _021A013C
_021A0136:
	add r4, r4, #1
	cmp r4, #0x37
	blt _021A0114
_021A013C:
	cmp r4, #0x37
	bne _021A0148
	ldr r0, [sp]
	mov r1, #0xe7
	bl sub_0200F98C
_021A0148:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy309_21a00c0
_021A014C:
	.byte 0x56, 0x00, 0x5F, 0x00
	.byte 0x16, 0x05, 0x2C, 0x05, 0x2D, 0x05, 0x00, 0x00, 0x3C, 0x00, 0x78, 0x00, 0xB4, 0x00, 0xF0, 0x00
	.byte 0xF1, 0x00, 0xFF, 0xFF, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0D, 0x00, 0x0E, 0x00
	.byte 0x0F, 0x00, 0xFF, 0xFF, 0x46, 0x00, 0x01, 0x00, 0x47, 0x00, 0x02, 0x00, 0x70, 0x00, 0x03, 0x00
	.byte 0x49, 0x00, 0x04, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x46, 0x00, 0x47, 0x00, 0x70, 0x00, 0x49, 0x00
	.byte 0x4A, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x4F, 0x00, 0x50, 0x00, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00
	.byte 0x4B, 0x00, 0x57, 0x00, 0x56, 0x00, 0x52, 0x00, 0x5E, 0x00, 0x5A, 0x00, 0x66, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x4B, 0x00, 0x63, 0x00, 0x00, 0x00, 0x48, 0x00, 0x51, 0x00, 0x62, 0x00, 0x00, 0x00
	.byte 0x5C, 0x00, 0x58, 0x00, 0x64, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x59, 0x00, 0x65, 0x00, 0x00, 0x00
	.byte 0x81, 0xCE, 0x19, 0x02, 0xF1, 0xD0, 0x19, 0x02, 0x29, 0xD0, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x9A, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00, 0x33, 0x6B, 0x00, 0x00
	.byte 0xCD, 0x14, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xE8, 0xFF
	.byte 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x14, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x14, 0x00, 0x01, 0x00
	.byte 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x01, 0x00, 0x02, 0x00, 0x04, 0x04, 0x00, 0x02, 0x00, 0x06
	.byte 0x00, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x04, 0x04, 0x02, 0x02, 0x00, 0x06, 0x02, 0x02, 0xFF, 0x00
	.byte 0x00, 0x00, 0x08, 0x40, 0x01, 0x00, 0x00, 0x01, 0x0C, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x30, 0x01, 0x01, 0x00, 0x01, 0x0B, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x67, 0x00, 0x68, 0x00, 0x69, 0x00, 0x6A, 0x00, 0x6B, 0x00, 0x6C, 0x00, 0x6D, 0x00
	.byte 0x6E, 0x00, 0x6F, 0x00, 0x07, 0x05, 0x00, 0x00, 0x06, 0x05, 0x00, 0x00, 0x03, 0x07, 0x00, 0x00
	.byte 0x02, 0x07, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x40, 0x00, 0x03, 0x00
	.byte 0x01, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x07, 0x0A, 0x00, 0x00, 0x06, 0x08, 0x00, 0x00
	.byte 0x03, 0x0D, 0x00, 0x00, 0x02, 0x0B, 0x00, 0x00, 0x07, 0x0A, 0x00, 0x01, 0x06, 0x09, 0x00, 0x01
	.byte 0x03, 0x0D, 0x00, 0x01, 0x02, 0x0C, 0x00, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x06, 0x40, 0x01, 0x01
	.byte 0x00, 0x01, 0x00, 0x00, 0x07, 0x40, 0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x05, 0x40, 0x01, 0x01
	.byte 0x00, 0x01, 0x02, 0x00, 0x00, 0x40, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x03, 0x00, 0x01, 0x40, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0x01, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x04, 0x00, 0x00, 0x40, 0x01, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x40, 0x01, 0x01
	.byte 0x00, 0x00, 0x04, 0x00, 0x00, 0x40, 0x01, 0x01, 0x00, 0x00, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x40, 0x01, 0x00, 0x00, 0x01, 0x05, 0x00, 0x05, 0x40, 0x01, 0x00
	.byte 0x00, 0x01, 0x06, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x40, 0x01, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x01, 0x40, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x40, 0x01, 0x00
	.byte 0x00, 0x00, 0x08, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x40, 0x01, 0x00
	.byte 0x00, 0x00, 0x07, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x40, 0x01, 0x00
	.byte 0x00, 0x00, 0x07, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x08, 0x40, 0x01, 0x00
	.byte 0x00, 0x01, 0x09, 0x00, 0x08, 0x40, 0x01, 0x00, 0x00, 0x01, 0x0A, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00, 0x18, 0x03, 0x08, 0x04, 0x05, 0x07, 0x0C, 0x02, 0x08
	.byte 0x04, 0x05, 0x0A, 0x0C, 0x02, 0x08, 0x04, 0x03, 0x0D, 0x14, 0x02, 0x08, 0x04, 0x03, 0x10, 0x0C
	.byte 0x02, 0x08, 0x04, 0x17, 0x0A, 0x06, 0x02, 0x08, 0x04, 0x17, 0x0D, 0x06, 0x02, 0x08, 0x04, 0x17
	.byte 0x10, 0x06, 0x02, 0x08, 0x00, 0x03, 0x01, 0x08, 0x02, 0x08, 0x00, 0x03, 0x04, 0x07, 0x02, 0x08
	.byte 0x00, 0x03, 0x07, 0x0A, 0x02, 0x08, 0x00, 0x0D, 0x07, 0x08, 0x02, 0x08, 0x00, 0x03, 0x0D, 0x1C
	.byte 0x08, 0x08, 0x00, 0x15, 0x01, 0x08, 0x02, 0x08, 0x00, 0x0A, 0x04, 0x13, 0x02, 0x08, 0x00, 0x15
	.byte 0x07, 0x08, 0x02, 0x08, 0x05, 0x02, 0x15, 0x1C, 0x02, 0x08, 0x05, 0x22, 0x15, 0x1C, 0x02, 0x08
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x01, 0x00, 0x18, 0x03, 0x08, 0x04, 0x05
	.byte 0x05, 0x0C, 0x02, 0x08, 0x04, 0x03, 0x08, 0x14, 0x02, 0x08, 0x04, 0x03, 0x0B, 0x0C, 0x02, 0x08
	.byte 0x04, 0x03, 0x0E, 0x0C, 0x02, 0x08, 0x04, 0x17, 0x05, 0x06, 0x02, 0x08, 0x04, 0x17, 0x08, 0x06
	.byte 0x02, 0x08, 0x04, 0x17, 0x0B, 0x06, 0x02, 0x08, 0x00, 0x03, 0x01, 0x08, 0x02, 0x08, 0x00, 0x03
	.byte 0x04, 0x07, 0x02, 0x08, 0x00, 0x03, 0x07, 0x0A, 0x02, 0x08, 0x00, 0x0D, 0x07, 0x08, 0x02, 0x08
	.byte 0x00, 0x03, 0x0C, 0x08, 0x02, 0x08, 0x00, 0x03, 0x0F, 0x0C, 0x02, 0x08, 0x00, 0x03, 0x12, 0x0A
	.byte 0x02, 0x08, 0x00, 0x15, 0x01, 0x08, 0x02, 0x08, 0x00, 0x0A, 0x04, 0x13, 0x02, 0x08, 0x00, 0x15
	.byte 0x07, 0x08, 0x02, 0x08, 0x00, 0x0D, 0x0C, 0x10, 0x02, 0x08, 0x00, 0x17, 0x0F, 0x06, 0x02, 0x08
	.byte 0x00, 0x0D, 0x12, 0x10, 0x02, 0x08, 0x05, 0x01, 0x13, 0x1E, 0x04, 0x08, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0xCD, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x9A, 0x01, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x33, 0x03, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB5, 0xD3, 0x19, 0x02, 0x21, 0xD8, 0x19, 0x02, 0xD1, 0xD3, 0x19, 0x02, 0x7D, 0xD9, 0x19, 0x02
	.byte 0x66, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x5F, 0x61, 0x70, 0x70, 0x5F, 0x67, 0x72, 0x61
	.byte 0x2E, 0x63, 0x00, 0x00, 0x0A, 0x04, 0x1A, 0x02, 0x16, 0x04, 0x1A, 0x02, 0xA4, 0x05, 0x1A, 0x02
	.byte 0x18, 0x06, 0x1A, 0x02, 0xCC, 0x04, 0x1A, 0x02, 0x34, 0x05, 0x1A, 0x02, 0x22, 0x04, 0x1A, 0x02
	.byte 0x66, 0x6D, 0x69, 0x73, 0x73, 0x69, 0x6F, 0x6E, 0x5F, 0x6C, 0x6F, 0x67, 0x5F, 0x61, 0x63, 0x63
	.byte 0x65, 0x73, 0x73, 0x6F, 0x72, 0x5F, 0x66, 0x61, 0x70, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	; 0x021A014C
