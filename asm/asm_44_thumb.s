	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text


	thumb_func_start sub_02073FB4
sub_02073FB4: ; 0x02073FB4
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r1]
	add r3, r4, r3
	str r3, [r2]
	ldr r4, [r0, #4]
	ldr r3, [r1, #4]
	add r3, r4, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r3, r0
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02073FB4

	thumb_func_start sub_02073FD4
sub_02073FD4: ; 0x02073FD4
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r1]
	sub r3, r4, r3
	str r3, [r2]
	ldr r4, [r0, #4]
	ldr r3, [r1, #4]
	sub r3, r4, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	sub r0, r3, r0
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end sub_02073FD4

	thumb_func_start sub_02073FF4
sub_02073FF4: ; 0x02073FF4
	push {r3, r4}
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldrsh r3, [r1, r3]
	add r3, r4, r3
	strh r3, [r2]
	mov r3, #2
	ldrsh r4, [r0, r3]
	ldrsh r3, [r1, r3]
	add r3, r4, r3
	strh r3, [r2, #2]
	mov r3, #4
	ldrsh r4, [r0, r3]
	ldrsh r0, [r1, r3]
	add r0, r4, r0
	strh r0, [r2, #4]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02073FF4

