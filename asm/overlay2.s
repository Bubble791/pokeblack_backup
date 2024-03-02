    .include "macros/function.inc"
	.include "overlay2.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy2_214f500
ovy2_214f500: ; 0x0214F500
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	add r5, r2, #0
	ldr r0, [r4]
	ldr r6, [r5, #4]
	cmp r0, #8
	bls _0214F514
	b _0214F626
_0214F514:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0214F520: ; jump table
	.short _0214F532 - _0214F520 - 2 ; case 0
	.short _0214F554 - _0214F520 - 2 ; case 1
	.short _0214F570 - _0214F520 - 2 ; case 2
	.short _0214F582 - _0214F520 - 2 ; case 3
	.short _0214F5B8 - _0214F520 - 2 ; case 4
	.short _0214F5CA - _0214F520 - 2 ; case 5
	.short _0214F5DE - _0214F520 - 2 ; case 6
	.short _0214F5FC - _0214F520 - 2 ; case 7
	.short _0214F620 - _0214F520 - 2 ; case 8
_0214F532:
	add r0, r6, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	bne _0214F626
	bl sub_02005C9C
	str r0, [r5]
	mov r0, #6
	bl sub_02005EA0
_0214F54C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0214F626
_0214F554:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0214F56E
	ldr r1, [r5, #8]
	add r0, r6, #0
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0214F56E:
	b _0214F54C
_0214F570:
	ldr r1, [r5, #8]
	add r0, r6, #0
	bl sub_020193A4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	b _0214F54C
_0214F582:
	mov r0, #0x87
	str r0, [sp]
	ldr r3, _0214F62C ; =0x0214F6C0
	mov r0, #4
	mov r1, #0x14
	mov r2, #1
	bl sub_0203A1FC
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	str r7, [r5, #0xc]
	str r0, [r7, #8]
	add r0, r6, #0
	bl sub_02016AD8
	str r0, [r7]
	ldr r0, [r5, #0x18]
	ldr r1, _0214F630 ; =0x00000122
	str r0, [r7, #4]
	ldr r0, [r5, #0x14]
	ldr r2, _0214F634 ; =0x021FCF84
	str r0, [r7, #0xc]
	ldr r3, [r5, #0xc]
	add r0, r6, #0
	bl sub_02016A98
	b _0214F54C
_0214F5B8:
	add r0, r6, #0
	bl sub_02016AD4
	cmp r0, #0
	bne _0214F626
	ldr r0, [r5, #0xc]
	bl sub_0203A24C
	b _0214F54C
_0214F5CA:
	add r0, r6, #0
	bl sub_02016AD8
	bl sub_02017934
	bl sub_0200F2C4
	bl sub_0200F2F8
	b _0214F54C
_0214F5DE:
	add r0, r6, #0
	bl sub_02019494
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
	ldr r0, [r5]
	ldr r1, _0214F638 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #0x3c
	bl sub_02005E68
	b _0214F54C
_0214F5FC:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0214F61E
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r1, [r5, #8]
	add r0, r6, #0
	mov r3, #0
	bl ovy36_21B878C
	add r1, r0, #0
	add r0, r7, #0
	bl sub_02016D68
_0214F61E:
	b _0214F54C
_0214F620:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0214F626:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0214F62C: .word 0x0214F6C0
_0214F630: .word 0x00000122
_0214F634: .word 0x021FCF84
_0214F638: .word 0x0000FFFF
	thumb_func_end ovy2_214f500

	thumb_func_start ovy2_214f63c
ovy2_214f63c: ; 0x0214F63C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r7, r3, #0
	ldr r2, _0214F688 ; =ovy2_214f500
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x20
	bl sub_02016CB4
	str r0, [sp]
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	beq _0214F66A
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BD80
_0214F66A:
	ldr r0, [sp]
	bl sub_02016EDC
	str r5, [r0, #4]
	lsl r1, r6, #0x10
	str r4, [r0, #8]
	lsr r1, r1, #0x10
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x18]
	str r7, [r0, #0x14]
	str r1, [r0, #0x18]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0214F688: .word ovy2_214f500
	thumb_func_end ovy2_214f63c

	thumb_func_start ovy2_214f68c
ovy2_214f68c: ; 0x0214F68C
	push {r3, lr}
	add r3, r1, #0
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	bl ovy2_214f63c
	pop {r3, pc}
	thumb_func_end ovy2_214f68c
_0214F6A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x65, 0x76, 0x65, 0x6E, 0x74, 0x5F, 0x77, 0x69, 0x66, 0x69, 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65
	.byte 0x6D, 0x61, 0x74, 0x63, 0x68, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0214F6A0
