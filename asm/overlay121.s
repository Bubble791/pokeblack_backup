    .include "macros/function.inc"
	.include "overlay121.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy121_21eef80
ovy121_21eef80: ; 0x021EEF80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	add r0, r1, #0
	add r5, r2, #0
	bl sub_02180490
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	bl sub_021804BC
	bl sub_02016AD8
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_021804F0
	str r0, [r5]
	ldr r0, [sp, #4]
	bl sub_021804B8
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	bl sub_021804D8
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02163134
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	bl sub_021804C0
	str r0, [sp, #0x10]
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r5, r0
	add r2, r7, #0
	bl ovy121_21ef444
	add r6, r5, #0
	mov r4, #0
	add r6, #8
_021EEFDA:
	str r4, [sp]
	mov r0, #0x18
	mov r3, #0xc2
	mul r0, r4
	lsl r3, r3, #2
	ldr r1, [r5, #4]
	add r0, r6, r0
	add r2, r7, #0
	add r3, r5, r3
	bl ovy121_21ef1ec
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EEFDA
	mov r4, #0xc2
	lsl r4, r4, #2
	ldr r2, [sp, #8]
	add r0, r5, r4
	add r1, r5, #0
	bl ovy121_21ef61c
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x40
	ldr r3, [sp, #8]
	add r0, r5, r0
	add r2, r5, r4
	bl ovy121_21ef998
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_02181308
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21eef80

	thumb_func_start ovy121_21ef024
ovy121_21ef024: ; 0x021EF024
	push {r3, r4, r5, r6, r7, lr}
	add r0, r1, #0
	mov r1, #0
	add r6, r2, #0
	mov r5, #0
	bl sub_02181308
	add r4, r6, #0
	add r4, #8
	mov r7, #0x18
_021EF038:
	add r0, r5, #0
	mul r0, r7
	add r0, r4, r0
	bl ovy121_21ef2a4
	add r5, r5, #1
	cmp r5, #0x20
	blt _021EF038
	mov r4, #0xc2
	lsl r4, r4, #2
	add r0, r6, r4
	bl ovy121_21ef4e0
	add r4, #0x40
	add r0, r6, r4
	bl ovy121_21ef9f0
	mov r0, #0
	str r0, [r6]
	str r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy121_21ef024

	thumb_func_start ovy121_21ef064
ovy121_21ef064: ; 0x021EF064
	push {r3, r4, r5, r6, r7, lr}
	add r0, r1, #0
	str r1, [sp]
	add r5, r2, #0
	bl sub_021812D8
	add r2, r0, #0
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	bl ovy121_21ef4f0
	ldr r0, [sp]
	bl sub_021812CC
	cmp r0, #0
	beq _021EF0A0
	add r6, r5, #0
	mov r4, #0
	add r6, #8
	mov r7, #0x18
_021EF090:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ovy121_21ef350
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EF090
_021EF0A0:
	add r6, r5, #0
	mov r4, #0
	add r6, #8
	mov r7, #0x18
_021EF0A8:
	add r0, r4, #0
	mul r0, r7
	ldr r1, [r5, #4]
	ldr r2, [r5]
	add r0, r6, r0
	bl ovy121_21ef2b4
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EF0A8
	mov r1, #0xd2
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x40
	ldr r2, [sp]
	add r1, r5, r1
	bl ovy121_21efa34
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy121_21ef064
_021EF0D0:
	.byte 0xD2, 0x21, 0x89, 0x00, 0x01, 0x4B, 0x40, 0x18, 0x18, 0x47, 0xC0, 0x46, 0x19, 0xFA, 0x1E, 0x02

	thumb_func_start ovy121_21ef0e0
ovy121_21ef0e0: ; 0x021EF0E0
	push {r3, r4}
	mov r4, #0
	mov r1, #0x18
_021EF0E6:
	add r3, r4, #0
	mul r3, r1
	add r2, r0, r3
	ldrb r2, [r2, #8]
	cmp r2, #0
	bne _021EF0FA
	add r0, #8
	add r0, r0, r3
	pop {r3, r4}
	bx lr
_021EF0FA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EF0E6
	mov r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ovy121_21ef0e0

	thumb_func_start ovy121_21ef108
ovy121_21ef108: ; 0x021EF108
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #0x2c]
	cmp r3, #3
	bhi _021EF14C
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF126: ; jump table
	.short _021EF12E - _021EF126 - 2 ; case 0
	.short _021EF136 - _021EF126 - 2 ; case 1
	.short _021EF142 - _021EF126 - 2 ; case 2
	.short _021EF13E - _021EF126 - 2 ; case 3
_021EF12E:
	mov r0, #0
	str r0, [sp, #0x10]
	sub r0, r0, #1
_021EF134:
	b _021EF14A
_021EF136:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #1
	b _021EF134
_021EF13E:
	mov r0, #1
	b _021EF146
_021EF142:
	mov r0, #0
	mvn r0, r0
_021EF146:
	str r0, [sp, #0x10]
	mov r0, #0
_021EF14A:
	str r0, [sp, #0xc]
_021EF14C:
	ldr r0, [sp, #0x2c]
	mov r6, #0
	str r6, [r0]
_021EF152:
	mov r0, #0x18
	mul r0, r6
	add r4, r7, r0
	str r0, [sp, #8]
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021EF1DE
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	bne _021EF1DE
	ldr r0, [r4, #0x14]
	bl sub_021672A8
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_021672D8
	ldr r1, [sp]
	sub r1, r5, r1
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	ldr r1, [sp, #4]
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	cmp r4, #0
	beq _021EF19A
	neg r1, r4
	cmp r4, #0
	blt _021EF190
	add r1, r4, #0
_021EF190:
	add r0, r4, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_021EF19A:
	cmp r5, #0
	beq _021EF1B0
	neg r1, r5
	cmp r5, #0
	blt _021EF1A6
	add r1, r5, #0
_021EF1A6:
	add r0, r5, #0
	blx sub_0208D65C
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_021EF1B0:
	cmp r4, #0
	bne _021EF1C8
	cmp r5, #0
	bne _021EF1C8
	ldr r0, [sp, #0x2c]
	mov r1, #1
	str r1, [r0]
	ldr r0, [sp, #8]
	add r7, #8
	add sp, #0x14
	add r0, r7, r0
	pop {r4, r5, r6, r7, pc}
_021EF1C8:
	ldr r0, [sp, #0x10]
	cmp r4, r0
	bne _021EF1DE
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bne _021EF1DE
	ldr r0, [sp, #8]
	add r7, #8
	add sp, #0x14
	add r0, r7, r0
	pop {r4, r5, r6, r7, pc}
_021EF1DE:
	add r6, r6, #1
	cmp r6, #0x20
	blt _021EF152
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy121_21ef108

	thumb_func_start ovy121_21ef1ec
ovy121_21ef1ec: ; 0x021EF1EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r5, r3, #0
	mov r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r4, #0
	bl sub_02005748
	ldrb r1, [r5, #0xd]
	blx sub_0208D868
	lsl r0, r1, #1
	add r0, r5, r0
	ldrh r6, [r0, #0xe]
	ldr r0, _021EF29C ; =0x021EFBE0
	strh r6, [r0, #2]
	mov r0, #0
	bl sub_02005748
	ldr r1, [sp, #0x30]
	add r1, #0x30
	strh r1, [r7, #8]
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	bls _021EF24C
	ldr r1, [r5, #0x38]
_021EF224:
	lsl r2, r4, #4
	str r2, [sp, #8]
	ldr r2, [r1, r2]
	cmp r6, r2
	bne _021EF244
	mov r1, #6
	blx sub_0208D868
	ldr r2, [r5, #0x38]
	ldr r0, [sp, #8]
	add r2, r2, r0
	lsl r0, r1, #1
	add r0, r2, r0
	ldrh r0, [r0, #4]
	strh r0, [r7, #6]
	b _021EF24C
_021EF244:
	ldr r2, [r5, #0x3c]
	add r4, r4, #1
	cmp r4, r2
	blo _021EF224
_021EF24C:
	ldr r0, [sp]
	ldr r1, _021EF2A0 ; =0x021EFBE0
	ldr r2, [sp, #4]
	bl ovy12_2166874
	mov r4, #0
	str r0, [r7, #0xc]
	add r0, r5, #0
	strb r4, [r7]
	strb r4, [r7, #1]
	strb r4, [r7, #2]
	strb r4, [r7, #3]
	bl sub_021EF6B4
	strh r0, [r7, #0xa]
	ldr r0, [r7, #0xc]
	mov r1, #1
	mov r5, #1
	bl ovy12_2167534
	ldr r0, [r7, #0xc]
	mov r1, #1
	bl sub_021677BC
	add r6, sp, #0xc
	lsl r0, r5, #0xf
	str r4, [r6]
	str r4, [r6, #4]
	str r4, [r6, #8]
	bl sub_02005748
	lsl r1, r5, #0xe
	sub r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r7, #0xc]
	add r1, r6, #0
	bl sub_0216732C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF29C: .word 0x021EFBE0
_021EF2A0: .word 0x021EFBE0
	thumb_func_end ovy121_21ef1ec

	thumb_func_start ovy121_21ef2a4
ovy121_21ef2a4: ; 0x021EF2A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ovy12_2166940
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ovy121_21ef2a4

	thumb_func_start ovy121_21ef2b4
ovy121_21ef2b4: ; 0x021EF2B4
	push {r4, lr}
	ldrb r3, [r0]
	cmp r3, #0
	beq _021EF2C6
	ldrb r3, [r0, #2]
	lsl r4, r3, #2
	ldr r3, _021EF2C8 ; =0x021EFB80
	ldr r3, [r3, r4]
	blx r3
_021EF2C6:
	pop {r4, pc}
	.align 2, 0
_021EF2C8: .word 0x021EFB80
	thumb_func_end ovy121_21ef2b4

	thumb_func_start ovy121_21ef2cc
ovy121_21ef2cc: ; 0x021EF2CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #1
	strb r0, [r5]
	ldr r0, [r5, #0xc]
	mov r1, #0
	add r4, r3, #0
	bl ovy12_2167534
	ldr r6, _021EF348 ; =0x021EFBE0
	add r3, sp, #0
	mov r2, #4
_021EF2E6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EF2E6
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [r5, #0xc]
	bl sub_02167018
	add r1, sp, #0
	add r6, sp, #0x38
	strh r0, [r1, #2]
	ldrh r0, [r6, #8]
	mov r3, #0
	mov r7, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r5, #8]
	strh r0, [r1]
	ldrh r1, [r6]
	ldrh r2, [r6, #4]
	add r0, sp, #0
	bl sub_021682C0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl sub_02167C64
	strb r4, [r5, #2]
	ldrh r0, [r6, #8]
	mov r1, #1
	strb r7, [r5, #1]
	strb r0, [r5, #3]
	ldrh r0, [r6, #0xc]
	strh r0, [r5, #4]
	ldr r0, [r5, #0xc]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x16]
	bl sub_021677BC
	ldr r0, [sp, #0x48]
	ldr r1, _021EF34C ; =0x021EFB88
	lsl r2, r4, #2
	str r0, [r5, #0x10]
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021EF348: .word 0x021EFBE0
_021EF34C: .word 0x021EFB88
	thumb_func_end ovy121_21ef2cc

	thumb_func_start ovy121_21ef350
ovy121_21ef350: ; 0x021EF350
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _021EF378
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _021EF378
	ldr r0, [r4, #0xc]
	bl sub_02167038
	mov r1, #0x7d
	lsl r1, r1, #4
	cmp r0, r1
	bne _021EF378
	mov r0, #0
	strb r0, [r4, #2]
	add r0, r4, #0
	bl ovy121_21ef6e4
_021EF378:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy121_21ef350

	thumb_func_start sub_021EF37C
sub_021EF37C: ; 0x021EF37C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #1]
	ldr r0, [r0, #0xc]
	ldr r3, _021EF390 ; =ovy12_2167534
	mov r1, #1
	bx r3
	nop
_021EF390: .word ovy12_2167534
	thumb_func_end sub_021EF37C

	thumb_func_start ovy121_21ef394
ovy121_21ef394: ; 0x021EF394
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02167078
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021672A8
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_021672D8
	add r7, r0, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021EF3BA
	ldrh r5, [r4, #0x16]
	b _021EF3EE
_021EF3BA:
	ldrb r0, [r4, #3]
	cmp r5, r0
	beq _021EF3CC
	add r0, r5, #0
	bl sub_0215ED08
	ldrb r1, [r4, #3]
	cmp r1, r0
	bne _021EF3E6
_021EF3CC:
	mov r0, #2
	bl sub_02005748
	cmp r0, #0
	bne _021EF3DE
	add r0, r5, #2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	b _021EF3EE
_021EF3DE:
	add r0, r5, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	b _021EF3E8
_021EF3E6:
	add r0, r5, #0
_021EF3E8:
	bl sub_0215ED08
	add r5, r0, #0
_021EF3EE:
	add r0, r5, #0
	bl sub_0215EC4C
	add r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	bl sub_0215EC5C
	add r0, r7, r0
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	cmp r5, #1
	ldr r1, [r4, #0x10]
	bhi _021EF41A
	ldrh r0, [r1]
	cmp r2, r0
	blt _021EF418
	ldrh r0, [r1, #2]
	cmp r2, r0
	ble _021EF42E
_021EF418:
	b _021EF426
_021EF41A:
	ldrh r0, [r1, #4]
	cmp r6, r0
	blt _021EF426
	ldrh r0, [r1, #6]
	cmp r6, r0
	ble _021EF42E
_021EF426:
	add r0, r5, #0
	bl sub_0215ED08
	add r5, r0, #0
_021EF42E:
	ldrh r1, [r4, #0xa]
	ldr r0, [r4, #0xc]
	add r1, r1, r5
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2166e88
	mov r0, #1
	strh r0, [r4, #0x14]
	strh r5, [r4, #0x16]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21ef394

	thumb_func_start ovy121_21ef444
ovy121_21ef444: ; 0x021EF444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r3, [sp, #4]
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r5, r2, #0
	ldr r1, _021EF4D8 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	add r6, r2, #0
	orr r6, r0
	lsl r1, r6, #0x10
	mov r0, #0xb7
	lsr r1, r1, #0x10
	bl sub_0204AA30
	lsl r2, r6, #0x10
	add r7, r0, #0
	mov r1, #5
	lsr r2, r2, #0x10
	bl sub_0204AB1C
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl sub_0204AC0C
	lsr r0, r0, #2
	ldr r1, _021EF4DC ; =0x00000000
	beq _021EF490
_021EF482:
	lsl r2, r1, #2
	ldr r2, [r6, r2]
	cmp r5, r2
	beq _021EF490
	add r1, r1, #1
	cmp r1, r0
	blo _021EF482
_021EF490:
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x32
	str r4, [sp]
	mov r5, #0
	bl sub_0204AC58
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r7, #0
	mov r1, #6
	bl sub_0204AC0C
	add r6, r0, #0
	ldr r2, [sp, #4]
	add r0, r7, #0
	mov r1, #6
	bl sub_0204AB1C
	str r0, [r4, #0x38]
	lsr r0, r6, #4
	str r0, [r4, #0x3c]
	add r0, r7, #0
	bl sub_0204AB0C
	add r1, r5, #0
_021EF4C6:
	lsl r0, r5, #1
	add r0, r4, r0
	add r5, r5, #1
	strh r1, [r0, #0x32]
	cmp r5, #2
	blt _021EF4C6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF4D8: .word 0x00007FFF
_021EF4DC: .word 0x00000000
	thumb_func_end ovy121_21ef444

	thumb_func_start ovy121_21ef4e0
ovy121_21ef4e0: ; 0x021EF4E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #0x38]
	pop {r4, pc}
	thumb_func_end ovy121_21ef4e0

	thumb_func_start ovy121_21ef4f0
ovy121_21ef4f0: ; 0x021EF4F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldrb r0, [r6, #0xc]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _021EF558
	lsl r0, r2, #1
	add r0, r6, r0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x1a
	str r0, [sp, #8]
_021EF50E:
	lsl r0, r4, #1
	add r5, r6, r0
	mov r0, #0x32
	ldr r2, [sp, #4]
	mov r1, #0
	ldrsh r0, [r5, r0]
	ldrsh r1, [r2, r1]
	cmp r0, r1
	blt _021EF548
	add r0, r7, #0
	bl ovy121_21ef0e0
	mov ip, r0
	cmp r0, #0
	beq _021EF550
	mov r2, #0xc
	add r3, r4, #0
	mul r3, r2
	ldr r2, [sp, #8]
	mov r0, #0
	str r0, [sp]
	add r2, r2, r3
	add r0, r7, #0
	add r1, r6, #0
	mov r3, ip
	bl ovy121_21ef55c
	mov r0, #0
	b _021EF54E
_021EF548:
	mov r0, #0x32
	ldrsh r0, [r5, r0]
	add r0, r0, #1
_021EF54E:
	strh r0, [r5, #0x32]
_021EF550:
	ldrb r0, [r6, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF50E
_021EF558:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21ef4f0

	thumb_func_start ovy121_21ef55c
ovy121_21ef55c: ; 0x021EF55C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x40]
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	add r5, r2, #0
	mov r0, #0
	str r3, [sp, #0x18]
	bl sub_02005748
	ldrh r6, [r5, #8]
	str r0, [sp, #0x1c]
	cmp r6, #1
	bhi _021EF59C
	ldrh r7, [r5, #4]
	ldrh r1, [r5, #6]
	sub r1, r1, r7
	add r1, r1, #1
	blx sub_0208D868
	add r0, r7, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	cmp r6, #0
	ldrh r0, [r5]
	bne _021EF598
	sub r0, r0, r4
	b _021EF5BE
_021EF598:
	add r0, r0, r4
	b _021EF5BE
_021EF59C:
	cmp r6, #2
	ldrh r0, [r5, #4]
	bne _021EF5A6
	sub r0, r0, r4
	b _021EF5A8
_021EF5A6:
	add r0, r0, r4
_021EF5A8:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	ldrh r7, [r5]
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x1c]
	sub r1, r1, r7
	add r1, r1, #1
	blx sub_0208D868
	add r0, r7, r1
_021EF5BE:
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	add r2, r7, #0
	add r3, r6, #0
	bl ovy121_21ef108
	cmp r0, #0
	bne _021EF5EA
	ldr r0, [sp, #0x1c]
	mov r1, #0xa
	blx sub_0208D868
	cmp r1, #0
	bne _021EF5EA
	mov r0, #1
	str r0, [sp, #0x20]
_021EF5EA:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _021EF616
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldrh r0, [r5, #8]
	str r7, [sp, #4]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	ldrh r0, [r5, #0xa]
	ldr r1, [r1, #4]
	ldr r2, [r2]
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x20]
	bl ovy121_21ef2cc
_021EF616:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy121_21ef55c

	thumb_func_start ovy121_21ef61c
ovy121_21ef61c: ; 0x021EF61C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	add r5, r1, #0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	ble _021EF6AE
	ldr r0, [sp, #4]
	lsl r1, r2, #1
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #0x18]
	add r0, #0x1a
	str r0, [sp, #0x18]
_021EF640:
	ldr r1, [sp, #0x14]
	mov r0, #0xc
	mul r0, r1
	ldr r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r1, r0
	ldrh r1, [r0, #0x24]
	mov r0, #6
	ldr r2, [sp, #0xc]
	mul r0, r1
	mov r1, #0
	ldrsh r1, [r2, r1]
	blx sub_0208D65C
	str r0, [sp, #0x10]
	mov r4, #0
	mov r6, #0
	cmp r0, #0
	ble _021EF69E
_021EF666:
	add r0, r5, #0
	bl ovy121_21ef0e0
	add r7, r0, #0
	beq _021EF696
	add r0, r4, #0
	mov r1, #6
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r2, r3, r2
	add r0, r5, #0
	add r3, r7, #0
	bl ovy121_21ef55c
	ldr r1, [sp, #0xc]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r4, r4, r0
_021EF696:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blt _021EF666
_021EF69E:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r1, [r0, #0xc]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blt _021EF640
_021EF6AE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy121_21ef61c

	thumb_func_start sub_021EF6B4
sub_021EF6B4: ; 0x021EF6B4
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	bne _021EF6BE
	mov r0, #0x14
	bx lr
_021EF6BE:
	cmp r0, #4
	bne _021EF6C6
	mov r0, #0x10
	bx lr
_021EF6C6:
	cmp r0, #6
	bne _021EF6CE
	mov r0, #0x4c
	bx lr
_021EF6CE:
	cmp r0, #8
	bne _021EF6D6
	mov r0, #0xc
	bx lr
_021EF6D6:
	cmp r0, #0x10
	bne _021EF6DE
	mov r0, #8
	bx lr
_021EF6DE:
	mov r0, #0xc
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF6B4

	thumb_func_start ovy121_21ef6e4
ovy121_21ef6e4: ; 0x021EF6E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0216763C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02167788
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ovy12_2167580
	mov r1, #0x7d
	ldr r0, [r4, #0xc]
	lsl r1, r1, #4
	bl sub_02167034
	pop {r4, pc}
	thumb_func_end ovy121_21ef6e4

	thumb_func_start ovy121_21ef70c
ovy121_21ef70c: ; 0x021EF70C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0216763C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02167788
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ovy12_2167580
	mov r1, #0x7d
	ldr r0, [r4, #0xc]
	lsl r1, r1, #4
	bl sub_02167034
	pop {r4, pc}
	thumb_func_end ovy121_21ef70c

	thumb_func_start ovy121_21ef734
ovy121_21ef734: ; 0x021EF734
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #1]
	cmp r1, #0
	beq _021EF74E
	cmp r1, #1
	beq _021EF75E
	cmp r1, #2
	beq _021EF7A8
	add sp, #8
	pop {r3, r4, r5, pc}
_021EF74E:
	ldr r0, [r5, #0xc]
	bl sub_02166ECC
	cmp r0, #0
	beq _021EF7AC
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_021EF75E:
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _021EF76C
	mov r0, #2
	add sp, #8
	strb r0, [r5, #1]
	pop {r3, r4, r5, pc}
_021EF76C:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	mov r3, #2
	bl ovy121_21ef86c
	cmp r0, #0
	beq _021EF78A
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy121_21ef394
	b _021EF7A0
_021EF78A:
	ldrh r2, [r5, #0xa]
	ldrb r1, [r5, #3]
	ldr r0, [r5, #0xc]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2166e88
	ldrh r0, [r5, #4]
	sub r0, r0, #1
	strh r0, [r5, #4]
_021EF7A0:
	mov r0, #0
	add sp, #8
	strb r0, [r5, #1]
	pop {r3, r4, r5, pc}
_021EF7A8:
	bl sub_021EF37C
_021EF7AC:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ovy121_21ef734

	thumb_func_start ovy121_21ef7b0
ovy121_21ef7b0: ; 0x021EF7B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, #1]
	add r6, r2, #0
	cmp r1, #0
	beq _021EF7CC
	cmp r1, #1
	beq _021EF7DC
	cmp r1, #2
	beq _021EF864
	add sp, #8
	pop {r4, r5, r6, pc}
_021EF7CC:
	ldr r0, [r5, #0xc]
	bl sub_02166ECC
	cmp r0, #0
	beq _021EF868
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_021EF7DC:
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _021EF7EA
	mov r0, #2
	add sp, #8
	strb r0, [r5, #1]
	pop {r4, r5, r6, pc}
_021EF7EA:
	add r0, r6, #0
	bl sub_0219A6A0
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	mov r3, #1
	mov r6, #1
	bl ovy121_21ef8d8
	cmp r0, #0
	beq _021EF80E
	ldrh r1, [r5, #6]
	ldr r0, [r5, #0xc]
	bl sub_02167034
	add sp, #8
	pop {r4, r5, r6, pc}
_021EF80E:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #4
	add r3, r6, #0
	bl ovy121_21ef86c
	cmp r0, #0
	beq _021EF83C
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ovy121_21ef394
	mov r1, #0x7d
	ldr r0, [r5, #0xc]
	lsl r1, r1, #4
	bl sub_02167034
	add r0, r5, #0
	bl ovy121_21ef350
	b _021EF85C
_021EF83C:
	ldrh r2, [r5, #0xa]
	ldrb r1, [r5, #3]
	ldr r0, [r5, #0xc]
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2166e88
	ldrh r0, [r5, #4]
	mov r1, #0x7d
	lsl r1, r1, #4
	sub r0, r0, #1
	strh r0, [r5, #4]
	ldr r0, [r5, #0xc]
	bl sub_02167034
_021EF85C:
	mov r0, #0
	add sp, #8
	strb r0, [r5, #1]
	pop {r4, r5, r6, pc}
_021EF864:
	bl sub_021EF37C
_021EF868:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy121_21ef7b0

	thumb_func_start ovy121_21ef86c
ovy121_21ef86c: ; 0x021EF86C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	str r2, [sp]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #8
	add r7, r3, #0
	bl ovy12_2167870
	cmp r0, #1
	bne _021EF8D2
_021EF88C:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0xc]
	cmp r1, r0
	beq _021EF8C4
	mov r1, #0x80
	bl sub_02166FDC
	cmp r0, #0
	bne _021EF8C4
	ldr r0, [sp, #4]
	bl ovy12_2167520
	cmp r0, #0
	bne _021EF8C4
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy121_21ef8d8
	cmp r0, #0
	beq _021EF8C4
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add sp, #0xc
	str r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021EF8C4:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #8
	bl ovy12_2167870
	cmp r0, #1
	beq _021EF88C
_021EF8D2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21ef86c

	thumb_func_start ovy121_21ef8d8
ovy121_21ef8d8: ; 0x021EF8D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_021672A8
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_021672D8
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl sub_021672A8
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	bl sub_021672D8
	str r0, [sp, #0x18]
	str r6, [sp]
	ldrb r0, [r5, #3]
	str r7, [sp, #4]
	ldr r1, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl ovy121_21ef948
	cmp r0, #0
	beq _021EF922
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF922:
	add r0, r4, #0
	bl sub_02167270
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02167288
	add r3, r0, #0
	str r6, [sp]
	ldrb r0, [r5, #3]
	str r7, [sp, #4]
	ldr r1, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	bl ovy121_21ef948
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21ef8d8

	thumb_func_start ovy121_21ef948
ovy121_21ef948: ; 0x021EF948
	push {r4, r5}
	add r5, sp, #8
	ldrh r5, [r5, #8]
	cmp r5, #3
	bhi _021EF978
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021EF95E: ; jump table
	.short _021EF966 - _021EF95E - 2 ; case 0
	.short _021EF96C - _021EF95E - 2 ; case 1
	.short _021EF970 - _021EF95E - 2 ; case 2
	.short _021EF974 - _021EF95E - 2 ; case 3
_021EF966:
	sub r4, r1, r3
_021EF968:
	sub r0, r0, r2
	b _021EF978
_021EF96C:
	sub r4, r3, r1
	b _021EF968
_021EF970:
	sub r4, r0, r2
	b _021EF976
_021EF974:
	sub r4, r2, r0
_021EF976:
	sub r0, r1, r3
_021EF978:
	add r1, sp, #8
	ldrh r2, [r1]
	cmp r4, r2
	bgt _021EF990
	ldrh r1, [r1, #4]
	cmp r4, r1
	blt _021EF990
	cmp r0, #0
	bne _021EF990
	mov r0, #1
	pop {r4, r5}
	bx lr
_021EF990:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ovy121_21ef948

	thumb_func_start ovy121_21ef998
ovy121_21ef998: ; 0x021EF998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r2, [sp]
	mov r0, #0
	add r6, r1, #0
	add r7, r3, #0
	mov r4, #0
	bl sub_02005748
	ldr r1, [sp]
	lsl r2, r7, #1
	ldrsh r1, [r1, r2]
	str r0, [sp, #4]
	strh r4, [r5]
	blx sub_0208D868
	add r1, #0x10
	strh r1, [r5, #2]
	add r3, sp, #0x20
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #3
	mov r2, #0xd1
	bl GFL_MsgSysLoadData
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	mov r1, #0xf
	and r0, r1
	str r6, [r5, #0xc]
	str r0, [r5, #4]
	add r5, #0x10
_021EF9DA:
	lsl r0, r4, #3
	lsl r1, r4, #0x10
	add r0, r5, r0
	lsr r1, r1, #0x10
	bl sub_021EFAD0
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EF9DA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21ef998

	thumb_func_start ovy121_21ef9f0
ovy121_21ef9f0: ; 0x021EF9F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x10
_021EF9FA:
	lsl r0, r4, #3
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl ovy121_21efb64
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EF9FA
	ldr r0, [r5, #8]
	mov r4, #0
	str r4, [r5, #0xc]
	bl GFL_MsgDataFree
	str r4, [r5, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ovy121_21ef9f0

	thumb_func_start ovy121_21efa18
ovy121_21efa18: ; 0x021EFA18
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r4, #0
	add r6, #0x10
_021EFA22:
	lsl r0, r4, #3
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl ovy121_21efb64
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EFA22
	pop {r4, r5, r6, pc}
	thumb_func_end ovy121_21efa18

	thumb_func_start ovy121_21efa34
ovy121_21efa34: ; 0x021EFA34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r2, #0
	mov r0, #0
	add r6, r1, #0
	mov r4, #0
	bl sub_02005748
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_021812D8
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_021812CC
	cmp r0, #0
	bne _021EFAB8
	ldrsh r0, [r5, r4]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #2
	ldrsh r1, [r5, r4]
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _021EFA9E
	ldrb r0, [r6, #0x17]
	add r1, r5, #0
	add r1, #0x10
	str r0, [sp]
	ldr r0, [r5, #4]
	ldrb r3, [r6, #0x16]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #8]
	bl ovy121_21efaf0
	ldr r0, [r5, #4]
	strh r4, [r5]
	add r1, r0, #1
	mov r0, #0xf
	and r0, r1
	ldr r1, [sp, #8]
	str r0, [r5, #4]
	lsl r1, r1, #1
	ldrsh r1, [r6, r1]
	ldr r0, [sp, #4]
	blx sub_0208D868
	add r1, #0x10
	strh r1, [r5, #2]
_021EFA9E:
	add r6, r5, #0
	mov r4, #0
	add r6, #0x10
_021EFAA4:
	lsl r0, r4, #3
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl ovy121_21efb34
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EFAA4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EFAB8:
	add r6, r5, #0
	add r6, #0x10
_021EFABC:
	lsl r0, r4, #3
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	bl ovy121_21efb64
	add r4, r4, #1
	cmp r4, #0x10
	blt _021EFABC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy121_21efa34

	thumb_func_start sub_021EFAD0
sub_021EFAD0: ; 0x021EFAD0
	ldr r2, _021EFAE8 ; =0x021EFBA0
	mov r3, #0
	ldrb r2, [r2, r1]
	strh r3, [r0]
	strh r1, [r0, #4]
	strb r2, [r0, #2]
	ldr r2, _021EFAEC ; =0x021EFB90
	strh r3, [r0, #6]
	ldrb r2, [r2, r1]
	strb r2, [r0, #3]
	bx lr
	nop
_021EFAE8: .word 0x021EFBA0
_021EFAEC: .word 0x021EFB90
	thumb_func_end sub_021EFAD0

	thumb_func_start ovy121_21efaf0
ovy121_21efaf0: ; 0x021EFAF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02005748
	mov r1, #1
	strh r1, [r5]
	mov r1, #0
	strh r1, [r5, #6]
	ldr r1, [sp, #0x28]
	blx sub_0208D868
	add r2, r1, #0
	ldrb r0, [r5, #2]
	add r1, r7, #0
	add r2, r4, r2
	str r0, [sp]
	ldrb r0, [r5, #3]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r3, [r5, #4]
	add r0, r6, #0
	bl sub_02188D6C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy121_21efaf0

	thumb_func_start ovy121_21efb34
ovy121_21efb34: ; 0x021EFB34
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021EFB5A
	mov r0, #6
	ldrsh r2, [r4, r0]
	add r2, r2, #1
	strh r2, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _021EFB5A
	add r0, r1, #0
	ldrh r1, [r4, #4]
	bl sub_02188E90
	add r0, r4, #0
	bl sub_021EFB5C
_021EFB5A:
	pop {r4, pc}
	thumb_func_end ovy121_21efb34

	thumb_func_start sub_021EFB5C
sub_021EFB5C: ; 0x021EFB5C
	mov r1, #0
	strh r1, [r0, #6]
	strh r1, [r0]
	bx lr
	thumb_func_end sub_021EFB5C

	thumb_func_start ovy121_21efb64
ovy121_21efb64: ; 0x021EFB64
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021EFB7C
	add r0, r1, #0
	ldrh r1, [r4, #4]
	bl sub_02188E90
	add r0, r4, #0
	bl sub_021EFB5C
_021EFB7C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy121_21efb64
_021EFB80:
	.byte 0x35, 0xF7, 0x1E, 0x02, 0xB1, 0xF7, 0x1E, 0x02, 0xE5, 0xF6, 0x1E, 0x02, 0x0D, 0xF7, 0x1E, 0x02
	.byte 0x06, 0x02, 0x11, 0x0E, 0x11, 0x0A, 0x0E, 0x02, 0x0A, 0x11, 0x0A, 0x06, 0x02, 0x06, 0x0E, 0x06
	.byte 0x01, 0x16, 0x02, 0x14, 0x04, 0x15, 0x03, 0x13, 0x01, 0x13, 0x02, 0x16, 0x03, 0x14, 0x04, 0x15
	.byte 0x00, 0x00, 0x00, 0x00, 0xD8, 0x03, 0x00, 0x00, 0x81, 0xEF, 0x1E, 0x02, 0x25, 0xF0, 0x1E, 0x02
	.byte 0x65, 0xF0, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x30, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EFB80
