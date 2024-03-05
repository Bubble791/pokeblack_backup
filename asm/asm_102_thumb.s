	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	thumb_func_start sub_0207E958
sub_0207E958: ; 0x0207E958
	push {r3, lr}
	bl OSi_IsCodecTwlMode
	cmp r0, #1
	bne _0207E968
	blx sub_0207E970
	pop {r3, pc}
_0207E968:
	bl sub_0207E8D4
	pop {r3, pc}
	nop
	thumb_func_end sub_0207E958

