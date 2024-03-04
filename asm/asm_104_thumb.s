	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207EA20
sub_0207EA20: ; 0x0207EA20
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _0207EAD4 ; =0x02004100
	add r5, r0, #0
	add r7, r2, #0
	mov r0, #9
	orr r1, r3
	mov r2, #0
	mov r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207EA3E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207EA3E:
	mov r1, #1
	lsr r2, r5, #0x10
	lsl r1, r1, #0x10
	orr r1, r2
	mov r0, #9
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207EA56
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207EA56:
	lsl r1, r5, #0x10
	lsr r2, r1, #0x10
	mov r1, #1
	lsl r1, r1, #0x11
	orr r1, r2
	mov r0, #9
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207EA70
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207EA70:
	mov r1, #3
	lsr r2, r6, #0x10
	lsl r1, r1, #0x10
	orr r1, r2
	mov r0, #9
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207EA88
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207EA88:
	lsl r1, r6, #0x10
	lsr r2, r1, #0x10
	mov r1, #1
	lsl r1, r1, #0x12
	orr r1, r2
	mov r0, #9
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207EAA2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207EAA2:
	mov r1, #5
	lsr r2, r7, #0x10
	lsl r1, r1, #0x10
	orr r1, r2
	mov r0, #9
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	bge _0207EABA
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207EABA:
	lsl r1, r7, #0x10
	lsr r2, r1, #0x10
	ldr r1, _0207EAD8 ; =0x01060000
	mov r0, #9
	orr r1, r2
	add r2, r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207EAD0
	mov r4, #1
_0207EAD0:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0207EAD4: .word 0x02004100
_0207EAD8: .word 0x01060000
	thumb_func_end sub_0207EA20

	thumb_func_start sub_0207EADC
sub_0207EADC: ; 0x0207EADC
	push {r4, lr}
	ldr r1, _0207EAF4 ; =0x03004200
	mov r0, #9
	mov r2, #0
	mov r4, #0
	bl sub_0207CA6C
	cmp r0, #0
	blt _0207EAF0
	mov r4, #1
_0207EAF0:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0207EAF4: .word 0x03004200
	thumb_func_end sub_0207EADC
_0207EAF8:
	.byte 0x01, 0x49, 0x08, 0x61, 0x70, 0x47, 0xC0, 0x46
	.byte 0x20, 0xE2, 0x14, 0x02

