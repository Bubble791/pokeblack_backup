	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02065C9C
sub_02065C9C: ; 0x02065C9C
	cmp r3, #0
	beq _02065CCC
	ldr r1, [r0]
	add r1, r1, r2
	str r1, [r0]
	ldr r1, [r0, #4]
	add r1, r1, r2
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r2
	str r1, [r0, #8]
	bx lr
_02065CCC:
	ldr r3, [r1]
	ldr ip, [r0]
	mul r3, r2, r3
	add r3, ip, r3, asr #12
	str r3, [r0]
	ldr r3, [r1, #4]
	ldr ip, [r0, #4]
	mul r3, r2, r3
	add r3, ip, r3, asr #12
	str r3, [r0, #4]
	ldr r1, [r1, #8]
	ldr r3, [r0, #8]
	mul r1, r2, r1
	add r1, r3, r1, asr #12
	str r1, [r0, #8]
	bx lr
	arm_func_end sub_02065C9C

	arm_func_start sub_02065D0C
sub_02065D0C: ; 0x02065D0C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	movs sb, r1
	mov sl, r0
	mov r8, r2
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [sb, #0x10]
	cmp r2, #0
	bne _02065D98
	ldrb r2, [sb, #0x19]
	cmp r8, r2
	bhs _02065D8C
	add r2, sb, r8, lsl #1
	ldrh r4, [r2, #0x1a]
	and r2, r4, #0x300
	cmp r2, #0x100
	bne _02065D80
	ldr r3, [sb, #0xc]
	cmp r3, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	and r2, r4, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02065D80:
	add sp, sp, #0x70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02065D8C:
	add sp, sp, #0x70
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02065D98:
	mov r5, #0
	mov r3, r5
	mov r6, r5
	mov r2, sb
_02065DA8:
	ldrb r0, [r2, #0x19]
	cmp r8, r0
	bhs _02065DE8
	add r0, r2, r8, lsl #1
	ldrh r0, [r0, #0x1a]
	and r0, r0, #0x300
	cmp r0, #0x100
	bne _02065DE8
	ldr r0, [r2, #4]
	cmp r0, #0x1000
	addgt r5, r5, #0x1000
	bgt _02065DE0
	cmp r0, #0
	addgt r5, r5, r0
_02065DE0:
	mov r1, r2
	add r3, r3, #1
_02065DE8:
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _02065DA8
	cmp r5, #0
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, #1
	bne _02065E40
	ldr r3, [r1, #0xc]
	add r0, r1, r8, lsl #1
	cmp r3, #0
	ldrh r2, [r0, #0x1a]
	addeq sp, sp, #0x70
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	and r2, r2, #0xff
	blx r3
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02065E40:
	mov r1, sl
	mov r0, #0
	mov r2, #0x58
	bl sub_0207869C
	mvn r0, #0
	str r0, [sl]
	add fp, sp, #0x40
	add r4, sp, #0x18
_02065E60:
	ldrb r0, [sb, #0x19]
	cmp r8, r0
	bhs _02066044
	add r0, sb, r8, lsl #1
	ldrh r1, [r0, #0x1a]
	and r0, r1, #0x300
	cmp r0, #0x100
	bne _02066044
	ldr r0, [sb, #4]
	cmp r0, #0
	ble _02066044
	ldr r3, [sb, #0xc]
	cmp r3, #0
	beq _02066044
	and r2, r1, #0xff
	mov r0, r4
	mov r1, sb
	blx r3
	cmp r6, #0
	bne _02065ED0
	mov r0, fp
	add r1, sp, #0xc
	mov r2, #0xc
	bl sub_0207866C
	add r0, sp, #0x58
	add r1, sp, #0
	mov r2, #0xc
	bl sub_0207866C
_02065ED0:
	cmp r5, #0x1000
	ldreq r7, [sb, #4]
	beq _02065EEC
	ldr r0, [sb, #4]
	mov r1, r5
	blx FX_Div
	mov r7, r0
_02065EEC:
	ldr r3, [sp, #0x18]
	add r0, sl, #4
	add r1, sp, #0x1c
	mov r2, r7
	and r3, r3, #1
	bl sub_02065C9C
	ldr r3, [sp, #0x18]
	add r0, sl, #0x10
	add r1, sp, #0x28
	mov r2, r7
	and r3, r3, #8
	bl sub_02065C9C
	ldr r3, [sp, #0x18]
	add r0, sl, #0x1c
	add r1, sp, #0x34
	mov r2, r7
	and r3, r3, #0x10
	bl sub_02065C9C
	ldr r0, [sp, #0x18]
	tst r0, #4
	bne _02065F94
	ldr r2, [sl, #0x4c]
	ldr r0, [sp, #0x64]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x4c]
	ldr r2, [sl, #0x50]
	ldr r0, [sp, #0x68]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x50]
	ldr r2, [sl, #0x54]
	ldr r0, [sp, #0x6c]
	smull r1, r0, r7, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [sl, #0x54]
_02065F94:
	ldr r0, [sp, #0x18]
	tst r0, #2
	bne _0206601C
	ldr r1, [sl, #0x28]
	ldr r0, [sp, #0x40]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x28]
	ldr r1, [sl, #0x2c]
	ldr r0, [sp, #0x44]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x2c]
	ldr r1, [sl, #0x30]
	ldr r0, [sp, #0x48]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x30]
	ldr r1, [sl, #0x34]
	ldr r0, [sp, #0x4c]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x34]
	ldr r1, [sl, #0x38]
	ldr r0, [sp, #0x50]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x38]
	ldr r1, [sl, #0x3c]
	ldr r0, [sp, #0x54]
	mul r0, r7, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x3c]
	b _02066034
_0206601C:
	ldr r0, [sl, #0x28]
	add r0, r0, r7
	str r0, [sl, #0x28]
	ldr r0, [sl, #0x38]
	add r0, r0, r7
	str r0, [sl, #0x38]
_02066034:
	ldr r1, [sl]
	ldr r0, [sp, #0x18]
	and r0, r1, r0
	str r0, [sl]
_02066044:
	ldr sb, [sb, #0x10]
	add r6, r6, #1
	cmp sb, #0
	bne _02065E60
	add r0, sl, #0x28
	add r1, sl, #0x34
	add r2, sl, #0x40
	bl VEC_CrossProduct
	ldr r0, [sl, #0x28]
	cmp r0, #0
	ldreq r0, [sl, #0x2c]
	cmpeq r0, #0
	ldreq r0, [sl, #0x30]
	cmpeq r0, #0
	bne _02066094
	add r0, sp, #0xc
	add r1, sl, #0x28
	mov r2, #0xc
	bl sub_0207866C
	b _020660A0
_02066094:
	add r0, sl, #0x28
	mov r1, r0
	bl VEC_Normalize
_020660A0:
	ldr r0, [sl, #0x40]
	cmp r0, #0
	ldreq r0, [sl, #0x44]
	cmpeq r0, #0
	ldreq r0, [sl, #0x48]
	cmpeq r0, #0
	bne _020660D0
	add r0, sp, #0
	add r1, sl, #0x40
	mov r2, #0xc
	bl sub_0207866C
	b _020660DC
_020660D0:
	add r0, sl, #0x40
	mov r1, r0
	bl VEC_Normalize
_020660DC:
	add r0, sl, #0x40
	add r1, sl, #0x28
	add r2, sl, #0x34
	bl VEC_CrossProduct
	mov r0, #1
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_02065D0C

	thumb_func_start sub_020660F8
sub_020660F8: ; 0x020660F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r2, #0
	mov r0, #0
	add r4, r1, #0
	str r0, [r5]
	lsl r6, r7, #1
_02066106:
	ldrb r1, [r4, #0x19]
	cmp r7, r1
	bhs _0206613A
	add r1, r6, r4
	ldrh r2, [r1, #0x1a]
	mov r1, #3
	lsl r1, r1, #8
	add r3, r2, #0
	and r3, r1
	mov r1, #1
	lsl r1, r1, #8
	cmp r3, r1
	bne _0206613A
	ldr r3, [r4, #0xc]
	cmp r3, #0
	beq _0206613A
	lsl r2, r2, #0x18
	add r0, sp, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	blx r3
	ldr r1, [r5]
	ldr r0, [sp]
	orr r0, r1
	str r0, [r5]
	mov r0, #1
_0206613A:
	ldr r4, [r4, #0x10]
	cmp r4, #0
	bne _02066106
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_020660F8

	thumb_func_start sub_02066144
sub_02066144: ; 0x02066144
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	ldr r7, _02066174 ; =0x0209B420
	add r4, #8
	mov r6, #0x40
_02066150:
	ldr r0, [r4]
	mov r1, #0xe0
	bic r0, r6
	str r0, [r4]
	ldr r0, [r5]
	ldrb r2, [r0]
	add r0, r5, #0
	and r1, r2
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x19
	ldr r2, [r7, r2]
	blx r2
	ldr r1, [r5, #8]
	mov r0, #0x20
	tst r0, r1
	beq _02066150
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02066174: .word 0x0209B420
	thumb_func_end sub_02066144

	thumb_func_start sub_02066178
sub_02066178: ; 0x02066178
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x62
	add r4, r1, #0
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #2
	blx sub_0207869C
	add r0, r5, #0
	mov r1, #1
	add r0, #0xc4
	str r1, [r0]
	str r1, [r5, #8]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0206619C
	b _020661A2
_0206619C:
	ldr r1, [r4, #4]
	ldr r0, [r1, #4]
	add r0, r1, r0
_020661A2:
	str r0, [r5]
	str r4, [r5, #4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020661B0
	add r1, #0x40
	b _020661B2
_020661B0:
	mov r1, #0
_020661B2:
	add r0, r5, #0
	add r0, #0xd4
	str r1, [r0]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020661C8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _020661C8
	add r1, r1, r0
	b _020661CA
_020661C8:
	mov r1, #0
_020661CA:
	add r0, r5, #0
	add r0, #0xd8
	str r1, [r0]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020661E0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _020661E0
	add r1, r1, r0
	b _020661E2
_020661E0:
	mov r1, #0
_020661E2:
	add r0, r5, #0
	add r0, #0xdc
	str r1, [r0]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x15]
	lsl r1, r0, #2
	ldr r0, _020662B0 ; =0x0209B304
	ldr r1, [r0, r1]
	add r0, r5, #0
	add r0, #0xe8
	str r1, [r0]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x15]
	lsl r1, r0, #2
	ldr r0, _020662B4 ; =0x0209B2F8
	ldr r1, [r0, r1]
	add r0, r5, #0
	add r0, #0xec
	str r1, [r0]
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x16]
	lsl r1, r0, #2
	ldr r0, _020662B8 ; =0x0209B310
	ldr r1, [r0, r1]
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x1c]
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x20]
	add r0, r5, #0
	add r0, #0xe4
	str r1, [r0]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _02066254
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0x20
	bhs _02066254
	lsl r0, r0, #2
	add r0, r5, r0
	str r1, [r0, #0xc]
	add r0, r4, #0
	add r0, #0x25
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r0, r5, r0
	add r0, #0x8c
	strb r1, [r0]
_02066254:
	ldr r1, [r4]
	mov r0, #1
	tst r0, r1
	beq _02066264
	ldr r1, [r5, #8]
	mov r0, #0x80
	orr r0, r1
	str r0, [r5, #8]
_02066264:
	ldr r1, [r4]
	mov r0, #2
	tst r1, r0
	beq _02066274
	ldr r1, [r5, #8]
	add r0, #0xfe
	orr r0, r1
	str r0, [r5, #8]
_02066274:
	ldr r1, [r4]
	mov r0, #4
	tst r1, r0
	beq _02066284
	ldr r1, [r5, #8]
	lsl r0, r0, #7
	orr r0, r1
	str r0, [r5, #8]
_02066284:
	ldr r1, [r4]
	mov r0, #8
	tst r1, r0
	beq _02066294
	ldr r1, [r5, #8]
	lsl r0, r0, #7
	orr r0, r1
	str r0, [r5, #8]
_02066294:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _0206629E
	add r0, r5, #0
	blx r1
_0206629E:
	add r0, r5, #0
	bl sub_02066144
	ldr r1, [r4]
	mov r0, #1
	bic r1, r0
	str r1, [r4]
	pop {r3, r4, r5, pc}
	nop
_020662B0: .word 0x0209B304
_020662B4: .word 0x0209B2F8
_020662B8: .word 0x0209B310
	thumb_func_end sub_02066178

	thumb_func_start sub_020662BC
sub_020662BC: ; 0x020662BC
	push {r4, r5, r6, r7}
	cmp r1, #0
	beq _020662FA
_020662C2:
	ldrb r2, [r1, #0x19]
	mov r4, #0
	cmp r2, #0
	ble _020662F4
	add r5, r1, #0
_020662CC:
	ldrh r3, [r5, #0x1a]
	mov r2, #1
	lsl r2, r2, #8
	tst r2, r3
	beq _020662EA
	asr r2, r4, #5
	lsl r3, r2, #2
	mov r6, #0x1f
	add r7, r4, #0
	and r7, r6
	mov r6, #1
	ldr r2, [r0, r3]
	lsl r6, r7
	orr r2, r6
	str r2, [r0, r3]
_020662EA:
	ldrb r2, [r1, #0x19]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r2
	blt _020662CC
_020662F4:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020662C2
_020662FA:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end sub_020662BC

	thumb_func_start sub_02066300
sub_02066300: ; 0x02066300
	push {r4, lr}
	sub sp, #0x188
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #0x10
	and r0, r1
	cmp r0, #0x10
	bne _02066366
	add r1, r4, #0
	mov r0, #0
	add r1, #0x3c
	mov r2, #8
	blx sub_02078658
	add r1, r4, #0
	mov r0, #0
	add r1, #0x44
	mov r2, #8
	blx sub_02078658
	add r1, r4, #0
	mov r0, #0
	add r1, #0x4c
	mov r2, #8
	blx sub_02078658
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02066342
	add r0, r4, #0
	add r0, #0x3c
	bl sub_020662BC
_02066342:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02066350
	add r0, r4, #0
	add r0, #0x44
	bl sub_020662BC
_02066350:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0206635E
	add r0, r4, #0
	add r0, #0x4c
	bl sub_020662BC
_0206635E:
	ldr r1, [r4]
	mov r0, #0x10
	bic r1, r0
	str r1, [r4]
_02066366:
	ldr r1, _0206638C ; =0x02143C70
	ldr r0, [r1]
	cmp r0, #0
	beq _02066378
	add r1, r4, #0
	bl sub_02066178
	add sp, #0x188
	pop {r4, pc}
_02066378:
	add r0, sp, #0
	str r0, [r1]
	add r1, r4, #0
	bl sub_02066178
	ldr r0, _0206638C ; =0x02143C70
	mov r1, #0
	str r1, [r0]
	add sp, #0x188
	pop {r4, pc}
	.align 2, 0
_0206638C: .word 0x02143C70
	thumb_func_end sub_02066300

	thumb_func_start sub_02066390
sub_02066390: ; 0x02066390
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0206639C
	blx r1
_0206639C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_02066390

	thumb_func_start sub_020663A4
sub_020663A4: ; 0x020663A4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020663B0
	blx r1
_020663B0:
	ldr r1, [r4, #8]
	mov r0, #0x20
	orr r0, r1
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_020663A4

	thumb_func_start sub_020663BC
sub_020663BC: ; 0x020663BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #2
	ldr r0, [r5, #8]
	lsl r1, r1, #8
	tst r0, r1
	bne _020664C6
	ldr r0, [r5]
	sub r1, #0x7c
	ldrb r2, [r0, #1]
	add r0, r5, #0
	add r0, #0xac
	strb r2, [r0]
	add r0, r5, #0
	add r0, #0xac
	ldrb r6, [r0]
	ldr r2, [r5, #8]
	mov r0, #4
	orr r0, r2
	str r0, [r5, #8]
	add r0, r5, #0
	add r1, r5, r1
	add r0, #0xb8
	str r1, [r0]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020663FA
	add r0, r5, #0
	add r0, #0x8e
	ldrb r4, [r0]
	b _020663FC
_020663FA:
	mov r4, #0
_020663FC:
	cmp r4, #1
	bne _02066426
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0206641C
	add r0, r5, #0
	add r0, #0x8e
	ldrb r4, [r0]
	b _0206641E
_0206641C:
	mov r4, #0
_0206641E:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066428
_02066426:
	mov r0, #0
_02066428:
	cmp r0, #0
	bne _02066468
	ldr r3, [r5, #4]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	beq _02066458
	mov r0, #0x1f
	mov r2, #1
	and r0, r6
	lsl r2, r0
	lsr r0, r6, #5
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r0, [r0, #0x4c]
	tst r0, r2
	beq _02066458
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	ldr r3, [r3, #0x1c]
	add r2, r6, #0
	blx r3
	cmp r0, #0
	bne _02066468
_02066458:
	ldr r0, [r5]
	ldrb r1, [r0, #2]
	mov r0, #1
	and r1, r0
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	str r1, [r0]
_02066468:
	cmp r4, #2
	bne _02066492
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02066488
	add r0, r5, #0
	add r0, #0x8e
	ldrb r4, [r0]
	b _0206648A
_02066488:
	mov r4, #0
_0206648A:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066494
_02066492:
	mov r0, #0
_02066494:
	cmp r0, #0
	bne _020664B4
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	ldr r1, [r5, #8]
	ldr r0, [r0]
	cmp r0, #0
	beq _020664AE
	mov r0, #1
	orr r0, r1
	str r0, [r5, #8]
	b _020664B4
_020664AE:
	mov r0, #1
	bic r1, r0
	str r1, [r5, #8]
_020664B4:
	cmp r4, #3
	bne _020664C6
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x14]
	add r0, r5, #0
	blx r1
_020664C6:
	ldr r0, [r5]
	add r0, r0, #3
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020663BC

	thumb_func_start sub_020664D0
sub_020664D0: ; 0x020664D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02066550
	mov r0, #1
	tst r0, r1
	beq _02066550
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _020664F2
	add r0, r5, #0
	add r0, #0x8f
	ldrb r4, [r0]
	b _020664F4
_020664F2:
	mov r4, #0
_020664F4:
	cmp r4, #1
	bne _0206651E
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x18]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _02066514
	add r0, r5, #0
	add r0, #0x8f
	ldrb r4, [r0]
	b _02066516
_02066514:
	mov r4, #0
_02066516:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066520
_0206651E:
	mov r0, #0
_02066520:
	cmp r0, #0
	bne _0206653E
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	str r0, [sp]
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _0206653E
	mov r0, #0x14
	add r1, sp, #0
	mov r2, #1
	bl sub_02067D1C
_0206653E:
	cmp r4, #3
	bne _02066550
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x18]
	add r0, r5, #0
	blx r1
_02066550:
	ldr r0, [r5]
	add r0, r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020664D0

	thumb_func_start sub_02066558
sub_02066558: ; 0x02066558
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r3, #0
	add r0, #0xad
	strb r7, [r0]
	add r4, r1, #0
	ldr r1, [r5, #8]
	mov r0, #8
	orr r0, r1
	str r0, [r5, #8]
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xf4
	add r0, #0xb0
	str r1, [r0]
	ldr r0, [r5, #0x1c]
	add r6, r2, #0
	cmp r0, #0
	beq _0206658A
	add r0, r5, #0
	add r0, #0x90
	ldrb r0, [r0]
	str r0, [sp]
	b _0206658E
_0206658A:
	mov r0, #0
	str r0, [sp]
_0206658E:
	ldr r0, [sp]
	cmp r0, #1
	bne _020665BE
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _020665B2
	add r0, r5, #0
	add r0, #0x90
	ldrb r0, [r0]
	str r0, [sp]
	b _020665B6
_020665B2:
	mov r0, #0
	str r0, [sp]
_020665B6:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _020665C0
_020665BE:
	mov r0, #0
_020665C0:
	cmp r0, #0
	beq _020665C6
	b _020667A2
_020665C6:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _020665DE
	ldr r2, [r5, #8]
	mov r1, #0x80
	tst r1, r2
	bne _020665DE
	mov r1, #0x38
	mul r1, r7
	add r4, r0, r1
	b _0206679C
_020665DE:
	cmp r4, #0x20
	beq _020665E6
	cmp r4, #0x40
	bne _02066612
_020665E6:
	mov r1, #0x1f
	mov r2, #1
	and r1, r7
	lsl r2, r1
	lsr r1, r7, #5
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xbc
	ldr r1, [r1]
	tst r1, r2
	beq _02066612
	cmp r0, #0
	beq _02066608
	mov r1, #0x38
	mul r1, r7
	add r4, r0, r1
	b _0206679C
_02066608:
	mov r0, #0x38
	ldr r1, _02066860 ; =0x02143C74
	mul r0, r7
	add r4, r1, r0
	b _0206679C
_02066612:
	cmp r0, #0
	beq _0206663A
	add r3, r5, #0
	lsr r0, r7, #5
	lsl r2, r0, #2
	add r3, #0xbc
	mov r0, #0x1f
	ldr r4, [r3, r2]
	mov r1, #1
	and r0, r7
	lsl r1, r0
	add r0, r4, #0
	orr r0, r1
	str r0, [r3, r2]
	ldr r0, [r5, #4]
	ldr r1, [r0, #0x38]
	mov r0, #0x38
	mul r0, r7
	add r4, r1, r0
	b _02066664
_0206663A:
	cmp r4, #0x40
	bne _02066660
	add r3, r5, #0
	lsr r0, r7, #5
	lsl r2, r0, #2
	add r3, #0xbc
	mov r0, #0x1f
	ldr r4, [r3, r2]
	mov r1, #1
	and r0, r7
	lsl r1, r0
	add r0, r4, #0
	orr r0, r1
	str r0, [r3, r2]
	mov r0, #0x38
	ldr r1, _02066860 ; =0x02143C74
	mul r0, r7
	add r4, r1, r0
	b _02066664
_02066660:
	add r4, r5, #0
	add r4, #0xf4
_02066664:
	mov r0, #0
	str r0, [r4]
	add r0, r5, #0
	add r0, #0xd8
	ldr r1, [r0]
	cmp r1, #0
	beq _0206669C
	add r0, r1, #4
	beq _02066690
	ldrb r2, [r1, #5]
	cmp r7, r2
	bhs _02066690
	ldrh r3, [r1, #0xa]
	add r2, r0, r3
	ldrh r0, [r0, r3]
	add r2, r2, #4
	mov ip, r2
	add r2, r0, #0
	mul r2, r7
	mov r0, ip
	add r0, r0, r2
	b _02066692
_02066690:
	mov r0, #0
_02066692:
	cmp r0, #0
	beq _0206669C
	ldr r0, [r0]
	add r0, r1, r0
	b _0206669E
_0206669C:
	mov r0, #0
_0206669E:
	ldrh r1, [r0, #0x1e]
	mov r0, #0x20
	tst r1, r0
	beq _020666AC
	ldr r1, [r4]
	orr r0, r1
	str r0, [r4]
_020666AC:
	ldrh r0, [r6, #0x1e]
	ldr r3, _02066864 ; =0x02143A8C
	asr r0, r0, #6
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1b
	ldr r0, _02066868 ; =0x02094414
	ldr r2, [r3, #0x14]
	ldr r0, [r0, r1]
	ldr r1, [r6, #4]
	bic r2, r0
	and r0, r1
	orr r0, r2
	str r0, [r4, #4]
	ldrh r0, [r6, #0x1e]
	ldr r2, [r3, #0x18]
	asr r0, r0, #9
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1b
	ldr r0, _02066868 ; =0x02094414
	ldr r0, [r0, r1]
	ldr r1, [r6, #8]
	bic r2, r0
	and r0, r1
	orr r0, r2
	str r0, [r4, #8]
	ldr r1, [r6, #0x10]
	ldr r2, [r3, #0x1c]
	mvn r0, r1
	and r0, r2
	ldr r2, [r6, #0xc]
	mov r3, #1
	and r1, r2
	orr r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r6, #0x14]
	str r0, [r4, #0x10]
	ldrh r0, [r6, #0x1c]
	str r0, [r4, #0x14]
	ldrh r1, [r6, #0x1e]
	add r0, r1, #0
	tst r0, r3
	beq _0206675E
	add r2, r6, #0
	mov r0, #2
	add r2, #0x2c
	tst r0, r1
	bne _02066716
	ldr r0, [r2]
	str r0, [r4, #0x18]
	ldr r0, [r2, #4]
	add r2, #8
	str r0, [r4, #0x1c]
	b _0206671C
_02066716:
	ldr r0, [r4]
	orr r0, r3
	str r0, [r4]
_0206671C:
	ldrh r1, [r6, #0x1e]
	mov r0, #4
	tst r0, r1
	bne _02066734
	mov r0, #0
	ldrsh r0, [r2, r0]
	strh r0, [r4, #0x20]
	mov r0, #2
	ldrsh r0, [r2, r0]
	add r2, r2, #4
	strh r0, [r4, #0x22]
	b _0206673C
_02066734:
	ldr r1, [r4]
	mov r0, #2
	orr r0, r1
	str r0, [r4]
_0206673C:
	ldrh r1, [r6, #0x1e]
	mov r0, #8
	tst r0, r1
	bne _0206674E
	ldr r0, [r2]
	str r0, [r4, #0x24]
	ldr r0, [r2, #4]
	str r0, [r4, #0x28]
	b _02066756
_0206674E:
	ldr r1, [r4]
	mov r0, #4
	orr r0, r1
	str r0, [r4]
_02066756:
	ldr r1, [r4]
	mov r0, #8
	orr r0, r1
	str r0, [r4]
_0206675E:
	ldr r3, [r5, #4]
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _02066784
	mov r0, #0x1f
	and r0, r7
	mov r1, #1
	lsl r1, r0
	lsr r0, r7, #5
	lsl r0, r0, #2
	add r0, r3, r0
	ldr r0, [r0, #0x3c]
	tst r0, r1
	beq _02066784
	ldr r3, [r3, #0xc]
	add r1, r2, #0
	add r0, r4, #0
	add r2, r7, #0
	blx r3
_02066784:
	ldr r1, [r4]
	mov r0, #0x18
	tst r0, r1
	beq _0206679C
	ldrh r0, [r6, #0x20]
	strh r0, [r4, #0x2c]
	ldrh r0, [r6, #0x22]
	strh r0, [r4, #0x2e]
	ldr r0, [r6, #0x24]
	str r0, [r4, #0x30]
	ldr r0, [r6, #0x28]
	str r0, [r4, #0x34]
_0206679C:
	add r0, r5, #0
	add r0, #0xb0
	str r4, [r0]
_020667A2:
	ldr r0, [sp]
	cmp r0, #2
	bne _020667D2
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _020667C6
	add r0, r5, #0
	add r0, #0x90
	ldrb r0, [r0]
	str r0, [sp]
	b _020667CA
_020667C6:
	mov r0, #0
	str r0, [sp]
_020667CA:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _020667D4
_020667D2:
	mov r0, #0
_020667D4:
	cmp r0, #0
	bne _02066846
	add r0, r5, #0
	add r0, #0xb0
	ldr r4, [r0]
	mov r1, #0x1f
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x10
	tst r1, r0
	beq _0206683E
	ldr r2, [r4]
	mov r1, #0x20
	tst r1, r2
	beq _020667F6
	ldr r1, _0206686C ; =0xFFE0FFFF
	and r0, r1
	str r0, [r4, #0xc]
_020667F6:
	ldr r1, [r5, #8]
	mov r0, #2
	bic r1, r0
	mov r0, #1
	lsl r0, r0, #8
	str r1, [r5, #8]
	tst r0, r1
	bne _02066846
	ldr r0, _02066870 ; =0x00293130
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r4, #4]
	str r1, [sp, #8]
	ldr r1, [r4, #8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _02066874 ; =0x00002B2A
	str r1, [sp, #0x14]
	ldr r1, [r4, #0x10]
	str r1, [sp, #0x18]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0x1c]
	add r1, sp, #8
	bl sub_02067D1C
	ldr r1, [r4]
	mov r0, #0x18
	tst r0, r1
	beq _02066846
	add r1, r5, #0
	add r1, #0xf0
	ldr r1, [r1]
	add r0, r4, #0
	blx r1
	b _02066846
_0206683E:
	ldr r1, [r5, #8]
	mov r0, #2
	orr r0, r1
	str r0, [r5, #8]
_02066846:
	ldr r0, [sp]
	cmp r0, #3
	bne _0206685A
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	blx r1
_0206685A:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02066860: .word 0x02143C74
_02066864: .word 0x02143A8C
_02066868: .word 0x02094414
_0206686C: .word 0xFFE0FFFF
_02066870: .word 0x00293130
_02066874: .word 0x00002B2A
	thumb_func_end sub_02066558

	thumb_func_start sub_02066878
sub_02066878: ; 0x02066878
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r2, #2
	ldr r0, [r4, #8]
	lsl r2, r2, #8
	tst r2, r0
	bne _020668DE
	ldr r2, [r4]
	ldrb r3, [r2, #1]
	mov r2, #1
	tst r2, r0
	bne _020668A0
	mov r2, #8
	tst r0, r2
	beq _020668A0
	add r0, r4, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r3, r0
	beq _020668DE
_020668A0:
	add r0, r4, #0
	add r0, #0xd8
	ldr r5, [r0]
	cmp r5, #0
	beq _020668D0
	add r2, r5, #4
	beq _020668C4
	ldrb r0, [r5, #5]
	cmp r3, r0
	bhs _020668C4
	ldrh r6, [r5, #0xa]
	add r0, r2, r6
	ldrh r2, [r2, r6]
	add r0, r0, #4
	add r6, r2, #0
	mul r6, r3
	add r0, r0, r6
	b _020668C6
_020668C4:
	mov r0, #0
_020668C6:
	cmp r0, #0
	beq _020668D0
	ldr r0, [r0]
	add r2, r5, r0
	b _020668D2
_020668D0:
	mov r2, #0
_020668D2:
	ldrh r5, [r2]
	add r0, r4, #0
	lsl r6, r5, #2
	ldr r5, _020668E8 ; =0x0209B330
	ldr r5, [r5, r6]
	blx r5
_020668DE:
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_020668E8: .word 0x0209B330
	thumb_func_end sub_02066878

	thumb_func_start sub_020668EC
sub_020668EC: ; 0x020668EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r2, #0
	cmp r0, #0
	beq _02066900
	add r0, r5, #0
	add r0, #0x91
	ldrb r4, [r0]
	b _02066902
_02066900:
	mov r4, #0
_02066902:
	cmp r4, #1
	bne _0206692C
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02066922
	add r0, r5, #0
	add r0, #0x91
	ldrb r4, [r0]
	b _02066924
_02066922:
	mov r4, #0
_02066924:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _0206692E
_0206692C:
	mov r0, #0
_0206692E:
	cmp r0, #0
	bne _02066946
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02066946
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	add r0, r6, r0
	bl sub_02067BEC
_02066946:
	cmp r4, #2
	bne _02066968
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02066966
	add r0, r5, #0
	add r0, #0x91
	ldrb r4, [r0]
	b _02066968
_02066966:
	mov r4, #0
_02066968:
	cmp r4, #3
	bne _0206697A
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	add r0, r5, #0
	blx r1
_0206697A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020668EC

	thumb_func_start sub_0206697C
sub_0206697C: ; 0x0206697C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r2, #2
	ldr r0, [r4, #8]
	lsl r2, r2, #8
	tst r2, r0
	bne _020669D6
	mov r2, #1
	tst r2, r0
	beq _020669D6
	mov r2, #2
	tst r0, r2
	bne _020669D6
	ldr r0, [r4]
	ldrb r3, [r0, #1]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	beq _020669C8
	beq _020669BC
	ldrb r2, [r0, #1]
	cmp r3, r2
	bhs _020669BC
	ldrh r2, [r0, #6]
	add r5, r0, r2
	ldrh r2, [r0, r2]
	add r6, r5, #4
	add r5, r2, #0
	mul r5, r3
	add r2, r6, r5
	b _020669BE
_020669BC:
	mov r2, #0
_020669BE:
	cmp r2, #0
	beq _020669C8
	ldr r2, [r2]
	add r2, r0, r2
	b _020669CA
_020669C8:
	mov r2, #0
_020669CA:
	ldrh r5, [r2]
	add r0, r4, #0
	lsl r6, r5, #2
	ldr r5, _020669E0 ; =0x0209B340
	ldr r5, [r5, r6]
	blx r5
_020669D6:
	ldr r0, [r4]
	add r0, r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_020669E0: .word 0x0209B340
	thumb_func_end sub_0206697C

	thumb_func_start sub_020669E4
sub_020669E4: ; 0x020669E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #4
	str r0, [sp, #0x14]
	ldr r0, [r5]
	str r1, [sp]
	ldrb r6, [r0, #1]
	add r0, r5, #0
	add r0, #0xae
	strb r6, [r0]
	ldr r0, [r5, #8]
	mov r1, #0x10
	orr r0, r1
	lsl r1, r1, #6
	str r0, [r5, #8]
	tst r1, r0
	beq _02066A4C
	ldr r1, [sp]
	cmp r1, #0x40
	beq _02066A12
	cmp r1, #0x60
	bne _02066A18
_02066A12:
	ldr r1, [sp, #0x14]
	add r1, r1, #1
	str r1, [sp, #0x14]
_02066A18:
	ldr r1, [sp]
	cmp r1, #0x20
	beq _02066A22
	cmp r1, #0x60
	bne _02066A40
_02066A22:
	ldr r1, [sp, #0x14]
	add r1, r1, #1
	str r1, [sp, #0x14]
	mov r1, #1
	lsl r1, r1, #8
	tst r0, r1
	bne _02066A40
	ldr r0, [r5]
	add r1, sp, #0x20
	ldrb r0, [r0, #4]
	mov r2, #1
	str r0, [sp, #0x20]
	mov r0, #0x14
	bl sub_02067D1C
_02066A40:
	ldr r0, [sp, #0x14]
	ldr r1, [r5]
	add sp, #0x24
	add r0, r1, r0
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_02066A4C:
	ldr r0, [sp]
	cmp r0, #0x40
	beq _02066A56
	cmp r0, #0x60
	bne _02066A82
_02066A56:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp]
	cmp r0, #0x40
	ldr r0, [r5]
	bne _02066A6A
	ldrb r0, [r0, #4]
	str r0, [sp, #0x1c]
	b _02066A6E
_02066A6A:
	ldrb r0, [r0, #5]
	str r0, [sp, #0x1c]
_02066A6E:
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02066A82
	mov r0, #0x14
	add r1, sp, #0x1c
	mov r2, #1
	bl sub_02067D1C
_02066A82:
	mov r0, #0x4b
	lsl r0, r0, #2
	add r1, r5, r0
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _02066A9E
	add r0, r5, #0
	add r0, #0x92
	ldrb r0, [r0]
	str r0, [sp, #4]
	b _02066AA2
_02066A9E:
	mov r0, #0
	str r0, [sp, #4]
_02066AA2:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02066AD2
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _02066AC6
	add r0, r5, #0
	add r0, #0x92
	ldrb r0, [r0]
	str r0, [sp, #4]
	b _02066ACA
_02066AC6:
	mov r0, #0
	str r0, [sp, #4]
_02066ACA:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066AD4
_02066AD2:
	mov r0, #0
_02066AD4:
	cmp r0, #0
	beq _02066ADA
	b _02066C58
_02066ADA:
	ldr r0, [r5, #4]
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _02066AF8
	mov r0, #0x58
	mul r0, r6
	add r4, r1, r0
	ldr r1, [r5, #8]
	mov r0, #0x80
	tst r0, r1
	bne _02066AF4
	mov r1, #1
	b _02066B00
_02066AF4:
	mov r1, #0
	b _02066B00
_02066AF8:
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0
	add r4, r5, r0
_02066B00:
	cmp r1, #0
	bne _02066B1C
	mov r0, #0
	str r0, [r4]
	ldr r3, [r5, #4]
	ldr r1, [r3, #0x10]
	cmp r1, #0
	beq _02066B1E
	ldr r3, [r3, #0x14]
	add r0, r4, #0
	add r2, r6, #0
	blx r3
	cmp r0, #0
	beq _02066B1E
_02066B1C:
	b _02066C52
_02066B1E:
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _02066B4C
	beq _02066B40
	ldrb r1, [r0, #1]
	cmp r6, r1
	bhs _02066B40
	ldrh r1, [r0, #6]
	add r2, r0, r1
	ldrh r1, [r0, r1]
	add r3, r2, #4
	add r2, r1, #0
	mul r2, r6
	add r1, r3, r2
	b _02066B42
_02066B40:
	mov r1, #0
_02066B42:
	cmp r1, #0
	beq _02066B4C
	ldr r1, [r1]
	add r7, r0, r1
	b _02066B4E
_02066B4C:
	mov r7, #0
_02066B4E:
	ldrh r1, [r7]
	mov r0, #1
	add r6, r7, #4
	tst r0, r1
	beq _02066B62
	ldr r1, [r4]
	mov r0, #4
	orr r0, r1
	str r0, [r4]
	b _02066B70
_02066B62:
	ldr r0, [r6]
	str r0, [r4, #0x4c]
	ldr r0, [r6, #4]
	str r0, [r4, #0x50]
	ldr r0, [r6, #8]
	add r6, #0xc
	str r0, [r4, #0x54]
_02066B70:
	ldrh r2, [r7]
	mov r0, #2
	add r1, r2, #0
	tst r1, r0
	beq _02066B82
	ldr r1, [r4]
	orr r0, r1
	str r0, [r4]
	b _02066C42
_02066B82:
	mov r3, #8
	add r1, r2, #0
	tst r1, r3
	beq _02066C10
	ldrsh r0, [r6, r0]
	mov r1, #0
	ldrsh r1, [r6, r1]
	str r0, [sp, #0xc]
	mov r0, #0xf0
	and r0, r2
	asr r0, r0, #4
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x28
	str r1, [sp, #8]
	bl sub_02079084
	mov r0, #1
	ldrh r1, [r7]
	lsl r0, r0, #8
	tst r1, r0
	beq _02066BB2
	ldr r1, _02066D04 ; =0xFFFFF000
	b _02066BB4
_02066BB2:
	lsl r1, r0, #4
_02066BB4:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #2
	add r2, r4, r0
	str r1, [r2, #0x28]
	ldr r1, _02066D08 ; =0x02094434
	ldrb r1, [r1, r0]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, [sp, #8]
	str r1, [r2, #0x28]
	ldr r1, _02066D0C ; =0x02094435
	ldrb r1, [r1, r0]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, [sp, #0xc]
	str r1, [r2, #0x28]
	mov r1, #2
	ldrh r2, [r7]
	lsl r1, r1, #8
	tst r1, r2
	beq _02066BE4
	ldr r1, [sp, #0xc]
	neg r1, r1
	str r1, [sp, #0xc]
_02066BE4:
	ldr r1, _02066D10 ; =0x02094436
	ldrb r1, [r1, r0]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, [sp, #0xc]
	str r1, [r2, #0x28]
	mov r1, #1
	ldrh r2, [r7]
	lsl r1, r1, #0xa
	tst r1, r2
	beq _02066C00
	ldr r1, [sp, #8]
	neg r1, r1
	str r1, [sp, #8]
_02066C00:
	ldr r1, _02066D14 ; =0x02094437
	add r6, r6, #4
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [sp, #8]
	str r0, [r1, #0x28]
	b _02066C42
_02066C10:
	ldrsh r1, [r7, r0]
	str r1, [r4, #0x28]
	mov r1, #0
	ldrsh r1, [r6, r1]
	str r1, [r4, #0x2c]
	ldrsh r0, [r6, r0]
	str r0, [r4, #0x30]
	mov r0, #4
	ldrsh r0, [r6, r0]
	str r0, [r4, #0x34]
	mov r0, #6
	ldrsh r0, [r6, r0]
	str r0, [r4, #0x38]
	ldrsh r0, [r6, r3]
	str r0, [r4, #0x3c]
	mov r0, #0xa
	ldrsh r0, [r6, r0]
	str r0, [r4, #0x40]
	mov r0, #0xc
	ldrsh r0, [r6, r0]
	str r0, [r4, #0x44]
	mov r0, #0xe
	ldrsh r0, [r6, r0]
	add r6, #0x10
	str r0, [r4, #0x48]
_02066C42:
	add r1, r6, #0
	add r6, r5, #0
	add r6, #0xe8
	ldrh r3, [r7]
	ldr r2, [r5]
	ldr r6, [r6]
	add r0, r4, #0
	blx r6
_02066C52:
	add r0, r5, #0
	add r0, #0xb4
	str r4, [r0]
_02066C58:
	ldr r0, [sp, #4]
	cmp r0, #2
	bne _02066C88
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _02066C7C
	add r0, r5, #0
	add r0, #0x92
	ldrb r0, [r0]
	str r0, [sp, #4]
	b _02066C80
_02066C7C:
	mov r0, #0
	str r0, [sp, #4]
_02066C80:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066C8A
_02066C88:
	mov r0, #0
_02066C8A:
	cmp r0, #0
	bne _02066CA6
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02066CA6
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xb4
	add r1, #0xec
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
_02066CA6:
	add r1, r5, #0
	mov r0, #0
	add r1, #0xb4
	str r0, [r1]
	ldr r1, [sp, #4]
	cmp r1, #3
	bne _02066CC8
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
_02066CC8:
	ldr r1, [sp]
	cmp r1, #0x20
	beq _02066CD2
	cmp r1, #0x60
	bne _02066CF6
_02066CD2:
	ldr r1, [sp, #0x14]
	add r1, r1, #1
	str r1, [sp, #0x14]
	cmp r0, #0
	bne _02066CF6
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02066CF6
	ldr r0, [r5]
	add r1, sp, #0x18
	ldrb r0, [r0, #4]
	mov r2, #1
	str r0, [sp, #0x18]
	mov r0, #0x13
	bl sub_02067D1C
_02066CF6:
	ldr r1, [r5]
	ldr r0, [sp, #0x14]
	add r0, r1, r0
	str r0, [r5]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02066D04: .word 0xFFFFF000
_02066D08: .word 0x02094434
_02066D0C: .word 0x02094435
_02066D10: .word 0x02094436
_02066D14: .word 0x02094437
	thumb_func_end sub_020669E4

	thumb_func_start sub_02066D18
sub_02066D18: ; 0x02066D18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #2
	ldr r1, [r5, #8]
	lsl r0, r6, #8
	tst r0, r1
	beq _02066D48
	cmp r4, #0x40
	beq _02066D32
	cmp r4, #0x60
	bne _02066D34
_02066D32:
	add r6, r6, #1
_02066D34:
	cmp r4, #0x20
	beq _02066D3C
	cmp r4, #0x60
	bne _02066D3E
_02066D3C:
	add r6, r6, #1
_02066D3E:
	ldr r0, [r5]
	add sp, #0xc8
	add r0, r0, r6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02066D48:
	cmp r4, #0x40
	beq _02066D50
	cmp r4, #0x60
	bne _02066D74
_02066D50:
	mov r0, #1
	lsl r0, r0, #8
	add r6, r6, #1
	tst r0, r1
	bne _02066D74
	cmp r4, #0x40
	ldr r0, [r5]
	bne _02066D66
	ldrb r0, [r0, #2]
	str r0, [sp, #4]
	b _02066D6A
_02066D66:
	ldrb r0, [r0, #3]
	str r0, [sp, #4]
_02066D6A:
	mov r0, #0x14
	add r1, sp, #4
	mov r2, #1
	bl sub_02067D1C
_02066D74:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _02066D82
	add r0, r5, #0
	add r0, #0x93
	ldrb r7, [r0]
	b _02066D84
_02066D82:
	mov r7, #0
_02066D84:
	cmp r7, #1
	bne _02066DAE
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _02066DA4
	add r0, r5, #0
	add r0, #0x93
	ldrb r7, [r0]
	b _02066DA6
_02066DA4:
	mov r7, #0
_02066DA6:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066DB0
_02066DAE:
	mov r0, #0
_02066DB0:
	mov r1, #1
	ldr r2, [r5, #8]
	lsl r1, r1, #8
	tst r1, r2
	bne _02066EA8
	cmp r0, #0
	bne _02066EA8
	bl sub_02067B9C
	ldr r0, _02066EF8 ; =0x00151110
	ldr r1, _02066EFC ; =0x04000400
	str r0, [r1]
	mov r0, #0
	str r0, [r1]
	str r0, [r1]
_02066DCE:
	add r0, sp, #0x88
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _02066DCE
	ldr r0, _02066F00 ; =0x02143A8C
	mov r1, #1
	ldr r0, [r0, #0x7c]
	tst r1, r0
	beq _02066DF8
	bl sub_02065B7C
	add r1, sp, #0x48
	blx MTX_Copy43To44_
	add r0, sp, #0x88
	add r1, sp, #0x48
	add r2, r0, #0
	blx MTX_Concat44
	b _02066E10
_02066DF8:
	mov r1, #2
	tst r0, r1
	beq _02066E10
	ldr r0, _02066F04 ; =0x02143A58
	add r1, sp, #8
	blx MTX_Copy43To44_
	add r0, sp, #0x88
	add r1, sp, #8
	add r2, r0, #0
	blx MTX_Concat44
_02066E10:
	ldr r1, [sp, #0xb8]
	ldr r0, _02066F08 ; =0x0209B3C0
	str r1, [r0]
	ldr r1, [sp, #0xbc]
	str r1, [r0, #4]
	ldr r1, [sp, #0xc0]
	str r1, [r0, #8]
	add r0, sp, #0x88
	blx VEC_Mag
	ldr r1, _02066F0C ; =0x0209B3CC
	str r0, [r1]
	add r0, sp, #0x98
	blx VEC_Mag
	ldr r1, _02066F0C ; =0x0209B3CC
	str r0, [r1, #4]
	add r0, sp, #0xa8
	blx VEC_Mag
	ldr r1, _02066F0C ; =0x0209B3CC
	str r0, [r1, #8]
	ldr r0, _02066F00 ; =0x02143A8C
	mov r1, #1
	ldr r0, [r0, #0x7c]
	tst r1, r0
	beq _02066E70
	ldr r0, _02066F10 ; =0x00171012
	ldr r1, _02066EFC ; =0x04000400
	mov r2, #8
	str r0, [r1]
	ldr r0, _02066F14 ; =0x0209B394
	blx sub_02078684
	bl sub_02065BA4
	ldr r1, _02066EFC ; =0x04000400
	mov r2, #0x30
	blx sub_02078684
	ldr r0, _02066F18 ; =0x00001B19
	ldr r1, _02066EFC ; =0x04000400
	mov r2, #0x3c
	str r0, [r1]
	ldr r0, _02066F1C ; =0x0209B39C
	blx sub_02078684
	b _02066EA8
_02066E70:
	mov r1, #2
	tst r0, r1
	ldr r1, _02066EFC ; =0x04000400
	beq _02066EA0
	ldr r0, _02066F10 ; =0x00171012
	mov r2, #8
	str r0, [r1]
	ldr r0, _02066F14 ; =0x0209B394
	blx sub_02078684
	bl sub_0206596C
	ldr r1, _02066EFC ; =0x04000400
	mov r2, #0x30
	blx sub_02078684
	ldr r0, _02066F18 ; =0x00001B19
	ldr r1, _02066EFC ; =0x04000400
	mov r2, #0x3c
	str r0, [r1]
	ldr r0, _02066F1C ; =0x0209B39C
	blx sub_02078684
	b _02066EA8
_02066EA0:
	ldr r0, _02066F20 ; =0x0209B390
	mov r2, #0x48
	blx sub_02078684
_02066EA8:
	cmp r7, #3
	bne _02066EC2
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066EC4
_02066EC2:
	mov r0, #0
_02066EC4:
	cmp r4, #0x20
	beq _02066ECC
	cmp r4, #0x60
	bne _02066EEC
_02066ECC:
	add r6, r6, #1
	cmp r0, #0
	bne _02066EEC
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02066EEC
	ldr r0, [r5]
	add r1, sp, #0
	ldrb r0, [r0, #2]
	mov r2, #1
	str r0, [sp]
	mov r0, #0x13
	bl sub_02067D1C
_02066EEC:
	ldr r0, [r5]
	add r0, r0, r6
	str r0, [r5]
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02066EF8: .word 0x00151110
_02066EFC: .word 0x04000400
_02066F00: .word 0x02143A8C
_02066F04: .word 0x02143A58
_02066F08: .word 0x0209B3C0
_02066F0C: .word 0x0209B3CC
_02066F10: .word 0x00171012
_02066F14: .word 0x0209B394
_02066F18: .word 0x00001B19
_02066F1C: .word 0x0209B39C
_02066F20: .word 0x0209B390
	thumb_func_end sub_02066D18

	thumb_func_start sub_02066F24
sub_02066F24: ; 0x02066F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	add r5, r0, #0
	mov r6, #2
	add r4, r1, #0
	ldr r0, [r5, #8]
	lsl r1, r6, #8
	ldr r7, _02067158 ; =0x0209B3E4
	tst r1, r0
	beq _02066F56
	cmp r4, #0x40
	beq _02066F40
	cmp r4, #0x60
	bne _02066F42
_02066F40:
	add r6, r6, #1
_02066F42:
	cmp r4, #0x20
	beq _02066F4A
	cmp r4, #0x60
	bne _02066F4C
_02066F4A:
	add r6, r6, #1
_02066F4C:
	ldr r0, [r5]
	add sp, #0xd0
	add r0, r0, r6
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02066F56:
	cmp r4, #0x40
	beq _02066F5E
	cmp r4, #0x60
	bne _02066F82
_02066F5E:
	mov r1, #1
	lsl r1, r1, #8
	add r6, r6, #1
	tst r0, r1
	bne _02066F82
	cmp r4, #0x40
	ldr r0, [r5]
	bne _02066F74
	ldrb r0, [r0, #2]
	str r0, [sp, #0xc]
	b _02066F78
_02066F74:
	ldrb r0, [r0, #3]
	str r0, [sp, #0xc]
_02066F78:
	mov r0, #0x14
	add r1, sp, #0xc
	mov r2, #1
	bl sub_02067D1C
_02066F82:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _02066F92
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	str r0, [sp]
	b _02066F96
_02066F92:
	mov r0, #0
	str r0, [sp]
_02066F96:
	ldr r0, [sp]
	cmp r0, #1
	bne _02066FC6
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _02066FBA
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	str r0, [sp]
	b _02066FBE
_02066FBA:
	mov r0, #0
	str r0, [sp]
_02066FBE:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02066FC8
_02066FC6:
	mov r0, #0
_02066FC8:
	mov r1, #1
	ldr r2, [r5, #8]
	lsl r1, r1, #8
	tst r1, r2
	bne _02066FD6
	cmp r0, #0
	beq _02066FD8
_02066FD6:
	b _02067106
_02066FD8:
	bl sub_02067B9C
	ldr r0, _0206715C ; =0x00151110
	ldr r1, _02067160 ; =0x04000400
	str r0, [r1]
	mov r0, #0
	str r0, [r1]
	str r0, [r1]
_02066FE8:
	add r0, sp, #0x90
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _02066FE8
	ldr r0, _02067164 ; =0x02143A8C
	mov r1, #1
	ldr r0, [r0, #0x7c]
	tst r1, r0
	beq _02067012
	bl sub_02065B7C
	add r1, sp, #0x50
	blx MTX_Copy43To44_
	add r0, sp, #0x90
	add r1, sp, #0x50
	add r2, r0, #0
	blx MTX_Concat44
	b _0206702A
_02067012:
	mov r1, #2
	tst r0, r1
	beq _0206702A
	ldr r0, _02067168 ; =0x02143A58
	add r1, sp, #0x10
	blx MTX_Copy43To44_
	add r0, sp, #0x90
	add r1, sp, #0x10
	add r2, r0, #0
	blx MTX_Concat44
_0206702A:
	ldr r1, [sp, #0xc0]
	ldr r0, _0206716C ; =0x0209B408
	str r1, [r0]
	ldr r1, [sp, #0xc4]
	str r1, [r0, #4]
	ldr r1, [sp, #0xc8]
	str r1, [r0, #8]
	add r0, sp, #0x90
	blx VEC_Mag
	ldr r1, _02067170 ; =0x0209B414
	str r0, [r1]
	add r0, sp, #0xa0
	blx VEC_Mag
	ldr r1, _02067170 ; =0x0209B414
	str r0, [r1, #4]
	add r0, sp, #0xb0
	blx VEC_Mag
	ldr r1, _02067170 ; =0x0209B414
	ldr r2, [sp, #0xa0]
	str r0, [r1, #8]
	add r0, r7, #0
	str r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	str r2, [r7, #0xc]
	ldr r0, [sp, #0xa4]
	ldr r2, [sp, #4]
	ldr r1, [sp, #0xa8]
	str r0, [r2, #4]
	add r0, r2, #0
	str r1, [r0, #8]
	ldr r0, [r7, #0xc]
	neg r1, r0
	add r0, r2, #0
	ldr r0, [r0, #4]
	str r0, [r7]
	str r1, [r7, #4]
	mov r0, #0
	str r0, [r7, #8]
	add r0, r7, #0
	add r1, r7, #0
	blx VEC_Normalize
	ldr r0, [sp, #4]
	add r1, r0, #0
	blx VEC_Normalize
	add r0, r7, #0
	add r7, #0x18
	ldr r1, [sp, #4]
	add r2, r7, #0
	blx VEC_CrossProduct
	ldr r0, _02067164 ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #1
	tst r0, r1
	beq _020670CE
	ldr r0, _02067174 ; =0x00171012
	ldr r1, _02067160 ; =0x04000400
	mov r2, #8
	str r0, [r1]
	ldr r0, _02067178 ; =0x0209B3DC
	blx sub_02078684
	bl sub_02065BA4
	ldr r1, _02067160 ; =0x04000400
	mov r2, #0x30
	blx sub_02078684
	ldr r0, _0206717C ; =0x00001B19
	ldr r1, _02067160 ; =0x04000400
	mov r2, #0x3c
	str r0, [r1]
	ldr r0, _02067158 ; =0x0209B3E4
	blx sub_02078684
	b _02067106
_020670CE:
	mov r0, #2
	tst r0, r1
	ldr r1, _02067160 ; =0x04000400
	beq _020670FE
	ldr r0, _02067174 ; =0x00171012
	mov r2, #8
	str r0, [r1]
	ldr r0, _02067178 ; =0x0209B3DC
	blx sub_02078684
	bl sub_0206596C
	ldr r1, _02067160 ; =0x04000400
	mov r2, #0x30
	blx sub_02078684
	ldr r0, _0206717C ; =0x00001B19
	ldr r1, _02067160 ; =0x04000400
	mov r2, #0x3c
	str r0, [r1]
	ldr r0, _02067158 ; =0x0209B3E4
	blx sub_02078684
	b _02067106
_020670FE:
	ldr r0, _02067180 ; =0x0209B3D8
	mov r2, #0x48
	blx sub_02078684
_02067106:
	ldr r0, [sp]
	cmp r0, #3
	bne _02067122
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02067124
_02067122:
	mov r0, #0
_02067124:
	cmp r4, #0x20
	beq _0206712C
	cmp r4, #0x60
	bne _0206714C
_0206712C:
	add r6, r6, #1
	cmp r0, #0
	bne _0206714C
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _0206714C
	ldr r0, [r5]
	add r1, sp, #8
	ldrb r0, [r0, #2]
	mov r2, #1
	str r0, [sp, #8]
	mov r0, #0x13
	bl sub_02067D1C
_0206714C:
	ldr r0, [r5]
	add r0, r0, r6
	str r0, [r5]
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02067158: .word 0x0209B3E4
_0206715C: .word 0x00151110
_02067160: .word 0x04000400
_02067164: .word 0x02143A8C
_02067168: .word 0x02143A58
_0206716C: .word 0x0209B408
_02067170: .word 0x0209B414
_02067174: .word 0x00171012
_02067178: .word 0x0209B3DC
_0206717C: .word 0x00001B19
_02067180: .word 0x0209B3D8
	thumb_func_end sub_02066F24

	thumb_func_start sub_02067184
sub_02067184: ; 0x02067184
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp]
	ldr r0, [r0, #4]
	mov r6, #0
	ldr r1, [r0, #4]
	mov r2, #0x54
	ldr r0, [r1, #0x10]
	add r4, r6, #0
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	str r0, [sp, #0x18]
	add r0, r1, #3
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, sp, #0x20
	blx sub_0207869C
	bl sub_02067B9C
	add r0, r6, #0
	str r0, [sp, #0x10]
	ldr r0, _02067474 ; =0x04000440
	ldr r1, [sp, #0x10]
	str r1, [r0]
	mov r1, #1
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x14]
	mov r1, #2
	str r1, [r0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bhi _020671D0
	b _020674AA
_020671D0:
	ldr r0, [sp, #0x14]
	mov r2, #0x1f
	ldrb r0, [r0, #1]
	mov r3, #0x64
	str r0, [sp, #0xc]
	lsr r0, r0, #5
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	and r2, r0
	mov r0, #1
	lsl r0, r2
	ldr r2, [sp]
	add r2, r2, r1
	add r2, #0xcc
	ldr r2, [r2]
	and r2, r0
	str r2, [sp, #8]
	ldr r2, [sp, #0xc]
	mul r3, r2
	str r3, [sp, #4]
	ldr r3, _02067478 ; =0x02145074
	ldr r2, [sp, #4]
	add r5, r3, r2
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _02067232
	ldr r2, [sp]
	add r2, r2, r1
	add r2, #0xcc
	ldr r2, [r2]
	orr r0, r2
	ldr r2, [sp]
	add r1, r2, r1
	add r1, #0xcc
	str r0, [r1]
	ldr r0, [sp, #0x14]
	ldr r1, _0206747C ; =0x04000450
	ldrb r0, [r0]
	str r0, [r1]
	sub r1, #0x10
	mov r0, #1
	str r0, [r1]
	ldr r0, [sp, #0xc]
	mov r1, #0x54
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	bl G3_MultMtx43
_02067232:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02067320
	ldr r2, [r7]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x50]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #4]
	str r0, [sp, #0x50]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x54]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #8]
	str r0, [sp, #0x54]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x58]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #0xc]
	str r0, [sp, #0x58]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x5c]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #0x10]
	str r0, [sp, #0x5c]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x60]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #0x14]
	str r0, [sp, #0x60]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x64]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #0x18]
	str r0, [sp, #0x64]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x68]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #0x1c]
	str r0, [sp, #0x68]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	add r2, r0, #0
	ldr r0, [sp, #0x6c]
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	add r0, r0, r2
	ldr r2, [r7, #0x20]
	str r0, [sp, #0x6c]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x70]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	str r0, [sp, #0x70]
_02067320:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02067346
_02067326:
	add r0, r5, #0
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _02067326
	ldr r0, _02067474 ; =0x04000440
	mov r1, #2
	str r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x54
	mul r1, r0
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	add r0, #0x30
	bl G3_MultMtx33
_02067346:
	ldr r0, [sp, #0x14]
	ldr r2, [r5]
	ldrb r0, [r0, #2]
	asr r3, r2, #0x1f
	lsl r6, r0, #4
	asr r4, r6, #0x1f
	add r0, r6, #0
	add r1, r4, #0
	blx sub_0208D60C
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #4]
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x24]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #8]
	str r0, [sp, #0x24]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x28]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x10]
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x2c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x14]
	str r0, [sp, #0x2c]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x30]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x18]
	str r0, [sp, #0x30]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x34]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	str r0, [sp, #0x34]
	ldr r2, [r5, #0x20]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x38]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x24]
	str r0, [sp, #0x38]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x28]
	str r0, [sp, #0x3c]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x40]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x30]
	str r0, [sp, #0x40]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x44]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x34]
	str r0, [sp, #0x44]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x48]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r5, #0x38]
	str r0, [sp, #0x48]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x4c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x14]
	ldr r1, _02067480 ; =0x021450B4
	b _02067484
	.align 2, 0
_02067474: .word 0x04000440
_02067478: .word 0x02145074
_0206747C: .word 0x04000450
_02067480: .word 0x021450B4
_02067484:
	add r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	add r7, r1, r0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0206749C
_02067492:
	add r0, r7, #0
	bl G3X_GetVectorMtx
	cmp r0, #0
	bne _02067492
_0206749C:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	bhs _020674AA
	b _020671D0
_020674AA:
	ldr r2, [r7]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x50]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #4]
	str r0, [sp, #0x50]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x54]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #8]
	str r0, [sp, #0x54]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x58]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #0xc]
	str r0, [sp, #0x58]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x5c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #0x10]
	str r0, [sp, #0x5c]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x60]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #0x14]
	str r0, [sp, #0x60]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x64]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #0x18]
	str r0, [sp, #0x64]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x68]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #0x1c]
	str r0, [sp, #0x68]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x6c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	ldr r2, [r7, #0x20]
	str r0, [sp, #0x6c]
	add r0, r6, #0
	add r1, r4, #0
	asr r3, r2, #0x1f
	blx sub_0208D60C
	ldr r2, [sp, #0x70]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r0, r2, r0
	str r0, [sp, #0x70]
	add r0, sp, #0x50
	bl G3_LoadMtx43
	ldr r0, _020675C0 ; =0x04000440
	mov r1, #1
	str r1, [r0]
	add r0, sp, #0x20
	bl G3_LoadMtx43
	ldr r1, _020675C0 ; =0x04000440
	mov r0, #0
	str r0, [r1]
	mov r0, #1
	str r0, [r1, #0x10]
	mov r0, #2
	str r0, [r1]
	ldr r0, [sp]
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	str r0, [r1, #0xc]
	ldr r0, [sp]
	ldr r2, [r0]
	ldrb r0, [r2, #2]
	add r1, r0, #1
	lsl r0, r1, #1
	add r0, r1, r0
	add r1, r2, r0
	ldr r0, [sp]
	str r1, [r0]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_020675C0: .word 0x04000440
	thumb_func_end sub_02067184

	thumb_func_start sub_020675C4
sub_020675C4: ; 0x020675C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020675D6
	add r0, r5, #0
	add r0, #0x96
	ldrb r4, [r0]
	b _020675D8
_020675D6:
	mov r4, #0
_020675D8:
	cmp r4, #1
	bne _02067604
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020675F8
	add r0, r5, #0
	add r0, #0x96
	ldrb r4, [r0]
	b _020675FA
_020675F8:
	mov r4, #0
_020675FA:
	ldr r1, [r5, #8]
	mov r0, #0x40
	add r2, r1, #0
	and r2, r0
	b _02067606
_02067604:
	mov r2, #0
_02067606:
	mov r0, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02067644
	cmp r2, #0
	bne _02067644
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	ldrb r6, [r1, #2]
	lsl r3, r0, #0x18
	ldrb r0, [r1, #3]
	lsl r6, r6, #8
	lsl r2, r0, #0x10
	ldrb r0, [r1, #1]
	orr r0, r6
	orr r0, r2
	ldrb r2, [r1, #8]
	orr r0, r3
	add r0, r1, r0
	lsl r6, r2, #0x18
	ldrb r2, [r1, #7]
	lsl r3, r2, #0x10
	ldrb r2, [r1, #5]
	ldrb r1, [r1, #6]
	lsl r1, r1, #8
	orr r1, r2
	orr r1, r3
	orr r1, r6
	bl sub_02067BEC
_02067644:
	cmp r4, #3
	bne _02067656
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	blx r1
_02067656:
	ldr r0, [r5]
	add r0, #9
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_020675C4

	thumb_func_start sub_02067660
sub_02067660: ; 0x02067660
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r3, [r4, #8]
	mov r0, #1
	lsl r0, r0, #8
	add r2, r3, #0
	tst r2, r0
	bne _020676A0
	lsl r0, r0, #1
	tst r0, r3
	bne _020676A0
	cmp r1, #0
	bne _0206768A
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	b _02067696
_0206768A:
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
_02067696:
	mov r0, #0x1b
	add r1, sp, #0
	mov r2, #3
	bl sub_02067D1C
_020676A0:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end sub_02067660

	thumb_func_start sub_020676AC
sub_020676AC: ; 0x020676AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #2
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _020676C4
	mov r2, #1
	add r0, r1, #0
	tst r0, r2
	bne _020676C6
_020676C4:
	b _020678C8
_020676C6:
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r3, #3
	ldr r4, [r0, #0x10]
	lsl r3, r3, #0x1e
	add r6, r4, #0
	and r6, r3
	lsl r1, r3, #1
	cmp r6, r1
	beq _02067704
	ldr r1, _020678D4 ; =0x3FFFFFFF
	and r1, r4
	str r1, [r0, #0x10]
	add r0, r5, #0
	add r0, #0xb0
	ldr r4, [r0]
	lsl r0, r3, #1
	ldr r1, [r4, #0x10]
	orr r0, r1
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	ldr r1, [r0, #0x10]
	ldr r0, _020678D8 ; =0x0209B320
	str r1, [r0, #0xc]
	ldr r0, [r0, #8]
	ldr r1, _020678DC ; =0x0209B32C
	bl sub_02067D1C
_02067704:
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r1, sp, #0x10
	mov r2, #1
	bl sub_02067D1C
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _02067720
	add r0, r5, #0
	add r0, #0x98
	ldrb r4, [r0]
	b _02067722
_02067720:
	mov r4, #0
_02067722:
	cmp r4, #1
	bne _0206774C
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _02067742
	add r0, r5, #0
	add r0, #0x98
	ldrb r4, [r0]
	b _02067744
_02067742:
	mov r4, #0
_02067744:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _0206774E
_0206774C:
	mov r0, #0
_0206774E:
	cmp r0, #0
	bne _02067796
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	add r1, sp, #0x14
	ldrh r7, [r0, #0x2c]
	ldrh r6, [r0, #0x2e]
	mov r2, #3
	lsl r0, r7, #0xf
	str r0, [sp, #0x14]
	neg r0, r6
	lsl r0, r0, #0xf
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #0x1b
	bl sub_02067D1C
	lsl r1, r6, #0x13
	lsl r0, r7, #0x13
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [sp, #0xc]
	mov r0, #0x22
	add r1, sp, #0xc
	mov r2, #1
	bl sub_02067D1C
_02067796:
	cmp r4, #2
	bne _020677C0
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _020677B6
	add r0, r5, #0
	add r0, #0x98
	ldrb r4, [r0]
	b _020677B8
_020677B6:
	mov r4, #0
_020677B8:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _020677C2
_020677C0:
	mov r0, #0
_020677C2:
	cmp r0, #0
	bne _02067826
	ldr r0, [r5]
	ldrb r2, [r0, #1]
	add r0, r5, #0
	add r0, #0xd8
	ldr r3, [r0]
	cmp r3, #0
	beq _020677F8
	add r1, r3, #4
	beq _020677EC
	ldrb r0, [r3, #5]
	cmp r2, r0
	bhs _020677EC
	ldrh r6, [r3, #0xa]
	add r0, r1, r6
	ldrh r1, [r1, r6]
	add r0, r0, #4
	mul r2, r1
	add r0, r0, r2
	b _020677EE
_020677EC:
	mov r0, #0
_020677EE:
	cmp r0, #0
	beq _020677F8
	ldr r0, [r0]
	add r1, r3, r0
	b _020677FA
_020677F8:
	mov r1, #0
_020677FA:
	ldrh r0, [r1, #0x1e]
	mov r2, #2
	lsl r2, r2, #0xc
	tst r2, r0
	beq _02067826
	mov r2, #2
	add r1, #0x2c
	tst r2, r0
	bne _0206780E
	add r1, #8
_0206780E:
	mov r2, #4
	tst r2, r0
	bne _02067816
	add r1, r1, #4
_02067816:
	mov r2, #8
	tst r0, r2
	bne _0206781E
	add r1, #8
_0206781E:
	mov r0, #0x18
	mov r2, #0x10
	bl sub_02067D1C
_02067826:
	cmp r4, #3
	bne _02067840
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x3c]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02067842
_02067840:
	mov r0, #0
_02067842:
	cmp r0, #0
	bne _020678BA
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x10
	add r1, sp, #8
	mov r2, #1
	bl sub_02067D1C
	mov r0, #0
	add r1, sp, #0x20
	bl sub_02067DA4
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x10
	add r1, sp, #4
	mov r2, #1
	bl sub_02067D1C
	ldr r0, _020678E0 ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #1
	tst r0, r1
	beq _02067894
	ldr r1, _020678E4 ; =0x02143A58
	mov r0, #0x1a
	mov r2, #9
	bl sub_02067D1C
	ldr r1, _020678E8 ; =0x02143AC8
	mov r0, #0x1a
	mov r2, #9
	bl sub_02067D1C
	mov r0, #0x1a
	add r1, sp, #0x20
	mov r2, #9
	bl sub_02067D1C
	b _020678BA
_02067894:
	mov r0, #2
	tst r0, r1
	beq _020678B0
	ldr r1, _020678E4 ; =0x02143A58
	mov r0, #0x1a
	mov r2, #9
	bl sub_02067D1C
	mov r0, #0x1a
	add r1, sp, #0x20
	mov r2, #9
	bl sub_02067D1C
	b _020678BA
_020678B0:
	mov r0, #0x1a
	add r1, sp, #0x20
	mov r2, #9
	bl sub_02067D1C
_020678BA:
	mov r0, #2
	str r0, [sp]
	mov r0, #0x10
	add r1, sp, #0
	mov r2, #1
	bl sub_02067D1C
_020678C8:
	ldr r0, [r5]
	add r0, r0, #3
	str r0, [r5]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_020678D4: .word 0x3FFFFFFF
_020678D8: .word 0x0209B320
_020678DC: .word 0x0209B32C
_020678E0: .word 0x02143A8C
_020678E4: .word 0x02143A58
_020678E8: .word 0x02143AC8
	thumb_func_end sub_020676AC

	thumb_func_start sub_020678EC
sub_020678EC: ; 0x020678EC
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r5, r0, #0
	mov r0, #2
	ldr r1, [r5, #8]
	lsl r0, r0, #8
	tst r0, r1
	bne _02067902
	mov r0, #1
	tst r0, r1
	bne _02067904
_02067902:
	b _02067B32
_02067904:
	add r0, sp, #0x50
	mov r1, #0
	bl sub_02067DA4
	mov r0, #0x1e
	str r0, [sp, #0xc]
	mov r0, #0x13
	add r1, sp, #0xc
	mov r2, #1
	bl sub_02067D1C
	add r0, r5, #0
	add r0, #0xb0
	ldr r3, [r0]
	mov r1, #3
	ldr r2, [r3, #0x10]
	lsl r1, r1, #0x1e
	add r0, r2, #0
	and r0, r1
	cmp r0, r1
	beq _02067956
	ldr r0, _02067B3C ; =0x3FFFFFFF
	and r0, r2
	str r0, [r3, #0x10]
	add r0, r5, #0
	add r0, #0xb0
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	orr r0, r1
	str r0, [r2, #0x10]
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r2, #1
	ldr r1, [r0, #0x10]
	ldr r0, _02067B40 ; =0x0209B320
	str r1, [r0, #4]
	ldr r0, [r0]
	ldr r1, _02067B44 ; =0x0209B324
	bl sub_02067D1C
_02067956:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _02067964
	add r0, r5, #0
	add r0, #0x99
	ldrb r4, [r0]
	b _02067966
_02067964:
	mov r4, #0
_02067966:
	cmp r4, #1
	bne _02067990
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _02067986
	add r0, r5, #0
	add r0, #0x99
	ldrb r4, [r0]
	b _02067988
_02067986:
	mov r4, #0
_02067988:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02067992
_02067990:
	mov r0, #0
_02067992:
	cmp r0, #0
	bne _020679BA
	add r0, r5, #0
	add r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0x2c]
	neg r2, r0
	lsl r3, r1, #0xf
	ldr r1, _02067B48 ; =0x0209B350
	lsl r2, r2, #0xf
	str r3, [r1]
	str r2, [r1, #0x14]
	str r3, [r1, #0x30]
	lsl r0, r0, #0xf
	str r0, [r1, #0x34]
	mov r0, #0x16
	mov r2, #0x10
	bl sub_02067D1C
_020679BA:
	cmp r4, #2
	bne _020679E4
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	add r0, r5, #0
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	beq _020679DA
	add r0, r5, #0
	add r0, #0x99
	ldrb r4, [r0]
	b _020679DC
_020679DA:
	mov r4, #0
_020679DC:
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _020679E6
_020679E4:
	mov r0, #0
_020679E6:
	cmp r0, #0
	bne _02067A4A
	ldr r0, [r5]
	ldrb r2, [r0, #1]
	add r0, r5, #0
	add r0, #0xd8
	ldr r3, [r0]
	cmp r3, #0
	beq _02067A1C
	add r1, r3, #4
	beq _02067A10
	ldrb r0, [r3, #5]
	cmp r2, r0
	bhs _02067A10
	ldrh r6, [r3, #0xa]
	add r0, r1, r6
	ldrh r1, [r1, r6]
	add r0, r0, #4
	mul r2, r1
	add r0, r0, r2
	b _02067A12
_02067A10:
	mov r0, #0
_02067A12:
	cmp r0, #0
	beq _02067A1C
	ldr r0, [r0]
	add r1, r3, r0
	b _02067A1E
_02067A1C:
	mov r1, #0
_02067A1E:
	ldrh r0, [r1, #0x1e]
	mov r2, #2
	lsl r2, r2, #0xc
	tst r2, r0
	beq _02067A4A
	mov r2, #2
	add r1, #0x2c
	tst r2, r0
	bne _02067A32
	add r1, #8
_02067A32:
	mov r2, #4
	tst r2, r0
	bne _02067A3A
	add r1, r1, #4
_02067A3A:
	mov r2, #8
	tst r0, r2
	bne _02067A42
	add r1, #8
_02067A42:
	mov r0, #0x18
	mov r2, #0x10
	bl sub_02067D1C
_02067A4A:
	cmp r4, #3
	bne _02067A64
	ldr r1, [r5, #8]
	mov r0, #0x40
	bic r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #8]
	mov r0, #0x40
	and r0, r1
	b _02067A66
_02067A64:
	mov r0, #0
_02067A66:
	cmp r0, #0
	bne _02067B16
	ldr r0, _02067B4C ; =0x02143A8C
	ldr r1, [r0, #0x7c]
	mov r0, #1
	tst r0, r1
	beq _02067A94
	ldr r1, _02067B50 ; =0x02143AEC
	mov r0, #0x1c
	mov r2, #3
	bl sub_02067D1C
	ldr r1, _02067B54 ; =0x02143AC8
	mov r0, #0x1a
	mov r2, #9
	bl sub_02067D1C
	mov r0, #0x19
	add r1, sp, #0x50
	mov r2, #0xc
	bl sub_02067D1C
	b _02067ABE
_02067A94:
	mov r0, #2
	tst r0, r1
	beq _02067AA6
	mov r0, #0x19
	add r1, sp, #0x50
	mov r2, #0xc
	bl sub_02067D1C
	b _02067ABE
_02067AA6:
	bl sub_0206596C
	add r1, r0, #0
	mov r0, #0x19
	mov r2, #0xc
	bl sub_02067D1C
	mov r0, #0x19
	add r1, sp, #0x50
	mov r2, #0xc
	bl sub_02067D1C
_02067ABE:
	bl sub_02067B9C
	ldr r0, _02067B58 ; =0x04000440
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	add r4, sp, #0x10
_02067ACE:
	add r0, r4, #0
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _02067ACE
	ldr r1, _02067B5C ; =0x04000448
	mov r0, #1
	str r0, [r1]
	mov r0, #3
	sub r1, #8
	str r0, [r1]
	mov r0, #0x16
	add r1, sp, #0x10
	mov r2, #0x10
	bl sub_02067D1C
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x40]
	asr r1, r1, #4
	asr r0, r0, #4
	lsl r1, r1, #8
	lsl r0, r0, #8
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0x22
	add r1, sp, #8
	mov r2, #1
	bl sub_02067D1C
_02067B16:
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x10
	add r1, sp, #4
	mov r2, #1
	bl sub_02067D1C
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x14
	add r1, sp, #0
	mov r2, #1
	bl sub_02067D1C
_02067B32:
	ldr r0, [r5]
	add r0, r0, #3
	str r0, [r5]
	add sp, #0x80
	pop {r4, r5, r6, pc}
	.align 2, 0
_02067B3C: .word 0x3FFFFFFF
_02067B40: .word 0x0209B320
_02067B44: .word 0x0209B324
_02067B48: .word 0x0209B350
_02067B4C: .word 0x02143A8C
_02067B50: .word 0x02143AEC
_02067B54: .word 0x02143AC8
_02067B58: .word 0x04000440
_02067B5C: .word 0x04000448
	thumb_func_end sub_020678EC

	thumb_func_start sub_02067B60
sub_02067B60: ; 0x02067B60
	ldr r0, _02067B70 ; =0x02146974
	ldr r0, [r0]
	cmp r0, #0
	beq _02067B6C
	mov r0, #1
	bx lr
_02067B6C:
	mov r0, #0
	bx lr
	.align 2, 0
_02067B70: .word 0x02146974
	thumb_func_end sub_02067B60

	thumb_func_start sub_02067B74
sub_02067B74: ; 0x02067B74
	ldr r1, _02067B84 ; =0x02146974
	ldr r2, [r1]
	cmp r2, #0
	bne _02067B82
	mov r2, #0
	str r2, [r0]
	str r0, [r1]
_02067B82:
	bx lr
	.align 2, 0
_02067B84: .word 0x02146974
	thumb_func_end sub_02067B74

	thumb_func_start sub_02067B88
sub_02067B88: ; 0x02067B88
	push {r3, lr}
	bl sub_02067B9C
	ldr r1, _02067B98 ; =0x02146974
	mov r2, #0
	ldr r0, [r1]
	str r2, [r1]
	pop {r3, pc}
	.align 2, 0
_02067B98: .word 0x02146974
	thumb_func_end sub_02067B88

	thumb_func_start sub_02067B9C
sub_02067B9C: ; 0x02067B9C
	push {r3, lr}
	ldr r0, _02067BCC ; =0x02146974
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02067BAA
	bl sub_02067BD4
_02067BAA:
	ldr r0, _02067BCC ; =0x02146974
	ldr r0, [r0]
	cmp r0, #0
	beq _02067BCA
	ldr r2, [r0]
	cmp r2, #0
	beq _02067BCA
	ldr r1, _02067BD0 ; =0x04000400
	add r0, r0, #4
	lsl r2, r2, #2
	blx sub_02078684
	ldr r0, _02067BCC ; =0x02146974
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
_02067BCA:
	pop {r3, pc}
	.align 2, 0
_02067BCC: .word 0x02146974
_02067BD0: .word 0x04000400
	thumb_func_end sub_02067B9C

	thumb_func_start sub_02067BD4
sub_02067BD4: ; 0x02067BD4
	ldr r0, _02067BE0 ; =0x02146974
_02067BD6:
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _02067BD6
	bx lr
	nop
_02067BE0: .word 0x02146974
	thumb_func_end sub_02067BD4

	thumb_func_start sub_02067BE4
sub_02067BE4: ; 0x02067BE4
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_02067BE4

	thumb_func_start sub_02067BEC
sub_02067BEC: ; 0x02067BEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #8
	cmp r4, r0
	blo _02067C06
	ldr r0, _02067CEC ; =0x0209B528
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02067C14
_02067C06:
	lsr r2, r4, #2
	ldr r0, [r5]
	add r1, r5, #4
	sub r2, r2, #1
	bl sub_02067D1C
	pop {r3, r4, r5, pc}
_02067C14:
	bl sub_02067B9C
	ldr r0, _02067CF0 ; =0x02146974
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02067C88
	bl sub_0207AC8C
	cmp r0, #0
	beq _02067C6C
	ldr r0, _02067CEC ; =0x0209B528
	ldr r1, [r0]
	cmp r1, #3
	bls _02067C3A
	mov r2, #0
	mvn r2, r2
	b _02067C3C
_02067C3A:
	add r2, r1, #0
_02067C3C:
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _02067C5A
	cmp r1, #3
	bls _02067C4A
	sub r0, r1, #4
_02067C4A:
	ldr r1, _02067CF4 ; =0x02146978
	ldr r3, _02067CF8 ; =sub_02067BE4
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02067CFC
	pop {r3, r4, r5, pc}
_02067C5A:
	ldr r0, _02067CF4 ; =0x02146978
	ldr r3, _02067CF8 ; =sub_02067BE4
	str r0, [sp]
	add r0, r2, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02078594
	pop {r3, r4, r5, pc}
_02067C6C:
	ldr r0, _02067CEC ; =0x0209B528
	ldr r0, [r0]
	cmp r0, #3
	bls _02067C78
	mov r0, #0
	mvn r0, r0
_02067C78:
	ldr r1, _02067CF4 ; =0x02146978
	ldr r3, _02067CF8 ; =sub_02067BE4
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02078594
	pop {r3, r4, r5, pc}
_02067C88:
	bl sub_0207AC8C
	cmp r0, #0
	beq _02067CD0
	ldr r0, _02067CEC ; =0x0209B528
	ldr r1, [r0]
	cmp r1, #3
	bls _02067C9E
	mov r2, #0
	mvn r2, r2
	b _02067CA0
_02067C9E:
	add r2, r1, #0
_02067CA0:
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _02067CBE
	cmp r1, #3
	bls _02067CAE
	sub r0, r1, #4
_02067CAE:
	ldr r1, _02067CF4 ; =0x02146978
	ldr r3, _02067CF8 ; =sub_02067BE4
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02067D0C
	pop {r3, r4, r5, pc}
_02067CBE:
	ldr r0, _02067CF4 ; =0x02146978
	ldr r3, _02067CF8 ; =sub_02067BE4
	str r0, [sp]
	add r0, r2, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02078428
	pop {r3, r4, r5, pc}
_02067CD0:
	ldr r0, _02067CEC ; =0x0209B528
	ldr r0, [r0]
	cmp r0, #3
	bls _02067CDC
	mov r0, #0
	mvn r0, r0
_02067CDC:
	ldr r1, _02067CF4 ; =0x02146978
	ldr r3, _02067CF8 ; =sub_02067BE4
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02078428
	pop {r3, r4, r5, pc}
	.align 2, 0
_02067CEC: .word 0x0209B528
_02067CF0: .word 0x02146974
_02067CF4: .word 0x02146978
_02067CF8: .word sub_02067BE4
	thumb_func_end sub_02067BEC

	thumb_func_start sub_02067CFC
sub_02067CFC: ; 0x02067CFC
	bx pc
	nop
	thumb_func_end sub_02067CFC

