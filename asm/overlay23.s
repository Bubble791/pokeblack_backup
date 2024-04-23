    .include "macros/function.inc"
	.include "overlay23.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy23_216e660
ovy23_216e660: ; 0x0216E660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_02008BD0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	bl MyStatus_GetTrainerGender
	ldr r0, [sp, #0x18]
	bl sub_0201FD00
	str r0, [sp, #0x30]
	bl sub_0201C2C8
	mov r4, #0x9c
	str r4, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	ldr r3, _0216E83C ; =0x0216F8E0
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, #0x74
	add r5, r0, #0
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0204A934
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x58]
	lsl r1, r0, #1
	ldr r0, [sp, #0x2c]
	ldrsh r0, [r0, r1]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x1c]
	bl sub_0201FD34
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne _0216E6C8
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x28]
_0216E6C8:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bgt _0216E6D4
	b _0216E81C
_0216E6D4:
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x24]
_0216E6D8:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	add r7, r0, #4
	ldr r0, [sp, #0x34]
	add r1, r1, r0
	mov r0, #0x30
	mul r0, r1
	str r0, [sp, #0x38]
	add r6, r7, r0
	add r0, r5, #0
	bl sub_0201C404
	mov r0, #0xc
	ldrsh r0, [r6, r0]
	mov r3, #8
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x38]
	str r3, [sp, #0x3c]
	ldrsh r3, [r6, r3]
	ldrh r1, [r7, r1]
	ldrh r2, [r6, #6]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x20]
	lsr r3, r3, #0x18
	bl sub_0201D65C
	ldr r1, [sp, #0x3c]
	ldr r3, [sp, #0x20]
	sub r1, #9
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	str r4, [sp, #0xc]
	str r0, [sp]
	ldr r1, [sp, #0x38]
	ldrh r2, [r6, #4]
	ldrh r1, [r7, r1]
	add r0, r5, #0
	bl sub_0201C464
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl sub_02035964
_0216E742:
	lsl r1, r4, #1
	add r1, r6, r1
	ldrh r1, [r1, #0x10]
	lsl r2, r4, #0x18
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0201D224
	add r4, r4, #1
	cmp r4, #4
	blt _0216E742
	mov r2, #0xa
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x70
	bl sub_0201CD1C
	mov r2, #0xe
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #6
	bl sub_0201CD1C
	mov r2, #0x18
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x46
	bl sub_0201CD1C
	mov r2, #0x1a
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0xd
	bl sub_0201CD1C
	mov r2, #0x1c
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x47
	bl sub_0201CD1C
	mov r2, #0x1e
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0201CD1C
	mov r2, #0x20
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x48
	bl sub_0201CD1C
	mov r2, #0x22
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201CD1C
	mov r2, #0x24
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x49
	bl sub_0201CD1C
	mov r2, #0x26
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x10
	bl sub_0201CD1C
	mov r2, #0x28
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x4a
	bl sub_0201CD1C
	mov r2, #0x2a
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x11
	bl sub_0201CD1C
	mov r2, #0x2c
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x4b
	bl sub_0201CD1C
	mov r2, #0x2e
	ldrsh r2, [r6, r2]
	add r0, r5, #0
	mov r1, #0x12
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	ldr r0, [sp, #0x30]
	add r1, r5, #0
	bl sub_0201FD6C
	ldr r0, [sp, #0x34]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x34]
	cmp r1, r0
	bge _0216E81C
	b _0216E6D8
_0216E81C:
	ldr r0, [sp, #0x2c]
	bl GFL_HeapFree
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x14]
	bl sub_020200AC
	add r0, r5, #0
	bl GFL_HeapFree
	ldr r0, [sp, #0x30]
	bl GFL_HeapFree
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216E83C: .word 0x0216F8E0
	thumb_func_end ovy23_216e660

	thumb_func_start ovy23_216e840
ovy23_216e840: ; 0x0216E840
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy23_216e660
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy23_216e840

	thumb_func_start sub_0216E850
sub_0216E850: ; 0x0216E850
	cmp r0, #1
	bne _0216E85C
	cmp r1, #0
	bne _0216E85C
	mov r0, #0
	bx lr
_0216E85C:
	cmp r0, #1
	bne _0216E868
	cmp r1, #1
	bne _0216E868
	mov r0, #0x52
	bx lr
_0216E868:
	cmp r0, #2
	bne _0216E874
	cmp r1, #0
	bne _0216E874
	mov r0, #0x29
	bx lr
_0216E874:
	cmp r0, #2
	bne _0216E880
	cmp r1, #1
	bne _0216E880
	mov r0, #0x7b
	bx lr
_0216E880:
	mov r0, #0
	bx lr
	thumb_func_end sub_0216E850

	thumb_func_start ovy23_216e884
ovy23_216e884: ; 0x0216E884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #0x20
	add r6, r3, #0
	ldrh r2, [r2]
	ldr r3, _0216E918 ; =0x00007FFF
	str r0, [sp]
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	add r5, r1, #0
	lsl r2, r2, #0x10
	ldr r0, _0216E91C ; =0x0000010D
	ldr r1, [sp]
	lsr r2, r2, #0x10
	bl sub_0204A934
	add r7, r0, #0
	add r0, r6, #0
	bl MyStatus_GetTrainerGender
	add r6, r0, #0
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #8]
	cmp r5, #1
	bne _0216E8C0
	lsl r0, r6, #2
	b _0216E8CA
_0216E8C0:
	cmp r5, #2
	bne _0216E8D2
	lsl r0, r6, #1
	add r0, r0, #1
	lsl r0, r0, #1
_0216E8CA:
	add r1, r7, r0
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	str r0, [r4, #4]
_0216E8D2:
	add r3, sp, #0x20
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	mov r2, #0xb4
	bl GFL_MsgSysLoadData
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0216E850
	add r2, r0, #0
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r1, r2, r1
	ldr r2, [r4, #0x14]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #4]
	bl GFL_MsgDataFree
	add r0, r4, #0
	add r0, #0x18
	bl sub_02029BB0
	add r4, #0x20
	add r0, r4, #0
	bl sub_02029BB0
	add r0, r7, #0
	bl GFL_HeapFree
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216E918: .word 0x00007FFF
_0216E91C: .word 0x0000010D
	thumb_func_end ovy23_216e884

	thumb_func_start ovy23_216e920
ovy23_216e920: ; 0x0216E920
	push {r4, r5, r6, lr}
	add r6, r2, #0
	ldr r2, _0216E96C ; =0x00007FFF
	add r4, r0, #0
	and r3, r2
	add r2, r2, #1
	orr r2, r3
	lsl r2, r2, #0x10
	add r5, r1, #0
	ldr r0, _0216E970 ; =0x0000010D
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl sub_0204A934
	add r4, r0, #0
	add r0, r6, #0
	bl MyStatus_GetTrainerGender
	mov r1, #1
	str r1, [r5]
	mov r1, #0
	str r1, [r5, #8]
	cmp r0, #0
	bne _0216E956
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	b _0216E960
_0216E956:
	cmp r0, #1
	bne _0216E962
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	add r0, r0, #1
_0216E960:
	str r0, [r5, #4]
_0216E962:
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, r5, r6, pc}
	nop
_0216E96C: .word 0x00007FFF
_0216E970: .word 0x0000010D
	thumb_func_end ovy23_216e920

	thumb_func_start ovy23_216e974
ovy23_216e974: ; 0x0216E974
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r2, #0
	add r7, r3, #0
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02017C60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02011040
	str r0, [sp, #8]
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _0216EA88 ; =0x00000149
	ldr r3, _0216EA8C ; =0x0216F8E0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_0201736C
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_02017A04
	str r0, [sp, #0x10]
	add r0, sp, #0x14
	bl sub_02017DDC
	mov r0, #9
	str r0, [sp, #0x14]
	mov r0, #0xe
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0x14
	mov r3, #0
	str r5, [sp]
	bl sub_0201828C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020186B0
	str r5, [sp]
	ldr r2, [r4, #0x4c]
	ldr r3, [sp, #0xc]
	add r0, r7, #0
	mov r1, #1
	bl ovy23_216e884
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x28]
	add r2, r5, #0
	add r3, r7, #0
	bl ovy23_216e660
	add r0, r6, #0
	bl sub_0201736C
	str r0, [r4, #0x34]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	bl sub_021E62A8
	cmp r0, #1
	bne _0216EA22
	ldr r0, [sp, #0x10]
	ldr r2, [r4, #0x24]
	ldr r0, [r0]
	add r1, r6, #0
	bl sub_021E62D8
	add r1, r4, #0
	add r1, #0xe0
	mov r0, #0
	b _0216EA38
_0216EA22:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x24]
	add r2, r5, #0
	add r3, r7, #0
	bl ovy23_216e660
	add r1, r4, #0
	add r1, #0xe0
	mov r0, #1
_0216EA38:
	strb r0, [r1]
	ldr r0, [sp, #4]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xdd
	ldrb r1, [r0]
	mov r0, #0x18
	bic r1, r0
	mov r0, #8
	orr r1, r0
	add r0, r4, #0
	add r0, #0xdd
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xdf
	strb r7, [r0]
	ldr r0, [sp, #8]
	bl sub_020111B0
	bl sub_020111EC
	add r6, r0, #0
	ldr r0, _0216EA90 ; =0x0216F83C
	lsl r5, r6, #3
	ldr r0, [r0, r5]
	bl sub_02005748
	ldr r1, _0216EA94 ; =0x0216F838
	ldr r1, [r1, r5]
	add r1, r1, r0
	mov r0, #0x4a
	lsl r0, r0, #2
	strb r1, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0216EA88: .word 0x00000149
_0216EA8C: .word 0x0216F8E0
_0216EA90: .word 0x0216F83C
_0216EA94: .word 0x0216F838
	thumb_func_end ovy23_216e974

	thumb_func_start ovy23_216ea98
ovy23_216ea98: ; 0x0216EA98
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0201736C
	mov r1, #1
	str r1, [sp]
	ldr r1, [r5, #0x28]
	add r2, r4, #0
	add r3, r6, #0
	bl ovy23_216e660
	add r0, r5, #0
	add r1, r4, #0
	bl ovy23_216f744
	add r0, r5, #0
	add r1, r4, #0
	bl ovy23_216f724
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy23_216ea98

	thumb_func_start ovy23_216eac8
ovy23_216eac8: ; 0x0216EAC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r3, #0
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_02017934
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02010644
	cmp r0, #1
	bne _0216EB26
	add r0, r4, #0
	bl sub_02017C60
	add r5, r0, #0
	bl sub_02017C94
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02018540
	bl sub_0200C1F0
	mov r0, #0
	mov r1, #0
	bl sub_020107F0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_021E98A8
	bl sub_0200C200
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ovy23_216ea98
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0216EB26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy23_216eac8

	thumb_func_start ovy23_216eb2c
ovy23_216eb2c: ; 0x0216EB2C
	push {r4, r5, r6, lr}
	add r5, r2, #0
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_02017934
	add r1, r5, #0
	mov r2, #0
	bl sub_020106AC
	add r0, r5, #0
	bl sub_02017C60
	add r4, r0, #0
	bl sub_02017C94
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02018540
	bl sub_0200C1F0
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl sub_021E98A8
	bl sub_0200C200
	add r2, r4, #0
	add r2, #0xdf
	ldrb r2, [r2]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, #0
	bl ovy23_216ea98
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy23_216eb2c

	thumb_func_start ovy23_216eb80
ovy23_216eb80: ; 0x0216EB80
	push {r4, lr}
	cmp r3, #8
	bne _0216EB8C
	bl ovy23_216eb2c
	pop {r4, pc}
_0216EB8C:
	bl ovy23_216eac8
	add r4, r0, #0
	add r0, #0xdf
	ldrb r0, [r0]
	bl sub_02160488
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy23_216eb80

	thumb_func_start ovy23_216eba0
ovy23_216eba0: ; 0x0216EBA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	add r7, r2, #0
	add r6, r3, #0
	bl MyStatus_GetTrainerGender
	mov r2, #1
	cmp r0, #0
	beq _0216EBB8
	mov r2, #0
_0216EBB8:
	lsl r2, r2, #0x18
	lsl r3, r7, #1
	lsr r2, r2, #0x18
	add r3, #0xb5
	add r2, r2, r3
	add r3, sp, #0x18
	lsl r2, r2, #0x10
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl GFL_MsgSysLoadData
	add r7, r0, #0
	cmp r6, #1
	bne _0216EBDC
	mov r1, #0
	b _0216EBE2
_0216EBDC:
	cmp r6, #2
	bne _0216EBE8
	mov r1, #1
_0216EBE2:
	bl sub_0204898C
	str r0, [r5, #0x68]
_0216EBE8:
	ldr r0, [r5, #0x68]
	str r0, [r4, #0x5c]
	add r0, r7, #0
	bl GFL_MsgDataFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy23_216eba0

	thumb_func_start ovy23_216ebf4
ovy23_216ebf4: ; 0x0216EBF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r2, #0
	add r7, r1, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x28]
	bl sub_02011040
	str r0, [sp, #8]
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0216EC18
	cmp r0, #1
	beq _0216EC18
	cmp r0, #2
	beq _0216EC3E
	b _0216ECE6
_0216EC18:
	ldrb r3, [r5, #5]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	bl ovy23_216e974
	add r4, r0, #0
	ldr r0, _0216ECF4 ; =0x000004B4
	add r1, r4, #0
	strh r0, [r4, #0x18]
	sub r0, #0x38
	strh r0, [r4, #0x1a]
	str r6, [sp]
	ldrb r2, [r5, #5]
	add r0, r5, #0
	mov r3, #1
	bl ovy23_216eba0
	b _0216ECE6
_0216EC3E:
	ldr r3, [r5, #8]
	ldr r1, [sp, #4]
	lsl r3, r3, #0x18
	add r0, r7, #0
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ovy23_216eb80
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xdf
	ldr r0, _0216ECF8 ; =0x0000010D
	ldr r3, _0216ECFC ; =0x00007FFF
	add r2, r6, #0
	and r2, r3
	add r3, r3, #1
	orr r2, r3
	lsl r2, r2, #0x10
	ldrb r1, [r1]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	bl sub_0204A934
	add r7, r0, #0
	mov r0, #0x26
	ldrsh r0, [r7, r0]
	add r2, r4, #0
	add r2, #0xdf
	strh r0, [r4, #0x18]
	mov r0, #0x28
	ldrsh r0, [r7, r0]
	mov r3, #2
	strh r0, [r4, #0x1a]
	mov r0, #0x2a
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #0xc]
	add r0, #0x2b
	strh r1, [r4, r0]
	mov r0, #0x2c
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #0xc]
	add r0, #0x2d
	strh r1, [r4, r0]
	str r6, [sp]
	str r0, [sp, #0xc]
	ldrb r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy23_216eba0
	add r0, r7, #0
	bl GFL_HeapFree
	ldr r0, [r4, #0x74]
	mov r1, #0
	bl sub_02008A54
	add r0, r4, #0
	add r0, #0xdd
	ldrb r1, [r0]
	mov r0, #0x80
	orr r1, r0
	add r0, r4, #0
	add r0, #0xdd
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xdf
	ldrb r0, [r0]
	cmp r0, #0x28
	bhs _0216ECE6
	ldr r0, [sp, #8]
	ldr r1, [r5, #8]
	bl sub_020111A0
	cmp r0, #0
	beq _0216ECE6
	add r0, r4, #0
	add r0, #0xdd
	ldrb r1, [r0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0
	add r0, #0xdd
	strb r1, [r0]
_0216ECE6:
	add r0, r4, #0
	mov r1, #8
	add r0, #0x98
	strb r1, [r0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216ECF4: .word 0x000004B4
_0216ECF8: .word 0x0000010D
_0216ECFC: .word 0x00007FFF
	thumb_func_end ovy23_216ebf4

	thumb_func_start ovy23_216ed00
ovy23_216ed00: ; 0x0216ED00
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xdd
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1e
	cmp r0, #2
	bne _0216ED1C
	ldr r0, [r4, #0x34]
	bl GFL_HeapFree
	add r0, r4, #0
	bl sub_020185B4
_0216ED1C:
	add r0, r4, #0
	bl sub_02017C84
	pop {r4, pc}
	thumb_func_end ovy23_216ed00

	thumb_func_start ovy23_216ed24
ovy23_216ed24: ; 0x0216ED24
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_02017A04
	bl sub_0200C1F0
	add r0, r4, #0
	bl sub_02017E04
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xdf
	ldrb r0, [r0]
	ldr r2, [r5, #0x34]
	add r3, r4, #0
	str r1, [r5, #0x48]
	bl ovy23_216e920
	add r0, r5, #0
	bl sub_021E9818
	bl sub_0200C200
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy23_216ed24

	thumb_func_start ovy23_216ed58
ovy23_216ed58: ; 0x0216ED58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x10
	mov r1, #4
	bl GFL_StrBufCreate
	add r6, r0, #0
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _0216EDD4 ; =0x000002B6
	ldr r3, _0216EDD8 ; =0x0216F8E0
	str r0, [sp]
	mov r0, #4
	mov r2, #0
	bl GFL_HeapAllocate
	str r0, [sp, #4]
	bl sub_0200C1F0
	ldr r1, [sp, #4]
	mov r0, #2
	bl sub_020107F0
	ldr r0, [sp, #4]
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	str r0, [sp, #8]
	ldr r3, _0216EDDC ; =0x00008004
	mov r0, #0
	mov r1, #2
	mov r2, #0x5a
	bl GFL_MsgSysLoadData
	ldr r1, [sp, #8]
	add r7, r0, #0
	add r2, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r7, #0
	bl GFL_MsgDataFree
	str r6, [r5, #8]
	bl sub_0200C200
	ldr r0, [sp, #4]
	bl GFL_HeapFree
	add r0, r4, #0
	add r0, #0xdf
	ldrb r0, [r0]
	str r0, [r5, #4]
	ldr r0, [r4, #0x34]
	bl MyStatus_GetTrainerGender
	str r0, [r5, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0216EDD4: .word 0x000002B6
_0216EDD8: .word 0x0216F8E0
_0216EDDC: .word 0x00008004
	thumb_func_end ovy23_216ed58

	thumb_func_start sub_0216EDE0
sub_0216EDE0: ; 0x0216EDE0
	ldr r0, [r0, #8]
	ldr r3, _0216EDE8 ; =GFL_StrBufFree
	bx r3
	nop
_0216EDE8: .word GFL_StrBufFree
	thumb_func_end sub_0216EDE0

	thumb_func_start sub_0216EDEC
sub_0216EDEC: ; 0x0216EDEC
	add r3, r1, #0
	add r3, #0xdf
	ldrb r3, [r3]
	str r3, [r0]
	mov r3, #0x4a
	lsl r3, r3, #2
	ldrb r3, [r1, r3]
	str r1, [r0, #0x18]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	add r1, #0xdd
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0216EDEC

	thumb_func_start ovy23_216ee0c
ovy23_216ee0c: ; 0x0216EE0C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r0, r7, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02017934
	str r0, [r5, #0x10]
	mov r0, #0x4a
	str r7, [r5, #0x14]
	str r6, [r5, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r0, r0, #4
	str r1, [r5, #4]
	ldr r0, [r4, r0]
	str r0, [r5, #8]
	add r0, r4, #0
	str r4, [r5, #0x18]
	add r0, #0xdf
	ldrb r0, [r0]
	add r4, #0xdd
	str r0, [r5]
	ldrb r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy23_216ee0c

	thumb_func_start sub_0216EE48
sub_0216EE48: ; 0x0216EE48
	bx lr
	.align 2, 0
	thumb_func_end sub_0216EE48

	thumb_func_start ovy23_216ee4c
ovy23_216ee4c: ; 0x0216EE4C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r7, r3, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_020173AC
	str r0, [sp]
	add r0, r7, #0
	bl sub_021804D8
	add r1, r0, #0
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02030078
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x1e
	mov r3, #0x3c
	bl sub_0202FB24
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	ldr r0, [sp, #0x18]
	mov r1, #2
	bl sub_0202EE60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy23_216ee4c

	thumb_func_start ovy23_216ee8c
ovy23_216ee8c: ; 0x0216EE8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r2, #0
	ldr r7, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r7]
	add r4, r1, #0
	str r0, [sp, #0x10]
	bl sub_02016AF0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	bl sub_02016AD8
	str r0, [sp, #0x20]
	bl sub_0201749C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	bl sub_0201736C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	bl sub_02011040
	str r0, [sp, #0xc]
	ldr r0, [r4]
	cmp r0, #0xb
	bls _0216EEC8
	b _0216F07E
_0216EEC8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0216EED4: ; jump table
	.short _0216EEEC - _0216EED4 - 2 ; case 0
	.short _0216EF16 - _0216EED4 - 2 ; case 1
	.short _0216EF20 - _0216EED4 - 2 ; case 2
	.short _0216EF34 - _0216EED4 - 2 ; case 3
	.short _0216EF3E - _0216EED4 - 2 ; case 4
	.short _0216EF5C - _0216EED4 - 2 ; case 5
	.short _0216EF80 - _0216EED4 - 2 ; case 6
	.short _0216EF94 - _0216EED4 - 2 ; case 7
	.short _0216EFBC - _0216EED4 - 2 ; case 8
	.short _0216EFC4 - _0216EED4 - 2 ; case 9
	.short _0216EFD6 - _0216EED4 - 2 ; case 10
	.short _0216F078 - _0216EED4 - 2 ; case 11
_0216EEEC:
	ldrh r0, [r7, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	bl ovy23_216ebf4
	str r0, [r5]
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	bl sub_0202FCF8
_0216EF06:
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02016D68
_0216EF0E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0216F07E
_0216EF16:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_020193A4
	b _0216EF06
_0216EF20:
	add r0, r7, #0
	ldr r1, [r5]
	add r0, #0x10
	bl ovy23_216ed58
	ldr r0, [sp, #4]
	ldr r1, _0216F084 ; =0x00000141
	ldr r2, _0216F088 ; =0x0219E018
	add r7, #0x10
	b _0216EF54
_0216EF34:
	add r7, #0x10
	add r0, r7, #0
	bl sub_0216EDE0
	b _0216EF0E
_0216EF3E:
	add r0, r7, #0
	ldr r1, [r5]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, #0x20
	bl sub_0216EDEC
	ldr r0, [sp, #4]
	ldr r1, _0216F08C ; =0x00000144
	ldr r2, _0216F090 ; =0x0219F698
	add r7, #0x20
_0216EF54:
	add r3, r7, #0
_0216EF56:
	bl sub_02016E38
	b _0216EF0E
_0216EF5C:
	mov r0, #0x4b
	ldr r2, [r7, #0x28]
	ldr r1, [r5]
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _0216EF70
	mov r0, #8
	b _0216EF74
_0216EF70:
	ldr r0, [r4]
	add r0, r0, #1
_0216EF74:
	add r7, #0x20
	str r0, [r4]
	add r0, r7, #0
	bl sub_0216EE48
	b _0216F07E
_0216EF80:
	ldr r0, [r5]
	ldr r1, _0216F094 ; =0x0000FFFF
	ldrh r0, [r0, #0x18]
	bl sub_02005DF4
	ldr r0, [sp, #4]
	ldr r1, _0216F098 ; =0x000000A7
	ldr r2, _0216F09C ; =0x021D6CE0
	ldr r3, [r5]
	b _0216EF56
_0216EF94:
	mov r0, #0x4d
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0216EFBA
	add r0, r7, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, #0x44
	bl ovy23_216ee0c
	add r7, #0x44
	ldr r0, [sp, #4]
	ldr r1, _0216F08C ; =0x00000144
	ldr r2, _0216F0A0 ; =0x0219F6A4
	add r3, r7, #0
	bl sub_02016E38
_0216EFBA:
	b _0216EF0E
_0216EFBC:
	ldr r0, [sp, #0x10]
	bl sub_02019494
	b _0216EF06
_0216EFC4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x14]
	bl ovy23_216ee4c
	b _0216EF0E
_0216EFD6:
	ldr r0, [r7, #0x68]
	bl GFL_StrBufFree
	ldr r0, [r5]
	add r0, #0xdf
	ldrb r0, [r0]
	cmp r0, #0x28
	bhs _0216F070
	ldr r0, [sp, #0x20]
	bl sub_02017A04
	ldr r0, [r0]
	str r0, [sp, #8]
	bl sub_021E6298
	cmp r0, #0
	beq _0216F070
	ldr r1, [r5]
	add r1, #0xa8
	ldr r1, [r1]
	cmp r1, #3
	beq _0216F006
	mov r1, #1
	b _0216F008
_0216F006:
	mov r1, #0
_0216F008:
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0216F070
	ldr r0, [r5]
	mov r3, #0x49
	mov ip, r0
	mov r2, ip
	add r2, #0xdf
	ldrb r2, [r2]
	lsl r3, r3, #2
	mov r6, ip
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, [r6, r3]
	bl sub_021E636C
	mov r2, #0x49
	ldr r3, [r5]
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #8]
	ldr r3, [r7, #8]
	bl sub_021E65B4
	ldr r2, [r5]
	ldr r0, [sp, #0xc]
	add r2, #0xdf
	ldrb r2, [r2]
	mov r1, #5
	bl sub_020110D4
	ldr r0, [sp, #0x20]
	bl sub_021E63E4
	mov r0, #0x49
	ldr r3, [r5]
	lsl r0, r0, #2
	add r0, #0xc
	ldr r0, [r3, r0]
	add r2, r3, #0
	str r0, [sp]
	add r2, #0xdf
	mov r6, #0x49
	lsl r6, r6, #2
	ldrb r2, [r2]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr r3, [r3, r6]
	bl ovy23_216f59c
_0216F070:
	ldr r0, [r5]
	bl ovy23_216ed00
	b _0216EF0E
_0216F078:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0216F07E:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0216F084: .word 0x00000141
_0216F088: .word 0x0219E018
_0216F08C: .word 0x00000144
_0216F090: .word 0x0219F698
_0216F094: .word 0x0000FFFF
_0216F098: .word 0x000000A7
_0216F09C: .word 0x021D6CE0
_0216F0A0: .word 0x0219F6A4
	thumb_func_end ovy23_216ee8c

	thumb_func_start ovy23_216f0a4
ovy23_216f0a4: ; 0x0216F0A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02011040
	add r0, r4, #0
	bl sub_02017934
	add r7, r0, #0
	bl sub_0200C1F0
	mov r4, #0
_0216F0BE:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02010644
	cmp r0, #1
	bne _0216F0E2
	mov r0, #0
	mov r1, #0
	bl sub_020107F0
	ldr r1, _0216F0F8 ; =0x0216F860
	ldrb r0, [r1, r0]
	add r1, r0, #1
	add r0, r5, r4
	add r0, #0x6c
	strb r1, [r0]
	b _0216F0EA
_0216F0E2:
	add r1, r5, r4
	add r1, #0x6c
	mov r0, #0
	strb r0, [r1]
_0216F0EA:
	add r4, r4, #1
	cmp r4, #8
	blt _0216F0BE
	bl sub_0200C200
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216F0F8: .word 0x0216F860
	thumb_func_end ovy23_216f0a4

	thumb_func_start ovy23_216f0fc
ovy23_216f0fc: ; 0x0216F0FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	ldr r6, [r5, #4]
	add r7, r0, #0
	ldr r0, [r6]
	add r4, r1, #0
	str r0, [sp, #0xc]
	bl sub_02016AF0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	bl sub_02016AD8
	str r0, [sp, #0x14]
	bl sub_0201749C
	ldr r1, [r4]
	cmp r1, #0xa
	bls _0216F126
	b _0216F248
_0216F126:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0216F132: ; jump table
	.short _0216F148 - _0216F132 - 2 ; case 0
	.short _0216F174 - _0216F132 - 2 ; case 1
	.short _0216F184 - _0216F132 - 2 ; case 2
	.short _0216F18E - _0216F132 - 2 ; case 3
	.short _0216F1A4 - _0216F132 - 2 ; case 4
	.short _0216F1C4 - _0216F132 - 2 ; case 5
	.short _0216F1CC - _0216F132 - 2 ; case 6
	.short _0216F1D4 - _0216F132 - 2 ; case 7
	.short _0216F1DC - _0216F132 - 2 ; case 8
	.short _0216F1F2 - _0216F132 - 2 ; case 9
	.short _0216F242 - _0216F132 - 2 ; case 10
_0216F148:
	ldrh r0, [r6, #0xc]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r6, #0
	bl ovy23_216ebf4
	add r1, r0, #0
	str r1, [r5]
	ldrh r1, [r1, #0x18]
	ldr r0, [sp, #0xc]
	bl sub_0202FE50
_0216F164:
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0216F16C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0216F248
_0216F174:
	ldr r0, [sp, #0x10]
	bl sub_021812A8
	add r1, r7, #0
	mov r2, #0x1d
	bl sub_021C5DB8
	b _0216F16C
_0216F184:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_020193A4
	b _0216F164
_0216F18E:
	mov r1, #0x7f
	mov r2, #1
	bl sub_0202ECDC
	ldr r1, _0216F250 ; =0x000000A7
	ldr r2, _0216F254 ; =0x021D6CE0
	ldr r3, [r5]
	add r0, r7, #0
	bl sub_02016E38
	b _0216F16C
_0216F1A4:
	ldr r0, [r5]
	add r0, #0xa8
	ldr r0, [r0]
	cmp r0, #3
	beq _0216F1C2
	ldrh r1, [r6, #0xc]
	ldr r0, [sp, #0x14]
	add r2, r6, #0
	bl ovy23_216f0a4
	ldrh r2, [r6, #0xc]
	ldr r0, [sp, #0x14]
	ldr r1, [r5]
	bl ovy23_216ed24
_0216F1C2:
	b _0216F16C
_0216F1C4:
	ldr r0, [sp, #0xc]
	bl sub_0202FE84
	b _0216F164
_0216F1CC:
	ldr r0, [sp, #0xc]
	bl sub_02019494
	b _0216F164
_0216F1D4:
	ldr r0, [sp, #0xc]
	bl sub_0202FF44
	b _0216F164
_0216F1DC:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, #0
	str r2, [sp, #8]
	bl sub_021B878C
	b _0216F164
_0216F1F2:
	ldr r0, [r6, #0x68]
	bl GFL_StrBufFree
	ldr r0, [sp, #0x14]
	bl sub_02017A04
	ldr r7, [r0]
	ldr r0, [sp, #0x14]
	bl sub_02017994
	add r0, r7, #0
	bl sub_021E6298
	cmp r0, #0
	beq _0216F222
	ldr r1, [r5]
	add r1, #0xa8
	ldr r1, [r1]
	cmp r1, #3
	beq _0216F21E
	mov r1, #1
	b _0216F220
_0216F21E:
	mov r1, #0
_0216F220:
	strh r1, [r0]
_0216F222:
	ldr r1, [r5]
	add r0, r7, #0
	add r2, r1, #0
	add r2, #0xdf
	ldrb r2, [r2]
	bl sub_021E648C
	add r6, #0x6c
	add r0, r7, #0
	add r1, r6, #0
	bl sub_021E6668
	ldr r0, [r5]
	bl ovy23_216ed00
	b _0216F16C
_0216F242:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0216F248:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216F250: .word 0x000000A7
_0216F254: .word 0x021D6CE0
	thumb_func_end ovy23_216f0fc

	thumb_func_start ovy23_216f258
ovy23_216f258: ; 0x0216F258
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #4]
	cmp r1, #1
	bne _0216F268
	mov r1, #0
	ldr r2, _0216F280 ; =ovy23_216f0fc
	b _0216F26C
_0216F268:
	ldr r2, _0216F284 ; =ovy23_216ee8c
	mov r1, #0
_0216F26C:
	mov r3, #8
	bl sub_02016CB4
	add r5, r0, #0
	add r0, r5, #0
	bl sub_02016EDC
	str r4, [r0, #4]
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0216F280: .word ovy23_216f0fc
_0216F284: .word ovy23_216ee8c
	thumb_func_end ovy23_216f258

	thumb_func_start ovy23_216f288
ovy23_216f288: ; 0x0216F288
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	ldr r7, [r4]
	add r6, r0, #0
	add r5, r1, #0
	add r0, r7, #0
	bl sub_02016AD8
	bl sub_02017A04
	ldr r1, [r5]
	ldr r0, [r0]
	cmp r1, #0
	beq _0216F2AA
	cmp r1, #1
	beq _0216F2C6
	b _0216F2D6
_0216F2AA:
	ldrh r0, [r4, #0xc]
	bl sub_020105E0
	add r0, r7, #0
	add r1, r4, #0
	bl ovy23_216f258
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r5]
	b _0216F2D6
_0216F2C6:
	bl sub_021E62D0
	bl sub_02010614
	bl sub_02010600
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0216F2D6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy23_216f288

	thumb_func_start ovy23_216f2dc
ovy23_216f2dc: ; 0x0216F2DC
	push {r4, r5, r6, lr}
	ldr r2, _0216F308 ; =ovy23_216f288
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x74
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	ldr r1, [r4]
	str r1, [r0, #8]
	ldr r1, [r4, #4]
	strb r1, [r0, #5]
	mov r1, #4
	strh r1, [r0, #0xc]
	mov r1, #1
	strb r1, [r0, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0216F308: .word ovy23_216f288
	thumb_func_end ovy23_216f2dc

	thumb_func_start ovy23_216f30c
ovy23_216f30c: ; 0x0216F30C
	push {r4, r5, r6, lr}
	ldr r4, [r1]
	ldr r2, _0216F334 ; =ovy23_216f288
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x74
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	mov r1, #4
	strh r1, [r0, #0xc]
	str r4, [r0, #8]
	mov r1, #2
	strb r1, [r0, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0216F334: .word ovy23_216f288
	thumb_func_end ovy23_216f30c

	thumb_func_start ovy23_216f338
ovy23_216f338: ; 0x0216F338
	push {r3, r4, r5, lr}
	ldr r2, _0216F360 ; =ovy23_216f288
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x74
	bl sub_02016CB4
	add r4, r0, #0
	bl sub_02016EDC
	str r5, [r0]
	mov r1, #4
	strh r1, [r0, #0xc]
	mov r1, #8
	str r1, [r0, #8]
	mov r1, #2
	strb r1, [r0, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0216F360: .word ovy23_216f288
	thumb_func_end ovy23_216f338

	thumb_func_start ovy23_216f364
ovy23_216f364: ; 0x0216F364
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _0216F3A0 ; =ovy23_216f3a4
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x14
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	str r6, [r4]
	str r7, [r4, #4]
	ldmia r5!, {r0, r1}
	add r4, #8
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216F3A0: .word ovy23_216f3a4
	thumb_func_end ovy23_216f364

	thumb_func_start ovy23_216f3a4
ovy23_216f3a4: ; 0x0216F3A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _0216F3BA
	cmp r0, #1
	beq _0216F3DA
	b _0216F40C
_0216F3BA:
	add r0, r4, #0
	add r0, #8
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, _0216F414 ; =0x00000142
	ldr r3, _0216F418 ; =0x021A0834
	bl sub_020195C0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r5]
	b _0216F40C
_0216F3DA:
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _0216F3F0
	mov r0, #0
	ldrsh r1, [r2, r0]
	sub r0, r0, #1
	cmp r1, r0
	bne _0216F3F0
	mov r0, #0x29
	strh r0, [r2]
	b _0216F406
_0216F3F0:
	ldr r0, [r4]
	bl sub_02016AD8
	bl sub_02017A04
	ldr r2, [r4, #0x10]
	mov r1, #0
	ldrsh r1, [r2, r1]
	ldr r0, [r0]
	bl sub_021E62B0
_0216F406:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0216F40C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0216F414: .word 0x00000142
_0216F418: .word 0x021A0834
	thumb_func_end ovy23_216f3a4

	thumb_func_start ovy23_216f41c
ovy23_216f41c: ; 0x0216F41C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _0216F45C ; =ovy23_216f460
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x1c
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x1c
	blx MI_CpuFill8
	str r6, [r4]
	str r7, [r4, #4]
	ldmia r5!, {r0, r1}
	add r4, #8
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0216F45C: .word ovy23_216f460
	thumb_func_end ovy23_216f41c

	thumb_func_start ovy23_216f460
ovy23_216f460: ; 0x0216F460
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0216F472
	cmp r0, #1
	beq _0216F492
	b _0216F4AE
_0216F472:
	add r0, r2, #0
	add r0, #8
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, _0216F4B4 ; =0x00000143
	ldr r3, _0216F4B8 ; =0x0219EA60
	bl sub_020195C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r4]
	b _0216F4AE
_0216F492:
	ldr r1, [r2, #0x10]
	cmp r1, #0
	beq _0216F4A4
	ldrh r0, [r1]
	cmp r0, #8
	bne _0216F4A4
	mov r0, #8
	strh r0, [r1]
	b _0216F4AA
_0216F4A4:
	ldr r0, [r2]
	bl sub_02016AD8
_0216F4AA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0216F4AE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0216F4B4: .word 0x00000143
_0216F4B8: .word 0x0219EA60
	thumb_func_end ovy23_216f460

	thumb_func_start ovy23_216f4bc
ovy23_216f4bc: ; 0x0216F4BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	add r3, r2, #0
	add r5, r0, #0
	ldr r0, [r3]
	cmp r1, #5
	bhi _0216F53E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0216F4DA: ; jump table
	.short _0216F4E6 - _0216F4DA - 2 ; case 0
	.short _0216F500 - _0216F4DA - 2 ; case 1
	.short _0216F508 - _0216F4DA - 2 ; case 2
	.short _0216F514 - _0216F4DA - 2 ; case 3
	.short _0216F51A - _0216F4DA - 2 ; case 4
	.short _0216F52E - _0216F4DA - 2 ; case 5
_0216F4E6:
	ldr r1, [r3, #4]
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
_0216F4F0:
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0216F53E
_0216F500:
	ldr r1, [r3, #4]
	bl sub_020193A4
	b _0216F4F0
_0216F508:
	ldr r1, [r3, #4]
	add r2, #0x34
	add r3, #0xc
	bl sub_020197D8
	b _0216F4F0
_0216F514:
	bl sub_02019494
	b _0216F4F0
_0216F51A:
	mov r1, #1
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r3, #4]
	mov r3, #0
	bl sub_021B878C
	b _0216F4F0
_0216F52E:
	ldr r0, [r3, #8]
	add r3, #0x34
	add r1, r3, #0
	bl sub_021E61A0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0216F53E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy23_216f4bc

	thumb_func_start ovy23_216f544
ovy23_216f544: ; 0x0216F544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AD8
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02016AF0
	str r0, [sp]
	ldr r2, _0216F594 ; =ovy23_216f4bc
	add r0, r5, #0
	mov r1, #0
	mov r3, #0xdc
	bl sub_02016CB4
	str r0, [sp, #4]
	bl sub_02016EDC
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, [sp]
	str r5, [r4]
	str r0, [r4, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x34
	str r6, [r4, #8]
	bl sub_021E61E8
	add r4, #0xc
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_021E6254
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216F594: .word ovy23_216f4bc
	thumb_func_end ovy23_216f544

	thumb_func_start sub_0216F598
sub_0216F598: ; 0x0216F598
	bx lr
	.align 2, 0
	thumb_func_end sub_0216F598

	thumb_func_start ovy23_216f59c
ovy23_216f59c: ; 0x0216F59C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0x20]
	mov r7, #0
_0216F5AE:
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	mov r5, #0
	bl sub_020110AC
	cmp r0, #0
	bne _0216F686
	ldr r1, _0216F690 ; =0x0216F88C
	lsl r0, r7, #1
	add r6, r1, r0
	ldrb r0, [r1, r0]
	cmp r0, #7
	bhi _0216F686
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0216F5D6: ; jump table
	.short _0216F686 - _0216F5D6 - 2 ; case 0
	.short _0216F5E6 - _0216F5D6 - 2 ; case 1
	.short _0216F612 - _0216F5D6 - 2 ; case 2
	.short _0216F5F6 - _0216F5D6 - 2 ; case 3
	.short _0216F608 - _0216F5D6 - 2 ; case 4
	.short _0216F648 - _0216F5D6 - 2 ; case 5
	.short _0216F666 - _0216F5D6 - 2 ; case 6
	.short _0216F626 - _0216F5D6 - 2 ; case 7
_0216F5E6:
	ldrb r1, [r6, #1]
	ldr r0, [sp, #4]
	cmp r0, r1
	bne _0216F686
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0216F686
	b _0216F674
_0216F5F6:
	add r0, r4, #0
	bl sub_020111B0
	bl sub_020111EC
	ldrb r1, [r6, #1]
	cmp r0, r1
	blt _0216F686
	b _0216F674
_0216F608:
	ldr r1, _0216F694 ; =0x00001388
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _0216F686
	b _0216F674
_0216F612:
	ldr r0, [sp]
	bl sub_02017394
	mov r1, #0x96
	lsl r1, r1, #4
	bl sub_020191AC
	cmp r0, #0
	beq _0216F686
	b _0216F674
_0216F626:
	ldrb r2, [r6, #1]
	add r0, r4, #0
	mov r1, #2
	bl sub_020110AC
	cmp r0, #0
	beq _0216F686
	ldr r0, [sp]
	bl sub_02017394
	mov r1, #0x96
	lsl r1, r1, #4
	bl sub_020191AC
	cmp r0, #0
	beq _0216F686
	b _0216F674
_0216F648:
	add r6, r5, #0
_0216F64A:
	add r0, r4, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_020110AC
	add r6, r6, #1
	add r5, r5, r0
	cmp r6, #0x27
	blt _0216F64A
	cmp r5, #0x27
	bne _0216F686
	add r0, r4, #0
	mov r1, #0
	b _0216F678
_0216F666:
	add r0, r4, #0
	mov r1, #5
	add r2, r5, #0
	bl sub_020110AC
	cmp r0, #0
	beq _0216F686
_0216F674:
	add r0, r4, #0
	add r1, r5, #0
_0216F678:
	add r2, r7, #0
	bl sub_020110D4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0216F598
_0216F686:
	add r7, r7, #1
	cmp r7, #0x28
	blt _0216F5AE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0216F690: .word 0x0216F88C
_0216F694: .word 0x00001388
	thumb_func_end ovy23_216f59c
_0216F698:
	.byte 0x41, 0x00, 0x01, 0x48, 0x40, 0x5C, 0x70, 0x47
	.byte 0x8C, 0xF8, 0x16, 0x02

	thumb_func_start ovy23_216f6a4
ovy23_216f6a4: ; 0x0216F6A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	add r7, r0, #0
	ldr r2, _0216F6DC ; =ovy23_216f6e0
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_02016CB4
	str r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	str r5, [r4]
	str r7, [r4, #4]
	ldr r1, [r6]
	ldr r0, [r6, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216F6DC: .word ovy23_216f6e0
	thumb_func_end ovy23_216f6a4

	thumb_func_start ovy23_216f6e0
ovy23_216f6e0: ; 0x0216F6E0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0216F6F2
	cmp r0, #1
	beq _0216F712
	b _0216F716
_0216F6F2:
	add r0, r2, #0
	add r0, #8
	str r0, [sp]
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, _0216F71C ; =0x00000145
	ldr r3, _0216F720 ; =0x0219F47C
	bl sub_020195C0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02016D68
	mov r0, #1
	str r0, [r4]
	b _0216F716
_0216F712:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0216F716:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0216F71C: .word 0x00000145
_0216F720: .word 0x0219F47C
	thumb_func_end ovy23_216f6e0

	thumb_func_start ovy23_216f724
ovy23_216f724: ; 0x0216F724
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	str r1, [sp]
	add r0, #0xdf
	ldrb r0, [r0]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x34]
	mov r1, #2
	bl ovy23_216e884
	ldr r0, [r4, #0x4c]
	mov r1, #1
	str r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy23_216f724

	thumb_func_start ovy23_216f744
ovy23_216f744: ; 0x0216F744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _0216F834 ; =0x00007FFF
	mov r2, #0xb4
	and r1, r0
	add r6, r1, #0
	add r0, r0, #1
	orr r6, r0
	lsl r3, r6, #0x10
	mov r0, #0
	mov r1, #2
	lsr r3, r3, #0x10
	mov r5, #0
	mov r7, #0xb4
	bl GFL_MsgSysLoadData
	add r1, r4, #0
	add r1, #0xdf
	lsl r2, r6, #0x10
	ldrb r1, [r1]
	add r7, #0x5c
	str r0, [sp, #8]
	add r0, r7, #0
	lsr r2, r2, #0x10
	bl sub_0204A934
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	str r0, [sp]
	bl sub_0201FDF8
	cmp r0, #0
	ble _0216F824
	ldr r0, [sp, #4]
	add r7, r0, #4
	mov r0, #0x7a
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	add r0, #0xc3
	str r0, [sp, #0x14]
	mov r0, #0x7a
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r0, #0xa4
	str r0, [sp, #0x10]
_0216F7A0:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0201FF08
	mov r1, #0xa9
	mov r2, #0
	add r4, r0, #0
	bl sub_0201CCF8
	cmp r0, #0
	beq _0216F818
	ldr r1, [sp, #4]
	mov r0, #0
	ldrsh r0, [r1, r0]
	mov r2, #0
	add r1, r0, r5
	mov r0, #0x30
	mul r0, r1
	str r0, [sp, #0xc]
	add r6, r7, r0
	add r0, r4, #0
	mov r1, #5
	bl sub_0201CCF8
	ldr r1, [sp, #0xc]
	ldrsh r1, [r7, r1]
	cmp r1, r0
	bne _0216F818
	mov r2, #2
	ldrsh r2, [r6, r2]
	add r0, r4, #0
	mov r1, #5
	bl sub_0201CD1C
	add r0, r4, #0
	bl sub_0201D5F4
	mov r0, #2
	ldrsh r1, [r6, r0]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blt _0216F818
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bgt _0216F818
	mov r2, #0x7a
	lsl r2, r2, #2
	ldr r0, [sp, #8]
	sub r1, r1, r2
	bl sub_0204898C
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x73
	add r2, r6, #0
	bl sub_0201CD1C
	add r0, r6, #0
	bl GFL_StrBufFree
_0216F818:
	ldr r0, [sp]
	add r5, r5, #1
	bl sub_0201FDF8
	cmp r5, r0
	blt _0216F7A0
_0216F824:
	ldr r0, [sp, #4]
	bl GFL_HeapFree
	ldr r0, [sp, #8]
	bl GFL_MsgDataFree
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0216F834: .word 0x00007FFF
	thumb_func_end ovy23_216f744
_0216F838:
	.byte 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x0B, 0x0B, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x04
	.byte 0x04, 0x04, 0x05, 0x05, 0x05, 0x06, 0x06, 0x06, 0x07, 0x07, 0x07, 0x07, 0x08, 0x08, 0x08, 0x09
	.byte 0x09, 0x09, 0x09, 0x0A, 0x0A, 0x0A, 0x0A, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00
	.byte 0x01, 0x01, 0x04, 0x00, 0x01, 0x03, 0x01, 0x04, 0x01, 0x05, 0x06, 0x00, 0x01, 0x07, 0x01, 0x08
	.byte 0x01, 0x09, 0x02, 0x00, 0x01, 0x0B, 0x01, 0x0C, 0x01, 0x0D, 0x06, 0x00, 0x01, 0x0F, 0x01, 0x10
	.byte 0x02, 0x00, 0x01, 0x12, 0x01, 0x13, 0x06, 0x00, 0x01, 0x15, 0x01, 0x16, 0x03, 0x02, 0x01, 0x18
	.byte 0x01, 0x19, 0x01, 0x1A, 0x06, 0x1B, 0x01, 0x1C, 0x01, 0x1D, 0x03, 0x03, 0x01, 0x1F, 0x01, 0x20
	.byte 0x01, 0x21, 0x02, 0x00, 0x01, 0x23, 0x01, 0x24, 0x01, 0x25, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x76, 0x65, 0x6E, 0x74, 0x5F, 0x70, 0x6F, 0x6B, 0x65, 0x77, 0x6F, 0x6F, 0x64, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0216F838
