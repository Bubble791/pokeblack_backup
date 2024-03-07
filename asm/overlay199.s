    .include "macros/function.inc"
	.include "overlay199.inc"
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

	thumb_func_start ovy199_21b2f8c
ovy199_21b2f8c: ; 0x021B2F8C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xac
	ldr r4, _021B30B0 ; =0x021B9608
	add r3, sp, #0x8c
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
	mov r5, #0
	bl sub_0204476C
	mov r0, #0
	bl sub_02045708
	mov r0, #0
	bl sub_02044F90
	mov r0, #0
	mov r1, #0
	bl sub_02044BD8
	mov r0, #0
	mov r1, #1
	mov r4, #1
	bl sub_02044C98
	ldr r6, _021B30B4 ; =0x021B9628
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
	mov r1, #1
	bl sub_02044C98
	mov r0, #4
	bl sub_02044F90
	ldr r6, _021B30B8 ; =0x021B9648
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
	mov r0, #5
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl sub_02045118
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_02045604
	add r0, r6, #0
	bl sub_02044F90
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02044C98
	ldr r6, _021B30BC ; =0x021B9668
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
	add r2, r5, #0
	bl sub_0204476C
	mov r0, #6
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #6
	bl sub_02044F90
	ldr r6, _021B30C0 ; =0x021B9688
	add r3, sp, #0xc
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
	mov r0, #7
	add r2, r5, #0
	bl sub_0204476C
	mov r0, #7
	add r1, r4, #0
	bl sub_02044C98
	mov r0, #7
	bl sub_02044F90
	add sp, #0xac
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B30B0: .word 0x021B9608
_021B30B4: .word 0x021B9628
_021B30B8: .word 0x021B9648
_021B30BC: .word 0x021B9668
_021B30C0: .word 0x021B9688
	thumb_func_end ovy199_21b2f8c

	thumb_func_start ovy199_21b30c4
ovy199_21b30c4: ; 0x021B30C4
	push {r3, r4, r5, lr}
	mov r4, #0xa2
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B30DA
	bl sub_0203580C
	mov r0, #0
	str r0, [r5, r4]
_021B30DA:
	ldrh r0, [r5, #0xc]
	mov r4, #0x23
	lsl r4, r4, #4
	add r1, r4, #0
	str r0, [sp]
	sub r1, #0xc
	ldr r0, [r5, r4]
	ldr r1, [r5, r1]
	mov r2, #0xf
	mov r3, #0x10
	bl sub_02035660
	add r4, #0x58
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b30c4

	thumb_func_start ovy199_21b30f8
ovy199_21b30f8: ; 0x021B30F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r0, #0
	mov ip, r0
	add r0, r2, #0
	str r1, [sp, #4]
	mov lr, r2
	cmp r0, #0
	ble _021B317A
_021B310C:
	mov r0, ip
	lsl r1, r0, #5
	ldr r0, [sp]
	mov r4, #0
	add r6, r0, r1
	mov r0, #0x3e
	lsl r7, r0, #9
_021B311A:
	lsl r3, r4, #1
	ldrh r0, [r6, r3]
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r1, #0x3e
	lsl r1, r1, #4
	and r1, r0
	and r0, r7
	lsl r0, r0, #6
	lsr r5, r0, #0x10
	ldr r0, [sp, #4]
	lsl r1, r1, #0xb
	ldrh r0, [r0, r3]
	lsr r1, r1, #0x10
	add r2, r2, r0
	add r1, r1, r0
	lsl r2, r2, #0x10
	add r0, r5, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	cmp r2, #0x1f
	bls _021B3152
	mov r2, #0x1f
_021B3152:
	cmp r1, #0x1f
	bls _021B3158
	mov r1, #0x1f
_021B3158:
	cmp r0, #0x1f
	bls _021B315E
	mov r0, #0x1f
_021B315E:
	lsl r1, r1, #5
	lsl r0, r0, #0xa
	add r1, r2, r1
	add r0, r0, r1
	add r4, r4, #1
	strh r0, [r6, r3]
	cmp r4, #0x10
	blt _021B311A
	mov r0, ip
	add r1, r0, #1
	mov r0, lr
	mov ip, r1
	cmp r1, r0
	blt _021B310C
_021B317A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b30f8

	thumb_func_start ovy199_21b3180
ovy199_21b3180: ; 0x021B3180
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xa3
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #6
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021B31AE
	cmp r0, #3
	bne _021B31C4
_021B31AE:
	bl sub_02042788
	cmp r0, #0
	beq _021B31C4
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02016B20
	bl sub_0202BD80
_021B31C4:
	ldr r1, _021B31D4 ; =ovy199_21b37f8
	ldr r2, _021B31D8 ; =0x000001AA
	add r0, r4, #0
	bl sub_021B2F84
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B31D4: .word ovy199_21b37f8
_021B31D8: .word 0x000001AA
	thumb_func_end ovy199_21b3180

	thumb_func_start ovy199_21b31dc
ovy199_21b31dc: ; 0x021B31DC
	push {r3, r4, r5, lr}
	mov r4, #0x8e
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B322A
	ldr r0, [r5, r4]
	bl sub_0202DC00
	cmp r0, #0
	bne _021B3200
	add r0, r5, #0
	ldr r1, _021B322C ; =ovy199_21b3cfc
	sub r4, #0x82
	b _021B3210
_021B3200:
	mov r0, #5
	bl sub_02045738
	mov r0, #0
	str r0, [r5, #8]
	ldr r1, _021B3230 ; =ovy199_21b3748
	add r0, r5, #0
	sub r4, #0x7d
_021B3210:
	add r2, r4, #0
	bl sub_021B2F84
	mov r4, #0x8e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	bl sub_0202DA54
	mov r1, #0
	add r0, r5, #0
	str r1, [r5, r4]
	bl ovy199_21b3a84
_021B322A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B322C: .word ovy199_21b3cfc
_021B3230: .word ovy199_21b3748
	thumb_func_end ovy199_21b31dc

	thumb_func_start ovy199_21b3234
ovy199_21b3234: ; 0x021B3234
	push {r4, lr}
	add r4, r0, #0
	bl ovy199_21b3bc0
	cmp r0, #0
	beq _021B3250
	add r0, r4, #0
	bl ovy199_21b3ae8
	ldr r1, _021B3254 ; =ovy199_21b31dc
	ldr r2, _021B3258 ; =0x000001C9
	add r0, r4, #0
	bl sub_021B2F84
_021B3250:
	pop {r4, pc}
	nop
_021B3254: .word ovy199_21b31dc
_021B3258: .word 0x000001C9
	thumb_func_end ovy199_21b3234

	thumb_func_start ovy199_21b325c
ovy199_21b325c: ; 0x021B325C
	push {r4, r5, r6, lr}
	mov r4, #0x27
	add r5, r0, #0
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r1, r0]
	bl sub_0204C5BC
	ldr r0, [r5, r4]
	mov r6, #0
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0204C520
	ldr r0, [r5, #8]
	cmp r0, #3
	bne _021B32F4
	add r0, r4, #0
	sub r0, #0x4c
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B32A0
	bl sub_02048210
	sub r4, #0x4c
	str r6, [r5, r4]
_021B32A0:
	bl OS_IsRunOnTwl
	cmp r0, #0
	beq _021B32D0
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x38]
	mov r1, #0x20
	bl sub_02048838
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0
	bl ovy199_21b3c34
	add r0, r5, #0
	mov r1, #1
	bl ovy199_21b3a84
	ldr r1, _021B3318 ; =ovy199_21b3840
	ldr r2, _021B331C ; =0x000001DF
	add r0, r5, #0
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
_021B32D0:
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x38]
	mov r1, #7
	bl sub_02048838
	add r0, r5, #0
	bl sub_021B3CF0
	add r0, r5, #0
	mov r1, #1
	bl ovy199_21b3a84
	ldr r1, _021B3320 ; =ovy199_21b3234
	ldr r2, _021B3324 ; =0x000001E6
	add r0, r5, #0
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
_021B32F4:
	sub r0, r0, #2
	cmp r0, #1
	bhi _021B3308
	sub r4, #0x7e
	ldr r1, _021B3328 ; =ovy199_21b3cfc
	add r0, r5, #0
	add r2, r4, #0
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
_021B3308:
	sub r4, #0x7b
	ldr r1, _021B332C ; =ovy199_21b3180
	add r0, r5, #0
	add r2, r4, #0
	bl sub_021B2F84
	pop {r4, r5, r6, pc}
	nop
_021B3318: .word ovy199_21b3840
_021B331C: .word 0x000001DF
_021B3320: .word ovy199_21b3234
_021B3324: .word 0x000001E6
_021B3328: .word ovy199_21b3cfc
_021B332C: .word ovy199_21b3180
	thumb_func_end ovy199_21b325c
_021B3330:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start ovy199_21b3334
ovy199_21b3334: ; 0x021B3334
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	mov r1, #0x97
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc]
	add r5, r2, #0
	lsl r1, r1, #2
	str r3, [sp, #0x14]
	str r0, [r5, r1]
	bl sub_020232D8
	mov r7, #0
	add r4, r7, #0
_021B3358:
	lsl r0, r7, #2
	add r6, r5, r0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021B3374
	bl sub_020484B4
	ldr r0, [r6, #0x10]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r6, #0x10]
	bl sub_02048210
_021B3374:
	add r7, r7, #1
	str r4, [r6, #0x10]
	cmp r7, #4
	blt _021B3358
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5, #0xc]
	mov r3, #4
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	add r3, #0xfc
	bl sub_0204B0B8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _021B3458
_021B3398:
	ldr r0, [sp, #0x14]
	lsl r2, r4, #4
	add r3, r0, r2
	ldr r0, [r3, #0xc]
	lsl r6, r4, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	add r7, r5, r6
	ldr r1, [r1, r2]
	ldr r2, [r3, #4]
	ldr r3, [r3, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	mov r0, #7
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020480C0
	str r0, [r7, #0x10]
	bl sub_020484F4
	mov r1, #0
	bl sub_0204713C
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [r1, r6]
	ldr r2, [r5, #0x38]
	bl sub_02048838
	mov r0, #0xf
	mov r1, #2
	mov r2, #0
	bl sub_020232E8
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021B3408
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x30]
	mov r2, #0
	bl sub_02022888
	ldr r1, [sp, #0x30]
	lsr r0, r0, #1
	ldr r1, [r1, r6]
	sub r0, r1, r0
	b _021B340A
_021B3408:
	mov r0, #0
_021B340A:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021B3424
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x30]
	bl sub_020229B0
	ldr r1, [sp, #0x34]
	lsr r0, r0, #1
	ldr r1, [r1, r6]
	sub r7, r1, r0
	b _021B3426
_021B3424:
	mov r7, #0
_021B3426:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x10]
	bl sub_020484F4
	ldr r1, [r5, #0x30]
	lsl r2, r7, #0x10
	str r1, [sp]
	ldr r1, [sp, #0x18]
	ldr r3, [r5, #0x38]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_02021CFC
	ldr r0, [r6, #0x10]
	bl sub_02048244
	ldr r0, [r6, #0x10]
	bl sub_0204826C
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blt _021B3398
_021B3458:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021B3462
	bl sub_020504DC
_021B3462:
	mov r0, #0
	str r0, [r5, #0x20]
	mov r0, #7
	bl sub_02044F90
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b3334

	thumb_func_start ovy199_21b3470
ovy199_21b3470: ; 0x021B3470
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	cmp r0, #0
	beq _021B347E
	bl sub_020504DC
_021B347E:
	mov r4, #0
	str r4, [r6, #0x20]
	add r7, r4, #0
_021B3484:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021B34A6
	bl sub_020484B4
	mov r0, #5
	bl sub_02045B7C
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r5, #0x10]
	bl sub_02048210
_021B34A6:
	add r4, r4, #1
	str r7, [r5, #0x10]
	cmp r4, #4
	blt _021B3484
	mov r0, #0x97
	lsl r0, r0, #2
	str r7, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b3470

	thumb_func_start ovy199_21b34b8
ovy199_21b34b8: ; 0x021B34B8
	push {r3, lr}
	cmp r1, #0
	bne _021B34CA
	ldr r3, [r2, #4]
	cmp r3, #0
	beq _021B34CA
	add r1, r2, #0
	blx r3
	cmp r0, #0
_021B34CA:
	pop {r3, pc}
	thumb_func_end ovy199_21b34b8

	thumb_func_start ovy199_21b34cc
ovy199_21b34cc: ; 0x021B34CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	ldr r0, _021B35B8 ; =0x021B95B0
	add r7, sp, #0x28
	ldrb r1, [r0]
	mov r4, #0
	strb r1, [r7, #0xe]
	ldrb r1, [r0, #1]
	strb r1, [r7, #0xf]
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x10]
	ldr r0, _021B35BC ; =0x021B95AC
	ldrb r1, [r0]
	strb r1, [r7, #0xb]
	ldrb r1, [r0, #1]
	strb r1, [r7, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r7, #0xd]
	ldr r0, _021B35C0 ; =0x021B95B4
	ldrb r1, [r0]
	strb r1, [r7, #8]
	ldrb r1, [r0, #1]
	strb r1, [r7, #9]
	ldrb r0, [r0, #2]
	strb r0, [r7, #0xa]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0x24]
	sub r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0x20]
	sub r0, #0x1c
	str r0, [sp, #0x20]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0x1c]
	sub r0, #0x14
	str r0, [sp, #0x1c]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	sub r0, #0xc
	str r0, [sp, #0x18]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	sub r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	sub r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #0xab
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	sub r0, #0xc
	str r0, [sp, #0xc]
_021B3546:
	add r0, sp, #0x34
	add r0, #2
	ldrb r0, [r0, r4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	strh r0, [r7]
	add r0, sp, #0x30
	add r0, #3
	ldrb r0, [r0, r4]
	ldr r3, [sp, #0x1c]
	strh r0, [r7, #2]
	add r0, sp, #0x30
	ldrb r0, [r0, r4]
	strh r0, [r7, #4]
	mov r0, #0
	strb r0, [r7, #6]
	mov r0, #2
	strb r0, [r7, #7]
	lsl r0, r4, #2
	add r6, r5, r0
	add r0, sp, #0x28
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, #0xc]
	str r0, [sp, #8]
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	bl sub_0204C040
	ldr r1, [sp, #0x18]
	str r0, [r6, r1]
	ldr r0, [sp, #0x14]
	mov r1, #0
	ldr r0, [r6, r0]
	bl sub_0204C520
	ldr r0, [sp, #0x10]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C124
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r6, r0]
	bl sub_0204C318
	add r4, r4, #1
	cmp r4, #3
	blt _021B3546
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021B35B8: .word 0x021B95B0
_021B35BC: .word 0x021B95AC
_021B35C0: .word 0x021B95B4
	thumb_func_end ovy199_21b34cc

	thumb_func_start ovy199_21b35c4
ovy199_21b35c4: ; 0x021B35C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r4, #0x4b
	lsl r4, r4, #2
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	bl sub_02048530
	str r0, [r5, #0x38]
	ldrh r0, [r5, #0xc]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	mov r6, #0
	bl sub_02022D58
	str r0, [r5, #0x30]
	ldrh r3, [r5, #0xc]
	mov r0, #0
	mov r1, #2
	mov r2, #0x2c
	bl sub_0204875C
	add r4, #0x8b
	str r0, [r5, #0x24]
	ldrh r3, [r5, #0xc]
	mov r0, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_0204875C
	str r0, [r5, #0x28]
	ldrh r1, [r5, #0xc]
	mov r0, #0x1d
	bl sub_0204AA30
	str r6, [sp]
	ldrh r1, [r5, #0xc]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #1
	add r4, r0, #0
	bl sub_0204B0D4
	str r6, [sp]
	ldrh r0, [r5, #0xc]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B0D4
	ldrh r3, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x14
	bl sub_0204B37C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r1, #0x44
	mov r2, #0xe0
	mov r7, #0xe0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x14]
	mov r1, #0xe0
	add r1, #0x44
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	mov r2, #0xe0
	blx MI_CpuCopy8
	add r0, r7, #0
	add r0, #0x44
	ldr r1, _021B3744 ; =0x021B9990
	add r0, r5, r0
	mov r2, #7
	bl ovy199_21b30f8
	ldr r0, [sp, #0x10]
	bl sub_0203A24C
	str r6, [sp]
	ldrh r0, [r5, #0xc]
	mov r1, #4
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204AE3C
	str r0, [r5, #0x40]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r1, #9
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204AFB0
	ldr r0, [r5, #0x40]
	mov r1, #0xe
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, #6
	add r3, r6, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	ldrh r3, [r5, #0xc]
	mov r0, #5
	mov r1, #0xc
	add r2, r6, #0
	bl sub_02024D20
	str r0, [r5, #0x3c]
	mov r0, #0x20
	str r0, [sp]
	ldrh r0, [r5, #0xc]
	add r7, #0xc0
	mov r1, #5
	str r0, [sp, #4]
	mov r0, #0x17
	mov r2, #4
	add r3, r7, #0
	bl sub_0204B0B8
	ldrh r1, [r5, #0xc]
	mov r0, #0x1d
	bl sub_0204AA30
	ldrh r1, [r5, #0xc]
	add r2, r6, #0
	mov r3, #1
	str r1, [sp]
	mov r1, #5
	add r4, r0, #0
	bl sub_0204B81C
	mov r7, #0xa5
	lsl r7, r7, #2
	str r0, [r5, r7]
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	ldrh r0, [r5, #0xc]
	mov r1, #3
	mov r2, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r6, #0
	bl sub_0204BBB8
	sub r1, r7, #4
	str r0, [r5, r1]
	ldrh r3, [r5, #0xc]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x10
	bl sub_0204BDE0
	add r1, r7, #4
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_0204AB0C
	add r0, r5, #0
	bl ovy199_21b34cc
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B3744: .word 0x021B9990
	thumb_func_end ovy199_21b35c4

	thumb_func_start ovy199_21b3748
ovy199_21b3748: ; 0x021B3748
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	ldr r0, _021B3788 ; =0x021B95B8
	ldr r3, _021B378C ; =0x021B9980
	str r0, [sp]
	ldr r0, _021B3790 ; =0x021B95BC
	add r2, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	bl ovy199_21b3334
	ldrh r3, [r4, #0xc]
	ldr r0, _021B3794 ; =0x021B95C0
	ldr r1, _021B3798 ; =ovy199_21b34b8
	add r2, r4, #0
	bl sub_0205044C
	str r0, [r4, #0x20]
	ldr r0, _021B379C ; =ovy199_21b38ec
	ldr r1, _021B37A0 ; =ovy199_21b39e4
	str r0, [r4, #4]
	ldr r2, _021B37A4 ; =0x00000321
	add r0, r4, #0
	bl sub_021B2F84
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B3788: .word 0x021B95B8
_021B378C: .word 0x021B9980
_021B3790: .word 0x021B95BC
_021B3794: .word 0x021B95C0
_021B3798: .word ovy199_21b34b8
_021B379C: .word ovy199_21b38ec
_021B37A0: .word ovy199_21b39e4
_021B37A4: .word 0x00000321
	thumb_func_end ovy199_21b3748

	thumb_func_start ovy199_21b37a8
ovy199_21b37a8: ; 0x021B37A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020232D8
	add r0, r4, #0
	bl ovy199_21b3470
	mov r0, #5
	mov r1, #1
	mov r2, #0
	bl sub_02045264
	ldr r2, [r4, #0x3c]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	mov r0, #5
	bl sub_02044B84
	mov r0, #4
	bl sub_02044B84
	ldr r0, [r4, #0x24]
	bl sub_020487D4
	ldr r0, [r4, #0x28]
	bl sub_020487D4
	ldr r0, [r4, #0x30]
	bl sub_02022DA8
	ldr r0, [r4, #0x38]
	bl sub_02048564
	pop {r4, pc}
	thumb_func_end ovy199_21b37a8

	thumb_func_start ovy199_21b37f8
ovy199_21b37f8: ; 0x021B37F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B3838
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021B380E
	cmp r0, #3
	bne _021B382E
_021B380E:
	mov r5, #0x99
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02016B20
	bl sub_0202BDD4
	cmp r0, #0
	bne _021B3838
	add r5, #0xe1
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_021B2F84
	pop {r3, r4, r5, pc}
_021B382E:
	ldr r2, _021B383C ; =0x00000349
	add r0, r4, #0
	mov r1, #0
	bl sub_021B2F84
_021B3838:
	pop {r3, r4, r5, pc}
	nop
_021B383C: .word 0x00000349
	thumb_func_end ovy199_21b37f8

	thumb_func_start ovy199_21b3840
ovy199_21b3840: ; 0x021B3840
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy199_21b3bc0
	cmp r0, #0
	beq _021B387C
	bl sub_0203DA48
	cmp r0, #0
	beq _021B387C
	add r0, r4, #0
	bl ovy199_21b3ba8
	mov r5, #0x9f
	mov r0, #0
	lsl r5, r5, #2
	str r0, [r4, r5]
	ldr r0, _021B3880 ; =0x0000073A
	bl sub_02006254
	add r0, r4, #0
	mov r1, #0
	bl ovy199_21b3a84
	add r5, #0xe4
	ldr r1, _021B3884 ; =ovy199_21b3748
	add r0, r4, #0
	add r2, r5, #0
	bl sub_021B2F84
_021B387C:
	pop {r3, r4, r5, pc}
	nop
_021B3880: .word 0x0000073A
_021B3884: .word ovy199_21b3748
	thumb_func_end ovy199_21b3840

	thumb_func_start ovy199_21b3888
ovy199_21b3888: ; 0x021B3888
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0x27
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	ldr r0, _021B38E0 ; =ovy199_21b325c
	str r5, [sp, #4]
	lsl r4, r4, #4
	str r0, [sp, #8]
	ldr r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, r4]
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r4, #0
	add r0, #0x30
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl sub_0204C5B0
	ldr r0, [r5, r4]
	add r4, #0x30
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r4]
	bl sub_0204C56C
	ldr r1, _021B38E4 ; =0x021B3331
	ldr r2, _021B38E8 ; =0x00000376
	add r0, r5, #0
	bl sub_021B2F84
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021B38E0: .word ovy199_21b325c
_021B38E4: .word 0x021B3331
_021B38E8: .word 0x00000376
	thumb_func_end ovy199_21b3888

	thumb_func_start ovy199_21b38ec
ovy199_21b38ec: ; 0x021B38EC
	push {r3, r4, r5, lr}
	mov r5, #0x27
	add r4, r1, #0
	lsl r5, r5, #4
	str r0, [r4, r5]
	cmp r0, #0
	beq _021B3904
	cmp r0, #1
	beq _021B3924
	cmp r0, #2
	beq _021B3936
	b _021B394A
_021B3904:
	ldr r0, _021B3950 ; =0x0000073A
	bl sub_02006254
	add r5, #0x30
	ldr r0, [r4, r5]
	mov r1, #0xe
	bl sub_0204C488
	ldr r1, _021B3954 ; =ovy199_21b3888
	ldr r2, _021B3958 ; =0x00000389
	add r0, r4, #0
	bl sub_021B2F84
	mov r0, #2
	str r0, [r4, #8]
	b _021B394A
_021B3924:
	ldr r0, _021B3950 ; =0x0000073A
	bl sub_02006254
	mov r0, #3
	str r0, [r4, #8]
	add r0, r4, #0
	ldr r1, _021B3954 ; =ovy199_21b3888
	ldr r2, _021B395C ; =0x00000393
	b _021B3946
_021B3936:
	ldr r0, _021B3960 ; =0x0000073B
	bl sub_02006254
	mov r0, #0
	str r0, [r4, #8]
	ldr r1, _021B3954 ; =ovy199_21b3888
	ldr r2, _021B3964 ; =0x00000399
	add r0, r4, #0
_021B3946:
	bl sub_021B2F84
_021B394A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021B3950: .word 0x0000073A
_021B3954: .word ovy199_21b3888
_021B3958: .word 0x00000389
_021B395C: .word 0x00000393
_021B3960: .word 0x0000073B
_021B3964: .word 0x00000399
	thumb_func_end ovy199_21b38ec

	thumb_func_start ovy199_21b3968
ovy199_21b3968: ; 0x021B3968
	push {r4, r5, r6, lr}
	mov r6, #0x2a
	add r5, r0, #0
	lsl r6, r6, #4
	ldr r0, [r5, r6]
	add r4, r1, #0
	bl sub_0204C4A0
	cmp r4, r0
	beq _021B398E
	ldr r0, [r5, r6]
	mov r1, #1
	bl sub_0204C520
	lsl r1, r4, #0x10
	ldr r0, [r5, r6]
	lsr r1, r1, #0x10
	bl sub_0204C488
_021B398E:
	pop {r4, r5, r6, pc}
	thumb_func_end ovy199_21b3968

	thumb_func_start ovy199_21b3990
ovy199_21b3990: ; 0x021B3990
	push {r3, lr}
	mov r2, #0x9e
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	add r2, r2, #4
	ldr r2, [r0, r2]
	cmp r1, r2
	beq _021B39E2
	mov r2, #0x40
	tst r2, r1
	beq _021B39AE
	mov r1, #0x18
	bl ovy199_21b3968
	pop {r3, pc}
_021B39AE:
	mov r3, #0x80
	add r2, r1, #0
	tst r2, r3
	beq _021B39BE
	mov r1, #0x16
	bl ovy199_21b3968
	pop {r3, pc}
_021B39BE:
	add r2, r3, #0
	add r2, #0x80
	tst r2, r1
	beq _021B39CE
	mov r1, #0x15
	bl ovy199_21b3968
	pop {r3, pc}
_021B39CE:
	lsl r2, r3, #2
	tst r1, r2
	beq _021B39DC
	mov r1, #0x15
	bl ovy199_21b3968
	pop {r3, pc}
_021B39DC:
	mov r1, #0xe
	bl ovy199_21b3968
_021B39E2:
	pop {r3, pc}
	thumb_func_end ovy199_21b3990

	thumb_func_start ovy199_21b39e4
ovy199_21b39e4: ; 0x021B39E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B39F6
	ldr r0, [r4, #0x20]
	bl sub_020504F0
_021B39F6:
	add r0, r4, #0
	bl ovy199_21b3990
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b39e4

	thumb_func_start ovy199_21b3a00
ovy199_21b3a00: ; 0x021B3A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldrh r0, [r7, #0xc]
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02026DC0
	mov r2, #2
	ldrh r3, [r7, #0xc]
	add r1, r5, #0
	lsl r2, r2, #8
	add r4, r0, #0
	bl sub_02026E04
	lsl r7, r6, #5
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	add r3, r7, #0
	bl sub_02026F7C
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	lsl r3, r6, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_02027880
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02026FD8
	add r1, r7, #0
	add r6, r0, #0
	blx DC_FlushRange
	cmp r5, #1
	beq _021B3A66
	cmp r5, #3
	bne _021B3A70
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	bl GXS_LoadOBJPltt
	b _021B3A70
_021B3A66:
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	bl GXS_LoadBGPltt
_021B3A70:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02026E48
	add r0, r4, #0
	bl sub_02026DE8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b3a00

	thumb_func_start ovy199_21b3a84
ovy199_21b3a84: ; 0x021B3A84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021B3AC0
	ldr r0, _021B3AE0 ; =0x05000600
	mov r4, #2
	lsr r1, r0, #0x11
	lsl r4, r4, #8
	ldr r1, [r5, r1]
	add r2, r4, #0
	blx MI_CpuCopy8
	add r1, r4, #0
	add r1, #0x84
	ldr r0, _021B3AE4 ; =0x05000400
	ldr r1, [r5, r1]
	add r2, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xe
	bl ovy199_21b3a00
	add r0, r5, #0
	mov r1, #1
	mov r2, #9
	bl ovy199_21b3a00
	pop {r3, r4, r5, pc}
_021B3AC0:
	mov r4, #0xa
	lsl r4, r4, #6
	add r2, r4, #0
	ldr r0, [r5, r4]
	mov r1, #0
	sub r2, #0xc0
	bl GXS_LoadOBJPltt
	add r0, r4, #4
	mov r2, #0x12
	ldr r0, [r5, r0]
	mov r1, #0
	lsl r2, r2, #4
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B3AE0: .word 0x05000600
_021B3AE4: .word 0x05000400
	thumb_func_end ovy199_21b3a84

	thumb_func_start ovy199_21b3ae8
ovy199_21b3ae8: ; 0x021B3AE8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrh r1, [r5, #0xc]
	mov r4, #0x8f
	mov r2, #2
	str r1, [sp]
	add r0, sp, #0
	lsl r4, r4, #2
	strb r2, [r0, #4]
	add r2, r5, r4
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r2, #0x20
	strb r2, [r0, #0x10]
	mov r2, #0xe
	strb r2, [r0, #0x11]
	mov r2, #0xd
	strb r2, [r0, #0x12]
	mov r2, #3
	strb r2, [r0, #0x13]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	str r2, [r5, r4]
	ldr r0, [r5, #0x24]
	mov r1, #4
	bl sub_02048838
	ldr r6, _021B3B74 ; =0x000039E0
	add r0, r4, #4
	strh r6, [r5, r0]
	ldrh r1, [r5, #0xc]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xc
	str r2, [r5, r0]
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl sub_02048838
	add r0, r4, #0
	add r0, #0x10
	add r1, r4, #0
	strh r6, [r5, r0]
	add r1, #0x18
	ldr r1, [r5, r1]
	add r0, sp, #0
	bl sub_0202D974
	sub r1, r4, #4
	str r0, [r5, r1]
	mov r1, #1
	bl sub_0202DED4
	ldr r0, [r5, r4]
	bl sub_02048564
	add r4, #0xc
	ldr r0, [r5, r4]
	bl sub_02048564
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021B3B74: .word 0x000039E0
	thumb_func_end ovy199_21b3ae8

	thumb_func_start ovy199_21b3b78
ovy199_21b3b78: ; 0x021B3B78
	push {r3, r4, r5, lr}
	mov r5, #0xa2
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B3B8E
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, r5]
_021B3B8E:
	mov r5, #0x89
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, r5]
	bl sub_020484B4
	mov r0, #5
	bl sub_02045B7C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b3b78

	thumb_func_start ovy199_21b3ba8
ovy199_21b3ba8: ; 0x021B3BA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ovy199_21b3b78
	mov r5, #0x89
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b3ba8

	thumb_func_start ovy199_21b3bc0
ovy199_21b3bc0: ; 0x021B3BC0
	push {r3, r4, r5, lr}
	mov r3, #0x8a
	add r4, r0, #0
	lsl r3, r3, #2
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _021B3C2A
	sub r0, r3, #4
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _021B3BDE
	add r0, r3, #4
	ldr r0, [r4, r0]
	bl sub_0202E8D8
_021B3BDE:
	mov r5, #0x8a
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_020223B4
	cmp r0, #0
	beq _021B3C16
	cmp r0, #1
	beq _021B3C00
	cmp r0, #2
	bne _021B3C26
	ldr r0, [r4, r5]
	bl sub_020223CC
	mov r0, #0
	str r0, [r4, r5]
	b _021B3C26
_021B3C00:
	bl sub_0203DA48
	cmp r0, #0
	beq _021B3C26
	ldr r0, _021B3C30 ; =0x00000547
	bl sub_02006254
	ldr r0, [r4, r5]
	bl sub_020223BC
	b _021B3C26
_021B3C16:
	bl sub_0203DA2C
	cmp r0, #0
	beq _021B3C26
	ldr r0, [r4, r5]
	mov r1, #0
	bl sub_020223E0
_021B3C26:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B3C2A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021B3C30: .word 0x00000547
	thumb_func_end ovy199_21b3bc0

	thumb_func_start ovy199_21b3c34
ovy199_21b3c34: ; 0x021B3C34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r4, #0x89
	add r5, r0, #0
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	add r6, r2, #0
	cmp r0, #0
	bne _021B3C60
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #5
	mov r2, #3
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, r4]
_021B3C60:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0xf
	mov r7, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	cmp r6, #0
	beq _021B3CB6
	bl sub_02017BCC
	ldr r1, [r5, #0x30]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, #0xc
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r3, [r5, #0x38]
	add r0, r4, #0
	bl sub_02022268
	mov r1, #0x89
	lsl r1, r1, #2
	add r1, r1, #4
	str r0, [r5, r1]
	b _021B3CCA
_021B3CB6:
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x30]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x38]
	mov r1, #0
	bl sub_02021CFC
_021B3CCA:
	ldr r2, [r5, #0x3c]
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
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b3c34

	thumb_func_start sub_021B3CF0
sub_021B3CF0: ; 0x021B3CF0
	ldr r3, _021B3CF8 ; =ovy199_21b3c34
	mov r1, #4
	mov r2, #1
	bx r3
	.align 2, 0
_021B3CF8: .word ovy199_21b3c34
	thumb_func_end sub_021B3CF0

	thumb_func_start ovy199_21b3cfc
ovy199_21b3cfc: ; 0x021B3CFC
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ovy199_21b3a84
	mov r0, #5
	mov r1, #0
	bl sub_02045790
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x38]
	mov r1, #3
	bl sub_02048838
	add r0, r4, #0
	bl sub_021B3CF0
	mov r2, #0x4d
	ldr r1, _021B3D2C ; =ovy199_21b3e3c
	add r0, r4, #0
	lsl r2, r2, #4
	bl sub_021B2F84
	pop {r4, pc}
	.align 2, 0
_021B3D2C: .word ovy199_21b3e3c
	thumb_func_end ovy199_21b3cfc

	thumb_func_start ovy199_21b3d30
ovy199_21b3d30: ; 0x021B3D30
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02017850
	cmp r0, #2
	bne _021B3D5A
	add r0, r4, #0
	bl ovy199_21b3ba8
	add r0, r4, #0
	mov r1, #0
	bl ovy199_21b3a84
	ldr r1, _021B3D5C ; =ovy199_21b3180
	ldr r2, _021B3D60 ; =0x000004EA
	add r0, r4, #0
	bl sub_021B2F84
_021B3D5A:
	pop {r4, pc}
	.align 2, 0
_021B3D5C: .word ovy199_21b3180
_021B3D60: .word 0x000004EA
	thumb_func_end ovy199_21b3d30

	thumb_func_start ovy199_21b3d64
ovy199_21b3d64: ; 0x021B3D64
	push {r4, lr}
	add r4, r0, #0
	bl ovy199_21b3bc0
	cmp r0, #0
	beq _021B3D84
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0201782C
	ldr r1, _021B3D88 ; =ovy199_21b3d30
	ldr r2, _021B3D8C ; =0x000004FA
	add r0, r4, #0
	bl sub_021B2F84
_021B3D84:
	pop {r4, pc}
	nop
_021B3D88: .word ovy199_21b3d30
_021B3D8C: .word 0x000004FA
	thumb_func_end ovy199_21b3d64

	thumb_func_start ovy199_21b3d90
ovy199_21b3d90: ; 0x021B3D90
	push {r3, r4, r5, lr}
	mov r5, #0x8e
	add r4, r0, #0
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B3E22
	ldr r0, [r4, r5]
	bl sub_0202DC00
	cmp r0, #0
	bne _021B3DF8
	add r5, #0x28
	ldr r0, [r4, r5]
	bl sub_02017934
	bl sub_0200746C
	cmp r0, #0
	ldr r0, [r4, #0x24]
	beq _021B3DD8
	ldr r2, [r4, #0x38]
	mov r1, #0x2e
	bl sub_02048838
	add r0, r4, #0
	bl sub_021B3CF0
	ldr r1, _021B3E24 ; =ovy199_21b3840
	ldr r2, _021B3E28 ; =0x0000050D
	add r0, r4, #0
_021B3DD2:
	bl sub_021B2F84
	b _021B3E14
_021B3DD8:
	ldr r2, [r4, #0x38]
	mov r1, #6
	bl sub_02048838
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ovy199_21b3c34
	add r0, r4, #0
	bl ovy199_21b30c4
	add r0, r4, #0
	ldr r1, _021B3E2C ; =ovy199_21b3d64
	ldr r2, _021B3E30 ; =0x00000519
	b _021B3DD2
_021B3DF8:
	mov r0, #5
	bl sub_02045738
	mov r0, #0
	str r0, [r4, #8]
	ldr r1, _021B3E34 ; =ovy199_21b3748
	ldr r2, _021B3E38 ; =0x0000051F
	add r0, r4, #0
	bl sub_021B2F84
	add r0, r4, #0
	mov r1, #0
	bl ovy199_21b3a84
_021B3E14:
	mov r5, #0x8e
	lsl r5, r5, #2
	ldr r0, [r4, r5]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, r5]
_021B3E22:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B3E24: .word ovy199_21b3840
_021B3E28: .word 0x0000050D
_021B3E2C: .word ovy199_21b3d64
_021B3E30: .word 0x00000519
_021B3E34: .word ovy199_21b3748
_021B3E38: .word 0x0000051F
	thumb_func_end ovy199_21b3d90

	thumb_func_start ovy199_21b3e3c
ovy199_21b3e3c: ; 0x021B3E3C
	push {r4, lr}
	add r4, r0, #0
	bl ovy199_21b3bc0
	cmp r0, #0
	beq _021B3E58
	add r0, r4, #0
	bl ovy199_21b3ae8
	ldr r1, _021B3E5C ; =ovy199_21b3d90
	ldr r2, _021B3E60 ; =0x00000536
	add r0, r4, #0
	bl sub_021B2F84
_021B3E58:
	pop {r4, pc}
	nop
_021B3E5C: .word ovy199_21b3d90
_021B3E60: .word 0x00000536
	thumb_func_end ovy199_21b3e3c
_021B3E64:
	.byte 0x00, 0x4B, 0x18, 0x47, 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy199_21b3e6c
ovy199_21b3e6c: ; 0x021B3E6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r2, #0
	mov r2, #6
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x1f
	lsl r2, r2, #0xe
	bl sub_0203A15C
	mov r7, #0xad
	lsl r7, r7, #2
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x1f
	bl sub_0203AAEC
	mov r1, #0
	add r2, r7, #0
	add r5, r0, #0
	mov r4, #0
	blx MI_CpuFill8
	mov r0, #0x1f
	strh r0, [r5, #0xc]
	add r0, r7, #0
	ldr r1, [r6, #4]
	sub r0, #0x54
	str r1, [r5, r0]
	add r0, r7, #0
	ldr r1, [r6]
	sub r0, #0x50
	str r1, [r5, r0]
	mov r0, #1
	bl sub_02046DF8
	add r7, #0x14
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _021B3EC0
	mov r4, #0x10
	b _021B3EC2
_021B3EC0:
	sub r4, #0x10
_021B3EC2:
	ldr r7, _021B4038 ; =0x0400006C
	add r1, r4, #0
	add r0, r7, #0
	bl GXx_SetMasterBrightness_
	ldr r0, _021B403C ; =0x0400106C
	add r1, r4, #0
	str r0, [sp, #0xc]
	bl GXx_SetMasterBrightness_
	ldr r2, [sp, #0xc]
	lsr r0, r7, #0xa
	sub r2, #0x6c
	ldr r1, [r2]
	orr r0, r1
	str r0, [r2]
	bl GX_DispOn
	ldrh r0, [r5, #0xc]
	bl sub_020444A4
	ldrh r0, [r5, #0xc]
	bl sub_02048080
	bl sub_020232D0
	ldr r0, _021B4040 ; =0x021B99B0
	bl sub_02046C40
	ldr r4, _021B4044 ; =0x021B95F8
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02044710
	mov r0, #0
	mov r7, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	ldrh r2, [r5, #0xc]
	ldr r0, _021B4048 ; =0x021B95D0
	ldr r1, _021B4040 ; =0x021B99B0
	bl sub_0204B6A8
	ldrh r2, [r5, #0xc]
	mov r0, #0x28
	mov r1, #0
	bl sub_0204BF1C
	mov r4, #0xab
	lsl r4, r4, #2
	str r0, [r5, r4]
	ldr r0, _021B404C ; =0x021B3E65
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	add r1, r4, #4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ovy199_21b2f8c
	add r0, r5, #0
	bl ovy199_21b35c4
	ldr r0, _021B4050 ; =0x000005A6
	add r1, r4, #0
	str r0, [sp]
	str r1, [sp, #0x10]
	sub r1, #0xac
	ldrh r0, [r5, #0xc]
	ldr r3, _021B4054 ; =0x021B99E0
	mov r2, #0
	str r1, [sp, #0x10]
	bl sub_0203A1FC
	add r1, r4, #0
	sub r1, #0x2c
	str r0, [r5, r1]
	ldr r0, _021B4050 ; =0x000005A6
	ldr r1, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp]
	ldrh r0, [r5, #0xc]
	ldr r3, _021B4054 ; =0x021B99E0
	mov r2, #0
	bl sub_0203A1FC
	add r1, r4, #0
	sub r1, #0x28
	str r0, [r5, r1]
	ldrh r0, [r5, #0xc]
	mov r2, #3
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	add r1, r4, #0
	sub r1, #0x7c
	str r0, [r5, r1]
	ldrh r3, [r5, #0xc]
	mov r0, #0xf
	mov r1, #0
	mov r2, #1
	bl sub_0202E7A4
	add r1, r4, #0
	sub r1, #0x80
	str r0, [r5, r1]
	ldrh r0, [r5, #0xc]
	bl sub_02021998
	add r1, r4, #0
	sub r1, #0x78
	str r0, [r5, r1]
	ldrh r0, [r5, #0xc]
	add r3, r4, #0
	sub r3, #0x78
	str r0, [sp]
	ldr r2, [r5, #0x30]
	ldr r3, [r5, r3]
	mov r0, #5
	mov r1, #9
	bl sub_0202E168
	add r1, r4, #0
	sub r1, #0x58
	str r0, [r5, r1]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #4
	sub r0, #0x1c
	mov r2, #1
	mov r3, #0xf
	str r0, [sp, #0xc]
	bl G2x_SetBlendAlpha_
	add r4, #0x1c
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021B3FEE
	ldr r7, _021B4058 ; =0x00007FFF
_021B3FEE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, #0xc]
	lsl r3, r7, #0x10
	mov r1, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_020279B4
	mov r4, #0xb2
	lsl r4, r4, #2
	mov r0, #0
	str r0, [r6, r4]
	mov r0, #0x1f
	bl sub_02046DC0
	ldr r1, _021B405C ; =ovy199_21b3748
	ldr r2, _021B4060 ; =0x000005BF
	add r0, r5, #0
	bl sub_021B2F84
	sub r4, #0x70
	str r6, [r5, r4]
	ldrh r1, [r5, #0xc]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #1
	bl sub_0203D564
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B4038: .word 0x0400006C
_021B403C: .word 0x0400106C
_021B4040: .word 0x021B99B0
_021B4044: .word 0x021B95F8
_021B4048: .word 0x021B95D0
_021B404C: .word 0x021B3E65
_021B4050: .word 0x000005A6
_021B4054: .word 0x021B99E0
_021B4058: .word 0x00007FFF
_021B405C: .word ovy199_21b3748
_021B4060: .word 0x000005BF
	thumb_func_end ovy199_21b3e6c

	thumb_func_start ovy199_21b4064
ovy199_21b4064: ; 0x021B4064
	push {r4, r5, r6, lr}
	add r5, r3, #0
	ldr r1, [r5]
	mov r6, #1
	cmp r1, #0
	beq _021B4076
	add r0, r5, #0
	blx r1
	mov r6, #0
_021B4076:
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B4084
	bl sub_0202DB70
_021B4084:
	bl sub_02042788
	cmp r0, #0
	beq _021B409E
	mov r4, #0x9e
	lsl r4, r4, #2
	ldr r1, [r5, r4]
	add r0, r4, #4
	str r1, [r5, r0]
	mov r0, #0
	bl sub_02012BE4
	str r0, [r5, r4]
_021B409E:
	mov r4, #0x23
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0203A7F4
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_02021A3C
	add r2, r4, #0
	add r2, #0x38
	ldr r2, [r5, r2]
	mov r0, #4
	mov r1, #3
	bl sub_02044CFC
	add r0, r4, #0
	add r0, #0x38
	ldr r0, [r5, r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x38
	str r1, [r5, r0]
	bl sub_0204B794
	add r0, r4, #0
	add r0, #0x5c
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021B40E2
	add r4, #0x34
	ldr r0, [r5, r4]
	bl sub_02016BB4
_021B40E2:
	bl sub_02027ACC
	cmp r0, #0
	beq _021B410E
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02016BEC
	cmp r0, #0
	beq _021B410E
	mov r0, #0
	str r0, [r5, #8]
	mov r0, #0
	mov r1, #0
	mov r6, #1
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
_021B410E:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4064

	thumb_func_start ovy199_21b4114
ovy199_21b4114: ; 0x021B4114
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02027ACC
	cmp r0, #0
	bne _021B4128
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021B4128:
	mov r6, #0x2a
	mov r4, #0
	lsl r6, r6, #4
_021B412E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_0204C108
	add r4, r4, #1
	cmp r4, #3
	blt _021B412E
	mov r4, #0x29
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0204BCD0
	add r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204B98C
	add r0, r4, #0
	add r0, #8
	ldr r0, [r5, r0]
	bl sub_0204BE64
	add r0, r4, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	bl sub_0203A6A8
	add r0, r4, #0
	add r0, #0x1c
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	add r0, r4, #0
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B4186
	bl sub_0203580C
	mov r0, #0
	sub r4, #8
	str r0, [r5, r4]
_021B4186:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B4194
	bl sub_020223CC
_021B4194:
	mov r4, #0x8e
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B41A6
	bl sub_0202DA54
	mov r0, #0
	str r0, [r5, r4]
_021B41A6:
	add r0, r5, #0
	bl ovy199_21b37a8
	mov r4, #0x72
	ldr r0, [r5, #8]
	lsl r4, r4, #2
	str r0, [r7, r4]
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r5, r0]
	bl sub_0203A24C
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r5, r0]
	bl sub_0203A24C
	add r0, r4, #0
	add r0, #0x64
	ldr r0, [r5, r0]
	bl sub_0202E818
	mov r0, #5
	bl sub_02044B84
	add r0, r4, #0
	add r0, #0x6c
	ldr r0, [r5, r0]
	bl sub_02021C44
	add r0, r4, #0
	add r0, #0x6c
	ldr r0, [r5, r0]
	bl sub_02021A18
	add r4, #0x5c
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021B41F8
	bl sub_02048210
_021B41F8:
	mov r4, #0x23
	lsl r4, r4, #4
	ldr r0, [r5, r4]
	bl sub_0203A83C
	add r4, #0x24
	ldr r0, [r5, r4]
	bl sub_0202E1DC
	bl sub_020480A8
	bl sub_02044528
	ldr r0, [sp]
	bl sub_0203AB10
	mov r0, #0x1f
	bl sub_0203A1D0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4114

	thumb_func_start ovy199_21b4224
ovy199_21b4224: ; 0x021B4224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B4236
	bl sub_020504DC
	mov r0, #0
	str r0, [r4, #0x1c]
_021B4236:
	pop {r4, pc}
	thumb_func_end ovy199_21b4224

	thumb_func_start ovy199_21b4238
ovy199_21b4238: ; 0x021B4238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x96
	str r1, [sp]
	ldr r3, _021B436C ; =0x021B99F0
	mov r1, #0xb4
	mov r2, #1
	add r6, r0, #0
	mov r5, #0xb4
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, #0xb0
	strh r6, [r0]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	bl sub_020241D4
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	bl sub_02048080
	bl sub_020232D0
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r2, #2
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xb0
	mov r6, #0xb4
	add r6, #0xdc
	ldrh r1, [r1]
	add r0, r6, #0
	bl sub_02048530
	add r1, r4, #0
	str r0, [r4, #0x2c]
	add r1, #0xb0
	ldrh r1, [r1]
	add r0, r6, #0
	bl sub_02048530
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	add r3, r4, #0
	str r0, [r4, #0x28]
	add r3, #0xb0
	lsl r2, r7, #0x10
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl sub_0204875C
	add r3, r4, #0
	str r0, [r4, #0x20]
	add r3, #0xb0
	ldrh r3, [r3]
	mov r0, #0xf
	mov r1, #1
	mov r2, #1
	bl sub_0202E7A4
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	add r3, r4, #0
	add r3, #0x88
	str r0, [sp]
	ldr r2, [r4, #0x28]
	ldr r3, [r3]
	mov r0, #5
	mov r1, #9
	bl sub_0202E168
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r3, r4, #0
	add r3, #0xb0
	ldrh r3, [r3]
	mov r0, #5
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	add r3, r4, #0
	str r0, [r4, #8]
	add r3, #0xb0
	ldrh r3, [r3]
	mov r0, #6
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	str r0, [r4, #4]
	mov r6, #0x20
	add r0, r4, #0
	add r5, #0xac
	str r6, [sp]
	add r0, #0xb0
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r5, #0
	bl sub_0204B0B8
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xb0
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r5, #0
	bl sub_0204B0B8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B436C: .word 0x021B99F0
	thumb_func_end ovy199_21b4238

	thumb_func_start ovy199_21b4370
ovy199_21b4370: ; 0x021B4370
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0203A7F4
	add r4, #0x88
	ldr r0, [r4]
	bl sub_02021A3C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4370

	thumb_func_start ovy199_21b4388
ovy199_21b4388: ; 0x021B4388
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy199_21b45a8
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021B439A
	bl sub_02048210
_021B439A:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021B43A4
	bl sub_02048210
_021B43A4:
	mov r4, #0
_021B43A6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _021B43B4
	bl sub_02048210
_021B43B4:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B43A6
	ldr r2, [r5, #8]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r5, #4]
	mov r0, #6
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r5, #0
	bl ovy199_21b4224
	ldr r0, [r5, #0x40]
	bl sub_0202E818
	ldr r0, [r5, #0x24]
	bl sub_02024274
	bl sub_020232D8
	ldr r0, [r5, #0x20]
	bl sub_020487D4
	ldr r0, [r5, #0x28]
	bl sub_02022DA8
	ldr r0, [r5, #0x2c]
	bl sub_02048564
	ldr r0, [r5, #0x30]
	bl sub_02048564
	add r0, r5, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_0202E1DC
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	bl sub_0203A83C
	bl sub_020480A8
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b4388

	thumb_func_start ovy199_21b4440
ovy199_21b4440: ; 0x021B4440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	add r6, r1, #0
	cmp r0, #0
	bne _021B4466
	mov r0, #4
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #5
	mov r2, #1
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x44]
_021B4466:
	ldr r4, [r5, #0x44]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0xf
	mov r7, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	cmp r6, #0
	beq _021B449A
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x28]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x2c]
	mov r1, #0
	bl sub_02021CFC
	b _021B44D6
_021B449A:
	bl sub_02017BCC
	ldr r1, [r5, #0x28]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xb0
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r3, [r5, #0x2c]
	add r0, r4, #0
	bl sub_02022268
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa8
	mov r1, #6
	bl sub_0202E678
_021B44D6:
	ldr r2, [r5, #8]
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
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b4440

	thumb_func_start ovy199_21b44fc
ovy199_21b44fc: ; 0x021B44FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x2c]
	bl sub_02048838
	add r0, r4, #0
	mov r1, #0
	bl ovy199_21b4440
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b44fc

	thumb_func_start ovy199_21b4514
ovy199_21b4514: ; 0x021B4514
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x2c]
	bl sub_02048838
	add r0, r4, #0
	mov r1, #1
	bl ovy199_21b4440
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4514

	thumb_func_start ovy199_21b452c
ovy199_21b452c: ; 0x021B452C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x30]
	add r6, r3, #0
	bl sub_02048838
	ldr r0, [r5, #0x24]
	mov r1, #0
	add r2, r6, #0
	bl sub_02024464
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	mov r3, #3
	bl sub_0202451C
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	bl sub_02024920
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy199_21b452c

	thumb_func_start ovy199_21b4568
ovy199_21b4568: ; 0x021B4568
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r1, [r0]
	cmp r1, #0
	beq _021B45A2
	ldr r0, [r4, #0x40]
	ldr r2, [r4, #0x44]
	bl sub_0202E8D8
	add r1, r4, #0
	add r1, #0x80
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0xa8
	bl sub_0202E68C
	cmp r0, #0
	bne _021B4592
	mov r0, #0
	pop {r4, pc}
_021B4592:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_020223CC
	mov r0, #0
	add r4, #0x80
	str r0, [r4]
_021B45A2:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4568

	thumb_func_start ovy199_21b45a8
ovy199_21b45a8: ; 0x021B45A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _021B45BA
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x7c]
_021B45BA:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B45D0
	bl sub_020223CC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0]
_021B45D0:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021B45E8
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x44]
	bl sub_020484B4
	mov r0, #5
	bl sub_02045B7C
_021B45E8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b45a8

	thumb_func_start ovy199_21b45ec
ovy199_21b45ec: ; 0x021B45EC
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r2, #2
	str r0, [sp]
	add r0, sp, #0
	strb r2, [r0, #4]
	add r2, r4, #0
	add r2, #0x8c
	str r2, [sp, #8]
	cmp r1, #0
	beq _021B460E
	cmp r1, #1
	beq _021B4616
	b _021B4622
_021B460E:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0xc
	b _021B461C
_021B4616:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
_021B461C:
	strb r1, [r0, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
_021B4622:
	mov r1, #0xd
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r1, r4, #0
	add r1, #0xb0
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	str r2, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02048838
	add r1, r4, #0
	add r1, #0xb0
	add r0, r4, #0
	ldr r5, _021B46A4 ; =0x000039E0
	add r0, #0x90
	strh r5, [r0]
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x98
	str r2, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #5
	bl sub_02048838
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xa4
	add r0, #0x9c
	strh r5, [r0]
	ldr r1, [r1]
	add r0, sp, #0
	bl sub_0202D974
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_02048564
	add r4, #0x98
	ldr r0, [r4]
	bl sub_02048564
	mov r2, #9
	ldr r0, _021B46A8 ; =0x04001050
	mov r1, #9
	sub r2, #0x11
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021B46A4: .word 0x000039E0
_021B46A8: .word 0x04001050
	thumb_func_end ovy199_21b45ec

	thumb_func_start sub_021B46AC
sub_021B46AC: ; 0x021B46AC
	add r2, r0, #0
	ldr r0, [r2, #0x20]
	ldr r2, [r2, #0x2c]
	ldr r3, _021B46B8 ; =sub_02048838
	bx r3
	nop
_021B46B8: .word sub_02048838
	thumb_func_end sub_021B46AC

	thumb_func_start ovy199_21b46bc
ovy199_21b46bc: ; 0x021B46BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _021B46D0
	bl sub_02048210
_021B46D0:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #1
	lsr r2, r2, #0x18
	mov r3, #0x1e
	bl sub_020480C0
	add r4, r0, #0
	str r4, [r5, #0x48]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x28]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x2c]
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
	mov r0, #6
	bl sub_02045B7C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy199_21b46bc

	thumb_func_start ovy199_21b4740
ovy199_21b4740: ; 0x021B4740
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021B4750
	bl sub_02048210
_021B4750:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #1
	mov r2, #9
	mov r3, #0x1e
	bl sub_020480C0
	add r4, r0, #0
	str r4, [r5, #0x48]
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	bl sub_020232E8
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [r5, #0x28]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x2c]
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
	mov r0, #6
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4740

	thumb_func_start ovy199_21b47bc
ovy199_21b47bc: ; 0x021B47BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x48]
	bl sub_020484B4
	mov r0, #6
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b47bc

	thumb_func_start ovy199_21b47d8
ovy199_21b47d8: ; 0x021B47D8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _021B47EC
	bl sub_0203580C
	mov r0, #0
	str r0, [r4, #0x7c]
_021B47EC:
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r2, #0xf
	mov r3, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	ldr r1, [r4, #0x44]
	bl sub_02035660
	str r0, [r4, #0x7c]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b47d8

	thumb_func_start ovy199_21b480c
ovy199_21b480c: ; 0x021B480C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x2c]
	add r0, sp, #8
	str r1, [sp, #8]
	mov r1, #4
	bl sub_0204405C
	ldr r1, _021B4868 ; =0x021B96A8
	mov r7, #0
	ldrh r2, [r1]
	add r1, sp, #4
	strh r2, [r1]
	ldr r1, [sp, #8]
	asr r4, r1, #0x1f
	add r5, r1, #0
	adc r4, r0
	add r0, r6, #0
	bl sub_02048570
_021B4834:
	mov r0, #0x1f
	and r0, r5
	lsl r1, r0, #0x10
	lsr r2, r1, #0xf
	ldr r1, _021B486C ; =0x021B96AC
	lsl r0, r4, #0x1b
	lsr r5, r5, #5
	orr r5, r0
	ldrh r1, [r1, r2]
	add r0, r6, #0
	lsr r4, r4, #5
	bl sub_02048734
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xbd
	mov r2, #4
	mov r3, #1
	bl sub_02022B78
	add r7, r7, #1
	cmp r7, #0xa
	blt _021B4834
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B4868: .word 0x021B96A8
_021B486C: .word 0x021B96AC
	thumb_func_end ovy199_21b480c

	thumb_func_start ovy199_21b4870
ovy199_21b4870: ; 0x021B4870
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #8
	bhi _021B48A8
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B4884: ; jump table
	.short _021B48A8 - _021B4884 - 2 ; case 0
	.short _021B48A8 - _021B4884 - 2 ; case 1
	.short _021B48A8 - _021B4884 - 2 ; case 2
	.short _021B4896 - _021B4884 - 2 ; case 3
	.short _021B48A8 - _021B4884 - 2 ; case 4
	.short _021B48A8 - _021B4884 - 2 ; case 5
	.short _021B4898 - _021B4884 - 2 ; case 6
	.short _021B48A8 - _021B4884 - 2 ; case 7
	.short _021B48A4 - _021B4884 - 2 ; case 8
_021B4896:
	b _021B48A8
_021B4898:
	ldr r0, _021B48BC ; =0x021b9c00
	mov r1, #1
	ldr r0, [r0]
	add r0, #0xc8
	str r1, [r0]
	b _021B48A8
_021B48A4:
	bl sub_02011D20
_021B48A8:
	ldr r0, _021B48BC ; =0x021b9c00
	mov r2, #1
	ldr r1, [r0]
	add r1, #0xb0
	str r2, [r1]
	ldr r0, [r0]
	add r0, #0xb4
	str r4, [r0]
	pop {r4, pc}
	nop
_021B48BC: .word 0x021b9c00
	thumb_func_end ovy199_21b4870

	thumb_func_start ovy199_21b48c0
ovy199_21b48c0: ; 0x021B48C0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	mov r1, #0x88
	str r1, [sp]
	ldr r3, _021B4914 ; =0x021B9A00
	mov r1, #0xd4
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, _021B4918 ; =0x021b9c00
	ldr r0, [r0]
	cmp r0, #0
	beq _021B48EA
	ldr r0, _021B491C ; =0x021B9A14
	ldr r2, _021B4920 ; =0x021B9A18
	mov r1, #0
	bl sub_0203CB80
_021B48EA:
	ldr r0, _021B4918 ; =0x021b9c00
	add r1, r5, #0
	str r4, [r0]
	mov r0, #0x8c
	str r0, [sp]
	ldr r3, _021B4914 ; =0x021B9A00
	add r0, r6, #0
	add r1, #0x40
	mov r2, #0
	bl sub_0203A1FC
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xbc
	str r5, [r0]
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B4914: .word 0x021B9A00
_021B4918: .word 0x021b9c00
_021B491C: .word 0x021B9A14
_021B4920: .word 0x021B9A18
	thumb_func_end ovy199_21b48c0

	thumb_func_start ovy199_21b4924
ovy199_21b4924: ; 0x021B4924
	push {r4, r5, r6, lr}
	ldr r6, _021B4950 ; =0x021b9c00
	add r5, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _021B494C
	mov r0, #0
	mov r1, #0
	mov r4, #0
	bl ovy11_215205c
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0203A24C
	add r0, r5, #0
	bl sub_0203A24C
	str r4, [r6]
_021B494C:
	pop {r4, r5, r6, pc}
	nop
_021B4950: .word 0x021b9c00
	thumb_func_end ovy199_21b4924

	thumb_func_start sub_021B4954
sub_021B4954: ; 0x021B4954
	add r0, #0xb8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B4954

	thumb_func_start ovy199_21b495c
ovy199_21b495c: ; 0x021B495C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bne _021B4978
	bl ovy189_21a57dc
	cmp r0, #0
	beq _021B4978
	add r0, r4, #0
	mov r1, #1
	add r0, #0xc4
	str r1, [r0]
_021B4978:
	add r4, #0xb0
	ldr r0, [r4]
	cmp r0, #0
	bne _021B4984
	mov r0, #1
	pop {r4, pc}
_021B4984:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ovy199_21b495c

	thumb_func_start ovy199_21b4988
ovy199_21b4988: ; 0x021B4988
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r0, #0xb0
	str r4, [r0]
	ldr r0, _021B49B0 ; =ovy199_21b4870
	ldr r1, _021B49B4 ; =0x021B9A24
	ldr r2, _021B49B8 ; =0x021B9A2C
	bl ovy189_21a5674
	cmp r0, #0
	bne _021B49A4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021B49A4:
	ldr r0, _021B49BC ; =ovy199_21b495c
	add r1, r5, #0
	bl ovy11_215205c
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B49B0: .word ovy199_21b4870
_021B49B4: .word 0x021B9A24
_021B49B8: .word 0x021B9A2C
_021B49BC: .word ovy199_21b495c
	thumb_func_end ovy199_21b4988

	thumb_func_start sub_021B49C0
sub_021B49C0: ; 0x021B49C0
	ldr r1, _021B49DC ; =0x021b9c00
	ldr r1, [r1]
	add r1, #0xb0
	ldr r1, [r1]
	cmp r1, #0
	beq _021B49D8
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	bne _021B49D8
	mov r0, #1
	bx lr
_021B49D8:
	mov r0, #0
	bx lr
	.align 2, 0
_021B49DC: .word 0x021b9c00
	thumb_func_end sub_021B49C0

	thumb_func_start sub_021B49E0
sub_021B49E0: ; 0x021B49E0
	add r1, r0, #0
	add r1, #0xd0
	ldr r1, [r1]
	cmp r1, #0
	beq _021B49F8
	add r1, r0, #0
	add r1, #0xc8
	ldr r1, [r1]
	cmp r1, #0
	beq _021B49F8
	mov r0, #1
	bx lr
_021B49F8:
	ldr r1, _021B4A14 ; =0x021b9c00
	ldr r1, [r1]
	add r1, #0xb0
	ldr r1, [r1]
	cmp r1, #0
	beq _021B4A10
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4A10
	mov r0, #1
	bx lr
_021B4A10:
	mov r0, #0
	bx lr
	.align 2, 0
_021B4A14: .word 0x021b9c00
	thumb_func_end sub_021B49E0

	thumb_func_start ovy199_21b4a18
ovy199_21b4a18: ; 0x021B4A18
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r3, r2, #0
	add r5, r1, #0
	mov r4, #0
	add r0, #0xb0
	add r6, sp, #0
	str r4, [r0]
	ldr r2, _021B4A48 ; =0x021B9A40
	add r0, r6, #0
	mov r1, #0x14
	bl sub_02080108
	ldr r2, _021B4A4C ; =0x021B9A14
	add r0, r5, #0
	add r1, r6, #0
	bl ovy189_21a5830
	cmp r0, #0
	beq _021B4A42
	mov r4, #1
_021B4A42:
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B4A48: .word 0x021B9A40
_021B4A4C: .word 0x021B9A14
	thumb_func_end ovy199_21b4a18

	thumb_func_start sub_021B4A50
sub_021B4A50: ; 0x021B4A50
	add r1, r0, #0
	mov r2, #0
	add r1, #0xcc
	add r0, #0xd0
	str r2, [r1]
	str r2, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B4A50

	thumb_func_start ovy199_21b4a60
ovy199_21b4a60: ; 0x021B4A60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4A70
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B4A70:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #0
	beq _021B4AA8
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xcc
	str r1, [r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	ble _021B4AA8
	add r0, r5, #0
	mov r4, #1
	add r0, #0xd0
	str r4, [r0]
	bl ovy189_21a5938
	cmp r0, #0
	bne _021B4AA4
	add r5, #0xc8
	str r4, [r5]
_021B4AA4:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B4AA8:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b4a60

	thumb_func_start ovy199_21b4aac
ovy199_21b4aac: ; 0x021B4AAC
	push {r3, r4, r5, lr}
	add r1, r0, #0
	mov r4, #0
	add r1, #0xb0
	str r4, [r1]
	add r1, r0, #0
	mov r5, #1
	add r1, #0xcc
	str r5, [r1]
	add r1, r0, #0
	add r1, #0xd0
	str r4, [r1]
	mov r1, #0
	mov r2, #1
	bl ovy189_21a5850
	cmp r0, #0
	bne _021B4AD2
	add r5, r4, #0
_021B4AD2:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4aac

	thumb_func_start ovy199_21b4ad8
ovy199_21b4ad8: ; 0x021B4AD8
	push {r3, r4, r5, lr}
	add r1, r0, #0
	mov r4, #0
	add r1, #0xb0
	str r4, [r1]
	add r1, r0, #0
	add r2, r0, #0
	add r2, #0xbc
	ldr r2, [r2]
	mov r5, #1
	add r1, #0xcc
	str r5, [r1]
	add r1, r0, #0
	add r1, #0xd0
	str r4, [r1]
	add r1, r0, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r2, #0x40
	bl ovy189_21a58c8
	cmp r0, #0
	bne _021B4B08
	add r5, r4, #0
_021B4B08:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b4ad8

	thumb_func_start ovy199_21b4b0c
ovy199_21b4b0c: ; 0x021B4B0C
	push {r4, lr}
	add r1, r0, #0
	add r1, #0xc4
	ldr r1, [r1]
	cmp r1, #0
	bne _021B4B2A
	mov r4, #0
	add r0, #0xb0
	str r4, [r0]
	bl ovy189_21a57dc
	cmp r0, #0
	bne _021B4B2A
	add r0, r4, #0
	pop {r4, pc}
_021B4B2A:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b4b0c

	thumb_func_start ovy199_21b4b30
ovy199_21b4b30: ; 0x021B4B30
	push {r3, lr}
	bl ovy199_21b4a60
	cmp r0, #0
	beq _021B4B3E
	bl ovy189_21a5768
_021B4B3E:
	pop {r3, pc}
	thumb_func_end ovy199_21b4b30

	thumb_func_start sub_021B4B40
sub_021B4B40: ; 0x021B4B40
	add r0, #0xac
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_021B4B40

	thumb_func_start ovy199_21b4b48
ovy199_21b4b48: ; 0x021B4B48
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021B4BF0 ; =0x00000101
	ldr r5, _021B4BF4 ; =0x0000456C
	str r1, [sp]
	ldr r3, _021B4BF8 ; =0x021B9B40
	add r1, r5, #0
	mov r2, #1
	add r6, r0, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r7, _021B4BFC ; =0x000043C8
	ldr r0, _021B4C00 ; =0x0000008B
	strh r6, [r4, r7]
	bl sub_0203CE0C
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r0, #1
	bl sub_02046DF8
	ldr r0, _021B4C04 ; =0x04001000
	mov r1, #1
	ldr r2, [r0]
	lsl r1, r1, #0x10
	orr r1, r2
	str r1, [r0]
	bl GX_DispOn
	ldrh r0, [r4, r7]
	bl sub_020444A4
	ldr r6, _021B4C08 ; =0x021B9A68
	ldrh r2, [r4, r7]
	ldr r0, _021B4C0C ; =0x02093F24
	add r1, r6, #0
	bl sub_0204B6A8
	ldrh r2, [r4, r7]
	mov r0, #0x28
	mov r1, #0
	bl sub_0204BF1C
	str r0, [r4, #0xc]
	add r0, r6, #0
	bl sub_02046C40
	ldr r0, _021B4C10 ; =0x021B9A44
	bl sub_02044710
	add r0, r4, #0
	bl ovy199_21b4d04
	add r0, r4, #0
	bl ovy199_21b4f04
	add r0, r4, #0
	bl ovy199_21b5acc
	add r0, r4, #0
	bl ovy199_21b5b50
	ldr r0, _021B4C14 ; =ovy199_21b4eb0
	add r1, r4, #0
	mov r2, #0
	bl sub_020056FC
	str r0, [r4, #0x10]
	mov r0, #0xc8
	sub r5, #0xc
	str r0, [r4, r5]
	mov r0, #0x1f
	bl sub_02046DC0
	mov r0, #0x1b
	bl sub_02046D38
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B4BF0: .word 0x00000101
_021B4BF4: .word 0x0000456C
_021B4BF8: .word 0x021B9B40
_021B4BFC: .word 0x000043C8
_021B4C00: .word 0x0000008B
_021B4C04: .word 0x04001000
_021B4C08: .word 0x021B9A68
_021B4C0C: .word 0x02093F24
_021B4C10: .word 0x021B9A44
_021B4C14: .word ovy199_21b4eb0
	thumb_func_end ovy199_21b4b48

	thumb_func_start ovy199_21b4c18
ovy199_21b4c18: ; 0x021B4C18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021B4C40 ; =0x000043CA
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0xc0
	blt _021B4C2E
	mov r1, #0
	strh r1, [r4, r0]
_021B4C2E:
	bl sub_0204B794
	add r0, r4, #0
	bl ovy199_21b5430
	add r0, r4, #0
	bl ovy199_21b56ec
	pop {r4, pc}
	.align 2, 0
_021B4C40: .word 0x000043CA
	thumb_func_end ovy199_21b4c18

	thumb_func_start ovy199_21b4c44
ovy199_21b4c44: ; 0x021B4C44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ovy199_21b519c
	ldr r0, [r5, #0x1c]
	bl sub_0203A24C
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl sub_0204C108
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0]
	bl sub_0204C108
	mov r4, #0
_021B4C68:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021B4C76
	bl sub_0204BCD0
_021B4C76:
	add r4, r4, #1
	cmp r4, #6
	blt _021B4C68
	cmp r4, #0xd
	bge _021B4C94
_021B4C80:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021B4C8E
	bl sub_0204B98C
_021B4C8E:
	add r4, r4, #1
	cmp r4, #0xd
	blt _021B4C80
_021B4C94:
	cmp r4, #0x14
	bge _021B4CAC
_021B4C98:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021B4CA6
	bl sub_0204BE64
_021B4CA6:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B4C98
_021B4CAC:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021B4CB6
	bl sub_0203A6A8
_021B4CB6:
	ldr r0, [r5, #0x10]
	bl sub_0203A6A8
	ldr r0, [r5, #0xc]
	bl sub_0204BF98
	bl sub_0204B758
	mov r0, #1
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
	add r0, r5, #0
	bl sub_0203A24C
	ldr r0, _021B4D00 ; =0x0000008B
	bl sub_0203CDC8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B4D00: .word 0x0000008B
	thumb_func_end ovy199_21b4c44

	thumb_func_start ovy199_21b4d04
ovy199_21b4d04: ; 0x021B4D04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xec
	ldr r4, _021B4E94 ; =0x021B9714
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
	mov r0, #0
	mov r2, #0
	bl sub_0204476C
	mov r0, #0
	mov r1, #1
	mov r7, #1
	bl sub_02044C98
	mov r0, #0
	bl sub_02044F90
	ldr r4, _021B4E98 ; =0x021B9734
	add r3, sp, #0xac
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
	bl sub_02044F90
	ldr r4, _021B4E9C ; =0x021B9754
	add r3, sp, #0x8c
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
	mov r0, #3
	mov r2, #0
	bl sub_0204476C
	mov r0, #3
	mov r1, #1
	bl sub_02044C98
	mov r0, #3
	bl sub_02044F90
	ldr r4, _021B4EA0 ; =0x021B9774
	add r3, sp, #0x6c
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
	mov r0, #4
	mov r2, #0
	mov r4, #4
	bl sub_0204476C
	mov r0, #4
	mov r1, #1
	bl sub_02044C98
	add r0, r4, #0
	bl sub_02044F90
	ldr r4, _021B4EA4 ; =0x021B9794
	add r3, sp, #0x4c
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
	mov r0, #5
	mov r2, #0
	bl sub_0204476C
	mov r0, #5
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02045118
	mov r5, #0x20
	str r5, [sp]
	str r5, [sp, #4]
	mov r4, #0x11
	mov r0, #5
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	mov r0, #5
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #5
	bl sub_02044F90
	ldr r6, _021B4EA8 ; =0x021B97B4
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
	ldr r4, _021B4EAC ; =0x021B97D4
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
	bl sub_0204476C
	mov r0, #7
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #7
	bl sub_02044F90
	add sp, #0xec
	pop {r4, r5, r6, r7, pc}
	nop
_021B4E94: .word 0x021B9714
_021B4E98: .word 0x021B9734
_021B4E9C: .word 0x021B9754
_021B4EA0: .word 0x021B9774
_021B4EA4: .word 0x021B9794
_021B4EA8: .word 0x021B97B4
_021B4EAC: .word 0x021B97D4
	thumb_func_end ovy199_21b4d04

	thumb_func_start ovy199_21b4eb0
ovy199_21b4eb0: ; 0x021B4EB0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0204B7C8
	ldr r0, _021B4F00 ; =0x00004568
	mov r6, #0xa
	ldr r1, [r5, r0]
	add r4, r1, #1
	str r4, [r5, r0]
	add r0, r4, #0
	mov r1, #0xa
	blx sub_0208D65C
	cmp r1, #1
	bne _021B4EF2
	add r0, r4, #0
	add r1, r6, #0
	blx sub_0208D65C
	ldr r1, [r5, #0x18]
	add r0, r0, #2
	ldr r4, [r1, #0xc]
	lsl r6, r0, #5
	add r0, r4, r6
	mov r1, #0x40
	mov r2, #0x20
	bl GX_LoadBGPltt
	add r0, r4, r6
	mov r1, #0x40
	mov r2, #0x20
	bl GXS_LoadBGPltt
_021B4EF2:
	ldr r0, _021B4F00 ; =0x00004568
	ldr r1, [r5, r0]
	cmp r1, #0x50
	blt _021B4EFE
	mov r1, #0
	str r1, [r5, r0]
_021B4EFE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B4F00: .word 0x00004568
	thumb_func_end ovy199_21b4eb0

	thumb_func_start ovy199_21b4f04
ovy199_21b4f04: ; 0x021B4F04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, _021B505C ; =0x000043C8
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x8f
	bl sub_0204AA30
	mov r7, #0
	str r7, [sp]
	ldrh r1, [r5, r6]
	mov r2, #4
	mov r3, #0
	str r1, [sp, #4]
	mov r1, #2
	add r4, r0, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, r6]
	mov r1, #8
	mov r2, #4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r1, #0x15
	mov r2, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [r5, #4]
	mov r1, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r2, #7
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	add r2, r5, #0
	ldrh r3, [r5, r6]
	add r0, r4, #0
	mov r1, #2
	add r2, #0x18
	bl sub_0204B37C
	str r0, [r5, #0x1c]
	str r7, [sp]
	ldrh r0, [r5, r6]
	mov r1, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204B0D4
	str r7, [sp]
	ldrh r0, [r5, r6]
	mov r1, #8
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AE3C
	str r0, [r5, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r1, #0x17
	mov r2, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r3, #0
	bl sub_0204AFB0
	ldr r0, [r5, #4]
	mov r1, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	ldrh r0, [r5, r6]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl sub_0204AFB0
	ldrh r0, [r5, r6]
	mov r1, #9
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #2
	bl sub_0204B81C
	str r0, [r5, #0x38]
	str r7, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldrh r0, [r5, r6]
	mov r1, #3
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0x60
	bl sub_0204BBB8
	str r0, [r5, #0x20]
	ldrh r3, [r5, r6]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x19
	bl sub_0204BDE0
	str r0, [r5, #0x54]
	ldrh r0, [r5, r6]
	mov r1, #0xa
	mov r2, #0
	str r0, [sp]
	add r0, r4, #0
	mov r3, #2
	bl sub_0204B81C
	str r0, [r5, #0x3c]
	str r7, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, r6]
	mov r1, #4
	mov r2, #2
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0xe0
	bl sub_0204BBB8
	str r0, [r5, #0x24]
	ldrh r3, [r5, r6]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x1a
	bl sub_0204BDE0
	str r0, [r5, #0x58]
	add r0, r5, #0
	bl ovy199_21b51bc
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B505C: .word 0x000043C8
	thumb_func_end ovy199_21b4f04

	thumb_func_start sub_021B5060
sub_021B5060: ; 0x021B5060
	ldr r3, _021B5068 ; =ovy199_21b50b0
	mov r1, #0x85
	mov r2, #0x80
	bx r3
	.align 2, 0
_021B5068: .word ovy199_21b50b0
	thumb_func_end sub_021B5060

	thumb_func_start sub_021B506C
sub_021B506C: ; 0x021B506C
	ldr r3, _021B5070 ; =ovy199_21b5104
	bx r3
	.align 2, 0
_021B5070: .word ovy199_21b5104
	thumb_func_end sub_021B506C

	thumb_func_start sub_021B5074
sub_021B5074: ; 0x021B5074
	lsl r1, r1, #2
	add r0, r0, r1
	lsl r1, r2, #0x10
	ldr r0, [r0, #0x74]
	ldr r3, _021B5084 ; =sub_0204C488
	lsr r1, r1, #0x10
	bx r3
	nop
_021B5084: .word sub_0204C488
	thumb_func_end sub_021B5074

	thumb_func_start sub_021B5088
sub_021B5088: ; 0x021B5088
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x74]
	ldr r3, _021B5094 ; =sub_0204C5B0
	add r1, r2, #0
	bx r3
	.align 2, 0
_021B5094: .word sub_0204C5B0
	thumb_func_end sub_021B5088

	thumb_func_start ovy199_21b5098
ovy199_21b5098: ; 0x021B5098
	push {r3, r4, r5, lr}
	add r4, r0, #0
	lsl r5, r1, #2
	add r4, #0x74
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _021B50AE
	bl sub_0204C108
	mov r0, #0
	str r0, [r4, r5]
_021B50AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b5098

	thumb_func_start ovy199_21b50b0
ovy199_21b50b0: ; 0x021B50B0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	bne _021B50FC
	add r0, sp, #0xc
	strh r1, [r0]
	strh r2, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, _021B5100 ; =0x000043C8
	str r1, [sp, #4]
	ldrh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x58]
	bl sub_0204C040
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1]
	mov r1, #1
	bl sub_0204C520
	add r4, #0xb0
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C124
_021B50FC:
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_021B5100: .word 0x000043C8
	thumb_func_end ovy199_21b50b0

	thumb_func_start ovy199_21b5104
ovy199_21b5104: ; 0x021B5104
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r0, [r0, #0x74]
	cmp r0, #0
	beq _021B511A
	bl sub_0204C108
_021B511A:
	mov r0, #0xc
	ldr r1, _021B517C ; =0x021B9A98
	mul r0, r4
	ldr r2, [r1, r0]
	add r1, sp, #0xc
	strh r2, [r1]
	ldr r2, _021B5180 ; =0x021B9A9C
	add r5, r6, #0
	ldr r2, [r2, r0]
	add r5, #0x74
	strh r2, [r1, #2]
	strh r4, [r1, #4]
	ldr r2, _021B5184 ; =0x021B9AA0
	lsl r4, r4, #2
	ldr r0, [r2, r0]
	strb r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #7]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021B5188 ; =0x000043C8
	ldrh r0, [r6, r0]
	str r0, [sp, #8]
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x38]
	ldr r2, [r6, #0x20]
	ldr r3, [r6, #0x54]
	bl sub_0204C040
	str r0, [r5, r4]
	mov r1, #0
	bl sub_0204C4D4
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C520
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0204C124
	ldr r0, [r5, r4]
	mov r1, #2
	bl sub_0204C244
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B517C: .word 0x021B9A98
_021B5180: .word 0x021B9A9C
_021B5184: .word 0x021B9AA0
_021B5188: .word 0x000043C8
	thumb_func_end ovy199_21b5104

	thumb_func_start sub_021B518C
sub_021B518C: ; 0x021B518C
	add r0, #0xac
	ldr r0, [r0]
	ldr r3, _021B5198 ; =sub_0204C488
	mov r1, #2
	bx r3
	nop
_021B5198: .word sub_0204C488
	thumb_func_end sub_021B518C

	thumb_func_start ovy199_21b519c
ovy199_21b519c: ; 0x021B519C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_021B51A4:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x74]
	cmp r0, #0
	beq _021B51B4
	bl sub_0204C108
	str r7, [r5, #0x74]
_021B51B4:
	add r4, r4, #1
	cmp r4, #0x11
	blt _021B51A4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b519c

	thumb_func_start ovy199_21b51bc
ovy199_21b51bc: ; 0x021B51BC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _021B520C ; =0x000043C8
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #7
	bl sub_0204AA30
	add r4, r0, #0
	bl sub_02021114
	add r1, r0, #0
	ldrh r0, [r5, r6]
	mov r2, #2
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204BC48
	str r0, [r5, #0x28]
	add r0, r4, #0
	bl sub_0204AB0C
	ldrh r1, [r5, r6]
	mov r0, #0x8f
	bl sub_0204AA30
	ldrh r3, [r5, r6]
	add r4, r0, #0
	mov r1, #0xe
	mov r2, #0x1b
	bl sub_0204BDE0
	str r0, [r5, #0x5c]
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B520C: .word 0x000043C8
	thumb_func_end ovy199_21b51bc

	thumb_func_start ovy199_21b5210
ovy199_21b5210: ; 0x021B5210
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _021B52C8 ; =0x021B96F4
	add r6, r1, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, _021B52CC ; =0x021B9704
	add r4, r2, #0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #0x14]
	ldr r1, _021B52D0 ; =0x000043C8
	str r0, [sp, #0x18]
	ldrh r1, [r5, r1]
	mov r0, #7
	bl sub_0204AA30
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02020F40
	add r1, r0, #0
	ldr r0, _021B52D0 ; =0x000043C8
	mov r2, #0
	ldrh r0, [r5, r0]
	mov r3, #2
	str r0, [sp]
	add r0, r7, #0
	bl sub_0204B81C
	str r0, [r5, #0x40]
	cmp r4, #0
	add r0, sp, #0xc
	bne _021B5262
	ldr r1, [sp, #0x20]
	strh r1, [r0]
	ldr r1, [sp, #0x18]
	b _021B5268
_021B5262:
	ldr r1, [sp, #0x1c]
	strh r1, [r0]
	ldr r1, [sp, #0x14]
_021B5268:
	strh r1, [r0, #2]
	mov r1, #0
	add r0, sp, #0xc
	strh r1, [r0, #4]
	mov r1, #3
	strb r1, [r0, #6]
	mov r1, #1
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021B52D0 ; =0x000043C8
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x5c]
	bl sub_0204C040
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	mov r1, #0
	bl sub_0204C520
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C124
	add r0, r6, #0
	bl sub_020210C0
	add r5, #0xac
	add r1, r0, #0
	ldr r0, [r5]
	mov r2, #1
	bl sub_0204C378
	add r0, r7, #0
	bl sub_0204AB0C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B52C8: .word 0x021B96F4
_021B52CC: .word 0x021B9704
_021B52D0: .word 0x000043C8
	thumb_func_end ovy199_21b5210

	thumb_func_start sub_021B52D4
sub_021B52D4: ; 0x021B52D4
	add r0, #0xac
	ldr r0, [r0]
	ldr r3, _021B52E0 ; =sub_0204C520
	mov r1, #1
	bx r3
	nop
_021B52E0: .word sub_0204C520
	thumb_func_end sub_021B52D4

	thumb_func_start ovy199_21b52e4
ovy199_21b52e4: ; 0x021B52E4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r1, #1
	bl sub_0204C488
	add r4, #0xac
	ldr r0, [r4]
	mov r1, #1
	bl sub_0204C520
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b52e4

	thumb_func_start ovy199_21b5300
ovy199_21b5300: ; 0x021B5300
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021B5390 ; =0x000043CA
	add r6, r1, #0
	ldr r5, _021B5394 ; =0x04000006
	ldrsh r0, [r6, r7]
	ldrh r4, [r5]
	mov r1, #0xc0
	add r0, r0, #1
	add r0, r4, r0
	blx sub_0208D65C
	sub r0, r5, #2
	ldrh r0, [r0]
	mov r2, #2
	tst r0, r2
	beq _021B538E
	lsl r0, r1, #1
	add r1, r6, r0
	add r0, r7, #2
	ldrsh r0, [r1, r0]
	ldr r1, _021B5398 ; =0x000001FF
	add r5, #0x16
	and r0, r1
	str r0, [r5]
	ldr r0, _021B539C ; =0x00004560
	ldr r0, [r6, r0]
	cmp r0, #0xc0
	blt _021B5342
	ldr r0, _021B53A0 ; =0x021B9A54
	sub r1, #0xbd
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021B5342:
	cmp r0, #0
	bne _021B5350
	ldr r0, _021B53A4 ; =0x021B9A66
	sub r1, #0xbd
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021B5350:
	cmp r4, #0xc8
	ble _021B535E
	ldr r0, _021B53A0 ; =0x021B9A54
	sub r1, #0xbd
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021B535E:
	cmp r0, r4
	ble _021B536C
	ldr r0, _021B53A0 ; =0x021B9A54
	sub r1, #0xbd
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021B536C:
	sub r0, r4, r0
	cmp r0, #0xa
	bhs _021B5384
	cmp r0, #0
	blt _021B5384
	ldr r3, _021B53A0 ; =0x021B9A54
	lsl r0, r0, #1
	add r0, r3, r0
	sub r1, #0xbd
	bl GX_LoadBGPltt
	pop {r3, r4, r5, r6, r7, pc}
_021B5384:
	ldr r0, _021B53A4 ; =0x021B9A66
	ldr r1, _021B53A8 ; =0x00000142
	mov r2, #2
	bl GX_LoadBGPltt
_021B538E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5390: .word 0x000043CA
_021B5394: .word 0x04000006
_021B5398: .word 0x000001FF
_021B539C: .word 0x00004560
_021B53A0: .word 0x021B9A54
_021B53A4: .word 0x021B9A66
_021B53A8: .word 0x00000142
	thumb_func_end ovy199_21b5300

	thumb_func_start ovy199_21b53ac
ovy199_21b53ac: ; 0x021B53AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _021B5400 ; =0x000043C8
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x8f
	bl sub_0204AA30
	ldr r1, [r5, #4]
	add r4, r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldrh r1, [r5, r6]
	mov r2, #3
	mov r3, #0
	str r1, [sp, #0xc]
	mov r1, #0x16
	bl sub_0204AFB0
	add r0, r4, #0
	bl sub_0204AB0C
	ldr r0, _021B5404 ; =ovy199_21b5300
	add r1, r5, #0
	mov r2, #0
	bl sub_02005680
	str r0, [r5, #0x14]
	add r0, r6, #4
	mov r1, #0xc0
	mov r2, #0x5b
	add r0, r5, r0
	lsl r2, r2, #4
	lsl r3, r1, #5
	bl sub_02029B54
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B5400: .word 0x000043C8
_021B5404: .word ovy199_21b5300
	thumb_func_end ovy199_21b53ac

	thumb_func_start sub_021B5408
sub_021B5408: ; 0x021B5408
	cmp r1, #0
	ldr r1, _021B542C ; =0x00004558
	beq _021B541A
	mov r2, #0
	str r2, [r0, r1]
	mov r2, #1
	add r1, r1, #4
	str r2, [r0, r1]
	bx lr
_021B541A:
	mov r2, #1
	lsl r2, r2, #0x10
	str r2, [r0, r1]
	mov r2, #0
	mvn r2, r2
	add r1, r1, #4
	str r2, [r0, r1]
	bx lr
	nop
_021B542C: .word 0x00004558
	thumb_func_end sub_021B5408

	thumb_func_start ovy199_21b5430
ovy199_21b5430: ; 0x021B5430
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _021B5480 ; =0x0000455C
	add r5, r0, #0
	ldr r2, [r5, r6]
	cmp r2, #0
	beq _021B547E
	sub r0, r6, #4
	ldr r1, [r5, r0]
	lsl r0, r2, #0xa
	add r1, r1, r0
	sub r0, r6, #4
	str r1, [r5, r0]
	asr r4, r1, #0xc
	mov r0, #3
	mov r1, #1
	mov r7, #3
	bl sub_02044C98
	cmp r4, #0xa
	ble _021B545E
	mov r0, #0
	str r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B545E:
	cmp r4, #0
	bge _021B5470
	add r0, r7, #0
	mov r4, #0
	mov r1, #0
	bl sub_02044C98
	str r4, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_021B5470:
	ldr r0, _021B5484 ; =0x04000050
	mov r1, #8
	mov r2, #0x37
	add r3, r4, #0
	str r1, [sp]
	bl G2x_SetBlendAlpha_
_021B547E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B5480: .word 0x0000455C
_021B5484: .word 0x04000050
	thumb_func_end ovy199_21b5430

	thumb_func_start ovy199_21b5488
ovy199_21b5488: ; 0x021B5488
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	blx sub_0208D374
	blx sub_0208D2F0
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021B54C8 ; =0x33333333
	ldr r1, _021B54CC ; =0x3FF33333
	blx sub_0208C908
	blx sub_0208CC6C
	add r1, r0, #0
	cmp r5, #0x64
	ble _021B54B2
	mov r0, #0
	b _021B54BC
_021B54B2:
	ldr r0, _021B54D0 ; =0x42F00000
	blx sub_0208E144
	blx sub_0208DA4C
_021B54BC:
	ldr r1, _021B54D4 ; =0x00004560
	ldr r2, [r4, r1]
	cmp r2, r0
	ble _021B54C6
	str r0, [r4, r1]
_021B54C6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B54C8: .word 0x33333333
_021B54CC: .word 0x3FF33333
_021B54D0: .word 0x42F00000
_021B54D4: .word 0x00004560
	thumb_func_end ovy199_21b5488

	thumb_func_start ovy199_21b54d8
ovy199_21b54d8: ; 0x021B54D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0xb8
	ldr r2, [r2]
	add r6, r1, #0
	bl ovy199_21b5a3c
	ldr r2, _021B5548 ; =0x021B96EC
	add r0, r5, #0
	add r0, #0xb8
	ldr r4, [r0]
	ldrh r3, [r2]
	add r0, sp, #0
	add r1, sp, #8
	strh r3, [r0, #8]
	ldrh r2, [r2, #2]
	add r7, sp, #0
	strh r2, [r0, #0xa]
	ldr r2, _021B554C ; =0x021B970C
	ldmia r2!, {r0, r2}
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204C270
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #0
	mov r1, #2
	bl sub_0204C244
	mov r0, #0x18
	mul r0, r6
	add r1, r5, r0
	ldr r0, _021B5550 ; =0x000040F8
	str r4, [r1, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B5548: .word 0x021B96EC
_021B554C: .word 0x021B970C
_021B5550: .word 0x000040F8
	thumb_func_end ovy199_21b54d8

	thumb_func_start ovy199_21b5554
ovy199_21b5554: ; 0x021B5554
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021B5564
	mov r1, #0
	bl sub_0204C124
_021B5564:
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b5554

	thumb_func_start ovy199_21b556c
ovy199_21b556c: ; 0x021B556C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r2, r5, #0
	add r2, #0xbc
	ldr r2, [r2]
	add r6, r1, #0
	bl ovy199_21b5a84
	ldr r2, _021B55DC ; =0x021B96F0
	add r0, r5, #0
	add r0, #0xbc
	ldr r4, [r0]
	ldrh r3, [r2]
	add r0, sp, #0
	add r1, sp, #8
	strh r3, [r0, #8]
	ldrh r2, [r2, #2]
	add r7, sp, #0
	strh r2, [r0, #0xa]
	ldr r2, _021B55E0 ; =0x021B96FC
	ldmia r2!, {r0, r2}
	str r0, [sp]
	str r2, [sp, #4]
	add r0, r4, #0
	mov r2, #0
	bl sub_0204C140
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0204C270
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C520
	add r0, r4, #0
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	mov r1, #1
	bl sub_0204C318
	add r0, r4, #0
	mov r1, #2
	bl sub_0204C244
	mov r0, #0x18
	mul r0, r6
	add r1, r5, r0
	ldr r0, _021B55E4 ; =0x000040F8
	str r4, [r1, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B55DC: .word 0x021B96F0
_021B55E0: .word 0x021B96FC
_021B55E4: .word 0x000040F8
	thumb_func_end ovy199_21b556c

	thumb_func_start ovy199_21b55e8
ovy199_21b55e8: ; 0x021B55E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	beq _021B56E0
	ldrh r0, [r5, #8]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _021B56E4 ; =FX_SinCosTable_ ; 0x020946BC
	ldrsh r1, [r0, r1]
	lsl r1, r1, #0x12
	asr r6, r1, #0x1c
	ldrh r1, [r5, #0xa]
	asr r1, r1, #4
	lsl r1, r1, #2
	ldrsh r1, [r0, r1]
	lsl r0, r1, #1
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x1c
	ldr r0, [r5]
	cmp r0, #0
	beq _021B56B0
	add r1, sp, #8
	mov r2, #0
	bl sub_0204C178
	ldrh r1, [r5, #4]
	add r2, sp, #0
	add r0, r1, r6
	add r0, r4, r0
	strh r0, [r2, #8]
	ldrh r3, [r5, #6]
	ldrh r0, [r5, #0xc]
	add r3, r3, r6
	add r3, r4, r3
	add r3, r0, r3
	asr r3, r3, #2
	strh r3, [r2, #0xa]
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	mov r0, #0x1d
	ror r2, r0
	add r0, r3, r2
	bne _021B564E
	cmp r1, #0x80
	bls _021B564A
	sub r0, r1, #1
	b _021B564C
_021B564A:
	add r0, r1, #1
_021B564C:
	strh r0, [r5, #4]
_021B564E:
	ldr r0, [r5]
	add r1, sp, #8
	mov r2, #0
	bl sub_0204C140
	ldr r0, [r5]
	mov r1, #1
	bl sub_0204C124
	ldrh r0, [r5, #0xc]
	add r1, sp, #0
	add r0, r0, #1
	strh r0, [r5, #0xc]
	mov r0, #0xa
	ldrsh r0, [r1, r0]
	cmp r0, #0x19
	ble _021B569E
	add r4, sp, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0204C27C
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r1, #0x10
	sub r0, #0x10
	str r1, [sp]
	str r0, [sp, #4]
	cmp r1, #0
	blt _021B568E
	cmp r0, #0
	bge _021B5696
_021B568E:
	add r0, r5, #0
	bl ovy199_21b5554
	b _021B569E
_021B5696:
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0204C270
_021B569E:
	add r1, sp, #0
	mov r0, #0xa
	ldrsh r0, [r1, r0]
	cmp r0, #0x32
	ble _021B56B4
	add r0, r5, #0
	bl ovy199_21b5554
	b _021B56B4
_021B56B0:
	mov r0, #1
	strh r0, [r5, #0x16]
_021B56B4:
	ldrh r0, [r5, #0x16]
	cmp r0, #0
	bne _021B56E0
	mov r0, #0xc
	bl sub_02005748
	add r0, #0xc8
	lsl r0, r0, #0x10
	ldrh r1, [r5, #8]
	lsr r0, r0, #0x10
	add r0, r1, r0
	strh r0, [r5, #8]
	mov r0, #0xc
	bl sub_02005748
	ldr r1, _021B56E8 ; =0x0000029A
	ldrh r2, [r5, #0xa]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r2, r0
	strh r0, [r5, #0xa]
_021B56E0:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021B56E4: .word FX_SinCosTable_
_021B56E8: .word 0x0000029A
	thumb_func_end ovy199_21b55e8

	thumb_func_start ovy199_21b56ec
ovy199_21b56ec: ; 0x021B56EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _021B581C ; =0x000040F8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #0x16
	add r7, r5, r6
	mov r4, #0
	str r0, [sp, #0xc]
	add r6, #0xe
_021B5706:
	mov r0, #0x18
	add r1, r4, #0
	mul r1, r0
	add r0, r5, r1
	ldrh r2, [r0, r6]
	cmp r2, #0
	beq _021B5726
	ldr r2, [sp, #0xc]
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _021B5726
	add r0, r7, r1
	bl ovy199_21b55e8
	mov r0, #1
	str r0, [sp, #4]
_021B5726:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B5706
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021B5782
	ldr r0, _021B5820 ; =0x00004108
	mov r4, #0
	sub r6, r0, #2
_021B5738:
	mov r0, #0x14
	bl sub_02005748
	mov r1, #0x18
	add r7, r0, #0
	mul r7, r1
	str r0, [sp, #8]
	add r0, r5, r7
	ldrh r1, [r0, r6]
	cmp r1, #0
	bne _021B577C
	ldr r1, _021B5820 ; =0x00004108
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021B577C
	ldr r4, _021B5824 ; =0x00004106
	mov r1, #1
	strh r1, [r0, r4]
	mov r0, #0x80
	bl sub_02005748
	add r1, r4, #0
	add r0, #0x40
	add r2, r5, r7
	sub r1, #0xa
	strh r0, [r2, r1]
	mov r0, #0
	sub r4, #8
	strh r0, [r2, r4]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ovy199_21b556c
	b _021B5782
_021B577C:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B5738
_021B5782:
	ldr r6, _021B581C ; =0x000040F8
	mov r4, #0
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x16
	add r7, r5, r6
	str r0, [sp, #0x10]
	add r6, #0xe
_021B5792:
	add r2, r4, #0
	add r2, #0x14
	mov r0, #0x18
	add r1, r2, #0
	mul r1, r0
	add r0, r5, r1
	ldrh r2, [r0, r6]
	cmp r2, #0
	beq _021B57B6
	ldr r2, [sp, #0x10]
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _021B57B6
	add r0, r7, r1
	bl ovy199_21b55e8
	mov r0, #1
	str r0, [sp, #4]
_021B57B6:
	add r4, r4, #1
	cmp r4, #0xa
	blt _021B5792
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021B5818
	ldr r0, _021B5820 ; =0x00004108
	mov r4, #0
	sub r6, r0, #2
_021B57C8:
	mov r0, #0xa
	bl sub_02005748
	add r7, r0, #0
	add r7, #0x14
	mov r0, #0x18
	mul r0, r7
	str r0, [sp]
	add r0, r5, r0
	ldrh r1, [r0, r6]
	cmp r1, #0
	bne _021B5812
	ldr r1, _021B5820 ; =0x00004108
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _021B5812
	ldr r4, _021B5824 ; =0x00004106
	mov r1, #1
	strh r1, [r0, r4]
	mov r0, #0x80
	bl sub_02005748
	ldr r1, [sp]
	add r0, #0x40
	add r2, r5, r1
	add r1, r4, #0
	sub r1, #0xa
	strh r0, [r2, r1]
	mov r0, #0
	sub r4, #8
	strh r0, [r2, r4]
	add r0, r5, #0
	add r1, r7, #0
	bl ovy199_21b54d8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021B5812:
	add r4, r4, #1
	cmp r4, #0xa
	blt _021B57C8
_021B5818:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B581C: .word 0x000040F8
_021B5820: .word 0x00004108
_021B5824: .word 0x00004106
	thumb_func_end ovy199_21b56ec

	thumb_func_start ovy199_21b5828
ovy199_21b5828: ; 0x021B5828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021B5888 ; =0x000043C8
	str r1, [sp]
	ldrh r0, [r6, r0]
	add r5, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x20]
	bl sub_020303D8
	str r0, [sp, #4]
	cmp r5, #0
	beq _021B587C
	ldr r1, _021B588C ; =0x00000289
	cmp r5, r1
	bgt _021B587C
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	lsl r3, r7, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0203047C
	ldr r1, _021B5890 ; =0x0000FFFF
	cmp r0, r1
	beq _021B587C
	ldr r0, [sp]
	mov r1, #0x18
	mul r1, r0
	ldr r2, _021B5894 ; =0x00004108
	add r0, r6, r1
	strh r5, [r0, r2]
	add r2, r2, #2
	strh r7, [r0, r2]
	cmp r4, #2
	ble _021B5876
	mov r4, #0
_021B5876:
	ldr r0, _021B5898 ; =0x0000410C
	add r1, r6, r1
	strh r4, [r1, r0]
_021B587C:
	ldr r0, [sp, #4]
	bl sub_02030420
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B5888: .word 0x000043C8
_021B588C: .word 0x00000289
_021B5890: .word 0x0000FFFF
_021B5894: .word 0x00004108
_021B5898: .word 0x0000410C
	thumb_func_end ovy199_21b5828

	thumb_func_start sub_021B589C
sub_021B589C: ; 0x021B589C
	mov r3, #0x18
	mul r3, r1
	add r1, r0, r3
	ldr r0, _021B58A8 ; =0x00004108
	strh r2, [r1, r0]
	bx lr
	.align 2, 0
_021B58A8: .word 0x00004108
	thumb_func_end sub_021B589C

	thumb_func_start ovy199_21b58ac
ovy199_21b58ac: ; 0x021B58AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r1, _021B5A30 ; =0x000043C8
	add r5, r0, #0
	ldrh r1, [r5, r1]
	mov r0, #0x19
	bl sub_0204AA30
	str r0, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0xc0
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xe0
	str r0, [sp, #0x14]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #0x28]
	add r0, #0x24
	str r0, [sp, #0x28]
	ldr r0, _021B5A30 ; =0x000043C8
	mov r4, #0
	add r0, r5, r0
	str r0, [sp, #0x24]
_021B58E0:
	mov r0, #0x18
	mul r0, r4
	add r1, r5, r0
	ldr r0, _021B5A34 ; =0x00004108
	ldrh r7, [r1, r0]
	cmp r7, #0
	beq _021B595A
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_02026670
	ldr r2, _021B5A30 ; =0x000043C8
	add r1, r0, #0
	ldrh r2, [r5, r2]
	ldr r0, [sp, #8]
	bl sub_0204AB1C
	add r1, sp, #0x3c
	str r0, [sp, #0xc]
	bl sub_020602D8
	ldr r0, [sp, #0x28]
	add r6, r4, #0
	mul r6, r0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r6
	mov r2, #0x20
	blx MI_CpuCopy8
	ldr r0, [sp, #0xc]
	bl sub_0203A24C
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_02026670
	ldr r2, [sp, #0x24]
	add r1, r0, #0
	ldrh r2, [r2]
	ldr r0, [sp, #8]
	bl sub_0204AB1C
	add r1, sp, #0x40
	add r7, r0, #0
	bl sub_020602A8
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x14]
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, r1, r6
	lsl r2, r2, #8
	blx MI_CpuCopy8
	add r0, r7, #0
	bl sub_0203A24C
_021B595A:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B58E0
	ldr r0, [sp, #8]
	bl sub_0204AB0C
	ldr r1, _021B5A30 ; =0x000043C8
	mov r0, #7
	ldrh r1, [r5, r1]
	bl sub_0204AA30
	str r0, [sp, #4]
	add r0, r5, #0
	str r0, [sp, #0x20]
	add r0, #0xe0
	str r0, [sp, #0x20]
	ldr r0, _021B5A38 ; =0x0000410C
	mov r7, #0
	sub r0, r0, #2
	str r0, [sp, #0x38]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #0x34]
	add r0, #0x24
	str r0, [sp, #0x34]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #0x30]
	add r0, #0xe0
	str r0, [sp, #0x30]
	ldr r0, _021B5A38 ; =0x0000410C
	sub r0, r0, #4
	str r0, [sp, #0x2c]
_021B599C:
	add r1, r7, #0
	str r1, [sp]
	add r1, #0x14
	mov r0, #0x18
	mul r0, r1
	str r1, [sp]
	add r1, r5, r0
	ldr r0, [sp, #0x2c]
	ldrh r4, [r1, r0]
	cmp r4, #0
	beq _021B5A1E
	ldr r0, _021B5A38 ; =0x0000410C
	ldr r2, [sp, #0x38]
	ldrh r6, [r1, r0]
	ldrh r1, [r1, r2]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201EFBC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_02021034
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_02020F94
	ldr r2, _021B5A30 ; =0x000043C8
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r2, [r5, r2]
	ldr r0, [sp, #4]
	bl sub_0204AB1C
	add r1, sp, #0x40
	add r6, r0, #0
	bl sub_020602A8
	ldr r1, [sp]
	mov r2, #2
	add r4, r1, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x20]
	mul r4, r0
	ldr r0, [sp, #0x40]
	add r1, r1, r4
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	blx MI_CpuCopy8
	add r0, r6, #0
	bl sub_0203A24C
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r2, r5, r4
	str r1, [r2, r0]
_021B5A1E:
	add r7, r7, #1
	cmp r7, #0xa
	blt _021B599C
	ldr r0, [sp, #4]
	bl sub_0204AB0C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021B5A30: .word 0x000043C8
_021B5A34: .word 0x00004108
_021B5A38: .word 0x0000410C
	thumb_func_end ovy199_21b58ac

	thumb_func_start ovy199_21b5a3c
ovy199_21b5a3c: ; 0x021B5A3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r7, r1, #0
	add r0, r2, #0
	add r1, sp, #4
	str r2, [sp]
	bl sub_0204C40C
	mov r4, #0x89
	mov r1, #0x19
	add r0, r5, #0
	ldr r2, [sp, #8]
	lsl r1, r1, #0x16
	lsl r4, r4, #2
	add r6, r7, #0
	add r1, r2, r1
	add r2, r4, #0
	mul r6, r4
	add r0, #0xe0
	add r0, r0, r6
	sub r2, #0x24
	blx MI_CpuCopy8
	add r1, r5, r6
	add r4, #0xbc
	ldr r1, [r1, r4]
	ldr r0, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #1
	bl sub_0204C378
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b5a3c

	thumb_func_start ovy199_21b5a84
ovy199_21b5a84: ; 0x021B5A84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	add r1, sp, #0
	bl sub_0204C40C
	mov r2, #0x89
	add r0, r5, #0
	mov r1, #0x19
	lsl r2, r2, #2
	add r4, r6, #0
	mul r4, r2
	add r0, #0xe0
	ldr r3, [sp, #4]
	lsl r1, r1, #0x16
	add r0, r0, r4
	add r1, r3, r1
	sub r2, #0x24
	blx MI_CpuCopy8
	add r5, #0xc0
	add r0, r5, r4
	mov r1, #0x20
	blx DC_FlushRange
	mov r1, #0x20
	add r0, r5, r4
	add r1, #0xe0
	mov r2, #0x20
	bl GX_LoadOBJPltt
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy199_21b5a84

	thumb_func_start ovy199_21b5acc
ovy199_21b5acc: ; 0x021B5ACC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, _021B5B4C ; =0x000043C8
	add r5, r0, #0
	ldrh r1, [r5, r7]
	mov r0, #7
	bl sub_0204AA30
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov r6, #0
	bl sub_02020F94
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrh r0, [r5, r7]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x44]
	mov r1, #0x85
	add r0, sp, #0xc
	strh r1, [r0]
	mov r1, #0x80
	strh r1, [r0, #2]
	strh r6, [r0, #4]
	mov r1, #3
	strb r1, [r0, #6]
	mov r1, #2
	strb r1, [r0, #7]
	add r0, sp, #0xc
	str r0, [sp]
	str r6, [sp, #4]
	ldrh r0, [r5, r7]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x5c]
	bl sub_0204C040
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1]
	mov r1, #0
	bl sub_0204C520
	add r5, #0xb8
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	add r0, r4, #0
	bl sub_0204AB0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B5B4C: .word 0x000043C8
	thumb_func_end ovy199_21b5acc

	thumb_func_start ovy199_21b5b50
ovy199_21b5b50: ; 0x021B5B50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _021B5BF8 ; =0x000043C8
	add r5, r0, #0
	ldrh r1, [r5, r6]
	mov r0, #0x19
	bl sub_0204AA30
	add r4, r0, #0
	mov r0, #1
	mov r1, #2
	bl sub_02026670
	mov r7, #0
	add r1, r0, #0
	mov r3, #2
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r5, r6]
	mov r2, #0
	add r3, #0xfe
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0204BBB8
	str r0, [r5, #0x34]
	mov r0, #1
	mov r1, #1
	bl sub_02026670
	add r1, r0, #0
	ldrh r0, [r5, r6]
	mov r2, #0
	mov r3, #0
	str r0, [sp]
	add r0, r4, #0
	bl sub_0204B81C
	str r0, [r5, #0x50]
	ldrh r3, [r5, r6]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0204BDE0
	str r0, [r5, #0x6c]
	add r0, r4, #0
	bl sub_0204AB0C
	mov r0, #0x9c
	add r1, sp, #0xc
	strh r0, [r1]
	mov r0, #0x1c
	strh r0, [r1, #2]
	strh r7, [r1, #4]
	strb r7, [r1, #6]
	mov r0, #2
	strb r0, [r1, #7]
	add r0, sp, #0xc
	str r0, [sp]
	str r7, [sp, #4]
	ldrh r0, [r5, r6]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x50]
	ldr r2, [r5, #0x34]
	ldr r3, [r5, #0x6c]
	bl sub_0204C040
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1]
	mov r1, #0
	bl sub_0204C520
	add r5, #0xbc
	ldr r0, [r5]
	mov r1, #0
	bl sub_0204C124
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021B5BF8: .word 0x000043C8
	thumb_func_end ovy199_21b5b50

	thumb_func_start ovy199_21b5bfc
ovy199_21b5bfc: ; 0x021B5BFC
	push {r3, lr}
	ldr r3, _021B5C50 ; =0x000001F6
	cmp r1, r3
	beq _021B5C1E
	add r2, r3, #1
	cmp r1, r2
	bne _021B5C32
	add r1, r0, #0
	ldr r2, _021B5C54 ; =0x0000FFF1
	add r1, #0x80
	str r2, [r1]
	ldr r1, _021B5C58 ; =ovy199_21b5de4
	mov r2, #0xda
	bl sub_021B5CD4
	mov r0, #1
	pop {r3, pc}
_021B5C1E:
	add r1, r0, #0
	ldr r2, _021B5C5C ; =0x0000FFF2
	add r1, #0x80
	str r2, [r1]
	ldr r1, _021B5C58 ; =ovy199_21b5de4
	mov r2, #0xde
	bl sub_021B5CD4
	mov r0, #1
	pop {r3, pc}
_021B5C32:
	sub r3, #0x66
	cmp r1, r3
	blt _021B5C4C
	add r1, r0, #0
	ldr r2, _021B5C60 ; =0x0000FFF3
	add r1, #0x80
	str r2, [r1]
	ldr r1, _021B5C58 ; =ovy199_21b5de4
	mov r2, #0xe4
	bl sub_021B5CD4
	mov r0, #1
	pop {r3, pc}
_021B5C4C:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021B5C50: .word 0x000001F6
_021B5C54: .word 0x0000FFF1
_021B5C58: .word ovy199_21b5de4
_021B5C5C: .word 0x0000FFF2
_021B5C60: .word 0x0000FFF3
	thumb_func_end ovy199_21b5bfc

	thumb_func_start ovy199_21b5c64
ovy199_21b5c64: ; 0x021B5C64
	push {r3, lr}
	ldr r1, [r0, #0x20]
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #2
	bne _021B5C76
	mov r0, #0
	pop {r3, pc}
_021B5C76:
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _021B5C86
	ldrh r0, [r1, #0xc]
	cmp r0, #4
	bne _021B5C86
	mov r0, #0
	pop {r3, pc}
_021B5C86:
	bl sub_02042788
	cmp r0, #0
	beq _021B5C92
	mov r0, #1
	pop {r3, pc}
_021B5C92:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy199_21b5c64

	thumb_func_start sub_021B5C98
sub_021B5C98: ; 0x021B5C98
	ldr r1, [r0, #0x20]
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _021B5CAA
	ldrh r0, [r1, #0xc]
	cmp r0, #0
	bne _021B5CAA
	mov r0, #1
	bx lr
_021B5CAA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B5C98

	thumb_func_start sub_021B5CB0
sub_021B5CB0: ; 0x021B5CB0
	ldr r1, [r0, #0x20]
	ldr r0, [r1, #0x50]
	cmp r0, #0
	beq _021B5CCA
	ldrh r0, [r1, #0xc]
	cmp r0, #0
	bne _021B5CC2
	mov r0, #1
	bx lr
_021B5CC2:
	cmp r0, #4
	bne _021B5CCA
	mov r0, #1
	bx lr
_021B5CCA:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B5CB0

	thumb_func_start sub_021B5CD0
sub_021B5CD0: ; 0x021B5CD0
	str r1, [r0, #0x50]
	bx lr
	thumb_func_end sub_021B5CD0

	thumb_func_start sub_021B5CD4
sub_021B5CD4: ; 0x021B5CD4
	ldr r3, _021B5CD8 ; =sub_021B5CD0
	bx r3
	.align 2, 0
_021B5CD8: .word sub_021B5CD0
	thumb_func_end sub_021B5CD4

	thumb_func_start ovy199_21b5cdc
ovy199_21b5cdc: ; 0x021B5CDC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B5CF2
	ldr r2, _021B5CF4 ; =0x0000015E
	add r0, r4, #0
	mov r1, #0
	bl sub_021B5CD4
_021B5CF2:
	pop {r4, pc}
	.align 2, 0
_021B5CF4: .word 0x0000015E
	thumb_func_end ovy199_21b5cdc

	thumb_func_start ovy199_21b5cf8
ovy199_21b5cf8: ; 0x021B5CF8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B5D2A
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #0
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	ldr r1, _021B5D30 ; =ovy199_21b5cdc
	ldr r2, _021B5D34 ; =0x00000172
	add r0, r4, #0
	bl sub_021B5CD4
_021B5D2A:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B5D30: .word ovy199_21b5cdc
_021B5D34: .word 0x00000172
	thumb_func_end ovy199_21b5cf8

	thumb_func_start ovy199_21b5d38
ovy199_21b5d38: ; 0x021B5D38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021B49C0
	cmp r0, #0
	beq _021B5D5A
	ldr r0, [r4, #8]
	bl ovy199_21b4924
	mov r0, #0
	str r0, [r4, #8]
	ldr r1, _021B5D5C ; =0x021B5E6D
	ldr r2, _021B5D60 ; =0x00000183
	add r0, r4, #0
	bl sub_021B5CD4
_021B5D5A:
	pop {r4, pc}
	.align 2, 0
_021B5D5C: .word 0x021B5E6D
_021B5D60: .word 0x00000183
	thumb_func_end ovy199_21b5d38

	thumb_func_start ovy199_21b5d64
ovy199_21b5d64: ; 0x021B5D64
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B5DD0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B5D82
	bl sub_0203DA48
	cmp r0, #0
	beq _021B5DD0
_021B5D82:
	add r0, r4, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B5D9A
	ldr r0, [r4, #0x2c]
	bl sub_02017884
	add r0, r4, #0
	mov r1, #0
	add r0, #0xad
	strb r1, [r0]
_021B5D9A:
	add r0, r4, #0
	bl ovy199_21b7de0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B5DC6
	bl ovy199_21b4b0c
	cmp r0, #0
	beq _021B5DBA
	mov r2, #0x66
	ldr r1, _021B5DD4 ; =ovy199_21b5d38
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B5CD4
_021B5DBA:
	ldr r1, _021B5DD8 ; =0x021B5E6D
	ldr r2, _021B5DDC ; =0x0000019A
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B5DC6:
	ldr r1, _021B5DD8 ; =0x021B5E6D
	ldr r2, _021B5DE0 ; =0x0000019D
	add r0, r4, #0
	bl sub_021B5CD4
_021B5DD0:
	pop {r4, pc}
	nop
_021B5DD4: .word ovy199_21b5d38
_021B5DD8: .word 0x021B5E6D
_021B5DDC: .word 0x0000019A
_021B5DE0: .word 0x0000019D
	thumb_func_end ovy199_21b5d64

	thumb_func_start ovy199_21b5de4
ovy199_21b5de4: ; 0x021B5DE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0]
	ldr r0, [r5, #0x10]
	add r4, #0x1d
	cmp r0, #0
	beq _021B5DF8
	bl sub_0219D124
_021B5DF8:
	add r0, r5, #0
	add r0, #0x80
	ldr r2, [r0]
	ldr r1, _021B5E60 ; =0x0000FFF0
	cmp r2, r1
	bne _021B5E08
	mov r4, #0x27
	b _021B5E34
_021B5E08:
	add r0, r1, #1
	cmp r2, r0
	bne _021B5E12
	mov r4, #0x28
	b _021B5E34
_021B5E12:
	add r0, r1, #2
	cmp r2, r0
	bne _021B5E1C
	mov r4, #0x29
	b _021B5E34
_021B5E1C:
	add r0, r1, #3
	cmp r2, r0
	bne _021B5E24
	b _021B5E32
_021B5E24:
	cmp r2, #0xa
	bne _021B5E2A
	b _021B5E32
_021B5E2A:
	cmp r2, #0
	ble _021B5E32
	cmp r2, #0xb
	blt _021B5E34
_021B5E32:
	mov r4, #0x26
_021B5E34:
	ldr r0, [r5, #0x18]
	bl ovy199_21b45a8
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl ovy199_21b5098
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_021B46AC
	ldr r0, [r5, #0x18]
	mov r1, #1
	mov r2, #0x10
	bl ovy199_21b46bc
	ldr r1, _021B5E64 ; =ovy199_21b5d64
	ldr r2, _021B5E68 ; =0x000001C9
	add r0, r5, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B5E60: .word 0x0000FFF0
_021B5E64: .word ovy199_21b5d64
_021B5E68: .word 0x000001C9
	thumb_func_end ovy199_21b5de4
_021B5E6C:
	.byte 0x72, 0x22, 0x01, 0x6A
	.byte 0x06, 0x23, 0x92, 0x00, 0x8B, 0x50, 0x02, 0x49, 0x02, 0x4B, 0x11, 0x32, 0x18, 0x47, 0xC0, 0x46
	.byte 0xF9, 0x5C, 0x1B, 0x02, 0xD5, 0x5C, 0x1B, 0x02

	thumb_func_start ovy199_21b5e88
ovy199_21b5e88: ; 0x021B5E88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B5EB2
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B5EA8
	bl sub_0203DA48
	cmp r0, #0
	beq _021B5EB2
_021B5EA8:
	ldr r1, _021B5EB4 ; =0x021B5E6D
	ldr r2, _021B5EB8 ; =0x000001E9
	add r0, r4, #0
	bl sub_021B5CD4
_021B5EB2:
	pop {r4, pc}
	.align 2, 0
_021B5EB4: .word 0x021B5E6D
_021B5EB8: .word 0x000001E9
	thumb_func_end ovy199_21b5e88

	thumb_func_start ovy199_21b5ebc
ovy199_21b5ebc: ; 0x021B5EBC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r3, _021B5F20 ; =0x021B9800
	add r2, sp, #0
	add r5, r0, #0
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	add r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B5F12
	ldr r0, [r5, #0x18]
	bl ovy199_21b45a8
	add r1, r5, #0
	add r1, #0xa8
	ldrb r1, [r1]
	ldr r0, [r5, #0x18]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_021B46AC
	ldr r0, [r5, #0x18]
	mov r1, #1
	mov r2, #8
	mov r4, #8
	bl ovy199_21b46bc
	ldr r1, _021B5F24 ; =ovy199_21b5e88
	add r0, r5, #0
	lsl r2, r4, #6
	bl sub_021B5CD4
	add sp, #0x20
	pop {r3, r4, r5, pc}
_021B5F12:
	ldr r1, _021B5F28 ; =0x021B5E6D
	ldr r2, _021B5F2C ; =0x00000203
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B5F20: .word 0x021B9800
_021B5F24: .word ovy199_21b5e88
_021B5F28: .word 0x021B5E6D
_021B5F2C: .word 0x00000203
	thumb_func_end ovy199_21b5ebc

	thumb_func_start ovy199_21b5f30
ovy199_21b5f30: ; 0x021B5F30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B5F76
	ldr r0, [r4, #0x78]
	sub r0, r0, #1
	str r0, [r4, #0x78]
	cmp r0, #0
	bgt _021B5F76
	bne _021B5F5A
	bl sub_02005F0C
	mov r0, #0
	bl sub_02005E54
	mov r0, #6
	bl sub_02005E68
_021B5F5A:
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B5F6C
	bl sub_0203DA48
	cmp r0, #0
	beq _021B5F76
_021B5F6C:
	ldr r1, _021B5F78 ; =ovy199_21b5ebc
	ldr r2, _021B5F7C ; =0x0000021B
	add r0, r4, #0
	bl sub_021B5CD4
_021B5F76:
	pop {r4, pc}
	.align 2, 0
_021B5F78: .word ovy199_21b5ebc
_021B5F7C: .word 0x0000021B
	thumb_func_end ovy199_21b5f30

	thumb_func_start ovy199_21b5f80
ovy199_21b5f80: ; 0x021B5F80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B5FEC
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B5FA0
	bl sub_0203DA48
	cmp r0, #0
	beq _021B5FEC
_021B5FA0:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _021B5FB2
	ldr r1, _021B5FF0 ; =ovy199_21b5ebc
	ldr r2, _021B5FF4 ; =0x00000227
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B5FB2:
	ldr r0, [r4, #0x18]
	bl ovy199_21b47bc
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x6c]
	ldr r3, [r4, #0xc]
	mov r1, #0x16
	bl ovy199_21b452c
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl ovy199_21b4440
	mov r0, #1
	bl sub_02005E54
	bl sub_02005ED4
	ldr r0, _021B5FF8 ; =0x00000515
	ldr r1, _021B5FFC ; =0x0000FFFF
	bl sub_02005DF4
	mov r0, #0xb4
	str r0, [r4, #0x78]
	ldr r1, _021B6000 ; =ovy199_21b5f30
	ldr r2, _021B6004 ; =0x00000232
	add r0, r4, #0
	bl sub_021B5CD4
_021B5FEC:
	pop {r4, pc}
	nop
_021B5FF0: .word ovy199_21b5ebc
_021B5FF4: .word 0x00000227
_021B5FF8: .word 0x00000515
_021B5FFC: .word 0x0000FFFF
_021B6000: .word ovy199_21b5f30
_021B6004: .word 0x00000232
	thumb_func_end ovy199_21b5f80

	thumb_func_start ovy199_21b6008
ovy199_21b6008: ; 0x021B6008
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0
	bl sub_021B5074
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	bl sub_021B518C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b6008

	thumb_func_start ovy199_21b6028
ovy199_21b6028: ; 0x021B6028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021B6042
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, #0xc]
_021B6042:
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x48
	add r2, #0x4c
	bl sub_02007994
	cmp r0, #0
	beq _021B60DE
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _021B60E0 ; =0x00000255
	ldr r3, _021B60E4 ; =0x021B9B50
	str r0, [sp]
	ldrh r0, [r5]
	mov r2, #1
	bl sub_0203A1FC
	add r6, r0, #0
	bl sub_0201C2C8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02009998
	add r1, r6, #0
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021B60B2
	add r0, r6, #0
	mov r1, #0x9e
	mov r2, #0
	mov r4, #0
	bl sub_0201CCF8
	add r1, r0, #0
	cmp r1, #0x64
	bne _021B6098
	str r4, [r5, #0x6c]
_021B6098:
	ldr r0, [r5, #0x6c]
	add r0, r1, r0
	cmp r0, #0x64
	ble _021B60AA
	mov r0, #0x64
	sub r0, r0, r1
	str r0, [r5, #0x6c]
	mov r1, #0x64
	b _021B60AC
_021B60AA:
	add r1, r0, #0
_021B60AC:
	add r0, r6, #0
	bl sub_0201EF2C
_021B60B2:
	add r0, r6, #0
	bl sub_0201D624
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02007794
	add r0, r7, #0
	mov r1, #0
	str r6, [r5, #0xc]
	bl sub_02009A00
	ldr r1, [r5, #0x7c]
	add r0, r7, #0
	bl sub_02009ADC
	ldr r0, [r5, #0x28]
	bl sub_0200FB40
	mov r1, #0xe8
	bl sub_0200F98C
_021B60DE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B60E0: .word 0x00000255
_021B60E4: .word 0x021B9B50
	thumb_func_end ovy199_21b6028

	thumb_func_start ovy199_21b60e8
ovy199_21b60e8: ; 0x021B60E8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	ldr r0, [r5, #0x2c]
	bl sub_02017850
	cmp r0, #2
	bne _021B619A
	add r0, r5, #0
	mov r4, #0
	add r0, #0xad
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0xab
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0xae
	strb r4, [r0]
	mov r0, #0x1c
	bl sub_02038BC8
	ldr r0, [r5, #0x18]
	bl ovy199_21b45a8
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0xc]
	mov r1, #0x2d
	mov r2, #0
	bl ovy199_21b452c
	ldr r0, [r5, #0x18]
	mov r1, #1
	mov r2, #4
	bl ovy199_21b46bc
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_021B506C
	ldr r0, [r5, #0x14]
	mov r1, #6
	mov r2, #7
	bl sub_021B5074
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #1
	bl sub_021B5074
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl ovy199_21b5098
	add r0, sp, #0
	strh r4, [r0]
	ldr r0, _021B61A0 ; =ovy199_21b6008
	str r5, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0x14]
	mov r1, #0
	add r2, sp, #0
	bl sub_021B5088
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_021B5408
	ldr r0, [r5, #0xc]
	bl sub_0201D620
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	mov r2, #0
	bl ovy199_21b5210
	ldr r0, [r5, #0x14]
	bl ovy199_21b52e4
	ldr r0, _021B61A4 ; =0x00000658
	bl sub_02006254
	ldr r1, _021B61A8 ; =ovy199_21b5f80
	ldr r2, _021B61AC ; =0x000002AE
	add r0, r5, #0
	bl sub_021B5CD4
_021B619A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021B61A0: .word ovy199_21b6008
_021B61A4: .word 0x00000658
_021B61A8: .word ovy199_21b5f80
_021B61AC: .word 0x000002AE
	thumb_func_end ovy199_21b60e8

	thumb_func_start ovy199_21b61b0
ovy199_21b61b0: ; 0x021B61B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r4, #0
	bl ovy199_21b5bfc
	cmp r0, #0
	bne _021B61EE
	ldr r0, [r4, #0x10]
	bl sub_0219D140
	cmp r0, #0
	bne _021B61EE
	ldr r0, [r4, #0x10]
	bl sub_0219D1A4
	ldr r0, [r4, #0x28]
	bl sub_02009B50
	add r0, r4, #0
	mov r1, #1
	add r0, #0xae
	strb r1, [r0]
	ldr r1, _021B61F0 ; =ovy199_21b60e8
	ldr r2, _021B61F4 ; =0x000002C7
	add r0, r4, #0
	bl sub_021B5CD4
_021B61EE:
	pop {r4, pc}
	.align 2, 0
_021B61F0: .word ovy199_21b60e8
_021B61F4: .word 0x000002C7
	thumb_func_end ovy199_21b61b0

	thumb_func_start ovy199_21b61f8
ovy199_21b61f8: ; 0x021B61F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _021B6208
	sub r0, r0, #1
	str r0, [r4, #0x78]
	pop {r4, pc}
_021B6208:
	bl sub_02042788
	cmp r0, #0
	beq _021B6246
	ldr r1, [r4, #0x10]
	mov r0, #8
	bl sub_0219D010
	cmp r0, #0
	beq _021B6246
	mov r0, #1
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r4, #0x10]
	bl sub_0219D0EC
	add r1, r4, #2
	mov r2, #4
	bl sub_021A0854
	ldr r0, [r4, #0x10]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B6246
	ldr r1, _021B6248 ; =ovy199_21b61b0
	ldr r2, _021B624C ; =0x000002E7
	add r0, r4, #0
	bl sub_021B5CD4
_021B6246:
	pop {r4, pc}
	.align 2, 0
_021B6248: .word ovy199_21b61b0
_021B624C: .word 0x000002E7
	thumb_func_end ovy199_21b61f8

	thumb_func_start ovy199_21b6250
ovy199_21b6250: ; 0x021B6250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	cmp r0, #0x64
	bge _021B625E
	add r0, r0, #1
	str r0, [r4, #0x70]
_021B625E:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x70]
	bl ovy199_21b5488
	ldr r0, [r4, #0x2c]
	bl sub_02017850
	cmp r0, #1
	bne _021B6284
	mov r0, #0xbe
	bl sub_02005748
	mov r2, #3
	str r0, [r4, #0x78]
	ldr r1, _021B6288 ; =ovy199_21b61f8
	add r0, r4, #0
	lsl r2, r2, #8
	bl sub_021B5CD4
_021B6284:
	pop {r4, pc}
	nop
_021B6288: .word ovy199_21b61f8
	thumb_func_end ovy199_21b6250

	thumb_func_start ovy199_21b628c
ovy199_21b628c: ; 0x021B628C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [r6, #0x28]
	bl sub_02009B50
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	add r0, #0xab
	strb r1, [r0]
	add r0, r6, #0
	bl ovy199_21b6028
	add r0, r6, #0
	bl sub_021B5CB0
	cmp r0, #0
	bne _021B62EA
	ldr r1, [r6, #0x38]
	add r0, r7, #0
	bl ovy199_21b6adc
	ldr r2, [r6, #0x38]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy199_21b6c2c
	ldr r1, [r6, #0x38]
	add r0, r7, #0
	bl ovy199_21b6a7c
	ldr r1, [r6, #0x38]
	add r0, r7, #0
	add r1, #0x5a
	ldrb r1, [r1]
	bl sub_020099D8
	mov r1, #0x47
	ldr r2, [r6, #0x38]
	lsl r1, r1, #2
	add r1, r2, r1
	ldrh r2, [r6]
	ldr r0, [r6, #0x2c]
	bl ovy199_21b7ec8
	b _021B6326
_021B62EA:
	ldr r5, [r6, #0x20]
	mov r0, #8
	add r5, #0xc
	bl sub_02005748
	ldrb r1, [r5, #6]
	str r1, [sp]
	ldrh r1, [r5, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldrh r2, [r5, #2]
	ldrb r3, [r5, #7]
	add r0, r6, #0
	add r1, r7, #0
	bl ovy199_21b6b40
	mov r4, #0
_021B630C:
	lsl r2, r4, #1
	add r3, r5, r4
	add r2, r5, r2
	add r3, #0x30
	ldrh r2, [r2, #8]
	ldrb r3, [r3]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02009A50
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B630C
_021B6326:
	add r0, r6, #0
	mov r1, #1
	add r0, #0xad
	strb r1, [r0]
	ldr r0, [r6, #0x2c]
	bl sub_0201782C
	ldr r1, _021B6344 ; =ovy199_21b6250
	ldr r2, _021B6348 ; =0x0000032E
	add r0, r6, #0
	bl sub_021B5CD4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B6344: .word ovy199_21b6250
_021B6348: .word 0x0000032E
	thumb_func_end ovy199_21b628c

	thumb_func_start ovy199_21b634c
ovy199_21b634c: ; 0x021B634C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy199_21b4b0c
	cmp r0, #0
	beq _021B6366
	ldr r1, _021B637C ; =ovy199_21b6680
	ldr r2, _021B6380 ; =0x00000336
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B6366:
	add r0, r4, #0
	ldr r1, _021B6384 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6388 ; =ovy199_21b5de4
	ldr r2, _021B638C ; =0x0000033A
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	nop
_021B637C: .word ovy199_21b6680
_021B6380: .word 0x00000336
_021B6384: .word 0x0000FFF0
_021B6388: .word ovy199_21b5de4
_021B638C: .word 0x0000033A
	thumb_func_end ovy199_21b634c

	thumb_func_start ovy199_21b6390
ovy199_21b6390: ; 0x021B6390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r0, #0xa5
	strb r4, [r0]
	ldr r0, [r5, #0x40]
	bl sub_0203A24C
	add r0, r5, #0
	add r0, #0xae
	strb r4, [r0]
	ldr r1, _021B63B4 ; =ovy199_21b634c
	ldr r2, _021B63B8 ; =0x00000345
	add r0, r5, #0
	str r4, [r5, #0x40]
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B63B4: .word ovy199_21b634c
_021B63B8: .word 0x00000345
	thumb_func_end ovy199_21b6390

	thumb_func_start ovy199_21b63bc
ovy199_21b63bc: ; 0x021B63BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_02017934
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #4
	mov r6, #4
	bl sub_020178F4
	cmp r0, #2
	bne _021B63F6
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020075E0
	add r0, r4, #0
	bl sub_02009918
	mov r1, #1
	bl sub_020098CC
	mov r2, #0x35
	ldr r1, _021B63F8 ; =ovy199_21b6390
	add r0, r5, #0
	lsl r2, r2, #4
	bl sub_021B5CD4
_021B63F6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B63F8: .word ovy199_21b6390
	thumb_func_end ovy199_21b63bc

	thumb_func_start ovy199_21b63fc
ovy199_21b63fc: ; 0x021B63FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_02017934
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	bl sub_021B4954
	mov r1, #0x26
	lsl r1, r1, #8
	add r4, r0, #0
	bl sub_0204405C
	str r0, [sp, #8]
	mov r0, #0x26
	lsl r0, r0, #8
	ldrh r1, [r4, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _021B643E
	add r0, r5, #0
	ldr r1, _021B64A0 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B64A4 ; =ovy199_21b5de4
	ldr r2, _021B64A8 ; =0x00000362
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021B643E:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xae
	strb r1, [r0]
	ldr r6, _021B64AC ; =0x00000367
	mov r1, #0xa
	str r6, [sp]
	ldrh r0, [r5]
	ldr r3, _021B64B0 ; =0x021B9B50
	lsl r1, r1, #0xa
	mov r2, #0
	bl sub_0203A1FC
	add r7, r0, #0
	mov r0, #0xa
	str r7, [r5, #0x40]
	lsl r0, r0, #0xa
	str r0, [sp]
	ldrh r2, [r5]
	ldr r0, [sp, #4]
	mov r1, #4
	add r3, r7, #0
	bl sub_02007560
	mov r2, #0x26
	add r0, r4, #0
	add r1, r7, #0
	lsl r2, r2, #8
	blx MI_CpuCopy8
	ldr r0, [sp, #4]
	bl sub_02009918
	ldr r1, [sp, #8]
	bl sub_020098D4
	ldr r0, [r5, #0x2c]
	mov r1, #4
	bl sub_020178C4
	add r6, #0xb
	ldr r1, _021B64B4 ; =ovy199_21b63bc
	add r0, r5, #0
	add r2, r6, #0
	bl sub_021B5CD4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021B64A0: .word 0x0000FFF0
_021B64A4: .word ovy199_21b5de4
_021B64A8: .word 0x00000362
_021B64AC: .word 0x00000367
_021B64B0: .word 0x021B9B50
_021B64B4: .word ovy199_21b63bc
	thumb_func_end ovy199_21b63fc

	thumb_func_start ovy199_21b64b8
ovy199_21b64b8: ; 0x021B64B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r0, #0xa6
	strb r4, [r0]
	ldr r0, [r5, #0x3c]
	bl sub_0203A24C
	add r0, r5, #0
	add r0, #0xae
	strb r4, [r0]
	ldr r1, _021B64DC ; =ovy199_21b634c
	ldr r2, _021B64E0 ; =0x0000037D
	add r0, r5, #0
	str r4, [r5, #0x3c]
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B64DC: .word ovy199_21b634c
_021B64E0: .word 0x0000037D
	thumb_func_end ovy199_21b64b8

	thumb_func_start ovy199_21b64e4
ovy199_21b64e4: ; 0x021B64E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_02017934
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #7
	mov r6, #7
	bl sub_020178F4
	cmp r0, #2
	bne _021B6510
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020075E0
	ldr r1, _021B6514 ; =ovy199_21b64b8
	ldr r2, _021B6518 ; =0x00000387
	add r0, r5, #0
	bl sub_021B5CD4
_021B6510:
	pop {r4, r5, r6, pc}
	nop
_021B6514: .word ovy199_21b64b8
_021B6518: .word 0x00000387
	thumb_func_end ovy199_21b64e4

	thumb_func_start ovy199_21b651c
ovy199_21b651c: ; 0x021B651C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	bl sub_02017934
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl sub_021B4954
	mov r1, #0x62
	lsl r1, r1, #8
	add r4, r0, #0
	bl sub_0204405C
	mov r1, #0x62
	lsl r1, r1, #8
	ldrh r1, [r4, r1]
	cmp r0, r1
	beq _021B6556
	add r0, r5, #0
	ldr r1, _021B65AC ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B65B0 ; =ovy199_21b5de4
	ldr r2, _021B65B4 ; =0x00000395
	add r0, r5, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, r6, r7, pc}
_021B6556:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xae
	strb r1, [r0]
	ldr r7, _021B65B8 ; =0x0000039A
	mov r1, #0x1a
	str r7, [sp]
	ldrh r0, [r5]
	ldr r3, _021B65BC ; =0x021B9B50
	lsl r1, r1, #0xa
	mov r2, #0
	bl sub_0203A1FC
	str r0, [r5, #0x3c]
	mov r0, #0x1a
	lsl r0, r0, #0xa
	str r0, [sp]
	ldrh r2, [r5]
	ldr r3, [r5, #0x3c]
	add r0, r6, #0
	mov r1, #7
	bl sub_02007560
	mov r2, #0x62
	ldr r1, [r5, #0x3c]
	add r0, r4, #0
	lsl r2, r2, #8
	blx MI_CpuCopy8
	ldr r0, [r5, #0x3c]
	mov r1, #1
	bl sub_0200F194
	ldr r0, [r5, #0x2c]
	mov r1, #7
	bl sub_020178C4
	ldr r1, _021B65C0 ; =ovy199_21b64e4
	add r0, r5, #0
	add r2, r7, #6
	bl sub_021B5CD4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B65AC: .word 0x0000FFF0
_021B65B0: .word ovy199_21b5de4
_021B65B4: .word 0x00000395
_021B65B8: .word 0x0000039A
_021B65BC: .word 0x021B9B50
_021B65C0: .word ovy199_21b64e4
	thumb_func_end ovy199_21b651c

	thumb_func_start ovy199_21b65c4
ovy199_21b65c4: ; 0x021B65C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_0200CD64
	cmp r0, #0
	beq _021B65E6
	add r0, r4, #0
	mov r1, #0
	add r0, #0xae
	strb r1, [r0]
	str r1, [r4, #0x30]
	ldr r1, _021B65E8 ; =ovy199_21b634c
	ldr r2, _021B65EC ; =0x000003AB
	add r0, r4, #0
	bl sub_021B5CD4
_021B65E6:
	pop {r4, pc}
	.align 2, 0
_021B65E8: .word ovy199_21b634c
_021B65EC: .word 0x000003AB
	thumb_func_end ovy199_21b65c4

	thumb_func_start ovy199_21b65f0
ovy199_21b65f0: ; 0x021B65F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, #0xa4
	strb r1, [r0]
	ldr r0, [r5, #8]
	bl sub_021B4954
	lsr r1, r4, #0x1f
	add r1, r4, r1
	asr r6, r1, #1
	ldr r1, _021B666C ; =0x00017BF0
	add r7, r0, #0
	cmp r4, r1
	ble _021B6626
	add r0, r5, #0
	ldr r1, _021B6670 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	mov r2, #0xef
	ldr r1, _021B6674 ; =ovy199_21b5de4
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_021B5CD4
	pop {r3, r4, r5, r6, r7, pc}
_021B6626:
	add r1, r4, #0
	bl sub_0204405C
	lsl r1, r6, #1
	ldrh r1, [r7, r1]
	cmp r0, r1
	beq _021B6648
	add r0, r5, #0
	ldr r1, _021B6670 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6674 ; =ovy199_21b5de4
	ldr r2, _021B6678 ; =0x000003C2
	add r0, r5, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, r6, r7, pc}
_021B6648:
	add r0, r5, #0
	mov r1, #1
	add r0, #0xae
	strb r1, [r0]
	ldrh r3, [r5]
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0200CD34
	mov r2, #0xf2
	str r0, [r5, #0x30]
	ldr r1, _021B667C ; =ovy199_21b65c4
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_021B5CD4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B666C: .word 0x00017BF0
_021B6670: .word 0x0000FFF0
_021B6674: .word ovy199_21b5de4
_021B6678: .word 0x000003C2
_021B667C: .word ovy199_21b65c4
	thumb_func_end ovy199_21b65f0

	thumb_func_start ovy199_21b6680
ovy199_21b6680: ; 0x021B6680
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021B49C0
	cmp r0, #0
	beq _021B66D2
	ldr r0, [r4, #8]
	bl sub_021B49E0
	cmp r0, #0
	beq _021B66AC
	add r0, r4, #0
	ldr r1, _021B66D4 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B66D8 ; =ovy199_21b5de4
	ldr r2, _021B66DC ; =0x000003D5
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B66AC:
	ldr r0, [r4, #8]
	bl ovy199_21b4924
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x70]
	cmp r0, #0x64
	bge _021B66C0
	add r0, #0xa
	str r0, [r4, #0x70]
_021B66C0:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x70]
	bl ovy199_21b5488
	ldr r1, _021B66E0 ; =ovy199_21b6a04
	ldr r2, _021B66E4 ; =0x000003E2
	add r0, r4, #0
	bl sub_021B5CD4
_021B66D2:
	pop {r4, pc}
	.align 2, 0
_021B66D4: .word 0x0000FFF0
_021B66D8: .word ovy199_21b5de4
_021B66DC: .word 0x000003D5
_021B66E0: .word ovy199_21b6a04
_021B66E4: .word 0x000003E2
	thumb_func_end ovy199_21b6680

	thumb_func_start ovy199_21b66e8
ovy199_21b66e8: ; 0x021B66E8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xa7
	ldrb r1, [r1]
	cmp r1, #0
	beq _021B6700
	cmp r1, #1
	beq _021B670A
	cmp r1, #2
	beq _021B671C
	pop {r4, pc}
_021B6700:
	ldr r1, _021B6728 ; =ovy199_21b63fc
	ldr r2, _021B672C ; =0x000003EA
	bl sub_021B5CD4
	pop {r4, pc}
_021B670A:
	ldr r0, [r4, #8]
	bl sub_021B4B40
	add r1, r0, #0
	add r0, r4, #0
	sub r1, r1, #2
	bl ovy199_21b65f0
	pop {r4, pc}
_021B671C:
	ldr r1, _021B6730 ; =ovy199_21b651c
	ldr r2, _021B6734 ; =0x000003F2
	bl sub_021B5CD4
	pop {r4, pc}
	nop
_021B6728: .word ovy199_21b63fc
_021B672C: .word 0x000003EA
_021B6730: .word ovy199_21b651c
_021B6734: .word 0x000003F2
	thumb_func_end ovy199_21b66e8

	thumb_func_start ovy199_21b6738
ovy199_21b6738: ; 0x021B6738
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021B49E0
	cmp r0, #0
	beq _021B675A
	add r0, r4, #0
	ldr r1, _021B6778 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B677C ; =ovy199_21b5de4
	ldr r2, _021B6780 ; =0x000003FE
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B675A:
	ldr r0, [r4, #8]
	bl sub_021B49C0
	cmp r0, #0
	beq _021B6774
	ldr r0, [r4, #8]
	bl sub_021B4A50
	ldr r1, _021B6784 ; =ovy199_21b66e8
	ldr r2, _021B6788 ; =0x00000409
	add r0, r4, #0
	bl sub_021B5CD4
_021B6774:
	pop {r4, pc}
	nop
_021B6778: .word 0x0000FFF0
_021B677C: .word ovy199_21b5de4
_021B6780: .word 0x000003FE
_021B6784: .word ovy199_21b66e8
_021B6788: .word 0x00000409
	thumb_func_end ovy199_21b6738

	thumb_func_start ovy199_21b678c
ovy199_21b678c: ; 0x021B678C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy199_21b4ad8
	cmp r0, #0
	beq _021B67A6
	ldr r1, _021B67BC ; =ovy199_21b6738
	ldr r2, _021B67C0 ; =0x00000412
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B67A6:
	add r0, r4, #0
	ldr r1, _021B67C4 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B67C8 ; =ovy199_21b5de4
	ldr r2, _021B67CC ; =0x00000416
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	nop
_021B67BC: .word ovy199_21b6738
_021B67C0: .word 0x00000412
_021B67C4: .word 0x0000FFF0
_021B67C8: .word ovy199_21b5de4
_021B67CC: .word 0x00000416
	thumb_func_end ovy199_21b678c

	thumb_func_start ovy199_21b67d0
ovy199_21b67d0: ; 0x021B67D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021B49E0
	cmp r0, #0
	beq _021B67F2
	add r0, r4, #0
	ldr r1, _021B682C ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6830 ; =ovy199_21b5de4
	ldr r2, _021B6834 ; =0x0000041F
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B67F2:
	ldr r0, [r4, #8]
	bl sub_021B49C0
	cmp r0, #0
	beq _021B682A
	ldr r0, [r4, #8]
	bl sub_021B4B40
	cmp r0, #0
	bne _021B681A
	add r0, r4, #0
	ldr r1, _021B682C ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6830 ; =ovy199_21b5de4
	ldr r2, _021B6838 ; =0x00000428
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B681A:
	ldr r0, [r4, #8]
	bl sub_021B4A50
	ldr r1, _021B683C ; =ovy199_21b678c
	ldr r2, _021B6840 ; =0x0000042E
	add r0, r4, #0
	bl sub_021B5CD4
_021B682A:
	pop {r4, pc}
	.align 2, 0
_021B682C: .word 0x0000FFF0
_021B6830: .word ovy199_21b5de4
_021B6834: .word 0x0000041F
_021B6838: .word 0x00000428
_021B683C: .word ovy199_21b678c
_021B6840: .word 0x0000042E
	thumb_func_end ovy199_21b67d0

	thumb_func_start ovy199_21b6844
ovy199_21b6844: ; 0x021B6844
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl ovy199_21b4aac
	cmp r0, #0
	beq _021B685E
	ldr r1, _021B6874 ; =ovy199_21b67d0
	ldr r2, _021B6878 ; =0x00000436
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B685E:
	add r0, r4, #0
	ldr r1, _021B687C ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6880 ; =ovy199_21b5de4
	ldr r2, _021B6884 ; =0x0000043A
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	nop
_021B6874: .word ovy199_21b67d0
_021B6878: .word 0x00000436
_021B687C: .word 0x0000FFF0
_021B6880: .word ovy199_21b5de4
_021B6884: .word 0x0000043A
	thumb_func_end ovy199_21b6844

	thumb_func_start ovy199_21b6888
ovy199_21b6888: ; 0x021B6888
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_021B49C0
	cmp r0, #0
	beq _021B695E
	ldr r0, [r4, #8]
	bl sub_021B49E0
	cmp r0, #0
	beq _021B68B4
	add r0, r4, #0
	ldr r1, _021B6960 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6964 ; =ovy199_21b5de4
	ldr r2, _021B6968 ; =0x00000445
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B68B4:
	add r0, r4, #0
	add r0, #0xa7
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B68C8
	cmp r0, #1
	beq _021B68FC
	cmp r0, #2
	beq _021B692E
	pop {r4, pc}
_021B68C8:
	add r2, r4, #0
	add r2, #0xa5
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	ldr r1, _021B696C ; =0x021B9B60
	bl ovy199_21b4a18
	cmp r0, #0
	beq _021B68E6
	ldr r1, _021B6970 ; =ovy199_21b6844
	ldr r2, _021B6974 ; =0x0000044C
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B68E6:
	add r0, r4, #0
	ldr r1, _021B6960 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	mov r2, #0x45
	ldr r1, _021B6964 ; =ovy199_21b5de4
	add r0, r4, #0
	lsl r2, r2, #4
	bl sub_021B5CD4
	pop {r4, pc}
_021B68FC:
	add r2, r4, #0
	add r2, #0xa4
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	ldr r1, _021B6978 ; =0x021B9B6C
	bl ovy199_21b4a18
	cmp r0, #0
	beq _021B691A
	ldr r1, _021B6970 ; =ovy199_21b6844
	ldr r2, _021B697C ; =0x00000455
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B691A:
	add r0, r4, #0
	ldr r1, _021B6960 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6964 ; =ovy199_21b5de4
	ldr r2, _021B6980 ; =0x00000459
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B692E:
	add r2, r4, #0
	add r2, #0xa6
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	ldr r1, _021B6984 ; =0x021B9B78
	bl ovy199_21b4a18
	cmp r0, #0
	beq _021B694C
	ldr r1, _021B6970 ; =ovy199_21b6844
	ldr r2, _021B6988 ; =0x0000045E
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B694C:
	add r0, r4, #0
	ldr r1, _021B6960 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6964 ; =ovy199_21b5de4
	ldr r2, _021B698C ; =0x00000462
	add r0, r4, #0
	bl sub_021B5CD4
_021B695E:
	pop {r4, pc}
	.align 2, 0
_021B6960: .word 0x0000FFF0
_021B6964: .word ovy199_21b5de4
_021B6968: .word 0x00000445
_021B696C: .word 0x021B9B60
_021B6970: .word ovy199_21b6844
_021B6974: .word 0x0000044C
_021B6978: .word 0x021B9B6C
_021B697C: .word 0x00000455
_021B6980: .word 0x00000459
_021B6984: .word 0x021B9B78
_021B6988: .word 0x0000045E
_021B698C: .word 0x00000462
	thumb_func_end ovy199_21b6888

	thumb_func_start ovy199_21b6990
ovy199_21b6990: ; 0x021B6990
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xa7
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B69A6
	cmp r0, #1
	beq _021B69AC
	cmp r0, #2
	beq _021B69B4
	b _021B69C4
_021B69A6:
	bl sub_0200CE50
	b _021B69B8
_021B69AC:
	mov r1, #2
	ldrh r0, [r4]
	lsl r1, r1, #0x10
	b _021B69BE
_021B69B4:
	bl sub_0200F164
_021B69B8:
	add r1, r0, #0
	ldrh r0, [r4]
	add r1, r1, #4
_021B69BE:
	bl ovy199_21b48c0
	str r0, [r4, #8]
_021B69C4:
	ldr r0, [r4, #8]
	bl ovy199_21b4988
	cmp r0, #0
	beq _021B69DA
	ldr r1, _021B69F0 ; =ovy199_21b6888
	ldr r2, _021B69F4 ; =0x0000047D
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B69DA:
	add r0, r4, #0
	ldr r1, _021B69F8 ; =0x0000FFF0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B69FC ; =ovy199_21b5de4
	ldr r2, _021B6A00 ; =0x00000481
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	nop
_021B69F0: .word ovy199_21b6888
_021B69F4: .word 0x0000047D
_021B69F8: .word 0x0000FFF0
_021B69FC: .word ovy199_21b5de4
_021B6A00: .word 0x00000481
	thumb_func_end ovy199_21b6990

	thumb_func_start ovy199_21b6a04
ovy199_21b6a04: ; 0x021B6A04
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xa5
	ldrb r1, [r1]
	cmp r1, #0
	beq _021B6A22
	add r1, r0, #0
	mov r2, #0
	add r1, #0xa7
	strb r2, [r1]
	ldr r1, _021B6A64 ; =ovy199_21b6990
	ldr r2, _021B6A68 ; =0x0000048A
	bl sub_021B5CD4
	pop {r3, pc}
_021B6A22:
	add r1, r0, #0
	add r1, #0xa4
	ldrb r1, [r1]
	cmp r1, #0
	beq _021B6A3E
	add r1, r0, #0
	mov r2, #1
	add r1, #0xa7
	strb r2, [r1]
	ldr r1, _021B6A64 ; =ovy199_21b6990
	ldr r2, _021B6A6C ; =0x0000048F
	bl sub_021B5CD4
	pop {r3, pc}
_021B6A3E:
	add r1, r0, #0
	add r1, #0xa6
	ldrb r1, [r1]
	cmp r1, #0
	beq _021B6A5A
	add r1, r0, #0
	mov r2, #2
	add r1, #0xa7
	strb r2, [r1]
	ldr r1, _021B6A64 ; =ovy199_21b6990
	ldr r2, _021B6A70 ; =0x00000494
	bl sub_021B5CD4
	pop {r3, pc}
_021B6A5A:
	ldr r1, _021B6A74 ; =ovy199_21b628c
	ldr r2, _021B6A78 ; =0x00000497
	bl sub_021B5CD4
	pop {r3, pc}
	.align 2, 0
_021B6A64: .word ovy199_21b6990
_021B6A68: .word 0x0000048A
_021B6A6C: .word 0x0000048F
_021B6A70: .word 0x00000494
_021B6A74: .word ovy199_21b628c
_021B6A78: .word 0x00000497
	thumb_func_end ovy199_21b6a04

	thumb_func_start ovy199_21b6a7c
ovy199_21b6a7c: ; 0x021B6A7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	mov r0, #0
	add r7, r6, #0
	str r0, [sp]
	mov r5, #0
	add r7, #0x98
_021B6A8C:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02009A98
	mov r1, #0x1a
	mul r1, r5
	add r1, r7, r1
	mov r2, #0x1a
	bl sub_02043E98
	cmp r0, #0
	beq _021B6AAA
	mov r0, #1
	str r0, [sp]
	b _021B6AB0
_021B6AAA:
	add r5, r5, #1
	cmp r5, #5
	blt _021B6A8C
_021B6AB0:
	ldr r0, [sp]
	cmp r0, #0
	beq _021B6AD8
	mov r5, #0
	add r6, #0x98
	mov r7, #0x1a
_021B6ABC:
	add r2, r5, #0
	mul r2, r7
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, r2
	bl sub_02009AB0
	add r5, r5, #1
	cmp r5, #5
	blt _021B6ABC
	add r0, r4, #0
	mov r1, #0x7f
	bl sub_02009AF8
_021B6AD8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b6a7c

	thumb_func_start ovy199_21b6adc
ovy199_21b6adc: ; 0x021B6ADC
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021B6B10 ; =0x0000027E
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	mov r4, #0
_021B6AE8:
	lsl r1, r4, #1
	add r1, r5, r1
	add r1, #0x5c
	ldrh r2, [r1]
	cmp r2, #0
	beq _021B6B08
	cmp r2, r7
	bhi _021B6B08
	add r3, r5, r4
	add r3, #0x84
	ldrb r3, [r3]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02009A50
	mov r0, #1
_021B6B08:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B6AE8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6B10: .word 0x0000027E
	thumb_func_end ovy199_21b6adc

	thumb_func_start ovy199_21b6b14
ovy199_21b6b14: ; 0x021B6B14
	push {r4, r5}
	ldr r2, _021B6B3C ; =0x0000027E
	mov r0, #0
	mov r5, #0
	mov r4, #1
_021B6B1E:
	lsl r3, r5, #1
	add r3, r1, r3
	add r3, #0x5c
	ldrh r3, [r3]
	cmp r3, #0
	beq _021B6B30
	cmp r3, r2
	bhi _021B6B30
	add r0, r4, #0
_021B6B30:
	add r5, r5, #1
	cmp r5, #0x14
	blt _021B6B1E
	pop {r4, r5}
	bx lr
	nop
_021B6B3C: .word 0x0000027E
	thumb_func_end ovy199_21b6b14

	thumb_func_start ovy199_21b6b40
ovy199_21b6b40: ; 0x021B6B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	ldr r0, [sp, #0x40]
	add r5, r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r4, r3, #0
	str r0, [sp, #0x18]
	cmp r5, #0
	beq _021B6C1E
	ldr r0, _021B6C24 ; =0x00000289
	cmp r5, r0
	bgt _021B6C1E
	ldrh r0, [r6]
	bl sub_020303D8
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x10]
	lsl r0, r5, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_0201EFBC
	str r0, [sp, #0x1c]
	lsl r0, r5, #0x10
	ldr r1, [sp, #0x1c]
	lsr r0, r0, #0x10
	mov r2, #0x14
	bl sub_0201EF1C
	add r7, r0, #0
	lsl r0, r5, #0x10
	ldr r1, [sp, #0x1c]
	lsr r0, r0, #0x10
	bl sub_0201EFE4
	str r0, [sp, #0xc]
	cmp r7, #0
	beq _021B6BA0
	cmp r7, #0xfe
	beq _021B6BA4
	cmp r7, #0xff
	beq _021B6BA8
	b _021B6BAC
_021B6BA0:
	mov r4, #0
	b _021B6BB8
_021B6BA4:
	mov r4, #1
	b _021B6BB8
_021B6BA8:
	mov r4, #2
	b _021B6BB8
_021B6BAC:
	cmp r4, #1
	ble _021B6BB8
	mov r0, #2
	bl sub_02005748
	add r4, r0, #0
_021B6BB8:
	ldr r0, [sp, #0xc]
	lsl r2, r5, #0x10
	str r0, [sp]
	lsl r3, r4, #0x10
	ldr r0, [r6, #0x2c]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl sub_0203044C
	cmp r0, #0
	beq _021B6BD4
	mov r0, #2
	str r0, [sp, #0x10]
_021B6BD4:
	ldr r0, [sp, #0x18]
	cmp r0, #8
	bls _021B6BDE
	mov r0, #0
	str r0, [sp, #0x18]
_021B6BDE:
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_0203047C
	ldr r1, _021B6C28 ; =0x0000FFFF
	cmp r0, r1
	beq _021B6C18
	ldr r0, [r6, #0x28]
	bl sub_0200E948
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x3c]
	str r1, [sp]
	ldr r1, [sp, #0x18]
	lsl r2, r2, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x10]
	lsl r3, r4, #0x18
	str r1, [sp, #8]
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200EA40
_021B6C18:
	ldr r0, [sp, #0x14]
	bl sub_02030420
_021B6C1E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6C24: .word 0x00000289
_021B6C28: .word 0x0000FFFF
	thumb_func_end ovy199_21b6b40

	thumb_func_start ovy199_21b6c2c
ovy199_21b6c2c: ; 0x021B6C2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
_021B6C38:
	lsl r0, r4, #3
	add r3, r5, r0
	ldrh r2, [r3, #4]
	cmp r2, #0
	beq _021B6C5E
	ldrb r0, [r3, #8]
	add r1, r7, #0
	str r0, [sp]
	ldrh r0, [r3, #6]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xa]
	str r0, [sp, #8]
	ldrb r3, [r3, #9]
	add r0, r6, #0
	bl ovy199_21b6b40
	add r4, r4, #1
	cmp r4, #0xa
	blt _021B6C38
_021B6C5E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b6c2c

	thumb_func_start ovy199_21b6c64
ovy199_21b6c64: ; 0x021B6C64
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021B6C98 ; =0x0000027E
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_021B6C6E:
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0x5c
	ldrh r2, [r0]
	cmp r2, #0
	beq _021B6C90
	add r0, r5, r4
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B6C90
	cmp r2, r7
	bhi _021B6C90
	ldr r0, [r6, #0x14]
	add r1, r4, #0
	bl sub_021B589C
_021B6C90:
	add r4, r4, #1
	cmp r4, #0x14
	blt _021B6C6E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6C98: .word 0x0000027E
	thumb_func_end ovy199_21b6c64

	thumb_func_start ovy199_21b6c9c
ovy199_21b6c9c: ; 0x021B6C9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, [r3]
	add r5, r0, #0
	add r6, r2, #0
	cmp r1, #0
	beq _021B6CB8
	add r5, #0x80
	str r1, [r5]
	ldr r1, _021B6D9C ; =ovy199_21b5de4
	ldr r2, _021B6DA0 ; =0x0000052B
	bl sub_021B5CD4
	pop {r3, r4, r5, r6, r7, pc}
_021B6CB8:
	add r0, r6, #0
	add r0, #0x5b
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B6D8A
	ldr r4, [r6]
	add r0, r7, #0
	bl sub_02009AD8
	cmp r4, r0
	beq _021B6D8A
	add r0, r6, #0
	str r4, [r5, #0x7c]
	add r0, #0x57
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa4
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0x58
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa5
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0x59
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0xa6
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0x54
	ldrh r0, [r0]
	str r0, [r5, #0x6c]
	add r0, r5, #0
	add r0, #0xa5
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B6D16
	add r0, r5, #0
	add r0, #0xa8
	ldrb r1, [r0]
	mov r0, #1
	orr r1, r0
	add r0, r5, #0
	add r0, #0xa8
	strb r1, [r0]
_021B6D16:
	add r0, r5, #0
	add r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B6D30
	add r0, r5, #0
	add r0, #0xa8
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	add r0, r5, #0
	add r0, #0xa8
	strb r1, [r0]
_021B6D30:
	add r0, r5, #0
	add r0, #0xa6
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B6D4A
	add r0, r5, #0
	add r0, #0xa8
	ldrb r1, [r0]
	mov r0, #4
	orr r1, r0
	add r0, r5, #0
	add r0, #0xa8
	strb r1, [r0]
_021B6D4A:
	mov r4, #0
_021B6D4C:
	lsl r0, r4, #3
	add r3, r6, r0
	ldrh r2, [r3, #4]
	cmp r2, #0
	beq _021B6D6C
	ldrb r0, [r3, #9]
	add r1, r4, #0
	add r1, #0x14
	str r0, [sp]
	ldrb r3, [r3, #8]
	ldr r0, [r5, #0x14]
	bl ovy199_21b5828
	add r4, r4, #1
	cmp r4, #0xa
	blt _021B6D4C
_021B6D6C:
	add r0, r7, #0
	add r1, r6, #0
	bl ovy199_21b6b14
	add r1, r5, #0
	add r1, #0xa9
	strb r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	bl ovy199_21b6c64
	ldr r0, [r5, #0x14]
	bl ovy199_21b58ac
	b _021B6D92
_021B6D8A:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa9
	strb r1, [r0]
_021B6D92:
	add r0, r5, #0
	bl ovy199_21b6a04
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B6D9C: .word ovy199_21b5de4
_021B6DA0: .word 0x0000052B
	thumb_func_end ovy199_21b6c9c

	thumb_func_start ovy199_21b6da4
ovy199_21b6da4: ; 0x021B6DA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02009B50
	ldr r3, [r4, #0x20]
	mov r1, #0
	add r3, #0xc
_021B6DB4:
	add r2, r1, #1
	cmp r2, #0x14
	bge _021B6DD8
	lsl r0, r1, #1
	add r0, r3, r0
	ldrh r4, [r0, #8]
_021B6DC0:
	cmp r4, #0
	beq _021B6DD2
	lsl r0, r2, #1
	add r0, r3, r0
	ldrh r0, [r0, #8]
	cmp r0, r4
	bne _021B6DD2
	mov r0, #0
	pop {r4, pc}
_021B6DD2:
	add r2, r2, #1
	cmp r2, #0x14
	blt _021B6DC0
_021B6DD8:
	add r1, r1, #1
	cmp r1, #0x14
	blt _021B6DB4
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b6da4

	thumb_func_start ovy199_21b6de4
ovy199_21b6de4: ; 0x021B6DE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ovy199_21b5c64
	cmp r0, #0
	beq _021B6E6A
	add r0, r5, #0
	bl sub_021B5CB0
	cmp r0, #0
	bne _021B6E6A
	ldr r0, [r5, #0x70]
	cmp r0, #0x1e
	bge _021B6E04
	add r0, r0, #1
	str r0, [r5, #0x70]
_021B6E04:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x70]
	bl ovy199_21b5488
	ldr r0, [r5, #0x10]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy199_21b5bfc
	cmp r0, #0
	bne _021B6EE2
	ldr r0, [r5, #0x10]
	bl sub_0219D140
	cmp r0, #0
	bne _021B6EE2
	ldr r0, [r5, #0x10]
	bl sub_0219D1A4
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	add r7, r0, #0
	ldr r0, _021B6EE4 ; =0x0000059E
	mov r1, #0x2a
	str r0, [sp]
	add r4, r6, #0
	ldrh r0, [r5]
	ldr r3, _021B6EE8 ; =0x021B9B50
	lsl r1, r1, #4
	mov r2, #1
	add r4, #0x80
	bl sub_0203A1FC
	add r1, r0, #0
	mov r2, #0x2a
	add r0, r4, #0
	lsl r2, r2, #4
	str r1, [r5, #0x38]
	blx MI_CpuCopy8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy199_21b6c9c
	pop {r3, r4, r5, r6, r7, pc}
_021B6E6A:
	ldr r0, [r5, #0x74]
	add r0, r0, #1
	str r0, [r5, #0x74]
	ldr r0, [r5, #0x70]
	cmp r0, #0x1e
	bge _021B6E7A
	add r0, r0, #1
	str r0, [r5, #0x70]
_021B6E7A:
	mov r0, #0x5a
	ldr r1, [r5, #0x74]
	lsl r0, r0, #2
	cmp r1, r0
	bne _021B6E94
	ldr r0, [r5, #0x18]
	mov r1, #0x2b
_021B6E88:
	bl sub_021B46AC
	ldr r0, [r5, #0x18]
	bl ovy199_21b4740
	b _021B6EDA
_021B6E94:
	lsl r0, r0, #1
	cmp r1, r0
	bne _021B6EA0
	ldr r0, [r5, #0x18]
	mov r1, #0x2c
	b _021B6E88
_021B6EA0:
	ldr r0, _021B6EEC ; =0x00000438
	cmp r1, r0
	bne _021B6EDA
	add r0, r5, #0
	bl sub_021B5C98
	cmp r0, #0
	beq _021B6EB6
	ldr r0, [r5, #0x18]
	bl ovy199_21b47bc
_021B6EB6:
	add r0, r5, #0
	bl ovy199_21b6da4
	cmp r0, #0
	beq _021B6EC8
	add r0, r5, #0
	ldr r1, _021B6EF0 ; =ovy199_21b628c
	ldr r2, _021B6EF4 ; =0x000005B7
	b _021B6ED6
_021B6EC8:
	add r0, r5, #0
	mov r1, #9
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B6EF8 ; =ovy199_21b5de4
	ldr r2, _021B6EFC ; =0x000005BC
	add r0, r5, #0
_021B6ED6:
	bl sub_021B5CD4
_021B6EDA:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x70]
	bl ovy199_21b5488
_021B6EE2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021B6EE4: .word 0x0000059E
_021B6EE8: .word 0x021B9B50
_021B6EEC: .word 0x00000438
_021B6EF0: .word ovy199_21b628c
_021B6EF4: .word 0x000005B7
_021B6EF8: .word ovy199_21b5de4
_021B6EFC: .word 0x000005BC
	thumb_func_end ovy199_21b6de4

	thumb_func_start ovy199_21b6f00
ovy199_21b6f00: ; 0x021B6F00
	push {r4, lr}
	add r4, r0, #0
	bl ovy199_21b5c64
	cmp r0, #0
	beq _021B6F38
	add r0, r4, #0
	bl sub_021B5CB0
	cmp r0, #0
	bne _021B6F38
	ldr r1, [r4, #0x10]
	mov r0, #2
	bl sub_0219D010
	cmp r0, #0
	beq _021B6F64
	ldr r0, [r4, #0x10]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B6F64
	ldr r1, _021B6F68 ; =ovy199_21b6de4
	ldr r2, _021B6F6C ; =0x000005C8
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B6F38:
	add r0, r4, #0
	bl sub_021B5C98
	cmp r0, #0
	beq _021B6F56
	mov r0, #0
	str r0, [r4, #0x74]
	ldr r0, [r4, #0x18]
	mov r1, #0x2a
	bl sub_021B46AC
	ldr r0, [r4, #0x18]
	bl ovy199_21b4740
	b _021B6F5A
_021B6F56:
	ldr r0, _021B6F70 ; =0x0000042E
	str r0, [r4, #0x74]
_021B6F5A:
	ldr r1, _021B6F68 ; =ovy199_21b6de4
	ldr r2, _021B6F74 ; =0x000005D5
	add r0, r4, #0
	bl sub_021B5CD4
_021B6F64:
	pop {r4, pc}
	nop
_021B6F68: .word ovy199_21b6de4
_021B6F6C: .word 0x000005C8
_021B6F70: .word 0x0000042E
_021B6F74: .word 0x000005D5
	thumb_func_end ovy199_21b6f00

	thumb_func_start ovy199_21b6f78
ovy199_21b6f78: ; 0x021B6F78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B6F90
	ldr r1, _021B6F94 ; =ovy199_21b6f00
	ldr r2, _021B6F98 ; =0x000005DE
	add r0, r4, #0
	bl sub_021B5CD4
_021B6F90:
	pop {r4, pc}
	nop
_021B6F94: .word ovy199_21b6f00
_021B6F98: .word 0x000005DE
	thumb_func_end ovy199_21b6f78

	thumb_func_start ovy199_21b6f9c
ovy199_21b6f9c: ; 0x021B6F9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0xb
	bl ovy199_21b44fc
	ldr r0, [r5, #0x18]
	bl ovy199_21b47d8
	ldr r0, [r5, #0x14]
	mov r1, #8
	bl ovy199_21b5098
	ldr r0, [r5, #0x14]
	bl ovy199_21b53ac
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_021B5408
	ldr r0, [r5, #0x14]
	mov r1, #6
	mov r2, #5
	bl sub_021B5074
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_021B506C
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl sub_021B506C
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl sub_021B506C
	ldr r4, _021B6FFC ; =0x00000657
	add r0, r4, #0
	bl sub_02006254
	sub r4, #0x64
	ldr r1, _021B7000 ; =ovy199_21b6f78
	add r0, r5, #0
	add r2, r4, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B6FFC: .word 0x00000657
_021B7000: .word ovy199_21b6f78
	thumb_func_end ovy199_21b6f9c

	thumb_func_start ovy199_21b7004
ovy199_21b7004: ; 0x021B7004
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7030
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B7024
	bl sub_0203DA48
	cmp r0, #0
	beq _021B7030
_021B7024:
	mov r2, #6
	ldr r1, _021B7034 ; =0x021B5E6D
	add r0, r4, #0
	lsl r2, r2, #8
	bl sub_021B5CD4
_021B7030:
	pop {r4, pc}
	nop
_021B7034: .word 0x021B5E6D
	thumb_func_end ovy199_21b7004

	thumb_func_start ovy199_21b7038
ovy199_21b7038: ; 0x021B7038
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7058
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	bl ovy199_21b44fc
	ldr r1, _021B705C ; =ovy199_21b7004
	ldr r2, _021B7060 ; =0x0000060E
	add r0, r4, #0
	bl sub_021B5CD4
_021B7058:
	pop {r4, pc}
	nop
_021B705C: .word ovy199_21b7004
_021B7060: .word 0x0000060E
	thumb_func_end ovy199_21b7038

	thumb_func_start ovy199_21b7064
ovy199_21b7064: ; 0x021B7064
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B708E
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B7084
	bl sub_0203DA48
	cmp r0, #0
	beq _021B708E
_021B7084:
	ldr r1, _021B7090 ; =0x021B5E6D
	ldr r2, _021B7094 ; =0x00000619
	add r0, r4, #0
	bl sub_021B5CD4
_021B708E:
	pop {r4, pc}
	.align 2, 0
_021B7090: .word 0x021B5E6D
_021B7094: .word 0x00000619
	thumb_func_end ovy199_21b7064

	thumb_func_start ovy199_21b7098
ovy199_21b7098: ; 0x021B7098
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B70B8
	ldr r0, [r4, #0x18]
	mov r1, #0x31
	bl ovy199_21b44fc
	ldr r1, _021B70BC ; =ovy199_21b7064
	ldr r2, _021B70C0 ; =0x00000626
	add r0, r4, #0
	bl sub_021B5CD4
_021B70B8:
	pop {r4, pc}
	nop
_021B70BC: .word ovy199_21b7064
_021B70C0: .word 0x00000626
	thumb_func_end ovy199_21b7098

	thumb_func_start ovy199_21b70c4
ovy199_21b70c4: ; 0x021B70C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	mov r1, #0x6e
	blx sub_0208D65C
	cmp r1, #0
	bne _021B70DA
	ldr r0, _021B7138 ; =0x00000659
	bl sub_02006254
_021B70DA:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x1c]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B7134
	ldr r0, [r4, #0x1c]
	bl sub_0202DC00
	cmp r0, #0
	bne _021B7116
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0x24]
	add r1, #0x48
	add r2, #0x4c
	bl sub_02007994
	cmp r0, #0
	bne _021B710E
	add r0, r4, #0
	ldr r1, _021B713C ; =ovy199_21b7098
	ldr r2, _021B7140 ; =0x0000063F
	b _021B711C
_021B710E:
	add r0, r4, #0
	ldr r1, _021B7144 ; =ovy199_21b6f9c
	ldr r2, _021B7148 ; =0x00000642
	b _021B711C
_021B7116:
	ldr r1, _021B714C ; =0x021B5E6D
	ldr r2, _021B7150 ; =0x00000646
	add r0, r4, #0
_021B711C:
	bl sub_021B5CD4
	ldr r0, [r4, #0x18]
	bl ovy199_21b45a8
	ldr r0, [r4, #0x1c]
	bl sub_0202DA54
	ldr r0, _021B7154 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	str r1, [r4, #0x1c]
_021B7134:
	pop {r4, pc}
	nop
_021B7138: .word 0x00000659
_021B713C: .word ovy199_21b7098
_021B7140: .word 0x0000063F
_021B7144: .word ovy199_21b6f9c
_021B7148: .word 0x00000642
_021B714C: .word 0x021B5E6D
_021B7150: .word 0x00000646
_021B7154: .word 0x04001050
	thumb_func_end ovy199_21b70c4

	thumb_func_start ovy199_21b7158
ovy199_21b7158: ; 0x021B7158
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	mov r1, #0x6e
	blx sub_0208D65C
	cmp r1, #0
	bne _021B716E
	ldr r0, _021B7194 ; =0x00000659
	bl sub_02006254
_021B716E:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7192
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl ovy199_21b45ec
	str r0, [r4, #0x1c]
	ldr r1, _021B7198 ; =ovy199_21b70c4
	ldr r2, _021B719C ; =0x00000662
	add r0, r4, #0
	bl sub_021B5CD4
_021B7192:
	pop {r4, pc}
	.align 2, 0
_021B7194: .word 0x00000659
_021B7198: .word ovy199_21b70c4
_021B719C: .word 0x00000662
	thumb_func_end ovy199_21b7158

	thumb_func_start ovy199_21b71a0
ovy199_21b71a0: ; 0x021B71A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b45a8
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #6
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #8
	bl sub_021B506C
	ldr r0, [r4, #0x28]
	bl sub_02009B50
	bl sub_02009A78
	cmp r0, #0
	ldr r0, [r4, #0x18]
	beq _021B71DE
	mov r1, #0x15
	b _021B71E0
_021B71DE:
	mov r1, #0xa
_021B71E0:
	bl ovy199_21b44fc
	ldr r1, _021B71F0 ; =ovy199_21b7158
	ldr r2, _021B71F4 ; =0x0000067C
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	.align 2, 0
_021B71F0: .word ovy199_21b7158
_021B71F4: .word 0x0000067C
	thumb_func_end ovy199_21b71a0

	thumb_func_start ovy199_21b71f8
ovy199_21b71f8: ; 0x021B71F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7210
	ldr r1, _021B7214 ; =ovy199_21b71a0
	ldr r2, _021B7218 ; =0x000006BD
	add r0, r4, #0
	bl sub_021B5CD4
_021B7210:
	pop {r4, pc}
	nop
_021B7214: .word ovy199_21b71a0
_021B7218: .word 0x000006BD
	thumb_func_end ovy199_21b71f8

	thumb_func_start ovy199_21b721c
ovy199_21b721c: ; 0x021B721C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B7232
	bl sub_0203DA48
	cmp r0, #0
	beq _021B7256
_021B7232:
	ldr r0, [r5, #0x18]
	bl ovy199_21b47bc
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	mov r1, #1
	mov r4, #1
	bl sub_020099E8
	add r0, r5, #0
	add r0, #0xaf
	strb r4, [r0]
	ldr r1, _021B7258 ; =ovy199_21b77c0
	ldr r2, _021B725C ; =0x000006D2
	add r0, r5, #0
	bl sub_021B5CD4
_021B7256:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B7258: .word ovy199_21b77c0
_021B725C: .word 0x000006D2
	thumb_func_end ovy199_21b721c

	thumb_func_start ovy199_21b7260
ovy199_21b7260: ; 0x021B7260
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B7276
	bl sub_0203DA48
	cmp r0, #0
	beq _021B7292
_021B7276:
	ldr r0, [r4, #0x18]
	mov r1, #0x30
	bl sub_021B46AC
	ldr r0, [r4, #0x18]
	mov r1, #7
	mov r2, #0xe
	bl ovy199_21b46bc
	ldr r1, _021B7294 ; =ovy199_21b721c
	ldr r2, _021B7298 ; =0x000006DB
	add r0, r4, #0
	bl sub_021B5CD4
_021B7292:
	pop {r4, pc}
	.align 2, 0
_021B7294: .word ovy199_21b721c
_021B7298: .word 0x000006DB
	thumb_func_end ovy199_21b7260

	thumb_func_start ovy199_21b729c
ovy199_21b729c: ; 0x021B729C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #4]
	bl sub_0201736C
	bl sub_02008BDC
	add r1, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b480c
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ovy199_21b4440
	ldr r0, [r4, #0x18]
	mov r1, #0x2f
	bl sub_021B46AC
	ldr r0, [r4, #0x18]
	mov r1, #7
	mov r2, #0xe
	bl ovy199_21b46bc
	ldr r1, _021B72DC ; =ovy199_21b7260
	ldr r2, _021B72E0 ; =0x000006E7
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	nop
_021B72DC: .word ovy199_21b7260
_021B72E0: .word 0x000006E7
	thumb_func_end ovy199_21b729c

	thumb_func_start ovy199_21b72e4
ovy199_21b72e4: ; 0x021B72E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B7354
	ldr r0, [r4, #0x10]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r4, #0
	bl ovy199_21b5bfc
	cmp r0, #0
	bne _021B735E
	ldr r0, [r4, #0x10]
	bl sub_0219D140
	cmp r0, #0
	bne _021B735E
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	bl ovy199_21b5098
	ldr r0, [r4, #0x10]
	bl sub_0219D1A4
	ldr r1, [r0]
	cmp r1, #2
	bne _021B732C
	ldr r1, _021B7360 ; =ovy199_21b77c0
	ldr r2, _021B7364 ; =0x00000707
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B732C:
	cmp r1, #0
	bne _021B7342
	ldr r0, [r4, #0x18]
	bl ovy199_21b45a8
	ldr r1, _021B7368 ; =ovy199_21b729c
	ldr r2, _021B736C ; =0x0000070B
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B7342:
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B7370 ; =ovy199_21b5de4
	ldr r2, _021B7374 ; =0x0000070F
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B7354:
	ldr r1, _021B7360 ; =ovy199_21b77c0
	ldr r2, _021B7378 ; =0x00000715
	add r0, r4, #0
	bl sub_021B5CD4
_021B735E:
	pop {r4, pc}
	.align 2, 0
_021B7360: .word ovy199_21b77c0
_021B7364: .word 0x00000707
_021B7368: .word ovy199_21b729c
_021B736C: .word 0x0000070B
_021B7370: .word ovy199_21b5de4
_021B7374: .word 0x0000070F
_021B7378: .word 0x00000715
	thumb_func_end ovy199_21b72e4

	thumb_func_start ovy199_21b737c
ovy199_21b737c: ; 0x021B737C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B73CC
	ldr r1, [r5, #0x10]
	mov r0, #9
	bl sub_0219D010
	cmp r0, #0
	beq _021B73E6
	ldr r0, [r5, #0x28]
	add r1, sp, #0
	bl sub_02007454
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0219D0EC
	mov r2, #2
	add r1, r4, #0
	lsl r2, r2, #0x12
	bl sub_021A0854
	ldr r0, [r5, #0x14]
	mov r1, #0xd
	bl sub_021B506C
	ldr r0, [r5, #0x10]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B73E6
	ldr r1, _021B73E8 ; =ovy199_21b72e4
	ldr r2, _021B73EC ; =0x00000731
	add r0, r5, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
_021B73CC:
	bl sub_0203DEFC
	cmp r0, #0
	bne _021B73DC
	bl sub_0203DA48
	cmp r0, #0
	beq _021B73E6
_021B73DC:
	ldr r1, _021B73E8 ; =ovy199_21b72e4
	ldr r2, _021B73F0 ; =0x00000737
	add r0, r5, #0
	bl sub_021B5CD4
_021B73E6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B73E8: .word ovy199_21b72e4
_021B73EC: .word 0x00000731
_021B73F0: .word 0x00000737
	thumb_func_end ovy199_21b737c

	thumb_func_start ovy199_21b73f4
ovy199_21b73f4: ; 0x021B73F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B741E
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B7414
	bl sub_0203DA48
	cmp r0, #0
	beq _021B741E
_021B7414:
	ldr r1, _021B7420 ; =ovy199_21b71f8
	ldr r2, _021B7424 ; =0x00000762
	add r0, r4, #0
	bl sub_021B5CD4
_021B741E:
	pop {r4, pc}
	.align 2, 0
_021B7420: .word ovy199_21b71f8
_021B7424: .word 0x00000762
	thumb_func_end ovy199_21b73f4

	thumb_func_start ovy199_21b7428
ovy199_21b7428: ; 0x021B7428
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7448
	ldr r0, [r4, #0x18]
	mov r1, #0x11
	bl ovy199_21b44fc
	ldr r1, _021B744C ; =ovy199_21b73f4
	ldr r2, _021B7450 ; =0x00000774
	add r0, r4, #0
	bl sub_021B5CD4
_021B7448:
	pop {r4, pc}
	nop
_021B744C: .word ovy199_21b73f4
_021B7450: .word 0x00000774
	thumb_func_end ovy199_21b7428

	thumb_func_start ovy199_21b7454
ovy199_21b7454: ; 0x021B7454
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B747E
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B7474
	bl sub_0203DA48
	cmp r0, #0
	beq _021B747E
_021B7474:
	ldr r1, _021B7480 ; =0x021B5E6D
	ldr r2, _021B7484 ; =0x00000781
	add r0, r4, #0
	bl sub_021B5CD4
_021B747E:
	pop {r4, pc}
	.align 2, 0
_021B7480: .word 0x021B5E6D
_021B7484: .word 0x00000781
	thumb_func_end ovy199_21b7454

	thumb_func_start ovy199_21b7488
ovy199_21b7488: ; 0x021B7488
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B74A8
	ldr r0, [r4, #0x18]
	mov r1, #0x14
	bl ovy199_21b44fc
	ldr r1, _021B74AC ; =ovy199_21b7454
	ldr r2, _021B74B0 ; =0x00000793
	add r0, r4, #0
	bl sub_021B5CD4
_021B74A8:
	pop {r4, pc}
	nop
_021B74AC: .word ovy199_21b7454
_021B74B0: .word 0x00000793
	thumb_func_end ovy199_21b7488

	thumb_func_start ovy199_21b74b4
ovy199_21b74b4: ; 0x021B74B4
	push {r3, lr}
	ldr r2, [r2]
	cmp r2, #0
	beq _021B74C6
	cmp r2, #5
	beq _021B7546
	cmp r2, #8
	beq _021B756C
	b _021B7592
_021B74C6:
	mov r2, #0x72
	ldr r3, [r0, #0x20]
	lsl r2, r2, #2
	ldr r2, [r3, r2]
	cmp r2, #0
	beq _021B74D8
	cmp r2, #3
	beq _021B7528
	pop {r3, pc}
_021B74D8:
	cmp r1, #0
	bne _021B74E6
	ldr r1, _021B75A4 ; =ovy199_21b71f8
	ldr r2, _021B75A8 ; =0x000007AF
	bl sub_021B5CD4
	pop {r3, pc}
_021B74E6:
	cmp r1, #3
	bne _021B74F4
	ldr r1, _021B75A4 ; =ovy199_21b71f8
	ldr r2, _021B75AC ; =0x000007B2
	bl sub_021B5CD4
	pop {r3, pc}
_021B74F4:
	cmp r1, #1
	bne _021B7502
	ldr r1, _021B75B0 ; =ovy199_21b7428
	ldr r2, _021B75B4 ; =0x000007B6
	bl sub_021B5CD4
	pop {r3, pc}
_021B7502:
	cmp r1, #2
	bne _021B7510
	ldr r1, _021B75B8 ; =ovy199_21b7488
	ldr r2, _021B75BC ; =0x000007BA
	bl sub_021B5CD4
	pop {r3, pc}
_021B7510:
	cmp r1, #4
	bne _021B751E
	ldr r1, _021B75A4 ; =ovy199_21b71f8
	ldr r2, _021B75C0 ; =0x000007BD
	bl sub_021B5CD4
	pop {r3, pc}
_021B751E:
	ldr r1, _021B75A4 ; =ovy199_21b71f8
	ldr r2, _021B75C4 ; =0x000007C2
	bl sub_021B5CD4
	pop {r3, pc}
_021B7528:
	add r1, r0, #0
	add r1, #0xaf
	ldrb r1, [r1]
	cmp r1, #0
	bne _021B753C
	ldr r1, _021B75C8 ; =ovy199_21b729c
	ldr r2, _021B75CC ; =0x000007C7
	bl sub_021B5CD4
	pop {r3, pc}
_021B753C:
	ldr r1, _021B75D0 ; =ovy199_21b77c0
	ldr r2, _021B75D4 ; =0x000007CA
	bl sub_021B5CD4
	pop {r3, pc}
_021B7546:
	mov r1, #0x72
	ldr r3, [r0, #0x20]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	cmp r1, #3
	bne _021B755C
	ldr r1, _021B75D0 ; =ovy199_21b77c0
	ldr r2, _021B75D8 ; =0x000007D2
	bl sub_021B5CD4
	pop {r3, pc}
_021B755C:
	add r1, r0, #0
	add r1, #0x80
	str r2, [r1]
	ldr r1, _021B75DC ; =ovy199_21b5de4
	ldr r2, _021B75E0 ; =0x000007D6
	bl sub_021B5CD4
	pop {r3, pc}
_021B756C:
	mov r1, #0x72
	ldr r2, [r0, #0x20]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021B757E
	cmp r1, #3
	beq _021B7588
	pop {r3, pc}
_021B757E:
	ldr r1, _021B75A4 ; =ovy199_21b71f8
	ldr r2, _021B75E4 ; =0x000007DD
	bl sub_021B5CD4
	pop {r3, pc}
_021B7588:
	ldr r1, _021B75E8 ; =ovy199_21b737c
	ldr r2, _021B75EC ; =0x000007E1
	bl sub_021B5CD4
	pop {r3, pc}
_021B7592:
	add r1, r0, #0
	add r1, #0x80
	str r2, [r1]
	ldr r1, _021B75DC ; =ovy199_21b5de4
	ldr r2, _021B75F0 ; =0x000007E7
	bl sub_021B5CD4
	pop {r3, pc}
	nop
_021B75A4: .word ovy199_21b71f8
_021B75A8: .word 0x000007AF
_021B75AC: .word 0x000007B2
_021B75B0: .word ovy199_21b7428
_021B75B4: .word 0x000007B6
_021B75B8: .word ovy199_21b7488
_021B75BC: .word 0x000007BA
_021B75C0: .word 0x000007BD
_021B75C4: .word 0x000007C2
_021B75C8: .word ovy199_21b729c
_021B75CC: .word 0x000007C7
_021B75D0: .word ovy199_21b77c0
_021B75D4: .word 0x000007CA
_021B75D8: .word 0x000007D2
_021B75DC: .word ovy199_21b5de4
_021B75E0: .word 0x000007D6
_021B75E4: .word 0x000007DD
_021B75E8: .word ovy199_21b737c
_021B75EC: .word 0x000007E1
_021B75F0: .word 0x000007E7
	thumb_func_end ovy199_21b74b4

	thumb_func_start ovy199_21b75f4
ovy199_21b75f4: ; 0x021B75F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B7646
	ldr r0, [r5, #0x10]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r5, #0
	bl ovy199_21b5bfc
	cmp r0, #0
	bne _021B7650
	ldr r0, [r5, #0x10]
	bl sub_0219D140
	cmp r0, #0
	bne _021B7650
	ldr r0, [r5, #0x10]
	bl sub_0219D1A4
	ldr r1, [r5, #0x20]
	add r4, r0, #0
	add r0, #0x80
	add r1, #0xc
	mov r2, #0x44
	blx MI_CpuCopy8
	ldr r0, [r5, #0x20]
	mov r1, #1
	str r1, [r0, #0x50]
	add r1, r4, #0
	add r1, #0x80
	ldrh r1, [r1]
	add r0, r5, #0
	add r2, r4, #0
	bl ovy199_21b74b4
	pop {r3, r4, r5, pc}
_021B7646:
	ldr r1, _021B7654 ; =ovy199_21b71f8
	ldr r2, _021B7658 ; =0x0000080F
	add r0, r5, #0
	bl sub_021B5CD4
_021B7650:
	pop {r3, r4, r5, pc}
	nop
_021B7654: .word ovy199_21b71f8
_021B7658: .word 0x0000080F
	thumb_func_end ovy199_21b75f4

	thumb_func_start ovy199_21b765c
ovy199_21b765c: ; 0x021B765C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #0xd
	bl ovy199_21b4514
	ldr r0, [r4, #0x18]
	bl ovy199_21b47d8
	bl sub_02042788
	cmp r0, #0
	beq _021B7698
	ldr r1, [r4, #0x10]
	mov r0, #0
	bl sub_0219D010
	cmp r0, #0
	beq _021B76B4
	ldr r0, [r4, #0x10]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B76B4
	ldr r1, _021B76B8 ; =ovy199_21b75f4
	ldr r2, _021B76BC ; =0x00000825
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
_021B7698:
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B76AA
	bl sub_0203DA48
	cmp r0, #0
	beq _021B76B4
_021B76AA:
	ldr r1, _021B76B8 ; =ovy199_21b75f4
	ldr r2, _021B76C0 ; =0x0000082C
	add r0, r4, #0
	bl sub_021B5CD4
_021B76B4:
	pop {r4, pc}
	nop
_021B76B8: .word ovy199_21b75f4
_021B76BC: .word 0x00000825
_021B76C0: .word 0x0000082C
	thumb_func_end ovy199_21b765c

	thumb_func_start ovy199_21b76c4
ovy199_21b76c4: ; 0x021B76C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B76FE
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B76E4
	bl sub_0203DA48
	cmp r0, #0
	beq _021B76FE
_021B76E4:
	mov r0, #0x72
	ldr r1, [r4, #0x20]
	mov r2, #1
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r0, [r4, #0x18]
	bl ovy199_21b45a8
	ldr r1, _021B7700 ; =ovy199_21b5cf8
	ldr r2, _021B7704 ; =0x00000843
	add r0, r4, #0
	bl sub_021B5CD4
_021B76FE:
	pop {r4, pc}
	.align 2, 0
_021B7700: .word ovy199_21b5cf8
_021B7704: .word 0x00000843
	thumb_func_end ovy199_21b76c4

	thumb_func_start ovy199_21b7708
ovy199_21b7708: ; 0x021B7708
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #0x13
	bl ovy199_21b44fc
	ldr r1, _021B7720 ; =ovy199_21b76c4
	ldr r2, _021B7724 ; =0x00000852
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	.align 2, 0
_021B7720: .word ovy199_21b76c4
_021B7724: .word 0x00000852
	thumb_func_end ovy199_21b7708

	thumb_func_start ovy199_21b7728
ovy199_21b7728: ; 0x021B7728
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B7796
	ldr r0, [r4, #0x10]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r4, #0
	bl ovy199_21b5bfc
	cmp r0, #0
	bne _021B77AA
	ldr r0, [r4, #0x10]
	bl sub_0219D140
	cmp r0, #0
	bne _021B77AA
	ldr r0, [r4, #0x10]
	bl sub_0219D1A4
	ldr r1, [r0]
	cmp r1, #0
	beq _021B7760
	cmp r1, #8
	bne _021B7784
_021B7760:
	mov r5, #0x76
	ldr r1, [r4, #0x20]
	lsl r5, r5, #2
	add r0, #0x80
	add r1, r1, r5
	mov r2, #0x80
	blx MI_CpuCopy8
	ldr r0, [r4, #0x20]
	mov r1, #5
	sub r5, #0x10
	str r1, [r0, r5]
	ldr r1, _021B77AC ; =ovy199_21b5cf8
	ldr r2, _021B77B0 ; =0x00000872
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
_021B7784:
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B77B4 ; =ovy199_21b5de4
	ldr r2, _021B77B8 ; =0x0000087D
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
_021B7796:
	mov r0, #0x72
	ldr r1, [r4, #0x20]
	mov r2, #5
	lsl r0, r0, #2
	str r2, [r1, r0]
	ldr r1, _021B77AC ; =ovy199_21b5cf8
	ldr r2, _021B77BC ; =0x00000884
	add r0, r4, #0
	bl sub_021B5CD4
_021B77AA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B77AC: .word ovy199_21b5cf8
_021B77B0: .word 0x00000872
_021B77B4: .word ovy199_21b5de4
_021B77B8: .word 0x0000087D
_021B77BC: .word 0x00000884
	thumb_func_end ovy199_21b7728

	thumb_func_start ovy199_21b77c0
ovy199_21b77c0: ; 0x021B77C0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_020092F0
	bl sub_02009380
	cmp r0, #0
	beq _021B77EC
	add r0, r5, #0
	add r0, #0xac
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B77EC
	ldr r1, _021B7888 ; =ovy199_21b7038
	ldr r2, _021B788C ; =0x00000897
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #0x20
	pop {r4, r5, r6, pc}
_021B77EC:
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	bl sub_02009AD0
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	lsr r1, r0, #8
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	add r6, sp, #0
	str r0, [sp, #0x1c]
	add r0, r6, #0
	str r1, [sp, #0x18]
	bl sub_0204424C
	add r0, sp, #0x10
	bl sub_02044298
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02044298
	cmp r4, r0
	bne _021B783C
	ldr r1, _021B7888 ; =ovy199_21b7038
	ldr r2, _021B7890 ; =0x000008A4
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #0x20
	pop {r4, r5, r6, pc}
_021B783C:
	bl sub_02042788
	cmp r0, #0
	beq _021B7868
	ldr r1, [r5, #0x10]
	mov r0, #1
	bl sub_0219D010
	cmp r0, #0
	beq _021B7884
	ldr r0, [r5, #0x10]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B7884
	ldr r1, _021B7894 ; =ovy199_21b7728
	ldr r2, _021B7898 ; =0x000008AC
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #0x20
	pop {r4, r5, r6, pc}
_021B7868:
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B787A
	bl sub_0203DA48
	cmp r0, #0
	beq _021B7884
_021B787A:
	ldr r1, _021B7894 ; =ovy199_21b7728
	ldr r2, _021B789C ; =0x000008B3
	add r0, r5, #0
	bl sub_021B5CD4
_021B7884:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B7888: .word ovy199_21b7038
_021B788C: .word 0x00000897
_021B7890: .word 0x000008A4
_021B7894: .word ovy199_21b7728
_021B7898: .word 0x000008AC
_021B789C: .word 0x000008B3
	thumb_func_end ovy199_21b77c0

	thumb_func_start ovy199_21b78a0
ovy199_21b78a0: ; 0x021B78A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	mov r1, #0x6e
	blx sub_0208D65C
	cmp r1, #0
	bne _021B78B6
	ldr r0, _021B78DC ; =0x00000659
	bl sub_02006254
_021B78B6:
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	bne _021B78CE
	bl sub_0203DA48
	cmp r0, #0
	beq _021B78D8
_021B78CE:
	ldr r1, _021B78E0 ; =0x021B5E6D
	ldr r2, _021B78E4 ; =0x000008C9
	add r0, r4, #0
	bl sub_021B5CD4
_021B78D8:
	pop {r4, pc}
	nop
_021B78DC: .word 0x00000659
_021B78E0: .word 0x021B5E6D
_021B78E4: .word 0x000008C9
	thumb_func_end ovy199_21b78a0

	thumb_func_start ovy199_21b78e8
ovy199_21b78e8: ; 0x021B78E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7900
	ldr r1, _021B7904 ; =ovy199_21b78a0
	ldr r2, _021B7908 ; =0x000008DB
	add r0, r4, #0
	bl sub_021B5CD4
_021B7900:
	pop {r4, pc}
	nop
_021B7904: .word ovy199_21b78a0
_021B7908: .word 0x000008DB
	thumb_func_end ovy199_21b78e8

	thumb_func_start ovy199_21b790c
ovy199_21b790c: ; 0x021B790C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021B791E
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #0x44]
_021B791E:
	ldr r0, [r4, #0x14]
	mov r1, #0x64
	str r1, [r4, #0x70]
	bl ovy199_21b5488
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0xc]
	mov r1, #0xe
	mov r2, #0
	bl ovy199_21b452c
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl ovy199_21b4440
	ldr r0, [r4, #0x14]
	mov r1, #8
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_021B5408
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #4
	mov r2, #6
	bl sub_021B5074
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	bl ovy199_21b5098
	ldr r0, _021B7978 ; =0x00000658
	bl sub_02006254
	ldr r1, _021B797C ; =ovy199_21b78e8
	ldr r2, _021B7980 ; =0x000008FD
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	.align 2, 0
_021B7978: .word 0x00000658
_021B797C: .word ovy199_21b78e8
_021B7980: .word 0x000008FD
	thumb_func_end ovy199_21b790c

	thumb_func_start ovy199_21b7984
ovy199_21b7984: ; 0x021B7984
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x70]
	cmp r0, #0x64
	bge _021B7992
	add r0, r0, #1
	str r0, [r4, #0x70]
_021B7992:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x70]
	bl ovy199_21b5488
	ldr r0, [r4, #0x2c]
	bl sub_02017850
	cmp r0, #1
	beq _021B79AE
	cmp r0, #2
	beq _021B79D2
	cmp r0, #3
	beq _021B79BE
	pop {r4, pc}
_021B79AE:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021B79E4
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #0x34]
	pop {r4, pc}
_021B79BE:
	ldr r3, _021B79E8 ; =0x000003F3
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_020424AC
	mov r0, #0
	bl sub_02042454
	pop {r4, pc}
_021B79D2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xad
	strb r1, [r0]
	ldr r1, _021B79EC ; =ovy199_21b790c
	ldr r2, _021B79F0 ; =0x00000926
	add r0, r4, #0
	bl sub_021B5CD4
_021B79E4:
	pop {r4, pc}
	nop
_021B79E8: .word 0x000003F3
_021B79EC: .word ovy199_21b790c
_021B79F0: .word 0x00000926
	thumb_func_end ovy199_21b7984

	thumb_func_start ovy199_21b79f4
ovy199_21b79f4: ; 0x021B79F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r0, #0xaa
	strb r1, [r0]
	add r0, sp, #0
	bl sub_0204424C
	ldr r1, [sp, #8]
	ldr r6, [sp, #4]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x10
	ldr r1, [sp]
	lsl r6, r6, #0x18
	lsl r1, r1, #0x18
	lsr r6, r6, #8
	orr r1, r6
	ldr r3, [sp, #0xc]
	orr r1, r2
	add r0, r4, #0
	orr r1, r3
	bl sub_02009AD4
	add r0, r4, #0
	bl sub_02009AE0
	cmp r0, #0x7f
	beq _021B7A48
	add r0, r4, #0
	mov r1, #1
	bl sub_02009B30
	add r0, r4, #0
	mov r1, #0x7e
	bl sub_02009AF8
_021B7A48:
	mov r0, #0x32
	str r0, [r5, #0x70]
	ldr r0, [r5, #0x2c]
	bl sub_02017994
	mov r1, #0x77
	bl sub_020095A0
	mov r0, #0x1c
	bl sub_02038BC8
	add r0, r5, #0
	mov r1, #1
	add r0, #0xad
	strb r1, [r0]
	ldr r0, [r5, #0x2c]
	bl sub_0201782C
	ldr r1, _021B7A7C ; =ovy199_21b7984
	ldr r2, _021B7A80 ; =0x00000957
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021B7A7C: .word ovy199_21b7984
_021B7A80: .word 0x00000957
	thumb_func_end ovy199_21b79f4

	thumb_func_start ovy199_21b7a84
ovy199_21b7a84: ; 0x021B7A84
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_02009B50
	ldr r0, [r4, #0x14]
	bl ovy199_21b56ec
	add r0, r4, #0
	bl sub_021B5C98
	cmp r0, #0
	beq _021B7AD2
	ldr r1, [r4, #0x74]
	cmp r1, #0
	bne _021B7AAA
	ldr r0, [r4, #0x18]
	mov r1, #0x2a
	b _021B7AC2
_021B7AAA:
	mov r0, #0x5a
	lsl r0, r0, #2
	cmp r1, r0
	bne _021B7AB8
	ldr r0, [r4, #0x18]
	mov r1, #0x2b
	b _021B7AC2
_021B7AB8:
	lsl r0, r0, #1
	cmp r1, r0
	bne _021B7ACC
	ldr r0, [r4, #0x18]
	mov r1, #0x2c
_021B7AC2:
	bl sub_021B46AC
	ldr r0, [r4, #0x18]
	bl ovy199_21b4740
_021B7ACC:
	ldr r0, [r4, #0x74]
	add r0, r0, #1
	str r0, [r4, #0x74]
_021B7AD2:
	add r0, r4, #0
	bl ovy199_21b5c64
	cmp r0, #0
	beq _021B7B46
	ldr r0, [r4, #0x70]
	cmp r0, #0x32
	bge _021B7AE6
	add r0, r0, #1
	str r0, [r4, #0x70]
_021B7AE6:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x70]
	bl ovy199_21b5488
	ldr r0, [r4, #0x10]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r4, #0
	bl ovy199_21b5bfc
	cmp r0, #0
	bne _021B7B72
	ldr r0, [r4, #0x10]
	bl sub_0219D140
	cmp r0, #0
	bne _021B7B72
	ldr r0, [r4, #0x10]
	bl sub_0219D1A4
	add r5, r0, #0
	add r0, r4, #0
	bl sub_021B5C98
	cmp r0, #0
	beq _021B7B22
	ldr r0, [r4, #0x18]
	bl ovy199_21b47bc
_021B7B22:
	ldr r1, [r5]
	cmp r1, #0
	bne _021B7B34
	ldr r1, _021B7B74 ; =ovy199_21b79f4
	ldr r2, _021B7B78 ; =0x00000998
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
_021B7B34:
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0]
	ldr r1, _021B7B7C ; =ovy199_21b5de4
	ldr r2, _021B7B80 ; =0x0000099C
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r3, r4, r5, pc}
_021B7B46:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x68]
	bl ovy199_21b5488
	ldr r0, [r4, #0x68]
	add r0, r0, #1
	str r0, [r4, #0x68]
	cmp r0, #0x64
	bne _021B7B72
	add r0, r4, #0
	bl sub_021B5C98
	cmp r0, #0
	beq _021B7B68
	ldr r0, [r4, #0x18]
	bl ovy199_21b47bc
_021B7B68:
	ldr r1, _021B7B74 ; =ovy199_21b79f4
	ldr r2, _021B7B84 ; =0x000009AA
	add r0, r4, #0
	bl sub_021B5CD4
_021B7B72:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B7B74: .word ovy199_21b79f4
_021B7B78: .word 0x00000998
_021B7B7C: .word ovy199_21b5de4
_021B7B80: .word 0x0000099C
_021B7B84: .word 0x000009AA
	thumb_func_end ovy199_21b7a84

	thumb_func_start ovy199_21b7b88
ovy199_21b7b88: ; 0x021B7B88
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	ldr r0, [r5, #0x18]
	bl ovy199_21b4568
	cmp r0, #0
	beq _021B7C06
	mov r6, #0
	add r0, r5, #0
	str r6, [r5, #0x74]
	bl ovy199_21b5c64
	cmp r0, #0
	beq _021B7BF4
	ldr r1, [r5, #0x10]
	mov r0, #3
	bl sub_0219D010
	cmp r0, #0
	beq _021B7C06
	ldr r0, [r5, #0x28]
	add r1, sp, #0
	bl sub_02007454
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0219D0EC
	mov r2, #2
	add r1, r4, #0
	lsl r2, r2, #0x12
	bl sub_021A0854
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl ovy199_21b5488
	ldr r0, [r5, #0x10]
	str r6, [r5, #0x70]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B7C06
	ldr r1, _021B7C0C ; =ovy199_21b7a84
	ldr r2, _021B7C10 ; =0x000009C9
	add r0, r5, #0
	bl sub_021B5CD4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021B7BF4:
	ldr r0, [r5, #0x14]
	add r1, r6, #0
	bl ovy199_21b5488
	ldr r1, _021B7C0C ; =ovy199_21b7a84
	ldr r2, _021B7C14 ; =0x000009CF
	add r0, r5, #0
	bl sub_021B5CD4
_021B7C06:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021B7C0C: .word ovy199_21b7a84
_021B7C10: .word 0x000009C9
_021B7C14: .word 0x000009CF
	thumb_func_end ovy199_21b7b88

	thumb_func_start ovy199_21b7c18
ovy199_21b7c18: ; 0x021B7C18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	sub r0, r0, #1
	str r0, [r4, #0x60]
	bne _021B7C74
	ldr r0, [r4, #0x14]
	bl ovy199_21b53ac
	ldr r0, [r4, #0x18]
	mov r1, #8
	bl ovy199_21b44fc
	ldr r0, [r4, #0x18]
	bl ovy199_21b47d8
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl sub_021B5408
	ldr r0, [r4, #0x14]
	mov r1, #4
	mov r2, #5
	bl sub_021B5074
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0
	bl sub_021B5074
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	bl sub_021B506C
	ldr r0, _021B7C78 ; =0x00000657
	bl sub_02006254
	ldr r1, _021B7C7C ; =ovy199_21b7b88
	ldr r2, _021B7C80 ; =0x000009EF
	add r0, r4, #0
	bl sub_021B5CD4
_021B7C74:
	pop {r4, pc}
	nop
_021B7C78: .word 0x00000657
_021B7C7C: .word ovy199_21b7b88
_021B7C80: .word 0x000009EF
	thumb_func_end ovy199_21b7c18

	thumb_func_start ovy199_21b7c84
ovy199_21b7c84: ; 0x021B7C84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	sub r0, r0, #1
	str r0, [r4, #0x60]
	bne _021B7CA8
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl sub_021B506C
	mov r0, #0x3c
	mov r2, #0xa
	str r0, [r4, #0x60]
	ldr r1, _021B7CAC ; =ovy199_21b7c18
	add r0, r4, #0
	lsl r2, r2, #8
	bl sub_021B5CD4
_021B7CA8:
	pop {r4, pc}
	nop
_021B7CAC: .word ovy199_21b7c18
	thumb_func_end ovy199_21b7c84

	thumb_func_start ovy199_21b7cb0
ovy199_21b7cb0: ; 0x021B7CB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	sub r0, r0, #1
	str r0, [r4, #0x60]
	bne _021B7CE4
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #1
	bl sub_021B5074
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl sub_021B506C
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl sub_021B506C
	mov r0, #0xf
	str r0, [r4, #0x60]
	ldr r1, _021B7CE8 ; =ovy199_21b7c84
	ldr r2, _021B7CEC ; =0x00000A16
	add r0, r4, #0
	bl sub_021B5CD4
_021B7CE4:
	pop {r4, pc}
	nop
_021B7CE8: .word ovy199_21b7c84
_021B7CEC: .word 0x00000A16
	thumb_func_end ovy199_21b7cb0

	thumb_func_start ovy199_21b7cf0
ovy199_21b7cf0: ; 0x021B7CF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	sub r0, r0, #1
	str r0, [r4, #0x60]
	bne _021B7D16
	ldr r0, [r4, #0x14]
	bl sub_021B5060
	ldr r0, [r4, #0x14]
	bl sub_021B52D4
	mov r0, #0x46
	str r0, [r4, #0x60]
	ldr r1, _021B7D18 ; =ovy199_21b7cb0
	ldr r2, _021B7D1C ; =0x00000A2B
	add r0, r4, #0
	bl sub_021B5CD4
_021B7D16:
	pop {r4, pc}
	.align 2, 0
_021B7D18: .word ovy199_21b7cb0
_021B7D1C: .word 0x00000A2B
	thumb_func_end ovy199_21b7cf0

	thumb_func_start ovy199_21b7d20
ovy199_21b7d20: ; 0x021B7D20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0201D620
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	mov r2, #1
	bl ovy199_21b5210
	mov r0, #0xa
	str r0, [r4, #0x60]
	ldr r1, _021B7D44 ; =ovy199_21b7cf0
	ldr r2, _021B7D48 ; =0x00000A3D
	add r0, r4, #0
	bl sub_021B5CD4
	pop {r4, pc}
	.align 2, 0
_021B7D44: .word ovy199_21b7cf0
_021B7D48: .word 0x00000A3D
	thumb_func_end ovy199_21b7d20

	thumb_func_start ovy199_21b7d4c
ovy199_21b7d4c: ; 0x021B7D4C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021B7D66
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, #0xc]
_021B7D66:
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	bl sub_02007CF4
	cmp r0, #0
	beq _021B7DA0
	ldrh r1, [r5]
	bl sub_0201C358
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200999C
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	str r6, [r5, #0xc]
	bl sub_02007928
	add r0, r4, #0
	mov r1, #1
	mov r4, #1
	bl sub_02009A00
	add r0, r5, #0
	add r0, #0xaa
	strb r4, [r0]
_021B7DA0:
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl sub_021B506C
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl sub_021B506C
	ldr r1, _021B7DBC ; =ovy199_21b7d20
	ldr r2, _021B7DC0 ; =0x00000A71
	add r0, r5, #0
	bl sub_021B5CD4
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B7DBC: .word ovy199_21b7d20
_021B7DC0: .word 0x00000A71
	thumb_func_end ovy199_21b7d4c

	thumb_func_start ovy199_21b7dc4
ovy199_21b7dc4: ; 0x021B7DC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021B7DDC
	bl sub_0219D124
	ldr r0, [r4, #0x10]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, #0x10]
_021B7DDC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b7dc4

	thumb_func_start ovy199_21b7de0
ovy199_21b7de0: ; 0x021B7DE0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_02009B50
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021B7E0A
	bl sub_02009930
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	blx MI_CpuCopy8
	ldr r0, [r5, #0x34]
	bl sub_0203A24C
	mov r0, #0
	str r0, [r5, #0x34]
_021B7E0A:
	add r0, r5, #0
	add r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B7E40
	add r0, r4, #0
	bl sub_02009998
	add r6, r0, #0
	bl sub_0201D624
	add r3, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	bl sub_02007870
	add r0, r6, #0
	bl sub_0201C404
	add r0, r4, #0
	mov r1, #0
	mov r4, #0
	bl sub_02009A00
	add r5, #0xaa
	strb r4, [r5]
_021B7E40:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy199_21b7de0

	thumb_func_start sub_021B7E44
sub_021B7E44: ; 0x021B7E44
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021B7E4E
	mov r0, #1
	bx lr
_021B7E4E:
	mov r0, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_021B7E44

	thumb_func_start ovy199_21b7e54
ovy199_21b7e54: ; 0x021B7E54
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	mov r6, #0
	blx MI_CpuFill8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02008B74
	ldr r1, [r5, #0x14]
	add r0, r4, #0
	bl sub_02008BE0
	ldrb r1, [r5, #0x18]
	ldrb r2, [r5, #0x19]
	add r0, r4, #0
	bl sub_02008C14
	ldrb r1, [r5, #0x1c]
	add r0, r4, #0
	bl sub_02008BEC
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	bl sub_02008BCC
	ldrb r1, [r5, #0x1b]
	add r0, r4, #0
	bl sub_02008C00
	ldrb r1, [r5, #0x1a]
	add r0, r4, #0
	bl sub_02008C08
	ldr r1, [r5, #0x10]
	mov r0, #7
	and r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _021B7EB2
	mov r6, #8
_021B7EB2:
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_02008BF8
	pop {r4, r5, r6, pc}
	thumb_func_end ovy199_21b7e54

	thumb_func_start ovy199_21b7ec8
ovy199_21b7ec8: ; 0x021B7EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	bl sub_02017934
	bl sub_02010044
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_02037A40
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02008B0C
	add r6, r0, #0
	mov r4, #0
_021B7EEE:
	ldr r0, [sp, #4]
	lsl r1, r4, #5
	add r5, r0, r1
	add r0, r5, #0
	bl sub_021B7E44
	cmp r0, #0
	beq _021B7F1E
	add r0, r5, #0
	add r1, r6, #0
	bl ovy199_21b7e54
	ldrh r2, [r5, #0x1e]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #7
	bl sub_02037AB4
	ldr r0, [sp, #8]
	ldr r1, [sp]
	add r2, r7, #0
	mov r3, #2
	bl sub_02010078
_021B7F1E:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B7EEE
	add r0, r6, #0
	bl sub_0203A24C
	add r0, r7, #0
	bl sub_02037A68
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b7ec8

	thumb_func_start ovy199_21b7f34
ovy199_21b7f34: ; 0x021B7F34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021B80A4 ; =0x000000BD
	add r5, r2, #0
	bl sub_0203CE0C
	mov r2, #0x22
	mov r0, #1
	mov r1, #0x62
	lsl r2, r2, #0xe
	mov r6, #0x62
	bl sub_0203A15C
	add r0, r4, #0
	mov r1, #0xb0
	mov r2, #0x62
	bl sub_0203AAEC
	mov r1, #0
	mov r2, #0xb0
	add r4, r0, #0
	mov r7, #0
	blx MI_CpuFill8
	strh r6, [r4]
	cmp r5, #0
	bne _021B7F76
	ldr r0, _021B80A8 ; =0x021B9B80
	ldr r2, _021B80AC ; =0x021B9B84
	add r1, r7, #0
	bl sub_0203CB80
_021B7F76:
	cmp r5, #0
	beq _021B806C
	str r5, [r4, #0x20]
	ldr r0, [r5, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #4]
	bl sub_02017934
	str r0, [r4, #0x28]
	ldr r0, [r5, #4]
	bl sub_0201736C
	bl sub_02008BDC
	add r6, r0, #0
	ldr r0, [r5, #4]
	bl sub_02017364
	mov r7, #0x1d
	lsl r7, r7, #4
	str r0, [r4, #0x24]
	ldrh r0, [r5, r7]
	str r0, [r4, #0x48]
	add r0, r7, #2
	ldrh r0, [r5, r0]
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x28]
	bl sub_02009B50
	bl sub_020099F4
	add r1, r4, #0
	add r1, #0xac
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xac
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xaf
	strb r1, [r0]
	ldr r0, [r4, #0x28]
	bl sub_02009B50
	sub r7, #8
	ldr r0, [r5, r7]
	cmp r0, #4
	bhi _021B804C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021B7FE0: ; jump table
	.short _021B7FEA - _021B7FE0 - 2 ; case 0
	.short _021B8000 - _021B7FE0 - 2 ; case 1
	.short _021B8016 - _021B7FE0 - 2 ; case 2
	.short _021B802C - _021B7FE0 - 2 ; case 3
	.short _021B8042 - _021B7FE0 - 2 ; case 4
_021B7FEA:
	cmp r6, #0
	bne _021B7FF8
	ldr r0, _021B80A8 ; =0x021B9B80
	ldr r2, _021B80B0 ; =0x021B9B8C
	mov r1, #0
	bl sub_0203CB80
_021B7FF8:
	add r0, r4, #0
	ldr r1, _021B80B4 ; =ovy199_21b765c
	ldr r2, _021B80B8 ; =0x00000B35
	b _021B8048
_021B8000:
	cmp r6, #0
	bne _021B800E
	ldr r0, _021B80A8 ; =0x021B9B80
	ldr r2, _021B80B0 ; =0x021B9B8C
	mov r1, #0
	bl sub_0203CB80
_021B800E:
	add r0, r4, #0
	ldr r1, _021B80BC ; =ovy199_21b7d4c
	ldr r2, _021B80C0 ; =0x00000B39
	b _021B8048
_021B8016:
	cmp r6, #0
	bne _021B8024
	ldr r0, _021B80A8 ; =0x021B9B80
	ldr r2, _021B80B0 ; =0x021B9B8C
	mov r1, #0
	bl sub_0203CB80
_021B8024:
	add r0, r4, #0
	ldr r1, _021B80BC ; =ovy199_21b7d4c
	ldr r2, _021B80C4 ; =0x00000B3D
	b _021B8048
_021B802C:
	cmp r6, #0
	bne _021B803A
	ldr r0, _021B80A8 ; =0x021B9B80
	ldr r2, _021B80B0 ; =0x021B9B8C
	mov r1, #0
	bl sub_0203CB80
_021B803A:
	add r0, r4, #0
	ldr r1, _021B80B4 ; =ovy199_21b765c
	ldr r2, _021B80C8 ; =0x00000B41
	b _021B8048
_021B8042:
	ldr r1, _021B80CC ; =ovy199_21b7708
	ldr r2, _021B80D0 ; =0x00000B44
	add r0, r4, #0
_021B8048:
	bl sub_021B5CD4
_021B804C:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #4
	beq _021B806C
	add r5, #0x54
	mov r0, #0x62
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0219D1B8
	str r0, [r4, #0x10]
	ldr r0, _021B80D4 ; =ovy199_21b7dc4
	add r1, r4, #0
	bl sub_02152040
_021B806C:
	ldrh r0, [r4]
	bl ovy199_21b4b48
	str r0, [r4, #0x14]
	ldrh r0, [r4]
	mov r1, #0x2c
	bl ovy199_21b4238
	str r0, [r4, #0x18]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	mov r1, #1
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0
	bl sub_020279B4
	ldrh r1, [r4]
	mov r0, #0
	bl sub_02042BA8
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B80A4: .word 0x000000BD
_021B80A8: .word 0x021B9B80
_021B80AC: .word 0x021B9B84
_021B80B0: .word 0x021B9B8C
_021B80B4: .word ovy199_21b765c
_021B80B8: .word 0x00000B35
_021B80BC: .word ovy199_21b7d4c
_021B80C0: .word 0x00000B39
_021B80C4: .word 0x00000B3D
_021B80C8: .word 0x00000B41
_021B80CC: .word ovy199_21b7708
_021B80D0: .word 0x00000B44
_021B80D4: .word ovy199_21b7dc4
	thumb_func_end ovy199_21b7f34

	thumb_func_start ovy199_21b80d8
ovy199_21b80d8: ; 0x021B80D8
	push {r4, r5, r6, lr}
	add r5, r3, #0
	ldr r4, [r5, #0x50]
	mov r6, #1
	bl sub_02027ACC
	cmp r0, #0
	beq _021B815E
	add r0, r5, #0
	add r0, #0xae
	ldrb r0, [r0]
	cmp r0, #0
	bne _021B815E
	bl sub_020120C8
	cmp r0, #0
	beq _021B815E
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021B8104
	bl ovy199_21b4b0c
_021B8104:
	ldr r0, [r5, #0x10]
	bl sub_0219D124
	add r0, r5, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B8122
	ldr r0, [r5, #0x2c]
	bl sub_02017884
	add r0, r5, #0
	mov r1, #0
	add r0, #0xad
	strb r1, [r0]
_021B8122:
	add r0, r5, #0
	bl ovy199_21b7de0
	add r0, r5, #0
	add r0, #0xab
	ldrb r0, [r0]
	cmp r0, #0
	beq _021B8138
	mov r0, #0x29
	bl sub_02011D04
_021B8138:
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02152404
	mov r0, #0x72
	ldr r1, [r5, #0x20]
	mov r2, #7
	lsl r0, r0, #2
	str r2, [r1, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021B815E:
	cmp r4, #0
	beq _021B8168
	add r0, r5, #0
	blx r4
	mov r6, #0
_021B8168:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021B8172
	bl sub_0202DB70
_021B8172:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021B817C
	bl ovy199_21b4b30
_021B817C:
	ldr r0, [r5, #0x14]
	bl ovy199_21b4c18
	ldr r0, [r5, #0x18]
	bl ovy199_21b4370
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ovy199_21b80d8

	thumb_func_start ovy199_21b818c
ovy199_21b818c: ; 0x021B818C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_02027ACC
	cmp r0, #0
	bne _021B819E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021B819E:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B81A8
	bl sub_0202DA54
_021B81A8:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021B81B6
	bl sub_0203A24C
	mov r0, #0
	str r0, [r4, #0x38]
_021B81B6:
	ldr r0, [r4, #0x18]
	bl ovy199_21b4388
	ldr r0, [r4, #0x14]
	bl ovy199_21b4c44
	ldr r0, [r4, #8]
	bl ovy199_21b4924
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021B81D2
	bl sub_0203A24C
_021B81D2:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021B81DC
	bl sub_0203A24C
_021B81DC:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021B81E6
	bl sub_0203A24C
_021B81E6:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021B81F0
	bl sub_0203A24C
_021B81F0:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021B81FA
	bl sub_0203A24C
_021B81FA:
	bl sub_02042788
	cmp r0, #0
	beq _021B820A
	mov r0, #0
	mov r1, #0
	bl ovy11_215205c
_021B820A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021B821C
	bl sub_0219D1F0
	mov r0, #0
	mov r1, #0
	bl sub_02152040
_021B821C:
	add r0, r5, #0
	bl sub_0203AB10
	mov r0, #0x62
	bl sub_0203A1D0
	ldr r0, _021B8234 ; =0x000000BD
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021B8234: .word 0x000000BD
	thumb_func_end ovy199_21b818c

	thumb_func_start ovy199_21b8238
ovy199_21b8238: ; 0x021B8238
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021B824A
	bl sub_020504DC
	mov r0, #0
	str r0, [r4, #0x1c]
_021B824A:
	pop {r4, pc}
	thumb_func_end ovy199_21b8238

	thumb_func_start ovy199_21b824c
ovy199_21b824c: ; 0x021B824C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x99
	str r1, [sp]
	ldr r3, _021B8380 ; =0x021B9B98
	mov r1, #0xb4
	mov r2, #1
	add r6, r0, #0
	mov r5, #0xb4
	bl sub_0203A1FC
	add r4, r0, #0
	add r0, #0xb0
	strh r6, [r0]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	bl sub_02048080
	bl sub_020232D0
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r2, #2
	mov r3, #0
	add r1, r0, #0
	bl sub_0203A78C
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	bl sub_02021998
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xb0
	mov r6, #0xb4
	add r6, #0xdc
	ldrh r1, [r1]
	add r0, r6, #0
	bl sub_02048530
	add r1, r4, #0
	str r0, [r4, #0x2c]
	add r1, #0xb0
	ldrh r1, [r1]
	add r0, r6, #0
	bl sub_02048530
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r1, #0
	mov r2, #0
	str r0, [sp]
	mov r0, #0x17
	mov r3, #0
	bl sub_02022D58
	add r3, r4, #0
	str r0, [r4, #0x28]
	add r3, #0xb0
	lsl r2, r7, #0x10
	ldrh r3, [r3]
	mov r0, #0
	mov r1, #2
	lsr r2, r2, #0x10
	bl sub_0204875C
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	bl sub_020241D4
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	add r3, r4, #0
	add r3, #0x8c
	str r0, [sp]
	ldr r2, [r4, #0x28]
	ldr r3, [r3]
	mov r0, #5
	mov r1, #9
	bl sub_0202E168
	add r1, r4, #0
	add r1, #0xac
	str r0, [r1]
	add r3, r4, #0
	add r3, #0xb0
	ldrh r3, [r3]
	mov r0, #1
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	add r3, r4, #0
	str r0, [r4]
	add r3, #0xb0
	ldrh r3, [r3]
	mov r0, #5
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	add r3, r4, #0
	str r0, [r4, #8]
	add r3, #0xb0
	ldrh r3, [r3]
	mov r0, #6
	mov r1, #0xc
	mov r2, #0
	bl sub_02024D20
	str r0, [r4, #4]
	mov r6, #0x20
	add r0, r4, #0
	add r5, #0xac
	str r6, [sp]
	add r0, #0xb0
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r5, #0
	bl sub_0204B0B8
	add r0, r4, #0
	str r6, [sp]
	add r0, #0xb0
	ldrh r0, [r0]
	mov r1, #5
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x17
	add r3, r5, #0
	bl sub_0204B0B8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8380: .word 0x021B9B98
	thumb_func_end ovy199_21b824c

	thumb_func_start ovy199_21b8384
ovy199_21b8384: ; 0x021B8384
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0203A7F4
	add r4, #0x8c
	ldr r0, [r4]
	bl sub_02021A3C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b8384

	thumb_func_start ovy199_21b839c
ovy199_21b839c: ; 0x021B839C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5]
	mov r0, #1
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r5, #8]
	mov r0, #5
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	ldr r2, [r5, #4]
	mov r0, #6
	lsl r1, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl sub_02044668
	add r0, r5, #0
	bl ovy199_21b8238
	bl sub_020232D8
	ldr r0, [r5, #0x20]
	bl sub_020487D4
	ldr r0, [r5, #0x28]
	bl sub_02022DA8
	ldr r0, [r5, #0x2c]
	bl sub_02048564
	ldr r0, [r5, #0x30]
	bl sub_02048564
	ldr r0, [r5, #0x24]
	bl sub_02024274
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl sub_0202E1DC
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_02021C44
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl sub_02021A18
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B842A
	bl sub_020223CC
_021B842A:
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021B8440
	bl sub_0203580C
	add r0, r5, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
_021B8440:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _021B844A
	bl sub_02048210
_021B844A:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021B8454
	bl sub_02048210
_021B8454:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021B845E
	bl sub_02048210
_021B845E:
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _021B8468
	bl sub_02048210
_021B8468:
	mov r4, #0
_021B846A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _021B8478
	bl sub_02048210
_021B8478:
	add r4, r4, #1
	cmp r4, #0xc
	blt _021B846A
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_0203A83C
	bl sub_020480A8
	add r0, r5, #0
	bl sub_0203A24C
	pop {r3, r4, r5, pc}
	thumb_func_end ovy199_21b839c

	thumb_func_start ovy199_21b8494
ovy199_21b8494: ; 0x021B8494
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	bl sub_02048838
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _021B84C0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #5
	mov r2, #3
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x48]
_021B84C0:
	ldr r4, [r5, #0x48]
	add r0, r4, #0
	bl sub_020484F4
	mov r1, #0xf
	mov r6, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r7, #2
	bl sub_020232E8
	bl sub_02017BCC
	ldr r1, [r5, #0x28]
	mov r2, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r7, [sp, #0xc]
	add r0, #0xb0
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	ldr r3, [r5, #0x2c]
	add r0, r4, #0
	bl sub_02022268
	ldr r2, [r5, #8]
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
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
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy199_21b8494

	thumb_func_start ovy199_21b8534
ovy199_21b8534: ; 0x021B8534
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021B854E
	bl sub_0203580C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
_021B854E:
	add r0, r4, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r2, #0xf
	mov r3, #0x10
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r1, [r4, #0x48]
	bl sub_02035660
	add r4, #0x90
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b8534

	thumb_func_start ovy199_21b8570
ovy199_21b8570: ; 0x021B8570
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	beq _021B85AE
	bl sub_020223B4
	cmp r0, #1
	beq _021B859A
	cmp r0, #2
	bne _021B85AA
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl sub_020223CC
	mov r0, #0
	add r4, #0x80
	str r0, [r4]
	b _021B85AA
_021B859A:
	bl sub_0203DEFC
	cmp r0, #1
	bne _021B85AA
	add r4, #0x80
	ldr r0, [r4]
	bl sub_020223BC
_021B85AA:
	mov r0, #0
	pop {r4, pc}
_021B85AE:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b8570

	thumb_func_start ovy199_21b85b4
ovy199_21b85b4: ; 0x021B85B4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021B85CC
	bl sub_0203580C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
_021B85CC:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021B85EE
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x48]
	bl sub_020484B4
	mov r0, #5
	bl sub_02045B7C
	ldr r0, [r4, #0x48]
	bl sub_02048210
	mov r0, #0
	str r0, [r4, #0x48]
_021B85EE:
	pop {r4, pc}
	thumb_func_end ovy199_21b85b4

	thumb_func_start ovy199_21b85f0
ovy199_21b85f0: ; 0x021B85F0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, #0xb0
	ldrh r0, [r0]
	mov r2, #2
	str r0, [sp]
	add r0, sp, #0
	strb r2, [r0, #4]
	add r2, r4, #0
	add r2, #0x94
	str r2, [sp, #8]
	cmp r1, #0
	beq _021B8612
	cmp r1, #1
	beq _021B861A
	b _021B8626
_021B8612:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0xe
	b _021B8620
_021B861A:
	mov r1, #0x20
	strb r1, [r0, #0x10]
	mov r1, #0x18
_021B8620:
	strb r1, [r0, #0x11]
	mov r0, #1
	str r0, [sp, #0xc]
_021B8626:
	mov r1, #0xd
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r1, #3
	strb r1, [r0, #0x13]
	add r1, r4, #0
	add r1, #0xb0
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x94
	str r2, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl sub_02048838
	add r1, r4, #0
	add r1, #0xb0
	add r0, r4, #0
	ldr r5, _021B86A8 ; =0x000039E0
	add r0, #0x98
	strh r5, [r0]
	ldrh r1, [r1]
	mov r0, #0x64
	bl sub_02048530
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0xa0
	str r2, [r0]
	ldr r0, [r4, #0x20]
	mov r1, #5
	bl sub_02048838
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xac
	add r0, #0xa4
	strh r5, [r0]
	ldr r1, [r1]
	add r0, sp, #0
	bl sub_0202D974
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	bl sub_02048564
	add r4, #0xa0
	ldr r0, [r4]
	bl sub_02048564
	mov r2, #0x11
	ldr r0, _021B86AC ; =0x04001050
	mov r1, #0x11
	sub r2, #0x19
	bl G2x_SetBlendBrightness_
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021B86A8: .word 0x000039E0
_021B86AC: .word 0x04001050
	thumb_func_end ovy199_21b85f0

	thumb_func_start ovy199_21b86b0
ovy199_21b86b0: ; 0x021B86B0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	bl sub_02048838
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _021B86DC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r1, #1
	mov r0, #6
	mov r2, #3
	mov r3, #0x1e
	str r1, [sp, #8]
	bl sub_020480C0
	str r0, [r5, #0x4c]
_021B86DC:
	ldr r4, [r5, #0x4c]
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
	ldr r1, [r5, #0x28]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r5, #0x2c]
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
	mov r0, #6
	bl sub_02045B7C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy199_21b86b0

	thumb_func_start ovy199_21b8730
ovy199_21b8730: ; 0x021B8730
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x4c]
	bl sub_020484B4
	mov r0, #6
	bl sub_02045B7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b8730

	thumb_func_start ovy199_21b874c
ovy199_21b874c: ; 0x021B874C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [r0, #0x2c]
	str r0, [sp, #0xc]
	str r1, [sp, #0x14]
	add r0, sp, #0x14
	mov r1, #4
	bl sub_0204405C
	ldr r1, _021B8888 ; =0x021B9820
	mov r7, #0
	ldrh r2, [r1]
	add r1, sp, #0x10
	strh r2, [r1]
	ldr r1, [sp, #0x14]
	asr r4, r1, #0x1f
	add r5, r1, #0
	adc r4, r0
	add r0, r6, #0
	bl sub_02048570
_021B8776:
	mov r0, #0x1f
	and r0, r5
	lsl r1, r0, #0x10
	lsr r2, r1, #0xf
	ldr r1, _021B888C ; =0x021B9824
	lsl r0, r4, #0x1b
	lsr r5, r5, #5
	orr r5, r0
	ldrh r1, [r1, r2]
	add r0, r6, #0
	lsr r4, r4, #5
	bl sub_02048734
	add r0, sp, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xbd
	mov r2, #4
	mov r3, #1
	bl sub_02022B78
	add r7, r7, #1
	cmp r7, #0xa
	blt _021B8776
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _021B87C8
	mov r0, #4
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #1
	mov r2, #8
	mov r3, #0x1e
	str r0, [sp, #8]
	bl sub_020480C0
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x40]
_021B87C8:
	ldr r0, [sp, #0xc]
	ldr r5, [r0, #0x40]
	add r0, r5, #0
	bl sub_020484F4
	mov r1, #0xf
	bl sub_0204713C
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r6, #1
	mov r4, #2
	bl sub_020232E8
	add r0, r5, #0
	bl sub_020484F4
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0xc]
	ldr r1, [r1, #0x28]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r3, #0x2c]
	mov r1, #0
	bl sub_02021CFC
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r2]
	mov r1, #1
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	mov r3, #0xc
	bl sub_02024E80
	add r0, r5, #0
	bl sub_02048244
	add r0, r5, #0
	bl sub_0204826C
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _021B883C
	str r4, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #3
	mov r2, #3
	mov r3, #0x16
	str r6, [sp, #8]
	bl sub_020480C0
	ldr r1, [sp, #0xc]
	str r0, [r1, #0x44]
_021B883C:
	ldr r0, [sp, #0xc]
	mov r1, #2
	ldr r4, [r0, #0x44]
	mov r0, #1
	mov r2, #0
	bl sub_020232E8
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #0x20]
	ldr r2, [r2, #0x2c]
	mov r1, #0xa
	bl sub_02048838
	add r0, r4, #0
	bl sub_020484F4
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0xc]
	ldr r1, [r1, #0x28]
	mov r2, #0
	str r1, [sp]
	ldr r3, [r3, #0x2c]
	mov r1, #0
	bl sub_02021CFC
	add r0, r4, #0
	bl sub_02048244
	add r0, r4, #0
	bl sub_0204826C
	mov r0, #5
	bl sub_02045B7C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B8888: .word 0x021B9820
_021B888C: .word 0x021B9824
	thumb_func_end ovy199_21b874c

	thumb_func_start ovy199_21b8890
ovy199_21b8890: ; 0x021B8890
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021B88CC
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x40]
	bl sub_020484B4
	ldr r0, [r4, #0x44]
	mov r1, #2
	bl sub_02024EEC
	ldr r0, [r4, #0x44]
	bl sub_020484B4
	ldr r0, [r4, #0x40]
	bl sub_02048210
	ldr r0, [r4, #0x44]
	bl sub_02048210
	mov r0, #5
	bl sub_02045B7C
	mov r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
_021B88CC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b8890

	thumb_func_start ovy199_21b88d0
ovy199_21b88d0: ; 0x021B88D0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xc9
	str r1, [sp]
	mov r1, #0xb7
	ldr r3, _021B896C ; =0x021B9BEC
	lsl r1, r1, #4
	mov r2, #1
	add r6, r0, #0
	mov r7, #1
	bl sub_0203A1FC
	add r5, r0, #0
	ldr r4, _021B8970 ; =0x000009E4
	ldr r0, _021B8974 ; =0x0000008B
	strh r6, [r5, r4]
	bl sub_0203CE0C
	mov r0, #0
	bl sub_02046D38
	mov r0, #0
	bl sub_02046DC0
	mov r0, #1
	bl sub_02046DF8
	ldr r2, _021B8978 ; =0x04001000
	lsl r0, r7, #0x10
	ldr r1, [r2]
	orr r0, r1
	str r0, [r2]
	bl GX_DispOn
	ldrh r0, [r5, r4]
	bl sub_020444A4
	ldr r6, _021B897C ; =0x021B9BBC
	ldrh r2, [r5, r4]
	ldr r0, _021B8980 ; =0x02093F24
	add r1, r6, #0
	bl sub_0204B6A8
	ldrh r2, [r5, r4]
	mov r0, #0x28
	mov r1, #0
	bl sub_0204BF1C
	add r1, r4, #0
	sub r1, #0x68
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_02046C40
	ldr r0, _021B8984 ; =0x021B9BAC
	bl sub_02044710
	add r0, r5, #0
	bl ovy199_21b8a60
	add r0, r5, #0
	bl ovy199_21b8cb4
	ldr r0, _021B8988 ; =0x021B8CAD
	add r1, r5, #0
	mov r2, #0
	bl sub_020056FC
	sub r4, #0x64
	str r0, [r5, r4]
	mov r0, #0x1f
	bl sub_02046DC0
	mov r0, #0x1b
	bl sub_02046D38
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021B896C: .word 0x021B9BEC
_021B8970: .word 0x000009E4
_021B8974: .word 0x0000008B
_021B8978: .word 0x04001000
_021B897C: .word 0x021B9BBC
_021B8980: .word 0x02093F24
_021B8984: .word 0x021B9BAC
_021B8988: .word 0x021B8CAD
	thumb_func_end ovy199_21b88d0

	thumb_func_start sub_021B898C
sub_021B898C: ; 0x021B898C
	ldr r3, _021B8990 ; =sub_0204B794
	bx r3
	.align 2, 0
_021B8990: .word sub_0204B794
	thumb_func_end sub_021B898C

	thumb_func_start ovy199_21b8994
ovy199_21b8994: ; 0x021B8994
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ovy199_21b8f28
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021B89AC
	bl sub_0203A6A8
	mov r0, #0
	str r0, [r5, #8]
	str r0, [r5, #0xc]
_021B89AC:
	ldr r6, _021B8A54 ; =0x00000988
	mov r4, #0
_021B89B0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021B89BE
	bl sub_0204BCD0
_021B89BE:
	add r4, r4, #1
	cmp r4, #3
	blt _021B89B0
	cmp r4, #6
	bge _021B89DE
	ldr r6, _021B8A54 ; =0x00000988
_021B89CA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021B89D8
	bl sub_0204B98C
_021B89D8:
	add r4, r4, #1
	cmp r4, #6
	blt _021B89CA
_021B89DE:
	cmp r4, #9
	bge _021B89F8
	ldr r6, _021B8A54 ; =0x00000988
_021B89E4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021B89F2
	bl sub_0204BE64
_021B89F2:
	add r4, r4, #1
	cmp r4, #9
	blt _021B89E4
_021B89F8:
	ldr r0, _021B8A58 ; =0x00000984
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021B8A04
	bl sub_0203A6A8
_021B8A04:
	mov r4, #0x26
	lsl r4, r4, #6
	ldr r0, [r5, r4]
	bl sub_0203A6A8
	sub r0, r4, #4
	ldr r0, [r5, r0]
	bl sub_0204BF98
	bl sub_0204B758
	mov r0, #1
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
	add r0, r5, #0
	bl sub_0203A24C
	ldr r0, _021B8A5C ; =0x0000008B
	bl sub_0203CDC8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021B8A54: .word 0x00000988
_021B8A58: .word 0x00000984
_021B8A5C: .word 0x0000008B
	thumb_func_end ovy199_21b8994

	thumb_func_start ovy199_21b8a60
ovy199_21b8a60: ; 0x021B8A60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10c
	ldr r4, _021B8C8C ; =0x021B9884
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
	mov r1, #1
	mov r7, #1
	bl sub_02044C98
	mov r0, #0
	bl sub_02044F90
	ldr r4, _021B8C90 ; =0x021B98E4
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
	ldr r6, _021B8C94 ; =0x021B98C4
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
	mov r0, #2
	mov r1, #0
	mov r2, #0
	mov r3, #0
	str r4, [sp, #8]
	bl sub_02045604
	add r0, r6, #0
	bl sub_02044F90
	ldr r6, _021B8C98 ; =0x021B9944
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
	mov r0, #3
	mov r1, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02045118
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
	ldr r6, _021B8C9C ; =0x021B9904
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
	ldr r6, _021B8CA0 ; =0x021B9864
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
	mov r0, #5
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
	ldr r6, _021B8CA4 ; =0x021B9924
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
	ldr r6, _021B8CA8 ; =0x021B98A4
	add r3, sp, #0xc
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
	mov r0, #7
	mov r2, #0
	mov r6, #7
	bl sub_0204476C
	mov r0, #7
	add r1, r7, #0
	bl sub_02044C98
	mov r0, #7
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
	add sp, #0x10c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021B8C8C: .word 0x021B9884
_021B8C90: .word 0x021B98E4
_021B8C94: .word 0x021B98C4
_021B8C98: .word 0x021B9944
_021B8C9C: .word 0x021B9904
_021B8CA0: .word 0x021B9864
_021B8CA4: .word 0x021B9924
_021B8CA8: .word 0x021B98A4
	thumb_func_end ovy199_21b8a60
_021B8CAC:
	.byte 0x00, 0x4B, 0x18, 0x47
	.byte 0xC9, 0xB7, 0x04, 0x02

	thumb_func_start ovy199_21b8cb4
ovy199_21b8cb4: ; 0x021B8CB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0xc]
	ldr r4, _021B8EA8 ; =0x000009E4
	ldr r1, [sp, #0xc]
	mov r0, #0x91
	ldrh r1, [r1, r4]
	bl sub_0204AA30
	mov r1, #0
	str r1, [sp, #0x18]
	str r1, [sp]
	ldr r1, [sp, #0xc]
	mov r2, #4
	ldrh r1, [r1, r4]
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
	ldrh r0, [r0, r4]
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
	ldrh r0, [r0, r4]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204AF50
	ldr r0, [sp, #0x18]
	mov r1, #3
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r2, #0
	ldrh r0, [r0, r4]
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
	ldrh r0, [r0, r4]
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
	ldrh r0, [r0, r4]
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
	ldrh r0, [r0, r4]
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
	ldrh r0, [r0, r4]
	mov r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	bl sub_0204AF50
	ldr r0, [sp, #0xc]
	mov r1, #0
	ldrh r5, [r0, r4]
	sub r4, #0x74
	add r0, #8
	add r2, r4, #0
	blx MI_CpuFill8
	ldr r0, [sp, #0x24]
	mov r1, #2
	add r2, sp, #0x30
	add r3, r5, #0
	bl sub_0204B37C
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	mov r4, #0x1e
	lsl r4, r4, #4
	ldr r0, [r0, #0xc]
	add r1, #0x10
	add r2, r4, #0
	blx MI_CpuCopy8
	ldr r0, [sp, #0x30]
	add r2, r4, #0
	ldr r1, [sp, #0xc]
	add r2, #0x10
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	add r2, r4, #0
	blx MI_CpuCopy8
	add r0, r5, #0
	bl sub_0203A24C
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, #0x10
	add r0, r0, r4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	add r0, #0x10
	str r0, [sp, #0x2c]
_021B8DE0:
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	cmp r1, #0xf
	blt _021B8DEA
	sub r1, #0xf
_021B8DEA:
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
_021B8E00:
	ldr r0, [sp, #0x1c]
	mov r4, #4
	asr r2, r0, #8
	ldr r0, [sp, #0x18]
	lsl r1, r0, #5
	ldr r0, [sp, #0x28]
	add r5, r0, r1
	lsl r0, r2, #0x18
	lsr r6, r0, #0x18
_021B8E12:
	ldr r0, [sp, #0x10]
	lsl r1, r4, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x10]
	mov r2, #1
	add r3, r6, #0
	str r0, [sp]
	add r0, r7, r1
	add r1, r5, r1
	bl sub_0202780C
	add r4, r4, #1
	cmp r4, #0xb
	blt _021B8E12
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	cmp r0, #1
	beq _021B8E54
	mov r0, #6
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _021B8E00
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	b _021B8E00
_021B8E54:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0xf
	blt _021B8DE0
	mov r1, #0x1f
	ldr r0, [sp, #0xc]
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0x1e
	lsl r1, r1, #6
	blx DC_FlushRange
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0xc]
	ldr r0, _021B8EAC ; =ovy199_21b8eb8
	add r1, #8
	mov r2, #0x14
	bl sub_020056FC
	ldr r1, [sp, #0xc]
	mov r2, #8
	str r0, [r1, #8]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021B8EB0 ; =0x04000050
	mov r1, #1
	mov r3, #8
	bl G2x_SetBlendAlpha_
	ldr r1, _021B8EB4 ; =0x00000974
	ldr r0, [sp, #0xc]
	mov r2, #0
	strb r2, [r0, r1]
	ldr r0, [sp, #0x24]
	bl sub_0204AB0C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021B8EA8: .word 0x000009E4
_021B8EAC: .word ovy199_21b8eb8
_021B8EB0: .word 0x04000050
_021B8EB4: .word 0x00000974
	thumb_func_end ovy199_21b8cb4

	thumb_func_start ovy199_21b8eb8
ovy199_21b8eb8: ; 0x021B8EB8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021B8F1C
	ldr r4, _021B8F20 ; =0x0000096B
	mov r0, #1
	ldrb r1, [r5, r4]
	eor r1, r0
	strb r1, [r5, r4]
	ldrb r1, [r5, r4]
	tst r0, r1
	bne _021B8F1C
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
	blt _021B8F10
	mov r1, #0
	sub r0, r4, #3
	strh r1, [r5, r0]
_021B8F10:
	ldr r0, _021B8F24 ; =0x0000096C
	mov r1, #2
	ldrb r0, [r5, r0]
	mov r2, #7
	bl sub_02044CFC
_021B8F1C:
	pop {r4, r5, r6, pc}
	nop
_021B8F20: .word 0x0000096B
_021B8F24: .word 0x0000096C
	thumb_func_end ovy199_21b8eb8

	thumb_func_start ovy199_21b8f28
ovy199_21b8f28: ; 0x021B8F28
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x9b
	add r6, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021B8F32:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _021B8F44
	bl sub_0204C108
	mov r0, #0
	str r0, [r5, r7]
_021B8F44:
	add r4, r4, #1
	cmp r4, #0xd
	blt _021B8F32
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b8f28

	thumb_func_start ovy199_21b8f4c
ovy199_21b8f4c: ; 0x021B8F4C
	push {r3, lr}
	ldr r3, _021B8F94 ; =0x000001F6
	cmp r1, r3
	beq _021B8F6A
	add r2, r3, #1
	cmp r1, r2
	bne _021B8F7A
	ldr r1, _021B8F98 ; =0x0000FFF1
	mov r2, #0x99
	str r1, [r0, #0x70]
	ldr r1, _021B8F9C ; =ovy199_21b9164
	bl sub_021B8FAC
	mov r0, #1
	pop {r3, pc}
_021B8F6A:
	ldr r1, _021B8FA0 ; =0x0000FFF2
	mov r2, #0x9d
	str r1, [r0, #0x70]
	ldr r1, _021B8F9C ; =ovy199_21b9164
	bl sub_021B8FAC
	mov r0, #1
	pop {r3, pc}
_021B8F7A:
	sub r3, #0x66
	cmp r1, r3
	blt _021B8F90
	ldr r1, _021B8FA4 ; =0x0000FFF3
	mov r2, #0xa3
	str r1, [r0, #0x70]
	ldr r1, _021B8F9C ; =ovy199_21b9164
	bl sub_021B8FAC
	mov r0, #1
	pop {r3, pc}
_021B8F90:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_021B8F94: .word 0x000001F6
_021B8F98: .word 0x0000FFF1
_021B8F9C: .word ovy199_21b9164
_021B8FA0: .word 0x0000FFF2
_021B8FA4: .word 0x0000FFF3
	thumb_func_end ovy199_21b8f4c

	thumb_func_start sub_021B8FA8
sub_021B8FA8: ; 0x021B8FA8
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_021B8FA8

	thumb_func_start sub_021B8FAC
sub_021B8FAC: ; 0x021B8FAC
	ldr r3, _021B8FB0 ; =sub_021B8FA8
	bx r3
	.align 2, 0
_021B8FB0: .word sub_021B8FA8
	thumb_func_end sub_021B8FAC

	thumb_func_start ovy199_21b8fb4
ovy199_21b8fb4: ; 0x021B8FB4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B8FCA
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xd5
	bl sub_021B8FAC
_021B8FCA:
	pop {r4, pc}
	thumb_func_end ovy199_21b8fb4

	thumb_func_start ovy199_21b8fcc
ovy199_21b8fcc: ; 0x021B8FCC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldr r3, _021B9000 ; =0x00007FFF
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r2, #0
	bl sub_020279B4
	mov r0, #6
	bl sub_02005EA0
	ldr r1, _021B9004 ; =ovy199_21b8fb4
	add r0, r4, #0
	mov r2, #0xe7
	bl sub_021B8FAC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021B9000: .word 0x00007FFF
_021B9004: .word ovy199_21b8fb4
	thumb_func_end ovy199_21b8fcc

	thumb_func_start ovy199_21b9008
ovy199_21b9008: ; 0x021B9008
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy199_21b8570
	cmp r0, #0
	beq _021B9028
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B9028
	ldr r1, _021B902C ; =ovy199_21b8fcc
	add r0, r4, #0
	mov r2, #0xf1
	bl sub_021B8FAC
_021B9028:
	pop {r4, pc}
	nop
_021B902C: .word ovy199_21b8fcc
	thumb_func_end ovy199_21b9008

	thumb_func_start ovy199_21b9030
ovy199_21b9030: ; 0x021B9030
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02017850
	sub r0, r0, #2
	cmp r0, #1
	bhi _021B9056
	mov r0, #0
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	bl ovy199_21b8494
	ldr r1, _021B9058 ; =ovy199_21b9008
	add r0, r4, #0
	mov r2, #0xfe
	bl sub_021B8FAC
_021B9056:
	pop {r4, pc}
	.align 2, 0
_021B9058: .word ovy199_21b9008
	thumb_func_end ovy199_21b9030

	thumb_func_start ovy199_21b905c
ovy199_21b905c: ; 0x021B905C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy199_21b8570
	cmp r0, #0
	beq _021B907E
	mov r0, #1
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x20]
	bl sub_0201782C
	ldr r1, _021B9080 ; =ovy199_21b9030
	ldr r2, _021B9084 ; =0x00000109
	add r0, r4, #0
	bl sub_021B8FAC
_021B907E:
	pop {r4, pc}
	.align 2, 0
_021B9080: .word ovy199_21b9030
_021B9084: .word 0x00000109
	thumb_func_end ovy199_21b905c

	thumb_func_start ovy199_21b9088
ovy199_21b9088: ; 0x021B9088
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #6
	bl ovy199_21b8494
	ldr r0, [r4, #0x10]
	bl ovy199_21b8534
	ldr r1, _021B90A8 ; =ovy199_21b905c
	ldr r2, _021B90AC ; =0x00000112
	add r0, r4, #0
	bl sub_021B8FAC
	pop {r4, pc}
	nop
_021B90A8: .word ovy199_21b905c
_021B90AC: .word 0x00000112
	thumb_func_end ovy199_21b9088

	thumb_func_start ovy199_21b90b0
ovy199_21b90b0: ; 0x021B90B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B90D8
	ldr r0, [r4, #0x10]
	bl ovy199_21b8730
	ldr r0, [r4, #0x1c]
	bl sub_02009B50
	mov r1, #1
	bl sub_020099E8
	ldr r1, _021B90DC ; =ovy199_21b9088
	ldr r2, _021B90E0 ; =0x0000011A
	add r0, r4, #0
	bl sub_021B8FAC
_021B90D8:
	pop {r4, pc}
	nop
_021B90DC: .word ovy199_21b9088
_021B90E0: .word 0x0000011A
	thumb_func_end ovy199_21b90b0

	thumb_func_start ovy199_21b90e4
ovy199_21b90e4: ; 0x021B90E4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B910C
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ovy199_21b874c
	ldr r0, [r4, #0x10]
	mov r1, #9
	bl ovy199_21b86b0
	ldr r1, _021B9110 ; =ovy199_21b90b0
	ldr r2, _021B9114 ; =0x0000012A
	add r0, r4, #0
	bl sub_021B8FAC
_021B910C:
	pop {r4, pc}
	nop
_021B9110: .word ovy199_21b90b0
_021B9114: .word 0x0000012A
	thumb_func_end ovy199_21b90e4

	thumb_func_start ovy199_21b9118
ovy199_21b9118: ; 0x021B9118
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ovy199_21b874c
	ldr r0, [r4, #0x10]
	mov r1, #8
	bl ovy199_21b86b0
	mov r2, #0x4f
	ldr r1, _021B913C ; =ovy199_21b90e4
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B8FAC
	pop {r4, pc}
	.align 2, 0
_021B913C: .word ovy199_21b90e4
	thumb_func_end ovy199_21b9118

	thumb_func_start ovy199_21b9140
ovy199_21b9140: ; 0x021B9140
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	beq _021B9158
	ldr r1, _021B915C ; =ovy199_21b8fcc
	ldr r2, _021B9160 ; =0x0000014B
	add r0, r4, #0
	bl sub_021B8FAC
_021B9158:
	pop {r4, pc}
	nop
_021B915C: .word ovy199_21b8fcc
_021B9160: .word 0x0000014B
	thumb_func_end ovy199_21b9140

	thumb_func_start ovy199_21b9164
ovy199_21b9164: ; 0x021B9164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r0, [r5, #8]
	add r4, #0xb
	cmp r0, #0
	beq _021B9176
	bl sub_0219D124
_021B9176:
	ldr r2, [r5, #0x70]
	ldr r1, _021B91B0 ; =0x0000FFF1
	cmp r2, r1
	bne _021B9182
	mov r4, #0x16
	b _021B919A
_021B9182:
	add r0, r1, #1
	cmp r2, r0
	bne _021B918C
	mov r4, #0x17
	b _021B919A
_021B918C:
	add r0, r1, #2
	cmp r2, r0
	bne _021B9194
	b _021B9198
_021B9194:
	cmp r2, #0xb
	blo _021B919A
_021B9198:
	mov r4, #0x14
_021B919A:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ovy199_21b86b0
	ldr r1, _021B91B4 ; =ovy199_21b9140
	ldr r2, _021B91B8 ; =0x00000167
	add r0, r5, #0
	bl sub_021B8FAC
	pop {r3, r4, r5, pc}
	nop
_021B91B0: .word 0x0000FFF1
_021B91B4: .word ovy199_21b9140
_021B91B8: .word 0x00000167
	thumb_func_end ovy199_21b9164

	thumb_func_start ovy199_21b91bc
ovy199_21b91bc: ; 0x021B91BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy199_21b8570
	cmp r0, #0
	beq _021B91D4
	ldr r1, _021B91D8 ; =ovy199_21b9318
	ldr r2, _021B91DC ; =0x00000172
	add r0, r4, #0
	bl sub_021B8FAC
_021B91D4:
	pop {r4, pc}
	nop
_021B91D8: .word ovy199_21b9318
_021B91DC: .word 0x00000172
	thumb_func_end ovy199_21b91bc

	thumb_func_start ovy199_21b91e0
ovy199_21b91e0: ; 0x021B91E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl ovy199_21b8494
	ldr r0, [r4, #0x10]
	bl ovy199_21b8534
	ldr r1, _021B9200 ; =ovy199_21b91bc
	ldr r2, _021B9204 ; =0x0000017B
	add r0, r4, #0
	bl sub_021B8FAC
	pop {r4, pc}
	nop
_021B9200: .word ovy199_21b91bc
_021B9204: .word 0x0000017B
	thumb_func_end ovy199_21b91e0

	thumb_func_start ovy199_21b9208
ovy199_21b9208: ; 0x021B9208
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_0202DBE4
	cmp r0, #0
	beq _021B9244
	ldr r0, [r4, #0x14]
	bl sub_0202DC00
	cmp r0, #0
	bne _021B9228
	add r0, r4, #0
	ldr r1, _021B9248 ; =ovy199_21b91e0
	ldr r2, _021B924C ; =0x0000018D
	b _021B9230
_021B9228:
	mov r2, #0x19
	ldr r1, _021B9250 ; =ovy199_21b8fcc
	add r0, r4, #0
	lsl r2, r2, #4
_021B9230:
	bl sub_021B8FAC
	ldr r0, [r4, #0x10]
	bl ovy199_21b85b4
	ldr r0, [r4, #0x14]
	bl sub_0202DA54
	mov r0, #0
	str r0, [r4, #0x14]
_021B9244:
	pop {r4, pc}
	nop
_021B9248: .word ovy199_21b91e0
_021B924C: .word 0x0000018D
_021B9250: .word ovy199_21b8fcc
	thumb_func_end ovy199_21b9208

	thumb_func_start ovy199_21b9254
ovy199_21b9254: ; 0x021B9254
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy199_21b8570
	cmp r0, #0
	beq _021B9276
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ovy199_21b85f0
	str r0, [r4, #0x14]
	ldr r1, _021B9278 ; =ovy199_21b9208
	ldr r2, _021B927C ; =0x000001A6
	add r0, r4, #0
	bl sub_021B8FAC
_021B9276:
	pop {r4, pc}
	.align 2, 0
_021B9278: .word ovy199_21b9208
_021B927C: .word 0x000001A6
	thumb_func_end ovy199_21b9254

	thumb_func_start ovy199_21b9280
ovy199_21b9280: ; 0x021B9280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ovy199_21b8494
	ldr r1, _021B9298 ; =ovy199_21b9254
	ldr r2, _021B929C ; =0x000001B7
	add r0, r4, #0
	bl sub_021B8FAC
	pop {r4, pc}
	.align 2, 0
_021B9298: .word ovy199_21b9254
_021B929C: .word 0x000001B7
	thumb_func_end ovy199_21b9280

	thumb_func_start ovy199_21b92a0
ovy199_21b92a0: ; 0x021B92A0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B9306
	ldr r0, [r4, #8]
	bl sub_0219D3A8
	add r1, r0, #0
	add r0, r4, #0
	bl ovy199_21b8f4c
	cmp r0, #0
	bne _021B9306
	ldr r0, [r4, #8]
	bl sub_0219D140
	cmp r0, #0
	bne _021B9306
	ldr r0, [r4, #8]
	bl sub_0219D1A4
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	bl ovy199_21b85b4
	ldr r0, [r5]
	cmp r0, #2
	bne _021B92EA
	mov r2, #0x75
	ldr r1, _021B9308 ; =ovy199_21b9118
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B8FAC
	pop {r3, r4, r5, pc}
_021B92EA:
	cmp r0, #0
	bne _021B92FA
	ldr r1, _021B9308 ; =ovy199_21b9118
	ldr r2, _021B930C ; =0x000001D7
	add r0, r4, #0
	bl sub_021B8FAC
	pop {r3, r4, r5, pc}
_021B92FA:
	ldr r1, _021B9310 ; =ovy199_21b9164
	str r0, [r4, #0x70]
	ldr r2, _021B9314 ; =0x000001DB
	add r0, r4, #0
	bl sub_021B8FAC
_021B9306:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021B9308: .word ovy199_21b9118
_021B930C: .word 0x000001D7
_021B9310: .word ovy199_21b9164
_021B9314: .word 0x000001DB
	thumb_func_end ovy199_21b92a0

	thumb_func_start ovy199_21b9318
ovy199_21b9318: ; 0x021B9318
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02042788
	cmp r0, #0
	beq _021B9360
	ldr r1, [r5, #8]
	mov r0, #9
	bl sub_0219D010
	cmp r0, #0
	beq _021B9374
	ldr r0, [r5, #0x1c]
	add r1, sp, #0
	bl sub_02007454
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_0219D0EC
	mov r2, #2
	add r1, r4, #0
	lsl r2, r2, #0x12
	bl sub_021A0854
	ldr r0, [r5, #8]
	bl sub_0219D0F8
	cmp r0, #0
	bne _021B9374
	ldr r1, _021B9378 ; =ovy199_21b92a0
	ldr r2, _021B937C ; =0x000001F6
	add r0, r5, #0
	bl sub_021B8FAC
	pop {r3, r4, r5, pc}
_021B9360:
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B9374
	mov r2, #0x7f
	ldr r1, _021B9378 ; =ovy199_21b92a0
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_021B8FAC
_021B9374:
	pop {r3, r4, r5, pc}
	nop
_021B9378: .word ovy199_21b92a0
_021B937C: .word 0x000001F6
	thumb_func_end ovy199_21b9318

	thumb_func_start ovy199_21b9380
ovy199_21b9380: ; 0x021B9380
	push {r4, lr}
	add r4, r0, #0
	bl sub_02027ACC
	cmp r0, #0
	beq _021B93A6
	bl sub_0203DEFC
	cmp r0, #0
	beq _021B93A6
	ldr r0, [r4, #0x10]
	bl ovy199_21b8890
	mov r2, #0x8b
	ldr r1, _021B93A8 ; =ovy199_21b8fcc
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B8FAC
_021B93A6:
	pop {r4, pc}
	.align 2, 0
_021B93A8: .word ovy199_21b8fcc
	thumb_func_end ovy199_21b9380

	thumb_func_start ovy199_21b93ac
ovy199_21b93ac: ; 0x021B93AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ovy199_21b874c
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl ovy199_21b86b0
	mov r2, #0x8f
	ldr r1, _021B93D0 ; =ovy199_21b9380
	add r0, r4, #0
	lsl r2, r2, #2
	bl sub_021B8FAC
	pop {r4, pc}
	.align 2, 0
_021B93D0: .word ovy199_21b9380
	thumb_func_end ovy199_21b93ac

	thumb_func_start ovy199_21b93d4
ovy199_21b93d4: ; 0x021B93D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B93EC
	bl sub_0219D124
	ldr r0, [r4, #8]
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, #8]
_021B93EC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy199_21b93d4

	thumb_func_start ovy199_21b93f0
ovy199_21b93f0: ; 0x021B93F0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _021B94A4 ; =0x000000BD
	add r5, r2, #0
	bl sub_0203CE0C
	ldrh r2, [r5, #8]
	add r0, r4, #0
	mov r1, #0x74
	bl sub_0203AAEC
	mov r1, #0
	mov r2, #0x74
	add r4, r0, #0
	blx MI_CpuFill8
	ldrh r0, [r5, #8]
	strh r0, [r4]
	ldr r0, [r5]
	bl sub_02017934
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	str r0, [r4, #0x20]
	ldr r0, [r5]
	bl sub_0201736C
	bl sub_02008BDC
	str r0, [r4, #0x28]
	bl sub_02042788
	cmp r0, #0
	beq _021B944A
	ldrh r0, [r5, #8]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #4]
	bl sub_0219D1B8
	str r0, [r4, #8]
	ldr r0, _021B94A8 ; =ovy199_21b93d4
	add r1, r4, #0
	bl sub_02152040
_021B944A:
	ldrh r0, [r4]
	bl ovy199_21b88d0
	str r0, [r4, #0xc]
	ldrh r0, [r4]
	mov r1, #0x6b
	bl ovy199_21b824c
	str r0, [r4, #0x10]
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r0, [r4]
	mov r2, #1
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_020279B4
	ldr r0, _021B94AC ; =0x00000483
	ldr r1, _021B94B0 ; =0x0000FFFF
	bl sub_02005DF4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021B9486
	cmp r0, #1
	beq _021B948E
	b _021B9498
_021B9486:
	add r0, r4, #0
	ldr r1, _021B94B4 ; =ovy199_21b9280
	ldr r2, _021B94B8 ; =0x00000276
	b _021B9494
_021B948E:
	ldr r1, _021B94BC ; =ovy199_21b93ac
	ldr r2, _021B94C0 ; =0x00000279
	add r0, r4, #0
_021B9494:
	bl sub_021B8FAC
_021B9498:
	mov r0, #0
	str r0, [r5, #0x10]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021B94A4: .word 0x000000BD
_021B94A8: .word ovy199_21b93d4
_021B94AC: .word 0x00000483
_021B94B0: .word 0x0000FFFF
_021B94B4: .word ovy199_21b9280
_021B94B8: .word 0x00000276
_021B94BC: .word ovy199_21b93ac
_021B94C0: .word 0x00000279
	thumb_func_end ovy199_21b93f0

	thumb_func_start ovy199_21b94c4
ovy199_21b94c4: ; 0x021B94C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	ldr r6, [r5, #0x30]
	add r7, r2, #0
	mov r4, #1
	cmp r6, #0
	beq _021B94E0
	bl sub_020120C8
	cmp r0, #0
	bne _021B94DE
	add r0, r5, #0
	blx r6
_021B94DE:
	mov r4, #0
_021B94E0:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021B94EA
	bl sub_0202DB70
_021B94EA:
	ldr r0, [r5, #0xc]
	bl sub_021B898C
	ldr r0, [r5, #0x10]
	bl ovy199_21b8384
	bl sub_02027ACC
	cmp r0, #0
	beq _021B953A
	bl sub_020120C8
	cmp r0, #0
	beq _021B9544
	ldr r0, [r5, #8]
	bl sub_0219D124
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021B951C
	ldr r0, [r5, #0x20]
	bl sub_02017884
	mov r0, #0
	str r0, [r5, #0x6c]
_021B951C:
	mov r0, #0
	mov r1, #0
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	mov r4, #1
	bl sub_02027B64
	mov r0, #1
	mov r1, #0
	bl sub_02152404
	str r4, [r7, #0x10]
	b _021B9544
_021B953A:
	bl sub_020120C8
	cmp r0, #0
	beq _021B9544
	mov r4, #1
_021B9544:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy199_21b94c4

	thumb_func_start ovy199_21b9548
ovy199_21b9548: ; 0x021B9548
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021B9558
	bl sub_0202DA54
_021B9558:
	ldr r0, [r4, #0x10]
	bl ovy199_21b839c
	ldr r0, [r4, #0xc]
	bl ovy199_21b8994
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021B956E
	bl sub_0203A24C
_021B956E:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021B9578
	bl sub_0203A24C
_021B9578:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021B9586
	bl sub_0219D1F0
	mov r0, #0
	str r0, [r4, #8]
_021B9586:
	bl sub_02042788
	cmp r0, #0
	beq _021B9596
	mov r0, #0
	mov r1, #0
	bl sub_02152040
_021B9596:
	add r0, r5, #0
	bl sub_0203AB10
	ldr r0, _021B95A8 ; =0x000000BD
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021B95A8: .word 0x000000BD
	thumb_func_end ovy199_21b9548
_021B95AC:
	.byte 0x60, 0x60, 0xB1, 0x00
	.byte 0x80, 0x80, 0xE0, 0x00, 0x0E, 0x0D, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x48, 0x88, 0x28, 0xD8, 0xA0, 0xC0, 0x00, 0x38, 0xA0, 0xC0, 0xC0, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x04, 0x7C, 0x04, 0x7C, 0x00, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x64, 0x00, 0x64, 0x00, 0x64, 0x00, 0x10, 0x00, 0x10, 0x00, 0x6D, 0x3E, 0x1B, 0x02
	.byte 0x65, 0x40, 0x1B, 0x02, 0x15, 0x41, 0x1B, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x02, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x41, 0x00, 0x42, 0x00
	.byte 0x43, 0x00, 0x44, 0x00, 0x45, 0x00, 0x46, 0x00, 0x47, 0x00, 0x48, 0x00, 0x4A, 0x00, 0x4B, 0x00
	.byte 0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x50, 0x00, 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x54, 0x00
	.byte 0x55, 0x00, 0x56, 0x00, 0x57, 0x00, 0x58, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x32, 0x00, 0x33, 0x00
	.byte 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x9C, 0x00, 0x1C, 0x00, 0x85, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1E, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x35, 0x7F, 0x1B, 0x02, 0xD9, 0x80, 0x1B, 0x02, 0x8D, 0x81, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00, 0x44, 0x00, 0x45, 0x00, 0x46, 0x00
	.byte 0x47, 0x00, 0x48, 0x00, 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x50, 0x00
	.byte 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00, 0x58, 0x00
	.byte 0x59, 0x00, 0x5A, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00
	.byte 0x38, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x02, 0x00, 0x80, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1C, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x06, 0x00, 0x80, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xF1, 0x93, 0x1B, 0x02, 0xC5, 0x94, 0x1B, 0x02, 0x49, 0x95, 0x1B, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x05, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x05, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x0F, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x67, 0x73, 0x79, 0x6E, 0x63, 0x5F, 0x6D, 0x65, 0x6E, 0x75, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x73, 0x79, 0x6E, 0x63, 0x5F, 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00
	.byte 0x67, 0x73, 0x79, 0x6E, 0x63, 0x5F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x2E, 0x63
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x5F, 0x70, 0x44, 0x4C, 0x57, 0x6F, 0x72
	.byte 0x6B, 0x00, 0x00, 0x00, 0x49, 0x52, 0x41, 0x4F, 0x00, 0x00, 0x00, 0x00, 0x57, 0x58, 0x39, 0x78
	.byte 0x37, 0x5A, 0x68, 0x36, 0x4A, 0x33, 0x61, 0x42, 0x43, 0x34, 0x7A, 0x51, 0x00, 0x00, 0x00, 0x00
	.byte 0x25, 0x64, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB6, 0x5A, 0xF7, 0x5E, 0x18, 0x63, 0x39, 0x67, 0x5A, 0x6B, 0x7B, 0x6F
	.byte 0x9C, 0x73, 0xBD, 0x77, 0xDE, 0x7B, 0xFF, 0x7F, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x80, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x84, 0x00, 0x00, 0x00, 0x9B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00
	.byte 0x9B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0x91, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x96, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00
	.byte 0xA0, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x73, 0x79, 0x6E, 0x63, 0x5F, 0x64, 0x69, 0x73, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x67, 0x73, 0x79, 0x6E, 0x63, 0x5F, 0x73, 0x74, 0x61, 0x74, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00
	.byte 0x43, 0x47, 0x45, 0x41, 0x52, 0x32, 0x5F, 0x45, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x55, 0x53, 0x49
	.byte 0x43, 0x41, 0x4C, 0x5F, 0x45, 0x00, 0x00, 0x00, 0x5A, 0x55, 0x4B, 0x41, 0x4E, 0x5F, 0x45, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x50, 0x61, 0x72, 0x65, 0x6E, 0x74, 0x00, 0x70, 0x72, 0x6F, 0x66
	.byte 0x69, 0x6C, 0x65, 0x49, 0x44, 0x00, 0x00, 0x00, 0x70, 0x64, 0x77, 0x61, 0x63, 0x63, 0x5F, 0x6D
	.byte 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x10, 0x00, 0x20, 0x00, 0x70, 0x64, 0x77, 0x61
	.byte 0x63, 0x63, 0x5F, 0x64, 0x69, 0x73, 0x70, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021B95AC
