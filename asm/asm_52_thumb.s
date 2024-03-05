	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02074B14
sub_02074B14: ; 0x02074B14
	push {r4, r5, lr}
	sub sp, #0x4c
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _02074B20
	add r4, sp, #0xc
_02074B20:
	ldr r5, [sp, #0x58]
	str r5, [sp]
	ldr r5, [sp, #0x5c]
	str r5, [sp, #4]
	str r4, [sp, #8]
	blx MTX_PerspectiveW
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _02074B40
	ldr r0, _02074B44 ; =0x04000440
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl sub_02074C14
_02074B40:
	add sp, #0x4c
	pop {r4, r5, pc}
	.align 2, 0
_02074B44: .word 0x04000440
	thumb_func_end sub_02074B14

	thumb_func_start sub_02074B48
sub_02074B48: ; 0x02074B48
	push {r3, r4, r5, lr}
	sub sp, #0x50
	ldr r4, [sp, #0x70]
	cmp r4, #0
	bne _02074B54
	add r4, sp, #0x10
_02074B54:
	ldr r5, [sp, #0x60]
	str r5, [sp]
	ldr r5, [sp, #0x64]
	str r5, [sp, #4]
	ldr r5, [sp, #0x68]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	blx MTX_OrthoW
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	beq _02074B78
	ldr r0, _02074B7C ; =0x04000440
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl sub_02074C14
_02074B78:
	add sp, #0x50
	pop {r3, r4, r5, pc}
	.align 2, 0
_02074B7C: .word 0x04000440
	thumb_func_end sub_02074B48

	thumb_func_start sub_02074B80
sub_02074B80: ; 0x02074B80
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r4, [sp, #0x40]
	add r5, r3, #0
	cmp r4, #0
	bne _02074B8E
	add r4, sp, #0
_02074B8E:
	add r3, r4, #0
	blx MTX_LookAt
	cmp r5, #0
	beq _02074BA4
	ldr r0, _02074BA8 ; =0x04000440
	mov r1, #2
	str r1, [r0]
	add r0, r4, #0
	bl sub_02074C28
_02074BA4:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.align 2, 0
_02074BA8: .word 0x04000440
	thumb_func_end sub_02074B80

	thumb_func_start sub_02074BAC
sub_02074BAC: ; 0x02074BAC
	mov r2, #1
	ldr r3, _02074BCC ; =0x04000468
	lsl r2, r2, #0xc
	str r2, [r3]
	mov r2, #0
	str r2, [r3]
	str r2, [r3]
	str r2, [r3]
	str r1, [r3]
	str r0, [r3]
	str r2, [r3]
	neg r0, r0
	str r0, [r3]
	str r1, [r3]
	bx lr
	nop
_02074BCC: .word 0x04000468
	thumb_func_end sub_02074BAC

	thumb_func_start sub_02074BD0
sub_02074BD0: ; 0x02074BD0
	push {r3, r4}
	ldr r4, _02074BF0 ; =0x04000468
	mov r3, #0
	str r1, [r4]
	str r3, [r4]
	neg r2, r0
	str r2, [r4]
	str r3, [r4]
	lsr r2, r4, #0xe
	str r2, [r4]
	str r3, [r4]
	str r0, [r4]
	str r3, [r4]
	str r1, [r4]
	pop {r3, r4}
	bx lr
	.align 2, 0
_02074BF0: .word 0x04000468
	thumb_func_end sub_02074BD0

	thumb_func_start sub_02074BF4
sub_02074BF4: ; 0x02074BF4
	ldr r3, _02074C10 ; =0x04000468
	mov r2, #0
	str r1, [r3]
	str r0, [r3]
	str r2, [r3]
	neg r0, r0
	str r0, [r3]
	str r1, [r3]
	str r2, [r3]
	str r2, [r3]
	str r2, [r3]
	lsr r0, r3, #0xe
	str r0, [r3]
	bx lr
	.align 2, 0
_02074C10: .word 0x04000468
	thumb_func_end sub_02074BF4

	thumb_func_start sub_02074C14
sub_02074C14: ; 0x02074C14
	ldr r1, _02074C20 ; =0x04000400
	mov r2, #0x16
	ldr r3, _02074C24 ; =sub_02076F58
	str r2, [r1]
	bx r3
	nop
_02074C20: .word 0x04000400
_02074C24: .word sub_02076F58
	thumb_func_end sub_02074C14

	thumb_func_start sub_02074C28
sub_02074C28: ; 0x02074C28
	ldr r1, _02074C34 ; =0x04000400
	mov r2, #0x17
	ldr r3, _02074C38 ; =sub_02076F34
	str r2, [r1]
	bx r3
	nop
_02074C34: .word 0x04000400
_02074C38: .word sub_02076F34
	thumb_func_end sub_02074C28

	thumb_func_start sub_02074C3C
sub_02074C3C: ; 0x02074C3C
	ldr r1, _02074C48 ; =0x04000400
	mov r2, #0x18
	ldr r3, _02074C4C ; =sub_02076F58
	str r2, [r1]
	bx r3
	nop
_02074C48: .word 0x04000400
_02074C4C: .word sub_02076F58
	thumb_func_end sub_02074C3C

	thumb_func_start sub_02074C50
sub_02074C50: ; 0x02074C50
	ldr r1, _02074C5C ; =0x04000400
	mov r2, #0x19
	ldr r3, _02074C60 ; =sub_02076F34
	str r2, [r1]
	bx r3
	nop
_02074C5C: .word 0x04000400
_02074C60: .word sub_02076F34
	thumb_func_end sub_02074C50

	thumb_func_start sub_02074C64
sub_02074C64: ; 0x02074C64
	ldr r1, _02074C70 ; =0x04000400
	mov r2, #0x1a
	ldr r3, _02074C74 ; =sub_0207873C
	str r2, [r1]
	bx r3
	nop
_02074C70: .word 0x04000400
_02074C74: .word sub_0207873C
	thumb_func_end sub_02074C64

	thumb_func_start sub_02074C78
sub_02074C78: ; 0x02074C78
	push {r3, r4, r5, lr}
	ldr r4, _02074C98 ; =0x04000400
	add r5, r1, #0
	mov r1, #0x19
	str r1, [r4]
	add r1, r4, #0
	blx sub_0207873C
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4]
	ldr r0, [r5, #8]
	str r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_02074C98: .word 0x04000400
	thumb_func_end sub_02074C78

	thumb_func_start sub_02074C9C
sub_02074C9C: ; 0x02074C9C
	push {r4, r5, r6, lr}
	bl sub_02074DA0
	ldr r0, _02074D34 ; =0x04000504
	mov r1, #0
	str r1, [r0]
	mov r1, #2
	add r0, #0xfc
	lsl r1, r1, #0x1a
_02074CAE:
	ldr r2, [r0]
	tst r2, r1
	bne _02074CAE
	ldr r4, _02074D38 ; =0x04000060
	mov r5, #0
	strh r5, [r4]
	add r1, r4, #0
	str r5, [r0]
	sub r1, #0x50
	str r5, [r1]
	ldrh r2, [r4]
	lsr r1, r4, #0xd
	ldr r6, _02074D3C ; =0x3FFFFFFF
	orr r1, r2
	strh r1, [r4]
	ldrh r2, [r4]
	lsr r1, r4, #0xe
	orr r1, r2
	strh r1, [r4]
	ldrh r2, [r4]
	ldr r1, _02074D40 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r4]
	ldrh r2, [r4]
	add r1, r1, #2
	and r2, r1
	mov r1, #0x10
	orr r2, r1
	strh r2, [r4]
	ldrh r3, [r4]
	ldr r2, _02074D44 ; =0x0000CFFB
	lsl r1, r1, #0xb
	and r2, r3
	strh r2, [r4]
	ldr r2, [r0]
	orr r1, r2
	str r1, [r0]
	ldr r1, [r0]
	add r2, r1, #0
	mov r1, #2
	and r2, r6
	lsl r1, r1, #0x1e
	orr r1, r2
	str r1, [r0]
	bl sub_02074DC0
	ldr r1, _02074D48 ; =0x04000350
	lsr r0, r6, #0xf
	str r5, [r1]
	strh r0, [r1, #4]
	strh r5, [r1, #6]
	str r5, [r1, #8]
	sub r4, #0x58
	strh r5, [r1, #0xc]
	ldrh r1, [r4]
	mov r0, #3
	bic r1, r0
	strh r1, [r4]
	bl sub_02074F48
	ldr r1, _02074D4C ; =0x001F0080
	ldr r0, _02074D50 ; =0x040004A4
	str r1, [r0]
	str r5, [r0, #4]
	str r5, [r0, #8]
	pop {r4, r5, r6, pc}
	nop
_02074D34: .word 0x04000504
_02074D38: .word 0x04000060
_02074D3C: .word 0x3FFFFFFF
_02074D40: .word 0xFFFFCFFD
_02074D44: .word 0x0000CFFB
_02074D48: .word 0x04000350
_02074D4C: .word 0x001F0080
_02074D50: .word 0x040004A4
	thumb_func_end sub_02074C9C

	thumb_func_start sub_02074D54
sub_02074D54: ; 0x02074D54
	push {r3, lr}
	mov r0, #2
	ldr r2, _02074D90 ; =0x04000600
	lsl r0, r0, #0x1a
_02074D5C:
	ldr r1, [r2]
	tst r1, r0
	bne _02074D5C
	mov r0, #2
	ldr r1, [r2]
	lsl r0, r0, #0xe
	orr r0, r1
	str r0, [r2]
	ldr r2, _02074D94 ; =0x04000060
	ldrh r1, [r2]
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	lsr r0, r2, #0xe
	orr r0, r1
	strh r0, [r2]
	bl sub_02074E24
	ldr r0, _02074D98 ; =0x001F0080
	ldr r1, _02074D9C ; =0x040004A4
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #8]
	pop {r3, pc}
	.align 2, 0
_02074D90: .word 0x04000600
_02074D94: .word 0x04000060
_02074D98: .word 0x001F0080
_02074D9C: .word 0x040004A4
	thumb_func_end sub_02074D54

	thumb_func_start sub_02074DA0
sub_02074DA0: ; 0x02074DA0
	push {r4, lr}
	ldr r4, _02074DB8 ; =0x04000400
	add r0, r4, #0
	blx sub_0207506C
	ldr r2, _02074DBC ; =0x04000600
	lsl r0, r4, #0x11
_02074DAE:
	ldr r1, [r2]
	tst r1, r0
	bne _02074DAE
	pop {r4, pc}
	nop
_02074DB8: .word 0x04000400
_02074DBC: .word 0x04000600
	thumb_func_end sub_02074DA0

	thumb_func_start sub_02074DC0
sub_02074DC0: ; 0x02074DC0
	push {r4, lr}
	sub sp, #8
	ldr r2, _02074E18 ; =0x04000600
	ldr r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	str r0, [r2]
	add r4, sp, #4
_02074DD0:
	add r0, r4, #0
	bl sub_02074FF0
	cmp r0, #0
	bne _02074DD0
	add r4, sp, #0
_02074DDC:
	add r0, r4, #0
	bl sub_02075014
	cmp r0, #0
	bne _02074DDC
	ldr r1, _02074E1C ; =0x04000440
	mov r0, #3
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1]
	ldr r0, [sp]
	cmp r0, #0
	beq _02074DFA
	str r0, [r1, #8]
_02074DFA:
	ldr r2, _02074E20 ; =0x04000454
	mov r3, #0
	add r0, r2, #0
	str r3, [r2]
	mov r1, #2
	sub r0, #0x14
	str r1, [r0]
	add r0, r2, #0
	ldr r1, [sp, #4]
	sub r0, #0xc
	str r1, [r0]
	str r3, [r2]
	add sp, #8
	pop {r4, pc}
	nop
_02074E18: .word 0x04000600
_02074E1C: .word 0x04000440
_02074E20: .word 0x04000454
	thumb_func_end sub_02074DC0

	thumb_func_start sub_02074E24
sub_02074E24: ; 0x02074E24
	push {r4, lr}
	sub sp, #8
	ldr r2, _02074E70 ; =0x04000600
	ldr r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	str r0, [r2]
	add r4, sp, #4
_02074E34:
	add r0, r4, #0
	bl sub_02074FF0
	cmp r0, #0
	bne _02074E34
	add r4, sp, #0
_02074E40:
	add r0, r4, #0
	bl sub_02075014
	cmp r0, #0
	bne _02074E40
	ldr r1, _02074E74 ; =0x04000440
	mov r0, #3
	str r0, [r1]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1]
	ldr r0, [sp]
	cmp r0, #0
	beq _02074E5E
	str r0, [r1, #8]
_02074E5E:
	ldr r1, _02074E74 ; =0x04000440
	mov r0, #2
	str r0, [r1]
	ldr r0, [sp, #4]
	str r0, [r1, #8]
	mov r0, #0
	str r0, [r1, #0x14]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02074E70: .word 0x04000600
_02074E74: .word 0x04000440
	thumb_func_end sub_02074E24

	thumb_func_start sub_02074E78
sub_02074E78: ; 0x02074E78
	push {r3, r4}
	cmp r0, #0
	beq _02074E9C
	ldr r0, _02074EAC ; =0x0400035C
	lsl r2, r2, #8
	strh r3, [r0]
	ldr r0, _02074EB0 ; =0x04000060
	lsl r1, r1, #6
	ldrh r4, [r0]
	ldr r3, _02074EB4 ; =0xFFFFC0BF
	orr r2, r1
	mov r1, #0x80
	and r3, r4
	orr r1, r2
	orr r1, r3
	strh r1, [r0]
	pop {r3, r4}
	bx lr
_02074E9C:
	ldr r2, _02074EB0 ; =0x04000060
	ldr r0, _02074EB8 ; =0x0000CF7F
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	pop {r3, r4}
	bx lr
	nop
_02074EAC: .word 0x0400035C
_02074EB0: .word 0x04000060
_02074EB4: .word 0xFFFFC0BF
_02074EB8: .word 0x0000CF7F
	thumb_func_end sub_02074E78

	thumb_func_start sub_02074EBC
sub_02074EBC: ; 0x02074EBC
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02074EDC ; =0x04000600
	mov r2, #2
	ldr r3, [r0]
	lsl r2, r2, #0x1a
	tst r2, r3
	beq _02074ED2
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02074ED2:
	add r0, #0x40
	blx sub_0207877C
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02074EDC: .word 0x04000600
	thumb_func_end sub_02074EBC

	thumb_func_start sub_02074EE0
sub_02074EE0: ; 0x02074EE0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _02074F00 ; =0x04000600
	mov r2, #2
	ldr r3, [r0]
	lsl r2, r2, #0x1a
	tst r2, r3
	beq _02074EF6
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_02074EF6:
	add r0, #0x80
	blx sub_0207873C
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02074F00: .word 0x04000600
	thumb_func_end sub_02074EE0

	thumb_func_start sub_02074F04
sub_02074F04: ; 0x02074F04
	ldr r1, _02074F0C ; =0x04000330
	ldr r3, _02074F10 ; =sub_0207863C
	mov r2, #0x10
	bx r3
	.align 2, 0
_02074F0C: .word 0x04000330
_02074F10: .word sub_0207863C
	thumb_func_end sub_02074F04

	thumb_func_start sub_02074F14
sub_02074F14: ; 0x02074F14
	ldr r1, _02074F1C ; =0x04000360
	ldr r3, _02074F20 ; =sub_02078720
	bx r3
	nop
_02074F1C: .word 0x04000360
_02074F20: .word sub_02078720
	thumb_func_end sub_02074F14

	thumb_func_start sub_02074F24
sub_02074F24: ; 0x02074F24
	lsl r1, r1, #0x10
	lsl r3, r3, #0x18
	orr r0, r1
	add r1, r3, #0
	orr r1, r0
	ldr r0, [sp]
	cmp r0, #0
	beq _02074F3A
	mov r0, #2
	lsl r0, r0, #0xe
	orr r1, r0
_02074F3A:
	ldr r0, _02074F44 ; =0x04000350
	str r1, [r0]
	strh r2, [r0, #4]
	bx lr
	nop
_02074F44: .word 0x04000350
	thumb_func_end sub_02074F24

	thumb_func_start sub_02074F48
sub_02074F48: ; 0x02074F48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, _02074FD4 ; =0x0209B528
	mov r1, #0
	ldr r0, [r4]
	mvn r1, r1
	cmp r0, r1
	beq _02074FA8
	cmp r0, #3
	ldr r5, _02074FD8 ; =0x04000330
	bls _02074F82
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	sub r0, r0, #4
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x10
	bl sub_02074FE0
	ldr r0, [r4]
	add r5, #0x30
	sub r0, r0, #4
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl sub_02074810
	b _02074FC0
_02074F82:
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r6, #1
	str r6, [sp, #8]
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x10
	bl sub_02078150
	str r6, [sp]
	add r5, #0x30
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x60
	bl sub_0207802C
	b _02074FC0
_02074FA8:
	ldr r4, _02074FD8 ; =0x04000330
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x10
	blx sub_02078658
	add r4, #0x30
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x60
	blx sub_02078658
_02074FC0:
	mov r2, #0
	ldr r0, _02074FDC ; =0x040004D0
	add r1, r2, #0
_02074FC6:
	add r2, r2, #1
	str r1, [r0]
	cmp r2, #0x20
	blt _02074FC6
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02074FD4: .word 0x0209B528
_02074FD8: .word 0x04000330
_02074FDC: .word 0x040004D0
	thumb_func_end sub_02074F48

	thumb_func_start sub_02074FE0
sub_02074FE0: ; 0x02074FE0
	bx pc
	nop
	thumb_func_end sub_02074FE0

