    .include "macros/function.inc"
	.include "overlay126.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy126_21eec80
ovy126_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	add r0, r1, #0
	add r5, r2, #0
	bl sub_021804C0
	add r2, r0, #0
	ldr r1, _021EED68 ; =0x00007FFF
	mov r0, #0xbb
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204AA30
	ldr r7, _021EED6C ; =0x021EEE68
	str r0, [sp]
	mov r4, #0
_021EECA4:
	lsl r6, r4, #2
	ldr r0, [sp]
	ldr r1, [r7, r6]
	bl sub_02049384
	mov r1, #2
	str r0, [r5, r6]
	bl sub_02049434
	cmp r0, #0
	beq _021EECC0
	ldr r0, [r5, r6]
	bl sub_020494AC
_021EECC0:
	add r4, r4, #1
	cmp r4, #7
	blt _021EECA4
	mov r4, #0
_021EECC8:
	ldr r0, _021EED70 ; =0x021EEE3C
	lsl r6, r4, #2
	ldr r0, [r0, r6]
	mov r1, #2
	lsl r7, r0, #2
	ldr r0, [r5, r7]
	bl sub_02049434
	cmp r0, #0
	ldr r0, [r5, r7]
	beq _021EECE4
	mov r1, #0
	add r2, r0, #0
	b _021EECE8
_021EECE4:
	mov r1, #0
	mov r2, #0
_021EECE8:
	bl sub_0204972C
	add r1, r5, r6
	add r4, r4, #1
	str r0, [r1, #0x1c]
	cmp r4, #3
	blt _021EECC8
	mov r6, #0
	add r4, r6, #0
_021EECFA:
	ldr r0, _021EED74 ; =0x021EEE48
	lsl r7, r6, #2
	ldr r1, _021EED78 ; =0x021EEE58
	ldr r0, [r0, r7]
	ldr r1, [r1, r7]
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r1, r1, #2
	ldr r0, [r0, #0x1c]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0204980C
	add r1, r5, r7
	add r6, r6, #1
	str r0, [r1, #0x28]
	cmp r6, #4
	blt _021EECFA
	add r7, r5, #0
	add r7, #0x28
_021EED22:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x1c]
	add r1, r7, #0
	mov r2, #4
	bl sub_020498B8
	add r4, r4, #1
	str r0, [r6, #0x38]
	cmp r4, #3
	blt _021EED22
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl sub_02049974
	ldr r0, [r5, #0x38]
	mov r1, #3
	bl sub_02049974
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_02049974
	ldr r0, [r5, #0x40]
	mov r1, #2
	bl sub_02049974
	mov r0, #1
	mov r1, #1
	bl sub_02049214
	ldr r0, [sp]
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EED68: .word 0x00007FFF
_021EED6C: .word 0x021EEE68
_021EED70: .word 0x021EEE3C
_021EED74: .word 0x021EEE48
_021EED78: .word 0x021EEE58
	thumb_func_end ovy126_21eec80

	thumb_func_start ovy126_21eed7c
ovy126_21eed7c: ; 0x021EED7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	mov r4, #0
_021EED82:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x38]
	bl sub_02049934
	add r4, r4, #1
	cmp r4, #3
	blt _021EED82
	mov r4, #0
_021EED94:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x28]
	bl sub_02049888
	add r4, r4, #1
	cmp r4, #4
	blt _021EED94
	mov r4, #0
_021EEDA6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl sub_020497D4
	add r4, r4, #1
	cmp r4, #3
	blt _021EEDA6
	mov r4, #0
	mov r7, #2
_021EEDBA:
	lsl r6, r4, #2
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl sub_02049434
	cmp r0, #0
	beq _021EEDCE
	ldr r0, [r5, r6]
	bl sub_02049534
_021EEDCE:
	ldr r0, [r5, r6]
	bl sub_02049404
	add r4, r4, #1
	cmp r4, #7
	blt _021EEDBA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy126_21eed7c

	thumb_func_start ovy126_21eeddc
ovy126_21eeddc: ; 0x021EEDDC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r4, #1
	lsl r4, r4, #0xc
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, r4, #0
	bl sub_02049A64
	ldr r0, [r5, #0x38]
	mov r1, #3
	add r2, r4, #0
	bl sub_02049A64
	ldr r0, [r5, #0x3c]
	mov r1, #1
	add r2, r4, #0
	bl sub_02049A64
	ldr r0, [r5, #0x40]
	mov r1, #2
	add r2, r4, #0
	bl sub_02049A64
	mov r0, #1
	mov r1, #1
	bl sub_02049214
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy126_21eeddc

	thumb_func_start ovy126_21eee18
ovy126_21eee18: ; 0x021EEE18
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldr r4, _021EEE38 ; =0x021EEE84
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	bl sub_02049B5C
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl sub_02049B5C
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl sub_02049B5C
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EEE38: .word 0x021EEE84
	thumb_func_end ovy126_21eee18
_021EEE3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x81, 0xEC, 0x1E, 0x02, 0x7D, 0xED, 0x1E, 0x02
	.byte 0xDD, 0xED, 0x1E, 0x02, 0x19, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEE3C
