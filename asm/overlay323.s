    .include "macros/function.inc"
	.include "overlay323.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy323_219ce80
ovy323_219ce80: ; 0x0219CE80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0219CFAC ; =0x0000008B
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #6
	mov r0, #1
	mov r1, #0xa1
	lsl r2, r2, #0x10
	mov r7, #1
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r4, #0xa2
	lsl r4, r4, #2
	add r1, r4, #0
	mov r2, #0xa1
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0xa1
	strh r0, [r5]
	str r6, [r5, #8]
	ldrh r1, [r5]
	mov r0, #0
	bl ovy323_219e6cc
	str r0, [r5, #0x10]
	add r0, r5, #0
	bl ovy323_219d9bc
	ldrh r1, [r5]
	add r0, r5, #4
	bl ovy323_219d15c
	ldr r0, [r5, #0x10]
	bl sub_0219E7D4
	add r1, r0, #0
	ldrh r2, [r5]
	add r0, r5, #0
	bl ovy323_219d2cc
	str r0, [r5, #0x14]
	mov r1, #1
	bl sub_02199CB8
	ldrh r0, [r5]
	mov r1, #0xb
	mov r4, #0xb
	str r0, [sp]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x2c]
	mov r0, #0
	bl sub_0202E168
	str r0, [r5, #0x4c]
	add r0, r5, #0
	bl ovy323_219d43c
	add r0, r5, #0
	bl ovy323_219d55c
	add r0, r5, #0
	add r1, r6, #0
	bl ovy323_219d734
	add r0, r5, #0
	bl ovy323_219d694
	add r0, r5, #0
	bl ovy323_219d4a4
	add r1, r5, #0
	add r1, #0xe0
	ldr r1, [r1]
	add r0, r5, #0
	bl ovy323_219d504
	add r0, r5, #0
	bl ovy323_219d5c4
	add r0, r5, #0
	mov r1, #1
	bl ovy323_219e6a0
	add r0, r5, #0
	bl ovy323_219da80
	add r0, r5, #0
	bl ovy323_219cfc0
	add r1, r5, #0
	add r1, #0xc8
	mov r0, #0
	strh r0, [r1]
	bl sub_0203D554
	cmp r0, #1
	bne _0219CF6C
	add r0, r5, #0
	sub r4, #0xc
	add r0, #0xc8
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0xcc
	str r7, [r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_0219D620
	b _0219CF86
_0219CF6C:
	mov r1, #0xc8
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219CFB4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy323_219dbbc
	add r1, r5, #0
	add r1, #0xcc
	mov r0, #0
	str r0, [r1]
_0219CF86:
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r0, _0219CFB0 ; =ovy323_219d120
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x44]
	mov r0, #6
	mov r1, #3
	mov r2, #0x10
	bl sub_02044CFC
	mov r0, #0
	mov r1, #0xa1
	bl sub_02042BA8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CFAC: .word 0x0000008B
_0219CFB0: .word ovy323_219d120
	thumb_func_end ovy323_219ce80

	thumb_func_start sub_0219CFB4
sub_0219CFB4: ; 0x0219CFB4
	add r0, #0xe0
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_0219CFB4

	thumb_func_start ovy323_219cfc0
ovy323_219cfc0: ; 0x0219CFC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
_0219CFC6:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r6, r0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0219CFE8
	ldr r1, [r1, #8]
	ldr r0, _0219D038 ; =0x0219E936
	ldrb r7, [r0, r1]
	b _0219CFEA
_0219CFE8:
	mov r7, #4
_0219CFEA:
	lsl r0, r6, #0x14
	lsl r4, r6, #2
	lsr r0, r0, #0x10
	mov r1, #0x10
	mov r2, #3
	mov r3, #0xa1
	bl sub_02035024
	add r1, r5, r4
	add r1, #0xd0
	str r0, [r1]
	add r0, r7, #5
	lsl r0, r0, #4
	str r0, [sp]
	add r0, r5, r4
	add r0, #0xd0
	ldr r0, [r0]
	ldr r1, _0219D03C ; =0x0000010F
	mov r2, #6
	lsl r3, r7, #4
	bl sub_02035090
	add r0, r5, r4
	add r0, #0xd0
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xe
	bl sub_020352B8
	add r0, r5, r4
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02035198
	add r6, r6, #1
	cmp r6, #4
	blt _0219CFC6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D038: .word 0x0219E936
_0219D03C: .word 0x0000010F
	thumb_func_end ovy323_219cfc0

	thumb_func_start ovy323_219d040
ovy323_219d040: ; 0x0219D040
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D046:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02035178
	add r4, r4, #1
	cmp r4, #4
	blt _0219D046
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy323_219d040

	thumb_func_start ovy323_219d05c
ovy323_219d05c: ; 0x0219D05C
	push {r3, r4, r5, lr}
	add r5, r3, #0
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	bl GFL_TCBRemove
	add r0, r5, #0
	bl ovy323_219d6f4
	add r0, r5, #0
	bl ovy323_219d040
	add r0, r5, #0
	bl ovy323_219d544
	add r0, r5, #0
	bl ovy323_219d48c
	add r0, r5, #0
	bl sub_0219D614
	add r0, r5, #0
	bl ovy323_219d5ac
	ldr r0, [r5, #0x4c]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy323_219d360
	ldr r0, [r5, #0xc]
	bl GFL_StrBufFree
	add r0, r5, #0
	bl ovy323_219da44
	ldr r0, [r5, #0x10]
	bl ovy323_219e76c
	ldrh r5, [r5]
	add r0, r4, #0
	bl sub_0203AB10
	add r0, r5, #0
	bl sub_0203A1D0
	ldr r0, _0219D0C4 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0219D0C4: .word 0x0000008B
	thumb_func_end ovy323_219d05c

	thumb_func_start ovy323_219d0c8
ovy323_219d0c8: ; 0x0219D0C8
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	bl ovy323_219e250
	cmp r0, #0
	beq _0219D0DA
	mov r0, #1
	pop {r4, pc}
_0219D0DA:
	ldr r0, [r4, #0x14]
	bl sub_0219D380
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0219D0EA
	bl sub_0219D434
_0219D0EA:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0219D0F4
	bl sub_0203A7F4
_0219D0F4:
	ldr r0, [r4, #0x2c]
	bl sub_02021A3C
	add r0, r4, #0
	bl ovy323_219d64c
	mov r0, #0xc8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _0219D114
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02035198
_0219D114:
	ldr r0, [r4, #0x10]
	bl ovy323_219e7c0
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219d0c8

	thumb_func_start ovy323_219d120
ovy323_219d120: ; 0x0219D120
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _0219D15A
	mov r4, #0xc8
	ldrsh r1, [r5, r4]
	add r0, r5, #0
	bl sub_0219CFB4
	add r1, r0, #0
	bpl _0219D142
	sub r4, #0xc9
	add r0, r5, #4
	add r1, r4, #0
	add r2, r4, #0
	b _0219D152
_0219D142:
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldrsh r2, [r5, r4]
	ldr r1, [r1, #8]
	add r0, r5, #4
_0219D152:
	bl ovy323_219d1e8
	mov r0, #0
	str r0, [r5, #0x48]
_0219D15A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy323_219d120

	thumb_func_start ovy323_219d15c
ovy323_219d15c: ; 0x0219D15C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _0219D1E4 ; =0x0000010F
	add r5, r1, #0
	add r0, r6, #0
	bl sub_0204AA30
	add r1, r6, #0
	add r1, #0x51
	str r1, [sp]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r5, [sp, #4]
	mov r7, #0
	bl sub_0204B0D4
	add r6, #0xd1
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	str r7, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D1E4: .word 0x0000010F
	thumb_func_end ovy323_219d15c

	thumb_func_start ovy323_219d1e8
ovy323_219d1e8: ; 0x0219D1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _0219D2B8 ; =0x04001050
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #4
	mov r5, #0x10
	mov r2, #0x10
	bl G2x_SetBlendBrightness_
	add r5, #0xff
	add r0, r5, #0
	mov r1, #0xa1
	mov r7, #0xa1
	bl sub_0204AA30
	add r5, r0, #0
	mov r0, #0xa1
	sub r0, #0xa2
	cmp r6, r0
	beq _0219D21A
	add r0, r7, #0
	sub r0, #0xa2
	cmp r4, r0
	bne _0219D256
_0219D21A:
	mov r0, #0x20
	str r0, [sp]
	mov r4, #0xa1
	str r4, [sp, #4]
	add r0, r5, #0
	mov r1, #0x31
	mov r2, #4
	mov r6, #0
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	add r0, r5, #0
	mov r1, #0x4e
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r5, #0
	mov r1, #0x3f
	mov r2, #6
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204ADA8
	b _0219D2A8
_0219D256:
	mov r0, #6
	mov r1, #1
	bl sub_02045764
	mov r0, #6
	bl sub_02044F90
	ldr r0, _0219D2BC ; =0x0219E95F
	ldr r1, _0219D2C0 ; =0x0219E9B9
	ldrb r0, [r0, r4]
	mov r2, #4
	mov r3, #0
	lsl r4, r0, #2
	mov r0, #0x20
	str r0, [sp]
	ldrb r1, [r1, r4]
	add r0, r5, #0
	str r7, [sp, #4]
	mov r6, #0
	bl sub_0204B0D4
	ldr r1, _0219D2C4 ; =0x0219EA29
	str r6, [sp]
	str r6, [sp, #4]
	ldrb r1, [r1, r4]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204ADA8
	ldr r1, _0219D2C8 ; =0x0219E9F1
	str r6, [sp]
	str r6, [sp, #4]
	ldrb r1, [r1, r4]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0
	str r7, [sp, #8]
	bl sub_0204AF50
_0219D2A8:
	add r0, r5, #0
	bl sub_0204AB0C
	ldr r0, _0219D2B8 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D2B8: .word 0x04001050
_0219D2BC: .word 0x0219E95F
_0219D2C0: .word 0x0219E9B9
_0219D2C4: .word 0x0219EA29
_0219D2C8: .word 0x0219E9F1
	thumb_func_end ovy323_219d1e8

	thumb_func_start ovy323_219d2cc
ovy323_219d2cc: ; 0x0219D2CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	add r4, r2, #0
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x54
	add r1, r4, #0
	bl sub_0204AA30
	str r4, [sp]
	mov r1, #8
	mov r2, #0
	mov r3, #0
	add r7, r0, #0
	bl sub_0204B81C
	str r0, [r5, #0x18]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #7
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0
	lsl r3, r3, #6
	bl sub_0204BBB8
	str r0, [r5, #0x1c]
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0x13
	add r3, r4, #0
	mov r6, #0xc
	bl sub_0204BDE0
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl sub_0204AB0C
	ldr r3, _0219D35C ; =0x0219EB08
	add r2, sp, #0x30
_0219D320:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0219D320
	add r6, sp, #0x10
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x20
	mov r5, #0
	blx MI_CpuFill8
	add r0, sp, #0x30
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0xd
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x28]
	add r0, r6, #0
	str r5, [sp, #0x24]
	bl sub_02199AA0
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D35C: .word 0x0219EB08
	thumb_func_end ovy323_219d2cc

	thumb_func_start ovy323_219d360
ovy323_219d360: ; 0x0219D360
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02199B5C
	ldr r0, [r4, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r4, #0x18]
	bl sub_0204B98C
	ldr r0, [r4, #0x20]
	bl sub_0204BE64
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219d360

	thumb_func_start sub_0219D380
sub_0219D380: ; 0x0219D380
	ldr r3, _0219D384 ; =sub_02199B90
	bx r3
	.align 2, 0
_0219D384: .word sub_02199B90
	thumb_func_end sub_0219D380

	thumb_func_start ovy323_219d388
ovy323_219d388: ; 0x0219D388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #0x1c
	ldr r1, _0219D424 ; =0x0219EAB4
	mul r0, r3
	add r7, r1, r0
	ldr r0, [r7, #4]
	mov r4, #0
	str r2, [sp, #8]
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _0219D3D6
	ldr r0, [r7]
	str r0, [sp, #0x18]
_0219D3A8:
	mov r0, #0xc
	mul r0, r4
	add r1, sp, #0x1c
	add r6, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsl r5, r4, #2
	ldr r0, [sp, #4]
	ldr r1, [r1, r5]
	bl sub_0204898C
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	str r0, [r2, r1]
	ldr r0, _0219D428 ; =0x000039E3
	add r4, r4, #1
	strh r0, [r6, #4]
	add r0, r7, r5
	ldr r0, [r0, #0xc]
	str r0, [r6, #8]
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blt _0219D3A8
_0219D3D6:
	ldr r0, [sp, #8]
	ldr r1, [r7, #4]
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	strb r1, [r0, #4]
	add r1, sp, #0x1c
	str r1, [sp, #0x48]
	mov r1, #1
	str r1, [sp, #0x4c]
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x17
	strb r1, [r0, #0x11]
	ldr r1, [r7, #8]
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	ldr r1, [sp]
	bl sub_0202D974
	ldr r5, [r7, #4]
	mov r4, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _0219D41C
	mov r6, #0xc
_0219D40A:
	add r1, r4, #0
	mul r1, r6
	add r0, sp, #0x1c
	ldr r0, [r0, r1]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, r5
	blt _0219D40A
_0219D41C:
	ldr r0, [sp, #0xc]
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_0219D424: .word 0x0219EAB4
_0219D428: .word 0x000039E3
	thumb_func_end ovy323_219d388

	thumb_func_start sub_0219D42C
sub_0219D42C: ; 0x0219D42C
	ldr r3, _0219D430 ; =sub_0202DA54
	bx r3
	.align 2, 0
_0219D430: .word sub_0202DA54
	thumb_func_end sub_0219D42C

	thumb_func_start sub_0219D434
sub_0219D434: ; 0x0219D434
	ldr r3, _0219D438 ; =sub_0202DB70
	bx r3
	.align 2, 0
_0219D438: .word sub_0202DB70
	thumb_func_end sub_0219D434

	thumb_func_start ovy323_219d43c
ovy323_219d43c: ; 0x0219D43C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x64
	mov r6, #0xa1
	mov r1, #0xa1
	bl sub_0204AA30
	str r6, [sp]
	mov r1, #0x15
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	mov r7, #0
	bl sub_0204B81C
	str r0, [r5, #0x54]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0xa0
	bl sub_0204BBB8
	str r0, [r5, #0x58]
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0x27
	mov r3, #0xa1
	bl sub_0204BDE0
	str r0, [r5, #0x5c]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy323_219d43c

	thumb_func_start ovy323_219d48c
ovy323_219d48c: ; 0x0219D48C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_0204BCD0
	ldr r0, [r4, #0x54]
	bl sub_0204B98C
	ldr r0, [r4, #0x5c]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy323_219d48c

	thumb_func_start ovy323_219d4a4
ovy323_219d4a4: ; 0x0219D4A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	add r6, sp, #0xc
_0219D4B8:
	ldr r0, _0219D500 ; =0x0219E912
	lsl r1, r4, #1
	add r2, r0, r1
	ldrb r0, [r0, r1]
	strh r0, [r6]
	ldrb r0, [r2, #1]
	strh r0, [r6, #2]
	mov r0, #1
	strh r0, [r6, #4]
	mov r0, #2
	strb r0, [r6, #7]
	lsl r0, r4, #2
	add r7, r5, r0
	ldr r0, [r5, #0x10]
	bl sub_0219E7D4
	add r1, sp, #0xc
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xa1
	str r1, [sp, #8]
	ldr r1, [r5, #0x54]
	ldr r2, [r5, #0x58]
	ldr r3, [r5, #0x5c]
	bl sub_0204C040
	mov r1, #1
	str r0, [r7, #0x60]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #4
	blt _0219D4B8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D500: .word 0x0219E912
	thumb_func_end ovy323_219d4a4

	thumb_func_start ovy323_219d504
ovy323_219d504: ; 0x0219D504
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	lsl r7, r1, #2
_0219D50C:
	ldr r0, [r5, #8]
	add r6, r4, r7
	ldr r0, [r0, #0xc]
	add r1, r6, #0
	bl sub_020111A0
	cmp r0, #0
	bne _0219D530
	lsl r1, r6, #2
	add r2, r5, r1
	mov r1, #0x9a
	lsl r1, r1, #2
	lsl r0, r4, #2
	ldr r1, [r2, r1]
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	ldr r1, [r1, #4]
	b _0219D538
_0219D530:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	mov r1, #0
_0219D538:
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #4
	blt _0219D50C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy323_219d504

	thumb_func_start ovy323_219d544
ovy323_219d544: ; 0x0219D544
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D54A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #4
	blt _0219D54A
	pop {r3, r4, r5, pc}
	thumb_func_end ovy323_219d544

	thumb_func_start ovy323_219d55c
ovy323_219d55c: ; 0x0219D55C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x64
	mov r6, #0xa1
	mov r1, #0xa1
	bl sub_0204AA30
	str r6, [sp]
	mov r1, #0x15
	mov r2, #0
	mov r3, #1
	add r4, r0, #0
	mov r7, #0
	bl sub_0204B81C
	str r0, [r5, #0x70]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0204BBB8
	str r0, [r5, #0x74]
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0x27
	mov r3, #0xa1
	bl sub_0204BDE0
	str r0, [r5, #0x78]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy323_219d55c

	thumb_func_start ovy323_219d5ac
ovy323_219d5ac: ; 0x0219D5AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x74]
	bl sub_0204BCD0
	ldr r0, [r4, #0x70]
	bl sub_0204B98C
	ldr r0, [r4, #0x78]
	bl sub_0204BE64
	pop {r4, pc}
	thumb_func_end ovy323_219d5ac

	thumb_func_start ovy323_219d5c4
ovy323_219d5c4: ; 0x0219D5C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, sp, #0xc
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	ldr r2, _0219D610 ; =0x0219E908
	add r0, sp, #0xc
	ldrb r1, [r2]
	mov r4, #1
	strh r1, [r0]
	ldrb r1, [r2, #1]
	strh r1, [r0, #2]
	mov r1, #0xa
	strh r1, [r0, #4]
	strb r4, [r0, #7]
	ldr r0, [r5, #0x10]
	bl sub_0219E7D4
	str r6, [sp]
	str r4, [sp, #4]
	mov r1, #0xa1
	str r1, [sp, #8]
	ldr r1, [r5, #0x70]
	ldr r2, [r5, #0x74]
	ldr r3, [r5, #0x78]
	bl sub_0204C040
	mov r1, #1
	str r0, [r5, #0x7c]
	bl sub_0204C520
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0219D610: .word 0x0219E908
	thumb_func_end ovy323_219d5c4

	thumb_func_start sub_0219D614
sub_0219D614: ; 0x0219D614
	ldr r0, [r0, #0x7c]
	ldr r3, _0219D61C ; =sub_0204C108
	bx r3
	nop
_0219D61C: .word sub_0204C108
	thumb_func_end sub_0219D614

	thumb_func_start sub_0219D620
sub_0219D620: ; 0x0219D620
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x7c]
	ldr r3, _0219D62C ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_0219D62C: .word sub_0204C124
	thumb_func_end sub_0219D620

	thumb_func_start ovy323_219d630
ovy323_219d630: ; 0x0219D630
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0x7c
	lsl r1, r2, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	thumb_func_end ovy323_219d630

	thumb_func_start ovy323_219d64c
ovy323_219d64c: ; 0x0219D64C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
_0219D652:
	lsl r4, r6, #3
	add r0, r5, r4
	add r0, #0x84
	ldrb r0, [r0]
	ldr r7, [r5, #0x2c]
	cmp r0, #0
	beq _0219D688
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D688
	add r0, r5, r4
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02048244
	add r1, r5, r4
	add r1, #0x84
	mov r0, #0
	strb r0, [r1]
_0219D688:
	add r6, r6, #1
	cmp r6, #9
	blt _0219D652
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy323_219d64c

	thumb_func_start ovy323_219d694
ovy323_219d694: ; 0x0219D694
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _0219D6F0 ; =0x0219EA6C
	add r6, r0, #0
	mov r4, #0
_0219D69E:
	lsl r5, r4, #3
	add r3, r7, r5
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	str r0, [sp]
	ldrh r0, [r3, #2]
	ldrb r3, [r3, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r0, [r7, r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020480C0
	add r1, r6, r5
	add r1, #0x80
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #7
	blt _0219D69E
	mov r0, #0
	mov r1, #0xe
	mov r2, #0
	mov r3, #0xa1
	mov r4, #0xa1
	bl sub_02024CC0
	mov r0, #0
	mov r1, #0x20
	mov r2, #0xe
	mov r3, #0
	str r4, [sp]
	bl sub_02024D00
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219D6F0: .word 0x0219EA6C
	thumb_func_end ovy323_219d694

	thumb_func_start ovy323_219d6f4
ovy323_219d6f4: ; 0x0219D6F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D6FA:
	lsl r0, r4, #3
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #7
	blt _0219D6FA
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy323_219d6f4

	thumb_func_start ovy323_219d710
ovy323_219d710: ; 0x0219D710
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	lsl r4, r1, #3
	add r6, #0x80
	ldr r0, [r6, r4]
	bl sub_0204826C
	ldr r0, [r6, r4]
	bl sub_020484D4
	bl sub_02044F90
	add r0, r5, r4
	mov r1, #1
	add r0, #0x84
	strb r1, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy323_219d710

	thumb_func_start ovy323_219d734
ovy323_219d734: ; 0x0219D734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #7
	str r1, [sp, #8]
	str r0, [sp, #0x10]
	bl sub_0200C1F0
	mov r0, #0xa1
	bl sub_020105E0
	mov r7, #0
_0219D750:
	mov r0, #0x30
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r2, r7, #0
	add r6, r0, r1
	add r0, r6, #0
	add r0, #0xe8
	str r7, [r0]
	ldr r0, [sp, #8]
	mov r1, #0xa1
	str r1, [sp, #0x18]
	ldr r0, [r0, #4]
	mov r1, #0xa1
	bl sub_02010644
	add r1, r6, #0
	add r1, #0xec
	str r0, [r1]
	add r0, r6, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #1
	bne _0219D846
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _0219D8AC ; =0x00000622
	ldr r3, _0219D8B0 ; =0x0219EE44
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	mov r0, #0x30
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, #0
	bl sub_020107F0
	ldr r1, [sp, #0xc]
	add r1, #0xf0
	str r0, [r1]
	mov r0, #0xc
	mov r1, #0
	bl sub_020107F0
	ldr r1, [sp, #0xc]
	add r1, #0xf4
	str r0, [r1]
	mov r0, #1
	mov r1, #0
	bl sub_020107F0
	ldr r1, [sp, #0xc]
	add r1, #0xf8
	str r0, [r1]
	mov r0, #0xa
	mov r1, #0
	bl sub_020107F0
	ldr r1, [sp, #0xc]
	add r1, #0xfc
	str r0, [r1]
	mov r0, #0xb
	str r0, [sp, #0x1c]
	mov r0, #0xb
	mov r1, #0
	bl sub_020107F0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	add r1, #0xf5
	str r0, [r2, r1]
	ldr r0, [sp, #8]
	str r1, [sp, #0x1c]
	ldr r0, [r0, #0xc]
	add r1, r7, #0
	bl sub_020111A0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	add r1, #0x73
	str r1, [sp, #0x18]
	str r0, [r2, r1]
_0219D806:
	add r0, r4, #2
	add r1, r5, #0
	bl sub_020107F0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	lsl r1, r4, #1
	add r2, r6, r1
	mov r1, #0x41
	lsl r1, r1, #2
	add r4, r4, #1
	strh r0, [r2, r1]
	cmp r4, #6
	blt _0219D806
	mov r0, #2
	add r1, r5, #0
	bl sub_020107F0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_020243F4
	add r0, r5, #0
	bl sub_0203A24C
	b _0219D850
_0219D846:
	ldr r0, [sp, #0x18]
	add r6, #0xf0
	sub r0, #0xa2
	str r0, [sp, #0x18]
	str r0, [r6]
_0219D850:
	add r7, r7, #1
	cmp r7, #8
	bge _0219D858
	b _0219D750
_0219D858:
	ldr r3, [sp, #4]
	mov r0, #0x9a
	mov r4, #0
	add r3, #0xe8
	lsl r0, r0, #2
	mov r1, #0x30
_0219D864:
	add r2, r4, #0
	ldr r5, [sp, #4]
	mul r2, r1
	add r5, r5, r2
	add r5, #0xec
	ldr r5, [r5]
	cmp r5, #1
	bne _0219D888
	ldr r5, [sp, #0x14]
	add r2, r3, r2
	lsl r6, r5, #2
	ldr r5, [sp, #4]
	add r5, r5, r6
	str r2, [r5, r0]
	ldr r2, [sp, #0x14]
	add r2, r2, #1
	str r2, [sp, #0x14]
	b _0219D89A
_0219D888:
	ldr r5, [sp, #0x10]
	add r2, r3, r2
	lsl r6, r5, #2
	ldr r5, [sp, #4]
	add r5, r5, r6
	str r2, [r5, r0]
	ldr r2, [sp, #0x10]
	sub r2, r2, #1
	str r2, [sp, #0x10]
_0219D89A:
	add r4, r4, #1
	cmp r4, #8
	blt _0219D864
	bl sub_02010600
	bl sub_0200C200
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D8AC: .word 0x00000622
_0219D8B0: .word 0x0219EE44
	thumb_func_end ovy323_219d734

	thumb_func_start ovy323_219d8b4
ovy323_219d8b4: ; 0x0219D8B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219D90C ; =0x0219E922
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219D906
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219CFB4
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219D906
	add r0, r5, #0
	mov r1, #1
	add r0, #0xcc
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xc8
	strh r4, [r0]
	str r1, [r5, #0x48]
	mov r1, #0xc8
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219CFB4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy323_219dbbc
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0219D906:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D90C: .word 0x0219E922
	thumb_func_end ovy323_219d8b4

	thumb_func_start ovy323_219d910
ovy323_219d910: ; 0x0219D910
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #1
	bne _0219D932
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219D932
	add r0, r4, #0
	mov r1, #0
	add r0, #0xcc
	add r4, #0xc8
	str r1, [r0]
	strh r1, [r4]
	b _0219D9B2
_0219D932:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x40
	tst r0, r1
	beq _0219D96C
	mov r5, #0xc8
	ldrsh r1, [r4, r5]
	cmp r1, #0
	beq _0219D9B2
	add r0, r4, #0
	bl sub_0219CFB4
	sub r0, r0, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219D9B2
	ldr r0, _0219D9B8 ; =0x00000548
	bl GFL_SndSEPlay
	ldrsh r0, [r4, r5]
	sub r0, r0, #1
_0219D966:
	add r4, #0xc8
	strh r0, [r4]
	b _0219D9B2
_0219D96C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #0x80
	tst r0, r1
	beq _0219D9A2
	mov r5, #0xc8
	ldrsh r1, [r4, r5]
	cmp r1, #3
	bge _0219D9B2
	add r0, r4, #0
	bl sub_0219CFB4
	add r0, r0, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219D9B2
	ldr r0, _0219D9B8 ; =0x00000548
	bl GFL_SndSEPlay
	ldrsh r0, [r4, r5]
	add r0, r0, #1
	b _0219D966
_0219D9A2:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219D9B2
	mov r0, #0xc8
	ldrsh r0, [r4, r0]
	pop {r3, r4, r5, pc}
_0219D9B2:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D9B8: .word 0x00000548
	thumb_func_end ovy323_219d910

	thumb_func_start ovy323_219d9bc
ovy323_219d9bc: ; 0x0219D9BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r4, #0
	bl GFL_FontCreate
	str r0, [r5, #0x24]
	mov r0, #0x20
	mov r6, #0x1e
	str r0, [sp]
	mov r0, #0xa1
	lsl r6, r6, #4
	str r0, [sp, #4]
	mov r0, #0x17
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B0B8
	add r2, r6, #0
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	sub r2, #0x7e
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x34]
	mov r0, #0x68
	mov r1, #0xa1
	bl GFL_StrBufCreate
	str r0, [r5, #0xc]
	mov r7, #0x30
	sub r6, #0xd0
_0219DA0C:
	mov r0, #0xa1
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #0
	mul r1, r7
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r6]
	cmp r4, #8
	blt _0219DA0C
	mov r0, #0xa1
	bl GFL_WordSetSystemCreateDefault
	str r0, [r5, #0x28]
	ldrh r0, [r5]
	bl sub_02021998
	str r0, [r5, #0x2c]
	ldrh r0, [r5]
	mov r2, #0x20
	mov r3, #0x20
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #0x38]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy323_219d9bc

	thumb_func_start ovy323_219da44
ovy323_219da44: ; 0x0219DA44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl GFL_TCBExMgrFree
	ldr r0, [r5, #0x34]
	bl GFL_MsgDataFree
	ldr r0, [r5, #0x2c]
	bl sub_02021A18
	ldr r0, [r5, #0x24]
	bl sub_02022DA8
	mov r6, #0x9a
	mov r4, #0
	lsl r6, r6, #2
_0219DA66:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	ldr r0, [r0, #0x28]
	bl GFL_WordSetSystemFree
	add r4, r4, #1
	cmp r4, #8
	blt _0219DA66
	ldr r0, [r5, #0x28]
	bl GFL_WordSetSystemFree
	pop {r4, r5, r6, pc}
	thumb_func_end ovy323_219da44

	thumb_func_start ovy323_219da80
ovy323_219da80: ; 0x0219DA80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _0219DB5C ; =0x000080A1
	add r5, r0, #0
	mov r0, #0x68
	bl GFL_StrBufCreate
	add r7, r0, #0
	mov r4, #0
_0219DA92:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	lsl r6, r4, #3
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x18]
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r1, [sp, #0xc]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0219DB42
	ldr r1, [sp, #0x18]
	ldr r0, [r5, #0x34]
	add r1, #0x9d
	add r2, r7, #0
	str r1, [sp, #0x18]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x14]
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0]
	bl sub_020484F4
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #4
	bl sub_02021C7C
	add r1, r5, r6
	add r1, #0x84
	mov r0, #1
	strb r0, [r1]
	mov r1, #0x9a
	ldr r2, [sp, #0xc]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #8]
	add r2, r7, #0
	add r1, #0x2a
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	add r0, r5, r6
	add r0, #0x80
	ldr r0, [r0]
	bl sub_020484F4
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r3, #0x14
	bl sub_02021C7C
	add r1, r5, r6
	add r1, #0x84
	mov r0, #1
	strb r0, [r1]
_0219DB42:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy323_219d710
	add r4, r4, #1
	cmp r4, #4
	blt _0219DA92
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219DB5C: .word 0x000080A1
	thumb_func_end ovy323_219da80

	thumb_func_start ovy323_219db60
ovy323_219db60: ; 0x0219DB60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	add r4, r2, #0
	add r5, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_02022888
	str r0, [sp, #0x10]
	ldr r0, [r5]
	bl sub_020484D8
	lsl r6, r0, #3
	ldr r0, [r5]
	bl sub_020484F4
	add r1, r0, #0
	lsr r2, r6, #0x1f
	add r2, r6, r2
	ldr r0, [sp, #0x28]
	str r4, [sp]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	add r0, sp, #0x28
	lsr r4, r3, #0x1f
	ldrh r0, [r0, #4]
	add r4, r3, r4
	asr r2, r2, #1
	asr r3, r4, #1
	sub r2, r2, r3
	str r0, [sp, #8]
	lsl r2, r2, #0x10
	lsl r3, r7, #0x10
	ldr r0, [sp, #0xc]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy323_219db60

	thumb_func_start ovy323_219dbbc
ovy323_219dbbc: ; 0x0219DBBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, _0219DE90 ; =0x000080A1
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x68
	add r1, r4, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	mov r0, #0x68
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl sub_02008BF0
	str r0, [sp, #0x18]
	mov r0, #0
	sub r1, r0, #1
	cmp r6, r1
	beq _0219DBF6
	mov r1, #0xc8
	ldrsh r2, [r5, r1]
	sub r1, #0xc9
	cmp r2, r1
	bne _0219DBF8
_0219DBF6:
	b _0219DC08
_0219DBF8:
	lsl r1, r6, #2
	add r2, r5, r1
	mov r1, #0x9a
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _0219DC0A
_0219DC08:
	mov r0, #1
_0219DC0A:
	cmp r0, #0
	beq _0219DC4A
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_0219D620
	b _0219DE62
_0219DC4A:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0x9a
	lsl r0, r0, #2
	add r4, r5, r0
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, #8]
	add r2, r7, #0
	add r1, #0x2a
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x24]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xd6
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0xa0
	mov r3, #8
	bl ovy323_219db60
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r1, [r4, r6]
	ldr r2, [sp, #0x18]
	ldr r1, [r1, #8]
	ldr r3, _0219DE94 ; =0x0219EB68
	lsl r1, r1, #2
	lsl r2, r2, #1
	add r1, r3, r1
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0x34]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r4, r6]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x28]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xd6
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0xa8
	mov r3, #6
	bl ovy323_219db60
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x34]
	mov r1, #0xaf
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_020484F4
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r3, #0
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	mov r1, #0xad
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r6]
	ldr r0, [r5, #0x28]
	ldr r2, [r2, #0x14]
	mov r1, #0
	lsr r2, r2, #0x18
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0x7d
	lsl r2, r2, #4
	add r2, r3, r2
	mov r3, #4
	bl sub_0202451C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r6]
	ldr r0, [r5, #0x28]
	ldr r2, [r2, #0x14]
	mov r1, #1
	lsr r2, r2, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0202451C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r6]
	ldr r0, [r5, #0x28]
	ldr r2, [r2, #0x14]
	mov r1, #2
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0202451C
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x1c]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #0x60
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	mov r1, #0xae
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r6]
	ldr r0, [r5, #0x28]
	ldr r2, [r2, #0x18]
	mov r1, #0
	lsr r2, r2, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0202451C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r6]
	ldr r0, [r5, #0x28]
	ldr r2, [r2, #0x18]
	mov r1, #1
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0202451C
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x1c]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #0xb8
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02021C7C
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #1
	strb r0, [r1]
	ldr r2, [r4, r6]
	add r0, r5, #0
	ldr r2, [r2, #0x10]
	mov r1, #0
	lsl r3, r2, #1
	ldr r2, _0219DE98 ; =0x0219E90A
	ldrsh r2, [r2, r3]
	bl ovy323_219d630
	ldr r0, [r4, r6]
	ldr r0, [r0, #0x2c]
	cmp r0, #1
	bne _0219DE58
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	b _0219DE5E
_0219DE58:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
_0219DE5E:
	bl sub_0219D620
_0219DE62:
	mov r0, #1
	str r0, [r5, #0x48]
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #4
	bl ovy323_219d710
	add r0, r5, #0
	mov r1, #5
	bl ovy323_219d710
	add r0, r5, #0
	mov r1, #6
	bl ovy323_219d710
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DE90: .word 0x000080A1
_0219DE94: .word 0x0219EB68
_0219DE98: .word 0x0219E90A
	thumb_func_end ovy323_219dbbc

	thumb_func_start ovy323_219de9c
ovy323_219de9c: ; 0x0219DE9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	mov r4, #0
	lsl r7, r0, #2
_0219DEA8:
	ldr r0, [sp]
	cmp r4, r0
	bne _0219DEBA
	add r0, r5, r7
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020352B0
	b _0219DED4
_0219DEBA:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xd0
	mov r1, #1
	ldr r0, [r0]
	lsl r1, r1, #0xe
	bl sub_020352B8
	add r0, r5, r6
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02035198
_0219DED4:
	add r4, r4, #1
	cmp r4, #4
	blt _0219DEA8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy323_219de9c

	thumb_func_start ovy323_219dedc
ovy323_219dedc: ; 0x0219DEDC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0xc8
	mov r2, #0xca
	ldrsh r1, [r4, r5]
	ldrsh r2, [r4, r2]
	cmp r2, r1
	beq _0219DF08
	cmp r1, #0
	blt _0219DF08
	mov r2, #1
	str r2, [r4, #0x48]
	bl sub_0219CFB4
	add r1, r0, #0
	add r0, r4, #0
	bl ovy323_219dbbc
	ldrsh r1, [r4, r5]
	add r0, r4, #0
	bl ovy323_219de9c
_0219DF08:
	mov r0, #0xc8
	ldrsh r0, [r4, r0]
	add r4, #0xca
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy323_219dedc

	thumb_func_start ovy323_219df14
ovy323_219df14: ; 0x0219DF14
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r3, _0219DFA8 ; =0x0219EAA4
	add r5, r0, #0
	ldrb r0, [r3, #7]
	add r6, r1, #0
	ldrb r1, [r3, #4]
	str r0, [sp]
	ldrh r0, [r3, #2]
	ldrb r2, [r3, #5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r0, [r3]
	ldrb r3, [r3, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020480C0
	add r1, r5, #0
	add r4, r0, #0
	add r1, #0xb8
	str r4, [r1]
	mov r1, #2
	mov r2, #0x20
	mov r3, #0xe
	bl sub_02024E80
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0xff
	bl sub_0204713C
	ldr r0, [r5, #0x34]
	ldr r2, [r5, #0xc]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	bl sub_02017BCC
	ldr r1, [r5, #0x24]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x38]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xa1
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r3, [r5, #0xc]
	add r0, r4, #0
	bl sub_02022268
	str r0, [r5, #0x30]
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219DFA8: .word 0x0219EAA4
	thumb_func_end ovy323_219df14

	thumb_func_start ovy323_219dfac
ovy323_219dfac: ; 0x0219DFAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r3, _0219E244 ; =0x0219EAAC
	add r5, r0, #0
	ldrb r0, [r3, #7]
	add r4, r1, #0
	ldrb r1, [r3, #4]
	str r0, [sp]
	ldrh r0, [r3, #2]
	ldrb r2, [r3, #5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r0, [r3]
	ldrb r3, [r3, #6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020480C0
	add r2, r5, #0
	add r2, #0xc0
	add r1, r0, #0
	str r1, [r2]
	str r0, [sp, #0x2c]
	mov r1, #2
	mov r2, #0x20
	mov r3, #0xe
	bl sub_02024E80
	ldr r0, [sp, #0x2c]
	bl sub_020484F4
	mov r1, #0xff
	bl sub_0204713C
	ldr r0, [r5, #0x34]
	mov r1, #0xa5
	bl sub_0204898C
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r6, [r5, #0x2c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	mov r2, #4
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02021C54
	add r1, r5, #0
	add r1, #0xc4
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	mov r1, #0xa6
	bl sub_0204898C
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r6, [r5, #0x2c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r2, #4
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #0x38
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02021C54
	add r1, r5, #0
	add r1, #0xc4
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x34]
	mov r1, #0xa7
	bl sub_0204898C
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r6, [r5, #0x2c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	mov r2, #4
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #0x50
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02021C54
	add r1, r5, #0
	add r1, #0xc4
	mov r0, #1
	strb r0, [r1]
	lsl r0, r4, #2
	str r0, [sp, #0xc]
	mov r0, #0x9a
	lsl r0, r0, #2
	add r6, r5, r0
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x34]
	ldr r1, [r6, r1]
	ldr r1, [r1, #8]
	bl sub_0204898C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r7, [r5, #0x2c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #8
	str r0, [sp]
	ldr r0, [r5, #0x24]
	mov r3, #0x60
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02021C54
	add r1, r5, #0
	add r1, #0xc4
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r0]
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0219E152
	ldr r0, [r5, #0x34]
	ldr r7, [r1, #0xc]
	mov r1, #0xaa
	bl sub_0204898C
	str r0, [sp, #0x18]
	mov r0, #0x9a
	lsl r0, r0, #2
	add r6, r5, r0
	add r0, r7, #0
	mov r1, #0xa
	lsl r4, r4, #2
	blx sub_0208D65C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, r4]
	mov r1, #3
	ldr r0, [r0, #0x28]
	mov r3, #3
	bl sub_0202451C
	cmp r7, #0
	blt _0219E110
	add r0, r7, #0
	b _0219E112
_0219E110:
	neg r0, r7
_0219E112:
	mov r1, #0xa
	blx sub_0208D65C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, r4]
	add r2, r1, #0
	ldr r0, [r0, #0x28]
	mov r1, #4
	mov r3, #1
	bl sub_0202451C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, r4]
	mov r1, #2
	ldr r0, [r0, #0x28]
	add r2, r7, #0
	mov r3, #4
	bl sub_0202451C
	ldr r0, [r6, r4]
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #0x28]
	ldr r2, [sp, #0x18]
	bl GFL_WordSetFormatStrbuf
	b _0219E164
_0219E152:
	ldr r0, [r5, #0x34]
	mov r1, #0xb0
	bl sub_0204898C
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #0x18]
	bl sub_02048580
_0219E164:
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x24]
	mov r2, #0
	mov r4, #0
	bl sub_02022888
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r6, [r5, #0x2c]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0xd8
	str r0, [sp]
	ldr r0, [r5, #0x24]
	sub r2, r2, r7
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	asr r2, r2, #0x10
	mov r3, #0x38
	bl sub_02021C54
	add r0, r5, #0
	mov r1, #1
	add r0, #0xc4
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r5, r0
	str r0, [sp, #0x10]
_0219E1A6:
	mov r0, #0x9a
	ldr r1, [sp, #0x10]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r4, #1
	add r0, r1, r0
	ldrh r1, [r0, #0x1c]
	cmp r1, #0
	beq _0219E204
	ldr r0, _0219E248 ; =0x0209A434
	ldr r0, [r0]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r1, _0219E24C ; =0x0219E988
	str r0, [sp, #0x14]
	lsl r0, r4, #3
	str r0, [sp, #0x30]
	add r7, r1, r0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_020484F4
	ldr r3, _0219E24C ; =0x0219E988
	ldr r2, [sp, #0x30]
	str r6, [sp]
	ldr r2, [r3, r2]
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	ldr r3, [r7, #4]
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x14]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C54
	add r1, r5, #0
	add r1, #0xc4
	mov r0, #1
	strb r0, [r1]
	add r0, r6, #0
	bl GFL_StrBufFree
_0219E204:
	add r4, r4, #1
	cmp r4, #6
	blt _0219E1A6
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x28]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x2c]
	bl sub_02048244
	ldr r0, [sp, #0x2c]
	bl sub_0204826C
	ldr r0, [sp, #0x2c]
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0219E244: .word 0x0219EAAC
_0219E248: .word 0x0209A434
_0219E24C: .word 0x0219E988
	thumb_func_end ovy323_219dfac

	thumb_func_start ovy323_219e250
ovy323_219e250: ; 0x0219E250
	push {r3, lr}
	ldr r1, [r0, #0x3c]
	lsl r2, r1, #2
	ldr r1, _0219E260 ; =0x0219EE00
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0219E260: .word 0x0219EE00
	thumb_func_end ovy323_219e250

	thumb_func_start ovy323_219e264
ovy323_219e264: ; 0x0219E264
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #1
	str r4, [r5, #0x48]
	mov r0, #8
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0xa1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl GFL_FadeScreenSet
	str r4, [r5, #0x3c]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy323_219e264

	thumb_func_start ovy323_219e28c
ovy323_219e28c: ; 0x0219E28C
	push {r4, lr}
	add r4, r0, #0
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219E29C
	mov r0, #2
	str r0, [r4, #0x3c]
_0219E29C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy323_219e28c
_0219E2A0:
	.byte 0x03, 0x21, 0xC1, 0x63, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy323_219e2a8
ovy323_219e2a8: ; 0x0219E2A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xc8
	ldrsh r4, [r5, r0]
	cmp r4, #0
	blt _0219E2D0
	mov r6, #0x9a
	lsl r6, r6, #2
_0219E2B8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219CFB4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _0219E2D0
	sub r4, r4, #1
	bpl _0219E2B8
_0219E2D0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy323_219e2a8

	thumb_func_start ovy323_219e2d4
ovy323_219e2d4: ; 0x0219E2D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	mov r4, #0
	mvn r4, r4
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219E2EA
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219E2EA:
	ldr r0, [r5, #0x14]
	bl sub_02199C58
	cmp r0, #0
	bne _0219E30C
	add r0, r5, #0
	bl ovy323_219d8b4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0219E30C
	add r0, r5, #0
	bl ovy323_219d910
	add r4, r0, #0
_0219E30C:
	add r0, r5, #0
	bl ovy323_219dedc
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219E33E
	ldr r0, _0219E3C0 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #0xc8
	ldrsh r0, [r5, r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020352C0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_02199C68
	mov r0, #4
	str r0, [r5, #0x3c]
	b _0219E3BA
_0219E33E:
	ldr r0, [r5, #0x14]
	bl sub_02199C08
	cmp r0, #1
	ldr r0, [r5, #0x14]
	bne _0219E35E
	mov r1, #0
	bl sub_02199C68
	mov r0, #0xd
	str r0, [r5, #0x3c]
	ldr r0, [r5, #8]
	mov r1, #8
	ldr r0, [r0, #8]
	strh r1, [r0]
	b _0219E3BA
_0219E35E:
	bl sub_02199C08
	cmp r0, #4
	beq _0219E370
	ldr r0, [r5, #0x14]
	bl sub_02199C08
	cmp r0, #5
	bne _0219E3BA
_0219E370:
	add r0, r5, #0
	add r0, #0xe0
	ldr r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	add r0, r5, #0
	bl ovy323_219e2a8
	add r1, r5, #0
	add r1, #0xc8
	strh r0, [r1]
	add r0, r5, #0
	bl ovy323_219da80
	mov r1, #0xc8
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219CFB4
	add r1, r0, #0
	add r0, r5, #0
	bl ovy323_219dbbc
	add r0, r5, #0
	bl ovy323_219d040
	add r0, r5, #0
	bl ovy323_219cfc0
	add r0, r5, #0
	add r5, #0xe0
	ldr r1, [r5]
	bl ovy323_219d504
_0219E3BA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0219E3C0: .word 0x0000054C
	thumb_func_end ovy323_219e2d4

	thumb_func_start ovy323_219e3c4
ovy323_219e3c4: ; 0x0219E3C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xc8
	ldrsh r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_020352CC
	cmp r0, #0
	beq _0219E404
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0219E3F4
	add r0, r4, #0
	mov r1, #0x94
	bl ovy323_219df14
	mov r0, #5
	str r0, [r4, #0x3c]
	mov r0, #7
	b _0219E402
_0219E3F4:
	add r0, r4, #0
	mov r1, #0x95
	bl ovy323_219df14
	mov r0, #5
	str r0, [r4, #0x3c]
	mov r0, #9
_0219E402:
	str r0, [r4, #0x40]
_0219E404:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy323_219e3c4

	thumb_func_start ovy323_219e408
ovy323_219e408: ; 0x0219E408
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_020223B4
	cmp r0, #0
	beq _0219E426
	cmp r0, #2
	bne _0219E440
	ldr r0, [r4, #0x30]
	bl sub_020223CC
	ldr r0, [r4, #0x40]
	str r0, [r4, #0x3c]
	b _0219E440
_0219E426:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	bne _0219E438
	bl sub_0203DA2C
	cmp r0, #0
	beq _0219E440
_0219E438:
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_020223E0
_0219E440:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy323_219e408

	thumb_func_start ovy323_219e444
ovy323_219e444: ; 0x0219E444
	push {r4, lr}
	mov r1, #0x96
	add r4, r0, #0
	bl ovy323_219df14
	mov r0, #5
	str r0, [r4, #0x3c]
	mov r0, #0xb
	str r0, [r4, #0x40]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e444

	thumb_func_start ovy323_219e45c
ovy323_219e45c: ; 0x0219E45C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	mov r4, #0
	mvn r4, r4
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219E4AA
	ldr r0, [r5, #0x50]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, #0x50]
	bl sub_0219D42C
	mov r0, #0
	str r0, [r5, #0x50]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #2
	bl sub_02024EEC
	add r0, r5, #0
	add r0, #0xb8
	ldr r6, [r0]
	add r0, r6, #0
	bl sub_020484B4
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	add r5, #0xb8
	ldr r0, [r5]
	bl sub_02048210
_0219E4AA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy323_219e45c

	thumb_func_start ovy323_219e4b0
ovy323_219e4b0: ; 0x0219E4B0
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x34]
	mov r3, #0
	bl ovy323_219d388
	str r0, [r4, #0x50]
	mov r0, #8
	str r0, [r4, #0x3c]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e4b0

	thumb_func_start ovy323_219e4cc
ovy323_219e4cc: ; 0x0219E4CC
	push {r4, lr}
	add r4, r0, #0
	bl ovy323_219e45c
	cmp r0, #0
	blt _0219E524
	bne _0219E4FC
	mov r0, #0xd
	str r0, [r4, #0x3c]
	mov r1, #0xc8
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl sub_0219CFB4
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	strh r1, [r0]
	b _0219E524
_0219E4FC:
	cmp r0, #1
	bne _0219E50E
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02199C68
	mov r0, #0xf
	str r0, [r4, #0x3c]
	b _0219E524
_0219E50E:
	mov r0, #2
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02199C68
	mov r1, #0xc8
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl ovy323_219de9c
_0219E524:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy323_219e4cc

	thumb_func_start ovy323_219e528
ovy323_219e528: ; 0x0219E528
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x34]
	mov r3, #1
	bl ovy323_219d388
	str r0, [r4, #0x50]
	mov r0, #0xa
	str r0, [r4, #0x3c]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e528

	thumb_func_start ovy323_219e544
ovy323_219e544: ; 0x0219E544
	push {r4, lr}
	add r4, r0, #0
	bl ovy323_219e45c
	cmp r0, #0
	blt _0219E57E
	bne _0219E558
	mov r0, #6
_0219E554:
	str r0, [r4, #0x3c]
	b _0219E57E
_0219E558:
	cmp r0, #1
	bne _0219E568
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02199C68
	mov r0, #0xf
	b _0219E554
_0219E568:
	mov r0, #2
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02199C68
	mov r1, #0xc8
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl ovy323_219de9c
_0219E57E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e544

	thumb_func_start ovy323_219e584
ovy323_219e584: ; 0x0219E584
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4]
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x34]
	mov r3, #2
	bl ovy323_219d388
	str r0, [r4, #0x50]
	mov r0, #0xc
	str r0, [r4, #0x3c]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e584

	thumb_func_start ovy323_219e5a0
ovy323_219e5a0: ; 0x0219E5A0
	push {r4, lr}
	add r4, r0, #0
	bl ovy323_219e45c
	cmp r0, #0
	blt _0219E5E6
	bne _0219E5D0
	mov r0, #0xd
	str r0, [r4, #0x3c]
	mov r1, #0xc8
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl sub_0219CFB4
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	strh r1, [r0]
	b _0219E5E6
_0219E5D0:
	mov r0, #2
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_02199C68
	mov r1, #0xc8
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	bl ovy323_219de9c
_0219E5E6:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e5a0

	thumb_func_start ovy323_219e5ec
ovy323_219e5ec: ; 0x0219E5EC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa1
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl GFL_FadeScreenSet
	mov r0, #0xe
	str r0, [r4, #0x3c]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy323_219e5ec

	thumb_func_start ovy323_219e614
ovy323_219e614: ; 0x0219E614
	push {r3, lr}
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	beq _0219E622
	mov r0, #1
	pop {r3, pc}
_0219E622:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy323_219e614

	thumb_func_start ovy323_219e628
ovy323_219e628: ; 0x0219E628
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xc8
	ldrsh r1, [r4, r1]
	bl sub_0219CFB4
	add r1, r0, #0
	add r0, r4, #0
	bl ovy323_219dfac
	add r0, r4, #0
	mov r1, #0
	bl ovy323_219e6a0
	mov r0, #0x10
	str r0, [r4, #0x3c]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy323_219e628

	thumb_func_start ovy323_219e64c
ovy323_219e64c: ; 0x0219E64C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl sub_02199C08
	cmp r0, #1
	bne _0219E69C
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r1, #2
	mov r6, #2
	bl sub_02024EEC
	add r0, r5, #0
	add r0, #0xc0
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_02048210
	add r0, r5, #0
	mov r1, #1
	bl ovy323_219e6a0
	mov r1, #0xc8
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	bl ovy323_219de9c
	str r6, [r5, #0x3c]
_0219E69C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy323_219e64c

	thumb_func_start ovy323_219e6a0
ovy323_219e6a0: ; 0x0219E6A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0219E6B4
	mov r4, #0
_0219E6B4:
	ldr r0, [r5, #0x14]
	mov r1, #4
	add r2, r4, #0
	bl sub_02199D18
	ldr r0, [r5, #0x14]
	mov r1, #5
	add r2, r4, #0
	bl sub_02199D18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy323_219e6a0

	thumb_func_start ovy323_219e6cc
ovy323_219e6cc: ; 0x0219E6CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0219E750 ; =0x0000013F
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _0219E754 ; =0x0219EE58
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _0219E758 ; =0x04000050
	ldr r0, _0219E75C ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _0219E760 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _0219E764 ; =0x0219EC38
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
	bl ovy323_219e7f4
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy323_219e898
	ldr r0, _0219E768 ; =ovy323_219e7e0
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E750: .word 0x0000013F
_0219E754: .word 0x0219EE58
_0219E758: .word 0x04000050
_0219E75C: .word 0x04001050
_0219E760: .word 0xFFFF1FFF
_0219E764: .word 0x0219EC38
_0219E768: .word ovy323_219e7e0
	thumb_func_end ovy323_219e6cc

	thumb_func_start ovy323_219e76c
ovy323_219e76c: ; 0x0219E76C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy323_219e8d8
	add r0, r4, #0
	bl ovy323_219e854
	bl sub_020232D8
	ldr r5, _0219E7B4 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _0219E7B8 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _0219E7BC ; =0xFFFF1FFF
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
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_0219E7B4: .word 0x04000050
_0219E7B8: .word 0x04001050
_0219E7BC: .word 0xFFFF1FFF
	thumb_func_end ovy323_219e76c

	thumb_func_start ovy323_219e7c0
ovy323_219e7c0: ; 0x0219E7C0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0219E8F4
	add r0, r4, #0
	bl sub_0219E88C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e7c0

	thumb_func_start sub_0219E7D4
sub_0219E7D4: ; 0x0219E7D4
	ldr r3, _0219E7DC ; =sub_0219E904
	add r0, r0, #4
	bx r3
	nop
_0219E7DC: .word sub_0219E904
	thumb_func_end sub_0219E7D4

	thumb_func_start ovy323_219e7e0
ovy323_219e7e0: ; 0x0219E7E0
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0219E890
	add r0, r4, #4
	bl sub_0219E8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy323_219e7e0

	thumb_func_start ovy323_219e7f4
ovy323_219e7f4: ; 0x0219E7F4
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
	ldr r0, _0219E84C ; =0x0219EC0C
	bl sub_02044710
	ldr r7, _0219E850 ; =0x0219EC68
_0219E816:
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
	blo _0219E816
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E84C: .word 0x0219EC0C
_0219E850: .word 0x0219EC68
	thumb_func_end ovy323_219e7f4

	thumb_func_start ovy323_219e854
ovy323_219e854: ; 0x0219E854
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0219E888 ; =0x0219EC68
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_0219E85E:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _0219E85E
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E888: .word 0x0219EC68
	thumb_func_end ovy323_219e854

	thumb_func_start sub_0219E88C
sub_0219E88C: ; 0x0219E88C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219E88C

	thumb_func_start sub_0219E890
sub_0219E890: ; 0x0219E890
	ldr r3, _0219E894 ; =sub_02045A5C
	bx r3
	.align 2, 0
_0219E894: .word sub_02045A5C
	thumb_func_end sub_0219E890

	thumb_func_start ovy323_219e898
ovy323_219e898: ; 0x0219E898
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _0219E8D4 ; =0x0219EC1C
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
_0219E8D4: .word 0x0219EC1C
	thumb_func_end ovy323_219e898

	thumb_func_start ovy323_219e8d8
ovy323_219e8d8: ; 0x0219E8D8
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
	thumb_func_end ovy323_219e8d8

	thumb_func_start sub_0219E8F4
sub_0219E8F4: ; 0x0219E8F4
	ldr r3, _0219E8F8 ; =sub_0204B794
	bx r3
	.align 2, 0
_0219E8F8: .word sub_0204B794
	thumb_func_end sub_0219E8F4

	thumb_func_start sub_0219E8FC
sub_0219E8FC: ; 0x0219E8FC
	ldr r3, _0219E900 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_0219E900: .word sub_0204B7C8
	thumb_func_end sub_0219E8FC

	thumb_func_start sub_0219E904
sub_0219E904: ; 0x0219E904
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_0219E904
_0219E908:
	.byte 0xF0, 0x98, 0x0B, 0x00, 0x0A, 0x00, 0x0C, 0x00
	.byte 0x0C, 0x00, 0x0E, 0x14, 0x0E, 0x3C, 0x0E, 0x64, 0x0E, 0x8C, 0xAD, 0x00, 0xAE, 0x00, 0xAF, 0x00
	.byte 0xAF, 0x00, 0x00, 0x28, 0x00, 0xFF, 0x00, 0x50, 0x00, 0xFF, 0x00, 0x78, 0x00, 0xFF, 0x00, 0xA0
	.byte 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
	.byte 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x00, 0x00, 0x00
	.byte 0x0B, 0x0B, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04
	.byte 0x04, 0x05, 0x05, 0x05, 0x06, 0x06, 0x06, 0x07, 0x07, 0x07, 0x07, 0x08, 0x08, 0x08, 0x09, 0x09
	.byte 0x09, 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x48, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x90, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x01, 0x00, 0x25, 0x00, 0x01
	.byte 0x00, 0x26, 0x00, 0x01, 0x00, 0x27, 0x00, 0x01, 0x00, 0x28, 0x00, 0x01, 0x00, 0x29, 0x00, 0x01
	.byte 0x00, 0x2A, 0x00, 0x01, 0x00, 0x2B, 0x00, 0x01, 0x00, 0x2C, 0x00, 0x01, 0x00, 0x2D, 0x00, 0x01
	.byte 0x00, 0x2E, 0x00, 0x01, 0x00, 0x2F, 0x00, 0x01, 0x00, 0x30, 0x00, 0x01, 0xFF, 0x00, 0x00, 0x00
	.byte 0x01, 0x40, 0x00, 0x00, 0x01, 0x41, 0x00, 0x00, 0x01, 0x43, 0x00, 0x00, 0x01, 0x44, 0x00, 0x00
	.byte 0x01, 0x45, 0x00, 0x00, 0x01, 0x46, 0x00, 0x00, 0x01, 0x47, 0x00, 0x00, 0x01, 0x48, 0x00, 0x00
	.byte 0x01, 0x49, 0x00, 0x00, 0x01, 0x4A, 0x00, 0x00, 0x01, 0x4B, 0x00, 0x00, 0x01, 0x4C, 0x00, 0x00
	.byte 0x01, 0x4D, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x32, 0x00, 0x00, 0x01, 0x33, 0x00, 0x00
	.byte 0x01, 0x34, 0x00, 0x00, 0x01, 0x35, 0x00, 0x00, 0x01, 0x36, 0x00, 0x00, 0x01, 0x37, 0x00, 0x00
	.byte 0x01, 0x38, 0x00, 0x00, 0x01, 0x39, 0x00, 0x00, 0x01, 0x3A, 0x00, 0x00, 0x01, 0x3B, 0x00, 0x00
	.byte 0x01, 0x3C, 0x00, 0x00, 0x01, 0x3D, 0x00, 0x00, 0x01, 0x3E, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x81, 0xCE, 0x19, 0x02, 0xC9, 0xD0, 0x19, 0x02, 0x5D, 0xD0, 0x19, 0x02, 0x02, 0x00, 0x0D, 0x00
	.byte 0x05, 0x00, 0x19, 0x05, 0x02, 0x00, 0x0D, 0x00, 0x05, 0x05, 0x19, 0x05, 0x02, 0x00, 0x0D, 0x00
	.byte 0x05, 0x0A, 0x19, 0x05, 0x02, 0x00, 0x0D, 0x00, 0x05, 0x0F, 0x19, 0x05, 0x04, 0x00, 0x0E, 0x00
	.byte 0x03, 0x0D, 0x1A, 0x03, 0x04, 0x00, 0x0E, 0x00, 0x03, 0x10, 0x1A, 0x05, 0x04, 0x00, 0x0E, 0x00
	.byte 0x02, 0x16, 0x1C, 0x02, 0x00, 0x00, 0x0F, 0x00, 0x02, 0x01, 0x1C, 0x04, 0x00, 0x00, 0x0F, 0x00
	.byte 0x02, 0x02, 0x1C, 0x10, 0xE8, 0xED, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xF4, 0xED, 0x19, 0x02, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xED, 0x19, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xA8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0xC8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB1, 0x00, 0xDA, 0x00, 0xB2, 0x00, 0xDB, 0x00
	.byte 0xB3, 0x00, 0xDC, 0x00, 0xB4, 0x00, 0xDD, 0x00, 0xB5, 0x00, 0xDE, 0x00, 0xB6, 0x00, 0xDF, 0x00
	.byte 0xB7, 0x00, 0xE0, 0x00, 0xB8, 0x00, 0xE1, 0x00, 0xB9, 0x00, 0xE2, 0x00, 0xBA, 0x00, 0xE3, 0x00
	.byte 0xBB, 0x00, 0xE4, 0x00, 0xBC, 0x00, 0xE5, 0x00, 0xBD, 0x00, 0xE6, 0x00, 0xBE, 0x00, 0xE7, 0x00
	.byte 0xBF, 0x00, 0xE8, 0x00, 0xC0, 0x00, 0xE9, 0x00, 0xC1, 0x00, 0xEA, 0x00, 0xC2, 0x00, 0xEB, 0x00
	.byte 0xC3, 0x00, 0xEC, 0x00, 0xC4, 0x00, 0xED, 0x00, 0xC5, 0x00, 0xEE, 0x00, 0xC6, 0x00, 0xEF, 0x00
	.byte 0xC7, 0x00, 0xF0, 0x00, 0xC8, 0x00, 0xF1, 0x00, 0xC9, 0x00, 0xF2, 0x00, 0xCA, 0x00, 0xF3, 0x00
	.byte 0xCB, 0x00, 0xF4, 0x00, 0xCC, 0x00, 0xF5, 0x00, 0xCD, 0x00, 0xF6, 0x00, 0xCE, 0x00, 0xF7, 0x00
	.byte 0xCF, 0x00, 0xF8, 0x00, 0xD0, 0x00, 0xF9, 0x00, 0xD1, 0x00, 0xFA, 0x00, 0xD2, 0x00, 0xFB, 0x00
	.byte 0xD3, 0x00, 0xFC, 0x00, 0xD4, 0x00, 0xFD, 0x00, 0xD5, 0x00, 0xFE, 0x00, 0xD6, 0x00, 0xFF, 0x00
	.byte 0xD7, 0x00, 0x00, 0x01, 0xD8, 0x00, 0x01, 0x01, 0xD9, 0x00, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x97, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x9A, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00
	.byte 0x65, 0xE2, 0x19, 0x02, 0x8D, 0xE2, 0x19, 0x02, 0xA1, 0xE2, 0x19, 0x02, 0xD5, 0xE2, 0x19, 0x02
	.byte 0xC5, 0xE3, 0x19, 0x02, 0x09, 0xE4, 0x19, 0x02, 0x45, 0xE4, 0x19, 0x02, 0xB1, 0xE4, 0x19, 0x02
	.byte 0xCD, 0xE4, 0x19, 0x02, 0x29, 0xE5, 0x19, 0x02, 0x45, 0xE5, 0x19, 0x02, 0x85, 0xE5, 0x19, 0x02
	.byte 0xA1, 0xE5, 0x19, 0x02, 0xED, 0xE5, 0x19, 0x02, 0x15, 0xE6, 0x19, 0x02, 0x29, 0xE6, 0x19, 0x02
	.byte 0x4D, 0xE6, 0x19, 0x02, 0x70, 0x6B, 0x77, 0x64, 0x5F, 0x73, 0x65, 0x6C, 0x65, 0x63, 0x74, 0x73
	.byte 0x63, 0x72, 0x65, 0x65, 0x6E, 0x2E, 0x63, 0x00, 0x70, 0x6B, 0x77, 0x64, 0x5F, 0x73, 0x65, 0x6C
	.byte 0x65, 0x63, 0x74, 0x73, 0x63, 0x72, 0x65, 0x65, 0x6E, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69
	.byte 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219E908
