	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_020723D0
sub_020723D0: ; 0x020723D0
	stmia r0!, {r1}
	mov r1, #0
	str r2, [r0, #8]
	mov r2, #0
	stmia r0!, {r1, r2}
	bx lr
	thumb_func_end sub_020723D0

	thumb_func_start sub_020723DC
sub_020723DC: ; 0x020723DC
	str r2, [r0]
	str r1, [r0, #4]
	neg r1, r1
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	thumb_func_end sub_020723DC

	thumb_func_start sub_020723E8
sub_020723E8: ; 0x020723E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	asr r0, r2, #0x1f
	add r7, r2, #0
	str r0, [sp]
	add r4, r1, #0
	ldr r2, [r5]
	add r6, r3, #0
	ldr r1, [sp]
	add r0, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r5, #4]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r4]
	ldr r1, [sp]
	add r0, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r5, #8]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r7, r6, #0x1f
	str r0, [r4, #4]
	add r0, r6, #0
	add r1, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [r5, #0xc]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #8]
	add r0, r6, #0
	add r1, r7, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020723E8

