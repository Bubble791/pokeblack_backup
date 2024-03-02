    .include "macros/function.inc"
	.include "overlay153.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy153_21f6200
ovy153_21f6200: ; 0x021F6200
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _021F6230 ; =0x021F62E4
	add r3, sp, #0
	add r4, r0, #0
	add r2, r1, #0
	ldmia r6!, {r0, r1}
	add r5, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	add r0, r2, #0
	bl sub_021812A8
	bl sub_021C5EA0
	ldr r2, _021F6234 ; =ovy153_21f623c
	ldr r3, _021F6238 ; =0x021F5FAD
	add r0, r4, #0
	add r1, r5, #0
	bl sub_021F59E0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021F6230: .word 0x021F62E4
_021F6234: .word ovy153_21f623c
_021F6238: .word 0x021F5FAD
	thumb_func_end ovy153_21f6200

	thumb_func_start ovy153_21f623c
ovy153_21f623c: ; 0x021F623C
	push {lr}
	sub sp, #0x14
	mov r1, #2
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _021F6260 ; =ovy153_21f6268
	mov r2, #1
	str r1, [sp, #0xc]
	ldr r1, _021F6264 ; =0x021F62C5
	str r1, [sp, #0x10]
	add r1, sp, #0
	bl sub_021F5DA0
	add sp, #0x14
	pop {pc}
	nop
_021F6260: .word ovy153_21f6268
_021F6264: .word 0x021F62C5
	thumb_func_end ovy153_21f623c

	thumb_func_start ovy153_21f6268
ovy153_21f6268: ; 0x021F6268
	push {r4, r5, r6, r7}
	mov r6, #3
	lsl r6, r6, #0xc
	add r1, r6, #0
	add r1, #8
	add r3, r0, r6
	ldrh r1, [r0, r1]
	ldr r2, [r3]
	cmp r2, r1
	bge _021F62BE
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _021F62BA
	add r1, r6, #0
	add r1, #0xa
	ldrh r1, [r0, r1]
	mov r4, #0
	cmp r1, #0
	ble _021F62AC
	add r5, r6, #0
	mov r2, #1
	add r5, #8
	add r6, #0xa
_021F6296:
	ldrh r7, [r0, r5]
	ldr r1, [r3]
	mul r7, r4
	add r1, r1, r7
	lsl r1, r1, #6
	add r1, r0, r1
	str r2, [r1, #0x34]
	ldrh r1, [r0, r6]
	add r4, r4, #1
	cmp r4, r1
	blt _021F6296
_021F62AC:
	ldr r0, [r3]
	add r0, r0, #1
	str r0, [r3]
	mov r0, #1
	str r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_021F62BA:
	sub r0, r1, #1
	str r0, [r3, #4]
_021F62BE:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ovy153_21f6268
_021F62C4:
	.byte 0x03, 0x6B, 0x40, 0x2B, 0x07, 0xDA, 0x02, 0x21, 0xC2, 0x69, 0x09, 0x02
	.byte 0x51, 0x18, 0xC1, 0x61, 0x59, 0x1C, 0x01, 0x63, 0x01, 0xE0, 0x01, 0x21, 0x81, 0x63, 0x80, 0x6B
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x10, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F62C4
