	.include "asm/macros.inc"
	.include "fx_mtx33.inc"
	.include "global.inc"
	.text

	arm_func_start MTX_Identity33_
MTX_Identity33_: ; 0x0207244C
	mov r2, #0x1000
	str r2, [r0, #0x20]
	mov r3, #0
	stmia r0!, {r2, r3}
	mov r1, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	arm_func_end MTX_Identity33_

	arm_func_start MTX_Copy33To44_
MTX_Copy33To44_: ; 0x02072470
	stmdb sp!, {r4}
	mov ip, #0
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4, ip}
	mov r2, #0x1000
	str ip, [r1]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str r2, [r1, #0xc]
	ldmia sp!, {r4}
	bx lr
	arm_func_end MTX_Copy33To44_

	thumb_func_start MTX_Scale33_
MTX_Scale33_: ; 0x020724AC
	stmia r0!, {r1}
	mov r1, #0
	str r3, [r0, #0x1c]
	mov r3, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r1, r2, r3}
	mov r2, #0
	stmia r0!, {r1, r3}
	bx lr
	.align 2, 0
	thumb_func_end MTX_Scale33_

	arm_func_start MTX_ScaleApply33
MTX_ScaleApply33: ; 0x020724C0
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r6, [r0]
	ldr r5, [r0, #4]
	smull r8, r7, r2, r6
	ldr r4, [r0, #8]
	ldr ip, [r0, #0xc]
	smull fp, r4, r2, r4
	str r4, [sp]
	ldr sl, [r0, #0x10]
	smull r6, r5, r2, r5
	smull r4, lr, r3, ip
	ldr sb, [r0, #0x14]
	smull ip, r2, r3, sl
	smull sl, sb, r3, sb
	mov r3, r8, lsr #0xc
	orr r3, r3, r7, lsl #20
	mov r7, r6, lsr #0xc
	orr r7, r7, r5, lsl #20
	mov r8, ip, lsr #0xc
	orr r8, r8, r2, lsl #20
	str r3, [r1]
	mov r3, r4, lsr #0xc
	str r7, [r1, #4]
	mov r4, sl, lsr #0xc
	orr r3, r3, lr, lsl #20
	orr r4, r4, sb, lsl #20
	ldr r5, [sp]
	mov r6, fp, lsr #0xc
	orr r6, r6, r5, lsl #20
	ldr r2, [sp, #0x28]
	ldr r7, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	str r6, [r1, #8]
	ldr r0, [r0, #0x20]
	str r3, [r1, #0xc]
	smull sb, r7, r2, r7
	str r8, [r1, #0x10]
	mov r8, sb, lsr #0xc
	orr r8, r8, r7, lsl #20
	smull r6, r5, r2, r5
	smull r3, r0, r2, r0
	str r4, [r1, #0x14]
	mov r4, r6, lsr #0xc
	mov r2, r3, lsr #0xc
	orr r4, r4, r5, lsl #20
	orr r2, r2, r0, lsl #20
	str r8, [r1, #0x18]
	str r4, [r1, #0x1c]
	str r2, [r1, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MTX_ScaleApply33


	thumb_func_start MTX_RotX33_
MTX_RotX33_: ; 0x02072588
	mov r3, #1
	lsl r3, r3, #0xc
	str r3, [r0]
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	str r3, [r0, #0x18]
	neg r1, r1
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	thumb_func_end MTX_RotX33_

	thumb_func_start MTX_RotY33_
MTX_RotY33_: ; 0x020725A4
	str r2, [r0]
	str r2, [r0, #0x20]
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #0xc]
	str r3, [r0, #0x14]
	str r3, [r0, #0x1c]
	neg r2, r1
	mov r3, #1
	lsl r3, r3, #0xc
	str r1, [r0, #0x18]
	str r2, [r0, #8]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end MTX_RotY33_

	thumb_func_start MTX_RotZ33_
MTX_RotZ33_: ; 0x020725C0
	stmia r0!, {r2}
	mov r3, #0
	stmia r0!, {r1, r3}
	neg r1, r1
	stmia r0!, {r1, r2}
	mov r1, #1
	lsl r1, r1, #0xc
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end MTX_RotZ33_

	arm_func_start MTX_RotAxis33
MTX_RotAxis33: ; 0x020725D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	rsb sb, r3, #0x1000
	ldmia r1, {r5, r7}
	smull lr, ip, sb, r5
	umull r8, fp, r7, lr
	ldr r6, [r1, #8]
	mla fp, r7, ip, fp
	umull sl, r1, r6, lr
	str r1, [sp, #8]
	smull r4, r1, r5, r5
	str r1, [sp, #4]
	mov r1, r8, lsr #0x18
	smull r5, r8, r2, r5
	mov r5, r5, lsr #0xc
	orr r5, r5, r8, lsl #20
	str r5, [sp, #0xc]
	mov r5, r7, asr #0x1f
	str r5, [sp]
	str r1, [sp, #0x10]
	mov r1, sl, lsr #0x18
	ldr sl, [sp]
	mov r5, r6, asr #0x1f
	mla fp, sl, lr, fp
	ldr sl, [sp, #0x10]
	mov r8, sb, asr #0x1f
	orr sl, sl, fp, lsl #8
	str sl, [sp, #0x10]
	ldr sl, [sp, #8]
	mla sl, r6, ip, sl
	mla sl, r5, lr, sl
	str sl, [sp, #8]
	orr r1, r1, sl, lsl #8
	ldr sl, [sp, #4]
	umull ip, fp, sb, r4
	mla fp, sb, sl, fp
	mla fp, r8, r4, fp
	mov r4, ip, lsr #0x18
	orr r4, r4, fp, lsl #8
	add r4, r4, r3
	str r4, [r0]
	smull sl, r4, r7, r7
	umull ip, fp, sb, sl
	mla fp, sb, r4, fp
	mla fp, r8, sl, fp
	mov r4, ip, lsr #0x18
	orr r4, r4, fp, lsl #8
	add r4, r4, r3
	str r4, [r0, #0x10]
	smull sl, r4, r6, r6
	umull ip, fp, sb, sl
	mla fp, sb, r4, fp
	mla fp, r8, sl, fp
	mov r4, ip, lsr #0x18
	orr r4, r4, fp, lsl #8
	add r3, r4, r3
	str r3, [r0, #0x20]
	smull r4, r3, sb, r7
	smull r8, r7, r2, r7
	mov r8, r8, lsr #0xc
	orr r8, r8, r7, lsl #20
	smull sb, r7, r2, r6
	mov sb, sb, lsr #0xc
	ldr r2, [sp, #0x10]
	orr sb, sb, r7, lsl #20
	add r7, r2, sb
	sub r2, r2, sb
	str r2, [r0, #0xc]
	sub r2, r1, r8
	add r1, r1, r8
	str r2, [r0, #8]
	str r1, [r0, #0x18]
	umull r2, r1, r6, r4
	mla r1, r6, r3, r1
	mla r1, r5, r4, r1
	mov r3, r2, lsr #0x18
	orr r3, r3, r1, lsl #8
	ldr r1, [sp, #0xc]
	str r7, [r0, #4]
	add r2, r3, r1
	sub r1, r3, r1
	str r2, [r0, #0x14]
	str r1, [r0, #0x1c]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MTX_RotAxis33

	arm_func_start MTX_Inverse33
MTX_Inverse33: ; 0x0207272C
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x50
	mov sl, r0
	ldr r0, [sl, #0x14]
	ldr r3, [sl, #0x18]
	ldr r2, [sl, #0xc]
	ldr r6, [sl, #0x20]
	add sb, sp, #0x2c
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
	addeq sp, sp, #0x50
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
	rsb lr, r2, #0
	smull r2, r1, r0, r4
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, fp
	mov r3, r2, lsr #0xc
	orr r3, r3, r1, lsl #20
	ldr r1, [sp, #0x24]
	umull fp, r5, r0, r7
	smull r2, r1, r0, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #8]
	mov ip, r0, asr #0x1f
	mla r5, r0, r1, r5
	mla r5, ip, r7, r5
	mov r1, fp, lsr #0xc
	orr r1, r1, r5, lsl #20
	stmia sb, {r1, lr}
	str r4, [sb, #8]
	ldr r1, [sp, #4]
	umull r5, r4, r0, r8
	mla r4, r0, r1, r4
	mla r4, ip, r8, r4
	mov r1, r5, lsr #0xc
	orr r1, r1, r4, lsl #20
	rsb r1, r1, #0
	str r1, [sb, #0xc]
	ldr r1, [sp, #0xc]
	rsb r2, r2, #0
	str r3, [sb, #0x10]
	str r2, [sb, #0x14]
	umull r3, r2, r0, r6
	mla r2, r0, r1, r2
	mla r2, ip, r6, r2
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	str r1, [sb, #0x18]
	ldr r3, [sl]
	ldr r1, [sl, #0x1c]
	ldr r2, [sl, #0x18]
	smull r5, r4, r3, r1
	ldr r1, [sl, #4]
	smull r3, r1, r2, r1
	subs r2, r5, r3
	sbc r1, r4, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r2, r1, r0, r2
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	rsb r1, r2, #0
	str r1, [sb, #0x1c]
	ldr r3, [sl]
	ldr r1, [sl, #0x10]
	ldr r2, [sl, #0xc]
	smull r5, r4, r3, r1
	ldr r1, [sl, #4]
	smull r3, r1, r2, r1
	subs r2, r5, r3
	sbc r1, r4, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r2, r1, r0, r2
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	str r0, [sb, #0x20]
	add r0, sp, #0x2c
	cmp sb, r0
	bne _02072A04
	ldr r1, [sp]
	bl sub_0207873C
_02072A04:
	mov r0, #0
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MTX_Inverse33

	arm_func_start MTX_Concat33
MTX_Concat33: ; 0x02072A10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr sb, [r0, #4]
	ldr r3, [r1, #0xc]
	mov ip, r2
	smull r6, r5, sb, r3
	ldr sl, [r0]
	ldr r3, [r1]
	cmp ip, r1
	smlal r6, r5, sl, r3
	ldr r8, [r0, #8]
	ldr r4, [r1, #0x18]
	addeq r2, sp, #0
	smlal r6, r5, r8, r4
	mov r4, r6, lsr #0xc
	orr r4, r4, r5, lsl #20
	str r4, [r2]
	ldr r4, [r1, #0x10]
	ldr r5, [r1, #4]
	smull r7, r6, sb, r4
	smlal r7, r6, sl, r5
	ldr r5, [r1, #0x1c]
	add lr, sp, #0
	smlal r7, r6, r8, r5
	mov r5, r7, lsr #0xc
	orr r5, r5, r6, lsl #20
	str r5, [r2, #4]
	ldr fp, [r1, #0x14]
	ldr r3, [r0, #0x10]
	smull r6, r5, sb, fp
	ldr r7, [r1, #8]
	ldr r4, [r0, #0xc]
	smlal r6, r5, sl, r7
	smull sl, sb, r3, fp
	smlal sl, sb, r4, r7
	ldr r7, [r1, #0x20]
	ldr fp, [r0, #0x14]
	smlal r6, r5, r8, r7
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	smlal sl, sb, fp, r7
	mov r5, sl, lsr #0xc
	str r6, [r2, #8]
	orr r5, r5, sb, lsl #20
	str r5, [r2, #0x14]
	ldr r5, [r1, #0x10]
	ldr r6, [r1, #4]
	smull r8, r7, r3, r5
	smlal r8, r7, r4, r6
	ldr r5, [r1, #0x1c]
	ldr r6, [r0, #0x1c]
	smlal r8, r7, fp, r5
	mov r5, r8, lsr #0xc
	orr r5, r5, r7, lsl #20
	str r5, [r2, #0x10]
	ldr r5, [r1, #0xc]
	ldr sl, [r1]
	smull r8, r7, r3, r5
	smlal r8, r7, r4, sl
	smull r4, r3, r6, r5
	ldr r5, [r0, #0x18]
	ldr sb, [r1, #0x18]
	smlal r4, r3, r5, sl
	ldr r0, [r0, #0x20]
	smlal r8, r7, fp, sb
	smlal r4, r3, r0, sb
	mov r8, r8, lsr #0xc
	orr r8, r8, r7, lsl #20
	mov r4, r4, lsr #0xc
	cmp r2, lr
	str r8, [r2, #0xc]
	orr r4, r4, r3, lsl #20
	str r4, [r2, #0x18]
	ldr r3, [r1, #0x10]
	ldr r4, [r1, #4]
	smull r8, r3, r6, r3
	smlal r8, r3, r5, r4
	ldr r7, [r1, #0x1c]
	addne sp, sp, #0x24
	smlal r8, r3, r0, r7
	mov r4, r8, lsr #0xc
	orr r4, r4, r3, lsl #20
	str r4, [r2, #0x1c]
	ldr r4, [r1, #0x20]
	ldr r3, [r1, #8]
	ldr r1, [r1, #0x14]
	smull r7, r1, r6, r1
	smlal r7, r1, r5, r3
	smlal r7, r1, r0, r4
	mov r0, r7, lsr #0xc
	orr r0, r0, r1, lsl #20
	str r0, [r2, #0x20]
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r0, [lr]
	str r0, [ip]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end MTX_Concat33

	arm_func_start MTX_MultVec33
MTX_MultVec33: ; 0x02072BA4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r6, [r0, #4]
	ldr r3, [r1, #0xc]
	ldr r4, [r1, #0x10]
	ldr lr, [r1, #0x14]
	smull r8, r7, r6, r4
	smull ip, r3, r6, r3
	smull r5, r4, r6, lr
	ldr sl, [r0]
	ldmib r1, {r6, lr}
	ldr sb, [r1]
	smlal r8, r7, sl, r6
	smlal ip, r3, sl, sb
	smlal r5, r4, sl, lr
	ldr lr, [r0, #8]
	ldr sb, [r1, #0x18]
	ldr r6, [r1, #0x1c]
	ldr r0, [r1, #0x20]
	smlal r8, r7, lr, r6
	smlal ip, r3, lr, sb
	smlal r5, r4, lr, r0
	mov r6, ip, lsr #0xc
	mov r1, r8, lsr #0xc
	mov r0, r5, lsr #0xc
	orr r6, r6, r3, lsl #20
	orr r1, r1, r7, lsl #20
	orr r0, r0, r4, lsl #20
	str r6, [r2]
	str r1, [r2, #4]
	str r0, [r2, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end MTX_MultVec33
