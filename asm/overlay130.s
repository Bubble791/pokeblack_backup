    .include "macros/function.inc"
	.include "overlay130.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy130_21eec80
ovy130_21eec80: ; 0x021EEC80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021804C0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	add r0, r5, #0
	bl sub_021804BC
	add r6, r0, #0
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_0201793C
	add r0, r6, #0
	bl sub_02016B20
	bl ovy130_21ef050
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x10
	bl ovy36_2180ff0
	add r4, r0, #0
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4]
	add r0, r4, #0
	str r5, [r4, #4]
	bl ovy130_21eedd0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ovy130_21eef38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy130_21eec80

	thumb_func_start ovy130_21eecdc
ovy130_21eecdc: ; 0x021EECDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	bl sub_0201793C
	add r0, r4, #0
	bl ovy36_0218056c
	add r0, r4, #0
	mov r1, #0
	bl sub_0218105C
	bl ovy130_021EEED4
	add r0, r4, #0
	mov r1, #0
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy130_21eecdc

	thumb_func_start ovy130_21eed08
ovy130_21eed08: ; 0x021EED08
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_021804BC
	add r6, r0, #0
	bl sub_02016AD8
	add r7, r0, #0
	bl sub_0201793C
	add r0, r5, #0
	bl ovy36_0218056c
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0218105C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02016B20
	bl ovy130_21ef050
	add r6, r0, #0
	beq _021EED5C
	add r0, #0x8a
	ldrh r0, [r0]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1d
	ldrb r0, [r5, #8]
	cmp r1, r0
	beq _021EED5C
	add r0, r4, #0
	bl ovy130_21eef6c
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy130_21eef9c
	strb r0, [r5, #8]
_021EED5C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021EED80
	add r0, r5, #0
	bl ovy130_21ef118
	cmp r0, #1
	bne _021EED8E
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ovy130_21ef094
	mov r0, #0x85
	lsl r0, r0, #4
	bl sub_02006254
	b _021EED8E
_021EED80:
	add r0, r5, #0
	bl ovy130_21ef150
	cmp r0, #1
	bne _021EED8E
	mov r0, #0
	str r0, [r5, #0xc]
_021EED8E:
	add r0, r5, #0
	bl sub_021EEEE0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy130_21eed08

	thumb_func_start ovy130_21eed98
ovy130_21eed98: ; 0x021EED98
	push {r3, lr}
	bl sub_02016AF0
	mov r1, #0
	bl sub_0218105C
	bl ovy130_21ef0c0
	ldr r0, _021EEDB0 ; =0x00000851
	bl sub_02006254
	pop {r3, pc}
	.align 2, 0
_021EEDB0: .word 0x00000851
	thumb_func_end ovy130_21eed98

	thumb_func_start ovy130_21eedb4
ovy130_21eedb4: ; 0x021EEDB4
	push {r3, lr}
	bl sub_02016AF0
	mov r1, #0
	bl sub_0218105C
	bl ovy130_21ef0f8
	ldr r0, _021EEDCC ; =0x00000852
	bl sub_02006254
	pop {r3, pc}
	.align 2, 0
_021EEDCC: .word 0x00000852
	thumb_func_end ovy130_21eedb4

	thumb_func_start ovy130_21eedd0
ovy130_21eedd0: ; 0x021EEDD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021EEECC ; =0x021EF1AC
	mov r2, #0
	mov r4, #0
	bl ovy36_21b80b4
	add r6, r4, #0
	mov r7, #1
_021EEDE6:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	mov r1, #0x7e
	lsl r1, r1, #0xe
	str r1, [r0]
	mov r1, #2
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	mov r1, #0x7e
	lsl r1, r1, #0xe
	str r1, [r0, #8]
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_021B8248
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_021B8258
	add r4, r4, #1
	cmp r4, #0xa
	blt _021EEDE6
	mov r0, #0xa
	str r0, [sp, #4]
_021EEE2A:
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	lsl r1, r0, #2
	ldr r0, _021EEED0 ; =0x021EF19C
	lsl r2, r2, #0x10
	add r0, r0, r1
	sub r0, #0x28
	ldr r0, [r0]
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	lsr r2, r2, #0x10
	bl sub_021B8224
	mov r1, #2
	lsl r1, r1, #0x14
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	mov r1, #2
	ldr r2, [sp, #4]
	lsl r1, r1, #0x14
	str r1, [r0, #8]
	lsl r2, r2, #0x10
	ldr r0, [r5]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8248
	ldr r2, [sp, #4]
	ldr r0, [r5]
	lsl r2, r2, #0x10
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_021B8258
	ldr r0, [sp, #8]
	mov r4, #0
	cmp r0, #0
	ble _021EEEBC
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_021EEE84:
	lsl r3, r4, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	mov r0, #0
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r5]
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r0, [sp, #8]
	add r4, r4, #1
	cmp r4, r0
	blt _021EEE84
_021EEEBC:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xd
	ble _021EEE2A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EEECC: .word 0x021EF1AC
_021EEED0: .word 0x021EF19C
	thumb_func_end ovy130_21eedd0

	thumb_func_start ovy130_021EEED4
ovy130_021EEED4: ; 0x021EEED4
	ldr r0, [r0]
	ldr r3, _021EEEDC ; =ovy36_21b81bc
	mov r1, #0
	bx r3
	.align 2, 0
_021EEEDC: .word ovy36_21b81bc
	thumb_func_end ovy130_021EEED4

	thumb_func_start sub_021EEEE0
sub_021EEEE0: ; 0x021EEEE0
	ldr r0, [r0]
	ldr r3, _021EEEE8 ; =ovy36_21b83b4
	bx r3
	nop
_021EEEE8: .word ovy36_21b83b4
	thumb_func_end sub_021EEEE0

	thumb_func_start ovy130_21eeeec
ovy130_21eeeec: ; 0x021EEEEC
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
	str r0, [sp, #4]
	mov r1, #0
	bl sub_021B84E8
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8538
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ovy36_21b8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy130_21eeeec

	thumb_func_start ovy130_21eef38
ovy130_21eef38: ; 0x021EEF38
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	add r0, r1, #0
	bl ovy36_0218056c
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl ovy130_21eef9c
	strb r0, [r5, #8]
	add r0, r5, #0
	bl ovy130_21ef118
	cmp r0, #1
	bne _021EEF60
	mov r0, #1
	b _021EEF62
_021EEF60:
	mov r0, #0
_021EEF62:
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ovy130_21ef068
	pop {r4, r5, r6, pc}
	thumb_func_end ovy130_21eef38

	thumb_func_start ovy130_21eef6c
ovy130_21eef6c: ; 0x021EEF6C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021EEF76:
	lsl r2, r4, #0x10
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_021B8258
	add r4, r4, #1
	cmp r4, #0xa
	blt _021EEF76
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy130_21eef6c

	thumb_func_start ovy130_21eef8c
ovy130_21eef8c: ; 0x021EEF8C
	push {r3, lr}
	mov r1, #6
	blx sub_0208D65C
	cmp r0, #4
	ble _021EEF9A
	mov r0, #4
_021EEF9A:
	pop {r3, pc}
	thumb_func_end ovy130_21eef8c

	thumb_func_start ovy130_21eef9c
ovy130_21eef9c: ; 0x021EEF9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	bl sub_020175FC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_020175CC
	sub r4, r6, r0
	bpl _021EEFBA
	add r0, r5, #0
	bl sub_020175BC
	add r4, r4, r0
_021EEFBA:
	add r0, r5, #0
	bl sub_020175CC
	cmp r6, r0
	bne _021EEFCC
	add r0, r5, #0
	bl sub_02017208
	b _021EEFD4
_021EEFCC:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171FC
_021EEFD4:
	add r7, r0, #0
	add r0, r7, #0
	bl sub_0200C5DC
	bl ovy130_21eef8c
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0200C5E0
	bl ovy130_21eef8c
	add r2, r5, #5
	add r7, r0, #0
	lsl r2, r2, #0x10
	ldr r0, [sp]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	mov r1, #0x7e
	lsl r2, r4, #0x16
	lsl r1, r1, #0xe
	add r4, r2, r1
	mov r1, #2
	lsl r2, r7, #0x10
	str r4, [r0]
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	mov r1, #0x7e
	lsl r1, r1, #0xe
	str r1, [r0, #8]
	ldr r0, [sp]
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_021B8224
	mov r1, #2
	add r2, r5, #5
	lsl r2, r2, #0x10
	str r4, [r0]
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	mov r1, #0x7e
	lsl r1, r1, #0xe
	str r1, [r0, #8]
	ldr r0, [sp]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_021B8258
	lsl r2, r7, #0x10
	ldr r0, [sp]
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0
	bl sub_021B8258
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy130_21eef9c

	thumb_func_start ovy130_21ef050
ovy130_21ef050: ; 0x021EF050
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202BDD4
	cmp r0, #2
	bne _021EF064
	add r0, r4, #0
	bl sub_0202BDF4
	pop {r4, pc}
_021EF064:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy130_21ef050

	thumb_func_start ovy130_21ef068
ovy130_21ef068: ; 0x021EF068
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0xa
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #0xa
	mov r7, #1
_021EF07E:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy130_21eeeec
	add r4, r4, #1
	cmp r4, #2
	blo _021EF07E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy130_21ef068

	thumb_func_start ovy130_21ef094
ovy130_21ef094: ; 0x021EF094
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0
	mov r2, #0xb
	mov r3, #0
	mov r4, #0
	bl sub_021B8258
	mov r6, #0xb
	add r7, r4, #0
_021EF0AA:
	lsl r2, r4, #0x10
	ldr r0, [r5]
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl ovy130_21eeeec
	add r4, r4, #1
	cmp r4, #1
	blo _021EF0AA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy130_21ef094

	thumb_func_start ovy130_21ef0c0
ovy130_21ef0c0: ; 0x021EF0C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0xc
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0xc
	mov r2, #0
	mov r3, #0
	bl ovy130_21eeeec
	ldr r0, [r4]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	bl ovy130_21eeeec
	ldr r0, [r4]
	mov r1, #0xc
	mov r2, #2
	mov r3, #1
	bl ovy130_21eeeec
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy130_21ef0c0

	thumb_func_start ovy130_21ef0f8
ovy130_21ef0f8: ; 0x021EF0F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0xd
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4]
	mov r1, #0xd
	mov r2, #0
	mov r3, #0
	bl ovy130_21eeeec
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy130_21ef0f8

	thumb_func_start ovy130_21ef118
ovy130_21ef118: ; 0x021EF118
	push {lr}
	sub sp, #0xc
	ldr r0, [r0, #4]
	bl sub_021804F0
	add r1, sp, #0
	bl sub_0219A664
	mov r0, #0x7e
	ldr r1, [sp]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _021EF14A
	mov r0, #0x8a
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _021EF14A
	mov r0, #0x8e
	lsl r0, r0, #0xe
	cmp r1, r0
	bgt _021EF14A
	add sp, #0xc
	mov r0, #1
	pop {pc}
_021EF14A:
	mov r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy130_21ef118

	thumb_func_start ovy130_21ef150
ovy130_21ef150: ; 0x021EF150
	push {lr}
	sub sp, #0xc
	ldr r0, [r0, #4]
	bl sub_021804F0
	add r1, sp, #0
	bl sub_0219A664
	mov r0, #0x7e
	ldr r1, [sp]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _021EF17A
	mov r0, #0x92
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _021EF17A
	add sp, #0xc
	mov r0, #1
	pop {pc}
_021EF17A:
	mov r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy130_21ef150
_021EF180:
	.byte 0x0B, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xBC, 0xF1, 0x1E, 0x02
	.byte 0x0C, 0x00, 0x00, 0x00, 0x4C, 0xF2, 0x1E, 0x02, 0x0E, 0x00, 0x00, 0x00, 0xCC, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCF, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xCF, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xCF, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x88, 0xF1, 0x1E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x84, 0xF1, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x90, 0xF1, 0x1E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x80, 0xF1, 0x1E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF180
