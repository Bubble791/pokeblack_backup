    .include "macros/function.inc"
	.include "overlay4.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy4_214f50c
ovy4_214f50c: ; 0x0214F50C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02016AD8
	add r6, r0, #0
	ldr r2, _0214F5CC ; =ovy4_214f5d0
	add r0, r5, #0
	mov r1, #0
	mov r3, #0x54
	bl sub_02016CB4
	str r0, [sp]
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	beq _0214F53E
	add r0, r5, #0
	bl sub_02016B20
	bl sub_0202BD80
_0214F53E:
	ldr r0, [sp]
	bl sub_02016EDC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x54
	blx sub_020787A8
	str r5, [r4, #4]
	str r7, [r4, #8]
	add r0, r6, #0
	bl sub_02017934
	str r0, [r4, #0x48]
	bl sub_0200B488
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x48]
	bl sub_020092E4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x48]
	bl sub_0202018C
	str r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02017364
	str r0, [r4, #0x18]
	add r0, r6, #0
	bl sub_0200D190
	str r0, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02017238
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x48]
	bl sub_02009B78
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x48]
	bl sub_02008DD0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x48]
	bl sub_02008DDC
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x48]
	bl sub_02009408
	str r0, [r4, #0x30]
	add r0, r6, #0
	bl sub_02017354
	str r0, [r4, #0x34]
	str r5, [r4, #0x4c]
	ldr r0, [r4, #0x1c]
	bl sub_0200D1AC
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x20]
	bl sub_0200A3DC
	str r0, [r4, #0x3c]
	mov r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0214F5CC: .word ovy4_214f5d0
	thumb_func_end ovy4_214f50c

	thumb_func_start ovy4_214f5d0
ovy4_214f5d0: ; 0x0214F5D0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #6
	bhi _0214F6B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0214F5EC: ; jump table
	.short _0214F5FA - _0214F5EC - 2 ; case 0
	.short _0214F60E - _0214F5EC - 2 ; case 1
	.short _0214F638 - _0214F5EC - 2 ; case 2
	.short _0214F64C - _0214F5EC - 2 ; case 3
	.short _0214F65E - _0214F5EC - 2 ; case 4
	.short _0214F688 - _0214F5EC - 2 ; case 5
	.short _0214F6AE - _0214F5EC - 2 ; case 6
_0214F5FA:
	ldr r0, [r4, #4]
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	bne _0214F6B4
	mov r0, #1
_0214F60A:
	str r0, [r5]
	b _0214F6B4
_0214F60E:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0214F628
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, #0
	mov r3, #0
	bl ovy36_21b870c
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0214F628:
	bl sub_02005C9C
	str r0, [r4]
	mov r0, #6
	bl sub_02005EA0
	mov r0, #2
	b _0214F60A
_0214F638:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl sub_020193A4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #3
	b _0214F60A
_0214F64C:
	ldr r0, [r4, #4]
	add r4, #0xc
	ldr r1, _0214F6BC ; =0x000000D6
	ldr r2, _0214F6C0 ; =0x021E1AB8
	add r3, r4, #0
	bl sub_02016A98
	mov r0, #4
	b _0214F60A
_0214F65E:
	ldr r0, [r4, #4]
	bl sub_02016AD4
	cmp r0, #0
	bne _0214F6B4
	ldr r0, [r4]
	ldr r1, _0214F6C4 ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #0x3c
	bl sub_02005E68
	ldr r0, [r4, #4]
	bl sub_02019494
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
	mov r0, #5
	b _0214F60A
_0214F688:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _0214F6AA
	mov r0, #1
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r3, #0
	bl ovy36_21B878C
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02016D68
_0214F6AA:
	mov r0, #6
	b _0214F60A
_0214F6AE:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0214F6B4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0214F6BC: .word 0x000000D6
_0214F6C0: .word 0x021E1AB8
_0214F6C4: .word 0x0000FFFF
	thumb_func_end ovy4_214f5d0
_0214F6C8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x0214F6C8
