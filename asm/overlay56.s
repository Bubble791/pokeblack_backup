    .include "macros/function.inc"
	.include "overlay56.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy56_21e75c0
ovy56_21e75c0: ; 0x021E75C0
	push {r3, lr}
	bl sub_02155174
	bl sub_02017934
	mov r1, #0x39
	bl sub_02007448
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy56_21e75c0

	thumb_func_start ovy56_21e75d4
ovy56_21e75d4: ; 0x021E75D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021548E8
	add r6, r0, #0
	add r0, r7, #0
	bl sub_021EF978
	add r4, r0, #0
	beq _021E7618
	add r0, r5, #0
	bl ovy56_21e75c0
	add r1, r4, #0
	bl sub_0200E318
	add r0, r5, #0
	bl sub_02155174
	bl sub_02017934
	bl sub_02009408
	mov r1, #0x21
	add r2, r4, #0
	bl sub_0200955C
_021E7618:
	strh r4, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy56_21e75d4

	thumb_func_start ovy56_21e7620
ovy56_21e7620: ; 0x021E7620
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02154910
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02155174
	add r5, r0, #0
	add r0, r7, #0
	bl sub_021E5CBC
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021E67A0
	cmp r0, #1
	bne _021E766C
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021E66DC
	cmp r0, #1
	bne _021E766C
	mov r0, #1
	b _021E766E
_021E766C:
	mov r0, #0
_021E766E:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy56_21e7620

	thumb_func_start ovy56_21e7674
ovy56_21e7674: ; 0x021E7674
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021E5800
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02155174
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021E5CA4
	add r1, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	bl sub_021E66FC
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy56_21e7674

	thumb_func_start ovy56_21e76b4
ovy56_21e76b4: ; 0x021E76B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	add r6, r0, #0
	bl sub_021E5F78
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02155174
	add r1, r0, #0
	add r0, r6, #0
	bl sub_021EFB04
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0201F268
	cmp r0, #0
	bne _021E76EA
	mov r0, #1
	b _021E76EC
_021E76EA:
	mov r0, #0
_021E76EC:
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy56_21e76b4

	thumb_func_start ovy56_21e76f4
ovy56_21e76f4: ; 0x021E76F4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	bl sub_021E5F38
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy56_21e76f4

	thumb_func_start ovy56_21e7710
ovy56_21e7710: ; 0x021E7710
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021E5800
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021E5F78
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	add r3, r4, #0
	bl sub_021AECE0
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy56_21e7710

	thumb_func_start ovy56_21e7750
ovy56_21e7750: ; 0x021E7750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021E5800
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021E5F78
	add r2, r0, #0
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r3, r5, #0
	mov r4, #1
	bl sub_021AEBF0
	add r1, r0, #0
	bne _021E77A2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E77A2:
	add r0, r7, #0
	bl sub_02153880
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy56_21e7750

	thumb_func_start ovy56_21e77b0
ovy56_21e77b0: ; 0x021E77B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_021548E8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021E5800
	add r4, r0, #0
	mov r5, #0x30
	bl sub_021E5CA4
	cmp r0, #3
	bne _021E77D0
	mov r5, #0x3c
	b _021E77FC
_021E77D0:
	add r0, r4, #0
	bl sub_021E5F38
	ldr r1, _021E7804 ; =0x021E7BA4
	mov r2, #0
_021E77DA:
	lsl r3, r2, #1
	ldrh r3, [r1, r3]
	cmp r0, r3
	bne _021E77EA
	add r0, r2, #1
	lsl r0, r0, #1
	ldrh r5, [r1, r0]
	b _021E77F0
_021E77EA:
	add r2, r2, #2
	cmp r2, #0x12
	blo _021E77DA
_021E77F0:
	add r0, r4, #0
	bl sub_021E5CA4
	cmp r0, #2
	bne _021E77FC
	add r5, r5, #4
_021E77FC:
	strh r5, [r6]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E7804: .word 0x021E7BA4
	thumb_func_end ovy56_21e77b0

	thumb_func_start ovy56_21e7808
ovy56_21e7808: ; 0x021E7808
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02155174
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02154910
	cmp r0, #3
	bhi _021E783C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7834: ; jump table
	.short _021E783C - _021E7834 - 2 ; case 0
	.short _021E7840 - _021E7834 - 2 ; case 1
	.short _021E783C - _021E7834 - 2 ; case 2
	.short _021E783C - _021E7834 - 2 ; case 3
_021E783C:
	mov r1, #0
	b _021E7842
_021E7840:
	mov r1, #1
_021E7842:
	add r0, r6, #0
	bl sub_021E5CF0
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy56_21e7808

	thumb_func_start ovy56_21e784c
ovy56_21e784c: ; 0x021E784C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02155174
	bl sub_0201736C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02155160
	bl sub_02018C80
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02154910
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021E5D14
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_021E713C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy56_21e784c

	thumb_func_start ovy56_21e7894
ovy56_21e7894: ; 0x021E7894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	bl sub_02155174
	bl sub_020179F8
	add r4, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_021548E8
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_021548E8
	str r0, [sp, #8]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_021548E8
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200FF34
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_0200FF34
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl sub_0200FF34
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_0215515C
	bl sub_021E63E0
	ldr r1, [sp, #0xc]
	mov r2, #0
	strh r2, [r1]
	ldr r1, [sp, #8]
	add r5, r0, #0
	strh r2, [r1]
	ldr r1, [sp, #4]
	strh r2, [r1]
	lsl r1, r7, #0x18
	lsr r1, r1, #0x18
	bl sub_021E6458
	cmp r0, #0
	beq _021E7926
	lsl r1, r7, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6470
	cmp r0, #3
	blt _021E7926
	lsl r1, r7, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6468
	ldr r1, [sp, #0xc]
	strh r0, [r1]
_021E7926:
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6458
	cmp r0, #0
	beq _021E7950
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6470
	cmp r0, #3
	blt _021E7950
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6468
	ldr r1, [sp, #8]
	strh r0, [r1]
_021E7950:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6458
	cmp r0, #0
	beq _021E797A
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6470
	cmp r0, #3
	blt _021E797A
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_021E6468
	ldr r1, [sp, #4]
	strh r0, [r1]
_021E797A:
	add r0, r5, #0
	bl sub_021E6438
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy56_21e7894

	thumb_func_start ovy56_21e7988
ovy56_21e7988: ; 0x021E7988
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155174
	bl sub_020179F8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02154910
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_021548E8
	lsl r1, r4, #0x18
	add r5, r0, #0
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_0200FF34
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy56_21e7988

	thumb_func_start ovy56_21e79c0
ovy56_21e79c0: ; 0x021E79C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155174
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021E5800
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_021EF9E8
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy56_21e79c0

	thumb_func_start ovy56_21e79f0
ovy56_21e79f0: ; 0x021E79F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02155174
	add r7, r0, #0
	add r0, r6, #0
	bl sub_021E5800
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02154910
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_021E5CD0
	add r0, r4, #0
	bl sub_021E5CA4
	cmp r0, #3
	bne _021E7A2C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021EFA2C
_021E7A2C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy56_21e79f0

	thumb_func_start ovy56_21e7a30
ovy56_21e7a30: ; 0x021E7A30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5800
	bl sub_021E5CD4
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy56_21e7a30

	thumb_func_start ovy56_21e7a4c
ovy56_21e7a4c: ; 0x021E7A4C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	bl sub_02153EA4
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021E5800
	add r4, r0, #0
	ldr r1, _021E7A94 ; =0x00000016
	ldr r2, _021E7A98 ; =0x0216E6E9
	add r0, r7, #0
	add r3, r4, #0
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02153880
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021E5CD8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7A94: .word 0x00000016
_021E7A98: .word 0x0216E6E9
	thumb_func_end ovy56_21e7a4c

	thumb_func_start ovy56_21e7a9c
ovy56_21e7a9c: ; 0x021E7A9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02155184
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #2
	bl sub_021E6AC8
	add r3, r0, #0
	ldr r1, _021E7AF8 ; =0x00000016
	ldr r2, _021E7AFC ; =0x0216E8F9
	add r0, r6, #0
	bl sub_02016EA0
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_02153880
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E7AF8: .word 0x00000016
_021E7AFC: .word 0x0216E8F9
	thumb_func_end ovy56_21e7a9c

	thumb_func_start ovy56_21e7b00
ovy56_21e7b00: ; 0x021E7B00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215515C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02155184
	str r0, [sp]
	add r0, r4, #0
	bl sub_02016AF0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021548E8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_021E6A64
	add r3, r0, #0
	ldr r1, _021E7B50 ; =0x00000016
	ldr r2, _021E7B54 ; =0x0216E879
	add r0, r4, #0
	bl sub_02016EA0
	add r1, r0, #0
	ldr r0, [sp]
	bl sub_02153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7B50: .word 0x00000016
_021E7B54: .word 0x0216E879
	thumb_func_end ovy56_21e7b00

	thumb_func_start ovy56_21e7b58
ovy56_21e7b58: ; 0x021E7B58
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215515C
	add r0, r4, #0
	bl sub_02155184
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02154910
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	ldr r1, _021E7B9C ; =0x00000005
	ldr r2, _021E7BA0 ; =0x0214F501
	add r0, r6, #0
	mov r3, #0
	bl sub_02016EA0
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E7B9C: .word 0x00000005
_021E7BA0: .word 0x0214F501
	thumb_func_end ovy56_21e7b58
_021E7BA4:
	.byte 0x1D, 0x00, 0x30, 0x00, 0x1E, 0x00, 0x31, 0x00, 0x1F, 0x00, 0x32, 0x00
	.byte 0x20, 0x00, 0x33, 0x00, 0x21, 0x00, 0x34, 0x00, 0x22, 0x00, 0x35, 0x00, 0x23, 0x00, 0x36, 0x00
	.byte 0x24, 0x00, 0x37, 0x00, 0x25, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E7BA4
