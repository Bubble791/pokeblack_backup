    .include "macros/function.inc"
	.include "overlay110.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy110_21eec80
ovy110_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_021804C0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0218056C
	ldr r1, _021EECC0 ; =0x021EEF60
	mov r2, #0
	bl sub_021B80B4
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #0x28
	bl sub_02180FF0
	add r5, r0, #0
	add r1, r4, #0
	bl ovy110_21eed74
	add r0, r5, #0
	add r1, r4, #0
	bl ovy110_21eeea4
	ldr r0, [r5, #4]
	mov r1, #0x7f
	bl sub_02031CF0
	pop {r3, r4, r5, pc}
	nop
_021EECC0: .word 0x021EEF60
	thumb_func_end ovy110_21eec80

	thumb_func_start ovy110_21eecc4
ovy110_21eecc4: ; 0x021EECC4
	push {r4, r5, r6, lr}
	mov r1, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_0218105C
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	bl sub_02031CF0
	add r0, r5, #0
	add r1, r6, #0
	bl ovy110_21eee70
_021EECE2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl sub_021BEC04
	add r4, r4, #1
	cmp r4, #2
	blt _021EECE2
	add r0, r6, #0
	mov r1, #0
	bl sub_0218102C
	pop {r4, r5, r6, pc}
	thumb_func_end ovy110_21eecc4

	thumb_func_start ovy110_21eecfc
ovy110_21eecfc: ; 0x021EECFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r1, #0
	mov r4, #0
	bl sub_0218105C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02180494
	bl sub_021862B4
	add r7, sp, #0xc
	add r6, r0, #0
	add r1, r7, #0
	bl sub_0204A64C
	add r0, r6, #0
	add r6, sp, #0
	add r1, r6, #0
	bl sub_0204A68C
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02031D18
	mov r6, #1
	lsl r6, r6, #0xc
_021EED38:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, [r1, #0x10]
	cmp r0, #0
	ble _021EED54
	sub r0, r0, #1
	str r0, [r1, #0x10]
	cmp r0, #0
	bgt _021EED68
	add r0, r5, #0
	add r1, r4, #0
	bl sub_021EEEFC
	b _021EED68
_021EED54:
	ldr r0, [r1, #8]
	add r1, r6, #0
	bl sub_021BEC40
	cmp r0, #0
	beq _021EED68
	add r0, r5, #0
	add r1, r4, #0
	bl ovy110_21eeed8
_021EED68:
	add r4, r4, #1
	cmp r4, #2
	blt _021EED38
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy110_21eecfc

	thumb_func_start ovy110_21eed74
ovy110_21eed74: ; 0x021EED74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #4]
	add r0, r1, #0
	bl sub_021804C0
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_0218056C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	strh r7, [r5]
	bl sub_021804BC
	bl sub_02016B1C
	bl sub_02031958
	str r0, [r5, #4]
	mov r0, #0x80
	mov r1, #1
	add r2, r7, #0
	bl sub_0204A934
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_021B8224
	add r1, r0, #0
	ldr r0, [r6, #4]
	mov r2, #8
	str r0, [sp]
	ldr r3, [r6]
	ldr r0, [sp, #4]
	lsl r3, r3, #0xc
	bl sub_021BEB70
	str r0, [sp, #0xc]
	mov r1, #0x80
	mov r2, #3
	mov r3, #0xa
	bl sub_021BEC1C
	ldr r0, [sp, #0xc]
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_0203A24C
	mov r0, #0x80
	mov r1, #2
	add r2, r7, #0
	bl sub_0204A934
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #0
	mov r2, #1
	bl sub_021B8224
	add r1, r0, #0
	ldr r0, [r6, #4]
	mov r2, #9
	str r0, [sp]
	ldr r3, [r6]
	ldr r0, [sp, #4]
	lsl r3, r3, #0xc
	bl sub_021BEB70
	mov r1, #0x80
	mov r2, #4
	mov r3, #0xa
	add r7, r0, #0
	bl sub_021BEC1C
	add r0, r6, #0
	str r7, [r5, #0xc]
	bl sub_0203A24C
	add r1, r4, #0
_021EEE1C:
	lsl r0, r4, #2
	add r0, r5, r0
	add r4, r4, #1
	str r1, [r0, #0x10]
	cmp r4, #2
	blt _021EEE1C
	add r0, r5, #0
	bl ovy110_21eee34
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy110_21eed74

	thumb_func_start ovy110_21eee34
ovy110_21eee34: ; 0x021EEE34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EEE6C ; =0x021EEF0C
	add r7, sp, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #4]
	mov r4, #0
_021EEE48:
	lsl r6, r4, #2
	ldrh r2, [r5]
	ldr r1, [r7, r6]
	mov r0, #0x80
	bl sub_0204A934
	ldr r1, [r0]
	add r2, r5, r6
	str r1, [r2, #0x18]
	ldr r1, [r0, #4]
	str r1, [r2, #0x20]
	bl sub_0203A24C
	add r4, r4, #1
	cmp r4, #2
	blt _021EEE48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE6C: .word 0x021EEF0C
	thumb_func_end ovy110_21eee34

	thumb_func_start ovy110_21eee70
ovy110_21eee70: ; 0x021EEE70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, r1, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #0xb
	bl sub_0200BAC4
	add r7, r0, #0
	mov r4, #0
_021EEE8C:
	lsl r5, r4, #2
	add r0, r6, r5
	ldr r0, [r0, #8]
	bl sub_021BEC7C
	asr r0, r0, #0xc
	add r4, r4, #1
	str r0, [r7, r5]
	cmp r4, #2
	blt _021EEE8C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy110_21eee70

	thumb_func_start ovy110_21eeea4
ovy110_21eeea4: ; 0x021EEEA4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #0xb
	bl sub_0200BAC4
	add r6, r0, #0
	mov r4, #0
_021EEEC0:
	lsl r1, r4, #2
	add r0, r5, r1
	ldr r1, [r6, r1]
	ldr r0, [r0, #8]
	lsl r1, r1, #0xc
	bl sub_021BEC64
	add r4, r4, #1
	cmp r4, #2
	blt _021EEEC0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy110_21eeea4

	thumb_func_start ovy110_21eeed8
ovy110_21eeed8: ; 0x021EEED8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	lsl r5, r1, #2
	add r4, r6, #0
	add r0, r6, r5
	add r4, #0x18
	ldr r1, [r0, #0x20]
	ldr r0, [r4, r5]
	sub r0, r1, r0
	add r0, r0, #1
	bl sub_02005784
	ldr r1, [r4, r5]
	add r1, r1, r0
	add r0, r6, r5
	str r1, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy110_21eeed8

	thumb_func_start sub_021EEEFC
sub_021EEEFC: ; 0x021EEEFC
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	ldr r3, _021EEF08 ; =sub_021BEC64
	mov r1, #0
	bx r3
	.align 2, 0
_021EEF08: .word sub_021BEC64
	thumb_func_end sub_021EEEFC
_021EEF0C:
	.byte 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x14, 0xEF, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x20, 0xEF, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEF0C
