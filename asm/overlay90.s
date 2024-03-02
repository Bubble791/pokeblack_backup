    .include "macros/function.inc"
	.include "overlay90.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy90_21eec80
ovy90_21eec80: ; 0x021EEC80
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #2
	bl sub_0200BAC4
	strh r4, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy90_21eec80

	thumb_func_start ovy90_21eec98
ovy90_21eec98: ; 0x021EEC98
	push {r3, lr}
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #0xa
	bl sub_0200BAC4
	mov r3, #0
	strb r3, [r0, #1]
	mov r1, #2
	strb r1, [r0]
	add r2, r3, #0
_021EECB2:
	lsl r1, r3, #2
	add r1, r0, r1
	add r3, r3, #1
	str r2, [r1, #4]
	cmp r3, #5
	blt _021EECB2
	pop {r3, pc}
	thumb_func_end ovy90_21eec98

	thumb_func_start ovy90_21eecc0
ovy90_21eecc0: ; 0x021EECC0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #0x30
	bl sub_0200BAC4
	cmp r5, #0
	beq _021EECDC
	mov r1, #1
	strh r1, [r0, #0x14]
_021EECDC:
	cmp r4, #0
	beq _021EECE4
	mov r1, #1
	strh r1, [r0, #0x16]
_021EECE4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy90_21eecc0
_021EECE8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EECE8
