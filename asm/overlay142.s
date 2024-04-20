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
	.text


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

	thumb_func_start ovy142_219c6b4
ovy142_219c6b4: ; 0x0219C6B4
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _0219C734 ; =0x000004FC
	add r4, r3, #0
	ldr r2, [r4, r0]
	cmp r2, #0
	bne _0219C6E2
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, #0x50
	ldrh r0, [r4, r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0219C6E2:
	ldr r5, _0219C738 ; =0x00000834
	ldr r1, [r4, r5]
	add r0, r5, #4
	str r1, [r4, r0]
	add r0, r4, #0
	blx r2
	add r0, r5, #0
	add r0, #0x5e
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0219C704
	add r0, r4, #0
	bl ovy142_219eb54
	mov r0, #0
	add r5, #0x5e
	strh r0, [r4, r5]
_0219C704:
	mov r5, #0x89
	lsl r5, r5, #4
	ldrh r0, [r4, r5]
	cmp r0, #0
	beq _0219C718
	add r0, r4, #0
	bl ovy142_219ebdc
	mov r0, #0
	strh r0, [r4, r5]
_0219C718:
	add r0, r4, #0
	bl ovy142_219e5a8
	add r0, r4, #0
	bl ovy142_21a014c
	ldr r0, _0219C73C ; =0x00000748
	ldr r0, [r4, r0]
	bl sub_0203A7F4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0219C734: .word 0x000004FC
_0219C738: .word 0x00000834
_0219C73C: .word 0x00000748
	thumb_func_end ovy142_219c6b4

	thumb_func_start ovy142_219c740
ovy142_219c740: ; 0x0219C740
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02027ACC
	cmp r0, #1
	beq _0219C758
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219C758:
	mov r4, #0x51
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_02021C0C
	cmp r0, #0
	bne _0219C76C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0219C76C:
	ldr r0, _0219C8B8 ; =0x000006A8
	str r0, [sp, #4]
	ldr r0, [r5, r0]
	bl sub_0203A6A8
	ldr r6, _0219C8BC ; =0x000008C8
	add r0, r5, r6
	bl sub_021A046C
	add r1, r6, #0
	sub r1, #0x9c
	ldr r1, [r5, r1]
	ldr r0, [r5, #0x14]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020088A4
	add r3, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	sub r3, #0x94
	sub r1, #0x9c
	sub r2, #0x98
	ldr r3, [r5, r3]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r3, r3, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	ldr r0, [r5, #0x14]
	lsr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_02008894
	add r0, r6, #0
	sub r0, #0xc8
	ldr r0, [r5, r0]
	bl sub_0202E1DC
	add r0, r5, #0
	bl ovy142_219e168
	add r0, r5, #0
	bl ovy142_219dd14
	ldr r0, [sp, #4]
	add r0, #0xa0
	str r0, [sp, #4]
	ldr r0, [r5, r0]
	bl sub_0203A83C
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	bl sub_020487D4
	add r0, r4, #0
	add r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_02048564
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	bl sub_02024274
	add r0, r5, #0
	bl ovy142_219f8c4
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219C834
	sub r6, #0x3c
	ldr r2, [r5, r6]
	mov r0, #3
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	sub r4, #0x10
	ldr r0, [r5, r4]
	bl sub_02048210
_0219C834:
	mov r0, #3
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r4, _0219C8C0 ; =0x00000534
	ldr r0, [r5, r4]
	bl sub_02022DA8
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0202E818
	add r0, r4, #0
	sub r0, #0x24
	ldr r0, [r5, r0]
	bl sub_02021C44
	sub r4, #0x24
	ldr r0, [r5, r4]
	bl sub_02021A18
	add r0, r5, #0
	bl ovy142_219cc60
	add r0, r5, #0
	bl sub_0219C948
	ldr r0, _0219C8C4 ; =0x000006A4
	ldr r0, [r5, r0]
	bl sub_020504DC
	bl sub_020480A8
	bl sub_02044528
	ldr r4, _0219C8C8 ; =0x00000898
	ldr r3, _0219C8CC ; =0x00001F50
	ldr r2, [r5, r4]
	add r0, r4, #0
	str r2, [r7, #0x44]
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r7, #0x38]
	str r0, [r7, #0x48]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, r3]
	bl ovy142_219d46c
	add r0, r4, #0
	add r0, #0x28
	add r4, #0x2c
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	bl sub_0203DEB4
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0xe
	bl sub_0203A1D0
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219C8B8: .word 0x000006A8
_0219C8BC: .word 0x000008C8
_0219C8C0: .word 0x00000534
_0219C8C4: .word 0x000006A4
_0219C8C8: .word 0x00000898
_0219C8CC: .word 0x00001F50
	thumb_func_end ovy142_219c740

	thumb_func_start ovy142_219c8d0
ovy142_219c8d0: ; 0x0219C8D0
	push {r3, lr}
	ldr r1, _0219C8E4 ; =ovy142_219a850
	bl sub_021998C0
	mov r0, #3
	mov r1, #6
	bl sub_0203DEB4
	pop {r3, pc}
	nop
_0219C8E4: .word ovy142_219a850
	thumb_func_end ovy142_219c8d0

	thumb_func_start ovy142_219c8e8
ovy142_219c8e8: ; 0x0219C8E8
	push {r3, lr}
	ldr r1, _0219C8FC ; =ovy142_2199ecc
	bl sub_021998C0
	mov r0, #3
	mov r1, #6
	bl sub_0203DEB4
	pop {r3, pc}
	nop
_0219C8FC: .word ovy142_2199ecc
	thumb_func_end ovy142_219c8e8

	thumb_func_start ovy142_219c900
ovy142_219c900: ; 0x0219C900
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0219C93C ; =0x0000054C
	add r5, r0, #0
	ldrh r3, [r5, r4]
	ldr r2, _0219C940 ; =0x0000FFFE
	mov r0, #0x10
	mov r1, #0x10
	bl sub_02035024
	ldr r6, _0219C944 ; =0x000008A4
	str r0, [r5, r6]
	ldrh r1, [r5, r4]
	mov r0, #0x57
	bl sub_0204AA30
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, r6]
	add r1, r4, #0
	mov r2, #0x15
	mov r3, #0x10
	bl sub_02035104
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0219C93C: .word 0x0000054C
_0219C940: .word 0x0000FFFE
_0219C944: .word 0x000008A4
	thumb_func_end ovy142_219c900

	thumb_func_start sub_0219C948
sub_0219C948: ; 0x0219C948
	ldr r1, _0219C950 ; =0x000008A4
	ldr r3, _0219C954 ; =sub_02035178
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_0219C950: .word 0x000008A4
_0219C954: .word sub_02035178
	thumb_func_end sub_0219C948

	thumb_func_start ovy142_219c958
ovy142_219c958: ; 0x0219C958
	push {r3, r4, r5, lr}
	ldr r5, _0219C9EC ; =0x000008B8
	add r4, r0, #0
	ldrh r1, [r4, r5]
	cmp r1, #7
	bhi _0219C9E8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219C970: ; jump table
	.short _0219C980 - _0219C970 - 2 ; case 0
	.short _0219C998 - _0219C970 - 2 ; case 1
	.short _0219C9B6 - _0219C970 - 2 ; case 2
	.short _0219C986 - _0219C970 - 2 ; case 3
	.short _0219C998 - _0219C970 - 2 ; case 4
	.short _0219C9B6 - _0219C970 - 2 ; case 5
	.short _0219C998 - _0219C970 - 2 ; case 6
	.short _0219C9C4 - _0219C970 - 2 ; case 7
_0219C980:
	ldr r0, _0219C9F0 ; =0x0000054C
	bl sub_02006254
_0219C986:
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219fd4c
	ldr r0, _0219C9EC ; =0x000008B8
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0219C998:
	add r0, r5, #2
	ldrh r0, [r4, r0]
	add r1, r0, #1
	add r0, r5, #2
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #4
	bne _0219C9E8
	mov r1, #0
	add r0, r5, #2
	strh r1, [r4, r0]
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
	pop {r3, r4, r5, pc}
_0219C9B6:
	mov r1, #2
	bl ovy142_219fd4c
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
	pop {r3, r4, r5, pc}
_0219C9C4:
	mov r1, #0
	strh r1, [r4, r5]
	mov r1, #1
	bl ovy142_219fd4c
	add r0, r5, #0
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl sub_020352B0
	sub r5, #0x14
	ldr r0, [r4, r5]
	bl sub_02035198
	ldr r1, _0219C9F4 ; =ovy142_219a724
	add r0, r4, #0
	bl sub_021998C0
_0219C9E8:
	pop {r3, r4, r5, pc}
	nop
_0219C9EC: .word 0x000008B8
_0219C9F0: .word 0x0000054C
_0219C9F4: .word ovy142_219a724
	thumb_func_end ovy142_219c958

	thumb_func_start ovy142_219c9f8
ovy142_219c9f8: ; 0x0219C9F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp]
	cmp r4, #4
	bne _0219CA0E
	ldr r0, _0219CA78 ; =0x00000551
	bl sub_02006254
	mov r6, #9
	b _0219CA36
_0219CA0E:
	cmp r4, #3
	bne _0219CA1C
	ldr r0, _0219CA7C ; =0x00000556
	bl sub_02006254
	mov r6, #8
	b _0219CA36
_0219CA1C:
	cmp r4, #1
	bne _0219CA2A
	ldr r0, _0219CA80 ; =0x000007D8
	bl sub_02006254
	mov r6, #0xd
	b _0219CA36
_0219CA2A:
	cmp r4, #0
	bne _0219CA36
	ldr r0, _0219CA80 ; =0x000007D8
	bl sub_02006254
	mov r6, #0xc
_0219CA36:
	ldr r7, _0219CA84 ; =0x000008B8
	mov r1, #0
	strh r4, [r5, r7]
	ldrh r0, [r5, r7]
	ldr r4, _0219CA88 ; =0x00000724
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C4D4
	ldrh r0, [r5, r7]
	lsl r1, r6, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C488
	ldrh r0, [r5, r7]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C520
	ldr r0, [sp]
	add r1, r7, #4
	str r0, [r5, r1]
	ldr r1, _0219CA8C ; =ovy142_219ca90
	add r0, r5, #0
	bl sub_021998C0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CA78: .word 0x00000551
_0219CA7C: .word 0x00000556
_0219CA80: .word 0x000007D8
_0219CA84: .word 0x000008B8
_0219CA88: .word 0x00000724
_0219CA8C: .word ovy142_219ca90
	thumb_func_end ovy142_219c9f8

	thumb_func_start ovy142_219ca90
ovy142_219ca90: ; 0x0219CA90
	push {r3, r4, r5, lr}
	ldr r5, _0219CAB8 ; =0x000008B8
	add r4, r0, #0
	ldrh r0, [r4, r5]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0219CABC ; =0x00000724
	ldr r0, [r1, r0]
	bl sub_0204C560
	cmp r0, #0
	bne _0219CAB6
	mov r0, #0
	strh r0, [r4, r5]
	add r1, r5, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_021998C0
_0219CAB6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CAB8: .word 0x000008B8
_0219CABC: .word 0x00000724
	thumb_func_end ovy142_219ca90

	thumb_func_start ovy142_219cac0
ovy142_219cac0: ; 0x0219CAC0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0219CB50 ; =0x0000082C
	add r5, r0, #0
	add r4, r2, #0
	ldr r2, [r5, r6]
	str r3, [sp]
	bl ovy142_2199a5c
	add r0, r5, #0
	bl ovy142_219bd84
	add r0, r5, #0
	bl ovy142_219becc
	add r0, r6, #0
	ldr r1, _0219CB54 ; =0x0000FFFF
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r5, #0
	bl ovy142_21998f4
	cmp r4, #1
	bne _0219CAFA
	sub r6, #0x54
	add r0, r6, #0
	bl sub_02006254
	mov r7, #0xd
	b _0219CB08
_0219CAFA:
	cmp r4, #0
	bne _0219CB08
	sub r6, #0x54
	add r0, r6, #0
	bl sub_02006254
	mov r7, #0xc
_0219CB08:
	ldr r6, _0219CB58 ; =0x000008B8
	mov r1, #6
	strh r4, [r5, r6]
	add r0, r6, #2
	strh r1, [r5, r0]
	ldrh r0, [r5, r6]
	ldr r4, _0219CB5C ; =0x00000724
	mov r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C4D4
	ldrh r0, [r5, r6]
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C488
	ldrh r0, [r5, r6]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C520
	ldr r0, [sp]
	add r1, r6, #4
	str r0, [r5, r1]
	ldr r1, _0219CB60 ; =ovy142_219cb64
	add r0, r5, #0
	bl sub_021998C0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219CB50: .word 0x0000082C
_0219CB54: .word 0x0000FFFF
_0219CB58: .word 0x000008B8
_0219CB5C: .word 0x00000724
_0219CB60: .word ovy142_219cb64
	thumb_func_end ovy142_219cac0

	thumb_func_start ovy142_219cb64
ovy142_219cb64: ; 0x0219CB64
	push {r3, lr}
	ldr r2, _0219CB84 ; =0x000008BA
	ldrh r1, [r0, r2]
	cmp r1, #0
	bne _0219CB7E
	mov r3, #0
	sub r1, r2, #2
	strh r3, [r0, r1]
	add r1, r2, #2
	ldr r1, [r0, r1]
	bl sub_021998C0
	pop {r3, pc}
_0219CB7E:
	sub r1, r1, #1
	strh r1, [r0, r2]
	pop {r3, pc}
	.align 2, 0
_0219CB84: .word 0x000008BA
	thumb_func_end ovy142_219cb64

	thumb_func_start ovy142_219cb88
ovy142_219cb88: ; 0x0219CB88
	push {r4, lr}
	ldr r0, _0219CBA4 ; =0x021A0904
	bl sub_0203DA0C
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0219CBA0
	mov r0, #1
	bl sub_0203D564
_0219CBA0:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0219CBA4: .word 0x021A0904
	thumb_func_end ovy142_219cb88

	thumb_func_start ovy142_219cba8
ovy142_219cba8: ; 0x0219CBA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy142_219b46c
	ldr r0, _0219CBE0 ; =0x000006B8
	mov r1, #1
	ldr r0, [r4, r0]
	mov r5, #1
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #1
	bl ovy142_219fda8
	bl sub_0203D554
	cmp r0, #0
	beq _0219CBCE
	mov r5, #0
_0219CBCE:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy142_219bda4
	add r0, r4, #0
	bl ovy142_219c8d0
	pop {r3, r4, r5, pc}
	nop
_0219CBE0: .word 0x000006B8
	thumb_func_end ovy142_219cba8

	thumb_func_start ovy142_219cbe4
ovy142_219cbe4: ; 0x0219CBE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy142_219b46c
	ldr r0, _0219CC1C ; =0x000006B8
	mov r1, #1
	ldr r0, [r4, r0]
	mov r5, #1
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #1
	bl ovy142_219fda8
	bl sub_0203D554
	cmp r0, #0
	beq _0219CC0A
	mov r5, #0
_0219CC0A:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy142_219bda4
	ldr r1, _0219CC20 ; =ovy142_219b2f0
	add r0, r4, #0
	bl sub_021998C0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219CC1C: .word 0x000006B8
_0219CC20: .word ovy142_219b2f0
	thumb_func_end ovy142_219cbe4

	thumb_func_start ovy142_219cc24
ovy142_219cc24: ; 0x0219CC24
	push {r4, r5, r6, lr}
	ldr r6, _0219CC58 ; =0x0000054C
	add r5, r0, #0
	ldrh r0, [r5, r6]
	bl sub_02026DC0
	ldr r4, _0219CC5C ; =0x000008A8
	mov r1, #2
	str r0, [r5, r4]
	ldrh r3, [r5, r6]
	lsl r2, r1, #8
	bl sub_02026E04
	ldrh r3, [r5, r6]
	ldr r0, [r5, r4]
	mov r1, #0
	mov r2, #0x20
	bl sub_02026E04
	ldr r0, [r5, r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0x20
	bl sub_02026F7C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219CC58: .word 0x0000054C
_0219CC5C: .word 0x000008A8
	thumb_func_end ovy142_219cc24

	thumb_func_start ovy142_219cc60
ovy142_219cc60: ; 0x0219CC60
	push {r3, r4, r5, lr}
	ldr r4, _0219CC80 ; =0x000008A8
	add r5, r0, #0
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_02026E48
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_02026E48
	ldr r0, [r5, r4]
	bl sub_02026DE8
	pop {r3, r4, r5, pc}
	nop
_0219CC80: .word 0x000008A8
	thumb_func_end ovy142_219cc60

	thumb_func_start ovy142_219cc84
ovy142_219cc84: ; 0x0219CC84
	push {r3, r4, r5, lr}
	ldr r5, _0219CCD8 ; =0x00000744
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0204C560
	cmp r0, #0
	bne _0219CCD4
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C488
	sub r5, #0x8c
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C520
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	mov r1, #0x97
	bl sub_02048838
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219f6a4
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219fda8
	add r0, r4, #0
	bl ovy142_219cce0
	ldr r1, _0219CCDC ; =ovy142_219cd98
	add r0, r4, #0
	bl sub_021998C0
_0219CCD4:
	pop {r3, r4, r5, pc}
	nop
_0219CCD8: .word 0x00000744
_0219CCDC: .word ovy142_219cd98
	thumb_func_end ovy142_219cc84

	thumb_func_start ovy142_219cce0
ovy142_219cce0: ; 0x0219CCE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r3, _0219CD4C ; =0x021A0934
	add r2, sp, #0x1c
	add r4, r0, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _0219CD50 ; =0x021A08E0
	add r0, sp, #0
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r1, [r1, #4]
	strb r1, [r0, #4]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_0219CD58
	mov r6, #0
	mov r2, #0
_0219CD1C:
	add r0, sp, #0
	ldrb r5, [r0, r6]
	cmp r5, #0xff
	beq _0219CD3A
	lsl r3, r2, #2
	ldr r0, _0219CD54 ; =0x0000085C
	add r1, r4, r3
	str r5, [r1, r0]
	add r0, sp, #0
	ldrb r0, [r0, r6]
	add r2, r2, #1
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	add r0, sp, #8
	str r1, [r0, r3]
_0219CD3A:
	add r6, r6, #1
	cmp r6, #5
	blt _0219CD1C
	add r0, r4, #0
	add r1, sp, #8
	bl ovy142_219f1a0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219CD4C: .word 0x021A0934
_0219CD50: .word 0x021A08E0
_0219CD54: .word 0x0000085C
	thumb_func_end ovy142_219cce0

	thumb_func_start sub_0219CD58
sub_0219CD58: ; 0x0219CD58
	ldr r2, _0219CD94 ; =0x0000082C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _0219CD6A
	cmp r2, #1
	beq _0219CD6A
	sub r2, r2, #3
	cmp r2, #1
	bhi _0219CD6E
_0219CD6A:
	mov r2, #0
	b _0219CD70
_0219CD6E:
	mov r2, #1
_0219CD70:
	strb r2, [r1]
	ldr r2, _0219CD94 ; =0x0000082C
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _0219CD82
	cmp r0, #1
	beq _0219CD82
	cmp r0, #3
	bne _0219CD8A
_0219CD82:
	mov r0, #3
	strb r0, [r1, #2]
	mov r0, #4
	strb r0, [r1, #3]
_0219CD8A:
	mov r0, #2
	strb r0, [r1, #1]
	mov r0, #5
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_0219CD94: .word 0x0000082C
	thumb_func_end sub_0219CD58

	thumb_func_start ovy142_219cd98
ovy142_219cd98: ; 0x0219CD98
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r5, #0
	bl ovy142_219f7a4
	cmp r0, #0
	beq _0219CE90
	ldr r6, _0219CE94 ; =0x0000079C
	ldr r0, [r4, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219CE7A
	ldr r0, [r4, r6]
	bl sub_0202DC00
	lsl r0, r0, #2
	add r0, r4, r0
	add r6, #0xc0
	ldr r1, [r0, r6]
	ldr r0, _0219CE98 ; =0x0000089C
	cmp r1, #5
	str r1, [r4, r0]
	bhi _0219CE7A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CDD4: ; jump table
	.short _0219CDE0 - _0219CDD4 - 2 ; case 0
	.short _0219CDFA - _0219CDD4 - 2 ; case 1
	.short _0219CE14 - _0219CDD4 - 2 ; case 2
	.short _0219CE20 - _0219CDD4 - 2 ; case 3
	.short _0219CE2C - _0219CDD4 - 2 ; case 4
	.short _0219CE38 - _0219CDD4 - 2 ; case 5
_0219CDE0:
	ldr r0, _0219CE9C ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	add r1, r5, #0
_0219CDEA:
	bl ovy142_219bcd8
	ldr r1, _0219CEA0 ; =ovy142_219cea8
	add r0, r4, #0
	bl sub_021998C0
	mov r5, #1
	b _0219CE7A
_0219CDFA:
	ldr r0, _0219CE9C ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy142_219bcd8
	ldr r1, _0219CEA0 ; =ovy142_219cea8
	add r0, r4, #0
	bl sub_021998C0
	b _0219CE7A
_0219CE14:
	ldr r0, _0219CE9C ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #2
	b _0219CDEA
_0219CE20:
	ldr r0, _0219CE9C ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #3
	b _0219CDEA
_0219CE2C:
	ldr r0, _0219CE9C ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #4
	b _0219CDEA
_0219CE38:
	bl sub_0203D554
	cmp r0, #1
	bne _0219CE48
	add r0, r4, #0
	bl ovy142_219e120
	b _0219CE4E
_0219CE48:
	add r0, r4, #0
	bl ovy142_219de0c
_0219CE4E:
	bl sub_0203D554
	mov r1, #1
	cmp r0, #0
	beq _0219CE5A
	mov r1, #0
_0219CE5A:
	add r0, r4, #0
	bl ovy142_219bda4
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy142_219fda8
	ldr r0, _0219CEA4 ; =0x000006B8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C520
	add r0, r4, #0
	bl ovy142_219c8d0
_0219CE7A:
	cmp r5, #0
	beq _0219CE90
	add r0, r4, #0
	bl sub_0219F0AC
	ldr r5, _0219CE94 ; =0x0000079C
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
_0219CE90:
	pop {r4, r5, r6, pc}
	nop
_0219CE94: .word 0x0000079C
_0219CE98: .word 0x0000089C
_0219CE9C: .word 0x00000663
_0219CEA0: .word ovy142_219cea8
_0219CEA4: .word 0x000006B8
	thumb_func_end ovy142_219cd98

	thumb_func_start ovy142_219cea8
ovy142_219cea8: ; 0x0219CEA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0219CF20 ; =0x00001F4C
	ldr r0, [r4, r0]
	cmp r0, #4
	bhi _0219CEFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CEC0: ; jump table
	.short _0219CECA - _0219CEC0 - 2 ; case 0
	.short _0219CED4 - _0219CEC0 - 2 ; case 1
	.short _0219CEDE - _0219CEC0 - 2 ; case 2
	.short _0219CEE8 - _0219CEC0 - 2 ; case 3
	.short _0219CEF2 - _0219CEC0 - 2 ; case 4
_0219CECA:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x8c
	b _0219CF04
_0219CED4:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x9e
	b _0219CF04
_0219CEDE:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x8d
	b _0219CF04
_0219CEE8:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x8e
	b _0219CF04
_0219CEF2:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x8f
	b _0219CF04
_0219CEFC:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x97
_0219CF04:
	add r2, #0xc
	ldr r2, [r4, r2]
	bl sub_02048838
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219f6a4
	ldr r1, _0219CF24 ; =ovy142_219d3d8
	add r0, r4, #0
	bl sub_021998C0
	pop {r4, pc}
	nop
_0219CF20: .word 0x00001F4C
_0219CF24: .word ovy142_219d3d8
	thumb_func_end ovy142_219cea8

	thumb_func_start ovy142_219cf28
ovy142_219cf28: ; 0x0219CF28
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0219D0C0 ; =0x00001F50
	ldr r0, [r4, r0]
	cmp r0, #5
	bls _0219CF38
	b _0219D09A
_0219CF38:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219CF44: ; jump table
	.short _0219CF50 - _0219CF44 - 2 ; case 0
	.short _0219CF7E - _0219CF44 - 2 ; case 1
	.short _0219CFC8 - _0219CF44 - 2 ; case 2
	.short _0219CFFE - _0219CF44 - 2 ; case 3
	.short _0219D032 - _0219CF44 - 2 ; case 4
	.short _0219D066 - _0219CF44 - 2 ; case 5
_0219CF50:
	mov r5, #0x52
	lsl r5, r5, #4
	add r2, r5, #0
	add r2, #8
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #0x9d
	bl sub_02048838
	add r0, r4, #0
	bl ovy142_2199988
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0202451C
	b _0219CFB4
_0219CF7E:
	mov r5, #0x52
	lsl r5, r5, #4
	add r2, r5, #0
	add r2, #8
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #0x94
	bl sub_02048838
	add r0, r4, #0
	bl ovy142_2199988
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
_0219CFB0:
	bl sub_021999C8
_0219CFB4:
	add r1, r5, #0
	add r0, r5, #4
	add r1, #0xc
	add r5, #8
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r5]
	bl sub_02024920
	b _0219D0AA
_0219CFC8:
	mov r5, #0x52
	lsl r5, r5, #4
	add r2, r5, #0
	add r2, #8
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #0x94
	bl sub_02048838
	add r0, r4, #0
	bl ovy142_2199988
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r3, #3
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	b _0219CFB0
_0219CFFE:
	mov r5, #0x52
	lsl r5, r5, #4
	add r2, r5, #0
	add r2, #8
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #0x94
	bl sub_02048838
	add r0, r4, #0
	bl ovy142_2199988
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	b _0219CFB0
_0219D032:
	mov r5, #0x52
	lsl r5, r5, #4
	add r2, r5, #0
	add r2, #8
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #0x94
	bl sub_02048838
	add r0, r4, #0
	bl ovy142_2199988
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	b _0219CFB0
_0219D066:
	mov r5, #0x52
	lsl r5, r5, #4
	add r2, r5, #0
	add r2, #8
	ldr r0, [r4, r5]
	ldr r2, [r4, r2]
	mov r1, #0x94
	bl sub_02048838
	add r0, r4, #0
	bl ovy142_2199988
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r3, #3
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	b _0219CFB0
_0219D09A:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	mov r1, #0x97
	bl sub_02048838
_0219D0AA:
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219f6a4
	ldr r1, _0219D0C4 ; =ovy142_219d3d8
	add r0, r4, #0
	bl sub_021998C0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219D0C0: .word 0x00001F50
_0219D0C4: .word ovy142_219d3d8
	thumb_func_end ovy142_219cf28

	thumb_func_start ovy142_219d0c8
ovy142_219d0c8: ; 0x0219D0C8
	push {r3, r4, r5, lr}
	mov r5, #0x1d
	add r4, r0, #0
	lsl r5, r5, #6
	ldr r0, [r4, r5]
	bl sub_0204C560
	cmp r0, #0
	bne _0219D11A
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_0204C488
	sub r5, #0x88
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C520
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	mov r1, #0x93
	bl sub_02048838
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219f6a4
	add r0, r4, #0
	mov r1, #0
	bl ovy142_219fda8
	add r0, r4, #0
	bl ovy142_219d120
	ldr r1, _0219D11C ; =ovy142_219d2bc
	add r0, r4, #0
	bl sub_021998C0
_0219D11A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D11C: .word ovy142_219d2bc
	thumb_func_end ovy142_219d0c8

	thumb_func_start ovy142_219d120
ovy142_219d120: ; 0x0219D120
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, _0219D180 ; =0x021A08F0
	add r5, r0, #0
	add r2, sp, #0
	mov r1, #7
_0219D12C:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0219D12C
	add r6, sp, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy142_219d188
	mov r2, #0x87
	mov r1, #0
	mov r4, #0
	lsl r2, r2, #4
_0219D14A:
	ldrb r0, [r6, r1]
	cmp r0, #0xff
	beq _0219D158
	lsl r3, r4, #2
	add r3, r5, r3
	str r0, [r3, r2]
	add r4, r4, #1
_0219D158:
	add r1, r1, #1
	cmp r1, #7
	blt _0219D14A
	ldr r0, _0219D184 ; =0x00000794
	ldr r6, [r5, r0]
	add r0, r6, #0
	bl sub_020484B4
	add r0, r6, #0
	bl sub_020484D4
	bl sub_02044F90
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ovy142_219f284
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D180: .word 0x021A08F0
_0219D184: .word 0x00000794
	thumb_func_end ovy142_219d120

	thumb_func_start ovy142_219d188
ovy142_219d188: ; 0x0219D188
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0219D224 ; =0x00001F50
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D19A
	mov r0, #5
	strb r0, [r4]
_0219D19A:
	ldr r0, _0219D224 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _0219D1B4
	ldr r0, _0219D228 ; =0x000008C8
	mov r1, #0
	add r0, r5, r0
	mov r6, #0
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D1B4
	strb r6, [r4, #1]
_0219D1B4:
	ldr r0, _0219D224 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #2
	beq _0219D1CE
	ldr r0, _0219D228 ; =0x000008C8
	mov r1, #1
	add r0, r5, r0
	mov r6, #1
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D1CE
	strb r6, [r4, #2]
_0219D1CE:
	ldr r0, _0219D224 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #3
	beq _0219D1E8
	ldr r0, _0219D228 ; =0x000008C8
	mov r1, #2
	add r0, r5, r0
	mov r6, #2
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D1E8
	strb r6, [r4, #3]
_0219D1E8:
	ldr r0, _0219D224 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #4
	beq _0219D202
	ldr r0, _0219D228 ; =0x000008C8
	mov r1, #3
	add r0, r5, r0
	mov r6, #3
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D202
	strb r6, [r4, #4]
_0219D202:
	ldr r0, _0219D224 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #5
	beq _0219D21C
	ldr r0, _0219D228 ; =0x000008C8
	mov r1, #4
	add r0, r5, r0
	mov r5, #4
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D21C
	strb r5, [r4, #5]
_0219D21C:
	mov r0, #6
	strb r0, [r4, #6]
	pop {r4, r5, r6, pc}
	nop
_0219D224: .word 0x00001F50
_0219D228: .word 0x000008C8
	thumb_func_end ovy142_219d188

	thumb_func_start ovy142_219d22c
ovy142_219d22c: ; 0x0219D22C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0219D2B4 ; =0x00001F50
	mov r4, #1
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219D23C
	add r4, r4, #1
_0219D23C:
	cmp r0, #1
	beq _0219D250
	ldr r0, _0219D2B8 ; =0x000008C8
	mov r1, #0
	add r0, r5, r0
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D250
	add r4, r4, #1
_0219D250:
	ldr r0, _0219D2B4 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #2
	beq _0219D268
	ldr r0, _0219D2B8 ; =0x000008C8
	mov r1, #1
	add r0, r5, r0
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D268
	add r4, r4, #1
_0219D268:
	ldr r0, _0219D2B4 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #3
	beq _0219D280
	ldr r0, _0219D2B8 ; =0x000008C8
	mov r1, #2
	add r0, r5, r0
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D280
	add r4, r4, #1
_0219D280:
	ldr r0, _0219D2B4 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #4
	beq _0219D298
	ldr r0, _0219D2B8 ; =0x000008C8
	mov r1, #3
	add r0, r5, r0
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D298
	add r4, r4, #1
_0219D298:
	ldr r0, _0219D2B4 ; =0x00001F50
	ldr r0, [r5, r0]
	cmp r0, #5
	beq _0219D2B0
	ldr r0, _0219D2B8 ; =0x000008C8
	mov r1, #4
	add r0, r5, r0
	bl ovy142_21a0610
	cmp r0, #0
	ble _0219D2B0
	add r4, r4, #1
_0219D2B0:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219D2B4: .word 0x00001F50
_0219D2B8: .word 0x000008C8
	thumb_func_end ovy142_219d22c

	thumb_func_start ovy142_219d2bc
ovy142_219d2bc: ; 0x0219D2BC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r5, #0
	bl ovy142_219f7a4
	cmp r0, #0
	beq _0219D3C2
	ldr r6, _0219D3C4 ; =0x0000079C
	ldr r0, [r4, r6]
	bl sub_0202DBE4
	cmp r0, #0
	beq _0219D3AC
	ldr r0, [r4, r6]
	bl sub_0202DC00
	lsl r0, r0, #2
	add r0, r4, r0
	add r6, #0xd4
	ldr r1, [r0, r6]
	ldr r0, _0219D3C8 ; =0x0000089C
	cmp r1, #6
	str r1, [r4, r0]
	bhi _0219D3AC
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0219D2F8: ; jump table
	.short _0219D320 - _0219D2F8 - 2 ; case 0
	.short _0219D33A - _0219D2F8 - 2 ; case 1
	.short _0219D346 - _0219D2F8 - 2 ; case 2
	.short _0219D352 - _0219D2F8 - 2 ; case 3
	.short _0219D35E - _0219D2F8 - 2 ; case 4
	.short _0219D306 - _0219D2F8 - 2 ; case 5
	.short _0219D36A - _0219D2F8 - 2 ; case 6
_0219D306:
	ldr r0, _0219D3CC ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	add r1, r5, #0
_0219D310:
	bl ovy142_219bd2c
	ldr r1, _0219D3D0 ; =ovy142_219cf28
	add r0, r4, #0
	bl sub_021998C0
	mov r5, #1
	b _0219D3AC
_0219D320:
	ldr r0, _0219D3CC ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy142_219bd2c
	ldr r1, _0219D3D0 ; =ovy142_219cf28
	add r0, r4, #0
	bl sub_021998C0
	b _0219D3AC
_0219D33A:
	ldr r0, _0219D3CC ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #2
	b _0219D310
_0219D346:
	ldr r0, _0219D3CC ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #3
	b _0219D310
_0219D352:
	ldr r0, _0219D3CC ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #4
	b _0219D310
_0219D35E:
	ldr r0, _0219D3CC ; =0x00000663
	bl sub_02006254
	add r0, r4, #0
	mov r1, #5
	b _0219D310
_0219D36A:
	bl sub_0203D554
	cmp r0, #1
	bne _0219D37A
	add r0, r4, #0
	bl ovy142_219e120
	b _0219D380
_0219D37A:
	add r0, r4, #0
	bl ovy142_219de0c
_0219D380:
	bl sub_0203D554
	mov r1, #1
	cmp r0, #0
	beq _0219D38C
	mov r1, #0
_0219D38C:
	add r0, r4, #0
	bl ovy142_219bda4
	add r0, r4, #0
	mov r1, #1
	mov r5, #1
	bl ovy142_219fda8
	ldr r0, _0219D3D4 ; =0x000006B8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C520
	add r0, r4, #0
	bl ovy142_219c8d0
_0219D3AC:
	cmp r5, #0
	beq _0219D3C2
	add r0, r4, #0
	bl sub_0219F0AC
	ldr r5, _0219D3C4 ; =0x0000079C
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
_0219D3C2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219D3C4: .word 0x0000079C
_0219D3C8: .word 0x0000089C
_0219D3CC: .word 0x00000663
_0219D3D0: .word ovy142_219cf28
_0219D3D4: .word 0x000006B8
	thumb_func_end ovy142_219d2bc

	thumb_func_start ovy142_219d3d8
ovy142_219d3d8: ; 0x0219D3D8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	beq _0219D3EC
	add r0, r4, #0
	mov r1, #1
	b _0219D3F8
_0219D3EC:
	bl sub_0203DA48
	cmp r0, #0
	beq _0219D42C
	add r0, r4, #0
	mov r1, #0
_0219D3F8:
	bl ovy142_219bda4
	ldr r1, _0219D430 ; =0x0000FFFF
	ldr r0, _0219D434 ; =0x00000838
	str r1, [r4, r0]
	add r0, r4, #0
	bl ovy142_219ed3c
	add r0, r4, #0
	bl ovy142_21998f4
	add r0, r4, #0
	bl sub_0219F0AC
	ldr r0, _0219D438 ; =0x000006B8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #1
	bl ovy142_219fda8
	add r0, r4, #0
	bl ovy142_219c8d0
_0219D42C:
	pop {r4, pc}
	nop
_0219D430: .word 0x0000FFFF
_0219D434: .word 0x00000838
_0219D438: .word 0x000006B8
	thumb_func_end ovy142_219d3d8

	thumb_func_start ovy142_219d43c
ovy142_219d43c: ; 0x0219D43C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r0, #0x10]
	cmp r1, #3
	beq _0219D44A
	cmp r1, #1
	bne _0219D44E
_0219D44A:
	mov r0, #0
	pop {r4, pc}
_0219D44E:
	ldr r0, [r0]
	bl sub_020175E4
	cmp r0, #1
	bne _0219D460
	cmp r4, #4
	bne _0219D460
	mov r0, #0
	pop {r4, pc}
_0219D460:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ovy142_219d43c
_0219D464:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xD1, 0xC8, 0x19, 0x02

	thumb_func_start ovy142_219d46c
ovy142_219d46c: ; 0x0219D46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	ldr r6, _0219D4BC ; =0x021A0A3C
	add r4, r0, #0
	add r7, r3, #0
	add r0, r2, #0
	add r5, sp, #0
	mov r3, #0x8a
_0219D47C:
	ldrb r2, [r6]
	add r6, r6, #1
	strb r2, [r5]
	add r5, r5, #1
	sub r3, r3, #1
	bne _0219D47C
	mov r2, #0x17
	mul r2, r1
	add r1, sp, #0
	add r1, r1, r2
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0219D4B6
	cmp r0, #1
	beq _0219D4A2
	cmp r0, #2
	beq _0219D4AE
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
_0219D4A2:
	add r0, r4, #0
	mov r1, #0
	bl sub_020088EC
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
_0219D4AE:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020088EC
_0219D4B6:
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0219D4BC: .word 0x021A0A3C
	thumb_func_end ovy142_219d46c

	thumb_func_start ovy142_219d4c0
ovy142_219d4c0: ; 0x0219D4C0
	push {r4, lr}
	sub sp, #0xe0
	ldr r2, _0219D640 ; =0x04000304
	ldr r0, _0219D644 ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r4, _0219D648 ; =0x021A1100
	add r3, sp, #0xc0
	and r0, r1
	strh r0, [r2]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045708
	mov r0, #0
	bl sub_02044F90
	mov r0, #0
	mov r1, #0
	bl sub_02044C98
	ldr r4, _0219D64C ; =0x021A10A0
	add r3, sp, #0xa0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	bl sub_02045708
	mov r0, #1
	bl sub_02044F90
	mov r0, #1
	mov r1, #0
	bl sub_02044C98
	ldr r4, _0219D650 ; =0x021A10C0
	add r3, sp, #0x80
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	bl sub_0204476C
	mov r0, #2
	bl sub_02045708
	mov r0, #2
	bl sub_02044F90
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	ldr r4, _0219D654 ; =0x021A10E0
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #3
	bl sub_02045708
	mov r0, #3
	bl sub_02044F90
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	ldr r4, _0219D658 ; =0x021A1080
	add r3, sp, #0x40
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #4
	bl sub_02044F90
	ldr r4, _0219D65C ; =0x021A1040
	add r3, sp, #0x20
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	ldr r4, _0219D660 ; =0x021A1060
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	mov r4, #6
	bl sub_0204476C
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	add r0, r4, #0
	bl sub_02045738
	add sp, #0xe0
	pop {r4, pc}
	.align 2, 0
_0219D640: .word 0x04000304
_0219D644: .word 0xFFFF7FFF
_0219D648: .word 0x021A1100
_0219D64C: .word 0x021A10A0
_0219D650: .word 0x021A10C0
_0219D654: .word 0x021A10E0
_0219D658: .word 0x021A1080
_0219D65C: .word 0x021A1040
_0219D660: .word 0x021A1060
	thumb_func_end ovy142_219d4c0

	thumb_func_start ovy142_219d664
ovy142_219d664: ; 0x0219D664
	push {r3, lr}
	mov r0, #0
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #5
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	pop {r3, pc}
	thumb_func_end ovy142_219d664

	thumb_func_start ovy142_219d6a0
ovy142_219d6a0: ; 0x0219D6A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	bl sub_02008BF0
	cmp r0, #0
	bne _0219D6BC
	mov r0, #4
	str r0, [sp, #0x10]
	mov r7, #3
	mov r6, #5
	b _0219D6C8
_0219D6BC:
	cmp r0, #1
	bne _0219D6C8
	mov r0, #1
	str r0, [sp, #0x10]
	mov r7, #0
	mov r6, #2
_0219D6C8:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _0219D71C ; =0x0000054C
	ldr r1, [sp, #0x10]
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0204B0D4
	mov r0, #0
	str r0, [sp]
	ldr r0, _0219D71C ; =0x0000054C
	add r1, r7, #0
	ldrh r0, [r5, r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0204AE3C
	ldr r1, _0219D720 ; =0x00000818
	mov r2, #0
	str r0, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0219D71C ; =0x0000054C
	add r1, r6, #0
	ldrh r0, [r5, r0]
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0219D71C: .word 0x0000054C
_0219D720: .word 0x00000818
	thumb_func_end ovy142_219d6a0

	thumb_func_start ovy142_219d724
ovy142_219d724: ; 0x0219D724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r6, r1, #0
	bl sub_02008BF0
	cmp r0, #0
	bne _0219D746
	mov r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r7, #0xd
	b _0219D758
_0219D746:
	cmp r0, #1
	bne _0219D758
	mov r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0xb
	str r0, [sp, #0x10]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r7, #9
_0219D758:
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	ldr r4, _0219D7A4 ; =0x0000054C
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	ldr r1, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0xc0
	bl sub_0204BBB8
	add r1, r4, #0
	add r1, #0x54
	str r0, [r5, r1]
	ldrh r0, [r5, r4]
	ldr r1, [sp, #0x10]
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r4, #0
	add r1, #0x58
	str r0, [r5, r1]
	ldrh r3, [r5, r4]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0204BDE0
	add r4, #0x5c
	str r0, [r5, r4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219D7A4: .word 0x0000054C
	thumb_func_end ovy142_219d724

	thumb_func_start ovy142_219d7a8
ovy142_219d7a8: ; 0x0219D7A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r4, r0, #0
	ldr r0, _0219DB30 ; =0x04000050
	mov r7, #0
	ldr r6, _0219DB34 ; =0x0000054C
	strh r7, [r0]
	ldrh r0, [r4, r6]
	bl sub_020444A4
	ldrh r0, [r4, r6]
	bl sub_02048080
	bl sub_020232D0
	ldr r5, _0219DB38 ; =0x021A1664
	add r0, r5, #0
	bl sub_02046C40
	ldrh r2, [r4, r6]
	ldr r0, _0219DB3C ; =0x021A0FFC
	add r1, r5, #0
	bl sub_0204B6A8
	ldr r5, _0219DB40 ; =0x021A1018
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	bl ovy142_219d4c0
	bl sub_020232D8
	ldrh r3, [r4, r6]
	mov r0, #3
	mov r1, #0xd
	mov r2, #0
	bl sub_02024D20
	ldr r1, _0219DB44 ; =0x0000088C
	str r0, [r4, r1]
	ldrh r1, [r4, r6]
	mov r0, #0x57
	bl sub_0204AA30
	str r7, [sp]
	ldrh r1, [r4, r6]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #8
	add r5, r0, #0
	bl sub_0204B0D4
	ldr r0, [r4, #8]
	bl sub_02008BF0
	cmp r0, #0
	bne _0219D84A
	str r7, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldrh r0, [r4, r6]
	mov r1, #8
	mov r2, #4
	str r0, [sp, #8]
	add r0, r5, #0
	mov r3, #0x20
	bl sub_0204B124
_0219D84A:
	mov r7, #0
	ldr r0, _0219DB34 ; =0x0000054C
	str r7, [sp]
	ldrh r0, [r4, r0]
	mov r1, #6
	mov r2, #4
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0
	bl sub_0204AE3C
	ldr r6, _0219DB48 ; =0x0000081C
	mov r1, #7
	str r0, [r4, r6]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, _0219DB34 ; =0x0000054C
	str r7, [sp, #8]
	ldrh r0, [r4, r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0204AFB0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy142_219d6a0
	ldr r0, _0219DB34 ; =0x0000054C
	str r7, [sp]
	ldrh r0, [r4, r0]
	mov r1, #0x11
	mov r2, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0
	bl sub_0204AE3C
	add r1, r6, #4
	add r6, #0x10
	str r0, [r4, r1]
	ldr r1, [r4, r6]
	cmp r1, #5
	bne _0219D8BE
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, _0219DB34 ; =0x0000054C
	str r7, [sp, #8]
	ldrh r0, [r4, r0]
	mov r1, #0x18
	str r0, [sp, #0xc]
	add r0, r5, #0
	b _0219D8D2
_0219D8BE:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, _0219DB34 ; =0x0000054C
	str r7, [sp, #8]
	ldrh r0, [r4, r0]
	mov r1, #0x17
	str r0, [sp, #0xc]
	add r0, r5, #0
_0219D8D2:
	mov r2, #5
	add r3, r7, #0
	bl sub_0204AFB0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy142_219d724
	mov r6, #0
	ldr r0, _0219DB34 ; =0x0000054C
	str r6, [sp]
	ldrh r0, [r4, r0]
	mov r1, #0x21
	mov r2, #3
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0
	bl sub_0204AE3C
	ldr r1, _0219DB4C ; =0x00000828
	mov r2, #0
	str r0, [r4, r1]
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _0219DB34 ; =0x0000054C
	mov r1, #0x22
	ldrh r0, [r4, r0]
	mov r3, #0x60
	mov r7, #0x60
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0204B0D4
	add r0, r5, #0
	bl sub_0204AB0C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _0219DB34 ; =0x0000054C
	mov r1, #5
	ldrh r0, [r4, r0]
	mov r2, #0
	lsl r3, r7, #2
	str r0, [sp, #4]
	mov r0, #0x17
	bl sub_0204B0B8
	ldr r2, _0219DB34 ; =0x0000054C
	mov r0, #0x36
	ldrh r2, [r4, r2]
	mov r1, #0
	bl sub_0204BF1C
	ldr r7, _0219DB50 ; =0x000006AC
	mov r1, #1
	str r0, [r4, r7]
	mov r0, #0x10
	bl sub_02046D84
	mov r0, #0x10
	mov r1, #1
	bl sub_02046CFC
	ldr r1, _0219DB34 ; =0x0000054C
	mov r0, #0x52
	ldrh r1, [r4, r1]
	bl sub_0204AA30
	mov r1, #0x20
	str r1, [sp]
	ldr r1, _0219DB34 ; =0x0000054C
	mov r3, #0x1b
	ldrh r1, [r4, r1]
	mov r2, #0
	add r3, #0xe5
	str r1, [sp, #4]
	mov r1, #0x1b
	add r5, r0, #0
	bl sub_0204B0D4
	ldr r0, _0219DB34 ; =0x0000054C
	str r6, [sp]
	ldrh r0, [r4, r0]
	mov r1, #0x1c
	mov r2, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0
	bl sub_0204AE3C
	ldr r1, _0219DB4C ; =0x00000828
	mov r2, #1
	sub r1, r1, #4
	str r0, [r4, r1]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	lsl r0, r0, #0xf
	add r0, r1, r0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, _0219DB34 ; =0x0000054C
	str r6, [sp, #8]
	ldrh r0, [r4, r0]
	mov r1, #0x1d
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0204AFB0
	mov r0, #1
	bl sub_02044F90
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _0219DB34 ; =0x0000054C
	mov r3, #0x16
	ldrh r0, [r4, r0]
	mov r1, #0x13
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsl r3, r3, #4
	bl sub_0204BBB8
	ldr r1, _0219DB34 ; =0x0000054C
	add r2, r6, #0
	add r1, #0x18
	str r0, [r4, r1]
	ldr r0, _0219DB34 ; =0x0000054C
	mov r1, #0x14
	ldrh r0, [r4, r0]
	add r3, r6, #0
	str r0, [sp]
	add r0, r5, #0
	bl sub_0204B81C
	ldr r1, _0219DB34 ; =0x0000054C
	ldr r3, _0219DB34 ; =0x0000054C
	add r1, #0x20
	str r0, [r4, r1]
	ldrh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0x17
	mov r2, #0x1a
	bl sub_0204BDE0
	ldr r1, _0219DB34 ; =0x0000054C
	add r2, r6, #0
	add r1, #0x30
	str r0, [r4, r1]
	ldr r0, _0219DB34 ; =0x0000054C
	mov r1, #0xaf
	ldrh r0, [r4, r0]
	add r3, r6, #0
	str r0, [sp]
	add r0, r5, #0
	bl sub_0204B81C
	ldr r1, _0219DB34 ; =0x0000054C
	ldr r3, _0219DB34 ; =0x0000054C
	add r1, #0x24
	str r0, [r4, r1]
	ldrh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0xad
	bl sub_0204BDE0
	mov r1, #0x16
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_0204AB0C
	add r0, r4, #0
	bl ovy142_219ed8c
	bl sub_0202D7E0
	ldr r1, _0219DB34 ; =0x0000054C
	ldrh r1, [r4, r1]
	bl sub_0204AA30
	str r0, [sp, #0x10]
	bl sub_0202D7E4
	add r1, r0, #0
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _0219DB34 ; =0x0000054C
	mov r2, #1
	ldrh r0, [r4, r0]
	mov r3, #0x80
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_0204BBB8
	add r1, r7, #0
	sub r1, #0xbc
	str r0, [r4, r1]
	mov r0, #2
	bl sub_0202D7F8
	add r5, r0, #0
	mov r0, #2
	bl sub_0202D7FC
	ldr r3, _0219DB34 ; =0x0000054C
	add r2, r0, #0
	ldrh r3, [r4, r3]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_0204BDE0
	add r1, r7, #0
	sub r1, #0xb8
	str r0, [r4, r1]
	add r5, r6, #0
	sub r7, #0xb4
_0219DA8E:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D80C
	add r1, r0, #0
	ldr r0, _0219DB34 ; =0x0000054C
	add r2, r5, #0
	ldrh r0, [r4, r0]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sp, #0x10]
	bl sub_0204B81C
	lsl r1, r6, #2
	add r1, r4, r1
	add r6, r6, #1
	str r0, [r1, r7]
	cmp r6, #3
	blo _0219DA8E
	ldr r6, _0219DB34 ; =0x0000054C
	mov r7, #0
	add r6, #0x60
_0219DABA:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7F4
	add r1, r0, #0
	ldr r0, _0219DB34 ; =0x0000054C
	add r2, r7, #0
	ldrh r0, [r4, r0]
	mov r3, #1
	str r0, [sp]
	ldr r0, [sp, #0x10]
	bl sub_0204B81C
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, r6]
	cmp r5, #0x11
	blo _0219DABA
	ldr r0, [sp, #0x10]
	bl sub_0204AB0C
	mov r0, #0x50
	add r1, sp, #0x48
	strh r0, [r1, #0x10]
	mov r0, #0xb8
	strh r0, [r1, #0x12]
	mov r0, #1
	strb r0, [r1, #0x16]
	strb r0, [r1, #0x17]
	ldr r0, _0219DB50 ; =0x000006AC
	strh r7, [r1, #0x14]
	str r0, [sp, #0x2c]
	sub r0, #0xb4
	str r0, [sp, #0x2c]
	ldr r0, _0219DB50 ; =0x000006AC
	mov r6, #0
	str r0, [sp, #0x28]
	sub r0, #0xbc
	str r0, [sp, #0x28]
	ldr r0, _0219DB50 ; =0x000006AC
	str r0, [sp, #0x24]
	sub r0, #0xb8
	str r0, [sp, #0x24]
	ldr r0, _0219DB50 ; =0x000006AC
	str r0, [sp, #0x20]
	add r0, #0x28
	str r0, [sp, #0x20]
	ldr r0, _0219DB50 ; =0x000006AC
	str r0, [sp, #0x1c]
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, _0219DB50 ; =0x000006AC
	str r0, [sp, #0x18]
	add r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, _0219DB50 ; =0x000006AC
	b _0219DB54
	nop
_0219DB30: .word 0x04000050
_0219DB34: .word 0x0000054C
_0219DB38: .word 0x021A1664
_0219DB3C: .word 0x021A0FFC
_0219DB40: .word 0x021A1018
_0219DB44: .word 0x0000088C
_0219DB48: .word 0x0000081C
_0219DB4C: .word 0x00000828
_0219DB50: .word 0x000006AC
_0219DB54:
	str r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
_0219DB5A:
	lsl r0, r7, #2
	add r5, r4, r0
	add r0, sp, #0x58
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0219DD0C ; =0x0000054C
	ldr r1, [sp, #0x2c]
	ldrh r0, [r4, r0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, _0219DD10 ; =0x000006AC
	ldr r1, [r5, r1]
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x20]
	str r0, [r5, r1]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D800
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #1
	ldr r0, [r5, r0]
	bl sub_0204C378
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0204C5C8
	add r7, r7, #1
	cmp r7, #3
	blo _0219DB5A
	mov r0, #0x52
	add r1, sp, #0x48
	strh r0, [r1, #8]
	mov r0, #0xa5
	strh r0, [r1, #0xa]
	mov r0, #1
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	ldr r0, _0219DD0C ; =0x0000054C
	ldr r7, _0219DD10 ; =0x000006AC
	str r0, [sp, #0x44]
	add r0, #0x60
	str r0, [sp, #0x44]
	ldr r0, _0219DD10 ; =0x000006AC
	strh r6, [r1, #0xc]
	str r0, [sp, #0x40]
	sub r0, #0xbc
	str r0, [sp, #0x40]
	ldr r0, _0219DD10 ; =0x000006AC
	add r7, #0x34
	str r0, [sp, #0x3c]
	sub r0, #0xb8
	str r0, [sp, #0x3c]
	ldr r0, _0219DD10 ; =0x000006AC
	str r0, [sp, #0x38]
	add r0, #0x34
	str r0, [sp, #0x38]
	ldr r0, _0219DD10 ; =0x000006AC
	str r0, [sp, #0x34]
	add r0, #0x34
	str r0, [sp, #0x34]
	ldr r0, _0219DD10 ; =0x000006AC
	str r0, [sp, #0x30]
	add r0, #0x34
	str r0, [sp, #0x30]
_0219DBF8:
	lsl r0, r6, #2
	add r5, r4, r0
	add r0, sp, #0x50
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0219DD0C ; =0x0000054C
	ldr r1, [sp, #0x44]
	ldrh r0, [r4, r0]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r0, _0219DD10 ; =0x000006AC
	ldr r1, [r5, r1]
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x38]
	str r0, [r5, r1]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_0202D7E8
	add r1, r0, #0
	ldr r0, [sp, #0x34]
	mov r2, #1
	ldr r0, [r5, r0]
	bl sub_0204C378
	ldr r0, [sp, #0x30]
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_0204C5C8
	add r6, r6, #1
	cmp r6, #0x11
	blo _0219DBF8
	ldr r5, _0219DD0C ; =0x0000054C
	mov r0, #0x57
	ldrh r1, [r4, r5]
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	ldrh r1, [r4, r5]
	mov r2, #0
	mov r3, #0x80
	str r1, [sp, #8]
	mov r1, #0x27
	add r6, r0, #0
	bl sub_0204BBB8
	add r1, r5, #0
	add r1, #0x44
	str r0, [r4, r1]
	ldrh r0, [r4, r5]
	mov r1, #0x26
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B81C
	add r1, r5, #0
	add r1, #0x48
	str r0, [r4, r1]
	ldrh r3, [r4, r5]
	add r0, r6, #0
	mov r1, #0x25
	mov r2, #0x24
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0x50
	str r0, [r4, r1]
	add r0, r6, #0
	bl sub_0204AB0C
	add r2, r5, #0
	mov r0, #0xa
	add r1, sp, #0x48
	strb r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #7]
	mov r0, #0x92
	strh r0, [r1]
	mov r0, #0xb0
	strh r0, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	add r0, sp, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r4, r5]
	add r1, r5, #0
	ldr r6, _0219DD10 ; =0x000006AC
	str r0, [sp, #8]
	add r1, #0x48
	add r2, #0x44
	add r5, #0x50
	ldr r0, [r4, r6]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r5]
	bl sub_0204C040
	add r1, r6, #0
	add r1, #0x98
	str r0, [r4, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0204C124
	add r6, #0x98
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_0204C5C8
	add r0, r4, #0
	bl ovy142_219ff60
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219DD0C: .word 0x0000054C
_0219DD10: .word 0x000006AC
	thumb_func_end ovy142_219d7a8

	thumb_func_start ovy142_219dd14
ovy142_219dd14: ; 0x0219DD14
	push {r3, r4, r5, lr}
	ldr r4, _0219DD80 ; =0x0000081C
	add r5, r0, #0
	ldr r2, [r5, r4]
	mov r0, #4
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r4, #4
	ldr r2, [r5, r0]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r4, #0
	add r0, #0xc
	ldr r2, [r5, r0]
	mov r0, #3
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	sub r0, r4, #4
	ldr r2, [r5, r0]
	mov r0, #0
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r4, #8
	ldr r2, [r5, r4]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219DD80: .word 0x0000081C
	thumb_func_end ovy142_219dd14

	thumb_func_start ovy142_219dd84
ovy142_219dd84: ; 0x0219DD84
	push {r4, lr}
	add r4, r1, #0
	lsl r1, r4, #0x18
	mov r0, #5
	lsr r1, r1, #0x18
	bl sub_02044C98
	lsl r1, r4, #0x18
	mov r0, #6
	lsr r1, r1, #0x18
	bl sub_02044C98
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy142_219dd84

	thumb_func_start ovy142_219dda0
ovy142_219dda0: ; 0x0219DDA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #1
	bne _0219DDAE
	mov r1, #1
	b _0219DDB0
_0219DDAE:
	mov r1, #2
_0219DDB0:
	ldr r0, _0219DE04 ; =0x00000894
	str r1, [r5, r0]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0219DDC4
	add r1, r6, #0
	bl sub_0204C124
_0219DDC4:
	add r0, r5, #0
	bl sub_02199978
	add r1, r0, #0
	add r0, r5, #0
	bl ovy142_2199928
	ldrh r0, [r0]
	bl sub_02026AE4
	add r7, r0, #0
	beq _0219DE02
	bl sub_02021740
	lsl r0, r0, #2
	ldr r4, _0219DE08 ; =0x000006D4
	add r0, r5, r0
	ldr r0, [r0, r4]
	add r1, r6, #0
	bl sub_0204C124
	add r0, r7, #0
	bl sub_02021720
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, #0xc
	ldr r0, [r0, r4]
	add r1, r6, #0
	bl sub_0204C124
_0219DE02:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219DE04: .word 0x00000894
_0219DE08: .word 0x000006D4
	thumb_func_end ovy142_219dda0

	thumb_func_start ovy142_219de0c
ovy142_219de0c: ; 0x0219DE0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r6, #0
	ldr r7, _0219E100 ; =0x000006D4
	add r5, r0, #0
	add r4, r6, #0
_0219DE18:
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
	add r1, r4, #0
	bl sub_0204C124
	add r6, r6, #1
	cmp r6, #3
	blo _0219DE18
	mov r6, #0x6e
	lsl r6, r6, #4
_0219DE2E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	mov r1, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #0x11
	blo _0219DE2E
	add r0, r5, #0
	bl sub_02199978
	add r1, r0, #0
	add r0, r5, #0
	bl ovy142_2199928
	add r4, r0, #0
	beq _0219DE58
	ldrh r0, [r4]
	cmp r0, #0
	bne _0219DE64
_0219DE58:
	add r0, r5, #0
	mov r1, #0
	bl ovy142_219dda0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219DE64:
	add r0, r5, #0
	mov r1, #1
	bl ovy142_219dda0
	ldr r7, _0219E104 ; =0x0000076C
	ldr r0, [r5, r7]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r7, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r7, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r7, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldrh r0, [r4]
	bl sub_02026AE4
	str r0, [sp, #8]
	ldrh r1, [r4]
	ldr r0, [r5, #0x18]
	bl sub_020083C8
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0219DF84
	mov r6, #0x52
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #8
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x86
	bl sub_02048838
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #0
	bl sub_021999B8
	add r1, r6, #0
	add r2, r6, #0
	add r0, r6, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	add r2, r6, #0
	str r0, [sp, #4]
	add r1, r7, #0
	add r2, #0xc
	sub r1, #0x18
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0
	bl ovy142_21a00f0
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ovy142_21a03ac
	cmp r0, #0
	beq _0219DF72
	add r2, r6, #0
	add r2, #8
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x83
	bl sub_02048838
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #4
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	add r1, r6, #0
	add r2, r6, #0
	add r0, r6, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r6, #0xc
	sub r7, #0x10
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, r5, r7
	mov r3, #0
	bl ovy142_21a00f0
	b _0219DF7A
_0219DF72:
	sub r7, #0x10
	ldr r0, [r5, r7]
	bl sub_02048244
_0219DF7A:
	ldr r0, _0219E108 ; =0x0000074C
	ldr r0, [r5, r0]
	bl sub_020484B4
	b _0219E02A
_0219DF84:
	ldrh r0, [r4]
	bl sub_02026B84
	add r6, r0, #0
	cmp r6, #0xff
	bne _0219DFBC
	mov r6, #0x52
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #8
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x45
	bl sub_02048838
	ldrh r0, [r4]
	bl sub_02026B40
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r2, #1
	b _0219DFDE
_0219DFBC:
	mov r7, #0x52
	lsl r7, r7, #4
	add r2, r7, #0
	add r2, #8
	ldr r0, [r5, r7]
	ldr r2, [r5, r2]
	mov r1, #0x47
	bl sub_02048838
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #1
_0219DFDE:
	mov r3, #2
	bl sub_0202451C
	ldr r6, _0219E10C ; =0x00000524
	ldr r2, [sp, #8]
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_020244A4
	add r1, r6, #0
	add r1, #8
	add r2, r6, #4
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r7, _0219E110 ; =0x00000754
	add r6, #8
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, r5, r7
	mov r3, #0
	bl ovy142_21a00f0
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ovy142_219f4b0
	add r7, #8
	ldr r0, [r5, r7]
	bl sub_02048244
_0219E02A:
	ldr r7, _0219E114 ; =0x0000082C
	ldr r0, [r5, r7]
	cmp r0, #5
	bne _0219E096
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl sub_021999C8
	mov r6, #0x52
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #8
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x8b
	bl sub_02048838
	add r1, r6, #0
	add r2, r6, #0
	add r0, r6, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0xc
	add r1, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0
	bl sub_02022888
	mov r1, #0x60
	sub r3, r1, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r6, #0xc
	sub r7, #0xc0
	lsl r3, r3, #0xf
	ldr r2, [r5, r6]
	add r0, r5, #0
	add r1, r5, r7
	lsr r3, r3, #0x10
	bl ovy142_21a00f0
	b _0219E0A8
_0219E096:
	add r0, r7, #0
	sub r0, #0xc0
	ldr r0, [r5, r0]
	bl sub_020484B4
	sub r7, #0xc0
	ldr r0, [r5, r7]
	bl sub_02048244
_0219E0A8:
	ldr r7, _0219E118 ; =0x00000528
	ldrh r1, [r4]
	add r2, r7, #0
	add r2, #0x24
	ldrh r2, [r5, r2]
	ldr r0, [r5, r7]
	bl sub_020267C0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r6, _0219E11C ; =0x00000764
	ldr r2, [r5, r7]
	add r0, r5, #0
	add r1, r5, r6
	mov r3, #0
	bl ovy142_21a00f0
	add r0, r6, #0
	add r0, #8
	add r0, r5, r0
	bl ovy142_21a0134
	add r0, r6, #0
	sub r0, #0x10
	add r0, r5, r0
	bl ovy142_21a0134
	add r0, r6, #0
	sub r0, #8
	add r0, r5, r0
	bl ovy142_21a0134
	add r0, r5, r6
	bl ovy142_21a0134
	ldrh r1, [r4]
	add r0, r5, #0
	bl ovy142_219e4dc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E100: .word 0x000006D4
_0219E104: .word 0x0000076C
_0219E108: .word 0x0000074C
_0219E10C: .word 0x00000524
_0219E110: .word 0x00000754
_0219E114: .word 0x0000082C
_0219E118: .word 0x00000528
_0219E11C: .word 0x00000764
	thumb_func_end ovy142_219de0c

	thumb_func_start ovy142_219e120
ovy142_219e120: ; 0x0219E120
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r6, r0, #0
	mov r4, #0
	bl ovy142_219dda0
	ldr r7, _0219E164 ; =0x0000074C
	ldr r0, [r6, r7]
	bl sub_020484B4
	add r5, r4, #0
	sub r7, #0x78
_0219E138:
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, r7]
	add r1, r5, #0
	bl sub_0204C124
	add r4, r4, #1
	cmp r4, #3
	blo _0219E138
	mov r4, #0x6e
	mov r7, #0
	lsl r4, r4, #4
_0219E150:
	lsl r0, r5, #2
	add r0, r6, r0
	ldr r0, [r0, r4]
	add r1, r7, #0
	bl sub_0204C124
	add r5, r5, #1
	cmp r5, #0x11
	blo _0219E150
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219E164: .word 0x0000074C
	thumb_func_end ovy142_219e120

	thumb_func_start ovy142_219e168
ovy142_219e168: ; 0x0219E168
	push {r4, r5, r6, lr}
	ldr r4, _0219E20C ; =0x0000076C
	add r5, r0, #0
	ldr r0, [r5, r4]
	bl sub_02048210
	add r0, r4, #0
	sub r0, #0x18
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	bl sub_02048210
	add r0, r4, #0
	sub r0, #0xb4
	ldr r0, [r5, r0]
	bl sub_0204C108
	sub r4, #0xbc
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219E1E0
	bl sub_0204C108
	ldr r4, _0219E210 ; =0x00000554
	ldr r0, [r5, r4]
	bl sub_0204B98C
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
_0219E1E0:
	ldr r6, _0219E214 ; =0x00000558
	ldr r0, [r5, r6]
	bl sub_0204BE64
	mov r4, #0
	add r6, #0xcc
_0219E1EC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02046EDC
	add r4, r4, #1
	cmp r4, #8
	blt _0219E1EC
	ldr r0, _0219E218 ; =0x000006AC
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r4, r5, r6, pc}
	nop
_0219E20C: .word 0x0000076C
_0219E210: .word 0x00000554
_0219E214: .word 0x00000558
_0219E218: .word 0x000006AC
	thumb_func_end ovy142_219e168

	thumb_func_start ovy142_219e21c
ovy142_219e21c: ; 0x0219E21C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, _0219E27C ; =0x00000794
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r4, #0
	bl ovy142_219d22c
	cmp r0, #2
	ble _0219E24C
	add r5, #0x98
	ldr r0, [r4, r5]
	cmp r0, #5
	bne _0219E24C
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x9f
	b _0219E254
_0219E24C:
	mov r2, #0x52
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0x87
_0219E254:
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_02048838
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	ldr r2, _0219E280 ; =0x00000528
	ldr r1, _0219E27C ; =0x00000794
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r1, r4, r1
	mov r3, #0
	bl ovy142_21a00f0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0219E27C: .word 0x00000794
_0219E280: .word 0x00000528
	thumb_func_end ovy142_219e21c

	thumb_func_start ovy142_219e284
ovy142_219e284: ; 0x0219E284
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r7, #3
	str r7, [sp]
	add r5, r0, #0
	str r7, [sp, #4]
	mov r4, #1
	mov r0, #3
	mov r1, #0x12
	mov r2, #9
	mov r3, #0xc
	str r4, [sp, #8]
	bl sub_020480C0
	ldr r6, _0219E4A8 ; =0x00000794
	str r0, [r5, r6]
	add r0, r5, #0
	bl ovy142_219e21c
	ldr r0, [r5, r6]
	bl sub_020484B4
	mov r0, #2
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #3
	mov r1, #0x11
	mov r2, #0xd
	mov r3, #0xb
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #0x20
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #3
	mov r1, #0x11
	mov r2, #0xf
	mov r3, #0xb
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #8
	str r0, [r5, r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0x13
	mov r3, #0x20
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #0x48
	str r0, [r5, r1]
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #7
	mov r2, #5
	mov r3, #0x12
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #0x40
	str r0, [r5, r1]
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0x14
	mov r2, #8
	mov r3, #6
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #0x38
	str r0, [r5, r1]
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #2
	mov r2, #0xc
	mov r3, #0x1d
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #0x30
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0xa
	mov r2, #1
	mov r3, #0xc
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r6, #0
	sub r1, #0x28
	str r0, [r5, r1]
	bl sub_0204826C
	add r0, r6, #0
	sub r0, #0x40
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r6, #0
	sub r0, #0x38
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r6, #0
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl sub_0204826C
	add r0, r6, #0
	sub r0, #0x48
	ldr r0, [r5, r0]
	bl sub_0204826C
	ldr r4, _0219E4AC ; =0x0000054C
	mov r0, #0x19
	ldrh r1, [r5, r4]
	bl sub_0204AA30
	ldrh r3, [r5, r4]
	mov r1, #1
	mov r2, #0
	add r7, r0, #0
	bl sub_0204BDE0
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0204AB0C
	add r0, r4, #0
	add r2, r4, #0
	sub r0, #0x2c
	sub r2, #0x24
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x66
	bl sub_02048838
	mov r0, #4
	mov r7, #0xf7
	str r0, [sp]
	lsl r7, r7, #6
	add r2, r4, #0
	add r1, r6, #0
	sub r1, #0x48
	str r7, [sp, #4]
	sub r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #8
	bl ovy142_21a00f0
	add r0, r4, #0
	add r2, r4, #0
	sub r0, #0x2c
	sub r2, #0x24
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x5d
	bl sub_02048838
	mov r0, #0x18
	str r0, [sp]
	add r2, r4, #0
	add r1, r6, #0
	sub r1, #0x48
	str r7, [sp, #4]
	sub r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #8
	bl ovy142_21a00f0
	add r0, r4, #0
	add r2, r4, #0
	sub r0, #0x2c
	sub r2, #0x24
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x5b
	bl sub_02048838
	mov r0, #4
	str r0, [sp]
	add r2, r4, #0
	add r1, r6, #0
	sub r1, #0x48
	str r7, [sp, #4]
	sub r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x70
	bl ovy142_21a00f0
	add r0, r4, #0
	add r2, r4, #0
	sub r0, #0x2c
	sub r2, #0x24
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x5c
	bl sub_02048838
	mov r0, #0x18
	str r0, [sp]
	add r2, r4, #0
	add r1, r6, #0
	sub r1, #0x48
	str r7, [sp, #4]
	sub r2, #0x24
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x70
	bl ovy142_21a00f0
	add r0, r4, #0
	add r2, r4, #0
	sub r0, #0x2c
	sub r2, #0x24
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x5a
	bl sub_02048838
	mov r0, #4
	str r0, [sp]
	sub r6, #0x48
	str r7, [sp, #4]
	sub r4, #0x24
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r5, r6
	mov r3, #0xd0
	bl ovy142_21a00f0
	bl sub_0203D554
	cmp r0, #0
	bne _0219E4A4
	add r0, r5, #0
	bl ovy142_219de0c
_0219E4A4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E4A8: .word 0x00000794
_0219E4AC: .word 0x0000054C
	thumb_func_end ovy142_219e284

	thumb_func_start ovy142_219e4b0
ovy142_219e4b0: ; 0x0219E4B0
	push {r4, r5, r6, lr}
	mov r4, #0x6b
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0219E4D6
	bl sub_0204C108
	ldr r6, _0219E4D8 ; =0x00000554
	ldr r0, [r5, r6]
	bl sub_0204B98C
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	mov r0, #0
	str r0, [r5, r4]
_0219E4D6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219E4D8: .word 0x00000554
	thumb_func_end ovy142_219e4b0

	thumb_func_start ovy142_219e4dc
ovy142_219e4dc: ; 0x0219E4DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0x6b
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _0219E4F2
	bl ovy142_219e4b0
_0219E4F2:
	ldr r4, _0219E5A0 ; =0x0000054C
	mov r0, #0x19
	ldrh r1, [r5, r4]
	bl sub_0204AA30
	add r7, r0, #0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_02026670
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0204BBB8
	add r1, r4, #4
	str r0, [r5, r1]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_02026670
	add r1, r0, #0
	ldrh r0, [r5, r4]
	mov r2, #0
	mov r3, #1
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0x84
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0x50
	strh r0, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	add r1, r4, #0
	add r2, r4, #4
	str r0, [sp, #8]
	ldr r6, _0219E5A4 ; =0x000006AC
	add r1, #8
	add r4, #0xc
	ldr r0, [r5, r6]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r4]
	bl sub_0204C040
	add r1, r6, #4
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E5A0: .word 0x0000054C
_0219E5A4: .word 0x000006AC
	thumb_func_end ovy142_219e4dc

	thumb_func_start ovy142_219e5a8
ovy142_219e5a8: ; 0x0219E5A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204B794
	ldr r0, _0219E5C0 ; =0x0000079C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0219E5BC
	bl sub_0202DB70
_0219E5BC:
	pop {r4, pc}
	nop
_0219E5C0: .word 0x0000079C
	thumb_func_end ovy142_219e5a8

	thumb_func_start ovy142_219e5c4
ovy142_219e5c4: ; 0x0219E5C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r1, _0219E6F4 ; =0x0000054C
	add r5, r0, #0
	ldrh r1, [r5, r1]
	mov r0, #0x57
	bl sub_0204AA30
	mov r4, #0
	mov r3, #7
	str r4, [sp]
	mov r6, #1
	ldr r1, _0219E6F4 ; =0x0000054C
	str r6, [sp, #4]
	ldrh r1, [r5, r1]
	mov r2, #0
	lsl r3, r3, #6
	str r1, [sp, #8]
	mov r1, #0x20
	add r7, r0, #0
	bl sub_0204BBB8
	ldr r1, _0219E6F4 ; =0x0000054C
	mov r2, #0
	add r1, #0x38
	str r0, [r5, r1]
	ldr r0, _0219E6F4 ; =0x0000054C
	mov r1, #0x1f
	ldrh r0, [r5, r0]
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, _0219E6F4 ; =0x0000054C
	ldr r3, _0219E6F4 ; =0x0000054C
	add r1, #0x3c
	str r0, [r5, r1]
	ldrh r3, [r5, r3]
	add r0, r7, #0
	mov r1, #0x1e
	mov r2, #0x1d
	bl sub_0204BDE0
	ldr r1, _0219E6F4 ; =0x0000054C
	mov r2, #0
	add r1, #0x40
	str r0, [r5, r1]
	str r4, [sp]
	ldr r0, _0219E6F4 ; =0x0000054C
	str r6, [sp, #4]
	ldrh r0, [r5, r0]
	mov r1, #0x1c
	mov r3, #0x60
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_0204BBB8
	ldr r1, _0219E6F4 ; =0x0000054C
	mov r2, #0
	add r1, #0x10
	str r0, [r5, r1]
	ldr r0, _0219E6F4 ; =0x0000054C
	mov r1, #0x1b
	ldrh r0, [r5, r0]
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, _0219E6F4 ; =0x0000054C
	ldr r3, _0219E6F4 ; =0x0000054C
	add r1, #0x1c
	str r0, [r5, r1]
	ldrh r3, [r5, r3]
	add r0, r7, #0
	mov r1, #0x1a
	mov r2, #0x19
	bl sub_0204BDE0
	ldr r1, _0219E6F4 ; =0x0000054C
	add r1, #0x28
	str r0, [r5, r1]
	ldr r0, _0219E6F4 ; =0x0000054C
	str r0, [sp, #0x14]
	add r0, #0xd8
	str r0, [sp, #0x14]
	ldr r0, _0219E6F4 ; =0x0000054C
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldr r0, _0219E6F4 ; =0x0000054C
	str r0, [sp, #0xc]
	add r0, #0xb8
	str r0, [sp, #0xc]
_0219E680:
	ldr r3, _0219E6F4 ; =0x0000054C
	lsl r0, r4, #2
	ldrh r3, [r5, r3]
	add r6, r5, r0
	mov r0, #0xc
	mov r1, #2
	mov r2, #0x20
	bl sub_02046E28
	ldr r1, [sp, #0x14]
	mov r2, #0
	str r0, [r6, r1]
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	ldrh r0, [r0]
	mov r3, #0
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	ldr r1, [sp, #0xc]
	add r4, r4, #1
	str r0, [r6, r1]
	cmp r4, #8
	blt _0219E680
	ldr r0, [r5, #8]
	bl sub_02008BF0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	ldr r4, _0219E6F4 ; =0x0000054C
	str r0, [sp, #4]
	ldrh r0, [r5, r4]
	mov r1, #0x15
	mov r2, #0
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204BBB8
	add r1, r4, #0
	add r1, #0x4c
	str r0, [r5, r1]
	ldrh r3, [r5, r4]
	add r0, r7, #0
	mov r1, #0x13
	mov r2, #0x12
	bl sub_0204BDE0
	add r4, #0x2c
	str r0, [r5, r4]
	add r0, r7, #0
	bl sub_0204AB0C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219E6F4: .word 0x0000054C
	thumb_func_end ovy142_219e5c4

	thumb_func_start ovy142_219e6f8
ovy142_219e6f8: ; 0x0219E6F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	mov r1, #0xf8
	add r0, sp, #0x44
	strh r1, [r0, #0x10]
	mov r1, #0x1a
	strh r1, [r0, #0x12]
	mov r4, #1
	strb r4, [r0, #0x16]
	mov r7, #2
	strb r7, [r0, #0x17]
	mov r6, #0
	strh r6, [r0, #0x14]
	add r0, sp, #0x54
	str r0, [sp]
	ldr r1, _0219E8D4 ; =0x0000054C
	ldr r2, _0219E8D4 ; =0x0000054C
	ldr r3, _0219E8D4 ; =0x0000054C
	ldr r0, _0219E8D4 ; =0x0000054C
	str r6, [sp, #4]
	ldrh r0, [r5, r0]
	add r1, #0x1c
	add r2, #0x10
	str r0, [sp, #8]
	ldr r0, _0219E8D8 ; =0x000006AC
	add r3, #0x28
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, _0219E8D8 ; =0x000006AC
	add r1, #0xc
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C124
	ldr r0, _0219E8D8 ; =0x000006AC
	mov r1, #1
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204C520
	ldr r0, _0219E8D8 ; =0x000006AC
	mov r1, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	bl sub_0204C5C8
	add r0, r5, #0
	bl ovy142_219ed3c
	ldr r2, _0219E8D4 ; =0x0000054C
	ldr r3, _0219E8D4 ; =0x0000054C
	mov r1, #0x8c
	add r0, sp, #0x44
	strh r1, [r0, #8]
	mov r1, #0x30
	strh r1, [r0, #0xa]
	strb r4, [r0, #0xe]
	strb r7, [r0, #0xf]
	strh r4, [r0, #0xc]
	add r0, sp, #0x4c
	str r0, [sp]
	ldr r1, _0219E8D4 ; =0x0000054C
	ldr r0, _0219E8D4 ; =0x0000054C
	str r6, [sp, #4]
	ldrh r0, [r5, r0]
	add r1, #0x1c
	add r2, #0x10
	str r0, [sp, #8]
	ldr r0, _0219E8D8 ; =0x000006AC
	add r3, #0x28
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, _0219E8D8 ; =0x000006AC
	add r1, #8
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C5C8
	ldr r0, _0219E8D8 ; =0x000006AC
	mov r1, #1
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204C124
	ldr r0, _0219E8D8 ; =0x000006AC
	mov r1, #1
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204C520
	ldr r0, _0219E8D8 ; =0x000006AC
	add r7, r6, #0
	str r0, [sp, #0x40]
	sub r0, #0xa8
	str r0, [sp, #0x40]
	ldr r0, _0219E8D4 ; =0x0000054C
	str r0, [sp, #0x3c]
	add r0, #0x4c
	str r0, [sp, #0x3c]
	ldr r0, _0219E8D4 ; =0x0000054C
	str r0, [sp, #0x38]
	add r0, #0x2c
	str r0, [sp, #0x38]
	ldr r0, _0219E8D8 ; =0x000006AC
	str r0, [sp, #0x34]
	sub r0, #0x68
	str r0, [sp, #0x34]
	ldr r0, _0219E8D4 ; =0x0000054C
	add r0, r5, r0
	str r0, [sp, #0x30]
	ldr r0, _0219E8D8 ; =0x000006AC
	add r0, r5, r0
	str r0, [sp, #0x2c]
	ldr r0, _0219E8D4 ; =0x0000054C
	str r0, [sp, #0x28]
	add r0, #0x3c
	str r0, [sp, #0x28]
	ldr r0, _0219E8D4 ; =0x0000054C
	str r0, [sp, #0x24]
	add r0, #0x38
	str r0, [sp, #0x24]
	ldr r0, _0219E8D4 ; =0x0000054C
	str r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
	ldr r0, _0219E8D8 ; =0x000006AC
	str r0, [sp, #0x1c]
	sub r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, _0219E8D8 ; =0x000006AC
	str r0, [sp, #0x18]
	sub r0, #0x68
	str r0, [sp, #0x18]
	ldr r0, _0219E8D8 ; =0x000006AC
	str r0, [sp, #0x14]
	sub r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, _0219E8D8 ; =0x000006AC
	str r0, [sp, #0x10]
	sub r0, #0x68
	str r0, [sp, #0x10]
	ldr r0, _0219E8D8 ; =0x000006AC
	str r0, [sp, #0xc]
	sub r0, #0x28
	str r0, [sp, #0xc]
_0219E82C:
	mov r1, #0x8c
	add r0, sp, #0x44
	strh r1, [r0]
	mov r0, #0x18
	add r1, r6, #0
	mul r1, r0
	add r0, sp, #0x44
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #6]
	mov r1, #3
	strb r1, [r0, #7]
	strh r7, [r0, #4]
	lsl r0, r6, #2
	add r4, r5, r0
	add r0, sp, #0x44
	str r0, [sp]
	ldr r0, _0219E8D4 ; =0x0000054C
	str r7, [sp, #4]
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r0, _0219E8D8 ; =0x000006AC
	ldr r3, [sp, #0x38]
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x24]
	str r0, [r4, r1]
	add r1, sp, #0x44
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #0x44
	ldr r3, [sp, #0x20]
	sub r1, #0x18
	strh r1, [r0]
	mov r1, #1
	strh r1, [r0, #4]
	add r0, sp, #0x44
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r7, [sp, #4]
	ldrh r0, [r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, [r5, r1]
	ldr r0, [r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x1c]
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C124
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C5C8
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	ldr r0, [r4, r0]
	bl sub_0204C5C8
	add r6, r6, #1
	cmp r6, #8
	blt _0219E82C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219E8D4: .word 0x0000054C
_0219E8D8: .word 0x000006AC
	thumb_func_end ovy142_219e6f8

	thumb_func_start ovy142_219e8dc
ovy142_219e8dc: ; 0x0219E8DC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02026A94
	cmp r0, #1
	bne _0219E91C
	add r0, r4, #0
	bl sub_02026AE4
	cmp r0, #0x46
	bgt _0219E90A
	bge _0219E918
	cmp r0, #0x13
	bgt _0219E904
	cmp r0, #0xf
	blt _0219E91C
	beq _0219E918
	cmp r0, #0x13
	beq _0219E918
	b _0219E91C
_0219E904:
	cmp r0, #0x39
	beq _0219E918
	b _0219E91C
_0219E90A:
	cmp r0, #0x7f
	bgt _0219E912
	beq _0219E918
	b _0219E91C
_0219E912:
	ldr r1, _0219E920 ; =0x00000123
	cmp r0, r1
	bne _0219E91C
_0219E918:
	mov r0, #1
	pop {r4, pc}
_0219E91C:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0219E920: .word 0x00000123
	thumb_func_end ovy142_219e8dc

	thumb_func_start ovy142_219e924
ovy142_219e924: ; 0x0219E924
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	bl ovy142_2199988
	cmp r0, #0
	bne _0219E948
	add r0, r5, #0
	bl ovy142_219e21c
	ldr r4, _0219EB34 ; =0x00000794
	ldr r0, [r5, r4]
	bl sub_020484B4
	add r0, r5, r4
	bl ovy142_21a0134
	b _0219E95C
_0219E948:
	ldr r0, _0219EB34 ; =0x00000794
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl sub_020484B4
	add r0, r4, #0
	bl sub_020484D4
	bl sub_02044F90
_0219E95C:
	ldr r4, _0219EB38 ; =0x00000838
	sub r0, r4, #4
	ldr r1, [r5, r4]
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _0219E96A
	b _0219EB30
_0219E96A:
	ldr r0, _0219EB3C ; =0x0000054C
	ldrh r0, [r5, r0]
	bl sub_02026720
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x1c]
	sub r0, #0xb
	str r0, [sp, #0x1c]
	ldr r0, _0219EB3C ; =0x0000054C
	ldr r7, _0219EB40 ; =0x00000664
	str r0, [sp, #0x2c]
	add r0, #0xd8
	str r0, [sp, #0x2c]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x28]
	sub r0, #0x2c
	str r0, [sp, #0x28]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x24]
	sub r0, #0x24
	str r0, [sp, #0x24]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x30]
	sub r0, #0x28
	str r0, [sp, #0x30]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x4c]
	sub r0, #0x28
	str r0, [sp, #0x4c]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x48]
	sub r0, #0x20
	str r0, [sp, #0x48]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x44]
	sub r0, #0x24
	str r0, [sp, #0x44]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x40]
	sub r0, #0x18
	str r0, [sp, #0x40]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x3c]
	add r0, #0xd8
	str r0, [sp, #0x3c]
	ldr r0, _0219EB3C ; =0x0000054C
	str r0, [sp, #0x38]
	sub r0, #0x20
	str r0, [sp, #0x38]
	add r0, r4, #0
	str r0, [sp, #0x34]
	sub r0, #0xc
	str r0, [sp, #0x34]
	sub r0, r4, #4
	str r0, [sp, #0x20]
_0219E9DE:
	ldr r0, [sp, #0x18]
	lsl r0, r0, #2
	add r4, r5, r0
	mov r0, #9
	str r0, [r4, r7]
	ldr r0, [sp, #0x20]
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r1, r1, r0
	bmi _0219EA02
	add r0, r5, #0
	bl ovy142_2199928
	add r6, r0, #0
	beq _0219EA02
	ldrh r1, [r6]
	cmp r1, #0
	bne _0219EA04
_0219EA02:
	b _0219EB16
_0219EA04:
	ldr r2, _0219EB3C ; =0x0000054C
	ldr r0, [sp, #0x14]
	ldrh r2, [r5, r2]
	bl sub_0202672C
	mov r1, #0xf
	str r0, [sp, #0x10]
	bl sub_02026820
	str r0, [sp, #0xc]
	ldr r1, _0219EB44 ; =0x021A0FE6
	ldr r0, [sp, #0x18]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrh r0, [r6]
	bne _0219EA34
	bl ovy142_219e8dc
	cmp r0, #1
	bne _0219EA30
	ldr r0, _0219EB48 ; =0x000018AD
	b _0219EA42
_0219EA30:
	ldr r0, [sp, #0x1c]
	b _0219EA42
_0219EA34:
	bl ovy142_219e8dc
	cmp r0, #1
	bne _0219EA40
	ldr r0, _0219EB4C ; =0x000020ED
	b _0219EA42
_0219EA40:
	ldr r0, _0219EB50 ; =0x0000106D
_0219EA42:
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	mov r1, #0xd
	ldr r0, [r4, r0]
	bl sub_0204713C
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x24]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x82
	bl sub_02048838
	ldrh r0, [r6]
	bl sub_02026AE4
	add r2, r0, #0
	bne _0219EA72
	ldrh r2, [r6]
	add r0, r5, #0
	mov r1, #0
	bl sub_021999B8
	b _0219EA7C
_0219EA72:
	ldr r0, [sp, #0x30]
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020244A4
_0219EA7C:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x44]
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r3, [r5, r3]
	ldr r0, [r4, r0]
	bl sub_02021D28
	ldr r0, [sp, #0x34]
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0219EAB0
	b _0219EB0C
_0219EAB0:
	cmp r0, #3
	bne _0219EAB6
	b _0219EB0C
_0219EAB6:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne _0219EAC0
	mov r0, #3
_0219EABE:
	b _0219EB0E
_0219EAC0:
	cmp r0, #5
	bne _0219EAC8
	mov r0, #4
	b _0219EABE
_0219EAC8:
	cmp r0, #1
	bne _0219EAD0
	mov r0, #5
	b _0219EABE
_0219EAD0:
	ldrh r0, [r6]
	bl sub_02026B84
	cmp r0, #0xff
	beq _0219EADE
	mov r0, #7
	b _0219EABE
_0219EADE:
	ldrh r0, [r6]
	bl sub_02026B40
	cmp r0, #0xff
	beq _0219EAEC
	mov r0, #6
	b _0219EABE
_0219EAEC:
	ldr r0, [sp, #0x10]
	mov r1, #4
	bl sub_02026820
	cmp r0, #0
	beq _0219EB0C
	ldrh r1, [r6]
	add r0, r5, #0
	bl ovy142_219c0e8
	cmp r0, #1
	bne _0219EB08
	mov r0, #0
	b _0219EABE
_0219EB08:
	mov r0, #1
	b _0219EABE
_0219EB0C:
	mov r0, #8
_0219EB0E:
	str r0, [r4, r7]
	ldr r0, [sp, #0x10]
	bl sub_0203A24C
_0219EB16:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #8
	bge _0219EB22
	b _0219E9DE
_0219EB22:
	ldr r0, [sp, #0x14]
	bl sub_0204AB0C
	mov r0, #0x89
	mov r1, #1
	lsl r0, r0, #4
	strh r1, [r5, r0]
_0219EB30:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EB34: .word 0x00000794
_0219EB38: .word 0x00000838
_0219EB3C: .word 0x0000054C
_0219EB40: .word 0x00000664
_0219EB44: .word 0x021A0FE6
_0219EB48: .word 0x000018AD
_0219EB4C: .word 0x000020ED
_0219EB50: .word 0x0000106D
	thumb_func_end ovy142_219e924

	thumb_func_start ovy142_219eb54
ovy142_219eb54: ; 0x0219EB54
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0
	add r5, r0, #0
	bl ovy142_219fd4c
	ldr r4, _0219EBCC ; =0x000006B4
	ldr r7, _0219EBD0 ; =0x0000FFFF
	add r6, sp, #0
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0204C178
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	add r2, r1, #0
	mov r0, #0x18
	mul r2, r0
	add r0, sp, #0
	strh r2, [r0, #2]
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0204C140
	bl sub_0203D554
	cmp r0, #0
	bne _0219EB9A
	add r0, r5, #0
	mov r1, #1
	bl ovy142_219fd4c
_0219EB9A:
	ldr r0, _0219EBD4 ; =0x000008A4
	ldr r0, [r5, r0]
	bl sub_020352B0
	add r0, r5, #0
	bl ovy142_2199988
	mov r1, #1
	cmp r0, #7
	bge _0219EBB0
	mov r1, #0
_0219EBB0:
	ldr r4, _0219EBD8 ; =0x000006B8
	ldr r0, [r5, r4]
	bl sub_0204C124
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C504
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C504
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EBCC: .word 0x000006B4
_0219EBD0: .word 0x0000FFFF
_0219EBD4: .word 0x000008A4
_0219EBD8: .word 0x000006B8
	thumb_func_end ovy142_219eb54

	thumb_func_start ovy142_219ebdc
ovy142_219ebdc: ; 0x0219EBDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	ldr r0, _0219ECE8 ; =0x00000684
	mov r7, #0
	str r0, [sp, #0x24]
	sub r0, #0x40
	str r0, [sp, #0x24]
	ldr r0, _0219ECE8 ; =0x00000684
	str r0, [sp, #0x20]
	sub r0, #0x40
	str r0, [sp, #0x20]
	ldr r0, _0219ECE8 ; =0x00000684
	str r0, [sp, #0x1c]
	sub r0, #0x80
	str r0, [sp, #0x1c]
	ldr r0, _0219ECE8 ; =0x00000684
	str r0, [sp, #0x18]
	sub r0, #0x60
	str r0, [sp, #0x18]
	ldr r0, _0219ECE8 ; =0x00000684
	str r0, [sp, #0x14]
	sub r0, #0x60
	str r0, [sp, #0x14]
	mov r0, #0xa
	lsl r0, r0, #6
	str r0, [sp, #0x10]
	add r0, #0x80
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0xc]
	add r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldr r0, _0219ECE8 ; =0x00000684
	str r0, [sp, #4]
	sub r0, #0x20
	str r0, [sp, #4]
_0219EC2E:
	ldr r0, [sp]
	lsl r1, r7, #2
	add r5, r0, r1
	ldr r0, [sp, #0x1c]
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0204BB80
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	ldr r0, [r5, r0]
	bl sub_02046EF4
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	ldr r0, [r5, r0]
	bl sub_02046F00
	add r1, r0, #0
	add r0, r4, #0
	blx DC_FlushRange
	mov r0, #1
	lsl r0, r0, #8
	add r1, r6, #0
	add r0, r4, r0
	add r1, #0x80
	mov r2, #0x80
	bl GX_LoadOBJ
	mov r0, #0xa
	mov r1, #1
	lsl r0, r0, #6
	lsl r1, r1, #8
	add r0, r4, r0
	add r1, r6, r1
	mov r2, #0x80
	bl GX_LoadOBJ
	ldr r1, [sp, #0x10]
	mov r2, #1
	add r0, r4, #0
	add r1, r6, r1
	lsl r2, r2, #8
	bl GX_LoadOBJ
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r2, #1
	add r0, r4, r0
	add r1, r6, r1
	lsl r2, r2, #8
	bl GX_LoadOBJ
	ldr r0, [sp, #4]
	ldr r1, [r5, r0]
	ldr r0, _0219ECE8 ; =0x00000684
	cmp r1, #9
	beq _0219ECCA
	cmp r1, #8
	beq _0219ECBA
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, _0219ECE8 ; =0x00000684
	mov r1, #1
	ldr r0, [r5, r0]
	b _0219ECBE
_0219ECBA:
	ldr r0, [r5, r0]
	mov r1, #0
_0219ECBE:
	bl sub_0204C124
	ldr r0, [sp, #0x20]
	mov r1, #1
	ldr r0, [r5, r0]
	b _0219ECD8
_0219ECCA:
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [sp, #0x24]
	mov r1, #0
	ldr r0, [r5, r0]
_0219ECD8:
	bl sub_0204C124
	add r7, r7, #1
	cmp r7, #8
	blt _0219EC2E
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219ECE8: .word 0x00000684
	thumb_func_end ovy142_219ebdc

	thumb_func_start ovy142_219ecec
ovy142_219ecec: ; 0x0219ECEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, sp, #8
	add r1, sp, #4
	bl sub_0203DA84
	cmp r0, #1
	bne _0219ED30
	ldr r0, [sp, #4]
	cmp r0, #0x1a
	bhs _0219ED08
	mov r0, #0x1a
	b _0219ED0E
_0219ED08:
	cmp r0, #0x8e
	bls _0219ED10
	mov r0, #0x8e
_0219ED0E:
	str r0, [sp, #4]
_0219ED10:
	ldr r4, _0219ED34 ; =0x000006B8
	ldr r7, _0219ED38 ; =0x0000FFFF
	add r6, sp, #0
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0204C178
	ldr r1, [sp, #4]
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r5, r4]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0204C140
_0219ED30:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED34: .word 0x000006B8
_0219ED38: .word 0x0000FFFF
	thumb_func_end ovy142_219ecec

	thumb_func_start ovy142_219ed3c
ovy142_219ed3c: ; 0x0219ED3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ovy142_2199988
	add r4, r0, #0
	cmp r4, #7
	blt _0219ED7C
	ldr r6, _0219ED80 ; =0x000006B8
	add r7, sp, #4
	ldr r0, [r5, r6]
	ldr r2, _0219ED84 ; =0x0000FFFF
	add r1, r7, #0
	bl sub_0204C178
	mov r0, #0
	str r0, [sp]
	ldr r1, _0219ED88 ; =0x00000834
	sub r0, r4, #6
	ldr r1, [r5, r1]
	mov r2, #0x1a
	add r1, r1, #1
	mov r3, #0x8e
	bl sub_020355E0
	add r1, sp, #4
	strh r0, [r1, #2]
	ldr r0, [r5, r6]
	ldr r2, _0219ED84 ; =0x0000FFFF
	add r1, r7, #0
	bl sub_0204C140
_0219ED7C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219ED80: .word 0x000006B8
_0219ED84: .word 0x0000FFFF
_0219ED88: .word 0x00000834
	thumb_func_end ovy142_219ed3c

	thumb_func_start ovy142_219ed8c
ovy142_219ed8c: ; 0x0219ED8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	mov r0, #0xa
	add r7, sp, #0x40
	strb r0, [r7, #0x14]
	mov r0, #1
	strb r0, [r7, #0x15]
	ldr r0, _0219EFA8 ; =0x021A0FD0
	mov r4, #0
	ldrb r1, [r0]
	strb r1, [r7, #9]
	ldrb r1, [r0, #1]
	strb r1, [r7, #0xa]
	ldrb r1, [r0, #2]
	strb r1, [r7, #0xb]
	ldrb r1, [r0, #3]
	strb r1, [r7, #0xc]
	ldrb r0, [r0, #4]
	strb r0, [r7, #0xd]
	ldr r0, _0219EFAC ; =0x021A0FD8
	ldrb r1, [r0]
	strb r1, [r7, #4]
	ldrb r1, [r0, #1]
	strb r1, [r7, #5]
	ldrb r1, [r0, #2]
	strb r1, [r7, #6]
	ldrb r1, [r0, #3]
	strb r1, [r7, #7]
	ldrb r0, [r0, #4]
	strb r0, [r7, #8]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r0, [sp, #0x20]
	add r0, #0x20
	str r0, [sp, #0x20]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r0, [sp, #0x1c]
	add r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r0, [sp, #0x18]
	add r0, #0x30
	str r0, [sp, #0x18]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0x14]
	add r0, #0x78
	str r0, [sp, #0x14]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0x10]
	add r0, #0x78
	str r0, [sp, #0x10]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0xc]
	add r0, #0x78
	str r0, [sp, #0xc]
_0219EDFA:
	add r0, sp, #0x44
	ldrb r0, [r0, r4]
	strh r0, [r7, #0xe]
	mov r0, #0xa8
	strh r0, [r7, #0x10]
	add r0, sp, #0x48
	add r0, #1
	ldrb r0, [r0, r4]
	cmp r4, #2
	strh r0, [r7, #0x12]
	bne _0219EE18
	mov r0, #0x10
	ldrsh r0, [r7, r0]
	add r0, r0, #4
	strh r0, [r7, #0x10]
_0219EE18:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x4c
	add r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219EFB0 ; =0x0000054C
	ldr r1, [sp, #0x20]
	ldrh r0, [r5, r0]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, _0219EFB4 ; =0x000006AC
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x14]
	str r0, [r6, r1]
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C5C8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0219EDFA
	mov r0, #0x92
	add r1, sp, #0x40
	strh r0, [r1, #0xe]
	mov r0, #0xa8
	strh r0, [r1, #0x10]
	mov r0, #0
	strh r0, [r1, #0x12]
	ldr r3, _0219EFB0 ; =0x0000054C
	add r0, sp, #0x4c
	add r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, r3]
	add r1, r3, #0
	add r2, r3, #0
	ldr r4, _0219EFB4 ; =0x000006AC
	str r0, [sp, #8]
	add r1, #0x24
	add r2, #0x18
	add r3, #0x34
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x94
	str r0, [r5, r1]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C5C8
	add r0, r5, #0
	bl sub_0219BE00
	cmp r0, #0
	bne _0219EED0
	add r4, #0x80
	ldr r0, [r5, r4]
	mov r1, #0
	bl sub_0204C124
_0219EED0:
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _0219EEE2
	mov r0, #0x73
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C124
_0219EEE2:
	ldr r1, _0219EFB8 ; =0x021A0FCC
	mov r4, #0
	ldrb r2, [r1]
	add r0, sp, #0x40
	add r7, r4, #0
	strb r2, [r0, #2]
	ldrb r1, [r1, #1]
	strb r1, [r0, #3]
	ldr r1, _0219EFBC ; =0x021A0FC8
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r1, [r1, #1]
	strb r1, [r0, #1]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r0, [sp, #0x3c]
	add r0, #0x20
	str r0, [sp, #0x3c]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r0, [sp, #0x38]
	add r0, #0x18
	str r0, [sp, #0x38]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r0, [sp, #0x34]
	add r0, #0x30
	str r0, [sp, #0x34]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0x30]
	add r0, #0x78
	str r0, [sp, #0x30]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0x2c]
	add r0, #0x78
	str r0, [sp, #0x2c]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0x28]
	add r0, #0x78
	str r0, [sp, #0x28]
	ldr r0, _0219EFB4 ; =0x000006AC
	str r0, [sp, #0x24]
	add r0, #0x78
	str r0, [sp, #0x24]
_0219EF34:
	mov r1, #0xe8
	add r0, sp, #0x40
	strh r1, [r0, #0xe]
	add r0, sp, #0x40
	ldrb r1, [r0, r4]
	add r0, sp, #0x40
	ldr r2, [sp, #0x38]
	strh r1, [r0, #0x10]
	add r0, sp, #0x40
	add r0, #2
	ldrb r1, [r0, r4]
	add r0, sp, #0x40
	ldr r3, [sp, #0x34]
	strh r1, [r0, #0x12]
	strb r7, [r0, #0x15]
	add r0, r4, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r6, r5, r0
	add r0, sp, #0x4c
	add r0, #2
	str r0, [sp]
	ldr r0, _0219EFB0 ; =0x0000054C
	str r7, [sp, #4]
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x3c]
	str r0, [sp, #8]
	ldr r0, _0219EFB4 ; =0x000006AC
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
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
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	ldr r0, [r6, r0]
	bl sub_0204C5C8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _0219EF34
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219EFA8: .word 0x021A0FD0
_0219EFAC: .word 0x021A0FD8
_0219EFB0: .word 0x0000054C
_0219EFB4: .word 0x000006AC
_0219EFB8: .word 0x021A0FCC
_0219EFBC: .word 0x021A0FC8
	thumb_func_end ovy142_219ed8c

	thumb_func_start ovy142_219efc0
ovy142_219efc0: ; 0x0219EFC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0219F058 ; =0x0000054C
	mov r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x58
	str r0, [sp, #0x1c]
	ldr r0, _0219F058 ; =0x0000054C
	add r7, sp, #0x20
	str r0, [sp, #0x18]
	add r0, #0x54
	str r0, [sp, #0x18]
	ldr r0, _0219F058 ; =0x0000054C
	str r0, [sp, #0x14]
	add r0, #0x5c
	str r0, [sp, #0x14]
	ldr r0, _0219F05C ; =0x000006AC
	str r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _0219F05C ; =0x000006AC
	str r0, [sp, #0xc]
	add r0, #0x10
	str r0, [sp, #0xc]
_0219EFF2:
	ldr r0, _0219F060 ; =0x021A0FE0
	lsl r1, r4, #2
	ldrb r0, [r0, r4]
	ldr r2, _0219F064 ; =0x021A164C
	add r6, r5, r1
	strb r0, [r7, #6]
	mov r0, #1
	strb r0, [r7, #7]
	ldrsh r2, [r2, r1]
	ldr r0, _0219F064 ; =0x021A164C
	ldr r3, [sp, #0x14]
	sub r2, #0x10
	add r0, r0, r1
	strh r2, [r7]
	mov r2, #2
	ldrsh r0, [r0, r2]
	lsl r2, r4, #1
	ldr r1, [sp, #0x1c]
	strh r0, [r7, #2]
	ldr r0, _0219F068 ; =0x021A0FEE
	add r0, r0, r2
	ldrb r0, [r0, #1]
	ldr r2, [sp, #0x18]
	strh r0, [r7, #4]
	add r0, sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0219F058 ; =0x0000054C
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, _0219F05C ; =0x000006AC
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x10]
	str r0, [r6, r1]
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C520
	add r4, r4, #1
	cmp r4, #6
	blo _0219EFF2
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F058: .word 0x0000054C
_0219F05C: .word 0x000006AC
_0219F060: .word 0x021A0FE0
_0219F064: .word 0x021A164C
_0219F068: .word 0x021A0FEE
	thumb_func_end ovy142_219efc0

	thumb_func_start ovy142_219f06c
ovy142_219f06c: ; 0x0219F06C
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0219F0A4 ; =0x021A0FEE
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0219F076:
	cmp r4, r6
	bne _0219F088
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0219F0A8 ; =0x000006BC
	ldr r0, [r1, r0]
	lsl r1, r4, #1
	ldrb r1, [r7, r1]
	b _0219F096
_0219F088:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0219F0A8 ; =0x000006BC
	ldr r0, [r1, r0]
	lsl r1, r4, #1
	add r1, r7, r1
	ldrb r1, [r1, #1]
_0219F096:
	bl sub_0204C488
	add r4, r4, #1
	cmp r4, #6
	blo _0219F076
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F0A4: .word 0x021A0FEE
_0219F0A8: .word 0x000006BC
	thumb_func_end ovy142_219f06c

	thumb_func_start sub_0219F0AC
sub_0219F0AC: ; 0x0219F0AC
	mov r1, #5
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	ldr r3, _0219F0B8 ; =sub_02024EEC
	mov r1, #1
	bx r3
	.align 2, 0
_0219F0B8: .word sub_02024EEC
	thumb_func_end sub_0219F0AC

	thumb_func_start ovy142_219f0bc
ovy142_219f0bc: ; 0x0219F0BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0219F194 ; =0x0000054C
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, r0]
	add r7, r2, #0
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #4
	strb r7, [r1, #4]
	add r0, r5, r0
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0x20
	strb r0, [r1, #0x10]
	mov r0, #0x18
	strb r0, [r1, #0x11]
	mov r0, #0xe
	strb r0, [r1, #0x12]
	mov r0, #3
	mov r4, #0
	strb r0, [r1, #0x13]
	cmp r7, #0
	ble _0219F14C
	ldr r0, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, #0x2c
	str r0, [sp, #4]
	mov r0, #0x7a
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
_0219F112:
	ldr r1, [sp, #0x10]
	mov r0, #0xc
	ldrh r1, [r1]
	mul r0, r4
	add r6, r5, r0
	mov r0, #0x64
	bl sub_02048530
	add r3, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #4
	str r3, [r6, r0]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [r5, r0]
	add r2, r3, #0
	bl sub_02048838
	ldr r1, _0219F198 ; =0x000039E0
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	strh r1, [r6, r0]
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r6, r0]
	cmp r4, r7
	blt _0219F112
_0219F14C:
	sub r2, r4, #1
	mov r1, #0xc
	mul r1, r2
	ldr r6, _0219F19C ; =0x000007A8
	mov r0, #1
	add r1, r5, r1
	str r0, [r1, r6]
	add r1, r6, #0
	add r1, #0x58
	ldr r1, [r5, r1]
	add r0, sp, #0x14
	bl sub_0202D974
	add r1, r6, #0
	sub r1, #0xc
	mov r4, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _0219F186
	sub r6, #8
_0219F174:
	mov r0, #0xc
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048564
	add r4, r4, #1
	cmp r4, r7
	blt _0219F174
_0219F186:
	add r0, r5, #0
	mov r1, #0
	bl ovy142_219fda8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F194: .word 0x0000054C
_0219F198: .word 0x000039E0
_0219F19C: .word 0x000007A8
	thumb_func_end ovy142_219f0bc

	thumb_func_start ovy142_219f1a0
ovy142_219f1a0: ; 0x0219F1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, _0219F278 ; =0x0000054C
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, r0]
	add r7, r2, #0
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #4
	strb r7, [r1, #4]
	add r0, r5, r0
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0x20
	strb r0, [r1, #0x10]
	mov r0, #0x18
	strb r0, [r1, #0x11]
	mov r0, #0xe
	strb r0, [r1, #0x12]
	mov r0, #3
	mov r4, #0
	strb r0, [r1, #0x13]
	cmp r7, #0
	ble _0219F230
	ldr r0, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, #0x2c
	str r0, [sp, #4]
	mov r0, #0x7a
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r0, [sp, #8]
	add r0, #8
	str r0, [sp, #8]
_0219F1F6:
	ldr r1, [sp, #0x10]
	mov r0, #0xc
	ldrh r1, [r1]
	mul r0, r4
	add r6, r5, r0
	mov r0, #0x64
	bl sub_02048530
	add r3, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #4
	str r3, [r6, r0]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	ldr r0, [r5, r0]
	add r2, r3, #0
	bl sub_02048838
	ldr r1, _0219F27C ; =0x000039E0
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	strh r1, [r6, r0]
	ldr r0, [sp, #8]
	mov r1, #0
	str r1, [r6, r0]
	cmp r4, r7
	blt _0219F1F6
_0219F230:
	sub r2, r4, #1
	mov r1, #0xc
	mul r1, r2
	ldr r6, _0219F280 ; =0x000007A8
	mov r0, #1
	add r1, r5, r1
	str r0, [r1, r6]
	add r1, r6, #0
	add r1, #0x58
	ldr r1, [r5, r1]
	add r0, sp, #0x14
	bl sub_0202D974
	add r1, r6, #0
	sub r1, #0xc
	mov r4, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _0219F26A
	sub r6, #8
_0219F258:
	mov r0, #0xc
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048564
	add r4, r4, #1
	cmp r4, r7
	blt _0219F258
_0219F26A:
	add r0, r5, #0
	mov r1, #0
	bl ovy142_219fda8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F278: .word 0x0000054C
_0219F27C: .word 0x000039E0
_0219F280: .word 0x000007A8
	thumb_func_end ovy142_219f1a0

	thumb_func_start ovy142_219f284
ovy142_219f284: ; 0x0219F284
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, _0219F448 ; =0x0000054C
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, r0]
	add r1, sp, #0x48
	mov r4, #0
	str r0, [sp, #0x48]
	ldr r0, [sp]
	strb r0, [r1, #4]
	mov r0, #0x7a
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #0x20
	strb r0, [r1, #0x10]
	mov r0, #0x18
	strb r0, [r1, #0x11]
	mov r0, #0xe
	strb r0, [r1, #0x12]
	mov r0, #3
	strb r0, [r1, #0x13]
	ldr r0, [sp]
	cmp r0, #0
	bgt _0219F2C0
	b _0219F40A
_0219F2C0:
	ldr r0, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #4]
	str r0, [sp, #0x40]
	sub r0, #0x2c
	str r0, [sp, #0x40]
	ldr r0, [sp, #4]
	str r0, [sp, #0x3c]
	sub r0, #0x24
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x38]
	sub r0, #0x28
	str r0, [sp, #0x38]
	ldr r0, [sp, #4]
	str r0, [sp, #0x34]
	sub r0, #0x28
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	str r0, [sp, #0x30]
	sub r0, #0x24
	str r0, [sp, #0x30]
	mov r0, #0x7a
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r0, [sp, #0x28]
	add r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	str r0, [sp, #0x20]
	sub r0, #0x2c
	str r0, [sp, #0x20]
	mov r0, #0x7a
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x1c]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	sub r0, #0x2c
	str r0, [sp, #4]
	mov r0, #0x7a
	lsl r0, r0, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	mov r0, #0x7a
	lsl r0, r0, #4
	str r0, [sp, #8]
	add r0, #0xd0
	str r0, [sp, #8]
_0219F348:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [sp, #8]
	ldr r7, [r1, r0]
	cmp r7, #5
	bne _0219F382
	ldr r1, [sp, #0x14]
	mov r0, #0xc
	ldrh r1, [r1]
	mul r0, r4
	add r6, r5, r0
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #4
	str r2, [r6, r0]
	ldr r0, [sp, #4]
	mov r1, #0x90
	ldr r0, [r5, r0]
	bl sub_02048838
	ldr r1, _0219F44C ; =0x000039E0
	ldr r0, [sp, #0x10]
	strh r1, [r6, r0]
	mov r1, #0
	ldr r0, [sp, #0xc]
	b _0219F400
_0219F382:
	cmp r7, #6
	bne _0219F3B4
	ldr r1, [sp, #0x24]
	mov r0, #0xc
	ldrh r1, [r1]
	mul r0, r4
	add r6, r5, r0
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #4
	str r2, [r6, r0]
	ldr r0, [sp, #0x20]
	mov r1, #8
	ldr r0, [r5, r0]
	bl sub_02048838
	ldr r1, _0219F44C ; =0x000039E0
	ldr r0, [sp, #0x1c]
	strh r1, [r6, r0]
	mov r1, #1
	ldr r0, [sp, #0x18]
	b _0219F400
_0219F3B4:
	ldr r1, [sp, #0x44]
	mov r0, #0xc
	ldrh r1, [r1]
	mul r0, r4
	add r6, r5, r0
	mov r0, #0x64
	bl sub_02048530
	mov r1, #0x7a
	lsl r1, r1, #4
	str r0, [r6, r1]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x3c]
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x8b
	bl sub_02048838
	ldr r0, [sp, #0x38]
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r7, #0
	bl sub_020246F4
	ldr r0, [sp, #0x34]
	mov r1, #0x7a
	ldr r2, [sp, #0x30]
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r6, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	ldr r1, _0219F44C ; =0x000039E0
	ldr r0, [sp, #0x2c]
	strh r1, [r6, r0]
	ldr r0, [sp, #0x28]
	mov r1, #0
_0219F400:
	str r1, [r6, r0]
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0219F348
_0219F40A:
	mov r6, #2
	lsl r6, r6, #0xa
	ldr r1, [r5, r6]
	add r0, sp, #0x48
	bl sub_0202D974
	add r1, r6, #0
	sub r1, #0x64
	str r0, [r5, r1]
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0219F43C
	mov r7, #0xc
	sub r6, #0x60
_0219F428:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_02048564
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0219F428
_0219F43C:
	add r0, r5, #0
	mov r1, #0
	bl ovy142_219fda8
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F448: .word 0x0000054C
_0219F44C: .word 0x000039E0
	thumb_func_end ovy142_219f284

	thumb_func_start ovy142_219f450
ovy142_219f450: ; 0x0219F450
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, _0219F4AC ; =0x0000054C
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5, r7]
	mov r0, #0x57
	bl sub_0204AA30
	add r6, r0, #0
	cmp r4, #5
	bne _0219F482
	mov r1, #0x82
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldrh r1, [r5, r7]
	str r1, [sp, #0xc]
	mov r1, #0x18
	b _0219F49A
_0219F482:
	mov r1, #0x82
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldrh r1, [r5, r7]
	str r1, [sp, #0xc]
	mov r1, #0x17
_0219F49A:
	mov r2, #5
	bl sub_0204AFD8
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219F4AC: .word 0x0000054C
	thumb_func_end ovy142_219f450

	thumb_func_start ovy142_219f4b0
ovy142_219f4b0: ; 0x0219F4B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x10
	ldr r7, _0219F6A0 ; =0x0000074C
	lsr r0, r0, #0x10
	bl sub_02021740
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r7, #0
	sub r0, #0x78
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02021720
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r7, #0
	sub r0, #0x6c
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C124
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_020216B0
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #3
	bl sub_02021280
	str r0, [sp, #0x10]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #4
	bl sub_02021280
	str r0, [sp, #8]
	ldr r0, [r5, r7]
	bl sub_020484F4
	mov r1, #0x28
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xb0
	mov r2, #0
	mov r3, #0x20
	bl sub_020470F8
	ldr r0, [r5, r7]
	bl sub_020484F4
	mov r1, #0x18
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0xe8
	mov r2, #0
	mov r3, #0x18
	bl sub_020470F8
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bgt _0219F568
	mov r6, #0x52
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #8
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x17
	bl sub_02048838
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, r7
	add r6, #8
	b _0219F5B4
_0219F568:
	mov r6, #0x52
	lsl r6, r6, #4
	add r2, r6, #0
	add r2, #8
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #0x5f
	bl sub_02048838
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r1, #0
	mov r3, #3
	bl sub_0202451C
	add r1, r6, #0
	add r2, r6, #0
	add r0, r6, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, r7
	add r6, #0xc
_0219F5B4:
	ldr r2, [r5, r6]
	mov r3, #0xb0
	bl ovy142_21a00f0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0219F5CE
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_0202174C
	cmp r0, #1
	bne _0219F5F2
_0219F5CE:
	mov r4, #0x52
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x17
	bl sub_02048838
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, r7
	add r4, #8
	b _0219F63C
_0219F5F2:
	mov r4, #0x52
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x5f
	bl sub_02048838
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #8]
	mov r3, #3
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, r7
	add r4, #0xc
_0219F63C:
	ldr r2, [r5, r4]
	mov r3, #0xb0
	bl ovy142_21a00f0
	mov r4, #0x52
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x5e
	bl sub_02048838
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #0xc]
	mov r3, #2
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf7
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r4, #0xc
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r5, r7
	mov r3, #0xe8
	bl ovy142_21a00f0
	add r0, r5, r7
	bl ovy142_21a0134
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219F6A0: .word 0x0000074C
	thumb_func_end ovy142_219f4b0

	thumb_func_start ovy142_219f6a4
ovy142_219f6a4: ; 0x0219F6A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r6, #5
	add r5, r0, #0
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	add r4, r1, #0
	cmp r0, #0
	bne _0219F6CE
	mov r0, #4
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #3
	mov r2, #1
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, r6]
_0219F6CE:
	mov r6, #5
	lsl r6, r6, #8
	ldr r0, [r5, r6]
	bl sub_020484F4
	mov r1, #0xf
	mov r7, #0xf
	bl sub_0204713C
	ldr r0, [r5, r6]
	bl sub_02048244
	cmp r4, #1
	bne _0219F724
	bl sub_02017BCC
	add r1, r6, #0
	add r1, #0x34
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _0219F758 ; =0x00000748
	add r3, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x4c
	ldrh r0, [r5, r0]
	mov r2, #0
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, [r5, r6]
	ldr r3, [r5, r3]
	bl sub_02022268
	add r1, r6, #0
	add r1, #0x14
	str r0, [r5, r1]
	b _0219F73C
_0219F724:
	mov r3, #0
	add r0, r6, #0
	add r2, r6, #0
	str r3, [sp]
	sub r0, #0xb1
	str r0, [sp, #4]
	add r2, #0x2c
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r6
	bl ovy142_21a00f0
_0219F73C:
	ldr r2, _0219F75C ; =0x0000088C
	ldr r0, [r5, r6]
	ldr r2, [r5, r2]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xd
	bl sub_02024E80
	add r0, r5, r6
	bl ovy142_21a0134
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0219F758: .word 0x00000748
_0219F75C: .word 0x0000088C
	thumb_func_end ovy142_219f6a4

	thumb_func_start sub_0219F760
sub_0219F760: ; 0x0219F760
	ldr r3, _0219F768 ; =ovy142_219f6a4
	mov r1, #0
	bx r3
	nop
_0219F768: .word ovy142_219f6a4
	thumb_func_end sub_0219F760

	thumb_func_start ovy142_219f76c
ovy142_219f76c: ; 0x0219F76C
	push {r4, r5, r6, lr}
	mov r4, #0x52
	lsl r4, r4, #4
	add r2, r4, #0
	add r5, r0, #0
	add r2, #8
	add r6, r1, #0
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x2b
	bl sub_02048838
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_021999B8
	add r1, r4, #0
	add r0, r4, #4
	add r1, #0xc
	add r4, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r4]
	bl sub_02024920
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy142_219f76c

	thumb_func_start ovy142_219f7a4
ovy142_219f7a4: ; 0x0219F7A4
	push {r4, r5, r6, lr}
	ldr r6, _0219F840 ; =0x00000514
	add r5, r0, #0
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0219F83C
	bl sub_020223B4
	add r4, r0, #0
	add r0, r6, #0
	add r2, r6, #0
	add r0, #8
	sub r2, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r6]
	ldr r2, [r5, r2]
	bl sub_0202E8D8
	cmp r4, #0
	beq _0219F816
	cmp r4, #1
	beq _0219F7E2
	cmp r4, #2
	bne _0219F838
	ldr r0, [r5, r6]
	bl sub_020223CC
	mov r1, #0
	str r1, [r5, r6]
	add r0, r6, #4
	b _0219F836
_0219F7E2:
	add r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0219F838
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _0219F7FC
	bl sub_0203DA48
	cmp r0, #0
	beq _0219F838
_0219F7FC:
	ldr r4, _0219F844 ; =0x00000547
	add r0, r4, #0
	bl sub_02006254
	add r0, r4, #0
	sub r0, #0x33
	ldr r0, [r5, r0]
	bl sub_020223BC
	mov r0, #1
	sub r4, #0x2f
	str r0, [r5, r4]
	b _0219F838
_0219F816:
	bl sub_0203DF20
	mov r1, #3
	tst r0, r1
	bne _0219F828
	bl sub_0203DA2C
	cmp r0, #0
	beq _0219F832
_0219F828:
	ldr r0, _0219F840 ; =0x00000514
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020223E0
_0219F832:
	ldr r0, _0219F848 ; =0x00000518
	mov r1, #0
_0219F836:
	str r1, [r5, r0]
_0219F838:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0219F83C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219F840: .word 0x00000514
_0219F844: .word 0x00000547
_0219F848: .word 0x00000518
	thumb_func_end ovy142_219f7a4

	thumb_func_start ovy142_219f84c
ovy142_219f84c: ; 0x0219F84C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #3
	str r6, [sp]
	mov r7, #0xc
	add r5, r0, #0
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #3
	mov r2, #0x15
	mov r3, #0xc
	bl sub_020480C0
	ldr r1, _0219F8BC ; =0x00000508
	mov r2, #0x15
	str r0, [r5, r1]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #1
	mov r3, #8
	bl sub_020480C0
	ldr r4, _0219F8C0 ; =0x0000077C
	mov r1, #9
	str r0, [r5, r4]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	mov r2, #0x15
	mov r3, #9
	bl sub_020480C0
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	add r1, r4, #0
	add r1, #0xb0
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy142_219f8ec
	add r4, #0xb0
	ldr r1, [r5, r4]
	add r0, r5, #0
	bl ovy142_219f06c
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219F8BC: .word 0x00000508
_0219F8C0: .word 0x0000077C
	thumb_func_end ovy142_219f84c

	thumb_func_start ovy142_219f8c4
ovy142_219f8c4: ; 0x0219F8C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0219F8E4 ; =0x00000508
	ldr r0, [r4, r0]
	bl sub_02048210
	ldr r5, _0219F8E8 ; =0x00000784
	ldr r0, [r4, r5]
	bl sub_02048210
	sub r5, #8
	ldr r0, [r4, r5]
	bl sub_02048210
	pop {r3, r4, r5, pc}
	nop
_0219F8E4: .word 0x00000508
_0219F8E8: .word 0x00000784
	thumb_func_end ovy142_219f8c4

	thumb_func_start ovy142_219f8ec
ovy142_219f8ec: ; 0x0219F8EC
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, _0219F974 ; =0x00000508
	add r5, r0, #0
	ldr r0, [r5, r6]
	add r4, r1, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r6, #0
	add r2, r6, #0
	add r0, #0x18
	add r2, #0x20
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x8b
	bl sub_02048838
	add r0, r6, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_020246F4
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	add r0, #0x1c
	add r1, #0x24
	add r2, #0x20
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0x24
	add r1, #0x2c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0
	bl sub_02022888
	mov r1, #0x60
	sub r3, r1, r0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf1
	lsl r0, r0, #6
	add r2, r6, #0
	str r0, [sp, #4]
	add r2, #0x24
	lsl r3, r3, #0xf
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r6
	lsr r3, r3, #0x10
	bl ovy142_21a00f0
	add r0, r5, r6
	bl ovy142_21a0134
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219F974: .word 0x00000508
	thumb_func_end ovy142_219f8ec

	thumb_func_start ovy142_219f978
ovy142_219f978: ; 0x0219F978
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _0219FA38 ; =0x00000784
	add r5, r0, #0
	ldr r0, [r5, r6]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r4, #0x52
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x51
	bl sub_02048838
	mov r7, #4
	mov r0, #0xf1
	add r2, r4, #0
	add r1, r6, #0
	sub r1, #8
	str r7, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r2, #8
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0
	bl ovy142_21a00f0
	add r0, r6, #0
	sub r0, #8
	add r0, r5, r0
	bl ovy142_21a0134
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x52
	bl sub_02048838
	ldr r0, [r5]
	bl sub_02017974
	bl sub_0200C9BC
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #7
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #0xf1
	str r7, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	add r4, #0xc
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r5, r6
	mov r3, #0
	bl ovy142_21a00f0
	add r0, r5, r6
	bl ovy142_21a0134
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FA38: .word 0x00000784
	thumb_func_end ovy142_219f978

	thumb_func_start ovy142_219fa3c
ovy142_219fa3c: ; 0x0219FA3C
	push {r3, r4, r5, lr}
	ldr r5, _0219FA64 ; =0x00000724
	add r4, r0, #0
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	ldr r0, _0219FA68 ; =0x00000508
	ldr r0, [r4, r0]
	bl sub_020484B4
	add r0, r4, #0
	bl ovy142_219f978
	pop {r3, r4, r5, pc}
	.align 2, 0
_0219FA64: .word 0x00000724
_0219FA68: .word 0x00000508
	thumb_func_end ovy142_219fa3c

	thumb_func_start ovy142_219fa6c
ovy142_219fa6c: ; 0x0219FA6C
	push {r3, r4, r5, lr}
	ldr r4, _0219FAA4 ; =0x00000724
	add r5, r0, #0
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	add r0, #0x60
	ldr r0, [r5, r0]
	bl sub_020484B4
	add r4, #0x58
	ldr r0, [r5, r4]
	bl sub_020484B4
	ldr r1, _0219FAA8 ; =0x0000082C
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ovy142_219f8ec
	pop {r3, r4, r5, pc}
	nop
_0219FAA4: .word 0x00000724
_0219FAA8: .word 0x0000082C
	thumb_func_end ovy142_219fa6c

	thumb_func_start ovy142_219faac
ovy142_219faac: ; 0x0219FAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _0219FB58 ; =0x0000054C
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r4, #0x7a
	mov r2, #2
	str r1, [sp]
	add r0, sp, #0
	lsl r4, r4, #4
	strb r2, [r0, #4]
	add r2, r5, r4
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r2, #0x20
	strb r2, [r0, #0x10]
	mov r2, #0xc
	strb r2, [r0, #0x11]
	mov r7, #8
	strb r7, [r0, #0x12]
	mov r2, #3
	strb r2, [r0, #0x13]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r6, #0
	str r2, [r5, r4]
	sub r0, #0x2c
	ldr r0, [r5, r0]
	mov r1, #0x84
	bl sub_02048838
	ldr r0, _0219FB5C ; =0x000039E0
	add r1, r4, #4
	strh r0, [r5, r1]
	add r1, r4, #0
	add r1, #8
	mov r0, #0
	str r0, [r5, r1]
	ldrh r1, [r5, r6]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xc
	sub r6, #0x2c
	str r2, [r5, r0]
	ldr r0, [r5, r6]
	mov r1, #0x85
	bl sub_02048838
	add r1, r4, #0
	ldr r0, _0219FB5C ; =0x000039E0
	add r1, #0x10
	strh r0, [r5, r1]
	add r1, r4, #0
	add r1, #0x14
	mov r0, #0
	str r0, [r5, r1]
	lsl r1, r7, #8
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_0202D974
	sub r1, r4, #4
	str r0, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_02048564
	add r4, #0xc
	ldr r0, [r5, r4]
	bl sub_02048564
	add r0, r5, #0
	mov r1, #0
	bl ovy142_219ff40
	add r0, r5, #0
	mov r1, #0
	bl ovy142_219fda8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219FB58: .word 0x0000054C
_0219FB5C: .word 0x000039E0
	thumb_func_end ovy142_219faac

	thumb_func_start ovy142_219fb60
ovy142_219fb60: ; 0x0219FB60
	push {r3, r4, r5, lr}
	ldr r5, _0219FB74 ; =0x0000079C
	add r4, r0, #0
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	nop
_0219FB74: .word 0x0000079C
	thumb_func_end ovy142_219fb60

	thumb_func_start ovy142_219fb78
ovy142_219fb78: ; 0x0219FB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _0219FC0C ; =0x0000054C
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x57
	bl sub_0204AA30
	ldrh r3, [r5, r6]
	mov r1, #0x23
	mov r2, #0
	str r0, [sp, #0xc]
	mov r4, #0
	bl sub_0204B600
	add r1, sp, #0x10
	str r0, [sp, #8]
	bl sub_02060338
	cmp r0, #0
	beq _0219FBFC
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	add r2, r3, #0
	add r2, #0xc
	lsr r1, r0, #3
	ldrh r0, [r3, #2]
	add r3, r1, #0
	lsr r0, r0, #3
	mul r3, r0
	cmp r3, #0
	ble _0219FBD8
	mov r7, #3
	lsl r7, r7, #0xc
_0219FBBC:
	ldr r6, _0219FC10 ; =0x00000828
	lsl r1, r4, #1
	ldr r6, [r5, r6]
	ldrh r0, [r2, r1]
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	orr r6, r7
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	add r0, r0, r6
	add r4, r4, #1
	strh r0, [r2, r1]
	cmp r4, r3
	blt _0219FBBC
_0219FBD8:
	ldr r1, [sp, #0x10]
	mov r2, #0x10
	ldrh r0, [r1]
	mov r3, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	add r1, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #3
	bl sub_020454AC
	mov r0, #3
	bl sub_02045B7C
_0219FBFC:
	ldr r0, [sp, #8]
	bl sub_0203A24C
	ldr r0, [sp, #0xc]
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0219FC0C: .word 0x0000054C
_0219FC10: .word 0x00000828
	thumb_func_end ovy142_219fb78

	thumb_func_start ovy142_219fc14
ovy142_219fc14: ; 0x0219FC14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _0219FD10 ; =0x00000774
	add r5, r0, #0
	ldr r0, [r5, r6]
	add r7, r1, #0
	bl sub_020484F4
	mov r1, #5
	bl sub_0204713C
	mov r4, #0x52
	lsl r4, r4, #4
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x83
	bl sub_02048838
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #3
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #0
	str r0, [sp]
	ldr r0, _0219FD14 ; =0x00003DC5
	add r2, r4, #0
	str r0, [sp, #4]
	add r2, #0xc
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r1, r5, r6
	mov r3, #0
	bl ovy142_21a00f0
	add r0, r5, r6
	bl ovy142_21a0134
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r5, r0]
	cmp r0, #2
	bne _0219FD0A
	mov r1, #0x8a
	add r2, r4, #0
	lsl r1, r1, #4
	add r2, #0x2c
	ldr r0, [r5, r1]
	sub r1, #0x8c
	add r7, r6, #0
	ldrh r2, [r5, r2]
	ldr r1, [r5, r1]
	add r7, #0x18
	bl ovy142_219995c
	add r6, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, r6]
	bl sub_020484F4
	mov r1, #5
	bl sub_0204713C
	add r2, r4, #0
	add r2, #8
	ldr r0, [r5, r4]
	ldr r2, [r5, r2]
	mov r1, #0x54
	bl sub_02048838
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #8]
	mov r1, #0
	mov r3, #7
	bl sub_0202451C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #4
	add r1, #0xc
	add r2, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl sub_02024920
	mov r0, #0
	str r0, [sp]
	ldr r0, _0219FD14 ; =0x00003DC5
	add r4, #0xc
	str r0, [sp, #4]
	ldr r2, [r5, r4]
	add r0, r5, #0
	add r1, r5, r7
	mov r3, #0
	bl ovy142_21a00f0
	add r0, r5, r7
	bl ovy142_21a0134
_0219FD0A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219FD10: .word 0x00000774
_0219FD14: .word 0x00003DC5
	thumb_func_end ovy142_219fc14

	thumb_func_start sub_0219FD18
sub_0219FD18: ; 0x0219FD18
	cmp r0, #5
	bhi _0219FD4A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0219FD28: ; jump table
	.short _0219FD34 - _0219FD28 - 2 ; case 0
	.short _0219FD3C - _0219FD28 - 2 ; case 1
	.short _0219FD40 - _0219FD28 - 2 ; case 2
	.short _0219FD38 - _0219FD28 - 2 ; case 3
	.short _0219FD44 - _0219FD28 - 2 ; case 4
	.short _0219FD48 - _0219FD28 - 2 ; case 5
_0219FD34:
	mov r0, #0xc
	bx lr
_0219FD38:
	mov r0, #0xf
	bx lr
_0219FD3C:
	mov r0, #0xd
	bx lr
_0219FD40:
	mov r0, #0xe
	bx lr
_0219FD44:
	mov r0, #0x10
	bx lr
_0219FD48:
	mov r0, #0x11
_0219FD4A:
	bx lr
	thumb_func_end sub_0219FD18

	thumb_func_start ovy142_219fd4c
ovy142_219fd4c: ; 0x0219FD4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, _0219FDA0 ; =0x000006B4
	add r5, r0, #0
	ldr r0, [r5, r6]
	str r1, [sp]
	add r1, sp, #8
	mov r2, #0
	mov r4, #0
	bl sub_0204C178
	sub r6, #0x70
	add r7, sp, #4
_0219FD66:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, sp, #4
	mov r2, #0
	bl sub_0204C178
	mov r0, #2
	ldrsh r1, [r7, r0]
	mov r0, #6
	ldrsh r0, [r7, r0]
	cmp r1, r0
	beq _0219FD86
	add r4, r4, #1
	cmp r4, #8
	blo _0219FD66
_0219FD86:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0219FDA4 ; =0x00000644
	mov r2, #0
	ldr r0, [r1, r0]
	ldr r1, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C378
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0219FDA0: .word 0x000006B4
_0219FDA4: .word 0x00000644
	thumb_func_end ovy142_219fd4c

	thumb_func_start ovy142_219fda8
ovy142_219fda8: ; 0x0219FDA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, _0219FF2C ; =0x000008AC
	add r5, r0, #0
	ldr r0, [r5, r6]
	add r4, r1, #0
	cmp r0, r4
	bne _0219FDBA
	b _0219FF26
_0219FDBA:
	add r0, r6, #0
	str r4, [r5, r6]
	sub r0, #0x80
	ldr r0, [r5, r0]
	bl sub_0219FD18
	add r1, r0, #0
	ldr r0, [r5]
	bl sub_0201765C
	add r7, r0, #0
	cmp r4, #1
	bne _0219FE5E
	bl sub_02005718
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r2, _0219FF30 ; =0x000047CF
	mov r1, #4
	mov r3, #0
	bl sub_02026FE4
	bl sub_02005718
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	sub r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl sub_02026FE4
	ldr r0, _0219FF34 ; =0x04000050
	mov r1, #6
	mov r2, #0
	mov r6, #6
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	bl ovy142_219ff60
	ldr r4, _0219FF38 ; =0x00000724
	mov r1, #4
	ldr r0, [r5, r4]
	bl sub_0204C488
	add r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_0204C488
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C488
	cmp r7, #1
	bne _0219FE48
	add r4, #8
	ldr r0, [r5, r4]
	mov r1, #7
	b _0219FE4E
_0219FE48:
	add r4, #8
	ldr r0, [r5, r4]
	add r1, r6, #0
_0219FE4E:
	bl sub_0204C488
	add r0, r5, #0
	mov r1, #1
	bl ovy142_219ff40
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219FE5E:
	sub r0, r6, #4
	mov r3, #2
	ldr r0, [r5, r0]
	mov r1, #2
	mov r2, #0
	lsl r3, r3, #8
	mov r4, #0
	bl sub_02026F7C
	bl sub_02005718
	mov r1, #8
	str r1, [sp]
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	sub r0, r6, #4
	ldr r0, [r5, r0]
	ldr r2, _0219FF30 ; =0x000047CF
	mov r1, #4
	mov r3, #0
	bl sub_02026FE4
	bl sub_02005718
	mov r1, #8
	str r1, [sp]
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	sub r0, r6, #4
	ldr r0, [r5, r0]
	mov r1, #1
	mov r2, #1
	mov r3, #0
	mov r4, #1
	bl sub_02026FE4
	ldr r0, [r5, #0x10]
	cmp r0, #4
	bne _0219FEC6
	ldr r0, _0219FF38 ; =0x00000724
	ldr r0, [r5, r0]
	bl sub_0204C138
	cmp r0, #0
	bne _0219FEC6
	sub r4, #9
	ldr r0, _0219FF34 ; =0x04000050
	mov r1, #2
	add r2, r4, #0
	b _0219FECE
_0219FEC6:
	mov r2, #6
	ldr r0, _0219FF34 ; =0x04000050
	mov r1, #6
	sub r2, #0xe
_0219FECE:
	bl G2x_SetBlendBrightness_
	ldr r4, _0219FF3C ; =0x00000744
	mov r1, #4
	ldr r0, [r5, r4]
	bl sub_0204C488
	sub r0, r4, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_0204C488
	add r0, r4, #0
	sub r0, #0x20
	ldr r0, [r5, r0]
	mov r1, #0x12
	bl sub_0204C488
	add r0, r4, #0
	sub r0, #0x1c
	ldr r0, [r5, r0]
	mov r1, #0x13
	bl sub_0204C488
	add r0, r4, #0
	sub r0, #0x14
	ldr r0, [r5, r0]
	mov r1, #0xe
	bl sub_0204C488
	cmp r7, #1
	bne _0219FF1C
	sub r4, #0x18
	ldr r0, [r5, r4]
	mov r1, #0x16
	bl sub_0204C488
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0219FF1C:
	sub r4, #0x18
	ldr r0, [r5, r4]
	mov r1, #0x15
	bl sub_0204C488
_0219FF26:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0219FF2C: .word 0x000008AC
_0219FF30: .word 0x000047CF
_0219FF34: .word 0x04000050
_0219FF38: .word 0x00000724
_0219FF3C: .word 0x00000744
	thumb_func_end ovy142_219fda8

	thumb_func_start ovy142_219ff40
ovy142_219ff40: ; 0x0219FF40
	push {r3, lr}
	cmp r1, #1
	ldr r1, _0219FF5C ; =0x00000734
	bne _0219FF52
	ldr r0, [r0, r1]
	mov r1, #1
	bl sub_0204C488
	pop {r3, pc}
_0219FF52:
	ldr r0, [r0, r1]
	mov r1, #0xf
	bl sub_0204C488
	pop {r3, pc}
	.align 2, 0
_0219FF5C: .word 0x00000734
	thumb_func_end ovy142_219ff40

	thumb_func_start ovy142_219ff60
ovy142_219ff60: ; 0x0219FF60
	push {r4, r5, r6, lr}
	ldr r4, _0219FFE4 ; =0x0000082C
	add r5, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #5
	beq _0219FFA8
	add r0, r4, #0
	sub r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	sub r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #0
	mov r6, #0
	bl sub_0204C124
	add r0, r5, #0
	bl ovy142_2199988
	cmp r0, #1
	bgt _0219FF9C
	sub r4, #0xe8
	ldr r0, [r5, r4]
	mov r1, #4
	bl sub_0204C488
	pop {r4, r5, r6, pc}
_0219FF9C:
	sub r4, #0xe8
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C488
	pop {r4, r5, r6, pc}
_0219FFA8:
	add r0, r4, #0
	sub r0, #0xec
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r4, #0
	sub r0, #0xe8
	ldr r0, [r5, r0]
	mov r1, #0
	mov r6, #0
	bl sub_0204C124
	add r0, r5, #0
	bl ovy142_219d22c
	cmp r0, #2
	ble _0219FFD8
	sub r4, #0xec
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl sub_0204C488
	pop {r4, r5, r6, pc}
_0219FFD8:
	sub r4, #0xec
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_0204C488
	pop {r4, r5, r6, pc}
	.align 2, 0
_0219FFE4: .word 0x0000082C
	thumb_func_end ovy142_219ff60

	thumb_func_start ovy142_219ffe8
ovy142_219ffe8: ; 0x0219FFE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021A0098 ; =0x0000082C
	add r4, r0, #0
	ldr r0, [r4, r5]
	add r7, r1, #0
	bl sub_0219FD18
	add r1, r0, #0
	ldr r0, [r4]
	bl sub_0201765C
	add r6, r0, #0
	cmp r7, #1
	bne _021A0046
	add r0, r4, #0
	bl ovy142_219ff60
	ldr r5, _021A009C ; =0x00000724
	mov r1, #4
	ldr r0, [r4, r5]
	bl sub_0204C488
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #5
	bl sub_0204C488
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C488
	cmp r6, #1
	bne _021A003A
	add r5, #8
	ldr r0, [r4, r5]
	mov r1, #7
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_021A003A:
	add r5, #8
	ldr r0, [r4, r5]
	mov r1, #6
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_021A0046:
	add r0, r5, #0
	sub r0, #0xe8
	ldr r0, [r4, r0]
	mov r1, #4
	bl sub_0204C488
	sub r5, #0xec
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_0204C488
	ldr r5, _021A009C ; =0x00000724
	mov r1, #0x12
	ldr r0, [r4, r5]
	bl sub_0204C488
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0x13
	bl sub_0204C488
	add r0, r5, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	mov r1, #0xe
	bl sub_0204C488
	cmp r6, #1
	bne _021A008C
	add r5, #8
	ldr r0, [r4, r5]
	mov r1, #0x16
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
_021A008C:
	add r5, #8
	ldr r0, [r4, r5]
	mov r1, #0x15
	bl sub_0204C488
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0098: .word 0x0000082C
_021A009C: .word 0x00000724
	thumb_func_end ovy142_219ffe8

	thumb_func_start ovy142_21a00a0
ovy142_21a00a0: ; 0x021A00A0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
_021A00A6:
	lsl r6, r4, #2
	ldr r0, _021A00E4 ; =0x000006BC
	add r5, r7, r6
	ldr r0, [r5, r0]
	ldr r2, _021A00E8 ; =0x0000FFFF
	add r1, sp, #0
	bl sub_0204C178
	add r1, sp, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, _021A00EC ; =0x021A164C
	ldrsh r0, [r0, r6]
	cmp r1, r0
	bne _021A00C8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A00C8:
	add r1, r1, #4
	add r0, sp, #0
	strh r1, [r0]
	ldr r0, _021A00E4 ; =0x000006BC
	ldr r2, _021A00E8 ; =0x0000FFFF
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl sub_0204C140
	add r4, r4, #1
	cmp r4, #6
	blo _021A00A6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A00E4: .word 0x000006BC
_021A00E8: .word 0x0000FFFF
_021A00EC: .word 0x021A164C
	thumb_func_end ovy142_21a00a0

	thumb_func_start ovy142_21a00f0
ovy142_21a00f0: ; 0x021A00F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r6, #0x51
	add r5, r0, #0
	str r3, [sp, #0xc]
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r7, r2, #0
	bl sub_020484F4
	str r7, [sp]
	add r6, #0x24
	add r1, r0, #0
	ldr r0, [r5, r6]
	add r3, sp, #0x28
	str r0, [sp, #4]
	ldrh r0, [r3, #4]
	mov r5, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldrsh r3, [r3, r5]
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	asr r2, r2, #0x10
	bl sub_02021C7C
	mov r0, #1
	strb r0, [r4, #4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy142_21a00f0

	thumb_func_start ovy142_21a0134
ovy142_21a0134: ; 0x021A0134
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_0204826C
	ldr r0, [r4]
	bl sub_020484D4
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy142_21a0134

	thumb_func_start ovy142_21a014c
ovy142_21a014c: ; 0x021A014C
	push {r4, r5, r6, lr}
	mov r4, #0x51
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_02021A3C
	mov r6, #0x75
	lsl r6, r6, #4
	ldrb r0, [r5, r6]
	ldr r4, [r5, r4]
	cmp r0, #0
	beq _021A0186
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0186
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A0186:
	mov r0, #0x51
	mov r6, #0x77
	lsl r0, r0, #4
	lsl r6, r6, #4
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A01B6
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A01B6
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A01B6:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r6, _021A0398 ; =0x00000758
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A01E4
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A01E4
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A01E4:
	mov r0, #0x51
	mov r6, #0x76
	lsl r0, r0, #4
	lsl r6, r6, #4
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A0214
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0214
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A0214:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r6, _021A039C ; =0x00000768
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A0242
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0242
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A0242:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r6, _021A03A0 ; =0x00000778
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A0270
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0270
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A0270:
	mov r0, #0x51
	mov r6, #0x1e
	lsl r0, r0, #4
	lsl r6, r6, #6
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A02A0
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A02A0
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A02A0:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r6, _021A03A4 ; =0x00000788
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A02CE
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A02CE
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A02CE:
	mov r0, #0x51
	mov r6, #0x79
	lsl r0, r0, #4
	lsl r6, r6, #4
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A02FE
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A02FE
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A02FE:
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r6, _021A03A8 ; =0x00000798
	ldr r4, [r5, r0]
	ldrb r0, [r5, r6]
	cmp r0, #0
	beq _021A032C
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A032C
	sub r0, r6, #4
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	strb r0, [r5, r6]
_021A032C:
	mov r4, #0x51
	lsl r4, r4, #4
	add r0, r4, #0
	sub r0, #0xc
	ldrb r0, [r5, r0]
	ldr r6, [r5, r4]
	cmp r0, #0
	beq _021A0362
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0362
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r0, #0
	sub r4, #0xc
	strb r0, [r5, r4]
_021A0362:
	mov r6, #0x51
	lsl r6, r6, #4
	sub r0, r6, #4
	ldrb r0, [r5, r0]
	ldr r4, [r5, r6]
	cmp r0, #0
	beq _021A0396
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_020484F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021C1C
	cmp r0, #0
	bne _021A0396
	add r0, r6, #0
	sub r0, #8
	ldr r0, [r5, r0]
	bl sub_02048244
	mov r1, #0
	sub r0, r6, #4
	strb r1, [r5, r0]
_021A0396:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A0398: .word 0x00000758
_021A039C: .word 0x00000768
_021A03A0: .word 0x00000778
_021A03A4: .word 0x00000788
_021A03A8: .word 0x00000798
	thumb_func_end ovy142_21a014c

	thumb_func_start ovy142_21a03ac
ovy142_21a03ac: ; 0x021A03AC
	push {r4, r5}
	sub sp, #0x18
	ldr r4, _021A03D0 ; =0x021A1028
	add r3, sp, #0
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #2
	ldr r0, [r2, r0]
	add sp, #0x18
	pop {r4, r5}
	bx lr
	nop
_021A03D0: .word 0x021A1028
	thumb_func_end ovy142_21a03ac
_021A03D4:
	.byte 0x89, 0x68, 0x80, 0x68, 0x88, 0x42, 0x01, 0xD1, 0x00, 0x20, 0x70, 0x47
	.byte 0x88, 0x42, 0x01, 0xD9, 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0xC0, 0x43, 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy142_21a03f0
ovy142_21a03f0: ; 0x021A03F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	str r1, [r5, #4]
	ldr r2, _021A0464 ; =0x000013F8
	add r0, #0xc
	mov r1, #0
	mov r4, #0
	strh r3, [r5, #8]
	blx MI_CpuFill8
	mov r6, #0
	mov r7, #1
_021A040A:
	lsl r1, r6, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl sub_02008338
	cmp r0, #0
	beq _021A0436
	lsl r1, r6, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl sub_020083C8
	cmp r0, #6
	beq _021A0434
	lsl r1, r4, #3
	add r1, r5, r1
	strh r6, [r1, #0xc]
	strh r0, [r1, #0xe]
	str r7, [r1, #0x10]
	add r4, r4, #1
	b _021A0446
_021A0434:
	b _021A0436
_021A0436:
	lsl r0, r4, #3
	add r0, r5, r0
	mov r1, #0
	strh r1, [r0, #0xc]
	mov r1, #6
	strh r1, [r0, #0xe]
	mov r1, #0
	str r1, [r0, #0x10]
_021A0446:
	ldr r0, _021A0468 ; =0x0000027E
	add r6, r6, #1
	cmp r6, r0
	ble _021A040A
	ldr r1, [sp]
	mov r0, #0
	lsl r1, r1, #0x10
	strh r0, [r5]
	strh r0, [r5, #2]
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ovy142_21a063c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0464: .word 0x000013F8
_021A0468: .word 0x0000027E
	thumb_func_end ovy142_21a03f0

	thumb_func_start sub_021A046C
sub_021A046C: ; 0x021A046C
	bx lr
	.align 2, 0
	thumb_func_end sub_021A046C

	thumb_func_start ovy142_21a0470
ovy142_21a0470: ; 0x021A0470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r6, r0, #0
	ldr r0, [sp]
	add r7, r2, #0
	mov r4, #0
	cmp r0, #5
	beq _021A04BA
	add r5, r4, #0
_021A0484:
	lsl r2, r5, #0x10
	ldr r0, [r6, #4]
	ldr r1, [sp]
	lsr r2, r2, #0x10
	bl sub_02008730
	str r0, [sp, #4]
	cmp r0, #0
	bne _021A049C
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A049C:
	ldr r1, [sp, #4]
	ldr r0, [r6, #4]
	ldrh r1, [r1]
	bl sub_02008338
	cmp r0, #0
	bne _021A04B0
	cmp r4, r7
	beq _021A0500
	add r4, r4, #1
_021A04B0:
	ldr r0, _021A0508 ; =0x0000027E
	add r5, r5, #1
	cmp r5, r0
	ble _021A0484
	b _021A0500
_021A04BA:
	add r3, r6, #0
	ldr r5, _021A0508 ; =0x0000027E
	mov ip, r4
	add r0, r4, #0
	add r3, #0xc
_021A04C4:
	lsl r1, r0, #3
	add r2, r3, r1
	ldr r1, [r2, #4]
	cmp r1, #1
	bne _021A04E0
	ldrh r1, [r2]
	cmp r1, #0
	beq _021A04E0
	cmp r4, r7
	bne _021A04DE
	mov r0, #1
	mov ip, r0
	b _021A04E6
_021A04DE:
	add r4, r4, #1
_021A04E0:
	add r0, r0, #1
	cmp r0, r5
	ble _021A04C4
_021A04E6:
	mov r0, ip
	cmp r0, #0
	bne _021A04EE
	b _021A04FE
_021A04EE:
	ldrh r1, [r2, #2]
	ldrh r2, [r2]
	ldr r0, [r6, #4]
	bl sub_02008798
	str r0, [sp, #4]
	cmp r0, #0
	bne _021A0500
_021A04FE:
	str r6, [sp, #4]
_021A0500:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0508: .word 0x0000027E
	thumb_func_end ovy142_21a0470

	thumb_func_start ovy142_21a050c
ovy142_21a050c: ; 0x021A050C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r4, [sp]
	ldr r7, _021A0574 ; =0x0000027E
	add r3, r1, #0
	mov ip, r2
	mov r0, #0
	mov r1, #0
	add r4, #0xc
_021A051E:
	lsl r6, r1, #3
	add r5, r4, r6
	ldr r2, [r5, #4]
	cmp r2, #1
	bne _021A0564
	ldrh r2, [r5]
	cmp r2, #0
	beq _021A0564
	cmp r0, r3
	bne _021A0562
	mov r0, ip
	cmp r0, #1
	bne _021A0544
	ldr r0, [sp]
	add r1, r2, #0
	ldr r0, [r0, #4]
	mov r2, #0
	bl sub_020083C0
_021A0544:
	ldr r4, [sp]
	ldr r0, [sp]
	add r4, #0xc
	ldrh r1, [r4, r6]
	ldr r0, [r0, #4]
	bl sub_020085E0
	ldr r0, [sp]
	mov r2, #0
	strh r2, [r4, r6]
	mov r1, #6
	add r0, r0, r6
	strh r1, [r0, #0xe]
	str r2, [r0, #0x10]
	b _021A056A
_021A0562:
	add r0, r0, #1
_021A0564:
	add r1, r1, #1
	cmp r1, r7
	ble _021A051E
_021A056A:
	ldr r0, [sp]
	bl ovy142_21a05b4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A0574: .word 0x0000027E
	thumb_func_end ovy142_21a050c

	thumb_func_start ovy142_21a0578
ovy142_21a0578: ; 0x021A0578
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _021A05B0 ; =0x00000266
	add r7, r2, #0
	mov r0, #0
_021A0584:
	lsl r4, r0, #3
	add r2, r5, r4
	ldrh r2, [r2, #0xc]
	cmp r2, #0
	bne _021A05A6
	lsl r1, r6, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	mov r2, #1
	bl sub_020083C0
	add r1, r5, r4
	strh r6, [r1, #0xc]
	strh r7, [r1, #0xe]
	mov r0, #1
	str r0, [r1, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021A05A6:
	add r0, r0, #1
	cmp r0, r1
	ble _021A0584
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A05B0: .word 0x00000266
	thumb_func_end ovy142_21a0578

	thumb_func_start ovy142_21a05b4
ovy142_21a05b4: ; 0x021A05B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	mov r0, #0
	mov lr, r0
	ldr r0, _021A060C ; =0x00000266
	sub r0, r0, #1
	mov ip, r0
_021A05C4:
	mov r0, lr
	add r3, r0, #1
	ldr r0, _021A060C ; =0x00000266
	cmp r3, r0
	bgt _021A05FA
	mov r0, lr
	lsl r0, r0, #3
	add r4, r7, r0
_021A05D4:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _021A05F2
	lsl r0, r3, #3
	add r1, r7, r0
	ldr r2, [r4, #0xc]
	ldr r5, [r4, #0x10]
	ldr r0, [r1, #0xc]
	ldr r6, [r1, #0x10]
	str r2, [sp]
	str r0, [r4, #0xc]
	str r6, [r4, #0x10]
	str r2, [r1, #0xc]
	str r5, [sp, #4]
	str r5, [r1, #0x10]
_021A05F2:
	ldr r0, _021A060C ; =0x00000266
	add r3, r3, #1
	cmp r3, r0
	ble _021A05D4
_021A05FA:
	mov r0, lr
	add r1, r0, #1
	mov r0, ip
	mov lr, r1
	cmp r1, r0
	ble _021A05C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A060C: .word 0x00000266
	thumb_func_end ovy142_21a05b4

	thumb_func_start ovy142_21a0610
ovy142_21a0610: ; 0x021A0610
	push {r3, r4, r5, r6}
	ldr r4, _021A0638 ; =0x0000027E
	mov r3, #0
	mov r2, #0
_021A0618:
	lsl r5, r2, #3
	add r6, r0, r5
	ldrh r5, [r6, #0xe]
	cmp r1, r5
	bne _021A062A
	ldrh r5, [r6, #0xc]
	cmp r5, #0
	beq _021A062A
	add r3, r3, #1
_021A062A:
	add r2, r2, #1
	cmp r2, r4
	ble _021A0618
	add r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021A0638: .word 0x0000027E
	thumb_func_end ovy142_21a0610

	thumb_func_start ovy142_21a063c
ovy142_21a063c: ; 0x021A063C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r5, _021A0690 ; =0x021A1120
	add r4, sp, #0
	add r3, r0, #0
	add r2, r1, #0
	ldmia r5!, {r0, r1}
	add r7, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	mov r6, #0
	lsl r5, r2, #2
_021A065A:
	cmp r2, #0
	bne _021A0668
	lsl r0, r6, #3
	add r1, r3, r0
	mov r0, #1
	str r0, [r1, #0x10]
	b _021A067C
_021A0668:
	lsl r0, r6, #3
	add r4, r3, r0
	ldrh r1, [r4, #0xe]
	ldr r0, [r7, r5]
	cmp r1, r0
	bne _021A0678
	mov r0, #1
	b _021A067A
_021A0678:
	mov r0, #0
_021A067A:
	str r0, [r4, #0x10]
_021A067C:
	ldr r0, _021A0694 ; =0x00000266
	add r6, r6, #1
	cmp r6, r0
	ble _021A065A
	add r0, r3, #0
	add r1, r2, #0
	bl ovy142_21a071c
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0690: .word 0x021A1120
_021A0694: .word 0x00000266
	thumb_func_end ovy142_21a063c

	thumb_func_start ovy142_21a0698
ovy142_21a0698: ; 0x021A0698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, _021A0714 ; =0x00001404
	ldr r0, [r5, #4]
	add r1, r5, r1
	mov r4, #0
	bl sub_0200891C
	cmp r6, #5
	beq _021A06EA
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, sp, #0
	bl sub_0200896C
	add r7, r0, #0
	ldr r0, [sp]
	add r6, r4, #0
	cmp r0, #0
	bls _021A0710
_021A06C2:
	lsl r0, r6, #2
	ldrh r1, [r7, r0]
	cmp r1, #0
	beq _021A06E0
	ldr r0, _021A0714 ; =0x00001404
	add r2, r5, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _021A06E0
	ldr r0, [r5, #4]
	bl sub_02008308
	cmp r0, #0
	bne _021A06E0
	add r4, r4, #1
_021A06E0:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blo _021A06C2
	b _021A0710
_021A06EA:
	ldr r3, _021A0718 ; =0x0000027E
	add r1, r4, #0
_021A06EE:
	lsl r0, r1, #3
	add r0, r5, r0
	ldrh r2, [r0, #0xc]
	cmp r2, #0
	beq _021A070A
	add r6, r5, r2
	ldr r2, _021A0714 ; =0x00001404
	ldrb r2, [r6, r2]
	cmp r2, #0
	beq _021A070A
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021A070A
	add r4, r4, #1
_021A070A:
	add r1, r1, #1
	cmp r1, r3
	bls _021A06EE
_021A0710:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A0714: .word 0x00001404
_021A0718: .word 0x0000027E
	thumb_func_end ovy142_21a0698

	thumb_func_start ovy142_21a071c
ovy142_21a071c: ; 0x021A071C
	push {r3, lr}
	cmp r1, #5
	bhi _021A0744
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A072E: ; jump table
	.short _021A073A - _021A072E - 2 ; case 0
	.short _021A0740 - _021A072E - 2 ; case 1
	.short _021A0740 - _021A072E - 2 ; case 2
	.short _021A0740 - _021A072E - 2 ; case 3
	.short _021A0740 - _021A072E - 2 ; case 4
	.short _021A0740 - _021A072E - 2 ; case 5
_021A073A:
	bl ovy142_21a0748
	pop {r3, pc}
_021A0740:
	bl ovy142_21a07f4
_021A0744:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy142_21a071c

	thumb_func_start ovy142_21a0748
ovy142_21a0748: ; 0x021A0748
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _021A07E0 ; =0x0000020D
	ldr r1, _021A07E4 ; =0x00001DE8
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, _021A07E8 ; =0x021A1694
	ldrh r0, [r0, #8]
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #5
	ldr r0, [r0, #4]
	bl sub_020084F8
	str r0, [sp, #4]
	cmp r0, #0
	ble _021A07A0
_021A0774:
	ldr r0, [sp, #8]
	lsl r1, r4, #3
	add r6, r0, r1
	ldrh r3, [r6, #0xc]
	add r7, r4, #0
	mov r0, #0xc
	mul r7, r0
	ldr r0, _021A07EC ; =0x021A1138
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	add r2, r5, r7
	add r4, r4, #1
	lsl r0, r0, #0x10
	add r0, r3, r0
	str r0, [r2, #8]
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	str r1, [r5, r7]
	str r0, [r2, #4]
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _021A0774
_021A07A0:
	ldr r1, [sp, #4]
	mov r4, #0
	ldr r3, _021A07F0 ; =0x021A03D5
	add r0, r5, #0
	mov r2, #0xc
	str r4, [sp]
	blx MATH_QSort
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021A07D4
	mov r1, #0xc
_021A07B8:
	add r3, r4, #0
	lsl r2, r4, #3
	ldr r0, [sp, #8]
	mul r3, r1
	add r0, r0, r2
	add r2, r5, r3
	ldr r3, [r5, r3]
	ldr r2, [r2, #4]
	add r4, r4, #1
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _021A07B8
_021A07D4:
	add r0, r5, #0
	bl sub_0203A24C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A07E0: .word 0x0000020D
_021A07E4: .word 0x00001DE8
_021A07E8: .word 0x021A1694
_021A07EC: .word 0x021A1138
_021A07F0: .word 0x021A03D5
	thumb_func_end ovy142_21a0748

	thumb_func_start ovy142_21a07f4
ovy142_21a07f4: ; 0x021A07F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	ldr r0, _021A08D0 ; =0x00000236
	ldr r1, _021A08D4 ; =0x00001DE8
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _021A08D8 ; =0x021A1694
	ldrh r0, [r0, #8]
	mov r2, #0
	mov r5, #0
	bl sub_0203A1FC
	add r6, r0, #0
	ldr r0, [sp, #4]
	mov r1, #5
	ldr r0, [r0, #4]
	bl sub_020084F8
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldrh r0, [r0, #8]
	bl sub_02026720
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021A088C
	ldr r4, [sp, #4]
	add r4, #0xc
_021A0830:
	lsl r0, r5, #3
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldrh r1, [r4, r1]
	ldrh r2, [r2, #8]
	ldr r0, [sp, #8]
	bl sub_0202672C
	mov r1, #0xc
	mul r1, r5
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r7, r6, r1
	mov r1, #0xf
	bl sub_02026820
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0x11
	bl sub_02026820
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	ldrh r2, [r4, r1]
	ldr r1, [sp, #0x20]
	lsl r1, r1, #0x1c
	add r0, r1, r0
	add r0, r2, r0
	str r0, [r7, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r4, r0]
	ldr r2, [r1, #4]
	ldr r1, [sp, #0x1c]
	str r0, [r6, r1]
	ldr r0, [sp, #0x18]
	str r2, [r7, #4]
	bl sub_0203A24C
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _021A0830
_021A088C:
	ldr r0, [sp, #8]
	bl sub_0204AB0C
	mov r4, #0
	ldr r1, [sp, #0x10]
	ldr r3, _021A08DC ; =0x021A03D5
	add r0, r6, #0
	mov r2, #0xc
	str r4, [sp]
	blx MATH_QSort
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021A08C6
	mov r1, #0xc
_021A08AA:
	add r3, r4, #0
	lsl r2, r4, #3
	ldr r0, [sp, #4]
	mul r3, r1
	add r0, r0, r2
	add r2, r6, r3
	ldr r3, [r6, r3]
	ldr r2, [r2, #4]
	add r4, r4, #1
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blt _021A08AA
_021A08C6:
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021A08D0: .word 0x00000236
_021A08D4: .word 0x00001DE8
_021A08D8: .word 0x021A1694
_021A08DC: .word 0x021A03D5
	thumb_func_end ovy142_21a07f4

	.rodata
_021A08E0:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x5C, 0x74, 0xEA, 0x00, 0x74, 0x8C, 0xEA, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x60, 0x8F, 0x80, 0xE7, 0xA8, 0xBF, 0xE0, 0xF7, 0xFF, 0x00, 0x00, 0x00
	.byte 0x45, 0xC4, 0x19, 0x02, 0xB5, 0xC6, 0x19, 0x02, 0x41, 0xC7, 0x19, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x00
	.byte 0x9A, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00
	.byte 0x92, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC2, 0x01, 0x01, 0x00, 0x55, 0xA3, 0x19, 0x02, 0xBA, 0x01, 0x01, 0x00, 0xC5, 0xA3, 0x19, 0x02
	.byte 0xB5, 0x01, 0x01, 0x00, 0xD5, 0xA3, 0x19, 0x02, 0x5E, 0x00, 0x01, 0x00, 0xF5, 0xA3, 0x19, 0x02
	.byte 0xBF, 0x01, 0x01, 0x00, 0x05, 0xA4, 0x19, 0x02, 0xD1, 0x01, 0x01, 0x00, 0xE5, 0xA3, 0x19, 0x02
	.byte 0xD7, 0x01, 0x01, 0x00, 0x41, 0xA4, 0x19, 0x02, 0x4E, 0x00, 0x01, 0x00, 0x61, 0xA4, 0x19, 0x02
	.byte 0x6D, 0x02, 0x01, 0x00, 0x81, 0xA4, 0x19, 0x02, 0x72, 0x02, 0x01, 0x00, 0x81, 0xA4, 0x19, 0x02
	.byte 0x73, 0x02, 0x01, 0x00, 0x91, 0xA4, 0x19, 0x02, 0x66, 0x8F, 0x00, 0x27, 0x70, 0x9B, 0x24, 0x47
	.byte 0x6D, 0x8F, 0x44, 0x6B, 0x48, 0x6C, 0x3B, 0x6D, 0x08, 0x4B, 0x32, 0x5F, 0x24, 0x65, 0x00, 0x32
	.byte 0xA8, 0xBF, 0x00, 0x17, 0xA8, 0xBF, 0x78, 0x8F, 0xA8, 0xBF, 0x98, 0xAF, 0xA8, 0xBF, 0xB0, 0xBF
	.byte 0xA8, 0xBF, 0xC0, 0xD7, 0xA8, 0xBF, 0xE0, 0xF7, 0x0C, 0x23, 0x90, 0xDF, 0x24, 0x3B, 0x90, 0xDF
	.byte 0x3C, 0x53, 0x90, 0xDF, 0x54, 0x6B, 0x90, 0xDF, 0x6C, 0x83, 0x90, 0xDF, 0x84, 0x9B, 0x90, 0xDF
	.byte 0x0C, 0x23, 0x78, 0x8F, 0x24, 0x3B, 0x78, 0x8F, 0x3C, 0x53, 0x78, 0x8F, 0x54, 0x6B, 0x78, 0x8F
	.byte 0x6C, 0x83, 0x78, 0x8F, 0x84, 0x9B, 0x78, 0x8F, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x01, 0x02, 0x02
	.byte 0x00, 0x02, 0x02, 0x02, 0x02, 0x00, 0x01, 0x01, 0x02, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02
	.byte 0x01, 0x02, 0x02, 0x01, 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x01, 0x01, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0xD2, 0x01, 0xB8, 0x00
	.byte 0x49, 0x01, 0x90, 0x01, 0x20, 0x01, 0x75, 0x00, 0x1F, 0x01, 0x7D, 0x01, 0xCC, 0x01, 0xFF, 0x00
	.byte 0x58, 0x01, 0x86, 0x00, 0xC6, 0x00, 0x61, 0x01, 0x37, 0x00, 0x4E, 0x01, 0x07, 0x00, 0x2E, 0x00
	.byte 0xD3, 0x00, 0x0C, 0x00, 0x34, 0x01, 0xAB, 0x00, 0x0A, 0x01, 0xD0, 0x00, 0xC1, 0x01, 0xA9, 0x00
	.byte 0x84, 0x01, 0x0C, 0x01, 0xA7, 0x00, 0xAA, 0x01, 0xEA, 0x00, 0x17, 0x01, 0x8D, 0x00, 0x8E, 0x00
	.byte 0xC7, 0x00, 0x83, 0x01, 0x92, 0x00, 0x09, 0x01, 0x8C, 0x00, 0x08, 0x01, 0xE6, 0x00, 0x12, 0x00
	.byte 0x8F, 0x01, 0xCF, 0x00, 0x5D, 0x01, 0xD8, 0x00, 0x30, 0x00, 0x2F, 0x00, 0x68, 0x01, 0x57, 0x01
	.byte 0x04, 0x02, 0x56, 0x01, 0x2B, 0x01, 0xC3, 0x00, 0x72, 0x00, 0xE8, 0x01, 0xEC, 0x01, 0xF8, 0x01
	.byte 0xE4, 0x01, 0xF4, 0x01, 0xF0, 0x01, 0x4A, 0x01, 0xA3, 0x00, 0x21, 0x00, 0xFF, 0x01, 0x71, 0x01
	.byte 0x1B, 0x00, 0xDD, 0x01, 0x9D, 0x01, 0x9E, 0x01, 0x75, 0x01, 0x24, 0x00, 0x01, 0x02, 0xBA, 0x00
	.byte 0xC2, 0x01, 0x0B, 0x01, 0x91, 0x00, 0x7E, 0x01, 0xC0, 0x01, 0x19, 0x01, 0x9E, 0x00, 0xCA, 0x01
	.byte 0xD9, 0x01, 0xE8, 0x00, 0xCD, 0x01, 0x15, 0x00, 0x39, 0x01, 0x17, 0x00, 0xB7, 0x01, 0xB9, 0x01
	.byte 0x24, 0x01, 0xC9, 0x00, 0xCE, 0x00, 0xC1, 0x00, 0x4F, 0x00, 0xB6, 0x01, 0xB2, 0x00, 0x8A, 0x01
	.byte 0x3F, 0x00, 0xCC, 0x00, 0x78, 0x00, 0x29, 0x01, 0x0A, 0x00, 0xA5, 0x01, 0x67, 0x01, 0x9C, 0x01
	.byte 0x87, 0x00, 0x6E, 0x00, 0x2F, 0x01, 0x28, 0x01, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x79, 0x00, 0x9F, 0x01, 0x2D, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC4, 0x01, 0x03, 0x00, 0xFE, 0x00, 0xBB, 0x00, 0x9A, 0x00, 0x8D, 0x01
	.byte 0xC8, 0x01, 0xD6, 0x00, 0xF3, 0x00, 0x7F, 0x01, 0x28, 0x00, 0x26, 0x00, 0x29, 0x00, 0x2A, 0x00
	.byte 0x27, 0x00, 0x36, 0x00, 0x38, 0x00, 0x3B, 0x01, 0x69, 0x01, 0x0B, 0x00, 0xEB, 0x00, 0x2D, 0x01
	.byte 0x3D, 0x01, 0xFB, 0x00, 0xA4, 0x01, 0x9C, 0x00, 0xE1, 0x01, 0x05, 0x01, 0x04, 0x00, 0xD1, 0x00
	.byte 0x6C, 0x01, 0x25, 0x00, 0x1E, 0x01, 0xDC, 0x01, 0x40, 0x01, 0x4D, 0x01, 0xE2, 0x00, 0x60, 0x01
	.byte 0xCD, 0x00, 0xBC, 0x00, 0xC6, 0x01, 0x49, 0x00, 0x06, 0x01, 0x64, 0x01, 0x22, 0x01, 0xAF, 0x01
	.byte 0x31, 0x01, 0xDA, 0x01, 0x85, 0x00, 0x11, 0x00, 0x26, 0x01, 0x36, 0x01, 0xD7, 0x01, 0x85, 0x01
	.byte 0xFE, 0x01, 0x3E, 0x00, 0xE1, 0x00, 0xA0, 0x01, 0x43, 0x00, 0x38, 0x01, 0xC7, 0x01, 0x35, 0x00
	.byte 0xE0, 0x00, 0xC4, 0x00, 0x45, 0x00, 0x0E, 0x00, 0x39, 0x00, 0xEE, 0x00, 0xAD, 0x00, 0x91, 0x01
	.byte 0x3E, 0x01, 0x08, 0x00, 0xE5, 0x00, 0xB8, 0x01, 0x8F, 0x00, 0x14, 0x01, 0x4E, 0x00, 0xDD, 0x00
	.byte 0x8C, 0x01, 0x2B, 0x00, 0xDE, 0x01, 0x01, 0x01, 0x97, 0x00, 0x62, 0x01, 0xAC, 0x01, 0x10, 0x01
	.byte 0x3B, 0x00, 0xE3, 0x00, 0xA2, 0x01, 0x06, 0x00, 0x40, 0x00, 0xAD, 0x01, 0x70, 0x00, 0x6F, 0x00
	.byte 0xA8, 0x01, 0x93, 0x00, 0xA5, 0x00, 0xF9, 0x00, 0x92, 0x01, 0x11, 0x01, 0xE9, 0x00, 0x7E, 0x00
	.byte 0xF0, 0x00, 0xAB, 0x01, 0xC5, 0x00, 0x16, 0x01, 0x1C, 0x00, 0x1A, 0x00, 0x04, 0x01, 0x1D, 0x01
	.byte 0x98, 0x01, 0x47, 0x01, 0x21, 0x01, 0xAE, 0x01, 0xD1, 0x01, 0x34, 0x00, 0x7C, 0x00, 0xA1, 0x01
	.byte 0xD4, 0x01, 0x9A, 0x01, 0x93, 0x01, 0xE7, 0x00, 0xFA, 0x00, 0x12, 0x01, 0xC9, 0x01, 0xBB, 0x01
	.byte 0x74, 0x01, 0x23, 0x00, 0x41, 0x01, 0xB9, 0x00, 0x00, 0x02, 0xE0, 0x01, 0x1A, 0x01, 0xE2, 0x01
	.byte 0x95, 0x00, 0xF1, 0x00, 0xEF, 0x00, 0x53, 0x01, 0xCF, 0x01, 0xA0, 0x00, 0x63, 0x01, 0xA6, 0x00
	.byte 0x05, 0x02, 0x13, 0x01, 0xD9, 0x00, 0xE4, 0x00, 0x71, 0x00, 0x1D, 0x00, 0xD5, 0x00, 0xA9, 0x01
	.byte 0xCA, 0x00, 0x50, 0x00, 0xBD, 0x00, 0x3C, 0x00, 0xBC, 0x01, 0x52, 0x01, 0x51, 0x01, 0x54, 0x01
	.byte 0x50, 0x01, 0x4F, 0x01, 0x55, 0x01, 0x99, 0x01, 0x18, 0x00, 0x3D, 0x00, 0xA1, 0x00, 0xB0, 0x01
	.byte 0x03, 0x02, 0x0D, 0x01, 0xD4, 0x00, 0x9F, 0x00, 0xD0, 0x01, 0x88, 0x00, 0xA6, 0x01, 0x15, 0x01
	.byte 0xD7, 0x00, 0xBD, 0x01, 0xB1, 0x01, 0x7B, 0x00, 0x80, 0x00, 0xDA, 0x00, 0x27, 0x01, 0x88, 0x01
	.byte 0xAA, 0x00, 0xDB, 0x01, 0x8B, 0x01, 0xF8, 0x00, 0x5F, 0x01, 0x5C, 0x01, 0x8A, 0x00, 0x02, 0x01
	.byte 0x84, 0x00, 0x6D, 0x01, 0x6A, 0x01, 0x6B, 0x01, 0x2D, 0x02, 0x14, 0x02, 0x3A, 0x02, 0x0E, 0x02
	.byte 0x41, 0x02, 0x61, 0x02, 0x2B, 0x02, 0x0C, 0x02, 0x64, 0x02, 0x2C, 0x02, 0x56, 0x02, 0x5A, 0x02
	.byte 0x2F, 0x02, 0x0A, 0x02, 0x2E, 0x02, 0x31, 0x02, 0x37, 0x02, 0x3C, 0x02, 0x5B, 0x02, 0x47, 0x02
	.byte 0x27, 0x02, 0x51, 0x02, 0x4F, 0x02, 0x5E, 0x02, 0x5D, 0x02, 0x17, 0x02, 0x40, 0x02, 0x11, 0x02
	.byte 0x38, 0x02, 0x4A, 0x02, 0x0B, 0x02, 0x13, 0x02, 0x3D, 0x02, 0x4E, 0x02, 0x20, 0x02, 0x4D, 0x02
	.byte 0x48, 0x02, 0x1E, 0x02, 0x45, 0x02, 0x07, 0x02, 0x60, 0x02, 0x1C, 0x02, 0x1F, 0x02, 0x3E, 0x02
	.byte 0x09, 0x02, 0x5C, 0x02, 0x32, 0x02, 0x46, 0x02, 0x18, 0x02, 0x33, 0x02, 0x08, 0x02, 0x25, 0x02
	.byte 0x1A, 0x02, 0x1D, 0x02, 0x49, 0x02, 0x23, 0x02, 0x0F, 0x02, 0x4C, 0x02, 0x30, 0x02, 0x3B, 0x02
	.byte 0x68, 0x02, 0x06, 0x02, 0x19, 0x02, 0x1B, 0x02, 0x4B, 0x02, 0x34, 0x02, 0x3F, 0x02, 0x28, 0x02
	.byte 0x42, 0x02, 0x21, 0x02, 0x52, 0x02, 0x65, 0x02, 0x5F, 0x02, 0x2A, 0x02, 0x59, 0x02, 0x54, 0x02
	.byte 0x39, 0x02, 0x0D, 0x02, 0x26, 0x02, 0x43, 0x02, 0x6A, 0x02, 0x15, 0x02, 0x69, 0x02, 0x36, 0x02
	.byte 0x16, 0x02, 0x29, 0x02, 0x58, 0x02, 0x35, 0x02, 0x63, 0x02, 0x55, 0x02, 0x22, 0x02, 0x62, 0x02
	.byte 0x10, 0x02, 0x24, 0x02, 0x57, 0x02, 0x53, 0x02, 0x66, 0x02, 0x12, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x96, 0x00, 0xF5, 0x00, 0x8E, 0x01, 0x4B, 0x01, 0x46, 0x01, 0xDF, 0x00, 0x95, 0x01, 0x98, 0x00
	.byte 0x94, 0x01, 0x30, 0x01, 0xE3, 0x01, 0x2A, 0x01, 0xAC, 0x00, 0x70, 0x01, 0xCE, 0x01, 0xD6, 0x01
	.byte 0x44, 0x00, 0x2C, 0x01, 0xB1, 0x00, 0xC3, 0x01, 0xB3, 0x01, 0x45, 0x01, 0x14, 0x00, 0xBF, 0x01
	.byte 0x25, 0x01, 0xFC, 0x00, 0x0F, 0x01, 0x0D, 0x00, 0xB5, 0x01, 0x48, 0x00, 0x03, 0x01, 0x32, 0x01
	.byte 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0xBE, 0x01, 0x97, 0x01, 0xD5, 0x01, 0xB3, 0x00, 0x96, 0x01
	.byte 0x09, 0x00, 0xD3, 0x01, 0x13, 0x00, 0x7A, 0x00, 0x20, 0x00, 0xA7, 0x01, 0x41, 0x00, 0x31, 0x00
	.byte 0x10, 0x00, 0xB4, 0x01, 0x73, 0x01, 0xF6, 0x00, 0x35, 0x01, 0x00, 0x01, 0xA3, 0x01, 0x66, 0x01
	.byte 0x1C, 0x01, 0x6E, 0x01, 0x1F, 0x00, 0x02, 0x02, 0xBF, 0x00, 0x44, 0x01, 0xDF, 0x01, 0x1E, 0x00
	.byte 0x99, 0x00, 0xEC, 0x00, 0xFD, 0x00, 0xCB, 0x00, 0xF7, 0x00, 0xA8, 0x00, 0x18, 0x01, 0xB2, 0x01
	.byte 0x33, 0x01, 0x3F, 0x01, 0xAE, 0x00, 0xCB, 0x01, 0x65, 0x01, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00
	.byte 0x56, 0x00, 0x57, 0x00, 0x58, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x5B, 0x00, 0x5C, 0x00, 0x5D, 0x00
	.byte 0x5E, 0x00, 0x5F, 0x00, 0x60, 0x00, 0x61, 0x00, 0x62, 0x00, 0x63, 0x00, 0x64, 0x00, 0x65, 0x00
	.byte 0x66, 0x00, 0x67, 0x00, 0x68, 0x00, 0x69, 0x00, 0x6A, 0x00, 0x6B, 0x00, 0x6C, 0x00, 0x6D, 0x00
	.byte 0xDE, 0x00, 0xF4, 0x00, 0x72, 0x01, 0x22, 0x00, 0x90, 0x00, 0x5A, 0x01, 0x94, 0x00, 0xA2, 0x00
	.byte 0x89, 0x01, 0x05, 0x00, 0x6F, 0x01, 0x86, 0x01, 0x19, 0x00, 0x02, 0x00, 0x33, 0x00, 0x89, 0x00
	.byte 0x9D, 0x00, 0xD8, 0x01, 0x8B, 0x00, 0xB7, 0x00, 0xD2, 0x00, 0x9B, 0x00, 0x48, 0x01, 0xC0, 0x00
	.byte 0xA4, 0x00, 0x5E, 0x01, 0x2C, 0x00, 0x87, 0x01, 0xB0, 0x00, 0x7D, 0x00, 0x51, 0x00, 0xBA, 0x01
	.byte 0x23, 0x01, 0xC8, 0x00, 0x1B, 0x01, 0x81, 0x01, 0xAF, 0x00, 0x42, 0x00, 0xC5, 0x01, 0x59, 0x01
	.byte 0x4D, 0x00, 0x43, 0x01, 0xED, 0x00, 0x37, 0x01, 0x81, 0x00, 0x4C, 0x01, 0x5B, 0x01, 0x7F, 0x00
	.byte 0x0F, 0x00, 0x16, 0x00, 0x3A, 0x01, 0x47, 0x00, 0x77, 0x01, 0x7A, 0x01, 0x79, 0x01, 0x7C, 0x01
	.byte 0x76, 0x01, 0x7B, 0x01, 0x78, 0x01, 0x32, 0x00, 0x73, 0x00, 0xF9, 0x01, 0xF5, 0x01, 0xF1, 0x01
	.byte 0xED, 0x01, 0xE9, 0x01, 0xE5, 0x01, 0xFA, 0x01, 0xF6, 0x01, 0xF2, 0x01, 0xEE, 0x01, 0xEA, 0x01
	.byte 0xE6, 0x01, 0xFB, 0x01, 0xF7, 0x01, 0xF3, 0x01, 0xEF, 0x01, 0xEB, 0x01, 0xE7, 0x01, 0x01, 0x00
	.byte 0xDB, 0x00, 0xDC, 0x00, 0x80, 0x01, 0x74, 0x00, 0xF2, 0x00, 0x52, 0x00, 0x67, 0x02, 0x44, 0x02
	.byte 0x50, 0x02, 0xFC, 0x01, 0x00, 0x00, 0xB4, 0x00, 0xB5, 0x00, 0xB6, 0x00, 0xFD, 0x01, 0x0E, 0x01
	.byte 0x76, 0x00, 0x77, 0x00, 0x3C, 0x01, 0x2E, 0x01, 0x9B, 0x01, 0x42, 0x01, 0xC2, 0x00, 0x46, 0x00
	.byte 0x82, 0x00, 0x83, 0x00, 0x82, 0x01, 0x00, 0x00, 0x61, 0x77, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00
	.byte 0x04, 0x05, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x78, 0xAD, 0xC0, 0xE0, 0x00, 0x00, 0x00
	.byte 0x0E, 0x0C, 0x0A, 0x0C, 0x10, 0x10, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x09, 0x04
	.byte 0x08, 0x03, 0x06, 0x01, 0x07, 0x02, 0x05, 0x00, 0x0B, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x64, 0x00
	.byte 0x64, 0x00, 0x64, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1D, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1D, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1E, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x01, 0x2F, 0x02, 0xDC, 0x00
	.byte 0x7A, 0x01, 0xD1, 0x01, 0x4D, 0x01, 0x82, 0x00, 0x4C, 0x01, 0xB5, 0x01, 0x26, 0x02, 0x2C, 0x01
	.byte 0x89, 0x01, 0x97, 0x00, 0xEC, 0x00, 0x97, 0x01, 0x41, 0x00, 0x7F, 0x01, 0x0A, 0x00, 0x36, 0x00
	.byte 0xFD, 0x00, 0x10, 0x00, 0x62, 0x01, 0xCD, 0x00, 0x37, 0x01, 0xF9, 0x00, 0x12, 0x02, 0xCB, 0x00
	.byte 0xBF, 0x01, 0x39, 0x01, 0xC7, 0x00, 0xF5, 0x01, 0x15, 0x01, 0x44, 0x01, 0xA2, 0x00, 0xA3, 0x00
	.byte 0xED, 0x00, 0xBE, 0x01, 0xA7, 0x00, 0x36, 0x01, 0x9F, 0x00, 0x35, 0x01, 0x11, 0x01, 0x16, 0x00
	.byte 0xD0, 0x01, 0xF7, 0x00, 0x8F, 0x01, 0x03, 0x01, 0x39, 0x00, 0x37, 0x00, 0x9F, 0x01, 0x88, 0x01
	.byte 0x69, 0x02, 0x87, 0x01, 0x58, 0x01, 0xE7, 0x00, 0x7E, 0x00, 0x4C, 0x02, 0x50, 0x02, 0x5D, 0x02
	.byte 0x48, 0x02, 0x59, 0x02, 0x55, 0x02, 0x7B, 0x01, 0xC1, 0x00, 0x26, 0x00, 0x64, 0x02, 0xA8, 0x01
	.byte 0x1F, 0x00, 0x3E, 0x02, 0xE3, 0x01, 0xE4, 0x01, 0xAC, 0x01, 0x29, 0x00, 0x66, 0x02, 0xDE, 0x00
	.byte 0x13, 0x02, 0x38, 0x01, 0xA6, 0x00, 0xB6, 0x01, 0x11, 0x02, 0x46, 0x01, 0xB7, 0x00, 0x23, 0x02
	.byte 0x3A, 0x02, 0x13, 0x01, 0x27, 0x02, 0x19, 0x00, 0x68, 0x01, 0x1B, 0x00, 0x03, 0x02, 0x05, 0x02
	.byte 0x51, 0x01, 0xEF, 0x00, 0xF6, 0x00, 0xE5, 0x00, 0x5A, 0x00, 0x02, 0x02, 0xD5, 0x00, 0xCA, 0x01
	.byte 0x49, 0x00, 0xF2, 0x00, 0x85, 0x00, 0x56, 0x01, 0x0D, 0x00, 0xEB, 0x01, 0x9E, 0x01, 0xE2, 0x01
	.byte 0x98, 0x00, 0x79, 0x00, 0x5C, 0x01, 0x55, 0x01, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x87, 0x00, 0xE5, 0x01, 0x35, 0x00, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x17, 0x02, 0x04, 0x00, 0x2B, 0x01, 0xDF, 0x00, 0xB2, 0x00, 0xCE, 0x01
	.byte 0x1E, 0x02, 0x01, 0x01, 0x1F, 0x01, 0xB7, 0x01, 0x2E, 0x00, 0x2C, 0x00, 0x2F, 0x00, 0x30, 0x00
	.byte 0x2D, 0x00, 0x40, 0x00, 0x42, 0x00, 0x6A, 0x01, 0xA0, 0x01, 0x0E, 0x00, 0x16, 0x01, 0x5A, 0x01
	.byte 0x6C, 0x01, 0x28, 0x01, 0xEA, 0x01, 0xB4, 0x00, 0x42, 0x02, 0x32, 0x01, 0x06, 0x00, 0xFA, 0x00
	.byte 0xA3, 0x01, 0x2A, 0x00, 0x4B, 0x01, 0x3D, 0x02, 0x6F, 0x01, 0x7E, 0x01, 0x0D, 0x01, 0x95, 0x01
	.byte 0xF4, 0x00, 0xE0, 0x00, 0x1A, 0x02, 0x53, 0x00, 0x33, 0x01, 0x9A, 0x01, 0x4F, 0x01, 0xFB, 0x01
	.byte 0x5F, 0x01, 0x3B, 0x02, 0x96, 0x00, 0x15, 0x00, 0x53, 0x01, 0x64, 0x01, 0x37, 0x02, 0xC0, 0x01
	.byte 0x63, 0x02, 0x48, 0x00, 0x0C, 0x01, 0xE6, 0x01, 0x4D, 0x00, 0x66, 0x01, 0x1B, 0x02, 0x3F, 0x00
	.byte 0x0B, 0x01, 0xE9, 0x00, 0x4F, 0x00, 0x12, 0x00, 0x43, 0x00, 0x19, 0x01, 0xCF, 0x00, 0xD3, 0x01
	.byte 0x6D, 0x01, 0x0B, 0x00, 0x10, 0x01, 0x04, 0x02, 0xA4, 0x00, 0x41, 0x01, 0x58, 0x00, 0x08, 0x01
	.byte 0xCD, 0x01, 0x31, 0x00, 0x3F, 0x02, 0x2E, 0x01, 0xAD, 0x00, 0x98, 0x01, 0xF8, 0x01, 0x3D, 0x01
	.byte 0x45, 0x00, 0x0E, 0x01, 0xE8, 0x01, 0x09, 0x00, 0x4A, 0x00, 0xF9, 0x01, 0x7B, 0x00, 0x7A, 0x00
	.byte 0xF2, 0x01, 0xA8, 0x00, 0xC4, 0x00, 0x26, 0x01, 0xD6, 0x01, 0x3E, 0x01, 0x14, 0x01, 0x8D, 0x00
	.byte 0x1B, 0x01, 0xF6, 0x01, 0xEB, 0x00, 0x43, 0x01, 0x20, 0x00, 0x1E, 0x00, 0x31, 0x01, 0x4A, 0x01
	.byte 0xDE, 0x01, 0x77, 0x01, 0x4E, 0x01, 0xFA, 0x01, 0x2E, 0x02, 0x3D, 0x00, 0x8B, 0x00, 0xE7, 0x01
	.byte 0x31, 0x02, 0xE0, 0x01, 0xD7, 0x01, 0x12, 0x01, 0x27, 0x01, 0x3F, 0x01, 0x1F, 0x02, 0x07, 0x02
	.byte 0xAB, 0x01, 0x28, 0x00, 0x70, 0x01, 0xDD, 0x00, 0x65, 0x02, 0x41, 0x02, 0x47, 0x01, 0x45, 0x02
	.byte 0xAA, 0x00, 0x1C, 0x01, 0x1A, 0x01, 0x84, 0x01, 0x2B, 0x02, 0xBA, 0x00, 0x99, 0x01, 0xC6, 0x00
	.byte 0x6A, 0x02, 0x40, 0x01, 0x04, 0x01, 0x0F, 0x01, 0x7C, 0x00, 0x21, 0x00, 0xFF, 0x00, 0xF3, 0x01
	.byte 0xF0, 0x00, 0x5B, 0x00, 0xE1, 0x00, 0x46, 0x00, 0x08, 0x02, 0x83, 0x01, 0x82, 0x01, 0x85, 0x01
	.byte 0x81, 0x01, 0x80, 0x01, 0x86, 0x01, 0xDF, 0x01, 0x1C, 0x00, 0x47, 0x00, 0xBB, 0x00, 0xFC, 0x01
	.byte 0x68, 0x02, 0x3A, 0x01, 0xFE, 0x00, 0xB8, 0x00, 0x2C, 0x02, 0x99, 0x00, 0xED, 0x01, 0x42, 0x01
	.byte 0x02, 0x01, 0x0A, 0x02, 0xFD, 0x01, 0x89, 0x00, 0x90, 0x00, 0x05, 0x01, 0x54, 0x01, 0xC4, 0x01
	.byte 0xCC, 0x00, 0x3C, 0x02, 0xCB, 0x01, 0x25, 0x01, 0x94, 0x01, 0x8E, 0x01, 0x9D, 0x00, 0x2F, 0x01
	.byte 0x95, 0x00, 0xA4, 0x01, 0xA1, 0x01, 0xA2, 0x01, 0xF5, 0x00, 0x8A, 0x00, 0x93, 0x01, 0x38, 0x00
	.byte 0xC2, 0x01, 0x2A, 0x02, 0xEA, 0x00, 0x33, 0x00, 0x33, 0x02, 0xF3, 0x00, 0x10, 0x02, 0x1C, 0x02
	.byte 0xFB, 0x00, 0x22, 0x00, 0xF8, 0x00, 0x1D, 0x01, 0x8D, 0x01, 0x9D, 0x01, 0x1D, 0x02, 0xD2, 0x01
	.byte 0xCA, 0x00, 0xF7, 0x01, 0xF1, 0x01, 0x22, 0x02, 0x21, 0x02, 0x9A, 0x00, 0xBC, 0x01, 0x7D, 0x00
	.byte 0x90, 0x01, 0xDC, 0x01, 0x2B, 0x00, 0x86, 0x00, 0xAD, 0x01, 0xF0, 0x01, 0xBC, 0x00, 0xEF, 0x01
	.byte 0xD4, 0x01, 0xB5, 0x00, 0xC8, 0x01, 0x05, 0x00, 0x28, 0x02, 0xAE, 0x00, 0xB9, 0x00, 0xBA, 0x01
	.byte 0x0F, 0x00, 0x20, 0x02, 0x24, 0x01, 0xCC, 0x01, 0x9B, 0x00, 0x5D, 0x01, 0x08, 0x00, 0xC5, 0x00
	.byte 0xA1, 0x00, 0xAF, 0x00, 0xD5, 0x01, 0xBF, 0x00, 0x3E, 0x00, 0xEC, 0x01, 0x00, 0x01, 0x96, 0x01
	.byte 0x44, 0x02, 0x03, 0x00, 0xA0, 0x00, 0xAC, 0x00, 0xDD, 0x01, 0x67, 0x01, 0xBB, 0x01, 0xD3, 0x00
	.byte 0xC5, 0x01, 0xBD, 0x00, 0x09, 0x02, 0x34, 0x02, 0x24, 0x02, 0xE8, 0x00, 0x19, 0x02, 0x0D, 0x02
	.byte 0x92, 0x01, 0x34, 0x00, 0xC9, 0x00, 0xC6, 0x01, 0x54, 0x02, 0x8F, 0x00, 0x47, 0x02, 0x79, 0x01
	.byte 0x92, 0x00, 0xDB, 0x00, 0x16, 0x02, 0x72, 0x01, 0x32, 0x02, 0x0E, 0x02, 0xBE, 0x00, 0x2D, 0x02
	.byte 0x59, 0x00, 0xC2, 0x00, 0x15, 0x02, 0x0C, 0x02, 0x38, 0x02, 0x81, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAB, 0x00, 0x21, 0x01, 0xCF, 0x01, 0x7C, 0x01, 0x76, 0x01, 0x0A, 0x01, 0xD9, 0x01, 0xB0, 0x00
	.byte 0xD8, 0x01, 0x5E, 0x01, 0x46, 0x02, 0x57, 0x01, 0xCE, 0x00, 0xA7, 0x01, 0x29, 0x02, 0x36, 0x02
	.byte 0x4E, 0x00, 0x59, 0x01, 0xD4, 0x00, 0x14, 0x02, 0xFF, 0x01, 0x75, 0x01, 0x18, 0x00, 0x0F, 0x02
	.byte 0x52, 0x01, 0x29, 0x01, 0x3C, 0x01, 0x11, 0x00, 0x01, 0x02, 0x52, 0x00, 0x30, 0x01, 0x60, 0x01
	.byte 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x0B, 0x02, 0xDB, 0x01, 0x35, 0x02, 0xD6, 0x00, 0xDA, 0x01
	.byte 0x0C, 0x00, 0x30, 0x02, 0x17, 0x00, 0x88, 0x00, 0x25, 0x00, 0xEE, 0x01, 0x4B, 0x00, 0x3A, 0x00
	.byte 0x14, 0x00, 0x00, 0x02, 0xAA, 0x01, 0x22, 0x01, 0x63, 0x01, 0x2D, 0x01, 0xE9, 0x01, 0x9C, 0x01
	.byte 0x49, 0x01, 0xA5, 0x01, 0x24, 0x00, 0x67, 0x02, 0xE3, 0x00, 0x74, 0x01, 0x40, 0x02, 0x23, 0x00
	.byte 0xB1, 0x00, 0x17, 0x01, 0x2A, 0x01, 0xF1, 0x00, 0x23, 0x01, 0xC8, 0x00, 0x45, 0x01, 0xFE, 0x01
	.byte 0x61, 0x01, 0x6E, 0x01, 0xD0, 0x00, 0x25, 0x02, 0x9B, 0x01, 0x5E, 0x00, 0x5F, 0x00, 0x60, 0x00
	.byte 0x61, 0x00, 0x62, 0x00, 0x63, 0x00, 0x64, 0x00, 0x65, 0x00, 0x66, 0x00, 0x67, 0x00, 0x68, 0x00
	.byte 0x69, 0x00, 0x6A, 0x00, 0x6B, 0x00, 0x6C, 0x00, 0x6D, 0x00, 0x6E, 0x00, 0x6F, 0x00, 0x70, 0x00
	.byte 0x71, 0x00, 0x72, 0x00, 0x73, 0x00, 0x74, 0x00, 0x75, 0x00, 0x76, 0x00, 0x77, 0x00, 0x78, 0x00
	.byte 0x09, 0x01, 0x20, 0x01, 0xA9, 0x01, 0x27, 0x00, 0xA5, 0x00, 0x8B, 0x01, 0xA9, 0x00, 0xC0, 0x00
	.byte 0xC9, 0x01, 0x07, 0x00, 0xA6, 0x01, 0xC1, 0x01, 0x1D, 0x00, 0x02, 0x00, 0x3C, 0x00, 0x9C, 0x00
	.byte 0xB6, 0x00, 0x39, 0x02, 0x9E, 0x00, 0xDA, 0x00, 0xFC, 0x00, 0xB3, 0x00, 0x78, 0x01, 0xE4, 0x00
	.byte 0xC3, 0x00, 0x91, 0x01, 0x32, 0x00, 0xC3, 0x01, 0xD2, 0x00, 0x8C, 0x00, 0x5C, 0x00, 0x06, 0x02
	.byte 0x50, 0x01, 0xEE, 0x00, 0x48, 0x01, 0xB9, 0x01, 0xD1, 0x00, 0x4C, 0x00, 0x18, 0x02, 0x8A, 0x01
	.byte 0x57, 0x00, 0x73, 0x01, 0x18, 0x01, 0x65, 0x01, 0x91, 0x00, 0x7D, 0x01, 0x8C, 0x01, 0x8E, 0x00
	.byte 0x13, 0x00, 0x1A, 0x00, 0x69, 0x01, 0x51, 0x00, 0xAF, 0x01, 0xB2, 0x01, 0xB1, 0x01, 0xB4, 0x01
	.byte 0xAE, 0x01, 0xB3, 0x01, 0xB0, 0x01, 0x3B, 0x00, 0x7F, 0x00, 0x5E, 0x02, 0x5A, 0x02, 0x56, 0x02
	.byte 0x51, 0x02, 0x4D, 0x02, 0x49, 0x02, 0x5F, 0x02, 0x5B, 0x02, 0x57, 0x02, 0x52, 0x02, 0x4E, 0x02
	.byte 0x4A, 0x02, 0x60, 0x02, 0x5C, 0x02, 0x58, 0x02, 0x53, 0x02, 0x4F, 0x02, 0x4B, 0x02, 0x01, 0x00
	.byte 0x06, 0x01, 0x07, 0x01, 0xB8, 0x01, 0x80, 0x00, 0x1E, 0x01, 0x5D, 0x00, 0x43, 0x02, 0xC7, 0x01
	.byte 0xF4, 0x01, 0x61, 0x02, 0x00, 0x00, 0xD7, 0x00, 0xD8, 0x00, 0xD9, 0x00, 0x62, 0x02, 0x3B, 0x01
	.byte 0x83, 0x00, 0x84, 0x00, 0x6B, 0x01, 0x5B, 0x01, 0xE1, 0x01, 0x71, 0x01, 0xE6, 0x00, 0x50, 0x00
	.byte 0x93, 0x00, 0x94, 0x00, 0xBD, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x74, 0x65, 0x6D, 0x6D, 0x65, 0x6E, 0x75, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00
	.byte 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x50, 0x00
	.byte 0x00, 0x00, 0x50, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x62, 0x61, 0x67, 0x5F, 0x69, 0x74, 0x65, 0x6D, 0x2E, 0x63, 0x00, 0x00
	; 0x021A08E0
