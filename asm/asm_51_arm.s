	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_020749CC
sub_020749CC: ; 0x020749CC
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
	arm_func_end sub_020749CC

