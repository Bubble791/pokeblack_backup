    .include "macros/function.inc"
	.include "overlay156.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy156_21f59e0
ovy156_21f59e0: ; 0x021F59E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	add r4, r1, #0
	bl sub_02016AD8
	str r0, [sp, #8]
	ldr r0, _021F5AB8 ; =0x00008015
	bl sub_0201361C
	add r6, r0, #0
	ldr r5, [r4]
	ldr r0, [sp, #4]
	ldr r1, _021F5ABC ; =0x000028C3
	mov r2, #0
	mov r3, #0x15
	mov r7, #0
	bl ovy12_215366c
	str r0, [sp, #0x10]
	bl ovy12_21538d4
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_02013488
	cmp r0, #0
	bne _021F5A1A
	add r5, r7, #0
_021F5A1A:
	ldr r0, [sp, #8]
	bl sub_02017934
	bl sub_02009408
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02013634
	add r7, r0, #0
	ldr r2, [r4, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020134CC
	ldr r0, [sp, #0x14]
	mov r1, #0x2d
	mov r2, #1
	bl sub_0200955C
	cmp r5, #0x27
	bne _021F5A56
	mov r0, #0
	lsl r1, r5, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x10
	mov r2, #0x10
	b _021F5A64
_021F5A56:
	mov r0, #0
	str r0, [sp]
	lsl r1, r5, #0x10
	lsl r2, r7, #0x10
	ldr r0, [sp, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
_021F5A64:
	ldr r3, [r4, #4]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ovy12_2153fa8
	ldr r0, [sp, #0xc]
	bl sub_02153EC4
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r2, r7, #0
	bl ovy156_21f5c24
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F5AA6
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02013640
	add r4, r0, #0
	ldr r0, [sp, #8]
	bl sub_02017354
	ldr r1, _021F5AC0 ; =0x0000023F
	ldr r3, _021F5AB8 ; =0x00008015
	add r2, r4, #0
	bl sub_0200842C
	add r0, r5, #0
	bl sub_0215FCD0
	b _021F5AAC
_021F5AA6:
	add r0, r5, #0
	bl sub_02160340
_021F5AAC:
	add r0, r6, #0
	bl sub_0201362C
	ldr r0, [sp, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F5AB8: .word 0x00008015
_021F5ABC: .word 0x000028C3
_021F5AC0: .word 0x0000023F
	thumb_func_end ovy156_21f59e0

	thumb_func_start ovy156_21f5ac4
ovy156_21f5ac4: ; 0x021F5AC4
	push {r3, lr}
	ldr r1, _021F5AD4 ; =0x000028C4
	mov r2, #0
	mov r3, #0x15
	bl ovy12_215366c
	pop {r3, pc}
	nop
_021F5AD4: .word 0x000028C4
	thumb_func_end ovy156_21f5ac4

	thumb_func_start ovy156_21f5ad8
ovy156_21f5ad8: ; 0x021F5AD8
	push {r4, r5, r6, lr}
	ldr r2, _021F5AFC ; =ovy156_21f5bc8
	add r5, r0, #0
	mov r1, #0
	mov r3, #0xc
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02016AD8
	str r0, [r4, #8]
	str r5, [r4, #4]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021F5AFC: .word ovy156_21f5bc8
	thumb_func_end ovy156_21f5ad8

	thumb_func_start ovy156_21f5b00
ovy156_21f5b00: ; 0x021F5B00
	push {r4, r5, r6, lr}
	ldr r2, _021F5B24 ; =ovy156_21f5c68
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	mov r3, #0x3c
	bl sub_02016CB4
	add r6, r0, #0
	bl sub_02016EDC
	add r1, r5, #0
	add r2, r4, #0
	bl ovy156_21f5b28
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021F5B24: .word ovy156_21f5c68
	thumb_func_end ovy156_21f5b00

	thumb_func_start ovy156_21f5b28
ovy156_21f5b28: ; 0x021F5B28
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x15
	strh r0, [r4, #2]
	ldrh r3, [r4, #2]
	ldr r0, _021F5B94 ; =0x00007FFF
	str r2, [r4, #0x10]
	and r3, r0
	add r0, r0, #1
	orr r0, r3
	strh r0, [r4, #4]
	add r0, r1, #0
	str r1, [r4, #8]
	bl sub_02016AD8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_02180490
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_021804B8
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #2]
	bl sub_0201361C
	str r0, [r4, #0x30]
	ldrh r3, [r4, #2]
	ldr r2, _021F5B98 ; =0x0000019E
	mov r0, #0
	mov r1, #3
	bl sub_0204875C
	str r0, [r4, #0x28]
	ldrh r0, [r4, #2]
	bl sub_020241D4
	str r0, [r4, #0x2c]
	ldrh r1, [r4, #2]
	mov r0, #0x81
	bl sub_02048530
	str r0, [r4, #0x34]
	ldrh r1, [r4, #2]
	mov r0, #0x81
	bl sub_02048530
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	bl ovy12_216740c
	pop {r4, pc}
	nop
_021F5B94: .word 0x00007FFF
_021F5B98: .word 0x0000019E
	thumb_func_end ovy156_21f5b28

	thumb_func_start ovy156_21f5b9c
ovy156_21f5b9c: ; 0x021F5B9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_02048564
	ldr r0, [r4, #0x34]
	bl sub_02048564
	ldr r0, [r4, #0x2c]
	bl sub_02024274
	ldr r0, [r4, #0x28]
	bl sub_020487D4
	ldr r0, [r4, #0x30]
	bl sub_0201362C
	ldr r0, [r4, #0x1c]
	bl ovy12_2167450
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy156_21f5b9c

	thumb_func_start ovy156_21f5bc8
ovy156_21f5bc8: ; 0x021F5BC8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F5BDC
	cmp r0, #1
	beq _021F5BF8
	cmp r0, #2
	beq _021F5C12
	b _021F5C1A
_021F5BDC:
	mov r0, #4
	mov r1, #0xa
	mov r2, #0x10
	mov r3, #4
	bl sub_0204E060
	mov r0, #0x5e
	lsl r0, r0, #4
	bl sub_02006254
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F5C1E
_021F5BF8:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F5C1E
	mov r0, #4
	mov r1, #0x10
	mov r2, #0
	mov r3, #8
	bl sub_0204E060
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F5C12:
	bl sub_0204E0E0
	cmp r0, #0
	bne _021F5C1E
_021F5C1A:
	mov r0, #1
	pop {r4, pc}
_021F5C1E:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy156_21f5bc8

	thumb_func_start ovy156_21f5c24
ovy156_21f5c24: ; 0x021F5C24
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02016AD8
	bl sub_0201735C
	add r4, r0, #0
	bl sub_0201FEE8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r4, #0
	bl sub_0201FF08
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_02024464
	cmp r5, #5
	beq _021F5C56
	cmp r5, #6
	beq _021F5C5E
	pop {r4, r5, r6, pc}
_021F5C56:
	add r0, r4, #0
	bl sub_020136DC
	pop {r4, r5, r6, pc}
_021F5C5E:
	add r0, r4, #0
	bl sub_02013758
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy156_21f5c24

	thumb_func_start ovy156_21f5c68
ovy156_21f5c68: ; 0x021F5C68
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #3
	bhi _021F5CE8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F5C82: ; jump table
	.short _021F5C8A - _021F5C82 - 2 ; case 0
	.short _021F5CA8 - _021F5C82 - 2 ; case 1
	.short _021F5CBA - _021F5C82 - 2 ; case 2
	.short _021F5CDC - _021F5C82 - 2 ; case 3
_021F5C8A:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x28]
	mov r2, #0x13
	bl sub_02188498
	mov r1, #0
	mov r2, #0
	mov r3, #3
	str r0, [r5, #0x20]
	bl sub_02188538
_021F5CA0:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F5D00
_021F5CA8:
	ldr r0, [r5, #0x20]
	bl sub_021885BC
	cmp r0, #0
	beq _021F5D00
	ldr r0, [r5, #0x20]
	bl sub_02188504
	b _021F5CA0
_021F5CBA:
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x28]
	mov r2, #4
	mov r3, #1
	bl sub_02187CA0
	str r0, [r5, #0x18]
	bl sub_02187D38
	add r0, r5, #0
	bl ovy156_21f5d70
	b _021F5CA0
_021F5CDC:
	bl sub_0203DEFC
	mov r1, #3
	tst r0, r1
	beq _021F5D00
	b _021F5CA0
_021F5CE8:
	ldr r0, [r5, #0x18]
	bl sub_02187D38
	ldr r0, [r5, #0x18]
	bl sub_02187D10
	add r0, r5, #0
	bl ovy156_21f5b9c
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F5D00:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy156_21f5c68

	thumb_func_start ovy156_21f5d08
ovy156_21f5d08: ; 0x021F5D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r6, r1, #0
	add r4, r3, #0
	mov r1, #0
	bl sub_0202472C
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	mov r7, #1
	str r7, [sp]
	str r7, [sp, #4]
	add r2, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #1
	mov r3, #2
	bl sub_0202451C
	add r0, r4, #0
	mov r1, #0x3c
	blx sub_0208D65C
	mov r0, #2
	str r0, [sp]
	str r7, [sp, #4]
	add r2, r1, #0
	ldr r0, [r5, #0x2c]
	mov r1, #2
	mov r3, #2
	bl sub_0202451C
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x38]
	add r2, r6, #0
	bl sub_02024920
	add r2, sp, #0x20
	ldrb r2, [r2]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x38]
	lsl r2, r2, #0x14
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_02187D28
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy156_21f5d08

	thumb_func_start ovy156_21f5d70
ovy156_21f5d70: ; 0x021F5D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_02017934
	bl sub_0200C62C
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0x28]
	ldr r2, [r2, #0x34]
	mov r1, #5
	bl GFL_MsgDataLoadStrbuf
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	ldr r0, [r0, #0x18]
	ldr r3, [r3, #0x34]
	mov r1, #0
	mov r2, #0
	mov r5, #0
	bl sub_02187D28
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0x28]
	ldr r2, [r2, #0x34]
	mov r1, #7
	bl GFL_MsgDataLoadStrbuf
	mov r0, #0
	str r0, [sp, #0xc]
	add r7, sp, #0x14
	add r6, sp, #0x34
_021F5DB6:
	add r0, r5, #0
	strb r5, [r6, r5]
	bl sub_02013574
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x30
	beq _021F5DE0
	add r0, r5, #0
	bl sub_02013580
	ldr r1, [sp, #0xc]
	lsl r1, r1, #1
	strh r0, [r7, r1]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x44
	strb r4, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
_021F5DE0:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x10
	blo _021F5DB6
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0
	ble _021F5E42
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov ip, r0
_021F5DFE:
	ldr r0, [sp, #0x10]
	mov r1, ip
	mov r5, ip
	cmp r1, r0
	bls _021F5E30
_021F5E08:
	add r0, sp, #0x34
	add r4, r0, r5
	sub r7, r4, #1
	ldrb r2, [r7]
	ldrb r3, [r0, r5]
	add r0, sp, #0x14
	lsl r1, r2, #1
	ldrh r6, [r0, r1]
	lsl r1, r3, #1
	ldrh r0, [r0, r1]
	cmp r6, r0
	bls _021F5E24
	strb r2, [r4]
	strb r3, [r7]
_021F5E24:
	sub r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r5, r0
	bhi _021F5E08
_021F5E30:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _021F5DFE
_021F5E42:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	bls _021F5E76
	add r4, sp, #0x34
	add r6, sp, #0x44
	add r7, sp, #0x14
_021F5E50:
	ldrb r3, [r4, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	ldrb r2, [r6, r3]
	lsl r3, r3, #1
	add r1, r0, #0
	ldrh r3, [r7, r3]
	ldr r1, [r1, #0x34]
	bl ovy156_21f5d08
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0xc]
	cmp r5, r0
	blo _021F5E50
_021F5E76:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy156_21f5d70
_021F5E7C:
	.byte 0x00, 0x00, 0x00, 0x00
	; 0x021F5E7C
