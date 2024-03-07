    .include "macros/function.inc"
	.include "overlay98.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy98_21eec80
ovy98_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #9
	bl sub_0200BAC4
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #4
	bl ovy36_2180ff0
	mov r2, #0
	str r2, [sp]
	ldr r1, _021EEDAC ; =0x021EF110
	add r0, r4, #0
	mov r2, #0
	bl ovy36_21b8598
_021EECC2:
	ldr r2, [sp]
	add r0, r4, #0
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r6, #0
	bl sub_021B8224
	add r2, r0, #0
	ldr r0, [sp]
	mov r1, #0xc
	mul r1, r0
	str r1, [sp, #4]
	ldr r1, _021EEDB0 ; =0x021EF140
	ldr r0, [sp, #4]
	add r3, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r2, [sp]
	add r0, r4, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8248
	ldr r0, [sp]
	add r5, r6, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
_021EED04:
	lsl r3, r6, #0x10
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	add r6, r6, #1
	cmp r6, #2
	blt _021EED04
	ldr r0, [sp]
	add r1, r5, #0
	add r6, r0, #3
	lsl r2, r6, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	add r2, r0, #0
	ldr r1, _021EEDB4 ; =0x021EF164
	ldr r0, [sp, #4]
	add r3, r1, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	lsl r2, r6, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8248
	lsl r0, r6, #0x10
	lsr r7, r0, #0x10
_021EED5A:
	lsl r3, r5, #0x10
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	add r5, r5, #1
	cmp r5, #2
	blt _021EED5A
	ldr r0, [sp]
	ldr r1, [sp, #8]
	lsl r5, r0, #2
	ldr r1, [r1, r5]
	ldr r2, [sp]
	add r0, r4, #0
	mov r3, #1
	bl ovy98_21eeef8
	ldr r1, [sp, #8]
	ldr r2, [sp]
	ldr r1, [r1, r5]
	add r0, r4, #0
	mov r3, #0
	bl ovy98_21eeef8
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #3
	blt _021EECC2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EEDAC: .word 0x021EF110
_021EEDB0: .word 0x021EF140
_021EEDB4: .word 0x021EF164
	thumb_func_end ovy98_21eec80

	thumb_func_start ovy98_21eedb8
ovy98_21eedb8: ; 0x021EEDB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r0, r5, #0
	mov r1, #1
	bl ovy36_218102c
	add r0, r4, #0
	mov r1, #0
	bl ovy36_21b81bc
	pop {r3, r4, r5, pc}
	thumb_func_end ovy98_21eedb8

	thumb_func_start ovy98_21eeddc
ovy98_21eeddc: ; 0x021EEDDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r0, r5, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #9
	bl sub_0200BAC4
	add r0, r4, #0
	bl ovy36_21b83b4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy98_21eeddc

	thumb_func_start ovy98_21eee0c
ovy98_21eee0c: ; 0x021EEE0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	cmp r4, #3
	blt _021EEE34
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EEE34:
	ldr r2, _021EEE44 ; =ovy98_21eef78
	str r4, [r0]
	add r0, r5, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EEE44: .word ovy98_21eef78
	thumb_func_end ovy98_21eee0c

	thumb_func_start ovy98_21eee48
ovy98_21eee48: ; 0x021EEE48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	cmp r4, #3
	blt _021EEE70
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EEE70:
	ldr r2, _021EEE80 ; =ovy98_21ef028
	str r4, [r0]
	add r0, r5, #0
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EEE80: .word ovy98_21ef028
	thumb_func_end ovy98_21eee48

	thumb_func_start ovy98_21eee84
ovy98_21eee84: ; 0x021EEE84
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02016AF0
	add r6, r0, #0
	bl sub_0218052C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #9
	bl sub_0200BAC4
	cmp r5, #8
	bge _021EEEC6
	cmp r4, #2
	bne _021EEEC6
	add r1, r5, #0
	bl sub_021EEEC8
	cmp r0, #0
	beq _021EEEC6
	add r0, r6, #0
	bl sub_021804E0
	add r1, r6, #0
	bl sub_0219E434
_021EEEC6:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy98_21eee84

	thumb_func_start sub_021EEEC8
sub_021EEEC8: ; 0x021EEEC8
	ldr r2, _021EEEF0 ; =0x021EF120
	lsl r1, r1, #2
	ldrh r2, [r2, r1]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _021EEEDA
	mov r0, #1
	b _021EEEDC
_021EEEDA:
	mov r0, #0
_021EEEDC:
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _021EEEF4 ; =0x021EF122
	ldrh r0, [r0, r1]
	cmp r2, r0
	bne _021EEEEC
	mov r0, #1
	bx lr
_021EEEEC:
	mov r0, #0
	bx lr
	.align 2, 0
_021EEEF0: .word 0x021EF120
_021EEEF4: .word 0x021EF122
	thumb_func_end sub_021EEEC8

	thumb_func_start ovy98_21eeef8
ovy98_21eeef8: ; 0x021EEEF8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0
	beq _021EEF08
	mov r4, #1
	mov r7, #0
	b _021EEF0C
_021EEF08:
	mov r4, #0
	mov r7, #1
_021EEF0C:
	cmp r3, #1
	beq _021EEF12
	add r5, r5, #3
_021EEF12:
	mov r0, #1
	lsl r2, r5, #0x10
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	mov r0, #0
	lsl r2, r5, #0x10
	lsl r3, r7, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	mov r0, #0
	lsl r2, r5, #0x10
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	lsl r2, r5, #0x10
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	mov r1, #1
	bl sub_021B84E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy98_21eeef8

	thumb_func_start sub_021EEF68
sub_021EEF68: ; 0x021EEF68
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021EEF74
	mov r0, #1
	bx lr
_021EEF74:
	mov r0, #0
	bx lr
	thumb_func_end sub_021EEF68

	thumb_func_start ovy98_21eef78
ovy98_21eef78: ; 0x021EEF78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	add r7, r0, #0
	bl ovy36_0218056c
	mov r1, #1
	add r6, r0, #0
	str r1, [sp]
	add r0, r7, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #9
	bl sub_0200BAC4
	ldr r1, [r5]
	add r7, r0, #0
	cmp r1, #0
	beq _021EEFBC
	cmp r1, #1
	beq _021EEFE4
	b _021EF022
_021EEFBC:
	ldr r4, [r4]
	add r1, r4, #0
	bl sub_021EEF68
	add r2, r4, #3
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r3, r0, #0x18
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ovy36_21b84a8
	mov r1, #0
	bl sub_021B84E8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EF022
_021EEFE4:
	ldr r5, [r4]
	add r1, r5, #0
	bl sub_021EEF68
	add r2, r5, #3
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r3, r0, #0x18
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EF022
	ldr r2, [r4]
	lsl r0, r2, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021EF014
	mov r0, #0
	str r0, [sp]
_021EF014:
	ldr r1, [sp]
	add r0, r6, #0
	mov r3, #0
	bl ovy98_21eeef8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF022:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy98_21eef78

	thumb_func_start ovy98_21ef028
ovy98_21ef028: ; 0x021EF028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	add r6, r0, #0
	bl ovy36_0218056c
	mov r1, #1
	add r7, r0, #0
	str r1, [sp]
	add r0, r6, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	mov r1, #9
	bl sub_0200BAC4
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #0
	beq _021EF06C
	cmp r1, #1
	beq _021EF09A
	b _021EF0F2
_021EF06C:
	ldr r4, [r4]
	add r1, r4, #0
	bl sub_021EEF68
	lsl r0, r0, #0x18
	lsl r2, r4, #0x18
	lsr r3, r0, #0x18
	add r0, r7, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ovy36_21b84a8
	mov r1, #0
	bl sub_021B84E8
	mov r0, #0x6d
	lsl r0, r0, #4
	bl sub_02006254
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EF0F2
_021EF09A:
	ldr r5, [r4]
	add r1, r5, #0
	bl sub_021EEF68
	lsl r0, r0, #0x18
	lsl r2, r5, #0x18
	lsr r3, r0, #0x18
	add r0, r7, #0
	mov r1, #0
	lsr r2, r2, #0x18
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EF0F2
	bl sub_02006280
	mov r0, #0x6f
	lsl r0, r0, #4
	bl sub_02006254
	ldr r2, [r4]
	lsl r0, r2, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021EF0D4
	mov r0, #0
	str r0, [sp]
_021EF0D4:
	ldr r1, [sp]
	add r0, r7, #0
	mov r3, #1
	mov r5, #1
	bl ovy98_21eeef8
	ldr r0, [r4]
	lsl r1, r0, #2
	ldr r0, [r6, r1]
	cmp r0, #0
	beq _021EF0EC
	mov r5, #0
_021EF0EC:
	str r5, [r6, r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF0F2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy98_21ef028
_021EF0F8:
	.byte 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0xE8, 0xF1, 0x1E, 0x02, 0x09, 0x00, 0x00, 0x00, 0x88, 0xF1, 0x1E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0x00, 0x80, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x36, 0x00, 0x00, 0x80, 0x37, 0x00
	.byte 0x00, 0x00, 0x03, 0x00, 0x00, 0x80, 0x2B, 0x00, 0x00, 0x80, 0x11, 0x00, 0x00, 0x00, 0x06, 0x00
	.byte 0x00, 0x80, 0x21, 0x00, 0x00, 0x80, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x35, 0x00
	.byte 0x00, 0x80, 0x3B, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x80, 0x29, 0x00, 0x00, 0x80, 0x0F, 0x00
	.byte 0x00, 0x00, 0x06, 0x00, 0x00, 0x80, 0x1D, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xF8, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0xF8, 0xF0, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x08, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x08, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x08, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x98, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x98, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF0F8
