    .include "macros/function.inc"
	.include "overlay115.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy115_21eec80
ovy115_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0xc
	bl ovy36_2180ff0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ovy115_21eedd4
	add r0, r5, #0
	bl sub_0218049C
	ldr r1, _021EECC4 ; =0x0000416B
	mov r2, #1
	bl ovy36_2197a8c
	pop {r3, r4, r5, pc}
	nop
_021EECC4: .word 0x0000416B
	thumb_func_end ovy115_21eec80

	thumb_func_start ovy115_21eecc8
ovy115_21eecc8: ; 0x021EECC8
	push {r3, r4, r5, lr}
	mov r1, #1
	add r5, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	bl sub_021EEDC8
	add r0, r4, #0
	bl sub_021EEE58
	add r0, r5, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r3, r4, r5, pc}
	thumb_func_end ovy115_21eecc8

	thumb_func_start ovy115_21eece8
ovy115_21eece8: ; 0x021EECE8
	push {r3, r4, r5, lr}
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	add r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _021EED00
	bl ovy115_21eed28
	str r4, [r5, #8]
_021EED00:
	add r0, r5, #0
	bl sub_021EEE64
	pop {r3, r4, r5, pc}
	thumb_func_end ovy115_21eece8

	thumb_func_start ovy115_21eed08
ovy115_21eed08: ; 0x021EED08
	push {r4, lr}
	add r4, r0, #0
	bl sub_02016AD8
	add r0, r4, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0]
	mov r1, #0
	bl ovy115_21eee70
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy115_21eed08

	thumb_func_start ovy115_21eed28
ovy115_21eed28: ; 0x021EED28
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r0, [r0, #4]
	bl sub_021804C0
	add r5, r0, #0
	mov r0, #3
	bl sub_02044B84
	ldr r4, _021EEDBC ; =0x021EEF2C
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	mov r6, #0
	bl sub_0204476C
	ldr r1, _021EEDC0 ; =0x00007FFF
	add r2, r5, #0
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	ldr r0, _021EEDC4 ; =0x0000012F
	lsr r1, r1, #0x10
	bl GFL_ArcSysCreateFileHandle
	str r6, [sp]
	str r5, [sp, #4]
	mov r1, #4
	mov r2, #0
	mov r3, #0
	add r4, r0, #0
	bl GFL_G2DIOLoadArcNCLRDefault
	str r6, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_0204ADA8
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	str r5, [sp, #8]
	bl sub_0204AF50
	add r0, r4, #0
	bl GFL_ArcToolFree
	mov r0, #3
	bl sub_02044F90
	mov r0, #8
	mov r1, #1
	bl sub_02046CFC
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021EEDBC: .word 0x021EEF2C
_021EEDC0: .word 0x00007FFF
_021EEDC4: .word 0x0000012F
	thumb_func_end ovy115_21eed28

	thumb_func_start sub_021EEDC8
sub_021EEDC8: ; 0x021EEDC8
	ldr r3, _021EEDD0 ; =sub_02044B84
	mov r0, #3
	bx r3
	nop
_021EEDD0: .word sub_02044B84
	thumb_func_end sub_021EEDC8

	thumb_func_start ovy115_21eedd4
ovy115_21eedd4: ; 0x021EEDD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEE50 ; =0x021EEEEC
	mov r2, #0
	mov r4, #0
	bl ovy36_21b8598
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	mov r1, #2
	lsl r1, r1, #0x14
	str r1, [r0]
	mov r1, #3
	lsl r1, r1, #0x14
	str r1, [r0, #4]
	ldr r1, _021EEE54 ; =0xFFF00000
	mov r2, #0
	str r1, [r0, #8]
	ldr r0, [r5]
	mov r1, #0
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	add r7, r4, #0
_021EEE18:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	str r7, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r4, r4, #1
	cmp r4, #3
	blo _021EEE18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEE50: .word 0x021EEEEC
_021EEE54: .word 0xFFF00000
	thumb_func_end ovy115_21eedd4

	thumb_func_start sub_021EEE58
sub_021EEE58: ; 0x021EEE58
	ldr r0, [r0]
	ldr r3, _021EEE60 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE60: .word ovy36_21b81bc
	thumb_func_end sub_021EEE58

	thumb_func_start sub_021EEE64
sub_021EEE64: ; 0x021EEE64
	ldr r0, [r0]
	ldr r3, _021EEE6C ; =ovy36_21b83b4
	bx r3
	nop
_021EEE6C: .word ovy36_21b83b4
	thumb_func_end sub_021EEE64

	thumb_func_start ovy115_21eee70
ovy115_21eee70: ; 0x021EEE70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	add r5, r0, #0
	mov r4, #0
	bl sub_021B8258
_021EEE82:
	lsl r3, r4, #0x10
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #3
	blt _021EEE82
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy115_21eee70
_021EEED0:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD0, 0xEE, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0xFC, 0xEE, 0x1E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0xDC, 0xEE, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2F, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2F, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x01
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEED0
