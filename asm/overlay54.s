    .include "macros/function.inc"
	.include "overlay54.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy54_21e5800
ovy54_21e5800: ; 0x021E5800
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AF0
	bl sub_02180564
	add r1, r0, #0
	ldr r0, _021E5828 ; =0x0000007E
	ldr r2, _021E582C ; =0x021EEEC0
	bl sub_021B437C
	mov r0, #0
	pop {r4, pc}
	nop
_021E5828: .word 0x0000007E
_021E582C: .word 0x021EEEC0
	thumb_func_end ovy54_21e5800

	thumb_func_start ovy54_21e5830
ovy54_21e5830: ; 0x021E5830
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r0, r4, #0
	bl sub_0215516C
	bl sub_02016AD8
	bl sub_02017934
	bl sub_02008F00
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021548E8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_020090F4
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy54_21e5830
_021E5868:
	.byte 0x01, 0x58, 0x1E, 0x02, 0x31, 0x58, 0x1E, 0x02
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E5868
