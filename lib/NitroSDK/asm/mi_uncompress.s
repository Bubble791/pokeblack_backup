	.include "asm/macros.inc"
	.include "mi_uncompress.inc"
	.include "global.inc"

	.text

	arm_func_start MI_UncompressLZ8
MI_UncompressLZ8: ; 0x0207909C
	stmdb sp!, {r4, r5, r6, r7, lr}
	ldr r5, [r0], #4
	mov r2, r5, lsr #8
	mov r7, #0
	tst r5, #0xf
	movne r7, #1
_020790B4:
	cmp r2, #0
	ble _02079174
	ldrb lr, [r0], #1
	mov r4, #8
_020790C4:
	subs r4, r4, #1
	blt _020790B4
	tst lr, #0x80
	bne _020790E8
	ldrb r6, [r0], #1
	swpb r6, r6, [r1]
	add r1, r1, #1
	sub r2, r2, #1
	b _02079164
_020790E8:
	ldrb r5, [r0]
	cmp r7, #0
	moveq r6, #3
	beq _02079130
	tst r5, #0xe0
	movne r6, #1
	bne _02079130
	add r0, r0, #1
	and r6, r5, #0xf
	mov r6, r6, lsl #4
	tst r5, #0x10
	beq _02079128
	mov r6, r6, lsl #8
	ldrb r5, [r0], #1
	add r6, r6, r5, lsl #4
	add r6, r6, #0x100
_02079128:
	add r6, r6, #0x11
	ldrb r5, [r0]
_02079130:
	add r3, r6, r5, asr #4
	add r0, r0, #1
	and r5, r5, #0xf
	mov ip, r5, lsl #8
	ldrb r6, [r0], #1
	orr r5, r6, ip
	add ip, r5, #1
	sub r2, r2, r3
_02079150:
	ldrb r5, [r1, -ip]
	swpb r5, r5, [r1]
	add r1, r1, #1
	subs r3, r3, #1
	bgt _02079150
_02079164:
	cmp r2, #0
	movgt lr, lr, lsl #1
	bgt _020790C4
	b _020790B4
_02079174:
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end MI_UncompressLZ8