    .include "macros/function.inc"
	.include "overlay31.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy31_2175800
ovy31_2175800: ; 0x02175800
	push {r4, lr}
	bl sub_02042E84
	add r4, r0, #0
	bl sub_02042E84
	add r4, #0x67
	ldrb r1, [r4]
	ldr r0, [r0, #0x68]
	bl ovy31_2175980
	bl ovy31_2175a10
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy31_2175800

	thumb_func_start ovy31_2175820
ovy31_2175820: ; 0x02175820
	push {r3, lr}
	bl ovy31_2175fcc
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_2175820

	thumb_func_start ovy31_217582c
ovy31_217582c: ; 0x0217582C
	push {r3, lr}
	bl ovy31_2175af8
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_217582c
_02175838:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start ovy31_217583c
ovy31_217583c: ; 0x0217583C
	push {r3, lr}
	bl ovy31_21759dc
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_217583c
_02175848:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x39, 0x5A, 0x17, 0x02

	thumb_func_start ovy31_2175850
ovy31_2175850: ; 0x02175850
	push {r3, lr}
	bl sub_02175A38
	cmp r0, #0
	bne _0217585E
	mov r0, #1
	pop {r3, pc}
_0217585E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_2175850

	thumb_func_start ovy31_2175864
ovy31_2175864: ; 0x02175864
	push {r4, lr}
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	add r4, r3, #0
	bl ovy31_2175a94
	cmp r4, #0
	beq _0217587A
	mov r0, #1
	blx r4
_0217587A:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy31_2175864

	thumb_func_start ovy31_2175880
ovy31_2175880: ; 0x02175880
	push {r3, lr}
	bl sub_021759F8
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_2175880

	thumb_func_start ovy31_217588c
ovy31_217588c: ; 0x0217588C
	push {r3, lr}
	bl ovy31_2175d8c
	cmp r0, #0
	beq _0217589C
	bl sub_02175B70
	pop {r3, pc}
_0217589C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy31_217588c
_021758A0:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xFD, 0x5C, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47, 0xD1, 0x5D, 0x17, 0x02
	.byte 0x00, 0x4B, 0x18, 0x47, 0x61, 0x5A, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47, 0x45, 0x5A, 0x17, 0x02
	.byte 0x00, 0x4B, 0x18, 0x47, 0xB9, 0x5D, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47, 0xC9, 0x5D, 0x17, 0x02
	.byte 0x00, 0x4B, 0x18, 0x47, 0x8D, 0x5D, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47, 0x39, 0x5A, 0x17, 0x02

	thumb_func_start ovy31_21758e0
ovy31_21758e0: ; 0x021758E0
	push {r3, lr}
	bl ovy31_2175d8c
	cmp r0, #0
	beq _021758EE
	mov r0, #3
	pop {r3, pc}
_021758EE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_21758e0
_021758F4:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x51, 0x5A, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47
	.byte 0x35, 0x5D, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47, 0xD1, 0x59, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47
	.byte 0x05, 0x5A, 0x17, 0x02, 0x00, 0x48, 0x70, 0x47, 0x40, 0x66, 0x17, 0x02

	thumb_func_start ovy31_217591c
ovy31_217591c: ; 0x0217591C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0xa6
	blo _02175934
	ldr r0, _02175968 ; =0x0217670C
	ldr r2, _0217596C ; =0x02176710
	mov r1, #0
	bl sub_0203CB80
_02175934:
	ldr r0, _02175970 ; =0x021767a0
	cmp r5, #0
	strb r6, [r0, #6]
	strb r7, [r0, #7]
	beq _02175948
	ldr r1, _02175974 ; =0x021767B2
	add r0, r5, #0
	mov r2, #0xa6
	blx sub_02078920
_02175948:
	add r1, r4, #0
	ldr r0, _02175978 ; =0x021767A6
	add r1, #0xc
	bl sub_0204405C
	ldr r1, _02175970 ; =0x021767a0
	add r4, #0xe
	strh r0, [r1, #4]
	lsl r1, r4, #0x18
	ldr r0, _0217597C ; =0x021767A4
	lsr r1, r1, #0x18
	add r2, r6, #0
	bl ovy31_21760c4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02175968: .word 0x0217670C
_0217596C: .word 0x02176710
_02175970: .word 0x021767a0
_02175974: .word 0x021767B2
_02175978: .word 0x021767A6
_0217597C: .word 0x021767A4
	thumb_func_end ovy31_217591c

	thumb_func_start ovy31_2175980
ovy31_2175980: ; 0x02175980
	push {r4, r5, r6, lr}
	ldr r6, _021759C0 ; =0x021767a0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xe8
	blx sub_020787A8
	ldr r0, _021759C4 ; =0x02176820
	str r5, [r0, #0x3c]
	bl sub_020812B8
	ldr r1, _021759C8 ; =0x02176880
	strb r0, [r1, #6]
	mov r0, #3
	bl ovy31_2175f94
	ldr r0, _021759CC ; =ovy31_2175b84
	bl sub_02176360
	mov r0, #0
	bl sub_02005748
	str r0, [r6, #8]
	cmp r0, #0
	bne _021759BA
	mov r0, #1
	str r0, [r6, #8]
_021759BA:
	ldr r0, _021759C0 ; =0x021767a0
	strb r4, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021759C0: .word 0x021767a0
_021759C4: .word 0x02176820
_021759C8: .word 0x02176880
_021759CC: .word ovy31_2175b84
	thumb_func_end ovy31_2175980
_021759D0:
	.byte 0x01, 0x49, 0xC8, 0x63, 0x70, 0x47, 0xC0, 0x46, 0x20, 0x68, 0x17, 0x02

	thumb_func_start ovy31_21759dc
ovy31_21759dc: ; 0x021759DC
	push {r3, lr}
	ldr r0, _021759F4 ; =0x02176860
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bne _021759EA
	bl ovy31_21760b4
_021759EA:
	ldr r0, _021759F4 ; =0x02176860
	mov r1, #0
	strb r1, [r0, #0xc]
	pop {r3, pc}
	nop
_021759F4: .word 0x02176860
	thumb_func_end ovy31_21759dc

	thumb_func_start sub_021759F8
sub_021759F8: ; 0x021759F8
	ldr r1, _02175A00 ; =0x021767a0
	str r0, [r1]
	bx lr
	nop
_02175A00: .word 0x021767a0
	thumb_func_end sub_021759F8
_02175A04:
	.byte 0x01, 0x49, 0x88, 0x64, 0x70, 0x47, 0xC0, 0x46, 0x20, 0x68, 0x17, 0x02

	thumb_func_start ovy31_2175a10
ovy31_2175a10: ; 0x02175A10
	push {r3, lr}
	ldr r0, _02175A2C ; =0x02176860
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _02175A24
	ldr r0, _02175A30 ; =0x0217670C
	ldr r2, _02175A34 ; =0x02176728
	mov r1, #0
	bl sub_0203CB80
_02175A24:
	ldr r0, _02175A2C ; =0x02176860
	mov r1, #1
	strb r1, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
_02175A2C: .word 0x02176860
_02175A30: .word 0x0217670C
_02175A34: .word 0x02176728
	thumb_func_end ovy31_2175a10

	thumb_func_start sub_02175A38
sub_02175A38: ; 0x02175A38
	ldr r0, _02175A40 ; =0x02176860
	ldrb r0, [r0, #0xc]
	bx lr
	nop
_02175A40: .word 0x02176860
	thumb_func_end sub_02175A38
_02175A44:
	.byte 0x01, 0x48, 0x80, 0x7B, 0x70, 0x47, 0xC0, 0x46, 0x60, 0x68, 0x17, 0x02
	.byte 0x02, 0x48, 0xC0, 0x7B, 0xC0, 0x07, 0xC0, 0x0F, 0x70, 0x47, 0xC0, 0x46, 0x60, 0x68, 0x17, 0x02
	.byte 0x09, 0x48, 0x81, 0x7B, 0x01, 0x29, 0x0D, 0xD1, 0xC0, 0x7B, 0xC0, 0x07, 0xC0, 0x0F, 0x09, 0xD1
	.byte 0x06, 0x48, 0x00, 0x6C, 0x00, 0x28, 0x05, 0xD1, 0x05, 0x48, 0x40, 0x78, 0x00, 0x28, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x60, 0x68, 0x17, 0x02, 0x20, 0x68, 0x17, 0x02
	.byte 0x80, 0x68, 0x17, 0x02

	thumb_func_start ovy31_2175a94
ovy31_2175a94: ; 0x02175A94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02175AE4 ; =0x02176860
	add r4, r1, #0
	ldrb r0, [r0, #0xe]
	add r7, r2, #0
	cmp r0, #1
	beq _02175AAE
	ldr r0, _02175AE8 ; =0x0217670C
	ldr r2, _02175AEC ; =0x02176748
	mov r1, #0
	bl sub_0203CB80
_02175AAE:
	ldr r6, _02175AF0 ; =0x02176880
	ldr r3, _02175AF0 ; =0x02176880
	ldrb r6, [r6, #3]
	ldrb r3, [r3, #2]
	add r0, r5, #0
	lsl r6, r6, #4
	orr r3, r6
	lsl r3, r3, #0x18
	add r1, r4, #0
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl ovy31_217591c
	ldr r0, _02175AF4 ; =0x02176820
	ldr r1, _02175AE4 ; =0x02176860
	str r5, [r0, #0x44]
	strb r4, [r1, #0x1e]
	ldr r0, _02175AF0 ; =0x02176880
	strb r7, [r1, #0x1f]
	ldrb r2, [r0, #2]
	strb r2, [r0]
	mov r2, #1
	strb r2, [r0, #1]
	mov r0, #0
	strb r0, [r1, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02175AE4: .word 0x02176860
_02175AE8: .word 0x0217670C
_02175AEC: .word 0x02176748
_02175AF0: .word 0x02176880
_02175AF4: .word 0x02176820
	thumb_func_end ovy31_2175a94

	thumb_func_start ovy31_2175af8
ovy31_2175af8: ; 0x02175AF8
	push {r3, r4, r5, lr}
	ldr r0, _02175B64 ; =0x02176860
	ldr r4, _02175B68 ; =0x021767a0
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _02175B62
	add r0, r4, #0
	add r0, #0xe4
	ldrb r0, [r0]
	cmp r0, #1
	bne _02175B40
	ldr r5, _02175B6C ; =0x02176880
	add r3, r4, #0
	add r3, #0xe0
	ldrb r5, [r5, #3]
	add r1, r4, #0
	add r2, r4, #0
	add r0, r4, #0
	add r1, #0xde
	add r2, #0xdf
	add r0, #0xc4
	ldrb r3, [r3]
	lsl r5, r5, #4
	ldrb r1, [r1]
	orr r3, r5
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	ldr r0, [r0]
	lsr r3, r3, #0x18
	bl ovy31_217591c
	add r0, r4, #0
	mov r1, #0
	add r0, #0xe4
	strb r1, [r0]
	b _02175B5C
_02175B40:
	ldr r5, _02175B6C ; =0x02176880
	add r3, r4, #0
	add r3, #0xe0
	ldrb r5, [r5, #3]
	ldrb r3, [r3]
	mov r0, #0
	lsl r5, r5, #4
	orr r3, r5
	lsl r3, r3, #0x18
	mov r1, #0
	mov r2, #0xee
	lsr r3, r3, #0x18
	bl ovy31_217591c
_02175B5C:
	mov r0, #0
	add r4, #0xce
	strb r0, [r4]
_02175B62:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02175B64: .word 0x02176860
_02175B68: .word 0x021767a0
_02175B6C: .word 0x02176880
	thumb_func_end ovy31_2175af8

	thumb_func_start sub_02175B70
sub_02175B70: ; 0x02175B70
	ldr r0, _02175B80 ; =0x02176860
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	beq _02175B7C
	mov r0, #1
	bx lr
_02175B7C:
	mov r0, #0
	bx lr
	.align 2, 0
_02175B80: .word 0x02176860
	thumb_func_end sub_02175B70

	thumb_func_start ovy31_2175b84
ovy31_2175b84: ; 0x02175B84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r2, [sp]
	ldrb r2, [r5, #3]
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	mov r0, #0xf
	add r7, r2, #0
	and r7, r0
	asr r0, r2, #4
	str r0, [sp, #4]
	mov r2, #1
	ldr r0, _02175CD0 ; =0x02176860
	ldr r6, _02175CD4 ; =0x02176820
	strb r2, [r0, #0xe]
	cmp r4, #0xb4
	bls _02175BBE
	ldr r0, _02175CD8 ; =0x0217670C
	ldr r2, _02175CDC ; =0x02176764
	bl sub_0203CB80
_02175BBE:
	cmp r4, #0
	beq _02175BC6
	cmp r4, #0xb4
	bls _02175BC8
_02175BC6:
	b _02175CCA
_02175BC8:
	add r0, r5, #2
	sub r1, r4, #2
	bl sub_0204405C
	ldrh r1, [r5]
	cmp r1, r0
	bne _02175CCA
	ldr r2, [r6, #0x48]
	cmp r2, #0
	beq _02175BEC
	ldr r0, _02175CE0 ; =0x021767a0
	ldrb r1, [r5, #0xc]
	ldrb r0, [r0, #0x10]
	blx r2
	cmp r0, #0
	bne _02175BF6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02175BEC:
	ldr r0, _02175CE0 ; =0x021767a0
	ldrb r1, [r0, #0x10]
	ldrb r0, [r5, #0xc]
	cmp r1, r0
	bne _02175CCA
_02175BF6:
	ldr r0, _02175CE0 ; =0x021767a0
	ldr r1, [r5, #8]
	ldr r2, [r0, #8]
	cmp r1, r2
	bne _02175C20
	ldr r3, [r5, #4]
	ldr r0, [r6, #0x38]
	cmp r3, r0
	bne _02175C20
	ldr r6, _02175CD0 ; =0x02176860
	ldrb r0, [r6, #0xf]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02175C64
	bl ovy31_2175d64
	ldrb r1, [r6, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r6, #0xf]
	b _02175C64
_02175C20:
	cmp r1, #0
	bne _02175C36
	ldr r0, [r6, #0x38]
	cmp r0, #0
	bne _02175C36
	ldr r1, [r5, #4]
	ldr r0, _02175CE0 ; =0x021767a0
	add sp, #0x10
	str r1, [r0, #0xc]
	str r1, [r6, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_02175C36:
	cmp r1, r2
	bne _02175C4A
	ldr r0, [r6, #0x38]
	cmp r0, #0
	bne _02175C4A
	ldr r1, [r5, #4]
	ldr r0, _02175CE0 ; =0x021767a0
	str r1, [r0, #0xc]
	str r1, [r6, #0x38]
	b _02175C64
_02175C4A:
	ldr r0, _02175CD0 ; =0x02176860
	ldrb r0, [r0, #0xf]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _02175CCA
	ldr r1, [r6, #0x38]
	ldr r0, [r5, #4]
	cmp r1, r0
	beq _02175CCA
	mov r0, #0
	add sp, #0x10
	str r0, [r6, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_02175C64:
	ldr r0, [sp]
	ldr r6, _02175CE0 ; =0x021767a0
	cmp r0, #0xf0
	bhs _02175CCA
	ldr r1, _02175CE4 ; =0x02176880
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _02175C9A
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne _02175C9A
	ldrb r2, [r1, #2]
	ldr r0, [sp, #4]
	cmp r0, r2
	bne _02175C96
	cmp r2, #0xf
	bhs _02175C8A
	add r0, r2, #1
	b _02175C8C
_02175C8A:
	mov r0, #0
_02175C8C:
	strb r0, [r1, #2]
	ldr r0, _02175CE4 ; =0x02176880
	mov r1, #0
	strb r1, [r0, #1]
	b _02175C9A
_02175C96:
	mov r0, #1
	strb r0, [r1, #4]
_02175C9A:
	ldr r0, [sp]
	cmp r0, #0xee
	beq _02175CCA
	ldr r0, _02175CE4 ; =0x02176880
	ldrb r0, [r0, #3]
	cmp r0, r7
	beq _02175CCA
	bl ovy31_2175ce8
	ldr r3, [r6]
	cmp r3, #0
	beq _02175CC6
	sub r4, #0xe
	lsl r0, r0, #0x10
	add r5, #0xe
	lsl r2, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	lsr r2, r2, #0x10
	blx r3
	cmp r0, #0
	beq _02175CCA
_02175CC6:
	ldr r0, _02175CE4 ; =0x02176880
	strb r7, [r0, #3]
_02175CCA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02175CD0: .word 0x02176860
_02175CD4: .word 0x02176820
_02175CD8: .word 0x0217670C
_02175CDC: .word 0x02176764
_02175CE0: .word 0x021767a0
_02175CE4: .word 0x02176880
	thumb_func_end ovy31_2175b84

	thumb_func_start ovy31_2175ce8
ovy31_2175ce8: ; 0x02175CE8
	push {r3, lr}
	bl sub_02175D80
	cmp r0, #1
	bne _02175CF6
	mov r0, #1
	pop {r3, pc}
_02175CF6:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_2175ce8

	thumb_func_start ovy31_2175cfc
ovy31_2175cfc: ; 0x02175CFC
	push {r3, lr}
	ldr r1, _02175D2C ; =0x02176860
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _02175D0A
	mov r0, #0
	pop {r3, pc}
_02175D0A:
	ldr r0, _02175D30 ; =0x02176880
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _02175D16
	mov r0, #1
	pop {r3, pc}
_02175D16:
	ldrb r0, [r1, #0x1d]
	cmp r0, #1
	bne _02175D28
	bl ovy31_2175d8c
	cmp r0, #0
	bne _02175D28
	mov r0, #1
	pop {r3, pc}
_02175D28:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02175D2C: .word 0x02176860
_02175D30: .word 0x02176880
	thumb_func_end ovy31_2175cfc

	thumb_func_start ovy31_2175d34
ovy31_2175d34: ; 0x02175D34
	push {r4, lr}
	bl sub_02176000
	ldr r4, _02175D5C ; =0x02176860
	strb r0, [r4, #0x1c]
	bl sub_02176378
	ldr r1, _02175D60 ; =0x02176880
	mov r2, #1
	strb r0, [r1, #7]
	strb r2, [r4, #0x1d]
	mov r0, #0
	strb r0, [r1, #2]
	mov r0, #0xe
	strb r0, [r1, #3]
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	beq _02175D5A
	strb r2, [r4, #0xe]
_02175D5A:
	pop {r4, pc}
	.align 2, 0
_02175D5C: .word 0x02176860
_02175D60: .word 0x02176880
	thumb_func_end ovy31_2175d34

	thumb_func_start ovy31_2175d64
ovy31_2175d64: ; 0x02175D64
	push {r3, lr}
	bl sub_02176000
	ldr r1, _02175D78 ; =0x02176860
	strb r0, [r1, #0x1c]
	bl sub_02176378
	ldr r1, _02175D7C ; =0x02176880
	strb r0, [r1, #7]
	pop {r3, pc}
	.align 2, 0
_02175D78: .word 0x02176860
_02175D7C: .word 0x02176880
	thumb_func_end ovy31_2175d64

	thumb_func_start sub_02175D80
sub_02175D80: ; 0x02175D80
	ldr r0, _02175D88 ; =0x02176860
	ldrb r0, [r0, #0x1c]
	bx lr
	nop
_02175D88: .word 0x02176860
	thumb_func_end sub_02175D80

	thumb_func_start ovy31_2175d8c
ovy31_2175d8c: ; 0x02175D8C
	push {r3, lr}
	bl sub_0217600C
	cmp r0, #1
	bne _02175D9A
	mov r0, #1
	pop {r3, pc}
_02175D9A:
	ldr r0, _02175DB4 ; =0x02176820
	ldr r1, [r0, #0x3c]
	ldr r0, [r0, #0x40]
	cmp r0, r1
	blo _02175DAC
	cmp r0, #0
	bne _02175DB0
	cmp r1, #0
	bne _02175DB0
_02175DAC:
	mov r0, #1
	pop {r3, pc}
_02175DB0:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02175DB4: .word 0x02176820
	thumb_func_end ovy31_2175d8c
_02175DB8:
	.byte 0x02, 0x48, 0xC0, 0x7B, 0x80, 0x07, 0xC0, 0x0F
	.byte 0x70, 0x47, 0xC0, 0x46, 0x60, 0x68, 0x17, 0x02, 0x00, 0x4B, 0x18, 0x47, 0x0D, 0x60, 0x17, 0x02

	thumb_func_start ovy31_2175dd0
ovy31_2175dd0: ; 0x02175DD0
	push {r3, r4, r5, lr}
	ldr r0, _02175F20 ; =0x02176860
	ldr r4, _02175F24 ; =0x021767a0
	ldrb r0, [r0, #0x1d]
	cmp r0, #0
	bne _02175DF2
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r1, r0
	blo _02175DF2
	cmp r1, #0
	beq _02175DF2
	b _02175F1E
_02175DF2:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	bne _02175E00
	bl ovy31_21761f4
_02175E00:
	add r0, r4, #0
	add r0, #0xdd
	ldrb r0, [r0]
	cmp r0, #1
	beq _02175E0C
	b _02175F1E
_02175E0C:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	beq _02175EDC
	bl sub_0217600C
	cmp r0, #1
	bne _02175E50
	add r0, r4, #0
	mov r5, #0
	add r0, #0xc0
	str r5, [r0]
	bl sub_02176000
	cmp r0, #1
	bne _02175E36
	add r0, r4, #0
	add r0, #0xce
	strb r5, [r0]
	b _02175E3E
_02175E36:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xce
	strb r1, [r0]
_02175E3E:
	add r0, r4, #0
	add r0, #0xe1
	ldrb r0, [r0]
	cmp r0, #1
	bne _02175F1E
	mov r0, #1
	add r4, #0xe4
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02175E50:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #5
	bhs _02175E68
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r4, #0xc0
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02175E68:
	bne _02175E84
	mov r0, #3
	bl ovy31_2175f94
	ldr r0, _02175F28 ; =ovy31_2175b84
	bl sub_02176360
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r4, #0xc0
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02175E84:
	bl ovy31_21761f4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc0
	add r1, #0xbc
	ldr r0, [r0]
	ldr r1, [r1]
	cmp r0, r1
	bhs _02175EBE
	add r1, r4, #0
	add r1, #0xdc
	ldrb r1, [r1]
	cmp r1, #1
	bne _02175EB0
	mov r1, #5
	blx sub_0208D868
	cmp r1, #0
	bne _02175EB0
	bl ovy31_2175fcc
_02175EB0:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r4, #0xc0
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02175EBE:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdd
	mov r5, #1
	add r4, #0xe5
	strb r1, [r0]
	strb r5, [r4]
	bl sub_02175B70
	sub r0, r5, r0
	bl sub_02040A9C
	bl ovy31_21760b4
	pop {r3, r4, r5, pc}
_02175EDC:
	bl sub_0217600C
	cmp r0, #0
	bne _02175F1E
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _02175EFA
	bl ovy31_21760b4
	mov r0, #1
	add r4, #0xc0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02175EFA:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdd
	strb r1, [r0]
	add r0, r4, #0
	mov r5, #1
	add r0, #0xe5
	strb r5, [r0]
	ldr r0, _02175F2C ; =0x0000FFFF
	add r4, #0xc0
	str r0, [r4]
	bl sub_02175B70
	sub r0, r5, r0
	bl sub_02040A9C
	bl ovy31_21760b4
_02175F1E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02175F20: .word 0x02176860
_02175F24: .word 0x021767a0
_02175F28: .word ovy31_2175b84
_02175F2C: .word 0x0000FFFF
	thumb_func_end ovy31_2175dd0

	thumb_func_start ovy31_2175f30
ovy31_2175f30: ; 0x02175F30
	push {r3, r4, r5, r6}
	mov r5, #0x80
	mov r6, #0
	cmp r1, #0
	bls _02175F54
	mov r2, #1
_02175F3C:
	add r3, r6, #0
	ldrb r4, [r0]
	add r0, r0, #1
	tst r3, r2
	beq _02175F4A
	add r5, r5, r4
	b _02175F4E
_02175F4A:
	lsl r3, r4, #8
	add r5, r5, r3
_02175F4E:
	add r6, r6, #1
	cmp r6, r1
	blo _02175F3C
_02175F54:
	lsl r0, r5, #0x10
	lsr r1, r5, #0x10
	lsr r0, r0, #0x10
	add r1, r1, r0
	lsr r0, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy31_2175f30

	thumb_func_start sub_02175F68
sub_02175F68: ; 0x02175F68
	ldr r0, _02175F78 ; =0x02176888
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	nop
_02175F78: .word 0x02176888
	thumb_func_end sub_02175F68

	thumb_func_start sub_02175F7C
sub_02175F7C: ; 0x02175F7C
	ldr r0, _02175F90 ; =0x02176888
	mov r1, #0
	strb r1, [r0]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x14]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x18]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_02175F90: .word 0x02176888
	thumb_func_end sub_02175F7C

	thumb_func_start ovy31_2175f94
ovy31_2175f94: ; 0x02175F94
	push {r4, lr}
	add r4, r0, #0
	bl ovy31_21763c0
	ldr r0, _02175FC0 ; =0x021768B8
	bl ovy31_21764cc
	bl sub_02175F7C
	add r0, r4, #0
	bl sub_0217636C
	ldr r0, _02175FC4 ; =0x02176784
	mov r1, #0xff
	strb r1, [r0, #1]
	ldr r0, _02175FC8 ; =0x02176888
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r4, pc}
	nop
_02175FC0: .word 0x021768B8
_02175FC4: .word 0x02176784
_02175FC8: .word 0x02176888
	thumb_func_end ovy31_2175f94

	thumb_func_start ovy31_2175fcc
ovy31_2175fcc: ; 0x02175FCC
	push {r3, r4, r5, lr}
	ldr r4, _02175FFC ; =0x02176888
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02175FF8
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _02175FF8
	mov r5, #1
	str r5, [r4, #0x1c]
	mov r1, #0x56
	add r0, sp, #0
	strb r1, [r0]
	add r0, sp, #0
	mov r1, #1
	bl ovy31_217659c
	str r5, [r4, #0x20]
	bl sub_0207BB0C
	str r0, [r4, #0x28]
	str r1, [r4, #0x2c]
_02175FF8:
	pop {r3, r4, r5, pc}
	nop
_02175FFC: .word 0x02176888
	thumb_func_end ovy31_2175fcc

	thumb_func_start sub_02176000
sub_02176000: ; 0x02176000
	ldr r0, _02176008 ; =0x02176888
	ldr r0, [r0, #0x18]
	bx lr
	nop
_02176008: .word 0x02176888
	thumb_func_end sub_02176000

	thumb_func_start sub_0217600C
sub_0217600C: ; 0x0217600C
	ldr r0, _02176014 ; =0x02176888
	ldr r0, [r0, #0x24]
	bx lr
	nop
_02176014: .word 0x02176888
	thumb_func_end sub_0217600C

	thumb_func_start ovy31_2176018
ovy31_2176018: ; 0x02176018
	push {r4, r5, r6, lr}
	ldr r6, _0217606C ; =0x021768B8
	add r5, r1, #0
	mov r1, #0
	strb r3, [r6, #1]
	strb r2, [r6]
	strb r1, [r6, #2]
	strb r1, [r6, #3]
	ldr r3, _02176070 ; =0x021768BC
	b _02176036
_0217602C:
	ldrb r2, [r0]
	add r0, r0, #1
	add r1, r1, #1
	strb r2, [r3]
	add r3, r3, #1
_02176036:
	cmp r1, r5
	blt _0217602C
	add r0, r5, #4
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r4, _0217606C ; =0x021768B8
	add r1, r5, #0
	add r0, r4, #0
	bl ovy31_2175f30
	strb r0, [r6, #2]
	asr r0, r0, #8
	strb r0, [r6, #3]
	mov r1, #0
	mov r0, #0xaa
	b _0217605E
_02176056:
	ldrb r2, [r4, r1]
	eor r2, r0
	strb r2, [r4, r1]
	add r1, r1, #1
_0217605E:
	cmp r1, r5
	blt _02176056
	ldr r0, _0217606C ; =0x021768B8
	add r1, r5, #0
	bl ovy31_217659c
	pop {r4, r5, r6, pc}
	.align 2, 0
_0217606C: .word 0x021768B8
_02176070: .word 0x021768BC
	thumb_func_end ovy31_2176018

	thumb_func_start ovy31_2176074
ovy31_2176074: ; 0x02176074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021760AC ; =0x02176888
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _02176098
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _02176098
	cmp r4, #0
	bne _02176098
	ldr r3, _021760B0 ; =0x02176784
	mov r0, #0
	ldrb r3, [r3]
	mov r1, #0
	mov r2, #0xf4
	bl ovy31_2176018
_02176098:
	ldr r0, _021760AC ; =0x02176888
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _021760A4
	add r0, r4, #0
	blx r1
_021760A4:
	bl sub_02175F7C
	pop {r4, pc}
	nop
_021760AC: .word 0x02176888
_021760B0: .word 0x02176784
	thumb_func_end ovy31_2176074

	thumb_func_start ovy31_21760b4
ovy31_21760b4: ; 0x021760B4
	push {r3, lr}
	mov r0, #0
	bl ovy31_2176074
	bl ovy31_21763e8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy31_21760b4

	thumb_func_start ovy31_21760c4
ovy31_21760c4: ; 0x021760C4
	push {r3, lr}
	ldr r3, _021760D8 ; =0x02176888
	ldr r3, [r3, #0x24]
	cmp r3, #0
	beq _021760D6
	ldr r3, _021760DC ; =0x02176784
	ldrb r3, [r3]
	bl ovy31_2176018
_021760D6:
	pop {r3, pc}
	.align 2, 0
_021760D8: .word 0x02176888
_021760DC: .word 0x02176784
	thumb_func_end ovy31_21760c4

	thumb_func_start sub_021760E0
sub_021760E0: ; 0x021760E0
	bx lr
	.align 2, 0
	thumb_func_end sub_021760E0

	thumb_func_start sub_021760E4
sub_021760E4: ; 0x021760E4
	cmp r0, #1
	bne _02176104
	ldr r0, _02176128 ; =0x02176888
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021760F4
	mov r0, #1
	bx lr
_021760F4:
	ldr r0, _0217612C ; =0x021768B8
	ldrb r0, [r0]
	cmp r0, #0xfc
	beq _02176100
	mov r0, #1
	bx lr
_02176100:
	mov r0, #0
	bx lr
_02176104:
	cmp r0, #2
	beq _0217610C
	cmp r0, #3
	bne _02176124
_0217610C:
	mov r1, #0
	b _02176112
_02176110:
	add r1, r1, #1
_02176112:
	cmp r1, #4
	blo _02176110
	mov r1, #0
	b _0217611C
_0217611A:
	add r1, r1, #1
_0217611C:
	cmp r1, r0
	blo _0217611A
	mov r0, #1
	bx lr
_02176124:
	mov r0, #0
	bx lr
	.align 2, 0
_02176128: .word 0x02176888
_0217612C: .word 0x021768B8
	thumb_func_end sub_021760E4

	thumb_func_start ovy31_2176130
ovy31_2176130: ; 0x02176130
	push {r3, r4, r5, lr}
	ldr r0, _02176180 ; =0x02176888
	ldr r1, [r0, #0x24]
	cmp r1, #0
	bne _02176144
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _02176144
	mov r0, #0
	pop {r3, r4, r5, pc}
_02176144:
	bl sub_0207BB0C
	ldr r4, _02176180 ; =0x02176888
	ldr r2, [r4, #0x28]
	ldr r3, [r4, #0x2c]
	sub r2, r0, r2
	sbc r1, r3
	lsr r0, r2, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r2, #6
	ldr r2, _02176184 ; =0x000082EA
	mov r3, #0
	mov r5, #0
	blx sub_0208D5C4
	mov r3, #0
	mov r2, #0x64
	sub r0, r0, r2
	sbc r1, r3
	bhs _02176172
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02176172:
	mov r0, #1
	bl ovy31_2176074
	str r5, [r4, #0x1c]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02176180: .word 0x02176888
_02176184: .word 0x000082EA
	thumb_func_end ovy31_2176130

	thumb_func_start ovy31_2176188
ovy31_2176188: ; 0x02176188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021761EC ; =0x021768B8
	cmp r5, #1
	bne _021761A0
	ldrb r0, [r7]
	cmp r0, #0xfc
	bne _0217619C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0217619C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021761A0:
	cmp r5, #4
	bhs _021761A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021761A8:
	ldrb r0, [r7, #3]
	ldrb r1, [r7, #2]
	mov r4, #0
	lsl r0, r0, #8
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r7, #0
	add r1, r5, #0
	strb r4, [r7, #2]
	strb r4, [r7, #3]
	bl ovy31_2175f30
	asr r1, r6, #8
	strb r6, [r7, #2]
	strb r1, [r7, #3]
	cmp r6, r0
	bne _021761D4
	ldr r0, _021761F0 ; =0x02176888
	strb r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021761D4:
	ldr r0, _021761F0 ; =0x02176888
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021761E8
	b _021761E0
_021761DE:
	add r4, r4, #1
_021761E0:
	cmp r4, r5
	blo _021761DE
	bl sub_02175F68
_021761E8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021761EC: .word 0x021768B8
_021761F0: .word 0x02176888
	thumb_func_end ovy31_2176188

	thumb_func_start ovy31_21761f4
ovy31_21761f4: ; 0x021761F4
	push {r4, r5, r6, lr}
	ldr r0, _02176350 ; =0x021768B8
	ldr r6, _02176354 ; =0x02176784
	ldr r4, _02176358 ; =0x02176888
	bl ovy31_21764cc
	add r5, r0, #0
	bl sub_021760E4
	cmp r0, #0
	beq _0217620C
	mov r5, #0
_0217620C:
	cmp r5, #0
	bne _02176220
	bl ovy31_2176130
	cmp r0, #0
	beq _0217621C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0217621C:
	mov r0, #0
	pop {r4, r5, r6, pc}
_02176220:
	add r0, r5, #0
	bl ovy31_2176188
	cmp r0, #0
	bne _0217622E
	mov r0, #0
	pop {r4, r5, r6, pc}
_0217622E:
	bl sub_0207BB0C
	str r0, [r4, #0x28]
	ldr r0, _02176350 ; =0x021768B8
	str r1, [r4, #0x2c]
	ldrb r1, [r0]
	cmp r1, #0xf0
	bhs _02176254
	ldr r1, [r4, #0x24]
	cmp r1, #0
	bne _02176248
	mov r0, #0
	pop {r4, r5, r6, pc}
_02176248:
	ldrb r2, [r0, #1]
	ldrb r1, [r6]
	cmp r2, r1
	beq _02176254
	mov r0, #0
	pop {r4, r5, r6, pc}
_02176254:
	ldrb r1, [r0]
	sub r1, #0xf6
	cmp r1, #6
	bhi _0217632E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02176268: ; jump table
	.short _02176328 - _02176268 - 2 ; case 0
	.short _0217632E - _02176268 - 2 ; case 1
	.short _02176306 - _02176268 - 2 ; case 2
	.short _0217632E - _02176268 - 2 ; case 3
	.short _021762DA - _02176268 - 2 ; case 4
	.short _0217632E - _02176268 - 2 ; case 5
	.short _02176276 - _02176268 - 2 ; case 6
_02176276:
	ldr r0, [r4, #0x20]
	cmp r0, #4
	bhi _021762A2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02176288: ; jump table
	.short _021762A2 - _02176288 - 2 ; case 0
	.short _02176292 - _02176288 - 2 ; case 1
	.short _021762A2 - _02176288 - 2 ; case 2
	.short _021762A2 - _02176288 - 2 ; case 3
	.short _021762A2 - _02176288 - 2 ; case 4
_02176292:
	mov r0, #2
	str r0, [r4, #0x20]
	ldrb r3, [r6]
	mov r0, #0
	mov r1, #0
	mov r2, #0xfa
	bl ovy31_2176018
_021762A2:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0217634C
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #2
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x18]
	cmp r5, #1
	bls _021762BE
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0217634C
_021762BE:
	ldrb r3, [r6]
	mov r0, #0
	mov r1, #0
	mov r2, #0xfa
	bl ovy31_2176018
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021762D4
	bl sub_02175F68
_021762D4:
	bl sub_021760E0
	b _0217634C
_021762DA:
	ldr r1, [r4, #0x20]
	cmp r1, #1
	bne _0217634C
	mov r1, #3
	str r1, [r4, #0x20]
	mov r5, #1
	str r5, [r4, #0x18]
	ldrb r0, [r0, #1]
	strb r0, [r6, #1]
	ldrb r3, [r6]
	cmp r0, r3
	bne _0217634C
	mov r0, #0
	mov r1, #0
	mov r2, #0xf8
	mov r6, #0
	bl ovy31_2176018
	str r5, [r4, #0x24]
	str r6, [r4, #0x14]
	str r6, [r4, #0x1c]
	b _0217634C
_02176306:
	ldr r1, [r4, #0x20]
	cmp r1, #2
	bne _0217634C
	mov r1, #4
	str r1, [r4, #0x20]
	ldrb r0, [r0, #1]
	mov r1, #1
	strb r0, [r6, #1]
	str r1, [r4, #0x24]
	mov r1, #0
	str r1, [r4, #0x14]
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _0217634C
	blx r2
	b _0217634C
_02176328:
	bl sub_02175F68
	b _0217634C
_0217632E:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0217634C
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0217634C
	ldr r3, _02176350 ; =0x021768B8
	sub r1, r5, #4
	ldrb r2, [r3]
	lsl r1, r1, #0x18
	ldrb r3, [r3, #1]
	ldr r0, _0217635C ; =0x021768BC
	ldr r4, [r4, #8]
	lsr r1, r1, #0x18
	blx r4
_0217634C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02176350: .word 0x021768B8
_02176354: .word 0x02176784
_02176358: .word 0x02176888
_0217635C: .word 0x021768BC
	thumb_func_end ovy31_21761f4

	thumb_func_start sub_02176360
sub_02176360: ; 0x02176360
	ldr r1, _02176368 ; =0x02176888
	str r0, [r1, #8]
	bx lr
	nop
_02176368: .word 0x02176888
	thumb_func_end sub_02176360

	thumb_func_start sub_0217636C
sub_0217636C: ; 0x0217636C
	ldr r1, _02176374 ; =0x02176784
	strb r0, [r1]
	bx lr
	nop
_02176374: .word 0x02176784
	thumb_func_end sub_0217636C

	thumb_func_start sub_02176378
sub_02176378: ; 0x02176378
	ldr r0, _02176380 ; =0x02176784
	ldrb r0, [r0, #1]
	bx lr
	nop
_02176380: .word 0x02176784
	thumb_func_end sub_02176378

	thumb_func_start ovy31_2176384
ovy31_2176384: ; 0x02176384
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0207BB0C
	mov r7, #0xfa
	add r4, r0, #0
	add r5, r1, #0
	lsl r7, r7, #8
	mov r6, #0
_02176394:
	bl sub_0207BB0C
	sub r0, r0, r4
	sbc r1, r5
	add r2, r7, #0
	add r3, r6, #0
	blx sub_0208D60C
	ldr r2, _021763BC ; =0x000082EA
	add r3, r6, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x3c
	sub r0, r2, r0
	sbc r3, r1
	blo _02176394
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021763BC: .word 0x000082EA
	thumb_func_end ovy31_2176384

	thumb_func_start ovy31_21763c0
ovy31_21763c0: ; 0x021763C0
	push {r4, lr}
	ldr r0, _021763DC ; =0x02176970
	mov r1, #1
	str r1, [r0]
	ldr r4, _021763E0 ; =0x02176788
	ldr r0, _021763E4 ; =0x0000FFFD
	ldrh r1, [r4]
	cmp r1, r0
	bne _021763D8
	blx sub_0207A208
	strh r0, [r4]
_021763D8:
	pop {r4, pc}
	nop
_021763DC: .word 0x02176970
_021763E0: .word 0x02176788
_021763E4: .word 0x0000FFFD
	thumb_func_end ovy31_21763c0

	thumb_func_start ovy31_21763e8
ovy31_21763e8: ; 0x021763E8
	push {r4, lr}
	ldr r4, _02176400 ; =0x02176788
	mov r1, #2
	ldrh r0, [r4]
	mvn r1, r1
	cmp r0, r1
	beq _021763FE
	blx sub_0207A260
	ldr r0, _02176404 ; =0x0000FFFD
	strh r0, [r4]
_021763FE:
	pop {r4, pc}
	.align 2, 0
_02176400: .word 0x02176788
_02176404: .word 0x0000FFFD
	thumb_func_end ovy31_21763e8

	thumb_func_start ovy31_2176408
ovy31_2176408: ; 0x02176408
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207BB0C
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0
_02176416:
	bl sub_0207BB0C
	sub r0, r0, r4
	sbc r1, r5
	mov r2, #0xfa
	lsl r2, r2, #8
	add r3, r6, #0
	blx sub_0208D60C
	ldr r2, _02176468 ; =0x000082EA
	add r3, r6, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x32
	sub r0, r2, r0
	sbc r3, r1
	blo _02176416
	ldr r0, [r7, #4]
	ldr r1, _0217646C ; =0x040001A2
	ldrb r0, [r0]
	sub r2, r1, #2
	strh r0, [r1]
	ldr r0, [r7, #4]
	add r0, r0, #1
	str r0, [r7, #4]
	mov r0, #0x80
_02176450:
	ldrh r1, [r2]
	tst r1, r0
	bne _02176450
	ldr r0, _0217646C ; =0x040001A2
	ldrh r1, [r0]
	add r0, sp, #0
	strh r1, [r0]
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02176468: .word 0x000082EA
_0217646C: .word 0x040001A2
	thumb_func_end ovy31_2176408

	thumb_func_start ovy31_2176470
ovy31_2176470: ; 0x02176470
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0207BB0C
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0
_0217647E:
	bl sub_0207BB0C
	sub r0, r0, r4
	sbc r1, r5
	mov r2, #0xfa
	lsl r2, r2, #8
	add r3, r6, #0
	blx sub_0208D60C
	ldr r2, _021764C4 ; =0x000082EA
	add r3, r6, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x32
	sub r0, r2, r0
	sbc r3, r1
	blo _0217647E
	ldr r0, _021764C8 ; =0x040001A2
	strh r6, [r0]
	sub r2, r0, #2
	mov r0, #0x80
_021764AE:
	ldrh r1, [r2]
	tst r1, r0
	bne _021764AE
	ldr r0, _021764C8 ; =0x040001A2
	ldrh r1, [r0]
	ldr r0, [r7, #8]
	strb r1, [r0]
	ldr r0, [r7, #8]
	add r0, r0, #1
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021764C4: .word 0x000082EA
_021764C8: .word 0x040001A2
	thumb_func_end ovy31_2176470

	thumb_func_start ovy31_21764cc
ovy31_21764cc: ; 0x021764CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, _02176580 ; =0x02176980
	ldr r0, _02176584 ; =0x02176970
	ldr r4, _02176588 ; =0x02176788
	str r1, [r0, #4]
	str r5, [r0, #8]
	mov r0, #1
	strb r0, [r1]
	mov r0, #0
	strb r0, [r5]
	ldrh r0, [r4]
	bl sub_0206EF4C
	ldrh r0, [r4]
	bl sub_0207A178
	ldr r2, _0217658C ; =0x040001A0
	mov r0, #0x80
_021764F2:
	ldrh r1, [r2]
	tst r1, r0
	bne _021764F2
	ldr r0, _02176590 ; =0x0000A042
	ldr r4, _02176594 ; =0x02176970
	strh r0, [r2]
	add r0, r4, #0
	bl ovy31_2176408
	bl ovy31_2176384
	add r0, r4, #0
	bl ovy31_2176470
	bl ovy31_2176384
	ldrb r6, [r5]
	cmp r6, #0xb5
	bls _0217651A
	mov r6, #0
_0217651A:
	ldr r0, _02176584 ; =0x02176970
	mov r4, #0
	str r4, [r0, #4]
	str r5, [r0, #8]
	strb r4, [r5]
	cmp r6, #0
	beq _02176544
	sub r7, r6, #1
	b _0217653E
_0217652C:
	cmp r4, r7
	bne _02176536
	ldr r1, _02176598 ; =0x0000A002
	ldr r0, _0217658C ; =0x040001A0
	strh r1, [r0]
_02176536:
	ldr r0, _02176594 ; =0x02176970
	bl ovy31_2176470
	add r4, r4, #1
_0217653E:
	cmp r4, r6
	blt _0217652C
	b _02176550
_02176544:
	ldr r1, _02176598 ; =0x0000A002
	ldr r0, _0217658C ; =0x040001A0
	strh r1, [r0]
	ldr r0, _02176594 ; =0x02176970
	bl ovy31_2176470
_02176550:
	mov r4, #0
	mov r0, #0xaa
	b _0217655E
_02176556:
	ldrb r1, [r5, r4]
	eor r1, r0
	strb r1, [r5, r4]
	add r4, r4, #1
_0217655E:
	cmp r4, r6
	blt _02176556
	ldr r2, _0217658C ; =0x040001A0
	mov r0, #0x80
_02176566:
	ldrh r1, [r2]
	tst r1, r0
	bne _02176566
	ldr r4, _02176588 ; =0x02176788
	ldrh r0, [r4]
	bl sub_0207A1A0
	ldrh r0, [r4]
	bl sub_0206EF58
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02176580: .word 0x02176980
_02176584: .word 0x02176970
_02176588: .word 0x02176788
_0217658C: .word 0x040001A0
_02176590: .word 0x0000A042
_02176594: .word 0x02176970
_02176598: .word 0x0000A002
	thumb_func_end ovy31_21764cc

	thumb_func_start ovy31_217659c
ovy31_217659c: ; 0x0217659C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, _02176610 ; =0x02176A38
	ldr r0, _02176614 ; =0x02176970
	add r6, r1, #0
	str r2, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #2
	ldr r4, _02176618 ; =0x02176788
	strb r0, [r2]
	ldrh r0, [r4]
	bl sub_0206EF4C
	ldrh r0, [r4]
	bl sub_0207A178
	ldr r2, _0217661C ; =0x040001A0
	mov r0, #0x80
_021765C2:
	ldrh r1, [r2]
	tst r1, r0
	bne _021765C2
	ldr r4, _02176620 ; =0x0000A042
	ldr r0, _02176624 ; =0x02176970
	strh r4, [r2]
	bl ovy31_2176408
	bl ovy31_2176384
	ldr r0, _02176614 ; =0x02176970
	sub r4, #0x40
	str r5, [r0, #4]
	mov r5, #0
	sub r7, r6, #1
	b _021765F2
_021765E2:
	cmp r5, r7
	bne _021765EA
	ldr r0, _0217661C ; =0x040001A0
	strh r4, [r0]
_021765EA:
	ldr r0, _02176624 ; =0x02176970
	bl ovy31_2176408
	add r5, r5, #1
_021765F2:
	cmp r5, r6
	blt _021765E2
	ldr r2, _0217661C ; =0x040001A0
	mov r0, #0x80
_021765FA:
	ldrh r1, [r2]
	tst r1, r0
	bne _021765FA
	ldr r4, _02176618 ; =0x02176788
	ldrh r0, [r4]
	bl sub_0207A1A0
	ldrh r0, [r4]
	bl sub_0206EF58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02176610: .word 0x02176A38
_02176614: .word 0x02176970
_02176618: .word 0x02176788
_0217661C: .word 0x040001A0
_02176620: .word 0x0000A042
_02176624: .word 0x02176970
	thumb_func_end ovy31_217659c
_02176628:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x58, 0x17, 0x02, 0x21, 0x58, 0x17, 0x02, 0x2D, 0x58, 0x17, 0x02
	.byte 0x39, 0x58, 0x17, 0x02, 0x3D, 0x58, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x65, 0x58, 0x17, 0x02, 0x81, 0x58, 0x17, 0x02, 0x49, 0x58, 0x17, 0x02
	.byte 0xD1, 0x58, 0x17, 0x02, 0x51, 0x58, 0x17, 0x02, 0xD9, 0x58, 0x17, 0x02, 0xE1, 0x58, 0x17, 0x02
	.byte 0x8D, 0x58, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0xA1, 0x58, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA9, 0x58, 0x17, 0x02
	.byte 0xB1, 0x58, 0x17, 0x02, 0xB9, 0x58, 0x17, 0x02, 0xC1, 0x58, 0x17, 0x02, 0xC9, 0x58, 0x17, 0x02
	.byte 0xF5, 0x58, 0x17, 0x02, 0xFD, 0x58, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x59, 0x17, 0x02, 0x0D, 0x59, 0x17, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x69, 0x7A, 0x65, 0x20, 0x3C, 0x20, 0x5F, 0x49, 0x52, 0x43, 0x5F, 0x53, 0x45, 0x4E, 0x44
	.byte 0x5F, 0x53, 0x49, 0x5A, 0x45, 0x00, 0x00, 0x00, 0x4E, 0x65, 0x74, 0x49, 0x72, 0x63, 0x53, 0x79
	.byte 0x73, 0x2E, 0x69, 0x6E, 0x69, 0x74, 0x69, 0x61, 0x6C, 0x69, 0x7A, 0x65, 0x20, 0x3D, 0x3D, 0x20
	.byte 0x46, 0x41, 0x4C, 0x53, 0x45, 0x00, 0x00, 0x00, 0x4E, 0x65, 0x74, 0x49, 0x72, 0x63, 0x53, 0x79
	.byte 0x73, 0x2E, 0x73, 0x65, 0x6E, 0x64, 0x5F, 0x74, 0x75, 0x72, 0x6E, 0x20, 0x3D, 0x3D, 0x20, 0x54
	.byte 0x52, 0x55, 0x45, 0x00, 0x73, 0x69, 0x7A, 0x65, 0x20, 0x3C, 0x3D, 0x20, 0x73, 0x69, 0x7A, 0x65
	.byte 0x6F, 0x66, 0x28, 0x5F, 0x4E, 0x45, 0x54, 0x49, 0x52, 0x43, 0x5F, 0x44, 0x41, 0x54, 0x41, 0x29
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x02176628
