    .include "macros/function.inc"
	.include "overlay116.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy116_21eec80
ovy116_21eec80: ; 0x021EEC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x10
	bl ovy36_2180ff0
	add r0, r5, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r4, #0
	bl ovy116_21eeee0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy116_21eec80

	thumb_func_start ovy116_21eecb0
ovy116_21eecb0: ; 0x021EECB0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl sub_021EF088
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy116_21eecb0

	thumb_func_start ovy116_21eecc8
ovy116_21eecc8: ; 0x021EECC8
	push {r4, lr}
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EED92
	cmp r0, #1
	bne _021EED2E
	ldr r2, [r4, #0xc]
	ldr r1, _021EED9C ; =0x00000122
	cmp r2, r1
	bhi _021EECF4
	bhs _021EED1E
	cmp r2, #0
	bhi _021EECEE
	beq _021EED14
	b _021EED80
_021EECEE:
	cmp r2, #0x78
	beq _021EED18
	b _021EED80
_021EECF4:
	add r0, r1, #0
	add r0, #0xbe
	cmp r2, r0
	bhi _021EED0C
	add r0, r1, #0
	add r0, #0xbe
	cmp r2, r0
	bhs _021EED26
	add r1, #0x50
	cmp r2, r1
	beq _021EED22
	b _021EED80
_021EED0C:
	add r1, #0xd0
	cmp r2, r1
	beq _021EED2A
	b _021EED80
_021EED14:
	ldr r0, _021EEDA0 ; =0x000008EF
	b _021EED7C
_021EED18:
	mov r0, #0x8f
	lsl r0, r0, #4
	b _021EED7C
_021EED1E:
	ldr r0, _021EEDA4 ; =0x000008F1
	b _021EED7C
_021EED22:
	ldr r0, _021EEDA8 ; =0x000008F2
	b _021EED7C
_021EED26:
	ldr r0, _021EEDAC ; =0x000008F3
	b _021EED7C
_021EED2A:
	ldr r0, _021EEDB0 ; =0x000008F4
	b _021EED7C
_021EED2E:
	cmp r0, #2
	bne _021EED3C
	ldr r0, [r4, #0xc]
	cmp r0, #5
	bne _021EED80
	ldr r0, _021EEDB4 ; =0x000008FD
	b _021EED7C
_021EED3C:
	cmp r0, #3
	bne _021EED80
	ldr r0, [r4, #0xc]
	cmp r0, #0x3c
	bhi _021EED64
	bhs _021EED76
	cmp r0, #0x23
	bhi _021EED5E
	bhs _021EED76
	cmp r0, #0xd
	bhi _021EED80
	cmp r0, #0xa
	blo _021EED80
	beq _021EED76
	cmp r0, #0xd
	beq _021EED7A
	b _021EED80
_021EED5E:
	cmp r0, #0x26
	beq _021EED7A
	b _021EED80
_021EED64:
	cmp r0, #0x55
	bhi _021EED70
	bhs _021EED76
	cmp r0, #0x3f
	beq _021EED7A
	b _021EED80
_021EED70:
	cmp r0, #0x58
	beq _021EED7A
	b _021EED80
_021EED76:
	ldr r0, _021EEDB8 ; =0x000007E4
	b _021EED7C
_021EED7A:
	ldr r0, _021EEDBC ; =0x000007E5
_021EED7C:
	bl GFL_SndSEPlay
_021EED80:
	ldr r0, [r4, #0xc]
	add r1, r0, #1
	mov r0, #0x7d
	lsl r0, r0, #2
	str r1, [r4, #0xc]
	cmp r1, r0
	bls _021EED92
	mov r0, #0
	str r0, [r4, #8]
_021EED92:
	add r0, r4, #0
	bl sub_021EF094
	pop {r4, pc}
	nop
_021EED9C: .word 0x00000122
_021EEDA0: .word 0x000008EF
_021EEDA4: .word 0x000008F1
_021EEDA8: .word 0x000008F2
_021EEDAC: .word 0x000008F3
_021EEDB0: .word 0x000008F4
_021EEDB4: .word 0x000008FD
_021EEDB8: .word 0x000007E4
_021EEDBC: .word 0x000007E5
	thumb_func_end ovy116_21eecc8

	thumb_func_start ovy116_21eedc0
ovy116_21eedc0: ; 0x021EEDC0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02016AF0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	add r4, r0, #0
	cmp r5, #0
	ldr r0, [r4]
	bne _021EEDF0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	add r2, r6, #0
	add r3, r6, #0
	bl sub_021B8258
	pop {r4, r5, r6, pc}
_021EEDF0:
	mov r1, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	add r3, r6, #0
	bl sub_021B8258
	pop {r4, r5, r6, pc}
	thumb_func_end ovy116_21eedc0

	thumb_func_start ovy116_21eee08
ovy116_21eee08: ; 0x021EEE08
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02016AF0
	mov r1, #1
	mov r6, #1
	bl sub_0218105C
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	cmp r5, #0
	ldr r0, [r4]
	bne _021EEE2E
	bl ovy116_21ef0a0
	str r6, [r4, #8]
	pop {r4, r5, r6, pc}
_021EEE2E:
	add r1, r6, #0
	bl ovy116_21ef0a0
	mov r0, #2
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy116_21eee08

	thumb_func_start ovy116_21eee3c
ovy116_21eee3c: ; 0x021EEE3C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_02016AF0
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_021804B8
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	add r1, r0, #0
	add r0, r6, #0
	add r2, r5, #0
	bl ovy116_21ef118
	pop {r4, r5, r6, pc}
	thumb_func_end ovy116_21eee3c

	thumb_func_start ovy116_21eee68
ovy116_21eee68: ; 0x021EEE68
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	mov r5, #0
	bl sub_021B8258
	add r6, r5, #0
	mov r7, #3
_021EEE88:
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	mov r1, #1
	bl sub_021B84E8
	str r6, [sp]
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r5, r5, #1
	cmp r5, #2
	blo _021EEE88
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy116_21eee68

	thumb_func_start ovy116_21eeeb4
ovy116_21eeeb4: ; 0x021EEEB4
	push {r4, lr}
	add r4, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	mov r1, #3
	mov r2, #0
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	cmp r4, #1
	ldr r0, [r0]
	bne _021EEED8
	mov r1, #2
	bl ovy116_21ef0a0
	pop {r4, pc}
_021EEED8:
	bl ovy116_21ef0a0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy116_21eeeb4

	thumb_func_start ovy116_21eeee0
ovy116_21eeee0: ; 0x021EEEE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021EF084 ; =0x021EF1DC
	mov r2, #0
	mov r6, #0
	bl ovy36_21b8598
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	bl sub_021B8224
	mov r1, #1
	lsl r1, r1, #0x14
	str r1, [r0]
	str r6, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_021B8248
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	add r5, r6, #0
_021EEF1E:
	lsl r3, r6, #0x10
	ldr r0, [r4]
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	str r5, [sp]
	lsl r3, r6, #0x10
	ldr r0, [r4]
	add r1, r5, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r6, r6, #1
	cmp r6, #2
	blo _021EEF1E
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #1
	bl sub_021B8224
	mov r1, #1
	lsl r1, r1, #0x14
	str r1, [r0]
	str r5, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_021B8248
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	mov r6, #0
_021EEF80:
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	add r1, r6, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	str r6, [sp]
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r5, r5, #1
	cmp r5, #2
	blo _021EEF80
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #2
	bl sub_021B8224
	mov r1, #0x3e
	lsl r1, r1, #0xe
	str r1, [r0]
	mov r1, #0x4e
	str r6, [r0, #4]
	lsl r1, r1, #0xe
	str r1, [r0, #8]
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #2
	add r3, r6, #0
	bl sub_021B8248
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	mov r5, #0
_021EEFE6:
	lsl r3, r6, #0x10
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	add r1, r5, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	str r5, [sp]
	lsl r3, r6, #0x10
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #2
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r6, r6, #1
	cmp r6, #2
	blo _021EEFE6
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #3
	bl sub_021B8224
	mov r1, #0x3e
	lsl r1, r1, #0xe
	str r1, [r0]
	mov r1, #0x4e
	str r5, [r0, #4]
	lsl r1, r1, #0xe
	str r1, [r0, #8]
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #3
	add r3, r5, #0
	bl sub_021B8248
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #3
	mov r3, #1
	bl sub_021B8258
	mov r7, #0
_021EF04C:
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r7, #0
	mov r2, #3
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	str r7, [sp]
	lsl r3, r5, #0x10
	ldr r0, [r4]
	add r1, r7, #0
	mov r2, #3
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r5, r5, #1
	cmp r5, #2
	blo _021EF04C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF084: .word 0x021EF1DC
	thumb_func_end ovy116_21eeee0

	thumb_func_start sub_021EF088
sub_021EF088: ; 0x021EF088
	ldr r0, [r0]
	ldr r3, _021EF090 ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EF090: .word ovy36_21b81bc
	thumb_func_end sub_021EF088

	thumb_func_start sub_021EF094
sub_021EF094: ; 0x021EF094
	ldr r0, [r0]
	ldr r3, _021EF09C ; =ovy36_21b83b4
	bx r3
	nop
_021EF09C: .word ovy36_21b83b4
	thumb_func_end sub_021EF094

	thumb_func_start ovy116_21ef0a0
ovy116_21ef0a0: ; 0x021EF0A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _021EF114 ; =0x021EF1EC
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	add r2, r5, #0
	str r1, [sp, #4]
	mov r1, #0
	mov r3, #0
	add r6, r0, #0
	mov r4, #0
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EF10E
_021EF0C2:
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r0, #1
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #0
	bl sub_021B84E8
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF0C2
_021EF10E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF114: .word 0x021EF1EC
	thumb_func_end ovy116_21ef0a0

	thumb_func_start ovy116_21ef118
ovy116_21ef118: ; 0x021EF118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_021804C0
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl sub_02180578
	str r0, [sp]
	ldr r2, _021EF158 ; =ovy116_21ef15c
	add r0, r7, #0
	mov r1, #0x10
	bl sub_021C0870
	add r7, r0, #0
	bl sub_021C08CC
	str r4, [r0, #4]
	mov r2, #0
	str r2, [r0]
	ldr r1, [r5, #4]
	str r1, [r0, #8]
	str r6, [r0, #0xc]
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_021C09E4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF158: .word ovy116_21ef15c
	thumb_func_end ovy116_21ef118

	thumb_func_start ovy116_21ef15c
ovy116_21ef15c: ; 0x021EF15C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021804B8
	ldr r1, [r4, #0xc]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ovy12_2167a14
	cmp r0, #0
	bne _021EF17C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021EF17C:
	ldr r0, [r4]
	mov r1, #0x23
	add r0, r0, #1
	str r0, [r4]
	lsl r0, r0, #0x10
	blx sub_0208D65C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021EF1B8 ; =FX_SinCosTable_ ; 0x020946BC
	mov r2, #0
	ldrsh r1, [r0, r1]
	str r2, [sp]
	str r2, [sp, #8]
	lsl r0, r1, #1
	add r1, r1, r0
	mov r0, #0x36
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl sub_0216732C
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021EF1B8: .word FX_SinCosTable_
	thumb_func_end ovy116_21ef15c
_021EF1BC:
	.byte 0x04, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x3C, 0xF2, 0x1E, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0xFC, 0xF1, 0x1E, 0x02, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCC, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0xBC, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0xD4, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0xC4, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2B, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2B, 0x01, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2B, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2B, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF1BC
