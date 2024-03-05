	.include "asm/macros.inc"
	.include "g2.inc"
	.include "global.inc"

	.text

	arm_func_start G2x_SetBGyAffine_
G2x_SetBGyAffine_: ; 0x020749CC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [sp, #0x1c]
	ldr r5, [r1, #4]
	sub r8, r4, r3
	ldr lr, [r1, #0xc]
	mul r7, r5, r8
	ldr r4, [sp, #0x18]
	ldr r6, [r1]
	sub ip, r4, r2
	ldr r4, [r1, #8]
	mul r8, lr, r8
	mov r5, r5, lsl #0xc
	mla r1, r6, ip, r7
	mov r7, r5, asr #0x10
	mov lr, lr, lsl #0xc
	mla ip, r4, ip, r8
	mov r5, r6, lsl #0xc
	mov r6, r7, lsl #0x10
	mov r7, lr, asr #0x10
	mov r5, r5, asr #0x10
	mov lr, r6, lsr #0x10
	mov r4, r4, lsl #0xc
	mov r6, r7, lsl #0x10
	mov r7, r4, asr #0x10
	mov r4, r6, lsr #0x10
	add r2, r1, r2, lsl #12
	add r3, ip, r3, lsl #12
	mov r1, r5, lsl #0x10
	mov r5, lr, lsl #0x10
	orr r5, r5, r1, lsr #16
	mov r1, r7, lsl #0x10
	mov r4, r4, lsl #0x10
	str r5, [r0]
	orr r1, r4, r1, lsr #16
	str r1, [r0, #4]
	mov r1, r2, asr #4
	str r1, [r0, #8]
	mov r1, r3, asr #4
	str r1, [r0, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end G2x_SetBGyAffine_

	thumb_func_start G2x_SetBlendAlpha_
G2x_SetBlendAlpha_: ; 0x02074A6C
	push {r3, r4}
	mov r4, #0x40
	orr r4, r1
	lsl r1, r2, #8
	add r2, r4, #0
	orr r2, r1
	ldr r1, [sp, #8]
	lsl r1, r1, #8
	orr r1, r3
	lsl r1, r1, #0x10
	orr r1, r2
	str r1, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end G2x_SetBlendAlpha_

	thumb_func_start G2x_SetBlendBrightness_
G2x_SetBlendBrightness_: ; 0x02074A88
	cmp r2, #0
	bge _02074A98
	mov r3, #0xc0
	orr r1, r3
	strh r1, [r0]
	neg r1, r2
	strh r1, [r0, #4]
	bx lr
_02074A98:
	mov r3, #0x80
	orr r1, r3
	strh r1, [r0]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end G2x_SetBlendBrightness_

	thumb_func_start G2x_SetBlendBrightnessExt_
G2x_SetBlendBrightnessExt_: ; 0x02074AA4
	push {r3, r4}
	ldr r4, [sp, #8]
	lsl r4, r4, #8
	orr r3, r4
	strh r3, [r0, #2]
	ldr r3, [sp, #0xc]
	cmp r3, #0
	bge _02074AC6
	mov r4, #0xc0
	orr r4, r1
	lsl r1, r2, #8
	orr r1, r4
	strh r1, [r0]
	neg r1, r3
	strh r1, [r0, #4]
	pop {r3, r4}
	bx lr
_02074AC6:
	mov r4, #0x80
	orr r4, r1
	lsl r1, r2, #8
	orr r1, r4
	strh r1, [r0]
	strh r3, [r0, #4]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end G2x_SetBlendBrightnessExt_

	thumb_func_start G2x_ChangeBlendBrightness_
G2x_ChangeBlendBrightness_: ; 0x02074AD8
	push {r3, r4}
	ldrh r2, [r0]
	cmp r1, #0
	bge _02074AFA
	mov r4, #0xc0
	add r3, r2, #0
	and r3, r4
	cmp r3, #0x80
	bne _02074AF2
	mov r3, #0xc0
	bic r2, r3
	orr r2, r4
	strh r2, [r0]
_02074AF2:
	neg r1, r1
	strh r1, [r0, #4]
	pop {r3, r4}
	bx lr
_02074AFA:
	mov r3, #0xc0
	and r3, r2
	cmp r3, #0xc0
	bne _02074B0C
	mov r3, #0xc0
	bic r2, r3
	mov r3, #0x80
	orr r2, r3
	strh r2, [r0]
_02074B0C:
	strh r1, [r0, #4]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end G2x_ChangeBlendBrightness_
