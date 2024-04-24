    .include "macros/function.inc"
	.include "overlay75.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy75_21e90c0
ovy75_21e90c0: ; 0x021E90C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	sub r0, #0x13
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r7, #0
	ldr r0, _021E9110 ; =ovy75_21e93b4
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x12
	mov r3, #1
	bl sub_02199824
	str r7, [r4, #4]
	str r7, [r4, #8]
	ldr r2, _021E9114 ; =0x00007FDF
	add r0, r5, #0
	mov r1, #8
	add r3, r6, #0
	mov r7, #8
	bl sub_0219990C
	add r0, r5, #0
	str r7, [r4]
	bl sub_02199A50
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9110: .word ovy75_21e93b4
_021E9114: .word 0x00007FDF
	thumb_func_end ovy75_21e90c0

	thumb_func_start ovy75_21e9118
ovy75_21e9118: ; 0x021E9118
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E915E
	sub r0, r0, #1
	str r0, [r4]
	bne _021E9172
	ldr r2, _021E918C ; =0x00007F5F
	add r0, r5, #0
	mov r1, #8
	mov r3, #0x5a
	str r6, [sp]
	bl sub_02199958
	mov r0, #1
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199734
	b _021E9172
_021E915E:
	add r0, r5, #0
	bl sub_021999DC
	cmp r0, #0
	beq _021E9172
	cmp r7, #0
	beq _021E9172
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9172:
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02199A78
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E918C: .word 0x00007F5F
	thumb_func_end ovy75_21e9118

	thumb_func_start ovy75_21e9190
ovy75_21e9190: ; 0x021E9190
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x10
	sub r0, #0x13
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021E9200 ; =ovy75_21e93b4
	mov r1, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0x10
	mov r3, #1
	bl sub_02199824
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	ldr r2, _021E9204 ; =0x00007F5F
	add r0, r5, #0
	mov r1, #8
	add r3, r7, #0
	bl sub_0219990C
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _021E9200 ; =ovy75_21e93b4
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #1
	str r6, [sp, #4]
	bl sub_02199880
	mov r0, #1
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199740
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9200: .word ovy75_21e93b4
_021E9204: .word 0x00007F5F
	thumb_func_end ovy75_21e9190

	thumb_func_start ovy75_21e9208
ovy75_21e9208: ; 0x021E9208
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r2, #0
	bl sub_02199874
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy75_21e9208

	thumb_func_start ovy75_21e9230
ovy75_21e9230: ; 0x021E9230
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x12
	mov r3, #3
	bl sub_02199854
	mov r0, #0x10
	str r0, [r4]
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02199A78
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ovy75_21e9230

	thumb_func_start ovy75_21e926c
ovy75_21e926c: ; 0x021E926C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E92A0
	sub r0, r0, #1
	str r0, [r4]
	bne _021E92CA
	ldr r1, _021E92E4 ; =0x00007FDF
	add r0, r5, #0
	mov r2, #0x5a
	add r3, r6, #0
	bl sub_021999BC
	b _021E92CA
_021E92A0:
	cmp r6, #0
	beq _021E92AC
	add r0, r5, #0
	bl sub_021999DC
	b _021E92AE
_021E92AC:
	mov r0, #1
_021E92AE:
	cmp r0, #0
	beq _021E92CA
	cmp r7, #0
	beq _021E92CA
	mov r6, #1
	add r0, r5, #0
	str r6, [r4, #8]
	bl sub_021997E8
	cmp r0, #0
	bne _021E92CA
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E92CA:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E92E4: .word 0x00007FDF
	thumb_func_end ovy75_21e926c

	thumb_func_start ovy75_21e92e8
ovy75_21e92e8: ; 0x021E92E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02199948
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219974C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e92e8

	thumb_func_start ovy75_21e9300
ovy75_21e9300: ; 0x021E9300
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02199C64
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	cmp r1, #0
	bne _021E9324
	ldr r0, [r0]
	cmp r0, #0
	beq _021E9334
	add r0, r1, #1
	str r0, [r4, #0x20]
	b _021E9334
_021E9324:
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	bpl _021E9334
	add r0, r5, #0
	bl sub_0219980C
	pop {r3, r4, r5, pc}
_021E9334:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02199C6C
	add r1, sp, #0
	mov r0, #0
	ldrsh r3, [r1, r0]
	ldr r2, [r4, #0x14]
	ldr r0, _021E93A8 ; =0x021EA110
	ldrsb r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r2, r0
	ble _021E9366
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	blx sub_0208D65C
	str r1, [r4, #0x10]
_021E9366:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02199C80
	ldr r0, [r4, #0x10]
	ldr r1, _021E93AC ; =0x00000151
	add r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	blx sub_0208D868
	str r1, [r4, #0x14]
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, _021E93B0 ; =0xFFFFFEE4
	cmp r1, r0
	bge _021E9392
	sub r0, #0xc
	cmp r1, r0
	bgt _021E939A
_021E9392:
	cmp r1, #0xd4
	ble _021E93A6
	cmp r1, #0xe8
	bge _021E93A6
_021E939A:
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0]
	add r0, r5, #0
	bl sub_0219980C
_021E93A6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E93A8: .word 0x021EA110
_021E93AC: .word 0x00000151
_021E93B0: .word 0xFFFFFEE4
	thumb_func_end ovy75_21e9300

	thumb_func_start ovy75_21e93b4
ovy75_21e93b4: ; 0x021E93B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #4]
	str r0, [sp]
	str r2, [sp, #8]
	bl sub_021997E4
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	mov r5, #0
	cmp r0, #0
	ble _021E9484
	ldr r0, [sp, #0x18]
	add r7, sp, #0x24
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	sub r0, #8
	str r0, [sp, #0x20]
	sub r0, #0x20
	str r0, [sp, #0x20]
_021E93F0:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_021997F4
	add r6, r0, #0
	beq _021E9484
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02199C64
	str r0, [sp, #0x1c]
	mov r0, #4
	bl sub_02005748
	add r1, r0, #0
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	bl sub_0204C504
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x20]
	bl sub_02005748
	mov r1, #0x1e
	blx sub_0208D65C
	add r0, r1, #2
	str r0, [r4, #0x24]
	mov r0, #8
	bl sub_02005748
	add r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x1c]
	ldr r0, _021E9488 ; =0x0000019E
	bl sub_02005748
	sub r0, #0x20
	strh r0, [r7]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021E9466
	ldr r0, [sp, #0xc]
	cmp r5, r0
	blt _021E9466
	mov r0, #0x14
	bl sub_02005748
	ldr r1, [sp, #0x20]
	b _021E9470
_021E9466:
	mov r0, #0x14
	bl sub_02005748
	mov r1, #7
	mvn r1, r1
_021E9470:
	sub r0, r1, r0
	strh r0, [r7, #2]
	add r0, r6, #0
	add r1, sp, #0x24
	bl sub_02199C80
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _021E93F0
_021E9484:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9488: .word 0x0000019E
	thumb_func_end ovy75_21e93b4

	thumb_func_start ovy75_21e948c
ovy75_21e948c: ; 0x021E948C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021997E4
	mov r1, #2
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _021E94E8 ; =ovy75_21e9784
	mov r1, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #6
	mov r3, #1
	bl sub_02199824
	ldr r2, _021E94EC ; =0x00007FFF
	add r0, r5, #0
	mov r1, #4
	add r3, r6, #0
	bl sub_0219990C
	mov r0, #8
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	add r0, r5, #0
	bl sub_02199A50
	ldr r1, _021E94F0 ; =0x000006E3
	add r0, r5, #0
	bl sub_02199BE8
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021E94E8: .word ovy75_21e9784
_021E94EC: .word 0x00007FFF
_021E94F0: .word 0x000006E3
	thumb_func_end ovy75_21e948c

	thumb_func_start ovy75_21e94f4
ovy75_21e94f4: ; 0x021E94F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E9538
	sub r0, r0, #1
	str r0, [r4]
	bne _021E9554
	ldr r2, _021E9560 ; =0x00007B18
	add r0, r5, #0
	mov r1, #4
	mov r3, #0x5a
	str r6, [sp]
	bl sub_02199958
	mov r0, #4
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199734
	b _021E9554
_021E9538:
	add r0, r5, #0
	bl sub_021999DC
	cmp r0, #0
	beq _021E9554
	cmp r7, #0
	beq _021E9554
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0219978C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9554:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy75_21e9860
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9560: .word 0x00007B18
	thumb_func_end ovy75_21e94f4

	thumb_func_start ovy75_21e9564
ovy75_21e9564: ; 0x021E9564
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	bl sub_021997E4
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	sub r0, r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _021E95DC ; =ovy75_21e9784
	mov r1, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #2
	mov r3, #1
	bl sub_02199824
	ldr r2, _021E95E0 ; =0x00007B18
	add r0, r5, #0
	mov r1, #4
	add r3, r7, #0
	bl sub_0219990C
	mov r0, #0
	str r0, [r6, #4]
	str r0, [r6, #8]
	str r0, [r6, #0x24]
	mov r0, #2
	str r0, [sp]
	ldr r1, _021E95DC ; =ovy75_21e9784
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	str r4, [sp, #4]
	bl sub_02199880
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0219978C
	mov r0, #4
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199740
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E95DC: .word ovy75_21e9784
_021E95E0: .word 0x00007B18
	thumb_func_end ovy75_21e9564

	thumb_func_start ovy75_21e95e4
ovy75_21e95e4: ; 0x021E95E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02199874
	cmp r0, #0
	beq _021E961E
	ldr r1, [r4, #4]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r0, r0, #8
	lsl r1, r0, #2
	ldr r0, _021E962C ; =0x021EA0F0
	ldr r1, [r0, r1]
	mov r0, #7
	mvn r0, r0
	cmp r1, r0
	bgt _021E961E
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl ovy75_21e9784
_021E961E:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy75_21e9860
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E962C: .word 0x021EA0F0
	thumb_func_end ovy75_21e95e4

	thumb_func_start ovy75_21e9630
ovy75_21e9630: ; 0x021E9630
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl sub_02199854
	mov r0, #0xa
	str r0, [r4]
	add r0, r5, #0
	add r1, r4, #0
	bl ovy75_21e9860
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	bl sub_0219978C
	add r0, r5, #0
	bl sub_02199BF8
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy75_21e9630

	thumb_func_start ovy75_21e966c
ovy75_21e966c: ; 0x021E966C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E969E
	sub r0, r0, #1
	str r0, [r4]
	bne _021E96C6
	ldr r1, _021E96D4 ; =0x00007FFF
	add r0, r5, #0
	mov r2, #0x3c
	add r3, r6, #0
	bl sub_021999BC
	b _021E96C6
_021E969E:
	cmp r6, #0
	beq _021E96AA
	add r0, r5, #0
	bl sub_021999DC
	b _021E96AC
_021E96AA:
	mov r0, #1
_021E96AC:
	cmp r0, #0
	beq _021E96C6
	cmp r7, #0
	beq _021E96C6
	mov r6, #1
	add r0, r5, #0
	str r6, [r4, #8]
	bl sub_021997E8
	cmp r0, #0
	bne _021E96C6
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E96C6:
	add r0, r5, #0
	add r1, r4, #0
	bl ovy75_21e9860
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E96D4: .word 0x00007FFF
	thumb_func_end ovy75_21e966c

	thumb_func_start ovy75_21e96d8
ovy75_21e96d8: ; 0x021E96D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021997E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199948
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219974C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e96d8

	thumb_func_start ovy75_21e96f8
ovy75_21e96f8: ; 0x021E96F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02199C64
	add r1, sp, #0
	mov r2, #0
	add r6, r0, #0
	mov r7, #0
	bl Oam_GetSpritePosData
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E9720
	cmp r0, #1
	beq _021E977A
	pop {r3, r4, r5, r6, r7, pc}
_021E9720:
	add r1, sp, #0
	ldr r0, [r4, #0x10]
	ldrsh r2, [r1, r7]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1]
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1, #2]
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021E974C
	mov r0, #1
	str r0, [r4, #0xc]
_021E974C:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	bne _021E976E
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	cmp r0, #1
	ble _021E976E
	sub r0, r0, #1
	str r0, [r4, #8]
_021E976E:
	add r0, r6, #0
	add r1, sp, #0
	mov r2, #0
	bl Oam_SetSpritePosData
	pop {r3, r4, r5, r6, r7, pc}
_021E977A:
	add r0, r5, #0
	bl sub_0219980C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy75_21e96f8

	thumb_func_start ovy75_21e9784
ovy75_21e9784: ; 0x021E9784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r2, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	bl sub_021997E4
	ldr r1, [r0, #4]
	add r2, r1, #1
	mov r1, #1
	lsl r1, r1, #0xa
	str r2, [r0, #4]
	cmp r2, r1
	blt _021E97A4
	mov r1, #0
	str r1, [r0, #4]
_021E97A4:
	ldr r1, [r0, #4]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021E9852
	ldr r0, _021E9858 ; =0x021EA100
	lsl r2, r1, #2
	ldr r1, _021E985C ; =0x021EA0F0
	ldr r0, [r0, r2]
	ldr r4, [r1, r2]
	str r0, [sp, #0x10]
_021E97C4:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_021997F4
	add r6, r0, #0
	beq _021E9852
	bl sub_02199C5C
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02199C64
	add r7, r0, #0
	mov r0, #0
	str r0, [r5]
	mov r0, #3
	bl sub_02005748
	add r0, #9
	str r0, [r5, #4]
	mov r0, #4
	bl sub_02005748
	add r6, r0, #0
	lsl r1, r6, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
	add r1, r6, #1
	add r0, r1, #0
	mul r0, r4
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	mul r0, r1
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	cmp r6, #3
	bne _021E9822
	ldr r0, [r5, #0x10]
	add r0, r0, r4
	str r0, [r5, #0x10]
	ldr r1, [r5, #8]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [r5, #8]
_021E9822:
	mov r0, #0x18
	str r4, [r5, #0x14]
	bl sub_02005748
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	mov r0, #0xa8
	bl sub_02005748
	sub r0, #0x20
	add r1, sp, #0x14
	strh r0, [r1, #2]
	add r0, r7, #0
	add r1, sp, #0x14
	mov r2, #0
	bl Oam_SetSpritePosData
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021E97C4
_021E9852:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9858: .word 0x021EA100
_021E985C: .word 0x021EA0F0
	thumb_func_end ovy75_21e9784

	thumb_func_start ovy75_21e9860
ovy75_21e9860: ; 0x021E9860
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	add r6, r0, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r6, #0
	bl sub_02199B90
	ldr r7, [r5, #0x20]
	mov r1, #0x1c
	add r0, r7, #0
	blx sub_0208D65C
	add r4, r0, #0
	add r0, r7, #1
	mov r1, #0xfc
	mov r7, #0xfc
	blx sub_0208D868
	str r1, [r5, #0x20]
	ldr r0, _021E990C ; =0x021EA0E5
	ldr r1, [r5, #8]
	ldrsb r0, [r0, r4]
	ldr r2, [sp, #4]
	add r0, r1, r0
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	sub r1, r0, r1
	ldr r2, _021E9910 ; =0x021EA0DC
	str r1, [r5, #8]
	ldrsb r2, [r2, r4]
	ldr r0, [r5, #0x24]
	ldr r3, [sp]
	add r0, r0, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [r5, #0x24]
	cmp r1, #0
	bge _021E98C4
	add r0, r7, #4
	add r0, r1, r0
	str r0, [r5, #8]
_021E98C4:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	bge _021E98D2
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r5, #0x24]
_021E98D2:
	ldr r0, [r5, #8]
	mov r2, #0x18
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x18
	sub r0, r0, r1
	ror r0, r2
	add r1, r1, r0
	ldr r0, [r5, #0x24]
	str r1, [r5, #8]
	lsr r3, r0, #0x1f
	lsl r0, r0, #0x18
	sub r0, r0, r3
	ror r0, r2
	add r0, r3, r0
	str r0, [r5, #0x24]
	add r0, r6, #0
	neg r1, r1
	mov r2, #0
	bl sub_021997BC
	ldr r1, [r5, #0x24]
	add r0, r6, #0
	neg r1, r1
	mov r2, #0
	bl sub_021997CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E990C: .word 0x021EA0E5
_021E9910: .word 0x021EA0DC
	thumb_func_end ovy75_21e9860

	thumb_func_start ovy75_21e9914
ovy75_21e9914: ; 0x021E9914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021997E4
	mov r7, #1
	add r4, r0, #0
	str r7, [sp]
	sub r0, r7, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021E9964 ; =ovy75_21e9c54
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	mov r3, #1
	bl sub_02199824
	ldr r2, _021E9968 ; =0x00007FDF
	add r0, r5, #0
	mov r1, #9
	add r3, r6, #0
	bl sub_0219990C
	add r0, r5, #0
	str r7, [r4]
	bl sub_02199A50
	ldr r1, _021E996C ; =0x000006E4
	add r0, r5, #0
	bl sub_02199BE8
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9964: .word ovy75_21e9c54
_021E9968: .word 0x00007FDF
_021E996C: .word 0x000006E4
	thumb_func_end ovy75_21e9914

	thumb_func_start ovy75_21e9970
ovy75_21e9970: ; 0x021E9970
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E99B6
	sub r0, r0, #1
	str r0, [r4]
	bne _021E99CA
	ldr r2, _021E99E4 ; =0x00007F80
	add r0, r5, #0
	mov r1, #9
	mov r3, #0x3c
	str r6, [sp]
	bl sub_02199958
	mov r0, #5
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199734
	b _021E99CA
_021E99B6:
	add r0, r5, #0
	bl sub_021999DC
	cmp r0, #0
	beq _021E99CA
	cmp r7, #0
	beq _021E99CA
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E99CA:
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02199A78
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E99E4: .word 0x00007F80
	thumb_func_end ovy75_21e9970

	thumb_func_start ovy75_21e99e8
ovy75_21e99e8: ; 0x021E99E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_021997E4
	mov r7, #1
	str r7, [sp]
	sub r0, r7, #5
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021E9A48 ; =ovy75_21e9c54
	str r7, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r1, #1
	mov r2, #1
	mov r3, #1
	bl sub_02199824
	ldr r2, _021E9A4C ; =0x00007F80
	add r0, r5, #0
	mov r1, #9
	add r3, r6, #0
	bl sub_0219990C
	str r7, [sp]
	ldr r1, _021E9A48 ; =ovy75_21e9c54
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0xa
	str r4, [sp, #4]
	bl sub_02199880
	mov r0, #5
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199740
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E9A48: .word ovy75_21e9c54
_021E9A4C: .word 0x00007F80
	thumb_func_end ovy75_21e99e8

	thumb_func_start ovy75_21e9a50
ovy75_21e9a50: ; 0x021E9A50
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	bl sub_021997E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199874
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e9a50

	thumb_func_start ovy75_21e9a80
ovy75_21e9a80: ; 0x021E9A80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	mov r3, #4
	bl sub_02199854
	mov r0, #1
	str r0, [r4]
	add r0, r5, #0
	bl sub_02199BF8
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e9a80

	thumb_func_start ovy75_21e9aac
ovy75_21e9aac: ; 0x021E9AAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E9AE0
	sub r0, r0, #1
	str r0, [r4]
	bne _021E9B06
	ldr r1, _021E9B20 ; =0x00007FDF
	add r0, r5, #0
	mov r2, #0x3c
	add r3, r6, #0
	bl sub_021999BC
	b _021E9B06
_021E9AE0:
	cmp r6, #0
	beq _021E9AEC
	add r0, r5, #0
	bl sub_021999DC
	b _021E9AEE
_021E9AEC:
	mov r0, #1
_021E9AEE:
	cmp r0, #0
	beq _021E9B06
	cmp r7, #0
	beq _021E9B06
	add r0, r5, #0
	bl sub_021997E8
	cmp r0, #0
	bne _021E9B06
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9B06:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9B20: .word 0x00007FDF
	thumb_func_end ovy75_21e9aac

	thumb_func_start ovy75_21e9b24
ovy75_21e9b24: ; 0x021E9B24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021997E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199948
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219974C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e9b24

	thumb_func_start ovy75_21e9b44
ovy75_21e9b44: ; 0x021E9B44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02199C64
	add r7, sp, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199C6C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E9B70
	cmp r0, #1
	beq _021E9BD8
	cmp r0, #2
	beq _021E9C4C
	pop {r3, r4, r5, r6, r7, pc}
_021E9B70:
	ldr r0, [r4]
	add r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021E9BB0
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #1
	add r0, #8
	str r0, [r4]
	mov r0, #2
	str r0, [r4, #0x10]
	str r0, [r4, #8]
	add r0, r6, #0
	bl sub_0204C510
	add r1, r0, #0
	add r1, r1, #3
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0204C504
	pop {r3, r4, r5, r6, r7, pc}
_021E9BB0:
	ldr r2, [r4, #0x10]
	add r0, sp, #0
	mov r1, #0
	lsl r2, r2, #0x10
	ldrsh r1, [r0, r1]
	asr r2, r2, #0x10
	add r1, r1, r2
	strh r1, [r0]
	mov r1, #2
	ldr r2, [r4, #8]
	ldrsh r1, [r0, r1]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add r1, r1, r2
	strh r1, [r0, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199C80
	pop {r3, r4, r5, r6, r7, pc}
_021E9BD8:
	add r0, sp, #0
	mov r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r1, r2, r1
	strh r1, [r0]
	ldr r1, [r4]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	bne _021E9C06
	mov r1, #2
	ldrsh r2, [r0, r1]
	ldr r1, [r4, #8]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r1, r2, r1
	b _021E9C12
_021E9C06:
	mov r1, #2
	ldrsh r2, [r0, r1]
	ldr r1, [r4, #8]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	sub r1, r2, r1
_021E9C12:
	strh r1, [r0, #2]
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	bne _021E9C34
	ldr r0, [r4, #8]
	sub r0, r0, #1
	bmi _021E9C2C
	str r0, [r4, #8]
_021E9C2C:
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	bmi _021E9C34
	str r0, [r4, #0x10]
_021E9C34:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02199CF0
	ldr r1, [r4]
	sub r0, r1, #1
	str r0, [r4]
	cmp r1, #0
	bgt _021E9C52
	mov r0, #2
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021E9C4C:
	add r0, r5, #0
	bl sub_0219980C
_021E9C52:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy75_21e9b44

	thumb_func_start ovy75_21e9c54
ovy75_21e9c54: ; 0x021E9C54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_021997E4
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021E9D34
_021E9C6C:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_021997F4
	add r7, r0, #0
	beq _021E9D34
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02199C64
	str r0, [sp, #0xc]
	mov r0, #0
	bl sub_02005748
	mov r1, #0
	str r1, [r4]
	mov r1, #0x64
	add r6, r0, #0
	blx sub_0208D868
	cmp r1, #0x1e
	bhs _021E9CA0
	mov r5, #0
	b _021E9CAE
_021E9CA0:
	cmp r1, #0x5f
	bhs _021E9CA8
	mov r5, #1
	b _021E9CAE
_021E9CA8:
	cmp r1, #0x64
	bhs _021E9CAE
	mov r5, #2
_021E9CAE:
	mov r1, #2
	sub r1, r1, r5
	lsl r1, r1, #0x10
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x10
	bl sub_0204C504
	add r0, r6, #0
	mov r1, #0x17
	blx sub_0208D868
	add r2, r5, #1
	mov r0, #0xa
	mul r0, r2
	add r0, r1, r0
	str r0, [r4, #8]
	cmp r5, #2
	bne _021E9CD8
	ldr r0, [r4, #8]
	add r0, r0, #3
	str r0, [r4, #8]
_021E9CD8:
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r1, r0, #2
	add r0, r5, #1
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x10]
	cmp r5, #2
	bne _021E9CF2
	ldr r0, [r4, #0x10]
	sub r0, r0, #2
	str r0, [r4, #0x10]
_021E9CF2:
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #3
	and r0, r6
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r1, _021E9D38 ; =0x0000010E
	add r0, r6, #0
	blx sub_0208D868
	mov r0, #0xf
	mul r0, r5
	sub r0, #0x40
	add r1, r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	mov r0, #0xf
	add r1, r6, #0
	and r1, r0
	sub r1, #8
	add r0, sp, #0x14
	strh r1, [r0, #2]
	add r0, r7, #0
	add r1, sp, #0x14
	bl sub_02199C80
	ldr r0, [sp, #0x10]
	str r6, [r4, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021E9C6C
_021E9D34:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9D38: .word 0x0000010E
	thumb_func_end ovy75_21e9c54

	thumb_func_start ovy75_21e9d3c
ovy75_21e9d3c: ; 0x021E9D3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021997E4
	mov r1, #2
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #4
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, _021E9D7C ; =ovy75_21e9fb4
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0x10
	mov r3, #0x14
	bl sub_02199824
	ldr r2, _021E9D80 ; =0x00007FFF
	add r0, r5, #0
	mov r1, #8
	add r3, r6, #0
	bl sub_0219990C
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E9D7C: .word ovy75_21e9fb4
_021E9D80: .word 0x00007FFF
	thumb_func_end ovy75_21e9d3c

	thumb_func_start ovy75_21e9d84
ovy75_21e9d84: ; 0x021E9D84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _021E9DC8
	sub r0, r0, #1
	str r0, [r4]
	ldr r2, _021E9DF8 ; =0x00007F57
	add r0, r5, #0
	mov r1, #8
	mov r3, #0x5a
	str r6, [sp]
	bl sub_02199958
	mov r0, #8
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199734
	b _021E9DDC
_021E9DC8:
	add r0, r5, #0
	bl sub_021999DC
	cmp r0, #0
	beq _021E9DDC
	cmp r7, #0
	beq _021E9DDC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9DDC:
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl sub_02199A78
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E9DF8: .word 0x00007F57
	thumb_func_end ovy75_21e9d84

	thumb_func_start ovy75_21e9dfc
ovy75_21e9dfc: ; 0x021E9DFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_021997E4
	mov r1, #2
	str r1, [sp]
	sub r0, r1, #4
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r7, _021E9E5C ; =ovy75_21e9fb4
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #2
	mov r3, #0x14
	str r7, [sp, #0x10]
	bl sub_02199824
	ldr r2, _021E9E60 ; =0x00007F57
	add r0, r5, #0
	mov r1, #8
	add r3, r6, #0
	bl sub_0219990C
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #0xa
	str r4, [sp, #4]
	bl sub_02199880
	mov r0, #8
	bl sub_020198F0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0x3d
	bl sub_02199740
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E9E5C: .word ovy75_21e9fb4
_021E9E60: .word 0x00007F57
	thumb_func_end ovy75_21e9dfc

	thumb_func_start ovy75_21e9e64
ovy75_21e9e64: ; 0x021E9E64
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	bl sub_021997E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199874
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e9e64

	thumb_func_start ovy75_21e9e94
ovy75_21e9e94: ; 0x021E9E94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_021997E4
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #2
	bl sub_02199854
	mov r0, #0x64
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ovy75_21e9e94

	thumb_func_start ovy75_21e9eb8
ovy75_21e9eb8: ; 0x021E9EB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r2, #0
	add r6, r1, #0
	bl sub_021997E4
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02199868
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _021E9EEC
	sub r0, r0, #1
	str r0, [r4]
	bne _021E9F12
	ldr r1, _021E9F2C ; =0x00007FFF
	add r0, r5, #0
	mov r2, #0x78
	add r3, r6, #0
	bl sub_021999BC
	b _021E9F12
_021E9EEC:
	cmp r6, #0
	beq _021E9EF8
	add r0, r5, #0
	bl sub_021999DC
	b _021E9EFA
_021E9EF8:
	mov r0, #1
_021E9EFA:
	cmp r0, #0
	beq _021E9F12
	cmp r7, #0
	beq _021E9F12
	add r0, r5, #0
	bl sub_021997E8
	cmp r0, #0
	bne _021E9F12
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9F12:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02199A78
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02199B90
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E9F2C: .word 0x00007FFF
	thumb_func_end ovy75_21e9eb8

	thumb_func_start ovy75_21e9f30
ovy75_21e9f30: ; 0x021E9F30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021997E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02199948
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0219974C
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy75_21e9f30

	thumb_func_start ovy75_21e9f50
ovy75_21e9f50: ; 0x021E9F50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02199C5C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02199C64
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02199C6C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	ldr r1, [r4, #0x10]
	blx sub_0208D65C
	cmp r1, #0
	bne _021E9F88
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #8]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1]
_021E9F88:
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	blx sub_0208D65C
	cmp r1, #0
	bne _021E9FA4
	add r1, sp, #0
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r2, r0
	strh r0, [r1, #2]
_021E9FA4:
	ldr r1, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _021E9FB2
	add r0, r5, #0
	bl sub_0219980C
_021E9FB2:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy75_21e9f50

	thumb_func_start ovy75_21e9fb4
ovy75_21e9fb4: ; 0x021E9FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_021997E4
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt _021E9FCE
	b _021EA0D8
_021E9FCE:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_021997F4
	add r7, r0, #0
	beq _021EA0D8
	bl sub_02199C5C
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02199C64
	str r0, [sp, #0x10]
	mov r0, #0
	bl sub_02005748
	add r4, r0, #0
	mov r0, #0
	bl sub_02005748
	add r6, r0, #0
	mov r0, #0
	str r0, [r5]
	add r0, r4, #0
	mov r1, #5
	blx sub_0208D65C
	add r0, r1, #7
	str r0, [r5, #4]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021EA01A
	mov r0, #1
	b _021EA01E
_021EA01A:
	mov r0, #0
	mvn r0, r0
_021EA01E:
	str r0, [r5, #8]
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r4, #0
	mov r1, #6
	blx sub_0208D65C
	add r0, r1, #3
	str r0, [r5, #0x10]
	add r0, r6, #0
	mov r1, #5
	blx sub_0208D65C
	add r0, r1, #4
	str r0, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0x14
	blx sub_0208D65C
	str r1, [sp, #0xc]
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	blx sub_0208D65C
	sub r1, #0x40
	add r0, sp, #0x18
	strh r1, [r0]
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r1, r2, r1
	sub r1, #8
	add r0, sp, #0x18
	strh r1, [r0, #2]
	add r0, r7, #0
	add r1, sp, #0x18
	bl sub_02199C80
	add r1, sp, #0x18
	mov r0, #0
	ldrsh r0, [r1, r0]
	mov r1, #3
	blx sub_0208D65C
	mov r1, #0x32
	sub r7, r1, r0
	mov r1, #0xce
	sub r1, r1, r0
	bpl _021EA092
	add r0, r6, #0
	neg r1, r1
	blx sub_0208D65C
	sub r2, r7, r1
	b _021EA09A
_021EA092:
	add r0, r6, #0
	blx sub_0208D65C
	add r2, r7, r1
_021EA09A:
	add r1, sp, #0x18
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r7, r0
	bgt _021EA0B0
	cmp r2, r0
	blt _021EA0B0
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	str r0, [r5, #4]
	b _021EA0BE
_021EA0B0:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #0xc]
_021EA0BE:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_0204C504
	ldr r0, [sp, #0x14]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x14]
	cmp r1, r0
	bge _021EA0D8
	b _021E9FCE
_021EA0D8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ovy75_21e9fb4
_021EA0DC:
	.byte 0x03, 0x02, 0x01, 0x02
	.byte 0x01, 0x02, 0x03, 0x02, 0x03, 0x07, 0x08, 0x08, 0x08, 0x08, 0x08, 0x07, 0x07, 0x07, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00
	.byte 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x37, 0x00, 0x01, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x18, 0x00, 0x1E, 0x00, 0x1D, 0x00, 0x2A, 0x00
	.byte 0x03, 0x03, 0x03, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x8D, 0x94, 0x1E, 0x02
	.byte 0xF5, 0x94, 0x1E, 0x02, 0x65, 0x95, 0x1E, 0x02, 0xE5, 0x95, 0x1E, 0x02, 0x31, 0x96, 0x1E, 0x02
	.byte 0x6D, 0x96, 0x1E, 0x02, 0xD9, 0x96, 0x1E, 0x02, 0xF9, 0x96, 0x1E, 0x02, 0x37, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x02, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x15, 0x99, 0x1E, 0x02, 0x71, 0x99, 0x1E, 0x02
	.byte 0xE9, 0x99, 0x1E, 0x02, 0x51, 0x9A, 0x1E, 0x02, 0x81, 0x9A, 0x1E, 0x02, 0xAD, 0x9A, 0x1E, 0x02
	.byte 0x25, 0x9B, 0x1E, 0x02, 0x45, 0x9B, 0x1E, 0x02, 0x37, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00
	.byte 0x1C, 0x00, 0x1A, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x00, 0x00, 0x3D, 0x9D, 0x1E, 0x02, 0x85, 0x9D, 0x1E, 0x02, 0xFD, 0x9D, 0x1E, 0x02
	.byte 0x65, 0x9E, 0x1E, 0x02, 0x95, 0x9E, 0x1E, 0x02, 0xB9, 0x9E, 0x1E, 0x02, 0x31, 0x9F, 0x1E, 0x02
	.byte 0x51, 0x9F, 0x1E, 0x02, 0x37, 0x00, 0x01, 0x00, 0x00, 0x00, 0x17, 0x00, 0x18, 0x00, 0x16, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0xC1, 0x90, 0x1E, 0x02, 0x19, 0x91, 0x1E, 0x02, 0x91, 0x91, 0x1E, 0x02, 0x09, 0x92, 0x1E, 0x02
	.byte 0x31, 0x92, 0x1E, 0x02, 0x6D, 0x92, 0x1E, 0x02, 0xE9, 0x92, 0x1E, 0x02, 0x01, 0x93, 0x1E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EA0DC
