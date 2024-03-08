    .include "macros/function.inc"
	.include "overlay120.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy120_21eec80
ovy120_21eec80: ; 0x021EEC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0xc
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r6, #0
	str r5, [r4, #4]
	bl sub_0201793C
	mov r1, #0x2e
	bl sub_0200BAC4
	str r0, [r4, #8]
	add r0, r4, #0
	bl ovy120_21eee04
	add r0, r4, #0
	bl ovy120_21eed50
	pop {r4, r5, r6, pc}
	thumb_func_end ovy120_21eec80

	thumb_func_start ovy120_21eecc8
ovy120_21eecc8: ; 0x021EECC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EEE70
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy120_21eecc8

	thumb_func_start ovy120_21eece0
ovy120_21eece0: ; 0x021EECE0
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl ovy120_sub_021EEE7C2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy120_21eece0
_021EECF0:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x31, 0xF0, 0x1E, 0x02, 0x00, 0x4B, 0x18, 0x47, 0x15, 0xF1, 0x1E, 0x02

	thumb_func_start ovy120_21eed00
ovy120_21eed00: ; 0x021EED00
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	bl sub_021804B8
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	mov r1, #1
	bl sub_0216783C
	pop {r4, pc}
	thumb_func_end ovy120_21eed00

	thumb_func_start ovy120_21eed1c
ovy120_21eed1c: ; 0x021EED1C
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	bl sub_021804B8
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	mov r1, #0
	bl sub_0216783C
	pop {r4, pc}
	thumb_func_end ovy120_21eed1c

	thumb_func_start ovy120_21eed38
ovy120_21eed38: ; 0x021EED38
	push {r3, lr}
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	ldr r0, [r0, #8]
	mov r1, #1
	bl sub_021EF1E0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy120_21eed38

	thumb_func_start ovy120_21eed50
ovy120_21eed50: ; 0x021EED50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF1DC
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_021EF1E4
	add r4, r0, #0
	cmp r6, #1
	bne _021EEDAC
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r5]
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r5]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8258
	add r0, r5, #0
	bl ovy120_21eefdc
	ldr r0, [r5, #4]
	bl sub_02180494
	mov r1, #0x2b
	bl sub_02185804
_021EEDAC:
	cmp r4, #1
	bne _021EEDF0
	mov r6, #1
	str r6, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	mov r4, #0
	bl ovy36_21b8538
	str r6, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #2
	bl ovy36_21b8538
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl ovy36_21b8504
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #0
	mov r2, #3
	mov r3, #2
	bl ovy36_21b8504
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EEDF0:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5]
	mov r1, #3
	mov r2, #0
	mov r3, #0
	bl ovy120_21eef08
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy120_21eed50

	thumb_func_start ovy120_21eee04
ovy120_21eee04: ; 0x021EEE04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEE6C ; =0x021EF388
	mov r2, #0
	bl ovy36_21b8598
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl ovy120_21eee88
	ldr r0, [r5]
	mov r1, #1
	mov r2, #2
	mov r3, #1
	mov r4, #1
	bl ovy120_21eee88
	ldr r0, [r5]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl ovy120_21eee88
	str r4, [sp]
	ldr r0, [r5]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl ovy120_21eef08
	ldr r0, [r5]
	mov r1, #3
	mov r2, #3
	mov r3, #1
	bl ovy120_21eee88
	ldr r0, [r5]
	mov r1, #4
	mov r2, #2
	mov r3, #1
	bl ovy120_21eee88
	ldr r0, [r5]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	bl sub_021B8248
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EEE6C: .word 0x021EF388
	thumb_func_end ovy120_21eee04

	thumb_func_start sub_021EEE70
sub_021EEE70: ; 0x021EEE70
	ldr r0, [r0]
	ldr r3, _021EEE78 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEE78: .word ovy36_21b81bc
	thumb_func_end sub_021EEE70

	thumb_func_start ovy120_sub_021EEE7C2
ovy120_sub_021EEE7C2: ; 0x021EEE7C
	ldr r0, [r0]
	ldr r3, _021EEE84 ; =ovy36_21b83b4
	bx r3
	nop
_021EEE84: .word ovy36_21b83b4
	thumb_func_end ovy120_sub_021EEE7C2

	thumb_func_start ovy120_21eee88
ovy120_21eee88: ; 0x021EEE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r2, [sp, #4]
	mov r1, #0
	add r2, r5, #0
	add r6, r0, #0
	add r7, r3, #0
	mov r4, #0
	bl sub_021B8224
	mov r1, #1
	lsl r1, r1, #0x14
	str r1, [r0]
	mov r1, #3
	str r4, [r0, #4]
	lsl r1, r1, #0x14
	str r1, [r0, #8]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8248
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r7, #0
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021EEF04
	ble _021EEF04
_021EEECC:
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEECC
_021EEF04:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy120_21eee88

	thumb_func_start ovy120_21eef08
ovy120_21eef08: ; 0x021EEF08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	add r6, r0, #0
	bl ovy36_21b84a8
	mov r1, #0
	str r0, [sp, #4]
	bl sub_021B84E8
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8538
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	str r7, [sp]
	bl ovy36_21b8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy120_21eef08

	thumb_func_start ovy120_21eef54
ovy120_21eef54: ; 0x021EEF54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	add r5, r0, #0
	mov r7, #0
	bl ovy36_21b84a8
	mov r1, #1
	bl sub_021B84E8
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl ovy36_21b8538
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	str r7, [sp]
	bl ovy36_21b8504
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy120_21eef54

	thumb_func_start ovy120_21eef8c
ovy120_21eef8c: ; 0x021EEF8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	add r6, r4, #0
	mov r7, #4
_021EEFA2:
	str r6, [sp]
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ovy120_21eef08
	add r4, r4, #1
	cmp r4, #2
	blo _021EEFA2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy120_21eef8c

	thumb_func_start ovy120_21eefbc
ovy120_21eefbc: ; 0x021EEFBC
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	mov r1, #0
	mov r5, #4
	mov r2, #4
	mov r3, #0
	mov r4, #0
	bl ovy36_21b8520
	lsl r1, r5, #0xd
	cmp r0, r1
	blt _021EEFD6
	mov r4, #1
_021EEFD6:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy120_21eefbc

	thumb_func_start ovy120_21eefdc
ovy120_21eefdc: ; 0x021EEFDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	add r7, r4, #0
_021EEFF0:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #4
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #4
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r6, #0
	bl ovy36_21b8580
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	add r1, r7, #0
	mov r2, #4
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add r4, r4, #1
	cmp r4, #2
	blo _021EEFF0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy120_21eefdc

	thumb_func_start ovy120_21ef030
ovy120_21ef030: ; 0x021EF030
	push {r3, lr}
	ldr r2, _021EF040 ; =ovy120_21ef044
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r3, pc}
	nop
_021EF040: .word ovy120_21ef044
	thumb_func_end ovy120_21ef030

	thumb_func_start ovy120_21ef044
ovy120_21ef044: ; 0x021EF044
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	add r6, r0, #0
	mov r7, #1
	bl sub_0218105C
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021EF10E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF06E: ; jump table
	.short _021EF078 - _021EF06E - 2 ; case 0
	.short _021EF07C - _021EF06E - 2 ; case 1
	.short _021EF086 - _021EF06E - 2 ; case 2
	.short _021EF092 - _021EF06E - 2 ; case 3
	.short _021EF10A - _021EF06E - 2 ; case 4
_021EF078:
	str r7, [r5]
	b _021EF10E
_021EF07C:
	bl ovy120_21eef8c
	mov r0, #2
_021EF082:
	str r0, [r5]
	b _021EF10E
_021EF086:
	bl ovy120_21eefbc
	cmp r0, #1
	bne _021EF10E
	mov r0, #3
	b _021EF082
_021EF092:
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	add r3, r7, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy36_21b84a8
	ldr r0, [r4]
	mov r1, #0
	mov r2, #2
	mov r3, #0
	bl ovy36_21b8520
	str r7, [sp]
	add r3, r0, #0
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	bl ovy120_21eef08
	ldr r0, [r4]
	mov r1, #2
	mov r2, #0
	bl ovy120_21eef54
	ldr r0, [r4, #8]
	add r1, r7, #0
	bl sub_021EF1D8
	add r0, r6, #0
	bl sub_02180494
	mov r1, #0x2b
	bl sub_02185804
	mov r0, #4
	b _021EF082
_021EF10A:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF10E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy120_21ef044

	thumb_func_start ovy120_21ef114
ovy120_21ef114: ; 0x021EF114
	push {r3, lr}
	ldr r2, _021EF124 ; =ovy120_21ef128
	mov r1, #0
	mov r3, #0
	bl sub_02016CB4
	pop {r3, pc}
	nop
_021EF124: .word ovy120_21ef128
	thumb_func_end ovy120_21ef114

	thumb_func_start ovy120_21ef128
ovy120_21ef128: ; 0x021EF128
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	bl sub_02016ED8
	bl sub_02016AF0
	mov r1, #1
	add r7, r0, #0
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021EF14C
	cmp r0, #1
	beq _021EF1CC
	b _021EF1D2
_021EF14C:
	ldr r0, [r4]
	mov r1, #3
	mov r6, #0
	mov r2, #0
	bl ovy120_21eef54
	str r6, [sp]
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	mov r3, #0
	bl ovy120_21eef08
	str r6, [sp]
	ldr r0, [r4]
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl ovy120_21eef08
	str r6, [sp]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #0
	mov r3, #0
	bl ovy120_21eef08
	str r6, [sp]
	ldr r0, [r4]
	mov r1, #1
	mov r2, #1
	mov r3, #0
	bl ovy120_21eef08
	add r4, sp, #4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	blx MI_CpuFill8
	add r1, sp, #4
	mov r0, #1
	strh r0, [r1]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x16
	strb r0, [r1, #2]
	mov r0, #0x95
	strh r0, [r1, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	bl ovy120_21ef1e8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02180578
	add r1, r4, #0
	mov r2, #0
	bl sub_021C09E4
	mov r0, #1
	str r0, [r5]
	b _021EF1D2
_021EF1CC:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021EF1D2:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy120_21ef128

	thumb_func_start sub_021EF1D8
sub_021EF1D8: ; 0x021EF1D8
	str r1, [r0]
	bx lr
	thumb_func_end sub_021EF1D8

	thumb_func_start sub_021EF1DC
sub_021EF1DC: ; 0x021EF1DC
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_021EF1DC

	thumb_func_start sub_021EF1E0
sub_021EF1E0: ; 0x021EF1E0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_021EF1E0

	thumb_func_start sub_021EF1E4
sub_021EF1E4: ; 0x021EF1E4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_021EF1E4

	thumb_func_start ovy120_21ef1e8
ovy120_21ef1e8: ; 0x021EF1E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_021804C0
	ldr r2, _021EF220 ; =ovy120_21ef224
	mov r1, #0x24
	bl sub_021C0870
	add r7, r0, #0
	bl sub_021C08CC
	add r4, r0, #0
	add r0, r6, #0
	str r6, [r4]
	bl sub_02180494
	add r2, r4, #0
	str r0, [r4, #4]
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	str r0, [r4, #8]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF220: .word ovy120_21ef224
	thumb_func_end ovy120_21ef1e8

	thumb_func_start ovy120_21ef224
ovy120_21ef224: ; 0x021EF224
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r0, [r4]
	add r5, r4, #0
	mov r7, #0
	add r5, #0xc
	bl sub_02180494
	mov r1, #0xc
	ldrsh r1, [r5, r1]
	add r6, r0, #0
	cmp r1, #0
	ble _021EF24A
	sub r0, r1, #1
	strh r0, [r5, #0xc]
	add sp, #0x20
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF24A:
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _021EF252
	b _021EF360
_021EF252:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF25E: ; jump table
	.short _021EF266 - _021EF25E - 2 ; case 0
	.short _021EF272 - _021EF25E - 2 ; case 1
	.short _021EF2B4 - _021EF25E - 2 ; case 2
	.short _021EF35A - _021EF25E - 2 ; case 3
_021EF266:
	bl sub_02186730
_021EF26A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021EF360
_021EF272:
	ldr r0, [r4, #4]
	bl sub_02186770
	cmp r0, #0
	bne _021EF360
	ldr r0, [r4, #4]
	bl sub_02186EA0
	add r0, r6, #0
	bl sub_021862E4
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	bl sub_02180498
	bl ovy36_21b3d24
	cmp r0, #0
	beq _021EF2A8
	add r0, r6, #0
	bl sub_021862F4
	str r0, [r4, #0x20]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021862F0
_021EF2A8:
	add r0, r6, #0
	bl sub_021862DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_021EF2B4:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [sp]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	blx sub_0208D868
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r2, [sp]
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _021EF2E0
	ldrb r0, [r5, #2]
	sub r0, r0, #1
	strb r0, [r5, #2]
	mov r0, #0
	str r0, [r5, #8]
_021EF2E0:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _021EF2EC
	mov r0, #0
	str r0, [r5, #8]
	mov r7, #1
_021EF2EC:
	cmp r7, #0
	beq _021EF32C
	add r1, sp, #0x14
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r6, #0
	bl sub_021863A4
	add r0, r6, #0
	bl sub_02186F00
	ldr r0, [r4]
	bl sub_02180498
	bl ovy36_21b3d24
	cmp r0, #0
	beq _021EF31C
	ldr r1, [r4, #0x20]
	add r0, r6, #0
	bl sub_021862F0
_021EF31C:
	ldr r1, [r4, #0x1c]
	add r0, r6, #0
	bl sub_021862B8
	add r0, r6, #0
	bl sub_021866E4
	b _021EF26A
_021EF32C:
	asr r1, r1, #4
	mov r0, #0
	ldrsh r0, [r5, r0]
	lsl r2, r1, #2
	ldr r1, _021EF368 ; =FX_SinCosTable_ ; 0x020946BC
	ldr r5, [r4, #0x1c]
	ldrsh r1, [r1, r2]
	add r3, r0, #0
	add r4, sp, #8
	mul r3, r1
	ldmia r5!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r1, r2, #0
	str r0, [r4]
	ldr r0, [sp, #0xc]
	add r0, r0, r3
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_02186320
	b _021EF360
_021EF35A:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF360:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF368: .word FX_SinCosTable_
	thumb_func_end ovy120_21ef224
_021EF36C:
	.byte 0x0A, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0xE8, 0xF3, 0x1E, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x98, 0xF3, 0x1E, 0x02, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x74, 0xF3, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x7C, 0xF3, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x7C, 0xF3, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x6C, 0xF3, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x22, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x22, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x22, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x01, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF36C
