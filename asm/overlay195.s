    .include "macros/function.inc"
	.include "overlay195.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_021B2F80
sub_021B2F80: ; 0x021B2F80
	str r1, [r0]
	bx lr
	thumb_func_end sub_021B2F80

	thumb_func_start sub_021B2F84
sub_021B2F84: ; 0x021B2F84
	ldr r3, _021B2F88 ; =sub_021B2F80
	bx r3
	.align 2, 0
_021B2F88: .word sub_021B2F80
	thumb_func_end sub_021B2F84

	thumb_func_start ovy195_21b2f8c
ovy195_21b2f8c: ; 0x021B2F8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0x48]
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B2FB6
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B2FB6
	add r4, #0xc
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #8
	blx sub_02078920
_021B2FB6:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy195_21b2f8c

	thumb_func_start ovy195_21b2fb8
ovy195_21b2fb8: ; 0x021B2FB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0x48]
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B2FE4
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B2FE4
	bl sub_02008B08
	add r2, r0, #0
	ldr r1, [r4, #0x18]
	add r0, r6, #0
	blx sub_02078920
_021B2FE4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b2fb8

	thumb_func_start ovy195_21b2fe8
ovy195_21b2fe8: ; 0x021B2FE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02040440
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B3014
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	beq _021B3014
	mov r1, #0x5d
	lsl r1, r1, #2
	add r0, r6, #0
	add r1, r4, r1
	mov r2, #0xc
	blx sub_02078920
_021B3014:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b2fe8

	thumb_func_start ovy195_21b3018
ovy195_21b3018: ; 0x021B3018
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r3, #0x48]
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	bl sub_02017934
	bl sub_02010044
	add r7, r0, #0
	bl sub_02040440
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _021B3068
	bl sub_02040440
	bl sub_02042A6C
	cmp r6, r0
	beq _021B3068
	add r0, r5, #0
	mov r1, #0x1a
	mov r2, #2
	bl sub_020373EC
	ldr r0, [r4, #0x18]
	bl sub_02008B94
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl sub_020373EC
	ldr r1, [r4]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_02010078
_021B3068:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b3018

	thumb_func_start ovy195_21b306c
ovy195_21b306c: ; 0x021B306C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02040440
	bl sub_02042A6C
	cmp r5, r0
	bne _021B308C
	ldr r0, _021B3094 ; =0x021B7B10
	ldr r2, _021B3098 ; =0x021B7B14
	mov r1, #0
	bl sub_0203CB80
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B308C:
	mov r0, #0x9f
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B3094: .word 0x021B7B10
_021B3098: .word 0x021B7B14
	thumb_func_end ovy195_21b306c

	thumb_func_start ovy195_21b309c
ovy195_21b309c: ; 0x021B309C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0x4e
	add r6, r0, #0
	add r5, r1, #0
	lsl r4, r4, #2
	mov r0, #1
	str r6, [r5, r4]
	mov r7, #1
	bl sub_0203D564
	add r0, r4, #0
	add r0, #0x4c
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021B30C4
	ldr r0, _021B3118 ; =0x00000551
	bl sub_02006254
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B30C4:
	cmp r6, #0
	bne _021B30EC
	add r0, r4, #0
	mov r2, #0
	add r0, #0x24
	str r2, [r5, r0]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	bl ovy195_21b599c
	add r1, r4, #0
	add r1, #0x24
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy195_21b47d8
	add r0, r5, #0
	ldr r1, _021B311C ; =ovy195_21b481c
	add r4, #0x7d
	b _021B310E
_021B30EC:
	add r0, r4, #0
	add r0, #0x24
	str r7, [r5, r0]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	add r2, r7, #0
	bl ovy195_21b599c
	add r1, r4, #0
	add r1, #0x24
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy195_21b47d8
	ldr r1, _021B311C ; =ovy195_21b481c
	add r0, r5, #0
	add r4, #0x84
_021B310E:
	add r2, r4, #0
	bl sub_021B2F84
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3118: .word 0x00000551
_021B311C: .word ovy195_21b481c
	thumb_func_end ovy195_21b309c

	thumb_func_start sub_021B3120
sub_021B3120: ; 0x021B3120
	mov r2, #0x4f
	lsl r2, r2, #2
	ldr r3, [r1, r2]
	add r0, r3, r0
	str r0, [r1, r2]
	cmp r0, #5
	blt _021B3134
	mov r0, #0
	str r0, [r1, r2]
	bx lr
_021B3134:
	cmp r0, #0
	bge _021B313C
	mov r0, #4
	str r0, [r1, r2]
_021B313C:
	bx lr
	.align 2, 0
	thumb_func_end sub_021B3120

	thumb_func_start sub_021B3140
sub_021B3140: ; 0x021B3140
	mov r2, #5
	lsl r2, r2, #6
	ldr r3, [r1, r2]
	add r0, r3, r0
	str r0, [r1, r2]
	cmp r0, #5
	blt _021B3154
	mov r0, #0
	str r0, [r1, r2]
	bx lr
_021B3154:
	cmp r0, #0
	bge _021B315C
	mov r0, #4
	str r0, [r1, r2]
_021B315C:
	bx lr
	.align 2, 0
	thumb_func_end sub_021B3140

	thumb_func_start sub_021B3160
sub_021B3160: ; 0x021B3160
	mov r2, #0x51
	lsl r2, r2, #2
	ldr r3, [r1, r2]
	add r0, r3, r0
	str r0, [r1, r2]
	cmp r0, #4
	blt _021B3174
	mov r0, #0
	str r0, [r1, r2]
	bx lr
_021B3174:
	cmp r0, #0
	bge _021B317C
	mov r0, #3
	str r0, [r1, r2]
_021B317C:
	bx lr
	.align 2, 0
	thumb_func_end sub_021B3160

	thumb_func_start ovy195_21b3180
ovy195_21b3180: ; 0x021B3180
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r1, #0
	mov r5, #0
	cmp r6, #5
	bhi _021B31F0
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B3198: ; jump table
	.short _021B31A4 - _021B3198 - 2 ; case 0
	.short _021B31BA - _021B3198 - 2 ; case 1
	.short _021B31BE - _021B3198 - 2 ; case 2
	.short _021B31D4 - _021B3198 - 2 ; case 3
	.short _021B31D8 - _021B3198 - 2 ; case 4
	.short _021B31DC - _021B3198 - 2 ; case 5
_021B31A4:
	sub r0, r5, #1
_021B31A6:
	bl sub_021B3160
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r4, #0x40]
	ldr r1, [r4, r1]
	mov r5, #2
	bl sub_021B6E30
	b _021B31F0
_021B31BA:
	mov r0, #1
	b _021B31A6
_021B31BE:
	sub r0, r5, #1
_021B31C0:
	bl sub_021B3120
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r0, [r4, #0x40]
	ldr r1, [r4, r1]
	mov r5, #3
	bl sub_021B6E44
	b _021B31F0
_021B31D4:
	mov r0, #1
	b _021B31C0
_021B31D8:
	sub r0, r5, #1
	b _021B31DE
_021B31DC:
	mov r0, #1
_021B31DE:
	bl sub_021B3140
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r4, #0x40]
	ldr r1, [r4, r1]
	mov r5, #4
	bl sub_021B6E58
_021B31F0:
	cmp r6, #0
	blt _021B3206
	cmp r6, #5
	bgt _021B3206
	ldr r0, _021B320C ; =0x00000548
	bl sub_02006254
	ldr r0, [r4, #0x3c]
	add r1, r6, #0
	bl ovy195_21b5b2c
_021B3206:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_021B320C: .word 0x00000548
	thumb_func_end ovy195_21b3180

	thumb_func_start ovy195_21b3210
ovy195_21b3210: ; 0x021B3210
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B3222
	mov r1, #0
	bl sub_0202E41C
_021B3222:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy195_21b3180
	cmp r0, #0
	beq _021B3234
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
_021B3234:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b3210

	thumb_func_start ovy195_21b3238
ovy195_21b3238: ; 0x021B3238
	push {r3, lr}
	mov r2, #0x16
	lsl r2, r2, #4
	ldr r2, [r1, r2]
	sub r3, r2, #2
	cmp r2, #2
	bge _021B324A
	cmp r2, #4
	bgt _021B3252
_021B324A:
	lsl r2, r3, #1
	add r0, r0, r2
	bl ovy195_21b3180
_021B3252:
	pop {r3, pc}
	thumb_func_end ovy195_21b3238

	thumb_func_start ovy195_21b3254
ovy195_21b3254: ; 0x021B3254
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B326A
	ldr r2, _021B326C ; =0x00000251
	add r0, r4, #0
	mov r1, #0
	bl sub_021B2F84
_021B326A:
	pop {r4, pc}
	.align 2, 0
_021B326C: .word 0x00000251
	thumb_func_end ovy195_21b3254

	thumb_func_start ovy195_21b3270
ovy195_21b3270: ; 0x021B3270
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0
	bgt _021B32A4
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
	mov r2, #0x97
	ldr r1, _021B32A8 ; =ovy195_21b3254
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B2F84
_021B32A4:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021B32A8: .word ovy195_21b3254
	thumb_func_end ovy195_21b3270

	thumb_func_start ovy195_21b32ac
ovy195_21b32ac: ; 0x021B32AC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _021B32FC ; =0x021B78B4
	add r5, r0, #0
	ldrh r2, [r1]
	add r0, sp, #0
	add r4, sp, #0
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	bl sub_02042788
	cmp r0, #0
	beq _021B32D6
	mov r0, #0x5d
	lsl r0, r0, #2
	add r4, r5, r0
_021B32D6:
	mov r0, #0xb4
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x3c]
	bl ovy195_21b73d8
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl ovy195_21b742c
	mov r2, #0x27
	ldr r1, _021B3300 ; =ovy195_21b3270
	add r0, r5, #0
	lsl r2, r2, #4
	bl sub_021B2F84
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021B32FC: .word 0x021B78B4
_021B3300: .word ovy195_21b3270
	thumb_func_end ovy195_21b32ac

	thumb_func_start ovy195_21b3304
ovy195_21b3304: ; 0x021B3304
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x14
	bne _021B331A
	ldr r0, [r4, #0x40]
	mov r1, #0x27
	bl ovy195_21b6a1c
_021B331A:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021B3338
	ldr r0, [r4, #0x40]
	mov r1, #0x23
	bl ovy195_21b6f04
	ldr r0, [r4, #0x40]
	bl ovy195_21b707c
	ldr r1, _021B333C ; =ovy195_21b32ac
	ldr r2, _021B3340 ; =0x0000027F
	add r0, r4, #0
	bl sub_021B2F84
_021B3338:
	pop {r4, pc}
	nop
_021B333C: .word ovy195_21b32ac
_021B3340: .word 0x0000027F
	thumb_func_end ovy195_21b3304

	thumb_func_start ovy195_21b3344
ovy195_21b3344: ; 0x021B3344
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x48]
	mov r7, #2
	bl sub_02042788
	cmp r0, #0
	bne _021B335E
	ldr r0, [r4]
	bl sub_0201736C
	str r0, [sp]
	b _021B3396
_021B335E:
	ldr r0, [r4, #0x18]
	mov r6, #0x5f
	lsl r6, r6, #2
	str r0, [sp]
	ldr r7, [r5, r6]
	bl sub_02008BD0
	add r1, r6, #0
	add r1, #0x30
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x1c]
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0x30
	str r1, [r4, r0]
	add r0, r6, #0
	add r0, #0x30
	ldr r0, [r4, r0]
	cmp r0, #0x64
	blt _021B3396
	mov r0, #0
	add r6, #0x30
	str r0, [r4, r6]
_021B3396:
	ldr r0, [r5, #0x40]
	ldr r1, [sp]
	add r2, r7, #0
	bl ovy195_21b77b4
	ldr r0, [sp]
	bl sub_02008BF4
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl ovy195_21b6458
	mov r0, #0xb4
	str r0, [r5, #0x14]
	ldr r1, _021B33C0 ; =ovy195_21b3304
	ldr r2, _021B33C4 ; =0x000002A3
	add r0, r5, #0
	bl sub_021B2F84
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B33C0: .word ovy195_21b3304
_021B33C4: .word 0x000002A3
	thumb_func_end ovy195_21b3344

	thumb_func_start ovy195_21b33c8
ovy195_21b33c8: ; 0x021B33C8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #4
	mov r2, #0x22
	bl sub_02040664
	cmp r0, #0
	beq _021B33E6
	ldr r1, _021B33E8 ; =ovy195_21b3344
	ldr r2, _021B33EC ; =0x000002B2
	add r0, r4, #0
	bl sub_021B2F84
_021B33E6:
	pop {r4, pc}
	.align 2, 0
_021B33E8: .word ovy195_21b3344
_021B33EC: .word 0x000002B2
	thumb_func_end ovy195_21b33c8

	thumb_func_start ovy195_21b33f0
ovy195_21b33f0: ; 0x021B33F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r6, [r5, #0x48]
	bl sub_02040440
	bl sub_02042A6C
	mov r4, #1
	cmp r0, #0
	beq _021B3408
	mov r4, #0
_021B3408:
	mov r7, #0x6e
	lsl r7, r7, #2
	ldr r1, [r6]
	add r0, r5, r7
	bl sub_02036DC0
	bl sub_02040440
	add r1, r5, r7
	str r1, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r2, _021B3450 ; =0x00002203
	lsr r1, r1, #0x18
	mov r3, #0xc4
	bl sub_02042C18
	cmp r0, #0
	beq _021B344C
	bl sub_02040440
	mov r1, #4
	mov r2, #0x22
	bl sub_02040624
	ldr r1, _021B3454 ; =ovy195_21b33c8
	ldr r2, _021B3458 ; =0x000002C1
	add r0, r5, #0
	bl sub_021B2F84
_021B344C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3450: .word 0x00002203
_021B3454: .word ovy195_21b33c8
_021B3458: .word 0x000002C1
	thumb_func_end ovy195_21b33f0

	thumb_func_start ovy195_21b345c
ovy195_21b345c: ; 0x021B345C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	mov r5, #0
	ldr r6, [r0, #0x18]
	bl sub_0216BED4
	mov r1, #1
	cmp r0, #2
	beq _021B3472
	add r1, r5, #0
_021B3472:
	cmp r1, #0
	beq _021B3484
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #1
	cmp r0, #0
	bgt _021B3484
	mov r5, #0
_021B3484:
	cmp r1, #0
	beq _021B350E
	cmp r5, #0
	beq _021B34B6
	mov r0, #0
	mov r1, #2
	mov r2, #0x65
	mov r3, #0x1f
	bl sub_0204875C
	add r7, r0, #0
	mov r1, #0x19
	bl sub_0204898C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020487D4
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02008B84
	add r0, r5, #0
	bl sub_02048564
_021B34B6:
	bl sub_0203FFC4
	add r2, r0, #0
	mov r1, #1
	ldr r0, [r4, #0x2c]
	sub r1, r1, r2
	bl sub_02017378
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02008B34
	add r0, r6, #0
	bl sub_02008BD0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_0200F6F4
	add r1, r5, #0
	bl sub_0200F700
	add r0, r6, #0
	bl sub_02008BFC
	cmp r0, #0x16
	beq _021B34F6
	add r0, r6, #0
	bl sub_02008BFC
	cmp r0, #0x17
	bne _021B3504
_021B34F6:
	mov r2, #0xb9
	ldr r1, _021B3510 ; =ovy195_21b33f0
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B2F84
	pop {r3, r4, r5, r6, r7, pc}
_021B3504:
	ldr r1, _021B3514 ; =ovy195_21b3344
	ldr r2, _021B3518 ; =0x000002E9
	add r0, r4, #0
	bl sub_021B2F84
_021B350E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3510: .word ovy195_21b33f0
_021B3514: .word ovy195_21b3344
_021B3518: .word 0x000002E9
	thumb_func_end ovy195_21b345c

	thumb_func_start ovy195_21b351c
ovy195_21b351c: ; 0x021B351C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0x1f
	ldr r0, [r0, #0x18]
	mov r6, #0x1f
	bl sub_02008BB0
	str r0, [sp, #0x10]
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x28
	mov r4, #0
	blx sub_020787A8
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, #0x24
	strh r6, [r5, r0]
	ldr r0, [sp, #0x10]
	bl sub_020486F0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	bl sub_020485F8
	add r0, r0, #1
	beq _021B358A
_021B355A:
	ldr r0, [sp, #0xc]
	lsl r6, r4, #1
	ldrh r7, [r0, r6]
	bl sub_020486F4
	cmp r7, r0
	bne _021B3574
	mov r0, #0x62
	add r2, r5, r6
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r2, r0]
	b _021B357C
_021B3574:
	mov r0, #0x62
	add r1, r5, r6
	lsl r0, r0, #2
	strh r7, [r1, r0]
_021B357C:
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	bl sub_020485F8
	add r0, r0, #1
	cmp r4, r0
	blo _021B355A
_021B358A:
	mov r1, #0x62
	lsl r1, r1, #2
	add r0, r1, #0
	add r2, r5, r1
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x20
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	add r0, r5, r0
	str r0, [sp]
	add r0, r1, #0
	add r0, #0x20
	add r0, r5, r0
	str r0, [sp, #4]
	mov r0, #0x80
	add r1, #0x18
	str r0, [sp, #8]
	add r0, r5, r1
	mov r1, #1
	mov r3, #0
	bl sub_0216BEA4
	ldr r0, [sp, #0x10]
	bl sub_02048564
	mov r2, #3
	ldr r1, _021B35D4 ; =ovy195_21b345c
	add r0, r5, #0
	lsl r2, r2, #8
	bl sub_021B2F84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B35D4: .word ovy195_21b345c
	thumb_func_end ovy195_21b351c

	thumb_func_start ovy195_21b35d8
ovy195_21b35d8: ; 0x021B35D8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #3
	mov r2, #0x22
	bl sub_02040664
	cmp r0, #0
	beq _021B35F6
	ldr r1, _021B35F8 ; =ovy195_21b351c
	ldr r2, _021B35FC ; =0x0000030A
	add r0, r4, #0
	bl sub_021B2F84
_021B35F6:
	pop {r4, pc}
	.align 2, 0
_021B35F8: .word ovy195_21b351c
_021B35FC: .word 0x0000030A
	thumb_func_end ovy195_21b35d8

	thumb_func_start ovy195_21b3600
ovy195_21b3600: ; 0x021B3600
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r1, #3
	mov r2, #0x22
	bl sub_02040624
	ldr r1, _021B361C ; =ovy195_21b35d8
	ldr r2, _021B3620 ; =0x0000031A
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
	.align 2, 0
_021B361C: .word ovy195_21b35d8
_021B3620: .word 0x0000031A
	thumb_func_end ovy195_21b3600

	thumb_func_start ovy195_21b3624
ovy195_21b3624: ; 0x021B3624
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02040440
	add r4, r0, #0
	bl sub_02008B08
	add r2, r0, #0
	ldr r3, [r5, #0x48]
	lsl r2, r2, #0x10
	ldr r1, _021B3654 ; =0x00002201
	ldr r3, [r3, #0x14]
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl sub_02042BE8
	cmp r0, #0
	beq _021B3652
	ldr r1, _021B3658 ; =ovy195_21b3600
	ldr r2, _021B365C ; =0x0000032B
	add r0, r5, #0
	bl sub_021B2F84
_021B3652:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B3654: .word 0x00002201
_021B3658: .word ovy195_21b3600
_021B365C: .word 0x0000032B
	thumb_func_end ovy195_21b3624

	thumb_func_start ovy195_21b3660
ovy195_21b3660: ; 0x021B3660
	push {r4, lr}
	add r4, r0, #0
	bl sub_02040440
	mov r3, #0x5a
	lsl r3, r3, #2
	ldr r1, _021B3688 ; =0x00002202
	mov r2, #0xc
	add r3, r4, r3
	bl sub_02042BE8
	cmp r0, #0
	beq _021B3684
	ldr r1, _021B368C ; =ovy195_21b3624
	ldr r2, _021B3690 ; =0x0000033D
	add r0, r4, #0
	bl sub_021B2F84
_021B3684:
	pop {r4, pc}
	nop
_021B3688: .word 0x00002202
_021B368C: .word ovy195_21b3624
_021B3690: .word 0x0000033D
	thumb_func_end ovy195_21b3660

	thumb_func_start ovy195_21b3694
ovy195_21b3694: ; 0x021B3694
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	bne _021B36AC
	ldr r1, _021B36E0 ; =ovy195_21b3344
	ldr r2, _021B36E4 ; =0x0000034D
	add r0, r4, #0
	bl sub_021B2F84
	pop {r3, r4, r5, pc}
_021B36AC:
	bl sub_02040440
	mov r1, #2
	mov r2, #0x22
	mov r5, #0x22
	bl sub_02040664
	cmp r0, #0
	beq _021B36DC
	bl sub_02040440
	ldr r3, [r4, #0x48]
	lsl r1, r5, #8
	mov r2, #8
	add r3, r3, #4
	bl sub_02042BE8
	cmp r0, #0
	beq _021B36DC
	ldr r1, _021B36E8 ; =ovy195_21b3660
	ldr r2, _021B36EC ; =0x00000355
	add r0, r4, #0
	bl sub_021B2F84
_021B36DC:
	pop {r3, r4, r5, pc}
	nop
_021B36E0: .word ovy195_21b3344
_021B36E4: .word 0x0000034D
_021B36E8: .word ovy195_21b3660
_021B36EC: .word 0x00000355
	thumb_func_end ovy195_21b3694

	thumb_func_start ovy195_21b36f0
ovy195_21b36f0: ; 0x021B36F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B3770
	bl sub_02042788
	cmp r0, #0
	bne _021B3714
	mov r2, #0xdb
	ldr r1, _021B3774 ; =ovy195_21b3694
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
_021B3714:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _021B3720
	sub r0, r0, #1
	str r0, [r5, #0x14]
	pop {r4, r5, r6, pc}
_021B3720:
	bl sub_02040474
	cmp r0, #2
	bne _021B3770
	ldr r0, [r5, #0x30]
	ldr r6, [r5, #0x48]
	bl sub_0200EF7C
	mov r4, #0x51
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r2, r4, #0
	str r1, [r6, #4]
	add r1, r4, #0
	sub r1, #8
	ldr r1, [r5, r1]
	add r2, #0x24
	str r1, [r6, #8]
	mov r1, #0
	add r2, r5, r2
	bl sub_0200EF90
	ldr r0, [r5, #0x2c]
	bl sub_02017980
	bl sub_0200A5C4
	add r4, #0x2c
	str r0, [r5, r4]
	bl sub_02040440
	mov r1, #2
	mov r2, #0x22
	bl sub_02040624
	ldr r1, _021B3774 ; =ovy195_21b3694
	ldr r2, _021B3778 ; =0x00000382
	add r0, r5, #0
	bl sub_021B2F84
_021B3770:
	pop {r4, r5, r6, pc}
	nop
_021B3774: .word ovy195_21b3694
_021B3778: .word 0x00000382
	thumb_func_end ovy195_21b36f0

	thumb_func_start ovy195_21b377c
ovy195_21b377c: ; 0x021B377C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	bne _021B3794
	ldr r1, _021B37B4 ; =ovy195_21b36f0
	ldr r2, _021B37B8 ; =0x0000038B
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
_021B3794:
	bl sub_02040474
	cmp r0, #0
	beq _021B37B0
	bl sub_02040504
	cmp r0, #0
	beq _021B37B0
	mov r2, #0x39
	ldr r1, _021B37B4 ; =ovy195_21b36f0
	add r0, r4, #0
	lsl r2, r2, #4
	bl sub_021B2F84
_021B37B0:
	pop {r4, pc}
	nop
_021B37B4: .word ovy195_21b36f0
_021B37B8: .word 0x0000038B
	thumb_func_end ovy195_21b377c

	thumb_func_start ovy195_21b37bc
ovy195_21b37bc: ; 0x021B37BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B3804
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _021B37D6
	sub r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021B37D6:
	bl sub_0203FFC4
	cmp r0, #0
	beq _021B37F6
	bl sub_02040504
	cmp r0, #0
	beq _021B3804
	mov r0, #0xb4
	str r0, [r4, #0x14]
	ldr r1, _021B3808 ; =ovy195_21b36f0
	ldr r2, _021B380C ; =0x000003AD
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
_021B37F6:
	mov r0, #0xb4
	str r0, [r4, #0x14]
	ldr r1, _021B3810 ; =ovy195_21b377c
	ldr r2, _021B3814 ; =0x000003B2
	add r0, r4, #0
	bl sub_021B2F84
_021B3804:
	pop {r4, pc}
	nop
_021B3808: .word ovy195_21b36f0
_021B380C: .word 0x000003AD
_021B3810: .word ovy195_21b377c
_021B3814: .word 0x000003B2
	thumb_func_end ovy195_21b37bc

	thumb_func_start ovy195_21b3818
ovy195_21b3818: ; 0x021B3818
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_021B6BB8
	bl sub_0203DEFC
	cmp r0, #2
	bne _021B3854
	ldr r0, [r4, #0x40]
	bl sub_021B75E0
	bl sub_02042788
	cmp r0, #0
	beq _021B383E
	mov r0, #1
	bl sub_020421AC
_021B383E:
	mov r0, #0
	bl sub_0203D564
	ldr r0, _021B38A0 ; =0x00000551
	bl sub_02006254
	ldr r1, _021B38A4 ; =ovy195_21b3e8c
	ldr r2, _021B38A8 ; =0x000003CE
	add r0, r4, #0
	bl sub_021B2F84
_021B3854:
	bl sub_02042788
	cmp r0, #0
	bne _021B3866
	bl sub_0203DEFC
	cmp r0, #1
	beq _021B387A
	pop {r4, pc}
_021B3866:
	bl sub_020420B4
	cmp r0, #1
	bne _021B389C
	mov r0, #1
	bl sub_02042E94
	mov r0, #1
	bl sub_02042E9C
_021B387A:
	ldr r0, [r4, #0x40]
	bl ovy195_21b6ae0
	ldr r0, [r4, #0x40]
	mov r1, #0x10
	bl ovy195_21b6a1c
	mov r0, #0xb4
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	bl ovy195_21b75f0
	ldr r1, _021B38AC ; =ovy195_21b37bc
	ldr r2, _021B38B0 ; =0x000003E5
	add r0, r4, #0
	bl sub_021B2F84
_021B389C:
	pop {r4, pc}
	nop
_021B38A0: .word 0x00000551
_021B38A4: .word ovy195_21b3e8c
_021B38A8: .word 0x000003CE
_021B38AC: .word ovy195_21b37bc
_021B38B0: .word 0x000003E5
	thumb_func_end ovy195_21b3818

	thumb_func_start ovy195_21b38b4
ovy195_21b38b4: ; 0x021B38B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0
	mvn r4, r4
	add r6, r1, #0
	str r0, [sp]
	add r1, #0x76
	add r2, r4, #0
	ldr r7, [r6, #0x48]
	bl sub_02160F98
	str r0, [sp, #8]
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0x8e
	add r2, r4, #0
	bl sub_02160F98
	str r0, [sp, #0xc]
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0x82
	add r2, r4, #0
	bl sub_02160F98
	str r0, [sp, #4]
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0x5e
	mov r2, #0
	bl sub_02160F98
	add r5, r0, #0
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0xb2
	mov r2, #0
	bl sub_02160F98
	str r0, [sp, #0x10]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _021B3974
	ldr r0, [sp, #8]
	cmp r0, #4
	bne _021B393E
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r6, r0]
	cmp r0, r4
	bne _021B3936
	ldr r0, [r6, #0x30]
	bl sub_0200A5E4
	add r1, r5, #0
	bl sub_0200A590
	cmp r0, #0
	beq _021B39D6
_021B3932:
	mov r4, #0x64
	b _021B39D6
_021B3936:
	ldr r0, [r6, #0x18]
	cmp r0, r5
	bne _021B39D6
	b _021B3932
_021B393E:
	ldr r0, [r7]
	bl sub_0201736C
	bl sub_02008BD0
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021B39D6
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r6, r0]
	cmp r0, r4
	bne _021B396C
	ldr r0, [r6, #0x30]
	bl sub_0200A5E4
	add r1, r5, #0
	bl sub_0200A590
	cmp r0, #0
	beq _021B39D6
	b _021B3932
_021B396C:
	ldr r0, [r6, #0x18]
	cmp r0, r5
	bne _021B39D6
	b _021B3932
_021B3974:
	ldr r0, [sp, #0x14]
	add r0, #0xc
	ldr r1, [r6, r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021B39D6
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	ldr r1, [r6, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _021B3990
	add r4, #0x14
	b _021B399E
_021B3990:
	cmp r1, #0
	beq _021B3998
	cmp r0, #0
	bne _021B399C
_021B3998:
	add r4, #0xa
	b _021B399E
_021B399C:
	sub r4, #0x28
_021B399E:
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _021B39AE
	add r4, #0x14
	b _021B39BC
_021B39AE:
	cmp r0, #0
	beq _021B39B6
	cmp r1, #0
	bne _021B39BA
_021B39B6:
	add r4, #0xa
	b _021B39BC
_021B39BA:
	sub r4, #0x28
_021B39BC:
	mov r1, #0
_021B39BE:
	lsl r0, r1, #2
	add r0, r7, r0
	ldr r0, [r0, #0x1c]
	cmp r5, r0
	bne _021B39D0
	cmp r5, #0
	beq _021B39D0
	mov r4, #0
	b _021B39D6
_021B39D0:
	add r1, r1, #1
	cmp r1, #0x64
	blt _021B39BE
_021B39D6:
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b38b4

	thumb_func_start ovy195_21b39dc
ovy195_21b39dc: ; 0x021B39DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	ldr r0, [r7, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	bne _021B39EE
	b _021B3B04
_021B39EE:
	bl sub_02042788
	cmp r0, #0
	bne _021B3A0E
	ldr r0, [r7, #0x40]
	ldr r1, _021B3B08 ; =ovy195_21b3ef4
	add r2, r7, #0
	bl ovy195_21b7538
	ldr r1, _021B3B0C ; =ovy195_21b3818
	ldr r2, _021B3B10 ; =0x00000458
	add r0, r7, #0
	bl sub_021B2F84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B3A0E:
	mov r0, #0
	mov r4, #0
	bl sub_02042D8C
	ldr r0, [r7, #0x44]
	add r1, sp, #4
	bl sub_0200A3C4
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r7, r1]
	add r2, r1, #0
	str r0, [sp, #4]
	add r0, r1, #0
	sub r0, #0x14
	ldr r0, [r7, r0]
	sub r2, #8
	str r0, [sp, #8]
	ldr r2, [r7, r2]
	str r2, [sp, #0xc]
	add r2, r1, #0
	sub r2, #0x10
	ldr r2, [r7, r2]
	str r2, [sp, #0x10]
	add r2, r1, #0
	sub r2, #0xc
	ldr r2, [r7, r2]
	str r2, [sp, #0x14]
	ldr r2, _021B3B14 ; =0x00020017
	str r4, [sp, #0x20]
	str r2, [sp, #0x18]
	mov r2, #1
	str r2, [sp, #0x1c]
	cmp r0, #1
	bne _021B3A7A
	sub r0, r1, #4
	ldr r1, [r7, r0]
	sub r0, r2, #2
	cmp r1, r0
	bne _021B3A64
	mov r0, #4
	str r0, [sp, #0xc]
	b _021B3A7A
_021B3A64:
	ldr r0, [r7, #0x2c]
	bl ovy195_21b3e08
	add r4, r0, #0
	bl sub_02008BD0
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_02008BD0
	str r0, [r7, #0x18]
_021B3A7A:
	add r6, r7, #0
	mov r4, #0
	add r6, #0x58
_021B3A80:
	mov r0, #0xc
	mul r0, r4
	str r0, [sp]
	add r5, r6, r0
	ldr r0, _021B3B18 ; =0x021B7B00
	lsl r1, r4, #1
	add r0, r0, r1
	add r1, r5, #6
	mov r2, #2
	blx sub_02078920
	lsl r1, r4, #2
	add r0, sp, #4
	ldr r1, [r0, r1]
	ldr r0, [sp]
	add r2, r5, #0
	str r1, [r6, r0]
	ldrb r0, [r5, #4]
	add r1, r5, #6
	bl sub_02160E10
	add r4, r4, #1
	strb r0, [r5, #4]
	cmp r4, #8
	blt _021B3A80
	mov r2, #0x4e
	lsl r2, r2, #2
	add r0, r7, #0
	ldr r1, _021B3B1C ; =0x021B7B18
	ldr r2, [r7, r2]
	add r0, #0xb8
	mov r3, #1
	bl sub_020800E8
	add r0, r7, #0
	ldr r2, _021B3B20 ; =ovy195_21b38b4
	add r0, #0xb8
	mov r1, #2
	add r3, r7, #0
	bl sub_02150A7C
	cmp r0, #0
	beq _021B3AF8
	bl sub_0204204C
	mov r0, #0
	bl sub_02151E40
	ldr r0, [r7, #0x40]
	ldr r1, _021B3B08 ; =ovy195_21b3ef4
	add r2, r7, #0
	bl ovy195_21b7538
	ldr r1, _021B3B0C ; =ovy195_21b3818
	ldr r2, _021B3B24 ; =0x0000048B
	add r0, r7, #0
	bl sub_021B2F84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B3AF8:
	ldr r3, _021B3B28 ; =0x000003F1
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
_021B3B04:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B3B08: .word ovy195_21b3ef4
_021B3B0C: .word ovy195_21b3818
_021B3B10: .word 0x00000458
_021B3B14: .word 0x00020017
_021B3B18: .word 0x021B7B00
_021B3B1C: .word 0x021B7B18
_021B3B20: .word ovy195_21b38b4
_021B3B24: .word 0x0000048B
_021B3B28: .word 0x000003F1
	thumb_func_end ovy195_21b39dc

	thumb_func_start ovy195_21b3b2c
ovy195_21b3b2c: ; 0x021B3B2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _021B3B56
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021B3B56
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	mov r2, #9
	bl ovy195_21b599c
	mov r0, #1
	bl sub_0203D564
	ldr r2, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	blx r2
	cmp r0, #0
_021B3B56:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b3b2c

	thumb_func_start ovy195_21b3b58
ovy195_21b3b58: ; 0x021B3B58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl sub_0202E438
	cmp r0, #0
	beq _021B3BB4
	ldr r0, [r5, #0x34]
	bl sub_0202E34C
	mov r0, #0
	str r0, [r5, #0x34]
	mov r0, #5
	bl sub_02045B7C
	ldr r0, [r5, #0x40]
	mov r1, #0xe
	bl ovy195_21b699c
	ldr r0, [r5, #0x3c]
	bl ovy195_21b64f8
	ldr r0, [r5, #0x40]
	mov r1, #0xd
	bl ovy195_21b74c8
	ldr r0, [r5, #0x3c]
	mov r1, #1
	mov r2, #2
	mov r4, #2
	bl ovy195_21b5330
	mov r0, #0x1b
	ldr r1, [r5, #0x48]
	lsl r0, r0, #4
	str r4, [r1, r0]
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #9
	bl ovy195_21b599c
	ldr r1, _021B3BB8 ; =ovy195_21b39dc
	ldr r2, _021B3BBC ; =0x000004CE
	add r0, r5, #0
	bl sub_021B2F84
_021B3BB4:
	pop {r3, r4, r5, pc}
	nop
_021B3BB8: .word ovy195_21b39dc
_021B3BBC: .word 0x000004CE
	thumb_func_end ovy195_21b3b58

	thumb_func_start ovy195_21b3bc0
ovy195_21b3bc0: ; 0x021B3BC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r4, #0
	mov r6, #0
	bl sub_021B5930
	add r7, r0, #0
	ldr r0, [r5, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	bne _021B3BDC
	b _021B3D3C
_021B3BDC:
	add r0, r7, #0
	bl sub_02199C58
	cmp r0, #0
	bne _021B3CE6
	ldr r0, [r5, #0x40]
	bl sub_021B6BB8
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B3C12
	bl sub_0203D554
	cmp r0, #1
	bne _021B3C12
	mov r2, #0x16
	lsl r2, r2, #4
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, r2]
	bl ovy195_21b599c
	add r0, r4, #0
	bl sub_0203D564
	pop {r3, r4, r5, r6, r7, pc}
_021B3C12:
	bl sub_0203DEFC
	cmp r0, #0x20
	bne _021B3C22
	mov r0, #0
	add r1, r5, #0
	bl ovy195_21b3238
_021B3C22:
	bl sub_0203DEFC
	cmp r0, #0x10
	bne _021B3C32
	mov r0, #1
	add r1, r5, #0
	bl ovy195_21b3238
_021B3C32:
	bl sub_0203DEFC
	cmp r0, #0x40
	bne _021B3C50
	ldr r0, _021B3D40 ; =0x00000548
	bl sub_02006254
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r4, #1
	cmp r1, #2
	beq _021B3C50
	sub r1, r1, #1
	str r1, [r5, r0]
_021B3C50:
	bl sub_0203DEFC
	cmp r0, #0x80
	bne _021B3C6E
	ldr r0, _021B3D40 ; =0x00000548
	bl sub_02006254
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r4, #1
	cmp r1, #5
	beq _021B3C6E
	add r1, r1, #1
	str r1, [r5, r0]
_021B3C6E:
	bl sub_0203DEFC
	cmp r0, #1
	bne _021B3CA6
	mov r7, #0x16
	lsl r7, r7, #4
	ldr r0, [r5, r7]
	cmp r0, #5
	bne _021B3CA6
	ldr r4, _021B3D44 ; =0x0000054C
	add r0, r4, #0
	bl sub_02006254
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, r7]
	bl ovy195_21b5a44
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0202E430
	sub r4, #0x14
	ldr r1, _021B3D48 ; =ovy195_21b3b58
	add r0, r5, #0
	add r2, r4, #0
	bl sub_021B2F84
	pop {r3, r4, r5, r6, r7, pc}
_021B3CA6:
	cmp r4, #0
	beq _021B3CB8
	mov r2, #0x16
	lsl r2, r2, #4
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, r2]
	bl ovy195_21b599c
_021B3CB8:
	ldr r0, _021B3D4C ; =0x021B7878
	bl sub_0203DA0C
	cmp r0, #0
	bne _021B3CE6
	mov r0, #1
	bl sub_0203D564
	ldr r4, _021B3D44 ; =0x0000054C
	add r0, r4, #0
	bl sub_02006254
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl sub_0202E430
	add r4, #0x14
	ldr r1, _021B3D48 ; =ovy195_21b3b58
	add r0, r5, #0
	add r2, r4, #0
	bl sub_021B2F84
	pop {r3, r4, r5, r6, r7, pc}
_021B3CE6:
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	bl sub_02199B90
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	bl sub_02199C08
	cmp r0, #1
	bne _021B3D00
	mov r6, #1
_021B3D00:
	cmp r6, #0
	beq _021B3D3C
	mov r0, #4
	mov r1, #0
	mov r4, #0
	bl sub_02044C98
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x34]
	mov r2, #9
	bl ovy195_21b599c
	ldr r0, [r5, #0x40]
	bl sub_021B6E6C
	ldr r0, [r5, #0x3c]
	bl ovy195_21b586c
	ldr r0, [r5, #0x34]
	bl sub_0202E34C
	mov r0, #5
	str r4, [r5, #0x34]
	bl sub_02045B7C
	ldr r1, _021B3D50 ; =ovy195_21b4728
	ldr r2, _021B3D54 ; =0x00000579
	add r0, r5, #0
	bl sub_021B2F84
_021B3D3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B3D40: .word 0x00000548
_021B3D44: .word 0x0000054C
_021B3D48: .word ovy195_21b3b58
_021B3D4C: .word 0x021B7878
_021B3D50: .word ovy195_21b4728
_021B3D54: .word 0x00000579
	thumb_func_end ovy195_21b3bc0

	thumb_func_start ovy195_21b3d58
ovy195_21b3d58: ; 0x021B3D58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0x4e
	add r5, r0, #0
	mov r6, #0
	lsl r4, r4, #2
	str r6, [r5, r4]
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	mov r1, #1
	mov r7, #1
	bl sub_02199C90
	ldr r0, [r5, #0x40]
	bl ovy195_21b6ce4
	ldr r0, [r5, #0x3c]
	bl ovy195_21b57bc
	ldr r0, _021B3DF8 ; =ovy195_21b3210
	add r3, r4, #0
	str r0, [r5, #4]
	add r0, r4, #4
	ldr r0, [r5, r0]
	add r3, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, _021B3DFC ; =ovy195_21b3b2c
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	ldr r3, [r5, r3]
	add r2, r5, #0
	bl ovy195_21b6d70
	ldr r0, [r5, #0x40]
	mov r1, #0x14
	bl ovy195_21b699c
	ldr r0, [r5, #0x40]
	mov r1, #0x12
	bl ovy195_21b6e74
	str r0, [r5, #0x34]
	bl sub_0203D554
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	bne _021B3DDC
	add r2, r4, #0
	add r2, #0x28
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl ovy195_21b599c
	add r4, #0x28
	ldr r0, [r5, r4]
	cmp r0, #5
	bne _021B3DE4
	ldr r0, [r5, #0x34]
	add r1, r7, #0
	bl sub_0202E41C
	b _021B3DE4
_021B3DDC:
	add r1, r6, #0
	mov r2, #9
	bl ovy195_21b599c
_021B3DE4:
	mov r0, #6
	bl sub_02045B7C
	ldr r1, _021B3E00 ; =ovy195_21b3bc0
	ldr r2, _021B3E04 ; =0x000005A5
	add r0, r5, #0
	bl sub_021B2F84
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3DF8: .word ovy195_21b3210
_021B3DFC: .word ovy195_21b3b2c
_021B3E00: .word ovy195_21b3bc0
_021B3E04: .word 0x000005A5
	thumb_func_end ovy195_21b3d58

	thumb_func_start ovy195_21b3e08
ovy195_21b3e08: ; 0x021B3E08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02017980
	bl sub_0200A5A8
	cmp r4, r0
	bge _021B3E1E
	cmp r4, #0
	bge _021B3E22
_021B3E1E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B3E22:
	add r0, r5, #0
	bl sub_02017980
	add r1, r4, #0
	bl sub_0200A570
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b3e08

	thumb_func_start ovy195_21b3e30
ovy195_21b3e30: ; 0x021B3E30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02017980
	bl sub_0200A5A8
	cmp r4, #0
	bge _021B3E44
	mov r4, #0
_021B3E44:
	cmp r4, r0
	blt _021B3E4A
	sub r4, r0, #1
_021B3E4A:
	add r0, r5, #0
	bl sub_02017980
	add r1, r4, #0
	bl sub_0200A570
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b3e30

	thumb_func_start ovy195_21b3e58
ovy195_21b3e58: ; 0x021B3E58
	push {r3, lr}
	bl ovy195_21b4728
	mov r0, #0x1f
	bl sub_02046DC0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy195_21b3e58

	thumb_func_start ovy195_21b3e68
ovy195_21b3e68: ; 0x021B3E68
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl ovy195_21b65c4
	ldr r0, [r4, #0x40]
	bl ovy195_21b77e4
	ldr r1, _021B3E84 ; =ovy195_21b3e58
	ldr r2, _021B3E88 ; =0x00000633
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
	.align 2, 0
_021B3E84: .word ovy195_21b3e58
_021B3E88: .word 0x00000633
	thumb_func_end ovy195_21b3e68

	thumb_func_start ovy195_21b3e8c
ovy195_21b3e8c: ; 0x021B3E8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	bl ovy195_21b760c
	cmp r0, #0
	beq _021B3EEA
	mov r0, #8
	bl sub_02046DC0
	ldr r0, [r5, #0x40]
	bl sub_021B6E6C
	ldr r0, [r5, #0x3c]
	bl ovy195_21b586c
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #0
	mov r4, #0
	bl ovy195_21b5330
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #9
	bl ovy195_21b599c
	mov r0, #5
	bl sub_02045B7C
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021B3EE0
	mov r0, #4
	add r1, r4, #0
	bl sub_02044C98
	ldr r0, [r5, #0x3c]
	bl ovy195_21b5d3c
_021B3EE0:
	ldr r1, _021B3EEC ; =ovy195_21b3e68
	ldr r2, _021B3EF0 ; =0x0000064B
	add r0, r5, #0
	bl sub_021B2F84
_021B3EEA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B3EEC: .word ovy195_21b3e68
_021B3EF0: .word 0x0000064B
	thumb_func_end ovy195_21b3e8c

	thumb_func_start ovy195_21b3ef4
ovy195_21b3ef4: ; 0x021B3EF4
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _021B3F26
	ldr r1, [r4]
	ldr r0, _021B3F28 ; =ovy195_21b3818
	cmp r1, r0
	bne _021B3F26
	ldr r0, [r4, #0x40]
	bl sub_021B75E0
	mov r0, #1
	bl sub_020421AC
	mov r0, #1
	bl sub_0203D564
	ldr r0, _021B3F2C ; =0x00000551
	bl sub_02006254
	ldr r1, _021B3F30 ; =ovy195_21b3e8c
	ldr r2, _021B3F34 ; =0x00000663
	add r0, r4, #0
	bl sub_021B2F84
_021B3F26:
	pop {r4, pc}
	.align 2, 0
_021B3F28: .word ovy195_21b3818
_021B3F2C: .word 0x00000551
_021B3F30: .word ovy195_21b3e8c
_021B3F34: .word 0x00000663
	thumb_func_end ovy195_21b3ef4

	thumb_func_start ovy195_21b3f38
ovy195_21b3f38: ; 0x021B3F38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #0x2c
	bl ovy195_21b6e74
	str r0, [r4, #0x34]
	ldr r1, _021B3F54 ; =ovy195_21b41cc
	ldr r2, _021B3F58 ; =0x0000066D
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
	nop
_021B3F54: .word ovy195_21b41cc
_021B3F58: .word 0x0000066D
	thumb_func_end ovy195_21b3f38

	thumb_func_start ovy195_21b3f5c
ovy195_21b3f5c: ; 0x021B3F5C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B400E
	ldr r0, [r5, #0x38]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	bl ovy195_21b73c0
	mov r6, #0
	ldr r0, [r5, #0x3c]
	str r6, [r5, #0x38]
	bl sub_021B5930
	mov r1, #1
	mov r2, #1
	bl sub_02199D18
	cmp r4, #0
	beq _021B3F94
	cmp r4, #1
	beq _021B3FCE
	pop {r4, r5, r6, pc}
_021B3F94:
	ldr r0, [r5, #0x40]
	mov r1, #0xe
	bl ovy195_21b699c
	ldr r0, [r5, #0x3c]
	bl ovy195_21b64f8
	ldr r0, [r5, #0x40]
	mov r1, #0xd
	bl ovy195_21b74c8
	mov r1, #0x51
	lsl r1, r1, #2
	add r0, r1, #0
	str r6, [r5, r1]
	sub r0, #8
	str r6, [r5, r0]
	sub r0, r1, #4
	str r6, [r5, r0]
	ldr r0, [r5, #0x48]
	mov r2, #3
	add r1, #0x6c
	str r2, [r0, r1]
	ldr r1, _021B4010 ; =ovy195_21b39dc
	ldr r2, _021B4014 ; =0x00000682
	add r0, r5, #0
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
_021B3FCE:
	ldr r0, [r5, #0x3c]
	add r1, r6, #0
	add r2, r6, #0
	bl ovy195_21b5330
	ldr r0, [r5, #0x40]
	mov r1, #0x13
	bl ovy195_21b699c
	bl sub_0203D554
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	bne _021B3FF4
	mov r2, #0x59
	lsl r2, r2, #2
	add r1, r6, #0
	ldr r2, [r5, r2]
	b _021B3FF8
_021B3FF4:
	add r1, r6, #0
	mov r2, #9
_021B3FF8:
	bl ovy195_21b599c
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl ovy195_21b5f80
	ldr r1, _021B4018 ; =ovy195_21b3f38
	ldr r2, _021B401C ; =0x0000068E
	add r0, r5, #0
	bl sub_021B2F84
_021B400E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B4010: .word ovy195_21b39dc
_021B4014: .word 0x00000682
_021B4018: .word ovy195_21b3f38
_021B401C: .word 0x0000068E
	thumb_func_end ovy195_21b3f5c

	thumb_func_start ovy195_21b4020
ovy195_21b4020: ; 0x021B4020
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B4062
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ovy195_21b7300
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	mov r1, #1
	mov r2, #1
	bl ovy195_21b5330
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ovy195_21b5f80
	ldr r1, _021B4064 ; =ovy195_21b3f5c
	ldr r2, _021B4068 ; =0x000006A2
	add r0, r4, #0
	bl sub_021B2F84
_021B4062:
	pop {r4, pc}
	.align 2, 0
_021B4064: .word ovy195_21b3f5c
_021B4068: .word 0x000006A2
	thumb_func_end ovy195_21b4020

	thumb_func_start ovy195_21b406c
ovy195_21b406c: ; 0x021B406C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	ldr r0, [r4, #0x40]
	bne _021B4084
	mov r1, #0x2d
	b _021B4086
_021B4084:
	mov r1, #0x1f
_021B4086:
	bl ovy195_21b699c
	ldr r1, _021B4098 ; =ovy195_21b4020
	ldr r2, _021B409C ; =0x000006B4
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
	nop
_021B4098: .word ovy195_21b4020
_021B409C: .word 0x000006B4
	thumb_func_end ovy195_21b406c

	thumb_func_start ovy195_21b40a0
ovy195_21b40a0: ; 0x021B40A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r4, #0x3c]
	bl ovy195_21b5d3c
	ldr r1, _021B40C0 ; =ovy195_21b4728
	ldr r2, _021B40C4 ; =0x000006BC
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
	nop
_021B40C0: .word ovy195_21b4728
_021B40C4: .word 0x000006BC
	thumb_func_end ovy195_21b40a0

	thumb_func_start ovy195_21b40c8
ovy195_21b40c8: ; 0x021B40C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0x15
	lsl r4, r4, #4
	ldr r0, [r5, #0x3c]
	add r1, r5, r4
	bl sub_021B5DF8
	add r6, r0, #0
	beq _021B4116
	cmp r6, #1
	beq _021B40E6
	cmp r6, #2
	beq _021B40FE
	b _021B4116
_021B40E6:
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #6
	beq _021B4116
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r4, #0x14
	sub r0, r0, #1
	str r0, [r5, r4]
	b _021B4116
_021B40FE:
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_021B5FA0
	add r4, #8
	ldr r0, [r5, r4]
	sub r2, r0, #1
	bmi _021B4116
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x2c]
	bl ovy195_21b7280
_021B4116:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b40c8

	thumb_func_start ovy195_21b411c
ovy195_21b411c: ; 0x021B411C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0x15
	lsl r4, r4, #4
	ldr r0, [r5, #0x3c]
	add r1, r5, r4
	bl ovy195_21b5dc4
	add r6, r0, #0
	beq _021B4168
	cmp r6, #1
	beq _021B413A
	cmp r6, #2
	beq _021B4152
	b _021B4168
_021B413A:
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	cmp r0, #8
	beq _021B4168
	add r0, r4, #0
	add r0, #0x14
	ldr r0, [r5, r0]
	add r4, #0x14
	add r0, r0, #1
	str r0, [r5, r4]
	b _021B4168
_021B4152:
	ldr r0, [r5, #0x3c]
	mov r1, #2
	bl sub_021B5FA0
	add r4, #8
	ldr r2, [r5, r4]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x2c]
	add r2, r2, #2
	bl ovy195_21b71d4
_021B4168:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy195_21b411c

	thumb_func_start ovy195_21b416c
ovy195_21b416c: ; 0x021B416C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0202E438
	cmp r0, #0
	beq _021B41A4
	ldr r0, [r4, #0x34]
	bl sub_0202E34C
	mov r1, #0
	mov r0, #0x52
	str r1, [r4, #0x34]
	sub r2, r1, #1
	lsl r0, r0, #2
	str r2, [r4, r0]
	ldr r0, [r4, #0x3c]
	mov r2, #9
	bl ovy195_21b599c
	mov r0, #5
	bl sub_02045B7C
	ldr r1, _021B41A8 ; =ovy195_21b406c
	ldr r2, _021B41AC ; =0x00000728
	add r0, r4, #0
	bl sub_021B2F84
_021B41A4:
	pop {r4, pc}
	nop
_021B41A8: .word ovy195_21b406c
_021B41AC: .word 0x00000728
	thumb_func_end ovy195_21b416c

	thumb_func_start ovy195_21b41b0
ovy195_21b41b0: ; 0x021B41B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B41C8
	bl sub_0202E34C
	mov r0, #5
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, #0x34]
_021B41C8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b41b0

	thumb_func_start ovy195_21b41cc
ovy195_21b41cc: ; 0x021B41CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r6, #0
	add r4, r0, #0
	str r6, [sp, #0x20]
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	add r5, r0, #0
	ldr r0, [r4, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B425E
	add r0, r5, #0
	bl sub_02199C58
	cmp r0, #0
	beq _021B41F4
	b _021B4572
_021B41F4:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0x20
	bl ovy195_21b5fd4
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021B422E
	mov r7, #0x56
	lsl r7, r7, #2
	ldr r2, [r4, r7]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b5cb8
	ldr r0, [r4, #0x40]
	bl ovy195_21b72a0
	ldr r1, [r4, r7]
	ldr r0, [r4, #0x2c]
	sub r1, r1, #2
	bl ovy195_21b3e30
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ovy195_21b6208
	b _021B425A
_021B422E:
	cmp r0, #2
	bne _021B425A
	mov r7, #0x56
	lsl r7, r7, #2
	ldr r2, [r4, r7]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b5cb8
	ldr r0, [r4, #0x40]
	bl ovy195_21b71f4
	ldr r1, [r4, r7]
	ldr r0, [r4, #0x2c]
	add r1, r1, #3
	bl ovy195_21b3e30
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ovy195_21b61c8
_021B425A:
	cmp r5, #0
	beq _021B4260
_021B425E:
	b _021B45C0
_021B4260:
	bl sub_0203D554
	cmp r0, #1
	bne _021B4288
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B4288
	mov r2, #0x59
	lsl r2, r2, #2
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r2]
	mov r1, #0
	bl ovy195_21b599c
	mov r0, #0
	bl sub_0203D564
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B4288:
	bl sub_0203DF44
	mov r1, #1
	lsl r1, r1, #8
	str r1, [sp]
	cmp r0, r1
	bne _021B430E
	add r0, r1, #0
	str r0, [sp, #8]
	add r0, #0x58
	str r0, [sp, #8]
	add r0, r1, #0
	str r0, [sp, #4]
	add r0, #0x58
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x64
	mov r6, #0
	mov r5, #0
	str r0, [sp]
_021B42B0:
	add r0, r4, #0
	bl ovy195_21b411c
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	orr r6, r7
	bl sub_021B5FC8
	cmp r7, #0
	beq _021B430E
	cmp r7, #1
	bne _021B42CC
	sub r5, r5, #1
	b _021B4308
_021B42CC:
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ovy195_21b6070
	ldr r2, [sp, #8]
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r2]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b5cb8
	ldr r0, [r4, #0x40]
	bl ovy195_21b71f4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, r1]
	add r1, r1, #3
	bl ovy195_21b3e30
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ovy195_21b61c8
	ldr r2, [sp]
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r2]
	mov r1, #0
	bl ovy195_21b599c
_021B4308:
	add r5, r5, #1
	cmp r5, #3
	blt _021B42B0
_021B430E:
	bl sub_0203DF44
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #0xc]
	cmp r0, r1
	bne _021B4394
	add r0, r1, #0
	str r0, [sp, #0x14]
	sub r0, #0x9c
	str r0, [sp, #0x14]
	add r0, r1, #0
	str r0, [sp, #0x10]
	sub r0, #0xa8
	str r0, [sp, #0x10]
	add r0, r1, #0
	sub r0, #0xa8
	mov r6, #0
	mov r5, #0
	str r0, [sp, #0xc]
_021B4336:
	add r0, r4, #0
	bl ovy195_21b40c8
	add r7, r0, #0
	ldr r0, [r4, #0x3c]
	orr r6, r7
	bl sub_021B5FC8
	cmp r7, #0
	beq _021B4394
	cmp r7, #1
	bne _021B4352
	sub r5, r5, #1
	b _021B438E
_021B4352:
	ldr r2, [sp, #0x14]
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r2]
	mov r1, #0
	bl ovy195_21b599c
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ovy195_21b6070
	ldr r2, [sp, #0x10]
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r2]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b5cb8
	ldr r0, [r4, #0x40]
	bl ovy195_21b72a0
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, r1]
	sub r1, r1, #2
	bl ovy195_21b3e30
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	bl ovy195_21b6208
_021B438E:
	add r5, r5, #1
	cmp r5, #3
	blt _021B4336
_021B4394:
	bl sub_0203DF44
	cmp r0, #0x40
	bne _021B43A4
	add r0, r4, #0
	bl ovy195_21b40c8
	add r6, r0, #0
_021B43A4:
	bl sub_0203DF44
	cmp r0, #0x80
	bne _021B43B4
	add r0, r4, #0
	bl ovy195_21b411c
	add r6, r0, #0
_021B43B4:
	cmp r6, #0
	beq _021B43EA
	ldr r0, _021B45C4 ; =0x00000548
	bl sub_02006254
	mov r5, #0x56
	lsl r5, r5, #2
	add r1, r5, #0
	add r1, #0xc
	ldr r2, [r4, r5]
	ldr r1, [r4, r1]
	ldr r0, [r4, #0x3c]
	add r1, r2, r1
	add r2, r5, #0
	sub r2, #8
	ldr r2, [r4, r2]
	sub r1, r1, #6
	bl ovy195_21b62e4
	add r5, #0xc
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r5]
	mov r1, #0
	bl ovy195_21b599c
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B43EA:
	bl sub_0203DEFC
	cmp r0, #1
	bne _021B4428
	ldr r0, _021B45C8 ; =0x0000054C
	bl sub_02006254
	mov r5, #0x59
	lsl r5, r5, #2
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, r5]
	bl ovy195_21b5a44
	add r0, r5, #0
	sub r0, #0xc
	ldr r1, [r4, r0]
	ldr r0, [r4, r5]
	sub r5, #0x1c
	add r0, r1, r0
	sub r0, r0, #6
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy195_21b41b0
	ldr r1, _021B45CC ; =ovy195_21b406c
	ldr r2, _021B45D0 ; =0x000007CE
	add r0, r4, #0
	bl sub_021B2F84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B4428:
	bl sub_0203DEFC
	cmp r0, #8
	bne _021B444C
	ldr r0, _021B45C8 ; =0x0000054C
	bl sub_02006254
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_0202E430
	ldr r1, _021B45D4 ; =ovy195_21b416c
	ldr r2, _021B45D8 ; =0x000007D4
	add r0, r4, #0
	bl sub_021B2F84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B444C:
	ldr r0, _021B45DC ; =0x021B7880
	bl sub_0203DA0C
	add r6, r0, #0
	cmp r6, #3
	bhi _021B450A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4464: ; jump table
	.short _021B449C - _021B4464 - 2 ; case 0
	.short _021B4492 - _021B4464 - 2 ; case 1
	.short _021B4488 - _021B4464 - 2 ; case 2
	.short _021B446C - _021B4464 - 2 ; case 3
_021B446C:
	ldr r0, _021B45C8 ; =0x0000054C
	bl sub_02006254
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl sub_0202E430
	ldr r1, _021B45D4 ; =ovy195_21b416c
	ldr r2, _021B45E0 ; =0x000007DE
	add r0, r4, #0
	bl sub_021B2F84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B4488:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #3
	blt _021B450A
_021B4492:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #2
	blt _021B450A
_021B449C:
	mov r0, #1
	bl sub_0203D564
	mov r5, #0x59
	add r2, r6, #6
	lsl r5, r5, #2
	str r2, [r4, r5]
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ovy195_21b599c
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, r5]
	bl ovy195_21b5a44
	add r0, r5, #0
	sub r0, #0xc
	ldr r1, [r4, r0]
	ldr r0, [r4, r5]
	add r2, r6, #0
	add r0, r1, r0
	sub r1, r0, #6
	add r0, r5, #0
	sub r0, #0x1c
	str r1, [r4, r0]
	add r1, r5, #0
	sub r1, #0x14
	ldr r0, [r4, #0x3c]
	add r1, r4, r1
	bl sub_021B5E18
	add r1, r5, #0
	sub r1, #0xc
	ldr r2, [r4, r1]
	ldr r1, [r4, r5]
	sub r5, #0x14
	add r1, r2, r1
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r5]
	sub r1, r1, #6
	bl ovy195_21b62e4
	ldr r0, _021B45C8 ; =0x0000054C
	bl sub_02006254
	add r0, r4, #0
	bl ovy195_21b41b0
	ldr r1, _021B45CC ; =ovy195_21b406c
	ldr r2, _021B45E4 ; =0x000007F9
	add r0, r4, #0
	bl sub_021B2F84
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B450A:
	ldr r0, _021B45E8 ; =0x021B7870
	bl sub_0203D9C8
	cmp r0, #0
	bne _021B4572
	add r0, sp, #0x1c
	add r1, sp, #0x18
	bl sub_0203DA84
	cmp r0, #1
	bne _021B45C0
	mov r5, #0x15
	lsl r5, r5, #4
	ldr r0, [r4, #0x3c]
	ldr r1, [sp, #0x18]
	ldr r2, [r4, r5]
	bl ovy195_21b631c
	add r2, r0, #0
	add r0, r5, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, r2
	beq _021B45C0
	add r0, r5, #0
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b7250
	add r2, r5, #0
	add r2, #8
	ldr r2, [r4, r2]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b6248
	add r5, #8
	ldr r2, [r4, r5]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b5cb8
	ldr r0, _021B45C4 ; =0x00000548
	bl sub_02006254
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021B4572:
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	bl sub_02199B90
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	bl sub_02199C08
	cmp r0, #1
	bne _021B45C0
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	bl sub_02044C98
	add r0, r4, #0
	bl ovy195_21b41b0
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	mov r2, #9
	bl ovy195_21b599c
	ldr r0, [r4, #0x3c]
	bl ovy195_21b5cf0
	ldr r0, [r4, #0x40]
	bl ovy195_21b6ce4
	ldr r1, _021B45EC ; =ovy195_21b40a0
	ldr r2, _021B45F0 ; =0x0000081B
	add r0, r4, #0
	bl sub_021B2F84
_021B45C0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B45C4: .word 0x00000548
_021B45C8: .word 0x0000054C
_021B45CC: .word ovy195_21b406c
_021B45D0: .word 0x000007CE
_021B45D4: .word ovy195_21b416c
_021B45D8: .word 0x000007D4
_021B45DC: .word 0x021B7880
_021B45E0: .word 0x000007DE
_021B45E4: .word 0x000007F9
_021B45E8: .word 0x021B7870
_021B45EC: .word ovy195_21b40a0
_021B45F0: .word 0x0000081B
	thumb_func_end ovy195_21b41cc

	thumb_func_start ovy195_21b45f4
ovy195_21b45f4: ; 0x021B45F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B4640
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0
	bgt _021B4640
	ldr r0, [r4, #0x40]
	mov r1, #0x20
	bl ovy195_21b699c
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	mov r1, #1
	bl sub_02199C90
	ldr r1, _021B4644 ; =ovy195_21b4970
	ldr r2, _021B4648 ; =0x00000835
	add r0, r4, #0
	bl sub_021B2F84
	bl sub_0203D554
	cmp r0, #0
	bne _021B4640
	mov r2, #0x57
	lsl r2, r2, #2
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, r2]
	mov r1, #0
	bl ovy195_21b599c
_021B4640:
	pop {r4, pc}
	nop
_021B4644: .word ovy195_21b4970
_021B4648: .word 0x00000835
	thumb_func_end ovy195_21b45f4

	thumb_func_start ovy195_21b464c
ovy195_21b464c: ; 0x021B464C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	mov r4, #1
	bl sub_02017980
	bl sub_0200A5A8
	ldr r6, _021B4714 ; =0x00000138
	add r7, r0, #0
	str r4, [r5, r6]
	bne _021B467C
	ldr r0, [r5, #0x40]
	mov r1, #0x1d
	bl ovy195_21b699c
	mov r0, #0x78
	str r0, [r5, #0x14]
	ldr r1, _021B4718 ; =ovy195_21b45f4
	ldr r2, _021B471C ; =0x00000855
	add r0, r5, #0
	bl sub_021B2F84
	pop {r3, r4, r5, r6, r7, pc}
_021B467C:
	add r0, r6, #0
	add r0, #0x18
	str r7, [r5, r0]
	ldr r0, [r5, #0x40]
	mov r1, #0x13
	bl ovy195_21b699c
	bl sub_0203D554
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	bne _021B469C
	add r6, #0x2c
	mov r1, #0
	ldr r2, [r5, r6]
	b _021B46A0
_021B469C:
	mov r1, #0
	mov r2, #9
_021B46A0:
	bl ovy195_21b599c
	ldr r0, [r5, #0x40]
	bl ovy195_21b6ce4
	cmp r7, #3
	bgt _021B46B0
	mov r4, #0
_021B46B0:
	ldr r0, [r5, #0x3c]
	add r1, r4, #0
	bl ovy195_21b5b58
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x2c]
	bl ovy195_21b7188
	mov r4, #0x56
	lsl r4, r4, #2
	ldr r2, [r5, r4]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b7250
	ldr r2, [r5, r4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b6248
	ldr r2, [r5, r4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x2c]
	sub r2, r2, #2
	bl ovy195_21b5cb8
	ldr r0, [r5, #0x40]
	mov r1, #0x2c
	bl ovy195_21b6e74
	str r0, [r5, #0x34]
	add r1, r4, #0
	add r1, #0xc
	ldr r2, [r5, r4]
	ldr r1, [r5, r1]
	sub r4, #8
	add r1, r2, r1
	ldr r0, [r5, #0x3c]
	ldr r2, [r5, r4]
	sub r1, r1, #6
	bl ovy195_21b62e4
	ldr r1, _021B4720 ; =ovy195_21b41cc
	ldr r2, _021B4724 ; =0x00000883
	add r0, r5, #0
	bl sub_021B2F84
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B4714: .word 0x00000138
_021B4718: .word ovy195_21b45f4
_021B471C: .word 0x00000855
_021B4720: .word ovy195_21b41cc
_021B4724: .word 0x00000883
	thumb_func_end ovy195_21b464c

	thumb_func_start ovy195_21b4728
ovy195_21b4728: ; 0x021B4728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl ovy195_21b6098
	mov r4, #0x1b
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B4754
	add r0, r4, #4
	ldr r2, [r5, r0]
	add r0, r2, #0
	add r1, r0, #1
	add r0, r4, #4
	str r1, [r5, r0]
	cmp r2, #3
	blo _021B47C4
	bl sub_02011DA4
	mov r0, #0
	str r0, [r5, r4]
_021B4754:
	bl sub_0203D554
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	bne _021B4768
	mov r2, #0x57
	lsl r2, r2, #2
	mov r1, #0
	ldr r2, [r5, r2]
	b _021B476C
_021B4768:
	mov r1, #0
	mov r2, #9
_021B476C:
	bl ovy195_21b599c
	ldr r0, [r5, #0x40]
	ldr r1, _021B47C8 ; =ovy195_21b3b2c
	add r2, r5, #0
	bl ovy195_21b6d14
	ldr r0, _021B47CC ; =ovy195_21b309c
	str r0, [r5, #4]
	ldr r0, [r5, #0x2c]
	bl sub_0201735C
	bl sub_0201FDFC
	cmp r0, #2
	bge _021B4794
	mov r0, #0x61
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_021B4794:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	ldr r0, [r5, #0x40]
	bne _021B47A4
	mov r1, #0x20
	b _021B47A6
_021B47A4:
	mov r1, #0x2b
_021B47A6:
	bl ovy195_21b699c
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	mov r0, #6
	mov r1, #1
	bl sub_02044C98
	ldr r1, _021B47D0 ; =ovy195_21b4970
	ldr r2, _021B47D4 ; =0x000008DA
	add r0, r5, #0
	bl sub_021B2F84
_021B47C4:
	pop {r3, r4, r5, pc}
	nop
_021B47C8: .word ovy195_21b3b2c
_021B47CC: .word ovy195_21b309c
_021B47D0: .word ovy195_21b4970
_021B47D4: .word 0x000008DA
	thumb_func_end ovy195_21b4728

	thumb_func_start ovy195_21b47d8
ovy195_21b47d8: ; 0x021B47D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl ovy195_21b5a44
	cmp r0, #0
	beq _021B47FE
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	mov r1, #0
	bl sub_02199C90
	ldr r0, _021B4804 ; =0x0000054C
	bl sub_02006254
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021B47FE:
	mov r0, #9
	pop {r3, r4, r5, pc}
	nop
_021B4804: .word 0x0000054C
	thumb_func_end ovy195_21b47d8

	thumb_func_start ovy195_21b4808
ovy195_21b4808: ; 0x021B4808
	push {r4, lr}
	ldr r0, [r0, #0x3c]
	add r4, r1, #0
	bl ovy195_21b5a68
	cmp r0, #0
	bne _021B4818
	mov r4, #9
_021B4818:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ovy195_21b4808

	thumb_func_start ovy195_21b481c
ovy195_21b481c: ; 0x021B481C
	push {r4, lr}
	mov r1, #0x57
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl ovy195_21b4808
	cmp r0, #0
	bne _021B4850
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	mov r2, #9
	bl ovy195_21b599c
	ldr r0, [r4, #0x40]
	bl ovy195_21b6ce4
	mov r0, #6
	bl sub_02045B7C
	ldr r1, _021B486C ; =ovy195_21b3d58
	ldr r2, _021B4870 ; =0x00000911
	add r0, r4, #0
	bl sub_021B2F84
	pop {r4, pc}
_021B4850:
	cmp r0, #1
	bne _021B4868
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	mov r2, #9
	bl ovy195_21b599c
	ldr r1, _021B4874 ; =ovy195_21b464c
	ldr r2, _021B4878 ; =0x00000915
	add r0, r4, #0
	bl sub_021B2F84
_021B4868:
	pop {r4, pc}
	nop
_021B486C: .word ovy195_21b3d58
_021B4870: .word 0x00000911
_021B4874: .word ovy195_21b464c
_021B4878: .word 0x00000915
	thumb_func_end ovy195_21b481c

	thumb_func_start ovy195_21b487c
ovy195_21b487c: ; 0x021B487C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B490C
	ldr r0, [r5, #0x38]
	bl sub_0202DC00
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	bl ovy195_21b73c0
	mov r3, #0
	str r3, [r5, #0x38]
	cmp r4, #0
	beq _021B48A6
	cmp r4, #1
	beq _021B48BE
	pop {r3, r4, r5, pc}
_021B48A6:
	mov r0, #0x1b
	ldr r1, [r5, #0x48]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r1, _021B4910 ; =ovy195_21b3270
	ldr r2, _021B4914 ; =0x00000923
	add r0, r5, #0
	str r3, [r5, #0x14]
	bl sub_021B2F84
	pop {r3, r4, r5, pc}
_021B48BE:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	ldr r0, [r5, #0x40]
	bne _021B48CE
	mov r1, #0x20
	b _021B48D0
_021B48CE:
	mov r1, #0x2b
_021B48D0:
	bl ovy195_21b699c
	bl sub_0203D554
	cmp r0, #0
	bne _021B48EA
	mov r2, #0x57
	lsl r2, r2, #2
	ldr r0, [r5, #0x3c]
	ldr r2, [r5, r2]
	mov r1, #0
	bl ovy195_21b599c
_021B48EA:
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	mov r1, #1
	mov r2, #1
	bl sub_02199D18
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #0
	bl ovy195_21b5330
	ldr r1, _021B4918 ; =ovy195_21b4970
	ldr r2, _021B491C ; =0x00000931
	add r0, r5, #0
	bl sub_021B2F84
_021B490C:
	pop {r3, r4, r5, pc}
	nop
_021B4910: .word ovy195_21b3270
_021B4914: .word 0x00000923
_021B4918: .word ovy195_21b4970
_021B491C: .word 0x00000931
	thumb_func_end ovy195_21b487c

	thumb_func_start ovy195_21b4920
ovy195_21b4920: ; 0x021B4920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B4964
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	mov r1, #1
	mov r2, #0
	bl sub_02199D18
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ovy195_21b6b08
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x3c]
	mov r1, #1
	mov r2, #3
	bl ovy195_21b5330
	ldr r0, [r4, #0x3c]
	mov r1, #0
	mov r2, #9
	bl ovy195_21b599c
	ldr r1, _021B4968 ; =ovy195_21b487c
	ldr r2, _021B496C ; =0x00000942
	add r0, r4, #0
	bl sub_021B2F84
_021B4964:
	pop {r4, pc}
	nop
_021B4968: .word ovy195_21b487c
_021B496C: .word 0x00000942
	thumb_func_end ovy195_21b4920

	thumb_func_start ovy195_21b4970
ovy195_21b4970: ; 0x021B4970
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	mov r4, #0
	bl sub_021B5930
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl ovy195_21b6a9c
	cmp r0, #0
	beq _021B4A6C
	add r0, r6, #0
	bl sub_02199C58
	cmp r0, #0
	bne _021B4A2C
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B49B8
	bl sub_0203D554
	cmp r0, #1
	bne _021B49B8
	mov r2, #0x57
	lsl r2, r2, #2
	ldr r0, [r5, #0x3c]
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl ovy195_21b599c
	add r0, r4, #0
	bl sub_0203D564
	pop {r4, r5, r6, pc}
_021B49B8:
	bl sub_0203DEFC
	cmp r0, #1
	bne _021B49E6
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021B49E0
	sub r1, #0x28
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ovy195_21b47d8
	ldr r1, _021B4A70 ; =ovy195_21b481c
	ldr r2, _021B4A74 ; =0x00000962
	add r0, r5, #0
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
_021B49E0:
	ldr r0, _021B4A78 ; =0x00000551
	bl sub_02006254
_021B49E6:
	bl sub_0203DEFC
	cmp r0, #0x40
	bne _021B49FE
	ldr r0, _021B4A7C ; =0x00000548
	mov r4, #1
	bl sub_02006254
	mov r0, #0x57
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021B49FE:
	bl sub_0203DEFC
	cmp r0, #0x80
	bne _021B4A14
	ldr r0, _021B4A7C ; =0x00000548
	mov r4, #1
	bl sub_02006254
	mov r0, #0x57
	lsl r0, r0, #2
	str r4, [r5, r0]
_021B4A14:
	cmp r4, #0
	beq _021B4A26
	mov r2, #0x57
	lsl r2, r2, #2
	ldr r0, [r5, #0x3c]
	ldr r2, [r5, r2]
	mov r1, #0
	bl ovy195_21b599c
_021B4A26:
	ldr r0, [r5, #0x40]
	bl sub_021B6BB8
_021B4A2C:
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	bl sub_02199B90
	ldr r0, [r5, #0x3c]
	bl sub_021B5930
	bl sub_02199C08
	cmp r0, #1
	bne _021B4A6C
	mov r0, #1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x40]
	mov r1, #0x2a
	bl ovy195_21b699c
	bl sub_0203D554
	cmp r0, #1
	bne _021B4A62
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #9
	bl ovy195_21b599c
_021B4A62:
	ldr r1, _021B4A80 ; =ovy195_21b4920
	ldr r2, _021B4A84 ; =0x00000984
	add r0, r5, #0
	bl sub_021B2F84
_021B4A6C:
	pop {r4, r5, r6, pc}
	nop
_021B4A70: .word ovy195_21b481c
_021B4A74: .word 0x00000962
_021B4A78: .word 0x00000551
_021B4A7C: .word 0x00000548
_021B4A80: .word ovy195_21b4920
_021B4A84: .word 0x00000984
	thumb_func_end ovy195_21b4970

	thumb_func_start ovy195_21b4a88
ovy195_21b4a88: ; 0x021B4A88
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0x1b
	ldr r0, [r5, #0x48]
	lsl r4, r4, #4
	ldr r0, [r0, r4]
	cmp r0, #1
	beq _021B4AF0
	mov r0, #0
	mov r6, #0
	bl sub_02042E94
	mov r0, #0
	bl sub_02042E9C
	ldr r0, [r5, #0x40]
	bl ovy195_21b7414
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #0
	bl ovy195_21b5330
	mov r0, #4
	mov r1, #0
	bl sub_02044C98
	ldr r0, [r5, #0x3c]
	bl ovy195_21b65c4
	ldr r0, [r5, #0x40]
	bl ovy195_21b6ae0
	ldr r0, [r5, #0x40]
	bl ovy195_21b77e4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	mov r2, #9
	bl ovy195_21b599c
	mov r1, #1
	str r1, [r5, r4]
	add r0, r4, #4
	str r6, [r5, r0]
	ldr r0, [r5, #0x48]
	ldr r2, _021B4AF4 ; =0x000009A5
	str r1, [r0, r4]
	ldr r1, _021B4AF8 ; =ovy195_21b4728
	add r0, r5, #0
	bl sub_021B2F84
_021B4AF0:
	pop {r4, r5, r6, pc}
	nop
_021B4AF4: .word 0x000009A5
_021B4AF8: .word ovy195_21b4728
	thumb_func_end ovy195_21b4a88

	thumb_func_start ovy195_21b4afc
ovy195_21b4afc: ; 0x021B4AFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	mov r2, #0xe
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x1f
	lsl r2, r2, #0xe
	mov r6, #0x1f
	bl sub_0203A15C
	ldr r0, _021B4BF4 ; =0x04000050
	mov r7, #0
	strh r7, [r0]
	ldr r0, _021B4BF8 ; =0x04001050
	mov r1, #0
	strh r7, [r0]
	mov r0, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	mov r1, #0xd
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0x1f
	bl sub_0203AAEC
	mov r2, #0xd
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #6
	blx sub_020787A8
	strh r6, [r4, #0xc]
	str r5, [r4, #0x48]
	ldrh r0, [r4, #0xc]
	ldr r1, [r5]
	bl ovy195_21b4d24
	str r0, [r4, #0x3c]
	ldrh r0, [r4, #0xc]
	mov r1, #0x2d
	bl ovy195_21b66cc
	str r0, [r4, #0x40]
	ldr r0, [r5]
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	bl sub_02017934
	str r0, [r4, #0x30]
	ldr r0, [r5]
	bl sub_02017238
	str r0, [r4, #0x44]
	mov r6, #0x1b
	ldr r1, [r4, #0x48]
	lsl r6, r6, #4
	mov r0, #1
	str r0, [r1, r6]
	add r0, r6, #0
	sub r0, #0x54
	str r7, [r4, r0]
	add r0, r6, #0
	mov r1, #2
	sub r0, #0x50
	str r1, [r4, r0]
	add r0, r6, #0
	mov r1, #6
	sub r0, #0x4c
	str r1, [r4, r0]
	ldr r0, [r5]
	bl sub_0201736C
	bl sub_02008BD0
	sub r6, #0x64
	str r0, [r4, r6]
	bl sub_02042788
	cmp r0, #0
	beq _021B4BB4
	mov r0, #0x22
	ldr r1, _021B4BFC ; =0x021B7894
	lsl r0, r0, #8
	mov r2, #4
	add r3, r4, #0
	bl sub_02040C20
_021B4BB4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4, #0xc]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	ldr r0, _021B4C00 ; =0x00000486
	ldr r1, _021B4C04 ; =0x0000FFFF
	bl sub_02005DF4
	ldrh r1, [r4, #0xc]
	mov r0, #1
	bl sub_02042BA8
	mov r0, #1
	bl sub_02011D8C
	ldr r1, _021B4C08 ; =ovy195_21b4728
	ldr r2, _021B4C0C ; =0x000009D8
	add r0, r4, #0
	bl sub_021B2F84
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B4BF4: .word 0x04000050
_021B4BF8: .word 0x04001050
_021B4BFC: .word 0x021B7894
_021B4C00: .word 0x00000486
_021B4C04: .word 0x0000FFFF
_021B4C08: .word ovy195_21b4728
_021B4C0C: .word 0x000009D8
	thumb_func_end ovy195_21b4afc

	thumb_func_start ovy195_21b4c10
ovy195_21b4c10: ; 0x021B4C10
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r6, [r4]
	mov r5, #1
	cmp r6, #0
	beq _021B4C2A
	bl sub_020120C8
	cmp r0, #0
	bne _021B4C28
	add r0, r4, #0
	blx r6
_021B4C28:
	mov r5, #0
_021B4C2A:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B4C48
	ldr r0, [r4, #0x3c]
	bl sub_021B5930
	cmp r0, #0
	beq _021B4C42
	bl sub_02199C58
	cmp r0, #0
	bne _021B4C48
_021B4C42:
	ldr r0, [r4, #0x34]
	bl sub_0202E37C
_021B4C48:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021B4C52
	bl sub_0202DB70
_021B4C52:
	ldr r0, [r4, #0x3c]
	bl ovy195_21b4e34
	ldr r0, [r4, #0x40]
	bl ovy195_21b6800
	bl sub_02042788
	cmp r0, #0
	beq _021B4CBE
	bl sub_020120C8
	cmp r0, #0
	beq _021B4CC8
	mov r0, #1
	mov r1, #1
	mov r6, #1
	bl sub_02152404
	cmp r0, #4
	bhi _021B4CC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4C88: ; jump table
	.short _021B4CC8 - _021B4C88 - 2 ; case 0
	.short _021B4C92 - _021B4C88 - 2 ; case 1
	.short _021B4C9A - _021B4C88 - 2 ; case 2
	.short _021B4CB8 - _021B4C88 - 2 ; case 3
	.short _021B4C92 - _021B4C88 - 2 ; case 4
_021B4C92:
	add r0, r4, #0
	bl ovy195_21b4a88
	b _021B4CC8
_021B4C9A:
	mov r0, #0x1b
	ldr r1, [r4, #0x48]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	mov r0, #0
	mov r1, #0
	add r5, r6, #0
	bl sub_02027B64
	add r0, r6, #0
	mov r1, #0
	bl sub_02027B64
	b _021B4CC8
_021B4CB8:
	bl sub_02011D20
	b _021B4CC8
_021B4CBE:
	bl sub_020120C8
	cmp r0, #0
	beq _021B4CC8
	mov r5, #1
_021B4CC8:
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy195_21b4c10

	thumb_func_start ovy195_21b4ccc
ovy195_21b4ccc: ; 0x021B4CCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02011D98
	bl sub_02027ACC
	cmp r0, #0
	bne _021B4CE2
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B4CE2:
	bl sub_02042788
	cmp r0, #0
	beq _021B4CF2
	mov r0, #0x22
	lsl r0, r0, #8
	bl sub_02040C64
_021B4CF2:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B4CFC
	bl sub_0202E34C
_021B4CFC:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021B4D06
	bl sub_0202DA54
_021B4D06:
	ldr r0, [r4, #0x40]
	bl ovy195_21b6840
	ldr r0, [r4, #0x3c]
	bl ovy195_21b4e60
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x1f
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b4ccc

	thumb_func_start ovy195_21b4d24
ovy195_21b4d24: ; 0x021B4D24
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, _021B4E14 ; =0x00000102
	add r7, r1, #0
	add r1, r5, #0
	ldr r3, _021B4E18 ; =0x021B7B90
	add r1, #0x62
	mov r2, #1
	add r6, r0, #0
	str r5, [sp]
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, #0xf4
	strh r6, [r0]
	add r5, #0x16
	ldr r0, _021B4E1C ; =0x0000008B
	str r7, [r4, r5]
	bl sub_0203CE0C
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r0, #1
	bl sub_02046DF8
	ldr r2, _021B4E20 ; =0x04001000
	mov r0, #1
	ldr r1, [r2]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	bl GX_DispOn
	add r0, r4, #0
	add r0, #0xf4
	ldrh r0, [r0]
	bl sub_020444A4
	add r2, r4, #0
	add r2, #0xf4
	ldr r6, _021B4E24 ; =0x021B7B60
	ldrh r2, [r2]
	ldr r0, _021B4E28 ; =0x021B793C
	add r1, r6, #0
	bl sub_0204B6A8
	add r2, r4, #0
	add r2, #0xf4
	ldrh r2, [r2]
	mov r0, #0x40
	mov r1, #0
	mov r5, #0x40
	bl sub_0204BF1C
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_02046C40
	ldr r0, _021B4E2C ; =0x021B7B28
	bl sub_02044710
	add r0, r4, #0
	bl ovy195_21b4f9c
	add r0, r4, #0
	bl ovy195_21b5510
	ldr r0, _021B4E30 ; =ovy195_21b54d8
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0x14]
	mov r0, #0x40
	add r0, #0xd8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xf4
	lsl r6, r5, #3
	ldrh r0, [r0]
	ldr r3, _021B4E18 ; =0x021B7B90
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	mov r1, #0x40
	add r1, #0xe4
	str r0, [r4, r1]
	mov r0, #0x40
	add r0, #0xd9
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xf4
	ldrh r0, [r0]
	ldr r3, _021B4E18 ; =0x021B7B90
	add r1, r6, #0
	mov r2, #0
	bl sub_0203A1FC
	add r5, #0xe8
	str r0, [r4, r5]
	add r0, r4, #0
	bl ovy195_21b5948
	add r0, r4, #0
	mov r1, #0
	bl ovy195_21b58d4
	mov r0, #0x1f
	bl sub_02046DC0
	mov r0, #0x1f
	bl sub_02046D38
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B4E14: .word 0x00000102
_021B4E18: .word 0x021B7B90
_021B4E1C: .word 0x0000008B
_021B4E20: .word 0x04001000
_021B4E24: .word 0x021B7B60
_021B4E28: .word 0x021B793C
_021B4E2C: .word 0x021B7B28
_021B4E30: .word ovy195_21b54d8
	thumb_func_end ovy195_21b4d24

	thumb_func_start ovy195_21b4e34
ovy195_21b4e34: ; 0x021B4E34
	push {r4, lr}
	add r4, r0, #0
	bl sub_0204B794
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4E4A
	bl sub_02035198
_021B4E4A:
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4E58
	bl sub_02035198
_021B4E58:
	add r0, r4, #0
	bl ovy195_21b659c
	pop {r4, pc}
	thumb_func_end ovy195_21b4e34

	thumb_func_start ovy195_21b4e60
ovy195_21b4e60: ; 0x021B4E60
	push {r4, r5, r6, lr}
	mov r4, #0x4d
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0204C108
	add r0, r5, #0
	bl ovy195_21b5934
	add r0, r5, #0
	bl ovy195_21b5e80
	add r0, r5, #0
	bl ovy195_21b5c0c
	add r0, r4, #0
	sub r0, #0x10
	ldr r0, [r5, r0]
	bl sub_0203A24C
	sub r4, #0xc
	ldr r0, [r5, r4]
	bl sub_0203A24C
	add r0, r5, #0
	bl ovy195_21b5b04
	ldr r0, [r5, #0x18]
	bl sub_0204BCD0
	ldr r0, [r5, #0x1c]
	bl sub_0204BCD0
	ldr r0, [r5, #0x28]
	bl sub_0204B98C
	ldr r0, [r5, #0x2c]
	bl sub_0204B98C
	ldr r0, [r5, #0x74]
	bl sub_0204BE64
	ldr r0, [r5, #0x78]
	bl sub_0204BE64
	ldr r0, [r5, #0x24]
	bl sub_0204BCD0
	ldr r0, [r5, #0x70]
	bl sub_0204B98C
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_0204BE64
	ldr r0, [r5, #0x20]
	bl sub_0204BCD0
	mov r4, #0
_021B4EDA:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x30]
	bl sub_0204B98C
	ldr r0, [r6, #0x7c]
	bl sub_0204BE64
	add r4, r4, #1
	cmp r4, #0x10
	blt _021B4EDA
	ldr r0, [r5, #0x14]
	bl sub_0203A6A8
	ldr r0, [r5, #0x10]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_02035178
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl sub_02035178
	ldr r2, [r5, #8]
	mov r0, #7
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r5]
	mov r0, #4
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r5, #4]
	mov r0, #0
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r4, #0
	bl sub_02044668
	mov r0, #1
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r0, #5
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r0, #6
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	mov r0, #5
	mov r1, #0
	bl sub_02044C98
_021B4F72:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_02044B84
	add r4, r4, #1
	cmp r4, #7
	ble _021B4F72
	bl sub_02044528
	add r0, r5, #0
	bl sub_0203A24C
	ldr r0, _021B4F94 ; =0x0000008B
	bl sub_0203CDC8
	pop {r4, r5, r6, pc}
	nop
_021B4F94: .word 0x0000008B
	thumb_func_end ovy195_21b4e60

	thumb_func_start sub_021B4F98
sub_021B4F98: ; 0x021B4F98
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end sub_021B4F98

	thumb_func_start ovy195_21b4f9c
ovy195_21b4f9c: ; 0x021B4F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10c
	ldr r4, _021B51A4 ; =0x021B7978
	add r3, sp, #0xec
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045708
	mov r0, #0
	bl sub_02044F90
	mov r0, #0
	mov r1, #1
	mov r7, #1
	bl sub_02044C98
	ldr r4, _021B51A8 ; =0x021B7A18
	add r3, sp, #0xcc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #1
	mov r2, #0
	bl sub_0204476C
	mov r0, #1
	mov r1, #1
	bl sub_02044C98
	mov r0, #1
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #1
	bl sub_02044F90
	ldr r6, _021B51AC ; =0x021B7998
	add r3, sp, #0xac
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #2
	mov r2, #0
	mov r6, #2
	bl sub_0204476C
	mov r0, #2
	mov r1, #1
	bl sub_02044C98
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add r0, r6, #0
	bl sub_02044F90
	ldr r6, _021B51B0 ; =0x021B79B8
	add r3, sp, #0x8c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	add r1, r7, #0
	bl sub_02044C98
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #3
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #3
	bl sub_02044F90
	ldr r6, _021B51B4 ; =0x021B79D8
	add r3, sp, #0x6c
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #4
	mov r2, #0
	bl sub_0204476C
	mov r0, #4
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #4
	bl sub_02044F90
	ldr r6, _021B51B8 ; =0x021B79F8
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
	add r1, r2, #0
	mov r0, #5
	mov r2, #0
	mov r6, #5
	bl sub_0204476C
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02044C98
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02045118
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add r0, r6, #0
	bl sub_02044F90
	ldr r6, _021B51BC ; =0x021B7A38
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
	add r1, r2, #0
	mov r0, #6
	mov r2, #0
	bl sub_0204476C
	mov r0, #6
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #6
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02045118
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #6
	bl sub_02044F90
	ldr r4, _021B51C0 ; =0x021B7A58
	add r3, sp, #0xc
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	mov r0, #7
	mov r2, #0
	mov r4, #7
	bl sub_0204476C
	mov r0, #7
	add r1, r7, #0
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02044F90
	add sp, #0x10c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B51A4: .word 0x021B7978
_021B51A8: .word 0x021B7A18
_021B51AC: .word 0x021B7998
_021B51B0: .word 0x021B79B8
_021B51B4: .word 0x021B79D8
_021B51B8: .word 0x021B79F8
_021B51BC: .word 0x021B7A38
_021B51C0: .word 0x021B7A58
	thumb_func_end ovy195_21b4f9c

	thumb_func_start ovy195_21b51c4
ovy195_21b51c4: ; 0x021B51C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r0, #0xf4
	ldrh r0, [r0]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02026DC0
	add r6, #0xf4
	mov r7, #2
	lsl r7, r7, #8
	ldrh r3, [r6]
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	add r2, r7, #0
	bl sub_02026E04
	mov r2, #0
	str r2, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r2, #0
	add r3, r7, #0
	bl sub_02026F7C
	mov r3, #6
	str r3, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r3, #0xfa
	bl sub_02027880
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_02026FD8
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ble _021B527C
_021B5224:
	ldr r0, [sp, #8]
	cmp r0, #1
	beq _021B5250
	cmp r0, #3
	bne _021B5270
	ldr r0, [sp, #0x10]
	lsl r7, r0, #2
	ldr r0, [r5, r7]
	ldr r1, [r4, r7]
	lsl r0, r0, #5
	add r0, r6, r0
	lsl r1, r1, #5
	blx sub_0207B0AC
	ldr r0, [r5, r7]
	ldr r2, [r4, r7]
	lsl r1, r0, #5
	add r0, r6, r1
	lsl r2, r2, #5
	bl sub_0207560C
	b _021B5270
_021B5250:
	ldr r0, [sp, #0x10]
	lsl r7, r0, #2
	ldr r0, [r5, r7]
	ldr r1, [r4, r7]
	lsl r0, r0, #5
	add r0, r6, r0
	lsl r1, r1, #5
	blx sub_0207B0AC
	ldr r0, [r5, r7]
	ldr r2, [r4, r7]
	lsl r1, r0, #5
	add r0, r6, r1
	lsl r2, r2, #5
	bl sub_02075534
_021B5270:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021B5224
_021B527C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl sub_02026E48
	ldr r0, [sp, #0xc]
	bl sub_02026DE8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b51c4

	thumb_func_start ovy195_21b5290
ovy195_21b5290: ; 0x021B5290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	add r5, r1, #0
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0xf4
	ldrh r0, [r0]
	add r7, r2, #0
	str r3, [sp, #8]
	bl sub_02026DC0
	add r4, #0xf4
	mov r6, #2
	lsl r6, r6, #8
	ldrh r3, [r4]
	str r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02026E04
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #0
	add r3, r6, #0
	mov r4, #0
	bl sub_02026F7C
	mov r3, #6
	str r3, [sp]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #0
	add r3, #0xfa
	str r4, [sp, #4]
	bl sub_02027880
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_02026FD8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ble _021B531C
_021B52EC:
	cmp r5, #1
	beq _021B52FE
	cmp r5, #3
	bne _021B5314
	lsl r6, r4, #2
	ldr r0, [r7, r6]
	lsl r1, r0, #5
	mov r0, #0x1e
	b _021B5306
_021B52FE:
	lsl r6, r4, #2
	ldr r0, [r7, r6]
	lsl r1, r0, #5
	mov r0, #0x1f
_021B5306:
	ldr r3, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r3, [r3, r6]
	add r2, r2, r1
	lsl r3, r3, #5
	bl sub_0205FA10
_021B5314:
	ldr r0, [sp, #0x28]
	add r4, r4, #1
	cmp r4, r0
	blt _021B52EC
_021B531C:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl sub_02026E48
	ldr r0, [sp, #0xc]
	bl sub_02026DE8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5290

	thumb_func_start ovy195_21b5330
ovy195_21b5330: ; 0x021B5330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	bne _021B533E
	b _021B5468
_021B533E:
	mov r7, #0x49
	lsl r7, r7, #2
	add r6, r7, #0
	add r6, #0xdc
	ldr r0, _021B549C ; =0x05000600
	ldr r1, [r4, r7]
	add r2, r6, #0
	blx sub_02078920
	add r1, r7, #4
	ldr r0, _021B54A0 ; =0x05000400
	ldr r1, [r4, r1]
	add r2, r6, #0
	blx sub_02078920
	cmp r5, #3
	bhi _021B53D8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B536C: ; jump table
	.short _021B5390 - _021B536C - 2 ; case 0
	.short _021B53A2 - _021B536C - 2 ; case 1
	.short _021B5374 - _021B536C - 2 ; case 2
	.short _021B53BC - _021B536C - 2 ; case 3
_021B5374:
	add r2, sp, #0x58
	mov r0, #0
	str r0, [r2]
	ldr r0, _021B54A4 ; =0x021B78CC
	add r3, sp, #0x54
	ldr r0, [r0]
	str r0, [sp, #0x54]
_021B5382:
	mov r0, #1
_021B5384:
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl ovy195_21b51c4
	b _021B53D8
_021B5390:
	ldr r0, _021B54A8 ; =0x021B78D8
	add r2, sp, #0x50
	ldr r0, [r0]
	add r3, sp, #0x4c
	str r0, [sp, #0x50]
	ldr r0, _021B54AC ; =0x021B78D4
	ldr r0, [r0]
	str r0, [sp, #0x4c]
	b _021B5382
_021B53A2:
	ldr r0, _021B54B0 ; =0x021B791C
	add r2, sp, #0x44
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r3, sp, #0x3c
	str r1, [sp, #0x44]
	ldr r1, _021B54B4 ; =0x021B7924
	str r0, [sp, #0x48]
	ldmia r1!, {r0, r1}
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	mov r0, #2
	b _021B5384
_021B53BC:
	ldr r0, _021B54B8 ; =0x021B78D0
	add r2, sp, #0x38
	ldr r0, [r0]
	add r3, sp, #0x34
	str r0, [sp, #0x38]
	ldr r0, _021B54BC ; =0x021B78C8
	mov r1, #3
	ldr r0, [r0]
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	bl ovy195_21b5290
_021B53D8:
	cmp r5, #3
	bhi _021B5498
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B53E8: ; jump table
	.short _021B53F0 - _021B53E8 - 2 ; case 0
	.short _021B5418 - _021B53E8 - 2 ; case 1
	.short _021B53F0 - _021B53E8 - 2 ; case 2
	.short _021B5440 - _021B53E8 - 2 ; case 3
_021B53F0:
	ldr r0, _021B54C0 ; =0x021B7934
	add r2, sp, #0x2c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r3, sp, #0x24
	str r0, [sp, #0x30]
	ldr r0, _021B54C4 ; =0x021B78FC
	str r1, [sp, #0x2c]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ovy195_21b51c4
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B5418:
	ldr r0, _021B54C8 ; =0x021B7904
	add r2, sp, #0x1c
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r3, sp, #0x14
	str r0, [sp, #0x20]
	ldr r0, _021B54CC ; =0x021B790C
	str r1, [sp, #0x1c]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ovy195_21b51c4
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B5440:
	ldr r0, _021B54D0 ; =0x021B7914
	add r2, sp, #0xc
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r3, sp, #4
	str r0, [sp, #0x10]
	ldr r0, _021B54D4 ; =0x021B792C
	str r1, [sp, #0xc]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ovy195_21b5290
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
_021B5468:
	mov r6, #0x49
	lsl r6, r6, #2
	add r5, r6, #0
	add r5, #0xdc
	ldr r0, [r4, r6]
	add r1, r5, #0
	blx sub_0207B0AC
	ldr r0, [r4, r6]
	mov r1, #0
	add r2, r5, #0
	bl sub_0207560C
	add r0, r6, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	blx sub_0207B0AC
	add r0, r6, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_02075534
_021B5498:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B549C: .word 0x05000600
_021B54A0: .word 0x05000400
_021B54A4: .word 0x021B78CC
_021B54A8: .word 0x021B78D8
_021B54AC: .word 0x021B78D4
_021B54B0: .word 0x021B791C
_021B54B4: .word 0x021B7924
_021B54B8: .word 0x021B78D0
_021B54BC: .word 0x021B78C8
_021B54C0: .word 0x021B7934
_021B54C4: .word 0x021B78FC
_021B54C8: .word 0x021B7904
_021B54CC: .word 0x021B790C
_021B54D0: .word 0x021B7914
_021B54D4: .word 0x021B792C
	thumb_func_end ovy195_21b5330

	thumb_func_start ovy195_21b54d8
ovy195_21b54d8: ; 0x021B54D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0204B7C8
	mov r4, #1
	lsl r4, r4, #8
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B550C
	add r2, r4, #4
	ldr r2, [r5, r2]
	mov r0, #4
	mov r1, #3
	add r2, #0x48
	bl sub_02044CFC
	mov r2, #6
	add r2, #0xfe
	ldr r2, [r5, r2]
	mov r0, #6
	mov r1, #3
	add r2, #0x48
	bl sub_02044CFC
	mov r0, #0
	str r0, [r5, r4]
_021B550C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b54d8

	thumb_func_start ovy195_21b5510
ovy195_21b5510: ; 0x021B5510
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	bl sub_0204AA30
	mov r1, #0xc0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #3
	add r6, r0, #0
	mov r4, #0
	bl sub_0204B0D4
	mov r0, #0x40
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #1
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B0D4
	add r0, r5, #0
	str r4, [sp]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #6
	mov r2, #7
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #0x11
	mov r2, #7
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AFB0
	add r0, r5, #0
	str r4, [sp]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #8
	mov r2, #4
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	mov r7, #8
	bl sub_0204AE3C
	str r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #0x12
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AFB0
	add r0, r5, #0
	str r4, [sp]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #1
	mov r2, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B0D4
	add r0, r5, #0
	str r4, [sp]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #6
	add r2, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204AE3C
	str r0, [r5, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	add r0, r5, #0
	str r4, [sp, #8]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #0xc
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204AFB0
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #5
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x70]
	mov r3, #5
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r3, r3, #6
	bl sub_0204BBB8
	add r3, r5, #0
	add r3, #0xf4
	str r0, [r5, #0x24]
	ldrh r3, [r3]
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0x16
	bl sub_0204BDE0
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #7
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	mov r3, #1
	bl sub_0204B81C
	str r0, [r5, #0x28]
	str r4, [sp]
	add r0, r5, #0
	mov r3, #2
	str r7, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #2
	mov r2, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, #0xfe
	bl sub_0204BBB8
	add r3, r5, #0
	add r3, #0xf4
	str r0, [r5, #0x18]
	ldrh r3, [r3]
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0x17
	bl sub_0204BDE0
	str r0, [r5, #0x74]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #7
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x2c]
	str r4, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #2
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r4, #0
	bl sub_0204BBB8
	add r3, r5, #0
	add r3, #0xf4
	str r0, [r5, #0x1c]
	ldrh r3, [r3]
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0x17
	bl sub_0204BDE0
	add r3, r5, #0
	add r3, #0xf4
	str r0, [r5, #0x78]
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #0x10
	add r2, r4, #0
	mov r7, #0x10
	bl sub_02035024
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	str r7, [sp]
	add r0, #0xf8
	ldr r0, [r0]
	add r1, r6, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_02035104
	add r3, r5, #0
	add r3, #0xf4
	ldrh r3, [r3]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #7
	bl sub_02035024
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	add r0, r5, #0
	str r7, [sp]
	add r0, #0xfc
	ldr r0, [r0]
	add r1, r6, #0
	mov r2, #1
	add r3, r4, #0
	bl sub_02035104
	add r0, r6, #0
	bl sub_0204AB0C
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x1f
	bl sub_0204AA30
	add r7, r0, #0
_021B5744:
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	add r1, r4, #1
	mov r2, #0
	str r0, [sp]
	add r0, r7, #0
	mov r3, #1
	bl sub_0204B81C
	add r3, r5, #0
	str r0, [r6, #0x30]
	add r3, #0xf4
	lsl r2, r4, #1
	add r1, r2, #0
	ldrh r3, [r3]
	add r0, r7, #0
	add r1, #0x11
	add r2, #0x12
	bl sub_0204BDE0
	add r4, r4, #1
	str r0, [r6, #0x7c]
	cmp r4, #0x10
	blt _021B5744
	mov r0, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #1
	str r0, [sp, #8]
	add r0, r7, #0
	mov r3, #0
	bl sub_0204BBB8
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #9
	str r0, [sp]
	ldr r0, _021B57B4 ; =0x04001050
	mov r1, #5
	mov r2, #0x18
	mov r3, #0xf
	bl sub_02074A6C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B57B4: .word 0x04001050
	thumb_func_end ovy195_21b5510

	thumb_func_start sub_021B57B8
sub_021B57B8: ; 0x021B57B8
	bx lr
	.align 2, 0
	thumb_func_end sub_021B57B8

	thumb_func_start ovy195_21b57bc
ovy195_21b57bc: ; 0x021B57BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #0
	mov r6, #0
	bl sub_021B57B8
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	bl sub_0204AA30
	ldr r1, [r5]
	mov r2, #4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r6, [sp, #4]
	add r1, r5, #0
	str r6, [sp, #8]
	add r1, #0xf4
	ldrh r1, [r1]
	mov r3, #0
	add r4, r0, #0
	str r1, [sp, #0xc]
	mov r1, #0x13
	bl sub_0204AFB0
	ldr r0, [r5]
	mov r1, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	add r0, r5, #0
	str r6, [sp, #8]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r2, #4
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, r5, #0
	mov r1, #0x60
	mov r2, #0x38
	mov r3, #0
	bl ovy195_21b5a98
	add r0, r5, #0
	mov r1, #0xf0
	mov r2, #0x38
	mov r3, #1
	bl ovy195_21b5a98
	add r0, r5, #0
	mov r1, #0x78
	mov r2, #0x60
	mov r3, #0
	bl ovy195_21b5a98
	add r0, r5, #0
	mov r1, #0xf0
	mov r2, #0x60
	mov r3, #1
	bl ovy195_21b5a98
	add r0, r5, #0
	mov r1, #0x78
	mov r2, #0x88
	mov r3, #0
	bl ovy195_21b5a98
	add r0, r5, #0
	mov r1, #0xf0
	mov r2, #0x88
	mov r3, #1
	bl ovy195_21b5a98
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b57bc

	thumb_func_start ovy195_21b586c
ovy195_21b586c: ; 0x021B586C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	bl sub_0204AA30
	add r4, r0, #0
	add r0, r5, #0
	bl ovy195_21b5b04
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl sub_02045604
	mov r0, #6
	bl sub_02045B7C
	ldr r0, [r5]
	add r5, #0xf4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r5]
	mov r1, #0x12
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AFB0
	mov r0, #4
	bl sub_02045B7C
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b586c

	thumb_func_start ovy195_21b58d4
ovy195_21b58d4: ; 0x021B58D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r3, _021B592C ; =0x021B7958
	add r2, sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x20
	mov r7, #0
	blx sub_020787A8
	mov r0, #1
	add r1, r5, #0
	str r6, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	add r1, #0xf4
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0x18]
	str r7, [sp, #0x1c]
	str r4, [sp, #0x14]
	ldrh r1, [r1]
	add r0, sp, #0
	bl sub_02199AA0
	str r0, [r5, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B592C: .word 0x021B7958
	thumb_func_end ovy195_21b58d4

	thumb_func_start sub_021B5930
sub_021B5930: ; 0x021B5930
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_021B5930

	thumb_func_start ovy195_21b5934
ovy195_21b5934: ; 0x021B5934
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021B5946
	bl sub_02199B5C
	mov r0, #0
	str r0, [r4, #0xc]
_021B5946:
	pop {r4, pc}
	thumb_func_end ovy195_21b5934

	thumb_func_start ovy195_21b5948
ovy195_21b5948: ; 0x021B5948
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r1, #0
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	mov r1, #2
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xf4
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x74]
	bl sub_0204C040
	mov r5, #0x4d
	lsl r5, r5, #2
	str r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C318
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5948

	thumb_func_start ovy195_21b599c
ovy195_21b599c: ; 0x021B599C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r4, r0, #0
	add r5, r1, #0
	cmp r6, #9
	bhi _021B5A02
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B59B6: ; jump table
	.short _021B5A02 - _021B59B6 - 2 ; case 0
	.short _021B5A02 - _021B59B6 - 2 ; case 1
	.short _021B59F6 - _021B59B6 - 2 ; case 2
	.short _021B59F6 - _021B59B6 - 2 ; case 3
	.short _021B59F6 - _021B59B6 - 2 ; case 4
	.short _021B59DA - _021B59B6 - 2 ; case 5
	.short _021B59F6 - _021B59B6 - 2 ; case 6
	.short _021B59F6 - _021B59B6 - 2 ; case 7
	.short _021B59F6 - _021B59B6 - 2 ; case 8
	.short _021B59CA - _021B59B6 - 2 ; case 9
_021B59CA:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021B59DA:
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	cmp r5, #0
	beq _021B5A32
	add r0, r5, #0
	mov r1, #1
	bl sub_0202E41C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021B59F6:
	cmp r5, #0
	beq _021B5A02
	add r0, r5, #0
	mov r1, #0
	bl sub_0202E41C
_021B5A02:
	ldr r0, _021B5A38 ; =0x021B7B39
	lsl r5, r6, #2
	ldrb r1, [r0, r5]
	add r0, sp, #0
	mov r6, #0x4d
	strh r1, [r0]
	ldr r1, _021B5A3C ; =0x021B7B3A
	lsl r6, r6, #2
	ldrb r1, [r1, r5]
	mov r2, #1
	strh r1, [r0, #2]
	ldr r0, [r4, r6]
	add r1, sp, #0
	bl sub_0204C140
	ldr r1, _021B5A40 ; =0x021B7B38
	ldr r0, [r4, r6]
	ldrb r1, [r1, r5]
	bl sub_0204C488
	ldr r0, [r4, r6]
	mov r1, #1
	bl sub_0204C124
_021B5A32:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B5A38: .word 0x021B7B39
_021B5A3C: .word 0x021B7B3A
_021B5A40: .word 0x021B7B38
	thumb_func_end ovy195_21b599c

	thumb_func_start ovy195_21b5a44
ovy195_21b5a44: ; 0x021B5A44
	push {r3, lr}
	mov r2, #0x4d
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	cmp r0, #0
	bne _021B5A54
	mov r0, #0
	pop {r3, pc}
_021B5A54:
	lsl r2, r1, #2
	ldr r1, _021B5A64 ; =0x021B7B3B
	ldrb r1, [r1, r2]
	bl sub_0204C488
	mov r0, #1
	pop {r3, pc}
	nop
_021B5A64: .word 0x021B7B3B
	thumb_func_end ovy195_21b5a44

	thumb_func_start ovy195_21b5a68
ovy195_21b5a68: ; 0x021B5A68
	push {r3, r4, r5, lr}
	mov r4, #0x4d
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	bne _021B5A7A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B5A7A:
	bl sub_0204C4A0
	cmp r0, #0x1d
	blo _021B5A94
	ldr r0, [r5, r4]
	bl sub_0204C560
	cmp r0, #0
	bne _021B5A90
	mov r0, #1
	pop {r3, r4, r5, pc}
_021B5A90:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B5A94:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b5a68

	thumb_func_start ovy195_21b5a98
ovy195_21b5a98: ; 0x021B5A98
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	mov r0, #0
_021B5AA0:
	lsl r5, r0, #2
	add r4, r6, r5
	add r4, #0xc4
	ldr r4, [r4]
	cmp r4, #0
	bne _021B5AF8
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #2
	strh r2, [r0, #2]
	cmp r3, #0
	bne _021B5ABA
	mov r1, #0
_021B5ABA:
	add r0, sp, #0xc
	strh r1, [r0, #4]
	mov r1, #0
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r6, #0
	str r1, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	add r4, r6, #0
	add r4, #0xc4
	str r0, [sp, #8]
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x18]
	ldr r3, [r6, #0x74]
	bl sub_0204C040
	str r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021B5AF8:
	add r0, r0, #1
	cmp r0, #0xc
	blt _021B5AA0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5a98

	thumb_func_start ovy195_21b5b04
ovy195_21b5b04: ; 0x021B5B04
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r7, r4, #0
_021B5B0C:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B5B22
	bl sub_0204C108
	add r0, r5, r6
	add r0, #0xc4
	str r7, [r0]
_021B5B22:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B5B0C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5b04

	thumb_func_start ovy195_21b5b2c
ovy195_21b5b2c: ; 0x021B5B2C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #0xc4
	ldr r0, [r4, r5]
	bl sub_0204C4A0
	mov r1, #1
	cmp r0, #2
	blt _021B5B42
	mov r1, #3
_021B5B42:
	lsl r1, r1, #0x10
	ldr r0, [r4, r5]
	lsr r1, r1, #0x10
	bl sub_0204C488
	ldr r0, [r4, r5]
	mov r1, #1
	bl sub_0204C520
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5b2c

	thumb_func_start ovy195_21b5b58
ovy195_21b5b58: ; 0x021B5B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	bl ovy195_21b5934
	add r0, r5, #0
	mov r1, #8
	bl ovy195_21b58d4
	add r0, r5, #0
	mov r1, #1
	bl sub_021B57B8
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	mov r4, #0x90
	bl sub_0204AA30
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r3, #0x90
	add r3, #0x8c
	str r1, [sp]
	mov r1, #0x15
	mov r2, #0
	add r3, r5, r3
	add r6, r0, #0
	bl sub_0204B32C
	mov r1, #0x90
	add r1, #0x90
	str r0, [r5, r1]
	add r4, #0xb0
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B124
	add r0, r6, #0
	bl sub_0204AB0C
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x1f
	mov r4, #0x1f
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp]
	mov r1, #0x1f
	add r1, #0xe1
	str r1, [sp, #4]
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	add r6, r0, #0
	mov r2, #5
	str r1, [sp, #8]
	mov r1, #0
	mov r3, #0
	bl sub_0204B124
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, r5, #0
	bl ovy195_21b5e2c
	add r0, r5, #0
	add r1, r7, #0
	bl ovy195_21b5e9c
	add r4, #0xe1
	mov r0, #1
	str r0, [r5, r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5b58

	thumb_func_start ovy195_21b5c0c
ovy195_21b5c0c: ; 0x021B5C0C
	push {r3, r4, r5, lr}
	mov r5, #0x12
	add r4, r0, #0
	lsl r5, r5, #4
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B5C22
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, r5]
_021B5C22:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b5c0c

	thumb_func_start ovy195_21b5c24
ovy195_21b5c24: ; 0x021B5C24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r2, #0x47
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r0, [r0]
	str r2, [sp, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #6
	add r2, #0xc
	mul r0, r1
	str r2, [sp, #8]
	mov r4, #0
	mov r7, #0
	str r0, [sp]
_021B5C46:
	mov r5, #0
_021B5C48:
	ldr r3, [sp, #8]
	lsl r6, r4, #1
	ldrh r6, [r3, r6]
	ldr r3, [sp, #4]
	ldr r2, [sp]
	add r3, r3, r6
	lsl r3, r3, #0x10
	mov r0, #4
	add r1, r5, #0
	add r2, r7, r2
	lsr r3, r3, #0x10
	bl sub_0204694C
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #0x20
	blt _021B5C48
	add r7, r7, #1
	cmp r7, #6
	blt _021B5C46
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5c24

	thumb_func_start ovy195_21b5c74
ovy195_21b5c74: ; 0x021B5C74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r2, #0x47
	lsl r2, r2, #2
	ldr r7, [r0, r2]
	ldr r0, [r0]
	add r7, #0xc
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #6
	mul r0, r1
	mov r5, #0
	str r0, [sp, #4]
_021B5C90:
	mov r4, #0
_021B5C92:
	ldrh r6, [r7, #0x3e]
	ldr r3, [sp]
	ldr r2, [sp, #4]
	add r3, r6, r3
	lsl r3, r3, #0x10
	mov r0, #4
	add r1, r4, #0
	add r2, r5, r2
	lsr r3, r3, #0x10
	bl sub_0204694C
	add r4, r4, #1
	cmp r4, #0x20
	blt _021B5C92
	add r5, r5, #1
	cmp r5, #6
	blt _021B5C90
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5c74

	thumb_func_start ovy195_21b5cb8
ovy195_21b5cb8: ; 0x021B5CB8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #0
_021B5CC2:
	add r0, r7, #0
	add r1, r6, r4
	bl ovy195_21b3e08
	cmp r0, #0
	beq _021B5CD8
	add r0, r5, #0
	add r1, r4, #0
	bl ovy195_21b5c24
	b _021B5CE0
_021B5CD8:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy195_21b5c74
_021B5CE0:
	add r4, r4, #1
	cmp r4, #6
	blt _021B5CC2
	mov r0, #4
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5cb8

	thumb_func_start ovy195_21b5cf0
ovy195_21b5cf0: ; 0x021B5CF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	bl sub_0204AA30
	mov r7, #0x53
	str r0, [sp]
	mov r4, #0
	lsl r7, r7, #2
_021B5D08:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021B5D1A
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021B5D1A:
	add r4, r4, #1
	cmp r4, #6
	blt _021B5D08
	add r0, r6, #0
	bl ovy195_21b5934
	add r0, r6, #0
	mov r1, #0
	bl ovy195_21b58d4
	add r0, r6, #0
	bl ovy195_21b5e80
	ldr r0, [sp]
	bl sub_0204AB0C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5cf0

	thumb_func_start ovy195_21b5d3c
ovy195_21b5d3c: ; 0x021B5D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	bl sub_0204AA30
	add r6, r0, #0
	add r0, r5, #0
	bl ovy195_21b5c0c
	add r0, r5, #0
	bl ovy195_21b5f5c
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r4, #6
	mov r7, #0
	bl sub_02045604
	mov r0, #6
	bl sub_02045B7C
	add r4, #0xfa
	str r4, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #2
	mov r2, #5
	str r0, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204B124
	ldr r0, [r5]
	add r5, #0xf4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5]
	mov r1, #0x12
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0
	bl sub_0204AFB0
	mov r0, #4
	bl sub_02045B7C
	add r0, r6, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5d3c

	thumb_func_start ovy195_21b5dc4
ovy195_21b5dc4: ; 0x021B5DC4
	push {r3, r4}
	ldr r3, [r1, #4]
	mov r0, #0
	cmp r3, #2
	bge _021B5DE0
	ldr r2, [r1]
	sub r2, r2, #1
	cmp r3, r2
	bge _021B5DE0
	add r0, r3, #1
	str r0, [r1, #4]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021B5DE0:
	cmp r3, #2
	bne _021B5DF4
	ldr r3, [r1, #8]
	ldr r2, [r1]
	add r4, r3, #3
	cmp r4, r2
	bge _021B5DF4
	add r0, r3, #1
	str r0, [r1, #8]
	mov r0, #2
_021B5DF4:
	pop {r3, r4}
	bx lr
	thumb_func_end ovy195_21b5dc4

	thumb_func_start sub_021B5DF8
sub_021B5DF8: ; 0x021B5DF8
	ldr r2, [r1, #4]
	mov r0, #0
	cmp r2, #0
	ble _021B5E08
	sub r0, r2, #1
	str r0, [r1, #4]
	mov r0, #1
	bx lr
_021B5E08:
	bne _021B5E16
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _021B5E16
	sub r0, r2, #1
	str r0, [r1, #8]
	mov r0, #2
_021B5E16:
	bx lr
	thumb_func_end sub_021B5DF8

	thumb_func_start sub_021B5E18
sub_021B5E18: ; 0x021B5E18
	ldr r0, [r1]
	cmp r2, r0
	bhs _021B5E20
	str r2, [r1, #4]
_021B5E20:
	ldr r0, [r1, #4]
	cmp r0, #2
	ble _021B5E2A
	mov r0, #2
	str r0, [r1, #4]
_021B5E2A:
	bx lr
	thumb_func_end sub_021B5E18

	thumb_func_start ovy195_21b5e2c
ovy195_21b5e2c: ; 0x021B5E2C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r1, #0x80
	add r0, sp, #0xc
	strh r1, [r0]
	mov r4, #0xc8
	strh r4, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	mov r1, #1
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	add r3, r5, #0
	str r1, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	add r3, #0xbc
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x70]
	ldr r2, [r5, #0x24]
	ldr r3, [r3]
	bl sub_0204C040
	mov r1, #0xc8
	add r1, #0x70
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	add r4, #0x70
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5e2c

	thumb_func_start ovy195_21b5e80
ovy195_21b5e80: ; 0x021B5E80
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021B5E92
	bl sub_0204C108
_021B5E92:
	mov r0, #0x4e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ovy195_21b5e80

	thumb_func_start ovy195_21b5e9c
ovy195_21b5e9c: ; 0x021B5E9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	ldr r0, _021B5F4C ; =0x021B78E4
	str r1, [sp, #0xc]
	ldrh r1, [r0]
	add r4, sp, #0x10
	mov r5, #0
	strh r1, [r4, #0x12]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0x14]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x16]
	ldr r0, _021B5F50 ; =0x021B78EC
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrh r1, [r0, #2]
	strh r1, [r4, #0xe]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0x10]
	ldr r0, _021B5F54 ; =0x021B78DC
	ldrh r1, [r0]
	strh r1, [r4, #6]
	ldrh r1, [r0, #2]
	strh r1, [r4, #8]
	ldrh r0, [r0, #4]
	strh r0, [r4, #0xa]
	ldr r0, _021B5F58 ; =0x021B78F4
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r0, [r0, #4]
	strh r0, [r4, #4]
_021B5EE0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021B5EEA
	cmp r5, #0
	beq _021B5F42
_021B5EEA:
	add r1, sp, #0x20
	lsl r0, r5, #1
	add r1, #2
	ldrh r1, [r1, r0]
	strh r1, [r4, #0x18]
	add r1, sp, #0x1c
	ldrh r1, [r1, r0]
	strh r1, [r4, #0x1a]
	add r1, sp, #0x14
	add r1, #2
	ldrh r1, [r1, r0]
	strh r1, [r4, #0x1c]
	strb r5, [r4, #0x1e]
	add r1, sp, #0x10
	ldrh r0, [r1, r0]
	strb r0, [r4, #0x1f]
	lsl r0, r5, #2
	add r7, r6, r0
	add r0, sp, #0x28
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xf4
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x18]
	ldr r3, [r6, #0x74]
	bl sub_0204C040
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r7, r1]
	mov r1, #1
	bl sub_0204C520
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	mov r1, #1
	bl sub_0204C124
_021B5F42:
	add r5, r5, #1
	cmp r5, #3
	blt _021B5EE0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5F4C: .word 0x021B78E4
_021B5F50: .word 0x021B78EC
_021B5F54: .word 0x021B78DC
_021B5F58: .word 0x021B78F4
	thumb_func_end ovy195_21b5e9c

	thumb_func_start ovy195_21b5f5c
ovy195_21b5f5c: ; 0x021B5F5C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021B5F66:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021B5F78
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021B5F78:
	add r4, r4, #1
	cmp r4, #3
	blt _021B5F66
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5f5c

	thumb_func_start ovy195_21b5f80
ovy195_21b5f80: ; 0x021B5F80
	push {r4, r5, r6, lr}
	mov r6, #5
	add r5, r0, #0
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	add r4, r1, #0
	cmp r0, #0
	beq _021B5F9C
	bl sub_0204C56C
	ldr r0, [r5, r6]
	add r1, r4, #0
	bl sub_0204C520
_021B5F9C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b5f80

	thumb_func_start sub_021B5FA0
sub_021B5FA0: ; 0x021B5FA0
	mov r2, #0x42
	lsl r2, r2, #2
	str r1, [r0, r2]
	cmp r1, #2
	bne _021B5FB6
	sub r1, r2, #4
	ldr r3, [r0, r1]
	add r1, r2, #4
	add r3, #0x30
	str r3, [r0, r1]
	bx lr
_021B5FB6:
	cmp r1, #1
	bne _021B5FC4
	sub r1, r2, #4
	ldr r3, [r0, r1]
	add r1, r2, #4
	sub r3, #0x30
	str r3, [r0, r1]
_021B5FC4:
	bx lr
	.align 2, 0
	thumb_func_end sub_021B5FA0

	thumb_func_start sub_021B5FC8
sub_021B5FC8: ; 0x021B5FC8
	mov r1, #0x42
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B5FC8

	thumb_func_start ovy195_21b5fd4
ovy195_21b5fd4: ; 0x021B5FD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	add r7, r1, #0
	cmp r2, #2
	bne _021B6022
	sub r3, r0, #4
	add r1, r3, #0
	ldr r1, [r5, r1]
	add r4, r3, #0
	add r1, #8
	str r1, [r5, r4]
	add r4, r0, #4
	ldr r4, [r5, r4]
	cmp r4, r1
	bne _021B6004
	str r2, [r7]
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, [r5, r3]
	sub r0, #0x30
	str r0, [r5, r3]
_021B6004:
	mov r4, #0
	add r6, r4, #0
	sub r6, #8
_021B600A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy195_21b6190
	add r4, r4, #1
	cmp r4, #6
	blt _021B600A
	mov r0, #1
	mov r1, #1
	add r0, #0xff
	str r1, [r5, r0]
_021B6022:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	cmp r2, #1
	bne _021B6068
	sub r3, r0, #4
	add r1, r3, #0
	ldr r1, [r5, r1]
	add r4, r3, #0
	sub r1, #8
	str r1, [r5, r4]
	add r4, r0, #4
	ldr r4, [r5, r4]
	cmp r4, r1
	bne _021B604C
	str r2, [r7]
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, [r5, r3]
	add r0, #0x30
	str r0, [r5, r3]
_021B604C:
	mov r4, #0
	mov r6, #8
_021B6050:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy195_21b6190
	add r4, r4, #1
	cmp r4, #6
	blt _021B6050
	mov r0, #1
	mov r1, #1
	add r0, #0xff
	str r1, [r5, r0]
_021B6068:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b5fd4

	thumb_func_start ovy195_21b6070
ovy195_21b6070: ; 0x021B6070
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r2, #1
	cmp r1, #0
	beq _021B607C
	sub r2, r2, #2
_021B607C:
	mov r0, #0x30
	add r5, r2, #0
	mov r4, #0
	mul r5, r0
_021B6084:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ovy195_21b6190
	add r4, r4, #1
	cmp r4, #6
	blt _021B6084
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6070

	thumb_func_start ovy195_21b6098
ovy195_21b6098: ; 0x021B6098
	push {lr}
	sub sp, #0xc
	mov r0, #4
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #6
	mov r1, #3
	mov r2, #0
	bl sub_02044CFC
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	mov r0, #1
	bl sub_02044F90
	add sp, #0xc
	pop {pc}
	thumb_func_end ovy195_21b6098

	thumb_func_start ovy195_21b60d0
ovy195_21b60d0: ; 0x021B60D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	lsl r4, r1, #2
	add r7, r5, r0
	ldr r0, [r7, r4]
	add r6, r2, #0
	cmp r0, #0
	beq _021B60EA
	bl sub_0204C108
_021B60EA:
	mov r0, #0
	add r1, sp, #0xc
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, #1
	strh r0, [r1, #4]
	mov r2, #0xa
	strb r2, [r1, #6]
	mov r2, #2
	strb r2, [r1, #7]
	add r1, sp, #0xc
	str r1, [sp]
	add r1, r6, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xf4
	ldrh r0, [r0]
	add r6, #0x19
	lsl r1, r1, #2
	str r0, [sp, #8]
	lsl r3, r6, #2
	add r1, r5, r1
	add r3, r5, r3
	ldr r0, [r5, #0x10]
	ldr r1, [r1, #0x18]
	ldr r2, [r5, #0x20]
	ldr r3, [r3, #0x18]
	bl sub_0204C040
	str r0, [r7, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r7, r4]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b60d0

	thumb_func_start ovy195_21b6138
ovy195_21b6138: ; 0x021B6138
	push {r3, r4, r5, lr}
	cmp r1, #6
	bge _021B615E
	add r4, sp, #0
	strh r2, [r4]
	mov r2, #0x53
	lsl r2, r2, #2
	strh r3, [r4, #2]
	add r5, r0, r2
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
_021B615E:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy195_21b6138

	thumb_func_start ovy195_21b6160
ovy195_21b6160: ; 0x021B6160
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	beq _021B618C
	add r0, r1, #0
	bl sub_02008BF4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ovy195_21b60d0
	mov r3, #1
	add r1, r4, #0
	sub r4, r3, r4
	sub r3, #0x31
	add r0, r5, #0
	mov r2, #0x10
	mul r3, r4
	bl ovy195_21b6138
_021B618C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6160

	thumb_func_start ovy195_21b6190
ovy195_21b6190: ; 0x021B6190
	push {r3, r4, r5, r6, r7, lr}
	lsl r5, r1, #2
	mov r1, #0x53
	lsl r1, r1, #2
	add r4, r0, r1
	ldr r0, [r4, r5]
	add r6, r2, #0
	cmp r0, #0
	beq _021B61C4
	add r7, sp, #0
	add r1, r7, #0
	mov r2, #1
	bl sub_0204C178
	lsl r2, r6, #0x10
	add r0, sp, #0
	mov r1, #2
	ldrsh r1, [r0, r1]
	asr r2, r2, #0x10
	add r1, r1, r2
	strh r1, [r0, #2]
	ldr r0, [r4, r5]
	add r1, r7, #0
	mov r2, #1
	bl sub_0204C140
_021B61C4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6190

	thumb_func_start ovy195_21b61c8
ovy195_21b61c8: ; 0x021B61C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _021B6206
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B61DE
	bl sub_0204C108
_021B61DE:
	mov r1, #0x15
	lsl r1, r1, #4
	mov r0, #0
	sub r2, r1, #4
_021B61E6:
	lsl r3, r0, #2
	add r6, r5, r3
	ldr r3, [r6, r1]
	add r0, r0, #1
	str r3, [r6, r2]
	cmp r0, #5
	blt _021B61E6
	mov r0, #0x16
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	bl ovy195_21b6160
_021B6206:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy195_21b61c8

	thumb_func_start ovy195_21b6208
ovy195_21b6208: ; 0x021B6208
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _021B6244
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B621E
	bl sub_0204C108
_021B621E:
	mov r1, #0x52
	lsl r1, r1, #2
	mov r0, #5
	add r2, r1, #4
_021B6226:
	lsl r3, r0, #2
	add r6, r5, r3
	ldr r3, [r6, r1]
	sub r0, r0, #1
	str r3, [r6, r2]
	cmp r0, #0
	bgt _021B6226
	mov r0, #0x53
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r5, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy195_21b6160
_021B6244:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6208

	thumb_func_start ovy195_21b6248
ovy195_21b6248: ; 0x021B6248
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
_021B6252:
	add r1, r4, r5
	bmi _021B6268
	add r0, r7, #0
	bl ovy195_21b3e08
	add r1, r0, #0
	beq _021B6268
	add r0, r6, #0
	add r2, r4, #0
	bl ovy195_21b6160
_021B6268:
	add r4, r4, #1
	cmp r4, #6
	blt _021B6252
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b6248

	thumb_func_start ovy195_21b6270
ovy195_21b6270: ; 0x021B6270
	push {r3, lr}
	cmp r1, #0
	bne _021B627A
	mov r0, #0
	pop {r3, pc}
_021B627A:
	sub r2, r2, #1
	cmp r1, r2
	bne _021B6284
	mov r0, #0x84
	pop {r3, pc}
_021B6284:
	mov r0, #0x84
	mul r0, r1
	add r1, r2, #0
	blx sub_0208D65C
	pop {r3, pc}
	thumb_func_end ovy195_21b6270

	thumb_func_start ovy195_21b6290
ovy195_21b6290: ; 0x021B6290
	push {r4, r5, r6, lr}
	sub r1, #0x1a
	add r0, r1, #0
	add r5, r2, #0
	blx sub_0208D374
	add r4, r0, #0
	ldr r6, _021B62E0 ; =0x43040000
	cmp r5, #3
	bgt _021B62A8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021B62A8:
	sub r0, r5, #2
	blx sub_0208D374
	add r1, r0, #0
	add r0, r6, #0
	blx sub_0208E3C8
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208E3C8
	add r4, r0, #0
	sub r0, r5, #2
	blx sub_0208D374
	add r1, r0, #0
	add r0, r4, #0
	blx sub_0208D174
	blo _021B62D8
	sub r0, r5, #3
	blx sub_0208D374
	add r4, r0, #0
_021B62D8:
	add r0, r4, #0
	blx sub_0208DA4C
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B62E0: .word 0x43040000
	thumb_func_end ovy195_21b6290

	thumb_func_start ovy195_21b62e4
ovy195_21b62e4: ; 0x021B62E4
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	lsl r7, r7, #6
	ldr r0, [r5, r7]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021B6318
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy195_21b6270
	add r0, #0x1a
	add r1, sp, #0
	strh r0, [r1, #2]
	ldr r0, [r5, r7]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
_021B6318:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b62e4

	thumb_func_start ovy195_21b631c
ovy195_21b631c: ; 0x021B631C
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #5
	add r5, r0, #0
	lsl r7, r7, #6
	ldr r0, [r5, r7]
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	cmp r0, #0
	beq _021B6352
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C178
	add r0, sp, #0
	strh r4, [r0, #2]
	ldr r0, [r5, r7]
	add r1, sp, #0
	mov r2, #1
	bl sub_0204C140
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ovy195_21b6290
	add r1, r0, #0
_021B6352:
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b631c

	thumb_func_start ovy195_21b6358
ovy195_21b6358: ; 0x021B6358
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0204C4A0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0x1a
	bls _021B6372
	mov r1, #0xb
_021B6372:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0204C488
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6358

	thumb_func_start ovy195_21b6380
ovy195_21b6380: ; 0x021B6380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0x80
	add r4, sp, #0xc
	strh r0, [r4]
	mov r6, #0x34
	strh r6, [r4, #2]
	mov r0, #0x1b
	strh r0, [r4, #4]
	mov r0, #2
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r7, #0
	add r0, r5, #0
	str r7, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x78]
	bl sub_0204C040
	mov r1, #0x34
	add r1, #0xf8
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x34
	add r0, #0xf8
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	mov r0, #0xb
	strh r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #6]
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x78]
	bl sub_0204C040
	mov r1, #0x34
	add r1, #0xfc
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0204C520
	mov r0, #0x34
	add r0, #0xfc
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0204C124
	strh r7, [r4, #8]
	ldr r0, _021B6428 ; =ovy195_21b6358
	str r5, [sp, #0x18]
	add r6, #0xfc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r6]
	add r1, sp, #0x14
	bl sub_0204C5B0
	mov r0, #0x1f
	bl sub_02046D38
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6428: .word ovy195_21b6358
	thumb_func_end ovy195_21b6380

	thumb_func_start ovy195_21b642c
ovy195_21b642c: ; 0x021B642C
	push {r3, r4, r5, lr}
	mov r5, #0x4b
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r4, r5]
	bl sub_0204C108
	add r0, r5, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0204C124
	add r0, r5, #4
	ldr r0, [r4, r0]
	bl sub_0204C108
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b642c

	thumb_func_start ovy195_21b6458
ovy195_21b6458: ; 0x021B6458
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r4, _021B64F4 ; =0x021B7A78
	add r5, r0, #0
	add r6, r1, #0
	add r3, sp, #0x10
	mov r2, #8
_021B6466:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021B6466
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	mov r4, #0x90
	bl sub_0204AA30
	ldr r1, [r5, #4]
	add r7, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r2, #0
	mov r3, #0
	str r1, [sp, #0xc]
	mov r1, #0xf
	bl sub_0204AFB0
	add r0, r7, #0
	bl sub_0204AB0C
	mov r0, #0x90
	add r0, #0xa0
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0204C520
	mov r0, #0x90
	add r0, #0xa0
	lsl r2, r6, #2
	add r1, sp, #0x10
	ldr r1, [r1, r2]
	ldr r0, [r5, r0]
	add r1, #0xb
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C488
	mov r0, #0x90
	add r0, #0xa0
	ldr r0, [r5, r0]
	mov r1, #4
	bl sub_0204C504
	add r4, #0x9c
	ldr r0, [r5, r4]
	mov r1, #0x1c
	mov r4, #0x1c
	bl sub_0204C488
	mov r0, #0
	bl sub_02045B7C
	mov r1, #0x1c
	add r1, #0xf4
	mov r0, #0
	str r0, [r5, r1]
	add r4, #0xf8
	str r0, [r5, r4]
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B64F4: .word 0x021B7A78
	thumb_func_end ovy195_21b6458

	thumb_func_start ovy195_21b64f8
ovy195_21b64f8: ; 0x021B64F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	mov r4, #0x90
	bl sub_0204AA30
	ldr r1, [r5, #4]
	mov r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	str r7, [sp, #4]
	add r1, r5, #0
	str r7, [sp, #8]
	add r1, #0xf4
	ldrh r1, [r1]
	mov r2, #2
	mov r3, #0
	str r1, [sp, #0xc]
	mov r1, #0xe
	add r6, r0, #0
	bl sub_0204AFB0
	ldr r0, [r5, #4]
	mov r1, #0xd
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	str r7, [sp, #8]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204AFB0
	ldr r0, [r5, #4]
	mov r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	add r0, r5, #0
	str r7, [sp, #8]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r2, #3
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0204AFB0
	add r0, r6, #0
	bl sub_0204AB0C
	add r0, r5, #0
	bl ovy195_21b6380
	mov r0, #2
	bl sub_02045B7C
	mov r0, #0
	bl sub_02045B7C
	mov r0, #3
	bl sub_02045B7C
	mov r0, #0x90
	add r0, #0x80
	str r7, [r5, r0]
	mov r0, #1
	add r4, #0x84
	str r0, [r5, r4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b64f8

	thumb_func_start ovy195_21b659c
ovy195_21b659c: ; 0x021B659C
	push {r3, r4, r5, lr}
	mov r4, #0x45
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B65C0
	sub r2, r4, #4
	ldr r2, [r5, r2]
	mov r0, #2
	mov r1, #3
	bl sub_02044CFC
	sub r0, r4, #4
	ldr r0, [r5, r0]
	add r1, r0, #1
	sub r0, r4, #4
	str r1, [r5, r0]
_021B65C0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b659c

	thumb_func_start ovy195_21b65c4
ovy195_21b65c4: ; 0x021B65C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r7, #0x53
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #2
_021B65D0:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021B65EA
	mov r1, #0
	bl sub_0204C124
	ldr r0, [r5, r7]
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021B65EA:
	add r4, r4, #1
	cmp r4, #6
	blt _021B65D0
	add r0, r6, #0
	bl ovy195_21b5e80
	add r0, r6, #0
	bl ovy195_21b5c0c
	add r0, r6, #0
	bl ovy195_21b642c
	add r0, r6, #0
	bl ovy195_21b5f5c
	add r0, r6, #0
	bl ovy195_21b5b04
	add r1, r6, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r0, #0x90
	mov r4, #0x90
	bl sub_0204AA30
	ldr r1, [r6, #4]
	mov r2, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	add r1, r6, #0
	add r1, #0xf4
	ldrh r1, [r1]
	mov r3, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	mov r1, #0xc
	bl sub_0204AFB0
	ldr r0, [r6]
	mov r1, #0x12
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xf4
	ldrh r0, [r0]
	mov r7, #4
	mov r2, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r3, #0
	mov r5, #0x12
	bl sub_0204AFB0
	add r7, #0xfc
	str r7, [sp]
	add r0, r6, #0
	str r7, [sp, #4]
	add r0, #0xf4
	ldrh r0, [r0]
	mov r1, #2
	mov r2, #5
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r3, #0
	bl sub_0204B124
	ldr r0, [sp, #0x10]
	bl sub_0204AB0C
	add r0, r6, #0
	bl ovy195_21b5934
	add r0, r6, #0
	mov r1, #0
	bl ovy195_21b58d4
	mov r0, #2
	mov r1, #0
	bl sub_02044C98
	mov r0, #0
	bl sub_02045B7C
	mov r0, #3
	mov r1, #0
	bl sub_02044C98
	add r5, #0xfe
	mov r0, #0
	str r0, [r6, r5]
	add r4, #0x84
	str r0, [r6, r4]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b65c4

	thumb_func_start ovy195_21b66b8
ovy195_21b66b8: ; 0x021B66B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B66CA
	bl sub_020504DC
	mov r0, #0
	str r0, [r4, #8]
_021B66CA:
	pop {r4, pc}
	thumb_func_end ovy195_21b66b8

	thumb_func_start ovy195_21b66cc
ovy195_21b66cc: ; 0x021B66CC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0xa9
	str r1, [sp]
	ldr r3, _021B67FC ; =0x021B7BB4
	mov r1, #0xd0
	mov r2, #1
	add r4, r0, #0
	bl sub_0203A1FC
	add r5, r0, #0
	add r0, #0xc8
	strh r4, [r0]
	add r0, r5, #0
	add r0, #0xc8
	ldrh r0, [r0]
	bl sub_02048080
	bl sub_020232D0
	add r0, r5, #0
	add r0, #0xc8
	ldrh r0, [r0]
	mov r2, #1
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xc8
	ldrh r0, [r0]
	bl sub_02021998
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0xf0
	mov r4, #0xf0
	bl sub_02048530
	add r1, r5, #0
	str r0, [r5, #0x1c]
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0xf0
	bl sub_02048530
	add r1, r5, #0
	str r0, [r5, #0x18]
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0xf0
	bl sub_02048530
	str r0, [r5, #0x20]
	add r0, r5, #0
	add r0, #0xc8
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	add r3, r5, #0
	str r0, [r5, #0x14]
	add r3, #0xc8
	lsl r2, r6, #0x10
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl sub_0204875C
	add r2, r5, #0
	str r0, [r5, #0xc]
	add r2, #0xc8
	ldrh r2, [r2]
	mov r0, #6
	mov r1, #0x40
	bl sub_020241E4
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r0, #0xc8
	ldrh r0, [r0]
	add r3, r5, #0
	add r3, #0xa4
	str r0, [sp]
	ldr r2, [r5, #0x14]
	ldr r3, [r3]
	mov r0, #5
	mov r1, #9
	bl sub_0202E168
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	add r3, r5, #0
	add r3, #0xc8
	ldrh r3, [r3]
	mov r0, #1
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	add r3, r5, #0
	str r0, [r5, #4]
	add r3, #0xc8
	ldrh r3, [r3]
	mov r0, #6
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	str r0, [r5]
	mov r6, #0x20
	add r0, r5, #0
	add r4, #0x70
	str r6, [sp]
	add r0, #0xc8
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r4, #0
	bl sub_0204B0B8
	add r0, r5, #0
	str r6, [sp]
	add r0, #0xc8
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r4, #0
	bl sub_0204B0B8
	add r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021B67FC: .word 0x021B7BB4
	thumb_func_end ovy195_21b66cc

	thumb_func_start ovy195_21b6800
ovy195_21b6800: ; 0x021B6800
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_0203A7F4
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_02021A3C
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6830
	bl sub_0202E37C
_021B6830:
	add r4, #0xcc
	ldr r0, [r4]
	cmp r0, #0
	beq _021B683C
	bl sub_02034220
_021B683C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6800

	thumb_func_start ovy195_21b6840
ovy195_21b6840: ; 0x021B6840
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #4]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r4]
	mov r0, #6
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r4, #0
	bl ovy195_21b66b8
	bl sub_020232D8
	ldr r0, [r4, #0xc]
	bl sub_020487D4
	ldr r0, [r4, #0x14]
	bl sub_02022DA8
	ldr r0, [r4, #0x18]
	bl sub_02048564
	ldr r0, [r4, #0x1c]
	bl sub_02048564
	ldr r0, [r4, #0x20]
	bl sub_02048564
	add r0, r4, #0
	bl ovy195_21b7414
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _021B68AC
	bl sub_020223CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9c
	str r1, [r0]
_021B68AC:
	ldr r0, [r4, #0x10]
	bl sub_02024274
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B68C8
	bl sub_0202E34C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
_021B68C8:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl sub_0202E1DC
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl sub_0203A83C
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_02021A18
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B68FA
	bl sub_02048210
_021B68FA:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6908
	bl sub_02048210
_021B6908:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6916
	bl sub_02048210
_021B6916:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6924
	bl sub_02048210
_021B6924:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6932
	bl sub_02048210
_021B6932:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6940
	bl sub_02048210
_021B6940:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _021B694E
	bl sub_02048210
_021B694E:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B6958
	bl sub_02048210
_021B6958:
	ldr r0, [r4, #0x68]
	cmp r0, #0
	beq _021B6962
	bl sub_02048210
_021B6962:
	mov r5, #0
_021B6964:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _021B6972
	bl sub_02048210
_021B6972:
	add r5, r5, #1
	cmp r5, #0xc
	blt _021B6964
	mov r5, #0
_021B697A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	beq _021B6988
	bl sub_02048210
_021B6988:
	add r5, r5, #1
	cmp r5, #6
	blt _021B697A
	bl sub_020480A8
	add r0, r4, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6840

	thumb_func_start ovy195_21b699c
ovy195_21b699c: ; 0x021B699C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	bl sub_02048838
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021B69C8
	mov r0, #4
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #0x13
	mov r3, #0x1e
	str r0, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x30]
_021B69C8:
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
	ldr r1, [r5, #0x14]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x1c]
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
	mov r0, #1
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b699c

	thumb_func_start ovy195_21b6a1c
ovy195_21b6a1c: ; 0x021B6A1C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	bl sub_02048838
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021B6A48
	mov r0, #2
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #0x15
	mov r3, #0x1e
	str r0, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x30]
_021B6A48:
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
	ldr r1, [r5, #0x14]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x18]
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
	mov r0, #1
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6a1c

	thumb_func_start ovy195_21b6a9c
ovy195_21b6a9c: ; 0x021B6A9C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _021B6ADA
	bl sub_020223B4
	cmp r0, #1
	beq _021B6AC6
	cmp r0, #2
	bne _021B6AD6
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl sub_020223CC
	mov r0, #0
	add r4, #0x9c
	str r0, [r4]
	b _021B6AD6
_021B6AC6:
	bl sub_0203DEFC
	cmp r0, #1
	bne _021B6AD6
	add r4, #0x9c
	ldr r0, [r4]
	bl sub_020223BC
_021B6AD6:
	mov r0, #0
	pop {r4, pc}
_021B6ADA:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6a9c

	thumb_func_start ovy195_21b6ae0
ovy195_21b6ae0: ; 0x021B6AE0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B6B06
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x30]
	bl sub_020484B4
	mov r0, #1
	bl sub_02045B7C
	ldr r0, [r4, #0x30]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x30]
_021B6B06:
	pop {r4, pc}
	thumb_func_end ovy195_21b6ae0

	thumb_func_start ovy195_21b6b08
ovy195_21b6b08: ; 0x021B6B08
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xc8
	ldrh r0, [r0]
	mov r2, #2
	str r0, [sp]
	add r0, sp, #0
	strb r2, [r0, #4]
	add r2, r4, #0
	add r2, #0xa8
	str r2, [sp, #8]
	cmp r1, #0
	beq _021B6B2A
	cmp r1, #1
	beq _021B6B32
	b _021B6B3E
_021B6B2A:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0xe
	b _021B6B38
_021B6B32:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
_021B6B38:
	strb r1, [r0, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
_021B6B3E:
	mov r1, #0xd
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r1, r4, #0
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xa8
	str r2, [r0]
	ldr r0, [r4, #0xc]
	mov r1, #0x19
	bl sub_02048838
	add r1, r4, #0
	add r1, #0xc8
	add r0, r4, #0
	ldr r5, _021B6BB4 ; =0x000039E0
	add r0, #0xac
	strh r5, [r0]
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	str r2, [r0]
	ldr r0, [r4, #0xc]
	mov r1, #0x1a
	bl sub_02048838
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xc0
	add r0, #0xb8
	strh r5, [r0]
	ldr r1, [r1]
	add r0, sp, #0
	bl sub_0202D974
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_02048564
	add r4, #0xb4
	ldr r0, [r4]
	bl sub_02048564
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021B6BB4: .word 0x000039E0
	thumb_func_end ovy195_21b6b08

	thumb_func_start sub_021B6BB8
sub_021B6BB8: ; 0x021B6BB8
	ldr r0, [r0, #8]
	ldr r3, _021B6BC0 ; =sub_020504F0
	bx r3
	nop
_021B6BC0: .word sub_020504F0
	thumb_func_end sub_021B6BB8

	thumb_func_start ovy195_21b6bc4
ovy195_21b6bc4: ; 0x021B6BC4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021B6BCC:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021B6BDC
	bl sub_02048210
	str r7, [r5, #0x38]
_021B6BDC:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B6BCC
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6bc4

	thumb_func_start ovy195_21b6bf0
ovy195_21b6bf0: ; 0x021B6BF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	add r1, r2, #0
	add r5, r0, #0
	add r2, r3, #0
	mov r4, #0
_021B6BFE:
	lsl r6, r4, #2
	add r0, r5, r6
	ldr r0, [r0, #0x38]
	cmp r0, #0
	bne _021B6C6E
	mov r0, #2
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	add r7, r5, #0
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r7, #0x38
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020480C0
	str r0, [r7, r6]
	add r6, r0, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #0xc]
	ldr r2, [r5, #0x18]
	bl sub_02048838
	add r0, r6, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #2
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #2
	bl sub_02021CFC
	add r0, r6, #0
	bl sub_02048244
	add r0, r6, #0
	bl sub_0204826C
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B6C6E:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B6BFE
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6bf0

	thumb_func_start ovy195_21b6c7c
ovy195_21b6c7c: ; 0x021B6C7C
	push {r4, lr}
	sub sp, #8
	mov r4, #0x14
	str r4, [sp]
	mov r4, #6
	str r4, [sp, #4]
	bl ovy195_21b6bf0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ovy195_21b6c7c

	thumb_func_start ovy195_21b6c90
ovy195_21b6c90: ; 0x021B6C90
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r4, [r0, #0x38]
	add r6, r1, #0
	cmp r4, #0
	beq _021B6CD2
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	add r1, r6, #0
	bl sub_02048838
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #2
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #2
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
_021B6CD2:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6c90

	thumb_func_start sub_021B6CD8
sub_021B6CD8: ; 0x021B6CD8
	ldr r3, _021B6CE0 ; =sub_02045B7C
	mov r0, #6
	bx r3
	nop
_021B6CE0: .word sub_02045B7C
	thumb_func_end sub_021B6CD8

	thumb_func_start ovy195_21b6ce4
ovy195_21b6ce4: ; 0x021B6CE4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	mov r7, #2
_021B6CEC:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021B6D0C
	bl sub_020484D4
	bl sub_02045B7C
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	bl sub_02024EEC
	ldr r0, [r5, #0x38]
	bl sub_020484B4
_021B6D0C:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B6CEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b6ce4

	thumb_func_start ovy195_21b6d14
ovy195_21b6d14: ; 0x021B6D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy195_21b6bc4
	mov r7, #0x10
	str r7, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	mov r3, #7
	bl ovy195_21b6bf0
	str r7, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	mov r3, #0xd
	bl ovy195_21b6bf0
	add r0, r5, #0
	bl sub_021B6CD8
	add r0, r5, #0
	bl ovy195_21b66b8
	add r3, r5, #0
	add r3, #0xc8
	ldrh r3, [r3]
	ldr r0, _021B6D6C ; =0x021B7AC0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205044C
	str r0, [r5, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6D6C: .word 0x021B7AC0
	thumb_func_end ovy195_21b6d14

	thumb_func_start ovy195_21b6d70
ovy195_21b6d70: ; 0x021B6D70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ovy195_21b6bc4
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl ovy195_21b6c7c
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r5, #0
	mov r1, #3
	mov r2, #3
	mov r3, #6
	bl ovy195_21b6c7c
	add r0, r5, #0
	mov r1, #0x17
	mov r2, #1
	mov r3, #0xb
	bl ovy195_21b6c7c
	add r0, r5, #0
	mov r1, #0x18
	mov r2, #1
	mov r3, #0x10
	bl ovy195_21b6c7c
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r1, _021B6E24 ; =0x021B7BA0
	lsl r2, r4, #1
	ldrh r1, [r1, r2]
	add r0, r5, #0
	mov r2, #0xd
	mov r3, #6
	bl ovy195_21b6c7c
	ldr r1, [sp, #0x18]
	str r0, [r5, #0x24]
	ldr r4, _021B6E28 ; =0x021B7BA8
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x10
	mov r3, #0xb
	bl ovy195_21b6c7c
	ldr r1, [sp, #0x1c]
	str r0, [r5, #0x28]
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x10
	mov r3, #0x10
	bl ovy195_21b6c7c
	str r0, [r5, #0x2c]
	add r0, r5, #0
	bl sub_021B6CD8
	add r0, r5, #0
	bl ovy195_21b66b8
	add r3, r5, #0
	add r3, #0xc8
	ldrh r3, [r3]
	ldr r0, _021B6E2C ; =0x021B7ACC
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205044C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6E24: .word 0x021B7BA0
_021B6E28: .word 0x021B7BA8
_021B6E2C: .word 0x021B7ACC
	thumb_func_end ovy195_21b6d70

	thumb_func_start sub_021B6E30
sub_021B6E30: ; 0x021B6E30
	lsl r2, r1, #1
	ldr r1, _021B6E3C ; =0x021B7BA0
	ldr r3, _021B6E40 ; =ovy195_21b6c90
	ldrh r1, [r1, r2]
	ldr r2, [r0, #0x24]
	bx r3
	.align 2, 0
_021B6E3C: .word 0x021B7BA0
_021B6E40: .word ovy195_21b6c90
	thumb_func_end sub_021B6E30

	thumb_func_start sub_021B6E44
sub_021B6E44: ; 0x021B6E44
	lsl r2, r1, #1
	ldr r1, _021B6E50 ; =0x021B7BA8
	ldr r3, _021B6E54 ; =ovy195_21b6c90
	ldrh r1, [r1, r2]
	ldr r2, [r0, #0x28]
	bx r3
	.align 2, 0
_021B6E50: .word 0x021B7BA8
_021B6E54: .word ovy195_21b6c90
	thumb_func_end sub_021B6E44

	thumb_func_start sub_021B6E58
sub_021B6E58: ; 0x021B6E58
	lsl r2, r1, #1
	ldr r1, _021B6E64 ; =0x021B7BA8
	ldr r3, _021B6E68 ; =ovy195_21b6c90
	ldrh r1, [r1, r2]
	ldr r2, [r0, #0x2c]
	bx r3
	.align 2, 0
_021B6E64: .word 0x021B7BA8
_021B6E68: .word ovy195_21b6c90
	thumb_func_end sub_021B6E58

	thumb_func_start sub_021B6E6C
sub_021B6E6C: ; 0x021B6E6C
	ldr r3, _021B6E70 ; =ovy195_21b66b8
	bx r3
	.align 2, 0
_021B6E70: .word ovy195_21b66b8
	thumb_func_end sub_021B6E6C

	thumb_func_start ovy195_21b6e74
ovy195_21b6e74: ; 0x021B6E74
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xa8
	str r2, [r0]
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl sub_02048838
	add r0, r5, #0
	ldr r1, _021B6F00 ; =0x000039E3
	add r0, #0xac
	strh r1, [r0]
	add r0, r5, #0
	mov r4, #0
	add r0, #0xb0
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	ldr r1, [r5, #0x14]
	mov r2, #0
	bl sub_02022888
	add r0, #0x20
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r2, r1, #4
	lsl r0, r2, #0x19
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r3, #0x10
	sub r2, r3, r2
	add r1, r5, #0
	lsl r2, r2, #0x18
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xc8
	ldrh r0, [r0]
	add r1, #0xa8
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r3, #0x15
	bl sub_0202E210
	add r5, #0xa8
	add r4, r0, #0
	ldr r0, [r5]
	bl sub_02048564
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021B6F00: .word 0x000039E3
	thumb_func_end ovy195_21b6e74

	thumb_func_start ovy195_21b6f04
ovy195_21b6f04: ; 0x021B6F04
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	bl sub_02048838
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _021B6F38
	mov r0, #3
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #0xd
	mov r3, #0xe
	str r0, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
_021B6F38:
	add r0, r5, #0
	add r0, #0x94
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #3
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #2
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy195_21b6f04

	thumb_func_start ovy195_21b6f78
ovy195_21b6f78: ; 0x021B6F78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02008C0C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02008C10
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02008C04
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0202B57C
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_02008C04
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0202B590
	ldr r1, [sp, #0xc]
	cmp r6, r1
	bne _021B6FE4
	cmp r7, r0
	bne _021B6FE4
	add r0, r4, #0
	bl sub_02008C0C
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_020245E0
	add r0, r4, #0
	bl sub_02008C0C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02008C10
	add r3, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r2, r6, #0
	b _021B6FF6
_021B6FE4:
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0
	bl sub_020245E0
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r2, #0
	mov r3, #0
_021B6FF6:
	bl sub_02024630
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x20]
	mov r1, #0x22
	bl sub_02048838
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x20]
	bl sub_02024920
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7034
	mov r0, #5
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #0xf
	mov r3, #0x1e
	str r0, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
_021B7034:
	add r0, r5, #0
	add r0, #0x84
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #5
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #5
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b6f78

	thumb_func_start ovy195_21b707c
ovy195_21b707c: ; 0x021B707C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021B70BC
	bl sub_020484F4
	mov r1, #0
	mov r4, #0
	bl sub_0204713C
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02048244
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_020484B4
	mov r0, #1
	bl sub_02045B7C
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_02048210
	add r5, #0x84
	str r4, [r5]
_021B70BC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b707c

	thumb_func_start ovy195_21b70c0
ovy195_21b70c0: ; 0x021B70C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r3, r2, #0
	add r4, r5, #0
	add r4, #0x6c
	lsl r6, r3, #2
	ldr r0, [r4, r6]
	add r7, r1, #0
	cmp r0, #0
	bne _021B70F6
	mov r0, #4
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	mul r2, r0
	add r2, r2, #1
	lsl r2, r2, #0x18
	mov r1, #6
	lsr r2, r2, #0x18
	mov r3, #0x18
	bl sub_020480C0
	str r0, [r4, r6]
_021B70F6:
	ldr r4, [r4, r6]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r0, [r5, #0x20]
	bl sub_02048570
	ldr r0, [r5, #0x18]
	bl sub_02048570
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r7, #0
	bl sub_020245A8
	add r0, r7, #0
	bl sub_02008BD4
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #1
	mov r3, #5
	bl sub_0202451C
	add r0, r7, #0
	bl sub_02008C0C
	add r2, r0, #0
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_020245E0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x20]
	mov r1, #0x1c
	bl sub_02048838
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x20]
	bl sub_02024920
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b70c0

	thumb_func_start ovy195_21b7188
ovy195_21b7188: ; 0x021B7188
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	mov r4, #0
	bl sub_020232E8
	mov r0, #0x14
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x1e
	mov r2, #0
	mov r3, #0
	bl ovy195_21b6bf0
_021B71B0:
	add r0, r6, #0
	add r1, r4, #0
	bl ovy195_21b3e08
	add r1, r0, #0
	beq _021B71C4
	add r0, r5, #0
	add r2, r4, #2
	bl ovy195_21b70c0
_021B71C4:
	add r4, r4, #1
	cmp r4, #3
	blt _021B71B0
	mov r0, #5
	bl sub_02045B7C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy195_21b7188

	thumb_func_start ovy195_21b71d4
ovy195_21b71d4: ; 0x021B71D4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl ovy195_21b3e08
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #5
	bl ovy195_21b70c0
	mov r0, #6
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b71d4

	thumb_func_start ovy195_21b71f4
ovy195_21b71f4: ; 0x021B71F4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	beq _021B7206
	bl sub_02048210
	mov r0, #0
	str r0, [r6, #0x6c]
_021B7206:
	mov r4, #1
_021B7208:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021B722A
	bl sub_020484EC
	add r1, r0, #0
	sub r1, r1, #6
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x6c]
	lsr r1, r1, #0x18
	bl sub_02048500
	ldr r0, [r5, #0x6c]
	bl sub_0204826C
_021B722A:
	add r4, r4, #1
	cmp r4, #6
	blt _021B7208
	mov r0, #6
	bl sub_02045B7C
	mov r2, #0
_021B7238:
	lsl r0, r2, #2
	add r1, r6, r0
	ldr r0, [r1, #0x70]
	add r2, r2, #1
	str r0, [r1, #0x6c]
	cmp r2, #5
	blt _021B7238
	mov r0, #0
	add r6, #0x80
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b71f4

	thumb_func_start ovy195_21b7250
ovy195_21b7250: ; 0x021B7250
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
_021B725A:
	add r1, r4, r5
	bmi _021B7270
	add r0, r7, #0
	bl ovy195_21b3e08
	add r1, r0, #0
	beq _021B7270
	add r0, r6, #0
	add r2, r4, #0
	bl ovy195_21b70c0
_021B7270:
	add r4, r4, #1
	cmp r4, #6
	blt _021B725A
	mov r0, #6
	bl sub_02045B7C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b7250

	thumb_func_start ovy195_21b7280
ovy195_21b7280: ; 0x021B7280
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl ovy195_21b3e08
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ovy195_21b70c0
	mov r0, #6
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b7280

	thumb_func_start ovy195_21b72a0
ovy195_21b72a0: ; 0x021B72A0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B72B8
	bl sub_02048210
	add r0, r6, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_021B72B8:
	mov r4, #0
_021B72BA:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021B72DC
	bl sub_020484EC
	add r1, r0, #0
	add r1, r1, #6
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x6c]
	lsr r1, r1, #0x18
	bl sub_02048500
	ldr r0, [r5, #0x6c]
	bl sub_0204826C
_021B72DC:
	add r4, r4, #1
	cmp r4, #6
	blt _021B72BA
	mov r0, #6
	bl sub_02045B7C
	mov r2, #5
_021B72EA:
	lsl r0, r2, #2
	add r1, r6, r0
	ldr r0, [r1, #0x68]
	sub r2, r2, #1
	str r0, [r1, #0x6c]
	cmp r2, #0
	bgt _021B72EA
	mov r0, #0
	str r0, [r6, #0x6c]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy195_21b72a0

	thumb_func_start ovy195_21b7300
ovy195_21b7300: ; 0x021B7300
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xc8
	ldrh r0, [r0]
	mov r2, #2
	str r0, [sp]
	add r0, sp, #0
	strb r2, [r0, #4]
	add r2, r5, #0
	add r2, #0xa8
	str r2, [sp, #8]
	cmp r1, #0
	beq _021B7322
	cmp r1, #1
	beq _021B732A
	b _021B7336
_021B7322:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0xe
	b _021B7330
_021B732A:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
_021B7330:
	strb r1, [r0, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
_021B7336:
	mov r1, #0xd
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r1, r5, #0
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xa8
	str r2, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #0x1b
	bl sub_02048838
	add r0, r5, #0
	add r1, r5, #0
	add r1, #0xc8
	ldr r4, _021B73BC ; =0x000039E0
	add r0, #0xac
	strh r4, [r0]
	add r0, r5, #0
	ldrh r1, [r1]
	mov r6, #0
	add r0, #0xb0
	str r6, [r0]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	str r2, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #0x21
	bl sub_02048838
	add r0, r5, #0
	add r0, #0xb8
	add r1, r5, #0
	strh r4, [r0]
	add r0, r5, #0
	add r1, #0xc0
	add r0, #0xbc
	str r6, [r0]
	ldr r1, [r1]
	add r0, sp, #0
	bl sub_0202D974
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_02048564
	add r5, #0xb4
	ldr r0, [r5]
	bl sub_02048564
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021B73BC: .word 0x000039E0
	thumb_func_end ovy195_21b7300

	thumb_func_start ovy195_21b73c0
ovy195_21b73c0: ; 0x021B73C0
	push {r3, lr}
	cmp r0, #0
	beq _021B73D0
	ldr r1, _021B73D4 ; =0x04000050
	mov r2, #0
	strh r2, [r1]
	bl sub_0202DA54
_021B73D0:
	pop {r3, pc}
	nop
_021B73D4: .word 0x04000050
	thumb_func_end ovy195_21b73c0

	thumb_func_start ovy195_21b73d8
ovy195_21b73d8: ; 0x021B73D8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #0
	bne _021B740E
	add r0, r1, #0
	bl sub_021B4F98
	mov r1, #8
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0xc8
	ldrh r1, [r1]
	add r2, r4, #0
	add r2, #0xa4
	str r1, [sp, #8]
	ldr r2, [r2]
	ldr r3, [r4, #0x14]
	mov r1, #0
	bl sub_02034168
	add r4, #0xcc
	str r0, [r4]
_021B740E:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b73d8

	thumb_func_start ovy195_21b7414
ovy195_21b7414: ; 0x021B7414
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #0
	beq _021B742A
	bl sub_02034264
	mov r0, #0
	add r4, #0xcc
	str r0, [r4]
_021B742A:
	pop {r4, pc}
	thumb_func_end ovy195_21b7414

	thumb_func_start ovy195_21b742c
ovy195_21b742c: ; 0x021B742C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021B74C4 ; =0x021B7AE8
	add r6, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7464
	mov r0, #5
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #0xf
	mov r3, #0x1e
	str r0, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1]
_021B7464:
	add r0, r5, #0
	add r0, #0x88
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r1, #0
	bl sub_020344B8
	add r0, r5, #0
	add r0, #0xcc
	mov r1, #0xf1
	ldr r0, [r0]
	lsl r1, r1, #6
	bl sub_020344C0
	add r0, sp, #0xc
	add r5, #0xcc
	str r0, [sp]
	ldr r0, [r5]
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_020342BC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021B74C4: .word 0x021B7AE8
	thumb_func_end ovy195_21b742c

	thumb_func_start ovy195_21b74c8
ovy195_21b74c8: ; 0x021B74C8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	bl sub_02048838
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bne _021B74F4
	mov r0, #2
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0xe
	str r0, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x68]
_021B74F4:
	ldr r4, [r5, #0x68]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #2
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #2
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r0, #1
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy195_21b74c8

	thumb_func_start ovy195_21b7538
ovy195_21b7538: ; 0x021B7538
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	add r1, #0xc8
	ldrh r1, [r1]
	mov r0, #0x64
	add r6, r2, #0
	bl sub_02048530
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xa8
	str r2, [r0]
	ldr r0, [r5, #0xc]
	mov r1, #0xf
	bl sub_02048838
	add r0, r5, #0
	ldr r1, _021B75D8 ; =0x000039E3
	add r0, #0xac
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
	mov r0, #0xc
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r7, #1
	add r0, r5, #0
	add r1, r5, #0
	str r7, [sp, #0xc]
	add r0, #0xc8
	ldrh r0, [r0]
	add r1, #0xa8
	mov r2, #0xa
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r3, #0x15
	bl sub_0202E210
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1]
	bl sub_0203D554
	cmp r0, #0
	bne _021B75B0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_0202E41C
_021B75B0:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl sub_02048564
	add r0, r5, #0
	bl ovy195_21b66b8
	add r3, r5, #0
	add r3, #0xc8
	ldrh r3, [r3]
	ldr r0, _021B75DC ; =0x021B7AB8
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205044C
	str r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B75D8: .word 0x000039E3
_021B75DC: .word 0x021B7AB8
	thumb_func_end ovy195_21b7538

	thumb_func_start sub_021B75E0
sub_021B75E0: ; 0x021B75E0
	add r0, #0xc4
	ldr r0, [r0]
	ldr r3, _021B75EC ; =sub_0202E430
	mov r1, #1
	bx r3
	nop
_021B75EC: .word sub_0202E430
	thumb_func_end sub_021B75E0

	thumb_func_start ovy195_21b75f0
ovy195_21b75f0: ; 0x021B75F0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0202E34C
	mov r0, #5
	bl sub_02045B7C
	mov r0, #0
	add r4, #0xc4
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b75f0

	thumb_func_start ovy195_21b760c
ovy195_21b760c: ; 0x021B760C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	bl sub_0202E438
	cmp r0, #0
	beq _021B7626
	add r0, r4, #0
	bl ovy195_21b75f0
	mov r0, #1
	pop {r4, pc}
_021B7626:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy195_21b760c

	thumb_func_start ovy195_21b762c
ovy195_21b762c: ; 0x021B762C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	mov r1, #0x28
	bl sub_02048838
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7662
	mov r0, #2
	str r0, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r0, #1
	mov r1, #0x15
	mov r3, #0xa
	str r0, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1]
_021B7662:
	add r0, r5, #0
	add r0, #0x8c
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #0xe
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #3
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #0
	mov r7, #3
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r6, #0
	mov r3, #5
	bl sub_0202451C
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x20]
	mov r1, #0x24
	bl sub_02048838
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x20]
	bl sub_02024920
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021B76EA
	str r7, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #6
	mov r3, #0xa
	str r4, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
_021B76EA:
	add r0, r5, #0
	add r0, #0x90
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #5
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy195_21b762c

	thumb_func_start ovy195_21b772c
ovy195_21b772c: ; 0x021B772C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r2, r1, #0
	mov r1, #0
	bl sub_020245A8
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x20]
	mov r1, #0x25
	bl sub_02048838
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x20]
	bl sub_02024920
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _021B7774
	mov r0, #3
	str r0, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	mov r0, #1
	mov r2, #0xa
	mov r3, #0xa
	str r0, [sp, #8]
	bl sub_020480C0
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1]
_021B7774:
	add r0, r5, #0
	add r0, #0x98
	ldr r4, [r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x14]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x18]
	mov r1, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy195_21b772c

	thumb_func_start ovy195_21b77b4
ovy195_21b77b4: ; 0x021B77B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r1, #0
	bl ovy195_21b772c
	add r0, r5, #0
	mov r1, #0x24
	add r2, r6, #0
	bl ovy195_21b762c
	add r0, r5, #0
	mov r1, #0x29
	bl ovy195_21b6f04
	add r0, r5, #0
	add r1, r4, #0
	bl ovy195_21b6f78
	add r0, r5, #0
	mov r1, #0x11
	bl ovy195_21b6a1c
	pop {r4, r5, r6, pc}
	thumb_func_end ovy195_21b77b4

	thumb_func_start ovy195_21b77e4
ovy195_21b77e4: ; 0x021B77E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x68]
	cmp r0, #0
	beq _021B780C
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r6, #0x68]
	bl sub_020484B4
	mov r0, #1
	bl sub_02045B7C
	ldr r0, [r6, #0x68]
	bl sub_02048210
	mov r0, #0
	str r0, [r6, #0x68]
_021B780C:
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B7822
	bl sub_0202E34C
	add r0, r6, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0]
_021B7822:
	mov r4, #0
	add r7, r4, #0
_021B7826:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021B783C
	bl sub_020484B4
	ldr r0, [r5, #0x6c]
	bl sub_02048210
	str r7, [r5, #0x6c]
_021B783C:
	add r4, r4, #1
	cmp r4, #6
	blt _021B7826
	add r0, r6, #0
	bl ovy195_21b6ce4
	add r0, r6, #0
	bl ovy195_21b6bc4
	mov r0, #0x20
	mov r3, #0x16
	add r6, #0xc8
	str r0, [sp]
	ldrh r0, [r6]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	lsl r3, r3, #4
	bl sub_0204B0B8
	mov r0, #5
	bl sub_02045B7C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy195_21b77e4
_021B7870:
	.byte 0x1A, 0x9E, 0xEC, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xA0, 0xC0, 0x50, 0xB0, 0xFF, 0x00, 0x00, 0x00
	.byte 0x18, 0x48, 0x00, 0xEC, 0x48, 0x78, 0x00, 0xEC, 0x78, 0xA8, 0x00, 0xEC, 0xA8, 0xC0, 0x40, 0xC0
	.byte 0xFF, 0x00, 0x00, 0x00, 0x8D, 0x2F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0xB9, 0x2F, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0xE9, 0x2F, 0x1B, 0x02, 0x00, 0x00, 0x00, 0x00, 0x19, 0x30, 0x1B, 0x02
	.byte 0x6D, 0x30, 0x1B, 0x02, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0xFD, 0x4A, 0x1B, 0x02
	.byte 0x11, 0x4C, 0x1B, 0x02, 0xCD, 0x4C, 0x1B, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x0A, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0xFA, 0x00, 0xFA, 0x00, 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x60, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x64, 0x00
	.byte 0x64, 0x00, 0x64, 0x00, 0x10, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0xE8, 0x00, 0xA8, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x1A, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x1C, 0x04, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x06, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0xA0, 0xC0, 0x50, 0xB0, 0xFF, 0x00, 0x00, 0x00
	.byte 0x38, 0x50, 0x40, 0xC0, 0x68, 0x80, 0x40, 0xC0, 0xFF, 0x00, 0x00, 0x00, 0x2B, 0x45, 0x53, 0x6D
	.byte 0x2B, 0x45, 0xE3, 0xFD, 0x53, 0x6D, 0x6B, 0x85, 0x53, 0x6D, 0xE3, 0xFD, 0x7B, 0x95, 0x6B, 0x85
	.byte 0x7B, 0x95, 0xE3, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x70, 0x31, 0x74, 0x79, 0x6C, 0x76, 0x6D, 0x79, 0x66, 0x72, 0x72, 0x6D, 0x64, 0x62, 0x70, 0x32
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x74, 0x79, 0x3D, 0x25, 0x64, 0x20, 0x41, 0x6E
	.byte 0x64, 0x20, 0x64, 0x62, 0x3D, 0x25, 0x64, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x80, 0x40, 0x1D, 0x05, 0x80, 0x70, 0x1D
	.byte 0x06, 0xA8, 0x38, 0x1E, 0x07, 0xA8, 0x60, 0x1F, 0x07, 0xA8, 0x88, 0x1F, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x80, 0x30, 0x20, 0x08, 0x80, 0x60, 0x20, 0x08, 0x80, 0x90, 0x20, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x67, 0x74, 0x73, 0x6E, 0x65, 0x67, 0x6F, 0x5F, 0x64, 0x69, 0x73, 0x70, 0x2E, 0x63, 0x00, 0x00
	.byte 0x07, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x0C, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x67, 0x74, 0x73, 0x6E, 0x65, 0x67, 0x6F, 0x5F, 0x6D, 0x65, 0x73, 0x73
	.byte 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021B7870
