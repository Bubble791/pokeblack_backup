    .include "macros/function.inc"
	.include "overlay191.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy191_21b5420
ovy191_21b5420: ; 0x021B5420
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021B54C0 ; =0x000000BD
	add r6, r2, #0
	bl sub_0203CE0C
	mov r2, #6
	mov r0, #1
	mov r1, #0x7d
	lsl r2, r2, #0xe
	mov r7, #1
	bl GFL_HeapCreateChild
	ldr r5, _021B54C4 ; =0x0000185C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x7d
	bl GFL_ProcInitSubsystem
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	blx MI_CpuFill8
	str r6, [r4]
	str r7, [r6, #8]
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_02017934
	add r1, r5, #0
	sub r1, #0x18
	str r6, [r4, r1]
	bl sub_020092E4
	add r1, r5, #0
	sub r1, #0x14
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_02017238
	add r1, r5, #0
	sub r1, #0x10
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_0201736C
	add r1, r5, #0
	sub r1, #0xc
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_02017968
	add r1, r5, #0
	sub r1, #8
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_0201795C
	sub r1, r5, #4
	str r0, [r4, r1]
	ldr r0, _021B54C8 ; =0x00000B74
	add r0, r4, r0
	bl sub_021B5758
	ldr r0, _021B54CC ; =0x00001610
	mov r1, #0x7d
	add r0, r4, r0
	bl ovy191_21b5910
	sub r5, #0x30
	add r0, r4, r5
	bl sub_021B5E98
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B54C0: .word 0x000000BD
_021B54C4: .word 0x0000185C
_021B54C8: .word 0x00000B74
_021B54CC: .word 0x00001610
	thumb_func_end ovy191_21b5420

	thumb_func_start ovy191_21b54d0
ovy191_21b54d0: ; 0x021B54D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r3, #0
	ldr r1, [r4]
	add r0, r5, #0
	bl ovy191_21b572c
	cmp r0, #0
	beq _021B54FA
	ldr r0, _021B56C0 ; =0x0000182C
	add r0, r5, r0
	bl sub_021B5F18
	cmp r0, #0
	bne _021B54F6
	bl sub_020120C8
	cmp r0, #0
	beq _021B54FA
_021B54F6:
	mov r0, #0x14
	str r0, [r4]
_021B54FA:
	ldr r0, [r4]
	cmp r0, #0x15
	bhi _021B5598
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B550C: ; jump table
	.short _021B5538 - _021B550C - 2 ; case 0
	.short _021B553A - _021B550C - 2 ; case 1
	.short _021B555C - _021B550C - 2 ; case 2
	.short _021B5564 - _021B550C - 2 ; case 3
	.short _021B557A - _021B550C - 2 ; case 4
	.short _021B5590 - _021B550C - 2 ; case 5
	.short _021B559C - _021B550C - 2 ; case 6
	.short _021B55B2 - _021B550C - 2 ; case 7
	.short _021B55BE - _021B550C - 2 ; case 8
	.short _021B55CA - _021B550C - 2 ; case 9
	.short _021B55DA - _021B550C - 2 ; case 10
	.short _021B55EA - _021B550C - 2 ; case 11
	.short _021B55FC - _021B550C - 2 ; case 12
	.short _021B560E - _021B550C - 2 ; case 13
	.short _021B562A - _021B550C - 2 ; case 14
	.short _021B5638 - _021B550C - 2 ; case 15
	.short _021B5652 - _021B550C - 2 ; case 16
	.short _021B5664 - _021B550C - 2 ; case 17
	.short _021B5670 - _021B550C - 2 ; case 18
	.short _021B567A - _021B550C - 2 ; case 19
	.short _021B567E - _021B550C - 2 ; case 20
	.short _021B569A - _021B550C - 2 ; case 21
_021B5538:
	b _021B5664
_021B553A:
	bl sub_02005EC0
	cmp r0, #0
	bne _021B5598
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _021B56C4 ; =0x00000481
	ldr r1, _021B56C8 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #6
	bl sub_02005E68
	b _021B5678
_021B555C:
	add r0, r5, #0
	bl ovy191_21b613c
	b _021B5678
_021B5564:
	add r0, r5, #0
	bl sub_021B6194
	cmp r0, #0
	bne _021B5570
	b _021B5678
_021B5570:
	ldr r0, [r5]
	mov r1, #2
	str r1, [r0, #8]
	mov r0, #0x11
	b _021B56A6
_021B557A:
	add r0, r5, #4
	mov r1, #0x7d
	bl ovy191_21b6930
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
_021B5588:
	mov r3, #1
	bl sub_0204E060
	b _021B5678
_021B5590:
	bl sub_0204E0E0
	cmp r0, #0
	beq _021B559A
_021B5598:
	b _021B56A8
_021B559A:
	b _021B5678
_021B559C:
	add r0, r5, #0
	bl ovy191_21b67fc
	add r0, r5, #4
	mov r1, #0x1a
	bl ovy191_21b6dd4
	add r0, r5, #4
	bl ovy191_21b6f54
	b _021B5678
_021B55B2:
	add r0, r5, #0
	bl ovy191_21b6854
	cmp r0, #0
	beq _021B56A8
	b _021B5678
_021B55BE:
	add r0, r5, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B56A8
	b _021B5678
_021B55CA:
	ldr r1, _021B56CC ; =0x00001844
	ldr r0, _021B56D0 ; =0x00001610
	ldr r1, [r5, r1]
	add r0, r5, r0
	mov r2, #0x7d
	bl ovy191_21b5948
	b _021B5678
_021B55DA:
	ldr r0, _021B56D0 ; =0x00001610
	mov r1, #0x7d
	add r0, r5, r0
	bl ovy191_21b5a10
	cmp r0, #0
	beq _021B56A8
	b _021B5678
_021B55EA:
	ldr r2, _021B56CC ; =0x00001844
	ldr r0, _021B56D0 ; =0x00001610
	ldr r1, [r5, r2]
	sub r2, #0x18
	add r0, r5, r0
	add r2, r5, r2
	bl ovy191_21b5a7c
	b _021B5678
_021B55FC:
	ldr r0, _021B56D0 ; =0x00001610
	ldr r1, _021B56C0 ; =0x0000182C
	add r0, r5, r0
	add r1, r5, r1
	bl ovy191_21b5ad8
	cmp r0, #0
	beq _021B56A8
	b _021B5678
_021B560E:
	add r0, r5, #0
	mov r1, #0x7d
	bl ovy191_21b61e4
	cmp r0, #1
	bne _021B5622
	mov r1, #0
_021B561C:
	ldr r0, [r5]
	str r1, [r0, #8]
	b _021B5678
_021B5622:
	cmp r0, #2
	bne _021B56A8
	mov r1, #2
	b _021B561C
_021B562A:
	add r0, r5, #0
	bl ovy191_21b6868
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	b _021B5588
_021B5638:
	add r0, r5, #0
	bl ovy191_21b6888
	cmp r0, #0
	beq _021B56A8
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B56A8
	add r0, r5, #4
	bl ovy191_21b6a1c
	b _021B5678
_021B5652:
	mov r0, #0
	bl sub_02011CFC
	cmp r0, #0
	bne _021B5662
	add r0, r5, #0
	bl ovy191_21b61a0
_021B5662:
	b _021B5678
_021B5664:
	mov r0, #6
	bl sub_02005EA0
_021B566A:
	ldr r0, [r4]
	add r0, r0, #1
	b _021B56A6
_021B5670:
	bl sub_02005EC0
	cmp r0, #0
	bne _021B56A8
_021B5678:
	b _021B566A
_021B567A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B567E:
	add r0, r5, #0
	bl ovy191_21b68c0
	cmp r0, #0
	beq _021B568C
	mov r0, #0x15
	b _021B568E
_021B568C:
	mov r0, #0xe
_021B568E:
	str r0, [r4]
	ldr r0, _021B56D0 ; =0x00001610
	add r0, r5, r0
	bl ovy191_21b5df8
	b _021B56A8
_021B569A:
	add r0, r5, #0
	bl sub_021B6924
	cmp r0, #0
	beq _021B56A8
	mov r0, #0xe
_021B56A6:
	str r0, [r4]
_021B56A8:
	ldr r0, _021B56D4 ; =0x00000B68
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021B56B4
	blx sub_021A808C
_021B56B4:
	add r0, r5, #4
	bl ovy191_21b6ab8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021B56C0: .word 0x0000182C
_021B56C4: .word 0x00000481
_021B56C8: .word 0x0000FFFF
_021B56CC: .word 0x00001844
_021B56D0: .word 0x00001610
_021B56D4: .word 0x00000B68
	thumb_func_end ovy191_21b54d0

	thumb_func_start ovy191_21b56d8
ovy191_21b56d8: ; 0x021B56D8
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy191_21b60cc
	add r0, r4, #0
	bl sub_021B6190
	add r0, r4, #0
	bl sub_021B61E0
	ldr r0, _021B5724 ; =0x00001610
	add r0, r4, r0
	bl ovy191_21b5930
	add r0, r4, #4
	bl ovy191_21b6a1c
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x7d
	bl sub_0203A1D0
	ldr r0, _021B5728 ; =0x000000BD
	bl sub_0203CDC8
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #0x3c
	bl sub_02005E68
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B5724: .word 0x00001610
_021B5728: .word 0x000000BD
	thumb_func_end ovy191_21b56d8

	thumb_func_start ovy191_21b572c
ovy191_21b572c: ; 0x021B572C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0xd
	bgt _021B5750
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B5750
	ldr r0, _021B5754 ; =0x00000B68
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021B5750
	add r0, r0, #2
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021B5750
	mov r0, #1
	pop {r4, pc}
_021B5750:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_021B5754: .word 0x00000B68
	thumb_func_end ovy191_21b572c

	thumb_func_start sub_021B5758
sub_021B5758: ; 0x021B5758
	ldr r2, _021B5760 ; =0x00000A9C
	ldr r3, _021B5764 ; =MI_CpuFill8
	mov r1, #0
	bx r3
	.align 2, 0
_021B5760: .word 0x00000A9C
_021B5764: .word MI_CpuFill8
	thumb_func_end sub_021B5758

	thumb_func_start ovy191_21b5768
ovy191_21b5768: ; 0x021B5768
	push {r4, lr}
	strh r2, [r0, #8]
	lsl r0, r2, #0x18
	add r4, r1, #0
	lsr r0, r0, #0x18
	blx sub_021A8500
	add r0, r4, #0
	bl sub_021B5EA4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5768

	thumb_func_start ovy191_21b5780
ovy191_21b5780: ; 0x021B5780
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0
	bl ovy191_21b5eac
	cmp r0, #0
	beq _021B57A6
	add r0, r5, #0
	bl sub_021B5F18
	cmp r0, #0
	bne _021B57A6
	ldr r0, [sp]
	strh r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021B57A6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5780

	thumb_func_start ovy191_21b57ac
ovy191_21b57ac: ; 0x021B57AC
	push {r4, lr}
	add r3, r0, #0
	strh r2, [r3, #0xa]
	add r4, r1, #0
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	add r3, #0xe
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	add r2, r3, #0
	blx sub_021A8584
	add r0, r4, #0
	bl sub_021B5EA4
	pop {r4, pc}
	thumb_func_end ovy191_21b57ac

	thumb_func_start ovy191_21b57d0
ovy191_21b57d0: ; 0x021B57D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _021B57E0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B57E0:
	add r0, r4, #0
	add r1, sp, #0
	bl ovy191_21b5eac
	cmp r0, #0
	beq _021B57FC
	add r0, r4, #0
	bl sub_021B5F18
	cmp r0, #0
	bne _021B57FC
	mov r0, #1
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021B57FC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy191_21b57d0

	thumb_func_start sub_021B5800
sub_021B5800: ; 0x021B5800
	ldrh r0, [r0, #8]
	bx lr
	thumb_func_end sub_021B5800

	thumb_func_start sub_021B5804
sub_021B5804: ; 0x021B5804
	ldrh r0, [r0, #0xa]
	bx lr
	thumb_func_end sub_021B5804

	thumb_func_start sub_021B5808
sub_021B5808: ; 0x021B5808
	ldrh r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021B5808

	thumb_func_start sub_021B580C
sub_021B580C: ; 0x021B580C
	ldrh r0, [r0, #0xc]
	cmp r0, #0x64
	bhs _021B5816
	mov r0, #2
	bx lr
_021B5816:
	mov r0, #3
	bx lr
	.align 2, 0
	thumb_func_end sub_021B580C

	thumb_func_start ovy191_21b581c
ovy191_21b581c: ; 0x021B581C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021B58AC ; =0x0000069E
	add r5, r0, #0
	add r5, #0xe
	add r7, r0, r1
	mov r6, #0
_021B5828:
	mov r0, #0xf0
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	add r1, r5, r4
	add r2, r5, r4
	add r0, #0xc6
	add r1, #0xc7
	add r2, #0xc5
	ldrb r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0202B57C
	add r1, r5, r4
	add r1, #0xc6
	strb r0, [r1]
	add r0, r5, r4
	add r1, r5, r4
	add r2, r5, r4
	add r0, #0xc6
	add r1, #0xc7
	add r2, #0xc5
	ldrb r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	bl sub_0202B590
	add r1, r5, r4
	add r1, #0xc7
	strb r0, [r1]
	add r0, r5, r4
	add r0, #0xd5
	ldrb r0, [r0]
	bl sub_0202B630
	bl sub_0202B5E8
	add r1, r5, r4
	add r1, #0xd5
	add r6, r6, #1
	strb r0, [r1]
	cmp r6, #7
	blt _021B5828
	mov r5, #0
	mov r6, #0x22
_021B5884:
	add r0, r5, #0
	mul r0, r6
	add r4, r7, r0
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x11]
	bl sub_0202B57C
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x12]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x11]
	bl sub_0202B590
	add r5, r5, #1
	strb r0, [r4, #0x13]
	cmp r5, #0x1e
	blt _021B5884
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B58AC: .word 0x0000069E
	thumb_func_end ovy191_21b581c

	thumb_func_start ovy191_21b58b0
ovy191_21b58b0: ; 0x021B58B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, sp, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	add r1, sp, #0x10
	bl sub_0215DDA8
	ldrh r2, [r5, #8]
	ldrh r3, [r5, #0xa]
	add r1, r5, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r4, #0
	add r1, #0xe
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0200E704
	ldrh r1, [r5, #8]
	ldrh r2, [r5, #0xa]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl sub_0200E5C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy191_21b58b0

	thumb_func_start ovy191_21b58f0
ovy191_21b58f0: ; 0x021B58F0
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	ldr r1, _021B590C ; =0x0000069E
	ldrh r2, [r3, #8]
	add r1, r3, r1
	ldrh r3, [r3, #0xa]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0200E7A8
	pop {r3, pc}
	.align 2, 0
_021B590C: .word 0x0000069E
	thumb_func_end ovy191_21b58f0

	thumb_func_start ovy191_21b5910
ovy191_21b5910: ; 0x021B5910
	push {r4, r5, r6, lr}
	mov r6, #0x87
	lsl r6, r6, #2
	add r4, r1, #0
	mov r1, #0
	add r2, r6, #0
	add r5, r0, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_02008B0C
	sub r1, r6, #4
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5910

	thumb_func_start ovy191_21b5930
ovy191_21b5930: ; 0x021B5930
	push {r3, r4, r5, lr}
	mov r5, #0x86
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B5946
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, r5]
_021B5946:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy191_21b5930

	thumb_func_start ovy191_21b5948
ovy191_21b5948: ; 0x021B5948
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	add r6, r2, #0
	bl sub_0201736C
	mov r1, #0x86
	lsl r1, r1, #2
	str r1, [sp, #0x14]
	ldr r1, [r5, r1]
	bl sub_02008B34
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_02008BB0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, #0
	sub r0, #0x28
	add r0, r5, r0
	mov r2, #0x28
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x14]
	sub r0, r0, #4
	strh r6, [r5, r0]
	ldr r0, [sp, #0x10]
	bl sub_020486F0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_020485F8
	add r0, r0, #1
	beq _021B59D0
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x18]
	sub r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x28
	str r0, [sp, #0x14]
_021B59A4:
	ldr r0, [sp, #0xc]
	lsl r6, r4, #1
	ldrh r7, [r0, r6]
	bl sub_020486F4
	cmp r7, r0
	bne _021B59BC
	ldr r0, [sp, #0x14]
	add r2, r5, r6
	mov r1, #0
	strh r1, [r2, r0]
	b _021B59C2
_021B59BC:
	ldr r0, [sp, #0x18]
	add r1, r5, r6
	strh r7, [r1, r0]
_021B59C2:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	bl sub_020485F8
	add r0, r0, #1
	cmp r4, r0
	blo _021B59A4
_021B59D0:
	mov r1, #0x1f
	lsl r1, r1, #4
	add r0, r1, #0
	add r2, r5, r1
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x20
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	add r0, r5, r0
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	add r0, r5, r0
	str r0, [sp, #4]
	mov r0, #0x80
	add r1, #0x18
	str r0, [sp, #8]
	add r0, r5, r1
	mov r1, #1
	mov r3, #0
	bl sub_0216BEA4
	ldr r0, [sp, #0x10]
	bl GFL_StrBufFree
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5948

	thumb_func_start ovy191_21b5a10
ovy191_21b5a10: ; 0x021B5A10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0216BED4
	mov r1, #1
	cmp r0, #2
	beq _021B5A22
	mov r1, #0
_021B5A22:
	cmp r1, #0
	beq _021B5A34
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r4, #1
	cmp r0, #0
	bgt _021B5A34
	mov r4, #0
_021B5A34:
	cmp r1, #0
	bne _021B5A3C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B5A3C:
	cmp r1, #1
	bne _021B5A76
	cmp r4, #1
	bne _021B5A76
	mov r0, #0
	mov r1, #2
	mov r2, #0x65
	add r3, r6, #0
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	mov r1, #0x19
	bl sub_0204898C
	add r4, r0, #0
	add r0, r6, #0
	bl GFL_MsgDataFree
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02008B84
	add r0, r4, #0
	bl GFL_StrBufFree
	mov r0, #2
	pop {r4, r5, r6, pc}
_021B5A76:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5a10

	thumb_func_start ovy191_21b5a7c
ovy191_21b5a7c: ; 0x021B5A7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	str r2, [sp]
	bl sub_02017934
	add r0, r6, #0
	bl sub_02017968
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0201795C
	mov r4, #0x86
	lsl r4, r4, #2
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #4
	bl sub_0219D504
	add r1, r5, #0
	add r0, r5, #4
	add r1, #0x68
	blx sub_021A8828
	ldr r0, [sp]
	bl sub_021B5EA4
	add r0, r5, #0
	ldr r2, [sp, #4]
	add r0, #0x70
	add r1, r6, #0
	bl ovy191_21b5b00
	add r0, r4, #0
	sub r0, #0xb8
	str r7, [r5, r0]
	ldr r0, [sp, #8]
	sub r4, #0xb4
	str r0, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy191_21b5a7c

	thumb_func_start ovy191_21b5ad8
ovy191_21b5ad8: ; 0x021B5AD8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	bl ovy191_21b5eac
	cmp r0, #0
	beq _021B5AFA
	add r0, r4, #0
	bl sub_021B5F18
	cmp r0, #0
	bne _021B5AFA
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021B5AFA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5ad8

	thumb_func_start ovy191_21b5b00
ovy191_21b5b00: ; 0x021B5B00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_02017934
	add r7, r0, #0
	bl sub_02009B78
	add r0, r5, #0
	bl sub_02017238
	add r0, r5, #0
	bl sub_0201795C
	str r0, [sp]
	add r0, r7, #0
	bl sub_0200EF84
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xf0
	mov r5, #0
	blx MI_CpuFill8
	add r0, r4, #0
	bl sub_02008B94
	add r1, r6, #0
	add r1, #0xb4
	mov r2, #0x10
	blx MI_CpuCopy8
	add r0, r4, #0
	bl sub_02008BD0
	add r1, r6, #0
	add r1, #0xc8
	str r0, [r1]
	ldr r0, _021B5BF4 ; =0x0208FF7C
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xc4
	strb r1, [r0]
	ldr r0, _021B5BF8 ; =0x0208FF80
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xc5
	strb r1, [r0]
	add r0, r4, #0
	bl sub_02008C0C
	add r1, r6, #0
	add r1, #0xc6
	strb r0, [r1]
	add r0, r4, #0
	bl sub_02008C10
	add r1, r6, #0
	add r1, #0xc7
	strb r0, [r1]
	add r0, r4, #0
	bl sub_02008BF0
	add r1, r6, #0
	add r1, #0xd4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r1]
	mov r2, #2
	lsr r0, r0, #0x1e
	bic r1, r2
	orr r1, r0
	add r0, r6, #0
	add r0, #0xd4
	strb r1, [r0]
	add r0, r4, #0
	bl sub_02008BF4
	add r1, r6, #0
	add r1, #0xd5
	strb r0, [r1]
	add r0, r6, #0
	add r0, #0xd5
	ldrb r0, [r0]
	bl sub_0202B5E8
	add r1, r6, #0
	add r1, #0xd5
	add r4, r6, #0
	strb r0, [r1]
	add r4, #0xd6
_021B5BBE:
	lsl r2, r5, #3
	add r0, r7, #0
	add r1, r5, #1
	add r2, r4, r2
	bl sub_0200EF90
	add r5, r5, #1
	cmp r5, #3
	blt _021B5BBE
	add r2, r6, #0
	add r0, r7, #0
	mov r1, #4
	add r2, #0xcc
	bl sub_0200EF90
	ldr r0, [sp]
	bl sub_0200E590
	add r1, r6, #0
	add r1, #0xee
	strh r0, [r1]
	ldr r0, [sp]
	mov r1, #1
	add r2, r6, #0
	bl sub_0200E50C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5BF4: .word 0x0208FF7C
_021B5BF8: .word 0x0208FF80
	thumb_func_end ovy191_21b5b00

	thumb_func_start ovy191_21b5bfc
ovy191_21b5bfc: ; 0x021B5BFC
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021B5C0C
	bl sub_0219D124
_021B5C0C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5bfc

	thumb_func_start ovy191_21b5c10
ovy191_21b5c10: ; 0x021B5C10
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x86
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r7, r2, #0
	add r6, r3, #0
	str r1, [sp]
	bl sub_02008BDC
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0219D1B8
	add r1, r4, #0
	sub r1, #0xb0
	str r0, [r5, r1]
	ldr r0, _021B5C80 ; =ovy191_21b5bfc
	add r1, r5, #0
	bl sub_02152040
	sub r4, #0xb0
	ldr r0, [r5, r4]
	add r1, r6, #0
	mov r2, #0xb4
	mov r3, #4
	mov r4, #0xb4
	bl sub_0219D258
	mov r0, #0xb4
	add r0, #0xb4
	add r1, r5, #0
	ldr r0, [r5, r0]
	add r1, #0x70
	mov r2, #0xb4
	bl sub_0219D290
	mov r0, #0xb4
	mov r1, #3
	add r0, #0xb8
	strh r1, [r5, r0]
	mov r0, #0xb4
	add r0, #0xb4
	ldr r0, [r5, r0]
	bl sub_0219D2B0
	add r4, #0xb4
	ldr r0, [r5, r4]
	bl sub_0219D0F8
	ldr r0, [sp]
	bl sub_021B6018
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B5C80: .word ovy191_21b5bfc
	thumb_func_end ovy191_21b5c10

	thumb_func_start ovy191_21b5c84
ovy191_21b5c84: ; 0x021B5C84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0x5a
	add r4, r0, #0
	mov r0, #0
	lsl r5, r5, #2
	str r0, [sp, #8]
	ldr r0, [r4, r5]
	add r7, r1, #0
	str r2, [sp]
	bl sub_0219D3A8
	add r6, r0, #0
	ldr r0, [r4, r5]
	bl sub_0219D140
	cmp r6, #0xc8
	beq _021B5CD6
	cmp r0, #0
	bne _021B5CD6
	add r0, r7, #0
	add r1, r6, #0
	bl sub_021B6010
	ldr r0, [r4, r5]
	bl sub_0219D124
	ldr r0, [r4, r5]
	bl sub_0219D384
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	ldr r0, [sp, #8]
	add r1, r0, #0
	str r0, [r4, r5]
	bl sub_02152040
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_021B5CD6:
	cmp r0, #0
	beq _021B5CE2
	add r0, r7, #0
	bl sub_021B6020
	b _021B5DC8
_021B5CE2:
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0219D1A4
	add r6, r0, #0
	bl sub_0219D3E4
	cmp r0, #0
	bne _021B5D72
	mov r1, #0x5a
	lsl r1, r1, #2
	add r1, r1, #4
	ldrh r1, [r4, r1]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0219D408
	mov r1, #0x5a
	lsl r1, r1, #2
	add r1, r1, #6
	mov r2, #0x80
	str r2, [sp, #0xc]
	add r1, r4, r1
	mov r2, #0x80
	blx MI_CpuCopy8
	ldr r0, [sp, #0xc]
	mov r5, #0
	add r0, #0xec
	str r0, [sp, #0xc]
	ldrh r0, [r4, r0]
	cmp r0, #0
	ble _021B5D62
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r0, #4
	str r0, [sp, #0x10]
_021B5D30:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0219D3E8
	cmp r0, #0
	beq _021B5D58
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	beq _021B5D50
	add r0, r7, #0
	mov r1, #1
	bl sub_021B600C
	b _021B5D58
_021B5D50:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy191_21b5dd0
_021B5D58:
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	ldrh r0, [r4, r0]
	cmp r5, r0
	blt _021B5D30
_021B5D62:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021B5D6E
	mov r0, #1
_021B5D6A:
	str r0, [sp, #8]
	b _021B5DAE
_021B5D6E:
	mov r0, #2
	b _021B5D6A
_021B5D72:
	ldr r0, [sp]
	cmp r0, #0
	beq _021B5D80
	add r0, r7, #0
	mov r1, #2
	bl sub_021B600C
_021B5D80:
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	mov r5, #0
	cmp r1, #0
	ble _021B5DAE
	add r7, r4, r0
_021B5D92:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0219D3E8
	cmp r0, #0
	beq _021B5DA6
	add r0, r4, #0
	add r1, r5, #0
	bl ovy191_21b5dd0
_021B5DA6:
	ldrh r0, [r7]
	add r5, r5, #1
	cmp r5, r0
	blt _021B5D92
_021B5DAE:
	mov r5, #0x5a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0219D384
	ldr r0, [r4, r5]
	bl sub_0219D1F0
	mov r0, #0
	mov r1, #0
	str r0, [r4, r5]
	bl sub_02152040
_021B5DC8:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5c84

	thumb_func_start ovy191_21b5dd0
ovy191_21b5dd0: ; 0x021B5DD0
	push {r3, lr}
	add r2, r0, #0
	mov r0, #0x3c
	add r3, r1, #0
	mul r3, r0
	add r2, #0x70
	ldrh r1, [r2, r3]
	add r2, r2, r3
	ldr r0, _021B5DF4 ; =0x0209A434
	lsl r1, r1, #0x15
	ldr r0, [r0]
	lsr r1, r1, #0x15
	add r2, #0x22
	mov r3, #0xb
	bl sub_020489F0
	pop {r3, pc}
	nop
_021B5DF4: .word 0x0209A434
	thumb_func_end ovy191_21b5dd0

	thumb_func_start ovy191_21b5df8
ovy191_21b5df8: ; 0x021B5DF8
	push {r4, r5, r6, lr}
	mov r4, #0x5a
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B5E1E
	mov r0, #0
	mov r1, #0
	mov r6, #0
	bl sub_02152040
	ldr r0, [r5, r4]
	bl sub_0219D384
	ldr r0, [r5, r4]
	bl sub_0219D1F0
	str r6, [r5, r4]
_021B5E1E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy191_21b5df8

	thumb_func_start ovy191_21b5e20
ovy191_21b5e20: ; 0x021B5E20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r4, #0x16
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	str r1, [sp, #8]
	bl sub_0200E72C
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_0200E738
	add r7, r0, #0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0200E594
	add r2, r0, #0
	add r4, #0xe
	add r0, r5, r4
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	lsl r0, r6, #0x18
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	add r5, #0x70
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, r5, #0
	blx sub_021A8614
	ldr r0, [sp, #8]
	bl sub_021B5EA4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy191_21b5e20

	thumb_func_start ovy191_21b5e70
ovy191_21b5e70: ; 0x021B5E70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r0, r4, #0
	add r1, sp, #0
	bl ovy191_21b5eac
	cmp r0, #0
	beq _021B5E92
	add r0, r4, #0
	bl sub_021B5F18
	cmp r0, #0
	bne _021B5E92
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021B5E92:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy191_21b5e70

	thumb_func_start sub_021B5E98
sub_021B5E98: ; 0x021B5E98
	ldr r3, _021B5EA0 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x14
	bx r3
	.align 2, 0
_021B5EA0: .word MI_CpuFill8
	thumb_func_end sub_021B5E98

	thumb_func_start sub_021B5EA4
sub_021B5EA4: ; 0x021B5EA4
	mov r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_021B5EA4

	thumb_func_start ovy191_21b5eac
ovy191_21b5eac: ; 0x021B5EAC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	mov r5, #0
	blx sub_021A84B4
	cmp r0, #0
	bne _021B5ED8
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xa]
	ldrsh r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021B5F14
	blx sub_021A8718
	mov r0, #1
	strh r0, [r4, #8]
	b _021B5F14
_021B5ED8:
	blx sub_021A84F0
	add r1, r0, #7
	mov r5, #1
	cmp r1, #6
	bhi _021B5F06
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B5EF0: ; jump table
	.short _021B5EFE - _021B5EF0 - 2 ; case 0
	.short _021B5EFE - _021B5EF0 - 2 ; case 1
	.short _021B5F02 - _021B5EF0 - 2 ; case 2
	.short _021B5EFE - _021B5EF0 - 2 ; case 3
	.short _021B5EFE - _021B5EF0 - 2 ; case 4
	.short _021B5EFE - _021B5EF0 - 2 ; case 5
	.short _021B5EFE - _021B5EF0 - 2 ; case 6
_021B5EFE:
	str r0, [r4]
	b _021B5F14
_021B5F02:
	add r0, r5, #0
	b _021B5F10
_021B5F06:
	cmp r0, #0
	blt _021B5F0E
	str r0, [r6]
	b _021B5F14
_021B5F0E:
	mov r0, #1
_021B5F10:
	bl sub_02011CFC
_021B5F14:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy191_21b5eac

	thumb_func_start sub_021B5F18
sub_021B5F18: ; 0x021B5F18
	ldr r1, [r0]
	cmp r1, #0
	bge _021B5F22
	mov r0, #1
	bx lr
_021B5F22:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021B5F2C
	mov r0, #1
	bx lr
_021B5F2C:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _021B5F36
	mov r0, #1
	bx lr
_021B5F36:
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _021B5F40
	mov r0, #1
	bx lr
_021B5F40:
	mov r0, #0
	bx lr
	thumb_func_end sub_021B5F18

	thumb_func_start sub_021B5F44
sub_021B5F44: ; 0x021B5F44
	ldr r1, [r0]
	mov r2, #0
	cmp r1, #0
	bge _021B5F86
	add r0, r1, #7
	cmp r0, #6
	bhi _021B5F82
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B5F5E: ; jump table
	.short _021B5F76 - _021B5F5E - 2 ; case 0
	.short _021B5F6E - _021B5F5E - 2 ; case 1
	.short _021B5F82 - _021B5F5E - 2 ; case 2
	.short _021B5F7A - _021B5F5E - 2 ; case 3
	.short _021B5F7E - _021B5F5E - 2 ; case 4
	.short _021B5F6C - _021B5F5E - 2 ; case 5
	.short _021B5F72 - _021B5F5E - 2 ; case 6
_021B5F6C:
	b _021B5FBA
_021B5F6E:
	mov r2, #0x11
	b _021B5FBC
_021B5F72:
	mov r2, #0xf
	b _021B5FBC
_021B5F76:
	mov r2, #0x13
	b _021B5FBC
_021B5F7A:
	mov r2, #0x12
	b _021B5FBC
_021B5F7E:
	mov r2, #0x14
	b _021B5FBC
_021B5F82:
	mov r2, #0x16
	b _021B5FBC
_021B5F86:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021B5F9E
	cmp r1, #1
	beq _021B5F96
	cmp r1, #2
	beq _021B5F9A
	b _021B5FBC
_021B5F96:
	mov r2, #0xd
	b _021B5FBC
_021B5F9A:
	mov r2, #0xe
	b _021B5FBC
_021B5F9E:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _021B5FB4
	cmp r1, #1
	beq _021B5FAE
	cmp r1, #2
	beq _021B5FB2
	b _021B5FBC
_021B5FAE:
	mov r2, #0x17
	b _021B5FBC
_021B5FB2:
	b _021B5FAE
_021B5FB4:
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _021B5FBC
_021B5FBA:
	mov r2, #0x10
_021B5FBC:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021B5F44

	thumb_func_start ovy191_21b5fc0
ovy191_21b5fc0: ; 0x021B5FC0
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #3
	bne _021B6002
	ldr r2, [r0, #0x10]
	ldr r1, _021B6008 ; =0x00000191
	cmp r2, r1
	bgt _021B5FE4
	sub r0, r1, #1
	cmp r2, r0
	blt _021B5FDE
	beq _021B5FEC
	cmp r2, r1
	beq _021B5FF0
	b _021B5FF8
_021B5FDE:
	cmp r2, #0xc8
	beq _021B5FEC
	b _021B5FF8
_021B5FE4:
	add r0, r1, #7
	cmp r2, r0
	beq _021B5FF4
	b _021B5FF8
_021B5FEC:
	mov r0, #0x41
	b _021B5FFA
_021B5FF0:
	mov r0, #0x42
	b _021B5FFA
_021B5FF4:
	mov r0, #0x44
	b _021B5FFA
_021B5FF8:
	mov r0, #0x43
_021B5FFA:
	bl sub_020120F0
	mov r0, #1
	pop {r3, pc}
_021B6002:
	mov r0, #0
	pop {r3, pc}
	nop
_021B6008: .word 0x00000191
	thumb_func_end ovy191_21b5fc0

	thumb_func_start sub_021B600C
sub_021B600C: ; 0x021B600C
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021B600C

	thumb_func_start sub_021B6010
sub_021B6010: ; 0x021B6010
	mov r2, #3
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021B6010

	thumb_func_start sub_021B6018
sub_021B6018: ; 0x021B6018
	mov r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_021B6018

	thumb_func_start sub_021B6020
sub_021B6020: ; 0x021B6020
	mov r1, #0xa
	ldrsh r2, [r0, r1]
	add r2, r2, #1
	strh r2, [r0, #0xa]
	ldrsh r2, [r0, r1]
	mov r1, #0xe1
	lsl r1, r1, #4
	cmp r2, r1
	bne _021B6036
	mov r1, #1
	strh r1, [r0, #8]
_021B6036:
	bx lr
	thumb_func_end sub_021B6020

	thumb_func_start ovy191_21b6038
ovy191_21b6038: ; 0x021B6038
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _021B607C ; =0x00000B74
	add r5, r0, #0
	add r0, r5, r6
	add r4, r1, #0
	bl sub_021B580C
	ldr r1, _021B6080 ; =0x021B7320
	str r0, [r1, #8]
	add r0, r5, r6
	bl sub_021B5808
	add r2, r0, #0
	ldr r0, _021B6084 ; =0x021B7328
	mov r1, #1
	str r0, [sp]
	add r0, r4, #0
	mov r3, #3
	bl sub_02034B64
	add r3, r0, #0
	mov r0, #0x61
	lsl r0, r0, #6
	str r3, [r5, r0]
	ldr r0, [r5]
	ldr r1, _021B6088 ; =0x000000CD
	ldr r0, [r0, #4]
	ldr r2, _021B608C ; =0x021B93EC
	bl sub_02016A98
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B607C: .word 0x00000B74
_021B6080: .word 0x021B7320
_021B6084: .word 0x021B7328
_021B6088: .word 0x000000CD
_021B608C: .word 0x021B93EC
	thumb_func_end ovy191_21b6038

	thumb_func_start ovy191_21b6090
ovy191_21b6090: ; 0x021B6090
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021B60C0 ; =0x021B7334
	mov r2, #0xa
	str r0, [sp]
	add r0, r1, #0
	mov r1, #2
	mov r3, #2
	bl sub_02034B64
	add r3, r0, #0
	mov r0, #0x61
	lsl r0, r0, #6
	str r3, [r4, r0]
	ldr r0, [r4]
	ldr r1, _021B60C4 ; =0x000000CD
	ldr r0, [r0, #4]
	ldr r2, _021B60C8 ; =0x021B93EC
	bl sub_02016A98
	add sp, #4
	pop {r3, r4, pc}
	nop
_021B60C0: .word 0x021B7334
_021B60C4: .word 0x000000CD
_021B60C8: .word 0x021B93EC
	thumb_func_end ovy191_21b6090

	thumb_func_start ovy191_21b60cc
ovy191_21b60cc: ; 0x021B60CC
	push {r3, r4, r5, lr}
	mov r5, #0x61
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B60E2
	bl sub_02034BC4
	mov r0, #0
	str r0, [r4, r5]
_021B60E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy191_21b60cc

	thumb_func_start ovy191_21b60e4
ovy191_21b60e4: ; 0x021B60E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_020486F4
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x20]
	bl sub_020486F0
	ldrh r1, [r0]
	mov r3, #0
	mov r5, #0
	cmp r4, r1
	beq _021B6132
	ldr r1, _021B6138 ; =0x0000FF10
	mov r7, #0xa
_021B6108:
	lsl r2, r5, #1
	ldrh r2, [r0, r2]
	add r6, r2, #0
	sub r6, #0x30
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	cmp r6, #0xa
	blo _021B611E
	sub r2, r2, r1
	lsl r2, r2, #0x10
	lsr r6, r2, #0x10
_021B611E:
	add r2, r3, #0
	mul r2, r7
	add r3, r2, r6
	add r2, r5, #1
	lsl r2, r2, #0x10
	lsr r5, r2, #0x10
	lsl r2, r5, #1
	ldrh r2, [r0, r2]
	cmp r4, r2
	bne _021B6108
_021B6132:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6138: .word 0x0000FF10
	thumb_func_end ovy191_21b60e4

	thumb_func_start ovy191_21b613c
ovy191_21b613c: ; 0x021B613C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021B6184 ; =0x00001844
	mov r3, #0x9b
	ldr r0, [r4, r0]
	lsl r3, r3, #4
	str r0, [r4, r3]
	mov r1, #0
	add r0, r3, #4
	str r1, [r4, r0]
	add r0, r3, #0
	mov r1, #1
	add r0, #0x18
	str r1, [r4, r0]
	add r0, r3, #0
	add r0, #8
	str r1, [r4, r0]
	add r0, r3, #0
	mov r1, #0x2c
	add r0, #0xc
	str r1, [r4, r0]
	add r0, r3, #0
	add r0, #0x44
	add r1, r4, r0
	add r0, r3, #0
	add r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4]
	ldr r1, _021B6188 ; =0x000000BE
	ldr r0, [r0, #4]
	ldr r2, _021B618C ; =0x021B50A8
	add r3, r4, r3
	bl sub_02016A98
	pop {r4, pc}
	nop
_021B6184: .word 0x00001844
_021B6188: .word 0x000000BE
_021B618C: .word 0x021B50A8
	thumb_func_end ovy191_21b613c

	thumb_func_start sub_021B6190
sub_021B6190: ; 0x021B6190
	bx lr
	.align 2, 0
	thumb_func_end sub_021B6190

	thumb_func_start sub_021B6194
sub_021B6194: ; 0x021B6194
	ldr r1, _021B619C ; =0x000009CC
	ldr r0, [r0, r1]
	bx lr
	nop
_021B619C: .word 0x000009CC
	thumb_func_end sub_021B6194

	thumb_func_start ovy191_21b61a0
ovy191_21b61a0: ; 0x021B61A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021B61D0 ; =0x00001844
	ldr r3, _021B61D4 ; =0x000009D8
	ldr r0, [r4, r0]
	mov r1, #0
	str r0, [r4, r3]
	add r0, r3, #4
	str r1, [r4, r0]
	add r0, r3, #0
	mov r1, #1
	add r0, #8
	str r1, [r4, r0]
	add r0, r3, #0
	add r0, #0xc
	str r1, [r4, r0]
	ldr r0, [r4]
	ldr r1, _021B61D8 ; =0x000000BE
	ldr r0, [r0, #4]
	ldr r2, _021B61DC ; =0x021B52BC
	add r3, r4, r3
	bl sub_02016A98
	pop {r4, pc}
	.align 2, 0
_021B61D0: .word 0x00001844
_021B61D4: .word 0x000009D8
_021B61D8: .word 0x000000BE
_021B61DC: .word 0x021B52BC
	thumb_func_end ovy191_21b61a0

	thumb_func_start sub_021B61E0
sub_021B61E0: ; 0x021B61E0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B61E0

	thumb_func_start ovy191_21b61e4
ovy191_21b61e4: ; 0x021B61E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _021B620C ; =0x021B7340
	add r5, sp, #0
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r5]
	ldr r3, [r4]
	add r0, r4, #0
	ldr r3, [r3]
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B620C: .word 0x021B7340
	thumb_func_end ovy191_21b61e4

	thumb_func_start ovy191_21b6210
ovy191_21b6210: ; 0x021B6210
	push {r3, r4, r5, lr}
	ldr r5, _021B62FC ; =0x00000B6C
	add r4, r0, #0
	add r3, r1, #0
	ldr r1, [r4, r5]
	cmp r1, #0xa
	bhi _021B62F8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021B622A: ; jump table
	.short _021B6240 - _021B622A - 2 ; case 0
	.short _021B6250 - _021B622A - 2 ; case 1
	.short _021B6252 - _021B622A - 2 ; case 2
	.short _021B6270 - _021B622A - 2 ; case 3
	.short _021B6282 - _021B622A - 2 ; case 4
	.short _021B6296 - _021B622A - 2 ; case 5
	.short _021B62A4 - _021B622A - 2 ; case 6
	.short _021B62C0 - _021B622A - 2 ; case 7
	.short _021B62D4 - _021B622A - 2 ; case 8
	.short _021B62E8 - _021B622A - 2 ; case 9
	.short _021B62F4 - _021B622A - 2 ; case 10
_021B6240:
	add r0, r4, #4
	mov r1, #7
_021B6244:
	bl ovy191_21b6dd4
_021B6248:
	ldr r0, [r4, r5]
	add r0, r0, #1
_021B624C:
	str r0, [r4, r5]
	b _021B62F8
_021B6250:
	b _021B6270
_021B6252:
	ldr r0, _021B6300 ; =0x00001610
	ldr r1, _021B6304 ; =0x0000182C
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #0
	bl ovy191_21b5c84
	cmp r0, #1
	bne _021B6268
_021B6264:
	mov r0, #5
	b _021B624C
_021B6268:
	cmp r0, #2
	bne _021B62F8
	mov r0, #3
	b _021B624C
_021B6270:
	ldr r0, _021B6300 ; =0x00001610
	ldr r1, _021B6304 ; =0x0000182C
	ldr r2, _021B6308 ; =0x000009F4
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, r2
	bl ovy191_21b5c10
	b _021B6248
_021B6282:
	ldr r0, _021B6300 ; =0x00001610
	ldr r1, _021B6304 ; =0x0000182C
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #1
	bl ovy191_21b5c84
	cmp r0, #1
	bne _021B62F8
	b _021B6264
_021B6296:
	ldr r0, _021B6300 ; =0x00001610
	ldr r1, _021B6304 ; =0x0000182C
	add r0, r4, r0
	add r1, r4, r1
	bl ovy191_21b5e20
	b _021B6248
_021B62A4:
	ldr r0, _021B6300 ; =0x00001610
	ldr r1, _021B6304 ; =0x0000182C
	add r0, r4, r0
	add r1, r4, r1
	bl ovy191_21b5e70
	cmp r0, #0
	beq _021B62F8
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B62F8
	b _021B6248
_021B62C0:
	ldr r0, _021B630C ; =0x00001858
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #2
	bl sub_0200E438
	add r0, r4, #0
	bl ovy191_21b6f94
	b _021B6248
_021B62D4:
	bl ovy191_21b6fb0
	cmp r0, #0
	beq _021B62F8
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r4, #4
	mov r1, #8
	b _021B6244
_021B62E8:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B62F8
	b _021B6248
_021B62F4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B62F8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B62FC: .word 0x00000B6C
_021B6300: .word 0x00001610
_021B6304: .word 0x0000182C
_021B6308: .word 0x000009F4
_021B630C: .word 0x00001858
	thumb_func_end ovy191_21b6210

	thumb_func_start ovy191_21b6310
ovy191_21b6310: ; 0x021B6310
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r5, _021B6580 ; =0x00000B6C
	add r4, r0, #0
	ldr r2, [r4, r5]
	add r6, r1, #0
	cmp r2, #0x13
	bhi _021B640E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B632C: ; jump table
	.short _021B6354 - _021B632C - 2 ; case 0
	.short _021B6376 - _021B632C - 2 ; case 1
	.short _021B638A - _021B632C - 2 ; case 2
	.short _021B63B8 - _021B632C - 2 ; case 3
	.short _021B63C4 - _021B632C - 2 ; case 4
	.short _021B63CC - _021B632C - 2 ; case 5
	.short _021B63DC - _021B632C - 2 ; case 6
	.short _021B63E2 - _021B632C - 2 ; case 7
	.short _021B6406 - _021B632C - 2 ; case 8
	.short _021B64BE - _021B632C - 2 ; case 9
	.short _021B64DC - _021B632C - 2 ; case 10
	.short _021B6508 - _021B632C - 2 ; case 11
	.short _021B651C - _021B632C - 2 ; case 12
	.short _021B6528 - _021B632C - 2 ; case 13
	.short _021B652E - _021B632C - 2 ; case 14
	.short _021B6534 - _021B632C - 2 ; case 15
	.short _021B6540 - _021B632C - 2 ; case 16
	.short _021B654A - _021B632C - 2 ; case 17
	.short _021B6556 - _021B632C - 2 ; case 18
	.short _021B655E - _021B632C - 2 ; case 19
_021B6354:
	ldr r6, _021B6584 ; =0x00001858
	ldr r0, [r4, r6]
	bl sub_0200E4A0
	add r2, r0, #0
	add r0, r5, #0
	add r0, #8
	sub r6, #0x2c
	lsl r2, r2, #0x10
	add r0, r4, r0
	add r1, r4, r6
	lsr r2, r2, #0x10
	bl ovy191_21b5768
_021B6370:
	ldr r0, [r4, r5]
	add r0, r0, #1
	b _021B6578
_021B6376:
	add r0, r5, #0
	ldr r1, _021B6588 ; =0x0000182C
	add r0, #8
	add r0, r4, r0
	add r1, r4, r1
	bl ovy191_21b5780
	cmp r0, #0
	beq _021B640E
	b _021B6370
_021B638A:
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5808
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B580C
	add r3, r0, #0
	add r0, r4, #4
	mov r1, #0
	add r2, r6, #0
	bl ovy191_21b6edc
	add r0, r4, #4
	mov r1, #0
	b _021B6544
_021B63B8:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B640E
	b _021B6370
_021B63C4:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	b _021B63FE
_021B63CC:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B640E
	add r0, r4, #4
	bl ovy191_21b6a1c
	b _021B6370
_021B63DC:
	bl ovy191_21b6038
	b _021B6370
_021B63E2:
	bl ovy191_21b60e4
	add r1, r5, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy191_21b60cc
	add r0, r4, #4
	add r1, r6, #0
	bl ovy191_21b6930
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
_021B63FE:
	mov r3, #1
	bl sub_0204E060
	b _021B6370
_021B6406:
	bl sub_0204E0E0
	cmp r0, #0
	beq _021B6410
_021B640E:
	b _021B657A
_021B6410:
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5800
	str r0, [sp]
	add r0, r5, #4
	ldr r6, [r4, r0]
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5808
	add r7, r0, #0
	add r0, sp, #4
	add r1, sp, #0x14
	bl sub_0215DDA8
	cmp r6, #1
	blo _021B643C
	cmp r6, r7
	bls _021B6444
_021B643C:
	ldr r0, _021B6580 ; =0x00000B6C
	mov r1, #0x10
	str r1, [r4, r0]
	b _021B657A
_021B6444:
	ldr r7, _021B658C ; =0x00001854
	ldr r1, [sp]
	lsl r2, r6, #0x18
	lsl r1, r1, #0x18
	ldr r0, [r4, r7]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #4
	bl sub_0200E668
	cmp r0, #0
	beq _021B6460
	mov r0, #0xe
	b _021B6578
_021B6460:
	add r2, r5, #4
	ldr r2, [r4, r2]
	add r0, r5, #0
	add r0, #8
	sub r7, #0x28
	lsl r2, r2, #0x10
	add r0, r4, r0
	add r1, r4, r7
	lsr r2, r2, #0x10
	bl ovy191_21b57ac
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5804
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B580C
	add r3, r0, #0
	add r0, r4, #4
	mov r1, #0
	add r2, r6, #0
	bl ovy191_21b6edc
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5800
	add r2, r0, #0
	add r0, r4, #4
	mov r1, #1
	mov r3, #2
	bl ovy191_21b6edc
	add r0, r4, #4
	mov r1, #1
	bl ovy191_21b6dd4
	add r0, r4, #4
	bl ovy191_21b6f54
	b _021B6370
_021B64BE:
	add r0, r5, #0
	ldr r1, _021B6588 ; =0x0000182C
	add r0, #8
	add r0, r4, r0
	add r1, r4, r1
	bl ovy191_21b57d0
	cmp r0, #0
	beq _021B657A
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B657A
	b _021B6370
_021B64DC:
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl ovy191_21b581c
	ldr r6, _021B658C ; =0x00001854
	add r0, r5, #0
	add r0, #8
	ldr r1, [r4, r6]
	add r0, r4, r0
	bl ovy191_21b58b0
	add r0, r5, #0
	add r0, #8
	ldr r1, [r4, r6]
	add r0, r4, r0
	bl ovy191_21b58f0
	add r0, r4, #0
	bl ovy191_21b6f94
	b _021B6370
_021B6508:
	bl ovy191_21b6fb0
	cmp r0, #0
	beq _021B657A
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r4, #4
	mov r1, #3
	b _021B6544
_021B651C:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B657A
	b _021B6370
_021B6528:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021B652E:
	add r0, r4, #4
	mov r1, #2
	b _021B6544
_021B6534:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B657A
	b _021B6576
_021B6540:
	add r0, r4, #4
	mov r1, #4
_021B6544:
	bl ovy191_21b6dd4
	b _021B6370
_021B654A:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B657A
	b _021B6370
_021B6556:
	add r0, r4, #4
	bl ovy191_21b6ef8
	b _021B6370
_021B655E:
	add r0, r4, #4
	bl ovy191_21b6f2c
	cmp r0, #0
	bne _021B656E
	add sp, #0x20
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021B656E:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _021B657A
_021B6576:
	mov r0, #2
_021B6578:
	str r0, [r4, r5]
_021B657A:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6580: .word 0x00000B6C
_021B6584: .word 0x00001858
_021B6588: .word 0x0000182C
_021B658C: .word 0x00001854
	thumb_func_end ovy191_21b6310

	thumb_func_start ovy191_21b6590
ovy191_21b6590: ; 0x021B6590
	push {r4, r5, r6, lr}
	ldr r5, _021B67F0 ; =0x00000B6C
	add r4, r0, #0
	ldr r2, [r4, r5]
	add r6, r1, #0
	cmp r2, #0x16
	bls _021B65A0
	b _021B67EC
_021B65A0:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021B65AC: ; jump table
	.short _021B65DA - _021B65AC - 2 ; case 0
	.short _021B65E6 - _021B65AC - 2 ; case 1
	.short _021B65F2 - _021B65AC - 2 ; case 2
	.short _021B65FA - _021B65AC - 2 ; case 3
	.short _021B660A - _021B65AC - 2 ; case 4
	.short _021B6610 - _021B65AC - 2 ; case 5
	.short _021B6634 - _021B65AC - 2 ; case 6
	.short _021B6672 - _021B65AC - 2 ; case 7
	.short _021B66B2 - _021B65AC - 2 ; case 8
	.short _021B66BE - _021B65AC - 2 ; case 9
	.short _021B66C0 - _021B65AC - 2 ; case 10
	.short _021B66CA - _021B65AC - 2 ; case 11
	.short _021B66D0 - _021B65AC - 2 ; case 12
	.short _021B66D2 - _021B65AC - 2 ; case 13
	.short _021B6744 - _021B65AC - 2 ; case 14
	.short _021B6762 - _021B65AC - 2 ; case 15
	.short _021B6782 - _021B65AC - 2 ; case 16
	.short _021B6796 - _021B65AC - 2 ; case 17
	.short _021B67A2 - _021B65AC - 2 ; case 18
	.short _021B67A6 - _021B65AC - 2 ; case 19
	.short _021B67B4 - _021B65AC - 2 ; case 20
	.short _021B67C0 - _021B65AC - 2 ; case 21
	.short _021B67C8 - _021B65AC - 2 ; case 22
_021B65DA:
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r4, #4
	mov r1, #5
	b _021B67AA
_021B65E6:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B66DA
	b _021B67C6
_021B65F2:
	mov r0, #3
	mov r1, #0
	mov r2, #0x10
	b _021B662C
_021B65FA:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B66DA
_021B6602:
	add r0, r4, #4
	bl ovy191_21b6a1c
	b _021B67C6
_021B660A:
	bl ovy191_21b6090
	b _021B67C6
_021B6610:
	bl ovy191_21b60e4
	add r1, r5, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy191_21b60cc
	add r0, r4, #4
	add r1, r6, #0
	bl ovy191_21b6930
	mov r0, #3
	mov r1, #0x10
	mov r2, #0
_021B662C:
	mov r3, #1
	bl sub_0204E060
	b _021B67C6
_021B6634:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B66DA
	add r0, r5, #4
	ldr r2, [r4, r0]
	cmp r2, #1
	blo _021B666A
	cmp r2, #0xa
	bhi _021B666A
	add r0, r5, #0
	ldr r1, _021B67F4 ; =0x0000182C
	add r0, #8
	lsl r2, r2, #0x10
	add r0, r4, r0
	add r1, r4, r1
	lsr r2, r2, #0x10
	bl ovy191_21b5768
	add r0, r4, #4
	mov r1, #0x1a
_021B665E:
	bl ovy191_21b6dd4
	add r0, r4, #4
	bl ovy191_21b6f54
	b _021B67C6
_021B666A:
	ldr r0, _021B67F0 ; =0x00000B6C
	mov r1, #0x13
	str r1, [r4, r0]
	b _021B67EC
_021B6672:
	add r0, r5, #0
	ldr r1, _021B67F4 ; =0x0000182C
	add r0, #8
	add r0, r4, r0
	add r1, r4, r1
	bl ovy191_21b5780
	cmp r0, #0
	beq _021B66DA
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5808
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B580C
	add r3, r0, #0
	add r0, r4, #4
	mov r1, #0
	add r2, r6, #0
	bl ovy191_21b6edc
	add r0, r4, #4
	mov r1, #6
	b _021B67AA
_021B66B2:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B66DA
	b _021B67C6
_021B66BE:
	b _021B65F2
_021B66C0:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021B66DA
	b _021B6602
_021B66CA:
	bl ovy191_21b6038
	b _021B67C6
_021B66D0:
	b _021B6610
_021B66D2:
	bl sub_0204E0E0
	cmp r0, #0
	beq _021B66DC
_021B66DA:
	b _021B67EC
_021B66DC:
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5808
	add r1, r5, #4
	ldr r2, [r4, r1]
	cmp r2, #1
	blo _021B66F2
	cmp r2, r0
	bls _021B66F4
_021B66F2:
	b _021B666A
_021B66F4:
	add r0, r5, #0
	ldr r1, _021B67F4 ; =0x0000182C
	add r0, #8
	lsl r2, r2, #0x10
	add r0, r4, r0
	add r1, r4, r1
	lsr r2, r2, #0x10
	bl ovy191_21b57ac
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5804
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B580C
	add r3, r0, #0
	add r0, r4, #4
	mov r1, #0
	add r2, r6, #0
	bl ovy191_21b6edc
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5800
	add r2, r0, #0
	add r0, r4, #4
	mov r1, #1
	mov r3, #2
	bl ovy191_21b6edc
	add r0, r4, #4
	mov r1, #1
	b _021B665E
_021B6744:
	add r0, r5, #0
	ldr r1, _021B67F4 ; =0x0000182C
	add r0, #8
	add r0, r4, r0
	add r1, r4, r1
	bl ovy191_21b57d0
	cmp r0, #0
	beq _021B67EC
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B67EC
	b _021B67C6
_021B6762:
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl ovy191_21b581c
	ldr r1, _021B67F8 ; =0x00001854
	add r0, r5, #0
	add r0, #8
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ovy191_21b58f0
	add r0, r4, #0
	bl ovy191_21b6f94
	b _021B67C6
_021B6782:
	bl ovy191_21b6fb0
	cmp r0, #0
	beq _021B67EC
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r4, #4
	mov r1, #3
	b _021B67AA
_021B6796:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B67EC
	b _021B67C6
_021B67A2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B67A6:
	add r0, r4, #4
	mov r1, #9
_021B67AA:
	bl ovy191_21b6dd4
_021B67AE:
	ldr r0, [r4, r5]
	add r0, r0, #1
	b _021B67EA
_021B67B4:
	add r0, r4, #4
	bl ovy191_21b6e90
	cmp r0, #0
	beq _021B67EC
	b _021B67C6
_021B67C0:
	add r0, r4, #4
	bl ovy191_21b6ef8
_021B67C6:
	b _021B67AE
_021B67C8:
	add r0, r4, #4
	bl ovy191_21b6f2c
	cmp r0, #0
	bne _021B67D6
	mov r0, #2
	pop {r4, r5, r6, pc}
_021B67D6:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _021B67EC
	add r0, r5, #0
	add r0, #8
	add r0, r4, r0
	bl sub_021B5758
	mov r0, #0
_021B67EA:
	str r0, [r4, r5]
_021B67EC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B67F0: .word 0x00000B6C
_021B67F4: .word 0x0000182C
_021B67F8: .word 0x00001854
	thumb_func_end ovy191_21b6590

	thumb_func_start ovy191_21b67fc
ovy191_21b67fc: ; 0x021B67FC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021B684C ; =0x0000184C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_02009F7C
	add r6, r0, #0
	ldr r0, [r5, r4]
	bl sub_0200A3DC
	add r1, r0, #0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02008BE0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02008BDC
	add r7, r0, #0
	add r0, r6, #0
	blx sub_02057EC4
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	add r0, r7, #0
	mov r3, #0
	blx sub_021A8010
	blx sub_021A87B0
	sub r4, #0x20
	add r0, r5, r4
	bl sub_021B5EA4
	ldr r0, _021B6850 ; =0x00000B68
	mov r1, #1
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B684C: .word 0x0000184C
_021B6850: .word 0x00000B68
	thumb_func_end ovy191_21b67fc

	thumb_func_start ovy191_21b6854
ovy191_21b6854: ; 0x021B6854
	push {r3, lr}
	ldr r1, _021B6864 ; =0x0000182C
	add r0, r0, r1
	add r1, sp, #0
	bl ovy191_21b5eac
	pop {r3, pc}
	nop
_021B6864: .word 0x0000182C
	thumb_func_end ovy191_21b6854

	thumb_func_start ovy191_21b6868
ovy191_21b6868: ; 0x021B6868
	push {r4, lr}
	add r4, r0, #0
	blx sub_021A84B4
	cmp r0, #0
	bne _021B6880
	blx sub_021A8718
	ldr r0, _021B6884 ; =0x0000182C
	add r0, r4, r0
	bl sub_021B5EA4
_021B6880:
	pop {r4, pc}
	nop
_021B6884: .word 0x0000182C
	thumb_func_end ovy191_21b6868

	thumb_func_start ovy191_21b6888
ovy191_21b6888: ; 0x021B6888
	push {r3, r4, r5, lr}
	ldr r4, _021B68B8 ; =0x00000B68
	add r5, r0, #0
	ldrh r0, [r5, r4]
	cmp r0, #0
	bne _021B6898
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B6898:
	ldr r0, _021B68BC ; =0x0000182C
	add r1, sp, #0
	add r0, r5, r0
	bl ovy191_21b5eac
	cmp r0, #0
	beq _021B68B2
	blx sub_021A84A0
	mov r0, #0
	strh r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B68B2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021B68B8: .word 0x00000B68
_021B68BC: .word 0x0000182C
	thumb_func_end ovy191_21b6888

	thumb_func_start ovy191_21b68c0
ovy191_21b68c0: ; 0x021B68C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	mov r6, #1
	mov r7, #0
	bl sub_02152404
	cmp r0, #0
	beq _021B68D8
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B68D8:
	bl sub_020120C8
	cmp r0, #0
	beq _021B68E8
	bl sub_02042540
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B68E8:
	ldr r5, _021B6920 ; =0x0000182C
	add r0, r4, r5
	bl sub_021B5F18
	cmp r0, #0
	beq _021B691C
	add r0, r4, r5
	bl ovy191_21b5fc0
	cmp r0, #0
	beq _021B6902
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B6902:
	add r0, r4, r5
	bl sub_021B5F44
	add r5, r0, #0
	add r0, r4, #4
	bl ovy191_21b6f78
	add r0, r4, #4
	add r1, r5, #0
	bl ovy191_21b6dd4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B691C:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6920: .word 0x0000182C
	thumb_func_end ovy191_21b68c0

	thumb_func_start sub_021B6924
sub_021B6924: ; 0x021B6924
	ldr r3, _021B692C ; =ovy191_21b6e90
	add r0, r0, #4
	bx r3
	nop
_021B692C: .word ovy191_21b6e90
	thumb_func_end sub_021B6924

	thumb_func_start ovy191_21b6930
ovy191_21b6930: ; 0x021B6930
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	mov r7, #1
	bl ovy191_21b6fe0
	str r0, [r5, #8]
	add r0, r5, #0
	add r1, r6, #0
	strh r6, [r5, #4]
	bl ovy191_21b6ad0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r7, [sp, #8]
	bl BmpWin_CreateDynamic
	ldr r4, _021B6A14 ; =0x0000097C
	mov r1, #1
	add r2, r4, #0
	str r0, [r5, r4]
	add r2, #8
	ldr r2, [r5, r2]
	mov r3, #0xd
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_02024E80
	ldr r0, [r5, r4]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	bl BmpWin_BitmapFill
	ldr r0, [r5, r4]
	bl sub_0204826C
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	mov r0, #1
	bl sub_02045B7C
	ldr r2, _021B6A18 ; =0x0000019D
	mov r0, #0
	mov r1, #2
	add r3, r6, #0
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0x14
	str r0, [r5, r1]
	add r0, r6, #0
	bl GFL_WordSetSystemCreateDefault
	add r1, r4, #0
	add r1, #0x18
	str r0, [r5, r1]
	mov r0, #0x17
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r6, [sp]
	bl GFL_FontCreate
	add r1, r4, #0
	add r1, #0x1c
	str r0, [r5, r1]
	mov r0, #0x80
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0x20
	str r0, [r5, r1]
	mov r0, #0x80
	add r1, r6, #0
	bl GFL_StrBufCreate
	add r1, r4, #0
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl GFL_TCBExMgrCreate
	add r4, #0x2c
	str r0, [r5, r4]
	mov r0, #0x10
	mov r1, #1
	str r7, [r5]
	bl sub_02046CFC
	mov r0, #0x10
	mov r1, #1
	bl sub_02046D84
	mov r0, #1
	add r1, r6, #0
	bl sub_02042BA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B6A14: .word 0x0000097C
_021B6A18: .word 0x0000019D
	thumb_func_end ovy191_21b6930

	thumb_func_start ovy191_21b6a1c
ovy191_21b6a1c: ; 0x021B6A1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021B6AAA
	ldr r0, _021B6AAC ; =0x000009A4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B6A32
	bl sub_020223CC
_021B6A32:
	ldr r5, _021B6AB0 ; =0x000009A8
	ldr r0, [r4, r5]
	bl GFL_TCBExMgrFree
	add r0, r5, #0
	sub r0, #0x18
	ldr r0, [r4, r0]
	bl GFL_MsgDataFree
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl GFL_WordSetSystemFree
	add r0, r5, #0
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl sub_02022DA8
	add r0, r5, #0
	sub r0, #0xc
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	add r0, r5, #0
	sub r0, #8
	ldr r0, [r4, r0]
	bl GFL_StrBufFree
	add r0, r4, #0
	bl ovy191_21b6d88
	add r0, r4, #0
	bl ovy191_21b6f78
	add r0, r5, #0
	sub r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B6A8C
	bl sub_020256B0
	mov r0, #0
	sub r5, #0x28
	str r0, [r4, r5]
_021B6A8C:
	ldr r5, _021B6AB4 ; =0x0000097C
	ldr r0, [r4, r5]
	bl sub_02048210
	ldr r0, [r4, #8]
	bl ovy191_21b7070
	bl sub_020232D8
	add r5, #0x30
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	blx MI_CpuFill8
_021B6AAA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6AAC: .word 0x000009A4
_021B6AB0: .word 0x000009A8
_021B6AB4: .word 0x0000097C
	thumb_func_end ovy191_21b6a1c

	thumb_func_start ovy191_21b6ab8
ovy191_21b6ab8: ; 0x021B6AB8
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _021B6AC8
	ldr r1, _021B6ACC ; =0x000009A8
	ldr r0, [r0, r1]
	bl sub_0203A7F4
_021B6AC8:
	pop {r3, pc}
	nop
_021B6ACC: .word 0x000009A8
	thumb_func_end ovy191_21b6ab8

	thumb_func_start ovy191_21b6ad0
ovy191_21b6ad0: ; 0x021B6AD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	mov r0, #0x91
	str r1, [sp, #0x14]
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp, #0x20]
	str r1, [sp]
	ldr r1, [sp, #0x14]
	mov r2, #4
	str r1, [sp, #4]
	mov r1, #3
	mov r3, #0
	str r0, [sp, #0x2c]
	bl sub_0204B0D4
	ldr r0, [sp, #0x20]
	mov r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204AE3C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #6
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r2, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [sp, #0x20]
	mov r1, #3
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204B0D4
	ldr r0, [sp, #0x20]
	mov r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204AE3C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [sp, #0x20]
	mov r1, #4
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204AE3C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #7
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [sp, #0x10]
	mov r2, #0x97
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #4
	blx MI_CpuFill8
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	lsl r3, r3, #0x10
	mov r1, #2
	add r2, sp, #0x38
	lsr r3, r3, #0x10
	bl sub_0204B37C
	add r5, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r0, #0xc]
	add r1, #0x14
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x38]
	add r2, r4, #0
	ldr r1, [sp, #0x10]
	add r2, #0x14
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r4, #0x14
	add r0, r0, r4
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x34]
	add r0, #0x14
	str r0, [sp, #0x34]
_021B6BF6:
	ldr r0, [sp, #0x1c]
	add r1, r0, #1
	cmp r1, #0xf
	blt _021B6C00
	sub r1, #0xf
_021B6C00:
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #5
	ldr r0, [sp, #0x34]
	add r7, r0, r1
_021B6C16:
	ldr r0, [sp, #0x24]
	mov r4, #4
	asr r2, r0, #8
	ldr r0, [sp, #0x20]
	lsl r1, r0, #5
	ldr r0, [sp, #0x30]
	add r5, r0, r1
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
_021B6C28:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x14]
	mov r2, #1
	add r3, r6, #0
	str r0, [sp]
	add r0, r7, r1
	add r1, r5, r1
	bl sub_0202780C
	add r4, r4, #1
	cmp r4, #0xb
	blt _021B6C28
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	beq _021B6C6A
	mov r0, #6
	ldr r1, [sp, #0x24]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x24]
	cmp r1, r0
	blt _021B6C16
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
	b _021B6C16
_021B6C6A:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0xf
	blt _021B6BF6
	mov r5, #0x7d
	mov r1, #0x1e
	ldr r0, [sp, #0x10]
	lsl r5, r5, #2
	add r0, r0, r5
	lsl r1, r1, #6
	blx DC_FlushRange
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, _021B6D0C ; =ovy191_21b6d18
	add r1, #0xc
	mov r2, #0x14
	bl GFL_VBlankTCBAdd
	ldr r1, [sp, #0x10]
	mov r2, #8
	str r0, [r1, #0xc]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B6D10 ; =0x04000050
	mov r1, #1
	mov r3, #8
	bl G2x_SetBlendAlpha_
	ldr r4, _021B6D14 ; =0x00000978
	ldr r0, [sp, #0x10]
	mov r1, #0
	strb r1, [r0, r4]
	ldr r0, [sp, #0x2c]
	bl sub_0204AB0C
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r6, #0x20
	bl sub_02044564
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02044564
	ldr r3, [sp, #0x14]
	mov r0, #1
	mov r1, #0xd
	mov r2, #0
	bl sub_02024D20
	add r2, r4, #0
	ldr r1, [sp, #0x10]
	add r2, #0xc
	str r0, [r1, r2]
	ldr r3, [sp, #0x14]
	mov r0, #2
	mov r1, #0xd
	mov r2, #0
	bl sub_02024D20
	sub r5, #0x74
	ldr r1, [sp, #0x10]
	add r4, #0x10
	str r0, [r1, r4]
	str r6, [sp]
	ldr r0, [sp, #0x14]
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #0
	add r3, r5, #0
	bl sub_0204B0B8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B6D0C: .word ovy191_21b6d18
_021B6D10: .word 0x04000050
_021B6D14: .word 0x00000978
	thumb_func_end ovy191_21b6ad0

	thumb_func_start ovy191_21b6d18
ovy191_21b6d18: ; 0x021B6D18
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021B6D7C
	ldr r4, _021B6D80 ; =0x0000096B
	mov r0, #1
	ldrb r1, [r5, r4]
	eor r1, r0
	strb r1, [r5, r4]
	ldrb r1, [r5, r4]
	tst r0, r1
	bne _021B6D7C
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	mov r6, #0x1f
	lsl r6, r6, #4
	add r1, r5, r6
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0x28
	mov r2, #0xe
	bl GX_LoadBGPltt
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	add r1, r5, r6
	mov r2, #0xe
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0x28
	bl GXS_LoadBGPltt
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #3
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x3c
	blt _021B6D70
	mov r1, #0
	sub r0, r4, #3
	strh r1, [r5, r0]
_021B6D70:
	ldr r0, _021B6D84 ; =0x0000096C
	mov r1, #2
	ldrb r0, [r5, r0]
	mov r2, #7
	bl sub_02044CFC
_021B6D7C:
	pop {r4, r5, r6, pc}
	nop
_021B6D80: .word 0x0000096B
_021B6D84: .word 0x0000096C
	thumb_func_end ovy191_21b6d18

	thumb_func_start ovy191_21b6d88
ovy191_21b6d88: ; 0x021B6D88
	push {r3, r4, r5, lr}
	ldr r5, _021B6DCC ; =0x00000984
	add r4, r0, #0
	ldr r2, [r4, r5]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r5, #4
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021B6DC4
	bl GFL_TCBRemove
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_021B6DC4:
	ldr r0, _021B6DD0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6DCC: .word 0x00000984
_021B6DD0: .word 0x04000050
	thumb_func_end ovy191_21b6d88

	thumb_func_start ovy191_21b6dd4
ovy191_21b6dd4: ; 0x021B6DD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _021B6E8C ; =0x000009A4
	add r5, r0, #0
	ldr r0, [r5, r4]
	add r6, r1, #0
	cmp r0, #0
	beq _021B6DEC
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, r4]
_021B6DEC:
	mov r4, #0x99
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #0xc
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0x10
	add r2, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl GFL_WordSetFormatStrbuf
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	bl BmpWin_GetBitmap
	mov r1, #0xf
	mov r6, #0xf
	bl BmpWin_BitmapFill
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r7, #2
	bl sub_020232E8
	bl sub_02017BCC
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r3, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	add r3, #0x10
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r0, [r5, #4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r6, [sp, #0x14]
	sub r0, #0x14
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	bl sub_02022268
	add r1, r4, #0
	add r1, #0x14
	str r0, [r5, r1]
	add r2, r4, #0
	sub r2, #0xc
	add r0, r4, #0
	ldr r2, [r5, r2]
	sub r0, #0x14
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #0xd
	bl sub_02024E80
	sub r4, #0x14
	ldr r0, [r5, r4]
	bl BmpWin_FlushChar
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6E8C: .word 0x000009A4
	thumb_func_end ovy191_21b6dd4

	thumb_func_start ovy191_21b6e90
ovy191_21b6e90: ; 0x021B6E90
	push {r3, r4, r5, lr}
	ldr r5, _021B6ED8 ; =0x000009A4
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _021B6EA0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B6EA0:
	bl sub_020223B4
	cmp r0, #2
	bne _021B6EB6
	ldr r0, [r4, r5]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B6EB6:
	cmp r0, #1
	bne _021B6ED2
	bl GCTX_HIDGetPressedKeys
	cmp r0, #1
	beq _021B6ECA
	bl sub_0203DA48
	cmp r0, #0
	beq _021B6ED2
_021B6ECA:
	ldr r0, _021B6ED8 ; =0x000009A4
	ldr r0, [r4, r0]
	bl sub_020223BC
_021B6ED2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021B6ED8: .word 0x000009A4
	thumb_func_end ovy191_21b6e90

	thumb_func_start ovy191_21b6edc
ovy191_21b6edc: ; 0x021B6EDC
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r4, _021B6EF4 ; =0x00000994
	ldr r0, [r0, r4]
	bl StringSetNumber
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021B6EF4: .word 0x00000994
	thumb_func_end ovy191_21b6edc

	thumb_func_start ovy191_21b6ef8
ovy191_21b6ef8: ; 0x021B6EF8
	push {r3, r4, r5, lr}
	ldr r4, _021B6F20 ; =0x00000988
	add r5, r0, #0
	ldr r1, [r5, r4]
	ldr r0, _021B6F24 ; =0x021B7320
	mov r2, #0xd
	strh r1, [r0, #4]
	ldrh r0, [r5, #4]
	mov r3, #0
	str r0, [sp]
	ldr r1, [r5, r4]
	ldr r0, _021B6F28 ; =0x021B7320
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020254E0
	sub r4, #8
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	nop
_021B6F20: .word 0x00000988
_021B6F24: .word 0x021B7320
_021B6F28: .word 0x021B7320
	thumb_func_end ovy191_21b6ef8

	thumb_func_start ovy191_21b6f2c
ovy191_21b6f2c: ; 0x021B6F2C
	push {r3, r4, r5, lr}
	mov r4, #0x26
	add r5, r0, #0
	lsl r4, r4, #6
	mov r1, #1
	ldr r0, [r5, r4]
	mvn r1, r1
	cmp r0, #0
	beq _021B6F50
	bl sub_02025634
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021B6F50
	mov r0, #0
	str r0, [r5, r4]
_021B6F50:
	add r0, r1, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy191_21b6f2c

	thumb_func_start ovy191_21b6f54
ovy191_21b6f54: ; 0x021B6F54
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02005718
	ldrh r1, [r4, #4]
	ldr r5, _021B6F74 ; =0x0000097C
	mov r2, #0xf
	str r1, [sp]
	ldr r1, [r4, r5]
	mov r3, #0x10
	bl sub_02035604
	add r5, #0x10
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	nop
_021B6F74: .word 0x0000097C
	thumb_func_end ovy191_21b6f54

	thumb_func_start ovy191_21b6f78
ovy191_21b6f78: ; 0x021B6F78
	push {r3, r4, r5, lr}
	ldr r5, _021B6F90 ; =0x0000098C
	add r4, r0, #0
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B6F8C
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021B6F8C:
	pop {r3, r4, r5, pc}
	nop
_021B6F90: .word 0x0000098C
	thumb_func_end ovy191_21b6f78

	thumb_func_start ovy191_21b6f94
ovy191_21b6f94: ; 0x021B6F94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021B6FA8 ; =0x00001844
	ldr r0, [r4, r0]
	bl sub_0201782C
	ldr r0, _021B6FAC ; =0x00000B6A
	mov r1, #1
	strh r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021B6FA8: .word 0x00001844
_021B6FAC: .word 0x00000B6A
	thumb_func_end ovy191_21b6f94

	thumb_func_start ovy191_21b6fb0
ovy191_21b6fb0: ; 0x021B6FB0
	push {r3, r4, r5, lr}
	ldr r4, _021B6FD8 ; =0x00000B6A
	add r5, r0, #0
	ldrh r0, [r5, r4]
	cmp r0, #0
	bne _021B6FC0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B6FC0:
	ldr r0, _021B6FDC ; =0x00001844
	ldr r0, [r5, r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B6FD4
	mov r0, #0
	strh r0, [r5, r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B6FD4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6FD8: .word 0x00000B6A
_021B6FDC: .word 0x00001844
	thumb_func_end ovy191_21b6fb0

	thumb_func_start ovy191_21b6fe0
ovy191_21b6fe0: ; 0x021B6FE0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x6f
	add r5, r1, #0
	lsl r0, r0, #2
	str r0, [sp]
	ldr r3, _021B7058 ; =0x021B734C
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r7, #0
	bl sub_0203A1FC
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	blx MI_CpuFill8
	ldr r1, _021B705C ; =0x04000050
	ldr r0, _021B7060 ; =0x04001050
	strh r7, [r1]
	strh r7, [r0]
	sub r1, #0x50
	ldr r3, [r1]
	ldr r2, _021B7064 ; =0xFFFF1FFF
	sub r0, #0x50
	and r3, r2
	str r3, [r1]
	ldr r1, [r0]
	and r1, r2
	str r1, [r0]
	mov r0, #0
	bl sub_02046BE0
	ldr r0, _021B7068 ; =0x021B7184
	bl sub_02046C40
	add r0, r6, #0
	bl sub_02046DF8
	bl sub_02046DE0
	bl sub_02046CF0
	bl sub_02046D78
	bl sub_020232D0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy191_21b70c8
	ldr r0, _021B706C ; =0x021B70BD
	add r1, r4, #0
	mov r2, #0
	bl GFL_VBlankTCBAdd
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7058: .word 0x021B734C
_021B705C: .word 0x04000050
_021B7060: .word 0x04001050
_021B7064: .word 0xFFFF1FFF
_021B7068: .word 0x021B7184
_021B706C: .word 0x021B70BD
	thumb_func_end ovy191_21b6fe0

	thumb_func_start ovy191_21b7070
ovy191_21b7070: ; 0x021B7070
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl GFL_TCBRemove
	add r0, r4, #0
	bl ovy191_21b7128
	bl sub_020232D8
	ldr r5, _021B70B0 ; =0x04000050
	mov r1, #0
	strh r1, [r5]
	ldr r0, _021B70B4 ; =0x04001050
	sub r5, #0x50
	strh r1, [r0]
	ldr r3, [r5]
	ldr r2, _021B70B8 ; =0xFFFF1FFF
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
	.align 2, 0
_021B70B0: .word 0x04000050
_021B70B4: .word 0x04001050
_021B70B8: .word 0xFFFF1FFF
	thumb_func_end ovy191_21b7070
_021B70BC:
	.byte 0x01, 0x4B, 0x08, 0x1C
	.byte 0x18, 0x47, 0xC0, 0x46, 0x61, 0x71, 0x1B, 0x02

	thumb_func_start ovy191_21b70c8
ovy191_21b70c8: ; 0x021B70C8
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
	ldr r0, _021B7120 ; =0x021B7174
	bl sub_02044710
	ldr r7, _021B7124 ; =0x021B71B4
_021B70EA:
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
	blo _021B70EA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B7120: .word 0x021B7174
_021B7124: .word 0x021B71B4
	thumb_func_end ovy191_21b70c8

	thumb_func_start ovy191_21b7128
ovy191_21b7128: ; 0x021B7128
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021B715C ; =0x021B71B4
	add r7, r0, #0
	mov r5, #0
	mov r6, #0x2c
_021B7132:
	add r0, r5, #0
	mul r0, r6
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r5, r5, #1
	cmp r5, #8
	blo _021B7132
	bl sub_020480A8
	bl sub_02044528
	add r0, r7, #0
	mov r1, #0
	mov r2, #4
	blx MI_CpuFill8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B715C: .word 0x021B71B4
	thumb_func_end ovy191_21b7128
_021B7160:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x5D, 0x5A, 0x04, 0x02, 0x21, 0x54, 0x1B, 0x02, 0xD1, 0x54, 0x1B, 0x02
	.byte 0xD9, 0x56, 0x1B, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x06
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x02, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x04, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x06, 0x04
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x18, 0x0D, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x62, 0x1B, 0x02, 0x11, 0x63, 0x1B, 0x02, 0x91, 0x65, 0x1B, 0x02, 0x77, 0x69, 0x66, 0x69
	.byte 0x5F, 0x62, 0x73, 0x75, 0x62, 0x77, 0x61, 0x79, 0x5F, 0x67, 0x72, 0x61, 0x70, 0x68, 0x69, 0x63
	.byte 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021B7160
