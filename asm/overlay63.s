    .include "macros/function.inc"
	.include "overlay63.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy63_21e5800
ovy63_21e5800: ; 0x021E5800
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0215516C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy12_2154910
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r7, #0
	bl sub_021EF020
	add r1, r0, #0
	bne _021E5830
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5830:
	add r0, r6, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy63_21e5800

	thumb_func_start ovy63_21e583c
ovy63_21e583c: ; 0x021E583C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl sub_02155184
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0215516C
	bl sub_021EF250
	add r1, r0, #0
	bne _021E585A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E585A:
	add r0, r4, #0
	bl ovy12_2153880
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy63_21e583c
_021E5864:
	.byte 0x01, 0x58, 0x1E, 0x02, 0x3D, 0x58, 0x1E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E5864
