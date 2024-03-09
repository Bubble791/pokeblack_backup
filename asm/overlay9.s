    .include "macros/function.inc"
	.include "overlay9.inc"
	.include "global.inc"

	.public ovy36_21b878c
	.text

	thumb_func_start ovy9_0214F500
ovy9_0214F500: ; 0x0214F500
	add r2, r1, #0
	ldmia r2!, {r1, r2}
	ldr r3, _0214F508 ; =ovy9_214f50c
	bx r3
	.align 2, 0
_0214F508: .word ovy9_214f50c
	thumb_func_end ovy9_0214F500

	thumb_func_start ovy9_214f50c
ovy9_214f50c: ; 0x0214F50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02016AD8
	ldr r2, _0214F54C ; =ovy9_214f550
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x10
	bl sub_02016CB4
	add r7, r0, #0
	bl sub_02016EDC
	str r4, [r0]
	str r5, [r0, #4]
	str r6, [r0, #0xc]
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	beq _0214F548
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BD80
_0214F548:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0214F54C: .word ovy9_214f550
	thumb_func_end ovy9_214f50c

	thumb_func_start ovy9_214f550
ovy9_214f550: ; 0x0214F550
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	ldr r6, [r5, #4]
	add r7, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	bl sub_02016AF0
	add r1, r0, #0
	ldr r0, [r4]
	cmp r0, #7
	bhi _0214F604
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0214F576: ; jump table
	.short _0214F586 - _0214F576 - 2 ; case 0
	.short _0214F596 - _0214F576 - 2 ; case 1
	.short _0214F5B0 - _0214F576 - 2 ; case 2
	.short _0214F5B8 - _0214F576 - 2 ; case 3
	.short _0214F5C6 - _0214F576 - 2 ; case 4
	.short _0214F5E2 - _0214F576 - 2 ; case 5
	.short _0214F5EA - _0214F576 - 2 ; case 6
	.short _0214F5FE - _0214F576 - 2 ; case 7
_0214F586:
	add r0, r6, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	bne _0214F604
_0214F594:
	b _0214F5A8
_0214F596:
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
_0214F5A0:
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0214F5A8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0214F604
_0214F5B0:
	add r0, r6, #0
	bl sub_020193A4
	b _0214F5A0
_0214F5B8:
	ldr r1, _0214F60C ; =0x000000BF
	ldr r2, _0214F610 ; =0x021B7168
	add r0, r6, #0
	add r3, r5, #0
	bl sub_02016A98
	b _0214F594
_0214F5C6:
	add r0, r6, #0
	bl sub_02016AD4
	cmp r0, #0
	bne _0214F604
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0214F5DA
	mov r1, #1
	b _0214F5DC
_0214F5DA:
	mov r1, #0
_0214F5DC:
	ldr r0, [r5, #0xc]
	strh r1, [r0]
	b _0214F594
_0214F5E2:
	add r0, r6, #0
	bl sub_02019494
	b _0214F5A0
_0214F5EA:
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	str r2, [sp, #8]
	bl ovy36_21b878c
	b _0214F5A0
_0214F5FE:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0214F604:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0214F60C: .word 0x000000BF
_0214F610: .word 0x021B7168
	thumb_func_end ovy9_214f550

