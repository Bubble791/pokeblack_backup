    .include "macros/function.inc"
	.include "overlay61.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy61_21e5800
ovy61_21e5800: ; 0x021E5800
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EFD60
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy61_21e5800

	thumb_func_start ovy61_21e5828
ovy61_21e5828: ; 0x021E5828
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_2154910
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r2, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021EF664
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5828

	thumb_func_start ovy61_21e5888
ovy61_21e5888: ; 0x021E5888
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_021EF6AC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5888

	thumb_func_start ovy61_21e58c4
ovy61_21e58c4: ; 0x021E58C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	bl sub_02016AD8
	add r5, r0, #0
	bl sub_02017934
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy12_2154910
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl sub_02017220
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02010268
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020102F0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e58c4

	thumb_func_start ovy61_21e5904
ovy61_21e5904: ; 0x021E5904
	push {r4, r5, r6, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	bl sub_02043F2C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02010268
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0200C838
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201024C
	add r0, r4, #0
	bl sub_0200C9BC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020103EC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02010300
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy61_21e5904

	thumb_func_start ovy61_21e594c
ovy61_21e594c: ; 0x021E594C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02010268
	bl sub_020102D4
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy61_21e594c

	thumb_func_start ovy61_21e597c
ovy61_21e597c: ; 0x021E597C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02010268
	bl sub_02010378
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy61_21e597c

	thumb_func_start ovy61_21e59ac
ovy61_21e59ac: ; 0x021E59AC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AF0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02153EE0
	bl sub_02167008
	sub r0, #0xb0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r4, #0
	add r1, r6, #0
	bl sub_021EFEEC
	add r1, r0, #0
	add r0, r5, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy61_21e59ac

	thumb_func_start ovy61_21e59ec
ovy61_21e59ec: ; 0x021E59EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r7, r0, #0
	bl sub_02016AF0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r2, r0, #0
	ldr r1, [sp]
	ldr r3, [sp, #4]
	add r0, r7, #0
	bl sub_021EF01C
	add r1, r0, #0
	add r0, r6, #0
	bl ovy12_2153880
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e59ec

	thumb_func_start ovy61_21e5a38
ovy61_21e5a38: ; 0x021E5A38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EF050
	add r1, r0, #0
	add r0, r5, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy61_21e5a38

	thumb_func_start ovy61_21e5a64
ovy61_21e5a64: ; 0x021E5A64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EF254
	add r1, r0, #0
	add r0, r5, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy61_21e5a64

	thumb_func_start ovy61_21e5a90
ovy61_21e5a90: ; 0x021E5A90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy61_21e5f94
	ldr r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy61_21e5a90

	thumb_func_start ovy61_21e5aa8
ovy61_21e5aa8: ; 0x021E5AA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	sub r0, #0xb0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02010268
	add r6, r0, #0
	bl sub_020102D4
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_02010304
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5aa8

	thumb_func_start ovy61_21e5af4
ovy61_21e5af4: ; 0x021E5AF4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	sub r0, #0xb0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02010268
	add r6, r0, #0
	bl sub_020102D4
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02010288
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5af4

	thumb_func_start ovy61_21e5b40
ovy61_21e5b40: ; 0x021E5B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	str r0, [sp]
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	bl sub_02153EE0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02017934
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02167018
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_02016AF0
	bl sub_021EF010
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02167008
	sub r0, #0xb0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	bl sub_02010268
	ldr r1, [sp, #4]
	add r2, r7, #0
	add r3, r4, #0
	bl sub_021F0358
	strh r0, [r5]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy61_21e5b40

	thumb_func_start ovy61_21e5bac
ovy61_21e5bac: ; 0x021E5BAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl ovy61_21e5f94
	ldr r0, [r0, #4]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy61_21e5bac

	thumb_func_start ovy61_21e5bc4
ovy61_21e5bc4: ; 0x021E5BC4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r0, r5, #0
	bl sub_02153EE0
	bl sub_02167018
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	cmp r5, #0x32
	bne _021E5BF4
	mov r1, #2
	b _021E5BFE
_021E5BF4:
	cmp r5, #0x33
	bne _021E5BFC
	mov r1, #1
	b _021E5BFE
_021E5BFC:
	mov r1, #0
_021E5BFE:
	strh r1, [r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy61_21e5bc4

	thumb_func_start ovy61_21e5c04
ovy61_21e5c04: ; 0x021E5C04
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	bl sub_02016AD8
	bl sub_02017934
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02016AF0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02010268
	add r5, r0, #0
	add r0, r6, #0
	bl sub_021EF010
	ldr r1, [sp]
	bl sub_021F08B4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02010354
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5c04

	thumb_func_start ovy61_21e5c5c
ovy61_21e5c5c: ; 0x021E5C5C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02016AF0
	str r0, [sp]
	add r0, r6, #0
	bl sub_02017934
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy12_2154910
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02010268
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_021EF010
	add r1, r6, #0
	bl sub_021F08B4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02010340
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5c5c

	thumb_func_start ovy61_21e5cb8
ovy61_21e5cb8: ; 0x021E5CB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	add r4, r0, #0
	bl sub_02016AD8
	bl sub_02017934
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02010268
	bl sub_02010378
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021F02E0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020103A0
	add r0, r4, r0
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5cb8

	thumb_func_start ovy61_21e5d0c
ovy61_21e5d0c: ; 0x021E5D0C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_021EF010
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	mov r2, #6
	ldr r1, _021E5D54 ; =0x00000A5A
	add r5, r0, #0
	ldrb r0, [r4, r1]
	lsl r2, r2, #6
	add r1, r1, #1
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	ldrb r3, [r4, r1]
	mov r1, #0x18
	sub r2, #0x30
	mul r1, r3
	add r0, r0, r1
	ldrb r0, [r0, r2]
	bl sub_021F0A9C
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E5D54: .word 0x00000A5A
	thumb_func_end ovy61_21e5d0c

	thumb_func_start ovy61_21e5d58
ovy61_21e5d58: ; 0x021E5D58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r5, r0, #0
	bl sub_02016AD8
	bl sub_02017934
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_021804C0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	ldr r0, _021E5DA0 ; =0x00000106
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02162B28
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5DA0: .word 0x00000106
	thumb_func_end ovy61_21e5d58

	thumb_func_start ovy61_21e5da4
ovy61_21e5da4: ; 0x021E5DA4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02010268
	bl sub_020102D0
	strh r0, [r5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy61_21e5da4

	thumb_func_start ovy61_21e5dd4
ovy61_21e5dd4: ; 0x021E5DD4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy12_2154910
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	bl sub_02010268
	add r1, r5, #0
	bl sub_02010334
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5dd4

	thumb_func_start ovy61_21e5e08
ovy61_21e5e08: ; 0x021E5E08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r5, r0, #0
	bl sub_02016AD8
	bl sub_02017934
	str r0, [sp]
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	sub r0, #0xb0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02010268
	bl sub_020102D4
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl sub_021F0E70
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5e08

	thumb_func_start ovy61_21e5e60
ovy61_21e5e60: ; 0x021E5E60
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021F0DD8
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy61_21e5e60

	thumb_func_start ovy61_21e5e98
ovy61_21e5e98: ; 0x021E5E98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155184
	add r0, r5, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010268
	add r6, r0, #0
	cmp r7, #0xb
	bhi _021E5F8C
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5EFA: ; jump table
	.short _021E5F12 - _021E5EFA - 2 ; case 0
	.short _021E5F1E - _021E5EFA - 2 ; case 1
	.short _021E5F2A - _021E5EFA - 2 ; case 2
	.short _021E5F36 - _021E5EFA - 2 ; case 3
	.short _021E5F3E - _021E5EFA - 2 ; case 4
	.short _021E5F44 - _021E5EFA - 2 ; case 5
	.short _021E5F30 - _021E5EFA - 2 ; case 6
	.short _021E5F8C - _021E5EFA - 2 ; case 7
	.short _021E5F8C - _021E5EFA - 2 ; case 8
	.short _021E5F5C - _021E5EFA - 2 ; case 9
	.short _021E5F62 - _021E5EFA - 2 ; case 10
	.short _021E5F6A - _021E5EFA - 2 ; case 11
_021E5F12:
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020103A0
	b _021E5F8A
_021E5F1E:
	ldr r0, [sp]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020103C4
	b _021E5F8A
_021E5F2A:
	bl sub_020102EC
	b _021E5F8A
_021E5F30:
	bl sub_020102D4
	b _021E5F8A
_021E5F36:
	add r0, r5, #0
	bl sub_021F08E8
	b _021E5F8A
_021E5F3E:
	bl sub_020102A4
	b _021E5F8A
_021E5F44:
	bl sub_020102EC
	add r7, r0, #0
	add r0, r6, #0
	bl sub_020102D4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_021F093C
	b _021E5F8A
_021E5F5C:
	ldr r0, _021E5F90 ; =0x00000A5E
	ldrh r0, [r5, r0]
	b _021E5F8A
_021E5F62:
	mov r0, #0xa6
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	b _021E5F8A
_021E5F6A:
	mov r1, #0
	bl sub_02010274
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	mov r6, #1
	bl sub_02010274
	cmp r5, #0
	bne _021E5F88
	cmp r0, #0
	bne _021E5F88
	strh r6, [r4]
	b _021E5F8C
_021E5F88:
	mov r0, #0
_021E5F8A:
	strh r0, [r4]
_021E5F8C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E5F90: .word 0x00000A5E
	thumb_func_end ovy61_21e5e98

	thumb_func_start ovy61_21e5f94
ovy61_21e5f94: ; 0x021E5F94
	push {r3, r4, r5, lr}
	bl sub_0215516C
	add r5, r0, #0
	bl sub_02016AF0
	bl sub_021EF010
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010268
	bl sub_02010378
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021F0DD8
	ldr r1, _021E5FDC ; =0x021E61D8
	cmp r0, #0x17
	beq _021E5FC8
	ldr r1, _021E5FE0 ; =0x021E6180
_021E5FC8:
	cmp r5, #9
	bne _021E5FD6
	cmp r0, #0x17
	beq _021E5FD6
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_021E5FD6:
	lsl r0, r5, #3
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E5FDC: .word 0x021E61D8
_021E5FE0: .word 0x021E6180
	thumb_func_end ovy61_21e5f94

	thumb_func_start ovy61_21e5fe4
ovy61_21e5fe4: ; 0x021E5FE4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r5, r0, #0
	bl sub_02016AF0
	bl sub_021EF010
	str r0, [sp]
	add r0, r5, #0
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02010268
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_2154910
	sub r0, #0xb0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	add r1, r6, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_020102D4
	add r1, r0, #0
	lsl r2, r5, #0x18
	ldr r0, [sp]
	lsr r2, r2, #0x18
	bl sub_021F0DB4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy61_21e5fe4

	thumb_func_start ovy61_21e603c
ovy61_21e603c: ; 0x021E603C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	str r0, [sp]
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_21548e8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	bl sub_02153EE0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02017934
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02167018
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_02016AF0
	bl sub_021EF010
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02010268
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021F03DC
	strh r0, [r5]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy61_21e603c

	thumb_func_start ovy61_21e60a8
ovy61_21e60a8: ; 0x021E60A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	add r5, r0, #0
	bl sub_02010268
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0200C838
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy12_21548e8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200C9BC
	add r5, r0, #0
	add r0, r6, #0
	bl sub_020103E8
	cmp r5, r0
	bls _021E60EC
	mov r0, #1
	b _021E60EE
_021E60EC:
	mov r0, #0
_021E60EE:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy61_21e60a8

	thumb_func_start ovy61_21e60f4
ovy61_21e60f4: ; 0x021E60F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_0215516C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02155184
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02016AD8
	bl sub_02017934
	add r5, r0, #0
	bl sub_02010268
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200C838
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ovy12_2154910
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_02153EC4
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0200C9BC
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_020103E8
	cmp r4, r0
	bls _021E6176
	sub r5, r4, r0
	ldr r0, _021E617C ; =0x0098967F
	cmp r5, r0
	bls _021E6154
	add r5, r0, #0
_021E6154:
	cmp r5, r4
	bls _021E615A
	add r5, r4, #0
_021E615A:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #7
	bl StringSetNumber
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0200C9E4
_021E6176:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E617C: .word 0x0098967F
	thumb_func_end ovy61_21e60f4
_021E6180:
	.byte 0xB7, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0xB9, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0xBB, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0xBF, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0xC1, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0xC3, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0xC5, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0xC7, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0xC9, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00
	.byte 0xF8, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0xBA, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00
	.byte 0xBE, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0xC2, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0xC6, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0xCA, 0x00, 0x00, 0x00, 0x30, 0x01, 0x00, 0x00, 0xF9, 0x01, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00
	.byte 0x01, 0x58, 0x1E, 0x02, 0x29, 0x58, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x05, 0x59, 0x1E, 0x02
	.byte 0x4D, 0x59, 0x1E, 0x02, 0x89, 0x58, 0x1E, 0x02, 0x7D, 0x59, 0x1E, 0x02, 0xAD, 0x59, 0x1E, 0x02
	.byte 0x91, 0x5A, 0x1E, 0x02, 0xA9, 0x5A, 0x1E, 0x02, 0xAD, 0x5B, 0x1E, 0x02, 0xF5, 0x5A, 0x1E, 0x02
	.byte 0x41, 0x5B, 0x1E, 0x02, 0xC5, 0x5B, 0x1E, 0x02, 0x5D, 0x5C, 0x1E, 0x02, 0x05, 0x5C, 0x1E, 0x02
	.byte 0xED, 0x59, 0x1E, 0x02, 0xB9, 0x5C, 0x1E, 0x02, 0x59, 0x5D, 0x1E, 0x02, 0xC5, 0x58, 0x1E, 0x02
	.byte 0xA5, 0x5D, 0x1E, 0x02, 0xD5, 0x5D, 0x1E, 0x02, 0x09, 0x5E, 0x1E, 0x02, 0x61, 0x5E, 0x1E, 0x02
	.byte 0x99, 0x5E, 0x1E, 0x02, 0x39, 0x5A, 0x1E, 0x02, 0xE5, 0x5F, 0x1E, 0x02, 0x3D, 0x60, 0x1E, 0x02
	.byte 0x0D, 0x5D, 0x1E, 0x02, 0xA9, 0x60, 0x1E, 0x02, 0x65, 0x5A, 0x1E, 0x02, 0xF5, 0x60, 0x1E, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E6180
