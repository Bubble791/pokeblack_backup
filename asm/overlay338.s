    .include "macros/function.inc"
	.include "overlay338.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy338_217c940
ovy338_217c940: ; 0x0217C940
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0217CA10 ; =0x0217CB50
	ldr r0, _0217CA14 ; =0x0217cb40
	add r1, sp, #0
	str r2, [r0, #4]
	str r1, [r0, #8]
	mov r0, #8
	ldr r4, _0217CA18 ; =0x0217CB20
	strb r0, [r2]
	ldrh r0, [r4]
	bl CARD_LockBackup
	ldrh r0, [r4]
	bl OS_LockCard
	bl OS_GetTick
	add r6, r0, #0
	add r5, r1, #0
	mov r7, #0x40
	mov r4, #0
_0217C96A:
	bl OS_GetTick
	sub r0, r0, r6
	sbc r1, r5
	add r2, r7, #0
	add r3, r4, #0
	blx sub_0208D60C
	mov r2, #0xfa
	lsl r2, r2, #2
	add r3, r4, #0
	blx sub_0208D60C
	ldr r2, _0217CA1C ; =0x000082EA
	add r3, r4, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x3c
	sub r0, r2, r0
	sbc r3, r1
	blo _0217C96A
	bl sub_0217CA24
	mov r0, #0x42
	bl sub_0217CA34
	ldr r0, _0217CA20 ; =0x0217cb40
	bl ovy338_217ca44
	add r1, sp, #0
	strb r0, [r1]
	bl OS_GetTick
	add r6, r0, #0
	add r5, r1, #0
	mov r7, #0x40
	mov r4, #0
_0217C9BA:
	bl OS_GetTick
	sub r0, r0, r6
	sbc r1, r5
	add r2, r7, #0
	add r3, r4, #0
	blx sub_0208D60C
	mov r2, #0xfa
	lsl r2, r2, #2
	add r3, r4, #0
	blx sub_0208D60C
	ldr r2, _0217CA1C ; =0x000082EA
	add r3, r4, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x3c
	sub r0, r2, r0
	sbc r3, r1
	blo _0217C9BA
	mov r0, #2
	bl sub_0217CA34
	ldr r0, _0217CA20 ; =0x0217cb40
	bl ovy338_217caa4
	bl sub_0217CA24
	ldr r4, _0217CA18 ; =0x0217CB20
	ldrh r0, [r4]
	bl sub_0207A1A0
	ldrh r0, [r4]
	bl CARD_UnlockBackup
	add r0, sp, #0
	ldrb r0, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217CA10: .word 0x0217CB50
_0217CA14: .word 0x0217cb40
_0217CA18: .word 0x0217CB20
_0217CA1C: .word 0x000082EA
_0217CA20: .word 0x0217cb40
	thumb_func_end ovy338_217c940

	thumb_func_start sub_0217CA24
sub_0217CA24: ; 0x0217CA24
	ldr r2, _0217CA30 ; =0x040001A0
	mov r0, #0x80
_0217CA28:
	ldrh r1, [r2]
	tst r1, r0
	bne _0217CA28
	bx lr
	.align 2, 0
_0217CA30: .word 0x040001A0
	thumb_func_end sub_0217CA24

	thumb_func_start sub_0217CA34
sub_0217CA34: ; 0x0217CA34
	mov r1, #0xa
	lsl r1, r1, #0xc
	orr r1, r0
	ldr r0, _0217CA40 ; =0x040001A0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0217CA40: .word 0x040001A0
	thumb_func_end sub_0217CA34

	thumb_func_start ovy338_217ca44
ovy338_217ca44: ; 0x0217CA44
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl OS_GetTick
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0
_0217CA52:
	bl OS_GetTick
	sub r0, r0, r4
	sbc r1, r5
	mov r2, #0xfa
	lsl r2, r2, #8
	add r3, r6, #0
	blx sub_0208D60C
	ldr r2, _0217CA9C ; =0x000082EA
	add r3, r6, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x32
	sub r0, r2, r0
	sbc r3, r1
	blo _0217CA52
	ldr r0, [r7, #4]
	ldr r4, _0217CAA0 ; =0x040001A2
	ldrb r0, [r0]
	strh r0, [r4]
	ldr r0, [r7, #4]
	add r0, r0, #1
	str r0, [r7, #4]
	bl sub_0217CA24
	ldrh r1, [r4]
	add r0, sp, #0
	strh r1, [r0]
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0217CA9C: .word 0x000082EA
_0217CAA0: .word 0x040001A2
	thumb_func_end ovy338_217ca44

	thumb_func_start ovy338_217caa4
ovy338_217caa4: ; 0x0217CAA4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl OS_GetTick
	add r4, r0, #0
	add r5, r1, #0
	mov r6, #0
_0217CAB2:
	bl OS_GetTick
	sub r0, r0, r4
	sbc r1, r5
	mov r2, #0xfa
	lsl r2, r2, #8
	add r3, r6, #0
	blx sub_0208D60C
	ldr r2, _0217CAF0 ; =0x000082EA
	add r3, r6, #0
	blx sub_0208D5C4
	add r2, r0, #0
	add r3, r1, #0
	mov r1, #0
	mov r0, #0x32
	sub r0, r2, r0
	sbc r3, r1
	blo _0217CAB2
	ldr r4, _0217CAF4 ; =0x040001A2
	strh r6, [r4]
	bl sub_0217CA24
	ldrh r1, [r4]
	ldr r0, [r7, #8]
	strb r1, [r0]
	ldr r0, [r7, #8]
	add r0, r0, #1
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0217CAF0: .word 0x000082EA
_0217CAF4: .word 0x040001A2
	thumb_func_end ovy338_217caa4

	thumb_func_start ovy338_217caf8
ovy338_217caf8: ; 0x0217CAF8
	push {r3, lr}
	bl ovy338_217c940
	bl ovy338_217c940
	cmp r0, #0xaa
	bne _0217CB0A
	mov r0, #1
	pop {r3, pc}
_0217CB0A:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy338_217caf8
_0217CB10:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0217CB10
