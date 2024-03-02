    .include "macros/function.inc"
	.include "overlay74.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy74_21e90c0
ovy74_21e90c0: ; 0x021E90C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02199A00
	cmp r0, #0
	beq _021E90D2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E90D2:
	add r0, r5, #0
	bl sub_021997E4
	mov r1, #0
	str r1, [r0]
	add r0, r5, #0
	bl sub_02199A14
	cmp r0, #0
	beq _021E90FE
	add r0, r5, #0
	bl sub_02199A2C
	add r0, r5, #0
	bl sub_02199A38
	add r1, r0, #0
	ldr r2, _021E9104 ; =0x00007FFF
	add r0, r5, #0
	add r3, r4, #0
	bl sub_0219990C
_021E90FE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E9104: .word 0x00007FFF
	thumb_func_end ovy74_21e90c0

	thumb_func_start ovy74_21e9108
ovy74_21e9108: ; 0x021E9108
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021997E4
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	bne _021E915E
	add r0, r5, #0
	bl sub_02199A14
	cmp r0, #0
	beq _021E9140
	add r0, r5, #0
	bl sub_02199A2C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02199A38
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0xa0
	str r4, [sp]
	bl sub_02199958
_021E9140:
	add r0, r5, #0
	bl sub_02199A20
	cmp r0, #0
	beq _021E915A
	add r0, r5, #0
	bl sub_02199A44
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x51
	bl sub_02199734
_021E915A:
	mov r0, #1
	str r0, [r6]
_021E915E:
	add r0, r5, #0
	bl sub_021999DC
	cmp r0, #0
	beq _021E916C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E916C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy74_21e9108

	thumb_func_start ovy74_21e9170
ovy74_21e9170: ; 0x021E9170
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02199A14
	cmp r0, #0
	beq _021E9198
	add r0, r5, #0
	bl sub_02199A2C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02199A38
	add r1, r0, #0
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0219990C
_021E9198:
	add r0, r5, #0
	bl sub_02199A20
	cmp r0, #0
	beq _021E91B2
	add r0, r5, #0
	bl sub_02199A44
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x51
	bl sub_02199740
_021E91B2:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy74_21e9170
_021E91B8:
	.byte 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy74_21e91bc
ovy74_21e91bc: ; 0x021E91BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02199A14
	cmp r0, #0
	beq _021E91D6
	ldr r1, _021E91DC ; =0x00007FFF
	add r0, r5, #0
	mov r2, #0x50
	add r3, r4, #0
	bl sub_021999BC
_021E91D6:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E91DC: .word 0x00007FFF
	thumb_func_end ovy74_21e91bc

	thumb_func_start ovy74_21e91e0
ovy74_21e91e0: ; 0x021E91E0
	push {r3, lr}
	bl sub_021999DC
	cmp r0, #0
	beq _021E91EE
	mov r0, #1
	pop {r3, pc}
_021E91EE:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy74_21e91e0

	thumb_func_start ovy74_21e91f4
ovy74_21e91f4: ; 0x021E91F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02199A14
	cmp r0, #0
	beq _021E920A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199948
_021E920A:
	add r0, r5, #0
	bl sub_02199A20
	cmp r0, #0
	beq _021E921C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219974C
_021E921C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy74_21e91f4
_021E9220:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xC1, 0x90, 0x1E, 0x02
	.byte 0x09, 0x91, 0x1E, 0x02, 0x71, 0x91, 0x1E, 0x02, 0xB9, 0x91, 0x1E, 0x02, 0xBD, 0x91, 0x1E, 0x02
	.byte 0xE1, 0x91, 0x1E, 0x02, 0xF5, 0x91, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021E9220
