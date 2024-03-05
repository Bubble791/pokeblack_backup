	.include "asm/macros.inc"
	.include "fx_vec.inc"
	.include "global.inc"
	.text

	thumb_func_start VEC_Add
VEC_Add: ; 0x02073FB4
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r1]
	add r3, r4, r3
	str r3, [r2]
	ldr r4, [r0, #4]
	ldr r3, [r1, #4]
	add r3, r4, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r3, r0
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end VEC_Add

	thumb_func_start VEC_Subtract
VEC_Subtract: ; 0x02073FD4
	push {r3, r4}
	ldr r4, [r0]
	ldr r3, [r1]
	sub r3, r4, r3
	str r3, [r2]
	ldr r4, [r0, #4]
	ldr r3, [r1, #4]
	sub r3, r4, r3
	str r3, [r2, #4]
	ldr r3, [r0, #8]
	ldr r0, [r1, #8]
	sub r0, r3, r0
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end VEC_Subtract

	thumb_func_start VEC_Fx16Add
VEC_Fx16Add: ; 0x02073FF4
	push {r3, r4}
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldrsh r3, [r1, r3]
	add r3, r4, r3
	strh r3, [r2]
	mov r3, #2
	ldrsh r4, [r0, r3]
	ldrsh r3, [r1, r3]
	add r3, r4, r3
	strh r3, [r2, #2]
	mov r3, #4
	ldrsh r4, [r0, r3]
	ldrsh r0, [r1, r3]
	add r0, r4, r0
	strh r0, [r2, #4]
	pop {r3, r4}
	bx lr
	thumb_func_end VEC_Fx16Add


	arm_func_start VEC_DotProduct
VEC_DotProduct: ; 0x02074018
	stmdb sp!, {r4, lr}
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	ldr ip, [r0]
	smull r4, lr, r3, r2
	ldr r2, [r1]
	ldr r3, [r0, #8]
	smlal r4, lr, ip, r2
	ldr r0, [r1, #8]
	smlal r4, lr, r3, r0
	adds r0, r4, #0x800
	adc r1, lr, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r4, pc}
	arm_func_end VEC_DotProduct

	arm_func_start VEC_Fx16DotProduct
VEC_Fx16DotProduct: ; 0x02074054
	stmdb sp!, {r3, r4, r5, lr}
	ldrsh lr, [r0, #2]
	ldrsh ip, [r1, #2]
	ldrsh r3, [r0, #4]
	ldrsh r2, [r1, #4]
	ldrsh r5, [r0]
	ldrsh r4, [r1]
	smulbb r1, lr, ip
	smulbb r0, r3, r2
	add r0, r0, #0x800
	smlabb r1, r5, r4, r1
	adds r2, r1, r0
	mov r0, r0, asr #0x1f
	adc r1, r0, r1, asr #31
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end VEC_Fx16DotProduct

	arm_func_start VEC_CrossProduct
VEC_CrossProduct: ; 0x02074098
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldmia r0, {r5, lr}
	ldr r6, [r1, #8]
	ldr r0, [r0, #8]
	ldmia r1, {r4, ip}
	smull r8, r7, lr, r6
	smull r3, r1, r0, ip
	subs r3, r8, r3
	sbc r1, r7, r1
	adds r3, r3, #0x800
	smull r8, r7, r0, r4
	smull r6, r0, r5, r6
	adc r1, r1, #0
	subs r6, r8, r6
	mov r3, r3, lsr #0xc
	sbc r7, r7, r0
	adds r0, r6, #0x800
	orr r3, r3, r1, lsl #20
	smull ip, r6, r5, ip
	smull r4, r1, lr, r4
	adc r5, r7, #0
	subs r4, ip, r4
	sbc r1, r6, r1
	mov r6, r0, lsr #0xc
	adds r4, r4, #0x800
	orr r6, r6, r5, lsl #20
	adc r0, r1, #0
	mov r1, r4, lsr #0xc
	stmia r2, {r3, r6}
	orr r1, r1, r0, lsl #20
	str r1, [r2, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end VEC_CrossProduct

	arm_func_start VEC_Fx16CrossProduct
VEC_Fx16CrossProduct: ; 0x02074118
	stmdb sp!, {r4, r5, r6, lr}
	ldrsh r4, [r1, #4]
	ldrsh lr, [r0]
	ldrsh r3, [r0, #2]
	ldrsh ip, [r1]
	ldrsh r6, [r0, #4]
	ldrsh r1, [r1, #2]
	smulbb r5, r3, r4
	smulbb r0, r6, r1
	sub r0, r5, r0
	add r0, r0, #0x800
	mov r0, r0, asr #0xc
	smulbb r5, r6, ip
	smulbb r4, lr, r4
	sub r4, r5, r4
	add r4, r4, #0x800
	mov r5, r4, asr #0xc
	smulbb r4, lr, r1
	smulbb r1, r3, ip
	sub r1, r4, r1
	add r1, r1, #0x800
	mov r1, r1, asr #0xc
	strh r0, [r2]
	strh r5, [r2, #2]
	strh r1, [r2, #4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end VEC_Fx16CrossProduct

	arm_func_start VEC_Mag
VEC_Mag: ; 0x02074180
	ldr r1, [r0, #4]
	ldr r2, [r0]
	smull ip, r3, r1, r1
	smlal ip, r3, r2, r2
	ldr r0, [r0, #8]
	ldr r1, _020741D8 ; =0x040002B0
	smlal ip, r3, r0, r0
	mov r2, #1
	mov r0, r3, lsl #2
	strh r2, [r1]
	mov r2, ip, lsl #2
	str r2, [r1, #8]
	orr r0, r0, ip, lsr #30
	str r0, [r1, #0xc]
_020741B8:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _020741B8
	ldr r0, _020741DC ; =0x040002B4
	ldr r0, [r0]
	add r0, r0, #1
	mov r0, r0, asr #1
	bx lr
	.align 2, 0
_020741D8: .word 0x040002B0
_020741DC: .word 0x040002B4
	arm_func_end VEC_Mag

	arm_func_start VEC_Fx16Mag
VEC_Fx16Mag: ; 0x020741E0
	ldrsh r1, [r0, #2]
	ldrsh r3, [r0]
	ldrsh r0, [r0, #4]
	smulbb r2, r1, r1
	smulbb r3, r3, r3
	mov r1, r2, asr #0x1f
	adds r2, r3, r2
	smulbb r0, r0, r0
	adc r1, r1, r3, asr #31
	adds r3, r2, r0
	adc r0, r1, r0, asr #31
	mov r0, r0, lsl #2
	ldr r1, _0207424C ; =0x040002B0
	mov r2, #1
	strh r2, [r1]
	mov r2, r3, lsl #2
	str r2, [r1, #8]
	orr r0, r0, r3, lsr #30
	str r0, [r1, #0xc]
_0207422C:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _0207422C
	ldr r0, _02074250 ; =0x040002B4
	ldr r0, [r0]
	add r0, r0, #1
	mov r0, r0, asr #1
	bx lr
	.align 2, 0
_0207424C: .word 0x040002B0
_02074250: .word 0x040002B4
	arm_func_end VEC_Fx16Mag

	arm_func_start VEC_Normalize
VEC_Normalize: ; 0x02074254
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r2, [r0, #4]
	ldr r3, [r0]
	smull r6, r7, r2, r2
	smlal r6, r7, r3, r3
	ldr r2, [r0, #8]
	ldr r5, _0207435C ; =0x04000280
	smlal r6, r7, r2, r2
	mov r3, #2
	strh r3, [r5]
	mov r4, #0
	str r4, [r5, #0x10]
	mov r3, #0x1000000
	str r3, [r5, #0x14]
	str r6, [r5, #0x18]
	mov r2, r7, lsl #2
	str r7, [r5, #0x1c]
	mov r3, #1
	strh r3, [r5, #0x30]
	mov r4, r6, lsl #2
	str r4, [r5, #0x38]
	orr r2, r2, r6, lsr #30
	str r2, [r5, #0x3c]
_020742B0:
	ldrh r2, [r5, #0x30]
	tst r2, #0x8000
	bne _020742B0
	ldr r2, _02074360 ; =0x040002B4
	ldr ip, [r2]
	sub r3, r2, #0x34
_020742C8:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020742C8
	ldr r7, _02074364 ; =0x040002A0
	ldr r8, [r0]
	ldr r6, [r7]
	ldmib r0, {r5, lr}
	umull r3, r2, r6, ip
	mov r0, ip, asr #0x1f
	mla r2, r6, r0, r2
	ldr fp, [r7, #4]
	umull sl, sb, r3, r8
	mov r4, r8, asr #0x1f
	mla r2, fp, ip, r2
	mla sb, r3, r4, sb
	mla sb, r2, r8, sb
	mov r0, r5, asr #0x1f
	umull r7, r6, r3, r5
	mla r6, r3, r0, r6
	adds sl, sl, #0
	adc r0, sb, #0x1000
	mov r4, r0, asr #0xd
	str r4, [r1]
	mov r0, lr, asr #0x1f
	umull r4, ip, r3, lr
	mla ip, r3, r0, ip
	mla r6, r2, r5, r6
	adds r0, r7, #0
	adc r0, r6, #0x1000
	mov r3, r0, asr #0xd
	mla ip, r2, lr, ip
	adds r0, r4, #0
	adc r0, ip, #0x1000
	mov r0, r0, asr #0xd
	str r3, [r1, #4]
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0207435C: .word 0x04000280
_02074360: .word 0x040002B4
_02074364: .word 0x040002A0
	arm_func_end VEC_Normalize

	arm_func_start VEC_Fx16Normalize
VEC_Fx16Normalize: ; 0x02074368
	stmdb sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldrsh r4, [r0]
	ldrsh r2, [r0, #2]
	ldrsh r3, [r0, #4]
	ldr r5, _02074488 ; =0x04000280
	smulbb r6, r2, r2
	smulbb r7, r4, r4
	mov r2, #2
	strh r2, [r5]
	mov r2, #0
	str r2, [r5, #0x10]
	mov r2, #0x1000000
	mov r4, r6, asr #0x1f
	adds r6, r7, r6
	smulbb r3, r3, r3
	adc r4, r4, r7, asr #31
	adds r6, r6, r3
	str r2, [r5, #0x14]
	adc r3, r4, r3, asr #31
	str r6, [r5, #0x18]
	mov r2, r3, lsl #2
	str r3, [r5, #0x1c]
	mov r3, #1
	strh r3, [r5, #0x30]
	mov r4, r6, lsl #2
	str r4, [r5, #0x38]
	orr r2, r2, r6, lsr #30
	str r2, [r5, #0x3c]
_020743D8:
	ldrh r2, [r5, #0x30]
	tst r2, #0x8000
	bne _020743D8
	ldr r2, _0207448C ; =0x040002B4
	ldr ip, [r2]
	sub r3, r2, #0x34
_020743F0:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020743F0
	ldr r7, _02074490 ; =0x040002A0
	ldrsh r8, [r0]
	ldr r6, [r7]
	ldrsh r5, [r0, #2]
	umull r3, r2, r6, ip
	ldrsh lr, [r0, #4]
	mov r0, ip, asr #0x1f
	umull sl, sb, r3, r8
	mov r4, r8, asr #0x1f
	mla r2, r6, r0, r2
	ldr fp, [r7, #4]
	mov r0, r5, asr #0x1f
	umull r7, r6, r3, r5
	mla r2, fp, ip, r2
	adds sl, sl, #0
	mla sb, r3, r4, sb
	mla r6, r3, r0, r6
	mla sb, r2, r8, sb
	adc r0, sb, #0x1000
	mov r4, r0, asr #0xd
	mov r0, lr, asr #0x1f
	strh r4, [r1]
	umull r4, ip, r3, lr
	mla ip, r3, r0, ip
	adds r0, r7, #0
	mla r6, r2, r5, r6
	adc r0, r6, #0x1000
	mov r3, r0, asr #0xd
	mla ip, r2, lr, ip
	adds r0, r4, #0
	adc r0, ip, #0x1000
	mov r0, r0, asr #0xd
	strh r3, [r1, #2]
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02074488: .word 0x04000280
_0207448C: .word 0x040002B4
_02074490: .word 0x040002A0
	arm_func_end VEC_Fx16Normalize

	arm_func_start VEC_MultAdd
VEC_MultAdd: ; 0x02074494
	stmdb sp!, {r4, r5, r6, lr}
	ldmia r1, {r4, ip}
	smull r6, r5, r0, r4
	smull r4, lr, r0, ip
	ldr r1, [r1, #8]
	mov r6, r6, lsr #0xc
	smull ip, r1, r0, r1
	mov r0, ip, lsr #0xc
	mov r4, r4, lsr #0xc
	ldr ip, [r2]
	orr r6, r6, r5, lsl #20
	add r5, ip, r6
	ldr ip, [r2, #4]
	orr r4, r4, lr, lsl #20
	add r4, ip, r4
	ldr r2, [r2, #8]
	orr r0, r0, r1, lsl #20
	add r0, r2, r0
	str r5, [r3]
	str r4, [r3, #4]
	str r0, [r3, #8]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end VEC_MultAdd

	arm_func_start VEC_Distance
VEC_Distance: ; 0x020744EC
	stmdb sp!, {r4, lr}
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	ldr r4, [r0]
	sub r2, r3, r2
	smull ip, r3, r2, r2
	ldr lr, [r1]
	ldr r2, [r0, #8]
	sub r4, r4, lr
	ldr r0, [r1, #8]
	smlal ip, r3, r4, r4
	sub r0, r2, r0
	smlal ip, r3, r0, r0
	mov r0, r3, lsl #2
	ldr r1, _02074560 ; =0x040002B0
	mov r2, #1
	strh r2, [r1]
	mov r2, ip, lsl #2
	str r2, [r1, #8]
	orr r0, r0, ip, lsr #30
	str r0, [r1, #0xc]
_02074540:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _02074540
	ldr r0, _02074564 ; =0x040002B4
	ldr r0, [r0]
	add r0, r0, #1
	mov r0, r0, asr #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02074560: .word 0x040002B0
_02074564: .word 0x040002B4
	arm_func_end VEC_Distance
