    .include "macros/function.inc"
	.include "overlay325.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy325_219ce80
ovy325_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0219CF1C ; =0x0000008B
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0xa9
	lsl r2, r2, #0x10
	mov r7, #1
	mov r5, #0xa9
	bl GFL_HeapCreateChild
	mov r1, #0xad
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0xa9
	bl GFL_ProcInitSubsystem
	mov r2, #0xad
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	blx MI_CpuFill8
	add r0, r4, #0
	strh r5, [r4]
	add r0, #0xc4
	str r6, [r0]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy325_219f098
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	ldrh r0, [r4]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1]
	ldrh r0, [r4]
	bl GFL_WordSetSystemCreateDefault
	add r5, #0xfb
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy325_219d01c
	mov r0, #6
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r4]
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
_0219CF1C: .word 0x0000008B
	thumb_func_end ovy325_219ce80

	thumb_func_start ovy325_219cf20
ovy325_219cf20: ; 0x0219CF20
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy325_219d1c4
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl sub_02022DA8
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl ovy325_219f138
	ldrh r4, [r4]
	add r0, r5, #0
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219CF6C ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CF6C: .word 0x0000008B
	thumb_func_end ovy325_219cf20

	thumb_func_start ovy325_219cf70
ovy325_219cf70: ; 0x0219CF70
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #3
	bhi _0219CFEA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219CF8A: ; jump table
	.short _0219CF92 - _0219CF8A - 2 ; case 0
	.short _0219CFAE - _0219CF8A - 2 ; case 1
	.short _0219CFC0 - _0219CF8A - 2 ; case 2
	.short _0219CFDC - _0219CF8A - 2 ; case 3
_0219CF92:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219CFEA
	ldr r0, [r5]
	mov r1, #7
	add r0, r0, #1
	str r0, [r5]
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	b _0219CFEA
_0219CFAE:
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, _0219D018 ; =0x00002710
	cmp r2, r1
	bne _0219CFEA
_0219CFBA:
	add r0, r0, #1
	str r0, [r5]
	b _0219CFEA
_0219CFC0:
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
	b _0219CFBA
_0219CFDC:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219CFEA
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219CFEA:
	add r0, r4, #0
	bl ovy325_219d1b4
	add r0, r4, #0
	bl ovy325_219daf8
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl ovy325_219f18c
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219F1A0
	add r4, #0xc0
	ldr r0, [r4]
	bl sub_0219F1A4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D018: .word 0x00002710
	thumb_func_end ovy325_219cf70

	thumb_func_start ovy325_219d01c
ovy325_219d01c: ; 0x0219D01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r1, #0x6b
	mov r3, #0
	lsl r1, r1, #2
	add r4, r0, #0
	str r3, [r4, r1]
	add r0, r1, #4
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #0x10
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #0x14
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #0x18
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r3, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	add r2, r1, #0
	str r3, [r4, r0]
	mov r6, #0x2b
	lsl r6, r6, #4
	add r7, r6, #0
	mov r0, #0x14
	add r2, #0x24
	str r0, [r4, r2]
	add r2, r1, #0
	add r2, #0x28
	str r3, [r4, r2]
	add r2, r1, #0
	add r2, #0x2c
	str r3, [r4, r2]
	add r2, r1, #0
	add r2, #0x30
	str r3, [r4, r2]
	add r2, r1, #0
	sub r0, #0x15
	add r2, #0x34
	str r0, [r4, r2]
	sub r0, r1, #4
	str r3, [r4, r0]
	add r0, r6, #0
	sub r0, #0xc8
	mov ip, r0
	add r0, r6, #0
	str r0, [sp, #0xc]
	sub r0, #0xc7
	str r3, [r4, r6]
	add r5, r3, #0
	str r0, [sp, #0xc]
	sub r7, #0xc6
	sub r6, #0x28
_0219D09A:
	lsl r0, r3, #2
	add r2, r4, r0
	mov r1, #0xff
	mov r0, ip
	strb r1, [r2, r0]
	ldr r0, [sp, #0xc]
	strb r5, [r2, r0]
	add r0, r4, r3
	strb r5, [r2, r7]
	add r3, r3, #1
	strb r5, [r0, r6]
	cmp r3, #0x28
	blt _0219D09A
	mov r6, #0
	add r1, #0x39
_0219D0B8:
	lsl r0, r5, #3
	add r2, r4, r0
	add r0, r2, #0
	add r0, #0xd0
	str r6, [r0]
	add r5, r5, #1
	str r6, [r2, r1]
	cmp r5, #0xd
	blt _0219D0B8
	ldrh r2, [r4]
	mov r0, #0x64
	mov r1, #0x2b
	bl sub_0204A934
	mov r5, #0x79
	lsl r5, r5, #2
	str r0, [r4, r5]
	add r2, r5, #0
	ldrh r3, [r4]
	add r0, r6, #0
	mov r1, #2
	sub r2, #0x82
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	sub r1, #0x44
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy325_219e7d8
	add r1, r5, #0
	sub r1, #0x18
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0219E944
	add r0, r4, #0
	bl ovy325_219d274
	add r0, r4, #0
	mov r1, #5
	mov r2, #8
	bl ovy325_219d35c
	ldrh r1, [r4]
	mov r0, #0x17
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r4]
	mov r3, #5
	lsl r3, r3, #6
	str r1, [sp, #4]
	add r7, r0, #0
	mov r1, #6
	mov r2, #4
	str r3, [sp, #8]
	bl sub_0204B0D4
	add r0, r7, #0
	bl GFL_ArcToolFree
	ldrh r1, [r4]
	mov r0, #0x64
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r4]
	ldr r3, [sp, #8]
	add r7, r0, #0
	str r1, [sp, #4]
	mov r1, #1
	add r2, r6, #0
	bl sub_0204B0D4
	add r0, r7, #0
	bl GFL_ArcToolFree
	add r0, r4, #0
	bl ovy325_219d734
	add r0, r4, #0
	add r1, r6, #0
	add r2, r6, #0
	bl ovy325_219d9ec
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl ovy325_219d9ec
	add r0, r4, #0
	add r1, r6, #0
	add r2, r6, #0
	bl ovy325_219de0c
	add r0, r4, #0
	add r1, r6, #0
	bl ovy325_219e3d8
	add r0, r4, #0
	bl ovy325_219e9b0
	add r2, r5, #0
	sub r2, #0x14
	ldr r2, [r4, r2]
	sub r5, #0x18
	ldr r3, [r4, r5]
	add r0, r4, #0
	add r1, r6, #0
	sub r2, r2, #1
	bl ovy325_219e5f0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy325_219dde4
	add r0, r6, #0
	add r1, r6, #0
	bl sub_02044C98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219d01c

	thumb_func_start ovy325_219d1b4
ovy325_219d1b4: ; 0x0219D1B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219D208
	add r0, r4, #0
	bl sub_0219F094
	pop {r4, pc}
	thumb_func_end ovy325_219d1b4

	thumb_func_start ovy325_219d1c4
ovy325_219d1c4: ; 0x0219D1C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy325_219e904
	mov r4, #0x79
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_HeapFree
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy325_219da80
	add r0, r5, #0
	mov r1, #1
	bl ovy325_219da80
	add r0, r4, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D1FA
	bl GFL_MsgDataFree
	sub r4, #0x44
	str r6, [r5, r4]
_0219D1FA:
	add r0, r5, #0
	bl ovy325_219ecac
	add r0, r5, #0
	bl ovy325_219d7f0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy325_219d1c4

	thumb_func_start sub_0219D208
sub_0219D208: ; 0x0219D208
	ldr r3, _0219D20C ; =ovy325_219d210
	bx r3
	.align 2, 0
_0219D20C: .word ovy325_219d210
	thumb_func_end sub_0219D208

	thumb_func_start ovy325_219d210
ovy325_219d210: ; 0x0219D210
	push {r3, r4, r5, lr}
	mov r4, #0x6b
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0xa
	bgt _0219D226
	bge _0219D23A
	cmp r1, #0
	beq _0219D234
	pop {r3, r4, r5, pc}
_0219D226:
	cmp r1, #0x64
	bgt _0219D22E
	beq _0219D24C
	pop {r3, r4, r5, pc}
_0219D22E:
	ldr r0, _0219D25C ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, pc}
_0219D234:
	mov r0, #0xa
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_0219D23A:
	add r0, r4, #0
	add r0, #0x14
	ldr r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _0219D258
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_0219D24C:
	bl ovy325_219e780
	cmp r0, #0
	bne _0219D258
	ldr r0, _0219D25C ; =0x00002710
	str r0, [r5, r4]
_0219D258:
	pop {r3, r4, r5, pc}
	nop
_0219D25C: .word 0x00002710
	thumb_func_end ovy325_219d210

	thumb_func_start sub_0219D260
sub_0219D260: ; 0x0219D260
	cmp r1, #0x42
	blo _0219D268
	mov r0, #0
	bx lr
_0219D268:
	mov r2, #0x79
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219D260

	thumb_func_start ovy325_219d274
ovy325_219d274: ; 0x0219D274
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldrh r1, [r7]
	mov r0, #0x64
	ldr r4, _0219D350 ; =0x0219F336
	ldr r6, _0219D354 ; =0x0219F32A
	ldr r5, _0219D358 ; =0x0219F36C
	bl sub_0204AA30
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
_0219D28E:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _0219D2B6
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
	blt _0219D28E
_0219D2B6:
	mov r4, #0
_0219D2B8:
	ldrb r2, [r6]
	cmp r2, #0xff
	beq _0219D2DA
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
	blt _0219D2B8
_0219D2DA:
	mov r4, #0
	add r6, r4, #0
_0219D2DE:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _0219D2FE
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
	blt _0219D2DE
_0219D2FE:
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	mov r0, #7
	bl sub_02045814
	mov ip, r0
	mov r0, #0
	mov r4, #6
	str r0, [sp, #0x10]
	add r7, r0, #0
	lsl r4, r4, #0xc
_0219D316:
	ldr r0, [sp, #0x10]
	mov r3, #0
	lsl r1, r0, #0xb
	mov r0, ip
	add r6, r0, r1
_0219D320:
	lsl r0, r3, #6
	add r1, r7, #0
	add r2, r6, r0
_0219D326:
	lsl r0, r1, #1
	ldrh r5, [r2, r0]
	add r1, r1, #1
	add r5, r5, r4
	strh r5, [r2, r0]
	cmp r1, #0x20
	blt _0219D326
	add r3, r3, #1
	cmp r3, #0x20
	blt _0219D320
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _0219D316
	mov r0, #7
	bl sub_02044F90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D350: .word 0x0219F336
_0219D354: .word 0x0219F32A
_0219D358: .word 0x0219F36C
	thumb_func_end ovy325_219d274

	thumb_func_start ovy325_219d35c
ovy325_219d35c: ; 0x0219D35C
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
_0219D3D2:
	lsl r0, r4, #6
	add r2, r7, #0
	add r3, r1, r0
_0219D3D8:
	lsl r0, r2, #1
	ldrh r6, [r3, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r3, r0]
	cmp r2, #0x20
	blt _0219D3D8
	add r4, r4, #1
	cmp r4, #0x18
	blt _0219D3D2
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219d35c

	thumb_func_start ovy325_219d400
ovy325_219d400: ; 0x0219D400
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202D7E0
	ldrh r1, [r5]
	bl sub_0204AA30
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219F1A8
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
	thumb_func_end ovy325_219d400

	thumb_func_start ovy325_219d480
ovy325_219d480: ; 0x0219D480
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r2, [r5]
	ldr r1, _0219D4FC ; =0x00007FFF
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
	mov r2, #0
	mov r3, #0xa0
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
	bl Oam_LoadNCERFile
	str r0, [r5, #0x2c]
	add r7, r4, #0
_0219D4CC:
	add r0, r7, #0
	add r1, r7, #0
	add r2, r7, #0
	add r3, r7, #0
	bl sub_02020F94
	add r1, r0, #0
	ldrh r0, [r5]
	add r2, r7, #0
	add r3, r7, #0
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #0x14]
	cmp r4, #6
	blo _0219D4CC
	add r0, r6, #0
	bl GFL_ArcToolFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D4FC: .word 0x00007FFF
	thumb_func_end ovy325_219d480

	thumb_func_start ovy325_219d500
ovy325_219d500: ; 0x0219D500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r6, r2, #0
	str r0, [sp, #8]
	add r4, r1, #0
	ldr r1, [sp, #8]
	str r3, [sp, #4]
	add r2, r3, #0
	add r0, r6, #0
	mov r3, #0
	bl sub_02021034
	ldrh r1, [r5]
	str r0, [sp, #0xc]
	ldr r7, _0219D588 ; =0x00007FFF
	add r2, r1, #0
	and r2, r7
	add r1, r7, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #7
	lsr r1, r1, #0x10
	bl sub_0204AA30
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_02020F94
	add r1, r0, #0
	ldrh r0, [r5]
	add r3, sp, #0x14
	add r2, r0, #0
	and r2, r7
	add r0, r7, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #0
	bl sub_0204B2DC
	lsl r4, r4, #2
	add r6, r0, #0
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x14]
	bl sub_0204BA40
	add r0, r6, #0
	bl GFL_HeapFree
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	add r0, r5, r4
	ldr r0, [r0, #0x48]
	ldr r1, [sp, #0xc]
	mov r2, #1
	bl sub_0204C378
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D588: .word 0x00007FFF
	thumb_func_end ovy325_219d500

	thumb_func_start ovy325_219d58c
ovy325_219d58c: ; 0x0219D58C
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
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219F1A8
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
	thumb_func_end ovy325_219d58c

	thumb_func_start ovy325_219d60c
ovy325_219d60c: ; 0x0219D60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	add r0, #0xc0
	ldr r0, [r0]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0219F1A8
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
	cmp r2, #0
	bne _0219D648
	add r6, r7, #0
	add r6, #0x3c
	b _0219D664
_0219D648:
	cmp r2, #1
	bne _0219D652
	add r6, r7, #0
	add r6, #0x48
	b _0219D664
_0219D652:
	cmp r2, #2
	bne _0219D65C
	add r6, r7, #0
	add r6, #0x60
	b _0219D664
_0219D65C:
	cmp r2, #3
	bne _0219D664
	add r6, r7, #0
	add r6, #0x88
_0219D664:
	mov r2, #0
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _0219D72E
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
_0219D682:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219D72E
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219D260
	str r0, [sp, #0x24]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_0219D260
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
	bne _0219D6E6
	mov r1, #1
_0219D6E6:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219D6F6
	mov r1, #1
_0219D6F6:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _0219D70E
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219D70E:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _0219D720
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219D720:
	ldr r0, [sp, #0x20]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0219D682
_0219D72E:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219d60c

	thumb_func_start ovy325_219d734
ovy325_219d734: ; 0x0219D734
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0219F1A8
	add r0, r4, #0
	mov r1, #1
	bl ovy325_219d400
	add r0, r4, #0
	bl ovy325_219d480
	ldr r2, _0219D7C8 ; =0x0219F3A0
	add r0, r4, #0
	mov r1, #2
	bl ovy325_219d58c
	ldr r2, _0219D7CC ; =0x0219F380
	ldr r3, _0219D7D0 ; =0x0219F2EC
	add r0, r4, #0
	mov r1, #1
	bl ovy325_219d60c
	ldr r2, _0219D7D4 ; =0x0219F441
	ldr r3, _0219D7D8 ; =0x0219F314
	add r0, r4, #0
	mov r1, #0
	bl ovy325_219d60c
	ldr r2, _0219D7DC ; =0x0219F530
	ldr r3, _0219D7E0 ; =0x0219F2F6
	add r0, r4, #0
	mov r1, #1
	bl ovy325_219d60c
	ldr r2, _0219D7E4 ; =0x0219F588
	ldr r3, _0219D7E8 ; =0x0219F30A
	add r0, r4, #0
	mov r1, #0
	bl ovy325_219d60c
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C318
	add r4, #0xb0
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C318
	mov r1, #8
	ldr r0, _0219D7EC ; =0x04000050
	mov r2, #0x37
	mov r3, #8
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	nop
_0219D7C8: .word 0x0219F3A0
_0219D7CC: .word 0x0219F380
_0219D7D0: .word 0x0219F2EC
_0219D7D4: .word 0x0219F441
_0219D7D8: .word 0x0219F314
_0219D7DC: .word 0x0219F530
_0219D7E0: .word 0x0219F2F6
_0219D7E4: .word 0x0219F588
_0219D7E8: .word 0x0219F30A
_0219D7EC: .word 0x04000050
	thumb_func_end ovy325_219d734

	thumb_func_start ovy325_219d7f0
ovy325_219d7f0: ; 0x0219D7F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0219D7F6:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x3c]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #3
	blt _0219D7F6
	mov r5, #0
_0219D808:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x48]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #6
	blt _0219D808
	mov r5, #0
_0219D81A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x60]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #0xa
	blt _0219D81A
	mov r5, #0
_0219D82C:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #0xe
	blt _0219D82C
	ldr r0, [r4, #4]
	bl sub_0204BCD0
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0xc]
	bl sub_0204BE64
	ldr r0, [r4, #0x10]
	bl sub_0204BCD0
	mov r5, #0
_0219D858:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	bl sub_0204B98C
	add r5, r5, #1
	cmp r5, #6
	blt _0219D858
	ldr r0, [r4, #0x2c]
	bl sub_0204BE64
	ldr r0, [r4, #0x30]
	bl sub_0204BCD0
	ldr r0, [r4, #0x34]
	bl sub_0204B98C
	ldr r0, [r4, #0x38]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy325_219d7f0

	thumb_func_start ovy325_219d884
ovy325_219d884: ; 0x0219D884
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _0219D8A8
	cmp r2, #3
	bge _0219D912
	add r4, r0, #0
	add r4, #0x3c
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219D8A8:
	cmp r1, #1
	bne _0219D8CA
	cmp r2, #6
	bge _0219D912
	add r4, r0, #0
	add r4, #0x48
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219D8CA:
	cmp r1, #2
	bne _0219D8EC
	cmp r2, #0xa
	bge _0219D912
	add r4, r0, #0
	add r4, #0x60
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219D8EC:
	cmp r1, #3
	bne _0219D912
	cmp r2, #0xe
	bge _0219D912
	add r4, r0, #0
	add r4, #0x88
	lsl r5, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
	bl sub_0204C56C
_0219D912:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy325_219d884

	thumb_func_start ovy325_219d914
ovy325_219d914: ; 0x0219D914
	push {r3, lr}
	cmp r1, #0
	bne _0219D92C
	cmp r2, #3
	bge _0219D96E
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219D92C:
	cmp r1, #1
	bne _0219D942
	cmp r2, #6
	bge _0219D96E
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x48]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219D942:
	cmp r1, #2
	bne _0219D958
	cmp r2, #0xa
	bge _0219D96E
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x60]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219D958:
	cmp r1, #3
	bne _0219D96E
	cmp r2, #0xe
	bge _0219D96E
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x88
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
_0219D96E:
	pop {r3, pc}
	thumb_func_end ovy325_219d914

	thumb_func_start ovy325_219d970
ovy325_219d970: ; 0x0219D970
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _0219D990
	cmp r2, #3
	blt _0219D980
	mov r0, #0
	pop {r4, pc}
_0219D980:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D9E6
	b _0219D9E4
_0219D990:
	cmp r1, #1
	bne _0219D9AC
	cmp r2, #6
	blt _0219D99C
	mov r0, #0
	pop {r4, pc}
_0219D99C:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x48]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D9E6
	b _0219D9E4
_0219D9AC:
	cmp r1, #2
	bne _0219D9C8
	cmp r2, #0xa
	blt _0219D9B8
	mov r0, #0
	pop {r4, pc}
_0219D9B8:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x60]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D9E6
	b _0219D9E4
_0219D9C8:
	cmp r1, #3
	bne _0219D9E6
	cmp r2, #0xe
	blt _0219D9D4
	mov r0, #0
	pop {r4, pc}
_0219D9D4:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D9E6
_0219D9E4:
	mov r4, #0
_0219D9E6:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy325_219d970

	thumb_func_start ovy325_219d9ec
ovy325_219d9ec: ; 0x0219D9EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	bne _0219DA02
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #2
	ldr r5, _0219DA78 ; =0x0219F411
	str r1, [r6, r0]
	b _0219DA16
_0219DA02:
	ldr r1, _0219DA7C ; =0x0219F7C0
	lsl r2, r2, #2
	ldr r5, [r1, r2]
	mov r1, #0x71
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r6, r1]
	mov r1, #1
	bl ovy325_219da80
_0219DA16:
	mov r4, #0
_0219DA18:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219DA74
	cmp r7, #0
	ldrb r1, [r5, #4]
	bne _0219DA44
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
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _0219DA60
_0219DA44:
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
	add r1, #0xd0
	str r0, [r1]
_0219DA60:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	mov r3, #0
	bl ovy325_219dd94
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #0xd
	blt _0219DA18
_0219DA74:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DA78: .word 0x0219F411
_0219DA7C: .word 0x0219F7C0
	thumb_func_end ovy325_219d9ec

	thumb_func_start ovy325_219da80
ovy325_219da80: ; 0x0219DA80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0219DABA
	mov r7, #0x4e
	mov r6, #0
	lsl r7, r7, #2
_0219DA8E:
	lsl r0, r6, #3
	add r4, r5, r0
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0219DAB2
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r4, r7]
	bl sub_020484B4
	ldr r0, [r4, r7]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r7]
_0219DAB2:
	add r6, r6, #1
	cmp r6, #0xd
	blt _0219DA8E
	pop {r3, r4, r5, r6, r7, pc}
_0219DABA:
	mov r6, #0
	add r7, r6, #0
_0219DABE:
	lsl r4, r6, #3
	add r0, r5, r4
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219DAEE
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	add r0, r5, r4
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020484B4
	add r0, r5, r4
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02048210
	add r0, r5, r4
	add r0, #0xd0
	str r7, [r0]
_0219DAEE:
	add r6, r6, #1
	cmp r6, #0xd
	blt _0219DABE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219da80

	thumb_func_start ovy325_219daf8
ovy325_219daf8: ; 0x0219DAF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl sub_02021A3C
	mov r0, #0x71
	lsl r0, r0, #2
	add r7, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x10]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0x8c
	str r0, [sp, #0x20]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0x88
	str r0, [sp, #0x1c]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0x88
	str r0, [sp, #0x18]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x24]
	sub r0, #0x88
	str r0, [sp, #0x24]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x30]
	sub r0, #0x8c
	str r0, [sp, #0x30]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x2c]
	sub r0, #0x8c
	str r0, [sp, #0x2c]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x28]
	mov r0, #0x71
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	sub r0, #0x8c
	mov r6, #0
	str r0, [sp, #0x14]
_0219DB60:
	lsl r0, r6, #3
	add r4, r5, r0
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219DBEE
	add r1, r5, #0
	add r1, #0xcc
	ldr r1, [r1]
	str r1, [sp, #0xc]
	add r1, r4, #0
	add r1, #0xd4
	ldrb r1, [r1]
	cmp r1, #0
	beq _0219DBA2
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DBA2
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl BmpWin_FlushChar
	add r1, r4, #0
	add r1, #0xd4
	mov r0, #0
	strb r0, [r1]
_0219DBA2:
	add r0, r4, #0
	add r0, #0xd4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0219DBB0
	mov r0, #1
	b _0219DBB2
_0219DBB0:
	mov r0, #0
_0219DBB2:
	cmp r0, #1
	bne _0219DBEE
	mov r0, #1
	lsl r0, r6
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	ldr r0, [sp, #4]
	tst r0, r1
	bne _0219DBEE
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_0204826C
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, [sp, #4]
	orr r1, r0
	mov r0, #0x71
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219DBEE:
	ldr r0, [sp, #0x14]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DC62
	add r1, r5, #0
	add r1, #0xcc
	ldr r1, [r1]
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0219DC24
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DC24
	ldr r0, [sp, #0x20]
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strb r1, [r4, r0]
_0219DC24:
	ldr r0, [sp, #0x24]
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0219DC30
	mov r0, #1
	b _0219DC32
_0219DC30:
	mov r0, #0
_0219DC32:
	cmp r0, #1
	bne _0219DC62
	mov r0, #1
	lsl r0, r6
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r1, [r5, r0]
	ldr r0, [sp]
	tst r0, r1
	bne _0219DC62
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
_0219DC62:
	add r6, r6, #1
	cmp r6, #0xd
	bge _0219DC6A
	b _0219DB60
_0219DC6A:
	add r0, r5, #0
	bl ovy325_219de88
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219daf8

	thumb_func_start ovy325_219dc74
ovy325_219dc74: ; 0x0219DC74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r3, #0
	add r5, r0, #0
	mov r3, #0
	str r1, [sp, #0xc]
	add r4, r2, #0
	bl ovy325_219dd94
	add r2, r5, #0
	str r4, [sp]
	add r2, #0xc8
	ldr r1, [sp, #0x34]
	ldr r2, [r2]
	ldr r3, [sp, #0x38]
	add r0, r5, #0
	bl ovy325_219dd34
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0219DCEC
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	lsl r4, r4, #3
	str r0, [sp, #0x14]
	mov r0, #0x4e
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r2, r6, r7
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
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r2, #1
	add r1, r5, r4
	add r0, r0, #4
	strb r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219DCEC:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	lsl r4, r4, #3
	str r0, [sp, #0x10]
	add r0, r5, r4
	add r0, #0xd0
	ldr r0, [r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r2, r6, r7
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
	add r0, #0xd4
	strb r1, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219dc74

	thumb_func_start ovy325_219dd34
ovy325_219dd34: ; 0x0219DD34
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r7, #0
	mov r5, #0
	cmp r3, #1
	bne _0219DD64
	ldr r1, [sp, #0x18]
	lsl r1, r1, #3
	add r1, r0, r1
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02022888
	b _0219DD8A
_0219DD64:
	cmp r3, #2
	bne _0219DD8C
	ldr r1, [sp, #0x18]
	lsl r1, r1, #3
	add r1, r0, r1
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl BmpWin_GetBitmap
	bl sub_02046EF8
	lsr r5, r0, #1
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02022888
	lsr r0, r0, #1
_0219DD8A:
	sub r5, r5, r0
_0219DD8C:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219dd34

	thumb_func_start ovy325_219dd94
ovy325_219dd94: ; 0x0219DD94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r3, #0
	cmp r1, #0
	bne _0219DDC2
	lsl r6, r2, #3
	mov r7, #0x4e
	add r0, r5, r6
	lsl r7, r7, #2
	ldr r0, [r0, r7]
	cmp r0, #0
	beq _0219DDE2
	bl BmpWin_GetBitmap
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	mov r2, #1
	add r1, r5, r6
	add r0, r7, #4
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0219DDC2:
	lsl r6, r2, #3
	add r0, r5, r6
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0219DDE2
	bl BmpWin_GetBitmap
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl BmpWin_BitmapFill
	add r0, r5, r6
	mov r1, #1
	add r0, #0xd4
	strb r1, [r0]
_0219DDE2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219dd94

	thumb_func_start ovy325_219dde4
ovy325_219dde4: ; 0x0219DDE4
	push {r4, lr}
	ldr r2, _0219DE04 ; =0x0219F31E
	lsl r4, r1, #2
	ldrsh r2, [r2, r4]
	mov r0, #7
	mov r1, #0
	bl sub_02044CFC
	ldr r2, _0219DE08 ; =0x0219F320
	mov r0, #7
	ldrsh r2, [r2, r4]
	mov r1, #3
	bl sub_02044CFC
	pop {r4, pc}
	nop
_0219DE04: .word 0x0219F31E
_0219DE08: .word 0x0219F320
	thumb_func_end ovy325_219dde4

	thumb_func_start ovy325_219de0c
ovy325_219de0c: ; 0x0219DE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, r2
	str r1, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, _0219DE7C ; =0x0219F7C8
	mov r6, #0
	ldr r0, [r0, r1]
	str r0, [sp, #0x18]
_0219DE20:
	ldr r0, [sp, #0x18]
	lsl r2, r6, #2
	ldrh r7, [r0, r2]
	add r1, r0, r2
	ldr r0, _0219DE80 ; =0x0000FFFF
	cmp r7, r0
	beq _0219DE78
	ldrh r0, [r1, #2]
	ldr r1, _0219DE84 ; =0x0219F2E4
	lsl r2, r7, #1
	str r0, [sp, #0x14]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldrsh r1, [r1, r2]
	ldr r0, [r5, r0]
	bl sub_0204898C
	add r4, r0, #0
	cmp r7, #0
	bne _0219DE52
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #2
	b _0219DE58
_0219DE52:
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
_0219DE58:
	str r0, [sp, #8]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0
	bl ovy325_219dc74
	add r0, r4, #0
	bl GFL_StrBufFree
	add r6, r6, #1
	cmp r6, #0xd
	blt _0219DE20
_0219DE78:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DE7C: .word 0x0219F7C8
_0219DE80: .word 0x0000FFFF
_0219DE84: .word 0x0219F2E4
	thumb_func_end ovy325_219de0c

	thumb_func_start ovy325_219de88
ovy325_219de88: ; 0x0219DE88
	push {r3, r4, r5, lr}
	mov r4, #7
	add r5, r0, #0
	lsl r4, r4, #6
	ldr r1, [r5, r4]
	mov r0, #4
	tst r0, r1
	beq _0219DEBA
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219DEBA
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy325_219dde4
	ldr r1, [r5, r4]
	mov r0, #4
	bic r1, r0
	str r1, [r5, r4]
_0219DEBA:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy325_219de88

	thumb_func_start ovy325_219debc
ovy325_219debc: ; 0x0219DEBC
	push {r3, r4, r5, lr}
	mov r4, #0x1b
	add r5, r0, #0
	mov r1, #1
	lsl r4, r4, #4
	str r1, [r5, r4]
	add r1, r4, #0
	mov r2, #0
	add r1, #8
	str r2, [r5, r1]
	mov r1, #0
	bl ovy325_219e734
	add r0, r5, #0
	bl ovy325_219edf8
	add r0, r5, #0
	mov r1, #1
	bl ovy325_219ee60
	add r0, r5, #0
	mov r1, #0
	bl ovy325_219efdc
	add r0, r4, #0
	add r0, #0x10
	ldr r1, [r5, r0]
	mov r0, #2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x10
	str r1, [r5, r0]
	mov r0, #0x40
	orr r0, r1
	add r4, #0x10
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy325_219debc

	thumb_func_start ovy325_219df08
ovy325_219df08: ; 0x0219DF08
	push {r4, r5, r6, lr}
	mov r4, #0x6d
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	cmp r1, #0xd2
	bgt _0219DF48
	blt _0219DF1A
	b _0219E0EE
_0219DF1A:
	cmp r1, #0xa
	bgt _0219DF36
	bge _0219DFC0
	cmp r1, #2
	bgt _0219DFA6
	cmp r1, #0
	blt _0219DFA6
	beq _0219DF8A
	cmp r1, #1
	beq _0219DFD4
	cmp r1, #2
	bne _0219DF34
	b _0219E042
_0219DF34:
	pop {r4, r5, r6, pc}
_0219DF36:
	cmp r1, #0x64
	bgt _0219DF40
	bne _0219DF3E
	b _0219E0C8
_0219DF3E:
	pop {r4, r5, r6, pc}
_0219DF40:
	cmp r1, #0xc8
	bne _0219DF46
	b _0219E0CE
_0219DF46:
	pop {r4, r5, r6, pc}
_0219DF48:
	add r2, r4, #0
	sub r2, #0x83
	cmp r1, r2
	bgt _0219DF70
	add r2, r4, #0
	sub r2, #0x83
	cmp r1, r2
	blt _0219DF5A
	b _0219E152
_0219DF5A:
	cmp r1, #0xdc
	bgt _0219DF64
	bne _0219DF62
	b _0219E10A
_0219DF62:
	pop {r4, r5, r6, pc}
_0219DF64:
	add r2, r4, #0
	sub r2, #0x88
	cmp r1, r2
	bne _0219DF6E
	b _0219E128
_0219DF6E:
	pop {r4, r5, r6, pc}
_0219DF70:
	add r0, r4, #0
	sub r0, #0x7e
	cmp r1, r0
	bgt _0219DF84
	add r0, r4, #0
	sub r0, #0x7e
	cmp r1, r0
	bne _0219DF82
	b _0219E1EC
_0219DF82:
	pop {r4, r5, r6, pc}
_0219DF84:
	ldr r0, _0219E228 ; =0x00002710
	cmp r1, r0
	pop {r4, r5, r6, pc}
_0219DF8A:
	add r0, r4, #0
	add r0, #0xc
	mov r6, #1
	ldr r0, [r5, r0]
	lsl r6, r6, #0xc
	tst r0, r6
	bne _0219DFBA
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	beq _0219DFA8
_0219DFA6:
	b _0219E226
_0219DFA8:
	mov r0, #0xa
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r4, #0xc
	orr r0, r6
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219DFBA:
	mov r0, #0xa
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219DFC0:
	bl ovy325_219e98c
	cmp r0, #1
	bne _0219DFCE
	mov r0, #1
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219DFCE:
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219DFD4:
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	mov r6, #2
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #3
	mov r2, #8
	mov r3, #1
	bl ovy325_219d914
	add r0, r5, #0
	mov r1, #3
	mov r2, #9
	mov r3, #1
	bl ovy325_219d914
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	mov r3, #1
	bl ovy325_219d914
	add r0, r5, #0
	mov r1, #3
	mov r2, #8
	mov r3, #7
	bl ovy325_219d884
	add r0, r5, #0
	mov r1, #3
	mov r2, #9
	mov r3, #8
	bl ovy325_219d884
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	mov r3, #9
	bl ovy325_219d884
	str r6, [r5, r4]
	pop {r4, r5, r6, pc}
_0219E042:
	mov r1, #3
	mov r2, #8
	mov r6, #3
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E116
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #9
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E116
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xa
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E116
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	add r0, r6, #0
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #1
	bl ovy325_219e3d8
	add r0, r5, #0
	bl ovy325_219e634
	add r1, r4, #0
	add r1, #0x18
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r0, #0x36
	lsl r3, r1, #2
	add r0, r5, r0
	ldrb r2, [r0, r3]
	mov r1, #0x20
	orr r2, r1
	strb r2, [r0, r3]
	add r0, r4, #0
	sub r0, #0x7e
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0xc
	ldr r2, [r5, r0]
	lsl r0, r1, #0xd
	orr r2, r0
	add r0, r4, #0
	add r0, #0xc
	str r2, [r5, r0]
	lsl r0, r1, #0xc
	orr r0, r2
	add r4, #0xc
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219E0C8:
	bl ovy325_219e240
	pop {r4, r5, r6, pc}
_0219E0CE:
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E116
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	sub r0, r6, #1
	add r4, #8
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_0219E0EE:
	mov r1, #0
	mov r2, #2
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E116
	mov r0, #0x64
	str r0, [r5, r4]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0219E10A:
	mov r1, #0
	mov r2, #1
	bl ovy325_219d970
	cmp r0, #0
	beq _0219E118
_0219E116:
	b _0219E226
_0219E118:
	mov r0, #0x64
	str r0, [r5, r4]
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0219E128:
	bl ovy325_219eb0c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219E226
	add r0, r5, #0
	bl ovy325_219ecdc
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
	pop {r4, r5, r6, pc}
_0219E152:
	add r1, r4, #0
	add r1, #0xc
	ldr r2, [r5, r1]
	mov r1, #0x10
	tst r1, r2
	beq _0219E196
	mov r1, #0
	mov r2, #1
	mov r6, #0
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E226
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
	bl ovy325_219e5f0
	pop {r4, r5, r6, pc}
_0219E196:
	mov r1, #0x20
	tst r1, r2
	beq _0219E1D4
	mov r1, #0
	mov r2, #2
	mov r6, #0
	bl ovy325_219d970
	cmp r0, #0
	bne _0219E226
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
	bl ovy325_219e5f0
	pop {r4, r5, r6, pc}
_0219E1D4:
	mov r1, #0x64
	add r2, r4, #0
	str r1, [r5, r4]
	add r2, #0x1c
	ldr r2, [r5, r2]
	add r4, #0x18
	ldr r3, [r5, r4]
	mov r1, #0
	sub r2, r2, #1
	bl ovy325_219e5f0
	pop {r4, r5, r6, pc}
_0219E1EC:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #1
	bne _0219E226
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x12
	tst r0, r1
	beq _0219E21E
	add r0, r5, #0
	mov r1, #1
	bl ovy325_219e960
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	ldr r0, _0219E22C ; =0xFFFBFFFF
	add r4, #0xc
	and r0, r1
	str r0, [r5, r4]
_0219E21E:
	mov r0, #0x6d
	mov r1, #0x64
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219E226:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E228: .word 0x00002710
_0219E22C: .word 0xFFFBFFFF
	thumb_func_end ovy325_219df08

	thumb_func_start ovy325_219e230
ovy325_219e230: ; 0x0219E230
	push {r4, lr}
	add r4, r0, #0
	bl sub_0219E7B0
	add r0, r4, #0
	bl ovy325_219ecc4
	pop {r4, pc}
	thumb_func_end ovy325_219e230

	thumb_func_start ovy325_219e240
ovy325_219e240: ; 0x0219E240
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r4, #0
	mov r6, #0
	mov r7, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219E258
	b _0219E3C4
_0219E258:
	add r0, r5, #0
	bl ovy325_219eb0c
	add r1, r0, #0
	add r0, r5, #0
	bl ovy325_219eb28
	cmp r0, #1
	bne _0219E270
	mov r4, #2
	mov r7, #1
	b _0219E27A
_0219E270:
	sub r0, r0, #2
	cmp r0, #1
	bhi _0219E27A
	mov r4, #1
	mov r7, #2
_0219E27A:
	mov r2, #7
	lsl r2, r2, #6
	ldr r0, [r5, r2]
	mov r1, #0x40
	tst r1, r0
	beq _0219E28E
	mov r1, #0x40
	bic r0, r1
	mov r4, #1
	str r0, [r5, r2]
_0219E28E:
	cmp r4, #0
	bne _0219E2E6
	mov r1, #0x6e
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219E7C4
	str r0, [sp]
	cmp r0, #0
	bne _0219E2A6
	mov r6, #1
_0219E2A6:
	cmp r6, #0
	bne _0219E2B6
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _0219E2B6
	mov r6, #1
_0219E2B6:
	cmp r6, #1
	bne _0219E2E6
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #9
	mov r6, #0
	bl ovy325_219d884
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0xec
	str r1, [r5, r0]
	ldr r0, _0219E3C8 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [sp]
	cmp r0, #0
	bne _0219E2E0
	mov r0, #1
	b _0219E2E2
_0219E2E0:
	add r0, r6, #0
_0219E2E2:
	bl sub_0203D564
_0219E2E6:
	cmp r4, #1
	bne _0219E2F8
	mov r1, #7
	lsl r1, r1, #6
	add r0, r1, #0
	ldr r2, [r5, r1]
	sub r0, #0xc0
	orr r0, r2
	str r0, [r5, r1]
_0219E2F8:
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219E31A
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	bne _0219E30E
	cmp r7, #2
	bne _0219E31A
_0219E30E:
	mov r0, #0x6d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, #0xfc
	str r1, [r5, r0]
_0219E31A:
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	sub r0, #0xc0
	tst r0, r1
	beq _0219E3A0
	mov r0, #2
	lsl r0, r0, #0x10
	tst r0, r1
	beq _0219E394
	mov r4, #0
	bl sub_0203D554
	cmp r0, #0
	bne _0219E33A
	mov r4, #1
_0219E33A:
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x10
	tst r0, r1
	beq _0219E34A
	mov r4, #1
_0219E34A:
	cmp r4, #1
	bne _0219E394
	add r0, r5, #0
	mov r1, #1
	bl ovy325_219e3d8
	add r0, r5, #0
	bl ovy325_219e634
	ldr r0, _0219E3CC ; =0x000001EA
	add r2, r0, #0
	sub r2, #0x1e
	ldr r2, [r5, r2]
	add r1, r5, r0
	lsl r4, r2, #2
	ldrb r3, [r1, r4]
	mov r2, #0x20
	orr r3, r2
	strb r3, [r1, r4]
	add r3, r0, #0
	add r1, r0, #0
	sub r3, #0xb4
	sub r1, #0x36
	str r3, [r5, r1]
	add r1, r0, #0
	sub r1, #0x2a
	ldr r3, [r5, r1]
	lsl r1, r2, #0xd
	add r2, r3, #0
	orr r2, r1
	add r1, r0, #0
	sub r1, #0x2a
	str r2, [r5, r1]
	ldr r1, _0219E3D0 ; =0xFFFEFFFF
	sub r0, #0x2a
	and r1, r2
	str r1, [r5, r0]
_0219E394:
	mov r1, #7
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	ldr r0, _0219E3D4 ; =0xFFFFFEFF
	and r0, r2
	str r0, [r5, r1]
_0219E3A0:
	mov r4, #7
	lsl r4, r4, #6
	mov r6, #2
	ldr r0, [r5, r4]
	lsl r6, r6, #0xc
	tst r0, r6
	bne _0219E3BE
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0219CC90
	ldr r0, [r5, r4]
	orr r0, r6
	str r0, [r5, r4]
_0219E3BE:
	add r0, r5, #0
	bl ovy325_219ee14
_0219E3C4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E3C8: .word 0x00000551
_0219E3CC: .word 0x000001EA
_0219E3D0: .word 0xFFFEFFFF
_0219E3D4: .word 0xFFFFFEFF
	thumb_func_end ovy325_219e240

	thumb_func_start ovy325_219e3d8
ovy325_219e3d8: ; 0x0219E3D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r6, #0x73
	add r5, r0, #0
	lsl r6, r6, #2
	add r7, r1, #0
	ldr r1, [r5, r6]
	bl sub_0219E944
	add r4, r0, #0
	cmp r7, #0
	bne _0219E44C
	sub r6, #0x2c
	ldr r0, [r5, r6]
	mov r1, #0xac
	mov r6, #0xac
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldrh r1, [r5]
	mov r0, #8
	bl GFL_StrBufCreate
	add r2, r5, #0
	add r2, #0xc4
	add r7, r0, #0
	mov r0, #0xac
	ldr r2, [r2]
	add r0, #0xf8
	ldr r0, [r5, r0]
	ldr r2, [r2]
	mov r1, #1
	bl GFL_CopyVarForText
	add r6, #0xf8
	ldr r0, [r5, r6]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	mov r1, #0
	str r1, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0219E5E4 ; =0x0000354B
	mov r2, #6
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl ovy325_219dc74
	add r0, r7, #0
	bl GFL_StrBufFree
_0219E44C:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_02011194
	add r7, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x2a
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0219E5E4 ; =0x0000354B
	mov r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r2, #3
	mov r3, #0
	bl ovy325_219dc74
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0]
	bl MyStatus_GetTrainerGender
	cmp r0, #0
	bne _0219E49E
	add r4, #0xb1
	b _0219E4A0
_0219E49E:
	add r4, #0xda
_0219E4A0:
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0204898C
	add r4, r0, #0
	ldrh r0, [r7, #4]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	add r3, sp, #0x18
	bl sub_02021230
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r2, [sp, #0x20]
	add r0, r0, #4
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_020243D0
	add r2, r5, #0
	mov r0, #0x1a
	add r2, #0xc4
	lsl r0, r0, #4
	ldr r2, [r2]
	add r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r2]
	mov r1, #1
	bl GFL_CopyVarForText
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r4, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0219E5E4 ; =0x0000354B
	mov r1, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0
	bl ovy325_219dc74
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xaa
	bl sub_0204898C
	str r0, [sp, #0x10]
	ldrh r1, [r5]
	mov r0, #0x80
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r4, [r7]
	ldr r0, _0219E5E8 ; =0x0000270F
	cmp r4, r0
	ble _0219E544
	b _0219E54A
_0219E544:
	ldr r0, _0219E5EC ; =0xFFFFD8F2
	cmp r4, r0
	bge _0219E54C
_0219E54A:
	add r4, r0, #0
_0219E54C:
	add r0, r4, #0
	mov r1, #0xa
	mov r7, #0xa
	blx sub_0208D65C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	mov r3, #3
	bl StringSetNumber
	cmp r4, #0
	blt _0219E576
	add r0, r4, #0
	b _0219E578
_0219E576:
	neg r0, r4
_0219E578:
	add r1, r7, #0
	blx sub_0208D65C
	mov r0, #2
	str r0, [sp]
	mov r7, #1
	mov r0, #0x69
	add r2, r1, #0
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	mov r3, #1
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #0x69
	str r7, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	add r2, r4, #0
	mov r3, #4
	bl StringSetNumber
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, _0219E5E4 ; =0x0000354B
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	mov r2, #5
	mov r3, #0
	bl ovy325_219dc74
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0219E5E4: .word 0x0000354B
_0219E5E8: .word 0x0000270F
_0219E5EC: .word 0xFFFFD8F2
	thumb_func_end ovy325_219e3d8

	thumb_func_start ovy325_219e5f0
ovy325_219e5f0: ; 0x0219E5F0
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r4, r3, #0
	cmp r5, #0
	blt _0219E630
	cmp r1, r4
	blt _0219E608
	mov r1, #0
	mov r2, #1
	mov r3, #0x12
	b _0219E60E
_0219E608:
	mov r1, #0
	mov r2, #1
	mov r3, #4
_0219E60E:
	bl ovy325_219d884
	cmp r4, r5
	blt _0219E624
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x13
	bl ovy325_219d884
	pop {r4, r5, r6, pc}
_0219E624:
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	mov r3, #5
	bl ovy325_219d884
_0219E630:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy325_219e5f0

	thumb_func_start ovy325_219e634
ovy325_219e634: ; 0x0219E634
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0x73
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	bl sub_0219E944
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	ldr r1, [sp, #4]
	ldr r0, [r0, #4]
	bl sub_02011194
	add r6, r0, #0
	mov r4, #0
	mov r7, #1
_0219E65A:
	lsl r0, r4, #1
	add r0, r6, r0
	ldrh r0, [r0, #4]
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r3, sp, #8
	bl sub_02021230
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0219E6A0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy325_219d500
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ovy325_219d914
	add r0, r7, #0
	ldrb r1, [r6, #0x12]
	lsl r0, r4
	tst r0, r1
	beq _0219E69E
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #2
	add r3, r7, #0
	b _0219E6B4
_0219E69E:
	b _0219E6AC
_0219E6A0:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	mov r3, #0
	bl ovy325_219d914
_0219E6AC:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #2
	mov r3, #0
_0219E6B4:
	bl ovy325_219d914
	add r4, r4, #1
	cmp r4, #6
	blt _0219E65A
	ldr r0, [sp, #4]
	add r1, r5, r0
	mov r0, #0xa2
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0219E6E6
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r3, #1
	bl ovy325_219d914
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	mov r3, #1
	bl ovy325_219d914
	b _0219E6FE
_0219E6E6:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy325_219d914
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	mov r3, #0
	bl ovy325_219d914
_0219E6FE:
	mov r6, #0x73
	lsl r6, r6, #2
	mov r4, #0
	mov r7, #1
	add r6, #0x1e
_0219E708:
	mov r2, #0x73
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r7, #0
	lsl r2, r2, #2
	add r2, r5, r2
	ldrb r2, [r2, r6]
	lsl r0, r4
	mov r1, #0
	tst r0, r2
	beq _0219E720
	add r1, r7, #0
_0219E720:
	add r0, r5, #0
	add r2, r4, #0
	add r3, r4, #0
	bl ovy325_219f010
	add r4, r4, #1
	cmp r4, #3
	blt _0219E708
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219e634

	thumb_func_start ovy325_219e734
ovy325_219e734: ; 0x0219E734
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	mov r7, #1
	add r5, r4, #0
_0219E73E:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ovy325_219d914
	add r4, r4, #1
	cmp r4, #6
	blt _0219E73E
	mov r7, #2
	mov r4, #0
_0219E754:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy325_219d914
	add r5, r5, #1
	cmp r5, #0xa
	blt _0219E754
	mov r5, #3
	mov r7, #0
_0219E76A:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ovy325_219d914
	add r4, r4, #1
	cmp r4, #0xe
	blt _0219E76A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219e734

	thumb_func_start ovy325_219e780
ovy325_219e780: ; 0x0219E780
	push {r4, r5, r6, lr}
	mov r4, #0x1b
	add r6, r0, #0
	lsl r4, r4, #4
	ldr r1, [r6, r4]
	mov r5, #1
	cmp r1, #3
	blo _0219E794
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219E794:
	lsl r2, r1, #2
	ldr r1, _0219E7AC ; =0x0219F7CC
	ldr r1, [r1, r2]
	blx r1
	add r4, #0xc
	ldr r1, [r6, r4]
	sub r0, r5, #2
	cmp r1, r0
	bne _0219E7A8
	mov r5, #0
_0219E7A8:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E7AC: .word 0x0219F7CC
	thumb_func_end ovy325_219e780

	thumb_func_start sub_0219E7B0
sub_0219E7B0: ; 0x0219E7B0
	mov r1, #0x6f
	lsl r1, r1, #2
	mov r2, #0
	ldr r3, [r0, r1]
	mvn r2, r2
	cmp r3, r2
	beq _0219E7C2
	sub r1, #0xc
	str r3, [r0, r1]
_0219E7C2:
	bx lr
	thumb_func_end sub_0219E7B0

	thumb_func_start sub_0219E7C4
sub_0219E7C4: ; 0x0219E7C4
	ldr r0, _0219E7D0 ; =0x0219F7C4
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0219E7D4 ; =sub_0203DA0C
	bx r3
	nop
_0219E7D0: .word 0x0219F7C4
_0219E7D4: .word sub_0203DA0C
	thumb_func_end sub_0219E7C4

	thumb_func_start ovy325_219e7d8
ovy325_219e7d8: ; 0x0219E7D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	ldr r7, _0219E8FC ; =0x000001EA
	str r0, [sp]
	str r0, [sp, #8]
	sub r0, r7, #2
	str r0, [sp, #0xc]
	sub r0, r7, #1
	mov r4, #0
	str r0, [sp, #0x10]
_0219E7F4:
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #5
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_020110AC
	cmp r0, #1
	bne _0219E8CA
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_02011194
	ldr r1, [sp, #8]
	lsl r1, r1, #2
	add r5, r6, r1
	ldr r1, [sp, #0xc]
	strb r4, [r5, r1]
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _0219E82E
	ldrb r2, [r5, r7]
	mov r1, #8
	orr r1, r2
	strb r1, [r5, r7]
_0219E82E:
	ldrb r1, [r0, #0x11]
	cmp r1, #1
	bne _0219E83C
	ldrb r2, [r5, r7]
	mov r1, #0x10
	orr r1, r2
	strb r1, [r5, r7]
_0219E83C:
	ldr r0, [r0]
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _0219E864
	cmp r0, r1
	ble _0219E84C
	mov r1, #0
	str r1, [sp]
_0219E84C:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r1, r0, #1
	add r0, sp, #0x14
	strh r4, [r0, r1]
	ldr r0, [sp]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
_0219E864:
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #2
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_020110AC
	cmp r0, #1
	bne _0219E880
	ldrb r1, [r5, r7]
	mov r0, #1
	orr r0, r1
	strb r0, [r5, r7]
_0219E880:
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #6
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_020110AC
	cmp r0, #1
	bne _0219E89C
	ldrb r1, [r5, r7]
	mov r0, #2
	orr r0, r1
	strb r0, [r5, r7]
_0219E89C:
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #4
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_020110AC
	cmp r0, #1
	bne _0219E8B8
	ldrb r1, [r5, r7]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, r7]
_0219E8B8:
	ldr r0, _0219E900 ; =0x0219F3E8
	ldrb r1, [r0, r4]
	mov r0, #3
	and r1, r0
	ldr r0, [sp, #0x10]
	strb r1, [r5, r0]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0219E8CA:
	add r4, r4, #1
	cmp r4, #0x28
	blt _0219E7F4
	mov r0, #0x1d
	ldr r1, [sp, #8]
	lsl r0, r0, #4
	str r1, [r6, r0]
	ldr r1, [sp]
	mov r3, #0
	cmp r1, #0
	ble _0219E8F6
	mov r2, #1
	add r1, sp, #0x14
	add r0, #0xb8
_0219E8E6:
	lsl r4, r3, #1
	ldrh r4, [r1, r4]
	add r3, r3, #1
	add r4, r6, r4
	strb r2, [r4, r0]
	ldr r4, [sp]
	cmp r3, r4
	blt _0219E8E6
_0219E8F6:
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	nop
_0219E8FC: .word 0x000001EA
_0219E900: .word 0x0219F3E8
	thumb_func_end ovy325_219e7d8

	thumb_func_start ovy325_219e904
ovy325_219e904: ; 0x0219E904
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x1d
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	mov r4, #0
	cmp r0, #0
	ble _0219E942
	add r7, r6, #0
	add r0, r5, r6
	add r7, #0x18
	str r0, [sp]
	add r6, #0x1a
_0219E91E:
	lsl r0, r4, #2
	add r1, r5, r0
	ldrb r2, [r1, r6]
	mov r0, #0x20
	tst r0, r2
	beq _0219E938
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	ldrb r1, [r1, r7]
	ldr r0, [r0, #4]
	bl sub_0201117C
_0219E938:
	ldr r0, [sp]
	add r4, r4, #1
	ldr r0, [r0]
	cmp r4, r0
	blt _0219E91E
_0219E942:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219e904

	thumb_func_start sub_0219E944
sub_0219E944: ; 0x0219E944
	mov r2, #0x1d
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	cmp r1, r3
	blt _0219E954
	mov r0, #0
	mvn r0, r0
	bx lr
_0219E954:
	lsl r1, r1, #2
	add r0, r0, r1
	add r2, #0x18
	ldrb r0, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E944

	thumb_func_start ovy325_219e960
ovy325_219e960: ; 0x0219E960
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #1
	cmp r1, #0
	bne _0219E976
	bl sub_0203D554
	cmp r0, #1
	bne _0219E974
	mov r4, #0
_0219E974:
	b _0219E976
_0219E976:
	mov r0, #0
	add r1, r4, #0
	bl sub_02044C98
	cmp r4, #0
	bne _0219E988
	add r0, r5, #0
	bl ovy325_219f03c
_0219E988:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy325_219e960

	thumb_func_start ovy325_219e98c
ovy325_219e98c: ; 0x0219E98C
	push {r4, r5, r6, lr}
	mov r6, #0x2b
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	mov r4, #0
	cmp r0, #1
	bne _0219E9A0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0219E9A0:
	bl sub_0203D554
	cmp r0, #0
	bne _0219E9AC
	mov r4, #1
	str r4, [r5, r6]
_0219E9AC:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy325_219e98c

	thumb_func_start ovy325_219e9b0
ovy325_219e9b0: ; 0x0219E9B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _0219EAF8 ; =0x0219F3C0
	add r5, r0, #0
	add r3, sp, #0xc
	mov r2, #5
_0219E9BC:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0219E9BC
	str r5, [sp, #0x30]
	add r0, r5, #0
	bl ovy325_219ecac
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
	ldr r0, _0219EAFC ; =0x0219F350
	mov r2, #0x1d
	lsl r2, r2, #4
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
	bgt _0219EA20
	ldr r0, _0219EB00 ; =0x0219F488
	str r0, [sp, #0x28]
_0219EA20:
	ldrh r1, [r5]
	add r0, sp, #0xc
	bl sub_0219AF1C
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r4, #0
	add r0, r1, #0
	str r4, [sp]
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x1d
	mov r3, #0
	bl sub_0219B1E0
	mov r7, #1
	mov r0, #0x6a
	str r7, [sp]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x1e
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #2
	str r0, [sp]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x1f
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0x20
	mov r3, #0
	bl sub_0219B1E0
	mov r0, #0x6a
	str r7, [sp]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_0219B27C
	add r0, r6, #0
	bl GFL_ArcToolFree
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	ble _0219EAC6
	mov r7, #0x6a
	mov r6, #0x6a
	lsl r7, r7, #2
	lsl r6, r6, #2
	add r7, #0x41
	add r6, #0x40
_0219EAA8:
	lsl r0, r4, #2
	add r2, r5, r0
	mov r0, #0x6a
	ldrb r1, [r2, r7]
	ldrb r2, [r2, r6]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, #0x2a
	bl sub_0219B1B4
	add r0, sp, #0xc
	ldrh r0, [r0, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0219EAA8
_0219EAC6:
	mov r4, #7
	lsl r4, r4, #6
	ldr r1, [r5, r4]
	ldr r0, _0219EB04 ; =0xFFFFEFFF
	and r0, r1
	str r0, [r5, r4]
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0219B294
	cmp r0, #0
	bne _0219EAEA
	mov r0, #1
	ldr r1, [r5, r4]
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r5, r4]
_0219EAEA:
	ldr r1, _0219EB08 ; =0x0000679D
	mov r0, #4
	bl sub_02045350
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0219EAF8: .word 0x0219F3C0
_0219EAFC: .word 0x0219F350
_0219EB00: .word 0x0219F488
_0219EB04: .word 0xFFFFEFFF
_0219EB08: .word 0x0000679D
	thumb_func_end ovy325_219e9b0

	thumb_func_start ovy325_219eb0c
ovy325_219eb0c: ; 0x0219EB0C
	push {r3, lr}
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0
	mvn r2, r2
	cmp r0, #0
	beq _0219EB22
	bl sub_0219B2E0
	add r2, r0, #0
_0219EB22:
	add r0, r2, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy325_219eb0c

	thumb_func_start ovy325_219eb28
ovy325_219eb28: ; 0x0219EB28
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0
	sub r0, #0xa
	mov r5, #0
	mov r6, #0
	cmp r1, r0
	bhi _0219EB78
	add r0, r5, #0
	sub r0, #0xa
	cmp r1, r0
	bhs _0219EBD2
	add r0, r5, #0
	sub r0, #0xc
	cmp r1, r0
	bhi _0219EB6E
	add r0, r5, #0
	sub r0, #0xc
	cmp r1, r0
	bhs _0219EBD4
	cmp r1, #6
	bhi _0219EBD6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219EB60: ; jump table
	.short _0219EBAE - _0219EB60 - 2 ; case 0
	.short _0219EBAE - _0219EB60 - 2 ; case 1
	.short _0219EBAE - _0219EB60 - 2 ; case 2
	.short _0219EBAE - _0219EB60 - 2 ; case 3
	.short _0219EBAE - _0219EB60 - 2 ; case 4
	.short _0219EBAE - _0219EB60 - 2 ; case 5
	.short _0219EBAE - _0219EB60 - 2 ; case 6
_0219EB6E:
	mov r0, #0xa
	mvn r0, r0
	cmp r1, r0
	beq _0219EBD2
	b _0219EBD6
_0219EB78:
	sub r0, r5, #7
	cmp r1, r0
	bhi _0219EB8A
	bhs _0219EBB2
	add r0, r5, #0
	sub r0, #9
	cmp r1, r0
	beq _0219EBD2
	b _0219EBD6
_0219EB8A:
	sub r0, r5, #6
	cmp r1, r0
	bhi _0219EB94
	beq _0219EBC2
	b _0219EBD6
_0219EB94:
	add r0, r1, #5
	cmp r0, #3
	bhi _0219EBD6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219EBA6: ; jump table
	.short _0219EBB2 - _0219EBA6 - 2 ; case 0
	.short _0219EBC2 - _0219EBA6 - 2 ; case 1
	.short _0219EBCC - _0219EBA6 - 2 ; case 2
	.short _0219EBCC - _0219EBA6 - 2 ; case 3
_0219EBAE:
	mov r5, #2
	b _0219EBD6
_0219EBB2:
	mov r1, #7
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r0, #0x10
_0219EBBA:
	orr r0, r2
	str r0, [r4, r1]
_0219EBBE:
	mov r5, #1
	b _0219EBD6
_0219EBC2:
	mov r1, #7
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r0, #0x20
	b _0219EBBA
_0219EBCC:
	mov r5, #1
	mov r6, #1
	b _0219EBD6
_0219EBD2:
	b _0219EBBE
_0219EBD4:
	mov r5, #3
_0219EBD6:
	cmp r5, #1
	bne _0219EC2A
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r1, #0
	add r0, #0x88
	str r1, [r4, r0]
	add r1, #0x94
	ldr r1, [r4, r1]
	mov r0, #0x10
	tst r0, r1
	beq _0219EBF8
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xc
	b _0219EC06
_0219EBF8:
	mov r0, #0x20
	tst r0, r1
	beq _0219EC0A
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0xd
_0219EC06:
	bl ovy325_219d884
_0219EC0A:
	cmp r6, #1
	bne _0219EC98
	mov r6, #0x6a
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_0219CC34
	add r1, r0, #0
	ldr r0, [r4, r6]
	bl sub_0219CC58
	add r0, r4, #0
	mov r1, #1
	bl ovy325_219ee60
	b _0219EC98
_0219EC2A:
	sub r0, r5, #2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0219EC98
	add r0, r4, #0
	bl ovy325_219ecdc
	bl sub_0203D554
	cmp r0, #1
	bne _0219EC4C
	ldr r0, _0219ECA8 ; =0x00000548
	bl GFL_SndSEPlay
_0219EC4C:
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x2c
	ldr r1, [r4, r1]
	mov r2, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0219CAD8
	cmp r5, #2
	bne _0219EC6A
	mov r0, #0
	bl sub_0203D564
_0219EC6A:
	mov r1, #0x2b
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0219EC84
	add r0, r1, #0
	sub r0, #0xf0
	ldr r2, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x10
	orr r0, r2
	sub r1, #0xf0
	str r0, [r4, r1]
_0219EC84:
	mov r3, #0x1d
	lsl r3, r3, #4
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #0
	sub r2, r2, #1
	bl ovy325_219e5f0
_0219EC98:
	cmp r5, #1
	bne _0219ECA4
	add r0, r4, #0
	mov r1, #0
	bl ovy325_219e960
_0219ECA4:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219ECA8: .word 0x00000548
	thumb_func_end ovy325_219eb28

	thumb_func_start ovy325_219ecac
ovy325_219ecac: ; 0x0219ECAC
	push {r3, r4, r5, lr}
	mov r5, #0x6a
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0219ECC2
	bl sub_0219B138
	mov r0, #0
	str r0, [r4, r5]
_0219ECC2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy325_219ecac

	thumb_func_start ovy325_219ecc4
ovy325_219ecc4: ; 0x0219ECC4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #6
	bl sub_02045738
	mov r0, #6
	bl sub_02045B7C
	add r0, r4, #0
	bl ovy325_219ecdc
	pop {r4, pc}
	thumb_func_end ovy325_219ecc4

	thumb_func_start ovy325_219ecdc
ovy325_219ecdc: ; 0x0219ECDC
	push {r3, r4, r5, lr}
	mov r4, #0x6a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219ED0A
	bl sub_0219CC28
	add r1, r4, #0
	add r1, #0x24
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0219CC34
	add r1, r4, #0
	add r1, #0x2c
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0219CC3C
	add r4, #0x30
	str r0, [r5, r4]
_0219ED0A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy325_219ecdc

	thumb_func_start ovy325_219ed0c
ovy325_219ed0c: ; 0x0219ED0C
	push {r3, lr}
	mov r3, #0x1a
	lsl r3, r3, #4
	ldr r3, [r0, r3]
	bl ovy325_219ed38
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy325_219ed0c
_0219ED1C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy325_219ed20
ovy325_219ed20: ; 0x0219ED20
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl ovy325_219ee60
	add r0, r5, #0
	add r1, r4, #0
	bl ovy325_219efdc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy325_219ed20

	thumb_func_start ovy325_219ed38
ovy325_219ed38: ; 0x0219ED38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0219CC18
	str r0, [sp, #4]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0219CC1C
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ovy325_219eddc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219ed38

	thumb_func_start ovy325_219ed70
ovy325_219ed70: ; 0x0219ED70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r3, #0
	str r2, [sp, #0xc]
	bl sub_0204898C
	add r1, r5, #0
	add r1, #0xc8
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
	add r5, #0xc8
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
	thumb_func_end ovy325_219ed70

	thumb_func_start ovy325_219eddc
ovy325_219eddc: ; 0x0219EDDC
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #0xf7
	lsl r4, r4, #6
	str r4, [sp, #4]
	mov r4, #4
	str r4, [sp, #8]
	bl ovy325_219ed70
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy325_219eddc

	thumb_func_start ovy325_219edf8
ovy325_219edf8: ; 0x0219EDF8
	push {r3, lr}
	mov r1, #0x1d
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r3, #1
	cmp r1, #7
	bgt _0219EE08
	mov r3, #0
_0219EE08:
	mov r1, #2
	mov r2, #0
	bl ovy325_219d914
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy325_219edf8

	thumb_func_start ovy325_219ee14
ovy325_219ee14: ; 0x0219EE14
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0x1d
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #7
	ble _0219EE5A
	ldr r0, [r5, #0x60]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	sub r4, #0x28
	ldr r0, [r5, r4]
	add r4, sp, #0
	mov r6, #2
	ldrsh r1, [r4, r6]
	bl sub_0219C324
	strh r0, [r4, #2]
	ldrsh r0, [r4, r6]
	cmp r0, #8
	bge _0219EE48
	mov r0, #8
	b _0219EE4E
_0219EE48:
	cmp r0, #0xa0
	ble _0219EE50
	mov r0, #0xa0
_0219EE4E:
	strh r0, [r4, #2]
_0219EE50:
	ldr r0, [r5, #0x60]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
_0219EE5A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy325_219ee14

	thumb_func_start ovy325_219ee60
ovy325_219ee60: ; 0x0219EE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp]
	mov r6, #0
	mov r7, #0
	cmp r0, #1
	bne _0219EE7A
	mov r0, #0x1e
	sub r1, r6, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_0219EE7A:
	mov r5, #0x6a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0219CC3C
	add r5, #0x38
	ldr r1, [r4, r5]
	str r0, [sp, #8]
	cmp r0, r1
	bne _0219EE90
	b _0219EFCE
_0219EE90:
	cmp r0, r1
	ble _0219EE98
	mov r0, #1
	b _0219EE9C
_0219EE98:
	mov r0, #0
	mvn r0, r0
_0219EE9C:
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #1
	bne _0219EEA8
	mov r0, #0
	str r0, [sp, #4]
_0219EEA8:
	ldr r1, [sp, #8]
	mov r0, #0
	lsl r1, r1, #2
	mov ip, r1
	add r3, r4, r1
	mov r5, #1
_0219EEB4:
	lsl r1, r0, #2
	add r2, r3, r1
	ldr r1, _0219EFD4 ; =0x000001EA
	ldrb r1, [r2, r1]
	mov r2, #8
	tst r2, r1
	beq _0219EEC8
	add r2, r5, #0
	lsl r2, r0
	orr r6, r2
_0219EEC8:
	mov r2, #0x10
	tst r1, r2
	beq _0219EED4
	mov r1, #1
	lsl r1, r0
	orr r7, r1
_0219EED4:
	add r0, r0, #1
	cmp r0, #7
	blt _0219EEB4
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _0219EEFC
	mov r0, ip
	add r1, r4, r0
	ldr r0, _0219EFD8 ; =0x000001E6
	ldrb r0, [r1, r0]
	mov r1, #8
	tst r1, r0
	beq _0219EEF2
	mov r1, #0x80
	orr r6, r1
_0219EEF2:
	mov r1, #0x10
	tst r0, r1
	beq _0219EEFC
	mov r0, #0x80
	orr r7, r0
_0219EEFC:
	ldr r0, [sp, #8]
	mov r1, #0x1d
	lsl r1, r1, #4
	add r2, r0, #7
	ldr r0, [r4, r1]
	cmp r2, r0
	bge _0219EF2A
	mov r0, ip
	add r0, r4, r0
	add r1, #0x36
	ldrb r2, [r0, r1]
	mov r0, #8
	add r1, r2, #0
	tst r1, r0
	beq _0219EF1E
	add r0, #0xf8
	orr r6, r0
_0219EF1E:
	mov r0, #0x10
	add r1, r2, #0
	tst r1, r0
	beq _0219EF2A
	add r0, #0xf0
	orr r7, r0
_0219EF2A:
	mov r5, #0
_0219EF2C:
	mov r1, #1
	mov r0, #0
	str r0, [sp, #0xc]
	lsl r1, r5
	add r0, r6, #0
	tst r0, r1
	beq _0219EF48
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #1
	mov r3, #1
	b _0219EF5A
_0219EF48:
	add r0, r7, #0
	tst r0, r1
	beq _0219EF5E
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #1
	mov r3, #3
_0219EF5A:
	bl ovy325_219d884
_0219EF5E:
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #1
	bl ovy325_219d914
	add r5, r5, #1
	cmp r5, #9
	blt _0219EF2C
	ldr r0, [sp, #4]
	mov r1, #0x18
	mul r1, r0
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	mov r5, #0
	str r0, [sp, #0x10]
	add r6, sp, #0x14
_0219EF80:
	lsl r0, r5, #2
	add r7, r4, r0
	ldr r0, [r7, #0x64]
	add r1, sp, #0x14
	mov r2, #1
	bl sub_0204C178
	add r1, r5, #0
	add r1, #0x11
	add r0, r4, #0
	lsl r1, r1, #1
	bl sub_0219D260
	add r1, r5, #0
	add r1, #0x11
	lsl r1, r1, #1
	strh r0, [r6]
	add r0, r4, #0
	add r1, r1, #1
	bl sub_0219D260
	strh r0, [r6, #2]
	mov r0, #2
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r0, r1, r0
	strh r0, [r6, #2]
	ldr r0, [r7, #0x64]
	add r1, sp, #0x14
	bl sub_0204C140
	add r5, r5, #1
	cmp r5, #9
	blt _0219EF80
	mov r1, #0x1e
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	str r0, [r4, r1]
_0219EFCE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EFD4: .word 0x000001EA
_0219EFD8: .word 0x000001E6
	thumb_func_end ovy325_219ee60

	thumb_func_start ovy325_219efdc
ovy325_219efdc: ; 0x0219EFDC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
_0219EFE4:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x64]
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
	ldr r0, [r5, #0x64]
	add r1, sp, #0
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #9
	blt _0219EFE4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219efdc

	thumb_func_start ovy325_219f010
ovy325_219f010: ; 0x0219F010
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r1, #0
	add r4, r2, #0
	add r2, r7, #0
	mov r1, #3
	add r2, #0xb
	add r3, r5, #0
	add r6, r0, #0
	bl ovy325_219d914
	cmp r5, #1
	bne _0219F03A
	add r7, #0xb
	add r4, #0xa
	add r0, r6, #0
	mov r1, #3
	add r2, r7, #0
	add r3, r4, #0
	bl ovy325_219d884
_0219F03A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy325_219f010

	thumb_func_start ovy325_219f03c
ovy325_219f03c: ; 0x0219F03C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	mov r7, #1
	add r5, r4, #0
_0219F046:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ovy325_219d914
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #2
	add r3, r5, #0
	bl ovy325_219d914
	add r4, r4, #1
	cmp r4, #6
	blt _0219F046
	add r0, r6, #0
	mov r1, #3
	add r2, r5, #0
	add r3, r5, #0
	bl ovy325_219d914
	add r0, r6, #0
	mov r1, #3
	add r2, r7, #0
	add r3, r5, #0
	bl ovy325_219d914
	mov r4, #0
_0219F07E:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	add r3, r5, #0
	bl ovy325_219f010
	add r5, r5, #1
	cmp r5, #3
	blt _0219F07E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy325_219f03c

	thumb_func_start sub_0219F094
sub_0219F094: ; 0x0219F094
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F094

	thumb_func_start ovy325_219f098
ovy325_219f098: ; 0x0219F098
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219F11C ; =0x000001BF
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219F120 ; =0x0219F7D8
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219F124 ; =0x04000050
	ldr r0, _0219F128 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219F12C ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219F130 ; =0x0219F62C
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
	bl ovy325_219f1c8
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy325_219f26c
	ldr r0, _0219F134 ; =ovy325_219f1b4
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F11C: .word 0x000001BF
_0219F120: .word 0x0219F7D8
_0219F124: .word 0x04000050
_0219F128: .word 0x04001050
_0219F12C: .word 0xFFFF1FFF
_0219F130: .word 0x0219F62C
_0219F134: .word ovy325_219f1b4
	thumb_func_end ovy325_219f098

	thumb_func_start ovy325_219f138
ovy325_219f138: ; 0x0219F138
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy325_219f2ac
	add r0, r4, #0
	bl ovy325_219f228
	bl sub_020232D8
	ldr r5, _0219F180 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219F184 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219F188 ; =0xFFFF1FFF
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
_0219F180: .word 0x04000050
_0219F184: .word 0x04001050
_0219F188: .word 0xFFFF1FFF
	thumb_func_end ovy325_219f138

	thumb_func_start ovy325_219f18c
ovy325_219f18c: ; 0x0219F18C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219F2C8
	add r0, r4, #0
	bl sub_0219F260
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy325_219f18c

	thumb_func_start sub_0219F1A0
sub_0219F1A0: ; 0x0219F1A0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F1A0

	thumb_func_start sub_0219F1A4
sub_0219F1A4: ; 0x0219F1A4
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F1A4

	thumb_func_start sub_0219F1A8
sub_0219F1A8: ; 0x0219F1A8
	ldr r3, _0219F1B0 ; =sub_0219F2D8
	add r0, r0, #4
	bx r3
	nop
_0219F1B0: .word sub_0219F2D8
	thumb_func_end sub_0219F1A8

	thumb_func_start ovy325_219f1b4
ovy325_219f1b4: ; 0x0219F1B4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219F264
	add r0, r4, #4
	bl sub_0219F2D0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy325_219f1b4

	thumb_func_start ovy325_219f1c8
ovy325_219f1c8: ; 0x0219F1C8
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
	ldr r0, _0219F220 ; =0x0219F600
	bl sub_02044710
	ldr r7, _0219F224 ; =0x0219F65C
_0219F1EA:
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
	blo _0219F1EA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F220: .word 0x0219F600
_0219F224: .word 0x0219F65C
	thumb_func_end ovy325_219f1c8

	thumb_func_start ovy325_219f228
ovy325_219f228: ; 0x0219F228
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219F25C ; =0x0219F65C
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219F232:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219F232
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F25C: .word 0x0219F65C
	thumb_func_end ovy325_219f228

	thumb_func_start sub_0219F260
sub_0219F260: ; 0x0219F260
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F260

	thumb_func_start sub_0219F264
sub_0219F264: ; 0x0219F264
	ldr r3, _0219F268 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219F268: .word sub_02045A5C
	thumb_func_end sub_0219F264

	thumb_func_start ovy325_219f26c
ovy325_219f26c: ; 0x0219F26C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219F2A8 ; =0x0219F610
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
_0219F2A8: .word 0x0219F610
	thumb_func_end ovy325_219f26c

	thumb_func_start ovy325_219f2ac
ovy325_219f2ac: ; 0x0219F2AC
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
	thumb_func_end ovy325_219f2ac

	thumb_func_start sub_0219F2C8
sub_0219F2C8: ; 0x0219F2C8
	ldr r3, _0219F2CC ; =sub_0204B794
	bx r3
	.align 2, 0
_0219F2CC: .word sub_0204B794
	thumb_func_end sub_0219F2C8

	thumb_func_start sub_0219F2D0
sub_0219F2D0: ; 0x0219F2D0
	ldr r3, _0219F2D4 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219F2D4: .word sub_0204B7C8
	thumb_func_end sub_0219F2D0

	thumb_func_start sub_0219F2D8
sub_0219F2D8: ; 0x0219F2D8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219F2D8
_0219F2DC:
	.byte 0xA8, 0xB8, 0xE8, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00, 0xA8, 0x00, 0xA9, 0x00, 0xAB, 0x00, 0x84, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0A, 0x00, 0x02, 0x00
	.byte 0x2A, 0x00, 0xB1, 0x00, 0xDA, 0x00, 0xAA, 0x00, 0xAC, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00
	.byte 0x0E, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x16, 0x00, 0x00, 0x07, 0x18
	.byte 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x04, 0x05, 0x06, 0x02, 0xFF, 0x00
	.byte 0x00, 0x00, 0x04, 0x02, 0x01, 0x1C, 0x04, 0x0A, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0D, 0xED, 0x19, 0x02, 0x1D, 0xED, 0x19, 0x02, 0x21, 0xED, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x21, 0x00, 0x00
	.byte 0x02, 0x22, 0x00, 0x00, 0x03, 0x23, 0x00, 0x00, 0x07, 0x25, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x01, 0x30, 0x01, 0x01, 0x00, 0x01, 0x03, 0x01, 0x04, 0x30, 0x01, 0x01, 0x00, 0x01, 0x00, 0x01
	.byte 0x05, 0x30, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x0B, 0x00, 0x00, 0x01, 0x06, 0x00, 0x15, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1B, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0xFF, 0x02, 0x00, 0x1C, 0x03, 0x02, 0x00, 0x1A, 0x03, 0x00, 0x18, 0x0C, 0x08, 0x06, 0x04
	.byte 0x03, 0x01, 0x08, 0x00, 0x07, 0x00, 0x04, 0x00, 0x00, 0x07, 0x00, 0x00, 0xD8, 0xF4, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
	.byte 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x00
	.byte 0x00, 0x00, 0x02, 0x01, 0x1B, 0x02, 0x01, 0x00, 0x02, 0x0B, 0x1C, 0x02, 0x02, 0x00, 0x02, 0x11
	.byte 0x12, 0x02, 0x03, 0x00, 0x03, 0x04, 0x1B, 0x02, 0x0A, 0x00, 0x03, 0x06, 0x1B, 0x04, 0x0A, 0x00
	.byte 0x09, 0x0E, 0x15, 0x02, 0x0A, 0x00, 0x14, 0x11, 0x0A, 0x02, 0x0A, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x04, 0x04, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x05
	.byte 0x05, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x06, 0x06, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x07
	.byte 0x07, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x08, 0x08, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x09
	.byte 0x09, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02
	.byte 0x71, 0xCF, 0x19, 0x02, 0x21, 0xCF, 0x19, 0x02, 0x00, 0x17, 0x10, 0xE7, 0x08, 0x00, 0x00, 0x00
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
	.byte 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x10, 0x0C, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x11, 0x0C
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x12, 0x0C, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x13, 0x0C
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x14, 0x0C, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x15, 0x0C
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x16, 0x0C, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x17, 0x0C
	.byte 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x18, 0x0C, 0x01, 0x30, 0x02, 0x00, 0x00, 0x01, 0x19, 0x0C
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x30, 0x01, 0x00, 0x00, 0x01, 0x1A, 0x0C
	.byte 0x05, 0x30, 0x00, 0x00, 0x00, 0x01, 0x1A, 0x0C, 0x06, 0x30, 0x00, 0x00, 0x00, 0x01, 0x0A, 0x0C
	.byte 0x06, 0x30, 0x00, 0x00, 0x00, 0x01, 0x0B, 0x0C, 0x06, 0x30, 0x00, 0x00, 0x00, 0x01, 0x0C, 0x0C
	.byte 0x06, 0x30, 0x00, 0x00, 0x00, 0x01, 0x0D, 0x0C, 0x06, 0x30, 0x00, 0x00, 0x00, 0x01, 0x0E, 0x0C
	.byte 0x06, 0x30, 0x00, 0x00, 0x00, 0x01, 0x0F, 0x0C, 0x07, 0x30, 0x02, 0x00, 0x00, 0x00, 0x1B, 0x0C
	.byte 0x08, 0x30, 0x02, 0x00, 0x00, 0x00, 0x1C, 0x0C, 0x09, 0x30, 0x02, 0x00, 0x00, 0x00, 0x1D, 0x0C
	.byte 0x0A, 0x30, 0x00, 0x00, 0x00, 0x01, 0x1E, 0x0C, 0x0B, 0x30, 0x00, 0x00, 0x00, 0x01, 0x1F, 0x0C
	.byte 0x0C, 0x30, 0x00, 0x00, 0x00, 0x01, 0x20, 0x0C, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03
	.byte 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x42, 0xF3, 0x19, 0x02, 0xDC, 0xF2, 0x19, 0x02, 0x5C, 0xF3, 0x19, 0x02, 0xBD, 0xDE, 0x19, 0x02
	.byte 0x09, 0xDF, 0x19, 0x02, 0x31, 0xE2, 0x19, 0x02, 0x70, 0x6B, 0x77, 0x64, 0x5F, 0x72, 0x65, 0x63
	.byte 0x6F, 0x72, 0x64, 0x5F, 0x6D, 0x6F, 0x6E, 0x69, 0x74, 0x6F, 0x72, 0x5F, 0x67, 0x72, 0x61, 0x70
	.byte 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219F2DC
