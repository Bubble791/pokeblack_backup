    .include "macros/function.inc"
	.include "overlay108.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy108_21eec80
ovy108_21eec80: ; 0x021EEC80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_021804C0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021804BC
	add r6, r0, #0
	bl sub_02016AD8
	bl sub_0201793C
	str r0, [sp]
	add r0, r5, #0
	bl sub_021804D8
	add r1, sp, #4
	add r2, sp, #8
	add r7, r0, #0
	bl ovy108_21eef58
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_0200BAC4
	ldr r1, [sp, #8]
	strh r1, [r0, #2]
	ldr r1, [sp, #4]
	strh r1, [r0, #4]
	str r7, [r0, #8]
	strh r4, [r0, #0xc]
	str r6, [r0, #0x1c]
	str r5, [r0, #0x20]
	ldrh r2, [r0, #2]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021EECE0 ; =0x021EEFEC
	ldr r2, [r1, r3]
	cmp r2, #0
	beq _021EECDA
	add r1, r5, #0
	blx r2
_021EECDA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EECE0: .word 0x021EEFEC
	thumb_func_end ovy108_21eec80

	thumb_func_start ovy108_21eece4
ovy108_21eece4: ; 0x021EECE4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_021804C0
	add r0, r4, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021804D8
	add r1, sp, #0
	add r2, sp, #4
	bl ovy108_21eef58
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0200BAC4
	ldrh r2, [r0, #2]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021EED2C ; =0x021EEFF0
	ldr r2, [r1, r3]
	cmp r2, #0
	beq _021EED28
	add r1, r4, #0
	blx r2
_021EED28:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EED2C: .word 0x021EEFF0
	thumb_func_end ovy108_21eece4

	thumb_func_start ovy108_21eed30
ovy108_21eed30: ; 0x021EED30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021804D8
	add r1, sp, #0
	add r2, sp, #4
	bl ovy108_21eef58
	ldr r0, [sp, #4]
	mov r7, #0xc
	add r1, r0, #0
	ldr r6, _021EED7C ; =0x021EEFF4
	mul r1, r7
	ldr r0, [r6, r1]
	cmp r0, #0
	beq _021EED76
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_0200BAC4
	ldr r2, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	mul r3, r7
	ldr r2, [r6, r3]
	blx r2
_021EED76:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED7C: .word 0x021EEFF4
	thumb_func_end ovy108_21eed30

	thumb_func_start ovy108_21eed80
ovy108_21eed80: ; 0x021EED80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_021804C0
	add r0, r4, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021804D8
	add r1, sp, #0
	add r2, sp, #4
	bl ovy108_21eef58
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0200BAC4
	ldr r5, [r0, #0x24]
	add r0, r4, #0
	bl sub_0218050C
	add r1, r6, #0
	add r2, r7, #0
	bl sub_021C6574
	str r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy108_21eed80

	thumb_func_start ovy108_21eedcc
ovy108_21eedcc: ; 0x021EEDCC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_021804C0
	add r0, r5, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021804D8
	add r1, sp, #0
	add r2, sp, #4
	bl ovy108_21eef58
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_0200BAC4
	ldr r0, [r0, #0x24]
	ldr r0, [r0]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy108_21eedcc

	thumb_func_start ovy108_21eee04
ovy108_21eee04: ; 0x021EEE04
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0218050C
	add r4, r0, #0
	ldr r0, _021EEE38 ; =0x00000112
	ldr r3, _021EEE3C ; =0x021EF080
	str r0, [sp]
	ldrh r0, [r5, #0xc]
	mov r1, #4
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r5, #0x24]
	mov r0, #0xd
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #4
	mov r2, #1
	bl sub_021A373C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EEE38: .word 0x00000112
_021EEE3C: .word 0x021EF080
	thumb_func_end ovy108_21eee04
_021EEE40:
	.byte 0x40, 0x6A, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy108_21eee4c
ovy108_21eee4c: ; 0x021EEE4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021804D8
	cmp r0, #0x4b
	bne _021EEE7E
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0200BAC4
	cmp r0, #0
	beq _021EEE7E
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _021EEE7E
	mov r0, #1
	strb r0, [r1]
_021EEE7E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy108_21eee4c

	thumb_func_start ovy108_21eee80
ovy108_21eee80: ; 0x021EEE80
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x59
	lsl r0, r0, #2
	str r0, [sp]
	ldrh r0, [r4, #0xc]
	ldr r3, _021EEEA0 ; =0x021EF080
	mov r1, #0xc
	mov r2, #1
	bl GFL_HeapAllocate
	str r0, [r4, #0x24]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EEEA0: .word 0x021EF080
	thumb_func_end ovy108_21eee80
_021EEEA4:
	.byte 0x40, 0x6A, 0x01, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start ovy108_21eeeb0
ovy108_21eeeb0: ; 0x021EEEB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r3, _021EEF54 ; =0x021EEF8C
	add r5, r0, #0
	add r2, sp, #0
	mov r4, #0
	add r0, sp, #0x10
	add r7, r1, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r5, [r5, #0x24]
	add r0, r7, #0
	bl sub_021804D4
	ldrb r1, [r5, #1]
	cmp r1, #0
	beq _021EEEEA
	cmp r1, #1
	beq _021EEF0C
	cmp r1, #2
	beq _021EEF24
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021EEEEA:
	ldrb r0, [r5]
	cmp r0, #1
	beq _021EEF50
	ldrb r0, [r5, #2]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	str r0, [r5, #4]
	ldrb r0, [r5, #2]
	add r0, r0, #1
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	mov r0, #3
	and r0, r1
	strb r0, [r5, #2]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_021EEF0C:
	ldr r0, [r5, #4]
	sub r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0
	bgt _021EEF50
	mov r0, #1
	str r0, [r5, #8]
	ldrb r0, [r5, #1]
	add sp, #0x1c
	add r0, r0, #1
	strb r0, [r5, #1]
	pop {r4, r5, r6, r7, pc}
_021EEF24:
	ldr r1, [r5, #8]
	lsl r1, r1, #0xc
	str r1, [sp, #0x14]
	add r1, sp, #0x10
	bl sub_021852D0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021EEF38
	strb r4, [r5, #1]
_021EEF38:
	ldr r0, [r5, #8]
	cmp r0, #0
	bge _021EEF4A
	add r0, r0, #2
	str r0, [r5, #8]
	cmp r0, #0
	ble _021EEF4A
	mov r0, #0
	str r0, [r5, #8]
_021EEF4A:
	ldr r0, [r5, #8]
	neg r0, r0
	str r0, [r5, #8]
_021EEF50:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEF54: .word 0x021EEF8C
	thumb_func_end ovy108_21eeeb0

	thumb_func_start ovy108_21eef58
ovy108_21eef58: ; 0x021EEF58
	push {r3, r4, r5, r6}
	ldr r5, _021EEF84 ; =0x021EEF9C
	mov r3, #0
_021EEF5E:
	lsl r6, r3, #3
	ldr r4, [r5, r6]
	cmp r0, r4
	bne _021EEF72
	ldr r0, _021EEF88 ; =0x021EEFA0
	ldr r0, [r0, r6]
	str r0, [r1]
	str r3, [r2]
	pop {r3, r4, r5, r6}
	bx lr
_021EEF72:
	add r3, r3, #1
	cmp r3, #0xa
	blt _021EEF5E
	mov r0, #0
	str r0, [r1]
	str r0, [r2]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021EEF84: .word 0x021EEF9C
_021EEF88: .word 0x021EEFA0
	thumb_func_end ovy108_21eef58
_021EEF8C:
	.byte 0x3C, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00
	.byte 0x14, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x49, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02
	.byte 0x41, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02, 0x41, 0xEE, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02, 0x41, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0xEE, 0x1E, 0x02, 0x41, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02
	.byte 0x41, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02, 0x41, 0xEE, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02, 0x41, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x81, 0xEE, 0x1E, 0x02, 0xA5, 0xEE, 0x1E, 0x02, 0xB1, 0xEE, 0x1E, 0x02, 0x05, 0xEE, 0x1E, 0x02
	.byte 0x41, 0xEE, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x05, 0xEE, 0x1E, 0x02, 0x41, 0xEE, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x66, 0x69, 0x65, 0x6C, 0x64, 0x5F, 0x67, 0x69, 0x6D, 0x6D, 0x69, 0x63, 0x6B, 0x5F, 0x62, 0x73
	.byte 0x75, 0x62, 0x77, 0x61, 0x79, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EEF8C
