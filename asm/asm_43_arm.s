	.include "asm/macros.inc"
	.include "asm_1.inc"
	.include "global.inc"

	.text
	arm_func_start sub_02072CE4
sub_02072CE4: ; 0x02072CE4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl sub_020725D8
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r4, pc}
	arm_func_end sub_02072CE4

	arm_func_start sub_02072D04
sub_02072D04: ; 0x02072D04
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
	arm_func_end sub_02072D04

	arm_func_start sub_02073078
sub_02073078: ; 0x02073078
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
	arm_func_end sub_02073078

	arm_func_start sub_02073290
sub_02073290: ; 0x02073290
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
	arm_func_end sub_02073290

	arm_func_start sub_02073328
sub_02073328: ; 0x02073328
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
	arm_func_end sub_02073328

	arm_func_start sub_0207343C
sub_0207343C: ; 0x0207343C
	mov r2, #0x1000
	mov r3, #0
	stmia r0!, {r2, r3}
	mov r1, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r3}
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r3}
	stmia r0!, {r1, r2}
	bx lr
	arm_func_end sub_0207343C

	arm_func_start sub_02073468
sub_02073468: ; 0x02073468
	ldmia r0!, {r2, r3, ip}
	add r0, r0, #4
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	add r0, r0, #4
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	add r0, r0, #4
	stmia r1!, {r2, r3, ip}
	ldmia r0!, {r2, r3, ip}
	add r0, r0, #4
	stmia r1!, {r2, r3, ip}
	bx lr
	arm_func_end sub_02073468

	arm_func_start sub_0207349C
sub_0207349C: ; 0x0207349C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x74
	ldr sb, [r0, #4]
	ldr r3, [r1, #0x10]
	add ip, sp, #0x34
	smull r4, r3, sb, r3
	cmp r2, r1
	str r2, [sp]
	movne ip, r2
	add r2, sp, #0x34
	str r2, [sp, #0x30]
	ldr fp, [r0]
	ldr r2, [r1]
	ldr r8, [r0, #8]
	smlal r4, r3, fp, r2
	ldr r2, [r1, #0x20]
	ldr r7, [r0, #0xc]
	smlal r4, r3, r8, r2
	ldr r2, [r1, #0x30]
	ldr r6, [r0, #0x14]
	smlal r4, r3, r7, r2
	mov r2, r4, lsr #0xc
	orr r2, r2, r3, lsl #20
	str r2, [ip]
	ldr r2, [r1, #0x14]
	ldr r4, [r1, #4]
	smull r3, r2, sb, r2
	smlal r3, r2, fp, r4
	ldr r5, [r1, #0x24]
	ldr r4, [sp, #0x30]
	smlal r3, r2, r8, r5
	cmp ip, r4
	ldr r4, [r1, #0x34]
	ldr sl, [r0, #0x10]
	smlal r3, r2, r7, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [ip, #4]
	ldr r2, [r1, #0x3c]
	ldr r4, [r1, #0x2c]
	ldr r3, [r1, #0x1c]
	str r2, [sp, #4]
	str r4, [sp, #8]
	smull r3, r2, sb, r3
	ldr r4, [r1, #0xc]
	ldr r5, [r0, #0x18]
	smlal r3, r2, fp, r4
	ldr r4, [sp, #8]
	smlal r3, r2, r8, r4
	ldr r4, [sp, #4]
	smlal r3, r2, r7, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [ip, #0xc]
	ldr r2, [r1, #0x18]
	ldr r4, [r1, #8]
	str r2, [sp, #0xc]
	ldr r2, [r1, #0x28]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0xc]
	smull r3, r2, sb, r2
	smlal r3, r2, fp, r4
	ldr sb, [sp, #0x10]
	smlal r3, r2, r8, sb
	ldr r8, [sp, #0xc]
	smull fp, r8, r6, r8
	smlal fp, r8, sl, r4
	mov r4, sb
	smlal fp, r8, r5, r4
	ldr r4, [r1, #0x38]
	ldr sb, [r0, #0x1c]
	smlal r3, r2, r7, r4
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	smlal fp, r8, sb, r4
	mov r2, fp, lsr #0xc
	str r3, [ip, #8]
	orr r2, r2, r8, lsl #20
	str r2, [ip, #0x18]
	ldr r2, [r1, #0x14]
	ldr r3, [r1, #4]
	smull r8, r2, r6, r2
	smlal r8, r2, sl, r3
	ldr r4, [r1, #0x24]
	ldr r7, [r1, #0x34]
	smlal r8, r2, r5, r4
	smlal r8, r2, sb, r7
	mov r3, r8, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [ip, #0x14]
	ldr r2, [r1, #0xc]
	ldr lr, [r1, #0x2c]
	str r2, [sp, #0x14]
	ldr r2, [r1, #0x1c]
	ldr r3, [r1, #0x3c]
	smull r8, r7, r6, r2
	ldr r2, [sp, #0x14]
	ldr r4, [r0, #0x24]
	smlal r8, r7, sl, r2
	smlal r8, r7, r5, lr
	smlal r8, r7, sb, r3
	mov r2, r8, lsr #0xc
	orr r2, r2, r7, lsl #20
	str r2, [ip, #0x1c]
	ldr r2, [r1, #0x10]
	ldr r3, [r1]
	str r2, [sp, #0x18]
	smull r7, r2, r6, r2
	smlal r7, r2, sl, r3
	ldr r8, [r1, #0x20]
	ldr fp, [r0, #0x20]
	smlal r7, r2, r5, r8
	ldr r5, [sp, #0x18]
	ldr sl, [r1, #0x30]
	smull r6, r5, r4, r5
	smlal r6, r5, fp, r3
	smlal r7, r2, sb, sl
	ldr r3, [r0, #0x28]
	mov r7, r7, lsr #0xc
	orr r7, r7, r2, lsl #20
	smlal r6, r5, r3, r8
	ldr r2, [r0, #0x2c]
	str r7, [ip, #0x10]
	smlal r6, r5, r2, sl
	mov r6, r6, lsr #0xc
	orr r6, r6, r5, lsl #20
	str r6, [ip, #0x20]
	ldr r5, [r1, #4]
	ldr lr, [r1, #0x24]
	str r5, [sp, #0x1c]
	ldr r5, [r1, #0x14]
	ldr r6, [r1, #0x34]
	smull sl, sb, r4, r5
	ldr r5, [sp, #0x1c]
	ldr r8, [r0, #0x34]
	smlal sl, sb, fp, r5
	smlal sl, sb, r3, lr
	smlal sl, sb, r2, r6
	mov r5, sl, lsr #0xc
	orr r5, r5, sb, lsl #20
	str r5, [ip, #0x24]
	ldr r5, [r1, #0x2c]
	ldr sb, [r1, #0x1c]
	str r5, [sp, #0x20]
	ldr r5, [r1, #0xc]
	ldr r7, [r0, #0x30]
	str r5, [sp, #0x24]
	ldr r6, [r0, #0x38]
	ldr r5, [r0, #0x3c]
	smull sb, r0, r4, sb
	ldr sl, [sp, #0x24]
	ldr lr, [r1, #0x3c]
	smlal sb, r0, fp, sl
	ldr sl, [sp, #0x20]
	smlal sb, r0, r3, sl
	smlal sb, r0, r2, lr
	mov sb, sb, lsr #0xc
	orr sb, sb, r0, lsl #20
	str sb, [ip, #0x2c]
	ldr r0, [r1, #0x18]
	str r0, [sp, #0x28]
	ldr sb, [sp, #0x28]
	ldr r0, [r1, #8]
	smull sl, sb, r4, sb
	ldr r4, [sp, #0x28]
	smlal sl, sb, fp, r0
	smull r4, lr, r8, r4
	smlal r4, lr, r7, r0
	ldr r0, [r1, #0x28]
	ldr fp, [r1, #0x38]
	smlal sl, sb, r3, r0
	smlal r4, lr, r6, r0
	str r0, [sp, #0x2c]
	smlal sl, sb, r2, fp
	mov r0, sl, lsr #0xc
	orr r0, r0, sb, lsl #20
	smlal r4, lr, r5, fp
	str r0, [ip, #0x28]
	mov r0, r4, lsr #0xc
	orr r0, r0, lr, lsl #20
	str r0, [ip, #0x38]
	ldr r0, [r1, #0x14]
	ldr r2, [r1, #4]
	smull sb, r0, r8, r0
	smlal sb, r0, r7, r2
	ldr r3, [r1, #0x24]
	ldr r4, [r1, #0x34]
	smlal sb, r0, r6, r3
	smlal sb, r0, r5, r4
	mov r2, sb, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [ip, #0x34]
	ldr r0, [r1, #0x10]
	ldr r2, [r1]
	smull sb, r0, r8, r0
	smlal sb, r0, r7, r2
	ldr r3, [r1, #0x20]
	ldr r4, [r1, #0x30]
	smlal sb, r0, r6, r3
	smlal sb, r0, r5, r4
	mov r2, sb, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [ip, #0x30]
	ldr r0, [r1, #0x1c]
	ldr r4, [r1, #0x3c]
	ldr r3, [r1, #0x2c]
	ldr r2, [r1, #0xc]
	smull r1, r0, r8, r0
	smlal r1, r0, r7, r2
	smlal r1, r0, r6, r3
	smlal r1, r0, r5, r4
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [ip, #0x3c]
	addne sp, sp, #0x74
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, [sp, #0x30]
	ldmia r4!, {r0, r1, r2, r3}
	str r4, [sp, #0x30]
	ldr r4, [sp]
	stmia r4!, {r0, r1, r2, r3}
	str r4, [sp]
	ldr r4, [sp, #0x30]
	ldmia r4!, {r0, r1, r2, r3}
	str r4, [sp, #0x30]
	ldr r4, [sp]
	stmia r4!, {r0, r1, r2, r3}
	str r4, [sp]
	ldr r4, [sp, #0x30]
	ldmia r4!, {r0, r1, r2, r3}
	str r4, [sp, #0x30]
	ldr r4, [sp]
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [sp, #0x30]
	str r4, [sp]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add sp, sp, #0x74
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end sub_0207349C

	arm_func_start sub_02073858
sub_02073858: ; 0x02073858
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sl, r2
	mov fp, r3
	str r0, [sp]
	sub r0, fp, sl
	ldr r8, [sp, #0x44]
	str r1, [sp, #4]
	ldr sb, [sp, #0x40]
	blx FX_InvAsync
	mov r5, #0
	str r5, [r8, #4]
	str r5, [r8, #8]
	str r5, [r8, #0xc]
	str r5, [r8, #0x10]
	ldr r0, [sp, #0x38]
	str r5, [r8, #0x18]
	mov r6, r0, lsl #1
	str r5, [r8, #0x1c]
	rsb r0, sb, #0
	str r0, [r8, #0x2c]
	str r5, [r8, #0x30]
	str r5, [r8, #0x34]
	str r5, [r8, #0x3c]
	blx FX_GetDivResultFx64c
	mov r4, r0
	mov r7, r1
	ldr r0, _02073A8C ; =0x04000290
	ldr r3, [sp]
	ldr r1, [sp, #4]
	mov r2, #0x1000
	sub ip, r3, r1
	str r5, [r0]
	stmib r0, {r2, ip}
	mov r1, r5
	cmp sb, #0x1000
	str r1, [r0, #0xc]
	beq _02073910
	mov r3, sb, asr #0x1f
	umull r0, r1, r4, sb
	mla r1, r4, r3, r1
	mov r3, r5
	mla r1, r7, sb, r1
	bl sub_0208D414
	mov r4, r0
	mov r7, r1
_02073910:
	mov r5, r6, asr #0x1f
	umull r1, r0, r4, r6
	mla r0, r4, r5, r0
	mla r0, r7, r6, r0
	adds r1, r1, #0x80000000
	adc r0, r0, #0
	str r0, [r8]
	blx FX_GetDivResultFx64c
	ldr lr, _02073A8C ; =0x04000290
	mov ip, #0
	str ip, [lr]
	mov r2, #0x1000
	ldr r3, [sp, #0x38]
	ldr ip, [sp, #0x3c]
	str r2, [lr, #4]
	sub ip, r3, ip
	str ip, [lr, #8]
	mov r3, #0
	cmp sb, #0x1000
	str r3, [lr, #0xc]
	beq _0207398C
	mov ip, sb, asr #0x1f
	str ip, [sp, #0xc]
	umull lr, ip, r0, sb
	str lr, [sp, #8]
	ldr lr, [sp, #0xc]
	mla ip, r0, lr, ip
	mla ip, r1, sb, ip
	ldr r0, [sp, #8]
	mov r1, ip
	bl sub_0208D414
_0207398C:
	add r3, fp, sl
	umull sl, ip, r0, r6
	mla ip, r0, r5, ip
	ldr fp, [sp]
	ldr r2, [sp, #4]
	mov lr, r3, asr #0x1f
	adds sl, sl, #0x80000000
	add r2, fp, r2
	umull fp, sl, r4, r3
	mla sl, r4, lr, sl
	mla sl, r7, r3, sl
	mla ip, r1, r6, ip
	adc r3, ip, #0
	str r3, [r8, #0x14]
	adds r3, fp, #0x80000000
	adc r3, sl, #0
	str r3, [r8, #0x20]
	umull r7, r4, r0, r2
	mov r3, r2, asr #0x1f
	mla r4, r0, r3, r4
	mla r4, r1, r2, r4
	adds r7, r7, #0x80000000
	adc r0, r4, #0
	str r0, [r8, #0x24]
	mov r4, #0
	blx FX_GetDivResultFx64c
	cmp sb, #0x1000
	beq _02073A20
	mov r2, sb, asr #0x1f
	umull r7, r3, r0, sb
	mla r3, r0, r2, r3
	mla r3, r1, sb, r3
	mov r0, r7
	mov r1, r3
	mov r3, r4
	mov r2, #0x1000
	bl sub_0208D414
_02073A20:
	ldr r7, [sp, #0x3c]
	ldr r3, [sp, #0x38]
	mov r2, r7, asr #0x1f
	add sb, r7, r3
	umull fp, sl, r0, sb
	mov r3, sb, asr #0x1f
	mla sl, r0, r3, sl
	umull r4, r3, r6, r7
	mla r3, r6, r2, r3
	mla sl, r1, sb, sl
	adds r2, fp, #0x80000000
	adc r2, sl, #0
	adds r4, r4, #0x800
	mla r3, r5, r7, r3
	adc r3, r3, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r3, lsl #20
	umull r6, r5, r0, r4
	mov r3, r4, asr #0x1f
	mla r5, r0, r3, r5
	mla r5, r1, r4, r5
	adds r0, r6, #0x80000000
	str r2, [r8, #0x28]
	adc r0, r5, #0
	str r0, [r8, #0x38]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02073A8C: .word 0x04000290
	arm_func_end sub_02073858

	arm_func_start sub_02073A90
sub_02073A90: ; 0x02073A90
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	mov sb, r2
	mov r8, r3
	ldr r7, [sp, #0x24]
	ldr r6, [sp, #0x28]
	blx FX_Div
	ldr r3, _02073BD8 ; =0x04000290
	mov r2, #0
	str r2, [r3]
	mov r2, #0x1000
	ldr r1, [sp, #0x20]
	str r2, [r3, #4]
	sub r2, r8, r1
	str r2, [r3, #8]
	mov r1, #0
	mov r5, r0
	str r1, [r3, #0xc]
	cmp r7, #0x1000
	mulne r1, r5, r7
	mov r4, #0
	str r4, [r6, #4]
	movne r0, r1, asr #0xb
	str r4, [r6, #8]
	addne r0, r1, r0, lsr #20
	str r4, [r6, #0xc]
	movne r5, r0, asr #0xc
	str r4, [r6, #0x10]
	str r5, [r6, #0x14]
	str r4, [r6, #0x18]
	str r4, [r6, #0x1c]
	str r4, [r6, #0x20]
	str r4, [r6, #0x24]
	rsb r0, r7, #0
	str r0, [r6, #0x2c]
	str r4, [r6, #0x30]
	str r4, [r6, #0x34]
	str r4, [r6, #0x3c]
	blx FX_GetDivResultFx64c
	ldr r2, _02073BD8 ; =0x04000290
	mov ip, r4
	str ip, [r2]
	stmib r2, {r5, sb}
	str ip, [r2, #0xc]
	cmp r7, #0x1000
	beq _02073B74
	mov r2, r7, asr #0x1f
	umull r5, r3, r0, r7
	mla r3, r0, r2, r3
	mla r3, r1, r7, r3
	mov r0, r5
	mov r1, r3
	mov r3, r4
	mov r2, #0x1000
	bl sub_0208D414
_02073B74:
	ldr r4, [sp, #0x20]
	mov r2, r8, lsl #1
	add r5, r4, r8
	mov r3, r5, asr #0x1f
	umull r8, r7, r0, r5
	mla r7, r0, r3, r7
	smull r4, r3, r2, r4
	mla r7, r1, r5, r7
	adds r2, r8, #0x80000000
	adc r7, r7, #0
	adds r4, r4, #0x800
	adc r2, r3, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	umull r5, r4, r0, r3
	mov r2, r3, asr #0x1f
	mla r4, r0, r2, r4
	mla r4, r1, r3, r4
	adds r0, r5, #0x80000000
	str r7, [r6, #0x28]
	adc r0, r4, #0
	str r0, [r6, #0x38]
	blx FX_GetDivResult
	str r0, [r6]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02073BD8: .word 0x04000290
	arm_func_end sub_02073A90

	arm_func_start sub_02073BDC
sub_02073BDC: ; 0x02073BDC
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	str r2, [sp]
	mov sl, r0
	ldr r0, [sp]
	mov r2, r3
	sub r0, r2, r0
	ldr r8, [sp, #0x44]
	str r3, [sp, #4]
	mov fp, r1
	ldr sb, [sp, #0x40]
	blx FX_InvAsync
	mov r5, #0
	str r5, [r8, #4]
	str r5, [r8, #8]
	str r5, [r8, #0xc]
	str r5, [r8, #0x10]
	str r5, [r8, #0x18]
	str r5, [r8, #0x1c]
	str r5, [r8, #0x20]
	str r5, [r8, #0x24]
	str r5, [r8, #0x2c]
	str sb, [r8, #0x3c]
	blx FX_GetDivResultFx64c
	mov r6, r1
	ldr r1, _02073DEC ; =0x04000290
	mov r4, r0
	mov r2, #0x1000
	str r5, [r1]
	sub r0, sl, fp
	str r2, [r1, #4]
	str r0, [r1, #8]
	mov r0, r5
	cmp sb, #0x1000
	str r0, [r1, #0xc]
	beq _02073C8C
	mov r3, sb, asr #0x1f
	umull r0, r1, r4, sb
	mla r1, r4, r3, r1
	mla r1, r6, sb, r1
	mov r3, r5
	bl sub_0208D414
	mov r4, r0
	mov r6, r1
_02073C8C:
	mov r1, r6, lsl #0xd
	mov r0, #0x80000000
	orr r1, r1, r4, lsr #19
	adds r0, r0, r4, lsl #13
	adc r0, r1, #0
	str r0, [r8]
	blx FX_GetDivResultFx64c
	mov r5, r0
	mov r7, r1
	ldr r3, _02073DEC ; =0x04000290
	mov r0, #0
	ldr ip, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	str r0, [r3]
	mov r2, #0x1000
	str r2, [r3, #4]
	sub ip, ip, r1
	str ip, [r3, #8]
	cmp sb, #0x1000
	str r0, [r3, #0xc]
	beq _02073D00
	mov r3, sb, asr #0x1f
	umull r0, r1, r5, sb
	mla r1, r5, r3, r1
	mla r1, r7, sb, r1
	mov r3, #0
	bl sub_0208D414
	mov r5, r0
	mov r7, r1
_02073D00:
	mov r1, r7, lsl #0xd
	mov r0, #0x80000000
	orr r1, r1, r5, lsr #19
	adds r0, r0, r5, lsl #13
	adc r0, r1, #0
	str r0, [r8, #0x14]
	blx FX_GetDivResultFx64c
	cmp sb, #0x1000
	beq _02073D54
	umull lr, ip, r0, sb
	mov r2, sb, asr #0x1f
	str r2, [sp, #0xc]
	str lr, [sp, #8]
	ldr lr, [sp, #0xc]
	mov r3, #0
	mla ip, r0, lr, ip
	mla ip, r1, sb, ip
	ldr r0, [sp, #8]
	mov r2, #0x1000
	mov r1, ip
	bl sub_0208D414
_02073D54:
	ldr r3, [sp, #4]
	ldr r2, [sp]
	add r2, r3, r2
	rsb ip, r2, #0
	add r2, sl, fp
	rsb r3, r2, #0
	ldr sl, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	mov sb, ip, asr #0x1f
	add r2, sl, r2
	umull fp, sl, r4, ip
	mla sl, r4, sb, sl
	mov r4, #0x80000000
	mla sl, r6, ip, sl
	adds r4, r4, r0, lsl #13
	mov sb, r1, lsl #0xd
	mov r6, r3, asr #0x1f
	umull ip, r4, r5, r3
	mla r4, r5, r6, r4
	orr sb, sb, r0, lsr #19
	mla r4, r7, r3, r4
	adc r3, sb, #0
	str r3, [r8, #0x28]
	adds r3, fp, #0x80000000
	adc r7, sl, #0
	adds r3, ip, #0x80000000
	mov r3, r2, asr #0x1f
	umull r6, r5, r0, r2
	mla r5, r0, r3, r5
	adc r3, r4, #0
	str r7, [r8, #0x30]
	mla r5, r1, r2, r5
	adds r0, r6, #0x80000000
	str r3, [r8, #0x34]
	adc r0, r5, #0
	str r0, [r8, #0x38]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02073DEC: .word 0x04000290
	arm_func_end sub_02073BDC

