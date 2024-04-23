    .include "macros/function.inc"
	.include "overlay190.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy190_21b2f80
ovy190_21b2f80: ; 0x021B2F80
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	beq _021B2F92
	mov r0, #1
	pop {r4, pc}
_021B2F92:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B2FA6
	bl sub_0203DA48
	cmp r0, #0
	beq _021B2FA6
	mov r0, #1
	pop {r4, pc}
_021B2FA6:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b2f80

	thumb_func_start sub_021B2FAC
sub_021B2FAC: ; 0x021B2FAC
	str r1, [r0]
	bx lr
	thumb_func_end sub_021B2FAC

	thumb_func_start ovy190_21b2fb0
ovy190_21b2fb0: ; 0x021B2FB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B2FCC
	bl sub_0203FFC4
	cmp r5, r0
	beq _021B2FCC
	mov r0, #1
	str r0, [r4, #0x1c]
_021B2FCC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy190_21b2fb0
_021B2FD0:
	.byte 0x00, 0x48, 0x70, 0x47, 0x00, 0x54, 0x1B, 0x02, 0x04, 0x20, 0x70, 0x47, 0x88, 0x42, 0x01, 0xD1
	.byte 0x01, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47

	thumb_func_start ovy190_21b2fe8
ovy190_21b2fe8: ; 0x021B2FE8
	push {r3, lr}
	ldr r0, [r0, #0x44]
	bl sub_02017238
	bl sub_02009F7C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy190_21b2fe8

	thumb_func_start ovy190_21b2ff8
ovy190_21b2ff8: ; 0x021B2FF8
	push {r3, lr}
	ldr r0, [r0, #0x44]
	bl sub_02017238
	mov r1, #0
	bl sub_0200A0E4
	pop {r3, pc}
	thumb_func_end ovy190_21b2ff8

	thumb_func_start ovy190_21b3008
ovy190_21b3008: ; 0x021B3008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #0x44]
	add r4, r1, #0
	bl sub_02017238
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200A340
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy190_21b3008

	thumb_func_start ovy190_21b3020
ovy190_21b3020: ; 0x021B3020
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B3048
	ldr r0, [r4, #0x38]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B3048
	add r0, r4, #0
	bl ovy190_21b2f80
	cmp r0, #0
	beq _021B3048
	ldr r1, _021B304C ; =ovy190_21b37f0
	add r0, r4, #0
	bl sub_021B2FAC
_021B3048:
	pop {r4, pc}
	nop
_021B304C: .word ovy190_21b37f0
	thumb_func_end ovy190_21b3020

	thumb_func_start ovy190_21b3050
ovy190_21b3050: ; 0x021B3050
	push {r4, lr}
	add r4, r0, #0
	bl ovy190_21b2f80
	cmp r0, #0
	beq _021B308E
	ldr r0, [r4, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021B3072
	ldr r0, [r4, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
_021B3072:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021B3084
	ldr r1, _021B3098 ; =0x021B38F5
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B3084:
	ldr r1, _021B309C ; =ovy190_21b37f0
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B308E:
	add r0, r4, #0
	bl ovy190_21b3384
	pop {r4, pc}
	nop
_021B3098: .word 0x021B38F5
_021B309C: .word ovy190_21b37f0
	thumb_func_end ovy190_21b3050

	thumb_func_start ovy190_21b30a0
ovy190_21b30a0: ; 0x021B30A0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042220
	cmp r0, #0
	beq _021B30F8
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021B30DC
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	bl ovy190_21b49dc
	bl sub_020352E0
	cmp r0, #0
	ldr r0, [r4, #0x38]
	beq _021B30CC
	mov r1, #0x2c
	b _021B30CE
_021B30CC:
	mov r1, #0x13
_021B30CE:
	bl ovy190_21b4c38
	ldr r1, _021B3100 ; =ovy190_21b3050
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B30DC:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021B30EE
	ldr r1, _021B3104 ; =0x021B38F5
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B30EE:
	ldr r1, _021B3108 ; =ovy190_21b37f0
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B30F8:
	add r0, r4, #0
	bl ovy190_21b3384
	pop {r4, pc}
	.align 2, 0
_021B3100: .word ovy190_21b3050
_021B3104: .word 0x021B38F5
_021B3108: .word ovy190_21b37f0
	thumb_func_end ovy190_21b30a0

	thumb_func_start ovy190_21b310c
ovy190_21b310c: ; 0x021B310C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02151F00
	cmp r0, #0
	beq _021B312A
	ldr r0, [r4, #0x44]
	bl sub_02017850
	cmp r0, #0
	beq _021B3130
	cmp r0, #1
	beq _021B3130
	bl sub_02151F14
_021B312A:
	add r0, r4, #0
	bl ovy190_21b30a0
_021B3130:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b310c

	thumb_func_start ovy190_21b3134
ovy190_21b3134: ; 0x021B3134
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B316A
	ldr r0, [r4, #0x44]
	bl sub_0201736C
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_0200A3DC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02008BE0
	ldr r0, [r4, #0x44]
	bl sub_0201782C
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r1, _021B316C ; =ovy190_21b310c
	add r0, r4, #0
	bl sub_021B2FAC
_021B316A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B316C: .word ovy190_21b310c
	thumb_func_end ovy190_21b3134

	thumb_func_start ovy190_21b3170
ovy190_21b3170: ; 0x021B3170
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B31AC
	bl sub_02151F00
	cmp r0, #0
	beq _021B31A6
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021B31A6
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x14]
	cmp r0, #2
	beq _021B31A6
	ldr r0, [r4, #0x38]
	mov r1, #0x1e
	bl sub_021B496C
	ldr r1, _021B31B0 ; =ovy190_21b3134
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B31A6:
	add r0, r4, #0
	bl ovy190_21b30a0
_021B31AC:
	pop {r4, pc}
	nop
_021B31B0: .word ovy190_21b3134
	thumb_func_end ovy190_21b3170

	thumb_func_start ovy190_21b31b4
ovy190_21b31b4: ; 0x021B31B4
	push {r3, r4, r5, lr}
	ldr r4, _021B323C ; =0x021B52E0
	add r5, r0, #0
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021B31C8
	mov r0, #0x79
	lsl r0, r0, #0xc
	b _021B31CA
_021B31C8:
	ldr r0, _021B3240 ; =0x0005E400
_021B31CA:
	str r0, [r4, #0x48]
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0xc]
	cmp r0, #0x2c
	bne _021B31DA
	mov r0, #5
	lsl r0, r0, #0x10
	b _021B31E2
_021B31DA:
	cmp r0, #0x24
	bne _021B31E4
	mov r0, #0x6e
	lsl r0, r0, #0xc
_021B31E2:
	str r0, [r4, #0x48]
_021B31E4:
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #0xc]
	cmp r0, #0xa
	beq _021B31F0
	mov r0, #0
	str r0, [r4, #0x40]
_021B31F0:
	ldr r2, [r5, #0x40]
	ldr r0, _021B3244 ; =0x021B5340
	ldr r1, [r2, #0xc]
	mov r4, #0
	strb r1, [r0, #7]
	ldr r1, [r2, #0xc]
	ldr r0, _021B3248 ; =0x021b5400
	add r2, r5, #0
	str r1, [r0]
	ldr r0, _021B323C ; =0x021B52E0
	mov r1, #0
	bl sub_020425EC
	bl sub_020423E0
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021B321A
	add r0, r4, #0
	b _021B321C
_021B321A:
	mov r0, #1
_021B321C:
	ldrh r1, [r5, #0xc]
	bl sub_02042BA8
	ldr r0, [r5, #0x38]
	mov r1, #0x17
	bl sub_021B496C
	ldr r0, [r5, #0x34]
	bl sub_021B4674
	ldr r1, _021B324C ; =ovy190_21b3170
	add r0, r5, #0
	bl sub_021B2FAC
	pop {r3, r4, r5, pc}
	nop
_021B323C: .word 0x021B52E0
_021B3240: .word 0x0005E400
_021B3244: .word 0x021B5340
_021B3248: .word 0x021b5400
_021B324C: .word ovy190_21b3170
	thumb_func_end ovy190_21b31b4

	thumb_func_start ovy190_21b3250
ovy190_21b3250: ; 0x021B3250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ovy190_21b4bc4
	cmp r0, #0
	beq _021B32A2
	ldr r0, [r4, #0x30]
	bl ovy190_21b4c04
	cmp r0, #0
	bne _021B3274
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r1, [r0, #0x1c]
	add r0, r4, #0
	ldr r1, _021B32A4 ; =ovy190_21b31b4
	b _021B327E
_021B3274:
	ldr r0, [r4, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r1, _021B32A8 ; =ovy190_21b37f0
	add r0, r4, #0
_021B327E:
	bl sub_021B2FAC
	ldr r0, [r4, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021B3298
	ldr r0, [r4, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
_021B3298:
	ldr r0, [r4, #0x30]
	bl ovy190_21b4b7c
	mov r0, #0
	str r0, [r4, #0x30]
_021B32A2:
	pop {r4, pc}
	.align 2, 0
_021B32A4: .word ovy190_21b31b4
_021B32A8: .word ovy190_21b37f0
	thumb_func_end ovy190_21b3250

	thumb_func_start ovy190_21b32ac
ovy190_21b32ac: ; 0x021B32AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ovy190_21b4bc4
	cmp r0, #0
	beq _021B3304
	ldr r0, [r4, #0x30]
	bl ovy190_21b4c04
	cmp r0, #0
	bne _021B32D0
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r1, [r0, #0x1c]
	add r0, r4, #0
	ldr r1, _021B3308 ; =ovy190_21b31b4
	b _021B32DA
_021B32D0:
	ldr r0, [r4, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r1, _021B330C ; =ovy190_21b37f0
	add r0, r4, #0
_021B32DA:
	bl sub_021B2FAC
	ldr r0, [r4, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r4, #0x38]
	bl ovy190_21b49dc
	ldr r0, [r4, #0x30]
	bl ovy190_21b4b7c
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021B3304
	ldr r0, [r4, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
_021B3304:
	pop {r4, pc}
	nop
_021B3308: .word ovy190_21b31b4
_021B330C: .word ovy190_21b37f0
	thumb_func_end ovy190_21b32ac

	thumb_func_start ovy190_21b3310
ovy190_21b3310: ; 0x021B3310
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B3346
	ldr r0, [r4, #0x38]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B3346
	ldr r0, [r4, #0x40]
	mov r2, #1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B3332
	mov r2, #0
_021B3332:
	ldr r0, [r4, #0x38]
	mov r1, #1
	mov r3, #0
	bl ovy190_21b4aa4
	str r0, [r4, #0x30]
	ldr r1, _021B3348 ; =ovy190_21b3250
	add r0, r4, #0
	bl sub_021B2FAC
_021B3346:
	pop {r4, pc}
	.align 2, 0
_021B3348: .word ovy190_21b3250
	thumb_func_end ovy190_21b3310

	thumb_func_start ovy190_21b334c
ovy190_21b334c: ; 0x021B334C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B337E
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x40]
	mov r2, #1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B336A
	mov r2, #0
_021B336A:
	ldr r0, [r4, #0x38]
	mov r1, #1
	mov r3, #0
	bl ovy190_21b4aa4
	str r0, [r4, #0x30]
	ldr r1, _021B3380 ; =ovy190_21b32ac
	add r0, r4, #0
	bl sub_021B2FAC
_021B337E:
	pop {r4, pc}
	.align 2, 0
_021B3380: .word ovy190_21b32ac
	thumb_func_end ovy190_21b334c

	thumb_func_start ovy190_21b3384
ovy190_21b3384: ; 0x021B3384
	push {r4, lr}
	add r4, r0, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021B3402
	bl sub_02042540
	ldr r0, [r0, #4]
	cmp r0, #7
	bhi _021B3402
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B33A6: ; jump table
	.short _021B3402 - _021B33A6 - 2 ; case 0
	.short _021B33B6 - _021B33A6 - 2 ; case 1
	.short _021B33B6 - _021B33A6 - 2 ; case 2
	.short _021B33B6 - _021B33A6 - 2 ; case 3
	.short _021B33B6 - _021B33A6 - 2 ; case 4
	.short _021B33B6 - _021B33A6 - 2 ; case 5
	.short _021B33B6 - _021B33A6 - 2 ; case 6
	.short _021B33FE - _021B33A6 - 2 ; case 7
_021B33B6:
	ldr r0, [r4, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	bl ovy190_21b49dc
	bl sub_02011DE0
	ldr r0, [r4, #0x34]
	bl ovy190_21b4680
	bl sub_02042788
	cmp r0, #0
	beq _021B33DE
	bl sub_02012154
_021B33DE:
	bl sub_020424E4
	bl sub_02012144
	bl sub_02042478
	ldr r0, [r4, #0x38]
	mov r1, #0x25
	bl ovy190_21b4c38
	ldr r1, _021B3408 ; =ovy190_21b334c
	add r0, r4, #0
	bl sub_021B2FAC
	mov r0, #1
	pop {r4, pc}
_021B33FE:
	bl sub_02012028
_021B3402:
	mov r0, #0
	pop {r4, pc}
	nop
_021B3408: .word ovy190_21b334c
	thumb_func_end ovy190_21b3384

	thumb_func_start ovy190_21b340c
ovy190_21b340c: ; 0x021B340C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B3442
	ldr r0, [r4, #0x38]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B3442
	ldr r0, [r4, #0x40]
	mov r2, #1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B342E
	mov r2, #0
_021B342E:
	ldr r0, [r4, #0x38]
	mov r1, #0
	mov r3, #0
	bl ovy190_21b4aa4
	str r0, [r4, #0x30]
	ldr r1, _021B3444 ; =ovy190_21b32ac
	add r0, r4, #0
	bl sub_021B2FAC
_021B3442:
	pop {r4, pc}
	.align 2, 0
_021B3444: .word ovy190_21b32ac
	thumb_func_end ovy190_21b340c

	thumb_func_start ovy190_21b3448
ovy190_21b3448: ; 0x021B3448
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	bl ovy190_21b4bc4
	cmp r0, #0
	beq _021B34CC
	ldr r0, [r5, #0x30]
	bl ovy190_21b4c04
	cmp r0, #0
	bne _021B349E
	ldr r0, [r5, #0x44]
	bl sub_02017934
	bl sub_0200BA78
	mov r1, #0
	mov r6, #0
	bl sub_0200B8F4
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	bl sub_02017934
	bl sub_0200C260
	mov r1, #1
	bl sub_0200C370
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #5
	bl sub_0200B830
	ldr r0, [r5, #0x40]
	str r6, [r0, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_02009F1C
	add r0, r5, #0
	ldr r1, _021B34D0 ; =ovy190_21b31b4
	b _021B34A8
_021B349E:
	ldr r0, [r5, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r1, _021B34D4 ; =ovy190_21b36bc
	add r0, r5, #0
_021B34A8:
	bl sub_021B2FAC
	ldr r0, [r5, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021B34C2
	ldr r0, [r5, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
_021B34C2:
	ldr r0, [r5, #0x30]
	bl ovy190_21b4b7c
	mov r0, #0
	str r0, [r5, #0x30]
_021B34CC:
	pop {r4, r5, r6, pc}
	nop
_021B34D0: .word ovy190_21b31b4
_021B34D4: .word ovy190_21b36bc
	thumb_func_end ovy190_21b3448

	thumb_func_start ovy190_21b34d8
ovy190_21b34d8: ; 0x021B34D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r2, #1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B34E8
	mov r2, #0
_021B34E8:
	ldr r0, [r4, #0x38]
	mov r1, #1
	mov r3, #1
	bl ovy190_21b4aa4
	str r0, [r4, #0x30]
	ldr r1, _021B3500 ; =ovy190_21b3448
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
	nop
_021B3500: .word ovy190_21b3448
	thumb_func_end ovy190_21b34d8

	thumb_func_start ovy190_21b3504
ovy190_21b3504: ; 0x021B3504
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	bl ovy190_21b4bc4
	cmp r0, #0
	beq _021B35A8
	ldr r0, [r5, #0x30]
	bl ovy190_21b4c04
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r5, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021B3530
	ldr r0, [r5, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
_021B3530:
	ldr r0, [r5, #0x30]
	bl ovy190_21b4b7c
	mov r6, #0
	str r6, [r5, #0x30]
	cmp r4, #0
	bne _021B359A
	ldr r0, [r5, #0x44]
	bl sub_02017934
	bl sub_0200BA78
	add r1, r6, #0
	bl sub_0200B8F4
	add r6, r0, #0
	mov r1, #2
	bl sub_0200B798
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xa
	bl sub_0200B798
	cmp r4, #0
	beq _021B3584
	cmp r0, #1
	blo _021B3584
	cmp r0, #4
	bhi _021B3584
	ldr r0, [r5, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r5, #0x38]
	mov r1, #0x26
	bl ovy190_21b4c38
	ldr r1, _021B35AC ; =ovy190_21b34d8
	add r0, r5, #0
	bl sub_021B2FAC
	pop {r4, r5, r6, pc}
_021B3584:
	ldr r0, [r5, #0x40]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [r5, #0x3c]
	bl sub_02009F1C
	ldr r1, _021B35B0 ; =ovy190_21b31b4
	add r0, r5, #0
	bl sub_021B2FAC
	pop {r4, r5, r6, pc}
_021B359A:
	ldr r0, [r5, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r1, _021B35B4 ; =ovy190_21b36bc
	add r0, r5, #0
	bl sub_021B2FAC
_021B35A8:
	pop {r4, r5, r6, pc}
	nop
_021B35AC: .word ovy190_21b34d8
_021B35B0: .word ovy190_21b31b4
_021B35B4: .word ovy190_21b36bc
	thumb_func_end ovy190_21b3504

	thumb_func_start ovy190_21b35b8
ovy190_21b35b8: ; 0x021B35B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r2, #1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B35C8
	mov r2, #0
_021B35C8:
	ldr r0, [r4, #0x38]
	mov r1, #1
	mov r3, #1
	bl ovy190_21b4aa4
	str r0, [r4, #0x30]
	ldr r1, _021B35E0 ; =ovy190_21b3504
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
	nop
_021B35E0: .word ovy190_21b3504
	thumb_func_end ovy190_21b35b8

	thumb_func_start ovy190_21b35e4
ovy190_21b35e4: ; 0x021B35E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ovy190_21b4bc4
	cmp r0, #0
	beq _021B3644
	ldr r0, [r4, #0x30]
	bl ovy190_21b4c04
	cmp r0, #0
	bne _021B3616
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	mov r1, #0x16
	bl ovy190_21b4c38
	add r0, r4, #0
	ldr r1, _021B3648 ; =ovy190_21b35b8
	b _021B3636
_021B3616:
	ldr r0, [r4, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021B3632
	ldr r0, [r4, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
_021B3632:
	ldr r1, _021B364C ; =ovy190_21b37f0
	add r0, r4, #0
_021B3636:
	bl sub_021B2FAC
	ldr r0, [r4, #0x30]
	bl ovy190_21b4b7c
	mov r0, #0
	str r0, [r4, #0x30]
_021B3644:
	pop {r4, pc}
	nop
_021B3648: .word ovy190_21b35b8
_021B364C: .word ovy190_21b37f0
	thumb_func_end ovy190_21b35e4

	thumb_func_start ovy190_21b3650
ovy190_21b3650: ; 0x021B3650
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r2, #1
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021B3660
	mov r2, #0
_021B3660:
	ldr r0, [r4, #0x38]
	mov r1, #1
	mov r3, #1
	bl ovy190_21b4aa4
	str r0, [r4, #0x30]
	ldr r1, _021B3678 ; =ovy190_21b35e4
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
	nop
_021B3678: .word ovy190_21b35e4
	thumb_func_end ovy190_21b3650

	thumb_func_start ovy190_21b367c
ovy190_21b367c: ; 0x021B367C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B36B4
	add r0, r4, #0
	bl ovy190_21b2f80
	cmp r0, #0
	beq _021B36B4
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	bl sub_020352E0
	cmp r0, #0
	ldr r0, [r4, #0x38]
	beq _021B36A6
	mov r1, #0x2e
	b _021B36A8
_021B36A6:
	mov r1, #0x15
_021B36A8:
	bl ovy190_21b4c38
	ldr r1, _021B36B8 ; =ovy190_21b3650
	add r0, r4, #0
	bl sub_021B2FAC
_021B36B4:
	pop {r4, pc}
	nop
_021B36B8: .word ovy190_21b3650
	thumb_func_end ovy190_21b367c

	thumb_func_start ovy190_21b36bc
ovy190_21b36bc: ; 0x021B36BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035318
	cmp r0, #0
	bne _021B36E6
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	mov r1, #0x27
	bl ovy190_21b4c38
	ldr r0, [r4, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r1, _021B37C4 ; =ovy190_21b3020
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B36E6:
	bl sub_02035320
	cmp r0, #0
	bne _021B370C
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	mov r1, #0x22
	bl ovy190_21b4c38
	ldr r0, [r4, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r1, _021B37C4 ; =ovy190_21b3020
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B370C:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x14]
	cmp r0, #2
	bne _021B3726
	ldr r0, [r4, #0x38]
	mov r1, #0x11
	bl sub_021B4898
	ldr r1, _021B37C8 ; =ovy190_21b340c
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B3726:
	ldr r0, [r4, #0x3c]
	bl sub_02009F7C
	blx sub_02057D40
	cmp r0, #0
	bne _021B375C
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	bl sub_020352E0
	cmp r0, #0
	ldr r0, [r4, #0x38]
	bne _021B374C
	mov r1, #0x12
	b _021B374E
_021B374C:
	mov r1, #0x2b
_021B374E:
	bl ovy190_21b4c38
	ldr r1, _021B37CC ; =ovy190_21b3310
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B375C:
	ldr r0, [r4, #0x3c]
	bl sub_02009F7C
	blx sub_02057CD8
	cmp r0, #0
	bne _021B3792
	mov r0, #1
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	bl sub_020352E0
	cmp r0, #0
	ldr r0, [r4, #0x38]
	bne _021B3782
	mov r1, #0x14
	b _021B3784
_021B3782:
	mov r1, #0x2d
_021B3784:
	bl ovy190_21b4c38
	ldr r1, _021B37D0 ; =ovy190_21b367c
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B3792:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	ldr r0, [r4, #0x38]
	bne _021B37B2
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	mov r1, #0x25
	bl ovy190_21b4c38
	ldr r1, _021B37D4 ; =ovy190_21b334c
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B37B2:
	mov r1, #0x11
	bl sub_021B4898
	ldr r1, _021B37C8 ; =ovy190_21b340c
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
	nop
_021B37C4: .word ovy190_21b3020
_021B37C8: .word ovy190_21b340c
_021B37CC: .word ovy190_21b3310
_021B37D0: .word ovy190_21b367c
_021B37D4: .word ovy190_21b334c
	thumb_func_end ovy190_21b36bc

	thumb_func_start ovy190_21b37d8
ovy190_21b37d8: ; 0x021B37D8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B37EC
	add r0, r4, #0
	mov r1, #0
	bl sub_021B2FAC
_021B37EC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b37d8

	thumb_func_start ovy190_21b37f0
ovy190_21b37f0: ; 0x021B37F0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x40]
	ldr r2, [r1, #0x20]
	cmp r2, #0
	beq _021B3868
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	bne _021B3868
	ldr r0, [r4, #0x38]
	ldr r1, [r1, #0x24]
	blx r2
	cmp r0, #2
	beq _021B3870
	cmp r0, #0
	beq _021B3816
	cmp r0, #1
	beq _021B3826
	pop {r4, pc}
_021B3816:
	ldr r0, [r4, #0x40]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r1, _021B3874 ; =ovy190_21b387c
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B3826:
	ldr r0, [r4, #0x40]
	mov r1, #1
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x38]
	bl ovy190_21b4cdc
	ldr r0, [r4, #0x38]
	bl ovy190_21b4a84
	ldr r0, [r4, #0x38]
	bl ovy190_21b49dc
	bl sub_02042788
	cmp r0, #0
	beq _021B384A
	bl sub_02012154
_021B384A:
	bl sub_020424E4
	bl sub_02012144
	bl sub_02042478
	ldr r0, [r4, #0x38]
	mov r1, #0x25
	bl ovy190_21b4c38
	ldr r1, _021B3878 ; =ovy190_21b334c
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B3868:
	ldr r1, _021B3874 ; =ovy190_21b387c
	add r0, r4, #0
	bl sub_021B2FAC
_021B3870:
	pop {r4, pc}
	nop
_021B3874: .word ovy190_21b387c
_021B3878: .word ovy190_21b334c
	thumb_func_end ovy190_21b37f0

	thumb_func_start ovy190_21b387c
ovy190_21b387c: ; 0x021B387C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _021B38AE
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _021B38AE
	mov r0, #8
	bl sub_02005EA0
_021B38AE:
	ldr r1, _021B38BC ; =ovy190_21b37d8
	add r0, r4, #0
	bl sub_021B2FAC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B38BC: .word ovy190_21b37d8
	thumb_func_end ovy190_21b387c

	thumb_func_start ovy190_21b38c0
ovy190_21b38c0: ; 0x021B38C0
	push {r4, lr}
	add r4, r0, #0
	bl ovy190_21b3384
	cmp r0, #0
	bne _021B38EA
	ldr r1, [r4, #0x40]
	ldr r0, _021B38EC ; =0x021B5350
	ldr r1, [r1, #0x10]
	bl sub_0215DE44
	cmp r0, #0
	beq _021B38E4
	ldr r1, _021B38F0 ; =ovy190_21b3904
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B38E4:
	add r0, r4, #0
	bl ovy190_21b3384
_021B38EA:
	pop {r4, pc}
	.align 2, 0
_021B38EC: .word 0x021B5350
_021B38F0: .word ovy190_21b3904
	thumb_func_end ovy190_21b38c0
_021B38F4:
	.byte 0x01, 0x49, 0x02, 0x4B, 0x18, 0x47, 0xC0, 0x46, 0xC1, 0x38, 0x1B, 0x02
	.byte 0xAD, 0x2F, 0x1B, 0x02

	thumb_func_start ovy190_21b3904
ovy190_21b3904: ; 0x021B3904
	push {r4, lr}
	add r4, r0, #0
	bl ovy190_21b3384
	cmp r0, #0
	bne _021B3934
	bl sub_0215DEA8
	cmp r0, #3
	bne _021B3922
	ldr r1, _021B3938 ; =ovy190_21b37f0
	add r0, r4, #0
	bl sub_021B2FAC
	pop {r4, pc}
_021B3922:
	cmp r0, #4
	beq _021B392E
	cmp r0, #0
	beq _021B392E
	cmp r0, #5
	bne _021B3934
_021B392E:
	add r0, r4, #0
	bl ovy190_21b3384
_021B3934:
	pop {r4, pc}
	nop
_021B3938: .word ovy190_21b37f0
	thumb_func_end ovy190_21b3904

	thumb_func_start ovy190_21b393c
ovy190_21b393c: ; 0x021B393C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021B3954
	ldr r0, _021B3A10 ; =0x021B5350
	ldr r2, _021B3A14 ; =0x021B5354
	mov r1, #0
	bl sub_0203CB94
_021B3954:
	mov r2, #6
	mov r0, #1
	mov r1, #0x78
	lsl r2, r2, #0xe
	mov r6, #1
	mov r7, #0x78
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0x78
	bl sub_0203AAEC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x48
	blx MI_CpuFill8
	strh r7, [r4, #0xc]
	ldr r0, [r5]
	str r0, [r4, #0x44]
	ldrh r0, [r4, #0xc]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl ovy190_21b3a80
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0xc]
	ldr r1, _021B3A18 ; =0x000001B7
	ldr r2, [r5, #8]
	bl ovy190_21b46cc
	str r0, [r4, #0x38]
	ldr r0, [r5]
	bl sub_02017934
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	bl sub_02017238
	str r0, [r4, #0x3c]
	mov r0, #6
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r4, #0xc]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	str r5, [r4, #0x40]
	bl sub_02042788
	cmp r0, #0
	beq _021B39D6
	bl sub_020424E4
	bl sub_02042478
	bl sub_02012154
	bl sub_02012144
_021B39D6:
	ldr r1, _021B3A1C ; =ovy190_21b36bc
	add r0, r4, #0
	bl sub_021B2FAC
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _021B39FA
	ldr r0, [r4, #0x38]
	mov r1, #0x23
	bl ovy190_21b4a14
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _021B3A08
	ldr r0, _021B3A20 ; =0x00000481
	b _021B3A02
_021B39FA:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bne _021B3A08
	ldr r0, _021B3A24 ; =0x00000483
_021B3A02:
	ldr r1, _021B3A28 ; =0x0000FFFF
	bl sub_02005DF4
_021B3A08:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B3A10: .word 0x021B5350
_021B3A14: .word 0x021B5354
_021B3A18: .word 0x000001B7
_021B3A1C: .word ovy190_21b36bc
_021B3A20: .word 0x00000481
_021B3A24: .word 0x00000483
_021B3A28: .word 0x0000FFFF
	thumb_func_end ovy190_21b393c

	thumb_func_start ovy190_21b3a2c
ovy190_21b3a2c: ; 0x021B3A2C
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r0, [r5, #0x34]
	mov r4, #1
	bl ovy190_21b3b3c
	ldr r0, [r5, #0x38]
	bl ovy190_21b47d0
	ldr r1, [r5]
	cmp r1, #0
	beq _021B3A4A
	add r0, r5, #0
	blx r1
	mov r4, #0
_021B3A4A:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021B3A54
	bl ovy190_21b4b90
_021B3A54:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy190_21b3a2c

	thumb_func_start ovy190_21b3a58
ovy190_21b3a58: ; 0x021B3A58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	mov r0, #7
	bl sub_02044B84
	ldr r0, [r4, #0x38]
	bl ovy190_21b47e4
	ldr r0, [r4, #0x34]
	bl ovy190_21b3b4c
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x78
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy190_21b3a58

	thumb_func_start ovy190_21b3a80
ovy190_21b3a80: ; 0x021B3A80
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r1, #0
	mov r1, #0x92
	str r1, [sp]
	ldr r1, _021B3B24 ; =0x000014BC
	ldr r3, _021B3B28 ; =0x021B53B8
	mov r2, #1
	add r5, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	strh r5, [r4, #0xc]
	mov r0, #0
	str r6, [r4, #8]
	mov r5, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldr r6, _021B3B2C ; =0x04000050
	mov r0, #1
	strh r5, [r6]
	bl sub_02046DF8
	ldr r2, _021B3B30 ; =0x04001000
	lsr r0, r6, #0xa
	ldr r1, [r2]
	orr r0, r1
	str r0, [r2]
	bl GX_DispOn
	ldrh r0, [r4, #0xc]
	bl sub_020444A4
	ldr r0, _021B3B34 ; =0x021B5388
	bl sub_02046C40
	ldr r0, _021B3B38 ; =0x021B5378
	bl sub_02044710
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B3AFC
	cmp r0, #1
	bne _021B3B12
	add r0, r4, #0
	add r1, r5, #0
	bl ovy190_21b3cec
	add r0, r4, #0
	mov r1, #4
	bl ovy190_21b3f5c
	add r0, r4, #0
	bl ovy190_21b4518
	add r0, r4, #0
	bl ovy190_21b42e0
	b _021B3B12
_021B3AFC:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy190_21b3ba0
	add r0, r4, #0
	mov r1, #4
	bl ovy190_21b3e04
	add r0, r4, #0
	bl ovy190_21b4074
_021B3B12:
	mov r0, #0x1f
	bl sub_02046DC0
	mov r0, #0x1f
	bl sub_02046D38
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B3B24: .word 0x000014BC
_021B3B28: .word 0x021B53B8
_021B3B2C: .word 0x04000050
_021B3B30: .word 0x04001000
_021B3B34: .word 0x021B5388
_021B3B38: .word 0x021B5378
	thumb_func_end ovy190_21b3a80

	thumb_func_start ovy190_21b3b3c
ovy190_21b3b3c: ; 0x021B3B3C
	push {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #1
	bne _021B3B48
	bl sub_021B4554
_021B3B48:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy190_21b3b3c

	thumb_func_start ovy190_21b3b4c
ovy190_21b3b4c: ; 0x021B3B4C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #1
	bne _021B3B5C
	bl ovy190_21b4594
	b _021B3B6C
_021B3B5C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021B3B6C
	bl sub_0203A6A8
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
_021B3B6C:
	mov r0, #5
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r0, #6
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
	bl sub_02044528
	add r0, r4, #0
	bl sub_0203A24C
	pop {r4, pc}
	thumb_func_end ovy190_21b3b4c

	thumb_func_start ovy190_21b3ba0
ovy190_21b3ba0: ; 0x021B3BA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	ldr r4, _021B3CDC ; =0x021B50D4
	add r3, sp, #0x6c
	add r5, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B3CE0 ; =0x021B5234
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r5, #1
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r7, #0x20
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B3CE4 ; =0x021B5214
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r5, #2
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add r4, r5, #3
	ldr r5, _021B3CE8 ; =0x021B51F4
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B3CDC: .word 0x021B50D4
_021B3CE0: .word 0x021B5234
_021B3CE4: .word 0x021B5214
_021B3CE8: .word 0x021B51F4
	thumb_func_end ovy190_21b3ba0

	thumb_func_start ovy190_21b3cec
ovy190_21b3cec: ; 0x021B3CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	ldr r5, _021B3DF4 ; =0x021B51D4
	add r3, sp, #0x6c
	add r4, r1, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	mov r7, #1
	bl sub_02044C98
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B3DF8 ; =0x021B51B4
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r5, r4, #1
	lsl r0, r5, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B3DFC ; =0x021B5194
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r5, r4, #2
	lsl r0, r5, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r5, _021B3E00 ; =0x021B5294
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r4, #3
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r7, #0
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_021B3DF4: .word 0x021B51D4
_021B3DF8: .word 0x021B51B4
_021B3DFC: .word 0x021B5194
_021B3E00: .word 0x021B5294
	thumb_func_end ovy190_21b3cec

	thumb_func_start ovy190_21b3e04
ovy190_21b3e04: ; 0x021B3E04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	ldr r4, _021B3F4C ; =0x021B5154
	add r3, sp, #0x6c
	add r5, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r5, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B3F50 ; =0x021B5134
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r5, #1
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r7, #0x20
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B3F54 ; =0x021B5114
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r5, #2
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add r4, r5, #3
	ldr r5, _021B3F58 ; =0x021B50F4
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B3F4C: .word 0x021B5154
_021B3F50: .word 0x021B5134
_021B3F54: .word 0x021B5114
_021B3F58: .word 0x021B50F4
	thumb_func_end ovy190_21b3e04

	thumb_func_start ovy190_21b3f5c
ovy190_21b3f5c: ; 0x021B3F5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	ldr r5, _021B4064 ; =0x021B5174
	add r3, sp, #0x6c
	add r4, r1, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	mov r7, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B4068 ; =0x021B50B4
	add r3, sp, #0x4c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r5, r4, #1
	lsl r0, r5, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r6, _021B406C ; =0x021B5254
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r5, r4, #2
	lsl r0, r5, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	mov r2, #0
	bl sub_0204476C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	ldr r5, _021B4070 ; =0x021B5274
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r4, r4, #3
	lsl r0, r4, #0x18
	add r1, r2, #0
	lsr r0, r0, #0x18
	add r2, r7, #0
	bl sub_0204476C
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02044C98
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044F90
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_021B4064: .word 0x021B5174
_021B4068: .word 0x021B50B4
_021B406C: .word 0x021B5254
_021B4070: .word 0x021B5274
	thumb_func_end ovy190_21b3f5c

	thumb_func_start ovy190_21b4074
ovy190_21b4074: ; 0x021B4074
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, #0x91
	ldrh r1, [r1, #0xc]
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp, #0x18]
	str r1, [sp]
	ldr r1, [sp, #0xc]
	mov r2, #4
	ldrh r1, [r1, #0xc]
	mov r3, #0
	str r0, [sp, #0x24]
	str r1, [sp, #4]
	mov r1, #3
	bl sub_0204B0D4
	ldr r0, [sp, #0x18]
	mov r1, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #4
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204ADA8
	ldr r0, [sp, #0x18]
	mov r1, #6
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #4
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204AF50
	ldr r0, [sp, #0x18]
	mov r1, #3
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #0
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	bl sub_0204B0D4
	ldr r0, [sp, #0x18]
	mov r1, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204ADA8
	ldr r0, [sp, #0x18]
	mov r1, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204AF50
	ldr r0, [sp, #0x18]
	mov r1, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #3
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204ADA8
	ldr r0, [sp, #0x18]
	mov r1, #7
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #3
	ldrh r0, [r0, #0xc]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204AF50
	ldr r0, [sp, #0xc]
	mov r2, #0x97
	ldrh r4, [r0, #0xc]
	add r0, #0x10
	mov r1, #0
	lsl r2, r2, #4
	blx MI_CpuFill8
	ldr r0, [sp, #0x24]
	mov r1, #2
	add r2, sp, #0x30
	add r3, r4, #0
	bl sub_0204B37C
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r0, #0xc]
	add r1, #0x18
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x30]
	add r2, r4, #0
	ldr r1, [sp, #0xc]
	add r2, #0x18
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, #0x18
	add r0, r0, r4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	add r0, #0x18
	str r0, [sp, #0x2c]
_021B419E:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	cmp r1, #0xf
	blt _021B41A8
	sub r1, #0xf
_021B41A8:
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	lsl r1, r0, #5
	ldr r0, [sp, #0x2c]
	add r7, r0, r1
_021B41BE:
	ldr r0, [sp, #0x1c]
	mov r4, #4
	asr r2, r0, #8
	ldr r0, [sp, #0x18]
	lsl r1, r0, #5
	ldr r0, [sp, #0x28]
	add r5, r0, r1
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
_021B41D0:
	ldr r0, [sp, #0x10]
	lsl r1, r4, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x18]
	mov r2, #1
	add r3, r6, #0
	str r0, [sp]
	add r0, r7, r1
	add r1, r5, r1
	bl sub_0202780C
	add r4, r4, #1
	cmp r4, #0xb
	blt _021B41D0
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	cmp r0, #1
	beq _021B4212
	mov r0, #6
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _021B41BE
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	b _021B41BE
_021B4212:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xf
	blt _021B419E
	mov r1, #0x7e
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x1e
	lsl r1, r1, #6
	blx DC_FlushRange
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, _021B4264 ; =ovy190_21b4270
	add r1, #0x10
	mov r2, #0x14
	bl sub_020056FC
	ldr r1, [sp, #0xc]
	mov r2, #8
	str r0, [r1, #0x10]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B4268 ; =0x04000050
	mov r1, #1
	mov r3, #8
	bl G2x_SetBlendAlpha_
	ldr r1, _021B426C ; =0x0000097C
	ldr r0, [sp, #0xc]
	mov r2, #0
	strb r2, [r0, r1]
	ldr r0, [sp, #0x24]
	bl sub_0204AB0C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B4264: .word ovy190_21b4270
_021B4268: .word 0x04000050
_021B426C: .word 0x0000097C
	thumb_func_end ovy190_21b4074

	thumb_func_start ovy190_21b4270
ovy190_21b4270: ; 0x021B4270
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021B42D4
	ldr r4, _021B42D8 ; =0x0000096B
	mov r0, #1
	ldrb r1, [r5, r4]
	eor r1, r0
	strb r1, [r5, r4]
	ldrb r1, [r5, r4]
	tst r0, r1
	bne _021B42D4
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	mov r6, #0x1f
	lsl r6, r6, #4
	add r1, r5, r6
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0x28
	mov r2, #0xe
	bl GX_LoadBGPltt
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	add r1, r5, r6
	mov r2, #0xe
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0x28
	bl GXS_LoadBGPltt
	sub r0, r4, #3
	ldrsh r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #3
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x3c
	blt _021B42C8
	mov r1, #0
	sub r0, r4, #3
	strh r1, [r5, r0]
_021B42C8:
	ldr r0, _021B42DC ; =0x0000096C
	mov r1, #2
	ldrb r0, [r5, r0]
	mov r2, #7
	bl sub_02044CFC
_021B42D4:
	pop {r4, r5, r6, pc}
	nop
_021B42D8: .word 0x0000096B
_021B42DC: .word 0x0000096C
	thumb_func_end ovy190_21b4270

	thumb_func_start ovy190_21b42e0
ovy190_21b42e0: ; 0x021B42E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrh r1, [r5, #0xc]
	mov r0, #0x8f
	bl sub_0204AA30
	mov r7, #0
	str r7, [sp]
	ldrh r1, [r5, #0xc]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #0
	add r6, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, #0xc]
	mov r1, #7
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r1, #0x12
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [r5]
	mov r1, #0x13
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, #6
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204AFB0
	ldr r0, [r5]
	mov r1, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, #7
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204AFB0
	str r7, [sp]
	ldrh r0, [r5, #0xc]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, #0xc]
	mov r1, #6
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r1, #0xf
	mov r2, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [r5, #4]
	mov r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204AFB0
	ldr r0, [r5, #4]
	mov r1, #0x11
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, #2
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204AFB0
	ldrh r0, [r5, #0xc]
	mov r1, #9
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl sub_0204B81C
	mov r4, #0x99
	lsl r4, r4, #4
	str r0, [r5, r4]
	str r7, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldrh r0, [r5, #0xc]
	mov r1, #3
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204BBB8
	sub r1, r4, #4
	str r0, [r5, r1]
	ldrh r3, [r5, #0xc]
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0x19
	bl sub_0204BDE0
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_0204AB0C
	add r6, sp, #0x10
	mov r0, #0x80
	strh r0, [r6, #8]
	mov r0, #0x60
	strh r0, [r6, #0xa]
	mov r0, #0xa
	strh r0, [r6, #0xc]
	strb r7, [r6, #0xe]
	mov r0, #2
	strb r0, [r6, #0xf]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, #0xc]
	sub r2, r4, #4
	add r3, r4, #4
	str r0, [sp, #8]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0xc
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0x80
	strh r0, [r6]
	mov r0, #0x60
	strh r0, [r6, #2]
	mov r0, #0xb
	strh r0, [r6, #4]
	mov r0, #1
	strb r0, [r6, #6]
	mov r0, #2
	strb r0, [r6, #7]
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, #0xc]
	sub r2, r4, #4
	add r3, r4, #4
	str r0, [sp, #8]
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r4]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0x10
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r0, r4, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B4508 ; =0x04000050
	mov r1, #4
	mov r2, #3
	mov r3, #6
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B450C ; =0x04001050
	mov r1, #8
	mov r2, #0x15
	mov r3, #6
	bl G2x_SetBlendAlpha_
	ldr r0, _021B4510 ; =ovy190_21b45fc
	add r1, r5, #0
	mov r2, #0
	bl sub_02005680
	add r1, r4, #0
	sub r1, #8
	str r0, [r5, r1]
	add r4, #0x3a
	mov r1, #0xc0
	mov r2, #0x5b
	add r0, r5, r4
	lsl r2, r2, #4
	lsl r3, r1, #5
	bl sub_02029B54
	ldr r1, _021B4514 ; =0x00000B4A
	mov r0, #0xa
	strh r0, [r5, r1]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B4508: .word 0x04000050
_021B450C: .word 0x04001050
_021B4510: .word ovy190_21b45fc
_021B4514: .word 0x00000B4A
	thumb_func_end ovy190_21b42e0

	thumb_func_start ovy190_21b4518
ovy190_21b4518: ; 0x021B4518
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0xc]
	ldr r0, _021B4548 ; =0x02093F08
	ldr r1, _021B454C ; =0x021B5388
	bl sub_0204B6A8
	ldrh r2, [r4, #0xc]
	mov r0, #0x28
	mov r1, #0
	bl sub_0204BF1C
	mov r5, #0x26
	lsl r5, r5, #6
	str r0, [r4, r5]
	ldr r0, _021B4550 ; =ovy190_21b4648
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	add r1, r5, #4
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_021B4548: .word 0x02093F08
_021B454C: .word 0x021B5388
_021B4550: .word ovy190_21b4648
	thumb_func_end ovy190_21b4518

	thumb_func_start sub_021B4554
sub_021B4554: ; 0x021B4554
	ldr r1, _021B4584 ; =0x000009C8
	ldrsh r2, [r0, r1]
	add r2, r2, #1
	strh r2, [r0, r1]
	ldrsh r2, [r0, r1]
	cmp r2, #0xc0
	blt _021B4566
	mov r2, #0
	strh r2, [r0, r1]
_021B4566:
	ldr r2, _021B4588 ; =0x00000B4A
	ldrsh r1, [r0, r2]
	cmp r1, #0
	beq _021B457E
	add r1, r1, #1
	strh r1, [r0, r2]
	ldrsh r3, [r0, r2]
	ldr r1, _021B458C ; =0x00000101
	cmp r3, r1
	blt _021B457E
	mov r1, #1
	strh r1, [r0, r2]
_021B457E:
	ldr r3, _021B4590 ; =sub_0204B794
	bx r3
	nop
_021B4584: .word 0x000009C8
_021B4588: .word 0x00000B4A
_021B458C: .word 0x00000101
_021B4590: .word sub_0204B794
	thumb_func_end sub_021B4554

	thumb_func_start ovy190_21b4594
ovy190_21b4594: ; 0x021B4594
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021B45F0 ; =0x0000099C
	add r5, r0, #0
	mov r4, #0
_021B459C:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021B45AE
	bl sub_0204C108
	mov r0, #0
	str r0, [r6, r7]
_021B45AE:
	add r4, r4, #1
	cmp r4, #5
	blt _021B459C
	ldr r4, _021B45F4 ; =0x0000098C
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BE64
	sub r0, r4, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B45DA
	bl sub_0203A6A8
_021B45DA:
	ldr r4, _021B45F8 ; =0x00000984
	ldr r0, [r5, r4]
	bl sub_0203A6A8
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B45F0: .word 0x0000099C
_021B45F4: .word 0x0000098C
_021B45F8: .word 0x00000984
	thumb_func_end ovy190_21b4594

	thumb_func_start ovy190_21b45fc
ovy190_21b45fc: ; 0x021B45FC
	push {r4, r5, r6, lr}
	ldr r6, _021B4638 ; =0x000009C8
	add r5, r1, #0
	ldr r4, _021B463C ; =0x04000006
	ldrsh r0, [r5, r6]
	ldrh r1, [r4]
	add r0, r0, #1
	add r0, r1, r0
	mov r1, #0xc0
	blx sub_0208D65C
	sub r0, r4, #2
	ldrh r2, [r0]
	mov r0, #2
	tst r0, r2
	beq _021B4634
	add r0, r6, #2
	add r3, r5, r0
	lsl r2, r1, #1
	ldrsh r1, [r3, r2]
	ldr r0, _021B4640 ; =0x000001FF
	add r4, #0xe
	and r1, r0
	str r1, [r4]
	ldrsh r1, [r3, r2]
	and r1, r0
	ldr r0, _021B4644 ; =0x04001018
	str r1, [r0]
_021B4634:
	pop {r4, r5, r6, pc}
	nop
_021B4638: .word 0x000009C8
_021B463C: .word 0x04000006
_021B4640: .word 0x000001FF
_021B4644: .word 0x04001018
	thumb_func_end ovy190_21b45fc

	thumb_func_start ovy190_21b4648
ovy190_21b4648: ; 0x021B4648
	push {r3, r4, r5, lr}
	ldr r5, _021B4670 ; =0x00000B4A
	add r4, r1, #0
	ldrsh r2, [r4, r5]
	cmp r2, #0
	ble _021B466A
	mov r0, #7
	mov r1, #0
	sub r2, r2, #1
	bl sub_02044CFC
	ldrsh r2, [r4, r5]
	mov r0, #2
	mov r1, #0
	sub r2, r2, #1
	bl sub_02044CFC
_021B466A:
	bl sub_0204B7C8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B4670: .word 0x00000B4A
	thumb_func_end ovy190_21b4648

	thumb_func_start sub_021B4674
sub_021B4674: ; 0x021B4674
	ldr r1, _021B467C ; =0x000009C4
	mov r2, #1
	str r2, [r0, r1]
	bx lr
	.align 2, 0
_021B467C: .word 0x000009C4
	thumb_func_end sub_021B4674

	thumb_func_start ovy190_21b4680
ovy190_21b4680: ; 0x021B4680
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021B46B0
	cmp r0, #1
	bne _021B46C0
	ldr r0, _021B46C4 ; =0x04000050
	mov r4, #0x10
	mov r1, #4
	mov r2, #3
	mov r3, #6
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, _021B46C8 ; =0x04001050
	mov r1, #8
	mov r2, #0x15
	mov r3, #6
	str r4, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
_021B46B0:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B46C4 ; =0x04000050
	mov r1, #1
	mov r2, #8
	mov r3, #8
	bl G2x_SetBlendAlpha_
_021B46C0:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021B46C4: .word 0x04000050
_021B46C8: .word 0x04001050
	thumb_func_end ovy190_21b4680

	thumb_func_start ovy190_21b46cc
ovy190_21b46cc: ; 0x021B46CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x87
	add r6, r2, #0
	str r1, [sp]
	ldr r3, _021B47CC ; =0x021B53CC
	mov r1, #0x84
	mov r2, #1
	add r5, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, #0x4c
	strh r5, [r0]
	add r0, r4, #0
	str r6, [r4, #0x50]
	add r0, #0x4c
	ldrh r0, [r0]
	bl sub_02048080
	bl sub_020232D0
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	mov r5, #0
	bl sub_0203A78C
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	bl sub_02021998
	add r1, r4, #0
	str r0, [r4, #0x48]
	add r1, #0x4c
	mov r0, #0x19
	ldrh r1, [r1]
	lsl r0, r0, #4
	bl sub_02048530
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	add r3, r4, #0
	str r0, [r4, #0x24]
	add r3, #0x4c
	lsl r2, r7, #0x10
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl sub_0204875C
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	bl sub_020241D4
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r1, #9
	str r0, [sp]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x48]
	mov r0, #5
	bl sub_0202E168
	str r0, [r4, #0x70]
	ldr r0, [r4, #0x50]
	bl ovy190_21b4d00
	add r3, r4, #0
	add r3, #0x4c
	ldrh r3, [r3]
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	str r0, [r4]
	ldr r0, [r4, #0x50]
	bl ovy190_21b4d28
	add r3, r4, #0
	add r3, #0x4c
	ldrh r3, [r3]
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	str r0, [r4, #4]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _021B47AA
	mov r5, #4
_021B47AA:
	mov r0, #0x20
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r3, #0x16
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	add r2, r5, #0
	lsl r3, r3, #4
	bl sub_0204B0B8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B47CC: .word 0x021B53CC
	thumb_func_end ovy190_21b46cc

	thumb_func_start ovy190_21b47d0
ovy190_21b47d0: ; 0x021B47D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl sub_0203A7F4
	ldr r0, [r4, #0x48]
	bl sub_02021A3C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b47d0

	thumb_func_start ovy190_21b47e4
ovy190_21b47e4: ; 0x021B47E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B47FC
	bl sub_0203580C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_021B47FC:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021B480A
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, #0x38]
_021B480A:
	add r0, r4, #0
	bl ovy190_21b4a84
	ldr r5, [r4]
	ldr r0, [r4, #0x50]
	bl ovy190_21b4d00
	lsr r2, r5, #0x10
	lsl r1, r5, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r5, [r4, #4]
	ldr r0, [r4, #0x50]
	bl ovy190_21b4d28
	lsr r2, r5, #0x10
	lsl r1, r5, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	bl sub_020232D8
	ldr r0, [r4, #0x20]
	bl sub_02024274
	ldr r0, [r4, #0x1c]
	bl sub_020487D4
	ldr r0, [r4, #0x24]
	bl sub_02022DA8
	ldr r0, [r4, #0x28]
	bl sub_02048564
	ldr r0, [r4, #0x70]
	bl sub_0202E1DC
	ldr r0, [r4, #0x44]
	bl sub_0203A83C
	ldr r0, [r4, #0x48]
	bl sub_02021C44
	ldr r0, [r4, #0x48]
	bl sub_02021A18
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021B487E
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x2c]
_021B487E:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B488C
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x30]
_021B488C:
	bl sub_020480A8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy190_21b47e4

	thumb_func_start sub_021B4898
sub_021B4898: ; 0x021B4898
	add r2, r1, #0
	ldr r1, [r0, #0x1c]
	ldr r3, _021B48A0 ; =ovy190_21b48a4
	bx r3
	.align 2, 0
_021B48A0: .word ovy190_21b48a4
	thumb_func_end sub_021B4898

	thumb_func_start ovy190_21b48a4
ovy190_21b48a4: ; 0x021B48A4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r5, #0x28]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [r5, #0x50]
	mov r4, #1
	cmp r0, #0
	beq _021B48BE
	mov r4, #0x13
_021B48BE:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _021B48E0
	ldr r0, [r5, #0x50]
	bl ovy190_21b4d00
	mov r1, #4
	str r1, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x2c]
_021B48E0:
	ldr r4, [r5, #0x2c]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r6, #2
	bl sub_020232E8
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _021B4902
	mov r6, #6
_021B4902:
	add r0, r5, #0
	add r0, #0x3c
	add r1, r6, #0
	bl sub_0202E678
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021B4916
	bl sub_020223CC
_021B4916:
	bl sub_02017BCC
	ldr r1, [r5, #0x24]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	mov r0, #0xf
	str r0, [sp, #0x14]
	ldr r3, [r5, #0x28]
	add r0, r4, #0
	bl sub_02022268
	ldr r2, [r5]
	str r0, [r5, #0x38]
	lsl r2, r2, #0x10
	add r0, r4, #0
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #0xc
	bl sub_02024E80
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	ldr r0, [r5, #0x50]
	bl ovy190_21b4d00
	bl sub_02045B7C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ovy190_21b48a4

	thumb_func_start sub_021B496C
sub_021B496C: ; 0x021B496C
	add r2, r1, #0
	ldr r1, [r0, #0x1c]
	ldr r3, _021B4974 ; =ovy190_21b4978
	bx r3
	.align 2, 0
_021B4974: .word ovy190_21b4978
	thumb_func_end sub_021B496C

	thumb_func_start ovy190_21b4978
ovy190_21b4978: ; 0x021B4978
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ovy190_21b48a4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4998
	bl sub_0203580C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_021B4998:
	bl sub_02005718
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	mov r2, #0xf
	mov r3, #0x10
	str r1, [sp]
	ldr r1, [r4, #0x2c]
	bl sub_02035604
	add r4, #0x80
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b4978

	thumb_func_start ovy190_21b49b8
ovy190_21b49b8: ; 0x021B49B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x38]
	mov r4, #1
	cmp r1, #0
	beq _021B49D8
	add r0, #0x3c
	bl sub_0202E68C
	add r4, r0, #0
	beq _021B49D8
	ldr r0, [r5, #0x38]
	bl sub_020223CC
	mov r0, #0
	str r0, [r5, #0x38]
_021B49D8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy190_21b49b8

	thumb_func_start ovy190_21b49dc
ovy190_21b49dc: ; 0x021B49DC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B49F4
	bl sub_0203580C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_021B49F4:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021B4A10
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x2c]
	bl sub_020484B4
	ldr r0, [r4, #0x50]
	bl ovy190_21b4d00
	bl sub_02045B7C
_021B4A10:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b49dc

	thumb_func_start ovy190_21b4a14
ovy190_21b4a14: ; 0x021B4A14
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	cmp r0, #0
	bne _021B4A3A
	mov r0, #2
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #4
	mov r2, #7
	mov r3, #0x18
	str r0, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x34]
_021B4A3A:
	ldr r4, [r5, #0x34]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	add r1, r6, #0
	bl GFL_MsgDataLoadStrbuf
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x24]
	mov r2, #0
	str r1, [sp]
	mov r1, #0xf3
	lsl r1, r1, #6
	str r1, [sp, #4]
	ldr r3, [r5, #0x28]
	mov r1, #0
	bl sub_02021D28
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy190_21b4a14

	thumb_func_start ovy190_21b4a84
ovy190_21b4a84: ; 0x021B4A84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B4AA2
	bl sub_020484B4
	ldr r0, [r4, #0x34]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x34]
	mov r0, #1
	bl sub_02045B7C
_021B4AA2:
	pop {r4, pc}
	thumb_func_end ovy190_21b4a84

	thumb_func_start ovy190_21b4aa4
ovy190_21b4aa4: ; 0x021B4AA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, [r5, #0x50]
	add r4, r5, #0
	add r7, r3, #0
	add r4, #0x54
	str r2, [r5, #0x54]
	cmp r2, #0
	beq _021B4AC0
	cmp r2, #1
	beq _021B4B60
	b _021B4B6E
_021B4AC0:
	add r0, #0x4c
	ldrh r0, [r0]
	mov r2, #2
	str r0, [sp]
	add r0, sp, #0
	strb r2, [r0, #4]
	add r2, r4, #4
	str r2, [sp, #8]
	cmp r1, #0
	beq _021B4ADA
	cmp r1, #1
	beq _021B4AE2
	b _021B4AEE
_021B4ADA:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0xd
	b _021B4AE8
_021B4AE2:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
_021B4AE8:
	strb r1, [r0, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
_021B4AEE:
	mov r1, #0xd
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r1, r5, #0
	add r1, #0x4c
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #0x1c
	str r2, [r4, #4]
	bl GFL_MsgDataLoadStrbuf
	add r1, r5, #0
	add r1, #0x4c
	ldr r0, _021B4B74 ; =0x000039E0
	ldrh r1, [r1]
	strh r0, [r4, #8]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #0x1d
	str r2, [r4, #0x10]
	bl GFL_MsgDataLoadStrbuf
	ldr r0, _021B4B74 ; =0x000039E0
	ldr r1, [r4, #0x1c]
	strh r0, [r4, #0x14]
	add r0, sp, #0
	bl sub_0202D974
	str r0, [r4, #0x20]
	ldr r0, [r4, #4]
	bl sub_02048564
	ldr r0, [r4, #0x10]
	bl sub_02048564
	cmp r6, #0
	beq _021B4B56
	mov r2, #0x11
	ldr r0, _021B4B78 ; =0x04001050
	mov r1, #0x11
	sub r2, #0x19
	bl G2x_SetBlendBrightness_
_021B4B56:
	ldr r0, [r4, #0x20]
	add r1, r7, #0
	bl sub_0202DEF8
	b _021B4B6E
_021B4B60:
	add r2, r7, #0
	bl ovy190_21b4d50
	str r0, [r4, #0x24]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x28]
_021B4B6E:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B4B74: .word 0x000039E0
_021B4B78: .word 0x04001050
	thumb_func_end ovy190_21b4aa4

	thumb_func_start ovy190_21b4b7c
ovy190_21b4b7c: ; 0x021B4B7C
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _021B4B88
	cmp r1, #1
	pop {r3, pc}
_021B4B88:
	ldr r0, [r0, #0x20]
	bl sub_0202DA54
	pop {r3, pc}
	thumb_func_end ovy190_21b4b7c

	thumb_func_start ovy190_21b4b90
ovy190_21b4b90: ; 0x021B4B90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021B4BA0
	cmp r0, #1
	beq _021B4BA8
	pop {r4, pc}
_021B4BA0:
	ldr r0, [r4, #0x20]
	bl sub_0202DB70
	pop {r4, pc}
_021B4BA8:
	ldr r0, [r4, #0x24]
	bl sub_0202568C
	cmp r0, #0
	bne _021B4BBA
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x28]
	pop {r4, pc}
_021B4BBA:
	ldr r0, [r4, #0x24]
	bl sub_02025634
	str r0, [r4, #0x28]
	pop {r4, pc}
	thumb_func_end ovy190_21b4b90

	thumb_func_start ovy190_21b4bc4
ovy190_21b4bc4: ; 0x021B4BC4
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _021B4BD2
	cmp r1, #1
	beq _021B4BDA
	b _021B4BEC
_021B4BD2:
	ldr r0, [r0, #0x20]
	bl sub_0202DBE4
	pop {r3, pc}
_021B4BDA:
	ldr r1, [r0, #0x28]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021B4BE8
	mov r0, #1
	pop {r3, pc}
_021B4BE8:
	mov r0, #0
	pop {r3, pc}
_021B4BEC:
	ldr r0, _021B4BFC ; =0x021B53E0
	ldr r2, _021B4C00 ; =0x021B53E4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	nop
_021B4BFC: .word 0x021B53E0
_021B4C00: .word 0x021B53E4
	thumb_func_end ovy190_21b4bc4

	thumb_func_start ovy190_21b4c04
ovy190_21b4c04: ; 0x021B4C04
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _021B4C12
	cmp r1, #1
	beq _021B4C1A
	b _021B4C22
_021B4C12:
	ldr r0, [r0, #0x20]
	bl sub_0202DC00
	pop {r3, pc}
_021B4C1A:
	ldr r0, [r0, #0x28]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
_021B4C22:
	ldr r0, _021B4C30 ; =0x021B53E0
	ldr r2, _021B4C34 ; =0x021B53E4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021B4C30: .word 0x021B53E0
_021B4C34: .word 0x021B53E4
	thumb_func_end ovy190_21b4c04

	thumb_func_start ovy190_21b4c38
ovy190_21b4c38: ; 0x021B4C38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	bl GFL_MsgDataLoadStrbuf
	add r1, r5, #0
	add r1, #0x4c
	ldrh r1, [r1]
	ldr r0, [r5, #0x28]
	bl sub_020485A4
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x28]
	add r2, r6, #0
	bl sub_02024920
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021B4C80
	ldr r0, [r5, #0x50]
	bl ovy190_21b4d28
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	mov r1, #1
	mov r2, #1
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x30]
_021B4C80:
	ldr r4, [r5, #0x30]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x24]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x28]
	mov r1, #0
	bl sub_02021CFC
	ldr r2, [r5, #4]
	add r0, r4, #0
	lsl r2, r2, #0x10
	mov r1, #1
	lsr r2, r2, #0x10
	mov r3, #0xc
	bl sub_02024E80
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	ldr r0, [r5, #0x50]
	bl ovy190_21b4d28
	bl sub_02045B7C
	add r0, r6, #0
	bl sub_02048564
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ovy190_21b4c38

	thumb_func_start ovy190_21b4cdc
ovy190_21b4cdc: ; 0x021B4CDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B4CFC
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x30]
	bl sub_020484B4
	ldr r0, [r4, #0x50]
	bl ovy190_21b4d28
	bl sub_02045B7C
_021B4CFC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy190_21b4cdc

	thumb_func_start ovy190_21b4d00
ovy190_21b4d00: ; 0x021B4D00
	push {r3, lr}
	cmp r0, #0
	beq _021B4D0E
	cmp r0, #1
	bne _021B4D12
	mov r0, #1
	pop {r3, pc}
_021B4D0E:
	mov r0, #5
	pop {r3, pc}
_021B4D12:
	ldr r0, _021B4D20 ; =0x021B53E0
	ldr r2, _021B4D24 ; =0x021B53E4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021B4D20: .word 0x021B53E0
_021B4D24: .word 0x021B53E4
	thumb_func_end ovy190_21b4d00

	thumb_func_start ovy190_21b4d28
ovy190_21b4d28: ; 0x021B4D28
	push {r3, lr}
	cmp r0, #0
	beq _021B4D36
	cmp r0, #1
	bne _021B4D3A
	mov r0, #2
	pop {r3, pc}
_021B4D36:
	mov r0, #5
	pop {r3, pc}
_021B4D3A:
	ldr r0, _021B4D48 ; =0x021B53E0
	ldr r2, _021B4D4C ; =0x021B53E4
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021B4D48: .word 0x021B53E0
_021B4D4C: .word 0x021B53E4
	thumb_func_end ovy190_21b4d28

	thumb_func_start ovy190_21b4d50
ovy190_21b4d50: ; 0x021B4D50
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _021B4DA0 ; =0x021B52B4
	add r3, r2, #0
	ldrh r5, [r4]
	add r2, sp, #4
	cmp r1, #0
	strh r5, [r2]
	ldrh r5, [r4, #2]
	strh r5, [r2, #2]
	ldrh r4, [r4, #4]
	strh r4, [r2, #4]
	ldr r4, [r0]
	strh r4, [r2, #4]
	beq _021B4D74
	cmp r1, #1
	beq _021B4D7C
	b _021B4D84
_021B4D74:
	mov r1, #0x18
	strb r1, [r2, #1]
	mov r1, #0xd
	b _021B4D82
_021B4D7C:
	mov r1, #0x18
	strb r1, [r2, #1]
	mov r1, #0x13
_021B4D82:
	strb r1, [r2, #2]
_021B4D84:
	add r0, #0x4c
	ldrh r0, [r0]
	lsl r3, r3, #0x18
	add r1, sp, #4
	str r0, [sp]
	ldrh r1, [r1, #4]
	add r0, sp, #4
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_020254E0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021B4DA0: .word 0x021B52B4
	thumb_func_end ovy190_21b4d50

	thumb_func_start ovy190_21b4da4
ovy190_21b4da4: ; 0x021B4DA4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x79
	lsl r2, r2, #0xe
	mov r6, #0x79
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #0x79
	bl sub_0203AAEC
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x20
	blx MI_CpuFill8
	str r5, [r4, #0x10]
	strh r6, [r4, #0x14]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021B4DDA
	mov r0, #6
	str r0, [r5, #0x10]
_021B4DDA:
	ldrh r0, [r4, #0x14]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	bl ovy190_21b3a80
	str r0, [r4, #4]
	ldrh r0, [r4, #0x14]
	ldr r1, _021B4E30 ; =0x000001B7
	ldr r2, [r5, #8]
	bl ovy190_21b46cc
	str r0, [r4, #8]
	ldr r1, _021B4E34 ; =ovy190_21b4ec0
	add r0, r4, #0
	mov r2, #0xad
	bl sub_021B4EA4
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021B4E18
	ldr r0, [r4, #8]
	mov r1, #0x24
	bl ovy190_21b4a14
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021B4E18
	ldr r0, _021B4E38 ; =0x00000481
	ldr r1, _021B4E3C ; =0x0000FFFF
	bl sub_02005DF4
_021B4E18:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021B4E22
	mov r0, #0
	b _021B4E24
_021B4E22:
	mov r0, #1
_021B4E24:
	ldrh r1, [r4, #0x14]
	bl sub_02042BA8
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021B4E30: .word 0x000001B7
_021B4E34: .word ovy190_21b4ec0
_021B4E38: .word 0x00000481
_021B4E3C: .word 0x0000FFFF
	thumb_func_end ovy190_21b4da4

	thumb_func_start ovy190_21b4e40
ovy190_21b4e40: ; 0x021B4E40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r3, #0
	cmp r0, #0
	bne _021B4E52
	ldr r0, [r4, #8]
	bl ovy190_21b4a84
_021B4E52:
	ldr r0, [r4, #8]
	bl ovy190_21b47e4
	ldr r0, [r4, #4]
	bl ovy190_21b3b4c
	bl sub_02012144
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x79
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy190_21b4e40

	thumb_func_start ovy190_21b4e74
ovy190_21b4e74: ; 0x021B4E74
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021B4E82
	bl ovy190_21b4b90
_021B4E82:
	ldr r0, [r5, #4]
	bl ovy190_21b3b3c
	ldr r0, [r5, #8]
	bl ovy190_21b47d0
	add r0, r5, #0
	mov r4, #0
	bl ovy190_21b4eac
	cmp r0, #0
	beq _021B4E9C
	mov r4, #1
_021B4E9C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy190_21b4e74

	thumb_func_start sub_021B4EA0
sub_021B4EA0: ; 0x021B4EA0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_021B4EA0

	thumb_func_start sub_021B4EA4
sub_021B4EA4: ; 0x021B4EA4
	ldr r3, _021B4EA8 ; =sub_021B4EA0
	bx r3
	.align 2, 0
_021B4EA8: .word sub_021B4EA0
	thumb_func_end sub_021B4EA4

	thumb_func_start ovy190_21b4eac
ovy190_21b4eac: ; 0x021B4EAC
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _021B4EBA
	blx r1
	mov r0, #0
	pop {r3, pc}
_021B4EBA:
	mov r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy190_21b4eac

	thumb_func_start ovy190_21b4ec0
ovy190_21b4ec0: ; 0x021B4EC0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r0, #0x10]
	mov r0, #8
	tst r0, r1
	beq _021B4ED4
	ldr r3, _021B4F00 ; =0x00007FFF
	b _021B4ED6
_021B4ED4:
	mov r3, #0
_021B4ED6:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4, #0x14]
	lsl r3, r3, #0x10
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	lsr r3, r3, #0x10
	bl sub_020279B4
	mov r2, #0x16
	ldr r1, _021B4F04 ; =ovy190_21b4f08
	add r0, r4, #0
	lsl r2, r2, #4
	bl sub_021B4EA4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B4F00: .word 0x00007FFF
_021B4F04: .word ovy190_21b4f08
	thumb_func_end ovy190_21b4ec0

	thumb_func_start ovy190_21b4f08
ovy190_21b4f08: ; 0x021B4F08
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B4F1E
	ldr r1, _021B4F20 ; =ovy190_21b4f28
	ldr r2, _021B4F24 ; =0x0000016E
	add r0, r4, #0
	bl sub_021B4EA4
_021B4F1E:
	pop {r4, pc}
	.align 2, 0
_021B4F20: .word ovy190_21b4f28
_021B4F24: .word 0x0000016E
	thumb_func_end ovy190_21b4f08

	thumb_func_start ovy190_21b4f28
ovy190_21b4f28: ; 0x021B4F28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0x1a
	bl sub_021B496C
	ldr r1, _021B4F40 ; =ovy190_21b4f48
	ldr r2, _021B4F44 ; =0x00000199
	add r0, r4, #0
	bl sub_021B4EA4
	pop {r4, pc}
	.align 2, 0
_021B4F40: .word ovy190_21b4f48
_021B4F44: .word 0x00000199
	thumb_func_end ovy190_21b4f28

	thumb_func_start ovy190_21b4f48
ovy190_21b4f48: ; 0x021B4F48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B4F60
	ldr r1, _021B4F64 ; =ovy190_21b4f6c
	ldr r2, _021B4F68 ; =0x000001A7
	add r0, r4, #0
	bl sub_021B4EA4
_021B4F60:
	pop {r4, pc}
	nop
_021B4F64: .word ovy190_21b4f6c
_021B4F68: .word 0x000001A7
	thumb_func_end ovy190_21b4f48

	thumb_func_start ovy190_21b4f6c
ovy190_21b4f6c: ; 0x021B4F6C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020120C8
	cmp r0, #0
	beq _021B4F8C
	bl sub_020428A0
	bl sub_020429F0
	bl sub_02042478
	bl sub_020424E4
	bl sub_02012144
_021B4F8C:
	bl sub_020427A4
	cmp r0, #0
	beq _021B4FA2
	mov r2, #0x71
	ldr r1, _021B4FBC ; =ovy190_21b4fe4
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B4EA4
	pop {r4, pc}
_021B4FA2:
	ldr r0, _021B4FC0 ; =0x021B5099
	bl sub_02042860
	cmp r0, #0
	beq _021B4FB8
	mov r2, #0x73
	ldr r1, _021B4FC4 ; =ovy190_21b4fc8
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B4EA4
_021B4FB8:
	pop {r4, pc}
	nop
_021B4FBC: .word ovy190_21b4fe4
_021B4FC0: .word 0x021B5099
_021B4FC4: .word ovy190_21b4fc8
	thumb_func_end ovy190_21b4f6c

	thumb_func_start ovy190_21b4fc8
ovy190_21b4fc8: ; 0x021B4FC8
	push {r3, lr}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	beq _021B4FD8
	ldr r1, _021B4FDC ; =ovy190_21b4fe4
	ldr r2, _021B4FE0 ; =0x000001DD
	bl sub_021B4EA4
_021B4FD8:
	pop {r3, pc}
	nop
_021B4FDC: .word ovy190_21b4fe4
_021B4FE0: .word 0x000001DD
	thumb_func_end ovy190_21b4fc8

	thumb_func_start ovy190_21b4fe4
ovy190_21b4fe4: ; 0x021B4FE4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0x1b
	bl sub_021B496C
	ldr r1, _021B4FFC ; =ovy190_21b5004
	ldr r2, _021B5000 ; =0x000001EB
	add r0, r4, #0
	bl sub_021B4EA4
	pop {r4, pc}
	.align 2, 0
_021B4FFC: .word ovy190_21b5004
_021B5000: .word 0x000001EB
	thumb_func_end ovy190_21b4fe4

	thumb_func_start ovy190_21b5004
ovy190_21b5004: ; 0x021B5004
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy190_21b49b8
	cmp r0, #0
	beq _021B501C
	ldr r1, _021B5020 ; =ovy190_21b5028
	ldr r2, _021B5024 ; =0x000001F9
	add r0, r4, #0
	bl sub_021B4EA4
_021B501C:
	pop {r4, pc}
	nop
_021B5020: .word ovy190_21b5028
_021B5024: .word 0x000001F9
	thumb_func_end ovy190_21b5004

	thumb_func_start ovy190_21b5028
ovy190_21b5028: ; 0x021B5028
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r2, [r5, #0x10]
	mov r0, #0x10
	ldr r1, [r2, #0x10]
	tst r0, r1
	beq _021B503C
	ldr r4, _021B5074 ; =0x00007FFF
	b _021B503E
_021B503C:
	mov r4, #0
_021B503E:
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _021B504A
	mov r0, #6
	bl sub_02005EA0
_021B504A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, #0x14]
	lsl r3, r4, #0x10
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_020279B4
	mov r2, #0x86
	ldr r1, _021B5078 ; =ovy190_21b507c
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_021B4EA4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021B5074: .word 0x00007FFF
_021B5078: .word ovy190_21b507c
	thumb_func_end ovy190_21b5028

	thumb_func_start ovy190_21b507c
ovy190_21b507c: ; 0x021B507C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B5092
	ldr r2, _021B5094 ; =0x00000226
	add r0, r4, #0
	mov r1, #0
	bl sub_021B4EA4
_021B5092:
	pop {r4, pc}
	.align 2, 0
_021B5094: .word 0x00000226
	thumb_func_end ovy190_21b507c
_021B5098:
	.byte 0x01, 0x21, 0x81, 0x61, 0x70, 0x47, 0x00, 0x00
	.byte 0xB1, 0x2F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x3D, 0x39, 0x1B, 0x02, 0x2D, 0x3A, 0x1B, 0x02
	.byte 0x59, 0x3A, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0xA5, 0x4D, 0x1B, 0x02
	.byte 0x75, 0x4E, 0x1B, 0x02, 0x41, 0x4E, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA0, 0x50, 0x1B, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD1, 0x2F, 0x1B, 0x02, 0xD9, 0x2F, 0x1B, 0x02
	.byte 0xDD, 0x2F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF3, 0x19, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x30, 0x1B, 0x02
	.byte 0xF9, 0x2F, 0x1B, 0x02, 0xE9, 0x2F, 0x1B, 0x02, 0x00, 0xE4, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x80, 0x13, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x0F, 0x00, 0x10, 0x00, 0xF0, 0x00, 0x00, 0x00
	.byte 0x02, 0x64, 0x10, 0x01, 0x00, 0x01, 0x01, 0x00, 0xFE, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x83, 0x51, 0x81, 0x5B, 0x83, 0x80, 0x83, 0x54, 0x81, 0x5B, 0x83, 0x72
	.byte 0x83, 0x58, 0x49, 0x44, 0x82, 0xF0, 0x93, 0xFC, 0x82, 0xEA, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE
	.byte 0x82, 0xB3, 0x82, 0xA2, 0x0A, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x77, 0x69, 0x66, 0x69, 0x6C, 0x6F, 0x67, 0x69
	.byte 0x6E, 0x5F, 0x64, 0x69, 0x73, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x77, 0x69, 0x66, 0x69
	.byte 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x5F, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021B5098
