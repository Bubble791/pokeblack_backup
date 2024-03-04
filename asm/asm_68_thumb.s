	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_02076F74
sub_02076F74: ; 0x02076F74
	ldr r0, _02076FA0 ; =0x0214C08C
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	ldr r0, _02076FA4 ; =0x04000240
	str r1, [r0]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strh r1, [r0, #8]
	bx lr
	.align 2, 0
_02076FA0: .word 0x0214C08C
_02076FA4: .word 0x04000240
	thumb_func_end sub_02076F74

