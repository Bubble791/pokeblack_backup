    .include "macros/function.inc"
	.include "overlay66.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy66_21e5800
ovy66_21e5800: ; 0x021E5800
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EEDC0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy66_21e5800

	thumb_func_start ovy66_21e5820
ovy66_21e5820: ; 0x021E5820
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EEE08
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy66_21e5820

	thumb_func_start ovy66_21e5840
ovy66_21e5840: ; 0x021E5840
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020159E8
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021EEE3C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy66_21e5840

	thumb_func_start ovy66_21e5860
ovy66_21e5860: ; 0x021E5860
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02154910
	mov r1, #1
	cmp r0, #1
	beq _021E587E
	mov r1, #0
_021E587E:
	add r0, r4, #0
	bl sub_021EEEB4
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy66_21e5860

	thumb_func_start ovy66_21e5888
ovy66_21e5888: ; 0x021E5888
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EEE68
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy66_21e5888

	thumb_func_start ovy66_21e5898
ovy66_21e5898: ; 0x021E5898
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02154910
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02154910
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02154910
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #0
	bl sub_0215517C
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	bl sub_02167A14
	add r5, r0, #0
	bne _021E58E0
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E58E0:
	add r7, sp, #0
	mov r1, #0
	str r1, [r7]
	str r1, [r7, #4]
	str r1, [r7, #8]
	add r1, r7, #0
	bl sub_021672F8
	ldr r1, [sp]
	lsl r0, r6, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #8]
	lsl r0, r4, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02167308
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy66_21e5898

	thumb_func_start ovy66_21e5910
ovy66_21e5910: ; 0x021E5910
	push {r4, r5, r6, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r5, r0, #0
	bl sub_02046E10
	add r4, r0, #0
	bl sub_02046E1C
	add r6, r0, #0
	bl sub_021805E0
	add r0, r4, #0
	bl sub_02046D38
	add r0, r6, #0
	bl sub_02046DC0
	add r0, r5, #0
	bl sub_021805F0
	ldr r4, _021E5974 ; =0x0400006C
	mov r1, #0
	add r0, r4, #0
	bl sub_02074970
	mov r5, #0x3d
	sub r4, #0x1c
	sub r5, #0x4d
	add r0, r4, #0
	mov r1, #0x3d
	add r2, r5, #0
	bl sub_02074A88
	ldr r4, _021E5978 ; =0x0400106C
	mov r1, #0
	add r0, r4, #0
	bl sub_02074970
	sub r4, #0x1c
	add r0, r4, #0
	mov r1, #0x3f
	add r2, r5, #0
	bl sub_02074A88
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E5974: .word 0x0400006C
_021E5978: .word 0x0400106C
	thumb_func_end ovy66_21e5910

	thumb_func_start ovy66_21e597c
ovy66_21e597c: ; 0x021E597C
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EED04
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy66_21e597c

	thumb_func_start ovy66_21e598c
ovy66_21e598c: ; 0x021E598C
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EED08
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy66_21e598c

	thumb_func_start ovy66_21e599c
ovy66_21e599c: ; 0x021E599C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_021804C0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02180578
	add r4, r0, #0
	ldr r2, _021E59F0 ; =ovy66_21e59f4
	add r0, r7, #0
	mov r1, #8
	bl sub_021C0870
	add r6, r0, #0
	bl sub_021C08CC
	str r5, [r0]
	mov r1, #0x7f
	str r1, [r0, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_021C09E4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E59F0: .word ovy66_21e59f4
	thumb_func_end ovy66_21e599c

	thumb_func_start ovy66_21e59f4
ovy66_21e59f4: ; 0x021E59F4
	push {r4, lr}
	ldr r1, [r0, #4]
	sub r4, r1, #2
	str r4, [r0, #4]
	ldr r0, [r0]
	bpl _021E5A0C
	bl sub_020061B8
	bl sub_02006268
	mov r0, #1
	pop {r4, pc}
_021E5A0C:
	bl sub_020061B8
	add r1, r4, #0
	bl sub_0200632C
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy66_21e59f4

	thumb_func_start ovy66_21e5a1c
ovy66_21e5a1c: ; 0x021E5A1C
	push {r3, lr}
	add r0, r1, #0
	bl sub_0215516C
	bl sub_021EED44
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ovy66_21e5a1c

	thumb_func_start ovy66_21e5a2c
ovy66_21e5a2c: ; 0x021E5A2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EED78
	add r1, r0, #0
	bne _021E5A4A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5A4A:
	add r0, r4, #0
	bl sub_02153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy66_21e5a2c

	thumb_func_start ovy66_21e5a54
ovy66_21e5a54: ; 0x021E5A54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0215516C
	str r0, [sp, #0xc]
	bl sub_02016AF0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl sub_021804B8
	ldr r1, [sp, #0x18]
	bl sub_02167A14
	cmp r0, #0
	beq _021E5AC4
	add r1, sp, #0x28
	bl sub_021672F8
_021E5AC4:
	ldr r0, [sp, #8]
	mov r1, #2
	lsl r0, r0, #0x10
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	add r2, sp, #0x1c
	lsl r0, r0, #0xf
	str r0, [sp, #0x20]
	lsl r0, r7, #0x10
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x28
	lsl r3, r6, #0xf
	str r4, [sp]
	bl sub_021EEF30
	add r1, r0, #0
	bne _021E5AF4
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E5AF4:
	ldr r0, [sp, #0x10]
	bl sub_02153880
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy66_21e5a54

	thumb_func_start ovy66_21e5b00
ovy66_21e5b00: ; 0x021E5B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	mov r1, #2
	lsl r1, r1, #0xe
	lsl r0, r0, #0x10
	lsl r2, r6, #0x10
	add r0, r0, r1
	add r2, r2, r1
	str r0, [sp, #0xc]
	str r2, [sp, #4]
	lsl r2, r7, #0xf
	ldr r0, [sp]
	add r1, sp, #4
	str r2, [sp, #8]
	bl sub_021EF004
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy66_21e5b00

	thumb_func_start ovy66_21e5b50
ovy66_21e5b50: ; 0x021E5B50
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EF09C
	add r1, r0, #0
	bne _021E5B6E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5B6E:
	add r0, r4, #0
	bl sub_02153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy66_21e5b50

	thumb_func_start ovy66_21e5b78
ovy66_21e5b78: ; 0x021E5B78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EF080
	add r1, r0, #0
	bne _021E5B96
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5B96:
	add r0, r4, #0
	bl sub_02153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy66_21e5b78
_021E5BA0:
	.byte 0x7D, 0x59, 0x1E, 0x02, 0x01, 0x58, 0x1E, 0x02, 0x21, 0x58, 0x1E, 0x02, 0x41, 0x58, 0x1E, 0x02
	.byte 0x61, 0x58, 0x1E, 0x02, 0x89, 0x58, 0x1E, 0x02, 0x99, 0x58, 0x1E, 0x02, 0x11, 0x59, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x8D, 0x59, 0x1E, 0x02, 0x9D, 0x59, 0x1E, 0x02, 0x1D, 0x5A, 0x1E, 0x02
	.byte 0x2D, 0x5A, 0x1E, 0x02, 0x55, 0x5A, 0x1E, 0x02, 0x01, 0x5B, 0x1E, 0x02, 0x51, 0x5B, 0x1E, 0x02
	.byte 0x79, 0x5B, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E5BA0
