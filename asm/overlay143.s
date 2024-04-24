    .include "macros/function.inc"
	.include "overlay143.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy143_21998c0
ovy143_21998c0: ; 0x021998C0
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021999F4 ; =0x0400006C
	mov r1, #0xf
	add r6, r0, #0
	add r0, r5, #0
	mvn r1, r1
	add r7, r2, #0
	bl GXx_SetMasterBrightness_
	ldr r4, _021999F8 ; =0x0400106C
	mov r1, #0xf
	add r0, r4, #0
	mvn r1, r1
	bl GXx_SetMasterBrightness_
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	add r1, r5, #0
	sub r1, #0x6c
	ldr r0, [r1]
	ldr r3, _021999FC ; =0xFFFFE0FF
	sub r5, #0x1c
	and r0, r3
	str r0, [r1]
	add r0, r4, #0
	sub r0, #0x6c
	ldr r2, [r0]
	and r2, r3
	str r2, [r0]
	ldr r2, [r1]
	ldr r3, _02199A00 ; =0xFFFF1FFF
	and r2, r3
	str r2, [r1]
	ldr r1, [r0]
	mov r2, #8
	and r1, r3
	str r1, [r0]
	mov r0, #0xf
	str r0, [sp]
	add r0, r5, #0
	mov r1, #4
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #0xf
	sub r4, #0x1c
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #8
	mov r3, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #1
	bl sub_02046DF8
	mov r2, #1
	mov r0, #1
	mov r1, #0x61
	lsl r2, r2, #0x14
	bl GFL_HeapCreateChild
	mov r4, #0x61
	add r4, #0xdf
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	add r5, r0, #0
	mov r1, #0
	add r2, r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	mov r4, #0x30
	add r0, #0xf1
	strb r4, [r0]
	mov r0, #0x26
	mov r1, #0x61
	mov r6, #0x26
	bl sub_0204AA30
	str r0, [r5, #0x30]
	bl ovy143_2199c34
	bl sub_02199C90
	add r0, r5, #0
	bl ovy143_2199ca4
	bl ovy143_2199d18
	add r0, r5, #0
	add r1, r5, #0
	bl ovy143_2199da8
	add r0, r5, #0
	bl ovy143_2199ef4
	add r0, r5, #0
	bl ovy143_2199fb4
	add r0, r5, #0
	bl ovy143_219a050
	mov r0, #0x61
	bl sub_0201361C
	str r0, [r5, #0x34]
	mov r0, #0x61
	bl sub_0203A970
	lsl r1, r6, #3
	str r0, [r5, r1]
	mov r0, #0x61
	bl sub_0203A970
	mov r1, #0x61
	add r1, #0xd3
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x38
	mov r1, #6
	bl sub_0202E678
	ldr r0, _02199A04 ; =ovy143_219a10c
	add r1, r5, #0
	mov r2, #0xa
	mov r6, #0xa
	bl GFL_VBlankTCBAdd
	add r4, #0xfc
	str r0, [r5, r4]
	mov r0, #0
	mov r1, #0x61
	bl sub_02042BA8
	add r0, r5, #0
	add r0, #0xfc
	str r7, [r0]
	mov r0, #0xa
	add r0, #0xf6
	str r5, [r5, r0]
	add r0, r5, #0
	add r0, #0xf0
	add r6, #0xfa
	str r0, [r5, r6]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021999F4: .word 0x0400006C
_021999F8: .word 0x0400106C
_021999FC: .word 0xFFFFE0FF
_02199A00: .word 0xFFFF1FFF
_02199A04: .word ovy143_219a10c
	thumb_func_end ovy143_21998c0

	thumb_func_start ovy143_2199a08
ovy143_2199a08: ; 0x02199A08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r2]
	add r5, r1, #0
	add r4, r3, #0
	bl sub_02016B20
	ldr r0, [r5]
	cmp r0, #7
	bhi _02199A60
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02199A28: ; jump table
	.short _02199A38 - _02199A28 - 2 ; case 0
	.short _02199A56 - _02199A28 - 2 ; case 1
	.short _02199A58 - _02199A28 - 2 ; case 2
	.short _02199A64 - _02199A28 - 2 ; case 3
	.short _02199B5E - _02199A28 - 2 ; case 4
	.short _02199B72 - _02199A28 - 2 ; case 5
	.short _02199B74 - _02199A28 - 2 ; case 6
	.short _02199B7E - _02199A28 - 2 ; case 7
_02199A38:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	ldr r0, _02199B9C ; =0x00008061
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
_02199A48:
	mov r3, #0
	bl GFL_FadeScreenSet
_02199A4E:
	ldr r0, [r5]
_02199A50:
	add r0, r0, #1
	str r0, [r5]
	b _02199B84
_02199A56:
	b _02199A50
_02199A58:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	beq _02199A62
_02199A60:
	b _02199B84
_02199A62:
	b _02199A4E
_02199A64:
	ldr r6, _02199BA0 ; =0x0000012A
	ldrb r0, [r4, r6]
	cmp r0, #0
	bne _02199AC8
	add r0, r6, #0
	add r0, #0xf
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02199A98
	add r2, r6, #0
	add r2, #0xe
	ldrb r2, [r4, r2]
	add r0, r6, #6
	mov r1, #0
	lsl r3, r2, #3
	ldr r2, _02199BA4 ; =0x0219FE8C
	ldr r0, [r4, r0]
	ldr r2, [r2, r3]
	add r3, r4, #0
	mvn r1, r1
	add r3, #0xfc
	bl sub_0203A988
	mov r0, #1
	add r6, #0xf
	strb r0, [r4, r6]
_02199A98:
	ldr r6, _02199BA8 ; =0x0000013A
	ldrb r0, [r4, r6]
	cmp r0, #0
	bne _02199AC8
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	mov r7, #0
	bl sub_020232E8
	sub r2, r6, #2
	ldrb r2, [r4, r2]
	sub r0, r6, #6
	ldr r0, [r4, r0]
	lsl r3, r2, #3
	ldr r2, _02199BAC ; =0x0219FE90
	sub r1, r7, #1
	ldr r2, [r2, r3]
	add r3, r4, #0
	add r3, #0xfc
	bl sub_0203A988
	mov r0, #1
	strb r0, [r4, r6]
_02199AC8:
	mov r7, #0x4d
	lsl r7, r7, #2
	ldr r0, [r4, r7]
	bl sub_0203A978
	add r6, r0, #0
	add r0, r7, #0
	sub r0, #0xc
	ldrb r2, [r4, r0]
	cmp r2, #4
	beq _02199AEA
	cmp r6, #1
	beq _02199AF2
	sub r7, #0xa
	ldrb r0, [r4, r7]
	cmp r0, #1
	bne _02199AF2
_02199AEA:
	ldr r0, _02199BB0 ; =0x00000129
	mov r1, #1
	strb r1, [r4, r0]
	b _02199B10
_02199AF2:
	mov r3, #0x4e
	lsl r3, r3, #2
	ldrb r0, [r4, r3]
	cmp r0, r2
	beq _02199B10
	ldr r1, _02199BA4 ; =0x0219FE8C
	lsl r0, r0, #3
	lsl r2, r2, #3
	ldr r0, [r1, r0]
	ldr r1, [r1, r2]
	cmp r0, r1
	beq _02199B10
	mov r0, #1
	sub r3, #0xf
	strb r0, [r4, r3]
_02199B10:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0203A978
	cmp r0, #1
	bne _02199B22
	cmp r6, #1
	beq _02199B84
_02199B22:
	ldr r1, _02199BA0 ; =0x0000012A
	ldrb r2, [r4, r1]
	cmp r2, #1
	beq _02199B32
	sub r2, r1, #2
	ldrb r3, [r4, r2]
	cmp r3, #4
	bne _02199B3C
_02199B32:
	cmp r0, #0
	bne _02199B84
	cmp r6, #0
	bne _02199B84
	b _02199A4E
_02199B3C:
	add r2, r1, #0
	add r2, #0xe
	strb r3, [r4, r2]
	cmp r0, #1
	beq _02199B52
	add r0, r1, #0
	mov r2, #0
	add r0, #0xf
	strb r2, [r4, r0]
	sub r0, r1, #1
	strb r2, [r4, r0]
_02199B52:
	cmp r6, #1
	beq _02199B84
	ldr r0, _02199BA8 ; =0x0000013A
	mov r1, #0
	strb r1, [r4, r0]
	b _02199B84
_02199B5E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02199B9C ; =0x00008061
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	b _02199A48
_02199B72:
	b _02199A56
_02199B74:
	bl GFL_FadeScreenIsFinished
	cmp r0, #1
	bne _02199B84
	b _02199A4E
_02199B7E:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02199B84:
	ldr r0, [r4, #0x18]
	bl sub_0203A7F4
	ldr r0, [r4, #8]
	bl sub_02021A3C
	bl sub_0204B794
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02199B9C: .word 0x00008061
_02199BA0: .word 0x0000012A
_02199BA4: .word 0x0219FE8C
_02199BA8: .word 0x0000013A
_02199BAC: .word 0x0219FE90
_02199BB0: .word 0x00000129
	thumb_func_end ovy143_2199a08

	thumb_func_start ovy143_2199bb4
ovy143_2199bb4: ; 0x02199BB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r3, #0
	bl ovy143_219a11c
	mov r6, #0x13
	lsl r6, r6, #4
	ldr r0, [r4, r6]
	bl sub_0203A980
	add r0, r6, #4
	ldr r0, [r4, r0]
	bl sub_0203A980
	sub r0, r6, #4
	ldr r0, [r4, r0]
	bl GFL_TCBRemove
	ldr r0, [r4, #0x34]
	bl sub_0201362C
	add r0, r4, #0
	bl ovy143_219a0d0
	add r0, r4, #0
	bl ovy143_219a024
	add r0, r4, #0
	bl ovy143_2199f78
	add r0, r4, #0
	bl sub_02199EE0
	bl ovy143_2199d88
	add r0, r4, #0
	bl ovy143_2199cec
	bl sub_02199C9C
	bl sub_02199C88
	ldr r0, [r4, #0x30]
	bl GFL_ArcToolFree
	ldr r0, _02199C2C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _02199C30 ; =0x04001050
	strh r1, [r0]
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x61
	bl sub_0203A1D0
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02199C2C: .word 0x04000050
_02199C30: .word 0x04001050
	thumb_func_end ovy143_2199bb4

	thumb_func_start ovy143_2199c34
ovy143_2199c34: ; 0x02199C34
	push {r3, r4, r5, lr}
	ldr r0, _02199C80 ; =0x0219FEEC
	bl sub_02046C40
	mov r0, #0x61
	bl sub_020444A4
	ldr r0, _02199C84 ; =0x0219FE7C
	bl sub_02044710
	mov r5, #2
	mov r1, #6
	lsl r5, r5, #0x12
	mov r0, #0
	lsl r1, r1, #0x18
	add r2, r5, #0
	blx MIi_CpuClear32
	mov r1, #0x62
	lsr r4, r5, #2
	mov r0, #0
	lsl r1, r1, #0x14
	add r2, r4, #0
	blx MIi_CpuClear32
	mov r1, #0x19
	mov r0, #0
	lsl r1, r1, #0x16
	lsr r2, r5, #1
	blx MIi_CpuClear32
	mov r1, #0x66
	mov r0, #0
	lsl r1, r1, #0x14
	add r2, r4, #0
	blx MIi_CpuClear32
	pop {r3, r4, r5, pc}
	.align 2, 0
_02199C80: .word 0x0219FEEC
_02199C84: .word 0x0219FE7C
	thumb_func_end ovy143_2199c34

	thumb_func_start sub_02199C88
sub_02199C88: ; 0x02199C88
	ldr r3, _02199C8C ; =sub_02044528
	bx r3
	.align 2, 0
_02199C8C: .word sub_02044528
	thumb_func_end sub_02199C88

	thumb_func_start sub_02199C90
sub_02199C90: ; 0x02199C90
	ldr r3, _02199C98 ; =sub_02048080
	mov r0, #0x61
	bx r3
	nop
_02199C98: .word sub_02048080
	thumb_func_end sub_02199C90

	thumb_func_start sub_02199C9C
sub_02199C9C: ; 0x02199C9C
	ldr r3, _02199CA0 ; =sub_020480A8
	bx r3
	.align 2, 0
_02199CA0: .word sub_020480A8
	thumb_func_end sub_02199C9C

	thumb_func_start ovy143_2199ca4
ovy143_2199ca4: ; 0x02199CA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x61
	bl sub_02026DC0
	mov r4, #7
	lsl r4, r4, #6
	str r0, [r5]
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x61
	bl sub_02026E04
	ldr r0, [r5]
	mov r1, #3
	add r2, r4, #0
	mov r3, #0x61
	bl sub_02026E04
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x61
	bl sub_02026E04
	ldr r0, [r5]
	mov r1, #1
	add r2, r4, #0
	mov r3, #0x61
	bl sub_02026E04
	ldr r0, [r5]
	mov r1, #1
	bl sub_0202778C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_2199ca4

	thumb_func_start ovy143_2199cec
ovy143_2199cec: ; 0x02199CEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r4]
	mov r1, #3
	bl sub_02026E48
	ldr r0, [r4]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r4]
	mov r1, #1
	bl sub_02026E48
	ldr r0, [r4]
	bl sub_02026DE8
	pop {r4, pc}
	thumb_func_end ovy143_2199cec

	thumb_func_start ovy143_2199d18
ovy143_2199d18: ; 0x02199D18
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r1, _02199D80 ; =0x0219FEAC
	mov r0, #3
	mov r2, #0
	mov r5, #0
	bl sub_0204476C
	ldr r1, _02199D84 ; =0x0219FECC
	mov r0, #7
	mov r2, #0
	bl sub_0204476C
	mov r4, #0x20
	str r4, [sp]
	str r4, [sp, #4]
	mov r6, #0x11
	str r6, [sp, #8]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #7
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r6, [sp, #8]
	bl sub_02045604
	add r4, r5, #0
_02199D5C:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl sub_02044C98
	add r5, r5, #1
	cmp r5, #7
	ble _02199D5C
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #7
	mov r1, #1
	bl sub_02044C98
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02199D80: .word 0x0219FEAC
_02199D84: .word 0x0219FECC
	thumb_func_end ovy143_2199d18

	thumb_func_start ovy143_2199d88
ovy143_2199d88: ; 0x02199D88
	push {r3, lr}
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	mov r0, #7
	mov r1, #0
	bl sub_02044C98
	mov r0, #3
	bl sub_02044B84
	mov r0, #7
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy143_2199d88

	thumb_func_start ovy143_2199da8
ovy143_2199da8: ; 0x02199DA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r4, #0
	mov r7, #7
	str r4, [sp]
	lsl r7, r7, #6
	str r7, [sp, #4]
	str r4, [sp, #8]
	add r5, r1, #0
	str r4, [sp, #0xc]
	add r6, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #0x30]
	mov r2, #0x12
	mov r3, #0x61
	bl sub_02026F08
	mov r0, #1
	str r0, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r5, #0x30]
	mov r2, #0x13
	mov r3, #0x61
	bl sub_02026F08
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #0x11
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #0xb
	mov r2, #3
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0
	bl sub_0204ADA8
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #4
	mov r2, #7
	mov r3, #0
	bl sub_0204AF50
	str r4, [sp]
	str r4, [sp, #4]
	mov r7, #0xd0
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #0x17
	mov r2, #5
	mov r3, #0x61
	bl sub_02026E94
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #0x17
	mov r2, #5
	mov r3, #0x61
	bl sub_02026E94
	mov r0, #0x52
	mov r1, #0x61
	bl sub_0204AA30
	str r0, [sp, #0x10]
	mov r0, #7
	mov r1, #0x80
	mov r2, #1
	mov r7, #0x80
	bl sub_02044564
	mov r1, #0x80
	add r1, #0xbc
	str r0, [r6, r1]
	str r7, [sp]
	mov r3, #0x80
	str r4, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	add r3, #0xbc
	ldr r0, [sp, #0x10]
	ldr r3, [r6, r3]
	mov r1, #0x1c
	mov r2, #7
	bl sub_0204ADA8
	mov r0, #0xc
	str r0, [sp]
	add r7, #0xbc
	ldr r0, [sp, #0x10]
	ldr r3, [r6, r7]
	mov r1, #7
	mov r2, #0x61
	bl sub_0202D830
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	mov r2, #0x1b
	mov r3, #0x61
	bl sub_02026F5C
	ldr r0, [sp, #0x10]
	bl GFL_ArcToolFree
	mov r0, #7
	bl sub_02044F90
	mov r0, #3
	bl sub_02044F90
	mov r0, #7
	bl sub_02044F90
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_2199da8

	thumb_func_start sub_02199EE0
sub_02199EE0: ; 0x02199EE0
	mov r1, #0x4f
	add r2, r0, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r3, _02199EF0 ; =sub_02044668
	mov r0, #7
	mov r2, #0x80
	bx r3
	.align 2, 0
_02199EF0: .word sub_02044668
	thumb_func_end sub_02199EE0

	thumb_func_start ovy143_2199ef4
ovy143_2199ef4: ; 0x02199EF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	mov r0, #0x61
	mov r1, #0x61
	mov r2, #4
	mov r3, #0x20
	mov r5, #0x61
	bl GFL_TCBExMgrCreate
	str r0, [r4, #0x18]
	str r5, [sp]
	mov r0, #0x17
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl GFL_FontCreate
	str r0, [r4, #0xc]
	mov r0, #0x61
	bl sub_02021998
	str r0, [r4, #8]
	mov r0, #4
	mov r1, #0x40
	mov r2, #0x61
	bl sub_020241E4
	str r0, [r4, #0x10]
	mov r0, #0
	mov r1, #2
	mov r2, #0x57
	mov r3, #0x61
	mov r5, #0x57
	bl GFL_MsgSysLoadData
	mov r2, #0x57
	str r0, [r4, #0x1c]
	mov r0, #0
	mov r1, #2
	add r2, #0xb0
	mov r3, #0x61
	bl GFL_MsgSysLoadData
	add r5, #0xb1
	str r0, [r4, #0x20]
	mov r0, #0
	mov r1, #2
	add r2, r5, #0
	mov r3, #0x61
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x24]
	mov r0, #0
	mov r1, #2
	mov r2, #0x59
	mov r3, #0x61
	bl GFL_MsgSysLoadData
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_2199ef4

	thumb_func_start ovy143_2199f78
ovy143_2199f78: ; 0x02199F78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x24]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x28]
	bl GFL_MsgDataFree
	ldr r0, [r4, #0x10]
	bl GFL_WordSetSystemFree
	ldr r0, [r4, #8]
	bl sub_02021C44
	ldr r0, [r4, #8]
	bl sub_02021A18
	ldr r0, [r4, #0xc]
	bl sub_02022DA8
	ldr r0, [r4, #0x18]
	bl GFL_TCBExMgrFree
	pop {r4, pc}
	thumb_func_end ovy143_2199f78

	thumb_func_start ovy143_2199fb4
ovy143_2199fb4: ; 0x02199FB4
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _0219A01C ; =0x02093F08
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0x7c
	str r0, [r3]
	mov r3, #4
	add r0, sp, #0
	strb r3, [r0, #8]
	strb r1, [r0, #9]
	strb r3, [r0, #0xa]
	strb r1, [r0, #0xb]
	mov r1, #0x60
	strh r1, [r0, #0x10]
	mov r1, #0x40
	strh r1, [r0, #0x14]
	add r0, r2, #0
	ldr r1, _0219A020 ; =0x0219FEEC
	mov r2, #0x61
	bl sub_0204B6A8
	mov r0, #0x60
	mov r1, #0
	mov r2, #0x61
	bl sub_0204BF1C
	str r0, [r4, #0x14]
	bl sub_0204C028
	mov r0, #0x61
	mov r1, #0x10
	mov r2, #0x10
	bl sub_0202AC3C
	str r0, [r4, #4]
	ldr r1, [r4, #0x14]
	mov r0, #0x61
	bl sub_0202AE5C
	str r0, [r4, #0x2c]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_0219A01C: .word 0x02093F08
_0219A020: .word 0x0219FEEC
	thumb_func_end ovy143_2199fb4

	thumb_func_start ovy143_219a024
ovy143_219a024: ; 0x0219A024
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #0
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #0
	bl sub_02046D84
	ldr r0, [r4, #0x2c]
	bl sub_0202AEAC
	ldr r0, [r4, #0x14]
	bl sub_0204BF98
	bl sub_0204B758
	ldr r0, [r4, #4]
	bl sub_0202AC7C
	pop {r4, pc}
	thumb_func_end ovy143_219a024

	thumb_func_start ovy143_219a050
ovy143_219a050: ; 0x0219A050
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x17
	mov r1, #0x61
	bl sub_0204AA30
	str r0, [sp, #0xc]
	mov r7, #0
_0219A062:
	mov r6, #0
	cmp r7, #0
	beq _0219A06A
	mov r6, #1
_0219A06A:
	lsl r0, r7, #4
	add r4, r5, r0
	str r6, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x30]
	mov r3, #3
	bl sub_0202AD94
	str r0, [r4, #0x40]
	mov r0, #0x61
	str r0, [sp]
	ldr r0, [r5, #0x30]
	mov r1, #0
	mov r2, #1
	add r3, r6, #0
	bl Oam_LoadNCGRFile
	str r0, [r4, #0x44]
	ldr r0, [r5, #0x30]
	mov r1, #1
	mov r2, #2
	mov r3, #0x61
	bl Oam_LoadNCERFile
	str r0, [r4, #0x48]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0xc]
	mov r3, #5
	bl sub_0202ADE0
	add r7, r7, #1
	str r0, [r4, #0x4c]
	cmp r7, #2
	blt _0219A062
	ldr r0, [sp, #0xc]
	bl GFL_ArcToolFree
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219a050

	thumb_func_start ovy143_219a0d0
ovy143_219a0d0: ; 0x0219A0D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
_0219A0D6:
	mov r7, #0
	cmp r4, #0
	beq _0219A0DE
	mov r7, #1
_0219A0DE:
	lsl r0, r4, #4
	add r5, r6, r0
	ldr r0, [r6, #4]
	ldr r1, [r5, #0x40]
	add r2, r7, #0
	bl sub_0202AE3C
	ldr r0, [r5, #0x44]
	bl sub_0204B98C
	ldr r0, [r5, #0x48]
	bl sub_0204BE64
	ldr r0, [r6, #4]
	ldr r1, [r5, #0x4c]
	add r2, r7, #0
	bl sub_0202AE3C
	add r4, r4, #1
	cmp r4, #2
	blt _0219A0D6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219a0d0

	thumb_func_start ovy143_219a10c
ovy143_219a10c: ; 0x0219A10C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0204B7C8
	ldr r0, [r4]
	bl sub_020275F8
	pop {r4, pc}
	thumb_func_end ovy143_219a10c

	thumb_func_start ovy143_219a11c
ovy143_219a11c: ; 0x0219A11C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	bl sub_02016AD8
	add r4, r0, #0
	bl sub_02017394
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02017934
	bl sub_0200C62C
	add r4, r0, #0
	ldr r1, _0219A16C ; =0x0000404D
	add r0, r5, #0
	mov r6, #0
	bl sub_02019294
	add r7, r0, #0
	ldrh r0, [r7]
	cmp r0, #4
	bne _0219A16A
	add r5, r6, #0
_0219A14C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200C678
	cmp r0, #0x30
	beq _0219A15C
	mov r6, #1
	b _0219A162
_0219A15C:
	add r5, r5, #1
	cmp r5, #3
	blt _0219A14C
_0219A162:
	cmp r6, #1
	bne _0219A16A
	mov r0, #5
	strh r0, [r7]
_0219A16A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A16C: .word 0x0000404D
	thumb_func_end ovy143_219a11c

	thumb_func_start ovy143_219a170
ovy143_219a170: ; 0x0219A170
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r4, r1, #0
	str r0, [sp, #0x48]
	ldr r0, _0219A294 ; =0x0219FF24
	add r6, r3, #0
	ldrh r1, [r0]
	add r7, sp, #0x10
	str r2, [sp, #0xc]
	strh r1, [r7]
	ldrh r1, [r0, #2]
	ldr r3, _0219A298 ; =0x0219FF2C
	add r2, sp, #0x18
	strh r1, [r7, #2]
	ldrh r1, [r0, #4]
	strh r1, [r7, #4]
	ldrh r0, [r0, #6]
	strh r0, [r7, #6]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	beq _0219A1AE
	cmp r6, #1
	beq _0219A1BC
	cmp r6, #2
	b _0219A1C8
_0219A1AE:
	mov r1, #0
	strh r1, [r7, #4]
	ldr r1, [sp, #0x48]
	mov r0, #0x16
	sub r1, #0x58
_0219A1B8:
	strh r1, [r7, #0xc]
	b _0219A1D6
_0219A1BC:
	mov r1, #1
	strh r1, [r7, #4]
	ldr r1, [sp, #0x48]
	mov r0, #0x12
	sub r1, #0x48
	b _0219A1B8
_0219A1C8:
	mov r2, #8
	add r1, sp, #0x10
	strh r2, [r1, #4]
	ldr r2, [sp, #0x48]
	mov r0, #0xc
	sub r2, #0x30
	strh r2, [r1, #0xc]
_0219A1D6:
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	ldr r1, [sp, #0x48]
	str r0, [r4, #8]
	add r2, sp, #0x10
	strh r1, [r2]
	ldr r1, [sp, #0x4c]
	strh r1, [r2, #2]
	sub r1, #8
	strh r1, [r2, #0xe]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	lsl r1, r0, #4
	add r0, r5, r1
	ldr r0, [r0, #0x4c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0219A206
	mov r0, #0
	b _0219A208
_0219A206:
	mov r0, #1
_0219A208:
	str r0, [sp, #0x2c]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r0, sp, #0x10
	strh r2, [r0, #0x1a]
	add r0, sp, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	mov r7, #0x61
	str r7, [sp, #8]
	add r3, r5, r1
	ldr r0, [r5, #0x14]
	ldr r1, [r3, #0x44]
	ldr r2, [r3, #0x40]
	ldr r3, [r3, #0x48]
	bl sub_0204C040
	str r0, [r4]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0x18
	bl sub_0202AEC4
	str r0, [r4, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x50]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _0219A274
	mov r0, #0x80
	add r1, r7, #0
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #0x54]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	str r7, [sp]
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	mov r3, #0
	bl sub_02021C54
	add r0, r7, #0
	bl GFL_StrBufFree
	b _0219A286
_0219A274:
	str r6, [sp]
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	mov r3, #0
	bl sub_02021C54
_0219A286:
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r0, #1
	strb r0, [r4, #0xc]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A294: .word 0x0219FF24
_0219A298: .word 0x0219FF2C
	thumb_func_end ovy143_219a170

	thumb_func_start ovy143_219a29c
ovy143_219a29c: ; 0x0219A29C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r4, r1, #0
	str r0, [sp, #0x48]
	ldr r0, _0219A3EC ; =0x0219FF24
	add r6, r3, #0
	ldrh r1, [r0]
	add r7, sp, #0x14
	str r2, [sp, #0xc]
	strh r1, [r7]
	ldrh r1, [r0, #2]
	ldr r3, _0219A3F0 ; =0x0219FF2C
	add r2, sp, #0x1c
	strh r1, [r7, #2]
	ldrh r1, [r0, #4]
	strh r1, [r7, #4]
	ldrh r0, [r0, #6]
	strh r0, [r7, #6]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	beq _0219A2DA
	cmp r6, #1
	beq _0219A2E8
	cmp r6, #2
	b _0219A2F4
_0219A2DA:
	mov r0, #0
	strh r0, [r7, #4]
	ldr r0, [sp, #0x48]
	mov r6, #0x16
	sub r0, #0x58
_0219A2E4:
	strh r0, [r7, #0xc]
	b _0219A302
_0219A2E8:
	mov r0, #1
	strh r0, [r7, #4]
	ldr r0, [sp, #0x48]
	mov r6, #0x12
	sub r0, #0x48
	b _0219A2E4
_0219A2F4:
	mov r1, #8
	add r0, sp, #0x14
	strh r1, [r0, #4]
	ldr r1, [sp, #0x48]
	mov r6, #0xc
	sub r1, #0x30
	strh r1, [r0, #0xc]
_0219A302:
	add r0, r6, #0
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	ldr r1, [sp, #0x48]
	str r0, [r4, #8]
	add r2, sp, #0x14
	strh r1, [r2]
	ldr r1, [sp, #0x4c]
	strh r1, [r2, #2]
	sub r1, #8
	strh r1, [r2, #0xe]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	lsl r1, r0, #4
	add r0, r5, r1
	ldr r0, [r0, #0x4c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0219A334
	mov r0, #0
	b _0219A336
_0219A334:
	mov r0, #1
_0219A336:
	str r0, [sp, #0x30]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	add r0, sp, #0x14
	strh r2, [r0, #0x1a]
	add r0, sp, #0x14
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	add r3, r5, r1
	ldr r0, [r5, #0x14]
	ldr r1, [r3, #0x44]
	ldr r2, [r3, #0x40]
	ldr r3, [r3, #0x48]
	bl sub_0204C040
	str r0, [r4]
	ldr r0, [r5, #0x2c]
	add r1, sp, #0x1c
	bl sub_0202AEC4
	str r0, [r4, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0x50]
	bl sub_0204898C
	ldr r1, [r5, #0xc]
	mov r2, #0
	add r7, r0, #0
	bl GFL_FontGetBlockWidth
	lsl r2, r6, #3
	lsr r1, r2, #0x1f
	lsl r0, r0, #0xf
	add r1, r2, r1
	lsr r0, r0, #0x10
	asr r1, r1, #1
	sub r6, r1, r0
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _0219A3C2
	mov r0, #0x80
	mov r1, #0x61
	bl GFL_StrBufCreate
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [sp, #0x10]
	lsl r2, r6, #0x10
	str r0, [sp]
	ldr r0, [r5, #0xc]
	asr r2, r2, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x48
	ldrh r0, [r0, #0x10]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	bl sub_02021C7C
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	b _0219A3DC
_0219A3C2:
	str r7, [sp]
	ldr r0, [r5, #0xc]
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, sp, #0x48
	ldrh r0, [r0, #0x10]
	asr r2, r2, #0x10
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	bl sub_02021C7C
_0219A3DC:
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #1
	strb r0, [r4, #0xc]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0219A3EC: .word 0x0219FF24
_0219A3F0: .word 0x0219FF2C
	thumb_func_end ovy143_219a29c

	thumb_func_start ovy143_219a3f4
ovy143_219a3f4: ; 0x0219A3F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204C108
	ldr r0, [r4, #4]
	bl sub_0202B030
	ldr r0, [r4, #8]
	bl sub_02046EDC
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ovy143_219a3f4

	thumb_func_start ovy143_219a414
ovy143_219a414: ; 0x0219A414
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_0204C124
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0202B098
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219a414

	thumb_func_start ovy143_219a42c
ovy143_219a42c: ; 0x0219A42C
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xc]
	cmp r1, #1
	bne _0219A450
	ldr r0, [r0, #8]
	ldr r1, [r4, #8]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219A450
	ldr r0, [r4, #4]
	bl sub_0202B0F4
	mov r0, #0
	strb r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
_0219A450:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy143_219a42c

	thumb_func_start ovy143_219a454
ovy143_219a454: ; 0x0219A454
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r6, r2, #0
	add r5, r1, #0
	add r7, r3, #0
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _0219A496
_0219A468:
	cmp r4, r7
	bne _0219A484
	lsl r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	bl sub_0204C378
	ldr r0, [sp]
	ldr r2, [sp, #0x18]
	mov r1, #1
	bl ovy143_219a674
	b _0219A490
_0219A484:
	lsl r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #1
	bl sub_0204C378
_0219A490:
	add r4, r4, #1
	cmp r4, r6
	blt _0219A468
_0219A496:
	cmp r7, #0xff
	bne _0219A4A4
	ldr r0, [sp]
	ldr r2, [sp, #0x18]
	mov r1, #0
	bl ovy143_219a674
_0219A4A4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219a454

	thumb_func_start ovy143_219a4a8
ovy143_219a4a8: ; 0x0219A4A8
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r6, r2, #0
	add r5, r1, #0
	add r7, r3, #0
	mov r4, #0
	str r0, [sp, #0x18]
	cmp r6, #0
	ble _0219A4EA
_0219A4BC:
	cmp r4, r7
	bne _0219A4D8
	lsl r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	bl sub_0204C378
	ldr r0, [sp]
	ldr r2, [sp, #0x18]
	mov r1, #2
	bl ovy143_219a674
	b _0219A4E4
_0219A4D8:
	lsl r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r2, #1
	bl sub_0204C378
_0219A4E4:
	add r4, r4, #1
	cmp r4, r6
	blt _0219A4BC
_0219A4EA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219a4a8

	thumb_func_start ovy143_219a4ec
ovy143_219a4ec: ; 0x0219A4EC
	push {r3, lr}
	cmp r1, #1
	bne _0219A4FA
	mov r1, #1
	bl ovy143_219a674
	pop {r3, pc}
_0219A4FA:
	mov r1, #0
	bl ovy143_219a674
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219a4ec

	thumb_func_start sub_0219A504
sub_0219A504: ; 0x0219A504
	ldr r3, _0219A50C ; =ovy143_219a674
	add r2, r1, #0
	mov r1, #2
	bx r3
	.align 2, 0
_0219A50C: .word ovy143_219a674
	thumb_func_end sub_0219A504

	thumb_func_start ovy143_219a510
ovy143_219a510: ; 0x0219A510
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r4, r0, #0
	add r4, #0xc
	add r6, r5, #0
	mov r7, #8
_0219A51C:
	lsl r0, r5, #3
	add r0, r4, r0
	add r1, r6, #0
	add r2, r7, #0
	blx MI_CpuFill8
	add r5, r5, #1
	cmp r5, #4
	blt _0219A51C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219a510

	thumb_func_start sub_0219A530
sub_0219A530: ; 0x0219A530
	lsl r1, r1, #3
	add r0, r0, r1
	ldrb r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_0219A530

	thumb_func_start ovy143_219a538
ovy143_219a538: ; 0x0219A538
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xc
	lsl r0, r4, #3
	add r7, r1, r0
	cmp r4, #4
	blt _0219A556
	ldr r0, _0219A66C ; =0x021A0420
	ldr r2, _0219A670 ; =0x021A0424
	mov r1, #0
	bl sub_0203CB80
_0219A556:
	add r0, r4, #0
	bl sub_0219A6C0
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0219A6CC
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0219A6D8
	str r0, [sp, #8]
	ldrb r0, [r7, #2]
	cmp r0, #1
	beq _0219A57C
	cmp r0, #2
	beq _0219A5EC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219A57C:
	ldrb r0, [r7, #3]
	ldrh r1, [r7]
	cmp r0, #0
	bne _0219A594
	mov r2, #0x11
	add r1, #0x80
	lsl r2, r2, #8
	cmp r1, r2
	blt _0219A5A4
	mov r1, #1
	lsl r1, r1, #0xc
	b _0219A59E
_0219A594:
	sub r1, #0x80
	cmp r1, #0
	bgt _0219A5A4
	mov r1, #1
	lsl r1, r1, #8
_0219A59E:
	mov r2, #1
	eor r0, r2
	strb r0, [r7, #3]
_0219A5A4:
	ldr r0, [sp, #8]
	mov r6, #0
	strh r1, [r7]
	cmp r0, #0
	ble _0219A668
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0219A5B4:
	ldr r3, [sp, #0xc]
	ldr r0, [r5, #4]
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_020277E4
	str r7, [sp]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r2, r2, r6
	lsl r2, r2, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_02027880
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0219A5B4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219A5EC:
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _0219A664
	mov r0, #3
	strb r0, [r7, #4]
	ldrh r0, [r7]
	cmp r0, #0
	bne _0219A604
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r7]
	b _0219A61C
_0219A604:
	mov r1, #0
	strh r1, [r7]
	ldrb r0, [r7, #5]
	add r0, r0, #1
	strb r0, [r7, #5]
	ldrb r0, [r7, #5]
	cmp r0, #1
	bls _0219A61C
	add r0, r5, #0
	add r2, r4, #0
	bl ovy143_219a674
_0219A61C:
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _0219A668
_0219A624:
	ldr r3, [sp, #0xc]
	ldr r0, [r5, #4]
	add r3, r3, r6
	lsl r3, r3, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_020277E4
	ldrh r1, [r7]
	ldr r2, [sp, #0x10]
	mov r3, #1
	asr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r2, r2, r6
	lsl r2, r2, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_02027880
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _0219A624
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0219A664:
	sub r0, r0, #1
	strb r0, [r7, #4]
_0219A668:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219A66C: .word 0x021A0420
_0219A670: .word 0x021A0424
	thumb_func_end ovy143_219a538

	thumb_func_start ovy143_219a674
ovy143_219a674: ; 0x0219A674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	add r1, r5, #0
	add r1, #0xc
	lsl r0, r4, #3
	add r7, r1, r0
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	blx MI_CpuFill8
	add r0, r4, #0
	strb r6, [r7, #2]
	bl sub_0219A6C0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0219A6D8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	lsl r2, r6, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r0]
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_02027880
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219a674

	thumb_func_start sub_0219A6C0
sub_0219A6C0: ; 0x0219A6C0
	cmp r0, #1
	bhi _0219A6C8
	mov r0, #0x32
	bx lr
_0219A6C8:
	mov r0, #0x12
	bx lr
	thumb_func_end sub_0219A6C0

	thumb_func_start sub_0219A6CC
sub_0219A6CC: ; 0x0219A6CC
	cmp r0, #1
	bhi _0219A6D4
	mov r0, #0x42
	bx lr
_0219A6D4:
	mov r0, #0x22
	bx lr
	thumb_func_end sub_0219A6CC

	thumb_func_start sub_0219A6D8
sub_0219A6D8: ; 0x0219A6D8
	mov r0, #3
	bx lr
	thumb_func_end sub_0219A6D8

	thumb_func_start ovy143_219a6dc
ovy143_219a6dc: ; 0x0219A6DC
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_0201736C
	pop {r3, pc}
	thumb_func_end ovy143_219a6dc

	thumb_func_start ovy143_219a6ec
ovy143_219a6ec: ; 0x0219A6EC
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017208
	pop {r3, pc}
	thumb_func_end ovy143_219a6ec

	thumb_func_start ovy143_219a6fc
ovy143_219a6fc: ; 0x0219A6FC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r2, _0219A740 ; =0x0219FF5C
	add r4, r1, #0
	ldrh r5, [r2]
	add r1, sp, #0xc
	add r3, r0, #0
	strh r5, [r1]
	ldrh r5, [r2, #2]
	add r0, sp, #0xc
	strh r5, [r1, #2]
	ldrh r5, [r2, #4]
	strh r5, [r1, #4]
	ldrh r2, [r2, #6]
	strh r2, [r1, #6]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x54]
	ldr r2, [r3, #0x50]
	ldr r3, [r3, #0x58]
	bl sub_0204C040
	mov r1, #1
	add r5, r0, #0
	bl sub_0204C520
	str r5, [r4]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0219A740: .word 0x0219FF5C
	thumb_func_end ovy143_219a6fc

	thumb_func_start sub_0219A744
sub_0219A744: ; 0x0219A744
	ldr r0, [r0]
	ldr r3, _0219A74C ; =sub_0204C108
	bx r3
	nop
_0219A74C: .word sub_0204C108
	thumb_func_end sub_0219A744

	thumb_func_start ovy143_219a750
ovy143_219a750: ; 0x0219A750
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #1
	bne _0219A790
	ldrb r0, [r5, #5]
	mov r1, #5
	mov r6, #5
	blx sub_0208D65C
	cmp r1, #0
	bne _0219A78A
	ldrb r1, [r5, #6]
	ldr r0, [r5]
	mov r2, #1
	mov r4, #1
	bl sub_0204C378
	ldrb r0, [r5, #6]
	add r1, r6, #0
	eor r0, r4
	strb r0, [r5, #6]
	ldrb r0, [r5, #5]
	blx sub_0208D65C
	cmp r0, #3
	bne _0219A78A
	mov r0, #0
	strb r0, [r5, #4]
_0219A78A:
	ldrb r0, [r5, #5]
	add r0, r0, #1
	strb r0, [r5, #5]
_0219A790:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy143_219a750

	thumb_func_start sub_0219A794
sub_0219A794: ; 0x0219A794
	mov r2, #1
	mov r1, #0
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	bx lr
	thumb_func_end sub_0219A794

	thumb_func_start sub_0219A7A0
sub_0219A7A0: ; 0x0219A7A0
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_0219A7A0

	thumb_func_start ovy143_219a7a4
ovy143_219a7a4: ; 0x0219A7A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, r3, #0
	ldr r3, _0219A7F0 ; =0x0219FF1C
	add r5, r1, #0
	add r1, r2, #0
	ldrh r6, [r3]
	add r2, sp, #0xc
	add r7, sp, #0xc
	strh r6, [r2]
	ldrh r6, [r3, #2]
	strh r6, [r2, #2]
	ldrh r6, [r3, #4]
	strh r6, [r2, #4]
	ldrh r3, [r3, #6]
	strh r3, [r2, #6]
	strh r5, [r2]
	strh r1, [r2, #2]
	strh r0, [r2, #4]
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x54]
	ldr r2, [r4, #0x50]
	ldr r3, [r4, #0x58]
	bl sub_0204C040
	mov r1, #1
	add r4, r0, #0
	bl sub_0204C520
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219A7F0: .word 0x0219FF1C
	thumb_func_end ovy143_219a7a4

	thumb_func_start sub_0219A7F4
sub_0219A7F4: ; 0x0219A7F4
	ldr r3, _0219A7F8 ; =sub_0204C108
	bx r3
	.align 2, 0
_0219A7F8: .word sub_0204C108
	thumb_func_end sub_0219A7F4

	thumb_func_start sub_0219A7FC
sub_0219A7FC: ; 0x0219A7FC
	bx lr
	.align 2, 0
	thumb_func_end sub_0219A7FC

	thumb_func_start ovy143_219a800
ovy143_219a800: ; 0x0219A800
	push {r3, lr}
	add r3, r0, #0
	lsl r0, r1, #0x18
	str r2, [sp]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #8]
	lsr r0, r0, #0x18
	mov r1, #0xe
	bl sub_0202E168
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219a800

	thumb_func_start sub_0219A818
sub_0219A818: ; 0x0219A818
	ldr r3, _0219A81C ; =sub_0202E1DC
	bx r3
	.align 2, 0
_0219A81C: .word sub_0202E1DC
	thumb_func_end sub_0219A818

	thumb_func_start ovy143_219a820
ovy143_219a820: ; 0x0219A820
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r6, r1, #0
	mov r1, #0x20
	add r4, r2, #0
	bl sub_0204898C
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x28]
	mov r1, #0x21
	bl sub_0204898C
	str r0, [sp, #0x20]
	ldr r1, _0219A884 ; =0x000039E0
	add r0, sp, #0
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x24]
	mov r2, #0
	str r2, [sp, #0x1c]
	str r2, [sp, #0x28]
	str r4, [sp]
	mov r1, #2
	strb r1, [r0, #4]
	add r1, sp, #0x14
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r1, #0x18
	strb r1, [r0, #0x10]
	mov r1, #0xc
	strb r1, [r0, #0x11]
	mov r1, #8
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r0, sp, #0
	add r1, r6, #0
	bl sub_0202D974
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x20]
	bl GFL_StrBufFree
	add r0, r4, #0
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219A884: .word 0x000039E0
	thumb_func_end ovy143_219a820

	thumb_func_start sub_0219A888
sub_0219A888: ; 0x0219A888
	ldr r3, _0219A88C ; =sub_0202DA54
	bx r3
	.align 2, 0
_0219A88C: .word sub_0202DA54
	thumb_func_end sub_0219A888

	thumb_func_start ovy143_219a890
ovy143_219a890: ; 0x0219A890
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r0, r5, #0
	add r4, r3, #0
	bl sub_0202DB70
	add r0, r5, #0
	bl sub_0202DBE4
	cmp r0, #1
	bne _0219A8BC
	add r0, r5, #0
	bl sub_0202DC00
	cmp r0, #0
	bne _0219A8B4
	mov r0, #1
	b _0219A8B6
_0219A8B4:
	mov r0, #0
_0219A8B6:
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219A8BC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219a890

	thumb_func_start ovy143_219a8c0
ovy143_219a8c0: ; 0x0219A8C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp]
	add r6, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
_0219A8CE:
	cmp r4, #3
	beq _0219A8FC
	ldr r2, [sp]
	ldr r1, [r6, #0x34]
	ldr r2, [r2, #8]
	mov r0, #0xc
	add r2, r2, r4
	ldrb r3, [r2, #8]
	mov r2, #0xc
	add r7, r4, #0
	mul r2, r3
	add r1, r1, r2
	mul r7, r0
	add r0, sp, #0x20
	add r5, r0, r7
	ldrh r1, [r1, #4]
	ldr r0, [r6, #0x20]
	bl sub_0204898C
	add r1, sp, #0x20
	str r0, [r1, r7]
	mov r0, #0
	b _0219A914
_0219A8FC:
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	add r0, sp, #0x20
	add r5, r0, r7
	ldr r0, [r6, #0x28]
	mov r1, #0x4a
	bl sub_0204898C
	add r1, sp, #0x20
	str r0, [r1, r7]
	mov r0, #1
_0219A914:
	str r0, [r5, #8]
	ldr r0, _0219A964 ; =0x000039E0
	add r4, r4, #1
	strh r0, [r5, #4]
	cmp r4, #4
	blt _0219A8CE
	ldr r0, [sp, #8]
	mov r1, #4
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	strb r1, [r0, #4]
	add r4, sp, #0x20
	mov r5, #0
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	mov r1, #0xc
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	mov r1, #0x14
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	ldr r1, [sp, #4]
	add r0, sp, #0xc
	bl sub_0202D974
	add r7, r0, #0
	mov r6, #0xc
_0219A94E:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	add r5, r5, #1
	cmp r5, #4
	blt _0219A94E
	add r0, r7, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219A964: .word 0x000039E0
	thumb_func_end ovy143_219a8c0

	thumb_func_start sub_0219A968
sub_0219A968: ; 0x0219A968
	ldr r3, _0219A96C ; =sub_0202DA54
	bx r3
	.align 2, 0
_0219A96C: .word sub_0202DA54
	thumb_func_end sub_0219A968

	thumb_func_start ovy143_219a970
ovy143_219a970: ; 0x0219A970
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_0202DB70
	add r0, r5, #0
	bl sub_0202DBE4
	cmp r0, #1
	bne _0219A992
	add r0, r5, #0
	bl sub_0202DC00
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0219A992:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219a970

	thumb_func_start ovy143_219a998
ovy143_219a998: ; 0x0219A998
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r2, [sp, #8]
	bl ovy143_219a6ec
	mov r7, #0x14
	cmp r4, #0
	beq _0219A9AC
	mov r7, #0xe
_0219A9AC:
	ldrh r4, [r0, #0xc]
	ldrh r6, [r0, #0xe]
	cmp r4, r6
	bne _0219A9BA
	mov r0, #0x78
	mov r5, #0x78
	b _0219A9D2
_0219A9BA:
	mov r0, #0xf0
	mul r0, r4
	add r1, r4, r6
	blx sub_0208D65C
	cmp r6, #0
	ble _0219A9CE
	mov r1, #0xf0
	sub r5, r1, r0
	b _0219A9D2
_0219A9CE:
	mov r5, #0
	mov r0, #0xf0
_0219A9D2:
	cmp r4, #0
	ble _0219A9DE
	cmp r0, #0
	bne _0219A9DE
	sub r5, r5, #1
	b _0219A9E8
_0219A9DE:
	cmp r6, #0
	ble _0219A9E8
	cmp r5, #0
	bne _0219A9E8
	add r5, r5, #1
_0219A9E8:
	ldr r0, _0219AA68 ; =0x0000052A
	ldr r3, _0219AA6C ; =0x021A043C
	str r0, [sp]
	mov r0, #0x61
	mov r1, #0x3c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	mov r1, #0
	cmp r5, #0
	ble _0219AA20
	add r3, r1, #0
	mov r0, #1
	mov r2, #9
_0219AA06:
	cmp r5, #8
	blt _0219AA12
	lsl r6, r1, #1
	strh r0, [r4, r6]
	sub r5, #8
	b _0219AA1A
_0219AA12:
	sub r6, r2, r5
	lsl r5, r1, #1
	strh r6, [r4, r5]
	add r5, r3, #0
_0219AA1A:
	add r1, r1, #1
	cmp r5, #0
	bgt _0219AA06
_0219AA20:
	cmp r1, #0x1e
	bge _0219AA30
	mov r2, #9
_0219AA26:
	lsl r0, r1, #1
	add r1, r1, #1
	strh r2, [r4, r0]
	cmp r1, #0x1e
	blt _0219AA26
_0219AA30:
	mov r0, #1
	mov r3, #0
	lsl r0, r0, #0xc
_0219AA36:
	lsl r2, r3, #1
	ldrh r1, [r4, r2]
	add r3, r3, #1
	orr r1, r0
	strh r1, [r4, r2]
	cmp r3, #0x1e
	blt _0219AA36
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r3, r7, #0x18
	lsl r0, r0, #0x18
	mov r2, #1
	lsr r0, r0, #0x18
	add r1, r4, #0
	lsr r3, r3, #0x18
	str r2, [sp, #4]
	bl sub_020454AC
	add r0, r4, #0
	bl GFL_HeapFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219AA68: .word 0x0000052A
_0219AA6C: .word 0x021A043C
	thumb_func_end ovy143_219a998

	thumb_func_start ovy143_219aa70
ovy143_219aa70: ; 0x0219AA70
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_02016AD8
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x4c
	add r5, r0, #0
	blx MI_CpuFill8
	bl ovy143_219ad10
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219ad58
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219af54
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219ac24
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0219ACEC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219aa70

	thumb_func_start ovy143_219aac4
ovy143_219aac4: ; 0x0219AAC4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r2, #0
	ldr r0, [r5]
	add r4, r3, #0
	ldr r0, [r0]
	add r6, r1, #0
	bl sub_02016B20
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219accc
	add r0, r4, #0
	bl sub_0219AD04
	add r0, r5, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219AAF4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0219AAF4:
	ldr r0, [r6]
	cmp r0, #3
	bhi _0219ABBE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219AB06: ; jump table
	.short _0219AB0E - _0219AB06 - 2 ; case 0
	.short _0219AB1C - _0219AB06 - 2 ; case 1
	.short _0219AB4C - _0219AB06 - 2 ; case 2
	.short _0219AB90 - _0219AB06 - 2 ; case 3
_0219AB0E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219ae38
	cmp r0, #1
	bne _0219ABBE
	b _0219AB46
_0219AB1C:
	mov r0, #0x31
	ldrsb r0, [r4, r0]
	cmp r0, #3
	beq _0219AB38
	mov r2, #3
	str r2, [sp]
	mov r3, #0x30
	ldrsb r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219a4a8
	ldr r0, _0219ABC4 ; =0x0000054C
	b _0219AB42
_0219AB38:
	add r4, #0x38
	add r0, r4, #0
	bl sub_0219A794
	ldr r0, _0219ABC8 ; =0x00000551
_0219AB42:
	bl GFL_SndSEPlay
_0219AB46:
	ldr r0, [r6]
	add r0, r0, #1
	b _0219ABBC
_0219AB4C:
	mov r6, #0x31
	ldrsb r0, [r4, r6]
	cmp r0, #3
	beq _0219AB72
	add r0, r5, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219ABBE
	ldrsb r0, [r4, r6]
	add r5, #0x2c
	add sp, #4
	lsl r1, r0, #1
	ldr r0, _0219ABCC ; =0x0219FF68
	ldrsh r0, [r0, r1]
	strb r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0219AB72:
	add r0, r4, #0
	add r0, #0x38
	bl sub_0219A7A0
	cmp r0, #0
	bne _0219ABBE
	ldrsb r0, [r4, r6]
	add r5, #0x2c
	add sp, #4
	lsl r1, r0, #1
	ldr r0, _0219ABCC ; =0x0219FF68
	ldrsh r0, [r0, r1]
	strb r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0219AB90:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0219ADD4
	cmp r0, #1
	bne _0219ABBE
	bl sub_0203DA48
	cmp r0, #0
	bne _0219ABAE
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219ABBE
_0219ABAE:
	add r0, r4, #0
	bl ovy143_219ade0
	ldr r0, _0219ABD0 ; =0x00000547
	bl GFL_SndSEPlay
	mov r0, #0
_0219ABBC:
	str r0, [r6]
_0219ABBE:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219ABC4: .word 0x0000054C
_0219ABC8: .word 0x00000551
_0219ABCC: .word 0x0219FF68
_0219ABD0: .word 0x00000547
	thumb_func_end ovy143_219aac4

	thumb_func_start ovy143_219abd4
ovy143_219abd4: ; 0x0219ABD4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219ABEA
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219ABEA:
	mov r0, #8
	bl sub_02046DC0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _0219ABFA
	bl sub_020223CC
_0219ABFA:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0219AC04
	bl GFL_StrBufFree
_0219AC04:
	add r0, r4, #0
	bl ovy143_219acb4
	add r0, r4, #0
	bl sub_0219ACF8
	add r0, r4, #0
	bl sub_0219ADC8
	bl ovy143_219ad44
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219abd4

	thumb_func_start ovy143_219ac24
ovy143_219ac24: ; 0x0219AC24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r6, r1, #0
	ldr r5, _0219ACA8 ; =0x0219FF9C
	bl ovy143_219a510
	mov r4, #0
_0219AC34:
	mov r0, #0
	ldrsh r3, [r5, r0]
	sub r0, r0, #1
	cmp r3, r0
	beq _0219AC7C
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r2, #1
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #6
	ldrsh r0, [r5, r0]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x34]
	lsl r0, r0, #2
	add r0, r4, r0
	lsl r1, r0, #1
	ldr r0, _0219ACAC ; =0x0219FF84
	ldrsh r0, [r0, r1]
	lsl r1, r0, #1
	ldr r0, _0219ACB0 ; =0x0219FF64
	ldrh r0, [r0, r1]
	lsl r1, r4, #4
	add r1, r6, r1
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	bl ovy143_219a29c
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _0219AC34
_0219AC7C:
	bl sub_0203D554
	cmp r0, #0
	bne _0219AC9E
	mov r2, #3
	str r2, [sp]
	mov r3, #0x30
	ldrsb r3, [r6, r3]
	add r0, r7, #0
	add r1, r6, #0
	bl ovy143_219a454
	mov r0, #0
	add r6, #0x33
	add sp, #0x14
	strb r0, [r6]
	pop {r4, r5, r6, r7, pc}
_0219AC9E:
	mov r0, #1
	add r6, #0x33
	strb r0, [r6]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219ACA8: .word 0x0219FF9C
_0219ACAC: .word 0x0219FF84
_0219ACB0: .word 0x0219FF64
	thumb_func_end ovy143_219ac24

	thumb_func_start ovy143_219acb4
ovy143_219acb4: ; 0x0219ACB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219ACBA:
	lsl r0, r4, #4
	add r0, r5, r0
	bl ovy143_219a3f4
	add r4, r4, #1
	cmp r4, #3
	blt _0219ACBA
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219acb4

	thumb_func_start ovy143_219accc
ovy143_219accc: ; 0x0219ACCC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #3
	add r5, r0, #0
	bl ovy143_219a538
	mov r4, #0
_0219ACDA:
	lsl r1, r4, #4
	ldr r0, [r5, #4]
	add r1, r6, r1
	bl ovy143_219a42c
	add r4, r4, #1
	cmp r4, #3
	blt _0219ACDA
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219accc

	thumb_func_start sub_0219ACEC
sub_0219ACEC: ; 0x0219ACEC
	ldr r0, [r0, #4]
	ldr r3, _0219ACF4 ; =ovy143_219a6fc
	add r1, #0x38
	bx r3
	.align 2, 0
_0219ACF4: .word ovy143_219a6fc
	thumb_func_end sub_0219ACEC

	thumb_func_start sub_0219ACF8
sub_0219ACF8: ; 0x0219ACF8
	ldr r3, _0219AD00 ; =sub_0219A744
	add r0, #0x38
	bx r3
	nop
_0219AD00: .word sub_0219A744
	thumb_func_end sub_0219ACF8

	thumb_func_start sub_0219AD04
sub_0219AD04: ; 0x0219AD04
	ldr r3, _0219AD0C ; =ovy143_219a750
	add r0, #0x38
	bx r3
	nop
_0219AD0C: .word ovy143_219a750
	thumb_func_end sub_0219AD04

	thumb_func_start ovy143_219ad10
ovy143_219ad10: ; 0x0219AD10
	push {lr}
	sub sp, #0xc
	ldr r1, _0219AD40 ; =0x0219FFBC
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	add sp, #0xc
	pop {pc}
	.align 2, 0
_0219AD40: .word 0x0219FFBC
	thumb_func_end ovy143_219ad10

	thumb_func_start ovy143_219ad44
ovy143_219ad44: ; 0x0219AD44
	push {r3, lr}
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219ad44

	thumb_func_start ovy143_219ad58
ovy143_219ad58: ; 0x0219AD58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #1
	mov r2, #0
	mov r3, #0x61
	mov r6, #1
	mov r7, #0
	bl sub_02024C98
	mov r0, #0
	bl sub_02024C8C
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #5
	mov r3, #0x61
	bl sub_02026E94
	mov r0, #4
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #5
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x40]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x40]
	bl sub_0204826C
	ldr r0, [r5, #0x40]
	mov r1, #0
	mov r2, #1
	mov r3, #0xb
	bl sub_02024E80
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219ad58

	thumb_func_start sub_0219ADC8
sub_0219ADC8: ; 0x0219ADC8
	ldr r0, [r0, #0x40]
	ldr r3, _0219ADD0 ; =sub_02048210
	bx r3
	nop
_0219ADD0: .word sub_02048210
	thumb_func_end sub_0219ADC8

	thumb_func_start sub_0219ADD4
sub_0219ADD4: ; 0x0219ADD4
	ldr r1, [r1, #0x44]
	ldr r3, _0219ADDC ; =sub_0202E68C
	add r0, #0x38
	bx r3
	.align 2, 0
_0219ADDC: .word sub_0202E68C
	thumb_func_end sub_0219ADD4

	thumb_func_start ovy143_219ade0
ovy143_219ade0: ; 0x0219ADE0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl BmpWin_GetBitmap
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _0219ADFC
	ldr r0, _0219AE30 ; =0x021A044C
	ldr r2, _0219AE34 ; =0x021A0450
	mov r1, #0
	bl sub_0203CB80
_0219ADFC:
	ldr r0, [r5, #0x44]
	bl sub_020223CC
	mov r6, #0
	ldr r0, [r5, #0x48]
	str r6, [r5, #0x44]
	bl GFL_StrBufFree
	mov r0, #5
	mov r1, #0
	str r6, [r5, #0x48]
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0xff
	bl BmpWin_BitmapFill
	ldr r0, [r5, #0x40]
	bl BmpWin_FlushChar
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219AE30: .word 0x021A044C
_0219AE34: .word 0x021A0450
	thumb_func_end ovy143_219ade0

	thumb_func_start ovy143_219ae38
ovy143_219ae38: ; 0x0219AE38
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0219AF44 ; =0x0219FF70
	mov r4, #0
	add r5, r1, #0
	bl sub_0203DA0C
	add r6, r0, #0
	sub r0, r4, #1
	cmp r6, r0
	beq _0219AE92
	lsl r0, r6, #0x18
	asr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0x30
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x31
	strb r1, [r0]
	mov r0, #1
	bl sub_0203D564
	add r0, r5, #0
	add r0, #0x33
	strb r4, [r0]
	ldr r0, [r5, #0x34]
	lsl r0, r0, #2
	add r0, r6, r0
	lsl r1, r0, #1
	ldr r0, _0219AF48 ; =0x0219FF84
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0219AE7E
	mov r4, #1
	b _0219AF3E
_0219AE7E:
	mov r2, #3
	str r2, [sp]
	mov r3, #0x30
	ldrsb r3, [r5, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy143_219a454
_0219AE8E:
	ldr r0, _0219AF4C ; =0x00000557
	b _0219AF3A
_0219AE92:
	bl sub_0203DF44
	add r6, r0, #0
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	ble _0219AEB8
	add r1, r5, #0
	add r1, #0x33
	ldrb r1, [r1]
	cmp r1, #1
	bne _0219AEB8
	add r0, r4, #0
	bl sub_0203D564
	add r0, r5, #0
	add r0, #0x33
	strb r4, [r0]
	b _0219AF28
_0219AEB8:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _0219AEDE
	mov r0, #0x30
	ldr r2, [r5, #0x34]
	ldrsb r0, [r5, r0]
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r3, r2, #1
	ldr r2, _0219AF48 ; =0x0219FF84
	ldrsh r2, [r2, r3]
	cmp r2, #1
	bne _0219AEDC
_0219AED4:
	add r5, #0x31
	strb r0, [r5]
	add r4, r1, #0
	b _0219AF3E
_0219AEDC:
	b _0219AE8E
_0219AEDE:
	mov r2, #2
	tst r0, r2
	beq _0219AEE8
	mov r0, #3
	b _0219AED4
_0219AEE8:
	mov r0, #0x80
	tst r0, r6
	beq _0219AF0A
	mov r1, #0x30
	ldrsb r0, [r5, r1]
	add r2, r0, #1
	add r0, r5, #0
	add r0, #0x30
	strb r2, [r0]
	ldrsb r0, [r5, r1]
	cmp r0, #3
	blt _0219AF08
	add r0, r5, #0
	mov r1, #0
	add r0, #0x30
	strb r1, [r0]
_0219AF08:
	b _0219AF28
_0219AF0A:
	mov r0, #0x40
	tst r0, r6
	beq _0219AF3E
	mov r1, #0x30
	ldrsb r0, [r5, r1]
	sub r3, r0, #1
	add r0, r5, #0
	add r0, #0x30
	strb r3, [r0]
	ldrsb r0, [r5, r1]
	cmp r0, #0
	bge _0219AF28
	add r0, r5, #0
	add r0, #0x30
	strb r2, [r0]
_0219AF28:
	mov r2, #3
	str r2, [sp]
	mov r3, #0x30
	ldrsb r3, [r5, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ovy143_219a454
	ldr r0, _0219AF50 ; =0x00000548
_0219AF3A:
	bl GFL_SndSEPlay
_0219AF3E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219AF44: .word 0x0219FF70
_0219AF48: .word 0x0219FF84
_0219AF4C: .word 0x00000557
_0219AF50: .word 0x00000548
	thumb_func_end ovy143_219ae38

	thumb_func_start ovy143_219af54
ovy143_219af54: ; 0x0219AF54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017394
	ldr r1, _0219AFA4 ; =0x00000986
	add r6, r0, #0
	bl sub_020191AC
	cmp r0, #0
	bne _0219AF76
	mov r0, #1
	str r0, [r4, #0x34]
_0219AF76:
	ldr r1, _0219AFA8 ; =0x0000404D
	add r0, r6, #0
	bl sub_02019294
	ldrh r0, [r0]
	cmp r0, #4
	bne _0219AF88
	mov r0, #2
	str r0, [r4, #0x34]
_0219AF88:
	ldr r1, [r5, #8]
	mov r0, #6
	ldrsb r1, [r1, r0]
	add r0, r4, #0
	add r0, #0x30
	strb r1, [r0]
	mov r0, #0x30
	ldrsb r0, [r4, r0]
	add r4, #0x31
	mov r1, #0
	strb r0, [r4]
	ldr r0, [r5, #8]
	strb r1, [r0, #6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219AFA4: .word 0x00000986
_0219AFA8: .word 0x0000404D
	thumb_func_end ovy143_219af54

	thumb_func_start ovy143_219afac
ovy143_219afac: ; 0x0219AFAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4]
	add r7, r2, #0
	str r3, [sp]
	cmp r1, #0
	beq _0219AFC2
	cmp r1, #1
	beq _0219B000
	b _0219B070
_0219AFC2:
	mov r1, #0x50
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x50
	add r5, r0, #0
	blx MI_CpuFill8
	bl ovy143_219b188
	ldr r0, [r7, #4]
	bl ovy143_219b1f4
	ldr r0, [r7, #4]
	add r1, r5, #0
	bl ovy143_219b220
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0219B688
	ldr r1, [r7, #4]
	add r0, r7, #0
	add r2, r5, #0
	bl ovy143_219b324
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219B070
_0219B000:
	mov r0, #0
	str r0, [sp, #4]
	mov r4, #0
_0219B006:
	ldr r0, [r7, #4]
	lsl r1, r4, #3
	ldr r6, [r0, #8]
	ldr r0, [sp]
	add r5, r0, r1
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0219B032
	ldr r0, [r5, #0x18]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B032
	ldr r0, [r5, #0x18]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x1c]
_0219B032:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	bne _0219B03C
	mov r0, #1
	b _0219B03E
_0219B03C:
	mov r0, #0
_0219B03E:
	cmp r0, #0
	bne _0219B046
	mov r0, #1
	str r0, [sp, #4]
_0219B046:
	add r4, r4, #1
	cmp r4, #6
	blt _0219B006
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0219B070
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B070:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219afac

	thumb_func_start ovy143_219b078
ovy143_219b078: ; 0x0219B078
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r0, r2, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r7, r3, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r0, #1
	bne _0219B092
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B092:
	mov r4, #0
_0219B094:
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	ldr r6, [r0, #8]
	lsl r0, r4, #3
	add r5, r7, r0
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0219B0C0
	ldr r0, [r5, #0x18]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B0C0
	ldr r0, [r5, #0x18]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x1c]
_0219B0C0:
	add r4, r4, #1
	cmp r4, #6
	blt _0219B094
	add r0, r7, #0
	bl sub_0219B6A0
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _0219B0DA
	cmp r0, #1
	beq _0219B11E
	b _0219B140
_0219B0DA:
	bl GCTX_HIDGetPressedKeys
	add r4, r0, #0
	ldr r0, _0219B148 ; =0x0219FFE8
	bl sub_0203DA0C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219B0F4
	mov r0, #2
	tst r0, r4
	beq _0219B140
_0219B0F4:
	add r7, #0x48
	add r0, r7, #0
	bl sub_0219A794
	mov r0, #2
	tst r0, r4
	beq _0219B106
	mov r0, #0
	b _0219B108
_0219B106:
	mov r0, #1
_0219B108:
	bl sub_0203D564
	ldr r0, _0219B14C ; =0x00000551
	bl GFL_SndSEPlay
	ldr r0, [sp]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0]
	b _0219B140
_0219B11E:
	add r7, #0x48
	add r0, r7, #0
	bl sub_0219A7A0
	cmp r0, #0
	bne _0219B140
	ldr r0, [sp, #4]
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [sp, #4]
	mov r1, #2
	ldr r0, [r0, #8]
	add sp, #8
	strb r1, [r0, #6]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B140:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219B148: .word 0x0219FFE8
_0219B14C: .word 0x00000551
	thumb_func_end ovy143_219b078

	thumb_func_start ovy143_219b150
ovy143_219b150: ; 0x0219B150
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219B166
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219B166:
	mov r0, #8
	bl sub_02046DC0
	add r0, r4, #0
	bl sub_0219B694
	add r0, r4, #0
	bl ovy143_219b30c
	bl ovy143_219b1d4
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219b150

	thumb_func_start ovy143_219b188
ovy143_219b188: ; 0x0219B188
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0219B1CC ; =0x021A0014
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219B1D0 ; =0x021A0034
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	str r4, [sp, #8]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219B1CC: .word 0x021A0014
_0219B1D0: .word 0x021A0034
	thumb_func_end ovy143_219b188

	thumb_func_start ovy143_219b1d4
ovy143_219b1d4: ; 0x0219B1D4
	push {r3, lr}
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy143_219b1d4

	thumb_func_start ovy143_219b1f4
ovy143_219b1f4: ; 0x0219B1F4
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0x61
	str r1, [sp, #8]
	ldr r0, [r0, #0x30]
	mov r1, #5
	mov r2, #6
	bl sub_0204AF50
	mov r0, #6
	bl sub_02044F90
	mov r0, #4
	bl sub_02044F90
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ovy143_219b1f4

	thumb_func_start ovy143_219b220
ovy143_219b220: ; 0x0219B220
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #3
	str r0, [sp]
	mov r6, #0xd
	add r5, r1, #0
	str r6, [sp, #4]
	mov r7, #1
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #0
	mov r3, #0x1e
	mov r4, #0
	bl BmpWin_CreateDynamic
	str r0, [r5]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #5
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #4]
	bl BmpWin_FlushChar
	ldr r0, [r5, #4]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #7
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #8]
	bl BmpWin_FlushChar
	ldr r0, [r5, #8]
	bl sub_0204826C
	mov r0, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #9
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0xc]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0xc]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #0xe
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x10]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x10]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	mov r1, #2
	mov r2, #0x10
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0x14]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0x14]
	bl sub_0204826C
	add r0, r4, #0
_0219B2EE:
	lsl r1, r4, #3
	add r2, r5, r1
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r4, r4, #1
	str r1, [r2, #0x18]
	strb r0, [r2, #0x1c]
	cmp r4, #6
	blt _0219B2EE
	mov r0, #4
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219b220

	thumb_func_start ovy143_219b30c
ovy143_219b30c: ; 0x0219B30C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219B312:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #6
	blt _0219B312
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219b30c

	thumb_func_start ovy143_219b324
ovy143_219b324: ; 0x0219B324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ovy143_219a6dc
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010DEC
	str r0, [sp, #0x34]
	add r0, r6, #0
	bl ovy143_219a6ec
	mov r7, #1
	lsl r7, r7, #8
	add r0, r7, #0
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #4
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x18]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r3, #4
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #0x1c]
	ldr r0, [r5, #0x28]
	mov r1, #0xc
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x24
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x34]
	bl sub_02010DF8
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x28]
	mov r1, #0x11
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x38]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	mov r2, #1
	bl ovy143_219b6ac
	str r0, [sp, #0x3c]
	ldr r0, [r5, #8]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x3c]
	mov r3, #0xe0
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x28]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x24
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	mov r1, #0xd
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x28]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x2c
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x34]
	bl sub_02010E24
	str r0, [sp, #0x40]
	ldr r0, [r5, #0x28]
	mov r1, #0x12
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x40]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	mov r2, #1
	bl ovy143_219b6ac
	str r0, [sp, #0x44]
	ldr r0, [r5, #8]
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x28]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x44]
	mov r3, #0xe0
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x20]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x2c
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	mov r1, #0xb
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x30]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x34
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x34]
	bl sub_02010E50
	str r0, [sp, #0x48]
	ldr r0, [r5, #0x28]
	mov r1, #0x10
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x48]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	mov r2, #1
	bl ovy143_219b6ac
	str r0, [sp, #0x4c]
	ldr r0, [r5, #8]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x4c]
	mov r3, #0xe0
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x18]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x34
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	mov r1, #0xe
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x38]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x3c
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x34]
	bl sub_02010E78
	str r0, [sp, #0x50]
	ldr r0, [r5, #0x28]
	mov r1, #0x13
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x50]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	mov r2, #1
	bl ovy143_219b6ac
	str r0, [sp, #0x54]
	ldr r0, [r5, #8]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x38]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x54]
	mov r3, #0xe0
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x3c
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	mov r1, #0xf
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x40]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x44
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0x34]
	bl sub_02010E94
	str r0, [sp, #0x58]
	ldr r0, [r5, #0x28]
	mov r1, #0x14
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x58]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	add r2, r6, #0
	bl GFL_WordSetFormatStrbuf
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	mov r2, #1
	bl ovy143_219b6ac
	str r0, [sp, #0x5c]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #0x5c]
	mov r3, #0xe0
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r4, #0x44
	mov r0, #1
	strb r0, [r4]
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219b324

	thumb_func_start sub_0219B688
sub_0219B688: ; 0x0219B688
	ldr r0, [r0, #4]
	ldr r3, _0219B690 ; =ovy143_219a6fc
	add r1, #0x48
	bx r3
	.align 2, 0
_0219B690: .word ovy143_219a6fc
	thumb_func_end sub_0219B688

	thumb_func_start sub_0219B694
sub_0219B694: ; 0x0219B694
	ldr r3, _0219B69C ; =sub_0219A744
	add r0, #0x48
	bx r3
	nop
_0219B69C: .word sub_0219A744
	thumb_func_end sub_0219B694

	thumb_func_start sub_0219B6A0
sub_0219B6A0: ; 0x0219B6A0
	ldr r3, _0219B6A8 ; =ovy143_219a750
	add r0, #0x48
	bx r3
	nop
_0219B6A8: .word ovy143_219a750
	thumb_func_end sub_0219B6A0

	thumb_func_start ovy143_219b6ac
ovy143_219b6ac: ; 0x0219B6AC
	push {r3, lr}
	cmp r2, #1
	bne _0219B6BE
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_0219B6BE:
	cmp r2, #2
	bne _0219B6CE
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0xf
	lsr r0, r0, #0x10
	pop {r3, pc}
_0219B6CE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219b6ac

	thumb_func_start ovy143_219b6d4
ovy143_219b6d4: ; 0x0219B6D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4]
	add r7, r2, #0
	str r3, [sp]
	cmp r1, #0
	beq _0219B6EA
	cmp r1, #1
	beq _0219B726
	b _0219B796
_0219B6EA:
	mov r1, #0x38
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x38
	blx MI_CpuFill8
	add r0, r5, #0
	bl ovy143_219b83c
	ldr r1, [r7, #4]
	add r0, r7, #0
	add r2, r5, #0
	bl ovy143_219b8a8
	ldr r0, [r7, #4]
	add r1, r5, #0
	bl ovy143_219b8e0
	ldr r1, [r7, #4]
	add r0, r7, #0
	add r2, r5, #0
	bl ovy143_219b9a0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219B796
_0219B726:
	mov r0, #0
	str r0, [sp, #4]
	mov r4, #0
_0219B72C:
	ldr r0, [r7, #4]
	lsl r1, r4, #3
	ldr r6, [r0, #8]
	ldr r0, [sp]
	add r5, r0, r1
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _0219B758
	ldr r0, [r5, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B758
	ldr r0, [r5, #0x10]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x14]
_0219B758:
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _0219B762
	mov r0, #1
	b _0219B764
_0219B762:
	mov r0, #0
_0219B764:
	cmp r0, #0
	bne _0219B76C
	mov r0, #1
	str r0, [sp, #4]
_0219B76C:
	add r4, r4, #1
	cmp r4, #4
	blt _0219B72C
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0219B796
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B796:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219b6d4

	thumb_func_start ovy143_219b79c
ovy143_219b79c: ; 0x0219B79C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r0, r7, #0
	add r0, #0x2e
	ldrb r0, [r0]
	str r1, [sp]
	str r3, [sp, #4]
	cmp r0, #1
	bne _0219B7B6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B7B6:
	mov r4, #0
_0219B7B8:
	ldr r0, [r7, #4]
	lsl r1, r4, #3
	ldr r6, [r0, #8]
	ldr r0, [sp, #4]
	add r5, r0, r1
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _0219B7E4
	ldr r0, [r5, #0x10]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219B7E4
	ldr r0, [r5, #0x10]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x14]
_0219B7E4:
	add r4, r4, #1
	cmp r4, #4
	blt _0219B7B8
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219B800
	add r7, #0x2d
	ldrb r0, [r7]
	cmp r0, #1
	bne _0219B800
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219B800:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219b79c

	thumb_func_start ovy143_219b808
ovy143_219b808: ; 0x0219B808
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219B81E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219B81E:
	mov r0, #8
	bl sub_02046D38
	add r0, r4, #0
	bl ovy143_219b988
	add r0, r4, #0
	bl ovy143_219b888
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219b808

	thumb_func_start ovy143_219b83c
ovy143_219b83c: ; 0x0219B83C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0219B880 ; =0x021A0060
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219B884 ; =0x021A0080
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	str r4, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219B880: .word 0x021A0060
_0219B884: .word 0x021A0080
	thumb_func_end ovy143_219b83c

	thumb_func_start ovy143_219b888
ovy143_219b888: ; 0x0219B888
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #0
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy143_219b888

	thumb_func_start ovy143_219b8a8
ovy143_219b8a8: ; 0x0219B8A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r1, #0x30]
	mov r1, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ovy143_219a998
	mov r0, #2
	bl sub_02044F90
	mov r0, #0
	bl sub_02044F90
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ovy143_219b8a8

	thumb_func_start ovy143_219b8e0
ovy143_219b8e0: ; 0x0219B8E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #3
	str r0, [sp]
	mov r6, #0xd
	add r5, r1, #0
	str r6, [sp, #4]
	mov r7, #1
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x1e
	mov r4, #0
	bl BmpWin_CreateDynamic
	str r0, [r5]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #8
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #4]
	bl BmpWin_FlushChar
	ldr r0, [r5, #4]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0xb
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #8]
	bl BmpWin_FlushChar
	ldr r0, [r5, #8]
	bl sub_0204826C
	mov r0, #2
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0xe
	mov r3, #0x1e
	bl BmpWin_CreateDynamic
	str r0, [r5, #0xc]
	bl BmpWin_FlushChar
	ldr r0, [r5, #0xc]
	bl sub_0204826C
	add r0, r4, #0
_0219B96E:
	lsl r1, r4, #3
	add r2, r5, r1
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r4, r4, #1
	str r1, [r2, #0x10]
	strb r0, [r2, #0x14]
	cmp r4, #4
	blt _0219B96E
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219b8e0

	thumb_func_start ovy143_219b988
ovy143_219b988: ; 0x0219B988
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219B98E:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #4
	blt _0219B98E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219b988

	thumb_func_start ovy143_219b9a0
ovy143_219b9a0: ; 0x0219B9A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	add r5, r1, #0
	add r4, r2, #0
	bl ovy143_219a6dc
	ldr r0, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017394
	ldr r1, _0219BB7C ; =0x00000986
	bl sub_020191AC
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	bl ovy143_219a6ec
	mov r6, #1
	lsl r6, r6, #8
	str r0, [sp, #0x24]
	add r0, r6, #0
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r3, #4
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #0x14]
	ldr r0, [r5, #0x28]
	mov r1, #7
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r0, [r5, #0x10]
	ldrh r3, [r2, #0xe]
	ldrh r2, [r2, #0xc]
	mov r1, #0
	add r2, r3, r2
	mov r3, #5
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x18]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r3, #0
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #0x1c]
	ldr r0, [r5, #0x28]
	mov r1, #9
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r0, [r5, #0x10]
	ldrh r2, [r2, #0xe]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x24
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	mov r1, #8
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldr r0, [r5, #0x10]
	ldrh r2, [r2, #0xc]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x20]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0x78
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x24
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x28]
	mov r1, #0xa
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0219BB2C
	ldr r0, [sp, #8]
	bl ovy143_219a6ec
	ldr r2, [sp, #8]
	add r1, r0, #0
	ldr r2, [r2]
	ldr r0, [r5, #0x34]
	add r2, #0x2c
	bl sub_0216A210
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	b _0219BB3A
_0219BB2C:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0
_0219BB3A:
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r3, #0
	bl sub_02021C54
	mov r0, #1
	add r4, #0x2c
	strb r0, [r4]
	add r0, r7, #0
	bl GFL_StrBufFree
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219BB7C: .word 0x00000986
	thumb_func_end ovy143_219b9a0

	thumb_func_start ovy143_219bb80
ovy143_219bb80: ; 0x0219BB80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [r6]
	add r4, r2, #0
	add r5, r3, #0
	cmp r1, #0
	beq _0219BB9A
	cmp r1, #1
	beq _0219BC66
	cmp r1, #2
	bne _0219BB98
	b _0219BC9A
_0219BB98:
	b _0219BD06
_0219BB9A:
	mov r7, #0xf9
	lsl r7, r7, #2
	add r1, r7, #0
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r7, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r1, #2
	add r0, r7, #0
	lsl r1, r1, #0xa
	sub r0, #0x4c
	str r1, [r5, r0]
	add r1, r7, #0
	ldr r0, _0219BD0C ; =0x0000FFFF
	sub r1, #0x24
	str r0, [r5, r1]
	add r1, r7, #0
	sub r1, #0x2c
	str r0, [r5, r1]
	add r1, r7, #0
	sub r1, #0x28
	str r0, [r5, r1]
	add r0, r4, #0
	bl ovy143_219a510
	mov r2, #0x61
	mov r0, #0
	mov r1, #2
	add r2, #0xa6
	mov r3, #0x61
	bl GFL_MsgSysLoadData
	str r0, [r5, #0x20]
	bl ovy143_219c344
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219c3e0
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219c488
	add r0, r5, #0
	bl ovy143_219cf50
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0219C9D0
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219c8fc
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219c97c
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219ca00
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219c530
	ldr r0, [r4, #4]
	mov r1, #4
	mov r2, #0x61
	bl ovy143_219a800
	sub r7, #8
	str r0, [r5, r7]
	ldr r0, [r4, #8]
	mov r1, #0x30
	strb r1, [r0, #1]
	ldr r0, _0219BD10 ; =ovy143_219cfe4
	add r1, r5, #0
	mov r2, #3
	bl GFL_VBlankTCBAdd
	str r0, [r5]
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219c774
	add r0, r5, #0
	bl ovy143_219c730
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219d030
_0219BC5E:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _0219BD06
_0219BC66:
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219c85c
	cmp r0, #1
	bne _0219BD06
	add r0, r5, #0
	bl ovy143_219cf74
	mov r0, #0x3b
	mov r4, #1
	lsl r0, r0, #4
	str r4, [r5, r0]
	bl sub_0203D554
	cmp r0, #0
	bne _0219BC8E
	add r0, r5, #0
	add r1, r4, #0
	b _0219BC92
_0219BC8E:
	ldr r1, _0219BD0C ; =0x0000FFFF
	add r0, r5, #0
_0219BC92:
	mov r2, #0
	bl ovy143_219cd60
	b _0219BC5E
_0219BC9A:
	ldr r0, [r4, #4]
	mov r7, #0xd3
	lsl r7, r7, #2
	ldr r4, [r0, #8]
	ldrb r0, [r5, r7]
	mov r6, #0
	cmp r0, #0
	beq _0219BCC8
	sub r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219BCC8
	sub r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	strb r6, [r5, r7]
_0219BCC8:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0219BCD6
	mov r0, #1
	b _0219BCD8
_0219BCD6:
	mov r0, #0
_0219BCD8:
	cmp r0, #0
	bne _0219BCDE
	mov r6, #1
_0219BCDE:
	cmp r6, #0
	bne _0219BD06
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219BD06:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219BD0C: .word 0x0000FFFF
_0219BD10: .word ovy143_219cfe4
	thumb_func_end ovy143_219bb80

	thumb_func_start ovy143_219bd14
ovy143_219bd14: ; 0x0219BD14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	ldr r0, [r5]
	add r6, r1, #0
	ldr r0, [r0]
	add r4, r3, #0
	bl sub_02016B20
	add r0, r5, #0
	mov r1, #1
	bl ovy143_219a538
	add r0, r5, #0
	mov r1, #3
	bl ovy143_219a538
	add r0, r4, #0
	bl sub_0219C9F0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0219C9C4
	ldr r0, [r5, #4]
	ldr r7, [r0, #8]
	mov r0, #0xd3
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0219BD7E
	mov r0, #0xd3
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219BD7E
	mov r0, #0xd3
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	mov r0, #0xd3
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
_0219BD7E:
	add r0, r5, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219BD94
	ldr r0, [r6]
	cmp r0, #4
	bne _0219BD94
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219BD94:
	ldr r0, [r6]
	cmp r0, #0x16
	bhi _0219BE4C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219BDA6: ; jump table
	.short _0219BDD4 - _0219BDA6 - 2 ; case 0
	.short _0219BDD8 - _0219BDA6 - 2 ; case 1
	.short _0219BDE0 - _0219BDA6 - 2 ; case 2
	.short _0219BE3A - _0219BDA6 - 2 ; case 3
	.short _0219BE50 - _0219BDA6 - 2 ; case 4
	.short _0219BF62 - _0219BDA6 - 2 ; case 5
	.short _0219BF8C - _0219BDA6 - 2 ; case 6
	.short _0219BFC0 - _0219BDA6 - 2 ; case 7
	.short _0219C014 - _0219BDA6 - 2 ; case 8
	.short _0219C054 - _0219BDA6 - 2 ; case 9
	.short _0219C056 - _0219BDA6 - 2 ; case 10
	.short _0219C06A - _0219BDA6 - 2 ; case 11
	.short _0219C080 - _0219BDA6 - 2 ; case 12
	.short _0219C08A - _0219BDA6 - 2 ; case 13
	.short _0219C0A4 - _0219BDA6 - 2 ; case 14
	.short _0219C0DC - _0219BDA6 - 2 ; case 15
	.short _0219C16E - _0219BDA6 - 2 ; case 16
	.short _0219C17A - _0219BDA6 - 2 ; case 17
	.short _0219C1B6 - _0219BDA6 - 2 ; case 18
	.short _0219C1DC - _0219BDA6 - 2 ; case 19
	.short _0219C208 - _0219BDA6 - 2 ; case 20
	.short _0219C242 - _0219BDA6 - 2 ; case 21
	.short _0219C290 - _0219BDA6 - 2 ; case 22
_0219BDD4:
	mov r0, #1
_0219BDD6:
	b _0219C292
_0219BDD8:
	add r0, r4, #0
	ldr r1, [r5, #4]
	mov r2, #0x26
	b _0219BF82
_0219BDE0:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy143_219c6a4
	cmp r0, #1
	bne _0219BE4C
	bl sub_0203DA48
	cmp r0, #0
	bne _0219BDFE
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219BE4C
_0219BDFE:
	add r0, r4, #0
	bl ovy143_219c6c4
	ldr r0, _0219C0BC ; =0x00000547
	bl GFL_SndSEPlay
	bl sub_0203DA48
	cmp r0, #0
	bne _0219BE18
	add r0, r4, #0
	mov r1, #1
	b _0219BE1C
_0219BE18:
	ldr r1, _0219C0C0 ; =0x0000FFFF
	add r0, r4, #0
_0219BE1C:
	mov r2, #0
	bl ovy143_219cd60
	mov r5, #1
	bl sub_0203D554
	cmp r0, #1
	bne _0219BE2E
	mov r5, #0
_0219BE2E:
	add r0, r4, #0
	add r0, #8
	add r1, r5, #0
	bl ovy143_219a414
	b _0219C0A2
_0219BE3A:
	bl sub_0203DA2C
	cmp r0, #0
	bne _0219BE4C
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	beq _0219BE4E
_0219BE4C:
	b _0219C294
_0219BE4E:
	b _0219C0B8
_0219BE50:
	bl GCTX_HIDGetPressedKeys
	str r0, [sp, #4]
	ldr r0, _0219C0C4 ; =0x021A00A8
	bl sub_0203DA0C
	add r7, r0, #0
	beq _0219BE68
	ldr r0, [sp, #4]
	mov r1, #2
	tst r0, r1
	beq _0219BE88
_0219BE68:
	mov r0, #0xd6
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219A794
	cmp r7, #0
	bne _0219BE7A
	mov r0, #1
	b _0219BE7C
_0219BE7A:
	mov r0, #0
_0219BE7C:
	bl sub_0203D564
	ldr r0, _0219C0C8 ; =0x00000551
	bl GFL_SndSEPlay
	b _0219C176
_0219BE88:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219ca94
	add r0, r4, #0
	bl ovy143_219ce38
	mov r7, #0x3a
	lsl r7, r7, #4
	add r2, r7, #4
	ldr r1, [r4, r7]
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r1, r2
	bl ovy143_219cf00
	cmp r0, #1
	bne _0219BEBE
	add r0, r4, #0
	bl ovy143_219cf50
	add r0, r4, #0
	bl ovy143_219cf74
	mov r0, #1
	add r7, #0x10
	str r0, [r4, r7]
_0219BEBE:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219ce50
	mov r1, #0xed
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _0219C0C0 ; =0x0000FFFF
	cmp r2, r0
	bne _0219BEDA
	ldr r0, [r5, #8]
	mov r1, #0x30
	strb r1, [r0, #1]
	b _0219BF0C
_0219BEDA:
	lsl r0, r2, #2
	add r2, r4, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	ldr r0, [r5, #8]
	strb r2, [r0, #1]
	ldr r0, [r4, r1]
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r3, [r2, r0]
	ldr r2, [r5, #8]
	strb r3, [r2, #2]
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0219BF0C
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	b _0219BF12
_0219BF0C:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
_0219BF12:
	bl ovy143_219a414
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219D35C
	mov r7, #0xf
	lsl r7, r7, #6
	ldr r1, [r4, r7]
	ldr r0, _0219C0C0 ; =0x0000FFFF
	cmp r1, r0
	beq _0219BF6E
	ldr r0, _0219C0CC ; =0x0000054C
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl sub_0219D2CC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0219BF50
	add r0, r7, #0
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #1
	orr r0, r1
	add r7, #0xc
	str r0, [r4, r7]
	mov r0, #0x12
	b _0219BDD6
_0219BF50:
	add r0, r7, #0
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #1
	bic r1, r0
	add r7, #0xc
	str r1, [r4, r7]
	mov r0, #5
	b _0219BDD6
_0219BF62:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219A530
	cmp r0, #2
	bne _0219BF70
_0219BF6E:
	b _0219C294
_0219BF70:
	add r0, r5, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219C072
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #0x22
_0219BF82:
	bl ovy143_219c578
_0219BF86:
	ldr r0, [r6]
	add r0, r0, #1
	b _0219BDD6
_0219BF8C:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy143_219c6a4
	cmp r0, #1
	bne _0219C072
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219BFAC
	ldr r0, _0219C0D0 ; =0x021A046C
	ldr r2, _0219C0D4 ; =0x021A0470
	mov r1, #0
	bl sub_0203CB80
_0219BFAC:
	ldr r0, [r5, #4]
	mov r5, #0xf7
	lsl r5, r5, #2
	ldr r1, [r4, r5]
	mov r2, #0x61
	bl ovy143_219a820
	add r1, r5, #4
	str r0, [r4, r1]
	b _0219C0A2
_0219BFC0:
	mov r7, #0x3e
	lsl r7, r7, #4
	ldr r0, [r5, #4]
	ldr r2, [r4, r7]
	mov r1, #4
	add r3, sp, #0x10
	bl ovy143_219a890
	cmp r0, #1
	bne _0219C072
	ldr r0, [r4, r7]
	bl sub_0219A888
	mov r0, #0
	str r0, [r4, r7]
	add r0, r4, #0
	bl ovy143_219c6c4
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0219BFEE
	mov r0, #8
	b _0219BDD6
_0219BFEE:
	ldr r0, _0219C0C0 ; =0x0000FFFF
	sub r7, #0x20
	str r0, [r4, r7]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy143_219a4ec
	mov r0, #3
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #8
	mov r2, #1
	mov r3, #0xff
	bl ovy143_219a454
	mov r0, #4
	b _0219C292
_0219C014:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219A530
	cmp r0, #2
	beq _0219C072
	add r0, r5, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219C072
	mov r2, #0xf
	lsl r2, r2, #6
	ldr r2, [r4, r2]
	ldr r0, [r5, #4]
	lsl r2, r2, #2
	add r3, r4, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r0, [r0, #0x10]
	ldr r2, [r3, r2]
	mov r1, #0
	bl sub_0202472C
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #0x24
_0219C04C:
	bl ovy143_219c600
	mov r0, #9
	b _0219C292
_0219C054:
	b _0219C290
_0219C056:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy143_219c6a4
	cmp r0, #1
	bne _0219C072
	mov r0, #6
	bl sub_02005EA0
	b _0219C0A2
_0219C06A:
	bl sub_02005EC0
	cmp r0, #0
	beq _0219C074
_0219C072:
	b _0219C294
_0219C074:
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	b _0219C0A2
_0219C080:
	ldr r0, _0219C0D8 ; =0x00000531
	ldr r1, _0219C0C0 ; =0x0000FFFF
	bl sub_02005DF4
	b _0219C0A2
_0219C08A:
	bl sub_02005FA8
	cmp r0, #0
	bne _0219C188
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #6
	bl sub_02005E68
_0219C0A2:
	b _0219BF86
_0219C0A4:
	bl sub_02005EC0
	cmp r0, #0
	bne _0219C188
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219d104
	cmp r0, #0
	bne _0219C188
_0219C0B8:
	mov r0, #4
	b _0219BDD6
	.align 2, 0
_0219C0BC: .word 0x00000547
_0219C0C0: .word 0x0000FFFF
_0219C0C4: .word 0x021A00A8
_0219C0C8: .word 0x00000551
_0219C0CC: .word 0x0000054C
_0219C0D0: .word 0x021A046C
_0219C0D4: .word 0x021A0470
_0219C0D8: .word 0x00000531
_0219C0DC:
	bl sub_0203DA48
	cmp r0, #0
	bne _0219C0EE
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219C188
_0219C0EE:
	add r0, r4, #0
	bl ovy143_219c6c4
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200C62C
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	mov r2, #0
	bl sub_0200C668
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02016B20
	ldr r7, [r5]
	str r0, [sp, #8]
	ldr r0, [r7]
	bl sub_02016AD8
	bl sub_020175CC
	add r7, #0x30
	add r1, r0, #0
	ldrb r2, [r7]
	ldr r0, [sp, #8]
	bl sub_0202BF68
	mov r0, #0xf
	ldr r1, _0219C2A0 ; =0x0000FFFF
	lsl r0, r0, #6
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	bl ovy143_219a4ec
	mov r0, #3
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #8
	mov r2, #1
	mov r3, #0xff
	bl ovy143_219a454
	bl sub_0203DA48
	cmp r0, #0
	beq _0219C16C
	mov r0, #0x10
	b _0219BDD6
_0219C16C:
	b _0219C176
_0219C16E:
	bl sub_0203DA2C
	cmp r0, #0
	bne _0219C188
_0219C176:
	mov r0, #0x11
	b _0219BDD6
_0219C17A:
	add r0, r5, #0
	mov r1, #1
	mov r6, #1
	bl sub_0219A530
	cmp r0, #2
	bne _0219C18A
_0219C188:
	b _0219C294
_0219C18A:
	add r0, r5, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219C294
	mov r0, #0xd6
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219A7A0
	cmp r0, #0
	bne _0219C294
	add r0, r5, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r5, #8]
	add sp, #0x14
	strb r6, [r0, #6]
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_0219C1B6:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219A530
	cmp r0, #2
	beq _0219C294
	add r0, r5, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219C294
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #0x48
	bl ovy143_219c578
	mov r0, #0x13
	b _0219BDD6
_0219C1DC:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy143_219c6a4
	cmp r0, #1
	bne _0219C294
	add r0, r4, #0
	mov r1, #1
	bl ovy143_219d2e8
	add r0, r5, #0
	ldr r1, [r5, #4]
	mov r5, #0xf7
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	mov r3, #0x61
	bl ovy143_219a8c0
	add r1, r5, #4
	str r0, [r4, r1]
	mov r0, #0x14
	b _0219BDD6
_0219C208:
	mov r7, #0x3e
	lsl r7, r7, #4
	ldr r0, [r5, #4]
	ldr r1, [r4, r7]
	add r2, sp, #0xc
	bl ovy143_219a970
	cmp r0, #1
	bne _0219C294
	add r0, r4, #0
	mov r1, #0
	bl ovy143_219d2e8
	ldr r0, [r4, r7]
	bl sub_0219A968
	mov r0, #0
	str r0, [r4, r7]
	add r0, r4, #0
	bl ovy143_219c6c4
	ldr r0, [sp, #0xc]
	cmp r0, #3
	beq _0219C240
	sub r7, #0x10
	str r0, [r4, r7]
	mov r0, #0x15
	b _0219BDD6
_0219C240:
	b _0219BFEE
_0219C242:
	add r0, r5, #0
	mov r1, #1
	bl sub_0219A530
	cmp r0, #2
	beq _0219C294
	add r0, r5, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219C294
	mov r7, #0x3d
	lsl r7, r7, #4
	ldr r3, [r5, #8]
	ldr r2, [r4, r7]
	ldr r0, [r5, #4]
	add r2, r3, r2
	ldrb r2, [r2, #8]
	ldr r0, [r0, #0x10]
	mov r1, #0
	bl sub_0202472C
	sub r7, #0x10
	ldr r2, [r4, r7]
	ldr r0, [r5, #4]
	lsl r2, r2, #2
	add r3, r4, r2
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r0, [r0, #0x10]
	ldr r2, [r3, r2]
	mov r1, #1
	bl sub_0202472C
	add r0, r4, #0
	ldr r1, [r5, #4]
	mov r2, #0x49
	b _0219C04C
_0219C290:
	mov r0, #0xa
_0219C292:
	str r0, [r6]
_0219C294:
	add r0, r4, #0
	bl ovy143_219ca48
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219C2A0: .word 0x0000FFFF
	thumb_func_end ovy143_219bd14

	thumb_func_start ovy143_219c2a4
ovy143_219c2a4: ; 0x0219C2A4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219C2BC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219C2BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219d0c8
	mov r0, #8
	bl sub_02046DC0
	ldr r0, [r4]
	bl GFL_TCBRemove
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219C2DE
	bl sub_020223CC
_0219C2DE:
	mov r0, #0x35
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219C2EC
	bl GFL_StrBufFree
_0219C2EC:
	add r0, r4, #0
	bl ovy143_219c834
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219C300
	bl sub_0219A888
_0219C300:
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219A818
	add r0, r4, #0
	bl sub_0219C9B8
	add r0, r4, #0
	bl ovy143_219c954
	add r0, r4, #0
	bl sub_0219C9E0
	add r0, r4, #0
	bl ovy143_219ca34
	add r0, r4, #0
	bl sub_0219C478
	add r0, r4, #0
	bl ovy143_219c514
	bl ovy143_219c3b0
	ldr r0, [r4, #0x20]
	bl GFL_MsgDataFree
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy143_219c2a4

	thumb_func_start ovy143_219c344
ovy143_219c344: ; 0x0219C344
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0219C3A4 ; =0x021A00D4
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219C3A8 ; =0x021A00F4
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219C3AC ; =0x021A0114
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	str r4, [sp, #8]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219C3A4: .word 0x021A00D4
_0219C3A8: .word 0x021A00F4
_0219C3AC: .word 0x021A0114
	thumb_func_end ovy143_219c344

	thumb_func_start ovy143_219c3b0
ovy143_219c3b0: ; 0x0219C3B0
	push {r3, lr}
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219c3b0

	thumb_func_start ovy143_219c3e0
ovy143_219c3e0: ; 0x0219C3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r4, r0, #0
	str r6, [sp]
	mov r0, #1
	add r5, r1, #0
	str r0, [sp, #4]
	mov r7, #0x61
	str r7, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #7
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #0x10
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #9
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0x52
	mov r1, #0x61
	bl sub_0204AA30
	add r5, r0, #0
	mov r0, #5
	mov r1, #0x80
	mov r2, #1
	bl sub_02044564
	str r0, [r4, #4]
	mov r0, #0x80
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r3, [r4, #4]
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #5
	bl sub_0204ADA8
	mov r0, #0xc
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x61
	bl sub_0202D830
	add r0, r5, #0
	bl GFL_ArcToolFree
	mov r0, #5
	bl sub_02044F90
	mov r0, #6
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219c3e0

	thumb_func_start sub_0219C478
sub_0219C478: ; 0x0219C478
	add r1, r0, #0
	ldr r1, [r1, #4]
	ldr r3, _0219C484 ; =sub_02044668
	mov r0, #5
	mov r2, #0x80
	bx r3
	.align 2, 0
_0219C484: .word sub_02044668
	thumb_func_end sub_0219C478

	thumb_func_start ovy143_219c488
ovy143_219c488: ; 0x0219C488
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #1
	mov r2, #0
	mov r3, #0x61
	mov r6, #1
	mov r7, #0
	bl sub_02024C98
	mov r0, #0
	bl sub_02024C8C
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r4]
	mov r1, #5
	mov r3, #0x61
	bl sub_02026E94
	mov r0, #4
	str r0, [sp]
	mov r4, #0xd
	str r4, [sp, #4]
	mov r0, #4
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r6, [sp, #8]
	bl BmpWin_CreateDynamic
	lsl r1, r4, #6
	str r0, [r5, r1]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	mov r0, #3
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r6, [sp, #8]
	bl BmpWin_CreateDynamic
	mov r4, #0xd1
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl sub_0204826C
	mov r0, #4
	bl sub_02044F90
	ldr r1, [r5, r4]
	add r0, r4, #4
	str r1, [r5, r0]
	add r4, #8
	strb r7, [r5, r4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219c488

	thumb_func_start ovy143_219c514
ovy143_219c514: ; 0x0219C514
	push {r4, r5, r6, lr}
	mov r6, #0xd
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #6
_0219C51E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #2
	blt _0219C51E
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219c514

	thumb_func_start ovy143_219c530
ovy143_219c530: ; 0x0219C530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	ldr r0, [r0, #0x28]
	mov r1, #0x23
	bl sub_0204898C
	add r6, r0, #0
	ldr r4, [r4, #4]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r7, [r4, #8]
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	mov r2, #0x18
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #4
	bl sub_02021C54
	mov r0, #0xd2
	lsl r0, r0, #2
	mov r1, #1
	add r0, r0, #4
	strb r1, [r5, r0]
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219c530

	thumb_func_start ovy143_219c578
ovy143_219c578: ; 0x0219C578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _0219C596
	ldr r0, _0219C5F8 ; =0x021A046C
	ldr r2, _0219C5FC ; =0x021A048C
	mov r1, #0
	bl sub_0203CB80
_0219C596:
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r7, #0xf
	bl sub_020232E8
	ldr r0, [r6, #0x28]
	add r1, r4, #0
	bl sub_0204898C
	mov r4, #0x35
	lsl r4, r4, #4
	str r0, [r5, r4]
	bl sub_02017BCC
	ldr r1, [r6, #0xc]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x61
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r7, [sp, #0x14]
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r3, [r5, r4]
	bl sub_02022268
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204826C
	sub r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	mov r3, #0xb
	bl sub_02024E80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C5F8: .word 0x021A046C
_0219C5FC: .word 0x021A048C
	thumb_func_end ovy143_219c578

	thumb_func_start ovy143_219c600
ovy143_219c600: ; 0x0219C600
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _0219C61E
	ldr r0, _0219C69C ; =0x021A046C
	ldr r2, _0219C6A0 ; =0x021A048C
	mov r1, #0
	bl sub_0203CB80
_0219C61E:
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldr r0, [r6, #0x28]
	add r1, r4, #0
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #0xf
	add r0, #0xf1
	mov r1, #0x61
	bl GFL_StrBufCreate
	mov r4, #0x35
	add r1, r0, #0
	lsl r4, r4, #4
	str r1, [r5, r4]
	ldr r0, [r6, #0x10]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	bl sub_02017BCC
	ldr r1, [r6, #0xc]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x61
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r3, [r5, r4]
	bl sub_02022268
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204826C
	sub r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	mov r3, #0xb
	bl sub_02024E80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C69C: .word 0x021A046C
_0219C6A0: .word 0x021A048C
	thumb_func_end ovy143_219c600

	thumb_func_start ovy143_219c6a4
ovy143_219c6a4: ; 0x0219C6A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0xd5
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, #0x38
	bl sub_0202E68C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ovy143_219d318
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219c6a4

	thumb_func_start ovy143_219c6c4
ovy143_219c6c4: ; 0x0219C6C4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0xd
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl BmpWin_GetBitmap
	add r5, #0x14
	add r6, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _0219C6E6
	ldr r0, _0219C728 ; =0x021A046C
	ldr r2, _0219C72C ; =0x021A04A8
	mov r1, #0
	bl sub_0203CB80
_0219C6E6:
	mov r5, #0xd5
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020223CC
	mov r7, #0
	str r7, [r4, r5]
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	sub r0, r5, #4
	str r7, [r4, r0]
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02024EEC
	add r0, r6, #0
	mov r1, #0xff
	bl BmpWin_BitmapFill
	sub r5, #0x14
	ldr r0, [r4, r5]
	bl BmpWin_FlushChar
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C728: .word 0x021A046C
_0219C72C: .word 0x021A04A8
	thumb_func_end ovy143_219c6c4

	thumb_func_start ovy143_219c730
ovy143_219c730: ; 0x0219C730
	push {lr}
	sub sp, #0xc
	mov r1, #0xcf
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	sub r0, r1, #2
	cmp r0, #7
	bge _0219C770
	sub r0, r1, #1
	lsl r1, r0, #5
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r3, r0, #3
	mov r0, #0x20
	str r0, [sp]
	sub r0, r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
_0219C770:
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy143_219c730

	thumb_func_start ovy143_219c774
ovy143_219c774: ; 0x0219C774
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0]
	add r6, r1, #0
	ldr r0, [r0]
	str r2, [sp, #4]
	mov r5, #0
	bl sub_02016AD8
	ldr r0, [sp]
	bl ovy143_219a6ec
	str r0, [sp, #8]
	mov r0, #0x30
	mov r3, #0
	mov r2, #0x30
	add r0, #0xfc
_0219C798:
	lsl r1, r3, #2
	add r1, r6, r1
	add r3, r3, #1
	str r2, [r1, r0]
	cmp r3, #0x42
	blt _0219C798
	mov r0, #0x4b
	lsl r0, r0, #2
	str r2, [r6, r0]
	mov r0, #0x8d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	mov r4, #0
	add r5, r5, #1
	str r0, [r6, #0x24]
	cmp r4, #0x40
	bge _0219C804
_0219C7C8:
	ldr r3, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r3]
	ldr r0, [r0, #0x34]
	ldr r2, [sp, #8]
	add r1, r4, #0
	add r3, #0x2c
	bl sub_0216A190
	cmp r0, #2
	beq _0219C7FE
	lsl r1, r5, #2
	add r7, r6, r1
	mov r1, #0x4b
	lsl r1, r1, #2
	str r4, [r7, r1]
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	str r0, [r7, #0x24]
	add r5, r5, #1
_0219C7FE:
	add r4, r4, #1
	cmp r4, #0x40
	blt _0219C7C8
_0219C804:
	lsl r4, r5, #2
	mov r0, #0x30
	mov r1, #0x30
	add r2, r6, r4
	add r0, #0xfc
	str r1, [r2, r0]
	mov r0, #0x8d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r2, r0]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	add r1, r6, r4
	str r0, [r1, #0x24]
	mov r0, #0xcf
	add r1, r5, #1
	lsl r0, r0, #2
	strb r1, [r6, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219c774

	thumb_func_start ovy143_219c834
ovy143_219c834: ; 0x0219C834
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xcf
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _0219C858
	add r6, r5, r0
_0219C846:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	bl sub_02046EDC
	ldrb r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219C846
_0219C858:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy143_219c834

	thumb_func_start ovy143_219c85c
ovy143_219c85c: ; 0x0219C85C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x20
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, _0219C8F4 ; =0x0000033D
	sub r1, r0, #1
	ldrb r4, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r4, r1
	bge _0219C8D2
	sub r0, r0, #1
	str r0, [sp, #0x10]
_0219C882:
	cmp r4, #1
	blt _0219C8BE
	sub r0, r1, #1
	cmp r4, r0
	bge _0219C8BE
	lsl r0, r4, #2
	mov r1, #0x4b
	add r6, r5, r0
	lsl r1, r1, #2
	ldr r0, [r5, #0x20]
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #8]
	mov r2, #0
	ldr r0, [r0, #0xc]
	add r3, r7, #0
	str r0, [sp]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	lsl r1, r0, #1
	ldr r0, _0219C8F8 ; =0x021A00A4
	ldrh r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	bl sub_02021D28
_0219C8BE:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x64
	bge _0219C8D2
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	ldrb r1, [r5, r0]
	cmp r4, r1
	blt _0219C882
_0219C8D2:
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r0, _0219C8F4 ; =0x0000033D
	strb r4, [r5, r0]
	ldrb r1, [r5, r0]
	sub r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	blo _0219C8EC
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219C8EC:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219C8F4: .word 0x0000033D
_0219C8F8: .word 0x021A00A4
	thumb_func_end ovy143_219c85c

	thumb_func_start ovy143_219c8fc
ovy143_219c8fc: ; 0x0219C8FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r3, _0219C950 ; =0x021A00BC
	add r2, sp, #8
	str r0, [sp]
	add r6, r1, #0
	str r2, [sp, #4]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x5c]
	mov r7, #0xdf
	lsl r7, r7, #2
	str r0, [sp, #0x10]
	mov r4, #0
	sub r7, #0x1c
_0219C922:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	mov r1, #0xdf
	lsl r1, r1, #2
	str r0, [r5, r1]
	str r0, [sp, #8]
	ldr r0, [r6, #0x2c]
	ldr r1, [sp, #4]
	bl sub_0202AEC4
	add r4, r4, #1
	str r0, [r5, r7]
	cmp r4, #7
	blt _0219C922
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C950: .word 0x021A00BC
	thumb_func_end ovy143_219c8fc

	thumb_func_start ovy143_219c954
ovy143_219c954: ; 0x0219C954
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x36
	lsl r6, r6, #4
	add r7, r0, #0
	mov r4, #0
	add r6, #0x1c
_0219C960:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0202B030
	ldr r0, [r5, r6]
	bl sub_02046EDC
	add r4, r4, #1
	cmp r4, #7
	blt _0219C960
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219c954

	thumb_func_start ovy143_219c97c
ovy143_219c97c: ; 0x0219C97C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x40
	str r1, [sp]
	mov r1, #0xb4
	str r1, [sp, #4]
	mov r1, #0x25
	str r1, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r1, #8
	mov r2, #1
	mov r3, #2
	bl ovy143_219a170
	bl sub_0203D554
	cmp r0, #1
	bne _0219C9B2
	add r4, #8
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219a414
_0219C9B2:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219c97c

	thumb_func_start sub_0219C9B8
sub_0219C9B8: ; 0x0219C9B8
	ldr r3, _0219C9C0 ; =ovy143_219a3f4
	add r0, #8
	bx r3
	nop
_0219C9C0: .word ovy143_219a3f4
	thumb_func_end sub_0219C9B8

	thumb_func_start sub_0219C9C4
sub_0219C9C4: ; 0x0219C9C4
	ldr r3, _0219C9CC ; =ovy143_219a42c
	add r1, #8
	bx r3
	nop
_0219C9CC: .word ovy143_219a42c
	thumb_func_end sub_0219C9C4

	thumb_func_start sub_0219C9D0
sub_0219C9D0: ; 0x0219C9D0
	mov r2, #0xd6
	lsl r2, r2, #2
	ldr r0, [r0, #4]
	ldr r3, _0219C9DC ; =ovy143_219a6fc
	add r1, r1, r2
	bx r3
	.align 2, 0
_0219C9DC: .word ovy143_219a6fc
	thumb_func_end sub_0219C9D0

	thumb_func_start sub_0219C9E0
sub_0219C9E0: ; 0x0219C9E0
	mov r1, #0xd6
	lsl r1, r1, #2
	ldr r3, _0219C9EC ; =sub_0219A744
	add r0, r0, r1
	bx r3
	nop
_0219C9EC: .word sub_0219A744
	thumb_func_end sub_0219C9E0

	thumb_func_start sub_0219C9F0
sub_0219C9F0: ; 0x0219C9F0
	mov r1, #0xd6
	lsl r1, r1, #2
	ldr r3, _0219C9FC ; =ovy143_219a750
	add r0, r0, r1
	bx r3
	nop
_0219C9FC: .word ovy143_219a750
	thumb_func_end sub_0219C9F0

	thumb_func_start ovy143_219ca00
ovy143_219ca00: ; 0x0219CA00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0x80
	mov r2, #0x1c
	mov r3, #9
	bl ovy143_219a7a4
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	mov r1, #0x80
	mov r2, #0xa4
	mov r3, #0xa
	bl ovy143_219a7a4
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219ca00

	thumb_func_start ovy143_219ca34
ovy143_219ca34: ; 0x0219CA34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0219A7F4
	ldr r0, [r4, #0x1c]
	bl sub_0219A7F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy143_219ca34

	thumb_func_start ovy143_219ca48
ovy143_219ca48: ; 0x0219CA48
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	ldr r0, [r4, #0x18]
	bgt _0219CA60
	mov r1, #0
	b _0219CA62
_0219CA60:
	mov r1, #1
_0219CA62:
	bl sub_0204C124
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x5c
	ldrb r0, [r4, r0]
	asr r1, r1, #8
	lsl r0, r0, #5
	sub r0, #0xc8
	cmp r1, r0
	ldr r0, [r4, #0x1c]
	blt _0219CA80
	mov r1, #0
	b _0219CA82
_0219CA80:
	mov r1, #1
_0219CA82:
	bl sub_0204C124
	ldr r0, [r4, #0x18]
	bl sub_0219A7FC
	ldr r0, [r4, #0x1c]
	bl sub_0219A7FC
	pop {r4, pc}
	thumb_func_end ovy143_219ca48

	thumb_func_start ovy143_219ca94
ovy143_219ca94: ; 0x0219CA94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0219CD4C ; =0x0000FFFF
	mov r4, #0xe9
	str r0, [sp, #4]
	add r5, r1, #0
	ldr r0, [sp, #8]
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, sp, #0x10
	add r1, sp, #0xc
	bl sub_0203DA84
	sub r4, #8
	add r7, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219CAC8
	ldr r0, [sp, #0x10]
	cmp r0, #0x18
	blo _0219CAC6
	cmp r0, #0xe0
	bls _0219CAC8
_0219CAC6:
	mov r7, #0
_0219CAC8:
	add r0, r5, #0
	bl sub_0219D34C
	mov r1, #0xc3
	tst r0, r1
	bne _0219CAD6
	b _0219CC10
_0219CAD6:
	mov r6, #0xe6
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r7, #0
	asr r1, r0, #8
	add r1, #0x18
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1b
	asr r4, r0, #5
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	str r0, [sp]
	add r0, r6, #0
	add r0, #8
	str r7, [r5, r0]
	add r0, r6, #4
	str r7, [r5, r0]
	add r0, r6, #0
	add r0, #0x1c
	ldr r1, [r5, r0]
	ldr r0, _0219CD4C ; =0x0000FFFF
	cmp r1, r0
	bne _0219CB42
	ldr r0, [sp]
	cmp r0, #0
	beq _0219CB16
	add r4, r4, #1
_0219CB16:
	cmp r4, #1
	bge _0219CB1C
	mov r4, #1
_0219CB1C:
	mov r0, #0xcf
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	sub r1, r0, #2
	cmp r4, r1
	blt _0219CB2C
	add r0, r5, #0
	b _0219CB30
_0219CB2C:
	add r0, r5, #0
	add r1, r4, #0
_0219CB30:
	mov r2, #1
	bl ovy143_219cd60
	ldr r0, _0219CD50 ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219CB42:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219CB82
	add r1, r6, #0
	add r1, #0x1c
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #1
	bl ovy143_219cd60
	add r0, r7, #0
	bl sub_0203D564
	add r6, #0x1c
	ldr r0, [r5, r6]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0219CB76
	ldr r0, _0219CD54 ; =0x0000054C
	b _0219CB78
_0219CB76:
	ldr r0, _0219CD58 ; =0x00000557
_0219CB78:
	bl GFL_SndSEPlay
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219CB82:
	add r0, r5, #0
	bl sub_0219D354
	mov r1, #0x40
	tst r0, r1
	beq _0219CBC6
	ldr r0, [sp]
	cmp r0, #0
	beq _0219CB96
	add r4, r4, #1
_0219CB96:
	mov r1, #0xed
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	sub r1, r1, #1
	mov r2, #1
	bl ovy143_219cd60
	cmp r0, #1
	bne _0219CBB0
	ldr r0, _0219CD50 ; =0x00000548
	bl GFL_SndSEPlay
_0219CBB0:
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, r4
	bge _0219CBC0
	ldr r1, _0219CD5C ; =0xFFFFE000
	sub r0, #0x10
	str r1, [r5, r0]
_0219CBC0:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219CBC6:
	add r0, r5, #0
	bl sub_0219D354
	mov r1, #0x80
	tst r0, r1
	beq _0219CC10
	ldr r0, [r5, r6]
	add r6, #0x1c
	asr r1, r0, #8
	add r1, #0xa8
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	ldr r1, [r5, r6]
	asr r4, r0, #5
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #1
	bl ovy143_219cd60
	cmp r0, #1
	bne _0219CBF8
	ldr r0, _0219CD50 ; =0x00000548
	bl GFL_SndSEPlay
_0219CBF8:
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, r4
	blt _0219CC0A
	mov r1, #2
	lsl r1, r1, #0xc
	sub r0, #0x10
	str r1, [r5, r0]
_0219CC0A:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219CC10:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0219CCA4
	cmp r7, #1
	bne _0219CC7C
	ldr r1, [sp, #0xc]
	cmp r1, #0x18
	bls _0219CC46
	cmp r1, #0xa8
	bhs _0219CC46
	mov r1, #1
	str r1, [r5, r0]
	add r1, r0, #0
	ldr r2, [sp, #0xc]
	add r1, #0xc
	str r2, [r5, r1]
	ldr r1, [sp, #0xc]
	add r0, #0x10
	str r1, [r5, r0]
	ldr r1, _0219CD4C ; =0x0000FFFF
	add r0, r5, #0
	mov r2, #0
	bl ovy143_219cd60
	b _0219CD2E
_0219CC46:
	bl sub_0203DA48
	cmp r0, #1
	bne _0219CD2E
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, _0219CD4C ; =0x0000FFFF
	cmp r1, r0
	beq _0219CD2E
	ldr r0, [sp, #0x10]
	cmp r0, #0x10
	blo _0219CD2E
	cmp r0, #0x70
	bhi _0219CD2E
	ldr r0, [sp, #0xc]
	cmp r0, #0xac
	blo _0219CD2E
	cmp r0, #0xbc
	bhi _0219CD2E
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #1
	str r1, [sp, #4]
	bl sub_0203D564
	b _0219CD2E
_0219CC7C:
	add r1, r0, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _0219CD2E
	ble _0219CC92
	add r1, r0, #4
	ldr r2, [r5, r1]
	sub r2, #0xc0
	str r2, [r5, r1]
	bpl _0219CD2E
	b _0219CC9E
_0219CC92:
	add r1, r0, #4
	ldr r2, [r5, r1]
	add r2, #0xc0
	str r2, [r5, r1]
	cmp r2, #0
	ble _0219CD2E
_0219CC9E:
	mov r1, #0
	add r0, r0, #4
	b _0219CD2C
_0219CCA4:
	cmp r7, #0
	bne _0219CCF2
	mov r1, #0
	str r1, [r5, r0]
	add r1, r0, #0
	add r1, #0x10
	ldr r2, [r5, r1]
	ldr r1, _0219CD4C ; =0x0000FFFF
	cmp r2, r1
	beq _0219CD2E
	add r0, #0xc
	ldr r1, [r5, r0]
	sub r0, r1, r2
	bpl _0219CCC2
	neg r0, r0
_0219CCC2:
	cmp r0, #4
	bge _0219CD2E
	add r0, r5, #0
	bl sub_0219D010
	ldr r1, _0219CD4C ; =0x0000FFFF
	cmp r0, r1
	beq _0219CD2E
	mov r1, #1
	str r0, [sp, #4]
	lsl r0, r0, #2
	str r1, [sp, #8]
	add r1, r5, r0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0219CCEE
	ldr r0, _0219CD50 ; =0x00000548
_0219CCE8:
	bl GFL_SndSEPlay
	b _0219CD2E
_0219CCEE:
	ldr r0, _0219CD58 ; =0x00000557
	b _0219CCE8
_0219CCF2:
	add r1, r0, #0
	add r1, #0xc
	ldr r2, [r5, r1]
	ldr r1, [sp, #0xc]
	sub r1, r2, r1
	lsl r2, r1, #8
	add r1, r0, #4
	str r2, [r5, r1]
	add r1, r0, #0
	ldr r2, [sp, #0xc]
	add r1, #0xc
	str r2, [r5, r1]
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	add r0, #0x10
	ldr r1, [r5, r0]
	ldr r0, _0219CD4C ; =0x0000FFFF
	cmp r1, r0
	beq _0219CD2E
	ldr r0, [sp, #0xc]
	sub r0, r0, r1
	bpl _0219CD22
	neg r0, r0
_0219CD22:
	cmp r0, #4
	ble _0219CD2E
	mov r0, #0xeb
	ldr r1, _0219CD4C ; =0x0000FFFF
	lsl r0, r0, #2
_0219CD2C:
	str r1, [r5, r0]
_0219CD2E:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0219CD46
	mov r0, #0x3a
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #2
	bl ovy143_219cd60
_0219CD46:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CD4C: .word 0x0000FFFF
_0219CD50: .word 0x00000548
_0219CD54: .word 0x0000054C
_0219CD58: .word 0x00000557
_0219CD5C: .word 0xFFFFE000
	thumb_func_end ovy143_219ca94

	thumb_func_start ovy143_219cd60
ovy143_219cd60: ; 0x0219CD60
	push {r4, r5}
	ldr r3, _0219CDA4 ; =0x0000FFFF
	cmp r1, r3
	beq _0219CD7E
	mov r3, #0xcf
	lsl r3, r3, #2
	ldrb r3, [r0, r3]
	sub r3, r3, #1
	cmp r1, r3
	bge _0219CD78
	cmp r1, #1
	bge _0219CD7E
_0219CD78:
	mov r0, #0
	pop {r4, r5}
	bx lr
_0219CD7E:
	mov r4, #0xed
	lsl r4, r4, #2
	ldr r5, [r0, r4]
	add r3, r4, #4
	str r5, [r0, r3]
	add r3, r4, #0
	add r3, #8
	str r5, [r0, r3]
	str r1, [r0, r4]
	add r1, r4, #0
	mov r3, #1
	add r1, #0x10
	str r3, [r0, r1]
	add r4, #0x14
	str r2, [r0, r4]
	mov r0, #1
	pop {r4, r5}
	bx lr
	nop
_0219CDA4: .word 0x0000FFFF
	thumb_func_end ovy143_219cd60

	thumb_func_start ovy143_219cda8
ovy143_219cda8: ; 0x0219CDA8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, _0219CE1C ; =0x0000FFFF
	cmp r3, r2
	beq _0219CE16
	mov r2, #0xe6
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	mov r2, #0x1b
	asr r4, r0, #8
	asr r0, r4, #4
	lsr r0, r0, #0x1b
	add r0, r4, r0
	asr r5, r0, #5
	lsr r0, r4, #0x1f
	lsl r6, r4, #0x1b
	sub r6, r6, r0
	ror r6, r2
	add r2, r0, r6
	lsl r6, r4, #0x1a
	sub r6, r6, r0
	mov r4, #0x1a
	ror r6, r4
	add r4, r0, r6
	sub r3, r3, r5
	bmi _0219CE16
	add r0, r5, #7
	cmp r3, r0
	bge _0219CE16
	lsl r3, r3, #5
	add r3, r4, r3
	sub r2, r3, r2
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x18
	sub r3, r3, r4
	mov r2, #0x18
	ror r3, r2
	add r3, r4, r3
	asr r2, r3, #2
	mov r0, #4
	lsr r2, r2, #0x1d
	add r2, r3, r2
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	lsl r2, r2, #0x15
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0x19
	bl sub_0204566C
_0219CE16:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0219CE1C: .word 0x0000FFFF
	thumb_func_end ovy143_219cda8

	thumb_func_start sub_0219CE20
sub_0219CE20: ; 0x0219CE20
	ldr r3, _0219CE28 ; =ovy143_219cda8
	mov r2, #3
	bx r3
	nop
_0219CE28: .word ovy143_219cda8
	thumb_func_end sub_0219CE20

	thumb_func_start sub_0219CE2C
sub_0219CE2C: ; 0x0219CE2C
	ldr r3, _0219CE34 ; =ovy143_219cda8
	mov r2, #0
	bx r3
	nop
_0219CE34: .word ovy143_219cda8
	thumb_func_end sub_0219CE2C

	thumb_func_start ovy143_219ce38
ovy143_219ce38: ; 0x0219CE38
	push {r3, lr}
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	cmp r2, #1
	bne _0219CE4C
	sub r1, #0xc
	ldr r1, [r0, r1]
	bl sub_0219CE2C
_0219CE4C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219ce38

	thumb_func_start ovy143_219ce50
ovy143_219ce50: ; 0x0219CE50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0xf1
	add r5, r1, #0
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #1
	bne _0219CEF6
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219CE20
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, _0219CEFC ; =0x0000FFFF
	cmp r0, r1
	bne _0219CE80
	add r0, r6, #0
	mov r1, #0
	b _0219CEE2
_0219CE80:
	add r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, #2
	bne _0219CE90
	sub r4, #8
	ldr r2, [r5, r4]
	cmp r0, r2
	beq _0219CE9E
_0219CE90:
	cmp r1, #1
	bne _0219CEDE
	mov r2, #0xee
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	cmp r0, r2
	bne _0219CEDE
_0219CE9E:
	lsl r2, r0, #2
	add r3, r5, r2
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	cmp r2, #0
	bne _0219CED8
	mov r1, #0xf
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _0219CEC4
	add r0, r6, #0
	mov r1, #1
	bl sub_0219A504
	b _0219CEE8
_0219CEC4:
	mov r0, #3
	add r1, r5, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #8
	mov r2, #1
	mov r3, #0
	bl ovy143_219a4a8
	b _0219CEE8
_0219CED8:
	cmp r1, #2
	bne _0219CEE8
	b _0219CEDE
_0219CEDE:
	add r0, r6, #0
	mov r1, #1
_0219CEE2:
	mov r2, #1
	bl ovy143_219a4ec
_0219CEE8:
	mov r0, #6
	bl sub_02045B7C
	mov r0, #0xf1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219CEF6:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0219CEFC: .word 0x0000FFFF
	thumb_func_end ovy143_219ce50

	thumb_func_start ovy143_219cf00
ovy143_219cf00: ; 0x0219CF00
	push {r4, r5}
	mov r3, #0xe6
	lsl r3, r3, #2
	add r4, r3, #0
	sub r4, #0x5c
	ldrb r4, [r0, r4]
	ldr r2, [r0, r3]
	lsl r5, r4, #5
	sub r5, #8
	cmp r5, #0xc0
	bgt _0219CF1C
	mov r0, #0
	pop {r4, r5}
	bx lr
_0219CF1C:
	add r4, r2, r1
	mov r1, #2
	lsl r1, r1, #0xa
	str r4, [r0, r3]
	cmp r4, r1
	bge _0219CF2A
	b _0219CF32
_0219CF2A:
	sub r5, #0xc0
	lsl r1, r5, #8
	cmp r4, r1
	ble _0219CF34
_0219CF32:
	str r1, [r0, r3]
_0219CF34:
	mov r1, #0xe6
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	asr r1, r0, #8
	asr r0, r2, #8
	cmp r1, r0
	beq _0219CF48
	mov r0, #1
	pop {r4, r5}
	bx lr
_0219CF48:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy143_219cf00

	thumb_func_start ovy143_219cf50
ovy143_219cf50: ; 0x0219CF50
	push {r4, lr}
	mov r2, #0xe6
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	mov r0, #6
	asr r2, r2, #8
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1a
	sub r3, r3, r4
	mov r2, #0x1a
	ror r3, r2
	mov r1, #3
	add r2, r4, r3
	bl sub_02045E1C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy143_219cf50

	thumb_func_start ovy143_219cf74
ovy143_219cf74: ; 0x0219CF74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0xe6
	lsl r7, r7, #2
	str r0, [sp]
	ldr r0, [r0, r7]
	mov r1, #0x1b
	asr r0, r0, #8
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1b
	sub r2, r2, r3
	ror r2, r1
	add r2, r3, r2
	mov r1, #8
	sub r1, r1, r2
	str r1, [sp, #8]
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #5
	lsl r1, r0, #2
	ldr r0, [sp]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #4]
	add r0, r7, #0
	str r0, [sp, #0xc]
	sub r0, #0x1c
	str r0, [sp, #0xc]
	sub r7, #0x38
_0219CFB0:
	ldr r0, [sp]
	lsl r6, r4, #2
	add r5, r0, r6
	ldr r2, [sp, #8]
	lsl r3, r4, #5
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, r7]
	mov r1, #0x20
	asr r2, r2, #0x10
	bl sub_0202B230
	ldr r0, [sp, #4]
	add r0, r0, r6
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0219CFDA
	ldr r1, [sp, #0xc]
	ldr r1, [r5, r1]
	bl sub_02046F18
_0219CFDA:
	add r4, r4, #1
	cmp r4, #7
	blt _0219CFB0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219cf74

	thumb_func_start ovy143_219cfe4
ovy143_219cfe4: ; 0x0219CFE4
	push {r4, r5, r6, lr}
	mov r4, #0x3b
	add r6, r1, #0
	lsl r4, r4, #4
	ldr r0, [r6, r4]
	cmp r0, #1
	bne _0219D00E
	mov r5, #0
	sub r4, #0x50
_0219CFF6:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, r4]
	bl sub_0202B0F4
	add r5, r5, #1
	cmp r5, #7
	blt _0219CFF6
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
_0219D00E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219cfe4

	thumb_func_start sub_0219D010
sub_0219D010: ; 0x0219D010
	mov r2, #0xe6
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	sub r2, #0x5c
	asr r3, r3, #8
	add r1, r3, r1
	ldrb r0, [r0, r2]
	lsr r1, r1, #5
	cmp r1, r0
	blt _0219D026
	ldr r1, _0219D02C ; =0x0000FFFF
_0219D026:
	add r0, r1, #0
	bx lr
	nop
_0219D02C: .word 0x0000FFFF
	thumb_func_end sub_0219D010

	thumb_func_start ovy143_219d030
ovy143_219d030: ; 0x0219D030
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7]
	add r4, r1, #0
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200C62C
	add r6, r0, #0
	mov r2, #0
	mov r1, #0x30
_0219D04C:
	ldr r0, [r7, #8]
	add r0, r0, r2
	add r2, r2, #1
	strb r1, [r0, #8]
	cmp r2, #4
	blt _0219D04C
	mov r5, #0
_0219D05A:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200C678
	ldr r1, [r7, #8]
	add r1, r1, r5
	add r5, r5, #1
	strb r0, [r1, #8]
	cmp r5, #3
	blt _0219D05A
	mov r0, #0x4b
	mov r3, #0
	lsl r0, r0, #2
_0219D074:
	ldr r1, [r7, #8]
	mov r6, #0
	add r1, r1, r3
	ldrb r5, [r1, #8]
_0219D07C:
	lsl r1, r6, #2
	add r2, r4, r1
	ldr r1, [r2, r0]
	cmp r5, r1
	bne _0219D090
	mov r1, #0x8d
	mov r5, #1
	lsl r1, r1, #2
	str r5, [r2, r1]
	b _0219D096
_0219D090:
	add r6, r6, #1
	cmp r6, #0x42
	blt _0219D07C
_0219D096:
	add r3, r3, #1
	cmp r3, #3
	blt _0219D074
	mov r5, #0xf3
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	sub r1, r0, #1
	add r0, r5, #4
	str r1, [r4, r0]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	mov r3, #0x61
	bl sub_0202E7A4
	add r5, #0xc
	str r0, [r4, r5]
	add r4, #8
	add r0, r4, #0
	mov r1, #0
	bl ovy143_219a414
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d030

	thumb_func_start ovy143_219d0c8
ovy143_219d0c8: ; 0x0219D0C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200C62C
	add r6, r0, #0
	mov r4, #0
_0219D0E2:
	ldr r1, [r5, #8]
	add r0, r6, #0
	add r1, r1, r4
	ldrb r1, [r1, #8]
	add r2, r4, #0
	bl sub_0200C668
	add r4, r4, #1
	cmp r4, #3
	blt _0219D0E2
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_0202E818
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d0c8

	thumb_func_start ovy143_219d104
ovy143_219d104: ; 0x0219D104
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r6, #0
	add r0, r4, #0
	mov r1, #0
	mvn r6, r6
	bl ovy143_219d318
	bl sub_0203DA48
	cmp r0, #0
	bne _0219D128
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219D1B4
_0219D128:
	add r0, r4, #0
	bl ovy143_219c6c4
	mov r6, #0xf
	ldr r0, _0219D1B8 ; =0x0000FFFF
	lsl r6, r6, #6
	str r0, [r4, r6]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r7, #1
	bl ovy143_219a4ec
	mov r0, #3
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, #8
	mov r2, #1
	mov r3, #0xff
	bl ovy143_219a454
	ldr r0, _0219D1BC ; =0x00000547
	bl GFL_SndSEPlay
	add r0, r6, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	tst r0, r7
	beq _0219D192
	add r0, r6, #0
	add r0, #0x10
	ldr r3, [r4, r0]
	mov r0, #3
	sub r0, r0, #4
	cmp r3, r0
	beq _0219D190
	ldr r2, [r5, #8]
	add r0, r5, #0
	ldrb r2, [r2, #1]
	add r1, r4, #0
	bl ovy143_219d240
	ldr r0, [r5, #8]
	strb r7, [r0, #3]
	add r0, r6, #0
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #1
	bic r1, r0
	add r6, #0xc
	str r1, [r4, r6]
_0219D190:
	b _0219D1B2
_0219D192:
	add r0, r5, #0
	bl sub_0219D2CC
	add r3, r0, #0
	mov r0, #3
	sub r0, r0, #4
	cmp r3, r0
	beq _0219D1B2
	ldr r2, [r5, #8]
	add r0, r5, #0
	ldrb r2, [r2, #1]
	add r1, r4, #0
	bl ovy143_219d240
	ldr r0, [r5, #8]
	strb r7, [r0, #3]
_0219D1B2:
	mov r6, #0
_0219D1B4:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219D1B8: .word 0x0000FFFF
_0219D1BC: .word 0x00000547
	thumb_func_end ovy143_219d104

	thumb_func_start ovy143_219d1c0
ovy143_219d1c0: ; 0x0219D1C0
	push {r3, r4}
	mov r2, #0x4b
	mov r4, #0
	lsl r2, r2, #2
_0219D1C8:
	lsl r3, r4, #2
	add r3, r0, r3
	ldr r3, [r3, r2]
	cmp r1, r3
	bne _0219D1D8
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0219D1D8:
	add r4, r4, #1
	cmp r4, #0x42
	blt _0219D1C8
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy143_219d1c0

	thumb_func_start ovy143_219d1e8
ovy143_219d1e8: ; 0x0219D1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	add r5, r1, #0
	add r6, r2, #0
	mov r0, #0x20
	mov r1, #0x61
	mov r4, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	lsl r6, r6, #2
	add r1, r5, r6
	add r4, #0xcb
	ldr r0, [r5, #0x20]
	ldr r1, [r1, r4]
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #8]
	add r1, r5, r6
	ldr r0, [r0, #4]
	add r3, r7, #0
	ldr r0, [r0, #0xc]
	str r0, [sp]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r2, r0, #1
	ldr r0, _0219D23C ; =0x021A00A0
	ldrh r0, [r0, r2]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r1, #0x24]
	mov r1, #0
	bl sub_02021D28
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219D23C: .word 0x021A00A0
	thumb_func_end ovy143_219d1e8

	thumb_func_start ovy143_219d240
ovy143_219d240: ; 0x0219D240
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r7, r3, #0
	add r0, #8
	add r4, r1, #0
	ldrb r1, [r0, r7]
	add r6, r2, #0
	cmp r1, #0x30
	beq _0219D292
	add r0, r4, #0
	bl ovy143_219d1c0
	add r2, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _0219D278
	lsl r0, r2, #2
	add r1, r4, r0
	mov r0, #0x8d
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219d1e8
_0219D278:
	ldr r0, [r5, #8]
	add r1, r6, #0
	add r0, r0, r7
	strb r6, [r0, #8]
	add r0, r4, #0
	bl ovy143_219d1c0
	add r2, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _0219D2BA
	b _0219D2A6
_0219D292:
	strb r6, [r0, r7]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy143_219d1c0
	add r2, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _0219D2BA
_0219D2A6:
	lsl r0, r2, #2
	add r1, r4, r0
	mov r0, #0x8d
	mov r3, #1
	lsl r0, r0, #2
	str r3, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219d1e8
_0219D2BA:
	add r0, r4, #0
	bl ovy143_219cf74
	mov r0, #0x3b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d240

	thumb_func_start sub_0219D2CC
sub_0219D2CC: ; 0x0219D2CC
	ldr r2, [r0, #8]
	mov r1, #0
_0219D2D0:
	add r0, r2, r1
	ldrb r0, [r0, #8]
	cmp r0, #0x30
	bne _0219D2DC
	add r0, r1, #0
	bx lr
_0219D2DC:
	add r1, r1, #1
	cmp r1, #3
	blt _0219D2D0
	mov r0, #0
	mvn r0, r0
	bx lr
	thumb_func_end sub_0219D2CC

	thumb_func_start ovy143_219d2e8
ovy143_219d2e8: ; 0x0219D2E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r2, #0
	cmp r5, #1
	bne _0219D2F4
	sub r2, #0xa
_0219D2F4:
	ldr r4, _0219D314 ; =0x04001050
	mov r1, #0x1c
	add r0, r4, #0
	bl G2x_SetBlendBrightness_
	cmp r5, #0
	bne _0219D310
	mov r3, #0xf
	add r0, r4, #0
	mov r1, #4
	mov r2, #8
	str r3, [sp]
	bl G2x_SetBlendAlpha_
_0219D310:
	pop {r3, r4, r5, pc}
	nop
_0219D314: .word 0x04001050
	thumb_func_end ovy143_219d2e8

	thumb_func_start ovy143_219d318
ovy143_219d318: ; 0x0219D318
	push {r3, lr}
	add r3, r0, #0
	cmp r1, #0
	bne _0219D330
	mov r1, #0xf6
	lsl r1, r1, #2
	ldr r0, [r3, r1]
	sub r1, #0x98
	ldr r1, [r3, r1]
	bl sub_0202E96C
	pop {r3, pc}
_0219D330:
	mov r2, #0xd5
	lsl r2, r2, #2
	ldr r1, [r3, r2]
	cmp r1, #0
	beq _0219D348
	add r0, r2, #0
	add r0, #0x84
	sub r2, #0x14
	ldr r0, [r3, r0]
	ldr r2, [r3, r2]
	bl sub_0202E8D8
_0219D348:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219d318

	thumb_func_start sub_0219D34C
sub_0219D34C: ; 0x0219D34C
	ldr r3, _0219D350 ; =sub_0203DF20
	bx r3
	.align 2, 0
_0219D350: .word sub_0203DF20
	thumb_func_end sub_0219D34C

	thumb_func_start sub_0219D354
sub_0219D354: ; 0x0219D354
	ldr r3, _0219D358 ; =sub_0203DF44
	bx r3
	.align 2, 0
_0219D358: .word sub_0203DF44
	thumb_func_end sub_0219D354

	thumb_func_start sub_0219D35C
sub_0219D35C: ; 0x0219D35C
	bx lr
	.align 2, 0
	thumb_func_end sub_0219D35C

	thumb_func_start ovy143_219d360
ovy143_219d360: ; 0x0219D360
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4]
	add r6, r2, #0
	str r3, [sp]
	cmp r1, #0
	beq _0219D376
	cmp r1, #1
	beq _0219D3B8
	b _0219D428
_0219D376:
	mov r1, #0x28
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	mov r1, #0
	mov r2, #0x28
	add r5, r0, #0
	blx MI_CpuFill8
	mov r0, #0x30
	str r0, [r5, #0x24]
	bl ovy143_219d528
	ldr r0, [r6, #4]
	bl ovy143_219d594
	ldr r0, [r6, #4]
	add r1, r5, #0
	bl ovy143_219d5c0
	ldr r0, [r6, #4]
	add r1, r5, #0
	bl ovy143_219d660
	ldr r1, [r6, #4]
	add r0, r6, #0
	add r2, r5, #0
	bl ovy143_219d69c
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219D428
_0219D3B8:
	mov r0, #0
	str r0, [sp, #4]
	mov r4, #0
_0219D3BE:
	ldr r0, [r6, #4]
	lsl r1, r4, #3
	ldr r7, [r0, #8]
	ldr r0, [sp]
	add r5, r0, r1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _0219D3EA
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D3EA
	ldr r0, [r5, #0xc]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x10]
_0219D3EA:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _0219D3F4
	mov r0, #1
	b _0219D3F6
_0219D3F4:
	mov r0, #0
_0219D3F6:
	cmp r0, #0
	bne _0219D3FE
	mov r0, #1
	str r0, [sp, #4]
_0219D3FE:
	add r4, r4, #1
	cmp r4, #3
	blt _0219D3BE
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0219D428
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219D428:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d360

	thumb_func_start ovy143_219d430
ovy143_219d430: ; 0x0219D430
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r0, r6, #0
	add r0, #0x2d
	ldrb r0, [r0]
	str r1, [sp]
	str r3, [sp, #4]
	cmp r0, #1
	bne _0219D44A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219D44A:
	mov r4, #0
_0219D44C:
	ldr r0, [r6, #4]
	lsl r1, r4, #3
	ldr r7, [r0, #8]
	ldr r0, [sp, #4]
	add r5, r0, r1
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	beq _0219D478
	ldr r0, [r5, #0xc]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219D478
	ldr r0, [r5, #0xc]
	bl BmpWin_FlushChar
	mov r0, #0
	strb r0, [r5, #0x10]
_0219D478:
	ldrb r0, [r5, #0x10]
	mov r1, #1
	cmp r0, #0
	beq _0219D482
	mov r1, #0
_0219D482:
	add r0, sp, #8
	strb r1, [r0, r4]
	add r4, r4, #1
	cmp r4, #3
	blt _0219D44C
	ldr r0, [r6, #4]
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219D49E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219D49E:
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219D4F2
	ldr r0, [r6, #8]
	ldrb r0, [r0, #3]
	cmp r0, #1
	bne _0219D4C6
	add r0, sp, #8
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0219D4C6
	ldr r1, [r6, #4]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ovy143_219d69c
	ldr r0, [r6, #8]
	mov r1, #0
	strb r1, [r0, #3]
_0219D4C6:
	ldr r0, [r6, #8]
	ldrb r1, [r0, #1]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x24]
	cmp r1, r0
	beq _0219D4EC
	add r0, sp, #8
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0219D4EC
	ldr r1, [r6, #4]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl ovy143_219d740
	ldr r0, [r6, #8]
	ldrb r1, [r0, #1]
	ldr r0, [sp, #4]
	str r1, [r0, #0x24]
_0219D4EC:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0219D4F2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219d430

	thumb_func_start ovy143_219d4f8
ovy143_219d4f8: ; 0x0219D4F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219D50E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219D50E:
	mov r0, #8
	bl sub_02046D38
	add r0, r4, #0
	bl ovy143_219d648
	bl ovy143_219d574
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219d4f8

	thumb_func_start ovy143_219d528
ovy143_219d528: ; 0x0219D528
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0219D56C ; =0x021A0140
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219D570 ; =0x021A0160
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	str r4, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219D56C: .word 0x021A0140
_0219D570: .word 0x021A0160
	thumb_func_end ovy143_219d528

	thumb_func_start ovy143_219d574
ovy143_219d574: ; 0x0219D574
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #0
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy143_219d574

	thumb_func_start ovy143_219d594
ovy143_219d594: ; 0x0219D594
	push {lr}
	sub sp, #0xc
	mov r1, #0
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0x61
	str r1, [sp, #8]
	ldr r0, [r0, #0x30]
	mov r1, #0xe
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0
	bl sub_02044F90
	mov r0, #2
	bl sub_02044F90
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy143_219d594

	thumb_func_start ovy143_219d5c0
ovy143_219d5c0: ; 0x0219D5C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #3
	str r0, [sp]
	mov r6, #0xd
	add r5, r1, #0
	str r6, [sp, #4]
	mov r7, #1
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0x1c
	mov r4, #0
	bl BmpWin_CreateDynamic
	str r0, [r5]
	bl BmpWin_FlushChar
	ldr r0, [r5]
	bl sub_0204826C
	mov r0, #8
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #4
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #4]
	bl BmpWin_FlushChar
	ldr r0, [r5, #4]
	bl sub_0204826C
	mov r0, #9
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	mov r0, #0
	mov r1, #2
	mov r2, #0xf
	mov r3, #0x1c
	bl BmpWin_CreateDynamic
	str r0, [r5, #8]
	bl BmpWin_FlushChar
	ldr r0, [r5, #8]
	bl sub_0204826C
	add r0, r4, #0
_0219D62E:
	lsl r1, r4, #3
	add r2, r5, r1
	lsl r1, r4, #2
	ldr r1, [r5, r1]
	add r4, r4, #1
	str r1, [r2, #0xc]
	strb r0, [r2, #0x10]
	cmp r4, #3
	blt _0219D62E
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219d5c0

	thumb_func_start ovy143_219d648
ovy143_219d648: ; 0x0219D648
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219D64E:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #3
	blt _0219D64E
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219d648

	thumb_func_start ovy143_219d660
ovy143_219d660: ; 0x0219D660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	mov r1, #0x27
	bl sub_0204898C
	add r6, r0, #0
	ldr r7, [r5, #8]
	ldr r0, [r4, #0xc]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #4
	bl sub_02021C54
	mov r0, #1
	strb r0, [r4, #0x10]
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d660

	thumb_func_start ovy143_219d69c
ovy143_219d69c: ; 0x0219D69C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	str r0, [sp, #8]
	ldr r0, [r7, #4]
	add r5, r1, #0
	mov r6, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	mov r4, #0
_0219D6B6:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	add r0, r0, r4
	ldrb r2, [r0, #8]
	cmp r2, #0x30
	beq _0219D6FE
	mov r3, #0xc
	ldr r1, [r5, #0x34]
	mul r3, r2
	add r1, r1, r3
	ldrh r1, [r1, #4]
	ldr r0, [r5, #0x20]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x14]
	bl BmpWin_GetBitmap
	lsl r3, r4, #0x14
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	asr r3, r3, #0x10
	bl sub_02021C54
	mov r0, #1
	strb r0, [r7, #0x18]
	add r0, r6, #0
	bl GFL_StrBufFree
	mov r6, #1
_0219D6FE:
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, #3
	blt _0219D6B6
	cmp r6, #0
	bne _0219D73A
	ldr r0, [r5, #0x28]
	mov r1, #0x28
	bl sub_0204898C
	add r4, r0, #0
	ldr r6, [r5, #8]
	ldr r0, [r7, #0x14]
	bl BmpWin_GetBitmap
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_02021C54
	mov r0, #1
	strb r0, [r7, #0x18]
	add r0, r4, #0
	bl GFL_StrBufFree
_0219D73A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d69c

	thumb_func_start ovy143_219d740
ovy143_219d740: ; 0x0219D740
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	ldr r0, [r0, #8]
	add r4, r2, #0
	ldrb r6, [r0, #1]
	ldr r0, [r4, #8]
	add r5, r1, #0
	mov r7, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	cmp r6, #0x30
	bne _0219D762
	b _0219D8D0
_0219D762:
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_0219D8DC
	sub r1, r7, #1
	cmp r0, r1
	beq _0219D772
	mov r7, #1
_0219D772:
	ldr r0, [sp, #8]
	ldr r0, [r0, #8]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0219D77E
	mov r7, #1
_0219D77E:
	cmp r7, #1
	bne _0219D826
	mov r0, #0xc
	add r7, r6, #0
	mul r7, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r5, #0x34]
	ldr r0, [r5, #0x10]
	add r2, r2, r7
	ldrh r2, [r2, #2]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r1, [r5, #0x34]
	ldr r0, [r5, #0x24]
	add r1, r1, r7
	ldrh r1, [r1, #6]
	bl sub_0204898C
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0x29
	bl sub_0204898C
	str r0, [sp, #0xc]
	mov r0, #0x40
	mov r1, #0x61
	bl GFL_StrBufCreate
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl GFL_WordSetFormatStrbuf
	ldr r7, [r5, #8]
	ldr r0, [r4, #0x1c]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #4
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x20
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x1c]
	ldr r7, [r5, #8]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	mov r2, #0x70
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #0x34
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02021C54
	add r4, #0x20
	mov r0, #1
	strb r0, [r4]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [sp, #0xc]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219D826:
	ldr r0, [sp, #8]
	bl ovy143_219a6ec
	add r7, r0, #0
	mov r0, #0xc
	ldr r3, [r5, #0x34]
	mul r0, r6
	ldrb r2, [r3, r0]
	ldrh r1, [r7, #0xc]
	cmp r2, r1
	ble _0219D840
	mov r6, #0x2a
	b _0219D846
_0219D840:
	add r0, r3, r0
	ldrb r2, [r0, #1]
	mov r6, #0x2b
_0219D846:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r3, #3
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r3, #3
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r7, #0xe]
	ldr r0, [r5, #0x10]
	mov r1, #2
	mov r3, #3
	bl StringSetNumber
	ldr r0, [r5, #0x28]
	add r1, r6, #0
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #0x80
	mov r1, #0x61
	bl GFL_StrBufCreate
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x1c]
	ldr r6, [r5, #8]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	mov r3, #4
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02021C54
	add r4, #0x20
	mov r0, #1
	strb r0, [r4]
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0219D8D0:
	ldr r0, [r4, #8]
	bl BmpWin_FlushChar
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219d740

	thumb_func_start sub_0219D8DC
sub_0219D8DC: ; 0x0219D8DC
	ldr r3, [r0, #8]
	mov r2, #0
_0219D8E0:
	add r0, r3, r2
	ldrb r0, [r0, #8]
	cmp r1, r0
	bne _0219D8EC
	add r0, r2, #0
	bx lr
_0219D8EC:
	add r2, r2, #1
	cmp r2, #3
	blt _0219D8E0
	mov r0, #0
	mvn r0, r0
	bx lr
	thumb_func_end sub_0219D8DC

	thumb_func_start ovy143_219d8f8
ovy143_219d8f8: ; 0x0219D8F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [r6]
	add r4, r2, #0
	add r5, r3, #0
	cmp r1, #0
	beq _0219D912
	cmp r1, #1
	beq _0219D9F8
	cmp r1, #2
	bne _0219D910
	b _0219DA30
_0219D910:
	b _0219DA9C
_0219D912:
	mov r7, #0xc3
	lsl r7, r7, #2
	add r1, r7, #0
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	mov r1, #0
	add r2, r7, #0
	add r5, r0, #0
	blx MI_CpuFill8
	mov r1, #2
	add r0, r7, #0
	lsl r1, r1, #0xa
	sub r0, #0x50
	str r1, [r5, r0]
	add r1, r7, #0
	ldr r0, _0219DAA0 ; =0x0000FFFF
	sub r1, #0x18
	str r0, [r5, r1]
	add r1, r7, #0
	sub r1, #0x20
	str r0, [r5, r1]
	add r1, r7, #0
	sub r1, #0x1c
	str r0, [r5, r1]
	add r0, r4, #0
	bl ovy143_219a510
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219dff8
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219edd0
	bl ovy143_219e034
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219e0d0
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219e178
	add r0, r5, #0
	bl ovy143_219eccc
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0219E728
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ovy143_219e654
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219e6d4
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219e758
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219eea8
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ovy143_219f050
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219e228
	ldr r0, [r4, #4]
	mov r1, #4
	mov r2, #0x61
	bl ovy143_219a800
	sub r7, #8
	str r0, [r5, r7]
	ldr r0, [r4, #8]
	mov r1, #0x30
	strb r1, [r0, #1]
	ldr r0, _0219DAA4 ; =ovy143_219ed84
	add r1, r5, #0
	mov r2, #3
	bl GFL_VBlankTCBAdd
	str r0, [r5]
	ldr r2, [r4, #4]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219e45c
	add r0, r5, #0
	bl ovy143_219e418
	add r0, r5, #0
	mov r1, #0
	bl ovy143_219f56c
	add r5, #0x20
	add r0, r5, #0
	mov r1, #0
	bl ovy143_219a414
_0219D9F0:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _0219DA9C
_0219D9F8:
	ldr r1, [r4, #4]
	mov r4, #0x92
	lsl r4, r4, #2
	ldrb r2, [r5, r4]
	add r0, r5, #0
	bl ovy143_219e51c
	cmp r0, #1
	bne _0219DA9C
	add r0, r5, #0
	bl ovy143_219ecf0
	mov r7, #1
	add r4, #0x8c
	str r7, [r5, r4]
	bl sub_0203D554
	cmp r0, #0
	bne _0219DA24
	add r0, r5, #0
	add r1, r7, #0
	b _0219DA28
_0219DA24:
	ldr r1, _0219DAA0 ; =0x0000FFFF
	add r0, r5, #0
_0219DA28:
	mov r2, #0
	bl ovy143_219eadc
	b _0219D9F0
_0219DA30:
	ldr r0, [r4, #4]
	mov r7, #0x96
	lsl r7, r7, #2
	ldr r4, [r0, #8]
	ldrb r0, [r5, r7]
	mov r6, #0
	cmp r0, #0
	beq _0219DA5E
	sub r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DA5E
	sub r0, r7, #4
	ldr r0, [r5, r0]
	bl BmpWin_FlushChar
	strb r6, [r5, r7]
_0219DA5E:
	mov r0, #0x96
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0219DA6C
	mov r0, #1
	b _0219DA6E
_0219DA6C:
	mov r0, #0
_0219DA6E:
	cmp r0, #0
	bne _0219DA74
	mov r6, #1
_0219DA74:
	cmp r6, #0
	bne _0219DA9C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219DA9C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DAA0: .word 0x0000FFFF
_0219DAA4: .word ovy143_219ed84
	thumb_func_end ovy143_219d8f8

	thumb_func_start ovy143_219daa8
ovy143_219daa8: ; 0x0219DAA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r2, #0
	ldr r0, [r6]
	add r5, r1, #0
	ldr r0, [r0]
	add r4, r3, #0
	bl sub_02016B20
	add r0, r6, #0
	mov r1, #1
	bl ovy143_219a538
	add r0, r6, #0
	mov r1, #3
	bl ovy143_219a538
	add r0, r4, #0
	bl sub_0219E748
	ldr r0, [r6, #4]
	add r1, r4, #0
	bl sub_0219E71C
	ldr r0, [r6, #4]
	ldr r7, [r0, #8]
	mov r0, #0x96
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0219DB12
	mov r0, #0x96
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219DB12
	mov r0, #0x96
	lsl r0, r0, #2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl BmpWin_FlushChar
	mov r0, #0x96
	mov r1, #0
	lsl r0, r0, #2
	strb r1, [r4, r0]
_0219DB12:
	add r0, r6, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #1
	bne _0219DB28
	ldr r0, [r5]
	cmp r0, #4
	bne _0219DB28
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219DB28:
	ldr r0, [r5]
	cmp r0, #0xf
	bhi _0219DBC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219DB3A: ; jump table
	.short _0219DB5A - _0219DB3A - 2 ; case 0
	.short _0219DB5E - _0219DB3A - 2 ; case 1
	.short _0219DB70 - _0219DB3A - 2 ; case 2
	.short _0219DBB4 - _0219DB3A - 2 ; case 3
	.short _0219DBCC - _0219DB3A - 2 ; case 4
	.short _0219DCD6 - _0219DB3A - 2 ; case 5
	.short _0219DCF8 - _0219DB3A - 2 ; case 6
	.short _0219DD30 - _0219DB3A - 2 ; case 7
	.short _0219DD84 - _0219DB3A - 2 ; case 8
	.short _0219DDB0 - _0219DB3A - 2 ; case 9
	.short _0219DDC2 - _0219DB3A - 2 ; case 10
	.short _0219DE26 - _0219DB3A - 2 ; case 11
	.short _0219DE34 - _0219DB3A - 2 ; case 12
	.short _0219DEF2 - _0219DB3A - 2 ; case 13
	.short _0219DF0C - _0219DB3A - 2 ; case 14
	.short _0219DF16 - _0219DB3A - 2 ; case 15
_0219DB5A:
	mov r0, #1
_0219DB5C:
	b _0219DB6C
_0219DB5E:
	ldr r1, [r6, #4]
	add r0, r4, #0
	mov r2, #0x2d
	bl ovy143_219e270
_0219DB68:
	ldr r0, [r5]
	add r0, r0, #1
_0219DB6C:
	str r0, [r5]
	b _0219DF3A
_0219DB70:
	ldr r0, [r6, #4]
	add r1, r4, #0
	bl sub_0219E39C
	cmp r0, #1
	bne _0219DBC8
	bl sub_0203DA48
	cmp r0, #0
	bne _0219DB8E
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DBC8
_0219DB8E:
	add r0, r4, #0
	bl ovy143_219e3ac
	ldr r0, _0219DE70 ; =0x00000547
	bl GFL_SndSEPlay
	bl sub_0203DA48
	cmp r0, #0
	bne _0219DBA8
	add r0, r4, #0
	mov r1, #1
	b _0219DBAC
_0219DBA8:
	ldr r1, _0219DE74 ; =0x0000FFFF
	add r0, r4, #0
_0219DBAC:
	mov r2, #0
	bl ovy143_219eadc
	b _0219DB68
_0219DBB4:
	bl sub_0203DA2C
	cmp r0, #0
	bne _0219DBC8
	add r0, r4, #0
	bl sub_0219F638
	mov r1, #3
	tst r0, r1
	beq _0219DBCA
_0219DBC8:
	b _0219DF3A
_0219DBCA:
	b _0219DD80
_0219DBCC:
	bl GCTX_HIDGetPressedKeys
	str r0, [sp, #8]
	ldr r0, _0219DE78 ; =0x021A0184
	bl sub_0203DA0C
	add r7, r0, #0
	beq _0219DBE4
	ldr r0, [sp, #8]
	mov r1, #2
	tst r0, r1
	beq _0219DC04
_0219DBE4:
	mov r0, #0x99
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0219A794
	cmp r7, #0
	bne _0219DBF6
	mov r0, #1
	b _0219DBF8
_0219DBF6:
	mov r0, #0
_0219DBF8:
	bl sub_0203D564
	ldr r0, _0219DE7C ; =0x00000551
	bl GFL_SndSEPlay
	b _0219DE30
_0219DC04:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy143_219e7ec
	add r0, r4, #0
	bl ovy143_219ebc8
	mov r7, #0xb1
	lsl r7, r7, #2
	add r2, r7, #4
	ldr r1, [r4, r7]
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r1, r2
	bl ovy143_219ec7c
	cmp r0, #1
	bne _0219DC46
	add r0, r4, #0
	bl ovy143_219eccc
	add r0, r4, #0
	bl ovy143_219ecf0
	mov r0, #1
	add r7, #0x10
	str r0, [r4, r7]
	add r0, r4, #0
	bl ovy143_219ef9c
	add r0, r4, #0
	bl ovy143_219efe0
_0219DC46:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy143_219ebe0
	mov r7, #0xba
	lsl r7, r7, #2
	ldr r1, [r4, r7]
	ldr r0, _0219DE74 ; =0x0000FFFF
	cmp r1, r0
	bne _0219DC7A
	ldr r0, [r6, #8]
	mov r1, #0x30
	strb r1, [r0, #1]
	add r0, r4, #0
	add r0, #0x20
	mov r1, #0
	bl ovy143_219a414
	add r0, r7, #0
	sub r0, #8
	ldr r1, [r4, r0]
	mov r0, #2
	orr r0, r1
	sub r7, #8
	str r0, [r4, r7]
	b _0219DCA0
_0219DC7A:
	lsl r0, r1, #1
	add r1, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, [r6, #8]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r0, #0x20
	mov r1, #1
	bl ovy143_219a414
	add r0, r7, #0
	sub r0, #8
	ldr r1, [r4, r0]
	mov r0, #2
	bic r1, r0
	sub r7, #8
	str r1, [r4, r7]
_0219DCA0:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy143_219f198
	add r0, r6, #0
	add r1, r4, #0
	bl ovy143_219ee54
	add r0, r6, #0
	add r1, r4, #0
	bl ovy143_219f4c8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0219F648
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0219DE74 ; =0x0000FFFF
	cmp r1, r0
	beq _0219DD04
	ldr r0, _0219DE80 ; =0x0000054C
	bl GFL_SndSEPlay
	mov r0, #5
	b _0219DB5C
_0219DCD6:
	add r0, r6, #0
	mov r1, #1
	bl sub_0219A530
	cmp r0, #2
	beq _0219DD04
	add r0, r6, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219DD04
	add r0, r6, #0
	add r1, r4, #0
	bl ovy143_219f594
	b _0219DB68
_0219DCF8:
	ldr r0, [r6, #4]
	add r1, r4, #0
	bl sub_0219E39C
	cmp r0, #1
	beq _0219DD06
_0219DD04:
	b _0219DF3A
_0219DD06:
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DD1A
	ldr r0, _0219DE84 ; =0x021A04C4
	ldr r2, _0219DE88 ; =0x021A04C8
	mov r1, #0
	bl sub_0203CB80
_0219DD1A:
	mov r1, #0xc1
	lsl r1, r1, #2
	ldr r0, [r6, #4]
	ldr r1, [r4, r1]
	mov r6, #0x61
	mov r2, #0x61
	bl ovy143_219a820
	lsl r1, r6, #3
	str r0, [r4, r1]
	b _0219DB68
_0219DD30:
	mov r7, #0xc2
	lsl r7, r7, #2
	ldr r0, [r6, #4]
	ldr r2, [r4, r7]
	mov r1, #4
	add r3, sp, #0xc
	bl ovy143_219a890
	cmp r0, #1
	bne _0219DE2E
	ldr r0, [r4, r7]
	bl sub_0219A888
	mov r0, #0
	str r0, [r4, r7]
	add r0, r4, #0
	bl ovy143_219e3ac
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0219DD5E
	mov r0, #8
	b _0219DB5C
_0219DD5E:
	ldr r0, _0219DE74 ; =0x0000FFFF
	sub r7, #0x14
	str r0, [r4, r7]
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	bl ovy143_219a4ec
	mov r0, #3
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x20
	mov r2, #1
	mov r3, #0xff
	bl ovy143_219a454
_0219DD80:
	mov r0, #4
	b _0219DB5C
_0219DD84:
	add r0, r6, #0
	mov r1, #1
	mov r7, #1
	bl sub_0219A530
	cmp r0, #2
	beq _0219DE2E
	add r0, r6, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219DE2E
	ldr r1, [r6, #4]
	add r0, r4, #0
	mov r2, #0x30
	bl ovy143_219e2f8
	mov r0, #0xbf
	lsl r0, r0, #2
	str r7, [r4, r0]
	b _0219DB68
_0219DDB0:
	ldr r0, [r6, #4]
	add r1, r4, #0
	bl sub_0219E39C
	cmp r0, #1
	bne _0219DE2E
	mov r0, #0x3c
	str r0, [r4, #0x1c]
	b _0219DB68
_0219DDC2:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0219DDCC
	sub r0, r0, #1
	str r0, [r4, #0x1c]
_0219DDCC:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0219DDE4
	bl sub_0203DA48
	cmp r0, #0
	bne _0219DDE4
	bl GCTX_HIDGetPressedKeys
	mov r1, #3
	tst r0, r1
	beq _0219DE2E
_0219DDE4:
	ldr r0, _0219DE70 ; =0x00000547
	bl GFL_SndSEPlay
	add r0, r4, #0
	bl ovy143_219e3ac
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02016B20
	bl sub_0202BF7C
	add r0, r6, #0
	mov r1, #1
	mov r2, #1
	bl ovy143_219a4ec
	mov r0, #3
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x20
	mov r2, #1
	mov r3, #0xff
	bl ovy143_219a454
	bl sub_0203DA48
	cmp r0, #0
	beq _0219DE24
	mov r0, #0xb
	b _0219DB5C
_0219DE24:
	b _0219DE30
_0219DE26:
	bl sub_0203DA2C
	cmp r0, #0
	beq _0219DE30
_0219DE2E:
	b _0219DF3A
_0219DE30:
	mov r0, #0xc
	b _0219DB5C
_0219DE34:
	add r0, r6, #0
	mov r1, #1
	bl sub_0219A530
	cmp r0, #2
	beq _0219DF3A
	add r0, r6, #0
	mov r1, #3
	bl sub_0219A530
	cmp r0, #2
	beq _0219DF3A
	mov r6, #0x99
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0219A7A0
	cmp r0, #0
	bne _0219DF3A
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r4, r0]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0x59
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	ldr r1, _0219DE74 ; =0x0000FFFF
	b _0219DE8C
	nop
_0219DE70: .word 0x00000547
_0219DE74: .word 0x0000FFFF
_0219DE78: .word 0x021A0184
_0219DE7C: .word 0x00000551
_0219DE80: .word 0x0000054C
_0219DE84: .word 0x021A04C4
_0219DE88: .word 0x021A04C8
_0219DE8C:
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x90
	str r1, [r4, r0]
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DEF0
	ldr r0, [r4, #0x14]
	bl sub_0202BDD4
	add r7, r0, #0
	add r0, r6, #0
	add r0, #0x78
	ldr r0, [r4, r0]
	add r6, #0x7c
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	ldr r1, [r4, r6]
	mov r0, #1
	tst r0, r1
	beq _0219DEBC
	mov r2, #3
_0219DEBC:
	ldr r1, [sp, #4]
	add r6, sp, #0x10
	lsl r1, r1, #0x18
	ldr r0, [r4, #0xc]
	lsr r1, r1, #0x18
	add r3, r6, #0
	bl ovy27_2170cf8
	ldr r0, [r4, #8]
	add r1, r6, #0
	mov r2, #0
	bl sub_0201472C
	cmp r7, #1
	bne _0219DEDE
_0219DEDA:
	mov r0, #0xf
	b _0219DB6C
_0219DEDE:
	cmp r7, #0
	bne _0219DEE6
	mov r0, #0xe
	b _0219DB5C
_0219DEE6:
	ldr r0, [r4, #0x14]
	bl sub_0202BD80
	mov r0, #0xd
	b _0219DB5C
_0219DEF0:
	b _0219DEDA
_0219DEF2:
	ldr r0, [r4, #0x14]
	bl sub_0202BDD4
	cmp r0, #0
	bne _0219DF3A
	bl sub_020120C8
	cmp r0, #0
	bne _0219DF0A
	ldr r0, [r4, #0x14]
	bl sub_0202BE00
_0219DF0A:
	b _0219DB68
_0219DF0C:
	ldr r0, [r6]
	ldr r0, [r0]
	bl sub_02016BB4
	b _0219DB68
_0219DF16:
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DF28
	mov r0, #4
	add r6, #0x2c
	strb r0, [r6]
	b _0219DF34
_0219DF28:
	add r0, r6, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r6, #8]
	strb r1, [r0, #6]
_0219DF34:
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219DF3A:
	add r0, r4, #0
	bl ovy143_219e7a0
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219daa8

	thumb_func_start ovy143_219df48
ovy143_219df48: ; 0x0219DF48
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219DF60
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219DF60:
	mov r0, #8
	bl sub_02046DC0
	ldr r0, [r4]
	bl GFL_TCBRemove
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DF7A
	bl sub_020223CC
_0219DF7A:
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DF88
	bl GFL_StrBufFree
_0219DF88:
	add r0, r4, #0
	bl ovy143_219e4f4
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219DF9C
	bl sub_0219A888
_0219DF9C:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219A818
	add r0, r4, #0
	bl sub_0219E710
	add r0, r4, #0
	bl ovy143_219e6ac
	add r0, r4, #0
	bl sub_0219E738
	add r0, r4, #0
	bl ovy143_219e78c
	add r0, r4, #0
	bl ovy143_219ef28
	add r0, r4, #0
	bl ovy143_219f0d8
	add r0, r4, #0
	bl sub_0219E168
	add r0, r4, #0
	bl ovy143_219e20c
	bl ovy143_219e0a0
	ldr r0, [r4, #0x7c]
	bl sub_02022DA8
	ldr r0, [r4, #0x10]
	bl GFL_HeapFree
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219E028
	add r0, r6, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219df48

	thumb_func_start ovy143_219dff8
ovy143_219dff8: ; 0x0219DFF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0]
	bl sub_02016AD8
	str r0, [r4, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02016B20
	str r0, [r4, #0x14]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02016B08
	str r0, [r4, #8]
	mov r0, #0x61
	bl sub_02170AC4
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219dff8

	thumb_func_start sub_0219E028
sub_0219E028: ; 0x0219E028
	ldr r0, [r1, #0xc]
	ldr r3, _0219E030 ; =sub_02170B00
	bx r3
	nop
_0219E030: .word sub_02170B00
	thumb_func_end sub_0219E028

	thumb_func_start ovy143_219e034
ovy143_219e034: ; 0x0219E034
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0219E094 ; =0x021A0208
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219E098 ; =0x021A0228
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219E09C ; =0x021A0248
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	str r4, [sp, #8]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219E094: .word 0x021A0208
_0219E098: .word 0x021A0228
_0219E09C: .word 0x021A0248
	thumb_func_end ovy143_219e034

	thumb_func_start ovy143_219e0a0
ovy143_219e0a0: ; 0x0219E0A0
	push {r3, lr}
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	bl sub_02044B84
	mov r0, #6
	bl sub_02044B84
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219e0a0

	thumb_func_start ovy143_219e0d0
ovy143_219e0d0: ; 0x0219E0D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r4, r0, #0
	str r6, [sp]
	mov r0, #1
	add r5, r1, #0
	str r0, [sp, #4]
	mov r7, #0x61
	str r7, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #7
	mov r2, #6
	mov r3, #0
	bl sub_0204AF50
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #0x10
	mov r2, #5
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #0x30]
	mov r1, #9
	mov r2, #5
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0x52
	mov r1, #0x61
	bl sub_0204AA30
	add r5, r0, #0
	mov r0, #5
	mov r1, #0x80
	mov r2, #1
	bl sub_02044564
	str r0, [r4, #0x18]
	mov r0, #0x80
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r3, [r4, #0x18]
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #5
	bl sub_0204ADA8
	mov r0, #0xc
	str r0, [sp]
	ldr r3, [r4, #0x18]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x61
	bl sub_0202D830
	add r0, r5, #0
	bl GFL_ArcToolFree
	mov r0, #5
	bl sub_02044F90
	mov r0, #6
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219e0d0

	thumb_func_start sub_0219E168
sub_0219E168: ; 0x0219E168
	add r1, r0, #0
	ldr r1, [r1, #0x18]
	ldr r3, _0219E174 ; =sub_02044668
	mov r0, #5
	mov r2, #0x80
	bx r3
	.align 2, 0
_0219E174: .word sub_02044668
	thumb_func_end sub_0219E168

	thumb_func_start ovy143_219e178
ovy143_219e178: ; 0x0219E178
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #1
	mov r2, #0
	mov r3, #0x61
	mov r6, #1
	mov r7, #0
	bl sub_02024C98
	mov r0, #0
	bl sub_02024C8C
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	mov r3, #0x61
	bl sub_02026E94
	mov r0, #4
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r6, [sp, #8]
	bl BmpWin_CreateDynamic
	mov r5, #0x93
	lsl r5, r5, #2
	str r0, [r4, r5]
	bl BmpWin_GetBitmap
	mov r1, #0xff
	bl BmpWin_BitmapFill
	mov r0, #3
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	str r6, [sp, #8]
	bl BmpWin_CreateDynamic
	add r1, r5, #4
	str r0, [r4, r1]
	bl sub_0204826C
	mov r0, #4
	bl sub_02044F90
	add r0, r5, #4
	ldr r1, [r4, r0]
	add r0, r5, #0
	add r0, #8
	str r1, [r4, r0]
	add r5, #0xc
	strb r7, [r4, r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219e178

	thumb_func_start ovy143_219e20c
ovy143_219e20c: ; 0x0219E20C
	push {r4, r5, r6, lr}
	mov r6, #0x93
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0219E216:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #2
	blt _0219E216
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219e20c

	thumb_func_start ovy143_219e228
ovy143_219e228: ; 0x0219E228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	ldr r0, [r0, #0x28]
	mov r1, #0x2c
	bl sub_0204898C
	add r6, r0, #0
	ldr r4, [r4, #4]
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r7, [r4, #8]
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	mov r2, #0x18
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #4
	bl sub_02021C54
	mov r0, #0x95
	lsl r0, r0, #2
	mov r1, #1
	add r0, r0, #4
	strb r1, [r5, r0]
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219e228

	thumb_func_start ovy143_219e270
ovy143_219e270: ; 0x0219E270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _0219E28E
	ldr r0, _0219E2F0 ; =0x021A04C4
	ldr r2, _0219E2F4 ; =0x021A04E4
	mov r1, #0
	bl sub_0203CB80
_0219E28E:
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r7, #0xf
	bl sub_020232E8
	ldr r0, [r6, #0x28]
	add r1, r4, #0
	bl sub_0204898C
	mov r4, #0x97
	lsl r4, r4, #2
	str r0, [r5, r4]
	bl sub_02017BCC
	ldr r1, [r6, #0xc]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x61
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r7, [sp, #0x14]
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r3, [r5, r4]
	bl sub_02022268
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204826C
	sub r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	mov r3, #0xb
	bl sub_02024E80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E2F0: .word 0x021A04C4
_0219E2F4: .word 0x021A04E4
	thumb_func_end ovy143_219e270

	thumb_func_start ovy143_219e2f8
ovy143_219e2f8: ; 0x0219E2F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _0219E316
	ldr r0, _0219E394 ; =0x021A04C4
	ldr r2, _0219E398 ; =0x021A04E4
	mov r1, #0
	bl sub_0203CB80
_0219E316:
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	ldr r0, [r6, #0x28]
	add r1, r4, #0
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #0xf
	add r0, #0xf1
	mov r1, #0x61
	bl GFL_StrBufCreate
	mov r4, #0x97
	add r1, r0, #0
	lsl r4, r4, #2
	str r1, [r5, r4]
	ldr r0, [r6, #0x10]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	bl sub_02017BCC
	ldr r1, [r6, #0xc]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x18]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0x61
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r3, [r5, r4]
	bl sub_02022268
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0204826C
	sub r4, #0x10
	ldr r0, [r5, r4]
	mov r1, #1
	mov r2, #1
	mov r3, #0xb
	bl sub_02024E80
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E394: .word 0x021A04C4
_0219E398: .word 0x021A04E4
	thumb_func_end ovy143_219e2f8

	thumb_func_start sub_0219E39C
sub_0219E39C: ; 0x0219E39C
	mov r2, #0x26
	lsl r2, r2, #4
	ldr r1, [r1, r2]
	ldr r3, _0219E3A8 ; =sub_0202E68C
	add r0, #0x38
	bx r3
	.align 2, 0
_0219E3A8: .word sub_0202E68C
	thumb_func_end sub_0219E39C

	thumb_func_start ovy143_219e3ac
ovy143_219e3ac: ; 0x0219E3AC
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0x93
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl BmpWin_GetBitmap
	add r5, #0x14
	add r6, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _0219E3CE
	ldr r0, _0219E410 ; =0x021A04C4
	ldr r2, _0219E414 ; =0x021A0500
	mov r1, #0
	bl sub_0203CB80
_0219E3CE:
	mov r5, #0x26
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	bl sub_020223CC
	mov r7, #0
	str r7, [r4, r5]
	sub r0, r5, #4
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	sub r0, r5, #4
	str r7, [r4, r0]
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02024EEC
	add r0, r6, #0
	mov r1, #0xff
	bl BmpWin_BitmapFill
	sub r5, #0x14
	ldr r0, [r4, r5]
	bl BmpWin_FlushChar
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E410: .word 0x021A04C4
_0219E414: .word 0x021A0500
	thumb_func_end ovy143_219e3ac

	thumb_func_start ovy143_219e418
ovy143_219e418: ; 0x0219E418
	push {lr}
	sub sp, #0xc
	mov r1, #0x92
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	sub r0, r1, #2
	cmp r0, #7
	bge _0219E458
	sub r0, r1, #1
	lsl r1, r0, #5
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r3, r0, #3
	mov r0, #0x20
	str r0, [sp]
	sub r0, r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x11
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
_0219E458:
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy143_219e418

	thumb_func_start ovy143_219e45c
ovy143_219e45c: ; 0x0219E45C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7]
	add r6, r1, #0
	ldr r0, [r0]
	mov r4, #0
	bl sub_02016AD8
	add r0, r7, #0
	bl ovy143_219a6ec
	mov r0, #0x59
	lsl r0, r0, #2
	strh r4, [r6, r0]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	add r1, r6, #0
	add r1, #0x80
	str r0, [r1]
	add r5, r4, #1
_0219E48C:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy143_219f244
	cmp r0, #1
	bne _0219E4C6
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy143_219f308
	lsl r0, r5, #1
	add r1, r6, r0
	mov r0, #0x59
	lsl r0, r0, #2
	strh r4, [r1, r0]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	lsl r1, r5, #2
	add r1, r6, r1
	add r1, #0x80
	str r0, [r1]
	add r5, r5, #1
_0219E4C6:
	add r4, r4, #1
	cmp r4, #0x37
	blt _0219E48C
	lsl r0, r5, #1
	mov r4, #0x59
	mov r1, #0
	add r0, r6, r0
	lsl r4, r4, #2
	strh r1, [r0, r4]
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	lsl r1, r5, #2
	add r1, r6, r1
	add r1, #0x80
	str r0, [r1]
	add r0, r5, #1
	add r4, #0xe4
	strb r0, [r6, r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219e45c

	thumb_func_start ovy143_219e4f4
ovy143_219e4f4: ; 0x0219E4F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	mov r4, #0
	cmp r1, #0
	ble _0219E51A
	add r6, r5, r0
_0219E506:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_02046EDC
	ldrb r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _0219E506
_0219E51A:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219e4f4

	thumb_func_start ovy143_219e51c
ovy143_219e51c: ; 0x0219E51C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	str r1, [sp, #8]
	mov r0, #0x25
	mov r1, #0x61
	str r2, [sp, #0xc]
	mov r7, #0
	bl GFL_StrBufCreate
	ldr r2, _0219E5C4 ; =0x00000249
	add r6, r0, #0
	sub r0, r2, #1
	ldrb r4, [r5, r2]
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0219E5A4
	add r1, r2, #0
	str r1, [sp, #0x10]
	sub r1, #0xe5
	str r1, [sp, #0x10]
	sub r1, r2, #1
	str r1, [sp, #0x14]
_0219E54A:
	cmp r4, #1
	blt _0219E594
	sub r0, r0, #1
	cmp r4, r0
	bge _0219E594
	lsl r1, r4, #1
	add r2, r5, r1
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0xc]
	ldrsh r1, [r2, r1]
	mov r2, #0
	add r3, sp, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ovy27_2170cf8
	ldr r0, [r5, #0xc]
	ldr r3, _0219E5C8 ; =0x00008061
	add r1, r6, #0
	add r2, sp, #0x18
	bl sub_02170D04
	ldr r0, [sp, #8]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	add r3, r6, #0
	bl sub_02021D28
_0219E594:
	add r7, r7, #1
	cmp r7, #0x64
	bge _0219E5A4
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	ldrb r0, [r5, r0]
	cmp r4, r0
	blt _0219E54A
_0219E5A4:
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, _0219E5C4 ; =0x00000249
	strb r4, [r5, r0]
	ldrb r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	blt _0219E5BC
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0219E5BC:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0219E5C4: .word 0x00000249
_0219E5C8: .word 0x00008061
	thumb_func_end ovy143_219e51c

	thumb_func_start ovy143_219e5cc
ovy143_219e5cc: ; 0x0219E5CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	mov r4, #0xba
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r7, r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0
	str r2, [sp, #8]
	bl BmpWin_BitmapFill
	mov r0, #0x25
	mov r1, #0x61
	bl GFL_StrBufCreate
	ldr r1, [r5, r4]
	add r6, r0, #0
	lsl r1, r1, #1
	add r2, r5, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0xc]
	ldr r2, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r3, sp, #0xc
	bl ovy27_2170cf8
	ldr r0, [r5, #0xc]
	ldr r3, _0219E650 ; =0x00008061
	add r1, r6, #0
	add r2, sp, #0xc
	bl sub_02170D04
	ldr r0, [r7, #0xc]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r0, [r5, r4]
	mov r2, #0
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	add r3, r6, #0
	bl sub_02021D28
	add r0, r6, #0
	bl GFL_StrBufFree
	add r0, r5, #0
	bl ovy143_219ecf0
	mov r0, #1
	sub r4, #0x14
	str r0, [r5, r4]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E650: .word 0x00008061
	thumb_func_end ovy143_219e5cc

	thumb_func_start ovy143_219e654
ovy143_219e654: ; 0x0219E654
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r3, _0219E6A8 ; =0x021A01F0
	add r2, sp, #8
	str r0, [sp]
	add r6, r1, #0
	str r2, [sp, #4]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x5c]
	mov r7, #0xa2
	lsl r7, r7, #2
	str r0, [sp, #0x10]
	mov r4, #0
	sub r7, #0x1c
_0219E67A:
	ldr r0, [sp]
	lsl r1, r4, #2
	add r5, r0, r1
	mov r0, #0x17
	mov r1, #2
	mov r2, #0x20
	mov r3, #0x61
	bl sub_02046E28
	mov r1, #0xa2
	lsl r1, r1, #2
	str r0, [r5, r1]
	str r0, [sp, #8]
	ldr r0, [r6, #0x2c]
	ldr r1, [sp, #4]
	bl sub_0202AEC4
	add r4, r4, #1
	str r0, [r5, r7]
	cmp r4, #7
	blt _0219E67A
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E6A8: .word 0x021A01F0
	thumb_func_end ovy143_219e654

	thumb_func_start ovy143_219e6ac
ovy143_219e6ac: ; 0x0219E6AC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x9b
	lsl r6, r6, #2
	add r7, r0, #0
	mov r4, #0
	add r6, #0x1c
_0219E6B8:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202B030
	ldr r0, [r5, r6]
	bl sub_02046EDC
	add r4, r4, #1
	cmp r4, #7
	blt _0219E6B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219e6ac

	thumb_func_start ovy143_219e6d4
ovy143_219e6d4: ; 0x0219E6D4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0x40
	str r1, [sp]
	mov r1, #0xb4
	str r1, [sp, #4]
	mov r1, #0x2e
	str r1, [sp, #8]
	mov r5, #0
	str r5, [sp, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	add r1, #0x20
	mov r2, #1
	mov r3, #2
	bl ovy143_219a170
	bl sub_0203D554
	cmp r0, #1
	bne _0219E70A
	add r4, #0x20
	add r0, r4, #0
	add r1, r5, #0
	bl ovy143_219a414
_0219E70A:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219e6d4

	thumb_func_start sub_0219E710
sub_0219E710: ; 0x0219E710
	ldr r3, _0219E718 ; =ovy143_219a3f4
	add r0, #0x20
	bx r3
	nop
_0219E718: .word ovy143_219a3f4
	thumb_func_end sub_0219E710

	thumb_func_start sub_0219E71C
sub_0219E71C: ; 0x0219E71C
	ldr r3, _0219E724 ; =ovy143_219a42c
	add r1, #0x20
	bx r3
	nop
_0219E724: .word ovy143_219a42c
	thumb_func_end sub_0219E71C

	thumb_func_start sub_0219E728
sub_0219E728: ; 0x0219E728
	mov r2, #0x99
	lsl r2, r2, #2
	ldr r0, [r0, #4]
	ldr r3, _0219E734 ; =ovy143_219a6fc
	add r1, r1, r2
	bx r3
	.align 2, 0
_0219E734: .word ovy143_219a6fc
	thumb_func_end sub_0219E728

	thumb_func_start sub_0219E738
sub_0219E738: ; 0x0219E738
	mov r1, #0x99
	lsl r1, r1, #2
	ldr r3, _0219E744 ; =sub_0219A744
	add r0, r0, r1
	bx r3
	nop
_0219E744: .word sub_0219A744
	thumb_func_end sub_0219E738

	thumb_func_start sub_0219E748
sub_0219E748: ; 0x0219E748
	mov r1, #0x99
	lsl r1, r1, #2
	ldr r3, _0219E754 ; =ovy143_219a750
	add r0, r0, r1
	bx r3
	nop
_0219E754: .word ovy143_219a750
	thumb_func_end sub_0219E748

	thumb_func_start ovy143_219e758
ovy143_219e758: ; 0x0219E758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	mov r1, #0x80
	mov r2, #0x1c
	mov r3, #9
	bl ovy143_219a7a4
	str r0, [r4, #0x30]
	ldr r0, [r5, #4]
	mov r1, #0x80
	mov r2, #0xa4
	mov r3, #0xa
	bl ovy143_219a7a4
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl sub_0204C124
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219e758

	thumb_func_start ovy143_219e78c
ovy143_219e78c: ; 0x0219E78C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_0219A7F4
	ldr r0, [r4, #0x34]
	bl sub_0219A7F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy143_219e78c

	thumb_func_start ovy143_219e7a0
ovy143_219e7a0: ; 0x0219E7A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	ldr r0, [r4, #0x30]
	bgt _0219E7B8
	mov r1, #0
	b _0219E7BA
_0219E7B8:
	mov r1, #1
_0219E7BA:
	bl sub_0204C124
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x74
	ldrb r0, [r4, r0]
	asr r1, r1, #8
	lsl r0, r0, #5
	sub r0, #0xc8
	cmp r1, r0
	ldr r0, [r4, #0x34]
	blt _0219E7D8
	mov r1, #0
	b _0219E7DA
_0219E7D8:
	mov r1, #1
_0219E7DA:
	bl sub_0204C124
	ldr r0, [r4, #0x30]
	bl sub_0219A7FC
	ldr r0, [r4, #0x34]
	bl sub_0219A7FC
	pop {r4, pc}
	thumb_func_end ovy143_219e7a0

	thumb_func_start ovy143_219e7ec
ovy143_219e7ec: ; 0x0219E7EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0219EACC ; =0x0000FFFF
	mov r4, #0xb2
	str r0, [sp, #8]
	add r5, r1, #0
	ldr r0, [sp, #0xc]
	lsl r4, r4, #2
	str r0, [r5, r4]
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_0203DA84
	sub r4, #8
	add r7, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219E822
	ldr r0, [sp, #0x14]
	cmp r0, #0x18
	blo _0219E820
	cmp r0, #0xe0
	bls _0219E822
_0219E820:
	mov r7, #0
_0219E822:
	add r0, r5, #0
	bl sub_0219F638
	mov r1, #0xf3
	tst r0, r1
	bne _0219E830
	b _0219E982
_0219E830:
	mov r6, #0xaf
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r7, #0
	asr r1, r0, #8
	add r1, #0x18
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1b
	asr r4, r0, #5
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #8
	str r7, [r5, r0]
	add r0, r6, #4
	str r7, [r5, r0]
	add r0, r6, #0
	add r0, #0x2c
	ldr r1, [r5, r0]
	ldr r0, _0219EACC ; =0x0000FFFF
	cmp r1, r0
	bne _0219E89C
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0219E870
	add r4, r4, #1
_0219E870:
	cmp r4, #1
	bge _0219E876
	mov r4, #1
_0219E876:
	mov r0, #0x92
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	sub r1, r0, #2
	cmp r4, r1
	blt _0219E886
	add r0, r5, #0
	b _0219E88A
_0219E886:
	add r0, r5, #0
	add r1, r4, #0
_0219E88A:
	mov r2, #1
	bl ovy143_219eadc
	ldr r0, _0219EAD0 ; =0x00000548
	bl GFL_SndSEPlay
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E89C:
	bl GCTX_HIDGetPressedKeys
	mov r1, #1
	tst r0, r1
	beq _0219E8C4
	add r6, #0x2c
	ldr r1, [r5, r6]
	add r0, r5, #0
	mov r2, #1
	bl ovy143_219eadc
	add r0, r7, #0
	bl sub_0203D564
	ldr r0, _0219EAD4 ; =0x0000054C
	bl GFL_SndSEPlay
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219E8C4:
	add r0, r5, #0
	bl sub_0219F640
	mov r1, #0x40
	tst r0, r1
	beq _0219E912
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0219E8D8
	add r4, r4, #1
_0219E8D8:
	mov r1, #0xba
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	sub r1, r1, #1
	mov r2, #1
	bl ovy143_219eadc
	cmp r0, #1
	bne _0219E8F2
	ldr r0, _0219EAD0 ; =0x00000548
	bl GFL_SndSEPlay
_0219E8F2:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, r4
	bge _0219E902
	ldr r1, _0219EAD8 ; =0xFFFFE000
	sub r0, #0x20
	str r1, [r5, r0]
_0219E902:
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #0
	bl ovy143_219f380
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E912:
	add r0, r5, #0
	bl sub_0219F640
	mov r1, #0x80
	tst r0, r1
	beq _0219E966
	ldr r0, [r5, r6]
	add r6, #0x2c
	asr r1, r0, #8
	add r1, #0xa8
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	ldr r1, [r5, r6]
	asr r4, r0, #5
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #1
	bl ovy143_219eadc
	cmp r0, #1
	bne _0219E944
	ldr r0, _0219EAD0 ; =0x00000548
	bl GFL_SndSEPlay
_0219E944:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, r4
	blt _0219E956
	mov r1, #2
	lsl r1, r1, #0xc
	sub r0, #0x20
	str r1, [r5, r0]
_0219E956:
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #0
	bl ovy143_219f380
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E966:
	add r0, r5, #0
	bl sub_0219F640
	mov r1, #0x30
	tst r0, r1
	beq _0219E982
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #2
	bl ovy143_219f380
	add sp, #0x18
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219E982:
	mov r4, #0xb
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _0219EA2A
	cmp r7, #1
	bne _0219EA04
	ldr r1, [sp, #0x10]
	cmp r1, #0x18
	bls _0219E9C2
	cmp r1, #0xa8
	bhs _0219E9C2
	add r0, r5, #0
	bl sub_0219EDB0
	ldr r1, _0219EACC ; =0x0000FFFF
	cmp r0, r1
	beq _0219EAA2
	mov r0, #1
	str r0, [r5, r4]
	add r0, r4, #0
	ldr r2, [sp, #0x10]
	add r0, #0xc
	str r2, [r5, r0]
	ldr r0, [sp, #0x10]
	add r4, #0x10
	str r0, [r5, r4]
	add r0, r5, #0
	mov r2, #0
	bl ovy143_219eadc
	b _0219EAA2
_0219E9C2:
	bl sub_0203DA48
	cmp r0, #1
	bne _0219E9F8
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldr r0, _0219EACC ; =0x0000FFFF
	cmp r1, r0
	beq _0219E9F8
	ldr r0, [sp, #0x14]
	cmp r0, #0x10
	blo _0219E9F8
	cmp r0, #0x70
	bhi _0219E9F8
	ldr r0, [sp, #0x10]
	cmp r0, #0xac
	blo _0219E9F8
	cmp r0, #0xbc
	bhi _0219E9F8
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #1
	str r1, [sp, #8]
	bl sub_0203D564
	b _0219EAA2
_0219E9F8:
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #1
	bl ovy143_219f380
	b _0219EAA2
_0219EA04:
	add r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219EAA2
	ble _0219EA1A
	add r0, r4, #4
	ldr r1, [r5, r0]
	sub r1, #0xc0
	str r1, [r5, r0]
	bpl _0219EAA2
	b _0219EA26
_0219EA1A:
	add r0, r4, #4
	ldr r1, [r5, r0]
	add r1, #0xc0
	str r1, [r5, r0]
	cmp r1, #0
	ble _0219EAA2
_0219EA26:
	mov r1, #0
	b _0219EAA0
_0219EA2A:
	cmp r7, #0
	bne _0219EA66
	mov r0, #0
	str r0, [r5, r4]
	add r0, r4, #0
	add r0, #0x10
	ldr r2, [r5, r0]
	ldr r0, _0219EACC ; =0x0000FFFF
	cmp r2, r0
	beq _0219EAA2
	add r4, #0xc
	ldr r1, [r5, r4]
	sub r0, r1, r2
	bpl _0219EA48
	neg r0, r0
_0219EA48:
	cmp r0, #4
	bge _0219EAA2
	add r0, r5, #0
	bl sub_0219EDB0
	ldr r1, _0219EACC ; =0x0000FFFF
	cmp r0, r1
	beq _0219EAA2
	str r0, [sp, #8]
	mov r1, #1
	ldr r0, _0219EAD0 ; =0x00000548
	str r1, [sp, #0xc]
	bl GFL_SndSEPlay
	b _0219EAA2
_0219EA66:
	add r0, r4, #0
	add r0, #0xc
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	sub r0, r1, r0
	lsl r1, r0, #8
	add r0, r4, #4
	str r1, [r5, r0]
	add r0, r4, #0
	ldr r1, [sp, #0x10]
	add r0, #0xc
	str r1, [r5, r0]
	ldr r0, [r5, r4]
	add r0, r0, #1
	str r0, [r5, r4]
	add r4, #0x10
	ldr r1, [r5, r4]
	ldr r0, _0219EACC ; =0x0000FFFF
	cmp r1, r0
	beq _0219EAA2
	ldr r0, [sp, #0x10]
	sub r0, r0, r1
	bpl _0219EA96
	neg r0, r0
_0219EA96:
	cmp r0, #4
	ble _0219EAA2
	mov r0, #0x2d
	ldr r1, _0219EACC ; =0x0000FFFF
	lsl r0, r0, #4
_0219EAA0:
	str r1, [r5, r0]
_0219EAA2:
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0219EAC4
	mov r0, #0xb1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #2
	bl ovy143_219eadc
	ldr r0, [sp]
	add r1, r5, #0
	mov r2, #0
	bl ovy143_219f380
_0219EAC4:
	ldr r0, [sp, #0xc]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219EACC: .word 0x0000FFFF
_0219EAD0: .word 0x00000548
_0219EAD4: .word 0x0000054C
_0219EAD8: .word 0xFFFFE000
	thumb_func_end ovy143_219e7ec

	thumb_func_start ovy143_219eadc
ovy143_219eadc: ; 0x0219EADC
	push {r4, r5}
	ldr r3, _0219EB20 ; =0x0000FFFF
	cmp r1, r3
	beq _0219EAFA
	mov r3, #0x92
	lsl r3, r3, #2
	ldrb r3, [r0, r3]
	sub r3, r3, #1
	cmp r1, r3
	bge _0219EAF4
	cmp r1, #1
	bge _0219EAFA
_0219EAF4:
	mov r0, #0
	pop {r4, r5}
	bx lr
_0219EAFA:
	mov r4, #0xba
	lsl r4, r4, #2
	ldr r5, [r0, r4]
	add r3, r4, #4
	str r5, [r0, r3]
	add r3, r4, #0
	add r3, #8
	str r5, [r0, r3]
	str r1, [r0, r4]
	add r1, r4, #0
	mov r3, #1
	add r1, #0x10
	str r3, [r0, r1]
	add r4, #0x18
	str r2, [r0, r4]
	mov r0, #1
	pop {r4, r5}
	bx lr
	nop
_0219EB20: .word 0x0000FFFF
	thumb_func_end ovy143_219eadc

	thumb_func_start ovy143_219eb24
ovy143_219eb24: ; 0x0219EB24
	push {r4, r5, r6, lr}
	sub sp, #8
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, _0219EB98 ; =0x0000FFFF
	cmp r3, r2
	beq _0219EB92
	mov r2, #0xaf
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	mov r2, #0x1b
	asr r4, r0, #8
	asr r0, r4, #4
	lsr r0, r0, #0x1b
	add r0, r4, r0
	asr r5, r0, #5
	lsr r0, r4, #0x1f
	lsl r6, r4, #0x1b
	sub r6, r6, r0
	ror r6, r2
	add r2, r0, r6
	lsl r6, r4, #0x1a
	sub r6, r6, r0
	mov r4, #0x1a
	ror r6, r4
	add r4, r0, r6
	sub r3, r3, r5
	bmi _0219EB92
	add r0, r5, #7
	cmp r3, r0
	bge _0219EB92
	lsl r3, r3, #5
	add r3, r4, r3
	sub r2, r3, r2
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x18
	sub r3, r3, r4
	mov r2, #0x18
	ror r3, r2
	add r3, r4, r3
	asr r2, r3, #2
	mov r0, #4
	lsr r2, r2, #0x1d
	add r2, r3, r2
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	lsl r2, r2, #0x15
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #3
	lsr r2, r2, #0x18
	mov r3, #0x19
	bl sub_0204566C
_0219EB92:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0219EB98: .word 0x0000FFFF
	thumb_func_end ovy143_219eb24

	thumb_func_start sub_0219EB9C
sub_0219EB9C: ; 0x0219EB9C
	ldr r3, _0219EBA4 ; =ovy143_219eb24
	mov r2, #3
	bx r3
	nop
_0219EBA4: .word ovy143_219eb24
	thumb_func_end sub_0219EB9C

	thumb_func_start ovy143_219eba8
ovy143_219eba8: ; 0x0219EBA8
	push {r3, lr}
	mov r2, #0x2e
	lsl r2, r2, #4
	ldr r3, [r0, r2]
	mov r2, #1
	tst r2, r3
	beq _0219EBBE
	mov r2, #5
	bl ovy143_219eb24
	pop {r3, pc}
_0219EBBE:
	mov r2, #0
	bl ovy143_219eb24
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219eba8

	thumb_func_start ovy143_219ebc8
ovy143_219ebc8: ; 0x0219EBC8
	push {r3, lr}
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	cmp r2, #1
	bne _0219EBDC
	sub r1, #0xc
	ldr r1, [r0, r1]
	bl ovy143_219eba8
_0219EBDC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy143_219ebc8

	thumb_func_start ovy143_219ebe0
ovy143_219ebe0: ; 0x0219EBE0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r4, #0xbe
	add r5, r1, #0
	lsl r4, r4, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #1
	bne _0219EC74
	add r1, r4, #0
	sub r1, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0219EB9C
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, _0219EC78 ; =0x0000FFFF
	cmp r0, r1
	bne _0219EC10
	add r0, r6, #0
	mov r1, #0
	b _0219EC60
_0219EC10:
	add r1, r4, #0
	add r1, #8
	ldr r2, [r5, r1]
	cmp r2, #2
	bne _0219EC22
	sub r4, #8
	ldr r1, [r5, r4]
	cmp r0, r1
	beq _0219EC30
_0219EC22:
	cmp r2, #1
	bne _0219EC5C
	mov r1, #0xbb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	cmp r0, r1
	bne _0219EC5C
_0219EC30:
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, #0xc
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _0219EC48
	add r0, r6, #0
	mov r1, #1
	bl sub_0219A504
	b _0219EC66
_0219EC48:
	mov r0, #3
	add r1, r5, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x20
	mov r2, #1
	mov r3, #0
	bl ovy143_219a4a8
	b _0219EC66
_0219EC5C:
	add r0, r6, #0
	mov r1, #1
_0219EC60:
	mov r2, #1
	bl ovy143_219a4ec
_0219EC66:
	mov r0, #6
	bl sub_02045B7C
	mov r0, #0xbe
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0219EC74:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219EC78: .word 0x0000FFFF
	thumb_func_end ovy143_219ebe0

	thumb_func_start ovy143_219ec7c
ovy143_219ec7c: ; 0x0219EC7C
	push {r4, r5}
	mov r3, #0xaf
	lsl r3, r3, #2
	add r4, r3, #0
	sub r4, #0x74
	ldrb r4, [r0, r4]
	ldr r2, [r0, r3]
	lsl r5, r4, #5
	sub r5, #8
	cmp r5, #0xc0
	bgt _0219EC98
	mov r0, #0
	pop {r4, r5}
	bx lr
_0219EC98:
	add r4, r2, r1
	mov r1, #2
	lsl r1, r1, #0xa
	str r4, [r0, r3]
	cmp r4, r1
	bge _0219ECA6
	b _0219ECAE
_0219ECA6:
	sub r5, #0xc0
	lsl r1, r5, #8
	cmp r4, r1
	ble _0219ECB0
_0219ECAE:
	str r1, [r0, r3]
_0219ECB0:
	mov r1, #0xaf
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	asr r1, r0, #8
	asr r0, r2, #8
	cmp r1, r0
	beq _0219ECC4
	mov r0, #1
	pop {r4, r5}
	bx lr
_0219ECC4:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy143_219ec7c

	thumb_func_start ovy143_219eccc
ovy143_219eccc: ; 0x0219ECCC
	push {r4, lr}
	mov r2, #0xaf
	add r3, r0, #0
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	mov r0, #6
	asr r2, r2, #8
	lsr r4, r2, #0x1f
	lsl r3, r2, #0x1a
	sub r3, r3, r4
	mov r2, #0x1a
	ror r3, r2
	mov r1, #3
	add r2, r4, r3
	bl sub_02045E1C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy143_219eccc

	thumb_func_start ovy143_219ecf0
ovy143_219ecf0: ; 0x0219ECF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r7, r0]
	mov r1, #0x1b
	asr r0, r0, #8
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1b
	sub r2, r2, r3
	ror r2, r1
	add r2, r3, r2
	mov r1, #8
	sub r6, r1, r2
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #5
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #0x10]
	sub r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	sub r0, #0x50
	str r0, [sp, #0xc]
_0219ED2E:
	lsl r0, r4, #2
	str r0, [sp, #4]
	add r0, r7, r0
	lsl r5, r4, #5
	add r2, r6, r5
	lsl r2, r2, #0x10
	str r0, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	asr r2, r2, #0x10
	ldr r0, [r1, r0]
	mov r1, #0x20
	bl sub_0202B230
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r1, r0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _0219ED62
	ldr r2, [sp]
	ldr r1, [sp, #0x10]
	ldr r1, [r2, r1]
	bl sub_02046F18
_0219ED62:
	add r0, r7, #0
	add r1, r4, #3
	add r2, r6, r5
	bl ovy143_219ef40
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0xa
	add r2, r6, r5
	bl ovy143_219ef40
	add r4, r4, #1
	cmp r4, #7
	blt _0219ED2E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219ecf0

	thumb_func_start ovy143_219ed84
ovy143_219ed84: ; 0x0219ED84
	push {r4, r5, r6, lr}
	mov r4, #0xb5
	add r6, r1, #0
	lsl r4, r4, #2
	ldr r0, [r6, r4]
	cmp r0, #1
	bne _0219EDAE
	mov r5, #0
	sub r4, #0x68
_0219ED96:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, r4]
	bl sub_0202B0F4
	add r5, r5, #1
	cmp r5, #7
	blt _0219ED96
	mov r0, #0xb5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
_0219EDAE:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219ed84

	thumb_func_start sub_0219EDB0
sub_0219EDB0: ; 0x0219EDB0
	mov r2, #0xaf
	lsl r2, r2, #2
	ldr r3, [r0, r2]
	sub r2, #0x74
	ldrb r0, [r0, r2]
	asr r3, r3, #8
	add r1, r3, r1
	lsr r1, r1, #5
	sub r0, r0, #1
	cmp r1, r0
	blt _0219EDC8
	ldr r1, _0219EDCC ; =0x0000FFFF
_0219EDC8:
	add r0, r1, #0
	bx lr
	.align 2, 0
_0219EDCC: .word 0x0000FFFF
	thumb_func_end sub_0219EDB0

	thumb_func_start ovy143_219edd0
ovy143_219edd0: ; 0x0219EDD0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r0, [r0]
	add r5, r1, #0
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017394
	mov r2, #0x2e
	add r6, r0, #0
	lsl r2, r2, #4
	mov r0, #0
	str r0, [r5, r2]
	sub r1, r2, #4
	str r0, [r5, r1]
	ldr r1, _0219EE4C ; =0x000001D6
	sub r2, #8
	str r0, [r5, r2]
	add r2, r0, #0
	add r3, r1, #1
_0219EDFA:
	lsl r4, r0, #1
	add r4, r5, r4
	strb r2, [r4, r1]
	add r0, r0, #1
	strb r2, [r4, r3]
	cmp r0, #0x39
	blt _0219EDFA
	mov r0, #0x61
	str r0, [sp]
	mov r0, #0x17
	mov r1, #3
	add r3, r2, #0
	mov r4, #0x17
	bl GFL_FontCreate
	str r0, [r5, #0x7c]
	ldr r0, [r5, #0xc]
	mov r1, #0x61
	bl sub_02170B8C
	str r0, [r5, #0x10]
	lsl r0, r4, #5
	ldr r1, [r5, r0]
	mov r0, #4
	orr r1, r0
	lsl r0, r4, #5
	str r1, [r5, r0]
	ldr r1, _0219EE50 ; =0x00000986
	add r0, r6, #0
	bl sub_020191AC
	cmp r0, #1
	bne _0219EE48
	lsl r0, r4, #5
	ldr r1, [r5, r0]
	mov r0, #4
	bic r1, r0
	lsl r0, r4, #5
	str r1, [r5, r0]
_0219EE48:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219EE4C: .word 0x000001D6
_0219EE50: .word 0x00000986
	thumb_func_end ovy143_219edd0

	thumb_func_start ovy143_219ee54
ovy143_219ee54: ; 0x0219EE54
	push {r3, r4}
	mov r3, #0xba
	lsl r3, r3, #2
	ldr r4, [r1, r3]
	ldr r2, _0219EEA4 ; =0x0000FFFF
	cmp r4, r2
	bne _0219EE72
	ldr r1, [r0, #8]
	mov r2, #0xff
	strb r2, [r1, #4]
	ldr r0, [r0, #8]
	mov r1, #0
	strb r1, [r0, #5]
	pop {r3, r4}
	bx lr
_0219EE72:
	lsl r2, r4, #1
	add r4, r1, r2
	mov r2, #0x59
	lsl r2, r2, #2
	ldrsh r4, [r4, r2]
	ldr r2, [r0, #8]
	strb r4, [r2, #4]
	add r2, r3, #0
	sub r2, #8
	ldr r4, [r1, r2]
	mov r2, #1
	tst r2, r4
	beq _0219EE96
	ldr r0, [r0, #8]
	mov r1, #3
	strb r1, [r0, #5]
	pop {r3, r4}
	bx lr
_0219EE96:
	sub r3, #0xc
	ldr r1, [r1, r3]
	ldr r0, [r0, #8]
	strb r1, [r0, #5]
	pop {r3, r4}
	bx lr
	nop
_0219EEA4: .word 0x0000FFFF
	thumb_func_end ovy143_219ee54

	thumb_func_start ovy143_219eea8
ovy143_219eea8: ; 0x0219EEA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r4, #0
	add r7, sp, #0x14
_0219EEB4:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0219EF24 ; =0x021A0268
	add r5, r0, r1
	ldrsh r0, [r0, r1]
	lsl r1, r4, #2
	strh r0, [r7]
	mov r0, #2
	ldrsh r0, [r5, r0]
	strh r0, [r7, #2]
	mov r0, #4
	ldrsh r0, [r5, r0]
	strh r0, [r7, #4]
	mov r0, #6
	ldrsh r0, [r5, r0]
	strb r0, [r7, #6]
	mov r0, #8
	ldrsh r0, [r5, r0]
	strb r0, [r7, #7]
	ldr r0, [sp, #0xc]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x10]
	add r6, r0, r1
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x54]
	ldr r2, [r3, #0x50]
	ldr r3, [r3, #0x58]
	bl sub_0204C040
	mov r1, #1
	str r0, [r6, #0x38]
	bl sub_0204C520
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	cmp r1, #0
	beq _0219EF18
	lsl r1, r1, #0x18
	ldr r0, [r6, #0x38]
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
_0219EF18:
	add r4, r4, #1
	cmp r4, #0x11
	blt _0219EEB4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219EF24: .word 0x021A0268
	thumb_func_end ovy143_219eea8

	thumb_func_start ovy143_219ef28
ovy143_219ef28: ; 0x0219EF28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219EF2E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #0x11
	blt _0219EF2E
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219ef28

	thumb_func_start ovy143_219ef40
ovy143_219ef40: ; 0x0219EF40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r5, #0x38
	lsl r4, r1, #2
	add r7, sp, #0
	add r6, r2, #0
	ldr r0, [r5, r4]
	add r1, r7, #0
	mov r2, #1
	bl sub_0204C178
	add r1, sp, #0
	strh r6, [r1, #2]
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r2, #1
	add r0, #8
	strh r0, [r1, #2]
	ldr r0, [r5, r4]
	add r1, r7, #0
	bl sub_0204C140
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219ef40

	thumb_func_start sub_0219EF70
sub_0219EF70: ; 0x0219EF70
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x38]
	ldr r3, _0219EF7C ; =sub_0204C124
	add r1, r2, #0
	bx r3
	.align 2, 0
_0219EF7C: .word sub_0204C124
	thumb_func_end sub_0219EF70

	thumb_func_start ovy143_219ef80
ovy143_219ef80: ; 0x0219EF80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #2
	add r5, #0x38
	lsl r1, r2, #0x10
	ldr r0, [r5, r4]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	thumb_func_end ovy143_219ef80

	thumb_func_start ovy143_219ef9c
ovy143_219ef9c: ; 0x0219EF9C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xaf
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r4, #0
	asr r1, r0, #8
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r0, r0, #5
	lsl r0, r0, #1
	add r7, r5, r0
	sub r6, #0xe5
_0219EFB8:
	add r0, r5, #0
	add r1, r4, #3
	mov r2, #1
	bl sub_0219EF70
	lsl r0, r4, #1
	add r0, r7, r0
	ldrb r1, [r0, r6]
	mov r0, #1
	tst r0, r1
	bne _0219EFD8
	add r0, r5, #0
	add r1, r4, #3
	mov r2, #0
	bl sub_0219EF70
_0219EFD8:
	add r4, r4, #1
	cmp r4, #7
	blt _0219EFB8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219ef9c

	thumb_func_start ovy143_219efe0
ovy143_219efe0: ; 0x0219EFE0
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xaf
	add r5, r0, #0
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	mov r4, #0
	asr r1, r0, #8
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r7, r0, #5
	sub r6, #0xe6
_0219EFF8:
	add r0, r4, r7
	lsl r0, r0, #1
	add r0, r5, r0
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _0219F00E
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xa
	mov r2, #0
	b _0219F042
_0219F00E:
	cmp r0, #1
	bne _0219F01C
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xa
	mov r2, #0xc
	b _0219F036
_0219F01C:
	cmp r0, #2
	bne _0219F02A
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xa
	mov r2, #0xd
	b _0219F036
_0219F02A:
	cmp r0, #3
	blo _0219F046
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xa
	mov r2, #0xe
_0219F036:
	bl ovy143_219ef80
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0xa
	mov r2, #1
_0219F042:
	bl sub_0219EF70
_0219F046:
	add r4, r4, #1
	cmp r4, #7
	blt _0219EFF8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219efe0

	thumb_func_start ovy143_219f050
ovy143_219f050: ; 0x0219F050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r4, #0
	add r6, r0, #0
	str r4, [sp, #4]
	ldr r0, [r6, #0x5c]
	add r7, r1, #0
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r1, #1
	add r0, sp, #4
	strh r1, [r0, #0x12]
	mov r0, #0x2b
	lsl r0, r0, #4
	str r0, [sp]
	sub r0, #0xc
	str r1, [sp, #0x18]
	str r0, [sp]
_0219F074:
	lsl r0, r4, #2
	ldr r3, _0219F0D4 ; =0x021A01C2
	lsl r1, r0, #1
	ldr r2, _0219F0D4 ; =0x021A01C2
	ldrsh r3, [r3, r1]
	add r2, r2, r1
	add r1, sp, #4
	strh r3, [r1, #4]
	mov r1, #2
	ldrsh r3, [r2, r1]
	add r1, sp, #4
	add r5, r7, r0
	strh r3, [r1, #6]
	mov r1, #4
	ldrsh r3, [r2, r1]
	add r1, sp, #4
	mov r0, #6
	strb r3, [r1, #0x10]
	mov r1, #6
	ldrsh r2, [r2, r1]
	add r1, sp, #4
	mov r3, #0x61
	strb r2, [r1, #0x11]
	mov r1, #2
	mov r2, #0x20
	bl sub_02046E28
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r5, r1]
	str r0, [sp, #4]
	ldr r0, [r6, #0x2c]
	add r1, sp, #4
	bl sub_0202AEC4
	ldr r1, [sp]
	add r2, r4, #0
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy143_219f100
	add r4, r4, #1
	cmp r4, #3
	blt _0219F074
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0219F0D4: .word 0x021A01C2
	thumb_func_end ovy143_219f050

	thumb_func_start ovy143_219f0d8
ovy143_219f0d8: ; 0x0219F0D8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0xa9
	lsl r6, r6, #2
	add r7, r0, #0
	mov r4, #0
	add r6, #0xc
_0219F0E4:
	lsl r0, r4, #2
	add r5, r7, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0202B030
	ldr r0, [r5, r6]
	bl sub_02046EDC
	add r4, r4, #1
	cmp r4, #3
	blt _0219F0E4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219f0d8

	thumb_func_start ovy143_219f100
ovy143_219f100: ; 0x0219F100
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r6, r2, #0
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r6, #1
	mov r3, #1
	bl StringSetNumber
	mov r0, #0x40
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r5, #0x28]
	mov r1, #0x3f
	bl sub_0204898C
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #8]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
	ldr r0, [r4, #0x7c]
	lsl r5, r6, #2
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	mov r6, #0x2b
	str r0, [sp, #4]
	add r0, r4, r5
	lsl r6, r6, #4
	ldr r0, [r0, r6]
	mov r1, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_02021D28
	add r0, r4, r5
	sub r6, #0xc
	ldr r0, [r0, r6]
	bl sub_0202B0F4
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219f100

	thumb_func_start ovy143_219f174
ovy143_219f174: ; 0x0219F174
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	add r6, r2, #0
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_0202B098
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0219EF70
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219f174

	thumb_func_start ovy143_219f198
ovy143_219f198: ; 0x0219F198
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x2e
	lsl r1, r1, #4
	str r0, [sp]
	ldr r2, [r5, r1]
	mov r0, #2
	tst r0, r2
	bne _0219F1B0
	mov r0, #1
	tst r0, r2
	beq _0219F1C6
_0219F1B0:
	mov r4, #0
	add r6, r4, #0
_0219F1B4:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy143_219f174
	add r4, r4, #1
	cmp r4, #3
	blt _0219F1B4
	pop {r3, r4, r5, r6, r7, pc}
_0219F1C6:
	add r1, #8
	ldr r0, [r5, r1]
	mov r6, #0
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _0219F238 ; =0x000001D6
	add r4, r6, #0
	ldrb r0, [r1, r0]
	lsl r1, r0, #2
	ldr r0, _0219F23C ; =0x021A01B0
	ldrsh r7, [r0, r1]
_0219F1DC:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy143_219f174
	add r6, r6, #1
	cmp r6, #3
	blt _0219F1DC
	cmp r7, #0
	ble _0219F202
	mov r6, #1
_0219F1F2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy143_219f174
	add r4, r4, #1
	cmp r4, r7
	blt _0219F1F2
_0219F202:
	mov r6, #0xba
	lsl r6, r6, #2
	ldr r0, [r5, r6]
	ldr r4, _0219F240 ; =0x000001D7
	lsl r0, r0, #1
	add r3, r5, r0
	ldrb r0, [r3, r4]
	mov r1, #1
	tst r1, r0
	beq _0219F236
	mov r7, #2
	tst r0, r7
	bne _0219F236
	add r2, r4, #0
	sub r2, #0x73
	ldrsh r2, [r3, r2]
	ldr r0, [sp]
	add r1, r5, #0
	bl ovy143_219f360
	ldr r0, [r5, r6]
	add r2, r5, r4
	lsl r1, r0, #1
	ldrb r0, [r2, r1]
	orr r0, r7
	strb r0, [r2, r1]
_0219F236:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F238: .word 0x000001D6
_0219F23C: .word 0x021A01B0
_0219F240: .word 0x000001D7
	thumb_func_end ovy143_219f198

	thumb_func_start ovy143_219f244
ovy143_219f244: ; 0x0219F244
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	bl sub_02016AD8
	str r0, [sp]
	bl sub_02017394
	ldr r1, _0219F304 ; =0x00000986
	add r7, r0, #0
	bl sub_020191AC
	cmp r0, #1
	bne _0219F26C
	cmp r6, #0
	bne _0219F274
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F26C:
	cmp r6, #0
	beq _0219F274
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F274:
	mov r1, #0x2c
	add r5, r6, #0
	mul r5, r1
	ldr r1, [r4, #0x10]
	mov r0, #0
	add r1, r1, r5
	ldrb r1, [r1, #1]
	cmp r1, #7
	bhi _0219F2C8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219F292: ; jump table
	.short _0219F2A2 - _0219F292 - 2 ; case 0
	.short _0219F2C8 - _0219F292 - 2 ; case 1
	.short _0219F2A6 - _0219F292 - 2 ; case 2
	.short _0219F2C8 - _0219F292 - 2 ; case 3
	.short _0219F2A8 - _0219F292 - 2 ; case 4
	.short _0219F2A8 - _0219F292 - 2 ; case 5
	.short _0219F2A8 - _0219F292 - 2 ; case 6
	.short _0219F2A8 - _0219F292 - 2 ; case 7
_0219F2A2:
	mov r0, #1
	b _0219F2C8
_0219F2A6:
	b _0219F2A2
_0219F2A8:
	ldr r0, [sp]
	bl sub_0201736C
	add r6, r0, #0
	ldr r0, [sp]
	bl sub_02017934
	bl sub_0200C838
	ldr r1, [r4, #0x10]
	add r2, r6, #0
	add r1, r1, r5
	ldrb r1, [r1, #1]
	sub r1, r1, #2
	bl ovy12_21659b4
_0219F2C8:
	cmp r0, #0
	bne _0219F2D0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F2D0:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	beq _0219F2E8
	add r0, r7, #0
	bl sub_020191AC
	cmp r0, #0
	bne _0219F2E8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F2E8:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	beq _0219F300
	add r0, r7, #0
	bl sub_020191AC
	cmp r0, #0
	bne _0219F300
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F300:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F304: .word 0x00000986
	thumb_func_end ovy143_219f244

	thumb_func_start ovy143_219f308
ovy143_219f308: ; 0x0219F308
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	add r6, r3, #0
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010DEC
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r0, [sp]
	lsl r4, r4, #1
	bl sub_02010F6C
	ldr r7, _0219F35C ; =0x000001D6
	add r1, r5, r4
	strb r0, [r1, r7]
	lsl r1, r6, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl sub_02010FB0
	cmp r0, #1
	bne _0219F34E
	add r0, r7, #1
	add r2, r5, r0
	ldrb r1, [r2, r4]
	mov r0, #1
	orr r0, r1
	strb r0, [r2, r4]
	pop {r3, r4, r5, r6, r7, pc}
_0219F34E:
	add r0, r7, #1
	add r2, r5, r0
	ldrb r1, [r2, r4]
	mov r0, #0xfe
	and r0, r1
	strb r0, [r2, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F35C: .word 0x000001D6
	thumb_func_end ovy143_219f308

	thumb_func_start ovy143_219f360
ovy143_219f360: ; 0x0219F360
	push {r4, lr}
	ldr r0, [r0]
	add r4, r2, #0
	ldr r0, [r0]
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010DEC
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_02010FC0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy143_219f360

	thumb_func_start ovy143_219f380
ovy143_219f380: ; 0x0219F380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0xb7
	add r5, r1, #0
	lsl r4, r4, #2
	str r0, [sp]
	ldr r0, [r5, r4]
	mov r7, #0
	lsl r1, r0, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	add r1, r4, #4
	ldr r3, [r5, r1]
	mov r1, #1
	tst r1, r3
	beq _0219F3BA
	add r4, #0xc
	ldr r1, [r5, r4]
	ldr r0, _0219F494 ; =0x0000FFFF
	cmp r1, r0
	beq _0219F490
	ldr r1, [sp]
	add r0, r5, #0
	ldr r1, [r1, #4]
	mov r2, #3
	bl ovy143_219e5cc
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0219F3BA:
	add r1, r4, #0
	add r1, #0xc
	ldr r3, [r5, r1]
	ldr r1, _0219F494 ; =0x0000FFFF
	cmp r3, r1
	beq _0219F490
	lsl r1, r3, #1
	add r3, r5, r1
	ldr r1, _0219F498 ; =0x000001D6
	ldrb r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _0219F49C ; =0x021A01AE
	cmp r2, #0
	ldrsh r6, [r1, r3]
	bne _0219F3E0
	cmp r0, r6
	ble _0219F458
	str r7, [r5, r4]
	b _0219F456
_0219F3E0:
	cmp r2, #1
	bne _0219F400
	ldr r0, _0219F4A0 ; =0x021A018C
	bl sub_0203DA0C
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bmi _0219F458
	cmp r0, r6
	bgt _0219F458
	str r0, [r5, r4]
	ldr r0, _0219F4A4 ; =0x00000548
	mov r7, #1
	bl GFL_SndSEPlay
	b _0219F458
_0219F400:
	cmp r2, #2
	bne _0219F458
	add r0, r5, #0
	bl sub_0219F640
	mov r1, #0x20
	tst r0, r1
	beq _0219F42E
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219F41C
	ldr r0, _0219F4A4 ; =0x00000548
	bl GFL_SndSEPlay
_0219F41C:
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	bpl _0219F42C
	mov r1, #0
	str r1, [r5, r0]
_0219F42C:
	b _0219F456
_0219F42E:
	add r0, r5, #0
	bl sub_0219F640
	mov r1, #0x10
	tst r0, r1
	beq _0219F458
	ldr r0, [r5, r4]
	cmp r0, r6
	beq _0219F446
	ldr r0, _0219F4A4 ; =0x00000548
	bl GFL_SndSEPlay
_0219F446:
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	cmp r1, r6
	blt _0219F456
	str r6, [r5, r0]
_0219F456:
	mov r7, #1
_0219F458:
	cmp r7, #1
	bne _0219F480
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	mov r2, #1
	bl sub_0204C378
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	mov r2, #1
	bl sub_0204C378
_0219F480:
	ldr r1, [sp]
	mov r2, #0xb7
	lsl r2, r2, #2
	ldr r1, [r1, #4]
	ldr r2, [r5, r2]
	add r0, r5, #0
	bl ovy143_219e5cc
_0219F490:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F494: .word 0x0000FFFF
_0219F498: .word 0x000001D6
_0219F49C: .word 0x021A01AE
_0219F4A0: .word 0x021A018C
_0219F4A4: .word 0x00000548
	thumb_func_end ovy143_219f380

	thumb_func_start ovy143_219f4a8
ovy143_219f4a8: ; 0x0219F4A8
	push {r3, lr}
	sub sp, #8
	mov r3, #0x20
	str r3, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	bl sub_0204566C
	mov r0, #6
	bl sub_02045B7C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy143_219f4a8

	thumb_func_start ovy143_219f4c8
ovy143_219f4c8: ; 0x0219F4C8
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0x2e
	add r5, r1, #0
	lsl r6, r6, #4
	add r7, r0, #0
	ldr r1, [r5, r6]
	mov r0, #4
	tst r0, r1
	bne _0219F560
	mov r0, #1
	tst r0, r1
	bne _0219F560
	bl sub_0203DA48
	cmp r0, #0
	beq _0219F4F0
	mov r0, #0
	sub r6, #8
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_0219F4F0:
	bl GCTX_HIDGetPressedKeys
	cmp r0, #0
	beq _0219F560
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	lsl r1, r0, #1
	ldr r0, _0219F564 ; =0x021A019C
	ldrh r4, [r0, r1]
	bl GCTX_HIDGetPressedKeys
	tst r0, r4
	beq _0219F53E
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r0, r6, #0
	sub r0, #8
	str r1, [r5, r0]
	cmp r1, #9
	blt _0219F560
	ldr r1, [r5, r6]
	mov r0, #1
	orr r0, r1
	str r0, [r5, r6]
	ldr r0, _0219F568 ; =0x00000774
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy143_219f4a8
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl ovy143_219f380
	pop {r3, r4, r5, r6, r7, pc}
_0219F53E:
	add r0, r6, #0
	mov r1, #0
	sub r0, #8
	str r1, [r5, r0]
	ldr r0, _0219F564 ; =0x021A019C
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	bl GCTX_HIDGetPressedKeys
	tst r0, r4
	beq _0219F560
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r6, #8
	add r0, r0, #1
	str r0, [r5, r6]
_0219F560:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F564: .word 0x021A019C
_0219F568: .word 0x00000774
	thumb_func_end ovy143_219f4c8

	thumb_func_start ovy143_219f56c
ovy143_219f56c: ; 0x0219F56C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0219F592
	bl ovy143_219ef9c
	add r0, r5, #0
	bl ovy143_219efe0
	mov r4, #0
	add r6, r4, #0
_0219F582:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy143_219f174
	add r4, r4, #1
	cmp r4, #3
	blt _0219F582
_0219F592:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy143_219f56c

	thumb_func_start ovy143_219f594
ovy143_219f594: ; 0x0219F594
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0xb7
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	add r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	beq _0219F5AE
	mov r7, #3
_0219F5AE:
	mov r0, #0x25
	mov r1, #0x61
	bl GFL_StrBufCreate
	mov r6, #0xba
	lsl r6, r6, #2
	ldr r1, [r4, r6]
	str r0, [sp, #8]
	lsl r1, r1, #1
	add r2, r4, r1
	mov r1, #0x59
	lsl r1, r1, #2
	ldrsh r1, [r2, r1]
	add r2, r7, #0
	add r7, sp, #0xc
	lsl r1, r1, #0x18
	ldr r0, [r4, #0xc]
	lsr r1, r1, #0x18
	add r3, r7, #0
	bl ovy27_2170cf8
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #8]
	ldr r3, _0219F634 ; =0x00008061
	add r2, r7, #0
	bl sub_02170D04
	mov r7, #1
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, [sp, #8]
	ldr r0, [r0, #0x10]
	mov r1, #0
	mov r3, #0
	bl sub_0202437C
	ldr r0, [sp, #8]
	bl GFL_StrBufFree
	add r0, r6, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	sub r6, #8
	add r2, r0, #1
	ldr r0, [r4, r6]
	tst r0, r7
	beq _0219F612
	mov r2, #4
_0219F612:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r5, #4]
	mov r3, #1
	ldr r0, [r0, #0x10]
	bl StringSetNumber
	ldr r1, [r5, #4]
	add r0, r4, #0
	mov r2, #0x2f
	bl ovy143_219e2f8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F634: .word 0x00008061
	thumb_func_end ovy143_219f594

	thumb_func_start sub_0219F638
sub_0219F638: ; 0x0219F638
	ldr r3, _0219F63C ; =sub_0203DF20
	bx r3
	.align 2, 0
_0219F63C: .word sub_0203DF20
	thumb_func_end sub_0219F638

	thumb_func_start sub_0219F640
sub_0219F640: ; 0x0219F640
	ldr r3, _0219F644 ; =sub_0203DF44
	bx r3
	.align 2, 0
_0219F644: .word sub_0203DF44
	thumb_func_end sub_0219F640

	thumb_func_start sub_0219F648
sub_0219F648: ; 0x0219F648
	bx lr
	.align 2, 0
	thumb_func_end sub_0219F648

	thumb_func_start ovy143_219f64c
ovy143_219f64c: ; 0x0219F64C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4]
	add r7, r2, #0
	str r3, [sp]
	cmp r1, #0
	beq _0219F662
	cmp r1, #1
	beq _0219F684
	b _0219F6F6
_0219F662:
	mov r1, #0x80
	mov r2, #0x61
	bl GFL_ProcInitSubsystem
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x80
	blx MI_CpuFill8
	add r0, r7, #0
	add r1, r5, #0
	bl ovy143_219f7e0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0219F6F6
_0219F684:
	mov r0, #0
	str r0, [sp, #4]
	mov r4, #0
_0219F68A:
	ldr r0, [r7, #4]
	lsl r1, r4, #3
	ldr r6, [r0, #8]
	ldr r0, [sp]
	add r5, r0, r1
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219F6BE
	ldr r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _0219F6BE
	ldr r0, [r5, #0x24]
	bl BmpWin_FlushChar
	add r1, r5, #0
	add r1, #0x28
	mov r0, #0
	strb r0, [r1]
_0219F6BE:
	add r5, #0x28
	ldrb r0, [r5]
	cmp r0, #0
	bne _0219F6CA
	mov r0, #1
	b _0219F6CC
_0219F6CA:
	mov r0, #0
_0219F6CC:
	cmp r0, #0
	bne _0219F6D4
	mov r0, #1
	str r0, [sp, #4]
_0219F6D4:
	add r4, r4, #1
	cmp r4, #9
	blt _0219F68A
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0219F6F6
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F6F6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219f64c

	thumb_func_start ovy143_219f6fc
ovy143_219f6fc: ; 0x0219F6FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r0, r7, #0
	add r0, #0x2d
	ldrb r0, [r0]
	add r6, r3, #0
	str r1, [sp]
	cmp r0, #1
	bne _0219F716
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0219F716:
	mov r4, #0
_0219F718:
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #4]
	lsl r0, r4, #3
	add r5, r6, r0
	add r0, r5, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0219F74A
	ldr r0, [r5, #0x24]
	bl BmpWin_GetBitmap
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02021C1C
	cmp r0, #0
	bne _0219F74A
	ldr r0, [r5, #0x24]
	bl BmpWin_FlushChar
	add r5, #0x28
	mov r0, #0
	strb r0, [r5]
_0219F74A:
	add r4, r4, #1
	cmp r4, #9
	blt _0219F718
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219F762
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F762:
	ldr r2, [r7, #8]
	ldr r1, [r6, #0x78]
	ldrb r0, [r2, #4]
	cmp r0, r1
	bne _0219F774
	ldrb r2, [r2, #5]
	ldr r1, [r6, #0x7c]
	cmp r2, r1
	beq _0219F794
_0219F774:
	str r0, [r6, #0x78]
	ldr r1, [r7, #8]
	cmp r0, #0xff
	ldrb r1, [r1, #5]
	str r1, [r6, #0x7c]
	beq _0219F78E
	ldr r1, [r7, #4]
	add r0, r7, #0
	add r2, r6, #0
	mov r3, #1
	bl ovy143_219f92c
	b _0219F794
_0219F78E:
	add r0, r6, #0
	bl ovy143_219fe54
_0219F794:
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bne _0219F7A2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219F7A2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219f6fc

	thumb_func_start ovy143_219f7a8
ovy143_219f7a8: ; 0x0219F7A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r3, #0
	ldr r0, [r0, #8]
	bl PrintSystem_IsTextPrintActiveEnd
	cmp r0, #0
	bne _0219F7BE
	mov r0, #0
	pop {r3, r4, r5, pc}
_0219F7BE:
	mov r0, #8
	bl sub_02046D38
	add r0, r4, #0
	bl ovy143_219f9fc
	bl ovy143_219f868
	add r0, r4, #0
	bl ovy143_219f914
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219f7a8

	thumb_func_start ovy143_219f7e0
ovy143_219f7e0: ; 0x0219F7E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r2, #0xff
	mov r1, #0
	add r5, r0, #0
	str r2, [r4, #0x78]
	str r1, [r4, #0x7c]
	ldr r0, [r5, #8]
	strb r2, [r0, #4]
	ldr r0, [r5, #8]
	strb r1, [r0, #5]
	bl ovy143_219f81c
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ovy143_219f888
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy143_219f8b4
	add r0, r4, #0
	bl ovy143_219f9d8
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ovy143_219fa18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219f7e0

	thumb_func_start ovy143_219f81c
ovy143_219f81c: ; 0x0219F81C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0219F860 ; =0x021A0394
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	ldr r1, _0219F864 ; =0x021A03B4
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	str r4, [sp, #8]
	mov r0, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0219F860: .word 0x021A0394
_0219F864: .word 0x021A03B4
	thumb_func_end ovy143_219f81c

	thumb_func_start ovy143_219f868
ovy143_219f868: ; 0x0219F868
	push {r3, lr}
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #0
	bl sub_02044B84
	mov r0, #2
	bl sub_02044B84
	pop {r3, pc}
	thumb_func_end ovy143_219f868

	thumb_func_start ovy143_219f888
ovy143_219f888: ; 0x0219F888
	push {lr}
	sub sp, #0xc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x61
	str r0, [sp, #8]
	ldr r0, [r1, #0x30]
	mov r1, #0xf
	mov r2, #2
	mov r3, #0
	bl sub_0204AF50
	mov r0, #0
	bl sub_02044F90
	mov r0, #2
	bl sub_02044F90
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy143_219f888

	thumb_func_start ovy143_219f8b4
ovy143_219f8b4: ; 0x0219F8B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _0219F910 ; =0x021A034A
	add r5, r1, #0
	mov r6, #0
_0219F8BE:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0219F8F0
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	str r1, [sp]
	ldrb r1, [r4, #5]
	lsl r7, r6, #2
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrb r1, [r4, #1]
	bl BmpWin_CreateDynamic
	str r0, [r5, r7]
	bl BmpWin_FlushChar
	ldr r0, [r5, r7]
	bl sub_0204826C
	add r6, r6, #1
	add r4, r4, #6
	cmp r6, #9
	blt _0219F8BE
_0219F8F0:
	mov r3, #0
	add r0, r3, #0
_0219F8F4:
	lsl r1, r3, #3
	add r2, r5, r1
	lsl r1, r3, #2
	ldr r1, [r5, r1]
	add r3, r3, #1
	str r1, [r2, #0x24]
	add r2, #0x28
	strb r0, [r2]
	cmp r3, #9
	blt _0219F8F4
	bl sub_02044F90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F910: .word 0x021A034A
	thumb_func_end ovy143_219f8b4

	thumb_func_start ovy143_219f914
ovy143_219f914: ; 0x0219F914
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219F91A:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	bl sub_02048210
	add r4, r4, #1
	cmp r4, #9
	blt _0219F91A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219f914

	thumb_func_start ovy143_219f92c
ovy143_219f92c: ; 0x0219F92C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #8]
	add r5, r1, #0
	str r2, [sp, #0xc]
	mov r4, #0
_0219F938:
	cmp r4, #0
	beq _0219F986
	ldr r0, _0219F9D4 ; =0x021A03D4
	lsl r6, r4, #3
	add r1, r0, r6
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, r0, #3
	str r1, [sp, #0x10]
	cmp r1, r0
	beq _0219F986
	ldr r1, _0219F9D4 ; =0x021A03D4
	ldr r0, [r5, #0x28]
	ldrsh r1, [r1, r6]
	bl sub_0204898C
	add r7, r0, #0
	ldr r0, [r5, #8]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r6, r0, r6
	ldr r0, [r6, #0x24]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl sub_02021C54
	add r6, #0x28
	mov r0, #1
	strb r0, [r6]
	add r0, r7, #0
	bl GFL_StrBufFree
_0219F986:
	add r4, r4, #1
	cmp r4, #9
	blt _0219F938
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	ldr r2, [r2, #0x78]
	ldr r3, [r3, #0x7c]
	bl ovy143_219fa54
	ldr r1, [sp, #0xc]
	mov r0, #5
	str r0, [sp]
	add r2, r1, #0
	add r3, r1, #0
	ldr r2, [r2, #0x78]
	ldr r3, [r3, #0x7c]
	add r0, r5, #0
	bl ovy143_219fac0
	ldr r1, [sp, #0xc]
	mov r0, #6
	str r0, [sp]
	add r2, r1, #0
	add r3, r1, #0
	ldr r2, [r2, #0x78]
	ldr r3, [r3, #0x7c]
	add r0, r5, #0
	bl ovy143_219fac0
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r2, r1, #0
	ldr r2, [r2, #0x78]
	bl ovy143_219fc08
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F9D4: .word 0x021A03D4
	thumb_func_end ovy143_219f92c

	thumb_func_start ovy143_219f9d8
ovy143_219f9d8: ; 0x0219F9D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x61
	bl sub_02170AC4
	str r0, [r4, #0x6c]
	mov r0, #0x61
	add r0, #0xc0
	mov r1, #0x61
	bl sub_0204AA30
	mov r1, #0x61
	str r0, [r4, #0x70]
	bl ovy27_2170b50
	str r0, [r4, #0x74]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy143_219f9d8

	thumb_func_start ovy143_219f9fc
ovy143_219f9fc: ; 0x0219F9FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x6c]
	bl sub_02170B00
	mov r0, #0
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x70]
	bl GFL_ArcToolFree
	ldr r0, [r4, #0x74]
	bl GFL_HeapFree
	pop {r4, pc}
	thumb_func_end ovy143_219f9fc

	thumb_func_start ovy143_219fa18
ovy143_219fa18: ; 0x0219FA18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r1, #0
	mov r1, #0x37
	bl sub_0204898C
	add r6, r0, #0
	ldr r7, [r5, #8]
	ldr r0, [r4, #0x24]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #4
	bl sub_02021C54
	mov r0, #1
	add r4, #0x28
	strb r0, [r4]
	add r0, r6, #0
	bl GFL_StrBufFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy143_219fa18

	thumb_func_start ovy143_219fa54
ovy143_219fa54: ; 0x0219FA54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x2c]
	add r6, r2, #0
	add r7, r3, #0
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	lsl r1, r6, #0x18
	add r6, sp, #8
	ldr r0, [r4, #0x6c]
	lsr r1, r1, #0x18
	add r2, r7, #0
	add r3, r6, #0
	bl ovy27_2170cf8
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [r4, #0x6c]
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x61
	bl ovy27_2170d90
	ldr r6, [r5, #8]
	ldr r0, [r4, #0x2c]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_02021C54
	mov r0, #1
	add r4, #0x30
	strb r0, [r4]
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy143_219fa54

	thumb_func_start ovy143_219fac0
ovy143_219fac0: ; 0x0219FAC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	lsl r6, r0, #3
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r0, r6]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	ldr r0, [sp, #0x38]
	cmp r0, #5
	bne _0219FB5A
	ldr r1, [r4, #0x78]
	mov r0, #0x2c
	ldr r2, [r4, #0x74]
	mul r0, r1
	add r1, r2, r0
	ldr r0, [r4, #0x7c]
	lsl r0, r0, #2
	add r0, r1, r0
	ldrh r7, [r0, #0x1c]
	mov r1, #0x3c
	add r0, r7, #0
	blx sub_0208D65C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x3c
	blx sub_0208D65C
	add r2, r0, #0
	mov r0, #0
	lsl r2, r2, #0x10
	str r0, [sp]
	mov r7, #1
	str r7, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #2
	bl StringSetNumber
	mov r0, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #8]
	mov r1, #1
	mov r3, #2
	bl StringSetNumber
	mov r0, #0x40
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	ldr r0, [r5, #0x28]
	beq _0219FB4E
	ldr r1, _0219FBFC ; =0x021A03D4
	b _0219FB50
_0219FB4E:
	ldr r1, _0219FC00 ; =0x021A03D8
_0219FB50:
	ldrsh r1, [r1, r6]
	bl sub_0204898C
	str r0, [sp, #0x14]
	b _0219FBA2
_0219FB5A:
	cmp r0, #6
	bne _0219FBAC
	ldr r1, [r4, #0x78]
	mov r0, #0x2c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [r4, #0x74]
	mov r1, #0
	add r2, r0, r2
	ldrb r0, [r2, #9]
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [r4, #0x7c]
	ldr r0, [r5, #0x10]
	lsl r3, r3, #2
	add r2, r2, r3
	ldrb r2, [r2, #0x1e]
	mov r3, #4
	bl StringSetNumber
	mov r0, #0x40
	mov r1, #0x61
	bl GFL_StrBufCreate
	ldr r1, [sp, #0xc]
	add r7, r0, #0
	lsl r2, r1, #1
	ldr r1, _0219FC04 ; =0x021A0340
	ldr r0, [r5, #0x28]
	ldrsh r1, [r1, r2]
	bl sub_0204898C
	str r0, [sp, #0x14]
_0219FBA2:
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl GFL_WordSetFormatStrbuf
_0219FBAC:
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	mov r2, #0
	bl GFL_FontGetBlockWidth
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r6]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r3, #0x78
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x10]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r0, r4, r6
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	bl GFL_StrBufFree
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FBFC: .word 0x021A03D4
_0219FC00: .word 0x021A03D8
_0219FC04: .word 0x021A0340
	thumb_func_end ovy143_219fac0

	thumb_func_start ovy143_219fc08
ovy143_219fc08: ; 0x0219FC08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	mov r7, #0
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010DEC
	str r0, [sp, #0x24]
	lsl r1, r6, #0x18
	ldr r0, [r4, #0x6c]
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, sp, #0x30
	bl ovy27_2170cf8
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x24]
	lsr r1, r1, #0x18
	bl sub_02010F14
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0219FC48
	mov r7, #1
	b _0219FC54
_0219FC48:
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x24]
	lsr r1, r1, #0x18
	bl sub_02010EBC
	str r0, [sp, #0xc]
_0219FC54:
	add r0, r4, #0
	mov r1, #4
	bl ovy143_219fe34
	add r0, r4, #0
	mov r1, #7
	bl ovy143_219fe34
	add r0, r4, #0
	mov r1, #8
	bl ovy143_219fe34
	cmp r7, #0
	beq _0219FC72
	b _0219FE2A
_0219FC72:
	ldr r0, [r5, #4]
	mov r1, #0x47
	ldr r0, [r0, #0x28]
	bl sub_0204898C
	ldr r6, [r5, #4]
	add r7, r0, #0
	ldr r0, [r6, #8]
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x44]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r6, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x48
	mov r0, #1
	strb r0, [r1]
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #0x10]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r1, [r4, #0x78]
	mov r0, #0x2c
	ldr r2, [r4, #0x74]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #9]
	lsl r1, r0, #1
	ldr r0, _0219FE30 ; =0x021A0340
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r1, [r5, #4]
	add r0, r6, #0
	ldr r1, [r1, #0xc]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	ldr r7, [r5, #4]
	str r0, [sp, #0x28]
	ldr r0, [r7, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x5c]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r7, #0xc]
	ldr r2, [sp, #0x28]
	mov r3, #0x78
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x1c]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x60
	mov r0, #1
	strb r0, [r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #4]
	mov r1, #0x45
	ldr r0, [r0, #0x28]
	bl sub_0204898C
	ldr r6, [r5, #4]
	add r7, r0, #0
	ldr r0, [r6, #8]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x5c]
	bl BmpWin_GetBitmap
	str r7, [sp]
	add r1, r0, #0
	ldr r0, [r6, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x60
	mov r0, #1
	strb r0, [r1]
	add r0, r7, #0
	bl GFL_StrBufFree
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x10]
	ldr r0, [r0, #0x10]
	mov r1, #0
	mov r3, #4
	bl StringSetNumber
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x28]
	bl sub_0204898C
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #0x61
	bl GFL_StrBufCreate
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x10]
	add r2, r7, #0
	bl GFL_WordSetFormatStrbuf
	add r0, r7, #0
	bl GFL_StrBufFree
	ldr r1, [r5, #4]
	add r0, r6, #0
	ldr r1, [r1, #0xc]
	mov r2, #0
	bl GFL_FontGetBlockWidth
	ldr r7, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r7, #8]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x64]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r7, #0xc]
	ldr r2, [sp, #0x2c]
	mov r3, #0x78
	sub r2, r3, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x14]
	asr r2, r2, #0x10
	mov r3, #0
	bl sub_02021C54
	add r1, r4, #0
	add r1, #0x68
	mov r0, #1
	strb r0, [r1]
	add r0, r6, #0
	bl GFL_StrBufFree
	ldr r0, [r5, #4]
	mov r1, #0x46
	ldr r0, [r0, #0x28]
	bl sub_0204898C
	ldr r5, [r5, #4]
	add r6, r0, #0
	ldr r7, [r5, #8]
	ldr r0, [r4, #0x64]
	bl BmpWin_GetBitmap
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #0
	bl sub_02021C54
	add r4, #0x68
	mov r0, #1
	strb r0, [r4]
	add r0, r6, #0
	bl GFL_StrBufFree
_0219FE2A:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0219FE30: .word 0x021A0340
	thumb_func_end ovy143_219fc08

	thumb_func_start ovy143_219fe34
ovy143_219fe34: ; 0x0219FE34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #3
	add r0, r5, r4
	ldr r0, [r0, #0x24]
	bl BmpWin_GetBitmap
	mov r1, #0
	bl BmpWin_BitmapFill
	add r0, r5, r4
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219fe34

	thumb_func_start ovy143_219fe54
ovy143_219fe54: ; 0x0219FE54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0219FE5A:
	cmp r4, #0
	beq _0219FE66
	add r0, r5, #0
	add r1, r4, #0
	bl ovy143_219fe34
_0219FE66:
	add r4, r4, #1
	cmp r4, #9
	blt _0219FE5A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy143_219fe54
_0219FE70:
	.byte 0xC1, 0x98, 0x19, 0x02, 0x09, 0x9A, 0x19, 0x02, 0xB5, 0x9B, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x54, 0x00, 0x1A, 0x02
	.byte 0xDC, 0xFF, 0x19, 0x02, 0x34, 0x01, 0x1A, 0x02, 0xB0, 0x00, 0x1A, 0x02, 0x54, 0x00, 0x1A, 0x02
	.byte 0x08, 0x00, 0x1A, 0x02, 0x88, 0x03, 0x1A, 0x02, 0xE4, 0x01, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x00, 0xB4, 0x00
	.byte 0x06, 0x00, 0x00, 0x02, 0x20, 0x08, 0x40, 0x3C, 0x03, 0x00, 0x01, 0x00, 0x02, 0x00, 0x04, 0x00
	.byte 0x24, 0x34, 0x38, 0xC8, 0x4C, 0x5C, 0x38, 0xC8, 0x74, 0x84, 0x38, 0xC8, 0xAC, 0xBC, 0xE8, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x80, 0x00
	.byte 0x2C, 0x00, 0x02, 0x00, 0x01, 0x00, 0x80, 0x00, 0x54, 0x00, 0x01, 0x00, 0x01, 0x00, 0x80, 0x00
	.byte 0x7C, 0x00, 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x03
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x71, 0xAA, 0x19, 0x02
	.byte 0xC5, 0xAA, 0x19, 0x02, 0xD5, 0xAB, 0x19, 0x02, 0xAC, 0xBC, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0B, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x11, 0x00, 0x12, 0x00
	.byte 0x10, 0x00, 0x13, 0x00, 0x14, 0x00, 0x00, 0x00, 0xAD, 0xAF, 0x19, 0x02, 0x79, 0xB0, 0x19, 0x02
	.byte 0x51, 0xB1, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD5, 0xB6, 0x19, 0x02, 0x9D, 0xB7, 0x19, 0x02, 0x09, 0xB8, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x3C, 0x20, 0x08, 0x40, 0x3C, 0x20, 0x08, 0xAC, 0xBC, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00
	.byte 0x81, 0xBB, 0x19, 0x02, 0x15, 0xBD, 0x19, 0x02, 0xA5, 0xC2, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x03, 0x01, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x61, 0xD3, 0x19, 0x02, 0x31, 0xD4, 0x19, 0x02, 0xF9, 0xD4, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x86, 0x09, 0x86, 0x09, 0xAC, 0xBC, 0xE8, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0xAC, 0xBC, 0x80, 0x9C
	.byte 0xAC, 0xBC, 0xA4, 0xC0, 0xAC, 0xBC, 0xC8, 0x80, 0xFF, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00
	.byte 0x80, 0x00, 0x80, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x02, 0x00, 0x03, 0x00, 0x02, 0x00
	.byte 0x03, 0x00, 0x82, 0x00, 0xB1, 0x00, 0x30, 0x00, 0x01, 0x00, 0xA6, 0x00, 0xB1, 0x00, 0x30, 0x00
	.byte 0x01, 0x00, 0xCA, 0x00, 0xB1, 0x00, 0x30, 0x00, 0x01, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x00, 0x00, 0xF9, 0xD8, 0x19, 0x02, 0xA9, 0xDA, 0x19, 0x02, 0x49, 0xDF, 0x19, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0A, 0x03, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x05, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8C, 0x00, 0xB5, 0x00, 0x10, 0x00, 0x40, 0x00
	.byte 0x01, 0x00, 0x04, 0x00, 0xB0, 0x00, 0xB5, 0x00, 0x10, 0x00, 0x40, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xD4, 0x00, 0xB5, 0x00, 0x10, 0x00, 0x40, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x0F, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x0F, 0x00, 0x40, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x0F, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x0F, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x0F, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x0F, 0x00, 0x40, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x0F, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0xE6, 0x00, 0x20, 0x00, 0x0C, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0xE6, 0x00, 0x20, 0x00
	.byte 0x0C, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0xE6, 0x00, 0x20, 0x00, 0x0C, 0x00, 0x40, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0xE6, 0x00, 0x20, 0x00, 0x0C, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0xE6, 0x00, 0x20, 0x00, 0x0C, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0xE6, 0x00, 0x20, 0x00
	.byte 0x0C, 0x00, 0x40, 0x00, 0x03, 0x00, 0x00, 0x00, 0xE6, 0x00, 0x20, 0x00, 0x0C, 0x00, 0x40, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x00, 0x42, 0x00, 0x3D, 0x00, 0x1F, 0x00, 0x43, 0x00, 0x00, 0x02, 0x00, 0x1C, 0x03, 0x0D
	.byte 0x00, 0x02, 0x04, 0x1C, 0x08, 0x0D, 0x00, 0x02, 0x0F, 0x0C, 0x02, 0x0D, 0x00, 0x02, 0x11, 0x0C
	.byte 0x02, 0x0D, 0x00, 0x02, 0x13, 0x0C, 0x02, 0x0D, 0x00, 0x0E, 0x0F, 0x0F, 0x02, 0x0D, 0x00, 0x0E
	.byte 0x11, 0x0F, 0x02, 0x0D, 0x00, 0x0E, 0x13, 0x0F, 0x02, 0x0D, 0x00, 0x0E, 0x15, 0x0F, 0x02, 0x0D
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4D, 0xF6, 0x19, 0x02, 0xFD, 0xF6, 0x19, 0x02
	.byte 0xA9, 0xF7, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x01, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x37, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x47, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0xFF, 0xFF
	.byte 0x40, 0x00, 0x00, 0x00, 0x3D, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x3D, 0x00, 0xFF, 0xFF
	.byte 0x45, 0x00, 0x00, 0x00, 0x3D, 0x00, 0xFF, 0xFF, 0x46, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x72, 0x65, 0x71, 0x20, 0x3C, 0x20, 0x50, 0x41, 0x4E, 0x45, 0x4C, 0x5F
	.byte 0x43, 0x4F, 0x4E, 0x54, 0x52, 0x4F, 0x4C, 0x5F, 0x4D, 0x41, 0x58, 0x00, 0x6D, 0x6F, 0x6E, 0x6F
	.byte 0x6C, 0x69, 0x74, 0x68, 0x5F, 0x74, 0x6F, 0x6F, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x74, 0x77, 0x2D, 0x3E, 0x70, 0x72, 0x69, 0x6E, 0x74, 0x5F, 0x73, 0x74, 0x72, 0x65, 0x61
	.byte 0x6D, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6D, 0x70, 0x77, 0x2D, 0x3E, 0x61, 0x70, 0x70, 0x5F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x77, 0x6F
	.byte 0x72, 0x6B, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x6D, 0x70, 0x77, 0x2D
	.byte 0x3E, 0x70, 0x72, 0x69, 0x6E, 0x74, 0x5F, 0x73, 0x74, 0x72, 0x65, 0x61, 0x6D, 0x20, 0x3D, 0x3D
	.byte 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x6D, 0x70, 0x77, 0x2D, 0x3E, 0x70, 0x72, 0x69
	.byte 0x6E, 0x74, 0x5F, 0x73, 0x74, 0x72, 0x65, 0x61, 0x6D, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C
	.byte 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6D, 0x66, 0x77, 0x2D, 0x3E, 0x61, 0x70, 0x70
	.byte 0x5F, 0x6D, 0x65, 0x6E, 0x75, 0x5F, 0x77, 0x6F, 0x72, 0x6B, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55
	.byte 0x4C, 0x4C, 0x00, 0x00, 0x6D, 0x66, 0x77, 0x2D, 0x3E, 0x70, 0x72, 0x69, 0x6E, 0x74, 0x5F, 0x73
	.byte 0x74, 0x72, 0x65, 0x61, 0x6D, 0x20, 0x3D, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00
	.byte 0x6D, 0x66, 0x77, 0x2D, 0x3E, 0x70, 0x72, 0x69, 0x6E, 0x74, 0x5F, 0x73, 0x74, 0x72, 0x65, 0x61
	.byte 0x6D, 0x20, 0x21, 0x3D, 0x20, 0x4E, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0219FE70
