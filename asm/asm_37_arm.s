	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_020724C0
sub_020724C0: ; 0x020724C0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r6, [r0]
	ldr r5, [r0, #4]
	smull r8, r7, r2, r6
	ldr r4, [r0, #8]
	ldr ip, [r0, #0xc]
	smull fp, r4, r2, r4
	str r4, [sp]
	ldr sl, [r0, #0x10]
	smull r6, r5, r2, r5
	smull r4, lr, r3, ip
	ldr sb, [r0, #0x14]
	smull ip, r2, r3, sl
	smull sl, sb, r3, sb
	mov r3, r8, lsr #0xc
	orr r3, r3, r7, lsl #20
	mov r7, r6, lsr #0xc
	orr r7, r7, r5, lsl #20
	mov r8, ip, lsr #0xc
	orr r8, r8, r2, lsl #20
	str r3, [r1]
	mov r3, r4, lsr #0xc
	str r7, [r1, #4]
	mov r4, sl, lsr #0xc
	orr r3, r3, lr, lsl #20
	orr r4, r4, sb, lsl #20
	ldr r5, [sp]
	mov r6, fp, lsr #0xc
	orr r6, r6, r5, lsl #20
	ldr r2, [sp, #0x28]
	ldr r7, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	str r6, [r1, #8]
	ldr r0, [r0, #0x20]
	str r3, [r1, #0xc]
	smull sb, r7, r2, r7
	str r8, [r1, #0x10]
	mov r8, sb, lsr #0xc
	orr r8, r8, r7, lsl #20
	smull r6, r5, r2, r5
	smull r3, r0, r2, r0
	str r4, [r1, #0x14]
	mov r4, r6, lsr #0xc
	mov r2, r3, lsr #0xc
	orr r4, r4, r5, lsl #20
	orr r2, r2, r0, lsl #20
	str r8, [r1, #0x18]
	str r4, [r1, #0x1c]
	str r2, [r1, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_020724C0

