    .include "macros/function.inc"
	.include "overlay297.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy297_21f4260
ovy297_21f4260: ; 0x021F4260
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	ldr r0, _021F435C ; =0x0000008B
	add r5, r2, #0
	bl sub_0203CE0C
	ldr r0, _021F4360 ; =0x00000128
	bl sub_0203CE0C
	mov r7, #1
	mov r0, #1
	mov r1, #0x6a
	lsl r2, r7, #0x13
	bl GFL_HeapCreateChild
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x6a
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	mov r6, #0
	blx MI_CpuFill8
	mov r0, #0x6a
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #1
	bl ovy297_21f4638
	str r0, [r4, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #8]
	ldrh r0, [r4]
	bl sub_02021998
	str r0, [r4, #0xc]
	ldr r0, [r5]
	cmp r0, #0
	bne _021F42C8
	str r6, [r4, #0x10]
	b _021F42CA
_021F42C8:
	str r7, [r4, #0x10]
_021F42CA:
	str r6, [r4, #0x14]
	ldr r0, [r5]
	mov r6, #0
	cmp r0, #0
	beq _021F42D6
	mov r6, #1
_021F42D6:
	ldr r0, [r4, #4]
	bl sub_021F4748
	str r6, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r3, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldrh r0, [r4]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl sub_0219D6E0
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl sub_021F4748
	ldr r1, [r5, #0x14]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x10]
	ldrh r0, [r4]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl ovy297_21f487c
	str r0, [r4, #0x24]
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021F433C
	add r0, r4, #0
	bl ovy297_21f4580
_021F433C:
	ldr r0, _021F4364 ; =ovy297_21f4618
	add r1, r4, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x28]
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_0204E060
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021F435C: .word 0x0000008B
_021F4360: .word 0x00000128
_021F4364: .word ovy297_21f4618
	thumb_func_end ovy297_21f4260

	thumb_func_start ovy297_21f4368
ovy297_21f4368: ; 0x021F4368
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl sub_021F4600
	ldr r0, [r4, #0x24]
	bl ovy297_21f4a1c
	ldr r0, [r4, #0x20]
	bl sub_0219DBCC
	ldr r0, [r4, #0xc]
	bl sub_02021C44
	ldr r0, [r4, #0xc]
	bl sub_02021A18
	ldr r0, [r4, #8]
	bl sub_02022DA8
	ldr r0, [r4, #4]
	bl ovy297_21f46d8
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x6a
	bl sub_0203A1D0
	ldr r0, _021F43BC ; =0x00000128
	bl sub_0203CDC8
	ldr r0, _021F43C0 ; =0x0000008B
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021F43BC: .word 0x00000128
_021F43C0: .word 0x0000008B
	thumb_func_end ovy297_21f4368

	thumb_func_start ovy297_21f43c4
ovy297_21f43c4: ; 0x021F43C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r3, #0
	ldr r0, [r4, #0x20]
	add r6, r2, #0
	mov r5, #0
	bl sub_0219DC74
	ldr r0, [r4, #0x24]
	bl ovy297_21f4a64
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _021F43E8
	cmp r1, #1
	bne _021F43E6
	b _021F44F0
_021F43E6:
	b _021F455E
_021F43E8:
	ldr r0, [r4, #0x14]
	cmp r0, #5
	bhi _021F4442
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F43FA: ; jump table
	.short _021F4406 - _021F43FA - 2 ; case 0
	.short _021F4418 - _021F43FA - 2 ; case 1
	.short _021F4450 - _021F43FA - 2 ; case 2
	.short _021F4470 - _021F43FA - 2 ; case 3
	.short _021F44AE - _021F43FA - 2 ; case 4
	.short _021F44E0 - _021F43FA - 2 ; case 5
_021F4406:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F4442
	ldr r0, [r4, #0x20]
	bl sub_0219DE44
_021F4414:
	mov r0, #1
	b _021F444C
_021F4418:
	add r6, r5, #0
	bl sub_0203DA48
	add r7, r0, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021F4432
	add r0, r5, #0
	bl sub_0203D564
	mov r6, #1
_021F4432:
	cmp r7, #0
	beq _021F443E
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_021F443E:
	cmp r6, #0
	bne _021F4444
_021F4442:
	b _021F455E
_021F4444:
	ldr r0, [r4, #0x20]
	bl sub_0219DE14
_021F444A:
	mov r0, #2
_021F444C:
	str r0, [r4, #0x14]
	b _021F455E
_021F4450:
	ldr r0, [r4, #0x20]
	bl sub_0219DE24
	cmp r0, #0
	bne _021F4464
	ldr r0, [r4, #0x20]
	bl sub_0219DE34
	cmp r0, #0
	beq _021F455E
_021F4464:
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #0x10
	str r0, [r4, #0x18]
	mov r0, #3
_021F446E:
	b _021F444C
_021F4470:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #4
	bne _021F4482
	ldr r0, [r4, #0x18]
	str r5, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x18]
_021F4482:
	ldr r3, [r4, #0x18]
	mov r0, #0
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021F457C ; =0x04000050
	mov r1, #0xf
	mov r2, #0xf
	bl G2x_SetBlendBrightnessExt_
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021F455E
	ldr r0, [r4, #0x20]
	bl sub_0219DDCC
	add r0, r4, #0
	bl ovy297_21f4580
	mov r0, #4
	b _021F446E
_021F44AE:
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #4
	bne _021F44C0
	ldr r0, [r4, #0x18]
	str r5, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x18]
_021F44C0:
	ldr r3, [r4, #0x18]
	mov r0, #0
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021F457C ; =0x04000050
	mov r1, #0xf
	mov r2, #0xf
	bl G2x_SetBlendBrightnessExt_
	ldr r0, [r4, #0x18]
	cmp r0, #0x10
	bne _021F455E
	mov r0, #5
	b _021F446E
_021F44E0:
	ldr r0, [r4, #0x20]
	bl sub_0219DE34
	cmp r0, #0
	beq _021F455E
	mov r0, #1
	str r0, [r4, #0x10]
	b _021F446E
_021F44F0:
	ldr r1, [r4, #0x14]
	cmp r1, #3
	bhi _021F455E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F4502: ; jump table
	.short _021F450A - _021F4502 - 2 ; case 0
	.short _021F451A - _021F4502 - 2 ; case 1
	.short _021F4522 - _021F4502 - 2 ; case 2
	.short _021F4538 - _021F4502 - 2 ; case 3
_021F450A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F455E
	ldr r0, [r4, #0x20]
	bl sub_0219DE1C
	b _021F4414
_021F451A:
	ldr r0, [r4, #0x24]
	bl ovy297_21f4c50
	b _021F444A
_021F4522:
	cmp r0, #1
	bne _021F455E
	mov r0, #3
	add r1, r5, #0
	mov r2, #0x10
	mov r3, #2
	mov r6, #3
	bl sub_0204E060
	str r6, [r4, #0x14]
	b _021F455E
_021F4538:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F455E
	ldr r0, [r4, #0x24]
	bl sub_021F4C88
	cmp r0, #0
	beq _021F4550
	cmp r0, #1
	beq _021F4554
	b _021F4558
_021F4550:
	str r5, [r6, #0x1c]
	b _021F4558
_021F4554:
	mov r0, #1
	str r0, [r6, #0x1c]
_021F4558:
	mov r0, #4
	str r0, [r4, #0x14]
	mov r5, #1
_021F455E:
	ldr r0, [r4, #0xc]
	bl sub_02021A3C
	ldr r0, [r4, #4]
	bl ovy297_21f472c
	ldr r0, [r4, #4]
	bl sub_021F4740
	ldr r0, [r4, #4]
	bl sub_021F4744
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F457C: .word 0x04000050
	thumb_func_end ovy297_21f43c4

	thumb_func_start ovy297_21f4580
ovy297_21f4580: ; 0x021F4580
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [r5, #0x2c]
	mov r0, #3
	mov r7, #3
	bl sub_02045738
	mov r0, #1
	mov r1, #3
	bl sub_02044BD8
	mov r0, #3
	mov r1, #0
	mov r6, #0
	bl sub_02044BD8
	ldrh r1, [r5]
	mov r0, #0x9d
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldrh r1, [r5]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #7
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	ldrh r0, [r5]
	mov r3, #0x20
	mov r1, #0x11
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	lsl r3, r3, #6
	bl sub_0204AE3C
	str r0, [r5, #0x30]
	lsl r0, r7, #9
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5]
	mov r1, #0x28
	mov r2, #1
	str r0, [sp, #8]
	ldr r3, [r5, #0x30]
	add r0, r4, #0
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #1
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy297_21f4580

	thumb_func_start sub_021F4600
sub_021F4600: ; 0x021F4600
	ldr r2, [r0, #0x30]
	ldr r3, _021F4614 ; =sub_02044668
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	mov r0, #1
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bx r3
	nop
_021F4614: .word sub_02044668
	thumb_func_end sub_021F4600

	thumb_func_start ovy297_21f4618
ovy297_21f4618: ; 0x021F4618
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021F4636
	mov r0, #0
	mov r1, #0
	mov r5, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	str r5, [r4, #0x2c]
_021F4636:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy297_21f4618

	thumb_func_start ovy297_21f4638
ovy297_21f4638: ; 0x021F4638
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021F46BC ; =0x000001C7
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021F46C0 ; =0x021F4FA0
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl GFL_HeapAllocate
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021F46C4 ; =0x04000050
	ldr r0, _021F46C8 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021F46CC ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021F46D0 ; =0x021F4E70
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
	bl ovy297_21f4768
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy297_21f480c
	ldr r0, _021F46D4 ; =ovy297_21f4754
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F46BC: .word 0x000001C7
_021F46C0: .word 0x021F4FA0
_021F46C4: .word 0x04000050
_021F46C8: .word 0x04001050
_021F46CC: .word 0xFFFF1FFF
_021F46D0: .word 0x021F4E70
_021F46D4: .word ovy297_21f4754
	thumb_func_end ovy297_21f4638

	thumb_func_start ovy297_21f46d8
ovy297_21f46d8: ; 0x021F46D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy297_21f484c
	add r0, r4, #0
	bl ovy297_21f47c8
	bl sub_020232D8
	ldr r5, _021F4720 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021F4724 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021F4728 ; =0xFFFF1FFF
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
_021F4720: .word 0x04000050
_021F4724: .word 0x04001050
_021F4728: .word 0xFFFF1FFF
	thumb_func_end ovy297_21f46d8

	thumb_func_start ovy297_21f472c
ovy297_21f472c: ; 0x021F472C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021F4868
	add r0, r4, #0
	bl sub_021F4800
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy297_21f472c

	thumb_func_start sub_021F4740
sub_021F4740: ; 0x021F4740
	bx lr
	.align 2, 0
	thumb_func_end sub_021F4740

	thumb_func_start sub_021F4744
sub_021F4744: ; 0x021F4744
	bx lr
	.align 2, 0
	thumb_func_end sub_021F4744

	thumb_func_start sub_021F4748
sub_021F4748: ; 0x021F4748
	ldr r3, _021F4750 ; =sub_021F4878
	add r0, r0, #4
	bx r3
	nop
_021F4750: .word sub_021F4878
	thumb_func_end sub_021F4748

	thumb_func_start ovy297_21f4754
ovy297_21f4754: ; 0x021F4754
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021F4804
	add r0, r4, #4
	bl sub_021F4870
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy297_21f4754

	thumb_func_start ovy297_21f4768
ovy297_21f4768: ; 0x021F4768
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
	ldr r0, _021F47C0 ; =0x021F4E44
	bl sub_02044710
	ldr r7, _021F47C4 ; =0x021F4EA0
_021F478A:
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
	cmp r4, #4
	blo _021F478A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F47C0: .word 0x021F4E44
_021F47C4: .word 0x021F4EA0
	thumb_func_end ovy297_21f4768

	thumb_func_start ovy297_21f47c8
ovy297_21f47c8: ; 0x021F47C8
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021F47FC ; =0x021F4EA0
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021F47D2:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #4
	blo _021F47D2
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F47FC: .word 0x021F4EA0
	thumb_func_end ovy297_21f47c8

	thumb_func_start sub_021F4800
sub_021F4800: ; 0x021F4800
	bx lr
	.align 2, 0
	thumb_func_end sub_021F4800

	thumb_func_start sub_021F4804
sub_021F4804: ; 0x021F4804
	ldr r3, _021F4808 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021F4808: .word sub_02045A5C
	thumb_func_end sub_021F4804

	thumb_func_start ovy297_21f480c
ovy297_21f480c: ; 0x021F480C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #4
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021F4848 ; =0x021F4E54
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
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F4848: .word 0x021F4E54
	thumb_func_end ovy297_21f480c

	thumb_func_start ovy297_21f484c
ovy297_21f484c: ; 0x021F484C
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
	thumb_func_end ovy297_21f484c

	thumb_func_start sub_021F4868
sub_021F4868: ; 0x021F4868
	ldr r3, _021F486C ; =sub_0204B794
	bx r3
	.align 2, 0
_021F486C: .word sub_0204B794
	thumb_func_end sub_021F4868

	thumb_func_start sub_021F4870
sub_021F4870: ; 0x021F4870
	ldr r3, _021F4874 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021F4874: .word sub_0204B7C8
	thumb_func_end sub_021F4870

	thumb_func_start sub_021F4878
sub_021F4878: ; 0x021F4878
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021F4878

	thumb_func_start ovy297_21f487c
ovy297_21f487c: ; 0x021F487C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r3, [sp, #0x1c]
	add r4, r1, #0
	str r2, [sp, #0x18]
	mov r6, #0xd1
	ldr r3, _021F4A14 ; =0x021F4FB8
	mov r1, #0x60
	mov r2, #0
	add r7, r0, #0
	str r6, [sp]
	bl GFL_HeapAllocate
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x60
	blx MI_CpuFill8
	strh r7, [r5]
	ldr r0, [sp, #0x18]
	str r4, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [sp, #0x1c]
	mov r1, #0xb2
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x38]
	mov r2, #0
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x40]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x48]
	str r0, [r5, #0x20]
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #2
	str r0, [r5, #0x40]
	mov r0, #0
	str r0, [r5, #0x44]
	add r0, r4, #0
	mov r4, #0xb2
	bl sub_0201CCF8
	add r1, r5, #0
	add r1, #0x48
	strb r0, [r1]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5]
	add r4, #0x6e
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #0
	add r3, r4, #0
	bl sub_0204B0B8
	ldrh r0, [r5]
	bl GFL_WordSetSystemCreateDefault
	ldr r2, [r5, #4]
	mov r1, #0
	add r7, r0, #0
	bl sub_020243F4
	add r6, #0xe8
	ldrh r3, [r5]
	mov r0, #0
	mov r1, #2
	add r2, r6, #0
	bl GFL_MsgSysLoadData
	add r1, r5, #0
	add r1, #0x48
	ldrb r1, [r1]
	add r6, r0, #0
	add r1, #0xaf
	bl sub_0204898C
	add r4, r0, #0
	ldrh r1, [r5]
	mov r0, #0x60
	bl GFL_StrBufCreate
	add r1, r0, #0
	add r0, r7, #0
	add r2, r4, #0
	str r1, [r5, #0x2c]
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_MsgDataFree
	add r0, r7, #0
	bl GFL_WordSetSystemFree
	mov r4, #1
	str r4, [sp]
	mov r6, #9
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x38]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x38]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x38]
	bl sub_020484D4
	bl sub_02045B7C
	ldrh r0, [r5]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	bl GFL_TCBExMgrCreate
	str r0, [r5, #0x34]
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #3
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r6, #0xf
	bl BmpWin_BitmapFill
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	bl sub_02017BCC
	ldr r1, [r5, #0x18]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r0, [r5, #0x24]
	ldr r3, [r5, #0x2c]
	bl sub_02022268
	str r0, [r5, #0x28]
	ldrh r3, [r5]
	mov r0, #3
	mov r1, #8
	mov r2, #0
	bl sub_02024D20
	str r0, [r5, #0x30]
	bl sub_0203D554
	cmp r0, #0
	beq _021F49F4
	mov r4, #0
_021F49F4:
	add r0, r5, #0
	add r0, #0x54
	strb r4, [r0]
	add r0, r5, #0
	bl ovy297_21f4c9c
	ldr r0, _021F4A18 ; =ovy297_21f4c8c
	add r1, r5, #0
	mov r2, #1
	bl GFL_VBlankTCBAdd
	str r0, [r5, #0x4c]
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4A14: .word 0x021F4FB8
_021F4A18: .word ovy297_21f4c8c
	thumb_func_end ovy297_21f487c

	thumb_func_start ovy297_21f4a1c
ovy297_21f4a1c: ; 0x021F4A1C
	push {r4, lr}
	add r4, r0, #0
	bl ovy297_21f4cf8
	ldr r0, [r4, #0x4c]
	bl GFL_TCBRemove
	ldr r0, [r4, #0x28]
	bl sub_020223CC
	ldr r2, [r4, #0x30]
	mov r0, #3
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r0, [r4, #0x24]
	bl sub_02048210
	ldr r0, [r4, #0x2c]
	bl GFL_StrBufFree
	ldr r0, [r4, #0x34]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x38]
	bl sub_02048210
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy297_21f4a1c

	thumb_func_start ovy297_21f4a64
ovy297_21f4a64: ; 0x021F4A64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	mov r5, #0
	cmp r0, #5
	bhi _021F4ABA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F4A7E: ; jump table
	.short _021F4C3E - _021F4A7E - 2 ; case 0
	.short _021F4A8A - _021F4A7E - 2 ; case 1
	.short _021F4B28 - _021F4A7E - 2 ; case 2
	.short _021F4BBA - _021F4A7E - 2 ; case 3
	.short _021F4C30 - _021F4A7E - 2 ; case 4
	.short _021F4C3C - _021F4A7E - 2 ; case 5
_021F4A8A:
	ldr r0, [r4, #0x34]
	bl sub_0203A7F4
	ldr r0, [r4, #0x28]
	bl sub_020223B4
	cmp r0, #2
	bne _021F4AB2
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	mov r1, #2
	str r1, [r4, #0x3c]
	cmp r0, #0
	beq _021F4AAE
	mov r0, #1
	str r0, [r4, #0x50]
	b _021F4C3E
_021F4AAE:
	str r1, [r4, #0x50]
	b _021F4C3E
_021F4AB2:
	cmp r0, #0
	beq _021F4ABC
	cmp r0, #1
	beq _021F4AF0
_021F4ABA:
	b _021F4C3E
_021F4ABC:
	add r6, r5, #0
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _021F4AD2
	add r0, r5, #0
	bl sub_0203D564
	mov r6, #1
	b _021F4AE2
_021F4AD2:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021F4AE2
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_021F4AE2:
	cmp r6, #0
	beq _021F4BD6
_021F4AE6:
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_020223E0
	b _021F4C3E
_021F4AF0:
	add r6, r5, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021F4B06
	add r0, r5, #0
	bl sub_0203D564
	mov r6, #1
	b _021F4B16
_021F4B06:
	bl sub_0203DA48
	cmp r0, #0
	beq _021F4B16
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_021F4B16:
	cmp r6, #0
	beq _021F4BD6
_021F4B1A:
	ldr r0, [r4, #0x28]
	bl sub_020223BC
	ldr r0, _021F4C4C ; =0x00000547
	bl GFL_SndSEPlay
	b _021F4C3E
_021F4B28:
	ldr r0, [r4, #0x40]
	cmp r0, #2
	beq _021F4BD6
	cmp r0, #0
	bne _021F4BB8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F4B3E
_021F4B38:
	mov r0, #5
_021F4B3A:
	str r0, [r4, #0x3c]
	b _021F4C3E
_021F4B3E:
	ldr r0, [r4, #0x24]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r7, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r4, #0x28]
	bl sub_020223CC
	ldr r0, [r4, #0x2c]
	bl GFL_StrBufFree
	ldrh r0, [r4]
	bl GFL_WordSetSystemCreateDefault
	ldr r2, [r4, #4]
	add r1, r5, #0
	add r6, r0, #0
	bl sub_02024464
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	add r0, r6, #0
	mov r1, #1
	bl sub_0202470C
	ldrh r1, [r4]
	mov r0, #0x60
	bl GFL_StrBufCreate
	add r1, r0, #0
	ldr r2, [r4, #8]
	add r0, r6, #0
	str r1, [r4, #0x2c]
	bl GFL_WordSetFormatStrbuf
	add r0, r6, #0
	bl GFL_WordSetSystemFree
	bl sub_02017BCC
	ldr r1, [r4, #0x18]
	add r2, r5, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r4]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, [r4, #0x24]
	ldr r3, [r4, #0x2c]
	bl sub_02022268
	str r0, [r4, #0x28]
	mov r0, #3
_021F4BB6:
	b _021F4B3A
_021F4BB8:
	b _021F4B38
_021F4BBA:
	ldr r0, [r4, #0x34]
	bl sub_0203A7F4
	ldr r0, [r4, #0x28]
	bl sub_020223B4
	cmp r0, #2
	bne _021F4BCE
	mov r0, #4
	b _021F4BB6
_021F4BCE:
	cmp r0, #0
	beq _021F4BD8
	cmp r0, #1
	beq _021F4C04
_021F4BD6:
	b _021F4C3E
_021F4BD8:
	add r6, r5, #0
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _021F4BEE
	add r0, r5, #0
	bl sub_0203D564
	mov r6, #1
	b _021F4BFE
_021F4BEE:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021F4BFE
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_021F4BFE:
	cmp r6, #0
	beq _021F4C3E
	b _021F4AE6
_021F4C04:
	add r6, r5, #0
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _021F4C1A
	add r0, r5, #0
	bl sub_0203D564
	mov r6, #1
	b _021F4C2A
_021F4C1A:
	bl sub_0203DA48
	cmp r0, #0
	beq _021F4C2A
	mov r0, #1
	mov r6, #1
	bl sub_0203D564
_021F4C2A:
	cmp r6, #0
	beq _021F4C3E
	b _021F4B1A
_021F4C30:
	ldr r0, [r4, #0x44]
	add r0, r0, #1
	str r0, [r4, #0x44]
	cmp r0, #0x3c
	bne _021F4C3E
	b _021F4B38
_021F4C3C:
	mov r5, #1
_021F4C3E:
	add r0, r4, #0
	bl ovy297_21f4d28
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4C4C: .word 0x00000547
	thumb_func_end ovy297_21f4a64

	thumb_func_start ovy297_21f4c50
ovy297_21f4c50: ; 0x021F4C50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _021F4C86
	ldr r2, [r5, #0x30]
	ldr r0, [r5, #0x24]
	lsl r2, r2, #0x10
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #8
	mov r6, #1
	bl sub_02024E80
	ldr r4, [r5, #0x24]
	add r0, r4, #0
	bl BmpWin_FlushChar
	add r0, r4, #0
	bl sub_0204826C
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02045B7C
	str r6, [r5, #0x3c]
_021F4C86:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy297_21f4c50

	thumb_func_start sub_021F4C88
sub_021F4C88: ; 0x021F4C88
	ldr r0, [r0, #0x40]
	bx lr
	thumb_func_end sub_021F4C88

	thumb_func_start ovy297_21f4c8c
ovy297_21f4c8c: ; 0x021F4C8C
	push {r3, lr}
	ldr r0, [r1, #0x5c]
	cmp r0, #0
	beq _021F4C98
	bl sub_020275F8
_021F4C98:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy297_21f4c8c

	thumb_func_start ovy297_21f4c9c
ovy297_21f4c9c: ; 0x021F4C9C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021F4CF4 ; =0x000000A8
	bl sub_0203CE0C
	ldrh r0, [r4]
	bl sub_02026DC0
	mov r1, #1
	str r0, [r4, #0x5c]
	bl sub_0202778C
	mov r5, #0x1e
	lsl r5, r5, #4
	ldrh r3, [r4]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	add r2, r5, #0
	bl sub_02026E04
	ldrh r3, [r4]
	ldr r0, [r4, #0x5c]
	mov r1, #3
	add r2, r5, #0
	bl sub_02026E04
	add r0, r4, #0
	add r0, #0x54
	str r0, [sp]
	ldrh r0, [r4]
	mov r1, #0
	mov r5, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x18]
	bl sub_021EA2A8
	str r0, [r4, #0x58]
	str r5, [r4, #0x50]
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F4CF4: .word 0x000000A8
	thumb_func_end ovy297_21f4c9c

	thumb_func_start ovy297_21f4cf8
ovy297_21f4cf8: ; 0x021F4CF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	bl sub_021EA4C0
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r4, #0x5c]
	mov r1, #3
	bl sub_02026E48
	ldr r0, [r4, #0x5c]
	bl sub_02026DE8
	mov r0, #0
	str r0, [r4, #0x5c]
	ldr r0, _021F4D24 ; =0x000000A8
	bl sub_0203CDC8
	pop {r4, pc}
	.align 2, 0
_021F4D24: .word 0x000000A8
	thumb_func_end ovy297_21f4cf8

	thumb_func_start ovy297_21f4d28
ovy297_21f4d28: ; 0x021F4D28
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #4
	bhi _021F4E20
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F4D40: ; jump table
	.short _021F4E20 - _021F4D40 - 2 ; case 0
	.short _021F4D4A - _021F4D40 - 2 ; case 1
	.short _021F4D84 - _021F4D40 - 2 ; case 2
	.short _021F4DDC - _021F4D40 - 2 ; case 3
	.short _021F4E20 - _021F4D40 - 2 ; case 4
_021F4D4A:
	mov r5, #0
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _021F4D60
	add r0, r5, #0
	bl sub_0203D564
	mov r5, #1
	b _021F4D70
_021F4D60:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021F4D70
	mov r0, #1
	mov r5, #1
	bl sub_0203D564
_021F4D70:
	cmp r5, #0
	beq _021F4E20
	ldr r0, _021F4E2C ; =0x00000547
	bl GFL_SndSEPlay
	mov r0, #0
	str r0, [r4, #0x40]
	mov r0, #4
_021F4D80:
	str r0, [r4, #0x50]
	b _021F4E20
_021F4D84:
	bl sub_0203D554
	mov r1, #1
	cmp r0, #0
	beq _021F4D90
	mov r1, #0
_021F4D90:
	add r0, r4, #0
	add r0, #0x54
	strb r1, [r0]
	mov r2, #0x6e
	ldrh r3, [r4]
	mov r0, #0
	mov r1, #2
	lsl r2, r2, #2
	bl GFL_MsgSysLoadData
	add r5, r0, #0
	mov r1, #0
	bl sub_0204898C
	str r0, [sp]
	add r0, r5, #0
	mov r6, #1
	mov r1, #1
	bl sub_0204898C
	str r6, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [r4, #0x58]
	mov r1, #4
	add r2, sp, #0
	bl sub_021EAA3C
	ldr r0, [sp]
	bl GFL_StrBufFree
	ldr r0, [sp, #4]
	bl GFL_StrBufFree
	add r0, r5, #0
	bl GFL_MsgDataFree
	mov r0, #3
	b _021F4D80
_021F4DDC:
	ldr r0, [r4, #0x58]
	ldr r1, _021F4E30 ; =0x021F4F74
	ldr r2, _021F4E34 ; =0x021F4F80
	bl sub_021EB1C4
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021F4E20
	ldr r0, [r4, #0x58]
	mov r1, #0
	mov r2, #0
	mov r6, #0
	bl sub_021EAA3C
	mov r0, #4
	str r0, [r4, #0x50]
	cmp r5, #0
	bne _021F4E0A
	mov r0, #1
	str r0, [r4, #0x40]
	b _021F4E0C
_021F4E0A:
	str r6, [r4, #0x40]
_021F4E0C:
	add r0, r4, #0
	add r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F4E1A
	mov r0, #1
	b _021F4E1C
_021F4E1A:
	mov r0, #0
_021F4E1C:
	bl sub_0203D564
_021F4E20:
	ldr r0, [r4, #0x58]
	bl sub_021EA4F4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021F4E2C: .word 0x00000547
_021F4E30: .word 0x021F4F74
_021F4E34: .word 0x021F4F80
	thumb_func_end ovy297_21f4d28
_021F4E38:
	.byte 0x61, 0x42, 0x1F, 0x02, 0xC5, 0x43, 0x1F, 0x02
	.byte 0x69, 0x43, 0x1F, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x10, 0x00, 0x10, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x03, 0x00, 0x40, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x20, 0x50, 0x00, 0xFF, 0x50, 0x80, 0x00, 0xFF
	.byte 0xFF, 0x00, 0x00, 0x00, 0x68, 0x4F, 0x1F, 0x02, 0x58, 0x4F, 0x1F, 0x02, 0x60, 0x4F, 0x1F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x80, 0x01, 0x80, 0x80, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0xFF, 0xFF, 0x00, 0x80, 0x80, 0x80, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x74, 0x6F, 0x72, 0x6F, 0x6B, 0x75, 0x5F, 0x67, 0x72, 0x61
	.byte 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x7A, 0x75, 0x6B, 0x61, 0x6E, 0x5F, 0x6E, 0x69
	.byte 0x63, 0x6B, 0x6E, 0x61, 0x6D, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F4E38
