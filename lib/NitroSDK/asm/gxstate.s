	.include "asm/macros.inc"
	.include "gxstate.inc"
	.include "global.inc"

	.bss

	.public gGXState
gGXState:
	.space 0x1A

	.text

	thumb_func_start GX_InitGXState
GX_InitGXState: ; 0x02076F74
	ldr r0, _02076FA0 ; =gGXState
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
_02076FA0: .word gGXState
_02076FA4: .word 0x04000240
	thumb_func_end GX_InitGXState
