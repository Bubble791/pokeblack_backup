    .include "macros/function.inc"
	.include "overlay322.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy322_219ce80
ovy322_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0219CF58 ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	mov r2, #0xe
	mov r0, #1
	mov r1, #0x9f
	lsl r2, r2, #0xe
	mov r7, #1
	mov r6, #0x9f
	bl GFL_HeapCreateChild
	ldr r1, _0219CF5C ; =0x0000054C
	add r0, r4, #0
	mov r2, #0x9f
	bl GFL_ProcInitSubsystem
	ldr r2, _0219CF5C ; =0x0000054C
	add r4, r0, #0
	mov r1, #0
	blx MI_CpuFill8
	add r0, r4, #0
	strh r6, [r4]
	add r0, #0xe4
	str r5, [r0]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy322_21a02a8
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	ldrh r0, [r4]
	mov r1, #3
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0xec
	str r0, [r1]
	ldrh r0, [r4]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1]
	ldrh r2, [r4]
	mov r0, #8
	mov r1, #0x40
	bl sub_020241E4
	mov r5, #0x81
	lsl r5, r5, #2
	add r1, r5, #0
	str r0, [r4, r5]
	add r2, r4, #0
	add r3, r4, #0
	add r1, #0x24
	mov r0, #0
	str r0, [r4, r1]
	ldrh r0, [r4]
	add r2, #0xe8
	add r3, #0xf0
	str r0, [sp]
	ldr r2, [r2]
	ldr r3, [r3]
	mov r0, #4
	mov r1, #0xb
	bl sub_0202E168
	add r5, #0x4c
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy322_219d094
	mov r0, #6
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r4]
	add r1, r7, #0
	add r2, r7, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219CF58: .word 0x0000008B
_0219CF5C: .word 0x0000054C
	thumb_func_end ovy322_219ce80

	thumb_func_start ovy322_219cf60
ovy322_219cf60: ; 0x0219CF60
	push {r4, r5, r6, lr}
	add r5, r3, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219CF78
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219CF78:
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0219CF8C
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	strh r0, [r1]
_0219CF8C:
	add r0, r5, #0
	bl ovy322_219d31c
	mov r4, #0x25
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0202E1DC
	sub r4, #0x4c
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl ovy322_21a0350
	ldrh r4, [r5]
	add r0, r6, #0
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219CFE4 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219CFE4: .word 0x0000008B
	thumb_func_end ovy322_219cf60

	thumb_func_start ovy322_219cfe8
ovy322_219cfe8: ; 0x0219CFE8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #3
	bhi _0219D062
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219D002: ; jump table
	.short _0219D00A - _0219D002 - 2 ; case 0
	.short _0219D026 - _0219D002 - 2 ; case 1
	.short _0219D038 - _0219D002 - 2 ; case 2
	.short _0219D054 - _0219D002 - 2 ; case 3
_0219D00A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D062
	ldr r0, [r5]
	mov r1, #0x9a
	add r0, r0, #1
	str r0, [r5]
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	b _0219D062
_0219D026:
	mov r1, #0x95
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, _0219D090 ; =0x00002710
	cmp r2, r1
	bne _0219D062
_0219D032:
	add r0, r0, #1
	str r0, [r5]
	b _0219D062
_0219D038:
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
	bl GFL_FadeScreenSet
	ldr r0, [r5]
	b _0219D032
_0219D054:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D062
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219D062:
	add r0, r4, #0
	bl ovy322_219d30c
	add r0, r4, #0
	bl ovy322_219e164
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl ovy322_21a03a8
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_021A03BC
	add r4, #0xe0
	ldr r0, [r4]
	bl sub_021A03C0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D090: .word 0x00002710
	thumb_func_end ovy322_219cfe8

	thumb_func_start ovy322_219d094
ovy322_219d094: ; 0x0219D094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	mov r2, #0
	str r2, [r5, r0]
	add r1, r0, #4
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #8
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0xc
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x10
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x14
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x18
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x1c
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x20
	add r3, r0, #0
	str r2, [r5, r1]
	mov r1, #0x14
	add r3, #0x24
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x28
	str r2, [r5, r3]
	lsl r3, r1, #5
	str r2, [r5, r3]
	add r3, r0, #0
	add r3, #0x30
	str r2, [r5, r3]
	add r3, r0, #0
	sub r1, #0x15
	add r3, #0x34
	str r1, [r5, r3]
	add r3, r0, #0
	add r3, #0x38
	str r2, [r5, r3]
	add r3, r0, #0
	add r3, #0x3c
	str r2, [r5, r3]
	add r3, r0, #0
	add r3, #0x40
	str r1, [r5, r3]
	add r1, r0, #0
	mov r3, #1
	add r1, #0x48
	str r3, [r5, r1]
	add r1, r0, #0
	add r1, #0x4c
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x50
	str r2, [r5, r1]
	sub r0, #0x30
	str r2, [r5, r0]
	ldr r0, _0219D2F0 ; =0x00000548
	ldr r7, _0219D2F4 ; =0xFFFF7FFF
	str r2, [r5, r0]
	mov r0, #0x41
	lsl r0, r0, #4
	add r1, r5, r0
	mov r4, #0xff
_0219D128:
	lsl r0, r2, #1
	ldrh r6, [r1, r0]
	mov r3, #0xff
	add r2, r2, #1
	bic r6, r4
	orr r3, r6
	strh r3, [r1, r0]
	ldrh r6, [r1, r0]
	ldr r3, _0219D2F8 ; =0xFFFF80FF
	and r3, r6
	strh r3, [r1, r0]
	ldrh r3, [r1, r0]
	and r3, r7
	strh r3, [r1, r0]
	cmp r2, #0x28
	blt _0219D128
	mov r4, #0
	mov r2, #0x5d
	add r0, r4, #0
	lsl r2, r2, #2
_0219D150:
	lsl r1, r4, #3
	add r3, r5, r1
	add r1, r3, #0
	add r1, #0xf4
	str r0, [r1]
	add r4, r4, #1
	str r0, [r3, r2]
	cmp r4, #0x10
	blt _0219D150
	mov r1, #5
	lsl r1, r1, #8
	add r2, r1, #0
	mov r6, #0
	add r2, #0x20
_0219D16C:
	lsl r3, r0, #2
	add r3, r5, r3
	str r6, [r3, r1]
	add r0, r0, #1
	str r6, [r3, r2]
	cmp r0, #4
	blt _0219D16C
	ldrh r2, [r5]
	mov r0, #0x64
	mov r1, #0x2a
	bl sub_0204A934
	mov r4, #0xa6
	lsl r4, r4, #2
	str r0, [r5, r4]
	mov r2, #0x64
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #2
	add r2, #0xfe
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	sub r1, #0xa4
	str r0, [r5, r1]
	sub r4, #0xa0
	str r6, [r5, r4]
	ldr r4, _0219D2FC ; =0x0000017F
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0x7d
	str r0, [r5, r1]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #2
	mov r2, #0xb4
	mov r7, #0xb4
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0x81
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy322_21a0210
	add r0, r5, #0
	bl sub_021A02A4
	add r0, r5, #0
	bl ovy322_219f7c8
	add r1, r4, #0
	add r1, #0xf5
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F854
	add r1, r0, #0
	add r0, r5, #0
	bl ovy322_219f608
	add r0, r5, #0
	bl ovy322_219d3f4
	add r0, r5, #0
	mov r1, #5
	mov r2, #8
	bl ovy322_219d4dc
	ldrh r1, [r5]
	mov r0, #0x17
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r5]
	mov r3, #5
	str r0, [sp, #8]
	str r1, [sp, #4]
	mov r1, #6
	mov r2, #4
	lsl r3, r3, #6
	bl sub_0204B0D4
	ldr r0, [sp, #8]
	bl sub_0204AB0C
	ldrh r1, [r5]
	mov r0, #0x64
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r5]
	add r7, #0xec
	str r0, [sp, #0xc]
	str r1, [sp, #4]
	mov r1, #0xf
	mov r2, #4
	add r3, r7, #0
	bl sub_0204B0D4
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl ovy322_219e058
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ovy322_219e058
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	bl ovy322_219e440
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219ea50
	add r0, r5, #0
	bl ovy322_219db48
	add r0, r5, #0
	bl ovy322_219f8a4
	add r1, r4, #0
	add r1, #0xf5
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r1, r1, #1
	add r2, r5, r1
	mov r1, #0x41
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x19
	bl ovy322_219f874
	add r0, r5, #0
	bl ovy322_219f9a4
	add r2, r4, #0
	add r2, #0xf9
	ldr r2, [r5, r2]
	add r4, #0xf5
	ldr r3, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r2, #1
	bl ovy322_219ead0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219e418
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219f96c
	mov r4, #3
	ldr r0, _0219D300 ; =0x04001050
	add r1, r6, #0
	mov r2, #0x3f
	mov r3, #8
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0x2a
	lsl r0, r0, #5
	str r4, [r5, r0]
	ldr r3, _0219D304 ; =0x00000544
	mov r0, #0xf
	str r0, [r5, r3]
	str r0, [sp]
	sub r3, r3, #4
	ldr r0, _0219D308 ; =0x04000050
	ldr r3, [r5, r3]
	mov r1, #4
	mov r2, #0x3a
	bl G2x_SetBlendAlpha_
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D2F0: .word 0x00000548
_0219D2F4: .word 0xFFFF7FFF
_0219D2F8: .word 0xFFFF80FF
_0219D2FC: .word 0x0000017F
_0219D300: .word 0x04001050
_0219D304: .word 0x00000544
_0219D308: .word 0x04000050
	thumb_func_end ovy322_219d094

	thumb_func_start ovy322_219d30c
ovy322_219d30c: ; 0x0219D30C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219D380
	add r0, r4, #0
	bl sub_021A02A0
	pop {r4, pc}
	thumb_func_end ovy322_219d30c

	thumb_func_start ovy322_219d31c
ovy322_219d31c: ; 0x0219D31C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy322_219f928
	add r0, r5, #0
	bl ovy322_219f63c
	add r0, r5, #0
	bl ovy322_21a0274
	mov r7, #0xa6
	lsl r7, r7, #2
	ldr r0, [r5, r7]
	bl sub_0203A24C
	add r0, r5, #0
	mov r1, #0
	mov r4, #0
	bl ovy322_219e0ec
	add r0, r5, #0
	mov r1, #1
	bl ovy322_219e0ec
	add r0, r7, #0
	str r0, [sp]
	sub r0, #0xa4
	str r0, [sp]
	sub r7, #0xa4
_0219D356:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _0219D36A
	bl GFL_MsgDataFree
	ldr r0, [sp]
	mov r1, #0
	str r1, [r6, r0]
_0219D36A:
	add r4, r4, #1
	cmp r4, #4
	blt _0219D356
	add r0, r5, #0
	bl ovy322_219fc78
	add r0, r5, #0
	bl ovy322_219dc20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219d31c

	thumb_func_start sub_0219D380
sub_0219D380: ; 0x0219D380
	ldr r3, _0219D384 ; =ovy322_219d388
	bx r3
	.align 2, 0
_0219D384: .word ovy322_219d388
	thumb_func_end sub_0219D380

	thumb_func_start ovy322_219d388
ovy322_219d388: ; 0x0219D388
	push {r3, r4, r5, lr}
	mov r4, #0x95
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0xa
	bgt _0219D39E
	bge _0219D3BA
	cmp r1, #0
	beq _0219D3AC
	pop {r3, r4, r5, pc}
_0219D39E:
	cmp r1, #0x64
	bgt _0219D3A6
	beq _0219D3CC
	pop {r3, r4, r5, pc}
_0219D3A6:
	ldr r0, _0219D3DC ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, pc}
_0219D3AC:
	mov r1, #0xa
	str r1, [r5, r4]
	mov r1, #0
	mov r2, #1
	bl ovy322_219d580
	pop {r3, r4, r5, pc}
_0219D3BA:
	add r0, r4, #0
	add r0, #0x14
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _0219D3D8
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_0219D3CC:
	bl ovy322_219f488
	cmp r0, #0
	bne _0219D3D8
	ldr r0, _0219D3DC ; =0x00002710
	str r0, [r5, r4]
_0219D3D8:
	pop {r3, r4, r5, pc}
	nop
_0219D3DC: .word 0x00002710
	thumb_func_end ovy322_219d388

	thumb_func_start sub_0219D3E0
sub_0219D3E0: ; 0x0219D3E0
	cmp r1, #0x44
	blo _0219D3E8
	mov r0, #0
	bx lr
_0219D3E8:
	mov r2, #0xa6
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219D3E0

	thumb_func_start ovy322_219d3f4
ovy322_219d3f4: ; 0x0219D3F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldrh r1, [r7]
	mov r0, #0x64
	ldr r4, _0219D4D0 ; =0x021A05BC
	ldr r6, _0219D4D4 ; =0x021A0550
	ldr r5, _0219D4D8 ; =0x021A0574
	bl sub_0204AA30
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
_0219D40E:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _0219D436
	ldrb r0, [r4, #3]
	ldrb r3, [r4, #2]
	ldrb r1, [r4, #1]
	lsl r0, r0, #5
	str r0, [sp]
	ldrh r0, [r7]
	lsl r3, r3, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_0204B0D4
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #8
	blt _0219D40E
_0219D436:
	mov r4, #0
_0219D438:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _0219D45A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r6, #1]
	ldrb r3, [r6, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204ADA8
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #8
	blt _0219D438
_0219D45A:
	mov r4, #0
	add r6, r4, #0
_0219D45E:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _0219D47E
	str r6, [sp]
	str r6, [sp, #4]
	ldrh r0, [r7]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_0204AF50
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0219D45E
_0219D47E:
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	mov r0, #7
	bl sub_02045814
	mov ip, r0
	mov r0, #0
	mov r4, #6
	str r0, [sp, #0x10]
	add r7, r0, #0
	lsl r4, r4, #0xc
_0219D496:
	ldr r0, [sp, #0x10]
	mov r3, #0
	lsl r1, r0, #0xb
	mov r0, ip
	add r6, r0, r1
_0219D4A0:
	lsl r0, r3, #6
	add r1, r7, #0
	add r2, r6, r0
_0219D4A6:
	lsl r0, r1, #1
	ldrh r5, [r2, r0]
	add r1, r1, #1
	add r5, r5, r4
	strh r5, [r2, r0]
	cmp r1, #0x20
	blt _0219D4A6
	add r3, r3, #1
	cmp r3, #0x20
	blt _0219D4A0
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _0219D496
	mov r0, #7
	bl sub_02044F90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D4D0: .word 0x021A05BC
_0219D4D4: .word 0x021A0550
_0219D4D8: .word 0x021A0574
	thumb_func_end ovy322_219d3f4

	thumb_func_start ovy322_219d4dc
ovy322_219d4dc: ; 0x0219D4DC
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
	mov r2, #4
	lsl r3, r6, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	bl sub_0204B0D4
	bl sub_0202D824
	mov r4, #0
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
_0219D552:
	lsl r0, r4, #6
	add r2, r7, #0
	add r3, r1, r0
_0219D558:
	lsl r0, r2, #1
	ldrh r6, [r3, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r3, r0]
	cmp r2, #0x20
	blt _0219D558
	add r4, r4, #1
	cmp r4, #0x18
	blt _0219D552
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r0, [sp, #0x10]
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219d4dc

	thumb_func_start ovy322_219d580
ovy322_219d580: ; 0x0219D580
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, r1, #0
	ldr r7, _0219D674 ; =0x021A078C
	cmp r2, #1
	bne _0219D610
	ldrh r1, [r4]
	mov r0, #0x64
	bl sub_0204AA30
	ldr r1, _0219D678 ; =0x021A07C4
	lsl r5, r5, #2
	add r2, r1, r5
	ldrh r1, [r4]
	add r3, sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	ldrb r1, [r2, #1]
	mov r2, #0
	bl sub_0204B32C
	ldr r1, [sp, #0x10]
	mov r2, #2
	str r0, [sp, #0xc]
	mov r0, #2
	add r1, #0xc
	lsl r2, r2, #0xa
	bl sub_02045054
	mov r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #2
	bl sub_02045B7C
	add r1, r7, r5
	ldrh r0, [r4]
	ldrb r1, [r1, #1]
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	add r3, sp, #0x14
	bl sub_0204B28C
	ldr r2, [sp, #0x14]
	mov r3, #0x20
	add r4, r0, #0
	ldr r2, [r2, #0x14]
	mov r0, #6
	mov r1, #0
	lsl r3, r3, #9
	bl sub_0205FA10
	add r0, r6, #0
	bl sub_0204AB0C
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219D610:
	ldrh r1, [r4]
	mov r0, #0x64
	bl sub_0204AA30
	lsl r5, r5, #2
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r1, [r4]
	add r3, r7, r5
	ldrb r2, [r7, r5]
	str r1, [sp, #8]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #2]
	add r6, r0, #0
	bl sub_0204ADA8
	ldr r0, _0219D678 ; =0x021A07C4
	ldr r2, _0219D678 ; =0x021A07C4
	add r3, r0, r5
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldrb r1, [r3, #1]
	ldrb r2, [r2, r5]
	str r0, [sp, #8]
	ldrb r3, [r3, #2]
	add r0, r6, #0
	bl sub_0204AF50
	add r0, r6, #0
	bl sub_0204AB0C
	mov r0, #0x18
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_0204566C
	mov r0, #2
	bl sub_02044F90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D674: .word 0x021A078C
_0219D678: .word 0x021A07C4
	thumb_func_end ovy322_219d580

	thumb_func_start ovy322_219d67c
ovy322_219d67c: ; 0x0219D67C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	mov r0, #0x17
	bl sub_0204AA30
	ldrh r1, [r5]
	add r6, r0, #0
	add r2, r4, #0
	str r1, [sp]
	mov r1, #6
	lsl r3, r1, #6
	bl sub_0204BC48
	str r0, [r5, #0x6c]
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy322_219d67c

	thumb_func_start ovy322_219d6a8
ovy322_219d6a8: ; 0x0219D6A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_021A03C4
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
	mov r3, #0x80
	bl sub_0204BBB8
	str r0, [r5, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204B81C
	str r0, [r5, #8]
	ldrh r3, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl sub_0204BDE0
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219d6a8

	thumb_func_start ovy322_219d728
ovy322_219d728: ; 0x0219D728
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r2, [r5]
	ldr r1, _0219D7A4 ; =0x00007FFF
	mov r0, #7
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	str r0, [sp]
	add r0, r6, #0
	mov r4, #0
	bl sub_0204BC48
	str r0, [r5, #0x10]
	bl sub_02021154
	add r7, r0, #0
	bl sub_020211C8
	add r2, r0, #0
	ldrh r3, [r5]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #0x30]
	add r7, r4, #0
_0219D774:
	add r0, r7, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02020F94
	add r1, r0, #0
	ldrh r0, [r5]
	add r2, r7, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x14]
	cmp r4, #7
	blo _0219D774
	add r0, r6, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D7A4: .word 0x00007FFF
	thumb_func_end ovy322_219d728

	thumb_func_start ovy322_219d7a8
ovy322_219d7a8: ; 0x0219D7A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #4]
	add r2, r3, #0
	add r0, r6, #0
	mov r1, #0
	mov r3, #0
	bl sub_02021034
	str r0, [sp, #8]
	ldrh r2, [r5]
	ldr r1, _0219D82C ; =0x00007FFF
	mov r0, #7
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r6, #0
	ldr r2, [sp, #4]
	mov r1, #1
	mov r3, #0
	mov r6, #1
	bl sub_02020F94
	add r1, r0, #0
	ldrh r2, [r5]
	ldr r0, _0219D82C ; =0x00007FFF
	add r3, sp, #0xc
	and r2, r0
	lsl r0, r6, #0xf
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	bl sub_0204B2DC
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0xc]
	bl sub_0204BA40
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, r5, r4
	ldr r0, [r0, #0x7c]
	ldr r1, [sp, #8]
	mov r2, #1
	bl sub_0204C378
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D82C: .word 0x00007FFF
	thumb_func_end ovy322_219d7a8

	thumb_func_start ovy322_219d830
ovy322_219d830: ; 0x0219D830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r2, [r5]
	ldr r1, _0219D8A4 ; =0x00007FFF
	mov r0, #0x52
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	mov r4, #0
	mov r3, #1
	str r4, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #1
	add r3, #0xff
	str r1, [sp, #8]
	mov r1, #0x21
	add r6, r0, #0
	bl sub_0204BBB8
	str r0, [r5, #0x34]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #0x3d
	mov r2, #0x40
	bl sub_0204BDE0
	str r0, [r5, #0x50]
	add r7, r4, #0
_0219D876:
	add r0, r7, #0
	bl sub_0202D7F4
	add r1, r0, #0
	ldrh r0, [r5]
	add r2, r7, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204B81C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x38]
	cmp r4, #6
	blo _0219D876
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D8A4: .word 0x00007FFF
	thumb_func_end ovy322_219d830

	thumb_func_start ovy322_219d8a8
ovy322_219d8a8: ; 0x0219D8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	ldrh r1, [r5]
	ldr r7, _0219D924 ; =0x00007FFF
	add r4, r3, #0
	add r2, r1, #0
	and r2, r7
	add r1, r7, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0x52
	lsr r1, r1, #0x10
	bl sub_0204AA30
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7F4
	add r1, r0, #0
	ldrh r0, [r5]
	add r3, sp, #8
	add r2, r0, #0
	and r2, r7
	add r0, r7, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r2, #0
	bl sub_0204B2DC
	lsl r6, r6, #2
	add r7, r0, #0
	add r0, r5, r6
	ldr r0, [r0, #0x38]
	ldr r1, [sp, #8]
	bl sub_0204BA40
	add r0, r7, #0
	bl sub_0203A24C
	ldr r0, [sp, #4]
	bl sub_0204AB0C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r1, r0, #0
	add r0, r5, r6
	add r0, #0x98
	ldr r0, [r0]
	mov r2, #1
	bl sub_0204C378
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D924: .word 0x00007FFF
	thumb_func_end ovy322_219d8a8

	thumb_func_start ovy322_219d928
ovy322_219d928: ; 0x0219D928
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02034060
	ldrh r1, [r5]
	mov r3, #0x16
	add r2, r4, #0
	str r1, [sp]
	add r1, r6, #0
	lsl r3, r3, #4
	add r7, r0, #0
	bl sub_02034074
	str r0, [r5, #0x54]
	ldrh r3, [r5]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020340A4
	str r0, [r5, #0x58]
	ldrh r3, [r5]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_020340C8
	str r0, [r5, #0x5c]
	add r0, r7, #0
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219d928

	thumb_func_start ovy322_219d970
ovy322_219d970: ; 0x0219D970
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	bl sub_02034060
	ldrh r1, [r5]
	add r6, r0, #0
	str r1, [sp]
	ldr r2, [r5, #0x58]
	ldr r3, [r5, #0x54]
	add r1, r4, #0
	bl sub_02034100
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy322_219d970

	thumb_func_start ovy322_219d998
ovy322_219d998: ; 0x0219D998
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	mov r0, #0x64
	add r4, r2, #0
	bl sub_0204AA30
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_021A03C4
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
	mov r2, #0
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
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219d998

	thumb_func_start ovy322_219da18
ovy322_219da18: ; 0x0219DA18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	add r0, #0xe0
	ldr r0, [r0]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_021A03C4
	str r0, [sp, #0x1c]
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r2, #6
	ldrsh r2, [r4, r2]
	mov r0, #0
	mov r1, #4
	str r2, [sp, #0x10]
	mov r2, #8
	ldrsh r2, [r4, r2]
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	cmp r2, #3
	bne _0219DA54
	add r6, r7, #0
	add r6, #0xb0
	b _0219DA7A
_0219DA54:
	cmp r2, #0
	bne _0219DA5E
	add r6, r7, #0
	add r6, #0x70
	b _0219DA7A
_0219DA5E:
	cmp r2, #1
	bne _0219DA68
	add r6, r7, #0
	add r6, #0x7c
	b _0219DA7A
_0219DA68:
	cmp r2, #2
	bne _0219DA72
	add r6, r7, #0
	add r6, #0x98
	b _0219DA7A
_0219DA72:
	cmp r2, #4
	bne _0219DA7A
	add r6, r7, #0
	add r6, #0xb4
_0219DA7A:
	mov r2, #0
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _0219DB44
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	lsl r0, r0, #0x10
	add r1, r7, r1
	lsr r0, r0, #0x10
	str r1, [sp, #0x18]
	str r0, [sp, #0x28]
_0219DA98:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219DB44
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219D3E0
	str r0, [sp, #0x24]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_0219D3E0
	ldr r2, [sp, #0x24]
	add r1, sp, #0x2c
	strh r2, [r1]
	strh r0, [r1, #2]
	ldrb r1, [r5]
	add r0, sp, #0x2c
	ldr r2, [sp, #0x14]
	strh r1, [r0, #4]
	ldrb r1, [r5, #1]
	ldr r3, [sp, #0x18]
	strb r1, [r0, #6]
	ldrb r1, [r5, #2]
	strb r1, [r0, #7]
	ldr r0, [sp, #0x20]
	ldrb r1, [r5, #7]
	lsl r4, r0, #2
	add r0, sp, #0x2c
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldrh r0, [r7]
	add r1, r7, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #4]
	ldr r2, [r2, #4]
	ldr r3, [r3, #4]
	bl sub_0204C040
	str r0, [r6, r4]
	ldrb r0, [r5, #3]
	mov r1, #0
	cmp r0, #1
	bne _0219DAFC
	mov r1, #1
_0219DAFC:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219DB0C
	mov r1, #1
_0219DB0C:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _0219DB24
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219DB24:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _0219DB36
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219DB36:
	ldr r0, [sp, #0x20]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0219DA98
_0219DB44:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219da18

	thumb_func_start ovy322_219db48
ovy322_219db48: ; 0x0219DB48
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl sub_021A03C4
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219d6a8
	add r0, r4, #0
	bl ovy322_219d728
	add r0, r4, #0
	bl ovy322_219d830
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl ovy322_219d928
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219d67c
	ldr r2, _0219DBF0 ; =0x021A06A8
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219d998
	ldr r2, _0219DBF4 ; =0x021A0688
	ldr r3, _0219DBF8 ; =0x021A0546
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219da18
	ldr r2, _0219DBFC ; =0x021A0840
	ldr r3, _0219DC00 ; =0x021A053C
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219da18
	ldr r2, _0219DC04 ; =0x021A07FC
	ldr r3, _0219DC08 ; =0x021A051E
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219da18
	ldr r2, _0219DC0C ; =0x021A05EC
	ldr r3, _0219DC10 ; =0x021A0528
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219da18
	ldr r2, _0219DC14 ; =0x021A0970
	ldr r3, _0219DC18 ; =0x021A0532
	add r0, r4, #0
	mov r1, #1
	bl ovy322_219da18
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	ldrh r0, [r4]
	add r1, r5, #0
	bl sub_0202AE5C
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _0219DC1C ; =0x021A06C8
	add r0, r4, #0
	mov r1, #1
	mov r3, #0x1a
	bl ovy322_219dee0
	add r4, #0xb4
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C318
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DBF0: .word 0x021A06A8
_0219DBF4: .word 0x021A0688
_0219DBF8: .word 0x021A0546
_0219DBFC: .word 0x021A0840
_0219DC00: .word 0x021A053C
_0219DC04: .word 0x021A07FC
_0219DC08: .word 0x021A051E
_0219DC0C: .word 0x021A05EC
_0219DC10: .word 0x021A0528
_0219DC14: .word 0x021A0970
_0219DC18: .word 0x021A0532
_0219DC1C: .word 0x021A06C8
	thumb_func_end ovy322_219db48

	thumb_func_start ovy322_219dc20
ovy322_219dc20: ; 0x0219DC20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_0219DC26:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x70]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #3
	blt _0219DC26
	mov r4, #0
_0219DC38:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x7c]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #7
	blt _0219DC38
	mov r4, #0
_0219DC4A:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #6
	blt _0219DC4A
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0204C108
	mov r4, #0
_0219DC68:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #0xb
	blt _0219DC68
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5, #0x10]
	bl sub_0204BCD0
	mov r4, #0
_0219DC94:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl sub_0204B98C
	add r4, r4, #1
	cmp r4, #7
	blt _0219DC94
	ldr r0, [r5, #0x30]
	bl sub_0204BE64
	ldr r0, [r5, #0x34]
	bl sub_0204BCD0
	mov r4, #0
_0219DCB2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_0204B98C
	add r4, r4, #1
	cmp r4, #6
	blt _0219DCB2
	ldr r0, [r5, #0x50]
	bl sub_0204BE64
	ldr r0, [r5, #0x54]
	bl sub_0204BCD0
	ldr r0, [r5, #0x58]
	bl sub_0204B98C
	ldr r0, [r5, #0x5c]
	bl sub_0204BE64
	ldr r0, [r5, #0x60]
	bl sub_0204BCD0
	ldr r0, [r5, #0x64]
	bl sub_0204B98C
	ldr r0, [r5, #0x68]
	bl sub_0204BE64
	ldr r0, [r5, #0x6c]
	bl sub_0204BCD0
	mov r7, #0x86
	lsl r7, r7, #2
	mov r4, #0
	sub r7, #0xc
_0219DCFA:
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0202B030
	ldr r0, [r6, r7]
	bl sub_02046EDC
	add r4, r4, #1
	cmp r4, #3
	blt _0219DCFA
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202AEAC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219dc20

	thumb_func_start ovy322_219dd20
ovy322_219dd20: ; 0x0219DD20
	push {r3, r4, r5, lr}
	cmp r1, #3
	bne _0219DD44
	cmp r2, #1
	bge _0219DDCA
	add r4, r0, #0
	add r4, #0xb0
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219DD44:
	cmp r1, #0
	bne _0219DD66
	cmp r2, #3
	bge _0219DDCA
	add r4, r0, #0
	add r4, #0x70
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219DD66:
	cmp r1, #1
	bne _0219DD88
	cmp r2, #7
	bge _0219DDCA
	add r4, r0, #0
	add r4, #0x7c
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219DD88:
	cmp r1, #2
	bne _0219DDAA
	cmp r2, #6
	bge _0219DDCA
	add r4, r0, #0
	add r4, #0x98
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219DDAA:
	cmp r1, #4
	bne _0219DDCA
	cmp r2, #0xb
	bge _0219DDCA
	add r4, r0, #0
	add r4, #0xb4
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
_0219DDCA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219dd20

	thumb_func_start ovy322_219ddcc
ovy322_219ddcc: ; 0x0219DDCC
	push {r3, lr}
	cmp r1, #3
	bne _0219DDE6
	cmp r2, #1
	bge _0219DE40
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xb0
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219DDE6:
	cmp r1, #0
	bne _0219DDFC
	cmp r2, #3
	bge _0219DE40
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x70]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219DDFC:
	cmp r1, #1
	bne _0219DE12
	cmp r2, #7
	bge _0219DE40
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x7c]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219DE12:
	cmp r1, #2
	bne _0219DE2A
	cmp r2, #6
	bge _0219DE40
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x98
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219DE2A:
	cmp r1, #4
	bne _0219DE40
	cmp r2, #0xb
	bge _0219DE40
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xb4
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
_0219DE40:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy322_219ddcc

	thumb_func_start ovy322_219de44
ovy322_219de44: ; 0x0219DE44
	push {r4, lr}
	mov r4, #1
	cmp r1, #3
	bne _0219DE66
	cmp r2, #1
	blt _0219DE54
	mov r0, #0
	pop {r4, pc}
_0219DE54:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DEDA
	b _0219DED8
_0219DE66:
	cmp r1, #0
	bne _0219DE82
	cmp r2, #3
	blt _0219DE72
	mov r0, #0
	pop {r4, pc}
_0219DE72:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x70]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DEDA
	b _0219DED8
_0219DE82:
	cmp r1, #1
	bne _0219DE9E
	cmp r2, #7
	blt _0219DE8E
	mov r0, #0
	pop {r4, pc}
_0219DE8E:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x7c]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DEDA
	b _0219DED8
_0219DE9E:
	cmp r1, #2
	bne _0219DEBC
	cmp r2, #6
	blt _0219DEAA
	mov r0, #0
	pop {r4, pc}
_0219DEAA:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x98
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DEDA
	b _0219DED8
_0219DEBC:
	cmp r1, #4
	bne _0219DEDA
	cmp r2, #0xb
	blt _0219DEC8
	mov r0, #0
	pop {r4, pc}
_0219DEC8:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xb4
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DEDA
_0219DED8:
	mov r4, #0
_0219DEDA:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy322_219de44

	thumb_func_start ovy322_219dee0
ovy322_219dee0: ; 0x0219DEE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	lsl r0, r3, #2
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0x86
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0xc
	str r0, [sp, #0x20]
	mov r0, #0x86
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0x86
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0x10
	str r1, [sp]
	add r4, r2, #0
	mov r7, #0
	str r0, [sp, #0x18]
_0219DF18:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0219DFAA
	lsl r1, r7, #2
	add r6, r5, r1
	ldrb r1, [r4, #1]
	ldrh r3, [r5]
	mov r2, #0x20
	bl sub_02046E28
	ldr r1, [sp, #0x20]
	str r0, [r6, r1]
	ldrb r0, [r4, #6]
	lsl r0, r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_0219D3E0
	ldr r1, [sp, #4]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0219D3E0
	str r0, [sp, #0x10]
	add r0, sp, #0x24
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	ldr r0, [r6, r0]
	str r0, [sp, #0x24]
	add r0, sp, #0x24
	strh r1, [r0, #4]
	ldr r1, [sp, #0x10]
	strh r1, [r0, #6]
	ldr r0, [sp, #8]
	ldrb r1, [r4, #2]
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	add r0, sp, #0x24
	strb r1, [r0, #0x10]
	ldrb r1, [r4, #3]
	strb r1, [r0, #0x11]
	ldrb r0, [r4, #5]
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	strh r1, [r0, #0x12]
	ldr r0, [sp]
	add r1, sp, #0x24
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x18]
	ldr r0, [r5, r0]
	bl sub_0202AEC4
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0219DFA4
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0202B098
_0219DFA4:
	add r7, r7, #1
	cmp r7, #3
	blt _0219DF18
_0219DFAA:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219dee0

	thumb_func_start ovy322_219dfb0
ovy322_219dfb0: ; 0x0219DFB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r6, #3
	bge _0219E03C
	mov r7, #0x83
	lsl r7, r7, #2
	add r0, r5, r7
	lsl r4, r6, #2
	str r0, [sp, #0x10]
	ldr r0, [r0, r4]
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	ldr r3, [sp, #8]
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r0, [r0, r4]
	mov r2, #0
	bl sub_02021D28
	add r7, #0xc
	add r7, r5, r7
	ldr r0, [r7, r4]
	bl sub_0202B0F4
	ldr r0, _0219E040 ; =0x021A06C8
	lsl r1, r6, #3
	add r0, r0, r1
	ldrb r0, [r0, #6]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219D3E0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #1
	bl sub_0219D3E0
	ldr r1, [sp, #0xc]
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	ldr r2, [sp, #0x30]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add r0, r0, r2
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r0, [r7, r4]
	asr r1, r1, #0x10
	bl sub_0202B230
	ldr r0, [r7, r4]
	mov r1, #1
	bl sub_0202B098
_0219E03C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E040: .word 0x021A06C8
	thumb_func_end ovy322_219dfb0

	thumb_func_start sub_0219E044
sub_0219E044: ; 0x0219E044
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _0219E054 ; =sub_0202B098
	add r1, r2, #0
	bx r3
	.align 2, 0
_0219E054: .word sub_0202B098
	thumb_func_end sub_0219E044

	thumb_func_start ovy322_219e058
ovy322_219e058: ; 0x0219E058
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	bne _0219E06E
	mov r0, #0x27
	mov r1, #0
	lsl r0, r0, #4
	ldr r5, _0219E0E4 ; =0x021A0762
	str r1, [r6, r0]
	b _0219E082
_0219E06E:
	ldr r1, _0219E0E8 ; =0x021A0C4C
	lsl r2, r2, #2
	ldr r5, [r1, r2]
	mov r1, #0x9b
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r6, r1]
	mov r1, #1
	bl ovy322_219e0ec
_0219E082:
	mov r4, #0
_0219E084:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219E0E0
	cmp r7, #0
	ldrb r1, [r5, #4]
	bne _0219E0B0
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	add r2, r6, r1
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _0219E0CC
_0219E0B0:
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	add r1, r6, r1
	add r1, #0xf4
	str r0, [r1]
_0219E0CC:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0
	bl ovy322_219e3c8
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x10
	blt _0219E084
_0219E0E0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E0E4: .word 0x021A0762
_0219E0E8: .word 0x021A0C4C
	thumb_func_end ovy322_219e058

	thumb_func_start ovy322_219e0ec
ovy322_219e0ec: ; 0x0219E0EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0219E126
	mov r7, #0x5d
	mov r6, #0
	lsl r7, r7, #2
_0219E0FA:
	lsl r0, r6, #3
	add r4, r5, r0
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0219E11E
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, r7]
	bl sub_020484B4
	ldr r0, [r4, r7]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r7]
_0219E11E:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0219E0FA
	pop {r3, r4, r5, r6, r7, pc}
_0219E126:
	mov r6, #0
	add r7, r6, #0
_0219E12A:
	lsl r4, r6, #3
	add r0, r5, r4
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _0219E15A
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	add r0, r5, r4
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_020484B4
	add r0, r5, r4
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_02048210
	add r0, r5, r4
	add r0, #0xf4
	str r7, [r0]
_0219E15A:
	add r6, r6, #1
	cmp r6, #0x10
	blt _0219E12A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219e0ec

	thumb_func_start ovy322_219e164
ovy322_219e164: ; 0x0219E164
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl sub_02021A3C
	mov r0, #0x9b
	lsl r0, r0, #2
	add r7, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x10]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0xf8
	str r0, [sp, #0x20]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0xf4
	str r0, [sp, #0x1c]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0xf4
	str r0, [sp, #0x18]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x24]
	sub r0, #0xf4
	str r0, [sp, #0x24]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x30]
	sub r0, #0xf8
	str r0, [sp, #0x30]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x2c]
	sub r0, #0xf8
	str r0, [sp, #0x2c]
	mov r0, #0x9b
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x28]
	mov r0, #0x9b
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	sub r0, #0xf8
	mov r6, #0
	str r0, [sp, #0x14]
_0219E1CC:
	lsl r0, r6, #3
	add r4, r5, r0
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _0219E25A
	add r1, r5, #0
	add r1, #0xf0
	ldr r1, [r1]
	str r1, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xf8
	ldrb r1, [r1]
	cmp r1, #0
	beq _0219E20E
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E20E
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r4, #0
	add r1, #0xf8
	mov r0, #0
	strb r0, [r1]
_0219E20E:
	add r0, r4, #0
	add r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219E21C
	mov r0, #1
	b _0219E21E
_0219E21C:
	mov r0, #0
_0219E21E:
	cmp r0, #1
	bne _0219E25A
	mov r0, #1
	lsl r0, r6
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	ldr r0, [sp, #4]
	tst r0, r1
	bne _0219E25A
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_0204826C
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [sp, #4]
	orr r1, r0
	mov r0, #0x9b
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219E25A:
	ldr r0, [sp, #0x14]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219E2CE
	add r1, r5, #0
	add r1, #0xf0
	ldr r1, [r1]
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0219E290
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219E290
	ldr r0, [sp, #0x20]
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strb r1, [r4, r0]
_0219E290:
	ldr r0, [sp, #0x24]
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0219E29C
	mov r0, #1
	b _0219E29E
_0219E29C:
	mov r0, #0
_0219E29E:
	cmp r0, #1
	bne _0219E2CE
	mov r0, #1
	lsl r0, r6
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r1, [r5, r0]
	ldr r0, [sp]
	tst r0, r1
	bne _0219E2CE
	ldr r0, [sp, #0x30]
	ldr r0, [r4, r0]
	bl sub_0204826C
	ldr r0, [sp, #0x2c]
	ldr r0, [r4, r0]
	bl sub_020484D4
	bl sub_02044F90
	ldr r1, [r5, r7]
	ldr r0, [sp]
	orr r0, r1
	str r0, [r5, r7]
_0219E2CE:
	add r6, r6, #1
	cmp r6, #0x10
	bge _0219E2D6
	b _0219E1CC
_0219E2D6:
	add r0, r5, #0
	bl ovy322_219e4e8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219e164

	thumb_func_start ovy322_219e2e0
ovy322_219e2e0: ; 0x0219E2E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r3, #0
	ldr r3, [sp, #0x40]
	add r5, r0, #0
	add r4, r2, #0
	str r1, [sp, #0xc]
	cmp r3, #0
	bne _0219E2F8
	mov r3, #0
	bl ovy322_219e3c8
_0219E2F8:
	add r1, r5, #0
	add r1, #0xe8
	ldr r0, [sp, #0x34]
	ldr r1, [r1]
	ldr r2, [sp, #0x38]
	bl ovy322_219e3a0
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0219E35A
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	lsl r4, r4, #3
	str r0, [sp, #0x14]
	mov r0, #0x5d
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	sub r2, r6, r7
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #0x5d
	lsl r0, r0, #2
	mov r2, #1
	add r1, r5, r4
	add r0, r0, #4
	strb r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219E35A:
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	lsl r4, r4, #3
	str r0, [sp, #0x10]
	add r0, r5, r4
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0]
	sub r2, r6, r7
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r5, r4
	mov r1, #1
	add r0, #0xf8
	strb r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219e2e0

	thumb_func_start ovy322_219e3a0
ovy322_219e3a0: ; 0x0219E3A0
	push {r3, lr}
	cmp r2, #1
	bne _0219E3B2
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_0219E3B2:
	cmp r2, #2
	bne _0219E3C2
	mov r2, #0
	bl sub_02022888
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, pc}
_0219E3C2:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy322_219e3a0

	thumb_func_start ovy322_219e3c8
ovy322_219e3c8: ; 0x0219E3C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r3, #0
	cmp r1, #0
	bne _0219E3F6
	lsl r6, r2, #3
	mov r7, #0x5d
	add r0, r5, r6
	lsl r7, r7, #2
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _0219E416
	bl BmpWin_GetBitmap
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	mov r2, #1
	add r1, r5, r6
	add r0, r7, #4
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219E3F6:
	lsl r6, r2, #3
	add r0, r5, r6
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _0219E416
	bl BmpWin_GetBitmap
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	add r0, r5, r6
	mov r1, #1
	add r0, #0xf8
	strb r1, [r0]
_0219E416:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219e3c8

	thumb_func_start ovy322_219e418
ovy322_219e418: ; 0x0219E418
	push {r4, lr}
	ldr r2, _0219E438 ; =0x021A055C
	lsl r4, r1, #2
	ldrsh r2, [r2, r4]
	mov r0, #7
	mov r1, #0
	bl sub_02044CFC
	ldr r2, _0219E43C ; =0x021A055E
	mov r0, #7
	ldrsh r2, [r2, r4]
	mov r1, #3
	bl sub_02044CFC
	pop {r4, pc}
	nop
_0219E438: .word 0x021A055C
_0219E43C: .word 0x021A055E
	thumb_func_end ovy322_219e418

	thumb_func_start ovy322_219e440
ovy322_219e440: ; 0x0219E440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	add r0, r1, r2
	str r1, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, _0219E4DC ; =0x021A0C58
	mov r5, #0
	ldr r0, [r0, r1]
	str r0, [sp, #0x20]
_0219E454:
	ldr r1, [sp, #0x20]
	lsl r2, r5, #3
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, r2]
	add r0, r0, r2
	ldr r2, _0219E4E0 ; =0x0000FFFF
	cmp r1, r2
	beq _0219E4D8
	ldrh r2, [r0, #2]
	mov r3, #0
	mov r4, #0xf1
	str r2, [sp, #0x18]
	ldrh r2, [r0, #6]
	ldrh r0, [r0, #4]
	str r3, [sp, #0x1c]
	mov r6, #0
	lsl r4, r4, #6
	cmp r0, #1
	bne _0219E47E
	mov r4, #0x11
	lsl r4, r4, #6
_0219E47E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0219E492
	mov r4, #0x11
	lsl r4, r4, #6
	cmp r5, #0
	bne _0219E492
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r6, #0x70
_0219E492:
	cmp r1, #6
	bne _0219E498
	mov r6, #1
_0219E498:
	lsl r0, r2, #2
	add r2, r7, r0
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r2, r1, #1
	ldr r1, _0219E4E4 ; =0x021A05AC
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r3, r6, #0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	bl ovy322_219e2e0
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	add r5, r5, #1
	cmp r5, #0x10
	blt _0219E454
_0219E4D8:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E4DC: .word 0x021A0C58
_0219E4E0: .word 0x0000FFFF
_0219E4E4: .word 0x021A05AC
	thumb_func_end ovy322_219e440

	thumb_func_start ovy322_219e4e8
ovy322_219e4e8: ; 0x0219E4E8
	push {r3, r4, r5, lr}
	mov r4, #0x9a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r0, #4
	tst r0, r1
	beq _0219E51A
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219E51A
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy322_219e418
	ldr r1, [r5, r4]
	mov r0, #4
	bic r1, r0
	str r1, [r5, r4]
_0219E51A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219e4e8

	thumb_func_start ovy322_219e51c
ovy322_219e51c: ; 0x0219E51C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x96
	add r5, r0, #0
	lsl r4, r4, #2
	mov r0, #1
	str r0, [r5, r4]
	mov r6, #0
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #2
	tst r0, r1
	beq _0219E5AA
	mov r0, #4
	add r1, r6, #0
	mov r7, #4
	bl sub_02046D84
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ovy322_219e058
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219ea50
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r1, r0, #0
	add r0, r4, #0
	orr r1, r7
	add r0, #0x10
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219f59c
	add r2, r4, #0
	add r2, #0x20
	add r3, r4, #0
	ldr r2, [r5, r2]
	add r3, #0x1c
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r2, #1
	bl ovy322_219ead0
	add r0, r5, #0
	bl ovy322_219fca8
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy322_219e418
	add r0, r4, #0
	add r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #4
	bic r1, r0
	add r4, #0x10
	str r1, [r5, r4]
_0219E5AA:
	add r0, r5, #0
	mov r1, #0
	bl ovy322_219f418
	add r0, r5, #0
	bl ovy322_21a0018
	add r0, r5, #0
	mov r1, #1
	bl ovy322_21a0084
	add r0, r5, #0
	mov r1, #0
	bl ovy322_21a01d4
	add r0, r5, #0
	mov r1, #0
	bl ovy322_219f96c
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #2
	orr r2, r0
	ldr r0, _0219E5E4 ; =0xFFFFDFFF
	and r0, r2
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E5E4: .word 0xFFFFDFFF
	thumb_func_end ovy322_219e51c

	thumb_func_start ovy322_219e5e8
ovy322_219e5e8: ; 0x0219E5E8
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x97
	add r5, r0, #0
	lsl r4, r4, #2
	mov r6, #0x4b
	ldr r1, [r5, r4]
	lsl r6, r6, #2
	cmp r1, r6
	bgt _0219E620
	blt _0219E5FE
	b _0219E706
_0219E5FE:
	cmp r1, #0xc8
	bgt _0219E612
	bge _0219E6AC
	cmp r1, #0
	bgt _0219E60C
	beq _0219E660
	pop {r3, r4, r5, r6, r7, pc}
_0219E60C:
	cmp r1, #0x64
	beq _0219E6A6
	pop {r3, r4, r5, r6, r7, pc}
_0219E612:
	cmp r1, #0xd2
	bgt _0219E61A
	beq _0219E6CE
	pop {r3, r4, r5, r6, r7, pc}
_0219E61A:
	cmp r1, #0xdc
	beq _0219E6EA
	pop {r3, r4, r5, r6, r7, pc}
_0219E620:
	add r2, r6, #0
	add r2, #0x14
	cmp r1, r2
	bgt _0219E646
	add r2, r6, #0
	add r2, #0x14
	cmp r1, r2
	blt _0219E632
	b _0219E814
_0219E632:
	add r2, r6, #5
	cmp r1, r2
	bgt _0219E63C
	beq _0219E730
	pop {r3, r4, r5, r6, r7, pc}
_0219E63C:
	add r6, #0xa
	cmp r1, r6
	bne _0219E644
	b _0219E7CA
_0219E644:
	pop {r3, r4, r5, r6, r7, pc}
_0219E646:
	add r2, r6, #0
	add r2, #0x64
	cmp r1, r2
	bgt _0219E65A
	add r2, r6, #0
	add r2, #0x64
	cmp r1, r2
	bne _0219E658
	b _0219E864
_0219E658:
	pop {r3, r4, r5, r6, r7, pc}
_0219E65A:
	ldr r0, _0219E928 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219E660:
	add r0, r4, #0
	add r0, #0xc
	mov r7, #1
	ldr r0, [r5, r0]
	lsl r7, r7, #0xc
	tst r0, r7
	bne _0219E698
	add r6, #0xf8
	ldr r0, [r5, r6]
	bl sub_0219B294
	cmp r0, #0
	bne _0219E6BA
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r1, r0, #0
	add r0, r4, #0
	orr r1, r7
	add r0, #0xc
	str r1, [r5, r0]
	mov r0, #0x64
	str r0, [r5, r4]
	mov r0, #4
	mov r1, #1
	bl sub_02046D84
	pop {r3, r4, r5, r6, r7, pc}
_0219E698:
	mov r0, #0x64
	str r0, [r5, r4]
	mov r0, #4
	mov r1, #1
	bl sub_02046D84
	pop {r3, r4, r5, r6, r7, pc}
_0219E6A6:
	bl ovy322_219e940
	pop {r3, r4, r5, r6, r7, pc}
_0219E6AC:
	mov r1, #0
	mov r2, #0
	mov r7, #0
	bl ovy322_219de44
	cmp r0, #0
	beq _0219E6BC
_0219E6BA:
	b _0219E924
_0219E6BC:
	lsl r0, r6, #1
	ldr r0, [r5, r0]
	add r4, #8
	add r1, r0, #1
	lsl r0, r6, #1
	str r1, [r5, r0]
	sub r0, r7, #1
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E6CE:
	mov r1, #0
	mov r2, #2
	bl ovy322_219de44
	cmp r0, #0
	bne _0219E7D6
	mov r0, #0x64
	str r0, [r5, r4]
	lsl r0, r6, #1
	ldr r0, [r5, r0]
	add r1, r0, #1
	lsl r0, r6, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219E6EA:
	mov r1, #0
	mov r2, #1
	bl ovy322_219de44
	cmp r0, #0
	bne _0219E7D6
	mov r0, #0x64
	str r0, [r5, r4]
	lsl r0, r6, #1
	ldr r0, [r5, r0]
	add r1, r0, #1
	lsl r0, r6, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219E706:
	bl ovy322_219fae8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219E7D6
	add r0, r5, #0
	bl ovy322_219fcbc
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0x40
	add r2, r0, #0
	add r0, r4, #0
	orr r2, r1
	add r0, #0xc
	str r2, [r5, r0]
	add r1, #0xf1
	str r1, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E730:
	add r1, r4, #0
	add r1, #0xc
	ldr r2, [r5, r1]
	mov r1, #0x10
	tst r1, r2
	beq _0219E774
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy322_219de44
	cmp r0, #0
	bne _0219E7D6
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #0x30
	bic r1, r0
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r2, #0x1c
	ldr r2, [r5, r2]
	add r4, #0x18
	ldr r3, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r2, #1
	bl ovy322_219ead0
	pop {r3, r4, r5, r6, r7, pc}
_0219E774:
	mov r1, #0x20
	tst r1, r2
	beq _0219E7B2
	mov r1, #0
	mov r2, #2
	mov r6, #0
	bl ovy322_219de44
	cmp r0, #0
	bne _0219E7D6
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #0x30
	bic r1, r0
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r2, #0x1c
	ldr r2, [r5, r2]
	add r4, #0x18
	ldr r3, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	sub r2, r2, #1
	bl ovy322_219ead0
	pop {r3, r4, r5, r6, r7, pc}
_0219E7B2:
	mov r1, #0x64
	add r2, r4, #0
	str r1, [r5, r4]
	add r2, #0x1c
	ldr r2, [r5, r2]
	add r4, #0x18
	ldr r3, [r5, r4]
	mov r1, #0
	sub r2, r2, #1
	bl ovy322_219ead0
	pop {r3, r4, r5, r6, r7, pc}
_0219E7CA:
	add r0, #0xf0
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	beq _0219E7D8
_0219E7D6:
	b _0219E924
_0219E7D8:
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x10
	tst r0, r1
	beq _0219E7FC
	add r0, r5, #0
	mov r1, #1
	bl ovy322_219f96c
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	ldr r0, _0219E92C ; =0xFFFEFFFF
	add r4, #0xc
	and r0, r1
	str r0, [r5, r4]
_0219E7FC:
	mov r1, #5
	mov r0, #0x97
	lsl r1, r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0x38
	ldr r0, [r5, r0]
	bl sub_0219CD14
	bl sub_020352C0
	pop {r3, r4, r5, r6, r7, pc}
_0219E814:
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0219CD14
	bl sub_02035198
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0219CD14
	bl sub_020352CC
	cmp r0, #1
	bne _0219E924
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0219CD14
	mov r1, #0
	bl sub_020352B8
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0219CD14
	bl sub_02035198
	add r0, r5, #0
	bl ovy322_219fdd8
	add r0, r5, #0
	bl ovy322_219fecc
	add r6, #0x64
	str r6, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219E864:
	bl ovy322_219ffac
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0219E924
	cmp r0, #0
	bne _0219E896
	lsl r0, r6, #1
	ldr r0, [r5, r0]
	add r2, r0, #1
	lsl r0, r6, #1
	str r2, [r5, r0]
	add r0, r4, #0
	add r0, #8
	str r1, [r5, r0]
	add r1, r4, #0
	add r1, #0x18
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F854
	add r4, #0x2c
	str r0, [r5, r4]
	b _0219E918
_0219E896:
	cmp r0, #1
	bne _0219E8E2
	add r0, r4, #0
	mov r1, #3
	add r0, #8
	str r1, [r5, r0]
	lsl r0, r6, #1
	ldr r0, [r5, r0]
	add r1, r0, #1
	lsl r0, r6, #1
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #8
	orr r1, r0
	add r0, r4, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r1, r4, #0
	add r1, #0x18
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F854
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219f608
	mov r0, #0
	add r4, #0x28
	str r0, [r5, r4]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy322_219ffdc
	b _0219E918
_0219E8E2:
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r7, #0
	bl ovy322_219f96c
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r5, r0]
	bl sub_0219CD14
	bl sub_020352B0
	bl sub_0203D554
	cmp r0, #1
	bne _0219E918
	add r4, #0x20
	ldr r1, [r5, r4]
	add r6, #0xf8
	lsl r1, r1, #0x10
	ldr r0, [r5, r6]
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0219CAD8
_0219E918:
	add r0, r5, #0
	bl sub_0219FEC0
	add r0, r5, #0
	bl ovy322_219ff94
_0219E924:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E928: .word 0x00002710
_0219E92C: .word 0xFFFEFFFF
	thumb_func_end ovy322_219e5e8

	thumb_func_start ovy322_219e930
ovy322_219e930: ; 0x0219E930
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219F4B8
	add r0, r4, #0
	bl ovy322_219fc90
	pop {r4, pc}
	thumb_func_end ovy322_219e930

	thumb_func_start ovy322_219e940
ovy322_219e940: ; 0x0219E940
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r4, #0
	mov r6, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _0219EA48
	add r0, r5, #0
	bl ovy322_219fae8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy322_219fb04
	cmp r0, #1
	bne _0219E96A
	mov r4, #2
	b _0219E970
_0219E96A:
	cmp r0, #2
	bne _0219E970
	mov r4, #1
_0219E970:
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0x40
	tst r0, r2
	beq _0219E984
	mov r0, #0x40
	bic r2, r0
	mov r4, #1
	str r2, [r5, r1]
_0219E984:
	cmp r4, #0
	bne _0219E9D8
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F5F4
	add r7, r0, #0
	bne _0219E99A
	mov r6, #1
_0219E99A:
	cmp r6, #0
	bne _0219E9AA
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219E9AA
	mov r6, #1
_0219E9AA:
	cmp r6, #1
	bne _0219E9D8
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #9
	mov r6, #0
	bl ovy322_219dd20
	mov r0, #0x97
	mov r1, #0xc8
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0219EA4C ; =0x00000551
	bl GFL_SndSEPlay
	cmp r7, #0
	bne _0219E9D2
	mov r0, #1
	b _0219E9D4
_0219E9D2:
	add r0, r6, #0
_0219E9D4:
	bl sub_0203D564
_0219E9D8:
	cmp r4, #1
	bne _0219EA24
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl ovy322_219e440
	add r0, r5, #0
	mov r1, #1
	bl ovy322_219ea50
	mov r6, #0x9d
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r4, #0x41
	lsl r0, r0, #1
	add r0, r5, r0
	lsl r4, r4, #4
	ldrh r0, [r0, r4]
	lsl r0, r0, #0x11
	lsr r1, r0, #0x19
	add r0, r5, #0
	bl ovy322_219f874
	ldr r1, [r5, r6]
	add r0, r5, #0
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021A0294
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ovy322_219d580
_0219EA24:
	mov r4, #0x9a
	lsl r4, r4, #2
	mov r6, #2
	ldr r0, [r5, r4]
	lsl r6, r6, #0xc
	tst r0, r6
	bne _0219EA42
	add r0, r4, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	bl sub_0219CC90
	ldr r0, [r5, r4]
	orr r0, r6
	str r0, [r5, r4]
_0219EA42:
	add r0, r5, #0
	bl ovy322_21a0034
_0219EA48:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EA4C: .word 0x00000551
	thumb_func_end ovy322_219e940

	thumb_func_start ovy322_219ea50
ovy322_219ea50: ; 0x0219EA50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #0x9d
	add r6, r0, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	bl sub_0219F854
	add r7, r0, #0
	cmp r4, #0
	bne _0219EA72
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl ovy322_219e440
_0219EA72:
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #0x14]
	add r0, #0x20
	mov r4, #0
	str r0, [sp, #0x14]
_0219EA7E:
	ldr r1, _0219EACC ; =0x021A0500
	lsl r2, r4, #1
	mov r0, #0x7d
	ldrsh r1, [r1, r2]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r7, r1
	bl sub_0204898C
	add r5, r0, #0
	cmp r4, #0
	bne _0219EA9E
	mov r1, #2
	mov r3, #0x70
	ldr r2, [sp, #0x14]
	b _0219EAA6
_0219EA9E:
	mov r2, #0x11
	mov r1, #0
	mov r3, #0
	lsl r2, r2, #6
_0219EAA6:
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #3
	bl ovy322_219e2e0
	add r0, r5, #0
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #3
	blt _0219EA7E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EACC: .word 0x021A0500
	thumb_func_end ovy322_219ea50

	thumb_func_start ovy322_219ead0
ovy322_219ead0: ; 0x0219EAD0
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r4, r3, #0
	cmp r5, #0
	blt _0219EB10
	cmp r1, r4
	blt _0219EAE8
	mov r1, #0
	mov r2, #1
	mov r3, #0x12
	b _0219EAEE
_0219EAE8:
	mov r1, #0
	mov r2, #1
	mov r3, #4
_0219EAEE:
	bl ovy322_219dd20
	cmp r4, r5
	blt _0219EB04
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x13
	bl ovy322_219dd20
	pop {r4, r5, r6, pc}
_0219EB04:
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	mov r3, #5
	bl ovy322_219dd20
_0219EB10:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy322_219ead0

	thumb_func_start ovy322_219eb14
ovy322_219eb14: ; 0x0219EB14
	push {r4, r5, r6, lr}
	mov r4, #0x96
	lsl r4, r4, #2
	add r5, r0, #0
	mov r6, #4
	str r6, [r5, r4]
	mov r2, #0x64
	add r1, r4, #4
	str r2, [r5, r1]
	add r1, r4, #0
	mov r2, #1
	add r1, #8
	str r2, [r5, r1]
	mov r1, #1
	mov r2, #1
	bl ovy322_219e058
	add r0, r5, #0
	mov r1, #0
	bl ovy322_219ed28
	add r0, r5, #0
	mov r1, #1
	bl ovy322_219f418
	add r0, r5, #0
	mov r1, #0
	bl ovy322_219edd4
	add r0, r5, #0
	mov r1, #1
	bl ovy322_219f59c
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #4
	bl ovy322_219dd20
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #5
	bl ovy322_219dd20
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r4, #0x10
	orr r0, r6
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy322_219eb14

	thumb_func_start ovy322_219eb7c
ovy322_219eb7c: ; 0x0219EB7C
	push {r4, r5, r6, lr}
	mov r4, #0x97
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0xc8
	bgt _0219EB9A
	bge _0219EBB8
	cmp r1, #0
	bgt _0219EB94
	beq _0219EBAC
	pop {r4, r5, r6, pc}
_0219EB94:
	cmp r1, #0x64
	beq _0219EBB0
	pop {r4, r5, r6, pc}
_0219EB9A:
	cmp r1, #0xdc
	bgt _0219EBA6
	bge _0219EC08
	cmp r1, #0xd2
	beq _0219EBE2
	pop {r4, r5, r6, pc}
_0219EBA6:
	ldr r0, _0219EC30 ; =0x00002710
	cmp r1, r0
	pop {r4, r5, r6, pc}
_0219EBAC:
	mov r0, #0x64
	str r0, [r5, r4]
_0219EBB0:
	add r0, r5, #0
	bl ovy322_219ec3c
	pop {r4, r5, r6, pc}
_0219EBB8:
	mov r1, #0
	mov r2, #0
	bl ovy322_219de44
	cmp r0, #0
	bne _0219EC2C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #8
	bic r1, r0
	add r4, #0xc
	str r1, [r5, r4]
	pop {r4, r5, r6, pc}
_0219EBE2:
	mov r1, #0
	mov r2, #2
	mov r6, #0
	bl ovy322_219de44
	cmp r0, #0
	bne _0219EC2C
	mov r0, #0x64
	str r0, [r5, r4]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219F4CC
	pop {r4, r5, r6, pc}
_0219EC08:
	mov r1, #0
	mov r2, #1
	mov r6, #1
	bl ovy322_219de44
	cmp r0, #0
	bne _0219EC2C
	mov r0, #0x64
	str r0, [r5, r4]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219F4CC
_0219EC2C:
	pop {r4, r5, r6, pc}
	nop
_0219EC30: .word 0x00002710
	thumb_func_end ovy322_219eb7c
_0219EC34:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xB9, 0xF4, 0x19, 0x02

	thumb_func_start ovy322_219ec3c
ovy322_219ec3c: ; 0x0219EC3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r4, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _0219ED1E
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F5F4
	add r6, r0, #0
	bne _0219EC62
	mov r4, #1
	b _0219EC70
_0219EC62:
	cmp r6, #1
	bne _0219EC6A
	mov r4, #2
	b _0219EC70
_0219EC6A:
	cmp r6, #2
	bne _0219EC70
	mov r4, #3
_0219EC70:
	cmp r4, #0
	bne _0219EC9C
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _0219EC82
	mov r4, #1
	b _0219EC9C
_0219EC82:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _0219EC90
	mov r4, #2
	b _0219EC9C
_0219EC90:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219EC9C
	mov r4, #3
_0219EC9C:
	cmp r4, #1
	bne _0219ECC2
	mov r4, #0x99
	mov r0, #6
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xc
	bl ovy322_219dd20
	mov r0, #0xdc
	sub r4, #8
	str r0, [r5, r4]
	ldr r0, _0219ED20 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219ECC2:
	cmp r4, #2
	bne _0219ECE8
	mov r4, #0x99
	mov r0, #6
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0xd
	bl ovy322_219dd20
	mov r0, #0xd2
	sub r4, #8
	str r0, [r5, r4]
	ldr r0, _0219ED20 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219ECE8:
	cmp r4, #3
	bne _0219ED1E
	mov r4, #0x99
	mov r7, #0
	lsl r4, r4, #2
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #9
	str r7, [r5, r4]
	bl ovy322_219dd20
	mov r0, #0xc8
	sub r4, #8
	str r0, [r5, r4]
	ldr r0, _0219ED24 ; =0x00000551
	bl GFL_SndSEPlay
	cmp r6, #2
	bne _0219ED18
	mov r0, #1
	bl sub_0203D564
	pop {r3, r4, r5, r6, r7, pc}
_0219ED18:
	add r0, r7, #0
	bl sub_0203D564
_0219ED1E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED20: .word 0x00000548
_0219ED24: .word 0x00000551
	thumb_func_end ovy322_219ec3c

	thumb_func_start ovy322_219ed28
ovy322_219ed28: ; 0x0219ED28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r4, r1, #0
	ldr r0, [r0]
	bl sub_02008BF0
	add r6, r0, #0
	cmp r4, #0
	bne _0219EDD0
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy322_219e440
	mov r1, #0x9d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F854
	add r4, r0, #0
	lsl r1, r4, #2
	mov r0, #0
	add r2, r5, r1
	mov r1, #0x46
	str r0, [sp]
	lsl r1, r1, #4
	ldr r2, [r2, r1]
	sub r1, #0x20
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #1
	mov r7, #2
	bl ovy322_219e2e0
	cmp r6, #0
	bne _0219ED8A
	lsl r0, r7, #8
	ldr r0, [r5, r0]
	add r4, #0x29
	b _0219ED90
_0219ED8A:
	lsl r0, r7, #8
	ldr r0, [r5, r0]
	add r4, #0x7b
_0219ED90:
	add r1, r4, #0
	bl sub_0204898C
	ldrh r1, [r5]
	add r6, r0, #0
	mov r0, #0x10
	bl GFL_StrBufCreate
	add r1, r6, #0
	add r4, r0, #0
	bl sub_02024BE4
	mov r1, #0
	str r1, [sp]
	str r4, [sp, #4]
	mov r0, #0x11
	str r1, [sp, #8]
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #1
	bl ovy322_219e2e0
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
_0219EDD0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219ed28

	thumb_func_start ovy322_219edd4
ovy322_219edd4: ; 0x0219EDD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	add r6, r0, #0
	mov r4, #0
	add r7, r0, #4
	sub r6, #0xc
_0219EDE4:
	ldr r0, [r5, r6]
	cmp r4, r0
	bge _0219EE04
	mov r0, #0x3c
	mul r0, r4
	mov r2, #0xaa
	add r3, r5, r0
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r3, [r3, r7]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy322_219d7a8
	mov r3, #1
	b _0219EE06
_0219EE04:
	mov r3, #0
_0219EE06:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy322_219ddcc
	add r4, r4, #1
	cmp r4, #6
	blt _0219EDE4
	mov r1, #0xa3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy322_219d970
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r3, #1
	bl ovy322_219ddcc
	add r0, r5, #0
	bl ovy322_219f51c
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	mov r3, #1
	bl ovy322_219ddcc
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219edd4

	thumb_func_start ovy322_219ee44
ovy322_219ee44: ; 0x0219EE44
	push {r3, r4, r5, lr}
	mov r4, #0x96
	add r5, r0, #0
	mov r1, #7
	lsl r4, r4, #2
	str r1, [r5, r4]
	mov r2, #0x64
	add r1, r4, #4
	str r2, [r5, r1]
	add r1, r4, #0
	mov r2, #2
	add r1, #8
	str r2, [r5, r1]
	mov r1, #1
	bl ovy322_219e058
	add r0, r5, #0
	mov r1, #0
	bl ovy322_219f058
	add r0, r5, #0
	mov r1, #1
	bl ovy322_219f418
	add r0, r5, #0
	mov r1, #0
	bl ovy322_219f324
	add r0, r4, #0
	add r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #4
	orr r0, r1
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219ee44

	thumb_func_start ovy322_219ee8c
ovy322_219ee8c: ; 0x0219EE8C
	push {r4, r5, r6, lr}
	mov r4, #0x97
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0xc8
	bgt _0219EEAA
	bge _0219EEC8
	cmp r1, #0
	bgt _0219EEA4
	beq _0219EEBC
	pop {r4, r5, r6, pc}
_0219EEA4:
	cmp r1, #0x64
	beq _0219EEC0
	pop {r4, r5, r6, pc}
_0219EEAA:
	cmp r1, #0xdc
	bgt _0219EEB6
	bge _0219EF28
	cmp r1, #0xd2
	beq _0219EEF2
	pop {r4, r5, r6, pc}
_0219EEB6:
	ldr r0, _0219EF60 ; =0x00002710
	cmp r1, r0
	pop {r4, r5, r6, pc}
_0219EEBC:
	mov r0, #0x64
	str r0, [r5, r4]
_0219EEC0:
	add r0, r5, #0
	bl ovy322_219ef6c
	pop {r4, r5, r6, pc}
_0219EEC8:
	mov r1, #0
	mov r2, #0
	bl ovy322_219de44
	cmp r0, #0
	bne _0219EF5C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #8
	bic r1, r0
	add r4, #0xc
	str r1, [r5, r4]
	pop {r4, r5, r6, pc}
_0219EEF2:
	mov r1, #0
	mov r2, #2
	mov r6, #0
	bl ovy322_219de44
	cmp r0, #0
	bne _0219EF5C
	mov r0, #0x64
	str r0, [r5, r4]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219F4CC
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EF5C
	mov r0, #6
	add r4, #8
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219EF28:
	mov r1, #0
	mov r2, #1
	mov r6, #1
	bl ovy322_219de44
	cmp r0, #0
	bne _0219EF5C
	mov r0, #0x64
	str r0, [r5, r4]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219F4CC
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EF5C
	mov r0, #6
	add r4, #8
	str r0, [r5, r4]
_0219EF5C:
	pop {r4, r5, r6, pc}
	nop
_0219EF60: .word 0x00002710
	thumb_func_end ovy322_219ee8c
_0219EF64:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xB9, 0xF4, 0x19, 0x02

	thumb_func_start ovy322_219ef6c
ovy322_219ef6c: ; 0x0219EF6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r4, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	beq _0219F04E
	mov r1, #0x26
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219F5F4
	add r6, r0, #0
	bne _0219EF92
	mov r4, #1
	b _0219EFA0
_0219EF92:
	cmp r6, #1
	bne _0219EF9A
	mov r4, #2
	b _0219EFA0
_0219EF9A:
	cmp r6, #2
	bne _0219EFA0
	mov r4, #3
_0219EFA0:
	cmp r4, #0
	bne _0219EFCC
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _0219EFB2
	mov r4, #1
	b _0219EFCC
_0219EFB2:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _0219EFC0
	mov r4, #2
	b _0219EFCC
_0219EFC0:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219EFCC
	mov r4, #3
_0219EFCC:
	cmp r4, #1
	bne _0219EFF2
	mov r4, #0x99
	mov r0, #3
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xc
	bl ovy322_219dd20
	mov r0, #0xdc
	sub r4, #8
	str r0, [r5, r4]
	ldr r0, _0219F050 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219EFF2:
	cmp r4, #2
	bne _0219F018
	mov r4, #0x99
	mov r0, #3
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0xd
	bl ovy322_219dd20
	mov r0, #0xd2
	sub r4, #8
	str r0, [r5, r4]
	ldr r0, _0219F050 ; =0x00000548
	bl GFL_SndSEPlay
	pop {r3, r4, r5, r6, r7, pc}
_0219F018:
	cmp r4, #3
	bne _0219F04E
	mov r4, #0x99
	mov r7, #0
	lsl r4, r4, #2
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #9
	str r7, [r5, r4]
	bl ovy322_219dd20
	mov r0, #0xc8
	sub r4, #8
	str r0, [r5, r4]
	ldr r0, _0219F054 ; =0x00000551
	bl GFL_SndSEPlay
	cmp r6, #2
	bne _0219F048
	mov r0, #1
	bl sub_0203D564
	pop {r3, r4, r5, r6, r7, pc}
_0219F048:
	add r0, r7, #0
	bl sub_0203D564
_0219F04E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F050: .word 0x00000548
_0219F054: .word 0x00000551
	thumb_func_end ovy322_219ef6c

	thumb_func_start ovy322_219f058
ovy322_219f058: ; 0x0219F058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	cmp r1, #0
	bne _0219F06A
	mov r1, #1
	mov r2, #2
	bl ovy322_219e440
_0219F06A:
	mov r4, #0xa9
	lsl r4, r4, #2
	sub r1, r4, #4
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	bl sub_0201FF08
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	sub r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	add r0, r4, #4
	ldr r7, [r1, r0]
	add r0, r4, #0
	sub r0, #0xb0
	ldr r0, [r5, r0]
	mov r1, #0x84
	bl sub_0204898C
	str r0, [sp, #0x1c]
	add r0, r4, #0
	sub r0, #0xa0
	lsl r2, r7, #0x10
	ldr r0, [r5, r0]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_020243D0
	add r0, r4, #0
	sub r0, #0xa0
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x1c]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, #1
	str r0, [sp, #0x10]
	str r1, [sp, #0x18]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl ovy322_219e2e0
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	sub r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r0, r5, r0
	add r4, #8
	ldr r1, [r0, r4]
	ldr r7, _0219F318 ; =0x000018A0
	cmp r1, #1
	bne _0219F0FE
	mov r0, #2
	ldr r7, _0219F31C ; =0x00001060
	str r0, [sp, #0x18]
_0219F0FE:
	cmp r1, #2
	beq _0219F138
	ldr r1, [sp, #0x18]
	mov r0, #0x7d
	lsl r2, r1, #1
	ldr r1, _0219F320 ; =0x021A05FC
	lsl r0, r0, #2
	ldrsh r1, [r1, r2]
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r1, #1
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x3e
	str r1, [sp, #0x10]
	bl ovy322_219e2e0
	add r0, r4, #0
	bl GFL_StrBufFree
_0219F138:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, #0x10
	ldr r7, [r1, r0]
	mov r0, #0x2a
	lsl r0, r0, #4
	sub r0, #0xac
	ldr r0, [r5, r0]
	mov r1, #0x87
	bl sub_0204898C
	mov r4, #0
	str r0, [sp, #0x20]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #4
	sub r0, #0x9c
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #3
	bl StringSetNumber
	mov r0, #0x2a
	lsl r0, r0, #4
	sub r0, #0x9c
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x20]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0x11
	str r4, [sp, #8]
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	str r4, [sp, #0x10]
	bl ovy322_219e2e0
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x2a
	lsl r0, r0, #4
	add r0, #0x14
	ldr r7, [r1, r0]
	mov r0, #0x2a
	lsl r0, r0, #4
	sub r0, #0xac
	ldr r0, [r5, r0]
	mov r1, #0x88
	bl sub_0204898C
	str r0, [sp, #0x24]
	mov r0, #0x2a
	lsl r0, r0, #4
	sub r0, #0x9c
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	bl LoadItemNameToStrbuf
	mov r0, #0x2a
	lsl r0, r0, #4
	sub r0, #0x9c
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x24]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0x11
	str r4, [sp, #8]
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	str r4, [sp, #0x10]
	bl ovy322_219e2e0
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	mov r0, #0x2a
	lsl r0, r0, #4
	str r0, [sp, #0x38]
	sub r0, #0xac
	str r0, [sp, #0x38]
	mov r0, #0x2a
	lsl r0, r0, #4
	str r0, [sp, #0x34]
	sub r0, #0x9c
	str r0, [sp, #0x34]
	mov r0, #0x2a
	lsl r0, r0, #4
	str r0, [sp, #0x30]
	sub r0, #0x9c
	str r0, [sp, #0x30]
	mov r0, #0x2a
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, #0x24
	str r0, [sp, #0x2c]
_0219F232:
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	lsl r1, r4, #2
	add r0, r5, r0
	add r1, r1, r0
	ldr r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _0219F29E
	ldr r1, _0219F320 ; =0x021A05FC
	lsl r2, r4, #1
	ldr r0, [sp, #0x38]
	add r2, r1, r2
	mov r1, #0xc
	ldrsh r1, [r2, r1]
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020244A4
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #5
	mov r3, #0
	bl ovy322_219e2e0
	add r0, r7, #0
	bl GFL_StrBufFree
	b _0219F2AA
_0219F29E:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #5
	mov r3, #0
	bl ovy322_219e3c8
_0219F2AA:
	add r4, r4, #1
	cmp r4, #4
	blt _0219F232
	mov r4, #0x2a
	lsl r4, r4, #4
	ldr r1, [r5, r4]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x18
	ldr r7, [r1, r0]
	add r0, r4, #0
	sub r0, #0xac
	ldr r0, [r5, r0]
	mov r1, #0x89
	bl sub_0204898C
	str r0, [sp, #0x28]
	add r0, r4, #0
	sub r0, #0x9c
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_02024500
	sub r4, #0x9c
	ldr r0, [r5, r4]
	ldr r2, [sp, #0x28]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0
	bl ovy322_219e2e0
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F318: .word 0x000018A0
_0219F31C: .word 0x00001060
_0219F320: .word 0x021A05FC
	thumb_func_end ovy322_219f058

	thumb_func_start ovy322_219f324
ovy322_219f324: ; 0x0219F324
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0xa9
	lsl r4, r4, #2
	add r5, r0, #0
	sub r1, r4, #4
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	bl sub_0201FF08
	sub r0, r4, #4
	ldr r1, [r5, r0]
	add r6, r4, #0
	add r2, r1, #0
	mov r0, #0x3c
	mul r2, r0
	add r3, r5, r2
	add r2, r4, #4
	add r6, #8
	ldr r2, [r3, r2]
	ldr r3, [r3, r6]
	add r0, r5, #0
	mov r1, #6
	bl ovy322_219d7a8
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	mov r3, #1
	mov r6, #1
	bl ovy322_219ddcc
	sub r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x18
	ldr r7, [r1, r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	add r3, r7, #0
	bl ovy322_219d8a8
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r3, #1
	bl ovy322_219ddcc
	sub r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r0, r5, r0
	add r4, #0x1c
	ldr r3, [r0, r4]
	cmp r7, r3
	beq _0219F3A8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy322_219d8a8
	b _0219F3AA
_0219F3A8:
	mov r6, #0
_0219F3AA:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	add r3, r6, #0
	bl ovy322_219ddcc
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r7, #0xb5
	str r0, [sp]
	sub r0, #0x34
	lsl r7, r7, #2
	mov r4, #0
	str r0, [sp]
	sub r7, #0x10
_0219F3C8:
	ldr r0, [sp]
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	lsl r0, r4, #2
	add r6, r1, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _0219F3F0
	mov r3, #0xb5
	lsl r3, r3, #2
	ldr r3, [r6, r3]
	add r0, r5, #0
	add r1, r4, #2
	mov r2, #1
	bl ovy322_219d8a8
	mov r3, #1
	b _0219F3F2
_0219F3F0:
	mov r3, #0
_0219F3F2:
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #2
	bl ovy322_219ddcc
	add r4, r4, #1
	cmp r4, #4
	blt _0219F3C8
	add r0, r5, #0
	bl ovy322_219f51c
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	mov r3, #1
	bl ovy322_219ddcc
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219f324

	thumb_func_start ovy322_219f418
ovy322_219f418: ; 0x0219F418
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r4, r0, #0
	str r1, [sp]
	mov r7, #1
	add r5, r6, #0
_0219F424:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ovy322_219ddcc
	add r6, r6, #1
	cmp r6, #7
	blt _0219F424
	mov r7, #2
	mov r6, #0
_0219F43A:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ovy322_219ddcc
	add r5, r5, #1
	cmp r5, #6
	blt _0219F43A
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	add r3, r6, #0
	bl ovy322_219ddcc
	mov r7, #4
	mov r5, #0
_0219F45C:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ovy322_219ddcc
	add r6, r6, #1
	cmp r6, #0xb
	blt _0219F45C
	ldr r0, [sp]
	cmp r0, #0
	bne _0219F486
	mov r6, #0
_0219F476:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0219E044
	add r5, r5, #1
	cmp r5, #3
	blt _0219F476
_0219F486:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219f418

	thumb_func_start ovy322_219f488
ovy322_219f488: ; 0x0219F488
	push {r4, r5, r6, lr}
	mov r4, #0x96
	add r6, r0, #0
	lsl r4, r4, #2
	ldr r1, [r6, r4]
	mov r5, #1
	cmp r1, #9
	blo _0219F49C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219F49C:
	lsl r2, r1, #2
	ldr r1, _0219F4B4 ; =0x021A0C68
	ldr r1, [r1, r2]
	blx r1
	add r4, #0xc
	ldr r1, [r6, r4]
	sub r0, r5, #2
	cmp r1, r0
	bne _0219F4B0
	mov r5, #0
_0219F4B0:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219F4B4: .word 0x021A0C68
	thumb_func_end ovy322_219f488

	thumb_func_start sub_0219F4B8
sub_0219F4B8: ; 0x0219F4B8
	mov r1, #0x99
	lsl r1, r1, #2
	mov r2, #0
	ldr r3, [r0, r1]
	mvn r2, r2
	cmp r3, r2
	beq _0219F4CA
	sub r1, #0xc
	str r3, [r0, r1]
_0219F4CA:
	bx lr
	thumb_func_end sub_0219F4B8

	thumb_func_start sub_0219F4CC
sub_0219F4CC: ; 0x0219F4CC
	cmp r1, #0
	bne _0219F4EC
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r3, r2, #1
	add r2, r1, #0
	str r3, [r0, r1]
	add r2, #0x18
	ldr r2, [r0, r2]
	add r2, r2, #1
	cmp r3, r2
	blt _0219F500
	mov r2, #0
	str r2, [r0, r1]
	b _0219F500
_0219F4EC:
	mov r2, #0xa1
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	sub r1, r1, #1
	str r1, [r0, r2]
	bpl _0219F500
	add r1, r2, #0
	add r1, #0x18
	ldr r1, [r0, r1]
	str r1, [r0, r2]
_0219F500:
	mov r1, #0xa1
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	bne _0219F512
	mov r2, #0
	add r1, #0x1c
	str r2, [r0, r1]
	bx lr
_0219F512:
	sub r2, r2, #1
	add r1, #0x1c
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F4CC

	thumb_func_start ovy322_219f51c
ovy322_219f51c: ; 0x0219F51C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	mov r4, #0xa1
	mov r1, #1
	lsl r4, r4, #2
	str r1, [sp]
	ldr r1, [r5, r4]
	add r6, r0, #0
	add r1, r1, #1
	mov r2, #1
	mov r3, #2
	bl sub_02024A14
	mov r7, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	str r7, [sp]
	bl ovy322_219dfb0
	mov r0, #1
	add r1, r4, #0
	str r0, [sp]
	add r1, #0x18
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r1, r1, #1
	mov r2, #1
	mov r3, #2
	bl sub_02024A14
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	mov r3, #0
	str r7, [sp]
	bl ovy322_219dfb0
	add r0, r6, #0
	bl GFL_StrBufFree
	sub r4, #0x90
	ldr r0, [r5, r4]
	mov r1, #0x8e
	bl sub_0204898C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	mov r3, #0
	str r7, [sp]
	bl ovy322_219dfb0
	add r0, r4, #0
	bl GFL_StrBufFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219f51c

	thumb_func_start ovy322_219f59c
ovy322_219f59c: ; 0x0219F59C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0219F5EC ; =0x021A0516
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	add r7, sp, #0
	mov r4, #0
	strh r0, [r7, #4]
	ldr r0, _0219F5F0 ; =0x021A0518
	ldrsh r0, [r0, r1]
	strh r0, [r7, #6]
_0219F5B4:
	lsl r1, r4, #1
	add r0, sp, #4
	ldrsh r0, [r0, r1]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219D3E0
	strh r0, [r7]
	add r0, r5, #0
	add r1, r6, #1
	bl sub_0219D3E0
	strh r0, [r7, #2]
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x74]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #2
	blt _0219F5B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F5EC: .word 0x021A0516
_0219F5F0: .word 0x021A0518
	thumb_func_end ovy322_219f59c

	thumb_func_start sub_0219F5F4
sub_0219F5F4: ; 0x0219F5F4
	ldr r0, _0219F600 ; =0x021A0C40
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219F604 ; =sub_0203DA0C
	bx r3
	nop
_0219F600: .word 0x021A0C40
_0219F604: .word sub_0203DA0C
	thumb_func_end sub_0219F5F4

	thumb_func_start ovy322_219f608
ovy322_219f608: ; 0x0219F608
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ovy322_219f63c
	ldrh r0, [r5]
	bl sub_0201FD00
	mov r1, #0xa9
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	ldrh r2, [r5]
	ldr r0, [r0]
	ldr r1, [r5, r1]
	add r3, r4, #0
	bl sub_0216E840
	add r0, r5, #0
	bl ovy322_219f654
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219f608

	thumb_func_start ovy322_219f63c
ovy322_219f63c: ; 0x0219F63C
	push {r3, r4, r5, lr}
	mov r5, #0xa9
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219F652
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, r5]
_0219F652:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219f63c

	thumb_func_start ovy322_219f654
ovy322_219f654: ; 0x0219F654
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp]
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r1, [sp]
	str r0, [sp, #0xc]
	ldr r0, [r1, r0]
	bl sub_0201FDF8
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	sub r2, #8
	str r0, [r1, r2]
	ldr r2, [sp, #0xc]
	mov r6, #0
	add r2, r2, #4
	mov ip, r2
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	str r2, [sp, #0x14]
	add r2, #8
	str r2, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	str r2, [sp, #0x10]
	add r2, #0xc
	str r2, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x20]
	add r2, #0x10
	str r2, [sp, #0x20]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r7, [sp, #0xc]
	add r2, #0x1c
	add r0, #0x20
	add r1, #0x30
	add r7, #0x18
	str r2, [sp, #0xc]
_0219F6A6:
	mov r2, #0x3c
	add r3, r6, #0
	mul r3, r2
	ldr r2, [sp]
	add r4, r2, r3
	mov r3, #0
	mov r2, ip
	str r3, [r4, r2]
	ldr r2, [sp, #0x14]
	str r3, [r4, r2]
	ldr r2, [sp, #0x10]
	str r3, [r4, r2]
	ldr r2, [sp, #0x20]
	str r3, [r4, r2]
	mov r2, #0
	str r2, [r4, r7]
	ldr r2, [sp, #0xc]
	str r3, [r4, r2]
_0219F6CA:
	lsl r2, r3, #2
	ldr r5, [sp, #4]
	add r2, r4, r2
	str r5, [r2, r0]
	add r3, r3, #1
	str r5, [r2, r1]
	cmp r3, #4
	blt _0219F6CA
	add r6, r6, #1
	cmp r6, #6
	blt _0219F6A6
	mov r1, #0xa7
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _0219F7C4
_0219F6EC:
	mov r6, #0xa9
	ldr r0, [sp]
	lsl r6, r6, #2
	ldr r0, [r0, r6]
	ldr r1, [sp, #4]
	bl sub_0201FF08
	ldr r1, [sp, #4]
	mov r2, #0x3c
	mul r2, r1
	ldr r1, [sp]
	str r0, [sp, #8]
	add r7, r1, r2
	mov r1, #5
	mov r2, #0
	mov r5, #0
	bl sub_0201CCF8
	add r1, r6, #4
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	bl sub_0201CEB4
	add r1, r6, #0
	add r1, #8
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0xc
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0x10
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	mov r1, #0xa
	mov r2, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0x14
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0x18
	str r0, [r7, r1]
	ldr r0, [sp, #8]
	mov r1, #0xaf
	mov r2, #0
	bl sub_0201CCF8
	add r1, r6, #0
	add r1, #0x1c
	str r0, [r7, r1]
	add r0, r6, #0
	str r0, [sp, #0x1c]
	add r0, #0x30
	str r0, [sp, #0x1c]
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	add r6, #0x20
_0219F782:
	lsl r0, r5, #2
	add r4, r7, r0
	add r1, r5, #0
	ldr r0, [sp, #8]
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x18]
	str r0, [r4, r1]
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _0219F7AA
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02021280
	ldr r1, [sp, #0x1c]
	str r0, [r4, r1]
_0219F7AA:
	add r5, r5, #1
	cmp r5, #4
	blt _0219F782
	ldr r0, [sp, #4]
	mov r1, #0xa7
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _0219F6EC
_0219F7C4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219f654

	thumb_func_start ovy322_219f7c8
ovy322_219f7c8: ; 0x0219F7C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x41
	lsl r1, r1, #4
	str r0, [sp]
	add r5, r0, r1
	mov r0, #0xff
	mov r7, #0
	mov r6, #0
	str r0, [sp, #4]
_0219F7DC:
	ldr r0, [sp]
	add r1, r6, #0
	add r0, #0xe4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_02011100
	cmp r0, #1
	bne _0219F83A
	lsl r4, r7, #1
	ldrh r0, [r5, r4]
	ldr r1, [sp, #4]
	bic r0, r1
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r0, r1
	strh r0, [r5, r4]
	ldr r0, [sp]
	add r1, r6, #0
	add r0, #0xe4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_02011118
	cmp r0, #0
	bne _0219F81E
	ldrh r1, [r5, r4]
	mov r0, #2
	lsl r0, r0, #0xe
	orr r0, r1
	strh r0, [r5, r4]
_0219F81E:
	ldrh r1, [r5, r4]
	ldr r0, _0219F84C ; =0xFFFF80FF
	add r7, r7, #1
	and r0, r1
	ldr r1, _0219F850 ; =0x021A0710
	ldrb r2, [r1, r6]
	mov r1, #3
	and r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x19
	lsr r1, r1, #0x11
	orr r0, r1
	strh r0, [r5, r4]
_0219F83A:
	add r6, r6, #1
	cmp r6, #0x28
	blt _0219F7DC
	mov r1, #0x9e
	ldr r0, [sp]
	lsl r1, r1, #2
	str r7, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F84C: .word 0xFFFF80FF
_0219F850: .word 0x021A0710
	thumb_func_end ovy322_219f7c8

	thumb_func_start sub_0219F854
sub_0219F854: ; 0x0219F854
	mov r2, #0x9e
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	cmp r1, r2
	blt _0219F864
	mov r0, #0
	mvn r0, r0
	bx lr
_0219F864:
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0x41
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0219F854

	thumb_func_start ovy322_219f874
ovy322_219f874: ; 0x0219F874
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r6, r1, #2
	mov r4, #0x51
	add r2, r5, r6
	lsl r4, r4, #4
	ldr r2, [r2, r4]
	mov r0, #0xf
	ldr r2, [r2, #0xc]
	mov r1, #0
	mov r3, #0xa0
	bl sub_0205FA10
	add r2, r5, r6
	add r4, #0x20
	ldr r2, [r2, r4]
	mov r0, #0xf
	ldr r2, [r2, #0xc]
	mov r1, #0xa0
	mov r3, #0x60
	bl sub_0205FA10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy322_219f874

	thumb_func_start ovy322_219f8a4
ovy322_219f8a4: ; 0x0219F8A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5]
	mov r0, #0x64
	bl sub_0204AA30
	add r7, r0, #0
	mov r0, #0x51
	lsl r0, r0, #4
	str r0, [sp, #8]
	add r0, r5, r0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r4, #0
	sub r0, #0x10
	str r0, [sp, #8]
_0219F8C6:
	ldr r1, _0219F924 ; =0x021A05CC
	lsl r6, r4, #2
	ldr r2, [sp]
	ldrsh r1, [r1, r6]
	ldrh r3, [r5]
	add r0, r7, #0
	add r2, r2, r6
	bl sub_0204B37C
	ldr r1, [sp, #8]
	add r2, r5, r6
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #4
	blt _0219F8C6
	mov r0, #0x53
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r4, #0
	sub r0, #0x10
	str r0, [sp, #0xc]
_0219F8F6:
	ldr r1, _0219F924 ; =0x021A05CC
	lsl r6, r4, #2
	add r2, r1, r6
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r2, [sp, #4]
	ldrh r3, [r5]
	add r0, r7, #0
	add r2, r2, r6
	bl sub_0204B37C
	ldr r1, [sp, #0xc]
	add r2, r5, r6
	add r4, r4, #1
	str r0, [r2, r1]
	cmp r4, #4
	blt _0219F8F6
	add r0, r7, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F924: .word 0x021A05CC
	thumb_func_end ovy322_219f8a4

	thumb_func_start ovy322_219f928
ovy322_219f928: ; 0x0219F928
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	mov r6, #5
	lsl r7, r7, #8
	lsl r6, r6, #8
	str r0, [sp]
	mov r4, #0
	add r7, #0x20
	add r6, #0x20
_0219F93A:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219F956
	bl sub_0203A24C
	mov r0, #5
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
_0219F956:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0219F964
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, r7]
_0219F964:
	add r4, r4, #1
	cmp r4, #4
	blt _0219F93A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy322_219f928

	thumb_func_start ovy322_219f96c
ovy322_219f96c: ; 0x0219F96C
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _0219F990
	bl sub_0203D554
	cmp r0, #1
	bne _0219F97E
	mov r4, #0
_0219F97E:
	mov r0, #2
	add r1, r4, #0
	bl sub_02046CFC
	mov r0, #4
	add r1, r4, #0
	bl sub_02046CFC
	pop {r4, pc}
_0219F990:
	mov r0, #2
	add r1, r4, #0
	bl sub_02046CFC
	mov r0, #4
	add r1, r4, #0
	bl sub_02046CFC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy322_219f96c

	thumb_func_start ovy322_219f9a4
ovy322_219f9a4: ; 0x0219F9A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _0219FAD4 ; =0x021A06E8
	add r5, r0, #0
	add r3, sp, #0xc
	mov r2, #5
_0219F9B0:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219F9B0
	str r5, [sp, #0x30]
	add r0, r5, #0
	bl ovy322_219fc78
	ldrh r1, [r5]
	mov r0, #0x64
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r1, [r5]
	mov r2, #6
	mov r3, #0
	str r1, [sp, #8]
	mov r1, #0x14
	add r6, r0, #0
	bl sub_0204ADA8
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B0D4
	ldr r0, _0219FAD8 ; =0x021A0568
	mov r2, #0x9e
	lsl r2, r2, #2
	str r0, [sp, #0x2c]
	ldr r0, [r5, r2]
	add r3, sp, #0xc
	add r1, r2, #4
	strh r0, [r3, #0x14]
	ldr r1, [r5, r1]
	add r2, #8
	strb r1, [r3, #0x18]
	ldr r1, [r5, r2]
	cmp r0, #7
	strh r1, [r3, #0x1a]
	bgt _0219FA14
	ldr r0, _0219FADC ; =0x021A08C8
	str r0, [sp, #0x28]
_0219FA14:
	ldrh r1, [r5]
	add r0, sp, #0xc
	bl sub_0219AF1C
	mov r7, #0x89
	lsl r7, r7, #2
	str r0, [r5, r7]
	mov r4, #0
	str r4, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0x1d
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0x1e
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0x1f
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0x20
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, r7]
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_0219B27C
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	ble _0219FAA4
	mov r0, #0x41
	lsl r0, r0, #4
	add r6, r5, r0
_0219FA86:
	lsl r1, r4, #1
	ldrh r2, [r6, r1]
	ldr r0, [r5, r7]
	lsl r1, r2, #0x11
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #0x19
	add r2, #0x2a
	bl sub_0219B1B4
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0219FA86
_0219FAA4:
	mov r4, #0x9a
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	ldr r0, _0219FAE0 ; =0xFFFFEFFF
	and r0, r1
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _0219FAC8
	mov r0, #1
	ldr r1, [r5, r4]
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r5, r4]
_0219FAC8:
	ldr r1, _0219FAE4 ; =0x0000679D
	mov r0, #4
	bl sub_02045350
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219FAD4: .word 0x021A06E8
_0219FAD8: .word 0x021A0568
_0219FADC: .word 0x021A08C8
_0219FAE0: .word 0xFFFFEFFF
_0219FAE4: .word 0x0000679D
	thumb_func_end ovy322_219f9a4

	thumb_func_start ovy322_219fae8
ovy322_219fae8: ; 0x0219FAE8
	push {r3, lr}
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0
	mvn r2, r2
	cmp r0, #0
	beq _0219FAFE
	bl sub_0219B2E0
	add r2, r0, #0
_0219FAFE:
	add r0, r2, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy322_219fae8

	thumb_func_start ovy322_219fb04
ovy322_219fb04: ; 0x0219FB04
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	sub r0, #0xa
	mov r5, #0
	mov r6, #0
	cmp r1, r0
	bhi _0219FB54
	add r0, r5, #0
	sub r0, #0xa
	cmp r1, r0
	bhs _0219FBAE
	add r0, r5, #0
	sub r0, #0xc
	cmp r1, r0
	bhi _0219FB4A
	add r0, r5, #0
	sub r0, #0xc
	cmp r1, r0
	bhs _0219FBB0
	cmp r1, #6
	bhi _0219FBB2
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FB3C: ; jump table
	.short _0219FB8A - _0219FB3C - 2 ; case 0
	.short _0219FB8A - _0219FB3C - 2 ; case 1
	.short _0219FB8A - _0219FB3C - 2 ; case 2
	.short _0219FB8A - _0219FB3C - 2 ; case 3
	.short _0219FB8A - _0219FB3C - 2 ; case 4
	.short _0219FB8A - _0219FB3C - 2 ; case 5
	.short _0219FB8A - _0219FB3C - 2 ; case 6
_0219FB4A:
	mov r0, #0xa
	mvn r0, r0
	cmp r1, r0
	beq _0219FBAE
	b _0219FBB2
_0219FB54:
	sub r0, r5, #7
	cmp r1, r0
	bhi _0219FB66
	bhs _0219FB8E
	add r0, r5, #0
	sub r0, #9
	cmp r1, r0
	beq _0219FBAE
	b _0219FBB2
_0219FB66:
	sub r0, r5, #6
	cmp r1, r0
	bhi _0219FB70
	beq _0219FB9E
	b _0219FBB2
_0219FB70:
	add r0, r1, #5
	cmp r0, #3
	bhi _0219FBB2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219FB82: ; jump table
	.short _0219FB8E - _0219FB82 - 2 ; case 0
	.short _0219FB9E - _0219FB82 - 2 ; case 1
	.short _0219FBA8 - _0219FB82 - 2 ; case 2
	.short _0219FBA8 - _0219FB82 - 2 ; case 3
_0219FB8A:
	mov r5, #2
	b _0219FBB2
_0219FB8E:
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x10
_0219FB96:
	orr r0, r2
	str r0, [r4, r1]
_0219FB9A:
	mov r5, #1
	b _0219FBB2
_0219FB9E:
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x20
	b _0219FB96
_0219FBA8:
	mov r5, #1
	mov r6, #1
	b _0219FBB2
_0219FBAE:
	b _0219FB9A
_0219FBB0:
	mov r5, #3
_0219FBB2:
	cmp r5, #1
	bne _0219FC06
	mov r1, #0x4b
	mov r0, #0x97
	lsl r1, r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0219FBD4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xc
	b _0219FBE2
_0219FBD4:
	mov r0, #0x20
	tst r0, r1
	beq _0219FBE6
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0xd
_0219FBE2:
	bl ovy322_219dd20
_0219FBE6:
	cmp r6, #1
	bne _0219FC5A
	mov r6, #0x89
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_0219CC34
	add r1, r0, #0
	ldr r0, [r4, r6]
	bl sub_0219CC58
	add r0, r4, #0
	mov r1, #1
	bl ovy322_21a0084
	b _0219FC5A
_0219FC06:
	cmp r5, #2
	bne _0219FC5A
	add r0, r4, #0
	bl ovy322_219fcbc
	mov r6, #0x97
	ldr r0, _0219FC70 ; =0x00000136
	lsl r6, r6, #2
	str r0, [r4, r6]
	ldr r0, _0219FC74 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r6, #0
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x10
	orr r1, r0
	add r0, r6, #0
	add r0, #0xc
	str r1, [r4, r0]
	add r1, r6, #0
	add r1, #0x20
	add r0, r6, #0
	ldr r1, [r4, r1]
	sub r0, #0x38
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_0219CAD8
	add r2, r6, #0
	add r2, #0x1c
	ldr r2, [r4, r2]
	add r6, #0x18
	ldr r3, [r4, r6]
	add r0, r4, #0
	mov r1, #0
	sub r2, r2, #1
	bl ovy322_219ead0
_0219FC5A:
	cmp r5, #0
	beq _0219FC6A
	cmp r5, #2
	beq _0219FC6A
	add r0, r4, #0
	mov r1, #0
	bl ovy322_219f96c
_0219FC6A:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0219FC70: .word 0x00000136
_0219FC74: .word 0x0000054C
	thumb_func_end ovy322_219fb04

	thumb_func_start ovy322_219fc78
ovy322_219fc78: ; 0x0219FC78
	push {r3, r4, r5, lr}
	mov r5, #0x89
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219FC8E
	bl sub_0219B138
	mov r0, #0
	str r0, [r4, r5]
_0219FC8E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219fc78

	thumb_func_start ovy322_219fc90
ovy322_219fc90: ; 0x0219FC90
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl sub_02045B7C
	add r0, r4, #0
	bl ovy322_219fcbc
	pop {r4, pc}
	thumb_func_end ovy322_219fc90

	thumb_func_start ovy322_219fca8
ovy322_219fca8: ; 0x0219FCA8
	push {r3, lr}
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0219FCB8
	bl ovy322_219f9a4
_0219FCB8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy322_219fca8

	thumb_func_start ovy322_219fcbc
ovy322_219fcbc: ; 0x0219FCBC
	push {r3, r4, r5, lr}
	mov r4, #0x89
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219FCEA
	bl sub_0219CC28
	add r1, r4, #0
	add r1, #0x50
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0219CC34
	add r1, r4, #0
	add r1, #0x58
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0219CC3C
	add r4, #0x5c
	str r0, [r5, r4]
_0219FCEA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219fcbc

	thumb_func_start ovy322_219fcec
ovy322_219fcec: ; 0x0219FCEC
	push {r3, lr}
	mov r3, #0x7d
	lsl r3, r3, #2
	ldr r3, [r0, r3]
	bl ovy322_219fd18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy322_219fcec
_0219FCFC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy322_219fd00
ovy322_219fd00: ; 0x0219FD00
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl ovy322_21a0084
	add r0, r5, #0
	add r1, r4, #0
	bl ovy322_21a01d4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy322_219fd00

	thumb_func_start ovy322_219fd18
ovy322_219fd18: ; 0x0219FD18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0219CC18
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC1C
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy322_219fdbc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219fd18

	thumb_func_start ovy322_219fd50
ovy322_219fd50: ; 0x0219FD50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r3, #0
	str r2, [sp, #0xc]
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0xe8
	ldr r1, [r1]
	mov r2, #0
	add r7, r0, #0
	bl sub_02022888
	str r0, [sp, #0x10]
	ldr r0, [r4]
	bl sub_020484D8
	lsl r6, r0, #3
	ldr r0, [r4]
	bl BmpWin_GetBitmap
	ldr r2, [sp, #0x10]
	str r7, [sp]
	sub r3, r6, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	ldr r3, [sp, #0x30]
	add r2, r2, #3
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r5, #0xe8
	add r1, r0, #0
	ldr r0, [r5]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #4]
	asr r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #4]
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_219fd50

	thumb_func_start ovy322_219fdbc
ovy322_219fdbc: ; 0x0219FDBC
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #0xf7
	lsl r4, r4, #6
	str r4, [sp, #4]
	mov r4, #4
	str r4, [sp, #8]
	bl ovy322_219fd50
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy322_219fdbc

	thumb_func_start ovy322_219fdd8
ovy322_219fdd8: ; 0x0219FDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #9
	str r0, [sp]
	mov r0, #4
	mov r3, #0
	bl sub_02024D00
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	mov r1, #0
	mov r2, #1
	mov r3, #9
	bl sub_02024E80
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_0204826C
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl sub_020484D4
	bl sub_02044F90
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0xf
	bl ovy322_219e3c8
	mov r4, #0x9d
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl sub_0219F854
	add r7, r0, #0
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r4, #0
	sub r0, #0x70
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_02024820
	add r0, r4, #0
	sub r0, #0x80
	ldr r0, [r5, r0]
	mov r1, #0x90
	bl sub_0204898C
	add r7, r0, #0
	sub r4, #0x70
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r5, #0
	add r0, #0xf0
	ldr r4, [r0]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r5, #0
	str r6, [sp]
	add r0, #0xe8
	ldr r0, [r0]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, _0219FEBC ; =0x0000044F
	mov r3, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02021C7C
	add r5, #0xf8
	mov r0, #1
	strb r0, [r5]
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219FEBC: .word 0x0000044F
	thumb_func_end ovy322_219fdd8

	thumb_func_start sub_0219FEC0
sub_0219FEC0: ; 0x0219FEC0
	ldr r3, _0219FEC8 ; =sub_02045708
	mov r0, #4
	bx r3
	nop
_0219FEC8: .word sub_02045708
	thumb_func_end sub_0219FEC0

	thumb_func_start ovy322_219fecc
ovy322_219fecc: ; 0x0219FECC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	ldrh r0, [r6]
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	mov r0, #3
	add r2, sp, #0xc
	strb r0, [r2, #4]
	add r1, r6, r1
	str r1, [sp, #0x14]
	mov r1, #1
	str r1, [sp, #0x18]
	mov r1, #0x20
	strb r1, [r2, #0x10]
	mov r1, #0x18
	strb r1, [r2, #0x11]
	mov r1, #0xd
	strb r1, [r2, #0x12]
	strb r0, [r2, #0x13]
	mov r0, #0x8b
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
	mov r0, #0x8b
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	mov r0, #0x8b
	lsl r0, r0, #2
	str r0, [sp]
	sub r0, #0x38
	str r0, [sp]
	mov r0, #0x8b
	lsl r0, r0, #2
	mov r4, #0
	add r7, r0, #4
_0219FF1C:
	mov r0, #0xc
	mul r0, r4
	add r5, r6, r0
	ldrh r1, [r6]
	mov r0, #0x64
	bl GFL_StrBufCreate
	add r2, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	str r2, [r5, r0]
	ldr r0, [sp]
	ldr r1, _0219FF8C ; =0x021A050E
	lsl r3, r4, #1
	add r3, r1, r3
	mov r1, #2
	ldrsh r1, [r3, r1]
	ldr r0, [r6, r0]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, _0219FF90 ; =0x000039E0
	cmp r4, #2
	strh r0, [r5, r7]
	bne _0219FF52
	mov r1, #1
	ldr r0, [sp, #4]
	b _0219FF56
_0219FF52:
	ldr r0, [sp, #8]
	mov r1, #0
_0219FF56:
	add r4, r4, #1
	str r1, [r5, r0]
	cmp r4, #3
	blt _0219FF1C
	mov r5, #0x25
	lsl r5, r5, #4
	ldr r1, [r6, r5]
	add r0, sp, #0xc
	bl sub_0202D974
	add r1, r5, #0
	sub r1, #0x28
	str r0, [r6, r1]
	mov r4, #0
	mov r7, #0xc
	sub r5, #0x24
_0219FF76:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	ldr r0, [r0, r5]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #3
	blt _0219FF76
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219FF8C: .word 0x021A050E
_0219FF90: .word 0x000039E0
	thumb_func_end ovy322_219fecc

	thumb_func_start ovy322_219ff94
ovy322_219ff94: ; 0x0219FF94
	push {r3, r4, r5, lr}
	mov r5, #0x8a
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219FFAA
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
_0219FFAA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219ff94

	thumb_func_start ovy322_219ffac
ovy322_219ffac: ; 0x0219FFAC
	push {r3, r4, r5, lr}
	mov r4, #0x8a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219FFC0
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0219FFC0:
	bl sub_0202DB70
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219FFD6
	ldr r0, [r5, r4]
	bl sub_0202DC00
	pop {r3, r4, r5, pc}
_0219FFD6:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy322_219ffac

	thumb_func_start ovy322_219ffdc
ovy322_219ffdc: ; 0x0219FFDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r6, r1, #0
	ldr r0, [r0]
	mov r4, #0
	bl sub_02008BF0
	cmp r0, #1
	bne _0219FFF4
	mov r4, #1
_0219FFF4:
	ldrh r2, [r5]
	ldr r0, _021A0014 ; =0x0000010D
	add r1, r6, #0
	bl sub_0204A934
	lsl r1, r4, #2
	add r2, r0, r1
	mov r1, #0x18
	ldrsh r2, [r2, r1]
	mov r1, #0xa3
	lsl r1, r1, #2
	str r2, [r5, r1]
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	nop
_021A0014: .word 0x0000010D
	thumb_func_end ovy322_219ffdc

	thumb_func_start ovy322_21a0018
ovy322_21a0018: ; 0x021A0018
	push {r3, lr}
	mov r1, #0x9e
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r3, #1
	cmp r1, #7
	bgt _021A0028
	mov r3, #0
_021A0028:
	mov r1, #4
	mov r2, #1
	bl ovy322_219ddcc
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy322_21a0018

	thumb_func_start ovy322_21a0034
ovy322_21a0034: ; 0x021A0034
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0x9e
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #7
	ble _021A0080
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	sub r4, #0x54
	ldr r0, [r5, r4]
	add r4, sp, #0
	mov r6, #2
	ldrsh r1, [r4, r6]
	bl sub_0219C324
	strh r0, [r4, #2]
	ldrsh r0, [r4, r6]
	cmp r0, #8
	bge _021A006C
	mov r0, #8
	b _021A0072
_021A006C:
	cmp r0, #0xa0
	ble _021A0074
	mov r0, #0xa0
_021A0072:
	strh r0, [r4, #2]
_021A0074:
	add r5, #0xb8
	ldr r0, [r5]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
_021A0080:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy322_21a0034

	thumb_func_start ovy322_21a0084
ovy322_21a0084: ; 0x021A0084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x29
	add r6, r1, #0
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	cmp r6, #1
	bne _021A009E
	sub r1, r1, #1
	add r0, r0, #4
	str r1, [r5, r0]
_021A009E:
	mov r4, #0x89
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0219CC3C
	add r4, #0x70
	add r7, r0, #0
	ldr r0, [r5, r4]
	cmp r7, r0
	bne _021A00B4
	b _021A01CE
_021A00B4:
	cmp r7, r0
	ble _021A00BC
	mov r0, #1
	b _021A00C0
_021A00BC:
	mov r0, #0
	mvn r0, r0
_021A00C0:
	str r0, [sp]
	cmp r6, #1
	bne _021A00CA
	mov r0, #0
	str r0, [sp]
_021A00CA:
	mov r0, #0x29
	mov r6, #0x41
	mov r4, #0
	lsl r0, r0, #4
	mov r1, #1
	lsl r6, r6, #4
_021A00D6:
	add r2, r7, r4
	lsl r2, r2, #1
	add r2, r5, r2
	ldrh r2, [r2, r6]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1f
	beq _021A00EE
	add r2, r1, #0
	ldr r3, [r5, r0]
	lsl r2, r4
	orr r2, r3
	str r2, [r5, r0]
_021A00EE:
	add r4, r4, #1
	cmp r4, #7
	blt _021A00D6
	cmp r7, #0
	ble _021A0116
	sub r0, r7, #1
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0x41
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _021A0116
	mov r1, #0x29
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	mov r0, #0x80
	orr r0, r2
	str r0, [r5, r1]
_021A0116:
	mov r1, #0x9e
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r2, r7, #7
	cmp r2, r0
	bge _021A0142
	lsl r0, r2, #1
	add r2, r5, r0
	mov r0, #0x41
	lsl r0, r0, #4
	ldrh r0, [r2, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _021A0142
	add r0, r1, #0
	add r0, #0x18
	ldr r2, [r5, r0]
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r2
	add r1, #0x18
	str r0, [r5, r1]
_021A0142:
	mov r4, #0
	mov r6, #1
_021A0146:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, r6, #0
	lsl r0, r4
	mov r3, #0
	tst r0, r1
	beq _021A0158
	add r3, r6, #0
_021A0158:
	add r0, r5, #0
	mov r1, #4
	add r2, r4, #2
	bl ovy322_219ddcc
	add r4, r4, #1
	cmp r4, #9
	blt _021A0146
	ldr r0, [sp]
	mov r1, #0x18
	mul r1, r0
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	mov r4, #0
	str r0, [sp, #8]
	add r6, sp, #0xc
_021A0178:
	lsl r0, r4, #2
	str r0, [sp, #4]
	add r0, r5, r0
	add r0, #0xbc
	ldr r0, [r0]
	add r1, sp, #0xc
	mov r2, #1
	bl sub_0204C178
	add r1, r4, #0
	add r1, #0x19
	add r0, r5, #0
	lsl r1, r1, #1
	bl sub_0219D3E0
	add r1, r4, #0
	add r1, #0x19
	lsl r1, r1, #1
	strh r0, [r6]
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0219D3E0
	strh r0, [r6, #2]
	mov r0, #2
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #8]
	mov r2, #1
	add r0, r1, r0
	strh r0, [r6, #2]
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	add r0, r5, r0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #9
	blt _021A0178
	mov r0, #0xa5
	lsl r0, r0, #2
	str r7, [r5, r0]
_021A01CE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_21a0084

	thumb_func_start ovy322_21a01d4
ovy322_21a01d4: ; 0x021A01D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
_021A01DC:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r2, #1
	sub r1, r0, r7
	add r0, sp, #0
	strh r1, [r0, #2]
	add r0, r5, r6
	add r0, #0xbc
	ldr r0, [r0]
	add r1, sp, #0
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #9
	blt _021A01DC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy322_21a01d4

	thumb_func_start ovy322_21a0210
ovy322_21a0210: ; 0x021A0210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r6, #0
	ldr r0, [r0]
	bl sub_02008BF0
	cmp r0, #1
	bne _021A0226
	mov r6, #1
_021A0226:
	ldr r1, _021A0270 ; =0x021A09D0
	lsl r0, r6, #1
	add r6, r1, r0
	mov r0, #0x7e
	lsl r0, r0, #2
	mov r4, #0
	add r7, r5, r0
_021A0234:
	lsl r2, r4, #2
	ldrh r2, [r6, r2]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204898C
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, [r7]
	bl GFL_MsgDataFree
	add r4, r4, #1
	cmp r4, #0x28
	blt _021A0234
	mov r1, #0x7e
	lsl r1, r1, #2
	mov r0, #0
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0270: .word 0x021A09D0
	thumb_func_end ovy322_21a0210

	thumb_func_start ovy322_21a0274
ovy322_21a0274: ; 0x021A0274
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x46
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021A027E:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl GFL_StrBufFree
	mov r0, #0
	add r4, r4, #1
	str r0, [r5, r7]
	cmp r4, #0x28
	blt _021A027E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy322_21a0274

	thumb_func_start sub_021A0294
sub_021A0294: ; 0x021A0294
	ldr r0, _021A029C ; =0x021A0739
	ldrb r0, [r0, r1]
	bx lr
	nop
_021A029C: .word 0x021A0739
	thumb_func_end sub_021A0294

	thumb_func_start sub_021A02A0
sub_021A02A0: ; 0x021A02A0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A02A0

	thumb_func_start sub_021A02A4
sub_021A02A4: ; 0x021A02A4
	bx lr
	.align 2, 0
	thumb_func_end sub_021A02A4

	thumb_func_start ovy322_21a02a8
ovy322_21a02a8: ; 0x021A02A8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021A0334 ; =0x000001C6
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021A0338 ; =0x021A0C8C
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021A033C ; =0x04000050
	ldr r0, _021A0340 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021A0344 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021A0348 ; =0x021A0AA0
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
	bl ovy322_21a03e8
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy322_21a048c
	add r0, r5, #0
	bl sub_02026DC0
	str r0, [r4, #0x10]
	ldr r0, _021A034C ; =ovy322_21a03d0
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0334: .word 0x000001C6
_021A0338: .word 0x021A0C8C
_021A033C: .word 0x04000050
_021A0340: .word 0x04001050
_021A0344: .word 0xFFFF1FFF
_021A0348: .word 0x021A0AA0
_021A034C: .word ovy322_21a03d0
	thumb_func_end ovy322_21a02a8

	thumb_func_start ovy322_21a0350
ovy322_21a0350: ; 0x021A0350
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy322_21a04cc
	add r0, r4, #0
	bl ovy322_21a0448
	ldr r0, [r4, #0x10]
	bl sub_02026DE8
	bl sub_020232D8
	ldr r5, _021A039C ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021A03A0 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021A03A4 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x14
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
_021A039C: .word 0x04000050
_021A03A0: .word 0x04001050
_021A03A4: .word 0xFFFF1FFF
	thumb_func_end ovy322_21a0350

	thumb_func_start ovy322_21a03a8
ovy322_21a03a8: ; 0x021A03A8
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021A04E8
	add r0, r4, #0
	bl sub_021A0480
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy322_21a03a8

	thumb_func_start sub_021A03BC
sub_021A03BC: ; 0x021A03BC
	bx lr
	.align 2, 0
	thumb_func_end sub_021A03BC

	thumb_func_start sub_021A03C0
sub_021A03C0: ; 0x021A03C0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A03C0

	thumb_func_start sub_021A03C4
sub_021A03C4: ; 0x021A03C4
	ldr r3, _021A03CC ; =sub_021A04F8
	add r0, r0, #4
	bx r3
	nop
_021A03CC: .word sub_021A04F8
	thumb_func_end sub_021A03C4

	thumb_func_start ovy322_21a03d0
ovy322_21a03d0: ; 0x021A03D0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021A0484
	add r0, r4, #4
	bl sub_021A04F0
	ldr r0, [r4, #0x10]
	bl sub_020275F8
	pop {r4, pc}
	thumb_func_end ovy322_21a03d0

	thumb_func_start ovy322_21a03e8
ovy322_21a03e8: ; 0x021A03E8
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
	ldr r0, _021A0440 ; =0x021A0A74
	bl sub_02044710
	ldr r7, _021A0444 ; =0x021A0AD0
_021A040A:
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
	blo _021A040A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0440: .word 0x021A0A74
_021A0444: .word 0x021A0AD0
	thumb_func_end ovy322_21a03e8

	thumb_func_start ovy322_21a0448
ovy322_21a0448: ; 0x021A0448
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021A047C ; =0x021A0AD0
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021A0452:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021A0452
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A047C: .word 0x021A0AD0
	thumb_func_end ovy322_21a0448

	thumb_func_start sub_021A0480
sub_021A0480: ; 0x021A0480
	bx lr
	.align 2, 0
	thumb_func_end sub_021A0480

	thumb_func_start sub_021A0484
sub_021A0484: ; 0x021A0484
	ldr r3, _021A0488 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021A0488: .word sub_02045A5C
	thumb_func_end sub_021A0484

	thumb_func_start ovy322_21a048c
ovy322_21a048c: ; 0x021A048C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021A04C8 ; =0x021A0A84
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
_021A04C8: .word 0x021A0A84
	thumb_func_end ovy322_21a048c

	thumb_func_start ovy322_21a04cc
ovy322_21a04cc: ; 0x021A04CC
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
	thumb_func_end ovy322_21a04cc

	thumb_func_start sub_021A04E8
sub_021A04E8: ; 0x021A04E8
	ldr r3, _021A04EC ; =sub_0204B794
	bx r3
	.align 2, 0
_021A04EC: .word sub_0204B794
	thumb_func_end sub_021A04E8

	thumb_func_start sub_021A04F0
sub_021A04F0: ; 0x021A04F0
	ldr r3, _021A04F4 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021A04F4: .word sub_0204B7C8
	thumb_func_end sub_021A04F0

	thumb_func_start sub_021A04F8
sub_021A04F8: ; 0x021A04F8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021A04F8
_021A04FC:
	.byte 0x01, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x00, 0x00, 0x53, 0x00, 0xA8, 0xB8, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0x90, 0x00
	.byte 0x91, 0x00, 0x92, 0x00, 0x93, 0x00, 0x00, 0x00, 0x01, 0x00, 0x12, 0x00, 0x13, 0x00, 0x0C, 0x00
	.byte 0x00, 0x00, 0x13, 0x00, 0x06, 0x00, 0x02, 0x00, 0x14, 0x00, 0x00, 0x00, 0x16, 0x00, 0x01, 0x00
	.byte 0x03, 0x00, 0x17, 0x00, 0x18, 0x00, 0x19, 0x00, 0x0B, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x07, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x19, 0x00, 0x00, 0x07, 0x18, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xED, 0xFC, 0x19, 0x02, 0xFD, 0xFC, 0x19, 0x02
	.byte 0x01, 0xFD, 0x19, 0x02, 0x03, 0x26, 0x00, 0x00, 0x07, 0x25, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x04, 0x02, 0x01, 0x1C, 0x04, 0x0A, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0xB8, 0x60, 0x70
	.byte 0xA8, 0xB8, 0x94, 0xA4, 0xA8, 0xB8, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0xA8, 0xB8, 0x60, 0x70
	.byte 0xA8, 0xB8, 0x94, 0xA4, 0xA8, 0xB8, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x7D, 0x00
	.byte 0x7E, 0x00, 0x81, 0x00, 0x82, 0x00, 0x83, 0x00, 0x8F, 0x00, 0x84, 0x00, 0x00, 0x09, 0x00, 0x00
	.byte 0x00, 0x2C, 0x09, 0x01, 0x04, 0x05, 0x06, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x06, 0x00, 0x10, 0x00
	.byte 0x07, 0x00, 0x11, 0x00, 0x08, 0x00, 0x12, 0x00, 0x09, 0x00, 0x13, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00
	.byte 0x00, 0x01, 0x11, 0x15, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x00, 0x85, 0x00
	.byte 0x86, 0x00, 0x87, 0x00, 0x88, 0x00, 0x89, 0x00, 0x8A, 0x00, 0x8B, 0x00, 0x8C, 0x00, 0x8D, 0x00
	.byte 0x8E, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x02, 0x01, 0x1C, 0x02, 0x0A
	.byte 0x04, 0x01, 0x0F, 0x0F, 0x02, 0x0D, 0x04, 0x01, 0x11, 0x0F, 0x02, 0x0D, 0x04, 0x01, 0x13, 0x0F
	.byte 0x02, 0x0D, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x30, 0x01, 0x01, 0x00, 0x01, 0x03, 0x01
	.byte 0x04, 0x30, 0x01, 0x01, 0x00, 0x01, 0x00, 0x01, 0x05, 0x30, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x17, 0x00, 0xA0, 0x01, 0x02, 0x00
	.byte 0x15, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x27, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x38, 0x01, 0x01, 0x00, 0x14, 0x00
	.byte 0x02, 0x02, 0x38, 0x01, 0x01, 0x00, 0x15, 0x00, 0x02, 0x02, 0x38, 0x01, 0x01, 0x00, 0x16, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0xFF, 0x02, 0x00, 0x1C, 0x03, 0x02, 0x00
	.byte 0x1A, 0x03, 0x00, 0x18, 0x0C, 0x08, 0x06, 0x04, 0x03, 0x01, 0x08, 0x00, 0x07, 0x00, 0x04, 0x00
	.byte 0x00, 0x07, 0x00, 0x00, 0x18, 0x09, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03
	.byte 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x0B, 0x01, 0x01, 0x01, 0x01
	.byte 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x05, 0x05, 0x05, 0x06, 0x06
	.byte 0x06, 0x07, 0x07, 0x07, 0x07, 0x08, 0x08, 0x08, 0x09, 0x09, 0x09, 0x09, 0x0A, 0x0A, 0x0A, 0x0A
	.byte 0x0C, 0x00, 0x01, 0x02, 0x01, 0x1C, 0x02, 0x05, 0x01, 0x02, 0x05, 0x1C, 0x02, 0x06, 0x01, 0x02
	.byte 0x0C, 0x1C, 0x02, 0x06, 0x01, 0x02, 0x03, 0x1C, 0x02, 0x07, 0x01, 0x03, 0x07, 0x1C, 0x04, 0x07
	.byte 0x01, 0x03, 0x0E, 0x1C, 0x04, 0x07, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x2D, 0x00, 0x00
	.byte 0x02, 0x2E, 0x00, 0x00, 0x02, 0x2F, 0x00, 0x00, 0x02, 0x30, 0x00, 0x00, 0x02, 0x31, 0x00, 0x00
	.byte 0x02, 0x32, 0x00, 0x00, 0x02, 0x33, 0x00, 0x00, 0x02, 0x34, 0x00, 0x00, 0x02, 0x35, 0x00, 0x00
	.byte 0x02, 0x36, 0x00, 0x00, 0x02, 0x37, 0x00, 0x00, 0x02, 0x38, 0x00, 0x00, 0x02, 0x39, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x02, 0x3A, 0x00, 0x00, 0x02, 0x3B, 0x00, 0x00, 0x02, 0x3C, 0x00, 0x00
	.byte 0x02, 0x3D, 0x00, 0x00, 0x02, 0x3E, 0x00, 0x00, 0x02, 0x3F, 0x00, 0x00, 0x02, 0x40, 0x00, 0x00
	.byte 0x02, 0x41, 0x00, 0x00, 0x02, 0x42, 0x00, 0x00, 0x02, 0x43, 0x00, 0x00, 0x02, 0x44, 0x00, 0x00
	.byte 0x02, 0x45, 0x00, 0x00, 0x02, 0x46, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00
	.byte 0x00, 0x01, 0x0B, 0x0D, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x0C, 0x0E, 0x00, 0x30, 0x01, 0x00
	.byte 0x00, 0x01, 0x0D, 0x0F, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x0E, 0x10, 0x00, 0x30, 0x01, 0x00
	.byte 0x00, 0x01, 0x0F, 0x11, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x10, 0x12, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0xE9, 0xCF, 0x19, 0x02, 0x61, 0xCF, 0x19, 0x02
	.byte 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x04, 0x04, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x05, 0x05
	.byte 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x06, 0x06, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x07, 0x07
	.byte 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x08, 0x08, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x09, 0x09
	.byte 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x0A, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x02, 0x01, 0x1C, 0x02, 0x0A, 0x04, 0x01, 0x06, 0x0A, 0x02, 0x0D, 0x04, 0x02, 0x0B, 0x0A
	.byte 0x02, 0x0D, 0x04, 0x04, 0x0F, 0x0C, 0x02, 0x0D, 0x04, 0x0D, 0x0F, 0x0C, 0x02, 0x0D, 0x04, 0x10
	.byte 0x04, 0x0C, 0x02, 0x0D, 0x04, 0x10, 0x07, 0x0C, 0x02, 0x0D, 0x04, 0x10, 0x0A, 0x0C, 0x02, 0x0D
	.byte 0x04, 0x10, 0x0D, 0x0C, 0x02, 0x0D, 0x04, 0x04, 0x11, 0x0C, 0x02, 0x0D, 0x04, 0x0D, 0x11, 0x0C
	.byte 0x02, 0x0D, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x30, 0x47, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x60, 0x77, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0x88, 0xA0, 0x04, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0xA8, 0xC0, 0x05, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x18, 0x2F, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x30, 0x47, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x48, 0x5F, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x60, 0x77, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x78, 0x8F, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00, 0x90, 0xA7, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
	.byte 0x04, 0xA4, 0xE8, 0xFF, 0x01, 0x00, 0x00, 0x00, 0xA8, 0xC0, 0x88, 0xA0, 0x04, 0x00, 0x00, 0x00
	.byte 0xA8, 0xC0, 0xA8, 0xC0, 0x05, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x30, 0x01, 0x00, 0x00, 0x01, 0x17, 0x18, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x18, 0x18
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x19, 0x18, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x1A, 0x18
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x1B, 0x18, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x1C, 0x18
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x1D, 0x18, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x1E, 0x18
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x1F, 0x18, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x20, 0x18
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x21, 0x18, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB6, 0x00, 0xB5, 0x00, 0xB8, 0x00, 0xB7, 0x00, 0xBA, 0x00, 0xB9, 0x00, 0xBC, 0x00, 0xBB, 0x00
	.byte 0xBE, 0x00, 0xBD, 0x00, 0xC0, 0x00, 0xBF, 0x00, 0xC2, 0x00, 0xC1, 0x00, 0xC4, 0x00, 0xC3, 0x00
	.byte 0xC6, 0x00, 0xC5, 0x00, 0xC8, 0x00, 0xC7, 0x00, 0xCA, 0x00, 0xC9, 0x00, 0xCC, 0x00, 0xCB, 0x00
	.byte 0xCE, 0x00, 0xCD, 0x00, 0xD0, 0x00, 0xCF, 0x00, 0xD2, 0x00, 0xD1, 0x00, 0xD4, 0x00, 0xD3, 0x00
	.byte 0xD6, 0x00, 0xD5, 0x00, 0xD8, 0x00, 0xD7, 0x00, 0xDA, 0x00, 0xD9, 0x00, 0xDC, 0x00, 0xDB, 0x00
	.byte 0xDE, 0x00, 0xDD, 0x00, 0xE0, 0x00, 0xDF, 0x00, 0xE2, 0x00, 0xE1, 0x00, 0xE4, 0x00, 0xE3, 0x00
	.byte 0xE6, 0x00, 0xE5, 0x00, 0xE8, 0x00, 0xE7, 0x00, 0xEA, 0x00, 0xE9, 0x00, 0xEC, 0x00, 0xEB, 0x00
	.byte 0xEE, 0x00, 0xED, 0x00, 0xF0, 0x00, 0xEF, 0x00, 0xF2, 0x00, 0xF1, 0x00, 0xF4, 0x00, 0xF3, 0x00
	.byte 0xF6, 0x00, 0xF5, 0x00, 0xF8, 0x00, 0xF7, 0x00, 0xFA, 0x00, 0xF9, 0x00, 0xFC, 0x00, 0xFB, 0x00
	.byte 0xFE, 0x00, 0xFD, 0x00, 0x00, 0x01, 0xFF, 0x00, 0x02, 0x01, 0x01, 0x01, 0x04, 0x01, 0x03, 0x01
	.byte 0x06, 0x01, 0x05, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x03, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x05, 0x1A, 0x02, 0x8C, 0x05, 0x1A, 0x02, 0x9C, 0x05, 0x1A, 0x02, 0x80, 0x05, 0x1A, 0x02
	.byte 0x2A, 0x06, 0x1A, 0x02, 0x80, 0x08, 0x1A, 0x02, 0x48, 0x06, 0x1A, 0x02, 0xDC, 0x05, 0x1A, 0x02
	.byte 0x12, 0x06, 0x1A, 0x02, 0x68, 0x06, 0x1A, 0x02, 0x1D, 0xE5, 0x19, 0x02, 0xE9, 0xE5, 0x19, 0x02
	.byte 0x31, 0xE9, 0x19, 0x02, 0x15, 0xEB, 0x19, 0x02, 0x7D, 0xEB, 0x19, 0x02, 0x35, 0xEC, 0x19, 0x02
	.byte 0x45, 0xEE, 0x19, 0x02, 0x8D, 0xEE, 0x19, 0x02, 0x65, 0xEF, 0x19, 0x02, 0x70, 0x6B, 0x77, 0x64
	.byte 0x5F, 0x62, 0x6F, 0x6F, 0x6B, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00
	; 0x021A04FC
