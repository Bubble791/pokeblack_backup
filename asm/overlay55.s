    .include "macros/function.inc"
	.include "overlay55.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy55_21e5800
ovy55_21e5800: ; 0x021E5800
	push {r3, lr}
	bl sub_02155174
	bl sub_020179F0
	ldr r0, [r0]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5800

	thumb_func_start ovy55_21e5810
ovy55_21e5810: ; 0x021E5810
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_02155174
	bl sub_020179F8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5CA4
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021E5CB4
	add r1, r0, #0
	add r0, r6, #0
	bl ovy55_21e6750
	add r1, r0, #0
	cmp r1, #0x1d
	bge _021E5842
	add r0, r4, #0
	bl sub_0200FEB4
_021E5842:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy55_21e5810

	thumb_func_start ovy55_21e5844
ovy55_21e5844: ; 0x021E5844
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r4, #0
	bl sub_02155174
	bl sub_020179F8
	add r7, r0, #0
	cmp r6, #0
	beq _021E585E
	cmp r6, #0x10
	blt _021E5864
_021E585E:
	mov r5, #0
	mov r6, #0x1d
	b _021E5880
_021E5864:
	cmp r6, #2
	bne _021E5874
	cmp r5, #0x11
	bne _021E5872
	add r5, r4, #0
	mov r6, #0x11
	b _021E5880
_021E5872:
	b _021E587E
_021E5874:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy55_21e6750
	add r5, r0, #0
_021E587E:
	add r6, r5, #1
_021E5880:
	cmp r5, r6
	bhs _021E589E
_021E5884:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0200FEAC
	add r4, r4, r0
	ldr r0, _021E58A4 ; =0x0000270F
	cmp r4, r0
	blo _021E5898
	add r4, r0, #0
	b _021E589E
_021E5898:
	add r5, r5, #1
	cmp r5, r6
	blo _021E5884
_021E589E:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E58A4: .word 0x0000270F
	thumb_func_end ovy55_21e5844

	thumb_func_start ovy55_21e58a8
ovy55_21e58a8: ; 0x021E58A8
	push {r4, r5, r6, lr}
	add r0, r1, #0
	bl sub_02155174
	add r5, r0, #0
	bl sub_02017394
	ldr r1, _021E58DC ; =0x00000989
	bl sub_020191AC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020179F0
	add r4, r0, #0
	mov r0, #4
	add r1, r6, #0
	bl ovy55_21e5b98
	add r1, r5, #0
	str r0, [r4]
	bl sub_021EFB34
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E58DC: .word 0x00000989
	thumb_func_end ovy55_21e58a8

	thumb_func_start ovy55_21e58e0
ovy55_21e58e0: ; 0x021E58E0
	push {r4, lr}
	add r0, r1, #0
	bl sub_02155174
	bl sub_020179F0
	add r4, r0, #0
	ldr r0, [r4]
	bl ovy55_21e5c50
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy55_21e58e0

	thumb_func_start ovy55_21e58fc
ovy55_21e58fc: ; 0x021E58FC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155174
	bl sub_020179F0
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	ldr r1, [r4]
	cmp r1, #0
	beq _021E5920
	mov r1, #1
	b _021E5922
_021E5920:
	mov r1, #0
_021E5922:
	strh r1, [r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy55_21e58fc

	thumb_func_start ovy55_21e5928
ovy55_21e5928: ; 0x021E5928
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	add r1, r4, #0
	bl sub_021E5CC0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5928

	thumb_func_start ovy55_21e5944
ovy55_21e5944: ; 0x021E5944
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	bl sub_021E5CC4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5944

	thumb_func_start ovy55_21e5960
ovy55_21e5960: ; 0x021E5960
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ovy55_21e5800
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155174
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy55_21e5e54
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021EF904
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy55_21e5960

	thumb_func_start ovy55_21e5988
ovy55_21e5988: ; 0x021E5988
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	add r1, r4, #0
	bl sub_021E5CA8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5988

	thumb_func_start ovy55_21e59a4
ovy55_21e59a4: ; 0x021E59A4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	bl sub_021E5CAC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e59a4

	thumb_func_start ovy55_21e59c0
ovy55_21e59c0: ; 0x021E59C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	add r1, r4, #0
	bl sub_021E5CA0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e59c0

	thumb_func_start ovy55_21e59dc
ovy55_21e59dc: ; 0x021E59DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	bl sub_021E5CA4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e59dc

	thumb_func_start ovy55_21e59f8
ovy55_21e59f8: ; 0x021E59F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	bl sub_021E5CB0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy55_21e59f8

	thumb_func_start ovy55_21e5a14
ovy55_21e5a14: ; 0x021E5A14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	bl sub_021E5CB4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5a14

	thumb_func_start ovy55_21e5a30
ovy55_21e5a30: ; 0x021E5A30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	add r1, r4, #0
	bl sub_021E5CB8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5a30

	thumb_func_start ovy55_21e5a4c
ovy55_21e5a4c: ; 0x021E5A4C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	bl sub_021E5CBC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5a4c

	thumb_func_start ovy55_21e5a68
ovy55_21e5a68: ; 0x021E5A68
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ovy55_21e5800
	add r4, r0, #0
	bl sub_021E5CC4
	add r0, r4, #0
	add r1, r5, #0
	bl ovy55_21e5810
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy55_21e5a68

	thumb_func_start ovy55_21e5a84
ovy55_21e5a84: ; 0x021E5A84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_21548e8
	lsl r2, r6, #0x18
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ovy55_21e5844
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5a84

	thumb_func_start ovy55_21e5ab8
ovy55_21e5ab8: ; 0x021E5AB8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ovy55_21e5800
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021E5D7C
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy55_21e5ab8

	thumb_func_start ovy55_21e5adc
ovy55_21e5adc: ; 0x021E5ADC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r7, r0, #0
	bl sub_02153EC4
	str r0, [sp, #8]
	add r0, r6, #0
	bl ovy55_21e5800
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	add r1, r6, #0
	ldrb r4, [r0]
	add r0, r0, #1
	str r0, [r5, #0x20]
	add r0, r5, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02153ECC
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	add r2, r5, #0
	bl ovy55_21e5d44
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	ldr r0, [sp, #8]
	add r1, r4, #0
	add r2, r5, #0
	str r3, [sp, #4]
	bl sub_0202437C
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5adc

	thumb_func_start ovy55_21e5b38
ovy55_21e5b38: ; 0x021E5B38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl ovy12_2154910
	add r0, r5, #0
	bl sub_02155184
	str r0, [sp]
	bl sub_02153EA4
	add r4, r0, #0
	bl sub_02016AF0
	add r0, r5, #0
	bl sub_0215515C
	add r6, r0, #0
	add r0, r5, #0
	bl ovy55_21e5800
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ovy55_21e67f4
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ovy55_21e68a8
	ldr r1, _021E5B90 ; =0x00000016
	ldr r2, _021E5B94 ; =0x0216E73D
	add r0, r4, #0
	add r3, r5, #0
	bl sub_02016EA0
	add r1, r0, #0
	ldr r0, [sp]
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5B90: .word 0x00000016
_021E5B94: .word 0x0216E73D
	thumb_func_end ovy55_21e5b38

	thumb_func_start ovy55_21e5b98
ovy55_21e5b98: ; 0x021E5B98
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x33
	str r1, [sp]
	ldr r1, _021E5C38 ; =0x000013E8
	ldr r3, _021E5C3C ; =0x021E7560
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r5, r0, #0
	strh r6, [r5]
	str r4, [r5, #4]
	mov r4, #0
	str r4, [r5, #0xc]
	mov r0, #4
	str r0, [r5, #0x10]
	str r4, [r5, #0x18]
	bl sub_02043F2C
	add r7, r0, #0
	bl sub_02043F2C
	mov r1, #0
	add r0, r1, r0
	adc r7, r4
	str r0, [r5, #0x20]
	add r0, r5, #0
	str r7, [r5, #0x24]
	add r0, #0x20
	ldmia r0!, {r2, r3}
	add r0, r5, #0
	add r0, #0x28
	stmia r0!, {r2, r3}
	ldr r0, _021E5C40 ; =0x6C078965
	ldr r1, _021E5C44 ; =0x5D588B65
	str r0, [r5, #0x30]
	ldr r0, _021E5C48 ; =0x00269EC3
	str r1, [r5, #0x34]
	str r0, [r5, #0x38]
	mov r0, #4
	str r4, [r5, #0x3c]
	bl sub_02005748
	add r7, r5, #0
	strb r0, [r5, #0x1e]
	add r7, #0x40
_021E5BF6:
	lsl r0, r4, #4
	add r0, r7, r0
	add r1, r6, #0
	bl ovy55_21e5d88
	add r4, r4, #1
	cmp r4, #8
	blt _021E5BF6
	ldrh r0, [r5]
	bl sub_0201FD00
	ldr r4, _021E5C4C ; =0x000013BC
	str r0, [r5, r4]
	ldrh r0, [r5]
	bl sub_0201FD00
	add r1, r4, #4
	str r0, [r5, r1]
	ldrh r0, [r5]
	bl sub_0201FD00
	add r1, r4, #0
	add r1, #8
	str r0, [r5, r1]
	mov r0, #0
	sub r4, #0x10
	str r0, [r5, r4]
	ldrh r0, [r5]
	bl ovy55_21e63e0
	str r0, [r5, #8]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5C38: .word 0x000013E8
_021E5C3C: .word 0x021E7560
_021E5C40: .word 0x6C078965
_021E5C44: .word 0x5D588B65
_021E5C48: .word 0x00269EC3
_021E5C4C: .word 0x000013BC
	thumb_func_end ovy55_21e5b98

	thumb_func_start ovy55_21e5c50
ovy55_21e5c50: ; 0x021E5C50
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #8]
	bl sub_021E6438
	ldr r4, _021E5C9C ; =0x000013C4
	ldr r0, [r6, r4]
	bl sub_0203A24C
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r6, r0]
	bl sub_0203A24C
	sub r0, r4, #4
	ldr r0, [r6, r0]
	bl sub_0203A24C
	sub r4, #0x18
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021E5C80
	bl sub_0203A24C
_021E5C80:
	add r4, r6, #0
	mov r5, #0
	add r4, #0x40
_021E5C86:
	lsl r0, r5, #4
	add r0, r4, r0
	bl ovy55_21e5dfc
	add r5, r5, #1
	cmp r5, #8
	blt _021E5C86
	add r0, r6, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E5C9C: .word 0x000013C4
	thumb_func_end ovy55_21e5c50

	thumb_func_start sub_021E5CA0
sub_021E5CA0: ; 0x021E5CA0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021E5CA0

	thumb_func_start sub_021E5CA4
sub_021E5CA4: ; 0x021E5CA4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021E5CA4

	thumb_func_start sub_021E5CA8
sub_021E5CA8: ; 0x021E5CA8
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_021E5CA8

	thumb_func_start sub_021E5CAC
sub_021E5CAC: ; 0x021E5CAC
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021E5CAC

	thumb_func_start sub_021E5CB0
sub_021E5CB0: ; 0x021E5CB0
	strb r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021E5CB0

	thumb_func_start sub_021E5CB4
sub_021E5CB4: ; 0x021E5CB4
	ldrb r0, [r0, #0x1c]
	bx lr
	thumb_func_end sub_021E5CB4

	thumb_func_start sub_021E5CB8
sub_021E5CB8: ; 0x021E5CB8
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_021E5CB8

	thumb_func_start sub_021E5CBC
sub_021E5CBC: ; 0x021E5CBC
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_021E5CBC

	thumb_func_start sub_021E5CC0
sub_021E5CC0: ; 0x021E5CC0
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_021E5CC0

	thumb_func_start sub_021E5CC4
sub_021E5CC4: ; 0x021E5CC4
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end sub_021E5CC4

	thumb_func_start sub_021E5CC8
sub_021E5CC8: ; 0x021E5CC8
	ldr r2, [r0, #0x20]
	ldr r1, [r0, #0x24]
	add r0, r2, #0
	bx lr
	thumb_func_end sub_021E5CC8
_021E5CD0:
	.byte 0x41, 0x77, 0x70, 0x47, 0x40, 0x7F, 0x70, 0x47, 0x01, 0x4A, 0x81, 0x50, 0x70, 0x47, 0xC0, 0x46
	.byte 0xE0, 0x13, 0x00, 0x00, 0x01, 0x49, 0x40, 0x58, 0x70, 0x47, 0xC0, 0x46, 0xE0, 0x13, 0x00, 0x00
	.byte 0x01, 0x4A, 0x81, 0x54, 0x70, 0x47, 0xC0, 0x46, 0xA8, 0x13, 0x00, 0x00, 0x01, 0x4A, 0x81, 0x50
	.byte 0x70, 0x47, 0xC0, 0x46, 0xCC, 0x13, 0x00, 0x00, 0x01, 0x49, 0x40, 0x58, 0x70, 0x47, 0xC0, 0x46
	.byte 0xCC, 0x13, 0x00, 0x00, 0x01, 0x4A, 0x81, 0x50, 0x70, 0x47, 0xC0, 0x46, 0xE4, 0x13, 0x00, 0x00

	thumb_func_start sub_021E5D20
sub_021E5D20: ; 0x021E5D20
	add r0, #0x40
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_021E5D20
_021E5D28:
	.byte 0x00, 0x23, 0x40, 0x30, 0x1A, 0x01, 0x81, 0x5C
	.byte 0x49, 0x07, 0x49, 0x0F, 0x03, 0x29, 0x01, 0xD1, 0x80, 0x18, 0x70, 0x47, 0x5B, 0x1C, 0x08, 0x2B
	.byte 0xF4, 0xDB, 0x70, 0x47

	thumb_func_start ovy55_21e5d44
ovy55_21e5d44: ; 0x021E5D44
	push {r3, lr}
	add r3, r0, #0
	cmp r1, #3
	bne _021E5D5A
	ldr r1, _021E5D64 ; =0x0000019E
	add r0, r2, #0
	add r1, r3, r1
	mov r2, #0x25
	bl sub_02048658
	pop {r3, pc}
_021E5D5A:
	ldrh r0, [r3]
	bl sub_021C98C0
	pop {r3, pc}
	nop
_021E5D64: .word 0x0000019E
	thumb_func_end ovy55_21e5d44
_021E5D68:
	.byte 0x01, 0x49, 0x40, 0x58, 0x70, 0x47, 0xC0, 0x46
	.byte 0xBC, 0x13, 0x00, 0x00, 0x4F, 0x21, 0x89, 0x01, 0x40, 0x58, 0x70, 0x47

	thumb_func_start sub_021E5D7C
sub_021E5D7C: ; 0x021E5D7C
	ldr r0, [r0, #0x10]
	ldr r3, _021E5D84 ; =ovy55_21e64c0
	bx r3
	nop
_021E5D84: .word ovy55_21e64c0
	thumb_func_end sub_021E5D7C

	thumb_func_start ovy55_21e5d88
ovy55_21e5d88: ; 0x021E5D88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r2, [r5]
	mov r0, #7
	add r4, r1, #0
	bic r2, r0
	strb r2, [r5]
	ldrb r2, [r5]
	mov r0, #8
	bic r2, r0
	strb r2, [r5]
	ldrb r2, [r5]
	mov r0, #0x70
	bic r2, r0
	mov r0, #0x10
	orr r2, r0
	strb r2, [r5]
	ldrb r3, [r5]
	mov r2, #0x80
	bic r3, r2
	mov r2, #0
	strb r3, [r5]
	ldrb r3, [r5, #3]
	strb r2, [r5, #1]
	strb r2, [r5, #2]
	mov r2, #0x3f
	bic r3, r2
	strb r3, [r5, #3]
	ldrb r3, [r5, #3]
	mov r2, #0xc0
	bic r3, r2
	strb r3, [r5, #3]
	mov r2, #0xe7
	strh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldr r2, _021E5DF4 ; =0xFFFFF000
	and r2, r3
	strh r2, [r5, #6]
	ldrh r3, [r5, #6]
	ldr r2, _021E5DF8 ; =0xFFFF0FFF
	and r3, r2
	lsl r2, r0, #8
	orr r2, r3
	strh r2, [r5, #6]
	bl GFL_StrBufCreate
	str r0, [r5, #8]
	mov r0, #0x16
	add r1, r4, #0
	bl GFL_StrBufCreate
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_021E5DF4: .word 0xFFFFF000
_021E5DF8: .word 0xFFFF0FFF
	thumb_func_end ovy55_21e5d88

	thumb_func_start ovy55_21e5dfc
ovy55_21e5dfc: ; 0x021E5DFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl GFL_StrBufFree
	ldr r0, [r4, #0xc]
	bl GFL_StrBufFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy55_21e5dfc
_021E5E10:
	.byte 0x00, 0x78, 0x40, 0x06, 0x40, 0x0F, 0x70, 0x47

	thumb_func_start sub_021E5E18
sub_021E5E18: ; 0x021E5E18
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	bx lr
	thumb_func_end sub_021E5E18
_021E5E20:
	.byte 0xC0, 0x78, 0x00, 0x06, 0x80, 0x0F, 0x70, 0x47, 0x80, 0x78, 0x70, 0x47, 0xC0, 0x88, 0x00, 0x05
	.byte 0x00, 0x0D, 0x70, 0x47, 0x00, 0x78, 0x40, 0x07, 0x40, 0x0F, 0x70, 0x47

	thumb_func_start sub_021E5E3C
sub_021E5E3C: ; 0x021E5E3C
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #8]
	ldr r3, _021E5E48 ; =sub_02048580
	bx r3
	nop
_021E5E48: .word sub_02048580
	thumb_func_end sub_021E5E3C
_021E5E4C:
	.byte 0x00, 0x78, 0x00, 0x06
	.byte 0xC0, 0x0F, 0x70, 0x47

	thumb_func_start ovy55_21e5e54
ovy55_21e5e54: ; 0x021E5E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5]
	add r6, r1, #0
	ldr r4, _021E5F28 ; =0x00007FFF
	add r1, r0, #0
	and r1, r4
	add r0, r4, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201FD00
	str r0, [sp, #8]
	bl sub_0201FD28
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021EFB04
	str r0, [sp, #4]
	ldrh r0, [r5]
	add r1, r0, #0
	and r1, r4
	add r0, r4, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	bl sub_0201C2C8
	add r1, r0, #0
	mov r0, #0x75
	lsl r0, r0, #2
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _021E5F2C ; =0x021E7560
	mov r2, #0
	mov r4, #0
	bl sub_0203A1FC
	add r6, r0, #0
	bl sub_0201C404
	add r0, r5, #0
	bl sub_021E5D7C
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl ovy55_21e6794
	cmp r0, #4
	bne _021E5ED4
	ldr r0, _021E5F30 ; =0x000013B0
	add r2, r4, #0
_021E5EC2:
	add r1, r5, r2
	ldrb r1, [r1, r0]
	cmp r1, #0
	beq _021E5ECC
	add r4, r4, #1
_021E5ECC:
	add r2, r2, #1
	cmp r2, #6
	blo _021E5EC2
	add r7, r4, #0
_021E5ED4:
	mov r4, #0
	cmp r7, #0
	bls _021E5F02
_021E5EDA:
	ldr r0, _021E5F30 ; =0x000013B0
	add r1, r5, r4
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _021E5EE6
	mov r1, #1
_021E5EE6:
	ldr r0, [sp, #4]
	sub r1, r1, #1
	bl sub_0201FF08
	add r1, r6, #0
	bl sub_0201EF6C
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_0201FD6C
	add r4, r4, #1
	cmp r4, r7
	blo _021E5EDA
_021E5F02:
	ldr r4, _021E5F34 ; =0x000013BC
	ldr r0, [sp, #8]
	ldr r1, [r5, r4]
	bl sub_020200AC
	add r4, #8
	ldr r0, [sp, #8]
	ldr r1, [r5, r4]
	bl sub_020200AC
	ldr r0, [sp, #8]
	bl sub_0203A24C
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E5F28: .word 0x00007FFF
_021E5F2C: .word 0x021E7560
_021E5F30: .word 0x000013B0
_021E5F34: .word 0x000013BC
	thumb_func_end ovy55_21e5e54

	thumb_func_start ovy55_21e5f38
ovy55_21e5f38: ; 0x021E5F38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0xb
	bne _021E5F46
	mov r0, #0x25
	pop {r4, pc}
_021E5F46:
	bl ovy55_21e6794
	cmp r0, #4
	bhi _021E5F64
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5F5A: ; jump table
	.short _021E5F64 - _021E5F5A - 2 ; case 0
	.short _021E5F68 - _021E5F5A - 2 ; case 1
	.short _021E5F68 - _021E5F5A - 2 ; case 2
	.short _021E5F64 - _021E5F5A - 2 ; case 3
	.short _021E5F64 - _021E5F5A - 2 ; case 4
_021E5F64:
	ldr r1, _021E5F70 ; =0x021E735C
	b _021E5F6A
_021E5F68:
	ldr r1, _021E5F74 ; =0x021E7360
_021E5F6A:
	ldr r0, [r4, #0x10]
	ldrb r0, [r1, r0]
	pop {r4, pc}
	.align 2, 0
_021E5F70: .word 0x021E735C
_021E5F74: .word 0x021E7360
	thumb_func_end ovy55_21e5f38

	thumb_func_start ovy55_21e5f78
ovy55_21e5f78: ; 0x021E5F78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0xc]
	cmp r1, #3
	bne _021E5FFC
	mov r7, #0xd7
	lsl r7, r7, #2
	add r0, #0xce
	mov r1, #0
	mov r2, #0xbc
	add r6, r5, r7
	mov r4, #0
	blx MI_CpuFill8
	add r0, r5, #0
	ldrb r1, [r5, r7]
	add r0, #0xd0
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r6, #1]
	add r0, #0xd1
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r6, #2]
	add r0, #0xd2
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r6, #3]
	add r0, #0xd3
	strb r1, [r0]
	add r0, r5, #0
	ldrh r1, [r6, #4]
	add r0, #0xd4
	strh r1, [r0]
	add r0, r5, #0
	ldrb r1, [r6, #6]
	add r0, #0xd6
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r6, #7]
	add r0, #0xd7
	strb r1, [r0]
_021E5FCC:
	add r0, r6, r4
	ldrb r1, [r0, #8]
	add r0, r5, r4
	add r0, #0xd8
	add r4, r4, #1
	strb r1, [r0]
	cmp r4, #0x52
	blt _021E5FCC
	ldr r1, _021E6020 ; =0x0000012A
	mov r3, #0
_021E5FE0:
	add r0, r6, r3
	add r0, #0x5a
	ldrb r2, [r0]
	add r0, r5, r3
	add r3, r3, #1
	strb r2, [r0, r1]
	cmp r3, #0x4c
	blt _021E5FE0
	add r6, #0xa7
	ldrb r1, [r6]
	mov r0, #0x62
	lsl r0, r0, #2
	strb r1, [r5, r0]
	b _021E601A
_021E5FFC:
	bl ovy55_21e5f38
	add r1, r5, #0
	add r1, #0xce
	bl sub_0201F744
	ldr r0, [r5, #0xc]
	cmp r0, #0xb
	beq _021E6012
	cmp r0, #4
	bne _021E601A
_021E6012:
	add r0, r5, #0
	mov r1, #0x19
	add r0, #0xd2
	strb r1, [r0]
_021E601A:
	add r5, #0xce
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6020: .word 0x0000012A
	thumb_func_end ovy55_21e5f78

	thumb_func_start ovy55_21e6024
ovy55_21e6024: ; 0x021E6024
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r6, #0x11
	mov r5, #0
	bl ovy55_21e6794
	cmp r0, #4
	bhi _021E605C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6042: ; jump table
	.short _021E605C - _021E6042 - 2 ; case 0
	.short _021E604C - _021E6042 - 2 ; case 1
	.short _021E6050 - _021E6042 - 2 ; case 2
	.short _021E605C - _021E6042 - 2 ; case 3
	.short _021E6054 - _021E6042 - 2 ; case 4
_021E604C:
	ldr r5, _021E6070 ; =0x000001FB
	b _021E605C
_021E6050:
	ldrb r6, [r4, #0x1c]
	b _021E604C
_021E6054:
	ldr r0, _021E6074 ; =0x00000405
	ldrb r6, [r4, r0]
	add r0, r0, #1
	ldrh r5, [r4, r0]
_021E605C:
	ldr r1, _021E6078 ; =0x0000018A
	mov r2, #0
	strb r6, [r4, r1]
	add r0, r1, #1
	strb r2, [r4, r0]
	add r0, r1, #2
	strh r5, [r4, r0]
	add r0, r4, r1
	pop {r4, r5, r6, pc}
	nop
_021E6070: .word 0x000001FB
_021E6074: .word 0x00000405
_021E6078: .word 0x0000018A
	thumb_func_end ovy55_21e6024

	thumb_func_start ovy55_21e607c
ovy55_21e607c: ; 0x021E607C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0
	add r2, r5, #0
	str r0, [sp]
	add r0, sp, #8
	add r2, #0xc0
	mov r3, #0
	mov r7, #0
	mov r6, #1
	add r0, #2
_021E6098:
	lsl r1, r3, #1
	ldrb r1, [r2, r1]
	add r4, r6, #0
	cmp r1, #1
	bne _021E60A4
	add r4, r7, #0
_021E60A4:
	lsl r1, r3, #1
	add r1, r1, r4
	strb r1, [r0, r3]
	add r3, r3, #1
	cmp r3, #4
	blt _021E6098
	add r0, sp, #8
	mov r3, #0
	mov r7, #1
	add r0, #2
	add r6, sp, #8
_021E60BA:
	lsl r1, r3, #1
	add r1, r2, r1
	ldrb r1, [r1, #8]
	add r4, r7, #0
	cmp r1, #1
	bne _021E60C8
	mov r4, #0
_021E60C8:
	lsl r1, r3, #1
	add r1, r1, r4
	ldrb r1, [r0, r1]
	strb r1, [r6, r3]
	add r3, r3, #1
	cmp r3, #2
	blt _021E60BA
	mov r0, #0
_021E60D8:
	lsl r1, r0, #4
	add r1, r5, r1
	add r1, #0x40
	ldrb r1, [r1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1d
	cmp r1, #3
	bne _021E60EC
	str r0, [sp, #4]
	b _021E60F2
_021E60EC:
	add r0, r0, #1
	cmp r0, #8
	blt _021E60D8
_021E60F2:
	add r0, r5, #0
	bl sub_021E5CC4
	cmp r0, #5
	bhi _021E613A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6108: ; jump table
	.short _021E613A - _021E6108 - 2 ; case 0
	.short _021E6114 - _021E6108 - 2 ; case 1
	.short _021E6114 - _021E6108 - 2 ; case 2
	.short _021E611E - _021E6108 - 2 ; case 3
	.short _021E612C - _021E6108 - 2 ; case 4
	.short _021E613A - _021E6108 - 2 ; case 5
_021E6114:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _021E6140 ; =0x021E7394
	ldr r0, [r0, r1]
	b _021E6138
_021E611E:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _021E6144 ; =0x021E7374
	ldr r1, [r0, r1]
	add r0, sp, #8
	add r0, #2
	b _021E6136
_021E612C:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _021E6148 ; =0x021E73B4
	ldr r1, [r0, r1]
	add r0, sp, #8
_021E6136:
	ldrb r0, [r0, r1]
_021E6138:
	str r0, [sp]
_021E613A:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6140: .word 0x021E7394
_021E6144: .word 0x021E7374
_021E6148: .word 0x021E73B4
	thumb_func_end ovy55_21e607c

	thumb_func_start ovy55_21e614c
ovy55_21e614c: ; 0x021E614C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r2, #0
	ldrb r0, [r0]
	add r4, r1, #0
	add r1, r3, #0
	lsl r0, r0, #0x19
	lsr r7, r0, #0x1d
	add r0, r3, #0
	ldrb r0, [r0]
	ldrb r1, [r1, #1]
	str r2, [sp]
	lsl r0, r0, #0x19
	lsr r6, r0, #0x1d
	add r0, r2, #0
	ldrb r0, [r0, #1]
	str r3, [sp, #4]
	bl sub_021E6338
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	ldrb r0, [r0, #1]
	ldrb r1, [r1, #1]
	bl sub_021E6338
	str r0, [sp, #8]
	cmp r7, r6
	bne _021E6204
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021E61BE
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	blx sub_0208D60C
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r0, r0, r3
	adc r1, r2
	str r0, [r4]
	mov r2, #0
	str r1, [r4, #4]
	lsr r0, r1, #0x1f
	lsl r1, r2, #1
	orr r1, r0
	bne _021E61BA
	mov r0, #1
	b _021E61BC
_021E61BA:
	mov r0, #0
_021E61BC:
	b _021E620C
_021E61BE:
	cmp r1, r0
	bls _021E61C6
	mov r0, #1
	b _021E61C8
_021E61C6:
	mov r0, #0
_021E61C8:
	strb r0, [r5]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	blx sub_0208D60C
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r0, r0, r3
	adc r1, r2
	str r0, [r4]
	str r1, [r4, #4]
	add r0, r1, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0
	mov r4, #0
	blx sub_0208D60C
	cmp r1, #7
	blo _021E620E
	ldrb r0, [r5]
	cmp r0, #0
	bne _021E6200
	mov r4, #1
_021E6200:
	strb r4, [r5]
	b _021E620E
_021E6204:
	mov r0, #1
	cmp r7, r6
	bgt _021E620C
	mov r0, #0
_021E620C:
	strb r0, [r5]
_021E620E:
	ldr r0, [sp]
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	cmp r0, #3
	bne _021E621E
	mov r0, #1
	b _021E622C
_021E621E:
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	cmp r0, #3
	bne _021E622E
	mov r0, #0
_021E622C:
	strb r0, [r5]
_021E622E:
	cmp r7, #4
	blt _021E623A
	cmp r6, #4
	blt _021E623A
	mov r0, #0
	b _021E6276
_021E623A:
	sub r1, r7, r6
	cmp r1, #2
	blt _021E6246
	ldrb r0, [r5]
	cmp r0, #1
	beq _021E6252
_021E6246:
	sub r2, r6, r7
	cmp r2, #2
	blt _021E6256
	ldrb r0, [r5]
	cmp r0, #0
	bne _021E6256
_021E6252:
	mov r0, #1
	b _021E6276
_021E6256:
	cmp r1, #1
	bne _021E6260
	ldrb r0, [r5]
	cmp r0, #1
	beq _021E626A
_021E6260:
	cmp r2, #1
	bne _021E626E
	ldrb r0, [r5]
	cmp r0, #0
	bne _021E626E
_021E626A:
	mov r0, #2
	b _021E6276
_021E626E:
	mov r0, #3
	cmp r7, r6
	beq _021E6276
	mov r0, #4
_021E6276:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	cmp r2, r1
	bls _021E6284
	mov r3, #0
	mvn r3, r3
	b _021E628C
_021E6284:
	mov r3, #1
	cmp r2, r1
	blo _021E628C
	mov r3, #0
_021E628C:
	ldrb r1, [r5]
	cmp r1, #0
	bne _021E6298
	mov r1, #0
	mvn r1, r1
	mul r3, r1
_021E6298:
	lsl r1, r0, #1
	add r2, r0, r1
	ldr r0, _021E62AC ; =0x021E7364
	add r1, r3, #1
	add r0, r0, r2
	ldrb r0, [r1, r0]
	strb r0, [r5, #1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E62AC: .word 0x021E7364
	thumb_func_end ovy55_21e614c

	thumb_func_start ovy55_21e62b0
ovy55_21e62b0: ; 0x021E62B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r4, r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	mov r5, #0
	add r6, #0xc0
	add r4, #0x40
_021E62C2:
	lsl r3, r5, #1
	lsl r2, r3, #4
	add r0, r6, r3
	add r3, r3, #1
	lsl r3, r3, #4
	ldr r1, [sp, #4]
	add r2, r4, r2
	add r3, r4, r3
	bl ovy55_21e614c
	add r5, r5, #1
	cmp r5, #4
	blt _021E62C2
	mov r7, #0
_021E62DE:
	ldr r0, [sp]
	lsl r1, r7, #2
	str r0, [sp, #8]
	add r0, #0xc0
	str r0, [sp, #8]
	add r0, r7, #4
	lsl r0, r0, #1
	mov ip, r0
	ldr r0, [sp]
	mov r2, #0
	add r3, r0, r1
	add r4, r1, #0
	add r0, #0x40
	add r6, sp, #0xc
_021E62FA:
	lsl r1, r2, #1
	add r5, r3, r1
	add r5, #0xc0
	ldrb r5, [r5]
	cmp r5, #0
	beq _021E630A
	add r1, r4, r1
	b _021E630E
_021E630A:
	add r1, r4, r1
	add r1, r1, #1
_021E630E:
	lsl r1, r1, #4
	add r5, r0, r1
	lsl r1, r2, #2
	add r2, r2, #1
	str r5, [r6, r1]
	cmp r2, #2
	blt _021E62FA
	ldr r1, [sp, #8]
	mov r0, ip
	add r0, r1, r0
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ovy55_21e614c
	add r7, r7, #1
	cmp r7, #2
	blt _021E62DE
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy55_21e62b0

	thumb_func_start sub_021E6338
sub_021E6338: ; 0x021E6338
	cmp r0, #0x11
	beq _021E6340
	cmp r1, #0x11
	bne _021E6344
_021E6340:
	mov r0, #2
	bx lr
_021E6344:
	lsl r2, r0, #4
	add r2, r0, r2
	ldr r0, _021E6384 ; =0x021E73D4
	add r0, r0, r2
	ldrb r0, [r1, r0]
	cmp r0, #8
	bhi _021E6380
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E635E: ; jump table
	.short _021E6370 - _021E635E - 2 ; case 0
	.short _021E6380 - _021E635E - 2 ; case 1
	.short _021E6374 - _021E635E - 2 ; case 2
	.short _021E6380 - _021E635E - 2 ; case 3
	.short _021E6378 - _021E635E - 2 ; case 4
	.short _021E6380 - _021E635E - 2 ; case 5
	.short _021E6380 - _021E635E - 2 ; case 6
	.short _021E6380 - _021E635E - 2 ; case 7
	.short _021E637C - _021E635E - 2 ; case 8
_021E6370:
	mov r0, #0
	bx lr
_021E6374:
	mov r0, #1
	bx lr
_021E6378:
	mov r0, #2
	bx lr
_021E637C:
	mov r0, #3
	bx lr
_021E6380:
	mov r0, #0
	bx lr
	.align 2, 0
_021E6384: .word 0x021E73D4
	thumb_func_end sub_021E6338

	thumb_func_start ovy55_21e6388
ovy55_21e6388: ; 0x021E6388
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r3, r0, #0
	add r5, r1, #0
	ldr r2, _021E63B0 ; =0x00000199
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	beq _021E63AC
	add r1, r5, #0
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	bl GFL_MsgDataFree
_021E63AC:
	pop {r4, r5, r6, pc}
	nop
_021E63B0: .word 0x00000199
	thumb_func_end ovy55_21e6388

	thumb_func_start ovy55_21e63b4
ovy55_21e63b4: ; 0x021E63B4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r3, r0, #0
	add r5, r1, #0
	ldr r2, _021E63DC ; =0x0000019A
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	beq _021E63D8
	add r1, r5, #0
	add r2, r4, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	bl GFL_MsgDataFree
_021E63D8:
	pop {r4, r5, r6, pc}
	nop
_021E63DC: .word 0x0000019A
	thumb_func_end ovy55_21e63b4

	thumb_func_start ovy55_21e63e0
ovy55_21e63e0: ; 0x021E63E0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, _021E6430 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	mov r0, #0xf7
	lsr r1, r1, #0x10
	bl sub_0204AA30
	mov r1, #0
	add r6, r0, #0
	bl sub_0204AC0C
	add r5, r0, #0
	mov r0, #0x7e
	str r0, [sp]
	ldr r3, _021E6434 ; =0x021E7570
	add r0, r4, #0
	add r1, r5, #4
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	lsr r0, r5, #4
	str r0, [r4]
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #4
	bl sub_0204ABA4
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E6430: .word 0x00007FFF
_021E6434: .word 0x021E7570
	thumb_func_end ovy55_21e63e0

	thumb_func_start sub_021E6438
sub_021E6438: ; 0x021E6438
	ldr r3, _021E643C ; =sub_0203A24C
	bx r3
	.align 2, 0
_021E643C: .word sub_0203A24C
	thumb_func_end sub_021E6438
_021E6440:
	.byte 0x09, 0x01, 0x40, 0x18, 0x03, 0x1D, 0x08, 0x21, 0x18, 0x88, 0x9B, 0x1C, 0x10, 0x80, 0x92, 0x1C
	.byte 0x49, 0x1E, 0xF9, 0xD1, 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x81, 0x42, 0x01, 0xD2, 0x01, 0x20
	.byte 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x00, 0x09, 0x01, 0x40, 0x18, 0xC0, 0x88, 0x70, 0x47
	.byte 0x09, 0x01, 0x40, 0x18, 0x00, 0x7B, 0x40, 0x07, 0x40, 0x0F, 0x70, 0x47

	thumb_func_start sub_021E647C
sub_021E647C: ; 0x021E647C
	cmp r0, #0
	bge _021E6486
	cmp r0, #3
	ble _021E6486
	mov r0, #0
_021E6486:
	bx lr
	thumb_func_end sub_021E647C

	thumb_func_start ovy55_21e6488
ovy55_21e6488: ; 0x021E6488
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_021E647C
	lsl r1, r0, #3
	ldr r0, _021E64B8 ; =0x021E751C
	ldr r2, _021E64BC ; =0x00000195
	ldrh r4, [r0, r1]
	mov r0, #0
	mov r1, #2
	mov r3, #0x15
	bl GFL_MsgSysLoadData
	add r6, r0, #0
	beq _021E64B4
	add r1, r4, #0
	add r2, r5, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r6, #0
	bl GFL_MsgDataFree
_021E64B4:
	pop {r4, r5, r6, pc}
	nop
_021E64B8: .word 0x021E751C
_021E64BC: .word 0x00000195
	thumb_func_end ovy55_21e6488

	thumb_func_start ovy55_21e64c0
ovy55_21e64c0: ; 0x021E64C0
	push {r3, lr}
	bl sub_021E647C
	lsl r1, r0, #3
	ldr r0, _021E64D0 ; =0x021E751E
	ldrb r0, [r0, r1]
	pop {r3, pc}
	nop
_021E64D0: .word 0x021E751E
	thumb_func_end ovy55_21e64c0

	thumb_func_start ovy55_21e64d4
ovy55_21e64d4: ; 0x021E64D4
	push {r3, lr}
	bl sub_021E647C
	lsl r1, r0, #3
	ldr r0, _021E64E4 ; =0x021E7520
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_021E64E4: .word 0x021E7520
	thumb_func_end ovy55_21e64d4
_021E64E8:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x7D, 0x64, 0x1E, 0x02

	thumb_func_start ovy55_21e64f0
ovy55_21e64f0: ; 0x021E64F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, sp, #0x20
	add r6, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x11
	mov r4, #0
	blx MI_CpuFill8
	ldr r0, [sp]
	bl sub_0201FDF8
	str r0, [sp, #0xc]
	cmp r0, #0
	bls _021E6554
_021E6516:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0201FF08
	add r7, r0, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0201CCF8
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0xaf
	mov r2, #0
	bl sub_0201CCF8
	cmp r5, #0x11
	beq _021E653E
	ldrb r1, [r6, r5]
	add r1, r1, #1
	strb r1, [r6, r5]
_021E653E:
	cmp r5, r0
	beq _021E654C
	cmp r0, #0x11
	beq _021E654C
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
_021E654C:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021E6516
_021E6554:
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #0x11
	mov r4, #0
	mov r5, #0
	blx MI_CpuFill8
	add r1, sp, #0x20
	mov r2, #0
	add r1, #1
_021E6568:
	ldrb r0, [r1, r2]
	cmp r0, r4
	bls _021E6570
	add r4, r0, #0
_021E6570:
	add r2, r2, #1
	cmp r2, #0x11
	blo _021E6568
	add r0, sp, #0x20
	mov r1, #0
	add r3, sp, #0x10
	add r0, #1
_021E657E:
	ldrb r2, [r0, r1]
	cmp r2, r4
	bne _021E658C
	add r2, r5, #1
	lsl r2, r2, #0x18
	strb r1, [r3, r5]
	lsr r5, r2, #0x18
_021E658C:
	add r1, r1, #1
	cmp r1, #0x11
	blo _021E657E
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _021E65BC ; =0x6C078965
	ldr r3, _021E65C0 ; =0x5D588B65
	blx sub_0208D60C
	ldr r2, _021E65C4 ; =0x00269EC3
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	cmp r5, #0
	beq _021E65B4
	add r0, r1, #0
	mov r1, #0
	add r2, r5, #0
	blx sub_0208D60C
_021E65B4:
	add r0, sp, #0x10
	ldrb r0, [r0, r1]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E65BC: .word 0x6C078965
_021E65C0: .word 0x5D588B65
_021E65C4: .word 0x00269EC3
	thumb_func_end ovy55_21e64f0

	thumb_func_start ovy55_21e65c8
ovy55_21e65c8: ; 0x021E65C8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_020179F8
	add r6, r0, #0
	mov r4, #0
_021E65D4:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200FEAC
	lsl r1, r4, #1
	add r4, r4, #1
	strh r0, [r5, r1]
	cmp r4, #0x1d
	blt _021E65D4
	pop {r4, r5, r6, pc}
	thumb_func_end ovy55_21e65c8

	thumb_func_start ovy55_21e65e8
ovy55_21e65e8: ; 0x021E65E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r1, #0
	bl sub_02017394
	ldrh r6, [r4, #0x26]
	mov ip, r0
	mov r1, #0
	mov r5, #0
	mov r2, #0
	mov r3, #0
	cmp r6, #0
	beq _021E660A
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _021E660A
	mov r3, #1
_021E660A:
	cmp r3, #0
	beq _021E6616
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _021E6616
	mov r2, #1
_021E6616:
	cmp r2, #0
	beq _021E6622
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E6622
	mov r5, #1
_021E6622:
	cmp r5, #0
	beq _021E662E
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	beq _021E662E
	mov r1, #1
_021E662E:
	cmp r7, #0xf
	bhi _021E66D8
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E663E: ; jump table
	.short _021E66D8 - _021E663E - 2 ; case 0
	.short _021E665E - _021E663E - 2 ; case 1
	.short _021E666C - _021E663E - 2 ; case 2
	.short _021E6670 - _021E663E - 2 ; case 3
	.short _021E668C - _021E663E - 2 ; case 4
	.short _021E669A - _021E663E - 2 ; case 5
	.short _021E66A6 - _021E663E - 2 ; case 6
	.short _021E66A6 - _021E663E - 2 ; case 7
	.short _021E66A6 - _021E663E - 2 ; case 8
	.short _021E66A6 - _021E663E - 2 ; case 9
	.short _021E66D4 - _021E663E - 2 ; case 10
	.short _021E667E - _021E663E - 2 ; case 11
	.short _021E668C - _021E663E - 2 ; case 12
	.short _021E66B0 - _021E663E - 2 ; case 13
	.short _021E668C - _021E663E - 2 ; case 14
	.short _021E66C2 - _021E663E - 2 ; case 15
_021E665E:
	ldrh r0, [r4, #0x30]
	cmp r0, #0xa
	blo _021E6668
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6668:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E666C:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6670:
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	beq _021E667A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E667A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E667E:
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	bne _021E6688
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6688:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E668C:
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	beq _021E6696
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6696:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E669A:
	mov r1, #0x96
	mov r0, ip
	lsl r1, r1, #4
	bl sub_020191AC
	pop {r3, r4, r5, r6, r7, pc}
_021E66A6:
	mov r0, #1
	cmp r6, #0
	bne _021E66DA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E66B0:
	ldrh r0, [r4, #0x32]
	cmp r0, #0
	beq _021E66BE
	cmp r1, #0
	beq _021E66BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E66BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E66C2:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	beq _021E66D0
	cmp r1, #0
	beq _021E66D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E66D0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E66D4:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E66D8:
	mov r0, #0
_021E66DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy55_21e65e8

	thumb_func_start ovy55_21e66dc
ovy55_21e66dc: ; 0x021E66DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r6, sp, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	bl ovy55_21e65c8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy55_21e65e8
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy55_21e66dc

	thumb_func_start ovy55_21e66fc
ovy55_21e66fc: ; 0x021E66FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r1, sp, #0
	bl ovy55_21e65c8
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ovy55_21e65e8
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl ovy55_21e6750
	cmp r0, #0x1d
	beq _021E6730
	lsl r0, r0, #1
	add r1, sp, #0
	ldrh r1, [r1, r0]
	add r2, r1, #1
	add r1, sp, #0
	strh r2, [r1, r0]
_021E6730:
	add r0, r5, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ovy55_21e65e8
	cmp r4, #0
	bne _021E6748
	cmp r0, r4
	beq _021E6748
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E6748:
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy55_21e66fc

	thumb_func_start ovy55_21e6750
ovy55_21e6750: ; 0x021E6750
	push {r3, lr}
	cmp r0, #2
	beq _021E675C
	bl sub_021C98A4
	ldrb r1, [r0, #2]
_021E675C:
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end ovy55_21e6750

	thumb_func_start ovy55_21e6760
ovy55_21e6760: ; 0x021E6760
	push {r3, r4}
	cmp r0, #0x10
	bgt _021E676C
	mov r0, #2
	pop {r3, r4}
	bx lr
_021E676C:
	ldr r3, _021E6790 ; =0x021D4920
	mov r4, #0
	mov r1, #0xa
_021E6772:
	add r2, r4, #0
	mul r2, r1
	add r2, r3, r2
	ldrb r2, [r2, #2]
	cmp r0, r2
	bne _021E6784
	add r0, r4, #1
	pop {r3, r4}
	bx lr
_021E6784:
	add r4, r4, #1
	cmp r4, #0xf
	blo _021E6772
	mov r0, #4
	pop {r3, r4}
	bx lr
	.align 2, 0
_021E6790: .word 0x021D4920
	thumb_func_end ovy55_21e6760

	thumb_func_start ovy55_21e6794
ovy55_21e6794: ; 0x021E6794
	push {r3, lr}
	bl sub_021C98A4
	ldrb r0, [r0, #4]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy55_21e6794

	thumb_func_start ovy55_21e67a0
ovy55_21e67a0: ; 0x021E67A0
	push {r4, lr}
	add r4, r1, #0
	bl sub_021C98A4
	ldrb r0, [r0, #3]
	cmp r0, r4
	bne _021E67B2
	mov r0, #1
	pop {r4, pc}
_021E67B2:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy55_21e67a0

	thumb_func_start ovy55_21e67b8
ovy55_21e67b8: ; 0x021E67B8
	push {r3, lr}
	bl sub_021C98A4
	ldrb r0, [r0, #5]
	lsl r1, r0, #1
	ldr r0, _021E67C8 ; =0x021E74F8
	ldrh r0, [r0, r1]
	pop {r3, pc}
	.align 2, 0
_021E67C8: .word 0x021E74F8
	thumb_func_end ovy55_21e67b8

	thumb_func_start ovy55_21e67cc
ovy55_21e67cc: ; 0x021E67CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_021E647C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021C98A4
	add r0, r0, r4
	ldrb r0, [r0, #6]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy55_21e67cc
_021E67E4:
	.byte 0x1E, 0x28, 0x00, 0xD3, 0x00, 0x20, 0x01, 0x49, 0x08, 0x5C, 0x70, 0x47
	.byte 0xFE, 0x74, 0x1E, 0x02

	thumb_func_start ovy55_21e67f4
ovy55_21e67f4: ; 0x021E67F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp, #4]
	mov r1, #0x39
	str r1, [sp]
	ldr r3, _021E686C ; =0x021E757C
	mov r1, #0xa4
	mov r2, #1
	bl sub_0203A1FC
	str r4, [r0]
	mov r4, #0
	str r4, [r0, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	mov r0, #0x28
	bl GFL_StrBufCreate
	ldr r1, [sp, #8]
	add r1, #0x98
	str r0, [r1]
	ldr r1, [sp, #4]
	mov r0, #0x28
	bl GFL_StrBufCreate
	ldr r1, [sp, #8]
	ldr r6, [sp, #8]
	add r1, #0x9c
	str r0, [r1]
	add r6, #8
_021E6832:
	mov r0, #0xc
	add r7, r4, #0
	mul r7, r0
	ldr r1, [sp, #4]
	mov r0, #0x10
	add r5, r6, r7
	bl GFL_StrBufCreate
	str r0, [r6, r7]
	mov r0, #0x24
	strh r0, [r5, #4]
	mov r0, #2
	strb r0, [r5, #6]
	mov r0, #0
	strb r0, [r5, #7]
	mov r0, #1
	strb r0, [r5, #8]
	mov r0, #0
	add r4, r4, #1
	strb r0, [r5, #9]
	cmp r4, #8
	blt _021E6832
	ldr r1, [sp, #8]
	add r1, #0xa0
	str r0, [r1]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E686C: .word 0x021E757C
	thumb_func_end ovy55_21e67f4

	thumb_func_start ovy55_21e6870
ovy55_21e6870: ; 0x021E6870
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xc
_021E6878:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl GFL_StrBufFree
	add r4, r4, #1
	cmp r4, #8
	blt _021E6878
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl GFL_StrBufFree
	add r0, r5, #0
	bl sub_0203A24C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy55_21e6870

	thumb_func_start ovy55_21e68a8
ovy55_21e68a8: ; 0x021E68A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	str r2, [sp]
	bl sub_02016AD8
	ldr r6, [sp]
	add r7, r0, #0
	mov r4, #0
	add r6, #8
_021E68BC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021E5D20
	mov r2, #0xc
	mul r2, r4
	add r3, r0, #0
	mov r0, #0x15
	add r1, r7, #0
	add r2, r6, r2
	bl ovy55_21e695c
	add r4, r4, #1
	cmp r4, #8
	blt _021E68BC
	add r0, r5, #0
	bl sub_021E5CC8
	str r0, [sp, #4]
	ldr r0, _021E6950 ; =0x6C078965
	str r1, [sp, #8]
	ldr r1, _021E6954 ; =0x5D588B65
	str r0, [sp, #0xc]
	ldr r0, _021E6958 ; =0x00269EC3
	str r1, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #4
	bl ovy55_21e62b0
	ldr r1, [sp]
	add r0, r5, #0
	bl ovy55_21e69b0
	add r0, r5, #0
	bl sub_021E5CC4
	cmp r0, #1
	beq _021E6916
	cmp r0, #2
	beq _021E691A
	cmp r0, #3
	beq _021E691E
_021E6916:
	mov r1, #0
	b _021E6920
_021E691A:
	mov r1, #1
	b _021E6920
_021E691E:
	mov r1, #2
_021E6920:
	ldr r0, [sp]
	str r1, [r0, #4]
	add r0, r5, #0
	bl sub_021E5CA4
	ldr r2, [sp]
	add r1, r0, #0
	add r2, #0x98
	ldr r2, [r2]
	add r0, r5, #0
	bl ovy55_21e5d44
	add r0, r5, #0
	bl sub_021E5CAC
	ldr r1, [sp]
	add r1, #0x9c
	str r1, [sp]
	ldr r1, [r1]
	bl ovy55_21e6488
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E6950: .word 0x6C078965
_021E6954: .word 0x5D588B65
_021E6958: .word 0x00269EC3
	thumb_func_end ovy55_21e68a8

	thumb_func_start ovy55_21e695c
ovy55_21e695c: ; 0x021E695C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4]
	add r5, r2, #0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	cmp r0, #3
	bne _021E6972
	mov r0, #1
	b _021E6974
_021E6972:
	mov r0, #0
_021E6974:
	ldrb r1, [r4]
	strb r0, [r5, #0xa]
	lsl r0, r1, #0x19
	lsr r0, r0, #0x1d
	strb r0, [r5, #8]
	ldrb r0, [r4, #1]
	strb r0, [r5, #9]
	lsl r0, r1, #0x1c
	lsr r0, r0, #0x1f
	strb r0, [r5, #7]
	ldr r1, [r5]
	add r0, r4, #0
	bl sub_021E5E3C
	ldrh r4, [r4, #4]
	mov r0, #0x2f
	add r1, r6, #0
	bl sub_0204AA30
	add r6, r0, #0
	add r1, r4, #0
	add r2, r5, #6
	add r3, r5, #4
	bl ovy55_21e6a2c
	add r0, r6, #0
	bl sub_0204AB0C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy55_21e695c

	thumb_func_start ovy55_21e69b0
ovy55_21e69b0: ; 0x021E69B0
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	add r5, r1, #0
	mov r0, lr
	add r2, r5, #0
	add r0, #0xc0
	mov r4, #0
	add r2, #0x68
	mov ip, r0
_021E69C2:
	lsl r6, r4, #1
	mov r0, ip
	add r1, r0, r6
	mov r0, ip
	lsl r7, r4, #3
	ldrb r0, [r0, r6]
	add r3, r2, r7
	add r4, r4, #1
	str r0, [r2, r7]
	ldrb r0, [r1, #1]
	lsl r1, r0, #1
	ldr r0, _021E6A10 ; =0x021E753C
	cmp r4, #4
	ldrh r0, [r0, r1]
	strb r0, [r3, #4]
	blt _021E69C2
	mov r0, lr
	add r0, #0xc0
	ldr r7, _021E6A10 ; =0x021E753C
	mov r6, #0
	add r5, #0x88
	mov lr, r0
_021E69EE:
	add r0, r6, #4
	lsl r1, r0, #1
	mov r0, lr
	add r2, r0, r1
	mov r0, lr
	lsl r3, r6, #3
	ldrb r0, [r0, r1]
	add r4, r5, r3
	add r6, r6, #1
	str r0, [r5, r3]
	ldrb r0, [r2, #1]
	lsl r0, r0, #1
	ldrh r0, [r7, r0]
	cmp r6, #2
	strb r0, [r4, #4]
	blt _021E69EE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6A10: .word 0x021E753C
	thumb_func_end ovy55_21e69b0

	thumb_func_start sub_021E6A14
sub_021E6A14: ; 0x021E6A14
	lsl r1, r0, #3
	ldr r0, _021E6A28 ; =0x021CF1C8
	ldr r0, [r0, r1]
	ldr r0, [r0, #4]
	ldrh r0, [r0]
	lsl r0, r0, #0x12
	lsr r0, r0, #0x12
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
_021E6A28: .word 0x021CF1C8
	thumb_func_end sub_021E6A14

	thumb_func_start ovy55_21e6a2c
ovy55_21e6a2c: ; 0x021E6A2C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0200FE34
	add r2, r0, #0
	mov r1, #0x1c
	mul r2, r1
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r2, #4
	mov r3, #0x1c
	bl sub_0204AC58
	add r6, sp, #4
	ldrb r0, [r6, #9]
	bl sub_021E6A14
	strb r0, [r5]
	ldrh r0, [r6, #0x10]
	strh r0, [r4]
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ovy55_21e6a2c

	thumb_func_start ovy55_21e6a64
ovy55_21e6a64: ; 0x021E6A64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r7, r2, #0
	bl sub_02016AD8
	add r6, r0, #0
	ldr r0, _021E6AB8 ; =0x0000013E
	ldr r3, _021E6ABC ; =0x021E757C
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	mov r5, #0
	str r5, [r4]
	add r0, r6, #0
	bl sub_020179F8
	str r0, [r4, #8]
	add r0, r6, #0
	bl sub_0201736C
	str r0, [r4, #0xc]
_021E6A98:
	add r0, r5, #0
	bl ovy55_21e6760
	add r1, r0, #0
	add r0, r6, #0
	bl ovy55_21e66dc
	add r1, r4, r5
	add r5, r5, #1
	strb r0, [r1, #0x10]
	cmp r5, #0x1d
	blt _021E6A98
	str r7, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6AB8: .word 0x0000013E
_021E6ABC: .word 0x021E757C
	thumb_func_end ovy55_21e6a64
_021E6AC0:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy55_21e6ac8
ovy55_21e6ac8: ; 0x021E6AC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_02016AD8
	ldr r0, _021E6AF4 ; =0x00000186
	ldr r3, _021E6AF8 ; =0x021E757C
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0x14
	mov r2, #1
	bl sub_0203A1FC
	str r5, [r0]
	str r4, [r0, #8]
	ldr r1, [sp, #0x18]
	str r6, [r0, #0xc]
	str r1, [r0, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E6AF4: .word 0x00000186
_021E6AF8: .word 0x021E757C
	thumb_func_end ovy55_21e6ac8
_021E6AFC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy55_21e6b04
ovy55_21e6b04: ; 0x021E6B04
	push {r4, lr}
	add r4, r0, #0
	bne _021E6B20
	mov r4, #0
	mvn r4, r4
	add r0, r4, #0
	bl sub_02005748
	lsr r1, r4, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
_021E6B20:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	blx sub_0208D60C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4]
	str r3, [r4, #4]
	mov r4, #0
	mvn r4, r4
	add r0, r3, #0
	mov r1, #0
	mov r3, #0
	add r2, r4, #0
	blx sub_0208D60C
	add r0, r1, #0
	lsr r1, r4, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy55_21e6b04

	thumb_func_start ovy55_21e6b58
ovy55_21e6b58: ; 0x021E6B58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x7f
	str r1, [sp]
	ldr r3, _021E6BD4 ; =0x021E7598
	mov r1, #0x18
	mov r2, #1
	add r5, r0, #0
	mov r7, #1
	bl sub_0203A1FC
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	cmp r6, #0xc
	beq _021E6B84
	add r0, r6, #0
	bl ovy55_21e6794
	cmp r0, #0
	bne _021E6B84
	str r7, [r4]
_021E6B84:
	mov r0, #0xc
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r6, _021E6BD4 ; =0x021E7598
	strh r0, [r4, #8]
	mov r0, #0x88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x18
	mov r2, #1
	add r3, r6, #0
	bl sub_0203A1FC
	str r0, [r4, #0xc]
	mov r0, #0x89
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x18
	mov r2, #1
	add r3, r6, #0
	bl sub_0203A1FC
	str r0, [r4, #0x10]
	mov r0, #0x8a
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl sub_0203A1FC
	add r1, r0, #0
	ldr r0, _021E6BD8 ; =0x0000FFFF
	mov r2, #0x18
	str r1, [r4, #0x14]
	blx MIi_CpuClear16
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6BD4: .word 0x021E7598
_021E6BD8: .word 0x0000FFFF
	thumb_func_end ovy55_21e6b58

	thumb_func_start ovy55_21e6bdc
ovy55_21e6bdc: ; 0x021E6BDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A24C
	ldr r0, [r4, #0x10]
	bl sub_0203A24C
	ldr r0, [r4, #0x14]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy55_21e6bdc

	thumb_func_start ovy55_21e6bfc
ovy55_21e6bfc: ; 0x021E6BFC
	push {r4, r5}
	ldrh r5, [r0, #6]
	mov r3, #0
	cmp r5, #0
	ble _021E6C1C
	ldr r4, [r0, #0x10]
_021E6C08:
	lsl r2, r3, #1
	ldrh r0, [r4, r2]
	cmp r0, #0
	bne _021E6C16
	strh r1, [r4, r2]
	pop {r4, r5}
	bx lr
_021E6C16:
	add r3, r3, #1
	cmp r3, r5
	blt _021E6C08
_021E6C1C:
	pop {r4, r5}
	bx lr
	thumb_func_end ovy55_21e6bfc

	thumb_func_start ovy55_21e6c20
ovy55_21e6c20: ; 0x021E6C20
	push {r4, r5}
	ldrh r5, [r0, #4]
	mov r3, #0
	cmp r5, #0
	ble _021E6C40
	ldr r4, [r0, #0xc]
_021E6C2C:
	lsl r2, r3, #1
	ldrh r0, [r4, r2]
	cmp r0, #0
	bne _021E6C3A
	strh r1, [r4, r2]
	pop {r4, r5}
	bx lr
_021E6C3A:
	add r3, r3, #1
	cmp r3, r5
	blt _021E6C2C
_021E6C40:
	pop {r4, r5}
	bx lr
	thumb_func_end ovy55_21e6c20

	thumb_func_start ovy55_21e6c44
ovy55_21e6c44: ; 0x021E6C44
	push {r3, r4, r5, r6}
	ldrh r6, [r0, #8]
	mov r4, #0
	cmp r6, #0
	ble _021E6C66
	ldr r5, [r0, #0x14]
	ldr r0, _021E6C6C ; =0x0000FFFF
_021E6C52:
	lsl r3, r4, #1
	ldrh r2, [r5, r3]
	cmp r2, r0
	bne _021E6C60
	strh r1, [r5, r3]
	pop {r3, r4, r5, r6}
	bx lr
_021E6C60:
	add r4, r4, #1
	cmp r4, r6
	blt _021E6C52
_021E6C66:
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021E6C6C: .word 0x0000FFFF
	thumb_func_end ovy55_21e6c44

	thumb_func_start ovy55_21e6c70
ovy55_21e6c70: ; 0x021E6C70
	push {r3, r4, r5, r6}
	cmp r0, #0
	bne _021E6C7C
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021E6C7C:
	ldr r4, [r0]
	cmp r4, #0
	bne _021E6CA6
	ldrh r5, [r0, #4]
	mov r4, #0
	cmp r5, #0
	ble _021E6CA6
_021E6C8A:
	cmp r1, #0
	beq _021E6C9E
	ldr r6, [r0, #0xc]
	lsl r5, r4, #1
	ldrh r5, [r6, r5]
	cmp r1, r5
	bne _021E6C9E
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021E6C9E:
	ldrh r5, [r0, #4]
	add r4, r4, #1
	cmp r4, r5
	blt _021E6C8A
_021E6CA6:
	ldrh r4, [r0, #6]
	mov r1, #0
	cmp r4, #0
	ble _021E6CCA
_021E6CAE:
	cmp r2, #0
	beq _021E6CC2
	ldr r5, [r0, #0x10]
	lsl r4, r1, #1
	ldrh r4, [r5, r4]
	cmp r2, r4
	bne _021E6CC2
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021E6CC2:
	ldrh r4, [r0, #6]
	add r1, r1, #1
	cmp r1, r4
	blt _021E6CAE
_021E6CCA:
	ldrh r2, [r0, #8]
	mov r1, #0
	cmp r2, #0
	ble _021E6CF0
	ldr r2, _021E6CF8 ; =0x0000FFFF
_021E6CD4:
	cmp r3, r2
	beq _021E6CE8
	ldr r5, [r0, #0x14]
	lsl r4, r1, #1
	ldrh r4, [r5, r4]
	cmp r3, r4
	bne _021E6CE8
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021E6CE8:
	ldrh r4, [r0, #8]
	add r1, r1, #1
	cmp r1, r4
	blt _021E6CD4
_021E6CF0:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021E6CF8: .word 0x0000FFFF
	thumb_func_end ovy55_21e6c70

	thumb_func_start ovy55_21e6cfc
ovy55_21e6cfc: ; 0x021E6CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, _021E6D7C ; =0x00000112
	add r7, r3, #0
	add r5, r2, #0
	str r1, [sp]
	ldr r3, _021E6D80 ; =0x021E7598
	mov r1, #8
	mov r2, #1
	add r4, r0, #0
	bl sub_0203A1FC
	add r6, r0, #0
	ldr r0, _021E6D7C ; =0x00000112
	mov r1, #0x14
	strh r5, [r6]
	add r0, r0, #2
	str r0, [sp]
	ldr r3, _021E6D80 ; =0x021E7598
	add r0, r4, #0
	mul r1, r5
	mov r2, #1
	bl sub_0203A1FC
	str r0, [r6, #4]
	ldr r1, _021E6D84 ; =0x00007FFF
	add r2, r4, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	bl sub_0204AA30
	mov r4, #0
	str r0, [sp, #8]
	cmp r5, #0
	ble _021E6D6E
_021E6D4C:
	ldr r3, [r6, #4]
	mov r0, #0x14
	add r1, r4, #0
	mul r1, r0
	mov r0, #1
	strb r0, [r3, r1]
	lsl r0, r4, #1
	add r2, r3, r1
	ldrh r1, [r7, r0]
	ldr r0, [sp, #8]
	strh r1, [r2, #2]
	add r2, r2, #4
	bl sub_0204ABA4
	add r4, r4, #1
	cmp r4, r5
	blt _021E6D4C
_021E6D6E:
	ldr r0, [sp, #8]
	bl sub_0204AB0C
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E6D7C: .word 0x00000112
_021E6D80: .word 0x021E7598
_021E6D84: .word 0x00007FFF
	thumb_func_end ovy55_21e6cfc

	thumb_func_start ovy55_21e6d88
ovy55_21e6d88: ; 0x021E6D88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0203A24C
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy55_21e6d88

	thumb_func_start ovy55_21e6d9c
ovy55_21e6d9c: ; 0x021E6D9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r0, [r6]
	str r1, [sp]
	mov r7, #0
	mov r4, #0
	cmp r0, #0
	ble _021E6DDA
_021E6DAC:
	mov r0, #0x14
	ldr r1, [r6, #4]
	mul r0, r4
	add r5, r1, r0
	mov r3, #2
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #0x10]
	ldrsh r3, [r5, r3]
	ldr r0, [sp]
	bl ovy55_21e6c70
	cmp r0, #1
	bne _021E6DCA
	mov r0, #0
	strb r0, [r5]
_021E6DCA:
	ldrb r0, [r5]
	cmp r0, #0
	beq _021E6DD2
	add r7, r7, #1
_021E6DD2:
	ldrh r0, [r6]
	add r4, r4, #1
	cmp r4, r0
	blt _021E6DAC
_021E6DDA:
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy55_21e6d9c

	thumb_func_start ovy55_21e6de0
ovy55_21e6de0: ; 0x021E6DE0
	push {r4, r5}
	ldrh r5, [r0]
	mov r3, #0
	cmp r5, #0
	bls _021E6E04
	ldr r4, [r0, #4]
	mov r0, #0x14
_021E6DEE:
	add r2, r3, #0
	mul r2, r0
	ldrb r2, [r4, r2]
	cmp r2, #0
	beq _021E6DFE
	cmp r1, #0
	beq _021E6E04
	sub r1, r1, #1
_021E6DFE:
	add r3, r3, #1
	cmp r3, r5
	blo _021E6DEE
_021E6E04:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	pop {r4, r5}
	bx lr
	thumb_func_end ovy55_21e6de0

	thumb_func_start ovy55_21e6e0c
ovy55_21e6e0c: ; 0x021E6E0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r3, r2, #0
	mov r1, #0x14
	mul r3, r1
	ldr r1, [r0, #4]
	mov r2, #0
	strb r2, [r1, r3]
	ldr r0, [r0, #4]
	add r5, r0, r3
	ldrh r1, [r5, #4]
	add r0, r4, #0
	bl ovy55_21e6c20
	ldrh r1, [r5, #0x10]
	add r0, r4, #0
	bl ovy55_21e6bfc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy55_21e6e0c

	thumb_func_start ovy55_21e6e34
ovy55_21e6e34: ; 0x021E6E34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x28]
	add r5, r1, #0
	str r2, [sp, #4]
	str r0, [sp, #0x28]
	add r0, sp, #8
	mov r1, #0
	mov r2, #0xc
	add r7, r3, #0
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E6E8C
_021E6E56:
	add r0, r5, #0
	add r1, r7, #0
	bl ovy55_21e6d9c
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	bl ovy55_21e6b04
	add r1, r4, #0
	blx sub_0208D868
	add r0, r5, #0
	bl ovy55_21e6de0
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ovy55_21e6e0c
	lsl r1, r6, #1
	add r0, sp, #8
	strh r4, [r0, r1]
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	bne _021E6E56
_021E6E8C:
	mov r2, #0
	cmp r6, #0
	ble _021E6EAC
	add r7, sp, #8
_021E6E94:
	lsl r1, r2, #1
	ldrh r4, [r7, r1]
	mov r3, #0x14
	ldr r0, [r5, #4]
	mul r3, r4
	add r0, r0, r3
	ldrh r3, [r0, #2]
	ldr r0, [sp]
	add r2, r2, #1
	strh r3, [r0, r1]
	cmp r2, r6
	blt _021E6E94
_021E6EAC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy55_21e6e34

	thumb_func_start ovy55_21e6eb0
ovy55_21e6eb0: ; 0x021E6EB0
	push {r3, r4}
	cmp r0, #0xc
	beq _021E6EBA
	cmp r0, #0xd
	beq _021E6EBE
_021E6EBA:
	mov r0, #0
	b _021E6EC0
_021E6EBE:
	mov r0, #1
_021E6EC0:
	lsl r4, r1, #3
	ldr r1, _021E6ED8 ; =0x021E7588
	lsl r0, r0, #2
	add r1, r1, r4
	ldrh r1, [r0, r1]
	strh r1, [r2]
	ldr r1, _021E6EDC ; =0x021E758A
	add r1, r1, r4
	ldrh r0, [r0, r1]
	strh r0, [r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
_021E6ED8: .word 0x021E7588
_021E6EDC: .word 0x021E758A
	thumb_func_end ovy55_21e6eb0

	thumb_func_start ovy55_21e6ee0
ovy55_21e6ee0: ; 0x021E6EE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r2, sp, #4
	add r6, r3, #0
	add r2, #2
	add r3, sp, #4
	bl ovy55_21e6eb0
	add r4, sp, #4
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	ldr r3, _021E6F2C ; =0x021E7598
	mov r2, #1
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _021E6F30 ; =0x000001F9
	lsl r1, r5, #1
	str r0, [sp]
	add r0, r7, #0
	bl sub_0203A1FC
	mov r3, #0
	cmp r5, #0
	ble _021E6F24
_021E6F16:
	ldrh r1, [r4, #2]
	add r2, r1, r3
	lsl r1, r3, #1
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, r5
	blt _021E6F16
_021E6F24:
	strh r5, [r6]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6F2C: .word 0x021E7598
_021E6F30: .word 0x000001F9
	thumb_func_end ovy55_21e6ee0

	thumb_func_start ovy55_21e6f34
ovy55_21e6f34: ; 0x021E6F34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	bl OS_GetTick
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	add r2, r5, #0
	bl ovy55_21e6cfc
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r2, sp, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldrb r2, [r2, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r3, r7, #0
	bl ovy55_21e6e34
	add r0, r5, #0
	bl ovy55_21e6d88
	bl OS_GetTick
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy55_21e6f34

	thumb_func_start ovy55_21e6f74
ovy55_21e6f74: ; 0x021E6F74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x5c]
	str r3, [sp, #0x20]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r1, [r0]
	ldr r0, _021E7128 ; =0x00007FFF
	str r2, [sp, #0x1c]
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r1, #0xc]
	add r0, r6, #0
	ldr r4, [sp, #0x58]
	bl ovy55_21e6b58
	add r7, r0, #0
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _021E6FC0
	mov r5, #0
	cmp r4, #0
	ble _021E6FC0
_021E6FAE:
	ldr r1, [sp, #0x5c]
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	add r0, r7, #0
	bl ovy55_21e6c20
	add r5, r5, #1
	cmp r5, r4
	blt _021E6FAE
_021E6FC0:
	add r0, sp, #0x34
	add r0, #2
	mov r1, #0
	mov r2, #0xc
	mov r5, #0xc
	blx MI_CpuFill8
	ldr r1, _021E712C ; =0x000013E4
	ldr r0, [sp, #0x14]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021E6FE0
	cmp r0, #1
	beq _021E7010
	cmp r0, #2
	beq _021E7040
_021E6FE0:
	ldr r0, [sp, #0x14]
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r2, r6, #0
	add r3, sp, #0x34
	bl ovy55_21e6ee0
	add r5, r0, #0
	ldr r0, _021E7130 ; =0x00000101
	str r5, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, sp, #0x34
	add r0, sp, #0x34
	ldrh r3, [r3]
	add r0, #2
	add r1, r7, #0
	add r2, r6, #0
	bl ovy55_21e6f34
	add r0, r5, #0
	b _021E70A8
_021E7010:
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r0, #0xc]
	add r2, r6, #0
	add r3, sp, #0x34
	bl ovy55_21e6ee0
	str r0, [sp]
	add r5, #0xf5
	str r5, [sp, #4]
	str r0, [sp, #0x24]
	str r4, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, sp, #0x34
	add r0, sp, #0x34
	ldrh r3, [r3]
	add r0, #2
	add r1, r7, #0
	add r2, r6, #0
	bl ovy55_21e6f34
	ldr r0, [sp, #0x24]
	b _021E70A8
_021E7040:
	ldr r0, [sp, #0x14]
	mov r1, #1
	ldr r0, [r0, #0xc]
	add r2, r6, #0
	add r3, sp, #0x34
	bl ovy55_21e6ee0
	str r0, [sp]
	add r5, #0xf5
	str r0, [sp, #0x28]
	str r5, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, sp, #0x34
	add r0, sp, #0x34
	ldrh r3, [r3]
	add r0, #2
	add r1, r7, #0
	add r2, r6, #0
	bl ovy55_21e6f34
	ldr r0, [sp, #0x28]
	bl sub_0203A24C
	cmp r4, #3
	bls _021E70AC
	ldr r0, [sp, #0x14]
	mov r1, #0
	ldr r0, [r0, #0xc]
	add r2, r6, #0
	add r3, sp, #0x34
	bl ovy55_21e6ee0
	str r0, [sp]
	str r0, [sp, #0x2c]
	sub r0, r4, #3
	lsl r0, r0, #0x18
	str r5, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, sp, #0x34
	ldrh r3, [r3]
	add r0, sp, #0x3c
	add r1, r7, #0
	add r2, r6, #0
	bl ovy55_21e6f34
	ldr r0, [sp, #0x2c]
_021E70A8:
	bl sub_0203A24C
_021E70AC:
	add r0, r7, #0
	bl ovy55_21e6bdc
	ldr r0, _021E7134 ; =0x00000272
	add r1, r6, #0
	str r0, [sp]
	ldr r0, _021E7128 ; =0x00007FFF
	ldr r3, _021E7138 ; =0x021E7598
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #0x5a
	lsl r1, r1, #2
	lsr r0, r0, #0x10
	mov r2, #0
	str r1, [sp, #0x30]
	mov r5, #0
	bl sub_0203A1FC
	add r7, r0, #0
	cmp r4, #0
	ble _021E7110
	ldr r0, [sp, #0x30]
	sub r0, #0x67
	str r0, [sp, #0x30]
_021E70E0:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r2, sp, #0x34
	str r0, [sp, #4]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x3c
	mul r0, r5
	str r6, [sp, #0x10]
	lsl r3, r5, #1
	add r2, #2
	ldrh r2, [r2, r3]
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	add r0, r7, r0
	bl sub_02162490
	add r5, r5, #1
	cmp r5, r4
	blt _021E70E0
_021E7110:
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	mov r2, #0x32
	add r3, r4, #0
	str r6, [sp]
	bl sub_021621D4
	add r0, r7, #0
	bl sub_0203A24C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7128: .word 0x00007FFF
_021E712C: .word 0x000013E4
_021E7130: .word 0x00000101
_021E7134: .word 0x00000272
_021E7138: .word 0x021E7598
	thumb_func_end ovy55_21e6f74

	thumb_func_start ovy55_21e713c
ovy55_21e713c: ; 0x021E713C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r3, [sp, #0xc]
	mov r1, #6
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	ldr r1, _021E71DC ; =0x000013C4
	add r6, r0, #0
	ldr r1, [r6, r1]
	ldr r2, _021E71E0 ; =0x0000A0A2
	mov r3, #0x14
	bl ovy55_21e6f74
	ldrh r1, [r6]
	ldr r0, _021E71E4 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	mov r0, #0xe
	bl GFL_StrBufCreate
	add r7, r0, #0
	ldr r2, _021E71E8 ; =0x00000195
	ldr r3, [sp, #0x10]
	mov r0, #0
	mov r1, #2
	bl GFL_MsgSysLoadData
	add r4, r0, #0
	beq _021E7192
	mov r1, #0x12
	add r2, r7, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl GFL_MsgDataFree
_021E7192:
	mov r5, #0
_021E7194:
	ldr r0, _021E71DC ; =0x000013C4
	add r1, r5, #0
	ldr r0, [r6, r0]
	bl sub_0201FF08
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #8]
	str r1, [sp]
	ldr r3, [sp, #0xc]
	add r4, r0, #0
	mov r1, #0
	bl sub_02035964
	add r0, r4, #0
	mov r1, #0x8d
	add r2, r7, #0
	bl sub_0201CD1C
	add r0, r4, #0
	mov r1, #0x9a
	mov r2, #0
	bl sub_0201CD1C
	ldr r2, _021E71E0 ; =0x0000A0A2
	add r0, r4, #0
	mov r1, #7
	bl sub_0201CD1C
	add r5, r5, #1
	cmp r5, #6
	blt _021E7194
	add r0, r7, #0
	bl GFL_StrBufFree
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E71DC: .word 0x000013C4
_021E71E0: .word 0x0000A0A2
_021E71E4: .word 0x00007FFF
_021E71E8: .word 0x00000195
	thumb_func_end ovy55_21e713c

	thumb_func_start ovy55_21e71ec
ovy55_21e71ec: ; 0x021E71EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_021E5D7C
	ldr r7, _021E725C ; =0x000013BC
	str r0, [sp, #0xc]
	ldr r0, [r5, r7]
	bl sub_0201FDF8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021F0724
	bl sub_021E5E18
	str r0, [sp, #8]
	add r0, sp, #0x10
	mov r1, #0
	mov r2, #0xc
	mov r4, #0
	blx MI_CpuFill8
	cmp r6, #0
	ble _021E723A
_021E721E:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0201FF08
	mov r1, #5
	mov r2, #0
	bl sub_0201CCF8
	lsl r2, r4, #1
	add r1, sp, #0x10
	add r4, r4, #1
	strh r0, [r1, r2]
	cmp r4, r6
	blt _021E721E
_021E723A:
	ldr r0, [sp, #0xc]
	mov r1, #0x4f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r2, _021E7260 ; =0x00003039
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ovy55_21e6f74
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E725C: .word 0x000013BC
_021E7260: .word 0x00003039
	thumb_func_end ovy55_21e71ec
_021E7264:
	.byte 0xA9, 0x58, 0x1E, 0x02, 0xE1, 0x58, 0x1E, 0x02, 0xFD, 0x58, 0x1E, 0x02
	.byte 0x29, 0x59, 0x1E, 0x02, 0x45, 0x59, 0x1E, 0x02, 0x61, 0x59, 0x1E, 0x02, 0x21, 0x76, 0x1E, 0x02
	.byte 0x75, 0x76, 0x1E, 0x02, 0xB5, 0x76, 0x1E, 0x02, 0x89, 0x59, 0x1E, 0x02, 0xA5, 0x59, 0x1E, 0x02
	.byte 0xC1, 0x59, 0x1E, 0x02, 0xDD, 0x59, 0x1E, 0x02, 0xF9, 0x59, 0x1E, 0x02, 0x15, 0x5A, 0x1E, 0x02
	.byte 0x31, 0x5A, 0x1E, 0x02, 0x4D, 0x5A, 0x1E, 0x02, 0x69, 0x5A, 0x1E, 0x02, 0x85, 0x5A, 0x1E, 0x02
	.byte 0x15, 0x78, 0x1E, 0x02, 0xD5, 0x75, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x89, 0x79, 0x1E, 0x02
	.byte 0x95, 0x78, 0x1E, 0x02, 0xB9, 0x5A, 0x1E, 0x02, 0xC1, 0x79, 0x1E, 0x02, 0xF1, 0x79, 0x1E, 0x02
	.byte 0x31, 0x7A, 0x1E, 0x02, 0x09, 0x78, 0x1E, 0x02, 0x51, 0x78, 0x1E, 0x02, 0x79, 0x78, 0x1E, 0x02
	.byte 0x95, 0x78, 0x1E, 0x02, 0xA5, 0x78, 0x1E, 0x02, 0xC9, 0x78, 0x1E, 0x02, 0xFD, 0x78, 0x1E, 0x02
	.byte 0x49, 0x79, 0x1E, 0x02, 0xE9, 0x79, 0x1E, 0x02, 0xED, 0x79, 0x1E, 0x02, 0x4D, 0x78, 0x1E, 0x02
	.byte 0xD5, 0x77, 0x1E, 0x02, 0x0D, 0x76, 0x1E, 0x02, 0x31, 0x76, 0x1E, 0x02, 0xA9, 0x76, 0x1E, 0x02
	.byte 0x0D, 0x77, 0x1E, 0x02, 0xDD, 0x5A, 0x1E, 0x02, 0x7D, 0x77, 0x1E, 0x02, 0x51, 0x77, 0x1E, 0x02
	.byte 0x39, 0x5B, 0x1E, 0x02, 0x4D, 0x7A, 0x1E, 0x02, 0x9D, 0x7A, 0x1E, 0x02, 0x01, 0x7B, 0x1E, 0x02
	.byte 0x59, 0x7B, 0x1E, 0x02, 0x21, 0x7B, 0x1E, 0x02, 0x61, 0x7B, 0x1E, 0x02, 0xA1, 0x7B, 0x1E, 0x02
	.byte 0xB5, 0x7B, 0x1E, 0x02, 0xED, 0x7B, 0x1E, 0x02, 0xF5, 0x76, 0x1E, 0x02, 0xB1, 0x77, 0x1E, 0x02
	.byte 0x11, 0x77, 0x1E, 0x02, 0xFD, 0x79, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x1D, 0x1E, 0x1F, 0x20
	.byte 0x21, 0x22, 0x23, 0x24, 0x03, 0x03, 0x04, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x04
	.byte 0x03, 0x03, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x02, 0x04, 0x00, 0x02, 0x04, 0x04, 0x04
	.byte 0x04, 0x04, 0x04, 0x04, 0x04, 0x08, 0x04, 0x02, 0x02, 0x04, 0x08, 0x02, 0x00, 0x08, 0x04, 0x04
	.byte 0x04, 0x04, 0x02, 0x08, 0x04, 0x08, 0x04, 0x08, 0x04, 0x04, 0x04, 0x02, 0x08, 0x04, 0x02, 0x04
	.byte 0x04, 0x08, 0x02, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x02, 0x02, 0x02, 0x04, 0x02, 0x00
	.byte 0x04, 0x04, 0x08, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x08, 0x04, 0x08, 0x02, 0x04
	.byte 0x08, 0x08, 0x04, 0x02, 0x08, 0x04, 0x04, 0x04, 0x04, 0x04, 0x02, 0x08, 0x04, 0x02, 0x04, 0x08
	.byte 0x04, 0x02, 0x08, 0x04, 0x04, 0x04, 0x04, 0x08, 0x04, 0x04, 0x04, 0x02, 0x02, 0x02, 0x04, 0x04
	.byte 0x04, 0x02, 0x02, 0x02, 0x04, 0x08, 0x04, 0x08, 0x04, 0x04, 0x08, 0x00, 0x04, 0x04, 0x04, 0x04
	.byte 0x04, 0x04, 0x08, 0x02, 0x04, 0x04, 0x04, 0x04, 0x08, 0x04, 0x04, 0x02, 0x04, 0x04, 0x04, 0x04
	.byte 0x04, 0x08, 0x04, 0x04, 0x02, 0x02, 0x02, 0x04, 0x02, 0x04, 0x08, 0x04, 0x04, 0x04, 0x04, 0x04
	.byte 0x04, 0x04, 0x02, 0x08, 0x04, 0x08, 0x02, 0x02, 0x08, 0x04, 0x04, 0x08, 0x02, 0x04, 0x04, 0x04
	.byte 0x04, 0x04, 0x08, 0x08, 0x04, 0x04, 0x04, 0x08, 0x02, 0x02, 0x04, 0x04, 0x04, 0x02, 0x04, 0x04
	.byte 0x04, 0x02, 0x02, 0x08, 0x08, 0x02, 0x04, 0x02, 0x02, 0x08, 0x02, 0x04, 0x04, 0x04, 0x02, 0x04
	.byte 0x04, 0x04, 0x08, 0x04, 0x00, 0x04, 0x04, 0x04, 0x04, 0x04, 0x08, 0x02, 0x02, 0x04, 0x04, 0x02
	.byte 0x04, 0x04, 0x08, 0x04, 0x08, 0x04, 0x04, 0x04, 0x04, 0x02, 0x04, 0x04, 0x04, 0x04, 0x02, 0x04
	.byte 0x04, 0x00, 0x04, 0x04, 0x08, 0x04, 0x08, 0x04, 0x04, 0x04, 0x02, 0x02, 0x02, 0x08, 0x04, 0x04
	.byte 0x02, 0x08, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x02, 0x04, 0x04, 0x04, 0x04
	.byte 0x04, 0x04, 0x08, 0x04, 0x04, 0x02, 0x04, 0x04, 0x04, 0x04, 0x04, 0x08, 0x02, 0x04, 0x04, 0x04
	.byte 0x04, 0x08, 0x04, 0x04, 0x02, 0x00, 0x00, 0x00, 0xF8, 0x00, 0xFB, 0x00, 0xFE, 0x00, 0x02, 0x32
	.byte 0x18, 0x11, 0x34, 0x4A, 0x39, 0x0F, 0x03, 0x31, 0x19, 0x12, 0x2E, 0x41, 0x3E, 0x0E, 0x1B, 0x1C
	.byte 0x46, 0x47, 0x04, 0x05, 0x23, 0x24, 0x33, 0x40, 0x42, 0x43, 0x30, 0x57, 0x00, 0x00, 0x03, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x06, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x0D, 0x00
	.byte 0x12, 0x00, 0x17, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6D, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x74, 0x6F, 0x6F, 0x6C, 0x2E, 0x63, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x73, 0x65, 0x74, 0x75, 0x70, 0x2E, 0x63, 0x00, 0x01, 0x00, 0x84, 0x00, 0xD1, 0x00, 0x2E, 0x02
	.byte 0x85, 0x00, 0xD0, 0x00, 0x2F, 0x02, 0x8C, 0x03, 0x77, 0x62, 0x74, 0x5F, 0x70, 0x61, 0x72, 0x74
	.byte 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E7264
