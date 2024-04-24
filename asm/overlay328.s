    .include "macros/function.inc"
	.include "overlay328.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy328_219ce80
ovy328_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0219CF50 ; =0x0000008B
	add r4, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0xa0
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	mov r1, #0x79
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0xa0
	bl GFL_ProcInitSubsystem
	mov r2, #0x79
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	mov r0, #0xa0
	strh r0, [r5]
	str r4, [r5, #0x38]
	ldrh r1, [r5]
	mov r0, #0
	bl ovy328_219e9d8
	str r0, [r5, #0x34]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r5, #0x3c]
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	mov r2, #0x59
	mov r4, #0x59
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x44]
	mov r2, #0x59
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, #0xae
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x48]
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	ldrh r0, [r5]
	bl sub_02021998
	str r0, [r5, #0x40]
	mov r0, #0x59
	add r0, #0xcb
	str r6, [r5, r0]
	mov r0, #0x59
	add r0, #0xcf
	str r6, [r5, r0]
	ldrh r0, [r5]
	mov r1, #0xa
	str r0, [sp]
	ldr r2, [r5, #0x3c]
	ldr r3, [r5, #0x40]
	mov r0, #1
	bl sub_0202E168
	add r4, #0xeb
	str r0, [r5, r4]
	add r0, r5, #0
	bl ovy328_219d060
	mov r0, #6
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219CF50: .word 0x0000008B
	thumb_func_end ovy328_219ce80

	thumb_func_start ovy328_219cf54
ovy328_219cf54: ; 0x0219CF54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	str r0, [sp]
	add r0, r5, #0
	bl ovy328_219d178
	mov r4, #0
	add r7, r4, #0
_0219CF64:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x44]
	cmp r0, #0
	beq _0219CF74
	bl GFL_MsgDataFree
	str r7, [r6, #0x44]
_0219CF74:
	add r4, r4, #1
	cmp r4, #2
	blt _0219CF64
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl GFL_WordSetSystemFree
	ldr r0, [r5, #0x40]
	bl sub_02021A18
	ldr r0, [r5, #0x3c]
	bl sub_02022DA8
	add r0, r5, #0
	bl ovy328_219e6e0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	ldr r0, [r5, #0x34]
	bl ovy328_219ea78
	ldrh r4, [r5]
	ldr r0, [sp]
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219CFC0 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219CFC0: .word 0x0000008B
	thumb_func_end ovy328_219cf54

	thumb_func_start ovy328_219cfc4
ovy328_219cfc4: ; 0x0219CFC4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r3, #0
	cmp r0, #3
	bhi _0219D036
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CFDE: ; jump table
	.short _0219CFE6 - _0219CFDE - 2 ; case 0
	.short _0219CFF6 - _0219CFDE - 2 ; case 1
	.short _0219D00E - _0219CFDE - 2 ; case 2
	.short _0219D028 - _0219CFDE - 2 ; case 3
_0219CFE6:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D036
_0219CFEE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219D036
_0219CFF6:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, _0219D05C ; =0x00002710
	cmp r1, r0
	bne _0219D036
	ldr r0, [r5, #0x40]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219D036
	b _0219CFEE
_0219D00E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	b _0219CFEE
_0219D028:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219D036
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219D036:
	add r0, r5, #0
	bl sub_0219D170
	add r0, r5, #0
	bl ovy328_219d54c
	ldr r0, [r5, #0x34]
	bl ovy328_219eacc
	ldr r0, [r5, #0x34]
	bl sub_0219EAE0
	ldr r0, [r5, #0x34]
	bl sub_0219EAE4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219D05C: .word 0x00002710
	thumb_func_end ovy328_219cfc4

	thumb_func_start ovy328_219d060
ovy328_219d060: ; 0x0219D060
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	mov r2, #0
	str r2, [r5, r0]
	add r1, r0, #4
	str r2, [r5, r1]
	add r1, r0, #0
	add r1, #8
	str r2, [r5, r1]
	ldr r1, [r5, #0x38]
	ldrb r2, [r1, #0x14]
	add r1, r0, #0
	add r1, #0xc
	str r2, [r5, r1]
	cmp r2, #0
	bgt _0219D08A
	mov r1, #3
	add r0, #8
	str r1, [r5, r0]
_0219D08A:
	mov r0, #0
	mov r2, #0x56
	lsl r2, r2, #2
	mvn r0, r0
	str r0, [r5, r2]
	mov r0, #0
	add r1, r2, #4
	str r0, [r5, r1]
	add r1, r2, #0
	add r1, #8
	str r0, [r5, r1]
	add r1, r2, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r1, r2, #0
	add r1, #0x10
	str r0, [r5, r1]
	add r1, r2, #0
	add r1, #0x20
	str r0, [r5, r1]
	add r1, r2, #0
	add r1, #0x28
	str r0, [r5, r1]
	add r1, r0, #0
	add r2, #0x14
_0219D0BC:
	lsl r3, r0, #2
	add r3, r5, r3
	add r0, r0, #1
	str r1, [r3, r2]
	cmp r0, #3
	blt _0219D0BC
	mov r4, #0
_0219D0CA:
	lsl r0, r1, #3
	add r0, r5, r0
	add r1, r1, #1
	str r4, [r0, #0x4c]
	cmp r1, #0x16
	blt _0219D0CA
	ldr r6, _0219D168 ; =0x0000011D
	ldrh r2, [r5]
	add r0, r6, #0
	mov r1, #9
	bl sub_0204A934
	add r1, r6, #0
	add r1, #0x5f
	str r0, [r5, r1]
	add r0, r5, #0
	bl sub_0219E45C
	add r0, r5, #0
	bl ovy328_219d5a4
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	mov r3, #6
	mov r7, #2
	bl ovy328_219d648
	add r0, r5, #0
	bl ovy328_219dc70
	add r0, r5, #0
	bl ovy328_219d904
	add r0, r5, #0
	bl ovy328_219e478
	bl sub_0203D554
	cmp r0, #0
	bne _0219D13A
	add r0, r6, #0
	add r0, #0x2f
	ldr r0, [r5, r0]
	add r3, r7, #0
	add r1, r0, #0
	add r0, r6, #0
	orr r1, r7
	add r0, #0x2f
	str r1, [r5, r0]
	add r6, #0x33
	ldr r2, [r5, r6]
	add r0, r5, #0
	mov r1, #1
	bl ovy328_219da84
_0219D13A:
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219df9c
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e424
	mov r0, #2
	str r0, [sp]
	ldr r0, _0219D16C ; =0x04000050
	mov r1, #3
	mov r2, #0x3f
	mov r3, #0xe
	bl G2x_SetBlendAlpha_
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D168: .word 0x0000011D
_0219D16C: .word 0x04000050
	thumb_func_end ovy328_219d060

	thumb_func_start sub_0219D170
sub_0219D170: ; 0x0219D170
	ldr r3, _0219D174 ; =ovy328_219d1e4
	bx r3
	.align 2, 0
_0219D174: .word ovy328_219d1e4
	thumb_func_end sub_0219D170

	thumb_func_start ovy328_219d178
ovy328_219d178: ; 0x0219D178
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #8
	tst r1, r2
	beq _0219D18C
	mov r1, #3
	b _0219D1C6
_0219D18C:
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	cmp r1, #3
	bhi _0219D1C4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219D1A2: ; jump table
	.short _0219D1AE - _0219D1A2 - 2 ; case 0
	.short _0219D1AE - _0219D1A2 - 2 ; case 1
	.short _0219D1AE - _0219D1A2 - 2 ; case 2
	.short _0219D1AA - _0219D1A2 - 2 ; case 3
_0219D1AA:
	mov r1, #2
	b _0219D1C6
_0219D1AE:
	ldr r1, [r4, #0x38]
	mov r2, #1
	str r2, [r1, #0x40]
	add r0, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x38]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #8]
	str r0, [r1, #0x44]
	b _0219D1CA
_0219D1C4:
	mov r1, #0
_0219D1C6:
	ldr r0, [r4, #0x38]
	str r1, [r0, #0x40]
_0219D1CA:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GFL_HeapFree
	add r0, r4, #0
	bl ovy328_219dd34
	add r0, r4, #0
	bl ovy328_219d998
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy328_219d178

	thumb_func_start ovy328_219d1e4
ovy328_219d1e4: ; 0x0219D1E4
	push {r4, lr}
	add r4, r0, #0
	bl ovy328_219d1f4
	add r0, r4, #0
	bl ovy328_219e4d4
	pop {r4, pc}
	thumb_func_end ovy328_219d1e4

	thumb_func_start ovy328_219d1f4
ovy328_219d1f4: ; 0x0219D1F4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x52
	lsl r4, r4, #2
	add r5, r0, #0
	add r2, r4, #0
	ldr r1, [r5, r4]
	sub r2, #8
	cmp r1, r2
	bgt _0219D242
	add r2, r4, #0
	sub r2, #8
	cmp r1, r2
	blt _0219D210
	b _0219D3A0
_0219D210:
	cmp r1, #0xc8
	bgt _0219D224
	bge _0219D2B8
	cmp r1, #0
	bgt _0219D21E
	beq _0219D290
	pop {r3, r4, r5, r6, r7, pc}
_0219D21E:
	cmp r1, #0x64
	beq _0219D296
	pop {r3, r4, r5, r6, r7, pc}
_0219D224:
	add r2, r4, #0
	sub r2, #0x1c
	cmp r1, r2
	bgt _0219D236
	add r2, r4, #0
	sub r2, #0x1c
	cmp r1, r2
	beq _0219D2D2
	pop {r3, r4, r5, r6, r7, pc}
_0219D236:
	add r2, r4, #0
	sub r2, #0x12
	cmp r1, r2
	bne _0219D240
	b _0219D386
_0219D240:
	pop {r3, r4, r5, r6, r7, pc}
_0219D242:
	add r2, r4, #0
	add r2, #0x52
	cmp r1, r2
	bgt _0219D26C
	add r2, r4, #0
	add r2, #0x52
	cmp r1, r2
	blt _0219D254
	b _0219D466
_0219D254:
	add r2, r4, #2
	cmp r1, r2
	bgt _0219D260
	bne _0219D25E
	b _0219D3E0
_0219D25E:
	pop {r3, r4, r5, r6, r7, pc}
_0219D260:
	add r2, r4, #0
	add r2, #0x48
	cmp r1, r2
	bne _0219D26A
	b _0219D446
_0219D26A:
	pop {r3, r4, r5, r6, r7, pc}
_0219D26C:
	add r2, r4, #0
	add r2, #0x66
	cmp r1, r2
	bgt _0219D28A
	add r2, r4, #0
	add r2, #0x66
	cmp r1, r2
	blt _0219D27E
	b _0219D4C4
_0219D27E:
	add r2, r4, #0
	add r2, #0x5c
	cmp r1, r2
	bne _0219D288
	b _0219D498
_0219D288:
	pop {r3, r4, r5, r6, r7, pc}
_0219D28A:
	ldr r0, _0219D544 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0219D290:
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D296:
	bl sub_0219E450
	cmp r0, #1
	bne _0219D2B0
	add r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #8
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
	ldr r0, _0219D544 ; =0x00002710
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D2B0:
	add r0, r5, #0
	bl ovy328_219dd78
	pop {r3, r4, r5, r6, r7, pc}
_0219D2B8:
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl ovy328_219dabc
	cmp r0, #0
	bne _0219D2F2
	ldr r0, _0219D544 ; =0x00002710
	str r0, [r5, r4]
	sub r0, r6, #1
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D2D2:
	bl ovy328_219e5e4
	add r2, r4, #0
	add r3, r4, #0
	add r2, #8
	add r3, #0x18
	add r6, r0, #0
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #1
	mov r7, #1
	bl ovy328_219da84
	cmp r6, #1
	beq _0219D2F4
_0219D2F2:
	b _0219D540
_0219D2F4:
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _0219D308
	ldr r1, _0219D544 ; =0x00002710
	str r1, [r5, r4]
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D308:
	add r1, r4, #0
	add r1, #0x20
	ldr r2, [r5, r1]
	add r1, r7, #0
	lsl r1, r0
	add r0, r2, #0
	tst r0, r1
	beq _0219D348
	add r1, r7, #0
	add r0, r4, #0
	sub r1, #0x41
	add r0, #0x30
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e950
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e99c
	add r0, r5, #0
	add r1, r7, #0
	bl ovy328_219e274
	add r0, r5, #0
	add r1, r7, #0
	bl ovy328_219e424
	add r0, r4, #0
	sub r0, #0x12
	b _0219D376
_0219D348:
	add r1, r7, #0
	add r0, r4, #0
	sub r1, #0x41
	add r0, #0x30
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e950
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e99c
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e274
	add r0, r5, #0
	add r1, r7, #0
	bl ovy328_219e424
	add r0, r4, #0
	add r0, #0x48
_0219D376:
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy328_219da54
	pop {r3, r4, r5, r6, r7, pc}
_0219D386:
	mov r1, #0
	bl ovy328_219e950
	cmp r0, #1
	bne _0219D424
	add r0, r4, #0
	sub r0, #8
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #1
	bl ovy328_219e99c
	pop {r3, r4, r5, r6, r7, pc}
_0219D3A0:
	bl sub_0219E450
	cmp r0, #1
	bne _0219D3BA
	add r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #8
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
	ldr r0, _0219D544 ; =0x00002710
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D3BA:
	add r0, r5, #0
	bl ovy328_219e8bc
	cmp r0, #1
	bne _0219D424
	add r0, r5, #0
	mov r1, #1
	bl ovy328_219e950
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e99c
	ldr r0, _0219D548 ; =0x00000551
	bl GFL_SndSEPlay
	add r0, r4, #2
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D3E0:
	mov r1, #1
	mov r7, #1
	bl ovy328_219e950
	cmp r0, #1
	bne _0219D424
	add r0, r5, #0
	add r1, r7, #0
	bl ovy328_219e99c
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e424
	mov r6, #0x64
	mov r0, #0x64
	str r6, [r5, r4]
	add r0, #0xe8
	ldr r0, [r5, r0]
	mov r2, #0
	add r1, r0, #0
	mov r0, #0x64
	orr r1, r7
	add r0, #0xe8
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	add r3, r7, #0
	bl ovy328_219da54
	bl sub_0203D554
	cmp r0, #1
	beq _0219D426
_0219D424:
	b _0219D540
_0219D426:
	add r0, r6, #0
	add r0, #0xe8
	ldr r1, [r5, r0]
	mov r0, #2
	bic r1, r0
	add r0, r6, #0
	add r0, #0xe8
	str r1, [r5, r0]
	add r6, #0xec
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl ovy328_219da84
	pop {r3, r4, r5, r6, r7, pc}
_0219D446:
	mov r1, #0
	bl ovy328_219e950
	cmp r0, #1
	bne _0219D540
	add r0, r5, #0
	mov r1, #1
	bl ovy328_219e99c
	add r0, r5, #0
	bl ovy328_219e630
	add r0, r4, #0
	add r0, #0x52
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D466:
	bl sub_0219E450
	cmp r0, #1
	bne _0219D480
	add r0, r4, #4
	ldr r1, [r5, r0]
	mov r0, #8
	orr r1, r0
	add r0, r4, #4
	str r1, [r5, r0]
	ldr r0, _0219D544 ; =0x00002710
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D480:
	add r0, r5, #0
	bl ovy328_219e704
	add r0, r5, #0
	bl ovy328_219e724
	cmp r0, #1
	bne _0219D540
	add r0, r4, #0
	add r0, #0x5c
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D498:
	bl ovy328_219e704
	add r0, r5, #0
	bl ovy328_219e894
	cmp r0, #1
	bne _0219D540
	add r0, r5, #0
	mov r1, #1
	bl ovy328_219e950
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e99c
	add r0, r5, #0
	bl ovy328_219e6e0
	add r0, r4, #0
	add r0, #0x66
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219D4C4:
	mov r1, #1
	mov r7, #1
	bl ovy328_219e950
	cmp r0, #1
	bne _0219D540
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219D4EA
	ldr r0, _0219D544 ; =0x00002710
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r4, #0x10
	str r0, [r5, r4]
	b _0219D524
_0219D4EA:
	mov r6, #0x64
	mov r0, #0x64
	str r6, [r5, r4]
	add r0, #0xe8
	ldr r0, [r5, r0]
	add r1, r0, #0
	mov r0, #0x64
	orr r1, r7
	add r0, #0xe8
	str r1, [r5, r0]
	bl sub_0203D554
	cmp r0, #1
	bne _0219D524
	add r0, r6, #0
	add r0, #0xe8
	ldr r1, [r5, r0]
	mov r0, #2
	bic r1, r0
	add r0, r6, #0
	add r0, #0xe8
	str r1, [r5, r0]
	add r6, #0xec
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #0
	bl ovy328_219da84
_0219D524:
	add r0, r5, #0
	mov r1, #1
	bl ovy328_219e99c
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219e424
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy328_219da54
_0219D540:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D544: .word 0x00002710
_0219D548: .word 0x00000551
	thumb_func_end ovy328_219d1f4

	thumb_func_start ovy328_219d54c
ovy328_219d54c: ; 0x0219D54C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x40]
	bl sub_02021A3C
	mov r4, #0
_0219D558:
	lsl r0, r4, #3
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x50
	ldrb r0, [r0]
	ldr r6, [r7, #0x40]
	cmp r0, #0
	beq _0219D586
	ldr r0, [r5, #0x4c]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D586
	ldr r0, [r5, #0x4c]
	bl BmpWin_FlushChar
	add r5, #0x50
	mov r0, #0
	strb r0, [r5]
_0219D586:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219D558
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219d54c

	thumb_func_start sub_0219D590
sub_0219D590: ; 0x0219D590
	cmp r1, #0x12
	blo _0219D598
	mov r0, #0
	bx lr
_0219D598:
	mov r2, #0x5f
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219D590

	thumb_func_start ovy328_219d5a4
ovy328_219d5a4: ; 0x0219D5A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldrh r1, [r7]
	ldr r0, _0219D638 ; =0x0000011D
	ldr r4, _0219D63C ; =0x0219EC3C
	ldr r6, _0219D640 ; =0x0219EC48
	ldr r5, _0219D644 ; =0x0219EC68
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
_0219D5BE:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _0219D5E4
	ldrb r0, [r4, #3]
	ldrb r1, [r4, #1]
	ldrb r3, [r4, #2]
	lsl r0, r0, #5
	str r0, [sp]
	ldrh r0, [r7]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl GFL_G2DIOLoadArcNCLRDefault
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blt _0219D5BE
_0219D5E4:
	mov r4, #0
_0219D5E6:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _0219D608
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
	blt _0219D5E6
_0219D608:
	mov r4, #0
	add r6, r4, #0
_0219D60C:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _0219D62C
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
	blt _0219D60C
_0219D62C:
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D638: .word 0x0000011D
_0219D63C: .word 0x0219EC3C
_0219D640: .word 0x0219EC48
_0219D644: .word 0x0219EC68
	thumb_func_end ovy328_219d5a4

	thumb_func_start ovy328_219d648
ovy328_219d648: ; 0x0219D648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0xc]
	add r4, r2, #0
	add r6, r3, #0
	bl GetDefaultUINarcIdx
	ldrh r1, [r5]
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x10]
	bl sub_0202D820
	add r1, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	add r2, r4, #0
	lsl r3, r6, #5
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	bl GFL_G2DIOLoadArcNCLRDefault
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
_0219D6C0:
	lsl r0, r4, #6
	add r2, r7, #0
	add r3, r1, r0
_0219D6C6:
	lsl r0, r2, #1
	ldrh r6, [r3, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r3, r0]
	cmp r2, #0x20
	blt _0219D6C6
	add r4, r4, #1
	cmp r4, #0x18
	blt _0219D6C0
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl GFL_BGSysLoadScr
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219d648

	thumb_func_start ovy328_219d6f0
ovy328_219d6f0: ; 0x0219D6F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	ldr r0, [r7, #0x34]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0219EAE8
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
	cmp r2, #1
	bne _0219D72E
	add r6, r7, #0
	add r6, #0x24
	b _0219D736
_0219D72E:
	cmp r2, #0
	bne _0219D736
	add r6, r7, #0
	add r6, #0x20
_0219D736:
	mov r2, #0
	str r2, [sp, #0x24]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _0219D802
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
_0219D75A:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219D802
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219D590
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_0219D590
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
	bl Oam_CreateSprite
	str r0, [r6, r4]
	ldrb r0, [r5, #3]
	mov r1, #0
	cmp r0, #1
	bne _0219D7BA
	mov r1, #1
_0219D7BA:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219D7CA
	mov r1, #1
_0219D7CA:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _0219D7E2
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219D7E2:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _0219D7F4
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219D7F4:
	ldr r0, [sp, #0x24]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _0219D75A
_0219D802:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219d6f0

	thumb_func_start ovy328_219d808
ovy328_219d808: ; 0x0219D808
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	ldr r0, _0219D884 ; =0x0000011D
	add r4, r2, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0219EAE8
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
	bl Oam_LoadNCLRFile
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
	bl Oam_LoadNCGRFile
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
	bl Oam_LoadNCERFile
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
_0219D884: .word 0x0000011D
	thumb_func_end ovy328_219d808

	thumb_func_start ovy328_219d888
ovy328_219d888: ; 0x0219D888
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl GetDefaultUINarcIdx
	ldrh r1, [r5]
	bl GFL_ArcSysCreateFileHandle
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0219EAE8
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
	mov r3, #4
	str r3, [sp, #4]
	ldrh r0, [r5]
	add r1, r7, #0
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, #0xfc
	bl Oam_LoadNCLRFile
	str r0, [r5, #4]
	ldrh r0, [r5]
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	add r3, r6, #0
	bl Oam_LoadNCGRFile
	str r0, [r5, #8]
	ldrh r3, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl Oam_LoadNCERFile
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219d888

	thumb_func_start ovy328_219d904
ovy328_219d904: ; 0x0219D904
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0219EAE8
	add r6, r0, #0
	ldr r2, _0219D980 ; =0x0219ECBC
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219d808
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219d888
	ldr r2, _0219D984 ; =0x0219ED04
	ldr r3, _0219D988 ; =0x0219EC26
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219d6f0
	ldr r2, _0219D98C ; =0x0219EC78
	ldr r3, _0219D990 ; =0x0219EC1C
	add r0, r5, #0
	mov r1, #0
	bl ovy328_219d6f0
	ldrh r1, [r5]
	mov r0, #0
	bl sub_02042BA8
	ldrh r1, [r5]
	mov r0, #0x17
	bl GFL_ArcSysCreateFileHandle
	ldrh r1, [r5]
	add r7, r0, #0
	mov r2, #0
	str r1, [sp]
	mov r1, #6
	mov r3, #0x80
	mov r4, #0x80
	bl sub_0204BC48
	str r0, [r5, #0x1c]
	add r0, r7, #0
	bl GFL_ArcToolFree
	ldrh r0, [r5]
	add r1, r6, #0
	bl sub_0202AE5C
	add r4, #0x80
	str r0, [r5, r4]
	ldr r2, _0219D994 ; =0x0219ECDC
	add r0, r5, #0
	mov r1, #0
	mov r3, #6
	bl ovy328_219dafc
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D980: .word 0x0219ECBC
_0219D984: .word 0x0219ED04
_0219D988: .word 0x0219EC26
_0219D98C: .word 0x0219EC78
_0219D990: .word 0x0219EC1C
_0219D994: .word 0x0219ECDC
	thumb_func_end ovy328_219d904

	thumb_func_start ovy328_219d998
ovy328_219d998: ; 0x0219D998
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_0219D99E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #4
	blt _0219D99E
	ldr r0, [r5, #0x20]
	bl sub_0204C108
	ldr r0, [r5, #0x10]
	bl sub_0204BCD0
	ldr r0, [r5, #0x14]
	bl sub_0204B98C
	ldr r0, [r5, #0x18]
	bl sub_0204BE64
	ldr r0, [r5, #4]
	bl sub_0204BCD0
	ldr r0, [r5, #8]
	bl sub_0204B98C
	ldr r0, [r5, #0xc]
	bl sub_0204BE64
	ldr r0, [r5, #0x1c]
	bl sub_0204BCD0
	mov r7, #0x45
	lsl r7, r7, #2
	mov r4, #0
	sub r7, #0x10
_0219D9E6:
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0202B030
	ldr r0, [r6, r7]
	bl GFL_BitmapFree
	add r4, r4, #1
	cmp r4, #4
	blt _0219D9E6
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0202AEAC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219d998

	thumb_func_start ovy328_219da0c
ovy328_219da0c: ; 0x0219DA0C
	push {r3, r4, r5, lr}
	cmp r1, #1
	bne _0219DA30
	cmp r2, #4
	bge _0219DA50
	add r5, r0, #0
	add r5, #0x24
	lsl r4, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219DA30:
	cmp r1, #0
	bne _0219DA50
	cmp r2, #1
	bge _0219DA50
	add r4, r0, #0
	add r4, #0x20
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
_0219DA50:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy328_219da0c

	thumb_func_start ovy328_219da54
ovy328_219da54: ; 0x0219DA54
	push {r3, lr}
	cmp r1, #1
	bne _0219DA6C
	cmp r2, #4
	bge _0219DA80
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x24]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219DA6C:
	cmp r1, #0
	bne _0219DA80
	cmp r2, #1
	bge _0219DA80
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x20]
	add r1, r3, #0
	bl sub_0204C124
_0219DA80:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy328_219da54

	thumb_func_start ovy328_219da84
ovy328_219da84: ; 0x0219DA84
	push {r3, lr}
	cmp r1, #1
	bne _0219DAA0
	cmp r2, #4
	bge _0219DAB8
	lsl r1, r2, #2
	add r0, r0, r1
	lsl r1, r3, #0x18
	ldr r0, [r0, #0x24]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	pop {r3, pc}
_0219DAA0:
	cmp r1, #0
	bne _0219DAB8
	cmp r2, #1
	bge _0219DAB8
	lsl r1, r2, #2
	add r0, r0, r1
	lsl r1, r3, #0x18
	ldr r0, [r0, #0x20]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
_0219DAB8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy328_219da84

	thumb_func_start ovy328_219dabc
ovy328_219dabc: ; 0x0219DABC
	push {r4, lr}
	mov r4, #1
	cmp r1, #1
	bne _0219DADC
	cmp r2, #4
	blt _0219DACC
	mov r0, #0
	pop {r4, pc}
_0219DACC:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x24]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DAF8
	b _0219DAF6
_0219DADC:
	cmp r1, #0
	bne _0219DAF8
	cmp r2, #1
	blt _0219DAE8
	mov r0, #0
	pop {r4, pc}
_0219DAE8:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x20]
	bl sub_0204C560
	cmp r0, #0
	bne _0219DAF8
_0219DAF6:
	mov r4, #0
_0219DAF8:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy328_219dabc

	thumb_func_start ovy328_219dafc
ovy328_219dafc: ; 0x0219DAFC
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
	mov r0, #0x45
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0x45
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #0x45
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0x14
	str r1, [sp]
	add r4, r2, #0
	mov r7, #0
	str r0, [sp, #0x18]
_0219DB34:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0219DBC6
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
	bl sub_0219D590
	ldr r1, [sp, #4]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r1, #1
	bl sub_0219D590
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
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0219DBC0
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_0202B098
_0219DBC0:
	add r7, r7, #1
	cmp r7, #4
	blt _0219DB34
_0219DBC6:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219dafc

	thumb_func_start ovy328_219dbcc
ovy328_219dbcc: ; 0x0219DBCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r6, #4
	bge _0219DC54
	mov r7, #0x41
	lsl r7, r7, #2
	add r0, r5, r7
	lsl r4, r6, #2
	str r0, [sp, #0x10]
	ldr r0, [r0, r4]
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x3c]
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
	add r7, #0x10
	add r7, r5, r7
	ldr r0, [r7, r4]
	bl sub_0202B0F4
	ldr r0, _0219DC58 ; =0x0219ECDC
	lsl r1, r6, #3
	add r0, r0, r1
	ldrb r0, [r0, #6]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0219D590
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r6, #1
	bl sub_0219D590
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
_0219DC54:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DC58: .word 0x0219ECDC
	thumb_func_end ovy328_219dbcc

	thumb_func_start sub_0219DC5C
sub_0219DC5C: ; 0x0219DC5C
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _0219DC6C ; =sub_0202B098
	add r1, r2, #0
	bx r3
	.align 2, 0
_0219DC6C: .word sub_0202B098
	thumb_func_end sub_0219DC5C

	thumb_func_start ovy328_219dc70
ovy328_219dc70: ; 0x0219DC70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0219DCF0 ; =0x0219ED38
	add r7, r0, #0
	mov r4, #0
_0219DC7A:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219DCB2
	lsl r1, r4, #3
	add r6, r7, r1
	ldrb r1, [r5, #4]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r5, #1]
	bl BmpWin_CreateDynamic
	str r0, [r6, #0x4c]
	bl BmpWin_FlushMap
	ldr r0, [r6, #0x4c]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0x16
	blt _0219DC7A
_0219DCB2:
	ldrh r1, [r7]
	mov r0, #0x17
	bl GFL_ArcSysCreateFileHandle
	mov r6, #0x20
	str r6, [sp]
	ldrh r1, [r7]
	mov r5, #6
	add r5, #0xfa
	str r1, [sp, #4]
	mov r1, #6
	mov r2, #0
	add r3, r5, #0
	add r4, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	ldrh r0, [r7]
	mov r1, #6
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r5, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219DCF0: .word 0x0219ED38
	thumb_func_end ovy328_219dc70

	thumb_func_start ovy328_219dcf4
ovy328_219dcf4: ; 0x0219DCF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r7, r3, #0
	bl ovy328_219dd54
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	lsl r3, r7, #0x10
	add r1, #0x4c
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r1, [r5, #0x40]
	lsr r3, r3, #0x10
	bl sub_0219A2A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219dcf4

	thumb_func_start ovy328_219dd34
ovy328_219dd34: ; 0x0219DD34
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0219DD3C:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _0219DD4C
	bl BmpWin_Free
	str r7, [r5, #0x4c]
_0219DD4C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0219DD3C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219dd34

	thumb_func_start ovy328_219dd54
ovy328_219dd54: ; 0x0219DD54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r4, r1, #3
	add r0, r5, r4
	ldr r0, [r0, #0x4c]
	add r6, r2, #0
	bl BmpWin_GetBitmap
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	add r0, r5, r4
	mov r1, #1
	add r0, #0x50
	strb r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy328_219dd54

	thumb_func_start ovy328_219dd78
ovy328_219dd78: ; 0x0219DD78
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x15
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #4
	str r0, [sp]
	sub r0, r1, #4
	ldr r2, [r5, r0]
	mov r0, #1
	mov r6, #0
	ldr r7, [r5, r1]
	tst r2, r0
	beq _0219DDA0
	add r6, r0, #0
	sub r0, r1, #4
	ldr r2, [r5, r0]
	mov r0, #1
	bic r2, r0
	sub r0, r1, #4
	str r2, [r5, r0]
_0219DDA0:
	add r0, r5, #0
	bl ovy328_219e208
	cmp r0, #0
	blt _0219DDCA
	cmp r0, #3
	bgt _0219DDCA
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	sub r0, r1, #4
	ldr r2, [r5, r0]
	mov r0, #2
	orr r2, r0
	sub r0, r1, #4
	str r2, [r5, r0]
	mov r6, #1
	ldr r0, _0219DF90 ; =0x0000054C
	b _0219DDE6
_0219DDCA:
	cmp r0, #4
	bne _0219DDF0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #9
	mov r6, #2
	bl ovy328_219da0c
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0x80
	str r1, [r5, r0]
	ldr r0, _0219DF94 ; =0x00000551
_0219DDE6:
	bl GFL_SndSEPlay
	mov r0, #1
	bl sub_0203D564
_0219DDF0:
	cmp r6, #0
	bne _0219DE38
	mov r4, #0x53
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r0, #2
	tst r0, r1
	bne _0219DE1E
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219DE1E
	ldr r1, [r5, r4]
	mov r0, #2
	orr r0, r1
	str r0, [r5, r4]
	ldr r0, _0219DF98 ; =0x00000548
	mov r6, #1
	bl GFL_SndSEPlay
	mov r0, #0
	bl sub_0203D564
_0219DE1E:
	bl sub_0203DF44
	mov r1, #0x40
	tst r0, r1
	beq _0219DE86
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r2, #2
	tst r2, r1
	beq _0219DE38
	cmp r6, #0
	beq _0219DE3A
_0219DE38:
	b _0219DF44
_0219DE3A:
	add r2, r0, #4
	ldr r2, [r5, r2]
	cmp r2, #3
	bne _0219DE4E
	add r1, r0, #0
	add r1, #8
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _0219DE72
	b _0219DE68
_0219DE4E:
	add r2, r0, #4
	ldr r2, [r5, r2]
	sub r3, r2, #1
	add r2, r0, #4
	str r3, [r5, r2]
	cmp r3, #0
	bge _0219DE72
	mov r2, #4
	tst r1, r2
	beq _0219DE6C
	add r1, r0, #0
	add r1, #8
	ldr r1, [r5, r1]
_0219DE68:
	sub r1, r1, #1
	b _0219DE6E
_0219DE6C:
	mov r1, #3
_0219DE6E:
	add r0, r0, #4
	str r1, [r5, r0]
_0219DE72:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #1
	cmp r0, r7
	beq _0219DE84
	ldr r0, _0219DF98 ; =0x00000548
	bl GFL_SndSEPlay
_0219DE84:
	b _0219DF3E
_0219DE86:
	bl sub_0203DF44
	mov r4, #0x80
	tst r0, r4
	beq _0219DEF4
	add r0, r4, #0
	add r0, #0xcc
	ldr r1, [r5, r0]
	mov r0, #2
	tst r0, r1
	beq _0219DF44
	cmp r6, #0
	bne _0219DF44
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _0219DEB6
	add r0, r4, #0
	add r0, #0xd4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219DEE0
	b _0219DED6
_0219DEB6:
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r5, r0]
	add r2, r4, #0
	add r0, r0, #1
	add r2, #0xd0
	str r0, [r5, r2]
	add r2, r4, #0
	add r2, #0xd4
	ldr r2, [r5, r2]
	sub r2, r2, #1
	cmp r0, r2
	ble _0219DEE0
	mov r0, #4
	tst r0, r1
	beq _0219DEDA
_0219DED6:
	mov r0, #0
	b _0219DEDC
_0219DEDA:
	mov r0, #3
_0219DEDC:
	add r4, #0xd0
	str r0, [r5, r4]
_0219DEE0:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #1
	cmp r0, r7
	beq _0219DEF2
	ldr r0, _0219DF98 ; =0x00000548
	bl GFL_SndSEPlay
_0219DEF2:
	b _0219DF3E
_0219DEF4:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219DF1C
	add r6, r1, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #9
	bl ovy328_219da0c
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0x80
	str r1, [r5, r0]
	ldr r0, _0219DF94 ; =0x00000551
	bl GFL_SndSEPlay
	b _0219DF3E
_0219DF1C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219DF44
	add r4, #0xcc
	ldr r2, [r5, r4]
	mov r0, #2
	tst r0, r2
	beq _0219DF3E
	cmp r6, #0
	bne _0219DF3E
	ldr r0, _0219DF90 ; =0x0000054C
	mov r6, #2
	str r1, [sp]
	bl GFL_SndSEPlay
_0219DF3E:
	mov r0, #0
	bl sub_0203D564
_0219DF44:
	ldr r0, [sp]
	cmp r0, #1
	bne _0219DF5A
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x30
	sub r0, #0x14
	str r1, [r5, r0]
_0219DF5A:
	cmp r6, #1
	bne _0219DF8C
	add r0, r5, #0
	mov r1, #1
	mov r4, #1
	bl ovy328_219df9c
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	mov r3, #0
	bl ovy328_219da84
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r3, #2
	tst r0, r3
	beq _0219DF8C
	add r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy328_219da84
_0219DF8C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DF90: .word 0x0000054C
_0219DF94: .word 0x00000551
_0219DF98: .word 0x00000548
	thumb_func_end ovy328_219dd78

	thumb_func_start ovy328_219df9c
ovy328_219df9c: ; 0x0219DF9C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	cmp r1, #0
	bne _0219DFDE
	ldr r0, [r5, #0x44]
	mov r1, #0x31
	bl sub_0204898C
	add r4, r0, #0
	mov r0, #0xf1
	str r4, [sp]
	mov r1, #0
	str r1, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #4
	bl ovy328_219dcf4
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	bl ovy328_219dfe4
	add r0, r5, #0
	bl ovy328_219e138
	add r0, r5, #0
	bl ovy328_219e1b0
_0219DFDE:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy328_219df9c

	thumb_func_start ovy328_219dfe4
ovy328_219dfe4: ; 0x0219DFE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_0219DFEE:
	add r0, r5, #0
	add r1, r6, #1
	add r2, r4, #0
	bl ovy328_219dd54
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0xb
	add r2, r4, #0
	bl ovy328_219dd54
	add r6, r6, #1
	cmp r6, #0xa
	blt _0219DFEE
	ldr r0, [r5, #0x38]
	ldrb r0, [r0, #0x15]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0219E03E
	ldr r0, [r5, #0x44]
	mov r1, #0x32
	bl sub_0204898C
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xf1
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, r4, #0
	bl ovy328_219dcf4
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219E03E:
	ble _0219E134
_0219E040:
	ldr r1, [r5, #0x38]
	lsl r6, r4, #2
	add r1, r1, r6
	ldrb r1, [r1, #0x18]
	ldr r0, [r5, #0x48]
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #1
	mov r2, #0
	mov r3, #0
	bl ovy328_219dcf4
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x44]
	mov r1, #0x34
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x38]
	ldrh r1, [r5]
	add r0, r0, r6
	ldrh r0, [r0, #0x1a]
	str r0, [sp, #0xc]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x3c
	blx sub_0208D65C
	add r1, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r2, #2
	mov r3, #2
	bl sub_02024A14
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [sp, #0xc]
	mov r1, #0x3c
	blx sub_0208D65C
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r2, #2
	mov r3, #2
	bl sub_02024A14
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r1, r4, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, #0xb
	mov r2, #0
	mov r3, #0
	bl ovy328_219dcf4
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _0219E040
_0219E134:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219dfe4

	thumb_func_start ovy328_219e138
ovy328_219e138: ; 0x0219E138
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_0219E140:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0219DC5C
	add r6, r6, #1
	cmp r6, #3
	blt _0219E140
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r7, [r5, r0]
	cmp r7, #0
	beq _0219E192
	ble _0219E192
_0219E15C:
	ldr r2, [r5, #0x38]
	lsl r1, r4, #2
	add r1, r2, r1
	ldr r0, [r5, #0x48]
	ldr r1, [r1, #8]
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ovy328_219dbcc
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_0219DC5C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, r7
	blt _0219E15C
_0219E192:
	mov r4, #0
	add r6, r4, #0
_0219E196:
	add r3, r6, #0
	cmp r7, r4
	bgt _0219E19E
	mov r3, #2
_0219E19E:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ovy328_219da0c
	add r4, r4, #1
	cmp r4, #3
	blt _0219E196
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219e138

	thumb_func_start ovy328_219e1b0
ovy328_219e1b0: ; 0x0219E1B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #4
	mov r4, #1
	tst r0, r1
	beq _0219E1C4
	mov r4, #0
_0219E1C4:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r7, #0
	bl sub_0219DC5C
	cmp r4, #1
	bne _0219E1F2
	ldr r0, [r5, #0x44]
	mov r1, #0x33
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #3
	add r2, r6, #0
	add r3, r7, #0
	str r7, [sp]
	bl ovy328_219dbcc
	add r0, r6, #0
	bl GFL_StrBufFree
_0219E1F2:
	mov r3, #1
	cmp r4, #0
	bne _0219E1FA
	mov r3, #3
_0219E1FA:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	bl ovy328_219da0c
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy328_219e1b0

	thumb_func_start ovy328_219e208
ovy328_219e208: ; 0x0219E208
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	ldr r0, _0219E270 ; =0x0219ECA0
	mvn r4, r4
	bl sub_0203DA0C
	cmp r0, #0
	blt _0219E246
	cmp r0, #2
	bgt _0219E246
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, r0
	ble _0219E22C
	add r4, r0, #0
	b _0219E26C
_0219E22C:
	add r0, r1, #0
	sub r0, #8
	ldr r2, [r5, r0]
	mov r0, #2
	bic r2, r0
	add r0, r1, #0
	sub r0, #8
	str r2, [r5, r0]
	mov r0, #1
	orr r0, r2
	sub r1, #8
_0219E242:
	str r0, [r5, r1]
	b _0219E26C
_0219E246:
	sub r1, r0, #3
	cmp r1, #1
	bhi _0219E266
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #4
	tst r0, r2
	bne _0219E25C
	mov r4, #3
	b _0219E26C
_0219E25C:
	mov r0, #2
	bic r2, r0
	mov r0, #1
	orr r0, r2
	b _0219E242
_0219E266:
	cmp r0, #5
	bne _0219E26C
	mov r4, #4
_0219E26C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E270: .word 0x0219ECA0
	thumb_func_end ovy328_219e208

	thumb_func_start ovy328_219e274
ovy328_219e274: ; 0x0219E274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #0x15
	mov r2, #0
	add r5, r0, #0
	bl ovy328_219dd54
	cmp r4, #0
	ldr r0, [r5, #0x44]
	bne _0219E370
	mov r1, #0x35
	mov r4, #0x35
	bl sub_0204898C
	ldrh r1, [r5]
	add r4, #0xcb
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl GFL_StrBufCreate
	mov r2, #0x15
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r4, r0, #0
	ldr r1, [r5, #0x38]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r0, [r5, #0x48]
	ldr r1, [r1, #8]
	bl sub_0204898C
	str r0, [sp, #0x10]
	mov r7, #1
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	mov r1, #0x15
	str r7, [sp]
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #1
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #4
	add r6, r0, #0
	bl sub_02024A14
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	str r7, [sp]
	ldr r1, [r5, #0x38]
	add r0, r6, #0
	ldrh r1, [r1, #0x16]
	mov r2, #4
	mov r3, #1
	bl sub_02024A14
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #2
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0
	mov r3, #0
	bl ovy328_219dcf4
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219E370:
	mov r1, #0x36
	mov r4, #0x36
	bl sub_0204898C
	ldrh r1, [r5]
	add r4, #0xca
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldrh r1, [r5]
	mov r0, #0x40
	bl GFL_StrBufCreate
	mov r7, #1
	mov r1, #0x15
	str r7, [sp]
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #1
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #4
	add r6, r0, #0
	bl sub_02024A14
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	str r7, [sp]
	ldr r1, [r5, #0x38]
	add r0, r6, #0
	ldrh r1, [r1, #0x16]
	mov r2, #4
	mov r3, #1
	bl sub_02024A14
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #1
	add r2, r6, #0
	mov r3, #0
	bl sub_0202437C
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0
	mov r3, #0
	bl ovy328_219dcf4
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219e274

	thumb_func_start ovy328_219e424
ovy328_219e424: ; 0x0219E424
	push {r3, lr}
	cmp r1, #1
	bne _0219E43C
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	pop {r3, pc}
_0219E43C:
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy328_219e424

	thumb_func_start sub_0219E450
sub_0219E450: ; 0x0219E450
	ldr r0, [r0, #0x38]
	ldr r3, _0219E458 ; =sub_02016BEC
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0219E458: .word sub_02016BEC
	thumb_func_end sub_0219E450

	thumb_func_start sub_0219E45C
sub_0219E45C: ; 0x0219E45C
	ldr r1, [r0, #0x38]
	ldr r1, [r1, #4]
	cmp r1, #1
	bne _0219E470
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	mov r1, #4
	orr r1, r3
	str r1, [r0, r2]
_0219E470:
	ldr r3, _0219E474 ; =ovy328_219e8e8
	bx r3
	.align 2, 0
_0219E474: .word ovy328_219e8e8
	thumb_func_end sub_0219E45C

	thumb_func_start ovy328_219e478
ovy328_219e478: ; 0x0219E478
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, _0219E4D0 ; =0x0000011D
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0
	bl sub_0204B354
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	ldr r6, [r0, #0xc]
	add r1, #0x67
	add r0, r6, #0
	add r0, #0x20
	add r1, r5, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	add r1, r4, #0
	add r6, #0x40
	add r1, #0x87
	add r0, r6, #0
	add r1, r5, r1
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	bl GFL_HeapFree
	add r0, r4, #0
	mov r1, #0
	add r0, #0x63
	str r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x2f
	ldr r1, [r5, r0]
	mov r0, #0x10
	orr r0, r1
	add r4, #0x2f
	str r0, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E4D0: .word 0x0000011D
	thumb_func_end ovy328_219e478

	thumb_func_start ovy328_219e4d4
ovy328_219e4d4: ; 0x0219E4D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0x53
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	mov r1, #0x10
	tst r2, r1
	beq _0219E5DC
	add r4, r0, #0
	ldr r2, [sp]
	add r4, #0x34
	ldr r4, [r2, r4]
	lsl r2, r1, #6
	add r3, r0, #0
	add r4, r4, r2
	ldr r2, [sp]
	add r0, #0x34
	str r4, [r2, r0]
	lsl r0, r1, #0xc
	add r3, #0x34
	cmp r4, r0
	blt _0219E50A
	sub r1, r4, r0
	add r0, r2, #0
	str r1, [r0, r3]
_0219E50A:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	mov r3, #0
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0219E5E0 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r4, r0, #0x10
	ldr r0, [sp, #4]
	add r0, r0, #4
	mov ip, r0
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	add r0, #0x24
	str r0, [sp, #0x10]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x44
	str r0, [sp, #4]
_0219E550:
	ldr r0, [sp]
	lsl r1, r3, #1
	add r6, r0, r1
	mov r0, ip
	ldrh r5, [r6, r0]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x10]
	add r3, r3, #1
	ldrh r2, [r6, r0]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	and r0, r5
	ldr r5, [sp, #8]
	asr r0, r0, #0xa
	and r5, r2
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r4
	asr r5, r5, #0xc
	add r0, r0, r5
	mov r5, #0x1f
	and r5, r2
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r4
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r2
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r7
	mul r1, r4
	asr r1, r1, #0xc
	add r1, r7, r1
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x13
	lsl r0, r0, #0xa
	orr r1, r5
	orr r1, r0
	ldr r0, [sp, #4]
	cmp r3, #0x10
	strh r1, [r6, r0]
	blt _0219E550
	mov r3, #0x71
	ldr r2, [sp]
	lsl r3, r3, #2
	add r2, r2, r3
	mov r0, #0xe
	mov r1, #0x40
	mov r3, #0x20
	bl sub_0205FA10
_0219E5DC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E5E0: .word FX_SinCosTable_
	thumb_func_end ovy328_219e4d4

	thumb_func_start ovy328_219e5e4
ovy328_219e5e4: ; 0x0219E5E4
	push {r4, r5, r6, r7}
	mov r2, #0x57
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	mov r6, #0
	add r1, r1, #1
	str r1, [r0, r2]
	ldr r5, _0219E62C ; =0x0219EC88
	sub r1, r6, #1
_0219E5F6:
	lsl r4, r6, #2
	add r3, r5, r4
	ldrsh r4, [r5, r4]
	mov r7, #2
	ldrsh r3, [r3, r7]
	cmp r4, r1
	beq _0219E626
	ldr r7, [r0, r2]
	cmp r4, r7
	bne _0219E620
	mov r1, #0
	mvn r1, r1
	cmp r3, r1
	bne _0219E618
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0219E618:
	mov r1, #0x16
	lsl r1, r1, #4
	str r3, [r0, r1]
	b _0219E626
_0219E620:
	add r6, r6, #1
	cmp r6, #0xa
	blt _0219E5F6
_0219E626:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0219E62C: .word 0x0219EC88
	thumb_func_end ovy328_219e5e4

	thumb_func_start ovy328_219e630
ovy328_219e630: ; 0x0219E630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ovy328_219e6e0
	ldr r0, [r5, #0x44]
	mov r1, #0x20
	bl sub_0204898C
	mov r4, #0x4b
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r7, _0219E6DC ; =0x000039E3
	add r0, r4, #4
	strh r7, [r5, r0]
	add r0, r4, #0
	mov r6, #0
	add r0, #8
	str r6, [r5, r0]
	ldr r0, [r5, #0x44]
	mov r1, #0x21
	bl sub_0204898C
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r4, #0
	add r0, #0x10
	strh r7, [r5, r0]
	add r0, r4, #0
	add r0, #0x14
	str r6, [r5, r0]
	mov r7, #8
	str r7, [sp]
	ldrh r0, [r5]
	add r1, r5, r4
	mov r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	mov r3, #0x15
	bl sub_0202E1F0
	add r1, r4, #0
	sub r1, #8
	str r0, [r5, r1]
	str r7, [sp]
	ldrh r0, [r5]
	add r1, r4, #0
	add r1, #0xc
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0x18
	mov r3, #0x15
	bl sub_0202E1F0
	sub r1, r4, #4
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0202E41C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0202E41C
	add r4, #0x38
	str r6, [r5, r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E6DC: .word 0x000039E3
	thumb_func_end ovy328_219e630

	thumb_func_start ovy328_219e6e0
ovy328_219e6e0: ; 0x0219E6E0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x49
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_0219E6EA:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0219E6FC
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, r7]
_0219E6FC:
	add r4, r4, #1
	cmp r4, #2
	blt _0219E6EA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219e6e0

	thumb_func_start ovy328_219e704
ovy328_219e704: ; 0x0219E704
	push {r4, r5, r6, lr}
	mov r6, #0x49
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0219E70E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _0219E71C
	bl sub_0202E37C
_0219E71C:
	add r4, r4, #1
	cmp r4, #2
	blt _0219E70E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy328_219e704

	thumb_func_start ovy328_219e724
ovy328_219e724: ; 0x0219E724
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x49
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r6, #0
	mov r7, #0
	cmp r0, #0
	beq _0219E73E
	add r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219E742
_0219E73E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E742:
	ldr r0, _0219E884 ; =0x0219EC30
	bl sub_0203DA0C
	cmp r0, #0
	bne _0219E766
	ldr r0, [r5, r4]
	mov r1, #1
	mov r7, #1
	bl sub_0202E430
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0202E41C
	add r4, #0x40
	str r6, [r5, r4]
	b _0219E782
_0219E766:
	cmp r0, #1
	bne _0219E790
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0202E41C
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r7, #1
	bl sub_0202E430
	add r4, #0x40
	str r7, [r5, r4]
_0219E782:
	ldr r0, _0219E888 ; =0x0000054C
	mov r6, #1
	bl GFL_SndSEPlay
	mov r0, #1
	bl sub_0203D564
_0219E790:
	cmp r6, #0
	bne _0219E880
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x20
	tst r0, r1
	beq _0219E7C4
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219E7AE
	ldr r0, _0219E88C ; =0x00000548
	bl GFL_SndSEPlay
_0219E7AE:
	mov r4, #0x49
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0202E41C
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r6, #0
	mov r1, #0
	b _0219E7F2
_0219E7C4:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x10
	tst r0, r1
	beq _0219E7FC
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _0219E7DE
	ldr r0, _0219E88C ; =0x00000548
	bl GFL_SndSEPlay
_0219E7DE:
	mov r4, #0x49
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0202E41C
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r6, #1
	mov r1, #1
_0219E7F2:
	bl sub_0202E41C
	add r4, #0x40
	str r6, [r5, r4]
	b _0219E87A
_0219E7FC:
	bl GCTX_HIDGetPressedKeys
	mov r6, #1
	tst r0, r6
	beq _0219E84E
	mov r4, #0x59
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219E828
	add r0, r4, #0
	sub r0, #0x40
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0202E430
	sub r4, #0x3c
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0202E41C
	b _0219E83E
_0219E828:
	add r0, r4, #0
	sub r0, #0x40
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0202E41C
	sub r4, #0x3c
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0202E430
_0219E83E:
	ldr r0, _0219E888 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #0
	bl sub_0203D564
	mov r7, #1
	b _0219E880
_0219E84E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219E880
	mov r4, #0x49
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0202E41C
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r7, r6, #0
	bl sub_0202E430
	add r4, #0x40
	ldr r0, _0219E890 ; =0x00000551
	str r6, [r5, r4]
	bl GFL_SndSEPlay
_0219E87A:
	mov r0, #0
	bl sub_0203D564
_0219E880:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E884: .word 0x0219EC30
_0219E888: .word 0x0000054C
_0219E88C: .word 0x00000548
_0219E890: .word 0x00000551
	thumb_func_end ovy328_219e724

	thumb_func_start ovy328_219e894
ovy328_219e894: ; 0x0219E894
	push {r3, lr}
	mov r1, #0x59
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #0x40
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0219E8AC
	mov r0, #1
	pop {r3, pc}
_0219E8AC:
	bl sub_0202E438
	cmp r0, #0
	beq _0219E8B8
	mov r0, #1
	pop {r3, pc}
_0219E8B8:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy328_219e894

	thumb_func_start ovy328_219e8bc
ovy328_219e8bc: ; 0x0219E8BC
	push {r4, lr}
	mov r4, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219E8D2
	add r0, r4, #0
	bl sub_0203D564
	mov r4, #1
_0219E8D2:
	bl sub_0203DA48
	cmp r0, #1
	bne _0219E8E2
	mov r0, #1
	mov r4, #1
	bl sub_0203D564
_0219E8E2:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy328_219e8bc

	thumb_func_start ovy328_219e8e8
ovy328_219e8e8: ; 0x0219E8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	bl sub_0201361C
	ldr r1, [r5, #0x38]
	str r0, [sp]
	ldrb r0, [r1, #0x14]
	mov r4, #0
	cmp r0, #0
	ble _0219E946
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0x5a
	lsl r0, r0, #2
	add r7, r0, #4
_0219E90E:
	lsl r2, r4, #2
	add r1, r1, r2
	ldr r0, [sp]
	ldr r1, [r1, #8]
	add r6, r5, r2
	bl sub_02013640
	ldr r1, [sp, #4]
	str r0, [r6, r1]
	ldr r0, [r5, #0x38]
	ldrh r1, [r0, #0x16]
	ldr r0, [r6, r7]
	cmp r1, r0
	bge _0219E93C
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r4
	orr r1, r0
	mov r0, #0x5a
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219E93C:
	ldr r1, [r5, #0x38]
	add r4, r4, #1
	ldrb r0, [r1, #0x14]
	cmp r4, r0
	blt _0219E90E
_0219E946:
	ldr r0, [sp]
	bl sub_0201362C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy328_219e8e8

	thumb_func_start ovy328_219e950
ovy328_219e950: ; 0x0219E950
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r1, #0
	bne _0219E968
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, #8
	str r1, [r5, r0]
	bmi _0219E980
	b _0219E97C
_0219E968:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r1, r4, #0
	sub r2, #8
	sub r1, #0x40
	str r2, [r5, r0]
	cmp r2, r1
	bgt _0219E980
	sub r4, #0x40
_0219E97C:
	str r4, [r5, r0]
	mov r4, #1
_0219E980:
	mov r6, #0x5e
	lsl r6, r6, #2
	ldr r2, [r5, r6]
	mov r0, #1
	mov r1, #3
	bl sub_02044CFC
	ldr r2, [r5, r6]
	mov r0, #0
	mov r1, #3
	bl sub_02044CFC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy328_219e950

	thumb_func_start ovy328_219e99c
ovy328_219e99c: ; 0x0219E99C
	push {r3, lr}
	cmp r1, #0
	bne _0219E9BC
	mov r0, #0
	mov r1, #1
	bl sub_02044BD8
	mov r0, #1
	mov r1, #2
	bl sub_02044BD8
	mov r0, #2
	mov r1, #0
	bl sub_02044BD8
	pop {r3, pc}
_0219E9BC:
	mov r0, #0
	mov r1, #0
	bl sub_02044BD8
	mov r0, #1
	mov r1, #1
	bl sub_02044BD8
	mov r0, #2
	mov r1, #2
	bl sub_02044BD8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy328_219e99c

	thumb_func_start ovy328_219e9d8
ovy328_219e9d8: ; 0x0219E9D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219EA5C ; =0x000001C2
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219EA60 ; =0x0219EFA0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219EA64 ; =0x04000050
	ldr r0, _0219EA68 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219EA6C ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219EA70 ; =0x0219EDF0
	add r0, r7, #0
	bl GFL_BGSysSetVRAMBanks
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy328_219eb08
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy328_219ebac
	ldr r0, _0219EA74 ; =ovy328_219eaf4
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EA5C: .word 0x000001C2
_0219EA60: .word 0x0219EFA0
_0219EA64: .word 0x04000050
_0219EA68: .word 0x04001050
_0219EA6C: .word 0xFFFF1FFF
_0219EA70: .word 0x0219EDF0
_0219EA74: .word ovy328_219eaf4
	thumb_func_end ovy328_219e9d8

	thumb_func_start ovy328_219ea78
ovy328_219ea78: ; 0x0219EA78
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy328_219ebec
	add r0, r4, #0
	bl ovy328_219eb68
	bl sub_020232D8
	ldr r5, _0219EAC0 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219EAC4 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219EAC8 ; =0xFFFF1FFF
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
_0219EAC0: .word 0x04000050
_0219EAC4: .word 0x04001050
_0219EAC8: .word 0xFFFF1FFF
	thumb_func_end ovy328_219ea78

	thumb_func_start ovy328_219eacc
ovy328_219eacc: ; 0x0219EACC
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219EC08
	add r0, r4, #0
	bl sub_0219EBA0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy328_219eacc

	thumb_func_start sub_0219EAE0
sub_0219EAE0: ; 0x0219EAE0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EAE0

	thumb_func_start sub_0219EAE4
sub_0219EAE4: ; 0x0219EAE4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EAE4

	thumb_func_start sub_0219EAE8
sub_0219EAE8: ; 0x0219EAE8
	ldr r3, _0219EAF0 ; =sub_0219EC18
	add r0, r0, #4
	bx r3
	nop
_0219EAF0: .word sub_0219EC18
	thumb_func_end sub_0219EAE8

	thumb_func_start ovy328_219eaf4
ovy328_219eaf4: ; 0x0219EAF4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219EBA4
	add r0, r4, #4
	bl sub_0219EC10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy328_219eaf4

	thumb_func_start ovy328_219eb08
ovy328_219eb08: ; 0x0219EB08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	mov r2, #4
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	bl GFL_BGSysCreate
	add r0, r5, #0
	bl BmpWin_InitAllocator
	ldr r0, _0219EB60 ; =0x0219EDC4
	bl GFL_BGSysSetLCDConfig
	ldr r7, _0219EB64 ; =0x0219EE20
_0219EB2A:
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
	blo _0219EB2A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EB60: .word 0x0219EDC4
_0219EB64: .word 0x0219EE20
	thumb_func_end ovy328_219eb08

	thumb_func_start ovy328_219eb68
ovy328_219eb68: ; 0x0219EB68
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219EB9C ; =0x0219EE20
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219EB72:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219EB72
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EB9C: .word 0x0219EE20
	thumb_func_end ovy328_219eb68

	thumb_func_start sub_0219EBA0
sub_0219EBA0: ; 0x0219EBA0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219EBA0

	thumb_func_start sub_0219EBA4
sub_0219EBA4: ; 0x0219EBA4
	ldr r3, _0219EBA8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219EBA8: .word sub_02045A5C
	thumb_func_end sub_0219EBA4

	thumb_func_start ovy328_219ebac
ovy328_219ebac: ; 0x0219EBAC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219EBE8 ; =0x0219EDD4
	add r1, r6, #0
	add r2, r4, #0
	bl Oam_CreateSystem
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	bl sub_0204C028
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledA
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219EBE8: .word 0x0219EDD4
	thumb_func_end ovy328_219ebac

	thumb_func_start ovy328_219ebec
ovy328_219ebec: ; 0x0219EBEC
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
	thumb_func_end ovy328_219ebec

	thumb_func_start sub_0219EC08
sub_0219EC08: ; 0x0219EC08
	ldr r3, _0219EC0C ; =sub_0204B794
	bx r3
	.align 2, 0
_0219EC0C: .word sub_0204B794
	thumb_func_end sub_0219EC08

	thumb_func_start sub_0219EC10
sub_0219EC10: ; 0x0219EC10
	ldr r3, _0219EC14 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219EC14: .word sub_0204B7C8
	thumb_func_end sub_0219EC10

	thumb_func_start sub_0219EC18
sub_0219EC18: ; 0x0219EC18
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219EC18
_0219EC1C:
	.byte 0x00, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x04, 0x00, 0x01, 0x00
	.byte 0xA8, 0xC0, 0x80, 0xC0, 0xA8, 0xC0, 0xC0, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x03
	.byte 0x00, 0x00, 0x00, 0x03, 0xFF, 0x00, 0x00, 0x00, 0x07, 0x02, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00
	.byte 0x01, 0x02, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00
	.byte 0x35, 0x00, 0x36, 0x00, 0x20, 0x00, 0x21, 0x00, 0x07, 0x06, 0x00, 0x00, 0x03, 0x05, 0x00, 0x00
	.byte 0x01, 0x07, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x30, 0x02, 0x01, 0x00, 0x01, 0x04, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x01, 0x00, 0x10, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x1C, 0x34, 0x38, 0xF8, 0x3C, 0x54, 0x20, 0xE0, 0x5C, 0x74, 0x08, 0xC8, 0x84, 0x9C, 0x80, 0xE8
	.byte 0x60, 0x84, 0xD8, 0xF0, 0xA8, 0xC0, 0xE8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00
	.byte 0x00, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x14, 0x02, 0x28, 0x03
	.byte 0x01, 0x00, 0x05, 0x00, 0x14, 0x02, 0x28, 0x03, 0x01, 0x00, 0x06, 0x00, 0x14, 0x02, 0x28, 0x03
	.byte 0x01, 0x00, 0x07, 0x00, 0x14, 0x02, 0x28, 0x03, 0x01, 0x00, 0x08, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x03, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x03, 0x01
	.byte 0x00, 0x01, 0x01, 0x00, 0x00, 0x30, 0x03, 0x01, 0x00, 0x01, 0x02, 0x00, 0x01, 0x30, 0x03, 0x01
	.byte 0x00, 0x01, 0x03, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02
	.byte 0xC5, 0xCF, 0x19, 0x02, 0x55, 0xCF, 0x19, 0x02, 0x06, 0x01, 0x00, 0x1E, 0x03, 0x08, 0x06, 0x02
	.byte 0x03, 0x14, 0x02, 0x08, 0x06, 0x02, 0x05, 0x14, 0x02, 0x08, 0x06, 0x02, 0x07, 0x14, 0x02, 0x08
	.byte 0x06, 0x02, 0x09, 0x14, 0x02, 0x08, 0x06, 0x02, 0x0B, 0x14, 0x02, 0x08, 0x06, 0x02, 0x0D, 0x14
	.byte 0x02, 0x08, 0x06, 0x02, 0x0F, 0x14, 0x02, 0x08, 0x06, 0x02, 0x11, 0x14, 0x02, 0x08, 0x06, 0x02
	.byte 0x13, 0x14, 0x02, 0x08, 0x06, 0x02, 0x15, 0x14, 0x02, 0x08, 0x06, 0x16, 0x03, 0x08, 0x02, 0x08
	.byte 0x06, 0x16, 0x05, 0x08, 0x02, 0x08, 0x06, 0x16, 0x07, 0x08, 0x02, 0x08, 0x06, 0x16, 0x09, 0x08
	.byte 0x02, 0x08, 0x06, 0x16, 0x0B, 0x08, 0x02, 0x08, 0x06, 0x16, 0x0D, 0x08, 0x02, 0x08, 0x06, 0x16
	.byte 0x0F, 0x08, 0x02, 0x08, 0x06, 0x16, 0x11, 0x08, 0x02, 0x08, 0x06, 0x16, 0x13, 0x08, 0x02, 0x08
	.byte 0x06, 0x16, 0x15, 0x08, 0x02, 0x08, 0x00, 0x02, 0x0E, 0x1C, 0x06, 0x08, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x70, 0x6F, 0x77, 0x65, 0x72, 0x5F, 0x61, 0x70, 0x70, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68
	.byte 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219EC1C
