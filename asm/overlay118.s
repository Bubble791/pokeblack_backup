    .include "macros/function.inc"
	.include "overlay118.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy118_21eec80
ovy118_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #8
	bl sub_02180FF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0218056C
	str r0, [r4]
	add r0, r4, #0
	str r5, [r4, #4]
	bl ovy118_21eecdc
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy118_21eec80

	thumb_func_start ovy118_21eecb4
ovy118_21eecb4: ; 0x021EECB4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EED80
	add r0, r4, #0
	mov r1, #1
	bl sub_0218102C
	pop {r4, pc}
	thumb_func_end ovy118_21eecb4

	thumb_func_start ovy118_21eeccc
ovy118_21eeccc: ; 0x021EECCC
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl sub_021EED8C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy118_21eeccc

	thumb_func_start ovy118_21eecdc
ovy118_21eecdc: ; 0x021EECDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EED7C ; =0x021EED98
	mov r2, #0
	mov r4, #0
	bl sub_021B8598
	add r7, sp, #4
	add r0, sp, #0
	mov r1, #0x4a
	str r4, [r7, #4]
	str r4, [r7, #0x10]
	strh r4, [r0]
	strh r4, [r0, #2]
	mov r0, #0x4e
	str r4, [r7, #8]
	lsl r0, r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0xa6
	str r4, [r7]
	lsl r1, r1, #0xe
	str r4, [r7, #0xc]
	str r4, [r7, #0x14]
	lsl r0, r0, #0xe
	str r0, [sp, #0x18]
	add r0, sp, #0
	str r1, [sp, #4]
	str r1, [sp, #0x10]
	mov r1, #2
	strh r4, [r0]
	lsl r1, r1, #0xe
	str r4, [sp, #8]
	str r4, [sp, #0x14]
	strh r1, [r0, #2]
	add r6, r4, #0
_021EED26:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	add r3, r0, #0
	mov r0, #0xc
	mul r0, r4
	add r1, r7, r0
	ldr r0, [r7, r0]
	ldr r2, [r1, #8]
	str r0, [r3]
	ldr r1, [r1, #4]
	add r0, r6, #0
	str r1, [r3, #4]
	str r2, [r3, #8]
	lsl r2, r4, #1
	add r1, sp, #0
	ldrh r1, [r1, r2]
	add r2, r6, #0
	add r3, #0x18
	bl sub_020507D4
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8248
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_021B8258
	add r4, r4, #1
	cmp r4, #2
	blt _021EED26
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EED7C: .word 0x021EED98
	thumb_func_end ovy118_21eecdc

	thumb_func_start sub_021EED80
sub_021EED80: ; 0x021EED80
	ldr r0, [r0]
	ldr r3, _021EED88 ; =sub_021B81BC
	mov r1, #0
	bx r3
	.align 2, 0
_021EED88: .word sub_021B81BC
	thumb_func_end sub_021EED80

	thumb_func_start sub_021EED8C
sub_021EED8C: ; 0x021EED8C
	ldr r0, [r0]
	ldr r3, _021EED94 ; =sub_021B83B4
	bx r3
	nop
_021EED94: .word sub_021B83B4
	thumb_func_end sub_021EED8C
_021EED98:
	.byte 0xA8, 0xED, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xC0, 0xED, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EED98
