    .include "macros/function.inc"
	.include "overlay269.inc"
	.include "global.inc"

	.text

	thumb_func_start ovy269_21ef1e0
ovy269_21ef1e0: ; 0x021EF1E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _021EF27C ; =0x000000D1
	add r6, r2, #0
	bl sub_0203CE0C
	ldr r0, _021EF280 ; =0x000000D2
	bl sub_0203CE0C
	ldr r0, [r6, #0x10]
	bl sub_021F0948
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0203AAEC
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	mov r5, #0
	blx MI_CpuFill8
	ldr r0, [r6, #0x10]
	bl sub_021F0948
	strh r0, [r4, #0x24]
	str r6, [r4, #0x30]
	ldrh r0, [r4, #0x24]
	bl sub_02021998
	str r0, [r4, #0x20]
	ldr r0, [r6, #8]
	bl sub_021F32D8
	add r7, r0, #0
	ldrh r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_0202AE5C
	str r0, [r4, #0x1c]
_021EF232:
	ldrh r3, [r4, #0x24]
	ldr r1, [r6, #0xc]
	add r0, r7, #0
	add r2, r5, #0
	bl sub_021F4574
	lsl r1, r5, #2
	add r1, r4, r1
	add r5, r5, #1
	str r0, [r1, #0x14]
	cmp r5, #2
	blt _021EF232
	ldr r0, [r6, #0x18]
	bl sub_02017934
	bl sub_0200AD14
	bl sub_0200AD5C
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl ovy269_21ef61c
	add r0, r4, #0
	add r1, r6, #0
	bl ovy269_21ef694
	ldrh r2, [r4, #0x24]
	ldr r1, _021EF284 ; =ovy269_21ef354
	add r0, r4, #0
	bl sub_021F44EC
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF27C: .word 0x000000D1
_021EF280: .word 0x000000D2
_021EF284: .word ovy269_21ef354
	thumb_func_end ovy269_21ef1e0

	thumb_func_start ovy269_21ef288
ovy269_21ef288: ; 0x021EF288
	push {r3, r4, r5, r6, r7, lr}
	add r5, r3, #0
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r2, #0
	bl sub_021F4528
	add r0, r5, #0
	add r1, r6, #0
	bl ovy269_21ef748
	add r0, r5, #0
	add r1, r6, #0
	bl ovy269_21ef658
	mov r4, #0
_021EF2A8:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl sub_021F4638
	add r4, r4, #1
	cmp r4, #2
	blt _021EF2A8
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021EF2C8
	ldr r1, [r6, #0xc]
	bl sub_021F3F70
	mov r0, #0
	str r0, [r5, #0x10]
_021EF2C8:
	ldr r0, [r5, #0x1c]
	bl sub_0202AEAC
	ldr r0, [r5, #0x20]
	bl sub_02021A18
	add r0, r7, #0
	bl sub_0203AB10
	ldr r0, _021EF2EC ; =0x000000D1
	bl sub_0203CDC8
	ldr r0, _021EF2F0 ; =0x000000D2
	bl sub_0203CDC8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF2EC: .word 0x000000D1
_021EF2F0: .word 0x000000D2
	thumb_func_end ovy269_21ef288

	thumb_func_start ovy269_21ef2f4
ovy269_21ef2f4: ; 0x021EF2F4
	push {r3, r4, r5, lr}
	add r5, r3, #0
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x14]
	bl sub_021F66B0
	cmp r0, #2
	bne _021EF310
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x10]
	bl sub_021F0A20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF310:
	ldr r0, [r5, #0xc]
	bl sub_021F4530
	ldr r0, [r5, #0xc]
	bl sub_021F4540
	cmp r0, #0
	beq _021EF324
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EF324:
	mov r4, #0
_021EF326:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	bl sub_021F466C
	add r4, r4, #1
	cmp r4, #2
	blt _021EF326
	ldr r0, [r5, #0x20]
	bl sub_02021A3C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021EF346
	bl sub_021F3FD0
_021EF346:
	ldr r0, [r5]
	cmp r0, #0
	beq _021EF350
	bl sub_021BA6F8
_021EF350:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ovy269_21ef2f4

	thumb_func_start ovy269_21ef354
ovy269_21ef354: ; 0x021EF354
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021EF368
	cmp r1, #1
	beq _021EF37C
	cmp r1, #2
	beq _021EF38E
	pop {r4, pc}
_021EF368:
	ldr r0, [r2, #0x30]
	mov r1, #4
	ldr r0, [r0]
	mov r2, #3
	mov r3, #0
	bl sub_021F559C
	mov r0, #1
	str r0, [r4]
	pop {r4, pc}
_021EF37C:
	ldr r0, [r2, #0x30]
	ldr r0, [r0]
	bl sub_021F55C8
	cmp r0, #0
	beq _021EF394
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}
_021EF38E:
	ldr r1, _021EF398 ; =ovy269_21ef3e8
	bl sub_021F4550
_021EF394:
	pop {r4, pc}
	nop
_021EF398: .word ovy269_21ef3e8
	thumb_func_end ovy269_21ef354

	thumb_func_start ovy269_21ef39c
ovy269_21ef39c: ; 0x021EF39C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5]
	add r4, r2, #0
	cmp r0, #0
	beq _021EF3B2
	cmp r0, #1
	beq _021EF3C6
	cmp r0, #2
	beq _021EF3D8
	pop {r3, r4, r5, pc}
_021EF3B2:
	ldr r0, [r4, #0x30]
	mov r1, #4
	ldr r0, [r0]
	mov r2, #3
	mov r4, #1
	mov r3, #1
	bl sub_021F559C
	str r4, [r5]
	pop {r3, r4, r5, pc}
_021EF3C6:
	ldr r0, [r4, #0x30]
	ldr r0, [r0]
	bl sub_021F55C8
	cmp r0, #0
	beq _021EF3E6
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021EF3D8:
	ldr r0, [r4, #0xc]
	bl sub_021F4558
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x10]
	bl sub_021F094C
_021EF3E6:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy269_21ef39c

	thumb_func_start ovy269_21ef3e8
ovy269_21ef3e8: ; 0x021EF3E8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0x14
	add r1, sp, #0x10
	add r4, r2, #0
	bl sub_0203DAC8
	cmp r0, #0
	beq _021EF458
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_021F2288
	cmp r0, #0
	beq _021EF42A
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r2, sp, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	bl sub_021F4678
	ldr r0, [r4, #0x30]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r1, _021EF45C ; =ovy269_21ef39c
	add r0, r5, #0
	bl sub_021F4550
_021EF42A:
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl sub_021F2288
	cmp r0, #0
	beq _021EF458
	ldr r0, [sp, #0x14]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	mov r6, #1
	bl sub_021F4678
	ldr r0, [r4, #0x30]
	ldr r1, _021EF460 ; =ovy269_21ef464
	str r6, [r0, #0x1c]
	add r0, r5, #0
	bl sub_021F4550
_021EF458:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_021EF45C: .word ovy269_21ef39c
_021EF460: .word ovy269_21ef464
	thumb_func_end ovy269_21ef3e8

	thumb_func_start ovy269_21ef464
ovy269_21ef464: ; 0x021EF464
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r2, #0
	cmp r1, #0xb
	bhi _021EF4B8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EF47E: ; jump table
	.short _021EF496 - _021EF47E - 2 ; case 0
	.short _021EF4AC - _021EF47E - 2 ; case 1
	.short _021EF4C2 - _021EF47E - 2 ; case 2
	.short _021EF504 - _021EF47E - 2 ; case 3
	.short _021EF51A - _021EF47E - 2 ; case 4
	.short _021EF52E - _021EF47E - 2 ; case 5
	.short _021EF556 - _021EF47E - 2 ; case 6
	.short _021EF580 - _021EF47E - 2 ; case 7
	.short _021EF5AA - _021EF47E - 2 ; case 8
	.short _021EF5DA - _021EF47E - 2 ; case 9
	.short _021EF5F0 - _021EF47E - 2 ; case 10
	.short _021EF604 - _021EF47E - 2 ; case 11
_021EF496:
	ldr r0, [r4, #0x30]
	mov r1, #4
	ldr r0, [r0]
	mov r2, #3
	mov r3, #1
	mov r4, #1
	bl sub_021F559C
	add sp, #0x24
	str r4, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF4AC:
	ldr r0, [r4, #0x30]
	ldr r0, [r0]
	bl sub_021F55C8
	cmp r0, #0
	bne _021EF4BA
_021EF4B8:
	b _021EF610
_021EF4BA:
	mov r0, #2
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF4C2:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy269_21ef748
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ovy269_21ef658
	ldr r0, [r4, #0x30]
	ldrh r2, [r4, #0x24]
	ldr r0, [r0, #0xc]
	ldr r1, [r4, #0x20]
	bl sub_021F3F40
	ldr r1, [r4, #0x30]
	str r0, [r4, #0x10]
	ldr r1, [r1, #0xc]
	ldr r2, _021EF614 ; =0x00000145
	bl sub_021F3F84
	mov r0, #0x80
	str r0, [sp, #0x1c]
	mov r0, #0x60
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x14]
	mov r1, #4
	add r2, sp, #0x1c
	bl sub_021F4678
	mov r0, #3
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF504:
	ldr r0, [r4, #0x30]
	mov r1, #4
	ldr r0, [r0]
	mov r2, #3
	mov r3, #0
	mov r4, #4
	bl sub_021F559C
	add sp, #0x24
	str r4, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF51A:
	ldr r0, [r4, #0x30]
	ldr r0, [r0]
	bl sub_021F55C8
	cmp r0, #0
	beq _021EF610
	mov r0, #5
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF52E:
	add r7, sp, #0x14
	add r0, r7, #0
	mov r1, #0
	mov r2, #8
	mov r6, #0
	blx MI_CpuFill8
	ldr r0, [r4, #0x28]
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x30]
	add r2, r7, #0
	ldr r0, [r0, #0x14]
	bl sub_021F6368
	str r6, [r4, #0x2c]
	mov r0, #6
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF556:
	ldr r0, [r4, #0x2c]
	add r0, r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x14]
	bl sub_021F646C
	cmp r0, #0
	beq _021EF610
	ldr r0, [r4, #0x2c]
	cmp r0, #0x60
	bls _021EF610
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0
	bl sub_021F4678
	mov r0, #7
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF580:
	ldr r0, [r4, #0x30]
	add r1, sp, #0x10
	ldr r0, [r0, #0x14]
	bl sub_021F6550
	cmp r0, #0
	bne _021EF596
	mov r0, #9
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF596:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_021F3F84
	mov r0, #8
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF5AA:
	bl sub_0203DA48
	cmp r0, #0
	beq _021EF610
	add r0, sp, #0xc
	add r1, sp, #8
	bl sub_0203DAC8
	ldr r0, [sp, #0xc]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	bl sub_021F4678
	ldr r0, _021EF618 ; =0x00000703
	bl GFL_SndSEPlay
	mov r0, #9
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF5DA:
	ldr r0, [r4, #0x30]
	mov r1, #2
	ldr r0, [r0]
	mov r2, #3
	mov r3, #1
	bl sub_021F559C
	mov r0, #0xa
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF5F0:
	ldr r0, [r4, #0x30]
	ldr r0, [r0]
	bl sub_021F55C8
	cmp r0, #0
	beq _021EF610
	mov r0, #0xb
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EF604:
	bl sub_021F4558
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x10]
	bl sub_021F094C
_021EF610:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF614: .word 0x00000145
_021EF618: .word 0x00000703
	thumb_func_end ovy269_21ef464

	thumb_func_start ovy269_21ef61c
ovy269_21ef61c: ; 0x021EF61C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	bne _021EF654
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0
	bl sub_021F5CD8
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_021F2B8C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_021F2FE4
	ldrh r1, [r5, #0x24]
	ldr r0, [r4, #8]
	bl sub_021F340C
	ldrh r1, [r5, #0x24]
	ldr r0, [r5, #0x28]
	bl sub_021BA598
	str r0, [r5]
_021EF654:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ovy269_21ef61c

	thumb_func_start ovy269_21ef658
ovy269_21ef658: ; 0x021EF658
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _021EF692
	bl sub_021BA698
	mov r0, #0
	str r0, [r5]
	ldrh r1, [r5, #0x24]
	ldr r0, [r4, #8]
	bl sub_021F343C
	ldrh r2, [r5, #0x24]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_021F2F34
	ldrh r2, [r5, #0x24]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_021F274C
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	bl sub_021F5CD8
_021EF692:
	pop {r3, r4, r5, pc}
	thumb_func_end ovy269_21ef658

	thumb_func_start ovy269_21ef694
ovy269_21ef694: ; 0x021EF694
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp, #0x18]
	cmp r0, #0
	bne _021EF742
	add r0, r1, #0
	ldrh r2, [r5, #0x24]
	ldr r0, [r0, #0xc]
	mov r1, #0x17
	bl sub_021F274C
	ldr r0, [sp, #0x18]
	ldrh r2, [r5, #0x24]
	ldr r0, [r0, #0xc]
	mov r1, #6
	bl sub_021F2C3C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_021F2FF8
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_021F3000
	add r6, r0, #0
	add r0, sp, #0x20
	mov r1, #0
	mov r2, #8
	mov r4, #0
	blx MI_CpuFill8
	mov r1, #0xa8
	add r0, sp, #0x20
	strh r1, [r0, #2]
	mov r1, #1
	strb r1, [r0, #6]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #8]
	bl sub_021F32D8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	mov r1, #6
	ldr r0, [r0, #0xc]
	add r2, sp, #0x28
	bl sub_021F2F10
_021EF6FA:
	cmp r4, #0
	add r0, sp, #0x20
	bne _021EF70A
	mov r2, #0x20
	strh r2, [r0]
	mov r1, #4
	mov r2, #0
	b _021EF712
_021EF70A:
	mov r2, #0x80
	strh r2, [r0]
	mov r1, #0x2b
	mov r2, #4
_021EF712:
	strh r2, [r0, #4]
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	lsr r1, r1, #0x10
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	add r0, sp, #0x28
	str r0, [sp, #0x10]
	ldrh r0, [r5, #0x24]
	mov r2, #0x60
	mov r3, #1
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	bl sub_021F214C
	lsl r1, r4, #2
	add r1, r5, r1
	add r4, r4, #1
	str r0, [r1, #4]
	cmp r4, #2
	blt _021EF6FA
_021EF742:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ovy269_21ef694

	thumb_func_start ovy269_21ef748
ovy269_21ef748: ; 0x021EF748
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _021EF77A
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_021F2EB4
	ldr r0, [r4, #0xc]
	mov r1, #0x17
	bl sub_021F2B8C
	mov r4, #0
	add r7, r4, #0
_021EF768:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #4]
	bl sub_021F2268
	add r4, r4, #1
	str r7, [r5, #4]
	cmp r4, #2
	blt _021EF768
_021EF77A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ovy269_21ef748
_021EF77C:
	.byte 0xE1, 0xF1, 0x1E, 0x02
	.byte 0xF5, 0xF2, 0x1E, 0x02, 0x89, 0xF2, 0x1E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021EF77C
