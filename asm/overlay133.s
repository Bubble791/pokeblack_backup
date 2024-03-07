    .include "macros/function.inc"
	.include "overlay133.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy133_21eec80
ovy133_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r6, r0, #0
	bl sub_0201793C
	mov r1, #0x20
	bl sub_0200BAC4
	str r0, [sp, #4]
	add r0, r4, #0
	bl ovy36_0218056c
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r3, #8
	mov r7, #1
	bl ovy36_2180ff0
	add r0, r4, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	add r0, r6, #0
	bl sub_020173AC
	bl sub_02015A90
	sub r0, r0, #3
	cmp r0, #1
	bhi _021EECE4
	ldr r1, _021EED78 ; =0x021EEED8
	add r0, r5, #0
	mov r2, #0
	bl ovy36_21b8598
	str r7, [r4, #4]
	b _021EECF2
_021EECE4:
	ldr r1, _021EED7C ; =0x021EEEB8
	add r0, r5, #0
	mov r2, #0
	bl ovy36_21b8598
	mov r0, #0
	str r0, [r4, #4]
_021EECF2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl sub_021B8224
	ldr r2, _021EED80 ; =0x021EEF30
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	mov r2, #0
	mov r3, #1
	mov r6, #1
	bl sub_021B8248
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021EED22
	add r6, r4, #0
_021EED22:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	mov r4, #0
	bl sub_021B8258
	add r7, r4, #0
_021EED32:
	lsl r3, r4, #0x10
	add r0, r5, #0
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
	ldr r0, [sp, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _021EED5C
	mov r0, #1
	b _021EED5E
_021EED5C:
	add r0, r7, #0
_021EED5E:
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r4, r4, #1
	cmp r4, #2
	blt _021EED32
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EED78: .word 0x021EEED8
_021EED7C: .word 0x021EEEB8
_021EED80: .word 0x021EEF30
	thumb_func_end ovy133_21eec80

	thumb_func_start ovy133_21eed84
ovy133_21eed84: ; 0x021EED84
	push {r4, lr}
	add r4, r0, #0
	bl ovy36_0218056c
	mov r1, #0
	bl ovy36_21b81bc
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy133_21eed84

	thumb_func_start ovy133_21eed9c
ovy133_21eed9c: ; 0x021EED9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021EEE16
	add r0, r4, #0
	bl ovy36_21b83b4
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021EEDDC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b8520
	mov r1, #0xf
	lsl r1, r1, #0xe
	cmp r0, r1
	bne _021EEDDC
	ldr r0, _021EEE18 ; =0x000007F8
	bl sub_02006254
_021EEDDC:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r7, #0
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EEE16
	add r0, r4, #0
	add r1, r7, #0
	add r2, r7, #0
	mov r3, #1
	bl sub_021B8258
	add r0, r6, #0
	str r7, [r5]
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #0x20
	bl sub_0200BAC4
	str r7, [r0]
_021EEE16:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE18: .word 0x000007F8
	thumb_func_end ovy133_21eed9c

	thumb_func_start ovy133_21eee1c
ovy133_21eee1c: ; 0x021EEE1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ovy36_0218056c
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	add r7, r0, #0
	str r4, [r7]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	add r6, r4, #0
_021EEE44:
	lsl r3, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r1, r6, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #2
	blt _021EEE44
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _021EEE6C
	ldr r0, _021EEE74 ; =0x000007F6
	bl sub_02006254
	pop {r3, r4, r5, r6, r7, pc}
_021EEE6C:
	ldr r0, _021EEE78 ; =0x000007F7
	bl sub_02006254
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE74: .word 0x000007F6
_021EEE78: .word 0x000007F7
	thumb_func_end ovy133_21eee1c

	thumb_func_start ovy133_21eee7c
ovy133_21eee7c: ; 0x021EEE7C
	push {r3, lr}
	ldr r2, _021EEE8C ; =ovy133_21eee90
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r3, pc}
	nop
_021EEE8C: .word ovy133_21eee90
	thumb_func_end ovy133_21eee7c

	thumb_func_start ovy133_21eee90
ovy133_21eee90: ; 0x021EEE90
	push {r4, lr}
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	ldr r0, [r0]
	cmp r0, #0
	beq _021EEEAA
	mov r4, #0
_021EEEAA:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy133_21eee90
_021EEEB0:
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xE8, 0xEE, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xC8, 0xEE, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xB0, 0xEE, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x0C, 0xEF, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xC8, 0xEE, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE0, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xE0, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x02, 0x00, 0x00, 0x00, 0x00
	; 0x021EEEB0
