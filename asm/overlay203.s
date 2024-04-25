    .include "macros/function.inc"
	.include "overlay203.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy203_21a78c0
ovy203_21a78c0: ; 0x021A78C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, _021A7954 ; =0x00000153
	add r5, r3, #0
	mov r6, #0xcd
	str r0, [sp]
	lsl r0, r5, #0x10
	str r2, [sp, #8]
	lsl r6, r6, #2
	str r1, [sp, #4]
	ldr r3, _021A7958 ; =0x021A9AE0
	lsr r0, r0, #0x10
	add r1, r6, #0
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	lsl r1, r5, #0x10
	ldr r0, [sp, #4]
	str r7, [r4]
	str r0, [r4, #4]
	mov r0, #0x1e
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	add r1, r6, #0
	sub r1, #0x3c
	str r0, [r4, r1]
	lsl r1, r5, #0x10
	mov r0, #0x1f
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	sub r6, #0x38
	mov r3, #0
	str r0, [r4, r6]
	sub r2, r3, #1
	mov r0, #0x14
_021A790E:
	add r1, r3, #0
	mul r1, r0
	add r1, r4, r1
	add r3, r3, #1
	str r2, [r1, #0x14]
	cmp r3, #0x12
	blt _021A790E
	mov r0, #0x2e
	lsl r0, r0, #4
	str r2, [r4, r0]
	add r0, #0x14
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl ovy203_21a7cdc
	ldr r0, [sp, #8]
	mov r1, #0x18
	str r0, [r4, #0xc]
	ldr r0, _021A795C ; =0x0000017B
	ldr r3, _021A7958 ; =0x021A9AE0
	str r0, [sp]
	ldr r2, [r4, #0xc]
	lsl r0, r5, #0x10
	mul r1, r2
	lsr r0, r0, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4, #8]
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A7954: .word 0x00000153
_021A7958: .word 0x021A9AE0
_021A795C: .word 0x0000017B
	thumb_func_end ovy203_21a78c0

	thumb_func_start ovy203_21a7960
ovy203_21a7960: ; 0x021A7960
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _021A798E
	mov r7, #0x18
_021A796E:
	add r6, r4, #0
	ldr r0, [r5, #8]
	mul r6, r7
	add r0, r0, r6
	bl sub_021A8170
	cmp r0, #0
	bne _021A7986
	ldr r0, [r5, #8]
	add r0, r0, r6
	bl ovy203_21a7b9c
_021A7986:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021A796E
_021A798E:
	add r0, r5, #0
	mov r1, #0
	bl ovy203_21a7d10
	add r0, r5, #0
	bl ovy203_21a79f0
	mov r4, #0xbe
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl GFL_ArcToolFree
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl GFL_ArcToolFree
	ldr r0, [r5, #8]
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7960

	thumb_func_start ovy203_21a79bc
ovy203_21a79bc: ; 0x021A79BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r6, r2, #0
	bl sub_021A7D38
	add r0, r4, #0
	bl sub_021A7D34
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r3, r7, #0
	bl ovy203_21a7d3c
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a79bc

	thumb_func_start ovy203_21a79f0
ovy203_21a79f0: ; 0x021A79F0
	push {r3, r4, r5, lr}
	mov r1, #0xbd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _021A7A06
	bl ovy203_21a7a60
_021A7A06:
	mov r5, #0
_021A7A08:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021A7E5C
	cmp r0, #1
	bne _021A7A1C
	add r0, r4, #0
	add r1, r5, #0
	bl ovy203_21a7e04
_021A7A1C:
	add r5, r5, #1
	cmp r5, #0x12
	blt _021A7A08
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a79f0

	thumb_func_start ovy203_21a7a24
ovy203_21a7a24: ; 0x021A7A24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x20]
	str r2, [sp, #8]
	add r2, r3, #0
	add r6, r0, #0
	add r3, r5, #0
	add r7, r1, #0
	bl ovy203_21a7f44
	add r0, r6, #0
	add r1, r5, #0
	bl ovy203_21a7f8c
	mov r4, #0
_021A7A42:
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ovy203_21a7d3c
	add r4, r4, #1
	cmp r4, #0x10
	blt _021A7A42
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7a24

	thumb_func_start ovy203_21a7a60
ovy203_21a7a60: ; 0x021A7A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy203_21a7f74
	add r0, r5, #0
	bl ovy203_21a7fc0
	mov r4, #0
_021A7A70:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy203_21a7e04
	add r4, r4, #1
	cmp r4, #0x10
	blt _021A7A70
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a7a60

	thumb_func_start ovy203_21a7a80
ovy203_21a7a80: ; 0x021A7A80
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r2, r3, #0
	add r5, r0, #0
	bl ovy203_21a7e74
	mov r0, #0x2f
	lsl r0, r0, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a7a80

	thumb_func_start sub_021A7A94
sub_021A7A94: ; 0x021A7A94
	ldr r3, _021A7A98 ; =ovy203_21a7ef4
	bx r3
	.align 2, 0
_021A7A98: .word ovy203_21a7ef4
	thumb_func_end sub_021A7A94

	thumb_func_start ovy203_21a7a9c
ovy203_21a7a9c: ; 0x021A7A9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	str r3, [sp, #0xc]
	bl ovy203_21a7fe4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021A7D34
	mov r2, #0
	ldrsh r3, [r5, r2]
	add r1, sp, #0x14
	strh r3, [r1]
	mov r3, #2
	ldrsh r3, [r5, r3]
	strh r3, [r1, #2]
	mov r3, #4
	ldrsh r3, [r5, r3]
	strh r2, [r1, #4]
	strb r3, [r1, #6]
	mov r3, #6
	ldrsh r3, [r5, r3]
	strb r3, [r1, #7]
	mov r1, #0x14
	mul r1, r0
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r0, r0, #0x10
	add r1, r7, r1
	mov ip, r1
	str r2, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r3, #0x62
	mov r2, ip
	mov r6, ip
	lsl r3, r3, #2
	ldr r0, [r7]
	ldr r1, [r1, #0x14]
	ldr r2, [r2, #0x18]
	ldr r3, [r6, r3]
	bl Oam_CreateSprite
	mov r1, #6
	ldrsh r1, [r5, r1]
	str r0, [r4, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C468
	ldr r0, [sp, #0x10]
	add r0, r7, r0
	ldr r0, [r0, #0x20]
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021A7B1A
	mov r1, #6
	b _021A7B1C
_021A7B1A:
	mov r1, #1
_021A7B1C:
	bl sub_0204C504
	mov r0, #9
	str r0, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x10]
	add r1, r7, #0
	mov r6, #0x2e
	ldr r0, [sp, #0x10]
	add r1, #0x10
	add r0, r1, r0
	lsl r6, r6, #4
	str r0, [r4]
	add r0, r7, r6
	bl sub_021A7F30
	cmp r0, #0
	beq _021A7B92
	mov r0, #0
	ldrsh r1, [r5, r0]
	add r0, sp, #0x14
	add r2, r6, #4
	strh r1, [r0]
	mov r1, #2
	ldrsh r1, [r5, r1]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	add r1, r6, #0
	add r1, #0x10
	ldr r1, [r7, r1]
	strb r1, [r0, #6]
	mov r1, #0
	strb r1, [r0, #7]
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, [r7, r6]
	add r6, #8
	ldr r0, [r7]
	ldr r2, [r7, r2]
	ldr r3, [r7, r6]
	bl Oam_CreateSprite
	mov r1, #6
	ldrsh r1, [r5, r1]
	str r0, [r4, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0204C468
	b _021A7B96
_021A7B92:
	mov r0, #0
	str r0, [r4, #8]
_021A7B96:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7a9c

	thumb_func_start ovy203_21a7b9c
ovy203_21a7b9c: ; 0x021A7B9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021A7BAA
	bl Oam_RemoveOam
_021A7BAA:
	ldr r0, [r4, #4]
	bl Oam_RemoveOam
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	blx MI_CpuFill8
	pop {r4, pc}
	thumb_func_end ovy203_21a7b9c

	thumb_func_start ovy203_21a7bbc
ovy203_21a7bbc: ; 0x021A7BBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	add r5, r0, #0
	strh r2, [r4, #2]
	add r6, sp, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_0204C210
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A7BEE
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r1, #8
	strh r1, [r4]
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r1, #0xe
	strh r1, [r4, #2]
	add r1, r6, #0
	bl sub_0204C210
_021A7BEE:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7bbc

	thumb_func_start sub_021A7BF4
sub_021A7BF4: ; 0x021A7BF4
	lsl r1, r1, #0x18
	ldr r0, [r0, #4]
	ldr r3, _021A7C00 ; =sub_0204C438
	lsr r1, r1, #0x18
	bx r3
	nop
_021A7C00: .word sub_0204C438
	thumb_func_end sub_021A7BF4
_021A7C04:
	.byte 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x5D, 0xC4, 0x04, 0x02

	thumb_func_start ovy203_21a7c10
ovy203_21a7c10: ; 0x021A7C10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_0204C124
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021A7C28
	add r1, r4, #0
	bl sub_0204C124
_021A7C28:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7c10

	thumb_func_start ovy203_21a7c2c
ovy203_21a7c2c: ; 0x021A7C2C
	push {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021A7C38
	bl sub_0204C124
_021A7C38:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7c2c
_021A7C3C:
	.byte 0x40, 0x68, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x39, 0xC1, 0x04, 0x02

	thumb_func_start sub_021A7C48
sub_021A7C48: ; 0x021A7C48
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7C48

	thumb_func_start sub_021A7C50
sub_021A7C50: ; 0x021A7C50
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021A7C50

	thumb_func_start sub_021A7C54
sub_021A7C54: ; 0x021A7C54
	ldr r0, [r0, #4]
	ldr r3, _021A7C5C ; =sub_0204C504
	bx r3
	nop
_021A7C5C: .word sub_0204C504
	thumb_func_end sub_021A7C54

	thumb_func_start sub_021A7C60
sub_021A7C60: ; 0x021A7C60
	ldr r0, [r0, #4]
	ldr r3, _021A7C68 ; =sub_0204C510
	bx r3
	nop
_021A7C68: .word sub_0204C510
	thumb_func_end sub_021A7C60

	thumb_func_start ovy203_21a7c6c
ovy203_21a7c6c: ; 0x021A7C6C
	push {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021A7C84
	add r1, #8
	add r3, sp, #0
	strh r1, [r3]
	add r2, #0xe
	add r1, sp, #0
	strh r2, [r3, #2]
	bl sub_0204C210
_021A7C84:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7c6c

	thumb_func_start ovy203_21a7c88
ovy203_21a7c88: ; 0x021A7C88
	push {r3, lr}
	mov r3, #0
	strh r3, [r0, #0x14]
	str r1, [r0, #0xc]
	lsl r3, r1, #2
	ldr r1, _021A7CA0 ; =0x021A999C
	ldr r3, [r1, r3]
	cmp r3, #0
	beq _021A7C9E
	add r1, r2, #0
	blx r3
_021A7C9E:
	pop {r3, pc}
	.align 2, 0
_021A7CA0: .word 0x021A999C
	thumb_func_end ovy203_21a7c88

	thumb_func_start ovy203_21a7ca4
ovy203_21a7ca4: ; 0x021A7CA4
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r1, _021A7CD8 ; =0x021A9990
	mov r0, #0
	ldrb r2, [r1, r2]
	cmp r2, #0xff
	bne _021A7CB6
	b _021A7CC0
_021A7CB6:
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r1, r1, #1
	cmp r2, r1
	blt _021A7CC2
_021A7CC0:
	mov r0, #1
_021A7CC2:
	cmp r0, #1
	bne _021A7CD4
	add r0, r4, #0
	bl ovy203_21a8014
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x14]
_021A7CD4:
	pop {r4, pc}
	nop
_021A7CD8: .word 0x021A9990
	thumb_func_end ovy203_21a7ca4

	thumb_func_start ovy203_21a7cdc
ovy203_21a7cdc: ; 0x021A7CDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r2, #0x10
	mov r7, #0x62
	mov r4, #0x10
	lsr r6, r0, #0x10
	lsl r7, r7, #2
_021A7CEA:
	add r0, r4, #0
	sub r0, #0x10
	lsl r1, r0, #1
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r1, #1
	add r3, r6, #0
	bl Oam_LoadNCERFile
	mov r1, #0x14
	mul r1, r4
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #0x12
	blt _021A7CEA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7cdc

	thumb_func_start ovy203_21a7d10
ovy203_21a7d10: ; 0x021A7D10
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x62
	add r6, r0, #0
	mov r4, #0x10
	lsl r7, r7, #2
_021A7D1A:
	mov r0, #0x14
	mul r0, r4
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl sub_0204BE64
	mov r0, #0
	add r4, r4, #1
	str r0, [r5, r7]
	cmp r4, #0x12
	blt _021A7D1A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7d10

	thumb_func_start sub_021A7D34
sub_021A7D34: ; 0x021A7D34
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7D34

	thumb_func_start sub_021A7D38
sub_021A7D38: ; 0x021A7D38
	mov r0, #1
	bx lr
	thumb_func_end sub_021A7D38

	thumb_func_start ovy203_21a7d3c
ovy203_21a7d3c: ; 0x021A7D3C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bne _021A7D52
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy203_21a7d60
	add sp, #4
	pop {r3, r4, pc}
_021A7D52:
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy203_21a7dc4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7d3c

	thumb_func_start ovy203_21a7d60
ovy203_21a7d60: ; 0x021A7D60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, r1, #0
	sub r0, #0x10
	lsl r6, r0, #1
	add r4, r1, #0
	mov r0, #0x14
	mul r4, r0
	ldr r0, [sp, #0x28]
	add r7, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xbe
	lsl r0, r0, #2
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	add r1, r6, #5
	mov r2, #0
	add r3, r7, #0
	bl Oam_LoadNCGRFile
	add r1, r5, r4
	str r0, [r1, #0x14]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	mov r3, #2
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #4
	add r2, r7, #0
	add r3, #0xfe
	bl Oam_LoadNCLRFile
	add r1, r5, r4
	str r0, [r1, #0x18]
	ldr r0, [sp, #0xc]
	str r7, [r1, #0x1c]
	str r0, [r1, #0x20]
	mov r0, #0
	str r0, [r1, #0x10]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7d60

	thumb_func_start ovy203_21a7dc4
ovy203_21a7dc4: ; 0x021A7DC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x14
	mul r7, r0
	ldr r0, [sp, #0x20]
	mov r4, #0xbf
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, r2, #0
	str r3, [sp, #4]
	lsl r4, r4, #2
	str r0, [sp]
	ldr r0, [r5, r4]
	add r1, r1, #1
	mov r2, #0
	add r3, r6, #0
	bl Oam_LoadNCGRFile
	add r1, r5, r7
	sub r4, #8
	str r0, [r1, #0x14]
	ldr r0, [r5, r4]
	str r0, [r1, #0x18]
	ldr r0, [sp, #4]
	str r6, [r1, #0x1c]
	str r0, [r1, #0x20]
	mov r0, #1
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7dc4

	thumb_func_start ovy203_21a7e04
ovy203_21a7e04: ; 0x021A7E04
	push {r3, lr}
	mov r2, #0x14
	mul r2, r1
	add r2, r0, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _021A7E18
	bl ovy203_21a7e20
	pop {r3, pc}
_021A7E18:
	bl ovy203_21a7e44
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7e04

	thumb_func_start ovy203_21a7e20
ovy203_21a7e20: ; 0x021A7E20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r5, #0
	mov r6, #0x14
	add r4, r1, #0
	mul r4, r6
	add r7, #0x14
	ldr r0, [r7, r4]
	bl sub_0204B98C
	add r5, #0x18
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	sub r6, #0x15
	str r6, [r7, r4]
	str r6, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7e20

	thumb_func_start ovy203_21a7e44
ovy203_21a7e44: ; 0x021A7E44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0x14
	add r6, r1, #0
	add r5, #0x14
	mul r6, r4
	ldr r0, [r5, r6]
	bl sub_0204B98C
	sub r4, #0x15
	str r4, [r5, r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy203_21a7e44

	thumb_func_start sub_021A7E5C
sub_021A7E5C: ; 0x021A7E5C
	mov r2, #0x14
	add r3, r1, #0
	mul r3, r2
	add r0, r0, r3
	ldr r0, [r0, #0x14]
	sub r2, #0x15
	cmp r0, r2
	beq _021A7E70
	mov r0, #1
	bx lr
_021A7E70:
	mov r0, #0
	bx lr
	thumb_func_end sub_021A7E5C

	thumb_func_start ovy203_21a7e74
ovy203_21a7e74: ; 0x021A7E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r6, r2, #0
	mov r4, #0x10
	bl sub_021A7E5C
	cmp r0, #1
	bne _021A7E8C
	b _021A7E9A
_021A7E8C:
	add r0, r5, #0
	mov r1, #0x11
	mov r4, #0x11
	bl sub_021A7E5C
	cmp r0, #1
	bne _021A7EA0
_021A7E9A:
	mov r0, #0x33
	lsl r0, r0, #4
	str r4, [r5, r0]
_021A7EA0:
	mov r4, #0xbe
	lsl r4, r4, #2
	lsl r3, r6, #0x10
	ldr r0, [r5, r4]
	mov r1, #9
	mov r2, #8
	lsr r3, r3, #0x10
	bl Oam_LoadNCERFile
	add r1, r4, #0
	sub r1, #0x10
	str r0, [r5, r1]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, r4]
	mov r1, #0xb
	mov r2, #0
	add r3, r7, #0
	bl Oam_LoadNCGRFile
	add r1, r4, #0
	sub r1, #0x18
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r1, #0xa
	ldr r0, [r5, r4]
	add r2, r7, #0
	lsl r3, r1, #5
	bl Oam_LoadNCLRFile
	sub r4, #0x14
	str r0, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7e74

	thumb_func_start ovy203_21a7ef4
ovy203_21a7ef4: ; 0x021A7EF4
	push {r4, r5, r6, lr}
	mov r4, #0x2e
	add r5, r0, #0
	lsl r4, r4, #4
	add r0, r5, r4
	bl sub_021A7F30
	cmp r0, #1
	bne _021A7F2C
	ldr r0, [r5, r4]
	bl sub_0204B98C
	mov r6, #0
	mvn r6, r6
	str r6, [r5, r4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BCD0
	add r0, r4, #4
	str r6, [r5, r0]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r4, #8
	str r6, [r5, r4]
_021A7F2C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7ef4

	thumb_func_start sub_021A7F30
sub_021A7F30: ; 0x021A7F30
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021A7F3E
	mov r0, #1
	bx lr
_021A7F3E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A7F30

	thumb_func_start ovy203_21a7f44
ovy203_21a7f44: ; 0x021A7F44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #0
	add r4, r0, #0
	mov r5, #0xbf
	add r6, r2, #0
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	lsl r3, r6, #0x10
	lsl r5, r5, #2
	str r0, [sp, #8]
	ldr r0, [r4, r5]
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl Oam_LoadNCLRFile
	sub r5, #8
	str r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7f44

	thumb_func_start ovy203_21a7f74
ovy203_21a7f74: ; 0x021A7F74
	push {r3, r4, r5, lr}
	mov r5, #0xbd
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0204BCD0
	mov r0, #0
	mvn r0, r0
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7f74

	thumb_func_start ovy203_21a7f8c
ovy203_21a7f8c: ; 0x021A7F8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x10
	mov r7, #0x62
	mov r4, #0
	lsr r6, r0, #0x10
	lsl r7, r7, #2
_021A7F9A:
	mov r0, #0xbf
	lsl r2, r4, #1
	add r1, r2, #0
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x11
	add r2, #0x12
	add r3, r6, #0
	bl Oam_LoadNCERFile
	mov r1, #0x14
	mul r1, r4
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, r7]
	cmp r4, #0x10
	blt _021A7F9A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a7f8c

	thumb_func_start ovy203_21a7fc0
ovy203_21a7fc0: ; 0x021A7FC0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x62
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021A7FCA:
	mov r0, #0x14
	mul r0, r4
	add r5, r6, r0
	ldr r0, [r5, r7]
	bl sub_0204BE64
	mov r0, #0
	mvn r0, r0
	add r4, r4, #1
	str r0, [r5, r7]
	cmp r4, #0x10
	blt _021A7FCA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7fc0

	thumb_func_start ovy203_21a7fe4
ovy203_21a7fe4: ; 0x021A7FE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	bls _021A8010
	mov r7, #0x18
_021A7FF2:
	add r6, r4, #0
	ldr r0, [r5, #8]
	mul r6, r7
	add r0, r0, r6
	bl sub_021A8170
	cmp r0, #1
	bne _021A8008
	ldr r0, [r5, #8]
	add r0, r0, r6
	pop {r3, r4, r5, r6, r7, pc}
_021A8008:
	ldr r0, [r5, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _021A7FF2
_021A8010:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a7fe4

	thumb_func_start ovy203_21a8014
ovy203_21a8014: ; 0x021A8014
	push {r3, lr}
	ldr r1, [r0, #0xc]
	lsl r2, r1, #2
	ldr r1, _021A8028 ; =0x021A99C4
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _021A8024
	blx r1
_021A8024:
	pop {r3, pc}
	nop
_021A8028: .word 0x021A99C4
	thumb_func_end ovy203_21a8014
_021A802C:
	.byte 0x01, 0x61, 0x09, 0x04
	.byte 0x40, 0x68, 0x01, 0x4B, 0x09, 0x0C, 0x18, 0x47, 0xB9, 0xC4, 0x04, 0x02, 0x01, 0x61, 0x40, 0x68
	.byte 0x01, 0x4B, 0x04, 0x21, 0x18, 0x47, 0xC0, 0x46, 0xB9, 0xC4, 0x04, 0x02, 0x01, 0x61, 0x49, 0x1D
	.byte 0x09, 0x04, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x0C, 0x18, 0x47, 0xC0, 0x46, 0xB9, 0xC4, 0x04, 0x02

	thumb_func_start ovy203_21a8060
ovy203_21a8060: ; 0x021A8060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	add r1, r1, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C4B8
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8060
_021A8078:
	.byte 0x01, 0x61, 0x09, 0x31, 0x09, 0x04, 0x40, 0x68
	.byte 0x01, 0x4B, 0x09, 0x0C, 0x18, 0x47, 0xC0, 0x46, 0xB9, 0xC4, 0x04, 0x02, 0x01, 0x61, 0x49, 0x1D
	.byte 0x09, 0x04, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x0C, 0x18, 0x47, 0xC0, 0x46, 0xB9, 0xC4, 0x04, 0x02
	.byte 0x01, 0x61, 0x49, 0x1D, 0x09, 0x04, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x0C, 0x18, 0x47, 0xC0, 0x46
	.byte 0xB9, 0xC4, 0x04, 0x02, 0x01, 0x61, 0x49, 0x1D, 0x09, 0x04, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x0C
	.byte 0x18, 0x47, 0xC0, 0x46, 0xB9, 0xC4, 0x04, 0x02, 0x01, 0x61, 0x49, 0x1D, 0x09, 0x04, 0x40, 0x68
	.byte 0x01, 0x4B, 0x09, 0x0C, 0x18, 0x47, 0xC0, 0x46, 0xB9, 0xC4, 0x04, 0x02, 0x02, 0x21, 0x40, 0x68
	.byte 0x01, 0x4B, 0x09, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02, 0x02, 0x21, 0x40, 0x68
	.byte 0x01, 0x4B, 0x09, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02

	thumb_func_start ovy203_21a80fc
ovy203_21a80fc: ; 0x021A80FC
	push {r3, lr}
	add r1, r0, #0
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ldr r0, [r1, #4]
	bne _021A8112
	mov r1, #1
	bl sub_0204C4E0
	pop {r3, pc}
_021A8112:
	ldr r1, [r1, #0x10]
	add r1, r1, #5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl Oam_SetOamAnimIndex
	pop {r3, pc}
	thumb_func_end ovy203_21a80fc
_021A8120:
	.byte 0x02, 0x21, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02
	.byte 0x01, 0x21, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02
	.byte 0x01, 0x21, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02
	.byte 0x02, 0x21, 0x40, 0x68, 0x01, 0x4B, 0x89, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02
	.byte 0x06, 0x21, 0x40, 0x68, 0x01, 0x4B, 0x09, 0x03, 0x18, 0x47, 0xC0, 0x46, 0xE1, 0xC4, 0x04, 0x02

	thumb_func_start sub_021A8170
sub_021A8170: ; 0x021A8170
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021A817A
	mov r0, #1
	bx lr
_021A817A:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A8170

	thumb_func_start ovy203_21a8180
ovy203_21a8180: ; 0x021A8180
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	mov r0, #0x4c
	str r0, [sp]
	lsl r0, r5, #0x10
	add r7, r1, #0
	ldr r3, _021A81C0 ; =0x021A9AF0
	lsr r0, r0, #0x10
	mov r1, #8
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	strh r6, [r4]
	strh r7, [r4, #2]
	mov r0, #0x53
	str r0, [sp]
	lsl r0, r5, #0x10
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	ldr r3, _021A81C0 ; =0x021A9AF0
	lsr r0, r0, #0x10
	mul r1, r2
	lsl r1, r1, #2
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A81C0: .word 0x021A9AF0
	thumb_func_end ovy203_21a8180

	thumb_func_start ovy203_21a81c4
ovy203_21a81c4: ; 0x021A81C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a81c4
_021A81D8:
	.byte 0x00, 0x88, 0x70, 0x47, 0x40, 0x88, 0x70, 0x47
	.byte 0x02, 0x1C, 0x08, 0x1C, 0x51, 0x68, 0x13, 0x88, 0x52, 0x88, 0x5A, 0x43, 0x01, 0x4B, 0x92, 0x00
	.byte 0x18, 0x47, 0xC0, 0x46, 0x20, 0x89, 0x07, 0x02

	thumb_func_start ovy203_21a81f8
ovy203_21a81f8: ; 0x021A81F8
	push {r3, r4, r5}
	sub sp, #4
	ldrh r5, [r0]
	ldr r3, _021A8220 ; =0x021A99EC
	ldr r3, [r3]
	cmp r5, r1
	bls _021A8218
	ldrh r4, [r0, #2]
	cmp r4, r2
	bls _021A8218
	ldr r3, [r0, #4]
	add r0, r5, #0
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #2
	ldr r3, [r3, r0]
_021A8218:
	add r0, r3, #0
	add sp, #4
	pop {r3, r4, r5}
	bx lr
	.align 2, 0
_021A8220: .word 0x021A99EC
	thumb_func_end ovy203_21a81f8

	thumb_func_start ovy203_21a8224
ovy203_21a8224: ; 0x021A8224
	push {r3, lr}
	sub sp, #8
	bl ovy203_21a81f8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A823A
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_021A823A:
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy203_21a8224

	thumb_func_start ovy203_21a8244
ovy203_21a8244: ; 0x021A8244
	push {r3, lr}
	sub sp, #8
	bl ovy203_21a81f8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021A825A
	add sp, #8
	mov r0, #0
	pop {r3, pc}
_021A825A:
	lsr r0, r0, #1
	add sp, #8
	pop {r3, pc}
	thumb_func_end ovy203_21a8244

	thumb_func_start ovy203_21a8260
ovy203_21a8260: ; 0x021A8260
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x80
	ldr r7, _021A829C ; =0x021A9B00
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #8
	mov r2, #1
	add r3, r7, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	str r6, [r4, #4]
	mov r0, #0x85
	str r0, [sp]
	lsl r0, r5, #0x10
	ldr r2, [r4, #4]
	mov r1, #0x18
	mul r1, r2
	lsr r0, r0, #0x10
	mov r2, #1
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A829C: .word 0x021A9B00
	thumb_func_end ovy203_21a8260

	thumb_func_start ovy203_21a82a0
ovy203_21a82a0: ; 0x021A82A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a82a0

	thumb_func_start ovy203_21a82b4
ovy203_21a82b4: ; 0x021A82B4
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4, #7]
	bl ovy203_21a8334
	add r1, r4, #0
	bl ovy203_21a8668
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a82b4

	thumb_func_start ovy203_21a82c8
ovy203_21a82c8: ; 0x021A82C8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_021A82F4
	add r5, r0, #0
	ldr r4, _021A82F0 ; =0x00000000
	beq _021A82EE
_021A82D6:
	lsl r1, r4, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_021A8360
	cmp r0, #0
	beq _021A82E8
	bl ovy203_21a8694
_021A82E8:
	add r4, r4, #1
	cmp r4, r5
	blo _021A82D6
_021A82EE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A82F0: .word 0x00000000
	thumb_func_end ovy203_21a82c8

	thumb_func_start sub_021A82F4
sub_021A82F4: ; 0x021A82F4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021A82F4

	thumb_func_start ovy203_21a82f8
ovy203_21a82f8: ; 0x021A82F8
	push {r4, lr}
	add r4, r1, #0
	bl ovy203_21a8478
	mov r1, #0
	ldrsh r2, [r4, r1]
	mov r1, #2
	ldrsh r1, [r4, r1]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	ldrh r1, [r4, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r4, #6]
	strb r1, [r0, #0x15]
	ldrh r1, [r4, #8]
	strb r1, [r0, #0x14]
	ldrh r1, [r4, #0xa]
	strh r1, [r0, #0xe]
	mov r1, #1
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a82f8
_021A8328:
	.byte 0x01, 0x4B, 0x00, 0x21, 0x18, 0x22, 0x18, 0x47
	.byte 0xA8, 0x87, 0x07, 0x02

	thumb_func_start ovy203_21a8334
ovy203_21a8334: ; 0x021A8334
	push {r3, r4, r5, r6}
	ldr r4, [r0, #4]
	mov r2, #0
	cmp r4, #0
	bls _021A835A
	ldr r3, [r0]
	mov r5, #0x18
_021A8342:
	add r6, r2, #0
	mul r6, r5
	add r0, r3, r6
	ldr r6, [r3, r6]
	cmp r6, #1
	bne _021A8354
	ldrh r6, [r0, #0xc]
	cmp r1, r6
	beq _021A835C
_021A8354:
	add r2, r2, #1
	cmp r2, r4
	blo _021A8342
_021A835A:
	mov r0, #0
_021A835C:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy203_21a8334

	thumb_func_start sub_021A8360
sub_021A8360: ; 0x021A8360
	ldr r3, [r0]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	add r0, r3, r2
	cmp r1, #1
	beq _021A8372
	mov r0, #0
_021A8372:
	bx lr
	thumb_func_end sub_021A8360

	thumb_func_start sub_021A8374
sub_021A8374: ; 0x021A8374
	ldr r3, _021A8378 ; =ovy203_21a8334
	bx r3
	.align 2, 0
_021A8378: .word ovy203_21a8334
	thumb_func_end sub_021A8374

	thumb_func_start sub_021A837C
sub_021A837C: ; 0x021A837C
	ldr r3, _021A8380 ; =sub_021A8360
	bx r3
	.align 2, 0
_021A8380: .word sub_021A8360
	thumb_func_end sub_021A837C

	thumb_func_start sub_021A8384
sub_021A8384: ; 0x021A8384
	cmp r1, #0xa
	bhi _021A83DC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A8394: ; jump table
	.short _021A83AA - _021A8394 - 2 ; case 0
	.short _021A83B0 - _021A8394 - 2 ; case 1
	.short _021A83B6 - _021A8394 - 2 ; case 2
	.short _021A83BC - _021A8394 - 2 ; case 3
	.short _021A83C2 - _021A8394 - 2 ; case 4
	.short _021A83C6 - _021A8394 - 2 ; case 5
	.short _021A83CA - _021A8394 - 2 ; case 6
	.short _021A83CE - _021A8394 - 2 ; case 7
	.short _021A83D2 - _021A8394 - 2 ; case 8
	.short _021A83D6 - _021A8394 - 2 ; case 9
	.short _021A83DA - _021A8394 - 2 ; case 10
_021A83AA:
	mov r1, #4
	ldrsh r0, [r0, r1]
	bx lr
_021A83B0:
	mov r1, #6
	ldrsh r0, [r0, r1]
	bx lr
_021A83B6:
	mov r1, #8
	ldrsh r0, [r0, r1]
	bx lr
_021A83BC:
	mov r1, #0xa
	ldrsh r0, [r0, r1]
	bx lr
_021A83C2:
	ldrh r0, [r0, #0xc]
	bx lr
_021A83C6:
	ldrb r0, [r0, #0x15]
	bx lr
_021A83CA:
	ldrb r0, [r0, #0x14]
	bx lr
_021A83CE:
	ldrh r0, [r0, #0xe]
	bx lr
_021A83D2:
	ldrh r0, [r0, #0x10]
	bx lr
_021A83D6:
	ldrh r0, [r0, #0x12]
	bx lr
_021A83DA:
	ldrh r0, [r0, #0x16]
_021A83DC:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A8384

	thumb_func_start sub_021A83E0
sub_021A83E0: ; 0x021A83E0
	cmp r1, #0xa
	bhi _021A8430
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021A83F0: ; jump table
	.short _021A8406 - _021A83F0 - 2 ; case 0
	.short _021A840A - _021A83F0 - 2 ; case 1
	.short _021A840E - _021A83F0 - 2 ; case 2
	.short _021A8412 - _021A83F0 - 2 ; case 3
	.short _021A8416 - _021A83F0 - 2 ; case 4
	.short _021A841A - _021A83F0 - 2 ; case 5
	.short _021A841E - _021A83F0 - 2 ; case 6
	.short _021A8422 - _021A83F0 - 2 ; case 7
	.short _021A8426 - _021A83F0 - 2 ; case 8
	.short _021A842A - _021A83F0 - 2 ; case 9
	.short _021A842E - _021A83F0 - 2 ; case 10
_021A8406:
	strh r2, [r0, #4]
	bx lr
_021A840A:
	strh r2, [r0, #6]
	bx lr
_021A840E:
	strh r2, [r0, #8]
	bx lr
_021A8412:
	strh r2, [r0, #0xa]
	bx lr
_021A8416:
	strh r2, [r0, #0xc]
	bx lr
_021A841A:
	strb r2, [r0, #0x15]
	bx lr
_021A841E:
	strb r2, [r0, #0x14]
	bx lr
_021A8422:
	strh r2, [r0, #0xe]
	bx lr
_021A8426:
	strh r2, [r0, #0x10]
	bx lr
_021A842A:
	strh r2, [r0, #0x12]
	bx lr
_021A842E:
	strh r2, [r0, #0x16]
_021A8430:
	bx lr
	.align 2, 0
	thumb_func_end sub_021A83E0

	thumb_func_start ovy203_21a8434
ovy203_21a8434: ; 0x021A8434
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8434

	non_word_aligned_thumb_func_start ovy203_21a8436
ovy203_21a8436: ; 0x021A8436
	push {r3, r4}
	ldr r2, _021A8464 ; =0x021A99F4
	lsl r0, r1, #1
	add r3, sp, #8
	mov r1, #0
	ldrsh r4, [r3, r1]
	ldrsb r2, [r2, r0]
	add r2, r4, r2
	strh r2, [r3]
	add r2, sp, #8
	add r2, #2
	ldrsh r4, [r2, r1]
	ldr r1, _021A8468 ; =0x021A99F5
	ldrsb r0, [r1, r0]
	add r0, r4, r0
	strh r0, [r2]
	ldrh r1, [r2]
	ldrh r0, [r3]
	lsl r1, r1, #0x10
	orr r0, r1
	pop {r3, r4}
	add sp, #0x10
	bx lr
	.align 2, 0
_021A8464: .word 0x021A99F4
_021A8468: .word 0x021A99F5
	thumb_func_end ovy203_21a8436
_021A846C:
	.byte 0x01, 0x49, 0x08, 0x5C
	.byte 0x70, 0x47, 0xC0, 0x46, 0xF0, 0x99, 0x1A, 0x02

	thumb_func_start ovy203_21a8478
ovy203_21a8478: ; 0x021A8478
	push {r4, r5}
	ldr r5, [r0, #4]
	mov r3, #0
	cmp r5, #0
	bls _021A849C
	ldr r4, [r0]
	mov r0, #0x18
_021A8486:
	add r2, r3, #0
	mul r2, r0
	ldr r1, [r4, r2]
	cmp r1, #0
	bne _021A8496
	add r0, r4, r2
	pop {r4, r5}
	bx lr
_021A8496:
	add r3, r3, #1
	cmp r3, r5
	blo _021A8486
_021A849C:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy203_21a8478

	thumb_func_start sub_021A84A4
sub_021A84A4: ; 0x021A84A4
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #4]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_021A84A4

	thumb_func_start sub_021A84B0
sub_021A84B0: ; 0x021A84B0
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_021A84B0

	thumb_func_start ovy203_21a84bc
ovy203_21a84bc: ; 0x021A84BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r1, #8
	bl sub_021A8384
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #9
	bl sub_021A8384
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021A84A4
	add r4, sp, #0
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0xe]
	add r0, r6, #0
	bl sub_021A84B0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	mov r1, #0xc
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	mov r0, #8
	ldrsh r2, [r4, r1]
	ldrsh r0, [r4, r0]
	sub r0, r2, r0
	strh r0, [r4, #0xc]
	mov r0, #0xa
	ldrsh r6, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	sub r0, r0, r6
	strh r0, [r4, #0xe]
	cmp r5, #0
	ble _021A8534
	ldrsh r0, [r4, r1]
	add r1, r7, #0
	mul r0, r5
	blx sub_0208D65C
	strh r0, [r4, #0xc]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r1, r7, #0
	mul r0, r5
	blx sub_0208D65C
	b _021A8538
_021A8534:
	mov r0, #0
	strh r0, [r4, #0xc]
_021A8538:
	strh r0, [r4, #0xe]
	add r1, sp, #0
	mov r0, #0xc
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1, #0xc]
	mov r0, #0xe
	ldrsh r0, [r1, r0]
	add r0, r0, r6
	strh r0, [r1, #0xe]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	lsl r1, r2, #0x10
	orr r0, r1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a84bc

	thumb_func_start ovy203_21a855c
ovy203_21a855c: ; 0x021A855C
	push {r0, r1, r2, r3}
	add r1, sp, #4
	ldrh r1, [r1]
	strh r1, [r0, #4]
	add r1, sp, #4
	add r1, #2
	ldrh r1, [r1]
	strh r1, [r0, #6]
	add sp, #0x10
	bx lr
	thumb_func_end ovy203_21a855c

	thumb_func_start ovy203_21a8570
ovy203_21a8570: ; 0x021A8570
	push {r0, r1, r2, r3}
	add r1, sp, #4
	ldrh r1, [r1]
	strh r1, [r0, #8]
	add r1, sp, #4
	add r1, #2
	ldrh r1, [r1]
	strh r1, [r0, #0xa]
	add sp, #0x10
	bx lr
	thumb_func_end ovy203_21a8570

	thumb_func_start ovy203_21a8584
ovy203_21a8584: ; 0x021A8584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp]
	add r6, r2, #0
	bl sub_021A84A4
	add r4, sp, #0x10
	strh r0, [r4, #0xc]
	lsr r0, r0, #0x10
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	mov r1, sp
	sub r1, r1, #4
	strh r0, [r4, #0x1c]
	ldrh r0, [r4, #0xe]
	strh r0, [r4, #0x1e]
	ldrh r0, [r4, #0x1c]
	strh r0, [r1]
	ldrh r0, [r4, #0x1e]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r6, #0
	bl ovy203_21a8434
	strh r0, [r4, #8]
	lsr r0, r0, #0x10
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	mov r1, #4
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0xa]
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl sub_021A8384
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_021A82F4
	mov r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _021A8660
	mov r0, #0x16
	ldrsh r7, [r4, r0]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
_021A85E6:
	lsl r1, r5, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	bl sub_021A837C
	add r6, r0, #0
	beq _021A8658
	mov r1, #4
	bl sub_021A8384
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _021A8658
	add r0, r6, #0
	bl sub_021A84A4
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0x1a]
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _021A862C
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _021A862C
	add sp, #0x30
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A862C:
	add r0, r6, #0
	bl sub_021A84B0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0x12]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _021A8658
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _021A8658
	add sp, #0x30
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A8658:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blo _021A85E6
_021A8660:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a8584

	thumb_func_start ovy203_21a8668
ovy203_21a8668: ; 0x021A8668
	push {r3, r4, r5, lr}
	add r3, r1, #0
	ldrh r1, [r3]
	mov r2, sp
	sub r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r3, #2]
	add r4, r0, #0
	strh r1, [r2, #2]
	ldr r1, [r2]
	ldrb r2, [r3, #6]
	ldrh r3, [r3, #4]
	lsl r5, r3, #2
	ldr r3, _021A8690 ; =0x021A99FC
	ldr r3, [r3, r5]
	blx r3
	mov r0, #0
	strh r0, [r4, #0x16]
	pop {r3, r4, r5, pc}
	nop
_021A8690: .word 0x021A99FC
	thumb_func_end ovy203_21a8668

	thumb_func_start ovy203_21a8694
ovy203_21a8694: ; 0x021A8694
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl sub_021A8384
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _021A86C0 ; =0x021A9A2C
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	ldrh r1, [r4, #0x16]
	add r1, r1, #1
	strh r1, [r4, #0x16]
	cmp r0, #1
	bne _021A86BE
	add r0, r4, #0
	bl ovy203_21a8d14
	mov r0, #0
	strh r0, [r4, #0x16]
_021A86BE:
	pop {r4, pc}
	.align 2, 0
_021A86C0: .word 0x021A9A2C
	thumb_func_end ovy203_21a8694

	thumb_func_start ovy203_21a86c4
ovy203_21a86c4: ; 0x021A86C4
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a86c4

	non_word_aligned_thumb_func_start ovy203_21a86c6
ovy203_21a86c6: ; 0x021A86C6
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a86c6

	thumb_func_start ovy203_21a8714
ovy203_21a8714: ; 0x021A8714
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8714

	non_word_aligned_thumb_func_start ovy203_21a8716
ovy203_21a8716: ; 0x021A8716
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #2
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a8716

	thumb_func_start ovy203_21a8778
ovy203_21a8778: ; 0x021A8778
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8778

	non_word_aligned_thumb_func_start ovy203_21a877a
ovy203_21a877a: ; 0x021A877A
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #0x24
	add r5, r0, #0
	mov r1, sp
	ldrh r0, [r7]
	sub r1, r1, #4
	add r6, r2, #0
	strh r0, [r1]
	add r0, sp, #0x24
	add r0, #2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r6, #0
	bl ovy203_21a8cac
	add r4, sp, #0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	mov r1, sp
	sub r1, r1, #4
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	ldrh r2, [r7]
	add r0, r5, #0
	strh r2, [r1]
	add r2, sp, #0x24
	add r2, #2
	ldrh r2, [r2]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r2, sp
	ldrh r1, [r4, #4]
	sub r2, r2, #4
	add r0, r5, #0
	strh r1, [r2]
	ldrh r1, [r4, #6]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #2
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #8
	bl sub_021A83E0
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy203_21a877a

	thumb_func_start ovy203_21a880c
ovy203_21a880c: ; 0x021A880C
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a880c

	non_word_aligned_thumb_func_start ovy203_21a880e
ovy203_21a880e: ; 0x021A880E
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #0x24
	add r5, r0, #0
	mov r1, sp
	ldrh r0, [r7]
	sub r1, r1, #4
	add r6, r2, #0
	strh r0, [r1]
	add r0, sp, #0x24
	add r0, #2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r6, #0
	bl ovy203_21a8cac
	add r4, sp, #0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	mov r1, sp
	sub r1, r1, #4
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	ldrh r2, [r7]
	add r0, r5, #0
	strh r2, [r1]
	add r2, sp, #0x24
	add r2, #2
	ldrh r2, [r2]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r2, sp
	ldrh r1, [r4, #4]
	sub r2, r2, #4
	add r0, r5, #0
	strh r1, [r2]
	ldrh r1, [r4, #6]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #4
	bl sub_021A83E0
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy203_21a880e

	thumb_func_start ovy203_21a88a0
ovy203_21a88a0: ; 0x021A88A0
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a88a0

	non_word_aligned_thumb_func_start ovy203_21a88a2
ovy203_21a88a2: ; 0x021A88A2
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #4
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a88a2

	thumb_func_start ovy203_21a88f0
ovy203_21a88f0: ; 0x021A88F0
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a88f0

	non_word_aligned_thumb_func_start ovy203_21a88f2
ovy203_21a88f2: ; 0x021A88F2
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #5
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x10
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a88f2

	thumb_func_start ovy203_21a8954
ovy203_21a8954: ; 0x021A8954
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8954

	non_word_aligned_thumb_func_start ovy203_21a8956
ovy203_21a8956: ; 0x021A8956
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #0x24
	add r5, r0, #0
	mov r1, sp
	ldrh r0, [r7]
	sub r1, r1, #4
	add r6, r2, #0
	strh r0, [r1]
	add r0, sp, #0x24
	add r0, #2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r6, #0
	bl ovy203_21a8cac
	add r4, sp, #0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	mov r1, sp
	sub r1, r1, #4
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	ldrh r2, [r7]
	add r0, r5, #0
	strh r2, [r1]
	add r2, sp, #0x24
	add r2, #2
	ldrh r2, [r2]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r2, sp
	ldrh r1, [r4, #4]
	sub r2, r2, #4
	add r0, r5, #0
	strh r1, [r2]
	ldrh r1, [r4, #6]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #6
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x10
	bl sub_021A83E0
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy203_21a8956

	thumb_func_start ovy203_21a89e8
ovy203_21a89e8: ; 0x021A89E8
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a89e8

	non_word_aligned_thumb_func_start ovy203_21a89ea
ovy203_21a89ea: ; 0x021A89EA
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #0x24
	add r5, r0, #0
	mov r1, sp
	ldrh r0, [r7]
	sub r1, r1, #4
	add r6, r2, #0
	strh r0, [r1]
	add r0, sp, #0x24
	add r0, #2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r6, #0
	bl ovy203_21a8cac
	add r4, sp, #0
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	mov r1, sp
	sub r1, r1, #4
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	strh r0, [r4, #6]
	ldrh r2, [r7]
	add r0, r5, #0
	strh r2, [r1]
	add r2, sp, #0x24
	add r2, #2
	ldrh r2, [r2]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r2, sp
	ldrh r1, [r4, #4]
	sub r2, r2, #4
	add r0, r5, #0
	strh r1, [r2]
	ldrh r1, [r4, #6]
	strh r1, [r2, #2]
	ldr r1, [r2]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #7
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #4
	bl sub_021A83E0
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy203_21a89ea

	thumb_func_start ovy203_21a8a7c
ovy203_21a8a7c: ; 0x021A8A7C
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8a7c

	non_word_aligned_thumb_func_start ovy203_21a8a7e
ovy203_21a8a7e: ; 0x021A8A7E
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #8
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #2
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a8a7e

	thumb_func_start ovy203_21a8ae0
ovy203_21a8ae0: ; 0x021A8AE0
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8ae0

	non_word_aligned_thumb_func_start ovy203_21a8ae2
ovy203_21a8ae2: ; 0x021A8AE2
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #9
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #4
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a8ae2

	thumb_func_start ovy203_21a8b44
ovy203_21a8b44: ; 0x021A8B44
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8b44

	non_word_aligned_thumb_func_start ovy203_21a8b46
ovy203_21a8b46: ; 0x021A8B46
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xa
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #8
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a8b46

	thumb_func_start ovy203_21a8ba8
ovy203_21a8ba8: ; 0x021A8BA8
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8ba8

	non_word_aligned_thumb_func_start ovy203_21a8baa
ovy203_21a8baa: ; 0x021A8BAA
	push {r3, r4, r5, r6, r7, lr}
	add r6, sp, #0x1c
	add r4, r2, #0
	mov r1, sp
	add r7, sp, #0x1c
	ldrh r2, [r6]
	sub r1, r1, #4
	add r7, #2
	strh r2, [r1]
	ldrh r2, [r7]
	add r5, r0, #0
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a8570
	mov r1, sp
	ldrh r2, [r6]
	sub r1, r1, #4
	add r0, r5, #0
	strh r2, [r1]
	ldrh r2, [r7]
	strh r2, [r1, #2]
	ldr r1, [r1]
	bl ovy203_21a855c
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xb
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_021A83E0
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x10
	bl sub_021A83E0
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a8baa
_021A8C0C:
	.byte 0x00, 0x20, 0x70, 0x47
	.byte 0x00, 0x4B, 0x18, 0x47, 0xE1, 0x8C, 0x1A, 0x02

	thumb_func_start ovy203_21a8c18
ovy203_21a8c18: ; 0x021A8C18
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ovy203_21a8ce0
	add r4, r0, #0
	cmp r4, #1
	bne _021A8C52
	add r0, r5, #0
	bl sub_021A84A4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ovy203_21a8570
_021A8C52:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8c18

	thumb_func_start ovy203_21a8c58
ovy203_21a8c58: ; 0x021A8C58
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl ovy203_21a8ce0
	add r4, r0, #0
	cmp r4, #1
	bne _021A8C92
	add r0, r5, #0
	bl sub_021A84A4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ovy203_21a8570
_021A8C92:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8c58
_021A8C98:
	.byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x4B, 0x18, 0x47
	.byte 0xE1, 0x8C, 0x1A, 0x02, 0x00, 0x4B, 0x18, 0x47, 0xE1, 0x8C, 0x1A, 0x02

	thumb_func_start ovy203_21a8cac
ovy203_21a8cac: ; 0x021A8CAC
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a8cac

	non_word_aligned_thumb_func_start ovy203_21a8cae
ovy203_21a8cae: ; 0x021A8CAE
	push {r3, lr}
	add r0, sp, #8
	ldrh r0, [r0]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r2]
	add r0, sp, #8
	add r0, #2
	ldrh r0, [r0]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ovy203_21a8434
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	lsl r1, r2, #0x10
	orr r0, r1
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ovy203_21a8cae

	thumb_func_start ovy203_21a8ce0
ovy203_21a8ce0: ; 0x021A8CE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #8
	mov r7, #8
	bl sub_021A8384
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #9
	bl sub_021A8384
	add r6, r0, #0
	cmp r4, r6
	bge _021A8D10
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #1
	bl sub_021A83E0
	add r0, r4, #1
	cmp r0, r6
	bge _021A8D10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021A8D10:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a8ce0

	thumb_func_start ovy203_21a8d14
ovy203_21a8d14: ; 0x021A8D14
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_021A84A4
	add r5, sp, #0
	strh r0, [r5]
	lsr r0, r0, #0x10
	strh r0, [r5, #2]
	ldrh r0, [r5]
	mov r1, #6
	strh r0, [r5, #4]
	ldrh r0, [r5, #2]
	strh r0, [r5, #6]
	add r0, r4, #0
	bl sub_021A8384
	mov r3, sp
	add r2, r0, #0
	ldrh r1, [r5, #4]
	sub r3, r3, #4
	add r0, r4, #0
	strh r1, [r3]
	ldrh r1, [r5, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ovy203_21a86c4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8d14

	thumb_func_start ovy203_21a8d50
ovy203_21a8d50: ; 0x021A8D50
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r1, #0
	ldrb r1, [r4, #3]
	add r7, r0, #0
	add r0, r5, #0
	add r6, r3, #0
	bl sub_021A8374
	add r3, r4, #0
	ldrh r4, [r4]
	add r2, r5, #0
	add r1, r7, #0
	lsl r5, r4, #2
	ldr r4, _021A8D78 ; =0x021A9A5C
	str r6, [sp]
	ldr r4, [r4, r5]
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A8D78: .word 0x021A9A5C
	thumb_func_end ovy203_21a8d50

	thumb_func_start ovy203_21a8d7c
ovy203_21a8d7c: ; 0x021A8D7C
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	add r4, r3, #0
	bl sub_021A8384
	cmp r0, #0
	beq _021A8D90
	cmp r0, #4
	bne _021A8DA4
_021A8D90:
	ldrb r0, [r4, #2]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl ovy203_21a8f44
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A8DA4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8d7c

	thumb_func_start ovy203_21a8da8
ovy203_21a8da8: ; 0x021A8DA8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r1, #5
	add r4, r3, #0
	bl sub_021A8384
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	bl sub_021A8384
	cmp r6, #0
	bne _021A8DDE
	ldrb r1, [r4, #2]
	cmp r0, r1
	beq _021A8DDE
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	str r1, [sp]
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl ovy203_21a8f44
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021A8DDE:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy203_21a8da8

	thumb_func_start ovy203_21a8de4
ovy203_21a8de4: ; 0x021A8DE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #5
	add r5, r0, #0
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_021A8384
	add r6, r0, #0
	bne _021A8E2C
	ldrb r2, [r4, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy203_21a8ecc
	cmp r0, #1
	beq _021A8E2C
	ldrb r2, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy203_21a8f30
	cmp r0, #1
	beq _021A8E2C
	ldrb r0, [r4, #2]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	bl ovy203_21a8f44
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A8E2C:
	cmp r6, #0
	bne _021A8E52
	add r0, r5, #0
	mov r1, #0xa
	bl sub_021A8384
	cmp r0, #8
	blt _021A8E52
	ldrb r0, [r4, #2]
	ldrb r3, [r4, #3]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r2, #5
	bl ovy203_21a8f44
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021A8E52:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a8de4

	thumb_func_start ovy203_21a8e58
ovy203_21a8e58: ; 0x021A8E58
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy203_21a8de4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy203_21a8e58

	thumb_func_start ovy203_21a8e68
ovy203_21a8e68: ; 0x021A8E68
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	add r4, r3, #0
	bl sub_021A8384
	cmp r0, #0
	bne _021A8E8C
	ldrb r0, [r4, #2]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl ovy203_21a8f44
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A8E8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8e68
_021A8E90:
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy203_21a8e94
ovy203_21a8e94: ; 0x021A8E94
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ovy203_21a8de4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ovy203_21a8e94

	thumb_func_start ovy203_21a8ea4
ovy203_21a8ea4: ; 0x021A8EA4
	push {r3, r4, r5, lr}
	mov r1, #5
	add r5, r0, #0
	add r4, r3, #0
	bl sub_021A8384
	cmp r0, #0
	bne _021A8EC8
	ldrb r0, [r4, #2]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl ovy203_21a8f44
	mov r0, #1
	pop {r3, r4, r5, pc}
_021A8EC8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a8ea4

	thumb_func_start ovy203_21a8ecc
ovy203_21a8ecc: ; 0x021A8ECC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r2, #0
	bl sub_021A84A4
	add r4, sp, #0
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	mov r1, sp
	sub r1, r1, #4
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	strh r0, [r1]
	ldrh r0, [r4, #0xe]
	strh r0, [r1, #2]
	ldr r0, [r1]
	add r1, r6, #0
	bl ovy203_21a8434
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	mov r1, #8
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	ldrsh r2, [r4, r1]
	add r0, r5, #0
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	mov r2, #0xa
	ldrsh r3, [r4, r2]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl ovy203_21a8224
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ovy203_21a8ecc

	thumb_func_start ovy203_21a8f30
ovy203_21a8f30: ; 0x021A8F30
	push {r3, lr}
	bl ovy203_21a8584
	cmp r0, #0
	beq _021A8F3E
	mov r0, #1
	pop {r3, pc}
_021A8F3E:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy203_21a8f30

	thumb_func_start ovy203_21a8f44
ovy203_21a8f44: ; 0x021A8F44
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_021A84A4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	ldr r0, [sp, #0x18]
	strh r4, [r5, #4]
	strb r6, [r5, #7]
	strb r0, [r5, #6]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy203_21a8f44

	thumb_func_start ovy203_21a8f70
ovy203_21a8f70: ; 0x021A8F70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x28]
	add r7, r0, #0
	mov r0, #0xa1
	str r3, [sp, #8]
	str r0, [sp]
	lsl r0, r5, #0x10
	str r1, [sp, #4]
	add r6, r2, #0
	ldr r3, _021A8FE4 ; =0x021A9B10
	lsr r0, r0, #0x10
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ovy203_21a78c0
	str r0, [r4]
	strh r6, [r4, #8]
	mov r0, #0xa8
	str r0, [sp]
	lsl r0, r5, #0x10
	ldrh r2, [r4, #8]
	mov r1, #0x14
	ldr r3, _021A8FE4 ; =0x021A9B10
	mul r1, r2
	lsr r0, r0, #0x10
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4, #4]
	mov r0, #2
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	strb r0, [r4, #0xb]
	str r5, [sp]
	ldrb r2, [r4, #0xb]
	ldr r0, [r4]
	ldr r3, [sp, #0x20]
	bl ovy203_21a79bc
	ldrb r1, [r4, #0xb]
	ldr r0, [r4]
	mov r2, #0xff
	add r3, r5, #0
	bl ovy203_21a7a80
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021A8FE4: .word 0x021A9B10
	thumb_func_end ovy203_21a8f70

	thumb_func_start ovy203_21a8fe8
ovy203_21a8fe8: ; 0x021A8FE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ble _021A9016
	mov r7, #0x14
_021A8FF6:
	add r6, r4, #0
	ldr r0, [r5, #4]
	mul r6, r7
	add r0, r0, r6
	bl sub_021A9298
	cmp r0, #0
	bne _021A900E
	ldr r0, [r5, #4]
	add r0, r0, r6
	bl ovy203_21a90e4
_021A900E:
	ldrh r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021A8FF6
_021A9016:
	ldr r0, [r5]
	bl sub_021A7A94
	add r0, r5, #0
	bl sub_021A9038
	ldr r0, [r5]
	bl ovy203_21a7960
	ldr r0, [r5, #4]
	bl GFL_HeapFree
	add r0, r5, #0
	bl GFL_HeapFree
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a8fe8

	thumb_func_start sub_021A9038
sub_021A9038: ; 0x021A9038
	ldr r0, [r0]
	ldr r3, _021A9040 ; =ovy203_21a79f0
	bx r3
	nop
_021A9040: .word ovy203_21a79f0
	thumb_func_end sub_021A9038

	thumb_func_start ovy203_21a9044
ovy203_21a9044: ; 0x021A9044
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	str r2, [sp]
	add r3, r1, #0
	add r2, r3, #0
	ldrb r1, [r4, #0xb]
	ldr r0, [r4]
	mov r3, #0
	bl ovy203_21a7a24
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a9044

	thumb_func_start ovy203_21a9060
ovy203_21a9060: ; 0x021A9060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl ovy203_21a92a8
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #5
	bl sub_021A8384
	strh r0, [r4, #8]
	add r0, r5, #0
	mov r1, #6
	bl sub_021A8384
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #4
	bl sub_021A8384
	strh r0, [r4, #0xc]
	str r5, [r4]
	strb r7, [r4, #0x12]
	mov r0, #1
	strb r0, [r4, #0x13]
	mov r1, #0
	strh r1, [r4, #0xe]
	add r0, r5, #0
	strh r1, [r4, #0x10]
	bl sub_021A8384
	add r7, sp, #4
	strh r0, [r7]
	add r0, r5, #0
	mov r1, #1
	bl sub_021A8384
	strh r0, [r7, #2]
	mov r0, #2
	ldrsh r0, [r7, r0]
	ldrb r1, [r4, #0x12]
	bl sub_021A9258
	strh r0, [r7, #4]
	ldrb r0, [r6, #0xa]
	mov r1, #7
	strh r0, [r7, #6]
	add r0, r5, #0
	bl sub_021A8384
	add r2, r0, #0
	ldr r0, [r6]
	ldr r3, [sp]
	add r1, sp, #4
	bl ovy203_21a7a9c
	str r0, [r4, #4]
	add r0, r4, #0
	bl ovy203_21a912c
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a9060

	thumb_func_start ovy203_21a90e4
ovy203_21a90e4: ; 0x021A90E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ovy203_21a7b9c
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	blx MI_CpuFill8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a90e4

	thumb_func_start ovy203_21a90fc
ovy203_21a90fc: ; 0x021A90FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ble _021A912A
	mov r7, #0x14
_021A910A:
	add r6, r4, #0
	ldr r0, [r5, #4]
	mul r6, r7
	add r0, r0, r6
	bl sub_021A9298
	cmp r0, #0
	bne _021A9122
	ldr r0, [r5, #4]
	add r0, r0, r6
	bl ovy203_21a912c
_021A9122:
	ldrh r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021A910A
_021A912A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a90fc

	thumb_func_start ovy203_21a912c
ovy203_21a912c: ; 0x021A912C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _021A91B2
	ldr r0, [r5]
	mov r1, #5
	bl sub_021A8384
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #6
	bl sub_021A8384
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #8
	bl sub_021A8384
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, r6
	bne _021A9168
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	bne _021A9168
	cmp r1, #0
	bne _021A917E
_021A9168:
	ldr r0, [r5, #4]
	add r1, r6, #0
	strh r6, [r5, #8]
	strh r4, [r5, #0xa]
	bl ovy203_21a92d8
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ovy203_21a9324
_021A917E:
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	bl ovy203_21a92f4
	add r4, sp, #0
	mov r1, #2
	mov r6, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r6]
	ldr r0, [r5, #4]
	bl ovy203_21a7bbc
	ldrsh r0, [r4, r6]
	ldrb r1, [r5, #0x12]
	bl sub_021A9258
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r5, #4]
	bl sub_021A7BF4
	ldr r0, [r5, #4]
	bl ovy203_21a7ca4
_021A91B2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy203_21a912c
_021A91B8:
	.byte 0xC1, 0x74, 0x70, 0x47, 0x42, 0x89, 0x01, 0x4B
	.byte 0x01, 0x21, 0x18, 0x47, 0x25, 0x93, 0x1A, 0x02, 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0xA5, 0x7C, 0x1A, 0x02

	thumb_func_start ovy203_21a91d4
ovy203_21a91d4: ; 0x021A91D4
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	ldr r0, [r4, #4]
	bl ovy203_21a92d8
	add r1, r0, #0
	ldrh r2, [r4, #0xa]
	add r0, r4, #0
	bl ovy203_21a9324
	add r0, r4, #0
	bl ovy203_21a912c
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a91d4

	thumb_func_start ovy203_21a91f4
ovy203_21a91f4: ; 0x021A91F4
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a91f4

	non_word_aligned_thumb_func_start ovy203_21a91f6
ovy203_21a91f6: ; 0x021A91F6
	push {r3, lr}
	add r3, sp, #0xc
	add r1, sp, #0xc
	mov r2, #0
	add r3, #2
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #4]
	bl ovy203_21a7bbc
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy203_21a91f6
_021A9214:
	.byte 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x3D, 0x7C, 0x1A, 0x02
	.byte 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x11, 0x7C, 0x1A, 0x02, 0x40, 0x68, 0x01, 0x4B
	.byte 0x18, 0x47, 0xC0, 0x46, 0x2D, 0x7C, 0x1A, 0x02, 0x40, 0x68, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46
	.byte 0x05, 0x7C, 0x1A, 0x02

	thumb_func_start ovy203_21a9244
ovy203_21a9244: ; 0x021A9244
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	mov r1, #0
	bl ovy203_21a9324
	ldr r0, [r4, #4]
	bl ovy203_21a7ca4
	pop {r4, pc}
	thumb_func_end ovy203_21a9244

	thumb_func_start sub_021A9258
sub_021A9258: ; 0x021A9258
	cmp r1, #1
	bne _021A926A
	asr r1, r0, #1
	lsr r1, r1, #0x1e
	add r1, r0, r1
	asr r1, r1, #2
	mov r0, #0xfa
	sub r0, r0, r1
	bx lr
_021A926A:
	asr r1, r0, #1
	lsr r1, r1, #0x1e
	add r1, r0, r1
	asr r1, r1, #2
	mov r0, #0xfb
	sub r0, r0, r1
	bx lr
	thumb_func_end sub_021A9258

	thumb_func_start ovy203_21a9278
ovy203_21a9278: ; 0x021A9278
	push {r0, r1, r2, r3}
	thumb_func_end ovy203_21a9278

	non_word_aligned_thumb_func_start ovy203_21a927a
ovy203_21a927a: ; 0x021A927A
	push {r3, lr}
	add r3, sp, #0xc
	add r1, sp, #0xc
	mov r2, #0
	add r3, #2
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #4]
	bl ovy203_21a7c6c
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy203_21a927a

	thumb_func_start sub_021A9298
sub_021A9298: ; 0x021A9298
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021A92A2
	mov r0, #1
	bx lr
_021A92A2:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021A9298

	thumb_func_start ovy203_21a92a8
ovy203_21a92a8: ; 0x021A92A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ble _021A92D4
	mov r7, #0x14
_021A92B6:
	add r6, r4, #0
	ldr r0, [r5, #4]
	mul r6, r7
	add r0, r0, r6
	bl sub_021A9298
	cmp r0, #1
	bne _021A92CC
	ldr r0, [r5, #4]
	add r0, r0, r6
	pop {r3, r4, r5, r6, r7, pc}
_021A92CC:
	ldrh r0, [r5, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021A92B6
_021A92D4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a92a8

	thumb_func_start ovy203_21a92d8
ovy203_21a92d8: ; 0x021A92D8
	push {r4, lr}
	add r4, r1, #0
	bl sub_021A7C48
	cmp r0, #2
	bne _021A92E8
	mov r0, #0
	pop {r4, pc}
_021A92E8:
	ldr r0, _021A92F0 ; =0x021A9A96
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_021A92F0: .word 0x021A9A96
	thumb_func_end ovy203_21a92d8

	thumb_func_start ovy203_21a92f4
ovy203_21a92f4: ; 0x021A92F4
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl ovy203_21a84bc
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	strh r0, [r5]
	mov r0, #6
	ldrsh r0, [r1, r0]
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy203_21a92f4

	thumb_func_start ovy203_21a9324
ovy203_21a9324: ; 0x021A9324
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	str r2, [sp]
	bl sub_021A7C60
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_021A7C50
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [r5, #4]
	ldr r2, [sp]
	add r1, r4, #0
	bl ovy203_21a7c88
	cmp r6, r4
	beq _021A936E
	ldr r0, _021A9370 ; =0x021A9A8C
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne _021A9362
	ldrh r0, [r5, #0x10]
	cmp r0, r4
	bne _021A9362
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	bl sub_021A7C54
_021A9362:
	ldr r0, _021A9370 ; =0x021A9A8C
	ldrb r0, [r0, r6]
	cmp r0, #1
	bne _021A936E
	strh r6, [r5, #0x10]
	strh r7, [r5, #0xe]
_021A936E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A9370: .word 0x021A9A8C
	thumb_func_end ovy203_21a9324

	thumb_func_start ovy203_21a9374
ovy203_21a9374: ; 0x021A9374
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	bl ovy203_21a84bc
	add r3, sp, #0
	strh r0, [r3]
	lsr r0, r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3]
	mov r1, #6
	mov r2, #4
	strh r0, [r3, #4]
	ldrh r0, [r3, #2]
	strh r0, [r3, #6]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	sub r1, #0x60
	sub r2, #0x70
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_021A93BC
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a9374
_021A93B0:
	.byte 0x01, 0x4B, 0x00, 0x21, 0x04, 0x22, 0x18, 0x47, 0xA8, 0x87, 0x07, 0x02

	thumb_func_start sub_021A93BC
sub_021A93BC: ; 0x021A93BC
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A93BC

	thumb_func_start sub_021A93C4
sub_021A93C4: ; 0x021A93C4
	mov r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A93C4

	thumb_func_start sub_021A93CC
sub_021A93CC: ; 0x021A93CC
	mov r1, #2
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021A93CC

	thumb_func_start ovy203_21a93d4
ovy203_21a93d4: ; 0x021A93D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r6, r3, #0
	mov r0, #0x68
	str r0, [sp]
	lsl r0, r6, #0x10
	add r7, r1, #0
	add r5, r2, #0
	ldr r3, _021A9428 ; =0x021A9B24
	lsr r0, r0, #0x10
	mov r1, #0x1c
	mov r2, #1
	bl GFL_HeapAllocate
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldrb r1, [r5, #1]
	str r0, [r4]
	ldrb r0, [r5]
	str r7, [r4, #4]
	add r2, r5, #0
	str r0, [r4, #0x10]
	add r0, r7, #0
	str r1, [r4, #0x14]
	bl ovy203_21a948c
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r3, r4, #0
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #0xa]
	add r3, #0xc
	bl sub_0204B304
	str r0, [r4, #8]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021A9428: .word 0x021A9B24
	thumb_func_end ovy203_21a93d4

	thumb_func_start ovy203_21a942c
ovy203_21a942c: ; 0x021A942C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a942c

	thumb_func_start ovy203_21a9440
ovy203_21a9440: ; 0x021A9440
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_021A93C4
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021A93CC
	add r6, r0, #0
	add r1, sp, #0
	strh r6, [r1]
	strh r4, [r1, #2]
	ldr r0, [r5, #0x10]
	add r2, sp, #0
	cmp r0, #0
	bne _021A946C
	ldr r0, [r5]
	mov r1, #0
	b _021A9478
_021A946C:
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0xc0
	strh r0, [r1, #2]
	ldr r0, [r5]
	mov r1, #1
_021A9478:
	bl sub_0204BEDC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ovy203_21a94ec
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy203_21a9440

	thumb_func_start ovy203_21a948c
ovy203_21a948c: ; 0x021A948C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, _021A94E8 ; =0x021A9AA4
	add r3, sp, #0
	add r5, r1, #0
	add r4, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldrb r1, [r2, #2]
	add r0, sp, #0
	strb r1, [r0, #0x11]
	ldrb r1, [r2, #3]
	strb r1, [r0, #0x12]
	ldrb r1, [r2, #4]
	strb r1, [r0, #0x13]
	ldrb r1, [r2, #5]
	strb r1, [r0, #0x18]
	ldrb r1, [r2, #6]
	strb r1, [r0, #0x19]
	mov r1, #0
	strb r1, [r0, #0x1a]
	ldrb r0, [r2, #7]
	str r0, [sp, #0x1c]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021A94E8: .word 0x021A9AA4
	thumb_func_end ovy203_21a948c

	thumb_func_start ovy203_21a94ec
ovy203_21a94ec: ; 0x021A94EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	lsl r0, r0, #0xd
	asr r3, r0, #0x10
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsr r4, r1, #0x1f
	lsl r6, r1, #0x1d
	sub r6, r6, r4
	mov r1, #0x1d
	ror r6, r1
	add r4, r4, r6
	lsl r4, r4, #0x10
	asr r6, r4, #0x10
	lsr r4, r2, #0x1f
	lsl r2, r2, #0x1d
	sub r2, r2, r4
	ror r2, r1
	add r1, r4, r2
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	lsl r0, r0, #0xd
	ldrh r1, [r5, #0x18]
	asr r0, r0, #0x10
	cmp r3, r1
	bne _021A9530
	ldrh r1, [r5, #0x1a]
	cmp r0, r1
	beq _021A9556
_021A9530:
	strh r0, [r5, #0x1a]
	neg r0, r0
	lsl r0, r0, #0x10
	strh r3, [r5, #0x18]
	asr r0, r0, #0x10
	str r0, [sp]
	neg r3, r3
	lsl r3, r3, #0x10
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0xc]
	asr r3, r3, #0x10
	bl ovy203_21a9578
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02045B7C
_021A9556:
	ldr r0, [r5, #0x14]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, r6, #0
	bl sub_02045E1C
	ldr r0, [r5, #0x14]
	mov r1, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r2, r4, #0
	bl sub_02045E1C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy203_21a94ec

	thumb_func_start ovy203_21a9578
ovy203_21a9578: ; 0x021A9578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x1c]
	add r0, r2, #0
	ldrh r0, [r0]
	ldr r4, [sp, #0x50]
	add r5, r3, #0
	lsl r0, r0, #0xd
	asr r0, r0, #0x10
	str r0, [sp, #0x34]
	add r0, r2, #0
	ldrh r0, [r0, #2]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	lsl r0, r0, #0xd
	asr r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	bge _021A95A6
	neg r0, r5
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	b _021A95A8
_021A95A6:
	mov r0, #0
_021A95A8:
	str r0, [sp, #0x2c]
	cmp r4, #0
	bge _021A95B6
	neg r0, r4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	b _021A95B8
_021A95B6:
	mov r0, #0
_021A95B8:
	str r0, [sp, #0x28]
	cmp r5, #0
	bgt _021A95C0
	mov r5, #0
_021A95C0:
	cmp r4, #0
	bgt _021A95C6
	mov r4, #0
_021A95C6:
	mov r0, #0x21
	sub r0, r0, r5
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x19
	sub r0, r0, r4
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [sp, #0x2c]
	add r1, r0, r7
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bge _021A95EC
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r7, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_021A95EC:
	ldr r0, [sp, #0x28]
	add r1, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bge _021A9602
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_021A9602:
	mov r0, #0x21
	str r0, [sp]
	mov r0, #0x19
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsl r2, r5, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	lsl r3, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ovy203_21a966c
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy203_21a9578

	thumb_func_start ovy203_21a966c
ovy203_21a966c: ; 0x021A966C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	str r1, [sp, #0x18]
	ldr r0, [sp, #0x68]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x70]
	add r4, r2, #0
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x74]
	ldr r1, [sp, #0x78]
	bl sub_021A97F4
	str r0, [sp, #0x38]
	cmp r0, #0
	bne _021A96BE
	add r3, sp, #0x60
	ldrb r0, [r3, #4]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x68]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xc]
	str r0, [sp, #8]
	ldr r0, [sp, #0x70]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x74]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x14]
	ldrb r3, [r3]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	bl sub_020454D4
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_021A96BE:
	add r1, sp, #0x60
	mov r0, #4
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x40]
	cmp r0, #0
	bgt _021A96CC
	b _021A97F0
_021A96CC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x30]
	mov r0, #0xc
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x2c]
	lsl r0, r4, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x28]
_021A96DE:
	ldr r0, [sp, #0x70]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	ldr r1, [sp, #0x40]
	add r1, r0, r1
	cmp r1, #0x20
	bgt _021A96FC
	ldr r1, [sp, #0x40]
	str r1, [sp, #0x3c]
	mov r1, #0
	b _021A970E
_021A96FC:
	mov r1, #0x20
	sub r1, r1, r0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	sub r1, r2, r1
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
_021A970E:
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x70]
	ldr r4, [sp, #0x30]
	lsl r1, r1, #0x13
	asr r2, r1, #0x18
	ldr r5, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x30]
	cmp r1, #0
	ble _021A97CE
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x20]
	str r0, [sp, #0x44]
_021A9738:
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r7, r2, r1
	add r0, r7, r4
	cmp r0, #0x20
	bgt _021A9750
	add r6, r4, #0
	mov r4, #0
	b _021A975E
_021A9750:
	mov r0, #0x20
	sub r0, r0, r7
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	sub r0, r4, r6
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_021A975E:
	ldr r0, [sp, #0x74]
	asr r1, r5, #4
	str r0, [sp]
	ldr r0, [sp, #0x78]
	lsr r1, r1, #0x1b
	add r1, r5, r1
	str r0, [sp, #4]
	add r0, sp, #0x48
	str r0, [sp, #8]
	lsl r1, r1, #0x13
	asr r1, r1, #0x18
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x38]
	lsr r1, r1, #0x18
	bl ovy203_21a980c
	ldr r1, [sp, #0x20]
	lsl r3, r6, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	add r1, sp, #0x48
	str r0, [sp, #0xc]
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsr r3, r3, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x1c]
	lsr r1, r1, #0x18
	bl sub_020454D4
	add r0, r5, r6
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	ldr r0, [sp, #0x34]
	add r0, r0, r6
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x34]
	cmp r4, #0
	bgt _021A9738
_021A97CE:
	ldr r0, [sp, #0x3c]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x70]
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	ble _021A97F0
	b _021A96DE
_021A97F0:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy203_21a966c

	thumb_func_start sub_021A97F4
sub_021A97F4: ; 0x021A97F4
	cmp r0, #0x20
	bhi _021A9802
	mov r0, #0
	cmp r1, #0x20
	bls _021A980A
	mov r0, #2
	bx lr
_021A9802:
	mov r0, #1
	cmp r1, #0x20
	bls _021A980A
	mov r0, #3
_021A980A:
	bx lr
	thumb_func_end sub_021A97F4

	thumb_func_start ovy203_21a980c
ovy203_21a980c: ; 0x021A980C
	push {r3, r4, r5, r6}
	add r5, r3, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r6, [sp, #0x18]
	cmp r5, #3
	bhi _021A98C6
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021A982A: ; jump table
	.short _021A9832 - _021A982A - 2 ; case 0
	.short _021A983A - _021A982A - 2 ; case 1
	.short _021A985A - _021A982A - 2 ; case 2
	.short _021A987A - _021A982A - 2 ; case 3
_021A9832:
	strh r3, [r6]
	strh r2, [r6, #2]
	pop {r3, r4, r5, r6}
	bx lr
_021A983A:
	add r1, r4, #1
	lsl r1, r1, #5
	cmp r1, r3
	bgt _021A9846
	mov r1, #0x20
	b _021A984A
_021A9846:
	lsl r1, r4, #5
	sub r1, r3, r1
_021A984A:
	strh r1, [r6]
	lsl r1, r2, #0x16
	asr r1, r1, #0x10
	mul r1, r4
	strh r2, [r6, #2]
	add r0, r0, r1
	pop {r3, r4, r5, r6}
	bx lr
_021A985A:
	add r4, r1, #1
	lsl r4, r4, #5
	strh r3, [r6]
	cmp r4, r2
	bgt _021A9868
	mov r2, #0x20
	b _021A986C
_021A9868:
	lsl r4, r1, #5
	sub r2, r2, r4
_021A986C:
	strh r2, [r6, #2]
	lsl r2, r3, #0x16
	asr r2, r2, #0x10
	mul r2, r1
	add r0, r0, r2
	pop {r3, r4, r5, r6}
	bx lr
_021A987A:
	add r5, r4, #1
	lsl r5, r5, #5
	cmp r5, r3
	bgt _021A9886
	mov r5, #0x20
	b _021A988A
_021A9886:
	lsl r5, r4, #5
	sub r5, r3, r5
_021A988A:
	strh r5, [r6]
	add r5, r1, #1
	lsl r5, r5, #5
	cmp r5, r2
	bgt _021A9898
	mov r5, #0x20
	b _021A989C
_021A9898:
	lsl r5, r1, #5
	sub r5, r2, r5
_021A989C:
	strh r5, [r6, #2]
	cmp r1, #0
	bne _021A98AE
	mov r3, #0
	cmp r4, #0
	beq _021A98C0
	mov r1, #2
	lsl r1, r1, #0xa
	b _021A98BA
_021A98AE:
	lsl r1, r3, #0x16
	lsr r3, r1, #0x10
	cmp r4, #0
	beq _021A98C0
	lsl r1, r2, #0x16
	lsr r1, r1, #0x10
_021A98BA:
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
_021A98C0:
	add r0, r0, r3
	pop {r3, r4, r5, r6}
	bx lr
_021A98C6:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ovy203_21a980c

	thumb_func_start ovy203_21a98cc
ovy203_21a98cc: ; 0x021A98CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xd3
	ldr r7, _021A990C ; =0x021A9B38
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0xc
	mov r2, #1
	add r3, r7, #0
	bl GFL_HeapAllocate
	add r4, r0, #0
	add r0, r6, #1
	str r0, [r4, #4]
	mov r0, #0xd8
	str r0, [sp]
	ldr r1, [r4, #4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	mov r2, #1
	add r3, r7, #0
	bl GFL_HeapAllocate
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021A990C: .word 0x021A9B38
	thumb_func_end ovy203_21a98cc

	thumb_func_start ovy203_21a9910
ovy203_21a9910: ; 0x021A9910
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl GFL_HeapFree
	add r0, r4, #0
	bl GFL_HeapFree
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a9910

	thumb_func_start ovy203_21a9924
ovy203_21a9924: ; 0x021A9924
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	ldr r1, [r5, #4]
	add r0, r0, #1
	blx sub_0208D868
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _021A9942
	add r0, r5, #0
	add r1, sp, #0
	bl ovy203_21a9960
_021A9942:
	ldrh r0, [r5, #0xa]
	ldr r3, [r5]
	lsl r2, r0, #2
	ldrh r0, [r4]
	add r1, r3, r2
	strh r0, [r3, r2]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r5, #0xa]
	ldr r1, [r5, #4]
	add r0, r0, #1
	blx sub_0208D868
	strh r1, [r5, #0xa]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy203_21a9924

	thumb_func_start ovy203_21a9960
ovy203_21a9960: ; 0x021A9960
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, r2
	bne _021A9970
	mov r0, #0
	pop {r4, pc}
_021A9970:
	ldr r3, [r4]
	lsl r0, r2, #2
	add r2, r3, r0
	ldrh r0, [r3, r0]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #8]
	ldr r1, [r4, #4]
	add r0, r0, #1
	blx sub_0208D868
	strh r1, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy203_21a9960
_021A9990:
	.byte 0x01, 0xFF, 0x08, 0x02, 0x04, 0x10, 0x10, 0x02, 0x04, 0x00, 0x00, 0x00, 0x2D, 0x80, 0x1A, 0x02
	.byte 0x3D, 0x80, 0x1A, 0x02, 0x4D, 0x80, 0x1A, 0x02, 0x61, 0x80, 0x1A, 0x02, 0x79, 0x80, 0x1A, 0x02
	.byte 0x8D, 0x80, 0x1A, 0x02, 0xA1, 0x80, 0x1A, 0x02, 0xB5, 0x80, 0x1A, 0x02, 0xC9, 0x80, 0x1A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDD, 0x80, 0x1A, 0x02, 0xED, 0x80, 0x1A, 0x02
	.byte 0xFD, 0x80, 0x1A, 0x02, 0x21, 0x81, 0x1A, 0x02, 0x31, 0x81, 0x1A, 0x02, 0x41, 0x81, 0x1A, 0x02
	.byte 0x51, 0x81, 0x1A, 0x02, 0x61, 0x81, 0x1A, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x03, 0x02, 0x00, 0xF0, 0x00, 0x10, 0xF0, 0x00, 0x10, 0x00, 0xC5, 0x86, 0x1A, 0x02
	.byte 0x15, 0x87, 0x1A, 0x02, 0x79, 0x87, 0x1A, 0x02, 0x0D, 0x88, 0x1A, 0x02, 0xA1, 0x88, 0x1A, 0x02
	.byte 0xF1, 0x88, 0x1A, 0x02, 0x55, 0x89, 0x1A, 0x02, 0xE9, 0x89, 0x1A, 0x02, 0x7D, 0x8A, 0x1A, 0x02
	.byte 0xE1, 0x8A, 0x1A, 0x02, 0x45, 0x8B, 0x1A, 0x02, 0xA9, 0x8B, 0x1A, 0x02, 0x0D, 0x8C, 0x1A, 0x02
	.byte 0x11, 0x8C, 0x1A, 0x02, 0x19, 0x8C, 0x1A, 0x02, 0x59, 0x8C, 0x1A, 0x02, 0x99, 0x8C, 0x1A, 0x02
	.byte 0x9D, 0x8C, 0x1A, 0x02, 0x19, 0x8C, 0x1A, 0x02, 0x19, 0x8C, 0x1A, 0x02, 0xA5, 0x8C, 0x1A, 0x02
	.byte 0xA5, 0x8C, 0x1A, 0x02, 0xA5, 0x8C, 0x1A, 0x02, 0xA5, 0x8C, 0x1A, 0x02, 0x7D, 0x8D, 0x1A, 0x02
	.byte 0xA9, 0x8D, 0x1A, 0x02, 0xE5, 0x8D, 0x1A, 0x02, 0x59, 0x8E, 0x1A, 0x02, 0x69, 0x8E, 0x1A, 0x02
	.byte 0x91, 0x8E, 0x1A, 0x02, 0x95, 0x8E, 0x1A, 0x02, 0xE5, 0x8D, 0x1A, 0x02, 0xA5, 0x8E, 0x1A, 0x02
	.byte 0xA5, 0x8E, 0x1A, 0x02, 0xA5, 0x8E, 0x1A, 0x02, 0xA5, 0x8E, 0x1A, 0x02, 0x00, 0x00, 0x01, 0x00
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x03, 0x02, 0x04, 0x00, 0x05, 0x06, 0x08, 0x07, 0x08
	.byte 0x02, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x69, 0x66, 0x69, 0x5F, 0x32, 0x64, 0x63, 0x68, 0x61, 0x72, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x77, 0x66, 0x32, 0x64, 0x6D, 0x61, 0x70, 0x5F, 0x6D, 0x61, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x77, 0x66, 0x32, 0x64, 0x6D, 0x61, 0x70, 0x5F, 0x6F, 0x62, 0x6A, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x77, 0x66, 0x32, 0x64, 0x6D, 0x61, 0x70, 0x5F, 0x6F, 0x62, 0x6A, 0x64, 0x72, 0x61, 0x77, 0x2E
	.byte 0x63, 0x00, 0x00, 0x00, 0x77, 0x66, 0x32, 0x64, 0x6D, 0x61, 0x70, 0x5F, 0x73, 0x63, 0x72, 0x64
	.byte 0x72, 0x61, 0x77, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x77, 0x66, 0x32, 0x64, 0x6D, 0x61, 0x70, 0x5F
	.byte 0x63, 0x6D, 0x64, 0x71, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021A9990
