    .include "macros/function.inc"
	.include "overlay95.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy95_21eec80
ovy95_21eec80: ; 0x021EEC80
	push {r4, lr}
	add r4, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #4
	bl sub_0200BAC4
	add r0, r4, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r3, #4
	bl ovy36_2180ff0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy95_21eec80
_021EECAC:
	.byte 0x01, 0x4B, 0x01, 0x21
	.byte 0x18, 0x47, 0xC0, 0x46, 0x2D, 0x10, 0x18, 0x02, 0x70, 0x47, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EECAC
