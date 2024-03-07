    .include "macros/function.inc"
	.include "overlay134.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy134_21eec80
ovy134_21eec80: ; 0x021EEC80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_021804BC
	bl sub_02016AD8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_021804C0
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r3, #0x30
	bl ovy36_2180ff0
	add r4, r0, #0
	mov r0, #0x15
	strh r0, [r4]
	add r0, r5, #0
	bl ovy36_0218056c
	str r0, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, #0
	bl sub_020171F4
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ovy134_21ef07c
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy134_21eec80

	thumb_func_start ovy134_21eecc8
ovy134_21eecc8: ; 0x021EECC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0218105C
	bl ovy134_21ef280
	add r0, r4, #0
	mov r1, #1
	bl ovy36_218102c
	pop {r4, pc}
	thumb_func_end ovy134_21eecc8

	thumb_func_start ovy134_21eece0
ovy134_21eece0: ; 0x021EECE0
	push {r3, lr}
	mov r1, #1
	bl sub_0218105C
	bl ovy134_21ef29c
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy134_21eece0

	thumb_func_start ovy134_21eecf0
ovy134_21eecf0: ; 0x021EECF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	mov r1, #1
	add r7, r0, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_0218105C
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EED9C ; =0x00007FFF
	mov r2, #0
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, sp, #0x20
	ldrh r1, [r0]
	mov r3, #1
	strh r1, [r4, #0x18]
	ldrh r0, [r0, #4]
	mov r1, #0
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl sub_021B8258
	add r0, r7, #0
	bl sub_02180490
	bl sub_0218799C
	add r7, r0, #0
	cmp r6, #0
	beq _021EED68
	cmp r6, #1
	beq _021EED88
	cmp r6, #2
	beq _021EED88
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EED68:
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	str r5, [sp]
	bl ovy134_21ef500
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	str r5, [sp]
	bl ovy134_21ef500
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021EED88:
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #2
	str r5, [sp]
	bl ovy134_21ef500
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EED9C: .word 0x00007FFF
	thumb_func_end ovy134_21eecf0

	thumb_func_start ovy134_21eeda0
ovy134_21eeda0: ; 0x021EEDA0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #1
	bl sub_0218105C
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #2
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #3
	mov r3, #1
	bl sub_021B8258
	cmp r5, #0
	beq _021EEDE8
	cmp r5, #1
	beq _021EEDE8
	cmp r5, #2
	bne _021EEDF2
_021EEDE8:
	add r0, r4, #0
	add r1, r5, #0
	bl ovy134_21ef4e4
	pop {r3, r4, r5, pc}
_021EEDF2:
	add r0, r4, #0
	bl ovy134_21ef494
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy134_21eeda0

	thumb_func_start ovy134_21eedfc
ovy134_21eedfc: ; 0x021EEDFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r6, r1, #0
	mov r1, #1
	str r2, [sp, #4]
	bl sub_0218105C
	add r4, r0, #0
	add r2, sp, #0x44
	mov r0, #0
	mov r1, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, sp, #8
	add r0, sp, #0x38
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	mov r0, #0
	add r1, sp, #0x28
	ldr r3, _021EEF70 ; =0x021F0A1C
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	add r1, sp, #0x18
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	mov ip, r2
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r6, #0x14
	bne _021EEE62
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ovy134_21ef974
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
_021EEE62:
	ldr r0, [sp, #4]
	lsl r7, r6, #3
	mov r5, #0
	lsl r6, r0, #2
_021EEE6A:
	mov r0, #0xc
	add r2, r5, #0
	mul r2, r0
	add r0, sp, #0x44
	ldr r1, _021EEF74 ; =0x00000107
	add r3, r0, r2
	str r1, [r0, r2]
	lsl r1, r5, #2
	mov r0, ip
	ldr r0, [r0, r1]
	add r0, r0, r7
	add r0, r6, r0
	strh r0, [r3, #4]
	mov r0, #0
	str r0, [r3, #8]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021EEE6A
	add r2, sp, #8
	mov r0, #1
	strh r0, [r2, #0x30]
	mov r0, #0
	strh r0, [r2, #0x32]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r1, sp, #0x38
	lsl r3, r6, #2
	add r7, sp, #0x38
	mov r0, #2
	strh r0, [r7, r3]
	add r1, #2
	mov r0, #0
	strh r0, [r1, r3]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r3, r6, #2
	mov r0, #3
	strh r0, [r7, r3]
	mov r0, #0
	strh r0, [r1, r3]
	strh r0, [r2, #0x20]
	strh r0, [r2, #0x22]
	strh r0, [r2, #0x24]
	add r0, r6, #1
	lsl r0, r0, #0x18
	str r7, [sp, #0x30]
	lsr r0, r0, #0x18
	strh r0, [r2, #0x2c]
	add r0, sp, #0x44
	str r0, [sp, #0x18]
	strh r5, [r2, #0x14]
	add r0, sp, #0x28
	str r0, [sp, #0x20]
	mov r0, #1
	strh r0, [r2, #0x1c]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EEEEE
	ldr r0, [r4, #4]
	mov r1, #2
	bl ovy36_21b81bc
_021EEEEE:
	ldr r0, [r4, #4]
	add r1, sp, #0x18
	mov r2, #2
	bl ovy36_21b8598
	mov r6, #1
	str r6, [r4, #0x10]
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #0
	mov r5, #0
	bl sub_021B8224
	ldr r1, [sp, #4]
	mov r3, #1
	lsl r2, r1, #0x15
	lsl r1, r6, #0x14
	add r1, r2, r1
	str r1, [r0]
	str r5, [r0, #4]
	lsl r1, r6, #0x14
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #0
	bl sub_021B8248
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	add r7, r5, #0
_021EEF32:
	ldr r0, [r4, #4]
	mov r1, #2
	add r2, r7, #0
	add r3, r5, #0
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, #2
	add r2, r7, #0
	add r3, r5, #0
	bl ovy36_21b8538
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021EEF32
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021EEF70: .word 0x021F0A1C
_021EEF74: .word 0x00000107
	thumb_func_end ovy134_21eedfc

	thumb_func_start ovy134_21eef78
ovy134_21eef78: ; 0x021EEF78
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #1
	bl sub_0218105C
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r1, #0
	mov r2, #5
	mov r3, #0
	mov r5, #0
	bl sub_021B8258
	add r7, r5, #0
_021EEF92:
	ldr r0, [r6, #4]
	add r1, r7, #0
	mov r2, #5
	add r3, r5, #0
	bl ovy36_21b84a8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #4]
	add r1, r7, #0
	mov r2, #5
	add r3, r5, #0
	bl ovy36_21b8538
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021B84F0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021EEF92
	ldr r0, [r6, #4]
	add r1, r7, #0
	mov r2, #6
	mov r3, #1
	bl sub_021B8258
	mov r0, #1
	str r0, [r6, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy134_21eef78

	thumb_func_start ovy134_21eefdc
ovy134_21eefdc: ; 0x021EEFDC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl sub_0218105C
	add r4, r0, #0
	cmp r6, #0
	bne _021EF004
	mov r0, #7
	cmp r5, #0
	beq _021EEFF6
	mov r0, #9
_021EEFF6:
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #9
	cmp r5, #0
	beq _021EF002
	mov r0, #7
_021EF002:
	b _021EF018
_021EF004:
	mov r0, #8
	cmp r5, #0
	beq _021EF00C
	mov r0, #0xa
_021EF00C:
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #0xa
	cmp r5, #0
	beq _021EF018
	mov r0, #8
_021EF018:
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r4, #4]
	mov r1, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_021B8258
	pop {r4, r5, r6, pc}
	thumb_func_end ovy134_21eefdc

	thumb_func_start ovy134_21ef034
ovy134_21ef034: ; 0x021EF034
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #1
	bl sub_0218105C
	add r5, r0, #0
	cmp r4, #3
	bhi _021EF07A
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF050: ; jump table
	.short _021EF058 - _021EF050 - 2 ; case 0
	.short _021EF05E - _021EF050 - 2 ; case 1
	.short _021EF064 - _021EF050 - 2 ; case 2
	.short _021EF076 - _021EF050 - 2 ; case 3
_021EF058:
	bl ovy134_21ef400
	pop {r3, r4, r5, pc}
_021EF05E:
	bl ovy134_21ef42c
	pop {r3, r4, r5, pc}
_021EF064:
	bl ovy134_21ef400
	add r0, r5, #0
	bl ovy134_21ef42c
	add r0, r5, #0
	bl ovy134_21ef458
	pop {r3, r4, r5, pc}
_021EF076:
	bl ovy134_21ef468
_021EF07A:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy134_21ef034

	thumb_func_start ovy134_21ef07c
ovy134_21ef07c: ; 0x021EF07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r1, _021EF270 ; =0x021F09E8
	mov r2, #0
	bl ovy36_21b8598
	ldr r3, _021EF274 ; =0x021F0A04
	add r2, sp, #0x20
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, r4, #0
	str r0, [r2]
	mov r2, sp
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #2
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #0
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #2
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #2
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #3
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #0
	bl ovy134_21ef31c
	mov r3, sp
	sub r3, r3, #4
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	mov r1, #4
	str r0, [r2]
	ldr r3, [r3]
	ldr r0, [r5, #4]
	mov r2, #1
	bl ovy134_21ef31c
	ldr r3, _021EF278 ; =0x021F0A10
	add r2, sp, #0x14
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r6, r4, #0
	str r0, [r2]
	mov r2, sp
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #5
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #2
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #6
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #2
	bl ovy134_21ef31c
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #5
	mov r3, #0
	bl sub_021B8248
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl sub_021B8248
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #7
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #0
	bl ovy134_21ef31c
	ldr r3, _021EF27C ; =0x021F09F8
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r3, sp
	str r0, [r2]
	add r2, r6, #0
	sub r3, r3, #4
	ldmia r2!, {r0, r1}
	add r7, r3, #0
	stmia r7!, {r0, r1}
	ldr r0, [r2]
	mov r1, #8
	str r0, [r7]
	ldr r3, [r3]
	ldr r0, [r5, #4]
	mov r2, #0
	bl ovy134_21ef31c
	mov r3, sp
	add r2, r4, #0
	sub r3, r3, #4
	ldmia r2!, {r0, r1}
	add r7, r3, #0
	stmia r7!, {r0, r1}
	ldr r0, [r2]
	mov r1, #9
	str r0, [r7]
	ldr r3, [r3]
	ldr r0, [r5, #4]
	mov r2, #0
	bl ovy134_21ef31c
	mov r3, sp
	sub r3, r3, #4
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r2!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xa
	str r0, [r2]
	ldr r3, [r3]
	ldr r0, [r5, #4]
	mov r2, #0
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xb
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #3
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xc
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #3
	bl ovy134_21ef31c
	mov r2, sp
	add r6, r4, #0
	sub r2, r2, #4
	ldmia r6!, {r0, r1}
	add r3, r2, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0xd
	str r0, [r3]
	ldr r3, [r2]
	ldr r0, [r5, #4]
	mov r2, #1
	bl ovy134_21ef31c
	mov r3, sp
	sub r3, r3, #4
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0xe
	str r0, [r2]
	ldr r3, [r3]
	ldr r0, [r5, #4]
	mov r2, #3
	bl ovy134_21ef31c
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF270: .word 0x021F09E8
_021EF274: .word 0x021F0A04
_021EF278: .word 0x021F0A10
_021EF27C: .word 0x021F09F8
	thumb_func_end ovy134_21ef07c

	thumb_func_start ovy134_21ef280
ovy134_21ef280: ; 0x021EF280
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl ovy36_21b81bc
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EF29A
	ldr r0, [r4, #4]
	mov r1, #2
	bl ovy36_21b81bc
_021EF29A:
	pop {r4, pc}
	thumb_func_end ovy134_21ef280

	thumb_func_start ovy134_21ef29c
ovy134_21ef29c: ; 0x021EF29C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ovy36_21b83b4
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne _021EF318
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #5
	mov r3, #0
	mov r4, #0
	mov r6, #5
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #1
	bne _021EF318
	ldr r0, [r5, #4]
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r2, #6
	add r3, r4, #0
	bl sub_021B8258
	add r7, r4, #0
_021EF2DE:
	ldr r0, [r5, #4]
	add r1, r7, #0
	mov r2, #6
	add r3, r4, #0
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r7, #0
	mov r2, #6
	add r3, r4, #0
	bl ovy36_21b8538
	add r0, r6, #0
	mov r1, #1
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021EF2DE
	str r7, [r5, #0x14]
_021EF318:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef29c

	thumb_func_start ovy134_21ef31c
ovy134_21ef31c: ; 0x021EF31C
	push {r0, r1, r2, r3}
	thumb_func_end ovy134_21ef31c

	non_word_aligned_thumb_func_start ovy134_21ef31e
ovy134_21ef31e: ; 0x021EF31E
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x30]
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	add r2, r5, #0
	add r6, r0, #0
	ldr r7, [sp, #0x34]
	mov r4, #0
	bl sub_021B8224
	ldr r1, [sp, #0x2c]
	add r2, r5, #0
	str r1, [r0]
	ldr r1, [sp, #8]
	mov r3, #1
	str r1, [r0, #4]
	str r7, [r0, #8]
	add r0, r6, #0
	mov r1, #0
	bl sub_021B8248
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_021B8258
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EF398
_021EF360:
	lsl r3, r4, #0x10
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r7, r0, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r7, #0
	mov r1, #1
	bl sub_021B84E8
	mov r0, #0
	lsl r3, r4, #0x10
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF360
_021EF398:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ovy134_21ef31e

	thumb_func_start ovy134_21ef3a4
ovy134_21ef3a4: ; 0x021EF3A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	add r5, r0, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy36_21b84a8
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [sp, #4]
	mov r1, #0
	bl sub_021B84E8
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_021B84F0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy36_21b8538
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ovy36_21b8504
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef3a4

	thumb_func_start ovy134_21ef400
ovy134_21ef400: ; 0x021EF400
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0xb
	mov r2, #0
	mov r3, #0
	bl ovy134_21ef3a4
	ldr r0, [r4, #4]
	mov r1, #0xb
	mov r2, #1
	mov r3, #0
	bl ovy134_21ef3a4
	ldr r0, [r4, #4]
	mov r1, #0xb
	mov r2, #2
	mov r3, #0
	bl ovy134_21ef3a4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef400

	thumb_func_start ovy134_21ef42c
ovy134_21ef42c: ; 0x021EF42C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0xc
	mov r2, #0
	mov r3, #0
	bl ovy134_21ef3a4
	ldr r0, [r4, #4]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0
	bl ovy134_21ef3a4
	ldr r0, [r4, #4]
	mov r1, #0xc
	mov r2, #2
	mov r3, #0
	bl ovy134_21ef3a4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef42c

	thumb_func_start ovy134_21ef458
ovy134_21ef458: ; 0x021EF458
	push {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #0xd
	mov r2, #0
	mov r3, #0
	bl ovy134_21ef3a4
	pop {r3, pc}
	thumb_func_end ovy134_21ef458

	thumb_func_start ovy134_21ef468
ovy134_21ef468: ; 0x021EF468
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0xe
	mov r2, #0
	mov r3, #0
	bl ovy134_21ef3a4
	ldr r0, [r4, #4]
	mov r1, #0xe
	mov r2, #1
	mov r3, #0
	bl ovy134_21ef3a4
	ldr r0, [r4, #4]
	mov r1, #0xe
	mov r2, #2
	mov r3, #0
	bl ovy134_21ef3a4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef468

	thumb_func_start ovy134_21ef494
ovy134_21ef494: ; 0x021EF494
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r1, #0
	mov r2, #4
	mov r3, #0
	mov r5, #0
	bl sub_021B8258
	add r7, r5, #0
_021EF4A8:
	lsl r3, r5, #0x10
	ldr r0, [r6, #4]
	add r1, r7, #0
	mov r2, #4
	lsr r3, r3, #0x10
	bl ovy36_21b84a8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r3, r5, #0x10
	ldr r0, [r6, #4]
	add r1, r7, #0
	mov r2, #4
	lsr r3, r3, #0x10
	bl ovy36_21b8538
	add r0, r4, #0
	mov r1, #1
	bl sub_021B84F0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r5, r5, #1
	cmp r5, #1
	blo _021EF4A8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef494

	thumb_func_start ovy134_21ef4e4
ovy134_21ef4e4: ; 0x021EF4E4
	push {r3, lr}
	cmp r1, #0
	beq _021EF4F8
	cmp r1, #1
	beq _021EF4F2
	cmp r1, #2
	bne _021EF4FC
_021EF4F2:
	bl ovy134_21ef6e4
	pop {r3, pc}
_021EF4F8:
	bl ovy134_21ef608
_021EF4FC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef4e4

	thumb_func_start ovy134_21ef500
ovy134_21ef500: ; 0x021EF500
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r2, #0
	str r0, [sp, #0x18]
	add r6, r3, #0
	mov r4, #0
	cmp r5, #0
	beq _021EF51A
	cmp r5, #1
	beq _021EF51A
	cmp r5, #2
	beq _021EF520
	b _021EF524
_021EF51A:
	mov r4, #0x1f
	mov r7, #1
	b _021EF524
_021EF520:
	mov r4, #0x26
	mov r7, #3
_021EF524:
	add r0, r6, #0
	mov r2, #0
	bl sub_02022888
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, r7, #0
	bl sub_021B8278
	bl sub_02049964
	bl sub_02049804
	ldr r1, [sp, #0x1c]
	str r6, [sp]
	lsr r1, r1, #1
	sub r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x11
	lsl r1, r1, #6
	str r1, [sp, #0xc]
	add r1, sp, #0x48
	ldrh r1, [r1]
	ldr r4, _021EF578 ; =0x021F0E80
	lsl r3, r5, #2
	str r1, [sp, #0x10]
	add r1, sp, #0x20
	str r1, [sp, #0x14]
	ldr r1, _021EF57C ; =0x021F0E74
	mov r2, #0
	ldr r1, [r1, r3]
	ldr r3, [r4, r3]
	bl sub_02169E18
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF578: .word 0x021F0E80
_021EF57C: .word 0x021F0E74
	thumb_func_end ovy134_21ef500

	thumb_func_start ovy134_21ef580
ovy134_21ef580: ; 0x021EF580
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r2, [sp, #8]
	add r4, r1, #0
	ldrh r1, [r5]
	ldr r0, _021EF5FC ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r4, #0
	beq _021EF5A6
	cmp r4, #1
	beq _021EF5A6
	cmp r4, #2
	beq _021EF5AA
	b _021EF5AC
_021EF5A6:
	mov r7, #0
	b _021EF5AC
_021EF5AA:
	mov r7, #2
_021EF5AC:
	mov r0, #4
	mov r1, #4
	mov r2, #0x20
	add r3, r6, #0
	bl sub_02046E28
	str r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	mov r1, #0
	add r2, r7, #0
	bl sub_021B8278
	bl sub_02049964
	bl sub_02049804
	add r1, r0, #0
	ldr r0, [sp, #8]
	lsl r3, r4, #2
	str r0, [sp]
	ldr r2, _021EF600 ; =0x021F0E5C
	str r6, [sp, #4]
	ldr r4, _021EF604 ; =0x021F0E68
	ldr r2, [r2, r3]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl ovy134_21ef87c
	ldr r0, [r5, #0x1c]
	bl sub_02046EDC
	ldr r0, [r5, #0x28]
	bl sub_0203A24C
	ldr r0, [r5, #0x2c]
	bl sub_0203A24C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EF5FC: .word 0x00007FFF
_021EF600: .word 0x021F0E5C
_021EF604: .word 0x021F0E68
	thumb_func_end ovy134_21ef580

	thumb_func_start ovy134_21ef608
ovy134_21ef608: ; 0x021EF608
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EF644 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #8]
	bl sub_02180578
	add r6, r0, #0
	ldr r2, _021EF648 ; =ovy134_21ef64c
	add r0, r5, #0
	mov r1, #8
	bl sub_021C0870
	add r5, r0, #0
	bl sub_021C08CC
	mov r2, #0
	strh r2, [r0]
	str r4, [r0, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021C09E4
	pop {r4, r5, r6, pc}
	nop
_021EF644: .word 0x00007FFF
_021EF648: .word ovy134_21ef64c
	thumb_func_end ovy134_21ef608

	thumb_func_start ovy134_21ef64c
ovy134_21ef64c: ; 0x021EF64C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, [r4, #4]
	ldr r5, [r0, #4]
	cmp r1, #4
	bhi _021EF6DE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF666: ; jump table
	.short _021EF670 - _021EF666 - 2 ; case 0
	.short _021EF67E - _021EF666 - 2 ; case 1
	.short _021EF68A - _021EF666 - 2 ; case 2
	.short _021EF6A6 - _021EF666 - 2 ; case 3
	.short _021EF6DA - _021EF666 - 2 ; case 4
_021EF670:
	ldrh r2, [r0, #0x18]
	mov r1, #0
	bl ovy134_21ef580
	mov r0, #1
_021EF67A:
	strh r0, [r4]
	b _021EF6DE
_021EF67E:
	ldrh r2, [r0, #0x1a]
	mov r1, #1
	bl ovy134_21ef580
	mov r0, #2
	b _021EF67A
_021EF68A:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	bl ovy134_21ef3a4
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl ovy134_21ef3a4
	mov r0, #3
	b _021EF67A
_021EF6A6:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0
	mov r3, #1
	mov r7, #0
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #1
	bne _021EF6DE
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #4
	mov r3, #1
	mov r6, #4
	bl sub_021B8258
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	add r3, r7, #0
	bl sub_021B8258
	strh r6, [r4]
	b _021EF6DE
_021EF6DA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF6DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef64c

	thumb_func_start ovy134_21ef6e4
ovy134_21ef6e4: ; 0x021EF6E4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EF720 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #8]
	bl sub_02180578
	add r6, r0, #0
	ldr r2, _021EF724 ; =ovy134_21ef728
	add r0, r5, #0
	mov r1, #8
	bl sub_021C0870
	add r5, r0, #0
	bl sub_021C08CC
	mov r2, #0
	strh r2, [r0]
	str r4, [r0, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021C09E4
	pop {r4, r5, r6, pc}
	nop
_021EF720: .word 0x00007FFF
_021EF724: .word ovy134_21ef728
	thumb_func_end ovy134_21ef6e4

	thumb_func_start ovy134_21ef728
ovy134_21ef728: ; 0x021EF728
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, [r4, #4]
	ldr r5, [r0, #4]
	cmp r1, #3
	bhi _021EF7AE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF742: ; jump table
	.short _021EF74A - _021EF742 - 2 ; case 0
	.short _021EF758 - _021EF742 - 2 ; case 1
	.short _021EF782 - _021EF742 - 2 ; case 2
	.short _021EF7AA - _021EF742 - 2 ; case 3
_021EF74A:
	ldrh r2, [r0, #0x18]
	mov r1, #2
	bl ovy134_21ef580
	mov r0, #1
	strh r0, [r4]
	b _021EF7AE
_021EF758:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	mov r3, #1
	mov r6, #2
	bl ovy134_21ef3a4
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl ovy134_21ef3a4
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	mov r3, #1
	bl sub_021B8258
	strh r6, [r4]
	b _021EF7AE
_021EF782:
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	mov r3, #1
	mov r6, #0
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #1
	bne _021EF7AE
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
	add r3, r6, #0
	mov r5, #3
	bl sub_021B8258
	strh r5, [r4]
	b _021EF7AE
_021EF7AA:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EF7AE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef728

	thumb_func_start sub_021EF7B4
sub_021EF7B4: ; 0x021EF7B4
	ldr r1, [r1]
	ldr r0, [r0, #8]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0xd
	lsr r0, r0, #0xd
	add r0, r1, r0
	bx lr
	thumb_func_end sub_021EF7B4

	thumb_func_start sub_021EF7C4
sub_021EF7C4: ; 0x021EF7C4
	ldrh r1, [r1]
	ldr r0, [r0, #0x2c]
	lsl r0, r0, #0x10
	lsl r1, r1, #3
	lsr r0, r0, #0xd
	add r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end sub_021EF7C4

	thumb_func_start ovy134_21ef7d4
ovy134_21ef7d4: ; 0x021EF7D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl STD_GetStringLength
	mov r3, #0
	add r1, r3, #0
_021EF7E4:
	lsl r2, r3, #2
	str r1, [r5, r2]
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #4
	blo _021EF7E4
	cmp r0, #0
	ble _021EF804
_021EF7F6:
	ldrsb r2, [r4, r1]
	strb r2, [r5, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	blt _021EF7F6
_021EF804:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef7d4

	thumb_func_start ovy134_21ef808
ovy134_21ef808: ; 0x021EF808
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy134_21ef7d4
	cmp r5, #0
	beq _021EF828
	add r0, r5, #0
	add r0, #0x3c
	add r1, r4, #0
	bl sub_02068458
	add r1, r0, #0
	b _021EF82A
_021EF828:
	mov r1, #0
_021EF82A:
	cmp r1, #0
	bne _021EF834
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF834:
	add r0, r5, #0
	bl sub_021EF7B4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef808

	thumb_func_start ovy134_21ef840
ovy134_21ef840: ; 0x021EF840
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, sp, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ovy134_21ef7d4
	cmp r5, #0
	beq _021EF864
	ldrh r0, [r5, #0x34]
	cmp r0, #0
	beq _021EF864
	add r0, r5, r0
	add r1, r4, #0
	bl sub_02068458
	add r1, r0, #0
	b _021EF866
_021EF864:
	mov r1, #0
_021EF866:
	cmp r1, #0
	bne _021EF870
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EF870:
	add r0, r5, #0
	bl sub_021EF7C4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy134_21ef840

	thumb_func_start ovy134_21ef87c
ovy134_21ef87c: ; 0x021EF87C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r5, r2, #0
	add r6, r3, #0
	bl sub_020496D8
	add r0, r4, #0
	bl sub_020496FC
	add r0, r4, #0
	bl sub_02049430
	bl sub_02068664
	add r4, r0, #0
	add r1, r5, #0
	bl ovy134_21ef808
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy134_21ef840
	str r0, [sp, #0x10]
	mov r1, #0
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	add r4, sp, #0x30
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	ldrh r0, [r4]
	ldr r7, _021EF970 ; =0x00000123
	str r1, [sp, #8]
	lsl r5, r0, #1
	ldrh r0, [r4, #4]
	add r1, r5, #0
	mov r2, #1
	str r0, [sp]
	add r0, r7, #0
	add r3, #0x20
	mov r6, #1
	bl sub_0204B264
	ldr r1, [sp, #4]
	ldr r2, [sp, #4]
	str r0, [r1, #0x28]
	ldrh r3, [r4, #4]
	add r0, r7, #0
	add r1, r5, #1
	add r2, #0x24
	bl sub_0204B354
	ldr r1, [sp, #4]
	str r0, [r1, #0x2c]
	add r0, r1, #0
	ldr r0, [r0, #0x20]
	ldr r7, [r0, #0x14]
	add r0, r1, #0
	ldr r0, [r0, #0x1c]
	bl sub_02046EF4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r0, #0
	lsl r2, r6, #9
	blx MIi_CpuClear32
_021EF908:
	ldr r0, [sp, #8]
	mov r4, #0
	lsl r6, r0, #2
	lsl r5, r0, #5
_021EF910:
	add r0, r4, r5
	add r1, r4, r6
	add r0, #0x1c
	lsl r2, r1, #5
	ldr r1, [sp, #0xc]
	lsl r0, r0, #5
	add r1, r1, r2
	add r0, r7, r0
	mov r2, #0x20
	blx MIi_CpuCopy32
	add r4, r4, #1
	cmp r4, #4
	blt _021EF910
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _021EF908
	ldr r0, [sp, #4]
	add r2, sp, #0x30
	ldrh r2, [r2, #4]
	ldr r0, [r0, #0x1c]
	mov r1, #0
	bl sub_02047FB4
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x1c]
	bl sub_02046EF4
	mov r3, #2
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	mov r0, #0
	lsl r3, r3, #8
	bl sub_0205FA10
	ldr r2, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0x24]
	mov r0, #1
	ldr r2, [r2, #0xc]
	mov r3, #0x20
	bl sub_0205FA10
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF970: .word 0x00000123
	thumb_func_end ovy134_21ef87c

	thumb_func_start ovy134_21ef974
ovy134_21ef974: ; 0x021EF974
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	add r5, r0, #0
	str r1, [sp, #4]
	add r2, sp, #0x64
	mov r0, #0
	mov r1, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	add r3, sp, #0xc
	mov r2, #0
	strh r2, [r3]
	strh r2, [r3, #2]
	add r2, sp, #0x58
	mov r3, #0
	strh r3, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	strh r3, [r2, #6]
	strh r3, [r2, #8]
	strh r3, [r2, #0xa]
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	add r2, sp, #0x10
	ldr r4, _021EFB8C ; =0x021F0A2C
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #4]
	ldr r7, _021EFB90 ; =0x00000107
	mov r4, #0
	lsl r6, r0, #1
_021EF9DC:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	add r0, sp, #0x64
	add r2, r0, r1
	str r7, [r0, r1]
	lsl r0, r4, #2
	ldr r0, [r3, r0]
	add r0, r0, r6
	strh r0, [r2, #4]
	mov r0, #0
	str r0, [r2, #8]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021EF9DC
	cmp r4, #6
	bhs _021EFA2C
	ldr r0, [sp, #4]
	add r1, sp, #0x64
	lsl r3, r0, #2
	ldr r0, _021EFB90 ; =0x00000107
	add r7, sp, #0x10
_021EFA0C:
	mov r2, #0xc
	add r6, r4, #0
	mul r6, r2
	add r2, r1, r6
	str r0, [r1, r6]
	lsl r6, r4, #2
	ldr r6, [r7, r6]
	add r6, r6, r3
	strh r6, [r2, #4]
	mov r6, #0
	str r6, [r2, #8]
	add r2, r4, #1
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	cmp r4, #6
	blo _021EFA0C
_021EFA2C:
	add r1, sp, #0xc
	mov r0, #1
	strh r0, [r1]
	mov r0, #0
	strh r0, [r1, #2]
	add r7, sp, #0x58
	mov r2, #3
	strh r2, [r7]
	mov r2, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	strh r0, [r7, #2]
	lsl r2, r3, #2
	mov r6, #4
	strh r6, [r7, r2]
	add r6, sp, #0x58
	add r6, #2
	strh r0, [r6, r2]
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	lsl r2, r3, #2
	mov r6, #5
	strh r6, [r7, r2]
	add r6, sp, #0x58
	add r6, #2
	strh r0, [r6, r2]
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2e]
	add r3, r3, #1
	lsl r3, r3, #0x18
	strh r0, [r1, #0x30]
	add r2, sp, #0xc
	str r2, [sp, #0x40]
	mov r2, #1
	strh r2, [r1, #0x38]
	mov r2, #2
	strh r2, [r1, #0x3c]
	strh r0, [r1, #0x3e]
	add r0, sp, #0x38
	lsr r3, r3, #0x18
	strh r3, [r0, #0x1c]
	add r3, sp, #0x64
	strh r2, [r0, #0x14]
	str r7, [sp, #0x50]
	str r3, [sp, #0x28]
	strh r4, [r1, #0x20]
	str r0, [sp, #0x30]
	strh r2, [r1, #0x28]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021EFA9E
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl ovy36_21b81bc
_021EFA9E:
	ldr r0, [r5, #4]
	add r1, sp, #0x28
	mov r2, #2
	bl ovy36_21b8598
	mov r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	mov r4, #0
	bl sub_021B8224
	ldr r1, [sp, #4]
	mov r3, #1
	lsl r2, r1, #0x15
	mov r1, #1
	lsl r1, r1, #0x14
	add r6, r2, r1
	str r6, [r0]
	mov r1, #1
	lsl r7, r1, #0x14
	str r4, [r0, #4]
	str r7, [r0, #8]
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	bl sub_021B8248
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl sub_021B8258
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl ovy36_21b84a8
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl ovy36_21b8538
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_021B84F0
	ldr r0, [sp, #8]
	mov r1, #0
	bl sub_021B84E8
	str r4, [sp]
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #0
	mov r3, #0
	bl ovy36_21b8504
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #1
	bl sub_021B8224
	str r6, [r0]
	str r4, [r0, #4]
	str r7, [r0, #8]
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #1
	mov r3, #1
	bl sub_021B8248
	ldr r0, [r5, #4]
	mov r1, #2
	mov r2, #1
	mov r3, #1
	bl sub_021B8258
	mov r7, #1
_021EFB4A:
	ldr r0, [r5, #4]
	mov r1, #2
	add r2, r7, #0
	add r3, r4, #0
	bl ovy36_21b84a8
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #2
	add r2, r7, #0
	add r3, r4, #0
	bl ovy36_21b8538
	add r0, r6, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r6, #0
	add r1, r7, #0
	bl sub_021B84E8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021EFB4A
	add r0, r5, #0
	bl ovy134_21efb94
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EFB8C: .word 0x021F0A2C
_021EFB90: .word 0x00000107
	thumb_func_end ovy134_21ef974

	thumb_func_start ovy134_21efb94
ovy134_21efb94: ; 0x021EFB94
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EFBD0 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [r4, #8]
	bl sub_02180578
	add r6, r0, #0
	ldr r2, _021EFBD4 ; =ovy134_21efbd8
	add r0, r5, #0
	mov r1, #8
	bl sub_021C0870
	add r5, r0, #0
	bl sub_021C08CC
	mov r2, #0
	strh r2, [r0]
	str r4, [r0, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_021C09E4
	pop {r4, r5, r6, pc}
	nop
_021EFBD0: .word 0x00007FFF
_021EFBD4: .word ovy134_21efbd8
	thumb_func_end ovy134_21efb94

	thumb_func_start ovy134_21efbd8
ovy134_21efbd8: ; 0x021EFBD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, [r0, #4]
	ldr r6, [r0, #4]
	ldr r0, [sp, #4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _021EFBF0
	cmp r0, #1
	beq _021EFC52
	b _021EFC58
_021EFBF0:
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	mov r3, #0
	mov r4, #2
	mov r5, #0
	bl ovy36_21b84a8
	bl sub_021B84F4
	cmp r0, #1
	bne _021EFC58
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	add r3, r5, #0
	bl sub_021B8258
	mov r7, #1
_021EFC16:
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	add r3, r5, #0
	bl ovy36_21b84a8
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	add r2, r7, #0
	add r3, r5, #0
	str r7, [sp]
	bl ovy36_21b8538
	add r0, r4, #0
	mov r1, #0
	bl sub_021B84F0
	add r0, r4, #0
	mov r1, #0
	bl sub_021B84E8
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021EFC16
	ldr r0, [sp, #4]
	strh r7, [r0]
	b _021EFC58
_021EFC52:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EFC58:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21efbd8

	thumb_func_start ovy134_21efc60
ovy134_21efc60: ; 0x021EFC60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r1, [r5]
	ldr r0, _021EFD08 ; =0x00007FFF
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	bl sub_0201C2C8
	add r1, r0, #0
	mov r0, #0xfb
	str r0, [sp]
	ldr r3, _021EFD0C ; =0x021F0EDC
	add r0, r4, #0
	mov r2, #0
	bl sub_0203A1FC
	ldr r4, _021EFD10 ; =0x000013BC
	add r6, r0, #0
	add r1, r4, #0
	add r1, #0xc
	ldrb r1, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0201FF08
	add r1, r4, #0
	add r1, #0xe
	add r7, r0, #0
	add r0, r4, #4
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	bl sub_0201FF08
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0201EF6C
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0201EF6C
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_0201EF6C
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _021EFCFC
	add r1, r4, #0
	add r1, #0xd
	ldrb r1, [r5, r1]
	ldr r0, [r5, r4]
	bl sub_0201FF08
	add r7, r0, #0
	add r0, r4, #4
	add r4, #0xf
	ldrb r1, [r5, r4]
	ldr r0, [r5, r0]
	bl sub_0201FF08
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0201EF6C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0201EF6C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0201EF6C
_021EFCFC:
	add r0, r6, #0
	bl sub_0203A24C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFD08: .word 0x00007FFF
_021EFD0C: .word 0x021F0EDC
_021EFD10: .word 0x000013BC
	thumb_func_end ovy134_21efc60

	thumb_func_start ovy134_21efd14
ovy134_21efd14: ; 0x021EFD14
	push {r3, r4, r5, lr}
	ldr r5, _021EFD44 ; =0x000013C4
	add r4, r0, #0
	add r1, r5, #0
	sub r1, #8
	ldr r0, [r4, r5]
	ldr r1, [r4, r1]
	bl sub_020200AC
	add r0, r4, #0
	bl sub_021E5D7C
	bl sub_02005748
	add r1, r5, #4
	strb r0, [r4, r1]
	mov r1, #0xff
	add r0, r5, #5
	strb r1, [r4, r0]
	add r0, r5, #6
	strb r1, [r4, r0]
	add r0, r5, #7
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021EFD44: .word 0x000013C4
	thumb_func_end ovy134_21efd14

	thumb_func_start sub_021EFD48
sub_021EFD48: ; 0x021EFD48
	add r1, r0, r1
	ldr r0, _021EFD50 ; =0x000013C8
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
_021EFD50: .word 0x000013C8
	thumb_func_end sub_021EFD48

	thumb_func_start ovy134_21efd54
ovy134_21efd54: ; 0x021EFD54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_021E5D7C
	cmp r6, #3
	bhi _021EFDA8
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EFD6E: ; jump table
	.short _021EFD76 - _021EFD6E - 2 ; case 0
	.short _021EFD7C - _021EFD6E - 2 ; case 1
	.short _021EFD76 - _021EFD6E - 2 ; case 2
	.short _021EFD90 - _021EFD6E - 2 ; case 3
_021EFD76:
	bl sub_02005748
	b _021EFDA4
_021EFD7C:
	sub r0, r0, #1
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021EFDB4 ; =0x000013C8
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _021EFDA8
	b _021EFDA2
_021EFD90:
	sub r0, r0, #1
	bl sub_02005748
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _021EFDB8 ; =0x000013CA
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _021EFDA8
_021EFDA2:
	add r0, r4, #1
_021EFDA4:
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021EFDA8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_021EFD48
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EFDB4: .word 0x000013C8
_021EFDB8: .word 0x000013CA
	thumb_func_end ovy134_21efd54

	thumb_func_start sub_021EFDBC
sub_021EFDBC: ; 0x021EFDBC
	add r1, r0, r1
	ldr r0, _021EFDC4 ; =0x000013C8
	ldrb r0, [r1, r0]
	bx lr
	.align 2, 0
_021EFDC4: .word 0x000013C8
	thumb_func_end sub_021EFDBC

	thumb_func_start ovy134_21efdc8
ovy134_21efdc8: ; 0x021EFDC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl sub_02155184
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0215515C
	ldr r1, _021EFE1C ; =0x00000183
	ldr r3, _021EFE20 ; =0x021F0EDC
	str r1, [sp]
	mov r1, #0x20
	mov r2, #1
	bl sub_0203A1FC
	add r4, r0, #0
	str r5, [r4]
	str r7, [r4, #4]
	add r0, r5, #0
	bl sub_0215518C
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_0215519C
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl sub_02153EC4
	str r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_02153EC8
	str r0, [r4, #0x18]
	add r0, r6, #0
	bl sub_02153ECC
	str r0, [r4, #0x1c]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFE1C: .word 0x00000183
_021EFE20: .word 0x021F0EDC
	thumb_func_end ovy134_21efdc8

	thumb_func_start ovy134_21efe24
ovy134_21efe24: ; 0x021EFE24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_021E5D68
	str r0, [sp, #0x14]
	bl sub_0201FDF8
	mov r1, #0xe
	mul r1, r0
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xb
	str r0, [sp]
	mov r0, #7
	add r1, r1, #7
	bic r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r2, #1
	mov r3, #7
	bl ovy36_2187bfc
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	bl sub_021E5D7C
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r4, #0
	bl sub_021EFDBC
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_021EFDBC
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021EFED8
_021EFE86:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	mov r6, #0x36
	bl sub_0201FF08
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	cmp r4, r0
	beq _021EFE9E
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _021EFEA0
_021EFE9E:
	mov r6, #0x37
_021EFEA0:
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x1c]
	add r1, r6, #0
	bl sub_02048838
	ldr r0, [r5, #0x14]
	mov r1, #0
	add r2, r7, #0
	bl sub_020243F4
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	bl sub_02024920
	mov r2, #0xe
	mul r2, r4
	lsl r2, r2, #0x10
	ldr r0, [r5, #8]
	ldr r3, [r5, #0x18]
	mov r1, #0
	lsr r2, r2, #0x10
	bl ovy36_2187c4c
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _021EFE86
_021EFED8:
	ldr r0, [r5, #8]
	bl ovy36_2187c9c
	bl sub_020484D4
	bl sub_02044F90
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21efe24

	thumb_func_start ovy134_21efeec
ovy134_21efeec: ; 0x021EFEEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02187C7C
	ldr r0, [r4, #8]
	bl sub_02187C1C
	mov r0, #1
	bl sub_02044F90
	pop {r4, pc}
	thumb_func_end ovy134_21efeec
_021EFF04:
	.byte 0x00, 0x4B, 0x18, 0x47, 0x4D, 0xA2, 0x03, 0x02

	thumb_func_start sub_021EFF0C
sub_021EFF0C: ; 0x021EFF0C
	ldrh r1, [r0]
	cmp r1, #0
	beq _021EFF1A
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EFF1E
_021EFF1A:
	mov r0, #0
	bx lr
_021EFF1E:
	mov r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_021EFF0C

	thumb_func_start ovy134_21eff24
ovy134_21eff24: ; 0x021EFF24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r1, #0x30
	add r5, r0, #0
	str r2, [sp, #0x10]
	ldrh r0, [r6]
	ldrb r1, [r1]
	mov r2, #0x1a
	ldrb r4, [r6, #0x1b]
	bl sub_0201EF1C
	add r1, r6, #0
	add r1, #0x30
	str r0, [sp, #0x18]
	ldrh r0, [r6]
	ldrb r1, [r1]
	mov r2, #0x1b
	bl sub_0201EF1C
	add r1, r6, #0
	add r1, #0x30
	add r7, r0, #0
	ldrh r0, [r6]
	ldrb r1, [r1]
	mov r2, #0x1c
	bl sub_0201EF1C
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	cmp r4, r0
	bne _021EFF68
_021EFF64:
	mov r7, #0
	b _021EFF80
_021EFF68:
	cmp r4, r7
	bne _021EFF70
	mov r7, #1
	b _021EFF80
_021EFF70:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bne _021EFF78
	b _021EFF64
_021EFF78:
	ldr r0, [sp, #0x18]
	mov r7, #0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021EFF80:
	add r0, r5, #0
	bl sub_0201C404
	mov r0, #0
	bl sub_02005748
	ldrb r1, [r6, #0x1a]
	add r2, r6, #0
	add r2, #0x30
	lsl r1, r1, #0x1f
	ldr r3, [r6, #0x2c]
	str r7, [sp]
	lsr r1, r1, #0x1f
	str r1, [sp, #4]
	ldrh r1, [r6]
	ldrb r2, [r2]
	lsr r3, r3, #0x1e
	str r0, [sp, #0x1c]
	bl sub_0201D6F8
	mov r1, #0
	sub r1, r1, #1
	str r1, [sp, #4]
	add r2, r6, #0
	add r2, #0x32
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp]
	ldrh r1, [r6]
	ldrb r2, [r2]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	bl sub_0201C464
	add r1, r6, #0
	add r1, #0x30
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_0201C864
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bne _021EFFE6
	add r2, r6, #0
	add r2, #0x30
	ldrh r1, [r6]
	ldrb r2, [r2]
	add r0, r5, #0
	bl sub_0201DA94
_021EFFE6:
	ldrh r2, [r6, #0x18]
	add r0, r5, #0
	mov r1, #6
	bl sub_0201CD1C
	mov r4, #0
	mov r7, #3
_021EFFF4:
	lsl r2, r4, #1
	add r2, r6, r2
	ldrh r2, [r2, #0x22]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	bl sub_0201CD1C
	add r2, r6, #0
	add r2, #0x2a
	ldrb r3, [r2]
	lsl r2, r4, #1
	add r1, r4, #0
	asr r3, r2
	add r2, r3, #0
	and r2, r7
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, #0x3e
	lsr r2, r2, #0x18
	bl sub_0201CD1C
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl sub_0201CCF8
	lsl r0, r0, #0x18
	add r1, r4, #0
	lsr r2, r0, #0x18
	add r0, r5, #0
	add r1, #0x3a
	bl sub_0201CD1C
	add r4, r4, #1
	cmp r4, #4
	blt _021EFFF4
	ldr r2, [r6, #0x2c]
	add r0, r5, #0
	lsl r2, r2, #0x1b
	mov r1, #0x46
	lsr r2, r2, #0x1b
	bl sub_0201CD1C
	ldr r2, [r6, #0x2c]
	add r0, r5, #0
	lsl r2, r2, #0x16
	mov r1, #0x47
	lsr r2, r2, #0x1b
	bl sub_0201CD1C
	ldr r2, [r6, #0x2c]
	add r0, r5, #0
	lsl r2, r2, #0x11
	mov r1, #0x48
	lsr r2, r2, #0x1b
	bl sub_0201CD1C
	ldr r2, [r6, #0x2c]
	add r0, r5, #0
	lsl r2, r2, #0xc
	mov r1, #0x49
	lsr r2, r2, #0x1b
	bl sub_0201CD1C
	ldr r2, [r6, #0x2c]
	add r0, r5, #0
	lsl r2, r2, #7
	mov r1, #0x4a
	lsr r2, r2, #0x1b
	bl sub_0201CD1C
	ldr r2, [r6, #0x2c]
	add r0, r5, #0
	lsl r2, r2, #2
	mov r1, #0x4b
	lsr r2, r2, #0x1b
	bl sub_0201CD1C
	ldrb r2, [r6, #0x1c]
	add r0, r5, #0
	mov r1, #0xd
	bl sub_0201CD1C
	ldrb r2, [r6, #0x1d]
	add r0, r5, #0
	mov r1, #0xe
	bl sub_0201CD1C
	ldrb r2, [r6, #0x1e]
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201CD1C
	ldrb r2, [r6, #0x1f]
	add r0, r5, #0
	mov r1, #0x10
	bl sub_0201CD1C
	add r2, r6, #0
	add r2, #0x20
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x11
	bl sub_0201CD1C
	add r2, r6, #0
	add r2, #0x21
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #0x12
	bl sub_0201CD1C
	add r2, r6, #0
	add r2, #0x33
	ldrb r2, [r2]
	add r0, r5, #0
	mov r1, #9
	bl sub_0201CD1C
	add r1, r6, #0
	add r1, #0x2b
	ldrb r1, [r1]
	add r0, r5, #0
	bl sub_0201D5E0
	ldr r1, [sp, #0x10]
	mov r0, #0xb
	bl sub_02048530
	add r4, r0, #0
	add r1, r6, #2
	mov r2, #0xb
	bl sub_02048658
	add r0, r5, #0
	mov r1, #0x73
	add r2, r4, #0
	bl sub_0201CD1C
	add r0, r4, #0
	bl sub_02048564
	add r6, #0x31
	ldrb r2, [r6]
	add r0, r5, #0
	mov r1, #0x98
	bl sub_0201CD1C
	add r0, r5, #0
	bl sub_0201D5F4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21eff24

	thumb_func_start ovy134_21f012c
ovy134_21f012c: ; 0x021F012C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	add r6, r1, #0
	ldr r7, _021F0210 ; =0x000001C9
	str r0, [sp, #0x40]
	ldrb r0, [r6, r7]
	str r2, [sp, #8]
	add r1, sp, #0x10
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #0x18
	mov r5, #0
	blx MIi_CpuClear32
	ldr r1, [sp, #8]
	add r7, #0xab
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x3e
	lsl r1, r1, #4
	add r0, r6, r7
	mul r1, r2
	mov r4, #0
	add r7, r0, r1
_021F0160:
	lsl r0, r4, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x34
	mul r0, r1
	add r6, r7, r0
	add r0, r6, #0
	bl sub_021EFF0C
	cmp r0, #0
	beq _021F017C
	lsl r1, r5, #2
	add r0, sp, #0x10
	str r6, [r0, r1]
	add r5, r5, #1
_021F017C:
	add r4, r4, #1
	cmp r4, #6
	blt _021F0160
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bge _021F018A
	str r5, [sp, #0xc]
_021F018A:
	cmp r5, #0
	beq _021F01A8
	add r4, sp, #0x10
_021F0190:
	add r0, r5, #0
	bl sub_02005748
	sub r5, r5, #1
	lsl r3, r0, #2
	lsl r1, r5, #2
	ldr r2, [r4, r3]
	ldr r0, [r4, r1]
	cmp r5, #0
	str r0, [r4, r3]
	str r2, [r4, r1]
	bne _021F0190
_021F01A8:
	ldr r0, [sp, #4]
	mov r1, #6
	bl sub_0201FD34
	bl sub_0201C2C8
	add r1, r0, #0
	ldr r0, _021F0214 ; =0x00000277
	ldr r2, _021F0218 ; =0x00007FFF
	str r0, [sp]
	ldr r0, [sp, #0x40]
	mov r5, #0
	add r3, r0, #0
	and r3, r2
	add r0, r2, #1
	orr r0, r3
	lsl r0, r0, #0x10
	ldr r3, _021F021C ; =0x021F0EDC
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_0203A1FC
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _021F0206
	add r7, sp, #0x10
_021F01DE:
	lsl r0, r5, #2
	ldr r6, [r7, r0]
	add r0, r6, #0
	bl sub_021EFF0C
	cmp r0, #0
	beq _021F01FE
	ldr r2, [sp, #0x40]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy134_21eff24
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0201FD6C
_021F01FE:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _021F01DE
_021F0206:
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F0210: .word 0x000001C9
_021F0214: .word 0x00000277
_021F0218: .word 0x00007FFF
_021F021C: .word 0x021F0EDC
	thumb_func_end ovy134_21f012c

	thumb_func_start ovy134_21f0220
ovy134_21f0220: ; 0x021F0220
	push {r3, lr}
	bl sub_02016AD8
	bl sub_02017394
	ldr r1, _021F024C ; =0x00004030
	bl sub_02019294
	ldrh r0, [r0]
	cmp r0, #0
	beq _021F023E
	cmp r0, #1
	beq _021F0244
	cmp r0, #2
	beq _021F0248
_021F023E:
	mov r0, #0x17
	lsl r0, r0, #4
	pop {r3, pc}
_021F0244:
	ldr r0, _021F0250 ; =0x00000171
	pop {r3, pc}
_021F0248:
	ldr r0, _021F0254 ; =0x00000172
	pop {r3, pc}
	.align 2, 0
_021F024C: .word 0x00004030
_021F0250: .word 0x00000171
_021F0254: .word 0x00000172
	thumb_func_end ovy134_21f0220

	thumb_func_start ovy134_21f0258
ovy134_21f0258: ; 0x021F0258
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r2, #0
	add r5, r0, #0
	ldr r7, [sp, #0x50]
	add r0, r4, #0
	str r1, [sp, #0x14]
	add r6, r3, #0
	bl sub_021E5E18
	str r0, [sp, #0x28]
	add r0, r4, #0
	bl sub_021E5E28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl sub_021E67B8
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl sub_021E6B58
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_021E5E4C
	cmp r0, #1
	bne _021F02E8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	add r2, r7, #0
	bl sub_021627C0
	ldrh r4, [r0, #4]
	mov r1, #0
	str r0, [sp, #0x2c]
	str r1, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x24]
	str r7, [sp, #0x10]
	add r0, r5, #0
	add r1, r1, #2
	add r2, r4, #0
	bl sub_02162490
	ldrh r1, [r5]
	ldr r0, [sp, #0x20]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	bl sub_021E6C20
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x20]
	bl sub_021E6BFC
	lsl r1, r4, #0x10
	ldr r0, [sp, #0x20]
	asr r1, r1, #0x10
	bl sub_021E6C44
	sub r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x2c]
	add r5, #0x3c
	bl sub_0203A24C
_021F02E8:
	mov r0, #0
	add r1, sp, #0x30
	mov r2, #0xc
	mov r4, #0
	blx MIi_CpuClear16
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	add r0, r0, #1
	add r2, r7, #0
	bl sub_021627C0
	str r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r3, [r3, #2]
	ldr r1, [sp, #0x20]
	add r0, sp, #0x30
	add r2, r7, #0
	bl sub_021E6F34
	cmp r6, #0
	ble _021F0352
_021F0322:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x3c
	mul r0, r4
	str r7, [sp, #0x10]
	lsl r3, r4, #1
	add r2, sp, #0x30
	ldrh r2, [r2, r3]
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	add r1, r1, #2
	bl sub_02162490
	add r4, r4, #1
	cmp r4, r6
	blt _021F0322
_021F0352:
	ldr r0, [sp, #0x18]
	bl sub_0203A24C
	ldr r0, [sp, #0x20]
	bl sub_021E6BDC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21f0258

	thumb_func_start ovy134_21f0364
ovy134_21f0364: ; 0x021F0364
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021F03C0 ; =0x00000301
	add r5, r3, #0
	str r0, [sp]
	add r0, sp, #0x20
	add r7, r1, #0
	ldrh r1, [r0]
	ldr r0, _021F03C4 ; =0x00007FFF
	ldr r3, _021F03C8 ; =0x021F0EDC
	and r1, r0
	add r0, r0, #1
	orr r0, r1
	lsl r0, r0, #0x10
	mov r1, #0x5a
	str r2, [sp, #4]
	lsr r0, r0, #0x10
	lsl r1, r1, #2
	mov r2, #0
	bl sub_0203A1FC
	add r1, sp, #0x20
	ldrh r1, [r1]
	add r2, r7, #0
	add r3, r5, #0
	str r1, [sp]
	ldr r1, [sp, #4]
	add r4, r0, #0
	bl ovy134_21f0258
	add r0, sp, #0x20
	ldrh r0, [r0]
	add r1, r4, #0
	mov r2, #0x32
	str r0, [sp]
	add r0, r6, #0
	add r3, r5, #0
	bl sub_021621D4
	add r0, r4, #0
	bl sub_0203A24C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F03C0: .word 0x00000301
_021F03C4: .word 0x00007FFF
_021F03C8: .word 0x021F0EDC
	thumb_func_end ovy134_21f0364

	thumb_func_start ovy134_21f03cc
ovy134_21f03cc: ; 0x021F03CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r2, #0
	str r1, [sp, #4]
	ldrh r2, [r4]
	ldr r1, _021F0464 ; =0x00007FFF
	and r2, r1
	add r1, r1, #1
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	bl sub_021E5D7C
	add r7, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	cmp r0, #3
	bhi _021F0460
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0400: ; jump table
	.short _021F0408 - _021F0400 - 2 ; case 0
	.short _021F0446 - _021F0400 - 2 ; case 1
	.short _021F0446 - _021F0400 - 2 ; case 2
	.short _021F0460 - _021F0400 - 2 ; case 3
_021F0408:
	ldrh r0, [r5, #6]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	cmp r0, #0x91
	bne _021F0428
	ldr r0, [sp, #4]
	bl ovy134_21f0220
	mov r1, #0x4f
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_020308C0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F0428:
	add r0, r4, #0
	bl sub_021E5CA4
	add r2, r0, #0
	mov r0, #0x4f
	lsl r3, r7, #0x18
	str r6, [sp]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, r5, #0
	lsr r3, r3, #0x18
	bl ovy134_21f0364
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F0446:
	ldrb r2, [r5, #3]
	mov r0, #0x4f
	mov r1, #0x65
	lsl r1, r1, #2
	lsl r2, r2, #0x18
	str r6, [sp]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, r4, r1
	lsr r2, r2, #0x1e
	add r3, r7, #0
	bl ovy134_21f012c
_021F0460:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F0464: .word 0x00007FFF
	thumb_func_end ovy134_21f03cc

	thumb_func_start ovy134_21f0468
ovy134_21f0468: ; 0x021F0468
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r1, #6]
	mov r3, #7
	mov r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	and r3, r0
	orr r2, r3
	mov r3, #8
	tst r0, r3
	beq _021F0484
	mov r0, #0x80
	orr r2, r0
_021F0484:
	ldrb r3, [r1, #2]
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r3, r0
	str r0, [r4]
	ldrh r0, [r1, #6]
	str r2, [r4, #8]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	str r0, [r4, #4]
	add r0, r1, #0
	ldr r1, [r4, #0x14]
	bl sub_021E5E3C
	add r1, r4, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #8
	blx MIi_CpuClear16
	add r0, r4, #0
	add r0, #0x18
	bl sub_02029BB0
	add r4, #0x20
	add r0, r4, #0
	bl sub_02029BB0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy134_21f0468

	thumb_func_start ovy134_21f04c0
ovy134_21f04c0: ; 0x021F04C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_021E5CAC
	bl sub_021E64D4
	add r6, r0, #0
	add r0, r5, #0
	bl ovy134_21f0724
	ldr r1, _021F05BC ; =0x000013BC
	add r7, r0, #0
	ldr r1, [r5, r1]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02162134
	add r4, r0, #0
	add r0, r5, #0
	bl sub_021E5CA4
	cmp r0, #0xb
	beq _021F04FC
	add r0, r5, #0
	bl sub_021E5F78
	ldr r1, [r4, #0x24]
	bl sub_0201F63C
_021F04FC:
	ldr r0, [r4, #0x4c]
	add r1, r7, #0
	bl ovy134_21f0468
	mov r6, #0x4f
	lsl r6, r6, #6
	ldr r0, [r5, r6]
	ldr r1, [r4, #0x28]
	bl sub_020200AC
	add r0, r5, #0
	bl sub_021E5F78
	ldr r1, [r4, #0x28]
	bl sub_0201F63C
	ldr r0, [r7, #0xc]
	mov r7, #0x13
	str r0, [r4, #0x5c]
	lsl r7, r7, #4
	ldrh r1, [r5]
	add r0, r7, #0
	bl sub_02048530
	add r1, r6, #0
	add r1, #0x14
	str r0, [r5, r1]
	ldrh r1, [r5]
	add r0, r7, #0
	bl sub_02048530
	add r1, r6, #0
	add r1, #0x18
	str r0, [r5, r1]
	add r2, r6, #0
	add r2, #0x14
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #3
	bl ovy134_21f08b8
	add r2, r6, #0
	add r2, #0x18
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #4
	bl ovy134_21f08b8
	add r0, r6, #0
	add r0, #0x18
	add r2, r4, #0
	add r6, #0x14
	ldr r1, [r5, r0]
	ldr r0, [r5, r6]
	add r2, #0x1a
	str r0, [r4, #0x68]
	str r1, [r4, #0x6c]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	bl ovy134_21f0764
	add r0, r5, #0
	bl sub_021E5CA4
	cmp r0, #3
	bne _021F0594
	ldr r0, _021F05C0 ; =0x00000404
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021F0594
	mov r0, #0x12
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r4, #0xc]
	b _021F05B6
_021F0594:
	mov r0, #0x13
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl sub_021E5CC4
	cmp r0, #4
	bne _021F05B6
	add r0, r4, #0
	add r0, #0xdd
	ldrb r1, [r0]
	mov r0, #0x40
	orr r1, r0
	add r0, r4, #0
	add r0, #0xdd
	strb r1, [r0]
_021F05B6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F05BC: .word 0x000013BC
_021F05C0: .word 0x00000404
	thumb_func_end ovy134_21f04c0

	thumb_func_start ovy134_21f05c4
ovy134_21f05c4: ; 0x021F05C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F05EC ; =0x000013D4
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F05D6
	bl sub_02048564
_021F05D6:
	ldr r0, _021F05F0 ; =0x000013D8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F05E2
	bl sub_02048564
_021F05E2:
	add r0, r4, #0
	bl sub_02017C84
	pop {r3, r4, r5, pc}
	nop
_021F05EC: .word 0x000013D4
_021F05F0: .word 0x000013D8
	thumb_func_end ovy134_21f05c4

	thumb_func_start ovy134_21f05f4
ovy134_21f05f4: ; 0x021F05F4
	push {r4, lr}
	mov r4, #0
	mov r3, #0
_021F05FA:
	ldrb r2, [r1, r3]
	cmp r2, #2
	bne _021F0602
	add r4, r4, #1
_021F0602:
	add r3, r3, #1
	cmp r3, #6
	blt _021F05FA
	bl sub_0201FDF8
	sub r0, r0, r4
	pop {r4, pc}
	thumb_func_end ovy134_21f05f4

	thumb_func_start sub_021F0610
sub_021F0610: ; 0x021F0610
	mov r1, #0
	cmp r0, #2
	beq _021F061E
	cmp r0, #3
	beq _021F0622
	cmp r0, #4
	b _021F0624
_021F061E:
	mov r1, #2
	b _021F0624
_021F0622:
	mov r1, #1
_021F0624:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bx lr
	.align 2, 0
	thumb_func_end sub_021F0610

	thumb_func_start ovy134_21f062c
ovy134_21f062c: ; 0x021F062C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_021F0610
	add r1, r4, r0
	ldr r0, _021F0640 ; =0x000013DC
	ldrb r0, [r1, r0]
	pop {r4, pc}
	nop
_021F0640: .word 0x000013DC
	thumb_func_end ovy134_21f062c

	thumb_func_start ovy134_21f0644
ovy134_21f0644: ; 0x021F0644
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_021F0610
	add r1, r5, r0
	ldr r0, _021F0658 ; =0x000013DC
	strb r4, [r1, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021F0658: .word 0x000013DC
	thumb_func_end ovy134_21f0644

	thumb_func_start ovy134_21f065c
ovy134_21f065c: ; 0x021F065C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	bl sub_021E5CE4
	str r0, [sp]
	add r0, r5, #0
	bl sub_020174AC
	add r6, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x28]
	add r1, #0xed
	bl ovy134_21f05f4
	ldr r0, [r4, #0x24]
	add r4, #0xe7
	add r1, r4, #0
	bl ovy134_21f05f4
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r1, [r7, #0x18]
	add r0, r7, #0
	lsr r2, r2, #0x18
	bl ovy134_21f0644
	cmp r6, #3
	bhi _021F06AC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F06A4: ; jump table
	.short _021F06AE - _021F06A4 - 2 ; case 0
	.short _021F06AE - _021F06A4 - 2 ; case 1
	.short _021F06AE - _021F06A4 - 2 ; case 2
	.short _021F06AC - _021F06A4 - 2 ; case 3
_021F06AC:
	mov r6, #0
_021F06AE:
	add r0, r7, #0
	bl ovy134_21f0724
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020179F8
	ldr r1, [r7, #0xc]
	add r5, r0, #0
	cmp r1, #3
	beq _021F06EA
	ldrb r0, [r4, #2]
	cmp r0, #0x36
	bhs _021F06EA
	ldr r0, [r7, #0x18]
	bl sub_021F0610
	ldrb r2, [r4, #2]
	add r1, r0, #0
	cmp r2, #0x35
	bne _021F06DE
	add r0, r5, #0
	mov r2, #0xff
	b _021F06E0
_021F06DE:
	add r0, r5, #0
_021F06E0:
	bl sub_0200FF28
	add r0, r5, #0
	ldrb r1, [r4, #2]
	b _021F06F8
_021F06EA:
	cmp r1, #0xb
	bne _021F06FC
	ldrb r0, [r4, #2]
	cmp r0, #0x38
	bne _021F06FC
	add r0, r5, #0
	mov r1, #0
_021F06F8:
	bl sub_0200FEFC
_021F06FC:
	cmp r6, #0
	beq _021F0706
	ldr r0, [r7, #4]
	cmp r0, #1
	bne _021F071E
_021F0706:
	mov r4, #0
	mov r7, #0xff
_021F070A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200FF28
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021F070A
_021F071E:
	ldr r0, [sp]
	strh r6, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy134_21f065c

	thumb_func_start ovy134_21f0724
ovy134_21f0724: ; 0x021F0724
	push {r4, lr}
	add r4, r0, #0
	bl sub_021E607C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_021E5D20
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ovy134_21f0724

	thumb_func_start ovy134_21f0738
ovy134_21f0738: ; 0x021F0738
	push {r3, lr}
	bl ovy134_21f0724
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy134_21f0738

	thumb_func_start ovy134_21f0748
ovy134_21f0748: ; 0x021F0748
	push {r3, lr}
	bl ovy134_21f0724
	ldrh r0, [r0, #4]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ovy134_21f0748

	thumb_func_start ovy134_21f0754
ovy134_21f0754: ; 0x021F0754
	push {r4, lr}
	add r4, r1, #0
	bl ovy134_21f0724
	add r1, r4, #0
	bl sub_021E5E3C
	pop {r4, pc}
	thumb_func_end ovy134_21f0754

	thumb_func_start ovy134_21f0764
ovy134_21f0764: ; 0x021F0764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ovy134_21f0724
	add r7, r0, #0
	bl sub_021E5E34
	ldr r1, [r5, #0xc]
	cmp r1, #3
	bne _021F0794
	ldr r1, _021F07D8 ; =0x00000404
	ldrb r2, [r5, r1]
	cmp r2, #0
	beq _021F0794
	add r0, r1, #0
	add r0, #0x87
	strh r0, [r4]
	add r1, #0x7c
	add sp, #0x10
	strh r1, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021F0794:
	cmp r0, #0
	beq _021F07AC
	cmp r0, #1
	beq _021F07A0
	cmp r0, #2
	beq _021F07AC
_021F07A0:
	ldr r0, _021F07DC ; =0x000004E6
	add sp, #0x10
	strh r0, [r4]
	add r0, #9
	strh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021F07AC:
	ldrb r1, [r7, #2]
	ldr r0, [r5, #8]
	add r2, sp, #0
	bl sub_021E6440
	add r0, sp, #0
	ldrh r1, [r0, #0xa]
	strh r1, [r4]
	ldrh r0, [r0, #0xc]
	strh r0, [r6]
	ldr r0, [r5, #0x18]
	cmp r0, #4
	bne _021F07D4
	ldr r0, [r5, #0xc]
	cmp r0, #1
	beq _021F07D4
	ldr r0, _021F07DC ; =0x000004E6
	strh r0, [r4]
	add r0, #9
	strh r0, [r6]
_021F07D4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F07D8: .word 0x00000404
_021F07DC: .word 0x000004E6
	thumb_func_end ovy134_21f0764

	thumb_func_start ovy134_21f07e0
ovy134_21f07e0: ; 0x021F07E0
	push {r3, r4, r5, r6, r7, lr}
	sub r2, #0xc
	add r7, r0, #0
	add r6, r1, #0
	mov r5, #0
	cmp r2, #1
	bhi _021F07F0
	mov r5, #1
_021F07F0:
	add r0, r3, #0
	bl sub_021E5E28
	add r4, r0, #0
	cmp r4, #0x4e
	blo _021F07FE
	mov r4, #0
_021F07FE:
	ldr r2, _021F082C ; =0x00000197
	mov r0, #0
	mov r1, #2
	add r3, r6, #0
	bl sub_0204875C
	lsl r3, r4, #2
	ldr r2, _021F0830 ; =0x021F0CCC
	lsl r4, r5, #1
	add r2, r2, r3
	ldrh r2, [r4, r2]
	ldr r1, [sp, #0x18]
	add r6, r0, #0
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_02048838
	add r0, r6, #0
	bl sub_020487D4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F082C: .word 0x00000197
_021F0830: .word 0x021F0CCC
	thumb_func_end ovy134_21f07e0

	thumb_func_start ovy134_21f0834
ovy134_21f0834: ; 0x021F0834
	push {r4, r5}
	ldr r4, _021F08B4 ; =0x00000408
	add r5, r0, r4
	add r0, r4, #0
	sub r0, #0x28
	mul r0, r1
	add r1, r5, r0
	mov r5, #1
	mov r0, #0
	strh r5, [r3]
	cmp r2, #7
	bhi _021F08A2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021F0858: ; jump table
	.short _021F0868 - _021F0858 - 2 ; case 0
	.short _021F0868 - _021F0858 - 2 ; case 1
	.short _021F0868 - _021F0858 - 2 ; case 2
	.short _021F0876 - _021F0858 - 2 ; case 3
	.short _021F087E - _021F0858 - 2 ; case 4
	.short _021F0882 - _021F0858 - 2 ; case 5
	.short _021F088C - _021F0858 - 2 ; case 6
	.short _021F0896 - _021F0858 - 2 ; case 7
_021F0868:
	sub r4, #0x33
	ldrb r0, [r1, r4]
	strh r0, [r3]
	mov r0, #0x61
_021F0870:
	lsl r0, r0, #2
	add r0, r1, r0
	b _021F08A2
_021F0876:
	sub r4, #0x30
_021F0878:
	ldrb r1, [r1, r4]
	strh r1, [r3]
	b _021F08A2
_021F087E:
	sub r4, #0x2f
	b _021F0878
_021F0882:
	sub r4, #0x32
	ldrb r0, [r1, r4]
	strh r0, [r3]
	mov r0, #0x86
	b _021F0870
_021F088C:
	sub r4, #0x31
	ldrb r0, [r1, r4]
	strh r0, [r3]
	mov r0, #0xab
	b _021F0870
_021F0896:
	add r0, r4, #0
	sub r0, #0x2e
	ldrb r0, [r1, r0]
	sub r4, #0xc8
	strh r0, [r3]
	add r0, r1, r4
_021F08A2:
	ldrh r1, [r3]
	cmp r1, #0
	bne _021F08B0
	cmp r0, #0
	bne _021F08B0
	mov r1, #1
	strh r1, [r3]
_021F08B0:
	pop {r4, r5}
	bx lr
	.align 2, 0
_021F08B4: .word 0x00000408
	thumb_func_end ovy134_21f0834

	thumb_func_start ovy134_21f08b8
ovy134_21f08b8: ; 0x021F08B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldrh r1, [r5]
	add r6, r2, #0
	str r1, [sp, #4]
	bl ovy134_21f0724
	add r7, r0, #0
	bl sub_021E5E34
	cmp r4, #8
	bge _021F098E
	cmp r0, #0
	beq _021F08E0
	cmp r0, #1
	beq _021F0938
	cmp r0, #2
	beq _021F08F2
_021F08E0:
	str r4, [sp]
	ldr r1, [sp, #4]
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r3, r7, #0
	bl ovy134_21f07e0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F08F2:
	add r0, r7, #0
	bl sub_021E5E20
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r3, sp, #8
	mov r2, #1
	add r0, sp, #8
	strh r2, [r0, #2]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r4, #0
	add r3, #2
	bl ovy134_21f0834
	add r1, r0, #0
	add r0, sp, #8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021F0926
	add r0, r6, #0
	mov r2, #0x4a
	bl sub_02048658
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F0926:
	str r4, [sp]
	ldr r1, [sp, #4]
	ldr r2, [r5, #0xc]
	add r0, r6, #0
	add r3, r7, #0
	bl ovy134_21f07e0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F0938:
	add r0, r7, #0
	bl sub_021E5E20
	add r1, r0, #0
	lsl r1, r1, #0x18
	mov r0, #1
	add r7, sp, #8
	strh r0, [r7]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r4, #0
	add r3, sp, #8
	bl ovy134_21f0834
	ldrh r5, [r7]
	add r1, r0, #0
	cmp r5, #0
	bne _021F0968
	add r0, r6, #0
	mov r2, #0x4a
	bl sub_02048658
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F0968:
	mov r2, #0x66
	ldr r3, [sp, #4]
	mov r0, #0
	mov r1, #2
	lsl r2, r2, #2
	bl sub_0204875C
	sub r1, r5, #1
	lsl r1, r1, #3
	add r1, r4, r1
	lsl r1, r1, #0x10
	add r7, r0, #0
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl sub_02048838
	add r0, r7, #0
	bl sub_020487D4
_021F098E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy134_21f08b8
_021F0994:
	.byte 0x04, 0x1C, 0x04, 0x20, 0x09, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x1F, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x34, 0x0B, 0x1F, 0x02, 0x22, 0x00, 0x00, 0x00
	.byte 0x44, 0x0A, 0x1F, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00
	.byte 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x22, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0xC2, 0x00, 0x00, 0x00
	.byte 0xC3, 0x00, 0x00, 0x00, 0xC6, 0x00, 0x00, 0x00, 0xC7, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00
	.byte 0xC9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x09, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xAC, 0x09, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x98, 0x09, 0x1F, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0xBC, 0x09, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0xA4, 0x09, 0x1F, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0xC4, 0x09, 0x1F, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0xDC, 0x09, 0x1F, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0xA0, 0x09, 0x1F, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0xD0, 0x09, 0x1F, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00
	.byte 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x07, 0x01, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x02
	.byte 0x08, 0x00, 0x78, 0x02, 0x10, 0x00, 0x80, 0x02, 0x18, 0x00, 0x88, 0x02, 0x20, 0x00, 0x90, 0x02
	.byte 0x28, 0x00, 0x98, 0x02, 0x30, 0x00, 0xA0, 0x02, 0x38, 0x00, 0xA8, 0x02, 0x40, 0x00, 0xB0, 0x02
	.byte 0x48, 0x00, 0xB8, 0x02, 0x50, 0x00, 0xC0, 0x02, 0x58, 0x00, 0xC8, 0x02, 0x60, 0x00, 0xD0, 0x02
	.byte 0x68, 0x00, 0xD8, 0x02, 0x70, 0x00, 0x70, 0x00, 0x78, 0x00, 0x78, 0x00, 0x80, 0x00, 0x80, 0x00
	.byte 0x88, 0x00, 0x88, 0x00, 0x90, 0x00, 0x90, 0x00, 0x98, 0x00, 0x98, 0x00, 0xA0, 0x00, 0xE0, 0x02
	.byte 0xA8, 0x00, 0xE8, 0x02, 0xB0, 0x00, 0xF0, 0x02, 0xB8, 0x00, 0xF8, 0x02, 0xC0, 0x00, 0x00, 0x03
	.byte 0xC8, 0x00, 0x08, 0x03, 0xD0, 0x00, 0x10, 0x03, 0xD8, 0x00, 0x18, 0x03, 0xE0, 0x00, 0x20, 0x03
	.byte 0xE8, 0x00, 0x28, 0x03, 0xF0, 0x00, 0x30, 0x03, 0xF8, 0x00, 0x38, 0x03, 0x00, 0x01, 0x40, 0x03
	.byte 0x08, 0x01, 0x48, 0x03, 0x10, 0x01, 0x50, 0x03, 0x18, 0x01, 0x58, 0x03, 0x20, 0x01, 0x60, 0x03
	.byte 0x28, 0x01, 0x68, 0x03, 0x30, 0x01, 0x70, 0x03, 0x38, 0x01, 0x78, 0x03, 0x40, 0x01, 0x80, 0x03
	.byte 0x48, 0x01, 0x88, 0x03, 0x50, 0x01, 0x90, 0x03, 0x58, 0x01, 0x98, 0x03, 0x60, 0x01, 0xA0, 0x03
	.byte 0x68, 0x01, 0xA8, 0x03, 0x70, 0x01, 0xB0, 0x03, 0x78, 0x01, 0xB8, 0x03, 0x80, 0x01, 0xC0, 0x03
	.byte 0x88, 0x01, 0xC8, 0x03, 0x90, 0x01, 0xD0, 0x03, 0x98, 0x01, 0xD8, 0x03, 0xA0, 0x01, 0xE0, 0x03
	.byte 0xE8, 0x03, 0xE8, 0x03, 0xE8, 0x03, 0xE8, 0x03, 0xB8, 0x01, 0xB8, 0x01, 0xC0, 0x01, 0xC0, 0x01
	.byte 0xC8, 0x01, 0xC8, 0x01, 0xD0, 0x01, 0xD0, 0x01, 0xD8, 0x01, 0xD8, 0x01, 0xE0, 0x01, 0xE0, 0x01
	.byte 0xE8, 0x01, 0xE8, 0x01, 0xF0, 0x01, 0xF0, 0x01, 0xF8, 0x01, 0xF8, 0x01, 0x00, 0x02, 0x00, 0x02
	.byte 0x08, 0x02, 0x08, 0x02, 0x10, 0x02, 0x10, 0x02, 0x18, 0x02, 0x18, 0x02, 0x20, 0x02, 0x20, 0x02
	.byte 0x28, 0x02, 0x28, 0x02, 0x30, 0x02, 0x30, 0x02, 0x38, 0x02, 0x38, 0x02, 0x40, 0x02, 0x40, 0x02
	.byte 0x48, 0x02, 0x48, 0x02, 0x50, 0x02, 0x50, 0x02, 0x58, 0x02, 0x58, 0x02, 0x60, 0x02, 0x60, 0x02
	.byte 0x68, 0x02, 0x68, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x30, 0x31, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x30, 0x32, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F, 0x6E, 0x61, 0x6D, 0x65
	.byte 0x30, 0x33, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F, 0x76, 0x5F, 0x6B, 0x61, 0x6F, 0x31, 0x00, 0x00
	.byte 0x77, 0x62, 0x74, 0x5F, 0x76, 0x5F, 0x6B, 0x61, 0x6F, 0x32, 0x00, 0x00, 0x44, 0x0E, 0x1F, 0x02
	.byte 0x50, 0x0E, 0x1F, 0x02, 0x44, 0x0E, 0x1F, 0x02, 0x8C, 0x0E, 0x1F, 0x02, 0x9C, 0x0E, 0x1F, 0x02
	.byte 0x8C, 0x0E, 0x1F, 0x02, 0x20, 0x0E, 0x1F, 0x02, 0x2C, 0x0E, 0x1F, 0x02, 0x38, 0x0E, 0x1F, 0x02
	.byte 0xAC, 0x0E, 0x1F, 0x02, 0xBC, 0x0E, 0x1F, 0x02, 0xCC, 0x0E, 0x1F, 0x02, 0x77, 0x62, 0x74, 0x5F
	.byte 0x76, 0x5F, 0x6B, 0x61, 0x6F, 0x31, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x76, 0x5F, 0x6B, 0x61, 0x6F, 0x32, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x30, 0x31, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x30, 0x32, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x30, 0x33, 0x5F, 0x70, 0x6C, 0x00, 0x00, 0x00, 0x77, 0x62, 0x74, 0x5F
	.byte 0x62, 0x61, 0x74, 0x74, 0x6C, 0x65, 0x2E, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021F0994
