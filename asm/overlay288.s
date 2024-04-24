    .include "macros/function.inc"
	.include "overlay288.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy288_21f4440
ovy288_21f4440: ; 0x021F4440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x59
	lsl r6, r6, #2
	add r7, r0, #0
	str r6, [sp]
	mov r1, #0xbf
	ldrh r0, [r7, #4]
	ldr r3, _021F454C ; =0x021F7230
	lsl r1, r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	add r5, r0, #0
	bl sub_021E00AC
	mov r3, #0x64
	str r3, [sp, #4]
	ldr r1, _021F4550 ; =ovy288_21f4554
	add r2, r5, #0
	mov r3, #0x64
	bl sub_0203A614
	str r7, [r5]
	bl sub_021E00B8
	str r0, [r5, #8]
	mov r0, #0x64
	mov r4, #0
	add r0, #0xdc
	str r4, [r5, r0]
	mov r0, #0x64
	add r0, #0xe0
	str r4, [r5, r0]
	mov r0, #0x64
	sub r1, r4, #2
	add r0, #0xe4
	str r1, [r5, r0]
	mov r0, #0x64
	add r0, #0xe8
	str r4, [r5, r0]
	mov r0, #0x64
	add r0, #0xec
	str r4, [r5, r0]
	mov r0, #0x64
	add r0, #0xf0
	str r4, [r5, r0]
	mov r0, #0x64
	add r0, #0xf4
	str r4, [r5, r0]
	mov r0, #0x64
	add r0, #0xf8
	str r4, [r5, r0]
	ldr r0, [sp, #4]
	add r0, #0xfc
	str r4, [r5, r0]
	str r4, [r5, r6]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [r7, #0xc]
	add r0, #8
	str r1, [r5, r0]
	add r0, r6, #0
	add r0, #0xc
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x18
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0x1c
	str r4, [r5, r0]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl sub_0201FDF8
	add r1, r6, #0
	add r1, #0x20
	str r0, [r5, r1]
	add r0, r6, #0
	add r0, #0x24
	str r4, [r5, r0]
	add r1, r4, #0
	add r6, #0x28
_021F44E6:
	lsl r0, r4, #1
	add r0, r5, r0
	add r4, r4, #1
	strh r1, [r0, r6]
	cmp r4, #2
	blt _021F44E6
	mov r0, #0
_021F44F4:
	lsl r2, r1, #3
	add r2, r5, r2
	add r1, r1, #1
	str r0, [r2, #0x14]
	cmp r1, #0xe
	blt _021F44F4
	mov r2, #0
	mvn r2, r2
_021F4504:
	lsl r1, r0, #2
	add r1, r5, r1
	add r1, #0xe8
	add r0, r0, #1
	str r2, [r1]
	cmp r0, #4
	blt _021F4504
	mov r3, #0
	mov r0, #0x13
	sub r2, r3, #1
	lsl r0, r0, #4
_021F451A:
	lsl r1, r3, #2
	add r1, r5, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #4
	blt _021F451A
	mov r2, #0
	sub r1, r2, #1
_021F452A:
	lsl r0, r2, #2
	add r0, r5, r0
	add r0, #0xf8
	add r2, r2, #1
	str r1, [r0]
	cmp r2, #0xe
	blt _021F452A
	mov r0, #0x19
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy288_21f465c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F454C: .word 0x021F7230
_021F4550: .word ovy288_21f4554
	thumb_func_end ovy288_21f4440

	thumb_func_start ovy288_21f4554
ovy288_21f4554: ; 0x021F4554
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #1
	bne _021F456A
	mov r0, #5
	ldr r1, _021F459C ; =0x00002710
	lsl r0, r0, #6
	str r1, [r4, r0]
_021F456A:
	add r0, r4, #0
	bl ovy288_21f465c
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, _021F459C ; =0x00002710
	cmp r1, r0
	bne _021F4588
	add r0, r5, #0
	add r1, r4, #0
	bl ovy288_21f45a0
	cmp r0, #1
	beq _021F459A
_021F4588:
	ldr r0, [r4, #4]
	bl sub_0203A7F4
	add r0, r4, #0
	bl ovy288_21f6434
	add r0, r4, #0
	bl ovy288_21f4a30
_021F459A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F459C: .word 0x00002710
	thumb_func_end ovy288_21f4554

	thumb_func_start ovy288_21f45a0
ovy288_21f45a0: ; 0x021F45A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021F45C4
	ldr r0, [r5]
	ldr r0, [r0, #0x18]
	cmp r0, #1
	bne _021F45C0
	ldr r0, [r5, #0x10]
	bl sub_02021C44
	b _021F45C4
_021F45C0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F45C4:
	bl GFL_FadeScreenIsFinished
	cmp r0, #0
	bne _021F45DE
	ldr r0, [r5]
	ldr r0, [r0, #0x18]
	cmp r0, #1
	bne _021F45DA
	bl sub_02027AE0
	b _021F45DE
_021F45DA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F45DE:
	add r0, r5, #0
	bl ovy288_21f6a10
	add r0, r5, #0
	bl ovy288_21f4950
	ldr r0, [r5, #4]
	bl GFL_TCBExMgrFree
	mov r4, #0
	add r7, r4, #0
_021F45F4:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021F460A
	bl GFL_MsgDataFree
	add r0, r5, r6
	add r0, #0x84
	str r7, [r0]
_021F460A:
	add r4, r4, #1
	cmp r4, #2
	blt _021F45F4
	mov r4, #0x19
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl GFL_HeapFree
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	bl ovy288_21f63e0
	ldr r0, [r5, #0x10]
	bl sub_02021A18
	ldr r0, [r5, #0xc]
	bl sub_02022DA8
	ldr r1, [r5]
	mov r0, #1
	strb r0, [r1, #6]
	sub r4, #0x44
	ldr r2, [r5, r4]
	lsl r1, r0, #0xb
	tst r1, r2
	beq _021F4648
	mov r0, #0
_021F4648:
	bl sub_0203D564
	ldr r0, [sp]
	bl GFL_TCBRemove
	add r0, r5, #0
	bl GFL_HeapFree
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f45a0

	thumb_func_start ovy288_21f465c
ovy288_21f465c: ; 0x021F465C
	push {r3, r4, r5, lr}
	mov r5, #5
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r1, [r4, r5]
	cmp r1, #0x64
	bgt _021F467A
	bge _021F46A0
	cmp r1, #0
	bgt _021F4674
	beq _021F4688
	pop {r3, r4, r5, pc}
_021F4674:
	cmp r1, #0xa
	beq _021F4692
	pop {r3, r4, r5, pc}
_021F467A:
	cmp r1, #0xc8
	bgt _021F4682
	beq _021F46B4
	pop {r3, r4, r5, pc}
_021F4682:
	ldr r0, _021F46C4 ; =0x00002710
	cmp r1, r0
	pop {r3, r4, r5, pc}
_021F4688:
	bl ovy288_21f46c8
	mov r0, #0xa
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021F4692:
	bl ovy288_21f4808
	cmp r0, #0
	bne _021F46C0
	mov r0, #0x64
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021F46A0:
	bl ovy288_21f5d28
	cmp r0, #0
	bne _021F46C0
	mov r0, #0xc8
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy288_21f481c
	pop {r3, r4, r5, pc}
_021F46B4:
	bl ovy288_21f4844
	cmp r0, #0
	bne _021F46C0
	ldr r0, _021F46C4 ; =0x00002710
	str r0, [r4, r5]
_021F46C0:
	pop {r3, r4, r5, pc}
	nop
_021F46C4: .word 0x00002710
	thumb_func_end ovy288_21f465c

	thumb_func_start ovy288_21f46c8
ovy288_21f46c8: ; 0x021F46C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r1, #0
	ldr r0, _021F47E4 ; =0x04001050
	mov r6, #0
	strh r6, [r0]
	add r0, #0x1c
	sub r1, #0x10
	bl GXx_SetMasterBrightness_
	ldr r0, [r5]
	mov r2, #1
	ldrh r0, [r0, #4]
	mov r3, #4
	mov r4, #4
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #4]
	ldr r0, [r5]
	mov r1, #3
	ldrh r0, [r0, #4]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	mov r0, #0x17
	bl GFL_FontCreate
	str r0, [r5, #0xc]
	ldr r1, [r5]
	lsl r0, r4, #9
	ldrh r1, [r1, #4]
	bl sub_020219A8
	str r0, [r5, #0x10]
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	bl GFL_WordSetSystemCreateDefault
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
	ldr r2, [r5]
	mov r4, #0x64
	ldrh r2, [r2, #4]
	mov r0, #0x64
	mov r1, #0x29
	bl sub_0204A934
	lsl r1, r4, #2
	str r0, [r5, r1]
	ldr r3, [r5]
	add r4, #0xfe
	ldrh r3, [r3, #4]
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	mov r4, #0x5b
	lsl r4, r4, #2
	add r2, r4, #0
	ldr r3, [r5, r4]
	sub r2, #0x32
	add r2, r3, r2
	ldr r3, [r5]
	lsl r2, r2, #0x10
	ldrh r3, [r3, #4]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r5, #0
	bl ovy288_21f4858
	add r0, r5, #0
	bl sub_021F61A0
	add r0, r5, #0
	bl ovy288_21f5f7c
	add r0, r5, #0
	bl sub_021F6160
	add r0, r5, #0
	mov r1, #0
	bl ovy288_21f6294
	add r0, r5, #0
	bl ovy288_21f5d88
	add r0, r5, #0
	add r1, r6, #0
	bl ovy288_21f4d80
	add r0, r5, #0
	bl ovy288_21f6958
	add r0, r5, #0
	bl ovy288_21f47e8
	add r0, r5, #0
	bl ovy288_21f4974
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	mov r6, #8
	add r1, r0, #0
	add r0, r4, #0
	orr r1, r6
	sub r0, #0x20
	str r1, [r5, r0]
	bl sub_0203D554
	cmp r0, #0
	bne _021F47D0
	add r0, r4, #0
	sub r0, #0x20
	ldr r1, [r5, r0]
	lsl r0, r6, #7
	orr r0, r1
	sub r4, #0x20
	str r0, [r5, r4]
_021F47D0:
	mov r0, #3
	str r0, [sp]
	ldr r0, _021F47E4 ; =0x04001050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #8
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F47E4: .word 0x04001050
	thumb_func_end ovy288_21f46c8

	thumb_func_start ovy288_21f47e8
ovy288_21f47e8: ; 0x021F47E8
	push {lr}
	sub sp, #0xc
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0]
	mov r2, #1
	ldrh r0, [r0, #4]
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #4
	bl GFL_FadeScreenSet
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy288_21f47e8

	thumb_func_start ovy288_21f4808
ovy288_21f4808: ; 0x021F4808
	push {r4, lr}
	mov r4, #1
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _021F4816
	mov r4, #0
_021F4816:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy288_21f4808

	thumb_func_start ovy288_21f481c
ovy288_21f481c: ; 0x021F481C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl sub_021E00AC
	mov r3, #0
	str r3, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r2, _021F4840 ; =0x0000FFFF
	mov r1, #0xa
	bl sub_02026FE4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021F4840: .word 0x0000FFFF
	thumb_func_end ovy288_21f481c

	thumb_func_start ovy288_21f4844
ovy288_21f4844: ; 0x021F4844
	push {r4, lr}
	ldr r0, [r0, #8]
	mov r4, #1
	bl sub_02027780
	cmp r0, #0
	bne _021F4854
	mov r4, #0
_021F4854:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy288_21f4844

	thumb_func_start ovy288_21f4858
ovy288_21f4858: ; 0x021F4858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x90
	ldr r4, _021F493C ; =0x021F6E88
	add r3, sp, #0x80
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	mov r1, #1
	mov r4, #1
	bl sub_02044748
	ldr r6, _021F4940 ; =0x021F6ED8
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	mov r7, #0
	bl sub_0204476C
	ldr r6, _021F4944 ; =0x021F6E98
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	ldr r6, _021F4948 ; =0x021F6EF8
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	bl sub_02045738
	ldr r6, _021F494C ; =0x021F6EB8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	mov r6, #4
	bl sub_0204476C
	mov r0, #4
	bl sub_02045738
	ldr r3, [r5]
	mov r0, #5
	ldrh r3, [r3, #4]
	mov r1, #0x20
	mov r2, #0
	bl sub_020450CC
	ldr r3, [r5]
	add r0, r6, #0
	ldrh r3, [r3, #4]
	mov r1, #0x20
	add r2, r7, #0
	bl sub_020450CC
	mov r0, #5
	bl sub_02045B7C
	add r0, r6, #0
	bl sub_02045B7C
	mov r0, #0x1f
	add r1, r4, #0
	bl sub_02046D84
	add sp, #0x90
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F493C: .word 0x021F6E88
_021F4940: .word 0x021F6ED8
_021F4944: .word 0x021F6E98
_021F4948: .word 0x021F6EF8
_021F494C: .word 0x021F6EB8
	thumb_func_end ovy288_21f4858

	thumb_func_start ovy288_21f4950
ovy288_21f4950: ; 0x021F4950
	push {r3, lr}
	mov r0, #0x1f
	mov r1, #0
	bl sub_02046D84
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy288_21f4950

	thumb_func_start ovy288_21f4974
ovy288_21f4974: ; 0x021F4974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	mov r3, #1
	ldr r1, [r0, #0xc]
	ldr r0, _021F4A24 ; =0x021F6E2E
	mov r2, #0
	ldrb r4, [r0, r1]
	ldr r0, [r5, #8]
	mov r1, #1
	add r3, #0xff
	mov r6, #1
	mov r7, #0
	bl sub_02026F7C
	ldr r0, [r5, #8]
	mov r1, #1
	mov r2, #0xa0
	mov r3, #0x60
	bl sub_02026F7C
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #8]
	ldrh r3, [r3, #4]
	mov r1, #0x17
	mov r2, #6
	bl sub_02026EE8
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	ldr r3, [r5]
	ldr r0, [r5, #8]
	ldrh r3, [r3, #4]
	mov r1, #0x64
	mov r2, #0xf
	bl sub_02026EE8
	lsl r2, r4, #0x1e
	lsr r3, r2, #0x1d
	ldr r2, _021F4A28 ; =0x021F6DBE
	str r6, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldrsh r2, [r2, r3]
	ldr r3, [r5]
	ldr r0, [r5, #8]
	ldrh r3, [r3, #4]
	mov r1, #0x64
	bl sub_02026EE8
	ldr r1, [r5]
	mov r0, #0
	ldrh r1, [r1, #4]
	bl sub_02042BA8
	mov r3, #0xf
	ldr r0, [r5, #8]
	mov r1, #3
	mov r2, #0
	lsl r3, r3, #5
	bl sub_02026F7C
	bl sub_021E00AC
	mov r1, #0x10
	str r1, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	ldr r2, _021F4A2C ; =0x0000FFFF
	mov r1, #0xa
	mov r3, #0
	bl sub_02026FE4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F4A24: .word 0x021F6E2E
_021F4A28: .word 0x021F6DBE
_021F4A2C: .word 0x0000FFFF
	thumb_func_end ovy288_21f4974

	thumb_func_start ovy288_21f4a30
ovy288_21f4a30: ; 0x021F4A30
	push {r3, r4, r5, lr}
	mov r4, #0x53
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	mov r1, #4
	tst r1, r2
	beq _021F4AA0
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	bl ovy288_21f626c
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #1
	bl ovy288_21f6bd4
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy288_21f6d4c
	add r4, #8
	ldr r0, [r5, r4]
	cmp r0, #2
	beq _021F4A72
	add r0, r5, #0
	bl ovy288_21f5cf4
_021F4A72:
	mov r0, #0x17
	lsl r0, r0, #4
	add r1, r0, #0
	sub r1, #0x1c
	ldr r1, [r5, r1]
	ldr r2, [r5, r0]
	cmp r1, #1
	bne _021F4A86
	add r0, #0xc
	b _021F4A8C
_021F4A86:
	cmp r1, #2
	bne _021F4A8E
	add r0, #0x18
_021F4A8C:
	ldr r2, [r5, r0]
_021F4A8E:
	add r0, r5, #0
	bl ovy288_21f613c
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #4
	bic r2, r0
	str r2, [r5, r1]
_021F4AA0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy288_21f4a30

	thumb_func_start ovy288_21f4aa4
ovy288_21f4aa4: ; 0x021F4AA4
	push {r4, r5, r6, lr}
	mov r4, #0x51
	lsl r4, r4, #2
	add r2, r4, #0
	add r5, r0, #0
	mov r1, #1
	str r1, [r5, r4]
	mov r6, #0
	add r2, #0xc
	str r6, [r5, r2]
	add r2, r4, #0
	add r2, #0x10
	str r6, [r5, r2]
	add r2, r4, #0
	add r2, #8
	ldr r2, [r5, r2]
	tst r1, r2
	beq _021F4AE4
	add r1, r6, #0
	bl ovy288_21f6294
	add r0, r5, #0
	add r1, r6, #0
	bl ovy288_21f4d80
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	mov r0, #8
	orr r0, r1
	add r4, #8
	str r0, [r5, r4]
_021F4AE4:
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy288_21f4aa4

	thumb_func_start ovy288_21f4af4
ovy288_21f4af4: ; 0x021F4AF4
	push {r4, r5, r6, lr}
	mov r4, #0x15
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r2, [r5, r4]
	cmp r2, #0xc8
	bgt _021F4B12
	bge _021F4B3A
	cmp r2, #0
	bgt _021F4B0C
	beq _021F4B2E
	pop {r4, r5, r6, pc}
_021F4B0C:
	cmp r2, #0x64
	beq _021F4B32
	pop {r4, r5, r6, pc}
_021F4B12:
	add r1, r4, #0
	sub r1, #0x24
	cmp r2, r1
	bgt _021F4B24
	add r1, r4, #0
	sub r1, #0x24
	cmp r2, r1
	beq _021F4B5C
	pop {r4, r5, r6, pc}
_021F4B24:
	add r1, r4, #0
	sub r1, #0x1a
	cmp r2, r1
	beq _021F4B80
	pop {r4, r5, r6, pc}
_021F4B2E:
	mov r0, #0x64
	str r0, [r5, r4]
_021F4B32:
	add r0, r5, #0
	bl ovy288_21f4bac
	pop {r4, r5, r6, pc}
_021F4B3A:
	mov r1, #2
	mov r6, #2
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F4BA2
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	sub r0, r6, #3
	sub r4, #8
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_021F4B5C:
	bl ovy288_21f6cc0
	add r0, r5, #0
	bl sub_021F6D38
	cmp r0, #0
	bne _021F4BA2
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	mov r0, #3
	sub r4, #8
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
_021F4B80:
	bl ovy288_21f6cc0
	add r0, r5, #0
	bl sub_021F6D38
	cmp r0, #0
	bne _021F4BA2
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	mov r0, #6
	sub r4, #8
	str r0, [r5, r4]
_021F4BA2:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy288_21f4af4
_021F4BA4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x75, 0x5D, 0x1F, 0x02

	thumb_func_start ovy288_21f4bac
ovy288_21f4bac: ; 0x021F4BAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	mov r4, #0
	mov r7, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021F4BC2
	b _021F4D6E
_021F4BC2:
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r1, #8
	tst r1, r0
	beq _021F4BD6
	mov r1, #8
	bic r0, r1
	mov r7, #1
	str r0, [r5, r2]
_021F4BD6:
	cmp r7, #0
	bne _021F4C34
	add r0, r5, #0
	mov r1, #0
	bl sub_021F64E0
	cmp r0, #1
	bne _021F4BEA
	mov r6, #5
	b _021F4BF8
_021F4BEA:
	cmp r0, #0
	bne _021F4BF2
	mov r6, #6
	b _021F4BF8
_021F4BF2:
	cmp r0, #2
	bne _021F4BFA
	mov r6, #4
_021F4BF8:
	mov r4, #1
_021F4BFA:
	cmp r6, #0
	bne _021F4C34
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _021F4C0C
	mov r6, #1
	b _021F4C34
_021F4C0C:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _021F4C1A
	mov r6, #2
	b _021F4C34
_021F4C1A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021F4C28
	mov r6, #3
	b _021F4C34
_021F4C28:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021F4C34
	mov r6, #4
_021F4C34:
	cmp r6, #0
	bne _021F4C3A
	b _021F4D5C
_021F4C3A:
	cmp r4, #0
	bne _021F4CFC
	mov r4, #0x53
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r1, #0
	tst r2, r0
	beq _021F4CEC
	cmp r6, #1
	bne _021F4C74
	add r4, #0x24
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021F4C60
	ldr r0, _021F4D70 ; =0x00000548
	bl GFL_SndSEPlay
_021F4C60:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	bpl _021F4C70
	mov r1, #0
	str r1, [r5, r0]
_021F4C70:
	mov r7, #1
	b _021F4D5C
_021F4C74:
	cmp r6, #2
	bne _021F4C9A
	add r4, #0x24
	ldr r0, [r5, r4]
	cmp r0, #2
	beq _021F4C86
	ldr r0, _021F4D70 ; =0x00000548
	bl GFL_SndSEPlay
_021F4C86:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r1, #2
	ble _021F4C98
	mov r1, #2
	str r1, [r5, r0]
_021F4C98:
	b _021F4C70
_021F4C9A:
	cmp r6, #3
	bne _021F4CE6
	add r0, r4, #0
	add r0, #0x24
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021F4CAA
	b _021F4D40
_021F4CAA:
	cmp r0, #1
	bne _021F4CC6
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f6c98
	add r1, r4, #0
	add r0, r4, #4
	sub r1, #0x16
	str r1, [r5, r0]
	mov r0, #0
	add r4, #0x30
_021F4CC2:
	str r0, [r5, r4]
	b _021F4D56
_021F4CC6:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r6, #1
	bl ovy288_21f6c04
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0x88
	str r1, [r5, r0]
	ldr r1, [r5, r4]
	lsl r0, r6, #0xb
	orr r0, r1
	str r0, [r5, r4]
_021F4CE2:
	ldr r0, _021F4D74 ; =0x00000552
	b _021F4D58
_021F4CE6:
	cmp r6, #4
	bne _021F4D5C
	b _021F4CC6
_021F4CEC:
	orr r0, r1
	str r0, [r5, r4]
	mov r0, #0
	add r4, #0x24
	str r0, [r5, r4]
	mov r7, #1
	ldr r0, _021F4D70 ; =0x00000548
	b _021F4D58
_021F4CFC:
	mov r4, #0x53
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	ldr r0, _021F4D78 ; =0xFFFFFBFF
	mov r7, #1
	and r0, r1
	str r0, [r5, r4]
	cmp r6, #4
	bne _021F4D22
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ovy288_21f6c04
	mov r0, #0xc8
	mov r1, #0xc8
	add r0, #0x88
	str r1, [r5, r0]
	b _021F4CE2
_021F4D22:
	cmp r6, #5
	bne _021F4D3C
	add r0, r5, #0
	add r1, r7, #0
	bl ovy288_21f6c98
	add r1, r4, #0
	add r0, r4, #4
	sub r1, #0x16
	str r1, [r5, r0]
	mov r0, #0
	add r4, #0x3c
	b _021F4CC2
_021F4D3C:
	cmp r6, #6
	bne _021F4D5C
_021F4D40:
	add r0, r5, #0
	mov r1, #0
	mov r6, #0
	bl ovy288_21f6c98
	add r1, r4, #0
	add r0, r4, #4
	sub r1, #0x20
	str r1, [r5, r0]
	add r4, #0x30
	str r6, [r5, r4]
_021F4D56:
	ldr r0, _021F4D7C ; =0x0000054D
_021F4D58:
	bl GFL_SndSEPlay
_021F4D5C:
	cmp r7, #1
	bne _021F4D6E
	mov r2, #0x17
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #0
	bl ovy288_21f613c
_021F4D6E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F4D70: .word 0x00000548
_021F4D74: .word 0x00000552
_021F4D78: .word 0xFFFFFBFF
_021F4D7C: .word 0x0000054D
	thumb_func_end ovy288_21f4bac

	thumb_func_start ovy288_21f4d80
ovy288_21f4d80: ; 0x021F4D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r2, #0x5b
	add r5, r0, #0
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	cmp r1, #0
	str r2, [sp, #0x14]
	bne _021F4DF0
	mov r1, #0
	mov r4, #0
	bl ovy288_21f5ef0
_021F4D9A:
	mov r6, #0
	mov r7, #0
	cmp r4, #0
	bne _021F4DA6
	mov r6, #2
	mov r7, #0x70
_021F4DA6:
	ldr r1, _021F4DF4 ; =0x021F6DB8
	lsl r2, r4, #1
	add r0, r5, #0
	ldrsh r2, [r1, r2]
	add r0, #0x84
	ldr r1, [sp, #0x14]
	ldr r0, [r0]
	add r1, r1, r2
	bl sub_0204898C
	str r0, [sp]
	str r0, [sp, #0x18]
	mov r0, #0x11
	str r6, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #3
	add r2, r7, #0
	mov r3, #0
	bl ovy288_21f62e0
	ldr r0, [sp, #0x18]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #3
	blt _021F4D9A
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #4
	orr r0, r2
	str r0, [r5, r1]
_021F4DF0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4DF4: .word 0x021F6DB8
	thumb_func_end ovy288_21f4d80

	thumb_func_start ovy288_21f4df8
ovy288_21f4df8: ; 0x021F4DF8
	push {r3, r4, r5, lr}
	mov r4, #0x51
	add r5, r0, #0
	mov r1, #4
	lsl r4, r4, #2
	str r1, [r5, r4]
	add r1, r4, #0
	mov r2, #0
	add r1, #0xc
	str r2, [r5, r1]
	add r1, r4, #0
	mov r2, #1
	add r1, #0x10
	str r2, [r5, r1]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy288_21f6d60
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f6294
	add r0, r5, #0
	mov r1, #0
	bl ovy288_21f536c
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy288_21f5fd0
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	mov r0, #8
	orr r0, r1
	add r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy288_21f4df8

	thumb_func_start ovy288_21f4e48
ovy288_21f4e48: ; 0x021F4E48
	push {r4, r5, r6, lr}
	mov r4, #0x15
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r2, [r5, r4]
	cmp r2, #0xd2
	bgt _021F4E6A
	bge _021F4EBC
	cmp r2, #0x64
	bgt _021F4E64
	bge _021F4E8A
	cmp r2, #0
	beq _021F4E86
	pop {r4, r5, r6, pc}
_021F4E64:
	cmp r2, #0xc8
	beq _021F4E92
	pop {r4, r5, r6, pc}
_021F4E6A:
	add r1, r4, #0
	sub r1, #0x24
	cmp r2, r1
	bgt _021F4E80
	add r1, r4, #0
	sub r1, #0x24
	cmp r2, r1
	bge _021F4F0A
	cmp r2, #0xdc
	beq _021F4EE4
	pop {r4, r5, r6, pc}
_021F4E80:
	add r4, #0x40
	cmp r2, r4
	pop {r4, r5, r6, pc}
_021F4E86:
	mov r0, #0x64
	str r0, [r5, r4]
_021F4E8A:
	add r0, r5, #0
	bl ovy288_21f4f44
	pop {r4, r5, r6, pc}
_021F4E92:
	mov r1, #2
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F4F38
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	mov r2, #0
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	mov r1, #0
	sub r4, #8
	add r0, r5, #0
	mov r3, #0
	str r1, [r5, r4]
	bl ovy288_21f6d60
	pop {r4, r5, r6, pc}
_021F4EBC:
	mov r1, #0
	mov r6, #0
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F4F38
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, #0xe8
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	beq _021F4F38
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #5
	bl ovy288_21f6c04
	pop {r4, r5, r6, pc}
_021F4EE4:
	mov r1, #1
	mov r6, #1
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F4F38
	mov r0, #0x64
	str r0, [r5, r4]
	add r0, #0xe8
	ldr r1, [r5, r0]
	lsl r0, r6, #0x15
	tst r0, r1
	beq _021F4F38
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	bl ovy288_21f6c04
	pop {r4, r5, r6, pc}
_021F4F0A:
	bl ovy288_21f6cc0
	add r0, r5, #0
	bl sub_021F6D38
	cmp r0, #0
	bne _021F4F38
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	mov r2, #0
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	mov r0, #6
	sub r4, #8
	str r0, [r5, r4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #0
	bl ovy288_21f6d60
_021F4F38:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy288_21f4e48
_021F4F3C:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x75, 0x5D, 0x1F, 0x02

	thumb_func_start ovy288_21f4f44
ovy288_21f4f44: ; 0x021F4F44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r4, #0
	mov r6, #0
	mov r7, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021F4F5E
	b _021F5368
_021F4F5E:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r2, #8
	tst r2, r1
	beq _021F4F74
	mov r2, #1
	str r2, [sp]
	mov r2, #8
	bic r1, r2
	str r1, [r5, r0]
_021F4F74:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F4FDC
	add r0, r5, #0
	mov r1, #1
	bl sub_021F64E0
	cmp r0, #0
	bne _021F4F8A
	mov r4, #5
	b _021F4FA0
_021F4F8A:
	cmp r0, #1
	bne _021F4F92
	mov r4, #6
	b _021F4FA0
_021F4F92:
	cmp r0, #2
	bne _021F4F9A
	mov r4, #7
	b _021F4FA0
_021F4F9A:
	cmp r0, #3
	bne _021F4FA2
	mov r4, #4
_021F4FA0:
	mov r6, #1
_021F4FA2:
	cmp r4, #0
	bne _021F4FDC
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _021F4FB4
	mov r4, #1
	b _021F4FDC
_021F4FB4:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _021F4FC2
	mov r4, #2
	b _021F4FDC
_021F4FC2:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021F4FD0
	mov r4, #3
	b _021F4FDC
_021F4FD0:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021F4FDC
	mov r4, #4
_021F4FDC:
	cmp r4, #0
	bne _021F4FE2
	b _021F5342
_021F4FE2:
	cmp r6, #0
	beq _021F4FE8
	b _021F51A4
_021F4FE8:
	mov r6, #0x53
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r1, #0
	tst r2, r0
	bne _021F4FFA
	b _021F5192
_021F4FFA:
	cmp r4, #1
	bne _021F5022
	add r6, #0x30
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F500C
	ldr r0, _021F5310 ; =0x00000548
	bl GFL_SndSEPlay
_021F500C:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	bpl _021F501C
	mov r1, #0
	str r1, [r5, r0]
_021F501C:
	mov r0, #1
	str r0, [sp]
	b _021F5342
_021F5022:
	cmp r4, #2
	bne _021F5048
	add r6, #0x30
	ldr r0, [r5, r6]
	cmp r0, #3
	beq _021F5034
	ldr r0, _021F5310 ; =0x00000548
	bl GFL_SndSEPlay
_021F5034:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r1, #3
	ble _021F5046
	mov r1, #3
	str r1, [r5, r0]
_021F5046:
	b _021F501C
_021F5048:
	cmp r4, #3
	beq _021F504E
	b _021F518A
_021F504E:
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021F5070
	add r0, r5, #0
	mov r1, #2
	bl ovy288_21f6c98
	add r1, r6, #0
	sub r1, #0x20
	add r0, r6, #4
_021F5066:
	str r1, [r5, r0]
	ldr r0, _021F5314 ; =0x0000054D
_021F506A:
	bl GFL_SndSEPlay
	b _021F5342
_021F5070:
	cmp r0, #1
	bne _021F50E0
	add r6, #0x28
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F5082
	ldr r0, _021F5314 ; =0x0000054D
	bl GFL_SndSEPlay
_021F5082:
	mov r2, #0x5d
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	sub r0, r0, #1
	str r0, [r5, r2]
	bpl _021F50B0
	mov r0, #0
	str r0, [r5, r2]
	add r0, r2, #0
	sub r0, #0x28
	ldr r1, [r5, r0]
	mov r0, #1
	add r3, r1, #0
	add r1, r2, #0
	lsl r0, r0, #0x10
	orr r3, r0
	sub r1, #0x28
	lsl r0, r0, #2
	str r3, [r5, r1]
	orr r0, r3
	sub r2, #0x28
	str r0, [r5, r2]
	b _021F50DE
_021F50B0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	mov r7, #1
	mov r4, #4
	bl ovy288_21f6c04
	mov r1, #0xd2
	mov r0, #0xd2
	add r1, #0x7e
	str r0, [r5, r1]
	mov r1, #0xd2
	add r1, #0x7a
	ldr r2, [r5, r1]
	ldr r1, _021F5318 ; =0xFFFDFFFF
	add r0, #0x7a
	and r2, r1
	mov r1, #0xd2
	add r1, #0x7a
	str r2, [r5, r1]
	lsl r1, r4, #0x11
	orr r1, r2
	str r1, [r5, r0]
_021F50DE:
	b _021F5338
_021F50E0:
	cmp r0, #2
	bne _021F5168
	add r0, r6, #0
	add r0, #0x2c
	ldr r1, [r5, r0]
	add r6, #0x28
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	asr r0, r0, #1
	add r1, r3, r2
	add r4, r0, r1
	ldr r1, [r5, r6]
	sub r0, r4, #1
	cmp r1, r0
	beq _021F510E
	ldr r0, _021F5314 ; =0x0000054D
	bl GFL_SndSEPlay
_021F510E:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r2, r1, #1
	sub r1, r4, #1
	str r2, [r5, r0]
	cmp r2, r1
	ble _021F513C
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x28
	ldr r2, [r5, r1]
	mov r1, #2
	add r3, r2, #0
	add r2, r0, #0
	lsl r1, r1, #0x10
	orr r3, r1
	sub r2, #0x28
	lsl r1, r1, #2
	str r3, [r5, r2]
	orr r1, r3
	sub r0, #0x28
	b _021F5166
_021F513C:
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	mov r7, #1
	bl ovy288_21f6c04
	mov r1, #0xdc
	mov r0, #0xdc
	add r1, #0x74
	str r0, [r5, r1]
	mov r1, #0xdc
	add r1, #0x70
	ldr r2, [r5, r1]
	ldr r1, _021F531C ; =0xFFFEFFFF
	add r0, #0x70
	and r2, r1
	mov r1, #0xdc
	add r1, #0x70
	str r2, [r5, r1]
	lsl r1, r7, #0x12
	orr r1, r2
_021F5166:
	b _021F5336
_021F5168:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy288_21f6c04
	mov r0, #0xc8
	mov r2, #0xc8
	add r0, #0x88
	str r2, [r5, r0]
	mov r0, #0xc8
	mov r1, #0
	add r0, #0xb4
	str r1, [r5, r0]
	add r2, #0xa8
	str r1, [r5, r2]
_021F5186:
	ldr r0, _021F5320 ; =0x00000552
	b _021F506A
_021F518A:
	cmp r4, #4
	beq _021F5190
	b _021F5342
_021F5190:
	b _021F5168
_021F5192:
	orr r0, r1
	str r0, [r5, r6]
	mov r0, #0
	add r6, #0x30
	str r0, [r5, r6]
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F5310 ; =0x00000548
	b _021F506A
_021F51A4:
	cmp r4, #4
	bne _021F51D8
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy288_21f6c04
	mov r1, #0xc8
	mov r0, #0xc8
	add r1, #0x88
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x84
	ldr r2, [r5, r1]
	ldr r1, _021F5324 ; =0xFFFFFBFF
	add r0, #0xa8
	and r2, r1
	mov r1, #0xc8
	add r1, #0x84
	str r2, [r5, r1]
	mov r1, #0xc8
	mov r2, #0
	add r1, #0xb4
	str r2, [r5, r1]
	str r2, [r5, r0]
	b _021F5186
_021F51D8:
	cmp r4, #5
	bne _021F5204
	add r0, r5, #0
	mov r1, #2
	bl ovy288_21f6c98
	mov r0, #0x4b
	lsl r0, r0, #2
	add r1, r0, #0
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r0, #0
	add r1, #0x20
	ldr r2, [r5, r1]
	ldr r1, _021F5324 ; =0xFFFFFBFF
	and r2, r1
	add r1, r0, #0
	add r1, #0x20
	str r2, [r5, r1]
	mov r1, #0
	add r0, #0x50
	b _021F5066
_021F5204:
	cmp r4, #6
	bne _021F5284
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F5218
	ldr r0, _021F5314 ; =0x0000054D
	bl GFL_SndSEPlay
_021F5218:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	bpl _021F5244
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x28
	ldr r2, [r5, r1]
	mov r1, #1
	add r3, r2, #0
	add r2, r0, #0
	lsl r1, r1, #0x10
	orr r3, r1
	sub r2, #0x28
	lsl r1, r1, #2
	str r3, [r5, r2]
	orr r1, r3
	sub r0, #0x28
	b _021F5282
_021F5244:
	add r1, r0, #0
	sub r1, #0x28
	ldr r2, [r5, r1]
	ldr r1, _021F5324 ; =0xFFFFFBFF
	sub r0, #0x28
	and r1, r2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	mov r7, #1
	mov r4, #4
	bl ovy288_21f6c04
	mov r1, #0xd2
	mov r0, #0xd2
	add r1, #0x7e
	str r0, [r5, r1]
	mov r1, #0xd2
	add r1, #0x7a
	ldr r2, [r5, r1]
	ldr r1, _021F5318 ; =0xFFFDFFFF
	add r0, #0x7a
	and r2, r1
	mov r1, #0xd2
	add r1, #0x7a
	str r2, [r5, r1]
	lsl r1, r4, #0x11
	orr r1, r2
_021F5282:
	b _021F5336
_021F5284:
	cmp r4, #7
	bne _021F5342
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	lsr r0, r2, #0x1f
	add r0, r2, r0
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1f
	sub r3, r3, r4
	mov r2, #0x1f
	ror r3, r2
	asr r0, r0, #1
	add r2, r4, r3
	add r4, r0, r2
	sub r0, r1, #4
	ldr r1, [r5, r0]
	sub r0, r4, #1
	cmp r1, r0
	beq _021F52B2
	ldr r0, _021F5314 ; =0x0000054D
	bl GFL_SndSEPlay
_021F52B2:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r2, r1, #1
	sub r1, r4, #1
	str r2, [r5, r0]
	cmp r2, r1
	ble _021F52E0
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #0x28
	ldr r2, [r5, r1]
	mov r1, #2
	add r3, r2, #0
	add r2, r0, #0
	lsl r1, r1, #0x10
	orr r3, r1
	sub r2, #0x28
	lsl r1, r1, #2
	str r3, [r5, r2]
	orr r1, r3
	sub r0, #0x28
	b _021F5336
_021F52E0:
	add r1, r0, #0
	sub r1, #0x28
	ldr r2, [r5, r1]
	ldr r1, _021F5324 ; =0xFFFFFBFF
	sub r0, #0x28
	and r1, r2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	mov r7, #1
	bl ovy288_21f6c04
	mov r1, #0xdc
	mov r0, #0xdc
	add r1, #0x74
	str r0, [r5, r1]
	mov r1, #0xdc
	add r1, #0x70
	ldr r2, [r5, r1]
	ldr r1, _021F531C ; =0xFFFEFFFF
	b _021F5328
	.align 2, 0
_021F5310: .word 0x00000548
_021F5314: .word 0x0000054D
_021F5318: .word 0xFFFDFFFF
_021F531C: .word 0xFFFEFFFF
_021F5320: .word 0x00000552
_021F5324: .word 0xFFFFFBFF
_021F5328:
	add r0, #0x70
	and r2, r1
	mov r1, #0xdc
	add r1, #0x70
	str r2, [r5, r1]
	lsl r1, r7, #0x12
	orr r1, r2
_021F5336:
	str r1, [r5, r0]
_021F5338:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ovy288_21f5fd0
_021F5342:
	ldr r0, [sp]
	cmp r0, #1
	bne _021F5356
	mov r2, #0x5f
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f613c
_021F5356:
	cmp r7, #1
	bne _021F5362
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f536c
_021F5362:
	add r0, r5, #0
	bl ovy288_21f60cc
_021F5368:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy288_21f4f44

	thumb_func_start ovy288_21f536c
ovy288_21f536c: ; 0x021F536C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	cmp r1, #0
	bne _021F53BC
	mov r1, #1
	mov r7, #1
	bl ovy288_21f5ef0
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x8e
	mov r4, #0x8e
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #0x11
	str r6, [sp]
	mov r2, #0
	str r2, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	add r0, r5, #0
	mov r1, #8
	mov r3, #0
	str r2, [sp, #0x10]
	bl ovy288_21f62e0
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #0x8e
	add r0, #0xbe
	ldr r1, [r5, r0]
	mov r0, #4
	orr r0, r1
	add r4, #0xbe
	str r0, [r5, r4]
_021F53BC:
	mov r4, #0x5d
	lsl r4, r4, #2
	add r0, r5, #0
	ldr r1, [r5, r4]
	add r0, #0x88
	lsl r1, r1, #1
	ldr r0, [r0]
	add r1, r1, #1
	bl sub_0204898C
	add r7, r0, #0
	mov r6, #0x11
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r6, r6, #6
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	ldr r1, [r5, r4]
	add r0, #0x88
	lsl r1, r1, #1
	ldr r0, [r0]
	add r1, #0x15
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [r5, r4]
	lsl r1, r0, #1
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r2, r1, #1
	cmp r2, r0
	bge _021F5490
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	add r1, r1, #2
	bl sub_0204898C
	add r7, r0, #0
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	ldr r1, [r5, r4]
	add r0, #0x88
	lsl r1, r1, #1
	ldr r0, [r0]
	add r1, #0x16
	bl sub_0204898C
	add r4, r0, #0
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	add r0, r4, #0
	bl GFL_StrBufFree
	b _021F54A0
_021F5490:
	add r0, r5, #0
	mov r1, #2
	bl ovy288_21f6414
	add r0, r5, #0
	mov r1, #4
	bl ovy288_21f6414
_021F54A0:
	ldr r0, [r5]
	ldr r0, [r0, #0x10]
	sub r4, r0, #1
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	add r0, r4, r2
	asr r0, r0, #1
	cmp r3, r0
	bne _021F54C8
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #0
	mov r3, #1
	b _021F54D0
_021F54C8:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
_021F54D0:
	bl ovy288_21f6d60
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #2
	add r0, r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	mov r6, #0
	str r6, [sp, #8]
	mov r7, #1
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	mov r3, #0
	str r7, [sp, #0xc]
	bl ovy288_21f6390
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r0, [r5, r0]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	add r0, r3, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	mov r3, #0
	str r7, [sp, #0xc]
	bl ovy288_21f6390
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy288_21f536c

	thumb_func_start ovy288_21f552c
ovy288_21f552c: ; 0x021F552C
	push {r3, r4, r5, lr}
	mov r4, #0x51
	add r5, r0, #0
	mov r1, #7
	lsl r4, r4, #2
	str r1, [r5, r4]
	add r1, r4, #0
	mov r2, #0
	add r1, #0xc
	str r2, [r5, r1]
	add r1, r4, #0
	mov r2, #2
	add r1, #0x10
	str r2, [r5, r1]
	mov r1, #2
	bl ovy288_21f6294
	add r0, r5, #0
	mov r1, #0
	bl ovy288_21f5944
	add r0, r5, #0
	mov r1, #0
	bl ovy288_21f5bf4
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy288_21f5fd0
	add r0, r4, #0
	add r0, #8
	ldr r1, [r5, r0]
	mov r0, #8
	orr r0, r1
	add r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy288_21f552c

	thumb_func_start ovy288_21f5578
ovy288_21f5578: ; 0x021F5578
	push {r3, r4, r5, lr}
	mov r4, #0x15
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r2, [r5, r4]
	cmp r2, #0xd2
	bgt _021F559A
	bge _021F55E2
	cmp r2, #0x64
	bgt _021F5594
	bge _021F55BA
	cmp r2, #0
	beq _021F55B6
	pop {r3, r4, r5, pc}
_021F5594:
	cmp r2, #0xc8
	beq _021F55C2
	pop {r3, r4, r5, pc}
_021F559A:
	add r1, r4, #0
	sub r1, #0x24
	cmp r2, r1
	bgt _021F55B0
	add r1, r4, #0
	sub r1, #0x24
	cmp r2, r1
	bge _021F5602
	cmp r2, #0xdc
	beq _021F55F2
	pop {r3, r4, r5, pc}
_021F55B0:
	add r4, #0x40
	cmp r2, r4
	pop {r3, r4, r5, pc}
_021F55B6:
	mov r0, #0x64
	str r0, [r5, r4]
_021F55BA:
	add r0, r5, #0
	bl ovy288_21f5630
	pop {r3, r4, r5, pc}
_021F55C2:
	mov r1, #2
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F5624
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	mov r0, #0
	sub r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_021F55E2:
	mov r1, #0
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F5624
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_021F55F2:
	mov r1, #1
	bl ovy288_21f6c20
	cmp r0, #0
	bne _021F5624
	mov r0, #0x64
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
_021F5602:
	bl ovy288_21f6cc0
	add r0, r5, #0
	bl sub_021F6D38
	cmp r0, #0
	bne _021F5624
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r4, #0
	sub r0, #0xc
	str r1, [r5, r0]
	mov r0, #3
	sub r4, #8
	str r0, [r5, r4]
_021F5624:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy288_21f5578
_021F5628:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x75, 0x5D, 0x1F, 0x02

	thumb_func_start ovy288_21f5630
ovy288_21f5630: ; 0x021F5630
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r4, #0
	mov r6, #0
	mov r7, #0
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _021F564A
	b _021F5932
_021F564A:
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	mov r1, #8
	tst r1, r0
	beq _021F565E
	mov r1, #8
	bic r0, r1
	mov r7, #1
	str r0, [r5, r2]
_021F565E:
	cmp r7, #0
	bne _021F56C4
	add r0, r5, #0
	mov r1, #2
	bl sub_021F64E0
	cmp r0, #0
	bne _021F5672
	mov r4, #5
	b _021F5688
_021F5672:
	cmp r0, #1
	bne _021F567A
	mov r4, #6
	b _021F5688
_021F567A:
	cmp r0, #2
	bne _021F5682
	mov r4, #7
	b _021F5688
_021F5682:
	cmp r0, #3
	bne _021F568A
	mov r4, #4
_021F5688:
	mov r6, #1
_021F568A:
	cmp r4, #0
	bne _021F56C4
	bl sub_0203DF44
	mov r1, #0x20
	tst r0, r1
	beq _021F569C
	mov r4, #1
	b _021F56C4
_021F569C:
	bl sub_0203DF44
	mov r1, #0x10
	tst r0, r1
	beq _021F56AA
	mov r4, #2
	b _021F56C4
_021F56AA:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021F56B8
	mov r4, #3
	b _021F56C4
_021F56B8:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021F56C4
	mov r4, #4
_021F56C4:
	cmp r4, #0
	bne _021F56CA
	b _021F590A
_021F56CA:
	cmp r6, #0
	beq _021F56D0
	b _021F5806
_021F56D0:
	mov r6, #0x53
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r2, #1
	lsl r2, r2, #0xa
	add r1, r0, #0
	tst r1, r2
	bne _021F56E2
	b _021F57F6
_021F56E2:
	cmp r4, #1
	bne _021F5708
	add r6, #0x3c
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021F56F4
	ldr r0, _021F5934 ; =0x00000548
	bl GFL_SndSEPlay
_021F56F4:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	bpl _021F5704
	mov r1, #0
	str r1, [r5, r0]
_021F5704:
	mov r7, #1
	b _021F590A
_021F5708:
	cmp r4, #2
	bne _021F572E
	add r6, #0x3c
	ldr r0, [r5, r6]
	cmp r0, #3
	beq _021F571A
	ldr r0, _021F5934 ; =0x00000548
	bl GFL_SndSEPlay
_021F571A:
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r1, #3
	ble _021F572C
	mov r1, #3
	str r1, [r5, r0]
_021F572C:
	b _021F5704
_021F572E:
	cmp r4, #3
	bne _021F57EE
	add r1, r6, #0
	add r1, #0x3c
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021F5754
	add r0, r5, #0
	mov r1, #3
	bl ovy288_21f6c98
	add r1, r6, #0
	sub r1, #0x20
	add r0, r6, #4
_021F574A:
	str r1, [r5, r0]
	ldr r0, _021F5938 ; =0x0000054D
_021F574E:
	bl GFL_SndSEPlay
	b _021F590A
_021F5754:
	cmp r1, #1
	bne _021F5798
	lsl r1, r2, #0xa
	tst r0, r1
	bne _021F57F2
	ldr r0, _021F5938 ; =0x0000054D
	bl GFL_SndSEPlay
	add r0, r6, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	sub r1, r0, #1
	add r0, r6, #0
	add r0, #0x34
	str r1, [r5, r0]
	cmp r1, #0
	bge _021F5782
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	add r6, #0x34
	sub r0, r0, #1
	str r0, [r5, r6]
_021F5782:
	mov r0, #1
	str r0, [sp]
_021F5786:
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	bl ovy288_21f6c04
	mov r0, #0xd2
	mov r1, #0xd2
	add r0, #0x7e
	b _021F5908
_021F5798:
	cmp r1, #2
	bne _021F57CC
	lsl r1, r2, #0xb
	tst r0, r1
	bne _021F57F2
	ldr r0, _021F5938 ; =0x0000054D
	bl GFL_SndSEPlay
	add r0, r6, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0x34
	str r1, [r5, r0]
	add r0, r6, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	cmp r1, r0
	blt _021F57C6
	mov r0, #0
	add r6, #0x34
	str r0, [r5, r6]
_021F57C6:
	mov r0, #1
	str r0, [sp]
	b _021F58F8
_021F57CC:
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy288_21f6c04
	mov r0, #0xc8
	mov r2, #0xc8
	add r0, #0x88
	str r2, [r5, r0]
	mov r0, #0xc8
	mov r1, #0
	add r0, #0xc0
	str r1, [r5, r0]
	add r2, #0xa8
	str r1, [r5, r2]
_021F57EA:
	ldr r0, _021F593C ; =0x00000552
	b _021F574E
_021F57EE:
	cmp r4, #4
	beq _021F57F4
_021F57F2:
	b _021F590A
_021F57F4:
	b _021F57CC
_021F57F6:
	orr r0, r2
	str r0, [r5, r6]
	mov r0, #0
	add r6, #0x3c
	str r0, [r5, r6]
	mov r7, #1
	ldr r0, _021F5934 ; =0x00000548
	b _021F574E
_021F5806:
	cmp r4, #4
	bne _021F583A
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ovy288_21f6c04
	mov r1, #0xc8
	mov r0, #0xc8
	add r1, #0x88
	str r0, [r5, r1]
	mov r1, #0xc8
	add r1, #0x84
	ldr r2, [r5, r1]
	ldr r1, _021F5940 ; =0xFFFFFBFF
	add r0, #0xa8
	and r2, r1
	mov r1, #0xc8
	add r1, #0x84
	str r2, [r5, r1]
	mov r1, #0xc8
	mov r2, #0
	add r1, #0xc0
	str r2, [r5, r1]
	str r2, [r5, r0]
	b _021F57EA
_021F583A:
	cmp r4, #5
	bne _021F5866
	add r0, r5, #0
	mov r1, #3
	bl ovy288_21f6c98
	mov r0, #0x4b
	lsl r0, r0, #2
	add r1, r0, #0
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r0, #0
	add r1, #0x20
	ldr r2, [r5, r1]
	ldr r1, _021F5940 ; =0xFFFFFBFF
	and r2, r1
	add r1, r0, #0
	add r1, #0x20
	str r2, [r5, r1]
	mov r1, #0
	add r0, #0x5c
	b _021F574A
_021F5866:
	cmp r4, #6
	bne _021F58B0
	mov r1, #0x53
	lsl r1, r1, #2
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x14
	tst r0, r2
	bne _021F590A
	add r0, r1, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	sub r2, r0, #1
	add r0, r1, #0
	add r0, #0x34
	str r2, [r5, r0]
	cmp r2, #0
	bge _021F5896
	add r0, r1, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	add r1, #0x34
	sub r0, r0, #1
	str r0, [r5, r1]
_021F5896:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F5938 ; =0x0000054D
	bl GFL_SndSEPlay
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _021F5940 ; =0xFFFFFBFF
	mov r7, #1
	and r0, r2
	str r0, [r5, r1]
	b _021F5786
_021F58B0:
	cmp r4, #7
	bne _021F590A
	mov r1, #0x53
	lsl r1, r1, #2
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x14
	tst r0, r2
	bne _021F590A
	add r0, r1, #0
	add r0, #0x34
	ldr r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #0
	add r0, #0x34
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	cmp r2, r0
	blt _021F58E0
	mov r0, #0
	add r1, #0x34
	str r0, [r5, r1]
_021F58E0:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F5938 ; =0x0000054D
	bl GFL_SndSEPlay
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _021F5940 ; =0xFFFFFBFF
	mov r7, #1
	and r0, r2
	str r0, [r5, r1]
_021F58F8:
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	bl ovy288_21f6c04
	mov r0, #0xdc
	mov r1, #0xdc
	add r0, #0x74
_021F5908:
	str r1, [r5, r0]
_021F590A:
	cmp r7, #1
	bne _021F591C
	mov r2, #0x62
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #2
	bl ovy288_21f613c
_021F591C:
	ldr r0, [sp]
	cmp r0, #1
	bne _021F5932
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f5944
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f5bf4
_021F5932:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5934: .word 0x00000548
_021F5938: .word 0x0000054D
_021F593C: .word 0x00000552
_021F5940: .word 0xFFFFFBFF
	thumb_func_end ovy288_21f5630

	thumb_func_start ovy288_21f5944
ovy288_21f5944: ; 0x021F5944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	cmp r1, #0
	bne _021F5960
	mov r1, #2
	bl ovy288_21f5ef0
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #4
	orr r0, r2
	str r0, [r5, r1]
_021F5960:
	ldr r0, [r5]
	mov r4, #6
	lsl r4, r4, #6
	ldr r0, [r0, #8]
	ldr r1, [r5, r4]
	bl sub_0201FF08
	ldr r1, [r5]
	mov r0, #0x80
	ldrh r1, [r1, #4]
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r1, [r5, r4]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x14
	ldr r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x84
	bl sub_0204898C
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0x8c
	lsl r2, r7, #0x10
	ldr r0, [r0]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_020243D0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r2, [sp, #0x1c]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	mov r1, #1
	str r1, [sp, #0x18]
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r1, [r5, r4]
	mov r0, #0x3c
	mul r0, r1
	add r0, r5, r0
	add r4, #0x18
	ldr r1, [r0, r4]
	ldr r7, _021F5BE8 ; =0x000018A0
	cmp r1, #1
	bne _021F59F4
	mov r0, #2
	ldr r7, _021F5BEC ; =0x00001060
	str r0, [sp, #0x18]
_021F59F4:
	cmp r1, #2
	beq _021F5A2E
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	lsl r2, r1, #1
	ldr r1, _021F5BF0 ; =0x021F6DD8
	add r0, #0x84
	ldrsh r1, [r1, r2]
	ldr r0, [r0]
	bl sub_0204898C
	add r4, r0, #0
	lsl r0, r7, #0x10
	str r4, [sp]
	mov r1, #0
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #1
	add r0, r5, #0
	mov r2, #0x3e
	mov r3, #0
	str r1, [sp, #0x10]
	bl ovy288_21f62e0
	add r0, r4, #0
	bl GFL_StrBufFree
_021F5A2E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	mov r0, #6
	lsl r0, r0, #6
	add r0, #0x1c
	ldr r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x87
	bl sub_0204898C
	mov r4, #0
	str r0, [sp, #0x20]
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #3
	bl StringSetNumber
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r2, [sp, #0x20]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	str r6, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	str r4, [sp, #0x10]
	bl ovy288_21f62e0
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r5, r0
	mov r0, #6
	lsl r0, r0, #6
	add r0, #0x20
	ldr r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x88
	bl sub_0204898C
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0
	add r2, r7, #0
	bl LoadItemNameToStrbuf
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r2, [sp, #0x24]
	add r1, r6, #0
	bl GFL_WordSetFormatStrbuf
	str r6, [sp]
	mov r0, #0x11
	str r4, [sp, #4]
	lsl r0, r0, #6
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	mov r3, #0
	str r4, [sp, #0x10]
	bl ovy288_21f62e0
	ldr r0, [sp, #0x24]
	bl GFL_StrBufFree
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp, #0x28]
	add r0, #0x30
	str r0, [sp, #0x28]
_021F5AFE:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x3c
	mul r0, r1
	lsl r1, r4, #2
	add r0, r5, r0
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	ldr r0, [r1, r0]
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _021F5B70
	ldr r1, _021F5BF0 ; =0x021F6DD8
	lsl r2, r4, #1
	add r0, r5, #0
	add r2, r1, r2
	mov r1, #0xc
	add r0, #0x84
	ldrsh r1, [r2, r1]
	ldr r0, [r0]
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r2, [sp, #0x14]
	mov r1, #0
	bl LoadMoveNameToStrbuf
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #5
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	add r0, r7, #0
	bl GFL_StrBufFree
	b _021F5B78
_021F5B70:
	add r0, r5, #0
	add r1, r4, #5
	bl ovy288_21f6414
_021F5B78:
	add r4, r4, #1
	cmp r4, #4
	blt _021F5AFE
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0x3c
	mul r0, r2
	add r0, r5, r0
	add r1, #0x24
	ldr r4, [r0, r1]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x89
	bl sub_0204898C
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_02024500
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #0
	bl ovy288_21f62e0
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021F5BE8: .word 0x000018A0
_021F5BEC: .word 0x00001060
_021F5BF0: .word 0x021F6DD8
	thumb_func_end ovy288_21f5944

	thumb_func_start ovy288_21f5bf4
ovy288_21f5bf4: ; 0x021F5BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r0, #8]
	ldr r1, [r4, r1]
	bl sub_0201FF08
	mov r0, #6
	lsl r0, r0, #6
	mov r7, #6
	str r0, [sp]
	add r0, #0x14
	lsl r7, r7, #6
	mov r5, #0
	mov r6, #1
	str r0, [sp]
	add r7, #0x18
_021F5C1C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021F5C3E
	mov r0, #0x3c
	mul r0, r5
	add r3, r4, r0
	ldr r2, [sp]
	add r0, r4, #0
	ldr r2, [r3, r2]
	ldr r3, [r3, r7]
	add r1, r5, #0
	bl ovy288_21f67f4
	mov r3, #1
	b _021F5C40
_021F5C3E:
	mov r3, #0
_021F5C40:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ovy288_21f6ad0
	add r5, r5, #1
	cmp r5, #6
	blt _021F5C1C
	mov r5, #6
	lsl r5, r5, #6
	ldr r1, [r4, r5]
	mov r0, #0x3c
	mul r0, r1
	add r1, r4, r0
	add r0, r5, #0
	add r0, #0x28
	ldr r7, [r1, r0]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	add r3, r7, #0
	bl ovy288_21f6770
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl ovy288_21f6ad0
	ldr r1, [r4, r5]
	mov r0, #0x3c
	mul r0, r1
	add r0, r4, r0
	add r5, #0x2c
	ldr r3, [r0, r5]
	cmp r7, r3
	beq _021F5C96
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ovy288_21f6770
	b _021F5C98
_021F5C96:
	mov r6, #0
_021F5C98:
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	add r3, r6, #0
	mov r5, #0
	bl ovy288_21f6ad0
	mov r0, #7
	lsl r0, r0, #6
	mov r7, #7
	str r0, [sp, #4]
	sub r0, #0x40
	lsl r7, r7, #6
	str r0, [sp, #4]
	sub r7, #0x10
_021F5CB6:
	ldr r0, [sp, #4]
	ldr r1, [r4, r0]
	mov r0, #0x3c
	mul r0, r1
	add r1, r4, r0
	lsl r0, r5, #2
	add r6, r1, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021F5CDE
	mov r3, #7
	lsl r3, r3, #6
	ldr r3, [r6, r3]
	add r0, r4, #0
	add r1, r5, #2
	mov r2, #1
	bl ovy288_21f6770
	mov r3, #1
	b _021F5CE0
_021F5CDE:
	mov r3, #0
_021F5CE0:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #2
	bl ovy288_21f6ad0
	add r5, r5, #1
	cmp r5, #4
	blt _021F5CB6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f5bf4

	thumb_func_start ovy288_21f5cf4
ovy288_21f5cf4: ; 0x021F5CF4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_021F5CFC:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ovy288_21f6ad0
	add r4, r4, #1
	cmp r4, #6
	blt _021F5CFC
	mov r4, #1
	mov r7, #0
_021F5D12:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	add r3, r7, #0
	bl ovy288_21f6ad0
	add r5, r5, #1
	cmp r5, #6
	blt _021F5D12
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy288_21f5cf4

	thumb_func_start ovy288_21f5d28
ovy288_21f5d28: ; 0x021F5D28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #1
	bl sub_021F618C
	cmp r0, #1
	bne _021F5D42
	mov r0, #0x52
	sub r1, r4, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F5D42:
	mov r6, #0x51
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	cmp r1, #9
	blo _021F5D50
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F5D50:
	lsl r2, r1, #2
	ldr r1, _021F5D70 ; =0x021F720C
	add r0, r5, #0
	ldr r1, [r1, r2]
	blx r1
	add r0, r5, #0
	bl sub_021F619C
	add r0, r6, #4
	ldr r1, [r5, r0]
	sub r0, r4, #2
	cmp r1, r0
	bne _021F5D6C
	mov r4, #0
_021F5D6C:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F5D70: .word 0x021F720C
	thumb_func_end ovy288_21f5d28
_021F5D74:
	.byte 0x52, 0x21, 0x89, 0x00, 0x00, 0x22, 0x43, 0x58, 0xD2, 0x43, 0x93, 0x42
	.byte 0x01, 0xD0, 0x09, 0x1F, 0x43, 0x50, 0x70, 0x47

	thumb_func_start ovy288_21f5d88
ovy288_21f5d88: ; 0x021F5D88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r6, #0
	str r0, [sp]
	add r0, r6, #0
	str r0, [sp, #4]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r0, #0
	sub r2, #0x1c
	mov ip, r2
	add r2, r0, #0
	str r2, [sp, #0x10]
	sub r2, #0x18
	str r2, [sp, #0x10]
	add r2, r0, #0
	str r2, [sp, #0xc]
	sub r2, #0x14
	str r2, [sp, #0xc]
	add r2, r0, #0
	str r2, [sp, #8]
	sub r2, #0x10
	str r2, [sp, #8]
	add r2, r0, #0
	add r1, r0, #0
	str r2, [sp, #0x20]
	sub r2, #8
	add r1, #0x10
	str r2, [sp, #0x20]
	sub r7, r0, #4
_021F5DC4:
	mov r2, #0x3c
	add r3, r6, #0
	mul r3, r2
	ldr r2, [sp]
	add r4, r2, r3
	mov r3, #0
	mov r2, ip
	str r3, [r4, r2]
	ldr r2, [sp, #0x10]
	str r3, [r4, r2]
	ldr r2, [sp, #0xc]
	str r3, [r4, r2]
	ldr r2, [sp, #8]
	str r3, [r4, r2]
	ldr r2, [sp, #0x20]
	str r3, [r4, r2]
	mov r2, #0
	str r2, [r4, r7]
_021F5DE8:
	lsl r2, r3, #2
	ldr r5, [sp, #4]
	add r2, r4, r2
	str r5, [r2, r0]
	add r3, r3, #1
	str r5, [r2, r1]
	cmp r3, #4
	blt _021F5DE8
	add r6, r6, #1
	cmp r6, #6
	blt _021F5DC4
	mov r1, #0x61
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	ble _021F5EEA
_021F5E0A:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_0201FF08
	ldr r1, [sp, #4]
	mov r2, #0x3c
	mul r2, r1
	ldr r1, [sp]
	add r7, r0, #0
	add r6, r1, r2
	mov r1, #5
	mov r2, #0
	mov r5, #0
	bl sub_0201CCF8
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r6, r1]
	str r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_0201CEB4
	ldr r1, [sp, #0x14]
	mov r4, #0x9e
	add r1, r1, #4
	str r0, [r6, r1]
	add r0, r7, #0
	mov r1, #0x9e
	mov r2, #0
	bl sub_0201CCF8
	add r4, #0xfe
	str r0, [r6, r4]
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r1, #0xc
	str r0, [r6, r1]
	add r0, r7, #0
	mov r1, #0xa
	bl sub_0201CCF8
	ldr r1, [sp, #0x14]
	mov r4, #0xae
	add r1, #0x10
	str r0, [r6, r1]
	add r0, r7, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CCF8
	add r4, #0xfa
	str r0, [r6, r4]
	add r0, r7, #0
	mov r4, #0xaf
	mov r1, #0xaf
	mov r2, #0
	bl sub_0201CCF8
	add r4, #0xfd
	str r0, [r6, r4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	add r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, #0x1c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x1c
	str r0, [sp, #0x14]
_021F5EA6:
	lsl r0, r5, #2
	add r1, r5, #0
	add r4, r6, r0
	add r0, r7, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0201CCF8
	ldr r1, [sp, #0x18]
	str r0, [r4, r1]
	ldr r0, [sp, #0x14]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F5ED0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_02021280
	ldr r1, [sp, #0x1c]
	str r0, [r4, r1]
_021F5ED0:
	add r5, r5, #1
	cmp r5, #4
	blt _021F5EA6
	ldr r0, [sp, #4]
	mov r1, #0x61
	add r0, r0, #1
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021F5E0A
_021F5EEA:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy288_21f5d88

	thumb_func_start ovy288_21f5ef0
ovy288_21f5ef0: ; 0x021F5EF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	ldr r0, _021F5F70 ; =0x021F7200
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r4, #0
	str r0, [sp, #0x1c]
_021F5F00:
	ldr r1, [sp, #0x1c]
	lsl r2, r4, #3
	ldr r0, [sp, #0x1c]
	ldrh r1, [r1, r2]
	add r0, r0, r2
	ldr r2, _021F5F74 ; =0x0000FFFF
	cmp r1, r2
	beq _021F5F6C
	ldrh r2, [r0, #2]
	mov r6, #0xf1
	lsl r6, r6, #6
	str r2, [sp, #0x14]
	ldrh r2, [r0, #6]
	ldrh r0, [r0, #4]
	cmp r0, #1
	bne _021F5F24
	mov r6, #0x11
	lsl r6, r6, #6
_021F5F24:
	mov r0, #0
	mov r5, #0
	str r0, [sp, #0x18]
	cmp r1, #0
	bne _021F5F34
	mov r0, #0x70
	mov r5, #2
	str r0, [sp, #0x18]
_021F5F34:
	lsl r0, r2, #2
	lsl r2, r1, #1
	ldr r1, _021F5F78 ; =0x021F6DC6
	add r0, r7, r0
	add r0, #0x84
	ldrsh r1, [r1, r2]
	ldr r0, [r0]
	bl sub_0204898C
	str r0, [sp]
	str r5, [sp, #4]
	str r0, [sp, #0x20]
	str r6, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r3, #0
	bl ovy288_21f62e0
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #0xe
	blt _021F5F00
_021F5F6C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F5F70: .word 0x021F7200
_021F5F74: .word 0x0000FFFF
_021F5F78: .word 0x021F6DC6
	thumb_func_end ovy288_21f5ef0

	thumb_func_start ovy288_21f5f7c
ovy288_21f5f7c: ; 0x021F5F7C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0x29
	bl sub_0204898C
	str r0, [sp]
	mov r5, #0
	mov r4, #0
_021F5F90:
	add r0, r7, #0
	add r0, #0x88
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x15
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_020485BC
	cmp r0, #1
	bne _021F5FB4
	add r0, r6, #0
	bl GFL_StrBufFree
	b _021F5FC2
_021F5FB4:
	add r0, r6, #0
	bl GFL_StrBufFree
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x14
	blt _021F5F90
_021F5FC2:
	mov r0, #0x5e
	lsl r0, r0, #2
	str r5, [r7, r0]
	ldr r0, [sp]
	bl GFL_StrBufFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f5f7c

	thumb_func_start ovy288_21f5fd0
ovy288_21f5fd0: ; 0x021F5FD0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _021F6068
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	ldr r0, _021F60C8 ; =0xFFCFFFFF
	and r3, r0
	add r0, r1, #0
	str r3, [r4, r1]
	add r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _021F5FF6
	mov r0, #1
	lsl r0, r0, #0x14
	orr r0, r3
	str r0, [r4, r1]
_021F5FF6:
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	lsr r0, r3, #0x1f
	add r0, r3, r0
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1f
	sub r5, r5, r6
	mov r3, #0x1f
	ror r5, r3
	asr r0, r0, #1
	add r3, r6, r5
	add r5, r0, r3
	sub r0, r1, #4
	ldr r3, [r4, r0]
	sub r0, r5, #1
	cmp r3, r0
	blt _021F602A
	add r0, r1, #0
	sub r0, #0x2c
	ldr r3, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	orr r0, r3
	sub r1, #0x2c
	str r0, [r4, r1]
_021F602A:
	cmp r2, #1
	bne _021F60C6
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	beq _021F6040
	mov r2, #5
	b _021F6042
_021F6040:
	mov r2, #3
_021F6042:
	add r0, r4, #0
	mov r1, #0
	bl ovy288_21f6c04
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	beq _021F605C
	mov r2, #8
	b _021F605E
_021F605C:
	mov r2, #6
_021F605E:
	add r0, r4, #0
	mov r1, #1
	bl ovy288_21f6c04
	pop {r4, r5, r6, pc}
_021F6068:
	cmp r1, #2
	bne _021F60C6
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	ldr r0, _021F60C8 ; =0xFFCFFFFF
	and r3, r0
	add r0, r1, #0
	str r3, [r4, r1]
	add r0, #0x38
	ldr r0, [r4, r0]
	cmp r0, #1
	bgt _021F608A
	mov r0, #3
	lsl r0, r0, #0x14
	orr r0, r3
	str r0, [r4, r1]
_021F608A:
	cmp r2, #1
	bne _021F60C6
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x14
	tst r0, r1
	beq _021F60A0
	mov r2, #5
	b _021F60A2
_021F60A0:
	mov r2, #3
_021F60A2:
	add r0, r4, #0
	mov r1, #0
	bl ovy288_21f6c04
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	beq _021F60BC
	mov r2, #8
	b _021F60BE
_021F60BC:
	mov r2, #6
_021F60BE:
	add r0, r4, #0
	mov r1, #1
	bl ovy288_21f6c04
_021F60C6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F60C8: .word 0xFFCFFFFF
	thumb_func_end ovy288_21f5fd0

	thumb_func_start ovy288_21f60cc
ovy288_21f60cc: ; 0x021F60CC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x12
	add r1, r2, #0
	tst r1, r0
	beq _021F6100
	lsr r0, r0, #2
	tst r0, r2
	beq _021F60EA
	mov r2, #5
	b _021F60EC
_021F60EA:
	mov r2, #3
_021F60EC:
	add r0, r4, #0
	mov r1, #0
	bl ovy288_21f6c04
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021F6134 ; =0xFFFBFFFF
	and r0, r2
	str r0, [r4, r1]
_021F6100:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x12
	add r1, r2, #0
	tst r1, r0
	beq _021F6130
	lsr r0, r0, #2
	tst r0, r2
	beq _021F611A
	mov r2, #8
	b _021F611C
_021F611A:
	mov r2, #6
_021F611C:
	add r0, r4, #0
	mov r1, #1
	bl ovy288_21f6c04
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021F6138 ; =0xFFF7FFFF
	and r0, r2
	str r0, [r4, r1]
_021F6130:
	pop {r4, pc}
	nop
_021F6134: .word 0xFFFBFFFF
_021F6138: .word 0xFFF7FFFF
	thumb_func_end ovy288_21f60cc

	thumb_func_start ovy288_21f613c
ovy288_21f613c: ; 0x021F613C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x53
	lsl r1, r1, #2
	add r3, r2, #0
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xa
	tst r1, r2
	beq _021F6154
	mov r1, #1
	b _021F6156
_021F6154:
	mov r1, #0
_021F6156:
	add r2, r4, #0
	bl ovy288_21f6bb4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy288_21f613c

	thumb_func_start sub_021F6160
sub_021F6160: ; 0x021F6160
	ldr r2, [r0]
	ldr r1, [r2, #0x10]
	sub r3, r1, #1
	lsr r1, r3, #0x1f
	add r1, r3, r1
	asr r3, r1, #1
	ldr r1, _021F6188 ; =0x00000174
	str r3, [r0, r1]
	bmi _021F617C
	add r1, r1, #4
	ldr r2, [r2, #0x10]
	ldr r1, [r0, r1]
	cmp r2, r1
	ble _021F6184
_021F617C:
	mov r1, #0x5d
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
_021F6184:
	bx lr
	nop
_021F6188: .word 0x00000174
	thumb_func_end sub_021F6160

	thumb_func_start sub_021F618C
sub_021F618C: ; 0x021F618C
	ldr r0, [r0]
	mov r1, #0
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021F6198
	mov r1, #1
_021F6198:
	add r0, r1, #0
	bx lr
	thumb_func_end sub_021F618C

	thumb_func_start sub_021F619C
sub_021F619C: ; 0x021F619C
	bx lr
	.align 2, 0
	thumb_func_end sub_021F619C

	thumb_func_start sub_021F61A0
sub_021F61A0: ; 0x021F61A0
	ldr r3, _021F61A4 ; =ovy288_21f61a8
	bx r3
	.align 2, 0
_021F61A4: .word ovy288_21f61a8
	thumb_func_end sub_021F61A0

	thumb_func_start ovy288_21f61a8
ovy288_21f61a8: ; 0x021F61A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r7]
	ldr r2, _021F6258 ; =0x00007FFF
	ldrh r0, [r0, #4]
	ldr r5, _021F625C ; =0x021F6F1C
	ldr r4, _021F6260 ; =0x021F6F24
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, #0x64
	add r3, r1, #0
	and r3, r2
	add r1, r2, #1
	orr r1, r3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	ldr r1, [r7]
	mov r7, #0
	ldr r2, [r1, #0xc]
	ldr r1, _021F6264 ; =0x021F706C
	str r7, [sp]
	ldrb r1, [r1, r2]
	ldr r2, _021F6268 ; =0x021F6FB8
	add r6, r0, #0
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1c
	mov ip, r1
	add r1, r2, r1
	str r1, [sp, #0x14]
	ldr r1, [sp, #0xc]
	mov r3, ip
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	ldrb r2, [r2, r3]
	ldr r3, [sp, #0x14]
	ldrb r1, [r1, #1]
	ldrb r3, [r3, #2]
	bl sub_0204B0D4
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
_021F6204:
	ldrb r2, [r5]
	cmp r2, #0xff
	beq _021F6226
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r3, [r5, #2]
	add r0, r6, #0
	bl sub_0204ADA8
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #8
	blt _021F6204
_021F6226:
	ldr r0, [sp, #0xc]
	mov r5, #0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_021F622E:
	ldrb r2, [r4]
	cmp r2, #0xff
	beq _021F624E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldrb r1, [r4, #1]
	ldrb r3, [r4, #2]
	add r0, r6, #0
	bl sub_0204AF50
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #8
	blt _021F622E
_021F624E:
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F6258: .word 0x00007FFF
_021F625C: .word 0x021F6F1C
_021F6260: .word 0x021F6F24
_021F6264: .word 0x021F706C
_021F6268: .word 0x021F6FB8
	thumb_func_end ovy288_21f61a8

	thumb_func_start ovy288_21f626c
ovy288_21f626c: ; 0x021F626C
	push {r4, lr}
	ldr r2, _021F628C ; =0x021F6F54
	lsl r4, r1, #2
	ldrsh r2, [r2, r4]
	mov r0, #7
	mov r1, #0
	bl sub_02044CFC
	ldr r2, _021F6290 ; =0x021F6F56
	mov r0, #7
	ldrsh r2, [r2, r4]
	mov r1, #3
	bl sub_02044CFC
	pop {r4, pc}
	nop
_021F628C: .word 0x021F6F54
_021F6290: .word 0x021F6F56
	thumb_func_end ovy288_21f626c

	thumb_func_start ovy288_21f6294
ovy288_21f6294: ; 0x021F6294
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsl r2, r1, #2
	ldr r1, _021F62DC ; =0x021F7250
	add r6, r0, #0
	ldr r5, [r1, r2]
	mov r1, #0x59
	mov r4, #0
	lsl r1, r1, #2
	str r4, [r6, r1]
	bl ovy288_21f63e0
	mov r7, #1
_021F62AE:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021F62D6
	ldrb r1, [r5, #4]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	str r7, [sp, #8]
	ldrb r1, [r5, #1]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #3
	add r1, r6, r1
	add r4, r4, #1
	add r5, r5, #6
	str r0, [r1, #0x14]
	cmp r4, #0xe
	blt _021F62AE
_021F62D6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F62DC: .word 0x021F7250
	thumb_func_end ovy288_21f6294

	thumb_func_start ovy288_21f62e0
ovy288_21f62e0: ; 0x021F62E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	ldr r2, [sp, #0x48]
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x38]
	cmp r2, #0
	bne _021F62F8
	bl ovy288_21f6414
_021F62F8:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _021F6348
	ldr r1, [r5]
	ldr r2, [sp, #0x3c]
	ldr r1, [r1]
	add r0, r4, #0
	bl ovy288_21f64b8
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x10]
	lsl r6, r6, #3
	str r0, [sp, #0x14]
	add r0, r5, r6
	ldr r0, [r0, #0x14]
	bl BmpWin_GetBitmap
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0xc]
	sub r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5]
	asr r2, r2, #0x10
	ldr r0, [r0]
	asr r3, r3, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrh r0, [r0, #8]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	bl sub_02021C7C
	mov r1, #1
	add r0, r5, r6
	strb r1, [r0, #0x18]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021F6348:
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #0x3c]
	add r0, r4, #0
	bl ovy288_21f64b8
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x10]
	lsl r6, r6, #3
	str r0, [sp, #0x10]
	add r0, r5, r6
	ldr r0, [r0, #0x14]
	bl BmpWin_GetBitmap
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0xc]
	sub r2, r7, r2
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrh r0, [r0, #8]
	asr r3, r3, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_02021C7C
	mov r1, #1
	add r0, r5, r6
	strb r1, [r0, #0x18]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy288_21f62e0

	thumb_func_start ovy288_21f6390
ovy288_21f6390: ; 0x021F6390
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5]
	mov r0, #0x80
	ldrh r1, [r1, #4]
	add r7, r2, #0
	str r3, [sp, #0x14]
	bl GFL_StrBufCreate
	mov r1, #1
	str r1, [sp]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	mov r3, #2
	add r4, r0, #0
	bl sub_02024A14
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ovy288_21f62e0
	add r0, r4, #0
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f6390

	thumb_func_start ovy288_21f63e0
ovy288_21f63e0: ; 0x021F63E0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021F63E8:
	lsl r0, r4, #3
	add r5, r6, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021F640A
	bl BmpWin_GetBitmap
	add r1, r7, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x14]
	bl sub_020484B4
	ldr r0, [r5, #0x14]
	bl sub_02048210
	str r7, [r5, #0x14]
_021F640A:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021F63E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy288_21f63e0

	thumb_func_start ovy288_21f6414
ovy288_21f6414: ; 0x021F6414
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #3
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021F6432
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r1, #1
	add r0, r5, r4
	strb r1, [r0, #0x18]
_021F6432:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy288_21f6414

	thumb_func_start ovy288_21f6434
ovy288_21f6434: ; 0x021F6434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02021A3C
	mov r0, #0x59
	lsl r0, r0, #2
	add r0, r5, r0
	mov r6, #0
	str r0, [sp]
_021F6448:
	lsl r0, r6, #3
	add r4, r5, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F64B0
	ldrb r1, [r4, #0x18]
	ldr r7, [r5, #0x10]
	cmp r1, #0
	beq _021F6474
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021F6474
	ldr r0, [r4, #0x14]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r4, #0x18]
_021F6474:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _021F647E
	mov r0, #1
	b _021F6480
_021F647E:
	mov r0, #0
_021F6480:
	cmp r0, #1
	bne _021F64B0
	ldr r0, [sp]
	mov r7, #1
	lsl r7, r6
	ldr r0, [r0]
	tst r0, r7
	bne _021F64B0
	ldr r0, [r4, #0x14]
	bl sub_0204826C
	ldr r0, [r4, #0x14]
	bl sub_020484D4
	bl sub_02044F90
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, #0
	mov r0, #0x59
	orr r1, r7
	lsl r0, r0, #2
	str r1, [r5, r0]
_021F64B0:
	add r6, r6, #1
	cmp r6, #0xe
	blt _021F6448
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f6434

	thumb_func_start ovy288_21f64b8
ovy288_21f64b8: ; 0x021F64B8
	push {r3, lr}
	cmp r2, #1
	bne _021F64CA
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_021F64CA:
	cmp r2, #2
	bne _021F64DA
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, pc}
_021F64DA:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy288_21f64b8

	thumb_func_start sub_021F64E0
sub_021F64E0: ; 0x021F64E0
	ldr r0, _021F64EC ; =0x021F7244
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _021F64F0 ; =sub_0203DA0C
	bx r3
	nop
_021F64EC: .word 0x021F7244
_021F64F0: .word sub_0203DA0C
	thumb_func_end sub_021F64E0

	thumb_func_start ovy288_21f64f4
ovy288_21f64f4: ; 0x021F64F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #0x52
	ldrh r2, [r1, #4]
	ldr r1, _021F6578 ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	mov r4, #0
	str r4, [sp]
	mov r1, #3
	str r1, [sp, #4]
	ldr r1, [r5]
	mov r2, #1
	ldrh r1, [r1, #4]
	mov r3, #0x80
	add r6, r0, #0
	str r1, [sp, #8]
	mov r1, #0x21
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1]
	ldr r3, [r5]
	add r0, r6, #0
	ldrh r3, [r3, #4]
	mov r1, #0x3b
	mov r2, #0x3e
	mov r7, #0x3e
	bl Oam_LoadNCERFile
	add r7, #0xf2
	str r0, [r5, r7]
	add r7, r4, #0
_021F6546:
	add r0, r7, #0
	bl sub_0202D7F4
	add r1, r0, #0
	ldr r0, [r5]
	add r2, r7, #0
	ldrh r0, [r0, #4]
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r1, r5, r1
	add r1, #0xf8
	add r4, r4, #1
	str r0, [r1]
	cmp r4, #6
	blo _021F6546
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F6578: .word 0x00007FFF
	thumb_func_end ovy288_21f64f4

	thumb_func_start ovy288_21f657c
ovy288_21f657c: ; 0x021F657C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #7
	ldrh r2, [r1, #4]
	ldr r1, _021F6674 ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	add r6, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #1
	ldrh r0, [r0, #4]
	mov r3, #0
	mov r4, #0
	str r0, [sp]
	add r0, r6, #0
	bl sub_0204BC48
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1]
	bl sub_02021154
	add r7, r0, #0
	bl sub_020211C8
	ldr r3, [r5]
	add r2, r0, #0
	ldrh r3, [r3, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl Oam_LoadNCERFile
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	str r0, [sp, #0x10]
	sub r0, #0x24
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r0, [sp, #0xc]
	add r0, #0x60
	str r0, [sp, #0xc]
	add r0, r1, #0
	str r0, [sp, #8]
	add r0, #0x64
	str r0, [sp, #8]
	add r0, r1, #0
	add r7, r1, #0
	str r1, [sp, #4]
	add r0, #0x50
	sub r7, #0x24
	str r0, [sp, #4]
_021F65FA:
	ldr r0, [sp, #4]
	ldr r0, [r5, r0]
	cmp r4, r0
	bhs _021F663C
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl sub_0201FF08
	mov r0, #0x3c
	mul r0, r4
	add r3, r5, r0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r0, [r3, r0]
	ldr r2, [r3, r2]
	mov r1, #1
	mov r3, #0
	bl sub_02020F94
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #0
	ldrh r0, [r0, #4]
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	b _021F6662
_021F663C:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02020F94
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #0
	ldrh r0, [r0, #4]
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	str r0, [r2, r1]
_021F6662:
	add r4, r4, #1
	cmp r4, #6
	blo _021F65FA
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F6674: .word 0x00007FFF
	thumb_func_end ovy288_21f657c

	thumb_func_start ovy288_21f6678
ovy288_21f6678: ; 0x021F6678
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #0xb
	ldrh r2, [r1, #4]
	ldr r1, _021F66F0 ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, [r5]
	mov r2, #1
	ldrh r1, [r1, #4]
	mov r3, #0xe0
	add r6, r0, #0
	str r1, [sp, #8]
	ldr r1, _021F66F4 ; =0x000001A5
	mov r4, #0xe0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xf0
	str r0, [r1]
	ldr r3, [r5]
	mov r1, #0xe0
	mov r2, #0xe0
	ldrh r3, [r3, #4]
	add r0, r6, #0
	add r1, #0xc9
	add r2, #0xca
	bl Oam_LoadNCERFile
	mov r1, #0xe0
	add r1, #0x58
	str r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #0xe0
	ldrh r0, [r0, #4]
	add r1, #0xc8
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl Oam_LoadNCGRFile
	add r4, #0x48
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F66F0: .word 0x00007FFF
_021F66F4: .word 0x000001A5
	thumb_func_end ovy288_21f6678

	thumb_func_start ovy288_21f66f8
ovy288_21f66f8: ; 0x021F66F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #0x64
	ldrh r2, [r1, #4]
	ldr r1, _021F676C ; =0x00007FFF
	mov r4, #0x64
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #5
	str r1, [sp, #4]
	ldr r1, [r5]
	mov r3, #1
	ldrh r1, [r1, #4]
	mov r2, #1
	add r3, #0xff
	str r1, [sp, #8]
	mov r1, #0xa
	add r6, r0, #0
	bl Oam_LoadNCLRFile
	add r1, r5, #0
	add r1, #0xf4
	str r0, [r1]
	ldr r3, [r5]
	add r0, r6, #0
	ldrh r3, [r3, #4]
	mov r1, #0x1c
	mov r2, #0x28
	bl Oam_LoadNCERFile
	mov r1, #0x64
	add r1, #0xd8
	str r0, [r5, r1]
	ldr r0, [r5]
	mov r1, #0x1a
	ldrh r0, [r0, #4]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r6, #0
	bl Oam_LoadNCGRFile
	add r4, #0xc8
	str r0, [r5, r4]
	add r0, r6, #0
	bl GFL_ArcToolFree
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F676C: .word 0x00007FFF
	thumb_func_end ovy288_21f66f8

	thumb_func_start ovy288_21f6770
ovy288_21f6770: ; 0x021F6770
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5]
	ldr r7, _021F67F0 ; =0x00007FFF
	ldrh r1, [r1, #4]
	add r4, r3, #0
	mov r0, #0x52
	add r2, r1, #0
	and r2, r7
	add r1, r7, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7F4
	add r1, r0, #0
	ldr r0, [r5]
	add r3, sp, #8
	ldrh r0, [r0, #4]
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
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp, #8]
	bl sub_0204BA40
	add r0, r7, #0
	bl GFL_HeapFree
	ldr r0, [sp, #4]
	bl GFL_ArcToolFree
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r1, r0, #0
	add r0, r5, r6
	add r0, #0x94
	ldr r0, [r0]
	mov r2, #1
	bl sub_0204C378
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021F67F0: .word 0x00007FFF
	thumb_func_end ovy288_21f6770

	thumb_func_start ovy288_21f67f4
ovy288_21f67f4: ; 0x021F67F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	add r2, r3, #0
	mov r1, #0
	mov r3, #0
	bl sub_02021034
	add r1, r0, #0
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xac
	ldr r0, [r0]
	mov r2, #0
	bl sub_0204C378
	pop {r3, r4, r5, pc}
	thumb_func_end ovy288_21f67f4

	thumb_func_start ovy288_21f6818
ovy288_21f6818: ; 0x021F6818
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	str r1, [sp, #0xc]
	add r5, r2, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #8
	add r4, r3, #0
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
	bne _021F6852
	add r2, r7, #0
	str r2, [sp, #0x2c]
	add r2, #0x94
_021F6850:
	b _021F6874
_021F6852:
	cmp r2, #1
	bne _021F685E
	add r2, r7, #0
	str r2, [sp, #0x2c]
	add r2, #0xac
	b _021F6850
_021F685E:
	cmp r2, #2
	bne _021F686A
	add r2, r7, #0
	str r2, [sp, #0x2c]
	add r2, #0xc4
	b _021F6850
_021F686A:
	cmp r2, #3
	bne _021F6876
	add r2, r7, #0
	str r2, [sp, #0x2c]
	add r2, #0xd4
_021F6874:
	str r2, [sp, #0x2c]
_021F6876:
	mov r2, #0
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _021F6954
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	lsl r0, r0, #0x10
	add r1, r7, r1
	lsr r0, r0, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x28]
_021F6892:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _021F6954
	ldrb r0, [r5, #6]
	lsl r4, r0, #1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021F6B34
	str r0, [sp, #0x24]
	add r0, r7, #0
	add r1, r4, #1
	bl sub_021F6B34
	ldr r2, [sp, #0x24]
	add r1, sp, #0x30
	strh r2, [r1]
	strh r0, [r1, #2]
	ldrb r1, [r5]
	add r0, sp, #0x30
	ldr r2, [sp, #0x20]
	strh r1, [r0, #4]
	ldrb r1, [r5, #1]
	add r2, r7, r2
	mov r3, #0x13
	strb r1, [r0, #6]
	ldrb r1, [r5, #2]
	ldr r6, [sp, #0x14]
	add r2, #0xe8
	strb r1, [r0, #7]
	ldr r0, [sp, #0x1c]
	ldrb r1, [r5, #7]
	lsl r4, r0, #2
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r7]
	add r1, r7, r1
	ldrh r0, [r0, #4]
	add r1, #0xf8
	lsl r3, r3, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	ldr r1, [sp, #0x2c]
	str r0, [r1, r4]
	ldrb r0, [r5, #3]
	mov r1, #0
	cmp r0, #1
	bne _021F6904
	mov r1, #1
_021F6904:
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, r4]
	bl sub_0204C124
	ldrb r2, [r5, #5]
	mov r1, #0
	lsl r2, r2, #0x1f
	beq _021F6916
	mov r1, #1
_021F6916:
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, r4]
	bl sub_0204C520
	ldrb r1, [r5, #5]
	mov r0, #2
	tst r0, r1
	beq _021F6932
	ldr r0, [sp, #0x2c]
	mov r1, #1
	ldr r0, [r0, r4]
	mov r2, #1
	bl sub_0204C2B0
_021F6932:
	ldrb r1, [r5, #5]
	mov r0, #4
	tst r0, r1
	beq _021F6946
	ldr r0, [sp, #0x2c]
	mov r1, #0
	ldr r0, [r0, r4]
	mov r2, #1
	bl sub_0204C2B0
_021F6946:
	ldr r0, [sp, #0x1c]
	add r5, #8
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _021F6892
_021F6954:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f6818

	thumb_func_start ovy288_21f6958
ovy288_21f6958: ; 0x021F6958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, [r5]
	mov r0, #0x15
	ldrh r3, [r2, #4]
	ldr r2, _021F69EC ; =0x00007FFF
	mov r1, #0
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r4, #0
	bl sub_0204BF1C
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r5, #0
	bl ovy288_21f64f4
	add r0, r5, #0
	bl ovy288_21f657c
	add r0, r5, #0
	bl ovy288_21f6678
	add r0, r5, #0
	bl ovy288_21f66f8
	ldr r2, _021F69F0 ; =0x021F70FB
	ldr r3, _021F69F4 ; =0x021F6F2C
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f6818
	ldr r2, _021F69F8 ; =0x021F7133
	ldr r3, _021F69FC ; =0x021F6F36
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f6818
	ldr r2, _021F6A00 ; =0x021F7044
	ldr r3, _021F6A04 ; =0x021F6F4A
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f6818
	ldr r2, _021F6A08 ; =0x021F7095
	ldr r3, _021F6A0C ; =0x021F6F40
	add r0, r5, #0
	mov r1, #1
	bl ovy288_21f6818
	add r6, r4, #0
	mov r7, #1
_021F69C8:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0204C378
	add r4, r4, #1
	cmp r4, #4
	blt _021F69C8
	add r5, #0xe0
	ldr r0, [r5]
	add r1, r7, #0
	bl sub_0204C318
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F69EC: .word 0x00007FFF
_021F69F0: .word 0x021F70FB
_021F69F4: .word 0x021F6F2C
_021F69F8: .word 0x021F7133
_021F69FC: .word 0x021F6F36
_021F6A00: .word 0x021F7044
_021F6A04: .word 0x021F6F4A
_021F6A08: .word 0x021F7095
_021F6A0C: .word 0x021F6F40
	thumb_func_end ovy288_21f6958

	thumb_func_start ovy288_21f6a10
ovy288_21f6a10: ; 0x021F6A10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
_021F6A16:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #6
	blt _021F6A16
	mov r4, #0
_021F6A2A:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #6
	blt _021F6A2A
	mov r4, #0
_021F6A3E:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #4
	blt _021F6A3E
	mov r4, #0
_021F6A52:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xd4
	ldr r0, [r0]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #5
	blt _021F6A52
	mov r4, #0
	sub r7, r4, #1
_021F6A68:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xe8
	ldr r0, [r0]
	cmp r0, r7
	beq _021F6A7E
	bl sub_0204BCD0
	add r0, r5, r6
	add r0, #0xe8
	str r7, [r0]
_021F6A7E:
	add r4, r4, #1
	cmp r4, #4
	blt _021F6A68
	mov r4, #0
	sub r7, r4, #1
_021F6A88:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, r7
	beq _021F6A9E
	bl sub_0204B98C
	add r0, r5, r6
	add r0, #0xf8
	str r7, [r0]
_021F6A9E:
	add r4, r4, #1
	cmp r4, #0xe
	blt _021F6A88
	mov r4, #0
	sub r7, r4, #1
_021F6AA8:
	lsl r0, r4, #2
	add r6, r5, r0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, r7
	beq _021F6AC0
	bl sub_0204BE64
	mov r0, #0x13
	lsl r0, r0, #4
	str r7, [r6, r0]
_021F6AC0:
	add r4, r4, #1
	cmp r4, #4
	blt _021F6AA8
	add r5, #0x90
	ldr r0, [r5]
	bl sub_0204BF98
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy288_21f6a10

	thumb_func_start ovy288_21f6ad0
ovy288_21f6ad0: ; 0x021F6AD0
	push {r3, lr}
	cmp r1, #0
	bne _021F6AEA
	cmp r2, #6
	bge _021F6B30
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0x94
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_021F6AEA:
	cmp r1, #1
	bne _021F6B02
	cmp r2, #6
	bge _021F6B30
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xac
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_021F6B02:
	cmp r1, #2
	bne _021F6B1A
	cmp r2, #4
	bge _021F6B30
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
	pop {r3, pc}
_021F6B1A:
	cmp r1, #3
	bne _021F6B30
	cmp r2, #5
	bge _021F6B30
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, #0xd4
	ldr r0, [r0]
	add r1, r3, #0
	bl sub_0204C124
_021F6B30:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy288_21f6ad0

	thumb_func_start sub_021F6B34
sub_021F6B34: ; 0x021F6B34
	cmp r1, #0x50
	blo _021F6B3C
	mov r0, #0
	bx lr
_021F6B3C:
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r2, [r0, r2]
	lsl r0, r1, #1
	ldrsh r0, [r2, r0]
	bx lr
	thumb_func_end sub_021F6B34

	thumb_func_start ovy288_21f6b48
ovy288_21f6b48: ; 0x021F6B48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	mov r4, #0
	mov r7, #2
_021F6B56:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy288_21f6ad0
	add r4, r4, #1
	cmp r4, #4
	blt _021F6B56
	cmp r6, #1
	bne _021F6BAA
	ldr r0, [sp]
	mov r4, #0
	lsl r7, r0, #2
_021F6B72:
	add r0, r4, r7
	lsl r1, r0, #1
	ldr r0, _021F6BB0 ; =0x021F701C
	ldrsh r0, [r0, r1]
	lsl r6, r0, #1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021F6B34
	add r1, sp, #4
	strh r0, [r1]
	add r0, r5, #0
	add r1, r6, #1
	bl sub_021F6B34
	add r1, sp, #4
	strh r0, [r1, #2]
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, sp, #4
	mov r2, #1
	bl Oam_SetSpritePosData
	add r4, r4, #1
	cmp r4, #4
	blt _021F6B72
_021F6BAA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6BB0: .word 0x021F701C
	thumb_func_end ovy288_21f6b48

	thumb_func_start ovy288_21f6bb4
ovy288_21f6bb4: ; 0x021F6BB4
	push {r3, lr}
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r3, r2, #1
	ldr r2, _021F6BD0 ; =0x021F6FE4
	ldrsh r2, [r2, r3]
	mov r3, #0
	mvn r3, r3
	cmp r2, r3
	beq _021F6BCC
	bl ovy288_21f6b48
_021F6BCC:
	pop {r3, pc}
	nop
_021F6BD0: .word 0x021F6FE4
	thumb_func_end ovy288_21f6bb4

	thumb_func_start ovy288_21f6bd4
ovy288_21f6bd4: ; 0x021F6BD4
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021F6C00 ; =0x021F6FCC
	add r6, r0, #0
	mov r4, #0
	lsl r0, r1, #3
	add r5, r2, r0
	sub r7, r4, #1
_021F6BE2:
	lsl r0, r4, #1
	ldrsh r0, [r5, r0]
	mov r3, #1
	cmp r0, r7
	bne _021F6BEE
	mov r3, #0
_021F6BEE:
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	bl ovy288_21f6ad0
	add r4, r4, #1
	cmp r4, #3
	blt _021F6BE2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F6C00: .word 0x021F6FCC
	thumb_func_end ovy288_21f6bd4

	thumb_func_start ovy288_21f6c04
ovy288_21f6c04: ; 0x021F6C04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0xd4
	lsl r1, r2, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	thumb_func_end ovy288_21f6c04

	thumb_func_start ovy288_21f6c20
ovy288_21f6c20: ; 0x021F6C20
	push {r4, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0xd4
	ldr r0, [r0]
	mov r4, #1
	bl sub_0204C560
	cmp r0, #0
	bne _021F6C36
	mov r4, #0
_021F6C36:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy288_21f6c20

	thumb_func_start ovy288_21f6c3c
ovy288_21f6c3c: ; 0x021F6C3C
	push {r4, lr}
	sub sp, #8
	ldr r0, _021F6C84 ; =0x021F7002
	lsl r3, r1, #3
	ldrsh r0, [r0, r3]
	ldr r4, _021F6C88 ; =0x021F7000
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r1, #1
	add r0, r2, r0
	lsl r1, r0, #1
	ldr r0, _021F6C8C ; =0x021F6F60
	ldr r2, _021F6C90 ; =0x021F6FFE
	ldrsh r0, [r0, r1]
	ldr r1, _021F6C94 ; =0x021F6FFC
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r3]
	ldrsh r3, [r4, r3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #4]
	mov r0, #7
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0204566C
	mov r0, #7
	bl sub_02044F90
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021F6C84: .word 0x021F7002
_021F6C88: .word 0x021F7000
_021F6C8C: .word 0x021F6F60
_021F6C90: .word 0x021F6FFE
_021F6C94: .word 0x021F6FFC
	thumb_func_end ovy288_21f6c3c

	thumb_func_start ovy288_21f6c98
ovy288_21f6c98: ; 0x021F6C98
	push {r4, lr}
	mov r3, #0x56
	lsl r3, r3, #2
	ldr r4, [r0, r3]
	mov r2, #1
	orr r2, r4
	str r2, [r0, r3]
	add r2, r3, #0
	mov r4, #0
	add r2, #0x34
	strh r4, [r0, r2]
	add r2, r3, #0
	add r2, #8
	str r1, [r0, r2]
	add r1, r3, #4
	str r4, [r0, r1]
	bl ovy288_21f6cc0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy288_21f6c98

	thumb_func_start ovy288_21f6cc0
ovy288_21f6cc0: ; 0x021F6CC0
	push {r4, r5, r6, lr}
	mov r1, #0x56
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r3, #1
	tst r2, r3
	beq _021F6D2E
	add r2, r1, #0
	add r2, #0x34
	ldrsh r2, [r4, r2]
	ldr r6, _021F6D30 ; =0x021F6F70
	add r5, r2, #1
	add r2, r1, #0
	add r2, #0x34
	strh r5, [r4, r2]
	add r2, r1, #4
	ldr r2, [r4, r2]
	lsl r5, r2, #2
	add r2, r1, #0
	add r2, #0x34
	ldrsh r2, [r4, r2]
	ldrsh r6, [r6, r5]
	cmp r2, r6
	bne _021F6D2E
	ldr r2, _021F6D34 ; =0x021F6F72
	sub r3, r3, #2
	ldrsh r2, [r2, r5]
	cmp r2, r3
	beq _021F6D04
	add r1, #8
	ldr r1, [r4, r1]
	bl ovy288_21f6c3c
_021F6D04:
	mov r1, #0x57
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	lsl r2, r0, #2
	ldr r0, _021F6D30 ; =0x021F6F70
	ldrsh r2, [r0, r2]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _021F6D2E
	sub r0, r1, #4
	ldr r2, [r4, r0]
	mov r0, #1
	bic r2, r0
	sub r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0
	add r1, #0x30
	strh r0, [r4, r1]
_021F6D2E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F6D30: .word 0x021F6F70
_021F6D34: .word 0x021F6F72
	thumb_func_end ovy288_21f6cc0

	thumb_func_start sub_021F6D38
sub_021F6D38: ; 0x021F6D38
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	mov r0, #1
	mov r2, #0
	tst r1, r0
	beq _021F6D48
	add r2, r0, #0
_021F6D48:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021F6D38

	thumb_func_start ovy288_21f6d4c
ovy288_21f6d4c: ; 0x021F6D4C
	push {r3, lr}
	mov r3, #1
	cmp r1, #0
	bne _021F6D56
	mov r3, #0
_021F6D56:
	mov r1, #3
	mov r2, #3
	bl ovy288_21f6ad0
	pop {r3, pc}
	thumb_func_end ovy288_21f6d4c

	thumb_func_start ovy288_21f6d60
ovy288_21f6d60: ; 0x021F6D60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	add r5, r0, #0
	cmp r6, #1
	bne _021F6D9E
	lsl r2, r1, #1
	ldr r1, _021F6DAC ; =0x021F6F18
	ldrsh r1, [r1, r2]
	lsl r4, r1, #1
	add r1, r4, #0
	bl sub_021F6B34
	add r7, sp, #0
	strh r0, [r7]
	add r0, r5, #0
	add r1, r4, #1
	bl sub_021F6B34
	strh r0, [r7, #2]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, sp, #0
	mov r2, #1
	bl Oam_SetSpritePosData
	add r0, r5, #0
	mov r1, #4
	mov r2, #0xa
	bl ovy288_21f6c04
_021F6D9E:
	add r0, r5, #0
	mov r1, #3
	mov r2, #4
	add r3, r6, #0
	bl ovy288_21f6ad0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F6DAC: .word 0x021F6F18
	thumb_func_end ovy288_21f6d60
_021F6DB0:
	.byte 0x08, 0x00, 0x03, 0x00, 0x01, 0x00, 0x15, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x53, 0x00, 0x10, 0x00
	.byte 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x7C, 0x00, 0x7D, 0x00, 0x7E, 0x00, 0x7F, 0x00, 0x80, 0x00
	.byte 0x81, 0x00, 0x82, 0x00, 0x83, 0x00, 0x00, 0x00, 0x84, 0x00, 0x85, 0x00, 0x86, 0x00, 0x87, 0x00
	.byte 0x88, 0x00, 0x89, 0x00, 0x8A, 0x00, 0x8B, 0x00, 0x8C, 0x00, 0x8D, 0x00, 0x8E, 0x00, 0x04, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00
	.byte 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03
	.byte 0x03, 0x03, 0x03, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x40, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x19, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x27, 0x00, 0x07, 0x17, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x07, 0x24, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x06, 0x00, 0x01, 0x00
	.byte 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x05, 0x00, 0x03, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00
	.byte 0x01, 0x00, 0x07, 0x00, 0x02, 0x00, 0x07, 0x00, 0x01, 0x00, 0x07, 0x00, 0x01, 0x00, 0x07, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x00, 0x00, 0x09, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xA6, 0xB6, 0x08, 0x58, 0xA6, 0xB6, 0x70, 0xC0, 0xA0, 0xB8, 0xD8, 0xF8, 0xFF, 0x00, 0x00, 0x00
	.byte 0xA6, 0xB6, 0x08, 0x58, 0xA0, 0xB8, 0x78, 0x98, 0xA0, 0xB8, 0xA0, 0xC0, 0xA0, 0xB8, 0xD8, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00, 0xA6, 0xB6, 0x08, 0x58, 0xA0, 0xB8, 0x78, 0x98, 0xA0, 0xB8, 0xA0, 0xC0
	.byte 0xA0, 0xB8, 0xD8, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0x04, 0x0B, 0x00, 0x08, 0x04, 0x0C, 0x00, 0x08
	.byte 0x04, 0x0D, 0x00, 0x08, 0x04, 0x0E, 0x00, 0x08, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x00
	.byte 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14, 0x00
	.byte 0x0C, 0x00, 0x04, 0x00, 0x0D, 0x00, 0x14, 0x00, 0x0C, 0x00, 0x04, 0x00, 0x20, 0x00, 0x14, 0x00
	.byte 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x0C, 0x00, 0x04, 0x00, 0x07, 0x00, 0x08, 0x00
	.byte 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00
	.byte 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x17, 0x00, 0x18, 0x00
	.byte 0x19, 0x00, 0x1A, 0x00, 0x00, 0x28, 0x01, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x01, 0x28, 0x01, 0x00
	.byte 0x00, 0x01, 0x00, 0x0C, 0x02, 0x28, 0x01, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x03, 0x28, 0x01, 0x00
	.byte 0x00, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02
	.byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03
	.byte 0x03, 0x03, 0x03, 0x00, 0x00, 0x03, 0x28, 0x01, 0x00, 0x00, 0x01, 0x22, 0x0D, 0x06, 0x28, 0x01
	.byte 0x00, 0x00, 0x01, 0x23, 0x0D, 0x00, 0x28, 0x01, 0x00, 0x00, 0x01, 0x24, 0x0D, 0x09, 0x28, 0x03
	.byte 0x00, 0x00, 0x01, 0x25, 0x0D, 0x0A, 0x28, 0x03, 0x00, 0x00, 0x01, 0x26, 0x0D, 0xFF, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x02, 0x01, 0x1C, 0x02, 0x0A, 0x05, 0x02, 0x05, 0x1C, 0x02
	.byte 0x0B, 0x05, 0x02, 0x0C, 0x1C, 0x02, 0x0B, 0x05, 0x02, 0x03, 0x1C, 0x02, 0x0C, 0x05, 0x03, 0x07
	.byte 0x1C, 0x04, 0x0C, 0x05, 0x03, 0x0E, 0x1C, 0x04, 0x0C, 0x05, 0x01, 0x15, 0x0A, 0x02, 0x08, 0x05
	.byte 0x0E, 0x15, 0x0A, 0x02, 0x08, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0x01, 0x02, 0x02, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x03, 0x03, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0x01, 0x04, 0x04, 0x00, 0x30, 0x01, 0x00, 0x00, 0x01, 0x05, 0x05, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x06, 0x06, 0x01, 0x28, 0x01, 0x00, 0x00
	.byte 0x00, 0x06, 0x07, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x06, 0x08, 0x01, 0x28, 0x01, 0x00, 0x00
	.byte 0x00, 0x06, 0x09, 0x01, 0x28, 0x01, 0x00, 0x00, 0x00, 0x06, 0x0A, 0x01, 0x28, 0x01, 0x00, 0x00
	.byte 0x00, 0x06, 0x0B, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x02, 0x01, 0x1C, 0x02
	.byte 0x08, 0x05, 0x02, 0x03, 0x1C, 0x02, 0x09, 0x05, 0x02, 0x0A, 0x1C, 0x02, 0x09, 0x05, 0x03, 0x05
	.byte 0x1C, 0x04, 0x09, 0x05, 0x03, 0x0C, 0x1C, 0x04, 0x09, 0x05, 0x01, 0x15, 0x0A, 0x02, 0x08, 0x05
	.byte 0x0C, 0x11, 0x02, 0x02, 0x08, 0x05, 0x0F, 0x11, 0x02, 0x02, 0x08, 0x05, 0x0E, 0x11, 0x01, 0x02
	.byte 0x08, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x02, 0x01, 0x1C, 0x02, 0x08, 0x05, 0x01
	.byte 0x06, 0x0A, 0x02, 0x09, 0x05, 0x02, 0x0B, 0x0A, 0x02, 0x09, 0x05, 0x04, 0x0F, 0x0C, 0x02, 0x09
	.byte 0x05, 0x0D, 0x0F, 0x0C, 0x02, 0x09, 0x05, 0x10, 0x04, 0x0C, 0x02, 0x09, 0x05, 0x10, 0x07, 0x0C
	.byte 0x02, 0x09, 0x05, 0x10, 0x0A, 0x0C, 0x02, 0x09, 0x05, 0x10, 0x0D, 0x0C, 0x02, 0x09, 0x05, 0x04
	.byte 0x11, 0x0C, 0x02, 0x09, 0x05, 0x0D, 0x11, 0x0C, 0x02, 0x09, 0x05, 0x01, 0x15, 0x0A, 0x02, 0x08
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x58, 0x6E, 0x1F, 0x02, 0xEE, 0x6D, 0x1F, 0x02, 0x06, 0x6E, 0x1F, 0x02, 0xA5, 0x4A, 0x1F, 0x02
	.byte 0xF5, 0x4A, 0x1F, 0x02, 0xA5, 0x4B, 0x1F, 0x02, 0xF9, 0x4D, 0x1F, 0x02, 0x49, 0x4E, 0x1F, 0x02
	.byte 0x3D, 0x4F, 0x1F, 0x02, 0x2D, 0x55, 0x1F, 0x02, 0x79, 0x55, 0x1F, 0x02, 0x29, 0x56, 0x1F, 0x02
	.byte 0x62, 0x5F, 0x73, 0x63, 0x65, 0x6E, 0x61, 0x72, 0x69, 0x6F, 0x5F, 0x6D, 0x61, 0x69, 0x6E, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x80, 0x6F, 0x1F, 0x02, 0x90, 0x6F, 0x1F, 0x02, 0xA4, 0x6F, 0x1F, 0x02
	.byte 0xC5, 0x70, 0x1F, 0x02, 0x6B, 0x71, 0x1F, 0x02, 0xA8, 0x71, 0x1F, 0x02, 0x00, 0x00, 0x00, 0x00
	; 0x021F6DB0
