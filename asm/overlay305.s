    .include "macros/function.inc"
	.include "overlay305.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy305_219ce80
ovy305_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	ldr r0, [r6]
	add r7, r2, #0
	cmp r0, #1
	bne _0219CE9A
	bl sub_0204E0E0
	cmp r0, #1
	bne _0219CE9A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219CE9A:
	ldr r0, _0219CF90 ; =0x0000008B
	bl sub_0203CE0C
	mov r2, #1
	mov r0, #1
	mov r1, #0x74
	lsl r2, r2, #0x13
	bl GFL_HeapCreateChild
	ldr r5, _0219CF94 ; =0x000049D8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x74
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0x74
	strh r0, [r4]
	str r7, [r4, #4]
	add r0, r5, #0
	ldr r1, [r7, #0x44]
	sub r0, #0x10
	strb r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x40]
	add r0, r5, #0
	sub r0, #0xc
	str r1, [r4, r0]
	add r0, r7, #0
	bl ovy305_219e300
	ldrh r1, [r4]
	mov r0, #0
	bl ovy305_219e444
	add r1, r5, #0
	sub r1, #0x24
	str r0, [r4, r1]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	add r1, r5, #0
	sub r1, #0x20
	str r0, [r4, r1]
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	mov r2, #0x55
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	sub r1, #0x18
	str r0, [r4, r1]
	ldrh r0, [r4]
	bl sub_02021998
	add r1, r5, #0
	sub r1, #0x1c
	str r0, [r4, r1]
	add r0, r7, #0
	bl sub_0219D708
	str r4, [sp]
	add r3, r0, #0
	ldrh r0, [r4]
	ldr r1, _0219CF98 ; =0x0219E90C
	mov r2, #3
	mov r7, #3
	bl sub_021998C0
	add r1, r5, #0
	sub r1, #0x14
	str r0, [r4, r1]
	ldr r2, [r4, #4]
	add r0, r4, #0
	ldrh r1, [r4]
	ldr r2, [r2, #0x50]
	add r0, #8
	bl ovy305_219d074
	add r1, r5, #0
	sub r1, #0x24
	add r0, r4, #0
	ldrh r2, [r4]
	ldr r1, [r4, r1]
	add r0, #0x24
	bl ovy305_219e060
	sub r5, #0x24
	add r0, r4, #0
	ldrh r2, [r4]
	ldr r1, [r4, r5]
	add r0, #0xc
	bl ovy305_219dfa8
	ldr r2, _0219CF9C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	add r0, r7, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #1
	bl sub_0204E060
	mov r0, #1
	str r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CF90: .word 0x0000008B
_0219CF94: .word 0x000049D8
_0219CF98: .word 0x0219E90C
_0219CF9C: .word 0x04000304
	thumb_func_end ovy305_219ce80

	thumb_func_start ovy305_219cfa0
ovy305_219cfa0: ; 0x0219CFA0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #3
	mov r1, #0
	mov r2, #0
	add r5, r3, #0
	bl sub_02045E1C
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _0219CFBC
	cmp r0, #4
	bne _0219CFC2
_0219CFBC:
	add r0, r5, #0
	bl ovy305_219ddf4
_0219CFC2:
	ldr r4, _0219D018 ; =0x000049C4
	ldr r0, [r5, r4]
	bl sub_021998FC
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r5, #0
	add r0, #0xc
	bl sub_0219DFF0
	add r0, r5, #0
	add r0, #0x24
	bl ovy305_219e098
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl ovy305_219e4ec
	ldrh r4, [r5]
	add r0, r6, #0
	bl sub_0203AB10
	add r0, r4, #0
	bl sub_0203A1D0
	ldr r0, _0219D01C ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0219D018: .word 0x000049C4
_0219D01C: .word 0x0000008B
	thumb_func_end ovy305_219cfa0

	thumb_func_start ovy305_219d020
ovy305_219d020: ; 0x0219D020
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r0, r5, #0
	add r0, #0x24
	bl ovy305_219e0b0
	ldr r4, _0219D070 ; =0x000049C4
	ldr r0, [r5, r4]
	bl sub_02199904
	cmp r0, #0
	beq _0219D03C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219D03C:
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02021A3C
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl ovy305_219e548
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r4, #0x10
	add r3, r0, #1
	lsr r2, r3, #0x1f
	add r2, r3, r2
	mov r0, #3
	mov r1, #0
	asr r2, r2, #1
	str r3, [r5, r4]
	bl sub_02045E1C
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219D070: .word 0x000049C4
	thumb_func_end ovy305_219d020

	thumb_func_start ovy305_219d074
ovy305_219d074: ; 0x0219D074
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	mov r0, #0xb2
	add r5, r1, #0
	bl GFL_ArcSysCreateFileHandle
	add r6, r7, #0
	mov r1, #0xc
	mul r6, r1
	ldr r1, _0219D104 ; =0x0219E7F4
	mov r7, #0
	str r7, [sp]
	ldr r1, [r1, r6]
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r5, [sp, #4]
	bl GFL_G2DIOLoadArcNCLRDefault
	ldr r1, _0219D108 ; =0x0219E7F8
	str r7, [sp]
	str r7, [sp, #4]
	ldr r1, [r1, r6]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204ADA8
	ldr r1, _0219D10C ; =0x0219E7FC
	str r7, [sp]
	str r7, [sp, #4]
	ldr r1, [r1, r6]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #4
	mov r3, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #3
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #6
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D104: .word 0x0219E7F4
_0219D108: .word 0x0219E7F8
_0219D10C: .word 0x0219E7FC
	thumb_func_end ovy305_219d074

	thumb_func_start ovy305_219d110
ovy305_219d110: ; 0x0219D110
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy305_219dce8
	ldr r0, _0219D130 ; =0x0000498C
	add r0, r4, r0
	bl ovy305_219df04
	ldr r1, _0219D134 ; =0x0000FFFE
	add r0, r5, #0
	bl sub_021999B8
	pop {r3, r4, r5, pc}
	nop
_0219D130: .word 0x0000498C
_0219D134: .word 0x0000FFFE
	thumb_func_end ovy305_219d110

	thumb_func_start ovy305_219d138
ovy305_219d138: ; 0x0219D138
	push {r3, lr}
	add r0, r1, #0
	bl ovy305_219dc6c
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ovy305_219d138

	thumb_func_start ovy305_219d144
ovy305_219d144: ; 0x0219D144
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x24
	ldr r0, [r1, #8]
	ldrh r1, [r1, #0xc]
	bl sub_0204A5C0
	ldr r7, _0219D17C ; =0x00004850
	add r6, r0, #0
	mov r4, #0
_0219D15A:
	mov r0, #0x54
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r2, #1
	cmp r0, #0
	beq _0219D16A
	mov r2, #2
_0219D16A:
	add r0, r6, #0
	add r1, r4, #1
	bl ovy305_219e200
	add r4, r4, #1
	cmp r4, #2
	blt _0219D15A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D17C: .word 0x00004850
	thumb_func_end ovy305_219d144

	thumb_func_start ovy305_219d180
ovy305_219d180: ; 0x0219D180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x24
	ldr r0, [r1, #8]
	ldrh r1, [r1, #0xc]
	bl sub_0204A5C0
	ldr r7, _0219D1B8 ; =0x00004850
	add r6, r0, #0
	mov r4, #0
_0219D196:
	mov r0, #0x54
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r2, #1
	cmp r0, #0
	beq _0219D1A6
	mov r2, #3
_0219D1A6:
	add r0, r6, #0
	add r1, r4, #1
	bl ovy305_219e200
	add r4, r4, #1
	cmp r4, #4
	blt _0219D196
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D1B8: .word 0x00004850
	thumb_func_end ovy305_219d180

	thumb_func_start sub_0219D1BC
sub_0219D1BC: ; 0x0219D1BC
	lsl r2, r0, #3
	ldr r0, _0219D1C8 ; =0x0219E8E4
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	bx lr
	.align 2, 0
_0219D1C8: .word 0x0219E8E4
	thumb_func_end sub_0219D1BC

	thumb_func_start ovy305_219d1cc
ovy305_219d1cc: ; 0x0219D1CC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r1, #0
	add r6, r0, #0
	bl sub_021999BC
	add r4, r0, #0
	add r0, r5, #0
	bl ovy305_219dd24
	cmp r4, #0
	beq _0219D1EE
	cmp r4, #1
	beq _0219D234
	cmp r4, #2
	beq _0219D26C
	b _0219D328
_0219D1EE:
	add r0, r5, #0
	add r0, #0x24
	mov r1, #0xd
	bl ovy305_219e0fc
	ldr r0, _0219D330 ; =0x000049C8
	ldrb r0, [r5, r0]
	bl sub_0219D730
	cmp r0, #0
	beq _0219D216
	add r0, r5, #0
	add r0, #0x24
	mov r1, #0
	bl ovy305_219e23c
	add r0, r5, #0
	bl ovy305_219d144
	b _0219D226
_0219D216:
	add r0, r5, #0
	add r0, #0x24
	mov r1, #2
	bl ovy305_219e23c
	add r0, r5, #0
	bl ovy305_219d180
_0219D226:
	add r0, r5, #0
	bl ovy305_219dd60
_0219D22C:
	add r0, r6, #0
	bl sub_021999C0
	b _0219D328
_0219D234:
	add r0, r5, #0
	add r0, #0x24
	bl ovy305_219e2b0
	cmp r0, #0
	bne _0219D328
	add r0, r5, #0
	add r0, #0x24
	mov r1, #4
	bl ovy305_219e23c
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0219D25A
	add r0, r5, #0
	add r0, #0x24
	mov r1, #0xb
	b _0219D260
_0219D25A:
	add r0, r5, #0
	add r0, #0x24
	mov r1, #0xa
_0219D260:
	bl ovy305_219e0fc
	ldr r0, _0219D334 ; =0x000049D0
	mov r1, #0
	str r1, [r5, r0]
	b _0219D22C
_0219D26C:
	add r0, r5, #0
	add r0, #0x24
	bl ovy305_219e2b0
	ldr r0, _0219D334 ; =0x000049D0
	ldr r0, [r5, r0]
	cmp r0, #0xf
	bne _0219D2D4
	ldr r1, [r5, #4]
	mov r0, #1
	ldr r1, [r1, #0x50]
	bl sub_0219D1BC
	bl GFL_SndSEPlay
	ldr r4, _0219D338 ; =0x0219E984
	add r3, sp, #0x24
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	add r0, #0x24
	bl sub_0219E1C8
	ldr r4, _0219D33C ; =0x0219E9CC
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #1
	str r0, [r3]
	add r0, r5, #0
	add r0, #0x24
	bl sub_0219E1C8
	ldr r4, _0219D340 ; =0x0219E99C
	add r3, sp, #0xc
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #2
	str r0, [r3]
	add r0, r5, #0
	add r0, #0x24
_0219D2CE:
	bl sub_0219E1C8
	b _0219D320
_0219D2D4:
	cmp r0, #0x19
	bne _0219D2EE
	ldr r4, _0219D344 ; =0x0219E9A8
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #3
	str r0, [r3]
	add r0, r5, #0
	add r0, #0x24
	b _0219D2CE
_0219D2EE:
	cmp r0, #0xa0
	bne _0219D302
	mov r3, #0x10
	mov r0, #0xc
	mov r1, #0
	mov r2, #0x10
	sub r3, #0x13
	bl sub_0204E060
	b _0219D320
_0219D302:
	cmp r0, #0x96
	bne _0219D316
	ldr r1, [r5, #4]
	mov r0, #3
	ldr r1, [r1, #0x50]
	bl sub_0219D1BC
	bl GFL_SndSEPlay
	b _0219D320
_0219D316:
	cmp r0, #0xa8
	bne _0219D320
	add sp, #0x30
	mov r0, #1
	pop {r4, r5, r6, pc}
_0219D320:
	ldr r0, _0219D334 ; =0x000049D0
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_0219D328:
	mov r0, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_0219D330: .word 0x000049C8
_0219D334: .word 0x000049D0
_0219D338: .word 0x0219E984
_0219D33C: .word 0x0219E9CC
_0219D340: .word 0x0219E99C
_0219D344: .word 0x0219E9A8
	thumb_func_end ovy305_219d1cc

	thumb_func_start ovy305_219d348
ovy305_219d348: ; 0x0219D348
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ovy305_219dce8
	ldr r1, _0219D360 ; =0x0000FFFE
	add r0, r4, #0
	bl sub_021999B8
	mov r0, #1
	pop {r4, pc}
	nop
_0219D360: .word 0x0000FFFE
	thumb_func_end ovy305_219d348

	thumb_func_start ovy305_219d364
ovy305_219d364: ; 0x0219D364
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r0, r5, #0
	bl ovy305_219dc6c
	ldr r0, _0219D3E8 ; =0x000049C8
	ldrb r0, [r5, r0]
	bl sub_0219D730
	cmp r0, #0
	ldr r0, [r5, #4]
	beq _0219D390
	bl ovy305_219e36c
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	add r0, #0x10
	bl ovy305_219e36c
	b _0219D3C4
_0219D390:
	bl ovy305_219e36c
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	add r0, #0x10
	bl ovy305_219e36c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	add r0, #0x20
	bl ovy305_219e36c
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #4]
	add r0, #0x30
	bl ovy305_219e36c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r0, r4, r0
_0219D3C4:
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0219D3E8 ; =0x000049C8
	str r4, [sp]
	ldrb r1, [r5, r0]
	sub r0, #0x3c
	add r0, r5, r0
	str r1, [sp, #4]
	add r1, r5, #0
	add r5, #0x24
	add r1, #0xc
	add r2, r5, #0
	add r3, r6, #0
	bl ovy305_219de80
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D3E8: .word 0x000049C8
	thumb_func_end ovy305_219d364

	thumb_func_start ovy305_219d3ec
ovy305_219d3ec: ; 0x0219D3EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r1, #0
	add r7, r0, #0
	bl sub_021999BC
	add r6, r0, #0
	add r0, r5, #0
	bl ovy305_219dd24
	ldr r4, _0219D600 ; =0x0000498C
	add r0, r5, r4
	bl ovy305_219df30
	cmp r6, #0
	beq _0219D416
	cmp r6, #1
	beq _0219D44C
	cmp r6, #2
	beq _0219D47C
	b _0219D5FA
_0219D416:
	add r4, #0x3c
	ldrb r0, [r5, r4]
	bl sub_0219D730
	cmp r0, #0
	beq _0219D42A
	add r0, r5, #0
	add r0, #0x24
	mov r1, #1
	b _0219D430
_0219D42A:
	add r0, r5, #0
	add r0, #0x24
	mov r1, #3
_0219D430:
	bl ovy305_219e23c
	add r0, r5, #0
	add r0, #0x24
	mov r1, #0xd
	bl ovy305_219e0fc
	add r0, r5, #0
	bl ovy305_219dd60
_0219D444:
	add r0, r7, #0
	bl sub_021999C0
	b _0219D5FA
_0219D44C:
	add r0, r5, #0
	add r0, #0x24
	bl ovy305_219e2b0
	cmp r0, #0
	beq _0219D45A
	b _0219D5FA
_0219D45A:
	add r0, r4, #0
	add r0, #0x40
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _0219D46A
	add sp, #0x48
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D46A:
	mov r0, #0
	add r4, #0x44
	str r0, [r5, r4]
	add r5, #0x24
	add r0, r5, #0
	mov r1, #0xc
	bl ovy305_219e0fc
	b _0219D444
_0219D47C:
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	cmp r0, #0xf
	bne _0219D4AE
	add r4, #0x40
	ldr r0, [r5, r4]
	mov r4, #1
	cmp r0, #0
	bne _0219D492
	mov r4, #0
_0219D492:
	ldr r1, [r5, #4]
	mov r0, #2
	ldr r1, [r1, #0x50]
	bl sub_0219D1BC
	bl GFL_SndSEPlay
	ldr r0, _0219D600 ; =0x0000498C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
_0219D4A8:
	bl ovy305_219df6c
	b _0219D51A
_0219D4AE:
	cmp r0, #0x18
	bne _0219D4D0
	add r4, #0x40
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219D4BE
	mov r0, #1
	b _0219D4C0
_0219D4BE:
	mov r0, #0
_0219D4C0:
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0219D604 ; =0x0000499C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C124
	b _0219D51A
_0219D4D0:
	cmp r0, #0x2d
	bne _0219D4E8
	add r4, #0x40
	ldr r0, [r5, r4]
	mov r1, #1
	cmp r0, #1
	bne _0219D4E0
	mov r1, #0
_0219D4E0:
	ldr r0, _0219D600 ; =0x0000498C
	mov r2, #1
	add r0, r5, r0
	b _0219D4A8
_0219D4E8:
	cmp r0, #0x36
	bne _0219D4FC
	add r4, #0x40
	ldr r0, [r5, r4]
	cmp r0, #1
	beq _0219D4F8
	mov r0, #1
	b _0219D4FA
_0219D4F8:
	mov r0, #0
_0219D4FA:
	b _0219D4C0
_0219D4FC:
	cmp r0, #0x78
	bne _0219D510
	mov r3, #0x10
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	sub r3, #0x13
	bl sub_0204E060
	b _0219D51A
_0219D510:
	cmp r0, #0x80
	bne _0219D51A
	add sp, #0x48
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D51A:
	ldr r4, _0219D608 ; =0x000049D0
	mov r1, #0xb4
	ldr r0, [r5, r4]
	blx sub_0208D65C
	cmp r1, #0
	bne _0219D5F2
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219D538
	mov r4, #2
	ldr r6, _0219D60C ; =0xFFFFD800
	lsl r4, r4, #0xc
	b _0219D53E
_0219D538:
	mov r6, #0xa
	ldr r4, _0219D610 ; =0xFFFFE800
	lsl r6, r6, #0xa
_0219D53E:
	ldr r3, _0219D614 ; =0x0219E9B4
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x24
	add r2, r7, #0
	str r6, [sp, #0x3c]
	str r4, [sp, #0x40]
	bl sub_0219E1C8
	ldr r3, _0219D618 ; =0x0219E9C0
	add r2, sp, #0x30
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #1
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x24
	add r2, r7, #0
	str r6, [sp, #0x30]
	str r4, [sp, #0x34]
	bl sub_0219E1C8
	ldr r3, _0219D61C ; =0x0219E948
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x24
	add r2, r7, #0
	str r6, [sp, #0x24]
	str r4, [sp, #0x28]
	bl sub_0219E1C8
	ldr r3, _0219D620 ; =0x0219E954
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #3
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x24
	add r2, r7, #0
	str r6, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl sub_0219E1C8
	ldr r3, _0219D624 ; =0x0219E960
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #4
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x24
	add r2, r7, #0
	str r6, [sp, #0xc]
	str r4, [sp, #0x10]
	bl sub_0219E1C8
	ldr r3, _0219D628 ; =0x0219E978
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #5
	str r0, [r2]
	add r0, r5, #0
	add r0, #0x24
	add r2, r7, #0
	str r6, [sp]
	str r4, [sp, #4]
	bl sub_0219E1C8
_0219D5F2:
	ldr r0, _0219D608 ; =0x000049D0
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
_0219D5FA:
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D600: .word 0x0000498C
_0219D604: .word 0x0000499C
_0219D608: .word 0x000049D0
_0219D60C: .word 0xFFFFD800
_0219D610: .word 0xFFFFE800
_0219D614: .word 0x0219E9B4
_0219D618: .word 0x0219E9C0
_0219D61C: .word 0x0219E948
_0219D620: .word 0x0219E954
_0219D624: .word 0x0219E960
_0219D628: .word 0x0219E978
	thumb_func_end ovy305_219d3ec

	thumb_func_start ovy305_219d62c
ovy305_219d62c: ; 0x0219D62C
	push {r4, lr}
	ldr r2, _0219D65C ; =0x000049CC
	add r4, r0, #0
	ldr r2, [r1, r2]
	cmp r2, #2
	bne _0219D652
	ldr r1, [r1, #4]
	mov r0, #4
	ldr r1, [r1, #0x50]
	bl sub_0219D1BC
	bl GFL_SndSEPlay
	add r0, r4, #0
	mov r1, #2
	bl sub_021999B8
	mov r0, #1
	pop {r4, pc}
_0219D652:
	bl ovy305_219d110
	mov r0, #1
	pop {r4, pc}
	nop
_0219D65C: .word 0x000049CC
	thumb_func_end ovy305_219d62c

	thumb_func_start ovy305_219d660
ovy305_219d660: ; 0x0219D660
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_021999BC
	add r6, r0, #0
	add r0, r5, #0
	bl ovy305_219dd24
	ldr r4, _0219D6E4 ; =0x0000498C
	add r0, r5, r4
	bl ovy305_219df30
	cmp r6, #0
	beq _0219D686
	cmp r6, #1
	beq _0219D69E
	cmp r6, #2
	b _0219D6DE
_0219D686:
	add r0, r5, #0
	add r0, #0x24
	mov r1, #5
	bl ovy305_219e23c
	mov r0, #0
	add r4, #0x44
	str r0, [r5, r4]
	add r0, r7, #0
	bl sub_021999C0
	b _0219D6DE
_0219D69E:
	add r0, r4, #0
	add r0, #0x44
	ldr r2, [r5, r0]
	add r0, r4, #0
	add r0, #0x44
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x44
	str r1, [r5, r0]
	cmp r2, #0x1e
	bne _0219D6C0
	add r0, r5, r4
	mov r1, #2
	mov r2, #2
	bl ovy305_219df6c
_0219D6C0:
	add r5, #0x24
	add r0, r5, #0
	bl ovy305_219e2b0
	cmp r0, #0
	bne _0219D6DE
	mov r3, #0x10
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	sub r3, #0x13
	bl sub_0204E060
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D6DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D6E4: .word 0x0000498C
	thumb_func_end ovy305_219d660

	thumb_func_start ovy305_219d6e8
ovy305_219d6e8: ; 0x0219D6E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0204E0E0
	cmp r0, #1
	bne _0219D6FA
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219D6FA:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy305_219d110
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy305_219d6e8

	thumb_func_start sub_0219D708
sub_0219D708: ; 0x0219D708
	ldr r0, [r0, #0x44]
	cmp r0, #4
	bhi _0219D72C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D71A: ; jump table
	.short _0219D72C - _0219D71A - 2 ; case 0
	.short _0219D724 - _0219D71A - 2 ; case 1
	.short _0219D728 - _0219D71A - 2 ; case 2
	.short _0219D724 - _0219D71A - 2 ; case 3
	.short _0219D728 - _0219D71A - 2 ; case 4
_0219D724:
	mov r0, #0
	bx lr
_0219D728:
	mov r0, #1
	bx lr
_0219D72C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0219D708

	thumb_func_start sub_0219D730
sub_0219D730: ; 0x0219D730
	cmp r0, #4
	bhi _0219D75A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D740: ; jump table
	.short _0219D75A - _0219D740 - 2 ; case 0
	.short _0219D74A - _0219D740 - 2 ; case 1
	.short _0219D74E - _0219D740 - 2 ; case 2
	.short _0219D752 - _0219D740 - 2 ; case 3
	.short _0219D756 - _0219D740 - 2 ; case 4
_0219D74A:
	mov r0, #1
	bx lr
_0219D74E:
	mov r0, #1
	bx lr
_0219D752:
	mov r0, #0
	bx lr
_0219D756:
	mov r0, #0
	bx lr
_0219D75A:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D730

	thumb_func_start sub_0219D760
sub_0219D760: ; 0x0219D760
	cmp r0, #4
	bhi _0219D78A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D770: ; jump table
	.short _0219D78A - _0219D770 - 2 ; case 0
	.short _0219D77A - _0219D770 - 2 ; case 1
	.short _0219D77E - _0219D770 - 2 ; case 2
	.short _0219D782 - _0219D770 - 2 ; case 3
	.short _0219D786 - _0219D770 - 2 ; case 4
_0219D77A:
	mov r0, #1
	bx lr
_0219D77E:
	mov r0, #0
	bx lr
_0219D782:
	mov r0, #1
	bx lr
_0219D786:
	mov r0, #0
	bx lr
_0219D78A:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D760

	thumb_func_start sub_0219D790
sub_0219D790: ; 0x0219D790
	cmp r0, #0
	bne _0219D798
	mov r0, #0xd
	bx lr
_0219D798:
	cmp r1, #3
	bhi _0219D7C0
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D7A8: ; jump table
	.short _0219D7B4 - _0219D7A8 - 2 ; case 0
	.short _0219D7B8 - _0219D7A8 - 2 ; case 1
	.short _0219D7BC - _0219D7A8 - 2 ; case 2
	.short _0219D7B0 - _0219D7A8 - 2 ; case 3
_0219D7B0:
	mov r0, #0xd
	bx lr
_0219D7B4:
	mov r0, #0xa
	bx lr
_0219D7B8:
	mov r0, #0xb
	bx lr
_0219D7BC:
	mov r0, #0xc
	bx lr
_0219D7C0:
	mov r0, #0xa
	bx lr
	thumb_func_end sub_0219D790

	thumb_func_start ovy305_219d7c4
ovy305_219d7c4: ; 0x0219D7C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	str r2, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	add r6, r3, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	str r1, [sp]
	strb r0, [r7, #8]
	add r0, r1, #0
	strb r6, [r7, #9]
	str r0, [r7]
	bl sub_0201FDF8
	strb r0, [r7, #0xa]
	ldr r0, [sp, #4]
	bl sub_0219D730
	cmp r0, #0
	beq _0219D7F6
	mov r0, #6
	b _0219D7F8
_0219D7F6:
	mov r0, #3
_0219D7F8:
	strb r0, [r7, #0xb]
	ldr r0, [sp, #0x2c]
	mov r4, #0
	str r0, [r7, #4]
	ldr r0, [sp, #0x30]
	str r4, [r7, #0x24]
	str r0, [r7, #0x2c]
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	ble _0219D8F0
_0219D80C:
	ldr r0, [sp, #4]
	bl sub_0219D730
	cmp r0, #0
	beq _0219D838
	lsl r0, r4, #4
	add r0, #0x88
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r0, #0xa8
	cmp r6, #0
	beq _0219D826
	mov r0, #0x38
_0219D826:
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r6, #0
	bne _0219D884
	mov r0, #0
	mvn r0, r0
	mul r5, r0
	b _0219D884
_0219D838:
	cmp r6, #3
	bhi _0219D884
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D848: ; jump table
	.short _0219D850 - _0219D848 - 2 ; case 0
	.short _0219D85E - _0219D848 - 2 ; case 1
	.short _0219D86C - _0219D848 - 2 ; case 2
	.short _0219D878 - _0219D848 - 2 ; case 3
_0219D850:
	lsl r0, r4, #4
	neg r0, r0
	add r0, #0x50
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r0, #0x88
	b _0219D882
_0219D85E:
	lsl r0, r4, #4
	neg r0, r0
	add r0, #0x90
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r0, #0xb0
	b _0219D882
_0219D86C:
	lsl r0, r4, #4
	add r0, #0x80
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r0, #0x30
	b _0219D882
_0219D878:
	lsl r0, r4, #4
	add r0, #0xc0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	mov r0, #0x58
_0219D882:
	str r0, [sp, #0x10]
_0219D884:
	ldrb r1, [r7, #0xa]
	mov r0, #0
	cmp r4, r1
	bge _0219D894
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0201FF08
_0219D894:
	ldr r1, [sp, #0x30]
	ldrb r1, [r1, r4]
	bl sub_0219D790
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl sub_0219D760
	cmp r0, #0
	bne _0219D8B2
	ldr r0, [sp, #0xc]
	cmp r0, #0xd
	beq _0219D8B2
	mov r0, #0xa
	str r0, [sp, #0xc]
_0219D8B2:
	lsl r0, r4, #2
	ldr r3, [sp, #0xc]
	add r0, r7, r0
	str r0, [sp, #8]
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl ovy305_219dffc
	ldr r1, [sp, #8]
	str r0, [r1, #0xc]
	ldr r0, [sp, #4]
	bl sub_0219D760
	cmp r0, #0
	beq _0219D8DE
	ldr r0, [sp, #8]
	mov r1, #0
	ldr r0, [r0, #0xc]
	b _0219D8E4
_0219D8DE:
	ldr r0, [sp, #8]
	mov r1, #1
	ldr r0, [r0, #0xc]
_0219D8E4:
	bl sub_0204C124
	ldrb r0, [r7, #0xb]
	add r4, r4, #1
	cmp r4, r0
	blt _0219D80C
_0219D8F0:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy305_219d7c4

	thumb_func_start ovy305_219d8f4
ovy305_219d8f4: ; 0x0219D8F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xb]
	mov r4, #0
	cmp r0, #0
	ble _0219D912
_0219D900:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	bl sub_0204C108
	ldrb r0, [r5, #0xb]
	add r4, r4, #1
	cmp r4, r0
	blt _0219D900
_0219D912:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy305_219d8f4

	thumb_func_start ovy305_219d914
ovy305_219d914: ; 0x0219D914
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	sub r5, r0, r1
	ldrb r0, [r4, #0xb]
	cmp r5, r0
	bge _0219D9EC
	cmp r5, #0
	bne _0219D93A
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0219D93A
	mov r0, #0
	mov r1, #0
	bl sub_0219D1BC
	bl GFL_SndSEPlay
_0219D93A:
	ldrb r0, [r4, #8]
	bl sub_0219D730
	cmp r0, #0
	ldrb r0, [r4, #9]
	beq _0219D964
	cmp r0, #0
	bne _0219D954
	ldr r0, _0219DA14 ; =0xFFFFFC00
	lsl r1, r5, #0xb
	sub r7, r0, r1
	ldr r6, _0219DA18 ; =0xFFFFDB00
	b _0219D9A4
_0219D954:
	cmp r0, #1
	bne _0219D9A4
	mov r0, #3
	lsl r1, r5, #0xb
	lsl r0, r0, #8
	add r7, r1, r0
	mov r6, #0x13
	b _0219D9A2
_0219D964:
	cmp r0, #0
	bne _0219D972
	ldr r0, _0219DA1C ; =0xFFFFE800
	lsl r1, r5, #0xb
	sub r7, r0, r1
	ldr r6, _0219DA20 ; =0xFFFFEB00
	b _0219D9A4
_0219D972:
	cmp r0, #1
	bne _0219D982
	mov r0, #2
	lsl r1, r5, #0xb
	lsl r0, r0, #0xa
	sub r7, r0, r1
	ldr r6, _0219DA24 ; =0xFFFFD800
	b _0219D9A4
_0219D982:
	cmp r0, #2
	bne _0219D994
	mov r0, #1
	mov r6, #6
	lsl r1, r5, #0xb
	lsl r0, r0, #8
	sub r7, r1, r0
	lsl r6, r6, #0xa
	b _0219D9A4
_0219D994:
	cmp r0, #3
	bne _0219D9A4
	mov r0, #0x1f
	lsl r1, r5, #0xb
	lsl r0, r0, #8
	add r7, r1, r0
	mov r6, #3
_0219D9A2:
	lsl r6, r6, #8
_0219D9A4:
	ldr r2, _0219DA28 ; =0x0219E96C
	add r3, sp, #0
	ldmia r2!, {r0, r1}
	mov ip, r3
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	mov r1, ip
	str r0, [r3]
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [r4, #4]
	bl ovy305_219e1d4
	ldrb r0, [r4, #8]
	bl sub_0219D760
	cmp r0, #0
	beq _0219D9D8
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	mov r1, #1
	bl sub_0204C124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219D9D8:
	ldrb r3, [r4, #0xb]
	ldr r1, [r4]
	ldr r2, [r4, #0x2c]
	sub r3, r3, #1
	add r0, r4, #0
	sub r3, r3, r5
	bl ovy305_219daa8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0219D9EC:
	mov r5, #0
	cmp r0, #0
	ble _0219DA08
	mov r6, #1
_0219D9F4:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	add r1, r6, #0
	bl sub_0204C468
	ldrb r0, [r4, #0xb]
	add r5, r5, #1
	cmp r5, r0
	blt _0219D9F4
_0219DA08:
	mov r0, #0
	add r4, #0x28
	strb r0, [r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219DA14: .word 0xFFFFFC00
_0219DA18: .word 0xFFFFDB00
_0219DA1C: .word 0xFFFFE800
_0219DA20: .word 0xFFFFEB00
_0219DA24: .word 0xFFFFD800
_0219DA28: .word 0x0219E96C
	thumb_func_end ovy305_219d914

	thumb_func_start ovy305_219da2c
ovy305_219da2c: ; 0x0219DA2C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219DA9E
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _0219DA8C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DA4A: ; jump table
	.short _0219DA8C - _0219DA4A - 2 ; case 0
	.short _0219DA54 - _0219DA4A - 2 ; case 1
	.short _0219DA70 - _0219DA4A - 2 ; case 2
	.short _0219DA58 - _0219DA4A - 2 ; case 3
	.short _0219DA74 - _0219DA4A - 2 ; case 4
_0219DA54:
	mov r1, #0xc
	b _0219DA8C
_0219DA58:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0219DA62
	cmp r0, #2
	bne _0219DA64
_0219DA62:
	b _0219DA8A
_0219DA64:
	cmp r0, #1
	beq _0219DA6C
	cmp r0, #3
	bne _0219DA8C
_0219DA6C:
	mov r1, #0x13
	b _0219DA8C
_0219DA70:
	mov r1, #8
	b _0219DA8C
_0219DA74:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0219DA7E
	cmp r0, #2
	bne _0219DA82
_0219DA7E:
	mov r1, #0xb
	b _0219DA8C
_0219DA82:
	cmp r0, #1
	beq _0219DA8A
	cmp r0, #3
	bne _0219DA8C
_0219DA8A:
	mov r1, #0xf
_0219DA8C:
	ldr r0, [r4, #0x24]
	cmp r0, r1
	blo _0219DA98
	add r0, r4, #0
	bl ovy305_219d914
_0219DA98:
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
_0219DA9E:
	pop {r4, pc}
	thumb_func_end ovy305_219da2c

	thumb_func_start sub_0219DAA0
sub_0219DAA0: ; 0x0219DAA0
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0219DAA0

	thumb_func_start ovy305_219daa8
ovy305_219daa8: ; 0x0219DAA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	mov r7, #0
	bl sub_0201FDF8
	cmp r4, r0
	bge _0219DAC6
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0201FF08
	add r7, r0, #0
_0219DAC6:
	ldrb r1, [r6, r4]
	add r0, r7, #0
	bl sub_0219D790
	add r1, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	lsl r1, r1, #0x10
	ldr r0, [r0, #0xc]
	lsr r1, r1, #0x10
	bl sub_0204C4B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy305_219daa8

	thumb_func_start ovy305_219dae0
ovy305_219dae0: ; 0x0219DAE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	bl sub_0219D730
	cmp r0, #0
	beq _0219DAFE
	cmp r6, #0
	bne _0219DAF8
	mov r5, #4
	mov r4, #0x11
	b _0219DB2C
_0219DAF8:
	mov r5, #0x10
	mov r4, #3
	b _0219DB2C
_0219DAFE:
	cmp r6, #3
	bhi _0219DB2C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DB0E: ; jump table
	.short _0219DB16 - _0219DB0E - 2 ; case 0
	.short _0219DB1C - _0219DB0E - 2 ; case 1
	.short _0219DB22 - _0219DB0E - 2 ; case 2
	.short _0219DB28 - _0219DB0E - 2 ; case 3
_0219DB16:
	mov r5, #5
	mov r4, #0xd
	b _0219DB2C
_0219DB1C:
	mov r5, #0xd
	mov r4, #0x13
	b _0219DB2C
_0219DB22:
	mov r5, #0xf
	mov r4, #1
	b _0219DB2C
_0219DB28:
	mov r5, #0x17
	mov r4, #7
_0219DB2C:
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	lsl r1, r5, #0x18
	lsl r2, r4, #0x18
	str r0, [sp, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xa
	str r0, [sp, #8]
	bl BmpWin_CreateDynamic
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy305_219dae0

	thumb_func_start ovy305_219db48
ovy305_219db48: ; 0x0219DB48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [r5, #0xc]
	mov r2, #0
	str r2, [r5, #0x50]
	str r3, [r5]
	str r1, [r5, #4]
	str r0, [r5, #8]
	strb r4, [r5, #0x10]
	strb r6, [r5, #0x11]
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r3, #0
	add r0, #0xa
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r1, [r3]
	add r0, #0x20
	add r2, r4, #0
	add r3, r6, #0
	bl ovy305_219d7c4
	mov r0, #0x10
	mov r1, #0x74
	bl GFL_StrBufCreate
	add r1, r0, #0
	ldr r0, [r5]
	str r1, [r5, #0x18]
	ldr r0, [r0, #4]
	bl sub_02008BA0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl MyStatus_GetTrainerGender
	str r0, [r5, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy305_219dae0
	str r0, [r5, #0x1c]
	ldrb r0, [r5, #0x10]
	bl sub_0219D760
	cmp r0, #0
	bne _0219DBBA
	ldr r1, [r5, #0xc]
	add r0, r5, #0
	bl ovy305_219dc10
_0219DBBA:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy305_219db48

	thumb_func_start ovy305_219dbc0
ovy305_219dbc0: ; 0x0219DBC0
	push {r3, lr}
	ldr r1, [r0, #0x50]
	cmp r1, #0x2d
	bne _0219DBCE
	ldr r1, [r0, #0xc]
	bl ovy305_219dc10
_0219DBCE:
	pop {r3, pc}
	thumb_func_end ovy305_219dbc0

	thumb_func_start ovy305_219dbd0
ovy305_219dbd0: ; 0x0219DBD0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl GFL_StrBufFree
	add r0, r4, #0
	add r0, #0x20
	bl ovy305_219d8f4
	ldr r0, [r4, #0x1c]
	bl BmpWin_Free
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219dbd0

	thumb_func_start ovy305_219dbec
ovy305_219dbec: ; 0x0219DBEC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x20
	bl ovy305_219da2c
	ldrb r0, [r4, #0x10]
	bl sub_0219D760
	cmp r0, #0
	beq _0219DC06
	add r0, r4, #0
	bl ovy305_219dbc0
_0219DC06:
	ldr r0, [r4, #0x50]
	add r0, r0, #1
	str r0, [r4, #0x50]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219dbec

	thumb_func_start ovy305_219dc10
ovy305_219dc10: ; 0x0219DC10
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	mov r6, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0219DC32
	mov r0, #5
	mov r1, #6
	b _0219DC36
_0219DC32:
	mov r0, #3
	mov r1, #4
_0219DC36:
	add r2, r6, #0
	bl sub_020232E8
	ldr r0, [r5, #0x1c]
	bl BmpWin_GetBitmap
	str r4, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #1
	mov r2, #1
	bl sub_02021CFC
	ldr r4, [r5, #0x1c]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl BmpWin_FlushMap
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy305_219dc10

	thumb_func_start ovy305_219dc6c
ovy305_219dc6c: ; 0x0219DC6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _0219DCDC ; =0x000049C8
	ldrb r0, [r5, r0]
	bl sub_0219D730
	mov r7, #2
	cmp r0, #0
	bne _0219DC82
	mov r7, #4
_0219DC82:
	mov r4, #0
	cmp r7, #0
	ble _0219DCD6
	add r0, r5, #0
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x24
	str r0, [sp, #0x10]
	ldr r0, _0219DCE0 ; =0x0000483C
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _0219DCE4 ; =0x000049B8
	str r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
_0219DCA6:
	ldr r0, [sp, #0xc]
	lsl r2, r4, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, _0219DCE4 ; =0x000049B8
	lsl r3, r4, #4
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #0x54
	mul r1, r0
	ldr r0, [sp, #0x14]
	ldr r6, [r5, #4]
	add r0, r0, r1
	ldr r1, [sp, #0x18]
	add r3, r6, r3
	ldrb r1, [r5, r1]
	bl ovy305_219db48
	add r4, r4, #1
	cmp r4, r7
	blt _0219DCA6
_0219DCD6:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219DCDC: .word 0x000049C8
_0219DCE0: .word 0x0000483C
_0219DCE4: .word 0x000049B8
	thumb_func_end ovy305_219dc6c

	thumb_func_start ovy305_219dce8
ovy305_219dce8: ; 0x0219DCE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219DD1C ; =0x000049C8
	ldrb r0, [r6, r0]
	bl sub_0219D730
	mov r5, #2
	cmp r0, #0
	bne _0219DCFC
	mov r5, #4
_0219DCFC:
	mov r4, #0
	cmp r5, #0
	ble _0219DD18
	ldr r0, _0219DD20 ; =0x0000483C
	mov r7, #0x54
	add r6, r6, r0
_0219DD08:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy305_219dbd0
	add r4, r4, #1
	cmp r4, r5
	blt _0219DD08
_0219DD18:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DD1C: .word 0x000049C8
_0219DD20: .word 0x0000483C
	thumb_func_end ovy305_219dce8

	thumb_func_start ovy305_219dd24
ovy305_219dd24: ; 0x0219DD24
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219DD58 ; =0x000049C8
	ldrb r0, [r6, r0]
	bl sub_0219D730
	mov r5, #2
	cmp r0, #0
	bne _0219DD38
	mov r5, #4
_0219DD38:
	mov r4, #0
	cmp r5, #0
	ble _0219DD54
	ldr r0, _0219DD5C ; =0x0000483C
	mov r7, #0x54
	add r6, r6, r0
_0219DD44:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy305_219dbec
	add r4, r4, #1
	cmp r4, r5
	blt _0219DD44
_0219DD54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DD58: .word 0x000049C8
_0219DD5C: .word 0x0000483C
	thumb_func_end ovy305_219dd24

	thumb_func_start ovy305_219dd60
ovy305_219dd60: ; 0x0219DD60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219DD94 ; =0x000049C8
	ldrb r0, [r6, r0]
	bl sub_0219D730
	mov r5, #2
	cmp r0, #0
	bne _0219DD74
	mov r5, #4
_0219DD74:
	mov r4, #0
	cmp r5, #0
	ble _0219DD90
	ldr r0, _0219DD98 ; =0x0000485C
	mov r7, #0x54
	add r6, r6, r0
_0219DD80:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl sub_0219DAA0
	add r4, r4, #1
	cmp r4, r5
	blt _0219DD80
_0219DD90:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DD94: .word 0x000049C8
_0219DD98: .word 0x0000485C
	thumb_func_end ovy305_219dd60

	thumb_func_start ovy305_219dd9c
ovy305_219dd9c: ; 0x0219DD9C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xd
	beq _0219DDB0
	cmp r4, #0x11
	beq _0219DDD0
	cmp r4, #0x25
	beq _0219DDC0
	b _0219DDEA
_0219DDB0:
	cmp r2, #0
	bne _0219DDB8
	mov r1, #0xe
	b _0219DDE6
_0219DDB8:
	cmp r2, #1
	bne _0219DDEA
	mov r1, #0xf
	b _0219DDE6
_0219DDC0:
	cmp r2, #0
	bne _0219DDC8
	mov r1, #0x26
	b _0219DDE6
_0219DDC8:
	cmp r2, #1
	bne _0219DDEA
	mov r1, #0x27
	b _0219DDE6
_0219DDD0:
	cmp r2, #0
	bne _0219DDD8
	mov r1, #0x12
	b _0219DDE6
_0219DDD8:
	cmp r2, #1
	bne _0219DDE0
	mov r1, #0x13
	b _0219DDE6
_0219DDE0:
	cmp r2, #2
	bne _0219DDEA
	mov r1, #0x14
_0219DDE6:
	bl sub_020095A0
_0219DDEA:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020095A0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy305_219dd9c

	thumb_func_start ovy305_219ddf4
ovy305_219ddf4: ; 0x0219DDF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _0219DE78
	bl sub_02042D34
	cmp r0, #0x1f
	bgt _0219DE46
	add r1, r0, #0
	sub r1, #0xa
	bmi _0219DE78
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219DE1A: ; jump table
	.short _0219DE5A - _0219DE1A - 2 ; case 0
	.short _0219DE78 - _0219DE1A - 2 ; case 1
	.short _0219DE4A - _0219DE1A - 2 ; case 2
	.short _0219DE78 - _0219DE1A - 2 ; case 3
	.short _0219DE78 - _0219DE1A - 2 ; case 4
	.short _0219DE78 - _0219DE1A - 2 ; case 5
	.short _0219DE78 - _0219DE1A - 2 ; case 6
	.short _0219DE78 - _0219DE1A - 2 ; case 7
	.short _0219DE78 - _0219DE1A - 2 ; case 8
	.short _0219DE78 - _0219DE1A - 2 ; case 9
	.short _0219DE6A - _0219DE1A - 2 ; case 10
	.short _0219DE6A - _0219DE1A - 2 ; case 11
	.short _0219DE78 - _0219DE1A - 2 ; case 12
	.short _0219DE6A - _0219DE1A - 2 ; case 13
	.short _0219DE6A - _0219DE1A - 2 ; case 14
	.short _0219DE6A - _0219DE1A - 2 ; case 15
	.short _0219DE6A - _0219DE1A - 2 ; case 16
	.short _0219DE78 - _0219DE1A - 2 ; case 17
	.short _0219DE78 - _0219DE1A - 2 ; case 18
	.short _0219DE78 - _0219DE1A - 2 ; case 19
	.short _0219DE78 - _0219DE1A - 2 ; case 20
	.short _0219DE4A - _0219DE1A - 2 ; case 21
_0219DE46:
	cmp r0, #0x25
	bne _0219DE78
_0219DE4A:
	ldr r0, [r4, #4]
	ldr r2, _0219DE7C ; =0x000049CC
	ldr r0, [r0, #0x54]
	ldr r2, [r4, r2]
	mov r1, #0x25
	bl ovy305_219dd9c
	pop {r4, pc}
_0219DE5A:
	ldr r0, [r4, #4]
	ldr r2, _0219DE7C ; =0x000049CC
	ldr r0, [r0, #0x54]
	ldr r2, [r4, r2]
	mov r1, #0x11
	bl ovy305_219dd9c
	pop {r4, pc}
_0219DE6A:
	ldr r0, [r4, #4]
	ldr r2, _0219DE7C ; =0x000049CC
	ldr r0, [r0, #0x54]
	ldr r2, [r4, r2]
	mov r1, #0xd
	bl ovy305_219dd9c
_0219DE78:
	pop {r4, pc}
	nop
_0219DE7C: .word 0x000049CC
	thumb_func_end ovy305_219ddf4

	thumb_func_start ovy305_219de80
ovy305_219de80: ; 0x0219DE80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r0, r1, #0
	str r1, [sp]
	str r0, [r7, #4]
	add r0, r7, #0
	add r1, sp, #0x20
	str r2, [r7, #8]
	ldrb r2, [r1, #4]
	add r0, #0x26
	mov r4, #0
	strh r3, [r7, #0xc]
	strb r2, [r0]
	ldrh r0, [r1]
	ldrh r2, [r7, #0xc]
	mov r1, #0
	strh r0, [r7, #0xe]
	lsl r2, r2, #0x18
	ldr r0, [sp]
	lsr r2, r2, #0x18
	bl ovy305_219e030
	ldrh r2, [r7, #0xe]
	str r0, [r7, #0x10]
	ldr r0, [sp]
	lsl r2, r2, #0x18
	mov r1, #1
	lsr r2, r2, #0x18
	bl ovy305_219e030
	str r0, [r7, #0x14]
_0219DEC0:
	cmp r4, #0
	beq _0219DECE
	cmp r4, #1
	beq _0219DED4
	cmp r4, #2
	beq _0219DEDA
	b _0219DEDE
_0219DECE:
	mov r6, #0xce
	mov r5, #0x98
	b _0219DEDE
_0219DED4:
	mov r6, #0x32
	mov r5, #0x28
	b _0219DEDE
_0219DEDA:
	mov r6, #0x80
	mov r5, #0x60
_0219DEDE:
	lsl r0, r4, #2
	add r0, r7, r0
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #7
	bl ovy305_219dffc
	ldr r1, [sp, #4]
	str r0, [r1, #0x18]
	mov r1, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #3
	blt _0219DEC0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy305_219de80

	thumb_func_start ovy305_219df04
ovy305_219df04: ; 0x0219DF04
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
_0219DF0A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #3
	blt _0219DF0A
	mov r5, #0
_0219DF1C:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x10]
	bl sub_0204C108
	add r5, r5, #1
	cmp r5, #2
	blt _0219DF1C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy305_219df04

	thumb_func_start ovy305_219df30
ovy305_219df30: ; 0x0219DF30
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x26
	ldrb r0, [r0]
	bl sub_0219D730
	ldrh r0, [r4, #0x24]
	cmp r0, #0x1e
	bne _0219DF62
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_0204C520
_0219DF62:
	ldrh r0, [r4, #0x24]
	add r0, r0, #1
	strh r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219df30

	thumb_func_start ovy305_219df6c
ovy305_219df6c: ; 0x0219DF6C
	push {r4, r5, r6, lr}
	cmp r2, #0
	beq _0219DF7C
	cmp r2, #1
	beq _0219DF80
	cmp r2, #2
	beq _0219DF84
	b _0219DF86
_0219DF7C:
	mov r5, #7
	b _0219DF86
_0219DF80:
	mov r5, #8
	b _0219DF86
_0219DF84:
	mov r5, #9
_0219DF86:
	add r4, r0, #0
	lsl r6, r1, #2
	add r4, #0x18
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_0204C520
	lsl r1, r5, #0x10
	ldr r0, [r4, r6]
	lsr r1, r1, #0x10
	bl sub_0204C4B8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy305_219df6c

	thumb_func_start ovy305_219dfa8
ovy305_219dfa8: ; 0x0219DFA8
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r2, #0
	str r1, [r5]
	strh r4, [r5, #4]
	mov r2, #0xb2
	mov r0, #0
	str r2, [sp, #8]
	mov r2, #9
	str r2, [sp, #0xc]
	mov r2, #8
	str r2, [sp, #0x10]
	mov r2, #7
	str r2, [sp, #0x14]
	mov r2, #6
	str r2, [sp, #0x18]
	str r0, [sp]
	str r0, [sp, #4]
	add r2, sp, #0
	strb r0, [r2, #0x1c]
	strb r0, [r2, #0x1d]
	mov r0, #4
	strb r0, [r2, #0x1e]
	add r0, r1, #0
	bl sub_0219E574
	add r5, #8
	add r2, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	add r3, r4, #0
	bl sub_021999C8
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ovy305_219dfa8

	thumb_func_start sub_0219DFF0
sub_0219DFF0: ; 0x0219DFF0
	ldr r3, _0219DFF8 ; =sub_02199A44
	add r0, #8
	bx r3
	nop
_0219DFF8: .word sub_02199A44
	thumb_func_end sub_0219DFF0

	thumb_func_start ovy305_219dffc
ovy305_219dffc: ; 0x0219DFFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0219E574
	add r1, r0, #0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #4]
	lsl r2, r4, #0x18
	lsl r3, r6, #0x18
	add r5, #8
	str r0, [sp, #4]
	add r0, r5, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02199A5C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy305_219dffc

	thumb_func_start ovy305_219e030
ovy305_219e030: ; 0x0219E030
	push {r4, lr}
	add r3, r2, #0
	cmp r1, #0
	bne _0219E03E
	mov r1, #0xce
	mov r2, #0x98
	b _0219E042
_0219E03E:
	mov r1, #0x32
	mov r2, #0x28
_0219E042:
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ovy305_219dffc
	add r4, r0, #0
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C438
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219e030

	thumb_func_start ovy305_219e060
ovy305_219e060: ; 0x0219E060
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r3, #0
	ldr r0, _0219E094 ; =0x04000050
	mov r1, #1
	mov r2, #0x1f
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	mov r1, #0x14
	add r2, r6, #0
	str r4, [r5]
	strh r6, [r5, #4]
	bl sub_02049D24
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_0204F918
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219E094: .word 0x04000050
	thumb_func_end ovy305_219e060

	thumb_func_start ovy305_219e098
ovy305_219e098: ; 0x0219E098
	push {r4, lr}
	add r4, r0, #0
	bl ovy305_219e2a0
	add r0, r4, #0
	bl ovy305_219e1b4
	ldr r0, [r4, #8]
	bl sub_02049DDC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219e098

	thumb_func_start ovy305_219e0b0
ovy305_219e0b0: ; 0x0219E0B0
	push {r3, r4, lr}
	sub sp, #0x3c
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0219E55C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0219E0C6
	bl sub_0204F954
_0219E0C6:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0219E0F2
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	blx MTX_Identity33_
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_0204A5C0
	add r1, sp, #0
	bl sub_02049B5C
_0219E0F2:
	ldr r0, [r4]
	bl sub_0219E568
	add sp, #0x3c
	pop {r3, r4, pc}
	thumb_func_end ovy305_219e0b0

	thumb_func_start ovy305_219e0fc
ovy305_219e0fc: ; 0x0219E0FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _0219E10E
	bl ovy305_219e19c
_0219E10E:
	mov r4, #0x12
	add r0, r5, #0
	lsl r4, r4, #0xa
	ldrh r3, [r5, #4]
	add r0, #0x14
	add r1, r4, #0
	mov r2, #1
	bl sub_0204F968
	mov r1, #3
	str r0, [r5, #0x10]
	lsl r1, r1, #0xc
	str r1, [sp, #0x10]
	ldr r1, _0219E188 ; =0xFFFFD000
	mov r6, #2
	str r1, [sp, #0x14]
	ldr r1, _0219E18C ; =0xFFFFC000
	str r6, [sp, #0xc]
	str r1, [sp, #0x18]
	lsl r1, r6, #0xd
	str r1, [sp, #0x1c]
	lsl r1, r6, #0xb
	str r1, [sp, #0x20]
	lsl r1, r6, #0x15
	str r1, [sp, #0x24]
	mov r1, #0
	str r1, [sp, #0x28]
	bl sub_02050178
	ldr r0, _0219E190 ; =0x0219EC04
	ldr r3, _0219E194 ; =0x0219EC10
	str r0, [sp]
	ldr r0, _0219E198 ; =ovy305_219ec40
	add r1, sp, #0xc
	str r0, [sp, #4]
	ldrh r0, [r5, #4]
	lsl r2, r6, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	bl sub_020500CC
	ldrh r2, [r5, #4]
	mov r0, #0xb2
	add r1, r7, #0
	bl sub_0204FDF8
	add r6, r0, #0
	bl sub_020503F0
	add r4, #0x14
	strb r0, [r5, r4]
	bl sub_02005718
	add r3, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	mov r2, #0
	bl sub_0204FE04
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E188: .word 0xFFFFD000
_0219E18C: .word 0xFFFFC000
_0219E190: .word 0x0219EC04
_0219E194: .word 0x0219EC10
_0219E198: .word 0x0219ec40
	thumb_func_end ovy305_219e0fc

	thumb_func_start ovy305_219e19c
ovy305_219e19c: ; 0x0219E19C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020500B0
	ldr r0, [r4, #0x10]
	bl sub_0204FA84
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219e19c

	thumb_func_start ovy305_219e1b4
ovy305_219e1b4: ; 0x0219E1B4
	push {r3, lr}
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0219E1C0
	bl sub_0204FA84
_0219E1C0:
	bl sub_0204FB4C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy305_219e1b4

	thumb_func_start sub_0219E1C8
sub_0219E1C8: ; 0x0219E1C8
	ldr r0, [r0, #0x10]
	ldr r3, _0219E1D0 ; =sub_0205006C
	bx r3
	nop
_0219E1D0: .word sub_0205006C
	thumb_func_end sub_0219E1C8

	thumb_func_start ovy305_219e1d4
ovy305_219e1d4: ; 0x0219E1D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0219E1FC ; =0x00004814
	add r7, r1, #0
	ldrb r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _0219E1FA
	add r6, r5, r0
_0219E1E6:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0219E1C8
	ldrb r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219E1E6
_0219E1FA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E1FC: .word 0x00004814
	thumb_func_end ovy305_219e1d4

	thumb_func_start ovy305_219e200
ovy305_219e200: ; 0x0219E200
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02049964
	add r4, r0, #0
	bl sub_02049804
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02049808
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02049620
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02065640
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020655C8
	mov r1, #1
	and r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy305_219e200

	thumb_func_start ovy305_219e23c
ovy305_219e23c: ; 0x0219E23C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #0xf]
	cmp r1, #0
	beq _0219E24C
	bl ovy305_219e28c
_0219E24C:
	ldr r2, _0219E288 ; =0x0219E9D8
	lsl r1, r4, #4
	ldr r0, [r5, #8]
	add r1, r2, r1
	bl sub_02049E00
	strh r0, [r5, #0xc]
	mov r0, #1
	strb r0, [r5, #0xf]
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	bl sub_0204A5C0
	add r6, r0, #0
	bl sub_02049970
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0219E284
_0219E274:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_02049974
	add r4, r4, #1
	cmp r4, r5
	blt _0219E274
_0219E284:
	pop {r4, r5, r6, pc}
	nop
_0219E288: .word 0x0219E9D8
	thumb_func_end ovy305_219e23c

	thumb_func_start ovy305_219e28c
ovy305_219e28c: ; 0x0219E28C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_02049F4C
	mov r0, #0
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
	pop {r4, pc}
	thumb_func_end ovy305_219e28c

	thumb_func_start ovy305_219e2a0
ovy305_219e2a0: ; 0x0219E2A0
	push {r3, lr}
	ldrb r1, [r0, #0xf]
	cmp r1, #0
	beq _0219E2AC
	bl ovy305_219e28c
_0219E2AC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy305_219e2a0

	thumb_func_start ovy305_219e2b0
ovy305_219e2b0: ; 0x0219E2B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	beq _0219E2C2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E2C2:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	bl sub_0204A5C0
	add r7, r0, #0
	bl sub_02049970
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0219E2F8
_0219E2D8:
	ldr r2, _0219E2FC ; =0x0219EC00
	lsl r1, r4, #0x10
	ldr r2, [r2]
	add r0, r7, #0
	lsr r1, r1, #0x10
	lsl r2, r2, #0xc
	bl sub_02049A64
	str r0, [sp]
	cmp r0, #0
	bne _0219E2F2
	mov r0, #1
	strb r0, [r5, #0xe]
_0219E2F2:
	add r4, r4, #1
	cmp r4, r6
	blt _0219E2D8
_0219E2F8:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E2FC: .word 0x0219EC00
	thumb_func_end ovy305_219e2b0

	thumb_func_start ovy305_219e300
ovy305_219e300: ; 0x0219E300
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #0x44]
	cmp r0, #1
	bne _0219E338
	mov r7, #0
	add r6, r7, #0
_0219E30E:
	ldr r0, [sp]
	lsl r1, r7, #4
	add r5, r0, r1
	ldr r0, [r0, r1]
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219E330
_0219E320:
	add r0, r5, r4
	strb r6, [r0, #0xa]
	ldr r0, [r5]
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _0219E320
_0219E330:
	add r7, r7, #1
	cmp r7, #2
	blt _0219E30E
	pop {r3, r4, r5, r6, r7, pc}
_0219E338:
	cmp r0, #3
	bne _0219E368
	mov r7, #0
	add r6, r7, #0
_0219E340:
	ldr r0, [sp]
	lsl r1, r7, #4
	add r4, r0, r1
	ldr r0, [r0, r1]
	mov r5, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219E362
_0219E352:
	add r0, r4, r5
	strb r6, [r0, #0xa]
	ldr r0, [r4]
	add r5, r5, #1
	bl sub_0201FDF8
	cmp r5, r0
	blt _0219E352
_0219E362:
	add r7, r7, #1
	cmp r7, #4
	blt _0219E340
_0219E368:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy305_219e300

	thumb_func_start ovy305_219e36c
ovy305_219e36c: ; 0x0219E36C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0]
	add r6, r0, #0
	add r0, r7, #0
	mov r5, #0
	add r6, #0xa
	mov r4, #0
	bl sub_0201FDF8
	cmp r0, #0
	ble _0219E396
_0219E382:
	ldrb r0, [r6, r4]
	cmp r0, #1
	bhi _0219E38A
	add r5, r5, #1
_0219E38A:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_0201FDF8
	cmp r4, r0
	blt _0219E382
_0219E396:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy305_219e36c

	thumb_func_start ovy305_219e39c
ovy305_219e39c: ; 0x0219E39C
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #1
	mov r4, #1
	bl GFL_BGSysSetBGEnabledA
	ldr r0, _0219E42C ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _0219E430 ; =0xFFFFCFFD
	bic r2, r1
	add r1, r2, #0
	orr r1, r4
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	mov r4, #0
	add r2, r1, #0
	and r2, r5
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r2, _0219E434 ; =0x0000CFEF
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
	ldr r1, _0219E438 ; =0xBFFF0000
	ldr r0, _0219E43C ; =0x04000580
	str r1, [r0]
	ldr r5, _0219E440 ; =0x0219EA88
_0219E410:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _0219E410
	mov r0, #1
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219E42C: .word 0x04000008
_0219E430: .word 0xFFFFCFFD
_0219E434: .word 0x0000CFEF
_0219E438: .word 0xBFFF0000
_0219E43C: .word 0x04000580
_0219E440: .word 0x0219EA88
	thumb_func_end ovy305_219e39c

	thumb_func_start ovy305_219e444
ovy305_219e444: ; 0x0219E444
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x6d
	add r5, r1, #0
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _0219E4D4 ; =0x0219EC1C
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219E4D8 ; =0x04000050
	ldr r0, _0219E4DC ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219E4E0 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219E4E4 ; =0x0219EAA8
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
	bl ovy305_219e594
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy305_219e638
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy305_219e6a8
	ldr r0, _0219E4E8 ; =ovy305_219e580
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E4D4: .word 0x0219EC1C
_0219E4D8: .word 0x04000050
_0219E4DC: .word 0x04001050
_0219E4E0: .word 0xFFFF1FFF
_0219E4E4: .word 0x0219EAA8
_0219E4E8: .word ovy305_219e580
	thumb_func_end ovy305_219e444

	thumb_func_start ovy305_219e4ec
ovy305_219e4ec: ; 0x0219E4EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	add r0, #8
	bl ovy305_219e720
	add r0, r4, #4
	bl ovy305_219e678
	add r0, r4, #0
	bl ovy305_219e5f4
	bl sub_020232D8
	ldr r5, _0219E53C ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219E540 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219E544 ; =0xFFFF1FFF
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
_0219E53C: .word 0x04000050
_0219E540: .word 0x04001050
_0219E544: .word 0xFFFF1FFF
	thumb_func_end ovy305_219e4ec

	thumb_func_start ovy305_219e548
ovy305_219e548: ; 0x0219E548
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219E694
	add r0, r4, #0
	bl sub_0219E62C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219e548

	thumb_func_start sub_0219E55C
sub_0219E55C: ; 0x0219E55C
	ldr r3, _0219E564 ; =ovy305_219e730
	add r0, #8
	bx r3
	nop
_0219E564: .word ovy305_219e730
	thumb_func_end sub_0219E55C

	thumb_func_start sub_0219E568
sub_0219E568: ; 0x0219E568
	ldr r3, _0219E570 ; =sub_0219E744
	add r0, #8
	bx r3
	nop
_0219E570: .word sub_0219E744
	thumb_func_end sub_0219E568

	thumb_func_start sub_0219E574
sub_0219E574: ; 0x0219E574
	ldr r3, _0219E57C ; =sub_0219E6A4
	add r0, r0, #4
	bx r3
	nop
_0219E57C: .word sub_0219E6A4
	thumb_func_end sub_0219E574

	thumb_func_start ovy305_219e580
ovy305_219e580: ; 0x0219E580
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219E630
	add r0, r4, #4
	bl sub_0219E69C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy305_219e580

	thumb_func_start ovy305_219e594
ovy305_219e594: ; 0x0219E594
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
	ldr r0, _0219E5EC ; =0x0219EA5C
	bl GFL_BGSysSetLCDConfig
	ldr r7, _0219E5F0 ; =0x0219EAD8
_0219E5B6:
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
	blo _0219E5B6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E5EC: .word 0x0219EA5C
_0219E5F0: .word 0x0219EAD8
	thumb_func_end ovy305_219e594

	thumb_func_start ovy305_219e5f4
ovy305_219e5f4: ; 0x0219E5F4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219E628 ; =0x0219EAD8
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219E5FE:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #6
	blo _0219E5FE
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E628: .word 0x0219EAD8
	thumb_func_end ovy305_219e5f4

	thumb_func_start sub_0219E62C
sub_0219E62C: ; 0x0219E62C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E62C

	thumb_func_start sub_0219E630
sub_0219E630: ; 0x0219E630
	ldr r3, _0219E634 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219E634: .word sub_02045A5C
	thumb_func_end sub_0219E630

	thumb_func_start ovy305_219e638
ovy305_219e638: ; 0x0219E638
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219E674 ; =0x0219EA6C
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
_0219E674: .word 0x0219EA6C
	thumb_func_end ovy305_219e638

	thumb_func_start ovy305_219e678
ovy305_219e678: ; 0x0219E678
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
	thumb_func_end ovy305_219e678

	thumb_func_start sub_0219E694
sub_0219E694: ; 0x0219E694
	ldr r3, _0219E698 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219E698: .word sub_0204B794
	thumb_func_end sub_0219E694

	thumb_func_start sub_0219E69C
sub_0219E69C: ; 0x0219E69C
	ldr r3, _0219E6A0 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219E6A0: .word sub_0204B7C8
	thumb_func_end sub_0219E69C

	thumb_func_start sub_0219E6A4
sub_0219E6A4: ; 0x0219E6A4
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219E6A4

	thumb_func_start ovy305_219e6a8
ovy305_219e6a8: ; 0x0219E6A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r7, #0
	add r5, r0, #0
	add r4, r1, #0
	str r7, [sp]
	ldr r0, _0219E708 ; =ovy305_219e39c
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	ldr r6, _0219E70C ; =0x0219EA38
	add r3, sp, #0x20
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xc
	str r0, [r3]
	mov r0, #1
	ldr r3, _0219E710 ; =0x02094A3C
	str r7, [sp]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0x16
	str r0, [sp, #8]
	ldr r0, _0219E714 ; =0x0219EA50
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	mov r2, #0xe
	ldr r0, _0219E718 ; =0x0219EA44
	ldrsh r1, [r3, r1]
	str r0, [sp, #0x18]
	ldrsh r2, [r3, r2]
	ldr r3, _0219E71C ; =0x00001555
	mov r0, #0
	str r4, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E708: .word ovy305_219e39c
_0219E70C: .word 0x0219EA38
_0219E710: .word 0x02094A3C
_0219E714: .word 0x0219EA50
_0219E718: .word 0x0219EA44
_0219E71C: .word 0x00001555
	thumb_func_end ovy305_219e6a8

	thumb_func_start ovy305_219e720
ovy305_219e720: ; 0x0219E720
	push {r3, lr}
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy305_219e720

	thumb_func_start ovy305_219e730
ovy305_219e730: ; 0x0219E730
	push {r4, lr}
	add r4, r0, #0
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	pop {r4, pc}
	thumb_func_end ovy305_219e730

	thumb_func_start sub_0219E744
sub_0219E744: ; 0x0219E744
	ldr r3, _0219E748 ; =sub_02049AA0
	bx r3
	.align 2, 0
_0219E748: .word sub_02049AA0
	thumb_func_end sub_0219E744
_0219E74C:
	.byte 0x0F, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0xE7, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0xE7, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8C, 0xE7, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0xE7, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0xE7, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xE7, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB2, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB2, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB2, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00
	.byte 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB2, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x32, 0x07, 0x00, 0x00, 0x32, 0x07, 0x00, 0x00, 0x33, 0x07, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x34, 0x07, 0x00, 0x00, 0x01, 0x08, 0x00, 0x00, 0x8C, 0x07, 0x00, 0x00
	.byte 0x02, 0x08, 0x00, 0x00, 0xD8, 0x05, 0x00, 0x00, 0xD8, 0x05, 0x00, 0x00, 0x39, 0xD1, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xCD, 0xD1, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x49, 0xD3, 0x19, 0x02
	.byte 0x65, 0xD3, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0xED, 0xD3, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x2D, 0xD6, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x61, 0xD6, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0xD6, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9C, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9C, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0xFF, 0xFF
	.byte 0x81, 0xCE, 0x19, 0x02, 0x21, 0xD0, 0x19, 0x02, 0xA1, 0xCF, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x9C, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD4, 0xFE, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD4, 0xFE, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9C, 0xFF, 0xFF, 0xFF, 0x30, 0xE8, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xB4, 0xE7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x54, 0xE8, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xC4, 0xE7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x78, 0xE8, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xD4, 0xE7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x9C, 0xE8, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xE4, 0xE7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0xC0, 0xE8, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x94, 0xE7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x0C, 0xE8, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xA4, 0xE7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42
	.byte 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x63, 0x6F, 0x6D, 0x6D
	.byte 0x5F, 0x62, 0x74, 0x6C, 0x5F, 0x64, 0x65, 0x6D, 0x6F, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69
	.byte 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219E74C
