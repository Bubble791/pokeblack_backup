    .include "macros/function.inc"
	.include "overlay3.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy3_214f500
ovy3_214f500: ; 0x0214F500
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r5, r2, #0
	ldr r0, [r4]
	ldr r6, [r5, #4]
	cmp r0, #6
	bhi _0214F5B0
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0214F51C: ; jump table
	.short _0214F52A - _0214F51C - 2 ; case 0
	.short _0214F54C - _0214F51C - 2 ; case 1
	.short _0214F560 - _0214F51C - 2 ; case 2
	.short _0214F57E - _0214F51C - 2 ; case 3
	.short _0214F58A - _0214F51C - 2 ; case 4
	.short _0214F58E - _0214F51C - 2 ; case 5
	.short _0214F5AC - _0214F51C - 2 ; case 6
_0214F52A:
	add r0, r6, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	bne _0214F5B0
	bl sub_02005C9C
	str r0, [r5]
	mov r0, #6
	bl sub_02005EA0
_0214F544:
	ldr r0, [r4]
	add r0, r0, #1
_0214F548:
	str r0, [r4]
	b _0214F5B0
_0214F54C:
	ldr r1, [r5, #8]
	add r0, r6, #0
	bl sub_020193A4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	mov r0, #2
_0214F55E:
	b _0214F548
_0214F560:
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	mov r1, #0
	str r0, [r5, #0x10]
	add r5, #0xc
	ldr r2, _0214F5B4 ; =0x0208FE14
	add r0, r6, #0
	mvn r1, r1
	add r3, r5, #0
	bl sub_02016A98
	b _0214F544
_0214F57E:
	add r0, r6, #0
	bl sub_02016AD4
	cmp r0, #0
	bne _0214F5B0
	b _0214F544
_0214F58A:
	add r0, r0, #1
	b _0214F55E
_0214F58E:
	ldr r0, [r5]
	ldr r1, _0214F5B8 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #0x3c
	bl sub_02005E68
	add r0, r6, #0
	bl sub_02019494
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	b _0214F544
_0214F5AC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0214F5B0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0214F5B4: .word 0x0208FE14
_0214F5B8: .word 0x0000FFFF
	thumb_func_end ovy3_214f500

	thumb_func_start ovy3_214f5bc
ovy3_214f5bc: ; 0x0214F5BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	ldr r2, _0214F5F8 ; =ovy3_214f500
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x1c
	bl sub_02016CB4
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	beq _0214F5E8
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BD80
_0214F5E8:
	add r0, r7, #0
	bl sub_02016EDC
	str r5, [r0, #4]
	str r4, [r0, #8]
	str r6, [r0, #0x14]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0214F5F8: .word ovy3_214f500
	thumb_func_end ovy3_214f5bc

	thumb_func_start ovy3_214F5FC
ovy3_214F5FC: ; 0x0214F5FC
	add r2, r1, #0
	ldmia r2!, {r1, r2}
	ldr r3, _0214F604 ; =ovy3_214f5bc
	bx r3
	.align 2, 0
_0214F604: .word ovy3_214f5bc
	thumb_func_end ovy3_214F5FC
_0214F608:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0214F608
