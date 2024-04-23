    .include "macros/function.inc"
	.include "overlay91.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy91_21eec80
ovy91_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	mov r3, #0x34
	mov r5, #1
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_021804BC
	str r0, [r4]
	bl sub_02016AD8
	str r0, [r4, #4]
	str r7, [r4, #8]
	bl sub_0201793C
	str r0, [r4, #0xc]
	mov r1, #6
	bl sub_0200BAC4
	str r0, [r4, #0x10]
	mov r0, #0x15
	strh r0, [r4, #0x2c]
	ldr r0, _021EED7C ; =0x00008015
	strh r0, [r4, #0x2e]
	add r0, r7, #0
	bl ovy36_0218056c
	str r0, [r4, #0x14]
	add r0, r7, #0
	bl sub_021804F0
	str r0, [r4, #0x18]
	ldr r0, [r4, #4]
	bl sub_0201738C
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	bl sub_0219A6A0
	str r0, [r4, #0x20]
	add r0, r7, #0
	bl sub_02180494
	str r0, [r4, #0x24]
	ldr r0, [r4, #4]
	bl sub_02017394
	str r0, [r4, #0x28]
	add r0, r7, #0
	bl sub_021804D8
	mov r1, #0x7a
	lsl r1, r1, #2
	cmp r0, r1
	beq _021EECFE
	mov r5, #0
_021EECFE:
	add r0, r4, #0
	add r0, #0x32
	strb r5, [r0]
	ldr r0, [r4, #4]
	bl sub_02017394
	add r6, r0, #0
	mov r5, #0
_021EED0E:
	ldr r1, _021EED80 ; =0x00000109
	add r0, r6, #0
	add r1, r5, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_020191AC
	add r1, r4, r5
	add r1, #0x30
	add r5, r5, #1
	strb r0, [r1]
	cmp r5, #2
	blt _021EED0E
	add r0, r7, #0
	bl ovy91_21ef58c
	add r0, r4, #0
	bl ovy91_21ef5d0
	add r4, #0x32
	ldrb r0, [r4]
	cmp r0, #0
	bne _021EED78
	add r0, r7, #0
	bl sub_021804A0
	add r4, r0, #0
	mov r1, #0
	bl sub_021975DC
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_021975FC
	ldr r1, _021EED84 ; =0x021EF7F0
	add r0, r4, #0
	bl sub_02197604
	add r0, r4, #0
	mov r1, #6
	bl sub_021975E4
	ldr r1, _021EED88 ; =0x00007EEF
	add r0, r4, #0
	bl sub_021975EC
	add r0, r4, #0
	mov r1, #1
	bl sub_021975D4
	add r0, r4, #0
	bl sub_021975A0
_021EED78:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EED7C: .word 0x00008015
_021EED80: .word 0x00000109
_021EED84: .word 0x021EF7F0
_021EED88: .word 0x00007EEF
	thumb_func_end ovy91_21eec80

	thumb_func_start ovy91_21eed8c
ovy91_21eed8c: ; 0x021EED8C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl ovy91_21ef79c
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy91_21eed8c

	thumb_func_start ovy91_21eeda4
ovy91_21eeda4: ; 0x021EEDA4
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl ovy91_21ef7b4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy91_21eeda4

	thumb_func_start ovy91_21eedb4
ovy91_21eedb4: ; 0x021EEDB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r2, [sp]
	add r4, sp, #4
	ldr r0, [r7, #0x20]
	add r1, r4, #0
	bl sub_02167294
	ldr r0, [sp]
	add r1, r4, #0
	add r2, sp, #8
	mov r3, #1
	bl sub_0215ECA4
	add r6, sp, #4
	ldrh r0, [r6]
	add r1, sp, #0xc
	add r2, sp, #0x10
	strh r0, [r6, #8]
	ldrh r0, [r6, #2]
	mov r3, #1
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #4]
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #6]
	strh r0, [r6, #0xe]
	ldr r0, [sp]
	bl sub_0215ECA4
	mov r4, #0
_021EEDF2:
	lsl r0, r4, #3
	add r1, r4, r0
	ldr r0, _021EEE84 ; =0x021EF91C
	add r5, r0, r1
	add r0, r7, #0
	ldrb r1, [r5, #2]
	add r0, #0x32
	ldrb r0, [r0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	cmp r0, r1
	bne _021EEE6C
	cmp r4, #8
	bne _021EEE1A
	ldr r0, [r7, #0x28]
	ldr r1, _021EEE88 ; =0x00000109
	bl sub_020191AC
	cmp r0, #0
	beq _021EEE6C
_021EEE1A:
	ldrb r0, [r5, #2]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021EEE4E
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	ldr r0, [sp]
	cmp r1, r0
	bne _021EEE6C
	mov r0, #8
	ldrb r1, [r5, #3]
	ldrsh r0, [r6, r0]
	cmp r1, r0
	bne _021EEE6C
	mov r0, #0xa
	ldrb r1, [r5, #4]
	ldrsh r0, [r6, r0]
	cmp r1, r0
	bne _021EEE6C
	mov r0, #0xc
	ldrb r1, [r5, #5]
	ldrsh r0, [r6, r0]
	cmp r1, r0
	beq _021EEE72
	b _021EEE6C
_021EEE4E:
	mov r0, #0
	ldrb r1, [r5, #3]
	ldrsh r0, [r6, r0]
	cmp r1, r0
	bne _021EEE6C
	mov r0, #2
	ldrb r1, [r5, #4]
	ldrsh r0, [r6, r0]
	cmp r1, r0
	bne _021EEE6C
	mov r0, #4
	ldrb r1, [r5, #5]
	ldrsh r0, [r6, r0]
	cmp r1, r0
	beq _021EEE72
_021EEE6C:
	add r4, r4, #1
	cmp r4, #0x10
	blo _021EEDF2
_021EEE72:
	cmp r4, #0x10
	bhs _021EEE7E
	lsl r0, r4, #0x18
	add sp, #0x14
	lsr r0, r0, #0x18
	pop {r4, r5, r6, r7, pc}
_021EEE7E:
	mov r0, #0x10
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE84: .word 0x021EF91C
_021EEE88: .word 0x00000109
	thumb_func_end ovy91_21eedb4

	thumb_func_start ovy91_21eee8c
ovy91_21eee8c: ; 0x021EEE8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02016AF0
	mov r1, #1
	bl sub_0218105C
	add r1, r5, #0
	add r2, r4, #0
	add r6, r0, #0
	bl ovy91_21eedb4
	add r1, r0, #0
	cmp r1, #0x10
	bhs _021EEEB4
	add r0, r6, #0
	bl ovy91_21eef0c
	pop {r4, r5, r6, pc}
_021EEEB4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy91_21eee8c

	thumb_func_start ovy91_21eeeb8
ovy91_21eeeb8: ; 0x021EEEB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_02016AF0
	mov r1, #1
	mov r4, #1
	bl sub_0218105C
	add r1, r5, #0
	add r2, r6, #0
	bl ovy91_21eedb4
	cmp r0, #0x10
	blo _021EEED8
	mov r4, #0
_021EEED8:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy91_21eeeb8

	thumb_func_start ovy91_21eeedc
ovy91_21eeedc: ; 0x021EEEDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	mov r4, #0
	lsl r0, r5, #0x10
	lsr r5, r0, #0x10
	add r7, r4, #0
_021EEEF0:
	lsl r3, r4, #0x10
	ldr r0, [r6, #0x14]
	add r1, r7, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r1, r7, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #3
	blo _021EEEF0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy91_21eeedc

	thumb_func_start ovy91_21eef0c
ovy91_21eef0c: ; 0x021EEF0C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r0, r6, #3
	ldr r1, _021EEF48 ; =0x021EF91C
	add r0, r6, r0
	add r4, r1, r0
	ldrb r0, [r4, #2]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	ldr r0, [r5]
	bne _021EEF2A
	mov r1, #0
	ldr r2, _021EEF4C ; =ovy91_21eef54
	b _021EEF2E
_021EEF2A:
	ldr r2, _021EEF50 ; =ovy91_21ef06c
	mov r1, #0
_021EEF2E:
	mov r3, #0x14
	bl sub_02016CB4
	add r7, r0, #0
	add r0, r7, #0
	bl sub_02016EDC
	str r5, [r0]
	strb r6, [r0, #0x11]
	str r4, [r0, #4]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EEF48: .word 0x021EF91C
_021EEF4C: .word ovy91_21eef54
_021EEF50: .word ovy91_21ef06c
	thumb_func_end ovy91_21eef0c

	thumb_func_start ovy91_21eef54
ovy91_21eef54: ; 0x021EEF54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	ldr r0, [r4]
	ldr r5, [r6]
	cmp r0, #5
	bhi _021EF05A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EEF70: ; jump table
	.short _021EEF7C - _021EEF70 - 2 ; case 0
	.short _021EEFA4 - _021EEF70 - 2 ; case 1
	.short _021EEFBA - _021EEF70 - 2 ; case 2
	.short _021EEFEE - _021EEF70 - 2 ; case 3
	.short _021EF03C - _021EEF70 - 2 ; case 4
	.short _021EF04C - _021EEF70 - 2 ; case 5
_021EEF7C:
	ldr r0, [r5, #0x20]
	bl sub_02166E44
	cmp r0, #0
	beq _021EF064
	ldr r0, [r5, #0x1c]
	bl ovy12_216740c
	ldrh r0, [r5, #0x2e]
	mov r1, #1
	mov r2, #0
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl sub_02153684
_021EEF9C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EF064
_021EEFA4:
	mov r2, #0x32
	ldr r0, [r5, #8]
	mov r1, #0x14
	lsl r2, r2, #0xe
	bl ovy36_21c05d4
	add r0, r5, #0
	add r1, r6, #0
	bl ovy91_21ef1c0
	b _021EEF9C
_021EEFBA:
	ldr r0, [r6, #4]
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1a
	beq _021EEFD8
	ldrh r0, [r6, #0xc]
	cmp r0, #0x14
	bne _021EEFD8
	mov r3, #0
	str r3, [sp]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	mov r2, #3
	bl ovy36_21b9494
_021EEFD8:
	add r0, r5, #0
	add r1, r6, #0
	bl ovy91_21ef3b4
	cmp r0, #0
	beq _021EF064
	add r0, r5, #0
	add r1, r6, #0
	bl ovy91_21ef22c
	b _021EEF9C
_021EEFEE:
	ldr r1, [r6, #4]
	ldrb r1, [r1, #2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1a
	beq _021EF006
	ldr r0, [r5, #8]
	bl sub_021812C4
	cmp r0, #0
	bne _021EF064
	mov r0, #0xff
	b _021EF008
_021EF006:
	add r0, r0, #1
_021EF008:
	str r0, [r4]
	ldrh r0, [r5, #0x2e]
	mov r4, #0
	mov r2, #0
	str r0, [sp]
	ldr r1, [r6, #4]
	add r0, r7, #0
	ldrb r1, [r1, #2]
	mov r3, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1a
	add r1, r1, #2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02153684
	str r4, [sp]
	ldr r2, [r6, #4]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r2, #1]
	mov r3, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	bl ovy12_2153fa8
	b _021EF064
_021EF03C:
	ldr r0, [r5, #8]
	ldr r2, _021EF068 ; =0xFFF38000
	mov r1, #0xa
	mov r5, #0xa
	bl ovy36_21c0648
	strb r5, [r6, #0x13]
	b _021EEF9C
_021EF04C:
	ldrb r0, [r6, #0x13]
	sub r0, r0, #1
	strb r0, [r6, #0x13]
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	bne _021EF064
	b _021EEF9C
_021EF05A:
	ldr r0, [r5, #0x1c]
	bl ovy12_2167450
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF064:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF068: .word 0xFFF38000
	thumb_func_end ovy91_21eef54

	thumb_func_start ovy91_21ef06c
ovy91_21ef06c: ; 0x021EF06C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	ldr r0, [r5]
	ldr r4, [r6]
	cmp r0, #3
	bhi _021EF138
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF088: ; jump table
	.short _021EF090 - _021EF088 - 2 ; case 0
	.short _021EF0C4 - _021EF088 - 2 ; case 1
	.short _021EF0FA - _021EF088 - 2 ; case 2
	.short _021EF11C - _021EF088 - 2 ; case 3
_021EF090:
	ldr r0, [r4, #0x20]
	bl sub_02166E44
	cmp r0, #0
	beq _021EF142
	ldr r0, [r4, #0x1c]
	bl ovy12_216740c
	ldrh r0, [r4, #0x2e]
	str r0, [sp]
	ldr r1, [r6, #4]
	add r0, r7, #0
	ldrb r1, [r1, #2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1a
	add r1, r1, #1
_021EF0B0:
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #0
	bl sub_02153684
_021EF0BC:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EF142
_021EF0C4:
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ovy12_2167534
	add r0, r4, #0
	add r1, r6, #0
	bl ovy91_21ef1c0
	ldr r0, [r4, #0x24]
	bl sub_0218675C
	ldr r0, [r4, #0x24]
	mov r1, #0
	mov r6, #0
	bl ovy36_218578c
	ldr r0, [r4, #0x24]
	bl sub_021866E4
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #8]
	mov r2, #0
	mov r3, #0
	bl ovy36_21b9494
_021EF0F8:
	b _021EF0BC
_021EF0FA:
	add r0, r4, #0
	add r1, r6, #0
	bl ovy91_21ef3b4
	cmp r0, #0
	beq _021EF142
	add r0, r4, #0
	add r1, r6, #0
	bl ovy91_21ef22c
	ldr r0, [r4, #0x18]
	bl sub_0219A6A0
	mov r1, #1
	bl sub_0216780C
	b _021EF0F8
_021EF11C:
	ldr r0, [r4, #8]
	bl sub_021812C4
	cmp r0, #0
	bne _021EF142
	ldrh r0, [r4, #0x2e]
	str r0, [sp]
	ldr r1, [r6, #4]
	add r0, r7, #0
	ldrb r1, [r1, #2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1a
	add r1, r1, #4
	b _021EF0B0
_021EF138:
	ldr r0, [r4, #0x1c]
	bl ovy12_2167450
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF142:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy91_21ef06c

	thumb_func_start ovy91_21ef148
ovy91_21ef148: ; 0x021EF148
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x10
	ldrh r2, [r5, #0xc]
	ldrsb r0, [r5, r0]
	add r0, r2, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	bpl _021EF160
	mov r4, #0
	b _021EF16C
_021EF160:
	ldrh r0, [r5, #0xe]
	sub r0, r0, #1
	cmp r4, r0
	ble _021EF16C
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_021EF16C:
	add r6, sp, #0x18
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl sub_02015D20
	ldr r0, [r5, #8]
	add r5, sp, #0xc
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02015D20
	add r4, sp, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl VEC_Subtract
	add r0, r4, #0
	blx VEC_Mag
	mov r1, #5
	lsl r1, r1, #0xc
	sub r0, r0, r1
	mov r2, #0x46
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	mov r4, #0
	blx sub_0208D60C
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	asr r0, r0, #0x10
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy91_21ef148

	thumb_func_start ovy91_21ef1c0
ovy91_21ef1c0: ; 0x021EF1C0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r2, [r5, #4]
	add r6, r0, #0
	ldrh r0, [r6, #0x2e]
	ldrb r2, [r2]
	mov r1, #0x87
	mov r4, #0x87
	bl sub_02015B88
	str r0, [r5, #8]
	bl sub_02015CC8
	strh r0, [r5, #0xe]
	ldr r0, [r5, #4]
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021EF1F2
	ldrh r0, [r5, #0xe]
	sub r4, #0x88
	strb r4, [r5, #0x10]
	sub r0, r0, #1
	strh r0, [r5, #0xc]
	b _021EF1FA
_021EF1F2:
	mov r0, #0
	strh r0, [r5, #0xc]
	mov r0, #1
	strb r0, [r5, #0x10]
_021EF1FA:
	ldr r4, _021EF228 ; =0x00000813
	add r0, r4, #0
	bl sub_020061B8
	strb r0, [r5, #0x12]
	add r0, r4, #0
	bl GFL_SndSEPlay
	add r0, r5, #0
	bl ovy91_21ef148
	add r2, r0, #0
	mov r1, #0
	mvn r1, r1
	ldrb r0, [r5, #0x12]
	add r3, r1, #0
	bl sub_020062D8
	add r0, r6, #0
	add r1, r5, #0
	bl ovy91_21ef274
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EF228: .word 0x00000813
	thumb_func_end ovy91_21ef1c0

	thumb_func_start ovy91_21ef22c
ovy91_21ef22c: ; 0x021EF22C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r2, [r4, #4]
	add r5, r0, #0
	ldrb r0, [r2, #6]
	ldrb r1, [r2, #8]
	ldrb r2, [r2, #7]
	add r2, r0, r2
	add r2, r1, r2
	beq _021EF25A
	add r6, sp, #0
	add r2, r6, #0
	bl sub_0215ECE4
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldrb r0, [r0, #7]
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	bl sub_0219A670
_021EF25A:
	bl sub_02006280
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4, #8]
	bl sub_02015C10
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy91_21ef22c

	thumb_func_start ovy91_21ef274
ovy91_21ef274: ; 0x021EF274
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r6, r0, #0
	add r5, sp, #0x30
	mov r0, #0
	add r4, r1, #0
	str r0, [r5]
	str r0, [r5, #4]
	str r0, [r5, #8]
	ldrh r2, [r4, #0xc]
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl sub_02015D20
	cmp r0, #0
	bne _021EF296
	b _021EF3A8
_021EF296:
	mov r0, #1
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0x14
	add r1, r1, r0
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [r6, #0x18]
	add r1, r5, #0
	bl sub_0219A670
	add r0, r4, #0
	bl ovy91_21ef148
	add r2, r0, #0
	mov r1, #0
	sub r1, r1, #1
	ldrb r0, [r4, #0x12]
	add r3, r1, #0
	bl sub_020062D8
	ldr r3, _021EF3AC ; =0x021EF810
	mov r1, #0
	add r0, sp, #0x24
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r0, [r6, #0x14]
	mov r2, #2
	bl sub_021B8224
	add r7, r0, #0
	ldmia r5!, {r0, r1}
	add r2, r7, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	add r1, sp, #0x24
	str r0, [r2]
	ldrh r2, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_02015D58
	cmp r0, #0
	beq _021EF36C
	ldr r0, [sp, #0x24]
	ldr r2, _021EF3B0 ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	blx sub_0208D60C
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r5, r1, #0
	ldr r2, _021EF3B0 ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	blx sub_0208D60C
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #4]
	ldr r2, _021EF3B0 ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	blx sub_0208D60C
	mov ip, r0
	str r1, [sp, #0x14]
	mov r0, #2
	lsl r2, r0, #0xa
	ldr r1, [sp, #8]
	mov r0, #0
	add r0, r1, r0
	adc r5, r2
	mov r1, #2
	lsl r0, r5, #4
	lsl r3, r1, #0xa
	ldr r2, [sp, #0xc]
	mov r1, #0
	lsr r0, r0, #0x10
	add r1, r2, r1
	ldr r1, [sp, #4]
	adc r1, r3
	mov r2, #2
	str r1, [sp, #4]
	lsl r1, r1, #4
	lsl r5, r2, #0xa
	mov r3, ip
	mov r2, #0
	lsr r1, r1, #0x10
	add r2, r3, r2
	ldr r2, [sp, #0x14]
	adc r2, r5
	str r2, [sp, #0x14]
	lsl r2, r2, #4
	add r3, r7, #0
	lsr r2, r2, #0x10
	add r3, #0x18
	bl sub_020507D4
_021EF36C:
	ldrh r2, [r4, #0xc]
	ldr r0, [r4, #8]
	add r1, sp, #0x18
	bl sub_02015D98
	cmp r0, #0
	beq _021EF3A8
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r0, r1, r0
	add r0, r2, r0
	cmp r0, #0
	ldr r0, [r6, #0x14]
	ble _021EF392
	mov r1, #0
	mov r2, #2
	mov r3, #0
	b _021EF398
_021EF392:
	mov r1, #0
	mov r2, #2
	mov r3, #1
_021EF398:
	bl sub_021B8258
	add r2, sp, #0x18
	ldmia r2!, {r0, r1}
	add r7, #0xc
	stmia r7!, {r0, r1}
	ldr r0, [r2]
	str r0, [r7]
_021EF3A8:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF3AC: .word 0x021EF810
_021EF3B0: .word 0x0B60B60B
	thumb_func_end ovy91_21ef274

	thumb_func_start ovy91_21ef3b4
ovy91_21ef3b4: ; 0x021EF3B4
	push {r4, lr}
	add r4, r1, #0
	bl ovy91_21ef274
	mov r0, #0x10
	ldrh r1, [r4, #0xc]
	ldrsb r0, [r4, r0]
	add r1, r1, r0
	strh r1, [r4, #0xc]
	cmp r0, #0
	bge _021EF3D4
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _021EF3E0
	mov r0, #1
	pop {r4, pc}
_021EF3D4:
	ldrh r1, [r4, #0xc]
	ldrh r0, [r4, #0xe]
	cmp r1, r0
	blo _021EF3E0
	mov r0, #1
	pop {r4, pc}
_021EF3E0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy91_21ef3b4

	thumb_func_start ovy91_21ef3e4
ovy91_21ef3e4: ; 0x021EF3E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02180570
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_021804C0
	mov r1, #0x29
	lsl r1, r1, #4
	str r1, [sp]
	ldr r1, _021EF510 ; =0x00007FFF
	add r2, r0, #0
	and r2, r1
	add r0, r1, #1
	orr r0, r2
	lsl r0, r0, #0x10
	ldr r3, _021EF514 ; =0x021EF9C0
	lsr r0, r0, #0x10
	mov r1, #0x30
	mov r2, #1
	bl sub_0203A1FC
	str r0, [sp, #4]
	str r4, [r0, #0x2c]
	add r0, r5, #0
	bl sub_021804F0
	bl sub_0219A6A0
	ldr r1, [sp, #4]
	mov r2, #3
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r5, #0
	bl sub_021B8224
	add r7, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x28]
	bl sub_02167078
	add r6, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, #0
	ldr r0, [r0, #0x28]
	bl sub_021672F8
	lsl r0, r6, #0x10
	mov r2, #1
	lsr r0, r0, #0x10
	add r1, r7, #0
	lsl r2, r2, #0x11
	bl sub_0215EC6C
	cmp r6, #2
	bne _021EF468
	mov r5, #0x5a
	b _021EF470
_021EF468:
	cmp r6, #3
	bne _021EF470
	mov r5, #0x30
	add r5, #0xde
_021EF470:
	cmp r5, #0
	ble _021EF486
	lsl r0, r5, #0xc
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EF494
_021EF486:
	lsl r0, r5, #0xc
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EF494:
	blx sub_0208DA4C
	ldr r2, _021EF518 ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	blx sub_0208D60C
	mov r2, #2
	add r3, r0, #0
	mov r5, #0
	lsl r2, r2, #0xa
	mov r0, #0
	add r3, r3, r5
	adc r1, r2
	lsl r1, r1, #4
	add r7, #0x18
	lsr r1, r1, #0x10
	mov r2, #0
	add r3, r7, #0
	bl sub_020507D4
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #3
	mov r3, #0
	bl sub_021B8258
	add r7, r5, #0
_021EF4CC:
	lsl r3, r5, #0x10
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	mov r2, #3
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	lsl r3, r5, #0x10
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	mov r2, #3
	lsr r3, r3, #0x10
	bl ovy36_21b8504
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r5, r5, #1
	cmp r5, #1
	blo _021EF4CC
	ldr r0, _021EF51C ; =0x00000812
	bl GFL_SndSEPlay
	ldr r0, [sp, #8]
	ldr r1, _021EF520 ; =ovy91_21ef524
	ldr r2, [sp, #4]
	add r3, r7, #0
	bl sub_0203A614
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF510: .word 0x00007FFF
_021EF514: .word 0x021EF9C0
_021EF518: .word 0x0B60B60B
_021EF51C: .word 0x00000812
_021EF520: .word ovy91_21ef524
	thumb_func_end ovy91_21ef3e4

	thumb_func_start ovy91_21ef524
ovy91_21ef524: ; 0x021EF524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	ldr r6, [r1, #0x2c]
	str r0, [sp]
	str r1, [sp, #4]
	add r5, r4, #0
	mov r7, #3
_021EF534:
	lsl r3, r4, #0x10
	ldr r0, [r6, #0x14]
	add r1, r5, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #0
	beq _021EF586
	add r4, r4, #1
	cmp r4, #1
	blo _021EF534
	ldr r0, [r6, #0x14]
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl sub_021B8258
	mov r4, #0
	mov r7, #3
_021EF560:
	lsl r3, r5, #0x10
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	mov r1, #1
	bl sub_021B84E8
	add r5, r5, #1
	cmp r5, #1
	blo _021EF560
	ldr r0, [sp, #4]
	bl sub_0203A24C
	ldr r0, [sp]
	bl GFL_TCBRemove
_021EF586:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy91_21ef524

	thumb_func_start ovy91_21ef58c
ovy91_21ef58c: ; 0x021EF58C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	bl sub_021804D4
	bl ovy36_02184590
	ldr r6, _021EF5CC ; =0x021EF8B0
	add r5, r0, #0
	mov r4, #0
	mov r7, #0xc
_021EF5A0:
	add r1, r4, #0
	mul r1, r7
	add r3, r6, r1
	ldrb r0, [r3, #3]
	ldrb r1, [r6, r1]
	ldrb r2, [r3, #1]
	str r0, [sp]
	ldr r0, [r3, #8]
	str r0, [sp, #4]
	ldr r0, [r3, #4]
	ldrb r3, [r3, #2]
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r5, [sp, #0xc]
	bl ovy36_21ba624
	add r4, r4, #1
	cmp r4, #9
	blo _021EF5A0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF5CC: .word 0x021EF8B0
	thumb_func_end ovy91_21ef58c

	thumb_func_start ovy91_21ef5d0
ovy91_21ef5d0: ; 0x021EF5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EF5E0
	b _021EF790
_021EF5E0:
	ldr r0, [r5, #0x14]
	ldr r1, _021EF794 ; =0x021EF7E0
	mov r2, #0
	mov r4, #0
	bl ovy36_21b8598
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #2
	bl sub_021B8224
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #3
	bl sub_021B8224
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl sub_021B8258
	add r0, r4, #0
	str r0, [sp, #4]
	mov r7, #1
_021EF636:
	lsl r3, r4, #0x10
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #4]
	mov r2, #3
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	lsl r3, r4, #0x10
	str r7, [sp]
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #4]
	mov r2, #3
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r4, r4, #1
	cmp r4, #1
	blo _021EF636
_021EF66C:
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [r5, #0x14]
	add r2, r7, #0
	bl sub_021B8224
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0
	add r2, r7, #0
	mov r3, #1
	bl sub_021B8248
	ldr r1, [sp, #4]
	ldr r0, _021EF798 ; =0x021EF7CC
	lsl r2, r1, #1
	add r1, r1, r2
	add r6, r0, r1
	ldrb r1, [r0, r1]
	lsl r0, r1, #4
	cmp r0, #0
	ble _021EF6AE
	lsl r0, r1, #0x10
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EF6BC
_021EF6AE:
	lsl r0, r1, #0x10
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EF6BC:
	blx sub_0208DA4C
	mov r1, #2
	lsl r1, r1, #0xe
	add r0, r0, r1
	ldrb r1, [r6, #1]
	str r0, [r4]
	lsl r0, r1, #4
	cmp r0, #0
	ble _021EF6E2
	lsl r0, r1, #0x10
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EF6F0
_021EF6E2:
	lsl r0, r1, #0x10
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EF6F0:
	blx sub_0208DA4C
	ldrb r1, [r6, #2]
	str r0, [r4, #4]
	lsl r0, r1, #4
	cmp r0, #0
	ble _021EF710
	lsl r0, r1, #0x10
	blx sub_0208D374
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx sub_0208DF14
	b _021EF71E
_021EF710:
	lsl r0, r1, #0x10
	blx sub_0208D374
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx sub_0208E144
_021EF71E:
	blx sub_0208DA4C
	mov r1, #2
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [r4, #8]
	mov r4, #0
_021EF72C:
	lsl r3, r4, #0x10
	ldr r0, [r5, #0x14]
	mov r1, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5, #0x14]
	mov r1, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r6, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84E8
	add r0, r6, #0
	bl ovy36_21b8580
	ldr r1, [sp, #4]
	lsl r3, r4, #0x10
	add r1, r5, r1
	add r1, #0x30
	ldrb r1, [r1]
	add r2, r7, #0
	lsr r3, r3, #0x10
	mul r0, r1
	str r0, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl ovy36_21b8504
	add r4, r4, #1
	cmp r4, #3
	blo _021EF72C
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	bge _021EF790
	b _021EF66C
_021EF790:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021EF794: .word 0x021EF7E0
_021EF798: .word 0x021EF7CC
	thumb_func_end ovy91_21ef5d0

	thumb_func_start ovy91_21ef79c
ovy91_21ef79c: ; 0x021EF79C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x32
	ldrb r1, [r1]
	cmp r1, #0
	bne _021EF7B0
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl ovy36_21b81bc
_021EF7B0:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy91_21ef79c

	thumb_func_start ovy91_21ef7b4
ovy91_21ef7b4: ; 0x021EF7B4
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x32
	ldrb r1, [r1]
	cmp r1, #0
	bne _021EF7C6
	ldr r0, [r0, #0x14]
	bl ovy36_21b83b4
_021EF7C6:
	pop {r3, pc}
	thumb_func_end ovy91_21ef7b4
_021EF7C8:
	.byte 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x04, 0x19
	.byte 0x14, 0x0F, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x5C, 0xF8, 0x1E, 0x02, 0x07, 0x00, 0x00, 0x00, 0x1C, 0xF8, 0x1E, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x04, 0x08, 0x0C, 0x10, 0x14, 0x18, 0x1C, 0x21, 0x14, 0x16, 0x16, 0x16, 0x16, 0x39, 0x3D
	.byte 0x42, 0x46, 0x4A, 0x4E, 0x52, 0x56, 0x5A, 0x5E, 0x63, 0x67, 0x6B, 0x6F, 0x73, 0x77, 0x7B, 0x7F
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD2, 0xF7, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xD2, 0xF7, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0xC8, 0xF7, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x87, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x0D, 0x03, 0x03, 0x01, 0x00, 0x81, 0x01, 0x00, 0x00, 0x14, 0x00, 0x0A, 0x01, 0x03, 0x04
	.byte 0x01, 0x00, 0x81, 0x01, 0x00, 0x00, 0x14, 0x00, 0x13, 0x03, 0x03, 0x04, 0x01, 0x00, 0x81, 0x01
	.byte 0x00, 0x00, 0x14, 0x00, 0x18, 0x0D, 0x03, 0x04, 0x01, 0x00, 0x81, 0x01, 0x00, 0x00, 0x14, 0x00
	.byte 0x01, 0x0D, 0x0D, 0x05, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x14, 0x00, 0x09, 0x01, 0x05, 0x0C
	.byte 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x14, 0x00, 0x12, 0x01, 0x05, 0x0C, 0x00, 0x00, 0x80, 0x00
	.byte 0x00, 0x00, 0x14, 0x00, 0x17, 0x09, 0x03, 0x04, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x14, 0x00
	.byte 0x12, 0x0D, 0x0D, 0x05, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x10, 0x00, 0x10
	.byte 0x00, 0x0B, 0x10, 0x0A, 0x0B, 0x00, 0x10, 0x02, 0x10, 0x0A, 0x0B, 0x10, 0x00, 0x0B, 0x01, 0x12
	.byte 0x00, 0x10, 0x00, 0x0B, 0x03, 0x0A, 0x03, 0x01, 0x30, 0x02, 0x03, 0x0A, 0x03, 0x10, 0x00, 0x0B
	.byte 0x02, 0x10, 0x00, 0x1A, 0x00, 0x04, 0x19, 0x14, 0x0F, 0x02, 0x10, 0x02, 0x19, 0x14, 0x0F, 0x1A
	.byte 0x00, 0x04, 0x03, 0x12, 0x00, 0x1A, 0x00, 0x04, 0x0B, 0x14, 0x03, 0x03, 0x30, 0x02, 0x0B, 0x14
	.byte 0x03, 0x1A, 0x00, 0x04, 0x04, 0x00, 0x04, 0x08, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x99, 0x03
	.byte 0x09, 0x00, 0x0D, 0x08, 0x00, 0x04, 0x05, 0x10, 0x00, 0x1C, 0x0A, 0x03, 0x14, 0x14, 0x05, 0x05
	.byte 0x10, 0x02, 0x14, 0x14, 0x05, 0x1C, 0x0A, 0x03, 0x06, 0x12, 0x00, 0x0B, 0x14, 0x03, 0x04, 0x14
	.byte 0x0E, 0x06, 0x30, 0x02, 0x04, 0x14, 0x0E, 0x0B, 0x14, 0x03, 0x07, 0x03, 0x04, 0x04, 0x14, 0x0E
	.byte 0x00, 0x00, 0x00, 0x07, 0x99, 0x07, 0x0F, 0x00, 0x14, 0x04, 0x14, 0x0E, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x79, 0x6D, 0x5F, 0x69, 0x6E, 0x73, 0x65, 0x63, 0x74, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF7C8
