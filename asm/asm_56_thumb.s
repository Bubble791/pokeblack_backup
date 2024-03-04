	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02075100
sub_02075100: ; 0x02075100
	ldr r2, _02075128 ; =0x04000008
	mov r0, #0x1f
	ldrh r1, [r2]
	lsl r0, r0, #8
	sub r2, #8
	and r0, r1
	mov r1, #0xe
	ldr r2, [r2]
	lsl r1, r1, #0x1a
	and r1, r2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0x10
	mov r1, #6
	asr r0, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0xb
	add r1, r2, r1
	add r0, r0, r1
	bx lr
	nop
_02075128: .word 0x04000008
	thumb_func_end sub_02075100

	thumb_func_start sub_0207512C
sub_0207512C: ; 0x0207512C
	ldr r0, _02075144 ; =0x04001008
	ldrh r1, [r0]
	mov r0, #0x1f
	lsl r0, r0, #8
	and r0, r1
	asr r0, r0, #8
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
	nop
_02075144: .word 0x04001008
	thumb_func_end sub_0207512C

	thumb_func_start sub_02075148
sub_02075148: ; 0x02075148
	ldr r2, _02075170 ; =0x0400000A
	mov r0, #0x1f
	ldrh r1, [r2]
	lsl r0, r0, #8
	sub r2, #0xa
	and r0, r1
	mov r1, #0xe
	ldr r2, [r2]
	lsl r1, r1, #0x1a
	and r1, r2
	lsr r1, r1, #0x1b
	lsl r2, r1, #0x10
	mov r1, #6
	asr r0, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0xb
	add r1, r2, r1
	add r0, r0, r1
	bx lr
	nop
_02075170: .word 0x0400000A
	thumb_func_end sub_02075148

	thumb_func_start sub_02075174
sub_02075174: ; 0x02075174
	ldr r0, _0207518C ; =0x0400100A
	ldrh r1, [r0]
	mov r0, #0x1f
	lsl r0, r0, #8
	and r0, r1
	asr r0, r0, #8
	lsl r1, r0, #0xb
	mov r0, #0x62
	lsl r0, r0, #0x14
	add r0, r1, r0
	bx lr
	nop
_0207518C: .word 0x0400100A
	thumb_func_end sub_02075174

