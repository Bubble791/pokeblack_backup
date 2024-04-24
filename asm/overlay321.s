    .include "macros/function.inc"
	.include "overlay321.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy321_219ce80
ovy321_219ce80: ; 0x0219CE80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0219CEFC ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	mov r2, #3
	mov r0, #1
	mov r1, #0x9a
	lsl r2, r2, #0x10
	mov r6, #1
	mov r7, #0x9a
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x9a
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x80
	blx MI_CpuFill8
	strh r7, [r4]
	str r5, [r4, #0x3c]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy321_219dc04
	str r0, [r4, #0x38]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0x40]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0x44]
	add r0, r4, #0
	bl ovy321_219cfe4
	mov r0, #6
	str r0, [sp]
	str r6, [sp, #4]
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
	.align 2, 0
_0219CEFC: .word 0x0000008B
	thumb_func_end ovy321_219ce80

	thumb_func_start ovy321_219cf00
ovy321_219cf00: ; 0x0219CF00
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219CF14
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219CF14:
	add r0, r5, #0
	bl ovy321_219d074
	ldr r0, [r5, #0x44]
	bl sub_02021A18
	ldr r0, [r5, #0x40]
	bl sub_02022DA8
	ldr r0, [r5, #0x38]
	bl ovy321_219dcac
	ldrh r5, [r5]
	add r0, r4, #0
	bl sub_0203AB10
	add r0, r5, #0
	bl sub_0203A1D0
	ldr r0, _0219CF44 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CF44: .word 0x0000008B
	thumb_func_end ovy321_219cf00

	thumb_func_start ovy321_219cf48
ovy321_219cf48: ; 0x0219CF48
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r3, #0
	cmp r0, #3
	bhi _0219CFBA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219CF62: ; jump table
	.short _0219CF6A - _0219CF62 - 2 ; case 0
	.short _0219CF82 - _0219CF62 - 2 ; case 1
	.short _0219CF90 - _0219CF62 - 2 ; case 2
	.short _0219CFAC - _0219CF62 - 2 ; case 3
_0219CF6A:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219CFBA
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r1, [r4, #0x68]
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0x68]
	b _0219CFBA
_0219CF82:
	ldr r2, [r4, #0x60]
	ldr r1, _0219CFE0 ; =0x00002710
	cmp r2, r1
	bne _0219CFBA
_0219CF8A:
	add r0, r0, #1
	str r0, [r5]
	b _0219CFBA
_0219CF90:
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
	b _0219CF8A
_0219CFAC:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219CFBA
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219CFBA:
	add r0, r4, #0
	bl sub_0219D06C
	add r0, r4, #0
	bl ovy321_219da58
	ldr r0, [r4, #0x38]
	bl ovy321_219dd04
	ldr r0, [r4, #0x38]
	bl sub_0219DD18
	ldr r0, [r4, #0x38]
	bl sub_0219DD1C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219CFE0: .word 0x00002710
	thumb_func_end ovy321_219cf48

	thumb_func_start ovy321_219cfe4
ovy321_219cfe4: ; 0x0219CFE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r5, r0, #0
	str r1, [r5, #0x60]
	str r1, [r5, #0x64]
	str r1, [r5, #0x68]
	add r4, r1, #0
_0219CFF4:
	lsl r0, r1, #2
	add r0, r5, r0
	add r1, r1, #1
	str r4, [r0, #0x6c]
	cmp r1, #4
	blt _0219CFF4
	ldr r6, _0219D064 ; =0x0000010F
	ldrh r2, [r5]
	add r0, r6, #0
	mov r1, #0x22
	bl sub_0204A934
	add r6, #0x53
	str r0, [r5, #0x7c]
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x58]
	add r0, r5, #0
	str r4, [r5, #0x5c]
	bl ovy321_219d2e0
	add r0, r5, #0
	bl sub_0219DBF4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ovy321_219d3cc
	add r0, r5, #0
	bl ovy321_219d9c8
	add r0, r5, #0
	bl ovy321_219d630
	add r0, r5, #0
	bl ovy321_219d8d8
	mov r0, #6
	str r0, [sp]
	ldr r0, _0219D068 ; =0x04000050
	add r1, r4, #0
	mov r2, #0x3f
	mov r3, #8
	bl G2x_SetBlendAlpha_
	mov r0, #1
	add r1, r4, #0
	bl sub_02044C98
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219D064: .word 0x0000010F
_0219D068: .word 0x04000050
	thumb_func_end ovy321_219cfe4

	thumb_func_start sub_0219D06C
sub_0219D06C: ; 0x0219D06C
	ldr r3, _0219D070 ; =sub_0219D0AC
	bx r3
	.align 2, 0
_0219D070: .word sub_0219D0AC
	thumb_func_end sub_0219D06C

	thumb_func_start ovy321_219d074
ovy321_219d074: ; 0x0219D074
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x7c]
	bl GFL_HeapFree
	add r0, r6, #0
	bl ovy321_219da38
	mov r4, #0
	add r7, r4, #0
_0219D088:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x58]
	cmp r0, #0
	beq _0219D098
	bl GFL_MsgDataFree
	str r7, [r5, #0x58]
_0219D098:
	add r4, r4, #1
	cmp r4, #2
	blt _0219D088
	add r0, r6, #0
	bl ovy321_219d698
	add r0, r6, #0
	bl ovy321_219d918
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy321_219d074

	thumb_func_start sub_0219D0AC
sub_0219D0AC: ; 0x0219D0AC
	ldr r3, _0219D0B0 ; =ovy321_219d0b4
	bx r3
	.align 2, 0
_0219D0B0: .word ovy321_219d0b4
	thumb_func_end sub_0219D0AC

	thumb_func_start ovy321_219d0b4
ovy321_219d0b4: ; 0x0219D0B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x60]
	cmp r1, #0xc8
	bgt _0219D0E6
	bge _0219D1AA
	cmp r1, #0x64
	bgt _0219D0D4
	bge _0219D148
	cmp r1, #0
	bgt _0219D0CE
	beq _0219D126
	pop {r3, r4, r5, pc}
_0219D0CE:
	cmp r1, #0xa
	beq _0219D12C
	pop {r3, r4, r5, pc}
_0219D0D4:
	cmp r1, #0x6e
	bgt _0219D0E0
	bge _0219D174
	cmp r1, #0x69
	beq _0219D15E
	pop {r3, r4, r5, pc}
_0219D0E0:
	cmp r1, #0x78
	beq _0219D18E
	pop {r3, r4, r5, pc}
_0219D0E6:
	mov r5, #0x4b
	lsl r5, r5, #2
	cmp r1, r5
	bgt _0219D102
	blt _0219D0F2
	b _0219D284
_0219D0F2:
	cmp r1, #0xd2
	bgt _0219D0FA
	beq _0219D1D0
	pop {r3, r4, r5, pc}
_0219D0FA:
	cmp r1, #0xdc
	bne _0219D100
	b _0219D248
_0219D100:
	pop {r3, r4, r5, pc}
_0219D102:
	add r2, r5, #0
	add r2, #0x14
	cmp r1, r2
	bgt _0219D120
	add r2, r5, #0
	add r2, #0x14
	cmp r1, r2
	blt _0219D114
	b _0219D2B4
_0219D114:
	add r2, r5, #0
	add r2, #0xa
	cmp r1, r2
	bne _0219D11E
	b _0219D29C
_0219D11E:
	pop {r3, r4, r5, pc}
_0219D120:
	ldr r0, _0219D2C4 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, pc}
_0219D126:
	mov r0, #0xa
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D12C:
	ldr r2, [r4, #0x68]
	lsl r2, r2, #0x1f
	beq _0219D1B6
	mov r1, #0x64
	str r1, [r4, #0x60]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy321_219d6dc
	ldr r0, _0219D2C8 ; =0x000008BB
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_0219D148:
	bl ovy321_219d788
	cmp r0, #0
	bne _0219D1B6
	add r0, r4, #0
	mov r1, #0
	bl ovy321_219d7f4
	mov r0, #0x69
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D15E:
	mov r1, #1
	bl ovy321_219d7f4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3c
	bl sub_0219D9A8
	mov r0, #0x6e
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D174:
	mov r1, #0
	mov r5, #0
	bl sub_0219D9B0
	cmp r0, #0
	bne _0219D1B6
	add r0, r4, #0
	add r1, r5, #0
	bl ovy321_219d934
	mov r0, #0x78
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D18E:
	mov r1, #2
	bl ovy321_219d7f4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl sub_0219D9A8
	mov r0, #0xc8
	str r0, [r4, #0x60]
	ldr r0, _0219D2CC ; =0x000008BC
	bl GFL_SndSEPlay
	pop {r3, r4, r5, pc}
_0219D1AA:
	mov r1, #1
	mov r5, #1
	bl sub_0219D9B0
	cmp r0, #0
	beq _0219D1B8
_0219D1B6:
	b _0219D2C0
_0219D1B8:
	add r0, r4, #0
	bl ovy321_219d990
	cmp r0, #0
	bne _0219D2C0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy321_219d934
	mov r0, #0xd2
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D1D0:
	bl ovy321_219d990
	cmp r0, #0
	bne _0219D2C0
	mov r0, #0xdc
	str r0, [r4, #0x60]
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy321_219d720
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl ovy321_219d720
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl ovy321_219d720
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl ovy321_219d720
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	mov r3, #0
	bl ovy321_219d720
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	mov r3, #0
	bl ovy321_219d720
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x3c
	bl sub_0219D9A8
	pop {r3, r4, r5, pc}
_0219D248:
	mov r1, #2
	bl sub_0219D9B0
	cmp r0, #0
	bne _0219D2C0
	add r0, r4, #0
	bl sub_0219DBF4
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ovy321_219d3cc
	add r0, r4, #0
	bl ovy321_219db18
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	bl ovy321_219d934
	str r5, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D284:
	bl ovy321_219d990
	cmp r0, #0
	bne _0219D2C0
	add r5, #0xa
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xb4
	str r5, [r4, #0x60]
	bl sub_0219D9A8
	pop {r3, r4, r5, pc}
_0219D29C:
	mov r1, #2
	bl sub_0219D9B0
	cmp r0, #0
	bne _0219D2C0
	add r0, r4, #0
	mov r1, #1
	bl ovy321_219d934
	add r5, #0x14
	str r5, [r4, #0x60]
	pop {r3, r4, r5, pc}
_0219D2B4:
	bl ovy321_219d990
	cmp r0, #0
	bne _0219D2C0
	ldr r0, _0219D2C4 ; =0x00002710
	str r0, [r4, #0x60]
_0219D2C0:
	pop {r3, r4, r5, pc}
	nop
_0219D2C4: .word 0x00002710
_0219D2C8: .word 0x000008BB
_0219D2CC: .word 0x000008BC
	thumb_func_end ovy321_219d0b4

	thumb_func_start sub_0219D2D0
sub_0219D2D0: ; 0x0219D2D0
	cmp r1, #6
	blo _0219D2D8
	mov r0, #0
	bx lr
_0219D2D8:
	ldr r2, [r0, #0x7c]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_0219D2D0

	thumb_func_start ovy321_219d2e0
ovy321_219d2e0: ; 0x0219D2E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, _0219D3BC ; =0x0000010F
	ldrh r1, [r1]
	ldr r4, _0219D3C0 ; =0x0219DE80
	ldr r5, _0219D3C4 ; =0x0219DE8C
	ldr r7, _0219D3C8 ; =0x0219DE9C
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0x14]
	mov r6, #0
_0219D2FA:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _0219D320
	ldrb r0, [r4, #3]
	ldrb r3, [r4, #2]
	ldrb r1, [r4, #1]
	lsl r0, r0, #5
	str r0, [sp]
	ldr r0, [sp, #0xc]
	lsl r3, r3, #5
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	bl GFL_G2DIOLoadArcNCLRDefault
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blt _0219D2FA
_0219D320:
	mov r4, #0
	add r6, r4, #0
_0219D324:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _0219D346
	str r6, [sp]
	ldr r0, [sp, #0xc]
	str r6, [sp, #4]
	ldrh r0, [r0]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	bl sub_0204ADA8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0219D324
_0219D346:
	mov r0, #0
	str r0, [sp, #0x10]
_0219D34A:
	ldrb r2, [r7]
	cmp r2, #0xff
	beq _0219D3AA
	mov r4, #0
	str r4, [sp]
	ldr r0, [sp, #0xc]
	str r4, [sp, #4]
	ldrh r0, [r0]
	ldrb r1, [r7, #1]
	ldrb r3, [r7, #2]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	bl sub_0204AF50
	ldrb r0, [r7, #3]
	cmp r0, #0
	beq _0219D39E
	ldrb r0, [r7]
	bl sub_02045814
	add r1, r0, #0
	ldrb r0, [r7, #3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0219D37E:
	lsl r0, r4, #6
	mov r2, #0
	add r3, r1, r0
_0219D384:
	lsl r0, r2, #1
	ldrh r6, [r3, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r3, r0]
	cmp r2, #0x20
	blt _0219D384
	add r4, r4, #1
	cmp r4, #0x18
	blt _0219D37E
	ldrb r0, [r7]
	bl GFL_BGSysLoadScr
_0219D39E:
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blt _0219D34A
_0219D3AA:
	ldr r0, [sp, #0x14]
	bl GFL_ArcToolFree
	mov r0, #0
	mov r1, #0
	bl sub_02045350
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D3BC: .word 0x0000010F
_0219D3C0: .word 0x0219DE80
_0219D3C4: .word 0x0219DE8C
_0219D3C8: .word 0x0219DE9C
	thumb_func_end ovy321_219d2e0

	thumb_func_start ovy321_219d3cc
ovy321_219d3cc: ; 0x0219D3CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	ldr r0, _0219D484 ; =0x0000010F
	add r6, r2, #0
	ldr r7, _0219D488 ; =0x0219DF37
	bl GFL_ArcSysCreateFileHandle
	str r0, [sp, #0xc]
	cmp r6, #0
	bne _0219D402
	lsl r2, r4, #2
	add r3, r7, r2
	ldrb r1, [r3, #3]
	ldrb r2, [r7, r2]
	lsl r1, r1, #5
	str r1, [sp]
	ldrh r1, [r5]
	str r1, [sp, #4]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #2]
	lsl r3, r3, #5
	bl GFL_G2DIOLoadArcNCLRDefault
	b _0219D470
_0219D402:
	lsl r6, r4, #2
	mov r4, #0
	ldr r1, _0219D48C ; =0x0219DF6F
	str r4, [sp]
	ldr r2, _0219D48C ; =0x0219DF6F
	str r4, [sp, #4]
	add r3, r1, r6
	ldrh r1, [r5]
	ldrb r2, [r2, r6]
	str r1, [sp, #8]
	ldrb r1, [r3, #1]
	ldrb r3, [r3, #2]
	bl sub_0204ADA8
	ldr r0, _0219D490 ; =0x0219DFA7
	str r4, [sp]
	add r7, r0, r6
	str r4, [sp, #4]
	ldrh r0, [r5]
	ldr r2, _0219D490 ; =0x0219DFA7
	ldrb r1, [r7, #1]
	str r0, [sp, #8]
	ldrb r2, [r2, r6]
	ldrb r3, [r7, #2]
	ldr r0, [sp, #0xc]
	bl sub_0204AF50
	ldrb r0, [r7, #3]
	cmp r0, #0
	beq _0219D470
	ldrb r0, [r7]
	bl sub_02045814
	add r1, r0, #0
	ldrb r0, [r7, #3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0219D450:
	lsl r0, r4, #6
	mov r2, #0
	add r3, r1, r0
_0219D456:
	lsl r0, r2, #1
	ldrh r6, [r3, r0]
	add r2, r2, #1
	add r6, r6, r5
	strh r6, [r3, r0]
	cmp r2, #0x20
	blt _0219D456
	add r4, r4, #1
	cmp r4, #0x18
	blt _0219D450
	ldrb r0, [r7]
	bl GFL_BGSysLoadScr
_0219D470:
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	mov r0, #0
	mov r1, #0
	bl sub_02045350
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D484: .word 0x0000010F
_0219D488: .word 0x0219DF37
_0219D48C: .word 0x0219DF6F
_0219D490: .word 0x0219DFA7
	thumb_func_end ovy321_219d3cc

	thumb_func_start ovy321_219d494
ovy321_219d494: ; 0x0219D494
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	ldr r0, [r7, #0x38]
	str r1, [sp, #0xc]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0219DD20
	str r0, [sp, #0x20]
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	mov r3, #6
	ldrsh r3, [r4, r3]
	mov r1, #2
	mov r2, #4
	str r3, [sp, #0x10]
	mov r3, #8
	ldrsh r3, [r4, r3]
	ldrsh r0, [r4, r6]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	cmp r3, #0
	bne _0219D4D2
	add r6, r7, #0
	add r6, #0x1c
	b _0219D4D6
_0219D4D2:
	add r6, r7, #0
	add r6, #0x20
_0219D4D6:
	mov r3, #0
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _0219D5A2
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x18]
	lsl r0, r1, #2
	add r0, r7, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsl r2, r2, #2
	lsl r0, r0, #0x10
	add r2, r7, r2
	lsr r0, r0, #0x10
	str r2, [sp, #0x1c]
	str r0, [sp, #0x2c]
_0219D4FA:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219D5A2
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0219D2D0
	str r0, [sp, #0x28]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_0219D2D0
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
	bne _0219D55A
	mov r1, #1
_0219D55A:
	ldr r0, [r6, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _0219D56A
	mov r1, #1
_0219D56A:
	ldr r0, [r6, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _0219D582
	ldr r0, [r6, r4]
	mov r1, #1
	mov r2, #1
	bl sub_0204C2B0
_0219D582:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _0219D594
	ldr r0, [r6, r4]
	mov r1, #0
	mov r2, #1
	bl sub_0204C2B0
_0219D594:
	ldr r0, [sp, #0x24]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _0219D4FA
_0219D5A2:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy321_219d494

	thumb_func_start ovy321_219d5a8
ovy321_219d5a8: ; 0x0219D5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	ldrh r1, [r5]
	ldr r0, _0219D62C ; =0x0000010F
	add r4, r2, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219DD20
	mov r1, #0
	mov r3, #4
	str r1, [sp]
	ldrh r0, [r4, #6]
	ldrsh r3, [r4, r3]
	ldrsh r1, [r4, r1]
	str r0, [sp, #4]
	ldrh r0, [r5]
	lsl r3, r3, #0x15
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r6, #0
	lsr r3, r3, #0x10
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
	nop
_0219D62C: .word 0x0000010F
	thumb_func_end ovy321_219d5a8

	thumb_func_start ovy321_219d630
ovy321_219d630: ; 0x0219D630
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0219DD20
	ldr r2, _0219D680 ; =0x0219DEEE
	add r0, r4, #0
	mov r1, #0
	bl ovy321_219d5a8
	ldr r2, _0219D684 ; =0x0219DECE
	add r0, r4, #0
	mov r1, #0
	bl ovy321_219d5a8
	ldr r2, _0219D688 ; =0x0219DEAC
	ldr r3, _0219D68C ; =0x0219DE6A
	add r0, r4, #0
	mov r1, #0
	bl ovy321_219d494
	ldr r2, _0219D690 ; =0x0219DFDF
	ldr r3, _0219D694 ; =0x0219DE60
	add r0, r4, #0
	mov r1, #0
	bl ovy321_219d494
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C318
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl GFL_BGSysSetBGEnabledB
	pop {r4, pc}
	.align 2, 0
_0219D680: .word 0x0219DEEE
_0219D684: .word 0x0219DECE
_0219D688: .word 0x0219DEAC
_0219D68C: .word 0x0219DE6A
_0219D690: .word 0x0219DFDF
_0219D694: .word 0x0219DE60
	thumb_func_end ovy321_219d630

	thumb_func_start ovy321_219d698
ovy321_219d698: ; 0x0219D698
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_0204C108
	mov r4, #0
_0219D6A4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #6
	blt _0219D6A4
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
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy321_219d698

	thumb_func_start ovy321_219d6dc
ovy321_219d6dc: ; 0x0219D6DC
	push {r3, r4, r5, lr}
	cmp r1, #0
	bne _0219D700
	cmp r2, #1
	bge _0219D71C
	add r5, r0, #0
	add r5, #0x1c
	lsl r4, r2, #2
	lsl r1, r3, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
_0219D700:
	cmp r2, #6
	bge _0219D71C
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
_0219D71C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy321_219d6dc

	thumb_func_start ovy321_219d720
ovy321_219d720: ; 0x0219D720
	push {r3, lr}
	cmp r1, #0
	bne _0219D738
	cmp r2, #1
	bge _0219D748
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x1c]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_0219D738:
	cmp r2, #6
	bge _0219D748
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x20]
	add r1, r3, #0
	bl sub_0204C124
_0219D748:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy321_219d720

	thumb_func_start ovy321_219d74c
ovy321_219d74c: ; 0x0219D74C
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	bne _0219D76C
	cmp r2, #1
	blt _0219D75C
	mov r0, #0
	pop {r4, pc}
_0219D75C:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D784
	b _0219D782
_0219D76C:
	cmp r2, #6
	blt _0219D774
	mov r0, #0
	pop {r4, pc}
_0219D774:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x20]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D784
_0219D782:
	mov r4, #0
_0219D784:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy321_219d74c

	thumb_func_start ovy321_219d788
ovy321_219d788: ; 0x0219D788
	push {r4, r5, r6, lr}
	mov r1, #0
	mov r2, #0
	add r5, r0, #0
	mov r4, #1
	mov r6, #0
	bl ovy321_219d74c
	cmp r0, #0
	bne _0219D7C6
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl ovy321_219d6dc
	ldr r0, [r5, #0x64]
	add r0, r0, #1
	str r0, [r5, #0x64]
	cmp r0, #2
	ble _0219D7BE
	ldr r0, [r5, #0x68]
	mov r1, #2
	orr r0, r1
	str r1, [r5, #0x64]
	str r0, [r5, #0x68]
	add r4, r6, #0
_0219D7BE:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ovy321_219d7cc
_0219D7C6:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy321_219d788

	thumb_func_start ovy321_219d7cc
ovy321_219d7cc: ; 0x0219D7CC
	push {r4, lr}
	ldr r2, _0219D7EC ; =0x0219DE74
	lsl r4, r1, #2
	ldrsh r2, [r2, r4]
	mov r0, #2
	mov r1, #0
	bl sub_02044CFC
	ldr r2, _0219D7F0 ; =0x0219DE76
	mov r0, #2
	ldrsh r2, [r2, r4]
	mov r1, #3
	bl sub_02044CFC
	pop {r4, pc}
	nop
_0219D7EC: .word 0x0219DE74
_0219D7F0: .word 0x0219DE76
	thumb_func_end ovy321_219d7cc

	thumb_func_start ovy321_219d7f4
ovy321_219d7f4: ; 0x0219D7F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0219D826
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy321_219d720
	add r4, sp, #0
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	mov r2, #0
	bl Oam_GetSpritePosData
	mov r1, #1
	lsl r1, r1, #8
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, pc}
_0219D826:
	cmp r1, #1
	bne _0219D83C
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	pop {r3, r4, r5, pc}
_0219D83C:
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl ovy321_219d720
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy321_219d720
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #1
	bl ovy321_219d720
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #1
	bl ovy321_219d720
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	mov r3, #1
	bl ovy321_219d720
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	mov r3, #1
	bl ovy321_219d720
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy321_219d6dc
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl ovy321_219d6dc
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #2
	bl ovy321_219d6dc
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #3
	bl ovy321_219d6dc
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	mov r3, #4
	bl ovy321_219d6dc
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	mov r3, #5
	bl ovy321_219d6dc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy321_219d7f4

	thumb_func_start ovy321_219d8d8
ovy321_219d8d8: ; 0x0219D8D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0219DD2C
	mov r6, #6
	lsl r6, r6, #6
	ldrh r3, [r5]
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	bl sub_02026E04
	ldrh r3, [r5]
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_02026E04
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	add r3, r6, #0
	bl sub_02026F7C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy321_219d8d8

	thumb_func_start ovy321_219d918
ovy321_219d918: ; 0x0219D918
	push {r4, lr}
	ldr r0, [r0, #0x38]
	bl sub_0219DD2C
	add r4, r0, #0
	mov r1, #0
	bl sub_02026E48
	add r0, r4, #0
	mov r1, #2
	bl sub_02026E48
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy321_219d918

	thumb_func_start ovy321_219d934
ovy321_219d934: ; 0x0219D934
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x38]
	add r4, r1, #0
	bl sub_0219DD2C
	add r7, r0, #0
	cmp r4, #0
	bne _0219D94C
	mov r4, #0x10
	mov r5, #0
	b _0219D950
_0219D94C:
	mov r4, #0
	mov r5, #0x10
_0219D950:
	mov r6, #4
	bl sub_02005718
	str r4, [sp]
	str r5, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _0219D98C ; =0x00000FFF
	add r0, r7, #0
	mov r1, #1
	add r3, r6, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r5, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, _0219D98C ; =0x00000FFF
	add r0, r7, #0
	mov r1, #4
	add r3, r6, #0
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D98C: .word 0x00000FFF
	thumb_func_end ovy321_219d934

	thumb_func_start ovy321_219d990
ovy321_219d990: ; 0x0219D990
	push {r4, lr}
	ldr r0, [r0, #0x38]
	mov r4, #1
	bl sub_0219DD2C
	bl sub_02027780
	cmp r0, #0
	bne _0219D9A4
	mov r4, #0
_0219D9A4:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy321_219d990

	thumb_func_start sub_0219D9A8
sub_0219D9A8: ; 0x0219D9A8
	lsl r1, r1, #2
	add r0, r0, r1
	str r2, [r0, #0x6c]
	bx lr
	thumb_func_end sub_0219D9A8

	thumb_func_start sub_0219D9B0
sub_0219D9B0: ; 0x0219D9B0
	add r0, #0x6c
	lsl r2, r1, #2
	ldr r1, [r0, r2]
	sub r1, r1, #1
	str r1, [r0, r2]
	cmp r1, #0
	bgt _0219D9C2
	mov r1, #0
	str r1, [r0, r2]
_0219D9C2:
	ldr r0, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D9B0

	thumb_func_start ovy321_219d9c8
ovy321_219d9c8: ; 0x0219D9C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0219DA34 ; =0x0219DEBC
	add r7, r0, #0
	mov r4, #0
_0219D9D2:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _0219DA0A
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
	str r0, [r6, #0x48]
	bl sub_0204826C
	ldr r0, [r6, #0x48]
	bl sub_020484D4
	bl GFL_BGSysLoadScr
	add r4, r4, #1
	add r5, r5, #6
	cmp r4, #2
	blt _0219D9D2
_0219DA0A:
	ldrh r1, [r7]
	mov r0, #0x17
	bl GFL_ArcSysCreateFileHandle
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r7]
	mov r3, #5
	add r4, r0, #0
	str r1, [sp, #4]
	mov r1, #6
	mov r2, #0
	lsl r3, r3, #6
	bl GFL_G2DIOLoadArcNCLRDefault
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219DA34: .word 0x0219DEBC
	thumb_func_end ovy321_219d9c8

	thumb_func_start ovy321_219da38
ovy321_219da38: ; 0x0219DA38
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0219DA40:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _0219DA50
	bl BmpWin_Free
	str r7, [r5, #0x48]
_0219DA50:
	add r4, r4, #1
	cmp r4, #2
	blt _0219DA40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy321_219da38

	thumb_func_start ovy321_219da58
ovy321_219da58: ; 0x0219DA58
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x44]
	bl sub_02021A3C
	mov r4, #0
_0219DA64:
	lsl r0, r4, #3
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	ldr r6, [r7, #0x44]
	cmp r0, #0
	beq _0219DA92
	ldr r0, [r5, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DA92
	ldr r0, [r5, #0x48]
	bl BmpWin_FlushChar
	add r5, #0x4c
	mov r0, #0
	strb r0, [r5]
_0219DA92:
	add r4, r4, #1
	cmp r4, #2
	blt _0219DA64
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy321_219da58

	thumb_func_start ovy321_219da9c
ovy321_219da9c: ; 0x0219DA9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, [sp, #0x28]
	ldr r1, [r4, #0x40]
	ldr r2, [sp, #0x2c]
	add r7, r3, #0
	bl ovy321_219daf0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x44]
	lsl r5, r5, #3
	str r0, [sp, #0xc]
	add r0, r4, r5
	ldr r0, [r0, #0x48]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	ldr r0, [r4, #0x40]
	sub r2, r6, r2
	str r0, [sp, #4]
	add r0, sp, #0x28
	ldrh r0, [r0, #8]
	lsl r2, r2, #0x10
	lsl r3, r7, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	add r0, r4, r5
	mov r1, #1
	add r0, #0x4c
	strb r1, [r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy321_219da9c

	thumb_func_start ovy321_219daf0
ovy321_219daf0: ; 0x0219DAF0
	push {r3, lr}
	cmp r2, #1
	bne _0219DB02
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_0219DB02:
	cmp r2, #2
	bne _0219DB12
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, pc}
_0219DB12:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy321_219daf0

	thumb_func_start ovy321_219db18
ovy321_219db18: ; 0x0219DB18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	ldr r1, [r5, #0x3c]
	add r6, r0, #0
	ldr r1, [r1, #4]
	ldr r0, [r5, #0x58]
	add r1, #0x2a
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x68
	mov r3, #0
	bl ovy321_219da9c
	add r0, r4, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #0x3c]
	ldr r3, _0219DBF0 ; =0x0219E024
	ldr r1, [r0, #4]
	lsl r4, r1, #2
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	lsl r2, r1, #1
	add r1, r3, r4
	ldrsh r7, [r2, r1]
	cmp r0, #0
	beq _0219DBBE
	ldrh r1, [r5]
	mov r0, #0x68
	add r0, #0x98
	bl GFL_StrBufCreate
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #0x3c]
	add r0, r6, #0
	ldr r2, [r2, #8]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [r5, #0x58]
	add r1, r7, #0
	bl sub_0204898C
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x68
	mov r3, #0
	bl ovy321_219da9c
	add r0, r7, #0
	bl GFL_StrBufFree
	b _0219DBE0
_0219DBBE:
	ldr r0, [r5, #0x58]
	add r1, r7, #0
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x68
	mov r3, #0
	bl ovy321_219da9c
_0219DBE0:
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219DBF0: .word 0x0219E024
	thumb_func_end ovy321_219db18

	thumb_func_start sub_0219DBF4
sub_0219DBF4: ; 0x0219DBF4
	ldr r0, [r0, #0x3c]
	ldr r1, [r0, #4]
	ldr r0, _0219DC00 ; =0x0219DF0E
	ldrb r0, [r0, r1]
	bx lr
	nop
_0219DC00: .word 0x0219DF0E
	thumb_func_end sub_0219DBF4

	thumb_func_start ovy321_219dc04
ovy321_219dc04: ; 0x0219DC04
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219DC90 ; =0x000001C6
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219DC94 ; =0x0219E2A0
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219DC98 ; =0x04000050
	ldr r0, _0219DC9C ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219DCA0 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219DCA4 ; =0x0219E0F4
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
	bl ovy321_219dd48
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy321_219ddec
	add r0, r5, #0
	bl sub_02026DC0
	str r0, [r4, #0x10]
	ldr r0, _0219DCA8 ; =ovy321_219dd30
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DC90: .word 0x000001C6
_0219DC94: .word 0x0219E2A0
_0219DC98: .word 0x04000050
_0219DC9C: .word 0x04001050
_0219DCA0: .word 0xFFFF1FFF
_0219DCA4: .word 0x0219E0F4
_0219DCA8: .word ovy321_219dd30
	thumb_func_end ovy321_219dc04

	thumb_func_start ovy321_219dcac
ovy321_219dcac: ; 0x0219DCAC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy321_219de2c
	add r0, r4, #0
	bl ovy321_219dda8
	ldr r0, [r4, #0x10]
	bl sub_02026DE8
	bl sub_020232D8
	ldr r5, _0219DCF8 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219DCFC ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219DD00 ; =0xFFFF1FFF
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
	bl GFL_HeapFree
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DCF8: .word 0x04000050
_0219DCFC: .word 0x04001050
_0219DD00: .word 0xFFFF1FFF
	thumb_func_end ovy321_219dcac

	thumb_func_start ovy321_219dd04
ovy321_219dd04: ; 0x0219DD04
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219DE48
	add r0, r4, #0
	bl sub_0219DDE0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy321_219dd04

	thumb_func_start sub_0219DD18
sub_0219DD18: ; 0x0219DD18
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DD18

	thumb_func_start sub_0219DD1C
sub_0219DD1C: ; 0x0219DD1C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DD1C

	thumb_func_start sub_0219DD20
sub_0219DD20: ; 0x0219DD20
	ldr r3, _0219DD28 ; =sub_0219DE58
	add r0, r0, #4
	bx r3
	nop
_0219DD28: .word sub_0219DE58
	thumb_func_end sub_0219DD20

	thumb_func_start sub_0219DD2C
sub_0219DD2C: ; 0x0219DD2C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_0219DD2C

	thumb_func_start ovy321_219dd30
ovy321_219dd30: ; 0x0219DD30
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219DDE4
	add r0, r4, #4
	bl sub_0219DE50
	ldr r0, [r4, #0x10]
	bl sub_020275F8
	pop {r4, pc}
	thumb_func_end ovy321_219dd30

	thumb_func_start ovy321_219dd48
ovy321_219dd48: ; 0x0219DD48
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
	ldr r0, _0219DDA0 ; =0x0219E0C8
	bl GFL_BGSysSetLCDConfig
	ldr r7, _0219DDA4 ; =0x0219E124
_0219DD6A:
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
	blo _0219DD6A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DDA0: .word 0x0219E0C8
_0219DDA4: .word 0x0219E124
	thumb_func_end ovy321_219dd48

	thumb_func_start ovy321_219dda8
ovy321_219dda8: ; 0x0219DDA8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219DDDC ; =0x0219E124
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219DDB2:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219DDB2
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DDDC: .word 0x0219E124
	thumb_func_end ovy321_219dda8

	thumb_func_start sub_0219DDE0
sub_0219DDE0: ; 0x0219DDE0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219DDE0

	thumb_func_start sub_0219DDE4
sub_0219DDE4: ; 0x0219DDE4
	ldr r3, _0219DDE8 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219DDE8: .word sub_02045A5C
	thumb_func_end sub_0219DDE4

	thumb_func_start ovy321_219ddec
ovy321_219ddec: ; 0x0219DDEC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219DE28 ; =0x0219E0D8
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
_0219DE28: .word 0x0219E0D8
	thumb_func_end ovy321_219ddec

	thumb_func_start ovy321_219de2c
ovy321_219de2c: ; 0x0219DE2C
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
	thumb_func_end ovy321_219de2c

	thumb_func_start sub_0219DE48
sub_0219DE48: ; 0x0219DE48
	ldr r3, _0219DE4C ; =sub_0204B794
	bx r3
	.align 2, 0
_0219DE4C: .word sub_0204B794
	thumb_func_end sub_0219DE48

	thumb_func_start sub_0219DE50
sub_0219DE50: ; 0x0219DE50
	ldr r3, _0219DE54 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219DE54: .word sub_0204B7C8
	thumb_func_end sub_0219DE50

	thumb_func_start sub_0219DE58
sub_0219DE58: ; 0x0219DE58
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219DE58
_0219DE5C:
	.byte 0x2A, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00
	.byte 0x00, 0x01, 0x00, 0x02, 0x00, 0x04, 0x08, 0x02, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x0A, 0x00, 0x00
	.byte 0x03, 0x09, 0x00, 0x00, 0x01, 0x0D, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x15, 0x00, 0x00
	.byte 0x03, 0x14, 0x00, 0x00, 0x01, 0x1C, 0x00, 0x08, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x30, 0x02, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x1A
	.byte 0x02, 0x0A, 0x00, 0x03, 0x12, 0x1A, 0x04, 0x0A, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x03, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B
	.byte 0x0B, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04
	.byte 0x05, 0x05, 0x05, 0x06, 0x06, 0x06, 0x07, 0x07, 0x07, 0x07, 0x08, 0x08, 0x08, 0x09, 0x09, 0x09
	.byte 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0C, 0x00, 0x00, 0x24, 0x04, 0x01, 0x00, 0x25, 0x04, 0x01, 0x00
	.byte 0x26, 0x04, 0x01, 0x00, 0x27, 0x04, 0x01, 0x00, 0x28, 0x04, 0x01, 0x00, 0x29, 0x04, 0x01, 0x00
	.byte 0x2A, 0x04, 0x01, 0x00, 0x2B, 0x04, 0x01, 0x00, 0x2C, 0x04, 0x01, 0x00, 0x2D, 0x04, 0x01, 0x00
	.byte 0x2E, 0x04, 0x01, 0x00, 0x2F, 0x04, 0x01, 0x00, 0x30, 0x04, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x01
	.byte 0x32, 0x00, 0x00, 0x01, 0x33, 0x00, 0x00, 0x01, 0x34, 0x00, 0x00, 0x01, 0x35, 0x00, 0x00, 0x01
	.byte 0x36, 0x00, 0x00, 0x01, 0x37, 0x00, 0x00, 0x01, 0x38, 0x00, 0x00, 0x01, 0x39, 0x00, 0x00, 0x01
	.byte 0x3A, 0x00, 0x00, 0x01, 0x3B, 0x00, 0x00, 0x01, 0x3C, 0x00, 0x00, 0x01, 0x3D, 0x00, 0x00, 0x01
	.byte 0x3E, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x40, 0x00, 0x04, 0x01, 0x41, 0x00, 0x04, 0x01
	.byte 0x43, 0x00, 0x04, 0x01, 0x44, 0x00, 0x04, 0x01, 0x45, 0x00, 0x04, 0x01, 0x46, 0x00, 0x04, 0x01
	.byte 0x47, 0x00, 0x04, 0x01, 0x48, 0x00, 0x04, 0x01, 0x49, 0x00, 0x04, 0x01, 0x4A, 0x00, 0x04, 0x01
	.byte 0x4B, 0x00, 0x04, 0x01, 0x4C, 0x00, 0x04, 0x01, 0x4D, 0x00, 0x04, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x30, 0x01, 0x00, 0x00, 0x01, 0x02, 0x00, 0x02
	.byte 0x30, 0x01, 0x00, 0x00, 0x01, 0x02, 0x00, 0x03, 0x28, 0x01, 0x00, 0x00, 0x01, 0x02, 0x00, 0x04
	.byte 0x20, 0x01, 0x00, 0x00, 0x01, 0x02, 0x00, 0x05, 0x20, 0x01, 0x00, 0x00, 0x01, 0x02, 0x00, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0xCE, 0x19, 0x02, 0x49, 0xCF, 0x19, 0x02
	.byte 0x01, 0xCF, 0x19, 0x02, 0xB1, 0x00, 0xDA, 0x00, 0xB2, 0x00, 0xDB, 0x00, 0xB3, 0x00, 0xDC, 0x00
	.byte 0xB4, 0x00, 0xDD, 0x00, 0xB5, 0x00, 0xDE, 0x00, 0xB6, 0x00, 0xDF, 0x00, 0xB7, 0x00, 0xE0, 0x00
	.byte 0xB8, 0x00, 0xE1, 0x00, 0xB9, 0x00, 0xE2, 0x00, 0xBA, 0x00, 0xE3, 0x00, 0xBB, 0x00, 0xE4, 0x00
	.byte 0xBC, 0x00, 0xE5, 0x00, 0xBD, 0x00, 0xE6, 0x00, 0xBE, 0x00, 0xE7, 0x00, 0xBF, 0x00, 0xE8, 0x00
	.byte 0xC0, 0x00, 0xE9, 0x00, 0xC1, 0x00, 0xEA, 0x00, 0xC2, 0x00, 0xEB, 0x00, 0xC3, 0x00, 0xEC, 0x00
	.byte 0xC4, 0x00, 0xED, 0x00, 0xC5, 0x00, 0xEE, 0x00, 0xC6, 0x00, 0xEF, 0x00, 0xC7, 0x00, 0xF0, 0x00
	.byte 0xC8, 0x00, 0xF1, 0x00, 0xC9, 0x00, 0xF2, 0x00, 0xCA, 0x00, 0xF3, 0x00, 0xCB, 0x00, 0xF4, 0x00
	.byte 0xCC, 0x00, 0xF5, 0x00, 0xCD, 0x00, 0xF6, 0x00, 0xCE, 0x00, 0xF7, 0x00, 0xCF, 0x00, 0xF8, 0x00
	.byte 0xD0, 0x00, 0xF9, 0x00, 0xD1, 0x00, 0xFA, 0x00, 0xD2, 0x00, 0xFB, 0x00, 0xD3, 0x00, 0xFC, 0x00
	.byte 0xD4, 0x00, 0xFD, 0x00, 0xD5, 0x00, 0xFE, 0x00, 0xD6, 0x00, 0xFF, 0x00, 0xD7, 0x00, 0x00, 0x01
	.byte 0xD8, 0x00, 0x01, 0x01, 0xD9, 0x00, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x6B, 0x77, 0x64, 0x5F, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68
	.byte 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219DE5C
