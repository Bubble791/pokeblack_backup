	.include "asm/macros.inc"
	.include "fx_mtx43.inc"
	.include "global.inc"
	.text

	arm_func_start MTX_Identity43_
MTX_Identity43_: ; 0x02072C20
	mov r2, #0x1000
	mov r3, #0
	stmia r0!, {r2, r3}
	mov r1, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r3}
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	arm_func_end MTX_Identity43_

	arm_func_start MTX_Copy43To44_
MTX_Copy43To44_: ; 0x02072C48
	stmdb sp!, {r4}
	mov ip, #0
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	mov ip, #0x1000
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia sp!, {r4}
	bx lr
	arm_func_end MTX_Copy43To44_

	thumb_func_start MTX_Scale43_
MTX_Scale43_: ; 0x02072C7C
	stmia r0!, {r1}
	mov r1, #0
	str r3, [r0, #0x1c]
	mov r3, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r1, r2, r3}
	mov r2, #0
	stmia r0!, {r1, r3}
	add r0, #4
	stmia r0!, {r1, r2, r3}
	bx lr
	.align 2, 0
	thumb_func_end MTX_Scale43_

	arm_func_start MTX_ScaleApply43
MTX_ScaleApply43: ; 0x02072C94
	stmdb sp!, {r3, r4, r5, lr}
	ldr ip, [sp, #0x10]
	mov r5, r0
	mov r4, r1
	str ip, [sp]
	bl sub_020724C0
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	str r2, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end MTX_ScaleApply43

	thumb_func_start MTX_RotY43_
MTX_RotY43_: ; 0x02072CC8
	str r1, [r0, #0x18]
	mov r3, #0
	stmia r0!, {r2, r3}
	neg r1, r1
	stmia r0!, {r1, r3}
	mov r1, #1
	lsl r1, r1, #0xc
	stmia r0!, {r1, r3}
	add r0, #4
	mov r1, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	.align 2, 0
	thumb_func_end MTX_RotY43_

	arm_func_start MTX_RotAxis43
MTX_RotAxis43: ; 0x02072CE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020725D8
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	arm_func_end MTX_RotAxis43

	arm_func_start MTX_Inverse43
MTX_Inverse43: ; 0x02072D04
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x68
	mov sl, r0
	ldr r0, [sl, #0x14]
	ldr r3, [sl, #0x18]
	ldr r2, [sl, #0xc]
	ldr r6, [sl, #0x20]
	add sb, sp, #0x38
	cmp sl, r1
	str r1, [sp]
	movne sb, r1
	smull fp, r8, r2, r6
	smull r7, r1, r0, r3
	subs r7, fp, r7
	sbc ip, r8, r1
	ldr r4, [sl, #0x10]
	ldr r5, [sl, #0x1c]
	adds r1, r7, #0x800
	smull fp, r8, r4, r6
	smull r7, r6, r0, r5
	adc r0, ip, #0
	subs r7, fp, r7
	sbc r6, r8, r6
	mov r8, r1, lsr #0xc
	orr r8, r8, r0, lsl #20
	smull r1, r0, r2, r5
	adds r7, r7, #0x800
	smull r5, r3, r4, r3
	adc r2, r6, #0
	mov r7, r7, lsr #0xc
	orr r7, r7, r2, lsl #20
	subs r1, r1, r5
	sbc r5, r0, r3
	ldr r2, [sl]
	adds r6, r1, #0x800
	ldr fp, [sl, #4]
	smull r4, r3, r2, r7
	smull r1, r0, fp, r8
	adc r2, r5, #0
	mov r6, r6, lsr #0xc
	orr r6, r6, r2, lsl #20
	subs r2, r4, r1
	ldr r1, [sl, #8]
	sbc r0, r3, r0
	smlal r2, r0, r1, r6
	adds r1, r2, #0x800
	adc r2, r0, #0
	mov r0, r1, lsr #0xc
	mov r1, r8, asr #0x1f
	str r1, [sp, #4]
	mov r1, r7, asr #0x1f
	str r1, [sp, #8]
	mov r1, r6, asr #0x1f
	str r1, [sp, #0xc]
	orrs r0, r0, r2, lsl #20
	mov r1, #0
	addeq sp, sp, #0x68
	subeq r0, r1, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	blx FX_InvAsync
	ldr r1, [sl, #8]
	ldr r2, [sl, #0x1c]
	ldr fp, [sl, #0x10]
	smull r0, r4, r2, r1
	smull r3, r2, fp, r1
	ldr r5, [sl, #0x18]
	str r2, [sp, #0x18]
	str r3, [sp, #0x14]
	smull r3, r2, r5, r1
	str r2, [sp, #0x20]
	ldr r2, [sl, #0x20]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x10]
	ldr r5, [sp, #0x10]
	ldmia sl, {r3, lr}
	smull ip, r5, lr, r5
	subs r0, ip, r0
	ldr r2, [sl, #0xc]
	sbc r4, r5, r4
	smull r1, r5, r2, r1
	str r5, [sp, #0x28]
	mov r5, r0, lsr #0xc
	ldr fp, [sl, #0x14]
	orr r5, r5, r4, lsl #20
	smull r4, r2, lr, fp
	ldr r0, [sp, #0x14]
	subs r4, r4, r0
	ldr r0, [sp, #0x18]
	mov r4, r4, lsr #0xc
	sbc r0, r2, r0
	orr r4, r4, r0, lsl #20
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	smull ip, r0, r3, r0
	subs r2, ip, r2
	ldr ip, [sp, #0x20]
	sbc r0, r0, ip
	smull ip, fp, r3, fp
	ldr r3, [sp, #0x28]
	subs r1, ip, r1
	sbc r3, fp, r3
	mov fp, r2, lsr #0xc
	orr fp, fp, r0, lsl #20
	mov r0, r1, lsr #0xc
	orr r0, r0, r3, lsl #20
	str r0, [sp, #0x24]
	blx FX_GetDivResult
	smull r2, r1, r0, r5
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	rsb r5, r2, #0
	smull r2, r1, r0, r4
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, fp
	mov r3, r2, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldr r1, [sp, #0x24]
	umull lr, fp, r0, r7
	smull r2, r1, r0, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #8]
	mov ip, r0, asr #0x1f
	mla fp, r0, r1, fp
	mla fp, ip, r7, fp
	mov r1, lr, lsr #0xc
	orr r1, r1, fp, lsl #20
	stmia sb, {r1, r5}
	str r1, [sp, #0x34]
	ldr r1, [sp, #4]
	umull fp, r7, r0, r8
	mla r7, r0, r1, r7
	mla r7, ip, r8, r7
	mov r1, fp, lsr #0xc
	orr r1, r1, r7, lsl #20
	rsb r1, r1, #0
	str r4, [sb, #8]
	str r1, [sb, #0xc]
	str r1, [sp, #0x2c]
	umull r8, r7, r0, r6
	ldr r1, [sp, #0xc]
	rsb r2, r2, #0
	mla r7, r0, r1, r7
	str r3, [sb, #0x10]
	mla r7, ip, r6, r7
	mov fp, r8, lsr #0xc
	str r2, [sb, #0x14]
	orr fp, fp, r7, lsl #20
	str fp, [sb, #0x18]
	ldr r7, [sl]
	ldr r1, [sl, #0x1c]
	ldr r8, [sl, #0x18]
	smull r6, r1, r7, r1
	ldr r7, [sl, #4]
	smull ip, r7, r8, r7
	subs r6, r6, ip
	sbc r1, r1, r7
	mov r6, r6, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r6, r1, r0, r6
	mov r6, r6, lsr #0xc
	orr r6, r6, r1, lsl #20
	rsb r1, r6, #0
	str r1, [sb, #0x1c]
	str r1, [sp, #0x30]
	ldr r7, [sl]
	ldr r1, [sl, #0x10]
	ldr r8, [sl, #0xc]
	smull r6, r1, r7, r1
	ldr r7, [sl, #4]
	smull ip, r7, r8, r7
	subs r6, r6, ip
	sbc r1, r1, r7
	mov r6, r6, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r6, r1, r0, r6
	mov r8, r6, lsr #0xc
	orr r8, r8, r1, lsl #20
	str r8, [sb, #0x20]
	add r0, sp, #0x38
	ldr r6, [sl, #0x28]
	ldr ip, [sp, #0x2c]
	ldr lr, [sl, #0x24]
	smull r7, r6, ip, r6
	ldr ip, [sp, #0x34]
	ldr r1, [sl, #0x2c]
	smlal r7, r6, ip, lr
	smlal r7, r6, fp, r1
	mov r1, r7, lsr #0xc
	orr r1, r1, r6, lsl #20
	rsb r1, r1, #0
	str r1, [sb, #0x24]
	ldr r1, [sl, #0x28]
	ldr r6, [sl, #0x24]
	smull ip, fp, r3, r1
	smlal ip, fp, r5, r6
	ldr r7, [sl, #0x2c]
	ldr r1, [sp, #0x30]
	cmp sb, r0
	smlal ip, fp, r1, r7
	mov r1, ip, lsr #0xc
	orr r1, r1, fp, lsl #20
	rsb r1, r1, #0
	str r1, [sb, #0x28]
	ldr r1, [sl, #0x28]
	ldr r3, [sl, #0x24]
	smull r6, r1, r2, r1
	smlal r6, r1, r4, r3
	ldr r5, [sl, #0x2c]
	smlal r6, r1, r8, r5
	mov r2, r6, lsr #0xc
	orr r2, r2, r1, lsl #20
	rsb r1, r2, #0
	str r1, [sb, #0x2c]
	bne _0207306C
	ldr r1, [sp]
	bl sub_02078758
_0207306C:
	mov r0, #0
	add sp, sp, #0x68
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MTX_Inverse43

	arm_func_start MTX_Concat43
MTX_Concat43: ; 0x02073078
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x30
	ldr r8, [r0, #4]
	ldr r3, [r1, #0xc]
	mov ip, r2
	smull r6, r5, r8, r3
	ldr sb, [r0]
	ldr r3, [r1]
	cmp ip, r1
	smlal r6, r5, sb, r3
	ldr lr, [r0, #8]
	ldr r4, [r1, #0x18]
	addeq r2, sp, #0
	smlal r6, r5, lr, r4
	mov r4, r6, lsr #0xc
	orr r4, r4, r5, lsl #20
	str r4, [r2]
	ldr r4, [r1, #0x10]
	ldr r5, [r1, #4]
	smull r7, r6, r8, r4
	smlal r7, r6, sb, r5
	ldr r4, [r1, #0x1c]
	ldr r3, [r0, #0x10]
	smlal r7, r6, lr, r4
	mov r4, r7, lsr #0xc
	orr r4, r4, r6, lsl #20
	str r4, [r2, #4]
	ldr sl, [r1, #0x14]
	ldr r7, [r1, #8]
	smull r6, r4, r8, sl
	smlal r6, r4, sb, r7
	smull sb, r8, r3, sl
	ldr r5, [r0, #0xc]
	ldr sl, [r1, #0x20]
	smlal sb, r8, r5, r7
	ldr r7, [r0, #0x14]
	smlal r6, r4, lr, sl
	mov r6, r6, lsr #0xc
	orr r6, r6, r4, lsl #20
	smlal sb, r8, r7, sl
	mov r4, sb, lsr #0xc
	str r6, [r2, #8]
	orr r4, r4, r8, lsl #20
	str r4, [r2, #0x14]
	ldr r4, [r1, #0x10]
	ldr r6, [r1, #4]
	smull sb, r8, r3, r4
	smlal sb, r8, r5, r6
	ldr r4, [r1, #0x1c]
	ldr r6, [r0, #0x18]
	smlal sb, r8, r7, r4
	mov r4, sb, lsr #0xc
	orr r4, r4, r8, lsl #20
	str r4, [r2, #0x10]
	ldr r4, [r1, #0xc]
	ldr lr, [r1]
	smull sb, r8, r3, r4
	smlal sb, r8, r5, lr
	ldr r3, [r1, #0x18]
	ldr r5, [r0, #0x1c]
	smlal sb, r8, r7, r3
	mov r7, sb, lsr #0xc
	orr r7, r7, r8, lsl #20
	str r7, [r2, #0xc]
	smull r8, r7, r5, r4
	smlal r8, r7, r6, lr
	ldr r4, [r0, #0x20]
	ldr lr, [r0, #0x28]
	smlal r8, r7, r4, r3
	mov r3, r8, lsr #0xc
	orr r3, r3, r7, lsl #20
	str r3, [r2, #0x18]
	ldr r7, [r1, #0x10]
	ldr r3, [r0, #0x24]
	smull sl, r7, r5, r7
	ldr r8, [r1, #4]
	ldr sb, [r1, #0x1c]
	smlal sl, r7, r6, r8
	smlal sl, r7, r4, sb
	mov r8, sl, lsr #0xc
	orr r8, r8, r7, lsl #20
	str r8, [r2, #0x1c]
	ldr r7, [r1, #0x14]
	ldr sl, [r1, #8]
	smull sb, r8, r5, r7
	smlal sb, r8, r6, sl
	smull r7, r6, lr, r7
	smlal r7, r6, r3, sl
	ldr sl, [r1, #0x20]
	ldr r0, [r0, #0x2c]
	smlal sb, r8, r4, sl
	mov r4, sb, lsr #0xc
	orr r4, r4, r8, lsl #20
	smlal r7, r6, r0, sl
	str r4, [r2, #0x20]
	mov r4, r7, lsr #0xc
	orr r4, r4, r6, lsl #20
	ldr r6, [r1, #0x2c]
	add r5, sp, #0
	adds r4, r6, r4
	str r4, [r2, #0x2c]
	ldr r4, [r1, #0x10]
	ldr r6, [r1, #4]
	smull r8, r4, lr, r4
	smlal r8, r4, r3, r6
	ldr r7, [r1, #0x1c]
	ldr sb, [r1, #0x28]
	smlal r8, r4, r0, r7
	mov r6, r8, lsr #0xc
	orr r6, r6, r4, lsl #20
	adds r4, sb, r6
	str r4, [r2, #0x28]
	ldr r8, [r1, #0x24]
	ldr r6, [r1, #0x18]
	ldr r4, [r1]
	ldr r1, [r1, #0xc]
	smull r7, r1, lr, r1
	smlal r7, r1, r3, r4
	smlal r7, r1, r0, r6
	mov r0, r7, lsr #0xc
	orr r0, r0, r1, lsl #20
	adds r0, r8, r0
	cmp r2, r5
	str r0, [r2, #0x24]
	addne sp, sp, #0x30
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MTX_Concat43

	arm_func_start MTX_MultVec43
MTX_MultVec43: ; 0x02073290
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r7, [r0, #4]
	ldr r5, [r1, #0xc]
	ldr r3, [r1, #0x10]
	ldr r4, [r1, #0x14]
	smull lr, ip, r7, r5
	smull r8, r3, r7, r3
	smull r6, r5, r7, r4
	ldr sl, [r0]
	ldr sb, [r1]
	ldr r7, [r1, #4]
	ldr r4, [r1, #8]
	smlal lr, ip, sl, sb
	smlal r8, r3, sl, r7
	smlal r6, r5, sl, r4
	ldr sb, [r0, #8]
	ldr r7, [r1, #0x18]
	ldr r4, [r1, #0x1c]
	ldr r0, [r1, #0x20]
	smlal lr, ip, sb, r7
	smlal r8, r3, sb, r4
	smlal r6, r5, sb, r0
	mov sb, lr, lsr #0xc
	mov r7, r8, lsr #0xc
	mov r4, r6, lsr #0xc
	ldr r0, [r1, #0x24]
	orr sb, sb, ip, lsl #20
	add r6, sb, r0
	ldr r0, [r1, #0x28]
	orr r7, r7, r3, lsl #20
	add r3, r7, r0
	ldr r0, [r1, #0x2c]
	orr r4, r4, r5, lsl #20
	add r0, r4, r0
	str r6, [r2]
	str r3, [r2, #4]
	str r0, [r2, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MTX_MultVec43

	arm_func_start MTX_LookAt
MTX_LookAt: ; 0x02073328
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	mov r8, r0
	ldr r4, [r8]
	ldr r0, [r2]
	mov r7, r1
	sub r4, r4, r0
	ldr sb, [r8, #4]
	ldr r6, [r2, #4]
	ldr r1, [r8, #8]
	sub sb, sb, r6
	ldr r0, [r2, #8]
	add r5, sp, #0x18
	sub r2, r1, r0
	mov r0, r5
	mov r1, r5
	mov r6, r3
	str r4, [sp, #0x18]
	str sb, [sp, #0x1c]
	str r2, [sp, #0x20]
	bl sub_02074254
	add sb, sp, #0xc
	mov r0, r7
	mov r1, r5
	mov r2, sb
	bl sub_02074098
	mov r0, sb
	mov r1, sb
	bl sub_02074254
	add r4, sp, #0
	mov r0, r5
	mov r1, sb
	mov r2, r4
	bl sub_02074098
	ldr r2, [sp, #0xc]
	mov r1, sb
	str r2, [r6]
	ldr r2, [sp]
	mov r0, r8
	str r2, [r6, #4]
	ldr r2, [sp, #0x18]
	str r2, [r6, #8]
	ldr r2, [sp, #0x10]
	str r2, [r6, #0xc]
	ldr r2, [sp, #4]
	str r2, [r6, #0x10]
	ldr r2, [sp, #0x1c]
	str r2, [r6, #0x14]
	ldr r2, [sp, #0x14]
	str r2, [r6, #0x18]
	ldr r2, [sp, #8]
	str r2, [r6, #0x1c]
	ldr r2, [sp, #0x20]
	str r2, [r6, #0x20]
	bl sub_02074018
	rsb r0, r0, #0
	str r0, [r6, #0x24]
	mov r1, r4
	mov r0, r8
	bl sub_02074018
	rsb r0, r0, #0
	str r0, [r6, #0x28]
	mov r1, r5
	mov r0, r8
	bl sub_02074018
	rsb r0, r0, #0
	str r0, [r6, #0x2c]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end MTX_LookAt
