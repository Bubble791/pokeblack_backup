    .include "macros/function.inc"
	.include "overlay197.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy197_21b5420
ovy197_21b5420: ; 0x021B5420
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021B5584 ; =0x000000BD
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #0xa
	mov r0, #1
	mov r1, #0x1d
	lsl r2, r2, #0x10
	mov r7, #0x1d
	bl GFL_HeapCreateChild
	add r0, r4, #0
	ldr r4, _021B5588 ; =0x0000069C
	mov r2, #0x1d
	add r1, r4, #0
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r4, #0xed
	lsl r4, r4, #2
	mov r0, #0x1d
	str r6, [r5, r4]
	bl sub_02016EE8
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	bl sub_02017934
	mov r1, #1
	mov r2, #0x1d
	bl sub_0200AA1C
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	mov r0, #1
	mov r1, #0x1d
	bl ovy197_21b83ec
	add r1, r4, #0
	sub r1, #0x20
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x24
	add r0, r5, r0
	mov r1, #0x1d
	bl ovy197_21b56e4
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl sub_021B850C
	add r1, r0, #0
	mov r0, #0xa5
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #0x1d
	bl ovy197_21b58ac
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r7, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	sub r1, #0x1c
	str r0, [r5, r1]
	mov r0, #0x1d
	bl sub_02021998
	add r1, r4, #0
	sub r1, #0x18
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #2
	mov r2, #0x64
	mov r3, #0x1d
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	sub r1, #0x10
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #3
	mov r2, #0xd0
	mov r3, #0x1d
	mov r6, #0xd0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	sub r1, #0x14
	str r0, [r5, r1]
	mov r0, #0x1d
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #0
	sub r1, #0xc
	str r0, [r5, r1]
	ldr r1, _021B558C ; =ovy197_21b5b40
	add r0, r5, #0
	mov r2, #0x1d
	bl ovy197_21b961c
	mov r1, #0xa5
	lsl r1, r1, #2
	sub r1, r1, #4
	str r0, [r5, r1]
	add r2, r4, #0
	add r3, r4, #0
	str r7, [sp]
	sub r2, #0x18
	sub r3, #0x1c
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	mov r0, #1
	mov r1, #0xf
	bl ovy197_21b8a6c
	mov r1, #0xa5
	lsl r1, r1, #2
	sub r1, #0x10
	str r0, [r5, r1]
	mov r0, #0xa5
	lsl r0, r0, #2
	sub r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #0xa
	mov r2, #0xe
	bl ovy197_21b8dc4
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02017934
	mov r1, #0x1d
	bl ovy197_21bd068
	sub r1, r4, #4
	str r0, [r5, r1]
	mov r0, #0xd0
	mov r1, #0xa5
	add r0, #0x68
	lsl r1, r1, #2
	add r0, r5, r0
	add r1, r5, r1
	mov r2, #0x1d
	bl ovy197_21b7f84
	mov r0, #0xd0
	add r0, #0x68
	add r0, r5, r0
	mov r1, #0
	bl sub_021B801C
	add r6, #0x68
	add r0, r5, r6
	mov r1, #1
	bl sub_021B8050
	add r4, #0xce
	ldr r1, _021B5590 ; =0x0000FFFF
	add r0, r4, #0
	bl sub_02005DF4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B5584: .word 0x000000BD
_021B5588: .word 0x0000069C
_021B558C: .word ovy197_21b5b40
_021B5590: .word 0x0000FFFF
	thumb_func_end ovy197_21b5420

	thumb_func_start ovy197_21b5594
ovy197_21b5594: ; 0x021B5594
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x4e
	add r5, r3, #0
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_021B7FF0
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ovy197_21bd0b8
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B55BC
	bl ovy197_21b8bcc
_021B55BC:
	mov r7, #0x29
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	bl sub_021B9658
	mov r4, #0xea
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_WordSetSystemFree
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_MsgDataFree
	add r0, r4, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02022DA8
	add r0, r7, #4
	add r0, r5, r0
	bl ovy197_21b59e8
	add r0, r4, #0
	sub r0, #0x18
	add r0, r5, r0
	bl sub_021B5708
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl ovy197_21b848c
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	bl sub_0200AA54
	add r4, #0x10
	ldr r0, [r5, r4]
	bl sub_02017144
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #0x1d
	bl sub_0203A1D0
	mov r0, #0
	blx OS_ResetSystem
	ldr r0, _021B5644 ; =0x000000BD
	bl sub_0203CDC8
	bl sub_02005D8C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5644: .word 0x000000BD
	thumb_func_end ovy197_21b5594

	thumb_func_start ovy197_21b5648
ovy197_21b5648: ; 0x021B5648
	push {r3, r4, r5, lr}
	mov r4, #0x3b
	add r5, r3, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_021BD0C8
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ovy197_21b9660
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B5680
	bl ovy197_21b84e0
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_021B84F4
	sub r4, #0x1c
	ldr r0, [r5, r4]
	bl sub_021B8500
_021B5680:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r5, r0
	bl ovy197_21b8000
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021A3C
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B56A2
	bl ovy197_21b8c18
_021B56A2:
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B56B0
	bl ovy197_21b9090
_021B56B0:
	mov r0, #0xa2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B56BE
	bl ovy197_21b9090
_021B56BE:
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B56CC
	bl sub_021B9608
_021B56CC:
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_021B9674
	cmp r0, #0
	beq _021B56DE
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B56DE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b5648

	thumb_func_start ovy197_21b56e4
ovy197_21b56e4: ; 0x021B56E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #2
	blx MI_CpuFill8
	add r0, r5, #0
	mov r1, #0
	strh r4, [r5]
	bl ovy197_21b570c
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b56e4

	thumb_func_start sub_021B5708
sub_021B5708: ; 0x021B5708
	bx lr
	.align 2, 0
	thumb_func_end sub_021B5708

	thumb_func_start ovy197_21b570c
ovy197_21b570c: ; 0x021B570C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldrh r2, [r0]
	ldr r0, _021B58A8 ; =0x00007FFF
	and r2, r0
	add r0, r0, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r1, #0
	beq _021B5730
	cmp r1, #1
	beq _021B5826
	cmp r1, #2
	bne _021B572C
	b _021B5870
_021B572C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5730:
	mov r0, #0x21
	add r1, r5, #0
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0x80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	mov r2, #4
	mov r3, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	mov r7, #0x20
	str r7, [sp]
	str r5, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #4
	mov r3, #0x20
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #7
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #0x17
	add r1, r5, #0
	bl sub_0204AA30
	mov r3, #0xf
	str r7, [sp]
	lsl r6, r3, #5
	add r4, r0, #0
	str r5, [sp, #4]
	mov r1, #5
	mov r2, #0
	add r3, r6, #0
	bl sub_0204B0D4
	str r7, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	add r3, r6, #0
	str r5, [sp, #4]
	bl sub_0204B0D4
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #1
	mov r1, #0xa
	mov r2, #0xe
	mov r3, #0
	str r5, [sp]
	bl sub_02024D00
	mov r0, #0
	mov r1, #1
	mov r2, #0xd
	mov r3, #0
	str r5, [sp]
	bl sub_02024D00
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	mov r0, #0
	mov r1, #0x20
	mov r2, #0
	add r3, r5, #0
	bl sub_020450CC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5826:
	mov r0, #0x21
	add r1, r5, #0
	bl sub_0204AA30
	mov r1, #0xc0
	str r1, [sp]
	str r5, [sp, #4]
	mov r1, #6
	mov r2, #4
	mov r6, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #6
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #6
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5870:
	mov r0, #0x21
	add r1, r5, #0
	bl sub_0204AA30
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r1, #0xb
	mov r2, #2
	mov r3, #0
	add r4, r0, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #2
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B58A8: .word 0x00007FFF
	thumb_func_end ovy197_21b570c

	thumb_func_start ovy197_21b58ac
ovy197_21b58ac: ; 0x021B58AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r2, #0
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x21
	add r1, r7, #0
	bl sub_0204AA30
	add r6, r0, #0
	str r7, [sp]
	mov r1, #8
	mov r2, #2
	mov r3, #0
	mov r4, #0
	bl sub_0204BBA0
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x22
	mov r2, #0x25
	add r3, r7, #0
	bl sub_0204BDE0
	str r0, [r5, #8]
	str r7, [sp]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_0204B81C
	str r0, [r5, #4]
	add r0, r6, #0
	mov r1, #8
	add r2, sp, #0x28
	add r3, r7, #0
	bl sub_0204B37C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r1, #0xda
	str r0, [sp, #0x14]
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r0, #0x20
	add r1, #0xba
	mov r2, #0x20
	str r0, [sp, #0x14]
	blx MI_CpuCopy8
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, sp, #0x20
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, sp, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl sub_0204C040
	mov r1, #0
	str r0, [r5, #0xc]
	bl sub_0204C124
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x1c]
	add r0, #0x10
	add r6, sp, #0x20
	str r0, [sp, #0x1c]
_021B595A:
	mov r0, #1
	lsl r0, r0, #8
	bl sub_02005784
	strh r0, [r6]
	mov r0, #1
	lsl r0, r0, #8
	bl sub_02005784
	ldr r1, [sp, #0x1c]
	sub r0, r0, r1
	strh r0, [r6, #2]
	mov r0, #3
	strb r0, [r6, #7]
	mov r0, #6
	bl sub_02005784
	add r0, r0, #3
	strh r0, [r6, #4]
	lsl r0, r4, #2
	add r0, r5, r0
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl sub_0204C040
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x10]
	mov r1, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x20
	blt _021B595A
	mov r0, #0x80
	add r1, sp, #0x20
	strh r0, [r1]
	mov r0, #0xb1
	strh r0, [r1, #2]
	mov r0, #0
	strb r0, [r1, #7]
	mov r0, #1
	strb r0, [r1, #6]
	mov r0, #9
	strh r0, [r1, #4]
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	bl sub_0204C040
	add r5, #0x94
	mov r1, #0
	str r0, [r5]
	bl sub_0204C124
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b58ac

	thumb_func_start ovy197_21b59e8
ovy197_21b59e8: ; 0x021B59E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021B59EE:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021B59FC
	bl sub_0204C108
_021B59FC:
	add r4, r4, #1
	cmp r4, #0x23
	blt _021B59EE
	ldr r0, [r5]
	bl sub_0204BCD0
	ldr r0, [r5, #4]
	bl sub_0204B98C
	ldr r0, [r5, #8]
	bl sub_0204BE64
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b59e8

	thumb_func_start sub_021B5A18
sub_021B5A18: ; 0x021B5A18
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021B5A18

	thumb_func_start ovy197_21b5a20
ovy197_21b5a20: ; 0x021B5A20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r3, r1, #0
	mov r0, #0x21
	mov r1, #8
	add r2, sp, #0
	bl sub_0204B354
	add r4, r0, #0
	ldr r0, [r5]
	ldr r1, [sp]
	mov r2, #7
	bl sub_0204BD10
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy197_21b5a20

	thumb_func_start ovy197_21b5a44
ovy197_21b5a44: ; 0x021B5A44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x98
	mov r1, #1
	ldrh r3, [r0]
	lsl r1, r1, #0xa
	lsl r0, r1, #6
	add r2, r3, r1
	cmp r2, r0
	blt _021B5A62
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r1, r3, r0
	b _021B5A6A
_021B5A62:
	add r0, r5, #0
	add r0, #0x98
	ldrh r0, [r0]
	add r1, r0, r1
_021B5A6A:
	add r0, r5, #0
	add r0, #0x98
	add r6, r5, #0
	strh r1, [r0]
	mov r4, #0
	mov r7, #0xe
	add r6, #0x9a
_021B5A78:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r4, #1
	str r0, [sp]
	add r0, r5, r1
	add r0, #0xba
	ldrh r0, [r0]
	add r2, r5, #0
	add r2, #0x98
	str r0, [sp, #4]
	add r0, r5, r1
	add r0, #0xda
	ldrh r0, [r0]
	add r1, r6, r1
	mov r3, #0
	str r0, [sp, #8]
	ldrh r2, [r2]
	add r0, r7, #0
	bl ovy197_21b986c
	add r4, r4, #1
	cmp r4, #5
	blt _021B5A78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b5a44

	thumb_func_start sub_021B5AAC
sub_021B5AAC: ; 0x021B5AAC
	mov r1, #0
	add r0, #0x98
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021B5AAC

	thumb_func_start ovy197_21b5ab4
ovy197_21b5ab4: ; 0x021B5AB4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0
	mov r2, #0x10
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, _021B5AF0 ; =0x00000482
	mov r6, #0x12
	lsl r6, r6, #0xa
	str r0, [sp]
	ldr r3, _021B5AF4 ; =0x021BE980
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r6, #0
	mov r2, #1
	add r3, r4, #0
	str r0, [r5, #8]
	bl sub_0204F968
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B5AF0: .word 0x00000482
_021B5AF4: .word 0x021BE980
	thumb_func_end ovy197_21b5ab4

	thumb_func_start ovy197_21b5af8
ovy197_21b5af8: ; 0x021B5AF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0203A24C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b5af8

	thumb_func_start ovy197_21b5b10
ovy197_21b5b10: ; 0x021B5B10
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_0204FDF8
	add r1, r0, #0
	ldr r0, [r4]
	mov r2, #1
	mov r3, #0
	bl sub_0204FE04
	pop {r4, pc}
	thumb_func_end ovy197_21b5b10

	thumb_func_start ovy197_21b5b2c
ovy197_21b5b2c: ; 0x021B5B2C
	push {r3, lr}
	add r3, r0, #0
	ldr r0, [r3]
	mov r2, #0
	bl sub_0205007C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy197_21b5b2c

	thumb_func_start sub_021B5B3C
sub_021B5B3C: ; 0x021B5B3C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021B5B3C

	thumb_func_start ovy197_21b5b40
ovy197_21b5b40: ; 0x021B5B40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xa1
	mov r1, #0xe9
	add r4, r2, #0
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0
	mov r3, #0
	bl ovy197_21b8cd0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6f74
	ldr r1, _021B5B70 ; =ovy197_21b5b74
	add r0, r5, #0
	bl sub_021B9678
	pop {r3, r4, r5, pc}
	nop
_021B5B70: .word ovy197_21b5b74
	thumb_func_end ovy197_21b5b40

	thumb_func_start ovy197_21b5b74
ovy197_21b5b74: ; 0x021B5B74
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021B5B88
	cmp r1, #1
	beq _021B5B9A
	cmp r1, #2
	beq _021B5BA8
	pop {r4, pc}
_021B5B88:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B5B9A:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B5BAE
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021B5BA8:
	ldr r1, _021B5BB0 ; =ovy197_21b5bfc
	bl sub_021B9678
_021B5BAE:
	pop {r4, pc}
	.align 2, 0
_021B5BB0: .word ovy197_21b5bfc
	thumb_func_end ovy197_21b5b74

	thumb_func_start ovy197_21b5bb4
ovy197_21b5bb4: ; 0x021B5BB4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021B5BC8
	cmp r1, #1
	beq _021B5BE0
	cmp r1, #2
	beq _021B5BEE
	pop {r4, pc}
_021B5BC8:
	mov r0, #0xc
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #8
	bl sub_02005EA0
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021B5BE0:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B5BF4
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021B5BEE:
	ldr r1, _021B5BF8 ; =ovy197_21b6e84
	bl sub_021B9678
_021B5BF4:
	pop {r4, pc}
	nop
_021B5BF8: .word ovy197_21b6e84
	thumb_func_end ovy197_21b5bb4

	thumb_func_start ovy197_21b5bfc
ovy197_21b5bfc: ; 0x021B5BFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6]
	add r4, r2, #0
	cmp r0, #0x13
	bls _021B5C0E
	b _021B60AC
_021B5C0E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B5C1A: ; jump table
	.short _021B5C42 - _021B5C1A - 2 ; case 0
	.short _021B5C86 - _021B5C1A - 2 ; case 1
	.short _021B5D96 - _021B5C1A - 2 ; case 2
	.short _021B5DBA - _021B5C1A - 2 ; case 3
	.short _021B5DCC - _021B5C1A - 2 ; case 4
	.short _021B5DFE - _021B5C1A - 2 ; case 5
	.short _021B5E12 - _021B5C1A - 2 ; case 6
	.short _021B5E28 - _021B5C1A - 2 ; case 7
	.short _021B5E54 - _021B5C1A - 2 ; case 8
	.short _021B5EE6 - _021B5C1A - 2 ; case 9
	.short _021B5F40 - _021B5C1A - 2 ; case 10
	.short _021B5F52 - _021B5C1A - 2 ; case 11
	.short _021B5F84 - _021B5C1A - 2 ; case 12
	.short _021B5FA4 - _021B5C1A - 2 ; case 13
	.short _021B5FD2 - _021B5C1A - 2 ; case 14
	.short _021B5FF8 - _021B5C1A - 2 ; case 15
	.short _021B600E - _021B5C1A - 2 ; case 16
	.short _021B6032 - _021B5C1A - 2 ; case 17
	.short _021B6044 - _021B5C1A - 2 ; case 18
	.short _021B6098 - _021B5C1A - 2 ; case 19
_021B5C42:
	mov r1, #0xf2
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021B5C58
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #2
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5C58:
	mov r5, #0xa1
	lsl r5, r5, #2
	sub r1, #0x24
	ldr r0, [r4, r5]
	ldr r1, [r4, r1]
	mov r2, #0
	mov r3, #0
	mov r7, #0
	bl ovy197_21b8cd0
	sub r5, #0x14
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021B5C7E
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x1d
	bl ovy197_21b6f74
_021B5C7E:
	mov r0, #1
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5C86:
	add r0, r4, #0
	bl ovy197_21b7170
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021B5D88
	cmp r0, #0
	bne _021B5D58
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	bl ovy197_21b7140
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200A7E4
	cmp r0, #0
	bne _021B5CB4
	ldr r0, [sp, #8]
	b _021B5CB6
_021B5CB4:
	mov r0, #0
_021B5CB6:
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021B5CF4
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021B5CF4
	mov r0, #0xef
	lsl r0, r0, #2
	add r7, r4, r0
_021B5CD4:
	ldr r0, [r7]
	add r1, r5, #0
	bl sub_0200A820
	cmp r0, #0
	beq _021B5CE4
	mov r0, #0
	str r0, [sp, #8]
_021B5CE4:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r5, r5, #1
	bl sub_0200AA64
	cmp r5, r0
	blo _021B5CD4
_021B5CF4:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021B5D3C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021B5D34
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200AA6C
	mov r2, #0x43
	cmp r0, #0
	beq _021B5D12
	mov r2, #0x3a
_021B5D12:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r3, #1
	bl ovy197_21b8cd0
	ldr r0, [sp]
	mov r1, #0
	bl sub_021B9688
	mov r0, #0x13
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5D34:
	mov r0, #0x10
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5D3C:
	bl sub_02035318
	cmp r0, #0
	bne _021B5D50
	ldr r0, [sp]
	ldr r1, _021B6068 ; =ovy197_21b6eb4
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5D50:
	mov r0, #2
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5D58:
	cmp r0, #1
	bne _021B5D6E
	add r0, r4, #0
	bl ovy197_21b7140
	ldr r0, [sp]
	ldr r1, _021B606C ; =ovy197_21b691c
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5D6E:
	cmp r0, #2
	bne _021B5D84
	add r0, r4, #0
	bl ovy197_21b7140
	ldr r0, [sp]
	ldr r1, _021B6070 ; =ovy197_21b60b0
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5D84:
	cmp r0, #3
	beq _021B5D8A
_021B5D88:
	b _021B60AC
_021B5D8A:
	ldr r0, [sp]
	ldr r1, _021B6074 ; =ovy197_21b5bb4
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5D96:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #4
	mov r3, #1
	bl ovy197_21b8cd0
	ldr r0, [sp]
	mov r1, #3
	bl sub_021B9688
	mov r0, #0x13
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5DBA:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6efc
	mov r0, #4
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5DCC:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21b8f3c
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B5E8E
	add r0, r4, #0
	bl ovy197_21b6f5c
	cmp r5, #0
	bne _021B5DF2
	mov r0, #5
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5DF2:
	cmp r5, #1
	bne _021B5E8E
	mov r0, #0
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5DFE:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ovy197_21bd0d0
	mov r0, #6
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5E12:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd1a8
	cmp r0, #2
	bne _021B5E8E
	mov r0, #7
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5E28:
	add r0, r4, #0
	bl ovy197_21b7140
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ovy197_21b6f74
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #7
	mov r3, #0
	bl ovy197_21b8cd0
	mov r0, #8
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5E54:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_021BD2A0
	mov r1, #0x20
	tst r0, r1
	beq _021B5E70
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	mov r2, #1
	b _021B5E7A
_021B5E70:
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	mov r2, #0
_021B5E7A:
	bl sub_021B9614
	add r0, r4, #0
	bl ovy197_21b7170
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021B5E90
_021B5E8E:
	b _021B60AC
_021B5E90:
	add r0, r4, #0
	bl ovy197_21b7140
	cmp r5, #3
	bhi _021B5F92
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B5EA6: ; jump table
	.short _021B5EAE - _021B5EA6 - 2 ; case 0
	.short _021B5EBE - _021B5EA6 - 2 ; case 1
	.short _021B5ECE - _021B5EA6 - 2 ; case 2
	.short _021B5EDE - _021B5EA6 - 2 ; case 3
_021B5EAE:
	mov r0, #0xeb
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #9
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5EBE:
	mov r0, #0xeb
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xc
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5ECE:
	mov r0, #0xeb
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #9
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5EDE:
	mov r0, #0xe
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5EE6:
	mov r1, #0xeb
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021B5EFC
	cmp r0, #1
	beq _021B5F92
	cmp r0, #2
	beq _021B5F1E
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5EFC:
	mov r0, #0xa1
	lsl r0, r0, #2
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x11
	mov r3, #1
	bl ovy197_21b8cd0
	ldr r0, [sp]
	mov r1, #0xa
	bl sub_021B9688
	mov r0, #0x13
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5F1E:
	mov r0, #0xa1
	lsl r0, r0, #2
	sub r1, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x17
	mov r3, #1
	bl ovy197_21b8cd0
	ldr r0, [sp]
	mov r1, #0xa
	bl sub_021B9688
	mov r0, #0x13
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5F40:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6efc
	mov r0, #0xb
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5F52:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21b8f3c
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B5F92
	add r0, r4, #0
	bl ovy197_21b6f5c
	cmp r5, #0
	bne _021B5F78
	mov r0, #0xc
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5F78:
	cmp r5, #1
	bne _021B5F92
	mov r0, #7
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5F84:
	mov r5, #0x3b
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl ovy197_21bd1a8
	cmp r0, #2
	beq _021B5F94
_021B5F92:
	b _021B60AC
_021B5F94:
	ldr r0, [r4, r5]
	mov r1, #3
	bl ovy197_21bd0d0
	mov r0, #0xd
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5FA4:
	mov r5, #0x3b
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl ovy197_21bd1a8
	cmp r0, #0
	bne _021B60AC
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021B5FC6
	ldr r0, [sp]
	ldr r1, _021B6078 ; =ovy197_21b6c70
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5FC6:
	ldr r0, [sp]
	ldr r1, _021B607C ; =ovy197_21b619c
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B5FD2:
	mov r5, #0x3b
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl ovy197_21bd1a8
	cmp r0, #2
	bne _021B5FF0
	ldr r0, [r4, r5]
	mov r1, #3
	bl ovy197_21bd0d0
	mov r0, #0xf
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5FF0:
	mov r0, #0
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B5FF8:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd1a8
	cmp r0, #0
	bne _021B60AC
	mov r0, #0
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B600E:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x3e
	mov r3, #1
	bl ovy197_21b8cd0
	ldr r0, [sp]
	mov r1, #0x11
	bl sub_021B9688
	mov r0, #0x13
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B6032:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6efc
	mov r0, #0x12
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B6044:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21b8f3c
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021B60AC
	add r0, r4, #0
	bl ovy197_21b6f5c
	cmp r5, #0
	bne _021B608C
	ldr r0, [sp]
	ldr r1, _021B6080 ; =ovy197_21b6ac4
	b _021B6084
	.align 2, 0
_021B6068: .word ovy197_21b6eb4
_021B606C: .word ovy197_21b691c
_021B6070: .word ovy197_21b60b0
_021B6074: .word ovy197_21b5bb4
_021B6078: .word ovy197_21b6c70
_021B607C: .word ovy197_21b619c
_021B6080: .word ovy197_21b6ac4
_021B6084:
	bl sub_021B9678
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B608C:
	cmp r5, #1
	bne _021B60AC
	mov r0, #0
	add sp, #0xc
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021B6098:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021B60AC
	ldr r0, [sp]
	bl sub_021B968C
_021B60AC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy197_21b5bfc

	thumb_func_start ovy197_21b60b0
ovy197_21b60b0: ; 0x021B60B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021B60C8
	cmp r0, #2
	beq _021B60EC
	cmp r0, #3
	beq _021B6182
	pop {r3, r4, r5, r6, r7, pc}
_021B60C8:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x2f
	mov r3, #0
	bl ovy197_21b8cd0
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x1d
	bl ovy197_21b6f74
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B60EC:
	add r0, r4, #0
	bl ovy197_21b7170
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B6196
	add r0, r4, #0
	bl ovy197_21b7140
	cmp r6, #0
	bne _021B6128
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x35
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B9688
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6128:
	cmp r6, #1
	bne _021B614E
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x36
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B9688
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B614E:
	cmp r6, #2
	bne _021B6174
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x37
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B9688
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6174:
	cmp r6, #3
	bne _021B6196
	ldr r1, _021B6198 ; =ovy197_21b5bfc
	add r0, r7, #0
	bl sub_021B9678
	pop {r3, r4, r5, r6, r7, pc}
_021B6182:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021B6196
	add r0, r7, #0
	bl sub_021B968C
_021B6196:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6198: .word ovy197_21b5bfc
	thumb_func_end ovy197_21b60b0

	thumb_func_start ovy197_21b619c
ovy197_21b619c: ; 0x021B619C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, [r5]
	add r7, r0, #0
	add r4, r2, #0
	cmp r1, #0xe
	bls _021B61AE
	b _021B65CA
_021B61AE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B61BA: ; jump table
	.short _021B61D8 - _021B61BA - 2 ; case 0
	.short _021B6228 - _021B61BA - 2 ; case 1
	.short _021B6324 - _021B61BA - 2 ; case 2
	.short _021B6348 - _021B61BA - 2 ; case 3
	.short _021B638C - _021B61BA - 2 ; case 4
	.short _021B6396 - _021B61BA - 2 ; case 5
	.short _021B63C4 - _021B61BA - 2 ; case 6
	.short _021B6434 - _021B61BA - 2 ; case 7
	.short _021B6446 - _021B61BA - 2 ; case 8
	.short _021B64EC - _021B61BA - 2 ; case 9
	.short _021B64FE - _021B61BA - 2 ; case 10
	.short _021B6556 - _021B61BA - 2 ; case 11
	.short _021B657A - _021B61BA - 2 ; case 12
	.short _021B659E - _021B61BA - 2 ; case 13
	.short _021B65B6 - _021B61BA - 2 ; case 14
_021B61D8:
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021B61F4
	cmp r1, #1
	beq _021B61EC
	cmp r1, #2
	beq _021B61FC
	b _021B6206
_021B61EC:
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #4
	b _021B6202
_021B61F4:
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #7
	b _021B6202
_021B61FC:
	add r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xa
_021B6202:
	bl ovy197_21bd0d0
_021B6206:
	mov r0, #0xa1
	mov r6, #0xe9
	lsl r0, r0, #2
	lsl r6, r6, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r6]
	mov r2, #0x1a
	mov r3, #0
	mov r7, #0
	bl ovy197_21b8cd0
	add r6, #0x20
	str r7, [r4, r6]
	mov r0, #1
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6228:
	mov r6, #0x3b
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	bl ovy197_21bd1a8
	cmp r0, #0
	bne _021B627A
	add r1, r6, #0
	add r1, #0x1c
	add r2, r6, #0
	ldr r0, [r4, r6]
	add r1, r4, r1
	sub r2, #0xe0
	bl ovy197_21bd2a4
	cmp r0, #1
	bne _021B6272
	add r1, r6, #0
	add r0, r6, #0
	add r1, #8
	add r0, #0x1c
	ldr r1, [r4, r1]
	ldr r2, _021B652C ; =0x0000801D
	add r0, r4, r0
	bl ovy197_21bdd34
	add r6, #0x1c
	add r1, r0, #0
	add r0, r4, r6
	bl ovy197_21b831c
	cmp r0, #0
	beq _021B626E
	mov r0, #5
	b _021B6278
_021B626E:
	mov r0, #0xc
	b _021B6278
_021B6272:
	cmp r0, #2
	bne _021B627A
	mov r0, #2
_021B6278:
	str r0, [r5]
_021B627A:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd2c8
	cmp r0, #1
	beq _021B628C
	cmp r0, #2
	bne _021B629E
_021B628C:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd318
	ldr r1, _021B6530 ; =ovy197_21b5bfc
	add r0, r7, #0
	bl sub_021B9678
_021B629E:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	bne _021B62B8
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	ldr r0, _021B6534 ; =0x00001C20
	cmp r2, r0
	bls _021B6312
_021B62B8:
	mov r7, #0xeb
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	mov r6, #0
	cmp r0, #0
	beq _021B62E2
	cmp r0, #1
	beq _021B62CE
	cmp r0, #2
	beq _021B62F6
	b _021B630E
_021B62CE:
	add r0, r7, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd1a8
	cmp r0, #4
	bne _021B630E
	add r0, r7, #4
	ldr r0, [r4, r0]
	mov r1, #5
	b _021B6308
_021B62E2:
	add r0, r7, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd1a8
	cmp r0, #8
	bne _021B630E
	add r0, r7, #4
	ldr r0, [r4, r0]
	mov r1, #9
	b _021B6308
_021B62F6:
	add r0, r7, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd1a8
	cmp r0, #0xb
	bne _021B630E
	add r0, r7, #4
	ldr r0, [r4, r0]
	mov r1, #0xc
_021B6308:
	bl ovy197_21bd0d0
	mov r6, #1
_021B630E:
	cmp r6, #0
	bne _021B6314
_021B6312:
	b _021B65CA
_021B6314:
	mov r0, #2
	str r0, [r5]
	mov r0, #0xf1
	mov r1, #0
	lsl r0, r0, #2
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021B6324:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x39
	mov r3, #2
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #3
	bl sub_021B9688
	mov r0, #0xe
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6348:
	mov r6, #0xf1
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	add r0, r0, #1
	str r0, [r4, r6]
	add r0, r6, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl ovy197_21bd1a8
	cmp r0, #0
	bne _021B645A
	ldr r0, [r4, r6]
	cmp r0, #0x1e
	bls _021B645A
	mov r0, #0
	str r0, [r4, r6]
	mov r0, #0xa1
	lsl r0, r0, #2
	sub r6, #0x20
	ldr r0, [r4, r0]
	ldr r1, [r4, r6]
	mov r2, #0x3c
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #4
	bl sub_021B9688
	mov r0, #0xe
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B638C:
	ldr r1, _021B6530 ; =ovy197_21b5bfc
	bl sub_021B9678
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B6396:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x1d
	bl ovy197_21b6f74
	add r0, r4, #0
	mov r1, #0x1d
	bl ovy197_21b719c
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x1b
	mov r3, #0
	bl ovy197_21b8cd0
	mov r0, #6
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B63C4:
	mov r6, #0
	add r0, r4, #0
	bl ovy197_21b7170
	sub r1, r6, #1
	cmp r0, r1
	beq _021B6400
	cmp r0, #0
	bne _021B63F8
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x1f
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #7
	bl sub_021B9688
	mov r0, #0xe
	str r0, [r5]
	b _021B640C
_021B63F8:
	sub r1, r6, #2
	cmp r0, r1
	bne _021B640C
	b _021B640A
_021B6400:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021B640C
_021B640A:
	mov r6, #1
_021B640C:
	cmp r6, #0
	beq _021B645A
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x1c
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #9
	bl sub_021B9688
	mov r0, #0xe
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6434:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6efc
	mov r0, #8
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6446:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21b8f3c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021B645C
_021B645A:
	b _021B65CA
_021B645C:
	add r0, r4, #0
	bl ovy197_21b6f5c
	cmp r6, #0
	bne _021B64E0
	add r0, r4, #0
	bl ovy197_21b7140
	mov r1, #0x12
	lsl r1, r1, #6
	ldrb r0, [r4, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021B6492
	add r0, r1, #0
	sub r1, r1, #4
	sub r0, #0xc4
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_0200A8C4
	cmp r0, #0
	beq _021B6492
	mov r0, #0xb
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6492:
	add r0, sp, #0
	bl sub_0204424C
	mov r1, #0x7d
	ldr r0, [sp, #8]
	ldr r2, [sp]
	lsl r1, r1, #4
	add r1, r2, r1
	lsl r2, r1, #0x10
	ldr r1, [sp, #4]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	lsr r0, r0, #0x18
	orr r1, r2
	ldr r5, _021B6538 ; =0x00000478
	orr r0, r1
	str r0, [r4, r5]
	add r0, r5, #0
	sub r0, #0xbc
	add r1, r5, #0
	sub r1, #0xac
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl sub_0200A750
	add r0, r5, #0
	add r1, r5, #4
	sub r0, #0xbc
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_0200A900
	ldr r1, _021B653C ; =ovy197_21b65d4
	add r0, r7, #0
	bl sub_021B9678
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B64E0:
	cmp r6, #1
	bne _021B65CA
	mov r0, #5
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B64EC:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6efc
	mov r0, #0xa
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B64FE:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21b8f3c
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021B65CA
	add r0, r4, #0
	bl ovy197_21b6f5c
	cmp r6, #0
	bne _021B654A
	add r0, r4, #0
	bl ovy197_21b7140
	add r0, r4, #0
	bl ovy197_21b725c
	ldr r1, _021B6530 ; =ovy197_21b5bfc
	b _021B6540
	.align 2, 0
_021B652C: .word 0x0000801D
_021B6530: .word ovy197_21b5bfc
_021B6534: .word 0x00001C20
_021B6538: .word 0x00000478
_021B653C: .word ovy197_21b65d4
_021B6540:
	add r0, r7, #0
	bl sub_021B9678
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B654A:
	cmp r6, #1
	bne _021B65CA
	mov r0, #5
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6556:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x3b
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #0xd
	bl sub_021B9688
	mov r0, #0xe
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B657A:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x41
	mov r3, #1
	bl ovy197_21b8cd0
	add r0, r7, #0
	mov r1, #0xd
	bl sub_021B9688
	mov r0, #0xe
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B659E:
	add r0, r4, #0
	bl ovy197_21b7140
	add r0, r4, #0
	bl ovy197_21b725c
	ldr r1, _021B65D0 ; =ovy197_21b5bfc
	add r0, r7, #0
	bl sub_021B9678
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021B65B6:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021B65CA
	add r0, r7, #0
	bl sub_021B968C
_021B65CA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B65D0: .word ovy197_21b5bfc
	thumb_func_end ovy197_21b619c

	thumb_func_start ovy197_21b65d4
ovy197_21b65d4: ; 0x021B65D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0x12
	bls _021B65E4
	b _021B690A
_021B65E4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B65F0: ; jump table
	.short _021B6616 - _021B65F0 - 2 ; case 0
	.short _021B668A - _021B65F0 - 2 ; case 1
	.short _021B669A - _021B65F0 - 2 ; case 2
	.short _021B66B0 - _021B65F0 - 2 ; case 3
	.short _021B66CC - _021B65F0 - 2 ; case 4
	.short _021B66E2 - _021B65F0 - 2 ; case 5
	.short _021B66FC - _021B65F0 - 2 ; case 6
	.short _021B670E - _021B65F0 - 2 ; case 7
	.short _021B672A - _021B65F0 - 2 ; case 8
	.short _021B6746 - _021B65F0 - 2 ; case 9
	.short _021B675E - _021B65F0 - 2 ; case 10
	.short _021B67A0 - _021B65F0 - 2 ; case 11
	.short _021B67B0 - _021B65F0 - 2 ; case 12
	.short _021B6836 - _021B65F0 - 2 ; case 13
	.short _021B684A - _021B65F0 - 2 ; case 14
	.short _021B686A - _021B65F0 - 2 ; case 15
	.short _021B6898 - _021B65F0 - 2 ; case 16
	.short _021B68DC - _021B65F0 - 2 ; case 17
	.short _021B6904 - _021B65F0 - 2 ; case 18
_021B6616:
	mov r6, #0xe5
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl ovy197_21b8518
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	ldr r0, [r4, r6]
	bl sub_021B850C
	mov r7, #0xa5
	add r3, r6, #0
	add r2, r6, #0
	add r2, #0x38
	lsl r7, r7, #2
	add r1, r0, #0
	add r0, r4, r7
	str r0, [sp]
	add r0, r7, #0
	add r0, #0xfc
	add r0, r4, r0
	str r0, [sp, #4]
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	add r3, #0x24
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0xc
	add r2, r4, r2
	bl ovy197_21b7294
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0
	bl ovy197_21b79e4
	sub r7, #0x10
	add r6, #0x10
	ldr r0, [r4, r7]
	ldr r1, [r4, r6]
	mov r2, #0x22
	mov r3, #2
	bl ovy197_21b8cd0
	mov r0, #1
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B668A:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B669A:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021B6754
	mov r0, #3
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B66B0:
	add r0, r4, #0
	add r0, #0xc
	bl ovy197_21b7ac8
	add r4, #0xc
	add r0, r4, #0
	bl sub_021B7AE0
	cmp r0, #0
	beq _021B6754
	mov r0, #4
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B66CC:
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200A9D4
	mov r0, #5
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B66E2:
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_0200A9F4
	cmp r0, #2
	bne _021B6754
	mov r0, #6
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B66FC:
	add r4, #0xc
	add r0, r4, #0
	mov r1, #1
	bl ovy197_21b79e4
	mov r0, #7
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B670E:
	add r0, r4, #0
	add r0, #0xc
	bl ovy197_21b7ac8
	add r4, #0xc
	add r0, r4, #0
	bl sub_021B7AE0
	cmp r0, #0
	beq _021B6754
	mov r0, #8
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B672A:
	mov r0, #0xa1
	mov r1, #0xe9
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x23
	mov r3, #1
	bl ovy197_21b8cd0
	mov r0, #9
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6746:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	bne _021B6756
_021B6754:
	b _021B690A
_021B6756:
	mov r0, #0xa
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B675E:
	add r0, r4, #0
	add r0, #0xc
	bl ovy197_21b7a70
	mov r7, #0xa1
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	bl ovy197_21b8bcc
	mov r6, #0
	add r0, r4, #0
	str r6, [r4, r7]
	bl ovy197_21b7140
	ldr r0, _021B6910 ; =0x04000050
	strh r6, [r0]
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy197_21b8558
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #0xb
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B67A0:
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #0xc
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B67B0:
	mov r0, #1
	mov r1, #0
	mov r6, #0
	bl sub_02044C98
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #0x30
	blx MI_CpuFill8
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #8
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0xf
	mov r7, #0xd
	mov r6, #0xe5
	str r0, [sp, #0x1c]
	mov r0, #0xa
	str r7, [sp, #0x24]
	lsl r6, r6, #2
	str r0, [sp, #0x20]
	ldr r0, [r4, r6]
	bl sub_021B850C
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	mov r1, #0x1d
	str r0, [sp, #0x2c]
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	str r0, [sp, #0x30]
	add r0, r6, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x34]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x38]
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	str r0, [sp, #0x3c]
	add r0, sp, #0x10
	bl ovy197_21bbd90
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0x38
	str r1, [r4, #4]
	add r6, #0x24
	ldr r2, [r4, r6]
	add r0, r4, r0
	mov r3, #0x1d
	bl ovy197_21bc014
	mov r1, #0
	str r0, [r4]
	bl ovy197_21bce74
	add sp, #0x40
	str r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6836:
	ldr r0, [r4]
	bl ovy197_21bc794
	ldr r0, [r4]
	bl ovy197_21bcd24
	mov r0, #0xe
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B684A:
	ldr r0, [r4]
	bl ovy197_21bc794
	ldr r0, [r4]
	bl sub_021BCDDC
	cmp r0, #0
	beq _021B690A
	mov r0, #0xf1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0xf
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B686A:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021B687E
	ldr r0, _021B6914 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #0x12
	str r0, [r5]
_021B687E:
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, #0xf0
	bls _021B690A
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x10
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6898:
	mov r6, #0xe5
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_021B850C
	add r2, r0, #0
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r7, #0x99
	str r0, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	add r0, r6, #4
	ldr r0, [r4, r0]
	lsl r7, r7, #2
	str r0, [sp, #8]
	mov r0, #0x1d
	str r0, [sp, #0xc]
	add r1, r7, #0
	add r6, #8
	add r1, #0x30
	ldr r3, [r4, r6]
	add r0, r4, r7
	add r1, r4, r1
	bl ovy197_21b81bc
	add r0, r4, r7
	bl sub_021B8280
	mov r0, #0x11
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B68DC:
	mov r6, #0x99
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_021B8280
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021B690A
	ldr r0, _021B6914 ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r4, r6
	bl ovy197_21b8250
	mov r0, #0x12
	add sp, #0x40
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6904:
	ldr r1, _021B6918 ; =ovy197_21b5bb4
	bl sub_021B9678
_021B690A:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6910: .word 0x04000050
_021B6914: .word 0x0000054C
_021B6918: .word ovy197_21b5bb4
	thumb_func_end ovy197_21b65d4

	thumb_func_start ovy197_21b691c
ovy197_21b691c: ; 0x021B691C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #8
	bls _021B692E
	b _021B6AAC
_021B692E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B693A: ; jump table
	.short _021B694C - _021B693A - 2 ; case 0
	.short _021B6968 - _021B693A - 2 ; case 1
	.short _021B69DC - _021B693A - 2 ; case 2
	.short _021B69EE - _021B693A - 2 ; case 3
	.short _021B6A02 - _021B693A - 2 ; case 4
	.short _021B6A14 - _021B693A - 2 ; case 5
	.short _021B6A84 - _021B693A - 2 ; case 6
	.short _021B6A96 - _021B693A - 2 ; case 7
	.short _021B6A9E - _021B693A - 2 ; case 8
_021B694C:
	mov r3, #0x10
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	sub r3, #0x11
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #1
_021B695E:
	bl sub_021B9688
	mov r0, #8
_021B6964:
	str r0, [r5]
	b _021B6AAC
_021B6968:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r6, #0
	bl sub_021B8050
	add r0, r4, #0
	bl ovy197_21b7140
	mov r7, #0xa1
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	bl ovy197_21b8bcc
	str r6, [r4, r7]
	add r7, sp, #4
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	str r6, [sp, #4]
	mov r6, #0xe5
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl sub_021B850C
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	mov r1, #0x1d
	str r0, [sp, #0x10]
	add r0, r6, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	add r6, #0x24
	str r0, [sp, #0x20]
	ldr r0, [r4, r6]
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl ovy197_21b99e0
	str r0, [r4, #8]
	mov r0, #2
_021B69DA:
	b _021B6964
_021B69DC:
	mov r2, #0
	mov r0, #3
	mov r1, #0x10
	sub r3, r2, #1
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #3
	b _021B695E
_021B69EE:
	ldr r0, [r4, #8]
	bl ovy197_21b9cb8
	ldr r0, [r4, #8]
	bl sub_021B9DD0
	cmp r0, #0
	beq _021B6AAC
	mov r0, #4
	b _021B69DA
_021B6A02:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #5
	b _021B695E
_021B6A14:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_021B8050
	ldr r0, [r4, #8]
	bl ovy197_21b9be4
	mov r6, #0x39
	mov r0, #0
	lsl r6, r6, #4
	str r0, [r4, #8]
	add r0, r4, r6
	mov r1, #0
	bl ovy197_21b570c
	add r0, r6, #0
	sub r0, #0xfc
	add r0, r4, r0
	mov r1, #0x1d
	mov r7, #0x1d
	bl ovy197_21b5a20
	add r2, r6, #0
	str r7, [sp]
	add r2, #0xc
	add r6, #8
	ldr r2, [r4, r2]
	ldr r3, [r4, r6]
	mov r0, #1
	mov r1, #0xf
	bl ovy197_21b8a6c
	mov r1, #0xa1
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0xa
	mov r2, #0xe
	bl ovy197_21b8dc4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1d
	bl ovy197_21b6f74
	mov r0, #3
	str r0, [sp]
	ldr r0, _021B6ABC ; =0x04000050
	mov r1, #4
	mov r2, #0x18
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #6
	b _021B69DA
_021B6A84:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #7
	b _021B695E
_021B6A96:
	ldr r1, _021B6AC0 ; =ovy197_21b5bfc
	bl sub_021B9678
	b _021B6AAC
_021B6A9E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B6AAC
	add r0, r6, #0
	bl sub_021B968C
_021B6AAC:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B6AB6
	bl ovy197_21b9d94
_021B6AB6:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6ABC: .word 0x04000050
_021B6AC0: .word ovy197_21b5bfc
	thumb_func_end ovy197_21b691c

	thumb_func_start ovy197_21b6ac4
ovy197_21b6ac4: ; 0x021B6AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #8
	bls _021B6AD6
	b _021B6C5A
_021B6AD6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B6AE2: ; jump table
	.short _021B6AF4 - _021B6AE2 - 2 ; case 0
	.short _021B6B10 - _021B6AE2 - 2 ; case 1
	.short _021B6B86 - _021B6AE2 - 2 ; case 2
	.short _021B6B98 - _021B6AE2 - 2 ; case 3
	.short _021B6BAC - _021B6AE2 - 2 ; case 4
	.short _021B6BBE - _021B6AE2 - 2 ; case 5
	.short _021B6C22 - _021B6AE2 - 2 ; case 6
	.short _021B6C34 - _021B6AE2 - 2 ; case 7
	.short _021B6C4C - _021B6AE2 - 2 ; case 8
_021B6AF4:
	mov r3, #0x10
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	sub r3, #0x11
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #1
_021B6B06:
	bl sub_021B9688
	mov r0, #8
_021B6B0C:
	str r0, [r5]
	b _021B6C5A
_021B6B10:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r6, #0
	bl sub_021B8050
	add r0, r4, #0
	bl ovy197_21b7140
	mov r7, #0xa1
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	bl ovy197_21b8bcc
	str r6, [r4, r7]
	add r7, sp, #4
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	mov r6, #0xe5
	mov r0, #1
	lsl r6, r6, #2
	str r0, [sp, #4]
	ldr r0, [r4, r6]
	bl sub_021B850C
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	mov r1, #0x1d
	str r0, [sp, #0x10]
	add r0, r6, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	add r6, #0x24
	str r0, [sp, #0x20]
	ldr r0, [r4, r6]
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl ovy197_21b99e0
	str r0, [r4, #8]
	mov r0, #2
_021B6B84:
	b _021B6B0C
_021B6B86:
	mov r2, #0
	mov r0, #3
	mov r1, #0x10
	sub r3, r2, #1
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #3
	b _021B6B06
_021B6B98:
	ldr r0, [r4, #8]
	bl ovy197_21b9cb8
	ldr r0, [r4, #8]
	bl sub_021B9DD0
	cmp r0, #0
	beq _021B6C5A
	mov r0, #4
	b _021B6B84
_021B6BAC:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #5
	b _021B6B06
_021B6BBE:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_021B8050
	ldr r0, [r4, #8]
	bl ovy197_21b9be4
	mov r6, #0x39
	lsl r6, r6, #4
	mov r1, #0
	add r0, r4, r6
	str r1, [r4, #8]
	bl ovy197_21b570c
	add r0, r6, #0
	sub r0, #0xfc
	add r0, r4, r0
	mov r1, #0x1d
	mov r7, #0x1d
	bl ovy197_21b5a20
	add r2, r6, #0
	str r7, [sp]
	add r2, #0xc
	add r6, #8
	ldr r2, [r4, r2]
	ldr r3, [r4, r6]
	mov r0, #1
	mov r1, #0xf
	bl ovy197_21b8a6c
	mov r1, #0xa1
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0xa
	mov r2, #0xe
	bl ovy197_21b8dc4
	mov r0, #3
	str r0, [sp]
	ldr r0, _021B6C68 ; =0x04000050
	mov r1, #4
	mov r2, #0x18
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #6
	b _021B6B84
_021B6C22:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	add r0, r6, #0
	mov r1, #7
	b _021B6B06
_021B6C34:
	mov r5, #0xef
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0200A7E4
	add r5, #0xc
	str r0, [r4, r5]
	ldr r1, _021B6C6C ; =ovy197_21b5bfc
	add r0, r6, #0
	bl sub_021B9678
	b _021B6C5A
_021B6C4C:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B6C5A
	add r0, r6, #0
	bl sub_021B968C
_021B6C5A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B6C64
	bl ovy197_21b9d94
_021B6C64:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6C68: .word 0x04000050
_021B6C6C: .word ovy197_21b5bfc
	thumb_func_end ovy197_21b6ac4

	thumb_func_start ovy197_21b6c70
ovy197_21b6c70: ; 0x021B6C70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x3b
	add r4, r2, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r5, r1, #0
	bl ovy197_21bd2c8
	cmp r0, #1
	beq _021B6C8A
	cmp r0, #2
	bne _021B6C9C
_021B6C8A:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21bd318
	ldr r1, _021B6E64 ; =ovy197_21b5bfc
	add r0, r6, #0
	bl sub_021B9678
_021B6C9C:
	ldr r0, [r5]
	cmp r0, #8
	bhi _021B6CDA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B6CAE: ; jump table
	.short _021B6CC0 - _021B6CAE - 2 ; case 0
	.short _021B6CD2 - _021B6CAE - 2 ; case 1
	.short _021B6CEE - _021B6CAE - 2 ; case 2
	.short _021B6D26 - _021B6CAE - 2 ; case 3
	.short _021B6E16 - _021B6CAE - 2 ; case 4
	.short _021B6D94 - _021B6CAE - 2 ; case 5
	.short _021B6E1C - _021B6CAE - 2 ; case 6
	.short _021B6E2E - _021B6CAE - 2 ; case 7
	.short _021B6E3C - _021B6CAE - 2 ; case 8
_021B6CC0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	mov r3, #0
	bl sub_0204E060
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6CD2:
	bl sub_0204E0E0
	cmp r0, #0
	beq _021B6CDC
_021B6CDA:
	b _021B6E60
_021B6CDC:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_021B8050
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6CEE:
	mov r6, #0xa1
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021B6D00
	bl ovy197_21b8bcc
	mov r0, #0
	str r0, [r4, r6]
_021B6D00:
	mov r6, #0xa5
	lsl r6, r6, #2
	add r0, r4, r6
	bl ovy197_21b59e8
	add r6, #0xfc
	add r0, r4, r6
	bl sub_021B5708
	mov r6, #0xe5
	lsl r6, r6, #2
	ldr r0, [r4, r6]
	bl ovy197_21b848c
	mov r0, #0
	str r0, [r4, r6]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6D26:
	ldr r0, _021B6E68 ; =0x00000A6A
	ldr r3, _021B6E6C ; =0x021BE980
	str r0, [sp]
	mov r0, #0x1d
	mov r1, #0x28
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r6, #0xf
	lsl r6, r6, #6
	mov r1, #0
	mov r2, #0x28
	str r0, [r4, r6]
	blx MI_CpuFill8
	add r0, r6, #0
	sub r0, #8
	ldr r1, [r4, r0]
	ldr r0, [r4, r6]
	str r1, [r0]
	ldr r0, [r4, r6]
	mov r1, #1
	str r7, [r0, #4]
	ldr r0, [r4, r6]
	str r1, [r0, #8]
	ldr r0, [r4, r6]
	mov r1, #9
	str r7, [r0, #0x10]
	ldr r0, [r4, r6]
	str r7, [r0, #0x18]
	ldr r0, [r4, r6]
	str r1, [r0, #0xc]
	sub r0, r6, #4
	ldr r0, [r4, r0]
	bl sub_0200AA6C
	cmp r0, #0
	bne _021B6D7C
	ldr r0, [r4, r6]
	mov r1, #2
	str r1, [r0, #0x14]
	b _021B6D80
_021B6D7C:
	ldr r0, [r4, r6]
	str r7, [r0, #0x14]
_021B6D80:
	mov r2, #0xf
	lsl r2, r2, #6
	ldr r0, _021B6E70 ; =0x000000BE
	ldr r1, _021B6E74 ; =0x021B50A8
	ldr r2, [r4, r2]
	bl sub_0203A938
	mov r0, #5
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6D94:
	mov r0, #1
	mov r1, #0x1d
	bl ovy197_21b83ec
	mov r6, #0xe5
	lsl r6, r6, #2
	str r0, [r4, r6]
	sub r0, r6, #4
	add r0, r4, r0
	mov r1, #0x1d
	bl ovy197_21b56e4
	ldr r0, [r4, r6]
	bl sub_021B850C
	mov r7, #0xa5
	lsl r7, r7, #2
	add r1, r0, #0
	add r0, r4, r7
	mov r2, #0x1d
	bl ovy197_21b58ac
	mov r0, #0x1d
	add r2, r6, #0
	str r0, [sp]
	add r2, #8
	add r3, r6, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	mov r0, #1
	mov r1, #0xf
	bl ovy197_21b8a6c
	sub r7, #0x10
	mov r1, #0xa
	mov r2, #0xe
	str r0, [r4, r7]
	bl ovy197_21b8dc4
	mov r0, #3
	str r0, [sp]
	ldr r0, _021B6E78 ; =0x04000050
	mov r1, #4
	mov r2, #0x18
	mov r3, #0xf
	mov r7, #4
	bl G2x_SetBlendAlpha_
	mov r0, #1
	mov r1, #0x1d
	bl sub_02042BA8
	add r6, #0xee
	ldr r1, _021B6E7C ; =0x0000FFFF
	add r0, r6, #0
	bl sub_02005DF4
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_021B8050
	str r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6E16:
	mov r0, #6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6E1C:
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_0204E060
	mov r0, #7
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6E2E:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B6E60
	mov r0, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021B6E3C:
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021B6E4E
	add r0, r6, #0
	ldr r1, _021B6E80 ; =ovy197_21b619c
	b _021B6E52
_021B6E4E:
	ldr r1, _021B6E64 ; =ovy197_21b5bfc
	add r0, r6, #0
_021B6E52:
	bl sub_021B9678
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0203A24C
_021B6E60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6E64: .word ovy197_21b5bfc
_021B6E68: .word 0x00000A6A
_021B6E6C: .word 0x021BE980
_021B6E70: .word 0x000000BE
_021B6E74: .word 0x021B50A8
_021B6E78: .word 0x04000050
_021B6E7C: .word 0x0000FFFF
_021B6E80: .word ovy197_21b619c
	thumb_func_end ovy197_21b6c70

	thumb_func_start ovy197_21b6e84
ovy197_21b6e84: ; 0x021B6E84
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy197_21b6f5c
	add r0, r4, #0
	bl ovy197_21b7140
	add r0, r4, #0
	bl ovy197_21b725c
	ldr r0, [r4]
	cmp r0, #0
	beq _021B6EAC
	bl ovy197_21bc748
	ldr r0, [r4, #4]
	bl ovy197_21bbfc4
_021B6EAC:
	add r0, r5, #0
	bl sub_021B9680
	pop {r3, r4, r5, pc}
	thumb_func_end ovy197_21b6e84

	thumb_func_start ovy197_21b6eb4
ovy197_21b6eb4: ; 0x021B6EB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021B6EC6
	cmp r0, #1
	beq _021B6EE0
	pop {r3, r4, r5, pc}
_021B6EC6:
	mov r0, #0xa1
	mov r1, #0x3a
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r2, r0]
	ldr r1, [r2, r1]
	mov r2, #0x16
	mov r5, #1
	mov r3, #1
	bl ovy197_21b8cd0
	str r5, [r4]
	pop {r3, r4, r5, pc}
_021B6EE0:
	mov r0, #0xa1
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021B6EF6
	ldr r1, _021B6EF8 ; =ovy197_21b5bfc
	add r0, r5, #0
	bl sub_021B9678
_021B6EF6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6EF8: .word ovy197_21b5bfc
	thumb_func_end ovy197_21b6eb4

	thumb_func_start ovy197_21b6efc
ovy197_21b6efc: ; 0x021B6EFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r7, #0x26
	add r5, r0, #0
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	add r4, r2, #0
	cmp r0, #0
	bne _021B6F56
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x24
	mov r6, #0
	blx MI_CpuFill8
	mov r1, #0xe9
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	str r0, [sp]
	add r0, r1, #0
	sub r0, #0xc
	ldr r0, [r5, r0]
	sub r1, #8
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	mov r1, #0xf
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #6
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x18]
	add r0, sp, #0
	strh r6, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	mov r1, #0xe
	strh r1, [r0, #0x20]
	mov r1, #1
	strh r1, [r0, #0x22]
	add r0, sp, #0
	add r1, r4, #0
	bl ovy197_21b8e00
	str r0, [r5, r7]
_021B6F56:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b6efc

	thumb_func_start ovy197_21b6f5c
ovy197_21b6f5c: ; 0x021B6F5C
	push {r3, r4, r5, lr}
	mov r5, #0x26
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B6F72
	bl ovy197_21b8f0c
	mov r0, #0
	str r0, [r4, r5]
_021B6F72:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy197_21b6f5c

	thumb_func_start ovy197_21b6f74
ovy197_21b6f74: ; 0x021B6F74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r7, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021B6F8A
	b _021B7134
_021B6F8A:
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #0x40
	blx MI_CpuFill8
	mov r5, #0xe6
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, #0x24
	add r0, r4, r0
	bl sub_021B5A18
	str r0, [sp, #0x1c]
	mov r1, #1
	add r0, sp, #0x10
	strh r1, [r0, #0x24]
	mov r1, #0xf
	strh r1, [r0, #0x26]
	mov r3, #2
	strh r3, [r0, #0x28]
	mov r2, #4
	strh r2, [r0, #0x2a]
	ldr r0, _021B7138 ; =0x021B718D
	str r4, [sp, #0x48]
	str r0, [sp, #0x44]
	mov r1, #0
	add r0, sp, #0x10
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	strh r1, [r0, #0x30]
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r0, #4
	add r1, r4, r0
	lsl r0, r7, #2
	add r0, r1, r0
	str r0, [sp, #0x4c]
	cmp r7, #3
	bhi _021B7072
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B6FF2: ; jump table
	.short _021B6FFA - _021B6FF2 - 2 ; case 0
	.short _021B700E - _021B6FF2 - 2 ; case 1
	.short _021B7024 - _021B6FF2 - 2 ; case 2
	.short _021B705A - _021B6FF2 - 2 ; case 3
_021B6FFA:
	add r5, #0xc
	ldr r0, [r4, r5]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0x34
	str r0, [sp, #0x28]
	str r3, [sp, #0x24]
	mov r0, #3
	b _021B706E
_021B700E:
	add r5, #0xc
	ldr r0, [r4, r5]
	str r0, [sp, #0x10]
	mov r0, #8
	str r0, [sp, #0x20]
	mov r0, #9
	str r0, [sp, #0x24]
	mov r0, #0xa
	str r0, [sp, #0x28]
	mov r0, #0xb
	b _021B706E
_021B7024:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x25
	str r0, [sp, #0xc]
	mov r0, #0x25
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r5, #0x94
	add r1, r4, r5
	mov r2, #0x25
	str r0, [sp, #0x20]
	bl sub_02048658
	mov r0, #1
	mov r1, #0x25
	str r0, [sp, #0x30]
	sub r1, #0x26
	add r0, sp, #0x10
	strh r1, [r0, #0x2c]
	ldr r1, [sp, #0xc]
	sub r1, #0x27
	str r1, [sp, #0xc]
	strh r1, [r0, #0x2e]
	mov r1, #0xa
	strh r1, [r0, #0x30]
	b _021B7072
_021B705A:
	add r5, #0xc
	ldr r0, [r4, r5]
	str r0, [sp, #0x10]
	mov r0, #0x30
	str r0, [sp, #0x20]
	mov r0, #0x31
	str r0, [sp, #0x24]
	mov r0, #0x32
	str r0, [sp, #0x28]
	mov r0, #0x33
_021B706E:
	str r0, [sp, #0x2c]
	str r2, [sp, #0x30]
_021B7072:
	mov r0, #0x21
	add r1, r6, #0
	bl sub_0204AA30
	mov r1, #0xa0
	str r1, [sp]
	mov r1, #6
	mov r2, #0
	mov r3, #0
	add r5, r0, #0
	str r6, [sp, #4]
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #2
	mov r3, #0
	str r6, [sp, #8]
	bl sub_0204ADA8
	cmp r7, #2
	bne _021B70B2
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x21
	mov r1, #0x1e
	b _021B70BE
_021B70B2:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x21
	mov r1, #0x1d
_021B70BE:
	mov r2, #2
	mov r3, #0
	bl sub_0204AF18
	add r0, r5, #0
	bl sub_0204AB0C
	mov r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	mov r5, #0
	bl sub_0204566C
	mov r0, #2
	bl sub_02044F90
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	add r7, sp, #0x10
	add r0, r7, #0
	add r1, r6, #0
	bl ovy197_21b92a4
	mov r1, #0x27
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021B711A
_021B7106:
	lsl r0, r5, #2
	add r0, r7, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021B7114
	bl GFL_StrBufFree
_021B7114:
	add r5, r5, #1
	cmp r5, #4
	blt _021B7106
_021B711A:
	mov r0, #3
	str r0, [sp]
	ldr r0, _021B713C ; =0x04000050
	mov r1, #4
	mov r2, #0x18
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #0xa5
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_021B5AAC
_021B7134:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7138: .word 0x021B718D
_021B713C: .word 0x04000050
	thumb_func_end ovy197_21b6f74

	thumb_func_start ovy197_21b7140
ovy197_21b7140: ; 0x021B7140
	push {r4, r5, r6, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B716C
	mov r0, #2
	bl sub_02045738
	mov r0, #2
	bl sub_02044F90
	mov r0, #2
	mov r1, #0
	mov r6, #0
	bl sub_02044C98
	ldr r0, [r5, r4]
	bl ovy197_21b9460
	str r6, [r5, r4]
_021B716C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy197_21b7140

	thumb_func_start ovy197_21b7170
ovy197_21b7170: ; 0x021B7170
	push {r4, r5, r6, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl ovy197_21b9498
	add r4, #0x24
	add r6, r0, #0
	add r0, r5, r4
	bl ovy197_21b5a44
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy197_21b7170
_021B718C:
	.byte 0xA5, 0x21, 0x89, 0x00
	.byte 0x01, 0x4B, 0x40, 0x18, 0x18, 0x47, 0xC0, 0x46, 0xAD, 0x5A, 0x1B, 0x02

	thumb_func_start ovy197_21b719c
ovy197_21b719c: ; 0x021B719C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	cmp r0, #0
	bne _021B724A
	ldr r4, _021B7250 ; =0x021BE334
	add r3, sp, #0x14
	mov r2, #6
_021B71B4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021B71B4
	mov r0, #0x25
	add r1, r6, #0
	bl GFL_StrBufCreate
	ldr r4, _021B7254 ; =0x0000042C
	mov r2, #0x25
	add r1, r5, r4
	str r0, [sp, #0x1c]
	bl sub_02048658
	mov r0, #0xfd
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0x70
	add r1, r5, r1
	mov r2, #0xfd
	str r0, [sp, #0x34]
	bl sub_02048658
	mov r0, #0xf
	str r0, [sp]
	add r0, r4, #0
	sub r0, #0x90
	ldr r0, [r5, r0]
	add r1, sp, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	sub r0, #0x88
	ldr r0, [r5, r0]
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	sub r0, #0x94
	ldr r0, [r5, r0]
	mov r3, #4
	str r0, [sp, #0xc]
	mov r0, #0
	str r6, [sp, #0x10]
	bl ovy197_21b8f80
	mov r1, #0xa3
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x34]
	bl GFL_StrBufFree
	sub r4, #0x9c
	add r0, r5, r4
	mov r1, #1
	bl ovy197_21b570c
	mov r0, #6
	bl sub_02044F90
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	str r0, [sp]
	ldr r0, _021B7258 ; =0x04001050
	mov r1, #4
	mov r2, #0x18
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
_021B724A:
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	nop
_021B7250: .word 0x021BE334
_021B7254: .word 0x0000042C
_021B7258: .word 0x04001050
	thumb_func_end ovy197_21b719c

	thumb_func_start ovy197_21b725c
ovy197_21b725c: ; 0x021B725C
	push {r4, r5, r6, lr}
	mov r4, #0xa3
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B728C
	ldr r0, _021B7290 ; =0x04001050
	mov r6, #0
	strh r6, [r0]
	ldr r0, [r5, r4]
	bl ovy197_21b9070
	ldr r0, [r5, r4]
	bl ovy197_21b9048
	mov r0, #4
	str r6, [r5, r4]
	bl sub_02044F90
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
_021B728C:
	pop {r4, r5, r6, pc}
	nop
_021B7290: .word 0x04001050
	thumb_func_end ovy197_21b725c

	thumb_func_start ovy197_21b7294
ovy197_21b7294: ; 0x021B7294
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x80]
	mov r6, #0x4b
	str r1, [sp, #0x80]
	ldr r1, [sp, #0x8c]
	lsl r6, r6, #2
	add r4, r2, #0
	str r1, [sp, #0x8c]
	str r0, [sp, #0x10]
	mov r1, #0
	add r2, r6, #0
	str r3, [sp, #0x18]
	mov r5, #0
	blx MI_CpuFill8
	ldr r1, [sp, #0x88]
	ldr r0, [sp, #0x10]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0x84]
	str r1, [r0, #0x24]
	ldr r1, [sp, #0x8c]
	strh r1, [r0]
	add r1, r6, #0
	sub r1, #0x18
	str r4, [r0, r1]
	sub r1, r6, #4
	strh r5, [r0, r1]
	sub r1, r6, #2
	strh r5, [r0, r1]
	ldr r0, _021B75AC ; =0x000002CA
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021B72DE
	mov r6, #3
	b _021B72EA
_021B72DE:
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	lsl r1, r0, #1
	ldr r0, _021B75B0 ; =0x021BE2DE
	ldrh r6, [r0, r1]
_021B72EA:
	ldr r3, [sp, #0x8c]
	mov r0, #0x21
	mov r1, #2
	add r2, sp, #0x64
	bl sub_0204B354
	add r7, r0, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x10]
	ldr r5, [r0, #0xc]
	add r1, #0x92
	add r0, r5, #0
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r1, [sp, #0x10]
	lsl r0, r6, #5
	add r0, r5, r0
	add r1, #0x72
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	bl sub_0203A24C
	lsl r0, r6, #0x18
	mov r5, #0
	lsr r7, r0, #0x18
	add r6, r5, #0
_021B7324:
	ldr r0, [sp, #0x80]
	add r1, r5, #1
	bl sub_021B5A18
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0204C378
	add r5, r5, #1
	cmp r5, #0x20
	blt _021B7324
	add r0, r4, #0
	add r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #4
	bls _021B7346
	b _021B792E
_021B7346:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7352: ; jump table
	.short _021B792E - _021B7352 - 2 ; case 0
	.short _021B735C - _021B7352 - 2 ; case 1
	.short _021B7868 - _021B7352 - 2 ; case 2
	.short _021B78DC - _021B7352 - 2 ; case 3
	.short _021B78DC - _021B7352 - 2 ; case 4
_021B735C:
	ldr r0, [sp, #0x8c]
	ldr r2, _021B75B4 ; =0x00007FFF
	add r3, r0, #0
	and r3, r2
	add r0, r2, #1
	orr r0, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	str r0, [sp, #0x28]
	ldr r0, [r4]
	str r0, [sp, #0x1c]
	ldrh r0, [r4, #0x1a]
	str r0, [sp, #0x2c]
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	str r0, [sp, #0x38]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #0x3c]
	add r0, r4, #0
	add r0, #0x43
	ldrb r2, [r0]
	add r0, sp, #0x4c
	strb r2, [r0]
	add r2, r4, #0
	add r2, #0x44
	ldrb r2, [r2]
	strb r2, [r0, #1]
	add r2, r4, #0
	add r2, #0x45
	ldrb r2, [r2]
	strb r2, [r0, #2]
	add r2, r4, #0
	add r2, #0x47
	ldrb r2, [r2]
	strb r2, [r0, #3]
	add r2, r4, #0
	add r2, #0x48
	ldrb r2, [r2]
	strb r2, [r0, #4]
	add r2, r4, #0
	add r2, #0x46
	ldrb r2, [r2]
	cmp r1, #1
	strb r2, [r0, #5]
	ldrh r2, [r4, #0x12]
	strh r2, [r0, #6]
	ldrh r2, [r4, #0x14]
	strh r2, [r0, #8]
	ldrh r2, [r4, #0x16]
	strh r2, [r0, #0xa]
	ldrh r2, [r4, #0x18]
	strh r2, [r0, #0xc]
	bne _021B73EE
	ldr r1, _021B75B8 ; =0x00000289
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bhi _021B73EE
	cmp r0, #0
	beq _021B73EE
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bhi _021B73EE
	ldrh r0, [r4, #0x10]
	sub r1, #0xb
	cmp r0, r1
	bls _021B73F0
_021B73EE:
	b _021B77CC
_021B73F0:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _021B7404
	mov r0, #0x64
	bl sub_02005748
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x28]
_021B7404:
	ldr r0, [r4]
	cmp r0, #0
	bne _021B7416
	ldr r0, [sp, #0x18]
	bl sub_0201736C
	bl sub_02008BD0
	str r0, [sp, #0x1c]
_021B7416:
	ldr r0, [sp, #0x38]
	cmp r0, #0xff
	bne _021B7420
	mov r0, #2
	str r0, [sp, #0x38]
_021B7420:
	mov r5, #0
	mov r7, #0x20
	add r6, sp, #0x4c
_021B7426:
	ldrb r0, [r6, r5]
	cmp r0, #0xff
	bne _021B7434
	add r0, r7, #0
	bl sub_02005748
	strb r0, [r6, r5]
_021B7434:
	add r5, r5, #1
	cmp r5, #6
	blt _021B7426
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r3, #0
	bl sub_0201C2CC
	add r1, sp, #0x4c
	add r5, r0, #0
	ldrb r0, [r1, #5]
	ldrb r2, [r1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	mov ip, r0
	ldrb r0, [r1, #4]
	lsl r0, r0, #0x1b
	lsr r3, r0, #7
	ldrb r0, [r1, #3]
	lsl r0, r0, #0x1b
	lsr r7, r0, #0xc
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #1]
	lsl r0, r0, #0x1b
	lsr r6, r0, #0x11
	mov r0, #0x1f
	lsl r1, r1, #0x1b
	and r0, r2
	lsr r1, r1, #0x16
	orr r0, r1
	orr r0, r6
	orr r0, r7
	add r1, r3, #0
	orr r1, r0
	mov r0, ip
	add r6, r0, #0
	ldr r0, [sp, #0x3c]
	orr r6, r1
	cmp r0, #4
	bne _021B749E
	mov r0, #3
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
_021B749E:
	ldr r0, [sp, #0x3c]
	cmp r0, #3
	bhi _021B74C6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B74B0: ; jump table
	.short _021B74B8 - _021B74B0 - 2 ; case 0
	.short _021B74BC - _021B74B0 - 2 ; case 1
	.short _021B74C0 - _021B74B0 - 2 ; case 2
	.short _021B74C2 - _021B74B0 - 2 ; case 3
_021B74B8:
	mov r1, #0
	b _021B74C8
_021B74BC:
	mov r1, #1
	b _021B74C8
_021B74C0:
	b _021B74B8
_021B74C2:
	mov r1, #2
	b _021B74C8
_021B74C6:
	b _021B768E
_021B74C8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B74D0
	b _021B751A
_021B74D0:
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B74F6
	str r1, [sp]
	mov r0, #0
	ldr r1, [sp, #0x2c]
	str r0, [sp, #4]
	str r0, [sp, #0x34]
	lsl r1, r1, #0x10
	ldrb r2, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x38]
	lsr r1, r1, #0x10
	bl sub_0201D6F8
	str r0, [sp, #0x30]
	b _021B7520
_021B74F6:
	cmp r0, #1
	bne _021B7500
	str r1, [sp]
	mov r0, #2
	b _021B7508
_021B7500:
	cmp r0, #2
	bne _021B7520
	str r1, [sp]
	mov r0, #1
_021B7508:
	ldr r1, [sp, #0x2c]
	str r0, [sp, #4]
	lsl r1, r1, #0x10
	ldrb r2, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x38]
	lsr r1, r1, #0x10
	bl sub_0201D6F8
_021B751A:
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
_021B7520:
	ldr r0, [sp, #0x30]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldrh r1, [r4, #0x1a]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl sub_0201C464
	ldrh r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #6
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201CFD8
	mov r7, #0
_021B754C:
	add r0, sp, #0x50
	lsl r1, r7, #1
	add r0, #2
	ldrh r6, [r0, r1]
	cmp r6, #0
	beq _021B7576
	mov r0, #0x23
	lsl r0, r0, #4
	cmp r6, r0
	bhs _021B7576
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201D0BC
	ldr r1, _021B75BC ; =0x0000FFFF
	cmp r0, r1
	bne _021B7576
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201D124
_021B7576:
	add r7, r7, #1
	cmp r7, #4
	blt _021B754C
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021B7592
	ldr r0, [sp, #0x3c]
	cmp r0, #2
	bne _021B7592
	ldrb r2, [r4, #0x1c]
	ldr r1, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0201DA94
_021B7592:
	ldrb r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #0x6f
	bl sub_0201CD1C
	ldrh r2, [r4, #0xe]
	cmp r2, #0
	beq _021B75C0
	cmp r2, #0x19
	bhi _021B75C0
	add r0, r5, #0
	mov r1, #0x98
	b _021B75C6
	.align 2, 0
_021B75AC: .word 0x000002CA
_021B75B0: .word 0x021BE2DE
_021B75B4: .word 0x00007FFF
_021B75B8: .word 0x00000289
_021B75BC: .word 0x0000FFFF
_021B75C0:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #4
_021B75C6:
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x3c
	ldrb r2, [r0]
	cmp r2, #0
	beq _021B75DC
	add r0, r5, #0
	mov r1, #0x99
	bl sub_0201CD1C
_021B75DC:
	add r2, r4, #0
	add r2, #0x3d
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x13
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x3e
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x14
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x3f
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x40
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x16
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x17
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x18
	bl sub_0201CD1C
	mov r6, #0
	mov r7, #1
_021B7634:
	add r0, r7, #0
	ldrh r1, [r4, #0xc]
	lsl r0, r6
	tst r0, r1
	beq _021B764C
	ldr r1, _021B7970 ; =0x021BE2EC
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0201CD1C
_021B764C:
	add r6, r6, #1
	cmp r6, #0xf
	blo _021B7634
	ldr r2, [r4, #4]
	cmp r2, #0
	bne _021B7662
	ldr r2, _021B7974 ; =0x0208FF7C
	add r0, r5, #0
	mov r1, #0x77
	ldrb r2, [r2]
	b _021B7666
_021B7662:
	add r0, r5, #0
	mov r1, #0x77
_021B7666:
	bl sub_0201CD1C
	ldrb r2, [r4, #0x1d]
	cmp r2, #0
	bne _021B767A
	ldr r2, _021B7978 ; =0x0208FF80
	add r0, r5, #0
	mov r1, #0xc
	ldrb r2, [r2]
	b _021B767E
_021B767A:
	add r0, r5, #0
	mov r1, #0xc
_021B767E:
	bl sub_0201CD1C
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	bne _021B7692
_021B7688:
	add r0, r5, #0
	bl sub_0203A24C
_021B768E:
	mov r6, #0
	b _021B77CC
_021B7692:
	bl sub_020486F4
	ldrh r1, [r4, #0x1e]
	cmp r1, r0
	beq _021B76A8
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x74
	add r2, #0x1e
	bl sub_0201CD1C
_021B76A8:
	add r0, r4, #0
	add r0, #0x34
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _021B76BC
	mov r0, #0x19
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_021B76BC:
	add r0, r5, #0
	mov r1, #0x70
	bl sub_0201CD1C
	ldrh r2, [r4, #0x38]
	add r0, r5, #0
	mov r1, #0x95
	bl sub_0201CD1C
	ldrh r2, [r4, #0x3a]
	add r0, r5, #0
	mov r1, #0x96
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	bne _021B76E4
	b _021B7688
_021B76E4:
	bl sub_020486F4
	add r1, r4, #0
	add r1, #0x4a
	ldrh r1, [r1]
	cmp r1, r0
	bne _021B7704
	ldr r0, [sp, #0x18]
	bl sub_0201736C
	bl sub_02008B94
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x8e
	b _021B770C
_021B7704:
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x8e
	add r2, #0x4a
_021B770C:
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #2
	bhi _021B771C
	b _021B7728
_021B771C:
	ldr r0, [sp, #0x18]
	bl sub_0201736C
	bl sub_02008BF0
	add r2, r0, #0
_021B7728:
	add r0, r5, #0
	mov r1, #0x9a
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B776A
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #1
	bl sub_0201CD1C
	ldr r0, _021B797C ; =0x0209A434
	ldr r1, _021B7980 ; =0x0000028A
	ldr r0, [r0]
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x73
	add r2, r6, #0
	bl sub_0201CD1C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #9
	mov r2, #0xa
	bl sub_0201CD1C
_021B776A:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	asr r1, r0, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x40]
	asr r1, r0, #8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	add r0, #0x5c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldrb r0, [r0]
	str r1, [sp, #0x44]
	cmp r0, #0
	beq _021B7792
	ldrh r6, [r4, #0x38]
	b _021B7794
_021B7792:
	ldrh r6, [r4, #0x3a]
_021B7794:
	add r0, r5, #0
	bl sub_0201D620
	mov r3, #0x7d
	ldr r2, [sp, #0x40]
	lsl r3, r3, #4
	sub r2, r2, r3
	ldr r3, [sp, #0x44]
	add r1, r6, #0
	str r7, [sp]
	bl sub_02035A8C
	add r0, r5, #0
	bl sub_0201D5F4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021B77CA
	add r0, r5, #0
	bl sub_0203A24C
	b _021B77CC
_021B77CA:
	add r6, r5, #0
_021B77CC:
	ldr r0, [sp, #0x8c]
	bl sub_02033E24
	str r0, [sp, #0x48]
	add r0, r6, #0
	bl sub_0201D624
	mov r5, #7
	lsl r5, r5, #6
	str r5, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0x8c]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	mov r3, #0
	mov r7, #0
	bl sub_02033F2C
	ldr r1, [sp, #0x10]
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl sub_0201D624
	ldr r1, [sp, #0x8c]
	mov r2, #2
	str r1, [sp]
	mov r1, #0
	mov r3, #0
	bl sub_02034000
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x14]
	add r0, r6, #0
	bl sub_0201D624
	add r1, r0, #0
	ldr r0, [sp, #0x8c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	mov r3, #0
	bl sub_02033F90
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x10]
	add r0, r6, #0
	bl sub_0201D624
	ldr r1, [sp, #0x8c]
	bl ovy197_21b828c
	add r2, r5, #0
	ldr r1, [sp, #0x10]
	sub r0, #0x30
	sub r2, #0x98
	strh r0, [r1, r2]
	sub r5, #0x98
	add r0, r1, #0
	ldrsh r0, [r0, r5]
	cmp r0, #0x30
	ble _021B784C
	mov r7, #0x30
	b _021B7852
_021B784C:
	cmp r0, #0
	blt _021B7852
	add r7, r0, #0
_021B7852:
	mov r1, #0x4a
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	strh r7, [r0, r1]
	ldr r0, [sp, #0x48]
	bl sub_0204AB0C
	add r0, r6, #0
	bl sub_0203A24C
	b _021B792E
_021B7868:
	ldr r1, [sp, #0x8c]
	mov r0, #0x19
	bl sub_0204AA30
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026670
	add r1, r0, #0
	ldr r0, [sp, #0x8c]
	mov r7, #7
	lsl r7, r7, #6
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0204BBA0
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	str r0, [r1, #0xc]
	ldr r3, [sp, #0x8c]
	add r0, r5, #0
	mov r1, #1
	bl sub_0204BDE0
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x14]
	ldr r0, [r4]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026670
	add r1, r0, #0
	ldr r0, [sp, #0x8c]
	add r2, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0204B81C
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x10]
	add r0, r5, #0
	bl sub_0204AB0C
	add r1, r7, #0
	ldr r0, [sp, #0x10]
	mov r2, #4
	sub r1, #0x96
	strh r2, [r0, r1]
	mov r1, #8
	sub r7, #0x98
	b _021B792C
_021B78DC:
	ldr r1, [sp, #0x8c]
	mov r0, #0x21
	bl sub_0204AA30
	ldr r1, [sp, #0x8c]
	mov r7, #7
	lsl r7, r7, #6
	str r1, [sp]
	mov r1, #3
	add r2, r6, #0
	add r3, r7, #0
	add r5, r0, #0
	bl sub_0204BBA0
	ldr r1, [sp, #0x10]
	mov r2, #0x24
	str r0, [r1, #0xc]
	ldr r3, [sp, #0x8c]
	add r0, r5, #0
	mov r1, #0x21
	bl sub_0204BDE0
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x8c]
	mov r1, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0204B81C
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x10]
	add r0, r5, #0
	bl sub_0204AB0C
	ldr r0, [sp, #0x10]
	mov r1, #8
	sub r7, #0x98
_021B792C:
	strh r1, [r0, r7]
_021B792E:
	ldr r0, _021B7984 ; =0x000002CA
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021B795A
	ldr r5, _021B7988 ; =0x050003C0
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xf2
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, _021B798C ; =0x00007FFF
	add r1, r5, #0
	mov r2, #0x20
	blx MIi_CpuClear16
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xd2
	mov r2, #0x20
	blx MI_CpuCopy8
_021B795A:
	add r7, sp, #0x58
	add r7, #2
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	mov r6, #0
	mov r5, #8
	blx MI_CpuFill8
	ldr r1, _021B7990 ; =0x0000012A
	b _021B7994
	.align 2, 0
_021B7970: .word 0x021BE2EC
_021B7974: .word 0x0208FF7C
_021B7978: .word 0x0208FF80
_021B797C: .word 0x0209A434
_021B7980: .word 0x0000028A
_021B7984: .word 0x000002CA
_021B7988: .word 0x050003C0
_021B798C: .word 0x00007FFF
_021B7990: .word 0x0000012A
_021B7994:
	ldr r0, [sp, #0x10]
	sub r5, #0x68
	ldrsh r1, [r0, r1]
	add r0, sp, #0x4c
	ldr r2, [sp, #0x10]
	add r1, #0x80
	strh r1, [r0, #0xe]
	strh r5, [r0, #0x10]
	mov r1, #2
	strb r1, [r0, #0x15]
	str r7, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, #0x10]
	ldr r2, [r2, #0xc]
	ldr r3, [r3, #0x14]
	bl sub_0204C040
	ldr r1, [sp, #0x10]
	str r0, [r1, #4]
	mov r1, #0
	bl sub_0204C124
	ldr r0, _021B79E0 ; =0x000002CA
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021B79DC
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r0, #4]
	bl sub_0204C318
_021B79DC:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B79E0: .word 0x000002CA
	thumb_func_end ovy197_21b7294

	thumb_func_start ovy197_21b79e4
ovy197_21b79e4: ; 0x021B79E4
	push {r4, r5}
	mov r2, #0
	str r2, [r0, #8]
	str r2, [r0, #0x20]
	str r2, [r0, #0x18]
	cmp r1, #0
	beq _021B79F8
	cmp r1, #1
	beq _021B7A0E
	b _021B7A12
_021B79F8:
	mov r1, #0x45
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	ldr r1, _021B7A58 ; =0x000002CA
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _021B7A0A
	ldr r1, _021B7A5C ; =ovy197_21b7c6c
	b _021B7A10
_021B7A0A:
	ldr r1, _021B7A60 ; =ovy197_21b7ae4
	b _021B7A10
_021B7A0E:
	ldr r1, _021B7A64 ; =ovy197_21b7f00
_021B7A10:
	str r1, [r0, #0x2c]
_021B7A12:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _021B7A68 ; =0xFFFF1FFF
	add r4, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0]
	add r4, #0x48
	ldrh r3, [r4]
	mov r2, #0x3f
	mov r1, #0xf
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r4]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	mov r1, #0x1f
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r4]
	add r1, r0, #0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1]
	ldr r1, _021B7A6C ; =0x0000A8C0
	add r0, #0x44
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	.align 2, 0
_021B7A58: .word 0x000002CA
_021B7A5C: .word ovy197_21b7c6c
_021B7A60: .word ovy197_21b7ae4
_021B7A64: .word ovy197_21b7f00
_021B7A68: .word 0xFFFF1FFF
_021B7A6C: .word 0x0000A8C0
	thumb_func_end ovy197_21b79e4

	thumb_func_start ovy197_21b7a70
ovy197_21b7a70: ; 0x021B7A70
	push {r3, r4, r5, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	mov r5, #0x46
	ldr r1, [r2]
	ldr r0, _021B7AC4 ; =0xFFFF1FFF
	lsl r5, r5, #2
	and r0, r1
	str r0, [r2]
	add r0, r4, r5
	bl sub_021B5B3C
	cmp r0, #0
	beq _021B7A94
	add r0, r4, r5
	bl ovy197_21b5af8
_021B7A94:
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r4, #4]
	bl sub_0204C108
	ldr r0, [r4, #0xc]
	bl sub_0204BCD0
	ldr r0, [r4, #0x10]
	bl sub_0204B98C
	ldr r0, [r4, #0x14]
	bl sub_0204BE64
	mov r2, #0x4b
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	blx MI_CpuFill8
	pop {r3, r4, r5, pc}
	nop
_021B7AC4: .word 0xFFFF1FFF
	thumb_func_end ovy197_21b7a70

	thumb_func_start ovy197_21b7ac8
ovy197_21b7ac8: ; 0x021B7AC8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	beq _021B7ADE
	blx r1
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B7ADE
	mov r0, #0
	str r0, [r4, #0x2c]
_021B7ADE:
	pop {r4, pc}
	thumb_func_end ovy197_21b7ac8

	thumb_func_start sub_021B7AE0
sub_021B7AE0: ; 0x021B7AE0
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_021B7AE0

	thumb_func_start ovy197_21b7ae4
ovy197_21b7ae4: ; 0x021B7AE4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #6
	bls _021B7AF2
	b _021B7C58
_021B7AF2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7AFE: ; jump table
	.short _021B7B0C - _021B7AFE - 2 ; case 0
	.short _021B7B24 - _021B7AFE - 2 ; case 1
	.short _021B7B48 - _021B7AFE - 2 ; case 2
	.short _021B7BC8 - _021B7AFE - 2 ; case 3
	.short _021B7BDE - _021B7AFE - 2 ; case 4
	.short _021B7C3E - _021B7AFE - 2 ; case 5
	.short _021B7C54 - _021B7AFE - 2 ; case 6
_021B7B0C:
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ovy197_21b570c
	mov r0, #1
	add sp, #8
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021B7B24:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B7C5C ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	mov r5, #0
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	mov r6, #2
	bl sub_02044C98
	add sp, #8
	str r5, [r4, #0x18]
	str r6, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021B7B48:
	ldr r0, [r4, #0x18]
	mov r1, #0x78
	lsl r0, r0, #4
	blx sub_0208D868
	lsl r1, r0, #0x10
	asr r2, r1, #0x10
	mov r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #8
	ldr r6, _021B7C60 ; =0x04000052
	orr r0, r2
	strh r0, [r6]
	ldr r1, [r4, #0x18]
	ldr r0, _021B7C64 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x78
	blx sub_0208D868
	strh r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x72
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x92
	str r0, [sp, #4]
	add r1, r4, #0
	ldrh r2, [r4, #0x30]
	mov r0, #0xf
	add r1, #0x32
	mov r3, #0
	mov r5, #0
	bl ovy197_21b9918
	add r0, r4, #0
	add r0, #0x72
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x92
	str r0, [sp, #4]
	add r1, r4, #0
	ldrh r2, [r4, #0x30]
	mov r0, #0x1f
	add r1, #0x52
	mov r3, #0
	bl ovy197_21b9918
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x78
	bls _021B7C58
	sub r0, r6, #2
	strh r5, [r0]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_021B801C
	mov r0, #3
	add sp, #8
	str r5, [r4, #0x18]
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021B7BC8:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0xb4
	bls _021B7C58
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #4
	add sp, #8
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021B7BDE:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	mov r0, #0xd6
	sub r1, r0, r1
	ldr r0, [r4, #0x18]
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D868
	sub r0, #0x60
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	ldr r0, [r4, #4]
	add r1, r5, #0
	mov r2, #0
	mov r3, #1
	mov r6, #1
	bl sub_0204C1A8
	mov r0, #1
	sub r0, #0x31
	cmp r5, r0
	blt _021B7C1A
	cmp r5, #0xc0
	bgt _021B7C1A
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl sub_0204C124
_021B7C1A:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x3c
	blo _021B7C58
	ldr r0, _021B7C68 ; =0x00000671
	bl GFL_SndSEPlay
	ldr r0, [r4, #0x28]
	mov r1, #0
	mov r5, #0
	bl sub_021B801C
	mov r0, #5
	add sp, #8
	str r5, [r4, #0x18]
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021B7C3E:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x3c
	bls _021B7C58
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #6
	add sp, #8
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021B7C54:
	mov r0, #1
	str r0, [r4, #8]
_021B7C58:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B7C5C: .word 0x04000050
_021B7C60: .word 0x04000052
_021B7C64: .word 0x00007FFF
_021B7C68: .word 0x00000671
	thumb_func_end ovy197_21b7ae4

	thumb_func_start ovy197_21b7c6c
ovy197_21b7c6c: ; 0x021B7C6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0xb
	bls _021B7C7A
	b _021B7EE4
_021B7C7A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7C86: ; jump table
	.short _021B7C9E - _021B7C86 - 2 ; case 0
	.short _021B7CCE - _021B7C86 - 2 ; case 1
	.short _021B7CF2 - _021B7C86 - 2 ; case 2
	.short _021B7D6A - _021B7C86 - 2 ; case 3
	.short _021B7DE0 - _021B7C86 - 2 ; case 4
	.short _021B7E0E - _021B7C86 - 2 ; case 5
	.short _021B7DBA - _021B7C86 - 2 ; case 6
	.short _021B7E48 - _021B7C86 - 2 ; case 7
	.short _021B7E62 - _021B7C86 - 2 ; case 8
	.short _021B7E78 - _021B7C86 - 2 ; case 9
	.short _021B7EBE - _021B7C86 - 2 ; case 10
	.short _021B7EDA - _021B7C86 - 2 ; case 11
_021B7C9E:
	mov r5, #0x46
	lsl r5, r5, #2
	ldrh r1, [r4]
	add r0, r4, r5
	bl ovy197_21b5ab4
	ldrh r3, [r4]
	add r0, r4, r5
	mov r1, #0x21
	mov r2, #0x26
	bl ovy197_21b5b10
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ovy197_21b570c
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7CCE:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B7EE8 ; =0x04000050
	mov r1, #4
	mov r2, #8
	mov r3, #0
	mov r5, #0
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	mov r6, #2
	bl sub_02044C98
	add sp, #0xc
	str r5, [r4, #0x18]
	str r6, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7CF2:
	ldr r0, [r4, #0x18]
	mov r1, #0x78
	lsl r0, r0, #4
	blx sub_0208D868
	lsl r1, r0, #0x10
	asr r2, r1, #0x10
	mov r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #8
	ldr r6, _021B7EEC ; =0x04000052
	orr r0, r2
	strh r0, [r6]
	ldr r1, [r4, #0x18]
	ldr r0, _021B7EF0 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x78
	blx sub_0208D868
	strh r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x72
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x92
	str r0, [sp, #4]
	add r1, r4, #0
	ldrh r2, [r4, #0x30]
	mov r0, #0xf
	add r1, #0x32
	mov r3, #0
	mov r5, #0
	bl ovy197_21b9918
	add r0, r4, #0
	add r0, #0x72
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x92
	str r0, [sp, #4]
	add r1, r4, #0
	ldrh r2, [r4, #0x30]
	mov r0, #0x1f
	add r1, #0x52
	mov r3, #0
	bl ovy197_21b9918
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x78
	bls _021B7DC4
	sub r0, r6, #2
	strh r5, [r0]
	mov r0, #3
	add sp, #0xc
	str r5, [r4, #0x18]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7D6A:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0xb4
	bls _021B7DC4
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #6
	str r0, [r4, #0x20]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B7EE8 ; =0x04000050
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0
	mov r5, #0x1f
	bl G2x_SetBlendAlpha_
	mov r0, #0x1f
	add r0, #0xf9
	add r0, r4, r0
	mov r1, #0
	bl ovy197_21b5b2c
	mov r0, #0x1f
	add r0, #0xf9
	add r0, r4, r0
	mov r1, #1
	bl ovy197_21b5b2c
	add r5, #0xf9
	add r0, r4, r5
	mov r1, #2
	bl ovy197_21b5b2c
	ldr r0, _021B7EF4 ; =0x00000793
	bl GFL_SndSEPlay
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021B7DBA:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x78
	bhi _021B7DC6
_021B7DC4:
	b _021B7EE4
_021B7DC6:
	ldr r0, _021B7EF8 ; =0x00000794
	bl GFL_SndSEPlay
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #4
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_021B801C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021B7DE0:
	mov r0, #0x80
	add r1, sp, #8
	strh r0, [r1]
	add r0, #0xa8
	ldrsh r2, [r4, r0]
	mov r0, #0x76
	mov r5, #0
	sub r0, r0, r2
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	add r1, sp, #8
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0204C124
	mov r0, #5
	add sp, #0xc
	str r5, [r4, #0x1c]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7E0E:
	ldr r0, [r4, #0x1c]
	mov r1, #0xa
	lsl r0, r0, #4
	blx sub_0208D868
	lsl r1, r0, #0x10
	asr r2, r1, #0x10
	mov r1, #0x10
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #8
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021B7EEC ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x1c]
	cmp r1, #0xa
	bls _021B7EE4
	mov r0, #0
	str r0, [r4, #0x1c]
	mov r0, #7
	add sp, #0xc
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7E48:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x5a
	bls _021B7EE4
	ldr r0, _021B7EE8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #8
	add sp, #0xc
	str r1, [r4, #0x18]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7E62:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0xa
	bls _021B7EE4
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #9
	add sp, #0xc
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7E78:
	ldr r1, [r4, #0x18]
	ldr r0, _021B7EF0 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x78
	blx sub_0208D868
	strh r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0xf2
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xd2
	str r0, [sp, #4]
	add r1, r4, #0
	ldrh r2, [r4, #0x30]
	mov r0, #0xe
	add r1, #0xb2
	mov r3, #0xe
	bl ovy197_21b9918
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x78
	bls _021B7EE4
	ldr r0, [r4, #0x28]
	mov r1, #0
	mov r5, #0
	bl sub_021B801C
	mov r0, #0xa
	add sp, #0xc
	str r5, [r4, #0x18]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7EBE:
	ldr r1, [r4, #0x18]
	add r0, r1, #1
	str r0, [r4, #0x18]
	cmp r1, #0x3c
	bls _021B7EE4
	ldr r0, _021B7EFC ; =0x00000671
	bl GFL_SndSEPlay
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #0xb
	add sp, #0xc
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, pc}
_021B7EDA:
	ldr r0, _021B7EE8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #8]
_021B7EE4:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B7EE8: .word 0x04000050
_021B7EEC: .word 0x04000052
_021B7EF0: .word 0x00007FFF
_021B7EF4: .word 0x00000793
_021B7EF8: .word 0x00000794
_021B7EFC: .word 0x00000671
	thumb_func_end ovy197_21b7c6c

	thumb_func_start ovy197_21b7f00
ovy197_21b7f00: ; 0x021B7F00
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021B7F18
	cmp r0, #1
	beq _021B7F20
	cmp r0, #2
	beq _021B7F78
	add sp, #8
	pop {r3, r4, r5, pc}
_021B7F18:
	mov r0, #1
	add sp, #8
	str r0, [r5, #0x20]
	pop {r3, r4, r5, pc}
_021B7F20:
	ldr r1, [r5, #0x18]
	ldr r0, _021B7F80 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D868
	strh r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x92
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x72
	str r0, [sp, #4]
	add r1, r5, #0
	ldrh r2, [r5, #0x30]
	mov r0, #0xf
	add r1, #0x32
	mov r3, #0
	mov r4, #0
	bl ovy197_21b9918
	add r0, r5, #0
	add r0, #0x92
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x72
	str r0, [sp, #4]
	add r1, r5, #0
	ldrh r2, [r5, #0x30]
	mov r0, #0x1f
	add r1, #0x52
	mov r3, #0
	bl ovy197_21b9918
	ldr r1, [r5, #0x18]
	add r0, r1, #1
	str r0, [r5, #0x18]
	cmp r1, #0x3c
	bls _021B7F7C
	mov r0, #2
	add sp, #8
	str r4, [r5, #0x18]
	str r0, [r5, #0x20]
	pop {r3, r4, r5, pc}
_021B7F78:
	mov r0, #1
	str r0, [r5, #8]
_021B7F7C:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B7F80: .word 0x00007FFF
	thumb_func_end ovy197_21b7f00

	thumb_func_start ovy197_21b7f84
ovy197_21b7f84: ; 0x021B7F84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0x4a
	lsl r7, r7, #2
	add r5, r1, #0
	str r2, [sp]
	mov r1, #0
	add r2, r7, #0
	add r6, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	ldr r1, _021B7FE8 ; =0xFFFFFCCD
	add r0, r7, #0
	str r1, [r6, #0x10]
	sub r0, #0x10
	str r5, [r6, r0]
	str r1, [r6, #0x14]
	sub r1, r7, #4
	ldr r0, [sp]
	sub r7, #0x10
	strh r0, [r6, r1]
_021B7FB0:
	ldr r0, [r6, r7]
	add r1, r4, #1
	bl sub_021B5A18
	add r1, sp, #4
	bl sub_0204C21C
	lsl r0, r4, #2
	add r5, r6, r0
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_02005784
	ldr r1, _021B7FEC ; =0x0000199A
	add r5, #0x98
	add r0, r0, r1
	add r4, r4, #1
	str r0, [r5]
	cmp r4, #0x20
	blt _021B7FB0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B7FE8: .word 0xFFFFFCCD
_021B7FEC: .word 0x0000199A
	thumb_func_end ovy197_21b7f84

	thumb_func_start sub_021B7FF0
sub_021B7FF0: ; 0x021B7FF0
	mov r2, #0x4a
	ldr r3, _021B7FFC ; =MI_CpuFill8
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	nop
_021B7FFC: .word MI_CpuFill8
	thumb_func_end sub_021B7FF0

	thumb_func_start ovy197_21b8000
ovy197_21b8000: ; 0x021B8000
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021B801A
	ldr r1, [r0]
	cmp r1, #0
	beq _021B801A
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021B801A
	blx r1
_021B801A:
	pop {r3, pc}
	thumb_func_end ovy197_21b8000

	thumb_func_start sub_021B801C
sub_021B801C: ; 0x021B801C
	mov r2, #1
	str r2, [r0]
	mov r2, #0
	strh r2, [r0, #8]
	ldr r2, [r0, #0x10]
	cmp r1, #0
	str r2, [r0, #0x14]
	beq _021B8032
	cmp r1, #1
	beq _021B803C
	bx lr
_021B8032:
	mov r1, #0x47
	ldr r2, _021B8048 ; =ovy197_21b8054
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
_021B803C:
	mov r1, #0x47
	ldr r2, _021B804C ; =ovy197_21b8104
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	nop
_021B8048: .word ovy197_21b8054
_021B804C: .word ovy197_21b8104
	thumb_func_end sub_021B801C

	thumb_func_start sub_021B8050
sub_021B8050: ; 0x021B8050
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021B8050

	thumb_func_start ovy197_21b8054
ovy197_21b8054: ; 0x021B8054
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	ldr r5, _021B8100 ; =0xFFFFFCCD
	cmp r0, r5
	beq _021B807E
	ldr r4, [r6, #0x14]
	ldrh r0, [r6, #8]
	sub r1, r5, r4
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D65C
	add r0, r4, r0
	ldrh r1, [r6, #8]
	str r0, [r6, #0x10]
	add r0, r1, #1
	strh r0, [r6, #8]
	cmp r1, #0x3c
	bls _021B807E
	str r5, [r6, #0x10]
_021B807E:
	mov r4, #0
_021B8080:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #1
	bl sub_021B5A18
	add r5, r0, #0
	bl sub_0204C138
	cmp r0, #0
	beq _021B80DA
	lsl r0, r4, #2
	add r7, r6, r0
	add r0, r7, #0
	add r0, #0x98
	ldr r1, [r7, #0x18]
	ldr r0, [r0]
	add r0, r1, r0
	str r0, [r7, #0x18]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0204C21C
	ldr r0, [r7, #0x18]
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0, #2]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_0204C210
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _021B80D2
	cmp r0, #0xd0
	bgt _021B80D2
	add r0, r5, #0
	mov r1, #1
	b _021B80D6
_021B80D2:
	add r0, r5, #0
	mov r1, #0
_021B80D6:
	bl sub_0204C124
_021B80DA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021B8080
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	add r2, r1, r0
	str r2, [r6, #0xc]
	mov r0, #3
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02045E1C
	ldr r2, [r6, #0xc]
	mov r0, #7
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02045E1C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B8100: .word 0xFFFFFCCD
	thumb_func_end ovy197_21b8054

	thumb_func_start ovy197_21b8104
ovy197_21b8104: ; 0x021B8104
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	ldr r5, _021B81B4 ; =0xFFFFC000
	cmp r0, r5
	beq _021B812E
	ldr r4, [r7, #0x14]
	ldrh r0, [r7, #8]
	sub r1, r5, r4
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D65C
	add r0, r4, r0
	ldrh r1, [r7, #8]
	str r0, [r7, #0x10]
	add r0, r1, #1
	strh r0, [r7, #8]
	cmp r1, #0x3c
	bls _021B812E
	str r5, [r7, #0x10]
_021B812E:
	mov r4, #0
_021B8130:
	lsl r0, r4, #2
	add r5, r7, r0
	add r0, r5, #0
	add r0, #0x98
	ldr r1, [r5, #0x18]
	ldr r0, [r0]
	add r1, r1, r0
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r1, [r5, #0x18]
	cmp r1, r0
	blt _021B814C
	ldr r0, _021B81B8 ; =0xFFFF0000
	str r0, [r5, #0x18]
_021B814C:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r4, #1
	bl sub_021B5A18
	add r1, sp, #0
	add r6, r0, #0
	bl sub_0204C21C
	ldr r0, [r5, #0x18]
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0, #2]
	add r0, r6, #0
	add r1, sp, #0
	bl sub_0204C210
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	blt _021B8184
	cmp r0, #0xd0
	bgt _021B8184
	add r0, r6, #0
	mov r1, #1
	b _021B8188
_021B8184:
	add r0, r6, #0
	mov r1, #0
_021B8188:
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x20
	blt _021B8130
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	add r2, r1, r0
	str r2, [r7, #0xc]
	mov r0, #3
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02045E1C
	ldr r2, [r7, #0xc]
	mov r0, #7
	mov r1, #3
	asr r2, r2, #0xc
	bl sub_02045E1C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B81B4: .word 0xFFFFC000
_021B81B8: .word 0xFFFF0000
	thumb_func_end ovy197_21b8104

	thumb_func_start ovy197_21b81bc
ovy197_21b81bc: ; 0x021B81BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r7, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0xc
	add r6, r3, #0
	blx MI_CpuFill8
	str r4, [r5, #8]
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	add r1, r7, #0
	bl sub_0202AE5C
	add r7, sp, #0x14
	str r0, [r5]
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #0x60
	add r1, sp, #0x14
	strh r0, [r1]
	mov r0, #0xa9
	strh r0, [r1, #2]
	mov r0, #0
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r3, [r4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	add r0, sp, #0x30
	ldrh r0, [r0, #0xc]
	mov r1, #8
	mov r2, #2
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ovy197_21b9694
	mov r1, #0x46
	str r0, [r5, #4]
	lsl r1, r1, #4
	bl sub_021B97B4
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B97B8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	bl ovy197_21b975c
	add r0, r4, #0
	mov r1, #0x22
	bl sub_021B5A18
	mov r1, #1
	bl sub_0204C124
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b81bc

	thumb_func_start ovy197_21b8250
ovy197_21b8250: ; 0x021B8250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ovy197_21b9740
	ldr r0, [r4, #8]
	mov r1, #0x22
	bl sub_021B5A18
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #4]
	bl ovy197_21b9720
	ldr r0, [r4]
	bl sub_0202AEAC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy197_21b8250

	thumb_func_start sub_021B8280
sub_021B8280: ; 0x021B8280
	ldr r0, [r0, #4]
	ldr r3, _021B8288 ; =ovy197_21b97c0
	bx r3
	nop
_021B8288: .word ovy197_21b97c0
	thumb_func_end sub_021B8280

	thumb_func_start ovy197_21b828c
ovy197_21b828c: ; 0x021B828C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r2, r0, #0
	ldr r0, _021B8318 ; =0x00007FFF
	mov r4, #0x30
	and r1, r0
	add r5, r1, #0
	add r0, r0, #1
	orr r5, r0
	lsl r3, r5, #0x10
	add r1, r2, #0
	add r0, sp, #0x10
	mov r2, #0
	lsr r3, r3, #0x10
	mov r6, #0
	bl sub_02033D50
	str r0, [sp, #0xc]
	lsl r1, r5, #0x10
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x10
	bl sub_0203391C
	mov r0, #0xb
	mov ip, r0
	ldr r0, [sp, #0x10]
	mov r3, #1
	str r0, [sp, #8]
_021B82C4:
	mov r1, ip
	mov r0, #0xc
	mul r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r7, #0
	ldr r0, [r0, #0x14]
	str r0, [sp]
	mov r0, ip
	lsl r2, r0, #3
_021B82D8:
	ldr r0, [sp, #4]
	add r0, r7, r0
	lsl r1, r0, #5
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #7
_021B82E4:
	lsl r5, r0, #2
	ldr r5, [r1, r5]
	cmp r5, #0
	beq _021B82F6
	add r5, r0, r2
	cmp r4, r5
	bhs _021B82F4
	add r4, r5, #0
_021B82F4:
	add r6, r3, #0
_021B82F6:
	sub r0, r0, #1
	bpl _021B82E4
	add r7, r7, #1
	cmp r7, #0xc
	blt _021B82D8
	cmp r6, #0
	bne _021B830C
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bpl _021B82C4
_021B830C:
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8318: .word 0x00007FFF
	thumb_func_end ovy197_21b828c

	thumb_func_start ovy197_21b831c
ovy197_21b831c: ; 0x021B831C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0200A938
	cmp r0, #0
	beq _021B8342
	cmp r4, #0
	bne _021B8342
	add r5, #0xcc
	ldr r1, [r5]
	cmp r1, #0
	beq _021B833E
	mov r0, #2
	lsl r0, r0, #0x16
	tst r0, r1
	beq _021B8342
_021B833E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B8342:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b831c

	thumb_func_start ovy197_21b8348
ovy197_21b8348: ; 0x021B8348
	push {r3, r4, r5, lr}
	mov r0, #1
	mov r1, #0
	mov r4, #0
	bl sub_02046CFC
	ldr r0, _021B83D4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	ldr r5, _021B83D8 ; =0xFFFFCFFD
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
	ldr r2, _021B83DC ; =0x0000CFEF
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
	ldr r1, _021B83E0 ; =0xBFFF0000
	ldr r0, _021B83E4 ; =0x04000580
	str r1, [r0]
	ldr r5, _021B83E8 ; =0x021BE3D4
_021B83B6:
	lsl r0, r4, #0x18
	lsl r1, r4, #3
	lsr r0, r0, #0x18
	add r1, r5, r1
	bl sub_02049100
	add r4, r4, #1
	cmp r4, #4
	blo _021B83B6
	mov r0, #0
	mov r1, #0
	bl sub_02049214
	pop {r3, r4, r5, pc}
	nop
_021B83D4: .word 0x04000008
_021B83D8: .word 0xFFFFCFFD
_021B83DC: .word 0x0000CFEF
_021B83E0: .word 0xBFFF0000
_021B83E4: .word 0x04000580
_021B83E8: .word 0x021BE3D4
	thumb_func_end ovy197_21b8348

	thumb_func_start ovy197_21b83ec
ovy197_21b83ec: ; 0x021B83EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #7
	add r5, r1, #0
	lsl r0, r0, #6
	str r0, [sp]
	ldr r3, _021B8474 ; =0x021BE98C
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021B8478 ; =0x04000050
	strh r5, [r4, #0x18]
	strh r7, [r1]
	ldr r0, _021B847C ; =0x04001050
	sub r1, #0x50
	strh r7, [r0]
	ldr r3, [r1]
	ldr r2, _021B8480 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r7, _021B8484 ; =0x021BE3F4
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
	bl ovy197_21b8590
	add r0, r4, #4
	add r1, r7, #0
	add r2, r5, #0
	bl ovy197_21b8634
	ldr r0, _021B8488 ; =ovy197_21b857c
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8474: .word 0x021BE98C
_021B8478: .word 0x04000050
_021B847C: .word 0x04001050
_021B8480: .word 0xFFFF1FFF
_021B8484: .word 0x021BE3F4
_021B8488: .word ovy197_21b857c
	thumb_func_end ovy197_21b83ec

	thumb_func_start ovy197_21b848c
ovy197_21b848c: ; 0x021B848C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl GFL_TCBRemove
	add r0, r4, #4
	bl ovy197_21b8688
	add r0, r4, #0
	bl ovy197_21b85f0
	bl sub_020232D8
	ldr r5, _021B84D4 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021B84D8 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021B84DC ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r5]
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	add r0, r4, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	nop
_021B84D4: .word 0x04000050
_021B84D8: .word 0x04001050
_021B84DC: .word 0xFFFF1FFF
	thumb_func_end ovy197_21b848c

	thumb_func_start ovy197_21b84e0
ovy197_21b84e0: ; 0x021B84E0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_021B86A8
	add r0, r4, #0
	bl sub_021B8628
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b84e0

	thumb_func_start sub_021B84F4
sub_021B84F4: ; 0x021B84F4
	ldr r3, _021B84FC ; =ovy197_21b873c
	add r0, #0xc
	bx r3
	nop
_021B84FC: .word ovy197_21b873c
	thumb_func_end sub_021B84F4

	thumb_func_start sub_021B8500
sub_021B8500: ; 0x021B8500
	ldr r3, _021B8508 ; =ovy197_21b875c
	add r0, #0xc
	bx r3
	nop
_021B8508: .word ovy197_21b875c
	thumb_func_end sub_021B8500

	thumb_func_start sub_021B850C
sub_021B850C: ; 0x021B850C
	ldr r3, _021B8514 ; =sub_021B86B8
	add r0, r0, #4
	bx r3
	nop
_021B8514: .word sub_021B86B8
	thumb_func_end sub_021B850C

	thumb_func_start ovy197_21b8518
ovy197_21b8518: ; 0x021B8518
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	ldr r5, _021B8554 ; =0x021BE388
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r2, #0
	bl sub_02044710
	add r0, r4, #0
	ldrh r1, [r4, #0x18]
	add r0, #0xc
	bl ovy197_21b86bc
	ldrh r0, [r4, #0x18]
	bl sub_0204F918
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021B8554: .word 0x021BE388
	thumb_func_end ovy197_21b8518

	thumb_func_start ovy197_21b8558
ovy197_21b8558: ; 0x021B8558
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	bl sub_0204FB4C
	add r4, #0xc
	add r0, r4, #0
	bl ovy197_21b8728
	ldr r0, _021B8578 ; =0x021BE388
	bl sub_02044710
	pop {r4, pc}
	.align 2, 0
_021B8578: .word 0x021BE388
	thumb_func_end ovy197_21b8558

	thumb_func_start ovy197_21b857c
ovy197_21b857c: ; 0x021B857C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_021B862C
	add r0, r4, #4
	bl sub_021B86B0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b857c

	thumb_func_start ovy197_21b8590
ovy197_21b8590: ; 0x021B8590
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
	ldr r0, _021B85E8 ; =0x021BE388
	bl sub_02044710
	ldr r7, _021B85EC ; =0x021BE424
_021B85B2:
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
	cmp r4, #7
	blo _021B85B2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B85E8: .word 0x021BE388
_021B85EC: .word 0x021BE424
	thumb_func_end ovy197_21b8590

	thumb_func_start ovy197_21b85f0
ovy197_21b85f0: ; 0x021B85F0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021B8624 ; =0x021BE424
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021B85FA:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #7
	blo _021B85FA
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8624: .word 0x021BE424
	thumb_func_end ovy197_21b85f0

	thumb_func_start sub_021B8628
sub_021B8628: ; 0x021B8628
	bx lr
	.align 2, 0
	thumb_func_end sub_021B8628

	thumb_func_start sub_021B862C
sub_021B862C: ; 0x021B862C
	ldr r3, _021B8630 ; =sub_02045A5C
	bx r3
	.align 2, 0
_021B8630: .word sub_02045A5C
	thumb_func_end sub_021B862C

	thumb_func_start ovy197_21b8634
ovy197_21b8634: ; 0x021B8634
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #8
	add r5, r0, #0
	blx MI_CpuFill8
	ldr r0, _021B8680 ; =0x021BE398
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0204B6A8
	mov r0, #0x80
	mov r1, #0
	add r2, r4, #0
	bl sub_0204BF1C
	str r0, [r5]
	ldr r0, _021B8684 ; =0x021BE3B4
	mov r1, #2
	add r2, r4, #0
	bl sub_0204BE9C
	add r1, r0, #0
	ldr r0, [r5]
	str r1, [r5, #4]
	bl sub_0204C018
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B8680: .word 0x021BE398
_021B8684: .word 0x021BE3B4
	thumb_func_end ovy197_21b8634

	thumb_func_start ovy197_21b8688
ovy197_21b8688: ; 0x021B8688
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0204BECC
	ldr r0, [r4]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy197_21b8688

	thumb_func_start sub_021B86A8
sub_021B86A8: ; 0x021B86A8
	ldr r3, _021B86AC ; =sub_0204B794
	bx r3
	.align 2, 0
_021B86AC: .word sub_0204B794
	thumb_func_end sub_021B86A8

	thumb_func_start sub_021B86B0
sub_021B86B0: ; 0x021B86B0
	ldr r3, _021B86B4 ; =sub_0204B7C8
	bx r3
	.align 2, 0
_021B86B4: .word sub_0204B7C8
	thumb_func_end sub_021B86B0

	thumb_func_start sub_021B86B8
sub_021B86B8: ; 0x021B86B8
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021B86B8

	thumb_func_start ovy197_21b86bc
ovy197_21b86bc: ; 0x021B86BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r7, #0
	add r5, r0, #0
	add r6, r1, #0
	str r7, [sp]
	ldr r0, _021B8710 ; =ovy197_21b8348
	str r6, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r4, #1
	mov r1, #1
	mov r2, #0
	mov r3, #1
	bl sub_02048D28
	lsl r0, r4, #0x11
	str r0, [sp]
	lsl r0, r4, #0xc
	str r0, [sp, #4]
	lsl r0, r4, #0x16
	str r0, [sp, #8]
	mov r1, #6
	ldr r0, _021B8714 ; =0x021BE364
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021B8718 ; =0x021BE37C
	ldr r2, _021B871C ; =0xFFFE8000
	str r0, [sp, #0x14]
	ldr r0, _021B8720 ; =0x021BE370
	ldr r3, _021B8724 ; =0xFFFE0000
	str r0, [sp, #0x18]
	mov r0, #2
	lsl r1, r1, #0xe
	str r6, [sp, #0x1c]
	bl sub_0204A5C8
	str r0, [r5]
	str r4, [r5, #4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8710: .word ovy197_21b8348
_021B8714: .word 0x021BE364
_021B8718: .word 0x021BE37C
_021B871C: .word 0xFFFE8000
_021B8720: .word 0x021BE370
_021B8724: .word 0xFFFE0000
	thumb_func_end ovy197_21b86bc

	thumb_func_start ovy197_21b8728
ovy197_21b8728: ; 0x021B8728
	push {r3, lr}
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r0]
	bl sub_0204A630
	bl sub_02048F44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8728

	thumb_func_start ovy197_21b873c
ovy197_21b873c: ; 0x021B873C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021B8758
	bl sub_02049A98
	ldr r0, [r4]
	bl sub_0204A638
	bl sub_02049AF0
	bl sub_0204F954
_021B8758:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b873c

	thumb_func_start ovy197_21b875c
ovy197_21b875c: ; 0x021B875C
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B8768
	bl sub_02049AA0
_021B8768:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy197_21b875c

	thumb_func_start ovy197_21b876c
ovy197_21b876c: ; 0x021B876C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #0xc]
	add r7, r0, #0
	str r3, [sp, #0x10]
	mov r0, #0x55
	add r5, r1, #0
	add r6, sp, #0x28
	str r0, [sp]
	ldrh r0, [r6, #0x10]
	ldr r3, _021B8804 ; =0x021BE9A0
	mov r1, #0x28
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x34]
	str r0, [r4, #8]
	mov r0, #0x11
	strh r5, [r4, #0x14]
	lsl r0, r0, #6
	strh r0, [r4, #0x16]
	str r7, [r4, #0x24]
	mov r0, #2
	ldrh r1, [r6, #0x10]
	lsl r0, r0, #8
	bl GFL_StrBufCreate
	str r0, [r4, #0x10]
	ldrb r0, [r6, #4]
	str r0, [sp]
	ldrb r0, [r6, #8]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	ldrb r3, [r6]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsr r0, r0, #0x18
	bl sub_020480C0
	str r0, [r4, #0xc]
	str r0, [r4]
	mov r1, #0
	strb r1, [r4, #4]
	bl sub_020484F4
	ldrh r2, [r4, #0x16]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021B87FE
	ldr r0, [r4, #0xc]
	bl sub_02048244
	ldr r0, [r4, #0xc]
	bl sub_0204826C
	ldr r0, [r4, #0xc]
	bl sub_020484D4
	bl sub_02044F90
_021B87FE:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8804: .word 0x021BE9A0
	thumb_func_end ovy197_21b876c

	thumb_func_start ovy197_21b8808
ovy197_21b8808: ; 0x021B8808
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02048210
	ldr r0, [r4, #0x10]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy197_21b8808

	thumb_func_start sub_021B8820
sub_021B8820: ; 0x021B8820
	ldr r0, [r0, #0xc]
	ldr r3, _021B8828 ; =sub_020484B4
	bx r3
	nop
_021B8828: .word sub_020484B4
	thumb_func_end sub_021B8820

	thumb_func_start ovy197_21b882c
ovy197_21b882c: ; 0x021B882C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_020484F4
	ldrh r2, [r5, #0x16]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl ovy197_21b8988
	ldr r0, [r5]
	ldr r6, [r5, #8]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5, #0x16]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r6, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b882c

	thumb_func_start ovy197_21b8890
ovy197_21b8890: ; 0x021B8890
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_020484F4
	ldrh r2, [r5, #0x16]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl sub_02048580
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl ovy197_21b8988
	ldr r0, [r5]
	ldr r6, [r5, #8]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5, #0x16]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, r6, #0
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r5, #4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8890

	thumb_func_start sub_021B88F0
sub_021B88F0: ; 0x021B88F0
	strh r1, [r0, #0x16]
	bx lr
	thumb_func_end sub_021B88F0

	thumb_func_start sub_021B88F4
sub_021B88F4: ; 0x021B88F4
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r3, [r0, #0x20]
	bx lr
	thumb_func_end sub_021B88F4

	thumb_func_start ovy197_21b88fc
ovy197_21b88fc: ; 0x021B88FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021B8938
	ldrb r0, [r5, #4]
	ldr r4, [r5, #8]
	cmp r0, #0
	beq _021B892A
	ldr r0, [r5]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021B892A
	ldr r0, [r5]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, #4]
_021B892A:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _021B8934
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B8934:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B8938:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _021B8954
	ldr r0, [r5]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl sub_02021C1C
	cmp r0, #0
	bne _021B8954
	mov r0, #0
	strb r0, [r5, #4]
_021B8954:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _021B895E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B895E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b88fc

	thumb_func_start ovy197_21b8964
ovy197_21b8964: ; 0x021B8964
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02048244
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _021B8984
	ldr r0, [r4, #0xc]
	bl sub_0204826C
	ldr r0, [r4, #0xc]
	bl sub_020484D4
	bl sub_02045B7C
_021B8984:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8964

	thumb_func_start ovy197_21b8988
ovy197_21b8988: ; 0x021B8988
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020484F4
	add r2, r0, #0
	add r1, r5, #0
	str r4, [sp]
	ldr r0, [r5, #0x20]
	ldr r3, [r5, #0x10]
	add r1, #0x18
	str r6, [sp, #4]
	bl ovy197_21b89b0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8988

	thumb_func_start ovy197_21b89b0
ovy197_21b89b0: ; 0x021B89B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r7, [sp, #0x20]
	ldr r4, [sp, #0x24]
	cmp r0, #3
	bhi _021B8A66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B89CE: ; jump table
	.short _021B89D6 - _021B89CE - 2 ; case 0
	.short _021B89E2 - _021B89CE - 2 ; case 1
	.short _021B8A20 - _021B89CE - 2 ; case 2
	.short _021B8A42 - _021B89CE - 2 ; case 3
_021B89D6:
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4]
	add sp, #0xc
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021B89E2:
	add r0, r2, #0
	bl sub_02046EF8
	lsr r6, r0, #1
	ldr r0, [sp]
	bl sub_02046EFC
	lsr r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	bl sub_02022888
	lsr r0, r0, #1
	sub r6, r6, r0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_020229B0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	add sp, #0xc
	sub r1, r0, r1
	ldr r0, [r5]
	add r0, r6, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021B8A20:
	add r0, r2, #0
	bl sub_02046EFC
	lsr r6, r0, #1
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r6, r0
	ldr r0, [r5]
	add sp, #0xc
	str r0, [r4]
	ldr r0, [r5, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021B8A42:
	add r0, r2, #0
	bl sub_02046EF8
	add r6, r0, #0
	add r1, r7, #0
	ldr r0, [sp, #4]
	mov r2, #0
	mov r7, #0
	bl sub_02022888
	sub r1, r6, r0
	bpl _021B8A5C
	add r1, r7, #0
_021B8A5C:
	ldr r0, [r5]
	add r0, r1, r0
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
_021B8A66:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b89b0

	thumb_func_start ovy197_21b8a6c
ovy197_21b8a6c: ; 0x021B8A6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0x61
	str r3, [sp, #0x10]
	add r7, r1, #0
	str r2, [sp, #0xc]
	ldr r5, [sp, #0x28]
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _021B8B10 ; =0x021BE9A0
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0xf
	strh r0, [r4, #0x18]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r4, #0x28]
	lsl r0, r0, #8
	bl GFL_StrBufCreate
	str r0, [r4, #0x14]
	mov r0, #4
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r4, #0x10]
	add r1, r4, #0
	str r0, [r4, #0x1c]
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	bl sub_020484F4
	ldrh r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r6, [r4, #0x10]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8B10: .word 0x021BE9A0
	thumb_func_end ovy197_21b8a6c

	thumb_func_start ovy197_21b8b14
ovy197_21b8b14: ; 0x021B8B14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	str r3, [sp, #0x10]
	add r7, r1, #0
	str r2, [sp, #0xc]
	ldr r5, [sp, #0x28]
	ldr r0, _021B8BC4 ; =0x000001AE
	ldr r3, _021B8BC8 ; =0x021BE9A0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x40
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x40
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0xf
	strh r0, [r4, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r0, [r4, #4]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x34
	bl sub_0202E678
	mov r0, #2
	lsl r0, r0, #8
	add r1, r5, #0
	bl GFL_StrBufCreate
	str r0, [r4, #0x14]
	mov r0, #2
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r2, #0x15
	mov r3, #0x1e
	bl sub_020480C0
	str r0, [r4, #0x10]
	add r1, r4, #0
	str r0, [r4, #0x1c]
	add r1, #0x20
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	bl sub_020484F4
	ldrh r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r6, [r4, #0x10]
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x20
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0xc]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B8BC4: .word 0x000001AE
_021B8BC8: .word 0x021BE9A0
	thumb_func_end ovy197_21b8b14

	thumb_func_start ovy197_21b8bcc
ovy197_21b8bcc: ; 0x021B8BCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B8BDE
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_021B8BDE:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021B8BEC
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x3c]
_021B8BEC:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B8BF6
	bl sub_0202E818
_021B8BF6:
	ldr r0, [r4, #0xc]
	bl GFL_TCBExMgrFree
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02024EEC
	ldr r0, [r4, #0x10]
	bl sub_02048210
	ldr r0, [r4, #0x14]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy197_21b8bcc

	thumb_func_start ovy197_21b8c18
ovy197_21b8c18: ; 0x021B8C18
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #3
	bhi _021B8CC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B8C2E: ; jump table
	.short _021B8C64 - _021B8C2E - 2 ; case 0
	.short _021B8CA2 - _021B8C2E - 2 ; case 1
	.short _021B8C36 - _021B8C2E - 2 ; case 2
	.short _021B8CC6 - _021B8C2E - 2 ; case 3
_021B8C36:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldr r5, [r4, #0x24]
	cmp r0, #0
	beq _021B8CC6
	ldr r0, [r4, #0x1c]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021B8CC6
	ldr r0, [r4, #0x1c]
	bl sub_02048244
	add r0, r4, #0
	mov r1, #0
	add r0, #0x20
	strb r1, [r0]
	b _021B8CC6
_021B8C64:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	ldr r5, [r4, #0x24]
	cmp r0, #0
	beq _021B8C90
	ldr r0, [r4, #0x1c]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021B8C90
	ldr r0, [r4, #0x1c]
	bl sub_02048244
	add r0, r4, #0
	mov r1, #0
	add r0, #0x20
	strb r1, [r0]
_021B8C90:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B8C9E
	mov r0, #1
	b _021B8CA0
_021B8C9E:
	mov r0, #0
_021B8CA0:
	b _021B8CC4
_021B8CA2:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021B8CC6
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B8CB4
	ldr r2, [r4, #0x10]
	bl sub_0202E8D8
_021B8CB4:
	add r0, r4, #0
	ldr r1, [r4, #8]
	add r0, #0x34
	bl sub_0202E68C
	cmp r0, #0
	beq _021B8CC6
	mov r0, #1
_021B8CC4:
	str r0, [r4, #0x2c]
_021B8CC6:
	ldr r0, [r4, #0xc]
	bl sub_0203A7F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8c18

	thumb_func_start ovy197_21b8cd0
ovy197_21b8cd0: ; 0x021B8CD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r5, #0x14]
	add r4, r3, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r4, #0
	bl ovy197_21b8cec
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8cd0

	thumb_func_start ovy197_21b8cec
ovy197_21b8cec: ; 0x021B8CEC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r5, r1, #0
	bl sub_020484F4
	ldrh r1, [r4, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B8D12
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #8]
_021B8D12:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B8D20
	bl sub_0202E818
	mov r0, #0
	str r0, [r4, #0x30]
_021B8D20:
	add r0, r4, #0
	bl ovy197_21b8dd8
	cmp r5, #0
	beq _021B8D4C
	cmp r5, #1
	beq _021B8D74
	cmp r5, #2
	bne _021B8DB6
	bl sub_02005718
	ldrh r1, [r4, #0x1a]
	mov r3, #0x10
	str r1, [sp]
	ldrh r2, [r4, #0x18]
	ldr r1, [r4, #0x10]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02035604
	str r0, [r4, #0x3c]
	b _021B8D4C
_021B8D4C:
	ldr r0, [r4, #0x1c]
	ldr r5, [r4, #0x24]
	bl sub_020484F4
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r3, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r5, #0
	bl sub_02021C54
	add r0, r4, #0
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
	b _021B8DB4
_021B8D74:
	add r0, r4, #0
	add r0, #0x34
	mov r1, #2
	bl sub_0202E678
	ldrh r0, [r4, #0x18]
	ldrh r3, [r4, #0x1a]
	mov r1, #1
	mov r2, #1
	mov r5, #1
	bl sub_0202E7A4
	str r0, [r4, #0x30]
	bl sub_02017BCC
	ldr r1, [r4, #4]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r0, [r4, #0x1a]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x14]
	bl sub_02022268
	str r0, [r4, #8]
_021B8DB4:
	str r5, [r4, #0x28]
_021B8DB6:
	mov r0, #0
	str r0, [r4, #0x2c]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8cec

	thumb_func_start sub_021B8DC0
sub_021B8DC0: ; 0x021B8DC0
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end sub_021B8DC0

	thumb_func_start ovy197_21b8dc4
ovy197_21b8dc4: ; 0x021B8DC4
	push {r4, lr}
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r0, #0x10]
	mov r1, #0
	add r2, r4, #0
	bl sub_02024E80
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8dc4

	thumb_func_start ovy197_21b8dd8
ovy197_21b8dd8: ; 0x021B8DD8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021B8DFE
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x10]
	bl sub_0204826C
	ldr r0, [r4, #0x10]
	bl sub_020484D4
	bl sub_02044F90
_021B8DFE:
	pop {r4, pc}
	thumb_func_end ovy197_21b8dd8

	thumb_func_start ovy197_21b8e00
ovy197_21b8e00: ; 0x021B8E00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, _021B8F00 ; =0x000002D7
	add r7, r1, #0
	str r0, [sp]
	ldr r3, _021B8F04 ; =0x021BE9A0
	add r0, r7, #0
	mov r1, #0x18
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x18
	add r6, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #8]
	mov r2, #0x11
	str r0, [r6, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0x13
	lsl r0, r0, #0x19
	lsr r3, r0, #0x18
	ldrh r0, [r5, #0x1e]
	sub r2, r2, r3
	str r3, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r0, [r5, #0x1c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0xc
	bl sub_020480C0
	ldrh r3, [r5, #0x20]
	ldrh r2, [r5, #0x22]
	str r0, [r6]
	lsl r3, r3, #0x18
	mov r1, #2
	lsr r3, r3, #0x18
	bl sub_02024E80
	ldr r0, [r6]
	str r0, [sp, #0xc]
	bl sub_02048244
	ldr r0, [sp, #0xc]
	bl sub_0204826C
	ldr r0, [sp, #0xc]
	bl sub_020484D4
	bl sub_02044F90
	ldr r0, [r6]
	add r1, r7, #0
	str r0, [r6, #8]
	ldr r0, [r5, #0x18]
	strb r4, [r6, #0xc]
	bl sub_02024F60
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bls _021B8EAA
_021B8E90:
	lsl r2, r4, #2
	str r7, [sp]
	add r2, r5, r2
	ldr r0, [r6, #0x14]
	ldr r1, [r5]
	ldr r2, [r2, #0xc]
	add r3, r4, #0
	bl sub_02024FBC
	ldr r0, [r5, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _021B8E90
_021B8EAA:
	ldr r3, _021B8F08 ; =0x021BE57C
	add r2, sp, #0x10
	mov r4, #6
_021B8EB0:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _021B8EB0
	ldr r0, [r3]
	add r3, r7, #0
	str r0, [r2]
	ldr r0, [r6, #0x14]
	mov r2, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, sp, #0x10
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, r6, #0
	add r0, #8
	str r0, [sp, #0x34]
	ldr r0, [r5, #8]
	str r0, [sp, #0x38]
	ldr r0, [r5, #4]
	str r0, [sp, #0x3c]
	add r0, sp, #0x10
	bl sub_020256F0
	str r0, [r6, #0x10]
	add r1, r7, #0
	bl sub_02026510
	ldr r0, [r6, #0x10]
	mov r1, #0
	bl sub_02026520
	add r0, r6, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8F00: .word 0x000002D7
_021B8F04: .word 0x021BE9A0
_021B8F08: .word 0x021BE57C
	thumb_func_end ovy197_21b8e00

	thumb_func_start ovy197_21b8f0c
ovy197_21b8f0c: ; 0x021B8F0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #0
	bl sub_02025A10
	ldr r0, [r4, #0x14]
	bl sub_02024FAC
	ldr r0, [r4]
	mov r1, #0
	bl sub_02024EEC
	ldr r0, [r4]
	bl sub_020484B4
	ldr r0, [r4]
	bl sub_02048210
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy197_21b8f0c

	thumb_func_start ovy197_21b8f3c
ovy197_21b8f3c: ; 0x021B8F3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xc]
	ldr r4, [r5, #4]
	cmp r0, #0
	beq _021B8F64
	ldr r0, [r5, #8]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021B8F64
	ldr r0, [r5, #8]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, #0xc]
_021B8F64:
	ldr r0, [r5, #0x10]
	bl sub_020258A4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _021B8F7C
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_02025B58
	sub r0, r0, #1
_021B8F7C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b8f3c

	thumb_func_start ovy197_21b8f80
ovy197_21b8f80: ; 0x021B8F80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	add r4, r2, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	lsl r5, r4, #2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r5, #0x10
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	str r0, [sp, #0x48]
	ldr r0, _021B9040 ; =0x0000037E
	ldr r3, _021B9044 ; =0x021BE9A0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	add r1, r5, #0
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	add r2, r5, #0
	add r6, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x18]
	cmp r4, #0
	str r0, [r6]
	ldr r0, [sp, #0x44]
	str r4, [r6, #4]
	str r0, [r6, #8]
	ldr r0, [sp, #0x40]
	str r0, [r6, #0xc]
	bls _021B9038
_021B8FCE:
	mov r0, #0x18
	add r3, r7, #0
	mul r3, r0
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r4, r0, r3
	lsl r0, r7, #2
	add r5, r6, r0
	ldrb r0, [r4, #2]
	ldrb r2, [r2, r3]
	ldrb r3, [r4, #1]
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	bl ovy197_21b876c
	mov r1, #0x10
	mov r2, #0x12
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0xc]
	str r0, [r5, #0x10]
	bl sub_021B88F4
	ldrh r1, [r4, #0x14]
	ldr r0, [r5, #0x10]
	bl sub_021B88F0
	ldr r1, [r4, #8]
	ldr r0, [r5, #0x10]
	cmp r1, #0
	beq _021B9026
	ldr r2, [r6, #8]
	bl ovy197_21b8890
	b _021B9030
_021B9026:
	ldr r1, [sp, #0x40]
	ldr r2, [r4, #4]
	ldr r3, [r6, #8]
	bl ovy197_21b882c
_021B9030:
	ldr r0, [r6, #4]
	add r7, r7, #1
	cmp r7, r0
	blo _021B8FCE
_021B9038:
	add r0, r6, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9040: .word 0x0000037E
_021B9044: .word 0x021BE9A0
	thumb_func_end ovy197_21b8f80

	thumb_func_start ovy197_21b9048
ovy197_21b9048: ; 0x021B9048
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	bls _021B9066
_021B9054:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl ovy197_21b8808
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021B9054
_021B9066:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b9048

	thumb_func_start ovy197_21b9070
ovy197_21b9070: ; 0x021B9070
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	bls _021B908E
_021B907C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl sub_021B8820
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021B907C
_021B908E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy197_21b9070

	thumb_func_start ovy197_21b9090
ovy197_21b9090: ; 0x021B9090
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #1
	mov r4, #0
	cmp r0, #0
	bls _021B90B2
_021B909E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl ovy197_21b88fc
	and r6, r0
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021B909E
_021B90B2:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy197_21b9090

	thumb_func_start ovy197_21b90b8
ovy197_21b90b8: ; 0x021B90B8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r4, #0x10
	lsl r6, r1, #2
	ldr r5, [r4, r6]
	ldr r0, [r5, #0xc]
	bl sub_020484F4
	ldrh r2, [r5, #0x16]
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4, r6]
	ldr r0, [r0, #0xc]
	bl sub_02048244
	pop {r4, r5, r6, pc}
	thumb_func_end ovy197_21b90b8

	thumb_func_start ovy197_21b90e0
ovy197_21b90e0: ; 0x021B90E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	bls _021B90FE
_021B90EC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	bl ovy197_21b8964
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blo _021B90EC
_021B90FE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy197_21b90e0

	thumb_func_start ovy197_21b9100
ovy197_21b9100: ; 0x021B9100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, _021B9180 ; =0x021BE9A0
	lsl r6, r0, #2
	ldr r0, _021B9184 ; =0x00000438
	add r6, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r6, #0
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	str r0, [sp, #8]
	mov r1, #0
	add r2, r6, #0
	blx MI_CpuFill8
	ldr r0, [sp, #8]
	str r5, [r0, #4]
	ldr r1, [sp, #4]
	strh r1, [r0]
	ldr r0, [r5, #4]
	cmp r0, #0
	bls _021B9178
_021B9138:
	lsl r7, r4, #2
	add r0, r5, r7
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_020484F4
	add r6, r0, #0
	bl sub_02046EF8
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_02046EFC
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl sub_02047000
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #4]
	lsr r0, r0, #3
	lsr r1, r1, #3
	bl sub_02046E28
	ldr r1, [sp, #8]
	add r4, r4, #1
	add r1, r1, r7
	str r0, [r1, #8]
	ldr r0, [r5, #4]
	cmp r4, r0
	blo _021B9138
_021B9178:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B9180: .word 0x021BE9A0
_021B9184: .word 0x00000438
	thumb_func_end ovy197_21b9100

	thumb_func_start ovy197_21b9188
ovy197_21b9188: ; 0x021B9188
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bls _021B91AA
_021B9196:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl sub_02046EDC
	ldr r0, [r5, #4]
	add r4, r4, #1
	ldr r0, [r0, #4]
	cmp r4, r0
	blo _021B9196
_021B91AA:
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21b9188

	thumb_func_start ovy197_21b91b4
ovy197_21b91b4: ; 0x021B91B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #2
	ldrh r1, [r5]
	lsl r0, r0, #8
	str r2, [sp, #0x10]
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bls _021B9264
_021B91D4:
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r4, r0, r1
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021B925A
	ldrh r2, [r4, #0x14]
	lsl r0, r6, #2
	mov r1, #0x1f
	add r0, r5, r0
	and r1, r2
	str r0, [sp, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r0, #8]
	lsr r1, r1, #0x18
	bl sub_0204713C
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	ldr r2, [sp, #0x14]
	add r1, sp, #0x20
	str r0, [sp, #0x20]
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	add r3, r7, #0
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	bl ovy197_21b89b0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021B922C
	add r0, r7, #0
	bl sub_02048580
	b _021B9238
_021B922C:
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	ldr r0, [r0, #0xc]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
_021B9238:
	str r7, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x14]
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #8]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
_021B925A:
	ldr r0, [r5, #4]
	add r6, r6, #1
	ldr r0, [r0, #4]
	cmp r6, r0
	blo _021B91D4
_021B9264:
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b91b4

	thumb_func_start ovy197_21b9270
ovy197_21b9270: ; 0x021B9270
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r4, #0
	ldr r1, [r0, #4]
	cmp r1, #0
	bls _021B92A0
_021B927E:
	lsl r2, r4, #2
	add r0, r0, r2
	ldr r0, [r0, #0x10]
	add r1, r5, r2
	ldr r6, [r1, #8]
	ldr r0, [r0, #0xc]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02046F18
	ldr r0, [r5, #4]
	add r4, r4, #1
	ldr r1, [r0, #4]
	cmp r4, r1
	blo _021B927E
_021B92A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy197_21b9270

	thumb_func_start ovy197_21b92a4
ovy197_21b92a4: ; 0x021B92A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r0, _021B9444 ; =0x000004F1
	ldr r3, _021B9448 ; =0x021BE9A0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #0x64
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x64
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [r5, #0x20]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x26]
	strh r0, [r4, #0x26]
	ldrh r0, [r5, #0x28]
	strh r0, [r4, #0x2a]
	ldrh r0, [r5, #0x2a]
	strh r0, [r4, #0x2c]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x28]
	ldr r0, [r5, #0x34]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x38]
	mov r0, #0x2c
	ldrsh r0, [r5, r0]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x30]
	strh r0, [r4, #0x30]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021B930A
	ldr r1, [r0]
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	cmp r1, r0
	bhi _021B9308
	add r0, r1, #0
_021B9308:
	str r0, [r4, #8]
_021B930A:
	ldr r1, [r4, #0xc]
	mov r0, #0
	cmp r1, #0
	bls _021B9332
	mov r1, #5
	lsl r1, r1, #0x18
_021B9316:
	ldrh r2, [r5, #0x2a]
	lsl r2, r2, #5
	add r3, r2, r1
	add r2, r0, #0
	add r2, #0xa
	lsl r2, r2, #1
	ldrh r3, [r3, r2]
	lsl r2, r0, #1
	add r2, r4, r2
	strh r3, [r2, #0x12]
	ldr r2, [r4, #0xc]
	add r0, r0, #1
	cmp r0, r2
	blo _021B9316
_021B9332:
	ldrh r0, [r5, #0x2a]
	ldr r6, _021B944C ; =0x021BE5B0
	add r3, sp, #0x20
	lsl r1, r0, #5
	ldr r0, _021B9450 ; =0x0500001E
	mov r2, #0xc
	ldrh r0, [r1, r0]
	strh r0, [r4, #0x22]
_021B9342:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021B9342
	ldr r2, [r4, #0xc]
	mov r6, #0
	cmp r2, #0
	bls _021B93B6
	ldr r0, [sp, #0x14]
	ldr r1, _021B9454 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
_021B9364:
	mov r2, #0x2c
	ldrsh r2, [r5, r2]
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	add r0, sp, #0x20
	add r7, r0, r1
	lsl r2, r2, #0x18
	ldrb r0, [r7, #1]
	lsr r2, r2, #0x18
	add r0, r0, r2
	mov r2, #0x2e
	ldrsh r2, [r5, r2]
	strb r0, [r7, #1]
	add r0, sp, #0x20
	lsl r2, r2, #0x18
	ldrb r0, [r0, r1]
	lsr r2, r2, #0x18
	add r2, r0, r2
	add r0, sp, #0x20
	strb r2, [r0, r1]
	ldr r0, [r5]
	cmp r0, #0
	beq _021B93A0
	lsl r1, r6, #2
	add r1, r5, r1
	ldr r1, [r1, #0x10]
	bl sub_0204898C
	b _021B93AC
_021B93A0:
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	ldr r1, [sp, #0x18]
	bl sub_020485A4
_021B93AC:
	str r0, [r7, #8]
	ldr r2, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r2
	blo _021B9364
_021B93B6:
	ldrh r0, [r5, #0x26]
	ldrh r3, [r5, #0x24]
	add r1, sp, #0x20
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r6, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r0, #0
	bl ovy197_21b8f80
	str r0, [r4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bls _021B93FE
	mov r7, #0x18
_021B93E4:
	add r1, r6, #0
	mul r1, r7
	add r0, sp, #0x20
	add r0, r0, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021B93F6
	bl GFL_StrBufFree
_021B93F6:
	ldr r0, [r4, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blo _021B93E4
_021B93FE:
	ldr r0, [r4, #8]
	lsl r1, r0, #3
	ldr r0, _021B9458 ; =0x021BE55C
	ldr r0, [r0, r1]
	add r1, sp, #0x1c
	strh r0, [r1]
	ldr r0, [r4, #8]
	lsl r2, r0, #3
	ldr r0, _021B945C ; =0x021BE560
	ldr r2, [r0, r2]
	mov r0, #0x2c
	ldrsh r0, [r5, r0]
	lsl r0, r0, #3
	add r0, r2, r0
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0204C124
	ldrh r1, [r4, #0x30]
	ldr r0, [r4, #4]
	bl sub_0204C488
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B9444: .word 0x000004F1
_021B9448: .word 0x021BE9A0
_021B944C: .word 0x021BE5B0
_021B9450: .word 0x0500001E
_021B9454: .word 0x00007FFF
_021B9458: .word 0x021BE55C
_021B945C: .word 0x021BE560
	thumb_func_end ovy197_21b92a4

	thumb_func_start ovy197_21b9460
ovy197_21b9460: ; 0x021B9460
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _021B9472
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _021B9472
	str r0, [r1]
_021B9472:
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4]
	bl ovy197_21b9070
	ldr r0, [r4]
	bl ovy197_21b9048
	ldrh r0, [r4, #0x28]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy197_21b9460

	thumb_func_start ovy197_21b9498
ovy197_21b9498: ; 0x021B9498
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	bl sub_0203DF44
	mov r2, #0x40
	mov r1, #0
	tst r2, r0
	beq _021B94CE
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021B94BA
	ldr r0, [r5, #0xc]
	b _021B94BA
_021B94BA:
	sub r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	cmp r0, #1
	beq _021B94CA
	ldr r0, _021B95EC ; =0x00000548
	bl GFL_SndSEPlay
_021B94CA:
	mov r1, #1
	b _021B9530
_021B94CE:
	mov r2, #0x80
	tst r0, r2
	beq _021B94F0
	ldr r0, [r5, #0xc]
	cmp r0, #1
	beq _021B94E0
	ldr r0, _021B95EC ; =0x00000548
	bl GFL_SndSEPlay
_021B94E0:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #8]
	blx sub_0208D868
	str r1, [r5, #8]
	b _021B94CA
_021B94F0:
	mov r0, #1
	tst r0, r4
	beq _021B9502
	ldr r0, _021B95F0 ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #0x10
	ldr r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021B9502:
	mov r6, #2
	add r0, r4, #0
	tst r0, r6
	beq _021B9530
	ldr r0, _021B95F4 ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021B951C
	add sp, #0x10
	sub r0, r6, #4
	pop {r3, r4, r5, r6, r7, pc}
_021B951C:
	ldr r1, [r5, #8]
	cmp r1, #3
	beq _021B9526
	ldr r0, [r5, #0x60]
	str r1, [r0]
_021B9526:
	ldr r0, [r5, #0xc]
	add sp, #0x10
	sub r0, r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021B9530:
	cmp r1, #0
	beq _021B9574
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	lsl r2, r0, #3
	ldr r0, _021B95F8 ; =0x021BE55C
	ldr r0, [r0, r2]
	strh r0, [r1]
	ldr r0, _021B95FC ; =0x021BE560
	ldr r2, [r0, r2]
	mov r0, #0x2e
	ldrsh r0, [r5, r0]
	lsl r0, r0, #3
	add r0, r2, r0
	strh r0, [r1, #2]
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r5, #8]
	cmp r0, #3
	ldr r0, [r5, #4]
	bne _021B9564
	mov r1, #2
	b _021B9566
_021B9564:
	ldrh r1, [r5, #0x30]
_021B9566:
	bl sub_0204C488
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _021B9574
	ldr r0, [r5, #0x38]
	blx r1
_021B9574:
	ldrh r2, [r5, #0x24]
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r2, r0
	lsl r0, r0, #6
	cmp r1, r0
	blt _021B958C
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r0, r2, r0
	strh r0, [r5, #0x24]
	b _021B958E
_021B958C:
	strh r1, [r5, #0x24]
_021B958E:
	add r6, r5, #0
	ldr r7, _021B9600 ; =0x00007DFF
	mov r4, #0
	add r6, #0x1a
_021B9596:
	lsl r0, r4, #2
	add r3, r5, r0
	ldr r2, [r3, #0x4c]
	ldr r0, [r3, #0x3c]
	cmp r2, r0
	beq _021B95B0
	ldrh r1, [r5, #0x24]
	cmp r1, r7
	blo _021B95B0
	ldr r0, _021B9604 ; =0x000081FF
	cmp r1, r0
	bhi _021B95B0
	str r2, [r3, #0x3c]
_021B95B0:
	ldr r0, [r3, #0x3c]
	cmp r0, #0
	beq _021B95DC
	add r0, r4, #0
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r4, #1
	str r0, [sp]
	add r0, r5, r1
	ldrh r0, [r0, #0x12]
	add r1, r6, r1
	str r0, [sp, #4]
	ldrh r0, [r5, #0x22]
	str r0, [sp, #8]
	ldrh r3, [r5, #0x2c]
	ldrh r2, [r5, #0x24]
	mov r0, #0xf
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl ovy197_21b986c
_021B95DC:
	add r4, r4, #1
	cmp r4, #4
	blt _021B9596
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B95EC: .word 0x00000548
_021B95F0: .word 0x0000054C
_021B95F4: .word 0x00000551
_021B95F8: .word 0x021BE55C
_021B95FC: .word 0x021BE560
_021B9600: .word 0x00007DFF
_021B9604: .word 0x000081FF
	thumb_func_end ovy197_21b9498

	thumb_func_start sub_021B9608
sub_021B9608: ; 0x021B9608
	ldr r0, [r0]
	ldr r3, _021B9610 ; =ovy197_21b9090
	bx r3
	nop
_021B9610: .word ovy197_21b9090
	thumb_func_end sub_021B9608

	thumb_func_start sub_021B9614
sub_021B9614: ; 0x021B9614
	lsl r1, r1, #2
	add r0, r0, r1
	str r2, [r0, #0x4c]
	bx lr
	thumb_func_end sub_021B9614

	thumb_func_start ovy197_21b961c
ovy197_21b961c: ; 0x021B961C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _021B9650 ; =0x00000626
	add r6, r1, #0
	str r0, [sp]
	add r0, r2, #0
	ldr r3, _021B9654 ; =0x021BE9A0
	mov r1, #0x14
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r6, #0
	str r5, [r4, #0xc]
	bl sub_021B9678
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B9650: .word 0x00000626
_021B9654: .word 0x021BE9A0
	thumb_func_end ovy197_21b961c

	thumb_func_start sub_021B9658
sub_021B9658: ; 0x021B9658
	ldr r3, _021B965C ; =sub_0203A24C
	bx r3
	.align 2, 0
_021B965C: .word sub_0203A24C
	thumb_func_end sub_021B9658

	thumb_func_start ovy197_21b9660
ovy197_21b9660: ; 0x021B9660
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021B9672
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_021B9672:
	pop {r3, pc}
	thumb_func_end ovy197_21b9660

	thumb_func_start sub_021B9674
sub_021B9674: ; 0x021B9674
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021B9674

	thumb_func_start sub_021B9678
sub_021B9678: ; 0x021B9678
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021B9678

	thumb_func_start sub_021B9680
sub_021B9680: ; 0x021B9680
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B9680

	thumb_func_start sub_021B9688
sub_021B9688: ; 0x021B9688
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021B9688

	thumb_func_start sub_021B968C
sub_021B968C: ; 0x021B968C
	ldr r1, [r0, #0x10]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B968C

	thumb_func_start ovy197_21b9694
ovy197_21b9694: ; 0x021B9694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #4]
	add r5, r0, #0
	str r2, [sp, #8]
	ldr r0, _021B9718 ; =0x000006BB
	add r6, r3, #0
	add r7, sp, #0x38
	str r0, [sp]
	ldrh r0, [r7, #0x10]
	ldr r3, _021B971C ; =0x021BE9A0
	mov r1, #0x24
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x24
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x44]
	str r0, [r4, #0x20]
	ldrh r1, [r7, #0x10]
	mov r0, #0x80
	bl GFL_StrBufCreate
	str r0, [r4, #0x18]
	ldrh r3, [r7, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #0x20
	bl sub_02046E28
	str r0, [r4]
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	ldr r0, [r4]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r1, #4]
	mov r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r1, #6]
	ldrb r0, [r5, #6]
	str r6, [sp, #0x14]
	strb r0, [r1, #0x10]
	ldr r0, [sp, #0x3c]
	strh r0, [r1, #0x12]
	str r0, [sp, #0x20]
	ldrb r0, [r5, #7]
	strb r0, [r1, #0x11]
	ldrb r0, [r7]
	add r1, sp, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	bl sub_0202AEC4
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B9718: .word 0x000006BB
_021B971C: .word 0x021BE9A0
	thumb_func_end ovy197_21b9694

	thumb_func_start ovy197_21b9720
ovy197_21b9720: ; 0x021B9720
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_0202B030
	ldr r0, [r4]
	bl sub_02046EDC
	ldr r0, [r4, #0x18]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b9720

	thumb_func_start ovy197_21b9740
ovy197_21b9740: ; 0x021B9740
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	mov r1, #0x1f
	ldr r0, [r4]
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204713C
	ldr r0, [r4, #0x1c]
	bl sub_0202B0F4
	pop {r4, pc}
	thumb_func_end ovy197_21b9740

	thumb_func_start ovy197_21b975c
ovy197_21b975c: ; 0x021B975C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r2, #0
	ldrh r2, [r5, #4]
	add r6, r1, #0
	mov r1, #0x1f
	and r1, r2
	lsl r1, r1, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	add r4, r3, #0
	bl sub_0204713C
	ldr r2, [r5, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0xc
	bl ovy197_21b97f0
	ldr r0, [r5, #0x18]
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r0, [r5, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x20]
	ldr r1, [r5]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02021C7C
	mov r0, #1
	str r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b975c

	thumb_func_start sub_021B97B4
sub_021B97B4: ; 0x021B97B4
	strh r1, [r0, #4]
	bx lr
	thumb_func_end sub_021B97B4

	thumb_func_start sub_021B97B8
sub_021B97B8: ; 0x021B97B8
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r3, [r0, #0x14]
	bx lr
	thumb_func_end sub_021B97B8

	thumb_func_start ovy197_21b97c0
ovy197_21b97c0: ; 0x021B97C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B97E0
	ldr r0, [r4, #0x20]
	ldr r1, [r4]
	bl sub_02021C1C
	cmp r0, #0
	bne _021B97E0
	ldr r0, [r4, #0x1c]
	bl sub_0202B0F4
	mov r0, #0
	str r0, [r4, #8]
_021B97E0:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021B97EA
	mov r0, #1
	pop {r4, pc}
_021B97EA:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21b97c0

	thumb_func_start ovy197_21b97f0
ovy197_21b97f0: ; 0x021B97F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r2, #0
	str r1, [sp]
	cmp r0, #0
	beq _021B9808
	cmp r0, #1
	beq _021B9812
	cmp r0, #2
	beq _021B984A
	pop {r3, r4, r5, r6, r7, pc}
_021B9808:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	str r1, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021B9812:
	ldr r0, [r5]
	bl sub_02046EF8
	lsr r6, r0, #1
	ldr r0, [r5]
	bl sub_02046EFC
	lsr r7, r0, #1
	ldr r0, [r5, #0x18]
	ldr r1, [sp]
	mov r2, #0
	bl sub_02022888
	lsr r0, r0, #1
	sub r6, r6, r0
	ldr r0, [r5, #0x18]
	ldr r1, [sp]
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r7, r0
	ldr r0, [r5, #0xc]
	add r0, r6, r0
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021B984A:
	ldr r0, [r5]
	bl sub_02046EFC
	lsr r6, r0, #1
	ldr r0, [r5, #0x18]
	ldr r1, [sp]
	bl sub_020229B0
	lsr r0, r0, #1
	sub r1, r6, r0
	ldr r0, [r5, #0xc]
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21b97f0

	thumb_func_start ovy197_21b986c
ovy197_21b986c: ; 0x021B986C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r1, sp, #0x18
	mov ip, r3
	mov r3, #0x3e
	asr r2, r2, #4
	lsl r2, r2, #1
	ldrh r1, [r1, #4]
	lsl r3, r3, #4
	add r2, r2, #1
	and r3, r1
	lsl r3, r3, #0x13
	lsr r6, r3, #0x18
	add r3, sp, #0x18
	ldrh r4, [r3, #8]
	lsl r3, r2, #1
	ldr r2, _021B9914 ; =FX_SinCosTable_ ; 0x020946BC
	mov r5, #0x1f
	ldrsh r3, [r2, r3]
	mov r2, #1
	lsl r2, r2, #0xc
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r1
	lsl r5, r5, #0xa
	and r1, r5
	mov r5, #0x1f
	lsl r5, r5, #0xa
	and r5, r4
	asr r1, r1, #0xa
	asr r5, r5, #0xa
	lsl r1, r1, #0x18
	lsl r5, r5, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r3
	asr r5, r5, #0xc
	add r1, r1, r5
	mov r5, #0x1f
	and r5, r4
	lsl r5, r5, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r2
	mul r5, r3
	asr r5, r5, #0xc
	add r2, r2, r5
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	mov r2, #0x3e
	lsl r2, r2, #4
	and r2, r4
	lsl r2, r2, #0x13
	lsr r2, r2, #0x18
	sub r2, r2, r6
	mul r2, r3
	asr r2, r2, #0xc
	add r2, r6, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x13
	lsl r1, r1, #0xa
	orr r2, r5
	orr r1, r2
	strh r1, [r7]
	mov r1, ip
	lsl r2, r1, #5
	add r1, sp, #0x18
	ldrb r1, [r1]
	mov r3, #2
	lsl r1, r1, #1
	add r1, r2, r1
	add r2, r7, #0
	bl sub_0205FA10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9914: .word FX_SinCosTable_
	thumb_func_end ovy197_21b986c

	thumb_func_start ovy197_21b9918
ovy197_21b9918: ; 0x021B9918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #8]
	str r0, [sp, #0x2c]
	asr r0, r2, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _021B99DC ; =FX_SinCosTable_ ; 0x020946BC
	mov r6, #0
	ldrsh r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	mov r0, #0x3e
	lsl r0, r0, #9
	mov ip, r0
	mov r0, #0x3e
	lsl r0, r0, #9
	str r0, [sp, #0xc]
_021B9954:
	ldr r0, [sp, #0x28]
	lsl r4, r6, #1
	ldrh r5, [r0, r4]
	mov r0, #0x3e
	lsl r0, r0, #4
	and r0, r5
	lsl r0, r0, #0x13
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x2c]
	add r6, r6, #1
	ldrh r3, [r0, r4]
	mov r0, #0x1f
	and r0, r5
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, ip
	and r0, r5
	ldr r5, [sp, #0xc]
	asr r0, r0, #0xa
	and r5, r3
	asr r5, r5, #0xa
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r0, r0, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r0
	mul r5, r2
	asr r5, r5, #0xc
	add r0, r0, r5
	mov r5, #0x1f
	and r5, r3
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	sub r5, r5, r1
	mul r5, r2
	asr r5, r5, #0xc
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r3
	lsl r1, r1, #0x13
	lsr r1, r1, #0x18
	sub r1, r1, r7
	mul r1, r2
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
	cmp r6, #0x10
	strh r1, [r0, r4]
	blt _021B9954
	ldr r1, [sp, #8]
	ldr r0, [sp]
	ldr r2, [sp, #4]
	lsl r1, r1, #5
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B99DC: .word FX_SinCosTable_
	thumb_func_end ovy197_21b9918

	thumb_func_start ovy197_21b99e0
ovy197_21b99e0: ; 0x021B99E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x124
	str r0, [sp, #0x14]
	ldr r0, _021B9BBC ; =0x0000019F
	mov r5, #0xc7
	add r6, r1, #0
	lsl r5, r5, #4
	str r0, [sp]
	ldr r3, _021B9BC0 ; =0x021BE9B0
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	blx MI_CpuFill8
	mov r0, #0xad
	mov r1, #1
	lsl r0, r0, #4
	ldr r3, [sp, #0x14]
	str r1, [r4, r0]
	add r2, r4, #0
	mov r5, #4
_021B9A16:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r5, r5, #1
	bne _021B9A16
	ldr r0, [r3]
	ldr r5, _021B9BC4 ; =0x00000B48
	str r0, [r2]
	mov r0, #0
	mvn r0, r0
	add r1, r4, r5
	mov r2, #0x20
	strh r6, [r4, #0x24]
	blx MIi_CpuClear32
	add r1, r5, #0
	mov r0, #0
	add r1, #0x40
	mvn r0, r0
	add r1, r4, r1
	mov r2, #0x20
	blx MIi_CpuClear32
	mov r0, #0
	add r5, #0x20
	mvn r0, r0
	add r1, r4, r5
	mov r2, #0x20
	blx MIi_CpuClear32
	ldr r0, [r4, #0xc]
	mov r5, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021B9A9C
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x28
	str r0, [sp, #0x18]
_021B9A64:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0200A800
	cmp r0, #0
	beq _021B9A90
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	add r2, sp, #0x58
	add r7, r7, #1
	bl sub_0200A71C
	mov r0, #0xdc
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	add r0, r0, r1
	add r1, sp, #0x58
	add r3, r6, #0
	bl ovy197_21babbc
_021B9A90:
	ldr r0, [r4, #0xc]
	add r5, r5, #1
	bl sub_0200AA64
	cmp r5, r0
	blo _021B9A64
_021B9A9C:
	ldr r0, [r4]
	ldr r1, _021B9BC8 ; =ovy197_21bae54
	cmp r0, #0
	beq _021B9AA6
	ldr r1, _021B9BCC ; =ovy197_21bbc8c
_021B9AA6:
	add r0, r4, #0
	add r2, r6, #0
	bl ovy197_21b961c
	ldr r5, _021B9BD0 ; =0x00000AC4
	add r1, r6, #0
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy197_21b9de0
	str r6, [sp]
	add r3, r5, #4
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ovy197_21ba240
	cmp r7, #0
	beq _021B9AD4
	ldr r1, _021B9BD4 ; =0x021BE6F4
	mov r2, #3
	b _021B9AD8
_021B9AD4:
	ldr r1, _021B9BD8 ; =0x021BE688
	mov r2, #2
_021B9AD8:
	mov r0, #3
	str r0, [sp]
	ldr r0, [r4, #0x14]
	mov r3, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r5, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc]
	mov r0, #0
	str r6, [sp, #0x10]
	bl ovy197_21b8f80
	ldr r1, _021B9BDC ; =0x00000AB8
	add r7, sp, #0x28
	str r0, [r4, r1]
	str r1, [sp, #0x20]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x30
	blx MI_CpuFill8
	mov r1, #0xe
	mov r0, #6
	str r0, [sp, #0x28]
	mov r0, #4
	str r0, [sp, #0x2c]
	mov r0, #0xf
	str r0, [sp, #0x34]
	mov r0, #0xb
	str r1, [sp, #0x30]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x38]
	ldr r0, [r4, #8]
	add r1, r6, #0
	str r0, [sp, #0x40]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x44]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x48]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x4c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x50]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x54]
	add r0, r7, #0
	bl ovy197_21bbd90
	ldr r1, [sp, #0x20]
	sub r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy197_21bab84
	cmp r0, #0
	beq _021B9BA2
	ldr r0, [sp, #0x20]
	add r7, r4, #0
	str r0, [sp, #0x24]
	sub r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r7, #0x28
	sub r0, #0x3c
	str r0, [sp, #0x20]
_021B9B5E:
	mov r0, #0xdc
	mul r0, r5
	str r0, [sp, #0x1c]
	add r0, r7, r0
	bl sub_021BACCC
	cmp r0, #0
	beq _021B9B8C
	ldr r0, [sp, #0x1c]
	add r0, r7, r0
	bl sub_021BADF4
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x14]
	ldr r1, [r4, r1]
	ldr r2, [r2, #0x20]
	add r3, r6, #0
	bl ovy197_21bc014
	lsl r1, r5, #2
	add r2, r4, r1
	ldr r1, [sp, #0x20]
	str r0, [r2, r1]
_021B9B8C:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021B9B5E
	ldr r0, _021B9BE0 ; =0x00000A7C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ovy197_21bce74
	mov r0, #0x1d
	bl sub_0203A2BC
_021B9BA2:
	mov r0, #3
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #7
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	add r0, r4, #0
	add sp, #0x124
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B9BBC: .word 0x0000019F
_021B9BC0: .word 0x021BE9B0
_021B9BC4: .word 0x00000B48
_021B9BC8: .word ovy197_21bae54
_021B9BCC: .word ovy197_21bbc8c
_021B9BD0: .word 0x00000AC4
_021B9BD4: .word 0x021BE6F4
_021B9BD8: .word 0x021BE688
_021B9BDC: .word 0x00000AB8
_021B9BE0: .word 0x00000A7C
	thumb_func_end ovy197_21b99e0

	thumb_func_start ovy197_21b9be4
ovy197_21b9be4: ; 0x021B9BE4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021B9CAC ; =0x00000A7C
	add r5, r0, #0
	mov r4, #0
_021B9BEC:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021B9BFE
	bl ovy197_21bc748
	mov r0, #0
	str r0, [r6, r7]
_021B9BFE:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B9BEC
	mov r4, #0xab
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl ovy197_21bbfc4
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B9C22
	bl ovy197_21b8bcc
	mov r0, #0
	add r4, #0xc
	str r0, [r5, r4]
_021B9C22:
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_02044CFC
	mov r0, #2
	mov r1, #0
	mov r2, #0
	bl sub_02044CFC
	ldr r6, _021B9CB0 ; =0x00000AB8
	ldr r0, [r5, r6]
	bl ovy197_21b9070
	ldr r0, [r5, r6]
	bl ovy197_21b9048
	add r0, r5, #0
	mov r1, #1
	bl ovy197_21ba2f0
	add r0, r5, #0
	mov r1, #0
	bl ovy197_21ba2f0
	add r0, r5, #0
	bl ovy197_21ba1b0
	ldr r0, [r5, #0xc]
	bl sub_0200AA64
	cmp r0, #0
	bls _021B9C82
	add r6, r5, #0
	add r6, #0x28
	mov r7, #0xdc
_021B9C6C:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy197_21bacac
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	bl sub_0200AA64
	cmp r4, r0
	blo _021B9C6C
_021B9C82:
	mov r0, #4
	bl sub_02045738
	mov r0, #6
	bl sub_02045738
	mov r0, #4
	bl sub_02045B7C
	mov r0, #6
	bl sub_02045B7C
	ldr r0, _021B9CB4 ; =0x00000AC4
	ldr r0, [r5, r0]
	bl sub_021B9658
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B9CAC: .word 0x00000A7C
_021B9CB0: .word 0x00000AB8
_021B9CB4: .word 0x00000AC4
	thumb_func_end ovy197_21b9be4

	thumb_func_start ovy197_21b9cb8
ovy197_21b9cb8: ; 0x021B9CB8
	push {r4, r5, r6, lr}
	ldr r5, _021B9D80 ; =0x00000AC4
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl ovy197_21b9660
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl sub_021BC008
	add r0, r5, #0
	sub r0, #0x4c
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B9D3E
	add r0, r5, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	beq _021B9CEC
	bl ovy197_21bcd4c
	sub r5, #0x18
	str r6, [r4, r5]
_021B9CEC:
	ldr r5, _021B9D84 ; =0x00000ACC
	ldr r0, [r4, r5]
	cmp r0, #4
	bge _021B9D2A
	sub r2, r5, #4
	ldr r2, [r4, r2]
	ldr r0, [r4, r5]
	lsl r2, r2, #2
	add r1, r4, #0
	add r2, r0, r2
	mov r0, #0xdc
	add r1, #0x28
	mul r0, r2
	add r0, r1, r0
	bl sub_021BACCC
	cmp r0, #0
	beq _021B9D2A
	sub r0, r5, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r5]
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #2
	add r0, r4, r0
	sub r5, #0x50
	ldr r0, [r0, r5]
	mov r1, #1
	mov r6, #1
	bl ovy197_21bce74
_021B9D2A:
	cmp r6, #0
	bne _021B9D38
	mov r0, #0xab
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ovy197_21bcea4
_021B9D38:
	ldr r0, _021B9D88 ; =0x00000A78
	mov r1, #0
	str r1, [r4, r0]
_021B9D3E:
	ldr r1, _021B9D8C ; =0x00000BAC
	mov r0, #1
	ldrh r3, [r4, r1]
	lsl r0, r0, #0xa
	add r2, r3, r0
	lsl r0, r0, #6
	cmp r2, r0
	blt _021B9D58
	mov r0, #0x3f
	lsl r0, r0, #0xa
	sub r0, r3, r0
	strh r0, [r4, r1]
	b _021B9D5A
_021B9D58:
	strh r2, [r4, r1]
_021B9D5A:
	ldr r5, _021B9D90 ; =0x00000BAE
	mov r1, #0xe
	sub r3, r5, #2
	ldrh r3, [r4, r3]
	add r0, r4, r5
	mov r2, #0
	bl ovy197_21bbd6c
	sub r3, r5, #2
	add r0, r5, #0
	add r0, #0x60
	ldrh r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xe
	mov r2, #2
	bl ovy197_21bbd6c
	pop {r4, r5, r6, pc}
	nop
_021B9D80: .word 0x00000AC4
_021B9D84: .word 0x00000ACC
_021B9D88: .word 0x00000A78
_021B9D8C: .word 0x00000BAC
_021B9D90: .word 0x00000BAE
	thumb_func_end ovy197_21b9cb8

	thumb_func_start ovy197_21b9d94
ovy197_21b9d94: ; 0x021B9D94
	push {r4, r5, r6, lr}
	ldr r4, _021B9DC8 ; =0x00000AB8
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl ovy197_21b9090
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B9DAC
	bl ovy197_21b88fc
_021B9DAC:
	ldr r6, _021B9DCC ; =0x00000A7C
	mov r4, #0
_021B9DB0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021B9DC0
	beq _021B9DC0
	bl ovy197_21bc794
_021B9DC0:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B9DB0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B9DC8: .word 0x00000AB8
_021B9DCC: .word 0x00000A7C
	thumb_func_end ovy197_21b9d94

	thumb_func_start sub_021B9DD0
sub_021B9DD0: ; 0x021B9DD0
	ldr r1, _021B9DD8 ; =0x00000AC4
	ldr r3, _021B9DDC ; =sub_021B9674
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021B9DD8: .word 0x00000AC4
_021B9DDC: .word sub_021B9674
	thumb_func_end sub_021B9DD0

	thumb_func_start ovy197_21b9de0
ovy197_21b9de0: ; 0x021B9DE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r0, #0
	mov r0, #0x21
	str r1, [sp, #0x14]
	bl sub_0204AA30
	mov r7, #5
	lsl r7, r7, #6
	str r7, [sp]
	ldr r1, [sp, #0x14]
	mov r6, #0
	str r1, [sp, #4]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0x11
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0x13
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl sub_0204AF50
	mov r0, #3
	bl sub_02044F90
	str r7, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	mov r3, #0
	bl sub_0204B0D4
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r1, #0x12
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r1, [sp, #0x14]
	mov r0, #0x17
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldr r1, [sp, #0x14]
	add r7, #0xa0
	str r1, [sp, #4]
	mov r1, #5
	mov r2, #0
	add r3, r7, #0
	add r4, r0, #0
	bl sub_0204B0D4
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #5
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	add r3, r7, #0
	bl sub_0204B0D4
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #2
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r0, [sp]
	mov r0, #0
	mov r2, #0xd
	mov r3, #0
	bl sub_02024D00
	ldr r1, [sp, #0x14]
	mov r0, #7
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r3, #3
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0
	lsl r3, r3, #7
	bl sub_0204BC48
	ldr r1, _021BA1A0 ; =0x00000BA8
	str r0, [r5, r1]
	add r0, r4, #0
	str r1, [sp, #0x1c]
	bl sub_0204AB0C
	ldr r0, [sp, #0x1c]
	add r4, r6, #0
	str r0, [sp, #0x20]
	sub r0, #0xa0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r7, sp, #0x44
	sub r0, #0xa0
	str r0, [sp, #0x1c]
_021B9F3A:
	cmp r6, #4
	blt _021B9F76
	ldr r1, _021BA1A4 ; =0x021BE666
	lsl r0, r6, #3
	add r1, r1, r0
	sub r1, #0x20
	ldrh r1, [r1]
	strh r1, [r7, #8]
	ldr r1, _021BA1A4 ; =0x021BE666
	add r1, r1, r0
	sub r1, #0x1e
	ldrh r1, [r1]
	strh r1, [r7, #0xa]
	ldr r1, _021BA1A4 ; =0x021BE666
	add r1, r1, r0
	sub r1, #0x1c
	ldrh r1, [r1]
	strh r1, [r7, #0xc]
	ldr r1, _021BA1A4 ; =0x021BE666
	add r0, r1, r0
	sub r0, #0x1a
	ldrh r0, [r0]
	strh r0, [r7, #0xe]
	ldrb r0, [r7, #8]
	add r0, #0x20
	strb r0, [r7, #8]
	ldrb r0, [r7, #0xa]
	add r0, #0x20
	strb r0, [r7, #0xa]
	b _021B9F8E
_021B9F76:
	ldr r0, _021BA1A4 ; =0x021BE666
	lsl r1, r6, #3
	ldr r2, _021BA1A4 ; =0x021BE666
	add r0, r0, r1
	ldrh r1, [r2, r1]
	strh r1, [r7, #8]
	ldrh r1, [r0, #2]
	strh r1, [r7, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r7, #0xc]
	ldrh r0, [r0, #6]
	strh r0, [r7, #0xe]
_021B9F8E:
	lsl r0, r6, #2
	add r0, r5, r0
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrb r1, [r7, #0xa]
	ldrb r2, [r7, #0xb]
	mov r0, #2
	mov r3, #0xa
	bl sub_020480C0
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r0, [r2, r1]
	ldr r0, [sp, #0x1c]
	add r1, r2, #0
	ldr r0, [r1, r0]
	bl sub_0204826C
	mov r0, #2
	bl sub_02044F90
	add r6, r6, #1
	cmp r6, #8
	blt _021B9F3A
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r2, #0xd
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r3, #0x16
	mov r7, #1
	bl ovy197_21b876c
	ldr r1, _021BA1A8 ; =0x00000AB4
	str r0, [r5, r1]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x14]
	mov r0, #0x21
	bl sub_0204AA30
	str r4, [sp]
	mov r1, #6
	str r1, [sp, #4]
	ldr r1, [sp, #0x14]
	add r2, r4, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r3, r4, #0
	add r6, r0, #0
	bl sub_0204BBB8
	ldr r1, [sp, #0x24]
	mov r2, #0x23
	add r1, #0x50
	str r0, [r5, r1]
	ldr r3, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0x20
	bl sub_0204BDE0
	ldr r1, [sp, #0x24]
	add r2, r4, #0
	add r1, #0x4c
	str r0, [r5, r1]
	ldr r0, [sp, #0x14]
	mov r1, #9
	str r0, [sp]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204B81C
	ldr r1, [sp, #0x24]
	add r2, r4, #0
	add r1, #0x48
	str r0, [r5, r1]
	str r7, [sp]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	add r0, #0xfa
	add r0, r5, r0
	bl ovy197_21bbd1c
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, _021BA1AC ; =0x00000C0E
	add r2, r4, #0
	add r0, r5, r0
	mov r3, #2
	bl ovy197_21bbd1c
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, sp, #0x44
	add r1, r4, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, sp, #0x44
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x24]
	strh r4, [r0]
	mov r1, #0x18
	strh r1, [r0, #2]
	strb r7, [r0, #7]
	strb r7, [r0, #6]
	add r0, sp, #0x44
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	add r1, #0x48
	add r2, #0x50
	add r3, #0x4c
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x24]
	add r1, #0x38
	str r0, [r5, r1]
	ldr r3, [sp, #0x24]
	mov r1, #2
	add r0, sp, #0x44
	strh r1, [r0, #4]
	add r0, sp, #0x44
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	str r0, [sp, #8]
	add r1, #0x48
	add r2, #0x50
	add r3, #0x4c
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x24]
	add r1, #0x3c
	str r0, [r5, r1]
	add r1, r4, #0
	bl sub_0204C124
	add r0, sp, #0x44
	strb r4, [r0, #6]
	ldr r0, [sp, #0x24]
	mov r7, #0
	str r0, [sp, #0x3c]
	add r0, #0x48
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x38]
	add r0, #0x50
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x34]
	add r0, #0x4c
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x30]
	add r0, #0x40
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x2c]
	add r0, #0x40
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, #0x40
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x40]
	add r0, #0x40
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x24]
	add r0, #0x40
	str r0, [sp, #0x24]
_021BA122:
	cmp r4, #0
	add r0, sp, #0x44
	bne _021BA12E
	mov r1, #0x10
	strh r1, [r0]
	b _021BA134
_021BA12E:
	mov r1, #0xf0
	strh r1, [r0]
	mov r1, #0x10
_021BA134:
	strh r1, [r0, #2]
	mov r1, #9
	strh r1, [r0, #4]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x44
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x34]
	ldr r0, [r5, #8]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x30]
	str r0, [r6, r1]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl sub_0204C124
	cmp r4, #0
	bne _021BA180
	ldr r0, [sp, #0x24]
	mov r1, #1
	ldr r0, [r6, r0]
	mov r2, #1
	b _021BA188
_021BA180:
	ldr r0, [sp, #0x40]
	mov r1, #1
	ldr r0, [r6, r0]
	add r2, r7, #0
_021BA188:
	bl sub_0204C2B0
	add r4, r4, #1
	cmp r4, #2
	blt _021BA122
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021BA1A0: .word 0x00000BA8
_021BA1A4: .word 0x021BE666
_021BA1A8: .word 0x00000AB4
_021BA1AC: .word 0x00000C0E
	thumb_func_end ovy197_21b9de0

	thumb_func_start ovy197_21ba1b0
ovy197_21ba1b0: ; 0x021BA1B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	mov r4, #0
	bl sub_02045264
	mov r0, #1
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r6, _021BA23C ; =0x00000AF4
_021BA1CC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #2
	blt _021BA1CC
	mov r6, #0xaf
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	bl sub_0204C108
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0204C108
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r6, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r6, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r6, #0
	sub r0, #0x3c
	ldr r0, [r5, r0]
	bl ovy197_21b8808
	add r0, r6, #0
	mov r4, #0
	sub r0, #0x3c
	str r4, [r5, r0]
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r6, #0x18
_021BA22A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #8
	blt _021BA22A
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BA23C: .word 0x00000AF4
	thumb_func_end ovy197_21ba1b0

	thumb_func_start ovy197_21ba240
ovy197_21ba240: ; 0x021BA240
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [sp, #0x28]
	add r5, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r7, r3, #0
	mov r4, #0
_021BA250:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r3, r7, #0
	str r6, [sp, #4]
	bl ovy197_21ba314
	add r4, r4, #1
	cmp r4, #4
	blt _021BA250
	mov r0, #0x80
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #0x47
	bl sub_0204898C
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #0
	add r2, r7, #1
	mov r3, #1
	bl StringSetNumber
	add r0, r5, #0
	bl sub_021BAB80
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r1, #1
	mov r3, #1
	bl StringSetNumber
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r7, _021BA2E8 ; =0x00000AB4
	ldr r1, _021BA2EC ; =0x000039EA
	ldr r0, [r5, r7]
	bl sub_021B88F0
	ldr r0, [r5, r7]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B88F4
	ldr r0, [r5, r7]
	ldr r2, [r5, #0x10]
	add r1, r4, #0
	bl ovy197_21b8890
	add r0, r4, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #3
	bl sub_02044F90
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BA2E8: .word 0x00000AB4
_021BA2EC: .word 0x000039EA
	thumb_func_end ovy197_21ba240

	thumb_func_start ovy197_21ba2f0
ovy197_21ba2f0: ; 0x021BA2F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021BA2F8:
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl ovy197_21ba700
	add r4, r4, #1
	cmp r4, #4
	blt _021BA2F8
	mov r0, #3
	bl sub_02044F90
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy197_21ba2f0

	thumb_func_start ovy197_21ba314
ovy197_21ba314: ; 0x021BA314
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x7c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x7c]
	add r0, sp, #0x78
	ldrh r0, [r0]
	lsl r1, r3, #2
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	mov r1, #0xdc
	str r0, [sp, #0x3c]
	add r0, #0x28
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x20]
	ldr r2, _021BA638 ; =0x021BE666
	mul r1, r0
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x40]
	lsl r1, r0, #3
	str r0, [sp, #0x38]
	add r0, r2, r1
	str r0, [sp, #0x24]
	ldrh r0, [r2, r1]
	add r1, sp, #0x4c
	strh r0, [r1, #0xc]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0, #2]
	strh r0, [r1, #0xe]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0, #4]
	strh r0, [r1, #0x10]
	ldr r0, [sp, #0x24]
	ldrh r0, [r0, #6]
	strh r0, [r1, #0x12]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021BA374
	mov r1, #0xad
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021BA386
_021BA374:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021BA39A
	mov r1, #0xad
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021BA39A
_021BA386:
	ldr r0, [sp, #0x38]
	add r0, r0, #4
	str r0, [sp, #0x38]
	add r0, sp, #0x4c
	ldrb r1, [r0, #0xc]
	add r1, #0x20
	strb r1, [r0, #0xc]
	ldrb r1, [r0, #0xe]
	add r1, #0x20
	strb r1, [r0, #0xe]
_021BA39A:
	mov r0, #0
	add r1, sp, #0x4c
	str r0, [sp, #0x34]
	ldrb r0, [r1, #0xd]
	ldrb r5, [r1, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
_021BA3AE:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	mov r4, #0
	add r7, r1, r0
	ldr r0, [sp, #0x28]
	mov r1, #3
	blx sub_0208D65C
	add r6, r1, #0
	ldr r0, [sp, #0x28]
	mov r1, #3
	blx sub_0208D65C
	ldr r1, [sp, #0x34]
	lsl r2, r6, #6
	add r2, #0x58
	lsl r0, r0, #1
	lsl r1, r1, #5
	add r0, r2, r0
	add r6, r1, r0
	lsl r0, r7, #0x18
	lsr r7, r0, #0x18
_021BA3DA:
	add r2, r5, r4
	mov r0, #1
	add r1, r4, r6
	sub r2, r2, #2
	str r0, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #3
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r0, [sp, #8]
	bl sub_02045604
	add r4, r4, #1
	cmp r4, #2
	blt _021BA3DA
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #2
	blt _021BA3AE
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl sub_021BACCC
	cmp r0, #0
	bne _021BA47A
	mov r0, #0
	str r0, [sp, #0x30]
_021BA41A:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	mov r4, #0
	add r2, r1, r0
	lsl r1, r0, #5
	mov r0, #6
	lsl r0, r0, #6
	add r6, r1, r0
	lsl r0, r2, #0x18
	lsr r7, r0, #0x18
_021BA42E:
	mov r0, #1
	add r1, r4, r6
	add r2, r5, r4
	str r0, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #3
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r0, [sp, #8]
	bl sub_02045604
	add r4, r4, #1
	cmp r4, #0xc
	blt _021BA42E
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #7
	blt _021BA41A
	ldr r1, _021BA63C ; =0x00000B08
	ldr r0, [sp, #0xc]
	add r4, r0, r1
	ldr r0, [sp, #0x38]
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r4, r5]
	bl sub_02048244
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_021BA47A:
	mov r0, #0
	str r0, [sp, #0x2c]
_021BA47E:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x1c]
	lsl r6, r0, #5
	add r1, r1, r0
	lsl r0, r1, #0x18
	mov r4, #0
	add r6, #0x40
	lsr r7, r0, #0x18
_021BA48E:
	mov r0, #1
	str r0, [sp]
	add r1, r4, r6
	add r2, r5, r4
	str r0, [sp, #4]
	mov r0, #5
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	mov r0, #3
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl sub_02045604
	add r4, r4, #1
	cmp r4, #0xc
	blt _021BA48E
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #7
	blt _021BA47E
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl ovy197_21bae04
	mov r1, #7
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r1, sp, #0x4c
	ldrb r1, [r1, #0xc]
	ldr r2, [sp, #0x1c]
	mov r0, #3
	mov r3, #0xc
	bl sub_0204566C
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl sub_021BACD0
	add r7, r0, #0
	ldr r0, [sp, #0x38]
	ldr r4, _021BA63C ; =0x00000B08
	lsl r5, r0, #2
	ldr r0, [sp, #0xc]
	add r6, r0, r4
	ldr r0, [r6, r5]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02046F18
	ldr r0, [r6, r5]
	bl sub_02048244
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	ldr r1, [sp, #0x7c]
	bl ovy197_21bacd8
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl sub_021BADEC
	cmp r0, #1
	beq _021BA554
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl ovy197_21bad08
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	ldr r3, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x7c]
	add r3, r3, #4
	str r0, [sp, #8]
	lsl r3, r3, #0x15
	ldr r0, [sp, #0x48]
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0204BBB8
	ldr r1, [sp, #0xc]
	add r4, #0x80
	add r1, r1, r5
	str r0, [r1, r4]
_021BA554:
	ldr r4, _021BA640 ; =0x00000B68
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	add r0, r0, r4
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl ovy197_21badac
	add r6, r0, #0
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl ovy197_21badcc
	add r2, r0, #0
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x7c]
	add r1, r6, #0
	bl sub_0204BDE0
	ldr r1, [sp, #0x44]
	sub r4, #0x20
	str r0, [r1, r5]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	add r7, r0, r4
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl ovy197_21bad64
	add r1, r0, #0
	ldr r0, [sp, #0x7c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x48]
	mov r3, #0
	mov r6, #0
	bl sub_0204B81C
	str r0, [r7, r5]
	ldr r0, [sp, #0x48]
	bl sub_0204AB0C
	add r0, sp, #0x50
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	add r1, sp, #0x4c
	mov r0, #0x12
	ldrsh r0, [r1, r0]
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xb]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl sub_021BADEC
	cmp r0, #2
	bne _021BA5D6
	mov r6, #4
	mov r4, #8
_021BA5D6:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x4c
	cmp r0, #0
	beq _021BA5E0
	b _021BA5FE
_021BA5E0:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021BA5F0
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r0, #0xf0
	sub r0, r2, r0
_021BA5EE:
	b _021BA602
_021BA5F0:
	cmp r0, #0
	bne _021BA5FE
	mov r0, #0x10
	ldrsh r2, [r1, r0]
	add r0, #0xf0
	add r0, r2, r0
	b _021BA5EE
_021BA5FE:
	mov r0, #0x10
	ldrsh r0, [r1, r0]
_021BA602:
	strh r0, [r1, #4]
	add r1, sp, #0x4c
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r0, r0, r6
	strh r0, [r1, #4]
	mov r0, #6
	ldrsh r0, [r1, r0]
	add r0, r0, r4
	strh r0, [r1, #6]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl sub_021BADEC
	cmp r0, #1
	bne _021BA62C
	ldr r1, _021BA644 ; =0x00000BA8
	ldr r0, [sp, #0xc]
	ldr r2, [r0, r1]
	b _021BA634
_021BA62C:
	ldr r0, [sp, #0xc]
	add r1, r0, r5
	ldr r0, _021BA648 ; =0x00000B88
	ldr r2, [r1, r0]
_021BA634:
	ldr r6, _021BA64C ; =0x00000B28
	b _021BA650
	.align 2, 0
_021BA638: .word 0x021BE666
_021BA63C: .word 0x00000B08
_021BA640: .word 0x00000B68
_021BA644: .word 0x00000BA8
_021BA648: .word 0x00000B88
_021BA64C: .word 0x00000B28
_021BA650:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x44]
	add r4, r0, r6
	add r0, sp, #0x50
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [r7, r5]
	ldr r0, [r0, #8]
	ldr r3, [r3, r5]
	bl sub_0204C040
	str r0, [r4, r5]
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	add r0, r1, r0
	bl ovy197_21bad38
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, r5]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0204C378
	ldr r0, [r4, r5]
	mov r1, #1
	mov r4, #1
	bl sub_0204C124
	add r1, r6, #0
	ldr r0, [sp, #0xc]
	sub r1, #0x48
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021BA6F8
	ldr r1, [sp, #0xc]
	sub r6, #0x4a
	ldrh r2, [r1, r6]
	ldr r1, [sp, #0x20]
	add r0, sp, #0x4c
	cmp r2, r1
	bne _021BA6F8
	ldr r1, [sp, #0x24]
	ldrb r1, [r1]
	lsl r1, r1, #3
	sub r1, #0x18
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	lsl r2, r1, #3
	ldr r1, _021BA6FC ; =0x021BE667
	ldrb r1, [r1, r2]
	lsl r1, r1, #3
	sub r1, #8
	strh r1, [r0, #2]
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _021BA6E8
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _021BA6DC
	mov r1, #0
	ldrsh r1, [r0, r1]
	add r4, #0xff
	sub r1, r1, r4
	b _021BA6E6
_021BA6DC:
	bne _021BA6E8
	mov r1, #0
	ldrsh r1, [r0, r1]
	add r4, #0xff
	add r1, r1, r4
_021BA6E6:
	strh r1, [r0]
_021BA6E8:
	mov r1, #0xaf
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	add r1, sp, #0x4c
	mov r2, #0
	bl sub_0204C140
_021BA6F8:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BA6FC: .word 0x021BE667
	thumb_func_end ovy197_21ba314

	thumb_func_start ovy197_21ba700
ovy197_21ba700: ; 0x021BA700
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, _021BA830 ; =0x021BE666
	lsl r2, r2, #3
	add r3, r0, r2
	ldrh r2, [r0, r2]
	add r0, sp, #0x1c
	cmp r1, #0
	strh r2, [r0]
	ldrh r2, [r3, #2]
	strh r2, [r0, #2]
	ldrh r2, [r3, #4]
	strh r2, [r0, #4]
	ldrh r2, [r3, #6]
	strh r2, [r0, #6]
	beq _021BA730
	mov r2, #0xad
	ldr r0, [sp, #0xc]
	lsl r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _021BA740
_021BA730:
	cmp r1, #0
	bne _021BA758
	mov r1, #0xad
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021BA758
_021BA740:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	ldrb r1, [r0]
	add r1, #0x20
	strb r1, [r0]
	ldrb r1, [r0, #2]
	add r1, #0x20
	strb r1, [r0, #2]
_021BA758:
	mov r0, #0
	add r1, sp, #0x1c
	str r0, [sp, #0x18]
	ldrb r0, [r1, #1]
	ldrb r7, [r1]
	str r0, [sp, #0x14]
_021BA764:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r4, #0
	add r2, r1, r0
	lsl r1, r0, #5
	mov r0, #6
	lsl r0, r0, #6
	add r5, r1, r0
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
_021BA778:
	mov r0, #1
	add r1, r4, r5
	add r2, r7, r4
	str r0, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #4]
	mov r0, #3
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	add r3, r6, #0
	str r0, [sp, #8]
	bl sub_02045604
	add r4, r4, #1
	cmp r4, #0xc
	blt _021BA778
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #7
	blt _021BA764
	ldr r0, [sp, #0x10]
	ldr r4, _021BA834 ; =0x00000B08
	lsl r5, r0, #2
	ldr r0, [sp, #0xc]
	add r6, r0, r4
	ldr r0, [r6, r5]
	bl sub_020484F4
	mov r1, #0
	mov r7, #0
	bl sub_0204713C
	ldr r0, [r6, r5]
	bl sub_02048244
	ldr r0, [sp, #0xc]
	add r1, r0, r5
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021BA82C
	bl sub_0204C108
	ldr r0, [sp, #0xc]
	add r1, r0, r5
	add r0, r4, #0
	add r0, #0x20
	str r7, [r1, r0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r1, r0]
	sub r1, r7, #1
	cmp r0, r1
	beq _021BA7F8
	bl sub_0204BCD0
	ldr r0, [sp, #0xc]
	sub r1, r7, #1
	add r0, r0, r5
	add r4, #0x80
	str r1, [r0, r4]
_021BA7F8:
	ldr r0, [sp, #0xc]
	ldr r6, _021BA838 ; =0x00000B48
	add r0, r0, r5
	mov r4, #0
	ldr r0, [r0, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021BA812
	bl sub_0204B98C
	ldr r0, [sp, #0xc]
	add r0, r0, r5
	str r4, [r0, r6]
_021BA812:
	ldr r0, [sp, #0xc]
	ldr r6, _021BA83C ; =0x00000B68
	add r0, r0, r5
	mov r4, #0
	ldr r0, [r0, r6]
	mvn r4, r4
	cmp r0, r4
	beq _021BA82C
	bl sub_0204BE64
	ldr r0, [sp, #0xc]
	add r0, r0, r5
	str r4, [r0, r6]
_021BA82C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BA830: .word 0x021BE666
_021BA834: .word 0x00000B08
_021BA838: .word 0x00000B48
_021BA83C: .word 0x00000B68
	thumb_func_end ovy197_21ba700

	thumb_func_start sub_021BA840
sub_021BA840: ; 0x021BA840
	cmp r1, #0
	beq _021BA84A
	mov r2, #0
	mvn r2, r2
	b _021BA84C
_021BA84A:
	mov r2, #1
_021BA84C:
	ldr r1, _021BA858 ; =0x00000ADC
	strb r2, [r0, r1]
	mov r2, #0
	sub r1, r1, #4
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_021BA858: .word 0x00000ADC
	thumb_func_end sub_021BA840

	thumb_func_start ovy197_21ba85c
ovy197_21ba85c: ; 0x021BA85C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	ldr r0, _021BA9C8 ; =0x00000ADC
	str r0, [sp, #8]
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _021BA86E
	b _021BA9C0
_021BA86E:
	lsl r1, r0, #8
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r4, #0
	str r0, [sp, #0x10]
	add r0, #0x4c
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r7, sp, #0x1c
	str r0, [sp, #0xc]
	add r0, #0x4c
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	add r0, #0x4c
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	str r0, [sp, #0x14]
	add r0, #0x4c
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r0, #0x4c
	str r0, [sp, #8]
_021BA8AA:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [sp, #8]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BA912
	add r1, sp, #0x20
	mov r2, #0
	bl sub_0204C178
	mov r0, #4
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #4]
	mov r2, #0
	sub r0, r1, r0
	strh r0, [r7, #4]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x20
	ldr r0, [r5, r0]
	bl sub_0204C140
	ldr r0, [sp, #0xc]
	add r1, sp, #0x1c
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0204C178
	mov r0, #0
	ldrsh r1, [r7, r0]
	sub r0, #0x10
	cmp r1, r0
	blt _021BA908
	mov r0, #0x11
	lsl r0, r0, #4
	cmp r1, r0
	bgt _021BA908
	mov r0, #2
	ldrsh r1, [r7, r0]
	sub r0, #0x12
	cmp r1, r0
	blt _021BA908
	cmp r1, #0xd0
	bgt _021BA908
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r5, r0]
	b _021BA90E
_021BA908:
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r5, r0]
_021BA90E:
	bl sub_0204C124
_021BA912:
	add r4, r4, #1
	cmp r4, #8
	blt _021BA8AA
	mov r4, #0xae
	lsl r4, r4, #4
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021BA982
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r6, r0]
	add r1, sp, #0x20
	mov r2, #0
	bl sub_0204C178
	ldr r1, [sp]
	add r7, sp, #0x1c
	mov r5, #4
	lsl r1, r1, #0x10
	ldrsh r0, [r7, r5]
	asr r1, r1, #0x10
	mov r2, #0
	sub r0, r0, r1
	strh r0, [r7, #4]
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r6, r0]
	add r1, sp, #0x20
	bl sub_0204C140
	ldrsh r0, [r7, r5]
	sub r5, #0x64
	cmp r0, r5
	blt _021BA976
	mov r1, #0x16
	lsl r1, r1, #4
	cmp r0, r1
	bgt _021BA976
	mov r0, #6
	ldrsh r2, [r7, r0]
	sub r0, #0x66
	cmp r2, r0
	blt _021BA976
	sub r1, #0x40
	cmp r2, r1
	bgt _021BA976
	add r4, #0x10
	ldr r0, [r6, r4]
	mov r1, #1
	b _021BA97E
_021BA976:
	mov r0, #0xaf
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
_021BA97E:
	bl sub_0204C124
_021BA982:
	ldr r2, [sp]
	mov r0, #3
	mov r1, #1
	mov r4, #1
	bl sub_02044CFC
	ldr r2, [sp]
	mov r0, #2
	mov r1, #1
	bl sub_02044CFC
	ldr r1, _021BA9CC ; =0x00000AD8
	ldr r2, [r6, r1]
	add r0, r2, #1
	str r0, [r6, r1]
	cmp r2, #0xf
	blo _021BA9BA
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r6, r0]
	add r2, r0, #0
	add r0, r1, #0
	eor r2, r4
	sub r0, #8
	str r2, [r6, r0]
	mov r2, #0
	add r0, r1, #4
	strb r2, [r6, r0]
_021BA9BA:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021BA9C0:
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021BA9C8: .word 0x00000ADC
_021BA9CC: .word 0x00000AD8
	thumb_func_end ovy197_21ba85c

	thumb_func_start ovy197_21ba9d0
ovy197_21ba9d0: ; 0x021BA9D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r6, r1, #0
	bl sub_0200A7B0
	ldr r0, [r4, #0xc]
	mov r5, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021BAA04
	add r7, r4, #0
	add r7, #0x28
_021BA9EE:
	mov r0, #0xdc
	mul r0, r5
	add r0, r7, r0
	bl ovy197_21bacac
	ldr r0, [r4, #0xc]
	add r5, r5, #1
	bl sub_0200AA64
	cmp r5, r0
	blo _021BA9EE
_021BAA04:
	ldr r0, [r4, #0xc]
	mov r5, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021BAA46
	add r7, r4, #0
	add r7, #0x28
_021BAA14:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_0200A800
	cmp r0, #0
	beq _021BAA3A
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	add r2, sp, #0
	bl sub_0200A71C
	mov r0, #0xdc
	mul r0, r5
	ldrh r3, [r4, #0x24]
	add r0, r7, r0
	add r1, sp, #0
	add r2, r4, #0
	bl ovy197_21babbc
_021BAA3A:
	ldr r0, [r4, #0xc]
	add r5, r5, #1
	bl sub_0200AA64
	cmp r5, r0
	blo _021BAA14
_021BAA46:
	ldr r0, _021BAA88 ; =0x00000A7C
	lsl r5, r6, #2
	add r7, r4, r0
	ldr r0, [r7, r5]
	cmp r0, #0
	beq _021BAA5A
	bl ovy197_21bc748
	mov r0, #0
	str r0, [r7, r5]
_021BAA5A:
	cmp r6, #0xb
	bge _021BAA7C
	mov r1, #0x2a
	lsl r1, r1, #6
	sub r0, r1, #4
	add r2, r0, #0
_021BAA66:
	lsl r3, r6, #2
	add r7, r4, r3
	ldr r5, [r7, r2]
	cmp r5, #0
	bne _021BAA76
	ldr r3, [r7, r1]
	str r3, [r7, r0]
	str r5, [r7, r1]
_021BAA76:
	add r6, r6, #1
	cmp r6, #0xb
	blt _021BAA66
_021BAA7C:
	ldr r0, _021BAA8C ; =0x00000AD4
	mov r1, #1
	str r1, [r4, r0]
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	nop
_021BAA88: .word 0x00000A7C
_021BAA8C: .word 0x00000AD4
	thumb_func_end ovy197_21ba9d0

	thumb_func_start ovy197_21baa90
ovy197_21baa90: ; 0x021BAA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xdc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	str r1, [sp]
	str r2, [sp, #4]
	bl sub_0200A970
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021BAAC8
	add r6, r5, #0
	add r6, #0x28
	mov r7, #0xdc
_021BAAB2:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy197_21bacac
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	bl sub_0200AA64
	cmp r4, r0
	blo _021BAAB2
_021BAAC8:
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021BAB0C
	add r6, r5, #0
	add r7, sp, #0x10
	add r6, #0x28
_021BAADA:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_0200A800
	cmp r0, #0
	beq _021BAB00
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200A71C
	mov r0, #0xdc
	mul r0, r4
	ldrh r3, [r5, #0x24]
	add r0, r6, r0
	add r1, r7, #0
	add r2, r5, #0
	bl ovy197_21babbc
_021BAB00:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	bl sub_0200AA64
	cmp r4, r0
	blo _021BAADA
_021BAB0C:
	ldr r4, _021BAB7C ; =0x00000A7C
	ldr r0, [sp]
	add r6, r5, r4
	lsl r7, r0, #2
	ldr r0, [r6, r7]
	bl ovy197_21bc748
	add r0, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r1, r0]
	bl ovy197_21bc748
	add r0, r5, #0
	ldr r2, [sp]
	mov r1, #0xdc
	add r0, #0x28
	mul r1, r2
	add r0, r0, r1
	bl sub_021BADF4
	add r1, r4, #0
	add r1, #0x34
	ldrh r3, [r5, #0x24]
	ldr r1, [r5, r1]
	ldr r2, [r5, #0x20]
	bl ovy197_21bc014
	str r0, [r6, r7]
	add r2, r5, #0
	ldr r1, [sp, #4]
	mov r0, #0xdc
	add r2, #0x28
	mul r0, r1
	add r0, r2, r0
	bl sub_021BADF4
	add r1, r4, #0
	add r1, #0x34
	ldrh r3, [r5, #0x24]
	ldr r1, [r5, r1]
	ldr r2, [r5, #0x20]
	bl ovy197_21bc014
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r4, #0x58
	str r0, [r2, r1]
	mov r0, #1
	str r0, [r5, r4]
	add sp, #0xdc
	pop {r4, r5, r6, r7, pc}
	nop
_021BAB7C: .word 0x00000A7C
	thumb_func_end ovy197_21baa90

	thumb_func_start sub_021BAB80
sub_021BAB80: ; 0x021BAB80
	mov r0, #3
	bx lr
	thumb_func_end sub_021BAB80

	thumb_func_start ovy197_21bab84
ovy197_21bab84: ; 0x021BAB84
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0xc]
	mov r5, #0
	mov r4, #0
	bl sub_0200AA64
	cmp r0, #0
	bls _021BABB6
	add r7, r6, #0
	add r7, #0x28
_021BAB9A:
	mov r0, #0xdc
	mul r0, r4
	add r0, r7, r0
	bl sub_021BACCC
	cmp r0, #0
	beq _021BABAA
	add r5, r5, #1
_021BABAA:
	ldr r0, [r6, #0xc]
	add r4, r4, #1
	bl sub_0200AA64
	cmp r4, r0
	blo _021BAB9A
_021BABB6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21bab84

	thumb_func_start ovy197_21babbc
ovy197_21babbc: ; 0x021BABBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0
	mov r2, #0xdc
	add r5, r0, #0
	str r3, [sp, #8]
	blx MI_CpuFill8
	cmp r6, #0
	beq _021BACA8
	mov r0, #1
	str r0, [r5]
	add r3, r6, #0
	add r2, r5, #4
	mov r7, #0x19
_021BABDE:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021BABDE
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	ldr r3, [sp, #8]
	mov r0, #0xa
	mov r2, #0x20
	bl sub_02046E28
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1]
	add r6, #0xac
	ldr r1, [sp, #8]
	mov r0, #0x80
	ldr r6, [r6]
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r4, #0x1c]
	mov r1, #0x48
	bl sub_0204898C
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp]
	asr r2, r6, #0x10
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x18]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #4
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	asr r2, r6, #8
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	ldr r0, [r4, #0x18]
	mov r1, #1
	lsr r2, r2, #0x18
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r2, r6, #0x18
	ldr r0, [r4, #0x18]
	mov r1, #2
	lsr r2, r2, #0x18
	mov r3, #2
	bl StringSetNumber
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r4, #0x10]
	add r0, r7, #0
	mov r2, #0
	mov r6, #0x28
	bl sub_02022888
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r1, [r4, #0x10]
	add r0, r7, #0
	bl sub_020229B0
	lsl r0, r0, #0xf
	asr r1, r0, #0x10
	mov r0, #8
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r0, [r4, #0x10]
	add r5, #0xd0
	str r0, [sp]
	ldr r0, [r5]
	add r1, r6, #0
	add r3, r7, #0
	bl sub_02021CFC
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
_021BACA8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy197_21babbc

	thumb_func_start ovy197_21bacac
ovy197_21bacac: ; 0x021BACAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021BACCA
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0]
	bl sub_02046EDC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	blx MI_CpuFill8
_021BACCA:
	pop {r4, pc}
	thumb_func_end ovy197_21bacac

	thumb_func_start sub_021BACCC
sub_021BACCC: ; 0x021BACCC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021BACCC

	thumb_func_start sub_021BACD0
sub_021BACD0: ; 0x021BACD0
	add r0, #0xd0
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BACD0

	thumb_func_start ovy197_21bacd8
ovy197_21bacd8: ; 0x021BACD8
	push {r4, lr}
	add r4, r1, #0
	bl sub_021BADEC
	cmp r0, #1
	beq _021BACEA
	cmp r0, #2
	beq _021BACF4
	b _021BACFE
_021BACEA:
	mov r0, #7
	add r1, r4, #0
	bl sub_0204AA30
	pop {r4, pc}
_021BACF4:
	mov r0, #0x19
	add r1, r4, #0
	bl sub_0204AA30
	pop {r4, pc}
_021BACFE:
	mov r0, #0x21
	add r1, r4, #0
	bl sub_0204AA30
	pop {r4, pc}
	thumb_func_end ovy197_21bacd8

	thumb_func_start ovy197_21bad08
ovy197_21bad08: ; 0x021BAD08
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BADEC
	cmp r0, #1
	beq _021BAD1A
	cmp r0, #2
	beq _021BAD20
	b _021BAD34
_021BAD1A:
	bl sub_02021114
	pop {r4, pc}
_021BAD20:
	add r0, r4, #0
	bl sub_021BADF4
	ldr r0, [r0]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026670
	pop {r4, pc}
_021BAD34:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ovy197_21bad08

	thumb_func_start ovy197_21bad38
ovy197_21bad38: ; 0x021BAD38
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BADEC
	cmp r0, #1
	bne _021BAD60
	add r0, r4, #0
	bl sub_021BADF4
	add r3, r0, #0
	add r2, r3, #0
	add r2, #0x35
	ldrh r0, [r3, #0x1a]
	ldrb r1, [r3, #0x1c]
	add r3, #0x5c
	ldrb r2, [r2]
	ldrb r3, [r3]
	bl sub_02021034
	pop {r4, pc}
_021BAD60:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy197_21bad38

	thumb_func_start ovy197_21bad64
ovy197_21bad64: ; 0x021BAD64
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BADEC
	cmp r0, #1
	beq _021BAD76
	cmp r0, #2
	beq _021BAD92
	b _021BADA6
_021BAD76:
	add r0, r4, #0
	bl sub_021BADF4
	add r3, r0, #0
	add r2, r3, #0
	add r2, #0x35
	ldrh r0, [r3, #0x1a]
	ldrb r1, [r3, #0x1c]
	add r3, #0x5c
	ldrb r2, [r2]
	ldrb r3, [r3]
	bl sub_02020F94
	pop {r4, pc}
_021BAD92:
	add r0, r4, #0
	bl sub_021BADF4
	ldr r0, [r0]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02026670
	pop {r4, pc}
_021BADA6:
	mov r0, #0xc
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bad64

	thumb_func_start ovy197_21badac
ovy197_21badac: ; 0x021BADAC
	push {r3, lr}
	bl sub_021BADEC
	cmp r0, #1
	beq _021BADBC
	cmp r0, #2
	beq _021BADC2
	b _021BADC6
_021BADBC:
	bl sub_0202111C
	pop {r3, pc}
_021BADC2:
	mov r0, #1
	pop {r3, pc}
_021BADC6:
	mov r0, #0x21
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy197_21badac

	thumb_func_start ovy197_21badcc
ovy197_21badcc: ; 0x021BADCC
	push {r3, lr}
	bl sub_021BADEC
	cmp r0, #1
	beq _021BADDC
	cmp r0, #2
	beq _021BADE2
	b _021BADE6
_021BADDC:
	bl sub_02021190
	pop {r3, pc}
_021BADE2:
	mov r0, #0
	pop {r3, pc}
_021BADE6:
	mov r0, #0x24
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy197_21badcc

	thumb_func_start sub_021BADEC
sub_021BADEC: ; 0x021BADEC
	add r0, #0xb7
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021BADEC

	thumb_func_start sub_021BADF4
sub_021BADF4: ; 0x021BADF4
	add r0, r0, #4
	bx lr
	thumb_func_end sub_021BADF4

	thumb_func_start sub_021BADF8
sub_021BADF8: ; 0x021BADF8
	add r0, #0xb8
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	.align 2, 0
	thumb_func_end sub_021BADF8

	thumb_func_start ovy197_21bae04
ovy197_21bae04: ; 0x021BAE04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021BADEC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021BADF8
	mov r2, #0
	cmp r0, #0
	bne _021BAE1C
	mov r2, #5
_021BAE1C:
	ldr r0, _021BAE28 ; =0x021BE628
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	nop
_021BAE28: .word 0x021BE628
	thumb_func_end ovy197_21bae04

	thumb_func_start ovy197_21bae2c
ovy197_21bae2c: ; 0x021BAE2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021BADEC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021BADF8
	mov r2, #3
	cmp r0, #0
	bne _021BAE44
	mov r2, #0
_021BAE44:
	ldr r0, _021BAE50 ; =0x021BE63C
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	add r0, r2, r0
	pop {r3, r4, r5, pc}
	nop
_021BAE50: .word 0x021BE63C
	thumb_func_end ovy197_21bae2c

	thumb_func_start ovy197_21bae54
ovy197_21bae54: ; 0x021BAE54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r0, [r0]
	add r4, r2, #0
	str r1, [sp, #8]
	cmp r0, #0
	beq _021BAE70
	cmp r0, #1
	bne _021BAE6C
	b _021BB288
_021BAE6C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BAE70:
	ldr r6, _021BB11C ; =0x00000AF4
	mov r1, #1
	ldr r0, [r4, r6]
	bl sub_0204C124
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	bl sub_0203DF44
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x14]
	mov r7, #0
	bl sub_0203DA48
	cmp r0, #0
	beq _021BAECC
	add r1, r6, #0
	add r0, r6, #0
	sub r1, #0x2c
	sub r0, #0x28
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0xe
	add r1, r4, r0
	add r0, r6, #0
	sub r0, #0x78
	ldr r0, [r1, r0]
	sub r6, #0x48
	str r0, [r4, r6]
	cmp r0, #0
	beq _021BAECC
	bl ovy197_21bcd24
_021BAECC:
	mov r0, #2
	lsl r0, r0, #8
	cmp r5, r0
	bne _021BAEDA
	mov r7, #0
	mvn r7, r7
	b _021BB18C
_021BAEDA:
	lsr r0, r0, #1
	cmp r5, r0
	bne _021BAEE4
	mov r7, #1
	b _021BB18C
_021BAEE4:
	mov r0, #0x40
	tst r0, r5
	beq _021BAF56
	ldr r0, _021BB120 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, _021BB124 ; =0x00000ACC
	ldr r1, [r4, r0]
	cmp r1, #4
	bhi _021BAF50
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BAF04: ; jump table
	.short _021BAF0E - _021BAF04 - 2 ; case 0
	.short _021BAF28 - _021BAF04 - 2 ; case 1
	.short _021BAF38 - _021BAF04 - 2 ; case 2
	.short _021BAF3C - _021BAF04 - 2 ; case 3
	.short _021BAF40 - _021BAF04 - 2 ; case 4
_021BAF0E:
	add r1, r0, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BAF1C
_021BAF18:
	mov r1, #2
	b _021BAF4E
_021BAF1C:
	mov r2, #1
_021BAF1E:
	add r1, r0, #0
	add r1, #0x18
	str r2, [r4, r1]
	mov r1, #4
_021BAF26:
	b _021BAF4E
_021BAF28:
	add r1, r0, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BAF34
	b _021BAF4C
_021BAF34:
	mov r2, #0
	b _021BAF1E
_021BAF38:
	mov r1, #0
	b _021BAF26
_021BAF3C:
	mov r1, #1
	b _021BAF26
_021BAF40:
	add r1, r0, #0
	add r1, #0x18
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BAF4C
	b _021BAF18
_021BAF4C:
	mov r1, #3
_021BAF4E:
	str r1, [r4, r0]
_021BAF50:
	mov r0, #1
	str r0, [sp, #0x14]
	b _021BB18C
_021BAF56:
	mov r0, #0x80
	tst r0, r5
	beq _021BAFC4
	ldr r0, _021BB120 ; =0x00000548
	bl GFL_SndSEPlay
	ldr r0, _021BB124 ; =0x00000ACC
	ldr r1, [r4, r0]
	cmp r1, #4
	bhi _021BAFC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BAF76: ; jump table
	.short _021BAF80 - _021BAF76 - 2 ; case 0
	.short _021BAF84 - _021BAF76 - 2 ; case 1
	.short _021BAF88 - _021BAF76 - 2 ; case 2
	.short _021BAFA2 - _021BAF76 - 2 ; case 3
	.short _021BAFB2 - _021BAF76 - 2 ; case 4
_021BAF80:
	mov r1, #2
_021BAF82:
	b _021BAFC0
_021BAF84:
	mov r1, #3
	b _021BAF82
_021BAF88:
	add r1, r0, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BAF96
_021BAF92:
	mov r1, #0
	b _021BAFC0
_021BAF96:
	mov r2, #1
_021BAF98:
	add r1, r0, #0
	add r1, #0x18
	str r2, [r4, r1]
	mov r1, #4
	b _021BAFC0
_021BAFA2:
	add r1, r0, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BAFAE
	b _021BAFBE
_021BAFAE:
	mov r2, #0
	b _021BAF98
_021BAFB2:
	add r1, r0, #0
	add r1, #0x18
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BAFBE
	b _021BAF92
_021BAFBE:
	mov r1, #1
_021BAFC0:
	str r1, [r4, r0]
_021BAFC2:
	b _021BAF50
_021BAFC4:
	mov r0, #0x20
	tst r0, r5
	beq _021BB024
	add r0, r4, #0
	bl sub_021BAB80
	ldr r0, _021BB124 ; =0x00000ACC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BAFDC
	cmp r0, #2
	bne _021BAFE2
_021BAFDC:
	mov r7, #0
	mvn r7, r7
	b _021BAFEC
_021BAFE2:
	cmp r0, #4
	beq _021BAFEC
	ldr r0, _021BB120 ; =0x00000548
	bl GFL_SndSEPlay
_021BAFEC:
	ldr r0, _021BB124 ; =0x00000ACC
	ldr r1, [r4, r0]
	cmp r1, #4
	beq _021BB052
	cmp r1, #1
	bhi _021BB00C
	sub r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #1
	ble _021BB004
	mov r1, #0
	b _021BB00A
_021BB004:
	cmp r1, #0
	bge _021BB00A
	mov r1, #1
_021BB00A:
	b _021BB01E
_021BB00C:
	sub r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #3
	ble _021BB018
	mov r1, #2
	b _021BB01E
_021BB018:
	cmp r1, #2
	bge _021BB01E
	mov r1, #3
_021BB01E:
	ldr r0, _021BB124 ; =0x00000ACC
	str r1, [r4, r0]
	b _021BAF50
_021BB024:
	mov r0, #0x10
	tst r0, r5
	beq _021BB084
	add r0, r4, #0
	bl sub_021BAB80
	ldr r0, _021BB124 ; =0x00000ACC
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _021BB03C
	cmp r0, #3
	bne _021BB040
_021BB03C:
	mov r7, #1
	b _021BB04A
_021BB040:
	cmp r0, #4
	beq _021BB04A
	ldr r0, _021BB120 ; =0x00000548
	bl GFL_SndSEPlay
_021BB04A:
	ldr r0, _021BB124 ; =0x00000ACC
	ldr r1, [r4, r0]
	cmp r1, #4
	bne _021BB054
_021BB052:
	b _021BB18C
_021BB054:
	cmp r1, #1
	bhi _021BB06C
	add r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #1
	ble _021BB064
	mov r1, #0
	b _021BB06A
_021BB064:
	cmp r1, #0
	bge _021BB06A
	mov r1, #1
_021BB06A:
	b _021BB07E
_021BB06C:
	add r1, r1, #1
	str r1, [r4, r0]
	cmp r1, #3
	ble _021BB078
	mov r1, #2
	b _021BB07E
_021BB078:
	cmp r1, #2
	bge _021BB07E
	mov r1, #3
_021BB07E:
	ldr r0, _021BB124 ; =0x00000ACC
	str r1, [r4, r0]
	b _021BAF50
_021BB084:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _021BB10C
	ldr r5, _021BB124 ; =0x00000ACC
	ldr r0, [r4, r5]
	cmp r0, #4
	bne _021BB0BE
	add r0, r5, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021BB18C
	add r0, r5, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x2c
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r0, _021BB128 ; =0x0000054C
	bl GFL_SndSEPlay
	b _021BB184
_021BB0BE:
	sub r2, r5, #4
	ldr r2, [r4, r2]
	ldr r0, [r4, r5]
	lsl r2, r2, #2
	add r1, r4, #0
	add r2, r0, r2
	mov r0, #0xdc
	add r1, #0x28
	mul r0, r2
	add r0, r1, r0
	bl sub_021BACCC
	cmp r0, #0
	beq _021BB18C
	add r0, r5, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x2c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, _021BB128 ; =0x0000054C
	bl GFL_SndSEPlay
	add r5, #0x14
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB106
	ldr r0, [sp, #4]
	ldr r1, _021BB12C ; =ovy197_21bb794
_021BB104:
	b _021BB188
_021BB106:
	ldr r0, [sp, #4]
	ldr r1, _021BB130 ; =ovy197_21bb2b8
	b _021BB104
_021BB10C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #2
	tst r0, r1
	beq _021BB18C
	ldr r0, _021BB134 ; =0x00000551
	b _021BB138
	nop
_021BB11C: .word 0x00000AF4
_021BB120: .word 0x00000548
_021BB124: .word 0x00000ACC
_021BB128: .word 0x0000054C
_021BB12C: .word ovy197_21bb794
_021BB130: .word ovy197_21bb2b8
_021BB134: .word 0x00000551
_021BB138:
	bl GFL_SndSEPlay
	mov r5, #0xae
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB16E
	add r0, r5, #0
	sub r0, #0x24
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BB15A
	bl ovy197_21b8bcc
	mov r0, #0
	sub r5, #0x24
	str r0, [r4, r5]
_021BB15A:
	mov r5, #0xaf
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	mov r1, #0
	mov r6, #0
	bl sub_0204C124
	sub r5, #0x10
	str r6, [r4, r5]
	b _021BB18C
_021BB16E:
	add r0, r5, #0
	add r0, #0x14
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r5, #0x18
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
_021BB184:
	ldr r0, [sp, #4]
	ldr r1, _021BB29C ; =ovy197_21bbaac
_021BB188:
	bl sub_021B9678
_021BB18C:
	cmp r7, #0
	beq _021BB228
	add r0, r4, #0
	bl sub_021BAB80
	cmp r7, #0
	bge _021BB1AE
	ldr r1, _021BB2A0 ; =0x00000AC8
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021BB1A6
	sub r0, r1, #1
	b _021BB1A8
_021BB1A6:
	sub r0, r0, #1
_021BB1A8:
	str r0, [sp, #0x10]
	mov r0, #1
	b _021BB1C4
_021BB1AE:
	ble _021BB1C6
	ldr r1, _021BB2A0 ; =0x00000AC8
	sub r0, r0, #1
	ldr r1, [r4, r1]
	cmp r1, r0
	bge _021BB1BE
	add r0, r1, #1
	b _021BB1C0
_021BB1BE:
	mov r0, #0
_021BB1C0:
	str r0, [sp, #0x10]
	mov r0, #0
_021BB1C4:
	str r0, [sp, #0xc]
_021BB1C6:
	ldr r0, _021BB2A4 ; =0x00000642
	bl GFL_SndSEPlay
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_021BA840
	add r0, r4, #0
	mov r1, #0
	mov r6, #0
	bl ovy197_21ba2f0
	ldrh r0, [r4, #0x24]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl ovy197_21ba240
	ldr r5, _021BB2A0 ; =0x00000AC8
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [r4, r5]
	add r0, r5, #0
	add r0, #0x24
	ldr r0, [r4, r0]
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x2c
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	add r0, #0xe4
	strh r6, [r4, r0]
	mov r1, #1
	sub r5, #0x50
	ldr r0, [sp, #8]
	str r1, [r4, r5]
	str r1, [r0]
_021BB228:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _021BB298
	ldr r0, _021BB2A8 ; =0x00000ACC
	ldr r1, [r4, r0]
	cmp r1, #4
	bge _021BB256
	lsl r3, r1, #3
	ldr r1, _021BB2AC ; =0x021BE666
	add r0, #0x20
	ldrb r1, [r1, r3]
	lsl r2, r1, #3
	sub r2, #0x18
	add r1, sp, #0x18
	strh r2, [r1]
	ldr r2, _021BB2B0 ; =0x021BE667
	ldrb r2, [r2, r3]
	lsl r2, r2, #3
	sub r2, #8
	strh r2, [r1, #2]
	ldr r0, [r4, r0]
	mov r1, #0
	b _021BB266
_021BB256:
	mov r2, #0xb0
	add r1, sp, #0x18
	strh r2, [r1]
	mov r2, #0x98
	strh r2, [r1, #2]
	add r0, #0x20
	ldr r0, [r4, r0]
	mov r1, #0xb
_021BB266:
	bl sub_0204C488
	ldr r5, _021BB2B4 ; =0x00000AEC
	add r1, sp, #0x18
	ldr r0, [r4, r5]
	mov r2, #0
	mov r6, #0
	bl sub_0204C140
	add r0, r5, #0
	add r0, #0xc0
	strh r6, [r4, r0]
	mov r0, #1
	sub r5, #0x74
	add sp, #0x1c
	str r0, [r4, r5]
	pop {r4, r5, r6, r7, pc}
_021BB288:
	add r0, r4, #0
	bl ovy197_21ba85c
	cmp r0, #0
	beq _021BB298
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r0]
_021BB298:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BB29C: .word ovy197_21bbaac
_021BB2A0: .word 0x00000AC8
_021BB2A4: .word 0x00000642
_021BB2A8: .word 0x00000ACC
_021BB2AC: .word 0x021BE666
_021BB2B0: .word 0x021BE667
_021BB2B4: .word 0x00000AEC
	thumb_func_end ovy197_21bae54

	thumb_func_start ovy197_21bb2b8
ovy197_21bb2b8: ; 0x021BB2B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	add r4, r2, #0
	cmp r1, #7
	bhi _021BB37E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BB2D4: ; jump table
	.short _021BB2E4 - _021BB2D4 - 2 ; case 0
	.short _021BB318 - _021BB2D4 - 2 ; case 1
	.short _021BB364 - _021BB2D4 - 2 ; case 2
	.short _021BB462 - _021BB2D4 - 2 ; case 3
	.short _021BB486 - _021BB2D4 - 2 ; case 4
	.short _021BB494 - _021BB2D4 - 2 ; case 5
	.short _021BB4BA - _021BB2D4 - 2 ; case 6
	.short _021BB4BE - _021BB2D4 - 2 ; case 7
_021BB2E4:
	ldr r6, _021BB4E4 ; =0x00000ABC
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021BB306
	mov r0, #0x1d
	str r0, [sp]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r0, #0
	mov r1, #0xf
	bl ovy197_21b8a6c
	mov r1, #1
	mov r2, #0xd
	str r0, [r4, r6]
	bl ovy197_21b8dc4
_021BB306:
	ldr r0, _021BB4E4 ; =0x00000ABC
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, r0]
	mov r2, #0x25
	mov r3, #0
	bl ovy197_21b8cd0
	mov r0, #1
_021BB316:
	b _021BB45E
_021BB318:
	add r7, sp, #8
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x24
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	mov r0, #0x26
	str r0, [sp, #0x14]
	mov r0, #0x27
	str r0, [sp, #0x18]
	mov r0, #0x28
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #4
	strh r6, [r0, #0x20]
	strh r1, [r0, #0x22]
	mov r1, #0xd
	strh r1, [r0, #0x24]
	mov r1, #1
	strh r1, [r0, #0x26]
	ldrh r1, [r4, #0x24]
	add r0, r7, #0
	bl ovy197_21b8e00
	mov r1, #0x2b
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #2
	b _021BB316
_021BB364:
	mov r6, #0x2b
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	bl ovy197_21b8f3c
	add r1, r6, #0
	ldr r2, _021BB4E8 ; =0x00007FFF
	add r1, #0xec
	strh r2, [r4, r1]
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021BB380
_021BB37E:
	b _021BB4D4
_021BB380:
	cmp r0, #0
	bne _021BB42C
	add r0, r6, #0
	mov r1, #1
	add r0, #0x20
	str r1, [r4, r0]
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	ldr r1, _021BB4EC ; =0x021BE666
	lsl r0, r0, #3
	ldrb r1, [r1, r0]
	mov r7, #0
	lsl r2, r1, #3
	sub r2, #0x18
	add r1, sp, #4
	strh r2, [r1]
	ldr r2, _021BB4F0 ; =0x021BE667
	ldrb r0, [r2, r0]
	mov r2, #0
	lsl r0, r0, #3
	sub r0, #8
	strh r0, [r1, #2]
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl sub_0204C140
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r1, r6, #0
	add r0, r6, #0
	add r1, #8
	add r0, #0xc
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	add r1, r0, r1
	add r0, r6, #0
	add r0, #0x1e
	strh r1, [r4, r0]
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021BB3E8
	bl ovy197_21b8f0c
	str r7, [r4, r6]
_021BB3E8:
	ldr r6, _021BB4E4 ; =0x00000ABC
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021BB3F8
	bl ovy197_21b8bcc
	mov r0, #0
	str r0, [r4, r6]
_021BB3F8:
	ldr r6, _021BB4E4 ; =0x00000ABC
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021BB41A
	mov r0, #0x1d
	str r0, [sp]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r0, #0
	mov r1, #0xf
	bl ovy197_21b8b14
	mov r1, #1
	mov r2, #0xd
	str r0, [r4, r6]
	bl ovy197_21b8dc4
_021BB41A:
	ldr r0, _021BB4E4 ; =0x00000ABC
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, r0]
	mov r2, #0x2b
	mov r3, #0
	bl ovy197_21b8cd0
	mov r0, #6
	b _021BB316
_021BB42C:
	cmp r0, #1
	bne _021BB458
	add r1, r6, #0
	add r1, #0xc
	add r6, #8
	ldr r2, [r4, r1]
	ldr r1, [r4, r6]
	add r0, r4, #0
	lsl r1, r1, #2
	add r2, r2, r1
	mov r1, #0xdc
	add r0, #0x28
	mul r1, r2
	add r0, r0, r1
	bl sub_021BADF8
	cmp r0, #0
	beq _021BB454
	mov r0, #7
	b _021BB316
_021BB454:
	mov r0, #3
	b _021BB316
_021BB458:
	cmp r0, #2
	bne _021BB4D4
_021BB45C:
	mov r0, #5
_021BB45E:
	str r0, [r5]
	b _021BB4D4
_021BB462:
	mov r6, #0x2b
	lsl r6, r6, #6
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021BB474
	bl ovy197_21b8f0c
	mov r0, #0
	str r0, [r4, r6]
_021BB474:
	ldr r0, _021BB4E4 ; =0x00000ABC
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, r0]
	mov r2, #0x29
	mov r3, #1
	bl ovy197_21b8cd0
	mov r0, #4
	b _021BB316
_021BB486:
	ldr r0, _021BB4E4 ; =0x00000ABC
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021BB4D4
	b _021BB45C
_021BB494:
	ldr r5, _021BB4E4 ; =0x00000ABC
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB4A4
	bl ovy197_21b8bcc
	mov r0, #0
	str r0, [r4, r5]
_021BB4A4:
	mov r5, #0x2b
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BB4B6
	bl ovy197_21b8f0c
	mov r0, #0
	str r0, [r4, r5]
_021BB4B6:
	add r0, r6, #0
	b _021BB4BA
_021BB4BA:
	ldr r1, _021BB4F4 ; =ovy197_21bae54
	b _021BB4D0
_021BB4BE:
	mov r5, #0x2b
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl ovy197_21b8f0c
	mov r0, #0
	str r0, [r4, r5]
	ldr r1, _021BB4F8 ; =ovy197_21bb4fc
	add r0, r6, #0
_021BB4D0:
	bl sub_021B9678
_021BB4D4:
	ldr r0, _021BB4E4 ; =0x00000ABC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BB4E0
	bl ovy197_21b8c18
_021BB4E0:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BB4E4: .word 0x00000ABC
_021BB4E8: .word 0x00007FFF
_021BB4EC: .word 0x021BE666
_021BB4F0: .word 0x021BE667
_021BB4F4: .word ovy197_21bae54
	thumb_func_end ovy197_21bb2b8
_021BB4F8: .word ovy197_21bb4fc

	thumb_func_start ovy197_21bb4fc
ovy197_21bb4fc: ; 0x021BB4FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r5, _021BB774 ; =0x00000ACC
	add r6, r1, #0
	add r4, r2, #0
	sub r1, r5, #4
	ldr r1, [r4, r1]
	str r0, [sp, #4]
	ldr r0, [r4, r5]
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, [r6]
	cmp r0, #0xa
	bhi _021BB5BE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BB524: ; jump table
	.short _021BB53A - _021BB524 - 2 ; case 0
	.short _021BB54E - _021BB524 - 2 ; case 1
	.short _021BB5A2 - _021BB524 - 2 ; case 2
	.short _021BB5F0 - _021BB524 - 2 ; case 3
	.short _021BB660 - _021BB524 - 2 ; case 4
	.short _021BB69A - _021BB524 - 2 ; case 5
	.short _021BB6C4 - _021BB524 - 2 ; case 6
	.short _021BB702 - _021BB524 - 2 ; case 7
	.short _021BB726 - _021BB524 - 2 ; case 8
	.short _021BB738 - _021BB524 - 2 ; case 9
	.short _021BB748 - _021BB524 - 2 ; case 10
_021BB53A:
	sub r5, #0x10
	ldr r0, [r4, r5]
	ldr r1, [r4, #0x1c]
	mov r2, #0x2c
	mov r3, #1
	mov r5, #1
	bl ovy197_21b8cd0
	str r5, [r6]
	b _021BB764
_021BB54E:
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021BB5BE
	add r0, sp, #8
	mov r1, #0
	mov r2, #0x24
	mov r7, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	mov r0, #0x2d
	str r0, [sp, #0x14]
	mov r0, #0x2e
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x20]
	add r0, sp, #8
	strh r7, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	mov r1, #0xd
	strh r1, [r0, #0x20]
	mov r1, #1
	strh r1, [r0, #0x22]
	ldrh r1, [r4, #0x24]
	add r0, sp, #8
	bl ovy197_21b8e00
	sub r5, #0xc
	str r0, [r4, r5]
	mov r0, #2
_021BB59E:
	str r0, [r6]
	b _021BB764
_021BB5A2:
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl ovy197_21b8f3c
	add r7, r0, #0
	add r0, r5, #0
	ldr r1, _021BB778 ; =0x00007FFF
	add r0, #0xe0
	strh r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _021BB5C0
_021BB5BE:
	b _021BB764
_021BB5C0:
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl ovy197_21b8f0c
	add r1, r5, #0
	sub r1, #0xc
	mov r0, #0
	str r0, [r4, r1]
	cmp r7, #0
	bne _021BB5DA
	mov r0, #3
	b _021BB59E
_021BB5DA:
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BB5EE
	bl ovy197_21b8bcc
	sub r5, #0x10
	mov r0, #0
	str r0, [r4, r5]
_021BB5EE:
	b _021BB75C
_021BB5F0:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r3, [r0]
	ldr r2, _021BB77C ; =0xFFFF1FFF
	add r7, r0, #0
	and r3, r2
	lsr r2, r0, #0xd
	orr r2, r3
	str r2, [r0]
	mov r2, #3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x15
	ldr r1, _021BB780 ; =0x021BE666
	add r7, #0x48
	ldrb r3, [r1, r2]
	ldr r1, _021BB784 ; =0x021BE667
	ldrb r5, [r1, r2]
	mov r1, #0x3f
	ldrh r2, [r7]
	mov ip, r1
	bic r2, r1
	mov r1, #0x1e
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r7]
	lsl r1, r3, #0xb
	mov r7, #0xff
	add r3, #0xc
	lsl r7, r7, #8
	lsl r2, r3, #0x1b
	and r1, r7
	lsr r2, r2, #0x18
	orr r2, r1
	add r1, r0, #0
	add r1, #0x40
	strh r2, [r1]
	add r2, r5, #7
	lsl r1, r5, #0xb
	lsl r2, r2, #0x1b
	and r1, r7
	lsr r2, r2, #0x18
	orr r2, r1
	add r1, r0, #0
	add r1, #0x44
	strh r2, [r1]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, ip
	bic r2, r1
	mov r1, #0x1e
	orr r1, r2
	strh r1, [r0]
	mov r0, #4
	b _021BB59E
_021BB660:
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	mov r1, #0x1e
	lsl r0, r0, #4
	blx sub_0208D868
	add r2, r0, #0
	ldr r0, _021BB788 ; =0x04000050
	mov r1, #0x1e
	bl G2x_SetBlendBrightness_
	add r1, r5, #0
	add r1, #0x1c
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x1c
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x1c
	str r2, [r4, r1]
	cmp r0, #0x1e
	bls _021BB764
	mov r0, #0
	add r5, #0x1c
	str r0, [r4, r5]
	mov r0, #5
	b _021BB59E
_021BB69A:
	add r0, r4, #0
	bl ovy197_21ba9d0
	add r0, r4, #0
	mov r1, #1
	mov r7, #1
	bl ovy197_21ba2f0
	ldrh r0, [r4, #0x24]
	sub r3, r5, #4
	mov r1, #1
	str r0, [sp]
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r2, #0
	bl ovy197_21ba240
	sub r5, #0x54
	str r7, [r4, r5]
	mov r0, #6
	b _021BB59E
_021BB6C4:
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	mov r1, #0x1e
	lsl r0, r0, #4
	blx sub_0208D868
	add r3, r0, #0
	mov r2, #0x10
	ldr r0, _021BB788 ; =0x04000050
	mov r1, #0x1e
	sub r2, r2, r3
	bl G2x_SetBlendBrightness_
	add r1, r5, #0
	add r1, #0x1c
	add r0, r5, #0
	ldr r1, [r4, r1]
	add r0, #0x1c
	add r2, r1, #1
	add r1, r5, #0
	ldr r0, [r4, r0]
	add r1, #0x1c
	str r2, [r4, r1]
	cmp r0, #0x1e
	bls _021BB764
	mov r0, #0
	add r5, #0x1c
	str r0, [r4, r5]
	mov r0, #7
	b _021BB59E
_021BB702:
	ldr r0, [r4, #0xc]
	bl sub_0200A88C
	cmp r0, #0
	bne _021BB716
	sub r5, #0x14
	ldr r0, [r4, r5]
	mov r1, #1
	bl ovy197_21b90b8
_021BB716:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021BB77C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	mov r0, #8
	b _021BB59E
_021BB726:
	sub r5, #0x10
	ldr r0, [r4, r5]
	ldr r1, [r4, #0x1c]
	mov r2, #0x2a
	mov r3, #1
	bl ovy197_21b8cd0
	mov r0, #9
	b _021BB59E
_021BB738:
	sub r5, #0x10
	ldr r0, [r4, r5]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021BB764
	mov r0, #0xa
	b _021BB59E
_021BB748:
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BB75C
	bl ovy197_21b8bcc
	mov r0, #0
	sub r5, #0x10
	str r0, [r4, r5]
_021BB75C:
	ldr r0, [sp, #4]
	ldr r1, _021BB78C ; =ovy197_21bae54
	bl sub_021B9678
_021BB764:
	ldr r0, _021BB790 ; =0x00000ABC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BB770
	bl ovy197_21b8c18
_021BB770:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BB774: .word 0x00000ACC
_021BB778: .word 0x00007FFF
_021BB77C: .word 0xFFFF1FFF
_021BB780: .word 0x021BE666
_021BB784: .word 0x021BE667
_021BB788: .word 0x04000050
_021BB78C: .word ovy197_21bae54
_021BB790: .word 0x00000ABC
	thumb_func_end ovy197_21bb4fc

	thumb_func_start ovy197_21bb794
ovy197_21bb794: ; 0x021BB794
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, _021BBA84 ; =0x00000ACC
	add r6, r1, #0
	add r4, r2, #0
	sub r1, r5, #4
	ldr r1, [r4, r1]
	str r0, [sp, #8]
	ldr r0, [r4, r5]
	lsl r1, r1, #2
	add r7, r0, r1
	ldr r0, [r6]
	cmp r0, #6
	bls _021BB7B2
	b _021BBA80
_021BB7B2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BB7BE: ; jump table
	.short _021BB7CC - _021BB7BE - 2 ; case 0
	.short _021BB80C - _021BB7BE - 2 ; case 1
	.short _021BB912 - _021BB7BE - 2 ; case 2
	.short _021BB952 - _021BB7BE - 2 ; case 3
	.short _021BB9FC - _021BB7BE - 2 ; case 4
	.short _021BBA3E - _021BB7BE - 2 ; case 5
	.short _021BBA52 - _021BB7BE - 2 ; case 6
_021BB7CC:
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BB7E0
	bl ovy197_21b8bcc
	mov r0, #0
	sub r5, #0x10
	str r0, [r4, r5]
_021BB7E0:
	mov r0, #0xae
	lsl r0, r0, #4
	mov r1, #0
	str r1, [r4, r0]
	sub r2, r0, #2
	ldrh r2, [r4, r2]
	cmp r7, r2
	bne _021BB804
	add r0, #0x10
	ldr r0, [r4, r0]
	bl sub_0204C124
	ldr r0, [sp, #8]
	ldr r1, _021BBA88 ; =ovy197_21bae54
	bl sub_021B9678
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021BB804:
	mov r0, #1
	add sp, #0x1c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021BB80C:
	mov r0, #3
	and r0, r7
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0x12
	ldrh r0, [r4, r0]
	mov r3, #0x1e
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	ror r1, r3
	add r1, r2, r1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	sub r1, r5, #4
	ldr r2, [r4, r1]
	lsr r1, r7, #2
	cmp r2, r1
	bne _021BB83C
	mov r1, #1
	b _021BB83E
_021BB83C:
	mov r1, #0
_021BB83E:
	lsr r0, r0, #2
	mov r5, #1
	cmp r2, r0
	beq _021BB848
	mov r5, #0
_021BB848:
	mov r0, #0
	cmp r1, #0
	beq _021BB852
	mov r2, #1
	orr r0, r2
_021BB852:
	cmp r5, #0
	beq _021BB85A
	mov r2, #2
	orr r0, r2
_021BB85A:
	mov r4, #1
	lsl r4, r4, #0x1a
	ldr r3, [r4]
	ldr r2, _021BBA8C ; =0xFFFF1FFF
	lsl r0, r0, #0xd
	and r2, r3
	orr r0, r2
	str r0, [r4]
	cmp r1, #0
	beq _021BB8B4
	ldr r0, [sp, #0x18]
	add r7, r4, #0
	lsl r1, r0, #3
	ldr r0, _021BBA90 ; =0x021BE666
	add r7, #0x48
	ldrb r3, [r0, r1]
	ldr r0, _021BBA94 ; =0x021BE667
	ldrb r2, [r0, r1]
	ldrh r1, [r7]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x1e
	orr r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r7]
	lsl r1, r3, #0xb
	mov r0, #0xff
	add r3, #0xc
	lsl r0, r0, #8
	lsl r3, r3, #0x1b
	and r1, r0
	lsr r3, r3, #0x18
	orr r3, r1
	add r1, r4, #0
	add r1, #0x40
	strh r3, [r1]
	lsl r1, r2, #0xb
	and r0, r1
	add r1, r2, #7
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	orr r0, r1
	add r4, #0x44
	strh r0, [r4]
_021BB8B4:
	cmp r5, #0
	beq _021BB8FC
	ldr r0, [sp, #0x14]
	ldr r3, _021BBA98 ; =0xFFFFC0FF
	lsl r1, r0, #3
	ldr r0, _021BBA90 ; =0x021BE666
	ldrb r2, [r0, r1]
	ldr r0, _021BBA94 ; =0x021BE667
	ldrb r1, [r0, r1]
	ldr r0, _021BBA9C ; =0x04000048
	ldrh r4, [r0]
	and r4, r3
	mov r3, #0x1e
	lsl r3, r3, #8
	orr r4, r3
	lsr r3, r0, #0xd
	orr r3, r4
	strh r3, [r0]
	lsl r4, r2, #0xb
	mov r3, #0xff
	add r2, #0xc
	lsl r3, r3, #8
	lsl r2, r2, #0x1b
	and r4, r3
	lsr r2, r2, #0x18
	orr r4, r2
	sub r2, r0, #6
	strh r4, [r2]
	lsl r2, r1, #0xb
	add r1, r1, #7
	lsl r1, r1, #0x1b
	and r2, r3
	lsr r1, r1, #0x18
	orr r1, r2
	sub r0, r0, #2
	strh r1, [r0]
_021BB8FC:
	ldr r1, _021BBAA0 ; =0x0400004A
	mov r0, #0x3f
	ldrh r2, [r1]
	add sp, #0x1c
	bic r2, r0
	mov r0, #0x1e
	orr r0, r2
	strh r0, [r1]
	mov r0, #2
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021BB912:
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	mov r1, #0x1e
	lsl r0, r0, #4
	blx sub_0208D868
	add r2, r0, #0
	ldr r0, _021BBAA4 ; =0x04000050
	mov r1, #0x1e
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	add r0, #0x1c
	ldr r2, [r4, r0]
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x1c
	str r1, [r4, r0]
	cmp r2, #0x1e
	bhi _021BB944
	b _021BBA80
_021BB944:
	mov r0, #0
	add r5, #0x1c
	str r0, [r4, r5]
	mov r0, #3
	add sp, #0x1c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021BB952:
	add r2, r5, #0
	add r2, #0x12
	ldrh r2, [r4, r2]
	add r0, r4, #0
	add r1, r7, #0
	bl ovy197_21baa90
	mov r0, #0x67
	lsl r0, r0, #4
	bl GFL_SndSEPlay
	add r0, r5, #0
	add r0, #0x12
	ldrh r1, [r4, r0]
	lsr r0, r1, #2
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1e
	str r0, [sp, #0xc]
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #0x10]
	sub r0, r5, #4
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	mov r5, #1
	cmp r1, r0
	beq _021BB98E
	mov r5, #0
_021BB98E:
	lsr r0, r7, #2
	cmp r1, r0
	bne _021BB9BE
	ldr r7, _021BBA84 ; =0x00000ACC
	add r0, r4, #0
	ldr r2, [r4, r7]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ovy197_21ba700
	ldr r0, [r4, r7]
	sub r3, r7, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #0x24]
	mov r1, #1
	mov r2, #0
	str r0, [sp, #4]
	ldr r3, [r4, r3]
	add r0, r4, #0
	bl ovy197_21ba314
_021BB9BE:
	cmp r5, #0
	beq _021BB9E8
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	lsl r2, r2, #0x10
	mov r1, #1
	lsr r2, r2, #0x10
	bl ovy197_21ba700
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r4, #0x24]
	mov r1, #1
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl ovy197_21ba314
_021BB9E8:
	mov r0, #3
	bl sub_02044F90
	ldr r0, _021BBAA8 ; =0x00000A78
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #4
	add sp, #0x1c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021BB9FC:
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	mov r1, #0x1e
	lsl r0, r0, #4
	blx sub_0208D868
	add r3, r0, #0
	mov r2, #0x10
	ldr r0, _021BBAA4 ; =0x04000050
	mov r1, #0x1e
	sub r2, r2, r3
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	add r0, #0x1c
	ldr r2, [r4, r0]
	add r0, r5, #0
	add r0, #0x1c
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x1c
	str r1, [r4, r0]
	cmp r2, #0x1e
	bls _021BBA80
	mov r0, #0
	add r5, #0x1c
	str r0, [r4, r5]
	mov r0, #5
	add sp, #0x1c
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021BBA3E:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021BBA8C ; =0xFFFF1FFF
	add sp, #0x1c
	and r0, r1
	str r0, [r2]
	mov r0, #6
	str r0, [r6]
	pop {r4, r5, r6, r7, pc}
_021BBA52:
	add r0, r5, #0
	mov r6, #0
	add r0, #0x14
	str r6, [r4, r0]
	add r0, r5, #0
	add r0, #0x24
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BBA78
	bl ovy197_21b8bcc
	sub r5, #0x10
	str r6, [r4, r5]
_021BBA78:
	ldr r0, [sp, #8]
	ldr r1, _021BBA88 ; =ovy197_21bae54
	bl sub_021B9678
_021BBA80:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BBA84: .word 0x00000ACC
_021BBA88: .word ovy197_21bae54
_021BBA8C: .word 0xFFFF1FFF
_021BBA90: .word 0x021BE666
_021BBA94: .word 0x021BE667
_021BBA98: .word 0xFFFFC0FF
_021BBA9C: .word 0x04000048
_021BBAA0: .word 0x0400004A
_021BBAA4: .word 0x04000050
_021BBAA8: .word 0x00000A78
	thumb_func_end ovy197_21bb794

	thumb_func_start ovy197_21bbaac
ovy197_21bbaac: ; 0x021BBAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0xa
	bhi _021BBB3A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BBAC8: ; jump table
	.short _021BBADE - _021BBAC8 - 2 ; case 0
	.short _021BBAE2 - _021BBAC8 - 2 ; case 1
	.short _021BBAFA - _021BBAC8 - 2 ; case 2
	.short _021BBB2E - _021BBAC8 - 2 ; case 3
	.short _021BBB80 - _021BBAC8 - 2 ; case 4
	.short _021BBBCA - _021BBAC8 - 2 ; case 5
	.short _021BBBDC - _021BBAC8 - 2 ; case 6
	.short _021BBC10 - _021BBAC8 - 2 ; case 7
	.short _021BBC20 - _021BBAC8 - 2 ; case 8
	.short _021BBC44 - _021BBAC8 - 2 ; case 9
	.short _021BBC52 - _021BBAC8 - 2 ; case 10
_021BBADE:
	mov r0, #1
_021BBAE0:
	b _021BBBD8
_021BBAE2:
	ldr r0, [r4]
	cmp r0, #0
	bne _021BBAEA
	b _021BBBAA
_021BBAEA:
	ldr r0, [r4, #0xc]
	bl sub_0200A7E4
	cmp r0, #0
	beq _021BBAF6
	b _021BBBAA
_021BBAF6:
	mov r0, #2
	b _021BBAE0
_021BBAFA:
	ldr r6, _021BBC78 ; =0x00000ABC
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021BBB1C
	mov r0, #0x1d
	str r0, [sp]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r0, #0
	mov r1, #0xf
	bl ovy197_21b8a6c
	mov r1, #1
	mov r2, #0xd
	str r0, [r4, r6]
	bl ovy197_21b8dc4
_021BBB1C:
	ldr r0, _021BBC78 ; =0x00000ABC
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, r0]
	mov r2, #0xe
	mov r3, #1
	bl ovy197_21b8cd0
	mov r0, #3
	b _021BBAE0
_021BBB2E:
	ldr r7, _021BBC78 ; =0x00000ABC
	ldr r0, [r4, r7]
	bl sub_021B8DC0
	cmp r0, #0
	bne _021BBB3C
_021BBB3A:
	b _021BBC68
_021BBB3C:
	add r0, sp, #8
	mov r1, #0
	mov r2, #0x24
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x1c]
	mov r1, #0xf
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x10]
	mov r0, #0x2d
	str r0, [sp, #0x14]
	mov r0, #0x2e
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x20]
	add r0, sp, #8
	strh r6, [r0, #0x1c]
	strh r1, [r0, #0x1e]
	mov r1, #0xd
	strh r1, [r0, #0x20]
	mov r1, #1
	strh r1, [r0, #0x22]
	ldrh r1, [r4, #0x24]
	add r0, sp, #8
	bl ovy197_21b8e00
	add r1, r7, #4
	str r0, [r4, r1]
	mov r0, #4
	b _021BBAE0
_021BBB80:
	mov r7, #0x2b
	lsl r7, r7, #6
	ldr r0, [r4, r7]
	bl ovy197_21b8f3c
	add r6, r0, #0
	add r0, r7, #0
	ldr r1, _021BBC7C ; =0x00007FFF
	add r0, #0xec
	strh r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021BBC68
	ldr r0, [r4, r7]
	bl ovy197_21b8f0c
	mov r0, #0
	str r0, [r4, r7]
	cmp r6, #0
	bne _021BBBAE
_021BBBAA:
	mov r0, #5
	b _021BBAE0
_021BBBAE:
	sub r0, r7, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BBBC0
	bl ovy197_21b8bcc
	sub r1, r7, #4
	mov r0, #0
	str r0, [r4, r1]
_021BBBC0:
	ldr r0, [sp, #4]
	ldr r1, _021BBC80 ; =ovy197_21bae54
	bl sub_021B9678
	b _021BBC68
_021BBBCA:
	ldr r0, _021BBC84 ; =0x00000AD4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BBBD6
	mov r0, #6
	b _021BBAE0
_021BBBD6:
	mov r0, #0xa
_021BBBD8:
	str r0, [r5]
	b _021BBC68
_021BBBDC:
	ldr r6, _021BBC78 ; =0x00000ABC
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021BBBFE
	mov r0, #0x1d
	str r0, [sp]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r0, #0
	mov r1, #0xf
	bl ovy197_21b8a6c
	mov r1, #1
	mov r2, #0xd
	str r0, [r4, r6]
	bl ovy197_21b8dc4
_021BBBFE:
	ldr r0, _021BBC78 ; =0x00000ABC
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, r0]
	mov r2, #0x24
	mov r3, #2
	bl ovy197_21b8cd0
	mov r0, #7
	b _021BBAE0
_021BBC10:
	ldr r0, _021BBC78 ; =0x00000ABC
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021BBC68
	mov r0, #8
	b _021BBAE0
_021BBC20:
	ldr r0, _021BBC88 ; =0x00000AAC
	mov r6, #1
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BBC34
	bl sub_021BCDDC
	cmp r0, #0
	bne _021BBC34
	mov r6, #0
_021BBC34:
	cmp r6, #0
	beq _021BBC68
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x20]
	bl sub_0200A9D4
	mov r0, #9
	b _021BBAE0
_021BBC44:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x20]
	bl sub_0200A9F4
	cmp r0, #2
	bne _021BBC68
	b _021BBBD6
_021BBC52:
	ldr r5, _021BBC78 ; =0x00000ABC
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BBC62
	bl ovy197_21b8bcc
	mov r0, #0
	str r0, [r4, r5]
_021BBC62:
	ldr r0, [sp, #4]
	bl sub_021B9680
_021BBC68:
	ldr r0, _021BBC78 ; =0x00000ABC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BBC74
	bl ovy197_21b8c18
_021BBC74:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BBC78: .word 0x00000ABC
_021BBC7C: .word 0x00007FFF
_021BBC80: .word ovy197_21bae54
_021BBC84: .word 0x00000AD4
_021BBC88: .word 0x00000AAC
	thumb_func_end ovy197_21bbaac

	thumb_func_start ovy197_21bbc8c
ovy197_21bbc8c: ; 0x021BBC8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021BBCA4
	cmp r0, #1
	beq _021BBCDC
	cmp r0, #2
	beq _021BBCEE
	b _021BBD06
_021BBCA4:
	ldr r6, _021BBD14 ; =0x00000ABC
	ldr r0, [r4, r6]
	cmp r0, #0
	bne _021BBCBE
	mov r0, #0x1d
	str r0, [sp]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r0, #0
	mov r1, #0xf
	bl ovy197_21b8a6c
	str r0, [r4, r6]
_021BBCBE:
	ldr r7, _021BBD14 ; =0x00000ABC
	mov r1, #1
	ldr r0, [r4, r7]
	mov r2, #0xd
	mov r6, #1
	bl ovy197_21b8dc4
	ldr r0, [r4, r7]
	ldr r1, [r4, #0x1c]
	mov r2, #0xd
	mov r3, #1
	bl ovy197_21b8cd0
	str r6, [r5]
	b _021BBD06
_021BBCDC:
	ldr r0, _021BBD14 ; =0x00000ABC
	ldr r0, [r4, r0]
	bl sub_021B8DC0
	cmp r0, #0
	beq _021BBD06
	mov r0, #2
	str r0, [r5]
	b _021BBD06
_021BBCEE:
	ldr r5, _021BBD14 ; =0x00000ABC
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BBCFE
	bl ovy197_21b8bcc
	mov r0, #0
	str r0, [r4, r5]
_021BBCFE:
	ldr r1, _021BBD18 ; =ovy197_21bae54
	add r0, r6, #0
	bl sub_021B9678
_021BBD06:
	ldr r0, _021BBD14 ; =0x00000ABC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BBD12
	bl ovy197_21b8c18
_021BBD12:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BBD14: .word 0x00000ABC
_021BBD18: .word ovy197_21bae54
	thumb_func_end ovy197_21bbc8c

	thumb_func_start ovy197_21bbd1c
ovy197_21bbd1c: ; 0x021BBD1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x60
	add r5, r0, #0
	add r6, r3, #0
	blx MI_CpuFill8
	add r3, sp, #0x18
	ldrh r3, [r3, #4]
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0204B37C
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	ldr r4, [r0, #0xc]
	lsl r0, r6, #5
	add r0, r4, r0
	add r1, #0x40
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, sp, #0x18
	ldrb r0, [r0]
	add r5, #0x20
	add r1, r5, #0
	lsl r0, r0, #5
	add r0, r4, r0
	mov r2, #0x20
	blx MI_CpuCopy8
	add r0, r7, #0
	bl sub_0203A24C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21bbd1c

	thumb_func_start ovy197_21bbd6c
ovy197_21bbd6c: ; 0x021BBD6C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x20
	str r0, [sp]
	add r0, r5, #0
	add r4, r2, #0
	add r0, #0x40
	str r0, [sp, #4]
	add r0, r1, #0
	add r2, r3, #0
	add r1, r5, #0
	add r3, r4, #0
	bl ovy197_21b9918
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21bbd6c

	thumb_func_start ovy197_21bbd90
ovy197_21bbd90: ; 0x021BBD90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	add r5, r0, #0
	ldr r0, _021BBFB8 ; =0x00000D01
	add r6, r1, #0
	str r0, [sp]
	ldr r3, _021BBFBC ; =0x021BE9B0
	add r0, r6, #0
	mov r1, #0xd0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r3, r4, #0
	ldr r1, [r5, #0x14]
	add r0, #0x88
	str r1, [r0]
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x94
	strh r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #4]
	add r0, #0x96
	strh r1, [r0]
	add r7, r5, #0
	add r3, #0xa0
	mov r2, #6
_021BBDC8:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021BBDC8
	ldr r0, [r5]
	cmp r0, #4
	bhs _021BBDE8
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0]
	mov r1, #1
	b _021BBDFA
_021BBDE8:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x98
	str r1, [r0]
	mov r1, #0
_021BBDFA:
	add r0, r4, #0
	add r0, #0x84
	ldr r3, _021BBFC0 ; =0x021BE794
	str r1, [r0]
	add r2, sp, #0x2c
	mov r7, #0xf
_021BBE06:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021BBE06
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	add r3, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	add r3, #0xa4
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, sp, #0x2c
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r2, #5
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r3, [r3]
	mov r0, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ovy197_21b8f80
	str r0, [r4]
	mov r0, #0x21
	add r1, r6, #0
	bl sub_0204AA30
	add r2, r4, #0
	ldr r3, [r5, #0x10]
	str r6, [sp]
	add r2, #0x98
	lsl r3, r3, #0x15
	ldr r2, [r2]
	add r7, r0, #0
	mov r1, #3
	lsr r3, r3, #0x10
	bl sub_0204BBA0
	str r0, [r4, #4]
	add r0, r7, #0
	mov r1, #0x21
	mov r2, #0x24
	add r3, r6, #0
	bl sub_0204BDE0
	str r0, [r4, #0xc]
	add r3, r4, #0
	str r6, [sp]
	add r3, #0x98
	ldr r3, [r3]
	add r0, r7, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_0204B81C
	str r0, [r4, #8]
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, sp, #0x24
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #0xd8
	add r7, sp, #0x1c
	strh r0, [r7, #8]
	mov r0, #0x16
	strh r0, [r7, #0xa]
	add r0, sp, #0x24
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0xc]
	bl sub_0204C040
	mov r1, #0
	str r0, [r4, #0x1c]
	bl sub_0204C318
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C124
	add r0, r6, #0
	bl sub_02033E24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r1, r4, #0
	add r1, #0x98
	ldr r1, [r1]
	mov r2, #0
	str r1, [sp, #0xc]
	ldr r1, [r5, #0x14]
	mov r3, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x10
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r1, #1
	str r0, [sp, #0x18]
	bl sub_02033E34
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	mov r0, #1
	mov r2, #0
	mov r3, #0
	bl sub_02033EF4
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	mov r2, #0
	mov r3, #0
	bl sub_02033E78
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	bl sub_0204AB0C
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	mov r0, #0xb8
	strh r0, [r7]
	mov r0, #0x70
	strh r0, [r7, #2]
	ldr r1, [r5]
	mov r0, #3
	and r0, r1
	strb r0, [r7, #7]
	add r0, r4, #0
	ldrb r1, [r7, #7]
	add r0, #0x8c
	str r1, [r0]
	ldr r1, [r5, #4]
	mov r0, #3
	and r1, r0
	add r0, r4, #0
	add r0, #0x90
	str r1, [r0]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x18]
	bl sub_0204C040
	str r0, [r4, #0x20]
	mov r1, #2
	bl sub_0204C244
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_0204C318
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	nop
_021BBFB8: .word 0x00000D01
_021BBFBC: .word 0x021BE9B0
_021BBFC0: .word 0x021BE794
	thumb_func_end ovy197_21bbd90

	thumb_func_start ovy197_21bbfc4
ovy197_21bbfc4: ; 0x021BBFC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_0204C108
	ldr r0, [r4, #0x14]
	bl sub_0204B98C
	ldr r0, [r4, #0x18]
	bl sub_0204BE64
	ldr r0, [r4, #0x10]
	bl sub_0204BCD0
	ldr r0, [r4, #0x1c]
	bl sub_0204C108
	ldr r0, [r4, #8]
	bl sub_0204B98C
	ldr r0, [r4, #0xc]
	bl sub_0204BE64
	ldr r0, [r4, #4]
	bl sub_0204BCD0
	ldr r0, [r4]
	bl ovy197_21b9048
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bbfc4

	thumb_func_start sub_021BC008
sub_021BC008: ; 0x021BC008
	ldr r0, [r0]
	ldr r3, _021BC010 ; =ovy197_21b9090
	bx r3
	nop
_021BC010: .word ovy197_21b9090
	thumb_func_end sub_021BC008

	thumb_func_start ovy197_21bc014
ovy197_21bc014: ; 0x021BC014
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x110
	str r0, [sp, #0x10]
	ldr r0, _021BC360 ; =0x00000DD6
	mov r5, #0x52
	add r7, r3, #0
	add r6, r2, #0
	str r0, [sp]
	lsl r5, r5, #2
	add r4, r1, #0
	ldr r3, _021BC364 ; =0x021BE9B0
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0203A1FC
	str r0, [sp, #0x48]
	mov r1, #0
	add r2, r5, #0
	blx MI_CpuFill8
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, [sp, #0x48]
	sub r1, #0x30
	strh r7, [r0, r1]
	ldr r1, [sp, #0x10]
	sub r2, #0x28
	str r1, [r0, r2]
	add r1, r5, #0
	sub r1, #0x2c
	str r4, [r0, r1]
	sub r5, #0x24
	str r6, [r0, r5]
	add r5, sp, #0x74
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x24
	blx MI_CpuFill8
	mov r0, #0
	str r0, [sp, #0x74]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x7c]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r2, r5, #0
	str r0, [sp, #0x80]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r3, r7, #0
	str r0, [sp, #0x84]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	str r0, [sp, #0x88]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	str r0, [sp, #0x8c]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x94]
	bl ovy197_21babbc
	ldr r5, _021BC368 ; =0x021BE80C
	add r3, sp, #0x98
	mov r2, #0xf
_021BC0AC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021BC0AC
	ldr r0, _021BC36C ; =0x00007FFF
	add r1, r7, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	mov r0, #0x25
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r5, #0x25
	bl GFL_StrBufCreate
	ldr r1, [sp, #0x48]
	str r0, [sp, #0xb8]
	add r5, #0xfb
	ldr r1, [r1, r5]
	mov r2, #0x24
	add r1, #0x60
	mov r5, #0x24
	bl sub_02048658
	ldr r0, [sp, #0x48]
	add r5, #0xfc
	ldr r0, [r0, r5]
	add r1, r0, #0
	add r1, #0xb4
	ldrb r1, [r1]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	beq _021BC0FC
	add r0, #0xb2
	ldrb r1, [r0]
	ldr r0, _021BC370 ; =0x0000014E
	add r0, r1, r0
	b _021BC102
_021BC0FC:
	add r0, #0xb2
	ldrb r0, [r0]
	add r0, #0x4e
_021BC102:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0204898C
	str r0, [sp, #0xd0]
	mov r0, #0x80
	add r1, r7, #0
	mov r5, #0x80
	bl GFL_StrBufCreate
	str r0, [sp, #0x100]
	mov r1, #0x4b
	str r1, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	add r5, #0xa0
	ldr r0, [r0, r5]
	mov r1, #0x4b
	add r0, #0xac
	ldr r5, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0204898C
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xcc
	asr r2, r5, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0]
	mov r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #4
	bl StringSetNumber
	asr r2, r5, #8
	lsl r2, r2, #0x18
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r1, #1
	lsr r2, r2, #0x18
	mov r3, #2
	bl StringSetNumber
	lsl r2, r5, #0x18
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r1, #2
	lsr r2, r2, #0x18
	mov r3, #2
	bl StringSetNumber
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	ldr r1, [sp, #0x100]
	ldr r2, [sp, #0x50]
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4]
	add r1, r7, #0
	bl ovy197_21b9100
	mov r2, #0x4b
	ldr r1, [sp, #0x48]
	add r2, #0xf9
	str r0, [r1, r2]
	mov r1, #0x4b
	add r4, #0xc8
	ldr r0, [sp, #0x48]
	add r1, #0xf9
	ldr r0, [r0, r1]
	ldr r2, [r4]
	add r1, sp, #0x98
	bl ovy197_21b91b4
	ldr r0, [sp, #0xb8]
	bl GFL_StrBufFree
	ldr r0, [sp, #0xd0]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x100]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x50]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x48]
	bl sub_021BADEC
	cmp r0, #1
	beq _021BC1DC
	b _021BC72A
_021BC1DC:
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x48]
	add r1, #0xd5
	ldr r4, [r0, r1]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	add r0, #0xd9
	str r0, [sp, #0x4c]
	ldr r0, [r1, r0]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	str r0, [sp, #0x24]
	ldr r0, [r4]
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0x1a]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #0x38]
	add r0, r4, #0
	add r0, #0x43
	ldrb r1, [r0]
	add r0, sp, #0x64
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	strb r1, [r0, #1]
	add r1, r4, #0
	add r1, #0x45
	ldrb r1, [r1]
	strb r1, [r0, #2]
	add r1, r4, #0
	add r1, #0x47
	ldrb r1, [r1]
	strb r1, [r0, #3]
	add r1, r4, #0
	add r1, #0x48
	ldrb r1, [r1]
	strb r1, [r0, #4]
	add r1, r4, #0
	add r1, #0x46
	ldrb r1, [r1]
	strb r1, [r0, #5]
	ldrh r1, [r4, #0x12]
	strh r1, [r0, #6]
	ldrh r1, [r4, #0x14]
	strh r1, [r0, #8]
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0xa]
	ldrh r1, [r4, #0x18]
	strh r1, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #1
	bne _021BC27E
	ldr r1, _021BC374 ; =0x00000289
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bhi _021BC27E
	cmp r0, #0
	beq _021BC27E
	ldr r0, [sp, #0x24]
	cmp r0, #0x64
	bhi _021BC27E
	ldrh r0, [r4, #0x10]
	sub r1, #0xb
	cmp r0, r1
	bls _021BC280
_021BC27E:
	b _021BC660
_021BC280:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021BC294
	mov r0, #0x64
	bl sub_02005748
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
_021BC294:
	ldr r0, [r4]
	cmp r0, #0
	bne _021BC2A6
	ldr r0, [sp, #0x44]
	bl sub_0201736C
	bl sub_02008BD0
	str r0, [sp, #0x14]
_021BC2A6:
	ldr r0, [sp, #0x34]
	cmp r0, #0xff
	bne _021BC2B0
	mov r0, #2
	str r0, [sp, #0x34]
_021BC2B0:
	mov r5, #0
	mov r7, #0x20
	add r6, sp, #0x64
_021BC2B6:
	ldrb r0, [r6, r5]
	cmp r0, #0xff
	bne _021BC2C4
	add r0, r7, #0
	bl sub_02005748
	strb r0, [r6, r5]
_021BC2C4:
	add r5, r5, #1
	cmp r5, #6
	blt _021BC2B6
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r3, #0
	bl sub_0201C2CC
	add r1, sp, #0x64
	add r5, r0, #0
	ldrb r0, [r1, #5]
	ldrb r2, [r1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	mov ip, r0
	ldrb r0, [r1, #4]
	lsl r0, r0, #0x1b
	lsr r3, r0, #7
	ldrb r0, [r1, #3]
	lsl r0, r0, #0x1b
	lsr r7, r0, #0xc
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #1]
	lsl r0, r0, #0x1b
	lsr r6, r0, #0x11
	mov r0, #0x1f
	lsl r1, r1, #0x1b
	and r0, r2
	lsr r1, r1, #0x16
	orr r0, r1
	orr r0, r6
	orr r0, r7
	add r1, r3, #0
	orr r1, r0
	mov r0, ip
	add r6, r0, #0
	ldr r0, [sp, #0x38]
	orr r6, r1
	cmp r0, #4
	bne _021BC32E
	mov r0, #3
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
_021BC32E:
	ldr r0, [sp, #0x38]
	cmp r0, #3
	bhi _021BC356
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BC340: ; jump table
	.short _021BC348 - _021BC340 - 2 ; case 0
	.short _021BC34C - _021BC340 - 2 ; case 1
	.short _021BC350 - _021BC340 - 2 ; case 2
	.short _021BC352 - _021BC340 - 2 ; case 3
_021BC348:
	mov r1, #0
	b _021BC358
_021BC34C:
	mov r1, #1
	b _021BC358
_021BC350:
	b _021BC348
_021BC352:
	mov r1, #2
	b _021BC358
_021BC356:
	b _021BC522
_021BC358:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021BC378
	b _021BC3C2
	.align 2, 0
_021BC360: .word 0x00000DD6
_021BC364: .word 0x021BE9B0
_021BC368: .word 0x021BE80C
_021BC36C: .word 0x00007FFF
_021BC370: .word 0x0000014E
_021BC374: .word 0x00000289
_021BC378:
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	bne _021BC39E
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x30]
	lsl r1, r1, #0x10
	ldrb r2, [r4, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x34]
	lsr r1, r1, #0x10
	bl sub_0201D6F8
	str r0, [sp, #0x2c]
	b _021BC3C8
_021BC39E:
	cmp r0, #1
	bne _021BC3A8
	str r1, [sp]
	mov r0, #2
	b _021BC3B0
_021BC3A8:
	cmp r0, #2
	bne _021BC3C8
	str r1, [sp]
	mov r0, #1
_021BC3B0:
	str r0, [sp, #4]
	ldr r1, [sp, #0x28]
	ldrb r2, [r4, #0x1c]
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x34]
	lsr r1, r1, #0x10
	bl sub_0201D6F8
_021BC3C2:
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
_021BC3C8:
	ldr r0, [sp, #0x2c]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldrh r1, [r4, #0x1a]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	bl sub_0201C464
	ldrh r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #6
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201CFD8
	mov r7, #0
_021BC3F4:
	add r0, sp, #0x68
	lsl r1, r7, #1
	add r0, #2
	ldrh r6, [r0, r1]
	cmp r6, #0
	beq _021BC41E
	mov r0, #0x23
	lsl r0, r0, #4
	cmp r6, r0
	bhs _021BC41E
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201D0BC
	ldr r1, _021BC730 ; =0x0000FFFF
	cmp r0, r1
	bne _021BC41E
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201D124
_021BC41E:
	add r7, r7, #1
	cmp r7, #4
	blt _021BC3F4
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021BC43A
	ldr r0, [sp, #0x38]
	cmp r0, #2
	bne _021BC43A
	ldrb r2, [r4, #0x1c]
	ldr r1, [sp, #0x28]
	add r0, r5, #0
	bl sub_0201DA94
_021BC43A:
	ldrb r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #0x6f
	bl sub_0201CD1C
	ldrh r2, [r4, #0xe]
	cmp r2, #0
	beq _021BC454
	cmp r2, #0x19
	bhi _021BC454
	add r0, r5, #0
	mov r1, #0x98
	b _021BC45A
_021BC454:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #4
_021BC45A:
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x3c
	ldrb r2, [r0]
	cmp r2, #0
	beq _021BC470
	add r0, r5, #0
	mov r1, #0x99
	bl sub_0201CD1C
_021BC470:
	add r2, r4, #0
	add r2, #0x3d
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x13
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x3e
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x14
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x3f
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x40
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x16
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x17
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x18
	bl sub_0201CD1C
	mov r6, #0
	mov r7, #1
_021BC4C8:
	add r0, r7, #0
	ldrh r1, [r4, #0xc]
	lsl r0, r6
	tst r0, r1
	beq _021BC4E0
	ldr r1, _021BC734 ; =0x021BE6B8
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0201CD1C
_021BC4E0:
	add r6, r6, #1
	cmp r6, #0xf
	blo _021BC4C8
	ldr r2, [r4, #4]
	cmp r2, #0
	bne _021BC4F6
	ldr r2, _021BC738 ; =0x0208FF7C
	add r0, r5, #0
	mov r1, #0x77
	ldrb r2, [r2]
	b _021BC4FA
_021BC4F6:
	add r0, r5, #0
	mov r1, #0x77
_021BC4FA:
	bl sub_0201CD1C
	ldrb r2, [r4, #0x1d]
	cmp r2, #0
	bne _021BC50E
	ldr r2, _021BC73C ; =0x0208FF80
	add r0, r5, #0
	mov r1, #0xc
	ldrb r2, [r2]
	b _021BC512
_021BC50E:
	add r0, r5, #0
	mov r1, #0xc
_021BC512:
	bl sub_0201CD1C
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	bne _021BC526
_021BC51C:
	add r0, r5, #0
	bl sub_0203A24C
_021BC522:
	mov r6, #0
	b _021BC660
_021BC526:
	bl sub_020486F4
	ldrh r1, [r4, #0x1e]
	cmp r1, r0
	beq _021BC53C
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x74
	add r2, #0x1e
	bl sub_0201CD1C
_021BC53C:
	add r0, r4, #0
	add r0, #0x34
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _021BC550
	mov r0, #0x19
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_021BC550:
	add r0, r5, #0
	mov r1, #0x70
	bl sub_0201CD1C
	ldrh r2, [r4, #0x38]
	add r0, r5, #0
	mov r1, #0x95
	bl sub_0201CD1C
	ldrh r2, [r4, #0x3a]
	add r0, r5, #0
	mov r1, #0x96
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	bne _021BC578
	b _021BC51C
_021BC578:
	bl sub_020486F4
	add r1, r4, #0
	add r1, #0x4a
	ldrh r1, [r1]
	cmp r1, r0
	bne _021BC598
	ldr r0, [sp, #0x44]
	bl sub_0201736C
	bl sub_02008B94
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x8e
	b _021BC5A0
_021BC598:
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x8e
	add r2, #0x4a
_021BC5A0:
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #2
	bhi _021BC5B0
	b _021BC5BC
_021BC5B0:
	ldr r0, [sp, #0x44]
	bl sub_0201736C
	bl sub_02008BF0
	add r2, r0, #0
_021BC5BC:
	add r0, r5, #0
	mov r1, #0x9a
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021BC5FE
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #1
	bl sub_0201CD1C
	ldr r0, _021BC740 ; =0x0209A434
	ldr r1, _021BC744 ; =0x0000028A
	ldr r0, [r0]
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x73
	add r2, r6, #0
	bl sub_0201CD1C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #9
	mov r2, #0xa
	bl sub_0201CD1C
_021BC5FE:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	asr r1, r0, #0x10
	lsl r1, r1, #0x10
	lsr r7, r1, #0x10
	asr r1, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x40]
	add r0, r4, #0
	add r0, #0x5c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldrb r0, [r0]
	str r1, [sp, #0x3c]
	cmp r0, #0
	beq _021BC626
	ldrh r6, [r4, #0x38]
	b _021BC628
_021BC626:
	ldrh r6, [r4, #0x3a]
_021BC628:
	add r0, r5, #0
	bl sub_0201D620
	ldr r1, [sp, #0x40]
	mov r2, #0x7d
	lsl r2, r2, #4
	str r1, [sp]
	ldr r3, [sp, #0x3c]
	add r1, r6, #0
	sub r2, r7, r2
	bl sub_02035A8C
	add r0, r5, #0
	bl sub_0201D5F4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r6, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BC65E
	add r0, r5, #0
	bl sub_0203A24C
	b _021BC660
_021BC65E:
	add r6, r5, #0
_021BC660:
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033E24
	add r7, r0, #0
	ldr r0, [sp, #0x48]
	ldrh r1, [r4, #0x1a]
	add r0, #0xe4
	strh r1, [r0]
	ldrb r1, [r4, #0x1c]
	ldr r0, [sp, #0x48]
	add r4, #0x5c
	add r0, #0xe6
	strh r1, [r0]
	ldr r0, [sp, #0x48]
	ldrb r1, [r4]
	add r0, #0xe0
	str r1, [r0]
	bl sub_02033768
	str r0, [sp, #0x54]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x58]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x5c]
	add r0, r6, #0
	mov r1, #0x6e
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #0x60]
	add r0, r6, #0
	bl sub_0201CDAC
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	mov r4, #0x4c
	bl sub_0201CCF8
	str r5, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_020337DC
	mov r3, #0x4c
	mov r5, #0x4c
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r2, [sp, #0x48]
	add r3, #0xf4
	add r2, r2, r3
	ldr r3, [sp, #0x48]
	add r5, #0xcc
	ldrh r3, [r3, r5]
	add r0, r7, #0
	bl sub_0204B37C
	mov r2, #0x4c
	ldr r1, [sp, #0x48]
	add r2, #0xf0
	str r0, [r1, r2]
	add r0, r6, #0
	bl sub_0201D624
	mov r5, #0x4c
	add r1, r0, #0
	mov r2, #0x4c
	ldr r3, [sp, #0x48]
	add r5, #0xcc
	ldr r0, [sp, #0x48]
	add r2, #0xec
	add r0, r0, r2
	ldrh r3, [r3, r5]
	mov r2, #0
	bl sub_02033D50
	ldr r1, [sp, #0x48]
	add r4, #0xe8
	str r0, [r1, r4]
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r7, #0
	bl sub_0204AB0C
_021BC72A:
	ldr r0, [sp, #0x48]
	add sp, #0x110
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC730: .word 0x0000FFFF
_021BC734: .word 0x021BE6B8
_021BC738: .word 0x0208FF7C
_021BC73C: .word 0x0208FF80
_021BC740: .word 0x0209A434
_021BC744: .word 0x0000028A
	thumb_func_end ovy197_21bc014

	thumb_func_start ovy197_21bc748
ovy197_21bc748: ; 0x021BC748
	push {r3, r4, r5, lr}
	mov r5, #0x4a
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021BC75E
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, r5]
_021BC75E:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BC76C
	bl sub_0203A24C
_021BC76C:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BC77A
	bl sub_0203A24C
_021BC77A:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ovy197_21b9188
	add r0, r4, #0
	bl ovy197_21bacac
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21bc748

	thumb_func_start ovy197_21bc794
ovy197_21bc794: ; 0x021BC794
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021BC7B0
	mov r7, #0xe
	ldr r6, _021BC9EC ; =0x021BC9F8
	b _021BC7B4
_021BC7B0:
	ldr r6, _021BC9F0 ; =0x021BCA0C
	mov r7, #0x1e
_021BC7B4:
	add r0, r4, #0
	add r0, #0xdc
	ldrh r0, [r0]
	cmp r0, #8
	bhi _021BC86A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BC7CA: ; jump table
	.short _021BC9E8 - _021BC7CA - 2 ; case 0
	.short _021BC7DC - _021BC7CA - 2 ; case 1
	.short _021BC7F4 - _021BC7CA - 2 ; case 2
	.short _021BC87E - _021BC7CA - 2 ; case 3
	.short _021BC888 - _021BC7CA - 2 ; case 4
	.short _021BC8EA - _021BC7CA - 2 ; case 5
	.short _021BC942 - _021BC7CA - 2 ; case 6
	.short _021BC9CA - _021BC7CA - 2 ; case 7
	.short _021BC9D4 - _021BC7CA - 2 ; case 8
_021BC7DC:
	ldr r0, [r5, #0x20]
	add r5, #0x90
	ldr r1, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C468
	mov r0, #2
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC7F4:
	add r0, r4, #0
	add r0, #0xde
	ldrh r1, [r0]
	ldr r0, _021BC9F4 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D65C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x64
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x44
	str r0, [sp, #4]
	add r5, #0x88
	ldr r3, [r5]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	add r0, r7, #0
	add r1, #0x24
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl ovy197_21b9918
	add r0, r4, #0
	add r0, #0xde
	ldrh r7, [r0]
	mov r5, #0xe
	mov r1, #0x3c
	add r0, r7, #0
	mul r0, r5
	blx sub_0208D65C
	str r0, [sp, #0x10]
	sub r5, #0x1a
	add r0, r7, #0
	mul r0, r5
	mov r1, #0x3c
	blx sub_0208D65C
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	add r1, #0xc
	add r0, r0, #2
	blx r6
	add r0, r4, #0
	add r0, #0xde
	ldrh r2, [r0]
	add r0, r4, #0
	add r0, #0xde
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xde
	strh r1, [r0]
	cmp r2, #0x3c
	bhi _021BC86C
_021BC86A:
	b _021BC9E8
_021BC86C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xde
	strh r1, [r0]
	mov r0, #3
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC87E:
	mov r0, #4
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC888:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	bne _021BC8B4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	add r1, r4, #0
	str r3, [sp, #0xc]
	add r0, #0xe4
	add r1, #0xe6
	ldrh r0, [r0]
	ldrh r1, [r1]
	mov r2, #0x40
	bl sub_020069F4
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
_021BC8B4:
	add r2, r5, #0
	add r2, #0x98
	ldr r2, [r2]
	ldr r0, [r5, #0x20]
	lsl r2, r2, #0x10
	add r1, sp, #0x24
	lsr r2, r2, #0x10
	bl sub_0204C178
	ldr r0, [r5, #0x20]
	bl sub_0204C2A8
	add r1, r0, #0
	add r0, r4, #0
	add r5, sp, #0x14
	mov r2, #0x10
	mov r3, #0x12
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, #0xec
	bl ovy197_21bcef0
	mov r0, #5
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC8EA:
	add r0, r4, #0
	add r0, #0xec
	add r1, sp, #0x14
	add r2, sp, #0x1c
	mov r6, #1
	bl ovy197_21bcf1c
	mov r7, #1
	and r7, r0
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x14
	strh r1, [r0, #2]
	ldr r1, [sp, #0x20]
	strh r1, [r0, #4]
	ldr r0, [r5, #0x20]
	add r5, #0x98
	ldr r2, [r5]
	add r1, sp, #0x14
	lsl r2, r2, #0x10
	add r1, #2
	lsr r2, r2, #0x10
	bl sub_0204C140
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #0
	bne _021BC934
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl sub_02006C40
	cmp r0, #0
	beq _021BC932
	mov r6, #0
_021BC932:
	and r7, r6
_021BC934:
	cmp r7, #0
	beq _021BC9E8
	mov r0, #6
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC942:
	add r0, r4, #0
	add r0, #0xde
	ldrh r1, [r0]
	ldr r0, _021BC9F4 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x3c
	blx sub_0208D65C
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x64
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x44
	ldr r3, _021BC9F4 ; =0x00007FFF
	str r0, [sp, #4]
	sub r2, r3, r2
	add r5, #0x88
	ldr r3, [r5]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	add r0, r7, #0
	add r1, #0x24
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl ovy197_21b9918
	add r0, r4, #0
	add r0, #0xde
	ldrh r5, [r0]
	mov r0, #0x3c
	sub r0, #0x4a
	mul r0, r5
	mov r1, #0x3c
	blx sub_0208D65C
	add r7, r0, #0
	mov r0, #0xc
	mul r0, r5
	mov r1, #0x3c
	blx sub_0208D65C
	add r7, #0x10
	add r1, r0, #0
	add r0, r7, #0
	blx r6
	add r0, r4, #0
	add r0, #0xde
	ldrh r2, [r0]
	add r0, r4, #0
	add r0, #0xde
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xde
	strh r1, [r0]
	cmp r2, #0x3c
	bls _021BC9E8
	add r0, r4, #0
	mov r1, #0
	add r0, #0xde
	strh r1, [r0]
	mov r0, #7
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC9CA:
	mov r0, #8
	add r4, #0xdc
	add sp, #0x28
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021BC9D4:
	ldr r0, [r5, #0x20]
	add r5, #0x8c
	ldr r1, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C468
	mov r0, #0
	add r4, #0xdc
	strh r0, [r4]
_021BC9E8:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BC9EC: .word 0x021BC9F8
_021BC9F0: .word 0x021BCA0C
_021BC9F4: .word 0x00007FFF
	thumb_func_end ovy197_21bc794
_021BC9F8:
	.byte 0x08, 0x20, 0x9F, 0xE5, 0x01, 0x04, 0x80, 0xE1
	.byte 0xB0, 0x00, 0xC2, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1, 0x52, 0x00, 0x00, 0x04, 0x08, 0x20, 0x9F, 0xE5
	.byte 0x01, 0x04, 0x80, 0xE1, 0xB0, 0x00, 0xC2, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1, 0x52, 0x10, 0x00, 0x04

	thumb_func_start ovy197_21bca20
ovy197_21bca20: ; 0x021BCA20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	mov r7, #0
	cmp r0, #4
	blo _021BCA32
	mov r7, #4
_021BCA32:
	mov r6, #0x1a
	cmp r0, #3
	bhi _021BCA3A
	mov r6, #0x1b
_021BCA3A:
	add r0, r1, #0
	bl ovy197_21bae2c
	lsl r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, #0x21
	add r1, r4, #0
	bl sub_0204AA30
	ldr r1, [r5, #8]
	ldr r3, [sp, #0x10]
	lsl r1, r1, #5
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #4
	add r2, r7, #0
	lsr r3, r3, #0xb
	str r0, [sp, #0xc]
	str r4, [sp, #8]
	bl sub_0204B124
	mov r7, #0
	str r7, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, [r5]
	str r4, [sp, #8]
	mov r1, #0xd
	mov r3, #0
	bl sub_0204ADA8
	str r7, [sp]
	lsl r1, r6, #0x10
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, [r5]
	lsr r1, r1, #0x10
	mov r3, #0
	str r4, [sp, #8]
	bl sub_0204AF50
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0x22
	bl sub_0204566C
	ldr r0, [r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21bca20

	thumb_func_start ovy197_21bcac0
ovy197_21bcac0: ; 0x021BCAC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	mov r6, #0
	cmp r0, #4
	blo _021BCAD2
	mov r6, #4
_021BCAD2:
	add r0, r1, #0
	bl ovy197_21bae2c
	lsl r7, r0, #0x10
	mov r0, #0x21
	add r1, r4, #0
	bl sub_0204AA30
	ldr r1, [r5, #8]
	add r2, r6, #0
	lsl r1, r1, #5
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #4
	lsr r3, r7, #0xb
	str r0, [sp, #0xc]
	str r4, [sp, #8]
	bl sub_0204B124
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r3, #0x22
	bl sub_0204566C
	ldr r0, [r5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21bcac0

	thumb_func_start ovy197_21bcb2c
ovy197_21bcb2c: ; 0x021BCB2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ovy197_21bacd8
	add r7, r0, #0
	add r0, r5, #0
	bl ovy197_21bad08
	mov r3, #0x46
	lsl r3, r3, #2
	add r1, r0, #0
	ldrh r3, [r5, r3]
	add r0, r7, #0
	add r2, sp, #0x10
	bl sub_0204B37C
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xb0
	add r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	lsl r0, r0, #5
	cmp r1, #0
	bne _021BCB6A
	ldr r1, _021BCD14 ; =0x05000200
	b _021BCB6C
_021BCB6A:
	ldr r1, _021BCD18 ; =0x05000600
_021BCB6C:
	add r1, r0, r1
	ldr r0, [sp, #0x10]
	mov r2, #0x60
	ldr r0, [r0, #0xc]
	mov r6, #0x60
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	bl sub_0203A24C
	add r0, r5, #0
	bl ovy197_21bad64
	add r6, #0xb8
	add r1, r0, #0
	ldrh r0, [r5, r6]
	mov r2, #0
	add r3, sp, #0xc
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B2DC
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r2, #2
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r1, #0x14]
	lsl r2, r2, #8
	mov r3, #0
	bl sub_0204BAB8
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0xd8
	add r6, sp, #8
	strh r0, [r6]
	mov r0, #0x16
	strh r0, [r6, #2]
	add r0, r5, #0
	bl sub_021BADEC
	cmp r0, #2
	bne _021BCBE2
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r0, r0, #4
	strh r0, [r6]
	mov r0, #2
	ldrsh r0, [r6, r0]
	add r0, #8
	strh r0, [r6, #2]
_021BCBE2:
	add r0, r5, #0
	bl ovy197_21bad38
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x1c]
	lsr r1, r1, #0x18
	mov r2, #0
	mov r7, #0
	bl sub_0204C378
	add r2, r4, #0
	add r2, #0x98
	ldr r2, [r2]
	ldr r0, [r4, #0x1c]
	lsl r2, r2, #0x10
	add r1, sp, #8
	lsr r2, r2, #0x10
	bl sub_0204C140
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl sub_0204C124
	add r0, r5, #0
	bl sub_021BADEC
	cmp r0, #1
	bne _021BCD08
	mov r6, #5
	lsl r6, r6, #6
	ldr r1, [r5, r6]
	ldr r0, [r4, #0x10]
	ldr r1, [r1, #0xc]
	mov r2, #1
	bl sub_0204BD10
	ldr r0, [r5, r6]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	add r1, #0x64
	mov r2, #0x20
	blx MI_CpuCopy8
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x44
	mov r2, #0x20
	blx MIi_CpuClear16
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r2, #0x12
	str r0, [sp]
	sub r6, #8
	ldr r1, [r5, r6]
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0x14]
	lsl r2, r2, #8
	add r3, r7, #0
	bl sub_0204BAB8
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0204C2A0
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #4
	ldr r0, [r4, #0x10]
	bhs _021BCC8A
	add r1, r4, #0
	add r1, #0x98
	ldr r1, [r1]
	bl sub_0204BDC0
	ldr r1, _021BCD14 ; =0x05000200
	b _021BCC96
_021BCC8A:
	add r1, r4, #0
	add r1, #0x98
	ldr r1, [r1]
	bl sub_0204BDC0
	ldr r1, _021BCD18 ; =0x05000600
_021BCC96:
	add r3, r0, r1
	mov r2, #0
_021BCC9A:
	lsl r1, r2, #1
	add r0, r4, r1
	add r0, #0x44
	ldrh r0, [r0]
	add r2, r2, #1
	cmp r2, #0x10
	strh r0, [r3, r1]
	blt _021BCC9A
	add r0, r4, #0
	add r0, #0xa0
	ldr r3, [r0]
	cmp r3, #4
	bhs _021BCCDC
	mov r0, #0xc
	str r0, [sp]
	add r4, #0xa4
	ldr r4, [r4]
	lsl r3, r3, #0x18
	lsl r4, r4, #0x18
	lsr r5, r3, #0x18
	mov r3, #1
	mov r2, #1
	lsr r4, r4, #0x18
	lsl r3, r5
	lsl r2, r4
	orr r2, r3
	ldr r0, _021BCD1C ; =0x04000050
	mov r1, #0
	mov r3, #2
	bl G2x_SetBlendAlpha_
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021BCCDC:
	mov r0, #0xc
	str r0, [sp]
	add r4, #0xa4
	ldr r4, [r4]
	sub r3, r3, #4
	sub r4, r4, #4
	lsl r3, r3, #0x18
	lsl r4, r4, #0x18
	lsr r5, r3, #0x18
	mov r3, #1
	mov r2, #1
	lsr r4, r4, #0x18
	lsl r3, r5
	lsl r2, r4
	orr r2, r3
	ldr r0, _021BCD20 ; =0x04001050
	mov r1, #0
	mov r3, #2
	bl G2x_SetBlendAlpha_
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021BCD08:
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BCD14: .word 0x05000200
_021BCD18: .word 0x05000600
_021BCD1C: .word 0x04000050
_021BCD20: .word 0x04001050
	thumb_func_end ovy197_21bcb2c

	thumb_func_start ovy197_21bcd24
ovy197_21bcd24: ; 0x021BCD24
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BADEC
	cmp r0, #1
	bne _021BCD48
	add r0, r4, #0
	add r0, #0xdc
	ldrh r0, [r0]
	cmp r0, #0
	bne _021BCD48
	add r0, r4, #0
	mov r1, #1
	add r0, #0xdc
	strh r1, [r0]
	mov r0, #0
	add r4, #0xde
	strh r0, [r4]
_021BCD48:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bcd24

	thumb_func_start ovy197_21bcd4c
ovy197_21bcd4c: ; 0x021BCD4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021BADEC
	cmp r0, #1
	bne _021BCDC8
	add r0, r5, #0
	mov r1, #0
	add r0, #0xdc
	strh r1, [r0]
	add r0, r5, #0
	mov r4, #0x47
	add r0, #0xde
	lsl r4, r4, #2
	strh r1, [r0]
	ldr r1, [r5, r4]
	ldr r0, [r1, #0x20]
	add r1, #0x8c
	ldr r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C468
	ldr r1, [r5, r4]
	add r0, r1, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	ldr r0, [r1, #0x10]
	beq _021BCD98
	add r1, #0x98
	ldr r1, [r1]
	bl sub_0204BDC0
	ldr r1, _021BCDCC ; =0x05000200
	ldr r2, _021BCDD0 ; =0x021BC9F8
	add r4, r0, r1
	b _021BCDA6
_021BCD98:
	add r1, #0x98
	ldr r1, [r1]
	bl sub_0204BDC0
	ldr r1, _021BCDD4 ; =0x05000600
	ldr r2, _021BCDD8 ; =0x021BCA0C
	add r4, r0, r1
_021BCDA6:
	mov r0, #2
	mov r1, #0xc
	blx r2
	mov r6, #0x47
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	mov r0, #0
	add r1, #0x44
	mov r2, #0x20
	blx MIi_CpuClear16
	ldr r0, [r5, r6]
	add r1, r4, #0
	add r0, #0x44
	mov r2, #0x20
	blx MIi_CpuCopy16
_021BCDC8:
	pop {r4, r5, r6, pc}
	nop
_021BCDCC: .word 0x05000200
_021BCDD0: .word 0x021BC9F8
_021BCDD4: .word 0x05000600
_021BCDD8: .word 0x021BCA0C
	thumb_func_end ovy197_21bcd4c

	thumb_func_start sub_021BCDDC
sub_021BCDDC: ; 0x021BCDDC
	add r0, #0xdc
	ldrh r0, [r0]
	cmp r0, #0
	bne _021BCDE8
	mov r0, #1
	bx lr
_021BCDE8:
	mov r0, #0
	bx lr
	thumb_func_end sub_021BCDDC

	thumb_func_start ovy197_21bcdec
ovy197_21bcdec: ; 0x021BCDEC
	push {r3, r4, r5, lr}
	mov r2, #0x4b
	add r5, r1, #0
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	cmp r0, #0
	bne _021BCE70
	mov r0, #1
	str r0, [r5, r2]
	add r0, r2, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021BCE0C
	cmp r0, #1
	beq _021BCE1E
	b _021BCE2E
_021BCE0C:
	add r0, r2, #0
	sub r0, #0x10
	sub r2, #0x14
	ldr r0, [r5, r0]
	ldrh r2, [r5, r2]
	add r0, #0xa0
	bl ovy197_21bca20
	b _021BCE2E
_021BCE1E:
	add r0, r2, #0
	sub r0, #0x10
	sub r2, #0x14
	ldr r0, [r5, r0]
	ldrh r2, [r5, r2]
	add r0, #0xa0
	bl ovy197_21bcac0
_021BCE2E:
	mov r4, #0x47
	lsl r4, r4, #2
	sub r2, r4, #4
	ldrh r2, [r5, r2]
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy197_21bcb2c
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	bl ovy197_21b9270
	ldr r0, [r5, r4]
	ldr r0, [r0]
	bl ovy197_21b90e0
	ldr r0, [r5, r4]
	mov r1, #1
	add r0, #0x96
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044C98
	ldr r0, [r5, r4]
	mov r1, #1
	add r0, #0x94
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044C98
_021BCE70:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21bcdec

	thumb_func_start ovy197_21bce74
ovy197_21bce74: ; 0x021BCE74
	push {r3, r4, r5, lr}
	mov r5, #0x13
	lsl r5, r5, #4
	add r4, r0, #0
	add r0, r5, #0
	str r1, [r4, r5]
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021BCE98
	ldr r0, _021BCEA0 ; =ovy197_21bcdec
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	sub r5, #8
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
_021BCE98:
	mov r1, #0
	sub r0, r5, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021BCEA0: .word ovy197_21bcdec
	thumb_func_end ovy197_21bce74

	thumb_func_start ovy197_21bcea4
ovy197_21bcea4: ; 0x021BCEA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #4
	bl sub_02045738
	mov r0, #4
	bl sub_02044F90
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C124
	add r2, r4, #0
	mov r1, #0xb8
	add r0, sp, #0
	strh r1, [r0]
	mov r1, #0x70
	strh r1, [r0, #2]
	add r2, #0x98
	ldr r2, [r2]
	ldr r0, [r4, #0x20]
	lsl r2, r2, #0x10
	add r1, sp, #0
	lsr r2, r2, #0x10
	bl sub_0204C140
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_0204C124
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bcea4

	thumb_func_start ovy197_21bcef0
ovy197_21bcef0: ; 0x021BCEF0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x2c
	add r6, r3, #0
	blx MI_CpuFill8
	mov r0, #0xb
	strh r7, [r5, #2]
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #2]
	strh r7, [r5, #4]
	str r4, [r5, #0x14]
	str r6, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r6, [r5, #0x20]
	strh r0, [r5]
	str r4, [r5, #0x24]
	str r6, [r5, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy197_21bcef0

	thumb_func_start ovy197_21bcf1c
ovy197_21bcf1c: ; 0x021BCF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #7]
	str r1, [sp]
	add r7, r2, #0
	mov r6, #0
	cmp r0, #3
	bls _021BCF30
	b _021BD036
_021BCF30:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BCF3C: ; jump table
	.short _021BCF44 - _021BCF3C - 2 ; case 0
	.short _021BCFB4 - _021BCF3C - 2 ; case 1
	.short _021BD020 - _021BCF3C - 2 ; case 2
	.short _021BD034 - _021BCF3C - 2 ; case 3
_021BCF44:
	ldrh r0, [r4, #4]
	ldr r1, _021BD054 ; =0x021BE650
	str r6, [r4, #0xc]
	strh r0, [r4, #2]
	ldrh r0, [r4, #8]
	lsl r2, r0, #1
	ldrh r1, [r1, r2]
	ldr r2, [r4, #0x1c]
	strh r1, [r4, #4]
	ldr r1, _021BD058 ; =0x021BE612
	str r2, [r4, #0x14]
	ldrsb r1, [r1, r0]
	lsl r2, r0, #3
	strb r1, [r4, #6]
	ldr r1, _021BD05C ; =0x021BE61D
	ldrsb r1, [r1, r0]
	str r1, [r4, #0x10]
	ldr r1, [r4, #0x20]
	str r1, [r4, #0x18]
	ldr r1, _021BD060 ; =0x021BE73C
	add r0, r1, r2
	ldr r1, [r1, r2]
	ldr r0, [r0, #4]
	str r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	mov r0, #6
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _021BCF96
	ldrh r1, [r4, #2]
	ldr r0, _021BD064 ; =0x0000FFFF
	cmp r1, r0
	bne _021BCF88
	add r1, r6, #0
_021BCF88:
	ldrh r0, [r4, #4]
	strh r1, [r4, #2]
	cmp r0, #0
	bne _021BCF92
	ldr r0, _021BD064 ; =0x0000FFFF
_021BCF92:
	strh r0, [r4, #4]
	b _021BCFAC
_021BCF96:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021BCF9E
	ldr r0, _021BD064 ; =0x0000FFFF
_021BCF9E:
	ldrh r1, [r4, #4]
	strh r0, [r4, #2]
	ldr r0, _021BD064 ; =0x0000FFFF
	cmp r1, r0
	bne _021BCFAA
	mov r1, #0
_021BCFAA:
	strh r1, [r4, #4]
_021BCFAC:
	ldrb r0, [r4, #7]
_021BCFAE:
	add r0, r0, #1
	strb r0, [r4, #7]
	b _021BD036
_021BCFB4:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	str r0, [sp, #8]
	sub r5, r1, r0
	bpl _021BCFC2
	neg r0, r5
	b _021BCFC4
_021BCFC2:
	add r0, r5, #0
_021BCFC4:
	add r1, r5, #0
	blx sub_0208D65C
	str r0, [sp, #4]
	cmp r5, #0
	bge _021BCFD2
	neg r5, r5
_021BCFD2:
	ldr r1, [r4, #0xc]
	add r0, r1, #0
	ldr r1, [r4, #0x10]
	mul r0, r5
	blx sub_0208D868
	ldr r1, [sp, #4]
	ldr r5, [r4, #0x18]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	add r0, r0, r2
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	sub r0, r0, r5
	bpl _021BCFF4
	neg r0, r0
_021BCFF4:
	ldr r1, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	blx sub_0208D868
	ldr r1, [sp, #4]
	mul r0, r1
	add r0, r5, r0
	ldr r1, [r4, #0xc]
	str r0, [r4, #0x28]
	add r0, r1, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blo _021BD036
	ldrh r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	strh r0, [r4]
	ldr r0, [r4, #0x20]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	b _021BCFAC
_021BD020:
	ldrh r1, [r4, #8]
	add r1, r1, #1
	strh r1, [r4, #8]
	ldrh r2, [r4, #8]
	ldrh r1, [r4, #0xa]
	cmp r2, r1
	bhs _021BD032
	strb r6, [r4, #7]
	b _021BD036
_021BD032:
	b _021BCFAE
_021BD034:
	mov r6, #1
_021BD036:
	ldr r0, [sp]
	cmp r0, #0
	beq _021BD040
	ldrh r1, [r4]
	strh r1, [r0]
_021BD040:
	cmp r7, #0
	beq _021BD04C
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	str r1, [r7]
	str r0, [r7, #4]
_021BD04C:
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021BD054: .word 0x021BE650
_021BD058: .word 0x021BE612
_021BD05C: .word 0x021BE61D
_021BD060: .word 0x021BE73C
_021BD064: .word 0x0000FFFF
	thumb_func_end ovy197_21bcf1c

	thumb_func_start ovy197_21bd068
ovy197_21bd068: ; 0x021BD068
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021BD0A4 ; =0x0000013B
	ldr r7, _021BD0A8 ; =0x000017A8
	add r5, r1, #0
	str r0, [sp]
	ldr r3, _021BD0AC ; =0x021BE9C0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	mov r1, #0
	add r2, r7, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r0, #0x58
	strh r5, [r0]
	ldr r0, _021BD0B0 ; =0x00000794
	ldr r2, _021BD0B4 ; =0x021BD3E1
	str r6, [r4, r0]
	add r0, r4, #0
	add r1, r4, #0
	bl ovy197_21bdc30
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BD0A4: .word 0x0000013B
_021BD0A8: .word 0x000017A8
_021BD0AC: .word 0x021BE9C0
_021BD0B0: .word 0x00000794
_021BD0B4: .word 0x021BD3E1
	thumb_func_end ovy197_21bd068

	thumb_func_start ovy197_21bd0b8
ovy197_21bd0b8: ; 0x021BD0B8
	push {r4, lr}
	add r4, r0, #0
	bl sub_021BDC4C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy197_21bd0b8

	thumb_func_start sub_021BD0C8
sub_021BD0C8: ; 0x021BD0C8
	ldr r3, _021BD0CC ; =ovy197_21bdc58
	bx r3
	.align 2, 0
_021BD0CC: .word ovy197_21bdc58
	thumb_func_end sub_021BD0C8

	thumb_func_start ovy197_21bd0d0
ovy197_21bd0d0: ; 0x021BD0D0
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0xc
	bhi _021BD17A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BD0E4: ; jump table
	.short _021BD174 - _021BD0E4 - 2 ; case 0
	.short _021BD0FE - _021BD0E4 - 2 ; case 1
	.short _021BD17A - _021BD0E4 - 2 ; case 2
	.short _021BD112 - _021BD0E4 - 2 ; case 3
	.short _021BD126 - _021BD0E4 - 2 ; case 4
	.short _021BD13A - _021BD0E4 - 2 ; case 5
	.short _021BD14C - _021BD0E4 - 2 ; case 6
	.short _021BD154 - _021BD0E4 - 2 ; case 7
	.short _021BD17A - _021BD0E4 - 2 ; case 8
	.short _021BD15C - _021BD0E4 - 2 ; case 9
	.short _021BD164 - _021BD0E4 - 2 ; case 10
	.short _021BD17A - _021BD0E4 - 2 ; case 11
	.short _021BD16C - _021BD0E4 - 2 ; case 12
_021BD0FE:
	ldr r1, _021BD17C ; =0x021BD3E1
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD17A
	ldr r1, _021BD180 ; =ovy197_21bd3e4
	add r0, r4, #0
	bl sub_021BDC6C
	pop {r4, pc}
_021BD112:
	ldr r1, _021BD184 ; =ovy197_21bd4c0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD17A
	ldr r1, _021BD188 ; =ovy197_21bd458
	add r0, r4, #0
	bl sub_021BDC6C
	pop {r4, pc}
_021BD126:
	ldr r1, _021BD17C ; =0x021BD3E1
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD17A
	ldr r1, _021BD18C ; =ovy197_21bd720
	add r0, r4, #0
	bl sub_021BDC6C
	pop {r4, pc}
_021BD13A:
	ldr r1, _021BD18C ; =ovy197_21bd720
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD17A
	ldr r0, _021BD190 ; =0x0000076C
	mov r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_021BD14C:
	ldr r1, _021BD194 ; =ovy197_21bdb90
	bl sub_021BDC6C
	pop {r4, pc}
_021BD154:
	ldr r1, _021BD198 ; =ovy197_21bd4d4
	bl sub_021BDC6C
	pop {r4, pc}
_021BD15C:
	ldr r1, _021BD19C ; =ovy197_21bd584
	bl sub_021BDC6C
	pop {r4, pc}
_021BD164:
	ldr r1, _021BD1A0 ; =ovy197_21bd5f8
	bl sub_021BDC6C
	pop {r4, pc}
_021BD16C:
	ldr r1, _021BD1A4 ; =ovy197_21bd698
	bl sub_021BDC6C
	pop {r4, pc}
_021BD174:
	ldr r1, _021BD17C ; =0x021BD3E1
	bl sub_021BDC6C
_021BD17A:
	pop {r4, pc}
	.align 2, 0
_021BD17C: .word 0x021BD3E1
_021BD180: .word ovy197_21bd3e4
_021BD184: .word ovy197_21bd4c0
_021BD188: .word ovy197_21bd458
_021BD18C: .word ovy197_21bd720
_021BD190: .word 0x0000076C
_021BD194: .word ovy197_21bdb90
_021BD198: .word ovy197_21bd4d4
_021BD19C: .word ovy197_21bd584
_021BD1A0: .word ovy197_21bd5f8
_021BD1A4: .word ovy197_21bd698
	thumb_func_end ovy197_21bd0d0

	thumb_func_start ovy197_21bd1a8
ovy197_21bd1a8: ; 0x021BD1A8
	push {r4, lr}
	ldr r1, _021BD270 ; =0x021BD3E1
	add r4, r0, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD1BA
	mov r0, #0
	pop {r4, pc}
_021BD1BA:
	ldr r1, _021BD274 ; =ovy197_21bd3e4
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD1CA
	mov r0, #1
	pop {r4, pc}
_021BD1CA:
	ldr r1, _021BD278 ; =ovy197_21bd4c0
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD1DA
	mov r0, #2
	pop {r4, pc}
_021BD1DA:
	ldr r1, _021BD27C ; =ovy197_21bd458
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD1EA
	mov r0, #3
	pop {r4, pc}
_021BD1EA:
	ldr r1, _021BD280 ; =ovy197_21bd720
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD1FA
	mov r0, #4
	pop {r4, pc}
_021BD1FA:
	ldr r1, _021BD284 ; =ovy197_21bdb90
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD20A
	mov r0, #6
	pop {r4, pc}
_021BD20A:
	ldr r1, _021BD288 ; =ovy197_21bd4d4
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD21A
	mov r0, #7
	pop {r4, pc}
_021BD21A:
	ldr r1, _021BD28C ; =ovy197_21bd5c4
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD22A
	mov r0, #8
	pop {r4, pc}
_021BD22A:
	ldr r1, _021BD290 ; =ovy197_21bd584
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD23A
	mov r0, #9
	pop {r4, pc}
_021BD23A:
	ldr r1, _021BD294 ; =ovy197_21bd5f8
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD24A
	mov r0, #0xa
	pop {r4, pc}
_021BD24A:
	ldr r1, _021BD298 ; =ovy197_21bd6d8
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD25A
	mov r0, #0xb
	pop {r4, pc}
_021BD25A:
	ldr r1, _021BD29C ; =ovy197_21bd698
	add r0, r4, #0
	bl sub_021BDC74
	cmp r0, #0
	beq _021BD26A
	mov r0, #0xc
	pop {r4, pc}
_021BD26A:
	mov r0, #0
	pop {r4, pc}
	nop
_021BD270: .word 0x021BD3E1
_021BD274: .word ovy197_21bd3e4
_021BD278: .word ovy197_21bd4c0
_021BD27C: .word ovy197_21bd458
_021BD280: .word ovy197_21bd720
_021BD284: .word ovy197_21bdb90
_021BD288: .word ovy197_21bd4d4
_021BD28C: .word ovy197_21bd5c4
_021BD290: .word ovy197_21bd584
_021BD294: .word ovy197_21bd5f8
_021BD298: .word ovy197_21bd6d8
_021BD29C: .word ovy197_21bd698
	thumb_func_end ovy197_21bd1a8

	thumb_func_start sub_021BD2A0
sub_021BD2A0: ; 0x021BD2A0
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_021BD2A0

	thumb_func_start ovy197_21bd2a4
ovy197_21bd2a4: ; 0x021BD2A4
	push {r3, lr}
	ldr r3, _021BD2C0 ; =0x000017A4
	ldr r3, [r0, r3]
	cmp r3, #1
	bne _021BD2BA
	ldr r3, _021BD2C4 ; =0x000007A4
	add r0, r0, r3
	blx MI_CpuCopy8
	mov r0, #1
	pop {r3, pc}
_021BD2BA:
	add r0, r3, #0
	pop {r3, pc}
	nop
_021BD2C0: .word 0x000017A4
_021BD2C4: .word 0x000007A4
	thumb_func_end ovy197_21bd2a4

	thumb_func_start ovy197_21bd2c8
ovy197_21bd2c8: ; 0x021BD2C8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0
	bl sub_02042788
	cmp r0, #0
	beq _021BD312
	bl sub_02042E84
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #5
	bhi _021BD312
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BD2EE: ; jump table
	.short _021BD2FA - _021BD2EE - 2 ; case 0
	.short _021BD302 - _021BD2EE - 2 ; case 1
	.short _021BD312 - _021BD2EE - 2 ; case 2
	.short _021BD30A - _021BD2EE - 2 ; case 3
	.short _021BD312 - _021BD2EE - 2 ; case 4
	.short _021BD2FA - _021BD2EE - 2 ; case 5
_021BD2FA:
	add r0, r4, #0
	bl ovy197_21bd3a0
	b _021BD310
_021BD302:
	add r0, r4, #0
	bl ovy197_21bd338
	b _021BD310
_021BD30A:
	add r0, r4, #0
	bl ovy197_21bd3c0
_021BD310:
	add r5, r0, #0
_021BD312:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy197_21bd2c8

	thumb_func_start ovy197_21bd318
ovy197_21bd318: ; 0x021BD318
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021BD32A
	bl sub_02012994
	mov r0, #0
	str r0, [r4, #0x10]
_021BD32A:
	add r0, r4, #0
	mov r1, #0
	bl ovy197_21bd0d0
	bl sub_02012144
	pop {r4, pc}
	thumb_func_end ovy197_21bd318

	thumb_func_start ovy197_21bd338
ovy197_21bd338: ; 0x021BD338
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021BD39C
	bl sub_02042540
	ldr r0, [r0, #4]
	cmp r0, #7
	bhi _021BD39C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BD35C: ; jump table
	.short _021BD39C - _021BD35C - 2 ; case 0
	.short _021BD36C - _021BD35C - 2 ; case 1
	.short _021BD36C - _021BD35C - 2 ; case 2
	.short _021BD36C - _021BD35C - 2 ; case 3
	.short _021BD36C - _021BD35C - 2 ; case 4
	.short _021BD36C - _021BD35C - 2 ; case 5
	.short _021BD36C - _021BD35C - 2 ; case 6
	.short _021BD392 - _021BD35C - 2 ; case 7
_021BD36C:
	mov r0, #0x79
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021BD37A
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021BD37A:
	bl sub_020424E4
	blx sub_02058490
	bl sub_02012154
	bl sub_02011DE0
	bl sub_02012144
	mov r4, #1
	b _021BD39C
_021BD392:
	bl sub_020424E4
	bl sub_02012028
	mov r4, #3
_021BD39C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy197_21bd338

	thumb_func_start ovy197_21bd3a0
ovy197_21bd3a0: ; 0x021BD3A0
	push {r4, lr}
	mov r4, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021BD3BA
	bl sub_02012154
	bl sub_02011DE0
	bl sub_02012144
	mov r4, #1
_021BD3BA:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bd3a0

	thumb_func_start ovy197_21bd3c0
ovy197_21bd3c0: ; 0x021BD3C0
	push {r4, lr}
	mov r4, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021BD3DA
	bl sub_02012154
	bl sub_02011DE0
	bl sub_02012144
	mov r4, #1
_021BD3DA:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bd3c0
_021BD3E0:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy197_21bd3e4
ovy197_21bd3e4: ; 0x021BD3E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021BD3FC
	cmp r0, #1
	beq _021BD412
	cmp r0, #2
	beq _021BD43E
	pop {r4, r5, r6, pc}
_021BD3FC:
	ldr r0, _021BD450 ; =0x021BE8B4
	mov r1, #0
	bl sub_020425EC
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BD412:
	bl sub_02042788
	cmp r0, #0
	beq _021BD44E
	add r1, r4, #0
	add r1, #0x58
	ldrh r1, [r1]
	mov r0, #1
	bl sub_02042BA8
	add r1, r4, #0
	add r1, #0x58
	ldrh r1, [r1]
	mov r0, #4
	bl sub_02012908
	str r0, [r4, #0x10]
	bl sub_02042968
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021BD43E:
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	ldr r1, _021BD454 ; =ovy197_21bd4c0
	add r0, r6, #0
	bl sub_021BDC6C
_021BD44E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BD450: .word 0x021BE8B4
_021BD454: .word ovy197_21bd4c0
	thumb_func_end ovy197_21bd3e4

	thumb_func_start ovy197_21bd458
ovy197_21bd458: ; 0x021BD458
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r2, #0
	cmp r1, #3
	bhi _021BD4B4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BD470: ; jump table
	.short _021BD478 - _021BD470 - 2 ; case 0
	.short _021BD488 - _021BD470 - 2 ; case 1
	.short _021BD49E - _021BD470 - 2 ; case 2
	.short _021BD4AE - _021BD470 - 2 ; case 3
_021BD478:
	ldr r0, [r5, #0x10]
	bl sub_02012994
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021BD488:
	ldr r0, _021BD4B8 ; =0x021BDC99
	bl sub_02042860
	cmp r0, #0
	beq _021BD498
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021BD498:
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021BD49E:
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _021BD4B4
	mov r0, #0
	str r0, [r5, #0x5c]
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021BD4AE:
	ldr r1, _021BD4BC ; =0x021BD3E1
	bl sub_021BDC6C
_021BD4B4:
	pop {r3, r4, r5, pc}
	nop
_021BD4B8: .word 0x021BDC99
_021BD4BC: .word 0x021BD3E1
	thumb_func_end ovy197_21bd458

	thumb_func_start ovy197_21bd4c0
ovy197_21bd4c0: ; 0x021BD4C0
	push {r4, lr}
	add r4, r2, #0
	bl sub_02012A4C
	mov r0, #0
	bl sub_02012BE4
	str r0, [r4, #0x54]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy197_21bd4c0

	thumb_func_start ovy197_21bd4d4
ovy197_21bd4d4: ; 0x021BD4D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _021BD4EE
	cmp r1, #1
	beq _021BD548
	cmp r1, #2
	beq _021BD56A
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_021BD4EE:
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x7c
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #9
	str r0, [sp]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r6, _021BD574 ; =0x000007A4
	str r0, [sp, #8]
	add r0, r4, r6
	str r0, [sp, #0xc]
	ldr r0, _021BD578 ; =0x0208FF80
	add r1, sp, #0
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #2
	lsl r0, r0, #0x16
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x78]
	add r0, r4, #0
	strb r7, [r1, #4]
	add r0, #0x58
	ldrh r0, [r0]
	strh r0, [r1, #6]
	add r0, sp, #0
	bl ovy12_2152990
	sub r6, #0xc
	str r0, [r4, r6]
	bl ovy12_2152b64
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	ldr r0, _021BD57C ; =0x000017A4
	add sp, #0x7c
	str r7, [r4, r0]
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021BD548:
	bl sub_02042788
	cmp r0, #0
	beq _021BD570
	add r4, #0x58
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #2
	add sp, #0x7c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021BD56A:
	ldr r1, _021BD580 ; =ovy197_21bd5c4
	bl sub_021BDC6C
_021BD570:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021BD574: .word 0x000007A4
_021BD578: .word 0x0208FF80
_021BD57C: .word 0x000017A4
_021BD580: .word ovy197_21bd5c4
	thumb_func_end ovy197_21bd4d4

	thumb_func_start ovy197_21bd584
ovy197_21bd584: ; 0x021BD584
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BD598
	cmp r1, #1
	beq _021BD5A6
	cmp r1, #2
	beq _021BD5B4
	pop {r4, pc}
_021BD598:
	ldr r0, _021BD5BC ; =0x00000798
	ldr r0, [r2, r0]
	bl ovy12_2152bfc
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BD5A6:
	bl sub_02042AB8
	cmp r0, #0
	beq _021BD5BA
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021BD5B4:
	ldr r1, _021BD5C0 ; =0x021BD3E1
	bl sub_021BDC6C
_021BD5BA:
	pop {r4, pc}
	.align 2, 0
_021BD5BC: .word 0x00000798
_021BD5C0: .word 0x021BD3E1
	thumb_func_end ovy197_21bd584

	thumb_func_start ovy197_21bd5c4
ovy197_21bd5c4: ; 0x021BD5C4
	push {r4, r5, r6, lr}
	ldr r6, _021BD5EC ; =0x00000798
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, r6]
	bl ovy12_2152bec
	ldr r0, [r4, r6]
	bl ovy12_2152bd4
	cmp r0, #0
	beq _021BD5EA
	ldr r0, _021BD5F0 ; =0x000017A4
	mov r1, #1
	str r1, [r4, r0]
	ldr r1, _021BD5F4 ; =ovy197_21bd584
	add r0, r5, #0
	bl sub_021BDC6C
_021BD5EA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021BD5EC: .word 0x00000798
_021BD5F0: .word 0x000017A4
_021BD5F4: .word ovy197_21bd584
	thumb_func_end ovy197_21bd5c4

	thumb_func_start ovy197_21bd5f8
ovy197_21bd5f8: ; 0x021BD5F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _021BD612
	cmp r1, #1
	beq _021BD662
	cmp r1, #2
	beq _021BD67C
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
_021BD612:
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x7c
	mov r7, #0
	blx MI_CpuFill8
	mov r0, #9
	str r0, [sp]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r6, _021BD688 ; =0x000007A4
	str r0, [sp, #8]
	add r0, r4, r6
	str r0, [sp, #0xc]
	add r1, sp, #0
	add r0, r4, #0
	strh r7, [r1, #4]
	add r0, #0x58
	ldrh r0, [r0]
	strh r0, [r1, #6]
	ldr r0, _021BD68C ; =0x0208FF80
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x78]
	lsl r0, r0, #0x17
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl ovy12_215309c
	sub r6, #8
	str r0, [r4, r6]
	bl ovy12_21530f8
	ldr r0, _021BD690 ; =0x000017A4
	add sp, #0x7c
	str r7, [r4, r0]
	mov r0, #1
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021BD662:
	bl sub_02042788
	cmp r0, #0
	beq _021BD682
	add r4, #0x58
	ldrh r1, [r4]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #2
	add sp, #0x7c
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021BD67C:
	ldr r1, _021BD694 ; =ovy197_21bd6d8
	bl sub_021BDC6C
_021BD682:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_021BD688: .word 0x000007A4
_021BD68C: .word 0x0208FF80
_021BD690: .word 0x000017A4
_021BD694: .word ovy197_21bd6d8
	thumb_func_end ovy197_21bd5f8

	thumb_func_start ovy197_21bd698
ovy197_21bd698: ; 0x021BD698
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021BD6AC
	cmp r1, #1
	beq _021BD6BA
	cmp r1, #2
	beq _021BD6C8
	pop {r4, pc}
_021BD6AC:
	ldr r0, _021BD6D0 ; =0x0000079C
	ldr r0, [r2, r0]
	bl sub_02153150
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021BD6BA:
	bl sub_02042AB8
	cmp r0, #0
	beq _021BD6CE
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021BD6C8:
	ldr r1, _021BD6D4 ; =0x021BD3E1
	bl sub_021BDC6C
_021BD6CE:
	pop {r4, pc}
	.align 2, 0
_021BD6D0: .word 0x0000079C
_021BD6D4: .word 0x021BD3E1
	thumb_func_end ovy197_21bd698

	thumb_func_start ovy197_21bd6d8
ovy197_21bd6d8: ; 0x021BD6D8
	push {r4, r5, r6, lr}
	ldr r6, _021BD714 ; =0x0000079C
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, r6]
	bl sub_0215313C
	ldr r0, [r4, r6]
	bl sub_02153130
	cmp r0, #0
	beq _021BD710
	cmp r0, #1
	beq _021BD6FE
	cmp r0, #2
	beq _021BD702
	cmp r0, #3
	beq _021BD702
	b _021BD708
_021BD6FE:
	mov r1, #1
	b _021BD704
_021BD702:
	mov r1, #2
_021BD704:
	ldr r0, _021BD718 ; =0x000017A4
	str r1, [r4, r0]
_021BD708:
	ldr r1, _021BD71C ; =ovy197_21bd698
	add r0, r5, #0
	bl sub_021BDC6C
_021BD710:
	pop {r4, r5, r6, pc}
	nop
_021BD714: .word 0x0000079C
_021BD718: .word 0x000017A4
_021BD71C: .word ovy197_21bd698
	thumb_func_end ovy197_21bd6d8

	thumb_func_start ovy197_21bd720
ovy197_21bd720: ; 0x021BD720
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r5, r2, #0
	add r4, r5, #0
	ldr r0, [r6]
	add r4, #0x60
	cmp r0, #0x64
	bgt _021BD75C
	blt _021BD736
	b _021BDA76
_021BD736:
	cmp r0, #9
	bls _021BD73C
	b _021BDB70
_021BD73C:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021BD748: ; jump table
	.short _021BD764 - _021BD748 - 2 ; case 0
	.short _021BD7C6 - _021BD748 - 2 ; case 1
	.short _021BD840 - _021BD748 - 2 ; case 2
	.short _021BD810 - _021BD748 - 2 ; case 3
	.short _021BD8A6 - _021BD748 - 2 ; case 4
	.short _021BD926 - _021BD748 - 2 ; case 5
	.short _021BD96E - _021BD748 - 2 ; case 6
	.short _021BDA4E - _021BD748 - 2 ; case 7
	.short _021BDA58 - _021BD748 - 2 ; case 8
	.short _021BDA5E - _021BD748 - 2 ; case 9
_021BD75C:
	cmp r0, #0xc8
	bne _021BD762
	b _021BDB2A
_021BD762:
	pop {r3, r4, r5, r6, r7, pc}
_021BD764:
	ldr r0, _021BDA8C ; =0x021BDD1D
	add r1, r4, #0
	bl ovy11_215205c
	ldr r2, _021BDA90 ; =0x00000734
	add r0, r4, #0
	mov r1, #0
	mov r7, #0
	blx MI_CpuFill8
	ldr r0, _021BDA90 ; =0x00000734
	ldr r2, _021BDA94 ; =0x021BE9D8
	sub r0, #0x28
	str r7, [r4, r0]
	ldr r0, _021BDA90 ; =0x00000734
	sub r0, #0x24
	str r7, [r4, r0]
	ldr r0, _021BDA90 ; =0x00000734
	sub r0, #0x10
	str r7, [r4, r0]
	ldr r0, _021BDA90 ; =0x00000734
	add r0, #0x70
	add r1, r5, r0
	ldr r0, _021BDA90 ; =0x00000734
	sub r0, #0xc
	str r1, [r4, r0]
	ldr r0, _021BDA98 ; =0x000017A4
	ldr r1, _021BDA9C ; =0x021BE9D0
	str r7, [r5, r0]
	ldr r0, _021BDAA0 ; =0x021BDCA1
	bl ovy189_21a5674
	cmp r0, #0
	bne _021BD7B4
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r0, #9
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BD7B4:
	ldr r0, _021BDA90 ; =0x00000734
	mov r2, #1
	sub r0, r0, #4
	str r2, [r4, r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy197_21bdbdc
	pop {r3, r4, r5, r6, r7, pc}
_021BD7C6:
	mov r0, #0x71
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021BD7E6
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #7
	str r3, [sp]
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BD7E6:
	ldr r1, _021BDAA4 ; =0x021BE9F8
	ldr r0, _021BDAA8 ; =0x021BE9EC
	add r2, r1, #0
	bl ovy189_21a5830
	cmp r0, #0
	bne _021BD80A
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #9
	str r3, [sp]
	add r0, r4, #0
	mov r1, #4
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BD80A:
	mov r0, #3
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BD810:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xa
	bl ovy189_21a5850
	cmp r0, #0
	bne _021BD834
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #9
	str r3, [sp]
	add r0, r4, #0
	mov r1, #4
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BD834:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl ovy197_21bdbdc
	pop {r3, r4, r5, r6, r7, pc}
_021BD840:
	mov r5, #0
_021BD842:
	mov r0, #0xb0
	add r7, r5, #0
	mul r7, r0
	add r0, r4, r7
	mov r1, #0xb0
	bl sub_021BDD00
	cmp r0, #0
	bne _021BD86E
	add r0, r4, r7
	add r0, #0x93
	bl ovy197_21bdcc0
	mov r1, #2
	lsl r1, r1, #0x16
	tst r0, r1
	beq _021BD86C
	lsl r0, r5, #2
	add r2, r4, r0
	mov r1, #1
	b _021BD874
_021BD86C:
	b _021BD86E
_021BD86E:
	lsl r0, r5, #2
	add r2, r4, r0
	mov r1, #0
_021BD874:
	mov r0, #0x6e
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r5, r5, #1
	cmp r5, #0xa
	blt _021BD842
	ldr r2, _021BDAAC ; =0x00000714
	mov r0, #0
	add r1, r2, #0
	str r0, [r4, r2]
	sub r1, #0x34
_021BD88A:
	lsl r3, r0, #2
	add r3, r4, r3
	ldr r3, [r3, r1]
	cmp r3, #0
	beq _021BD89A
	ldr r3, [r4, r2]
	add r3, r3, #1
	str r3, [r4, r2]
_021BD89A:
	add r0, r0, #1
	cmp r0, #0xa
	blt _021BD88A
	mov r0, #4
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BD8A6:
	ldr r0, _021BDAAC ; =0x00000714
	ldr r7, [r4, r0]
	cmp r7, #1
	bne _021BD8CA
	mov r2, #0
	sub r0, #0x34
_021BD8B2:
	lsl r1, r2, #2
	add r1, r4, r1
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021BD8C2
	ldr r0, _021BDAB0 ; =0x00000724
	str r2, [r4, r0]
	b _021BD920
_021BD8C2:
	add r2, r2, #1
	cmp r2, #0xa
	blt _021BD8B2
	b _021BD920
_021BD8CA:
	ble _021BD90A
	mov r5, #0
	bl sub_02043F2C
	cmp r7, #0
	beq _021BD8E2
	add r1, r5, #0
	add r2, r7, #0
	add r3, r5, #0
	blx sub_0208D60C
	add r0, r1, #0
_021BD8E2:
	mov r2, #0x6e
	mov r1, #0
	lsl r2, r2, #4
_021BD8E8:
	lsl r3, r1, #2
	add r3, r4, r3
	ldr r3, [r3, r2]
	cmp r3, #0
	beq _021BD8FE
	cmp r5, r0
	bne _021BD8FC
	ldr r0, _021BDAB0 ; =0x00000724
	str r1, [r4, r0]
	b _021BD904
_021BD8FC:
	add r5, r5, #1
_021BD8FE:
	add r1, r1, #1
	cmp r1, #0xa
	blt _021BD8E8
_021BD904:
	ldr r0, _021BDAB0 ; =0x00000724
	str r1, [r4, r0]
	b _021BD920
_021BD90A:
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #8
	str r3, [sp]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BD920:
	mov r0, #5
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BD926:
	ldr r7, _021BDAB0 ; =0x00000724
	mov r2, #1
	ldr r1, [r4, r7]
	mov r0, #0xb0
	mul r0, r1
	add r1, r7, #4
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsl r2, r2, #0xc
	bl ovy189_21a58c8
	cmp r0, #0
	bne _021BD956
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #9
	str r3, [sp]
	add r0, r4, #0
	mov r1, #4
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BD956:
	add r0, r7, #0
	mov r1, #0
	sub r0, #0xc
	str r1, [r4, r0]
	ldr r0, _021BDAB4 ; =0x021bea00
	add r7, #8
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r4, r7]
	mov r0, #6
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BD96E:
	bl ovy189_21a5768
	ldr r0, _021BDAB8 ; =0x0000072C
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	ldr r0, _021BDABC ; =0x00001C20
	cmp r2, r0
	bls _021BD9A0
	ldr r3, _021BDAC0 ; =0x000003F5
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #7
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	str r3, [sp]
	bl ovy197_21bdc00
_021BD9A0:
	ldr r0, _021BDAB4 ; =0x021bea00
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021BDA00
	ldr r7, _021BDAC4 ; =0x0000070C
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021BD9C6
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #7
	str r3, [sp]
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BD9C6:
	add r0, r7, #0
	add r1, r7, #0
	add r0, #0x10
	add r1, #0x14
	add r0, r4, r0
	add r1, r4, r1
	bl ovy189_21a5980
	cmp r0, #1
	bne _021BD9F8
	add r0, r7, #0
	add r0, #0x10
	ldr r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r7, #0
	add r1, #0x14
	ldr r1, [r4, r1]
	blx sub_0208D868
	add r1, r7, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _021BD9FA
_021BD9F8:
	b _021BDB70
_021BD9FA:
	add r7, #0xc
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
_021BDA00:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021BDA1C
	ldr r0, _021BDA98 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #9
	str r3, [sp]
	add r0, r4, #0
	mov r1, #4
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BDA1C:
	mov r0, #0x71
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ldr r0, _021BDA98 ; =0x000017A4
	bne _021BDA3A
	mov r1, #1
	str r1, [r5, r0]
	mov r3, #8
	str r3, [sp]
	add r0, r4, #0
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BDA3A:
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #8
	str r3, [sp]
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BDA4E:
	bl ovy189_21a5938
	mov r0, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BDA58:
	mov r0, #9
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BDA5E:
	mov r1, #0x73
	mov r0, #0
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r1, #0
	bl ovy11_215205c
	ldr r1, _021BDAC8 ; =ovy197_21bdb90
	add r0, r7, #0
	bl sub_021BDC6C
	pop {r3, r4, r5, r6, r7, pc}
_021BDA76:
	bl ovy189_21a5768
	ldr r0, _021BDAB8 ; =0x0000072C
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	ldr r0, _021BDABC ; =0x00001C20
	cmp r2, r0
	bls _021BDAEA
	ldr r3, _021BDAC0 ; =0x000003F5
	b _021BDACC
	.align 2, 0
_021BDA8C: .word 0x021BDD1D
_021BDA90: .word 0x00000734
_021BDA94: .word 0x021BE9D8
_021BDA98: .word 0x000017A4
_021BDA9C: .word 0x021BE9D0
_021BDAA0: .word 0x021BDCA1
_021BDAA4: .word 0x021BE9F8
_021BDAA8: .word 0x021BE9EC
_021BDAAC: .word 0x00000714
_021BDAB0: .word 0x00000724
_021BDAB4: .word 0x021bea00
_021BDAB8: .word 0x0000072C
_021BDABC: .word 0x00001C20
_021BDAC0: .word 0x000003F5
_021BDAC4: .word 0x0000070C
_021BDAC8: .word ovy197_21bdb90
_021BDACC:
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	ldr r0, _021BDB74 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #9
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	str r3, [sp]
	bl ovy197_21bdc00
_021BDAEA:
	ldr r0, _021BDB78 ; =0x021bea00
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021BDB1A
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021BDB12
	ldr r0, _021BDB74 ; =0x000017A4
	mov r1, #2
	str r1, [r5, r0]
	mov r3, #9
	str r3, [sp]
	add r0, r4, #0
	mov r1, #3
	add r2, r6, #0
	bl ovy197_21bdc00
	pop {r3, r4, r5, r6, r7, pc}
_021BDB12:
	ldr r0, _021BDB7C ; =0x00000708
	ldr r0, [r4, r0]
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BDB1A:
	ldr r0, _021BDB80 ; =0x0000070C
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021BDB70
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021BDB2A:
	bl ovy189_21a5768
	ldr r0, _021BDB84 ; =0x0000072C
	ldr r5, _021BDB88 ; =0x00001C20
	ldr r2, [r4, r0]
	add r1, r2, #1
	str r1, [r4, r0]
	cmp r2, r5
	bls _021BDB4E
	ldr r3, _021BDB8C ; =0x000003F5
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	lsr r0, r5, #2
	ldr r0, [r4, r0]
	str r0, [r6]
_021BDB4E:
	ldr r0, _021BDB78 ; =0x021bea00
	ldr r1, [r0]
	cmp r1, #0
	beq _021BDB62
	mov r1, #0
	str r1, [r0]
	ldr r0, _021BDB7C ; =0x00000708
	ldr r0, [r4, r0]
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021BDB62:
	ldr r0, _021BDB80 ; =0x0000070C
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021BDB70
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_021BDB70:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021BDB74: .word 0x000017A4
_021BDB78: .word 0x021bea00
_021BDB7C: .word 0x00000708
_021BDB80: .word 0x0000070C
_021BDB84: .word 0x0000072C
_021BDB88: .word 0x00001C20
_021BDB8C: .word 0x000003F5
	thumb_func_end ovy197_21bd720

	thumb_func_start ovy197_21bdb90
ovy197_21bdb90: ; 0x021BDB90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0
	beq _021BDBA6
	cmp r1, #1
	beq _021BDBBC
	cmp r1, #2
	beq _021BDBCE
	pop {r3, r4, r5, pc}
_021BDBA6:
	mov r0, #0
	bl sub_02042860
	cmp r0, #0
	beq _021BDBB6
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021BDBB6:
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021BDBBC:
	bl sub_02042788
	cmp r0, #0
	bne _021BDBD4
	mov r0, #0
	str r0, [r4, #0x5c]
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021BDBCE:
	ldr r1, _021BDBD8 ; =0x021BD3E1
	bl sub_021BDC6C
_021BDBD4:
	pop {r3, r4, r5, pc}
	nop
_021BDBD8: .word 0x021BD3E1
	thumb_func_end ovy197_21bdb90

	thumb_func_start ovy197_21bdbdc
ovy197_21bdbdc: ; 0x021BDBDC
	push {r3, r4}
	ldr r3, _021BDBF8 ; =0x021bea00
	mov r4, #0
	str r4, [r3, #4]
	str r4, [r3, #0xc]
	ldr r3, _021BDBFC ; =0x00000708
	str r2, [r0, r3]
	add r3, #0x24
	str r4, [r0, r3]
	mov r0, #0x64
	str r0, [r1]
	pop {r3, r4}
	bx lr
	nop
_021BDBF8: .word 0x021bea00
_021BDBFC: .word 0x00000708
	thumb_func_end ovy197_21bdbdc

	thumb_func_start ovy197_21bdc00
ovy197_21bdc00: ; 0x021BDC00
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, _021BDC28 ; =0x021bea00
	mov r5, #0
	str r5, [r2]
	str r1, [r2, #0xc]
	ldr r1, _021BDC2C ; =0x00000708
	str r3, [r0, r1]
	add r1, #0x24
	str r5, [r0, r1]
	mov r0, #0xc8
	str r0, [r4]
	bl ovy189_21a57dc
	cmp r0, #0
	bne _021BDC24
	ldr r0, [sp, #0x10]
	str r0, [r4]
_021BDC24:
	pop {r3, r4, r5, pc}
	nop
_021BDC28: .word 0x021bea00
_021BDC2C: .word 0x00000708
	thumb_func_end ovy197_21bdc00

	thumb_func_start ovy197_21bdc30
ovy197_21bdc30: ; 0x021BDC30
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r0, r5, #0
	add r1, r6, #0
	str r4, [r5, #0xc]
	bl sub_021BDC6C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy197_21bdc30

	thumb_func_start sub_021BDC4C
sub_021BDC4C: ; 0x021BDC4C
	ldr r3, _021BDC54 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x10
	bx r3
	.align 2, 0
_021BDC54: .word MI_CpuFill8
	thumb_func_end sub_021BDC4C

	thumb_func_start ovy197_21bdc58
ovy197_21bdc58: ; 0x021BDC58
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021BDC6A
	add r1, r0, #0
	ldr r2, [r0, #0xc]
	ldr r3, [r0]
	add r1, #8
	blx r3
_021BDC6A:
	pop {r3, pc}
	thumb_func_end ovy197_21bdc58

	thumb_func_start sub_021BDC6C
sub_021BDC6C: ; 0x021BDC6C
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_021BDC6C

	thumb_func_start sub_021BDC74
sub_021BDC74: ; 0x021BDC74
	ldr r0, [r0]
	cmp r0, r1
	bne _021BDC7E
	mov r0, #1
	bx lr
_021BDC7E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021BDC74
_021BDC84:
	.byte 0x14, 0x30, 0x70, 0x47, 0x20, 0x20, 0x70, 0x47, 0x88, 0x42, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x01, 0x21, 0xC1, 0x65, 0x70, 0x47, 0x00, 0x00
	.byte 0x02, 0x48, 0x01, 0x22, 0x42, 0x60, 0x02, 0x4B, 0xC1, 0x60, 0x18, 0x47, 0x00, 0xEA, 0x1B, 0x02
	.byte 0xB5, 0xDC, 0x1B, 0x02, 0x01, 0x48, 0x01, 0x21, 0x01, 0x60, 0x70, 0x47, 0x00, 0xEA, 0x1B, 0x02

	thumb_func_start ovy197_21bdcc0
ovy197_21bdcc0: ; 0x021BDCC0
	push {r4, r5, r6, r7}
	ldr r1, _021BDCFC ; =0x021BE884
	mov r5, #0
_021BDCC6:
	mov r2, #0
	ldrsb r6, [r0, r2]
	mov r4, #0
	mvn r4, r4
	mov r3, #0
_021BDCD0:
	lsl r7, r3, #1
	add r2, r1, r7
	ldrsb r7, [r1, r7]
	cmp r6, r7
	bne _021BDCE0
	mov r3, #1
	ldrsb r4, [r2, r3]
	b _021BDCE6
_021BDCE0:
	add r3, r3, #1
	cmp r3, #0x17
	blo _021BDCD0
_021BDCE6:
	mov r2, #0
	mvn r2, r2
	cmp r4, r2
	beq _021BDCF6
	lsl r2, r5, #4
	add r5, r2, r4
	add r0, r0, #1
	b _021BDCC6
_021BDCF6:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_021BDCFC: .word 0x021BE884
	thumb_func_end ovy197_21bdcc0

	thumb_func_start sub_021BDD00
sub_021BDD00: ; 0x021BDD00
	mov r2, #0
	lsr r3, r1, #2
	beq _021BDD18
_021BDD06:
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021BDD12
	mov r0, #0
	bx lr
_021BDD12:
	add r2, r2, #1
	cmp r2, r3
	blo _021BDD06
_021BDD18:
	mov r0, #1
	bx lr
	thumb_func_end sub_021BDD00
_021BDD1C:
	.byte 0x03, 0x2A, 0x03, 0xD0
	.byte 0x05, 0x2A, 0x01, 0xD0, 0x06, 0x2A, 0x03, 0xD1, 0x73, 0x21, 0x09, 0x01, 0x40, 0x58, 0x70, 0x47
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy197_21bdd34
ovy197_21bdd34: ; 0x021BDD34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r7, #0
	mov r6, #1
	mov r4, #0
_021BDD44:
	bl sub_020486F4
	lsl r1, r4, #1
	add r1, r5, r1
	add r1, #0xd0
	ldrh r1, [r1]
	cmp r1, r0
	bne _021BDD56
	mov r6, #0
_021BDD56:
	add r4, r4, #1
	cmp r4, #0xfd
	blt _021BDD44
	cmp r6, #0
	beq _021BDD62
	add r7, r7, #1
_021BDD62:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl ovy197_21bdd74
	add r0, r7, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy197_21bdd34

	thumb_func_start ovy197_21bdd74
ovy197_21bdd74: ; 0x021BDD74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, r0, #0
	mov r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r0, [sp, #0x3c]
	mov r6, #1
	mov r5, #0
	add r7, r0, #0
_021BDD88:
	bl sub_020486F4
	lsl r1, r5, #1
	add r1, r4, r1
	add r1, #0x60
	ldrh r1, [r1]
	cmp r1, r0
	bne _021BDD9A
	add r6, r7, #0
_021BDD9A:
	add r5, r5, #1
	cmp r5, #0x25
	blt _021BDD88
	cmp r6, #0
	beq _021BDDAA
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
_021BDDAA:
	add r0, r4, #0
	add r0, #0xb0
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	blo _021BDDBE
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
_021BDDBE:
	add r0, r4, #0
	add r0, #0xb3
	ldrb r1, [r0]
	cmp r1, #0
	beq _021BDDCC
	cmp r1, #5
	blo _021BDDD2
_021BDDCC:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
_021BDDD2:
	cmp r1, #4
	bls _021BDDD8
	b _021BE2CA
_021BDDD8:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BDDE4: ; jump table
	.short _021BE2CA - _021BDDE4 - 2 ; case 0
	.short _021BDDEE - _021BDDE4 - 2 ; case 1
	.short _021BE264 - _021BDDE4 - 2 ; case 2
	.short _021BE286 - _021BDDE4 - 2 ; case 3
	.short _021BE2A8 - _021BDDE4 - 2 ; case 4
_021BDDEE:
	add r0, r4, #0
	add r0, #0x5b
	ldrb r0, [r0]
	str r0, [sp, #0x20]
	ldr r0, [r4]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0x1a]
	str r0, [sp, #0x24]
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r0, #0x43
	ldrb r1, [r0]
	add r0, sp, #0x40
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	strb r1, [r0, #1]
	add r1, r4, #0
	add r1, #0x45
	ldrb r1, [r1]
	strb r1, [r0, #2]
	add r1, r4, #0
	add r1, #0x47
	ldrb r1, [r1]
	strb r1, [r0, #3]
	add r1, r4, #0
	add r1, #0x48
	ldrb r1, [r1]
	strb r1, [r0, #4]
	add r1, r4, #0
	add r1, #0x46
	ldrb r1, [r1]
	strb r1, [r0, #5]
	ldrh r1, [r4, #0x12]
	strh r1, [r0, #6]
	ldrh r1, [r4, #0x14]
	strh r1, [r0, #8]
	ldrh r1, [r4, #0x16]
	strh r1, [r0, #0xa]
	ldrh r1, [r4, #0x18]
	strh r1, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #1
	beq _021BDE5C
_021BDE5A:
	b _021BE108
_021BDE5C:
	ldr r1, _021BE10C ; =0x00000289
	ldr r0, [sp, #0x24]
	cmp r0, r1
	bls _021BDE66
	b _021BDE5A
_021BDE66:
	cmp r0, #0
	bne _021BDE6C
	b _021BDE5A
_021BDE6C:
	ldr r0, [sp, #0x20]
	cmp r0, #0x64
	bls _021BDE74
	b _021BDE5A
_021BDE74:
	ldrh r0, [r4, #0x10]
	sub r1, #0xb
	cmp r0, r1
	bls _021BDE7E
	b _021BDE5A
_021BDE7E:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021BDE92
	mov r0, #0x64
	bl sub_02005748
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
_021BDE92:
	ldr r0, [r4]
	cmp r0, #0
	bne _021BDEA4
	ldr r0, [sp, #0x10]
	bl sub_0201736C
	bl sub_02008BD0
	str r0, [sp, #0x18]
_021BDEA4:
	ldr r0, [sp, #0x30]
	cmp r0, #0xff
	bne _021BDEAE
	mov r0, #2
	str r0, [sp, #0x30]
_021BDEAE:
	mov r5, #0
	mov r7, #0x20
	add r6, sp, #0x40
_021BDEB4:
	ldrb r0, [r6, r5]
	cmp r0, #0xff
	bne _021BDEC2
	add r0, r7, #0
	bl sub_02005748
	strb r0, [r6, r5]
_021BDEC2:
	add r5, r5, #1
	cmp r5, #6
	blt _021BDEB4
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r3, #0
	bl sub_0201C2CC
	add r1, sp, #0x40
	add r5, r0, #0
	ldrb r0, [r1, #5]
	ldrb r2, [r1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	mov ip, r0
	ldrb r0, [r1, #4]
	lsl r0, r0, #0x1b
	lsr r3, r0, #7
	ldrb r0, [r1, #3]
	lsl r0, r0, #0x1b
	lsr r7, r0, #0xc
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #1]
	lsl r0, r0, #0x1b
	lsr r6, r0, #0x11
	mov r0, #0x1f
	lsl r1, r1, #0x1b
	and r0, r2
	lsr r1, r1, #0x16
	orr r0, r1
	orr r0, r6
	orr r0, r7
	add r1, r3, #0
	orr r1, r0
	mov r0, ip
	add r6, r0, #0
	ldr r0, [sp, #0x34]
	orr r6, r1
	cmp r0, #4
	bne _021BDF2C
	mov r0, #3
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_021BDF2C:
	ldr r0, [sp, #0x34]
	cmp r0, #3
	bhi _021BDF54
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021BDF3E: ; jump table
	.short _021BDF46 - _021BDF3E - 2 ; case 0
	.short _021BDF4A - _021BDF3E - 2 ; case 1
	.short _021BDF4E - _021BDF3E - 2 ; case 2
	.short _021BDF50 - _021BDF3E - 2 ; case 3
_021BDF46:
	mov r1, #0
	b _021BDF56
_021BDF4A:
	mov r1, #1
	b _021BDF56
_021BDF4E:
	b _021BDF46
_021BDF50:
	mov r1, #2
	b _021BDF56
_021BDF54:
	b _021BDE5A
_021BDF56:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021BDF5E
	b _021BDFA8
_021BDF5E:
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	bne _021BDF84
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x2c]
	lsl r1, r1, #0x10
	ldrb r2, [r4, #0x1c]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsr r1, r1, #0x10
	bl sub_0201D6F8
	str r0, [sp, #0x28]
	b _021BDFAE
_021BDF84:
	cmp r0, #1
	bne _021BDF8E
	str r1, [sp]
	mov r0, #2
	b _021BDF96
_021BDF8E:
	cmp r0, #2
	bne _021BDFAE
	str r1, [sp]
	mov r0, #1
_021BDF96:
	str r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldrb r2, [r4, #0x1c]
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsr r1, r1, #0x10
	bl sub_0201D6F8
_021BDFA8:
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x2c]
_021BDFAE:
	ldr r0, [sp, #0x28]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldrh r1, [r4, #0x1a]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	bl sub_0201C464
	ldrh r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #6
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201CFD8
	mov r7, #0
_021BDFDA:
	add r0, sp, #0x44
	lsl r1, r7, #1
	add r0, #2
	ldrh r6, [r0, r1]
	cmp r6, #0
	beq _021BE004
	mov r0, #0x23
	lsl r0, r0, #4
	cmp r6, r0
	bhs _021BE004
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201D0BC
	ldr r1, _021BE110 ; =0x0000FFFF
	cmp r0, r1
	bne _021BE004
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201D124
_021BE004:
	add r7, r7, #1
	cmp r7, #4
	blt _021BDFDA
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021BE020
	ldr r0, [sp, #0x34]
	cmp r0, #2
	bne _021BE020
	ldrb r2, [r4, #0x1c]
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl sub_0201DA94
_021BE020:
	ldrb r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #0x6f
	bl sub_0201CD1C
	ldrh r2, [r4, #0xe]
	cmp r2, #0
	beq _021BE03A
	cmp r2, #0x19
	bhi _021BE03A
	add r0, r5, #0
	mov r1, #0x98
	b _021BE040
_021BE03A:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #4
_021BE040:
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x3c
	ldrb r2, [r0]
	cmp r2, #0
	beq _021BE056
	add r0, r5, #0
	mov r1, #0x99
	bl sub_0201CD1C
_021BE056:
	add r2, r4, #0
	add r2, #0x3d
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x13
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x3e
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x14
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x3f
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x15
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x40
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x16
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x17
	bl sub_0201CD1C
	add r2, r4, #0
	add r2, #0x41
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x18
	bl sub_0201CD1C
	mov r6, #0
	mov r7, #1
_021BE0AE:
	add r0, r7, #0
	ldrh r1, [r4, #0xc]
	lsl r0, r6
	tst r0, r1
	beq _021BE0C6
	ldr r1, _021BE114 ; =0x021BE924
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0201CD1C
_021BE0C6:
	add r6, r6, #1
	cmp r6, #0xf
	blo _021BE0AE
	ldr r2, [r4, #4]
	cmp r2, #0
	bne _021BE0DC
	ldr r2, _021BE118 ; =0x0208FF7C
	add r0, r5, #0
	mov r1, #0x77
	ldrb r2, [r2]
	b _021BE0E0
_021BE0DC:
	add r0, r5, #0
	mov r1, #0x77
_021BE0E0:
	bl sub_0201CD1C
	ldrb r2, [r4, #0x1d]
	cmp r2, #0
	bne _021BE0F4
	ldr r2, _021BE11C ; =0x0208FF80
	add r0, r5, #0
	mov r1, #0xc
	ldrb r2, [r2]
	b _021BE0F8
_021BE0F4:
	add r0, r5, #0
	mov r1, #0xc
_021BE0F8:
	bl sub_0201CD1C
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	bne _021BE120
_021BE102:
	add r0, r5, #0
	bl sub_0203A24C
_021BE108:
	mov r4, #0
	b _021BE256
	.align 2, 0
_021BE10C: .word 0x00000289
_021BE110: .word 0x0000FFFF
_021BE114: .word 0x021BE924
_021BE118: .word 0x0208FF7C
_021BE11C: .word 0x0208FF80
_021BE120:
	bl sub_020486F4
	ldrh r1, [r4, #0x1e]
	cmp r1, r0
	beq _021BE136
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x74
	add r2, #0x1e
	bl sub_0201CD1C
_021BE136:
	add r0, r4, #0
	add r0, #0x34
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _021BE14A
	mov r0, #0x19
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_021BE14A:
	add r0, r5, #0
	mov r1, #0x70
	bl sub_0201CD1C
	ldrh r2, [r4, #0x38]
	add r0, r5, #0
	mov r1, #0x95
	bl sub_0201CD1C
	ldrh r2, [r4, #0x3a]
	add r0, r5, #0
	mov r1, #0x96
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x4a
	ldrh r0, [r0]
	cmp r0, #0
	bne _021BE172
	b _021BE102
_021BE172:
	bl sub_020486F4
	add r1, r4, #0
	add r1, #0x4a
	ldrh r1, [r1]
	cmp r1, r0
	bne _021BE192
	ldr r0, [sp, #0x10]
	bl sub_0201736C
	bl sub_02008B94
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x8e
	b _021BE19A
_021BE192:
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x8e
	add r2, #0x4a
_021BE19A:
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x5a
	ldrb r2, [r0]
	cmp r2, #2
	bhi _021BE1AA
	b _021BE1B6
_021BE1AA:
	ldr r0, [sp, #0x10]
	bl sub_0201736C
	bl sub_02008BF0
	add r2, r0, #0
_021BE1B6:
	add r0, r5, #0
	mov r1, #0x9a
	bl sub_0201CD1C
	add r0, r4, #0
	add r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021BE1F8
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #1
	bl sub_0201CD1C
	ldr r0, _021BE2D0 ; =0x0209A434
	ldr r1, _021BE2D4 ; =0x0000028A
	ldr r0, [r0]
	bl sub_0204898C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x73
	add r2, r6, #0
	bl sub_0201CD1C
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	mov r1, #9
	mov r2, #0xa
	bl sub_0201CD1C
_021BE1F8:
	add r0, r4, #0
	add r0, #0xac
	ldr r0, [r0]
	asr r1, r0, #0x10
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	asr r1, r0, #8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	add r0, r4, #0
	add r0, #0x5c
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	ldrb r0, [r0]
	str r1, [sp, #0x38]
	cmp r0, #0
	beq _021BE21E
	ldrh r4, [r4, #0x38]
	b _021BE220
_021BE21E:
	ldrh r4, [r4, #0x3a]
_021BE220:
	add r0, r5, #0
	bl sub_0201D620
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r3, [sp, #0x38]
	add r1, r4, #0
	sub r2, r6, r2
	str r7, [sp]
	bl sub_02035A8C
	add r0, r5, #0
	bl sub_0201D5F4
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _021BE254
	add r0, r5, #0
	bl sub_0203A24C
	b _021BE256
_021BE254:
	add r4, r5, #0
_021BE256:
	cmp r4, #0
	bne _021BE25C
	b _021BE2C4
_021BE25C:
	add r0, r4, #0
	bl sub_0203A24C
	b _021BE2CA
_021BE264:
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #2
	beq _021BE270
	b _021BE27C
_021BE270:
	ldr r1, [r4]
	cmp r1, #0
	ble _021BE27C
	ldr r0, _021BE2D8 ; =0x0000027E
	cmp r1, r0
	ble _021BE27E
_021BE27C:
	mov r1, #0
_021BE27E:
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _021BE2CA
	b _021BE2C4
_021BE286:
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #3
	beq _021BE292
	b _021BE29C
_021BE292:
	ldr r0, [r4]
	cmp r0, #0x21
	blt _021BE29C
	cmp r0, #0x26
	ble _021BE29E
_021BE29C:
	mov r0, #0x30
_021BE29E:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x30
	bne _021BE2CA
	b _021BE2C4
_021BE2A8:
	add r0, r4, #0
	add r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #4
	beq _021BE2B4
	b _021BE2BE
_021BE2B4:
	ldr r0, [r4]
	cmp r0, #0x33
	blt _021BE2BE
	cmp r0, #0x36
	ble _021BE2C0
_021BE2BE:
	mov r0, #0x7f
_021BE2C0:
	cmp r0, #0x7f
	bne _021BE2CA
_021BE2C4:
	ldr r0, [sp, #0x3c]
	add r0, r0, #1
	str r0, [sp, #0x3c]
_021BE2CA:
	ldr r0, [sp, #0x3c]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021BE2D0: .word 0x0209A434
_021BE2D4: .word 0x0000028A
_021BE2D8: .word 0x0000027E
	thumb_func_end ovy197_21bdd74
_021BE2DC:
	.byte 0x00, 0x04, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x00, 0x06, 0x00, 0x06, 0x00, 0x03, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00
	.byte 0x6A, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00
	.byte 0x34, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x21, 0x54, 0x1B, 0x02, 0x49, 0x56, 0x1B, 0x02
	.byte 0x95, 0x55, 0x1B, 0x02, 0x01, 0x02, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00, 0x02, 0x06, 0x1C, 0x0F
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00
	.byte 0x40, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x04, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x00
	.byte 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0xC0, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0x10
	.byte 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0, 0x00, 0x00, 0x10, 0x42, 0x00, 0x00, 0x00, 0xF0
	.byte 0x00, 0x00, 0x10, 0x42, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x05
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x06, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x13, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x48, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x13
	.byte 0x2F, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x05, 0x02, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00, 0x05, 0x05, 0x1B, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00
	.byte 0x05, 0x09, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00, 0x05, 0x0D, 0x05, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00
	.byte 0x00, 0x04, 0x01, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x03, 0x03
	.byte 0x02, 0x02, 0x01, 0x01, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x1C, 0x07, 0xE2, 0xF8, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x04, 0x04, 0x08, 0x5C, 0x00, 0x2D, 0x00, 0x12, 0x04
	.byte 0x13, 0x08, 0xD4, 0x00, 0x2D, 0x00, 0x03, 0x0C, 0x04, 0x10, 0x5C, 0x00, 0x6E, 0x00, 0x12, 0x0C
	.byte 0x13, 0x10, 0xD4, 0x00, 0x6E, 0x00, 0x00, 0x00, 0x01, 0x01, 0x1E, 0x02, 0x44, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x39, 0x00, 0x00
	.byte 0x17, 0x14, 0x07, 0x02, 0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE2, 0x39, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x00
	.byte 0x6B, 0x00, 0x00, 0x00, 0x6C, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
	.byte 0x2C, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00
	.byte 0x32, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x01, 0x01, 0x1E, 0x02, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x39, 0x00, 0x00, 0x01, 0x16, 0x0B, 0x02
	.byte 0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xEA, 0x39, 0x00, 0x00, 0x17, 0x14, 0x07, 0x02, 0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE2, 0x39, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0xB3, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xBB, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xBA, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0xB6, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xB7, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0xB9, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xB7, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0x06, 0x02, 0x0D, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00, 0x02, 0x06, 0x1C, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x04, 0x00, 0x00, 0x02, 0x09, 0x1C, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x04, 0x00, 0x00, 0x04, 0x14, 0x0E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x3C, 0x00, 0x00, 0x12, 0x14, 0x0B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x3C, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x40, 0x04, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40, 0x3C, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x3C, 0x00, 0x00, 0x30, 0x00, 0x31, 0x01, 0x32, 0x02, 0x33, 0x03, 0x34, 0x04, 0x35, 0x05
	.byte 0x36, 0x06, 0x37, 0x07, 0x38, 0x08, 0x39, 0x09, 0x41, 0x0A, 0x42, 0x0B, 0x43, 0x0C, 0x44, 0x0D
	.byte 0x45, 0x0E, 0x46, 0x0F, 0x61, 0x0A, 0x62, 0x0B, 0x63, 0x0C, 0x64, 0x0D, 0x65, 0x0E, 0x66, 0x0F
	.byte 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0xDC, 0x1B, 0x02
	.byte 0x89, 0xDC, 0x1B, 0x02, 0x8D, 0xDC, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x80, 0x13, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x0D, 0x00
	.byte 0xF0, 0x00, 0x00, 0x00, 0x01, 0x58, 0x04, 0x01, 0x00, 0x00, 0x00, 0x09, 0x2C, 0x01, 0x00, 0x00
	.byte 0xF4, 0x01, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00, 0x6A, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00
	.byte 0x6C, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00
	.byte 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x66, 0x00, 0x00, 0x00, 0x67, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x6D, 0x79, 0x73, 0x74
	.byte 0x65, 0x72, 0x79, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x6D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x79, 0x5F, 0x75, 0x74, 0x69, 0x6C, 0x2E, 0x63, 0x00, 0x00
	.byte 0x6D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x79, 0x5F, 0x61, 0x6C, 0x62, 0x75, 0x6D, 0x2E, 0x63, 0x00
	.byte 0x6D, 0x79, 0x73, 0x74, 0x65, 0x72, 0x79, 0x5F, 0x6E, 0x65, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x49, 0x52, 0x41, 0x4F, 0x00, 0x00, 0x00, 0x00, 0x57, 0x58, 0x39, 0x78, 0x37, 0x5A, 0x68, 0x36
	.byte 0x4A, 0x33, 0x61, 0x42, 0x43, 0x34, 0x7A, 0x51, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x59, 0x53, 0x54
	.byte 0x45, 0x52, 0x59, 0x5F, 0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021BE2DC
