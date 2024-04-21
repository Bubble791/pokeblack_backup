    .include "macros/function.inc"
	.include "overlay142.inc"
	.include "global.inc"

	.public ovy142_21998f4
	.public ovy142_2199928
	.public ovy142_219995c
	.public sub_02199978
	.public ovy142_2199988
	.public sub_021999B8
	.public sub_021999C8
	.public ovy142_21999d8
	.public ovy142_21999f0
	.public ovy142_2199a20
	.public ovy142_2199a5c
	.public ovy142_2199ad4
	.public ovy142_2199b48
	.public ovy142_2199bcc
	.public ovy142_2199c70
	.public ovy142_2199d24
	.public ovy142_2199db8
	.public ovy142_2199e88
	.public ovy142_2199eb8
	.public ovy142_2199ecc
	.public sub_0219A0B8
	.public ovy142_219a0dc
	.public ovy142_219a104
	.public ovy142_219a1ec
	.public ovy142_219a250
	.public ovy142_219a2ac
	.public ovy142_219a2c4
	.public ovy142_219a314
	.public ovy142_219a354
	.public ovy142_219a404
	.public ovy142_219a440
	.public ovy142_219a4a0
	.public ovy142_219a4d0
	.public ovy142_219a724
	.public ovy142_219a850
	.public ovy142_219ab38
	.public ovy142_219abb8
	.public ovy142_219abd8
	.public ovy142_219ac4c
	.public ovy142_219ac70
	.public ovy142_219acb8
	.public ovy142_219ad14
	.public ovy142_219ad30
	.public ovy142_219ae10
	.public ovy142_219ae90
	.public ovy142_219af84
	.public ovy142_219b0a0
	.public ovy142_219b1a0
	.public ovy142_219b2f0
	.public ovy142_219b3b0
	.public ovy142_219b490
	.public ovy142_219b46c
	.public ovy142_219b5d4
	.public ovy142_219b754
	.public ovy142_219b784
	.public ovy142_219b8c4
	.public ovy142_219b9c0
	.public ovy142_219bac4
	.public ovy142_219bcd8
	.public ovy142_219bca4
	.public ovy142_219bd2c
	.public ovy142_219bd84
	.public ovy142_219bda4
	.public sub_0219BE00
	.public ovy142_219be18
	.public sub_0219BE88
	.public ovy142_219be90
	.public ovy142_219becc
	.public ovy142_219bf04
	.public ovy142_219bf58
	.public ovy142_219c100
	.public ovy142_219c0e8
	.public ovy142_219c3cc
	.public ovy142_219c38c
	.public ovy142_21a03f0
	.public ovy142_21a0698
	.public ovy142_219d7a8
	.public ovy142_219d664
	.public ovy142_219e284
	.public ovy142_219e5c4
	.public ovy142_219efc0
	.public ovy142_219e6f8
	.public ovy142_219f84c
	.public ovy142_219cc24
	.public ovy142_219c900
	.text

// 可能是有些函数的参数不对导致的寄存器有问题
	thumb_func_start ovy142_219c444
ovy142_219c444: ; 0x0219C444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #0xd
	add r4, r0, #0
	mov r0, #1
	mov r1, #0xe
	lsl r2, r2, #0xe
	bl sub_0203A15C
	ldr r1, _0219C690 ; =0x00001F54
	add r0, r4, #0
	mov r2, #0xe
	bl sub_0203AAEC
	ldr r2, _0219C690 ; =0x00001F54
	mov r1, #0
	add r4, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	mov r6, #0x23
	lsl r6, r6, #6
	add r1, r6, #4
	add r0, r4, r6
	add r1, r4, r1
	bl sub_0203DF64
	ldr r0, _0219C694 ; =0x0000054C
	mov r1, #0xe
	strh r1, [r4, r0]
	add r1, r6, #0
	sub r1, #0x14
	mov r0, #1
	str r0, [r4, r1]
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x18]
	add r0, r5, #0
	add r0, #0x18
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x20]
	ldr r0, _0219C690 ; =0x00001F54
	ldr r1, [r5, #0x10]
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #0x18]
	bl sub_020086C0
	ldr r2, _0219C690 ; =0x00001F54
	ldr r3, _0219C694 ; =0x0000054C
	add r0, r6, #0
	sub r2, r2, #4
	add r0, #8
	ldrh r3, [r4, r3]
	ldr r1, [r5, #0x14]
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl ovy142_21a03f0
	ldr r0, [r4, #0x14]
	bl sub_02008890
	sub r6, #0x94
	str r0, [r4, r6]
_0219C4DE:
	add r2, sp, #4
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	add r2, #2
	add r3, sp, #4
	bl sub_0200887C
	ldr r0, _0219C698 ; =0x000008C8
	add r1, r7, #0
	add r0, r4, r0
	bl ovy142_21a0698
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r5, sp, #4
	mov r1, #2
_0219C4FE:
	ldrsh r2, [r5, r1]
	cmp r2, #0
	bne _0219C50C
	mov r3, #0
	ldrsh r3, [r5, r3]
	cmp r3, #0
	beq _0219C53C
_0219C50C:
	mov r3, #0
	ldrsh r3, [r5, r3]
	add r6, r3, #5
	cmp r6, r0
	blt _0219C51E
	cmp r3, #0
	beq _0219C51E
	sub r2, r3, #1
	b _0219C52E
_0219C51E:
	add r6, r2, r3
	cmp r6, r0
	blt _0219C53C
	cmp r3, #0
	beq _0219C532
	mov r2, #0
	ldrsh r2, [r5, r2]
	sub r2, r2, #1
_0219C52E:
	strh r2, [r5]
	b _0219C4FE
_0219C532:
	mov r2, #2
	ldrsh r2, [r5, r2]
	sub r2, r2, #1
	strh r2, [r5, #2]
	b _0219C4FE
_0219C53C:
	ldr r1, _0219C69C ; =0x0000082C
	ldr r0, [r4, r1]
	cmp r7, r0
	bne _0219C54E
	add r0, r1, #4
	str r2, [r4, r0]
	sub r0, r3, #1
	add r1, #8
	str r0, [r4, r1]
_0219C54E:
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	bl sub_02008894
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #6
	blo _0219C4DE
	ldr r5, _0219C694 ; =0x0000054C
	mov r0, #0
	ldrh r3, [r4, r5]
	mov r1, #2
	mov r2, #6
	bl sub_0204875C
	add r1, r5, #0
	sub r1, #0x2c
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	mov r0, #0xc8
	bl sub_02048530
	add r1, r5, #0
	sub r1, #0x24
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	mov r0, #0xc8
	bl sub_02048530
	add r1, r5, #0
	sub r1, #0x20
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	mov r0, #0x40
	mov r6, #0x40
	bl sub_02048530
	add r1, r5, #0
	sub r1, #0x1c
	str r0, [r4, r1]
	ldrh r0, [r4, r5]
	bl sub_020241D4
	add r1, r5, #0
	sub r1, #0x28
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	lsl r0, r6, #6
	bl sub_020219A8
	add r1, r5, #0
	sub r1, #0x3c
	str r0, [r4, r1]
	ldrh r3, [r4, r5]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	mov r6, #1
	bl sub_0202E7A4
	add r1, r5, #0
	sub r1, #0x30
	str r0, [r4, r1]
	ldrh r0, [r4, r5]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	add r1, r5, #0
	sub r1, #0x18
	str r0, [r4, r1]
	add r0, r4, #0
	bl ovy142_219d7a8
	add r0, r4, #0
	bl ovy142_219e284
	add r0, r4, #0
	bl ovy142_219e5c4
	add r0, r4, #0
	bl ovy142_219efc0
	add r0, r4, #0
	bl sub_021998DC
	add r0, r4, #0
	bl ovy142_219e6f8
	ldrh r3, [r4, r5]
	ldr r0, _0219C6A0 ; =0x021A09D8
	ldr r1, _0219C6A4 ; =ovy142_219c100
	add r2, r4, #0
	bl sub_0205044C
	ldr r7, _0219C6A8 ; =0x000006A4
	str r0, [r4, r7]
	add r0, r4, #0
	bl ovy142_219c900
	add r0, r4, #0
	bl ovy142_219cc24
	ldr r0, _0219C6AC ; =ovy142_219c38c
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	add r1, r7, #4
	str r0, [r4, r1]
	ldrh r0, [r4, r5]
	add r2, r6, #0
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	add r7, #0xa4
	str r0, [r4, r7]
	add r0, r4, #0
	bl ovy142_219f84c
	ldrh r0, [r4, r5]
	add r2, r5, #0
	add r3, r5, #0
	str r0, [sp]
	sub r2, #0x18
	sub r3, #0x3c
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	mov r0, #3
	mov r1, #9
	bl sub_0202E168
	lsl r1, r6, #0xb
	str r0, [r4, r1]
	ldrh r1, [r4, r5]
	add r0, r6, #0
	bl sub_02042BA8
	bl sub_0203D554
	cmp r0, #0
	beq _0219C676
	mov r6, #0
_0219C676:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy142_219bda4
	bl ovy142_219d664
	ldr r1, _0219C6B0 ; =ovy142_219c3cc
	add r0, r4, #0
	bl sub_021998C0
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C690: .word 0x00001F54
_0219C694: .word 0x0000054C
_0219C698: .word 0x000008C8
_0219C69C: .word 0x0000082C
_0219C6A0: .word 0x021A09D8
_0219C6A4: .word ovy142_219c100
_0219C6A8: .word 0x000006A4
_0219C6AC: .word ovy142_219c38c
_0219C6B0: .word ovy142_219c3cc
	thumb_func_end ovy142_219c444
