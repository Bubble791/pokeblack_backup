    .include "macros/function.inc"
	.include "overlay29.inc"
	.include "global.inc"

	.text

	arm_func_start sub_02192AE8
sub_02192AE8: ; 0x02192AE8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr lr, _02192C30 ; =0x00007FFF
	ldr ip, _02192C34 ; =0x021971B4
	ldr r5, _02192C38 ; =0x021971C4
	rsb r4, r4, #0
_02192B0C:
	ldrb r7, [r3, #2]
	ldrb sl, [r0]
	ldrsh r8, [r3]
	mov sb, r7, lsl #1
	ldrsh fp, [r5, sb]
	and sl, sl, #0xf
	tst sl, #4
	mov sb, fp, asr #3
	addne sb, sb, fp
	tst sl, #2
	addne sb, sb, fp, asr #1
	tst sl, #1
	addne sb, sb, fp, asr #2
	tst sl, #8
	beq _02192B58
	sub r8, r8, sb
	cmp r8, r4
	movlt r8, r4
	b _02192B64
_02192B58:
	add r8, r8, sb
	cmp r8, lr
	movgt r8, lr
_02192B64:
	ldrsb sb, [ip, sl]
	adds r7, r7, sb
	movmi r7, #0
	bmi _02192B7C
	cmp r7, #0x58
	movgt r7, #0x58
_02192B7C:
	strb r7, [r3, #2]
	mov r7, r8, lsl #0x10
	mov r7, r7, asr #0x10
	strh r7, [r3]
	strh r7, [r1]
	ldrb r7, [r3, #2]
	ldrb sl, [r0]
	ldrsh r8, [r3]
	mov sb, r7, lsl #1
	ldrsh fp, [r5, sb]
	mov sl, sl, asr #4
	and sl, sl, #0xf
	mov sb, fp, asr #3
	tst sl, #4
	addne sb, sb, fp
	tst sl, #2
	addne sb, sb, fp, asr #1
	tst sl, #1
	addne sb, sb, fp, asr #2
	tst sl, #8
	beq _02192BE0
	sub r8, r8, sb
	cmp r8, r4
	movlt r8, r4
	b _02192BEC
_02192BE0:
	add r8, r8, sb
	cmp r8, lr
	movgt r8, lr
_02192BEC:
	ldrsb sb, [ip, sl]
	adds r7, r7, sb
	movmi r7, #0
	bmi _02192C04
	cmp r7, #0x58
	movgt r7, #0x58
_02192C04:
	strb r7, [r3, #2]
	mov r7, r8, lsl #0x10
	mov r8, r7, asr #0x10
	strh r8, [r3]
	add r6, r6, #1
	strh r8, [r1, #2]
	cmp r6, r2
	add r1, r1, #4
	add r0, r0, #1
	blo _02192B0C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02192C30: .word 0x00007FFF
_02192C34: .word 0x021971B4
_02192C38: .word 0x021971C4
	arm_func_end sub_02192AE8

	arm_func_start sub_02192C3C
sub_02192C3C: ; 0x02192C3C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r8, r2, lsr #1
	mov r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov ip, #0x8000
	rsb ip, ip, #0
	ldr lr, _02192DC8 ; =0x021971C4
	mov r2, ip, lsr #0x11
_02192C5C:
	ldrb r6, [r3, #2]
	ldrsh r7, [r3]
	ldrsh r5, [r1]
	mov sb, r6, lsl #1
	ldrsh sb, [lr, sb]
	subs sl, r5, r7
	movmi r5, #8
	rsbmi sl, sl, #0
	movpl r5, #0
	cmp sl, sb
	orrge r5, r5, #4
	subge sl, sl, sb
	cmp sl, sb, asr #1
	orrge r5, r5, #2
	subge sl, sl, sb, asr #1
	cmp sl, sb, asr #2
	orrge r5, r5, #1
	mov sl, sb, asr #3
	tst r5, #4
	addne sl, sl, sb
	tst r5, #2
	addne sl, sl, sb, asr #1
	tst r5, #1
	addne sl, sl, sb, asr #2
	tst r5, #8
	rsbne sl, sl, #0
	add sb, r7, sl
	ldr r7, _02192DCC ; =0x021971B4
	cmp sb, ip
	movlt sb, ip
	cmp sb, ip, lsr #17
	ldrsb r7, [r7, r5]
	movgt sb, r2
	adds r6, r6, r7
	movmi r6, #0
	bmi _02192CF4
	cmp r6, #0x58
	movgt r6, #0x58
_02192CF4:
	strh sb, [r3]
	and r7, r6, #0xff
	strb r6, [r3, #2]
	ldrsh r6, [r1, #2]
	ldrsh sb, [r3]
	mov sl, r7, lsl #1
	ldrsh sl, [lr, sl]
	subs fp, r6, sb
	movmi r6, #8
	rsbmi fp, fp, #0
	movpl r6, #0
	cmp fp, sl
	orrge r6, r6, #4
	subge fp, fp, sl
	cmp fp, sl, asr #1
	orrge r6, r6, #2
	subge fp, fp, sl, asr #1
	cmp fp, sl, asr #2
	orrge r6, r6, #1
	mov fp, sl, asr #3
	tst r6, #4
	addne fp, fp, sl
	tst r6, #2
	addne fp, fp, sl, asr #1
	tst r6, #1
	addne fp, fp, sl, asr #2
	tst r6, #8
	rsbne fp, fp, #0
	add sl, sb, fp
	ldr sb, _02192DCC ; =0x021971B4
	cmp sl, ip
	movlt sl, ip
	cmp sl, ip, lsr #17
	ldrsb sb, [sb, r6]
	movgt sl, r2
	and r5, r5, #0xff
	adds r7, r7, sb
	add r1, r1, #4
	movmi r7, #0
	bmi _02192D9C
	cmp r7, #0x58
	movgt r7, #0x58
_02192D9C:
	strh sl, [r3]
	strb r7, [r3, #2]
	and r6, r6, #0xff
	mov r6, r6, lsl #4
	and r6, r6, #0xff
	orr r5, r5, r6
	strb r5, [r0], #1
	add r4, r4, #1
	cmp r4, r8
	blo _02192C5C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02192DC8: .word 0x021971C4
_02192DCC: .word 0x021971B4
	arm_func_end sub_02192C3C

	arm_func_start sub_02192DD0
sub_02192DD0: ; 0x02192DD0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r4, _02193254 ; =0xAAAAAAAB
	umull r5, r4, r2, r4
	movs r2, r4, lsr #1
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #0xc]
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr lr, _02193258 ; =0x00007FFF
	ldr r5, _0219325C ; =0x021971C4
	rsb r4, r4, #0
_02192E08:
	ldrb r7, [r3, #2]
	ldrb fp, [r0]
	ldrb r2, [r0, #1]
	mov r6, r7, lsl #1
	ldrsh r6, [r5, r6]
	mov sb, fp, asr #5
	tst sb, #2
	str r6, [sp, #8]
	ldrne sl, [sp, #8]
	mov r6, r6, asr #2
	addne r6, r6, sl
	tst sb, #1
	ldrne sl, [sp, #8]
	ldrb ip, [r0, #2]
	addne r6, r6, sl, asr #1
	ldrsh r8, [r3]
	tst sb, #4
	beq _02192E60
	sub r8, r8, r6
	cmp r8, r4
	movlt r8, r4
	b _02192E6C
_02192E60:
	add r8, r8, r6
	cmp r8, lr
	movgt r8, lr
_02192E6C:
	ldr r6, _02193260 ; =0x021971AC
	ldrsb r6, [r6, sb]
	adds r7, r7, r6
	movmi r7, #0
	bmi _02192E88
	cmp r7, #0x58
	movgt r7, #0x58
_02192E88:
	mov r6, r8, lsl #0x10
	mov r6, r6, asr #0x10
	strb r7, [r3, #2]
	strh r6, [r3]
	strh r6, [r1]
	ldrb r7, [r3, #2]
	mov sb, fp, asr #2
	tst sb, #2
	mov r6, r7, lsl #1
	ldrsh r6, [r5, r6]
	ldrsh r8, [r3]
	str r6, [sp, #4]
	ldrne sl, [sp, #4]
	mov r6, r6, asr #2
	addne r6, r6, sl
	tst sb, #1
	ldrne sl, [sp, #4]
	addne r6, r6, sl, asr #1
	tst sb, #4
	beq _02192EE8
	sub r8, r8, r6
	cmp r8, r4
	movlt r8, r4
	b _02192EF4
_02192EE8:
	add r8, r8, r6
	cmp r8, lr
	movgt r8, lr
_02192EF4:
	ldr r6, _02193260 ; =0x021971AC
	and sb, sb, #7
	ldrsb r6, [r6, sb]
	adds r7, r7, r6
	movmi r7, #0
	bmi _02192F14
	cmp r7, #0x58
	movgt r7, #0x58
_02192F14:
	mov r6, r8, lsl #0x10
	strb r7, [r3, #2]
	mov r7, r6, asr #0x10
	mov r6, fp, lsl #1
	strh r7, [r3]
	and r6, r6, #7
	strh r7, [r1, #2]
	orr r8, r6, r2, asr #7
	ldrb r6, [r3, #2]
	tst r8, #2
	ldrsh r7, [r3]
	mov sb, r6, lsl #1
	ldrsh sl, [r5, sb]
	mov sb, sl, asr #2
	addne sb, sb, sl
	tst r8, #1
	addne sb, sb, sl, asr #1
	tst r8, #4
	beq _02192F70
	sub r7, r7, sb
	cmp r7, r4
	movlt r7, r4
	b _02192F7C
_02192F70:
	add r7, r7, sb
	cmp r7, lr
	movgt r7, lr
_02192F7C:
	ldr sb, _02193260 ; =0x021971AC
	ldrsb r8, [sb, r8]
	adds r6, r6, r8
	movmi r6, #0
	bmi _02192F98
	cmp r6, #0x58
	movgt r6, #0x58
_02192F98:
	strb r6, [r3, #2]
	mov r6, r7, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strh r6, [r1, #4]
	ldrb r6, [r3, #2]
	mov r8, r2, asr #4
	tst r8, #2
	mov sb, r6, lsl #1
	ldrsh sl, [r5, sb]
	ldrsh r7, [r3]
	mov sb, sl, asr #2
	addne sb, sb, sl
	tst r8, #1
	addne sb, sb, sl, asr #1
	tst r8, #4
	beq _02192FEC
	sub r7, r7, sb
	cmp r7, r4
	movlt r7, r4
	b _02192FF8
_02192FEC:
	add r7, r7, sb
	cmp r7, lr
	movgt r7, lr
_02192FF8:
	and sb, r8, #7
	ldr r8, _02193260 ; =0x021971AC
	ldrsb r8, [r8, sb]
	adds r6, r6, r8
	movmi r6, #0
	bmi _02193018
	cmp r6, #0x58
	movgt r6, #0x58
_02193018:
	strb r6, [r3, #2]
	mov r6, r7, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strh r6, [r1, #6]
	ldrb r6, [r3, #2]
	mov r8, r2, asr #1
	tst r8, #2
	mov sb, r6, lsl #1
	ldrsh sl, [r5, sb]
	ldrsh r7, [r3]
	mov sb, sl, asr #2
	addne sb, sb, sl
	tst r8, #1
	addne sb, sb, sl, asr #1
	tst r8, #4
	beq _0219306C
	sub r7, r7, sb
	cmp r7, r4
	movlt r7, r4
	b _02193078
_0219306C:
	add r7, r7, sb
	cmp r7, lr
	movgt r7, lr
_02193078:
	and sb, r8, #7
	ldr r8, _02193260 ; =0x021971AC
	ldrsb r8, [r8, sb]
	adds r6, r6, r8
	movmi r6, #0
	bmi _02193098
	cmp r6, #0x58
	movgt r6, #0x58
_02193098:
	strb r6, [r3, #2]
	mov r6, r7, lsl #0x10
	mov r6, r6, asr #0x10
	mov r2, r2, lsl #2
	strh r6, [r3]
	and r2, r2, #7
	strh r6, [r1, #8]
	orr r7, r2, ip, asr #6
	ldrb r2, [r3, #2]
	tst r7, #2
	ldrsh r6, [r3]
	mov r8, r2, lsl #1
	ldrsh sb, [r5, r8]
	mov r8, sb, asr #2
	addne r8, r8, sb
	tst r7, #1
	addne r8, r8, sb, asr #1
	tst r7, #4
	beq _021930F4
	sub r6, r6, r8
	cmp r6, r4
	movlt r6, r4
	b _02193100
_021930F4:
	add r6, r6, r8
	cmp r6, lr
	movgt r6, lr
_02193100:
	ldr r8, _02193260 ; =0x021971AC
	ldrsb r7, [r8, r7]
	adds r2, r2, r7
	movmi r2, #0
	bmi _0219311C
	cmp r2, #0x58
	movgt r2, #0x58
_0219311C:
	strb r2, [r3, #2]
	mov r2, r6, lsl #0x10
	mov r2, r2, asr #0x10
	strh r2, [r3]
	strh r2, [r1, #0xa]
	ldrb r2, [r3, #2]
	mov sb, ip, asr #3
	tst sb, #2
	mov r7, r2, lsl #1
	ldrsh r8, [r5, r7]
	ldrsh r6, [r3]
	mov r7, r8, asr #2
	addne r7, r7, r8
	tst sb, #1
	addne r7, r7, r8, asr #1
	tst sb, #4
	beq _02193170
	sub r6, r6, r7
	cmp r6, r4
	movlt r6, r4
	b _0219317C
_02193170:
	add r6, r6, r7
	cmp r6, lr
	movgt r6, lr
_0219317C:
	ldr r7, _02193260 ; =0x021971AC
	and r8, sb, #7
	ldrsb r7, [r7, r8]
	adds r2, r2, r7
	movmi r2, #0
	bmi _0219319C
	cmp r2, #0x58
	movgt r2, #0x58
_0219319C:
	strb r2, [r3, #2]
	mov r2, r6, lsl #0x10
	mov r2, r2, asr #0x10
	strh r2, [r3]
	strh r2, [r1, #0xc]
	ldrb r2, [r3, #2]
	tst ip, #2
	ldrsh r6, [r3]
	mov r7, r2, lsl #1
	ldrsh r8, [r5, r7]
	mov r7, r8, asr #2
	addne r7, r7, r8
	tst ip, #1
	addne r7, r7, r8, asr #1
	tst ip, #4
	beq _021931EC
	sub r6, r6, r7
	cmp r6, r4
	movlt r6, r4
	b _021931F8
_021931EC:
	add r6, r6, r7
	cmp r6, lr
	movgt r6, lr
_021931F8:
	ldr r7, _02193260 ; =0x021971AC
	and r8, ip, #7
	ldrsb r7, [r7, r8]
	adds r2, r2, r7
	movmi r2, #0
	bmi _02193218
	cmp r2, #0x58
	movgt r2, #0x58
_02193218:
	strb r2, [r3, #2]
	mov r2, r6, lsl #0x10
	mov r2, r2, asr #0x10
	strh r2, [r3]
	strh r2, [r1, #0xe]
	ldr r2, [sp, #0xc]
	add r0, r0, #3
	add r6, r2, #1
	ldr r2, [sp]
	add r1, r1, #0x10
	str r6, [sp, #0xc]
	cmp r6, r2
	blo _02192E08
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02193254: .word 0xAAAAAAAB
_02193258: .word 0x00007FFF
_0219325C: .word 0x021971C4
_02193260: .word 0x021971AC
	arm_func_end sub_02192DD0

	arm_func_start sub_02193264
sub_02193264: ; 0x02193264
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	movs r2, r2, lsr #3
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov fp, #4
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov lr, #0x8000
	rsb lr, lr, #0
	ldr r4, _02193784 ; =0x021971C4
	ldr r2, _02193788 ; =0x021971AC
	mov ip, lr, lsr #0x11
_0219329C:
	ldrb r6, [r3, #2]
	ldrsh r7, [r3]
	ldrsh r5, [r1]
	mov r8, r6, lsl #1
	ldrsh r8, [r4, r8]
	subs sb, r5, r7
	movmi r5, fp
	rsbmi sb, sb, #0
	movpl r5, #0
	cmp sb, r8
	orrge r5, r5, #2
	subge sb, sb, r8
	cmp sb, r8, asr #1
	orrge r5, r5, #1
	mov sb, r8, asr #2
	tst r5, #2
	addne sb, sb, r8
	tst r5, #1
	addne sb, sb, r8, asr #1
	tst r5, #4
	rsbne sb, sb, #0
	add r8, r7, sb
	cmp r8, lr
	movlt r8, lr
	cmp r8, lr, lsr #17
	ldrsb r7, [r2, r5]
	movgt r8, ip
	adds r6, r6, r7
	movmi r6, #0
	bmi _0219331C
	cmp r6, #0x58
	movgt r6, #0x58
_0219331C:
	and r5, r5, #0xff
	mov r5, r5, lsl #5
	strh r8, [r3]
	and r7, r5, #0xff
	strb r6, [r3, #2]
	and sl, r6, #0xff
	ldrsh r5, [r3]
	ldrsh r6, [r1, #2]
	subs sb, r6, r5
	mov r6, sl, lsl #1
	movmi r8, fp
	ldrsh r6, [r4, r6]
	rsbmi sb, sb, #0
	movpl r8, #0
	cmp sb, r6
	orrge r8, r8, #2
	subge sb, sb, r6
	cmp sb, r6, asr #1
	orrge r8, r8, #1
	mov sb, r6, asr #2
	tst r8, #2
	addne sb, sb, r6
	tst r8, #1
	addne sb, sb, r6, asr #1
	tst r8, #4
	rsbne sb, sb, #0
	add r6, r5, sb
	cmp r6, lr
	movlt r6, lr
	cmp r6, lr, lsr #17
	ldrsb r5, [r2, r8]
	movgt r6, ip
	adds sl, sl, r5
	movmi sl, #0
	bmi _021933B0
	cmp sl, #0x58
	movgt sl, #0x58
_021933B0:
	and r5, r8, #0xff
	mov r5, r5, lsl #2
	and r5, r5, #0xff
	strb sl, [r3, #2]
	strh r6, [r3]
	orr r7, r7, r5
	ldrsh r5, [r3]
	ldrsh r6, [r1, #4]
	and sl, sl, #0xff
	subs sb, r6, r5
	mov r6, sl, lsl #1
	movmi r8, fp
	ldrsh r6, [r4, r6]
	rsbmi sb, sb, #0
	movpl r8, #0
	cmp sb, r6
	orrge r8, r8, #2
	subge sb, sb, r6
	cmp sb, r6, asr #1
	orrge r8, r8, #1
	mov sb, r6, asr #2
	tst r8, #2
	addne sb, sb, r6
	tst r8, #1
	addne sb, sb, r6, asr #1
	tst r8, #4
	rsbne sb, sb, #0
	add r6, r5, sb
	cmp r6, lr
	movlt r6, lr
	cmp r6, lr, lsr #17
	ldrsb r5, [r2, r8]
	movgt r6, ip
	adds sl, sl, r5
	movmi sl, #0
	bmi _02193448
	cmp sl, #0x58
	movgt sl, #0x58
_02193448:
	and r5, r8, #0xff
	str r5, [sp, #4]
	strh r6, [r3]
	strb sl, [r3, #2]
	orr r5, r7, r5, asr #1
	strb r5, [r0]
	ldrb r7, [r3, #2]
	ldrsh r6, [r3]
	ldrsh r5, [r1, #6]
	mov r8, r7, lsl #1
	ldrsh r8, [r4, r8]
	subs sb, r5, r6
	movmi r5, fp
	rsbmi sb, sb, #0
	movpl r5, #0
	cmp sb, r8
	orrge r5, r5, #2
	subge sb, sb, r8
	cmp sb, r8, asr #1
	orrge r5, r5, #1
	mov sb, r8, asr #2
	tst r5, #2
	addne sb, sb, r8
	tst r5, #1
	addne sb, sb, r8, asr #1
	tst r5, #4
	rsbne sb, sb, #0
	add r8, r6, sb
	cmp r8, lr
	movlt r8, lr
	cmp r8, lr, lsr #17
	ldrsb r6, [r2, r5]
	movgt r8, ip
	adds r7, r7, r6
	movmi r7, #0
	bmi _021934E0
	cmp r7, #0x58
	movgt r7, #0x58
_021934E0:
	and r5, r5, #0xff
	mov r5, r5, lsl #4
	strh r8, [r3]
	and r6, r5, #0xff
	strb r7, [r3, #2]
	and sl, r7, #0xff
	ldrsh r5, [r3]
	ldrsh r7, [r1, #8]
	subs sb, r7, r5
	mov r7, sl, lsl #1
	movmi r8, fp
	ldrsh r7, [r4, r7]
	rsbmi sb, sb, #0
	movpl r8, #0
	cmp sb, r7
	orrge r8, r8, #2
	subge sb, sb, r7
	cmp sb, r7, asr #1
	orrge r8, r8, #1
	mov sb, r7, asr #2
	tst r8, #2
	addne sb, sb, r7
	tst r8, #1
	addne sb, sb, r7, asr #1
	tst r8, #4
	rsbne sb, sb, #0
	add r7, r5, sb
	cmp r7, lr
	movlt r7, lr
	cmp r7, lr, lsr #17
	ldrsb r5, [r2, r8]
	movgt r7, ip
	adds sl, sl, r5
	movmi sl, #0
	bmi _02193574
	cmp sl, #0x58
	movgt sl, #0x58
_02193574:
	and r5, r8, #0xff
	mov r5, r5, lsl #1
	and r5, r5, #0xff
	strb sl, [r3, #2]
	strh r7, [r3]
	orr r6, r6, r5
	ldrsh r5, [r3]
	ldrsh r7, [r1, #0xa]
	and sl, sl, #0xff
	subs sb, r7, r5
	mov r7, sl, lsl #1
	movmi r8, fp
	ldrsh r7, [r4, r7]
	rsbmi sb, sb, #0
	movpl r8, #0
	cmp sb, r7
	orrge r8, r8, #2
	subge sb, sb, r7
	cmp sb, r7, asr #1
	orrge r8, r8, #1
	mov sb, r7, asr #2
	tst r8, #2
	addne sb, sb, r7
	tst r8, #1
	addne sb, sb, r7, asr #1
	tst r8, #4
	rsbne sb, sb, #0
	add r5, r5, sb
	cmp r5, lr
	movlt r5, lr
	cmp r5, lr, lsr #17
	ldrsb r7, [r2, r8]
	movgt r5, ip
	adds sl, sl, r7
	movmi sl, #0
	bmi _0219360C
	cmp sl, #0x58
	movgt sl, #0x58
_0219360C:
	ldr r7, [sp, #4]
	strh r5, [r3]
	and r5, r8, #0xff
	orr r6, r6, r7, lsl #7
	str r5, [sp]
	strb sl, [r3, #2]
	orr r5, r6, r5, asr #2
	strb r5, [r0, #1]
	ldrb r7, [r3, #2]
	ldrsh r6, [r3]
	ldrsh r5, [r1, #0xc]
	mov r8, r7, lsl #1
	ldrsh r8, [r4, r8]
	subs sb, r5, r6
	movmi r5, fp
	rsbmi sb, sb, #0
	movpl r5, #0
	cmp sb, r8
	orrge r5, r5, #2
	subge sb, sb, r8
	cmp sb, r8, asr #1
	orrge r5, r5, #1
	mov sb, r8, asr #2
	tst r5, #2
	addne sb, sb, r8
	tst r5, #1
	addne sb, sb, r8, asr #1
	tst r5, #4
	rsbne sb, sb, #0
	add r8, r6, sb
	cmp r8, lr
	movlt r8, lr
	cmp r8, lr, lsr #17
	ldrsb r6, [r2, r5]
	movgt r8, ip
	adds r7, r7, r6
	movmi r7, #0
	bmi _021936AC
	cmp r7, #0x58
	movgt r7, #0x58
_021936AC:
	and r5, r5, #0xff
	mov r5, r5, lsl #3
	strh r8, [r3]
	and r6, r5, #0xff
	strb r7, [r3, #2]
	and sl, r7, #0xff
	ldrsh r7, [r1, #0xe]
	ldrsh r5, [r3]
	add r1, r1, #0x10
	subs sb, r7, r5
	mov r7, sl, lsl #1
	movmi r8, fp
	ldrsh r7, [r4, r7]
	rsbmi sb, sb, #0
	movpl r8, #0
	cmp sb, r7
	orrge r8, r8, #2
	subge sb, sb, r7
	cmp sb, r7, asr #1
	orrge r8, r8, #1
	mov sb, r7, asr #2
	tst r8, #2
	addne sb, sb, r7
	tst r8, #1
	addne sb, sb, r7, asr #1
	tst r8, #4
	rsbne sb, sb, #0
	add r7, r5, sb
	cmp r7, lr
	movlt r7, lr
	cmp r7, lr, lsr #17
	ldrsb r5, [r2, r8]
	movgt r7, ip
	adds sl, sl, r5
	movmi sl, #0
	bmi _02193744
	cmp sl, #0x58
	movgt sl, #0x58
_02193744:
	and r5, r8, #0xff
	orr r6, r6, r5
	ldr r5, [sp]
	strh r7, [r3]
	strb sl, [r3, #2]
	orr r5, r6, r5, lsl #6
	strb r5, [r0, #2]
	ldr r5, [sp, #0xc]
	add r0, r0, #3
	add r6, r5, #1
	ldr r5, [sp, #8]
	str r6, [sp, #0xc]
	cmp r6, r5
	blo _0219329C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02193784: .word 0x021971C4
_02193788: .word 0x021971AC
	arm_func_end sub_02193264

	arm_func_start sub_0219378C
sub_0219378C: ; 0x0219378C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, #0
	mov r7, r5
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr lr, _02193998 ; =0x00007FFF
	ldr ip, _0219399C ; =0x021971A8
	ldr r6, _021939A0 ; =0x021971C4
	rsb r4, r4, #0
_021937B4:
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, r5
	tst fp, #2
	beq _021937EC
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _021937F8
_021937EC:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_021937F8:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _02193810
	cmp r8, #0x58
	movgt r8, #0x58
_02193810:
	strb r8, [r3, #2]
	mov r8, sb, lsl #0x10
	mov r8, r8, asr #0x10
	strh r8, [r3]
	strh r8, [r1]
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	mov sl, sl, asr #2
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, #0
	tst fp, #2
	beq _02193860
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _0219386C
_02193860:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_0219386C:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _02193884
	cmp r8, #0x58
	movgt r8, #0x58
_02193884:
	strb r8, [r3, #2]
	mov r8, sb, lsl #0x10
	mov r8, r8, asr #0x10
	strh r8, [r3]
	strh r8, [r1, #2]
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	mov sl, sl, asr #4
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, #0
	tst fp, #2
	beq _021938D4
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _021938E0
_021938D4:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_021938E0:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _021938F8
	cmp r8, #0x58
	movgt r8, #0x58
_021938F8:
	strb r8, [r3, #2]
	mov r8, sb, lsl #0x10
	mov r8, r8, asr #0x10
	strh r8, [r3]
	strh r8, [r1, #4]
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	mov sl, sl, asr #6
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, #0
	tst fp, #2
	beq _02193948
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _02193954
_02193948:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_02193954:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _0219396C
	cmp r8, #0x58
	movgt r8, #0x58
_0219396C:
	strb r8, [r3, #2]
	mov r8, sb, lsl #0x10
	mov sb, r8, asr #0x10
	strh sb, [r3]
	add r7, r7, #1
	strh sb, [r1, #6]
	add r1, r1, #8
	add r0, r0, #1
	cmp r7, r2
	blo _021937B4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02193998: .word 0x00007FFF
_0219399C: .word 0x021971A8
_021939A0: .word 0x021971C4
	arm_func_end sub_0219378C

	arm_func_start sub_021939A4
sub_021939A4: ; 0x021939A4
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r2, r2, lsr #2
	mov fp, #0
	str r2, [sp]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	rsb r4, r4, #0
	ldr r5, _02193BDC ; =0x021971C4
	ldr ip, _02193BE0 ; =0x021971A8
	mov lr, r4, lsr #0x11
_021939CC:
	ldrb r7, [r3, #2]
	ldrsh r6, [r3]
	ldrsh r2, [r1]
	mov r8, r7, lsl #1
	ldrsh r8, [r5, r8]
	subs sb, r2, r6
	movmi r2, #2
	rsbmi sb, sb, #0
	movpl r2, #0
	cmp sb, r8
	orrge r2, r2, #1
	tst r2, #1
	moveq r8, #0
	tst r2, #2
	rsbne r8, r8, #0
	add r8, r6, r8
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r6, [ip, r2]
	movgt r8, lr
	adds r7, r7, r6
	movmi r7, #0
	bmi _02193A34
	cmp r7, #0x58
	movgt r7, #0x58
_02193A34:
	strh r8, [r3]
	strb r7, [r3, #2]
	and r6, r2, #0xff
	ldrsh sl, [r3]
	ldrsh r2, [r1, #2]
	and sb, r7, #0xff
	subs r8, r2, sl
	mov r2, sb, lsl #1
	movmi r7, #2
	ldrsh r2, [r5, r2]
	rsbmi r8, r8, #0
	movpl r7, #0
	cmp r8, r2
	orrge r7, r7, #1
	tst r7, #1
	moveq r2, #0
	tst r7, #2
	rsbne r2, r2, #0
	add r8, sl, r2
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r2, [ip, r7]
	movgt r8, lr
	adds sb, sb, r2
	movmi sb, #0
	bmi _02193AA8
	cmp sb, #0x58
	movgt sb, #0x58
_02193AA8:
	and r2, r7, #0xff
	mov r2, r2, lsl #2
	strh r8, [r3]
	and r2, r2, #0xff
	strb sb, [r3, #2]
	orr r6, r6, r2
	ldrsh sl, [r3]
	ldrsh r2, [r1, #4]
	and sb, sb, #0xff
	subs r8, r2, sl
	mov r2, sb, lsl #1
	movmi r7, #2
	ldrsh r2, [r5, r2]
	rsbmi r8, r8, #0
	movpl r7, #0
	cmp r8, r2
	orrge r7, r7, #1
	tst r7, #1
	moveq r2, #0
	tst r7, #2
	rsbne r2, r2, #0
	add r8, sl, r2
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r2, [ip, r7]
	movgt r8, lr
	adds sb, sb, r2
	movmi sb, #0
	bmi _02193B28
	cmp sb, #0x58
	movgt sb, #0x58
_02193B28:
	and r2, r7, #0xff
	mov r2, r2, lsl #4
	strh r8, [r3]
	and r2, r2, #0xff
	strb sb, [r3, #2]
	orr r6, r6, r2
	ldrsh r2, [r1, #6]
	ldrsh sl, [r3]
	and sb, sb, #0xff
	add r1, r1, #8
	subs r8, r2, sl
	mov r2, sb, lsl #1
	movmi r7, #2
	ldrsh r2, [r5, r2]
	rsbmi r8, r8, #0
	movpl r7, #0
	cmp r8, r2
	orrge r7, r7, #1
	tst r7, #1
	moveq r2, #0
	tst r7, #2
	rsbne r2, r2, #0
	add r8, sl, r2
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r2, [ip, r7]
	movgt r8, lr
	adds sb, sb, r2
	movmi sb, #0
	bmi _02193BAC
	cmp sb, #0x58
	movgt sb, #0x58
_02193BAC:
	and r2, r7, #0xff
	mov r2, r2, lsl #6
	and r2, r2, #0xff
	strh r8, [r3]
	strb sb, [r3, #2]
	orr r2, r6, r2
	strb r2, [r0], #1
	ldr r2, [sp]
	add fp, fp, #1
	cmp fp, r2
	blo _021939CC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02193BDC: .word 0x021971C4
_02193BE0: .word 0x021971A8
	arm_func_end sub_021939A4

	arm_func_start sub_02193BE4
sub_02193BE4: ; 0x02193BE4
	stmdb sp!, {r3, lr}
	ldrsh ip, [r0]
	cmp r3, #2
	strh ip, [sp]
	ldrb ip, [r0, #2]
	strb ip, [sp, #2]
	beq _02193C14
	cmp r3, #3
	beq _02193C28
	cmp r3, #4
	beq _02193C3C
	ldmia sp!, {r3, pc}
_02193C14:
	add r3, sp, #0
	add r0, r0, #4
	sub r2, r2, #4
	bl sub_0219378C
	ldmia sp!, {r3, pc}
_02193C28:
	add r3, sp, #0
	add r0, r0, #4
	sub r2, r2, #4
	bl sub_02192DD0
	ldmia sp!, {r3, pc}
_02193C3C:
	add r3, sp, #0
	add r0, r0, #4
	sub r2, r2, #4
	bl sub_02192AE8
	ldmia sp!, {r3, pc}
	arm_func_end sub_02193BE4

	arm_func_start sub_02193C50
sub_02193C50: ; 0x02193C50
	stmdb sp!, {r4, lr}
	ldrsh r4, [r3]
	ldr ip, [sp, #8]
	mov lr, #0
	strh r4, [r0]
	ldrb r4, [r3, #2]
	cmp ip, #2
	strb r4, [r0, #2]
	strb lr, [r0, #3]
	beq _02193C8C
	cmp ip, #3
	beq _02193C98
	cmp ip, #4
	beq _02193CA4
	ldmia sp!, {r4, pc}
_02193C8C:
	add r0, r0, #4
	bl sub_021939A4
	ldmia sp!, {r4, pc}
_02193C98:
	add r0, r0, #4
	bl sub_02193264
	ldmia sp!, {r4, pc}
_02193CA4:
	add r0, r0, #4
	bl sub_02192C3C
	ldmia sp!, {r4, pc}
	arm_func_end sub_02193C50

	arm_func_start sub_02193CB0
sub_02193CB0: ; 0x02193CB0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	bl sub_0207BB84
	ldr r2, _02193D8C ; =0x02197444
	ldr r1, _02193D90 ; =0x021973DC
	mov r3, #1
	strh r0, [r2]
	str r3, [r1]
	mov r4, #0
	str r4, [r2, #0x20]
	ldr r0, _02193D94 ; =0x02199898
	str r4, [r2, #4]
	ldr r0, [r0, #0x10]
	mov sb, #0
	cmp r0, #1
	movne r4, #4
	str r4, [r2, #0x1c]
	ldr r2, _02193D98 ; =0x02197278
	mov r0, #0x44
	add r1, r2, r4, lsl #1
	ldrb r3, [r1, #1]
	ldrb r2, [r2, r4, lsl #1]
	ldr r1, _02193D8C ; =0x02197444
	mov r4, #0x440
	mla r0, r2, r0, r3
	add r2, r0, #0xc
	str r4, [r1, #0x24]
	ldr r0, _02193D9C ; =0x02197A80
	str r2, [r1, #0xc]
	str sb, [r0, #0x8c0]
	str sb, [r0, #0x8c4]
	str sb, [r0, #0x8cc]
	str sb, [r0, #0x8c8]
	str sb, [r0, #0x8d0]
	str sb, [r0, #0x8d4]
	bl sub_021969F8
	mov r8, sb
	ldr r7, _02193DA0 ; =0x02197470
	ldr r6, _02193DA4 ; =0x0219747C
	mvn r5, #0
	mov r4, #0x94
	b _02193D74
_02193D54:
	mov r0, sb
	str r8, [r7, sb, lsl #2]
	bl sub_02194E8C
	mla r0, sb, r4, r6
	mov r1, sb
	mov r2, r5
	bl sub_02195164
	add sb, sb, #1
_02193D74:
	cmp sb, #3
	blo _02193D54
	bl sub_02194AA4
	bl sub_02196B0C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02193D8C: .word 0x02197444
_02193D90: .word 0x021973DC
_02193D94: .word 0x02199898
_02193D98: .word 0x02197278
_02193D9C: .word 0x02197A80
_02193DA0: .word 0x02197470
_02193DA4: .word 0x0219747C
	arm_func_end sub_02193CB0

	arm_func_start sub_02193DA8
sub_02193DA8: ; 0x02193DA8
	ldr r0, _02193DB8 ; =0x02197444
	mov r1, #0
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
_02193DB8: .word 0x02197444
	arm_func_end sub_02193DA8

	arm_func_start sub_02193DBC
sub_02193DBC: ; 0x02193DBC
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r0
	mov r4, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02193EE4 ; =0x02197444
	ldr r0, [r0, #0x20]
	cmp r0, #3
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0xc]
	cmp r0, #2
	cmpne r0, #3
	movne r0, r4
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	ldr r1, _02193EE8 ; =0x02197470
	b _02193E18
_02193E04:
	ldr r0, [r1, r5, lsl #2]
	cmp r0, r6
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
_02193E18:
	cmp r5, #3
	blo _02193E04
	mov r5, #0
	ldr r1, _02193EE8 ; =0x02197470
	b _02193E40
_02193E2C:
	ldr r0, [r1, r5, lsl #2]
	cmp r0, #0
	streq r6, [r1, r5, lsl #2]
	beq _02193E48
	add r5, r5, #1
_02193E40:
	cmp r5, #3
	blo _02193E2C
_02193E48:
	ldr r7, _02193EE4 ; =0x02197444
	ldr r1, _02193EEC ; =0x0219747C
	ldr r2, [r7, #0x20]
	mov r0, #0x94
	add r2, r2, #1
	str r2, [r7, #0x20]
	ldr r3, [r7, #4]
	ldr r2, [r6, #8]
	mla r0, r5, r0, r1
	orr r1, r3, r2
	str r1, [r7, #4]
	ldrb r2, [r6, #5]
	mov r1, r5
	bl sub_02195164
	mov r0, r5
	bl sub_02194E8C
	ldr r0, [r6, #0xc]
	cmp r0, #2
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x20]
	cmp r0, #1
	bne _02193EDC
	bl sub_021967C0
	bl sub_0207BB84
	strh r0, [r7]
	strh r4, [r7, #0x10]
	strb r4, [r7, #0x12]
	mov r1, #1
	ldr r0, _02193EF0 ; =0x02197A80
	str r1, [r7, #0x14]
	str r4, [r0, #0x8c0]
	str r4, [r0, #0x8c4]
	str r4, [r0, #0x8cc]
	str r4, [r0, #0x8c8]
	str r4, [r0, #0x8d0]
	str r4, [r0, #0x8d4]
_02193EDC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02193EE4: .word 0x02197444
_02193EE8: .word 0x02197470
_02193EEC: .word 0x0219747C
_02193EF0: .word 0x02197A80
	arm_func_end sub_02193DBC

	arm_func_start sub_02193EF4
sub_02193EF4: ; 0x02193EF4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _02193F94 ; =0x02197470
	mov r5, r0
	mov r4, #0
_02193F04:
	ldr r0, [r3, r4, lsl #2]
	cmp r0, r5
	bne _02193F60
	ldr r1, _02193F98 ; =0x0219747C
	mov r0, #0x94
	mla r0, r4, r0, r1
	ldr r6, _02193F9C ; =0x02197444
	mov r2, #0
	ldr r1, [r6, #0x20]
	str r2, [r3, r4, lsl #2]
	sub r1, r1, #1
	str r1, [r6, #0x20]
	bl sub_021951F0
	mov r0, r4
	bl sub_02194EC8
	mov r0, r4
	bl sub_02194AE4
	ldr r0, [r5, #8]
	ldr r1, [r6, #4]
	mvn r0, r0
	and r0, r1, r0
	str r0, [r6, #4]
	b _02193F6C
_02193F60:
	add r4, r4, #1
	cmp r4, #3
	blo _02193F04
_02193F6C:
	ldr r4, _02193F9C ; =0x02197444
	ldr r0, [r4, #0x20]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #1
	str r0, [r4, #0x14]
	bl sub_021967C0
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02193F94: .word 0x02197470
_02193F98: .word 0x0219747C
_02193F9C: .word 0x02197444
	arm_func_end sub_02193EF4

	arm_func_start sub_02193FA0
sub_02193FA0: ; 0x02193FA0
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _0219409C ; =0x02197444
	mov r2, r1
	ldr r1, [r3, #0x24]
	mov r5, #0
	cmp r2, r1
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r3, #0x20]
	cmp r1, #0
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, r5
	ldr r3, _021940A0 ; =0x02197470
	b _02193FFC
_02193FDC:
	ldr r1, [r3, r4, lsl #2]
	cmp r1, #0
	beq _02193FF8
	ldr r1, [r1, #0xc]
	cmp r1, #2
	moveq r5, #1
	beq _02194004
_02193FF8:
	add r4, r4, #1
_02193FFC:
	cmp r4, #3
	blo _02193FDC
_02194004:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _021940A4 ; =0x02197A80
	ldr r4, _021940A4 ; =0x02197A80
	ldr r1, [r1, #0x8c4]
	ldr r3, _021940A8 ; =0x5F564354
	tst r1, #1
	ldr r1, _0219409C ; =0x02197444
	movne r5, #0
	moveq r5, #0x460
	ldr r1, [r1, #0x1c]
	str r3, [r4, r5]
	cmp r1, #2
	add r5, r4, r5
	blt _0219404C
	add r1, r5, #0x10
	b _02194050
_0219404C:
	add r1, r5, #0xc
_02194050:
	bl sub_020786E8
	ldr r0, _0219409C ; =0x02197444
	mov r4, #0x40
	ldrh r2, [r0]
	strb r4, [r5, #4]
	add r1, r2, #1
	strh r1, [r0]
	strh r2, [r5, #6]
	bl sub_0207BB0C
	mov r2, r4
	mov r3, #0
	bl sub_0208D5C4
	str r0, [r5, #8]
	ldr r1, _021940A4 ; =0x02197A80
	mov r0, #1
	ldr r2, [r1, #0x8c4]
	add r2, r2, #1
	str r2, [r1, #0x8c4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_0219409C: .word 0x02197444
_021940A0: .word 0x02197470
_021940A4: .word 0x02197A80
_021940A8: .word 0x5F564354
	arm_func_end sub_02193FA0

	arm_func_start sub_021940AC
sub_021940AC: ; 0x021940AC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _021942E8 ; =0x0219747C
	mov sl, r2
	mov r2, #0x94
	mla r6, sl, r2, r4
	str r0, [sp]
	mov r0, sl
	str r1, [sp, #4]
	mov fp, r3
	mov r7, #1
	bl sub_02195154
	movs r4, r0
	beq _021942C4
_021940E4:
	bl sub_0207BB0C
	mov r8, r0
	mov r0, sl
	mov sb, r1
	bl sub_021950B4
	movs r5, r0
	beq _021942AC
	ldr r4, [r5, #0x46c]
	adds r1, r8, #0x34
	ldr r2, [r5, #0x470]
	adc r0, sb, #0
	cmp r2, r0
	cmpeq r4, r1
	bls _02194194
	ldr r0, [r5, #0x45c]
	mov r4, #1
	cmp r0, #0
	mov r7, #0
	bne _02194188
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _02194188
	ldr r0, [r6, #0x20]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x3c]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0x474]
	bl sub_020786E8
	ldr r0, [r6, #0x3c]
	bl sub_0219678C
	str r7, [r6, #0x3c]
	cmp fp, #0
	ldrneb r0, [r5, #0x10]
	ldrne r1, [fp]
	add sp, sp, #8
	orrne r0, r1, r4, lsl r0
	strne r0, [fp]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02194188:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02194194:
	ldr r0, _021942EC ; =0x00008B4C
	adds r1, r4, r0
	adc r0, r2, #0
	cmp sb, r0
	cmpeq r8, r1
	bls _021941D4
	ldr r2, [r5, #0x18]
	mov r0, r6
	mov r1, r5
	str r2, [r6, #0x58]
	bl sub_0219521C
	mov r4, r0
	mov r0, sl
	bl sub_021950B4
	mov r7, #0
	b _021942BC
_021941D4:
	ldr r1, [r6, #0x58]
	ldr r2, [r5, #0x18]
	add r0, r1, #1
	cmp r0, r2
	cmpne r1, #0
	beq _02194208
	cmp r1, r2
	bhi _02194208
	ldr r0, [r5, #0x45c]
	cmp r0, #0
	ldreq r0, [r6, #0x14]
	addeq r0, r0, #1
	streq r0, [r6, #0x14]
_02194208:
	ldr r0, [r5, #0x18]
	cmp r7, #0
	str r0, [r6, #0x58]
	ldrne r0, [r6, #0x70]
	cmpne r0, #0
	beq _02194248
	mov r0, r6
	mov r1, r5
	bl sub_0219521C
	mov r4, r0
	mov r0, sl
	bl sub_021950B4
	ldr r0, [r6, #0x70]
	sub r0, r0, #1
	str r0, [r6, #0x70]
	b _021942BC
_02194248:
	ldr r2, [r5, #0x464]
	ldr r0, [r6, #0x28]
	subs r1, r8, r2
	sub r0, r1, r0
	sub r0, r0, r1
	str r1, [r6, #0x28]
	add r0, r1, r0, lsr #4
	str r0, [r6, #0x2c]
	str r0, [r6]
	ldr r0, [r5, #0x474]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	mov r4, #1
	bl sub_020786E8
	mov r0, r6
	mov r1, r5
	bl sub_0219521C
	cmp fp, #0
	ldrneb r0, [r5, #0x10]
	ldrne r1, [fp]
	add sp, sp, #8
	orrne r0, r1, r4, lsl r0
	strne r0, [fp]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021942AC:
	add sp, sp, #8
	str r4, [r6, #8]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021942BC:
	cmp r4, #0
	bne _021940E4
_021942C4:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _021942DC
	bl sub_0219678C
	mov r0, #0
	str r0, [r6, #0x3c]
_021942DC:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021942E8: .word 0x0219747C
_021942EC: .word 0x00008B4C
	arm_func_end sub_021940AC

	arm_func_start sub_021942F0
sub_021942F0: ; 0x021942F0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r5, r2
	mov r7, r0
	movne r0, #0
	strne r0, [r5]
	ldr r0, _02194404 ; =0x02197444
	mov r6, r1
	ldr r1, [r0, #0x24]
	mov r4, #0
	cmp r6, r1
	bne _021943CC
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021943CC
	mov r8, r4
_0219432C:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl sub_021940AC
	cmp r0, #1
	moveq r4, #1
	beq _02194358
	add r8, r8, #1
	cmp r8, #3
	blo _0219432C
_02194358:
	cmp r4, #0
	beq _021943B8
	add sb, r8, #1
	cmp sb, #3
	moveq r4, #1
	beq _021943E0
	bhs _021943E0
	ldr r8, _02194408 ; =0x02197638
_02194378:
	mov r0, r8
	mov r1, r6
	mov r2, sb
	mov r3, r5
	bl sub_021940AC
	cmp r0, #1
	bne _021943A8
	mov r0, r7
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl sub_02196DCC
_021943A8:
	add sb, sb, #1
	cmp sb, #3
	blo _02194378
	b _021943E0
_021943B8:
	mov r1, r7
	mov r2, r6
	mov r0, #0
	bl sub_0207869C
	b _021943E0
_021943CC:
	mov r4, #0
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl sub_0207869C
_021943E0:
	ldr r0, _02194404 ; =0x02197444
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021943FC
	mov r0, r7
	mov r1, r6
	bl sub_02196B88
_021943FC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02194404: .word 0x02197444
_02194408: .word 0x02197638
	arm_func_end sub_021942F0

	arm_func_start sub_0219440C
sub_0219440C: ; 0x0219440C
	cmp r0, #5
	movge r0, #0
	bxge lr
	ldr r1, _02194470 ; =0x02199898
	ldr r1, [r1, #0x10]
	cmp r1, #1
	beq _02194434
	cmp r0, #1
	movls r0, #0
	bxls lr
_02194434:
	ldr r2, _02194474 ; =0x02197279
	ldr r1, _02194478 ; =0x02197278
	ldrb ip, [r2, r0, lsl #1]
	ldrb r3, [r1, r0, lsl #1]
	mov r1, #0x44
	ldr r2, _0219447C ; =0x02197444
	mla r1, r3, r1, ip
	add r1, r1, #0xc
	str r1, [r2, #0xc]
	str r0, [r2, #0x1c]
	mov r0, #0
	strh r0, [r2, #0x10]
	strb r0, [r2, #0x12]
	mov r0, #1
	bx lr
	.align 2, 0
_02194470: .word 0x02199898
_02194474: .word 0x02197279
_02194478: .word 0x02197278
_0219447C: .word 0x02197444
	arm_func_end sub_0219440C

	arm_func_start sub_02194480
sub_02194480: ; 0x02194480
	stmdb sp!, {r4, lr}
	ldr r1, _021944A8 ; =0x021973DC
	mov r4, r0
	str r4, [r1]
	bl sub_021967C0
	cmp r4, #0
	ldreq r0, _021944AC ; =0x02197444
	moveq r1, #1
	streq r1, [r0, #8]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021944A8: .word 0x021973DC
_021944AC: .word 0x02197444
	arm_func_end sub_02194480

	arm_func_start sub_021944B0
sub_021944B0: ; 0x021944B0
	ldr r1, _021944BC ; =0x02197444
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
_021944BC: .word 0x02197444
	arm_func_end sub_021944B0

	arm_func_start sub_021944C0
sub_021944C0: ; 0x021944C0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r6, _021946C4 ; =0x02197A80
	ldr r4, _021946C8 ; =0x02197444
	ldr r1, [r6, #0x8c4]
	ldr r0, [r6, #0x8c0]
	ldr sl, [r4, #0x1c]
	sub r0, r1, r0
	cmp r0, #1
	subhi r0, r1, #1
	strhi r0, [r6, #0x8c0]
	movhi r0, #1
	cmp r0, #0
	mov r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0x8c0]
	ldr r1, [r4, #0x24]
	tst r0, #1
	movne r0, #0
	moveq r0, #0x460
	add r8, r6, r0
	add r7, r8, #0xc
	cmp sl, #2
	addge r7, r7, #4
	mov r0, r7
	bl sub_02196A20
	ldr r1, _021946CC ; =0x040002B0
	mov fp, r0
	strh r5, [r1]
	str fp, [r1, #8]
_02194538:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _02194538
	ldr r0, [r4, #0x18]
	ldr r1, _021946D0 ; =0x040002B4
	cmp r0, #0
	ldr sb, [r1]
	beq _02194568
	ldr r1, [r4, #0x24]
	mov r0, r7
	mov r2, sb
	bl sub_02196DAC
_02194568:
	ldr r0, _021946D4 ; =0x021973DC
	strb sl, [r8, #5]
	ldr r0, [r0]
	cmp r0, #0
	beq _021945D0
	mov r0, fp
	mov r1, sb
	mov r2, r5
	bl sub_0219682C
	str r0, [r4, #0x28]
	cmp r0, #0
	beq _021945B0
	cmp r0, #1
	beq _021945C4
	cmp r0, #3
	moveq r0, #0x41
	streqb r0, [r8, #4]
	b _021945D0
_021945B0:
	ldr r1, [r6, #0x8c0]
	mov r0, r5
	add r1, r1, #1
	str r1, [r6, #0x8c0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021945C4:
	ldrb r0, [r8, #5]
	orr r0, r0, #0x80
	strb r0, [r8, #5]
_021945D0:
	ldr r0, _021946D4 ; =0x021973DC
	ldr r0, [r0]
	cmp r0, #0
	bne _021945F8
	ldr r0, [r4, #8]
	cmp r0, #0
	ldrneb r0, [r8, #5]
	orrne r0, r0, #0x80
	strneb r0, [r8, #5]
	strne r5, [r4, #8]
_021945F8:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldrneb r0, [r8, #5]
	orrne r0, r0, #0x80
	strneb r0, [r8, #5]
	strne r5, [r4, #0x14]
	cmp sl, #2
	blt _02194648
	ldrb r0, [r8, #5]
	ldr r3, _021946D8 ; =0x02197454
	mov r1, r7
	tst r0, #0x80
	strneh r5, [r4, #0x10]
	strneb r5, [r4, #0x12]
	str sl, [sp]
	ldr r2, [r4, #0x24]
	sub r0, r7, #4
	mov r2, r2, lsr #1
	bl sub_02193C50
	b _02194684
_02194648:
	cmp sl, #1
	bne _02194668
	ldr r2, [r4, #0x24]
	mov r0, r7
	mov r1, r7
	mov r2, r2, lsr #1
	bl sub_02194D30
	b _02194684
_02194668:
	cmp sl, #0
	bne _02194684
	ldr r2, [r4, #0x24]
	mov r0, r7
	mov r1, r7
	mov r2, r2, lsr #1
	bl sub_02194E30
_02194684:
	ldr r2, [r4, #4]
	ldr r0, _021946DC ; =0x02199898
	str r2, [r6, #0x8cc]
	ldrb r0, [r0]
	mov r1, #1
	mvn r0, r1, lsl r0
	and r0, r2, r0
	str r0, [r6, #0x8cc]
	bl sub_02076FB0
	sub r0, r0, #1
	str r0, [r6, #0x8d4]
	cmp r0, #7
	movgt r0, #0
	movle r0, r8
	strle r5, [r6, #0x8d0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021946C4: .word 0x02197A80
_021946C8: .word 0x02197444
_021946CC: .word 0x040002B0
_021946D0: .word 0x040002B4
_021946D4: .word 0x021973DC
_021946D8: .word 0x02197454
_021946DC: .word 0x02199898
	arm_func_end sub_021944C0

	arm_func_start sub_021946E0
sub_021946E0: ; 0x021946E0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _021948B4 ; =0x02197444
	mov sl, r0
	ldr r0, [r4, #0x20]
	ldr r7, [sp, #0x28]
	mov sb, r1
	mov r8, r2
	mov fp, r3
	mov r5, #0
	cmp r0, #0
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, _021948B8 ; =0x0219747C
	mov r4, r5
	mov r0, #0x94
_0219471C:
	mla r3, r4, r0, r2
	ldr r1, [r3, #0x38]
	cmp sl, r1
	moveq r5, r3
	beq _0219473C
	add r4, r4, #1
	cmp r4, #3
	blo _0219471C
_0219473C:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sb, #4]
	cmp r0, #0x41
	bne _02194770
	ldrh r2, [sb, #6]
	mov r0, #0
	mov r1, #1
	str r2, [r5, #0x30]
	str r0, [r5, #0x4c]
	str r1, [r5, #0x6c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02194770:
	cmp r0, #0x40
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sb, #5]
	and r6, r0, #0x7f
	cmp r6, #5
	str r6, [r5, #0x24]
	movge r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021948BC ; =0x02197279
	ldr r0, _021948C0 ; =0x02197278
	ldrb r2, [r1, r6, lsl #1]
	ldrb r1, [r0, r6, lsl #1]
	mov r0, #0x44
	mla r0, r1, r0, r2
	add r0, r0, #0xc
	cmp r8, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	movne r0, #1
	movne r1, r0, lsl sl
	ldr r0, _021948B4 ; =0x02197444
	moveq r1, #1
	ldr r0, [r0, #4]
	tst r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_02196758
	movs r4, r0
	bne _02194824
	ldr r0, [r5, #0x34]
	bl sub_02194EC8
	ldr r0, [r5, #0x34]
	bl sub_02194AE4
	bl sub_02196758
	movs r4, r0
	bne _02194818
	bl sub_02194F38
	bl sub_02194B40
	bl sub_02196758
	mov r4, r0
_02194818:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02194824:
	add r0, r4, #0x5c
	add r0, r0, #0x400
	sub r2, r8, #0xc
	sub r1, r0, r2
	add r0, sb, #0xc
	str r1, [sp]
	bl sub_02078920
	ldr r0, [r5, #0x34]
	sub r1, r8, #0xc
	strb r0, [r4, #0x11]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	str r0, [r4, #0x474]
	str r1, [r4, #0x14]
	str fp, [r4, #0x464]
	str r7, [r4, #0x468]
	strb sl, [r4, #0x10]
	ldrb r2, [sb, #5]
	mov r0, r5
	mov r1, r4
	and r2, r2, #0x80
	str r2, [r4, #0x45c]
	ldr r2, [sb, #8]
	str r2, [r4, #0x460]
	ldrh r2, [sb, #6]
	str r2, [r4, #0x18]
	bl sub_0219533C
	cmp r0, #0
	mov r0, r4
	bne _021948A8
	bl sub_0219678C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021948A8:
	bl sub_02194BAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021948B4: .word 0x02197444
_021948B8: .word 0x0219747C
_021948BC: .word 0x02197279
_021948C0: .word 0x02197278
	arm_func_end sub_021946E0

	arm_func_start sub_021948C4
sub_021948C4: ; 0x021948C4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	bl sub_02194C30
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_0207C0E4
	ldrb r6, [r4, #0x11]
	mov r7, r0
	mov r0, r6
	bl sub_02194C40
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _02194980
_021948FC:
	mov r0, r6
	bl sub_02194C50
	mov r8, r0
	ldr r3, [r8, #0xc]
	cmp r3, #2
	blt _02194928
	ldr r0, [r8, #0x474]
	ldr r2, [r8, #0x14]
	add r1, r8, #0x1c
	bl sub_02193BE4
	b _02194948
_02194928:
	cmp r3, #1
	ldr r0, [r8, #0x474]
	ldr r2, [r8, #0x14]
	add r1, r8, #0x1c
	bne _02194944
	bl sub_02194DDC
	b _02194948
_02194944:
	bl sub_02194E5C
_02194948:
	add r1, r8, #0x1c
	mov r0, r8
	str r1, [r8, #0x474]
	bl sub_02194CA0
	ldrb r1, [r8, #0x11]
	mov r0, r8
	bl sub_02194FB8
	cmp r0, #0
	bge _02194974
	mov r0, r8
	bl sub_0219678C
_02194974:
	add r4, r4, #1
	cmp r4, r5
	blt _021948FC
_02194980:
	mov r0, r7
	bl sub_0207C0F8
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_021948C4

	arm_func_start sub_02194990
sub_02194990: ; 0x02194990
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _02194A94 ; =0x02197444
	ldr r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _02194A98 ; =0x02197A80
	ldr r0, [r4, #0x8c8]
	cmp r0, #0
	bne _021949D8
	bl sub_021944C0
	str r0, [r4, #0x8c8]
	cmp r0, #0
	ldrne r0, [r5, #0x18]
	cmpne r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021949D8:
	ldr r0, _02194A9C ; =0x02199898
	mov r5, #1
	ldr r0, [r0, #0x10]
	cmp r0, #2
	bne _02194A0C
	ldr r2, [r4, #0x8d0]
	ldr r0, _02194AA0 ; =0x02197282
	add r1, r2, #1
	str r1, [r4, #0x8d0]
	ldr r1, [r4, #0x8d4]
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	ldrb r5, [r2, r0]
_02194A0C:
	mov r4, #0
	mov r8, #0x80000000
	ldr r7, _02194A98 ; =0x02197A80
	ldr r6, _02194A94 ; =0x02197444
	b _02194A84
_02194A20:
	ldr r1, [r7, #0x8cc]
	mov r2, r1
	clz r2, r2
	cmp r2, #0x20
	beq _02194A8C
	mvn r0, r8, lsr r2
	and r0, r1, r0
	str r0, [r7, #0x8cc]
	rsb r0, r2, #0x1f
	ldr r1, [r7, #0x8c8]
	ldr r2, [r6, #0xc]
	and r0, r0, #0xff
	bl sub_02168B18
	ldr r0, [r7, #0x8cc]
	cmp r0, #0
	bne _02194A80
	ldr r0, _02194A98 ; =0x02197A80
	mov r1, #0
	ldr r2, [r0, #0x8c0]
	add r2, r2, #1
	str r2, [r0, #0x8c0]
	str r1, [r0, #0x8c8]
	str r1, [r0, #0x8cc]
	b _02194A8C
_02194A80:
	add r4, r4, #1
_02194A84:
	cmp r4, r5
	blt _02194A20
_02194A8C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02194A94: .word 0x02197444
_02194A98: .word 0x02197A80
_02194A9C: .word 0x02199898
_02194AA0: .word 0x02197282
	arm_func_end sub_02194990

	arm_func_start sub_02194AA4
sub_02194AA4: ; 0x02194AA4
	stmdb sp!, {r3, lr}
	bl sub_0207C0E4
	mov r3, #0
	ldr r1, _02194ADC ; =0x02198358
	mov r2, r3
	str r3, [r1, #4]
	str r3, [r1]
	ldr r1, _02194AE0 ; =0x02198360
_02194AC4:
	str r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #3
	blt _02194AC4
	bl sub_0207C0F8
	ldmia sp!, {r3, pc}
	.align 2, 0
_02194ADC: .word 0x02198358
_02194AE0: .word 0x02198360
	arm_func_end sub_02194AA4

	arm_func_start sub_02194AE4
sub_02194AE4: ; 0x02194AE4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_0207C0E4
	mov r4, r0
	mov r0, r6
	bl sub_02194C50
	movs r5, r0
	beq _02194B24
_02194B04:
	mov r0, r5
	bl sub_02194CA0
	mov r0, r5
	bl sub_0219678C
	mov r0, r6
	bl sub_02194C50
	movs r5, r0
	bne _02194B04
_02194B24:
	ldr r1, _02194B3C ; =0x02198360
	mov r2, #0
	mov r0, r4
	str r2, [r1, r6, lsl #2]
	bl sub_0207C0F8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02194B3C: .word 0x02198360
	arm_func_end sub_02194AE4

	arm_func_start sub_02194B40
sub_02194B40: ; 0x02194B40
	stmdb sp!, {r3, r4, r5, lr}
	bl sub_0207C0E4
	ldr r1, _02194BA4 ; =0x02198358
	mov r4, r0
	ldr r5, [r1]
	cmp r5, #0
	beq _02194B70
_02194B5C:
	mov r0, r5
	ldr r5, [r5, #8]
	bl sub_0219678C
	cmp r5, #0
	bne _02194B5C
_02194B70:
	ldr r0, _02194BA4 ; =0x02198358
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	ldr r0, _02194BA8 ; =0x02198360
	mov r1, r2
_02194B88:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blt _02194B88
	mov r0, r4
	bl sub_0207C0F8
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02194BA4: .word 0x02198358
_02194BA8: .word 0x02198360
	arm_func_end sub_02194B40

	arm_func_start sub_02194BAC
sub_02194BAC: ; 0x02194BAC
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_0207C0E4
	ldr r1, _02194C28 ; =0x02198358
	ldr r2, [r1]
	cmp r2, #0
	bne _02194BE8
	str r4, [r1]
	mov r3, #0
	str r3, [r4, #4]
	ldr r2, [r1]
	str r3, [r2, #8]
	ldr r2, [r1]
	str r2, [r1, #4]
	b _02194C04
_02194BE8:
	ldr r3, [r1, #4]
	mov r2, #0
	str r3, [r4, #4]
	str r2, [r4, #8]
	ldr r2, [r1, #4]
	str r4, [r2, #8]
	str r4, [r1, #4]
_02194C04:
	ldrb r2, [r4, #0x11]
	ldr r5, _02194C2C ; =0x02198360
	ldr r1, [r5, r2, lsl #2]
	add r1, r1, #1
	str r1, [r5, r2, lsl #2]
	bl sub_0207C0F8
	ldrb r0, [r4, #0x11]
	ldr r0, [r5, r0, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02194C28: .word 0x02198358
_02194C2C: .word 0x02198360
	arm_func_end sub_02194BAC

	arm_func_start sub_02194C30
sub_02194C30: ; 0x02194C30
	ldr r0, _02194C3C ; =0x02198358
	ldr r0, [r0]
	bx lr
	.align 2, 0
_02194C3C: .word 0x02198358
	arm_func_end sub_02194C30

	arm_func_start sub_02194C40
sub_02194C40: ; 0x02194C40
	ldr r1, _02194C4C ; =0x02198360
	ldr r0, [r1, r0, lsl #2]
	bx lr
	.align 2, 0
_02194C4C: .word 0x02198360
	arm_func_end sub_02194C40

	arm_func_start sub_02194C50
sub_02194C50: ; 0x02194C50
	stmdb sp!, {r3, r4, r5, lr}
	ldr r1, _02194C9C ; =0x02198358
	mov r5, r0
	ldr r4, [r1]
	bl sub_0207C0E4
	cmp r4, #0
	beq _02194C90
_02194C6C:
	ldrb r1, [r4, #0x11]
	cmp r1, r5
	bne _02194C84
	bl sub_0207C0F8
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_02194C84:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _02194C6C
_02194C90:
	bl sub_0207C0F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02194C9C: .word 0x02198358
	arm_func_end sub_02194C50

	arm_func_start sub_02194CA0
sub_02194CA0: ; 0x02194CA0
	stmdb sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl sub_0207C0E4
	ldr r2, [r4, #4]
	cmp r2, #0
	ldrne r1, [r4, #8]
	strne r1, [r2, #8]
	bne _02194CD8
	ldr r2, [r4, #8]
	ldr r1, _02194D28 ; =0x02198358
	cmp r2, #0
	str r2, [r1]
	movne r1, #0
	strne r1, [r2, #4]
_02194CD8:
	ldr r2, [r4, #8]
	cmp r2, #0
	ldrne r1, [r4, #4]
	strne r1, [r2, #4]
	bne _02194D04
	ldr r2, [r4, #4]
	ldr r1, _02194D28 ; =0x02198358
	cmp r2, #0
	str r2, [r1, #4]
	movne r1, #0
	strne r1, [r2, #8]
_02194D04:
	ldrb r2, [r4, #0x11]
	ldr r5, _02194D2C ; =0x02198360
	ldr r1, [r5, r2, lsl #2]
	sub r1, r1, #1
	str r1, [r5, r2, lsl #2]
	bl sub_0207C0F8
	ldrb r0, [r4, #0x11]
	ldr r0, [r5, r0, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02194D28: .word 0x02198358
_02194D2C: .word 0x02198360
	arm_func_end sub_02194CA0

	arm_func_start sub_02194D30
sub_02194D30: ; 0x02194D30
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr ip, _02194DD4 ; =0x00001FDF
	ldr r3, _02194DD8 ; =0x021973E0
	mov lr, #0xff
	mov r4, #0x7f
_02194D50:
	mov r5, r7, lsl #1
	ldrsh r5, [r1, r5]
	mov fp, r3
	movs sl, r5, asr #2
	movmi r6, r4
	ldr r5, _02194DD4 ; =0x00001FDF
	rsbmi sl, sl, #0
	movpl r6, lr
	cmp sl, r5
	movgt sl, ip
	mov r5, #0
	add sb, sl, #0x21
_02194D80:
	ldr r8, [fp], #4
	cmp sb, r8
	ble _02194D9C
	add r5, r5, #1
	cmp r5, #8
	blt _02194D80
	mov r5, #8
_02194D9C:
	cmp r5, #8
	eorge r5, r6, #0x7f
	bge _02194DC0
	add sb, sl, #0x21
	add r8, r5, #1
	mov r8, sb, asr r8
	and r8, r8, #0xf
	orr r5, r8, r5, lsl #4
	eor r5, r5, r6
_02194DC0:
	strb r5, [r0, r7]
	add r7, r7, #1
	cmp r7, r2
	blo _02194D50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02194DD4: .word 0x00001FDF
_02194DD8: .word 0x021973E0
	arm_func_end sub_02194D30

	arm_func_start sub_02194DDC
sub_02194DDC: ; 0x02194DDC
	stmdb sp!, {r4, lr}
	mov r4, #0
	cmp r2, #0
	ldmlsia sp!, {r4, pc}
_02194DEC:
	ldrb r3, [r0, r4]
	mvn lr, r3
	mov r3, lr, lsl #0x1c
	mov ip, r3, lsr #0x19
	and r3, lr, #0x70
	add ip, ip, #0x84
	mov r3, r3, asr #4
	mov r3, ip, lsl r3
	tst lr, #0x80
	rsbne ip, r3, #0x84
	subeq ip, r3, #0x84
	mov r3, r4, lsl #1
	add r4, r4, #1
	strh ip, [r1, r3]
	cmp r4, r2
	blo _02194DEC
	ldmia sp!, {r4, pc}
	arm_func_end sub_02194DDC

	arm_func_start sub_02194E30
sub_02194E30: ; 0x02194E30
	cmp r2, #0
	mov ip, #0
	bxls lr
_02194E3C:
	mov r3, ip, lsl #1
	ldrsh r3, [r1, r3]
	mov r3, r3, asr #8
	strb r3, [r0, ip]
	add ip, ip, #1
	cmp ip, r2
	blo _02194E3C
	bx lr
	arm_func_end sub_02194E30

	arm_func_start sub_02194E5C
sub_02194E5C: ; 0x02194E5C
	stmdb sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	ldmlsia sp!, {r3, pc}
_02194E6C:
	ldrsb ip, [r0, lr]
	mov r3, lr, lsl #1
	add lr, lr, #1
	mov ip, ip, lsl #8
	strh ip, [r1, r3]
	cmp lr, r2
	blo _02194E6C
	ldmia sp!, {r3, pc}
	arm_func_end sub_02194E5C

	arm_func_start sub_02194E8C
sub_02194E8C: ; 0x02194E8C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0207C0E4
	ldr r3, _02194EBC ; =0x02198384
	mov ip, #0
	ldr r2, _02194EC0 ; =0x0219836C
	ldr r1, _02194EC4 ; =0x02198378
	str ip, [r3, r4, lsl #2]
	str ip, [r2, r4, lsl #2]
	str ip, [r1, r4, lsl #2]
	bl sub_0207C0F8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02194EBC: .word 0x02198384
_02194EC0: .word 0x0219836C
_02194EC4: .word 0x02198378
	arm_func_end sub_02194E8C

	arm_func_start sub_02194EC8
sub_02194EC8: ; 0x02194EC8
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl sub_0207C0E4
	ldr r7, _02194F2C ; =0x0219836C
	mov r4, r0
	ldr r0, [r7, r5, lsl #2]
	cmp r0, #0
	beq _02194F0C
	mov r6, #0
_02194EEC:
	ldr r1, [r0, #8]
	str r1, [r7, r5, lsl #2]
	cmp r1, #0
	strne r6, [r1, #4]
	bl sub_0219678C
	ldr r0, [r7, r5, lsl #2]
	cmp r0, #0
	bne _02194EEC
_02194F0C:
	ldr r2, _02194F30 ; =0x02198384
	mov r3, #0
	ldr r1, _02194F34 ; =0x02198378
	mov r0, r4
	str r3, [r2, r5, lsl #2]
	str r3, [r1, r5, lsl #2]
	bl sub_0207C0F8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02194F2C: .word 0x0219836C
_02194F30: .word 0x02198384
_02194F34: .word 0x02198378
	arm_func_end sub_02194EC8

	arm_func_start sub_02194F38
sub_02194F38: ; 0x02194F38
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bl sub_0207C0E4
	mov r6, #0
	mov r5, r0
	mov sl, r6
	ldr r4, _02194FAC ; =0x0219836C
	mov sb, r6
	ldr r8, _02194FB0 ; =0x02198384
	ldr r7, _02194FB4 ; =0x02198378
	b _02194F98
_02194F60:
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq _02194F8C
_02194F6C:
	ldr r1, [r0, #8]
	str r1, [r4, r6, lsl #2]
	cmp r1, #0
	strne sl, [r1, #4]
	bl sub_0219678C
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne _02194F6C
_02194F8C:
	str sb, [r8, r6, lsl #2]
	str sb, [r7, r6, lsl #2]
	add r6, r6, #1
_02194F98:
	cmp r6, #3
	blt _02194F60
	mov r0, r5
	bl sub_0207C0F8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02194FAC: .word 0x0219836C
_02194FB0: .word 0x02198384
_02194FB4: .word 0x02198378
	arm_func_end sub_02194F38

	arm_func_start sub_02194FB8
sub_02194FB8: ; 0x02194FB8
	stmdb sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #3
	mvnhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	bl sub_0207C0E4
	ldr ip, _021950A8 ; =0x0219836C
	ldr r1, [ip, r4, lsl #2]
	cmp r1, #0
	bne _02195010
	str r5, [ip, r4, lsl #2]
	mov r3, #0
	str r3, [r5, #4]
	ldr r2, [ip, r4, lsl #2]
	ldr r1, _021950AC ; =0x02198384
	str r3, [r2, #8]
	ldr r2, [ip, r4, lsl #2]
	str r2, [r1, r4, lsl #2]
	b _0219508C
_02195010:
	ldr r1, _021950AC ; =0x02198384
	ldr r3, [r1, r4, lsl #2]
	cmp r3, #0
	beq _0219506C
	ldr r2, [r5, #0x18]
_02195024:
	ldr r1, [r3, #0x18]
	cmp r1, r2
	bhs _02195060
	str r3, [r5, #4]
	ldr r1, [r3, #8]
	ldr r2, _021950AC ; =0x02198384
	str r1, [r5, #8]
	str r5, [r3, #8]
	ldr r1, [r5, #8]
	cmp r1, #0
	strne r5, [r1, #4]
	ldr r1, [r2, r4, lsl #2]
	cmp r3, r1
	streq r5, [r2, r4, lsl #2]
	b _0219508C
_02195060:
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _02195024
_0219506C:
	mov r1, #0
	ldr r2, _021950A8 ; =0x0219836C
	str r1, [r5, #4]
	ldr r1, [r2, r4, lsl #2]
	str r1, [r5, #8]
	ldr r1, [r2, r4, lsl #2]
	str r5, [r1, #4]
	str r5, [r2, r4, lsl #2]
_0219508C:
	ldr r5, _021950B0 ; =0x02198378
	ldr r1, [r5, r4, lsl #2]
	add r1, r1, #1
	str r1, [r5, r4, lsl #2]
	bl sub_0207C0F8
	ldr r0, [r5, r4, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021950A8: .word 0x0219836C
_021950AC: .word 0x02198384
_021950B0: .word 0x02198378
	arm_func_end sub_02194FB8

	arm_func_start sub_021950B4
sub_021950B4: ; 0x021950B4
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_0207C0E4
	ldr r4, _021950E8 ; =0x0219836C
	ldr r1, [r4, r5, lsl #2]
	cmp r1, #0
	beq _021950DC
	bl sub_0207C0F8
	ldr r0, [r4, r5, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
_021950DC:
	bl sub_0207C0F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021950E8: .word 0x0219836C
	arm_func_end sub_021950B4

	arm_func_start sub_021950EC
sub_021950EC: ; 0x021950EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0207C0E4
	ldr ip, _02195148 ; =0x0219836C
	ldr r1, [ip, r4, lsl #2]
	cmp r1, #0
	beq _02195138
	ldr r2, _0219514C ; =0x02198378
	ldr r3, [r1, #8]
	ldr r1, [r2, r4, lsl #2]
	str r3, [ip, r4, lsl #2]
	sub r1, r1, #1
	str r1, [r2, r4, lsl #2]
	cmp r3, #0
	movne r1, #0
	strne r1, [r3, #4]
	ldreq r1, _02195150 ; =0x02198384
	moveq r2, #0
	streq r2, [r1, r4, lsl #2]
_02195138:
	bl sub_0207C0F8
	ldr r0, _0219514C ; =0x02198378
	ldr r0, [r0, r4, lsl #2]
	ldmia sp!, {r4, pc}
	.align 2, 0
_02195148: .word 0x0219836C
_0219514C: .word 0x02198378
_02195150: .word 0x02198384
	arm_func_end sub_021950EC

	arm_func_start sub_02195154
sub_02195154: ; 0x02195154
	ldr r1, _02195160 ; =0x02198378
	ldr r0, [r1, r0, lsl #2]
	bx lr
	.align 2, 0
_02195160: .word 0x02198378
	arm_func_end sub_02195154

	arm_func_start sub_02195164
sub_02195164: ; 0x02195164
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r6, r1
	mov r5, r2
	mov r1, r4
	mov r2, #0x28
	mov r7, r0
	bl sub_020787A8
	ldr r1, _021951EC ; =0x000134DF
	mov r0, #1
	str r1, [r7, #4]
	str r4, [r7, #0x28]
	str r4, [r7, #0x2c]
	str r6, [r7, #0x34]
	str r5, [r7, #0x38]
	str r4, [r7, #0x7c]
	str r4, [r7, #0x80]
	str r4, [r7, #0x84]
	str r4, [r7, #0x88]
	str r1, [r7, #0x8c]
	str r4, [r7, #0x90]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x44]
	str r4, [r7, #0x48]
	str r4, [r7, #0x6c]
	str r4, [r7, #0x70]
	str r4, [r7, #0x50]
	str r4, [r7, #0x54]
	str r4, [r7, #0x58]
	str r0, [r7, #0x5c]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	str r4, [r7, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021951EC: .word 0x000134DF
	arm_func_end sub_02195164

	arm_func_start sub_021951F0
sub_021951F0: ; 0x021951F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _02195210
	bl sub_0219678C
	mov r0, #0
	str r0, [r4, #0x3c]
_02195210:
	mvn r0, #0
	str r0, [r4, #0x38]
	ldmia sp!, {r4, pc}
	arm_func_end sub_021951F0

	arm_func_start sub_0219521C
sub_0219521C: ; 0x0219521C
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x3c]
	mov r4, r1
	cmp r0, #0
	beq _02195238
	bl sub_0219678C
_02195238:
	ldr r0, [r5, #0x34]
	str r4, [r5, #0x3c]
	bl sub_021950EC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_0219521C

	arm_func_start sub_02195248
sub_02195248: ; 0x02195248
	ldr r3, _02195264 ; =0x00010001
	mov r2, #0
	strh r1, [r0, #0x68]
	str r3, [r0, #0x64]
	str r2, [r0, #0x60]
	str r2, [r0, #0x5c]
	bx lr
	.align 2, 0
_02195264: .word 0x00010001
	arm_func_end sub_02195248

	arm_func_start sub_02195268
sub_02195268: ; 0x02195268
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrh ip, [r6, #0x68]
	mov r4, r2
	ldr r3, _02195334 ; =0x00000BB8
	sub r2, r4, ip
	mov r2, r2, lsl #0x10
	mov r5, r1
	cmp r3, r2, lsr #16
	mov r2, r2, lsr #0x10
	bls _021952AC
	cmp r4, ip
	ldrlo r0, [r6, #0x60]
	strh r4, [r6, #0x68]
	addlo r0, r0, #0x10000
	strlo r0, [r6, #0x60]
	b _02195320
_021952AC:
	ldr r1, _02195338 ; =0x0000FF9C
	cmp r2, r1
	bhi _021952F8
	ldr r1, [r6, #0x64]
	cmp r4, r1
	bne _021952E0
	mov r1, r4
	bl sub_02195248
	sub r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #0x54]
	b _02195320
_021952E0:
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r6, #0x64]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021952F8:
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x60]
	add r0, r0, #0x39c
	add r1, r4, r1
	add r0, r0, #0xfc00
	cmp r1, r0
	subhi r0, r1, #0x10000
	strhi r0, [r5, #0x18]
	movhi r0, #1
	ldmhiia sp!, {r4, r5, r6, pc}
_02195320:
	ldr r1, [r6, #0x60]
	mov r0, #1
	add r1, r4, r1
	str r1, [r5, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02195334: .word 0x00000BB8
_02195338: .word 0x0000FF9C
	arm_func_end sub_02195268

	arm_func_start sub_0219533C
sub_0219533C: ; 0x0219533C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r2, [r7, #0x5c]
	mov r8, #0
	mov r6, r1
	cmp r2, #0
	mov r5, r8
	beq _02195370
	ldr r1, [r6, #0x18]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl sub_02195248
	b _02195400
_02195370:
	ldr r2, [r6, #0x18]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl sub_02195268
	cmp r0, #0
	ldreq r1, [r7, #0x14]
	moveq r0, r5
	addeq r1, r1, #1
	streq r1, [r7, #0x14]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x18]
	ldr r2, [r7, #0x54]
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x18]
	cmp r2, r1
	ldreq r1, [r7, #0x14]
	moveq r0, r5
	addeq r1, r1, #1
	streq r1, [r7, #0x14]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r2, #1
	cmp r0, r1
	beq _02195400
	ldr r0, [r6, #0x45c]
	cmp r0, #0
	bne _02195400
	subs r0, r1, r2
	rsbmi r0, r0, #0
	cmp r0, #0x64
	strgt r1, [r7, #0x54]
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r2, r1
	ldrhi r0, [r7, #0x1c]
	addhi r0, r0, #1
	strhi r0, [r7, #0x1c]
_02195400:
	ldr r1, [r6, #0x18]
	ldr r0, [r7, #0x4c]
	str r1, [r7, #0x54]
	cmp r0, #0
	bne _02195434
	ldr r1, [r6, #0x460]
	add r0, r6, #0x64
	str r1, [r7, #0x4c]
	add r1, r0, #0x400
	add r0, r7, #0x44
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	str r8, [r7, #0x6c]
_02195434:
	ldr r1, [r6, #0x460]
	ldr r0, [r7, #0x4c]
	ldr ip, [r6, #0x464]
	sub r0, r1, r0
	ldr r4, [r7, #0x44]
	ldr r2, [r7, #0x80]
	mov r0, r0, lsl #6
	subs r1, ip, r4
	subs r4, r0, r1
	cmp r2, #0
	beq _0219546C
	ldr r1, [r6, #0x45c]
	cmp r1, #0
	beq _02195474
_0219546C:
	str r4, [r7, #0x80]
	b _021954E0
_02195474:
	subs r1, r4, r2
	ldr r2, [r7, #0x7c]
	rsbmi r1, r1, #0
	add r2, r2, #0x318
	add r2, r2, #0x8800
	ldr r3, _021956B4 ; =0x0000CC8D
	mov r2, r2, lsl #1
	adds r3, r2, r3
	mov ip, r1, asr #0x1f
	adc r2, r8, r2, asr #31
	cmp ip, r2
	str r4, [r7, #0x80]
	cmpeq r1, r3
	bls _021954C4
	ldr r8, _021956B8 ; =0x75CA82CB
	mov r2, r1, lsr #0x1f
	smull r3, ip, r8, r1
	add ip, r2, ip, asr #14
	add r2, ip, #2
	str r2, [r7, #0x84]
_021954C4:
	ldr r2, [r7, #0x84]
	cmp r2, #0
	ldrle r2, [r7, #0x7c]
	suble r1, r1, r2
	addle r1, r2, r1, asr #4
	strle r1, [r7, #0x7c]
	strle r1, [r7, #0x18]
_021954E0:
	ldr r2, [r7, #0x44]
	ldr r3, [r7, #0x48]
	adds r1, r0, r2
	ldr r2, [r7, #4]
	adc r0, r3, #0
	adds r2, r2, r1
	adc r3, r0, #0
	str r2, [r6, #0x46c]
	str r3, [r6, #0x470]
	bl sub_0207BB0C
	ldr lr, [r6, #0x46c]
	ldr r2, _021956BC ; =0x00008B18
	ldr ip, [r6, #0x470]
	adds r6, lr, r2
	adc r3, ip, #0
	cmp r3, r1
	cmpeq r6, r0
	mov r6, #0
	movlo r0, r6
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _021956C0 ; =0x0007FD88
	mov r3, r6
	adds r8, r0, r8
	adc r0, r1, r6
	cmp ip, r0
	cmpeq lr, r8
	movhi r0, r6
	ldmhiia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x84]
	cmp r0, #0
	bgt _021956A0
	ldr r0, [r7, #0x7c]
	ldr r8, _021956B8 ; =0x75CA82CB
	add ip, r0, r0, lsl #1
	smull r1, r0, r8, ip
	ldr r8, [r7, #0x8c]
	mov r1, ip, lsr #0x1f
	cmp ip, r8
	add r0, r1, r0, asr #14
	bls _021955B8
	add r1, r0, #1
	mul r8, r1, r2
	mul r1, r0, r2
	add r0, r8, #0xdf
	add r8, r0, #0x13400
	ldr r0, _021956C4 ; =0xFFFF2F5C
	add r1, r1, #0xdf
	add r2, r8, r0
	add r0, r1, #0x13400
	str r8, [r7, #0x8c]
	str r2, [r7, #0x88]
	str r0, [r7, #4]
	str r6, [r7, #0x90]
	b _02195618
_021955B8:
	ldr r1, [r7, #0x88]
	cmp ip, r1
	bge _02195618
	ldr r1, [r7, #0x90]
	add r1, r1, #1
	str r1, [r7, #0x90]
	cmp r1, #0x46
	bls _02195618
	add r1, r0, #1
	mul r8, r1, r2
	add r1, r8, #0xdf
	add r8, r1, #0x13400
	mul r2, r0, r2
	ldr r1, _021956C8 ; =0xFFFFBA74
	str r8, [r7, #0x8c]
	adds r1, r2, r1
	str r1, [r7, #0x88]
	ldr r1, _021956BC ; =0x00008B18
	strmi r6, [r7, #0x88]
	mul r1, r0, r1
	add r0, r1, #0xdf
	add r0, r0, #0x13400
	str r0, [r7, #4]
	str r3, [r7, #0x90]
_02195618:
	ldr r1, [r7, #4]
	ldr r0, _021956CC ; =0x00068520
	cmp r1, r0
	strhi r0, [r7, #4]
	ldr r0, [r7, #0x6c]
	cmp r0, #0x10
	addlo r0, r0, #1
	strlo r0, [r7, #0x6c]
	strlo r4, [r7, #0x74]
	strlo r4, [r7, #0x78]
	blo _02195660
	ldr r0, [r7, #0x74]
	rsb r0, r0, r0, lsl #5
	add r1, r4, r0
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r0, r0, asr #5
	str r0, [r7, #0x74]
_02195660:
	ldr r2, [r7, #0x78]
	ldr r1, [r7, #0x74]
	ldr r0, _021956D0 ; =0x00008701
	sub r1, r2, r1
	cmp r1, r0
	mvn r0, #0x8700
	movgt r5, #1
	cmp r1, r0
	str r1, [r7, #0xc]
	ldrlt r1, [r7, #0x70]
	addlt r5, r0, #0x8700
	addlt r0, r1, #1
	strlt r0, [r7, #0x70]
	cmp r5, #0
	strne r3, [r7, #0x6c]
	strne r3, [r7, #0x4c]
_021956A0:
	ldr r1, [r7, #0x84]
	mov r0, #1
	sub r1, r1, #1
	str r1, [r7, #0x84]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021956B4: .word 0x0000CC8D
_021956B8: .word 0x75CA82CB
_021956BC: .word 0x00008B18
_021956C0: .word 0x0007FD88
_021956C4: .word 0xFFFF2F5C
_021956C8: .word 0xFFFFBA74
_021956CC: .word 0x00068520
_021956D0: .word 0x00008701
	arm_func_end sub_0219533C

	arm_func_start sub_021956D4
sub_021956D4: ; 0x021956D4
	stmdb sp!, {r3, lr}
	ldr r1, _021956F8 ; =0x02199898
	ldr r1, [r1, #0x10]
	cmp r1, #0
	cmpne r1, #2
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_02195CA4
	ldmia sp!, {r3, pc}
	.align 2, 0
_021956F8: .word 0x02199898
	arm_func_end sub_021956D4

	arm_func_start sub_021956FC
sub_021956FC: ; 0x021956FC
	stmdb sp!, {r3, lr}
	ldr r2, _021957AC ; =0x021983A0
	mov ip, #0
	cmp r0, #0
	ldr lr, [r2, #4]
	moveq r0, ip
	ldmeqia sp!, {r3, pc}
	ldr r1, _021957B0 ; =0x02199898
	ldr r1, [r1, #0x10]
	cmp r1, #2
	bne _0219573C
	ldr r1, _021957B4 ; =0x021983CC
	cmp r0, r1
	streq ip, [r2, #0x2c]
	mov r0, #1
	ldmia sp!, {r3, pc}
_0219573C:
	cmp lr, #0
	beq _021957A4
_02195744:
	cmp lr, r0
	bne _02195794
	mov r3, #0
	cmp ip, #0
	ldrne r1, [r0, #0x14]
	str r3, [r0]
	strne r1, [ip, #0x14]
	bne _0219577C
	ldr r2, [lr, #0x14]
	cmp r2, #0
	ldrne r1, _021957AC ; =0x021983A0
	strne r2, [r1, #4]
	ldreq r1, _021957AC ; =0x021983A0
	streq r3, [r1, #4]
_0219577C:
	ldr r1, _021957AC ; =0x021983A0
	ldr r2, [r1]
	str r2, [r0, #0x14]
	str r0, [r1]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02195794:
	mov ip, lr
	ldr lr, [lr, #0x14]
	cmp lr, #0
	bne _02195744
_021957A4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	.align 2, 0
_021957AC: .word 0x021983A0
_021957B0: .word 0x02199898
_021957B4: .word 0x021983CC
	arm_func_end sub_021956FC

	arm_func_start sub_021957B8
sub_021957B8: ; 0x021957B8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #0x10
	mvnlo r0, #0
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _02195854 ; =0x02199898
	ldr r1, [r4, #0xc]
	cmp r1, #1
	mvneq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #5
	mvnhs r0, #2
	ldmhsia sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0xff
	mov r1, r6
	and r2, r7, #0xff
	strb r5, [r6, #4]
	bl sub_02195FF0
	mov r0, r8
	mov r1, r6
	bl sub_0219614C
	cmp r0, #0
	rsbeq r0, r5, #0xfc
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #1
	cmpeq r7, #0
	bne _0219584C
	mov r0, r8
	bl sub_02196100
	cmp r0, #0
	rsbeq r0, r5, #0xfc
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_0219584C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02195854: .word 0x02199898
	arm_func_end sub_021957B8

	arm_func_start sub_02195858
sub_02195858: ; 0x02195858
	stmdb sp!, {r3, lr}
	ldr r2, _02195878 ; =0x02199898
	ldr r2, [r2, #0x10]
	cmp r2, #2
	mvneq r0, #2
	ldmeqia sp!, {r3, pc}
	bl sub_02195D0C
	ldmia sp!, {r3, pc}
	.align 2, 0
_02195878: .word 0x02199898
	arm_func_end sub_02195858

	arm_func_start sub_0219587C
sub_0219587C: ; 0x0219587C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	movs r5, r0
	mov r7, r1
	mov r4, r2
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, #0x10
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #6
	mvnhs r0, #2
	ldmhsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	mov r1, r4
	and r2, r7, #0xff
	strb r6, [r4, #4]
	bl sub_02195FF0
	cmp r7, #0
	bne _02195908
	ldr r0, _02195924 ; =0x02199898
	ldr r0, [r0, #0x10]
	cmp r0, #1
	ldreq r0, [r5, #0xc]
	cmpeq r0, #4
	bne _021958F4
	mov r0, r5
	bl sub_02196100
	cmp r0, #0
	subeq r0, r6, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021958F4:
	ldrb r1, [r5, #4]
	mov r0, #1
	cmp r1, #0
	movne r0, r0, lsl r1
	str r0, [r5, #8]
_02195908:
	mov r0, r5
	mov r1, r4
	bl sub_0219614C
	cmp r0, #0
	mvneq r0, #2
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02195924: .word 0x02199898
	arm_func_end sub_0219587C

	arm_func_start sub_02195928
sub_02195928: ; 0x02195928
	stmdb sp!, {r3, lr}
	ldr r2, _02195948 ; =0x02199898
	ldr r2, [r2, #0x10]
	cmp r2, #2
	mvneq r0, #2
	ldmeqia sp!, {r3, pc}
	bl sub_02195D58
	ldmia sp!, {r3, pc}
	.align 2, 0
_02195948: .word 0x02199898
	arm_func_end sub_02195928

	arm_func_start sub_0219594C
sub_0219594C: ; 0x0219594C
	stmdb sp!, {r4, r5, r6, lr}
	ldr r6, _021959F4 ; =0x02199898
	mov r4, r0
	ldr r1, [r6, #0x10]
	cmp r1, #3
	mvnne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r5, _021959F8 ; =0x02198390
	ldr r1, [r5]
	cmp r1, #3
	mvneq r0, #5
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r6]
	cmp r4, r1
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_021961C8
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl sub_021956D4
	movs r2, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	strb r4, [r2, #4]
	mov r0, #1
	strb r4, [r2, #5]
	mov r1, #2
	mov r0, r0, lsl r4
	str r1, [r2, #0xc]
	str r0, [r2, #8]
	ldr r3, [r6, #8]
	ldr r6, [r6, #4]
	mov r0, r4
	mov r1, #7
	blx r6
	ldr r1, [r5]
	mov r0, #0
	add r1, r1, #1
	str r1, [r5]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021959F4: .word 0x02199898
_021959F8: .word 0x02198390
	arm_func_end sub_0219594C

	arm_func_start sub_021959FC
sub_021959FC: ; 0x021959FC
	stmdb sp!, {r3, r4, r5, lr}
	ldr r4, _02195A54 ; =0x02199898
	mov r5, r0
	ldr r1, [r4, #0x10]
	cmp r1, #3
	mvnne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_021961C8
	movs r2, r0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r4, #8]
	ldr r4, [r4, #4]
	mov r0, r5
	mov r1, #9
	blx r4
	ldr r1, _02195A58 ; =0x02198390
	mov r0, #0
	ldr r2, [r1]
	sub r2, r2, #1
	str r2, [r1]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02195A54: .word 0x02199898
_02195A58: .word 0x02198390
	arm_func_end sub_021959FC

	arm_func_start sub_02195A5C
sub_02195A5C: ; 0x02195A5C
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5]
	cmp r0, #0
	ldrne r1, [r5, #4]
	cmpne r1, #0
	beq _02195A80
	cmp r1, #8
	bls _02195A88
_02195A80:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02195A88:
	mov r7, #0x18
	mul r2, r1, r7
	ldr r6, _02195B50 ; =0x021983A0
	mov r4, #0
	mov r1, r4
	str r0, [r6]
	bl sub_020787A8
	ldr r0, _02195B54 ; =0x021983CC
	mov r1, r4
	mov r2, r7
	bl sub_020787A8
	ldr r0, _02195B58 ; =0x021983B4
	mov r1, r4
	mov r2, r7
	bl sub_020787A8
	ldr r7, [r5, #4]
	subs r0, r7, #1
	beq _02195B00
	mov r0, #0x18
	mov r1, r0
_02195AD8:
	ldr ip, [r6]
	add r3, r4, #1
	mla r2, r4, r1, ip
	mla r4, r3, r0, ip
	str r4, [r2, #0x14]
	ldr r7, [r5, #4]
	mov r4, r3
	sub r2, r7, #1
	cmp r3, r2
	blo _02195AD8
_02195B00:
	ldr r2, _02195B50 ; =0x021983A0
	mov r0, #0x18
	ldr r1, [r2]
	mov r4, #0
	mla r0, r7, r0, r1
	str r4, [r0, #-4]
	ldr r1, _02195B5C ; =0x02198390
	str r4, [r2, #4]
	str r4, [r1, #4]
	ldr r0, _02195B60 ; =0x02199898
	str r4, [r1]
	ldr r3, _02195B64 ; =sub_0207BB0C
	str r4, [r0, #0x14]
	ldr r1, _02195B68 ; =0x5D588B65
	str r3, [r2, #8]
	ldr r0, _02195B6C ; =0x00269EC3
	str r1, [r2, #0xc]
	str r0, [r2, #0x10]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02195B50: .word 0x021983A0
_02195B54: .word 0x021983CC
_02195B58: .word 0x021983B4
_02195B5C: .word 0x02198390
_02195B60: .word 0x02199898
_02195B64: .word sub_0207BB0C
_02195B68: .word 0x5D588B65
_02195B6C: .word 0x00269EC3
	arm_func_end sub_02195A5C

	arm_func_start sub_02195B70
sub_02195B70: ; 0x02195B70
	ldr r0, _02195B84 ; =0x021983A0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0]
	bx lr
	.align 2, 0
_02195B84: .word 0x021983A0
	arm_func_end sub_02195B70

	arm_func_start sub_02195B88
sub_02195B88: ; 0x02195B88
	stmdb sp!, {r3, r4, r5, lr}
	bl sub_0207BB0C
	ldr r5, _02195C1C ; =0x02199898
	ldr r2, [r5, #0x10]
	cmp r2, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, _02195C20 ; =0x02198390
	mov ip, #0
	ldr lr, [r3, #0xc]
	ldr r4, [r3, #8]
	cmp lr, #0
	cmpeq r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _02195C24 ; =0x02197400
	subs r4, r0, r4
	sbc r1, r1, lr
	ldmia r2, {r0, r2}
	cmp r1, r2
	cmpeq r4, r0
	ldmlsia sp!, {r3, r4, r5, pc}
	str ip, [r3, #8]
	ldr r4, _02195C28 ; =0x021983A0
	str ip, [r3, #0xc]
	str ip, [r4, #0x2c]
	mov r0, ip
	str ip, [r4, #0x38]
	bl sub_02195E84
	ldrb r0, [r4, #0x30]
	ldr r3, [r5, #8]
	ldr r4, [r5, #4]
	ldr r2, _02195C2C ; =0x021983CC
	mov r1, #9
	blx r4
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02195C1C: .word 0x02199898
_02195C20: .word 0x02198390
_02195C24: .word 0x02197400
_02195C28: .word 0x021983A0
_02195C2C: .word 0x021983CC
	arm_func_end sub_02195B88

	arm_func_start sub_02195C30
sub_02195C30: ; 0x02195C30
	stmdb sp!, {r3, lr}
	cmp r2, #0x10
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r2, [r1, #8]
	cmp r2, r0
	ldreq r0, _02195CA0 ; =0x02199898
	ldreqb ip, [r1, #9]
	ldreqb r2, [r0]
	cmpeq ip, r2
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r2, [r1, #5]
	cmp r2, #0x10
	beq _02195C7C
	mov r0, r1
	mov r1, r3
	bl sub_021964FC
	ldmia sp!, {r3, pc}
_02195C7C:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r1
	mov r1, r3
	bne _02195C98
	bl sub_02196248
	ldmia sp!, {r3, pc}
_02195C98:
	bl sub_02196388
	ldmia sp!, {r3, pc}
	.align 2, 0
_02195CA0: .word 0x02199898
	arm_func_end sub_02195C30

	arm_func_start sub_02195CA4
sub_02195CA4: ; 0x02195CA4
	stmdb sp!, {r3, r4, r5, lr}
	mov r1, r0
	cmp r1, #0x20
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	ldr r0, _02195D04 ; =0x02199898
	ldrb r0, [r0]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r4, _02195D08 ; =0x021983A0
	ldr r5, [r4]
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x14]
	mov r0, r5
	str r2, [r4]
	bl sub_02195ECC
	ldr r1, [r4, #4]
	mov r0, r5
	str r1, [r5, #0x14]
	str r5, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02195D04: .word 0x02199898
_02195D08: .word 0x021983A0
	arm_func_end sub_02195CA4

	arm_func_start sub_02195D0C
sub_02195D0C: ; 0x02195D0C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	add r5, sp, #0
	mov r4, #0x10
	mov r2, r5
	mov r3, r4
	mov r6, r0
	bl sub_021957B8
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl sub_02195F04
	cmp r0, #0
	movne r0, #0
	subeq r0, r4, #0x14
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02195D0C

	arm_func_start sub_02195D58
sub_02195D58: ; 0x02195D58
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	add r5, sp, #0
	mov r4, #0x10
	mov r2, r5
	mov r3, r4
	mov r6, r0
	bl sub_0219587C
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	bl sub_02195F04
	cmp r0, #0
	movne r0, #0
	subeq r0, r4, #0x14
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02195D58

	arm_func_start sub_02195DA4
sub_02195DA4: ; 0x02195DA4
	ldrb r2, [r1, #0xa]
	cmp r2, #1
	ldreqb r2, [r0, #4]
	ldreq r0, _02195DC4 ; =0x02198390
	streqb r2, [r1, #0xb]
	ldreq r0, [r0, #4]
	streq r0, [r1, #0xc]
	bx lr
	.align 2, 0
_02195DC4: .word 0x02198390
	arm_func_end sub_02195DA4

	arm_func_start sub_02195DC8
sub_02195DC8: ; 0x02195DC8
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	mov sl, r1
	mov r8, #0
	bl sub_02195DA4
	mov r6, #1
	ldr r4, _02195E7C ; =0x02199898
	ldr r5, _02195E80 ; =0x02198390
	mov sb, r8
	mov r7, r6
	mov fp, #0x10
_02195DF4:
	mov r1, r7, lsl sb
	cmp sb, #0
	ldr r0, [r5, #4]
	moveq r1, r6
	tst r0, r1
	ldrneb r0, [r4]
	cmpne sb, r0
	beq _02195E30
	mov r0, sb
	mov r1, sl
	mov r2, fp
	strb sb, [sl, #9]
	bl sub_02168A08
	cmp r0, #0
	addne r8, r8, #1
_02195E30:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #0x20
	blo _02195DF4
	ldrb r0, [sl, #0xa]
	cmp r0, #1
	ldreq r0, _02195E80 ; =0x02198390
	ldreq r1, [r0, #4]
	ldreq r0, [sp]
	streq r1, [r0, #8]
	beq _02195E6C
	cmp r0, #0
	ldreq r0, [sp]
	moveq r1, #0
	streq r1, [r0, #8]
_02195E6C:
	mvn r0, #3
	cmp r8, #0
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02195E7C: .word 0x02199898
_02195E80: .word 0x02198390
	arm_func_end sub_02195DC8

	arm_func_start sub_02195E84
sub_02195E84: ; 0x02195E84
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r5, _02195EC8 ; =0x021983CC
	add r4, sp, #0
	mov r6, r0
	mov r3, #0xff
	mov r0, r5
	mov r1, r4
	mov r2, #4
	strb r3, [sp, #4]
	bl sub_02195FF0
	mov r0, r5
	mov r1, r4
	strb r6, [sp, #0xa]
	bl sub_02195DC8
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02195EC8: .word 0x021983CC
	arm_func_end sub_02195E84

	arm_func_start sub_02195ECC
sub_02195ECC: ; 0x02195ECC
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r1
	mov r1, r4
	mov r2, #0x18
	mov r6, r0
	bl sub_020839D0
	ldr r0, _02195F00 ; =0x02199898
	ldr r0, [r0, #0x10]
	str r0, [r6]
	str r4, [r6, #0xc]
	strb r5, [r6, #4]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02195F00: .word 0x02199898
	arm_func_end sub_02195ECC

	arm_func_start sub_02195F04
sub_02195F04: ; 0x02195F04
	stmdb sp!, {r3, lr}
	ldrb r2, [r1, #4]
	cmp r2, #0xff
	ldreqb r2, [r1, #6]
	cmpeq r2, #4
	bne _02195F24
	bl sub_02195DC8
	b _02195F3C
_02195F24:
	ldrb r0, [r0, #4]
	mov r2, #0x10
	bl sub_02168A08
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_02195F3C:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_02195F04

	arm_func_start sub_02195F44
sub_02195F44: ; 0x02195F44
	ldrb r2, [r0, #0xb]
	strb r2, [r1, #5]
	ldrb r2, [r0, #4]
	cmp r2, #0xff
	bne _02195F88
	ldrb r2, [r0, #6]
	cmp r2, #0
	bne _02195F78
	ldrb r3, [r1, #4]
	mov r2, #1
	cmp r3, #0
	movne r2, r2, lsl r3
	str r2, [r1, #8]
_02195F78:
	ldrb r1, [r0, #6]
	ldr r0, _02195FE8 ; =0x02197298
	ldrb r0, [r0, r1]
	bx lr
_02195F88:
	cmp r2, #0
	bne _02195FE0
	ldrb r2, [r0, #6]
	cmp r2, #0
	bne _02195FD4
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _02195FC4
	ldrb r2, [r1, #4]
	mov r0, #1
	cmp r2, #0
	movne r0, r0, lsl r2
	str r0, [r1, #8]
	mov r0, #7
	bx lr
_02195FC4:
	cmp r0, #5
	moveq r0, #9
	movne r0, #0xc
	bx lr
_02195FD4:
	ldr r0, _02195FEC ; =0x0219729D
	ldrb r0, [r0, r2]
	bx lr
_02195FE0:
	mov r0, #0xc
	bx lr
	.align 2, 0
_02195FE8: .word 0x02197298
_02195FEC: .word 0x0219729D
	arm_func_end sub_02195F44

	arm_func_start sub_02195FF0
sub_02195FF0: ; 0x02195FF0
	stmdb sp!, {r3, lr}
	ldr lr, _02196034 ; =0x5F564354
	mov ip, #0x10
	ldr r3, _02196038 ; =0x02199898
	str lr, [r1]
	strb ip, [r1, #5]
	strb r2, [r1, #6]
	ldrb r2, [r3]
	strb r2, [r1, #8]
	ldrb r2, [r0, #4]
	mov r0, #0
	strb r2, [r1, #9]
	strb r0, [r1, #0xa]
	ldrb r2, [r3]
	strb r2, [r1, #0xb]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02196034: .word 0x5F564354
_02196038: .word 0x02199898
	arm_func_end sub_02195FF0

	arm_func_start sub_0219603C
sub_0219603C: ; 0x0219603C
	stmdb sp!, {r3, r4, r5, lr}
	ldrb r2, [r1, #4]
	ldrb r3, [r1, #6]
	mov r4, r0
	cmp r2, #0
	addeq r3, r3, #5
	cmp r3, #0xb
	mvnhs r3, #0
	cmp r3, #0
	mvnlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r0, _021960F4 ; =0x02199898
	ldr r1, _021960F8 ; =0x02197370
	ldr r0, [r0, #0x10]
	ldr r2, [r4, #0xc]
	cmp r0, #1
	ldrne r1, _021960FC ; =0x021972A4
	mov r0, #0xb
	mla r0, r2, r0, r1
	ldrsb r5, [r3, r0]
	mvn r1, #2
	cmp r5, r1
	beq _021960D4
	add r0, r1, #1
	cmp r5, r0
	beq _021960B4
	add r0, r1, #2
	cmp r5, r0
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
_021960B4:
	mov r0, r4
	mov r1, #1
	bl sub_02195D58
	mov r1, #0
	mov r0, r5
	str r1, [r4, #0xc]
	str r1, [r4]
	ldmia sp!, {r3, r4, r5, pc}
_021960D4:
	mov r0, r4
	mov r1, #3
	bl sub_02195D58
	mov r1, #0
	mov r0, r5
	str r1, [r4, #0xc]
	str r1, [r4]
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021960F4: .word 0x02199898
_021960F8: .word 0x02197370
_021960FC: .word 0x021972A4
	arm_func_end sub_0219603C

	arm_func_start sub_02196100
sub_02196100: ; 0x02196100
	ldr r1, _02196148 ; =0x021983A0
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02196140
_02196110:
	ldr r1, [r2]
	cmp r1, #0
	beq _02196134
	ldr r1, [r2, #0xc]
	cmp r1, #2
	bne _02196134
	cmp r0, r2
	movne r0, #0
	bxne lr
_02196134:
	ldr r2, [r2, #0x14]
	cmp r2, #0
	bne _02196110
_02196140:
	mov r0, #1
	bx lr
	.align 2, 0
_02196148: .word 0x021983A0
	arm_func_end sub_02196100

	arm_func_start sub_0219614C
sub_0219614C: ; 0x0219614C
	ldrb r2, [r1, #4]
	ldrb ip, [r1, #6]
	cmp r2, #0
	addeq ip, ip, #5
	cmp ip, #0xb
	mvnhs ip, #0
	cmp ip, #0
	mvnlt r0, #0
	bxlt lr
	ldr r1, _021961BC ; =0x02199898
	ldr r2, _021961C0 ; =0x021972E8
	ldr r1, [r1, #0x10]
	ldr r3, [r0, #0xc]
	cmp r1, #1
	ldrne r2, _021961C4 ; =0x0219732C
	mov r1, #0xb
	mla r1, r3, r1, r2
	ldrsb r2, [ip, r1]
	mvn r1, #0
	cmp r2, r1
	moveq r0, #1
	bxeq lr
	sub r1, r1, #1
	cmp r2, r1
	moveq r0, #0
	strne r2, [r0, #0xc]
	movne r0, #1
	bx lr
	.align 2, 0
_021961BC: .word 0x02199898
_021961C0: .word 0x021972E8
_021961C4: .word 0x0219732C
	arm_func_end sub_0219614C

	arm_func_start sub_021961C8
sub_021961C8: ; 0x021961C8
	ldr r1, _0219623C ; =0x02199898
	ldr r2, _02196240 ; =0x021983A0
	ldr r1, [r1, #0x10]
	ldr r3, [r2, #4]
	cmp r1, #2
	bne _02196204
	ldr r1, [r2, #0x2c]
	cmp r1, #0
	beq _021961FC
	ldrb r1, [r2, #0x30]
	cmp r1, r0
	ldreq r0, _02196244 ; =0x021983CC
	bxeq lr
_021961FC:
	mov r0, #0
	bx lr
_02196204:
	cmp r3, #0
	beq _02196234
_0219620C:
	ldr r1, [r3]
	cmp r1, #0
	beq _02196228
	ldrb r1, [r3, #4]
	cmp r1, r0
	moveq r0, r3
	bxeq lr
_02196228:
	ldr r3, [r3, #0x14]
	cmp r3, #0
	bne _0219620C
_02196234:
	mov r0, #0
	bx lr
	.align 2, 0
_0219623C: .word 0x02199898
_02196240: .word 0x021983A0
_02196244: .word 0x021983CC
	arm_func_end sub_021961C8

	arm_func_start sub_02196248
sub_02196248: ; 0x02196248
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldrb r2, [r6, #4]
	mov r5, r1
	mov r7, #0
	cmp r2, #0xff
	bne _02196284
	ldrb r2, [r6, #6]
	cmp r2, #4
	bne _02196278
	bl sub_02196578
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02196278:
	cmp r2, #3
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02196284:
	ldrb r0, [r6, #8]
	bl sub_021961C8
	movs r4, r0
	beq _02196300
	mov r1, r6
	bl sub_0219603C
	mov r8, r0
	mvn r0, #1
	cmp r8, r0
	beq _021962C0
	add r0, r0, #1
	cmp r8, r0
	bne _021962D8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021962C0:
	mov r0, #0xc
	str r0, [r5]
	str r7, [r4]
	str r4, [r5, #4]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021962D8:
	mov r0, r6
	mov r1, r4
	bl sub_02195F44
	stmia r5, {r0, r4}
	str r8, [r4, #0xc]
	ldr r0, [r5]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02196300:
	ldrb r0, [r6, #8]
	bl sub_02195CA4
	movs r7, r0
	bne _02196334
	ldr r4, _02196384 ; =0x021983B4
	ldrb r1, [r6, #8]
	mov r0, r4
	bl sub_02195ECC
	mov r0, r4
	mov r1, #3
	bl sub_02195D58
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02196334:
	mov r1, r6
	bl sub_0219603C
	mov r4, r0
	add r0, r4, #2
	cmp r0, #1
	bhi _0219635C
	mov r0, r7
	bl sub_021956FC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0219635C:
	mov r0, r6
	mov r1, r7
	bl sub_02195F44
	stmia r5, {r0, r7}
	str r4, [r7, #0xc]
	ldr r0, [r5]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02196384: .word 0x021983B4
	arm_func_end sub_02196248

	arm_func_start sub_02196388
sub_02196388: ; 0x02196388
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _021964F0 ; =0x021983A0
	mov r8, r0
	ldr r0, [r2, #0x2c]
	mov r7, r1
	cmp r0, #2
	mov r0, #1
	mov r6, #0
	bne _02196424
	ldrb r1, [r2, #0x30]
	ldrb r0, [r8, #8]
	cmp r1, r0
	bne _02196414
	ldr r5, _021964F4 ; =0x021983CC
	mov r1, r8
	mov r0, r5
	bl sub_0219603C
	mov r4, r0
	mvn r1, #2
	cmp r4, r1
	beq _02196408
	add r0, r1, #1
	cmp r4, r0
	beq _021963F8
	add r0, r1, #2
	cmp r4, r0
	beq _02196408
	b _02196410
_021963F8:
	mov r0, #0xc
	stmia r7, {r0, r6}
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02196408:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02196410:
	b _02196498
_02196414:
	mov r0, #1
	bl sub_02195E84
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02196424:
	ldrb r1, [r8, #8]
	mov r2, r0, lsl r1
	cmp r1, #0
	moveq r2, r0
	ldr r0, _021964F8 ; =0x02198390
	ldr r0, [r0, #4]
	tst r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021964F0 ; =0x021983A0
	ldr r5, _021964F4 ; =0x021983CC
	strb r1, [r2, #0x30]
	mov r0, #2
	str r0, [r2, #0x2c]
	mov r0, r5
	mov r1, r8
	str r6, [r2, #0x38]
	bl sub_0219603C
	mov r4, r0
	sub r0, r6, #3
	cmp r4, r0
	subne r0, r6, #2
	cmpne r4, r0
	subne r0, r6, #1
	cmpne r4, r0
	ldreq r1, _021964F0 ; =0x021983A0
	moveq r0, #0
	streq r0, [r1, #0x2c]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02196498:
	mov r0, r8
	mov r1, r5
	bl sub_02195F44
	stmia r7, {r0, r5}
	str r4, [r5, #0xc]
	ldr r0, [r7]
	cmp r0, #0xa
	bne _021964D4
	mov r0, #1
	bl sub_02195E84
	bl sub_0207BB0C
	ldr r2, _021964F8 ; =0x02198390
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	b _021964E8
_021964D4:
	mov r0, r6
	bl sub_02195E84
	ldr r0, _021964F8 ; =0x02198390
	str r6, [r0, #8]
	str r6, [r0, #0xc]
_021964E8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021964F0: .word 0x021983A0
_021964F4: .word 0x021983CC
_021964F8: .word 0x02198390
	arm_func_end sub_02196388

	arm_func_start sub_021964FC
sub_021964FC: ; 0x021964FC
	stmdb sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #4]
	mov r4, r1
	cmp r0, #0xff
	ldreqb r0, [r5, #6]
	cmpeq r0, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #8]
	bl sub_021961C8
	cmp r0, #0
	beq _02196550
	mov r1, #2
	str r1, [r4]
	str r0, [r4, #4]
	mov r2, #0
	str r2, [r0]
	bl sub_02195D58
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02196550:
	ldr r4, _02196574 ; =0x021983B4
	ldrb r1, [r5, #8]
	mov r0, r4
	bl sub_02195ECC
	mov r0, r4
	mov r1, #2
	bl sub_02195D58
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_02196574: .word 0x021983B4
	arm_func_end sub_021964FC

	arm_func_start sub_02196578
sub_02196578: ; 0x02196578
	stmdb sp!, {r4, lr}
	ldr r3, _02196674 ; =0x02199898
	mov ip, #0
	ldr r4, [r3, #0x10]
	ldr r2, _02196678 ; =0x021983A0
	cmp r4, #2
	movne r0, ip
	ldmneia sp!, {r4, pc}
	ldrb r4, [r3, #1]
	ldrb lr, [r0, #8]
	cmp r4, lr
	movne r0, ip
	ldmneia sp!, {r4, pc}
	ldrb lr, [r0, #0xa]
	cmp lr, #0
	beq _021965C4
	cmp lr, #1
	beq _02196604
	b _02196664
_021965C4:
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	moveq r0, ip
	ldmeqia sp!, {r4, pc}
	ldr r0, [r2, #0x38]
	cmp r0, #5
	cmpne r0, #2
	moveq r0, #9
	streq r0, [r1]
	movne r0, #5
	strne r0, [r1]
	str ip, [r2, #0x2c]
	ldr r0, _0219667C ; =0x021983CC
	str ip, [r2, #0x38]
_021965FC:
	str r0, [r1, #4]
	b _0219666C
_02196604:
	mov lr, #2
	str lr, [r2, #0x2c]
	ldrb ip, [r0, #0xb]
	ldrb r3, [r3]
	cmp ip, r3
	bne _02196630
	str lr, [r2, #0x38]
	mov r3, #7
	str r3, [r1]
	ldr r3, [r0, #0xc]
	b _02196650
_02196630:
	mov r3, #3
	str r3, [r2, #0x38]
	mov r3, #6
	str r3, [r1]
	ldrb ip, [r0, #0xb]
	mov r3, #1
	cmp ip, #0
	movne r3, r3, lsl ip
_02196650:
	str r3, [r2, #0x34]
	ldrb r3, [r0, #0xb]
	ldr r0, _0219667C ; =0x021983CC
	strb r3, [r2, #0x31]
	b _021965FC
_02196664:
	mov r0, ip
	ldmia sp!, {r4, pc}
_0219666C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02196674: .word 0x02199898
_02196678: .word 0x021983A0
_0219667C: .word 0x021983CC
	arm_func_end sub_02196578

	arm_func_start sub_02196680
sub_02196680: ; 0x02196680
	stmdb sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _02196734 ; =0xE525982B
	mov r2, r1
	umull r1, r6, r2, r3
	mov r6, r6, lsr #0xa
	ldr r7, _02196738 ; =0x021983E4
	mov r1, r0
	str r1, [r7, #4]
	cmp r6, #4
	mov r4, #0
	blo _021966B4
	cmp r6, #0x48
	bls _021966BC
_021966B4:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021966BC:
	cmp r1, #0
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	tst r1, #0x1f
	movne r0, r4
	strne r0, [r7, #4]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, r4
	mov r0, r5
	bl sub_0207869C
	subs lr, r6, #1
	beq _02196710
	ldr r0, _0219673C ; =0x00000478
_021966F0:
	ldr ip, [r7, #4]
	add r2, r5, #1
	mul r1, r5, r0
	mla r3, r2, r0, ip
	mov r5, r2
	str r3, [ip, r1]
	cmp r2, lr
	blo _021966F0
_02196710:
	ldr r1, _02196738 ; =0x021983E4
	ldr r0, _0219673C ; =0x00000478
	ldr r2, [r1, #4]
	mla r0, r6, r0, r2
	str r4, [r0, #-0x478]
	ldr r2, [r1, #4]
	mov r0, #1
	str r2, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02196734: .word 0xE525982B
_02196738: .word 0x021983E4
_0219673C: .word 0x00000478
	arm_func_end sub_02196680

	arm_func_start sub_02196740
sub_02196740: ; 0x02196740
	ldr r0, _02196754 ; =0x021983E4
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_02196754: .word 0x021983E4
	arm_func_end sub_02196740

	arm_func_start sub_02196758
sub_02196758: ; 0x02196758
	stmdb sp!, {r4, lr}
	mov r4, #0
	bl sub_0207C0E4
	ldr r1, _02196788 ; =0x021983E4
	ldr r3, [r1]
	cmp r3, #0
	ldrne r2, [r3]
	movne r4, r3
	strne r2, [r1]
	bl sub_0207C0F8
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02196788: .word 0x021983E4
	arm_func_end sub_02196758

	arm_func_start sub_0219678C
sub_0219678C: ; 0x0219678C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_0207C0E4
	ldr r1, _021967BC ; =0x021983E4
	mov r2, #0
	ldr r3, [r1]
	str r3, [r4]
	str r4, [r1]
	str r2, [r4, #4]
	str r2, [r4, #8]
	bl sub_0207C0F8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021967BC: .word 0x021983E4
	arm_func_end sub_0219678C

	arm_func_start sub_021967C0
sub_021967C0: ; 0x021967C0
	ldr r0, _02196800 ; =0x021983F8
	mov r2, #0
	mov r1, #0x1000000
_021967CC:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #4
	blt _021967CC
	ldr r1, _02196804 ; =0x021983EC
	mov r2, #0
	str r2, [r1, #4]
	ldr r0, _02196808 ; =0x02197408
	str r2, [r1]
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r1, #8]
	bx lr
	.align 2, 0
_02196800: .word 0x021983F8
_02196804: .word 0x021983EC
_02196808: .word 0x02197408
	arm_func_end sub_021967C0

	arm_func_start sub_0219680C
sub_0219680C: ; 0x0219680C
	stmdb sp!, {r3, lr}
	movs r1, r0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02196828 ; =0x02197408
	mov r2, #0x10
	bl sub_02078920
	ldmia sp!, {r3, pc}
	.align 2, 0
_02196828: .word 0x02197408
	arm_func_end sub_0219680C

	arm_func_start sub_0219682C
sub_0219682C: ; 0x0219682C
	stmdb sp!, {r3, r4, r5, lr}
	ldr r3, _021969E4 ; =0x02197408
	mov ip, r1, lsr #8
	str ip, [r3, #4]
	cmp r2, #0
	strneb ip, [r2]
	ldr r2, _021969E4 ; =0x02197408
	mov r3, #0
	ldr r2, [r2]
	cmp r2, #0
	bne _02196938
	mov lr, #0
	ldr ip, _021969E8 ; =0x021983F8
	mov r4, lr
_02196864:
	ldr r2, [ip, r4, lsl #2]
	add r4, r4, #1
	cmp r4, #4
	add lr, lr, r2
	blt _02196864
	ldr ip, _021969EC ; =0x040002B0
	mov r2, lr, lsr #2
	strh r3, [ip]
	str r2, [ip, #8]
_02196888:
	ldrh r2, [ip]
	tst r2, #0x8000
	bne _02196888
	ldr r2, _021969F0 ; =0x040002B4
	cmp r1, #0
	ldr r2, [r2]
	beq _02196914
	cmp r1, r2, lsl #1
	blo _02196914
	mov r4, #0
	ldr r2, _021969E8 ; =0x021983F8
	mov ip, r4
_021968B8:
	ldr r1, [r2, ip, lsl #2]
	add ip, ip, #1
	cmp ip, #4
	add r4, r4, r1
	blo _021968B8
	ldr r2, _021969EC ; =0x040002B0
	mov r1, r4, lsr #2
	strh r3, [r2]
	str r1, [r2, #8]
_021968DC:
	ldrh r1, [r2]
	tst r1, #0x8000
	bne _021968DC
	ldr r1, _021969F0 ; =0x040002B4
	ldr r2, _021969F4 ; =0x021983EC
	ldr r1, [r1]
	mov lr, #1
	add r1, r1, r1, lsl #1
	mov r1, r1, lsr #1
	str r1, [r2]
	ldr r1, _021969E4 ; =0x02197408
	str r3, [r2, #4]
	str lr, [r1]
	b _02196918
_02196914:
	mov lr, #0
_02196918:
	ldr r1, _021969F4 ; =0x021983EC
	ldr r3, _021969E8 ; =0x021983F8
	ldr ip, [r1, #4]
	add r2, ip, #1
	and r2, r2, #3
	str r0, [r3, ip, lsl #2]
	str r2, [r1, #4]
	b _021969DC
_02196938:
	ldr r1, _021969F4 ; =0x021983EC
	mov r4, #0
	ldr lr, [r1, #4]
	ldr ip, _021969E8 ; =0x021983F8
	add r2, lr, #1
	and r2, r2, #3
	mov r5, r4
	str r0, [ip, lr, lsl #2]
	str r2, [r1, #4]
_0219695C:
	ldr r0, [ip, r5, lsl #2]
	add r5, r5, #1
	cmp r5, #4
	add r4, r4, r0
	blt _0219695C
	ldr r1, _021969EC ; =0x040002B0
	mov r0, r4, lsr #2
	strh r3, [r1]
	str r0, [r1, #8]
_02196980:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _02196980
	ldr r0, _021969F0 ; =0x040002B4
	ldr r1, _021969F4 ; =0x021983EC
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bhi _021969D4
	ldr r2, [r1, #8]
	ldr r0, _021969E4 ; =0x02197408
	add ip, r2, #1
	str ip, [r1, #8]
	ldr r2, [r0, #8]
	cmp ip, r2
	ble _021969D8
	str r3, [r0]
	str r3, [r1, #8]
	str r3, [r1, #4]
	mov r0, #3
	ldmia sp!, {r3, r4, r5, pc}
_021969D4:
	str r3, [r1, #8]
_021969D8:
	mov lr, #2
_021969DC:
	mov r0, lr
	ldmia sp!, {r3, r4, r5, pc}
	.align 2, 0
_021969E4: .word 0x02197408
_021969E8: .word 0x021983F8
_021969EC: .word 0x040002B0
_021969F0: .word 0x040002B4
_021969F4: .word 0x021983EC
	arm_func_end sub_0219682C

	arm_func_start sub_021969F8
sub_021969F8: ; 0x021969F8
	mov r2, #0xf
	ldr r1, _02196A18 ; =0x02197408
	mov r0, #0x44
	smulbb r0, r2, r0
	str r2, [r1, #8]
	ldr ip, _02196A1C ; =sub_021967C0
	str r0, [r1, #0xc]
	bx ip
	.align 2, 0
_02196A18: .word 0x02197408
_02196A1C: .word sub_021967C0
	arm_func_end sub_021969F8

	arm_func_start sub_02196A20
sub_02196A20: ; 0x02196A20
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldrsh r2, [r0]
	ldr r3, _02196AF8 ; =0x02198408
	ldr r5, _02196AFC ; =0x00000E9F
	ldr r4, [r3, #4]
	smulbb r7, r2, r5
	ldr r2, [r3, #0x10]
	ldr r6, _02196B00 ; =0x00000D3E
	add r4, r7, r4
	mla r4, r2, r6, r4
	mov r4, r4, asr #0xc
	mul ip, r4, r4
	mov r1, r1, lsr #1
	str r4, [r3, #0x10]
	rsb r2, r7, #0
	str r2, [r3, #4]
	cmp r1, #1
	mov lr, ip, asr #0x1f
	mov r3, #1
	bls _02196AB8
_02196A70:
	mov r7, r3, lsl #1
	ldrsh r8, [r0, r7]
	add r7, r0, r3, lsl #1
	add r3, r3, #1
	smulbb r8, r8, r5
	add r2, r8, r2
	mla r2, r4, r6, r2
	strh r4, [r7, #-2]
	mov r4, r2, asr #0xc
	mul r2, r4, r4
	adds ip, ip, r2
	adc lr, lr, r2, asr #31
	rsb r2, r8, #0
	cmp r3, r1
	blo _02196A70
	ldr r3, _02196AF8 ; =0x02198408
	str r2, [r3, #4]
	str r4, [r3, #0x10]
_02196AB8:
	add r0, r0, r1, lsl #1
	strh r4, [r0, #-2]
	ldr r2, _02196B04 ; =0x04000280
	mov r0, #1
	strh r0, [r2]
	str ip, [r2, #0x10]
	str lr, [r2, #0x14]
	str r1, [r2, #0x18]
	mov r0, #0
	str r0, [r2, #0x1c]
_02196AE0:
	ldrh r0, [r2]
	tst r0, #0x8000
	bne _02196AE0
	ldr r0, _02196B08 ; =0x040002A0
	ldr r0, [r0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02196AF8: .word 0x02198408
_02196AFC: .word 0x00000E9F
_02196B00: .word 0x00000D3E
_02196B04: .word 0x04000280
_02196B08: .word 0x040002A0
	arm_func_end sub_02196A20

	arm_func_start sub_02196B0C
sub_02196B0C: ; 0x02196B0C
	stmdb sp!, {r3, lr}
	ldr r0, _02196B70 ; =0x02198408
	mov r2, #0
	ldr r1, _02196B74 ; =0x0000019D
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	ldr ip, _02196B78 ; =0x02197418
	ldr r0, _02196B7C ; =0x0219888C
	mov lr, r2
_02196B30:
	mov r1, r2, lsl #1
	add r2, r2, #1
	strh lr, [r0, r1]
	cmp r2, #0x800
	blt _02196B30
	ldr r2, _02196B80 ; =0x02198434
	ldr r0, _02196B84 ; =0x0219841C
	mov r3, #0
_02196B50:
	mov r1, lr, lsl #1
	ldrsh r1, [ip, r1]
	str r3, [r2, lr, lsl #2]
	str r1, [r0, lr, lsl #2]
	add lr, lr, #1
	cmp lr, #6
	blt _02196B50
	ldmia sp!, {r3, pc}
	.align 2, 0
_02196B70: .word 0x02198408
_02196B74: .word 0x0000019D
_02196B78: .word 0x02197418
_02196B7C: .word 0x0219888C
_02196B80: .word 0x02198434
_02196B84: .word 0x0219841C
	arm_func_end sub_02196B0C

	arm_func_start sub_02196B88
sub_02196B88: ; 0x02196B88
	mov r2, r1
	ldr r1, _02196B98 ; =0x0219844C
	ldr ip, _02196B9C ; =sub_020786E8
	bx ip
	.align 2, 0
_02196B98: .word 0x0219844C
_02196B9C: .word sub_020786E8
	arm_func_end sub_02196B88

	arm_func_start sub_02196BA0
sub_02196BA0: ; 0x02196BA0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov r4, #0
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r8, r4
	movs r2, r2, lsr #1
	ldr ip, _02196D94 ; =0x02198408
	beq _02196CC8
	ldr lr, _02196D98 ; =0x3FFF8000
_02196BC8:
	mov r4, r8, lsl #1
	ldr r7, [ip, #0xc]
	ldrsh r6, [r1, r4]
	ldr r4, _02196D9C ; =0x0219888C
	mov r5, r7, lsl #1
	strh r6, [r4, r5]
	ldr r4, [ip, #8]
	str r4, [sp]
	mov r5, r4, lsl #1
	ldr r4, _02196D9C ; =0x0219888C
	ldrsh r6, [r4, r5]
	str r6, [ip, #0x2c]
	ldr sb, [ip, #0x3c]
	ldr sl, [ip, #0x24]
	ldr r5, [ip, #0x40]
	mul sl, sb, sl
	ldr r4, [ip, #0x28]
	str sb, [sp, #4]
	mla r4, r5, r4, sl
	mov r5, sb
	str r5, [ip, #0x40]
	ldr sb, [ip, #0x38]
	ldr r5, [ip, #0x20]
	mla r5, sb, r5, r4
	str sb, [ip, #0x3c]
	ldr sb, [ip, #0x34]
	ldr r4, [ip, #0x1c]
	mla r5, sb, r4, r5
	str sb, [ip, #0x38]
	ldr sb, [ip, #0x30]
	ldr r4, [ip, #0x18]
	mla r5, sb, r4, r5
	str sb, [ip, #0x34]
	ldr r4, [ip, #0x14]
	mla r4, r6, r4, r5
	cmp r4, lr
	str r6, [ip, #0x30]
	movgt r4, lr
	bgt _02196C6C
	cmp r4, #0xc0000000
	movlt r4, #0xc0000000
_02196C6C:
	add r5, r7, #1
	and r5, r5, lr, lsr #19
	str r5, [ip, #0xc]
	ldr r5, [sp]
	mov r6, r8, lsl #1
	add r5, r5, #1
	and r5, r5, lr, lsr #19
	str r5, [ip, #8]
	mov r4, r4, asr #0xf
	strh r4, [r1, r6]
	ldrsh r5, [r1, r6]
	ldrsh r4, [r0, r6]
	add r8, r8, #1
	smulbb r5, r5, r5
	strh r4, [r1, r6]
	ldr r4, [sp, #8]
	adds r4, r4, r5
	str r4, [sp, #8]
	ldr r4, [sp, #0xc]
	adc r4, r4, r5, asr #31
	str r4, [sp, #0xc]
	cmp r8, r2
	blo _02196BC8
_02196CC8:
	ldr r5, _02196DA0 ; =0x04000280
	mov r1, #1
	strh r1, [r5]
	ldr r4, [sp, #8]
	ldr r1, [sp, #0xc]
	str r4, [r5, #0x10]
	str r1, [r5, #0x14]
	str r2, [r5, #0x18]
	mov r4, #0
	ldr r1, _02196D94 ; =0x02198408
	str r4, [r5, #0x1c]
_02196CF4:
	ldrh r4, [r5]
	tst r4, #0x8000
	bne _02196CF4
	ldr r6, _02196DA4 ; =0x040002A0
	mov r4, #0
	ldr r5, [r6]
	strh r4, [r6, #0x10]
	str r5, [r6, #0x18]
_02196D14:
	ldrh r4, [r6, #0x10]
	tst r4, #0x8000
	bne _02196D14
	ldr r4, _02196DA8 ; =0x040002B4
	ldr r5, [r4]
	add r4, r5, r5, lsl #1
	cmp r4, r3, lsl #1
	movlo r0, #0
	strloh r0, [r1]
	addlo sp, sp, #0x10
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r3, r5
	movlo r3, #4
	strloh r3, [r1]
	ldrsh r3, [r1]
	mov r5, #0
	cmp r3, #4
	addlt r3, r3, #1
	strlth r3, [r1]
	cmp r2, #0
	addls sp, sp, #0x10
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrsh r4, [r1]
_02196D70:
	mov r3, r5, lsl #1
	ldrsh r1, [r0, r3]
	add r5, r5, #1
	cmp r5, r2
	mov r1, r1, asr r4
	strh r1, [r0, r3]
	blo _02196D70
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02196D94: .word 0x02198408
_02196D98: .word 0x3FFF8000
_02196D9C: .word 0x0219888C
_02196DA0: .word 0x04000280
_02196DA4: .word 0x040002A0
_02196DA8: .word 0x040002B4
	arm_func_end sub_02196BA0

	arm_func_start sub_02196DAC
sub_02196DAC: ; 0x02196DAC
	stmdb sp!, {r3, lr}
	mov ip, r1
	mov r3, r2
	ldr r1, _02196DC8 ; =0x0219844C
	mov r2, ip
	bl sub_02196BA0
	ldmia sp!, {r3, pc}
	.align 2, 0
_02196DC8: .word 0x0219844C
	arm_func_end sub_02196DAC

	arm_func_start sub_02196DCC
sub_02196DCC: ; 0x02196DCC
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, #0
	movs lr, r3, lsr #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r3, #0x8000
	rsb r3, r3, #0
	mov ip, r3, lsr #0x11
_02196DE8:
	mov r5, r4, lsl #1
	ldrsh r6, [r0, r5]
	ldrsh r5, [r1, r5]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02196E0C
	cmp r6, r3
	movlt r6, r3
_02196E0C:
	mov r5, r4, lsl #1
	strh r6, [r2, r5]
	add r6, r0, r4, lsl #1
	add r5, r1, r4, lsl #1
	ldrsh r6, [r6, #2]
	ldrsh r5, [r5, #2]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02196E3C
	cmp r6, r3
	movlt r6, r3
_02196E3C:
	add r5, r2, r4, lsl #1
	strh r6, [r5, #2]
	add r6, r0, r4, lsl #1
	add r5, r1, r4, lsl #1
	ldrsh r6, [r6, #4]
	ldrsh r5, [r5, #4]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02196E6C
	cmp r6, r3
	movlt r6, r3
_02196E6C:
	add r5, r2, r4, lsl #1
	strh r6, [r5, #4]
	add r6, r0, r4, lsl #1
	add r5, r1, r4, lsl #1
	ldrsh r6, [r6, #6]
	ldrsh r5, [r5, #6]
	add r6, r6, r5
	cmp r6, r3, lsr #17
	movgt r6, ip
	bgt _02196E9C
	cmp r6, r3
	movlt r6, r3
_02196E9C:
	add r5, r2, r4, lsl #1
	add r4, r4, #4
	strh r6, [r5, #6]
	cmp r4, lr
	blo _02196DE8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_02196DCC

	arm_func_start sub_02196EB4
sub_02196EB4: ; 0x02196EB4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, _02196FE0 ; =0x02005108
	mov r4, #0
	bl sub_02004EB0
	cmp r5, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02196FE4 ; =0x0219988C
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #8]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	movne r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x18]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r5, #0x10]
	cmp r2, #0
	ldrne r0, [r5, #0x14]
	cmpne r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r2, lsr #0x1f
	rsb r0, r1, r2, lsl #27
	adds r0, r1, r0, ror #27
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _02196FE8 ; =0x02199898
	mov r1, r4
	mov r2, #0x18
	bl sub_020787A8
	ldr r0, [r5, #0x18]
	ldr r6, _02196FE4 ; =0x0219988C
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x1c]
	str r0, [r6, #0x14]
	ldr r0, [r5, #8]
	str r0, [r6, #0x1c]
	str r4, [r6, #0x18]
	ldrb r0, [r5, #0xc]
	cmp r0, #0x20
	movhs r0, r4
	ldmhsia sp!, {r4, r5, r6, pc}
	strb r0, [r6, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	bl sub_02196680
	cmp r0, #0
	bne _02196FA0
	bl sub_02196740
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_02196FA0:
	mov r0, r5
	bl sub_02195A5C
	cmp r0, #0
	bne _02196FBC
	bl sub_02196740
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_02196FBC:
	bl sub_02193CB0
	cmp r0, #0
	movne r0, #1
	strne r0, [r6, #8]
	ldmneia sp!, {r4, r5, r6, pc}
	bl sub_02195B70
	bl sub_02196740
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02196FE0: .word 0x02005108
_02196FE4: .word 0x0219988C
_02196FE8: .word 0x02199898
	arm_func_end sub_02196EB4

	arm_func_start sub_02196FEC
sub_02196FEC: ; 0x02196FEC
	stmdb sp!, {r3, lr}
	bl sub_02193DA8
	bl sub_02195B70
	bl sub_02196740
	ldr r0, _02197010 ; =0x0219988C
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	.align 2, 0
_02197010: .word 0x0219988C
	arm_func_end sub_02196FEC

	arm_func_start sub_02197014
sub_02197014: ; 0x02197014
	stmdb sp!, {r3, lr}
	ldr r0, _02197054 ; =0x0219988C
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	tst r1, #0xf
	bne _02197040
	bl sub_02195B88
_02197040:
	bl sub_02194990
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_021948C4
	ldmia sp!, {r3, pc}
	.align 2, 0
_02197054: .word 0x0219988C
	arm_func_end sub_02197014

	arm_func_start sub_02197058
sub_02197058: ; 0x02197058
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r4, r0
	bl sub_021970CC
	cmp r0, #0
	beq _021970BC
	cmp r0, #1
	beq _02197088
	cmp r0, #2
	beq _021970B0
	b _021970BC
_02197088:
	ldr r0, _021970C8 ; =0x0219988C
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [r0, #0x14]
	ldr ip, [r0, #0x10]
	mov r0, r4
	blx ip
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, pc}
_021970B0:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021970BC:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021970C8: .word 0x0219988C
	arm_func_end sub_02197058

	arm_func_start sub_021970CC
sub_021970CC: ; 0x021970CC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r7]
	ldr r0, _021971A0 ; =0x5F564354
	cmp r1, r0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr sb, _021971A4 ; =0x0219988C
	ldr r0, [sb, #0x1c]
	cmp r0, #0
	ldrne r0, [sb, #8]
	cmpne r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, #0
	str r4, [r5]
	str r4, [r5, #4]
	bl sub_0207BB0C
	ldrb r2, [r7, #4]
	and r3, r2, #0xf0
	cmp r3, #0x40
	bne _02197164
	ldr r2, [sb, #4]
	mov r3, r0
	add r0, r2, #1
	str r0, [sb, #4]
	str r1, [sp]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl sub_021946E0
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02197164:
	cmp r2, #0
	beq _02197174
	cmp r2, #0xff
	bne _02197198
_02197174:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl sub_02195C30
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02197198:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021971A0: .word 0x5F564354
_021971A4: .word 0x0219988C
	arm_func_end sub_021970CC
_021971A8:
	.byte 0xFF, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x01, 0x02
	.byte 0xFF, 0xFF, 0x01, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x04, 0x06, 0x08, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x02, 0x04, 0x06, 0x08, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00
	.byte 0x0D, 0x00, 0x0E, 0x00, 0x10, 0x00, 0x11, 0x00, 0x13, 0x00, 0x15, 0x00, 0x17, 0x00, 0x19, 0x00
	.byte 0x1C, 0x00, 0x1F, 0x00, 0x22, 0x00, 0x25, 0x00, 0x29, 0x00, 0x2D, 0x00, 0x32, 0x00, 0x37, 0x00
	.byte 0x3C, 0x00, 0x42, 0x00, 0x49, 0x00, 0x50, 0x00, 0x58, 0x00, 0x61, 0x00, 0x6B, 0x00, 0x76, 0x00
	.byte 0x82, 0x00, 0x8F, 0x00, 0x9D, 0x00, 0xAD, 0x00, 0xBE, 0x00, 0xD1, 0x00, 0xE6, 0x00, 0xFD, 0x00
	.byte 0x17, 0x01, 0x33, 0x01, 0x51, 0x01, 0x73, 0x01, 0x98, 0x01, 0xC1, 0x01, 0xEE, 0x01, 0x20, 0x02
	.byte 0x56, 0x02, 0x92, 0x02, 0xD4, 0x02, 0x1C, 0x03, 0x6C, 0x03, 0xC3, 0x03, 0x24, 0x04, 0x8E, 0x04
	.byte 0x02, 0x05, 0x83, 0x05, 0x10, 0x06, 0xAB, 0x06, 0x56, 0x07, 0x12, 0x08, 0xE0, 0x08, 0xC3, 0x09
	.byte 0xBD, 0x0A, 0xD0, 0x0B, 0xFF, 0x0C, 0x4C, 0x0E, 0xBA, 0x0F, 0x4C, 0x11, 0x07, 0x13, 0xEE, 0x14
	.byte 0x06, 0x17, 0x54, 0x19, 0xDC, 0x1B, 0xA5, 0x1E, 0xB6, 0x21, 0x15, 0x25, 0xCA, 0x28, 0xDF, 0x2C
	.byte 0x5B, 0x31, 0x4B, 0x36, 0xB9, 0x3B, 0xB2, 0x41, 0x44, 0x48, 0x7E, 0x4F, 0x71, 0x57, 0x2F, 0x60
	.byte 0xCE, 0x69, 0x62, 0x74, 0xFF, 0x7F, 0x00, 0x00, 0x08, 0x00, 0x08, 0x00, 0x02, 0x04, 0x03, 0x04
	.byte 0x04, 0x04, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x01, 0x02
	.byte 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x00, 0x01, 0x08, 0x04, 0x0A, 0x00, 0x07, 0x0C, 0x02
	.byte 0x03, 0x09, 0x02, 0x00, 0xFE, 0xFE, 0xFE, 0x03, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE
	.byte 0xFE, 0xFE, 0xFD, 0xFF, 0x02, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFE, 0xFE, 0xFE, 0xFD, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0x00, 0xFE, 0xFD, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFE, 0xFE, 0xFE, 0xFD, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFE, 0xFE, 0xFD, 0xFF
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x01, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0x00, 0x00
	.byte 0x00, 0xFE, 0xFE, 0xFE, 0xFE, 0x05, 0xFE, 0xFE, 0xFE, 0x00, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0x05
	.byte 0xFE, 0xFE, 0xFE, 0xFE, 0x00, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE
	.byte 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0x02, 0x00, 0x00, 0x00, 0xFE, 0x00, 0xFE
	.byte 0xFE, 0xFE, 0xFE, 0xFE, 0x00, 0x00, 0xFE, 0xFE, 0x00, 0xFE, 0x00, 0x00, 0xFE, 0xFE, 0xFE, 0x01
	.byte 0xFF, 0xFE, 0x00, 0x00, 0x00, 0xFE, 0xFE, 0xFE, 0x05, 0x05, 0xFE, 0xFF, 0xFE, 0x00, 0xFE, 0xFE
	.byte 0xFE, 0xFE, 0xFE, 0x05, 0xFE, 0xFE, 0xFF, 0xFE, 0x00, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE
	.byte 0xFE, 0xFF, 0xFE, 0x00, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFF, 0x03, 0x00, 0x00
	.byte 0x00, 0xFE, 0x00, 0xFE, 0xFE, 0xFE, 0xFE, 0xFF, 0x00, 0x00, 0xFE, 0xFE, 0x00, 0xFE, 0x00, 0x00
	.byte 0x04, 0xFE, 0xFE, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFE, 0xFE, 0xFE, 0xFF
	.byte 0x02, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFE, 0x05, 0x05, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFE, 0xFE, 0xFE, 0xFE, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFE, 0x05, 0xFE
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFE, 0xFE, 0xFE, 0xFF, 0x00, 0x00, 0xFF, 0xFF
	.byte 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x72, 0x65, 0x74, 0x00, 0x28, 0x63, 0x6F, 0x6E, 0x66, 0x69, 0x67, 0x2E
	.byte 0x61, 0x69, 0x64, 0x20, 0x21, 0x3D, 0x20, 0x2D, 0x31, 0x29, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x3F, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0xFF, 0x03, 0x00, 0x00, 0xFF, 0x07, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00, 0xFF, 0x1F, 0x00, 0x00
	.byte 0xF7, 0xB5, 0xEF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00, 0xFC, 0x03, 0x00, 0x00, 0xFB, 0xE9, 0x3D, 0x40, 0xBC, 0xC7, 0xD1, 0x2C
	.byte 0x2A, 0xD0, 0x7C, 0x03, 0xF0, 0x08, 0x93, 0xF5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	; 0x021971A8
